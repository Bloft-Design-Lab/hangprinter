ARM GAS  /tmp/cc9w1cGI.s 			page 1


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
  12              		.file	"hsmci.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.hsmci_send_cmd_execute,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv5-d16
  23              		.type	hsmci_send_cmd_execute, %function
  24              	hsmci_send_cmd_execute:
  25              	.LFB199:
  26              		.file 1 "../asf/sam/drivers/hsmci/hsmci.c"
   1:../asf/sam/drivers/hsmci/hsmci.c **** /**
   2:../asf/sam/drivers/hsmci/hsmci.c ****  * \file
   3:../asf/sam/drivers/hsmci/hsmci.c ****  *
   4:../asf/sam/drivers/hsmci/hsmci.c ****  * \brief SAM HSMCI driver
   5:../asf/sam/drivers/hsmci/hsmci.c ****  *
   6:../asf/sam/drivers/hsmci/hsmci.c ****  * Copyright (c) 2012-2016 Atmel Corporation. All rights reserved.
   7:../asf/sam/drivers/hsmci/hsmci.c ****  *
   8:../asf/sam/drivers/hsmci/hsmci.c ****  * \asf_license_start
   9:../asf/sam/drivers/hsmci/hsmci.c ****  *
  10:../asf/sam/drivers/hsmci/hsmci.c ****  * \page License
  11:../asf/sam/drivers/hsmci/hsmci.c ****  *
  12:../asf/sam/drivers/hsmci/hsmci.c ****  * Redistribution and use in source and binary forms, with or without
  13:../asf/sam/drivers/hsmci/hsmci.c ****  * modification, are permitted provided that the following conditions are met:
  14:../asf/sam/drivers/hsmci/hsmci.c ****  *
  15:../asf/sam/drivers/hsmci/hsmci.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../asf/sam/drivers/hsmci/hsmci.c ****  *    this list of conditions and the following disclaimer.
  17:../asf/sam/drivers/hsmci/hsmci.c ****  *
  18:../asf/sam/drivers/hsmci/hsmci.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../asf/sam/drivers/hsmci/hsmci.c ****  *    this list of conditions and the following disclaimer in the documentation
  20:../asf/sam/drivers/hsmci/hsmci.c ****  *    and/or other materials provided with the distribution.
  21:../asf/sam/drivers/hsmci/hsmci.c ****  *
  22:../asf/sam/drivers/hsmci/hsmci.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../asf/sam/drivers/hsmci/hsmci.c ****  *    from this software without specific prior written permission.
  24:../asf/sam/drivers/hsmci/hsmci.c ****  *
  25:../asf/sam/drivers/hsmci/hsmci.c ****  * 4. This software may only be redistributed and used in connection with an
  26:../asf/sam/drivers/hsmci/hsmci.c ****  *    Atmel microcontroller product.
  27:../asf/sam/drivers/hsmci/hsmci.c ****  *
  28:../asf/sam/drivers/hsmci/hsmci.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../asf/sam/drivers/hsmci/hsmci.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../asf/sam/drivers/hsmci/hsmci.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
  31:../asf/sam/drivers/hsmci/hsmci.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
ARM GAS  /tmp/cc9w1cGI.s 			page 2


  32:../asf/sam/drivers/hsmci/hsmci.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../asf/sam/drivers/hsmci/hsmci.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../asf/sam/drivers/hsmci/hsmci.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../asf/sam/drivers/hsmci/hsmci.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../asf/sam/drivers/hsmci/hsmci.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../asf/sam/drivers/hsmci/hsmci.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../asf/sam/drivers/hsmci/hsmci.c ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../asf/sam/drivers/hsmci/hsmci.c ****  *
  40:../asf/sam/drivers/hsmci/hsmci.c ****  * \asf_license_stop
  41:../asf/sam/drivers/hsmci/hsmci.c ****  *
  42:../asf/sam/drivers/hsmci/hsmci.c ****  */
  43:../asf/sam/drivers/hsmci/hsmci.c **** /*
  44:../asf/sam/drivers/hsmci/hsmci.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../asf/sam/drivers/hsmci/hsmci.c ****  */
  46:../asf/sam/drivers/hsmci/hsmci.c **** 
  47:../asf/sam/drivers/hsmci/hsmci.c **** #if 0	//dc42
  48:../asf/sam/drivers/hsmci/hsmci.c **** #include <asf.h>
  49:../asf/sam/drivers/hsmci/hsmci.c **** #include "conf_board.h"
  50:../asf/sam/drivers/hsmci/hsmci.c **** #include "../../../../libraries/Storage/sd_mmc_protocol.h"
  51:../asf/sam/drivers/hsmci/hsmci.c **** #endif
  52:../asf/sam/drivers/hsmci/hsmci.c **** 
  53:../asf/sam/drivers/hsmci/hsmci.c **** #include "sysclk.h"
  54:../asf/sam/drivers/hsmci/hsmci.c **** #include "pmc.h"
  55:../asf/sam/drivers/hsmci/hsmci.c **** #include "hsmci.h"
  56:../asf/sam/drivers/hsmci/hsmci.c **** #include "conf_sd_mmc.h"
  57:../asf/sam/drivers/hsmci/hsmci.c **** 
  58:../asf/sam/drivers/hsmci/hsmci.c **** /**
  59:../asf/sam/drivers/hsmci/hsmci.c ****  * \ingroup sam_drivers_hsmci
  60:../asf/sam/drivers/hsmci/hsmci.c ****  * \defgroup sam_drivers_hsmci_internal High Speed MultiMedia Card Interface
  61:../asf/sam/drivers/hsmci/hsmci.c ****  * (HSMCI) implementation
  62:../asf/sam/drivers/hsmci/hsmci.c ****  *
  63:../asf/sam/drivers/hsmci/hsmci.c ****  * @{
  64:../asf/sam/drivers/hsmci/hsmci.c ****  */
  65:../asf/sam/drivers/hsmci/hsmci.c **** 
  66:../asf/sam/drivers/hsmci/hsmci.c **** // Check configurations
  67:../asf/sam/drivers/hsmci/hsmci.c **** #if (!defined SD_MMC_HSMCI_MEM_CNT) || (SD_MMC_HSMCI_MEM_CNT == 0)
  68:../asf/sam/drivers/hsmci/hsmci.c **** #  warning SD_MMC_HSMCI_MEM_CNT must be defined in board.h file.
  69:../asf/sam/drivers/hsmci/hsmci.c **** #  define SD_MMC_HSMCI_MEM_CNT 1
  70:../asf/sam/drivers/hsmci/hsmci.c **** #endif
  71:../asf/sam/drivers/hsmci/hsmci.c **** #ifndef CONF_BOARD_SD_MMC_HSMCI
  72:../asf/sam/drivers/hsmci/hsmci.c **** #  warning CONF_BOARD_SD_MMC_HSMCI must be defined in conf_board.h file.
  73:../asf/sam/drivers/hsmci/hsmci.c **** #endif
  74:../asf/sam/drivers/hsmci/hsmci.c **** #if (SAM3XA)
  75:../asf/sam/drivers/hsmci/hsmci.c **** #  if (SD_MMC_HSMCI_MEM_CNT > 2)
  76:../asf/sam/drivers/hsmci/hsmci.c **** #    warning Wrong define SD_MMC_HSMCI_MEM_CNT in board.h,\
  77:../asf/sam/drivers/hsmci/hsmci.c ****      this part have 2 slots maximum on HSMCI.
  78:../asf/sam/drivers/hsmci/hsmci.c **** #  endif
  79:../asf/sam/drivers/hsmci/hsmci.c **** #else
  80:../asf/sam/drivers/hsmci/hsmci.c **** #  if (SD_MMC_HSMCI_MEM_CNT > 1)
  81:../asf/sam/drivers/hsmci/hsmci.c **** #    warning Wrong define SD_MMC_HSMCI_MEM_CNT in board.h,\
  82:../asf/sam/drivers/hsmci/hsmci.c ****      this part have 1 slots maximum on HSMCI.
  83:../asf/sam/drivers/hsmci/hsmci.c **** #  endif
  84:../asf/sam/drivers/hsmci/hsmci.c **** #endif
  85:../asf/sam/drivers/hsmci/hsmci.c **** #ifndef SD_MMC_HSMCI_SLOT_0_SIZE
  86:../asf/sam/drivers/hsmci/hsmci.c **** #  warning SD_MMC_HSMCI_SLOT_0_SIZE must be defined in board.h.
  87:../asf/sam/drivers/hsmci/hsmci.c **** #  define SD_MMC_HSMCI_SLOT_0_SIZE 1
  88:../asf/sam/drivers/hsmci/hsmci.c **** #endif
ARM GAS  /tmp/cc9w1cGI.s 			page 3


  89:../asf/sam/drivers/hsmci/hsmci.c **** #if (SD_MMC_HSMCI_MEM_CNT > 2)
  90:../asf/sam/drivers/hsmci/hsmci.c **** #  ifndef SD_MMC_HSMCI_SLOT_1_SIZE
  91:../asf/sam/drivers/hsmci/hsmci.c **** #    warning SD_MMC_HSMCI_SLOT_1_SIZE must be defined in board.h.
  92:../asf/sam/drivers/hsmci/hsmci.c **** #    define SD_MMC_HSMCI_SLOT_1_SIZE 1
  93:../asf/sam/drivers/hsmci/hsmci.c **** #  endif
  94:../asf/sam/drivers/hsmci/hsmci.c **** #endif
  95:../asf/sam/drivers/hsmci/hsmci.c **** 
  96:../asf/sam/drivers/hsmci/hsmci.c **** // Enable debug information for SD/MMC SPI module
  97:../asf/sam/drivers/hsmci/hsmci.c **** //#define HSMCI_DEBUG
  98:../asf/sam/drivers/hsmci/hsmci.c **** #ifdef HSMCI_DEBUG
  99:../asf/sam/drivers/hsmci/hsmci.c **** extern void debugPrintf(const char* fmt, ...);
 100:../asf/sam/drivers/hsmci/hsmci.c **** #  define hsmci_debug(...)      debugPrintf(__VA_ARGS__)
 101:../asf/sam/drivers/hsmci/hsmci.c **** #else
 102:../asf/sam/drivers/hsmci/hsmci.c **** #  define hsmci_debug(...)
 103:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 104:../asf/sam/drivers/hsmci/hsmci.c **** 
 105:../asf/sam/drivers/hsmci/hsmci.c **** #if (SAM3S || SAM4S || SAM4E)
 106:../asf/sam/drivers/hsmci/hsmci.c ****   // PDC is used for transfer
 107:../asf/sam/drivers/hsmci/hsmci.c **** #elif (SAM3U || SAM3XA)
 108:../asf/sam/drivers/hsmci/hsmci.c ****   // DMA is used for transfer
 109:../asf/sam/drivers/hsmci/hsmci.c **** #  include "dmac.h"
 110:../asf/sam/drivers/hsmci/hsmci.c **** #  define DMA_HW_ID_HSMCI    0
 111:../asf/sam/drivers/hsmci/hsmci.c **** #  ifndef CONF_HSMCI_DMA_CHANNEL
 112:../asf/sam/drivers/hsmci/hsmci.c **** #    define CONF_HSMCI_DMA_CHANNEL 0
 113:../asf/sam/drivers/hsmci/hsmci.c **** #  endif
 114:../asf/sam/drivers/hsmci/hsmci.c **** #elif (SAMV70 || SAMV71 || SAME70 || SAMS70)
 115:../asf/sam/drivers/hsmci/hsmci.c ****   // XDMAC is used for transfer
 116:../asf/sam/drivers/hsmci/hsmci.c **** #  include "xdmac.h"
 117:../asf/sam/drivers/hsmci/hsmci.c **** #  define XDMAC_HW_ID_HSMCI    0
 118:../asf/sam/drivers/hsmci/hsmci.c **** #  ifndef CONF_HSMCI_XDMAC_CHANNEL
 119:../asf/sam/drivers/hsmci/hsmci.c **** #    define CONF_HSMCI_XDMAC_CHANNEL 0
 120:../asf/sam/drivers/hsmci/hsmci.c **** #  endif
 121:../asf/sam/drivers/hsmci/hsmci.c **** #else
 122:../asf/sam/drivers/hsmci/hsmci.c **** #  error Not supported device
 123:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 124:../asf/sam/drivers/hsmci/hsmci.c **** 
 125:../asf/sam/drivers/hsmci/hsmci.c **** //! Current position (byte) of the transfer started by hsmci_adtc_start()
 126:../asf/sam/drivers/hsmci/hsmci.c **** static uint32_t hsmci_transfert_pos;
 127:../asf/sam/drivers/hsmci/hsmci.c **** //! Size block requested by last hsmci_adtc_start()
 128:../asf/sam/drivers/hsmci/hsmci.c **** static uint16_t hsmci_block_size;
 129:../asf/sam/drivers/hsmci/hsmci.c **** //! Total number of block requested by last hsmci_adtc_start()
 130:../asf/sam/drivers/hsmci/hsmci.c **** static uint16_t hsmci_nb_block;
 131:../asf/sam/drivers/hsmci/hsmci.c **** 
 132:../asf/sam/drivers/hsmci/hsmci.c **** static void hsmci_reset(void);
 133:../asf/sam/drivers/hsmci/hsmci.c **** static void hsmci_set_speed(uint32_t speed, uint32_t mck);
 134:../asf/sam/drivers/hsmci/hsmci.c **** static bool hsmci_wait_busy(void);
 135:../asf/sam/drivers/hsmci/hsmci.c **** static bool hsmci_send_cmd_execute(uint32_t cmdr, sdmmc_cmd_def_t cmd,
 136:../asf/sam/drivers/hsmci/hsmci.c **** 		uint32_t arg);
 137:../asf/sam/drivers/hsmci/hsmci.c **** 
 138:../asf/sam/drivers/hsmci/hsmci.c **** /**
 139:../asf/sam/drivers/hsmci/hsmci.c ****  * \brief Reset the HSMCI interface
 140:../asf/sam/drivers/hsmci/hsmci.c ****  */
 141:../asf/sam/drivers/hsmci/hsmci.c **** static void hsmci_reset(void)
 142:../asf/sam/drivers/hsmci/hsmci.c **** {
 143:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t mr = HSMCI->HSMCI_MR;
 144:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t dtor = HSMCI->HSMCI_DTOR;
 145:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t sdcr = HSMCI->HSMCI_SDCR;
ARM GAS  /tmp/cc9w1cGI.s 			page 4


 146:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t cstor = HSMCI->HSMCI_CSTOR;
 147:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t cfg = HSMCI->HSMCI_CFG;
 148:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_CR = HSMCI_CR_SWRST;
 149:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_MR = mr;
 150:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_DTOR = dtor;
 151:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_SDCR = sdcr;
 152:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_CSTOR = cstor;
 153:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_CFG = cfg;
 154:../asf/sam/drivers/hsmci/hsmci.c **** #ifdef HSMCI_SR_DMADONE
 155:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_DMA = 0;
 156:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 157:../asf/sam/drivers/hsmci/hsmci.c **** #if (SAMV70 || SAMV71 || SAME70 || SAMS70)
 158:../asf/sam/drivers/hsmci/hsmci.c **** #ifdef HSMCI_DMA_DMAEN
 159:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_DMA = 0;
 160:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 161:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 162:../asf/sam/drivers/hsmci/hsmci.c **** 	// Enable the HSMCI
 163:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_CR = HSMCI_CR_PWSEN | HSMCI_CR_MCIEN;
 164:../asf/sam/drivers/hsmci/hsmci.c **** }
 165:../asf/sam/drivers/hsmci/hsmci.c **** 
 166:../asf/sam/drivers/hsmci/hsmci.c **** /**
 167:../asf/sam/drivers/hsmci/hsmci.c ****  * \brief Set speed of the HSMCI clock.
 168:../asf/sam/drivers/hsmci/hsmci.c ****  *
 169:../asf/sam/drivers/hsmci/hsmci.c ****  * \param speed    HSMCI clock speed in Hz.
 170:../asf/sam/drivers/hsmci/hsmci.c ****  * \param mck      MCK clock speed in Hz.
 171:../asf/sam/drivers/hsmci/hsmci.c ****  */
 172:../asf/sam/drivers/hsmci/hsmci.c **** static void hsmci_set_speed(uint32_t speed, uint32_t mck)
 173:../asf/sam/drivers/hsmci/hsmci.c **** {
 174:../asf/sam/drivers/hsmci/hsmci.c **** #if (SAM4E || SAMV70 || SAMV71 || SAME70 || SAMS70)
 175:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t clkdiv = 0;
 176:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t clkodd = 0;
 177:../asf/sam/drivers/hsmci/hsmci.c **** 	// clock divider, represent (((clkdiv << 1) + clkodd) + 2)
 178:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t div = 0;
 179:../asf/sam/drivers/hsmci/hsmci.c **** 
 180:../asf/sam/drivers/hsmci/hsmci.c **** 	// Speed = MCK clock / (((clkdiv << 1) + clkodd) + 2)
 181:../asf/sam/drivers/hsmci/hsmci.c **** 	if ((speed * 2) < mck) {
 182:../asf/sam/drivers/hsmci/hsmci.c **** 		div = (mck / speed) - 2;
 183:../asf/sam/drivers/hsmci/hsmci.c **** 		if (mck % speed) {
 184:../asf/sam/drivers/hsmci/hsmci.c **** 			// Ensure that the card speed not be higher than expected.
 185:../asf/sam/drivers/hsmci/hsmci.c **** 			div++;
 186:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 187:../asf/sam/drivers/hsmci/hsmci.c **** 		clkdiv = div >> 1;
 188:../asf/sam/drivers/hsmci/hsmci.c **** 		// clkodd is the last significant bit of the clock divider (div).
 189:../asf/sam/drivers/hsmci/hsmci.c **** 		clkodd = div % 2;
 190:../asf/sam/drivers/hsmci/hsmci.c **** 	} else {
 191:../asf/sam/drivers/hsmci/hsmci.c **** 		clkdiv = 0;
 192:../asf/sam/drivers/hsmci/hsmci.c **** 		clkodd = 0;
 193:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 194:../asf/sam/drivers/hsmci/hsmci.c **** 
 195:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_MR &= ~HSMCI_MR_CLKDIV_Msk;
 196:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_MR |= HSMCI_MR_CLKDIV(clkdiv);
 197:../asf/sam/drivers/hsmci/hsmci.c **** 	if (clkodd) {
 198:../asf/sam/drivers/hsmci/hsmci.c **** 		HSMCI->HSMCI_MR |= HSMCI_MR_CLKODD;
 199:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 200:../asf/sam/drivers/hsmci/hsmci.c **** 	else {
 201:../asf/sam/drivers/hsmci/hsmci.c **** 		HSMCI->HSMCI_MR &= ~HSMCI_MR_CLKODD;
 202:../asf/sam/drivers/hsmci/hsmci.c **** 	}
ARM GAS  /tmp/cc9w1cGI.s 			page 5


 203:../asf/sam/drivers/hsmci/hsmci.c **** #else
 204:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t clkdiv = 0;
 205:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t rest = 0;
 206:../asf/sam/drivers/hsmci/hsmci.c **** 
 207:../asf/sam/drivers/hsmci/hsmci.c **** 	// Speed = MCK clock / (2 * (CLKDIV + 1))
 208:../asf/sam/drivers/hsmci/hsmci.c **** 	if ((speed * 2) < mck) {
 209:../asf/sam/drivers/hsmci/hsmci.c **** 		clkdiv = mck / (2 * speed);
 210:../asf/sam/drivers/hsmci/hsmci.c **** 		rest = mck % (2 * speed);
 211:../asf/sam/drivers/hsmci/hsmci.c **** 		if (rest > 0) {
 212:../asf/sam/drivers/hsmci/hsmci.c **** 			// Ensure that the card speed not be higher than expected.
 213:../asf/sam/drivers/hsmci/hsmci.c **** 			clkdiv++;
 214:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 215:../asf/sam/drivers/hsmci/hsmci.c **** 		if (clkdiv > 0) {
 216:../asf/sam/drivers/hsmci/hsmci.c **** 			clkdiv -= 1;
 217:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 218:../asf/sam/drivers/hsmci/hsmci.c **** 	} else {
 219:../asf/sam/drivers/hsmci/hsmci.c **** 		clkdiv = 0;
 220:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 221:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_MR &= ~HSMCI_MR_CLKDIV_Msk;
 222:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_MR |= HSMCI_MR_CLKDIV(clkdiv);
 223:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 224:../asf/sam/drivers/hsmci/hsmci.c **** 
 225:../asf/sam/drivers/hsmci/hsmci.c **** }
 226:../asf/sam/drivers/hsmci/hsmci.c **** 
 227:../asf/sam/drivers/hsmci/hsmci.c **** #if 1  // dc42
 228:../asf/sam/drivers/hsmci/hsmci.c **** // Get the speed of the HSMCI interface for reporting purposes, in bytes/sec
 229:../asf/sam/drivers/hsmci/hsmci.c **** uint32_t hsmci_get_speed()
 230:../asf/sam/drivers/hsmci/hsmci.c **** {
 231:../asf/sam/drivers/hsmci/hsmci.c **** #if SAM4E || SAME70
 232:../asf/sam/drivers/hsmci/hsmci.c ****        const uint32_t clkdiv = HSMCI->HSMCI_MR & HSMCI_MR_CLKDIV_Msk;
 233:../asf/sam/drivers/hsmci/hsmci.c ****        const uint32_t clkodd = ((HSMCI->HSMCI_MR & HSMCI_MR_CLKODD) != 0) ? 1 : 0;
 234:../asf/sam/drivers/hsmci/hsmci.c ****        const uint32_t hsmciClock = sysclk_get_cpu_hz()/((2 * clkdiv) + clkodd + 2);
 235:../asf/sam/drivers/hsmci/hsmci.c **** #else
 236:../asf/sam/drivers/hsmci/hsmci.c ****        const uint32_t clkdiv = HSMCI->HSMCI_MR & HSMCI_MR_CLKDIV_Msk;
 237:../asf/sam/drivers/hsmci/hsmci.c ****        const uint32_t hsmciClock =  sysclk_get_cpu_hz()/((2 * clkdiv) + 2);
 238:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 239:../asf/sam/drivers/hsmci/hsmci.c ****        return hsmciClock/2;            // HSMCI interface is 4 bits wide, so divide by 2 to get byt
 240:../asf/sam/drivers/hsmci/hsmci.c **** }
 241:../asf/sam/drivers/hsmci/hsmci.c **** 
 242:../asf/sam/drivers/hsmci/hsmci.c **** static hsmciIdleFunc_t hsmciIdleFunc = NULL;
 243:../asf/sam/drivers/hsmci/hsmci.c **** 
 244:../asf/sam/drivers/hsmci/hsmci.c **** // Set the idle function and return the old one
 245:../asf/sam/drivers/hsmci/hsmci.c **** hsmciIdleFunc_t hsmci_set_idle_func(hsmciIdleFunc_t p)
 246:../asf/sam/drivers/hsmci/hsmci.c **** {
 247:../asf/sam/drivers/hsmci/hsmci.c ****        hsmciIdleFunc_t ret = hsmciIdleFunc;
 248:../asf/sam/drivers/hsmci/hsmci.c ****        hsmciIdleFunc = p;
 249:../asf/sam/drivers/hsmci/hsmci.c ****        return ret;
 250:../asf/sam/drivers/hsmci/hsmci.c **** }
 251:../asf/sam/drivers/hsmci/hsmci.c **** 
 252:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 253:../asf/sam/drivers/hsmci/hsmci.c **** 
 254:../asf/sam/drivers/hsmci/hsmci.c **** /** \brief Wait the end of busy signal on data line
 255:../asf/sam/drivers/hsmci/hsmci.c ****  *
 256:../asf/sam/drivers/hsmci/hsmci.c ****  * \return true if success, otherwise false
 257:../asf/sam/drivers/hsmci/hsmci.c ****  */
 258:../asf/sam/drivers/hsmci/hsmci.c **** static bool hsmci_wait_busy(void)
 259:../asf/sam/drivers/hsmci/hsmci.c **** {
ARM GAS  /tmp/cc9w1cGI.s 			page 6


 260:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t busy_wait = 0xFFFFFFFF;
 261:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t sr;
 262:../asf/sam/drivers/hsmci/hsmci.c **** 
 263:../asf/sam/drivers/hsmci/hsmci.c **** 	do {
 264:../asf/sam/drivers/hsmci/hsmci.c **** 		sr = HSMCI->HSMCI_SR;
 265:../asf/sam/drivers/hsmci/hsmci.c **** 		if (busy_wait-- == 0) {
 266:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmci_debug("%s: timeout\n\r", __func__);
 267:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmci_reset();
 268:../asf/sam/drivers/hsmci/hsmci.c **** 			return false;
 269:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 270:../asf/sam/drivers/hsmci/hsmci.c **** 	} while (!((sr & HSMCI_SR_NOTBUSY) && ((sr & HSMCI_SR_DTIP) == 0)));
 271:../asf/sam/drivers/hsmci/hsmci.c **** 	return true;
 272:../asf/sam/drivers/hsmci/hsmci.c **** }
 273:../asf/sam/drivers/hsmci/hsmci.c **** 
 274:../asf/sam/drivers/hsmci/hsmci.c **** 
 275:../asf/sam/drivers/hsmci/hsmci.c **** /** \brief Send a command
 276:../asf/sam/drivers/hsmci/hsmci.c ****  *
 277:../asf/sam/drivers/hsmci/hsmci.c ****  * \param cmdr       CMDR register bit to use for this command
 278:../asf/sam/drivers/hsmci/hsmci.c ****  * \param cmd        Command definition
 279:../asf/sam/drivers/hsmci/hsmci.c ****  * \param arg        Argument of the command
 280:../asf/sam/drivers/hsmci/hsmci.c ****  *
 281:../asf/sam/drivers/hsmci/hsmci.c ****  * \return true if success, otherwise false
 282:../asf/sam/drivers/hsmci/hsmci.c ****  */
 283:../asf/sam/drivers/hsmci/hsmci.c **** static bool hsmci_send_cmd_execute(uint32_t cmdr, sdmmc_cmd_def_t cmd,
 284:../asf/sam/drivers/hsmci/hsmci.c **** 		uint32_t arg)
 285:../asf/sam/drivers/hsmci/hsmci.c **** {
  27              		.loc 1 285 0
  28              		.cfi_startproc
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 0, uses_anonymous_args = 0
  31              	.LVL0:
  32 0000 F0B5     		push	{r4, r5, r6, r7, lr}
  33              		.cfi_def_cfa_offset 20
  34              		.cfi_offset 4, -20
  35              		.cfi_offset 5, -16
  36              		.cfi_offset 6, -12
  37              		.cfi_offset 7, -8
  38              		.cfi_offset 14, -4
 286:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t sr;
 287:../asf/sam/drivers/hsmci/hsmci.c **** 
 288:../asf/sam/drivers/hsmci/hsmci.c **** 	cmdr |= HSMCI_CMDR_CMDNB(cmd) | HSMCI_CMDR_SPCMD_STD;
  39              		.loc 1 288 0
  40 0002 01F03F03 		and	r3, r1, #63
 289:../asf/sam/drivers/hsmci/hsmci.c **** 	if (cmd & SDMMC_RESP_PRESENT) {
  41              		.loc 1 289 0
  42 0006 CF05     		lsls	r7, r1, #23
 288:../asf/sam/drivers/hsmci/hsmci.c **** 	if (cmd & SDMMC_RESP_PRESENT) {
  43              		.loc 1 288 0
  44 0008 40EA0300 		orr	r0, r0, r3
  45              	.LVL1:
  46              		.loc 1 289 0
  47 000c 03D5     		bpl	.L2
  48              	.LVL2:
 290:../asf/sam/drivers/hsmci/hsmci.c **** 		cmdr |= HSMCI_CMDR_MAXLAT;
 291:../asf/sam/drivers/hsmci/hsmci.c **** 		if (cmd & SDMMC_RESP_136) {
  49              		.loc 1 291 0
  50 000e 0E05     		lsls	r6, r1, #20
ARM GAS  /tmp/cc9w1cGI.s 			page 7


  51 0010 2BD5     		bpl	.L3
 292:../asf/sam/drivers/hsmci/hsmci.c **** 			cmdr |= HSMCI_CMDR_RSPTYP_136_BIT;
  52              		.loc 1 292 0
  53 0012 40F48450 		orr	r0, r0, #4224
  54              	.LVL3:
  55              	.L2:
 293:../asf/sam/drivers/hsmci/hsmci.c **** 		} else if (cmd & SDMMC_RESP_BUSY) {
 294:../asf/sam/drivers/hsmci/hsmci.c **** 			cmdr |= HSMCI_CMDR_RSPTYP_R1B;
 295:../asf/sam/drivers/hsmci/hsmci.c **** 		} else {
 296:../asf/sam/drivers/hsmci/hsmci.c **** 			cmdr |= HSMCI_CMDR_RSPTYP_48_BIT;
 297:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 298:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 299:../asf/sam/drivers/hsmci/hsmci.c **** 	if (cmd & SDMMC_CMD_OPENDRAIN) {
  56              		.loc 1 299 0
  57 0016 4C04     		lsls	r4, r1, #17
 300:../asf/sam/drivers/hsmci/hsmci.c **** 		cmdr |= HSMCI_CMDR_OPDCMD_OPENDRAIN;
 301:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 302:../asf/sam/drivers/hsmci/hsmci.c **** 
 303:../asf/sam/drivers/hsmci/hsmci.c **** 	// Write argument
 304:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_ARGR = arg;
  58              		.loc 1 304 0
  59 0018 4FF08043 		mov	r3, #1073741824
  60 001c 01F48055 		and	r5, r1, #4096
 300:../asf/sam/drivers/hsmci/hsmci.c **** 		cmdr |= HSMCI_CMDR_OPDCMD_OPENDRAIN;
  61              		.loc 1 300 0
  62 0020 48BF     		it	mi
  63 0022 40F40060 		orrmi	r0, r0, #2048
  64              	.LVL4:
  65              		.loc 1 304 0
  66 0026 1A61     		str	r2, [r3, #16]
 305:../asf/sam/drivers/hsmci/hsmci.c **** 	// Write and start command
 306:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_CMDR = cmdr;
 307:../asf/sam/drivers/hsmci/hsmci.c **** 
 308:../asf/sam/drivers/hsmci/hsmci.c **** 	// Wait end of command
 309:../asf/sam/drivers/hsmci/hsmci.c **** 	do {
 310:../asf/sam/drivers/hsmci/hsmci.c **** 		sr = HSMCI->HSMCI_SR;
  67              		.loc 1 310 0
  68 0028 1C46     		mov	r4, r3
 306:../asf/sam/drivers/hsmci/hsmci.c **** 
  69              		.loc 1 306 0
  70 002a 5861     		str	r0, [r3, #20]
  71 002c 04E0     		b	.L9
  72              	.LVL5:
  73              	.L34:
 311:../asf/sam/drivers/hsmci/hsmci.c **** 		if (cmd & SDMMC_RESP_CRC) {
 312:../asf/sam/drivers/hsmci/hsmci.c **** 			if (sr & (HSMCI_SR_CSTOE | HSMCI_SR_RTOE
  74              		.loc 1 312 0
  75 002e 13F41F0F 		tst	r3, #10420224
  76 0032 25D1     		bne	.L32
  77              	.L7:
 313:../asf/sam/drivers/hsmci/hsmci.c **** 					| HSMCI_SR_RENDE | HSMCI_SR_RCRCE
 314:../asf/sam/drivers/hsmci/hsmci.c **** 					| HSMCI_SR_RDIRE | HSMCI_SR_RINDE)) {
 315:../asf/sam/drivers/hsmci/hsmci.c **** 				hsmci_debug("%s: CMD 0x%08x sr 0x%08x error\n\r",
 316:../asf/sam/drivers/hsmci/hsmci.c **** 						__func__, cmd, sr);
 317:../asf/sam/drivers/hsmci/hsmci.c **** 				hsmci_reset();
 318:../asf/sam/drivers/hsmci/hsmci.c **** 				return false;
 319:../asf/sam/drivers/hsmci/hsmci.c **** 			}
ARM GAS  /tmp/cc9w1cGI.s 			page 8


 320:../asf/sam/drivers/hsmci/hsmci.c **** 		} else {
 321:../asf/sam/drivers/hsmci/hsmci.c **** 			if (sr & (HSMCI_SR_CSTOE | HSMCI_SR_RTOE
 322:../asf/sam/drivers/hsmci/hsmci.c **** 					| HSMCI_SR_RENDE
 323:../asf/sam/drivers/hsmci/hsmci.c **** 					| HSMCI_SR_RDIRE | HSMCI_SR_RINDE)) {
 324:../asf/sam/drivers/hsmci/hsmci.c **** 				hsmci_debug("%s: CMD 0x%08x sr 0x%08x error\n\r",
 325:../asf/sam/drivers/hsmci/hsmci.c **** 						__func__, cmd, sr);
 326:../asf/sam/drivers/hsmci/hsmci.c **** 				hsmci_reset();
 327:../asf/sam/drivers/hsmci/hsmci.c **** 				return false;
 328:../asf/sam/drivers/hsmci/hsmci.c **** 			}
 329:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 330:../asf/sam/drivers/hsmci/hsmci.c **** 	} while (!(sr & HSMCI_SR_CMDRDY));
  78              		.loc 1 330 0
  79 0034 DA07     		lsls	r2, r3, #31
  80 0036 1FD4     		bmi	.L33
  81              	.LVL6:
  82              	.L9:
 310:../asf/sam/drivers/hsmci/hsmci.c **** 		if (cmd & SDMMC_RESP_CRC) {
  83              		.loc 1 310 0
  84 0038 236C     		ldr	r3, [r4, #64]
  85              	.LVL7:
 311:../asf/sam/drivers/hsmci/hsmci.c **** 		if (cmd & SDMMC_RESP_CRC) {
  86              		.loc 1 311 0
  87 003a 002D     		cmp	r5, #0
  88 003c F7D1     		bne	.L34
 321:../asf/sam/drivers/hsmci/hsmci.c **** 					| HSMCI_SR_RENDE
  89              		.loc 1 321 0
  90 003e 13F41B0F 		tst	r3, #10158080
  91 0042 F7D0     		beq	.L7
  92              	.LBB56:
  93              	.LBB57:
 143:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t dtor = HSMCI->HSMCI_DTOR;
  94              		.loc 1 143 0
  95 0044 D4F804E0 		ldr	lr, [r4, #4]
  96              	.LVL8:
 148:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_MR = mr;
  97              		.loc 1 148 0
  98 0048 8020     		movs	r0, #128
  99              	.LVL9:
 144:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t sdcr = HSMCI->HSMCI_SDCR;
 100              		.loc 1 144 0
 101 004a A768     		ldr	r7, [r4, #8]
 102              	.LVL10:
 163:../asf/sam/drivers/hsmci/hsmci.c **** }
 103              		.loc 1 163 0
 104 004c 0523     		movs	r3, #5
 105              	.LVL11:
 145:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t cstor = HSMCI->HSMCI_CSTOR;
 106              		.loc 1 145 0
 107 004e E668     		ldr	r6, [r4, #12]
 108              	.LVL12:
 146:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t cfg = HSMCI->HSMCI_CFG;
 109              		.loc 1 146 0
 110 0050 E169     		ldr	r1, [r4, #28]
 111              	.LVL13:
 147:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_CR = HSMCI_CR_SWRST;
 112              		.loc 1 147 0
 113 0052 626D     		ldr	r2, [r4, #84]
ARM GAS  /tmp/cc9w1cGI.s 			page 9


 114              	.LVL14:
 148:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_MR = mr;
 115              		.loc 1 148 0
 116 0054 2060     		str	r0, [r4]
 117              	.LVL15:
 118              	.LBE57:
 119              	.LBE56:
 327:../asf/sam/drivers/hsmci/hsmci.c **** 			}
 120              		.loc 1 327 0
 121 0056 2846     		mov	r0, r5
 122              	.LBB59:
 123              	.LBB58:
 149:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_DTOR = dtor;
 124              		.loc 1 149 0
 125 0058 C4F804E0 		str	lr, [r4, #4]
 150:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_SDCR = sdcr;
 126              		.loc 1 150 0
 127 005c A760     		str	r7, [r4, #8]
 151:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_CSTOR = cstor;
 128              		.loc 1 151 0
 129 005e E660     		str	r6, [r4, #12]
 152:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_CFG = cfg;
 130              		.loc 1 152 0
 131 0060 E161     		str	r1, [r4, #28]
 153:../asf/sam/drivers/hsmci/hsmci.c **** #ifdef HSMCI_SR_DMADONE
 132              		.loc 1 153 0
 133 0062 6265     		str	r2, [r4, #84]
 159:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 134              		.loc 1 159 0
 135 0064 2565     		str	r5, [r4, #80]
 163:../asf/sam/drivers/hsmci/hsmci.c **** }
 136              		.loc 1 163 0
 137 0066 2360     		str	r3, [r4]
 138              	.LVL16:
 139              	.LBE58:
 140              	.LBE59:
 327:../asf/sam/drivers/hsmci/hsmci.c **** 			}
 141              		.loc 1 327 0
 142 0068 F0BD     		pop	{r4, r5, r6, r7, pc}
 143              	.LVL17:
 144              	.L3:
 293:../asf/sam/drivers/hsmci/hsmci.c **** 			cmdr |= HSMCI_CMDR_RSPTYP_R1B;
 145              		.loc 1 293 0
 146 006a 8D04     		lsls	r5, r1, #18
 294:../asf/sam/drivers/hsmci/hsmci.c **** 		} else {
 147              		.loc 1 294 0
 148 006c 4CBF     		ite	mi
 149 006e 40F48650 		orrmi	r0, r0, #4288
 150              	.LVL18:
 296:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 151              		.loc 1 296 0
 152 0072 40F48250 		orrpl	r0, r0, #4160
 153              	.LVL19:
 154 0076 CEE7     		b	.L2
 155              	.LVL20:
 156              	.L33:
 331:../asf/sam/drivers/hsmci/hsmci.c **** 
ARM GAS  /tmp/cc9w1cGI.s 			page 10


 332:../asf/sam/drivers/hsmci/hsmci.c **** 	if (cmd & SDMMC_RESP_BUSY) {
 157              		.loc 1 332 0
 158 0078 8B04     		lsls	r3, r1, #18
 159              	.LVL21:
 160 007a 15D4     		bmi	.L35
 161              	.LVL22:
 162              	.L30:
 333:../asf/sam/drivers/hsmci/hsmci.c **** 		if (!hsmci_wait_busy()) {
 334:../asf/sam/drivers/hsmci/hsmci.c **** 			return false;
 335:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 336:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 337:../asf/sam/drivers/hsmci/hsmci.c **** 	return true;
 163              		.loc 1 337 0
 164 007c 0120     		movs	r0, #1
 165              	.LVL23:
 166 007e F0BD     		pop	{r4, r5, r6, r7, pc}
 167              	.LVL24:
 168              	.L32:
 169              	.LBB60:
 170              	.LBB61:
 143:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t dtor = HSMCI->HSMCI_DTOR;
 171              		.loc 1 143 0
 172 0080 6068     		ldr	r0, [r4, #4]
 173              	.LVL25:
 159:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 174              		.loc 1 159 0
 175 0082 0023     		movs	r3, #0
 176              	.LVL26:
 144:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t sdcr = HSMCI->HSMCI_SDCR;
 177              		.loc 1 144 0
 178 0084 A768     		ldr	r7, [r4, #8]
 179              	.LVL27:
 148:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_MR = mr;
 180              		.loc 1 148 0
 181 0086 4FF0800E 		mov	lr, #128
 145:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t cstor = HSMCI->HSMCI_CSTOR;
 182              		.loc 1 145 0
 183 008a E668     		ldr	r6, [r4, #12]
 184              	.LVL28:
 163:../asf/sam/drivers/hsmci/hsmci.c **** }
 185              		.loc 1 163 0
 186 008c 0522     		movs	r2, #5
 146:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t cfg = HSMCI->HSMCI_CFG;
 187              		.loc 1 146 0
 188 008e E569     		ldr	r5, [r4, #28]
 189              	.LVL29:
 147:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_CR = HSMCI_CR_SWRST;
 190              		.loc 1 147 0
 191 0090 616D     		ldr	r1, [r4, #84]
 192              	.LVL30:
 148:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_MR = mr;
 193              		.loc 1 148 0
 194 0092 C4F800E0 		str	lr, [r4]
 195              	.LVL31:
 149:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_DTOR = dtor;
 196              		.loc 1 149 0
 197 0096 6060     		str	r0, [r4, #4]
ARM GAS  /tmp/cc9w1cGI.s 			page 11


 198              	.LBE61:
 199              	.LBE60:
 318:../asf/sam/drivers/hsmci/hsmci.c **** 			}
 200              		.loc 1 318 0
 201 0098 1846     		mov	r0, r3
 202              	.LVL32:
 203              	.LBB63:
 204              	.LBB62:
 150:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_SDCR = sdcr;
 205              		.loc 1 150 0
 206 009a A760     		str	r7, [r4, #8]
 207              	.LVL33:
 151:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_CSTOR = cstor;
 208              		.loc 1 151 0
 209 009c E660     		str	r6, [r4, #12]
 152:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_CFG = cfg;
 210              		.loc 1 152 0
 211 009e E561     		str	r5, [r4, #28]
 153:../asf/sam/drivers/hsmci/hsmci.c **** #ifdef HSMCI_SR_DMADONE
 212              		.loc 1 153 0
 213 00a0 6165     		str	r1, [r4, #84]
 159:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 214              		.loc 1 159 0
 215 00a2 2365     		str	r3, [r4, #80]
 163:../asf/sam/drivers/hsmci/hsmci.c **** }
 216              		.loc 1 163 0
 217 00a4 2260     		str	r2, [r4]
 218              	.LVL34:
 219              	.LBE62:
 220              	.LBE63:
 318:../asf/sam/drivers/hsmci/hsmci.c **** 			}
 221              		.loc 1 318 0
 222 00a6 F0BD     		pop	{r4, r5, r6, r7, pc}
 223              	.LVL35:
 224              	.L35:
 225              	.LBB64:
 226              	.LBB65:
 264:../asf/sam/drivers/hsmci/hsmci.c **** 		if (busy_wait-- == 0) {
 227              		.loc 1 264 0
 228 00a8 4FF08041 		mov	r1, #1073741824
 229              	.LVL36:
 230 00ac 4FF0FF32 		mov	r2, #-1
 231 00b0 0B6C     		ldr	r3, [r1, #64]
 232              	.LVL37:
 233              	.L11:
 270:../asf/sam/drivers/hsmci/hsmci.c **** 	return true;
 234              		.loc 1 270 0
 235 00b2 03F03003 		and	r3, r3, #48
 236              	.LVL38:
 237 00b6 202B     		cmp	r3, #32
 238 00b8 E0D0     		beq	.L30
 265:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmci_debug("%s: timeout\n\r", __func__);
 239              		.loc 1 265 0
 240 00ba 013A     		subs	r2, r2, #1
 241              	.LVL39:
 264:../asf/sam/drivers/hsmci/hsmci.c **** 		if (busy_wait-- == 0) {
 242              		.loc 1 264 0
ARM GAS  /tmp/cc9w1cGI.s 			page 12


 243 00bc 0B6C     		ldr	r3, [r1, #64]
 244              	.LVL40:
 265:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmci_debug("%s: timeout\n\r", __func__);
 245              		.loc 1 265 0
 246 00be F8D1     		bne	.L11
 247              	.LBB66:
 248              	.LBB67:
 143:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t dtor = HSMCI->HSMCI_DTOR;
 249              		.loc 1 143 0
 250 00c0 D1F804E0 		ldr	lr, [r1, #4]
 251              	.LVL41:
 148:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_MR = mr;
 252              		.loc 1 148 0
 253 00c4 8020     		movs	r0, #128
 254              	.LVL42:
 144:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t sdcr = HSMCI->HSMCI_SDCR;
 255              		.loc 1 144 0
 256 00c6 8F68     		ldr	r7, [r1, #8]
 257              	.LVL43:
 163:../asf/sam/drivers/hsmci/hsmci.c **** }
 258              		.loc 1 163 0
 259 00c8 0523     		movs	r3, #5
 260              	.LVL44:
 145:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t cstor = HSMCI->HSMCI_CSTOR;
 261              		.loc 1 145 0
 262 00ca CE68     		ldr	r6, [r1, #12]
 263              	.LVL45:
 146:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t cfg = HSMCI->HSMCI_CFG;
 264              		.loc 1 146 0
 265 00cc CD69     		ldr	r5, [r1, #28]
 266              	.LVL46:
 147:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_CR = HSMCI_CR_SWRST;
 267              		.loc 1 147 0
 268 00ce 4C6D     		ldr	r4, [r1, #84]
 269              	.LVL47:
 148:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_MR = mr;
 270              		.loc 1 148 0
 271 00d0 0860     		str	r0, [r1]
 272              	.LVL48:
 273              	.LBE67:
 274              	.LBE66:
 275              	.LBE65:
 276              	.LBE64:
 334:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 277              		.loc 1 334 0
 278 00d2 1046     		mov	r0, r2
 279              	.LBB71:
 280              	.LBB70:
 281              	.LBB69:
 282              	.LBB68:
 149:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_DTOR = dtor;
 283              		.loc 1 149 0
 284 00d4 C1F804E0 		str	lr, [r1, #4]
 150:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_SDCR = sdcr;
 285              		.loc 1 150 0
 286 00d8 8F60     		str	r7, [r1, #8]
 151:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_CSTOR = cstor;
ARM GAS  /tmp/cc9w1cGI.s 			page 13


 287              		.loc 1 151 0
 288 00da CE60     		str	r6, [r1, #12]
 152:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_CFG = cfg;
 289              		.loc 1 152 0
 290 00dc CD61     		str	r5, [r1, #28]
 153:../asf/sam/drivers/hsmci/hsmci.c **** #ifdef HSMCI_SR_DMADONE
 291              		.loc 1 153 0
 292 00de 4C65     		str	r4, [r1, #84]
 159:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 293              		.loc 1 159 0
 294 00e0 0A65     		str	r2, [r1, #80]
 163:../asf/sam/drivers/hsmci/hsmci.c **** }
 295              		.loc 1 163 0
 296 00e2 0B60     		str	r3, [r1]
 297              	.LVL49:
 298 00e4 F0BD     		pop	{r4, r5, r6, r7, pc}
 299              	.LBE68:
 300              	.LBE69:
 301              	.LBE70:
 302              	.LBE71:
 303              		.cfi_endproc
 304              	.LFE199:
 305              		.size	hsmci_send_cmd_execute, .-hsmci_send_cmd_execute
 306 00e6 00BF     		.section	.text.hsmci_get_speed,"ax",%progbits
 307              		.align	1
 308              		.p2align 2,,3
 309              		.global	hsmci_get_speed
 310              		.syntax unified
 311              		.thumb
 312              		.thumb_func
 313              		.fpu fpv5-d16
 314              		.type	hsmci_get_speed, %function
 315              	hsmci_get_speed:
 316              	.LFB196:
 230:../asf/sam/drivers/hsmci/hsmci.c **** #if SAM4E || SAME70
 317              		.loc 1 230 0
 318              		.cfi_startproc
 319              		@ args = 0, pretend = 0, frame = 0
 320              		@ frame_needed = 0, uses_anonymous_args = 0
 321              		@ link register save eliminated.
 232:../asf/sam/drivers/hsmci/hsmci.c ****        const uint32_t clkodd = ((HSMCI->HSMCI_MR & HSMCI_MR_CLKODD) != 0) ? 1 : 0;
 322              		.loc 1 232 0
 323 0000 4FF08042 		mov	r2, #1073741824
 234:../asf/sam/drivers/hsmci/hsmci.c **** #else
 324              		.loc 1 234 0
 325 0004 064B     		ldr	r3, .L37
 232:../asf/sam/drivers/hsmci/hsmci.c ****        const uint32_t clkodd = ((HSMCI->HSMCI_MR & HSMCI_MR_CLKODD) != 0) ? 1 : 0;
 326              		.loc 1 232 0
 327 0006 5068     		ldr	r0, [r2, #4]
 328              	.LVL50:
 233:../asf/sam/drivers/hsmci/hsmci.c ****        const uint32_t hsmciClock = sysclk_get_cpu_hz()/((2 * clkdiv) + clkodd + 2);
 329              		.loc 1 233 0
 330 0008 5268     		ldr	r2, [r2, #4]
 331              	.LVL51:
 232:../asf/sam/drivers/hsmci/hsmci.c ****        const uint32_t clkodd = ((HSMCI->HSMCI_MR & HSMCI_MR_CLKODD) != 0) ? 1 : 0;
 332              		.loc 1 232 0
 333 000a C0B2     		uxtb	r0, r0
ARM GAS  /tmp/cc9w1cGI.s 			page 14


 334              	.LVL52:
 233:../asf/sam/drivers/hsmci/hsmci.c ****        const uint32_t hsmciClock = sysclk_get_cpu_hz()/((2 * clkdiv) + clkodd + 2);
 335              		.loc 1 233 0
 336 000c C2F30042 		ubfx	r2, r2, #16, #1
 337              	.LVL53:
 234:../asf/sam/drivers/hsmci/hsmci.c **** #else
 338              		.loc 1 234 0
 339 0010 4000     		lsls	r0, r0, #1
 340 0012 0230     		adds	r0, r0, #2
 341 0014 1044     		add	r0, r0, r2
 342 0016 B3FBF0F0 		udiv	r0, r3, r0
 240:../asf/sam/drivers/hsmci/hsmci.c **** 
 343              		.loc 1 240 0
 344 001a 4008     		lsrs	r0, r0, #1
 345 001c 7047     		bx	lr
 346              	.L38:
 347 001e 00BF     		.align	2
 348              	.L37:
 349 0020 00A3E111 		.word	300000000
 350              		.cfi_endproc
 351              	.LFE196:
 352              		.size	hsmci_get_speed, .-hsmci_get_speed
 353              		.section	.text.hsmci_set_idle_func,"ax",%progbits
 354              		.align	1
 355              		.p2align 2,,3
 356              		.global	hsmci_set_idle_func
 357              		.syntax unified
 358              		.thumb
 359              		.thumb_func
 360              		.fpu fpv5-d16
 361              		.type	hsmci_set_idle_func, %function
 362              	hsmci_set_idle_func:
 363              	.LFB197:
 246:../asf/sam/drivers/hsmci/hsmci.c ****        hsmciIdleFunc_t ret = hsmciIdleFunc;
 364              		.loc 1 246 0
 365              		.cfi_startproc
 366              		@ args = 0, pretend = 0, frame = 0
 367              		@ frame_needed = 0, uses_anonymous_args = 0
 368              		@ link register save eliminated.
 369              	.LVL54:
 247:../asf/sam/drivers/hsmci/hsmci.c ****        hsmciIdleFunc = p;
 370              		.loc 1 247 0
 371 0000 024B     		ldr	r3, .L40
 372 0002 1A68     		ldr	r2, [r3]
 373              	.LVL55:
 248:../asf/sam/drivers/hsmci/hsmci.c ****        return ret;
 374              		.loc 1 248 0
 375 0004 1860     		str	r0, [r3]
 250:../asf/sam/drivers/hsmci/hsmci.c **** 
 376              		.loc 1 250 0
 377 0006 1046     		mov	r0, r2
 378              	.LVL56:
 379 0008 7047     		bx	lr
 380              	.L41:
 381 000a 00BF     		.align	2
 382              	.L40:
 383 000c 00000000 		.word	.LANCHOR0
ARM GAS  /tmp/cc9w1cGI.s 			page 15


 384              		.cfi_endproc
 385              	.LFE197:
 386              		.size	hsmci_set_idle_func, .-hsmci_set_idle_func
 387              		.section	.text.hsmci_init,"ax",%progbits
 388              		.align	1
 389              		.p2align 2,,3
 390              		.global	hsmci_init
 391              		.syntax unified
 392              		.thumb
 393              		.thumb_func
 394              		.fpu fpv5-d16
 395              		.type	hsmci_init, %function
 396              	hsmci_init:
 397              	.LFB200:
 338:../asf/sam/drivers/hsmci/hsmci.c **** }
 339:../asf/sam/drivers/hsmci/hsmci.c **** 
 340:../asf/sam/drivers/hsmci/hsmci.c **** 
 341:../asf/sam/drivers/hsmci/hsmci.c **** //-------------------------------------------------------------------
 342:../asf/sam/drivers/hsmci/hsmci.c **** //--------------------- PUBLIC FUNCTIONS ----------------------------
 343:../asf/sam/drivers/hsmci/hsmci.c **** 
 344:../asf/sam/drivers/hsmci/hsmci.c **** void hsmci_init(void)
 345:../asf/sam/drivers/hsmci/hsmci.c **** {
 398              		.loc 1 345 0
 399              		.cfi_startproc
 400              		@ args = 0, pretend = 0, frame = 0
 401              		@ frame_needed = 0, uses_anonymous_args = 0
 402 0000 10B5     		push	{r4, lr}
 403              		.cfi_def_cfa_offset 8
 404              		.cfi_offset 4, -8
 405              		.cfi_offset 14, -4
 346:../asf/sam/drivers/hsmci/hsmci.c **** 	pmc_enable_periph_clk(ID_HSMCI);
 406              		.loc 1 346 0
 407 0002 1220     		movs	r0, #18
 347:../asf/sam/drivers/hsmci/hsmci.c **** #ifdef HSMCI_SR_DMADONE
 348:../asf/sam/drivers/hsmci/hsmci.c **** 	// Enable clock for DMA controller
 349:../asf/sam/drivers/hsmci/hsmci.c **** 	pmc_enable_periph_clk(ID_DMAC);
 350:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 351:../asf/sam/drivers/hsmci/hsmci.c **** 
 352:../asf/sam/drivers/hsmci/hsmci.c **** #if (SAMV70 || SAMV71 || SAME70 || SAMS70)
 353:../asf/sam/drivers/hsmci/hsmci.c **** #ifdef HSMCI_DMA_DMAEN
 354:../asf/sam/drivers/hsmci/hsmci.c **** 	// Enable clock for DMA controller
 355:../asf/sam/drivers/hsmci/hsmci.c **** 	pmc_enable_periph_clk(ID_XDMAC);
 356:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 357:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 358:../asf/sam/drivers/hsmci/hsmci.c **** 
 359:../asf/sam/drivers/hsmci/hsmci.c **** 	// Set the Data Timeout Register to 2 Mega Cycles
 360:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_DTOR = HSMCI_DTOR_DTOMUL_1048576 | HSMCI_DTOR_DTOCYC(2);
 361:../asf/sam/drivers/hsmci/hsmci.c **** 	// Set Completion Signal Timeout to 2 Mega Cycles
 362:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_CSTOR = HSMCI_CSTOR_CSTOMUL_1048576 | HSMCI_CSTOR_CSTOCYC(2);
 363:../asf/sam/drivers/hsmci/hsmci.c **** 	// Set Configuration Register
 364:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_CFG = HSMCI_CFG_FIFOMODE | HSMCI_CFG_FERRCTRL;
 408              		.loc 1 364 0
 409 0004 1124     		movs	r4, #17
 346:../asf/sam/drivers/hsmci/hsmci.c **** 	pmc_enable_periph_clk(ID_HSMCI);
 410              		.loc 1 346 0
 411 0006 FFF7FEFF 		bl	pmc_enable_periph_clk
 412              	.LVL57:
ARM GAS  /tmp/cc9w1cGI.s 			page 16


 355:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 413              		.loc 1 355 0
 414 000a 3A20     		movs	r0, #58
 415 000c FFF7FEFF 		bl	pmc_enable_periph_clk
 416              	.LVL58:
 360:../asf/sam/drivers/hsmci/hsmci.c **** 	// Set Completion Signal Timeout to 2 Mega Cycles
 417              		.loc 1 360 0
 418 0010 4FF08043 		mov	r3, #1073741824
 419 0014 7222     		movs	r2, #114
 365:../asf/sam/drivers/hsmci/hsmci.c **** 	// Set power saving to maximum value
 366:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_MR = HSMCI_MR_PWSDIV_Msk;
 420              		.loc 1 366 0
 421 0016 4FF4E060 		mov	r0, #1792
 367:../asf/sam/drivers/hsmci/hsmci.c **** 
 368:../asf/sam/drivers/hsmci/hsmci.c **** 	// Enable the HSMCI and the Power Saving
 369:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_CR = HSMCI_CR_MCIEN | HSMCI_CR_PWSEN;
 422              		.loc 1 369 0
 423 001a 0521     		movs	r1, #5
 360:../asf/sam/drivers/hsmci/hsmci.c **** 	// Set Completion Signal Timeout to 2 Mega Cycles
 424              		.loc 1 360 0
 425 001c 9A60     		str	r2, [r3, #8]
 362:../asf/sam/drivers/hsmci/hsmci.c **** 	// Set Configuration Register
 426              		.loc 1 362 0
 427 001e DA61     		str	r2, [r3, #28]
 364:../asf/sam/drivers/hsmci/hsmci.c **** 	// Set power saving to maximum value
 428              		.loc 1 364 0
 429 0020 5C65     		str	r4, [r3, #84]
 366:../asf/sam/drivers/hsmci/hsmci.c **** 
 430              		.loc 1 366 0
 431 0022 5860     		str	r0, [r3, #4]
 432              		.loc 1 369 0
 433 0024 1960     		str	r1, [r3]
 434 0026 10BD     		pop	{r4, pc}
 435              		.cfi_endproc
 436              	.LFE200:
 437              		.size	hsmci_init, .-hsmci_init
 438              		.section	.text.hsmci_get_bus_width,"ax",%progbits
 439              		.align	1
 440              		.p2align 2,,3
 441              		.global	hsmci_get_bus_width
 442              		.syntax unified
 443              		.thumb
 444              		.thumb_func
 445              		.fpu fpv5-d16
 446              		.type	hsmci_get_bus_width, %function
 447              	hsmci_get_bus_width:
 448              	.LFB201:
 370:../asf/sam/drivers/hsmci/hsmci.c **** }
 371:../asf/sam/drivers/hsmci/hsmci.c **** 
 372:../asf/sam/drivers/hsmci/hsmci.c **** uint8_t hsmci_get_bus_width(uint8_t slot)
 373:../asf/sam/drivers/hsmci/hsmci.c **** {
 449              		.loc 1 373 0
 450              		.cfi_startproc
 451              		@ args = 0, pretend = 0, frame = 0
 452              		@ frame_needed = 0, uses_anonymous_args = 0
 453              		@ link register save eliminated.
 454              	.LVL59:
ARM GAS  /tmp/cc9w1cGI.s 			page 17


 374:../asf/sam/drivers/hsmci/hsmci.c **** 	switch (slot) {
 455              		.loc 1 374 0
 456 0000 0028     		cmp	r0, #0
 375:../asf/sam/drivers/hsmci/hsmci.c **** 	case 0:
 376:../asf/sam/drivers/hsmci/hsmci.c **** 		return SD_MMC_HSMCI_SLOT_0_SIZE;
 377:../asf/sam/drivers/hsmci/hsmci.c **** #if (SD_MMC_HSMCI_MEM_CNT == 2)
 378:../asf/sam/drivers/hsmci/hsmci.c **** 	case 1:
 379:../asf/sam/drivers/hsmci/hsmci.c **** 		return SD_MMC_HSMCI_SLOT_1_SIZE;
 380:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 381:../asf/sam/drivers/hsmci/hsmci.c **** 	default:
 382:../asf/sam/drivers/hsmci/hsmci.c **** 		return 0; // Slot number wrong
 383:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 384:../asf/sam/drivers/hsmci/hsmci.c **** }
 457              		.loc 1 384 0
 458 0002 0CBF     		ite	eq
 459 0004 0420     		moveq	r0, #4
 460              	.LVL60:
 461 0006 0020     		movne	r0, #0
 462 0008 7047     		bx	lr
 463              		.cfi_endproc
 464              	.LFE201:
 465              		.size	hsmci_get_bus_width, .-hsmci_get_bus_width
 466 000a 00BF     		.section	.text.hsmci_is_high_speed_capable,"ax",%progbits
 467              		.align	1
 468              		.p2align 2,,3
 469              		.global	hsmci_is_high_speed_capable
 470              		.syntax unified
 471              		.thumb
 472              		.thumb_func
 473              		.fpu fpv5-d16
 474              		.type	hsmci_is_high_speed_capable, %function
 475              	hsmci_is_high_speed_capable:
 476              	.LFB202:
 385:../asf/sam/drivers/hsmci/hsmci.c **** 
 386:../asf/sam/drivers/hsmci/hsmci.c **** bool hsmci_is_high_speed_capable(void)
 387:../asf/sam/drivers/hsmci/hsmci.c **** {
 477              		.loc 1 387 0
 478              		.cfi_startproc
 479              		@ args = 0, pretend = 0, frame = 0
 480              		@ frame_needed = 0, uses_anonymous_args = 0
 481              		@ link register save eliminated.
 388:../asf/sam/drivers/hsmci/hsmci.c **** 	return true;
 389:../asf/sam/drivers/hsmci/hsmci.c **** }
 482              		.loc 1 389 0
 483 0000 0120     		movs	r0, #1
 484 0002 7047     		bx	lr
 485              		.cfi_endproc
 486              	.LFE202:
 487              		.size	hsmci_is_high_speed_capable, .-hsmci_is_high_speed_capable
 488              		.section	.text.hsmci_select_device,"ax",%progbits
 489              		.align	1
 490              		.p2align 2,,3
 491              		.global	hsmci_select_device
 492              		.syntax unified
 493              		.thumb
 494              		.thumb_func
 495              		.fpu fpv5-d16
ARM GAS  /tmp/cc9w1cGI.s 			page 18


 496              		.type	hsmci_select_device, %function
 497              	hsmci_select_device:
 498              	.LFB203:
 390:../asf/sam/drivers/hsmci/hsmci.c **** 
 391:../asf/sam/drivers/hsmci/hsmci.c **** void hsmci_select_device(uint8_t slot, uint32_t clock, uint8_t bus_width, bool high_speed)
 392:../asf/sam/drivers/hsmci/hsmci.c **** {
 499              		.loc 1 392 0
 500              		.cfi_startproc
 501              		@ args = 0, pretend = 0, frame = 0
 502              		@ frame_needed = 0, uses_anonymous_args = 0
 503              		@ link register save eliminated.
 504              	.LVL61:
 393:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t hsmci_slot = HSMCI_SDCR_SDCSEL_SLOTA;
 394:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t hsmci_bus_width = HSMCI_SDCR_SDCBUS_1;
 395:../asf/sam/drivers/hsmci/hsmci.c **** 
 396:../asf/sam/drivers/hsmci/hsmci.c **** 	if (high_speed) {
 397:../asf/sam/drivers/hsmci/hsmci.c **** 		HSMCI->HSMCI_CFG |= HSMCI_CFG_HSMODE;
 505              		.loc 1 397 0
 506 0000 4FF08040 		mov	r0, #1073741824
 507              	.LVL62:
 396:../asf/sam/drivers/hsmci/hsmci.c **** 		HSMCI->HSMCI_CFG |= HSMCI_CFG_HSMODE;
 508              		.loc 1 396 0
 509 0004 002B     		cmp	r3, #0
 510 0006 2ED0     		beq	.L50
 511              	.LVL63:
 512              		.loc 1 397 0
 513 0008 436D     		ldr	r3, [r0, #84]
 514              	.LVL64:
 515 000a 43F48073 		orr	r3, r3, #256
 516 000e 4365     		str	r3, [r0, #84]
 517              	.LBB74:
 518              	.LBB75:
 181:../asf/sam/drivers/hsmci/hsmci.c **** 		div = (mck / speed) - 2;
 519              		.loc 1 181 0
 520 0010 304B     		ldr	r3, .L75
 521 0012 B3EB410F 		cmp	r3, r1, lsl #1
 522 0016 2ED3     		bcc	.L52
 523              	.L73:
 182:../asf/sam/drivers/hsmci/hsmci.c **** 		if (mck % speed) {
 524              		.loc 1 182 0
 525 0018 2F48     		ldr	r0, .L75+4
 526 001a B0FBF1F3 		udiv	r3, r0, r1
 527              	.LVL65:
 183:../asf/sam/drivers/hsmci/hsmci.c **** 			// Ensure that the card speed not be higher than expected.
 528              		.loc 1 183 0
 529 001e 01FB1301 		mls	r1, r1, r3, r0
 530              	.LVL66:
 531              	.LBE75:
 532              	.LBE74:
 392:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t hsmci_slot = HSMCI_SDCR_SDCSEL_SLOTA;
 533              		.loc 1 392 0
 534 0022 10B4     		push	{r4}
 535              		.cfi_def_cfa_offset 4
 536              		.cfi_offset 4, -4
 537              	.LBB82:
 538              	.LBB76:
 183:../asf/sam/drivers/hsmci/hsmci.c **** 			// Ensure that the card speed not be higher than expected.
ARM GAS  /tmp/cc9w1cGI.s 			page 19


 539              		.loc 1 183 0
 540 0024 0029     		cmp	r1, #0
 541 0026 3ED1     		bne	.L53
 182:../asf/sam/drivers/hsmci/hsmci.c **** 		if (mck % speed) {
 542              		.loc 1 182 0
 543 0028 991E     		subs	r1, r3, #2
 544              	.LVL67:
 545              	.L54:
 195:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_MR |= HSMCI_MR_CLKDIV(clkdiv);
 546              		.loc 1 195 0
 547 002a 4FF08043 		mov	r3, #1073741824
 196:../asf/sam/drivers/hsmci/hsmci.c **** 	if (clkodd) {
 548              		.loc 1 196 0
 549 002e C1F34700 		ubfx	r0, r1, #1, #8
 197:../asf/sam/drivers/hsmci/hsmci.c **** 		HSMCI->HSMCI_MR |= HSMCI_MR_CLKODD;
 550              		.loc 1 197 0
 551 0032 C907     		lsls	r1, r1, #31
 552              	.LVL68:
 195:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_MR |= HSMCI_MR_CLKDIV(clkdiv);
 553              		.loc 1 195 0
 554 0034 5C68     		ldr	r4, [r3, #4]
 555 0036 24F0FF04 		bic	r4, r4, #255
 556 003a 5C60     		str	r4, [r3, #4]
 196:../asf/sam/drivers/hsmci/hsmci.c **** 	if (clkodd) {
 557              		.loc 1 196 0
 558 003c 5C68     		ldr	r4, [r3, #4]
 559 003e 40EA0400 		orr	r0, r0, r4
 560 0042 5860     		str	r0, [r3, #4]
 197:../asf/sam/drivers/hsmci/hsmci.c **** 		HSMCI->HSMCI_MR |= HSMCI_MR_CLKODD;
 561              		.loc 1 197 0
 562 0044 31D5     		bpl	.L55
 198:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 563              		.loc 1 198 0
 564 0046 5968     		ldr	r1, [r3, #4]
 565              	.LBE76:
 566              	.LBE82:
 398:../asf/sam/drivers/hsmci/hsmci.c **** 	} else {
 399:../asf/sam/drivers/hsmci/hsmci.c **** 		HSMCI->HSMCI_CFG &= ~HSMCI_CFG_HSMODE;
 400:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 401:../asf/sam/drivers/hsmci/hsmci.c **** 
 402:../asf/sam/drivers/hsmci/hsmci.c **** 	hsmci_set_speed(clock, sysclk_get_peripheral_hz());
 403:../asf/sam/drivers/hsmci/hsmci.c **** 
 404:../asf/sam/drivers/hsmci/hsmci.c **** 	switch (slot) {
 405:../asf/sam/drivers/hsmci/hsmci.c **** 	case 0:
 406:../asf/sam/drivers/hsmci/hsmci.c **** 		hsmci_slot = HSMCI_SDCR_SDCSEL_SLOTA;
 407:../asf/sam/drivers/hsmci/hsmci.c **** 		break;
 408:../asf/sam/drivers/hsmci/hsmci.c **** #if (SD_MMC_HSMCI_MEM_CNT == 2)
 409:../asf/sam/drivers/hsmci/hsmci.c **** 	case 1:
 410:../asf/sam/drivers/hsmci/hsmci.c **** 		hsmci_slot = HSMCI_SDCR_SDCSEL_SLOTB;
 411:../asf/sam/drivers/hsmci/hsmci.c **** 		break;
 412:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 413:../asf/sam/drivers/hsmci/hsmci.c **** 	default:
 414:../asf/sam/drivers/hsmci/hsmci.c **** 		Assert(false); // Slot number wrong
 415:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 416:../asf/sam/drivers/hsmci/hsmci.c **** 
 417:../asf/sam/drivers/hsmci/hsmci.c **** 	switch (bus_width) {
 567              		.loc 1 417 0
ARM GAS  /tmp/cc9w1cGI.s 			page 20


 568 0048 042A     		cmp	r2, #4
 569              	.LBB83:
 570              	.LBB77:
 198:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 571              		.loc 1 198 0
 572 004a 41F48031 		orr	r1, r1, #65536
 573 004e 5960     		str	r1, [r3, #4]
 574              	.LVL69:
 575              	.LBE77:
 576              	.LBE83:
 577              		.loc 1 417 0
 578 0050 33D0     		beq	.L58
 579              	.L74:
 394:../asf/sam/drivers/hsmci/hsmci.c **** 
 580              		.loc 1 394 0
 581 0052 082A     		cmp	r2, #8
 418:../asf/sam/drivers/hsmci/hsmci.c **** 	case 1:
 419:../asf/sam/drivers/hsmci/hsmci.c **** 		hsmci_bus_width = HSMCI_SDCR_SDCBUS_1;
 420:../asf/sam/drivers/hsmci/hsmci.c **** 		break;
 421:../asf/sam/drivers/hsmci/hsmci.c **** 
 422:../asf/sam/drivers/hsmci/hsmci.c **** 	case 4:
 423:../asf/sam/drivers/hsmci/hsmci.c **** 		hsmci_bus_width = HSMCI_SDCR_SDCBUS_4;
 424:../asf/sam/drivers/hsmci/hsmci.c **** 		break;
 425:../asf/sam/drivers/hsmci/hsmci.c **** 
 426:../asf/sam/drivers/hsmci/hsmci.c **** 	case 8:
 427:../asf/sam/drivers/hsmci/hsmci.c **** 		hsmci_bus_width = HSMCI_SDCR_SDCBUS_8;
 428:../asf/sam/drivers/hsmci/hsmci.c **** 		break;
 429:../asf/sam/drivers/hsmci/hsmci.c **** 
 430:../asf/sam/drivers/hsmci/hsmci.c **** 	default:
 431:../asf/sam/drivers/hsmci/hsmci.c **** 		Assert(false); // Bus width wrong
 432:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 433:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_SDCR = hsmci_slot | hsmci_bus_width;
 582              		.loc 1 433 0
 583 0054 4FF08043 		mov	r3, #1073741824
 434:../asf/sam/drivers/hsmci/hsmci.c **** }
 584              		.loc 1 434 0
 585 0058 5DF8044B 		ldr	r4, [sp], #4
 586              		.cfi_restore 4
 587              		.cfi_def_cfa_offset 0
 394:../asf/sam/drivers/hsmci/hsmci.c **** 
 588              		.loc 1 394 0
 589 005c 0CBF     		ite	eq
 590 005e C022     		moveq	r2, #192
 591              	.LVL70:
 592 0060 0022     		movne	r2, #0
 593              	.LVL71:
 433:../asf/sam/drivers/hsmci/hsmci.c **** }
 594              		.loc 1 433 0
 595 0062 DA60     		str	r2, [r3, #12]
 596              		.loc 1 434 0
 597 0064 7047     		bx	lr
 598              	.LVL72:
 599              	.L50:
 399:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 600              		.loc 1 399 0
 601 0066 436D     		ldr	r3, [r0, #84]
 602              	.LVL73:
ARM GAS  /tmp/cc9w1cGI.s 			page 21


 603 0068 23F48073 		bic	r3, r3, #256
 604 006c 4365     		str	r3, [r0, #84]
 605              	.LVL74:
 606              	.LBB84:
 607              	.LBB78:
 181:../asf/sam/drivers/hsmci/hsmci.c **** 		div = (mck / speed) - 2;
 608              		.loc 1 181 0
 609 006e 194B     		ldr	r3, .L75
 610 0070 B3EB410F 		cmp	r3, r1, lsl #1
 611 0074 D0D2     		bcs	.L73
 612              	.L52:
 195:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_MR |= HSMCI_MR_CLKDIV(clkdiv);
 613              		.loc 1 195 0
 614 0076 4FF08043 		mov	r3, #1073741824
 615              	.LBE78:
 616              	.LBE84:
 417:../asf/sam/drivers/hsmci/hsmci.c **** 	case 1:
 617              		.loc 1 417 0
 618 007a 042A     		cmp	r2, #4
 619              	.LBB85:
 620              	.LBB79:
 195:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_MR |= HSMCI_MR_CLKDIV(clkdiv);
 621              		.loc 1 195 0
 622 007c 5968     		ldr	r1, [r3, #4]
 623              	.LVL75:
 624 007e 21F0FF01 		bic	r1, r1, #255
 625 0082 5960     		str	r1, [r3, #4]
 196:../asf/sam/drivers/hsmci/hsmci.c **** 	if (clkodd) {
 626              		.loc 1 196 0
 627 0084 5968     		ldr	r1, [r3, #4]
 628 0086 5960     		str	r1, [r3, #4]
 629              	.LVL76:
 201:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 630              		.loc 1 201 0
 631 0088 4FF08041 		mov	r1, #1073741824
 632 008c 4B68     		ldr	r3, [r1, #4]
 633 008e 23F48033 		bic	r3, r3, #65536
 634 0092 4B60     		str	r3, [r1, #4]
 635              	.LVL77:
 636              	.LBE79:
 637              	.LBE85:
 417:../asf/sam/drivers/hsmci/hsmci.c **** 	case 1:
 638              		.loc 1 417 0
 639 0094 18D0     		beq	.L67
 394:../asf/sam/drivers/hsmci/hsmci.c **** 
 640              		.loc 1 394 0
 641 0096 082A     		cmp	r2, #8
 433:../asf/sam/drivers/hsmci/hsmci.c **** }
 642              		.loc 1 433 0
 643 0098 4FF08043 		mov	r3, #1073741824
 394:../asf/sam/drivers/hsmci/hsmci.c **** 
 644              		.loc 1 394 0
 645 009c 0CBF     		ite	eq
 646 009e C022     		moveq	r2, #192
 647              	.LVL78:
 648 00a0 0022     		movne	r2, #0
 649              	.LVL79:
ARM GAS  /tmp/cc9w1cGI.s 			page 22


 433:../asf/sam/drivers/hsmci/hsmci.c **** }
 650              		.loc 1 433 0
 651 00a2 DA60     		str	r2, [r3, #12]
 652 00a4 7047     		bx	lr
 653              	.LVL80:
 654              	.L53:
 655              		.cfi_def_cfa_offset 4
 656              		.cfi_offset 4, -4
 657              	.LBB86:
 658              	.LBB80:
 185:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 659              		.loc 1 185 0
 660 00a6 591E     		subs	r1, r3, #1
 661              	.LVL81:
 662 00a8 BFE7     		b	.L54
 663              	.LVL82:
 664              	.L55:
 201:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 665              		.loc 1 201 0
 666 00aa 4FF08041 		mov	r1, #1073741824
 667              	.LBE80:
 668              	.LBE86:
 417:../asf/sam/drivers/hsmci/hsmci.c **** 	case 1:
 669              		.loc 1 417 0
 670 00ae 042A     		cmp	r2, #4
 671              	.LBB87:
 672              	.LBB81:
 201:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 673              		.loc 1 201 0
 674 00b0 4B68     		ldr	r3, [r1, #4]
 675 00b2 23F48033 		bic	r3, r3, #65536
 676 00b6 4B60     		str	r3, [r1, #4]
 677              	.LVL83:
 678              	.LBE81:
 679              	.LBE87:
 417:../asf/sam/drivers/hsmci/hsmci.c **** 	case 1:
 680              		.loc 1 417 0
 681 00b8 CBD1     		bne	.L74
 682              	.L58:
 423:../asf/sam/drivers/hsmci/hsmci.c **** 		break;
 683              		.loc 1 423 0
 684 00ba 8022     		movs	r2, #128
 685              	.LVL84:
 433:../asf/sam/drivers/hsmci/hsmci.c **** }
 686              		.loc 1 433 0
 687 00bc 4FF08043 		mov	r3, #1073741824
 688              		.loc 1 434 0
 689 00c0 5DF8044B 		ldr	r4, [sp], #4
 690              		.cfi_restore 4
 691              		.cfi_def_cfa_offset 0
 433:../asf/sam/drivers/hsmci/hsmci.c **** }
 692              		.loc 1 433 0
 693 00c4 DA60     		str	r2, [r3, #12]
 694              		.loc 1 434 0
 695 00c6 7047     		bx	lr
 696              	.LVL85:
 697              	.L67:
ARM GAS  /tmp/cc9w1cGI.s 			page 23


 423:../asf/sam/drivers/hsmci/hsmci.c **** 		break;
 698              		.loc 1 423 0
 699 00c8 8022     		movs	r2, #128
 700              	.LVL86:
 433:../asf/sam/drivers/hsmci/hsmci.c **** }
 701              		.loc 1 433 0
 702 00ca 4FF08043 		mov	r3, #1073741824
 703 00ce DA60     		str	r2, [r3, #12]
 704 00d0 7047     		bx	lr
 705              	.L76:
 706 00d2 00BF     		.align	2
 707              	.L75:
 708 00d4 7FD1F008 		.word	149999999
 709 00d8 80D1F008 		.word	150000000
 710              		.cfi_endproc
 711              	.LFE203:
 712              		.size	hsmci_select_device, .-hsmci_select_device
 713              		.section	.text.hsmci_deselect_device,"ax",%progbits
 714              		.align	1
 715              		.p2align 2,,3
 716              		.global	hsmci_deselect_device
 717              		.syntax unified
 718              		.thumb
 719              		.thumb_func
 720              		.fpu fpv5-d16
 721              		.type	hsmci_deselect_device, %function
 722              	hsmci_deselect_device:
 723              	.LFB204:
 435:../asf/sam/drivers/hsmci/hsmci.c **** 
 436:../asf/sam/drivers/hsmci/hsmci.c **** void hsmci_deselect_device(uint8_t slot)
 437:../asf/sam/drivers/hsmci/hsmci.c **** {
 724              		.loc 1 437 0
 725              		.cfi_startproc
 726              		@ args = 0, pretend = 0, frame = 0
 727              		@ frame_needed = 0, uses_anonymous_args = 0
 728              		@ link register save eliminated.
 729              	.LVL87:
 730 0000 7047     		bx	lr
 731              		.cfi_endproc
 732              	.LFE204:
 733              		.size	hsmci_deselect_device, .-hsmci_deselect_device
 734 0002 00BF     		.section	.text.hsmci_send_clock,"ax",%progbits
 735              		.align	1
 736              		.p2align 2,,3
 737              		.global	hsmci_send_clock
 738              		.syntax unified
 739              		.thumb
 740              		.thumb_func
 741              		.fpu fpv5-d16
 742              		.type	hsmci_send_clock, %function
 743              	hsmci_send_clock:
 744              	.LFB205:
 438:../asf/sam/drivers/hsmci/hsmci.c **** 	UNUSED(slot);
 439:../asf/sam/drivers/hsmci/hsmci.c **** 	// Nothing to do
 440:../asf/sam/drivers/hsmci/hsmci.c **** }
 441:../asf/sam/drivers/hsmci/hsmci.c **** 
 442:../asf/sam/drivers/hsmci/hsmci.c **** void hsmci_send_clock(void)
ARM GAS  /tmp/cc9w1cGI.s 			page 24


 443:../asf/sam/drivers/hsmci/hsmci.c **** {
 745              		.loc 1 443 0
 746              		.cfi_startproc
 747              		@ args = 0, pretend = 0, frame = 0
 748              		@ frame_needed = 0, uses_anonymous_args = 0
 749              		@ link register save eliminated.
 444:../asf/sam/drivers/hsmci/hsmci.c **** 	// Configure command
 445:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_MR &= ~(HSMCI_MR_WRPROOF | HSMCI_MR_RDPROOF | HSMCI_MR_FBYTE);
 750              		.loc 1 445 0
 751 0000 4FF08043 		mov	r3, #1073741824
 446:../asf/sam/drivers/hsmci/hsmci.c **** 	// Write argument
 447:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_ARGR = 0;
 448:../asf/sam/drivers/hsmci/hsmci.c **** 	// Write and start initialization command
 449:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_CMDR = HSMCI_CMDR_RSPTYP_NORESP
 752              		.loc 1 449 0
 753 0004 4FF41060 		mov	r0, #2304
 445:../asf/sam/drivers/hsmci/hsmci.c **** 	// Write argument
 754              		.loc 1 445 0
 755 0008 5968     		ldr	r1, [r3, #4]
 450:../asf/sam/drivers/hsmci/hsmci.c **** 			| HSMCI_CMDR_SPCMD_INIT
 451:../asf/sam/drivers/hsmci/hsmci.c **** 			| HSMCI_CMDR_OPDCMD_OPENDRAIN;
 452:../asf/sam/drivers/hsmci/hsmci.c **** 	// Wait end of initialization command
 453:../asf/sam/drivers/hsmci/hsmci.c **** 	while (!(HSMCI->HSMCI_SR & HSMCI_SR_CMDRDY));
 756              		.loc 1 453 0
 757 000a 1A46     		mov	r2, r3
 443:../asf/sam/drivers/hsmci/hsmci.c **** 	// Configure command
 758              		.loc 1 443 0
 759 000c 10B4     		push	{r4}
 760              		.cfi_def_cfa_offset 4
 761              		.cfi_offset 4, -4
 445:../asf/sam/drivers/hsmci/hsmci.c **** 	// Write argument
 762              		.loc 1 445 0
 763 000e 21F46051 		bic	r1, r1, #14336
 447:../asf/sam/drivers/hsmci/hsmci.c **** 	// Write and start initialization command
 764              		.loc 1 447 0
 765 0012 0024     		movs	r4, #0
 445:../asf/sam/drivers/hsmci/hsmci.c **** 	// Write argument
 766              		.loc 1 445 0
 767 0014 5960     		str	r1, [r3, #4]
 447:../asf/sam/drivers/hsmci/hsmci.c **** 	// Write and start initialization command
 768              		.loc 1 447 0
 769 0016 1C61     		str	r4, [r3, #16]
 449:../asf/sam/drivers/hsmci/hsmci.c **** 			| HSMCI_CMDR_SPCMD_INIT
 770              		.loc 1 449 0
 771 0018 5861     		str	r0, [r3, #20]
 772              	.L79:
 773              		.loc 1 453 0 discriminator 1
 774 001a 136C     		ldr	r3, [r2, #64]
 775 001c DB07     		lsls	r3, r3, #31
 776 001e FCD5     		bpl	.L79
 454:../asf/sam/drivers/hsmci/hsmci.c **** }
 777              		.loc 1 454 0
 778 0020 5DF8044B 		ldr	r4, [sp], #4
 779              		.cfi_restore 4
 780              		.cfi_def_cfa_offset 0
 781 0024 7047     		bx	lr
 782              		.cfi_endproc
ARM GAS  /tmp/cc9w1cGI.s 			page 25


 783              	.LFE205:
 784              		.size	hsmci_send_clock, .-hsmci_send_clock
 785 0026 00BF     		.section	.text.hsmci_send_cmd,"ax",%progbits
 786              		.align	1
 787              		.p2align 2,,3
 788              		.global	hsmci_send_cmd
 789              		.syntax unified
 790              		.thumb
 791              		.thumb_func
 792              		.fpu fpv5-d16
 793              		.type	hsmci_send_cmd, %function
 794              	hsmci_send_cmd:
 795              	.LFB206:
 455:../asf/sam/drivers/hsmci/hsmci.c **** 
 456:../asf/sam/drivers/hsmci/hsmci.c **** bool hsmci_send_cmd(sdmmc_cmd_def_t cmd, uint32_t arg)
 457:../asf/sam/drivers/hsmci/hsmci.c **** {
 796              		.loc 1 457 0
 797              		.cfi_startproc
 798              		@ args = 0, pretend = 0, frame = 0
 799              		@ frame_needed = 0, uses_anonymous_args = 0
 800              		@ link register save eliminated.
 801              	.LVL88:
 458:../asf/sam/drivers/hsmci/hsmci.c **** 	// Configure command
 459:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_MR &= ~(HSMCI_MR_WRPROOF | HSMCI_MR_RDPROOF | HSMCI_MR_FBYTE);
 802              		.loc 1 459 0
 803 0000 4FF08043 		mov	r3, #1073741824
 460:../asf/sam/drivers/hsmci/hsmci.c **** #ifdef HSMCI_SR_DMADONE
 461:../asf/sam/drivers/hsmci/hsmci.c **** 	// Disable DMA for HSMCI
 462:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_DMA = 0;
 463:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 464:../asf/sam/drivers/hsmci/hsmci.c **** #ifdef HSMCI_MR_PDCMODE
 465:../asf/sam/drivers/hsmci/hsmci.c **** 	// Disable PDC for HSMCI
 466:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_MR &= ~HSMCI_MR_PDCMODE;
 467:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 468:../asf/sam/drivers/hsmci/hsmci.c **** #if (SAMV70 || SAMV71 || SAME70 || SAMS70)
 469:../asf/sam/drivers/hsmci/hsmci.c **** #ifdef HSMCI_DMA_DMAEN
 470:../asf/sam/drivers/hsmci/hsmci.c **** 	// Disable DMA for HSMCI
 471:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_DMA = 0;
 472:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 473:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 474:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_BLKR = 0;
 475:../asf/sam/drivers/hsmci/hsmci.c **** 	return hsmci_send_cmd_execute(0, cmd, arg);
 804              		.loc 1 475 0
 805 0004 0A46     		mov	r2, r1
 806 0006 0146     		mov	r1, r0
 807              	.LVL89:
 457:../asf/sam/drivers/hsmci/hsmci.c **** 	// Configure command
 808              		.loc 1 457 0
 809 0008 30B4     		push	{r4, r5}
 810              		.cfi_def_cfa_offset 8
 811              		.cfi_offset 4, -8
 812              		.cfi_offset 5, -4
 459:../asf/sam/drivers/hsmci/hsmci.c **** #ifdef HSMCI_SR_DMADONE
 813              		.loc 1 459 0
 814 000a 5D68     		ldr	r5, [r3, #4]
 471:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 815              		.loc 1 471 0
ARM GAS  /tmp/cc9w1cGI.s 			page 26


 816 000c 0024     		movs	r4, #0
 459:../asf/sam/drivers/hsmci/hsmci.c **** #ifdef HSMCI_SR_DMADONE
 817              		.loc 1 459 0
 818 000e 25F46055 		bic	r5, r5, #14336
 819              		.loc 1 475 0
 820 0012 2046     		mov	r0, r4
 821              	.LVL90:
 459:../asf/sam/drivers/hsmci/hsmci.c **** #ifdef HSMCI_SR_DMADONE
 822              		.loc 1 459 0
 823 0014 5D60     		str	r5, [r3, #4]
 471:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 824              		.loc 1 471 0
 825 0016 1C65     		str	r4, [r3, #80]
 474:../asf/sam/drivers/hsmci/hsmci.c **** 	return hsmci_send_cmd_execute(0, cmd, arg);
 826              		.loc 1 474 0
 827 0018 9C61     		str	r4, [r3, #24]
 476:../asf/sam/drivers/hsmci/hsmci.c **** }
 828              		.loc 1 476 0
 829 001a 30BC     		pop	{r4, r5}
 830              		.cfi_restore 5
 831              		.cfi_restore 4
 832              		.cfi_def_cfa_offset 0
 475:../asf/sam/drivers/hsmci/hsmci.c **** }
 833              		.loc 1 475 0
 834 001c FFF7FEBF 		b	hsmci_send_cmd_execute
 835              	.LVL91:
 836              		.cfi_endproc
 837              	.LFE206:
 838              		.size	hsmci_send_cmd, .-hsmci_send_cmd
 839              		.section	.text.hsmci_get_response,"ax",%progbits
 840              		.align	1
 841              		.p2align 2,,3
 842              		.global	hsmci_get_response
 843              		.syntax unified
 844              		.thumb
 845              		.thumb_func
 846              		.fpu fpv5-d16
 847              		.type	hsmci_get_response, %function
 848              	hsmci_get_response:
 849              	.LFB207:
 477:../asf/sam/drivers/hsmci/hsmci.c **** 
 478:../asf/sam/drivers/hsmci/hsmci.c **** uint32_t hsmci_get_response(void)
 479:../asf/sam/drivers/hsmci/hsmci.c **** {
 850              		.loc 1 479 0
 851              		.cfi_startproc
 852              		@ args = 0, pretend = 0, frame = 0
 853              		@ frame_needed = 0, uses_anonymous_args = 0
 854              		@ link register save eliminated.
 480:../asf/sam/drivers/hsmci/hsmci.c **** 	return HSMCI->HSMCI_RSPR[0];
 855              		.loc 1 480 0
 856 0000 4FF08043 		mov	r3, #1073741824
 857 0004 186A     		ldr	r0, [r3, #32]
 481:../asf/sam/drivers/hsmci/hsmci.c **** }
 858              		.loc 1 481 0
 859 0006 7047     		bx	lr
 860              		.cfi_endproc
 861              	.LFE207:
ARM GAS  /tmp/cc9w1cGI.s 			page 27


 862              		.size	hsmci_get_response, .-hsmci_get_response
 863              		.section	.text.hsmci_get_response_128,"ax",%progbits
 864              		.align	1
 865              		.p2align 2,,3
 866              		.global	hsmci_get_response_128
 867              		.syntax unified
 868              		.thumb
 869              		.thumb_func
 870              		.fpu fpv5-d16
 871              		.type	hsmci_get_response_128, %function
 872              	hsmci_get_response_128:
 873              	.LFB208:
 482:../asf/sam/drivers/hsmci/hsmci.c **** 
 483:../asf/sam/drivers/hsmci/hsmci.c **** void hsmci_get_response_128(uint8_t* response)
 484:../asf/sam/drivers/hsmci/hsmci.c **** {
 874              		.loc 1 484 0
 875              		.cfi_startproc
 876              		@ args = 0, pretend = 0, frame = 0
 877              		@ frame_needed = 0, uses_anonymous_args = 0
 878              		@ link register save eliminated.
 879              	.LVL92:
 880 0000 30B4     		push	{r4, r5}
 881              		.cfi_def_cfa_offset 8
 882              		.cfi_offset 4, -8
 883              		.cfi_offset 5, -4
 884 0002 031D     		adds	r3, r0, #4
 885              	.LBB88:
 485:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t response_32;
 486:../asf/sam/drivers/hsmci/hsmci.c **** 
 487:../asf/sam/drivers/hsmci/hsmci.c **** 	for (uint8_t i = 0; i < 4; i++) {
 488:../asf/sam/drivers/hsmci/hsmci.c **** 		response_32 = HSMCI->HSMCI_RSPR[0];
 886              		.loc 1 488 0
 887 0004 4FF08045 		mov	r5, #1073741824
 888 0008 1430     		adds	r0, r0, #20
 889              	.LVL93:
 890              	.L87:
 891              		.loc 1 488 0 is_stmt 0 discriminator 3
 892 000a 2A6A     		ldr	r2, [r5, #32]
 893              	.LVL94:
 894 000c 0433     		adds	r3, r3, #4
 895              	.LVL95:
 489:../asf/sam/drivers/hsmci/hsmci.c **** 		*response = (response_32 >> 24) & 0xFF;
 490:../asf/sam/drivers/hsmci/hsmci.c **** 		response++;
 491:../asf/sam/drivers/hsmci/hsmci.c **** 		*response = (response_32 >> 16) & 0xFF;
 492:../asf/sam/drivers/hsmci/hsmci.c **** 		response++;
 493:../asf/sam/drivers/hsmci/hsmci.c **** 		*response = (response_32 >>  8) & 0xFF;
 494:../asf/sam/drivers/hsmci/hsmci.c **** 		response++;
 495:../asf/sam/drivers/hsmci/hsmci.c **** 		*response = (response_32 >>  0) & 0xFF;
 896              		.loc 1 495 0 is_stmt 1 discriminator 3
 897 000e 03F8052C 		strb	r2, [r3, #-5]
 489:../asf/sam/drivers/hsmci/hsmci.c **** 		*response = (response_32 >> 24) & 0xFF;
 898              		.loc 1 489 0 discriminator 3
 899 0012 140E     		lsrs	r4, r2, #24
 491:../asf/sam/drivers/hsmci/hsmci.c **** 		response++;
 900              		.loc 1 491 0 discriminator 3
 901 0014 110C     		lsrs	r1, r2, #16
 493:../asf/sam/drivers/hsmci/hsmci.c **** 		response++;
ARM GAS  /tmp/cc9w1cGI.s 			page 28


 902              		.loc 1 493 0 discriminator 3
 903 0016 120A     		lsrs	r2, r2, #8
 904              	.LVL96:
 489:../asf/sam/drivers/hsmci/hsmci.c **** 		*response = (response_32 >> 24) & 0xFF;
 905              		.loc 1 489 0 discriminator 3
 906 0018 03F8084C 		strb	r4, [r3, #-8]
 907              	.LVL97:
 491:../asf/sam/drivers/hsmci/hsmci.c **** 		response++;
 908              		.loc 1 491 0 discriminator 3
 909 001c 03F8071C 		strb	r1, [r3, #-7]
 910              	.LVL98:
 493:../asf/sam/drivers/hsmci/hsmci.c **** 		response++;
 911              		.loc 1 493 0 discriminator 3
 912 0020 03F8062C 		strb	r2, [r3, #-6]
 913              	.LVL99:
 487:../asf/sam/drivers/hsmci/hsmci.c **** 		response_32 = HSMCI->HSMCI_RSPR[0];
 914              		.loc 1 487 0 discriminator 3
 915 0024 8342     		cmp	r3, r0
 916 0026 F0D1     		bne	.L87
 917              	.LBE88:
 496:../asf/sam/drivers/hsmci/hsmci.c **** 		response++;
 497:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 498:../asf/sam/drivers/hsmci/hsmci.c **** }
 918              		.loc 1 498 0
 919 0028 30BC     		pop	{r4, r5}
 920              		.cfi_restore 5
 921              		.cfi_restore 4
 922              		.cfi_def_cfa_offset 0
 923 002a 7047     		bx	lr
 924              		.cfi_endproc
 925              	.LFE208:
 926              		.size	hsmci_get_response_128, .-hsmci_get_response_128
 927              		.section	.text.hsmci_adtc_start,"ax",%progbits
 928              		.align	1
 929              		.p2align 2,,3
 930              		.global	hsmci_adtc_start
 931              		.syntax unified
 932              		.thumb
 933              		.thumb_func
 934              		.fpu fpv5-d16
 935              		.type	hsmci_adtc_start, %function
 936              	hsmci_adtc_start:
 937              	.LFB209:
 499:../asf/sam/drivers/hsmci/hsmci.c **** 
 500:../asf/sam/drivers/hsmci/hsmci.c **** bool hsmci_adtc_start(sdmmc_cmd_def_t cmd, uint32_t arg, uint16_t block_size, uint16_t nb_block, bo
 501:../asf/sam/drivers/hsmci/hsmci.c **** {
 938              		.loc 1 501 0
 939              		.cfi_startproc
 940              		@ args = 4, pretend = 0, frame = 0
 941              		@ frame_needed = 0, uses_anonymous_args = 0
 942              	.LVL100:
 943 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 944              		.cfi_def_cfa_offset 20
 945              		.cfi_offset 4, -20
 946              		.cfi_offset 5, -16
 947              		.cfi_offset 6, -12
 948              		.cfi_offset 7, -8
ARM GAS  /tmp/cc9w1cGI.s 			page 29


 949              		.cfi_offset 14, -4
 950              		.loc 1 501 0
 951 0002 9DF81450 		ldrb	r5, [sp, #20]	@ zero_extendqisi2
 952 0006 1446     		mov	r4, r2
 502:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t cmdr;
 503:../asf/sam/drivers/hsmci/hsmci.c **** 
 504:../asf/sam/drivers/hsmci/hsmci.c **** #ifdef HSMCI_SR_DMADONE
 505:../asf/sam/drivers/hsmci/hsmci.c **** 	if (access_block) {
 506:../asf/sam/drivers/hsmci/hsmci.c **** 		// Enable DMA for HSMCI
 507:../asf/sam/drivers/hsmci/hsmci.c **** 		HSMCI->HSMCI_DMA = HSMCI_DMA_DMAEN;
 508:../asf/sam/drivers/hsmci/hsmci.c **** 	} else {
 509:../asf/sam/drivers/hsmci/hsmci.c **** 		// Disable DMA for HSMCI
 510:../asf/sam/drivers/hsmci/hsmci.c **** 		HSMCI->HSMCI_DMA = 0;
 511:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 512:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 513:../asf/sam/drivers/hsmci/hsmci.c **** 
 514:../asf/sam/drivers/hsmci/hsmci.c **** #ifdef HSMCI_MR_PDCMODE
 515:../asf/sam/drivers/hsmci/hsmci.c **** 	if (access_block) {
 516:../asf/sam/drivers/hsmci/hsmci.c **** 		// Enable PDC for HSMCI
 517:../asf/sam/drivers/hsmci/hsmci.c **** 		HSMCI->HSMCI_MR |= HSMCI_MR_PDCMODE;
 518:../asf/sam/drivers/hsmci/hsmci.c **** 	} else {
 519:../asf/sam/drivers/hsmci/hsmci.c **** 		// Disable PDC for HSMCI
 520:../asf/sam/drivers/hsmci/hsmci.c **** 		HSMCI->HSMCI_MR &= ~HSMCI_MR_PDCMODE;
 521:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 522:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 523:../asf/sam/drivers/hsmci/hsmci.c **** 
 524:../asf/sam/drivers/hsmci/hsmci.c **** #if (SAMV70 || SAMV71 || SAME70 || SAMS70)
 525:../asf/sam/drivers/hsmci/hsmci.c **** #ifdef HSMCI_DMA_DMAEN
 526:../asf/sam/drivers/hsmci/hsmci.c **** 	if (access_block) {
 527:../asf/sam/drivers/hsmci/hsmci.c **** 		// Enable DMA for HSMCI
 528:../asf/sam/drivers/hsmci/hsmci.c **** 		HSMCI->HSMCI_DMA = HSMCI_DMA_DMAEN;
 953              		.loc 1 528 0
 954 0008 4FF08042 		mov	r2, #1073741824
 955              	.LVL101:
 526:../asf/sam/drivers/hsmci/hsmci.c **** 		// Enable DMA for HSMCI
 956              		.loc 1 526 0
 957 000c 4DB3     		cbz	r5, .L91
 958              		.loc 1 528 0
 959 000e 4FF48075 		mov	r5, #256
 960 0012 1565     		str	r5, [r2, #80]
 961              	.L92:
 529:../asf/sam/drivers/hsmci/hsmci.c **** 	} else {
 530:../asf/sam/drivers/hsmci/hsmci.c **** 		// Disable DMA for HSMCI
 531:../asf/sam/drivers/hsmci/hsmci.c **** 		HSMCI->HSMCI_DMA = 0;
 532:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 533:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 534:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 535:../asf/sam/drivers/hsmci/hsmci.c **** 	// Enabling Read/Write Proof allows to stop the HSMCI Clock during
 536:../asf/sam/drivers/hsmci/hsmci.c **** 	// read/write  access if the internal FIFO is full.
 537:../asf/sam/drivers/hsmci/hsmci.c **** 	// This will guarantee data integrity, not bandwidth.
 538:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_MR |= HSMCI_MR_WRPROOF | HSMCI_MR_RDPROOF;
 962              		.loc 1 538 0
 963 0014 4FF08042 		mov	r2, #1073741824
 539:../asf/sam/drivers/hsmci/hsmci.c **** 	// Force byte transfer if needed
 540:../asf/sam/drivers/hsmci/hsmci.c **** 	if (block_size & 0x3) {
 964              		.loc 1 540 0
 965 0018 A707     		lsls	r7, r4, #30
ARM GAS  /tmp/cc9w1cGI.s 			page 30


 538:../asf/sam/drivers/hsmci/hsmci.c **** 	// Force byte transfer if needed
 966              		.loc 1 538 0
 967 001a 5568     		ldr	r5, [r2, #4]
 968 001c 45F4C055 		orr	r5, r5, #6144
 969 0020 5560     		str	r5, [r2, #4]
 541:../asf/sam/drivers/hsmci/hsmci.c **** 		HSMCI->HSMCI_MR |= HSMCI_MR_FBYTE;
 970              		.loc 1 541 0
 971 0022 5568     		ldr	r5, [r2, #4]
 972 0024 14BF     		ite	ne
 973 0026 45F40055 		orrne	r5, r5, #8192
 542:../asf/sam/drivers/hsmci/hsmci.c **** 	} else {
 543:../asf/sam/drivers/hsmci/hsmci.c **** 		HSMCI->HSMCI_MR &= ~HSMCI_MR_FBYTE;
 974              		.loc 1 543 0
 975 002a 25F40055 		biceq	r5, r5, #8192
 544:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 545:../asf/sam/drivers/hsmci/hsmci.c **** 
 546:../asf/sam/drivers/hsmci/hsmci.c **** 	if (cmd & SDMMC_CMD_WRITE) {
 547:../asf/sam/drivers/hsmci/hsmci.c **** 		cmdr = HSMCI_CMDR_TRCMD_START_DATA | HSMCI_CMDR_TRDIR_WRITE;
 548:../asf/sam/drivers/hsmci/hsmci.c **** 	} else {
 549:../asf/sam/drivers/hsmci/hsmci.c **** 		cmdr = HSMCI_CMDR_TRCMD_START_DATA | HSMCI_CMDR_TRDIR_READ;
 976              		.loc 1 549 0
 977 002e 10F4004F 		tst	r0, #32768
 543:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 978              		.loc 1 543 0
 979 0032 5560     		str	r5, [r2, #4]
 980              		.loc 1 549 0
 981 0034 14BF     		ite	ne
 982 0036 4FF48035 		movne	r5, #65536
 983 003a 4FF4A025 		moveq	r5, #327680
 984              	.LVL102:
 550:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 551:../asf/sam/drivers/hsmci/hsmci.c **** 
 552:../asf/sam/drivers/hsmci/hsmci.c **** 	if (cmd & SDMMC_CMD_SDIO_BYTE) {
 985              		.loc 1 552 0
 986 003e C603     		lsls	r6, r0, #15
 987 0040 23D4     		bmi	.L105
 553:../asf/sam/drivers/hsmci/hsmci.c **** 			cmdr |= HSMCI_CMDR_TRTYP_BYTE;
 554:../asf/sam/drivers/hsmci/hsmci.c **** 			// Value 0 corresponds to a 512-byte transfer
 555:../asf/sam/drivers/hsmci/hsmci.c **** 			HSMCI->HSMCI_BLKR = ((block_size % 512) << HSMCI_BLKR_BCNT_Pos);
 556:../asf/sam/drivers/hsmci/hsmci.c **** 	} else {
 557:../asf/sam/drivers/hsmci/hsmci.c **** 		HSMCI->HSMCI_BLKR = (block_size << HSMCI_BLKR_BLKLEN_Pos) |
 988              		.loc 1 557 0
 989 0042 43EA0442 		orr	r2, r3, r4, lsl #16
 990 0046 4FF08046 		mov	r6, #1073741824
 991 004a B261     		str	r2, [r6, #24]
 558:../asf/sam/drivers/hsmci/hsmci.c **** 				(nb_block << HSMCI_BLKR_BCNT_Pos);
 559:../asf/sam/drivers/hsmci/hsmci.c **** 		if (cmd & SDMMC_CMD_SDIO_BLOCK) {
 992              		.loc 1 559 0
 993 004c 8203     		lsls	r2, r0, #14
 994 004e 0AD4     		bmi	.L106
 560:../asf/sam/drivers/hsmci/hsmci.c **** 			cmdr |= HSMCI_CMDR_TRTYP_BLOCK;
 561:../asf/sam/drivers/hsmci/hsmci.c **** 		} else if (cmd & SDMMC_CMD_STREAM) {
 995              		.loc 1 561 0
 996 0050 4703     		lsls	r7, r0, #13
 997 0052 22D4     		bmi	.L107
 562:../asf/sam/drivers/hsmci/hsmci.c **** 			cmdr |= HSMCI_CMDR_TRTYP_STREAM;
 563:../asf/sam/drivers/hsmci/hsmci.c **** 		} else if (cmd & SDMMC_CMD_SINGLE_BLOCK) {
ARM GAS  /tmp/cc9w1cGI.s 			page 31


 998              		.loc 1 563 0
 999 0054 0603     		lsls	r6, r0, #12
 1000 0056 08D4     		bmi	.L97
 564:../asf/sam/drivers/hsmci/hsmci.c **** 			cmdr |= HSMCI_CMDR_TRTYP_SINGLE;
 565:../asf/sam/drivers/hsmci/hsmci.c **** 		} else if (cmd & SDMMC_CMD_MULTI_BLOCK) {
 1001              		.loc 1 565 0
 1002 0058 C202     		lsls	r2, r0, #11
 566:../asf/sam/drivers/hsmci/hsmci.c **** 			cmdr |= HSMCI_CMDR_TRTYP_MULTIPLE;
 1003              		.loc 1 566 0
 1004 005a 48BF     		it	mi
 1005 005c 45F40025 		orrmi	r5, r5, #524288
 1006              	.LVL103:
 1007 0060 03E0     		b	.L97
 1008              	.LVL104:
 1009              	.L91:
 531:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 1010              		.loc 1 531 0
 1011 0062 1565     		str	r5, [r2, #80]
 1012 0064 D6E7     		b	.L92
 1013              	.LVL105:
 1014              	.L106:
 560:../asf/sam/drivers/hsmci/hsmci.c **** 		} else if (cmd & SDMMC_CMD_STREAM) {
 1015              		.loc 1 560 0
 1016 0066 45F42015 		orr	r5, r5, #2621440
 1017              	.LVL106:
 1018              	.L97:
 567:../asf/sam/drivers/hsmci/hsmci.c **** 		} else {
 568:../asf/sam/drivers/hsmci/hsmci.c **** 			Assert(false); // Incorrect flags
 569:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 570:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 571:../asf/sam/drivers/hsmci/hsmci.c **** 	hsmci_transfert_pos = 0;
 1019              		.loc 1 571 0
 1020 006a 0D4F     		ldr	r7, .L108
 1021 006c 4FF0000E 		mov	lr, #0
 572:../asf/sam/drivers/hsmci/hsmci.c **** 	hsmci_block_size = block_size;
 1022              		.loc 1 572 0
 1023 0070 0C4E     		ldr	r6, .L108+4
 573:../asf/sam/drivers/hsmci/hsmci.c **** 	hsmci_nb_block = nb_block;
 574:../asf/sam/drivers/hsmci/hsmci.c **** 
 575:../asf/sam/drivers/hsmci/hsmci.c **** 	return hsmci_send_cmd_execute(cmdr, cmd, arg);
 1024              		.loc 1 575 0
 1025 0072 0A46     		mov	r2, r1
 1026 0074 0146     		mov	r1, r0
 1027              	.LVL107:
 1028 0076 2846     		mov	r0, r5
 1029              	.LVL108:
 573:../asf/sam/drivers/hsmci/hsmci.c **** 	hsmci_nb_block = nb_block;
 1030              		.loc 1 573 0
 1031 0078 0B4D     		ldr	r5, .L108+8
 1032              	.LVL109:
 571:../asf/sam/drivers/hsmci/hsmci.c **** 	hsmci_block_size = block_size;
 1033              		.loc 1 571 0
 1034 007a C7F800E0 		str	lr, [r7]
 572:../asf/sam/drivers/hsmci/hsmci.c **** 	hsmci_block_size = block_size;
 1035              		.loc 1 572 0
 1036 007e 3480     		strh	r4, [r6]	@ movhi
 573:../asf/sam/drivers/hsmci/hsmci.c **** 	hsmci_nb_block = nb_block;
ARM GAS  /tmp/cc9w1cGI.s 			page 32


 1037              		.loc 1 573 0
 1038 0080 2B80     		strh	r3, [r5]	@ movhi
 576:../asf/sam/drivers/hsmci/hsmci.c **** }
 1039              		.loc 1 576 0
 1040 0082 BDE8F040 		pop	{r4, r5, r6, r7, lr}
 1041              		.cfi_remember_state
 1042              		.cfi_restore 14
 1043              		.cfi_restore 7
 1044              		.cfi_restore 6
 1045              		.cfi_restore 5
 1046              		.cfi_restore 4
 1047              		.cfi_def_cfa_offset 0
 1048              	.LVL110:
 575:../asf/sam/drivers/hsmci/hsmci.c **** }
 1049              		.loc 1 575 0
 1050 0086 FFF7FEBF 		b	hsmci_send_cmd_execute
 1051              	.LVL111:
 1052              	.L105:
 1053              		.cfi_restore_state
 555:../asf/sam/drivers/hsmci/hsmci.c **** 	} else {
 1054              		.loc 1 555 0
 1055 008a C4F30802 		ubfx	r2, r4, #0, #9
 1056 008e 4FF08046 		mov	r6, #1073741824
 553:../asf/sam/drivers/hsmci/hsmci.c **** 			// Value 0 corresponds to a 512-byte transfer
 1057              		.loc 1 553 0
 1058 0092 45F40015 		orr	r5, r5, #2097152
 1059              	.LVL112:
 555:../asf/sam/drivers/hsmci/hsmci.c **** 	} else {
 1060              		.loc 1 555 0
 1061 0096 B261     		str	r2, [r6, #24]
 1062 0098 E7E7     		b	.L97
 1063              	.L107:
 562:../asf/sam/drivers/hsmci/hsmci.c **** 		} else if (cmd & SDMMC_CMD_SINGLE_BLOCK) {
 1064              		.loc 1 562 0
 1065 009a 45F48015 		orr	r5, r5, #1048576
 1066              	.LVL113:
 1067 009e E4E7     		b	.L97
 1068              	.L109:
 1069              		.align	2
 1070              	.L108:
 1071 00a0 00000000 		.word	.LANCHOR1
 1072 00a4 00000000 		.word	.LANCHOR2
 1073 00a8 00000000 		.word	.LANCHOR3
 1074              		.cfi_endproc
 1075              	.LFE209:
 1076              		.size	hsmci_adtc_start, .-hsmci_adtc_start
 1077              		.section	.text.hsmci_adtc_stop,"ax",%progbits
 1078              		.align	1
 1079              		.p2align 2,,3
 1080              		.global	hsmci_adtc_stop
 1081              		.syntax unified
 1082              		.thumb
 1083              		.thumb_func
 1084              		.fpu fpv5-d16
 1085              		.type	hsmci_adtc_stop, %function
 1086              	hsmci_adtc_stop:
 1087              	.LFB210:
ARM GAS  /tmp/cc9w1cGI.s 			page 33


 577:../asf/sam/drivers/hsmci/hsmci.c **** 
 578:../asf/sam/drivers/hsmci/hsmci.c **** bool hsmci_adtc_stop(sdmmc_cmd_def_t cmd, uint32_t arg)
 579:../asf/sam/drivers/hsmci/hsmci.c **** {
 1088              		.loc 1 579 0
 1089              		.cfi_startproc
 1090              		@ args = 0, pretend = 0, frame = 0
 1091              		@ frame_needed = 0, uses_anonymous_args = 0
 1092              		@ link register save eliminated.
 1093              	.LVL114:
 580:../asf/sam/drivers/hsmci/hsmci.c **** 	return hsmci_send_cmd_execute(HSMCI_CMDR_TRCMD_STOP_DATA, cmd, arg);
 1094              		.loc 1 580 0
 1095 0000 0A46     		mov	r2, r1
 1096 0002 0146     		mov	r1, r0
 1097              	.LVL115:
 1098 0004 4FF40030 		mov	r0, #131072
 1099              	.LVL116:
 1100 0008 FFF7FEBF 		b	hsmci_send_cmd_execute
 1101              	.LVL117:
 1102              		.cfi_endproc
 1103              	.LFE210:
 1104              		.size	hsmci_adtc_stop, .-hsmci_adtc_stop
 1105              		.section	.text.hsmci_read_word,"ax",%progbits
 1106              		.align	1
 1107              		.p2align 2,,3
 1108              		.global	hsmci_read_word
 1109              		.syntax unified
 1110              		.thumb
 1111              		.thumb_func
 1112              		.fpu fpv5-d16
 1113              		.type	hsmci_read_word, %function
 1114              	hsmci_read_word:
 1115              	.LFB211:
 581:../asf/sam/drivers/hsmci/hsmci.c **** }
 582:../asf/sam/drivers/hsmci/hsmci.c **** 
 583:../asf/sam/drivers/hsmci/hsmci.c **** bool hsmci_read_word(uint32_t* value)
 584:../asf/sam/drivers/hsmci/hsmci.c **** {
 1116              		.loc 1 584 0
 1117              		.cfi_startproc
 1118              		@ args = 0, pretend = 0, frame = 0
 1119              		@ frame_needed = 0, uses_anonymous_args = 0
 1120              	.LVL118:
 1121 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1122              		.cfi_def_cfa_offset 24
 1123              		.cfi_offset 3, -24
 1124              		.cfi_offset 4, -20
 1125              		.cfi_offset 5, -16
 1126              		.cfi_offset 6, -12
 1127              		.cfi_offset 7, -8
 1128              		.cfi_offset 14, -4
 585:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t sr;
 586:../asf/sam/drivers/hsmci/hsmci.c **** 
 587:../asf/sam/drivers/hsmci/hsmci.c **** 	Assert(((uint32_t)hsmci_block_size * hsmci_nb_block) > hsmci_transfert_pos);
 588:../asf/sam/drivers/hsmci/hsmci.c **** 
 589:../asf/sam/drivers/hsmci/hsmci.c **** 	// Wait data available
 590:../asf/sam/drivers/hsmci/hsmci.c **** 	do {
 591:../asf/sam/drivers/hsmci/hsmci.c **** 		sr = HSMCI->HSMCI_SR;
 1129              		.loc 1 591 0
ARM GAS  /tmp/cc9w1cGI.s 			page 34


 1130 0002 4FF08042 		mov	r2, #1073741824
 592:../asf/sam/drivers/hsmci/hsmci.c **** 		if (sr & (HSMCI_SR_UNRE | HSMCI_SR_OVRE | \
 1131              		.loc 1 592 0
 1132 0006 1E49     		ldr	r1, .L131
 1133 0008 01E0     		b	.L114
 1134              	.LVL119:
 1135              	.L130:
 593:../asf/sam/drivers/hsmci/hsmci.c **** 				HSMCI_SR_DTOE | HSMCI_SR_DCRCE)) {
 594:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmci_debug("%s: DMA sr 0x%08x error\n\r",
 595:../asf/sam/drivers/hsmci/hsmci.c **** 					__func__, sr);
 596:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmci_reset();
 597:../asf/sam/drivers/hsmci/hsmci.c **** 			return false;
 598:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 599:../asf/sam/drivers/hsmci/hsmci.c **** 	} while (!(sr & HSMCI_SR_RXRDY));
 1136              		.loc 1 599 0
 1137 000a 9C07     		lsls	r4, r3, #30
 1138 000c 16D4     		bmi	.L129
 1139              	.LVL120:
 1140              	.L114:
 591:../asf/sam/drivers/hsmci/hsmci.c **** 		if (sr & (HSMCI_SR_UNRE | HSMCI_SR_OVRE | \
 1141              		.loc 1 591 0
 1142 000e 136C     		ldr	r3, [r2, #64]
 1143              	.LVL121:
 592:../asf/sam/drivers/hsmci/hsmci.c **** 		if (sr & (HSMCI_SR_UNRE | HSMCI_SR_OVRE | \
 1144              		.loc 1 592 0
 1145 0010 0B42     		tst	r3, r1
 1146 0012 FAD0     		beq	.L130
 1147              	.LVL122:
 1148              	.L128:
 1149              	.LBB89:
 1150              	.LBB90:
 143:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t dtor = HSMCI->HSMCI_DTOR;
 1151              		.loc 1 143 0
 1152 0014 5068     		ldr	r0, [r2, #4]
 1153              	.LVL123:
 159:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 1154              		.loc 1 159 0
 1155 0016 0023     		movs	r3, #0
 1156              	.LVL124:
 144:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t sdcr = HSMCI->HSMCI_SDCR;
 1157              		.loc 1 144 0
 1158 0018 9768     		ldr	r7, [r2, #8]
 1159              	.LVL125:
 148:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_MR = mr;
 1160              		.loc 1 148 0
 1161 001a 4FF0800E 		mov	lr, #128
 145:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t cstor = HSMCI->HSMCI_CSTOR;
 1162              		.loc 1 145 0
 1163 001e D668     		ldr	r6, [r2, #12]
 1164              	.LVL126:
 163:../asf/sam/drivers/hsmci/hsmci.c **** }
 1165              		.loc 1 163 0
 1166 0020 0521     		movs	r1, #5
 146:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t cfg = HSMCI->HSMCI_CFG;
 1167              		.loc 1 146 0
 1168 0022 D569     		ldr	r5, [r2, #28]
 1169              	.LVL127:
ARM GAS  /tmp/cc9w1cGI.s 			page 35


 147:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_CR = HSMCI_CR_SWRST;
 1170              		.loc 1 147 0
 1171 0024 546D     		ldr	r4, [r2, #84]
 1172              	.LVL128:
 148:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_MR = mr;
 1173              		.loc 1 148 0
 1174 0026 C2F800E0 		str	lr, [r2]
 149:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_DTOR = dtor;
 1175              		.loc 1 149 0
 1176 002a 5060     		str	r0, [r2, #4]
 1177              	.LBE90:
 1178              	.LBE89:
 600:../asf/sam/drivers/hsmci/hsmci.c **** 
 601:../asf/sam/drivers/hsmci/hsmci.c **** 	// Read data
 602:../asf/sam/drivers/hsmci/hsmci.c **** 	*value = HSMCI->HSMCI_RDR;
 603:../asf/sam/drivers/hsmci/hsmci.c **** 	hsmci_transfert_pos += 4;
 604:../asf/sam/drivers/hsmci/hsmci.c **** 	if (((uint32_t)hsmci_block_size * hsmci_nb_block) > hsmci_transfert_pos) {
 605:../asf/sam/drivers/hsmci/hsmci.c **** 		return true;
 606:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 607:../asf/sam/drivers/hsmci/hsmci.c **** 
 608:../asf/sam/drivers/hsmci/hsmci.c **** 	// Wait end of transfer
 609:../asf/sam/drivers/hsmci/hsmci.c **** 	// Note: no need of timeout, because it is include in HSMCI
 610:../asf/sam/drivers/hsmci/hsmci.c **** 	do {
 611:../asf/sam/drivers/hsmci/hsmci.c **** #if 1  // dc42 changes
 612:../asf/sam/drivers/hsmci/hsmci.c **** 		if (hsmciIdleFunc != NULL)
 613:../asf/sam/drivers/hsmci/hsmci.c **** 		{
 614:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmciIdleFunc(HSMCI_SR_UNRE | HSMCI_SR_OVRE | HSMCI_SR_DTOE | HSMCI_SR_DCRCE | HSMCI_SR_XFRDONE,
 615:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 616:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 617:../asf/sam/drivers/hsmci/hsmci.c **** 		sr = HSMCI->HSMCI_SR;
 618:../asf/sam/drivers/hsmci/hsmci.c **** 		if (sr & (HSMCI_SR_UNRE | HSMCI_SR_OVRE | \
 619:../asf/sam/drivers/hsmci/hsmci.c **** 				HSMCI_SR_DTOE | HSMCI_SR_DCRCE)) {
 620:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmci_debug("%s: DMA sr 0x%08x error\n\r",
 621:../asf/sam/drivers/hsmci/hsmci.c **** 					__func__, sr);
 622:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmci_reset();
 623:../asf/sam/drivers/hsmci/hsmci.c **** 			return false;
 1179              		.loc 1 623 0
 1180 002c 1846     		mov	r0, r3
 1181              	.LVL129:
 1182              	.LBB92:
 1183              	.LBB91:
 150:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_SDCR = sdcr;
 1184              		.loc 1 150 0
 1185 002e 9760     		str	r7, [r2, #8]
 1186              	.LVL130:
 151:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_CSTOR = cstor;
 1187              		.loc 1 151 0
 1188 0030 D660     		str	r6, [r2, #12]
 152:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_CFG = cfg;
 1189              		.loc 1 152 0
 1190 0032 D561     		str	r5, [r2, #28]
 153:../asf/sam/drivers/hsmci/hsmci.c **** #ifdef HSMCI_SR_DMADONE
 1191              		.loc 1 153 0
 1192 0034 5465     		str	r4, [r2, #84]
 159:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 1193              		.loc 1 159 0
 1194 0036 1365     		str	r3, [r2, #80]
ARM GAS  /tmp/cc9w1cGI.s 			page 36


 163:../asf/sam/drivers/hsmci/hsmci.c **** }
 1195              		.loc 1 163 0
 1196 0038 1160     		str	r1, [r2]
 1197              	.LVL131:
 1198              	.LBE91:
 1199              	.LBE92:
 1200              		.loc 1 623 0
 1201 003a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1202              	.LVL132:
 1203              	.L129:
 603:../asf/sam/drivers/hsmci/hsmci.c **** 	if (((uint32_t)hsmci_block_size * hsmci_nb_block) > hsmci_transfert_pos) {
 1204              		.loc 1 603 0
 1205 003c 114C     		ldr	r4, .L131+4
 604:../asf/sam/drivers/hsmci/hsmci.c **** 		return true;
 1206              		.loc 1 604 0
 1207 003e 124D     		ldr	r5, .L131+8
 1208 0040 1249     		ldr	r1, .L131+12
 603:../asf/sam/drivers/hsmci/hsmci.c **** 	if (((uint32_t)hsmci_block_size * hsmci_nb_block) > hsmci_transfert_pos) {
 1209              		.loc 1 603 0
 1210 0042 2368     		ldr	r3, [r4]
 1211              	.LVL133:
 604:../asf/sam/drivers/hsmci/hsmci.c **** 		return true;
 1212              		.loc 1 604 0
 1213 0044 2E88     		ldrh	r6, [r5]
 1214 0046 0988     		ldrh	r1, [r1]
 603:../asf/sam/drivers/hsmci/hsmci.c **** 	if (((uint32_t)hsmci_block_size * hsmci_nb_block) > hsmci_transfert_pos) {
 1215              		.loc 1 603 0
 1216 0048 0433     		adds	r3, r3, #4
 602:../asf/sam/drivers/hsmci/hsmci.c **** 	hsmci_transfert_pos += 4;
 1217              		.loc 1 602 0
 1218 004a 156B     		ldr	r5, [r2, #48]
 604:../asf/sam/drivers/hsmci/hsmci.c **** 		return true;
 1219              		.loc 1 604 0
 1220 004c 01FB06F2 		mul	r2, r1, r6
 602:../asf/sam/drivers/hsmci/hsmci.c **** 	hsmci_transfert_pos += 4;
 1221              		.loc 1 602 0
 1222 0050 0560     		str	r5, [r0]
 604:../asf/sam/drivers/hsmci/hsmci.c **** 		return true;
 1223              		.loc 1 604 0
 1224 0052 9342     		cmp	r3, r2
 603:../asf/sam/drivers/hsmci/hsmci.c **** 	if (((uint32_t)hsmci_block_size * hsmci_nb_block) > hsmci_transfert_pos) {
 1225              		.loc 1 603 0
 1226 0054 2360     		str	r3, [r4]
 604:../asf/sam/drivers/hsmci/hsmci.c **** 		return true;
 1227              		.loc 1 604 0
 1228 0056 10D3     		bcc	.L118
 1229 0058 0D4E     		ldr	r6, .L131+16
 614:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 1230              		.loc 1 614 0
 1231 005a 0E4D     		ldr	r5, .L131+20
 618:../asf/sam/drivers/hsmci/hsmci.c **** 				HSMCI_SR_DTOE | HSMCI_SR_DCRCE)) {
 1232              		.loc 1 618 0
 1233 005c 084C     		ldr	r4, .L131
 1234 005e 01E0     		b	.L115
 1235              	.LVL134:
 1236              	.L117:
 624:../asf/sam/drivers/hsmci/hsmci.c **** 		}
ARM GAS  /tmp/cc9w1cGI.s 			page 37


 625:../asf/sam/drivers/hsmci/hsmci.c **** 	} while (!(sr & HSMCI_SR_XFRDONE));
 1237              		.loc 1 625 0
 1238 0060 1B01     		lsls	r3, r3, #4
 1239              	.LVL135:
 1240 0062 0AD4     		bmi	.L118
 1241              	.L115:
 612:../asf/sam/drivers/hsmci/hsmci.c **** 		{
 1242              		.loc 1 612 0
 1243 0064 3368     		ldr	r3, [r6]
 614:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 1244              		.loc 1 614 0
 1245 0066 0021     		movs	r1, #0
 1246 0068 2846     		mov	r0, r5
 612:../asf/sam/drivers/hsmci/hsmci.c **** 		{
 1247              		.loc 1 612 0
 1248 006a 03B1     		cbz	r3, .L116
 614:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 1249              		.loc 1 614 0
 1250 006c 9847     		blx	r3
 1251              	.LVL136:
 1252              	.L116:
 617:../asf/sam/drivers/hsmci/hsmci.c **** 		if (sr & (HSMCI_SR_UNRE | HSMCI_SR_OVRE | \
 1253              		.loc 1 617 0
 1254 006e 4FF08042 		mov	r2, #1073741824
 1255 0072 136C     		ldr	r3, [r2, #64]
 1256              	.LVL137:
 618:../asf/sam/drivers/hsmci/hsmci.c **** 				HSMCI_SR_DTOE | HSMCI_SR_DCRCE)) {
 1257              		.loc 1 618 0
 1258 0074 2342     		tst	r3, r4
 1259 0076 F3D0     		beq	.L117
 1260 0078 CCE7     		b	.L128
 1261              	.LVL138:
 1262              	.L118:
 605:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 1263              		.loc 1 605 0
 1264 007a 0120     		movs	r0, #1
 1265 007c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1266              	.L132:
 1267 007e 00BF     		.align	2
 1268              	.L131:
 1269 0080 000060C0 		.word	-1067450368
 1270 0084 00000000 		.word	.LANCHOR1
 1271 0088 00000000 		.word	.LANCHOR2
 1272 008c 00000000 		.word	.LANCHOR3
 1273 0090 00000000 		.word	.LANCHOR0
 1274 0094 000060C8 		.word	-933232640
 1275              		.cfi_endproc
 1276              	.LFE211:
 1277              		.size	hsmci_read_word, .-hsmci_read_word
 1278              		.section	.text.hsmci_write_word,"ax",%progbits
 1279              		.align	1
 1280              		.p2align 2,,3
 1281              		.global	hsmci_write_word
 1282              		.syntax unified
 1283              		.thumb
 1284              		.thumb_func
 1285              		.fpu fpv5-d16
ARM GAS  /tmp/cc9w1cGI.s 			page 38


 1286              		.type	hsmci_write_word, %function
 1287              	hsmci_write_word:
 1288              	.LFB212:
 626:../asf/sam/drivers/hsmci/hsmci.c **** 	return true;
 627:../asf/sam/drivers/hsmci/hsmci.c **** }
 628:../asf/sam/drivers/hsmci/hsmci.c **** 
 629:../asf/sam/drivers/hsmci/hsmci.c **** bool hsmci_write_word(uint32_t value)
 630:../asf/sam/drivers/hsmci/hsmci.c **** {
 1289              		.loc 1 630 0
 1290              		.cfi_startproc
 1291              		@ args = 0, pretend = 0, frame = 0
 1292              		@ frame_needed = 0, uses_anonymous_args = 0
 1293              	.LVL139:
 1294 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1295              		.cfi_def_cfa_offset 24
 1296              		.cfi_offset 3, -24
 1297              		.cfi_offset 4, -20
 1298              		.cfi_offset 5, -16
 1299              		.cfi_offset 6, -12
 1300              		.cfi_offset 7, -8
 1301              		.cfi_offset 14, -4
 631:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t sr;
 632:../asf/sam/drivers/hsmci/hsmci.c **** 
 633:../asf/sam/drivers/hsmci/hsmci.c **** 	Assert(((uint32_t)hsmci_block_size * hsmci_nb_block) > hsmci_transfert_pos);
 634:../asf/sam/drivers/hsmci/hsmci.c **** 
 635:../asf/sam/drivers/hsmci/hsmci.c **** 	// Wait data available
 636:../asf/sam/drivers/hsmci/hsmci.c **** 	do {
 637:../asf/sam/drivers/hsmci/hsmci.c **** 		sr = HSMCI->HSMCI_SR;
 1302              		.loc 1 637 0
 1303 0002 4FF08042 		mov	r2, #1073741824
 638:../asf/sam/drivers/hsmci/hsmci.c **** 		if (sr & (HSMCI_SR_UNRE | HSMCI_SR_OVRE | \
 1304              		.loc 1 638 0
 1305 0006 1D49     		ldr	r1, .L153
 1306 0008 01E0     		b	.L136
 1307              	.LVL140:
 1308              	.L152:
 639:../asf/sam/drivers/hsmci/hsmci.c **** 				HSMCI_SR_DTOE | HSMCI_SR_DCRCE)) {
 640:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmci_debug("%s: DMA sr 0x%08x error\n\r",
 641:../asf/sam/drivers/hsmci/hsmci.c **** 					__func__, sr);
 642:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmci_reset();
 643:../asf/sam/drivers/hsmci/hsmci.c **** 			return false;
 644:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 645:../asf/sam/drivers/hsmci/hsmci.c **** 	} while (!(sr & HSMCI_SR_TXRDY));
 1309              		.loc 1 645 0
 1310 000a 5C07     		lsls	r4, r3, #29
 1311 000c 16D4     		bmi	.L151
 1312              	.LVL141:
 1313              	.L136:
 637:../asf/sam/drivers/hsmci/hsmci.c **** 		if (sr & (HSMCI_SR_UNRE | HSMCI_SR_OVRE | \
 1314              		.loc 1 637 0
 1315 000e 136C     		ldr	r3, [r2, #64]
 1316              	.LVL142:
 638:../asf/sam/drivers/hsmci/hsmci.c **** 		if (sr & (HSMCI_SR_UNRE | HSMCI_SR_OVRE | \
 1317              		.loc 1 638 0
 1318 0010 0B42     		tst	r3, r1
 1319 0012 FAD0     		beq	.L152
 1320              	.LVL143:
ARM GAS  /tmp/cc9w1cGI.s 			page 39


 1321              	.L150:
 1322              	.LBB93:
 1323              	.LBB94:
 143:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t dtor = HSMCI->HSMCI_DTOR;
 1324              		.loc 1 143 0
 1325 0014 5068     		ldr	r0, [r2, #4]
 1326              	.LVL144:
 159:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 1327              		.loc 1 159 0
 1328 0016 0023     		movs	r3, #0
 1329              	.LVL145:
 144:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t sdcr = HSMCI->HSMCI_SDCR;
 1330              		.loc 1 144 0
 1331 0018 9768     		ldr	r7, [r2, #8]
 1332              	.LVL146:
 148:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_MR = mr;
 1333              		.loc 1 148 0
 1334 001a 4FF0800E 		mov	lr, #128
 145:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t cstor = HSMCI->HSMCI_CSTOR;
 1335              		.loc 1 145 0
 1336 001e D668     		ldr	r6, [r2, #12]
 1337              	.LVL147:
 163:../asf/sam/drivers/hsmci/hsmci.c **** }
 1338              		.loc 1 163 0
 1339 0020 0521     		movs	r1, #5
 146:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t cfg = HSMCI->HSMCI_CFG;
 1340              		.loc 1 146 0
 1341 0022 D569     		ldr	r5, [r2, #28]
 1342              	.LVL148:
 147:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_CR = HSMCI_CR_SWRST;
 1343              		.loc 1 147 0
 1344 0024 546D     		ldr	r4, [r2, #84]
 1345              	.LVL149:
 148:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_MR = mr;
 1346              		.loc 1 148 0
 1347 0026 C2F800E0 		str	lr, [r2]
 149:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_DTOR = dtor;
 1348              		.loc 1 149 0
 1349 002a 5060     		str	r0, [r2, #4]
 1350              	.LBE94:
 1351              	.LBE93:
 646:../asf/sam/drivers/hsmci/hsmci.c **** 
 647:../asf/sam/drivers/hsmci/hsmci.c **** 	// Write data
 648:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_TDR = value;
 649:../asf/sam/drivers/hsmci/hsmci.c **** 	hsmci_transfert_pos += 4;
 650:../asf/sam/drivers/hsmci/hsmci.c **** 	if (((uint32_t)hsmci_block_size * hsmci_nb_block) > hsmci_transfert_pos) {
 651:../asf/sam/drivers/hsmci/hsmci.c **** 		return true;
 652:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 653:../asf/sam/drivers/hsmci/hsmci.c **** 
 654:../asf/sam/drivers/hsmci/hsmci.c **** 	// Wait end of transfer
 655:../asf/sam/drivers/hsmci/hsmci.c **** 	// Note: no need of timeout, because it is include in HSMCI, see DTOE bit.
 656:../asf/sam/drivers/hsmci/hsmci.c **** 	do {
 657:../asf/sam/drivers/hsmci/hsmci.c **** #if 1  // dc42 changes
 658:../asf/sam/drivers/hsmci/hsmci.c **** 		if (hsmciIdleFunc != NULL)
 659:../asf/sam/drivers/hsmci/hsmci.c **** 		{
 660:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmciIdleFunc(HSMCI_SR_UNRE | HSMCI_SR_OVRE | HSMCI_SR_DTOE | HSMCI_SR_DCRCE | HSMCI_SR_NOTBUSY,
 661:../asf/sam/drivers/hsmci/hsmci.c **** 		}
ARM GAS  /tmp/cc9w1cGI.s 			page 40


 662:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 663:../asf/sam/drivers/hsmci/hsmci.c **** 		sr = HSMCI->HSMCI_SR;
 664:../asf/sam/drivers/hsmci/hsmci.c **** 		if (sr & (HSMCI_SR_UNRE | HSMCI_SR_OVRE | \
 665:../asf/sam/drivers/hsmci/hsmci.c **** 				HSMCI_SR_DTOE | HSMCI_SR_DCRCE)) {
 666:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmci_debug("%s: DMA sr 0x%08x error\n\r",
 667:../asf/sam/drivers/hsmci/hsmci.c **** 					__func__, sr);
 668:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmci_reset();
 669:../asf/sam/drivers/hsmci/hsmci.c **** 			return false;
 1352              		.loc 1 669 0
 1353 002c 1846     		mov	r0, r3
 1354              	.LVL150:
 1355              	.LBB96:
 1356              	.LBB95:
 150:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_SDCR = sdcr;
 1357              		.loc 1 150 0
 1358 002e 9760     		str	r7, [r2, #8]
 1359              	.LVL151:
 151:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_CSTOR = cstor;
 1360              		.loc 1 151 0
 1361 0030 D660     		str	r6, [r2, #12]
 152:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_CFG = cfg;
 1362              		.loc 1 152 0
 1363 0032 D561     		str	r5, [r2, #28]
 153:../asf/sam/drivers/hsmci/hsmci.c **** #ifdef HSMCI_SR_DMADONE
 1364              		.loc 1 153 0
 1365 0034 5465     		str	r4, [r2, #84]
 159:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 1366              		.loc 1 159 0
 1367 0036 1365     		str	r3, [r2, #80]
 163:../asf/sam/drivers/hsmci/hsmci.c **** }
 1368              		.loc 1 163 0
 1369 0038 1160     		str	r1, [r2]
 1370              	.LVL152:
 1371              	.LBE95:
 1372              	.LBE96:
 1373              		.loc 1 669 0
 1374 003a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1375              	.LVL153:
 1376              	.L151:
 649:../asf/sam/drivers/hsmci/hsmci.c **** 	if (((uint32_t)hsmci_block_size * hsmci_nb_block) > hsmci_transfert_pos) {
 1377              		.loc 1 649 0
 1378 003c 1049     		ldr	r1, .L153+4
 650:../asf/sam/drivers/hsmci/hsmci.c **** 		return true;
 1379              		.loc 1 650 0
 1380 003e 114D     		ldr	r5, .L153+8
 1381 0040 114C     		ldr	r4, .L153+12
 648:../asf/sam/drivers/hsmci/hsmci.c **** 	hsmci_transfert_pos += 4;
 1382              		.loc 1 648 0
 1383 0042 5063     		str	r0, [r2, #52]
 650:../asf/sam/drivers/hsmci/hsmci.c **** 		return true;
 1384              		.loc 1 650 0
 1385 0044 2888     		ldrh	r0, [r5]
 1386              	.LVL154:
 649:../asf/sam/drivers/hsmci/hsmci.c **** 	if (((uint32_t)hsmci_block_size * hsmci_nb_block) > hsmci_transfert_pos) {
 1387              		.loc 1 649 0
 1388 0046 0B68     		ldr	r3, [r1]
 1389              	.LVL155:
ARM GAS  /tmp/cc9w1cGI.s 			page 41


 650:../asf/sam/drivers/hsmci/hsmci.c **** 		return true;
 1390              		.loc 1 650 0
 1391 0048 2288     		ldrh	r2, [r4]
 1392              	.LVL156:
 649:../asf/sam/drivers/hsmci/hsmci.c **** 	if (((uint32_t)hsmci_block_size * hsmci_nb_block) > hsmci_transfert_pos) {
 1393              		.loc 1 649 0
 1394 004a 0433     		adds	r3, r3, #4
 650:../asf/sam/drivers/hsmci/hsmci.c **** 		return true;
 1395              		.loc 1 650 0
 1396 004c 02FB00F2 		mul	r2, r2, r0
 649:../asf/sam/drivers/hsmci/hsmci.c **** 	if (((uint32_t)hsmci_block_size * hsmci_nb_block) > hsmci_transfert_pos) {
 1397              		.loc 1 649 0
 1398 0050 0B60     		str	r3, [r1]
 1399              	.LVL157:
 650:../asf/sam/drivers/hsmci/hsmci.c **** 		return true;
 1400              		.loc 1 650 0
 1401 0052 9342     		cmp	r3, r2
 1402 0054 10D3     		bcc	.L140
 1403 0056 0D4E     		ldr	r6, .L153+16
 660:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 1404              		.loc 1 660 0
 1405 0058 0D4D     		ldr	r5, .L153+20
 664:../asf/sam/drivers/hsmci/hsmci.c **** 				HSMCI_SR_DTOE | HSMCI_SR_DCRCE)) {
 1406              		.loc 1 664 0
 1407 005a 084C     		ldr	r4, .L153
 1408 005c 01E0     		b	.L137
 1409              	.LVL158:
 1410              	.L139:
 670:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 671:../asf/sam/drivers/hsmci/hsmci.c **** 	} while (!(sr & HSMCI_SR_NOTBUSY));
 1411              		.loc 1 671 0
 1412 005e 9B06     		lsls	r3, r3, #26
 1413              	.LVL159:
 1414 0060 0AD4     		bmi	.L140
 1415              	.L137:
 658:../asf/sam/drivers/hsmci/hsmci.c **** 		{
 1416              		.loc 1 658 0
 1417 0062 3368     		ldr	r3, [r6]
 660:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 1418              		.loc 1 660 0
 1419 0064 0021     		movs	r1, #0
 1420 0066 2846     		mov	r0, r5
 658:../asf/sam/drivers/hsmci/hsmci.c **** 		{
 1421              		.loc 1 658 0
 1422 0068 03B1     		cbz	r3, .L138
 660:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 1423              		.loc 1 660 0
 1424 006a 9847     		blx	r3
 1425              	.LVL160:
 1426              	.L138:
 663:../asf/sam/drivers/hsmci/hsmci.c **** 		if (sr & (HSMCI_SR_UNRE | HSMCI_SR_OVRE | \
 1427              		.loc 1 663 0
 1428 006c 4FF08042 		mov	r2, #1073741824
 1429 0070 136C     		ldr	r3, [r2, #64]
 1430              	.LVL161:
 664:../asf/sam/drivers/hsmci/hsmci.c **** 				HSMCI_SR_DTOE | HSMCI_SR_DCRCE)) {
 1431              		.loc 1 664 0
ARM GAS  /tmp/cc9w1cGI.s 			page 42


 1432 0072 2342     		tst	r3, r4
 1433 0074 F3D0     		beq	.L139
 1434 0076 CDE7     		b	.L150
 1435              	.LVL162:
 1436              	.L140:
 651:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 1437              		.loc 1 651 0
 1438 0078 0120     		movs	r0, #1
 1439 007a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1440              	.L154:
 1441              		.align	2
 1442              	.L153:
 1443 007c 000060C0 		.word	-1067450368
 1444 0080 00000000 		.word	.LANCHOR1
 1445 0084 00000000 		.word	.LANCHOR2
 1446 0088 00000000 		.word	.LANCHOR3
 1447 008c 00000000 		.word	.LANCHOR0
 1448 0090 200060C0 		.word	-1067450336
 1449              		.cfi_endproc
 1450              	.LFE212:
 1451              		.size	hsmci_write_word, .-hsmci_write_word
 1452              		.section	.text.hsmci_start_read_blocks,"ax",%progbits
 1453              		.align	1
 1454              		.p2align 2,,3
 1455              		.global	hsmci_start_read_blocks
 1456              		.syntax unified
 1457              		.thumb
 1458              		.thumb_func
 1459              		.fpu fpv5-d16
 1460              		.type	hsmci_start_read_blocks, %function
 1461              	hsmci_start_read_blocks:
 1462              	.LFB213:
 672:../asf/sam/drivers/hsmci/hsmci.c **** 	Assert(HSMCI->HSMCI_SR & HSMCI_SR_FIFOEMPTY);
 673:../asf/sam/drivers/hsmci/hsmci.c **** 	return true;
 674:../asf/sam/drivers/hsmci/hsmci.c **** }
 675:../asf/sam/drivers/hsmci/hsmci.c **** 
 676:../asf/sam/drivers/hsmci/hsmci.c **** #ifdef HSMCI_SR_DMADONE
 677:../asf/sam/drivers/hsmci/hsmci.c **** bool hsmci_start_read_blocks(void *dest, uint16_t nb_block)
 678:../asf/sam/drivers/hsmci/hsmci.c **** {
 679:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t cfg, nb_data;
 680:../asf/sam/drivers/hsmci/hsmci.c **** 	dma_transfer_descriptor_t desc;
 681:../asf/sam/drivers/hsmci/hsmci.c **** 	bool transfert_byte;
 682:../asf/sam/drivers/hsmci/hsmci.c **** 
 683:../asf/sam/drivers/hsmci/hsmci.c **** 	nb_data = nb_block * hsmci_block_size;
 684:../asf/sam/drivers/hsmci/hsmci.c **** 	transfert_byte = ((HSMCI->HSMCI_MR & HSMCI_MR_FBYTE) || (((uint32_t)dest & 0x3) > 0)) ? 1 : 0;
 685:../asf/sam/drivers/hsmci/hsmci.c **** 
 686:../asf/sam/drivers/hsmci/hsmci.c **** 	Assert(nb_data <= (((uint32_t)hsmci_block_size * hsmci_nb_block) - hsmci_transfert_pos));
 687:../asf/sam/drivers/hsmci/hsmci.c **** 	Assert(nb_data <= (transfert_byte ?
 688:../asf/sam/drivers/hsmci/hsmci.c **** 			DMAC_CTRLA_BTSIZE_Msk >> DMAC_CTRLA_BTSIZE_Pos :
 689:../asf/sam/drivers/hsmci/hsmci.c **** 			((DMAC_CTRLA_BTSIZE_Msk >> DMAC_CTRLA_BTSIZE_Pos) * 4)));
 690:../asf/sam/drivers/hsmci/hsmci.c **** 
 691:../asf/sam/drivers/hsmci/hsmci.c **** 	/* Set channel configuration register
 692:../asf/sam/drivers/hsmci/hsmci.c **** 	 * - Enable stop on done
 693:../asf/sam/drivers/hsmci/hsmci.c **** 	 * - Hardware Selection for the Source
 694:../asf/sam/drivers/hsmci/hsmci.c **** 	 * - Source with Peripheral identifier
 695:../asf/sam/drivers/hsmci/hsmci.c **** 	 * - Set AHB Protection
 696:../asf/sam/drivers/hsmci/hsmci.c **** 	 * - FIFO Configuration
ARM GAS  /tmp/cc9w1cGI.s 			page 43


 697:../asf/sam/drivers/hsmci/hsmci.c **** 	 */
 698:../asf/sam/drivers/hsmci/hsmci.c **** 	dmac_enable(DMAC);
 699:../asf/sam/drivers/hsmci/hsmci.c **** 	dmac_channel_disable(DMAC, CONF_HSMCI_DMA_CHANNEL);
 700:../asf/sam/drivers/hsmci/hsmci.c **** 	cfg = DMAC_CFG_SOD_ENABLE | DMAC_CFG_SRC_H2SEL |
 701:../asf/sam/drivers/hsmci/hsmci.c **** 			DMAC_CFG_SRC_PER(DMA_HW_ID_HSMCI) |
 702:../asf/sam/drivers/hsmci/hsmci.c **** 			DMAC_CFG_AHB_PROT(1) | DMAC_CFG_FIFOCFG_ALAP_CFG;
 703:../asf/sam/drivers/hsmci/hsmci.c **** 	dmac_channel_set_configuration(DMAC, CONF_HSMCI_DMA_CHANNEL, cfg);
 704:../asf/sam/drivers/hsmci/hsmci.c **** 
 705:../asf/sam/drivers/hsmci/hsmci.c **** 	// Prepare DMA transfer
 706:../asf/sam/drivers/hsmci/hsmci.c **** 	desc.ul_source_addr = (uint32_t)&(HSMCI->HSMCI_RDR);
 707:../asf/sam/drivers/hsmci/hsmci.c **** 	desc.ul_destination_addr = (uint32_t)dest;
 708:../asf/sam/drivers/hsmci/hsmci.c **** 	if (transfert_byte) {
 709:../asf/sam/drivers/hsmci/hsmci.c **** 		desc.ul_ctrlA = DMAC_CTRLA_BTSIZE(nb_data)
 710:../asf/sam/drivers/hsmci/hsmci.c **** 				| DMAC_CTRLA_SRC_WIDTH_BYTE
 711:../asf/sam/drivers/hsmci/hsmci.c **** 				| DMAC_CTRLA_DST_WIDTH_BYTE;
 712:../asf/sam/drivers/hsmci/hsmci.c **** 	} else {
 713:../asf/sam/drivers/hsmci/hsmci.c **** 		desc.ul_ctrlA = DMAC_CTRLA_BTSIZE(nb_data / 4)
 714:../asf/sam/drivers/hsmci/hsmci.c **** 				| DMAC_CTRLA_SRC_WIDTH_WORD
 715:../asf/sam/drivers/hsmci/hsmci.c **** 				| DMAC_CTRLA_DST_WIDTH_WORD;
 716:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 717:../asf/sam/drivers/hsmci/hsmci.c **** 	desc.ul_ctrlB = DMAC_CTRLB_SRC_DSCR_FETCH_DISABLE
 718:../asf/sam/drivers/hsmci/hsmci.c **** 			| DMAC_CTRLB_DST_DSCR_FETCH_DISABLE
 719:../asf/sam/drivers/hsmci/hsmci.c **** 			| DMAC_CTRLB_FC_PER2MEM_DMA_FC
 720:../asf/sam/drivers/hsmci/hsmci.c **** 			| DMAC_CTRLB_SRC_INCR_FIXED
 721:../asf/sam/drivers/hsmci/hsmci.c **** 			| DMAC_CTRLB_DST_INCR_INCREMENTING
 722:../asf/sam/drivers/hsmci/hsmci.c **** 			| DMAC_CTRLB_IEN;
 723:../asf/sam/drivers/hsmci/hsmci.c **** 	desc.ul_descriptor_addr = (uint32_t)NULL;
 724:../asf/sam/drivers/hsmci/hsmci.c **** 	dmac_channel_single_buf_transfer_init(DMAC, CONF_HSMCI_DMA_CHANNEL,
 725:../asf/sam/drivers/hsmci/hsmci.c **** 			&desc);
 726:../asf/sam/drivers/hsmci/hsmci.c **** 
 727:../asf/sam/drivers/hsmci/hsmci.c **** 	// Start DMA transfer
 728:../asf/sam/drivers/hsmci/hsmci.c **** 	dmac_channel_enable(DMAC, CONF_HSMCI_DMA_CHANNEL);
 729:../asf/sam/drivers/hsmci/hsmci.c **** 	hsmci_transfert_pos += nb_data;
 730:../asf/sam/drivers/hsmci/hsmci.c **** 	return true;
 731:../asf/sam/drivers/hsmci/hsmci.c **** }
 732:../asf/sam/drivers/hsmci/hsmci.c **** 
 733:../asf/sam/drivers/hsmci/hsmci.c **** bool hsmci_wait_end_of_read_blocks(void)
 734:../asf/sam/drivers/hsmci/hsmci.c **** {
 735:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t sr;
 736:../asf/sam/drivers/hsmci/hsmci.c **** 	// Wait end of transfer
 737:../asf/sam/drivers/hsmci/hsmci.c **** 	// Note: no need of timeout, because it is include in HSMCI
 738:../asf/sam/drivers/hsmci/hsmci.c **** 	do {
 739:../asf/sam/drivers/hsmci/hsmci.c **** #if 1  // dc42 changes
 740:../asf/sam/drivers/hsmci/hsmci.c **** 		if (hsmciIdleFunc != NULL)
 741:../asf/sam/drivers/hsmci/hsmci.c **** 		{
 742:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmciIdleFunc(HSMCI_SR_UNRE | HSMCI_SR_OVRE | HSMCI_SR_DTOE | HSMCI_SR_DCRCE | HSMCI_SR_DMADONE,
 743:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 744:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 745:../asf/sam/drivers/hsmci/hsmci.c **** 		sr = HSMCI->HSMCI_SR;
 746:../asf/sam/drivers/hsmci/hsmci.c **** 		if (sr & (HSMCI_SR_UNRE | HSMCI_SR_OVRE | \
 747:../asf/sam/drivers/hsmci/hsmci.c **** 				HSMCI_SR_DTOE | HSMCI_SR_DCRCE)) {
 748:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmci_debug("%s: DMA sr 0x%08x error\n\r",
 749:../asf/sam/drivers/hsmci/hsmci.c **** 					__func__, sr);
 750:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmci_reset();
 751:../asf/sam/drivers/hsmci/hsmci.c **** 			// Disable DMA
 752:../asf/sam/drivers/hsmci/hsmci.c **** 			dmac_channel_disable(DMAC, CONF_HSMCI_DMA_CHANNEL);
 753:../asf/sam/drivers/hsmci/hsmci.c **** 			return false;
ARM GAS  /tmp/cc9w1cGI.s 			page 44


 754:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 755:../asf/sam/drivers/hsmci/hsmci.c **** 		if (((uint32_t)hsmci_block_size * hsmci_nb_block) > hsmci_transfert_pos) {
 756:../asf/sam/drivers/hsmci/hsmci.c **** 			// It is not the end of all transfers
 757:../asf/sam/drivers/hsmci/hsmci.c **** 			// then just wait end of DMA
 758:../asf/sam/drivers/hsmci/hsmci.c **** 			if (sr & HSMCI_SR_DMADONE) {
 759:../asf/sam/drivers/hsmci/hsmci.c **** 				return true;
 760:../asf/sam/drivers/hsmci/hsmci.c **** 			}
 761:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 762:../asf/sam/drivers/hsmci/hsmci.c **** 	} while (!(sr & HSMCI_SR_XFRDONE));
 763:../asf/sam/drivers/hsmci/hsmci.c **** 	return true;
 764:../asf/sam/drivers/hsmci/hsmci.c **** }
 765:../asf/sam/drivers/hsmci/hsmci.c **** 
 766:../asf/sam/drivers/hsmci/hsmci.c **** bool hsmci_start_write_blocks(const void *src, uint16_t nb_block)
 767:../asf/sam/drivers/hsmci/hsmci.c **** {
 768:../asf/sam/drivers/hsmci/hsmci.c **** 	bool transfert_byte;
 769:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t cfg, nb_data;
 770:../asf/sam/drivers/hsmci/hsmci.c **** 	dma_transfer_descriptor_t desc;
 771:../asf/sam/drivers/hsmci/hsmci.c **** 
 772:../asf/sam/drivers/hsmci/hsmci.c **** 	nb_data = nb_block * hsmci_block_size;
 773:../asf/sam/drivers/hsmci/hsmci.c **** 	transfert_byte = ((HSMCI->HSMCI_MR & HSMCI_MR_FBYTE) || (((uint32_t)src & 0x3) > 0)) ? 1 : 0;
 774:../asf/sam/drivers/hsmci/hsmci.c **** 
 775:../asf/sam/drivers/hsmci/hsmci.c **** 	Assert(nb_data <= (((uint32_t)hsmci_block_size * hsmci_nb_block) - hsmci_transfert_pos));
 776:../asf/sam/drivers/hsmci/hsmci.c **** 	Assert(nb_data <= (transfert_byte ?
 777:../asf/sam/drivers/hsmci/hsmci.c **** 			DMAC_CTRLA_BTSIZE_Msk >> DMAC_CTRLA_BTSIZE_Pos :
 778:../asf/sam/drivers/hsmci/hsmci.c **** 			((DMAC_CTRLA_BTSIZE_Msk >> DMAC_CTRLA_BTSIZE_Pos) * 4)));
 779:../asf/sam/drivers/hsmci/hsmci.c **** 
 780:../asf/sam/drivers/hsmci/hsmci.c **** 	/* Set channel configuration register:
 781:../asf/sam/drivers/hsmci/hsmci.c **** 	 * - Enable stop on done
 782:../asf/sam/drivers/hsmci/hsmci.c **** 	 * - Hardware Selection for the Destination
 783:../asf/sam/drivers/hsmci/hsmci.c **** 	 * - Destination with Peripheral identifier
 784:../asf/sam/drivers/hsmci/hsmci.c **** 	 * - Set AHB Protection
 785:../asf/sam/drivers/hsmci/hsmci.c **** 	 * - FIFO Configuration
 786:../asf/sam/drivers/hsmci/hsmci.c **** 	 */
 787:../asf/sam/drivers/hsmci/hsmci.c **** 	dmac_enable(DMAC);
 788:../asf/sam/drivers/hsmci/hsmci.c **** 	Assert(!dmac_channel_is_enable(DMAC, CONF_HSMCI_DMA_CHANNEL));
 789:../asf/sam/drivers/hsmci/hsmci.c **** 	cfg = DMAC_CFG_SOD_ENABLE | DMAC_CFG_DST_H2SEL |
 790:../asf/sam/drivers/hsmci/hsmci.c **** 			DMAC_CFG_DST_PER(DMA_HW_ID_HSMCI) |
 791:../asf/sam/drivers/hsmci/hsmci.c **** 			DMAC_CFG_AHB_PROT(1) | DMAC_CFG_FIFOCFG_ALAP_CFG;
 792:../asf/sam/drivers/hsmci/hsmci.c **** 	dmac_channel_set_configuration(DMAC, CONF_HSMCI_DMA_CHANNEL, cfg);
 793:../asf/sam/drivers/hsmci/hsmci.c **** 
 794:../asf/sam/drivers/hsmci/hsmci.c **** 	// Prepare DMA transfer
 795:../asf/sam/drivers/hsmci/hsmci.c **** 	desc.ul_source_addr = (uint32_t)src;
 796:../asf/sam/drivers/hsmci/hsmci.c **** 	desc.ul_destination_addr = (uint32_t)&(HSMCI->HSMCI_TDR);
 797:../asf/sam/drivers/hsmci/hsmci.c **** 	if (transfert_byte) {
 798:../asf/sam/drivers/hsmci/hsmci.c **** 		desc.ul_ctrlA = DMAC_CTRLA_BTSIZE(nb_data)
 799:../asf/sam/drivers/hsmci/hsmci.c **** 				| DMAC_CTRLA_SRC_WIDTH_BYTE
 800:../asf/sam/drivers/hsmci/hsmci.c **** 				| DMAC_CTRLA_DST_WIDTH_BYTE;
 801:../asf/sam/drivers/hsmci/hsmci.c **** 	} else {
 802:../asf/sam/drivers/hsmci/hsmci.c **** 		desc.ul_ctrlA = DMAC_CTRLA_BTSIZE(nb_data / 4)
 803:../asf/sam/drivers/hsmci/hsmci.c **** 				| DMAC_CTRLA_SRC_WIDTH_WORD
 804:../asf/sam/drivers/hsmci/hsmci.c **** 				| DMAC_CTRLA_DST_WIDTH_WORD;
 805:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 806:../asf/sam/drivers/hsmci/hsmci.c **** 	desc.ul_ctrlB = DMAC_CTRLB_SRC_DSCR_FETCH_DISABLE
 807:../asf/sam/drivers/hsmci/hsmci.c **** 			| DMAC_CTRLB_DST_DSCR_FETCH_DISABLE
 808:../asf/sam/drivers/hsmci/hsmci.c **** 			| DMAC_CTRLB_FC_MEM2PER_DMA_FC
 809:../asf/sam/drivers/hsmci/hsmci.c **** 			| DMAC_CTRLB_SRC_INCR_INCREMENTING
 810:../asf/sam/drivers/hsmci/hsmci.c **** 			| DMAC_CTRLB_DST_INCR_FIXED
ARM GAS  /tmp/cc9w1cGI.s 			page 45


 811:../asf/sam/drivers/hsmci/hsmci.c **** 			| DMAC_CTRLB_IEN;
 812:../asf/sam/drivers/hsmci/hsmci.c **** 	desc.ul_descriptor_addr = (uint32_t)NULL;
 813:../asf/sam/drivers/hsmci/hsmci.c **** 	dmac_channel_single_buf_transfer_init(DMAC, CONF_HSMCI_DMA_CHANNEL,
 814:../asf/sam/drivers/hsmci/hsmci.c **** 			&desc);
 815:../asf/sam/drivers/hsmci/hsmci.c **** 
 816:../asf/sam/drivers/hsmci/hsmci.c **** 	// Start DMA transfer
 817:../asf/sam/drivers/hsmci/hsmci.c **** 	dmac_channel_enable(DMAC, CONF_HSMCI_DMA_CHANNEL);
 818:../asf/sam/drivers/hsmci/hsmci.c **** 	hsmci_transfert_pos += nb_data;
 819:../asf/sam/drivers/hsmci/hsmci.c **** 	return true;
 820:../asf/sam/drivers/hsmci/hsmci.c **** }
 821:../asf/sam/drivers/hsmci/hsmci.c **** 
 822:../asf/sam/drivers/hsmci/hsmci.c **** bool hsmci_wait_end_of_write_blocks(void)
 823:../asf/sam/drivers/hsmci/hsmci.c **** {
 824:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t sr;
 825:../asf/sam/drivers/hsmci/hsmci.c **** 	// Wait end of transfer
 826:../asf/sam/drivers/hsmci/hsmci.c **** 	// Note: no need of timeout, because it is include in HSMCI, see DTOE bit.
 827:../asf/sam/drivers/hsmci/hsmci.c **** 	do {
 828:../asf/sam/drivers/hsmci/hsmci.c **** #if 1  // dc42 changes
 829:../asf/sam/drivers/hsmci/hsmci.c **** 		if (hsmciIdleFunc != NULL)
 830:../asf/sam/drivers/hsmci/hsmci.c **** 		{
 831:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmciIdleFunc(HSMCI_SR_UNRE | HSMCI_SR_OVRE | HSMCI_SR_DTOE | HSMCI_SR_DCRCE | HSMCI_SR_DMADONE 
 832:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 833:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 834:../asf/sam/drivers/hsmci/hsmci.c **** 		sr = HSMCI->HSMCI_SR;
 835:../asf/sam/drivers/hsmci/hsmci.c **** 		if (sr & (HSMCI_SR_UNRE | HSMCI_SR_OVRE | \
 836:../asf/sam/drivers/hsmci/hsmci.c **** 				HSMCI_SR_DTOE | HSMCI_SR_DCRCE)) {
 837:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmci_debug("%s: DMA sr 0x%08x error\n\r",
 838:../asf/sam/drivers/hsmci/hsmci.c **** 					__func__, sr);
 839:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmci_reset();
 840:../asf/sam/drivers/hsmci/hsmci.c **** 			// Disable DMA
 841:../asf/sam/drivers/hsmci/hsmci.c **** 			dmac_channel_disable(DMAC, CONF_HSMCI_DMA_CHANNEL);
 842:../asf/sam/drivers/hsmci/hsmci.c **** 			return false;
 843:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 844:../asf/sam/drivers/hsmci/hsmci.c **** 		if (((uint32_t)hsmci_block_size * hsmci_nb_block) > hsmci_transfert_pos) {
 845:../asf/sam/drivers/hsmci/hsmci.c **** 			// It is not the end of all transfers
 846:../asf/sam/drivers/hsmci/hsmci.c **** 			// then just wait end of DMA
 847:../asf/sam/drivers/hsmci/hsmci.c **** 			if (sr & HSMCI_SR_DMADONE) {
 848:../asf/sam/drivers/hsmci/hsmci.c **** 				return true;
 849:../asf/sam/drivers/hsmci/hsmci.c **** 			}
 850:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 851:../asf/sam/drivers/hsmci/hsmci.c **** 	} while (!(sr & HSMCI_SR_NOTBUSY));
 852:../asf/sam/drivers/hsmci/hsmci.c **** 	Assert(HSMCI->HSMCI_SR & HSMCI_SR_FIFOEMPTY);
 853:../asf/sam/drivers/hsmci/hsmci.c **** 	Assert(!dmac_channel_is_enable(DMAC, CONF_HSMCI_DMA_CHANNEL));
 854:../asf/sam/drivers/hsmci/hsmci.c **** 	return true;
 855:../asf/sam/drivers/hsmci/hsmci.c **** 
 856:../asf/sam/drivers/hsmci/hsmci.c **** }
 857:../asf/sam/drivers/hsmci/hsmci.c **** #endif // HSMCI_SR_DMADONE
 858:../asf/sam/drivers/hsmci/hsmci.c **** 
 859:../asf/sam/drivers/hsmci/hsmci.c **** #ifdef HSMCI_MR_PDCMODE
 860:../asf/sam/drivers/hsmci/hsmci.c **** bool hsmci_start_read_blocks(void *dest, uint16_t nb_block)
 861:../asf/sam/drivers/hsmci/hsmci.c **** {
 862:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t nb_data;
 863:../asf/sam/drivers/hsmci/hsmci.c **** 
 864:../asf/sam/drivers/hsmci/hsmci.c **** 	nb_data = nb_block * hsmci_block_size;
 865:../asf/sam/drivers/hsmci/hsmci.c **** 	Assert(nb_data <= (((uint32_t)hsmci_block_size * hsmci_nb_block) - hsmci_transfert_pos));
 866:../asf/sam/drivers/hsmci/hsmci.c **** 	Assert(nb_data <= (PERIPH_RCR_RXCTR_Msk >> PERIPH_RCR_RXCTR_Pos));
 867:../asf/sam/drivers/hsmci/hsmci.c **** 
ARM GAS  /tmp/cc9w1cGI.s 			page 46


 868:../asf/sam/drivers/hsmci/hsmci.c **** 	// Handle unaligned memory address
 869:../asf/sam/drivers/hsmci/hsmci.c **** 	if (((uint32_t)dest & 0x3) || (hsmci_block_size & 0x3)) {
 870:../asf/sam/drivers/hsmci/hsmci.c **** 		HSMCI->HSMCI_MR |= HSMCI_MR_FBYTE;
 871:../asf/sam/drivers/hsmci/hsmci.c **** 	} else {
 872:../asf/sam/drivers/hsmci/hsmci.c **** 		HSMCI->HSMCI_MR &= ~HSMCI_MR_FBYTE;
 873:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 874:../asf/sam/drivers/hsmci/hsmci.c **** 
 875:../asf/sam/drivers/hsmci/hsmci.c **** 	// Configure PDC transfer
 876:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_RPR = (uint32_t)dest;
 877:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_RCR = (HSMCI->HSMCI_MR & HSMCI_MR_FBYTE) ?
 878:../asf/sam/drivers/hsmci/hsmci.c **** 			nb_data : nb_data / 4;
 879:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_RNCR = 0;
 880:../asf/sam/drivers/hsmci/hsmci.c **** 	// Start transfer
 881:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_PTCR = HSMCI_PTCR_RXTEN;
 882:../asf/sam/drivers/hsmci/hsmci.c **** 	hsmci_transfert_pos += nb_data;
 883:../asf/sam/drivers/hsmci/hsmci.c **** 	return true;
 884:../asf/sam/drivers/hsmci/hsmci.c **** }
 885:../asf/sam/drivers/hsmci/hsmci.c **** 
 886:../asf/sam/drivers/hsmci/hsmci.c **** bool hsmci_wait_end_of_read_blocks(void)
 887:../asf/sam/drivers/hsmci/hsmci.c **** {
 888:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t sr;
 889:../asf/sam/drivers/hsmci/hsmci.c **** 	// Wait end of transfer
 890:../asf/sam/drivers/hsmci/hsmci.c **** 	// Note: no need of timeout, because it is include in HSMCI, see DTOE bit.
 891:../asf/sam/drivers/hsmci/hsmci.c **** 	do {
 892:../asf/sam/drivers/hsmci/hsmci.c **** #if 1  // dc42 changes
 893:../asf/sam/drivers/hsmci/hsmci.c **** 		if (hsmciIdleFunc != NULL)
 894:../asf/sam/drivers/hsmci/hsmci.c **** 		{
 895:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmciIdleFunc(HSMCI_SR_UNRE | HSMCI_SR_OVRE | HSMCI_SR_DTOE | HSMCI_SR_DCRCE | HSMCI_SR_RXBUFF, 
 896:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 897:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 898:../asf/sam/drivers/hsmci/hsmci.c **** 		sr = HSMCI->HSMCI_SR;
 899:../asf/sam/drivers/hsmci/hsmci.c **** 		if (sr & (HSMCI_SR_UNRE | HSMCI_SR_OVRE | \
 900:../asf/sam/drivers/hsmci/hsmci.c **** 				HSMCI_SR_DTOE | HSMCI_SR_DCRCE)) {
 901:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmci_debug("%s: PDC sr 0x%08x error\n\r",
 902:../asf/sam/drivers/hsmci/hsmci.c **** 					__func__, sr);
 903:../asf/sam/drivers/hsmci/hsmci.c **** 			HSMCI->HSMCI_PTCR = HSMCI_PTCR_RXTDIS | HSMCI_PTCR_TXTDIS;
 904:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmci_reset();
 905:../asf/sam/drivers/hsmci/hsmci.c **** 			return false;
 906:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 907:../asf/sam/drivers/hsmci/hsmci.c **** 
 908:../asf/sam/drivers/hsmci/hsmci.c **** 	} while (!(sr & HSMCI_SR_RXBUFF));
 909:../asf/sam/drivers/hsmci/hsmci.c **** 
 910:../asf/sam/drivers/hsmci/hsmci.c **** 	if (hsmci_transfert_pos < ((uint32_t)hsmci_block_size * hsmci_nb_block)) {
 911:../asf/sam/drivers/hsmci/hsmci.c **** 		return true;
 912:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 913:../asf/sam/drivers/hsmci/hsmci.c **** 	// It is the last transfer, then wait command completed
 914:../asf/sam/drivers/hsmci/hsmci.c **** 	// Note: no need of timeout, because it is include in HSMCI, see DTOE bit.
 915:../asf/sam/drivers/hsmci/hsmci.c **** 	do {
 916:../asf/sam/drivers/hsmci/hsmci.c **** #if 1  // dc42 changes
 917:../asf/sam/drivers/hsmci/hsmci.c **** 		if (hsmciIdleFunc != NULL)
 918:../asf/sam/drivers/hsmci/hsmci.c **** 		{
 919:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmciIdleFunc(HSMCI_SR_UNRE | HSMCI_SR_OVRE | HSMCI_SR_DTOE | HSMCI_SR_DCRCE | HSMCI_SR_XFRDONE,
 920:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 921:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 922:../asf/sam/drivers/hsmci/hsmci.c **** 		sr = HSMCI->HSMCI_SR;
 923:../asf/sam/drivers/hsmci/hsmci.c **** 		if (sr & (HSMCI_SR_UNRE | HSMCI_SR_OVRE | \
 924:../asf/sam/drivers/hsmci/hsmci.c **** 				HSMCI_SR_DTOE | HSMCI_SR_DCRCE)) {
ARM GAS  /tmp/cc9w1cGI.s 			page 47


 925:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmci_debug("%s: PDC sr 0x%08x last transfer error\n\r",
 926:../asf/sam/drivers/hsmci/hsmci.c **** 					__func__, sr);
 927:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmci_reset();
 928:../asf/sam/drivers/hsmci/hsmci.c **** 			return false;
 929:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 930:../asf/sam/drivers/hsmci/hsmci.c **** 	} while (!(sr & HSMCI_SR_XFRDONE));
 931:../asf/sam/drivers/hsmci/hsmci.c **** 	return true;
 932:../asf/sam/drivers/hsmci/hsmci.c **** }
 933:../asf/sam/drivers/hsmci/hsmci.c **** 
 934:../asf/sam/drivers/hsmci/hsmci.c **** bool hsmci_start_write_blocks(const void *src, uint16_t nb_block)
 935:../asf/sam/drivers/hsmci/hsmci.c **** {
 936:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t nb_data;
 937:../asf/sam/drivers/hsmci/hsmci.c **** 
 938:../asf/sam/drivers/hsmci/hsmci.c **** 	nb_data = nb_block * hsmci_block_size;
 939:../asf/sam/drivers/hsmci/hsmci.c **** 	Assert(nb_data <= (((uint32_t)hsmci_block_size * hsmci_nb_block) - hsmci_transfert_pos));
 940:../asf/sam/drivers/hsmci/hsmci.c **** 	Assert(nb_data <= (PERIPH_TCR_TXCTR_Msk >> PERIPH_TCR_TXCTR_Pos));
 941:../asf/sam/drivers/hsmci/hsmci.c **** 
 942:../asf/sam/drivers/hsmci/hsmci.c **** 	// Handle unaligned memory address
 943:../asf/sam/drivers/hsmci/hsmci.c **** 	if (((uint32_t)src & 0x3) || (hsmci_block_size & 0x3)) {
 944:../asf/sam/drivers/hsmci/hsmci.c **** 		HSMCI->HSMCI_MR |= HSMCI_MR_FBYTE;
 945:../asf/sam/drivers/hsmci/hsmci.c **** 	} else {
 946:../asf/sam/drivers/hsmci/hsmci.c **** 		HSMCI->HSMCI_MR &= ~HSMCI_MR_FBYTE;
 947:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 948:../asf/sam/drivers/hsmci/hsmci.c **** 
 949:../asf/sam/drivers/hsmci/hsmci.c **** 	// Configure PDC transfer
 950:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_TPR = (uint32_t)src;
 951:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_TCR = (HSMCI->HSMCI_MR & HSMCI_MR_FBYTE) ?
 952:../asf/sam/drivers/hsmci/hsmci.c **** 			nb_data : nb_data / 4;
 953:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_TNCR = 0;
 954:../asf/sam/drivers/hsmci/hsmci.c **** 	// Start transfer
 955:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_PTCR = HSMCI_PTCR_TXTEN;
 956:../asf/sam/drivers/hsmci/hsmci.c **** 	hsmci_transfert_pos += nb_data;
 957:../asf/sam/drivers/hsmci/hsmci.c **** 	return true;
 958:../asf/sam/drivers/hsmci/hsmci.c **** }
 959:../asf/sam/drivers/hsmci/hsmci.c **** 
 960:../asf/sam/drivers/hsmci/hsmci.c **** bool hsmci_wait_end_of_write_blocks(void)
 961:../asf/sam/drivers/hsmci/hsmci.c **** {
 962:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t sr;
 963:../asf/sam/drivers/hsmci/hsmci.c **** 
 964:../asf/sam/drivers/hsmci/hsmci.c **** 	// Wait end of transfer
 965:../asf/sam/drivers/hsmci/hsmci.c **** 	// Note: no need of timeout, because it is include in HSMCI, see DTOE bit.
 966:../asf/sam/drivers/hsmci/hsmci.c **** 	do {
 967:../asf/sam/drivers/hsmci/hsmci.c **** #if 1  // dc42 changes
 968:../asf/sam/drivers/hsmci/hsmci.c **** 		if (hsmciIdleFunc != NULL)
 969:../asf/sam/drivers/hsmci/hsmci.c **** 		{
 970:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmciIdleFunc(HSMCI_SR_UNRE | HSMCI_SR_OVRE | HSMCI_SR_DTOE | HSMCI_SR_DCRCE | HSMCI_SR_TXBUFE, 
 971:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 972:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 973:../asf/sam/drivers/hsmci/hsmci.c **** 		sr = HSMCI->HSMCI_SR;
 974:../asf/sam/drivers/hsmci/hsmci.c **** 		if (sr &
 975:../asf/sam/drivers/hsmci/hsmci.c **** 				(HSMCI_SR_UNRE | HSMCI_SR_OVRE | \
 976:../asf/sam/drivers/hsmci/hsmci.c **** 				HSMCI_SR_DTOE | HSMCI_SR_DCRCE)) {
 977:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmci_debug("%s: PDC sr 0x%08x error\n\r",
 978:../asf/sam/drivers/hsmci/hsmci.c **** 					__func__, sr);
 979:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmci_reset();
 980:../asf/sam/drivers/hsmci/hsmci.c **** 			HSMCI->HSMCI_PTCR = HSMCI_PTCR_RXTDIS | HSMCI_PTCR_TXTDIS;
 981:../asf/sam/drivers/hsmci/hsmci.c **** 			return false;
ARM GAS  /tmp/cc9w1cGI.s 			page 48


 982:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 983:../asf/sam/drivers/hsmci/hsmci.c **** 	} while (!(sr & HSMCI_SR_TXBUFE));
 984:../asf/sam/drivers/hsmci/hsmci.c **** 
 985:../asf/sam/drivers/hsmci/hsmci.c **** 
 986:../asf/sam/drivers/hsmci/hsmci.c **** 	if (hsmci_transfert_pos < ((uint32_t)hsmci_block_size * hsmci_nb_block)) {
 987:../asf/sam/drivers/hsmci/hsmci.c **** 		return true;
 988:../asf/sam/drivers/hsmci/hsmci.c **** 	}
 989:../asf/sam/drivers/hsmci/hsmci.c **** 	// It is the last transfer, then wait command completed
 990:../asf/sam/drivers/hsmci/hsmci.c **** 	// Note: no need of timeout, because it is include in HSMCI, see DTOE bit.
 991:../asf/sam/drivers/hsmci/hsmci.c **** 	do {
 992:../asf/sam/drivers/hsmci/hsmci.c **** #if 1  // dc42 changes
 993:../asf/sam/drivers/hsmci/hsmci.c **** 		if (hsmciIdleFunc != NULL)
 994:../asf/sam/drivers/hsmci/hsmci.c **** 		{
 995:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmciIdleFunc(HSMCI_SR_UNRE | HSMCI_SR_OVRE | HSMCI_SR_DTOE | HSMCI_SR_DCRCE | HSMCI_SR_NOTBUSY,
 996:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 997:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 998:../asf/sam/drivers/hsmci/hsmci.c **** 		sr = HSMCI->HSMCI_SR;
 999:../asf/sam/drivers/hsmci/hsmci.c **** 		if (sr & (HSMCI_SR_UNRE | HSMCI_SR_OVRE | \
1000:../asf/sam/drivers/hsmci/hsmci.c **** 				HSMCI_SR_DTOE | HSMCI_SR_DCRCE)) {
1001:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmci_debug("%s: PDC sr 0x%08x last transfer error\n\r",
1002:../asf/sam/drivers/hsmci/hsmci.c **** 					__func__, sr);
1003:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmci_reset();
1004:../asf/sam/drivers/hsmci/hsmci.c **** 			return false;
1005:../asf/sam/drivers/hsmci/hsmci.c **** 		}
1006:../asf/sam/drivers/hsmci/hsmci.c **** 	} while (!(sr & HSMCI_SR_NOTBUSY));
1007:../asf/sam/drivers/hsmci/hsmci.c **** 	Assert(HSMCI->HSMCI_SR & HSMCI_SR_FIFOEMPTY);
1008:../asf/sam/drivers/hsmci/hsmci.c **** 	return true;
1009:../asf/sam/drivers/hsmci/hsmci.c **** }
1010:../asf/sam/drivers/hsmci/hsmci.c **** #endif // HSMCI_MR_PDCMODE
1011:../asf/sam/drivers/hsmci/hsmci.c **** 
1012:../asf/sam/drivers/hsmci/hsmci.c **** #if (SAMV70 || SAMV71 || SAME70 || SAMS70)
1013:../asf/sam/drivers/hsmci/hsmci.c **** #ifdef HSMCI_DMA_DMAEN
1014:../asf/sam/drivers/hsmci/hsmci.c **** bool hsmci_start_read_blocks(void *dest, uint16_t nb_block)
1015:../asf/sam/drivers/hsmci/hsmci.c **** {
 1463              		.loc 1 1015 0
 1464              		.cfi_startproc
 1465              		@ args = 0, pretend = 0, frame = 32
 1466              		@ frame_needed = 0, uses_anonymous_args = 0
 1467              	.LVL163:
 1468 0000 70B5     		push	{r4, r5, r6, lr}
 1469              		.cfi_def_cfa_offset 16
 1470              		.cfi_offset 4, -16
 1471              		.cfi_offset 5, -12
 1472              		.cfi_offset 6, -8
 1473              		.cfi_offset 14, -4
 1474 0002 88B0     		sub	sp, sp, #32
 1475              		.cfi_def_cfa_offset 48
 1476              		.loc 1 1015 0
 1477 0004 0646     		mov	r6, r0
 1478 0006 0C46     		mov	r4, r1
1016:../asf/sam/drivers/hsmci/hsmci.c **** 	xdmac_channel_config_t p_cfg = {0, 0, 0, 0, 0, 0, 0, 0};
 1479              		.loc 1 1016 0
 1480 0008 2022     		movs	r2, #32
 1481 000a 0021     		movs	r1, #0
 1482              	.LVL164:
 1483 000c 6846     		mov	r0, sp
 1484              	.LVL165:
ARM GAS  /tmp/cc9w1cGI.s 			page 49


 1485 000e FFF7FEFF 		bl	memset
 1486              	.LVL166:
1017:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t nb_data;
1018:../asf/sam/drivers/hsmci/hsmci.c **** 
1019:../asf/sam/drivers/hsmci/hsmci.c **** 	Assert(nb_block);
1020:../asf/sam/drivers/hsmci/hsmci.c **** 	Assert(dest);
1021:../asf/sam/drivers/hsmci/hsmci.c **** 
1022:../asf/sam/drivers/hsmci/hsmci.c **** 	xdmac_channel_disable(XDMAC, CONF_HSMCI_XDMAC_CHANNEL);
1023:../asf/sam/drivers/hsmci/hsmci.c **** 
1024:../asf/sam/drivers/hsmci/hsmci.c **** 	nb_data = nb_block * hsmci_block_size;
 1487              		.loc 1 1024 0
 1488 0012 174B     		ldr	r3, .L160
 1489              	.LBB97:
 1490              	.LBB98:
 1491              		.file 2 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h"
   1:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /**
   2:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \file
   3:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
   4:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \brief SAM XDMA Controller (DMAC) driver.
   5:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
   6:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * Copyright (c) 2015-2016 Atmel Corporation. All rights reserved.
   7:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
   8:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \asf_license_start
   9:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
  10:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \page License
  11:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
  12:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * Redistribution and use in source and binary forms, with or without
  13:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * modification, are permitted provided that the following conditions are met:
  14:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
  15:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *    this list of conditions and the following disclaimer.
  17:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
  18:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *    this list of conditions and the following disclaimer in the documentation
  20:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *    and/or other materials provided with the distribution.
  21:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
  22:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *    from this software without specific prior written permission.
  24:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
  25:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * 4. This software may only be redistributed and used in connection with an
  26:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *    Atmel microcontroller product.
  27:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
  28:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
  31:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * POSSIBILITY OF SUCH DAMAGE.
  39:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
  40:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \asf_license_stop
  41:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
  42:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  */
ARM GAS  /tmp/cc9w1cGI.s 			page 50


  43:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /*
  44:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  */
  46:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 
  47:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #ifndef XDMAC_H_INCLUDED
  48:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDMAC_H_INCLUDED
  49:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 
  50:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /**
  51:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \defgroup asfdoc_sam_drivers_xdmac_group SAMV71/V70/E70/S70 XDMA Controller (XDMAC) Driver
  52:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
  53:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * This driver for Atmel&reg; | SMART SAM XDMA Controller (XDMAC) is a AHB-protocol central
  54:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * direct memory access controller. It performs peripheral data transfer and memory move operations
  55:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * over one or two bus ports through the unidirectional communication channel.
  56:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * This is a driver for the configuration, enabling, disabling, and use of the XDMAC peripheral.
  57:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
  58:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * Devices from the following series can use this module:
  59:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * - Atmel | SMART SAMV71
  60:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * - Atmel | SMART SAMV70
  61:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * - Atmel | SMART SAMS70
  62:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * - Atmel | SMART SAME70
  63:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
  64:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * The outline of this documentation is as follows:
  65:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *  - \ref asfdoc_sam_drivers_xdmac_prerequisites
  66:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *  - \ref asfdoc_sam_drivers_xdmac_module_overview
  67:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *  - \ref asfdoc_sam_drivers_xdmac_special_considerations
  68:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *  - \ref asfdoc_sam_drivers_xdmac_extra_info
  69:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *  - \ref asfdoc_sam_drivers_xdmac_examples
  70:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *  - \ref asfdoc_sam_drivers_xdmac_api_overview
  71:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
  72:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
  73:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \section asfdoc_sam_drivers_xdmac_prerequisites Prerequisites
  74:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
  75:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * There are no prerequisites for this module.
  76:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
  77:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
  78:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \section asfdoc_sam_drivers_xdmac_module_overview Module Overview
  79:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * The DMA Controller (XDMAC) is a AHB-protocol central direct memory access controller.
  80:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * It performs peripheral data transfer and memory move operations over one or two bus ports
  81:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * through the unidirectional communication channel. Each channel is fully programmable and
  82:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * provides both peripheral or memory to memory transfer. The channel features are configurable
  83:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * at implementation time.
  84:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
  85:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
  86:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \section asfdoc_sam_drivers_xdmac_special_considerations Special Considerations
  87:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * There are no special considerations for this module.
  88:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
  89:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
  90:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \section asfdoc_sam_drivers_xdmac_extra_info Extra Information
  91:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
  92:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * For extra information, see \ref asfdoc_sam_drivers_xdmac_extra. This includes:
  93:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *  - \ref asfdoc_sam_drivers_xdmac_extra_acronyms
  94:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *  - \ref asfdoc_sam_drivers_xdmac_extra_dependencies
  95:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *  - \ref asfdoc_sam_drivers_xdmac_extra_errata
  96:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *  - \ref asfdoc_sam_drivers_xdmac_extra_history
  97:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
  98:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \section asfdoc_sam_drivers_xdmac_examples Examples
  99:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
ARM GAS  /tmp/cc9w1cGI.s 			page 51


 100:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * For a list of examples related to this driver, see
 101:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \ref asfdoc_sam_drivers_xdmac_exqsg.
 102:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
 103:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
 104:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \section asfdoc_sam_drivers_xdmac_api_overview API Overview
 105:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * @{
 106:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  */
 107:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 
 108:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #include  <compiler.h>
 109:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #include  <status_codes.h>
 110:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 
 111:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /** @cond */
 112:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /**INDENT-OFF**/
 113:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #ifdef __cplusplus
 114:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** extern "C" {
 115:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #endif
 116:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /**INDENT-ON**/
 117:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /** @endcond */
 118:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 
 119:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /** DMA channel hardware interface number */
 120:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_HSMCI       0
 121:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_SPI0_TX     1
 122:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_SPI0_RX     2
 123:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_SPI1_TX     3
 124:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_SPI1_RX     4
 125:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_QSPI_TX     5
 126:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_QSPI_RX     6
 127:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_USART0_TX   7
 128:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_USART0_RX   8
 129:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_USART1_TX   9
 130:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_USART1_RX   10
 131:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_USART2_TX   11
 132:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_USART2_RX   12
 133:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_PWM0        13
 134:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_TWIHS0_TX   14
 135:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_TWIHS0_RX   15
 136:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_TWIHS1_TX   16
 137:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_TWIHS1_RX   17
 138:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_TWIHS2_TX   18
 139:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_TWIHS2_RX   19
 140:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_UART0_TX    20
 141:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_UART0_RX    21
 142:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_UART1_TX    22
 143:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_UART1_RX    23
 144:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_UART2_TX    24
 145:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_UART2_RX    25
 146:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_UART3_TX    26
 147:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_UART3_RX    27
 148:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_UART4_TX    28
 149:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_UART4_RX    29
 150:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_DAC         30
 151:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_SSC_TX      32
 152:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_SSC_RX      33
 153:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_PIOA        34
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_AFEC0       35
 155:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_AFEC1       36
 156:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_AES_TX      37
ARM GAS  /tmp/cc9w1cGI.s 			page 52


 157:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_AES_RX      38
 158:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_PWM1        39
 159:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_TC0         40
 160:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_TC1         41
 161:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_TC2         42
 162:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_TC3         43
 163:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 
 164:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /* XDMA_MBR_UBC */
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_NDE            (0x1u << 24)
 166:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_NDE_FETCH_DIS  (0x0u << 24)
 167:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_NDE_FETCH_EN   (0x1u << 24)
 168:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_NSEN           (0x1u << 25)
 169:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_NSEN_UNCHANGED (0x0u << 25)
 170:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_NSEN_UPDATED   (0x1u << 25)
 171:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_NDEN           (0x1u << 26)
 172:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_NDEN_UNCHANGED (0x0u << 26)
 173:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_NDEN_UPDATED   (0x1u << 26)
 174:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_NVIEW_Pos      27
 175:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_NVIEW_Msk      (0x3u << XDMAC_UBC_NVIEW_Pos)
 176:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_NVIEW_NDV0     (0x0u << XDMAC_UBC_NVIEW_Pos)
 177:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_NVIEW_NDV1     (0x1u << XDMAC_UBC_NVIEW_Pos)
 178:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_NVIEW_NDV2     (0x2u << XDMAC_UBC_NVIEW_Pos)
 179:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_NVIEW_NDV3     (0x3u << XDMAC_UBC_NVIEW_Pos)
 180:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_UBLEN_Pos 0
 181:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_UBLEN_Msk (0xffffffu << XDMAC_UBC_UBLEN_Pos)
 182:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_UBLEN(value) ((XDMAC_UBC_UBLEN_Msk & ((value) << XDMAC_UBC_UBLEN_Pos)))
 183:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 
 184:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /** XDMA config register for channel */
 185:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** typedef struct {
 186:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	/** Microblock Control Member. */
 187:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_ubc;
 188:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	/** Source Address Member. */
 189:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_sa;
 190:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	/** Destination Address Member. */
 191:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_da;
 192:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	/** Configuration Register. */
 193:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_cfg;
 194:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	/** Block Control Member. */
 195:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_bc;
 196:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	/** Data Stride Member. */
 197:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_ds;
 198:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	/** Source Microblock Stride Member. */
 199:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_sus;
 200:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	/** Destination Microblock Stride Member. */
 201:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_dus;
 202:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** } xdmac_channel_config_t;
 203:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 
 204:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /**
 205:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \brief Structure for storing parameters for DMA view0 that can be
 206:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * performed by the DMA Master transfer.
 207:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  */
 208:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** typedef struct {
 209:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	/** Next Descriptor Address number. */
 210:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_nda;
 211:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	/** Microblock Control Member. */
 212:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_ubc;
 213:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	/** Destination Address Member. */
ARM GAS  /tmp/cc9w1cGI.s 			page 53


 214:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_da;
 215:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** } lld_view0;
 216:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 
 217:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /**
 218:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \brief Structure for storing parameters for DMA view1 that can be
 219:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * performed by the DMA Master transfer.
 220:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  */
 221:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** typedef struct {
 222:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	/** Next Descriptor Address number. */
 223:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_nda;
 224:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	/** Microblock Control Member. */
 225:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_ubc;
 226:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	/** Source Address Member. */
 227:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_sa;
 228:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	/** Destination Address Member. */
 229:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_da;
 230:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** } lld_view1;
 231:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 
 232:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /**
 233:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \brief Structure for storing parameters for DMA view2 that can be
 234:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * performed by the DMA Master transfer.
 235:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  */
 236:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** typedef struct {
 237:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	/** Next Descriptor Address number. */
 238:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_nda;
 239:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	/** Microblock Control Member. */
 240:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_ubc;
 241:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	/** Source Address Member. */
 242:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_sa;
 243:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	/** Destination Address Member. */
 244:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_da;
 245:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	/** Configuration Register. */
 246:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_cfg;
 247:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** } lld_view2;
 248:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 
 249:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /**
 250:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \brief Structure for storing parameters for DMA view3 that can be
 251:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * performed by the DMA Master transfer.
 252:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  */
 253:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** typedef struct {
 254:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	/** Next Descriptor Address number. */
 255:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_nda;
 256:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	/** Microblock Control Member. */
 257:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_ubc;
 258:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	/** Source Address Member. */
 259:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_sa;
 260:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	/** Destination Address Member. */
 261:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_da;
 262:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	/** Configuration Register. */
 263:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_cfg;
 264:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	/** Block Control Member. */
 265:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_bc;
 266:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	/** Data Stride Member. */
 267:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_ds;
 268:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	/** Source Microblock Stride Member. */
 269:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_sus;
 270:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	/** Destination Microblock Stride Member. */
ARM GAS  /tmp/cc9w1cGI.s 			page 54


 271:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_dus;
 272:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** } lld_view3;
 273:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 
 274:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /**
 275:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \brief Get XDMAC global type.
 276:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
 277:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 278:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  */
 279:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** static inline uint32_t xdmac_get_type( Xdmac *xdmac)
 280:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** {
 281:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 282:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	return xdmac->XDMAC_GTYPE;
 283:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** }
 284:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 
 285:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /**
 286:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \brief Get XDMAC global configuration.
 287:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
 288:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 289:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  */
 290:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** static inline uint32_t xdmac_get_config(Xdmac *xdmac)
 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** {
 292:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 293:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	return xdmac->XDMAC_GCFG;
 294:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** }
 295:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 
 296:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /**
 297:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \brief Get XDMAC global weighted arbiter configuration.
 298:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
 299:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 300:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  */
 301:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** static inline uint32_t xdmac_get_arbiter(Xdmac *xdmac)
 302:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** {
 303:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 304:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	return xdmac->XDMAC_GWAC;
 305:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** }
 306:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 
 307:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /**
 308:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \brief Enables XDMAC global interrupt.
 309:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
 310:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 311:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] channel_num  XDMA Channel number (range 0 to 23).
 312:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  */
 313:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** static inline void xdmac_enable_interrupt(Xdmac *xdmac, uint32_t channel_num)
 314:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** {
 315:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 316:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	xdmac->XDMAC_GIE = ( XDMAC_GIE_IE0 << channel_num) ;
 317:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** }
 318:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /**
 320:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \brief Disables XDMAC global interrupt
 321:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
 322:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 323:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] channel_num  XDMA Channel number (range 0 to 23).
 324:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  */
 325:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** static inline void xdmac_disable_interrupt(Xdmac *xdmac, uint32_t channel_num)
 326:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** {
 327:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
ARM GAS  /tmp/cc9w1cGI.s 			page 55


 328:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	xdmac->XDMAC_GID = (XDMAC_GID_ID0 << channel_num);
 329:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** }
 330:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 
 331:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /**
 332:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \brief Get XDMAC global interrupt mask.
 333:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
 334:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 335:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  */
 336:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** static inline uint32_t xdmac_get_interrupt_mask(Xdmac *xdmac)
 337:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** {
 338:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 339:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	return (xdmac->XDMAC_GIM);
 340:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** }
 341:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 
 342:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /**
 343:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \brief Get XDMAC global interrupt status.
 344:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
 345:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 346:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  */
 347:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** static inline uint32_t xdmac_get_interrupt_status(Xdmac *xdmac)
 348:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** {
 349:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 350:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	return (xdmac->XDMAC_GIS);
 351:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** }
 352:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 
 353:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /**
 354:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \brief enables the relevant channel of given XDMAC.
 355:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
 356:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 357:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[in]  channel_num  XDMA Channel number (range 0 to 23)
 358:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  */
 359:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** static inline void xdmac_channel_enable(Xdmac *xdmac, uint32_t channel_num)
 360:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** {
 361:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 362:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	Assert(channel_num < XDMACCHID_NUMBER);
 363:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	
 364:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #if 0	// chrishamm: This causes occasional hard faults. Not good
 365:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	/* Update DCache before DMA transmit */
 366:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	SCB_CleanInvalidateDCache();
 367:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** #endif
 368:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	
 369:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	xdmac->XDMAC_GE = (XDMAC_GE_EN0 << channel_num);
 370:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** }
 371:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 
 372:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /**
 373:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \brief Disables the relevant channel of given XDMAC.
 374:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
 375:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 376:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[in]  channel_num  XDMA Channel number (range 0 to 23)
 377:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  */
 378:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** static inline void xdmac_channel_disable(Xdmac *xdmac, uint32_t channel_num)
 379:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** {
 380:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 381:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	Assert(channel_num < XDMACCHID_NUMBER);
 382:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	xdmac->XDMAC_GD =(XDMAC_GD_DI0 << channel_num);
 1492              		.loc 2 382 0
 1493 0014 174A     		ldr	r2, .L160+4
ARM GAS  /tmp/cc9w1cGI.s 			page 56


 1494 0016 0121     		movs	r1, #1
 1495              	.LBE98:
 1496              	.LBE97:
 1497              		.loc 1 1024 0
 1498 0018 1B88     		ldrh	r3, [r3]
 1499              	.LBB100:
 1500              	.LBB99:
 1501              		.loc 2 382 0
 1502 001a 1162     		str	r1, [r2, #32]
 1503              	.LVL167:
 1504              	.LBE99:
 1505              	.LBE100:
 1506              		.loc 1 1024 0
 1507 001c 04FB03F4 		mul	r4, r4, r3
 1508              	.LVL168:
1025:../asf/sam/drivers/hsmci/hsmci.c **** 
1026:../asf/sam/drivers/hsmci/hsmci.c **** 	if((uint32_t)dest & 3) {
 1509              		.loc 1 1026 0
 1510 0020 B307     		lsls	r3, r6, #30
 1511 0022 1AD1     		bne	.L159
1027:../asf/sam/drivers/hsmci/hsmci.c **** 		p_cfg.mbr_cfg = XDMAC_CC_TYPE_PER_TRAN
1028:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_MBSIZE_SINGLE
1029:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_DSYNC_PER2MEM
1030:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_CSIZE_CHK_1
1031:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_DWIDTH_BYTE
1032:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_SIF_AHB_IF1
1033:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_DIF_AHB_IF0
1034:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_SAM_FIXED_AM
1035:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_DAM_INCREMENTED_AM
1036:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_PERID(CONF_HSMCI_XDMAC_CHANNEL);
1037:../asf/sam/drivers/hsmci/hsmci.c **** 		p_cfg.mbr_ubc = nb_data;
1038:../asf/sam/drivers/hsmci/hsmci.c **** 		HSMCI->HSMCI_MR |= HSMCI_MR_FBYTE;
1039:../asf/sam/drivers/hsmci/hsmci.c **** 	} else {
1040:../asf/sam/drivers/hsmci/hsmci.c **** 		p_cfg.mbr_cfg = XDMAC_CC_TYPE_PER_TRAN
1041:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_MBSIZE_SINGLE
1042:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_DSYNC_PER2MEM
1043:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_CSIZE_CHK_1
1044:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_DWIDTH_WORD
1045:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_SIF_AHB_IF1
1046:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_DIF_AHB_IF0
1047:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_SAM_FIXED_AM
1048:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_DAM_INCREMENTED_AM
1049:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_PERID(CONF_HSMCI_XDMAC_CHANNEL);
1050:../asf/sam/drivers/hsmci/hsmci.c **** 		p_cfg.mbr_ubc = nb_data / 4;
 1512              		.loc 1 1050 0
 1513 0024 A308     		lsrs	r3, r4, #2
1051:../asf/sam/drivers/hsmci/hsmci.c **** 		HSMCI->HSMCI_MR &= ~HSMCI_MR_FBYTE;
 1514              		.loc 1 1051 0
 1515 0026 4FF08042 		mov	r2, #1073741824
1040:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_MBSIZE_SINGLE
 1516              		.loc 1 1040 0
 1517 002a 1349     		ldr	r1, .L160+8
1050:../asf/sam/drivers/hsmci/hsmci.c **** 		HSMCI->HSMCI_MR &= ~HSMCI_MR_FBYTE;
 1518              		.loc 1 1050 0
 1519 002c 0093     		str	r3, [sp]
1040:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_MBSIZE_SINGLE
 1520              		.loc 1 1040 0
ARM GAS  /tmp/cc9w1cGI.s 			page 57


 1521 002e 0391     		str	r1, [sp, #12]
 1522              		.loc 1 1051 0
 1523 0030 5368     		ldr	r3, [r2, #4]
 1524 0032 23F40053 		bic	r3, r3, #8192
 1525 0036 5360     		str	r3, [r2, #4]
 1526              	.L157:
1052:../asf/sam/drivers/hsmci/hsmci.c **** 	}
1053:../asf/sam/drivers/hsmci/hsmci.c **** 	p_cfg.mbr_sa = (uint32_t)&(HSMCI->HSMCI_FIFO[0]);
1054:../asf/sam/drivers/hsmci/hsmci.c **** 	p_cfg.mbr_da = (uint32_t)dest;
1055:../asf/sam/drivers/hsmci/hsmci.c **** 	xdmac_configure_transfer(XDMAC, CONF_HSMCI_XDMAC_CHANNEL, &p_cfg);
 1527              		.loc 1 1055 0
 1528 0038 0E4D     		ldr	r5, .L160+4
 1529 003a 6A46     		mov	r2, sp
1053:../asf/sam/drivers/hsmci/hsmci.c **** 	p_cfg.mbr_da = (uint32_t)dest;
 1530              		.loc 1 1053 0
 1531 003c 0F4B     		ldr	r3, .L160+12
 1532              		.loc 1 1055 0
 1533 003e 0021     		movs	r1, #0
 1534 0040 2846     		mov	r0, r5
1054:../asf/sam/drivers/hsmci/hsmci.c **** 	xdmac_configure_transfer(XDMAC, CONF_HSMCI_XDMAC_CHANNEL, &p_cfg);
 1535              		.loc 1 1054 0
 1536 0042 0296     		str	r6, [sp, #8]
1053:../asf/sam/drivers/hsmci/hsmci.c **** 	p_cfg.mbr_da = (uint32_t)dest;
 1537              		.loc 1 1053 0
 1538 0044 0193     		str	r3, [sp, #4]
 1539              		.loc 1 1055 0
 1540 0046 FFF7FEFF 		bl	xdmac_configure_transfer
 1541              	.LVL169:
 1542              	.LBB101:
 1543              	.LBB102:
 369:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** }
 1544              		.loc 2 369 0
 1545 004a 0120     		movs	r0, #1
 1546              	.LBE102:
 1547              	.LBE101:
1056:../asf/sam/drivers/hsmci/hsmci.c **** 	xdmac_channel_enable(XDMAC, CONF_HSMCI_XDMAC_CHANNEL);
1057:../asf/sam/drivers/hsmci/hsmci.c **** 	hsmci_transfert_pos += nb_data;
 1548              		.loc 1 1057 0
 1549 004c 0C4A     		ldr	r2, .L160+16
 1550              	.LBB104:
 1551              	.LBB103:
 369:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** }
 1552              		.loc 2 369 0
 1553 004e E861     		str	r0, [r5, #28]
 1554              	.LVL170:
 1555              	.LBE103:
 1556              	.LBE104:
 1557              		.loc 1 1057 0
 1558 0050 1368     		ldr	r3, [r2]
 1559 0052 1C44     		add	r4, r4, r3
 1560              	.LVL171:
 1561 0054 1460     		str	r4, [r2]
1058:../asf/sam/drivers/hsmci/hsmci.c **** 	return true;
1059:../asf/sam/drivers/hsmci/hsmci.c **** }
 1562              		.loc 1 1059 0
 1563 0056 08B0     		add	sp, sp, #32
 1564              		.cfi_remember_state
ARM GAS  /tmp/cc9w1cGI.s 			page 58


 1565              		.cfi_def_cfa_offset 16
 1566              		@ sp needed
 1567 0058 70BD     		pop	{r4, r5, r6, pc}
 1568              	.LVL172:
 1569              	.L159:
 1570              		.cfi_restore_state
1027:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_MBSIZE_SINGLE
 1571              		.loc 1 1027 0
 1572 005a 0A4B     		ldr	r3, .L160+20
1038:../asf/sam/drivers/hsmci/hsmci.c **** 	} else {
 1573              		.loc 1 1038 0
 1574 005c 4FF08042 		mov	r2, #1073741824
1037:../asf/sam/drivers/hsmci/hsmci.c **** 		HSMCI->HSMCI_MR |= HSMCI_MR_FBYTE;
 1575              		.loc 1 1037 0
 1576 0060 0094     		str	r4, [sp]
1027:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_MBSIZE_SINGLE
 1577              		.loc 1 1027 0
 1578 0062 0393     		str	r3, [sp, #12]
1038:../asf/sam/drivers/hsmci/hsmci.c **** 	} else {
 1579              		.loc 1 1038 0
 1580 0064 5368     		ldr	r3, [r2, #4]
 1581 0066 43F40053 		orr	r3, r3, #8192
 1582 006a 5360     		str	r3, [r2, #4]
 1583 006c E4E7     		b	.L157
 1584              	.L161:
 1585 006e 00BF     		.align	2
 1586              	.L160:
 1587 0070 00000000 		.word	.LANCHOR2
 1588 0074 00800740 		.word	1074233344
 1589 0078 01300400 		.word	274433
 1590 007c 00020040 		.word	1073742336
 1591 0080 00000000 		.word	.LANCHOR1
 1592 0084 01200400 		.word	270337
 1593              		.cfi_endproc
 1594              	.LFE213:
 1595              		.size	hsmci_start_read_blocks, .-hsmci_start_read_blocks
 1596              		.section	.text.hsmci_start_write_blocks,"ax",%progbits
 1597              		.align	1
 1598              		.p2align 2,,3
 1599              		.global	hsmci_start_write_blocks
 1600              		.syntax unified
 1601              		.thumb
 1602              		.thumb_func
 1603              		.fpu fpv5-d16
 1604              		.type	hsmci_start_write_blocks, %function
 1605              	hsmci_start_write_blocks:
 1606              	.LFB215:
1060:../asf/sam/drivers/hsmci/hsmci.c **** 
1061:../asf/sam/drivers/hsmci/hsmci.c **** bool hsmci_wait_end_of_read_blocks(void)
1062:../asf/sam/drivers/hsmci/hsmci.c **** {
1063:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t sr;
1064:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t dma_sr;
1065:../asf/sam/drivers/hsmci/hsmci.c **** 	// Wait end of transfer
1066:../asf/sam/drivers/hsmci/hsmci.c **** 	// Note: no need of timeout, because it is include in HSMCI
1067:../asf/sam/drivers/hsmci/hsmci.c **** 	do {
1068:../asf/sam/drivers/hsmci/hsmci.c **** #if 1  // dc42 changes
1069:../asf/sam/drivers/hsmci/hsmci.c **** 		const bool checkDmaEnded = (uint32_t)hsmci_block_size * hsmci_nb_block > hsmci_transfert_pos;
ARM GAS  /tmp/cc9w1cGI.s 			page 59


1070:../asf/sam/drivers/hsmci/hsmci.c **** 		if (hsmciIdleFunc != NULL)
1071:../asf/sam/drivers/hsmci/hsmci.c **** 		{
1072:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmciIdleFunc(HSMCI_SR_UNRE | HSMCI_SR_OVRE | HSMCI_SR_DTOE | HSMCI_SR_DCRCE | HSMCI_SR_XFRDONE,
1073:../asf/sam/drivers/hsmci/hsmci.c **** 		}
1074:../asf/sam/drivers/hsmci/hsmci.c **** #endif
1075:../asf/sam/drivers/hsmci/hsmci.c **** 		sr = HSMCI->HSMCI_SR;
1076:../asf/sam/drivers/hsmci/hsmci.c **** 		if (sr & (HSMCI_SR_UNRE | HSMCI_SR_OVRE | \
1077:../asf/sam/drivers/hsmci/hsmci.c **** 				HSMCI_SR_DTOE | HSMCI_SR_DCRCE)) {
1078:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmci_debug("%s: DMA sr 0x%08x error\n\r",
1079:../asf/sam/drivers/hsmci/hsmci.c **** 					__func__, sr);
1080:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmci_reset();
1081:../asf/sam/drivers/hsmci/hsmci.c **** 			// Disable XDMAC
1082:../asf/sam/drivers/hsmci/hsmci.c **** 			xdmac_channel_disable(XDMAC, CONF_HSMCI_XDMAC_CHANNEL);
1083:../asf/sam/drivers/hsmci/hsmci.c **** 			return false;
1084:../asf/sam/drivers/hsmci/hsmci.c **** 		}
1085:../asf/sam/drivers/hsmci/hsmci.c **** #if 1	// dc42
1086:../asf/sam/drivers/hsmci/hsmci.c **** 		if (checkDmaEnded)
1087:../asf/sam/drivers/hsmci/hsmci.c **** 		{
1088:../asf/sam/drivers/hsmci/hsmci.c **** #else
1089:../asf/sam/drivers/hsmci/hsmci.c **** 		if (((uint32_t)hsmci_block_size * hsmci_nb_block) > hsmci_transfert_pos) {
1090:../asf/sam/drivers/hsmci/hsmci.c **** #endif
1091:../asf/sam/drivers/hsmci/hsmci.c **** 			// It is not the end of all transfers
1092:../asf/sam/drivers/hsmci/hsmci.c **** 			// then just wait end of DMA
1093:../asf/sam/drivers/hsmci/hsmci.c **** 			dma_sr = xdmac_channel_get_interrupt_status(XDMAC, CONF_HSMCI_XDMAC_CHANNEL);
1094:../asf/sam/drivers/hsmci/hsmci.c **** 			if (dma_sr & XDMAC_CIS_BIS) {
1095:../asf/sam/drivers/hsmci/hsmci.c **** 				return true;
1096:../asf/sam/drivers/hsmci/hsmci.c **** 			}
1097:../asf/sam/drivers/hsmci/hsmci.c **** 		}
1098:../asf/sam/drivers/hsmci/hsmci.c **** 	} while (!(sr & HSMCI_SR_XFRDONE));
1099:../asf/sam/drivers/hsmci/hsmci.c **** 	return true;
1100:../asf/sam/drivers/hsmci/hsmci.c **** }
1101:../asf/sam/drivers/hsmci/hsmci.c **** 
1102:../asf/sam/drivers/hsmci/hsmci.c **** bool hsmci_start_write_blocks(const void *src, uint16_t nb_block)
1103:../asf/sam/drivers/hsmci/hsmci.c **** {
 1607              		.loc 1 1103 0
 1608              		.cfi_startproc
 1609              		@ args = 0, pretend = 0, frame = 32
 1610              		@ frame_needed = 0, uses_anonymous_args = 0
 1611              	.LVL173:
 1612 0000 70B5     		push	{r4, r5, r6, lr}
 1613              		.cfi_def_cfa_offset 16
 1614              		.cfi_offset 4, -16
 1615              		.cfi_offset 5, -12
 1616              		.cfi_offset 6, -8
 1617              		.cfi_offset 14, -4
 1618 0002 88B0     		sub	sp, sp, #32
 1619              		.cfi_def_cfa_offset 48
 1620              		.loc 1 1103 0
 1621 0004 0646     		mov	r6, r0
 1622 0006 0C46     		mov	r4, r1
1104:../asf/sam/drivers/hsmci/hsmci.c **** 	xdmac_channel_config_t p_cfg = {0, 0, 0, 0, 0, 0, 0, 0};
 1623              		.loc 1 1104 0
 1624 0008 2022     		movs	r2, #32
 1625 000a 0021     		movs	r1, #0
 1626              	.LVL174:
 1627 000c 6846     		mov	r0, sp
 1628              	.LVL175:
ARM GAS  /tmp/cc9w1cGI.s 			page 60


 1629 000e FFF7FEFF 		bl	memset
 1630              	.LVL176:
1105:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t nb_data;
1106:../asf/sam/drivers/hsmci/hsmci.c **** 
1107:../asf/sam/drivers/hsmci/hsmci.c **** 	Assert(nb_block);
1108:../asf/sam/drivers/hsmci/hsmci.c **** 	Assert(dest);
1109:../asf/sam/drivers/hsmci/hsmci.c **** 
1110:../asf/sam/drivers/hsmci/hsmci.c **** 	xdmac_channel_disable(XDMAC, CONF_HSMCI_XDMAC_CHANNEL);
1111:../asf/sam/drivers/hsmci/hsmci.c **** 
1112:../asf/sam/drivers/hsmci/hsmci.c **** 	nb_data = nb_block * hsmci_block_size;
 1631              		.loc 1 1112 0
 1632 0012 174B     		ldr	r3, .L167
 1633              	.LBB105:
 1634              	.LBB106:
 1635              		.loc 2 382 0
 1636 0014 174A     		ldr	r2, .L167+4
 1637 0016 0121     		movs	r1, #1
 1638              	.LBE106:
 1639              	.LBE105:
 1640              		.loc 1 1112 0
 1641 0018 1B88     		ldrh	r3, [r3]
 1642              	.LBB108:
 1643              	.LBB107:
 1644              		.loc 2 382 0
 1645 001a 1162     		str	r1, [r2, #32]
 1646              	.LVL177:
 1647              	.LBE107:
 1648              	.LBE108:
 1649              		.loc 1 1112 0
 1650 001c 04FB03F4 		mul	r4, r4, r3
 1651              	.LVL178:
1113:../asf/sam/drivers/hsmci/hsmci.c **** 
1114:../asf/sam/drivers/hsmci/hsmci.c **** 	if((uint32_t)src & 3) {
 1652              		.loc 1 1114 0
 1653 0020 B307     		lsls	r3, r6, #30
 1654 0022 1AD1     		bne	.L166
1115:../asf/sam/drivers/hsmci/hsmci.c **** 		p_cfg.mbr_cfg = XDMAC_CC_TYPE_PER_TRAN
1116:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_MBSIZE_SINGLE
1117:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_DSYNC_MEM2PER
1118:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_CSIZE_CHK_1
1119:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_DWIDTH_BYTE
1120:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_SIF_AHB_IF0
1121:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_DIF_AHB_IF1
1122:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_SAM_INCREMENTED_AM
1123:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_DAM_FIXED_AM
1124:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_PERID(CONF_HSMCI_XDMAC_CHANNEL);
1125:../asf/sam/drivers/hsmci/hsmci.c **** 		p_cfg.mbr_ubc = nb_data;
1126:../asf/sam/drivers/hsmci/hsmci.c **** 		HSMCI->HSMCI_MR |= HSMCI_MR_FBYTE;
1127:../asf/sam/drivers/hsmci/hsmci.c **** 	} else {
1128:../asf/sam/drivers/hsmci/hsmci.c **** 		p_cfg.mbr_cfg = XDMAC_CC_TYPE_PER_TRAN
1129:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_MBSIZE_SINGLE
1130:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_DSYNC_MEM2PER
1131:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_CSIZE_CHK_1
1132:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_DWIDTH_WORD
1133:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_SIF_AHB_IF0
1134:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_DIF_AHB_IF1
1135:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_SAM_INCREMENTED_AM
ARM GAS  /tmp/cc9w1cGI.s 			page 61


1136:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_DAM_FIXED_AM
1137:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_PERID(CONF_HSMCI_XDMAC_CHANNEL);
1138:../asf/sam/drivers/hsmci/hsmci.c **** 		p_cfg.mbr_ubc = nb_data / 4;
 1655              		.loc 1 1138 0
 1656 0024 A308     		lsrs	r3, r4, #2
1139:../asf/sam/drivers/hsmci/hsmci.c **** 		HSMCI->HSMCI_MR &= ~HSMCI_MR_FBYTE;
 1657              		.loc 1 1139 0
 1658 0026 4FF08042 		mov	r2, #1073741824
1128:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_MBSIZE_SINGLE
 1659              		.loc 1 1128 0
 1660 002a 1349     		ldr	r1, .L167+8
1138:../asf/sam/drivers/hsmci/hsmci.c **** 		HSMCI->HSMCI_MR &= ~HSMCI_MR_FBYTE;
 1661              		.loc 1 1138 0
 1662 002c 0093     		str	r3, [sp]
1128:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_MBSIZE_SINGLE
 1663              		.loc 1 1128 0
 1664 002e 0391     		str	r1, [sp, #12]
 1665              		.loc 1 1139 0
 1666 0030 5368     		ldr	r3, [r2, #4]
 1667 0032 23F40053 		bic	r3, r3, #8192
 1668 0036 5360     		str	r3, [r2, #4]
 1669              	.L164:
1140:../asf/sam/drivers/hsmci/hsmci.c **** 	}
1141:../asf/sam/drivers/hsmci/hsmci.c **** 	p_cfg.mbr_sa = (uint32_t)src;
1142:../asf/sam/drivers/hsmci/hsmci.c **** 	p_cfg.mbr_da = (uint32_t)&(HSMCI->HSMCI_FIFO[0]);
1143:../asf/sam/drivers/hsmci/hsmci.c **** 	xdmac_configure_transfer(XDMAC, CONF_HSMCI_XDMAC_CHANNEL, &p_cfg);
 1670              		.loc 1 1143 0
 1671 0038 0E4D     		ldr	r5, .L167+4
 1672 003a 6A46     		mov	r2, sp
1142:../asf/sam/drivers/hsmci/hsmci.c **** 	xdmac_configure_transfer(XDMAC, CONF_HSMCI_XDMAC_CHANNEL, &p_cfg);
 1673              		.loc 1 1142 0
 1674 003c 0F4B     		ldr	r3, .L167+12
 1675              		.loc 1 1143 0
 1676 003e 0021     		movs	r1, #0
 1677 0040 2846     		mov	r0, r5
1141:../asf/sam/drivers/hsmci/hsmci.c **** 	p_cfg.mbr_da = (uint32_t)&(HSMCI->HSMCI_FIFO[0]);
 1678              		.loc 1 1141 0
 1679 0042 0196     		str	r6, [sp, #4]
1142:../asf/sam/drivers/hsmci/hsmci.c **** 	xdmac_configure_transfer(XDMAC, CONF_HSMCI_XDMAC_CHANNEL, &p_cfg);
 1680              		.loc 1 1142 0
 1681 0044 0293     		str	r3, [sp, #8]
 1682              		.loc 1 1143 0
 1683 0046 FFF7FEFF 		bl	xdmac_configure_transfer
 1684              	.LVL179:
 1685              	.LBB109:
 1686              	.LBB110:
 369:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** }
 1687              		.loc 2 369 0
 1688 004a 0120     		movs	r0, #1
 1689              	.LBE110:
 1690              	.LBE109:
1144:../asf/sam/drivers/hsmci/hsmci.c **** 	xdmac_channel_enable(XDMAC, CONF_HSMCI_XDMAC_CHANNEL);
1145:../asf/sam/drivers/hsmci/hsmci.c **** 	hsmci_transfert_pos += nb_data;
 1691              		.loc 1 1145 0
 1692 004c 0C4A     		ldr	r2, .L167+16
 1693              	.LBB112:
 1694              	.LBB111:
ARM GAS  /tmp/cc9w1cGI.s 			page 62


 369:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** }
 1695              		.loc 2 369 0
 1696 004e E861     		str	r0, [r5, #28]
 1697              	.LVL180:
 1698              	.LBE111:
 1699              	.LBE112:
 1700              		.loc 1 1145 0
 1701 0050 1368     		ldr	r3, [r2]
 1702 0052 1C44     		add	r4, r4, r3
 1703              	.LVL181:
 1704 0054 1460     		str	r4, [r2]
1146:../asf/sam/drivers/hsmci/hsmci.c **** 	return true;
1147:../asf/sam/drivers/hsmci/hsmci.c **** }
 1705              		.loc 1 1147 0
 1706 0056 08B0     		add	sp, sp, #32
 1707              		.cfi_remember_state
 1708              		.cfi_def_cfa_offset 16
 1709              		@ sp needed
 1710 0058 70BD     		pop	{r4, r5, r6, pc}
 1711              	.LVL182:
 1712              	.L166:
 1713              		.cfi_restore_state
1115:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_MBSIZE_SINGLE
 1714              		.loc 1 1115 0
 1715 005a 0A4B     		ldr	r3, .L167+20
1126:../asf/sam/drivers/hsmci/hsmci.c **** 	} else {
 1716              		.loc 1 1126 0
 1717 005c 4FF08042 		mov	r2, #1073741824
1125:../asf/sam/drivers/hsmci/hsmci.c **** 		HSMCI->HSMCI_MR |= HSMCI_MR_FBYTE;
 1718              		.loc 1 1125 0
 1719 0060 0094     		str	r4, [sp]
1115:../asf/sam/drivers/hsmci/hsmci.c **** 						| XDMAC_CC_MBSIZE_SINGLE
 1720              		.loc 1 1115 0
 1721 0062 0393     		str	r3, [sp, #12]
1126:../asf/sam/drivers/hsmci/hsmci.c **** 	} else {
 1722              		.loc 1 1126 0
 1723 0064 5368     		ldr	r3, [r2, #4]
 1724 0066 43F40053 		orr	r3, r3, #8192
 1725 006a 5360     		str	r3, [r2, #4]
 1726 006c E4E7     		b	.L164
 1727              	.L168:
 1728 006e 00BF     		.align	2
 1729              	.L167:
 1730 0070 00000000 		.word	.LANCHOR2
 1731 0074 00800740 		.word	1074233344
 1732 0078 11500100 		.word	86033
 1733 007c 00020040 		.word	1073742336
 1734 0080 00000000 		.word	.LANCHOR1
 1735 0084 11400100 		.word	81937
 1736              		.cfi_endproc
 1737              	.LFE215:
 1738              		.size	hsmci_start_write_blocks, .-hsmci_start_write_blocks
 1739              		.section	.text.hsmci_wait_end_of_write_blocks,"ax",%progbits
 1740              		.align	1
 1741              		.p2align 2,,3
 1742              		.global	hsmci_wait_end_of_write_blocks
 1743              		.syntax unified
ARM GAS  /tmp/cc9w1cGI.s 			page 63


 1744              		.thumb
 1745              		.thumb_func
 1746              		.fpu fpv5-d16
 1747              		.type	hsmci_wait_end_of_write_blocks, %function
 1748              	hsmci_wait_end_of_write_blocks:
 1749              	.LFB216:
1148:../asf/sam/drivers/hsmci/hsmci.c **** 
1149:../asf/sam/drivers/hsmci/hsmci.c **** bool hsmci_wait_end_of_write_blocks(void)
1150:../asf/sam/drivers/hsmci/hsmci.c **** {
 1750              		.loc 1 1150 0
 1751              		.cfi_startproc
 1752              		@ args = 0, pretend = 0, frame = 0
 1753              		@ frame_needed = 0, uses_anonymous_args = 0
 1754 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1755              		.cfi_def_cfa_offset 40
 1756              		.cfi_offset 3, -40
 1757              		.cfi_offset 4, -36
 1758              		.cfi_offset 5, -32
 1759              		.cfi_offset 6, -28
 1760              		.cfi_offset 7, -24
 1761              		.cfi_offset 8, -20
 1762              		.cfi_offset 9, -16
 1763              		.cfi_offset 10, -12
 1764              		.cfi_offset 11, -8
 1765              		.cfi_offset 14, -4
 1766 0004 DFF894A0 		ldr	r10, .L182+16
 1767 0008 DFF89490 		ldr	r9, .L182+20
 1768 000c DFF89480 		ldr	r8, .L182+24
 1769 0010 1E4F     		ldr	r7, .L182
 1770              	.LBB113:
1151:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t sr;
1152:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t dma_sr;
1153:../asf/sam/drivers/hsmci/hsmci.c **** 	// Wait end of transfer
1154:../asf/sam/drivers/hsmci/hsmci.c **** 	// Note: no need of timeout, because it is include in HSMCI
1155:../asf/sam/drivers/hsmci/hsmci.c **** 	do {
1156:../asf/sam/drivers/hsmci/hsmci.c **** #if 1  // dc42 changes
1157:../asf/sam/drivers/hsmci/hsmci.c **** 		const bool checkDmaEnded = (uint32_t)hsmci_block_size * hsmci_nb_block > hsmci_transfert_pos;
1158:../asf/sam/drivers/hsmci/hsmci.c **** 		if (hsmciIdleFunc != NULL)
1159:../asf/sam/drivers/hsmci/hsmci.c **** 		{
1160:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmciIdleFunc(HSMCI_SR_UNRE | HSMCI_SR_OVRE | HSMCI_SR_DTOE | HSMCI_SR_DCRCE | HSMCI_SR_XFRDONE,
 1771              		.loc 1 1160 0
 1772 0012 1F4E     		ldr	r6, .L182+4
1161:../asf/sam/drivers/hsmci/hsmci.c **** 		}
1162:../asf/sam/drivers/hsmci/hsmci.c **** #endif
1163:../asf/sam/drivers/hsmci/hsmci.c **** 		sr = HSMCI->HSMCI_SR;
1164:../asf/sam/drivers/hsmci/hsmci.c **** 		if (sr & (HSMCI_SR_UNRE | HSMCI_SR_OVRE | \
 1773              		.loc 1 1164 0
 1774 0014 1F4D     		ldr	r5, .L182+8
 1775 0016 07E0     		b	.L174
 1776              	.LVL183:
 1777              	.L171:
1165:../asf/sam/drivers/hsmci/hsmci.c **** 		HSMCI_SR_DTOE | HSMCI_SR_DCRCE)) {
1166:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmci_debug("%s: DMA sr 0x%08x error\n\r",
1167:../asf/sam/drivers/hsmci/hsmci.c **** 			__func__, sr);
1168:../asf/sam/drivers/hsmci/hsmci.c **** 			hsmci_reset();
1169:../asf/sam/drivers/hsmci/hsmci.c **** 			// Disable XDMAC
1170:../asf/sam/drivers/hsmci/hsmci.c **** 			xdmac_channel_disable(XDMAC, CONF_HSMCI_XDMAC_CHANNEL);
ARM GAS  /tmp/cc9w1cGI.s 			page 64


1171:../asf/sam/drivers/hsmci/hsmci.c **** 			return false;
1172:../asf/sam/drivers/hsmci/hsmci.c **** 		}
1173:../asf/sam/drivers/hsmci/hsmci.c **** #if 1	// dc42
1174:../asf/sam/drivers/hsmci/hsmci.c **** 		if (checkDmaEnded)
 1778              		.loc 1 1174 0
 1779 0018 5C45     		cmp	r4, fp
 1780 001a 03D9     		bls	.L173
 1781              	.LBB114:
 1782              	.LBB115:
 383:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** }
 384:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 
 385:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /**
 386:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \brief Get Global channel status of given XDMAC.
 387:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \note: When set to 1, this bit indicates that the channel x is enabled.
 388:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****           If a channel disable request is issued, this bit remains asserted
 389:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****           until pending transaction is completed.
 390:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 391:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  */
 392:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** static inline uint32_t xdmac_channel_get_status(Xdmac *xdmac)
 393:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** {
 394:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 395:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	return xdmac->XDMAC_GS;
 396:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** }
 397:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 
 398:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /**
 399:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \brief Suspend the relevant channel's read.
 400:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
 401:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 402:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] channel_num  XDMA Channel number (range 0 to 23).
 403:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  */
 404:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** static inline void xdmac_channel_read_suspend(Xdmac *xdmac, uint32_t channel_num)
 405:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** {
 406:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 407:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	Assert(channel_num < XDMACCHID_NUMBER);
 408:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	xdmac->XDMAC_GRS |= XDMAC_GRS_RS0 << channel_num;
 409:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** }
 410:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 
 411:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /**
 412:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \brief Suspend the relevant channel's write.
 413:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
 414:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 415:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] channel_num  XDMA Channel number (range 0 to 23).
 416:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  */
 417:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** static inline void xdmac_channel_write_suspend(Xdmac *xdmac, uint32_t channel_num)
 418:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** {
 419:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 420:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	Assert(channel_num < XDMACCHID_NUMBER);
 421:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	xdmac->XDMAC_GWS |= XDMAC_GWS_WS0 << channel_num;
 422:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** }
 423:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 
 424:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /**
 425:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \brief Suspend the relevant channel's read & write.
 426:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
 427:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 428:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] channel_num  XDMA Channel number (range 0 to 23).
 429:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  */
 430:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** static inline void xdmac_channel_readwrite_suspend(Xdmac *xdmac, uint32_t channel_num)
ARM GAS  /tmp/cc9w1cGI.s 			page 65


 431:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** {
 432:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 433:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	Assert(channel_num < XDMACCHID_NUMBER);
 434:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	xdmac->XDMAC_GRWS = (XDMAC_GRWS_RWS0 << channel_num);
 435:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** }
 436:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 
 437:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /**
 438:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \brief Resume the relevant channel's read & write.
 439:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
 440:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 441:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] channel_num  XDMA Channel number (range 0 to 23).
 442:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  */
 443:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** static inline void xdmac_channel_readwrite_resume(Xdmac *xdmac, uint32_t channel_num)
 444:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** {
 445:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 446:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	Assert(channel_num < XDMACCHID_NUMBER);
 447:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	xdmac->XDMAC_GRWR = (XDMAC_GRWR_RWR0 << channel_num);
 448:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** }
 449:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 
 450:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /**
 451:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \brief Set software transfer request on the relevant channel.
 452:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
 453:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 454:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] channel_num  XDMA Channel number (range 0 to 23).
 455:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  */
 456:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** static inline void xdmac_channel_software_request(Xdmac *xdmac, uint32_t channel_num)
 457:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** {
 458:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 459:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	Assert(channel_num < XDMACCHID_NUMBER);
 460:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	xdmac->XDMAC_GSWR = (XDMAC_GSWR_SWREQ0 << channel_num);
 461:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** }
 462:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 
 463:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /**
 464:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \brief Get software transfer status of the relevant channel.
 465:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
 466:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 467:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  */
 468:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** static inline uint32_t xdmac_get_software_request_status(Xdmac *xdmac)
 469:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** {
 470:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 471:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	return xdmac->XDMAC_GSWS;
 472:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** }
 473:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 
 474:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /**
 475:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \brief Enable interrupt with mask on the relevant channel of given XDMA.
 476:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
 477:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 478:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] channel_num  XDMA Channel number (range 0 to 23).
 479:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] mask Interrupt mask.
 480:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  */
 481:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** static inline void xdmac_channel_enable_interrupt(Xdmac *xdmac, uint32_t channel_num, uint32_t mask
 482:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** {
 483:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 484:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	Assert(channel_num < XDMACCHID_NUMBER);
 485:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	xdmac->XDMAC_CHID[channel_num].XDMAC_CIE = mask;
 486:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** }
 487:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 
ARM GAS  /tmp/cc9w1cGI.s 			page 66


 488:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /**
 489:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \brief Disable interrupt with mask on the relevant channel of given XDMA.
 490:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
 491:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 492:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] channel_num  XDMA Channel number (range 0 to 23).
 493:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] mask Interrupt mask.
 494:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  */
 495:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** static inline void xdmac_channel_disable_interrupt(Xdmac *xdmac, uint32_t channel_num, uint32_t mas
 496:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** {
 497:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 498:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	Assert(channel_num < XDMACCHID_NUMBER);
 499:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	xdmac->XDMAC_CHID[channel_num].XDMAC_CID = mask;
 500:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** }
 501:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 
 502:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /**
 503:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \brief Get interrupt mask for the relevant channel of given XDMA.
 504:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
 505:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 506:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] channel_num  XDMA Channel number (range 0 to 23).
 507:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  */
 508:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** static inline uint32_t xdmac_channel_get_interrupt_mask(Xdmac *xdmac, uint32_t channel_num)
 509:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** {
 510:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 511:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	Assert(channel_num < XDMACCHID_NUMBER);
 512:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	return xdmac->XDMAC_CHID[channel_num].XDMAC_CIM;
 513:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** }
 514:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 
 515:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** /**
 516:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \brief Get interrupt status for the relevant channel of given XDMA.
 517:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  *
 518:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 519:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] channel_num  XDMA Channel number (range 0 to 23).
 520:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h ****  */
 521:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** static inline uint32_t xdmac_channel_get_interrupt_status(Xdmac *xdmac, uint32_t channel_num)
 522:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** {
 523:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 524:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	Assert(channel_num < XDMACCHID_NUMBER);
 525:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** 	return xdmac->XDMAC_CHID[channel_num].XDMAC_CIS;
 1783              		.loc 2 525 0
 1784 001c 1E4A     		ldr	r2, .L182+12
 1785 001e D26D     		ldr	r2, [r2, #92]
 1786              	.LVL184:
 1787              	.LBE115:
 1788              	.LBE114:
1175:../asf/sam/drivers/hsmci/hsmci.c **** 		{
1176:../asf/sam/drivers/hsmci/hsmci.c **** #else
1177:../asf/sam/drivers/hsmci/hsmci.c **** 		if (((uint32_t)hsmci_block_size * hsmci_nb_block) > hsmci_transfert_pos) {
1178:../asf/sam/drivers/hsmci/hsmci.c **** #endif
1179:../asf/sam/drivers/hsmci/hsmci.c **** 			// It is not the end of all transfers
1180:../asf/sam/drivers/hsmci/hsmci.c **** 			// then just wait end of DMA
1181:../asf/sam/drivers/hsmci/hsmci.c **** 			dma_sr = xdmac_channel_get_interrupt_status(XDMAC, CONF_HSMCI_XDMAC_CHANNEL);
1182:../asf/sam/drivers/hsmci/hsmci.c **** 			if (dma_sr & XDMAC_CIS_BIS) {
 1789              		.loc 1 1182 0
 1790 0020 D207     		lsls	r2, r2, #31
 1791 0022 30D4     		bmi	.L175
 1792              	.L173:
 1793              	.LBE113:
ARM GAS  /tmp/cc9w1cGI.s 			page 67


1183:../asf/sam/drivers/hsmci/hsmci.c **** 				return true;
1184:../asf/sam/drivers/hsmci/hsmci.c **** 			}
1185:../asf/sam/drivers/hsmci/hsmci.c **** 		}
1186:../asf/sam/drivers/hsmci/hsmci.c **** 	} while (!(sr & HSMCI_SR_XFRDONE));
 1794              		.loc 1 1186 0
 1795 0024 1B01     		lsls	r3, r3, #4
 1796              	.LVL185:
 1797 0026 2ED4     		bmi	.L175
 1798              	.LVL186:
 1799              	.L174:
 1800              	.LBB130:
1157:../asf/sam/drivers/hsmci/hsmci.c **** 		if (hsmciIdleFunc != NULL)
 1801              		.loc 1 1157 0
 1802 0028 BAF80020 		ldrh	r2, [r10]
1160:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 1803              		.loc 1 1160 0
 1804 002c 3046     		mov	r0, r6
1157:../asf/sam/drivers/hsmci/hsmci.c **** 		if (hsmciIdleFunc != NULL)
 1805              		.loc 1 1157 0
 1806 002e B9F80040 		ldrh	r4, [r9]
1158:../asf/sam/drivers/hsmci/hsmci.c **** 		{
 1807              		.loc 1 1158 0
 1808 0032 3B68     		ldr	r3, [r7]
1157:../asf/sam/drivers/hsmci/hsmci.c **** 		if (hsmciIdleFunc != NULL)
 1809              		.loc 1 1157 0
 1810 0034 04FB02F4 		mul	r4, r4, r2
 1811 0038 D8F800B0 		ldr	fp, [r8]
 1812              	.LVL187:
1158:../asf/sam/drivers/hsmci/hsmci.c **** 		{
 1813              		.loc 1 1158 0
 1814 003c 23B1     		cbz	r3, .L170
1160:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 1815              		.loc 1 1160 0
 1816 003e 5C45     		cmp	r4, fp
 1817 0040 94BF     		ite	ls
 1818 0042 0021     		movls	r1, #0
 1819 0044 0121     		movhi	r1, #1
 1820 0046 9847     		blx	r3
 1821              	.LVL188:
 1822              	.L170:
1163:../asf/sam/drivers/hsmci/hsmci.c **** 		if (sr & (HSMCI_SR_UNRE | HSMCI_SR_OVRE | \
 1823              		.loc 1 1163 0
 1824 0048 4FF08041 		mov	r1, #1073741824
 1825 004c 0B6C     		ldr	r3, [r1, #64]
 1826              	.LVL189:
1164:../asf/sam/drivers/hsmci/hsmci.c **** 		HSMCI_SR_DTOE | HSMCI_SR_DCRCE)) {
 1827              		.loc 1 1164 0
 1828 004e 2B42     		tst	r3, r5
 1829 0050 E2D0     		beq	.L171
 1830              	.LBB116:
 1831              	.LBB117:
 143:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t dtor = HSMCI->HSMCI_DTOR;
 1832              		.loc 1 143 0
 1833 0052 D1F804E0 		ldr	lr, [r1, #4]
 1834              	.LVL190:
 148:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_MR = mr;
 1835              		.loc 1 148 0
ARM GAS  /tmp/cc9w1cGI.s 			page 68


 1836 0056 4FF0800C 		mov	ip, #128
 144:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t sdcr = HSMCI->HSMCI_SDCR;
 1837              		.loc 1 144 0
 1838 005a 8868     		ldr	r0, [r1, #8]
 1839              	.LVL191:
 159:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 1840              		.loc 1 159 0
 1841 005c 0023     		movs	r3, #0
 1842              	.LVL192:
 145:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t cstor = HSMCI->HSMCI_CSTOR;
 1843              		.loc 1 145 0
 1844 005e CA68     		ldr	r2, [r1, #12]
 1845              	.LVL193:
 163:../asf/sam/drivers/hsmci/hsmci.c **** }
 1846              		.loc 1 163 0
 1847 0060 0525     		movs	r5, #5
 146:../asf/sam/drivers/hsmci/hsmci.c **** 	uint32_t cfg = HSMCI->HSMCI_CFG;
 1848              		.loc 1 146 0
 1849 0062 CF69     		ldr	r7, [r1, #28]
 1850              	.LVL194:
 1851              	.LBE117:
 1852              	.LBE116:
 1853              	.LBB121:
 1854              	.LBB122:
 382:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** }
 1855              		.loc 2 382 0
 1856 0064 0124     		movs	r4, #1
 1857              	.LVL195:
 1858              	.LBE122:
 1859              	.LBE121:
 1860              	.LBB125:
 1861              	.LBB118:
 147:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_CR = HSMCI_CR_SWRST;
 1862              		.loc 1 147 0
 1863 0066 4E6D     		ldr	r6, [r1, #84]
 1864              	.LVL196:
 148:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_MR = mr;
 1865              		.loc 1 148 0
 1866 0068 C1F800C0 		str	ip, [r1]
 149:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_DTOR = dtor;
 1867              		.loc 1 149 0
 1868 006c C1F804E0 		str	lr, [r1, #4]
 150:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_SDCR = sdcr;
 1869              		.loc 1 150 0
 1870 0070 8860     		str	r0, [r1, #8]
 1871              	.LBE118:
 1872              	.LBE125:
1171:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 1873              		.loc 1 1171 0
 1874 0072 1846     		mov	r0, r3
 1875              	.LVL197:
 1876              	.LBB126:
 1877              	.LBB119:
 151:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_CSTOR = cstor;
 1878              		.loc 1 151 0
 1879 0074 CA60     		str	r2, [r1, #12]
 1880              	.LVL198:
ARM GAS  /tmp/cc9w1cGI.s 			page 69


 1881              	.LBE119:
 1882              	.LBE126:
 1883              	.LBB127:
 1884              	.LBB123:
 382:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** }
 1885              		.loc 2 382 0
 1886 0076 084A     		ldr	r2, .L182+12
 1887              	.LVL199:
 1888              	.LBE123:
 1889              	.LBE127:
 1890              	.LBB128:
 1891              	.LBB120:
 152:../asf/sam/drivers/hsmci/hsmci.c **** 	HSMCI->HSMCI_CFG = cfg;
 1892              		.loc 1 152 0
 1893 0078 CF61     		str	r7, [r1, #28]
 1894              	.LVL200:
 153:../asf/sam/drivers/hsmci/hsmci.c **** #ifdef HSMCI_SR_DMADONE
 1895              		.loc 1 153 0
 1896 007a 4E65     		str	r6, [r1, #84]
 159:../asf/sam/drivers/hsmci/hsmci.c **** #endif
 1897              		.loc 1 159 0
 1898 007c 0B65     		str	r3, [r1, #80]
 163:../asf/sam/drivers/hsmci/hsmci.c **** }
 1899              		.loc 1 163 0
 1900 007e 0D60     		str	r5, [r1]
 1901              	.LVL201:
 1902              	.LBE120:
 1903              	.LBE128:
 1904              	.LBB129:
 1905              	.LBB124:
 382:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac/xdmac.h **** }
 1906              		.loc 2 382 0
 1907 0080 1462     		str	r4, [r2, #32]
 1908              	.LVL202:
 1909              	.LBE124:
 1910              	.LBE129:
1171:../asf/sam/drivers/hsmci/hsmci.c **** 		}
 1911              		.loc 1 1171 0
 1912 0082 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1913              	.LVL203:
 1914              	.L175:
1183:../asf/sam/drivers/hsmci/hsmci.c **** 			}
 1915              		.loc 1 1183 0
 1916 0086 0120     		movs	r0, #1
 1917              	.LBE130:
1187:../asf/sam/drivers/hsmci/hsmci.c **** 
1188:../asf/sam/drivers/hsmci/hsmci.c **** 	return true;
1189:../asf/sam/drivers/hsmci/hsmci.c **** }
 1918              		.loc 1 1189 0
 1919 0088 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1920              	.LVL204:
 1921              	.L183:
 1922              		.align	2
 1923              	.L182:
 1924 008c 00000000 		.word	.LANCHOR0
 1925 0090 000060C8 		.word	-933232640
 1926 0094 000060C0 		.word	-1067450368
ARM GAS  /tmp/cc9w1cGI.s 			page 70


 1927 0098 00800740 		.word	1074233344
 1928 009c 00000000 		.word	.LANCHOR2
 1929 00a0 00000000 		.word	.LANCHOR3
 1930 00a4 00000000 		.word	.LANCHOR1
 1931              		.cfi_endproc
 1932              	.LFE216:
 1933              		.size	hsmci_wait_end_of_write_blocks, .-hsmci_wait_end_of_write_blocks
 1934              		.section	.text.hsmci_wait_end_of_read_blocks,"ax",%progbits
 1935              		.align	1
 1936              		.p2align 2,,3
 1937              		.global	hsmci_wait_end_of_read_blocks
 1938              		.syntax unified
 1939              		.thumb
 1940              		.thumb_func
 1941              		.fpu fpv5-d16
 1942              		.type	hsmci_wait_end_of_read_blocks, %function
 1943              	hsmci_wait_end_of_read_blocks:
 1944              	.LFB218:
 1945              		.cfi_startproc
 1946              		@ args = 0, pretend = 0, frame = 0
 1947              		@ frame_needed = 0, uses_anonymous_args = 0
 1948              		@ link register save eliminated.
 1949 0000 FFF7FEBF 		b	hsmci_wait_end_of_write_blocks
 1950              		.cfi_endproc
 1951              	.LFE218:
 1952              		.size	hsmci_wait_end_of_read_blocks, .-hsmci_wait_end_of_read_blocks
 1953              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 1954              		.align	2
 1955              		.type	cpu_irq_critical_section_counter, %object
 1956              		.size	cpu_irq_critical_section_counter, 4
 1957              	cpu_irq_critical_section_counter:
 1958 0000 00000000 		.space	4
 1959              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 1960              		.type	cpu_irq_prev_interrupt_state, %object
 1961              		.size	cpu_irq_prev_interrupt_state, 1
 1962              	cpu_irq_prev_interrupt_state:
 1963 0000 00       		.space	1
 1964              		.section	.bss.hsmciIdleFunc,"aw",%nobits
 1965              		.align	2
 1966              		.set	.LANCHOR0,. + 0
 1967              		.type	hsmciIdleFunc, %object
 1968              		.size	hsmciIdleFunc, 4
 1969              	hsmciIdleFunc:
 1970 0000 00000000 		.space	4
 1971              		.section	.bss.hsmci_block_size,"aw",%nobits
 1972              		.align	1
 1973              		.set	.LANCHOR2,. + 0
 1974              		.type	hsmci_block_size, %object
 1975              		.size	hsmci_block_size, 2
 1976              	hsmci_block_size:
 1977 0000 0000     		.space	2
 1978              		.section	.bss.hsmci_nb_block,"aw",%nobits
 1979              		.align	1
 1980              		.set	.LANCHOR3,. + 0
 1981              		.type	hsmci_nb_block, %object
 1982              		.size	hsmci_nb_block, 2
 1983              	hsmci_nb_block:
ARM GAS  /tmp/cc9w1cGI.s 			page 71


 1984 0000 0000     		.space	2
 1985              		.section	.bss.hsmci_transfert_pos,"aw",%nobits
 1986              		.align	2
 1987              		.set	.LANCHOR1,. + 0
 1988              		.type	hsmci_transfert_pos, %object
 1989              		.size	hsmci_transfert_pos, 4
 1990              	hsmci_transfert_pos:
 1991 0000 00000000 		.space	4
 1992              		.text
 1993              	.Letext0:
 1994              		.file 3 "/usr/include/newlib/machine/_default_types.h"
 1995              		.file 4 "/usr/include/newlib/sys/_stdint.h"
 1996              		.file 5 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 1997              		.file 6 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 1998              		.file 7 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/hsmc
 1999              		.file 8 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/xdma
 2000              		.file 9 "/usr/include/newlib/sys/lock.h"
 2001              		.file 10 "/usr/include/newlib/sys/_types.h"
 2002              		.file 11 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 2003              		.file 12 "/usr/include/newlib/sys/reent.h"
 2004              		.file 13 "/usr/include/newlib/stdlib.h"
 2005              		.file 14 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 2006              		.file 15 "../asf/sam/drivers/hsmci/../../../../libraries/Storage/sd_mmc_protocol.h"
 2007              		.file 16 "../asf/sam/drivers/hsmci/hsmci.h"
 2008              		.file 17 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h"
 2009              		.file 18 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h"
 2010              		.file 19 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/pmc/pmc.h"
 2011              		.file 20 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h"
 2012              		.section	.debug_info,"",%progbits
 2013              	.Ldebug_info0:
 2014 0000 9B180000 		.4byte	0x189b
 2015 0004 0400     		.2byte	0x4
 2016 0006 00000000 		.4byte	.Ldebug_abbrev0
 2017 000a 04       		.byte	0x4
 2018 000b 01       		.uleb128 0x1
 2019 000c BC0A0000 		.4byte	.LASF273
 2020 0010 0C       		.byte	0xc
 2021 0011 DB090000 		.4byte	.LASF274
 2022 0015 AB0B0000 		.4byte	.LASF275
 2023 0019 90010000 		.4byte	.Ldebug_ranges0+0x190
 2024 001d 00000000 		.4byte	0
 2025 0021 00000000 		.4byte	.Ldebug_line0
 2026 0025 02       		.uleb128 0x2
 2027 0026 04       		.byte	0x4
 2028 0027 07       		.byte	0x7
 2029 0028 CA000000 		.4byte	.LASF0
 2030 002c 03       		.uleb128 0x3
 2031 002d 04       		.byte	0x4
 2032 002e 05       		.byte	0x5
 2033 002f 696E7400 		.ascii	"int\000"
 2034 0033 02       		.uleb128 0x2
 2035 0034 01       		.byte	0x1
 2036 0035 06       		.byte	0x6
 2037 0036 200C0000 		.4byte	.LASF1
 2038 003a 04       		.uleb128 0x4
 2039 003b FC080000 		.4byte	.LASF4
 2040 003f 03       		.byte	0x3
ARM GAS  /tmp/cc9w1cGI.s 			page 72


 2041 0040 1D       		.byte	0x1d
 2042 0041 45000000 		.4byte	0x45
 2043 0045 02       		.uleb128 0x2
 2044 0046 01       		.byte	0x1
 2045 0047 08       		.byte	0x8
 2046 0048 3F0A0000 		.4byte	.LASF2
 2047 004c 02       		.uleb128 0x2
 2048 004d 02       		.byte	0x2
 2049 004e 05       		.byte	0x5
 2050 004f 21010000 		.4byte	.LASF3
 2051 0053 04       		.uleb128 0x4
 2052 0054 73030000 		.4byte	.LASF5
 2053 0058 03       		.byte	0x3
 2054 0059 2B       		.byte	0x2b
 2055 005a 5E000000 		.4byte	0x5e
 2056 005e 02       		.uleb128 0x2
 2057 005f 02       		.byte	0x2
 2058 0060 07       		.byte	0x7
 2059 0061 440C0000 		.4byte	.LASF6
 2060 0065 04       		.uleb128 0x4
 2061 0066 05010000 		.4byte	.LASF7
 2062 006a 03       		.byte	0x3
 2063 006b 3F       		.byte	0x3f
 2064 006c 70000000 		.4byte	0x70
 2065 0070 02       		.uleb128 0x2
 2066 0071 04       		.byte	0x4
 2067 0072 05       		.byte	0x5
 2068 0073 17080000 		.4byte	.LASF8
 2069 0077 04       		.uleb128 0x4
 2070 0078 660A0000 		.4byte	.LASF9
 2071 007c 03       		.byte	0x3
 2072 007d 41       		.byte	0x41
 2073 007e 82000000 		.4byte	0x82
 2074 0082 02       		.uleb128 0x2
 2075 0083 04       		.byte	0x4
 2076 0084 07       		.byte	0x7
 2077 0085 7E090000 		.4byte	.LASF10
 2078 0089 02       		.uleb128 0x2
 2079 008a 08       		.byte	0x8
 2080 008b 05       		.byte	0x5
 2081 008c 20060000 		.4byte	.LASF11
 2082 0090 02       		.uleb128 0x2
 2083 0091 08       		.byte	0x8
 2084 0092 07       		.byte	0x7
 2085 0093 FA020000 		.4byte	.LASF12
 2086 0097 04       		.uleb128 0x4
 2087 0098 99050000 		.4byte	.LASF13
 2088 009c 04       		.byte	0x4
 2089 009d 18       		.byte	0x18
 2090 009e 3A000000 		.4byte	0x3a
 2091 00a2 04       		.uleb128 0x4
 2092 00a3 B5070000 		.4byte	.LASF14
 2093 00a7 04       		.byte	0x4
 2094 00a8 24       		.byte	0x24
 2095 00a9 53000000 		.4byte	0x53
 2096 00ad 04       		.uleb128 0x4
 2097 00ae D3090000 		.4byte	.LASF15
ARM GAS  /tmp/cc9w1cGI.s 			page 73


 2098 00b2 04       		.byte	0x4
 2099 00b3 2C       		.byte	0x2c
 2100 00b4 65000000 		.4byte	0x65
 2101 00b8 05       		.uleb128 0x5
 2102 00b9 AD000000 		.4byte	0xad
 2103 00bd 04       		.uleb128 0x4
 2104 00be 58020000 		.4byte	.LASF16
 2105 00c2 04       		.byte	0x4
 2106 00c3 30       		.byte	0x30
 2107 00c4 77000000 		.4byte	0x77
 2108 00c8 05       		.uleb128 0x5
 2109 00c9 BD000000 		.4byte	0xbd
 2110 00cd 06       		.uleb128 0x6
 2111 00ce C8000000 		.4byte	0xc8
 2112 00d2 06       		.uleb128 0x6
 2113 00d3 BD000000 		.4byte	0xbd
 2114 00d7 07       		.uleb128 0x7
 2115 00d8 04       		.byte	0x4
 2116 00d9 02       		.uleb128 0x2
 2117 00da 04       		.byte	0x4
 2118 00db 07       		.byte	0x7
 2119 00dc 6F090000 		.4byte	.LASF17
 2120 00e0 08       		.uleb128 0x8
 2121 00e1 CD000000 		.4byte	0xcd
 2122 00e5 F0000000 		.4byte	0xf0
 2123 00e9 09       		.uleb128 0x9
 2124 00ea D9000000 		.4byte	0xd9
 2125 00ee 01       		.byte	0x1
 2126 00ef 00       		.byte	0
 2127 00f0 06       		.uleb128 0x6
 2128 00f1 E0000000 		.4byte	0xe0
 2129 00f5 05       		.uleb128 0x5
 2130 00f6 F0000000 		.4byte	0xf0
 2131 00fa 05       		.uleb128 0x5
 2132 00fb F0000000 		.4byte	0xf0
 2133 00ff 08       		.uleb128 0x8
 2134 0100 CD000000 		.4byte	0xcd
 2135 0104 0F010000 		.4byte	0x10f
 2136 0108 09       		.uleb128 0x9
 2137 0109 D9000000 		.4byte	0xd9
 2138 010d 03       		.byte	0x3
 2139 010e 00       		.byte	0
 2140 010f 06       		.uleb128 0x6
 2141 0110 FF000000 		.4byte	0xff
 2142 0114 05       		.uleb128 0x5
 2143 0115 0F010000 		.4byte	0x10f
 2144 0119 0A       		.uleb128 0xa
 2145 011a 20080000 		.4byte	.LASF18
 2146 011e 05       		.byte	0x5
 2147 011f 6508     		.2byte	0x865
 2148 0121 B8000000 		.4byte	0xb8
 2149 0125 0B       		.uleb128 0xb
 2150 0126 1A000000 		.4byte	.LASF19
 2151 012a 06       		.byte	0x6
 2152 012b 3A       		.byte	0x3a
 2153 012c BD000000 		.4byte	0xbd
 2154 0130 08       		.uleb128 0x8
ARM GAS  /tmp/cc9w1cGI.s 			page 74


 2155 0131 CD000000 		.4byte	0xcd
 2156 0135 40010000 		.4byte	0x140
 2157 0139 09       		.uleb128 0x9
 2158 013a D9000000 		.4byte	0xd9
 2159 013e 02       		.byte	0x2
 2160 013f 00       		.byte	0
 2161 0140 06       		.uleb128 0x6
 2162 0141 30010000 		.4byte	0x130
 2163 0145 05       		.uleb128 0x5
 2164 0146 40010000 		.4byte	0x140
 2165 014a 0C       		.uleb128 0xc
 2166 014b 0006     		.2byte	0x600
 2167 014d 07       		.byte	0x7
 2168 014e 38       		.byte	0x38
 2169 014f 69020000 		.4byte	0x269
 2170 0153 0D       		.uleb128 0xd
 2171 0154 17060000 		.4byte	.LASF20
 2172 0158 07       		.byte	0x7
 2173 0159 39       		.byte	0x39
 2174 015a C8000000 		.4byte	0xc8
 2175 015e 00       		.byte	0
 2176 015f 0D       		.uleb128 0xd
 2177 0160 73010000 		.4byte	.LASF21
 2178 0164 07       		.byte	0x7
 2179 0165 3A       		.byte	0x3a
 2180 0166 C8000000 		.4byte	0xc8
 2181 016a 04       		.byte	0x4
 2182 016b 0D       		.uleb128 0xd
 2183 016c 47050000 		.4byte	.LASF22
 2184 0170 07       		.byte	0x7
 2185 0171 3B       		.byte	0x3b
 2186 0172 C8000000 		.4byte	0xc8
 2187 0176 08       		.byte	0x8
 2188 0177 0D       		.uleb128 0xd
 2189 0178 770C0000 		.4byte	.LASF23
 2190 017c 07       		.byte	0x7
 2191 017d 3C       		.byte	0x3c
 2192 017e C8000000 		.4byte	0xc8
 2193 0182 0C       		.byte	0xc
 2194 0183 0D       		.uleb128 0xd
 2195 0184 75040000 		.4byte	.LASF24
 2196 0188 07       		.byte	0x7
 2197 0189 3D       		.byte	0x3d
 2198 018a C8000000 		.4byte	0xc8
 2199 018e 10       		.byte	0x10
 2200 018f 0D       		.uleb128 0xd
 2201 0190 46040000 		.4byte	.LASF25
 2202 0194 07       		.byte	0x7
 2203 0195 3E       		.byte	0x3e
 2204 0196 C8000000 		.4byte	0xc8
 2205 019a 14       		.byte	0x14
 2206 019b 0D       		.uleb128 0xd
 2207 019c 710A0000 		.4byte	.LASF26
 2208 01a0 07       		.byte	0x7
 2209 01a1 3F       		.byte	0x3f
 2210 01a2 C8000000 		.4byte	0xc8
 2211 01a6 18       		.byte	0x18
ARM GAS  /tmp/cc9w1cGI.s 			page 75


 2212 01a7 0D       		.uleb128 0xd
 2213 01a8 1B0A0000 		.4byte	.LASF27
 2214 01ac 07       		.byte	0x7
 2215 01ad 40       		.byte	0x40
 2216 01ae C8000000 		.4byte	0xc8
 2217 01b2 1C       		.byte	0x1c
 2218 01b3 0D       		.uleb128 0xd
 2219 01b4 D0010000 		.4byte	.LASF28
 2220 01b8 07       		.byte	0x7
 2221 01b9 41       		.byte	0x41
 2222 01ba 14010000 		.4byte	0x114
 2223 01be 20       		.byte	0x20
 2224 01bf 0D       		.uleb128 0xd
 2225 01c0 C9090000 		.4byte	.LASF29
 2226 01c4 07       		.byte	0x7
 2227 01c5 42       		.byte	0x42
 2228 01c6 CD000000 		.4byte	0xcd
 2229 01ca 30       		.byte	0x30
 2230 01cb 0D       		.uleb128 0xd
 2231 01cc 8D070000 		.4byte	.LASF30
 2232 01d0 07       		.byte	0x7
 2233 01d1 43       		.byte	0x43
 2234 01d2 C8000000 		.4byte	0xc8
 2235 01d6 34       		.byte	0x34
 2236 01d7 0D       		.uleb128 0xd
 2237 01d8 11070000 		.4byte	.LASF31
 2238 01dc 07       		.byte	0x7
 2239 01dd 44       		.byte	0x44
 2240 01de F5000000 		.4byte	0xf5
 2241 01e2 38       		.byte	0x38
 2242 01e3 0D       		.uleb128 0xd
 2243 01e4 AC060000 		.4byte	.LASF32
 2244 01e8 07       		.byte	0x7
 2245 01e9 45       		.byte	0x45
 2246 01ea CD000000 		.4byte	0xcd
 2247 01ee 40       		.byte	0x40
 2248 01ef 0D       		.uleb128 0xd
 2249 01f0 B6030000 		.4byte	.LASF33
 2250 01f4 07       		.byte	0x7
 2251 01f5 46       		.byte	0x46
 2252 01f6 C8000000 		.4byte	0xc8
 2253 01fa 44       		.byte	0x44
 2254 01fb 0D       		.uleb128 0xd
 2255 01fc D4020000 		.4byte	.LASF34
 2256 0200 07       		.byte	0x7
 2257 0201 47       		.byte	0x47
 2258 0202 C8000000 		.4byte	0xc8
 2259 0206 48       		.byte	0x48
 2260 0207 0D       		.uleb128 0xd
 2261 0208 F9030000 		.4byte	.LASF35
 2262 020c 07       		.byte	0x7
 2263 020d 48       		.byte	0x48
 2264 020e CD000000 		.4byte	0xcd
 2265 0212 4C       		.byte	0x4c
 2266 0213 0D       		.uleb128 0xd
 2267 0214 2A000000 		.4byte	.LASF36
 2268 0218 07       		.byte	0x7
ARM GAS  /tmp/cc9w1cGI.s 			page 76


 2269 0219 49       		.byte	0x49
 2270 021a C8000000 		.4byte	0xc8
 2271 021e 50       		.byte	0x50
 2272 021f 0D       		.uleb128 0xd
 2273 0220 E8030000 		.4byte	.LASF37
 2274 0224 07       		.byte	0x7
 2275 0225 4A       		.byte	0x4a
 2276 0226 C8000000 		.4byte	0xc8
 2277 022a 54       		.byte	0x54
 2278 022b 0D       		.uleb128 0xd
 2279 022c 1B070000 		.4byte	.LASF38
 2280 0230 07       		.byte	0x7
 2281 0231 4B       		.byte	0x4b
 2282 0232 7E020000 		.4byte	0x27e
 2283 0236 58       		.byte	0x58
 2284 0237 0D       		.uleb128 0xd
 2285 0238 DE070000 		.4byte	.LASF39
 2286 023c 07       		.byte	0x7
 2287 023d 4C       		.byte	0x4c
 2288 023e C8000000 		.4byte	0xc8
 2289 0242 E4       		.byte	0xe4
 2290 0243 0D       		.uleb128 0xd
 2291 0244 8C000000 		.4byte	.LASF40
 2292 0248 07       		.byte	0x7
 2293 0249 4D       		.byte	0x4d
 2294 024a CD000000 		.4byte	0xcd
 2295 024e E8       		.byte	0xe8
 2296 024f 0D       		.uleb128 0xd
 2297 0250 25070000 		.4byte	.LASF41
 2298 0254 07       		.byte	0x7
 2299 0255 4E       		.byte	0x4e
 2300 0256 98020000 		.4byte	0x298
 2301 025a EC       		.byte	0xec
 2302 025b 0E       		.uleb128 0xe
 2303 025c A0070000 		.4byte	.LASF42
 2304 0260 07       		.byte	0x7
 2305 0261 4F       		.byte	0x4f
 2306 0262 AD020000 		.4byte	0x2ad
 2307 0266 0002     		.2byte	0x200
 2308 0268 00       		.byte	0
 2309 0269 08       		.uleb128 0x8
 2310 026a CD000000 		.4byte	0xcd
 2311 026e 79020000 		.4byte	0x279
 2312 0272 09       		.uleb128 0x9
 2313 0273 D9000000 		.4byte	0xd9
 2314 0277 22       		.byte	0x22
 2315 0278 00       		.byte	0
 2316 0279 06       		.uleb128 0x6
 2317 027a 69020000 		.4byte	0x269
 2318 027e 05       		.uleb128 0x5
 2319 027f 79020000 		.4byte	0x279
 2320 0283 08       		.uleb128 0x8
 2321 0284 CD000000 		.4byte	0xcd
 2322 0288 93020000 		.4byte	0x293
 2323 028c 09       		.uleb128 0x9
 2324 028d D9000000 		.4byte	0xd9
 2325 0291 44       		.byte	0x44
ARM GAS  /tmp/cc9w1cGI.s 			page 77


 2326 0292 00       		.byte	0
 2327 0293 06       		.uleb128 0x6
 2328 0294 83020000 		.4byte	0x283
 2329 0298 05       		.uleb128 0x5
 2330 0299 93020000 		.4byte	0x293
 2331 029d 08       		.uleb128 0x8
 2332 029e C8000000 		.4byte	0xc8
 2333 02a2 AD020000 		.4byte	0x2ad
 2334 02a6 09       		.uleb128 0x9
 2335 02a7 D9000000 		.4byte	0xd9
 2336 02ab FF       		.byte	0xff
 2337 02ac 00       		.byte	0
 2338 02ad 05       		.uleb128 0x5
 2339 02ae 9D020000 		.4byte	0x29d
 2340 02b2 04       		.uleb128 0x4
 2341 02b3 42000000 		.4byte	.LASF43
 2342 02b7 07       		.byte	0x7
 2343 02b8 50       		.byte	0x50
 2344 02b9 4A010000 		.4byte	0x14a
 2345 02bd 0F       		.uleb128 0xf
 2346 02be 40       		.byte	0x40
 2347 02bf 08       		.byte	0x8
 2348 02c0 38       		.byte	0x38
 2349 02c1 7A030000 		.4byte	0x37a
 2350 02c5 0D       		.uleb128 0xd
 2351 02c6 96010000 		.4byte	.LASF44
 2352 02ca 08       		.byte	0x8
 2353 02cb 39       		.byte	0x39
 2354 02cc C8000000 		.4byte	0xc8
 2355 02d0 00       		.byte	0
 2356 02d1 0D       		.uleb128 0xd
 2357 02d2 8C010000 		.4byte	.LASF45
 2358 02d6 08       		.byte	0x8
 2359 02d7 3A       		.byte	0x3a
 2360 02d8 C8000000 		.4byte	0xc8
 2361 02dc 04       		.byte	0x4
 2362 02dd 0D       		.uleb128 0xd
 2363 02de B8010000 		.4byte	.LASF46
 2364 02e2 08       		.byte	0x8
 2365 02e3 3B       		.byte	0x3b
 2366 02e4 C8000000 		.4byte	0xc8
 2367 02e8 08       		.byte	0x8
 2368 02e9 0D       		.uleb128 0xd
 2369 02ea AB070000 		.4byte	.LASF47
 2370 02ee 08       		.byte	0x8
 2371 02ef 3C       		.byte	0x3c
 2372 02f0 CD000000 		.4byte	0xcd
 2373 02f4 0C       		.byte	0xc
 2374 02f5 0D       		.uleb128 0xd
 2375 02f6 050A0000 		.4byte	.LASF48
 2376 02fa 08       		.byte	0x8
 2377 02fb 3D       		.byte	0x3d
 2378 02fc C8000000 		.4byte	0xc8
 2379 0300 10       		.byte	0x10
 2380 0301 0D       		.uleb128 0xd
 2381 0302 570C0000 		.4byte	.LASF49
 2382 0306 08       		.byte	0x8
ARM GAS  /tmp/cc9w1cGI.s 			page 78


 2383 0307 3E       		.byte	0x3e
 2384 0308 C8000000 		.4byte	0xc8
 2385 030c 14       		.byte	0x14
 2386 030d 0D       		.uleb128 0xd
 2387 030e 28050000 		.4byte	.LASF50
 2388 0312 08       		.byte	0x8
 2389 0313 3F       		.byte	0x3f
 2390 0314 C8000000 		.4byte	0xc8
 2391 0318 18       		.byte	0x18
 2392 0319 0D       		.uleb128 0xd
 2393 031a 33050000 		.4byte	.LASF51
 2394 031e 08       		.byte	0x8
 2395 031f 40       		.byte	0x40
 2396 0320 C8000000 		.4byte	0xc8
 2397 0324 1C       		.byte	0x1c
 2398 0325 0D       		.uleb128 0xd
 2399 0326 97000000 		.4byte	.LASF52
 2400 032a 08       		.byte	0x8
 2401 032b 41       		.byte	0x41
 2402 032c C8000000 		.4byte	0xc8
 2403 0330 20       		.byte	0x20
 2404 0331 0D       		.uleb128 0xd
 2405 0332 3A080000 		.4byte	.LASF53
 2406 0336 08       		.byte	0x8
 2407 0337 42       		.byte	0x42
 2408 0338 C8000000 		.4byte	0xc8
 2409 033c 24       		.byte	0x24
 2410 033d 0D       		.uleb128 0xd
 2411 033e 6A010000 		.4byte	.LASF54
 2412 0342 08       		.byte	0x8
 2413 0343 43       		.byte	0x43
 2414 0344 C8000000 		.4byte	0xc8
 2415 0348 28       		.byte	0x28
 2416 0349 0D       		.uleb128 0xd
 2417 034a 2B010000 		.4byte	.LASF55
 2418 034e 08       		.byte	0x8
 2419 034f 44       		.byte	0x44
 2420 0350 C8000000 		.4byte	0xc8
 2421 0354 2C       		.byte	0x2c
 2422 0355 0D       		.uleb128 0xd
 2423 0356 90060000 		.4byte	.LASF56
 2424 035a 08       		.byte	0x8
 2425 035b 45       		.byte	0x45
 2426 035c C8000000 		.4byte	0xc8
 2427 0360 30       		.byte	0x30
 2428 0361 0D       		.uleb128 0xd
 2429 0362 78070000 		.4byte	.LASF57
 2430 0366 08       		.byte	0x8
 2431 0367 46       		.byte	0x46
 2432 0368 C8000000 		.4byte	0xc8
 2433 036c 34       		.byte	0x34
 2434 036d 0D       		.uleb128 0xd
 2435 036e 11070000 		.4byte	.LASF31
 2436 0372 08       		.byte	0x8
 2437 0373 47       		.byte	0x47
 2438 0374 FA000000 		.4byte	0xfa
 2439 0378 38       		.byte	0x38
ARM GAS  /tmp/cc9w1cGI.s 			page 79


 2440 0379 00       		.byte	0
 2441 037a 04       		.uleb128 0x4
 2442 037b 8F050000 		.4byte	.LASF58
 2443 037f 08       		.byte	0x8
 2444 0380 48       		.byte	0x48
 2445 0381 BD020000 		.4byte	0x2bd
 2446 0385 0C       		.uleb128 0xc
 2447 0386 5006     		.2byte	0x650
 2448 0388 08       		.byte	0x8
 2449 0389 4B       		.byte	0x4b
 2450 038a 73040000 		.4byte	0x473
 2451 038e 0D       		.uleb128 0xd
 2452 038f 8E0B0000 		.4byte	.LASF59
 2453 0393 08       		.byte	0x8
 2454 0394 4C       		.byte	0x4c
 2455 0395 C8000000 		.4byte	0xc8
 2456 0399 00       		.byte	0
 2457 039a 0D       		.uleb128 0xd
 2458 039b 2E060000 		.4byte	.LASF60
 2459 039f 08       		.byte	0x8
 2460 03a0 4D       		.byte	0x4d
 2461 03a1 CD000000 		.4byte	0xcd
 2462 03a5 04       		.byte	0x4
 2463 03a6 0D       		.uleb128 0xd
 2464 03a7 16010000 		.4byte	.LASF61
 2465 03ab 08       		.byte	0x8
 2466 03ac 4E       		.byte	0x4e
 2467 03ad C8000000 		.4byte	0xc8
 2468 03b1 08       		.byte	0x8
 2469 03b2 0D       		.uleb128 0xd
 2470 03b3 EA080000 		.4byte	.LASF62
 2471 03b7 08       		.byte	0x8
 2472 03b8 4F       		.byte	0x4f
 2473 03b9 C8000000 		.4byte	0xc8
 2474 03bd 0C       		.byte	0xc
 2475 03be 0D       		.uleb128 0xd
 2476 03bf E0080000 		.4byte	.LASF63
 2477 03c3 08       		.byte	0x8
 2478 03c4 50       		.byte	0x50
 2479 03c5 C8000000 		.4byte	0xc8
 2480 03c9 10       		.byte	0x10
 2481 03ca 0D       		.uleb128 0xd
 2482 03cb 0B090000 		.4byte	.LASF64
 2483 03cf 08       		.byte	0x8
 2484 03d0 51       		.byte	0x51
 2485 03d1 CD000000 		.4byte	0xcd
 2486 03d5 14       		.byte	0x14
 2487 03d6 0D       		.uleb128 0xd
 2488 03d7 2F090000 		.4byte	.LASF65
 2489 03db 08       		.byte	0x8
 2490 03dc 52       		.byte	0x52
 2491 03dd CD000000 		.4byte	0xcd
 2492 03e1 18       		.byte	0x18
 2493 03e2 0D       		.uleb128 0xd
 2494 03e3 0C040000 		.4byte	.LASF66
 2495 03e7 08       		.byte	0x8
 2496 03e8 53       		.byte	0x53
ARM GAS  /tmp/cc9w1cGI.s 			page 80


 2497 03e9 C8000000 		.4byte	0xc8
 2498 03ed 1C       		.byte	0x1c
 2499 03ee 0D       		.uleb128 0xd
 2500 03ef 5D0B0000 		.4byte	.LASF67
 2501 03f3 08       		.byte	0x8
 2502 03f4 54       		.byte	0x54
 2503 03f5 C8000000 		.4byte	0xc8
 2504 03f9 20       		.byte	0x20
 2505 03fa 0D       		.uleb128 0xd
 2506 03fb 3E050000 		.4byte	.LASF68
 2507 03ff 08       		.byte	0x8
 2508 0400 55       		.byte	0x55
 2509 0401 CD000000 		.4byte	0xcd
 2510 0405 24       		.byte	0x24
 2511 0406 0D       		.uleb128 0xd
 2512 0407 3C040000 		.4byte	.LASF69
 2513 040b 08       		.byte	0x8
 2514 040c 56       		.byte	0x56
 2515 040d C8000000 		.4byte	0xc8
 2516 0411 28       		.byte	0x28
 2517 0412 0D       		.uleb128 0xd
 2518 0413 E9070000 		.4byte	.LASF70
 2519 0417 08       		.byte	0x8
 2520 0418 57       		.byte	0x57
 2521 0419 C8000000 		.4byte	0xc8
 2522 041d 2C       		.byte	0x2c
 2523 041e 0D       		.uleb128 0xd
 2524 041f B70C0000 		.4byte	.LASF71
 2525 0423 08       		.byte	0x8
 2526 0424 58       		.byte	0x58
 2527 0425 C8000000 		.4byte	0xc8
 2528 0429 30       		.byte	0x30
 2529 042a 0D       		.uleb128 0xd
 2530 042b 3A070000 		.4byte	.LASF72
 2531 042f 08       		.byte	0x8
 2532 0430 59       		.byte	0x59
 2533 0431 C8000000 		.4byte	0xc8
 2534 0435 34       		.byte	0x34
 2535 0436 0D       		.uleb128 0xd
 2536 0437 E20C0000 		.4byte	.LASF73
 2537 043b 08       		.byte	0x8
 2538 043c 5A       		.byte	0x5a
 2539 043d C8000000 		.4byte	0xc8
 2540 0441 38       		.byte	0x38
 2541 0442 0D       		.uleb128 0xd
 2542 0443 ED0C0000 		.4byte	.LASF74
 2543 0447 08       		.byte	0x8
 2544 0448 5B       		.byte	0x5b
 2545 0449 CD000000 		.4byte	0xcd
 2546 044d 3C       		.byte	0x3c
 2547 044e 0D       		.uleb128 0xd
 2548 044f AC0C0000 		.4byte	.LASF75
 2549 0453 08       		.byte	0x8
 2550 0454 5C       		.byte	0x5c
 2551 0455 C8000000 		.4byte	0xc8
 2552 0459 40       		.byte	0x40
 2553 045a 0D       		.uleb128 0xd
ARM GAS  /tmp/cc9w1cGI.s 			page 81


 2554 045b 11070000 		.4byte	.LASF31
 2555 045f 08       		.byte	0x8
 2556 0460 5D       		.byte	0x5d
 2557 0461 45010000 		.4byte	0x145
 2558 0465 44       		.byte	0x44
 2559 0466 0D       		.uleb128 0xd
 2560 0467 A0020000 		.4byte	.LASF76
 2561 046b 08       		.byte	0x8
 2562 046c 5E       		.byte	0x5e
 2563 046d 73040000 		.4byte	0x473
 2564 0471 50       		.byte	0x50
 2565 0472 00       		.byte	0
 2566 0473 08       		.uleb128 0x8
 2567 0474 7A030000 		.4byte	0x37a
 2568 0478 83040000 		.4byte	0x483
 2569 047c 09       		.uleb128 0x9
 2570 047d D9000000 		.4byte	0xd9
 2571 0481 17       		.byte	0x17
 2572 0482 00       		.byte	0
 2573 0483 04       		.uleb128 0x4
 2574 0484 F3070000 		.4byte	.LASF77
 2575 0488 08       		.byte	0x8
 2576 0489 5F       		.byte	0x5f
 2577 048a 85030000 		.4byte	0x385
 2578 048e 04       		.uleb128 0x4
 2579 048f 7C0A0000 		.4byte	.LASF78
 2580 0493 09       		.byte	0x9
 2581 0494 07       		.byte	0x7
 2582 0495 2C000000 		.4byte	0x2c
 2583 0499 04       		.uleb128 0x4
 2584 049a 820C0000 		.4byte	.LASF79
 2585 049e 0A       		.byte	0xa
 2586 049f 2C       		.byte	0x2c
 2587 04a0 70000000 		.4byte	0x70
 2588 04a4 04       		.uleb128 0x4
 2589 04a5 A0010000 		.4byte	.LASF80
 2590 04a9 0A       		.byte	0xa
 2591 04aa 72       		.byte	0x72
 2592 04ab 70000000 		.4byte	0x70
 2593 04af 10       		.uleb128 0x10
 2594 04b0 C2090000 		.4byte	.LASF81
 2595 04b4 0B       		.byte	0xb
 2596 04b5 6501     		.2byte	0x165
 2597 04b7 25000000 		.4byte	0x25
 2598 04bb 11       		.uleb128 0x11
 2599 04bc 04       		.byte	0x4
 2600 04bd 0A       		.byte	0xa
 2601 04be A6       		.byte	0xa6
 2602 04bf DA040000 		.4byte	0x4da
 2603 04c3 12       		.uleb128 0x12
 2604 04c4 89050000 		.4byte	.LASF82
 2605 04c8 0A       		.byte	0xa
 2606 04c9 A8       		.byte	0xa8
 2607 04ca AF040000 		.4byte	0x4af
 2608 04ce 12       		.uleb128 0x12
 2609 04cf A4080000 		.4byte	.LASF83
 2610 04d3 0A       		.byte	0xa
ARM GAS  /tmp/cc9w1cGI.s 			page 82


 2611 04d4 A9       		.byte	0xa9
 2612 04d5 DA040000 		.4byte	0x4da
 2613 04d9 00       		.byte	0
 2614 04da 08       		.uleb128 0x8
 2615 04db 45000000 		.4byte	0x45
 2616 04df EA040000 		.4byte	0x4ea
 2617 04e3 09       		.uleb128 0x9
 2618 04e4 D9000000 		.4byte	0xd9
 2619 04e8 03       		.byte	0x3
 2620 04e9 00       		.byte	0
 2621 04ea 0F       		.uleb128 0xf
 2622 04eb 08       		.byte	0x8
 2623 04ec 0A       		.byte	0xa
 2624 04ed A3       		.byte	0xa3
 2625 04ee 0B050000 		.4byte	0x50b
 2626 04f2 0D       		.uleb128 0xd
 2627 04f3 7C010000 		.4byte	.LASF84
 2628 04f7 0A       		.byte	0xa
 2629 04f8 A5       		.byte	0xa5
 2630 04f9 2C000000 		.4byte	0x2c
 2631 04fd 00       		.byte	0
 2632 04fe 0D       		.uleb128 0xd
 2633 04ff 29040000 		.4byte	.LASF85
 2634 0503 0A       		.byte	0xa
 2635 0504 AA       		.byte	0xaa
 2636 0505 BB040000 		.4byte	0x4bb
 2637 0509 04       		.byte	0x4
 2638 050a 00       		.byte	0
 2639 050b 04       		.uleb128 0x4
 2640 050c CE060000 		.4byte	.LASF86
 2641 0510 0A       		.byte	0xa
 2642 0511 AB       		.byte	0xab
 2643 0512 EA040000 		.4byte	0x4ea
 2644 0516 04       		.uleb128 0x4
 2645 0517 00000000 		.4byte	.LASF87
 2646 051b 0A       		.byte	0xa
 2647 051c AF       		.byte	0xaf
 2648 051d 8E040000 		.4byte	0x48e
 2649 0521 04       		.uleb128 0x4
 2650 0522 54010000 		.4byte	.LASF88
 2651 0526 0C       		.byte	0xc
 2652 0527 16       		.byte	0x16
 2653 0528 82000000 		.4byte	0x82
 2654 052c 13       		.uleb128 0x13
 2655 052d 12020000 		.4byte	.LASF93
 2656 0531 18       		.byte	0x18
 2657 0532 0C       		.byte	0xc
 2658 0533 2D       		.byte	0x2d
 2659 0534 7F050000 		.4byte	0x57f
 2660 0538 0D       		.uleb128 0xd
 2661 0539 51040000 		.4byte	.LASF89
 2662 053d 0C       		.byte	0xc
 2663 053e 2F       		.byte	0x2f
 2664 053f 7F050000 		.4byte	0x57f
 2665 0543 00       		.byte	0
 2666 0544 14       		.uleb128 0x14
 2667 0545 5F6B00   		.ascii	"_k\000"
ARM GAS  /tmp/cc9w1cGI.s 			page 83


 2668 0548 0C       		.byte	0xc
 2669 0549 30       		.byte	0x30
 2670 054a 2C000000 		.4byte	0x2c
 2671 054e 04       		.byte	0x4
 2672 054f 0D       		.uleb128 0xd
 2673 0550 1D090000 		.4byte	.LASF90
 2674 0554 0C       		.byte	0xc
 2675 0555 30       		.byte	0x30
 2676 0556 2C000000 		.4byte	0x2c
 2677 055a 08       		.byte	0x8
 2678 055b 0D       		.uleb128 0xd
 2679 055c 61080000 		.4byte	.LASF91
 2680 0560 0C       		.byte	0xc
 2681 0561 30       		.byte	0x30
 2682 0562 2C000000 		.4byte	0x2c
 2683 0566 0C       		.byte	0xc
 2684 0567 0D       		.uleb128 0xd
 2685 0568 2E030000 		.4byte	.LASF92
 2686 056c 0C       		.byte	0xc
 2687 056d 30       		.byte	0x30
 2688 056e 2C000000 		.4byte	0x2c
 2689 0572 10       		.byte	0x10
 2690 0573 14       		.uleb128 0x14
 2691 0574 5F7800   		.ascii	"_x\000"
 2692 0577 0C       		.byte	0xc
 2693 0578 31       		.byte	0x31
 2694 0579 85050000 		.4byte	0x585
 2695 057d 14       		.byte	0x14
 2696 057e 00       		.byte	0
 2697 057f 15       		.uleb128 0x15
 2698 0580 04       		.byte	0x4
 2699 0581 2C050000 		.4byte	0x52c
 2700 0585 08       		.uleb128 0x8
 2701 0586 21050000 		.4byte	0x521
 2702 058a 95050000 		.4byte	0x595
 2703 058e 09       		.uleb128 0x9
 2704 058f D9000000 		.4byte	0xd9
 2705 0593 00       		.byte	0
 2706 0594 00       		.byte	0
 2707 0595 13       		.uleb128 0x13
 2708 0596 64090000 		.4byte	.LASF94
 2709 059a 24       		.byte	0x24
 2710 059b 0C       		.byte	0xc
 2711 059c 35       		.byte	0x35
 2712 059d 0E060000 		.4byte	0x60e
 2713 05a1 0D       		.uleb128 0xd
 2714 05a2 03040000 		.4byte	.LASF95
 2715 05a6 0C       		.byte	0xc
 2716 05a7 37       		.byte	0x37
 2717 05a8 2C000000 		.4byte	0x2c
 2718 05ac 00       		.byte	0
 2719 05ad 0D       		.uleb128 0xd
 2720 05ae FC090000 		.4byte	.LASF96
 2721 05b2 0C       		.byte	0xc
 2722 05b3 38       		.byte	0x38
 2723 05b4 2C000000 		.4byte	0x2c
 2724 05b8 04       		.byte	0x4
ARM GAS  /tmp/cc9w1cGI.s 			page 84


 2725 05b9 0D       		.uleb128 0xd
 2726 05ba 61020000 		.4byte	.LASF97
 2727 05be 0C       		.byte	0xc
 2728 05bf 39       		.byte	0x39
 2729 05c0 2C000000 		.4byte	0x2c
 2730 05c4 08       		.byte	0x8
 2731 05c5 0D       		.uleb128 0xd
 2732 05c6 FC040000 		.4byte	.LASF98
 2733 05ca 0C       		.byte	0xc
 2734 05cb 3A       		.byte	0x3a
 2735 05cc 2C000000 		.4byte	0x2c
 2736 05d0 0C       		.byte	0xc
 2737 05d1 0D       		.uleb128 0xd
 2738 05d2 97070000 		.4byte	.LASF99
 2739 05d6 0C       		.byte	0xc
 2740 05d7 3B       		.byte	0x3b
 2741 05d8 2C000000 		.4byte	0x2c
 2742 05dc 10       		.byte	0x10
 2743 05dd 0D       		.uleb128 0xd
 2744 05de C9080000 		.4byte	.LASF100
 2745 05e2 0C       		.byte	0xc
 2746 05e3 3C       		.byte	0x3c
 2747 05e4 2C000000 		.4byte	0x2c
 2748 05e8 14       		.byte	0x14
 2749 05e9 0D       		.uleb128 0xd
 2750 05ea 2A020000 		.4byte	.LASF101
 2751 05ee 0C       		.byte	0xc
 2752 05ef 3D       		.byte	0x3d
 2753 05f0 2C000000 		.4byte	0x2c
 2754 05f4 18       		.byte	0x18
 2755 05f5 0D       		.uleb128 0xd
 2756 05f6 1F040000 		.4byte	.LASF102
 2757 05fa 0C       		.byte	0xc
 2758 05fb 3E       		.byte	0x3e
 2759 05fc 2C000000 		.4byte	0x2c
 2760 0600 1C       		.byte	0x1c
 2761 0601 0D       		.uleb128 0xd
 2762 0602 2F070000 		.4byte	.LASF103
 2763 0606 0C       		.byte	0xc
 2764 0607 3F       		.byte	0x3f
 2765 0608 2C000000 		.4byte	0x2c
 2766 060c 20       		.byte	0x20
 2767 060d 00       		.byte	0
 2768 060e 16       		.uleb128 0x16
 2769 060f 34000000 		.4byte	.LASF104
 2770 0613 0801     		.2byte	0x108
 2771 0615 0C       		.byte	0xc
 2772 0616 48       		.byte	0x48
 2773 0617 4E060000 		.4byte	0x64e
 2774 061b 0D       		.uleb128 0xd
 2775 061c D9060000 		.4byte	.LASF105
 2776 0620 0C       		.byte	0xc
 2777 0621 49       		.byte	0x49
 2778 0622 4E060000 		.4byte	0x64e
 2779 0626 00       		.byte	0
 2780 0627 0D       		.uleb128 0xd
 2781 0628 0F0A0000 		.4byte	.LASF106
ARM GAS  /tmp/cc9w1cGI.s 			page 85


 2782 062c 0C       		.byte	0xc
 2783 062d 4A       		.byte	0x4a
 2784 062e 4E060000 		.4byte	0x64e
 2785 0632 80       		.byte	0x80
 2786 0633 0E       		.uleb128 0xe
 2787 0634 610C0000 		.4byte	.LASF107
 2788 0638 0C       		.byte	0xc
 2789 0639 4C       		.byte	0x4c
 2790 063a 21050000 		.4byte	0x521
 2791 063e 0001     		.2byte	0x100
 2792 0640 0E       		.uleb128 0xe
 2793 0641 CA0C0000 		.4byte	.LASF108
 2794 0645 0C       		.byte	0xc
 2795 0646 4F       		.byte	0x4f
 2796 0647 21050000 		.4byte	0x521
 2797 064b 0401     		.2byte	0x104
 2798 064d 00       		.byte	0
 2799 064e 08       		.uleb128 0x8
 2800 064f D7000000 		.4byte	0xd7
 2801 0653 5E060000 		.4byte	0x65e
 2802 0657 09       		.uleb128 0x9
 2803 0658 D9000000 		.4byte	0xd9
 2804 065c 1F       		.byte	0x1f
 2805 065d 00       		.byte	0
 2806 065e 16       		.uleb128 0x16
 2807 065f CC070000 		.4byte	.LASF109
 2808 0663 9001     		.2byte	0x190
 2809 0665 0C       		.byte	0xc
 2810 0666 5B       		.byte	0x5b
 2811 0667 9C060000 		.4byte	0x69c
 2812 066b 0D       		.uleb128 0xd
 2813 066c 51040000 		.4byte	.LASF89
 2814 0670 0C       		.byte	0xc
 2815 0671 5C       		.byte	0x5c
 2816 0672 9C060000 		.4byte	0x69c
 2817 0676 00       		.byte	0
 2818 0677 0D       		.uleb128 0xd
 2819 0678 83070000 		.4byte	.LASF110
 2820 067c 0C       		.byte	0xc
 2821 067d 5D       		.byte	0x5d
 2822 067e 2C000000 		.4byte	0x2c
 2823 0682 04       		.byte	0x4
 2824 0683 0D       		.uleb128 0xd
 2825 0684 B3010000 		.4byte	.LASF111
 2826 0688 0C       		.byte	0xc
 2827 0689 5F       		.byte	0x5f
 2828 068a A2060000 		.4byte	0x6a2
 2829 068e 08       		.byte	0x8
 2830 068f 0D       		.uleb128 0xd
 2831 0690 34000000 		.4byte	.LASF104
 2832 0694 0C       		.byte	0xc
 2833 0695 60       		.byte	0x60
 2834 0696 0E060000 		.4byte	0x60e
 2835 069a 88       		.byte	0x88
 2836 069b 00       		.byte	0
 2837 069c 15       		.uleb128 0x15
 2838 069d 04       		.byte	0x4
ARM GAS  /tmp/cc9w1cGI.s 			page 86


 2839 069e 5E060000 		.4byte	0x65e
 2840 06a2 08       		.uleb128 0x8
 2841 06a3 B2060000 		.4byte	0x6b2
 2842 06a7 B2060000 		.4byte	0x6b2
 2843 06ab 09       		.uleb128 0x9
 2844 06ac D9000000 		.4byte	0xd9
 2845 06b0 1F       		.byte	0x1f
 2846 06b1 00       		.byte	0
 2847 06b2 15       		.uleb128 0x15
 2848 06b3 04       		.byte	0x4
 2849 06b4 B8060000 		.4byte	0x6b8
 2850 06b8 17       		.uleb128 0x17
 2851 06b9 13       		.uleb128 0x13
 2852 06ba BE070000 		.4byte	.LASF112
 2853 06be 08       		.byte	0x8
 2854 06bf 0C       		.byte	0xc
 2855 06c0 73       		.byte	0x73
 2856 06c1 DE060000 		.4byte	0x6de
 2857 06c5 0D       		.uleb128 0xd
 2858 06c6 39060000 		.4byte	.LASF113
 2859 06ca 0C       		.byte	0xc
 2860 06cb 74       		.byte	0x74
 2861 06cc DE060000 		.4byte	0x6de
 2862 06d0 00       		.byte	0
 2863 06d1 0D       		.uleb128 0xd
 2864 06d2 6A0C0000 		.4byte	.LASF114
 2865 06d6 0C       		.byte	0xc
 2866 06d7 75       		.byte	0x75
 2867 06d8 2C000000 		.4byte	0x2c
 2868 06dc 04       		.byte	0x4
 2869 06dd 00       		.byte	0
 2870 06de 15       		.uleb128 0x15
 2871 06df 04       		.byte	0x4
 2872 06e0 45000000 		.4byte	0x45
 2873 06e4 13       		.uleb128 0x13
 2874 06e5 26030000 		.4byte	.LASF115
 2875 06e9 68       		.byte	0x68
 2876 06ea 0C       		.byte	0xc
 2877 06eb B3       		.byte	0xb3
 2878 06ec 0E080000 		.4byte	0x80e
 2879 06f0 14       		.uleb128 0x14
 2880 06f1 5F7000   		.ascii	"_p\000"
 2881 06f4 0C       		.byte	0xc
 2882 06f5 B4       		.byte	0xb4
 2883 06f6 DE060000 		.4byte	0x6de
 2884 06fa 00       		.byte	0
 2885 06fb 14       		.uleb128 0x14
 2886 06fc 5F7200   		.ascii	"_r\000"
 2887 06ff 0C       		.byte	0xc
 2888 0700 B5       		.byte	0xb5
 2889 0701 2C000000 		.4byte	0x2c
 2890 0705 04       		.byte	0x4
 2891 0706 14       		.uleb128 0x14
 2892 0707 5F7700   		.ascii	"_w\000"
 2893 070a 0C       		.byte	0xc
 2894 070b B6       		.byte	0xb6
 2895 070c 2C000000 		.4byte	0x2c
ARM GAS  /tmp/cc9w1cGI.s 			page 87


 2896 0710 08       		.byte	0x8
 2897 0711 0D       		.uleb128 0xd
 2898 0712 FE000000 		.4byte	.LASF116
 2899 0716 0C       		.byte	0xc
 2900 0717 B7       		.byte	0xb7
 2901 0718 4C000000 		.4byte	0x4c
 2902 071c 0C       		.byte	0xc
 2903 071d 0D       		.uleb128 0xd
 2904 071e 8A060000 		.4byte	.LASF117
 2905 0722 0C       		.byte	0xc
 2906 0723 B8       		.byte	0xb8
 2907 0724 4C000000 		.4byte	0x4c
 2908 0728 0E       		.byte	0xe
 2909 0729 14       		.uleb128 0x14
 2910 072a 5F626600 		.ascii	"_bf\000"
 2911 072e 0C       		.byte	0xc
 2912 072f B9       		.byte	0xb9
 2913 0730 B9060000 		.4byte	0x6b9
 2914 0734 10       		.byte	0x10
 2915 0735 0D       		.uleb128 0xd
 2916 0736 F5000000 		.4byte	.LASF118
 2917 073a 0C       		.byte	0xc
 2918 073b BA       		.byte	0xba
 2919 073c 2C000000 		.4byte	0x2c
 2920 0740 18       		.byte	0x18
 2921 0741 0D       		.uleb128 0xd
 2922 0742 C8010000 		.4byte	.LASF119
 2923 0746 0C       		.byte	0xc
 2924 0747 C1       		.byte	0xc1
 2925 0748 D7000000 		.4byte	0xd7
 2926 074c 1C       		.byte	0x1c
 2927 074d 0D       		.uleb128 0xd
 2928 074e 4E010000 		.4byte	.LASF120
 2929 0752 0C       		.byte	0xc
 2930 0753 C3       		.byte	0xc3
 2931 0754 7B090000 		.4byte	0x97b
 2932 0758 20       		.byte	0x20
 2933 0759 0D       		.uleb128 0xd
 2934 075a C5070000 		.4byte	.LASF121
 2935 075e 0C       		.byte	0xc
 2936 075f C5       		.byte	0xc5
 2937 0760 A5090000 		.4byte	0x9a5
 2938 0764 24       		.byte	0x24
 2939 0765 0D       		.uleb128 0xd
 2940 0766 0E0D0000 		.4byte	.LASF122
 2941 076a 0C       		.byte	0xc
 2942 076b C8       		.byte	0xc8
 2943 076c C9090000 		.4byte	0x9c9
 2944 0770 28       		.byte	0x28
 2945 0771 0D       		.uleb128 0xd
 2946 0772 D7050000 		.4byte	.LASF123
 2947 0776 0C       		.byte	0xc
 2948 0777 C9       		.byte	0xc9
 2949 0778 E3090000 		.4byte	0x9e3
 2950 077c 2C       		.byte	0x2c
 2951 077d 14       		.uleb128 0x14
 2952 077e 5F756200 		.ascii	"_ub\000"
ARM GAS  /tmp/cc9w1cGI.s 			page 88


 2953 0782 0C       		.byte	0xc
 2954 0783 CC       		.byte	0xcc
 2955 0784 B9060000 		.4byte	0x6b9
 2956 0788 30       		.byte	0x30
 2957 0789 14       		.uleb128 0x14
 2958 078a 5F757000 		.ascii	"_up\000"
 2959 078e 0C       		.byte	0xc
 2960 078f CD       		.byte	0xcd
 2961 0790 DE060000 		.4byte	0x6de
 2962 0794 38       		.byte	0x38
 2963 0795 14       		.uleb128 0x14
 2964 0796 5F757200 		.ascii	"_ur\000"
 2965 079a 0C       		.byte	0xc
 2966 079b CE       		.byte	0xce
 2967 079c 2C000000 		.4byte	0x2c
 2968 07a0 3C       		.byte	0x3c
 2969 07a1 0D       		.uleb128 0xd
 2970 07a2 96030000 		.4byte	.LASF124
 2971 07a6 0C       		.byte	0xc
 2972 07a7 D1       		.byte	0xd1
 2973 07a8 E9090000 		.4byte	0x9e9
 2974 07ac 40       		.byte	0x40
 2975 07ad 0D       		.uleb128 0xd
 2976 07ae 990C0000 		.4byte	.LASF125
 2977 07b2 0C       		.byte	0xc
 2978 07b3 D2       		.byte	0xd2
 2979 07b4 F9090000 		.4byte	0x9f9
 2980 07b8 43       		.byte	0x43
 2981 07b9 14       		.uleb128 0x14
 2982 07ba 5F6C6200 		.ascii	"_lb\000"
 2983 07be 0C       		.byte	0xc
 2984 07bf D5       		.byte	0xd5
 2985 07c0 B9060000 		.4byte	0x6b9
 2986 07c4 44       		.byte	0x44
 2987 07c5 0D       		.uleb128 0xd
 2988 07c6 5B090000 		.4byte	.LASF126
 2989 07ca 0C       		.byte	0xc
 2990 07cb D8       		.byte	0xd8
 2991 07cc 2C000000 		.4byte	0x2c
 2992 07d0 4C       		.byte	0x4c
 2993 07d1 0D       		.uleb128 0xd
 2994 07d2 8E030000 		.4byte	.LASF127
 2995 07d6 0C       		.byte	0xc
 2996 07d7 D9       		.byte	0xd9
 2997 07d8 99040000 		.4byte	0x499
 2998 07dc 50       		.byte	0x50
 2999 07dd 0D       		.uleb128 0xd
 3000 07de 8C080000 		.4byte	.LASF128
 3001 07e2 0C       		.byte	0xc
 3002 07e3 DC       		.byte	0xdc
 3003 07e4 2C080000 		.4byte	0x82c
 3004 07e8 54       		.byte	0x54
 3005 07e9 0D       		.uleb128 0xd
 3006 07ea 69090000 		.4byte	.LASF129
 3007 07ee 0C       		.byte	0xc
 3008 07ef E0       		.byte	0xe0
 3009 07f0 16050000 		.4byte	0x516
ARM GAS  /tmp/cc9w1cGI.s 			page 89


 3010 07f4 58       		.byte	0x58
 3011 07f5 0D       		.uleb128 0xd
 3012 07f6 39010000 		.4byte	.LASF130
 3013 07fa 0C       		.byte	0xc
 3014 07fb E2       		.byte	0xe2
 3015 07fc 0B050000 		.4byte	0x50b
 3016 0800 5C       		.byte	0x5c
 3017 0801 0D       		.uleb128 0xd
 3018 0802 C20C0000 		.4byte	.LASF131
 3019 0806 0C       		.byte	0xc
 3020 0807 E3       		.byte	0xe3
 3021 0808 2C000000 		.4byte	0x2c
 3022 080c 64       		.byte	0x64
 3023 080d 00       		.byte	0
 3024 080e 18       		.uleb128 0x18
 3025 080f 2C000000 		.4byte	0x2c
 3026 0813 2C080000 		.4byte	0x82c
 3027 0817 19       		.uleb128 0x19
 3028 0818 2C080000 		.4byte	0x82c
 3029 081c 19       		.uleb128 0x19
 3030 081d D7000000 		.4byte	0xd7
 3031 0821 19       		.uleb128 0x19
 3032 0822 69090000 		.4byte	0x969
 3033 0826 19       		.uleb128 0x19
 3034 0827 2C000000 		.4byte	0x2c
 3035 082b 00       		.byte	0
 3036 082c 15       		.uleb128 0x15
 3037 082d 04       		.byte	0x4
 3038 082e 37080000 		.4byte	0x837
 3039 0832 06       		.uleb128 0x6
 3040 0833 2C080000 		.4byte	0x82c
 3041 0837 1A       		.uleb128 0x1a
 3042 0838 3D0C0000 		.4byte	.LASF132
 3043 083c 2804     		.2byte	0x428
 3044 083e 0C       		.byte	0xc
 3045 083f 3802     		.2byte	0x238
 3046 0841 69090000 		.4byte	0x969
 3047 0845 1B       		.uleb128 0x1b
 3048 0846 0F010000 		.4byte	.LASF133
 3049 084a 0C       		.byte	0xc
 3050 084b 3A02     		.2byte	0x23a
 3051 084d 2C000000 		.4byte	0x2c
 3052 0851 00       		.byte	0
 3053 0852 1B       		.uleb128 0x1b
 3054 0853 01060000 		.4byte	.LASF134
 3055 0857 0C       		.byte	0xc
 3056 0858 3F02     		.2byte	0x23f
 3057 085a 500A0000 		.4byte	0xa50
 3058 085e 04       		.byte	0x4
 3059 085f 1B       		.uleb128 0x1b
 3060 0860 84010000 		.4byte	.LASF135
 3061 0864 0C       		.byte	0xc
 3062 0865 3F02     		.2byte	0x23f
 3063 0867 500A0000 		.4byte	0xa50
 3064 086b 08       		.byte	0x8
 3065 086c 1B       		.uleb128 0x1b
 3066 086d 2F0D0000 		.4byte	.LASF136
ARM GAS  /tmp/cc9w1cGI.s 			page 90


 3067 0871 0C       		.byte	0xc
 3068 0872 3F02     		.2byte	0x23f
 3069 0874 500A0000 		.4byte	0xa50
 3070 0878 0C       		.byte	0xc
 3071 0879 1B       		.uleb128 0x1b
 3072 087a 31040000 		.4byte	.LASF137
 3073 087e 0C       		.byte	0xc
 3074 087f 4102     		.2byte	0x241
 3075 0881 2C000000 		.4byte	0x2c
 3076 0885 10       		.byte	0x10
 3077 0886 1B       		.uleb128 0x1b
 3078 0887 C0030000 		.4byte	.LASF138
 3079 088b 0C       		.byte	0xc
 3080 088c 4202     		.2byte	0x242
 3081 088e 320C0000 		.4byte	0xc32
 3082 0892 14       		.byte	0x14
 3083 0893 1B       		.uleb128 0x1b
 3084 0894 92080000 		.4byte	.LASF139
 3085 0898 0C       		.byte	0xc
 3086 0899 4402     		.2byte	0x244
 3087 089b 2C000000 		.4byte	0x2c
 3088 089f 30       		.byte	0x30
 3089 08a0 1B       		.uleb128 0x1b
 3090 08a1 67080000 		.4byte	.LASF140
 3091 08a5 0C       		.byte	0xc
 3092 08a6 4502     		.2byte	0x245
 3093 08a8 9F090000 		.4byte	0x99f
 3094 08ac 34       		.byte	0x34
 3095 08ad 1B       		.uleb128 0x1b
 3096 08ae EF050000 		.4byte	.LASF141
 3097 08b2 0C       		.byte	0xc
 3098 08b3 4702     		.2byte	0x247
 3099 08b5 2C000000 		.4byte	0x2c
 3100 08b9 38       		.byte	0x38
 3101 08ba 1B       		.uleb128 0x1b
 3102 08bb BC060000 		.4byte	.LASF142
 3103 08bf 0C       		.byte	0xc
 3104 08c0 4902     		.2byte	0x249
 3105 08c2 4D0C0000 		.4byte	0xc4d
 3106 08c6 3C       		.byte	0x3c
 3107 08c7 1B       		.uleb128 0x1b
 3108 08c8 49020000 		.4byte	.LASF143
 3109 08cc 0C       		.byte	0xc
 3110 08cd 4C02     		.2byte	0x24c
 3111 08cf 7F050000 		.4byte	0x57f
 3112 08d3 40       		.byte	0x40
 3113 08d4 1B       		.uleb128 0x1b
 3114 08d5 69050000 		.4byte	.LASF144
 3115 08d9 0C       		.byte	0xc
 3116 08da 4D02     		.2byte	0x24d
 3117 08dc 2C000000 		.4byte	0x2c
 3118 08e0 44       		.byte	0x44
 3119 08e1 1B       		.uleb128 0x1b
 3120 08e2 A0040000 		.4byte	.LASF145
 3121 08e6 0C       		.byte	0xc
 3122 08e7 4E02     		.2byte	0x24e
 3123 08e9 7F050000 		.4byte	0x57f
ARM GAS  /tmp/cc9w1cGI.s 			page 91


 3124 08ed 48       		.byte	0x48
 3125 08ee 1B       		.uleb128 0x1b
 3126 08ef 3F060000 		.4byte	.LASF146
 3127 08f3 0C       		.byte	0xc
 3128 08f4 4F02     		.2byte	0x24f
 3129 08f6 530C0000 		.4byte	0xc53
 3130 08fa 4C       		.byte	0x4c
 3131 08fb 1B       		.uleb128 0x1b
 3132 08fc 15090000 		.4byte	.LASF147
 3133 0900 0C       		.byte	0xc
 3134 0901 5202     		.2byte	0x252
 3135 0903 2C000000 		.4byte	0x2c
 3136 0907 50       		.byte	0x50
 3137 0908 1B       		.uleb128 0x1b
 3138 0909 370A0000 		.4byte	.LASF148
 3139 090d 0C       		.byte	0xc
 3140 090e 5302     		.2byte	0x253
 3141 0910 69090000 		.4byte	0x969
 3142 0914 54       		.byte	0x54
 3143 0915 1B       		.uleb128 0x1b
 3144 0916 06090000 		.4byte	.LASF149
 3145 091a 0C       		.byte	0xc
 3146 091b 7602     		.2byte	0x276
 3147 091d 100C0000 		.4byte	0xc10
 3148 0921 58       		.byte	0x58
 3149 0922 1C       		.uleb128 0x1c
 3150 0923 CC070000 		.4byte	.LASF109
 3151 0927 0C       		.byte	0xc
 3152 0928 7A02     		.2byte	0x27a
 3153 092a 9C060000 		.4byte	0x69c
 3154 092e 4801     		.2byte	0x148
 3155 0930 1C       		.uleb128 0x1c
 3156 0931 1F050000 		.4byte	.LASF150
 3157 0935 0C       		.byte	0xc
 3158 0936 7B02     		.2byte	0x27b
 3159 0938 5E060000 		.4byte	0x65e
 3160 093c 4C01     		.2byte	0x14c
 3161 093e 1C       		.uleb128 0x1c
 3162 093f 06050000 		.4byte	.LASF151
 3163 0943 0C       		.byte	0xc
 3164 0944 7F02     		.2byte	0x27f
 3165 0946 640C0000 		.4byte	0xc64
 3166 094a DC02     		.2byte	0x2dc
 3167 094c 1C       		.uleb128 0x1c
 3168 094d DA0B0000 		.4byte	.LASF152
 3169 0951 0C       		.byte	0xc
 3170 0952 8402     		.2byte	0x284
 3171 0954 150A0000 		.4byte	0xa15
 3172 0958 E002     		.2byte	0x2e0
 3173 095a 1C       		.uleb128 0x1c
 3174 095b 5C080000 		.4byte	.LASF153
 3175 095f 0C       		.byte	0xc
 3176 0960 8502     		.2byte	0x285
 3177 0962 700C0000 		.4byte	0xc70
 3178 0966 EC02     		.2byte	0x2ec
 3179 0968 00       		.byte	0
 3180 0969 15       		.uleb128 0x15
ARM GAS  /tmp/cc9w1cGI.s 			page 92


 3181 096a 04       		.byte	0x4
 3182 096b 6F090000 		.4byte	0x96f
 3183 096f 02       		.uleb128 0x2
 3184 0970 01       		.byte	0x1
 3185 0971 08       		.byte	0x8
 3186 0972 F7040000 		.4byte	.LASF154
 3187 0976 06       		.uleb128 0x6
 3188 0977 6F090000 		.4byte	0x96f
 3189 097b 15       		.uleb128 0x15
 3190 097c 04       		.byte	0x4
 3191 097d 0E080000 		.4byte	0x80e
 3192 0981 18       		.uleb128 0x18
 3193 0982 2C000000 		.4byte	0x2c
 3194 0986 9F090000 		.4byte	0x99f
 3195 098a 19       		.uleb128 0x19
 3196 098b 2C080000 		.4byte	0x82c
 3197 098f 19       		.uleb128 0x19
 3198 0990 D7000000 		.4byte	0xd7
 3199 0994 19       		.uleb128 0x19
 3200 0995 9F090000 		.4byte	0x99f
 3201 0999 19       		.uleb128 0x19
 3202 099a 2C000000 		.4byte	0x2c
 3203 099e 00       		.byte	0
 3204 099f 15       		.uleb128 0x15
 3205 09a0 04       		.byte	0x4
 3206 09a1 76090000 		.4byte	0x976
 3207 09a5 15       		.uleb128 0x15
 3208 09a6 04       		.byte	0x4
 3209 09a7 81090000 		.4byte	0x981
 3210 09ab 18       		.uleb128 0x18
 3211 09ac A4040000 		.4byte	0x4a4
 3212 09b0 C9090000 		.4byte	0x9c9
 3213 09b4 19       		.uleb128 0x19
 3214 09b5 2C080000 		.4byte	0x82c
 3215 09b9 19       		.uleb128 0x19
 3216 09ba D7000000 		.4byte	0xd7
 3217 09be 19       		.uleb128 0x19
 3218 09bf A4040000 		.4byte	0x4a4
 3219 09c3 19       		.uleb128 0x19
 3220 09c4 2C000000 		.4byte	0x2c
 3221 09c8 00       		.byte	0
 3222 09c9 15       		.uleb128 0x15
 3223 09ca 04       		.byte	0x4
 3224 09cb AB090000 		.4byte	0x9ab
 3225 09cf 18       		.uleb128 0x18
 3226 09d0 2C000000 		.4byte	0x2c
 3227 09d4 E3090000 		.4byte	0x9e3
 3228 09d8 19       		.uleb128 0x19
 3229 09d9 2C080000 		.4byte	0x82c
 3230 09dd 19       		.uleb128 0x19
 3231 09de D7000000 		.4byte	0xd7
 3232 09e2 00       		.byte	0
 3233 09e3 15       		.uleb128 0x15
 3234 09e4 04       		.byte	0x4
 3235 09e5 CF090000 		.4byte	0x9cf
 3236 09e9 08       		.uleb128 0x8
 3237 09ea 45000000 		.4byte	0x45
ARM GAS  /tmp/cc9w1cGI.s 			page 93


 3238 09ee F9090000 		.4byte	0x9f9
 3239 09f2 09       		.uleb128 0x9
 3240 09f3 D9000000 		.4byte	0xd9
 3241 09f7 02       		.byte	0x2
 3242 09f8 00       		.byte	0
 3243 09f9 08       		.uleb128 0x8
 3244 09fa 45000000 		.4byte	0x45
 3245 09fe 090A0000 		.4byte	0xa09
 3246 0a02 09       		.uleb128 0x9
 3247 0a03 D9000000 		.4byte	0xd9
 3248 0a07 00       		.byte	0
 3249 0a08 00       		.byte	0
 3250 0a09 10       		.uleb128 0x10
 3251 0a0a 7E030000 		.4byte	.LASF155
 3252 0a0e 0C       		.byte	0xc
 3253 0a0f 1D01     		.2byte	0x11d
 3254 0a11 E4060000 		.4byte	0x6e4
 3255 0a15 1D       		.uleb128 0x1d
 3256 0a16 9A0B0000 		.4byte	.LASF156
 3257 0a1a 0C       		.byte	0xc
 3258 0a1b 0C       		.byte	0xc
 3259 0a1c 2101     		.2byte	0x121
 3260 0a1e 4A0A0000 		.4byte	0xa4a
 3261 0a22 1B       		.uleb128 0x1b
 3262 0a23 51040000 		.4byte	.LASF89
 3263 0a27 0C       		.byte	0xc
 3264 0a28 2301     		.2byte	0x123
 3265 0a2a 4A0A0000 		.4byte	0xa4a
 3266 0a2e 00       		.byte	0
 3267 0a2f 1B       		.uleb128 0x1b
 3268 0a30 BB090000 		.4byte	.LASF157
 3269 0a34 0C       		.byte	0xc
 3270 0a35 2401     		.2byte	0x124
 3271 0a37 2C000000 		.4byte	0x2c
 3272 0a3b 04       		.byte	0x4
 3273 0a3c 1B       		.uleb128 0x1b
 3274 0a3d 400D0000 		.4byte	.LASF158
 3275 0a41 0C       		.byte	0xc
 3276 0a42 2501     		.2byte	0x125
 3277 0a44 500A0000 		.4byte	0xa50
 3278 0a48 08       		.byte	0x8
 3279 0a49 00       		.byte	0
 3280 0a4a 15       		.uleb128 0x15
 3281 0a4b 04       		.byte	0x4
 3282 0a4c 150A0000 		.4byte	0xa15
 3283 0a50 15       		.uleb128 0x15
 3284 0a51 04       		.byte	0x4
 3285 0a52 090A0000 		.4byte	0xa09
 3286 0a56 1D       		.uleb128 0x1d
 3287 0a57 1E030000 		.4byte	.LASF159
 3288 0a5b 0E       		.byte	0xe
 3289 0a5c 0C       		.byte	0xc
 3290 0a5d 3D01     		.2byte	0x13d
 3291 0a5f 8B0A0000 		.4byte	0xa8b
 3292 0a63 1B       		.uleb128 0x1b
 3293 0a64 F80C0000 		.4byte	.LASF160
 3294 0a68 0C       		.byte	0xc
ARM GAS  /tmp/cc9w1cGI.s 			page 94


 3295 0a69 3E01     		.2byte	0x13e
 3296 0a6b 8B0A0000 		.4byte	0xa8b
 3297 0a6f 00       		.byte	0
 3298 0a70 1B       		.uleb128 0x1b
 3299 0a71 70060000 		.4byte	.LASF161
 3300 0a75 0C       		.byte	0xc
 3301 0a76 3F01     		.2byte	0x13f
 3302 0a78 8B0A0000 		.4byte	0xa8b
 3303 0a7c 06       		.byte	0x6
 3304 0a7d 1B       		.uleb128 0x1b
 3305 0a7e 76060000 		.4byte	.LASF162
 3306 0a82 0C       		.byte	0xc
 3307 0a83 4001     		.2byte	0x140
 3308 0a85 5E000000 		.4byte	0x5e
 3309 0a89 0C       		.byte	0xc
 3310 0a8a 00       		.byte	0
 3311 0a8b 08       		.uleb128 0x8
 3312 0a8c 5E000000 		.4byte	0x5e
 3313 0a90 9B0A0000 		.4byte	0xa9b
 3314 0a94 09       		.uleb128 0x9
 3315 0a95 D9000000 		.4byte	0xd9
 3316 0a99 02       		.byte	0x2
 3317 0a9a 00       		.byte	0
 3318 0a9b 1E       		.uleb128 0x1e
 3319 0a9c D0       		.byte	0xd0
 3320 0a9d 0C       		.byte	0xc
 3321 0a9e 5702     		.2byte	0x257
 3322 0aa0 9C0B0000 		.4byte	0xb9c
 3323 0aa4 1B       		.uleb128 0x1b
 3324 0aa5 9F0C0000 		.4byte	.LASF163
 3325 0aa9 0C       		.byte	0xc
 3326 0aaa 5902     		.2byte	0x259
 3327 0aac 25000000 		.4byte	0x25
 3328 0ab0 00       		.byte	0
 3329 0ab1 1B       		.uleb128 0x1b
 3330 0ab2 EF0B0000 		.4byte	.LASF164
 3331 0ab6 0C       		.byte	0xc
 3332 0ab7 5A02     		.2byte	0x25a
 3333 0ab9 69090000 		.4byte	0x969
 3334 0abd 04       		.byte	0x4
 3335 0abe 1B       		.uleb128 0x1b
 3336 0abf 11030000 		.4byte	.LASF165
 3337 0ac3 0C       		.byte	0xc
 3338 0ac4 5B02     		.2byte	0x25b
 3339 0ac6 9C0B0000 		.4byte	0xb9c
 3340 0aca 08       		.byte	0x8
 3341 0acb 1B       		.uleb128 0x1b
 3342 0acc 5C000000 		.4byte	.LASF166
 3343 0ad0 0C       		.byte	0xc
 3344 0ad1 5C02     		.2byte	0x25c
 3345 0ad3 95050000 		.4byte	0x595
 3346 0ad7 24       		.byte	0x24
 3347 0ad8 1B       		.uleb128 0x1b
 3348 0ad9 08060000 		.4byte	.LASF167
 3349 0add 0C       		.byte	0xc
 3350 0ade 5D02     		.2byte	0x25d
 3351 0ae0 2C000000 		.4byte	0x2c
ARM GAS  /tmp/cc9w1cGI.s 			page 95


 3352 0ae4 48       		.byte	0x48
 3353 0ae5 1B       		.uleb128 0x1b
 3354 0ae6 FE0C0000 		.4byte	.LASF168
 3355 0aea 0C       		.byte	0xc
 3356 0aeb 5E02     		.2byte	0x25e
 3357 0aed 90000000 		.4byte	0x90
 3358 0af1 50       		.byte	0x50
 3359 0af2 1B       		.uleb128 0x1b
 3360 0af3 87000000 		.4byte	.LASF169
 3361 0af7 0C       		.byte	0xc
 3362 0af8 5F02     		.2byte	0x25f
 3363 0afa 560A0000 		.4byte	0xa56
 3364 0afe 58       		.byte	0x58
 3365 0aff 1B       		.uleb128 0x1b
 3366 0b00 E4040000 		.4byte	.LASF170
 3367 0b04 0C       		.byte	0xc
 3368 0b05 6002     		.2byte	0x260
 3369 0b07 0B050000 		.4byte	0x50b
 3370 0b0b 68       		.byte	0x68
 3371 0b0c 1B       		.uleb128 0x1b
 3372 0b0d FC0B0000 		.4byte	.LASF171
 3373 0b11 0C       		.byte	0xc
 3374 0b12 6102     		.2byte	0x261
 3375 0b14 0B050000 		.4byte	0x50b
 3376 0b18 70       		.byte	0x70
 3377 0b19 1B       		.uleb128 0x1b
 3378 0b1a 4E000000 		.4byte	.LASF172
 3379 0b1e 0C       		.byte	0xc
 3380 0b1f 6202     		.2byte	0x262
 3381 0b21 0B050000 		.4byte	0x50b
 3382 0b25 78       		.byte	0x78
 3383 0b26 1B       		.uleb128 0x1b
 3384 0b27 25090000 		.4byte	.LASF173
 3385 0b2b 0C       		.byte	0xc
 3386 0b2c 6302     		.2byte	0x263
 3387 0b2e AC0B0000 		.4byte	0xbac
 3388 0b32 80       		.byte	0x80
 3389 0b33 1B       		.uleb128 0x1b
 3390 0b34 AA000000 		.4byte	.LASF174
 3391 0b38 0C       		.byte	0xc
 3392 0b39 6402     		.2byte	0x264
 3393 0b3b BC0B0000 		.4byte	0xbbc
 3394 0b3f 88       		.byte	0x88
 3395 0b40 1B       		.uleb128 0x1b
 3396 0b41 E20B0000 		.4byte	.LASF175
 3397 0b45 0C       		.byte	0xc
 3398 0b46 6502     		.2byte	0x265
 3399 0b48 2C000000 		.4byte	0x2c
 3400 0b4c A0       		.byte	0xa0
 3401 0b4d 1B       		.uleb128 0x1b
 3402 0b4e 5C010000 		.4byte	.LASF176
 3403 0b52 0C       		.byte	0xc
 3404 0b53 6602     		.2byte	0x266
 3405 0b55 0B050000 		.4byte	0x50b
 3406 0b59 A4       		.byte	0xa4
 3407 0b5a 1B       		.uleb128 0x1b
 3408 0b5b 10050000 		.4byte	.LASF177
ARM GAS  /tmp/cc9w1cGI.s 			page 96


 3409 0b5f 0C       		.byte	0xc
 3410 0b60 6702     		.2byte	0x267
 3411 0b62 0B050000 		.4byte	0x50b
 3412 0b66 AC       		.byte	0xac
 3413 0b67 1B       		.uleb128 0x1b
 3414 0b68 DE020000 		.4byte	.LASF178
 3415 0b6c 0C       		.byte	0xc
 3416 0b6d 6802     		.2byte	0x268
 3417 0b6f 0B050000 		.4byte	0x50b
 3418 0b73 B4       		.byte	0xb4
 3419 0b74 1B       		.uleb128 0x1b
 3420 0b75 7B060000 		.4byte	.LASF179
 3421 0b79 0C       		.byte	0xc
 3422 0b7a 6902     		.2byte	0x269
 3423 0b7c 0B050000 		.4byte	0x50b
 3424 0b80 BC       		.byte	0xbc
 3425 0b81 1B       		.uleb128 0x1b
 3426 0b82 D3040000 		.4byte	.LASF180
 3427 0b86 0C       		.byte	0xc
 3428 0b87 6A02     		.2byte	0x26a
 3429 0b89 0B050000 		.4byte	0x50b
 3430 0b8d C4       		.byte	0xc4
 3431 0b8e 1B       		.uleb128 0x1b
 3432 0b8f 85030000 		.4byte	.LASF181
 3433 0b93 0C       		.byte	0xc
 3434 0b94 6B02     		.2byte	0x26b
 3435 0b96 2C000000 		.4byte	0x2c
 3436 0b9a CC       		.byte	0xcc
 3437 0b9b 00       		.byte	0
 3438 0b9c 08       		.uleb128 0x8
 3439 0b9d 6F090000 		.4byte	0x96f
 3440 0ba1 AC0B0000 		.4byte	0xbac
 3441 0ba5 09       		.uleb128 0x9
 3442 0ba6 D9000000 		.4byte	0xd9
 3443 0baa 19       		.byte	0x19
 3444 0bab 00       		.byte	0
 3445 0bac 08       		.uleb128 0x8
 3446 0bad 6F090000 		.4byte	0x96f
 3447 0bb1 BC0B0000 		.4byte	0xbbc
 3448 0bb5 09       		.uleb128 0x9
 3449 0bb6 D9000000 		.4byte	0xd9
 3450 0bba 07       		.byte	0x7
 3451 0bbb 00       		.byte	0
 3452 0bbc 08       		.uleb128 0x8
 3453 0bbd 6F090000 		.4byte	0x96f
 3454 0bc1 CC0B0000 		.4byte	0xbcc
 3455 0bc5 09       		.uleb128 0x9
 3456 0bc6 D9000000 		.4byte	0xd9
 3457 0bca 17       		.byte	0x17
 3458 0bcb 00       		.byte	0
 3459 0bcc 1E       		.uleb128 0x1e
 3460 0bcd F0       		.byte	0xf0
 3461 0bce 0C       		.byte	0xc
 3462 0bcf 7002     		.2byte	0x270
 3463 0bd1 F00B0000 		.4byte	0xbf0
 3464 0bd5 1B       		.uleb128 0x1b
 3465 0bd6 B7020000 		.4byte	.LASF182
ARM GAS  /tmp/cc9w1cGI.s 			page 97


 3466 0bda 0C       		.byte	0xc
 3467 0bdb 7302     		.2byte	0x273
 3468 0bdd F00B0000 		.4byte	0xbf0
 3469 0be1 00       		.byte	0
 3470 0be2 1B       		.uleb128 0x1b
 3471 0be3 370D0000 		.4byte	.LASF183
 3472 0be7 0C       		.byte	0xc
 3473 0be8 7402     		.2byte	0x274
 3474 0bea 000C0000 		.4byte	0xc00
 3475 0bee 78       		.byte	0x78
 3476 0bef 00       		.byte	0
 3477 0bf0 08       		.uleb128 0x8
 3478 0bf1 DE060000 		.4byte	0x6de
 3479 0bf5 000C0000 		.4byte	0xc00
 3480 0bf9 09       		.uleb128 0x9
 3481 0bfa D9000000 		.4byte	0xd9
 3482 0bfe 1D       		.byte	0x1d
 3483 0bff 00       		.byte	0
 3484 0c00 08       		.uleb128 0x8
 3485 0c01 25000000 		.4byte	0x25
 3486 0c05 100C0000 		.4byte	0xc10
 3487 0c09 09       		.uleb128 0x9
 3488 0c0a D9000000 		.4byte	0xd9
 3489 0c0e 1D       		.byte	0x1d
 3490 0c0f 00       		.byte	0
 3491 0c10 1F       		.uleb128 0x1f
 3492 0c11 F0       		.byte	0xf0
 3493 0c12 0C       		.byte	0xc
 3494 0c13 5502     		.2byte	0x255
 3495 0c15 320C0000 		.4byte	0xc32
 3496 0c19 20       		.uleb128 0x20
 3497 0c1a 3D0C0000 		.4byte	.LASF132
 3498 0c1e 0C       		.byte	0xc
 3499 0c1f 6C02     		.2byte	0x26c
 3500 0c21 9B0A0000 		.4byte	0xa9b
 3501 0c25 20       		.uleb128 0x20
 3502 0c26 F4080000 		.4byte	.LASF184
 3503 0c2a 0C       		.byte	0xc
 3504 0c2b 7502     		.2byte	0x275
 3505 0c2d CC0B0000 		.4byte	0xbcc
 3506 0c31 00       		.byte	0
 3507 0c32 08       		.uleb128 0x8
 3508 0c33 6F090000 		.4byte	0x96f
 3509 0c37 420C0000 		.4byte	0xc42
 3510 0c3b 09       		.uleb128 0x9
 3511 0c3c D9000000 		.4byte	0xd9
 3512 0c40 18       		.byte	0x18
 3513 0c41 00       		.byte	0
 3514 0c42 21       		.uleb128 0x21
 3515 0c43 4D0C0000 		.4byte	0xc4d
 3516 0c47 19       		.uleb128 0x19
 3517 0c48 2C080000 		.4byte	0x82c
 3518 0c4c 00       		.byte	0
 3519 0c4d 15       		.uleb128 0x15
 3520 0c4e 04       		.byte	0x4
 3521 0c4f 420C0000 		.4byte	0xc42
 3522 0c53 15       		.uleb128 0x15
ARM GAS  /tmp/cc9w1cGI.s 			page 98


 3523 0c54 04       		.byte	0x4
 3524 0c55 7F050000 		.4byte	0x57f
 3525 0c59 21       		.uleb128 0x21
 3526 0c5a 640C0000 		.4byte	0xc64
 3527 0c5e 19       		.uleb128 0x19
 3528 0c5f 2C000000 		.4byte	0x2c
 3529 0c63 00       		.byte	0
 3530 0c64 15       		.uleb128 0x15
 3531 0c65 04       		.byte	0x4
 3532 0c66 6A0C0000 		.4byte	0xc6a
 3533 0c6a 15       		.uleb128 0x15
 3534 0c6b 04       		.byte	0x4
 3535 0c6c 590C0000 		.4byte	0xc59
 3536 0c70 08       		.uleb128 0x8
 3537 0c71 090A0000 		.4byte	0xa09
 3538 0c75 800C0000 		.4byte	0xc80
 3539 0c79 09       		.uleb128 0x9
 3540 0c7a D9000000 		.4byte	0xd9
 3541 0c7e 02       		.byte	0x2
 3542 0c7f 00       		.byte	0
 3543 0c80 0A       		.uleb128 0xa
 3544 0c81 AB020000 		.4byte	.LASF185
 3545 0c85 0C       		.byte	0xc
 3546 0c86 FD02     		.2byte	0x2fd
 3547 0c88 2C080000 		.4byte	0x82c
 3548 0c8c 0A       		.uleb128 0xa
 3549 0c8d AB080000 		.4byte	.LASF186
 3550 0c91 0C       		.byte	0xc
 3551 0c92 FE02     		.2byte	0x2fe
 3552 0c94 32080000 		.4byte	0x832
 3553 0c98 15       		.uleb128 0x15
 3554 0c99 04       		.byte	0x4
 3555 0c9a 9E0C0000 		.4byte	0xc9e
 3556 0c9e 22       		.uleb128 0x22
 3557 0c9f 0B       		.uleb128 0xb
 3558 0ca0 15040000 		.4byte	.LASF187
 3559 0ca4 0D       		.byte	0xd
 3560 0ca5 5F       		.byte	0x5f
 3561 0ca6 69090000 		.4byte	0x969
 3562 0caa 0B       		.uleb128 0xb
 3563 0cab FE010000 		.4byte	.LASF188
 3564 0caf 0E       		.byte	0xe
 3565 0cb0 8F       		.byte	0x8f
 3566 0cb1 BC0C0000 		.4byte	0xcbc
 3567 0cb5 02       		.uleb128 0x2
 3568 0cb6 01       		.byte	0x1
 3569 0cb7 02       		.byte	0x2
 3570 0cb8 36040000 		.4byte	.LASF189
 3571 0cbc 05       		.uleb128 0x5
 3572 0cbd B50C0000 		.4byte	0xcb5
 3573 0cc1 06       		.uleb128 0x6
 3574 0cc2 B50C0000 		.4byte	0xcb5
 3575 0cc6 23       		.uleb128 0x23
 3576 0cc7 9A090000 		.4byte	.LASF190
 3577 0ccb 0E       		.byte	0xe
 3578 0ccc 94       		.byte	0x94
 3579 0ccd C8000000 		.4byte	0xc8
ARM GAS  /tmp/cc9w1cGI.s 			page 99


 3580 0cd1 05       		.uleb128 0x5
 3581 0cd2 03       		.byte	0x3
 3582 0cd3 00000000 		.4byte	cpu_irq_critical_section_counter
 3583 0cd7 23       		.uleb128 0x23
 3584 0cd8 CB030000 		.4byte	.LASF191
 3585 0cdc 0E       		.byte	0xe
 3586 0cdd 95       		.byte	0x95
 3587 0cde BC0C0000 		.4byte	0xcbc
 3588 0ce2 05       		.uleb128 0x5
 3589 0ce3 03       		.byte	0x3
 3590 0ce4 00000000 		.4byte	cpu_irq_prev_interrupt_state
 3591 0ce8 02       		.uleb128 0x2
 3592 0ce9 04       		.byte	0x4
 3593 0cea 04       		.byte	0x4
 3594 0ceb 8E020000 		.4byte	.LASF192
 3595 0cef 02       		.uleb128 0x2
 3596 0cf0 08       		.byte	0x8
 3597 0cf1 04       		.byte	0x4
 3598 0cf2 700C0000 		.4byte	.LASF193
 3599 0cf6 24       		.uleb128 0x24
 3600 0cf7 A8010000 		.4byte	.LASF276
 3601 0cfb 01       		.byte	0x1
 3602 0cfc 45000000 		.4byte	0x45
 3603 0d00 14       		.byte	0x14
 3604 0d01 4F       		.byte	0x4f
 3605 0d02 2B0D0000 		.4byte	0xd2b
 3606 0d06 25       		.uleb128 0x25
 3607 0d07 63070000 		.4byte	.LASF194
 3608 0d0b 03       		.byte	0x3
 3609 0d0c 25       		.uleb128 0x25
 3610 0d0d 34020000 		.4byte	.LASF195
 3611 0d11 04       		.byte	0x4
 3612 0d12 25       		.uleb128 0x25
 3613 0d13 F9070000 		.4byte	.LASF196
 3614 0d17 05       		.byte	0x5
 3615 0d18 25       		.uleb128 0x25
 3616 0d19 660B0000 		.4byte	.LASF197
 3617 0d1d 06       		.byte	0x6
 3618 0d1e 25       		.uleb128 0x25
 3619 0d1f 71020000 		.4byte	.LASF198
 3620 0d23 07       		.byte	0x7
 3621 0d24 25       		.uleb128 0x25
 3622 0d25 64030000 		.4byte	.LASF199
 3623 0d29 08       		.byte	0x8
 3624 0d2a 00       		.byte	0
 3625 0d2b 04       		.uleb128 0x4
 3626 0d2c 65040000 		.4byte	.LASF200
 3627 0d30 0F       		.byte	0xf
 3628 0d31 70       		.byte	0x70
 3629 0d32 BD000000 		.4byte	0xbd
 3630 0d36 04       		.uleb128 0x4
 3631 0d37 B8050000 		.4byte	.LASF201
 3632 0d3b 10       		.byte	0x10
 3633 0d3c D3       		.byte	0xd3
 3634 0d3d 410D0000 		.4byte	0xd41
 3635 0d41 15       		.uleb128 0x15
 3636 0d42 04       		.byte	0x4
ARM GAS  /tmp/cc9w1cGI.s 			page 100


 3637 0d43 470D0000 		.4byte	0xd47
 3638 0d47 21       		.uleb128 0x21
 3639 0d48 570D0000 		.4byte	0xd57
 3640 0d4c 19       		.uleb128 0x19
 3641 0d4d BD000000 		.4byte	0xbd
 3642 0d51 19       		.uleb128 0x19
 3643 0d52 BD000000 		.4byte	0xbd
 3644 0d56 00       		.byte	0
 3645 0d57 0F       		.uleb128 0xf
 3646 0d58 20       		.byte	0x20
 3647 0d59 02       		.byte	0x2
 3648 0d5a B9       		.byte	0xb9
 3649 0d5b C00D0000 		.4byte	0xdc0
 3650 0d5f 0D       		.uleb128 0xd
 3651 0d60 C6060000 		.4byte	.LASF202
 3652 0d64 02       		.byte	0x2
 3653 0d65 BB       		.byte	0xbb
 3654 0d66 BD000000 		.4byte	0xbd
 3655 0d6a 00       		.byte	0
 3656 0d6b 0D       		.uleb128 0xd
 3657 0d6c 62050000 		.4byte	.LASF203
 3658 0d70 02       		.byte	0x2
 3659 0d71 BD       		.byte	0xbd
 3660 0d72 BD000000 		.4byte	0xbd
 3661 0d76 04       		.byte	0x4
 3662 0d77 0D       		.uleb128 0xd
 3663 0d78 A1050000 		.4byte	.LASF204
 3664 0d7c 02       		.byte	0x2
 3665 0d7d BF       		.byte	0xbf
 3666 0d7e BD000000 		.4byte	0xbd
 3667 0d82 08       		.byte	0x8
 3668 0d83 0D       		.uleb128 0xd
 3669 0d84 0F080000 		.4byte	.LASF205
 3670 0d88 02       		.byte	0x2
 3671 0d89 C1       		.byte	0xc1
 3672 0d8a BD000000 		.4byte	0xbd
 3673 0d8e 0C       		.byte	0xc
 3674 0d8f 0D       		.uleb128 0xd
 3675 0d90 F2030000 		.4byte	.LASF206
 3676 0d94 02       		.byte	0x2
 3677 0d95 C3       		.byte	0xc3
 3678 0d96 BD000000 		.4byte	0xbd
 3679 0d9a 10       		.byte	0x10
 3680 0d9b 0D       		.uleb128 0xd
 3681 0d9c FA050000 		.4byte	.LASF207
 3682 0da0 02       		.byte	0x2
 3683 0da1 C5       		.byte	0xc5
 3684 0da2 BD000000 		.4byte	0xbd
 3685 0da6 14       		.byte	0x14
 3686 0da7 0D       		.uleb128 0xd
 3687 0da8 12000000 		.4byte	.LASF208
 3688 0dac 02       		.byte	0x2
 3689 0dad C7       		.byte	0xc7
 3690 0dae BD000000 		.4byte	0xbd
 3691 0db2 18       		.byte	0x18
 3692 0db3 0D       		.uleb128 0xd
 3693 0db4 A2000000 		.4byte	.LASF209
ARM GAS  /tmp/cc9w1cGI.s 			page 101


 3694 0db8 02       		.byte	0x2
 3695 0db9 C9       		.byte	0xc9
 3696 0dba BD000000 		.4byte	0xbd
 3697 0dbe 1C       		.byte	0x1c
 3698 0dbf 00       		.byte	0
 3699 0dc0 04       		.uleb128 0x4
 3700 0dc1 9D0A0000 		.4byte	.LASF210
 3701 0dc5 02       		.byte	0x2
 3702 0dc6 CA       		.byte	0xca
 3703 0dc7 570D0000 		.4byte	0xd57
 3704 0dcb 23       		.uleb128 0x23
 3705 0dcc 7A0B0000 		.4byte	.LASF211
 3706 0dd0 01       		.byte	0x1
 3707 0dd1 7E       		.byte	0x7e
 3708 0dd2 BD000000 		.4byte	0xbd
 3709 0dd6 05       		.uleb128 0x5
 3710 0dd7 03       		.byte	0x3
 3711 0dd8 00000000 		.4byte	hsmci_transfert_pos
 3712 0ddc 23       		.uleb128 0x23
 3713 0ddd 1E0D0000 		.4byte	.LASF212
 3714 0de1 01       		.byte	0x1
 3715 0de2 80       		.byte	0x80
 3716 0de3 A2000000 		.4byte	0xa2
 3717 0de7 05       		.uleb128 0x5
 3718 0de8 03       		.byte	0x3
 3719 0de9 00000000 		.4byte	hsmci_block_size
 3720 0ded 23       		.uleb128 0x23
 3721 0dee C8050000 		.4byte	.LASF213
 3722 0df2 01       		.byte	0x1
 3723 0df3 82       		.byte	0x82
 3724 0df4 A2000000 		.4byte	0xa2
 3725 0df8 05       		.uleb128 0x5
 3726 0df9 03       		.byte	0x3
 3727 0dfa 00000000 		.4byte	hsmci_nb_block
 3728 0dfe 23       		.uleb128 0x23
 3729 0dff 57040000 		.4byte	.LASF214
 3730 0e03 01       		.byte	0x1
 3731 0e04 F2       		.byte	0xf2
 3732 0e05 360D0000 		.4byte	0xd36
 3733 0e09 05       		.uleb128 0x5
 3734 0e0a 03       		.byte	0x3
 3735 0e0b 00000000 		.4byte	hsmciIdleFunc
 3736 0e0f 26       		.uleb128 0x26
 3737 0e10 45030000 		.4byte	.LASF216
 3738 0e14 01       		.byte	0x1
 3739 0e15 7D04     		.2byte	0x47d
 3740 0e17 B50C0000 		.4byte	0xcb5
 3741 0e1b 00000000 		.4byte	.LFB216
 3742 0e1f A8000000 		.4byte	.LFE216-.LFB216
 3743 0e23 01       		.uleb128 0x1
 3744 0e24 9C       		.byte	0x9c
 3745 0e25 FD0E0000 		.4byte	0xefd
 3746 0e29 27       		.uleb128 0x27
 3747 0e2a 737200   		.ascii	"sr\000"
 3748 0e2d 01       		.byte	0x1
 3749 0e2e 7F04     		.2byte	0x47f
 3750 0e30 BD000000 		.4byte	0xbd
ARM GAS  /tmp/cc9w1cGI.s 			page 102


 3751 0e34 00000000 		.4byte	.LLST77
 3752 0e38 28       		.uleb128 0x28
 3753 0e39 93040000 		.4byte	.LASF221
 3754 0e3d 01       		.byte	0x1
 3755 0e3e 8004     		.2byte	0x480
 3756 0e40 BD000000 		.4byte	0xbd
 3757 0e44 29       		.uleb128 0x29
 3758 0e45 30010000 		.4byte	.Ldebug_ranges0+0x130
 3759 0e49 2A       		.uleb128 0x2a
 3760 0e4a C5040000 		.4byte	.LASF215
 3761 0e4e 01       		.byte	0x1
 3762 0e4f 8504     		.2byte	0x485
 3763 0e51 C10C0000 		.4byte	0xcc1
 3764 0e55 1E000000 		.4byte	.LLST78
 3765 0e59 2B       		.uleb128 0x2b
 3766 0e5a BF170000 		.4byte	0x17bf
 3767 0e5e 1C000000 		.4byte	.LBB114
 3768 0e62 04000000 		.4byte	.LBE114-.LBB114
 3769 0e66 01       		.byte	0x1
 3770 0e67 9D04     		.2byte	0x49d
 3771 0e69 800E0000 		.4byte	0xe80
 3772 0e6d 2C       		.uleb128 0x2c
 3773 0e6e DC170000 		.4byte	0x17dc
 3774 0e72 6E000000 		.4byte	.LLST79
 3775 0e76 2C       		.uleb128 0x2c
 3776 0e77 D0170000 		.4byte	0x17d0
 3777 0e7b 8E000000 		.4byte	.LLST80
 3778 0e7f 00       		.byte	0
 3779 0e80 2D       		.uleb128 0x2d
 3780 0e81 7C170000 		.4byte	0x177c
 3781 0e85 52000000 		.4byte	.LBB116
 3782 0e89 48010000 		.4byte	.Ldebug_ranges0+0x148
 3783 0e8d 01       		.byte	0x1
 3784 0e8e 9004     		.2byte	0x490
 3785 0e90 C80E0000 		.4byte	0xec8
 3786 0e94 29       		.uleb128 0x29
 3787 0e95 48010000 		.4byte	.Ldebug_ranges0+0x148
 3788 0e99 2E       		.uleb128 0x2e
 3789 0e9a 88170000 		.4byte	0x1788
 3790 0e9e B6000000 		.4byte	.LLST81
 3791 0ea2 2E       		.uleb128 0x2e
 3792 0ea3 92170000 		.4byte	0x1792
 3793 0ea7 C9000000 		.4byte	.LLST82
 3794 0eab 2E       		.uleb128 0x2e
 3795 0eac 9D170000 		.4byte	0x179d
 3796 0eb0 E8000000 		.4byte	.LLST83
 3797 0eb4 2E       		.uleb128 0x2e
 3798 0eb5 A8170000 		.4byte	0x17a8
 3799 0eb9 07010000 		.4byte	.LLST84
 3800 0ebd 2E       		.uleb128 0x2e
 3801 0ebe B3170000 		.4byte	0x17b3
 3802 0ec2 1A010000 		.4byte	.LLST85
 3803 0ec6 00       		.byte	0
 3804 0ec7 00       		.byte	0
 3805 0ec8 2D       		.uleb128 0x2d
 3806 0ec9 EF170000 		.4byte	0x17ef
 3807 0ecd 64000000 		.4byte	.LBB121
ARM GAS  /tmp/cc9w1cGI.s 			page 103


 3808 0ed1 70010000 		.4byte	.Ldebug_ranges0+0x170
 3809 0ed5 01       		.byte	0x1
 3810 0ed6 9204     		.2byte	0x492
 3811 0ed8 EF0E0000 		.4byte	0xeef
 3812 0edc 2C       		.uleb128 0x2c
 3813 0edd 08180000 		.4byte	0x1808
 3814 0ee1 2D010000 		.4byte	.LLST86
 3815 0ee5 2C       		.uleb128 0x2c
 3816 0ee6 FC170000 		.4byte	0x17fc
 3817 0eea 41010000 		.4byte	.LLST87
 3818 0eee 00       		.byte	0
 3819 0eef 2F       		.uleb128 0x2f
 3820 0ef0 48000000 		.4byte	.LVL188
 3821 0ef4 30       		.uleb128 0x30
 3822 0ef5 01       		.uleb128 0x1
 3823 0ef6 50       		.byte	0x50
 3824 0ef7 02       		.uleb128 0x2
 3825 0ef8 76       		.byte	0x76
 3826 0ef9 00       		.sleb128 0
 3827 0efa 00       		.byte	0
 3828 0efb 00       		.byte	0
 3829 0efc 00       		.byte	0
 3830 0efd 26       		.uleb128 0x26
 3831 0efe D7000000 		.4byte	.LASF217
 3832 0f02 01       		.byte	0x1
 3833 0f03 4E04     		.2byte	0x44e
 3834 0f05 B50C0000 		.4byte	0xcb5
 3835 0f09 00000000 		.4byte	.LFB215
 3836 0f0d 88000000 		.4byte	.LFE215-.LFB215
 3837 0f11 01       		.uleb128 0x1
 3838 0f12 9C       		.byte	0x9c
 3839 0f13 DF0F0000 		.4byte	0xfdf
 3840 0f17 31       		.uleb128 0x31
 3841 0f18 73726300 		.ascii	"src\000"
 3842 0f1c 01       		.byte	0x1
 3843 0f1d 4E04     		.2byte	0x44e
 3844 0f1f 980C0000 		.4byte	0xc98
 3845 0f23 59010000 		.4byte	.LLST70
 3846 0f27 32       		.uleb128 0x32
 3847 0f28 A5040000 		.4byte	.LASF218
 3848 0f2c 01       		.byte	0x1
 3849 0f2d 4E04     		.2byte	0x44e
 3850 0f2f A2000000 		.4byte	0xa2
 3851 0f33 77010000 		.4byte	.LLST71
 3852 0f37 33       		.uleb128 0x33
 3853 0f38 78090000 		.4byte	.LASF219
 3854 0f3c 01       		.byte	0x1
 3855 0f3d 5004     		.2byte	0x450
 3856 0f3f C00D0000 		.4byte	0xdc0
 3857 0f43 02       		.uleb128 0x2
 3858 0f44 91       		.byte	0x91
 3859 0f45 50       		.sleb128 -48
 3860 0f46 2A       		.uleb128 0x2a
 3861 0f47 B40A0000 		.4byte	.LASF220
 3862 0f4b 01       		.byte	0x1
 3863 0f4c 5104     		.2byte	0x451
 3864 0f4e BD000000 		.4byte	0xbd
ARM GAS  /tmp/cc9w1cGI.s 			page 104


 3865 0f52 98010000 		.4byte	.LLST72
 3866 0f56 2D       		.uleb128 0x2d
 3867 0f57 EF170000 		.4byte	0x17ef
 3868 0f5b 14000000 		.4byte	.LBB105
 3869 0f5f 00010000 		.4byte	.Ldebug_ranges0+0x100
 3870 0f63 01       		.byte	0x1
 3871 0f64 5604     		.2byte	0x456
 3872 0f66 7D0F0000 		.4byte	0xf7d
 3873 0f6a 2C       		.uleb128 0x2c
 3874 0f6b 08180000 		.4byte	0x1808
 3875 0f6f B6010000 		.4byte	.LLST73
 3876 0f73 2C       		.uleb128 0x2c
 3877 0f74 FC170000 		.4byte	0x17fc
 3878 0f78 CA010000 		.4byte	.LLST74
 3879 0f7c 00       		.byte	0
 3880 0f7d 2D       		.uleb128 0x2d
 3881 0f7e 15180000 		.4byte	0x1815
 3882 0f82 4A000000 		.4byte	.LBB109
 3883 0f86 18010000 		.4byte	.Ldebug_ranges0+0x118
 3884 0f8a 01       		.byte	0x1
 3885 0f8b 7804     		.2byte	0x478
 3886 0f8d A40F0000 		.4byte	0xfa4
 3887 0f91 2C       		.uleb128 0x2c
 3888 0f92 2E180000 		.4byte	0x182e
 3889 0f96 E2010000 		.4byte	.LLST75
 3890 0f9a 2C       		.uleb128 0x2c
 3891 0f9b 22180000 		.4byte	0x1822
 3892 0f9f F6010000 		.4byte	.LLST76
 3893 0fa3 00       		.byte	0
 3894 0fa4 34       		.uleb128 0x34
 3895 0fa5 12000000 		.4byte	.LVL176
 3896 0fa9 7E180000 		.4byte	0x187e
 3897 0fad C30F0000 		.4byte	0xfc3
 3898 0fb1 30       		.uleb128 0x30
 3899 0fb2 01       		.uleb128 0x1
 3900 0fb3 50       		.byte	0x50
 3901 0fb4 02       		.uleb128 0x2
 3902 0fb5 7D       		.byte	0x7d
 3903 0fb6 00       		.sleb128 0
 3904 0fb7 30       		.uleb128 0x30
 3905 0fb8 01       		.uleb128 0x1
 3906 0fb9 51       		.byte	0x51
 3907 0fba 01       		.uleb128 0x1
 3908 0fbb 30       		.byte	0x30
 3909 0fbc 30       		.uleb128 0x30
 3910 0fbd 01       		.uleb128 0x1
 3911 0fbe 52       		.byte	0x52
 3912 0fbf 02       		.uleb128 0x2
 3913 0fc0 08       		.byte	0x8
 3914 0fc1 20       		.byte	0x20
 3915 0fc2 00       		.byte	0
 3916 0fc3 35       		.uleb128 0x35
 3917 0fc4 4A000000 		.4byte	.LVL179
 3918 0fc8 87180000 		.4byte	0x1887
 3919 0fcc 30       		.uleb128 0x30
 3920 0fcd 01       		.uleb128 0x1
 3921 0fce 50       		.byte	0x50
ARM GAS  /tmp/cc9w1cGI.s 			page 105


 3922 0fcf 02       		.uleb128 0x2
 3923 0fd0 75       		.byte	0x75
 3924 0fd1 00       		.sleb128 0
 3925 0fd2 30       		.uleb128 0x30
 3926 0fd3 01       		.uleb128 0x1
 3927 0fd4 51       		.byte	0x51
 3928 0fd5 01       		.uleb128 0x1
 3929 0fd6 30       		.byte	0x30
 3930 0fd7 30       		.uleb128 0x30
 3931 0fd8 01       		.uleb128 0x1
 3932 0fd9 52       		.byte	0x52
 3933 0fda 02       		.uleb128 0x2
 3934 0fdb 7D       		.byte	0x7d
 3935 0fdc 00       		.sleb128 0
 3936 0fdd 00       		.byte	0
 3937 0fde 00       		.byte	0
 3938 0fdf 36       		.uleb128 0x36
 3939 0fe0 45070000 		.4byte	.LASF277
 3940 0fe4 01       		.byte	0x1
 3941 0fe5 2504     		.2byte	0x425
 3942 0fe7 B50C0000 		.4byte	0xcb5
 3943 0feb 15100000 		.4byte	0x1015
 3944 0fef 37       		.uleb128 0x37
 3945 0ff0 737200   		.ascii	"sr\000"
 3946 0ff3 01       		.byte	0x1
 3947 0ff4 2704     		.2byte	0x427
 3948 0ff6 BD000000 		.4byte	0xbd
 3949 0ffa 28       		.uleb128 0x28
 3950 0ffb 93040000 		.4byte	.LASF221
 3951 0fff 01       		.byte	0x1
 3952 1000 2804     		.2byte	0x428
 3953 1002 BD000000 		.4byte	0xbd
 3954 1006 38       		.uleb128 0x38
 3955 1007 28       		.uleb128 0x28
 3956 1008 C5040000 		.4byte	.LASF215
 3957 100c 01       		.byte	0x1
 3958 100d 2D04     		.2byte	0x42d
 3959 100f C10C0000 		.4byte	0xcc1
 3960 1013 00       		.byte	0
 3961 1014 00       		.byte	0
 3962 1015 26       		.uleb128 0x26
 3963 1016 44080000 		.4byte	.LASF222
 3964 101a 01       		.byte	0x1
 3965 101b F603     		.2byte	0x3f6
 3966 101d B50C0000 		.4byte	0xcb5
 3967 1021 00000000 		.4byte	.LFB213
 3968 1025 88000000 		.4byte	.LFE213-.LFB213
 3969 1029 01       		.uleb128 0x1
 3970 102a 9C       		.byte	0x9c
 3971 102b F7100000 		.4byte	0x10f7
 3972 102f 32       		.uleb128 0x32
 3973 1030 090D0000 		.4byte	.LASF223
 3974 1034 01       		.byte	0x1
 3975 1035 F603     		.2byte	0x3f6
 3976 1037 D7000000 		.4byte	0xd7
 3977 103b 0E020000 		.4byte	.LLST63
 3978 103f 32       		.uleb128 0x32
ARM GAS  /tmp/cc9w1cGI.s 			page 106


 3979 1040 A5040000 		.4byte	.LASF218
 3980 1044 01       		.byte	0x1
 3981 1045 F603     		.2byte	0x3f6
 3982 1047 A2000000 		.4byte	0xa2
 3983 104b 2C020000 		.4byte	.LLST64
 3984 104f 33       		.uleb128 0x33
 3985 1050 78090000 		.4byte	.LASF219
 3986 1054 01       		.byte	0x1
 3987 1055 F803     		.2byte	0x3f8
 3988 1057 C00D0000 		.4byte	0xdc0
 3989 105b 02       		.uleb128 0x2
 3990 105c 91       		.byte	0x91
 3991 105d 50       		.sleb128 -48
 3992 105e 2A       		.uleb128 0x2a
 3993 105f B40A0000 		.4byte	.LASF220
 3994 1063 01       		.byte	0x1
 3995 1064 F903     		.2byte	0x3f9
 3996 1066 BD000000 		.4byte	0xbd
 3997 106a 4D020000 		.4byte	.LLST65
 3998 106e 2D       		.uleb128 0x2d
 3999 106f EF170000 		.4byte	0x17ef
 4000 1073 14000000 		.4byte	.LBB97
 4001 1077 D0000000 		.4byte	.Ldebug_ranges0+0xd0
 4002 107b 01       		.byte	0x1
 4003 107c FE03     		.2byte	0x3fe
 4004 107e 95100000 		.4byte	0x1095
 4005 1082 2C       		.uleb128 0x2c
 4006 1083 08180000 		.4byte	0x1808
 4007 1087 6B020000 		.4byte	.LLST66
 4008 108b 2C       		.uleb128 0x2c
 4009 108c FC170000 		.4byte	0x17fc
 4010 1090 7F020000 		.4byte	.LLST67
 4011 1094 00       		.byte	0
 4012 1095 2D       		.uleb128 0x2d
 4013 1096 15180000 		.4byte	0x1815
 4014 109a 4A000000 		.4byte	.LBB101
 4015 109e E8000000 		.4byte	.Ldebug_ranges0+0xe8
 4016 10a2 01       		.byte	0x1
 4017 10a3 2004     		.2byte	0x420
 4018 10a5 BC100000 		.4byte	0x10bc
 4019 10a9 2C       		.uleb128 0x2c
 4020 10aa 2E180000 		.4byte	0x182e
 4021 10ae 97020000 		.4byte	.LLST68
 4022 10b2 2C       		.uleb128 0x2c
 4023 10b3 22180000 		.4byte	0x1822
 4024 10b7 AB020000 		.4byte	.LLST69
 4025 10bb 00       		.byte	0
 4026 10bc 34       		.uleb128 0x34
 4027 10bd 12000000 		.4byte	.LVL166
 4028 10c1 7E180000 		.4byte	0x187e
 4029 10c5 DB100000 		.4byte	0x10db
 4030 10c9 30       		.uleb128 0x30
 4031 10ca 01       		.uleb128 0x1
 4032 10cb 50       		.byte	0x50
 4033 10cc 02       		.uleb128 0x2
 4034 10cd 7D       		.byte	0x7d
 4035 10ce 00       		.sleb128 0
ARM GAS  /tmp/cc9w1cGI.s 			page 107


 4036 10cf 30       		.uleb128 0x30
 4037 10d0 01       		.uleb128 0x1
 4038 10d1 51       		.byte	0x51
 4039 10d2 01       		.uleb128 0x1
 4040 10d3 30       		.byte	0x30
 4041 10d4 30       		.uleb128 0x30
 4042 10d5 01       		.uleb128 0x1
 4043 10d6 52       		.byte	0x52
 4044 10d7 02       		.uleb128 0x2
 4045 10d8 08       		.byte	0x8
 4046 10d9 20       		.byte	0x20
 4047 10da 00       		.byte	0
 4048 10db 35       		.uleb128 0x35
 4049 10dc 4A000000 		.4byte	.LVL169
 4050 10e0 87180000 		.4byte	0x1887
 4051 10e4 30       		.uleb128 0x30
 4052 10e5 01       		.uleb128 0x1
 4053 10e6 50       		.byte	0x50
 4054 10e7 02       		.uleb128 0x2
 4055 10e8 75       		.byte	0x75
 4056 10e9 00       		.sleb128 0
 4057 10ea 30       		.uleb128 0x30
 4058 10eb 01       		.uleb128 0x1
 4059 10ec 51       		.byte	0x51
 4060 10ed 01       		.uleb128 0x1
 4061 10ee 30       		.byte	0x30
 4062 10ef 30       		.uleb128 0x30
 4063 10f0 01       		.uleb128 0x1
 4064 10f1 52       		.byte	0x52
 4065 10f2 02       		.uleb128 0x2
 4066 10f3 7D       		.byte	0x7d
 4067 10f4 00       		.sleb128 0
 4068 10f5 00       		.byte	0
 4069 10f6 00       		.byte	0
 4070 10f7 26       		.uleb128 0x26
 4071 10f8 DE050000 		.4byte	.LASF224
 4072 10fc 01       		.byte	0x1
 4073 10fd 7502     		.2byte	0x275
 4074 10ff B50C0000 		.4byte	0xcb5
 4075 1103 00000000 		.4byte	.LFB212
 4076 1107 94000000 		.4byte	.LFE212-.LFB212
 4077 110b 01       		.uleb128 0x1
 4078 110c 9C       		.byte	0x9c
 4079 110d 8A110000 		.4byte	0x118a
 4080 1111 32       		.uleb128 0x32
 4081 1112 B0030000 		.4byte	.LASF225
 4082 1116 01       		.byte	0x1
 4083 1117 7502     		.2byte	0x275
 4084 1119 BD000000 		.4byte	0xbd
 4085 111d C3020000 		.4byte	.LLST56
 4086 1121 27       		.uleb128 0x27
 4087 1122 737200   		.ascii	"sr\000"
 4088 1125 01       		.byte	0x1
 4089 1126 7702     		.2byte	0x277
 4090 1128 BD000000 		.4byte	0xbd
 4091 112c 18030000 		.4byte	.LLST57
 4092 1130 2D       		.uleb128 0x2d
ARM GAS  /tmp/cc9w1cGI.s 			page 108


 4093 1131 7C170000 		.4byte	0x177c
 4094 1135 14000000 		.4byte	.LBB93
 4095 1139 B8000000 		.4byte	.Ldebug_ranges0+0xb8
 4096 113d 01       		.byte	0x1
 4097 113e 9C02     		.2byte	0x29c
 4098 1140 78110000 		.4byte	0x1178
 4099 1144 29       		.uleb128 0x29
 4100 1145 B8000000 		.4byte	.Ldebug_ranges0+0xb8
 4101 1149 2E       		.uleb128 0x2e
 4102 114a 88170000 		.4byte	0x1788
 4103 114e 57030000 		.4byte	.LLST58
 4104 1152 2E       		.uleb128 0x2e
 4105 1153 92170000 		.4byte	0x1792
 4106 1157 76030000 		.4byte	.LLST59
 4107 115b 2E       		.uleb128 0x2e
 4108 115c 9D170000 		.4byte	0x179d
 4109 1160 89030000 		.4byte	.LLST60
 4110 1164 2E       		.uleb128 0x2e
 4111 1165 A8170000 		.4byte	0x17a8
 4112 1169 9C030000 		.4byte	.LLST61
 4113 116d 2E       		.uleb128 0x2e
 4114 116e B3170000 		.4byte	0x17b3
 4115 1172 AF030000 		.4byte	.LLST62
 4116 1176 00       		.byte	0
 4117 1177 00       		.byte	0
 4118 1178 2F       		.uleb128 0x2f
 4119 1179 6C000000 		.4byte	.LVL160
 4120 117d 30       		.uleb128 0x30
 4121 117e 01       		.uleb128 0x1
 4122 117f 50       		.byte	0x50
 4123 1180 02       		.uleb128 0x2
 4124 1181 75       		.byte	0x75
 4125 1182 00       		.sleb128 0
 4126 1183 30       		.uleb128 0x30
 4127 1184 01       		.uleb128 0x1
 4128 1185 51       		.byte	0x51
 4129 1186 01       		.uleb128 0x1
 4130 1187 30       		.byte	0x30
 4131 1188 00       		.byte	0
 4132 1189 00       		.byte	0
 4133 118a 26       		.uleb128 0x26
 4134 118b D20C0000 		.4byte	.LASF226
 4135 118f 01       		.byte	0x1
 4136 1190 4702     		.2byte	0x247
 4137 1192 B50C0000 		.4byte	0xcb5
 4138 1196 00000000 		.4byte	.LFB211
 4139 119a 98000000 		.4byte	.LFE211-.LFB211
 4140 119e 01       		.uleb128 0x1
 4141 119f 9C       		.byte	0x9c
 4142 11a0 1D120000 		.4byte	0x121d
 4143 11a4 32       		.uleb128 0x32
 4144 11a5 B0030000 		.4byte	.LASF225
 4145 11a9 01       		.byte	0x1
 4146 11aa 4702     		.2byte	0x247
 4147 11ac 1D120000 		.4byte	0x121d
 4148 11b0 C2030000 		.4byte	.LLST49
 4149 11b4 27       		.uleb128 0x27
ARM GAS  /tmp/cc9w1cGI.s 			page 109


 4150 11b5 737200   		.ascii	"sr\000"
 4151 11b8 01       		.byte	0x1
 4152 11b9 4902     		.2byte	0x249
 4153 11bb BD000000 		.4byte	0xbd
 4154 11bf FC030000 		.4byte	.LLST50
 4155 11c3 2D       		.uleb128 0x2d
 4156 11c4 7C170000 		.4byte	0x177c
 4157 11c8 14000000 		.4byte	.LBB89
 4158 11cc A0000000 		.4byte	.Ldebug_ranges0+0xa0
 4159 11d0 01       		.byte	0x1
 4160 11d1 6E02     		.2byte	0x26e
 4161 11d3 0B120000 		.4byte	0x120b
 4162 11d7 29       		.uleb128 0x29
 4163 11d8 A0000000 		.4byte	.Ldebug_ranges0+0xa0
 4164 11dc 2E       		.uleb128 0x2e
 4165 11dd 88170000 		.4byte	0x1788
 4166 11e1 3B040000 		.4byte	.LLST51
 4167 11e5 2E       		.uleb128 0x2e
 4168 11e6 92170000 		.4byte	0x1792
 4169 11ea 5A040000 		.4byte	.LLST52
 4170 11ee 2E       		.uleb128 0x2e
 4171 11ef 9D170000 		.4byte	0x179d
 4172 11f3 6D040000 		.4byte	.LLST53
 4173 11f7 2E       		.uleb128 0x2e
 4174 11f8 A8170000 		.4byte	0x17a8
 4175 11fc 80040000 		.4byte	.LLST54
 4176 1200 2E       		.uleb128 0x2e
 4177 1201 B3170000 		.4byte	0x17b3
 4178 1205 93040000 		.4byte	.LLST55
 4179 1209 00       		.byte	0
 4180 120a 00       		.byte	0
 4181 120b 2F       		.uleb128 0x2f
 4182 120c 6E000000 		.4byte	.LVL136
 4183 1210 30       		.uleb128 0x30
 4184 1211 01       		.uleb128 0x1
 4185 1212 50       		.byte	0x50
 4186 1213 02       		.uleb128 0x2
 4187 1214 75       		.byte	0x75
 4188 1215 00       		.sleb128 0
 4189 1216 30       		.uleb128 0x30
 4190 1217 01       		.uleb128 0x1
 4191 1218 51       		.byte	0x51
 4192 1219 01       		.uleb128 0x1
 4193 121a 30       		.byte	0x30
 4194 121b 00       		.byte	0
 4195 121c 00       		.byte	0
 4196 121d 15       		.uleb128 0x15
 4197 121e 04       		.byte	0x4
 4198 121f BD000000 		.4byte	0xbd
 4199 1223 26       		.uleb128 0x26
 4200 1224 1A020000 		.4byte	.LASF227
 4201 1228 01       		.byte	0x1
 4202 1229 4202     		.2byte	0x242
 4203 122b B50C0000 		.4byte	0xcb5
 4204 122f 00000000 		.4byte	.LFB210
 4205 1233 0C000000 		.4byte	.LFE210-.LFB210
 4206 1237 01       		.uleb128 0x1
ARM GAS  /tmp/cc9w1cGI.s 			page 110


 4207 1238 9C       		.byte	0x9c
 4208 1239 7D120000 		.4byte	0x127d
 4209 123d 31       		.uleb128 0x31
 4210 123e 636D6400 		.ascii	"cmd\000"
 4211 1242 01       		.byte	0x1
 4212 1243 4202     		.2byte	0x242
 4213 1245 2B0D0000 		.4byte	0xd2b
 4214 1249 A6040000 		.4byte	.LLST47
 4215 124d 31       		.uleb128 0x31
 4216 124e 61726700 		.ascii	"arg\000"
 4217 1252 01       		.byte	0x1
 4218 1253 4202     		.2byte	0x242
 4219 1255 BD000000 		.4byte	0xbd
 4220 1259 D2040000 		.4byte	.LLST48
 4221 125d 39       		.uleb128 0x39
 4222 125e 0C000000 		.4byte	.LVL117
 4223 1262 3D150000 		.4byte	0x153d
 4224 1266 30       		.uleb128 0x30
 4225 1267 01       		.uleb128 0x1
 4226 1268 50       		.byte	0x50
 4227 1269 03       		.uleb128 0x3
 4228 126a 40       		.byte	0x40
 4229 126b 3D       		.byte	0x3d
 4230 126c 24       		.byte	0x24
 4231 126d 30       		.uleb128 0x30
 4232 126e 01       		.uleb128 0x1
 4233 126f 51       		.byte	0x51
 4234 1270 03       		.uleb128 0x3
 4235 1271 F3       		.byte	0xf3
 4236 1272 01       		.uleb128 0x1
 4237 1273 50       		.byte	0x50
 4238 1274 30       		.uleb128 0x30
 4239 1275 01       		.uleb128 0x1
 4240 1276 52       		.byte	0x52
 4241 1277 03       		.uleb128 0x3
 4242 1278 F3       		.byte	0xf3
 4243 1279 01       		.uleb128 0x1
 4244 127a 51       		.byte	0x51
 4245 127b 00       		.byte	0
 4246 127c 00       		.byte	0
 4247 127d 26       		.uleb128 0x26
 4248 127e 2C0C0000 		.4byte	.LASF228
 4249 1282 01       		.byte	0x1
 4250 1283 F401     		.2byte	0x1f4
 4251 1285 B50C0000 		.4byte	0xcb5
 4252 1289 00000000 		.4byte	.LFB209
 4253 128d AC000000 		.4byte	.LFE209-.LFB209
 4254 1291 01       		.uleb128 0x1
 4255 1292 9C       		.byte	0x9c
 4256 1293 10130000 		.4byte	0x1310
 4257 1297 31       		.uleb128 0x31
 4258 1298 636D6400 		.ascii	"cmd\000"
 4259 129c 01       		.byte	0x1
 4260 129d F401     		.2byte	0x1f4
 4261 129f 2B0D0000 		.4byte	0xd2b
 4262 12a3 FE040000 		.4byte	.LLST41
 4263 12a7 31       		.uleb128 0x31
ARM GAS  /tmp/cc9w1cGI.s 			page 111


 4264 12a8 61726700 		.ascii	"arg\000"
 4265 12ac 01       		.byte	0x1
 4266 12ad F401     		.2byte	0x1f4
 4267 12af BD000000 		.4byte	0xbd
 4268 12b3 35050000 		.4byte	.LLST42
 4269 12b7 32       		.uleb128 0x32
 4270 12b8 BE080000 		.4byte	.LASF229
 4271 12bc 01       		.byte	0x1
 4272 12bd F401     		.2byte	0x1f4
 4273 12bf A2000000 		.4byte	0xa2
 4274 12c3 6C050000 		.4byte	.LLST43
 4275 12c7 32       		.uleb128 0x32
 4276 12c8 A5040000 		.4byte	.LASF218
 4277 12cc 01       		.byte	0x1
 4278 12cd F401     		.2byte	0x1f4
 4279 12cf A2000000 		.4byte	0xa2
 4280 12d3 8D050000 		.4byte	.LLST44
 4281 12d7 32       		.uleb128 0x32
 4282 12d8 D3080000 		.4byte	.LASF230
 4283 12dc 01       		.byte	0x1
 4284 12dd F401     		.2byte	0x1f4
 4285 12df B50C0000 		.4byte	0xcb5
 4286 12e3 B9050000 		.4byte	.LLST45
 4287 12e7 2A       		.uleb128 0x2a
 4288 12e8 88070000 		.4byte	.LASF231
 4289 12ec 01       		.byte	0x1
 4290 12ed F601     		.2byte	0x1f6
 4291 12ef BD000000 		.4byte	0xbd
 4292 12f3 E5050000 		.4byte	.LLST46
 4293 12f7 39       		.uleb128 0x39
 4294 12f8 8A000000 		.4byte	.LVL111
 4295 12fc 3D150000 		.4byte	0x153d
 4296 1300 30       		.uleb128 0x30
 4297 1301 01       		.uleb128 0x1
 4298 1302 51       		.byte	0x51
 4299 1303 03       		.uleb128 0x3
 4300 1304 F3       		.byte	0xf3
 4301 1305 01       		.uleb128 0x1
 4302 1306 50       		.byte	0x50
 4303 1307 30       		.uleb128 0x30
 4304 1308 01       		.uleb128 0x1
 4305 1309 52       		.byte	0x52
 4306 130a 03       		.uleb128 0x3
 4307 130b F3       		.byte	0xf3
 4308 130c 01       		.uleb128 0x1
 4309 130d 51       		.byte	0x51
 4310 130e 00       		.byte	0
 4311 130f 00       		.byte	0
 4312 1310 3A       		.uleb128 0x3a
 4313 1311 FA060000 		.4byte	.LASF235
 4314 1315 01       		.byte	0x1
 4315 1316 E301     		.2byte	0x1e3
 4316 1318 00000000 		.4byte	.LFB208
 4317 131c 2C000000 		.4byte	.LFE208-.LFB208
 4318 1320 01       		.uleb128 0x1
 4319 1321 9C       		.byte	0x9c
 4320 1322 5F130000 		.4byte	0x135f
ARM GAS  /tmp/cc9w1cGI.s 			page 112


 4321 1326 32       		.uleb128 0x32
 4322 1327 09000000 		.4byte	.LASF232
 4323 132b 01       		.byte	0x1
 4324 132c E301     		.2byte	0x1e3
 4325 132e 5F130000 		.4byte	0x135f
 4326 1332 19060000 		.4byte	.LLST38
 4327 1336 2A       		.uleb128 0x2a
 4328 1337 B9040000 		.4byte	.LASF233
 4329 133b 01       		.byte	0x1
 4330 133c E501     		.2byte	0x1e5
 4331 133e BD000000 		.4byte	0xbd
 4332 1342 60060000 		.4byte	.LLST39
 4333 1346 3B       		.uleb128 0x3b
 4334 1347 04000000 		.4byte	.LBB88
 4335 134b 24000000 		.4byte	.LBE88-.LBB88
 4336 134f 27       		.uleb128 0x27
 4337 1350 6900     		.ascii	"i\000"
 4338 1352 01       		.byte	0x1
 4339 1353 E701     		.2byte	0x1e7
 4340 1355 97000000 		.4byte	0x97
 4341 1359 73060000 		.4byte	.LLST40
 4342 135d 00       		.byte	0
 4343 135e 00       		.byte	0
 4344 135f 15       		.uleb128 0x15
 4345 1360 04       		.byte	0x4
 4346 1361 97000000 		.4byte	0x97
 4347 1365 3C       		.uleb128 0x3c
 4348 1366 49060000 		.4byte	.LASF244
 4349 136a 01       		.byte	0x1
 4350 136b DE01     		.2byte	0x1de
 4351 136d BD000000 		.4byte	0xbd
 4352 1371 00000000 		.4byte	.LFB207
 4353 1375 08000000 		.4byte	.LFE207-.LFB207
 4354 1379 01       		.uleb128 0x1
 4355 137a 9C       		.byte	0x9c
 4356 137b 26       		.uleb128 0x26
 4357 137c 8E0A0000 		.4byte	.LASF234
 4358 1380 01       		.byte	0x1
 4359 1381 C801     		.2byte	0x1c8
 4360 1383 B50C0000 		.4byte	0xcb5
 4361 1387 00000000 		.4byte	.LFB206
 4362 138b 20000000 		.4byte	.LFE206-.LFB206
 4363 138f 01       		.uleb128 0x1
 4364 1390 9C       		.byte	0x9c
 4365 1391 D3130000 		.4byte	0x13d3
 4366 1395 31       		.uleb128 0x31
 4367 1396 636D6400 		.ascii	"cmd\000"
 4368 139a 01       		.byte	0x1
 4369 139b C801     		.2byte	0x1c8
 4370 139d 2B0D0000 		.4byte	0xd2b
 4371 13a1 87060000 		.4byte	.LLST36
 4372 13a5 31       		.uleb128 0x31
 4373 13a6 61726700 		.ascii	"arg\000"
 4374 13aa 01       		.byte	0x1
 4375 13ab C801     		.2byte	0x1c8
 4376 13ad BD000000 		.4byte	0xbd
 4377 13b1 B3060000 		.4byte	.LLST37
ARM GAS  /tmp/cc9w1cGI.s 			page 113


 4378 13b5 39       		.uleb128 0x39
 4379 13b6 20000000 		.4byte	.LVL91
 4380 13ba 3D150000 		.4byte	0x153d
 4381 13be 30       		.uleb128 0x30
 4382 13bf 01       		.uleb128 0x1
 4383 13c0 50       		.byte	0x50
 4384 13c1 01       		.uleb128 0x1
 4385 13c2 30       		.byte	0x30
 4386 13c3 30       		.uleb128 0x30
 4387 13c4 01       		.uleb128 0x1
 4388 13c5 51       		.byte	0x51
 4389 13c6 03       		.uleb128 0x3
 4390 13c7 F3       		.byte	0xf3
 4391 13c8 01       		.uleb128 0x1
 4392 13c9 50       		.byte	0x50
 4393 13ca 30       		.uleb128 0x30
 4394 13cb 01       		.uleb128 0x1
 4395 13cc 52       		.byte	0x52
 4396 13cd 03       		.uleb128 0x3
 4397 13ce F3       		.byte	0xf3
 4398 13cf 01       		.uleb128 0x1
 4399 13d0 51       		.byte	0x51
 4400 13d1 00       		.byte	0
 4401 13d2 00       		.byte	0
 4402 13d3 3D       		.uleb128 0x3d
 4403 13d4 9B060000 		.4byte	.LASF278
 4404 13d8 01       		.byte	0x1
 4405 13d9 BA01     		.2byte	0x1ba
 4406 13db 00000000 		.4byte	.LFB205
 4407 13df 26000000 		.4byte	.LFE205-.LFB205
 4408 13e3 01       		.uleb128 0x1
 4409 13e4 9C       		.byte	0x9c
 4410 13e5 3A       		.uleb128 0x3a
 4411 13e6 73050000 		.4byte	.LASF236
 4412 13ea 01       		.byte	0x1
 4413 13eb B401     		.2byte	0x1b4
 4414 13ed 00000000 		.4byte	.LFB204
 4415 13f1 02000000 		.4byte	.LFE204-.LFB204
 4416 13f5 01       		.uleb128 0x1
 4417 13f6 9C       		.byte	0x9c
 4418 13f7 0A140000 		.4byte	0x140a
 4419 13fb 3E       		.uleb128 0x3e
 4420 13fc D4070000 		.4byte	.LASF237
 4421 1400 01       		.byte	0x1
 4422 1401 B401     		.2byte	0x1b4
 4423 1403 97000000 		.4byte	0x97
 4424 1407 01       		.uleb128 0x1
 4425 1408 50       		.byte	0x50
 4426 1409 00       		.byte	0
 4427 140a 3A       		.uleb128 0x3a
 4428 140b 9C030000 		.4byte	.LASF238
 4429 140f 01       		.byte	0x1
 4430 1410 8701     		.2byte	0x187
 4431 1412 00000000 		.4byte	.LFB203
 4432 1416 DC000000 		.4byte	.LFE203-.LFB203
 4433 141a 01       		.uleb128 0x1
 4434 141b 9C       		.byte	0x9c
ARM GAS  /tmp/cc9w1cGI.s 			page 114


 4435 141c C2140000 		.4byte	0x14c2
 4436 1420 32       		.uleb128 0x32
 4437 1421 D4070000 		.4byte	.LASF237
 4438 1425 01       		.byte	0x1
 4439 1426 8701     		.2byte	0x187
 4440 1428 97000000 		.4byte	0x97
 4441 142c DF060000 		.4byte	.LLST26
 4442 1430 32       		.uleb128 0x32
 4443 1431 9A040000 		.4byte	.LASF239
 4444 1435 01       		.byte	0x1
 4445 1436 8701     		.2byte	0x187
 4446 1438 BD000000 		.4byte	0xbd
 4447 143c 00070000 		.4byte	.LLST27
 4448 1440 32       		.uleb128 0x32
 4449 1441 90090000 		.4byte	.LASF240
 4450 1445 01       		.byte	0x1
 4451 1446 8701     		.2byte	0x187
 4452 1448 97000000 		.4byte	0x97
 4453 144c 3A070000 		.4byte	.LLST28
 4454 1450 32       		.uleb128 0x32
 4455 1451 EF020000 		.4byte	.LASF241
 4456 1455 01       		.byte	0x1
 4457 1456 8701     		.2byte	0x187
 4458 1458 B50C0000 		.4byte	0xcb5
 4459 145c A6070000 		.4byte	.LLST29
 4460 1460 3F       		.uleb128 0x3f
 4461 1461 50090000 		.4byte	.LASF242
 4462 1465 01       		.byte	0x1
 4463 1466 8901     		.2byte	0x189
 4464 1468 BD000000 		.4byte	0xbd
 4465 146c 00       		.byte	0
 4466 146d 2A       		.uleb128 0x2a
 4467 146e 52050000 		.4byte	.LASF243
 4468 1472 01       		.byte	0x1
 4469 1473 8A01     		.2byte	0x18a
 4470 1475 BD000000 		.4byte	0xbd
 4471 1479 E0070000 		.4byte	.LLST30
 4472 147d 40       		.uleb128 0x40
 4473 147e 38170000 		.4byte	0x1738
 4474 1482 10000000 		.4byte	.LBB74
 4475 1486 60000000 		.4byte	.Ldebug_ranges0+0x60
 4476 148a 01       		.byte	0x1
 4477 148b 9201     		.2byte	0x192
 4478 148d 2C       		.uleb128 0x2c
 4479 148e 4F170000 		.4byte	0x174f
 4480 1492 44080000 		.4byte	.LLST31
 4481 1496 2C       		.uleb128 0x2c
 4482 1497 44170000 		.4byte	0x1744
 4483 149b 7C080000 		.4byte	.LLST32
 4484 149f 29       		.uleb128 0x29
 4485 14a0 60000000 		.4byte	.Ldebug_ranges0+0x60
 4486 14a4 2E       		.uleb128 0x2e
 4487 14a5 5A170000 		.4byte	0x175a
 4488 14a9 C4080000 		.4byte	.LLST33
 4489 14ad 2E       		.uleb128 0x2e
 4490 14ae 65170000 		.4byte	0x1765
 4491 14b2 FF080000 		.4byte	.LLST34
ARM GAS  /tmp/cc9w1cGI.s 			page 115


 4492 14b6 2E       		.uleb128 0x2e
 4493 14b7 70170000 		.4byte	0x1770
 4494 14bb 3A090000 		.4byte	.LLST35
 4495 14bf 00       		.byte	0
 4496 14c0 00       		.byte	0
 4497 14c1 00       		.byte	0
 4498 14c2 3C       		.uleb128 0x3c
 4499 14c3 6B000000 		.4byte	.LASF245
 4500 14c7 01       		.byte	0x1
 4501 14c8 8201     		.2byte	0x182
 4502 14ca B50C0000 		.4byte	0xcb5
 4503 14ce 00000000 		.4byte	.LFB202
 4504 14d2 04000000 		.4byte	.LFE202-.LFB202
 4505 14d6 01       		.uleb128 0x1
 4506 14d7 9C       		.byte	0x9c
 4507 14d8 26       		.uleb128 0x26
 4508 14d9 B6000000 		.4byte	.LASF246
 4509 14dd 01       		.byte	0x1
 4510 14de 7401     		.2byte	0x174
 4511 14e0 97000000 		.4byte	0x97
 4512 14e4 00000000 		.4byte	.LFB201
 4513 14e8 0A000000 		.4byte	.LFE201-.LFB201
 4514 14ec 01       		.uleb128 0x1
 4515 14ed 9C       		.byte	0x9c
 4516 14ee 03150000 		.4byte	0x1503
 4517 14f2 32       		.uleb128 0x32
 4518 14f3 D4070000 		.4byte	.LASF237
 4519 14f7 01       		.byte	0x1
 4520 14f8 7401     		.2byte	0x174
 4521 14fa 97000000 		.4byte	0x97
 4522 14fe 8A090000 		.4byte	.LLST25
 4523 1502 00       		.byte	0
 4524 1503 3A       		.uleb128 0x3a
 4525 1504 AE040000 		.4byte	.LASF247
 4526 1508 01       		.byte	0x1
 4527 1509 5801     		.2byte	0x158
 4528 150b 00000000 		.4byte	.LFB200
 4529 150f 28000000 		.4byte	.LFE200-.LFB200
 4530 1513 01       		.uleb128 0x1
 4531 1514 9C       		.byte	0x9c
 4532 1515 3D150000 		.4byte	0x153d
 4533 1519 34       		.uleb128 0x34
 4534 151a 0A000000 		.4byte	.LVL57
 4535 151e 93180000 		.4byte	0x1893
 4536 1522 2C150000 		.4byte	0x152c
 4537 1526 30       		.uleb128 0x30
 4538 1527 01       		.uleb128 0x1
 4539 1528 50       		.byte	0x50
 4540 1529 01       		.uleb128 0x1
 4541 152a 42       		.byte	0x42
 4542 152b 00       		.byte	0
 4543 152c 35       		.uleb128 0x35
 4544 152d 10000000 		.4byte	.LVL58
 4545 1531 93180000 		.4byte	0x1893
 4546 1535 30       		.uleb128 0x30
 4547 1536 01       		.uleb128 0x1
 4548 1537 50       		.byte	0x50
ARM GAS  /tmp/cc9w1cGI.s 			page 116


 4549 1538 02       		.uleb128 0x2
 4550 1539 08       		.byte	0x8
 4551 153a 3A       		.byte	0x3a
 4552 153b 00       		.byte	0
 4553 153c 00       		.byte	0
 4554 153d 41       		.uleb128 0x41
 4555 153e 39090000 		.4byte	.LASF279
 4556 1542 01       		.byte	0x1
 4557 1543 1B01     		.2byte	0x11b
 4558 1545 B50C0000 		.4byte	0xcb5
 4559 1549 00000000 		.4byte	.LFB199
 4560 154d E6000000 		.4byte	.LFE199-.LFB199
 4561 1551 01       		.uleb128 0x1
 4562 1552 9C       		.byte	0x9c
 4563 1553 94160000 		.4byte	0x1694
 4564 1557 32       		.uleb128 0x32
 4565 1558 88070000 		.4byte	.LASF231
 4566 155c 01       		.byte	0x1
 4567 155d 1B01     		.2byte	0x11b
 4568 155f BD000000 		.4byte	0xbd
 4569 1563 AB090000 		.4byte	.LLST0
 4570 1567 31       		.uleb128 0x31
 4571 1568 636D6400 		.ascii	"cmd\000"
 4572 156c 01       		.byte	0x1
 4573 156d 1B01     		.2byte	0x11b
 4574 156f 2B0D0000 		.4byte	0xd2b
 4575 1573 470A0000 		.4byte	.LLST1
 4576 1577 31       		.uleb128 0x31
 4577 1578 61726700 		.ascii	"arg\000"
 4578 157c 01       		.byte	0x1
 4579 157d 1C01     		.2byte	0x11c
 4580 157f BD000000 		.4byte	0xbd
 4581 1583 B30A0000 		.4byte	.LLST2
 4582 1587 27       		.uleb128 0x27
 4583 1588 737200   		.ascii	"sr\000"
 4584 158b 01       		.byte	0x1
 4585 158c 1E01     		.2byte	0x11e
 4586 158e BD000000 		.4byte	0xbd
 4587 1592 ED0A0000 		.4byte	.LLST3
 4588 1596 2D       		.uleb128 0x2d
 4589 1597 7C170000 		.4byte	0x177c
 4590 159b 44000000 		.4byte	.LBB56
 4591 159f 00000000 		.4byte	.Ldebug_ranges0+0
 4592 15a3 01       		.byte	0x1
 4593 15a4 4601     		.2byte	0x146
 4594 15a6 DE150000 		.4byte	0x15de
 4595 15aa 29       		.uleb128 0x29
 4596 15ab 00000000 		.4byte	.Ldebug_ranges0+0
 4597 15af 2E       		.uleb128 0x2e
 4598 15b0 88170000 		.4byte	0x1788
 4599 15b4 210B0000 		.4byte	.LLST4
 4600 15b8 2E       		.uleb128 0x2e
 4601 15b9 92170000 		.4byte	0x1792
 4602 15bd 340B0000 		.4byte	.LLST5
 4603 15c1 2E       		.uleb128 0x2e
 4604 15c2 9D170000 		.4byte	0x179d
 4605 15c6 470B0000 		.4byte	.LLST6
ARM GAS  /tmp/cc9w1cGI.s 			page 117


 4606 15ca 2E       		.uleb128 0x2e
 4607 15cb A8170000 		.4byte	0x17a8
 4608 15cf 5A0B0000 		.4byte	.LLST7
 4609 15d3 2E       		.uleb128 0x2e
 4610 15d4 B3170000 		.4byte	0x17b3
 4611 15d8 6D0B0000 		.4byte	.LLST8
 4612 15dc 00       		.byte	0
 4613 15dd 00       		.byte	0
 4614 15de 2D       		.uleb128 0x2d
 4615 15df 7C170000 		.4byte	0x177c
 4616 15e3 80000000 		.4byte	.LBB60
 4617 15e7 18000000 		.4byte	.Ldebug_ranges0+0x18
 4618 15eb 01       		.byte	0x1
 4619 15ec 3D01     		.2byte	0x13d
 4620 15ee 26160000 		.4byte	0x1626
 4621 15f2 29       		.uleb128 0x29
 4622 15f3 18000000 		.4byte	.Ldebug_ranges0+0x18
 4623 15f7 2E       		.uleb128 0x2e
 4624 15f8 88170000 		.4byte	0x1788
 4625 15fc 800B0000 		.4byte	.LLST9
 4626 1600 2E       		.uleb128 0x2e
 4627 1601 92170000 		.4byte	0x1792
 4628 1605 9F0B0000 		.4byte	.LLST10
 4629 1609 2E       		.uleb128 0x2e
 4630 160a 9D170000 		.4byte	0x179d
 4631 160e B20B0000 		.4byte	.LLST11
 4632 1612 2E       		.uleb128 0x2e
 4633 1613 A8170000 		.4byte	0x17a8
 4634 1617 C50B0000 		.4byte	.LLST12
 4635 161b 2E       		.uleb128 0x2e
 4636 161c B3170000 		.4byte	0x17b3
 4637 1620 D80B0000 		.4byte	.LLST13
 4638 1624 00       		.byte	0
 4639 1625 00       		.byte	0
 4640 1626 40       		.uleb128 0x40
 4641 1627 94160000 		.4byte	0x1694
 4642 162b A8000000 		.4byte	.LBB64
 4643 162f 30000000 		.4byte	.Ldebug_ranges0+0x30
 4644 1633 01       		.byte	0x1
 4645 1634 4D01     		.2byte	0x14d
 4646 1636 29       		.uleb128 0x29
 4647 1637 30000000 		.4byte	.Ldebug_ranges0+0x30
 4648 163b 2E       		.uleb128 0x2e
 4649 163c A5160000 		.4byte	0x16a5
 4650 1640 EB0B0000 		.4byte	.LLST14
 4651 1644 2E       		.uleb128 0x2e
 4652 1645 B1160000 		.4byte	0x16b1
 4653 1649 180C0000 		.4byte	.LLST15
 4654 164d 40       		.uleb128 0x40
 4655 164e 7C170000 		.4byte	0x177c
 4656 1652 C0000000 		.4byte	.LBB66
 4657 1656 48000000 		.4byte	.Ldebug_ranges0+0x48
 4658 165a 01       		.byte	0x1
 4659 165b 0B01     		.2byte	0x10b
 4660 165d 29       		.uleb128 0x29
 4661 165e 48000000 		.4byte	.Ldebug_ranges0+0x48
 4662 1662 2E       		.uleb128 0x2e
ARM GAS  /tmp/cc9w1cGI.s 			page 118


 4663 1663 88170000 		.4byte	0x1788
 4664 1667 360C0000 		.4byte	.LLST16
 4665 166b 2E       		.uleb128 0x2e
 4666 166c 92170000 		.4byte	0x1792
 4667 1670 490C0000 		.4byte	.LLST17
 4668 1674 2E       		.uleb128 0x2e
 4669 1675 9D170000 		.4byte	0x179d
 4670 1679 5C0C0000 		.4byte	.LLST18
 4671 167d 2E       		.uleb128 0x2e
 4672 167e A8170000 		.4byte	0x17a8
 4673 1682 6F0C0000 		.4byte	.LLST19
 4674 1686 2E       		.uleb128 0x2e
 4675 1687 B3170000 		.4byte	0x17b3
 4676 168b 820C0000 		.4byte	.LLST20
 4677 168f 00       		.byte	0
 4678 1690 00       		.byte	0
 4679 1691 00       		.byte	0
 4680 1692 00       		.byte	0
 4681 1693 00       		.byte	0
 4682 1694 42       		.uleb128 0x42
 4683 1695 A8050000 		.4byte	.LASF260
 4684 1699 01       		.byte	0x1
 4685 169a 0201     		.2byte	0x102
 4686 169c B50C0000 		.4byte	0xcb5
 4687 16a0 01       		.byte	0x1
 4688 16a1 BD160000 		.4byte	0x16bd
 4689 16a5 28       		.uleb128 0x28
 4690 16a6 140D0000 		.4byte	.LASF248
 4691 16aa 01       		.byte	0x1
 4692 16ab 0401     		.2byte	0x104
 4693 16ad BD000000 		.4byte	0xbd
 4694 16b1 37       		.uleb128 0x37
 4695 16b2 737200   		.ascii	"sr\000"
 4696 16b5 01       		.byte	0x1
 4697 16b6 0501     		.2byte	0x105
 4698 16b8 BD000000 		.4byte	0xbd
 4699 16bc 00       		.byte	0
 4700 16bd 43       		.uleb128 0x43
 4701 16be 5C060000 		.4byte	.LASF249
 4702 16c2 01       		.byte	0x1
 4703 16c3 F5       		.byte	0xf5
 4704 16c4 360D0000 		.4byte	0xd36
 4705 16c8 00000000 		.4byte	.LFB197
 4706 16cc 10000000 		.4byte	.LFE197-.LFB197
 4707 16d0 01       		.uleb128 0x1
 4708 16d1 9C       		.byte	0x9c
 4709 16d2 F1160000 		.4byte	0x16f1
 4710 16d6 44       		.uleb128 0x44
 4711 16d7 7000     		.ascii	"p\000"
 4712 16d9 01       		.byte	0x1
 4713 16da F5       		.byte	0xf5
 4714 16db 360D0000 		.4byte	0xd36
 4715 16df 950C0000 		.4byte	.LLST24
 4716 16e3 45       		.uleb128 0x45
 4717 16e4 72657400 		.ascii	"ret\000"
 4718 16e8 01       		.byte	0x1
 4719 16e9 F7       		.byte	0xf7
ARM GAS  /tmp/cc9w1cGI.s 			page 119


 4720 16ea 360D0000 		.4byte	0xd36
 4721 16ee 01       		.uleb128 0x1
 4722 16ef 52       		.byte	0x52
 4723 16f0 00       		.byte	0
 4724 16f1 43       		.uleb128 0x43
 4725 16f2 270A0000 		.4byte	.LASF250
 4726 16f6 01       		.byte	0x1
 4727 16f7 E5       		.byte	0xe5
 4728 16f8 BD000000 		.4byte	0xbd
 4729 16fc 00000000 		.4byte	.LFB196
 4730 1700 24000000 		.4byte	.LFE196-.LFB196
 4731 1704 01       		.uleb128 0x1
 4732 1705 9C       		.byte	0x9c
 4733 1706 38170000 		.4byte	0x1738
 4734 170a 46       		.uleb128 0x46
 4735 170b 51020000 		.4byte	.LASF251
 4736 170f 01       		.byte	0x1
 4737 1710 E8       		.byte	0xe8
 4738 1711 D2000000 		.4byte	0xd2
 4739 1715 B70C0000 		.4byte	.LLST21
 4740 1719 46       		.uleb128 0x46
 4741 171a 87020000 		.4byte	.LASF252
 4742 171e 01       		.byte	0x1
 4743 171f E9       		.byte	0xe9
 4744 1720 D2000000 		.4byte	0xd2
 4745 1724 CF0C0000 		.4byte	.LLST22
 4746 1728 46       		.uleb128 0x46
 4747 1729 A00B0000 		.4byte	.LASF253
 4748 172d 01       		.byte	0x1
 4749 172e EA       		.byte	0xea
 4750 172f D2000000 		.4byte	0xd2
 4751 1733 ED0C0000 		.4byte	.LLST23
 4752 1737 00       		.byte	0
 4753 1738 47       		.uleb128 0x47
 4754 1739 890C0000 		.4byte	.LASF255
 4755 173d 01       		.byte	0x1
 4756 173e AC       		.byte	0xac
 4757 173f 01       		.byte	0x1
 4758 1740 7C170000 		.4byte	0x177c
 4759 1744 48       		.uleb128 0x48
 4760 1745 C2010000 		.4byte	.LASF254
 4761 1749 01       		.byte	0x1
 4762 174a AC       		.byte	0xac
 4763 174b BD000000 		.4byte	0xbd
 4764 174f 49       		.uleb128 0x49
 4765 1750 6D636B00 		.ascii	"mck\000"
 4766 1754 01       		.byte	0x1
 4767 1755 AC       		.byte	0xac
 4768 1756 BD000000 		.4byte	0xbd
 4769 175a 4A       		.uleb128 0x4a
 4770 175b 51020000 		.4byte	.LASF251
 4771 175f 01       		.byte	0x1
 4772 1760 AF       		.byte	0xaf
 4773 1761 BD000000 		.4byte	0xbd
 4774 1765 4A       		.uleb128 0x4a
 4775 1766 87020000 		.4byte	.LASF252
 4776 176a 01       		.byte	0x1
ARM GAS  /tmp/cc9w1cGI.s 			page 120


 4777 176b B0       		.byte	0xb0
 4778 176c BD000000 		.4byte	0xbd
 4779 1770 4B       		.uleb128 0x4b
 4780 1771 64697600 		.ascii	"div\000"
 4781 1775 01       		.byte	0x1
 4782 1776 B2       		.byte	0xb2
 4783 1777 BD000000 		.4byte	0xbd
 4784 177b 00       		.byte	0
 4785 177c 47       		.uleb128 0x47
 4786 177d 94020000 		.4byte	.LASF256
 4787 1781 01       		.byte	0x1
 4788 1782 8D       		.byte	0x8d
 4789 1783 01       		.byte	0x1
 4790 1784 BF170000 		.4byte	0x17bf
 4791 1788 4B       		.uleb128 0x4b
 4792 1789 6D7200   		.ascii	"mr\000"
 4793 178c 01       		.byte	0x1
 4794 178d 8F       		.byte	0x8f
 4795 178e BD000000 		.4byte	0xbd
 4796 1792 4A       		.uleb128 0x4a
 4797 1793 D9070000 		.4byte	.LASF257
 4798 1797 01       		.byte	0x1
 4799 1798 90       		.byte	0x90
 4800 1799 BD000000 		.4byte	0xbd
 4801 179d 4A       		.uleb128 0x4a
 4802 179e F0000000 		.4byte	.LASF258
 4803 17a2 01       		.byte	0x1
 4804 17a3 91       		.byte	0x91
 4805 17a4 BD000000 		.4byte	0xbd
 4806 17a8 4A       		.uleb128 0x4a
 4807 17a9 6B020000 		.4byte	.LASF259
 4808 17ad 01       		.byte	0x1
 4809 17ae 92       		.byte	0x92
 4810 17af BD000000 		.4byte	0xbd
 4811 17b3 4B       		.uleb128 0x4b
 4812 17b4 63666700 		.ascii	"cfg\000"
 4813 17b8 01       		.byte	0x1
 4814 17b9 93       		.byte	0x93
 4815 17ba BD000000 		.4byte	0xbd
 4816 17be 00       		.byte	0
 4817 17bf 42       		.uleb128 0x42
 4818 17c0 DB010000 		.4byte	.LASF261
 4819 17c4 02       		.byte	0x2
 4820 17c5 0902     		.2byte	0x209
 4821 17c7 BD000000 		.4byte	0xbd
 4822 17cb 03       		.byte	0x3
 4823 17cc E9170000 		.4byte	0x17e9
 4824 17d0 4C       		.uleb128 0x4c
 4825 17d1 F1040000 		.4byte	.LASF262
 4826 17d5 02       		.byte	0x2
 4827 17d6 0902     		.2byte	0x209
 4828 17d8 E9170000 		.4byte	0x17e9
 4829 17dc 4C       		.uleb128 0x4c
 4830 17dd 42010000 		.4byte	.LASF263
 4831 17e1 02       		.byte	0x2
 4832 17e2 0902     		.2byte	0x209
 4833 17e4 BD000000 		.4byte	0xbd
ARM GAS  /tmp/cc9w1cGI.s 			page 121


 4834 17e8 00       		.byte	0
 4835 17e9 15       		.uleb128 0x15
 4836 17ea 04       		.byte	0x4
 4837 17eb 83040000 		.4byte	0x483
 4838 17ef 4D       		.uleb128 0x4d
 4839 17f0 BE020000 		.4byte	.LASF264
 4840 17f4 02       		.byte	0x2
 4841 17f5 7A01     		.2byte	0x17a
 4842 17f7 03       		.byte	0x3
 4843 17f8 15180000 		.4byte	0x1815
 4844 17fc 4C       		.uleb128 0x4c
 4845 17fd F1040000 		.4byte	.LASF262
 4846 1801 02       		.byte	0x2
 4847 1802 7A01     		.2byte	0x17a
 4848 1804 E9170000 		.4byte	0x17e9
 4849 1808 4C       		.uleb128 0x4c
 4850 1809 42010000 		.4byte	.LASF263
 4851 180d 02       		.byte	0x2
 4852 180e 7A01     		.2byte	0x17a
 4853 1810 BD000000 		.4byte	0xbd
 4854 1814 00       		.byte	0
 4855 1815 4D       		.uleb128 0x4d
 4856 1816 77080000 		.4byte	.LASF265
 4857 181a 02       		.byte	0x2
 4858 181b 6701     		.2byte	0x167
 4859 181d 03       		.byte	0x3
 4860 181e 3B180000 		.4byte	0x183b
 4861 1822 4C       		.uleb128 0x4c
 4862 1823 F1040000 		.4byte	.LASF262
 4863 1827 02       		.byte	0x2
 4864 1828 6701     		.2byte	0x167
 4865 182a E9170000 		.4byte	0x17e9
 4866 182e 4C       		.uleb128 0x4c
 4867 182f 42010000 		.4byte	.LASF263
 4868 1833 02       		.byte	0x2
 4869 1834 6701     		.2byte	0x167
 4870 1836 BD000000 		.4byte	0xbd
 4871 183a 00       		.byte	0
 4872 183b 4E       		.uleb128 0x4e
 4873 183c 4D0A0000 		.4byte	.LASF266
 4874 1840 11       		.byte	0x11
 4875 1841 9201     		.2byte	0x192
 4876 1843 BD000000 		.4byte	0xbd
 4877 1847 03       		.byte	0x3
 4878 1848 4E       		.uleb128 0x4e
 4879 1849 33030000 		.4byte	.LASF267
 4880 184d 11       		.byte	0x11
 4881 184e 8401     		.2byte	0x184
 4882 1850 BD000000 		.4byte	0xbd
 4883 1854 03       		.byte	0x3
 4884 1855 4E       		.uleb128 0x4e
 4885 1856 80040000 		.4byte	.LASF268
 4886 185a 11       		.byte	0x11
 4887 185b 4E01     		.2byte	0x14e
 4888 185d BD000000 		.4byte	0xbd
 4889 1861 03       		.byte	0x3
 4890 1862 4F       		.uleb128 0x4f
ARM GAS  /tmp/cc9w1cGI.s 			page 122


 4891 1863 2D080000 		.4byte	.LASF269
 4892 1867 12       		.byte	0x12
 4893 1868 CE       		.byte	0xce
 4894 1869 BD000000 		.4byte	0xbd
 4895 186d 03       		.byte	0x3
 4896 186e 7E180000 		.4byte	0x187e
 4897 1872 48       		.uleb128 0x48
 4898 1873 48000000 		.4byte	.LASF270
 4899 1877 12       		.byte	0x12
 4900 1878 CE       		.byte	0xce
 4901 1879 BD000000 		.4byte	0xbd
 4902 187d 00       		.byte	0
 4903 187e 50       		.uleb128 0x50
 4904 187f B5060000 		.4byte	.LASF280
 4905 1883 B5060000 		.4byte	.LASF280
 4906 1887 51       		.uleb128 0x51
 4907 1888 E1060000 		.4byte	.LASF271
 4908 188c E1060000 		.4byte	.LASF271
 4909 1890 02       		.byte	0x2
 4910 1891 AF02     		.2byte	0x2af
 4911 1893 52       		.uleb128 0x52
 4912 1894 0A0C0000 		.4byte	.LASF272
 4913 1898 0A0C0000 		.4byte	.LASF272
 4914 189c 13       		.byte	0x13
 4915 189d DB       		.byte	0xdb
 4916 189e 00       		.byte	0
 4917              		.section	.debug_abbrev,"",%progbits
 4918              	.Ldebug_abbrev0:
 4919 0000 01       		.uleb128 0x1
 4920 0001 11       		.uleb128 0x11
 4921 0002 01       		.byte	0x1
 4922 0003 25       		.uleb128 0x25
 4923 0004 0E       		.uleb128 0xe
 4924 0005 13       		.uleb128 0x13
 4925 0006 0B       		.uleb128 0xb
 4926 0007 03       		.uleb128 0x3
 4927 0008 0E       		.uleb128 0xe
 4928 0009 1B       		.uleb128 0x1b
 4929 000a 0E       		.uleb128 0xe
 4930 000b 55       		.uleb128 0x55
 4931 000c 17       		.uleb128 0x17
 4932 000d 11       		.uleb128 0x11
 4933 000e 01       		.uleb128 0x1
 4934 000f 10       		.uleb128 0x10
 4935 0010 17       		.uleb128 0x17
 4936 0011 00       		.byte	0
 4937 0012 00       		.byte	0
 4938 0013 02       		.uleb128 0x2
 4939 0014 24       		.uleb128 0x24
 4940 0015 00       		.byte	0
 4941 0016 0B       		.uleb128 0xb
 4942 0017 0B       		.uleb128 0xb
 4943 0018 3E       		.uleb128 0x3e
 4944 0019 0B       		.uleb128 0xb
 4945 001a 03       		.uleb128 0x3
 4946 001b 0E       		.uleb128 0xe
 4947 001c 00       		.byte	0
ARM GAS  /tmp/cc9w1cGI.s 			page 123


 4948 001d 00       		.byte	0
 4949 001e 03       		.uleb128 0x3
 4950 001f 24       		.uleb128 0x24
 4951 0020 00       		.byte	0
 4952 0021 0B       		.uleb128 0xb
 4953 0022 0B       		.uleb128 0xb
 4954 0023 3E       		.uleb128 0x3e
 4955 0024 0B       		.uleb128 0xb
 4956 0025 03       		.uleb128 0x3
 4957 0026 08       		.uleb128 0x8
 4958 0027 00       		.byte	0
 4959 0028 00       		.byte	0
 4960 0029 04       		.uleb128 0x4
 4961 002a 16       		.uleb128 0x16
 4962 002b 00       		.byte	0
 4963 002c 03       		.uleb128 0x3
 4964 002d 0E       		.uleb128 0xe
 4965 002e 3A       		.uleb128 0x3a
 4966 002f 0B       		.uleb128 0xb
 4967 0030 3B       		.uleb128 0x3b
 4968 0031 0B       		.uleb128 0xb
 4969 0032 49       		.uleb128 0x49
 4970 0033 13       		.uleb128 0x13
 4971 0034 00       		.byte	0
 4972 0035 00       		.byte	0
 4973 0036 05       		.uleb128 0x5
 4974 0037 35       		.uleb128 0x35
 4975 0038 00       		.byte	0
 4976 0039 49       		.uleb128 0x49
 4977 003a 13       		.uleb128 0x13
 4978 003b 00       		.byte	0
 4979 003c 00       		.byte	0
 4980 003d 06       		.uleb128 0x6
 4981 003e 26       		.uleb128 0x26
 4982 003f 00       		.byte	0
 4983 0040 49       		.uleb128 0x49
 4984 0041 13       		.uleb128 0x13
 4985 0042 00       		.byte	0
 4986 0043 00       		.byte	0
 4987 0044 07       		.uleb128 0x7
 4988 0045 0F       		.uleb128 0xf
 4989 0046 00       		.byte	0
 4990 0047 0B       		.uleb128 0xb
 4991 0048 0B       		.uleb128 0xb
 4992 0049 00       		.byte	0
 4993 004a 00       		.byte	0
 4994 004b 08       		.uleb128 0x8
 4995 004c 01       		.uleb128 0x1
 4996 004d 01       		.byte	0x1
 4997 004e 49       		.uleb128 0x49
 4998 004f 13       		.uleb128 0x13
 4999 0050 01       		.uleb128 0x1
 5000 0051 13       		.uleb128 0x13
 5001 0052 00       		.byte	0
 5002 0053 00       		.byte	0
 5003 0054 09       		.uleb128 0x9
 5004 0055 21       		.uleb128 0x21
ARM GAS  /tmp/cc9w1cGI.s 			page 124


 5005 0056 00       		.byte	0
 5006 0057 49       		.uleb128 0x49
 5007 0058 13       		.uleb128 0x13
 5008 0059 2F       		.uleb128 0x2f
 5009 005a 0B       		.uleb128 0xb
 5010 005b 00       		.byte	0
 5011 005c 00       		.byte	0
 5012 005d 0A       		.uleb128 0xa
 5013 005e 34       		.uleb128 0x34
 5014 005f 00       		.byte	0
 5015 0060 03       		.uleb128 0x3
 5016 0061 0E       		.uleb128 0xe
 5017 0062 3A       		.uleb128 0x3a
 5018 0063 0B       		.uleb128 0xb
 5019 0064 3B       		.uleb128 0x3b
 5020 0065 05       		.uleb128 0x5
 5021 0066 49       		.uleb128 0x49
 5022 0067 13       		.uleb128 0x13
 5023 0068 3F       		.uleb128 0x3f
 5024 0069 19       		.uleb128 0x19
 5025 006a 3C       		.uleb128 0x3c
 5026 006b 19       		.uleb128 0x19
 5027 006c 00       		.byte	0
 5028 006d 00       		.byte	0
 5029 006e 0B       		.uleb128 0xb
 5030 006f 34       		.uleb128 0x34
 5031 0070 00       		.byte	0
 5032 0071 03       		.uleb128 0x3
 5033 0072 0E       		.uleb128 0xe
 5034 0073 3A       		.uleb128 0x3a
 5035 0074 0B       		.uleb128 0xb
 5036 0075 3B       		.uleb128 0x3b
 5037 0076 0B       		.uleb128 0xb
 5038 0077 49       		.uleb128 0x49
 5039 0078 13       		.uleb128 0x13
 5040 0079 3F       		.uleb128 0x3f
 5041 007a 19       		.uleb128 0x19
 5042 007b 3C       		.uleb128 0x3c
 5043 007c 19       		.uleb128 0x19
 5044 007d 00       		.byte	0
 5045 007e 00       		.byte	0
 5046 007f 0C       		.uleb128 0xc
 5047 0080 13       		.uleb128 0x13
 5048 0081 01       		.byte	0x1
 5049 0082 0B       		.uleb128 0xb
 5050 0083 05       		.uleb128 0x5
 5051 0084 3A       		.uleb128 0x3a
 5052 0085 0B       		.uleb128 0xb
 5053 0086 3B       		.uleb128 0x3b
 5054 0087 0B       		.uleb128 0xb
 5055 0088 01       		.uleb128 0x1
 5056 0089 13       		.uleb128 0x13
 5057 008a 00       		.byte	0
 5058 008b 00       		.byte	0
 5059 008c 0D       		.uleb128 0xd
 5060 008d 0D       		.uleb128 0xd
 5061 008e 00       		.byte	0
ARM GAS  /tmp/cc9w1cGI.s 			page 125


 5062 008f 03       		.uleb128 0x3
 5063 0090 0E       		.uleb128 0xe
 5064 0091 3A       		.uleb128 0x3a
 5065 0092 0B       		.uleb128 0xb
 5066 0093 3B       		.uleb128 0x3b
 5067 0094 0B       		.uleb128 0xb
 5068 0095 49       		.uleb128 0x49
 5069 0096 13       		.uleb128 0x13
 5070 0097 38       		.uleb128 0x38
 5071 0098 0B       		.uleb128 0xb
 5072 0099 00       		.byte	0
 5073 009a 00       		.byte	0
 5074 009b 0E       		.uleb128 0xe
 5075 009c 0D       		.uleb128 0xd
 5076 009d 00       		.byte	0
 5077 009e 03       		.uleb128 0x3
 5078 009f 0E       		.uleb128 0xe
 5079 00a0 3A       		.uleb128 0x3a
 5080 00a1 0B       		.uleb128 0xb
 5081 00a2 3B       		.uleb128 0x3b
 5082 00a3 0B       		.uleb128 0xb
 5083 00a4 49       		.uleb128 0x49
 5084 00a5 13       		.uleb128 0x13
 5085 00a6 38       		.uleb128 0x38
 5086 00a7 05       		.uleb128 0x5
 5087 00a8 00       		.byte	0
 5088 00a9 00       		.byte	0
 5089 00aa 0F       		.uleb128 0xf
 5090 00ab 13       		.uleb128 0x13
 5091 00ac 01       		.byte	0x1
 5092 00ad 0B       		.uleb128 0xb
 5093 00ae 0B       		.uleb128 0xb
 5094 00af 3A       		.uleb128 0x3a
 5095 00b0 0B       		.uleb128 0xb
 5096 00b1 3B       		.uleb128 0x3b
 5097 00b2 0B       		.uleb128 0xb
 5098 00b3 01       		.uleb128 0x1
 5099 00b4 13       		.uleb128 0x13
 5100 00b5 00       		.byte	0
 5101 00b6 00       		.byte	0
 5102 00b7 10       		.uleb128 0x10
 5103 00b8 16       		.uleb128 0x16
 5104 00b9 00       		.byte	0
 5105 00ba 03       		.uleb128 0x3
 5106 00bb 0E       		.uleb128 0xe
 5107 00bc 3A       		.uleb128 0x3a
 5108 00bd 0B       		.uleb128 0xb
 5109 00be 3B       		.uleb128 0x3b
 5110 00bf 05       		.uleb128 0x5
 5111 00c0 49       		.uleb128 0x49
 5112 00c1 13       		.uleb128 0x13
 5113 00c2 00       		.byte	0
 5114 00c3 00       		.byte	0
 5115 00c4 11       		.uleb128 0x11
 5116 00c5 17       		.uleb128 0x17
 5117 00c6 01       		.byte	0x1
 5118 00c7 0B       		.uleb128 0xb
ARM GAS  /tmp/cc9w1cGI.s 			page 126


 5119 00c8 0B       		.uleb128 0xb
 5120 00c9 3A       		.uleb128 0x3a
 5121 00ca 0B       		.uleb128 0xb
 5122 00cb 3B       		.uleb128 0x3b
 5123 00cc 0B       		.uleb128 0xb
 5124 00cd 01       		.uleb128 0x1
 5125 00ce 13       		.uleb128 0x13
 5126 00cf 00       		.byte	0
 5127 00d0 00       		.byte	0
 5128 00d1 12       		.uleb128 0x12
 5129 00d2 0D       		.uleb128 0xd
 5130 00d3 00       		.byte	0
 5131 00d4 03       		.uleb128 0x3
 5132 00d5 0E       		.uleb128 0xe
 5133 00d6 3A       		.uleb128 0x3a
 5134 00d7 0B       		.uleb128 0xb
 5135 00d8 3B       		.uleb128 0x3b
 5136 00d9 0B       		.uleb128 0xb
 5137 00da 49       		.uleb128 0x49
 5138 00db 13       		.uleb128 0x13
 5139 00dc 00       		.byte	0
 5140 00dd 00       		.byte	0
 5141 00de 13       		.uleb128 0x13
 5142 00df 13       		.uleb128 0x13
 5143 00e0 01       		.byte	0x1
 5144 00e1 03       		.uleb128 0x3
 5145 00e2 0E       		.uleb128 0xe
 5146 00e3 0B       		.uleb128 0xb
 5147 00e4 0B       		.uleb128 0xb
 5148 00e5 3A       		.uleb128 0x3a
 5149 00e6 0B       		.uleb128 0xb
 5150 00e7 3B       		.uleb128 0x3b
 5151 00e8 0B       		.uleb128 0xb
 5152 00e9 01       		.uleb128 0x1
 5153 00ea 13       		.uleb128 0x13
 5154 00eb 00       		.byte	0
 5155 00ec 00       		.byte	0
 5156 00ed 14       		.uleb128 0x14
 5157 00ee 0D       		.uleb128 0xd
 5158 00ef 00       		.byte	0
 5159 00f0 03       		.uleb128 0x3
 5160 00f1 08       		.uleb128 0x8
 5161 00f2 3A       		.uleb128 0x3a
 5162 00f3 0B       		.uleb128 0xb
 5163 00f4 3B       		.uleb128 0x3b
 5164 00f5 0B       		.uleb128 0xb
 5165 00f6 49       		.uleb128 0x49
 5166 00f7 13       		.uleb128 0x13
 5167 00f8 38       		.uleb128 0x38
 5168 00f9 0B       		.uleb128 0xb
 5169 00fa 00       		.byte	0
 5170 00fb 00       		.byte	0
 5171 00fc 15       		.uleb128 0x15
 5172 00fd 0F       		.uleb128 0xf
 5173 00fe 00       		.byte	0
 5174 00ff 0B       		.uleb128 0xb
 5175 0100 0B       		.uleb128 0xb
ARM GAS  /tmp/cc9w1cGI.s 			page 127


 5176 0101 49       		.uleb128 0x49
 5177 0102 13       		.uleb128 0x13
 5178 0103 00       		.byte	0
 5179 0104 00       		.byte	0
 5180 0105 16       		.uleb128 0x16
 5181 0106 13       		.uleb128 0x13
 5182 0107 01       		.byte	0x1
 5183 0108 03       		.uleb128 0x3
 5184 0109 0E       		.uleb128 0xe
 5185 010a 0B       		.uleb128 0xb
 5186 010b 05       		.uleb128 0x5
 5187 010c 3A       		.uleb128 0x3a
 5188 010d 0B       		.uleb128 0xb
 5189 010e 3B       		.uleb128 0x3b
 5190 010f 0B       		.uleb128 0xb
 5191 0110 01       		.uleb128 0x1
 5192 0111 13       		.uleb128 0x13
 5193 0112 00       		.byte	0
 5194 0113 00       		.byte	0
 5195 0114 17       		.uleb128 0x17
 5196 0115 15       		.uleb128 0x15
 5197 0116 00       		.byte	0
 5198 0117 27       		.uleb128 0x27
 5199 0118 19       		.uleb128 0x19
 5200 0119 00       		.byte	0
 5201 011a 00       		.byte	0
 5202 011b 18       		.uleb128 0x18
 5203 011c 15       		.uleb128 0x15
 5204 011d 01       		.byte	0x1
 5205 011e 27       		.uleb128 0x27
 5206 011f 19       		.uleb128 0x19
 5207 0120 49       		.uleb128 0x49
 5208 0121 13       		.uleb128 0x13
 5209 0122 01       		.uleb128 0x1
 5210 0123 13       		.uleb128 0x13
 5211 0124 00       		.byte	0
 5212 0125 00       		.byte	0
 5213 0126 19       		.uleb128 0x19
 5214 0127 05       		.uleb128 0x5
 5215 0128 00       		.byte	0
 5216 0129 49       		.uleb128 0x49
 5217 012a 13       		.uleb128 0x13
 5218 012b 00       		.byte	0
 5219 012c 00       		.byte	0
 5220 012d 1A       		.uleb128 0x1a
 5221 012e 13       		.uleb128 0x13
 5222 012f 01       		.byte	0x1
 5223 0130 03       		.uleb128 0x3
 5224 0131 0E       		.uleb128 0xe
 5225 0132 0B       		.uleb128 0xb
 5226 0133 05       		.uleb128 0x5
 5227 0134 3A       		.uleb128 0x3a
 5228 0135 0B       		.uleb128 0xb
 5229 0136 3B       		.uleb128 0x3b
 5230 0137 05       		.uleb128 0x5
 5231 0138 01       		.uleb128 0x1
 5232 0139 13       		.uleb128 0x13
ARM GAS  /tmp/cc9w1cGI.s 			page 128


 5233 013a 00       		.byte	0
 5234 013b 00       		.byte	0
 5235 013c 1B       		.uleb128 0x1b
 5236 013d 0D       		.uleb128 0xd
 5237 013e 00       		.byte	0
 5238 013f 03       		.uleb128 0x3
 5239 0140 0E       		.uleb128 0xe
 5240 0141 3A       		.uleb128 0x3a
 5241 0142 0B       		.uleb128 0xb
 5242 0143 3B       		.uleb128 0x3b
 5243 0144 05       		.uleb128 0x5
 5244 0145 49       		.uleb128 0x49
 5245 0146 13       		.uleb128 0x13
 5246 0147 38       		.uleb128 0x38
 5247 0148 0B       		.uleb128 0xb
 5248 0149 00       		.byte	0
 5249 014a 00       		.byte	0
 5250 014b 1C       		.uleb128 0x1c
 5251 014c 0D       		.uleb128 0xd
 5252 014d 00       		.byte	0
 5253 014e 03       		.uleb128 0x3
 5254 014f 0E       		.uleb128 0xe
 5255 0150 3A       		.uleb128 0x3a
 5256 0151 0B       		.uleb128 0xb
 5257 0152 3B       		.uleb128 0x3b
 5258 0153 05       		.uleb128 0x5
 5259 0154 49       		.uleb128 0x49
 5260 0155 13       		.uleb128 0x13
 5261 0156 38       		.uleb128 0x38
 5262 0157 05       		.uleb128 0x5
 5263 0158 00       		.byte	0
 5264 0159 00       		.byte	0
 5265 015a 1D       		.uleb128 0x1d
 5266 015b 13       		.uleb128 0x13
 5267 015c 01       		.byte	0x1
 5268 015d 03       		.uleb128 0x3
 5269 015e 0E       		.uleb128 0xe
 5270 015f 0B       		.uleb128 0xb
 5271 0160 0B       		.uleb128 0xb
 5272 0161 3A       		.uleb128 0x3a
 5273 0162 0B       		.uleb128 0xb
 5274 0163 3B       		.uleb128 0x3b
 5275 0164 05       		.uleb128 0x5
 5276 0165 01       		.uleb128 0x1
 5277 0166 13       		.uleb128 0x13
 5278 0167 00       		.byte	0
 5279 0168 00       		.byte	0
 5280 0169 1E       		.uleb128 0x1e
 5281 016a 13       		.uleb128 0x13
 5282 016b 01       		.byte	0x1
 5283 016c 0B       		.uleb128 0xb
 5284 016d 0B       		.uleb128 0xb
 5285 016e 3A       		.uleb128 0x3a
 5286 016f 0B       		.uleb128 0xb
 5287 0170 3B       		.uleb128 0x3b
 5288 0171 05       		.uleb128 0x5
 5289 0172 01       		.uleb128 0x1
ARM GAS  /tmp/cc9w1cGI.s 			page 129


 5290 0173 13       		.uleb128 0x13
 5291 0174 00       		.byte	0
 5292 0175 00       		.byte	0
 5293 0176 1F       		.uleb128 0x1f
 5294 0177 17       		.uleb128 0x17
 5295 0178 01       		.byte	0x1
 5296 0179 0B       		.uleb128 0xb
 5297 017a 0B       		.uleb128 0xb
 5298 017b 3A       		.uleb128 0x3a
 5299 017c 0B       		.uleb128 0xb
 5300 017d 3B       		.uleb128 0x3b
 5301 017e 05       		.uleb128 0x5
 5302 017f 01       		.uleb128 0x1
 5303 0180 13       		.uleb128 0x13
 5304 0181 00       		.byte	0
 5305 0182 00       		.byte	0
 5306 0183 20       		.uleb128 0x20
 5307 0184 0D       		.uleb128 0xd
 5308 0185 00       		.byte	0
 5309 0186 03       		.uleb128 0x3
 5310 0187 0E       		.uleb128 0xe
 5311 0188 3A       		.uleb128 0x3a
 5312 0189 0B       		.uleb128 0xb
 5313 018a 3B       		.uleb128 0x3b
 5314 018b 05       		.uleb128 0x5
 5315 018c 49       		.uleb128 0x49
 5316 018d 13       		.uleb128 0x13
 5317 018e 00       		.byte	0
 5318 018f 00       		.byte	0
 5319 0190 21       		.uleb128 0x21
 5320 0191 15       		.uleb128 0x15
 5321 0192 01       		.byte	0x1
 5322 0193 27       		.uleb128 0x27
 5323 0194 19       		.uleb128 0x19
 5324 0195 01       		.uleb128 0x1
 5325 0196 13       		.uleb128 0x13
 5326 0197 00       		.byte	0
 5327 0198 00       		.byte	0
 5328 0199 22       		.uleb128 0x22
 5329 019a 26       		.uleb128 0x26
 5330 019b 00       		.byte	0
 5331 019c 00       		.byte	0
 5332 019d 00       		.byte	0
 5333 019e 23       		.uleb128 0x23
 5334 019f 34       		.uleb128 0x34
 5335 01a0 00       		.byte	0
 5336 01a1 03       		.uleb128 0x3
 5337 01a2 0E       		.uleb128 0xe
 5338 01a3 3A       		.uleb128 0x3a
 5339 01a4 0B       		.uleb128 0xb
 5340 01a5 3B       		.uleb128 0x3b
 5341 01a6 0B       		.uleb128 0xb
 5342 01a7 49       		.uleb128 0x49
 5343 01a8 13       		.uleb128 0x13
 5344 01a9 02       		.uleb128 0x2
 5345 01aa 18       		.uleb128 0x18
 5346 01ab 00       		.byte	0
ARM GAS  /tmp/cc9w1cGI.s 			page 130


 5347 01ac 00       		.byte	0
 5348 01ad 24       		.uleb128 0x24
 5349 01ae 04       		.uleb128 0x4
 5350 01af 01       		.byte	0x1
 5351 01b0 03       		.uleb128 0x3
 5352 01b1 0E       		.uleb128 0xe
 5353 01b2 0B       		.uleb128 0xb
 5354 01b3 0B       		.uleb128 0xb
 5355 01b4 49       		.uleb128 0x49
 5356 01b5 13       		.uleb128 0x13
 5357 01b6 3A       		.uleb128 0x3a
 5358 01b7 0B       		.uleb128 0xb
 5359 01b8 3B       		.uleb128 0x3b
 5360 01b9 0B       		.uleb128 0xb
 5361 01ba 01       		.uleb128 0x1
 5362 01bb 13       		.uleb128 0x13
 5363 01bc 00       		.byte	0
 5364 01bd 00       		.byte	0
 5365 01be 25       		.uleb128 0x25
 5366 01bf 28       		.uleb128 0x28
 5367 01c0 00       		.byte	0
 5368 01c1 03       		.uleb128 0x3
 5369 01c2 0E       		.uleb128 0xe
 5370 01c3 1C       		.uleb128 0x1c
 5371 01c4 0B       		.uleb128 0xb
 5372 01c5 00       		.byte	0
 5373 01c6 00       		.byte	0
 5374 01c7 26       		.uleb128 0x26
 5375 01c8 2E       		.uleb128 0x2e
 5376 01c9 01       		.byte	0x1
 5377 01ca 3F       		.uleb128 0x3f
 5378 01cb 19       		.uleb128 0x19
 5379 01cc 03       		.uleb128 0x3
 5380 01cd 0E       		.uleb128 0xe
 5381 01ce 3A       		.uleb128 0x3a
 5382 01cf 0B       		.uleb128 0xb
 5383 01d0 3B       		.uleb128 0x3b
 5384 01d1 05       		.uleb128 0x5
 5385 01d2 27       		.uleb128 0x27
 5386 01d3 19       		.uleb128 0x19
 5387 01d4 49       		.uleb128 0x49
 5388 01d5 13       		.uleb128 0x13
 5389 01d6 11       		.uleb128 0x11
 5390 01d7 01       		.uleb128 0x1
 5391 01d8 12       		.uleb128 0x12
 5392 01d9 06       		.uleb128 0x6
 5393 01da 40       		.uleb128 0x40
 5394 01db 18       		.uleb128 0x18
 5395 01dc 9742     		.uleb128 0x2117
 5396 01de 19       		.uleb128 0x19
 5397 01df 01       		.uleb128 0x1
 5398 01e0 13       		.uleb128 0x13
 5399 01e1 00       		.byte	0
 5400 01e2 00       		.byte	0
 5401 01e3 27       		.uleb128 0x27
 5402 01e4 34       		.uleb128 0x34
 5403 01e5 00       		.byte	0
ARM GAS  /tmp/cc9w1cGI.s 			page 131


 5404 01e6 03       		.uleb128 0x3
 5405 01e7 08       		.uleb128 0x8
 5406 01e8 3A       		.uleb128 0x3a
 5407 01e9 0B       		.uleb128 0xb
 5408 01ea 3B       		.uleb128 0x3b
 5409 01eb 05       		.uleb128 0x5
 5410 01ec 49       		.uleb128 0x49
 5411 01ed 13       		.uleb128 0x13
 5412 01ee 02       		.uleb128 0x2
 5413 01ef 17       		.uleb128 0x17
 5414 01f0 00       		.byte	0
 5415 01f1 00       		.byte	0
 5416 01f2 28       		.uleb128 0x28
 5417 01f3 34       		.uleb128 0x34
 5418 01f4 00       		.byte	0
 5419 01f5 03       		.uleb128 0x3
 5420 01f6 0E       		.uleb128 0xe
 5421 01f7 3A       		.uleb128 0x3a
 5422 01f8 0B       		.uleb128 0xb
 5423 01f9 3B       		.uleb128 0x3b
 5424 01fa 05       		.uleb128 0x5
 5425 01fb 49       		.uleb128 0x49
 5426 01fc 13       		.uleb128 0x13
 5427 01fd 00       		.byte	0
 5428 01fe 00       		.byte	0
 5429 01ff 29       		.uleb128 0x29
 5430 0200 0B       		.uleb128 0xb
 5431 0201 01       		.byte	0x1
 5432 0202 55       		.uleb128 0x55
 5433 0203 17       		.uleb128 0x17
 5434 0204 00       		.byte	0
 5435 0205 00       		.byte	0
 5436 0206 2A       		.uleb128 0x2a
 5437 0207 34       		.uleb128 0x34
 5438 0208 00       		.byte	0
 5439 0209 03       		.uleb128 0x3
 5440 020a 0E       		.uleb128 0xe
 5441 020b 3A       		.uleb128 0x3a
 5442 020c 0B       		.uleb128 0xb
 5443 020d 3B       		.uleb128 0x3b
 5444 020e 05       		.uleb128 0x5
 5445 020f 49       		.uleb128 0x49
 5446 0210 13       		.uleb128 0x13
 5447 0211 02       		.uleb128 0x2
 5448 0212 17       		.uleb128 0x17
 5449 0213 00       		.byte	0
 5450 0214 00       		.byte	0
 5451 0215 2B       		.uleb128 0x2b
 5452 0216 1D       		.uleb128 0x1d
 5453 0217 01       		.byte	0x1
 5454 0218 31       		.uleb128 0x31
 5455 0219 13       		.uleb128 0x13
 5456 021a 11       		.uleb128 0x11
 5457 021b 01       		.uleb128 0x1
 5458 021c 12       		.uleb128 0x12
 5459 021d 06       		.uleb128 0x6
 5460 021e 58       		.uleb128 0x58
ARM GAS  /tmp/cc9w1cGI.s 			page 132


 5461 021f 0B       		.uleb128 0xb
 5462 0220 59       		.uleb128 0x59
 5463 0221 05       		.uleb128 0x5
 5464 0222 01       		.uleb128 0x1
 5465 0223 13       		.uleb128 0x13
 5466 0224 00       		.byte	0
 5467 0225 00       		.byte	0
 5468 0226 2C       		.uleb128 0x2c
 5469 0227 05       		.uleb128 0x5
 5470 0228 00       		.byte	0
 5471 0229 31       		.uleb128 0x31
 5472 022a 13       		.uleb128 0x13
 5473 022b 02       		.uleb128 0x2
 5474 022c 17       		.uleb128 0x17
 5475 022d 00       		.byte	0
 5476 022e 00       		.byte	0
 5477 022f 2D       		.uleb128 0x2d
 5478 0230 1D       		.uleb128 0x1d
 5479 0231 01       		.byte	0x1
 5480 0232 31       		.uleb128 0x31
 5481 0233 13       		.uleb128 0x13
 5482 0234 52       		.uleb128 0x52
 5483 0235 01       		.uleb128 0x1
 5484 0236 55       		.uleb128 0x55
 5485 0237 17       		.uleb128 0x17
 5486 0238 58       		.uleb128 0x58
 5487 0239 0B       		.uleb128 0xb
 5488 023a 59       		.uleb128 0x59
 5489 023b 05       		.uleb128 0x5
 5490 023c 01       		.uleb128 0x1
 5491 023d 13       		.uleb128 0x13
 5492 023e 00       		.byte	0
 5493 023f 00       		.byte	0
 5494 0240 2E       		.uleb128 0x2e
 5495 0241 34       		.uleb128 0x34
 5496 0242 00       		.byte	0
 5497 0243 31       		.uleb128 0x31
 5498 0244 13       		.uleb128 0x13
 5499 0245 02       		.uleb128 0x2
 5500 0246 17       		.uleb128 0x17
 5501 0247 00       		.byte	0
 5502 0248 00       		.byte	0
 5503 0249 2F       		.uleb128 0x2f
 5504 024a 898201   		.uleb128 0x4109
 5505 024d 01       		.byte	0x1
 5506 024e 11       		.uleb128 0x11
 5507 024f 01       		.uleb128 0x1
 5508 0250 00       		.byte	0
 5509 0251 00       		.byte	0
 5510 0252 30       		.uleb128 0x30
 5511 0253 8A8201   		.uleb128 0x410a
 5512 0256 00       		.byte	0
 5513 0257 02       		.uleb128 0x2
 5514 0258 18       		.uleb128 0x18
 5515 0259 9142     		.uleb128 0x2111
 5516 025b 18       		.uleb128 0x18
 5517 025c 00       		.byte	0
ARM GAS  /tmp/cc9w1cGI.s 			page 133


 5518 025d 00       		.byte	0
 5519 025e 31       		.uleb128 0x31
 5520 025f 05       		.uleb128 0x5
 5521 0260 00       		.byte	0
 5522 0261 03       		.uleb128 0x3
 5523 0262 08       		.uleb128 0x8
 5524 0263 3A       		.uleb128 0x3a
 5525 0264 0B       		.uleb128 0xb
 5526 0265 3B       		.uleb128 0x3b
 5527 0266 05       		.uleb128 0x5
 5528 0267 49       		.uleb128 0x49
 5529 0268 13       		.uleb128 0x13
 5530 0269 02       		.uleb128 0x2
 5531 026a 17       		.uleb128 0x17
 5532 026b 00       		.byte	0
 5533 026c 00       		.byte	0
 5534 026d 32       		.uleb128 0x32
 5535 026e 05       		.uleb128 0x5
 5536 026f 00       		.byte	0
 5537 0270 03       		.uleb128 0x3
 5538 0271 0E       		.uleb128 0xe
 5539 0272 3A       		.uleb128 0x3a
 5540 0273 0B       		.uleb128 0xb
 5541 0274 3B       		.uleb128 0x3b
 5542 0275 05       		.uleb128 0x5
 5543 0276 49       		.uleb128 0x49
 5544 0277 13       		.uleb128 0x13
 5545 0278 02       		.uleb128 0x2
 5546 0279 17       		.uleb128 0x17
 5547 027a 00       		.byte	0
 5548 027b 00       		.byte	0
 5549 027c 33       		.uleb128 0x33
 5550 027d 34       		.uleb128 0x34
 5551 027e 00       		.byte	0
 5552 027f 03       		.uleb128 0x3
 5553 0280 0E       		.uleb128 0xe
 5554 0281 3A       		.uleb128 0x3a
 5555 0282 0B       		.uleb128 0xb
 5556 0283 3B       		.uleb128 0x3b
 5557 0284 05       		.uleb128 0x5
 5558 0285 49       		.uleb128 0x49
 5559 0286 13       		.uleb128 0x13
 5560 0287 02       		.uleb128 0x2
 5561 0288 18       		.uleb128 0x18
 5562 0289 00       		.byte	0
 5563 028a 00       		.byte	0
 5564 028b 34       		.uleb128 0x34
 5565 028c 898201   		.uleb128 0x4109
 5566 028f 01       		.byte	0x1
 5567 0290 11       		.uleb128 0x11
 5568 0291 01       		.uleb128 0x1
 5569 0292 31       		.uleb128 0x31
 5570 0293 13       		.uleb128 0x13
 5571 0294 01       		.uleb128 0x1
 5572 0295 13       		.uleb128 0x13
 5573 0296 00       		.byte	0
 5574 0297 00       		.byte	0
ARM GAS  /tmp/cc9w1cGI.s 			page 134


 5575 0298 35       		.uleb128 0x35
 5576 0299 898201   		.uleb128 0x4109
 5577 029c 01       		.byte	0x1
 5578 029d 11       		.uleb128 0x11
 5579 029e 01       		.uleb128 0x1
 5580 029f 31       		.uleb128 0x31
 5581 02a0 13       		.uleb128 0x13
 5582 02a1 00       		.byte	0
 5583 02a2 00       		.byte	0
 5584 02a3 36       		.uleb128 0x36
 5585 02a4 2E       		.uleb128 0x2e
 5586 02a5 01       		.byte	0x1
 5587 02a6 3F       		.uleb128 0x3f
 5588 02a7 19       		.uleb128 0x19
 5589 02a8 03       		.uleb128 0x3
 5590 02a9 0E       		.uleb128 0xe
 5591 02aa 3A       		.uleb128 0x3a
 5592 02ab 0B       		.uleb128 0xb
 5593 02ac 3B       		.uleb128 0x3b
 5594 02ad 05       		.uleb128 0x5
 5595 02ae 27       		.uleb128 0x27
 5596 02af 19       		.uleb128 0x19
 5597 02b0 49       		.uleb128 0x49
 5598 02b1 13       		.uleb128 0x13
 5599 02b2 01       		.uleb128 0x1
 5600 02b3 13       		.uleb128 0x13
 5601 02b4 00       		.byte	0
 5602 02b5 00       		.byte	0
 5603 02b6 37       		.uleb128 0x37
 5604 02b7 34       		.uleb128 0x34
 5605 02b8 00       		.byte	0
 5606 02b9 03       		.uleb128 0x3
 5607 02ba 08       		.uleb128 0x8
 5608 02bb 3A       		.uleb128 0x3a
 5609 02bc 0B       		.uleb128 0xb
 5610 02bd 3B       		.uleb128 0x3b
 5611 02be 05       		.uleb128 0x5
 5612 02bf 49       		.uleb128 0x49
 5613 02c0 13       		.uleb128 0x13
 5614 02c1 00       		.byte	0
 5615 02c2 00       		.byte	0
 5616 02c3 38       		.uleb128 0x38
 5617 02c4 0B       		.uleb128 0xb
 5618 02c5 01       		.byte	0x1
 5619 02c6 00       		.byte	0
 5620 02c7 00       		.byte	0
 5621 02c8 39       		.uleb128 0x39
 5622 02c9 898201   		.uleb128 0x4109
 5623 02cc 01       		.byte	0x1
 5624 02cd 11       		.uleb128 0x11
 5625 02ce 01       		.uleb128 0x1
 5626 02cf 9542     		.uleb128 0x2115
 5627 02d1 19       		.uleb128 0x19
 5628 02d2 31       		.uleb128 0x31
 5629 02d3 13       		.uleb128 0x13
 5630 02d4 00       		.byte	0
 5631 02d5 00       		.byte	0
ARM GAS  /tmp/cc9w1cGI.s 			page 135


 5632 02d6 3A       		.uleb128 0x3a
 5633 02d7 2E       		.uleb128 0x2e
 5634 02d8 01       		.byte	0x1
 5635 02d9 3F       		.uleb128 0x3f
 5636 02da 19       		.uleb128 0x19
 5637 02db 03       		.uleb128 0x3
 5638 02dc 0E       		.uleb128 0xe
 5639 02dd 3A       		.uleb128 0x3a
 5640 02de 0B       		.uleb128 0xb
 5641 02df 3B       		.uleb128 0x3b
 5642 02e0 05       		.uleb128 0x5
 5643 02e1 27       		.uleb128 0x27
 5644 02e2 19       		.uleb128 0x19
 5645 02e3 11       		.uleb128 0x11
 5646 02e4 01       		.uleb128 0x1
 5647 02e5 12       		.uleb128 0x12
 5648 02e6 06       		.uleb128 0x6
 5649 02e7 40       		.uleb128 0x40
 5650 02e8 18       		.uleb128 0x18
 5651 02e9 9742     		.uleb128 0x2117
 5652 02eb 19       		.uleb128 0x19
 5653 02ec 01       		.uleb128 0x1
 5654 02ed 13       		.uleb128 0x13
 5655 02ee 00       		.byte	0
 5656 02ef 00       		.byte	0
 5657 02f0 3B       		.uleb128 0x3b
 5658 02f1 0B       		.uleb128 0xb
 5659 02f2 01       		.byte	0x1
 5660 02f3 11       		.uleb128 0x11
 5661 02f4 01       		.uleb128 0x1
 5662 02f5 12       		.uleb128 0x12
 5663 02f6 06       		.uleb128 0x6
 5664 02f7 00       		.byte	0
 5665 02f8 00       		.byte	0
 5666 02f9 3C       		.uleb128 0x3c
 5667 02fa 2E       		.uleb128 0x2e
 5668 02fb 00       		.byte	0
 5669 02fc 3F       		.uleb128 0x3f
 5670 02fd 19       		.uleb128 0x19
 5671 02fe 03       		.uleb128 0x3
 5672 02ff 0E       		.uleb128 0xe
 5673 0300 3A       		.uleb128 0x3a
 5674 0301 0B       		.uleb128 0xb
 5675 0302 3B       		.uleb128 0x3b
 5676 0303 05       		.uleb128 0x5
 5677 0304 27       		.uleb128 0x27
 5678 0305 19       		.uleb128 0x19
 5679 0306 49       		.uleb128 0x49
 5680 0307 13       		.uleb128 0x13
 5681 0308 11       		.uleb128 0x11
 5682 0309 01       		.uleb128 0x1
 5683 030a 12       		.uleb128 0x12
 5684 030b 06       		.uleb128 0x6
 5685 030c 40       		.uleb128 0x40
 5686 030d 18       		.uleb128 0x18
 5687 030e 9742     		.uleb128 0x2117
 5688 0310 19       		.uleb128 0x19
ARM GAS  /tmp/cc9w1cGI.s 			page 136


 5689 0311 00       		.byte	0
 5690 0312 00       		.byte	0
 5691 0313 3D       		.uleb128 0x3d
 5692 0314 2E       		.uleb128 0x2e
 5693 0315 00       		.byte	0
 5694 0316 3F       		.uleb128 0x3f
 5695 0317 19       		.uleb128 0x19
 5696 0318 03       		.uleb128 0x3
 5697 0319 0E       		.uleb128 0xe
 5698 031a 3A       		.uleb128 0x3a
 5699 031b 0B       		.uleb128 0xb
 5700 031c 3B       		.uleb128 0x3b
 5701 031d 05       		.uleb128 0x5
 5702 031e 27       		.uleb128 0x27
 5703 031f 19       		.uleb128 0x19
 5704 0320 11       		.uleb128 0x11
 5705 0321 01       		.uleb128 0x1
 5706 0322 12       		.uleb128 0x12
 5707 0323 06       		.uleb128 0x6
 5708 0324 40       		.uleb128 0x40
 5709 0325 18       		.uleb128 0x18
 5710 0326 9742     		.uleb128 0x2117
 5711 0328 19       		.uleb128 0x19
 5712 0329 00       		.byte	0
 5713 032a 00       		.byte	0
 5714 032b 3E       		.uleb128 0x3e
 5715 032c 05       		.uleb128 0x5
 5716 032d 00       		.byte	0
 5717 032e 03       		.uleb128 0x3
 5718 032f 0E       		.uleb128 0xe
 5719 0330 3A       		.uleb128 0x3a
 5720 0331 0B       		.uleb128 0xb
 5721 0332 3B       		.uleb128 0x3b
 5722 0333 05       		.uleb128 0x5
 5723 0334 49       		.uleb128 0x49
 5724 0335 13       		.uleb128 0x13
 5725 0336 02       		.uleb128 0x2
 5726 0337 18       		.uleb128 0x18
 5727 0338 00       		.byte	0
 5728 0339 00       		.byte	0
 5729 033a 3F       		.uleb128 0x3f
 5730 033b 34       		.uleb128 0x34
 5731 033c 00       		.byte	0
 5732 033d 03       		.uleb128 0x3
 5733 033e 0E       		.uleb128 0xe
 5734 033f 3A       		.uleb128 0x3a
 5735 0340 0B       		.uleb128 0xb
 5736 0341 3B       		.uleb128 0x3b
 5737 0342 05       		.uleb128 0x5
 5738 0343 49       		.uleb128 0x49
 5739 0344 13       		.uleb128 0x13
 5740 0345 1C       		.uleb128 0x1c
 5741 0346 0B       		.uleb128 0xb
 5742 0347 00       		.byte	0
 5743 0348 00       		.byte	0
 5744 0349 40       		.uleb128 0x40
 5745 034a 1D       		.uleb128 0x1d
ARM GAS  /tmp/cc9w1cGI.s 			page 137


 5746 034b 01       		.byte	0x1
 5747 034c 31       		.uleb128 0x31
 5748 034d 13       		.uleb128 0x13
 5749 034e 52       		.uleb128 0x52
 5750 034f 01       		.uleb128 0x1
 5751 0350 55       		.uleb128 0x55
 5752 0351 17       		.uleb128 0x17
 5753 0352 58       		.uleb128 0x58
 5754 0353 0B       		.uleb128 0xb
 5755 0354 59       		.uleb128 0x59
 5756 0355 05       		.uleb128 0x5
 5757 0356 00       		.byte	0
 5758 0357 00       		.byte	0
 5759 0358 41       		.uleb128 0x41
 5760 0359 2E       		.uleb128 0x2e
 5761 035a 01       		.byte	0x1
 5762 035b 03       		.uleb128 0x3
 5763 035c 0E       		.uleb128 0xe
 5764 035d 3A       		.uleb128 0x3a
 5765 035e 0B       		.uleb128 0xb
 5766 035f 3B       		.uleb128 0x3b
 5767 0360 05       		.uleb128 0x5
 5768 0361 27       		.uleb128 0x27
 5769 0362 19       		.uleb128 0x19
 5770 0363 49       		.uleb128 0x49
 5771 0364 13       		.uleb128 0x13
 5772 0365 11       		.uleb128 0x11
 5773 0366 01       		.uleb128 0x1
 5774 0367 12       		.uleb128 0x12
 5775 0368 06       		.uleb128 0x6
 5776 0369 40       		.uleb128 0x40
 5777 036a 18       		.uleb128 0x18
 5778 036b 9742     		.uleb128 0x2117
 5779 036d 19       		.uleb128 0x19
 5780 036e 01       		.uleb128 0x1
 5781 036f 13       		.uleb128 0x13
 5782 0370 00       		.byte	0
 5783 0371 00       		.byte	0
 5784 0372 42       		.uleb128 0x42
 5785 0373 2E       		.uleb128 0x2e
 5786 0374 01       		.byte	0x1
 5787 0375 03       		.uleb128 0x3
 5788 0376 0E       		.uleb128 0xe
 5789 0377 3A       		.uleb128 0x3a
 5790 0378 0B       		.uleb128 0xb
 5791 0379 3B       		.uleb128 0x3b
 5792 037a 05       		.uleb128 0x5
 5793 037b 27       		.uleb128 0x27
 5794 037c 19       		.uleb128 0x19
 5795 037d 49       		.uleb128 0x49
 5796 037e 13       		.uleb128 0x13
 5797 037f 20       		.uleb128 0x20
 5798 0380 0B       		.uleb128 0xb
 5799 0381 01       		.uleb128 0x1
 5800 0382 13       		.uleb128 0x13
 5801 0383 00       		.byte	0
 5802 0384 00       		.byte	0
ARM GAS  /tmp/cc9w1cGI.s 			page 138


 5803 0385 43       		.uleb128 0x43
 5804 0386 2E       		.uleb128 0x2e
 5805 0387 01       		.byte	0x1
 5806 0388 3F       		.uleb128 0x3f
 5807 0389 19       		.uleb128 0x19
 5808 038a 03       		.uleb128 0x3
 5809 038b 0E       		.uleb128 0xe
 5810 038c 3A       		.uleb128 0x3a
 5811 038d 0B       		.uleb128 0xb
 5812 038e 3B       		.uleb128 0x3b
 5813 038f 0B       		.uleb128 0xb
 5814 0390 27       		.uleb128 0x27
 5815 0391 19       		.uleb128 0x19
 5816 0392 49       		.uleb128 0x49
 5817 0393 13       		.uleb128 0x13
 5818 0394 11       		.uleb128 0x11
 5819 0395 01       		.uleb128 0x1
 5820 0396 12       		.uleb128 0x12
 5821 0397 06       		.uleb128 0x6
 5822 0398 40       		.uleb128 0x40
 5823 0399 18       		.uleb128 0x18
 5824 039a 9742     		.uleb128 0x2117
 5825 039c 19       		.uleb128 0x19
 5826 039d 01       		.uleb128 0x1
 5827 039e 13       		.uleb128 0x13
 5828 039f 00       		.byte	0
 5829 03a0 00       		.byte	0
 5830 03a1 44       		.uleb128 0x44
 5831 03a2 05       		.uleb128 0x5
 5832 03a3 00       		.byte	0
 5833 03a4 03       		.uleb128 0x3
 5834 03a5 08       		.uleb128 0x8
 5835 03a6 3A       		.uleb128 0x3a
 5836 03a7 0B       		.uleb128 0xb
 5837 03a8 3B       		.uleb128 0x3b
 5838 03a9 0B       		.uleb128 0xb
 5839 03aa 49       		.uleb128 0x49
 5840 03ab 13       		.uleb128 0x13
 5841 03ac 02       		.uleb128 0x2
 5842 03ad 17       		.uleb128 0x17
 5843 03ae 00       		.byte	0
 5844 03af 00       		.byte	0
 5845 03b0 45       		.uleb128 0x45
 5846 03b1 34       		.uleb128 0x34
 5847 03b2 00       		.byte	0
 5848 03b3 03       		.uleb128 0x3
 5849 03b4 08       		.uleb128 0x8
 5850 03b5 3A       		.uleb128 0x3a
 5851 03b6 0B       		.uleb128 0xb
 5852 03b7 3B       		.uleb128 0x3b
 5853 03b8 0B       		.uleb128 0xb
 5854 03b9 49       		.uleb128 0x49
 5855 03ba 13       		.uleb128 0x13
 5856 03bb 02       		.uleb128 0x2
 5857 03bc 18       		.uleb128 0x18
 5858 03bd 00       		.byte	0
 5859 03be 00       		.byte	0
ARM GAS  /tmp/cc9w1cGI.s 			page 139


 5860 03bf 46       		.uleb128 0x46
 5861 03c0 34       		.uleb128 0x34
 5862 03c1 00       		.byte	0
 5863 03c2 03       		.uleb128 0x3
 5864 03c3 0E       		.uleb128 0xe
 5865 03c4 3A       		.uleb128 0x3a
 5866 03c5 0B       		.uleb128 0xb
 5867 03c6 3B       		.uleb128 0x3b
 5868 03c7 0B       		.uleb128 0xb
 5869 03c8 49       		.uleb128 0x49
 5870 03c9 13       		.uleb128 0x13
 5871 03ca 02       		.uleb128 0x2
 5872 03cb 17       		.uleb128 0x17
 5873 03cc 00       		.byte	0
 5874 03cd 00       		.byte	0
 5875 03ce 47       		.uleb128 0x47
 5876 03cf 2E       		.uleb128 0x2e
 5877 03d0 01       		.byte	0x1
 5878 03d1 03       		.uleb128 0x3
 5879 03d2 0E       		.uleb128 0xe
 5880 03d3 3A       		.uleb128 0x3a
 5881 03d4 0B       		.uleb128 0xb
 5882 03d5 3B       		.uleb128 0x3b
 5883 03d6 0B       		.uleb128 0xb
 5884 03d7 27       		.uleb128 0x27
 5885 03d8 19       		.uleb128 0x19
 5886 03d9 20       		.uleb128 0x20
 5887 03da 0B       		.uleb128 0xb
 5888 03db 01       		.uleb128 0x1
 5889 03dc 13       		.uleb128 0x13
 5890 03dd 00       		.byte	0
 5891 03de 00       		.byte	0
 5892 03df 48       		.uleb128 0x48
 5893 03e0 05       		.uleb128 0x5
 5894 03e1 00       		.byte	0
 5895 03e2 03       		.uleb128 0x3
 5896 03e3 0E       		.uleb128 0xe
 5897 03e4 3A       		.uleb128 0x3a
 5898 03e5 0B       		.uleb128 0xb
 5899 03e6 3B       		.uleb128 0x3b
 5900 03e7 0B       		.uleb128 0xb
 5901 03e8 49       		.uleb128 0x49
 5902 03e9 13       		.uleb128 0x13
 5903 03ea 00       		.byte	0
 5904 03eb 00       		.byte	0
 5905 03ec 49       		.uleb128 0x49
 5906 03ed 05       		.uleb128 0x5
 5907 03ee 00       		.byte	0
 5908 03ef 03       		.uleb128 0x3
 5909 03f0 08       		.uleb128 0x8
 5910 03f1 3A       		.uleb128 0x3a
 5911 03f2 0B       		.uleb128 0xb
 5912 03f3 3B       		.uleb128 0x3b
 5913 03f4 0B       		.uleb128 0xb
 5914 03f5 49       		.uleb128 0x49
 5915 03f6 13       		.uleb128 0x13
 5916 03f7 00       		.byte	0
ARM GAS  /tmp/cc9w1cGI.s 			page 140


 5917 03f8 00       		.byte	0
 5918 03f9 4A       		.uleb128 0x4a
 5919 03fa 34       		.uleb128 0x34
 5920 03fb 00       		.byte	0
 5921 03fc 03       		.uleb128 0x3
 5922 03fd 0E       		.uleb128 0xe
 5923 03fe 3A       		.uleb128 0x3a
 5924 03ff 0B       		.uleb128 0xb
 5925 0400 3B       		.uleb128 0x3b
 5926 0401 0B       		.uleb128 0xb
 5927 0402 49       		.uleb128 0x49
 5928 0403 13       		.uleb128 0x13
 5929 0404 00       		.byte	0
 5930 0405 00       		.byte	0
 5931 0406 4B       		.uleb128 0x4b
 5932 0407 34       		.uleb128 0x34
 5933 0408 00       		.byte	0
 5934 0409 03       		.uleb128 0x3
 5935 040a 08       		.uleb128 0x8
 5936 040b 3A       		.uleb128 0x3a
 5937 040c 0B       		.uleb128 0xb
 5938 040d 3B       		.uleb128 0x3b
 5939 040e 0B       		.uleb128 0xb
 5940 040f 49       		.uleb128 0x49
 5941 0410 13       		.uleb128 0x13
 5942 0411 00       		.byte	0
 5943 0412 00       		.byte	0
 5944 0413 4C       		.uleb128 0x4c
 5945 0414 05       		.uleb128 0x5
 5946 0415 00       		.byte	0
 5947 0416 03       		.uleb128 0x3
 5948 0417 0E       		.uleb128 0xe
 5949 0418 3A       		.uleb128 0x3a
 5950 0419 0B       		.uleb128 0xb
 5951 041a 3B       		.uleb128 0x3b
 5952 041b 05       		.uleb128 0x5
 5953 041c 49       		.uleb128 0x49
 5954 041d 13       		.uleb128 0x13
 5955 041e 00       		.byte	0
 5956 041f 00       		.byte	0
 5957 0420 4D       		.uleb128 0x4d
 5958 0421 2E       		.uleb128 0x2e
 5959 0422 01       		.byte	0x1
 5960 0423 03       		.uleb128 0x3
 5961 0424 0E       		.uleb128 0xe
 5962 0425 3A       		.uleb128 0x3a
 5963 0426 0B       		.uleb128 0xb
 5964 0427 3B       		.uleb128 0x3b
 5965 0428 05       		.uleb128 0x5
 5966 0429 27       		.uleb128 0x27
 5967 042a 19       		.uleb128 0x19
 5968 042b 20       		.uleb128 0x20
 5969 042c 0B       		.uleb128 0xb
 5970 042d 01       		.uleb128 0x1
 5971 042e 13       		.uleb128 0x13
 5972 042f 00       		.byte	0
 5973 0430 00       		.byte	0
ARM GAS  /tmp/cc9w1cGI.s 			page 141


 5974 0431 4E       		.uleb128 0x4e
 5975 0432 2E       		.uleb128 0x2e
 5976 0433 00       		.byte	0
 5977 0434 03       		.uleb128 0x3
 5978 0435 0E       		.uleb128 0xe
 5979 0436 3A       		.uleb128 0x3a
 5980 0437 0B       		.uleb128 0xb
 5981 0438 3B       		.uleb128 0x3b
 5982 0439 05       		.uleb128 0x5
 5983 043a 27       		.uleb128 0x27
 5984 043b 19       		.uleb128 0x19
 5985 043c 49       		.uleb128 0x49
 5986 043d 13       		.uleb128 0x13
 5987 043e 20       		.uleb128 0x20
 5988 043f 0B       		.uleb128 0xb
 5989 0440 00       		.byte	0
 5990 0441 00       		.byte	0
 5991 0442 4F       		.uleb128 0x4f
 5992 0443 2E       		.uleb128 0x2e
 5993 0444 01       		.byte	0x1
 5994 0445 03       		.uleb128 0x3
 5995 0446 0E       		.uleb128 0xe
 5996 0447 3A       		.uleb128 0x3a
 5997 0448 0B       		.uleb128 0xb
 5998 0449 3B       		.uleb128 0x3b
 5999 044a 0B       		.uleb128 0xb
 6000 044b 27       		.uleb128 0x27
 6001 044c 19       		.uleb128 0x19
 6002 044d 49       		.uleb128 0x49
 6003 044e 13       		.uleb128 0x13
 6004 044f 20       		.uleb128 0x20
 6005 0450 0B       		.uleb128 0xb
 6006 0451 01       		.uleb128 0x1
 6007 0452 13       		.uleb128 0x13
 6008 0453 00       		.byte	0
 6009 0454 00       		.byte	0
 6010 0455 50       		.uleb128 0x50
 6011 0456 2E       		.uleb128 0x2e
 6012 0457 00       		.byte	0
 6013 0458 3F       		.uleb128 0x3f
 6014 0459 19       		.uleb128 0x19
 6015 045a 3C       		.uleb128 0x3c
 6016 045b 19       		.uleb128 0x19
 6017 045c 6E       		.uleb128 0x6e
 6018 045d 0E       		.uleb128 0xe
 6019 045e 03       		.uleb128 0x3
 6020 045f 0E       		.uleb128 0xe
 6021 0460 00       		.byte	0
 6022 0461 00       		.byte	0
 6023 0462 51       		.uleb128 0x51
 6024 0463 2E       		.uleb128 0x2e
 6025 0464 00       		.byte	0
 6026 0465 3F       		.uleb128 0x3f
 6027 0466 19       		.uleb128 0x19
 6028 0467 3C       		.uleb128 0x3c
 6029 0468 19       		.uleb128 0x19
 6030 0469 6E       		.uleb128 0x6e
ARM GAS  /tmp/cc9w1cGI.s 			page 142


 6031 046a 0E       		.uleb128 0xe
 6032 046b 03       		.uleb128 0x3
 6033 046c 0E       		.uleb128 0xe
 6034 046d 3A       		.uleb128 0x3a
 6035 046e 0B       		.uleb128 0xb
 6036 046f 3B       		.uleb128 0x3b
 6037 0470 05       		.uleb128 0x5
 6038 0471 00       		.byte	0
 6039 0472 00       		.byte	0
 6040 0473 52       		.uleb128 0x52
 6041 0474 2E       		.uleb128 0x2e
 6042 0475 00       		.byte	0
 6043 0476 3F       		.uleb128 0x3f
 6044 0477 19       		.uleb128 0x19
 6045 0478 3C       		.uleb128 0x3c
 6046 0479 19       		.uleb128 0x19
 6047 047a 6E       		.uleb128 0x6e
 6048 047b 0E       		.uleb128 0xe
 6049 047c 03       		.uleb128 0x3
 6050 047d 0E       		.uleb128 0xe
 6051 047e 3A       		.uleb128 0x3a
 6052 047f 0B       		.uleb128 0xb
 6053 0480 3B       		.uleb128 0x3b
 6054 0481 0B       		.uleb128 0xb
 6055 0482 00       		.byte	0
 6056 0483 00       		.byte	0
 6057 0484 00       		.byte	0
 6058              		.section	.debug_loc,"",%progbits
 6059              	.Ldebug_loc0:
 6060              	.LLST77:
 6061 0000 18000000 		.4byte	.LVL183
 6062 0004 26000000 		.4byte	.LVL185
 6063 0008 0100     		.2byte	0x1
 6064 000a 53       		.byte	0x53
 6065 000b 4E000000 		.4byte	.LVL189
 6066 000f 5E000000 		.4byte	.LVL192
 6067 0013 0100     		.2byte	0x1
 6068 0015 53       		.byte	0x53
 6069 0016 00000000 		.4byte	0
 6070 001a 00000000 		.4byte	0
 6071              	.LLST78:
 6072 001e 18000000 		.4byte	.LVL183
 6073 0022 28000000 		.4byte	.LVL186
 6074 0026 0E00     		.2byte	0xe
 6075 0028 74       		.byte	0x74
 6076 0029 00       		.sleb128 0
 6077 002a 40       		.byte	0x40
 6078 002b 4B       		.byte	0x4b
 6079 002c 24       		.byte	0x24
 6080 002d 22       		.byte	0x22
 6081 002e 7B       		.byte	0x7b
 6082 002f 00       		.sleb128 0
 6083 0030 40       		.byte	0x40
 6084 0031 4B       		.byte	0x4b
 6085 0032 24       		.byte	0x24
 6086 0033 22       		.byte	0x22
 6087 0034 2B       		.byte	0x2b
ARM GAS  /tmp/cc9w1cGI.s 			page 143


 6088 0035 9F       		.byte	0x9f
 6089 0036 3C000000 		.4byte	.LVL187
 6090 003a 66000000 		.4byte	.LVL195
 6091 003e 0E00     		.2byte	0xe
 6092 0040 74       		.byte	0x74
 6093 0041 00       		.sleb128 0
 6094 0042 40       		.byte	0x40
 6095 0043 4B       		.byte	0x4b
 6096 0044 24       		.byte	0x24
 6097 0045 22       		.byte	0x22
 6098 0046 7B       		.byte	0x7b
 6099 0047 00       		.sleb128 0
 6100 0048 40       		.byte	0x40
 6101 0049 4B       		.byte	0x4b
 6102 004a 24       		.byte	0x24
 6103 004b 22       		.byte	0x22
 6104 004c 2B       		.byte	0x2b
 6105 004d 9F       		.byte	0x9f
 6106 004e 86000000 		.4byte	.LVL203
 6107 0052 8C000000 		.4byte	.LVL204
 6108 0056 0E00     		.2byte	0xe
 6109 0058 74       		.byte	0x74
 6110 0059 00       		.sleb128 0
 6111 005a 40       		.byte	0x40
 6112 005b 4B       		.byte	0x4b
 6113 005c 24       		.byte	0x24
 6114 005d 22       		.byte	0x22
 6115 005e 7B       		.byte	0x7b
 6116 005f 00       		.sleb128 0
 6117 0060 40       		.byte	0x40
 6118 0061 4B       		.byte	0x4b
 6119 0062 24       		.byte	0x24
 6120 0063 22       		.byte	0x22
 6121 0064 2B       		.byte	0x2b
 6122 0065 9F       		.byte	0x9f
 6123 0066 00000000 		.4byte	0
 6124 006a 00000000 		.4byte	0
 6125              	.LLST79:
 6126 006e 18000000 		.4byte	.LVL183
 6127 0072 20000000 		.4byte	.LVL184
 6128 0076 0200     		.2byte	0x2
 6129 0078 30       		.byte	0x30
 6130 0079 9F       		.byte	0x9f
 6131 007a 48000000 		.4byte	.LVL188
 6132 007e 86000000 		.4byte	.LVL203
 6133 0082 0200     		.2byte	0x2
 6134 0084 30       		.byte	0x30
 6135 0085 9F       		.byte	0x9f
 6136 0086 00000000 		.4byte	0
 6137 008a 00000000 		.4byte	0
 6138              	.LLST80:
 6139 008e 18000000 		.4byte	.LVL183
 6140 0092 20000000 		.4byte	.LVL184
 6141 0096 0600     		.2byte	0x6
 6142 0098 0C       		.byte	0xc
 6143 0099 00800740 		.4byte	0x40078000
 6144 009d 9F       		.byte	0x9f
ARM GAS  /tmp/cc9w1cGI.s 			page 144


 6145 009e 48000000 		.4byte	.LVL188
 6146 00a2 86000000 		.4byte	.LVL203
 6147 00a6 0600     		.2byte	0x6
 6148 00a8 0C       		.byte	0xc
 6149 00a9 00800740 		.4byte	0x40078000
 6150 00ad 9F       		.byte	0x9f
 6151 00ae 00000000 		.4byte	0
 6152 00b2 00000000 		.4byte	0
 6153              	.LLST81:
 6154 00b6 56000000 		.4byte	.LVL190
 6155 00ba 80000000 		.4byte	.LVL201
 6156 00be 0100     		.2byte	0x1
 6157 00c0 5E       		.byte	0x5e
 6158 00c1 00000000 		.4byte	0
 6159 00c5 00000000 		.4byte	0
 6160              	.LLST82:
 6161 00c9 5C000000 		.4byte	.LVL191
 6162 00cd 74000000 		.4byte	.LVL197
 6163 00d1 0100     		.2byte	0x1
 6164 00d3 50       		.byte	0x50
 6165 00d4 74000000 		.4byte	.LVL197
 6166 00d8 76000000 		.4byte	.LVL198
 6167 00dc 0200     		.2byte	0x2
 6168 00de 71       		.byte	0x71
 6169 00df 08       		.sleb128 8
 6170 00e0 00000000 		.4byte	0
 6171 00e4 00000000 		.4byte	0
 6172              	.LLST83:
 6173 00e8 60000000 		.4byte	.LVL193
 6174 00ec 78000000 		.4byte	.LVL199
 6175 00f0 0100     		.2byte	0x1
 6176 00f2 52       		.byte	0x52
 6177 00f3 78000000 		.4byte	.LVL199
 6178 00f7 7A000000 		.4byte	.LVL200
 6179 00fb 0200     		.2byte	0x2
 6180 00fd 71       		.byte	0x71
 6181 00fe 0C       		.sleb128 12
 6182 00ff 00000000 		.4byte	0
 6183 0103 00000000 		.4byte	0
 6184              	.LLST84:
 6185 0107 64000000 		.4byte	.LVL194
 6186 010b 80000000 		.4byte	.LVL201
 6187 010f 0100     		.2byte	0x1
 6188 0111 57       		.byte	0x57
 6189 0112 00000000 		.4byte	0
 6190 0116 00000000 		.4byte	0
 6191              	.LLST85:
 6192 011a 68000000 		.4byte	.LVL196
 6193 011e 80000000 		.4byte	.LVL201
 6194 0122 0100     		.2byte	0x1
 6195 0124 56       		.byte	0x56
 6196 0125 00000000 		.4byte	0
 6197 0129 00000000 		.4byte	0
 6198              	.LLST86:
 6199 012d 80000000 		.4byte	.LVL201
 6200 0131 82000000 		.4byte	.LVL202
 6201 0135 0200     		.2byte	0x2
ARM GAS  /tmp/cc9w1cGI.s 			page 145


 6202 0137 30       		.byte	0x30
 6203 0138 9F       		.byte	0x9f
 6204 0139 00000000 		.4byte	0
 6205 013d 00000000 		.4byte	0
 6206              	.LLST87:
 6207 0141 80000000 		.4byte	.LVL201
 6208 0145 82000000 		.4byte	.LVL202
 6209 0149 0600     		.2byte	0x6
 6210 014b 0C       		.byte	0xc
 6211 014c 00800740 		.4byte	0x40078000
 6212 0150 9F       		.byte	0x9f
 6213 0151 00000000 		.4byte	0
 6214 0155 00000000 		.4byte	0
 6215              	.LLST70:
 6216 0159 00000000 		.4byte	.LVL173
 6217 015d 0E000000 		.4byte	.LVL175
 6218 0161 0100     		.2byte	0x1
 6219 0163 50       		.byte	0x50
 6220 0164 0E000000 		.4byte	.LVL175
 6221 0168 88000000 		.4byte	.LFE215
 6222 016c 0100     		.2byte	0x1
 6223 016e 56       		.byte	0x56
 6224 016f 00000000 		.4byte	0
 6225 0173 00000000 		.4byte	0
 6226              	.LLST71:
 6227 0177 00000000 		.4byte	.LVL173
 6228 017b 0C000000 		.4byte	.LVL174
 6229 017f 0100     		.2byte	0x1
 6230 0181 51       		.byte	0x51
 6231 0182 0C000000 		.4byte	.LVL174
 6232 0186 88000000 		.4byte	.LFE215
 6233 018a 0400     		.2byte	0x4
 6234 018c F3       		.byte	0xf3
 6235 018d 01       		.uleb128 0x1
 6236 018e 51       		.byte	0x51
 6237 018f 9F       		.byte	0x9f
 6238 0190 00000000 		.4byte	0
 6239 0194 00000000 		.4byte	0
 6240              	.LLST72:
 6241 0198 20000000 		.4byte	.LVL178
 6242 019c 54000000 		.4byte	.LVL181
 6243 01a0 0100     		.2byte	0x1
 6244 01a2 54       		.byte	0x54
 6245 01a3 5A000000 		.4byte	.LVL182
 6246 01a7 88000000 		.4byte	.LFE215
 6247 01ab 0100     		.2byte	0x1
 6248 01ad 54       		.byte	0x54
 6249 01ae 00000000 		.4byte	0
 6250 01b2 00000000 		.4byte	0
 6251              	.LLST73:
 6252 01b6 12000000 		.4byte	.LVL176
 6253 01ba 1C000000 		.4byte	.LVL177
 6254 01be 0200     		.2byte	0x2
 6255 01c0 30       		.byte	0x30
 6256 01c1 9F       		.byte	0x9f
 6257 01c2 00000000 		.4byte	0
 6258 01c6 00000000 		.4byte	0
ARM GAS  /tmp/cc9w1cGI.s 			page 146


 6259              	.LLST74:
 6260 01ca 12000000 		.4byte	.LVL176
 6261 01ce 1C000000 		.4byte	.LVL177
 6262 01d2 0600     		.2byte	0x6
 6263 01d4 0C       		.byte	0xc
 6264 01d5 00800740 		.4byte	0x40078000
 6265 01d9 9F       		.byte	0x9f
 6266 01da 00000000 		.4byte	0
 6267 01de 00000000 		.4byte	0
 6268              	.LLST75:
 6269 01e2 4A000000 		.4byte	.LVL179
 6270 01e6 50000000 		.4byte	.LVL180
 6271 01ea 0200     		.2byte	0x2
 6272 01ec 30       		.byte	0x30
 6273 01ed 9F       		.byte	0x9f
 6274 01ee 00000000 		.4byte	0
 6275 01f2 00000000 		.4byte	0
 6276              	.LLST76:
 6277 01f6 4A000000 		.4byte	.LVL179
 6278 01fa 50000000 		.4byte	.LVL180
 6279 01fe 0600     		.2byte	0x6
 6280 0200 0C       		.byte	0xc
 6281 0201 00800740 		.4byte	0x40078000
 6282 0205 9F       		.byte	0x9f
 6283 0206 00000000 		.4byte	0
 6284 020a 00000000 		.4byte	0
 6285              	.LLST63:
 6286 020e 00000000 		.4byte	.LVL163
 6287 0212 0E000000 		.4byte	.LVL165
 6288 0216 0100     		.2byte	0x1
 6289 0218 50       		.byte	0x50
 6290 0219 0E000000 		.4byte	.LVL165
 6291 021d 88000000 		.4byte	.LFE213
 6292 0221 0100     		.2byte	0x1
 6293 0223 56       		.byte	0x56
 6294 0224 00000000 		.4byte	0
 6295 0228 00000000 		.4byte	0
 6296              	.LLST64:
 6297 022c 00000000 		.4byte	.LVL163
 6298 0230 0C000000 		.4byte	.LVL164
 6299 0234 0100     		.2byte	0x1
 6300 0236 51       		.byte	0x51
 6301 0237 0C000000 		.4byte	.LVL164
 6302 023b 88000000 		.4byte	.LFE213
 6303 023f 0400     		.2byte	0x4
 6304 0241 F3       		.byte	0xf3
 6305 0242 01       		.uleb128 0x1
 6306 0243 51       		.byte	0x51
 6307 0244 9F       		.byte	0x9f
 6308 0245 00000000 		.4byte	0
 6309 0249 00000000 		.4byte	0
 6310              	.LLST65:
 6311 024d 20000000 		.4byte	.LVL168
 6312 0251 54000000 		.4byte	.LVL171
 6313 0255 0100     		.2byte	0x1
 6314 0257 54       		.byte	0x54
 6315 0258 5A000000 		.4byte	.LVL172
ARM GAS  /tmp/cc9w1cGI.s 			page 147


 6316 025c 88000000 		.4byte	.LFE213
 6317 0260 0100     		.2byte	0x1
 6318 0262 54       		.byte	0x54
 6319 0263 00000000 		.4byte	0
 6320 0267 00000000 		.4byte	0
 6321              	.LLST66:
 6322 026b 12000000 		.4byte	.LVL166
 6323 026f 1C000000 		.4byte	.LVL167
 6324 0273 0200     		.2byte	0x2
 6325 0275 30       		.byte	0x30
 6326 0276 9F       		.byte	0x9f
 6327 0277 00000000 		.4byte	0
 6328 027b 00000000 		.4byte	0
 6329              	.LLST67:
 6330 027f 12000000 		.4byte	.LVL166
 6331 0283 1C000000 		.4byte	.LVL167
 6332 0287 0600     		.2byte	0x6
 6333 0289 0C       		.byte	0xc
 6334 028a 00800740 		.4byte	0x40078000
 6335 028e 9F       		.byte	0x9f
 6336 028f 00000000 		.4byte	0
 6337 0293 00000000 		.4byte	0
 6338              	.LLST68:
 6339 0297 4A000000 		.4byte	.LVL169
 6340 029b 50000000 		.4byte	.LVL170
 6341 029f 0200     		.2byte	0x2
 6342 02a1 30       		.byte	0x30
 6343 02a2 9F       		.byte	0x9f
 6344 02a3 00000000 		.4byte	0
 6345 02a7 00000000 		.4byte	0
 6346              	.LLST69:
 6347 02ab 4A000000 		.4byte	.LVL169
 6348 02af 50000000 		.4byte	.LVL170
 6349 02b3 0600     		.2byte	0x6
 6350 02b5 0C       		.byte	0xc
 6351 02b6 00800740 		.4byte	0x40078000
 6352 02ba 9F       		.byte	0x9f
 6353 02bb 00000000 		.4byte	0
 6354 02bf 00000000 		.4byte	0
 6355              	.LLST56:
 6356 02c3 00000000 		.4byte	.LVL139
 6357 02c7 14000000 		.4byte	.LVL143
 6358 02cb 0100     		.2byte	0x1
 6359 02cd 50       		.byte	0x50
 6360 02ce 14000000 		.4byte	.LVL143
 6361 02d2 3C000000 		.4byte	.LVL153
 6362 02d6 0400     		.2byte	0x4
 6363 02d8 F3       		.byte	0xf3
 6364 02d9 01       		.uleb128 0x1
 6365 02da 50       		.byte	0x50
 6366 02db 9F       		.byte	0x9f
 6367 02dc 3C000000 		.4byte	.LVL153
 6368 02e0 46000000 		.4byte	.LVL154
 6369 02e4 0100     		.2byte	0x1
 6370 02e6 50       		.byte	0x50
 6371 02e7 46000000 		.4byte	.LVL154
 6372 02eb 4A000000 		.4byte	.LVL156
ARM GAS  /tmp/cc9w1cGI.s 			page 148


 6373 02ef 0200     		.2byte	0x2
 6374 02f1 72       		.byte	0x72
 6375 02f2 34       		.sleb128 52
 6376 02f3 4A000000 		.4byte	.LVL156
 6377 02f7 52000000 		.4byte	.LVL157
 6378 02fb 0500     		.2byte	0x5
 6379 02fd 0C       		.byte	0xc
 6380 02fe 34000040 		.4byte	0x40000034
 6381 0302 52000000 		.4byte	.LVL157
 6382 0306 94000000 		.4byte	.LFE212
 6383 030a 0400     		.2byte	0x4
 6384 030c F3       		.byte	0xf3
 6385 030d 01       		.uleb128 0x1
 6386 030e 50       		.byte	0x50
 6387 030f 9F       		.byte	0x9f
 6388 0310 00000000 		.4byte	0
 6389 0314 00000000 		.4byte	0
 6390              	.LLST57:
 6391 0318 0A000000 		.4byte	.LVL140
 6392 031c 0E000000 		.4byte	.LVL141
 6393 0320 0100     		.2byte	0x1
 6394 0322 53       		.byte	0x53
 6395 0323 10000000 		.4byte	.LVL142
 6396 0327 18000000 		.4byte	.LVL145
 6397 032b 0100     		.2byte	0x1
 6398 032d 53       		.byte	0x53
 6399 032e 3C000000 		.4byte	.LVL153
 6400 0332 48000000 		.4byte	.LVL155
 6401 0336 0100     		.2byte	0x1
 6402 0338 53       		.byte	0x53
 6403 0339 5E000000 		.4byte	.LVL158
 6404 033d 60000000 		.4byte	.LVL159
 6405 0341 0100     		.2byte	0x1
 6406 0343 53       		.byte	0x53
 6407 0344 72000000 		.4byte	.LVL161
 6408 0348 78000000 		.4byte	.LVL162
 6409 034c 0100     		.2byte	0x1
 6410 034e 53       		.byte	0x53
 6411 034f 00000000 		.4byte	0
 6412 0353 00000000 		.4byte	0
 6413              	.LLST58:
 6414 0357 16000000 		.4byte	.LVL144
 6415 035b 2E000000 		.4byte	.LVL150
 6416 035f 0100     		.2byte	0x1
 6417 0361 50       		.byte	0x50
 6418 0362 2E000000 		.4byte	.LVL150
 6419 0366 30000000 		.4byte	.LVL151
 6420 036a 0200     		.2byte	0x2
 6421 036c 72       		.byte	0x72
 6422 036d 04       		.sleb128 4
 6423 036e 00000000 		.4byte	0
 6424 0372 00000000 		.4byte	0
 6425              	.LLST59:
 6426 0376 1A000000 		.4byte	.LVL146
 6427 037a 3A000000 		.4byte	.LVL152
 6428 037e 0100     		.2byte	0x1
 6429 0380 57       		.byte	0x57
ARM GAS  /tmp/cc9w1cGI.s 			page 149


 6430 0381 00000000 		.4byte	0
 6431 0385 00000000 		.4byte	0
 6432              	.LLST60:
 6433 0389 20000000 		.4byte	.LVL147
 6434 038d 3A000000 		.4byte	.LVL152
 6435 0391 0100     		.2byte	0x1
 6436 0393 56       		.byte	0x56
 6437 0394 00000000 		.4byte	0
 6438 0398 00000000 		.4byte	0
 6439              	.LLST61:
 6440 039c 24000000 		.4byte	.LVL148
 6441 03a0 3A000000 		.4byte	.LVL152
 6442 03a4 0100     		.2byte	0x1
 6443 03a6 55       		.byte	0x55
 6444 03a7 00000000 		.4byte	0
 6445 03ab 00000000 		.4byte	0
 6446              	.LLST62:
 6447 03af 26000000 		.4byte	.LVL149
 6448 03b3 3A000000 		.4byte	.LVL152
 6449 03b7 0100     		.2byte	0x1
 6450 03b9 54       		.byte	0x54
 6451 03ba 00000000 		.4byte	0
 6452 03be 00000000 		.4byte	0
 6453              	.LLST49:
 6454 03c2 00000000 		.4byte	.LVL118
 6455 03c6 14000000 		.4byte	.LVL122
 6456 03ca 0100     		.2byte	0x1
 6457 03cc 50       		.byte	0x50
 6458 03cd 14000000 		.4byte	.LVL122
 6459 03d1 3C000000 		.4byte	.LVL132
 6460 03d5 0400     		.2byte	0x4
 6461 03d7 F3       		.byte	0xf3
 6462 03d8 01       		.uleb128 0x1
 6463 03d9 50       		.byte	0x50
 6464 03da 9F       		.byte	0x9f
 6465 03db 3C000000 		.4byte	.LVL132
 6466 03df 60000000 		.4byte	.LVL134
 6467 03e3 0100     		.2byte	0x1
 6468 03e5 50       		.byte	0x50
 6469 03e6 60000000 		.4byte	.LVL134
 6470 03ea 98000000 		.4byte	.LFE211
 6471 03ee 0400     		.2byte	0x4
 6472 03f0 F3       		.byte	0xf3
 6473 03f1 01       		.uleb128 0x1
 6474 03f2 50       		.byte	0x50
 6475 03f3 9F       		.byte	0x9f
 6476 03f4 00000000 		.4byte	0
 6477 03f8 00000000 		.4byte	0
 6478              	.LLST50:
 6479 03fc 0A000000 		.4byte	.LVL119
 6480 0400 0E000000 		.4byte	.LVL120
 6481 0404 0100     		.2byte	0x1
 6482 0406 53       		.byte	0x53
 6483 0407 10000000 		.4byte	.LVL121
 6484 040b 18000000 		.4byte	.LVL124
 6485 040f 0100     		.2byte	0x1
 6486 0411 53       		.byte	0x53
ARM GAS  /tmp/cc9w1cGI.s 			page 150


 6487 0412 3C000000 		.4byte	.LVL132
 6488 0416 44000000 		.4byte	.LVL133
 6489 041a 0100     		.2byte	0x1
 6490 041c 53       		.byte	0x53
 6491 041d 60000000 		.4byte	.LVL134
 6492 0421 62000000 		.4byte	.LVL135
 6493 0425 0100     		.2byte	0x1
 6494 0427 53       		.byte	0x53
 6495 0428 74000000 		.4byte	.LVL137
 6496 042c 7A000000 		.4byte	.LVL138
 6497 0430 0100     		.2byte	0x1
 6498 0432 53       		.byte	0x53
 6499 0433 00000000 		.4byte	0
 6500 0437 00000000 		.4byte	0
 6501              	.LLST51:
 6502 043b 16000000 		.4byte	.LVL123
 6503 043f 2E000000 		.4byte	.LVL129
 6504 0443 0100     		.2byte	0x1
 6505 0445 50       		.byte	0x50
 6506 0446 2E000000 		.4byte	.LVL129
 6507 044a 30000000 		.4byte	.LVL130
 6508 044e 0200     		.2byte	0x2
 6509 0450 72       		.byte	0x72
 6510 0451 04       		.sleb128 4
 6511 0452 00000000 		.4byte	0
 6512 0456 00000000 		.4byte	0
 6513              	.LLST52:
 6514 045a 1A000000 		.4byte	.LVL125
 6515 045e 3A000000 		.4byte	.LVL131
 6516 0462 0100     		.2byte	0x1
 6517 0464 57       		.byte	0x57
 6518 0465 00000000 		.4byte	0
 6519 0469 00000000 		.4byte	0
 6520              	.LLST53:
 6521 046d 20000000 		.4byte	.LVL126
 6522 0471 3A000000 		.4byte	.LVL131
 6523 0475 0100     		.2byte	0x1
 6524 0477 56       		.byte	0x56
 6525 0478 00000000 		.4byte	0
 6526 047c 00000000 		.4byte	0
 6527              	.LLST54:
 6528 0480 24000000 		.4byte	.LVL127
 6529 0484 3A000000 		.4byte	.LVL131
 6530 0488 0100     		.2byte	0x1
 6531 048a 55       		.byte	0x55
 6532 048b 00000000 		.4byte	0
 6533 048f 00000000 		.4byte	0
 6534              	.LLST55:
 6535 0493 26000000 		.4byte	.LVL128
 6536 0497 3A000000 		.4byte	.LVL131
 6537 049b 0100     		.2byte	0x1
 6538 049d 54       		.byte	0x54
 6539 049e 00000000 		.4byte	0
 6540 04a2 00000000 		.4byte	0
 6541              	.LLST47:
 6542 04a6 00000000 		.4byte	.LVL114
 6543 04aa 08000000 		.4byte	.LVL116
ARM GAS  /tmp/cc9w1cGI.s 			page 151


 6544 04ae 0100     		.2byte	0x1
 6545 04b0 50       		.byte	0x50
 6546 04b1 08000000 		.4byte	.LVL116
 6547 04b5 0B000000 		.4byte	.LVL117-1
 6548 04b9 0100     		.2byte	0x1
 6549 04bb 51       		.byte	0x51
 6550 04bc 0B000000 		.4byte	.LVL117-1
 6551 04c0 0C000000 		.4byte	.LFE210
 6552 04c4 0400     		.2byte	0x4
 6553 04c6 F3       		.byte	0xf3
 6554 04c7 01       		.uleb128 0x1
 6555 04c8 50       		.byte	0x50
 6556 04c9 9F       		.byte	0x9f
 6557 04ca 00000000 		.4byte	0
 6558 04ce 00000000 		.4byte	0
 6559              	.LLST48:
 6560 04d2 00000000 		.4byte	.LVL114
 6561 04d6 04000000 		.4byte	.LVL115
 6562 04da 0100     		.2byte	0x1
 6563 04dc 51       		.byte	0x51
 6564 04dd 04000000 		.4byte	.LVL115
 6565 04e1 0B000000 		.4byte	.LVL117-1
 6566 04e5 0100     		.2byte	0x1
 6567 04e7 52       		.byte	0x52
 6568 04e8 0B000000 		.4byte	.LVL117-1
 6569 04ec 0C000000 		.4byte	.LFE210
 6570 04f0 0400     		.2byte	0x4
 6571 04f2 F3       		.byte	0xf3
 6572 04f3 01       		.uleb128 0x1
 6573 04f4 51       		.byte	0x51
 6574 04f5 9F       		.byte	0x9f
 6575 04f6 00000000 		.4byte	0
 6576 04fa 00000000 		.4byte	0
 6577              	.LLST41:
 6578 04fe 00000000 		.4byte	.LVL100
 6579 0502 78000000 		.4byte	.LVL108
 6580 0506 0100     		.2byte	0x1
 6581 0508 50       		.byte	0x50
 6582 0509 78000000 		.4byte	.LVL108
 6583 050d 89000000 		.4byte	.LVL111-1
 6584 0511 0100     		.2byte	0x1
 6585 0513 51       		.byte	0x51
 6586 0514 89000000 		.4byte	.LVL111-1
 6587 0518 8A000000 		.4byte	.LVL111
 6588 051c 0400     		.2byte	0x4
 6589 051e F3       		.byte	0xf3
 6590 051f 01       		.uleb128 0x1
 6591 0520 50       		.byte	0x50
 6592 0521 9F       		.byte	0x9f
 6593 0522 8A000000 		.4byte	.LVL111
 6594 0526 AC000000 		.4byte	.LFE209
 6595 052a 0100     		.2byte	0x1
 6596 052c 50       		.byte	0x50
 6597 052d 00000000 		.4byte	0
 6598 0531 00000000 		.4byte	0
 6599              	.LLST42:
 6600 0535 00000000 		.4byte	.LVL100
ARM GAS  /tmp/cc9w1cGI.s 			page 152


 6601 0539 76000000 		.4byte	.LVL107
 6602 053d 0100     		.2byte	0x1
 6603 053f 51       		.byte	0x51
 6604 0540 76000000 		.4byte	.LVL107
 6605 0544 89000000 		.4byte	.LVL111-1
 6606 0548 0100     		.2byte	0x1
 6607 054a 52       		.byte	0x52
 6608 054b 89000000 		.4byte	.LVL111-1
 6609 054f 8A000000 		.4byte	.LVL111
 6610 0553 0400     		.2byte	0x4
 6611 0555 F3       		.byte	0xf3
 6612 0556 01       		.uleb128 0x1
 6613 0557 51       		.byte	0x51
 6614 0558 9F       		.byte	0x9f
 6615 0559 8A000000 		.4byte	.LVL111
 6616 055d AC000000 		.4byte	.LFE209
 6617 0561 0100     		.2byte	0x1
 6618 0563 51       		.byte	0x51
 6619 0564 00000000 		.4byte	0
 6620 0568 00000000 		.4byte	0
 6621              	.LLST43:
 6622 056c 00000000 		.4byte	.LVL100
 6623 0570 0C000000 		.4byte	.LVL101
 6624 0574 0100     		.2byte	0x1
 6625 0576 52       		.byte	0x52
 6626 0577 0C000000 		.4byte	.LVL101
 6627 057b AC000000 		.4byte	.LFE209
 6628 057f 0400     		.2byte	0x4
 6629 0581 F3       		.byte	0xf3
 6630 0582 01       		.uleb128 0x1
 6631 0583 52       		.byte	0x52
 6632 0584 9F       		.byte	0x9f
 6633 0585 00000000 		.4byte	0
 6634 0589 00000000 		.4byte	0
 6635              	.LLST44:
 6636 058d 00000000 		.4byte	.LVL100
 6637 0591 89000000 		.4byte	.LVL111-1
 6638 0595 0100     		.2byte	0x1
 6639 0597 53       		.byte	0x53
 6640 0598 89000000 		.4byte	.LVL111-1
 6641 059c 8A000000 		.4byte	.LVL111
 6642 05a0 0400     		.2byte	0x4
 6643 05a2 F3       		.byte	0xf3
 6644 05a3 01       		.uleb128 0x1
 6645 05a4 53       		.byte	0x53
 6646 05a5 9F       		.byte	0x9f
 6647 05a6 8A000000 		.4byte	.LVL111
 6648 05aa AC000000 		.4byte	.LFE209
 6649 05ae 0100     		.2byte	0x1
 6650 05b0 53       		.byte	0x53
 6651 05b1 00000000 		.4byte	0
 6652 05b5 00000000 		.4byte	0
 6653              	.LLST45:
 6654 05b9 00000000 		.4byte	.LVL100
 6655 05bd 86000000 		.4byte	.LVL110
 6656 05c1 0200     		.2byte	0x2
 6657 05c3 91       		.byte	0x91
ARM GAS  /tmp/cc9w1cGI.s 			page 153


 6658 05c4 00       		.sleb128 0
 6659 05c5 86000000 		.4byte	.LVL110
 6660 05c9 8A000000 		.4byte	.LVL111
 6661 05cd 0200     		.2byte	0x2
 6662 05cf 7D       		.byte	0x7d
 6663 05d0 00       		.sleb128 0
 6664 05d1 8A000000 		.4byte	.LVL111
 6665 05d5 AC000000 		.4byte	.LFE209
 6666 05d9 0200     		.2byte	0x2
 6667 05db 91       		.byte	0x91
 6668 05dc 00       		.sleb128 0
 6669 05dd 00000000 		.4byte	0
 6670 05e1 00000000 		.4byte	0
 6671              	.LLST46:
 6672 05e5 3E000000 		.4byte	.LVL102
 6673 05e9 62000000 		.4byte	.LVL104
 6674 05ed 0100     		.2byte	0x1
 6675 05ef 55       		.byte	0x55
 6676 05f0 66000000 		.4byte	.LVL105
 6677 05f4 7A000000 		.4byte	.LVL109
 6678 05f8 0100     		.2byte	0x1
 6679 05fa 55       		.byte	0x55
 6680 05fb 7A000000 		.4byte	.LVL109
 6681 05ff 89000000 		.4byte	.LVL111-1
 6682 0603 0100     		.2byte	0x1
 6683 0605 50       		.byte	0x50
 6684 0606 8A000000 		.4byte	.LVL111
 6685 060a AC000000 		.4byte	.LFE209
 6686 060e 0100     		.2byte	0x1
 6687 0610 55       		.byte	0x55
 6688 0611 00000000 		.4byte	0
 6689 0615 00000000 		.4byte	0
 6690              	.LLST38:
 6691 0619 00000000 		.4byte	.LVL92
 6692 061d 0A000000 		.4byte	.LVL93
 6693 0621 0100     		.2byte	0x1
 6694 0623 50       		.byte	0x50
 6695 0624 0A000000 		.4byte	.LVL93
 6696 0628 0E000000 		.4byte	.LVL95
 6697 062c 0300     		.2byte	0x3
 6698 062e 73       		.byte	0x73
 6699 062f 7C       		.sleb128 -4
 6700 0630 9F       		.byte	0x9f
 6701 0631 0E000000 		.4byte	.LVL95
 6702 0635 1C000000 		.4byte	.LVL97
 6703 0639 0300     		.2byte	0x3
 6704 063b 73       		.byte	0x73
 6705 063c 78       		.sleb128 -8
 6706 063d 9F       		.byte	0x9f
 6707 063e 1C000000 		.4byte	.LVL97
 6708 0642 20000000 		.4byte	.LVL98
 6709 0646 0300     		.2byte	0x3
 6710 0648 73       		.byte	0x73
 6711 0649 79       		.sleb128 -7
 6712 064a 9F       		.byte	0x9f
 6713 064b 20000000 		.4byte	.LVL98
 6714 064f 24000000 		.4byte	.LVL99
ARM GAS  /tmp/cc9w1cGI.s 			page 154


 6715 0653 0300     		.2byte	0x3
 6716 0655 73       		.byte	0x73
 6717 0656 7A       		.sleb128 -6
 6718 0657 9F       		.byte	0x9f
 6719 0658 00000000 		.4byte	0
 6720 065c 00000000 		.4byte	0
 6721              	.LLST39:
 6722 0660 0C000000 		.4byte	.LVL94
 6723 0664 18000000 		.4byte	.LVL96
 6724 0668 0100     		.2byte	0x1
 6725 066a 52       		.byte	0x52
 6726 066b 00000000 		.4byte	0
 6727 066f 00000000 		.4byte	0
 6728              	.LLST40:
 6729 0673 00000000 		.4byte	.LVL92
 6730 0677 0A000000 		.4byte	.LVL93
 6731 067b 0200     		.2byte	0x2
 6732 067d 30       		.byte	0x30
 6733 067e 9F       		.byte	0x9f
 6734 067f 00000000 		.4byte	0
 6735 0683 00000000 		.4byte	0
 6736              	.LLST36:
 6737 0687 00000000 		.4byte	.LVL88
 6738 068b 14000000 		.4byte	.LVL90
 6739 068f 0100     		.2byte	0x1
 6740 0691 50       		.byte	0x50
 6741 0692 14000000 		.4byte	.LVL90
 6742 0696 1F000000 		.4byte	.LVL91-1
 6743 069a 0100     		.2byte	0x1
 6744 069c 51       		.byte	0x51
 6745 069d 1F000000 		.4byte	.LVL91-1
 6746 06a1 20000000 		.4byte	.LFE206
 6747 06a5 0400     		.2byte	0x4
 6748 06a7 F3       		.byte	0xf3
 6749 06a8 01       		.uleb128 0x1
 6750 06a9 50       		.byte	0x50
 6751 06aa 9F       		.byte	0x9f
 6752 06ab 00000000 		.4byte	0
 6753 06af 00000000 		.4byte	0
 6754              	.LLST37:
 6755 06b3 00000000 		.4byte	.LVL88
 6756 06b7 08000000 		.4byte	.LVL89
 6757 06bb 0100     		.2byte	0x1
 6758 06bd 51       		.byte	0x51
 6759 06be 08000000 		.4byte	.LVL89
 6760 06c2 1F000000 		.4byte	.LVL91-1
 6761 06c6 0100     		.2byte	0x1
 6762 06c8 52       		.byte	0x52
 6763 06c9 1F000000 		.4byte	.LVL91-1
 6764 06cd 20000000 		.4byte	.LFE206
 6765 06d1 0400     		.2byte	0x4
 6766 06d3 F3       		.byte	0xf3
 6767 06d4 01       		.uleb128 0x1
 6768 06d5 51       		.byte	0x51
 6769 06d6 9F       		.byte	0x9f
 6770 06d7 00000000 		.4byte	0
 6771 06db 00000000 		.4byte	0
ARM GAS  /tmp/cc9w1cGI.s 			page 155


 6772              	.LLST26:
 6773 06df 00000000 		.4byte	.LVL61
 6774 06e3 04000000 		.4byte	.LVL62
 6775 06e7 0100     		.2byte	0x1
 6776 06e9 50       		.byte	0x50
 6777 06ea 04000000 		.4byte	.LVL62
 6778 06ee DC000000 		.4byte	.LFE203
 6779 06f2 0400     		.2byte	0x4
 6780 06f4 F3       		.byte	0xf3
 6781 06f5 01       		.uleb128 0x1
 6782 06f6 50       		.byte	0x50
 6783 06f7 9F       		.byte	0x9f
 6784 06f8 00000000 		.4byte	0
 6785 06fc 00000000 		.4byte	0
 6786              	.LLST27:
 6787 0700 00000000 		.4byte	.LVL61
 6788 0704 22000000 		.4byte	.LVL66
 6789 0708 0100     		.2byte	0x1
 6790 070a 51       		.byte	0x51
 6791 070b 22000000 		.4byte	.LVL66
 6792 070f 66000000 		.4byte	.LVL72
 6793 0713 0400     		.2byte	0x4
 6794 0715 F3       		.byte	0xf3
 6795 0716 01       		.uleb128 0x1
 6796 0717 51       		.byte	0x51
 6797 0718 9F       		.byte	0x9f
 6798 0719 66000000 		.4byte	.LVL72
 6799 071d 7E000000 		.4byte	.LVL75
 6800 0721 0100     		.2byte	0x1
 6801 0723 51       		.byte	0x51
 6802 0724 7E000000 		.4byte	.LVL75
 6803 0728 DC000000 		.4byte	.LFE203
 6804 072c 0400     		.2byte	0x4
 6805 072e F3       		.byte	0xf3
 6806 072f 01       		.uleb128 0x1
 6807 0730 51       		.byte	0x51
 6808 0731 9F       		.byte	0x9f
 6809 0732 00000000 		.4byte	0
 6810 0736 00000000 		.4byte	0
 6811              	.LLST28:
 6812 073a 00000000 		.4byte	.LVL61
 6813 073e 60000000 		.4byte	.LVL70
 6814 0742 0100     		.2byte	0x1
 6815 0744 52       		.byte	0x52
 6816 0745 60000000 		.4byte	.LVL70
 6817 0749 66000000 		.4byte	.LVL72
 6818 074d 0400     		.2byte	0x4
 6819 074f F3       		.byte	0xf3
 6820 0750 01       		.uleb128 0x1
 6821 0751 52       		.byte	0x52
 6822 0752 9F       		.byte	0x9f
 6823 0753 66000000 		.4byte	.LVL72
 6824 0757 A0000000 		.4byte	.LVL78
 6825 075b 0100     		.2byte	0x1
 6826 075d 52       		.byte	0x52
 6827 075e A0000000 		.4byte	.LVL78
 6828 0762 A6000000 		.4byte	.LVL80
ARM GAS  /tmp/cc9w1cGI.s 			page 156


 6829 0766 0400     		.2byte	0x4
 6830 0768 F3       		.byte	0xf3
 6831 0769 01       		.uleb128 0x1
 6832 076a 52       		.byte	0x52
 6833 076b 9F       		.byte	0x9f
 6834 076c A6000000 		.4byte	.LVL80
 6835 0770 BC000000 		.4byte	.LVL84
 6836 0774 0100     		.2byte	0x1
 6837 0776 52       		.byte	0x52
 6838 0777 BC000000 		.4byte	.LVL84
 6839 077b C8000000 		.4byte	.LVL85
 6840 077f 0400     		.2byte	0x4
 6841 0781 F3       		.byte	0xf3
 6842 0782 01       		.uleb128 0x1
 6843 0783 52       		.byte	0x52
 6844 0784 9F       		.byte	0x9f
 6845 0785 C8000000 		.4byte	.LVL85
 6846 0789 CA000000 		.4byte	.LVL86
 6847 078d 0100     		.2byte	0x1
 6848 078f 52       		.byte	0x52
 6849 0790 CA000000 		.4byte	.LVL86
 6850 0794 DC000000 		.4byte	.LFE203
 6851 0798 0400     		.2byte	0x4
 6852 079a F3       		.byte	0xf3
 6853 079b 01       		.uleb128 0x1
 6854 079c 52       		.byte	0x52
 6855 079d 9F       		.byte	0x9f
 6856 079e 00000000 		.4byte	0
 6857 07a2 00000000 		.4byte	0
 6858              	.LLST29:
 6859 07a6 00000000 		.4byte	.LVL61
 6860 07aa 0A000000 		.4byte	.LVL64
 6861 07ae 0100     		.2byte	0x1
 6862 07b0 53       		.byte	0x53
 6863 07b1 0A000000 		.4byte	.LVL64
 6864 07b5 66000000 		.4byte	.LVL72
 6865 07b9 0400     		.2byte	0x4
 6866 07bb F3       		.byte	0xf3
 6867 07bc 01       		.uleb128 0x1
 6868 07bd 53       		.byte	0x53
 6869 07be 9F       		.byte	0x9f
 6870 07bf 66000000 		.4byte	.LVL72
 6871 07c3 68000000 		.4byte	.LVL73
 6872 07c7 0100     		.2byte	0x1
 6873 07c9 53       		.byte	0x53
 6874 07ca 68000000 		.4byte	.LVL73
 6875 07ce DC000000 		.4byte	.LFE203
 6876 07d2 0400     		.2byte	0x4
 6877 07d4 F3       		.byte	0xf3
 6878 07d5 01       		.uleb128 0x1
 6879 07d6 53       		.byte	0x53
 6880 07d7 9F       		.byte	0x9f
 6881 07d8 00000000 		.4byte	0
 6882 07dc 00000000 		.4byte	0
 6883              	.LLST30:
 6884 07e0 00000000 		.4byte	.LVL61
 6885 07e4 62000000 		.4byte	.LVL71
ARM GAS  /tmp/cc9w1cGI.s 			page 157


 6886 07e8 0200     		.2byte	0x2
 6887 07ea 30       		.byte	0x30
 6888 07eb 9F       		.byte	0x9f
 6889 07ec 62000000 		.4byte	.LVL71
 6890 07f0 66000000 		.4byte	.LVL72
 6891 07f4 0100     		.2byte	0x1
 6892 07f6 52       		.byte	0x52
 6893 07f7 66000000 		.4byte	.LVL72
 6894 07fb A2000000 		.4byte	.LVL79
 6895 07ff 0200     		.2byte	0x2
 6896 0801 30       		.byte	0x30
 6897 0802 9F       		.byte	0x9f
 6898 0803 A2000000 		.4byte	.LVL79
 6899 0807 A6000000 		.4byte	.LVL80
 6900 080b 0100     		.2byte	0x1
 6901 080d 52       		.byte	0x52
 6902 080e A6000000 		.4byte	.LVL80
 6903 0812 BC000000 		.4byte	.LVL84
 6904 0816 0200     		.2byte	0x2
 6905 0818 30       		.byte	0x30
 6906 0819 9F       		.byte	0x9f
 6907 081a BC000000 		.4byte	.LVL84
 6908 081e C8000000 		.4byte	.LVL85
 6909 0822 0100     		.2byte	0x1
 6910 0824 52       		.byte	0x52
 6911 0825 C8000000 		.4byte	.LVL85
 6912 0829 CA000000 		.4byte	.LVL86
 6913 082d 0200     		.2byte	0x2
 6914 082f 30       		.byte	0x30
 6915 0830 9F       		.byte	0x9f
 6916 0831 CA000000 		.4byte	.LVL86
 6917 0835 DC000000 		.4byte	.LFE203
 6918 0839 0100     		.2byte	0x1
 6919 083b 52       		.byte	0x52
 6920 083c 00000000 		.4byte	0
 6921 0840 00000000 		.4byte	0
 6922              	.LLST31:
 6923 0844 08000000 		.4byte	.LVL63
 6924 0848 50000000 		.4byte	.LVL69
 6925 084c 0600     		.2byte	0x6
 6926 084e 0C       		.byte	0xc
 6927 084f 80D1F008 		.4byte	0x8f0d180
 6928 0853 9F       		.byte	0x9f
 6929 0854 6E000000 		.4byte	.LVL74
 6930 0858 94000000 		.4byte	.LVL77
 6931 085c 0600     		.2byte	0x6
 6932 085e 0C       		.byte	0xc
 6933 085f 80D1F008 		.4byte	0x8f0d180
 6934 0863 9F       		.byte	0x9f
 6935 0864 A6000000 		.4byte	.LVL80
 6936 0868 B8000000 		.4byte	.LVL83
 6937 086c 0600     		.2byte	0x6
 6938 086e 0C       		.byte	0xc
 6939 086f 80D1F008 		.4byte	0x8f0d180
 6940 0873 9F       		.byte	0x9f
 6941 0874 00000000 		.4byte	0
 6942 0878 00000000 		.4byte	0
ARM GAS  /tmp/cc9w1cGI.s 			page 158


 6943              	.LLST32:
 6944 087c 08000000 		.4byte	.LVL63
 6945 0880 22000000 		.4byte	.LVL66
 6946 0884 0100     		.2byte	0x1
 6947 0886 51       		.byte	0x51
 6948 0887 22000000 		.4byte	.LVL66
 6949 088b 50000000 		.4byte	.LVL69
 6950 088f 0400     		.2byte	0x4
 6951 0891 F3       		.byte	0xf3
 6952 0892 01       		.uleb128 0x1
 6953 0893 51       		.byte	0x51
 6954 0894 9F       		.byte	0x9f
 6955 0895 6E000000 		.4byte	.LVL74
 6956 0899 7E000000 		.4byte	.LVL75
 6957 089d 0100     		.2byte	0x1
 6958 089f 51       		.byte	0x51
 6959 08a0 7E000000 		.4byte	.LVL75
 6960 08a4 94000000 		.4byte	.LVL77
 6961 08a8 0400     		.2byte	0x4
 6962 08aa F3       		.byte	0xf3
 6963 08ab 01       		.uleb128 0x1
 6964 08ac 51       		.byte	0x51
 6965 08ad 9F       		.byte	0x9f
 6966 08ae A6000000 		.4byte	.LVL80
 6967 08b2 B8000000 		.4byte	.LVL83
 6968 08b6 0400     		.2byte	0x4
 6969 08b8 F3       		.byte	0xf3
 6970 08b9 01       		.uleb128 0x1
 6971 08ba 51       		.byte	0x51
 6972 08bb 9F       		.byte	0x9f
 6973 08bc 00000000 		.4byte	0
 6974 08c0 00000000 		.4byte	0
 6975              	.LLST33:
 6976 08c4 08000000 		.4byte	.LVL63
 6977 08c8 2A000000 		.4byte	.LVL67
 6978 08cc 0200     		.2byte	0x2
 6979 08ce 30       		.byte	0x30
 6980 08cf 9F       		.byte	0x9f
 6981 08d0 2A000000 		.4byte	.LVL67
 6982 08d4 34000000 		.4byte	.LVL68
 6983 08d8 0500     		.2byte	0x5
 6984 08da 71       		.byte	0x71
 6985 08db 00       		.sleb128 0
 6986 08dc 31       		.byte	0x31
 6987 08dd 25       		.byte	0x25
 6988 08de 9F       		.byte	0x9f
 6989 08df 6E000000 		.4byte	.LVL74
 6990 08e3 88000000 		.4byte	.LVL76
 6991 08e7 0200     		.2byte	0x2
 6992 08e9 30       		.byte	0x30
 6993 08ea 9F       		.byte	0x9f
 6994 08eb A6000000 		.4byte	.LVL80
 6995 08ef AA000000 		.4byte	.LVL82
 6996 08f3 0200     		.2byte	0x2
 6997 08f5 30       		.byte	0x30
 6998 08f6 9F       		.byte	0x9f
 6999 08f7 00000000 		.4byte	0
ARM GAS  /tmp/cc9w1cGI.s 			page 159


 7000 08fb 00000000 		.4byte	0
 7001              	.LLST34:
 7002 08ff 08000000 		.4byte	.LVL63
 7003 0903 2A000000 		.4byte	.LVL67
 7004 0907 0200     		.2byte	0x2
 7005 0909 30       		.byte	0x30
 7006 090a 9F       		.byte	0x9f
 7007 090b 2A000000 		.4byte	.LVL67
 7008 090f 34000000 		.4byte	.LVL68
 7009 0913 0500     		.2byte	0x5
 7010 0915 71       		.byte	0x71
 7011 0916 00       		.sleb128 0
 7012 0917 31       		.byte	0x31
 7013 0918 1A       		.byte	0x1a
 7014 0919 9F       		.byte	0x9f
 7015 091a 6E000000 		.4byte	.LVL74
 7016 091e 88000000 		.4byte	.LVL76
 7017 0922 0200     		.2byte	0x2
 7018 0924 30       		.byte	0x30
 7019 0925 9F       		.byte	0x9f
 7020 0926 A6000000 		.4byte	.LVL80
 7021 092a AA000000 		.4byte	.LVL82
 7022 092e 0200     		.2byte	0x2
 7023 0930 30       		.byte	0x30
 7024 0931 9F       		.byte	0x9f
 7025 0932 00000000 		.4byte	0
 7026 0936 00000000 		.4byte	0
 7027              	.LLST35:
 7028 093a 08000000 		.4byte	.LVL63
 7029 093e 1E000000 		.4byte	.LVL65
 7030 0942 0200     		.2byte	0x2
 7031 0944 30       		.byte	0x30
 7032 0945 9F       		.byte	0x9f
 7033 0946 1E000000 		.4byte	.LVL65
 7034 094a 2A000000 		.4byte	.LVL67
 7035 094e 0300     		.2byte	0x3
 7036 0950 73       		.byte	0x73
 7037 0951 7E       		.sleb128 -2
 7038 0952 9F       		.byte	0x9f
 7039 0953 2A000000 		.4byte	.LVL67
 7040 0957 34000000 		.4byte	.LVL68
 7041 095b 0100     		.2byte	0x1
 7042 095d 51       		.byte	0x51
 7043 095e 6E000000 		.4byte	.LVL74
 7044 0962 94000000 		.4byte	.LVL77
 7045 0966 0200     		.2byte	0x2
 7046 0968 30       		.byte	0x30
 7047 0969 9F       		.byte	0x9f
 7048 096a A6000000 		.4byte	.LVL80
 7049 096e A8000000 		.4byte	.LVL81
 7050 0972 0300     		.2byte	0x3
 7051 0974 73       		.byte	0x73
 7052 0975 7E       		.sleb128 -2
 7053 0976 9F       		.byte	0x9f
 7054 0977 A8000000 		.4byte	.LVL81
 7055 097b AA000000 		.4byte	.LVL82
 7056 097f 0100     		.2byte	0x1
ARM GAS  /tmp/cc9w1cGI.s 			page 160


 7057 0981 51       		.byte	0x51
 7058 0982 00000000 		.4byte	0
 7059 0986 00000000 		.4byte	0
 7060              	.LLST25:
 7061 098a 00000000 		.4byte	.LVL59
 7062 098e 06000000 		.4byte	.LVL60
 7063 0992 0100     		.2byte	0x1
 7064 0994 50       		.byte	0x50
 7065 0995 06000000 		.4byte	.LVL60
 7066 0999 0A000000 		.4byte	.LFE201
 7067 099d 0400     		.2byte	0x4
 7068 099f F3       		.byte	0xf3
 7069 09a0 01       		.uleb128 0x1
 7070 09a1 50       		.byte	0x50
 7071 09a2 9F       		.byte	0x9f
 7072 09a3 00000000 		.4byte	0
 7073 09a7 00000000 		.4byte	0
 7074              	.LLST0:
 7075 09ab 00000000 		.4byte	.LVL0
 7076 09af 0C000000 		.4byte	.LVL1
 7077 09b3 0100     		.2byte	0x1
 7078 09b5 50       		.byte	0x50
 7079 09b6 0C000000 		.4byte	.LVL1
 7080 09ba 0E000000 		.4byte	.LVL2
 7081 09be 0100     		.2byte	0x1
 7082 09c0 50       		.byte	0x50
 7083 09c1 0E000000 		.4byte	.LVL2
 7084 09c5 16000000 		.4byte	.LVL3
 7085 09c9 0700     		.2byte	0x7
 7086 09cb 70       		.byte	0x70
 7087 09cc 00       		.sleb128 0
 7088 09cd 0A       		.byte	0xa
 7089 09ce 0010     		.2byte	0x1000
 7090 09d0 21       		.byte	0x21
 7091 09d1 9F       		.byte	0x9f
 7092 09d2 16000000 		.4byte	.LVL3
 7093 09d6 4A000000 		.4byte	.LVL9
 7094 09da 0100     		.2byte	0x1
 7095 09dc 50       		.byte	0x50
 7096 09dd 4A000000 		.4byte	.LVL9
 7097 09e1 56000000 		.4byte	.LVL15
 7098 09e5 0200     		.2byte	0x2
 7099 09e7 74       		.byte	0x74
 7100 09e8 14       		.sleb128 20
 7101 09e9 6A000000 		.4byte	.LVL17
 7102 09ed 72000000 		.4byte	.LVL18
 7103 09f1 0700     		.2byte	0x7
 7104 09f3 70       		.byte	0x70
 7105 09f4 00       		.sleb128 0
 7106 09f5 0A       		.byte	0xa
 7107 09f6 0010     		.2byte	0x1000
 7108 09f8 21       		.byte	0x21
 7109 09f9 9F       		.byte	0x9f
 7110 09fa 72000000 		.4byte	.LVL18
 7111 09fe 7E000000 		.4byte	.LVL23
 7112 0a02 0100     		.2byte	0x1
 7113 0a04 50       		.byte	0x50
ARM GAS  /tmp/cc9w1cGI.s 			page 161


 7114 0a05 7E000000 		.4byte	.LVL23
 7115 0a09 80000000 		.4byte	.LVL24
 7116 0a0d 0200     		.2byte	0x2
 7117 0a0f 74       		.byte	0x74
 7118 0a10 14       		.sleb128 20
 7119 0a11 80000000 		.4byte	.LVL24
 7120 0a15 82000000 		.4byte	.LVL25
 7121 0a19 0100     		.2byte	0x1
 7122 0a1b 50       		.byte	0x50
 7123 0a1c 82000000 		.4byte	.LVL25
 7124 0a20 96000000 		.4byte	.LVL31
 7125 0a24 0200     		.2byte	0x2
 7126 0a26 74       		.byte	0x74
 7127 0a27 14       		.sleb128 20
 7128 0a28 A8000000 		.4byte	.LVL35
 7129 0a2c C6000000 		.4byte	.LVL42
 7130 0a30 0100     		.2byte	0x1
 7131 0a32 50       		.byte	0x50
 7132 0a33 C6000000 		.4byte	.LVL42
 7133 0a37 D2000000 		.4byte	.LVL48
 7134 0a3b 0200     		.2byte	0x2
 7135 0a3d 71       		.byte	0x71
 7136 0a3e 14       		.sleb128 20
 7137 0a3f 00000000 		.4byte	0
 7138 0a43 00000000 		.4byte	0
 7139              	.LLST1:
 7140 0a47 00000000 		.4byte	.LVL0
 7141 0a4b 52000000 		.4byte	.LVL13
 7142 0a4f 0100     		.2byte	0x1
 7143 0a51 51       		.byte	0x51
 7144 0a52 52000000 		.4byte	.LVL13
 7145 0a56 6A000000 		.4byte	.LVL17
 7146 0a5a 0400     		.2byte	0x4
 7147 0a5c F3       		.byte	0xf3
 7148 0a5d 01       		.uleb128 0x1
 7149 0a5e 51       		.byte	0x51
 7150 0a5f 9F       		.byte	0x9f
 7151 0a60 6A000000 		.4byte	.LVL17
 7152 0a64 7C000000 		.4byte	.LVL22
 7153 0a68 0100     		.2byte	0x1
 7154 0a6a 51       		.byte	0x51
 7155 0a6b 7C000000 		.4byte	.LVL22
 7156 0a6f 80000000 		.4byte	.LVL24
 7157 0a73 0400     		.2byte	0x4
 7158 0a75 F3       		.byte	0xf3
 7159 0a76 01       		.uleb128 0x1
 7160 0a77 51       		.byte	0x51
 7161 0a78 9F       		.byte	0x9f
 7162 0a79 80000000 		.4byte	.LVL24
 7163 0a7d 92000000 		.4byte	.LVL30
 7164 0a81 0100     		.2byte	0x1
 7165 0a83 51       		.byte	0x51
 7166 0a84 92000000 		.4byte	.LVL30
 7167 0a88 A8000000 		.4byte	.LVL35
 7168 0a8c 0400     		.2byte	0x4
 7169 0a8e F3       		.byte	0xf3
 7170 0a8f 01       		.uleb128 0x1
ARM GAS  /tmp/cc9w1cGI.s 			page 162


 7171 0a90 51       		.byte	0x51
 7172 0a91 9F       		.byte	0x9f
 7173 0a92 A8000000 		.4byte	.LVL35
 7174 0a96 AC000000 		.4byte	.LVL36
 7175 0a9a 0100     		.2byte	0x1
 7176 0a9c 51       		.byte	0x51
 7177 0a9d AC000000 		.4byte	.LVL36
 7178 0aa1 E6000000 		.4byte	.LFE199
 7179 0aa5 0400     		.2byte	0x4
 7180 0aa7 F3       		.byte	0xf3
 7181 0aa8 01       		.uleb128 0x1
 7182 0aa9 51       		.byte	0x51
 7183 0aaa 9F       		.byte	0x9f
 7184 0aab 00000000 		.4byte	0
 7185 0aaf 00000000 		.4byte	0
 7186              	.LLST2:
 7187 0ab3 00000000 		.4byte	.LVL0
 7188 0ab7 2E000000 		.4byte	.LVL5
 7189 0abb 0100     		.2byte	0x1
 7190 0abd 52       		.byte	0x52
 7191 0abe 2E000000 		.4byte	.LVL5
 7192 0ac2 6A000000 		.4byte	.LVL17
 7193 0ac6 0400     		.2byte	0x4
 7194 0ac8 F3       		.byte	0xf3
 7195 0ac9 01       		.uleb128 0x1
 7196 0aca 52       		.byte	0x52
 7197 0acb 9F       		.byte	0x9f
 7198 0acc 6A000000 		.4byte	.LVL17
 7199 0ad0 78000000 		.4byte	.LVL20
 7200 0ad4 0100     		.2byte	0x1
 7201 0ad6 52       		.byte	0x52
 7202 0ad7 78000000 		.4byte	.LVL20
 7203 0adb E6000000 		.4byte	.LFE199
 7204 0adf 0400     		.2byte	0x4
 7205 0ae1 F3       		.byte	0xf3
 7206 0ae2 01       		.uleb128 0x1
 7207 0ae3 52       		.byte	0x52
 7208 0ae4 9F       		.byte	0x9f
 7209 0ae5 00000000 		.4byte	0
 7210 0ae9 00000000 		.4byte	0
 7211              	.LLST3:
 7212 0aed 2E000000 		.4byte	.LVL5
 7213 0af1 38000000 		.4byte	.LVL6
 7214 0af5 0100     		.2byte	0x1
 7215 0af7 53       		.byte	0x53
 7216 0af8 3A000000 		.4byte	.LVL7
 7217 0afc 4E000000 		.4byte	.LVL11
 7218 0b00 0100     		.2byte	0x1
 7219 0b02 53       		.byte	0x53
 7220 0b03 78000000 		.4byte	.LVL20
 7221 0b07 7A000000 		.4byte	.LVL21
 7222 0b0b 0100     		.2byte	0x1
 7223 0b0d 53       		.byte	0x53
 7224 0b0e 80000000 		.4byte	.LVL24
 7225 0b12 84000000 		.4byte	.LVL26
 7226 0b16 0100     		.2byte	0x1
 7227 0b18 53       		.byte	0x53
ARM GAS  /tmp/cc9w1cGI.s 			page 163


 7228 0b19 00000000 		.4byte	0
 7229 0b1d 00000000 		.4byte	0
 7230              	.LLST4:
 7231 0b21 48000000 		.4byte	.LVL8
 7232 0b25 68000000 		.4byte	.LVL16
 7233 0b29 0100     		.2byte	0x1
 7234 0b2b 5E       		.byte	0x5e
 7235 0b2c 00000000 		.4byte	0
 7236 0b30 00000000 		.4byte	0
 7237              	.LLST5:
 7238 0b34 4C000000 		.4byte	.LVL10
 7239 0b38 68000000 		.4byte	.LVL16
 7240 0b3c 0100     		.2byte	0x1
 7241 0b3e 57       		.byte	0x57
 7242 0b3f 00000000 		.4byte	0
 7243 0b43 00000000 		.4byte	0
 7244              	.LLST6:
 7245 0b47 50000000 		.4byte	.LVL12
 7246 0b4b 68000000 		.4byte	.LVL16
 7247 0b4f 0100     		.2byte	0x1
 7248 0b51 56       		.byte	0x56
 7249 0b52 00000000 		.4byte	0
 7250 0b56 00000000 		.4byte	0
 7251              	.LLST7:
 7252 0b5a 52000000 		.4byte	.LVL13
 7253 0b5e 68000000 		.4byte	.LVL16
 7254 0b62 0100     		.2byte	0x1
 7255 0b64 51       		.byte	0x51
 7256 0b65 00000000 		.4byte	0
 7257 0b69 00000000 		.4byte	0
 7258              	.LLST8:
 7259 0b6d 54000000 		.4byte	.LVL14
 7260 0b71 68000000 		.4byte	.LVL16
 7261 0b75 0100     		.2byte	0x1
 7262 0b77 52       		.byte	0x52
 7263 0b78 00000000 		.4byte	0
 7264 0b7c 00000000 		.4byte	0
 7265              	.LLST9:
 7266 0b80 82000000 		.4byte	.LVL25
 7267 0b84 9A000000 		.4byte	.LVL32
 7268 0b88 0100     		.2byte	0x1
 7269 0b8a 50       		.byte	0x50
 7270 0b8b 9A000000 		.4byte	.LVL32
 7271 0b8f 9C000000 		.4byte	.LVL33
 7272 0b93 0200     		.2byte	0x2
 7273 0b95 74       		.byte	0x74
 7274 0b96 04       		.sleb128 4
 7275 0b97 00000000 		.4byte	0
 7276 0b9b 00000000 		.4byte	0
 7277              	.LLST10:
 7278 0b9f 86000000 		.4byte	.LVL27
 7279 0ba3 A6000000 		.4byte	.LVL34
 7280 0ba7 0100     		.2byte	0x1
 7281 0ba9 57       		.byte	0x57
 7282 0baa 00000000 		.4byte	0
 7283 0bae 00000000 		.4byte	0
 7284              	.LLST11:
ARM GAS  /tmp/cc9w1cGI.s 			page 164


 7285 0bb2 8C000000 		.4byte	.LVL28
 7286 0bb6 A6000000 		.4byte	.LVL34
 7287 0bba 0100     		.2byte	0x1
 7288 0bbc 56       		.byte	0x56
 7289 0bbd 00000000 		.4byte	0
 7290 0bc1 00000000 		.4byte	0
 7291              	.LLST12:
 7292 0bc5 90000000 		.4byte	.LVL29
 7293 0bc9 A6000000 		.4byte	.LVL34
 7294 0bcd 0100     		.2byte	0x1
 7295 0bcf 55       		.byte	0x55
 7296 0bd0 00000000 		.4byte	0
 7297 0bd4 00000000 		.4byte	0
 7298              	.LLST13:
 7299 0bd8 92000000 		.4byte	.LVL30
 7300 0bdc A6000000 		.4byte	.LVL34
 7301 0be0 0100     		.2byte	0x1
 7302 0be2 51       		.byte	0x51
 7303 0be3 00000000 		.4byte	0
 7304 0be7 00000000 		.4byte	0
 7305              	.LLST14:
 7306 0beb A8000000 		.4byte	.LVL35
 7307 0bef B2000000 		.4byte	.LVL37
 7308 0bf3 0300     		.2byte	0x3
 7309 0bf5 09       		.byte	0x9
 7310 0bf6 FF       		.byte	0xff
 7311 0bf7 9F       		.byte	0x9f
 7312 0bf8 B2000000 		.4byte	.LVL37
 7313 0bfc BC000000 		.4byte	.LVL39
 7314 0c00 0300     		.2byte	0x3
 7315 0c02 72       		.byte	0x72
 7316 0c03 7F       		.sleb128 -1
 7317 0c04 9F       		.byte	0x9f
 7318 0c05 BC000000 		.4byte	.LVL39
 7319 0c09 BE000000 		.4byte	.LVL40
 7320 0c0d 0100     		.2byte	0x1
 7321 0c0f 52       		.byte	0x52
 7322 0c10 00000000 		.4byte	0
 7323 0c14 00000000 		.4byte	0
 7324              	.LLST15:
 7325 0c18 B2000000 		.4byte	.LVL37
 7326 0c1c B6000000 		.4byte	.LVL38
 7327 0c20 0100     		.2byte	0x1
 7328 0c22 53       		.byte	0x53
 7329 0c23 BE000000 		.4byte	.LVL40
 7330 0c27 CA000000 		.4byte	.LVL44
 7331 0c2b 0100     		.2byte	0x1
 7332 0c2d 53       		.byte	0x53
 7333 0c2e 00000000 		.4byte	0
 7334 0c32 00000000 		.4byte	0
 7335              	.LLST16:
 7336 0c36 C4000000 		.4byte	.LVL41
 7337 0c3a E4000000 		.4byte	.LVL49
 7338 0c3e 0100     		.2byte	0x1
 7339 0c40 5E       		.byte	0x5e
 7340 0c41 00000000 		.4byte	0
 7341 0c45 00000000 		.4byte	0
ARM GAS  /tmp/cc9w1cGI.s 			page 165


 7342              	.LLST17:
 7343 0c49 C8000000 		.4byte	.LVL43
 7344 0c4d E4000000 		.4byte	.LVL49
 7345 0c51 0100     		.2byte	0x1
 7346 0c53 57       		.byte	0x57
 7347 0c54 00000000 		.4byte	0
 7348 0c58 00000000 		.4byte	0
 7349              	.LLST18:
 7350 0c5c CC000000 		.4byte	.LVL45
 7351 0c60 E4000000 		.4byte	.LVL49
 7352 0c64 0100     		.2byte	0x1
 7353 0c66 56       		.byte	0x56
 7354 0c67 00000000 		.4byte	0
 7355 0c6b 00000000 		.4byte	0
 7356              	.LLST19:
 7357 0c6f CE000000 		.4byte	.LVL46
 7358 0c73 E4000000 		.4byte	.LVL49
 7359 0c77 0100     		.2byte	0x1
 7360 0c79 55       		.byte	0x55
 7361 0c7a 00000000 		.4byte	0
 7362 0c7e 00000000 		.4byte	0
 7363              	.LLST20:
 7364 0c82 D0000000 		.4byte	.LVL47
 7365 0c86 E4000000 		.4byte	.LVL49
 7366 0c8a 0100     		.2byte	0x1
 7367 0c8c 54       		.byte	0x54
 7368 0c8d 00000000 		.4byte	0
 7369 0c91 00000000 		.4byte	0
 7370              	.LLST24:
 7371 0c95 00000000 		.4byte	.LVL54
 7372 0c99 08000000 		.4byte	.LVL56
 7373 0c9d 0100     		.2byte	0x1
 7374 0c9f 50       		.byte	0x50
 7375 0ca0 08000000 		.4byte	.LVL56
 7376 0ca4 10000000 		.4byte	.LFE197
 7377 0ca8 0500     		.2byte	0x5
 7378 0caa 03       		.byte	0x3
 7379 0cab 00000000 		.4byte	hsmciIdleFunc
 7380 0caf 00000000 		.4byte	0
 7381 0cb3 00000000 		.4byte	0
 7382              	.LLST21:
 7383 0cb7 08000000 		.4byte	.LVL50
 7384 0cbb 0C000000 		.4byte	.LVL52
 7385 0cbf 0600     		.2byte	0x6
 7386 0cc1 70       		.byte	0x70
 7387 0cc2 00       		.sleb128 0
 7388 0cc3 08       		.byte	0x8
 7389 0cc4 FF       		.byte	0xff
 7390 0cc5 1A       		.byte	0x1a
 7391 0cc6 9F       		.byte	0x9f
 7392 0cc7 00000000 		.4byte	0
 7393 0ccb 00000000 		.4byte	0
 7394              	.LLST22:
 7395 0ccf 0A000000 		.4byte	.LVL51
 7396 0cd3 10000000 		.4byte	.LVL53
 7397 0cd7 0C00     		.2byte	0xc
 7398 0cd9 72       		.byte	0x72
ARM GAS  /tmp/cc9w1cGI.s 			page 166


 7399 0cda 00       		.sleb128 0
 7400 0cdb 40       		.byte	0x40
 7401 0cdc 3C       		.byte	0x3c
 7402 0cdd 24       		.byte	0x24
 7403 0cde 1A       		.byte	0x1a
 7404 0cdf 30       		.byte	0x30
 7405 0ce0 2E       		.byte	0x2e
 7406 0ce1 08       		.byte	0x8
 7407 0ce2 FF       		.byte	0xff
 7408 0ce3 1A       		.byte	0x1a
 7409 0ce4 9F       		.byte	0x9f
 7410 0ce5 00000000 		.4byte	0
 7411 0ce9 00000000 		.4byte	0
 7412              	.LLST23:
 7413 0ced 0A000000 		.4byte	.LVL51
 7414 0cf1 0C000000 		.4byte	.LVL52
 7415 0cf5 2200     		.2byte	0x22
 7416 0cf7 0C       		.byte	0xc
 7417 0cf8 00A3E111 		.4byte	0x11e1a300
 7418 0cfc F7       		.byte	0xf7
 7419 0cfd 25       		.uleb128 0x25
 7420 0cfe 70       		.byte	0x70
 7421 0cff 00       		.sleb128 0
 7422 0d00 08       		.byte	0x8
 7423 0d01 FF       		.byte	0xff
 7424 0d02 1A       		.byte	0x1a
 7425 0d03 31       		.byte	0x31
 7426 0d04 24       		.byte	0x24
 7427 0d05 72       		.byte	0x72
 7428 0d06 00       		.sleb128 0
 7429 0d07 40       		.byte	0x40
 7430 0d08 3C       		.byte	0x3c
 7431 0d09 24       		.byte	0x24
 7432 0d0a 1A       		.byte	0x1a
 7433 0d0b 30       		.byte	0x30
 7434 0d0c 2E       		.byte	0x2e
 7435 0d0d 08       		.byte	0x8
 7436 0d0e FF       		.byte	0xff
 7437 0d0f 1A       		.byte	0x1a
 7438 0d10 22       		.byte	0x22
 7439 0d11 23       		.byte	0x23
 7440 0d12 02       		.uleb128 0x2
 7441 0d13 F7       		.byte	0xf7
 7442 0d14 25       		.uleb128 0x25
 7443 0d15 1B       		.byte	0x1b
 7444 0d16 F7       		.byte	0xf7
 7445 0d17 00       		.uleb128 0
 7446 0d18 9F       		.byte	0x9f
 7447 0d19 00000000 		.4byte	0
 7448 0d1d 00000000 		.4byte	0
 7449              		.section	.debug_aranges,"",%progbits
 7450 0000 AC000000 		.4byte	0xac
 7451 0004 0200     		.2byte	0x2
 7452 0006 00000000 		.4byte	.Ldebug_info0
 7453 000a 04       		.byte	0x4
 7454 000b 00       		.byte	0
 7455 000c 0000     		.2byte	0
ARM GAS  /tmp/cc9w1cGI.s 			page 167


 7456 000e 0000     		.2byte	0
 7457 0010 00000000 		.4byte	.LFB199
 7458 0014 E6000000 		.4byte	.LFE199-.LFB199
 7459 0018 00000000 		.4byte	.LFB196
 7460 001c 24000000 		.4byte	.LFE196-.LFB196
 7461 0020 00000000 		.4byte	.LFB197
 7462 0024 10000000 		.4byte	.LFE197-.LFB197
 7463 0028 00000000 		.4byte	.LFB200
 7464 002c 28000000 		.4byte	.LFE200-.LFB200
 7465 0030 00000000 		.4byte	.LFB201
 7466 0034 0A000000 		.4byte	.LFE201-.LFB201
 7467 0038 00000000 		.4byte	.LFB202
 7468 003c 04000000 		.4byte	.LFE202-.LFB202
 7469 0040 00000000 		.4byte	.LFB203
 7470 0044 DC000000 		.4byte	.LFE203-.LFB203
 7471 0048 00000000 		.4byte	.LFB204
 7472 004c 02000000 		.4byte	.LFE204-.LFB204
 7473 0050 00000000 		.4byte	.LFB205
 7474 0054 26000000 		.4byte	.LFE205-.LFB205
 7475 0058 00000000 		.4byte	.LFB206
 7476 005c 20000000 		.4byte	.LFE206-.LFB206
 7477 0060 00000000 		.4byte	.LFB207
 7478 0064 08000000 		.4byte	.LFE207-.LFB207
 7479 0068 00000000 		.4byte	.LFB208
 7480 006c 2C000000 		.4byte	.LFE208-.LFB208
 7481 0070 00000000 		.4byte	.LFB209
 7482 0074 AC000000 		.4byte	.LFE209-.LFB209
 7483 0078 00000000 		.4byte	.LFB210
 7484 007c 0C000000 		.4byte	.LFE210-.LFB210
 7485 0080 00000000 		.4byte	.LFB211
 7486 0084 98000000 		.4byte	.LFE211-.LFB211
 7487 0088 00000000 		.4byte	.LFB212
 7488 008c 94000000 		.4byte	.LFE212-.LFB212
 7489 0090 00000000 		.4byte	.LFB213
 7490 0094 88000000 		.4byte	.LFE213-.LFB213
 7491 0098 00000000 		.4byte	.LFB215
 7492 009c 88000000 		.4byte	.LFE215-.LFB215
 7493 00a0 00000000 		.4byte	.LFB216
 7494 00a4 A8000000 		.4byte	.LFE216-.LFB216
 7495 00a8 00000000 		.4byte	0
 7496 00ac 00000000 		.4byte	0
 7497              		.section	.debug_ranges,"",%progbits
 7498              	.Ldebug_ranges0:
 7499 0000 44000000 		.4byte	.LBB56
 7500 0004 56000000 		.4byte	.LBE56
 7501 0008 58000000 		.4byte	.LBB59
 7502 000c 68000000 		.4byte	.LBE59
 7503 0010 00000000 		.4byte	0
 7504 0014 00000000 		.4byte	0
 7505 0018 80000000 		.4byte	.LBB60
 7506 001c 98000000 		.4byte	.LBE60
 7507 0020 9A000000 		.4byte	.LBB63
 7508 0024 A6000000 		.4byte	.LBE63
 7509 0028 00000000 		.4byte	0
 7510 002c 00000000 		.4byte	0
 7511 0030 A8000000 		.4byte	.LBB64
 7512 0034 D2000000 		.4byte	.LBE64
ARM GAS  /tmp/cc9w1cGI.s 			page 168


 7513 0038 D4000000 		.4byte	.LBB71
 7514 003c E6000000 		.4byte	.LBE71
 7515 0040 00000000 		.4byte	0
 7516 0044 00000000 		.4byte	0
 7517 0048 C0000000 		.4byte	.LBB66
 7518 004c D2000000 		.4byte	.LBE66
 7519 0050 D4000000 		.4byte	.LBB69
 7520 0054 E6000000 		.4byte	.LBE69
 7521 0058 00000000 		.4byte	0
 7522 005c 00000000 		.4byte	0
 7523 0060 10000000 		.4byte	.LBB74
 7524 0064 22000000 		.4byte	.LBE74
 7525 0068 24000000 		.4byte	.LBB82
 7526 006c 48000000 		.4byte	.LBE82
 7527 0070 4A000000 		.4byte	.LBB83
 7528 0074 50000000 		.4byte	.LBE83
 7529 0078 6E000000 		.4byte	.LBB84
 7530 007c 7A000000 		.4byte	.LBE84
 7531 0080 7C000000 		.4byte	.LBB85
 7532 0084 94000000 		.4byte	.LBE85
 7533 0088 A6000000 		.4byte	.LBB86
 7534 008c AE000000 		.4byte	.LBE86
 7535 0090 B0000000 		.4byte	.LBB87
 7536 0094 B8000000 		.4byte	.LBE87
 7537 0098 00000000 		.4byte	0
 7538 009c 00000000 		.4byte	0
 7539 00a0 14000000 		.4byte	.LBB89
 7540 00a4 2C000000 		.4byte	.LBE89
 7541 00a8 2E000000 		.4byte	.LBB92
 7542 00ac 3A000000 		.4byte	.LBE92
 7543 00b0 00000000 		.4byte	0
 7544 00b4 00000000 		.4byte	0
 7545 00b8 14000000 		.4byte	.LBB93
 7546 00bc 2C000000 		.4byte	.LBE93
 7547 00c0 2E000000 		.4byte	.LBB96
 7548 00c4 3A000000 		.4byte	.LBE96
 7549 00c8 00000000 		.4byte	0
 7550 00cc 00000000 		.4byte	0
 7551 00d0 14000000 		.4byte	.LBB97
 7552 00d4 18000000 		.4byte	.LBE97
 7553 00d8 1A000000 		.4byte	.LBB100
 7554 00dc 1C000000 		.4byte	.LBE100
 7555 00e0 00000000 		.4byte	0
 7556 00e4 00000000 		.4byte	0
 7557 00e8 4A000000 		.4byte	.LBB101
 7558 00ec 4C000000 		.4byte	.LBE101
 7559 00f0 4E000000 		.4byte	.LBB104
 7560 00f4 50000000 		.4byte	.LBE104
 7561 00f8 00000000 		.4byte	0
 7562 00fc 00000000 		.4byte	0
 7563 0100 14000000 		.4byte	.LBB105
 7564 0104 18000000 		.4byte	.LBE105
 7565 0108 1A000000 		.4byte	.LBB108
 7566 010c 1C000000 		.4byte	.LBE108
 7567 0110 00000000 		.4byte	0
 7568 0114 00000000 		.4byte	0
 7569 0118 4A000000 		.4byte	.LBB109
ARM GAS  /tmp/cc9w1cGI.s 			page 169


 7570 011c 4C000000 		.4byte	.LBE109
 7571 0120 4E000000 		.4byte	.LBB112
 7572 0124 50000000 		.4byte	.LBE112
 7573 0128 00000000 		.4byte	0
 7574 012c 00000000 		.4byte	0
 7575 0130 12000000 		.4byte	.LBB113
 7576 0134 24000000 		.4byte	.LBE113
 7577 0138 28000000 		.4byte	.LBB130
 7578 013c 88000000 		.4byte	.LBE130
 7579 0140 00000000 		.4byte	0
 7580 0144 00000000 		.4byte	0
 7581 0148 52000000 		.4byte	.LBB116
 7582 014c 64000000 		.4byte	.LBE116
 7583 0150 66000000 		.4byte	.LBB125
 7584 0154 72000000 		.4byte	.LBE125
 7585 0158 74000000 		.4byte	.LBB126
 7586 015c 76000000 		.4byte	.LBE126
 7587 0160 78000000 		.4byte	.LBB128
 7588 0164 80000000 		.4byte	.LBE128
 7589 0168 00000000 		.4byte	0
 7590 016c 00000000 		.4byte	0
 7591 0170 64000000 		.4byte	.LBB121
 7592 0174 66000000 		.4byte	.LBE121
 7593 0178 76000000 		.4byte	.LBB127
 7594 017c 78000000 		.4byte	.LBE127
 7595 0180 80000000 		.4byte	.LBB129
 7596 0184 82000000 		.4byte	.LBE129
 7597 0188 00000000 		.4byte	0
 7598 018c 00000000 		.4byte	0
 7599 0190 00000000 		.4byte	.LFB199
 7600 0194 E6000000 		.4byte	.LFE199
 7601 0198 00000000 		.4byte	.LFB196
 7602 019c 24000000 		.4byte	.LFE196
 7603 01a0 00000000 		.4byte	.LFB197
 7604 01a4 10000000 		.4byte	.LFE197
 7605 01a8 00000000 		.4byte	.LFB200
 7606 01ac 28000000 		.4byte	.LFE200
 7607 01b0 00000000 		.4byte	.LFB201
 7608 01b4 0A000000 		.4byte	.LFE201
 7609 01b8 00000000 		.4byte	.LFB202
 7610 01bc 04000000 		.4byte	.LFE202
 7611 01c0 00000000 		.4byte	.LFB203
 7612 01c4 DC000000 		.4byte	.LFE203
 7613 01c8 00000000 		.4byte	.LFB204
 7614 01cc 02000000 		.4byte	.LFE204
 7615 01d0 00000000 		.4byte	.LFB205
 7616 01d4 26000000 		.4byte	.LFE205
 7617 01d8 00000000 		.4byte	.LFB206
 7618 01dc 20000000 		.4byte	.LFE206
 7619 01e0 00000000 		.4byte	.LFB207
 7620 01e4 08000000 		.4byte	.LFE207
 7621 01e8 00000000 		.4byte	.LFB208
 7622 01ec 2C000000 		.4byte	.LFE208
 7623 01f0 00000000 		.4byte	.LFB209
 7624 01f4 AC000000 		.4byte	.LFE209
 7625 01f8 00000000 		.4byte	.LFB210
 7626 01fc 0C000000 		.4byte	.LFE210
ARM GAS  /tmp/cc9w1cGI.s 			page 170


 7627 0200 00000000 		.4byte	.LFB211
 7628 0204 98000000 		.4byte	.LFE211
 7629 0208 00000000 		.4byte	.LFB212
 7630 020c 94000000 		.4byte	.LFE212
 7631 0210 00000000 		.4byte	.LFB213
 7632 0214 88000000 		.4byte	.LFE213
 7633 0218 00000000 		.4byte	.LFB215
 7634 021c 88000000 		.4byte	.LFE215
 7635 0220 00000000 		.4byte	.LFB216
 7636 0224 A8000000 		.4byte	.LFE216
 7637 0228 00000000 		.4byte	0
 7638 022c 00000000 		.4byte	0
 7639              		.section	.debug_line,"",%progbits
 7640              	.Ldebug_line0:
 7641 0000 50080000 		.section	.debug_str,"MS",%progbits,1
 7641      0200B203 
 7641      00000201 
 7641      FB0E0D00 
 7641      01010101 
 7642              	.LASF87:
 7643 0000 5F666C6F 		.ascii	"_flock_t\000"
 7643      636B5F74 
 7643      00
 7644              	.LASF232:
 7645 0009 72657370 		.ascii	"response\000"
 7645      6F6E7365 
 7645      00
 7646              	.LASF208:
 7647 0012 6D62725F 		.ascii	"mbr_sus\000"
 7647      73757300 
 7648              	.LASF19:
 7649 001a 53797374 		.ascii	"SystemCoreClock\000"
 7649      656D436F 
 7649      7265436C 
 7649      6F636B00 
 7650              	.LASF36:
 7651 002a 48534D43 		.ascii	"HSMCI_DMA\000"
 7651      495F444D 
 7651      4100
 7652              	.LASF104:
 7653 0034 5F6F6E5F 		.ascii	"_on_exit_args\000"
 7653      65786974 
 7653      5F617267 
 7653      7300
 7654              	.LASF43:
 7655 0042 48736D63 		.ascii	"Hsmci\000"
 7655      6900
 7656              	.LASF270:
 7657 0048 756C5F69 		.ascii	"ul_id\000"
 7657      6400
 7658              	.LASF172:
 7659 004e 5F776374 		.ascii	"_wctomb_state\000"
 7659      6F6D625F 
 7659      73746174 
 7659      6500
 7660              	.LASF166:
 7661 005c 5F6C6F63 		.ascii	"_localtime_buf\000"
ARM GAS  /tmp/cc9w1cGI.s 			page 171


 7661      616C7469 
 7661      6D655F62 
 7661      756600
 7662              	.LASF245:
 7663 006b 68736D63 		.ascii	"hsmci_is_high_speed_capable\000"
 7663      695F6973 
 7663      5F686967 
 7663      685F7370 
 7663      6565645F 
 7664              	.LASF169:
 7665 0087 5F723438 		.ascii	"_r48\000"
 7665      00
 7666              	.LASF40:
 7667 008c 48534D43 		.ascii	"HSMCI_WPSR\000"
 7667      495F5750 
 7667      535200
 7668              	.LASF52:
 7669 0097 58444D41 		.ascii	"XDMAC_CUBC\000"
 7669      435F4355 
 7669      424300
 7670              	.LASF209:
 7671 00a2 6D62725F 		.ascii	"mbr_dus\000"
 7671      64757300 
 7672              	.LASF174:
 7673 00aa 5F736967 		.ascii	"_signal_buf\000"
 7673      6E616C5F 
 7673      62756600 
 7674              	.LASF246:
 7675 00b6 68736D63 		.ascii	"hsmci_get_bus_width\000"
 7675      695F6765 
 7675      745F6275 
 7675      735F7769 
 7675      64746800 
 7676              	.LASF0:
 7677 00ca 756E7369 		.ascii	"unsigned int\000"
 7677      676E6564 
 7677      20696E74 
 7677      00
 7678              	.LASF217:
 7679 00d7 68736D63 		.ascii	"hsmci_start_write_blocks\000"
 7679      695F7374 
 7679      6172745F 
 7679      77726974 
 7679      655F626C 
 7680              	.LASF258:
 7681 00f0 73646372 		.ascii	"sdcr\000"
 7681      00
 7682              	.LASF118:
 7683 00f5 5F6C6266 		.ascii	"_lbfsize\000"
 7683      73697A65 
 7683      00
 7684              	.LASF116:
 7685 00fe 5F666C61 		.ascii	"_flags\000"
 7685      677300
 7686              	.LASF7:
 7687 0105 5F5F696E 		.ascii	"__int32_t\000"
 7687      7433325F 
ARM GAS  /tmp/cc9w1cGI.s 			page 172


 7687      7400
 7688              	.LASF133:
 7689 010f 5F657272 		.ascii	"_errno\000"
 7689      6E6F00
 7690              	.LASF61:
 7691 0116 58444D41 		.ascii	"XDMAC_GWAC\000"
 7691      435F4757 
 7691      414300
 7692              	.LASF3:
 7693 0121 73686F72 		.ascii	"short int\000"
 7693      7420696E 
 7693      7400
 7694              	.LASF55:
 7695 012b 58444D41 		.ascii	"XDMAC_CDS_MSP\000"
 7695      435F4344 
 7695      535F4D53 
 7695      5000
 7696              	.LASF130:
 7697 0139 5F6D6273 		.ascii	"_mbstate\000"
 7697      74617465 
 7697      00
 7698              	.LASF263:
 7699 0142 6368616E 		.ascii	"channel_num\000"
 7699      6E656C5F 
 7699      6E756D00 
 7700              	.LASF120:
 7701 014e 5F726561 		.ascii	"_read\000"
 7701      6400
 7702              	.LASF88:
 7703 0154 5F5F554C 		.ascii	"__ULong\000"
 7703      6F6E6700 
 7704              	.LASF176:
 7705 015c 5F6D6272 		.ascii	"_mbrlen_state\000"
 7705      6C656E5F 
 7705      73746174 
 7705      6500
 7706              	.LASF54:
 7707 016a 58444D41 		.ascii	"XDMAC_CC\000"
 7707      435F4343 
 7707      00
 7708              	.LASF21:
 7709 0173 48534D43 		.ascii	"HSMCI_MR\000"
 7709      495F4D52 
 7709      00
 7710              	.LASF84:
 7711 017c 5F5F636F 		.ascii	"__count\000"
 7711      756E7400 
 7712              	.LASF135:
 7713 0184 5F737464 		.ascii	"_stdout\000"
 7713      6F757400 
 7714              	.LASF45:
 7715 018c 58444D41 		.ascii	"XDMAC_CID\000"
 7715      435F4349 
 7715      4400
 7716              	.LASF44:
 7717 0196 58444D41 		.ascii	"XDMAC_CIE\000"
 7717      435F4349 
ARM GAS  /tmp/cc9w1cGI.s 			page 173


 7717      4500
 7718              	.LASF80:
 7719 01a0 5F66706F 		.ascii	"_fpos_t\000"
 7719      735F7400 
 7720              	.LASF276:
 7721 01a8 706C6C5F 		.ascii	"pll_source\000"
 7721      736F7572 
 7721      636500
 7722              	.LASF111:
 7723 01b3 5F666E73 		.ascii	"_fns\000"
 7723      00
 7724              	.LASF46:
 7725 01b8 58444D41 		.ascii	"XDMAC_CIM\000"
 7725      435F4349 
 7725      4D00
 7726              	.LASF254:
 7727 01c2 73706565 		.ascii	"speed\000"
 7727      6400
 7728              	.LASF119:
 7729 01c8 5F636F6F 		.ascii	"_cookie\000"
 7729      6B696500 
 7730              	.LASF28:
 7731 01d0 48534D43 		.ascii	"HSMCI_RSPR\000"
 7731      495F5253 
 7731      505200
 7732              	.LASF261:
 7733 01db 78646D61 		.ascii	"xdmac_channel_get_interrupt_status\000"
 7733      635F6368 
 7733      616E6E65 
 7733      6C5F6765 
 7733      745F696E 
 7734              	.LASF188:
 7735 01fe 675F696E 		.ascii	"g_interrupt_enabled\000"
 7735      74657272 
 7735      7570745F 
 7735      656E6162 
 7735      6C656400 
 7736              	.LASF93:
 7737 0212 5F426967 		.ascii	"_Bigint\000"
 7737      696E7400 
 7738              	.LASF227:
 7739 021a 68736D63 		.ascii	"hsmci_adtc_stop\000"
 7739      695F6164 
 7739      74635F73 
 7739      746F7000 
 7740              	.LASF101:
 7741 022a 5F5F746D 		.ascii	"__tm_wday\000"
 7741      5F776461 
 7741      7900
 7742              	.LASF195:
 7743 0234 504C4C5F 		.ascii	"PLL_SRC_MAINCK_8M_RC\000"
 7743      5352435F 
 7743      4D41494E 
 7743      434B5F38 
 7743      4D5F5243 
 7744              	.LASF143:
 7745 0249 5F726573 		.ascii	"_result\000"
ARM GAS  /tmp/cc9w1cGI.s 			page 174


 7745      756C7400 
 7746              	.LASF251:
 7747 0251 636C6B64 		.ascii	"clkdiv\000"
 7747      697600
 7748              	.LASF16:
 7749 0258 75696E74 		.ascii	"uint32_t\000"
 7749      33325F74 
 7749      00
 7750              	.LASF97:
 7751 0261 5F5F746D 		.ascii	"__tm_hour\000"
 7751      5F686F75 
 7751      7200
 7752              	.LASF259:
 7753 026b 6373746F 		.ascii	"cstor\000"
 7753      7200
 7754              	.LASF198:
 7755 0271 504C4C5F 		.ascii	"PLL_SRC_MAINCK_BYPASS\000"
 7755      5352435F 
 7755      4D41494E 
 7755      434B5F42 
 7755      59504153 
 7756              	.LASF252:
 7757 0287 636C6B6F 		.ascii	"clkodd\000"
 7757      646400
 7758              	.LASF192:
 7759 028e 666C6F61 		.ascii	"float\000"
 7759      7400
 7760              	.LASF256:
 7761 0294 68736D63 		.ascii	"hsmci_reset\000"
 7761      695F7265 
 7761      73657400 
 7762              	.LASF76:
 7763 02a0 58444D41 		.ascii	"XDMAC_CHID\000"
 7763      435F4348 
 7763      494400
 7764              	.LASF185:
 7765 02ab 5F696D70 		.ascii	"_impure_ptr\000"
 7765      7572655F 
 7765      70747200 
 7766              	.LASF182:
 7767 02b7 5F6E6578 		.ascii	"_nextf\000"
 7767      746600
 7768              	.LASF264:
 7769 02be 78646D61 		.ascii	"xdmac_channel_disable\000"
 7769      635F6368 
 7769      616E6E65 
 7769      6C5F6469 
 7769      7361626C 
 7770              	.LASF34:
 7771 02d4 48534D43 		.ascii	"HSMCI_IDR\000"
 7771      495F4944 
 7771      5200
 7772              	.LASF178:
 7773 02de 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 7773      72746F77 
 7773      63735F73 
 7773      74617465 
ARM GAS  /tmp/cc9w1cGI.s 			page 175


 7773      00
 7774              	.LASF241:
 7775 02ef 68696768 		.ascii	"high_speed\000"
 7775      5F737065 
 7775      656400
 7776              	.LASF12:
 7777 02fa 6C6F6E67 		.ascii	"long long unsigned int\000"
 7777      206C6F6E 
 7777      6720756E 
 7777      7369676E 
 7777      65642069 
 7778              	.LASF165:
 7779 0311 5F617363 		.ascii	"_asctime_buf\000"
 7779      74696D65 
 7779      5F627566 
 7779      00
 7780              	.LASF159:
 7781 031e 5F72616E 		.ascii	"_rand48\000"
 7781      64343800 
 7782              	.LASF115:
 7783 0326 5F5F7346 		.ascii	"__sFILE\000"
 7783      494C4500 
 7784              	.LASF92:
 7785 032e 5F776473 		.ascii	"_wds\000"
 7785      00
 7786              	.LASF267:
 7787 0333 73797363 		.ascii	"sysclk_get_cpu_hz\000"
 7787      6C6B5F67 
 7787      65745F63 
 7787      70755F68 
 7787      7A00
 7788              	.LASF216:
 7789 0345 68736D63 		.ascii	"hsmci_wait_end_of_write_blocks\000"
 7789      695F7761 
 7789      69745F65 
 7789      6E645F6F 
 7789      665F7772 
 7790              	.LASF199:
 7791 0364 504C4C5F 		.ascii	"PLL_NR_SOURCES\000"
 7791      4E525F53 
 7791      4F555243 
 7791      455300
 7792              	.LASF5:
 7793 0373 5F5F7569 		.ascii	"__uint16_t\000"
 7793      6E743136 
 7793      5F7400
 7794              	.LASF155:
 7795 037e 5F5F4649 		.ascii	"__FILE\000"
 7795      4C4500
 7796              	.LASF181:
 7797 0385 5F685F65 		.ascii	"_h_errno\000"
 7797      72726E6F 
 7797      00
 7798              	.LASF127:
 7799 038e 5F6F6666 		.ascii	"_offset\000"
 7799      73657400 
 7800              	.LASF124:
ARM GAS  /tmp/cc9w1cGI.s 			page 176


 7801 0396 5F756275 		.ascii	"_ubuf\000"
 7801      6600
 7802              	.LASF238:
 7803 039c 68736D63 		.ascii	"hsmci_select_device\000"
 7803      695F7365 
 7803      6C656374 
 7803      5F646576 
 7803      69636500 
 7804              	.LASF225:
 7805 03b0 76616C75 		.ascii	"value\000"
 7805      6500
 7806              	.LASF33:
 7807 03b6 48534D43 		.ascii	"HSMCI_IER\000"
 7807      495F4945 
 7807      5200
 7808              	.LASF138:
 7809 03c0 5F656D65 		.ascii	"_emergency\000"
 7809      7267656E 
 7809      637900
 7810              	.LASF191:
 7811 03cb 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 7811      6972715F 
 7811      70726576 
 7811      5F696E74 
 7811      65727275 
 7812              	.LASF37:
 7813 03e8 48534D43 		.ascii	"HSMCI_CFG\000"
 7813      495F4346 
 7813      4700
 7814              	.LASF206:
 7815 03f2 6D62725F 		.ascii	"mbr_bc\000"
 7815      626300
 7816              	.LASF35:
 7817 03f9 48534D43 		.ascii	"HSMCI_IMR\000"
 7817      495F494D 
 7817      5200
 7818              	.LASF95:
 7819 0403 5F5F746D 		.ascii	"__tm_sec\000"
 7819      5F736563 
 7819      00
 7820              	.LASF66:
 7821 040c 58444D41 		.ascii	"XDMAC_GE\000"
 7821      435F4745 
 7821      00
 7822              	.LASF187:
 7823 0415 7375626F 		.ascii	"suboptarg\000"
 7823      70746172 
 7823      6700
 7824              	.LASF102:
 7825 041f 5F5F746D 		.ascii	"__tm_yday\000"
 7825      5F796461 
 7825      7900
 7826              	.LASF85:
 7827 0429 5F5F7661 		.ascii	"__value\000"
 7827      6C756500 
 7828              	.LASF137:
 7829 0431 5F696E63 		.ascii	"_inc\000"
ARM GAS  /tmp/cc9w1cGI.s 			page 177


 7829      00
 7830              	.LASF189:
 7831 0436 5F426F6F 		.ascii	"_Bool\000"
 7831      6C00
 7832              	.LASF69:
 7833 043c 58444D41 		.ascii	"XDMAC_GRS\000"
 7833      435F4752 
 7833      5300
 7834              	.LASF25:
 7835 0446 48534D43 		.ascii	"HSMCI_CMDR\000"
 7835      495F434D 
 7835      445200
 7836              	.LASF89:
 7837 0451 5F6E6578 		.ascii	"_next\000"
 7837      7400
 7838              	.LASF214:
 7839 0457 68736D63 		.ascii	"hsmciIdleFunc\000"
 7839      6949646C 
 7839      6546756E 
 7839      6300
 7840              	.LASF200:
 7841 0465 73646D6D 		.ascii	"sdmmc_cmd_def_t\000"
 7841      635F636D 
 7841      645F6465 
 7841      665F7400 
 7842              	.LASF24:
 7843 0475 48534D43 		.ascii	"HSMCI_ARGR\000"
 7843      495F4152 
 7843      475200
 7844              	.LASF268:
 7845 0480 73797363 		.ascii	"sysclk_get_main_hz\000"
 7845      6C6B5F67 
 7845      65745F6D 
 7845      61696E5F 
 7845      687A00
 7846              	.LASF221:
 7847 0493 646D615F 		.ascii	"dma_sr\000"
 7847      737200
 7848              	.LASF239:
 7849 049a 636C6F63 		.ascii	"clock\000"
 7849      6B00
 7850              	.LASF145:
 7851 04a0 5F703573 		.ascii	"_p5s\000"
 7851      00
 7852              	.LASF218:
 7853 04a5 6E625F62 		.ascii	"nb_block\000"
 7853      6C6F636B 
 7853      00
 7854              	.LASF247:
 7855 04ae 68736D63 		.ascii	"hsmci_init\000"
 7855      695F696E 
 7855      697400
 7856              	.LASF233:
 7857 04b9 72657370 		.ascii	"response_32\000"
 7857      6F6E7365 
 7857      5F333200 
 7858              	.LASF215:
ARM GAS  /tmp/cc9w1cGI.s 			page 178


 7859 04c5 63686563 		.ascii	"checkDmaEnded\000"
 7859      6B446D61 
 7859      456E6465 
 7859      6400
 7860              	.LASF180:
 7861 04d3 5F776373 		.ascii	"_wcsrtombs_state\000"
 7861      72746F6D 
 7861      62735F73 
 7861      74617465 
 7861      00
 7862              	.LASF170:
 7863 04e4 5F6D626C 		.ascii	"_mblen_state\000"
 7863      656E5F73 
 7863      74617465 
 7863      00
 7864              	.LASF262:
 7865 04f1 78646D61 		.ascii	"xdmac\000"
 7865      6300
 7866              	.LASF154:
 7867 04f7 63686172 		.ascii	"char\000"
 7867      00
 7868              	.LASF98:
 7869 04fc 5F5F746D 		.ascii	"__tm_mday\000"
 7869      5F6D6461 
 7869      7900
 7870              	.LASF151:
 7871 0506 5F736967 		.ascii	"_sig_func\000"
 7871      5F66756E 
 7871      6300
 7872              	.LASF177:
 7873 0510 5F6D6272 		.ascii	"_mbrtowc_state\000"
 7873      746F7763 
 7873      5F737461 
 7873      746500
 7874              	.LASF150:
 7875 051f 5F617465 		.ascii	"_atexit0\000"
 7875      78697430 
 7875      00
 7876              	.LASF50:
 7877 0528 58444D41 		.ascii	"XDMAC_CNDA\000"
 7877      435F434E 
 7877      444100
 7878              	.LASF51:
 7879 0533 58444D41 		.ascii	"XDMAC_CNDC\000"
 7879      435F434E 
 7879      444300
 7880              	.LASF68:
 7881 053e 58444D41 		.ascii	"XDMAC_GS\000"
 7881      435F4753 
 7881      00
 7882              	.LASF22:
 7883 0547 48534D43 		.ascii	"HSMCI_DTOR\000"
 7883      495F4454 
 7883      4F5200
 7884              	.LASF243:
 7885 0552 68736D63 		.ascii	"hsmci_bus_width\000"
 7885      695F6275 
ARM GAS  /tmp/cc9w1cGI.s 			page 179


 7885      735F7769 
 7885      64746800 
 7886              	.LASF203:
 7887 0562 6D62725F 		.ascii	"mbr_sa\000"
 7887      736100
 7888              	.LASF144:
 7889 0569 5F726573 		.ascii	"_result_k\000"
 7889      756C745F 
 7889      6B00
 7890              	.LASF236:
 7891 0573 68736D63 		.ascii	"hsmci_deselect_device\000"
 7891      695F6465 
 7891      73656C65 
 7891      63745F64 
 7891      65766963 
 7892              	.LASF82:
 7893 0589 5F5F7763 		.ascii	"__wch\000"
 7893      6800
 7894              	.LASF58:
 7895 058f 58646D61 		.ascii	"XdmacChid\000"
 7895      63436869 
 7895      6400
 7896              	.LASF13:
 7897 0599 75696E74 		.ascii	"uint8_t\000"
 7897      385F7400 
 7898              	.LASF204:
 7899 05a1 6D62725F 		.ascii	"mbr_da\000"
 7899      646100
 7900              	.LASF260:
 7901 05a8 68736D63 		.ascii	"hsmci_wait_busy\000"
 7901      695F7761 
 7901      69745F62 
 7901      75737900 
 7902              	.LASF201:
 7903 05b8 68736D63 		.ascii	"hsmciIdleFunc_t\000"
 7903      6949646C 
 7903      6546756E 
 7903      635F7400 
 7904              	.LASF213:
 7905 05c8 68736D63 		.ascii	"hsmci_nb_block\000"
 7905      695F6E62 
 7905      5F626C6F 
 7905      636B00
 7906              	.LASF123:
 7907 05d7 5F636C6F 		.ascii	"_close\000"
 7907      736500
 7908              	.LASF224:
 7909 05de 68736D63 		.ascii	"hsmci_write_word\000"
 7909      695F7772 
 7909      6974655F 
 7909      776F7264 
 7909      00
 7910              	.LASF141:
 7911 05ef 5F5F7364 		.ascii	"__sdidinit\000"
 7911      6964696E 
 7911      697400
 7912              	.LASF207:
ARM GAS  /tmp/cc9w1cGI.s 			page 180


 7913 05fa 6D62725F 		.ascii	"mbr_ds\000"
 7913      647300
 7914              	.LASF134:
 7915 0601 5F737464 		.ascii	"_stdin\000"
 7915      696E00
 7916              	.LASF167:
 7917 0608 5F67616D 		.ascii	"_gamma_signgam\000"
 7917      6D615F73 
 7917      69676E67 
 7917      616D00
 7918              	.LASF20:
 7919 0617 48534D43 		.ascii	"HSMCI_CR\000"
 7919      495F4352 
 7919      00
 7920              	.LASF11:
 7921 0620 6C6F6E67 		.ascii	"long long int\000"
 7921      206C6F6E 
 7921      6720696E 
 7921      7400
 7922              	.LASF60:
 7923 062e 58444D41 		.ascii	"XDMAC_GCFG\000"
 7923      435F4743 
 7923      464700
 7924              	.LASF113:
 7925 0639 5F626173 		.ascii	"_base\000"
 7925      6500
 7926              	.LASF146:
 7927 063f 5F667265 		.ascii	"_freelist\000"
 7927      656C6973 
 7927      7400
 7928              	.LASF244:
 7929 0649 68736D63 		.ascii	"hsmci_get_response\000"
 7929      695F6765 
 7929      745F7265 
 7929      73706F6E 
 7929      736500
 7930              	.LASF249:
 7931 065c 68736D63 		.ascii	"hsmci_set_idle_func\000"
 7931      695F7365 
 7931      745F6964 
 7931      6C655F66 
 7931      756E6300 
 7932              	.LASF161:
 7933 0670 5F6D756C 		.ascii	"_mult\000"
 7933      7400
 7934              	.LASF162:
 7935 0676 5F616464 		.ascii	"_add\000"
 7935      00
 7936              	.LASF179:
 7937 067b 5F776372 		.ascii	"_wcrtomb_state\000"
 7937      746F6D62 
 7937      5F737461 
 7937      746500
 7938              	.LASF117:
 7939 068a 5F66696C 		.ascii	"_file\000"
 7939      6500
 7940              	.LASF56:
ARM GAS  /tmp/cc9w1cGI.s 			page 181


 7941 0690 58444D41 		.ascii	"XDMAC_CSUS\000"
 7941      435F4353 
 7941      555300
 7942              	.LASF278:
 7943 069b 68736D63 		.ascii	"hsmci_send_clock\000"
 7943      695F7365 
 7943      6E645F63 
 7943      6C6F636B 
 7943      00
 7944              	.LASF32:
 7945 06ac 48534D43 		.ascii	"HSMCI_SR\000"
 7945      495F5352 
 7945      00
 7946              	.LASF280:
 7947 06b5 6D656D73 		.ascii	"memset\000"
 7947      657400
 7948              	.LASF142:
 7949 06bc 5F5F636C 		.ascii	"__cleanup\000"
 7949      65616E75 
 7949      7000
 7950              	.LASF202:
 7951 06c6 6D62725F 		.ascii	"mbr_ubc\000"
 7951      75626300 
 7952              	.LASF86:
 7953 06ce 5F6D6273 		.ascii	"_mbstate_t\000"
 7953      74617465 
 7953      5F7400
 7954              	.LASF105:
 7955 06d9 5F666E61 		.ascii	"_fnargs\000"
 7955      72677300 
 7956              	.LASF271:
 7957 06e1 78646D61 		.ascii	"xdmac_configure_transfer\000"
 7957      635F636F 
 7957      6E666967 
 7957      7572655F 
 7957      7472616E 
 7958              	.LASF235:
 7959 06fa 68736D63 		.ascii	"hsmci_get_response_128\000"
 7959      695F6765 
 7959      745F7265 
 7959      73706F6E 
 7959      73655F31 
 7960              	.LASF31:
 7961 0711 52657365 		.ascii	"Reserved1\000"
 7961      72766564 
 7961      3100
 7962              	.LASF38:
 7963 071b 52657365 		.ascii	"Reserved2\000"
 7963      72766564 
 7963      3200
 7964              	.LASF41:
 7965 0725 52657365 		.ascii	"Reserved3\000"
 7965      72766564 
 7965      3300
 7966              	.LASF103:
 7967 072f 5F5F746D 		.ascii	"__tm_isdst\000"
 7967      5F697364 
ARM GAS  /tmp/cc9w1cGI.s 			page 182


 7967      737400
 7968              	.LASF72:
 7969 073a 58444D41 		.ascii	"XDMAC_GRWR\000"
 7969      435F4752 
 7969      575200
 7970              	.LASF277:
 7971 0745 68736D63 		.ascii	"hsmci_wait_end_of_read_blocks\000"
 7971      695F7761 
 7971      69745F65 
 7971      6E645F6F 
 7971      665F7265 
 7972              	.LASF194:
 7973 0763 504C4C5F 		.ascii	"PLL_SRC_MAINCK_4M_RC\000"
 7973      5352435F 
 7973      4D41494E 
 7973      434B5F34 
 7973      4D5F5243 
 7974              	.LASF57:
 7975 0778 58444D41 		.ascii	"XDMAC_CDUS\000"
 7975      435F4344 
 7975      555300
 7976              	.LASF110:
 7977 0783 5F696E64 		.ascii	"_ind\000"
 7977      00
 7978              	.LASF231:
 7979 0788 636D6472 		.ascii	"cmdr\000"
 7979      00
 7980              	.LASF30:
 7981 078d 48534D43 		.ascii	"HSMCI_TDR\000"
 7981      495F5444 
 7981      5200
 7982              	.LASF99:
 7983 0797 5F5F746D 		.ascii	"__tm_mon\000"
 7983      5F6D6F6E 
 7983      00
 7984              	.LASF42:
 7985 07a0 48534D43 		.ascii	"HSMCI_FIFO\000"
 7985      495F4649 
 7985      464F00
 7986              	.LASF47:
 7987 07ab 58444D41 		.ascii	"XDMAC_CIS\000"
 7987      435F4349 
 7987      5300
 7988              	.LASF14:
 7989 07b5 75696E74 		.ascii	"uint16_t\000"
 7989      31365F74 
 7989      00
 7990              	.LASF112:
 7991 07be 5F5F7362 		.ascii	"__sbuf\000"
 7991      756600
 7992              	.LASF121:
 7993 07c5 5F777269 		.ascii	"_write\000"
 7993      746500
 7994              	.LASF109:
 7995 07cc 5F617465 		.ascii	"_atexit\000"
 7995      78697400 
 7996              	.LASF237:
ARM GAS  /tmp/cc9w1cGI.s 			page 183


 7997 07d4 736C6F74 		.ascii	"slot\000"
 7997      00
 7998              	.LASF257:
 7999 07d9 64746F72 		.ascii	"dtor\000"
 7999      00
 8000              	.LASF39:
 8001 07de 48534D43 		.ascii	"HSMCI_WPMR\000"
 8001      495F5750 
 8001      4D5200
 8002              	.LASF70:
 8003 07e9 58444D41 		.ascii	"XDMAC_GWS\000"
 8003      435F4757 
 8003      5300
 8004              	.LASF77:
 8005 07f3 58646D61 		.ascii	"Xdmac\000"
 8005      6300
 8006              	.LASF196:
 8007 07f9 504C4C5F 		.ascii	"PLL_SRC_MAINCK_12M_RC\000"
 8007      5352435F 
 8007      4D41494E 
 8007      434B5F31 
 8007      324D5F52 
 8008              	.LASF205:
 8009 080f 6D62725F 		.ascii	"mbr_cfg\000"
 8009      63666700 
 8010              	.LASF8:
 8011 0817 6C6F6E67 		.ascii	"long int\000"
 8011      20696E74 
 8011      00
 8012              	.LASF18:
 8013 0820 49544D5F 		.ascii	"ITM_RxBuffer\000"
 8013      52784275 
 8013      66666572 
 8013      00
 8014              	.LASF269:
 8015 082d 6F73635F 		.ascii	"osc_get_rate\000"
 8015      6765745F 
 8015      72617465 
 8015      00
 8016              	.LASF53:
 8017 083a 58444D41 		.ascii	"XDMAC_CBC\000"
 8017      435F4342 
 8017      4300
 8018              	.LASF222:
 8019 0844 68736D63 		.ascii	"hsmci_start_read_blocks\000"
 8019      695F7374 
 8019      6172745F 
 8019      72656164 
 8019      5F626C6F 
 8020              	.LASF153:
 8021 085c 5F5F7366 		.ascii	"__sf\000"
 8021      00
 8022              	.LASF91:
 8023 0861 5F736967 		.ascii	"_sign\000"
 8023      6E00
 8024              	.LASF140:
 8025 0867 5F637572 		.ascii	"_current_locale\000"
ARM GAS  /tmp/cc9w1cGI.s 			page 184


 8025      72656E74 
 8025      5F6C6F63 
 8025      616C6500 
 8026              	.LASF265:
 8027 0877 78646D61 		.ascii	"xdmac_channel_enable\000"
 8027      635F6368 
 8027      616E6E65 
 8027      6C5F656E 
 8027      61626C65 
 8028              	.LASF128:
 8029 088c 5F646174 		.ascii	"_data\000"
 8029      6100
 8030              	.LASF139:
 8031 0892 5F637572 		.ascii	"_current_category\000"
 8031      72656E74 
 8031      5F636174 
 8031      65676F72 
 8031      7900
 8032              	.LASF83:
 8033 08a4 5F5F7763 		.ascii	"__wchb\000"
 8033      686200
 8034              	.LASF186:
 8035 08ab 5F676C6F 		.ascii	"_global_impure_ptr\000"
 8035      62616C5F 
 8035      696D7075 
 8035      72655F70 
 8035      747200
 8036              	.LASF229:
 8037 08be 626C6F63 		.ascii	"block_size\000"
 8037      6B5F7369 
 8037      7A6500
 8038              	.LASF100:
 8039 08c9 5F5F746D 		.ascii	"__tm_year\000"
 8039      5F796561 
 8039      7200
 8040              	.LASF230:
 8041 08d3 61636365 		.ascii	"access_block\000"
 8041      73735F62 
 8041      6C6F636B 
 8041      00
 8042              	.LASF63:
 8043 08e0 58444D41 		.ascii	"XDMAC_GID\000"
 8043      435F4749 
 8043      4400
 8044              	.LASF62:
 8045 08ea 58444D41 		.ascii	"XDMAC_GIE\000"
 8045      435F4749 
 8045      4500
 8046              	.LASF184:
 8047 08f4 5F756E75 		.ascii	"_unused\000"
 8047      73656400 
 8048              	.LASF4:
 8049 08fc 5F5F7569 		.ascii	"__uint8_t\000"
 8049      6E74385F 
 8049      7400
 8050              	.LASF149:
 8051 0906 5F6E6577 		.ascii	"_new\000"
ARM GAS  /tmp/cc9w1cGI.s 			page 185


 8051      00
 8052              	.LASF64:
 8053 090b 58444D41 		.ascii	"XDMAC_GIM\000"
 8053      435F4749 
 8053      4D00
 8054              	.LASF147:
 8055 0915 5F637674 		.ascii	"_cvtlen\000"
 8055      6C656E00 
 8056              	.LASF90:
 8057 091d 5F6D6178 		.ascii	"_maxwds\000"
 8057      77647300 
 8058              	.LASF173:
 8059 0925 5F6C3634 		.ascii	"_l64a_buf\000"
 8059      615F6275 
 8059      6600
 8060              	.LASF65:
 8061 092f 58444D41 		.ascii	"XDMAC_GIS\000"
 8061      435F4749 
 8061      5300
 8062              	.LASF279:
 8063 0939 68736D63 		.ascii	"hsmci_send_cmd_execute\000"
 8063      695F7365 
 8063      6E645F63 
 8063      6D645F65 
 8063      78656375 
 8064              	.LASF242:
 8065 0950 68736D63 		.ascii	"hsmci_slot\000"
 8065      695F736C 
 8065      6F7400
 8066              	.LASF126:
 8067 095b 5F626C6B 		.ascii	"_blksize\000"
 8067      73697A65 
 8067      00
 8068              	.LASF94:
 8069 0964 5F5F746D 		.ascii	"__tm\000"
 8069      00
 8070              	.LASF129:
 8071 0969 5F6C6F63 		.ascii	"_lock\000"
 8071      6B00
 8072              	.LASF17:
 8073 096f 73697A65 		.ascii	"sizetype\000"
 8073      74797065 
 8073      00
 8074              	.LASF219:
 8075 0978 705F6366 		.ascii	"p_cfg\000"
 8075      6700
 8076              	.LASF10:
 8077 097e 6C6F6E67 		.ascii	"long unsigned int\000"
 8077      20756E73 
 8077      69676E65 
 8077      6420696E 
 8077      7400
 8078              	.LASF240:
 8079 0990 6275735F 		.ascii	"bus_width\000"
 8079      77696474 
 8079      6800
 8080              	.LASF190:
ARM GAS  /tmp/cc9w1cGI.s 			page 186


 8081 099a 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 8081      6972715F 
 8081      63726974 
 8081      6963616C 
 8081      5F736563 
 8082              	.LASF157:
 8083 09bb 5F6E696F 		.ascii	"_niobs\000"
 8083      627300
 8084              	.LASF81:
 8085 09c2 77696E74 		.ascii	"wint_t\000"
 8085      5F7400
 8086              	.LASF29:
 8087 09c9 48534D43 		.ascii	"HSMCI_RDR\000"
 8087      495F5244 
 8087      5200
 8088              	.LASF15:
 8089 09d3 696E7433 		.ascii	"int32_t\000"
 8089      325F7400 
 8090              	.LASF274:
 8091 09db 2E2E2F61 		.ascii	"../asf/sam/drivers/hsmci/hsmci.c\000"
 8091      73662F73 
 8091      616D2F64 
 8091      72697665 
 8091      72732F68 
 8092              	.LASF96:
 8093 09fc 5F5F746D 		.ascii	"__tm_min\000"
 8093      5F6D696E 
 8093      00
 8094              	.LASF48:
 8095 0a05 58444D41 		.ascii	"XDMAC_CSA\000"
 8095      435F4353 
 8095      4100
 8096              	.LASF106:
 8097 0a0f 5F64736F 		.ascii	"_dso_handle\000"
 8097      5F68616E 
 8097      646C6500 
 8098              	.LASF27:
 8099 0a1b 48534D43 		.ascii	"HSMCI_CSTOR\000"
 8099      495F4353 
 8099      544F5200 
 8100              	.LASF250:
 8101 0a27 68736D63 		.ascii	"hsmci_get_speed\000"
 8101      695F6765 
 8101      745F7370 
 8101      65656400 
 8102              	.LASF148:
 8103 0a37 5F637674 		.ascii	"_cvtbuf\000"
 8103      62756600 
 8104              	.LASF2:
 8105 0a3f 756E7369 		.ascii	"unsigned char\000"
 8105      676E6564 
 8105      20636861 
 8105      7200
 8106              	.LASF266:
 8107 0a4d 73797363 		.ascii	"sysclk_get_peripheral_hz\000"
 8107      6C6B5F67 
 8107      65745F70 
ARM GAS  /tmp/cc9w1cGI.s 			page 187


 8107      65726970 
 8107      68657261 
 8108              	.LASF9:
 8109 0a66 5F5F7569 		.ascii	"__uint32_t\000"
 8109      6E743332 
 8109      5F7400
 8110              	.LASF26:
 8111 0a71 48534D43 		.ascii	"HSMCI_BLKR\000"
 8111      495F424C 
 8111      4B5200
 8112              	.LASF78:
 8113 0a7c 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 8113      4B5F5245 
 8113      43555253 
 8113      4956455F 
 8113      5400
 8114              	.LASF234:
 8115 0a8e 68736D63 		.ascii	"hsmci_send_cmd\000"
 8115      695F7365 
 8115      6E645F63 
 8115      6D6400
 8116              	.LASF210:
 8117 0a9d 78646D61 		.ascii	"xdmac_channel_config_t\000"
 8117      635F6368 
 8117      616E6E65 
 8117      6C5F636F 
 8117      6E666967 
 8118              	.LASF220:
 8119 0ab4 6E625F64 		.ascii	"nb_data\000"
 8119      61746100 
 8120              	.LASF273:
 8121 0abc 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 8121      43393920 
 8121      362E332E 
 8121      31203230 
 8121      31373036 
 8122 0aef 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 8122      76352D64 
 8122      3136202D 
 8122      6D666C6F 
 8122      61742D61 
 8123 0b22 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 8123      6E2D7365 
 8123      6374696F 
 8123      6E73202D 
 8123      66646174 
 8124 0b55 6F6E7374 		.ascii	"onstant\000"
 8124      616E7400 
 8125              	.LASF67:
 8126 0b5d 58444D41 		.ascii	"XDMAC_GD\000"
 8126      435F4744 
 8126      00
 8127              	.LASF197:
 8128 0b66 504C4C5F 		.ascii	"PLL_SRC_MAINCK_XTAL\000"
 8128      5352435F 
 8128      4D41494E 
 8128      434B5F58 
ARM GAS  /tmp/cc9w1cGI.s 			page 188


 8128      54414C00 
 8129              	.LASF211:
 8130 0b7a 68736D63 		.ascii	"hsmci_transfert_pos\000"
 8130      695F7472 
 8130      616E7366 
 8130      6572745F 
 8130      706F7300 
 8131              	.LASF59:
 8132 0b8e 58444D41 		.ascii	"XDMAC_GTYPE\000"
 8132      435F4754 
 8132      59504500 
 8133              	.LASF156:
 8134 0b9a 5F676C75 		.ascii	"_glue\000"
 8134      6500
 8135              	.LASF253:
 8136 0ba0 68736D63 		.ascii	"hsmciClock\000"
 8136      69436C6F 
 8136      636B00
 8137              	.LASF275:
 8138 0bab 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70\000"
 8138      652F746F 
 8138      72626A6F 
 8138      726E2F65 
 8138      636C6970 
 8139              	.LASF152:
 8140 0bda 5F5F7367 		.ascii	"__sglue\000"
 8140      6C756500 
 8141              	.LASF175:
 8142 0be2 5F676574 		.ascii	"_getdate_err\000"
 8142      64617465 
 8142      5F657272 
 8142      00
 8143              	.LASF164:
 8144 0bef 5F737472 		.ascii	"_strtok_last\000"
 8144      746F6B5F 
 8144      6C617374 
 8144      00
 8145              	.LASF171:
 8146 0bfc 5F6D6274 		.ascii	"_mbtowc_state\000"
 8146      6F77635F 
 8146      73746174 
 8146      6500
 8147              	.LASF272:
 8148 0c0a 706D635F 		.ascii	"pmc_enable_periph_clk\000"
 8148      656E6162 
 8148      6C655F70 
 8148      65726970 
 8148      685F636C 
 8149              	.LASF1:
 8150 0c20 7369676E 		.ascii	"signed char\000"
 8150      65642063 
 8150      68617200 
 8151              	.LASF228:
 8152 0c2c 68736D63 		.ascii	"hsmci_adtc_start\000"
 8152      695F6164 
 8152      74635F73 
 8152      74617274 
ARM GAS  /tmp/cc9w1cGI.s 			page 189


 8152      00
 8153              	.LASF132:
 8154 0c3d 5F726565 		.ascii	"_reent\000"
 8154      6E7400
 8155              	.LASF6:
 8156 0c44 73686F72 		.ascii	"short unsigned int\000"
 8156      7420756E 
 8156      7369676E 
 8156      65642069 
 8156      6E7400
 8157              	.LASF49:
 8158 0c57 58444D41 		.ascii	"XDMAC_CDA\000"
 8158      435F4344 
 8158      4100
 8159              	.LASF107:
 8160 0c61 5F666E74 		.ascii	"_fntypes\000"
 8160      79706573 
 8160      00
 8161              	.LASF114:
 8162 0c6a 5F73697A 		.ascii	"_size\000"
 8162      6500
 8163              	.LASF193:
 8164 0c70 646F7562 		.ascii	"double\000"
 8164      6C6500
 8165              	.LASF23:
 8166 0c77 48534D43 		.ascii	"HSMCI_SDCR\000"
 8166      495F5344 
 8166      435200
 8167              	.LASF79:
 8168 0c82 5F6F6666 		.ascii	"_off_t\000"
 8168      5F7400
 8169              	.LASF255:
 8170 0c89 68736D63 		.ascii	"hsmci_set_speed\000"
 8170      695F7365 
 8170      745F7370 
 8170      65656400 
 8171              	.LASF125:
 8172 0c99 5F6E6275 		.ascii	"_nbuf\000"
 8172      6600
 8173              	.LASF163:
 8174 0c9f 5F756E75 		.ascii	"_unused_rand\000"
 8174      7365645F 
 8174      72616E64 
 8174      00
 8175              	.LASF75:
 8176 0cac 58444D41 		.ascii	"XDMAC_GSWF\000"
 8176      435F4753 
 8176      574600
 8177              	.LASF71:
 8178 0cb7 58444D41 		.ascii	"XDMAC_GRWS\000"
 8178      435F4752 
 8178      575300
 8179              	.LASF131:
 8180 0cc2 5F666C61 		.ascii	"_flags2\000"
 8180      67733200 
 8181              	.LASF108:
 8182 0cca 5F69735F 		.ascii	"_is_cxa\000"
ARM GAS  /tmp/cc9w1cGI.s 			page 190


 8182      63786100 
 8183              	.LASF226:
 8184 0cd2 68736D63 		.ascii	"hsmci_read_word\000"
 8184      695F7265 
 8184      61645F77 
 8184      6F726400 
 8185              	.LASF73:
 8186 0ce2 58444D41 		.ascii	"XDMAC_GSWR\000"
 8186      435F4753 
 8186      575200
 8187              	.LASF74:
 8188 0ced 58444D41 		.ascii	"XDMAC_GSWS\000"
 8188      435F4753 
 8188      575300
 8189              	.LASF160:
 8190 0cf8 5F736565 		.ascii	"_seed\000"
 8190      6400
 8191              	.LASF168:
 8192 0cfe 5F72616E 		.ascii	"_rand_next\000"
 8192      645F6E65 
 8192      787400
 8193              	.LASF223:
 8194 0d09 64657374 		.ascii	"dest\000"
 8194      00
 8195              	.LASF122:
 8196 0d0e 5F736565 		.ascii	"_seek\000"
 8196      6B00
 8197              	.LASF248:
 8198 0d14 62757379 		.ascii	"busy_wait\000"
 8198      5F776169 
 8198      7400
 8199              	.LASF212:
 8200 0d1e 68736D63 		.ascii	"hsmci_block_size\000"
 8200      695F626C 
 8200      6F636B5F 
 8200      73697A65 
 8200      00
 8201              	.LASF136:
 8202 0d2f 5F737464 		.ascii	"_stderr\000"
 8202      65727200 
 8203              	.LASF183:
 8204 0d37 5F6E6D61 		.ascii	"_nmalloc\000"
 8204      6C6C6F63 
 8204      00
 8205              	.LASF158:
 8206 0d40 5F696F62 		.ascii	"_iobs\000"
 8206      7300
 8207              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
