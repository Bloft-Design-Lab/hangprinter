ARM GAS  /tmp/ccbxFcRO.s 			page 1


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
  12              		.file	"sd_mmc_spi.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.sd_mmc_spi_start_write_block,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv5-d16
  23              		.type	sd_mmc_spi_start_write_block, %function
  24              	sd_mmc_spi_start_write_block:
  25              	.LFB237:
  26              		.file 1 "../libraries/Storage/sd_mmc_spi.c"
   1:../libraries/Storage/sd_mmc_spi.c **** /**
   2:../libraries/Storage/sd_mmc_spi.c ****  * \file
   3:../libraries/Storage/sd_mmc_spi.c ****  *
   4:../libraries/Storage/sd_mmc_spi.c ****  * \brief Common SPI interface for SD/MMC stack
   5:../libraries/Storage/sd_mmc_spi.c ****  *
   6:../libraries/Storage/sd_mmc_spi.c ****  * Copyright (c) 2012-2015 Atmel Corporation. All rights reserved.
   7:../libraries/Storage/sd_mmc_spi.c ****  *
   8:../libraries/Storage/sd_mmc_spi.c ****  * \asf_license_start
   9:../libraries/Storage/sd_mmc_spi.c ****  *
  10:../libraries/Storage/sd_mmc_spi.c ****  * \page License
  11:../libraries/Storage/sd_mmc_spi.c ****  *
  12:../libraries/Storage/sd_mmc_spi.c ****  * Redistribution and use in source and binary forms, with or without
  13:../libraries/Storage/sd_mmc_spi.c ****  * modification, are permitted provided that the following conditions are met:
  14:../libraries/Storage/sd_mmc_spi.c ****  *
  15:../libraries/Storage/sd_mmc_spi.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../libraries/Storage/sd_mmc_spi.c ****  *    this list of conditions and the following disclaimer.
  17:../libraries/Storage/sd_mmc_spi.c ****  *
  18:../libraries/Storage/sd_mmc_spi.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../libraries/Storage/sd_mmc_spi.c ****  *    this list of conditions and the following disclaimer in the documentation
  20:../libraries/Storage/sd_mmc_spi.c ****  *    and/or other materials provided with the distribution.
  21:../libraries/Storage/sd_mmc_spi.c ****  *
  22:../libraries/Storage/sd_mmc_spi.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../libraries/Storage/sd_mmc_spi.c ****  *    from this software without specific prior written permission.
  24:../libraries/Storage/sd_mmc_spi.c ****  *
  25:../libraries/Storage/sd_mmc_spi.c ****  * 4. This software may only be redistributed and used in connection with an
  26:../libraries/Storage/sd_mmc_spi.c ****  *    Atmel microcontroller product.
  27:../libraries/Storage/sd_mmc_spi.c ****  *
  28:../libraries/Storage/sd_mmc_spi.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../libraries/Storage/sd_mmc_spi.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../libraries/Storage/sd_mmc_spi.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
  31:../libraries/Storage/sd_mmc_spi.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
ARM GAS  /tmp/ccbxFcRO.s 			page 2


  32:../libraries/Storage/sd_mmc_spi.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../libraries/Storage/sd_mmc_spi.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../libraries/Storage/sd_mmc_spi.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../libraries/Storage/sd_mmc_spi.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../libraries/Storage/sd_mmc_spi.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../libraries/Storage/sd_mmc_spi.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../libraries/Storage/sd_mmc_spi.c ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../libraries/Storage/sd_mmc_spi.c ****  *
  40:../libraries/Storage/sd_mmc_spi.c ****  * \asf_license_stop
  41:../libraries/Storage/sd_mmc_spi.c ****  *
  42:../libraries/Storage/sd_mmc_spi.c ****  */
  43:../libraries/Storage/sd_mmc_spi.c **** /*
  44:../libraries/Storage/sd_mmc_spi.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../libraries/Storage/sd_mmc_spi.c ****  */
  46:../libraries/Storage/sd_mmc_spi.c **** #include <compiler.h>
  47:../libraries/Storage/sd_mmc_spi.c **** #include <status_codes.h>
  48:../libraries/Storage/sd_mmc_spi.c **** #include <board.h>
  49:../libraries/Storage/sd_mmc_spi.c **** #include <string.h>
  50:../libraries/Storage/sd_mmc_spi.c **** #include "Core.h"
  51:../libraries/Storage/sd_mmc_spi.c **** #include "conf_board.h"
  52:../libraries/Storage/sd_mmc_spi.c **** #include "conf_sd_mmc.h"
  53:../libraries/Storage/sd_mmc_spi.c **** #include "sd_mmc_protocol.h"
  54:../libraries/Storage/sd_mmc_spi.c **** #include "sd_mmc_spi.h"
  55:../libraries/Storage/sd_mmc_spi.c **** #include "sd_mmc.h"
  56:../libraries/Storage/sd_mmc_spi.c **** 
  57:../libraries/Storage/sd_mmc_spi.c **** #if SD_MMC_SPI_MEM_CNT != 0
  58:../libraries/Storage/sd_mmc_spi.c **** 
  59:../libraries/Storage/sd_mmc_spi.c **** /**
  60:../libraries/Storage/sd_mmc_spi.c ****  * \ingroup sd_mmc_stack_spi
  61:../libraries/Storage/sd_mmc_spi.c ****  * \defgroup sd_mmc_stack_spi_internal Common SPI interface for SD/MMC stack
  62:../libraries/Storage/sd_mmc_spi.c ****  * implementation
  63:../libraries/Storage/sd_mmc_spi.c ****  *
  64:../libraries/Storage/sd_mmc_spi.c ****  * @{
  65:../libraries/Storage/sd_mmc_spi.c ****  */
  66:../libraries/Storage/sd_mmc_spi.c **** 
  67:../libraries/Storage/sd_mmc_spi.c **** #include "../SharedSpi/SharedSpi.h"
  68:../libraries/Storage/sd_mmc_spi.c **** 
  69:../libraries/Storage/sd_mmc_spi.c **** // Enable debug information for SD/MMC SPI module
  70:../libraries/Storage/sd_mmc_spi.c **** #ifdef SD_MMC_SPI_DEBUG
  71:../libraries/Storage/sd_mmc_spi.c **** extern void debugPrintf(const char* fmt, ...);
  72:../libraries/Storage/sd_mmc_spi.c **** #define sd_mmc_spi_debug(...)      debugPrintf(__VA_ARGS__)
  73:../libraries/Storage/sd_mmc_spi.c **** #else
  74:../libraries/Storage/sd_mmc_spi.c **** #define sd_mmc_spi_debug(...)
  75:../libraries/Storage/sd_mmc_spi.c **** #endif
  76:../libraries/Storage/sd_mmc_spi.c **** 
  77:../libraries/Storage/sd_mmc_spi.c **** //! Internal global error status
  78:../libraries/Storage/sd_mmc_spi.c **** static sd_mmc_spi_errno_t sd_mmc_spi_err;
  79:../libraries/Storage/sd_mmc_spi.c **** 
  80:../libraries/Storage/sd_mmc_spi.c **** //! Slot array of SPI structures
  81:../libraries/Storage/sd_mmc_spi.c **** static struct sspi_device sd_mmc_spi_devices[SD_MMC_SPI_MEM_CNT];
  82:../libraries/Storage/sd_mmc_spi.c **** 
  83:../libraries/Storage/sd_mmc_spi.c **** //! 32 bits response of the last command
  84:../libraries/Storage/sd_mmc_spi.c **** static uint32_t sd_mmc_spi_response_32;
  85:../libraries/Storage/sd_mmc_spi.c **** //! Current position (byte) of the transfer started by mci_adtc_start()
  86:../libraries/Storage/sd_mmc_spi.c **** static uint32_t sd_mmc_spi_transfert_pos;
  87:../libraries/Storage/sd_mmc_spi.c **** //! Size block requested by last mci_adtc_start()
  88:../libraries/Storage/sd_mmc_spi.c **** static uint16_t sd_mmc_spi_block_size;
ARM GAS  /tmp/ccbxFcRO.s 			page 3


  89:../libraries/Storage/sd_mmc_spi.c **** //! Total number of block requested by last mci_adtc_start()
  90:../libraries/Storage/sd_mmc_spi.c **** static uint16_t sd_mmc_spi_nb_block;
  91:../libraries/Storage/sd_mmc_spi.c **** 
  92:../libraries/Storage/sd_mmc_spi.c **** static uint8_t sd_mmc_spi_crc7(uint8_t * buf, uint8_t size);
  93:../libraries/Storage/sd_mmc_spi.c **** static bool sd_mmc_spi_wait_busy(void);
  94:../libraries/Storage/sd_mmc_spi.c **** static bool sd_mmc_spi_start_read_block(void);
  95:../libraries/Storage/sd_mmc_spi.c **** static void sd_mmc_spi_stop_read_block(void);
  96:../libraries/Storage/sd_mmc_spi.c **** static void sd_mmc_spi_start_write_block(void);
  97:../libraries/Storage/sd_mmc_spi.c **** static bool sd_mmc_spi_stop_write_block(void);
  98:../libraries/Storage/sd_mmc_spi.c **** static bool sd_mmc_spi_stop_multiwrite_block(void);
  99:../libraries/Storage/sd_mmc_spi.c **** 
 100:../libraries/Storage/sd_mmc_spi.c **** /**
 101:../libraries/Storage/sd_mmc_spi.c ****  * \brief Calculates the CRC7
 102:../libraries/Storage/sd_mmc_spi.c ****  *
 103:../libraries/Storage/sd_mmc_spi.c ****  * \param buf     Buffer data to compute
 104:../libraries/Storage/sd_mmc_spi.c ****  * \param size    Size of buffer data
 105:../libraries/Storage/sd_mmc_spi.c ****  *
 106:../libraries/Storage/sd_mmc_spi.c ****  * \return CRC7 computed
 107:../libraries/Storage/sd_mmc_spi.c ****  */
 108:../libraries/Storage/sd_mmc_spi.c **** static uint8_t sd_mmc_spi_crc7(uint8_t * buf, uint8_t size)
 109:../libraries/Storage/sd_mmc_spi.c **** {
 110:../libraries/Storage/sd_mmc_spi.c **** 	uint8_t crc, value, i;
 111:../libraries/Storage/sd_mmc_spi.c **** 
 112:../libraries/Storage/sd_mmc_spi.c **** 	crc = 0;
 113:../libraries/Storage/sd_mmc_spi.c **** 	while (size--) {
 114:../libraries/Storage/sd_mmc_spi.c **** 		value = *buf++;
 115:../libraries/Storage/sd_mmc_spi.c **** 		for (i = 0; i < 8; i++) {
 116:../libraries/Storage/sd_mmc_spi.c **** 			crc <<= 1;
 117:../libraries/Storage/sd_mmc_spi.c **** 			if ((value & 0x80) ^ (crc & 0x80)) {
 118:../libraries/Storage/sd_mmc_spi.c **** 				crc ^= 0x09;
 119:../libraries/Storage/sd_mmc_spi.c **** 			}
 120:../libraries/Storage/sd_mmc_spi.c **** 			value <<= 1;
 121:../libraries/Storage/sd_mmc_spi.c **** 		}
 122:../libraries/Storage/sd_mmc_spi.c **** 	}
 123:../libraries/Storage/sd_mmc_spi.c **** 	crc = (crc << 1) | 1;
 124:../libraries/Storage/sd_mmc_spi.c **** 	return crc;
 125:../libraries/Storage/sd_mmc_spi.c **** }
 126:../libraries/Storage/sd_mmc_spi.c **** 
 127:../libraries/Storage/sd_mmc_spi.c **** /**
 128:../libraries/Storage/sd_mmc_spi.c ****  * \brief Wait the end of busy on DAT0 line
 129:../libraries/Storage/sd_mmc_spi.c ****  *
 130:../libraries/Storage/sd_mmc_spi.c ****  * \return true if success, otherwise false
 131:../libraries/Storage/sd_mmc_spi.c ****  */
 132:../libraries/Storage/sd_mmc_spi.c **** static bool sd_mmc_spi_wait_busy(void)
 133:../libraries/Storage/sd_mmc_spi.c **** {
 134:../libraries/Storage/sd_mmc_spi.c **** 	uint8_t line = 0xFF;
 135:../libraries/Storage/sd_mmc_spi.c **** 
 136:../libraries/Storage/sd_mmc_spi.c **** 	/* Delay before check busy
 137:../libraries/Storage/sd_mmc_spi.c **** 	 * Nbr timing minimum = 8 cylces
 138:../libraries/Storage/sd_mmc_spi.c **** 	 */
 139:../libraries/Storage/sd_mmc_spi.c **** 	sspi_read_packet(&line, 1);
 140:../libraries/Storage/sd_mmc_spi.c **** 
 141:../libraries/Storage/sd_mmc_spi.c **** 	/* Wait end of busy signal
 142:../libraries/Storage/sd_mmc_spi.c **** 	 * Nec timing: 0 to unlimited
 143:../libraries/Storage/sd_mmc_spi.c **** 	 * However a timeout is used.
 144:../libraries/Storage/sd_mmc_spi.c **** 	 * 200 000 * 8 cycles
 145:../libraries/Storage/sd_mmc_spi.c **** 	 */
ARM GAS  /tmp/ccbxFcRO.s 			page 4


 146:../libraries/Storage/sd_mmc_spi.c **** 	uint32_t nec_timeout = 200000;
 147:../libraries/Storage/sd_mmc_spi.c **** 	sspi_read_packet(&line, 1);
 148:../libraries/Storage/sd_mmc_spi.c **** 	do {
 149:../libraries/Storage/sd_mmc_spi.c **** 		sspi_read_packet(&line, 1);
 150:../libraries/Storage/sd_mmc_spi.c **** 		if (!(nec_timeout--)) {
 151:../libraries/Storage/sd_mmc_spi.c **** 			return false;
 152:../libraries/Storage/sd_mmc_spi.c **** 		}
 153:../libraries/Storage/sd_mmc_spi.c **** 	} while (line != 0xFF);
 154:../libraries/Storage/sd_mmc_spi.c **** 	return true;
 155:../libraries/Storage/sd_mmc_spi.c **** }
 156:../libraries/Storage/sd_mmc_spi.c **** 
 157:../libraries/Storage/sd_mmc_spi.c **** /**
 158:../libraries/Storage/sd_mmc_spi.c ****  * \brief Sends the correct TOKEN on the line to start a read block transfer
 159:../libraries/Storage/sd_mmc_spi.c ****  *
 160:../libraries/Storage/sd_mmc_spi.c ****  * \return true if success, otherwise false
 161:../libraries/Storage/sd_mmc_spi.c ****  *         with a update of \ref sd_mmc_spi_err.
 162:../libraries/Storage/sd_mmc_spi.c ****  */
 163:../libraries/Storage/sd_mmc_spi.c **** static bool sd_mmc_spi_start_read_block(void)
 164:../libraries/Storage/sd_mmc_spi.c **** {
 165:../libraries/Storage/sd_mmc_spi.c **** 	uint32_t i;
 166:../libraries/Storage/sd_mmc_spi.c **** 	uint8_t token;
 167:../libraries/Storage/sd_mmc_spi.c **** 
 168:../libraries/Storage/sd_mmc_spi.c **** 	Assert(!(sd_mmc_spi_transfert_pos % sd_mmc_spi_block_size));
 169:../libraries/Storage/sd_mmc_spi.c **** 
 170:../libraries/Storage/sd_mmc_spi.c **** 	/* Wait for start data token:
 171:../libraries/Storage/sd_mmc_spi.c **** 	 * The read timeout is the Nac timing.
 172:../libraries/Storage/sd_mmc_spi.c **** 	 * Nac must be computed trough CSD values,
 173:../libraries/Storage/sd_mmc_spi.c **** 	 * or it is 100ms for SDHC / SDXC
 174:../libraries/Storage/sd_mmc_spi.c **** 	 * Compute the maximum timeout:
 175:../libraries/Storage/sd_mmc_spi.c **** 	 * Frequency maximum = 25MHz
 176:../libraries/Storage/sd_mmc_spi.c **** 	 * 1 byte = 8 cycles
 177:../libraries/Storage/sd_mmc_spi.c **** 	 * 100ms = 312500 x sd_mmc_spi_drv_read_packet() maximum
 178:../libraries/Storage/sd_mmc_spi.c **** 	 */
 179:../libraries/Storage/sd_mmc_spi.c **** 	token = 0;
 180:../libraries/Storage/sd_mmc_spi.c **** 	i = 500000;
 181:../libraries/Storage/sd_mmc_spi.c **** 	do {
 182:../libraries/Storage/sd_mmc_spi.c **** 		if (i-- == 0) {
 183:../libraries/Storage/sd_mmc_spi.c **** 			sd_mmc_spi_err = SD_MMC_SPI_ERR_READ_TIMEOUT;
 184:../libraries/Storage/sd_mmc_spi.c **** 			sd_mmc_spi_debug("%s: Read blocks timeout\n\r", __func__);
 185:../libraries/Storage/sd_mmc_spi.c **** 			return false;
 186:../libraries/Storage/sd_mmc_spi.c **** 		}
 187:../libraries/Storage/sd_mmc_spi.c **** 		sspi_read_packet(&token, 1);
 188:../libraries/Storage/sd_mmc_spi.c **** 		if (SPI_TOKEN_DATA_ERROR_VALID(token)) {
 189:../libraries/Storage/sd_mmc_spi.c **** 			Assert(SPI_TOKEN_DATA_ERROR_ERRORS & token);
 190:../libraries/Storage/sd_mmc_spi.c **** 			if (token & (SPI_TOKEN_DATA_ERROR_ERROR
 191:../libraries/Storage/sd_mmc_spi.c **** 					| SPI_TOKEN_DATA_ERROR_ECC_ERROR
 192:../libraries/Storage/sd_mmc_spi.c **** 					| SPI_TOKEN_DATA_ERROR_CC_ERROR)) {
 193:../libraries/Storage/sd_mmc_spi.c **** 				sd_mmc_spi_debug("%s: CRC data error token\n\r", __func__);
 194:../libraries/Storage/sd_mmc_spi.c **** 				sd_mmc_spi_err = SD_MMC_SPI_ERR_READ_CRC;
 195:../libraries/Storage/sd_mmc_spi.c **** 			} else {
 196:../libraries/Storage/sd_mmc_spi.c **** 				sd_mmc_spi_debug("%s: Out of range data error token\n\r", __func__);
 197:../libraries/Storage/sd_mmc_spi.c **** 				sd_mmc_spi_err = SD_MMC_SPI_ERR_OUT_OF_RANGE;
 198:../libraries/Storage/sd_mmc_spi.c **** 			}
 199:../libraries/Storage/sd_mmc_spi.c **** 			return false;
 200:../libraries/Storage/sd_mmc_spi.c **** 		}
 201:../libraries/Storage/sd_mmc_spi.c **** 	} while (token != SPI_TOKEN_SINGLE_MULTI_READ);
 202:../libraries/Storage/sd_mmc_spi.c **** 
ARM GAS  /tmp/ccbxFcRO.s 			page 5


 203:../libraries/Storage/sd_mmc_spi.c **** 	return true;
 204:../libraries/Storage/sd_mmc_spi.c **** }
 205:../libraries/Storage/sd_mmc_spi.c **** 
 206:../libraries/Storage/sd_mmc_spi.c **** /**
 207:../libraries/Storage/sd_mmc_spi.c ****  * \brief Executed the end of a read block transfer
 208:../libraries/Storage/sd_mmc_spi.c ****  */
 209:../libraries/Storage/sd_mmc_spi.c **** static void sd_mmc_spi_stop_read_block(void)
 210:../libraries/Storage/sd_mmc_spi.c **** {
 211:../libraries/Storage/sd_mmc_spi.c **** 	uint8_t crc[2];
 212:../libraries/Storage/sd_mmc_spi.c **** 	// Read 16-bit CRC (not cheked)
 213:../libraries/Storage/sd_mmc_spi.c **** 	sspi_read_packet(crc, 2);
 214:../libraries/Storage/sd_mmc_spi.c **** }
 215:../libraries/Storage/sd_mmc_spi.c **** 
 216:../libraries/Storage/sd_mmc_spi.c **** /**
 217:../libraries/Storage/sd_mmc_spi.c ****  * \brief Sends the correct TOKEN on the line to start a write block transfer
 218:../libraries/Storage/sd_mmc_spi.c ****  */
 219:../libraries/Storage/sd_mmc_spi.c **** static void sd_mmc_spi_start_write_block(void)
 220:../libraries/Storage/sd_mmc_spi.c **** {
  27              		.loc 1 220 0
  28              		.cfi_startproc
  29              		@ args = 0, pretend = 0, frame = 8
  30              		@ frame_needed = 0, uses_anonymous_args = 0
  31 0000 00B5     		push	{lr}
  32              		.cfi_def_cfa_offset 4
  33              		.cfi_offset 14, -4
  34 0002 83B0     		sub	sp, sp, #12
  35              		.cfi_def_cfa_offset 16
 221:../libraries/Storage/sd_mmc_spi.c **** 	uint8_t dummy = 0xFF;
  36              		.loc 1 221 0
  37 0004 FF23     		movs	r3, #255
  38              	.LBB64:
  39              	.LBB65:
  40              		.file 2 "../libraries/Storage/../SharedSpi/SharedSpi.h"
   1:../libraries/Storage/../SharedSpi/SharedSpi.h **** // ASF 3.27.0
   2:../libraries/Storage/../SharedSpi/SharedSpi.h **** 
   3:../libraries/Storage/../SharedSpi/SharedSpi.h **** // Note:
   4:../libraries/Storage/../SharedSpi/SharedSpi.h **** // ASF 3.31 includes spi_master.c, .h in folder common/services/spi/sam_spi.
   5:../libraries/Storage/../SharedSpi/SharedSpi.h **** // Unfortunately, that version assumes that only he "official" SPI CS pins are used.
   6:../libraries/Storage/../SharedSpi/SharedSpi.h **** // So instead we use this version, which allows any pin to be used for CS.
   7:../libraries/Storage/../SharedSpi/SharedSpi.h **** 
   8:../libraries/Storage/../SharedSpi/SharedSpi.h **** /**
   9:../libraries/Storage/../SharedSpi/SharedSpi.h ****  * \file
  10:../libraries/Storage/../SharedSpi/SharedSpi.h ****  *
  11:../libraries/Storage/../SharedSpi/SharedSpi.h ****  * \brief Shared SPI bus services for Duet and other Atmel SAM-based controller electronics
  12:../libraries/Storage/../SharedSpi/SharedSpi.h ****  *
  13:../libraries/Storage/../SharedSpi/SharedSpi.h ****  * This module provides access to the SPI bus used to access peripheral devices in RepRapFirmware, 
  14:../libraries/Storage/../SharedSpi/SharedSpi.h ****  * Depending on the board, we may use either the main SPI channel or one of the USARTs in SPI mode.
  15:../libraries/Storage/../SharedSpi/SharedSpi.h ****  *
  16:../libraries/Storage/../SharedSpi/SharedSpi.h ****  */
  17:../libraries/Storage/../SharedSpi/SharedSpi.h **** 
  18:../libraries/Storage/../SharedSpi/SharedSpi.h **** #ifndef _GSPI_MASTER_H_
  19:../libraries/Storage/../SharedSpi/SharedSpi.h **** #define _GSPI_MASTER_H_
  20:../libraries/Storage/../SharedSpi/SharedSpi.h **** 
  21:../libraries/Storage/../SharedSpi/SharedSpi.h **** #include "compiler.h"
  22:../libraries/Storage/../SharedSpi/SharedSpi.h **** #include "spi/spi.h"
  23:../libraries/Storage/../SharedSpi/SharedSpi.h **** 
  24:../libraries/Storage/../SharedSpi/SharedSpi.h **** #if defined(USE_SAM3X_DMAC)
ARM GAS  /tmp/ccbxFcRO.s 			page 6


  25:../libraries/Storage/../SharedSpi/SharedSpi.h **** #include "dmac/dmac.h"
  26:../libraries/Storage/../SharedSpi/SharedSpi.h **** #include "pmc/pmc.h"
  27:../libraries/Storage/../SharedSpi/SharedSpi.h **** #endif
  28:../libraries/Storage/../SharedSpi/SharedSpi.h **** 
  29:../libraries/Storage/../SharedSpi/SharedSpi.h **** /**
  30:../libraries/Storage/../SharedSpi/SharedSpi.h ****  * \brief Clock phase.
  31:../libraries/Storage/../SharedSpi/SharedSpi.h ****  */
  32:../libraries/Storage/../SharedSpi/SharedSpi.h **** #define SPI_CPHA  (1 << 0)
  33:../libraries/Storage/../SharedSpi/SharedSpi.h **** 
  34:../libraries/Storage/../SharedSpi/SharedSpi.h **** /**
  35:../libraries/Storage/../SharedSpi/SharedSpi.h ****  * \brief Clock polarity.
  36:../libraries/Storage/../SharedSpi/SharedSpi.h ****  */
  37:../libraries/Storage/../SharedSpi/SharedSpi.h **** #define SPI_CPOL  (1 << 1)
  38:../libraries/Storage/../SharedSpi/SharedSpi.h **** 
  39:../libraries/Storage/../SharedSpi/SharedSpi.h **** /**
  40:../libraries/Storage/../SharedSpi/SharedSpi.h ****  * \brief SPI mode 0.
  41:../libraries/Storage/../SharedSpi/SharedSpi.h ****  */
  42:../libraries/Storage/../SharedSpi/SharedSpi.h **** #define SPI_MODE_0  0
  43:../libraries/Storage/../SharedSpi/SharedSpi.h **** /**
  44:../libraries/Storage/../SharedSpi/SharedSpi.h ****  * \brief SPI mode 1.
  45:../libraries/Storage/../SharedSpi/SharedSpi.h ****  */
  46:../libraries/Storage/../SharedSpi/SharedSpi.h **** #define SPI_MODE_1  (SPI_CPHA)
  47:../libraries/Storage/../SharedSpi/SharedSpi.h **** /**
  48:../libraries/Storage/../SharedSpi/SharedSpi.h ****  * \brief SPI mode 2.
  49:../libraries/Storage/../SharedSpi/SharedSpi.h ****  */
  50:../libraries/Storage/../SharedSpi/SharedSpi.h **** #define SPI_MODE_2  (SPI_CPOL)
  51:../libraries/Storage/../SharedSpi/SharedSpi.h **** /**
  52:../libraries/Storage/../SharedSpi/SharedSpi.h ****  * \brief SPI mode 3.
  53:../libraries/Storage/../SharedSpi/SharedSpi.h ****  */
  54:../libraries/Storage/../SharedSpi/SharedSpi.h **** #define SPI_MODE_3  (SPI_CPOL | SPI_CPHA)
  55:../libraries/Storage/../SharedSpi/SharedSpi.h **** 
  56:../libraries/Storage/../SharedSpi/SharedSpi.h **** //! \brief Polled SPI device definition.
  57:../libraries/Storage/../SharedSpi/SharedSpi.h **** struct sspi_device {
  58:../libraries/Storage/../SharedSpi/SharedSpi.h **** 	Pin csPin;
  59:../libraries/Storage/../SharedSpi/SharedSpi.h **** 	bool csPolarity;
  60:../libraries/Storage/../SharedSpi/SharedSpi.h **** 	uint8_t bitsPerTransferControl;
  61:../libraries/Storage/../SharedSpi/SharedSpi.h **** 	uint8_t spiMode;
  62:../libraries/Storage/../SharedSpi/SharedSpi.h **** 	uint32_t clockFrequency;
  63:../libraries/Storage/../SharedSpi/SharedSpi.h **** };
  64:../libraries/Storage/../SharedSpi/SharedSpi.h **** 
  65:../libraries/Storage/../SharedSpi/SharedSpi.h **** #ifdef __cplusplus
  66:../libraries/Storage/../SharedSpi/SharedSpi.h **** // Use C linkage because these functions are called from the ASF SPI SD card code
  67:../libraries/Storage/../SharedSpi/SharedSpi.h **** extern "C" {
  68:../libraries/Storage/../SharedSpi/SharedSpi.h **** #endif
  69:../libraries/Storage/../SharedSpi/SharedSpi.h **** 
  70:../libraries/Storage/../SharedSpi/SharedSpi.h **** /** \brief Initialize the SPI in master mode.
  71:../libraries/Storage/../SharedSpi/SharedSpi.h ****  *
  72:../libraries/Storage/../SharedSpi/SharedSpi.h ****  */
  73:../libraries/Storage/../SharedSpi/SharedSpi.h **** extern void sspi_master_init(struct sspi_device *device, uint32_t bits);
  74:../libraries/Storage/../SharedSpi/SharedSpi.h **** 
  75:../libraries/Storage/../SharedSpi/SharedSpi.h **** /**
  76:../libraries/Storage/../SharedSpi/SharedSpi.h ****  * \brief Set up an SPI device.
  77:../libraries/Storage/../SharedSpi/SharedSpi.h ****  *
  78:../libraries/Storage/../SharedSpi/SharedSpi.h ****  * The returned device descriptor structure must be passed to the driver
  79:../libraries/Storage/../SharedSpi/SharedSpi.h ****  * whenever that device should be used as current slave device.
  80:../libraries/Storage/../SharedSpi/SharedSpi.h ****  *
  81:../libraries/Storage/../SharedSpi/SharedSpi.h ****  * \param device    Pointer to SPI device struct that should be initialized.
ARM GAS  /tmp/ccbxFcRO.s 			page 7


  82:../libraries/Storage/../SharedSpi/SharedSpi.h ****  */
  83:../libraries/Storage/../SharedSpi/SharedSpi.h **** extern void sspi_master_setup_device(const struct sspi_device *device);
  84:../libraries/Storage/../SharedSpi/SharedSpi.h **** 
  85:../libraries/Storage/../SharedSpi/SharedSpi.h **** /**
  86:../libraries/Storage/../SharedSpi/SharedSpi.h ****  * \brief Select the given device on the SPI bus.
  87:../libraries/Storage/../SharedSpi/SharedSpi.h ****  *
  88:../libraries/Storage/../SharedSpi/SharedSpi.h ****  * Set device specific setting and call board chip select.
  89:../libraries/Storage/../SharedSpi/SharedSpi.h ****  *
  90:../libraries/Storage/../SharedSpi/SharedSpi.h ****  * \param device SPI device.
  91:../libraries/Storage/../SharedSpi/SharedSpi.h ****  *
  92:../libraries/Storage/../SharedSpi/SharedSpi.h ****  */
  93:../libraries/Storage/../SharedSpi/SharedSpi.h **** extern void sspi_select_device(const struct sspi_device *device);
  94:../libraries/Storage/../SharedSpi/SharedSpi.h **** 
  95:../libraries/Storage/../SharedSpi/SharedSpi.h **** /**
  96:../libraries/Storage/../SharedSpi/SharedSpi.h ****  * \brief Deselect the given device on the SPI bus.
  97:../libraries/Storage/../SharedSpi/SharedSpi.h ****  *
  98:../libraries/Storage/../SharedSpi/SharedSpi.h ****  * Call board chip deselect.
  99:../libraries/Storage/../SharedSpi/SharedSpi.h ****  *
 100:../libraries/Storage/../SharedSpi/SharedSpi.h ****  * \param device SPI device.
 101:../libraries/Storage/../SharedSpi/SharedSpi.h ****  *
 102:../libraries/Storage/../SharedSpi/SharedSpi.h ****  * \pre SPI device must be selected with spi_select_device() first and in 8-bit data mode.
 103:../libraries/Storage/../SharedSpi/SharedSpi.h ****  */
 104:../libraries/Storage/../SharedSpi/SharedSpi.h **** extern void sspi_deselect_device(const struct sspi_device *device);
 105:../libraries/Storage/../SharedSpi/SharedSpi.h **** 
 106:../libraries/Storage/../SharedSpi/SharedSpi.h **** /**
 107:../libraries/Storage/../SharedSpi/SharedSpi.h ****  * \brief Send and receive a sequence of bytes from the shared SPI device.
 108:../libraries/Storage/../SharedSpi/SharedSpi.h ****  *
 109:../libraries/Storage/../SharedSpi/SharedSpi.h ****  * \param tx_data   Data buffer to send.
 110:../libraries/Storage/../SharedSpi/SharedSpi.h ****  * \param rx_data   Data buffer to read.
 111:../libraries/Storage/../SharedSpi/SharedSpi.h ****  * \param len       Length of data to be read.
 112:../libraries/Storage/../SharedSpi/SharedSpi.h ****  *
 113:../libraries/Storage/../SharedSpi/SharedSpi.h ****  * \pre SPI device must be selected with spi_select_device() first.
 114:../libraries/Storage/../SharedSpi/SharedSpi.h ****  */
 115:../libraries/Storage/../SharedSpi/SharedSpi.h **** spi_status_t sspi_transceive_packet(const uint8_t *tx_data, uint8_t *rx_data, size_t len);
 116:../libraries/Storage/../SharedSpi/SharedSpi.h **** 
 117:../libraries/Storage/../SharedSpi/SharedSpi.h **** // Receive a packet
 118:../libraries/Storage/../SharedSpi/SharedSpi.h **** static inline spi_status_t sspi_read_packet(uint8_t *buf, size_t len)
 119:../libraries/Storage/../SharedSpi/SharedSpi.h **** {
 120:../libraries/Storage/../SharedSpi/SharedSpi.h **** 	return sspi_transceive_packet(NULL, buf, len);
 121:../libraries/Storage/../SharedSpi/SharedSpi.h **** }
 122:../libraries/Storage/../SharedSpi/SharedSpi.h **** 
 123:../libraries/Storage/../SharedSpi/SharedSpi.h **** // Send a packet
 124:../libraries/Storage/../SharedSpi/SharedSpi.h **** static inline spi_status_t sspi_write_packet(uint8_t *buf, size_t len)
 125:../libraries/Storage/../SharedSpi/SharedSpi.h **** {
 126:../libraries/Storage/../SharedSpi/SharedSpi.h **** 	return sspi_transceive_packet(buf, NULL, len);
  41              		.loc 2 126 0
  42 0006 0122     		movs	r2, #1
  43 0008 0021     		movs	r1, #0
  44              	.LBE65:
  45              	.LBE64:
  46              		.loc 1 221 0
  47 000a 02A8     		add	r0, sp, #8
  48 000c 00F8023D 		strb	r3, [r0, #-2]!
  49              	.LVL0:
  50              	.LBB67:
  51              	.LBB66:
  52              		.loc 2 126 0
ARM GAS  /tmp/ccbxFcRO.s 			page 8


  53 0010 FFF7FEFF 		bl	sspi_transceive_packet
  54              	.LVL1:
  55              	.LBE66:
  56              	.LBE67:
 222:../libraries/Storage/sd_mmc_spi.c **** 	Assert(!(sd_mmc_spi_transfert_pos % sd_mmc_spi_block_size));
 223:../libraries/Storage/sd_mmc_spi.c **** 	// Delay before start write block:
 224:../libraries/Storage/sd_mmc_spi.c **** 	// Nwr timing minimum = 8 cycles
 225:../libraries/Storage/sd_mmc_spi.c **** 	sspi_write_packet(&dummy, 1);
 226:../libraries/Storage/sd_mmc_spi.c **** 	// Send start token
 227:../libraries/Storage/sd_mmc_spi.c **** 	uint8_t token;
 228:../libraries/Storage/sd_mmc_spi.c **** 	if (1 == sd_mmc_spi_nb_block) {
  57              		.loc 1 228 0
  58 0014 084B     		ldr	r3, .L6
  59              	.LBB68:
  60              	.LBB69:
  61              		.loc 2 126 0
  62 0016 0122     		movs	r2, #1
  63 0018 0021     		movs	r1, #0
  64              	.LBE69:
  65              	.LBE68:
  66              		.loc 1 228 0
  67 001a 1B88     		ldrh	r3, [r3]
  68              	.LBB72:
  69              	.LBB70:
  70              		.loc 2 126 0
  71 001c 0DF10700 		add	r0, sp, #7
  72              	.LVL2:
  73              	.LBE70:
  74              	.LBE72:
  75              		.loc 1 228 0
  76 0020 012B     		cmp	r3, #1
 229:../libraries/Storage/sd_mmc_spi.c **** 		token = SPI_TOKEN_SINGLE_WRITE;
  77              		.loc 1 229 0
  78 0022 0CBF     		ite	eq
  79 0024 FE23     		moveq	r3, #254
 230:../libraries/Storage/sd_mmc_spi.c **** 	} else {
 231:../libraries/Storage/sd_mmc_spi.c **** 		token = SPI_TOKEN_MULTI_WRITE;
  80              		.loc 1 231 0
  81 0026 FC23     		movne	r3, #252
  82 0028 8DF80730 		strb	r3, [sp, #7]
  83              	.LBB73:
  84              	.LBB71:
  85              		.loc 2 126 0
  86 002c FFF7FEFF 		bl	sspi_transceive_packet
  87              	.LVL3:
  88              	.LBE71:
  89              	.LBE73:
 232:../libraries/Storage/sd_mmc_spi.c **** 	}
 233:../libraries/Storage/sd_mmc_spi.c **** 	sspi_write_packet(&token, 1);
 234:../libraries/Storage/sd_mmc_spi.c **** }
  90              		.loc 1 234 0
  91 0030 03B0     		add	sp, sp, #12
  92              		.cfi_def_cfa_offset 4
  93              		@ sp needed
  94 0032 5DF804FB 		ldr	pc, [sp], #4
  95              	.L7:
  96 0036 00BF     		.align	2
ARM GAS  /tmp/ccbxFcRO.s 			page 9


  97              	.L6:
  98 0038 00000000 		.word	.LANCHOR0
  99              		.cfi_endproc
 100              	.LFE237:
 101              		.size	sd_mmc_spi_start_write_block, .-sd_mmc_spi_start_write_block
 102              		.section	.text.sd_mmc_spi_wait_busy,"ax",%progbits
 103              		.align	1
 104              		.p2align 2,,3
 105              		.syntax unified
 106              		.thumb
 107              		.thumb_func
 108              		.fpu fpv5-d16
 109              		.type	sd_mmc_spi_wait_busy, %function
 110              	sd_mmc_spi_wait_busy:
 111              	.LFB234:
 133:../libraries/Storage/sd_mmc_spi.c **** 	uint8_t line = 0xFF;
 112              		.loc 1 133 0
 113              		.cfi_startproc
 114              		@ args = 0, pretend = 0, frame = 8
 115              		@ frame_needed = 0, uses_anonymous_args = 0
 116 0000 30B5     		push	{r4, r5, lr}
 117              		.cfi_def_cfa_offset 12
 118              		.cfi_offset 4, -12
 119              		.cfi_offset 5, -8
 120              		.cfi_offset 14, -4
 121 0002 83B0     		sub	sp, sp, #12
 122              		.cfi_def_cfa_offset 24
 134:../libraries/Storage/sd_mmc_spi.c **** 
 123              		.loc 1 134 0
 124 0004 FF23     		movs	r3, #255
 125              	.LBB74:
 126              	.LBB75:
 120:../libraries/Storage/../SharedSpi/SharedSpi.h **** }
 127              		.loc 2 120 0
 128 0006 0122     		movs	r2, #1
 129 0008 0020     		movs	r0, #0
 130              	.LBE75:
 131              	.LBE74:
 134:../libraries/Storage/sd_mmc_spi.c **** 
 132              		.loc 1 134 0
 133 000a 02AD     		add	r5, sp, #8
 134              	.LBB77:
 135              	.LBB78:
 120:../libraries/Storage/../SharedSpi/SharedSpi.h **** }
 136              		.loc 2 120 0
 137 000c 104C     		ldr	r4, .L14
 138              	.LBE78:
 139              	.LBE77:
 134:../libraries/Storage/sd_mmc_spi.c **** 
 140              		.loc 1 134 0
 141 000e 05F8013D 		strb	r3, [r5, #-1]!
 142              	.LVL4:
 143              	.LBB81:
 144              	.LBB76:
 120:../libraries/Storage/../SharedSpi/SharedSpi.h **** }
 145              		.loc 2 120 0
 146 0012 2946     		mov	r1, r5
ARM GAS  /tmp/ccbxFcRO.s 			page 10


 147 0014 FFF7FEFF 		bl	sspi_transceive_packet
 148              	.LVL5:
 149              	.LBE76:
 150              	.LBE81:
 151              	.LBB82:
 152              	.LBB83:
 153 0018 2946     		mov	r1, r5
 154 001a 0122     		movs	r2, #1
 155 001c 0020     		movs	r0, #0
 156 001e FFF7FEFF 		bl	sspi_transceive_packet
 157              	.LVL6:
 158              	.LBE83:
 159              	.LBE82:
 160              	.LBB84:
 161              	.LBB79:
 162 0022 2946     		mov	r1, r5
 163 0024 0122     		movs	r2, #1
 164 0026 0020     		movs	r0, #0
 165 0028 FFF7FEFF 		bl	sspi_transceive_packet
 166              	.LVL7:
 167 002c 03E0     		b	.L9
 168              	.LVL8:
 169              	.L11:
 170 002e FFF7FEFF 		bl	sspi_transceive_packet
 171              	.LVL9:
 172              	.LBE79:
 173              	.LBE84:
 150:../libraries/Storage/sd_mmc_spi.c **** 			return false;
 174              		.loc 1 150 0
 175 0032 013C     		subs	r4, r4, #1
 176              	.LVL10:
 177 0034 09D0     		beq	.L12
 178              	.LVL11:
 179              	.L9:
 153:../libraries/Storage/sd_mmc_spi.c **** 	return true;
 180              		.loc 1 153 0
 181 0036 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
 182              	.LBB85:
 183              	.LBB80:
 120:../libraries/Storage/../SharedSpi/SharedSpi.h **** }
 184              		.loc 2 120 0
 185 003a 0122     		movs	r2, #1
 186 003c 2946     		mov	r1, r5
 187 003e 0020     		movs	r0, #0
 188              	.LBE80:
 189              	.LBE85:
 153:../libraries/Storage/sd_mmc_spi.c **** 	return true;
 190              		.loc 1 153 0
 191 0040 FF2B     		cmp	r3, #255
 192 0042 F4D1     		bne	.L11
 154:../libraries/Storage/sd_mmc_spi.c **** }
 193              		.loc 1 154 0
 194 0044 1046     		mov	r0, r2
 155:../libraries/Storage/sd_mmc_spi.c **** 
 195              		.loc 1 155 0
 196 0046 03B0     		add	sp, sp, #12
 197              		.cfi_remember_state
ARM GAS  /tmp/ccbxFcRO.s 			page 11


 198              		.cfi_def_cfa_offset 12
 199              		@ sp needed
 200 0048 30BD     		pop	{r4, r5, pc}
 201              	.LVL12:
 202              	.L12:
 203              		.cfi_restore_state
 151:../libraries/Storage/sd_mmc_spi.c **** 		}
 204              		.loc 1 151 0
 205 004a 2046     		mov	r0, r4
 155:../libraries/Storage/sd_mmc_spi.c **** 
 206              		.loc 1 155 0
 207 004c 03B0     		add	sp, sp, #12
 208              		.cfi_def_cfa_offset 12
 209              		@ sp needed
 210 004e 30BD     		pop	{r4, r5, pc}
 211              	.LVL13:
 212              	.L15:
 213              		.align	2
 214              	.L14:
 215 0050 400D0300 		.word	200000
 216              		.cfi_endproc
 217              	.LFE234:
 218              		.size	sd_mmc_spi_wait_busy, .-sd_mmc_spi_wait_busy
 219              		.section	.text.sd_mmc_spi_start_read_block,"ax",%progbits
 220              		.align	1
 221              		.p2align 2,,3
 222              		.syntax unified
 223              		.thumb
 224              		.thumb_func
 225              		.fpu fpv5-d16
 226              		.type	sd_mmc_spi_start_read_block, %function
 227              	sd_mmc_spi_start_read_block:
 228              	.LFB235:
 164:../libraries/Storage/sd_mmc_spi.c **** 	uint32_t i;
 229              		.loc 1 164 0
 230              		.cfi_startproc
 231              		@ args = 0, pretend = 0, frame = 8
 232              		@ frame_needed = 0, uses_anonymous_args = 0
 233 0000 30B5     		push	{r4, r5, lr}
 234              		.cfi_def_cfa_offset 12
 235              		.cfi_offset 4, -12
 236              		.cfi_offset 5, -8
 237              		.cfi_offset 14, -4
 238 0002 83B0     		sub	sp, sp, #12
 239              		.cfi_def_cfa_offset 24
 179:../libraries/Storage/sd_mmc_spi.c **** 	i = 500000;
 240              		.loc 1 179 0
 241 0004 0023     		movs	r3, #0
 242 0006 144C     		ldr	r4, .L26
 243 0008 02AD     		add	r5, sp, #8
 244 000a 05F8013D 		strb	r3, [r5, #-1]!
 245              	.LVL14:
 246 000e 03E0     		b	.L17
 247              	.LVL15:
 248              	.L19:
 201:../libraries/Storage/sd_mmc_spi.c **** 
 249              		.loc 1 201 0
ARM GAS  /tmp/ccbxFcRO.s 			page 12


 250 0010 FE2B     		cmp	r3, #254
 251 0012 14D0     		beq	.L24
 182:../libraries/Storage/sd_mmc_spi.c **** 			sd_mmc_spi_err = SD_MMC_SPI_ERR_READ_TIMEOUT;
 252              		.loc 1 182 0
 253 0014 013C     		subs	r4, r4, #1
 254              	.LVL16:
 255 0016 19D0     		beq	.L25
 256              	.LVL17:
 257              	.L17:
 258              	.LBB86:
 259              	.LBB87:
 120:../libraries/Storage/../SharedSpi/SharedSpi.h **** }
 260              		.loc 2 120 0
 261 0018 0122     		movs	r2, #1
 262 001a 2946     		mov	r1, r5
 263 001c 0020     		movs	r0, #0
 264 001e FFF7FEFF 		bl	sspi_transceive_packet
 265              	.LVL18:
 266              	.LBE87:
 267              	.LBE86:
 188:../libraries/Storage/sd_mmc_spi.c **** 			Assert(SPI_TOKEN_DATA_ERROR_ERRORS & token);
 268              		.loc 1 188 0
 269 0022 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
 270 0026 13F0F002 		ands	r2, r3, #240
 271 002a F1D1     		bne	.L19
 190:../libraries/Storage/sd_mmc_spi.c **** 					| SPI_TOKEN_DATA_ERROR_ECC_ERROR
 272              		.loc 1 190 0
 273 002c 13F00700 		ands	r0, r3, #7
 194:../libraries/Storage/sd_mmc_spi.c **** 			} else {
 274              		.loc 1 194 0
 275 0030 0A4B     		ldr	r3, .L26+4
 190:../libraries/Storage/sd_mmc_spi.c **** 					| SPI_TOKEN_DATA_ERROR_ECC_ERROR
 276              		.loc 1 190 0
 277 0032 07D0     		beq	.L20
 194:../libraries/Storage/sd_mmc_spi.c **** 			} else {
 278              		.loc 1 194 0
 279 0034 0721     		movs	r1, #7
 199:../libraries/Storage/sd_mmc_spi.c **** 		}
 280              		.loc 1 199 0
 281 0036 1046     		mov	r0, r2
 194:../libraries/Storage/sd_mmc_spi.c **** 			} else {
 282              		.loc 1 194 0
 283 0038 1970     		strb	r1, [r3]
 204:../libraries/Storage/sd_mmc_spi.c **** 
 284              		.loc 1 204 0
 285 003a 03B0     		add	sp, sp, #12
 286              		.cfi_remember_state
 287              		.cfi_def_cfa_offset 12
 288              		@ sp needed
 289 003c 30BD     		pop	{r4, r5, pc}
 290              	.LVL19:
 291              	.L24:
 292              		.cfi_restore_state
 203:../libraries/Storage/sd_mmc_spi.c **** }
 293              		.loc 1 203 0
 294 003e 0120     		movs	r0, #1
 204:../libraries/Storage/sd_mmc_spi.c **** 
ARM GAS  /tmp/ccbxFcRO.s 			page 13


 295              		.loc 1 204 0
 296 0040 03B0     		add	sp, sp, #12
 297              		.cfi_remember_state
 298              		.cfi_def_cfa_offset 12
 299              		@ sp needed
 300 0042 30BD     		pop	{r4, r5, pc}
 301              	.LVL20:
 302              	.L20:
 303              		.cfi_restore_state
 197:../libraries/Storage/sd_mmc_spi.c **** 			}
 304              		.loc 1 197 0
 305 0044 0B22     		movs	r2, #11
 306 0046 1A70     		strb	r2, [r3]
 204:../libraries/Storage/sd_mmc_spi.c **** 
 307              		.loc 1 204 0
 308 0048 03B0     		add	sp, sp, #12
 309              		.cfi_remember_state
 310              		.cfi_def_cfa_offset 12
 311              		@ sp needed
 312 004a 30BD     		pop	{r4, r5, pc}
 313              	.LVL21:
 314              	.L25:
 315              		.cfi_restore_state
 183:../libraries/Storage/sd_mmc_spi.c **** 			sd_mmc_spi_debug("%s: Read blocks timeout\n\r", __func__);
 316              		.loc 1 183 0
 317 004c 034B     		ldr	r3, .L26+4
 318 004e 0422     		movs	r2, #4
 185:../libraries/Storage/sd_mmc_spi.c **** 		}
 319              		.loc 1 185 0
 320 0050 2046     		mov	r0, r4
 183:../libraries/Storage/sd_mmc_spi.c **** 			sd_mmc_spi_debug("%s: Read blocks timeout\n\r", __func__);
 321              		.loc 1 183 0
 322 0052 1A70     		strb	r2, [r3]
 204:../libraries/Storage/sd_mmc_spi.c **** 
 323              		.loc 1 204 0
 324 0054 03B0     		add	sp, sp, #12
 325              		.cfi_def_cfa_offset 12
 326              		@ sp needed
 327 0056 30BD     		pop	{r4, r5, pc}
 328              	.LVL22:
 329              	.L27:
 330              		.align	2
 331              	.L26:
 332 0058 20A10700 		.word	500000
 333 005c 00000000 		.word	.LANCHOR1
 334              		.cfi_endproc
 335              	.LFE235:
 336              		.size	sd_mmc_spi_start_read_block, .-sd_mmc_spi_start_read_block
 337              		.section	.text.sd_mmc_spi_stop_write_block,"ax",%progbits
 338              		.align	1
 339              		.p2align 2,,3
 340              		.syntax unified
 341              		.thumb
 342              		.thumb_func
 343              		.fpu fpv5-d16
 344              		.type	sd_mmc_spi_stop_write_block, %function
 345              	sd_mmc_spi_stop_write_block:
ARM GAS  /tmp/ccbxFcRO.s 			page 14


 346              	.LFB238:
 235:../libraries/Storage/sd_mmc_spi.c **** 
 236:../libraries/Storage/sd_mmc_spi.c **** /**
 237:../libraries/Storage/sd_mmc_spi.c ****  * \brief Waits the TOKEN which notify the end of write block transfer
 238:../libraries/Storage/sd_mmc_spi.c ****  *
 239:../libraries/Storage/sd_mmc_spi.c ****  * \return true if success, otherwise false
 240:../libraries/Storage/sd_mmc_spi.c ****  *         with a update of \ref sd_mmc_spi_err.
 241:../libraries/Storage/sd_mmc_spi.c ****  */
 242:../libraries/Storage/sd_mmc_spi.c **** static bool sd_mmc_spi_stop_write_block(void)
 243:../libraries/Storage/sd_mmc_spi.c **** {
 347              		.loc 1 243 0
 348              		.cfi_startproc
 349              		@ args = 0, pretend = 0, frame = 8
 350              		@ frame_needed = 0, uses_anonymous_args = 0
 351 0000 00B5     		push	{lr}
 352              		.cfi_def_cfa_offset 4
 353              		.cfi_offset 14, -4
 354 0002 83B0     		sub	sp, sp, #12
 355              		.cfi_def_cfa_offset 16
 244:../libraries/Storage/sd_mmc_spi.c **** 	uint8_t resp;
 245:../libraries/Storage/sd_mmc_spi.c **** 	uint16_t crc;
 246:../libraries/Storage/sd_mmc_spi.c **** 
 247:../libraries/Storage/sd_mmc_spi.c **** 	// Send CRC
 248:../libraries/Storage/sd_mmc_spi.c **** 	crc = 0xFFFF; /// CRC is disabled in SPI mode
 356              		.loc 1 248 0
 357 0004 4FF6FF73 		movw	r3, #65535
 358              	.LBB88:
 359              	.LBB89:
 360              		.loc 2 126 0
 361 0008 0222     		movs	r2, #2
 362 000a 0021     		movs	r1, #0
 363              	.LBE89:
 364              	.LBE88:
 365              		.loc 1 248 0
 366 000c 02A8     		add	r0, sp, #8
 367 000e 20F8023D 		strh	r3, [r0, #-2]!	@ movhi
 368              	.LVL23:
 369              	.LBB91:
 370              	.LBB90:
 371              		.loc 2 126 0
 372 0012 FFF7FEFF 		bl	sspi_transceive_packet
 373              	.LVL24:
 374              	.LBE90:
 375              	.LBE91:
 376              	.LBB92:
 377              	.LBB93:
 120:../libraries/Storage/../SharedSpi/SharedSpi.h **** }
 378              		.loc 2 120 0
 379 0016 0122     		movs	r2, #1
 380 0018 0DF10501 		add	r1, sp, #5
 381              	.LVL25:
 382 001c 0020     		movs	r0, #0
 383 001e FFF7FEFF 		bl	sspi_transceive_packet
 384              	.LVL26:
 385              	.LBE93:
 386              	.LBE92:
 249:../libraries/Storage/sd_mmc_spi.c **** 	sspi_write_packet((uint8_t *)&crc, 2);
ARM GAS  /tmp/ccbxFcRO.s 			page 15


 250:../libraries/Storage/sd_mmc_spi.c **** 	// Receive data response token
 251:../libraries/Storage/sd_mmc_spi.c **** 	sspi_read_packet(&resp, 1);
 252:../libraries/Storage/sd_mmc_spi.c **** 	if (!SPI_TOKEN_DATA_RESP_VALID(resp)) {
 387              		.loc 1 252 0
 388 0022 9DF80530 		ldrb	r3, [sp, #5]	@ zero_extendqisi2
 389 0026 03F01100 		and	r0, r3, #17
 390 002a 0128     		cmp	r0, #1
 391 002c 06D0     		beq	.L29
 253:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_err = SD_MMC_SPI_ERR;
 392              		.loc 1 253 0
 393 002e 0B4B     		ldr	r3, .L36
 394 0030 0122     		movs	r2, #1
 254:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_debug("%s: Invalid Data Response Token 0x%x\n\r", __func__, resp);
 255:../libraries/Storage/sd_mmc_spi.c **** 		return false;
 395              		.loc 1 255 0
 396 0032 0020     		movs	r0, #0
 253:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_err = SD_MMC_SPI_ERR;
 397              		.loc 1 253 0
 398 0034 1A70     		strb	r2, [r3]
 399              	.L30:
 256:../libraries/Storage/sd_mmc_spi.c **** 	}
 257:../libraries/Storage/sd_mmc_spi.c **** 	// Check data response
 258:../libraries/Storage/sd_mmc_spi.c **** 	switch (SPI_TOKEN_DATA_RESP_CODE(resp)) {
 259:../libraries/Storage/sd_mmc_spi.c **** 	case SPI_TOKEN_DATA_RESP_ACCEPTED:
 260:../libraries/Storage/sd_mmc_spi.c **** 		break;
 261:../libraries/Storage/sd_mmc_spi.c **** 	case SPI_TOKEN_DATA_RESP_CRC_ERR:
 262:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_err = SD_MMC_SPI_ERR_WRITE_CRC;
 263:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_debug("%s: Write blocks, SD_MMC_SPI_ERR_CRC, resp 0x%x\n\r", __func__, resp);
 264:../libraries/Storage/sd_mmc_spi.c **** 		return false;
 265:../libraries/Storage/sd_mmc_spi.c **** 	case SPI_TOKEN_DATA_RESP_WRITE_ERR:
 266:../libraries/Storage/sd_mmc_spi.c **** 	default:
 267:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_err = SD_MMC_SPI_ERR_WRITE;
 268:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_debug("%s: Write blocks SD_MMC_SPI_ERR_WR, resp 0x%x\n\r", __func__, resp);
 269:../libraries/Storage/sd_mmc_spi.c **** 		return false;
 270:../libraries/Storage/sd_mmc_spi.c **** 	}
 271:../libraries/Storage/sd_mmc_spi.c **** 	return true;
 272:../libraries/Storage/sd_mmc_spi.c **** }
 400              		.loc 1 272 0
 401 0036 03B0     		add	sp, sp, #12
 402              		.cfi_remember_state
 403              		.cfi_def_cfa_offset 4
 404              		@ sp needed
 405 0038 5DF804FB 		ldr	pc, [sp], #4
 406              	.L29:
 407              		.cfi_restore_state
 258:../libraries/Storage/sd_mmc_spi.c **** 	case SPI_TOKEN_DATA_RESP_ACCEPTED:
 408              		.loc 1 258 0
 409 003c 03F01E03 		and	r3, r3, #30
 410 0040 042B     		cmp	r3, #4
 411 0042 F8D0     		beq	.L30
 412 0044 0A2B     		cmp	r3, #10
 269:../libraries/Storage/sd_mmc_spi.c **** 	}
 413              		.loc 1 269 0
 414 0046 4FF00000 		mov	r0, #0
 262:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_debug("%s: Write blocks, SD_MMC_SPI_ERR_CRC, resp 0x%x\n\r", __func__, resp);
 415              		.loc 1 262 0
 416 004a 044B     		ldr	r3, .L36
ARM GAS  /tmp/ccbxFcRO.s 			page 16


 417 004c 0CBF     		ite	eq
 418 004e 0822     		moveq	r2, #8
 267:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_debug("%s: Write blocks SD_MMC_SPI_ERR_WR, resp 0x%x\n\r", __func__, resp);
 419              		.loc 1 267 0
 420 0050 0A22     		movne	r2, #10
 421 0052 1A70     		strb	r2, [r3]
 422              		.loc 1 272 0
 423 0054 03B0     		add	sp, sp, #12
 424              		.cfi_def_cfa_offset 4
 425              		@ sp needed
 426 0056 5DF804FB 		ldr	pc, [sp], #4
 427              	.L37:
 428 005a 00BF     		.align	2
 429              	.L36:
 430 005c 00000000 		.word	.LANCHOR1
 431              		.cfi_endproc
 432              	.LFE238:
 433              		.size	sd_mmc_spi_stop_write_block, .-sd_mmc_spi_stop_write_block
 434              		.section	.text.sd_mmc_spi_stop_multiwrite_block,"ax",%progbits
 435              		.align	1
 436              		.p2align 2,,3
 437              		.syntax unified
 438              		.thumb
 439              		.thumb_func
 440              		.fpu fpv5-d16
 441              		.type	sd_mmc_spi_stop_multiwrite_block, %function
 442              	sd_mmc_spi_stop_multiwrite_block:
 443              	.LFB239:
 273:../libraries/Storage/sd_mmc_spi.c **** 
 274:../libraries/Storage/sd_mmc_spi.c **** /**
 275:../libraries/Storage/sd_mmc_spi.c ****  * \brief Executed the end of a multi blocks write transfer
 276:../libraries/Storage/sd_mmc_spi.c ****  *
 277:../libraries/Storage/sd_mmc_spi.c ****  * \return true if success, otherwise false
 278:../libraries/Storage/sd_mmc_spi.c ****  *         with a update of \ref sd_mmc_spi_err.
 279:../libraries/Storage/sd_mmc_spi.c ****  */
 280:../libraries/Storage/sd_mmc_spi.c **** static bool sd_mmc_spi_stop_multiwrite_block(void)
 281:../libraries/Storage/sd_mmc_spi.c **** {
 444              		.loc 1 281 0
 445              		.cfi_startproc
 446              		@ args = 0, pretend = 0, frame = 8
 447              		@ frame_needed = 0, uses_anonymous_args = 0
 282:../libraries/Storage/sd_mmc_spi.c **** 	uint8_t value;
 283:../libraries/Storage/sd_mmc_spi.c **** 
 284:../libraries/Storage/sd_mmc_spi.c **** 	if (1 == sd_mmc_spi_nb_block) {
 448              		.loc 1 284 0
 449 0000 144B     		ldr	r3, .L48
 450 0002 1888     		ldrh	r0, [r3]
 451 0004 0128     		cmp	r0, #1
 452 0006 09D0     		beq	.L44
 285:../libraries/Storage/sd_mmc_spi.c **** 		return true; // Single block write
 286:../libraries/Storage/sd_mmc_spi.c **** 	}
 287:../libraries/Storage/sd_mmc_spi.c **** 	if (sd_mmc_spi_nb_block > (sd_mmc_spi_transfert_pos / sd_mmc_spi_block_size)) {
 453              		.loc 1 287 0
 454 0008 134B     		ldr	r3, .L48+4
 455 000a 144A     		ldr	r2, .L48+8
 456 000c 1B68     		ldr	r3, [r3]
 457 000e 1288     		ldrh	r2, [r2]
ARM GAS  /tmp/ccbxFcRO.s 			page 17


 458 0010 B3FBF2F3 		udiv	r3, r3, r2
 459 0014 9842     		cmp	r0, r3
 460 0016 02D9     		bls	.L47
 285:../libraries/Storage/sd_mmc_spi.c **** 		return true; // Single block write
 461              		.loc 1 285 0
 462 0018 0120     		movs	r0, #1
 463 001a 7047     		bx	lr
 464              	.L44:
 288:../libraries/Storage/sd_mmc_spi.c **** 		return true; // It is not the End of multi write
 289:../libraries/Storage/sd_mmc_spi.c **** 	}
 290:../libraries/Storage/sd_mmc_spi.c **** 
 291:../libraries/Storage/sd_mmc_spi.c **** 	// Delay before start write block:
 292:../libraries/Storage/sd_mmc_spi.c **** 	// Nwr timing minimum = 8 cylces
 293:../libraries/Storage/sd_mmc_spi.c **** 	value = 0xFF;
 294:../libraries/Storage/sd_mmc_spi.c **** 	sspi_write_packet(&value, 1);
 295:../libraries/Storage/sd_mmc_spi.c **** 	// Send stop token
 296:../libraries/Storage/sd_mmc_spi.c **** 	value = SPI_TOKEN_STOP_TRAN;
 297:../libraries/Storage/sd_mmc_spi.c **** 	sspi_write_packet(&value, 1);
 298:../libraries/Storage/sd_mmc_spi.c **** 	// Wait busy
 299:../libraries/Storage/sd_mmc_spi.c **** 	if (!sd_mmc_spi_wait_busy()) {
 300:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_err = SD_MMC_SPI_ERR_WRITE_TIMEOUT;
 301:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_debug("%s: Stop write blocks timeout\n\r", __func__);
 302:../libraries/Storage/sd_mmc_spi.c **** 		return false;
 303:../libraries/Storage/sd_mmc_spi.c **** 	}
 304:../libraries/Storage/sd_mmc_spi.c **** 	return true;
 305:../libraries/Storage/sd_mmc_spi.c **** }
 465              		.loc 1 305 0
 466 001c 7047     		bx	lr
 467              	.L47:
 281:../libraries/Storage/sd_mmc_spi.c **** 	uint8_t value;
 468              		.loc 1 281 0
 469 001e 10B5     		push	{r4, lr}
 470              		.cfi_def_cfa_offset 8
 471              		.cfi_offset 4, -8
 472              		.cfi_offset 14, -4
 473 0020 82B0     		sub	sp, sp, #8
 474              		.cfi_def_cfa_offset 16
 475              	.LBB100:
 476              	.LBB101:
 293:../libraries/Storage/sd_mmc_spi.c **** 	sspi_write_packet(&value, 1);
 477              		.loc 1 293 0
 478 0022 FF23     		movs	r3, #255
 479              	.LBB102:
 480              	.LBB103:
 481              		.loc 2 126 0
 482 0024 0122     		movs	r2, #1
 483 0026 0021     		movs	r1, #0
 484              	.LBE103:
 485              	.LBE102:
 293:../libraries/Storage/sd_mmc_spi.c **** 	sspi_write_packet(&value, 1);
 486              		.loc 1 293 0
 487 0028 02AC     		add	r4, sp, #8
 488 002a 04F8013D 		strb	r3, [r4, #-1]!
 489              	.LVL27:
 490              	.LBB105:
 491              	.LBB104:
 492              		.loc 2 126 0
ARM GAS  /tmp/ccbxFcRO.s 			page 18


 493 002e 2046     		mov	r0, r4
 494 0030 FFF7FEFF 		bl	sspi_transceive_packet
 495              	.LVL28:
 496              	.LBE104:
 497              	.LBE105:
 296:../libraries/Storage/sd_mmc_spi.c **** 	sspi_write_packet(&value, 1);
 498              		.loc 1 296 0
 499 0034 FD23     		movs	r3, #253
 500              	.LBB106:
 501              	.LBB107:
 502              		.loc 2 126 0
 503 0036 0122     		movs	r2, #1
 504 0038 0021     		movs	r1, #0
 505 003a 2046     		mov	r0, r4
 506              	.LBE107:
 507              	.LBE106:
 296:../libraries/Storage/sd_mmc_spi.c **** 	sspi_write_packet(&value, 1);
 508              		.loc 1 296 0
 509 003c 8DF80730 		strb	r3, [sp, #7]
 510              	.LVL29:
 511              	.LBB109:
 512              	.LBB108:
 513              		.loc 2 126 0
 514 0040 FFF7FEFF 		bl	sspi_transceive_packet
 515              	.LVL30:
 516              	.LBE108:
 517              	.LBE109:
 299:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_err = SD_MMC_SPI_ERR_WRITE_TIMEOUT;
 518              		.loc 1 299 0
 519 0044 FFF7FEFF 		bl	sd_mmc_spi_wait_busy
 520              	.LVL31:
 521 0048 10B9     		cbnz	r0, .L39
 300:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_debug("%s: Stop write blocks timeout\n\r", __func__);
 522              		.loc 1 300 0
 523 004a 054B     		ldr	r3, .L48+12
 524 004c 0522     		movs	r2, #5
 525 004e 1A70     		strb	r2, [r3]
 526              	.L39:
 527              	.LBE101:
 528              	.LBE100:
 529              		.loc 1 305 0
 530 0050 02B0     		add	sp, sp, #8
 531              		.cfi_def_cfa_offset 8
 532              		@ sp needed
 533 0052 10BD     		pop	{r4, pc}
 534              	.L49:
 535              		.align	2
 536              	.L48:
 537 0054 00000000 		.word	.LANCHOR0
 538 0058 00000000 		.word	.LANCHOR2
 539 005c 00000000 		.word	.LANCHOR3
 540 0060 00000000 		.word	.LANCHOR1
 541              		.cfi_endproc
 542              	.LFE239:
 543              		.size	sd_mmc_spi_stop_multiwrite_block, .-sd_mmc_spi_stop_multiwrite_block
 544              		.section	.text.spi_mmc_get_speed,"ax",%progbits
 545              		.align	1
ARM GAS  /tmp/ccbxFcRO.s 			page 19


 546              		.p2align 2,,3
 547              		.global	spi_mmc_get_speed
 548              		.syntax unified
 549              		.thumb
 550              		.thumb_func
 551              		.fpu fpv5-d16
 552              		.type	spi_mmc_get_speed, %function
 553              	spi_mmc_get_speed:
 554              	.LFB240:
 306:../libraries/Storage/sd_mmc_spi.c **** 
 307:../libraries/Storage/sd_mmc_spi.c **** 
 308:../libraries/Storage/sd_mmc_spi.c **** //-------------------------------------------------------------------
 309:../libraries/Storage/sd_mmc_spi.c **** //--------------------- PUBLIC FUNCTIONS ----------------------------
 310:../libraries/Storage/sd_mmc_spi.c **** 
 311:../libraries/Storage/sd_mmc_spi.c **** #if 1	//dc42
 312:../libraries/Storage/sd_mmc_spi.c **** 
 313:../libraries/Storage/sd_mmc_spi.c **** // Get the speed of the SPI SD card interface for reporting purposes, in bytes/sec
 314:../libraries/Storage/sd_mmc_spi.c **** uint32_t spi_mmc_get_speed(void)
 315:../libraries/Storage/sd_mmc_spi.c **** {
 555              		.loc 1 315 0
 556              		.cfi_startproc
 557              		@ args = 0, pretend = 0, frame = 0
 558              		@ frame_needed = 0, uses_anonymous_args = 0
 559              		@ link register save eliminated.
 316:../libraries/Storage/sd_mmc_spi.c **** 	return SD_MMC_SPI_MAX_CLOCK/8;
 317:../libraries/Storage/sd_mmc_spi.c **** }
 560              		.loc 1 317 0
 561 0000 0048     		ldr	r0, .L51
 562 0002 7047     		bx	lr
 563              	.L52:
 564              		.align	2
 565              	.L51:
 566 0004 20A10700 		.word	500000
 567              		.cfi_endproc
 568              	.LFE240:
 569              		.size	spi_mmc_get_speed, .-spi_mmc_get_speed
 570              		.section	.text.sd_mmc_spi_set_idle_func,"ax",%progbits
 571              		.align	1
 572              		.p2align 2,,3
 573              		.global	sd_mmc_spi_set_idle_func
 574              		.syntax unified
 575              		.thumb
 576              		.thumb_func
 577              		.fpu fpv5-d16
 578              		.type	sd_mmc_spi_set_idle_func, %function
 579              	sd_mmc_spi_set_idle_func:
 580              	.LFB241:
 318:../libraries/Storage/sd_mmc_spi.c **** 
 319:../libraries/Storage/sd_mmc_spi.c **** static spiIdleFunc_t spiIdleFunc = NULL;
 320:../libraries/Storage/sd_mmc_spi.c **** 
 321:../libraries/Storage/sd_mmc_spi.c **** // Set the idle function and return the old one
 322:../libraries/Storage/sd_mmc_spi.c **** spiIdleFunc_t sd_mmc_spi_set_idle_func(spiIdleFunc_t p)
 323:../libraries/Storage/sd_mmc_spi.c **** {
 581              		.loc 1 323 0
 582              		.cfi_startproc
 583              		@ args = 0, pretend = 0, frame = 0
 584              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccbxFcRO.s 			page 20


 585              		@ link register save eliminated.
 586              	.LVL32:
 324:../libraries/Storage/sd_mmc_spi.c **** 	spiIdleFunc_t ret = spiIdleFunc;
 587              		.loc 1 324 0
 588 0000 024B     		ldr	r3, .L54
 589 0002 1A68     		ldr	r2, [r3]
 590              	.LVL33:
 325:../libraries/Storage/sd_mmc_spi.c **** 	spiIdleFunc = p;
 591              		.loc 1 325 0
 592 0004 1860     		str	r0, [r3]
 326:../libraries/Storage/sd_mmc_spi.c **** 	return ret;
 327:../libraries/Storage/sd_mmc_spi.c **** }
 593              		.loc 1 327 0
 594 0006 1046     		mov	r0, r2
 595              	.LVL34:
 596 0008 7047     		bx	lr
 597              	.L55:
 598 000a 00BF     		.align	2
 599              	.L54:
 600 000c 00000000 		.word	.LANCHOR4
 601              		.cfi_endproc
 602              	.LFE241:
 603              		.size	sd_mmc_spi_set_idle_func, .-sd_mmc_spi_set_idle_func
 604              		.section	.text.sd_mmc_spi_get_errno,"ax",%progbits
 605              		.align	1
 606              		.p2align 2,,3
 607              		.global	sd_mmc_spi_get_errno
 608              		.syntax unified
 609              		.thumb
 610              		.thumb_func
 611              		.fpu fpv5-d16
 612              		.type	sd_mmc_spi_get_errno, %function
 613              	sd_mmc_spi_get_errno:
 614              	.LFB242:
 328:../libraries/Storage/sd_mmc_spi.c **** 
 329:../libraries/Storage/sd_mmc_spi.c **** #endif
 330:../libraries/Storage/sd_mmc_spi.c **** 
 331:../libraries/Storage/sd_mmc_spi.c **** sd_mmc_spi_errno_t sd_mmc_spi_get_errno(void)
 332:../libraries/Storage/sd_mmc_spi.c **** {
 615              		.loc 1 332 0
 616              		.cfi_startproc
 617              		@ args = 0, pretend = 0, frame = 0
 618              		@ frame_needed = 0, uses_anonymous_args = 0
 619              		@ link register save eliminated.
 333:../libraries/Storage/sd_mmc_spi.c **** 	return sd_mmc_spi_err;
 620              		.loc 1 333 0
 621 0000 014B     		ldr	r3, .L57
 334:../libraries/Storage/sd_mmc_spi.c **** }
 622              		.loc 1 334 0
 623 0002 1878     		ldrb	r0, [r3]	@ zero_extendqisi2
 624 0004 7047     		bx	lr
 625              	.L58:
 626 0006 00BF     		.align	2
 627              	.L57:
 628 0008 00000000 		.word	.LANCHOR1
 629              		.cfi_endproc
 630              	.LFE242:
ARM GAS  /tmp/ccbxFcRO.s 			page 21


 631              		.size	sd_mmc_spi_get_errno, .-sd_mmc_spi_get_errno
 632              		.section	.text.sd_mmc_spi_init,"ax",%progbits
 633              		.align	1
 634              		.p2align 2,,3
 635              		.global	sd_mmc_spi_init
 636              		.syntax unified
 637              		.thumb
 638              		.thumb_func
 639              		.fpu fpv5-d16
 640              		.type	sd_mmc_spi_init, %function
 641              	sd_mmc_spi_init:
 642              	.LFB243:
 335:../libraries/Storage/sd_mmc_spi.c **** 
 336:../libraries/Storage/sd_mmc_spi.c **** void sd_mmc_spi_init(const Pin csPins[SD_MMC_SPI_MEM_CNT])
 337:../libraries/Storage/sd_mmc_spi.c **** {
 643              		.loc 1 337 0
 644              		.cfi_startproc
 645              		@ args = 0, pretend = 0, frame = 0
 646              		@ frame_needed = 0, uses_anonymous_args = 0
 647              		@ link register save eliminated.
 648              	.LVL35:
 649 0000 30B4     		push	{r4, r5}
 650              		.cfi_def_cfa_offset 8
 651              		.cfi_offset 4, -8
 652              		.cfi_offset 5, -4
 653              	.LBB110:
 338:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_err = SD_MMC_SPI_NO_ERR;
 339:../libraries/Storage/sd_mmc_spi.c **** 
 340:../libraries/Storage/sd_mmc_spi.c **** 	// Initialize SPI interface and enable it
 341:../libraries/Storage/sd_mmc_spi.c **** 	for (size_t i = 0; i < SD_MMC_SPI_MEM_CNT; ++i)
 342:../libraries/Storage/sd_mmc_spi.c **** 	{
 343:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_devices[i].csPin = csPins[i];
 654              		.loc 1 343 0
 655 0002 064B     		ldr	r3, .L61
 656              	.LBE110:
 338:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_err = SD_MMC_SPI_NO_ERR;
 657              		.loc 1 338 0
 658 0004 0022     		movs	r2, #0
 659              	.LBB111:
 660              		.loc 1 343 0
 661 0006 0578     		ldrb	r5, [r0]	@ zero_extendqisi2
 344:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_devices[i].csPolarity = false;
 345:../libraries/Storage/sd_mmc_spi.c **** 		sspi_master_init(&sd_mmc_spi_devices[i], 8);
 662              		.loc 1 345 0
 663 0008 0821     		movs	r1, #8
 664              	.LBE111:
 338:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_err = SD_MMC_SPI_NO_ERR;
 665              		.loc 1 338 0
 666 000a 054C     		ldr	r4, .L61+4
 667              	.LBB112:
 668              		.loc 1 345 0
 669 000c 1846     		mov	r0, r3
 670              	.LVL36:
 343:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_devices[i].csPolarity = false;
 671              		.loc 1 343 0
 672 000e 1D70     		strb	r5, [r3]
 673              	.LBE112:
ARM GAS  /tmp/ccbxFcRO.s 			page 22


 338:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_err = SD_MMC_SPI_NO_ERR;
 674              		.loc 1 338 0
 675 0010 2270     		strb	r2, [r4]
 676              	.LVL37:
 677              	.LBB113:
 344:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_devices[i].csPolarity = false;
 678              		.loc 1 344 0
 679 0012 5A70     		strb	r2, [r3, #1]
 680              	.LBE113:
 346:../libraries/Storage/sd_mmc_spi.c **** 	}
 347:../libraries/Storage/sd_mmc_spi.c **** }
 681              		.loc 1 347 0
 682 0014 30BC     		pop	{r4, r5}
 683              		.cfi_restore 5
 684              		.cfi_restore 4
 685              		.cfi_def_cfa_offset 0
 686              	.LBB114:
 345:../libraries/Storage/sd_mmc_spi.c **** 	}
 687              		.loc 1 345 0
 688 0016 FFF7FEBF 		b	sspi_master_init
 689              	.LVL38:
 690              	.L62:
 691 001a 00BF     		.align	2
 692              	.L61:
 693 001c 00000000 		.word	.LANCHOR5
 694 0020 00000000 		.word	.LANCHOR1
 695              	.LBE114:
 696              		.cfi_endproc
 697              	.LFE243:
 698              		.size	sd_mmc_spi_init, .-sd_mmc_spi_init
 699              		.section	.text.sd_mmc_spi_select_device,"ax",%progbits
 700              		.align	1
 701              		.p2align 2,,3
 702              		.global	sd_mmc_spi_select_device
 703              		.syntax unified
 704              		.thumb
 705              		.thumb_func
 706              		.fpu fpv5-d16
 707              		.type	sd_mmc_spi_select_device, %function
 708              	sd_mmc_spi_select_device:
 709              	.LFB244:
 348:../libraries/Storage/sd_mmc_spi.c **** 
 349:../libraries/Storage/sd_mmc_spi.c **** void sd_mmc_spi_select_device(uint8_t slot, uint32_t clock, uint8_t bus_width, bool high_speed)
 350:../libraries/Storage/sd_mmc_spi.c **** {
 710              		.loc 1 350 0
 711              		.cfi_startproc
 712              		@ args = 0, pretend = 0, frame = 0
 713              		@ frame_needed = 0, uses_anonymous_args = 0
 714              	.LVL39:
 351:../libraries/Storage/sd_mmc_spi.c **** 	UNUSED(bus_width);
 352:../libraries/Storage/sd_mmc_spi.c **** 	UNUSED(high_speed);
 353:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_err = SD_MMC_SPI_NO_ERR;
 354:../libraries/Storage/sd_mmc_spi.c **** 
 355:../libraries/Storage/sd_mmc_spi.c **** #ifdef SD_MMC_SPI_MAX_CLOCK
 356:../libraries/Storage/sd_mmc_spi.c **** 	if (clock > SD_MMC_SPI_MAX_CLOCK) {
 357:../libraries/Storage/sd_mmc_spi.c **** 		clock = SD_MMC_SPI_MAX_CLOCK;
 358:../libraries/Storage/sd_mmc_spi.c **** 	}
ARM GAS  /tmp/ccbxFcRO.s 			page 23


 359:../libraries/Storage/sd_mmc_spi.c **** #endif
 360:../libraries/Storage/sd_mmc_spi.c **** 
 361:../libraries/Storage/sd_mmc_spi.c **** 	struct sspi_device *dev = &sd_mmc_spi_devices[slot];
 362:../libraries/Storage/sd_mmc_spi.c **** 	dev->spiMode = SPI_MODE_0;
 363:../libraries/Storage/sd_mmc_spi.c **** 	dev->clockFrequency = clock;
 715              		.loc 1 363 0
 716 0000 0B4A     		ldr	r2, .L65
 717              	.LVL40:
 361:../libraries/Storage/sd_mmc_spi.c **** 	dev->spiMode = SPI_MODE_0;
 718              		.loc 1 361 0
 719 0002 0C4B     		ldr	r3, .L65+4
 720              	.LVL41:
 721              		.loc 1 363 0
 722 0004 9142     		cmp	r1, r2
 350:../libraries/Storage/sd_mmc_spi.c **** 	UNUSED(bus_width);
 723              		.loc 1 350 0
 724 0006 70B5     		push	{r4, r5, r6, lr}
 725              		.cfi_def_cfa_offset 16
 726              		.cfi_offset 4, -16
 727              		.cfi_offset 5, -12
 728              		.cfi_offset 6, -8
 729              		.cfi_offset 14, -4
 730              		.loc 1 363 0
 731 0008 28BF     		it	cs
 732 000a 1146     		movcs	r1, r2
 733              	.LVL42:
 361:../libraries/Storage/sd_mmc_spi.c **** 	dev->spiMode = SPI_MODE_0;
 734              		.loc 1 361 0
 735 000c 03EBC004 		add	r4, r3, r0, lsl #3
 353:../libraries/Storage/sd_mmc_spi.c **** 
 736              		.loc 1 353 0
 737 0010 0025     		movs	r5, #0
 738 0012 094E     		ldr	r6, .L65+8
 364:../libraries/Storage/sd_mmc_spi.c **** 	sspi_master_setup_device(dev);
 739              		.loc 1 364 0
 740 0014 2046     		mov	r0, r4
 741              	.LVL43:
 363:../libraries/Storage/sd_mmc_spi.c **** 	sspi_master_setup_device(dev);
 742              		.loc 1 363 0
 743 0016 6160     		str	r1, [r4, #4]
 362:../libraries/Storage/sd_mmc_spi.c **** 	dev->clockFrequency = clock;
 744              		.loc 1 362 0
 745 0018 E570     		strb	r5, [r4, #3]
 353:../libraries/Storage/sd_mmc_spi.c **** 
 746              		.loc 1 353 0
 747 001a 3570     		strb	r5, [r6]
 748              	.LVL44:
 749              		.loc 1 364 0
 750 001c FFF7FEFF 		bl	sspi_master_setup_device
 751              	.LVL45:
 365:../libraries/Storage/sd_mmc_spi.c **** 	sspi_select_device(dev);
 752              		.loc 1 365 0
 753 0020 2046     		mov	r0, r4
 754 0022 FFF7FEFF 		bl	sspi_select_device
 755              	.LVL46:
 756              	.LBB115:
 757              	.LBB116:
ARM GAS  /tmp/ccbxFcRO.s 			page 24


 758              		.file 3 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h"
   1:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** /*
   2:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****   Copyright (c) 2011 Arduino.  All right reserved.
   3:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****   Copyright (c) 2013 by Paul Stoffregen <paul@pjrc.com> (delayMicroseconds)
   4:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** 
   5:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****   This library is free software; you can redistribute it and/or
   6:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****   modify it under the terms of the GNU Lesser General Public
   7:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****   License as published by the Free Software Foundation; either
   8:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****   version 2.1 of the License, or (at your option) any later version.
   9:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** 
  10:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****   This library is distributed in the hope that it will be useful,
  11:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****   but WITHOUT ANY WARRANTY; without even the implied warranty of
  12:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
  13:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****   See the GNU Lesser General Public License for more details.
  14:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** 
  15:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****   You should have received a copy of the GNU Lesser General Public
  16:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****   License along with this library; if not, write to the Free Software
  17:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****   Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
  18:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** */
  19:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** 
  20:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** #ifndef _WIRING_
  21:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** #define _WIRING_
  22:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** 
  23:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** #ifdef __cplusplus
  24:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** extern "C" {
  25:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** #endif
  26:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** 
  27:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** /**
  28:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****  *
  29:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****  */
  30:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** extern void initVariant( void ) ;
  31:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** extern void init( void ) ;
  32:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** 
  33:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** /**
  34:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****  * \brief Returns the number of milliseconds since the core started.
  35:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****  *
  36:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****  * This number will overflow (go back to zero), after approximately 50 days.
  37:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****  *
  38:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****  * \return Number of milliseconds since the program started (uint32_t)
  39:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****  */
  40:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** extern uint32_t millis( void ) ;
  41:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** 
  42:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** /**
  43:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****  * \brief Returns the number of milliseconds since the core started.
  44:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****  * \return Number of milliseconds since the program started (uint64_t)
  45:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****  */
  46:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** extern uint64_t millis64( void ) ;
  47:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** 
  48:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** #if 0	// this function is not reliable if other ISRs can preempt the Systick interrupt
  49:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** 
  50:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** /**
  51:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****  * \brief Returns the number of microseconds since the core started.
  52:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****  *
  53:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****  * This number will overflow (go back to zero), after approximately 70 minutes.
  54:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****  *
  55:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****  * \note There are 1,000 microseconds in a millisecond and 1,000,000 microseconds in a second.
  56:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****  */
ARM GAS  /tmp/ccbxFcRO.s 			page 25


  57:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** extern uint32_t micros( void ) ;
  58:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** 
  59:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** #endif
  60:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** 
  61:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** /**
  62:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****  * \brief Pauses the program for the amount of time (in miliseconds) specified as parameter.
  63:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****  * (There are 1000 milliseconds in a second.)
  64:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****  *
  65:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****  * \param dwMs the number of milliseconds to pause (uint32_t)
  66:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****  */
  67:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** // This has been renamed from delay to coreDelay so that RTOS-based applications can use a differen
  68:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** extern void coreDelay( uint32_t dwMs ) ;
  69:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** 
  70:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** /**
  71:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****  * \brief Pauses the program for the amount of time (in microseconds) specified as parameter.
  72:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****  *
  73:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****  * \param dwUs the number of microseconds to pause (uint32_t)
  74:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****  */
  75:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** static inline void delayMicroseconds(uint32_t) __attribute__((always_inline, unused));
  76:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h **** static inline void delayMicroseconds(uint32_t usec){
  77:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****     /*
  78:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****      * Based on Paul Stoffregen's implementation
  79:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****      * for Teensy 3.0 (http://www.pjrc.com/)
  80:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****      */
  81:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****     if (usec == 0) return;
  82:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****     uint32_t n = usec * (VARIANT_MCK / 3000000);
  83:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h ****     asm volatile(
 759              		.loc 3 83 0
 760 0026 3223     		movs	r3, #50
 761              		.syntax unified
 762              	@ 83 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h" 1
 763              		L_681_delayMicroseconds:
 764 0028 013B     		subs   r3, #1
 765 002a FDD1     		bne    L_681_delayMicroseconds
 766              	
 767              	@ 0 "" 2
 768              	.LVL47:
 769              		.thumb
 770              		.syntax unified
 771 002c 70BD     		pop	{r4, r5, r6, pc}
 772              	.LVL48:
 773              	.L66:
 774 002e 00BF     		.align	2
 775              	.L65:
 776 0030 00093D00 		.word	4000000
 777 0034 00000000 		.word	.LANCHOR5
 778 0038 00000000 		.word	.LANCHOR1
 779              	.LBE116:
 780              	.LBE115:
 781              		.cfi_endproc
 782              	.LFE244:
 783              		.size	sd_mmc_spi_select_device, .-sd_mmc_spi_select_device
 784              		.section	.text.sd_mmc_spi_deselect_device,"ax",%progbits
 785              		.align	1
 786              		.p2align 2,,3
 787              		.global	sd_mmc_spi_deselect_device
 788              		.syntax unified
ARM GAS  /tmp/ccbxFcRO.s 			page 26


 789              		.thumb
 790              		.thumb_func
 791              		.fpu fpv5-d16
 792              		.type	sd_mmc_spi_deselect_device, %function
 793              	sd_mmc_spi_deselect_device:
 794              	.LFB245:
 366:../libraries/Storage/sd_mmc_spi.c **** 	delayMicroseconds(1);
 367:../libraries/Storage/sd_mmc_spi.c **** }
 368:../libraries/Storage/sd_mmc_spi.c **** 
 369:../libraries/Storage/sd_mmc_spi.c **** void sd_mmc_spi_deselect_device(uint8_t slot)
 370:../libraries/Storage/sd_mmc_spi.c **** {
 795              		.loc 1 370 0
 796              		.cfi_startproc
 797              		@ args = 0, pretend = 0, frame = 0
 798              		@ frame_needed = 0, uses_anonymous_args = 0
 799              	.LVL49:
 371:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_err = SD_MMC_SPI_NO_ERR;
 372:../libraries/Storage/sd_mmc_spi.c **** 	sspi_deselect_device(&sd_mmc_spi_devices[slot]);
 800              		.loc 1 372 0
 801 0000 0649     		ldr	r1, .L69
 371:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_err = SD_MMC_SPI_NO_ERR;
 802              		.loc 1 371 0
 803 0002 0022     		movs	r2, #0
 370:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_err = SD_MMC_SPI_NO_ERR;
 804              		.loc 1 370 0
 805 0004 08B5     		push	{r3, lr}
 806              		.cfi_def_cfa_offset 8
 807              		.cfi_offset 3, -8
 808              		.cfi_offset 14, -4
 371:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_err = SD_MMC_SPI_NO_ERR;
 809              		.loc 1 371 0
 810 0006 064B     		ldr	r3, .L69+4
 811              		.loc 1 372 0
 812 0008 01EBC000 		add	r0, r1, r0, lsl #3
 813              	.LVL50:
 371:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_err = SD_MMC_SPI_NO_ERR;
 814              		.loc 1 371 0
 815 000c 1A70     		strb	r2, [r3]
 816              		.loc 1 372 0
 817 000e FFF7FEFF 		bl	sspi_deselect_device
 818              	.LVL51:
 819              	.LBB117:
 820              	.LBB118:
 821              		.loc 3 83 0
 822 0012 3223     		movs	r3, #50
 823              		.syntax unified
 824              	@ 83 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h" 1
 825              		L_725_delayMicroseconds:
 826 0014 013B     		subs   r3, #1
 827 0016 FDD1     		bne    L_725_delayMicroseconds
 828              	
 829              	@ 0 "" 2
 830              	.LVL52:
 831              		.thumb
 832              		.syntax unified
 833 0018 08BD     		pop	{r3, pc}
 834              	.L70:
ARM GAS  /tmp/ccbxFcRO.s 			page 27


 835 001a 00BF     		.align	2
 836              	.L69:
 837 001c 00000000 		.word	.LANCHOR5
 838 0020 00000000 		.word	.LANCHOR1
 839              	.LBE118:
 840              	.LBE117:
 841              		.cfi_endproc
 842              	.LFE245:
 843              		.size	sd_mmc_spi_deselect_device, .-sd_mmc_spi_deselect_device
 844              		.section	.text.sd_mmc_spi_send_clock,"ax",%progbits
 845              		.align	1
 846              		.p2align 2,,3
 847              		.global	sd_mmc_spi_send_clock
 848              		.syntax unified
 849              		.thumb
 850              		.thumb_func
 851              		.fpu fpv5-d16
 852              		.type	sd_mmc_spi_send_clock, %function
 853              	sd_mmc_spi_send_clock:
 854              	.LFB246:
 373:../libraries/Storage/sd_mmc_spi.c **** 	delayMicroseconds(1);
 374:../libraries/Storage/sd_mmc_spi.c **** }
 375:../libraries/Storage/sd_mmc_spi.c **** 
 376:../libraries/Storage/sd_mmc_spi.c **** void sd_mmc_spi_send_clock(void)
 377:../libraries/Storage/sd_mmc_spi.c **** {
 855              		.loc 1 377 0
 856              		.cfi_startproc
 857              		@ args = 0, pretend = 0, frame = 8
 858              		@ frame_needed = 0, uses_anonymous_args = 0
 859 0000 30B5     		push	{r4, r5, lr}
 860              		.cfi_def_cfa_offset 12
 861              		.cfi_offset 4, -12
 862              		.cfi_offset 5, -8
 863              		.cfi_offset 14, -4
 864 0002 83B0     		sub	sp, sp, #12
 865              		.cfi_def_cfa_offset 24
 378:../libraries/Storage/sd_mmc_spi.c **** 	uint8_t i;
 379:../libraries/Storage/sd_mmc_spi.c **** 	uint8_t dummy = 0xFF;
 866              		.loc 1 379 0
 867 0004 FF21     		movs	r1, #255
 380:../libraries/Storage/sd_mmc_spi.c **** 
 381:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_err = SD_MMC_SPI_NO_ERR;
 868              		.loc 1 381 0
 869 0006 094B     		ldr	r3, .L75
 870 0008 0022     		movs	r2, #0
 379:../libraries/Storage/sd_mmc_spi.c **** 
 871              		.loc 1 379 0
 872 000a 02AD     		add	r5, sp, #8
 873              		.loc 1 381 0
 874 000c 0A24     		movs	r4, #10
 875 000e 1A70     		strb	r2, [r3]
 876              	.LVL53:
 379:../libraries/Storage/sd_mmc_spi.c **** 
 877              		.loc 1 379 0
 878 0010 05F8011D 		strb	r1, [r5, #-1]!
 879              	.LVL54:
 880              	.L72:
ARM GAS  /tmp/ccbxFcRO.s 			page 28


 881              	.LBB119:
 882              	.LBB120:
 883              		.loc 2 126 0
 884 0014 0122     		movs	r2, #1
 885 0016 0021     		movs	r1, #0
 886 0018 2846     		mov	r0, r5
 887 001a FFF7FEFF 		bl	sspi_transceive_packet
 888              	.LVL55:
 889 001e 631E     		subs	r3, r4, #1
 890              	.LBE120:
 891              	.LBE119:
 382:../libraries/Storage/sd_mmc_spi.c **** 	//! Send 80 cycles
 383:../libraries/Storage/sd_mmc_spi.c **** 	for (i = 0; i < 10; i++) {
 892              		.loc 1 383 0
 893 0020 13F0FF04 		ands	r4, r3, #255
 894              	.LVL56:
 895 0024 F6D1     		bne	.L72
 384:../libraries/Storage/sd_mmc_spi.c **** 		sspi_write_packet(&dummy, 1); // 8 cycles
 385:../libraries/Storage/sd_mmc_spi.c **** 	}
 386:../libraries/Storage/sd_mmc_spi.c **** }
 896              		.loc 1 386 0
 897 0026 03B0     		add	sp, sp, #12
 898              		.cfi_def_cfa_offset 12
 899              		@ sp needed
 900 0028 30BD     		pop	{r4, r5, pc}
 901              	.L76:
 902 002a 00BF     		.align	2
 903              	.L75:
 904 002c 00000000 		.word	.LANCHOR1
 905              		.cfi_endproc
 906              	.LFE246:
 907              		.size	sd_mmc_spi_send_clock, .-sd_mmc_spi_send_clock
 908              		.section	.text.sd_mmc_spi_adtc_start,"ax",%progbits
 909              		.align	1
 910              		.p2align 2,,3
 911              		.global	sd_mmc_spi_adtc_start
 912              		.syntax unified
 913              		.thumb
 914              		.thumb_func
 915              		.fpu fpv5-d16
 916              		.type	sd_mmc_spi_adtc_start, %function
 917              	sd_mmc_spi_adtc_start:
 918              	.LFB248:
 387:../libraries/Storage/sd_mmc_spi.c **** 
 388:../libraries/Storage/sd_mmc_spi.c **** bool sd_mmc_spi_send_cmd(sdmmc_cmd_def_t cmd, uint32_t arg)
 389:../libraries/Storage/sd_mmc_spi.c **** {
 390:../libraries/Storage/sd_mmc_spi.c **** 	return sd_mmc_spi_adtc_start(cmd, arg, 0, 0, false);
 391:../libraries/Storage/sd_mmc_spi.c **** }
 392:../libraries/Storage/sd_mmc_spi.c **** 
 393:../libraries/Storage/sd_mmc_spi.c **** bool sd_mmc_spi_adtc_start(sdmmc_cmd_def_t cmd, uint32_t arg,
 394:../libraries/Storage/sd_mmc_spi.c **** 		uint16_t block_size, uint16_t nb_block, bool access_block)
 395:../libraries/Storage/sd_mmc_spi.c **** {
 919              		.loc 1 395 0
 920              		.cfi_startproc
 921              		@ args = 4, pretend = 0, frame = 16
 922              		@ frame_needed = 0, uses_anonymous_args = 0
 923              	.LVL57:
ARM GAS  /tmp/ccbxFcRO.s 			page 29


 924 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 925              		.cfi_def_cfa_offset 32
 926              		.cfi_offset 4, -32
 927              		.cfi_offset 5, -28
 928              		.cfi_offset 6, -24
 929              		.cfi_offset 7, -20
 930              		.cfi_offset 8, -16
 931              		.cfi_offset 9, -12
 932              		.cfi_offset 10, -8
 933              		.cfi_offset 14, -4
 934 0004 0546     		mov	r5, r0
 935 0006 84B0     		sub	sp, sp, #16
 936              		.cfi_def_cfa_offset 48
 396:../libraries/Storage/sd_mmc_spi.c **** 	uint8_t dummy = 0xFF;
 397:../libraries/Storage/sd_mmc_spi.c **** 	uint8_t cmd_token[6];
 398:../libraries/Storage/sd_mmc_spi.c **** 	uint8_t ncr_timeout;
 399:../libraries/Storage/sd_mmc_spi.c **** 	uint8_t r1; //! R1 response
 400:../libraries/Storage/sd_mmc_spi.c **** 
 401:../libraries/Storage/sd_mmc_spi.c **** 	UNUSED(access_block);
 402:../libraries/Storage/sd_mmc_spi.c **** 	Assert(cmd & SDMMC_RESP_PRESENT); // Always a response in SPI mode
 403:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_err = SD_MMC_SPI_NO_ERR;
 404:../libraries/Storage/sd_mmc_spi.c **** 
 405:../libraries/Storage/sd_mmc_spi.c **** 	// Encode SPI command
 406:../libraries/Storage/sd_mmc_spi.c **** 	cmd_token[0] = SPI_CMD_ENCODE(SDMMC_CMD_GET_INDEX(cmd));
 407:../libraries/Storage/sd_mmc_spi.c **** 	cmd_token[1] = arg >> 24;
 937              		.loc 1 407 0
 938 0008 4FEA116C 		lsr	ip, r1, #24
 403:../libraries/Storage/sd_mmc_spi.c **** 
 939              		.loc 1 403 0
 940 000c 0020     		movs	r0, #0
 941              	.LVL58:
 408:../libraries/Storage/sd_mmc_spi.c **** 	cmd_token[2] = arg >> 16;
 942              		.loc 1 408 0
 943 000e 0C0C     		lsrs	r4, r1, #16
 406:../libraries/Storage/sd_mmc_spi.c **** 	cmd_token[1] = arg >> 24;
 944              		.loc 1 406 0
 945 0010 05F03F0E 		and	lr, r5, #63
 395:../libraries/Storage/sd_mmc_spi.c **** 	uint8_t dummy = 0xFF;
 946              		.loc 1 395 0
 947 0014 1746     		mov	r7, r2
 948 0016 1E46     		mov	r6, r3
 406:../libraries/Storage/sd_mmc_spi.c **** 	cmd_token[1] = arg >> 24;
 949              		.loc 1 406 0
 950 0018 4EF0400E 		orr	lr, lr, #64
 409:../libraries/Storage/sd_mmc_spi.c **** 	cmd_token[3] = arg >> 8;
 410:../libraries/Storage/sd_mmc_spi.c **** 	cmd_token[4] = arg;
 951              		.loc 1 410 0
 952 001c 8DF80C10 		strb	r1, [sp, #12]
 953              	.LVL59:
 396:../libraries/Storage/sd_mmc_spi.c **** 	uint8_t cmd_token[6];
 954              		.loc 1 396 0
 955 0020 FF22     		movs	r2, #255
 956              	.LVL60:
 409:../libraries/Storage/sd_mmc_spi.c **** 	cmd_token[3] = arg >> 8;
 957              		.loc 1 409 0
 958 0022 090A     		lsrs	r1, r1, #8
 959              	.LVL61:
ARM GAS  /tmp/ccbxFcRO.s 			page 30


 407:../libraries/Storage/sd_mmc_spi.c **** 	cmd_token[2] = arg >> 16;
 960              		.loc 1 407 0
 961 0024 8DF809C0 		strb	ip, [sp, #9]
 962              	.LBB121:
 963              	.LBB122:
 112:../libraries/Storage/sd_mmc_spi.c **** 	while (size--) {
 964              		.loc 1 112 0
 965 0028 0346     		mov	r3, r0
 966              	.LVL62:
 967              	.LBE122:
 968              	.LBE121:
 408:../libraries/Storage/sd_mmc_spi.c **** 	cmd_token[3] = arg >> 8;
 969              		.loc 1 408 0
 970 002a 8DF80A40 		strb	r4, [sp, #10]
 971 002e 0DF1090C 		add	ip, sp, #9
 403:../libraries/Storage/sd_mmc_spi.c **** 
 972              		.loc 1 403 0
 973 0032 494C     		ldr	r4, .L109
 974 0034 0DF10D09 		add	r9, sp, #13
 406:../libraries/Storage/sd_mmc_spi.c **** 	cmd_token[1] = arg >> 24;
 975              		.loc 1 406 0
 976 0038 8DF808E0 		strb	lr, [sp, #8]
 409:../libraries/Storage/sd_mmc_spi.c **** 	cmd_token[4] = arg;
 977              		.loc 1 409 0
 978 003c 8DF80B10 		strb	r1, [sp, #11]
 396:../libraries/Storage/sd_mmc_spi.c **** 	uint8_t cmd_token[6];
 979              		.loc 1 396 0
 980 0040 8DF80620 		strb	r2, [sp, #6]
 403:../libraries/Storage/sd_mmc_spi.c **** 
 981              		.loc 1 403 0
 982 0044 2070     		strb	r0, [r4]
 983              	.LVL63:
 984              	.L81:
 985              	.LBB126:
 986              	.LBB123:
 112:../libraries/Storage/sd_mmc_spi.c **** 	while (size--) {
 987              		.loc 1 112 0
 988 0046 4FF00808 		mov	r8, #8
 989              	.LVL64:
 990              	.L79:
 116:../libraries/Storage/sd_mmc_spi.c **** 			if ((value & 0x80) ^ (crc & 0x80)) {
 991              		.loc 1 116 0
 992 004a 5B00     		lsls	r3, r3, #1
 993              	.LVL65:
 994 004c 08F1FF31 		add	r1, r8, #-1
 120:../libraries/Storage/sd_mmc_spi.c **** 		}
 995              		.loc 1 120 0
 996 0050 4FEA4E00 		lsl	r0, lr, #1
 116:../libraries/Storage/sd_mmc_spi.c **** 			if ((value & 0x80) ^ (crc & 0x80)) {
 997              		.loc 1 116 0
 998 0054 DBB2     		uxtb	r3, r3
 999              	.LVL66:
 117:../libraries/Storage/sd_mmc_spi.c **** 				crc ^= 0x09;
 1000              		.loc 1 117 0
 1001 0056 83EA0E02 		eor	r2, r3, lr
 120:../libraries/Storage/sd_mmc_spi.c **** 		}
 1002              		.loc 1 120 0
ARM GAS  /tmp/ccbxFcRO.s 			page 31


 1003 005a 5FFA80FE 		uxtb	lr, r0
 1004              	.LVL67:
 117:../libraries/Storage/sd_mmc_spi.c **** 				crc ^= 0x09;
 1005              		.loc 1 117 0
 1006 005e 1006     		lsls	r0, r2, #24
 118:../libraries/Storage/sd_mmc_spi.c **** 			}
 1007              		.loc 1 118 0
 1008 0060 48BF     		it	mi
 1009 0062 83F00903 		eormi	r3, r3, #9
 1010              	.LVL68:
 115:../libraries/Storage/sd_mmc_spi.c **** 			crc <<= 1;
 1011              		.loc 1 115 0
 1012 0066 11F0FF08 		ands	r8, r1, #255
 1013 006a EED1     		bne	.L79
 1014              	.LVL69:
 113:../libraries/Storage/sd_mmc_spi.c **** 		value = *buf++;
 1015              		.loc 1 113 0
 1016 006c E145     		cmp	r9, ip
 1017 006e 02D0     		beq	.L80
 1018 0070 1CF801EB 		ldrb	lr, [ip], #1	@ zero_extendqisi2
 1019              	.LVL70:
 1020 0074 E7E7     		b	.L81
 1021              	.LVL71:
 1022              	.L80:
 1023              	.LBE123:
 1024              	.LBE126:
 1025              	.LBB127:
 1026              	.LBB128:
 1027              		.loc 2 126 0
 1028 0076 0122     		movs	r2, #1
 1029              	.LBE128:
 1030              	.LBE127:
 1031              	.LBB131:
 1032              	.LBB124:
 123:../libraries/Storage/sd_mmc_spi.c **** 	return crc;
 1033              		.loc 1 123 0
 1034 0078 5B00     		lsls	r3, r3, #1
 1035              	.LBE124:
 1036              	.LBE131:
 1037              	.LBB132:
 1038              	.LBB129:
 1039              		.loc 2 126 0
 1040 007a 4146     		mov	r1, r8
 1041 007c 0DF10600 		add	r0, sp, #6
 1042              	.LBE129:
 1043              	.LBE132:
 1044              	.LBB133:
 1045              	.LBB125:
 123:../libraries/Storage/sd_mmc_spi.c **** 	return crc;
 1046              		.loc 1 123 0
 1047 0080 1343     		orrs	r3, r3, r2
 1048              	.LBE125:
 1049              	.LBE133:
 411:../libraries/Storage/sd_mmc_spi.c **** 	cmd_token[5] = sd_mmc_spi_crc7(cmd_token, 5);
 412:../libraries/Storage/sd_mmc_spi.c **** 
 413:../libraries/Storage/sd_mmc_spi.c **** 	// 8 cycles to respect Ncs timing
 414:../libraries/Storage/sd_mmc_spi.c **** 	// Note: This byte does not include start bit "0",
ARM GAS  /tmp/ccbxFcRO.s 			page 32


 415:../libraries/Storage/sd_mmc_spi.c **** 	// thus it is ignored by card.
 416:../libraries/Storage/sd_mmc_spi.c **** 	sspi_write_packet(&dummy, 1);
 417:../libraries/Storage/sd_mmc_spi.c **** 	// Send command
 418:../libraries/Storage/sd_mmc_spi.c **** 	sspi_write_packet(cmd_token, sizeof(cmd_token));
 419:../libraries/Storage/sd_mmc_spi.c **** 
 420:../libraries/Storage/sd_mmc_spi.c **** 	// Wait for response
 421:../libraries/Storage/sd_mmc_spi.c **** 	// Two retry will be done to manage the Ncr timing between command and reponse
 422:../libraries/Storage/sd_mmc_spi.c **** 	// Ncr: Min. 1x8 clock  cycle, Max. 8x8 clock cycles
 423:../libraries/Storage/sd_mmc_spi.c **** 	// WORKAROUND for no compliance card (Atmel Internal ref. SD13):
 424:../libraries/Storage/sd_mmc_spi.c **** 	r1 = 0xFF;
 1050              		.loc 1 424 0
 1051 0082 0DF11009 		add	r9, sp, #16
 1052              	.LBB134:
 1053              	.LBB135:
 120:../libraries/Storage/../SharedSpi/SharedSpi.h **** }
 1054              		.loc 2 120 0
 1055 0086 4FF0070A 		mov	r10, #7
 1056              	.LBE135:
 1057              	.LBE134:
 411:../libraries/Storage/sd_mmc_spi.c **** 	cmd_token[5] = sd_mmc_spi_crc7(cmd_token, 5);
 1058              		.loc 1 411 0
 1059 008a 8DF80D30 		strb	r3, [sp, #13]
 1060              	.LVL72:
 1061              	.LBB138:
 1062              	.LBB130:
 1063              		.loc 2 126 0
 1064 008e FFF7FEFF 		bl	sspi_transceive_packet
 1065              	.LVL73:
 1066              	.LBE130:
 1067              	.LBE138:
 1068              	.LBB139:
 1069              	.LBB140:
 1070 0092 0622     		movs	r2, #6
 1071 0094 4146     		mov	r1, r8
 1072 0096 02A8     		add	r0, sp, #8
 1073              	.LVL74:
 1074 0098 FFF7FEFF 		bl	sspi_transceive_packet
 1075              	.LVL75:
 1076              	.LBE140:
 1077              	.LBE139:
 1078              		.loc 1 424 0
 1079 009c FF23     		movs	r3, #255
 1080              	.LBB141:
 1081              	.LBB136:
 120:../libraries/Storage/../SharedSpi/SharedSpi.h **** }
 1082              		.loc 2 120 0
 1083 009e 4046     		mov	r0, r8
 1084 00a0 0122     		movs	r2, #1
 1085              	.LBE136:
 1086              	.LBE141:
 1087              		.loc 1 424 0
 1088 00a2 09F8093D 		strb	r3, [r9, #-9]!
 1089              	.LVL76:
 1090              	.LBB142:
 1091              	.LBB137:
 120:../libraries/Storage/../SharedSpi/SharedSpi.h **** }
 1092              		.loc 2 120 0
ARM GAS  /tmp/ccbxFcRO.s 			page 33


 1093 00a6 4946     		mov	r1, r9
 1094 00a8 FFF7FEFF 		bl	sspi_transceive_packet
 1095              	.LVL77:
 1096              	.L83:
 1097              	.LBE137:
 1098              	.LBE142:
 1099              	.LBB143:
 1100              	.LBB144:
 1101 00ac 0122     		movs	r2, #1
 1102 00ae 4946     		mov	r1, r9
 1103 00b0 0020     		movs	r0, #0
 1104 00b2 FFF7FEFF 		bl	sspi_transceive_packet
 1105              	.LVL78:
 1106              	.LBE144:
 1107              	.LBE143:
 425:../libraries/Storage/sd_mmc_spi.c **** 	// Ignore first byte because Ncr min. = 8 clock cylces
 426:../libraries/Storage/sd_mmc_spi.c **** 	sspi_read_packet(&r1, 1);
 427:../libraries/Storage/sd_mmc_spi.c **** 	ncr_timeout = 7;
 428:../libraries/Storage/sd_mmc_spi.c **** 	while (1) {
 429:../libraries/Storage/sd_mmc_spi.c **** 		sspi_read_packet(&r1, 1); // 8 cycles
 430:../libraries/Storage/sd_mmc_spi.c **** 		if ((r1 & R1_SPI_ERROR) == 0) {
 1108              		.loc 1 430 0
 1109 00b6 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
 1110 00ba 0AF1FF30 		add	r0, r10, #-1
 1111 00be 1A06     		lsls	r2, r3, #24
 1112 00c0 08D5     		bpl	.L82
 431:../libraries/Storage/sd_mmc_spi.c **** 			// Valid R1 response
 432:../libraries/Storage/sd_mmc_spi.c **** 			break;
 433:../libraries/Storage/sd_mmc_spi.c **** 		}
 434:../libraries/Storage/sd_mmc_spi.c **** 		if (--ncr_timeout == 0) {
 1113              		.loc 1 434 0
 1114 00c2 10F0FF0A 		ands	r10, r0, #255
 1115              	.LVL79:
 1116 00c6 F1D1     		bne	.L83
 435:../libraries/Storage/sd_mmc_spi.c **** 			// Here Valid R1 response received
 436:../libraries/Storage/sd_mmc_spi.c **** 			sd_mmc_spi_debug("%s: cmd %02d, arg 0x%08lX, R1 timeout\n\r",
 437:../libraries/Storage/sd_mmc_spi.c **** 					__func__, (int)SDMMC_CMD_GET_INDEX(cmd), arg);
 438:../libraries/Storage/sd_mmc_spi.c **** 			sd_mmc_spi_err = SD_MMC_SPI_ERR_RESP_TIMEOUT;
 1117              		.loc 1 438 0
 1118 00c8 0223     		movs	r3, #2
 439:../libraries/Storage/sd_mmc_spi.c **** 			return false;
 1119              		.loc 1 439 0
 1120 00ca 5046     		mov	r0, r10
 438:../libraries/Storage/sd_mmc_spi.c **** 			return false;
 1121              		.loc 1 438 0
 1122 00cc 2370     		strb	r3, [r4]
 1123              	.L84:
 440:../libraries/Storage/sd_mmc_spi.c **** 		}
 441:../libraries/Storage/sd_mmc_spi.c **** 	}
 442:../libraries/Storage/sd_mmc_spi.c **** 
 443:../libraries/Storage/sd_mmc_spi.c **** 	// Save R1 (Specific to SPI interface) in 32 bit response
 444:../libraries/Storage/sd_mmc_spi.c **** 	// The R1_SPI_IDLE bit can be checked by high level
 445:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_response_32 = r1;
 446:../libraries/Storage/sd_mmc_spi.c **** 
 447:../libraries/Storage/sd_mmc_spi.c **** 	// Manage error in R1
 448:../libraries/Storage/sd_mmc_spi.c **** 	if (r1 & R1_SPI_COM_CRC) {
 449:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_debug("%s: cmd %02d, arg 0x%08lx, r1 0x%02x, R1_SPI_COM_CRC\n\r",
ARM GAS  /tmp/ccbxFcRO.s 			page 34


 450:../libraries/Storage/sd_mmc_spi.c **** 				__func__, (int)SDMMC_CMD_GET_INDEX(cmd), arg, r1);
 451:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_err = SD_MMC_SPI_ERR_RESP_CRC;
 452:../libraries/Storage/sd_mmc_spi.c **** 		return false;
 453:../libraries/Storage/sd_mmc_spi.c **** 	}
 454:../libraries/Storage/sd_mmc_spi.c **** 	if (r1 & R1_SPI_ILLEGAL_COMMAND) {
 455:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_debug("%s: cmd %02d, arg 0x%08lx, r1 0x%x, R1 ILLEGAL_COMMAND\n\r",
 456:../libraries/Storage/sd_mmc_spi.c **** 				__func__, (int)SDMMC_CMD_GET_INDEX(cmd), arg, r1);
 457:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_err = SD_MMC_SPI_ERR_ILLEGAL_COMMAND;
 458:../libraries/Storage/sd_mmc_spi.c **** 		return false;
 459:../libraries/Storage/sd_mmc_spi.c **** 	}
 460:../libraries/Storage/sd_mmc_spi.c **** 	if (r1 & ~R1_SPI_IDLE) {
 461:../libraries/Storage/sd_mmc_spi.c **** 		// Other error
 462:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_debug("%s: cmd %02d, arg 0x%08lx, r1 0x%x, R1 error\n\r",
 463:../libraries/Storage/sd_mmc_spi.c **** 				__func__, (int)SDMMC_CMD_GET_INDEX(cmd), arg, r1);
 464:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_err = SD_MMC_SPI_ERR;
 465:../libraries/Storage/sd_mmc_spi.c **** 		return false;
 466:../libraries/Storage/sd_mmc_spi.c **** 	}
 467:../libraries/Storage/sd_mmc_spi.c **** 
 468:../libraries/Storage/sd_mmc_spi.c **** 	// Manage other responses
 469:../libraries/Storage/sd_mmc_spi.c **** 	if (cmd & SDMMC_RESP_BUSY) {
 470:../libraries/Storage/sd_mmc_spi.c **** 		if (!sd_mmc_spi_wait_busy()) {
 471:../libraries/Storage/sd_mmc_spi.c **** 			sd_mmc_spi_err = SD_MMC_SPI_ERR_RESP_BUSY_TIMEOUT;
 472:../libraries/Storage/sd_mmc_spi.c **** 			sd_mmc_spi_debug("%s: cmd %02d, arg 0x%08lx, Busy signal always high\n\r",
 473:../libraries/Storage/sd_mmc_spi.c **** 					__func__, (int)SDMMC_CMD_GET_INDEX(cmd), arg);
 474:../libraries/Storage/sd_mmc_spi.c **** 			return false;
 475:../libraries/Storage/sd_mmc_spi.c **** 		}
 476:../libraries/Storage/sd_mmc_spi.c **** 	}
 477:../libraries/Storage/sd_mmc_spi.c **** 	if (cmd & SDMMC_RESP_8) {
 478:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_response_32 = 0;
 479:../libraries/Storage/sd_mmc_spi.c **** 		sspi_read_packet((uint8_t*) & sd_mmc_spi_response_32, 1);
 480:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_response_32 = le32_to_cpu(sd_mmc_spi_response_32);
 481:../libraries/Storage/sd_mmc_spi.c **** 	}
 482:../libraries/Storage/sd_mmc_spi.c **** 	if (cmd & SDMMC_RESP_32) {
 483:../libraries/Storage/sd_mmc_spi.c **** 		sspi_read_packet((uint8_t*) & sd_mmc_spi_response_32, 4);
 484:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_response_32 = be32_to_cpu(sd_mmc_spi_response_32);
 485:../libraries/Storage/sd_mmc_spi.c **** 	}
 486:../libraries/Storage/sd_mmc_spi.c **** 
 487:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_block_size = block_size;
 488:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_nb_block = nb_block;
 489:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_transfert_pos = 0;
 490:../libraries/Storage/sd_mmc_spi.c **** 	return true; // Command complete
 491:../libraries/Storage/sd_mmc_spi.c **** }
 1124              		.loc 1 491 0
 1125 00ce 04B0     		add	sp, sp, #16
 1126              		.cfi_remember_state
 1127              		.cfi_def_cfa_offset 32
 1128              		@ sp needed
 1129 00d0 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1130              	.LVL80:
 1131              	.L82:
 1132              		.cfi_restore_state
 445:../libraries/Storage/sd_mmc_spi.c **** 
 1133              		.loc 1 445 0
 1134 00d4 DFF89080 		ldr	r8, .L109+16
 448:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_debug("%s: cmd %02d, arg 0x%08lx, r1 0x%02x, R1_SPI_COM_CRC\n\r",
 1135              		.loc 1 448 0
 1136 00d8 13F00802 		ands	r2, r3, #8
ARM GAS  /tmp/ccbxFcRO.s 			page 35


 445:../libraries/Storage/sd_mmc_spi.c **** 
 1137              		.loc 1 445 0
 1138 00dc C8F80030 		str	r3, [r8]
 448:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_debug("%s: cmd %02d, arg 0x%08lx, r1 0x%02x, R1_SPI_COM_CRC\n\r",
 1139              		.loc 1 448 0
 1140 00e0 14D1     		bne	.L103
 454:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_debug("%s: cmd %02d, arg 0x%08lx, r1 0x%x, R1 ILLEGAL_COMMAND\n\r",
 1141              		.loc 1 454 0
 1142 00e2 13F00400 		ands	r0, r3, #4
 1143 00e6 15D1     		bne	.L104
 460:../libraries/Storage/sd_mmc_spi.c **** 		// Other error
 1144              		.loc 1 460 0
 1145 00e8 13F0FE0F 		tst	r3, #254
 1146 00ec 31D1     		bne	.L105
 469:../libraries/Storage/sd_mmc_spi.c **** 		if (!sd_mmc_spi_wait_busy()) {
 1147              		.loc 1 469 0
 1148 00ee A904     		lsls	r1, r5, #18
 1149 00f0 14D4     		bmi	.L106
 1150              	.L88:
 477:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_response_32 = 0;
 1151              		.loc 1 477 0
 1152 00f2 AA05     		lsls	r2, r5, #22
 1153 00f4 24D4     		bmi	.L107
 1154              	.L89:
 482:../libraries/Storage/sd_mmc_spi.c **** 		sspi_read_packet((uint8_t*) & sd_mmc_spi_response_32, 4);
 1155              		.loc 1 482 0
 1156 00f6 6B05     		lsls	r3, r5, #21
 1157 00f8 17D4     		bmi	.L108
 1158              	.L90:
 487:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_nb_block = nb_block;
 1159              		.loc 1 487 0
 1160 00fa 184C     		ldr	r4, .L109+4
 489:../libraries/Storage/sd_mmc_spi.c **** 	return true; // Command complete
 1161              		.loc 1 489 0
 1162 00fc 0022     		movs	r2, #0
 488:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_transfert_pos = 0;
 1163              		.loc 1 488 0
 1164 00fe 1849     		ldr	r1, .L109+8
 490:../libraries/Storage/sd_mmc_spi.c **** }
 1165              		.loc 1 490 0
 1166 0100 0120     		movs	r0, #1
 489:../libraries/Storage/sd_mmc_spi.c **** 	return true; // Command complete
 1167              		.loc 1 489 0
 1168 0102 184B     		ldr	r3, .L109+12
 487:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_nb_block = nb_block;
 1169              		.loc 1 487 0
 1170 0104 2780     		strh	r7, [r4]	@ movhi
 488:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_transfert_pos = 0;
 1171              		.loc 1 488 0
 1172 0106 0E80     		strh	r6, [r1]	@ movhi
 489:../libraries/Storage/sd_mmc_spi.c **** 	return true; // Command complete
 1173              		.loc 1 489 0
 1174 0108 1A60     		str	r2, [r3]
 490:../libraries/Storage/sd_mmc_spi.c **** }
 1175              		.loc 1 490 0
 1176 010a E0E7     		b	.L84
 1177              	.L103:
ARM GAS  /tmp/ccbxFcRO.s 			page 36


 451:../libraries/Storage/sd_mmc_spi.c **** 		return false;
 1178              		.loc 1 451 0
 1179 010c 0623     		movs	r3, #6
 452:../libraries/Storage/sd_mmc_spi.c **** 	}
 1180              		.loc 1 452 0
 1181 010e 0020     		movs	r0, #0
 451:../libraries/Storage/sd_mmc_spi.c **** 		return false;
 1182              		.loc 1 451 0
 1183 0110 2370     		strb	r3, [r4]
 452:../libraries/Storage/sd_mmc_spi.c **** 	}
 1184              		.loc 1 452 0
 1185 0112 DCE7     		b	.L84
 1186              	.L104:
 457:../libraries/Storage/sd_mmc_spi.c **** 		return false;
 1187              		.loc 1 457 0
 1188 0114 0923     		movs	r3, #9
 458:../libraries/Storage/sd_mmc_spi.c **** 	}
 1189              		.loc 1 458 0
 1190 0116 1046     		mov	r0, r2
 457:../libraries/Storage/sd_mmc_spi.c **** 		return false;
 1191              		.loc 1 457 0
 1192 0118 2370     		strb	r3, [r4]
 458:../libraries/Storage/sd_mmc_spi.c **** 	}
 1193              		.loc 1 458 0
 1194 011a D8E7     		b	.L84
 1195              	.L106:
 470:../libraries/Storage/sd_mmc_spi.c **** 			sd_mmc_spi_err = SD_MMC_SPI_ERR_RESP_BUSY_TIMEOUT;
 1196              		.loc 1 470 0
 1197 011c FFF7FEFF 		bl	sd_mmc_spi_wait_busy
 1198              	.LVL81:
 1199 0120 0028     		cmp	r0, #0
 1200 0122 E6D1     		bne	.L88
 471:../libraries/Storage/sd_mmc_spi.c **** 			sd_mmc_spi_debug("%s: cmd %02d, arg 0x%08lx, Busy signal always high\n\r",
 1201              		.loc 1 471 0
 1202 0124 0323     		movs	r3, #3
 1203 0126 2370     		strb	r3, [r4]
 474:../libraries/Storage/sd_mmc_spi.c **** 		}
 1204              		.loc 1 474 0
 1205 0128 D1E7     		b	.L84
 1206              	.L108:
 1207              	.LVL82:
 1208              	.LBB145:
 1209              	.LBB146:
 120:../libraries/Storage/../SharedSpi/SharedSpi.h **** }
 1210              		.loc 2 120 0
 1211 012a 0422     		movs	r2, #4
 1212 012c 0E49     		ldr	r1, .L109+16
 1213 012e 0020     		movs	r0, #0
 1214 0130 FFF7FEFF 		bl	sspi_transceive_packet
 1215              	.LVL83:
 1216              	.LBE146:
 1217              	.LBE145:
 484:../libraries/Storage/sd_mmc_spi.c **** 	}
 1218              		.loc 1 484 0
 1219 0134 D8F80030 		ldr	r3, [r8]
 1220 0138 1BBA     		rev	r3, r3
 1221 013a C8F80030 		str	r3, [r8]
ARM GAS  /tmp/ccbxFcRO.s 			page 37


 1222 013e DCE7     		b	.L90
 1223              	.L107:
 478:../libraries/Storage/sd_mmc_spi.c **** 		sspi_read_packet((uint8_t*) & sd_mmc_spi_response_32, 1);
 1224              		.loc 1 478 0
 1225 0140 0023     		movs	r3, #0
 1226              	.LBB147:
 1227              	.LBB148:
 120:../libraries/Storage/../SharedSpi/SharedSpi.h **** }
 1228              		.loc 2 120 0
 1229 0142 0122     		movs	r2, #1
 1230 0144 0849     		ldr	r1, .L109+16
 1231 0146 1846     		mov	r0, r3
 1232              	.LBE148:
 1233              	.LBE147:
 478:../libraries/Storage/sd_mmc_spi.c **** 		sspi_read_packet((uint8_t*) & sd_mmc_spi_response_32, 1);
 1234              		.loc 1 478 0
 1235 0148 C8F80030 		str	r3, [r8]
 1236              	.LVL84:
 1237              	.LBB150:
 1238              	.LBB149:
 120:../libraries/Storage/../SharedSpi/SharedSpi.h **** }
 1239              		.loc 2 120 0
 1240 014c FFF7FEFF 		bl	sspi_transceive_packet
 1241              	.LVL85:
 1242 0150 D1E7     		b	.L89
 1243              	.L105:
 1244              	.LBE149:
 1245              	.LBE150:
 464:../libraries/Storage/sd_mmc_spi.c **** 		return false;
 1246              		.loc 1 464 0
 1247 0152 0123     		movs	r3, #1
 1248 0154 2370     		strb	r3, [r4]
 465:../libraries/Storage/sd_mmc_spi.c **** 	}
 1249              		.loc 1 465 0
 1250 0156 BAE7     		b	.L84
 1251              	.L110:
 1252              		.align	2
 1253              	.L109:
 1254 0158 00000000 		.word	.LANCHOR1
 1255 015c 00000000 		.word	.LANCHOR3
 1256 0160 00000000 		.word	.LANCHOR0
 1257 0164 00000000 		.word	.LANCHOR2
 1258 0168 00000000 		.word	.LANCHOR6
 1259              		.cfi_endproc
 1260              	.LFE248:
 1261              		.size	sd_mmc_spi_adtc_start, .-sd_mmc_spi_adtc_start
 1262              		.section	.text.sd_mmc_spi_send_cmd,"ax",%progbits
 1263              		.align	1
 1264              		.p2align 2,,3
 1265              		.global	sd_mmc_spi_send_cmd
 1266              		.syntax unified
 1267              		.thumb
 1268              		.thumb_func
 1269              		.fpu fpv5-d16
 1270              		.type	sd_mmc_spi_send_cmd, %function
 1271              	sd_mmc_spi_send_cmd:
 1272              	.LFB247:
ARM GAS  /tmp/ccbxFcRO.s 			page 38


 389:../libraries/Storage/sd_mmc_spi.c **** 	return sd_mmc_spi_adtc_start(cmd, arg, 0, 0, false);
 1273              		.loc 1 389 0
 1274              		.cfi_startproc
 1275              		@ args = 0, pretend = 0, frame = 0
 1276              		@ frame_needed = 0, uses_anonymous_args = 0
 1277              	.LVL86:
 390:../libraries/Storage/sd_mmc_spi.c **** }
 1278              		.loc 1 390 0
 1279 0000 0023     		movs	r3, #0
 389:../libraries/Storage/sd_mmc_spi.c **** 	return sd_mmc_spi_adtc_start(cmd, arg, 0, 0, false);
 1280              		.loc 1 389 0
 1281 0002 00B5     		push	{lr}
 1282              		.cfi_def_cfa_offset 4
 1283              		.cfi_offset 14, -4
 1284 0004 83B0     		sub	sp, sp, #12
 1285              		.cfi_def_cfa_offset 16
 390:../libraries/Storage/sd_mmc_spi.c **** }
 1286              		.loc 1 390 0
 1287 0006 1A46     		mov	r2, r3
 1288 0008 0093     		str	r3, [sp]
 1289 000a FFF7FEFF 		bl	sd_mmc_spi_adtc_start
 1290              	.LVL87:
 391:../libraries/Storage/sd_mmc_spi.c **** 
 1291              		.loc 1 391 0
 1292 000e 03B0     		add	sp, sp, #12
 1293              		.cfi_def_cfa_offset 4
 1294              		@ sp needed
 1295 0010 5DF804FB 		ldr	pc, [sp], #4
 1296              		.cfi_endproc
 1297              	.LFE247:
 1298              		.size	sd_mmc_spi_send_cmd, .-sd_mmc_spi_send_cmd
 1299              		.section	.text.sd_mmc_spi_get_response,"ax",%progbits
 1300              		.align	1
 1301              		.p2align 2,,3
 1302              		.global	sd_mmc_spi_get_response
 1303              		.syntax unified
 1304              		.thumb
 1305              		.thumb_func
 1306              		.fpu fpv5-d16
 1307              		.type	sd_mmc_spi_get_response, %function
 1308              	sd_mmc_spi_get_response:
 1309              	.LFB249:
 492:../libraries/Storage/sd_mmc_spi.c **** 
 493:../libraries/Storage/sd_mmc_spi.c **** uint32_t sd_mmc_spi_get_response(void)
 494:../libraries/Storage/sd_mmc_spi.c **** {
 1310              		.loc 1 494 0
 1311              		.cfi_startproc
 1312              		@ args = 0, pretend = 0, frame = 0
 1313              		@ frame_needed = 0, uses_anonymous_args = 0
 1314              		@ link register save eliminated.
 495:../libraries/Storage/sd_mmc_spi.c **** 	return sd_mmc_spi_response_32;
 1315              		.loc 1 495 0
 1316 0000 014B     		ldr	r3, .L114
 496:../libraries/Storage/sd_mmc_spi.c **** }
 1317              		.loc 1 496 0
 1318 0002 1868     		ldr	r0, [r3]
 1319 0004 7047     		bx	lr
ARM GAS  /tmp/ccbxFcRO.s 			page 39


 1320              	.L115:
 1321 0006 00BF     		.align	2
 1322              	.L114:
 1323 0008 00000000 		.word	.LANCHOR6
 1324              		.cfi_endproc
 1325              	.LFE249:
 1326              		.size	sd_mmc_spi_get_response, .-sd_mmc_spi_get_response
 1327              		.section	.text.sd_mmc_spi_read_word,"ax",%progbits
 1328              		.align	1
 1329              		.p2align 2,,3
 1330              		.global	sd_mmc_spi_read_word
 1331              		.syntax unified
 1332              		.thumb
 1333              		.thumb_func
 1334              		.fpu fpv5-d16
 1335              		.type	sd_mmc_spi_read_word, %function
 1336              	sd_mmc_spi_read_word:
 1337              	.LFB250:
 497:../libraries/Storage/sd_mmc_spi.c **** 
 498:../libraries/Storage/sd_mmc_spi.c **** bool sd_mmc_spi_read_word(uint32_t* value)
 499:../libraries/Storage/sd_mmc_spi.c **** {
 1338              		.loc 1 499 0
 1339              		.cfi_startproc
 1340              		@ args = 0, pretend = 0, frame = 8
 1341              		@ frame_needed = 0, uses_anonymous_args = 0
 1342              	.LVL88:
 1343 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1344              		.cfi_def_cfa_offset 24
 1345              		.cfi_offset 4, -24
 1346              		.cfi_offset 5, -20
 1347              		.cfi_offset 6, -16
 1348              		.cfi_offset 7, -12
 1349              		.cfi_offset 8, -8
 1350              		.cfi_offset 14, -4
 500:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_err = SD_MMC_SPI_NO_ERR;
 501:../libraries/Storage/sd_mmc_spi.c **** 	Assert(sd_mmc_spi_nb_block >
 502:../libraries/Storage/sd_mmc_spi.c **** 			(sd_mmc_spi_transfert_pos / sd_mmc_spi_block_size));
 503:../libraries/Storage/sd_mmc_spi.c **** 
 504:../libraries/Storage/sd_mmc_spi.c **** 	if (!(sd_mmc_spi_transfert_pos % sd_mmc_spi_block_size)) {
 1351              		.loc 1 504 0
 1352 0004 134C     		ldr	r4, .L124
 499:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_err = SD_MMC_SPI_NO_ERR;
 1353              		.loc 1 499 0
 1354 0006 8046     		mov	r8, r0
 1355              		.loc 1 504 0
 1356 0008 134D     		ldr	r5, .L124+4
 500:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_err = SD_MMC_SPI_NO_ERR;
 1357              		.loc 1 500 0
 1358 000a 0027     		movs	r7, #0
 1359              		.loc 1 504 0
 1360 000c 2068     		ldr	r0, [r4]
 1361              	.LVL89:
 499:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_err = SD_MMC_SPI_NO_ERR;
 1362              		.loc 1 499 0
 1363 000e 82B0     		sub	sp, sp, #8
 1364              		.cfi_def_cfa_offset 32
 1365              		.loc 1 504 0
ARM GAS  /tmp/ccbxFcRO.s 			page 40


 1366 0010 2A88     		ldrh	r2, [r5]
 500:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_err = SD_MMC_SPI_NO_ERR;
 1367              		.loc 1 500 0
 1368 0012 124E     		ldr	r6, .L124+8
 1369              		.loc 1 504 0
 1370 0014 B0FBF2F3 		udiv	r3, r0, r2
 1371 0018 02FB1303 		mls	r3, r2, r3, r0
 500:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_err = SD_MMC_SPI_NO_ERR;
 1372              		.loc 1 500 0
 1373 001c 3770     		strb	r7, [r6]
 1374              		.loc 1 504 0
 1375 001e 13B9     		cbnz	r3, .L120
 505:../libraries/Storage/sd_mmc_spi.c **** 		// New block
 506:../libraries/Storage/sd_mmc_spi.c **** 		if (!sd_mmc_spi_start_read_block()) {
 1376              		.loc 1 506 0
 1377 0020 FFF7FEFF 		bl	sd_mmc_spi_start_read_block
 1378              	.LVL90:
 1379 0024 70B1     		cbz	r0, .L119
 1380              	.L120:
 1381              	.LVL91:
 1382              	.LBB151:
 1383              	.LBB152:
 120:../libraries/Storage/../SharedSpi/SharedSpi.h **** }
 1384              		.loc 2 120 0
 1385 0026 0422     		movs	r2, #4
 1386 0028 4146     		mov	r1, r8
 1387 002a 0020     		movs	r0, #0
 1388 002c FFF7FEFF 		bl	sspi_transceive_packet
 1389              	.LVL92:
 1390              	.LBE152:
 1391              	.LBE151:
 507:../libraries/Storage/sd_mmc_spi.c **** 			return false;
 508:../libraries/Storage/sd_mmc_spi.c **** 		}
 509:../libraries/Storage/sd_mmc_spi.c **** 	}
 510:../libraries/Storage/sd_mmc_spi.c **** 	// Read data
 511:../libraries/Storage/sd_mmc_spi.c **** 	sspi_read_packet((uint8_t*)value, 4);
 512:../libraries/Storage/sd_mmc_spi.c **** 	*value = le32_to_cpu(*value);
 513:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_transfert_pos += 4;
 1392              		.loc 1 513 0
 1393 0030 2368     		ldr	r3, [r4]
 514:../libraries/Storage/sd_mmc_spi.c **** 
 515:../libraries/Storage/sd_mmc_spi.c **** 	if (!(sd_mmc_spi_transfert_pos % sd_mmc_spi_block_size)) {
 1394              		.loc 1 515 0
 1395 0032 2A88     		ldrh	r2, [r5]
 513:../libraries/Storage/sd_mmc_spi.c **** 
 1396              		.loc 1 513 0
 1397 0034 0433     		adds	r3, r3, #4
 1398              		.loc 1 515 0
 1399 0036 B3FBF2F0 		udiv	r0, r3, r2
 1400 003a 02FB1030 		mls	r0, r2, r0, r3
 513:../libraries/Storage/sd_mmc_spi.c **** 
 1401              		.loc 1 513 0
 1402 003e 2360     		str	r3, [r4]
 1403              		.loc 1 515 0
 1404 0040 18B1     		cbz	r0, .L123
 1405              	.L122:
 516:../libraries/Storage/sd_mmc_spi.c **** 		// End of block
ARM GAS  /tmp/ccbxFcRO.s 			page 41


 517:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_stop_read_block();
 518:../libraries/Storage/sd_mmc_spi.c **** 	}
 519:../libraries/Storage/sd_mmc_spi.c **** 	return true;
 1406              		.loc 1 519 0
 1407 0042 0120     		movs	r0, #1
 1408              	.L119:
 520:../libraries/Storage/sd_mmc_spi.c **** }
 1409              		.loc 1 520 0
 1410 0044 02B0     		add	sp, sp, #8
 1411              		.cfi_remember_state
 1412              		.cfi_def_cfa_offset 24
 1413              		@ sp needed
 1414 0046 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1415              	.LVL93:
 1416              	.L123:
 1417              		.cfi_restore_state
 1418              	.LBB153:
 1419              	.LBB154:
 1420              	.LBB155:
 1421              	.LBB156:
 120:../libraries/Storage/../SharedSpi/SharedSpi.h **** }
 1422              		.loc 2 120 0
 1423 004a 0222     		movs	r2, #2
 1424 004c 01A9     		add	r1, sp, #4
 1425              	.LVL94:
 1426 004e FFF7FEFF 		bl	sspi_transceive_packet
 1427              	.LVL95:
 1428 0052 F6E7     		b	.L122
 1429              	.L125:
 1430              		.align	2
 1431              	.L124:
 1432 0054 00000000 		.word	.LANCHOR2
 1433 0058 00000000 		.word	.LANCHOR3
 1434 005c 00000000 		.word	.LANCHOR1
 1435              	.LBE156:
 1436              	.LBE155:
 1437              	.LBE154:
 1438              	.LBE153:
 1439              		.cfi_endproc
 1440              	.LFE250:
 1441              		.size	sd_mmc_spi_read_word, .-sd_mmc_spi_read_word
 1442              		.section	.text.sd_mmc_spi_write_word,"ax",%progbits
 1443              		.align	1
 1444              		.p2align 2,,3
 1445              		.global	sd_mmc_spi_write_word
 1446              		.syntax unified
 1447              		.thumb
 1448              		.thumb_func
 1449              		.fpu fpv5-d16
 1450              		.type	sd_mmc_spi_write_word, %function
 1451              	sd_mmc_spi_write_word:
 1452              	.LFB251:
 521:../libraries/Storage/sd_mmc_spi.c **** 
 522:../libraries/Storage/sd_mmc_spi.c **** bool sd_mmc_spi_write_word(uint32_t value)
 523:../libraries/Storage/sd_mmc_spi.c **** {
 1453              		.loc 1 523 0
 1454              		.cfi_startproc
ARM GAS  /tmp/ccbxFcRO.s 			page 42


 1455              		@ args = 0, pretend = 0, frame = 8
 1456              		@ frame_needed = 0, uses_anonymous_args = 0
 1457              	.LVL96:
 1458 0000 70B5     		push	{r4, r5, r6, lr}
 1459              		.cfi_def_cfa_offset 16
 1460              		.cfi_offset 4, -16
 1461              		.cfi_offset 5, -12
 1462              		.cfi_offset 6, -8
 1463              		.cfi_offset 14, -4
 524:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_err = SD_MMC_SPI_NO_ERR;
 525:../libraries/Storage/sd_mmc_spi.c **** 	Assert(sd_mmc_spi_nb_block >
 526:../libraries/Storage/sd_mmc_spi.c **** 			(sd_mmc_spi_transfert_pos / sd_mmc_spi_block_size));
 527:../libraries/Storage/sd_mmc_spi.c **** 
 528:../libraries/Storage/sd_mmc_spi.c **** 	if (!(sd_mmc_spi_transfert_pos % sd_mmc_spi_block_size)) {
 1464              		.loc 1 528 0
 1465 0002 184C     		ldr	r4, .L136
 524:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_err = SD_MMC_SPI_NO_ERR;
 1466              		.loc 1 524 0
 1467 0004 0023     		movs	r3, #0
 1468              		.loc 1 528 0
 1469 0006 184E     		ldr	r6, .L136+4
 523:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_err = SD_MMC_SPI_NO_ERR;
 1470              		.loc 1 523 0
 1471 0008 82B0     		sub	sp, sp, #8
 1472              		.cfi_def_cfa_offset 24
 1473              		.loc 1 528 0
 1474 000a 2168     		ldr	r1, [r4]
 1475 000c 3288     		ldrh	r2, [r6]
 524:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_err = SD_MMC_SPI_NO_ERR;
 1476              		.loc 1 524 0
 1477 000e 174D     		ldr	r5, .L136+8
 523:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_err = SD_MMC_SPI_NO_ERR;
 1478              		.loc 1 523 0
 1479 0010 0190     		str	r0, [sp, #4]
 524:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_err = SD_MMC_SPI_NO_ERR;
 1480              		.loc 1 524 0
 1481 0012 2B70     		strb	r3, [r5]
 1482              		.loc 1 528 0
 1483 0014 B1FBF2F3 		udiv	r3, r1, r2
 1484 0018 02FB1313 		mls	r3, r2, r3, r1
 1485 001c BBB1     		cbz	r3, .L134
 1486              	.LVL97:
 1487              	.L127:
 1488              	.LBB157:
 1489              	.LBB158:
 1490              		.loc 2 126 0
 1491 001e 0422     		movs	r2, #4
 1492 0020 0021     		movs	r1, #0
 1493 0022 0DEB0200 		add	r0, sp, r2
 1494 0026 FFF7FEFF 		bl	sspi_transceive_packet
 1495              	.LVL98:
 1496              	.LBE158:
 1497              	.LBE157:
 529:../libraries/Storage/sd_mmc_spi.c **** 		// New block
 530:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_start_write_block();
 531:../libraries/Storage/sd_mmc_spi.c **** 	}
 532:../libraries/Storage/sd_mmc_spi.c **** 
ARM GAS  /tmp/ccbxFcRO.s 			page 43


 533:../libraries/Storage/sd_mmc_spi.c **** 	// Write data
 534:../libraries/Storage/sd_mmc_spi.c **** 	value = cpu_to_le32(value);
 535:../libraries/Storage/sd_mmc_spi.c **** 	sspi_write_packet((uint8_t*)&value, 4);
 536:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_transfert_pos += 4;
 1498              		.loc 1 536 0
 1499 002a 2368     		ldr	r3, [r4]
 537:../libraries/Storage/sd_mmc_spi.c **** 
 538:../libraries/Storage/sd_mmc_spi.c **** 	if (!(sd_mmc_spi_transfert_pos % sd_mmc_spi_block_size)) {
 1500              		.loc 1 538 0
 1501 002c 3188     		ldrh	r1, [r6]
 536:../libraries/Storage/sd_mmc_spi.c **** 
 1502              		.loc 1 536 0
 1503 002e 0433     		adds	r3, r3, #4
 1504              		.loc 1 538 0
 1505 0030 B3FBF1F2 		udiv	r2, r3, r1
 1506 0034 01FB1232 		mls	r2, r1, r2, r3
 536:../libraries/Storage/sd_mmc_spi.c **** 
 1507              		.loc 1 536 0
 1508 0038 2360     		str	r3, [r4]
 1509              		.loc 1 538 0
 1510 003a 22B9     		cbnz	r2, .L128
 539:../libraries/Storage/sd_mmc_spi.c **** 		// End of block
 540:../libraries/Storage/sd_mmc_spi.c **** 		if (!sd_mmc_spi_stop_write_block()) {
 1511              		.loc 1 540 0
 1512 003c FFF7FEFF 		bl	sd_mmc_spi_stop_write_block
 1513              	.LVL99:
 1514 0040 40B9     		cbnz	r0, .L135
 1515              	.L129:
 541:../libraries/Storage/sd_mmc_spi.c **** 			return false;
 542:../libraries/Storage/sd_mmc_spi.c **** 		}
 543:../libraries/Storage/sd_mmc_spi.c **** 		// Wait busy due to data programmation
 544:../libraries/Storage/sd_mmc_spi.c **** 		if (!sd_mmc_spi_wait_busy()) {
 545:../libraries/Storage/sd_mmc_spi.c **** 			sd_mmc_spi_err = SD_MMC_SPI_ERR_WRITE_TIMEOUT;
 546:../libraries/Storage/sd_mmc_spi.c **** 			sd_mmc_spi_debug("%s: Write blocks timeout\n\r", __func__);
 547:../libraries/Storage/sd_mmc_spi.c **** 			return false;
 548:../libraries/Storage/sd_mmc_spi.c **** 		}
 549:../libraries/Storage/sd_mmc_spi.c **** 	}
 550:../libraries/Storage/sd_mmc_spi.c **** 	return sd_mmc_spi_stop_multiwrite_block();
 551:../libraries/Storage/sd_mmc_spi.c **** }
 1516              		.loc 1 551 0
 1517 0042 02B0     		add	sp, sp, #8
 1518              		.cfi_remember_state
 1519              		.cfi_def_cfa_offset 16
 1520              		@ sp needed
 1521 0044 70BD     		pop	{r4, r5, r6, pc}
 1522              	.L128:
 1523              		.cfi_restore_state
 550:../libraries/Storage/sd_mmc_spi.c **** }
 1524              		.loc 1 550 0
 1525 0046 FFF7FEFF 		bl	sd_mmc_spi_stop_multiwrite_block
 1526              	.LVL100:
 1527              		.loc 1 551 0
 1528 004a 02B0     		add	sp, sp, #8
 1529              		.cfi_remember_state
 1530              		.cfi_def_cfa_offset 16
 1531              		@ sp needed
 1532 004c 70BD     		pop	{r4, r5, r6, pc}
ARM GAS  /tmp/ccbxFcRO.s 			page 44


 1533              	.LVL101:
 1534              	.L134:
 1535              		.cfi_restore_state
 530:../libraries/Storage/sd_mmc_spi.c **** 	}
 1536              		.loc 1 530 0
 1537 004e FFF7FEFF 		bl	sd_mmc_spi_start_write_block
 1538              	.LVL102:
 1539 0052 E4E7     		b	.L127
 1540              	.L135:
 544:../libraries/Storage/sd_mmc_spi.c **** 			sd_mmc_spi_err = SD_MMC_SPI_ERR_WRITE_TIMEOUT;
 1541              		.loc 1 544 0
 1542 0054 FFF7FEFF 		bl	sd_mmc_spi_wait_busy
 1543              	.LVL103:
 1544 0058 0028     		cmp	r0, #0
 1545 005a F4D1     		bne	.L128
 545:../libraries/Storage/sd_mmc_spi.c **** 			sd_mmc_spi_debug("%s: Write blocks timeout\n\r", __func__);
 1546              		.loc 1 545 0
 1547 005c 0523     		movs	r3, #5
 1548 005e 2B70     		strb	r3, [r5]
 547:../libraries/Storage/sd_mmc_spi.c **** 		}
 1549              		.loc 1 547 0
 1550 0060 EFE7     		b	.L129
 1551              	.L137:
 1552 0062 00BF     		.align	2
 1553              	.L136:
 1554 0064 00000000 		.word	.LANCHOR2
 1555 0068 00000000 		.word	.LANCHOR3
 1556 006c 00000000 		.word	.LANCHOR1
 1557              		.cfi_endproc
 1558              	.LFE251:
 1559              		.size	sd_mmc_spi_write_word, .-sd_mmc_spi_write_word
 1560              		.section	.text.sd_mmc_spi_start_read_blocks,"ax",%progbits
 1561              		.align	1
 1562              		.p2align 2,,3
 1563              		.global	sd_mmc_spi_start_read_blocks
 1564              		.syntax unified
 1565              		.thumb
 1566              		.thumb_func
 1567              		.fpu fpv5-d16
 1568              		.type	sd_mmc_spi_start_read_blocks, %function
 1569              	sd_mmc_spi_start_read_blocks:
 1570              	.LFB252:
 552:../libraries/Storage/sd_mmc_spi.c **** 
 553:../libraries/Storage/sd_mmc_spi.c **** bool sd_mmc_spi_start_read_blocks(void *dest, uint16_t nb_block)
 554:../libraries/Storage/sd_mmc_spi.c **** {
 1571              		.loc 1 554 0
 1572              		.cfi_startproc
 1573              		@ args = 0, pretend = 0, frame = 8
 1574              		@ frame_needed = 0, uses_anonymous_args = 0
 1575              	.LVL104:
 1576 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1577              		.cfi_def_cfa_offset 28
 1578              		.cfi_offset 4, -28
 1579              		.cfi_offset 5, -24
 1580              		.cfi_offset 6, -20
 1581              		.cfi_offset 7, -16
 1582              		.cfi_offset 8, -12
ARM GAS  /tmp/ccbxFcRO.s 			page 45


 1583              		.cfi_offset 9, -8
 1584              		.cfi_offset 14, -4
 555:../libraries/Storage/sd_mmc_spi.c **** 	uint32_t pos;
 556:../libraries/Storage/sd_mmc_spi.c **** 
 557:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_err = SD_MMC_SPI_NO_ERR;
 1585              		.loc 1 557 0
 1586 0004 174B     		ldr	r3, .L149
 1587 0006 0025     		movs	r5, #0
 554:../libraries/Storage/sd_mmc_spi.c **** 	uint32_t pos;
 1588              		.loc 1 554 0
 1589 0008 83B0     		sub	sp, sp, #12
 1590              		.cfi_def_cfa_offset 40
 1591              		.loc 1 557 0
 1592 000a 1D70     		strb	r5, [r3]
 1593              	.LVL105:
 558:../libraries/Storage/sd_mmc_spi.c **** 	pos = 0;
 559:../libraries/Storage/sd_mmc_spi.c **** 	while (nb_block--) {
 1594              		.loc 1 559 0
 1595 000c 29B3     		cbz	r1, .L142
 1596 000e 4C1E     		subs	r4, r1, #1
 1597 0010 8146     		mov	r9, r0
 560:../libraries/Storage/sd_mmc_spi.c **** 		Assert(sd_mmc_spi_nb_block >
 561:../libraries/Storage/sd_mmc_spi.c **** 				(sd_mmc_spi_transfert_pos / sd_mmc_spi_block_size));
 562:../libraries/Storage/sd_mmc_spi.c **** 		if (!sd_mmc_spi_start_read_block()) {
 563:../libraries/Storage/sd_mmc_spi.c **** 			return false;
 564:../libraries/Storage/sd_mmc_spi.c **** 		}
 565:../libraries/Storage/sd_mmc_spi.c **** 
 566:../libraries/Storage/sd_mmc_spi.c **** 		// Read block
 567:../libraries/Storage/sd_mmc_spi.c **** 		sspi_read_packet(&((uint8_t*)dest)[pos], sd_mmc_spi_block_size);
 1598              		.loc 1 567 0
 1599 0012 DFF85880 		ldr	r8, .L149+8
 1600 0016 A4B2     		uxth	r4, r4
 568:../libraries/Storage/sd_mmc_spi.c **** 		pos += sd_mmc_spi_block_size;
 569:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_transfert_pos += sd_mmc_spi_block_size;
 1601              		.loc 1 569 0
 1602 0018 134F     		ldr	r7, .L149+4
 1603 001a 15E0     		b	.L141
 1604              	.LVL106:
 1605              	.L148:
 1606              	.LBB159:
 1607              	.LBB160:
 120:../libraries/Storage/../SharedSpi/SharedSpi.h **** }
 1608              		.loc 2 120 0
 1609 001c B8F80020 		ldrh	r2, [r8]
 1610 0020 0020     		movs	r0, #0
 1611 0022 FFF7FEFF 		bl	sspi_transceive_packet
 1612              	.LVL107:
 1613              	.LBE160:
 1614              	.LBE159:
 568:../libraries/Storage/sd_mmc_spi.c **** 		pos += sd_mmc_spi_block_size;
 1615              		.loc 1 568 0
 1616 0026 B8F80060 		ldrh	r6, [r8]
 1617              		.loc 1 569 0
 1618 002a 3B68     		ldr	r3, [r7]
 559:../libraries/Storage/sd_mmc_spi.c **** 		Assert(sd_mmc_spi_nb_block >
 1619              		.loc 1 559 0
 1620 002c 013C     		subs	r4, r4, #1
ARM GAS  /tmp/ccbxFcRO.s 			page 46


 1621              	.LVL108:
 1622              	.LBB162:
 1623              	.LBB163:
 1624              	.LBB164:
 1625              	.LBB165:
 120:../libraries/Storage/../SharedSpi/SharedSpi.h **** }
 1626              		.loc 2 120 0
 1627 002e 0222     		movs	r2, #2
 1628 0030 01A9     		add	r1, sp, #4
 1629              	.LBE165:
 1630              	.LBE164:
 1631              	.LBE163:
 1632              	.LBE162:
 1633              		.loc 1 569 0
 1634 0032 3344     		add	r3, r3, r6
 1635              	.LBB172:
 1636              	.LBB170:
 1637              	.LBB168:
 1638              	.LBB166:
 120:../libraries/Storage/../SharedSpi/SharedSpi.h **** }
 1639              		.loc 2 120 0
 1640 0034 0020     		movs	r0, #0
 1641              	.LBE166:
 1642              	.LBE168:
 1643              	.LBE170:
 1644              	.LBE172:
 559:../libraries/Storage/sd_mmc_spi.c **** 		Assert(sd_mmc_spi_nb_block >
 1645              		.loc 1 559 0
 1646 0036 A4B2     		uxth	r4, r4
 568:../libraries/Storage/sd_mmc_spi.c **** 		pos += sd_mmc_spi_block_size;
 1647              		.loc 1 568 0
 1648 0038 3544     		add	r5, r5, r6
 1649              	.LVL109:
 1650              		.loc 1 569 0
 1651 003a 3B60     		str	r3, [r7]
 1652              	.LVL110:
 1653              	.LBB173:
 1654              	.LBB171:
 1655              	.LBB169:
 1656              	.LBB167:
 120:../libraries/Storage/../SharedSpi/SharedSpi.h **** }
 1657              		.loc 2 120 0
 1658 003c FFF7FEFF 		bl	sspi_transceive_packet
 1659              	.LVL111:
 1660              	.LBE167:
 1661              	.LBE169:
 1662              	.LBE171:
 1663              	.LBE173:
 559:../libraries/Storage/sd_mmc_spi.c **** 		Assert(sd_mmc_spi_nb_block >
 1664              		.loc 1 559 0
 1665 0040 4FF6FF73 		movw	r3, #65535
 1666 0044 9C42     		cmp	r4, r3
 1667 0046 08D0     		beq	.L142
 1668              	.LVL112:
 1669              	.L141:
 562:../libraries/Storage/sd_mmc_spi.c **** 			return false;
 1670              		.loc 1 562 0
ARM GAS  /tmp/ccbxFcRO.s 			page 47


 1671 0048 FFF7FEFF 		bl	sd_mmc_spi_start_read_block
 1672              	.LVL113:
 1673              	.LBB174:
 1674              	.LBB161:
 120:../libraries/Storage/../SharedSpi/SharedSpi.h **** }
 1675              		.loc 2 120 0
 1676 004c 09EB0501 		add	r1, r9, r5
 1677              	.LVL114:
 1678              	.LBE161:
 1679              	.LBE174:
 562:../libraries/Storage/sd_mmc_spi.c **** 			return false;
 1680              		.loc 1 562 0
 1681 0050 0028     		cmp	r0, #0
 1682 0052 E3D1     		bne	.L148
 570:../libraries/Storage/sd_mmc_spi.c **** 
 571:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_stop_read_block();
 572:../libraries/Storage/sd_mmc_spi.c **** 	}
 573:../libraries/Storage/sd_mmc_spi.c **** 	return true;
 574:../libraries/Storage/sd_mmc_spi.c **** }
 1683              		.loc 1 574 0
 1684 0054 03B0     		add	sp, sp, #12
 1685              		.cfi_remember_state
 1686              		.cfi_def_cfa_offset 28
 1687              		@ sp needed
 1688 0056 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1689              	.LVL115:
 1690              	.L142:
 1691              		.cfi_restore_state
 573:../libraries/Storage/sd_mmc_spi.c **** }
 1692              		.loc 1 573 0
 1693 005a 0120     		movs	r0, #1
 1694              		.loc 1 574 0
 1695 005c 03B0     		add	sp, sp, #12
 1696              		.cfi_def_cfa_offset 28
 1697              		@ sp needed
 1698 005e BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1699              	.L150:
 1700 0062 00BF     		.align	2
 1701              	.L149:
 1702 0064 00000000 		.word	.LANCHOR1
 1703 0068 00000000 		.word	.LANCHOR2
 1704 006c 00000000 		.word	.LANCHOR3
 1705              		.cfi_endproc
 1706              	.LFE252:
 1707              		.size	sd_mmc_spi_start_read_blocks, .-sd_mmc_spi_start_read_blocks
 1708              		.section	.text.sd_mmc_spi_wait_end_of_read_blocks,"ax",%progbits
 1709              		.align	1
 1710              		.p2align 2,,3
 1711              		.global	sd_mmc_spi_wait_end_of_read_blocks
 1712              		.syntax unified
 1713              		.thumb
 1714              		.thumb_func
 1715              		.fpu fpv5-d16
 1716              		.type	sd_mmc_spi_wait_end_of_read_blocks, %function
 1717              	sd_mmc_spi_wait_end_of_read_blocks:
 1718              	.LFB253:
 575:../libraries/Storage/sd_mmc_spi.c **** 
ARM GAS  /tmp/ccbxFcRO.s 			page 48


 576:../libraries/Storage/sd_mmc_spi.c **** bool sd_mmc_spi_wait_end_of_read_blocks(void)
 577:../libraries/Storage/sd_mmc_spi.c **** {
 1719              		.loc 1 577 0
 1720              		.cfi_startproc
 1721              		@ args = 0, pretend = 0, frame = 0
 1722              		@ frame_needed = 0, uses_anonymous_args = 0
 1723              		@ link register save eliminated.
 578:../libraries/Storage/sd_mmc_spi.c **** 	return true;
 579:../libraries/Storage/sd_mmc_spi.c **** }
 1724              		.loc 1 579 0
 1725 0000 0120     		movs	r0, #1
 1726 0002 7047     		bx	lr
 1727              		.cfi_endproc
 1728              	.LFE253:
 1729              		.size	sd_mmc_spi_wait_end_of_read_blocks, .-sd_mmc_spi_wait_end_of_read_blocks
 1730              		.section	.text.sd_mmc_spi_start_write_blocks,"ax",%progbits
 1731              		.align	1
 1732              		.p2align 2,,3
 1733              		.global	sd_mmc_spi_start_write_blocks
 1734              		.syntax unified
 1735              		.thumb
 1736              		.thumb_func
 1737              		.fpu fpv5-d16
 1738              		.type	sd_mmc_spi_start_write_blocks, %function
 1739              	sd_mmc_spi_start_write_blocks:
 1740              	.LFB254:
 580:../libraries/Storage/sd_mmc_spi.c **** 
 581:../libraries/Storage/sd_mmc_spi.c **** bool sd_mmc_spi_start_write_blocks(const void *src, uint16_t nb_block)
 582:../libraries/Storage/sd_mmc_spi.c **** {
 1741              		.loc 1 582 0
 1742              		.cfi_startproc
 1743              		@ args = 0, pretend = 0, frame = 0
 1744              		@ frame_needed = 0, uses_anonymous_args = 0
 1745              	.LVL116:
 1746 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 1747              		.cfi_def_cfa_offset 32
 1748              		.cfi_offset 3, -32
 1749              		.cfi_offset 4, -28
 1750              		.cfi_offset 5, -24
 1751              		.cfi_offset 6, -20
 1752              		.cfi_offset 7, -16
 1753              		.cfi_offset 8, -12
 1754              		.cfi_offset 9, -8
 1755              		.cfi_offset 14, -4
 583:../libraries/Storage/sd_mmc_spi.c **** 	uint32_t pos;
 584:../libraries/Storage/sd_mmc_spi.c **** 
 585:../libraries/Storage/sd_mmc_spi.c **** 	sd_mmc_spi_err = SD_MMC_SPI_NO_ERR;
 1756              		.loc 1 585 0
 1757 0004 DFF85C90 		ldr	r9, .L163+8
 1758 0008 0024     		movs	r4, #0
 582:../libraries/Storage/sd_mmc_spi.c **** 	uint32_t pos;
 1759              		.loc 1 582 0
 1760 000a 8046     		mov	r8, r0
 1761 000c 0D46     		mov	r5, r1
 586:../libraries/Storage/sd_mmc_spi.c **** 	pos = 0;
 587:../libraries/Storage/sd_mmc_spi.c **** 	while (nb_block--) {
 588:../libraries/Storage/sd_mmc_spi.c **** 		Assert(sd_mmc_spi_nb_block >
ARM GAS  /tmp/ccbxFcRO.s 			page 49


 589:../libraries/Storage/sd_mmc_spi.c **** 				(sd_mmc_spi_transfert_pos / sd_mmc_spi_block_size));
 590:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_start_write_block();
 591:../libraries/Storage/sd_mmc_spi.c **** 
 592:../libraries/Storage/sd_mmc_spi.c **** 		// Write block
 593:../libraries/Storage/sd_mmc_spi.c **** 		sspi_write_packet(&((uint8_t*)src)[pos], sd_mmc_spi_block_size);
 1762              		.loc 1 593 0
 1763 000e 134F     		ldr	r7, .L163
 594:../libraries/Storage/sd_mmc_spi.c **** 		pos += sd_mmc_spi_block_size;
 595:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_transfert_pos += sd_mmc_spi_block_size;
 1764              		.loc 1 595 0
 1765 0010 134E     		ldr	r6, .L163+4
 585:../libraries/Storage/sd_mmc_spi.c **** 	pos = 0;
 1766              		.loc 1 585 0
 1767 0012 89F80040 		strb	r4, [r9]
 1768              	.LVL117:
 1769              	.L153:
 587:../libraries/Storage/sd_mmc_spi.c **** 		Assert(sd_mmc_spi_nb_block >
 1770              		.loc 1 587 0
 1771 0016 8DB1     		cbz	r5, .L157
 590:../libraries/Storage/sd_mmc_spi.c **** 
 1772              		.loc 1 590 0
 1773 0018 FFF7FEFF 		bl	sd_mmc_spi_start_write_block
 1774              	.LVL118:
 1775              	.LBB175:
 1776              	.LBB176:
 1777              		.loc 2 126 0
 1778 001c 3A88     		ldrh	r2, [r7]
 1779              	.LVL119:
 1780 001e 08EB0400 		add	r0, r8, r4
 1781              	.LVL120:
 1782 0022 0021     		movs	r1, #0
 1783 0024 FFF7FEFF 		bl	sspi_transceive_packet
 1784              	.LVL121:
 1785              	.LBE176:
 1786              	.LBE175:
 594:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_transfert_pos += sd_mmc_spi_block_size;
 1787              		.loc 1 594 0
 1788 0028 3A88     		ldrh	r2, [r7]
 1789              		.loc 1 595 0
 1790 002a 3368     		ldr	r3, [r6]
 594:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_transfert_pos += sd_mmc_spi_block_size;
 1791              		.loc 1 594 0
 1792 002c 1444     		add	r4, r4, r2
 1793              	.LVL122:
 1794              		.loc 1 595 0
 1795 002e 1344     		add	r3, r3, r2
 1796 0030 3360     		str	r3, [r6]
 596:../libraries/Storage/sd_mmc_spi.c **** 
 597:../libraries/Storage/sd_mmc_spi.c **** 		if (!sd_mmc_spi_stop_write_block()) {
 1797              		.loc 1 597 0
 1798 0032 FFF7FEFF 		bl	sd_mmc_spi_stop_write_block
 1799              	.LVL123:
 1800 0036 78B1     		cbz	r0, .L154
 598:../libraries/Storage/sd_mmc_spi.c **** 			return false;
 599:../libraries/Storage/sd_mmc_spi.c **** 		}
 600:../libraries/Storage/sd_mmc_spi.c **** 		// Do not check busy of last block
 601:../libraries/Storage/sd_mmc_spi.c **** 		// but delay it to mci_wait_end_of_write_blocks()
ARM GAS  /tmp/ccbxFcRO.s 			page 50


 602:../libraries/Storage/sd_mmc_spi.c **** 		if (nb_block) {
 1801              		.loc 1 602 0
 1802 0038 012D     		cmp	r5, #1
 1803 003a 02D1     		bne	.L155
 1804              	.L157:
 603:../libraries/Storage/sd_mmc_spi.c **** 			// Wait busy due to data programmation
 604:../libraries/Storage/sd_mmc_spi.c **** 			if (!sd_mmc_spi_wait_busy()) {
 605:../libraries/Storage/sd_mmc_spi.c **** 				sd_mmc_spi_err = SD_MMC_SPI_ERR_WRITE_TIMEOUT;
 606:../libraries/Storage/sd_mmc_spi.c **** 				sd_mmc_spi_debug("%s: Write blocks timeout\n\r", __func__);
 607:../libraries/Storage/sd_mmc_spi.c **** 				return false;
 608:../libraries/Storage/sd_mmc_spi.c **** 			}
 609:../libraries/Storage/sd_mmc_spi.c **** 		}
 610:../libraries/Storage/sd_mmc_spi.c **** 	}
 611:../libraries/Storage/sd_mmc_spi.c **** 	return true;
 1805              		.loc 1 611 0
 1806 003c 0120     		movs	r0, #1
 1807 003e BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1808              	.LVL124:
 1809              	.L155:
 1810 0042 013D     		subs	r5, r5, #1
 1811              	.LVL125:
 604:../libraries/Storage/sd_mmc_spi.c **** 				sd_mmc_spi_err = SD_MMC_SPI_ERR_WRITE_TIMEOUT;
 1812              		.loc 1 604 0
 1813 0044 FFF7FEFF 		bl	sd_mmc_spi_wait_busy
 1814              	.LVL126:
 1815 0048 ADB2     		uxth	r5, r5
 1816 004a 0028     		cmp	r0, #0
 1817 004c E3D1     		bne	.L153
 605:../libraries/Storage/sd_mmc_spi.c **** 				sd_mmc_spi_debug("%s: Write blocks timeout\n\r", __func__);
 1818              		.loc 1 605 0
 1819 004e 0523     		movs	r3, #5
 1820 0050 89F80030 		strb	r3, [r9]
 607:../libraries/Storage/sd_mmc_spi.c **** 			}
 1821              		.loc 1 607 0
 1822 0054 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1823              	.LVL127:
 1824              	.L154:
 612:../libraries/Storage/sd_mmc_spi.c **** }
 1825              		.loc 1 612 0
 1826 0058 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1827              	.LVL128:
 1828              	.L164:
 1829              		.align	2
 1830              	.L163:
 1831 005c 00000000 		.word	.LANCHOR3
 1832 0060 00000000 		.word	.LANCHOR2
 1833 0064 00000000 		.word	.LANCHOR1
 1834              		.cfi_endproc
 1835              	.LFE254:
 1836              		.size	sd_mmc_spi_start_write_blocks, .-sd_mmc_spi_start_write_blocks
 1837              		.section	.text.sd_mmc_spi_wait_end_of_write_blocks,"ax",%progbits
 1838              		.align	1
 1839              		.p2align 2,,3
 1840              		.global	sd_mmc_spi_wait_end_of_write_blocks
 1841              		.syntax unified
 1842              		.thumb
 1843              		.thumb_func
ARM GAS  /tmp/ccbxFcRO.s 			page 51


 1844              		.fpu fpv5-d16
 1845              		.type	sd_mmc_spi_wait_end_of_write_blocks, %function
 1846              	sd_mmc_spi_wait_end_of_write_blocks:
 1847              	.LFB255:
 613:../libraries/Storage/sd_mmc_spi.c **** 
 614:../libraries/Storage/sd_mmc_spi.c **** bool sd_mmc_spi_wait_end_of_write_blocks(void)
 615:../libraries/Storage/sd_mmc_spi.c **** {
 1848              		.loc 1 615 0
 1849              		.cfi_startproc
 1850              		@ args = 0, pretend = 0, frame = 0
 1851              		@ frame_needed = 0, uses_anonymous_args = 0
 1852 0000 08B5     		push	{r3, lr}
 1853              		.cfi_def_cfa_offset 8
 1854              		.cfi_offset 3, -8
 1855              		.cfi_offset 14, -4
 616:../libraries/Storage/sd_mmc_spi.c **** 	// Wait busy due to data programmation of last block writed
 617:../libraries/Storage/sd_mmc_spi.c **** 	if (!sd_mmc_spi_wait_busy()) {
 1856              		.loc 1 617 0
 1857 0002 FFF7FEFF 		bl	sd_mmc_spi_wait_busy
 1858              	.LVL129:
 1859 0006 18B9     		cbnz	r0, .L166
 618:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_err = SD_MMC_SPI_ERR_WRITE_TIMEOUT;
 1860              		.loc 1 618 0
 1861 0008 034B     		ldr	r3, .L170
 1862 000a 0522     		movs	r2, #5
 1863 000c 1A70     		strb	r2, [r3]
 619:../libraries/Storage/sd_mmc_spi.c **** 		sd_mmc_spi_debug("%s: Write blocks timeout\n\r", __func__);
 620:../libraries/Storage/sd_mmc_spi.c **** 		return false;
 1864              		.loc 1 620 0
 1865 000e 08BD     		pop	{r3, pc}
 1866              	.L166:
 621:../libraries/Storage/sd_mmc_spi.c **** 	}
 622:../libraries/Storage/sd_mmc_spi.c **** 	return sd_mmc_spi_stop_multiwrite_block();
 623:../libraries/Storage/sd_mmc_spi.c **** }
 1867              		.loc 1 623 0
 1868 0010 BDE80840 		pop	{r3, lr}
 1869              		.cfi_restore 14
 1870              		.cfi_restore 3
 1871              		.cfi_def_cfa_offset 0
 622:../libraries/Storage/sd_mmc_spi.c **** }
 1872              		.loc 1 622 0
 1873 0014 FFF7FEBF 		b	sd_mmc_spi_stop_multiwrite_block
 1874              	.LVL130:
 1875              	.L171:
 1876              		.align	2
 1877              	.L170:
 1878 0018 00000000 		.word	.LANCHOR1
 1879              		.cfi_endproc
 1880              	.LFE255:
 1881              		.size	sd_mmc_spi_wait_end_of_write_blocks, .-sd_mmc_spi_wait_end_of_write_blocks
 1882              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 1883              		.align	2
 1884              		.type	cpu_irq_critical_section_counter, %object
 1885              		.size	cpu_irq_critical_section_counter, 4
 1886              	cpu_irq_critical_section_counter:
 1887 0000 00000000 		.space	4
 1888              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
ARM GAS  /tmp/ccbxFcRO.s 			page 52


 1889              		.type	cpu_irq_prev_interrupt_state, %object
 1890              		.size	cpu_irq_prev_interrupt_state, 1
 1891              	cpu_irq_prev_interrupt_state:
 1892 0000 00       		.space	1
 1893              		.section	.bss.sd_mmc_spi_block_size,"aw",%nobits
 1894              		.align	1
 1895              		.set	.LANCHOR3,. + 0
 1896              		.type	sd_mmc_spi_block_size, %object
 1897              		.size	sd_mmc_spi_block_size, 2
 1898              	sd_mmc_spi_block_size:
 1899 0000 0000     		.space	2
 1900              		.section	.bss.sd_mmc_spi_devices,"aw",%nobits
 1901              		.align	2
 1902              		.set	.LANCHOR5,. + 0
 1903              		.type	sd_mmc_spi_devices, %object
 1904              		.size	sd_mmc_spi_devices, 8
 1905              	sd_mmc_spi_devices:
 1906 0000 00000000 		.space	8
 1906      00000000 
 1907              		.section	.bss.sd_mmc_spi_err,"aw",%nobits
 1908              		.set	.LANCHOR1,. + 0
 1909              		.type	sd_mmc_spi_err, %object
 1910              		.size	sd_mmc_spi_err, 1
 1911              	sd_mmc_spi_err:
 1912 0000 00       		.space	1
 1913              		.section	.bss.sd_mmc_spi_nb_block,"aw",%nobits
 1914              		.align	1
 1915              		.set	.LANCHOR0,. + 0
 1916              		.type	sd_mmc_spi_nb_block, %object
 1917              		.size	sd_mmc_spi_nb_block, 2
 1918              	sd_mmc_spi_nb_block:
 1919 0000 0000     		.space	2
 1920              		.section	.bss.sd_mmc_spi_response_32,"aw",%nobits
 1921              		.align	2
 1922              		.set	.LANCHOR6,. + 0
 1923              		.type	sd_mmc_spi_response_32, %object
 1924              		.size	sd_mmc_spi_response_32, 4
 1925              	sd_mmc_spi_response_32:
 1926 0000 00000000 		.space	4
 1927              		.section	.bss.sd_mmc_spi_transfert_pos,"aw",%nobits
 1928              		.align	2
 1929              		.set	.LANCHOR2,. + 0
 1930              		.type	sd_mmc_spi_transfert_pos, %object
 1931              		.size	sd_mmc_spi_transfert_pos, 4
 1932              	sd_mmc_spi_transfert_pos:
 1933 0000 00000000 		.space	4
 1934              		.section	.bss.spiIdleFunc,"aw",%nobits
 1935              		.align	2
 1936              		.set	.LANCHOR4,. + 0
 1937              		.type	spiIdleFunc, %object
 1938              		.size	spiIdleFunc, 4
 1939              	spiIdleFunc:
 1940 0000 00000000 		.space	4
 1941              		.text
 1942              	.Letext0:
 1943              		.file 4 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 1944              		.file 5 "/usr/include/newlib/machine/_default_types.h"
ARM GAS  /tmp/ccbxFcRO.s 			page 53


 1945              		.file 6 "/usr/include/newlib/sys/_stdint.h"
 1946              		.file 7 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 1947              		.file 8 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 1948              		.file 9 "/usr/include/newlib/sys/lock.h"
 1949              		.file 10 "/usr/include/newlib/sys/_types.h"
 1950              		.file 11 "/usr/include/newlib/sys/reent.h"
 1951              		.file 12 "/usr/include/newlib/stdlib.h"
 1952              		.file 13 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 1953              		.file 14 "/usr/include/newlib/math.h"
 1954              		.file 15 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h"
 1955              		.file 16 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/compiler.h"
 1956              		.file 17 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/Core.h"
 1957              		.file 18 "/usr/include/newlib/time.h"
 1958              		.file 19 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/variant.h"
 1959              		.file 20 "../libraries/Storage/sd_mmc_protocol.h"
 1960              		.file 21 "../libraries/Storage/sd_mmc_spi.h"
 1961              		.section	.debug_info,"",%progbits
 1962              	.Ldebug_info0:
 1963 0000 39190000 		.4byte	0x1939
 1964 0004 0400     		.2byte	0x4
 1965 0006 00000000 		.4byte	.Ldebug_abbrev0
 1966 000a 04       		.byte	0x4
 1967 000b 01       		.uleb128 0x1
 1968 000c 0F0A0000 		.4byte	.LASF234
 1969 0010 0C       		.byte	0xc
 1970 0011 EA050000 		.4byte	.LASF235
 1971 0015 FF0A0000 		.4byte	.LASF236
 1972 0019 A0010000 		.4byte	.Ldebug_ranges0+0x1a0
 1973 001d 00000000 		.4byte	0
 1974 0021 00000000 		.4byte	.Ldebug_line0
 1975 0025 02       		.uleb128 0x2
 1976 0026 04       		.byte	0x4
 1977 0027 05       		.byte	0x5
 1978 0028 696E7400 		.ascii	"int\000"
 1979 002c 03       		.uleb128 0x3
 1980 002d 8D030000 		.4byte	.LASF2
 1981 0031 04       		.byte	0x4
 1982 0032 D8       		.byte	0xd8
 1983 0033 37000000 		.4byte	0x37
 1984 0037 04       		.uleb128 0x4
 1985 0038 04       		.byte	0x4
 1986 0039 07       		.byte	0x7
 1987 003a 85000000 		.4byte	.LASF0
 1988 003e 04       		.uleb128 0x4
 1989 003f 01       		.byte	0x1
 1990 0040 06       		.byte	0x6
 1991 0041 A60B0000 		.4byte	.LASF1
 1992 0045 03       		.uleb128 0x3
 1993 0046 AF080000 		.4byte	.LASF3
 1994 004a 05       		.byte	0x5
 1995 004b 1D       		.byte	0x1d
 1996 004c 50000000 		.4byte	0x50
 1997 0050 04       		.uleb128 0x4
 1998 0051 01       		.byte	0x1
 1999 0052 08       		.byte	0x8
 2000 0053 C5090000 		.4byte	.LASF4
 2001 0057 04       		.uleb128 0x4
ARM GAS  /tmp/ccbxFcRO.s 			page 54


 2002 0058 02       		.byte	0x2
 2003 0059 05       		.byte	0x5
 2004 005a C0070000 		.4byte	.LASF5
 2005 005e 03       		.uleb128 0x3
 2006 005f CD020000 		.4byte	.LASF6
 2007 0063 05       		.byte	0x5
 2008 0064 2B       		.byte	0x2b
 2009 0065 69000000 		.4byte	0x69
 2010 0069 04       		.uleb128 0x4
 2011 006a 02       		.byte	0x2
 2012 006b 07       		.byte	0x7
 2013 006c B90B0000 		.4byte	.LASF7
 2014 0070 03       		.uleb128 0x3
 2015 0071 C2000000 		.4byte	.LASF8
 2016 0075 05       		.byte	0x5
 2017 0076 3F       		.byte	0x3f
 2018 0077 7B000000 		.4byte	0x7b
 2019 007b 04       		.uleb128 0x4
 2020 007c 04       		.byte	0x4
 2021 007d 05       		.byte	0x5
 2022 007e E5070000 		.4byte	.LASF9
 2023 0082 03       		.uleb128 0x3
 2024 0083 BA020000 		.4byte	.LASF10
 2025 0087 05       		.byte	0x5
 2026 0088 41       		.byte	0x41
 2027 0089 8D000000 		.4byte	0x8d
 2028 008d 04       		.uleb128 0x4
 2029 008e 04       		.byte	0x4
 2030 008f 07       		.byte	0x7
 2031 0090 4A090000 		.4byte	.LASF11
 2032 0094 04       		.uleb128 0x4
 2033 0095 08       		.byte	0x8
 2034 0096 05       		.byte	0x5
 2035 0097 43050000 		.4byte	.LASF12
 2036 009b 04       		.uleb128 0x4
 2037 009c 08       		.byte	0x8
 2038 009d 07       		.byte	0x7
 2039 009e 7A020000 		.4byte	.LASF13
 2040 00a2 03       		.uleb128 0x3
 2041 00a3 C5040000 		.4byte	.LASF14
 2042 00a7 06       		.byte	0x6
 2043 00a8 18       		.byte	0x18
 2044 00a9 45000000 		.4byte	0x45
 2045 00ad 05       		.uleb128 0x5
 2046 00ae A2000000 		.4byte	0xa2
 2047 00b2 03       		.uleb128 0x3
 2048 00b3 4C070000 		.4byte	.LASF15
 2049 00b7 06       		.byte	0x6
 2050 00b8 24       		.byte	0x24
 2051 00b9 5E000000 		.4byte	0x5e
 2052 00bd 03       		.uleb128 0x3
 2053 00be 95090000 		.4byte	.LASF16
 2054 00c2 06       		.byte	0x6
 2055 00c3 2C       		.byte	0x2c
 2056 00c4 70000000 		.4byte	0x70
 2057 00c8 06       		.uleb128 0x6
 2058 00c9 BD000000 		.4byte	0xbd
ARM GAS  /tmp/ccbxFcRO.s 			page 55


 2059 00cd 03       		.uleb128 0x3
 2060 00ce DC010000 		.4byte	.LASF17
 2061 00d2 06       		.byte	0x6
 2062 00d3 30       		.byte	0x30
 2063 00d4 82000000 		.4byte	0x82
 2064 00d8 06       		.uleb128 0x6
 2065 00d9 CD000000 		.4byte	0xcd
 2066 00dd 05       		.uleb128 0x5
 2067 00de CD000000 		.4byte	0xcd
 2068 00e2 07       		.uleb128 0x7
 2069 00e3 04       		.byte	0x4
 2070 00e4 04       		.uleb128 0x4
 2071 00e5 04       		.byte	0x4
 2072 00e6 07       		.byte	0x7
 2073 00e7 8F070000 		.4byte	.LASF18
 2074 00eb 08       		.uleb128 0x8
 2075 00ec 03080000 		.4byte	.LASF19
 2076 00f0 07       		.byte	0x7
 2077 00f1 6508     		.2byte	0x865
 2078 00f3 C8000000 		.4byte	0xc8
 2079 00f7 09       		.uleb128 0x9
 2080 00f8 00000000 		.4byte	.LASF20
 2081 00fc 08       		.byte	0x8
 2082 00fd 3A       		.byte	0x3a
 2083 00fe CD000000 		.4byte	0xcd
 2084 0102 03       		.uleb128 0x3
 2085 0103 FD090000 		.4byte	.LASF21
 2086 0107 09       		.byte	0x9
 2087 0108 07       		.byte	0x7
 2088 0109 25000000 		.4byte	0x25
 2089 010d 03       		.uleb128 0x3
 2090 010e 0E0C0000 		.4byte	.LASF22
 2091 0112 0A       		.byte	0xa
 2092 0113 2C       		.byte	0x2c
 2093 0114 7B000000 		.4byte	0x7b
 2094 0118 03       		.uleb128 0x3
 2095 0119 5D010000 		.4byte	.LASF23
 2096 011d 0A       		.byte	0xa
 2097 011e 72       		.byte	0x72
 2098 011f 7B000000 		.4byte	0x7b
 2099 0123 0A       		.uleb128 0xa
 2100 0124 8E090000 		.4byte	.LASF24
 2101 0128 04       		.byte	0x4
 2102 0129 6501     		.2byte	0x165
 2103 012b 37000000 		.4byte	0x37
 2104 012f 0B       		.uleb128 0xb
 2105 0130 04       		.byte	0x4
 2106 0131 0A       		.byte	0xa
 2107 0132 A6       		.byte	0xa6
 2108 0133 4E010000 		.4byte	0x14e
 2109 0137 0C       		.uleb128 0xc
 2110 0138 B1040000 		.4byte	.LASF25
 2111 013c 0A       		.byte	0xa
 2112 013d A8       		.byte	0xa8
 2113 013e 23010000 		.4byte	0x123
 2114 0142 0C       		.uleb128 0xc
 2115 0143 48080000 		.4byte	.LASF26
ARM GAS  /tmp/ccbxFcRO.s 			page 56


 2116 0147 0A       		.byte	0xa
 2117 0148 A9       		.byte	0xa9
 2118 0149 4E010000 		.4byte	0x14e
 2119 014d 00       		.byte	0
 2120 014e 0D       		.uleb128 0xd
 2121 014f 50000000 		.4byte	0x50
 2122 0153 5E010000 		.4byte	0x15e
 2123 0157 0E       		.uleb128 0xe
 2124 0158 E4000000 		.4byte	0xe4
 2125 015c 03       		.byte	0x3
 2126 015d 00       		.byte	0
 2127 015e 0F       		.uleb128 0xf
 2128 015f 08       		.byte	0x8
 2129 0160 0A       		.byte	0xa
 2130 0161 A3       		.byte	0xa3
 2131 0162 7F010000 		.4byte	0x17f
 2132 0166 10       		.uleb128 0x10
 2133 0167 11020000 		.4byte	.LASF27
 2134 016b 0A       		.byte	0xa
 2135 016c A5       		.byte	0xa5
 2136 016d 25000000 		.4byte	0x25
 2137 0171 00       		.byte	0
 2138 0172 10       		.uleb128 0x10
 2139 0173 B1030000 		.4byte	.LASF28
 2140 0177 0A       		.byte	0xa
 2141 0178 AA       		.byte	0xaa
 2142 0179 2F010000 		.4byte	0x12f
 2143 017d 04       		.byte	0x4
 2144 017e 00       		.byte	0
 2145 017f 03       		.uleb128 0x3
 2146 0180 3D060000 		.4byte	.LASF29
 2147 0184 0A       		.byte	0xa
 2148 0185 AB       		.byte	0xab
 2149 0186 5E010000 		.4byte	0x15e
 2150 018a 03       		.uleb128 0x3
 2151 018b 61060000 		.4byte	.LASF30
 2152 018f 0A       		.byte	0xa
 2153 0190 AF       		.byte	0xaf
 2154 0191 02010000 		.4byte	0x102
 2155 0195 03       		.uleb128 0x3
 2156 0196 29010000 		.4byte	.LASF31
 2157 019a 0B       		.byte	0xb
 2158 019b 16       		.byte	0x16
 2159 019c 8D000000 		.4byte	0x8d
 2160 01a0 11       		.uleb128 0x11
 2161 01a1 AC010000 		.4byte	.LASF36
 2162 01a5 18       		.byte	0x18
 2163 01a6 0B       		.byte	0xb
 2164 01a7 2D       		.byte	0x2d
 2165 01a8 F3010000 		.4byte	0x1f3
 2166 01ac 10       		.uleb128 0x10
 2167 01ad C4030000 		.4byte	.LASF32
 2168 01b1 0B       		.byte	0xb
 2169 01b2 2F       		.byte	0x2f
 2170 01b3 F3010000 		.4byte	0x1f3
 2171 01b7 00       		.byte	0
 2172 01b8 12       		.uleb128 0x12
ARM GAS  /tmp/ccbxFcRO.s 			page 57


 2173 01b9 5F6B00   		.ascii	"_k\000"
 2174 01bc 0B       		.byte	0xb
 2175 01bd 30       		.byte	0x30
 2176 01be 25000000 		.4byte	0x25
 2177 01c2 04       		.byte	0x4
 2178 01c3 10       		.uleb128 0x10
 2179 01c4 DC080000 		.4byte	.LASF33
 2180 01c8 0B       		.byte	0xb
 2181 01c9 30       		.byte	0x30
 2182 01ca 25000000 		.4byte	0x25
 2183 01ce 08       		.byte	0x8
 2184 01cf 10       		.uleb128 0x10
 2185 01d0 15080000 		.4byte	.LASF34
 2186 01d4 0B       		.byte	0xb
 2187 01d5 30       		.byte	0x30
 2188 01d6 25000000 		.4byte	0x25
 2189 01da 0C       		.byte	0xc
 2190 01db 10       		.uleb128 0x10
 2191 01dc B5020000 		.4byte	.LASF35
 2192 01e0 0B       		.byte	0xb
 2193 01e1 30       		.byte	0x30
 2194 01e2 25000000 		.4byte	0x25
 2195 01e6 10       		.byte	0x10
 2196 01e7 12       		.uleb128 0x12
 2197 01e8 5F7800   		.ascii	"_x\000"
 2198 01eb 0B       		.byte	0xb
 2199 01ec 31       		.byte	0x31
 2200 01ed F9010000 		.4byte	0x1f9
 2201 01f1 14       		.byte	0x14
 2202 01f2 00       		.byte	0
 2203 01f3 13       		.uleb128 0x13
 2204 01f4 04       		.byte	0x4
 2205 01f5 A0010000 		.4byte	0x1a0
 2206 01f9 0D       		.uleb128 0xd
 2207 01fa 95010000 		.4byte	0x195
 2208 01fe 09020000 		.4byte	0x209
 2209 0202 0E       		.uleb128 0xe
 2210 0203 E4000000 		.4byte	0xe4
 2211 0207 00       		.byte	0
 2212 0208 00       		.byte	0
 2213 0209 11       		.uleb128 0x11
 2214 020a 32090000 		.4byte	.LASF37
 2215 020e 24       		.byte	0x24
 2216 020f 0B       		.byte	0xb
 2217 0210 35       		.byte	0x35
 2218 0211 82020000 		.4byte	0x282
 2219 0215 10       		.uleb128 0x10
 2220 0216 94030000 		.4byte	.LASF38
 2221 021a 0B       		.byte	0xb
 2222 021b 37       		.byte	0x37
 2223 021c 25000000 		.4byte	0x25
 2224 0220 00       		.byte	0
 2225 0221 10       		.uleb128 0x10
 2226 0222 42020000 		.4byte	.LASF39
 2227 0226 0B       		.byte	0xb
 2228 0227 38       		.byte	0x38
 2229 0228 25000000 		.4byte	0x25
ARM GAS  /tmp/ccbxFcRO.s 			page 58


 2230 022c 04       		.byte	0x4
 2231 022d 10       		.uleb128 0x10
 2232 022e FA010000 		.4byte	.LASF40
 2233 0232 0B       		.byte	0xb
 2234 0233 39       		.byte	0x39
 2235 0234 25000000 		.4byte	0x25
 2236 0238 08       		.byte	0x8
 2237 0239 10       		.uleb128 0x10
 2238 023a 5E040000 		.4byte	.LASF41
 2239 023e 0B       		.byte	0xb
 2240 023f 3A       		.byte	0x3a
 2241 0240 25000000 		.4byte	0x25
 2242 0244 0C       		.byte	0xc
 2243 0245 10       		.uleb128 0x10
 2244 0246 F6060000 		.4byte	.LASF42
 2245 024a 0B       		.byte	0xb
 2246 024b 3B       		.byte	0x3b
 2247 024c 25000000 		.4byte	0x25
 2248 0250 10       		.byte	0x10
 2249 0251 10       		.uleb128 0x10
 2250 0252 64080000 		.4byte	.LASF43
 2251 0256 0B       		.byte	0xb
 2252 0257 3C       		.byte	0x3c
 2253 0258 25000000 		.4byte	0x25
 2254 025c 14       		.byte	0x14
 2255 025d 10       		.uleb128 0x10
 2256 025e B4010000 		.4byte	.LASF44
 2257 0262 0B       		.byte	0xb
 2258 0263 3D       		.byte	0x3d
 2259 0264 25000000 		.4byte	0x25
 2260 0268 18       		.byte	0x18
 2261 0269 10       		.uleb128 0x10
 2262 026a A7030000 		.4byte	.LASF45
 2263 026e 0B       		.byte	0xb
 2264 026f 3E       		.byte	0x3e
 2265 0270 25000000 		.4byte	0x25
 2266 0274 1C       		.byte	0x1c
 2267 0275 10       		.uleb128 0x10
 2268 0276 6A060000 		.4byte	.LASF46
 2269 027a 0B       		.byte	0xb
 2270 027b 3F       		.byte	0x3f
 2271 027c 25000000 		.4byte	0x25
 2272 0280 20       		.byte	0x20
 2273 0281 00       		.byte	0
 2274 0282 14       		.uleb128 0x14
 2275 0283 51000000 		.4byte	.LASF47
 2276 0287 0801     		.2byte	0x108
 2277 0289 0B       		.byte	0xb
 2278 028a 48       		.byte	0x48
 2279 028b C2020000 		.4byte	0x2c2
 2280 028f 10       		.uleb128 0x10
 2281 0290 9E0B0000 		.4byte	.LASF48
 2282 0294 0B       		.byte	0xb
 2283 0295 49       		.byte	0x49
 2284 0296 C2020000 		.4byte	0x2c2
 2285 029a 00       		.byte	0
 2286 029b 10       		.uleb128 0x10
ARM GAS  /tmp/ccbxFcRO.s 			page 59


 2287 029c 9D090000 		.4byte	.LASF49
 2288 02a0 0B       		.byte	0xb
 2289 02a1 4A       		.byte	0x4a
 2290 02a2 C2020000 		.4byte	0x2c2
 2291 02a6 80       		.byte	0x80
 2292 02a7 15       		.uleb128 0x15
 2293 02a8 E50B0000 		.4byte	.LASF50
 2294 02ac 0B       		.byte	0xb
 2295 02ad 4C       		.byte	0x4c
 2296 02ae 95010000 		.4byte	0x195
 2297 02b2 0001     		.2byte	0x100
 2298 02b4 15       		.uleb128 0x15
 2299 02b5 380C0000 		.4byte	.LASF51
 2300 02b9 0B       		.byte	0xb
 2301 02ba 4F       		.byte	0x4f
 2302 02bb 95010000 		.4byte	0x195
 2303 02bf 0401     		.2byte	0x104
 2304 02c1 00       		.byte	0
 2305 02c2 0D       		.uleb128 0xd
 2306 02c3 E2000000 		.4byte	0xe2
 2307 02c7 D2020000 		.4byte	0x2d2
 2308 02cb 0E       		.uleb128 0xe
 2309 02cc E4000000 		.4byte	0xe4
 2310 02d0 1F       		.byte	0x1f
 2311 02d1 00       		.byte	0
 2312 02d2 14       		.uleb128 0x14
 2313 02d3 87070000 		.4byte	.LASF52
 2314 02d7 9001     		.2byte	0x190
 2315 02d9 0B       		.byte	0xb
 2316 02da 5B       		.byte	0x5b
 2317 02db 10030000 		.4byte	0x310
 2318 02df 10       		.uleb128 0x10
 2319 02e0 C4030000 		.4byte	.LASF32
 2320 02e4 0B       		.byte	0xb
 2321 02e5 5C       		.byte	0x5c
 2322 02e6 10030000 		.4byte	0x310
 2323 02ea 00       		.byte	0
 2324 02eb 10       		.uleb128 0x10
 2325 02ec 91060000 		.4byte	.LASF53
 2326 02f0 0B       		.byte	0xb
 2327 02f1 5D       		.byte	0x5d
 2328 02f2 25000000 		.4byte	0x25
 2329 02f6 04       		.byte	0x4
 2330 02f7 10       		.uleb128 0x10
 2331 02f8 80010000 		.4byte	.LASF54
 2332 02fc 0B       		.byte	0xb
 2333 02fd 5F       		.byte	0x5f
 2334 02fe 16030000 		.4byte	0x316
 2335 0302 08       		.byte	0x8
 2336 0303 10       		.uleb128 0x10
 2337 0304 51000000 		.4byte	.LASF47
 2338 0308 0B       		.byte	0xb
 2339 0309 60       		.byte	0x60
 2340 030a 82020000 		.4byte	0x282
 2341 030e 88       		.byte	0x88
 2342 030f 00       		.byte	0
 2343 0310 13       		.uleb128 0x13
ARM GAS  /tmp/ccbxFcRO.s 			page 60


 2344 0311 04       		.byte	0x4
 2345 0312 D2020000 		.4byte	0x2d2
 2346 0316 0D       		.uleb128 0xd
 2347 0317 26030000 		.4byte	0x326
 2348 031b 26030000 		.4byte	0x326
 2349 031f 0E       		.uleb128 0xe
 2350 0320 E4000000 		.4byte	0xe4
 2351 0324 1F       		.byte	0x1f
 2352 0325 00       		.byte	0
 2353 0326 13       		.uleb128 0x13
 2354 0327 04       		.byte	0x4
 2355 0328 2C030000 		.4byte	0x32c
 2356 032c 16       		.uleb128 0x16
 2357 032d 11       		.uleb128 0x11
 2358 032e BF0A0000 		.4byte	.LASF55
 2359 0332 08       		.byte	0x8
 2360 0333 0B       		.byte	0xb
 2361 0334 73       		.byte	0x73
 2362 0335 52030000 		.4byte	0x352
 2363 0339 10       		.uleb128 0x10
 2364 033a 67050000 		.4byte	.LASF56
 2365 033e 0B       		.byte	0xb
 2366 033f 74       		.byte	0x74
 2367 0340 52030000 		.4byte	0x352
 2368 0344 00       		.byte	0
 2369 0345 10       		.uleb128 0x10
 2370 0346 EE0B0000 		.4byte	.LASF57
 2371 034a 0B       		.byte	0xb
 2372 034b 75       		.byte	0x75
 2373 034c 25000000 		.4byte	0x25
 2374 0350 04       		.byte	0x4
 2375 0351 00       		.byte	0
 2376 0352 13       		.uleb128 0x13
 2377 0353 04       		.byte	0x4
 2378 0354 50000000 		.4byte	0x50
 2379 0358 11       		.uleb128 0x11
 2380 0359 AD020000 		.4byte	.LASF58
 2381 035d 68       		.byte	0x68
 2382 035e 0B       		.byte	0xb
 2383 035f B3       		.byte	0xb3
 2384 0360 82040000 		.4byte	0x482
 2385 0364 12       		.uleb128 0x12
 2386 0365 5F7000   		.ascii	"_p\000"
 2387 0368 0B       		.byte	0xb
 2388 0369 B4       		.byte	0xb4
 2389 036a 52030000 		.4byte	0x352
 2390 036e 00       		.byte	0
 2391 036f 12       		.uleb128 0x12
 2392 0370 5F7200   		.ascii	"_r\000"
 2393 0373 0B       		.byte	0xb
 2394 0374 B5       		.byte	0xb5
 2395 0375 25000000 		.4byte	0x25
 2396 0379 04       		.byte	0x4
 2397 037a 12       		.uleb128 0x12
 2398 037b 5F7700   		.ascii	"_w\000"
 2399 037e 0B       		.byte	0xb
 2400 037f B6       		.byte	0xb6
ARM GAS  /tmp/ccbxFcRO.s 			page 61


 2401 0380 25000000 		.4byte	0x25
 2402 0384 08       		.byte	0x8
 2403 0385 10       		.uleb128 0x10
 2404 0386 BB000000 		.4byte	.LASF59
 2405 038a 0B       		.byte	0xb
 2406 038b B7       		.byte	0xb7
 2407 038c 57000000 		.4byte	0x57
 2408 0390 0C       		.byte	0xc
 2409 0391 10       		.uleb128 0x10
 2410 0392 CF050000 		.4byte	.LASF60
 2411 0396 0B       		.byte	0xb
 2412 0397 B8       		.byte	0xb8
 2413 0398 57000000 		.4byte	0x57
 2414 039c 0E       		.byte	0xe
 2415 039d 12       		.uleb128 0x12
 2416 039e 5F626600 		.ascii	"_bf\000"
 2417 03a2 0B       		.byte	0xb
 2418 03a3 B9       		.byte	0xb9
 2419 03a4 2D030000 		.4byte	0x32d
 2420 03a8 10       		.byte	0x10
 2421 03a9 10       		.uleb128 0x10
 2422 03aa B2000000 		.4byte	.LASF61
 2423 03ae 0B       		.byte	0xb
 2424 03af BA       		.byte	0xba
 2425 03b0 25000000 		.4byte	0x25
 2426 03b4 18       		.byte	0x18
 2427 03b5 10       		.uleb128 0x10
 2428 03b6 30000000 		.4byte	.LASF62
 2429 03ba 0B       		.byte	0xb
 2430 03bb C1       		.byte	0xc1
 2431 03bc E2000000 		.4byte	0xe2
 2432 03c0 1C       		.byte	0x1c
 2433 03c1 10       		.uleb128 0x10
 2434 03c2 23010000 		.4byte	.LASF63
 2435 03c6 0B       		.byte	0xb
 2436 03c7 C3       		.byte	0xc3
 2437 03c8 EF050000 		.4byte	0x5ef
 2438 03cc 20       		.byte	0x20
 2439 03cd 10       		.uleb128 0x10
 2440 03ce 5B070000 		.4byte	.LASF64
 2441 03d2 0B       		.byte	0xb
 2442 03d3 C5       		.byte	0xc5
 2443 03d4 19060000 		.4byte	0x619
 2444 03d8 24       		.byte	0x24
 2445 03d9 10       		.uleb128 0x10
 2446 03da 5C0C0000 		.4byte	.LASF65
 2447 03de 0B       		.byte	0xb
 2448 03df C8       		.byte	0xc8
 2449 03e0 3D060000 		.4byte	0x63d
 2450 03e4 28       		.byte	0x28
 2451 03e5 10       		.uleb128 0x10
 2452 03e6 DC040000 		.4byte	.LASF66
 2453 03ea 0B       		.byte	0xb
 2454 03eb C9       		.byte	0xc9
 2455 03ec 57060000 		.4byte	0x657
 2456 03f0 2C       		.byte	0x2c
 2457 03f1 12       		.uleb128 0x12
ARM GAS  /tmp/ccbxFcRO.s 			page 62


 2458 03f2 5F756200 		.ascii	"_ub\000"
 2459 03f6 0B       		.byte	0xb
 2460 03f7 CC       		.byte	0xcc
 2461 03f8 2D030000 		.4byte	0x32d
 2462 03fc 30       		.byte	0x30
 2463 03fd 12       		.uleb128 0x12
 2464 03fe 5F757000 		.ascii	"_up\000"
 2465 0402 0B       		.byte	0xb
 2466 0403 CD       		.byte	0xcd
 2467 0404 52030000 		.4byte	0x352
 2468 0408 38       		.byte	0x38
 2469 0409 12       		.uleb128 0x12
 2470 040a 5F757200 		.ascii	"_ur\000"
 2471 040e 0B       		.byte	0xb
 2472 040f CE       		.byte	0xce
 2473 0410 25000000 		.4byte	0x25
 2474 0414 3C       		.byte	0x3c
 2475 0415 10       		.uleb128 0x10
 2476 0416 15030000 		.4byte	.LASF67
 2477 041a 0B       		.byte	0xb
 2478 041b D1       		.byte	0xd1
 2479 041c 5D060000 		.4byte	0x65d
 2480 0420 40       		.byte	0x40
 2481 0421 10       		.uleb128 0x10
 2482 0422 150C0000 		.4byte	.LASF68
 2483 0426 0B       		.byte	0xb
 2484 0427 D2       		.byte	0xd2
 2485 0428 6D060000 		.4byte	0x66d
 2486 042c 43       		.byte	0x43
 2487 042d 12       		.uleb128 0x12
 2488 042e 5F6C6200 		.ascii	"_lb\000"
 2489 0432 0B       		.byte	0xb
 2490 0433 D5       		.byte	0xd5
 2491 0434 2D030000 		.4byte	0x32d
 2492 0438 44       		.byte	0x44
 2493 0439 10       		.uleb128 0x10
 2494 043a 29090000 		.4byte	.LASF69
 2495 043e 0B       		.byte	0xb
 2496 043f D8       		.byte	0xd8
 2497 0440 25000000 		.4byte	0x25
 2498 0444 4C       		.byte	0x4c
 2499 0445 10       		.uleb128 0x10
 2500 0446 0D030000 		.4byte	.LASF70
 2501 044a 0B       		.byte	0xb
 2502 044b D9       		.byte	0xd9
 2503 044c 0D010000 		.4byte	0x10d
 2504 0450 50       		.byte	0x50
 2505 0451 10       		.uleb128 0x10
 2506 0452 42080000 		.4byte	.LASF71
 2507 0456 0B       		.byte	0xb
 2508 0457 DC       		.byte	0xdc
 2509 0458 A0040000 		.4byte	0x4a0
 2510 045c 54       		.byte	0x54
 2511 045d 10       		.uleb128 0x10
 2512 045e 37090000 		.4byte	.LASF72
 2513 0462 0B       		.byte	0xb
 2514 0463 E0       		.byte	0xe0
ARM GAS  /tmp/ccbxFcRO.s 			page 63


 2515 0464 8A010000 		.4byte	0x18a
 2516 0468 58       		.byte	0x58
 2517 0469 10       		.uleb128 0x10
 2518 046a 1A010000 		.4byte	.LASF73
 2519 046e 0B       		.byte	0xb
 2520 046f E2       		.byte	0xe2
 2521 0470 7F010000 		.4byte	0x17f
 2522 0474 5C       		.byte	0x5c
 2523 0475 10       		.uleb128 0x10
 2524 0476 300C0000 		.4byte	.LASF74
 2525 047a 0B       		.byte	0xb
 2526 047b E3       		.byte	0xe3
 2527 047c 25000000 		.4byte	0x25
 2528 0480 64       		.byte	0x64
 2529 0481 00       		.byte	0
 2530 0482 17       		.uleb128 0x17
 2531 0483 25000000 		.4byte	0x25
 2532 0487 A0040000 		.4byte	0x4a0
 2533 048b 18       		.uleb128 0x18
 2534 048c A0040000 		.4byte	0x4a0
 2535 0490 18       		.uleb128 0x18
 2536 0491 E2000000 		.4byte	0xe2
 2537 0495 18       		.uleb128 0x18
 2538 0496 DD050000 		.4byte	0x5dd
 2539 049a 18       		.uleb128 0x18
 2540 049b 25000000 		.4byte	0x25
 2541 049f 00       		.byte	0
 2542 04a0 13       		.uleb128 0x13
 2543 04a1 04       		.byte	0x4
 2544 04a2 AB040000 		.4byte	0x4ab
 2545 04a6 05       		.uleb128 0x5
 2546 04a7 A0040000 		.4byte	0x4a0
 2547 04ab 19       		.uleb128 0x19
 2548 04ac B20B0000 		.4byte	.LASF75
 2549 04b0 2804     		.2byte	0x428
 2550 04b2 0B       		.byte	0xb
 2551 04b3 3802     		.2byte	0x238
 2552 04b5 DD050000 		.4byte	0x5dd
 2553 04b9 1A       		.uleb128 0x1a
 2554 04ba CC000000 		.4byte	.LASF76
 2555 04be 0B       		.byte	0xb
 2556 04bf 3A02     		.2byte	0x23a
 2557 04c1 25000000 		.4byte	0x25
 2558 04c5 00       		.byte	0
 2559 04c6 1A       		.uleb128 0x1a
 2560 04c7 2D050000 		.4byte	.LASF77
 2561 04cb 0B       		.byte	0xb
 2562 04cc 3F02     		.2byte	0x23f
 2563 04ce C4060000 		.4byte	0x6c4
 2564 04d2 04       		.byte	0x4
 2565 04d3 1A       		.uleb128 0x1a
 2566 04d4 3F010000 		.4byte	.LASF78
 2567 04d8 0B       		.byte	0xb
 2568 04d9 3F02     		.2byte	0x23f
 2569 04db C4060000 		.4byte	0x6c4
 2570 04df 08       		.byte	0x8
 2571 04e0 1A       		.uleb128 0x1a
ARM GAS  /tmp/ccbxFcRO.s 			page 64


 2572 04e1 56040000 		.4byte	.LASF79
 2573 04e5 0B       		.byte	0xb
 2574 04e6 3F02     		.2byte	0x23f
 2575 04e8 C4060000 		.4byte	0x6c4
 2576 04ec 0C       		.byte	0xc
 2577 04ed 1A       		.uleb128 0x1a
 2578 04ee B9030000 		.4byte	.LASF80
 2579 04f2 0B       		.byte	0xb
 2580 04f3 4102     		.2byte	0x241
 2581 04f5 25000000 		.4byte	0x25
 2582 04f9 10       		.byte	0x10
 2583 04fa 1A       		.uleb128 0x1a
 2584 04fb 60030000 		.4byte	.LASF81
 2585 04ff 0B       		.byte	0xb
 2586 0500 4202     		.2byte	0x242
 2587 0502 A6080000 		.4byte	0x8a6
 2588 0506 14       		.byte	0x14
 2589 0507 1A       		.uleb128 0x1a
 2590 0508 EC080000 		.4byte	.LASF82
 2591 050c 0B       		.byte	0xb
 2592 050d 4402     		.2byte	0x244
 2593 050f 25000000 		.4byte	0x25
 2594 0513 30       		.byte	0x30
 2595 0514 1A       		.uleb128 0x1a
 2596 0515 32080000 		.4byte	.LASF83
 2597 0519 0B       		.byte	0xb
 2598 051a 4502     		.2byte	0x245
 2599 051c 13060000 		.4byte	0x613
 2600 0520 34       		.byte	0x34
 2601 0521 1A       		.uleb128 0x1a
 2602 0522 F7000000 		.4byte	.LASF84
 2603 0526 0B       		.byte	0xb
 2604 0527 4702     		.2byte	0x247
 2605 0529 25000000 		.4byte	0x25
 2606 052d 38       		.byte	0x38
 2607 052e 1A       		.uleb128 0x1a
 2608 052f 23060000 		.4byte	.LASF85
 2609 0533 0B       		.byte	0xb
 2610 0534 4902     		.2byte	0x249
 2611 0536 C1080000 		.4byte	0x8c1
 2612 053a 3C       		.byte	0x3c
 2613 053b 1A       		.uleb128 0x1a
 2614 053c BE010000 		.4byte	.LASF86
 2615 0540 0B       		.byte	0xb
 2616 0541 4C02     		.2byte	0x24c
 2617 0543 F3010000 		.4byte	0x1f3
 2618 0547 40       		.byte	0x40
 2619 0548 1A       		.uleb128 0x1a
 2620 0549 9A040000 		.4byte	.LASF87
 2621 054d 0B       		.byte	0xb
 2622 054e 4D02     		.2byte	0x24d
 2623 0550 25000000 		.4byte	0x25
 2624 0554 44       		.byte	0x44
 2625 0555 1A       		.uleb128 0x1a
 2626 0556 0E040000 		.4byte	.LASF88
 2627 055a 0B       		.byte	0xb
 2628 055b 4E02     		.2byte	0x24e
ARM GAS  /tmp/ccbxFcRO.s 			page 65


 2629 055d F3010000 		.4byte	0x1f3
 2630 0561 48       		.byte	0x48
 2631 0562 1A       		.uleb128 0x1a
 2632 0563 6D050000 		.4byte	.LASF89
 2633 0567 0B       		.byte	0xb
 2634 0568 4F02     		.2byte	0x24f
 2635 056a C7080000 		.4byte	0x8c7
 2636 056e 4C       		.byte	0x4c
 2637 056f 1A       		.uleb128 0x1a
 2638 0570 D4080000 		.4byte	.LASF90
 2639 0574 0B       		.byte	0xb
 2640 0575 5202     		.2byte	0x252
 2641 0577 25000000 		.4byte	0x25
 2642 057b 50       		.byte	0x50
 2643 057c 1A       		.uleb128 0x1a
 2644 057d BD090000 		.4byte	.LASF91
 2645 0581 0B       		.byte	0xb
 2646 0582 5302     		.2byte	0x253
 2647 0584 DD050000 		.4byte	0x5dd
 2648 0588 54       		.byte	0x54
 2649 0589 1A       		.uleb128 0x1a
 2650 058a CF080000 		.4byte	.LASF92
 2651 058e 0B       		.byte	0xb
 2652 058f 7602     		.2byte	0x276
 2653 0591 84080000 		.4byte	0x884
 2654 0595 58       		.byte	0x58
 2655 0596 1B       		.uleb128 0x1b
 2656 0597 87070000 		.4byte	.LASF52
 2657 059b 0B       		.byte	0xb
 2658 059c 7A02     		.2byte	0x27a
 2659 059e 10030000 		.4byte	0x310
 2660 05a2 4801     		.2byte	0x148
 2661 05a4 1B       		.uleb128 0x1b
 2662 05a5 91040000 		.4byte	.LASF93
 2663 05a9 0B       		.byte	0xb
 2664 05aa 7B02     		.2byte	0x27b
 2665 05ac D2020000 		.4byte	0x2d2
 2666 05b0 4C01     		.2byte	0x14c
 2667 05b2 1B       		.uleb128 0x1b
 2668 05b3 78040000 		.4byte	.LASF94
 2669 05b7 0B       		.byte	0xb
 2670 05b8 7F02     		.2byte	0x27f
 2671 05ba D8080000 		.4byte	0x8d8
 2672 05be DC02     		.2byte	0x2dc
 2673 05c0 1B       		.uleb128 0x1b
 2674 05c1 2E0B0000 		.4byte	.LASF95
 2675 05c5 0B       		.byte	0xb
 2676 05c6 8402     		.2byte	0x284
 2677 05c8 89060000 		.4byte	0x689
 2678 05cc E002     		.2byte	0x2e0
 2679 05ce 1B       		.uleb128 0x1b
 2680 05cf 10080000 		.4byte	.LASF96
 2681 05d3 0B       		.byte	0xb
 2682 05d4 8502     		.2byte	0x285
 2683 05d6 E4080000 		.4byte	0x8e4
 2684 05da EC02     		.2byte	0x2ec
 2685 05dc 00       		.byte	0
ARM GAS  /tmp/ccbxFcRO.s 			page 66


 2686 05dd 13       		.uleb128 0x13
 2687 05de 04       		.byte	0x4
 2688 05df E3050000 		.4byte	0x5e3
 2689 05e3 04       		.uleb128 0x4
 2690 05e4 01       		.byte	0x1
 2691 05e5 08       		.byte	0x8
 2692 05e6 2B000000 		.4byte	.LASF97
 2693 05ea 05       		.uleb128 0x5
 2694 05eb E3050000 		.4byte	0x5e3
 2695 05ef 13       		.uleb128 0x13
 2696 05f0 04       		.byte	0x4
 2697 05f1 82040000 		.4byte	0x482
 2698 05f5 17       		.uleb128 0x17
 2699 05f6 25000000 		.4byte	0x25
 2700 05fa 13060000 		.4byte	0x613
 2701 05fe 18       		.uleb128 0x18
 2702 05ff A0040000 		.4byte	0x4a0
 2703 0603 18       		.uleb128 0x18
 2704 0604 E2000000 		.4byte	0xe2
 2705 0608 18       		.uleb128 0x18
 2706 0609 13060000 		.4byte	0x613
 2707 060d 18       		.uleb128 0x18
 2708 060e 25000000 		.4byte	0x25
 2709 0612 00       		.byte	0
 2710 0613 13       		.uleb128 0x13
 2711 0614 04       		.byte	0x4
 2712 0615 EA050000 		.4byte	0x5ea
 2713 0619 13       		.uleb128 0x13
 2714 061a 04       		.byte	0x4
 2715 061b F5050000 		.4byte	0x5f5
 2716 061f 17       		.uleb128 0x17
 2717 0620 18010000 		.4byte	0x118
 2718 0624 3D060000 		.4byte	0x63d
 2719 0628 18       		.uleb128 0x18
 2720 0629 A0040000 		.4byte	0x4a0
 2721 062d 18       		.uleb128 0x18
 2722 062e E2000000 		.4byte	0xe2
 2723 0632 18       		.uleb128 0x18
 2724 0633 18010000 		.4byte	0x118
 2725 0637 18       		.uleb128 0x18
 2726 0638 25000000 		.4byte	0x25
 2727 063c 00       		.byte	0
 2728 063d 13       		.uleb128 0x13
 2729 063e 04       		.byte	0x4
 2730 063f 1F060000 		.4byte	0x61f
 2731 0643 17       		.uleb128 0x17
 2732 0644 25000000 		.4byte	0x25
 2733 0648 57060000 		.4byte	0x657
 2734 064c 18       		.uleb128 0x18
 2735 064d A0040000 		.4byte	0x4a0
 2736 0651 18       		.uleb128 0x18
 2737 0652 E2000000 		.4byte	0xe2
 2738 0656 00       		.byte	0
 2739 0657 13       		.uleb128 0x13
 2740 0658 04       		.byte	0x4
 2741 0659 43060000 		.4byte	0x643
 2742 065d 0D       		.uleb128 0xd
ARM GAS  /tmp/ccbxFcRO.s 			page 67


 2743 065e 50000000 		.4byte	0x50
 2744 0662 6D060000 		.4byte	0x66d
 2745 0666 0E       		.uleb128 0xe
 2746 0667 E4000000 		.4byte	0xe4
 2747 066b 02       		.byte	0x2
 2748 066c 00       		.byte	0
 2749 066d 0D       		.uleb128 0xd
 2750 066e 50000000 		.4byte	0x50
 2751 0672 7D060000 		.4byte	0x67d
 2752 0676 0E       		.uleb128 0xe
 2753 0677 E4000000 		.4byte	0xe4
 2754 067b 00       		.byte	0
 2755 067c 00       		.byte	0
 2756 067d 0A       		.uleb128 0xa
 2757 067e EE020000 		.4byte	.LASF98
 2758 0682 0B       		.byte	0xb
 2759 0683 1D01     		.2byte	0x11d
 2760 0685 58030000 		.4byte	0x358
 2761 0689 1C       		.uleb128 0x1c
 2762 068a E80A0000 		.4byte	.LASF99
 2763 068e 0C       		.byte	0xc
 2764 068f 0B       		.byte	0xb
 2765 0690 2101     		.2byte	0x121
 2766 0692 BE060000 		.4byte	0x6be
 2767 0696 1A       		.uleb128 0x1a
 2768 0697 C4030000 		.4byte	.LASF32
 2769 069b 0B       		.byte	0xb
 2770 069c 2301     		.2byte	0x123
 2771 069e BE060000 		.4byte	0x6be
 2772 06a2 00       		.byte	0
 2773 06a3 1A       		.uleb128 0x1a
 2774 06a4 87090000 		.4byte	.LASF100
 2775 06a8 0B       		.byte	0xb
 2776 06a9 2401     		.2byte	0x124
 2777 06ab 25000000 		.4byte	0x25
 2778 06af 04       		.byte	0x4
 2779 06b0 1A       		.uleb128 0x1a
 2780 06b1 860C0000 		.4byte	.LASF101
 2781 06b5 0B       		.byte	0xb
 2782 06b6 2501     		.2byte	0x125
 2783 06b8 C4060000 		.4byte	0x6c4
 2784 06bc 08       		.byte	0x8
 2785 06bd 00       		.byte	0
 2786 06be 13       		.uleb128 0x13
 2787 06bf 04       		.byte	0x4
 2788 06c0 89060000 		.4byte	0x689
 2789 06c4 13       		.uleb128 0x13
 2790 06c5 04       		.byte	0x4
 2791 06c6 7D060000 		.4byte	0x67d
 2792 06ca 1C       		.uleb128 0x1c
 2793 06cb C5020000 		.4byte	.LASF102
 2794 06cf 0E       		.byte	0xe
 2795 06d0 0B       		.byte	0xb
 2796 06d1 3D01     		.2byte	0x13d
 2797 06d3 FF060000 		.4byte	0x6ff
 2798 06d7 1A       		.uleb128 0x1a
 2799 06d8 400C0000 		.4byte	.LASF103
ARM GAS  /tmp/ccbxFcRO.s 			page 68


 2800 06dc 0B       		.byte	0xb
 2801 06dd 3E01     		.2byte	0x13e
 2802 06df FF060000 		.4byte	0x6ff
 2803 06e3 00       		.byte	0
 2804 06e4 1A       		.uleb128 0x1a
 2805 06e5 94050000 		.4byte	.LASF104
 2806 06e9 0B       		.byte	0xb
 2807 06ea 3F01     		.2byte	0x13f
 2808 06ec FF060000 		.4byte	0x6ff
 2809 06f0 06       		.byte	0x6
 2810 06f1 1A       		.uleb128 0x1a
 2811 06f2 9A050000 		.4byte	.LASF105
 2812 06f6 0B       		.byte	0xb
 2813 06f7 4001     		.2byte	0x140
 2814 06f9 69000000 		.4byte	0x69
 2815 06fd 0C       		.byte	0xc
 2816 06fe 00       		.byte	0
 2817 06ff 0D       		.uleb128 0xd
 2818 0700 69000000 		.4byte	0x69
 2819 0704 0F070000 		.4byte	0x70f
 2820 0708 0E       		.uleb128 0xe
 2821 0709 E4000000 		.4byte	0xe4
 2822 070d 02       		.byte	0x2
 2823 070e 00       		.byte	0
 2824 070f 1D       		.uleb128 0x1d
 2825 0710 D0       		.byte	0xd0
 2826 0711 0B       		.byte	0xb
 2827 0712 5702     		.2byte	0x257
 2828 0714 10080000 		.4byte	0x810
 2829 0718 1A       		.uleb128 0x1a
 2830 0719 1B0C0000 		.4byte	.LASF106
 2831 071d 0B       		.byte	0xb
 2832 071e 5902     		.2byte	0x259
 2833 0720 37000000 		.4byte	0x37
 2834 0724 00       		.byte	0
 2835 0725 1A       		.uleb128 0x1a
 2836 0726 640B0000 		.4byte	.LASF107
 2837 072a 0B       		.byte	0xb
 2838 072b 5A02     		.2byte	0x25a
 2839 072d DD050000 		.4byte	0x5dd
 2840 0731 04       		.byte	0x4
 2841 0732 1A       		.uleb128 0x1a
 2842 0733 91020000 		.4byte	.LASF108
 2843 0737 0B       		.byte	0xb
 2844 0738 5B02     		.2byte	0x25b
 2845 073a 10080000 		.4byte	0x810
 2846 073e 08       		.byte	0x8
 2847 073f 1A       		.uleb128 0x1a
 2848 0740 98080000 		.4byte	.LASF109
 2849 0744 0B       		.byte	0xb
 2850 0745 5C02     		.2byte	0x25c
 2851 0747 09020000 		.4byte	0x209
 2852 074b 24       		.byte	0x24
 2853 074c 1A       		.uleb128 0x1a
 2854 074d 34050000 		.4byte	.LASF110
 2855 0751 0B       		.byte	0xb
 2856 0752 5D02     		.2byte	0x25d
ARM GAS  /tmp/ccbxFcRO.s 			page 69


 2857 0754 25000000 		.4byte	0x25
 2858 0758 48       		.byte	0x48
 2859 0759 1A       		.uleb128 0x1a
 2860 075a 460C0000 		.4byte	.LASF111
 2861 075e 0B       		.byte	0xb
 2862 075f 5E02     		.2byte	0x25e
 2863 0761 9B000000 		.4byte	0x9b
 2864 0765 50       		.byte	0x50
 2865 0766 1A       		.uleb128 0x1a
 2866 0767 74000000 		.4byte	.LASF112
 2867 076b 0B       		.byte	0xb
 2868 076c 5F02     		.2byte	0x25f
 2869 076e CA060000 		.4byte	0x6ca
 2870 0772 58       		.byte	0x58
 2871 0773 1A       		.uleb128 0x1a
 2872 0774 3E040000 		.4byte	.LASF113
 2873 0778 0B       		.byte	0xb
 2874 0779 6002     		.2byte	0x260
 2875 077b 7F010000 		.4byte	0x17f
 2876 077f 68       		.byte	0x68
 2877 0780 1A       		.uleb128 0x1a
 2878 0781 710B0000 		.4byte	.LASF114
 2879 0785 0B       		.byte	0xb
 2880 0786 6102     		.2byte	0x261
 2881 0788 7F010000 		.4byte	0x17f
 2882 078c 70       		.byte	0x70
 2883 078d 1A       		.uleb128 0x1a
 2884 078e FB0B0000 		.4byte	.LASF115
 2885 0792 0B       		.byte	0xb
 2886 0793 6202     		.2byte	0x262
 2887 0795 7F010000 		.4byte	0x17f
 2888 0799 78       		.byte	0x78
 2889 079a 1A       		.uleb128 0x1a
 2890 079b C60A0000 		.4byte	.LASF116
 2891 079f 0B       		.byte	0xb
 2892 07a0 6302     		.2byte	0x263
 2893 07a2 20080000 		.4byte	0x820
 2894 07a6 80       		.byte	0x80
 2895 07a7 1A       		.uleb128 0x1a
 2896 07a8 79000000 		.4byte	.LASF117
 2897 07ac 0B       		.byte	0xb
 2898 07ad 6402     		.2byte	0x264
 2899 07af 30080000 		.4byte	0x830
 2900 07b3 88       		.byte	0x88
 2901 07b4 1A       		.uleb128 0x1a
 2902 07b5 360B0000 		.4byte	.LASF118
 2903 07b9 0B       		.byte	0xb
 2904 07ba 6502     		.2byte	0x265
 2905 07bc 25000000 		.4byte	0x25
 2906 07c0 A0       		.byte	0xa0
 2907 07c1 1A       		.uleb128 0x1a
 2908 07c2 31010000 		.4byte	.LASF119
 2909 07c6 0B       		.byte	0xb
 2910 07c7 6602     		.2byte	0x266
 2911 07c9 7F010000 		.4byte	0x17f
 2912 07cd A4       		.byte	0xa4
 2913 07ce 1A       		.uleb128 0x1a
ARM GAS  /tmp/ccbxFcRO.s 			page 70


 2914 07cf 82040000 		.4byte	.LASF120
 2915 07d3 0B       		.byte	0xb
 2916 07d4 6702     		.2byte	0x267
 2917 07d6 7F010000 		.4byte	0x17f
 2918 07da AC       		.byte	0xac
 2919 07db 1A       		.uleb128 0x1a
 2920 07dc 5E020000 		.4byte	.LASF121
 2921 07e0 0B       		.byte	0xb
 2922 07e1 6802     		.2byte	0x268
 2923 07e3 7F010000 		.4byte	0x17f
 2924 07e7 B4       		.byte	0xb4
 2925 07e8 1A       		.uleb128 0x1a
 2926 07e9 C0050000 		.4byte	.LASF122
 2927 07ed 0B       		.byte	0xb
 2928 07ee 6902     		.2byte	0x269
 2929 07f0 7F010000 		.4byte	0x17f
 2930 07f4 BC       		.byte	0xbc
 2931 07f5 1A       		.uleb128 0x1a
 2932 07f6 2D040000 		.4byte	.LASF123
 2933 07fa 0B       		.byte	0xb
 2934 07fb 6A02     		.2byte	0x26a
 2935 07fd 7F010000 		.4byte	0x17f
 2936 0801 C4       		.byte	0xc4
 2937 0802 1A       		.uleb128 0x1a
 2938 0803 F5020000 		.4byte	.LASF124
 2939 0807 0B       		.byte	0xb
 2940 0808 6B02     		.2byte	0x26b
 2941 080a 25000000 		.4byte	0x25
 2942 080e CC       		.byte	0xcc
 2943 080f 00       		.byte	0
 2944 0810 0D       		.uleb128 0xd
 2945 0811 E3050000 		.4byte	0x5e3
 2946 0815 20080000 		.4byte	0x820
 2947 0819 0E       		.uleb128 0xe
 2948 081a E4000000 		.4byte	0xe4
 2949 081e 19       		.byte	0x19
 2950 081f 00       		.byte	0
 2951 0820 0D       		.uleb128 0xd
 2952 0821 E3050000 		.4byte	0x5e3
 2953 0825 30080000 		.4byte	0x830
 2954 0829 0E       		.uleb128 0xe
 2955 082a E4000000 		.4byte	0xe4
 2956 082e 07       		.byte	0x7
 2957 082f 00       		.byte	0
 2958 0830 0D       		.uleb128 0xd
 2959 0831 E3050000 		.4byte	0x5e3
 2960 0835 40080000 		.4byte	0x840
 2961 0839 0E       		.uleb128 0xe
 2962 083a E4000000 		.4byte	0xe4
 2963 083e 17       		.byte	0x17
 2964 083f 00       		.byte	0
 2965 0840 1D       		.uleb128 0x1d
 2966 0841 F0       		.byte	0xf0
 2967 0842 0B       		.byte	0xb
 2968 0843 7002     		.2byte	0x270
 2969 0845 64080000 		.4byte	0x864
 2970 0849 1A       		.uleb128 0x1a
ARM GAS  /tmp/ccbxFcRO.s 			page 71


 2971 084a 57020000 		.4byte	.LASF125
 2972 084e 0B       		.byte	0xb
 2973 084f 7302     		.2byte	0x273
 2974 0851 64080000 		.4byte	0x864
 2975 0855 00       		.byte	0
 2976 0856 1A       		.uleb128 0x1a
 2977 0857 7D0C0000 		.4byte	.LASF126
 2978 085b 0B       		.byte	0xb
 2979 085c 7402     		.2byte	0x274
 2980 085e 74080000 		.4byte	0x874
 2981 0862 78       		.byte	0x78
 2982 0863 00       		.byte	0
 2983 0864 0D       		.uleb128 0xd
 2984 0865 52030000 		.4byte	0x352
 2985 0869 74080000 		.4byte	0x874
 2986 086d 0E       		.uleb128 0xe
 2987 086e E4000000 		.4byte	0xe4
 2988 0872 1D       		.byte	0x1d
 2989 0873 00       		.byte	0
 2990 0874 0D       		.uleb128 0xd
 2991 0875 37000000 		.4byte	0x37
 2992 0879 84080000 		.4byte	0x884
 2993 087d 0E       		.uleb128 0xe
 2994 087e E4000000 		.4byte	0xe4
 2995 0882 1D       		.byte	0x1d
 2996 0883 00       		.byte	0
 2997 0884 1E       		.uleb128 0x1e
 2998 0885 F0       		.byte	0xf0
 2999 0886 0B       		.byte	0xb
 3000 0887 5502     		.2byte	0x255
 3001 0889 A6080000 		.4byte	0x8a6
 3002 088d 1F       		.uleb128 0x1f
 3003 088e B20B0000 		.4byte	.LASF75
 3004 0892 0B       		.byte	0xb
 3005 0893 6C02     		.2byte	0x26c
 3006 0895 0F070000 		.4byte	0x70f
 3007 0899 1F       		.uleb128 0x1f
 3008 089a A7080000 		.4byte	.LASF127
 3009 089e 0B       		.byte	0xb
 3010 089f 7502     		.2byte	0x275
 3011 08a1 40080000 		.4byte	0x840
 3012 08a5 00       		.byte	0
 3013 08a6 0D       		.uleb128 0xd
 3014 08a7 E3050000 		.4byte	0x5e3
 3015 08ab B6080000 		.4byte	0x8b6
 3016 08af 0E       		.uleb128 0xe
 3017 08b0 E4000000 		.4byte	0xe4
 3018 08b4 18       		.byte	0x18
 3019 08b5 00       		.byte	0
 3020 08b6 20       		.uleb128 0x20
 3021 08b7 C1080000 		.4byte	0x8c1
 3022 08bb 18       		.uleb128 0x18
 3023 08bc A0040000 		.4byte	0x4a0
 3024 08c0 00       		.byte	0
 3025 08c1 13       		.uleb128 0x13
 3026 08c2 04       		.byte	0x4
 3027 08c3 B6080000 		.4byte	0x8b6
ARM GAS  /tmp/ccbxFcRO.s 			page 72


 3028 08c7 13       		.uleb128 0x13
 3029 08c8 04       		.byte	0x4
 3030 08c9 F3010000 		.4byte	0x1f3
 3031 08cd 20       		.uleb128 0x20
 3032 08ce D8080000 		.4byte	0x8d8
 3033 08d2 18       		.uleb128 0x18
 3034 08d3 25000000 		.4byte	0x25
 3035 08d7 00       		.byte	0
 3036 08d8 13       		.uleb128 0x13
 3037 08d9 04       		.byte	0x4
 3038 08da DE080000 		.4byte	0x8de
 3039 08de 13       		.uleb128 0x13
 3040 08df 04       		.byte	0x4
 3041 08e0 CD080000 		.4byte	0x8cd
 3042 08e4 0D       		.uleb128 0xd
 3043 08e5 7D060000 		.4byte	0x67d
 3044 08e9 F4080000 		.4byte	0x8f4
 3045 08ed 0E       		.uleb128 0xe
 3046 08ee E4000000 		.4byte	0xe4
 3047 08f2 02       		.byte	0x2
 3048 08f3 00       		.byte	0
 3049 08f4 08       		.uleb128 0x8
 3050 08f5 4B020000 		.4byte	.LASF128
 3051 08f9 0B       		.byte	0xb
 3052 08fa FD02     		.2byte	0x2fd
 3053 08fc A0040000 		.4byte	0x4a0
 3054 0900 08       		.uleb128 0x8
 3055 0901 85010000 		.4byte	.LASF129
 3056 0905 0B       		.byte	0xb
 3057 0906 FE02     		.2byte	0x2fe
 3058 0908 A6040000 		.4byte	0x4a6
 3059 090c 13       		.uleb128 0x13
 3060 090d 04       		.byte	0x4
 3061 090e 12090000 		.4byte	0x912
 3062 0912 21       		.uleb128 0x21
 3063 0913 09       		.uleb128 0x9
 3064 0914 9D030000 		.4byte	.LASF130
 3065 0918 0C       		.byte	0xc
 3066 0919 5F       		.byte	0x5f
 3067 091a DD050000 		.4byte	0x5dd
 3068 091e 09       		.uleb128 0x9
 3069 091f 98010000 		.4byte	.LASF131
 3070 0923 0D       		.byte	0xd
 3071 0924 8F       		.byte	0x8f
 3072 0925 30090000 		.4byte	0x930
 3073 0929 04       		.uleb128 0x4
 3074 092a 01       		.byte	0x1
 3075 092b 02       		.byte	0x2
 3076 092c BE030000 		.4byte	.LASF132
 3077 0930 06       		.uleb128 0x6
 3078 0931 29090000 		.4byte	0x929
 3079 0935 22       		.uleb128 0x22
 3080 0936 66090000 		.4byte	.LASF133
 3081 093a 0D       		.byte	0xd
 3082 093b 94       		.byte	0x94
 3083 093c D8000000 		.4byte	0xd8
 3084 0940 05       		.uleb128 0x5
ARM GAS  /tmp/ccbxFcRO.s 			page 73


 3085 0941 03       		.byte	0x3
 3086 0942 00000000 		.4byte	cpu_irq_critical_section_counter
 3087 0946 22       		.uleb128 0x22
 3088 0947 70030000 		.4byte	.LASF134
 3089 094b 0D       		.byte	0xd
 3090 094c 95       		.byte	0x95
 3091 094d 30090000 		.4byte	0x930
 3092 0951 05       		.uleb128 0x5
 3093 0952 03       		.byte	0x3
 3094 0953 00000000 		.4byte	cpu_irq_prev_interrupt_state
 3095 0957 23       		.uleb128 0x23
 3096 0958 55333200 		.ascii	"U32\000"
 3097 095c 10       		.byte	0x10
 3098 095d 0701     		.2byte	0x107
 3099 095f CD000000 		.4byte	0xcd
 3100 0963 04       		.uleb128 0x4
 3101 0964 04       		.byte	0x4
 3102 0965 04       		.byte	0x4
 3103 0966 19020000 		.4byte	.LASF135
 3104 096a 04       		.uleb128 0x4
 3105 096b 08       		.byte	0x8
 3106 096c 04       		.byte	0x4
 3107 096d F40B0000 		.4byte	.LASF136
 3108 0971 04       		.uleb128 0x4
 3109 0972 08       		.byte	0x8
 3110 0973 04       		.byte	0x4
 3111 0974 40070000 		.4byte	.LASF137
 3112 0978 24       		.uleb128 0x24
 3113 0979 EE0A0000 		.4byte	.LASF237
 3114 097d 01       		.byte	0x1
 3115 097e 3E000000 		.4byte	0x3e
 3116 0982 0E       		.byte	0xe
 3117 0983 9902     		.2byte	0x299
 3118 0985 A2090000 		.4byte	0x9a2
 3119 0989 25       		.uleb128 0x25
 3120 098a 8A080000 		.4byte	.LASF138
 3121 098e 7F       		.sleb128 -1
 3122 098f 26       		.uleb128 0x26
 3123 0990 9F050000 		.4byte	.LASF139
 3124 0994 00       		.byte	0
 3125 0995 26       		.uleb128 0x26
 3126 0996 10000000 		.4byte	.LASF140
 3127 099a 01       		.byte	0x1
 3128 099b 26       		.uleb128 0x26
 3129 099c FE020000 		.4byte	.LASF141
 3130 09a0 02       		.byte	0x2
 3131 09a1 00       		.byte	0
 3132 09a2 08       		.uleb128 0x8
 3133 09a3 2D060000 		.4byte	.LASF142
 3134 09a7 0E       		.byte	0xe
 3135 09a8 A402     		.2byte	0x2a4
 3136 09aa 78090000 		.4byte	0x978
 3137 09ae 27       		.uleb128 0x27
 3138 09af 01       		.byte	0x1
 3139 09b0 3E000000 		.4byte	0x3e
 3140 09b4 0F       		.byte	0xf
 3141 09b5 41       		.byte	0x41
ARM GAS  /tmp/ccbxFcRO.s 			page 74


 3142 09b6 E5090000 		.4byte	0x9e5
 3143 09ba 25       		.uleb128 0x25
 3144 09bb 96060000 		.4byte	.LASF143
 3145 09bf 7F       		.sleb128 -1
 3146 09c0 26       		.uleb128 0x26
 3147 09c1 CC0B0000 		.4byte	.LASF144
 3148 09c5 00       		.byte	0
 3149 09c6 26       		.uleb128 0x26
 3150 09c7 8C0C0000 		.4byte	.LASF145
 3151 09cb 01       		.byte	0x1
 3152 09cc 26       		.uleb128 0x26
 3153 09cd 92000000 		.4byte	.LASF146
 3154 09d1 02       		.byte	0x2
 3155 09d2 26       		.uleb128 0x26
 3156 09d3 EE040000 		.4byte	.LASF147
 3157 09d7 03       		.byte	0x3
 3158 09d8 26       		.uleb128 0x26
 3159 09d9 E3030000 		.4byte	.LASF148
 3160 09dd 04       		.byte	0x4
 3161 09de 26       		.uleb128 0x26
 3162 09df 3F030000 		.4byte	.LASF149
 3163 09e3 05       		.byte	0x5
 3164 09e4 00       		.byte	0
 3165 09e5 03       		.uleb128 0x3
 3166 09e6 A4040000 		.4byte	.LASF150
 3167 09ea 0F       		.byte	0xf
 3168 09eb 49       		.byte	0x49
 3169 09ec AE090000 		.4byte	0x9ae
 3170 09f0 28       		.uleb128 0x28
 3171 09f1 50696E00 		.ascii	"Pin\000"
 3172 09f5 11       		.byte	0x11
 3173 09f6 38       		.byte	0x38
 3174 09f7 A2000000 		.4byte	0xa2
 3175 09fb 05       		.uleb128 0x5
 3176 09fc F0090000 		.4byte	0x9f0
 3177 0a00 29       		.uleb128 0x29
 3178 0a01 1D060000 		.4byte	.LASF151
 3179 0a05 11       		.byte	0x11
 3180 0a06 39       		.byte	0x39
 3181 0a07 FB090000 		.4byte	0x9fb
 3182 0a0b 7F       		.sleb128 -1
 3183 0a0c 09       		.uleb128 0x9
 3184 0a0d 00050000 		.4byte	.LASF152
 3185 0a11 12       		.byte	0x12
 3186 0a12 8B       		.byte	0x8b
 3187 0a13 7B000000 		.4byte	0x7b
 3188 0a17 09       		.uleb128 0x9
 3189 0a18 4F080000 		.4byte	.LASF153
 3190 0a1c 12       		.byte	0x12
 3191 0a1d 8C       		.byte	0x8c
 3192 0a1e 25000000 		.4byte	0x25
 3193 0a22 0D       		.uleb128 0xd
 3194 0a23 DD050000 		.4byte	0x5dd
 3195 0a27 320A0000 		.4byte	0xa32
 3196 0a2b 0E       		.uleb128 0xe
 3197 0a2c E4000000 		.4byte	0xe4
 3198 0a30 01       		.byte	0x1
ARM GAS  /tmp/ccbxFcRO.s 			page 75


 3199 0a31 00       		.byte	0
 3200 0a32 09       		.uleb128 0x9
 3201 0a33 E4080000 		.4byte	.LASF154
 3202 0a37 12       		.byte	0x12
 3203 0a38 8F       		.byte	0x8f
 3204 0a39 220A0000 		.4byte	0xa22
 3205 0a3d 2A       		.uleb128 0x2a
 3206 0a3e A0060000 		.4byte	.LASF155
 3207 0a42 13       		.byte	0x13
 3208 0a43 5C       		.byte	0x5c
 3209 0a44 AD000000 		.4byte	0xad
 3210 0a48 38       		.byte	0x38
 3211 0a49 2A       		.uleb128 0x2a
 3212 0a4a CD040000 		.4byte	.LASF156
 3213 0a4e 13       		.byte	0x13
 3214 0a4f 5D       		.byte	0x5d
 3215 0a50 AD000000 		.4byte	0xad
 3216 0a54 05       		.byte	0x5
 3217 0a55 2A       		.uleb128 0x2a
 3218 0a56 9E020000 		.4byte	.LASF157
 3219 0a5a 13       		.byte	0x13
 3220 0a5b 5E       		.byte	0x5e
 3221 0a5c AD000000 		.4byte	0xad
 3222 0a60 06       		.byte	0x6
 3223 0a61 2A       		.uleb128 0x2a
 3224 0a62 AC060000 		.4byte	.LASF158
 3225 0a66 13       		.byte	0x13
 3226 0a67 60       		.byte	0x60
 3227 0a68 AD000000 		.4byte	0xad
 3228 0a6c 39       		.byte	0x39
 3229 0a6d 2A       		.uleb128 0x2a
 3230 0a6e D3000000 		.4byte	.LASF159
 3231 0a72 13       		.byte	0x13
 3232 0a73 61       		.byte	0x61
 3233 0a74 AD000000 		.4byte	0xad
 3234 0a78 03       		.byte	0x3
 3235 0a79 2A       		.uleb128 0x2a
 3236 0a7a 7F0B0000 		.4byte	.LASF160
 3237 0a7e 13       		.byte	0x13
 3238 0a7f 62       		.byte	0x62
 3239 0a80 AD000000 		.4byte	0xad
 3240 0a84 04       		.byte	0x4
 3241 0a85 2A       		.uleb128 0x2a
 3242 0a86 1C040000 		.4byte	.LASF161
 3243 0a8a 13       		.byte	0x13
 3244 0a8b 69       		.byte	0x69
 3245 0a8c AD000000 		.4byte	0xad
 3246 0a90 33       		.byte	0x33
 3247 0a91 2A       		.uleb128 0x2a
 3248 0a92 8E0B0000 		.4byte	.LASF162
 3249 0a96 13       		.byte	0x13
 3250 0a97 6A       		.byte	0x6a
 3251 0a98 AD000000 		.4byte	0xad
 3252 0a9c 34       		.byte	0x34
 3253 0a9d 2A       		.uleb128 0x2a
 3254 0a9e D00A0000 		.4byte	.LASF163
 3255 0aa2 13       		.byte	0x13
ARM GAS  /tmp/ccbxFcRO.s 			page 76


 3256 0aa3 6D       		.byte	0x6d
 3257 0aa4 AD000000 		.4byte	0xad
 3258 0aa8 35       		.byte	0x35
 3259 0aa9 2A       		.uleb128 0x2a
 3260 0aaa A9090000 		.4byte	.LASF164
 3261 0aae 13       		.byte	0x13
 3262 0aaf 6E       		.byte	0x6e
 3263 0ab0 AD000000 		.4byte	0xad
 3264 0ab4 36       		.byte	0x36
 3265 0ab5 2A       		.uleb128 0x2a
 3266 0ab6 B00A0000 		.4byte	.LASF165
 3267 0aba 13       		.byte	0x13
 3268 0abb 6F       		.byte	0x6f
 3269 0abc AD000000 		.4byte	0xad
 3270 0ac0 37       		.byte	0x37
 3271 0ac1 2A       		.uleb128 0x2a
 3272 0ac2 04020000 		.4byte	.LASF166
 3273 0ac6 13       		.byte	0x13
 3274 0ac7 71       		.byte	0x71
 3275 0ac8 DD000000 		.4byte	0xdd
 3276 0acc 32       		.byte	0x32
 3277 0acd 2B       		.uleb128 0x2b
 3278 0ace 3D090000 		.4byte	.LASF167
 3279 0ad2 13       		.byte	0x13
 3280 0ad3 73       		.byte	0x73
 3281 0ad4 DD000000 		.4byte	0xdd
 3282 0ad8 58466100 		.4byte	0x614658
 3283 0adc 2C       		.uleb128 0x2c
 3284 0add A5000000 		.4byte	.LASF168
 3285 0ae1 13       		.byte	0x13
 3286 0ae2 74       		.byte	0x74
 3287 0ae3 DD000000 		.4byte	0xdd
 3288 0ae7 4661     		.2byte	0x6146
 3289 0ae9 03       		.uleb128 0x3
 3290 0aea 68040000 		.4byte	.LASF169
 3291 0aee 14       		.byte	0x14
 3292 0aef 70       		.byte	0x70
 3293 0af0 CD000000 		.4byte	0xcd
 3294 0af4 03       		.uleb128 0x3
 3295 0af5 B8060000 		.4byte	.LASF170
 3296 0af9 15       		.byte	0x15
 3297 0afa 40       		.byte	0x40
 3298 0afb A2000000 		.4byte	0xa2
 3299 0aff 03       		.uleb128 0x3
 3300 0b00 B7040000 		.4byte	.LASF171
 3301 0b04 15       		.byte	0x15
 3302 0b05 EC       		.byte	0xec
 3303 0b06 0A0B0000 		.4byte	0xb0a
 3304 0b0a 13       		.uleb128 0x13
 3305 0b0b 04       		.byte	0x4
 3306 0b0c 100B0000 		.4byte	0xb10
 3307 0b10 20       		.uleb128 0x20
 3308 0b11 200B0000 		.4byte	0xb20
 3309 0b15 18       		.uleb128 0x18
 3310 0b16 CD000000 		.4byte	0xcd
 3311 0b1a 18       		.uleb128 0x18
 3312 0b1b CD000000 		.4byte	0xcd
ARM GAS  /tmp/ccbxFcRO.s 			page 77


 3313 0b1f 00       		.byte	0
 3314 0b20 11       		.uleb128 0x11
 3315 0b21 1F000000 		.4byte	.LASF172
 3316 0b25 08       		.byte	0x8
 3317 0b26 02       		.byte	0x2
 3318 0b27 39       		.byte	0x39
 3319 0b28 690B0000 		.4byte	0xb69
 3320 0b2c 10       		.uleb128 0x10
 3321 0b2d 510C0000 		.4byte	.LASF173
 3322 0b31 02       		.byte	0x2
 3323 0b32 3A       		.byte	0x3a
 3324 0b33 F0090000 		.4byte	0x9f0
 3325 0b37 00       		.byte	0
 3326 0b38 10       		.uleb128 0x10
 3327 0b39 4B040000 		.4byte	.LASF174
 3328 0b3d 02       		.byte	0x2
 3329 0b3e 3B       		.byte	0x3b
 3330 0b3f 29090000 		.4byte	0x929
 3331 0b43 01       		.byte	0x1
 3332 0b44 10       		.uleb128 0x10
 3333 0b45 12090000 		.4byte	.LASF175
 3334 0b49 02       		.byte	0x2
 3335 0b4a 3C       		.byte	0x3c
 3336 0b4b A2000000 		.4byte	0xa2
 3337 0b4f 02       		.byte	0x2
 3338 0b50 10       		.uleb128 0x10
 3339 0b51 280C0000 		.4byte	.LASF176
 3340 0b55 02       		.byte	0x2
 3341 0b56 3D       		.byte	0x3d
 3342 0b57 A2000000 		.4byte	0xa2
 3343 0b5b 03       		.byte	0x3
 3344 0b5c 10       		.uleb128 0x10
 3345 0b5d 6E0C0000 		.4byte	.LASF177
 3346 0b61 02       		.byte	0x2
 3347 0b62 3E       		.byte	0x3e
 3348 0b63 CD000000 		.4byte	0xcd
 3349 0b67 04       		.byte	0x4
 3350 0b68 00       		.byte	0
 3351 0b69 22       		.uleb128 0x22
 3352 0b6a 6E080000 		.4byte	.LASF178
 3353 0b6e 01       		.byte	0x1
 3354 0b6f 4E       		.byte	0x4e
 3355 0b70 F40A0000 		.4byte	0xaf4
 3356 0b74 05       		.uleb128 0x5
 3357 0b75 03       		.byte	0x3
 3358 0b76 00000000 		.4byte	sd_mmc_spi_err
 3359 0b7a 0D       		.uleb128 0xd
 3360 0b7b 200B0000 		.4byte	0xb20
 3361 0b7f 8A0B0000 		.4byte	0xb8a
 3362 0b83 0E       		.uleb128 0xe
 3363 0b84 E4000000 		.4byte	0xe4
 3364 0b88 00       		.byte	0
 3365 0b89 00       		.byte	0
 3366 0b8a 22       		.uleb128 0x22
 3367 0b8b AD050000 		.4byte	.LASF179
 3368 0b8f 01       		.byte	0x1
 3369 0b90 51       		.byte	0x51
ARM GAS  /tmp/ccbxFcRO.s 			page 78


 3370 0b91 7A0B0000 		.4byte	0xb7a
 3371 0b95 05       		.uleb128 0x5
 3372 0b96 03       		.byte	0x3
 3373 0b97 00000000 		.4byte	sd_mmc_spi_devices
 3374 0b9b 22       		.uleb128 0x22
 3375 0b9c 1B080000 		.4byte	.LASF180
 3376 0ba0 01       		.byte	0x1
 3377 0ba1 54       		.byte	0x54
 3378 0ba2 CD000000 		.4byte	0xcd
 3379 0ba6 05       		.uleb128 0x5
 3380 0ba7 03       		.byte	0x3
 3381 0ba8 00000000 		.4byte	sd_mmc_spi_response_32
 3382 0bac 22       		.uleb128 0x22
 3383 0bad CB060000 		.4byte	.LASF181
 3384 0bb1 01       		.byte	0x1
 3385 0bb2 56       		.byte	0x56
 3386 0bb3 CD000000 		.4byte	0xcd
 3387 0bb7 05       		.uleb128 0x5
 3388 0bb8 03       		.byte	0x3
 3389 0bb9 00000000 		.4byte	sd_mmc_spi_transfert_pos
 3390 0bbd 22       		.uleb128 0x22
 3391 0bbe D8020000 		.4byte	.LASF182
 3392 0bc2 01       		.byte	0x1
 3393 0bc3 58       		.byte	0x58
 3394 0bc4 B2000000 		.4byte	0xb2
 3395 0bc8 05       		.uleb128 0x5
 3396 0bc9 03       		.byte	0x3
 3397 0bca 00000000 		.4byte	sd_mmc_spi_block_size
 3398 0bce 22       		.uleb128 0x22
 3399 0bcf 48060000 		.4byte	.LASF183
 3400 0bd3 01       		.byte	0x1
 3401 0bd4 5A       		.byte	0x5a
 3402 0bd5 B2000000 		.4byte	0xb2
 3403 0bd9 05       		.uleb128 0x5
 3404 0bda 03       		.byte	0x3
 3405 0bdb 00000000 		.4byte	sd_mmc_spi_nb_block
 3406 0bdf 2D       		.uleb128 0x2d
 3407 0be0 51010000 		.4byte	.LASF184
 3408 0be4 01       		.byte	0x1
 3409 0be5 3F01     		.2byte	0x13f
 3410 0be7 FF0A0000 		.4byte	0xaff
 3411 0beb 05       		.uleb128 0x5
 3412 0bec 03       		.byte	0x3
 3413 0bed 00000000 		.4byte	spiIdleFunc
 3414 0bf1 2E       		.uleb128 0x2e
 3415 0bf2 FF060000 		.4byte	.LASF185
 3416 0bf6 01       		.byte	0x1
 3417 0bf7 6602     		.2byte	0x266
 3418 0bf9 29090000 		.4byte	0x929
 3419 0bfd 00000000 		.4byte	.LFB255
 3420 0c01 1C000000 		.4byte	.LFE255-.LFB255
 3421 0c05 01       		.uleb128 0x1
 3422 0c06 9C       		.byte	0x9c
 3423 0c07 1E0C0000 		.4byte	0xc1e
 3424 0c0b 2F       		.uleb128 0x2f
 3425 0c0c 06000000 		.4byte	.LVL129
 3426 0c10 97160000 		.4byte	0x1697
ARM GAS  /tmp/ccbxFcRO.s 			page 79


 3427 0c14 30       		.uleb128 0x30
 3428 0c15 18000000 		.4byte	.LVL130
 3429 0c19 80140000 		.4byte	0x1480
 3430 0c1d 00       		.byte	0
 3431 0c1e 2E       		.uleb128 0x2e
 3432 0c1f 1B030000 		.4byte	.LASF186
 3433 0c23 01       		.byte	0x1
 3434 0c24 4502     		.2byte	0x245
 3435 0c26 29090000 		.4byte	0x929
 3436 0c2a 00000000 		.4byte	.LFB254
 3437 0c2e 68000000 		.4byte	.LFE254-.LFB254
 3438 0c32 01       		.uleb128 0x1
 3439 0c33 9C       		.byte	0x9c
 3440 0c34 C30C0000 		.4byte	0xcc3
 3441 0c38 31       		.uleb128 0x31
 3442 0c39 73726300 		.ascii	"src\000"
 3443 0c3d 01       		.byte	0x1
 3444 0c3e 4502     		.2byte	0x245
 3445 0c40 0C090000 		.4byte	0x90c
 3446 0c44 00000000 		.4byte	.LLST75
 3447 0c48 32       		.uleb128 0x32
 3448 0c49 13040000 		.4byte	.LASF187
 3449 0c4d 01       		.byte	0x1
 3450 0c4e 4502     		.2byte	0x245
 3451 0c50 B2000000 		.4byte	0xb2
 3452 0c54 2C000000 		.4byte	.LLST76
 3453 0c58 33       		.uleb128 0x33
 3454 0c59 706F7300 		.ascii	"pos\000"
 3455 0c5d 01       		.byte	0x1
 3456 0c5e 4702     		.2byte	0x247
 3457 0c60 CD000000 		.4byte	0xcd
 3458 0c64 59000000 		.4byte	.LLST77
 3459 0c68 34       		.uleb128 0x34
 3460 0c69 E0170000 		.4byte	0x17e0
 3461 0c6d 1C000000 		.4byte	.LBB175
 3462 0c71 0C000000 		.4byte	.LBE175-.LBB175
 3463 0c75 01       		.byte	0x1
 3464 0c76 5102     		.2byte	0x251
 3465 0c78 A70C0000 		.4byte	0xca7
 3466 0c7c 35       		.uleb128 0x35
 3467 0c7d FB170000 		.4byte	0x17fb
 3468 0c81 6C000000 		.4byte	.LLST78
 3469 0c85 35       		.uleb128 0x35
 3470 0c86 F0170000 		.4byte	0x17f0
 3471 0c8a 95000000 		.4byte	.LLST79
 3472 0c8e 36       		.uleb128 0x36
 3473 0c8f 28000000 		.4byte	.LVL121
 3474 0c93 05190000 		.4byte	0x1905
 3475 0c97 37       		.uleb128 0x37
 3476 0c98 01       		.uleb128 0x1
 3477 0c99 50       		.byte	0x50
 3478 0c9a 05       		.uleb128 0x5
 3479 0c9b 78       		.byte	0x78
 3480 0c9c 00       		.sleb128 0
 3481 0c9d 74       		.byte	0x74
 3482 0c9e 00       		.sleb128 0
 3483 0c9f 22       		.byte	0x22
ARM GAS  /tmp/ccbxFcRO.s 			page 80


 3484 0ca0 37       		.uleb128 0x37
 3485 0ca1 01       		.uleb128 0x1
 3486 0ca2 51       		.byte	0x51
 3487 0ca3 01       		.uleb128 0x1
 3488 0ca4 30       		.byte	0x30
 3489 0ca5 00       		.byte	0
 3490 0ca6 00       		.byte	0
 3491 0ca7 2F       		.uleb128 0x2f
 3492 0ca8 1C000000 		.4byte	.LVL118
 3493 0cac 50150000 		.4byte	0x1550
 3494 0cb0 2F       		.uleb128 0x2f
 3495 0cb1 36000000 		.4byte	.LVL123
 3496 0cb5 9E140000 		.4byte	0x149e
 3497 0cb9 2F       		.uleb128 0x2f
 3498 0cba 48000000 		.4byte	.LVL126
 3499 0cbe 97160000 		.4byte	0x1697
 3500 0cc2 00       		.byte	0
 3501 0cc3 38       		.uleb128 0x38
 3502 0cc4 1F020000 		.4byte	.LASF193
 3503 0cc8 01       		.byte	0x1
 3504 0cc9 4002     		.2byte	0x240
 3505 0ccb 29090000 		.4byte	0x929
 3506 0ccf 00000000 		.4byte	.LFB253
 3507 0cd3 04000000 		.4byte	.LFE253-.LFB253
 3508 0cd7 01       		.uleb128 0x1
 3509 0cd8 9C       		.byte	0x9c
 3510 0cd9 2E       		.uleb128 0x2e
 3511 0cda 23070000 		.4byte	.LASF188
 3512 0cde 01       		.byte	0x1
 3513 0cdf 2902     		.2byte	0x229
 3514 0ce1 29090000 		.4byte	0x929
 3515 0ce5 00000000 		.4byte	.LFB252
 3516 0ce9 70000000 		.4byte	.LFE252-.LFB252
 3517 0ced 01       		.uleb128 0x1
 3518 0cee 9C       		.byte	0x9c
 3519 0cef C20D0000 		.4byte	0xdc2
 3520 0cf3 32       		.uleb128 0x32
 3521 0cf4 570C0000 		.4byte	.LASF189
 3522 0cf8 01       		.byte	0x1
 3523 0cf9 2902     		.2byte	0x229
 3524 0cfb E2000000 		.4byte	0xe2
 3525 0cff C8000000 		.4byte	.LLST68
 3526 0d03 32       		.uleb128 0x32
 3527 0d04 13040000 		.4byte	.LASF187
 3528 0d08 01       		.byte	0x1
 3529 0d09 2902     		.2byte	0x229
 3530 0d0b B2000000 		.4byte	0xb2
 3531 0d0f F4000000 		.4byte	.LLST69
 3532 0d13 33       		.uleb128 0x33
 3533 0d14 706F7300 		.ascii	"pos\000"
 3534 0d18 01       		.byte	0x1
 3535 0d19 2B02     		.2byte	0x22b
 3536 0d1b CD000000 		.4byte	0xcd
 3537 0d1f 2A010000 		.4byte	.LLST70
 3538 0d23 39       		.uleb128 0x39
 3539 0d24 07180000 		.4byte	0x1807
 3540 0d28 1C000000 		.4byte	.LBB159
ARM GAS  /tmp/ccbxFcRO.s 			page 81


 3541 0d2c 68010000 		.4byte	.Ldebug_ranges0+0x168
 3542 0d30 01       		.byte	0x1
 3543 0d31 3702     		.2byte	0x237
 3544 0d33 590D0000 		.4byte	0xd59
 3545 0d37 35       		.uleb128 0x35
 3546 0d38 22180000 		.4byte	0x1822
 3547 0d3c 49010000 		.4byte	.LLST71
 3548 0d40 35       		.uleb128 0x35
 3549 0d41 17180000 		.4byte	0x1817
 3550 0d45 7D010000 		.4byte	.LLST72
 3551 0d49 36       		.uleb128 0x36
 3552 0d4a 26000000 		.4byte	.LVL107
 3553 0d4e 05190000 		.4byte	0x1905
 3554 0d52 37       		.uleb128 0x37
 3555 0d53 01       		.uleb128 0x1
 3556 0d54 50       		.byte	0x50
 3557 0d55 01       		.uleb128 0x1
 3558 0d56 30       		.byte	0x30
 3559 0d57 00       		.byte	0
 3560 0d58 00       		.byte	0
 3561 0d59 39       		.uleb128 0x39
 3562 0d5a FE150000 		.4byte	0x15fe
 3563 0d5e 2E000000 		.4byte	.LBB162
 3564 0d62 80010000 		.4byte	.Ldebug_ranges0+0x180
 3565 0d66 01       		.byte	0x1
 3566 0d67 3B02     		.2byte	0x23b
 3567 0d69 B80D0000 		.4byte	0xdb8
 3568 0d6d 3A       		.uleb128 0x3a
 3569 0d6e 80010000 		.4byte	.Ldebug_ranges0+0x180
 3570 0d72 3B       		.uleb128 0x3b
 3571 0d73 0A160000 		.4byte	0x160a
 3572 0d77 02       		.uleb128 0x2
 3573 0d78 91       		.byte	0x91
 3574 0d79 5C       		.sleb128 -36
 3575 0d7a 3C       		.uleb128 0x3c
 3576 0d7b 07180000 		.4byte	0x1807
 3577 0d7f 2E000000 		.4byte	.LBB164
 3578 0d83 80010000 		.4byte	.Ldebug_ranges0+0x180
 3579 0d87 01       		.byte	0x1
 3580 0d88 D5       		.byte	0xd5
 3581 0d89 35       		.uleb128 0x35
 3582 0d8a 22180000 		.4byte	0x1822
 3583 0d8e BB010000 		.4byte	.LLST73
 3584 0d92 35       		.uleb128 0x35
 3585 0d93 17180000 		.4byte	0x1817
 3586 0d97 CF010000 		.4byte	.LLST74
 3587 0d9b 36       		.uleb128 0x36
 3588 0d9c 40000000 		.4byte	.LVL111
 3589 0da0 05190000 		.4byte	0x1905
 3590 0da4 37       		.uleb128 0x37
 3591 0da5 01       		.uleb128 0x1
 3592 0da6 50       		.byte	0x50
 3593 0da7 01       		.uleb128 0x1
 3594 0da8 30       		.byte	0x30
 3595 0da9 37       		.uleb128 0x37
 3596 0daa 01       		.uleb128 0x1
 3597 0dab 51       		.byte	0x51
ARM GAS  /tmp/ccbxFcRO.s 			page 82


 3598 0dac 02       		.uleb128 0x2
 3599 0dad 91       		.byte	0x91
 3600 0dae 5C       		.sleb128 -36
 3601 0daf 37       		.uleb128 0x37
 3602 0db0 01       		.uleb128 0x1
 3603 0db1 52       		.byte	0x52
 3604 0db2 01       		.uleb128 0x1
 3605 0db3 32       		.byte	0x32
 3606 0db4 00       		.byte	0
 3607 0db5 00       		.byte	0
 3608 0db6 00       		.byte	0
 3609 0db7 00       		.byte	0
 3610 0db8 2F       		.uleb128 0x2f
 3611 0db9 4C000000 		.4byte	.LVL113
 3612 0dbd 26160000 		.4byte	0x1626
 3613 0dc1 00       		.byte	0
 3614 0dc2 2E       		.uleb128 0x2e
 3615 0dc3 B9080000 		.4byte	.LASF190
 3616 0dc7 01       		.byte	0x1
 3617 0dc8 0A02     		.2byte	0x20a
 3618 0dca 29090000 		.4byte	0x929
 3619 0dce 00000000 		.4byte	.LFB251
 3620 0dd2 70000000 		.4byte	.LFE251-.LFB251
 3621 0dd6 01       		.uleb128 0x1
 3622 0dd7 9C       		.byte	0x9c
 3623 0dd8 520E0000 		.4byte	0xe52
 3624 0ddc 32       		.uleb128 0x32
 3625 0ddd E3040000 		.4byte	.LASF191
 3626 0de1 01       		.byte	0x1
 3627 0de2 0A02     		.2byte	0x20a
 3628 0de4 CD000000 		.4byte	0xcd
 3629 0de8 EF010000 		.4byte	.LLST65
 3630 0dec 34       		.uleb128 0x34
 3631 0ded E0170000 		.4byte	0x17e0
 3632 0df1 1E000000 		.4byte	.LBB157
 3633 0df5 0C000000 		.4byte	.LBE157-.LBB157
 3634 0df9 01       		.byte	0x1
 3635 0dfa 1702     		.2byte	0x217
 3636 0dfc 2D0E0000 		.4byte	0xe2d
 3637 0e00 35       		.uleb128 0x35
 3638 0e01 FB170000 		.4byte	0x17fb
 3639 0e05 0D020000 		.4byte	.LLST66
 3640 0e09 35       		.uleb128 0x35
 3641 0e0a F0170000 		.4byte	0x17f0
 3642 0e0e 21020000 		.4byte	.LLST67
 3643 0e12 36       		.uleb128 0x36
 3644 0e13 2A000000 		.4byte	.LVL98
 3645 0e17 05190000 		.4byte	0x1905
 3646 0e1b 37       		.uleb128 0x37
 3647 0e1c 01       		.uleb128 0x1
 3648 0e1d 50       		.byte	0x50
 3649 0e1e 02       		.uleb128 0x2
 3650 0e1f 91       		.byte	0x91
 3651 0e20 6C       		.sleb128 -20
 3652 0e21 37       		.uleb128 0x37
 3653 0e22 01       		.uleb128 0x1
 3654 0e23 51       		.byte	0x51
ARM GAS  /tmp/ccbxFcRO.s 			page 83


 3655 0e24 01       		.uleb128 0x1
 3656 0e25 30       		.byte	0x30
 3657 0e26 37       		.uleb128 0x37
 3658 0e27 01       		.uleb128 0x1
 3659 0e28 52       		.byte	0x52
 3660 0e29 01       		.uleb128 0x1
 3661 0e2a 34       		.byte	0x34
 3662 0e2b 00       		.byte	0
 3663 0e2c 00       		.byte	0
 3664 0e2d 2F       		.uleb128 0x2f
 3665 0e2e 40000000 		.4byte	.LVL99
 3666 0e32 9E140000 		.4byte	0x149e
 3667 0e36 2F       		.uleb128 0x2f
 3668 0e37 4A000000 		.4byte	.LVL100
 3669 0e3b 80140000 		.4byte	0x1480
 3670 0e3f 2F       		.uleb128 0x2f
 3671 0e40 52000000 		.4byte	.LVL102
 3672 0e44 50150000 		.4byte	0x1550
 3673 0e48 2F       		.uleb128 0x2f
 3674 0e49 58000000 		.4byte	.LVL103
 3675 0e4d 97160000 		.4byte	0x1697
 3676 0e51 00       		.byte	0
 3677 0e52 2E       		.uleb128 0x2e
 3678 0e53 E5010000 		.4byte	.LASF192
 3679 0e57 01       		.byte	0x1
 3680 0e58 F201     		.2byte	0x1f2
 3681 0e5a 29090000 		.4byte	0x929
 3682 0e5e 00000000 		.4byte	.LFB250
 3683 0e62 60000000 		.4byte	.LFE250-.LFB250
 3684 0e66 01       		.uleb128 0x1
 3685 0e67 9C       		.byte	0x9c
 3686 0e68 230F0000 		.4byte	0xf23
 3687 0e6c 32       		.uleb128 0x32
 3688 0e6d E3040000 		.4byte	.LASF191
 3689 0e71 01       		.byte	0x1
 3690 0e72 F201     		.2byte	0x1f2
 3691 0e74 230F0000 		.4byte	0xf23
 3692 0e78 36020000 		.4byte	.LLST61
 3693 0e7c 34       		.uleb128 0x34
 3694 0e7d 07180000 		.4byte	0x1807
 3695 0e81 26000000 		.4byte	.LBB151
 3696 0e85 0A000000 		.4byte	.LBE151-.LBB151
 3697 0e89 01       		.byte	0x1
 3698 0e8a FF01     		.2byte	0x1ff
 3699 0e8c BE0E0000 		.4byte	0xebe
 3700 0e90 35       		.uleb128 0x35
 3701 0e91 22180000 		.4byte	0x1822
 3702 0e95 54020000 		.4byte	.LLST62
 3703 0e99 35       		.uleb128 0x35
 3704 0e9a 17180000 		.4byte	0x1817
 3705 0e9e 68020000 		.4byte	.LLST63
 3706 0ea2 36       		.uleb128 0x36
 3707 0ea3 30000000 		.4byte	.LVL92
 3708 0ea7 05190000 		.4byte	0x1905
 3709 0eab 37       		.uleb128 0x37
 3710 0eac 01       		.uleb128 0x1
 3711 0ead 50       		.byte	0x50
ARM GAS  /tmp/ccbxFcRO.s 			page 84


 3712 0eae 02       		.uleb128 0x2
 3713 0eaf 77       		.byte	0x77
 3714 0eb0 00       		.sleb128 0
 3715 0eb1 37       		.uleb128 0x37
 3716 0eb2 01       		.uleb128 0x1
 3717 0eb3 51       		.byte	0x51
 3718 0eb4 02       		.uleb128 0x2
 3719 0eb5 78       		.byte	0x78
 3720 0eb6 00       		.sleb128 0
 3721 0eb7 37       		.uleb128 0x37
 3722 0eb8 01       		.uleb128 0x1
 3723 0eb9 52       		.byte	0x52
 3724 0eba 01       		.uleb128 0x1
 3725 0ebb 34       		.byte	0x34
 3726 0ebc 00       		.byte	0
 3727 0ebd 00       		.byte	0
 3728 0ebe 34       		.uleb128 0x34
 3729 0ebf FE150000 		.4byte	0x15fe
 3730 0ec3 4A000000 		.4byte	.LBB153
 3731 0ec7 16000000 		.4byte	.LBE153-.LBB153
 3732 0ecb 01       		.byte	0x1
 3733 0ecc 0502     		.2byte	0x205
 3734 0ece 190F0000 		.4byte	0xf19
 3735 0ed2 3D       		.uleb128 0x3d
 3736 0ed3 4A000000 		.4byte	.LBB154
 3737 0ed7 16000000 		.4byte	.LBE154-.LBB154
 3738 0edb 3B       		.uleb128 0x3b
 3739 0edc 0A160000 		.4byte	0x160a
 3740 0ee0 02       		.uleb128 0x2
 3741 0ee1 91       		.byte	0x91
 3742 0ee2 64       		.sleb128 -28
 3743 0ee3 3E       		.uleb128 0x3e
 3744 0ee4 07180000 		.4byte	0x1807
 3745 0ee8 4A000000 		.4byte	.LBB155
 3746 0eec 16000000 		.4byte	.LBE155-.LBB155
 3747 0ef0 01       		.byte	0x1
 3748 0ef1 D5       		.byte	0xd5
 3749 0ef2 3F       		.uleb128 0x3f
 3750 0ef3 22180000 		.4byte	0x1822
 3751 0ef7 02       		.byte	0x2
 3752 0ef8 35       		.uleb128 0x35
 3753 0ef9 17180000 		.4byte	0x1817
 3754 0efd 7B020000 		.4byte	.LLST64
 3755 0f01 36       		.uleb128 0x36
 3756 0f02 52000000 		.4byte	.LVL95
 3757 0f06 05190000 		.4byte	0x1905
 3758 0f0a 37       		.uleb128 0x37
 3759 0f0b 01       		.uleb128 0x1
 3760 0f0c 51       		.byte	0x51
 3761 0f0d 02       		.uleb128 0x2
 3762 0f0e 91       		.byte	0x91
 3763 0f0f 64       		.sleb128 -28
 3764 0f10 37       		.uleb128 0x37
 3765 0f11 01       		.uleb128 0x1
 3766 0f12 52       		.byte	0x52
 3767 0f13 01       		.uleb128 0x1
 3768 0f14 32       		.byte	0x32
ARM GAS  /tmp/ccbxFcRO.s 			page 85


 3769 0f15 00       		.byte	0
 3770 0f16 00       		.byte	0
 3771 0f17 00       		.byte	0
 3772 0f18 00       		.byte	0
 3773 0f19 2F       		.uleb128 0x2f
 3774 0f1a 24000000 		.4byte	.LVL90
 3775 0f1e 26160000 		.4byte	0x1626
 3776 0f22 00       		.byte	0
 3777 0f23 13       		.uleb128 0x13
 3778 0f24 04       		.byte	0x4
 3779 0f25 CD000000 		.4byte	0xcd
 3780 0f29 38       		.uleb128 0x38
 3781 0f2a 02010000 		.4byte	.LASF194
 3782 0f2e 01       		.byte	0x1
 3783 0f2f ED01     		.2byte	0x1ed
 3784 0f31 CD000000 		.4byte	0xcd
 3785 0f35 00000000 		.4byte	.LFB249
 3786 0f39 0C000000 		.4byte	.LFE249-.LFB249
 3787 0f3d 01       		.uleb128 0x1
 3788 0f3e 9C       		.byte	0x9c
 3789 0f3f 2E       		.uleb128 0x2e
 3790 0f40 C6010000 		.4byte	.LASF195
 3791 0f44 01       		.byte	0x1
 3792 0f45 8901     		.2byte	0x189
 3793 0f47 29090000 		.4byte	0x929
 3794 0f4b 00000000 		.4byte	.LFB248
 3795 0f4f 6C010000 		.4byte	.LFE248-.LFB248
 3796 0f53 01       		.uleb128 0x1
 3797 0f54 9C       		.byte	0x9c
 3798 0f55 C0110000 		.4byte	0x11c0
 3799 0f59 31       		.uleb128 0x31
 3800 0f5a 636D6400 		.ascii	"cmd\000"
 3801 0f5e 01       		.byte	0x1
 3802 0f5f 8901     		.2byte	0x189
 3803 0f61 E90A0000 		.4byte	0xae9
 3804 0f65 A8020000 		.4byte	.LLST36
 3805 0f69 31       		.uleb128 0x31
 3806 0f6a 61726700 		.ascii	"arg\000"
 3807 0f6e 01       		.byte	0x1
 3808 0f6f 8901     		.2byte	0x189
 3809 0f71 CD000000 		.4byte	0xcd
 3810 0f75 C6020000 		.4byte	.LLST37
 3811 0f79 32       		.uleb128 0x32
 3812 0f7a 59080000 		.4byte	.LASF196
 3813 0f7e 01       		.byte	0x1
 3814 0f7f 8A01     		.2byte	0x18a
 3815 0f81 B2000000 		.4byte	0xb2
 3816 0f85 E7020000 		.4byte	.LLST38
 3817 0f89 32       		.uleb128 0x32
 3818 0f8a 13040000 		.4byte	.LASF187
 3819 0f8e 01       		.byte	0x1
 3820 0f8f 8A01     		.2byte	0x18a
 3821 0f91 B2000000 		.4byte	0xb2
 3822 0f95 08030000 		.4byte	.LLST39
 3823 0f99 32       		.uleb128 0x32
 3824 0f9a 7D080000 		.4byte	.LASF197
 3825 0f9e 01       		.byte	0x1
ARM GAS  /tmp/ccbxFcRO.s 			page 86


 3826 0f9f 8A01     		.2byte	0x18a
 3827 0fa1 29090000 		.4byte	0x929
 3828 0fa5 29030000 		.4byte	.LLST40
 3829 0fa9 2D       		.uleb128 0x2d
 3830 0faa 39030000 		.4byte	.LASF198
 3831 0fae 01       		.byte	0x1
 3832 0faf 8C01     		.2byte	0x18c
 3833 0fb1 A2000000 		.4byte	0xa2
 3834 0fb5 02       		.uleb128 0x2
 3835 0fb6 91       		.byte	0x91
 3836 0fb7 56       		.sleb128 -42
 3837 0fb8 2D       		.uleb128 0x2d
 3838 0fb9 47010000 		.4byte	.LASF199
 3839 0fbd 01       		.byte	0x1
 3840 0fbe 8D01     		.2byte	0x18d
 3841 0fc0 C0110000 		.4byte	0x11c0
 3842 0fc4 02       		.uleb128 0x2
 3843 0fc5 91       		.byte	0x91
 3844 0fc6 58       		.sleb128 -40
 3845 0fc7 40       		.uleb128 0x40
 3846 0fc8 D3090000 		.4byte	.LASF200
 3847 0fcc 01       		.byte	0x1
 3848 0fcd 8E01     		.2byte	0x18e
 3849 0fcf A2000000 		.4byte	0xa2
 3850 0fd3 49030000 		.4byte	.LLST41
 3851 0fd7 41       		.uleb128 0x41
 3852 0fd8 723100   		.ascii	"r1\000"
 3853 0fdb 01       		.byte	0x1
 3854 0fdc 8F01     		.2byte	0x18f
 3855 0fde A2000000 		.4byte	0xa2
 3856 0fe2 02       		.uleb128 0x2
 3857 0fe3 91       		.byte	0x91
 3858 0fe4 57       		.sleb128 -41
 3859 0fe5 39       		.uleb128 0x39
 3860 0fe6 94170000 		.4byte	0x1794
 3861 0fea 28000000 		.4byte	.LBB121
 3862 0fee E8000000 		.4byte	.Ldebug_ranges0+0xe8
 3863 0ff2 01       		.byte	0x1
 3864 0ff3 9B01     		.2byte	0x19b
 3865 0ff5 2D100000 		.4byte	0x102d
 3866 0ff9 35       		.uleb128 0x35
 3867 0ffa AF170000 		.4byte	0x17af
 3868 0ffe 76030000 		.4byte	.LLST42
 3869 1002 35       		.uleb128 0x35
 3870 1003 A4170000 		.4byte	0x17a4
 3871 1007 AE030000 		.4byte	.LLST43
 3872 100b 3A       		.uleb128 0x3a
 3873 100c E8000000 		.4byte	.Ldebug_ranges0+0xe8
 3874 1010 42       		.uleb128 0x42
 3875 1011 BA170000 		.4byte	0x17ba
 3876 1015 DB030000 		.4byte	.LLST44
 3877 1019 42       		.uleb128 0x42
 3878 101a C5170000 		.4byte	0x17c5
 3879 101e 05040000 		.4byte	.LLST45
 3880 1022 42       		.uleb128 0x42
 3881 1023 D0170000 		.4byte	0x17d0
 3882 1027 2F040000 		.4byte	.LLST46
ARM GAS  /tmp/ccbxFcRO.s 			page 87


 3883 102b 00       		.byte	0
 3884 102c 00       		.byte	0
 3885 102d 39       		.uleb128 0x39
 3886 102e E0170000 		.4byte	0x17e0
 3887 1032 76000000 		.4byte	.LBB127
 3888 1036 10010000 		.4byte	.Ldebug_ranges0+0x110
 3889 103a 01       		.byte	0x1
 3890 103b A001     		.2byte	0x1a0
 3891 103d 6F100000 		.4byte	0x106f
 3892 1041 35       		.uleb128 0x35
 3893 1042 FB170000 		.4byte	0x17fb
 3894 1046 52040000 		.4byte	.LLST47
 3895 104a 35       		.uleb128 0x35
 3896 104b F0170000 		.4byte	0x17f0
 3897 104f 66040000 		.4byte	.LLST48
 3898 1053 36       		.uleb128 0x36
 3899 1054 92000000 		.4byte	.LVL73
 3900 1058 05190000 		.4byte	0x1905
 3901 105c 37       		.uleb128 0x37
 3902 105d 01       		.uleb128 0x1
 3903 105e 50       		.byte	0x50
 3904 105f 02       		.uleb128 0x2
 3905 1060 91       		.byte	0x91
 3906 1061 56       		.sleb128 -42
 3907 1062 37       		.uleb128 0x37
 3908 1063 01       		.uleb128 0x1
 3909 1064 51       		.byte	0x51
 3910 1065 02       		.uleb128 0x2
 3911 1066 78       		.byte	0x78
 3912 1067 00       		.sleb128 0
 3913 1068 37       		.uleb128 0x37
 3914 1069 01       		.uleb128 0x1
 3915 106a 52       		.byte	0x52
 3916 106b 01       		.uleb128 0x1
 3917 106c 31       		.byte	0x31
 3918 106d 00       		.byte	0
 3919 106e 00       		.byte	0
 3920 106f 39       		.uleb128 0x39
 3921 1070 07180000 		.4byte	0x1807
 3922 1074 86000000 		.4byte	.LBB134
 3923 1078 30010000 		.4byte	.Ldebug_ranges0+0x130
 3924 107c 01       		.byte	0x1
 3925 107d AA01     		.2byte	0x1aa
 3926 107f B1100000 		.4byte	0x10b1
 3927 1083 35       		.uleb128 0x35
 3928 1084 22180000 		.4byte	0x1822
 3929 1088 86040000 		.4byte	.LLST49
 3930 108c 35       		.uleb128 0x35
 3931 108d 17180000 		.4byte	0x1817
 3932 1091 9A040000 		.4byte	.LLST50
 3933 1095 36       		.uleb128 0x36
 3934 1096 AC000000 		.4byte	.LVL77
 3935 109a 05190000 		.4byte	0x1905
 3936 109e 37       		.uleb128 0x37
 3937 109f 01       		.uleb128 0x1
 3938 10a0 50       		.byte	0x50
 3939 10a1 02       		.uleb128 0x2
ARM GAS  /tmp/ccbxFcRO.s 			page 88


 3940 10a2 78       		.byte	0x78
 3941 10a3 00       		.sleb128 0
 3942 10a4 37       		.uleb128 0x37
 3943 10a5 01       		.uleb128 0x1
 3944 10a6 51       		.byte	0x51
 3945 10a7 02       		.uleb128 0x2
 3946 10a8 79       		.byte	0x79
 3947 10a9 00       		.sleb128 0
 3948 10aa 37       		.uleb128 0x37
 3949 10ab 01       		.uleb128 0x1
 3950 10ac 52       		.byte	0x52
 3951 10ad 01       		.uleb128 0x1
 3952 10ae 31       		.byte	0x31
 3953 10af 00       		.byte	0
 3954 10b0 00       		.byte	0
 3955 10b1 34       		.uleb128 0x34
 3956 10b2 E0170000 		.4byte	0x17e0
 3957 10b6 92000000 		.4byte	.LBB139
 3958 10ba 0A000000 		.4byte	.LBE139-.LBB139
 3959 10be 01       		.byte	0x1
 3960 10bf A201     		.2byte	0x1a2
 3961 10c1 F3100000 		.4byte	0x10f3
 3962 10c5 35       		.uleb128 0x35
 3963 10c6 FB170000 		.4byte	0x17fb
 3964 10ca AF040000 		.4byte	.LLST51
 3965 10ce 35       		.uleb128 0x35
 3966 10cf F0170000 		.4byte	0x17f0
 3967 10d3 C3040000 		.4byte	.LLST52
 3968 10d7 36       		.uleb128 0x36
 3969 10d8 9C000000 		.4byte	.LVL75
 3970 10dc 05190000 		.4byte	0x1905
 3971 10e0 37       		.uleb128 0x37
 3972 10e1 01       		.uleb128 0x1
 3973 10e2 50       		.byte	0x50
 3974 10e3 02       		.uleb128 0x2
 3975 10e4 91       		.byte	0x91
 3976 10e5 58       		.sleb128 -40
 3977 10e6 37       		.uleb128 0x37
 3978 10e7 01       		.uleb128 0x1
 3979 10e8 51       		.byte	0x51
 3980 10e9 02       		.uleb128 0x2
 3981 10ea 78       		.byte	0x78
 3982 10eb 00       		.sleb128 0
 3983 10ec 37       		.uleb128 0x37
 3984 10ed 01       		.uleb128 0x1
 3985 10ee 52       		.byte	0x52
 3986 10ef 01       		.uleb128 0x1
 3987 10f0 36       		.byte	0x36
 3988 10f1 00       		.byte	0
 3989 10f2 00       		.byte	0
 3990 10f3 34       		.uleb128 0x34
 3991 10f4 07180000 		.4byte	0x1807
 3992 10f8 AC000000 		.4byte	.LBB143
 3993 10fc 0A000000 		.4byte	.LBE143-.LBB143
 3994 1100 01       		.byte	0x1
 3995 1101 AD01     		.2byte	0x1ad
 3996 1103 34110000 		.4byte	0x1134
ARM GAS  /tmp/ccbxFcRO.s 			page 89


 3997 1107 35       		.uleb128 0x35
 3998 1108 22180000 		.4byte	0x1822
 3999 110c F0040000 		.4byte	.LLST53
 4000 1110 35       		.uleb128 0x35
 4001 1111 17180000 		.4byte	0x1817
 4002 1115 04050000 		.4byte	.LLST54
 4003 1119 36       		.uleb128 0x36
 4004 111a B6000000 		.4byte	.LVL78
 4005 111e 05190000 		.4byte	0x1905
 4006 1122 37       		.uleb128 0x37
 4007 1123 01       		.uleb128 0x1
 4008 1124 50       		.byte	0x50
 4009 1125 01       		.uleb128 0x1
 4010 1126 30       		.byte	0x30
 4011 1127 37       		.uleb128 0x37
 4012 1128 01       		.uleb128 0x1
 4013 1129 51       		.byte	0x51
 4014 112a 02       		.uleb128 0x2
 4015 112b 79       		.byte	0x79
 4016 112c 00       		.sleb128 0
 4017 112d 37       		.uleb128 0x37
 4018 112e 01       		.uleb128 0x1
 4019 112f 52       		.byte	0x52
 4020 1130 01       		.uleb128 0x1
 4021 1131 31       		.byte	0x31
 4022 1132 00       		.byte	0
 4023 1133 00       		.byte	0
 4024 1134 34       		.uleb128 0x34
 4025 1135 07180000 		.4byte	0x1807
 4026 1139 2A010000 		.4byte	.LBB145
 4027 113d 0A000000 		.4byte	.LBE145-.LBB145
 4028 1141 01       		.byte	0x1
 4029 1142 E301     		.2byte	0x1e3
 4030 1144 75110000 		.4byte	0x1175
 4031 1148 35       		.uleb128 0x35
 4032 1149 22180000 		.4byte	0x1822
 4033 114d 19050000 		.4byte	.LLST55
 4034 1151 35       		.uleb128 0x35
 4035 1152 17180000 		.4byte	0x1817
 4036 1156 2D050000 		.4byte	.LLST56
 4037 115a 36       		.uleb128 0x36
 4038 115b 34010000 		.4byte	.LVL83
 4039 115f 05190000 		.4byte	0x1905
 4040 1163 37       		.uleb128 0x37
 4041 1164 01       		.uleb128 0x1
 4042 1165 50       		.byte	0x50
 4043 1166 01       		.uleb128 0x1
 4044 1167 30       		.byte	0x30
 4045 1168 37       		.uleb128 0x37
 4046 1169 01       		.uleb128 0x1
 4047 116a 51       		.byte	0x51
 4048 116b 02       		.uleb128 0x2
 4049 116c 78       		.byte	0x78
 4050 116d 00       		.sleb128 0
 4051 116e 37       		.uleb128 0x37
 4052 116f 01       		.uleb128 0x1
 4053 1170 52       		.byte	0x52
ARM GAS  /tmp/ccbxFcRO.s 			page 90


 4054 1171 01       		.uleb128 0x1
 4055 1172 34       		.byte	0x34
 4056 1173 00       		.byte	0
 4057 1174 00       		.byte	0
 4058 1175 39       		.uleb128 0x39
 4059 1176 07180000 		.4byte	0x1807
 4060 117a 42010000 		.4byte	.LBB147
 4061 117e 50010000 		.4byte	.Ldebug_ranges0+0x150
 4062 1182 01       		.byte	0x1
 4063 1183 DF01     		.2byte	0x1df
 4064 1185 B6110000 		.4byte	0x11b6
 4065 1189 35       		.uleb128 0x35
 4066 118a 22180000 		.4byte	0x1822
 4067 118e 45050000 		.4byte	.LLST57
 4068 1192 35       		.uleb128 0x35
 4069 1193 17180000 		.4byte	0x1817
 4070 1197 59050000 		.4byte	.LLST58
 4071 119b 36       		.uleb128 0x36
 4072 119c 50010000 		.4byte	.LVL85
 4073 11a0 05190000 		.4byte	0x1905
 4074 11a4 37       		.uleb128 0x37
 4075 11a5 01       		.uleb128 0x1
 4076 11a6 50       		.byte	0x50
 4077 11a7 01       		.uleb128 0x1
 4078 11a8 30       		.byte	0x30
 4079 11a9 37       		.uleb128 0x37
 4080 11aa 01       		.uleb128 0x1
 4081 11ab 51       		.byte	0x51
 4082 11ac 02       		.uleb128 0x2
 4083 11ad 78       		.byte	0x78
 4084 11ae 00       		.sleb128 0
 4085 11af 37       		.uleb128 0x37
 4086 11b0 01       		.uleb128 0x1
 4087 11b1 52       		.byte	0x52
 4088 11b2 01       		.uleb128 0x1
 4089 11b3 31       		.byte	0x31
 4090 11b4 00       		.byte	0
 4091 11b5 00       		.byte	0
 4092 11b6 2F       		.uleb128 0x2f
 4093 11b7 20010000 		.4byte	.LVL81
 4094 11bb 97160000 		.4byte	0x1697
 4095 11bf 00       		.byte	0
 4096 11c0 0D       		.uleb128 0xd
 4097 11c1 A2000000 		.4byte	0xa2
 4098 11c5 D0110000 		.4byte	0x11d0
 4099 11c9 0E       		.uleb128 0xe
 4100 11ca E4000000 		.4byte	0xe4
 4101 11ce 05       		.byte	0x5
 4102 11cf 00       		.byte	0
 4103 11d0 2E       		.uleb128 0x2e
 4104 11d1 FE080000 		.4byte	.LASF201
 4105 11d5 01       		.byte	0x1
 4106 11d6 8401     		.2byte	0x184
 4107 11d8 29090000 		.4byte	0x929
 4108 11dc 00000000 		.4byte	.LFB247
 4109 11e0 14000000 		.4byte	.LFE247-.LFB247
 4110 11e4 01       		.uleb128 0x1
ARM GAS  /tmp/ccbxFcRO.s 			page 91


 4111 11e5 9C       		.byte	0x9c
 4112 11e6 33120000 		.4byte	0x1233
 4113 11ea 31       		.uleb128 0x31
 4114 11eb 636D6400 		.ascii	"cmd\000"
 4115 11ef 01       		.byte	0x1
 4116 11f0 8401     		.2byte	0x184
 4117 11f2 E90A0000 		.4byte	0xae9
 4118 11f6 71050000 		.4byte	.LLST59
 4119 11fa 31       		.uleb128 0x31
 4120 11fb 61726700 		.ascii	"arg\000"
 4121 11ff 01       		.byte	0x1
 4122 1200 8401     		.2byte	0x184
 4123 1202 CD000000 		.4byte	0xcd
 4124 1206 92050000 		.4byte	.LLST60
 4125 120a 36       		.uleb128 0x36
 4126 120b 0E000000 		.4byte	.LVL87
 4127 120f 3F0F0000 		.4byte	0xf3f
 4128 1213 37       		.uleb128 0x37
 4129 1214 01       		.uleb128 0x1
 4130 1215 50       		.byte	0x50
 4131 1216 03       		.uleb128 0x3
 4132 1217 F3       		.byte	0xf3
 4133 1218 01       		.uleb128 0x1
 4134 1219 50       		.byte	0x50
 4135 121a 37       		.uleb128 0x37
 4136 121b 01       		.uleb128 0x1
 4137 121c 51       		.byte	0x51
 4138 121d 03       		.uleb128 0x3
 4139 121e F3       		.byte	0xf3
 4140 121f 01       		.uleb128 0x1
 4141 1220 51       		.byte	0x51
 4142 1221 37       		.uleb128 0x37
 4143 1222 01       		.uleb128 0x1
 4144 1223 52       		.byte	0x52
 4145 1224 01       		.uleb128 0x1
 4146 1225 30       		.byte	0x30
 4147 1226 37       		.uleb128 0x37
 4148 1227 01       		.uleb128 0x1
 4149 1228 53       		.byte	0x53
 4150 1229 01       		.uleb128 0x1
 4151 122a 30       		.byte	0x30
 4152 122b 37       		.uleb128 0x37
 4153 122c 02       		.uleb128 0x2
 4154 122d 7D       		.byte	0x7d
 4155 122e 00       		.sleb128 0
 4156 122f 01       		.uleb128 0x1
 4157 1230 30       		.byte	0x30
 4158 1231 00       		.byte	0
 4159 1232 00       		.byte	0
 4160 1233 43       		.uleb128 0x43
 4161 1234 51050000 		.4byte	.LASF202
 4162 1238 01       		.byte	0x1
 4163 1239 7801     		.2byte	0x178
 4164 123b 00000000 		.4byte	.LFB246
 4165 123f 30000000 		.4byte	.LFE246-.LFB246
 4166 1243 01       		.uleb128 0x1
 4167 1244 9C       		.byte	0x9c
ARM GAS  /tmp/ccbxFcRO.s 			page 92


 4168 1245 A4120000 		.4byte	0x12a4
 4169 1249 33       		.uleb128 0x33
 4170 124a 6900     		.ascii	"i\000"
 4171 124c 01       		.byte	0x1
 4172 124d 7A01     		.2byte	0x17a
 4173 124f A2000000 		.4byte	0xa2
 4174 1253 B3050000 		.4byte	.LLST33
 4175 1257 2D       		.uleb128 0x2d
 4176 1258 39030000 		.4byte	.LASF198
 4177 125c 01       		.byte	0x1
 4178 125d 7B01     		.2byte	0x17b
 4179 125f A2000000 		.4byte	0xa2
 4180 1263 02       		.uleb128 0x2
 4181 1264 91       		.byte	0x91
 4182 1265 6F       		.sleb128 -17
 4183 1266 44       		.uleb128 0x44
 4184 1267 E0170000 		.4byte	0x17e0
 4185 126b 14000000 		.4byte	.LBB119
 4186 126f 0C000000 		.4byte	.LBE119-.LBB119
 4187 1273 01       		.byte	0x1
 4188 1274 8001     		.2byte	0x180
 4189 1276 35       		.uleb128 0x35
 4190 1277 FB170000 		.4byte	0x17fb
 4191 127b E5050000 		.4byte	.LLST34
 4192 127f 35       		.uleb128 0x35
 4193 1280 F0170000 		.4byte	0x17f0
 4194 1284 F9050000 		.4byte	.LLST35
 4195 1288 36       		.uleb128 0x36
 4196 1289 1E000000 		.4byte	.LVL55
 4197 128d 05190000 		.4byte	0x1905
 4198 1291 37       		.uleb128 0x37
 4199 1292 01       		.uleb128 0x1
 4200 1293 50       		.byte	0x50
 4201 1294 02       		.uleb128 0x2
 4202 1295 75       		.byte	0x75
 4203 1296 00       		.sleb128 0
 4204 1297 37       		.uleb128 0x37
 4205 1298 01       		.uleb128 0x1
 4206 1299 51       		.byte	0x51
 4207 129a 01       		.uleb128 0x1
 4208 129b 30       		.byte	0x30
 4209 129c 37       		.uleb128 0x37
 4210 129d 01       		.uleb128 0x1
 4211 129e 52       		.byte	0x52
 4212 129f 01       		.uleb128 0x1
 4213 12a0 31       		.byte	0x31
 4214 12a1 00       		.byte	0
 4215 12a2 00       		.byte	0
 4216 12a3 00       		.byte	0
 4217 12a4 43       		.uleb128 0x43
 4218 12a5 CA070000 		.4byte	.LASF203
 4219 12a9 01       		.byte	0x1
 4220 12aa 7101     		.2byte	0x171
 4221 12ac 00000000 		.4byte	.LFB245
 4222 12b0 24000000 		.4byte	.LFE245-.LFB245
 4223 12b4 01       		.uleb128 0x1
 4224 12b5 9C       		.byte	0x9c
ARM GAS  /tmp/ccbxFcRO.s 			page 93


 4225 12b6 05130000 		.4byte	0x1305
 4226 12ba 32       		.uleb128 0x32
 4227 12bb 5F000000 		.4byte	.LASF204
 4228 12bf 01       		.byte	0x1
 4229 12c0 7101     		.2byte	0x171
 4230 12c2 A2000000 		.4byte	0xa2
 4231 12c6 0E060000 		.4byte	.LLST30
 4232 12ca 34       		.uleb128 0x34
 4233 12cb 2E180000 		.4byte	0x182e
 4234 12cf 12000000 		.4byte	.LBB117
 4235 12d3 12000000 		.4byte	.LBE117-.LBB117
 4236 12d7 01       		.byte	0x1
 4237 12d8 7501     		.2byte	0x175
 4238 12da FB120000 		.4byte	0x12fb
 4239 12de 35       		.uleb128 0x35
 4240 12df 3A180000 		.4byte	0x183a
 4241 12e3 2F060000 		.4byte	.LLST31
 4242 12e7 3D       		.uleb128 0x3d
 4243 12e8 12000000 		.4byte	.LBB118
 4244 12ec 12000000 		.4byte	.LBE118-.LBB118
 4245 12f0 42       		.uleb128 0x42
 4246 12f1 45180000 		.4byte	0x1845
 4247 12f5 43060000 		.4byte	.LLST32
 4248 12f9 00       		.byte	0
 4249 12fa 00       		.byte	0
 4250 12fb 2F       		.uleb128 0x2f
 4251 12fc 12000000 		.4byte	.LVL51
 4252 1300 10190000 		.4byte	0x1910
 4253 1304 00       		.byte	0
 4254 1305 43       		.uleb128 0x43
 4255 1306 38000000 		.4byte	.LASF205
 4256 130a 01       		.byte	0x1
 4257 130b 5D01     		.2byte	0x15d
 4258 130d 00000000 		.4byte	.LFB244
 4259 1311 3C000000 		.4byte	.LFE244-.LFB244
 4260 1315 01       		.uleb128 0x1
 4261 1316 9C       		.byte	0x9c
 4262 1317 C1130000 		.4byte	0x13c1
 4263 131b 32       		.uleb128 0x32
 4264 131c 5F000000 		.4byte	.LASF204
 4265 1320 01       		.byte	0x1
 4266 1321 5D01     		.2byte	0x15d
 4267 1323 A2000000 		.4byte	0xa2
 4268 1327 58060000 		.4byte	.LLST23
 4269 132b 32       		.uleb128 0x32
 4270 132c 08040000 		.4byte	.LASF206
 4271 1330 01       		.byte	0x1
 4272 1331 5D01     		.2byte	0x15d
 4273 1333 CD000000 		.4byte	0xcd
 4274 1337 79060000 		.4byte	.LLST24
 4275 133b 32       		.uleb128 0x32
 4276 133c 5C090000 		.4byte	.LASF207
 4277 1340 01       		.byte	0x1
 4278 1341 5D01     		.2byte	0x15d
 4279 1343 A2000000 		.4byte	0xa2
 4280 1347 9A060000 		.4byte	.LLST25
 4281 134b 32       		.uleb128 0x32
ARM GAS  /tmp/ccbxFcRO.s 			page 94


 4282 134c 6F020000 		.4byte	.LASF208
 4283 1350 01       		.byte	0x1
 4284 1351 5D01     		.2byte	0x15d
 4285 1353 29090000 		.4byte	0x929
 4286 1357 BB060000 		.4byte	.LLST26
 4287 135b 33       		.uleb128 0x33
 4288 135c 64657600 		.ascii	"dev\000"
 4289 1360 01       		.byte	0x1
 4290 1361 6901     		.2byte	0x169
 4291 1363 C1130000 		.4byte	0x13c1
 4292 1367 DC060000 		.4byte	.LLST27
 4293 136b 34       		.uleb128 0x34
 4294 136c 2E180000 		.4byte	0x182e
 4295 1370 26000000 		.4byte	.LBB115
 4296 1374 16000000 		.4byte	.LBE115-.LBB115
 4297 1378 01       		.byte	0x1
 4298 1379 6E01     		.2byte	0x16e
 4299 137b 9C130000 		.4byte	0x139c
 4300 137f 35       		.uleb128 0x35
 4301 1380 3A180000 		.4byte	0x183a
 4302 1384 FA060000 		.4byte	.LLST28
 4303 1388 3D       		.uleb128 0x3d
 4304 1389 26000000 		.4byte	.LBB116
 4305 138d 16000000 		.4byte	.LBE116-.LBB116
 4306 1391 42       		.uleb128 0x42
 4307 1392 45180000 		.4byte	0x1845
 4308 1396 0E070000 		.4byte	.LLST29
 4309 139a 00       		.byte	0
 4310 139b 00       		.byte	0
 4311 139c 45       		.uleb128 0x45
 4312 139d 20000000 		.4byte	.LVL45
 4313 13a1 1B190000 		.4byte	0x191b
 4314 13a5 B0130000 		.4byte	0x13b0
 4315 13a9 37       		.uleb128 0x37
 4316 13aa 01       		.uleb128 0x1
 4317 13ab 50       		.byte	0x50
 4318 13ac 02       		.uleb128 0x2
 4319 13ad 74       		.byte	0x74
 4320 13ae 00       		.sleb128 0
 4321 13af 00       		.byte	0
 4322 13b0 36       		.uleb128 0x36
 4323 13b1 26000000 		.4byte	.LVL46
 4324 13b5 26190000 		.4byte	0x1926
 4325 13b9 37       		.uleb128 0x37
 4326 13ba 01       		.uleb128 0x1
 4327 13bb 50       		.byte	0x50
 4328 13bc 02       		.uleb128 0x2
 4329 13bd 74       		.byte	0x74
 4330 13be 00       		.sleb128 0
 4331 13bf 00       		.byte	0
 4332 13c0 00       		.byte	0
 4333 13c1 13       		.uleb128 0x13
 4334 13c2 04       		.byte	0x4
 4335 13c3 200B0000 		.4byte	0xb20
 4336 13c7 43       		.uleb128 0x43
 4337 13c8 F8030000 		.4byte	.LASF209
 4338 13cc 01       		.byte	0x1
ARM GAS  /tmp/ccbxFcRO.s 			page 95


 4339 13cd 5001     		.2byte	0x150
 4340 13cf 00000000 		.4byte	.LFB243
 4341 13d3 24000000 		.4byte	.LFE243-.LFB243
 4342 13d7 01       		.uleb128 0x1
 4343 13d8 9C       		.byte	0x9c
 4344 13d9 17140000 		.4byte	0x1417
 4345 13dd 32       		.uleb128 0x32
 4346 13de 26050000 		.4byte	.LASF210
 4347 13e2 01       		.byte	0x1
 4348 13e3 5001     		.2byte	0x150
 4349 13e5 17140000 		.4byte	0x1417
 4350 13e9 23070000 		.4byte	.LLST22
 4351 13ed 3A       		.uleb128 0x3a
 4352 13ee B8000000 		.4byte	.Ldebug_ranges0+0xb8
 4353 13f2 46       		.uleb128 0x46
 4354 13f3 6900     		.ascii	"i\000"
 4355 13f5 01       		.byte	0x1
 4356 13f6 5501     		.2byte	0x155
 4357 13f8 2C000000 		.4byte	0x2c
 4358 13fc 00       		.byte	0
 4359 13fd 47       		.uleb128 0x47
 4360 13fe 1A000000 		.4byte	.LVL38
 4361 1402 31190000 		.4byte	0x1931
 4362 1406 37       		.uleb128 0x37
 4363 1407 01       		.uleb128 0x1
 4364 1408 50       		.byte	0x50
 4365 1409 05       		.uleb128 0x5
 4366 140a 03       		.byte	0x3
 4367 140b 00000000 		.4byte	.LANCHOR5
 4368 140f 37       		.uleb128 0x37
 4369 1410 01       		.uleb128 0x1
 4370 1411 51       		.byte	0x51
 4371 1412 01       		.uleb128 0x1
 4372 1413 38       		.byte	0x38
 4373 1414 00       		.byte	0
 4374 1415 00       		.byte	0
 4375 1416 00       		.byte	0
 4376 1417 13       		.uleb128 0x13
 4377 1418 04       		.byte	0x4
 4378 1419 FB090000 		.4byte	0x9fb
 4379 141d 38       		.uleb128 0x38
 4380 141e D5050000 		.4byte	.LASF211
 4381 1422 01       		.byte	0x1
 4382 1423 4B01     		.2byte	0x14b
 4383 1425 F40A0000 		.4byte	0xaf4
 4384 1429 00000000 		.4byte	.LFB242
 4385 142d 0C000000 		.4byte	.LFE242-.LFB242
 4386 1431 01       		.uleb128 0x1
 4387 1432 9C       		.byte	0x9c
 4388 1433 2E       		.uleb128 0x2e
 4389 1434 CA030000 		.4byte	.LASF212
 4390 1438 01       		.byte	0x1
 4391 1439 4201     		.2byte	0x142
 4392 143b FF0A0000 		.4byte	0xaff
 4393 143f 00000000 		.4byte	.LFB241
 4394 1443 10000000 		.4byte	.LFE241-.LFB241
 4395 1447 01       		.uleb128 0x1
ARM GAS  /tmp/ccbxFcRO.s 			page 96


 4396 1448 9C       		.byte	0x9c
 4397 1449 6A140000 		.4byte	0x146a
 4398 144d 31       		.uleb128 0x31
 4399 144e 7000     		.ascii	"p\000"
 4400 1450 01       		.byte	0x1
 4401 1451 4201     		.2byte	0x142
 4402 1453 FF0A0000 		.4byte	0xaff
 4403 1457 44070000 		.4byte	.LLST21
 4404 145b 41       		.uleb128 0x41
 4405 145c 72657400 		.ascii	"ret\000"
 4406 1460 01       		.byte	0x1
 4407 1461 4401     		.2byte	0x144
 4408 1463 FF0A0000 		.4byte	0xaff
 4409 1467 01       		.uleb128 0x1
 4410 1468 52       		.byte	0x52
 4411 1469 00       		.byte	0
 4412 146a 38       		.uleb128 0x38
 4413 146b E4060000 		.4byte	.LASF213
 4414 146f 01       		.byte	0x1
 4415 1470 3A01     		.2byte	0x13a
 4416 1472 CD000000 		.4byte	0xcd
 4417 1476 00000000 		.4byte	.LFB240
 4418 147a 08000000 		.4byte	.LFE240-.LFB240
 4419 147e 01       		.uleb128 0x1
 4420 147f 9C       		.byte	0x9c
 4421 1480 48       		.uleb128 0x48
 4422 1481 430B0000 		.4byte	.LASF221
 4423 1485 01       		.byte	0x1
 4424 1486 1801     		.2byte	0x118
 4425 1488 29090000 		.4byte	0x929
 4426 148c 01       		.byte	0x1
 4427 148d 9E140000 		.4byte	0x149e
 4428 1491 49       		.uleb128 0x49
 4429 1492 E3040000 		.4byte	.LASF191
 4430 1496 01       		.byte	0x1
 4431 1497 1A01     		.2byte	0x11a
 4432 1499 A2000000 		.4byte	0xa2
 4433 149d 00       		.byte	0
 4434 149e 4A       		.uleb128 0x4a
 4435 149f 0A050000 		.4byte	.LASF216
 4436 14a3 01       		.byte	0x1
 4437 14a4 F2       		.byte	0xf2
 4438 14a5 29090000 		.4byte	0x929
 4439 14a9 00000000 		.4byte	.LFB238
 4440 14ad 60000000 		.4byte	.LFE238-.LFB238
 4441 14b1 01       		.uleb128 0x1
 4442 14b2 9C       		.byte	0x9c
 4443 14b3 50150000 		.4byte	0x1550
 4444 14b7 22       		.uleb128 0x22
 4445 14b8 090C0000 		.4byte	.LASF214
 4446 14bc 01       		.byte	0x1
 4447 14bd F4       		.byte	0xf4
 4448 14be A2000000 		.4byte	0xa2
 4449 14c2 02       		.uleb128 0x2
 4450 14c3 91       		.byte	0x91
 4451 14c4 75       		.sleb128 -11
 4452 14c5 4B       		.uleb128 0x4b
ARM GAS  /tmp/ccbxFcRO.s 			page 97


 4453 14c6 63726300 		.ascii	"crc\000"
 4454 14ca 01       		.byte	0x1
 4455 14cb F5       		.byte	0xf5
 4456 14cc B2000000 		.4byte	0xb2
 4457 14d0 02       		.uleb128 0x2
 4458 14d1 91       		.byte	0x91
 4459 14d2 76       		.sleb128 -10
 4460 14d3 4C       		.uleb128 0x4c
 4461 14d4 E0170000 		.4byte	0x17e0
 4462 14d8 08000000 		.4byte	.LBB88
 4463 14dc 70000000 		.4byte	.Ldebug_ranges0+0x70
 4464 14e0 01       		.byte	0x1
 4465 14e1 F9       		.byte	0xf9
 4466 14e2 13150000 		.4byte	0x1513
 4467 14e6 35       		.uleb128 0x35
 4468 14e7 FB170000 		.4byte	0x17fb
 4469 14eb 66070000 		.4byte	.LLST13
 4470 14ef 35       		.uleb128 0x35
 4471 14f0 F0170000 		.4byte	0x17f0
 4472 14f4 7A070000 		.4byte	.LLST14
 4473 14f8 36       		.uleb128 0x36
 4474 14f9 16000000 		.4byte	.LVL24
 4475 14fd 05190000 		.4byte	0x1905
 4476 1501 37       		.uleb128 0x37
 4477 1502 01       		.uleb128 0x1
 4478 1503 50       		.byte	0x50
 4479 1504 02       		.uleb128 0x2
 4480 1505 91       		.byte	0x91
 4481 1506 76       		.sleb128 -10
 4482 1507 37       		.uleb128 0x37
 4483 1508 01       		.uleb128 0x1
 4484 1509 51       		.byte	0x51
 4485 150a 01       		.uleb128 0x1
 4486 150b 30       		.byte	0x30
 4487 150c 37       		.uleb128 0x37
 4488 150d 01       		.uleb128 0x1
 4489 150e 52       		.byte	0x52
 4490 150f 01       		.uleb128 0x1
 4491 1510 32       		.byte	0x32
 4492 1511 00       		.byte	0
 4493 1512 00       		.byte	0
 4494 1513 3E       		.uleb128 0x3e
 4495 1514 07180000 		.4byte	0x1807
 4496 1518 16000000 		.4byte	.LBB92
 4497 151c 0C000000 		.4byte	.LBE92-.LBB92
 4498 1520 01       		.byte	0x1
 4499 1521 FB       		.byte	0xfb
 4500 1522 35       		.uleb128 0x35
 4501 1523 22180000 		.4byte	0x1822
 4502 1527 8F070000 		.4byte	.LLST15
 4503 152b 35       		.uleb128 0x35
 4504 152c 17180000 		.4byte	0x1817
 4505 1530 A3070000 		.4byte	.LLST16
 4506 1534 36       		.uleb128 0x36
 4507 1535 22000000 		.4byte	.LVL26
 4508 1539 05190000 		.4byte	0x1905
 4509 153d 37       		.uleb128 0x37
ARM GAS  /tmp/ccbxFcRO.s 			page 98


 4510 153e 01       		.uleb128 0x1
 4511 153f 50       		.byte	0x50
 4512 1540 01       		.uleb128 0x1
 4513 1541 30       		.byte	0x30
 4514 1542 37       		.uleb128 0x37
 4515 1543 01       		.uleb128 0x1
 4516 1544 51       		.byte	0x51
 4517 1545 02       		.uleb128 0x2
 4518 1546 91       		.byte	0x91
 4519 1547 75       		.sleb128 -11
 4520 1548 37       		.uleb128 0x37
 4521 1549 01       		.uleb128 0x1
 4522 154a 52       		.byte	0x52
 4523 154b 01       		.uleb128 0x1
 4524 154c 31       		.byte	0x31
 4525 154d 00       		.byte	0
 4526 154e 00       		.byte	0
 4527 154f 00       		.byte	0
 4528 1550 4D       		.uleb128 0x4d
 4529 1551 77050000 		.4byte	.LASF238
 4530 1555 01       		.byte	0x1
 4531 1556 DB       		.byte	0xdb
 4532 1557 00000000 		.4byte	.LFB237
 4533 155b 3C000000 		.4byte	.LFE237-.LFB237
 4534 155f 01       		.uleb128 0x1
 4535 1560 9C       		.byte	0x9c
 4536 1561 FE150000 		.4byte	0x15fe
 4537 1565 22       		.uleb128 0x22
 4538 1566 39030000 		.4byte	.LASF198
 4539 156a 01       		.byte	0x1
 4540 156b DD       		.byte	0xdd
 4541 156c A2000000 		.4byte	0xa2
 4542 1570 02       		.uleb128 0x2
 4543 1571 91       		.byte	0x91
 4544 1572 76       		.sleb128 -10
 4545 1573 22       		.uleb128 0x22
 4546 1574 55070000 		.4byte	.LASF215
 4547 1578 01       		.byte	0x1
 4548 1579 E3       		.byte	0xe3
 4549 157a A2000000 		.4byte	0xa2
 4550 157e 02       		.uleb128 0x2
 4551 157f 91       		.byte	0x91
 4552 1580 77       		.sleb128 -9
 4553 1581 4C       		.uleb128 0x4c
 4554 1582 E0170000 		.4byte	0x17e0
 4555 1586 06000000 		.4byte	.LBB64
 4556 158a 00000000 		.4byte	.Ldebug_ranges0+0
 4557 158e 01       		.byte	0x1
 4558 158f E1       		.byte	0xe1
 4559 1590 C1150000 		.4byte	0x15c1
 4560 1594 35       		.uleb128 0x35
 4561 1595 FB170000 		.4byte	0x17fb
 4562 1599 D0070000 		.4byte	.LLST0
 4563 159d 35       		.uleb128 0x35
 4564 159e F0170000 		.4byte	0x17f0
 4565 15a2 E4070000 		.4byte	.LLST1
 4566 15a6 36       		.uleb128 0x36
ARM GAS  /tmp/ccbxFcRO.s 			page 99


 4567 15a7 14000000 		.4byte	.LVL1
 4568 15ab 05190000 		.4byte	0x1905
 4569 15af 37       		.uleb128 0x37
 4570 15b0 01       		.uleb128 0x1
 4571 15b1 50       		.byte	0x50
 4572 15b2 02       		.uleb128 0x2
 4573 15b3 91       		.byte	0x91
 4574 15b4 76       		.sleb128 -10
 4575 15b5 37       		.uleb128 0x37
 4576 15b6 01       		.uleb128 0x1
 4577 15b7 51       		.byte	0x51
 4578 15b8 01       		.uleb128 0x1
 4579 15b9 30       		.byte	0x30
 4580 15ba 37       		.uleb128 0x37
 4581 15bb 01       		.uleb128 0x1
 4582 15bc 52       		.byte	0x52
 4583 15bd 01       		.uleb128 0x1
 4584 15be 31       		.byte	0x31
 4585 15bf 00       		.byte	0
 4586 15c0 00       		.byte	0
 4587 15c1 3C       		.uleb128 0x3c
 4588 15c2 E0170000 		.4byte	0x17e0
 4589 15c6 16000000 		.4byte	.LBB68
 4590 15ca 18000000 		.4byte	.Ldebug_ranges0+0x18
 4591 15ce 01       		.byte	0x1
 4592 15cf E9       		.byte	0xe9
 4593 15d0 35       		.uleb128 0x35
 4594 15d1 FB170000 		.4byte	0x17fb
 4595 15d5 F9070000 		.4byte	.LLST2
 4596 15d9 35       		.uleb128 0x35
 4597 15da F0170000 		.4byte	0x17f0
 4598 15de 0D080000 		.4byte	.LLST3
 4599 15e2 36       		.uleb128 0x36
 4600 15e3 30000000 		.4byte	.LVL3
 4601 15e7 05190000 		.4byte	0x1905
 4602 15eb 37       		.uleb128 0x37
 4603 15ec 01       		.uleb128 0x1
 4604 15ed 50       		.byte	0x50
 4605 15ee 02       		.uleb128 0x2
 4606 15ef 91       		.byte	0x91
 4607 15f0 77       		.sleb128 -9
 4608 15f1 37       		.uleb128 0x37
 4609 15f2 01       		.uleb128 0x1
 4610 15f3 51       		.byte	0x51
 4611 15f4 01       		.uleb128 0x1
 4612 15f5 30       		.byte	0x30
 4613 15f6 37       		.uleb128 0x37
 4614 15f7 01       		.uleb128 0x1
 4615 15f8 52       		.byte	0x52
 4616 15f9 01       		.uleb128 0x1
 4617 15fa 31       		.byte	0x31
 4618 15fb 00       		.byte	0
 4619 15fc 00       		.byte	0
 4620 15fd 00       		.byte	0
 4621 15fe 4E       		.uleb128 0x4e
 4622 15ff 65010000 		.4byte	.LASF226
 4623 1603 01       		.byte	0x1
ARM GAS  /tmp/ccbxFcRO.s 			page 100


 4624 1604 D1       		.byte	0xd1
 4625 1605 01       		.byte	0x1
 4626 1606 16160000 		.4byte	0x1616
 4627 160a 4F       		.uleb128 0x4f
 4628 160b 63726300 		.ascii	"crc\000"
 4629 160f 01       		.byte	0x1
 4630 1610 D3       		.byte	0xd3
 4631 1611 16160000 		.4byte	0x1616
 4632 1615 00       		.byte	0
 4633 1616 0D       		.uleb128 0xd
 4634 1617 A2000000 		.4byte	0xa2
 4635 161b 26160000 		.4byte	0x1626
 4636 161f 0E       		.uleb128 0xe
 4637 1620 E4000000 		.4byte	0xe4
 4638 1624 01       		.byte	0x1
 4639 1625 00       		.byte	0
 4640 1626 4A       		.uleb128 0x4a
 4641 1627 75060000 		.4byte	.LASF217
 4642 162b 01       		.byte	0x1
 4643 162c A3       		.byte	0xa3
 4644 162d 29090000 		.4byte	0x929
 4645 1631 00000000 		.4byte	.LFB235
 4646 1635 60000000 		.4byte	.LFE235-.LFB235
 4647 1639 01       		.uleb128 0x1
 4648 163a 9C       		.byte	0x9c
 4649 163b 97160000 		.4byte	0x1697
 4650 163f 50       		.uleb128 0x50
 4651 1640 6900     		.ascii	"i\000"
 4652 1642 01       		.byte	0x1
 4653 1643 A5       		.byte	0xa5
 4654 1644 CD000000 		.4byte	0xcd
 4655 1648 3A080000 		.4byte	.LLST10
 4656 164c 22       		.uleb128 0x22
 4657 164d 55070000 		.4byte	.LASF215
 4658 1651 01       		.byte	0x1
 4659 1652 A6       		.byte	0xa6
 4660 1653 A2000000 		.4byte	0xa2
 4661 1657 02       		.uleb128 0x2
 4662 1658 91       		.byte	0x91
 4663 1659 6F       		.sleb128 -17
 4664 165a 3E       		.uleb128 0x3e
 4665 165b 07180000 		.4byte	0x1807
 4666 165f 18000000 		.4byte	.LBB86
 4667 1663 0A000000 		.4byte	.LBE86-.LBB86
 4668 1667 01       		.byte	0x1
 4669 1668 BB       		.byte	0xbb
 4670 1669 35       		.uleb128 0x35
 4671 166a 22180000 		.4byte	0x1822
 4672 166e 93080000 		.4byte	.LLST11
 4673 1672 35       		.uleb128 0x35
 4674 1673 17180000 		.4byte	0x1817
 4675 1677 A7080000 		.4byte	.LLST12
 4676 167b 36       		.uleb128 0x36
 4677 167c 22000000 		.4byte	.LVL18
 4678 1680 05190000 		.4byte	0x1905
 4679 1684 37       		.uleb128 0x37
 4680 1685 01       		.uleb128 0x1
ARM GAS  /tmp/ccbxFcRO.s 			page 101


 4681 1686 50       		.byte	0x50
 4682 1687 01       		.uleb128 0x1
 4683 1688 30       		.byte	0x30
 4684 1689 37       		.uleb128 0x37
 4685 168a 01       		.uleb128 0x1
 4686 168b 51       		.byte	0x51
 4687 168c 02       		.uleb128 0x2
 4688 168d 75       		.byte	0x75
 4689 168e 00       		.sleb128 0
 4690 168f 37       		.uleb128 0x37
 4691 1690 01       		.uleb128 0x1
 4692 1691 52       		.byte	0x52
 4693 1692 01       		.uleb128 0x1
 4694 1693 31       		.byte	0x31
 4695 1694 00       		.byte	0
 4696 1695 00       		.byte	0
 4697 1696 00       		.byte	0
 4698 1697 4A       		.uleb128 0x4a
 4699 1698 EE070000 		.4byte	.LASF218
 4700 169c 01       		.byte	0x1
 4701 169d 84       		.byte	0x84
 4702 169e 29090000 		.4byte	0x929
 4703 16a2 00000000 		.4byte	.LFB234
 4704 16a6 54000000 		.4byte	.LFE234-.LFB234
 4705 16aa 01       		.uleb128 0x1
 4706 16ab 9C       		.byte	0x9c
 4707 16ac 94170000 		.4byte	0x1794
 4708 16b0 22       		.uleb128 0x22
 4709 16b1 F8090000 		.4byte	.LASF219
 4710 16b5 01       		.byte	0x1
 4711 16b6 86       		.byte	0x86
 4712 16b7 A2000000 		.4byte	0xa2
 4713 16bb 02       		.uleb128 0x2
 4714 16bc 91       		.byte	0x91
 4715 16bd 6F       		.sleb128 -17
 4716 16be 51       		.uleb128 0x51
 4717 16bf 620C0000 		.4byte	.LASF220
 4718 16c3 01       		.byte	0x1
 4719 16c4 92       		.byte	0x92
 4720 16c5 CD000000 		.4byte	0xcd
 4721 16c9 BC080000 		.4byte	.LLST4
 4722 16cd 4C       		.uleb128 0x4c
 4723 16ce 07180000 		.4byte	0x1807
 4724 16d2 06000000 		.4byte	.LBB74
 4725 16d6 38000000 		.4byte	.Ldebug_ranges0+0x38
 4726 16da 01       		.byte	0x1
 4727 16db 8B       		.byte	0x8b
 4728 16dc 0D170000 		.4byte	0x170d
 4729 16e0 35       		.uleb128 0x35
 4730 16e1 22180000 		.4byte	0x1822
 4731 16e5 18090000 		.4byte	.LLST5
 4732 16e9 35       		.uleb128 0x35
 4733 16ea 17180000 		.4byte	0x1817
 4734 16ee 2C090000 		.4byte	.LLST6
 4735 16f2 36       		.uleb128 0x36
 4736 16f3 18000000 		.4byte	.LVL5
 4737 16f7 05190000 		.4byte	0x1905
ARM GAS  /tmp/ccbxFcRO.s 			page 102


 4738 16fb 37       		.uleb128 0x37
 4739 16fc 01       		.uleb128 0x1
 4740 16fd 50       		.byte	0x50
 4741 16fe 01       		.uleb128 0x1
 4742 16ff 30       		.byte	0x30
 4743 1700 37       		.uleb128 0x37
 4744 1701 01       		.uleb128 0x1
 4745 1702 51       		.byte	0x51
 4746 1703 02       		.uleb128 0x2
 4747 1704 75       		.byte	0x75
 4748 1705 00       		.sleb128 0
 4749 1706 37       		.uleb128 0x37
 4750 1707 01       		.uleb128 0x1
 4751 1708 52       		.byte	0x52
 4752 1709 01       		.uleb128 0x1
 4753 170a 31       		.byte	0x31
 4754 170b 00       		.byte	0
 4755 170c 00       		.byte	0
 4756 170d 4C       		.uleb128 0x4c
 4757 170e 07180000 		.4byte	0x1807
 4758 1712 0C000000 		.4byte	.LBB77
 4759 1716 50000000 		.4byte	.Ldebug_ranges0+0x50
 4760 171a 01       		.byte	0x1
 4761 171b 95       		.byte	0x95
 4762 171c 5A170000 		.4byte	0x175a
 4763 1720 35       		.uleb128 0x35
 4764 1721 22180000 		.4byte	0x1822
 4765 1725 41090000 		.4byte	.LLST7
 4766 1729 35       		.uleb128 0x35
 4767 172a 17180000 		.4byte	0x1817
 4768 172e 55090000 		.4byte	.LLST8
 4769 1732 45       		.uleb128 0x45
 4770 1733 2C000000 		.4byte	.LVL7
 4771 1737 05190000 		.4byte	0x1905
 4772 173b 50170000 		.4byte	0x1750
 4773 173f 37       		.uleb128 0x37
 4774 1740 01       		.uleb128 0x1
 4775 1741 50       		.byte	0x50
 4776 1742 01       		.uleb128 0x1
 4777 1743 30       		.byte	0x30
 4778 1744 37       		.uleb128 0x37
 4779 1745 01       		.uleb128 0x1
 4780 1746 51       		.byte	0x51
 4781 1747 02       		.uleb128 0x2
 4782 1748 75       		.byte	0x75
 4783 1749 00       		.sleb128 0
 4784 174a 37       		.uleb128 0x37
 4785 174b 01       		.uleb128 0x1
 4786 174c 52       		.byte	0x52
 4787 174d 01       		.uleb128 0x1
 4788 174e 31       		.byte	0x31
 4789 174f 00       		.byte	0
 4790 1750 2F       		.uleb128 0x2f
 4791 1751 32000000 		.4byte	.LVL9
 4792 1755 05190000 		.4byte	0x1905
 4793 1759 00       		.byte	0
 4794 175a 3E       		.uleb128 0x3e
ARM GAS  /tmp/ccbxFcRO.s 			page 103


 4795 175b 07180000 		.4byte	0x1807
 4796 175f 18000000 		.4byte	.LBB82
 4797 1763 0A000000 		.4byte	.LBE82-.LBB82
 4798 1767 01       		.byte	0x1
 4799 1768 93       		.byte	0x93
 4800 1769 3F       		.uleb128 0x3f
 4801 176a 22180000 		.4byte	0x1822
 4802 176e 01       		.byte	0x1
 4803 176f 35       		.uleb128 0x35
 4804 1770 17180000 		.4byte	0x1817
 4805 1774 6A090000 		.4byte	.LLST9
 4806 1778 36       		.uleb128 0x36
 4807 1779 22000000 		.4byte	.LVL6
 4808 177d 05190000 		.4byte	0x1905
 4809 1781 37       		.uleb128 0x37
 4810 1782 01       		.uleb128 0x1
 4811 1783 50       		.byte	0x50
 4812 1784 01       		.uleb128 0x1
 4813 1785 30       		.byte	0x30
 4814 1786 37       		.uleb128 0x37
 4815 1787 01       		.uleb128 0x1
 4816 1788 51       		.byte	0x51
 4817 1789 02       		.uleb128 0x2
 4818 178a 75       		.byte	0x75
 4819 178b 00       		.sleb128 0
 4820 178c 37       		.uleb128 0x37
 4821 178d 01       		.uleb128 0x1
 4822 178e 52       		.byte	0x52
 4823 178f 01       		.uleb128 0x1
 4824 1790 31       		.byte	0x31
 4825 1791 00       		.byte	0
 4826 1792 00       		.byte	0
 4827 1793 00       		.byte	0
 4828 1794 52       		.uleb128 0x52
 4829 1795 64000000 		.4byte	.LASF222
 4830 1799 01       		.byte	0x1
 4831 179a 6C       		.byte	0x6c
 4832 179b A2000000 		.4byte	0xa2
 4833 179f 01       		.byte	0x1
 4834 17a0 DA170000 		.4byte	0x17da
 4835 17a4 53       		.uleb128 0x53
 4836 17a5 62756600 		.ascii	"buf\000"
 4837 17a9 01       		.byte	0x1
 4838 17aa 6C       		.byte	0x6c
 4839 17ab DA170000 		.4byte	0x17da
 4840 17af 54       		.uleb128 0x54
 4841 17b0 5C060000 		.4byte	.LASF223
 4842 17b4 01       		.byte	0x1
 4843 17b5 6C       		.byte	0x6c
 4844 17b6 A2000000 		.4byte	0xa2
 4845 17ba 4F       		.uleb128 0x4f
 4846 17bb 63726300 		.ascii	"crc\000"
 4847 17bf 01       		.byte	0x1
 4848 17c0 6E       		.byte	0x6e
 4849 17c1 A2000000 		.4byte	0xa2
 4850 17c5 55       		.uleb128 0x55
 4851 17c6 E3040000 		.4byte	.LASF191
ARM GAS  /tmp/ccbxFcRO.s 			page 104


 4852 17ca 01       		.byte	0x1
 4853 17cb 6E       		.byte	0x6e
 4854 17cc A2000000 		.4byte	0xa2
 4855 17d0 4F       		.uleb128 0x4f
 4856 17d1 6900     		.ascii	"i\000"
 4857 17d3 01       		.byte	0x1
 4858 17d4 6E       		.byte	0x6e
 4859 17d5 A2000000 		.4byte	0xa2
 4860 17d9 00       		.byte	0
 4861 17da 13       		.uleb128 0x13
 4862 17db 04       		.byte	0x4
 4863 17dc A2000000 		.4byte	0xa2
 4864 17e0 52       		.uleb128 0x52
 4865 17e1 75070000 		.4byte	.LASF224
 4866 17e5 02       		.byte	0x2
 4867 17e6 7C       		.byte	0x7c
 4868 17e7 E5090000 		.4byte	0x9e5
 4869 17eb 03       		.byte	0x3
 4870 17ec 07180000 		.4byte	0x1807
 4871 17f0 53       		.uleb128 0x53
 4872 17f1 62756600 		.ascii	"buf\000"
 4873 17f5 02       		.byte	0x2
 4874 17f6 7C       		.byte	0x7c
 4875 17f7 DA170000 		.4byte	0x17da
 4876 17fb 53       		.uleb128 0x53
 4877 17fc 6C656E00 		.ascii	"len\000"
 4878 1800 02       		.byte	0x2
 4879 1801 7C       		.byte	0x7c
 4880 1802 2C000000 		.4byte	0x2c
 4881 1806 00       		.byte	0
 4882 1807 52       		.uleb128 0x52
 4883 1808 0C060000 		.4byte	.LASF225
 4884 180c 02       		.byte	0x2
 4885 180d 76       		.byte	0x76
 4886 180e E5090000 		.4byte	0x9e5
 4887 1812 03       		.byte	0x3
 4888 1813 2E180000 		.4byte	0x182e
 4889 1817 53       		.uleb128 0x53
 4890 1818 62756600 		.ascii	"buf\000"
 4891 181c 02       		.byte	0x2
 4892 181d 76       		.byte	0x76
 4893 181e DA170000 		.4byte	0x17da
 4894 1822 53       		.uleb128 0x53
 4895 1823 6C656E00 		.ascii	"len\000"
 4896 1827 02       		.byte	0x2
 4897 1828 76       		.byte	0x76
 4898 1829 2C000000 		.4byte	0x2c
 4899 182d 00       		.byte	0
 4900 182e 4E       		.uleb128 0x4e
 4901 182f D30B0000 		.4byte	.LASF227
 4902 1833 03       		.byte	0x3
 4903 1834 4C       		.byte	0x4c
 4904 1835 03       		.byte	0x3
 4905 1836 4F180000 		.4byte	0x184f
 4906 183a 54       		.uleb128 0x54
 4907 183b 6B030000 		.4byte	.LASF228
 4908 183f 03       		.byte	0x3
ARM GAS  /tmp/ccbxFcRO.s 			page 105


 4909 1840 4C       		.byte	0x4c
 4910 1841 CD000000 		.4byte	0xcd
 4911 1845 4F       		.uleb128 0x4f
 4912 1846 6E00     		.ascii	"n\000"
 4913 1848 03       		.byte	0x3
 4914 1849 52       		.byte	0x52
 4915 184a CD000000 		.4byte	0xcd
 4916 184e 00       		.byte	0
 4917 184f 56       		.uleb128 0x56
 4918 1850 80140000 		.4byte	0x1480
 4919 1854 00000000 		.4byte	.LFB239
 4920 1858 64000000 		.4byte	.LFE239-.LFB239
 4921 185c 01       		.uleb128 0x1
 4922 185d 9C       		.byte	0x9c
 4923 185e 05190000 		.4byte	0x1905
 4924 1862 57       		.uleb128 0x57
 4925 1863 91140000 		.4byte	0x1491
 4926 1867 3D       		.uleb128 0x3d
 4927 1868 22000000 		.4byte	.LBB101
 4928 186c 2E000000 		.4byte	.LBE101-.LBB101
 4929 1870 3B       		.uleb128 0x3b
 4930 1871 62180000 		.4byte	0x1862
 4931 1875 02       		.uleb128 0x2
 4932 1876 91       		.byte	0x91
 4933 1877 77       		.sleb128 -9
 4934 1878 39       		.uleb128 0x39
 4935 1879 E0170000 		.4byte	0x17e0
 4936 187d 24000000 		.4byte	.LBB102
 4937 1881 88000000 		.4byte	.Ldebug_ranges0+0x88
 4938 1885 01       		.byte	0x1
 4939 1886 2601     		.2byte	0x126
 4940 1888 B9180000 		.4byte	0x18b9
 4941 188c 35       		.uleb128 0x35
 4942 188d FB170000 		.4byte	0x17fb
 4943 1891 8C090000 		.4byte	.LLST17
 4944 1895 35       		.uleb128 0x35
 4945 1896 F0170000 		.4byte	0x17f0
 4946 189a A0090000 		.4byte	.LLST18
 4947 189e 36       		.uleb128 0x36
 4948 189f 34000000 		.4byte	.LVL28
 4949 18a3 05190000 		.4byte	0x1905
 4950 18a7 37       		.uleb128 0x37
 4951 18a8 01       		.uleb128 0x1
 4952 18a9 50       		.byte	0x50
 4953 18aa 02       		.uleb128 0x2
 4954 18ab 74       		.byte	0x74
 4955 18ac 00       		.sleb128 0
 4956 18ad 37       		.uleb128 0x37
 4957 18ae 01       		.uleb128 0x1
 4958 18af 51       		.byte	0x51
 4959 18b0 01       		.uleb128 0x1
 4960 18b1 30       		.byte	0x30
 4961 18b2 37       		.uleb128 0x37
 4962 18b3 01       		.uleb128 0x1
 4963 18b4 52       		.byte	0x52
 4964 18b5 01       		.uleb128 0x1
 4965 18b6 31       		.byte	0x31
ARM GAS  /tmp/ccbxFcRO.s 			page 106


 4966 18b7 00       		.byte	0
 4967 18b8 00       		.byte	0
 4968 18b9 39       		.uleb128 0x39
 4969 18ba E0170000 		.4byte	0x17e0
 4970 18be 36000000 		.4byte	.LBB106
 4971 18c2 A0000000 		.4byte	.Ldebug_ranges0+0xa0
 4972 18c6 01       		.byte	0x1
 4973 18c7 2901     		.2byte	0x129
 4974 18c9 FA180000 		.4byte	0x18fa
 4975 18cd 35       		.uleb128 0x35
 4976 18ce FB170000 		.4byte	0x17fb
 4977 18d2 B5090000 		.4byte	.LLST19
 4978 18d6 35       		.uleb128 0x35
 4979 18d7 F0170000 		.4byte	0x17f0
 4980 18db C9090000 		.4byte	.LLST20
 4981 18df 36       		.uleb128 0x36
 4982 18e0 44000000 		.4byte	.LVL30
 4983 18e4 05190000 		.4byte	0x1905
 4984 18e8 37       		.uleb128 0x37
 4985 18e9 01       		.uleb128 0x1
 4986 18ea 50       		.byte	0x50
 4987 18eb 02       		.uleb128 0x2
 4988 18ec 74       		.byte	0x74
 4989 18ed 00       		.sleb128 0
 4990 18ee 37       		.uleb128 0x37
 4991 18ef 01       		.uleb128 0x1
 4992 18f0 51       		.byte	0x51
 4993 18f1 01       		.uleb128 0x1
 4994 18f2 30       		.byte	0x30
 4995 18f3 37       		.uleb128 0x37
 4996 18f4 01       		.uleb128 0x1
 4997 18f5 52       		.byte	0x52
 4998 18f6 01       		.uleb128 0x1
 4999 18f7 31       		.byte	0x31
 5000 18f8 00       		.byte	0
 5001 18f9 00       		.byte	0
 5002 18fa 2F       		.uleb128 0x2f
 5003 18fb 48000000 		.4byte	.LVL31
 5004 18ff 97160000 		.4byte	0x1697
 5005 1903 00       		.byte	0
 5006 1904 00       		.byte	0
 5007 1905 58       		.uleb128 0x58
 5008 1906 A9070000 		.4byte	.LASF229
 5009 190a A9070000 		.4byte	.LASF229
 5010 190e 02       		.byte	0x2
 5011 190f 73       		.byte	0x73
 5012 1910 58       		.uleb128 0x58
 5013 1911 E2000000 		.4byte	.LASF230
 5014 1915 E2000000 		.4byte	.LASF230
 5015 1919 02       		.byte	0x2
 5016 191a 68       		.byte	0x68
 5017 191b 58       		.uleb128 0x58
 5018 191c DF090000 		.4byte	.LASF231
 5019 1920 DF090000 		.4byte	.LASF231
 5020 1924 02       		.byte	0x2
 5021 1925 53       		.byte	0x53
 5022 1926 58       		.uleb128 0x58
ARM GAS  /tmp/ccbxFcRO.s 			page 107


 5023 1927 62070000 		.4byte	.LASF232
 5024 192b 62070000 		.4byte	.LASF232
 5025 192f 02       		.byte	0x2
 5026 1930 5D       		.byte	0x5d
 5027 1931 58       		.uleb128 0x58
 5028 1932 98070000 		.4byte	.LASF233
 5029 1936 98070000 		.4byte	.LASF233
 5030 193a 02       		.byte	0x2
 5031 193b 49       		.byte	0x49
 5032 193c 00       		.byte	0
 5033              		.section	.debug_abbrev,"",%progbits
 5034              	.Ldebug_abbrev0:
 5035 0000 01       		.uleb128 0x1
 5036 0001 11       		.uleb128 0x11
 5037 0002 01       		.byte	0x1
 5038 0003 25       		.uleb128 0x25
 5039 0004 0E       		.uleb128 0xe
 5040 0005 13       		.uleb128 0x13
 5041 0006 0B       		.uleb128 0xb
 5042 0007 03       		.uleb128 0x3
 5043 0008 0E       		.uleb128 0xe
 5044 0009 1B       		.uleb128 0x1b
 5045 000a 0E       		.uleb128 0xe
 5046 000b 55       		.uleb128 0x55
 5047 000c 17       		.uleb128 0x17
 5048 000d 11       		.uleb128 0x11
 5049 000e 01       		.uleb128 0x1
 5050 000f 10       		.uleb128 0x10
 5051 0010 17       		.uleb128 0x17
 5052 0011 00       		.byte	0
 5053 0012 00       		.byte	0
 5054 0013 02       		.uleb128 0x2
 5055 0014 24       		.uleb128 0x24
 5056 0015 00       		.byte	0
 5057 0016 0B       		.uleb128 0xb
 5058 0017 0B       		.uleb128 0xb
 5059 0018 3E       		.uleb128 0x3e
 5060 0019 0B       		.uleb128 0xb
 5061 001a 03       		.uleb128 0x3
 5062 001b 08       		.uleb128 0x8
 5063 001c 00       		.byte	0
 5064 001d 00       		.byte	0
 5065 001e 03       		.uleb128 0x3
 5066 001f 16       		.uleb128 0x16
 5067 0020 00       		.byte	0
 5068 0021 03       		.uleb128 0x3
 5069 0022 0E       		.uleb128 0xe
 5070 0023 3A       		.uleb128 0x3a
 5071 0024 0B       		.uleb128 0xb
 5072 0025 3B       		.uleb128 0x3b
 5073 0026 0B       		.uleb128 0xb
 5074 0027 49       		.uleb128 0x49
 5075 0028 13       		.uleb128 0x13
 5076 0029 00       		.byte	0
 5077 002a 00       		.byte	0
 5078 002b 04       		.uleb128 0x4
 5079 002c 24       		.uleb128 0x24
ARM GAS  /tmp/ccbxFcRO.s 			page 108


 5080 002d 00       		.byte	0
 5081 002e 0B       		.uleb128 0xb
 5082 002f 0B       		.uleb128 0xb
 5083 0030 3E       		.uleb128 0x3e
 5084 0031 0B       		.uleb128 0xb
 5085 0032 03       		.uleb128 0x3
 5086 0033 0E       		.uleb128 0xe
 5087 0034 00       		.byte	0
 5088 0035 00       		.byte	0
 5089 0036 05       		.uleb128 0x5
 5090 0037 26       		.uleb128 0x26
 5091 0038 00       		.byte	0
 5092 0039 49       		.uleb128 0x49
 5093 003a 13       		.uleb128 0x13
 5094 003b 00       		.byte	0
 5095 003c 00       		.byte	0
 5096 003d 06       		.uleb128 0x6
 5097 003e 35       		.uleb128 0x35
 5098 003f 00       		.byte	0
 5099 0040 49       		.uleb128 0x49
 5100 0041 13       		.uleb128 0x13
 5101 0042 00       		.byte	0
 5102 0043 00       		.byte	0
 5103 0044 07       		.uleb128 0x7
 5104 0045 0F       		.uleb128 0xf
 5105 0046 00       		.byte	0
 5106 0047 0B       		.uleb128 0xb
 5107 0048 0B       		.uleb128 0xb
 5108 0049 00       		.byte	0
 5109 004a 00       		.byte	0
 5110 004b 08       		.uleb128 0x8
 5111 004c 34       		.uleb128 0x34
 5112 004d 00       		.byte	0
 5113 004e 03       		.uleb128 0x3
 5114 004f 0E       		.uleb128 0xe
 5115 0050 3A       		.uleb128 0x3a
 5116 0051 0B       		.uleb128 0xb
 5117 0052 3B       		.uleb128 0x3b
 5118 0053 05       		.uleb128 0x5
 5119 0054 49       		.uleb128 0x49
 5120 0055 13       		.uleb128 0x13
 5121 0056 3F       		.uleb128 0x3f
 5122 0057 19       		.uleb128 0x19
 5123 0058 3C       		.uleb128 0x3c
 5124 0059 19       		.uleb128 0x19
 5125 005a 00       		.byte	0
 5126 005b 00       		.byte	0
 5127 005c 09       		.uleb128 0x9
 5128 005d 34       		.uleb128 0x34
 5129 005e 00       		.byte	0
 5130 005f 03       		.uleb128 0x3
 5131 0060 0E       		.uleb128 0xe
 5132 0061 3A       		.uleb128 0x3a
 5133 0062 0B       		.uleb128 0xb
 5134 0063 3B       		.uleb128 0x3b
 5135 0064 0B       		.uleb128 0xb
 5136 0065 49       		.uleb128 0x49
ARM GAS  /tmp/ccbxFcRO.s 			page 109


 5137 0066 13       		.uleb128 0x13
 5138 0067 3F       		.uleb128 0x3f
 5139 0068 19       		.uleb128 0x19
 5140 0069 3C       		.uleb128 0x3c
 5141 006a 19       		.uleb128 0x19
 5142 006b 00       		.byte	0
 5143 006c 00       		.byte	0
 5144 006d 0A       		.uleb128 0xa
 5145 006e 16       		.uleb128 0x16
 5146 006f 00       		.byte	0
 5147 0070 03       		.uleb128 0x3
 5148 0071 0E       		.uleb128 0xe
 5149 0072 3A       		.uleb128 0x3a
 5150 0073 0B       		.uleb128 0xb
 5151 0074 3B       		.uleb128 0x3b
 5152 0075 05       		.uleb128 0x5
 5153 0076 49       		.uleb128 0x49
 5154 0077 13       		.uleb128 0x13
 5155 0078 00       		.byte	0
 5156 0079 00       		.byte	0
 5157 007a 0B       		.uleb128 0xb
 5158 007b 17       		.uleb128 0x17
 5159 007c 01       		.byte	0x1
 5160 007d 0B       		.uleb128 0xb
 5161 007e 0B       		.uleb128 0xb
 5162 007f 3A       		.uleb128 0x3a
 5163 0080 0B       		.uleb128 0xb
 5164 0081 3B       		.uleb128 0x3b
 5165 0082 0B       		.uleb128 0xb
 5166 0083 01       		.uleb128 0x1
 5167 0084 13       		.uleb128 0x13
 5168 0085 00       		.byte	0
 5169 0086 00       		.byte	0
 5170 0087 0C       		.uleb128 0xc
 5171 0088 0D       		.uleb128 0xd
 5172 0089 00       		.byte	0
 5173 008a 03       		.uleb128 0x3
 5174 008b 0E       		.uleb128 0xe
 5175 008c 3A       		.uleb128 0x3a
 5176 008d 0B       		.uleb128 0xb
 5177 008e 3B       		.uleb128 0x3b
 5178 008f 0B       		.uleb128 0xb
 5179 0090 49       		.uleb128 0x49
 5180 0091 13       		.uleb128 0x13
 5181 0092 00       		.byte	0
 5182 0093 00       		.byte	0
 5183 0094 0D       		.uleb128 0xd
 5184 0095 01       		.uleb128 0x1
 5185 0096 01       		.byte	0x1
 5186 0097 49       		.uleb128 0x49
 5187 0098 13       		.uleb128 0x13
 5188 0099 01       		.uleb128 0x1
 5189 009a 13       		.uleb128 0x13
 5190 009b 00       		.byte	0
 5191 009c 00       		.byte	0
 5192 009d 0E       		.uleb128 0xe
 5193 009e 21       		.uleb128 0x21
ARM GAS  /tmp/ccbxFcRO.s 			page 110


 5194 009f 00       		.byte	0
 5195 00a0 49       		.uleb128 0x49
 5196 00a1 13       		.uleb128 0x13
 5197 00a2 2F       		.uleb128 0x2f
 5198 00a3 0B       		.uleb128 0xb
 5199 00a4 00       		.byte	0
 5200 00a5 00       		.byte	0
 5201 00a6 0F       		.uleb128 0xf
 5202 00a7 13       		.uleb128 0x13
 5203 00a8 01       		.byte	0x1
 5204 00a9 0B       		.uleb128 0xb
 5205 00aa 0B       		.uleb128 0xb
 5206 00ab 3A       		.uleb128 0x3a
 5207 00ac 0B       		.uleb128 0xb
 5208 00ad 3B       		.uleb128 0x3b
 5209 00ae 0B       		.uleb128 0xb
 5210 00af 01       		.uleb128 0x1
 5211 00b0 13       		.uleb128 0x13
 5212 00b1 00       		.byte	0
 5213 00b2 00       		.byte	0
 5214 00b3 10       		.uleb128 0x10
 5215 00b4 0D       		.uleb128 0xd
 5216 00b5 00       		.byte	0
 5217 00b6 03       		.uleb128 0x3
 5218 00b7 0E       		.uleb128 0xe
 5219 00b8 3A       		.uleb128 0x3a
 5220 00b9 0B       		.uleb128 0xb
 5221 00ba 3B       		.uleb128 0x3b
 5222 00bb 0B       		.uleb128 0xb
 5223 00bc 49       		.uleb128 0x49
 5224 00bd 13       		.uleb128 0x13
 5225 00be 38       		.uleb128 0x38
 5226 00bf 0B       		.uleb128 0xb
 5227 00c0 00       		.byte	0
 5228 00c1 00       		.byte	0
 5229 00c2 11       		.uleb128 0x11
 5230 00c3 13       		.uleb128 0x13
 5231 00c4 01       		.byte	0x1
 5232 00c5 03       		.uleb128 0x3
 5233 00c6 0E       		.uleb128 0xe
 5234 00c7 0B       		.uleb128 0xb
 5235 00c8 0B       		.uleb128 0xb
 5236 00c9 3A       		.uleb128 0x3a
 5237 00ca 0B       		.uleb128 0xb
 5238 00cb 3B       		.uleb128 0x3b
 5239 00cc 0B       		.uleb128 0xb
 5240 00cd 01       		.uleb128 0x1
 5241 00ce 13       		.uleb128 0x13
 5242 00cf 00       		.byte	0
 5243 00d0 00       		.byte	0
 5244 00d1 12       		.uleb128 0x12
 5245 00d2 0D       		.uleb128 0xd
 5246 00d3 00       		.byte	0
 5247 00d4 03       		.uleb128 0x3
 5248 00d5 08       		.uleb128 0x8
 5249 00d6 3A       		.uleb128 0x3a
 5250 00d7 0B       		.uleb128 0xb
ARM GAS  /tmp/ccbxFcRO.s 			page 111


 5251 00d8 3B       		.uleb128 0x3b
 5252 00d9 0B       		.uleb128 0xb
 5253 00da 49       		.uleb128 0x49
 5254 00db 13       		.uleb128 0x13
 5255 00dc 38       		.uleb128 0x38
 5256 00dd 0B       		.uleb128 0xb
 5257 00de 00       		.byte	0
 5258 00df 00       		.byte	0
 5259 00e0 13       		.uleb128 0x13
 5260 00e1 0F       		.uleb128 0xf
 5261 00e2 00       		.byte	0
 5262 00e3 0B       		.uleb128 0xb
 5263 00e4 0B       		.uleb128 0xb
 5264 00e5 49       		.uleb128 0x49
 5265 00e6 13       		.uleb128 0x13
 5266 00e7 00       		.byte	0
 5267 00e8 00       		.byte	0
 5268 00e9 14       		.uleb128 0x14
 5269 00ea 13       		.uleb128 0x13
 5270 00eb 01       		.byte	0x1
 5271 00ec 03       		.uleb128 0x3
 5272 00ed 0E       		.uleb128 0xe
 5273 00ee 0B       		.uleb128 0xb
 5274 00ef 05       		.uleb128 0x5
 5275 00f0 3A       		.uleb128 0x3a
 5276 00f1 0B       		.uleb128 0xb
 5277 00f2 3B       		.uleb128 0x3b
 5278 00f3 0B       		.uleb128 0xb
 5279 00f4 01       		.uleb128 0x1
 5280 00f5 13       		.uleb128 0x13
 5281 00f6 00       		.byte	0
 5282 00f7 00       		.byte	0
 5283 00f8 15       		.uleb128 0x15
 5284 00f9 0D       		.uleb128 0xd
 5285 00fa 00       		.byte	0
 5286 00fb 03       		.uleb128 0x3
 5287 00fc 0E       		.uleb128 0xe
 5288 00fd 3A       		.uleb128 0x3a
 5289 00fe 0B       		.uleb128 0xb
 5290 00ff 3B       		.uleb128 0x3b
 5291 0100 0B       		.uleb128 0xb
 5292 0101 49       		.uleb128 0x49
 5293 0102 13       		.uleb128 0x13
 5294 0103 38       		.uleb128 0x38
 5295 0104 05       		.uleb128 0x5
 5296 0105 00       		.byte	0
 5297 0106 00       		.byte	0
 5298 0107 16       		.uleb128 0x16
 5299 0108 15       		.uleb128 0x15
 5300 0109 00       		.byte	0
 5301 010a 27       		.uleb128 0x27
 5302 010b 19       		.uleb128 0x19
 5303 010c 00       		.byte	0
 5304 010d 00       		.byte	0
 5305 010e 17       		.uleb128 0x17
 5306 010f 15       		.uleb128 0x15
 5307 0110 01       		.byte	0x1
ARM GAS  /tmp/ccbxFcRO.s 			page 112


 5308 0111 27       		.uleb128 0x27
 5309 0112 19       		.uleb128 0x19
 5310 0113 49       		.uleb128 0x49
 5311 0114 13       		.uleb128 0x13
 5312 0115 01       		.uleb128 0x1
 5313 0116 13       		.uleb128 0x13
 5314 0117 00       		.byte	0
 5315 0118 00       		.byte	0
 5316 0119 18       		.uleb128 0x18
 5317 011a 05       		.uleb128 0x5
 5318 011b 00       		.byte	0
 5319 011c 49       		.uleb128 0x49
 5320 011d 13       		.uleb128 0x13
 5321 011e 00       		.byte	0
 5322 011f 00       		.byte	0
 5323 0120 19       		.uleb128 0x19
 5324 0121 13       		.uleb128 0x13
 5325 0122 01       		.byte	0x1
 5326 0123 03       		.uleb128 0x3
 5327 0124 0E       		.uleb128 0xe
 5328 0125 0B       		.uleb128 0xb
 5329 0126 05       		.uleb128 0x5
 5330 0127 3A       		.uleb128 0x3a
 5331 0128 0B       		.uleb128 0xb
 5332 0129 3B       		.uleb128 0x3b
 5333 012a 05       		.uleb128 0x5
 5334 012b 01       		.uleb128 0x1
 5335 012c 13       		.uleb128 0x13
 5336 012d 00       		.byte	0
 5337 012e 00       		.byte	0
 5338 012f 1A       		.uleb128 0x1a
 5339 0130 0D       		.uleb128 0xd
 5340 0131 00       		.byte	0
 5341 0132 03       		.uleb128 0x3
 5342 0133 0E       		.uleb128 0xe
 5343 0134 3A       		.uleb128 0x3a
 5344 0135 0B       		.uleb128 0xb
 5345 0136 3B       		.uleb128 0x3b
 5346 0137 05       		.uleb128 0x5
 5347 0138 49       		.uleb128 0x49
 5348 0139 13       		.uleb128 0x13
 5349 013a 38       		.uleb128 0x38
 5350 013b 0B       		.uleb128 0xb
 5351 013c 00       		.byte	0
 5352 013d 00       		.byte	0
 5353 013e 1B       		.uleb128 0x1b
 5354 013f 0D       		.uleb128 0xd
 5355 0140 00       		.byte	0
 5356 0141 03       		.uleb128 0x3
 5357 0142 0E       		.uleb128 0xe
 5358 0143 3A       		.uleb128 0x3a
 5359 0144 0B       		.uleb128 0xb
 5360 0145 3B       		.uleb128 0x3b
 5361 0146 05       		.uleb128 0x5
 5362 0147 49       		.uleb128 0x49
 5363 0148 13       		.uleb128 0x13
 5364 0149 38       		.uleb128 0x38
ARM GAS  /tmp/ccbxFcRO.s 			page 113


 5365 014a 05       		.uleb128 0x5
 5366 014b 00       		.byte	0
 5367 014c 00       		.byte	0
 5368 014d 1C       		.uleb128 0x1c
 5369 014e 13       		.uleb128 0x13
 5370 014f 01       		.byte	0x1
 5371 0150 03       		.uleb128 0x3
 5372 0151 0E       		.uleb128 0xe
 5373 0152 0B       		.uleb128 0xb
 5374 0153 0B       		.uleb128 0xb
 5375 0154 3A       		.uleb128 0x3a
 5376 0155 0B       		.uleb128 0xb
 5377 0156 3B       		.uleb128 0x3b
 5378 0157 05       		.uleb128 0x5
 5379 0158 01       		.uleb128 0x1
 5380 0159 13       		.uleb128 0x13
 5381 015a 00       		.byte	0
 5382 015b 00       		.byte	0
 5383 015c 1D       		.uleb128 0x1d
 5384 015d 13       		.uleb128 0x13
 5385 015e 01       		.byte	0x1
 5386 015f 0B       		.uleb128 0xb
 5387 0160 0B       		.uleb128 0xb
 5388 0161 3A       		.uleb128 0x3a
 5389 0162 0B       		.uleb128 0xb
 5390 0163 3B       		.uleb128 0x3b
 5391 0164 05       		.uleb128 0x5
 5392 0165 01       		.uleb128 0x1
 5393 0166 13       		.uleb128 0x13
 5394 0167 00       		.byte	0
 5395 0168 00       		.byte	0
 5396 0169 1E       		.uleb128 0x1e
 5397 016a 17       		.uleb128 0x17
 5398 016b 01       		.byte	0x1
 5399 016c 0B       		.uleb128 0xb
 5400 016d 0B       		.uleb128 0xb
 5401 016e 3A       		.uleb128 0x3a
 5402 016f 0B       		.uleb128 0xb
 5403 0170 3B       		.uleb128 0x3b
 5404 0171 05       		.uleb128 0x5
 5405 0172 01       		.uleb128 0x1
 5406 0173 13       		.uleb128 0x13
 5407 0174 00       		.byte	0
 5408 0175 00       		.byte	0
 5409 0176 1F       		.uleb128 0x1f
 5410 0177 0D       		.uleb128 0xd
 5411 0178 00       		.byte	0
 5412 0179 03       		.uleb128 0x3
 5413 017a 0E       		.uleb128 0xe
 5414 017b 3A       		.uleb128 0x3a
 5415 017c 0B       		.uleb128 0xb
 5416 017d 3B       		.uleb128 0x3b
 5417 017e 05       		.uleb128 0x5
 5418 017f 49       		.uleb128 0x49
 5419 0180 13       		.uleb128 0x13
 5420 0181 00       		.byte	0
 5421 0182 00       		.byte	0
ARM GAS  /tmp/ccbxFcRO.s 			page 114


 5422 0183 20       		.uleb128 0x20
 5423 0184 15       		.uleb128 0x15
 5424 0185 01       		.byte	0x1
 5425 0186 27       		.uleb128 0x27
 5426 0187 19       		.uleb128 0x19
 5427 0188 01       		.uleb128 0x1
 5428 0189 13       		.uleb128 0x13
 5429 018a 00       		.byte	0
 5430 018b 00       		.byte	0
 5431 018c 21       		.uleb128 0x21
 5432 018d 26       		.uleb128 0x26
 5433 018e 00       		.byte	0
 5434 018f 00       		.byte	0
 5435 0190 00       		.byte	0
 5436 0191 22       		.uleb128 0x22
 5437 0192 34       		.uleb128 0x34
 5438 0193 00       		.byte	0
 5439 0194 03       		.uleb128 0x3
 5440 0195 0E       		.uleb128 0xe
 5441 0196 3A       		.uleb128 0x3a
 5442 0197 0B       		.uleb128 0xb
 5443 0198 3B       		.uleb128 0x3b
 5444 0199 0B       		.uleb128 0xb
 5445 019a 49       		.uleb128 0x49
 5446 019b 13       		.uleb128 0x13
 5447 019c 02       		.uleb128 0x2
 5448 019d 18       		.uleb128 0x18
 5449 019e 00       		.byte	0
 5450 019f 00       		.byte	0
 5451 01a0 23       		.uleb128 0x23
 5452 01a1 16       		.uleb128 0x16
 5453 01a2 00       		.byte	0
 5454 01a3 03       		.uleb128 0x3
 5455 01a4 08       		.uleb128 0x8
 5456 01a5 3A       		.uleb128 0x3a
 5457 01a6 0B       		.uleb128 0xb
 5458 01a7 3B       		.uleb128 0x3b
 5459 01a8 05       		.uleb128 0x5
 5460 01a9 49       		.uleb128 0x49
 5461 01aa 13       		.uleb128 0x13
 5462 01ab 00       		.byte	0
 5463 01ac 00       		.byte	0
 5464 01ad 24       		.uleb128 0x24
 5465 01ae 04       		.uleb128 0x4
 5466 01af 01       		.byte	0x1
 5467 01b0 03       		.uleb128 0x3
 5468 01b1 0E       		.uleb128 0xe
 5469 01b2 0B       		.uleb128 0xb
 5470 01b3 0B       		.uleb128 0xb
 5471 01b4 49       		.uleb128 0x49
 5472 01b5 13       		.uleb128 0x13
 5473 01b6 3A       		.uleb128 0x3a
 5474 01b7 0B       		.uleb128 0xb
 5475 01b8 3B       		.uleb128 0x3b
 5476 01b9 05       		.uleb128 0x5
 5477 01ba 01       		.uleb128 0x1
 5478 01bb 13       		.uleb128 0x13
ARM GAS  /tmp/ccbxFcRO.s 			page 115


 5479 01bc 00       		.byte	0
 5480 01bd 00       		.byte	0
 5481 01be 25       		.uleb128 0x25
 5482 01bf 28       		.uleb128 0x28
 5483 01c0 00       		.byte	0
 5484 01c1 03       		.uleb128 0x3
 5485 01c2 0E       		.uleb128 0xe
 5486 01c3 1C       		.uleb128 0x1c
 5487 01c4 0D       		.uleb128 0xd
 5488 01c5 00       		.byte	0
 5489 01c6 00       		.byte	0
 5490 01c7 26       		.uleb128 0x26
 5491 01c8 28       		.uleb128 0x28
 5492 01c9 00       		.byte	0
 5493 01ca 03       		.uleb128 0x3
 5494 01cb 0E       		.uleb128 0xe
 5495 01cc 1C       		.uleb128 0x1c
 5496 01cd 0B       		.uleb128 0xb
 5497 01ce 00       		.byte	0
 5498 01cf 00       		.byte	0
 5499 01d0 27       		.uleb128 0x27
 5500 01d1 04       		.uleb128 0x4
 5501 01d2 01       		.byte	0x1
 5502 01d3 0B       		.uleb128 0xb
 5503 01d4 0B       		.uleb128 0xb
 5504 01d5 49       		.uleb128 0x49
 5505 01d6 13       		.uleb128 0x13
 5506 01d7 3A       		.uleb128 0x3a
 5507 01d8 0B       		.uleb128 0xb
 5508 01d9 3B       		.uleb128 0x3b
 5509 01da 0B       		.uleb128 0xb
 5510 01db 01       		.uleb128 0x1
 5511 01dc 13       		.uleb128 0x13
 5512 01dd 00       		.byte	0
 5513 01de 00       		.byte	0
 5514 01df 28       		.uleb128 0x28
 5515 01e0 16       		.uleb128 0x16
 5516 01e1 00       		.byte	0
 5517 01e2 03       		.uleb128 0x3
 5518 01e3 08       		.uleb128 0x8
 5519 01e4 3A       		.uleb128 0x3a
 5520 01e5 0B       		.uleb128 0xb
 5521 01e6 3B       		.uleb128 0x3b
 5522 01e7 0B       		.uleb128 0xb
 5523 01e8 49       		.uleb128 0x49
 5524 01e9 13       		.uleb128 0x13
 5525 01ea 00       		.byte	0
 5526 01eb 00       		.byte	0
 5527 01ec 29       		.uleb128 0x29
 5528 01ed 34       		.uleb128 0x34
 5529 01ee 00       		.byte	0
 5530 01ef 03       		.uleb128 0x3
 5531 01f0 0E       		.uleb128 0xe
 5532 01f1 3A       		.uleb128 0x3a
 5533 01f2 0B       		.uleb128 0xb
 5534 01f3 3B       		.uleb128 0x3b
 5535 01f4 0B       		.uleb128 0xb
ARM GAS  /tmp/ccbxFcRO.s 			page 116


 5536 01f5 49       		.uleb128 0x49
 5537 01f6 13       		.uleb128 0x13
 5538 01f7 1C       		.uleb128 0x1c
 5539 01f8 0D       		.uleb128 0xd
 5540 01f9 00       		.byte	0
 5541 01fa 00       		.byte	0
 5542 01fb 2A       		.uleb128 0x2a
 5543 01fc 34       		.uleb128 0x34
 5544 01fd 00       		.byte	0
 5545 01fe 03       		.uleb128 0x3
 5546 01ff 0E       		.uleb128 0xe
 5547 0200 3A       		.uleb128 0x3a
 5548 0201 0B       		.uleb128 0xb
 5549 0202 3B       		.uleb128 0x3b
 5550 0203 0B       		.uleb128 0xb
 5551 0204 49       		.uleb128 0x49
 5552 0205 13       		.uleb128 0x13
 5553 0206 1C       		.uleb128 0x1c
 5554 0207 0B       		.uleb128 0xb
 5555 0208 00       		.byte	0
 5556 0209 00       		.byte	0
 5557 020a 2B       		.uleb128 0x2b
 5558 020b 34       		.uleb128 0x34
 5559 020c 00       		.byte	0
 5560 020d 03       		.uleb128 0x3
 5561 020e 0E       		.uleb128 0xe
 5562 020f 3A       		.uleb128 0x3a
 5563 0210 0B       		.uleb128 0xb
 5564 0211 3B       		.uleb128 0x3b
 5565 0212 0B       		.uleb128 0xb
 5566 0213 49       		.uleb128 0x49
 5567 0214 13       		.uleb128 0x13
 5568 0215 1C       		.uleb128 0x1c
 5569 0216 06       		.uleb128 0x6
 5570 0217 00       		.byte	0
 5571 0218 00       		.byte	0
 5572 0219 2C       		.uleb128 0x2c
 5573 021a 34       		.uleb128 0x34
 5574 021b 00       		.byte	0
 5575 021c 03       		.uleb128 0x3
 5576 021d 0E       		.uleb128 0xe
 5577 021e 3A       		.uleb128 0x3a
 5578 021f 0B       		.uleb128 0xb
 5579 0220 3B       		.uleb128 0x3b
 5580 0221 0B       		.uleb128 0xb
 5581 0222 49       		.uleb128 0x49
 5582 0223 13       		.uleb128 0x13
 5583 0224 1C       		.uleb128 0x1c
 5584 0225 05       		.uleb128 0x5
 5585 0226 00       		.byte	0
 5586 0227 00       		.byte	0
 5587 0228 2D       		.uleb128 0x2d
 5588 0229 34       		.uleb128 0x34
 5589 022a 00       		.byte	0
 5590 022b 03       		.uleb128 0x3
 5591 022c 0E       		.uleb128 0xe
 5592 022d 3A       		.uleb128 0x3a
ARM GAS  /tmp/ccbxFcRO.s 			page 117


 5593 022e 0B       		.uleb128 0xb
 5594 022f 3B       		.uleb128 0x3b
 5595 0230 05       		.uleb128 0x5
 5596 0231 49       		.uleb128 0x49
 5597 0232 13       		.uleb128 0x13
 5598 0233 02       		.uleb128 0x2
 5599 0234 18       		.uleb128 0x18
 5600 0235 00       		.byte	0
 5601 0236 00       		.byte	0
 5602 0237 2E       		.uleb128 0x2e
 5603 0238 2E       		.uleb128 0x2e
 5604 0239 01       		.byte	0x1
 5605 023a 3F       		.uleb128 0x3f
 5606 023b 19       		.uleb128 0x19
 5607 023c 03       		.uleb128 0x3
 5608 023d 0E       		.uleb128 0xe
 5609 023e 3A       		.uleb128 0x3a
 5610 023f 0B       		.uleb128 0xb
 5611 0240 3B       		.uleb128 0x3b
 5612 0241 05       		.uleb128 0x5
 5613 0242 27       		.uleb128 0x27
 5614 0243 19       		.uleb128 0x19
 5615 0244 49       		.uleb128 0x49
 5616 0245 13       		.uleb128 0x13
 5617 0246 11       		.uleb128 0x11
 5618 0247 01       		.uleb128 0x1
 5619 0248 12       		.uleb128 0x12
 5620 0249 06       		.uleb128 0x6
 5621 024a 40       		.uleb128 0x40
 5622 024b 18       		.uleb128 0x18
 5623 024c 9742     		.uleb128 0x2117
 5624 024e 19       		.uleb128 0x19
 5625 024f 01       		.uleb128 0x1
 5626 0250 13       		.uleb128 0x13
 5627 0251 00       		.byte	0
 5628 0252 00       		.byte	0
 5629 0253 2F       		.uleb128 0x2f
 5630 0254 898201   		.uleb128 0x4109
 5631 0257 00       		.byte	0
 5632 0258 11       		.uleb128 0x11
 5633 0259 01       		.uleb128 0x1
 5634 025a 31       		.uleb128 0x31
 5635 025b 13       		.uleb128 0x13
 5636 025c 00       		.byte	0
 5637 025d 00       		.byte	0
 5638 025e 30       		.uleb128 0x30
 5639 025f 898201   		.uleb128 0x4109
 5640 0262 00       		.byte	0
 5641 0263 11       		.uleb128 0x11
 5642 0264 01       		.uleb128 0x1
 5643 0265 9542     		.uleb128 0x2115
 5644 0267 19       		.uleb128 0x19
 5645 0268 31       		.uleb128 0x31
 5646 0269 13       		.uleb128 0x13
 5647 026a 00       		.byte	0
 5648 026b 00       		.byte	0
 5649 026c 31       		.uleb128 0x31
ARM GAS  /tmp/ccbxFcRO.s 			page 118


 5650 026d 05       		.uleb128 0x5
 5651 026e 00       		.byte	0
 5652 026f 03       		.uleb128 0x3
 5653 0270 08       		.uleb128 0x8
 5654 0271 3A       		.uleb128 0x3a
 5655 0272 0B       		.uleb128 0xb
 5656 0273 3B       		.uleb128 0x3b
 5657 0274 05       		.uleb128 0x5
 5658 0275 49       		.uleb128 0x49
 5659 0276 13       		.uleb128 0x13
 5660 0277 02       		.uleb128 0x2
 5661 0278 17       		.uleb128 0x17
 5662 0279 00       		.byte	0
 5663 027a 00       		.byte	0
 5664 027b 32       		.uleb128 0x32
 5665 027c 05       		.uleb128 0x5
 5666 027d 00       		.byte	0
 5667 027e 03       		.uleb128 0x3
 5668 027f 0E       		.uleb128 0xe
 5669 0280 3A       		.uleb128 0x3a
 5670 0281 0B       		.uleb128 0xb
 5671 0282 3B       		.uleb128 0x3b
 5672 0283 05       		.uleb128 0x5
 5673 0284 49       		.uleb128 0x49
 5674 0285 13       		.uleb128 0x13
 5675 0286 02       		.uleb128 0x2
 5676 0287 17       		.uleb128 0x17
 5677 0288 00       		.byte	0
 5678 0289 00       		.byte	0
 5679 028a 33       		.uleb128 0x33
 5680 028b 34       		.uleb128 0x34
 5681 028c 00       		.byte	0
 5682 028d 03       		.uleb128 0x3
 5683 028e 08       		.uleb128 0x8
 5684 028f 3A       		.uleb128 0x3a
 5685 0290 0B       		.uleb128 0xb
 5686 0291 3B       		.uleb128 0x3b
 5687 0292 05       		.uleb128 0x5
 5688 0293 49       		.uleb128 0x49
 5689 0294 13       		.uleb128 0x13
 5690 0295 02       		.uleb128 0x2
 5691 0296 17       		.uleb128 0x17
 5692 0297 00       		.byte	0
 5693 0298 00       		.byte	0
 5694 0299 34       		.uleb128 0x34
 5695 029a 1D       		.uleb128 0x1d
 5696 029b 01       		.byte	0x1
 5697 029c 31       		.uleb128 0x31
 5698 029d 13       		.uleb128 0x13
 5699 029e 11       		.uleb128 0x11
 5700 029f 01       		.uleb128 0x1
 5701 02a0 12       		.uleb128 0x12
 5702 02a1 06       		.uleb128 0x6
 5703 02a2 58       		.uleb128 0x58
 5704 02a3 0B       		.uleb128 0xb
 5705 02a4 59       		.uleb128 0x59
 5706 02a5 05       		.uleb128 0x5
ARM GAS  /tmp/ccbxFcRO.s 			page 119


 5707 02a6 01       		.uleb128 0x1
 5708 02a7 13       		.uleb128 0x13
 5709 02a8 00       		.byte	0
 5710 02a9 00       		.byte	0
 5711 02aa 35       		.uleb128 0x35
 5712 02ab 05       		.uleb128 0x5
 5713 02ac 00       		.byte	0
 5714 02ad 31       		.uleb128 0x31
 5715 02ae 13       		.uleb128 0x13
 5716 02af 02       		.uleb128 0x2
 5717 02b0 17       		.uleb128 0x17
 5718 02b1 00       		.byte	0
 5719 02b2 00       		.byte	0
 5720 02b3 36       		.uleb128 0x36
 5721 02b4 898201   		.uleb128 0x4109
 5722 02b7 01       		.byte	0x1
 5723 02b8 11       		.uleb128 0x11
 5724 02b9 01       		.uleb128 0x1
 5725 02ba 31       		.uleb128 0x31
 5726 02bb 13       		.uleb128 0x13
 5727 02bc 00       		.byte	0
 5728 02bd 00       		.byte	0
 5729 02be 37       		.uleb128 0x37
 5730 02bf 8A8201   		.uleb128 0x410a
 5731 02c2 00       		.byte	0
 5732 02c3 02       		.uleb128 0x2
 5733 02c4 18       		.uleb128 0x18
 5734 02c5 9142     		.uleb128 0x2111
 5735 02c7 18       		.uleb128 0x18
 5736 02c8 00       		.byte	0
 5737 02c9 00       		.byte	0
 5738 02ca 38       		.uleb128 0x38
 5739 02cb 2E       		.uleb128 0x2e
 5740 02cc 00       		.byte	0
 5741 02cd 3F       		.uleb128 0x3f
 5742 02ce 19       		.uleb128 0x19
 5743 02cf 03       		.uleb128 0x3
 5744 02d0 0E       		.uleb128 0xe
 5745 02d1 3A       		.uleb128 0x3a
 5746 02d2 0B       		.uleb128 0xb
 5747 02d3 3B       		.uleb128 0x3b
 5748 02d4 05       		.uleb128 0x5
 5749 02d5 27       		.uleb128 0x27
 5750 02d6 19       		.uleb128 0x19
 5751 02d7 49       		.uleb128 0x49
 5752 02d8 13       		.uleb128 0x13
 5753 02d9 11       		.uleb128 0x11
 5754 02da 01       		.uleb128 0x1
 5755 02db 12       		.uleb128 0x12
 5756 02dc 06       		.uleb128 0x6
 5757 02dd 40       		.uleb128 0x40
 5758 02de 18       		.uleb128 0x18
 5759 02df 9742     		.uleb128 0x2117
 5760 02e1 19       		.uleb128 0x19
 5761 02e2 00       		.byte	0
 5762 02e3 00       		.byte	0
 5763 02e4 39       		.uleb128 0x39
ARM GAS  /tmp/ccbxFcRO.s 			page 120


 5764 02e5 1D       		.uleb128 0x1d
 5765 02e6 01       		.byte	0x1
 5766 02e7 31       		.uleb128 0x31
 5767 02e8 13       		.uleb128 0x13
 5768 02e9 52       		.uleb128 0x52
 5769 02ea 01       		.uleb128 0x1
 5770 02eb 55       		.uleb128 0x55
 5771 02ec 17       		.uleb128 0x17
 5772 02ed 58       		.uleb128 0x58
 5773 02ee 0B       		.uleb128 0xb
 5774 02ef 59       		.uleb128 0x59
 5775 02f0 05       		.uleb128 0x5
 5776 02f1 01       		.uleb128 0x1
 5777 02f2 13       		.uleb128 0x13
 5778 02f3 00       		.byte	0
 5779 02f4 00       		.byte	0
 5780 02f5 3A       		.uleb128 0x3a
 5781 02f6 0B       		.uleb128 0xb
 5782 02f7 01       		.byte	0x1
 5783 02f8 55       		.uleb128 0x55
 5784 02f9 17       		.uleb128 0x17
 5785 02fa 00       		.byte	0
 5786 02fb 00       		.byte	0
 5787 02fc 3B       		.uleb128 0x3b
 5788 02fd 34       		.uleb128 0x34
 5789 02fe 00       		.byte	0
 5790 02ff 31       		.uleb128 0x31
 5791 0300 13       		.uleb128 0x13
 5792 0301 02       		.uleb128 0x2
 5793 0302 18       		.uleb128 0x18
 5794 0303 00       		.byte	0
 5795 0304 00       		.byte	0
 5796 0305 3C       		.uleb128 0x3c
 5797 0306 1D       		.uleb128 0x1d
 5798 0307 01       		.byte	0x1
 5799 0308 31       		.uleb128 0x31
 5800 0309 13       		.uleb128 0x13
 5801 030a 52       		.uleb128 0x52
 5802 030b 01       		.uleb128 0x1
 5803 030c 55       		.uleb128 0x55
 5804 030d 17       		.uleb128 0x17
 5805 030e 58       		.uleb128 0x58
 5806 030f 0B       		.uleb128 0xb
 5807 0310 59       		.uleb128 0x59
 5808 0311 0B       		.uleb128 0xb
 5809 0312 00       		.byte	0
 5810 0313 00       		.byte	0
 5811 0314 3D       		.uleb128 0x3d
 5812 0315 0B       		.uleb128 0xb
 5813 0316 01       		.byte	0x1
 5814 0317 11       		.uleb128 0x11
 5815 0318 01       		.uleb128 0x1
 5816 0319 12       		.uleb128 0x12
 5817 031a 06       		.uleb128 0x6
 5818 031b 00       		.byte	0
 5819 031c 00       		.byte	0
 5820 031d 3E       		.uleb128 0x3e
ARM GAS  /tmp/ccbxFcRO.s 			page 121


 5821 031e 1D       		.uleb128 0x1d
 5822 031f 01       		.byte	0x1
 5823 0320 31       		.uleb128 0x31
 5824 0321 13       		.uleb128 0x13
 5825 0322 11       		.uleb128 0x11
 5826 0323 01       		.uleb128 0x1
 5827 0324 12       		.uleb128 0x12
 5828 0325 06       		.uleb128 0x6
 5829 0326 58       		.uleb128 0x58
 5830 0327 0B       		.uleb128 0xb
 5831 0328 59       		.uleb128 0x59
 5832 0329 0B       		.uleb128 0xb
 5833 032a 00       		.byte	0
 5834 032b 00       		.byte	0
 5835 032c 3F       		.uleb128 0x3f
 5836 032d 05       		.uleb128 0x5
 5837 032e 00       		.byte	0
 5838 032f 31       		.uleb128 0x31
 5839 0330 13       		.uleb128 0x13
 5840 0331 1C       		.uleb128 0x1c
 5841 0332 0B       		.uleb128 0xb
 5842 0333 00       		.byte	0
 5843 0334 00       		.byte	0
 5844 0335 40       		.uleb128 0x40
 5845 0336 34       		.uleb128 0x34
 5846 0337 00       		.byte	0
 5847 0338 03       		.uleb128 0x3
 5848 0339 0E       		.uleb128 0xe
 5849 033a 3A       		.uleb128 0x3a
 5850 033b 0B       		.uleb128 0xb
 5851 033c 3B       		.uleb128 0x3b
 5852 033d 05       		.uleb128 0x5
 5853 033e 49       		.uleb128 0x49
 5854 033f 13       		.uleb128 0x13
 5855 0340 02       		.uleb128 0x2
 5856 0341 17       		.uleb128 0x17
 5857 0342 00       		.byte	0
 5858 0343 00       		.byte	0
 5859 0344 41       		.uleb128 0x41
 5860 0345 34       		.uleb128 0x34
 5861 0346 00       		.byte	0
 5862 0347 03       		.uleb128 0x3
 5863 0348 08       		.uleb128 0x8
 5864 0349 3A       		.uleb128 0x3a
 5865 034a 0B       		.uleb128 0xb
 5866 034b 3B       		.uleb128 0x3b
 5867 034c 05       		.uleb128 0x5
 5868 034d 49       		.uleb128 0x49
 5869 034e 13       		.uleb128 0x13
 5870 034f 02       		.uleb128 0x2
 5871 0350 18       		.uleb128 0x18
 5872 0351 00       		.byte	0
 5873 0352 00       		.byte	0
 5874 0353 42       		.uleb128 0x42
 5875 0354 34       		.uleb128 0x34
 5876 0355 00       		.byte	0
 5877 0356 31       		.uleb128 0x31
ARM GAS  /tmp/ccbxFcRO.s 			page 122


 5878 0357 13       		.uleb128 0x13
 5879 0358 02       		.uleb128 0x2
 5880 0359 17       		.uleb128 0x17
 5881 035a 00       		.byte	0
 5882 035b 00       		.byte	0
 5883 035c 43       		.uleb128 0x43
 5884 035d 2E       		.uleb128 0x2e
 5885 035e 01       		.byte	0x1
 5886 035f 3F       		.uleb128 0x3f
 5887 0360 19       		.uleb128 0x19
 5888 0361 03       		.uleb128 0x3
 5889 0362 0E       		.uleb128 0xe
 5890 0363 3A       		.uleb128 0x3a
 5891 0364 0B       		.uleb128 0xb
 5892 0365 3B       		.uleb128 0x3b
 5893 0366 05       		.uleb128 0x5
 5894 0367 27       		.uleb128 0x27
 5895 0368 19       		.uleb128 0x19
 5896 0369 11       		.uleb128 0x11
 5897 036a 01       		.uleb128 0x1
 5898 036b 12       		.uleb128 0x12
 5899 036c 06       		.uleb128 0x6
 5900 036d 40       		.uleb128 0x40
 5901 036e 18       		.uleb128 0x18
 5902 036f 9742     		.uleb128 0x2117
 5903 0371 19       		.uleb128 0x19
 5904 0372 01       		.uleb128 0x1
 5905 0373 13       		.uleb128 0x13
 5906 0374 00       		.byte	0
 5907 0375 00       		.byte	0
 5908 0376 44       		.uleb128 0x44
 5909 0377 1D       		.uleb128 0x1d
 5910 0378 01       		.byte	0x1
 5911 0379 31       		.uleb128 0x31
 5912 037a 13       		.uleb128 0x13
 5913 037b 11       		.uleb128 0x11
 5914 037c 01       		.uleb128 0x1
 5915 037d 12       		.uleb128 0x12
 5916 037e 06       		.uleb128 0x6
 5917 037f 58       		.uleb128 0x58
 5918 0380 0B       		.uleb128 0xb
 5919 0381 59       		.uleb128 0x59
 5920 0382 05       		.uleb128 0x5
 5921 0383 00       		.byte	0
 5922 0384 00       		.byte	0
 5923 0385 45       		.uleb128 0x45
 5924 0386 898201   		.uleb128 0x4109
 5925 0389 01       		.byte	0x1
 5926 038a 11       		.uleb128 0x11
 5927 038b 01       		.uleb128 0x1
 5928 038c 31       		.uleb128 0x31
 5929 038d 13       		.uleb128 0x13
 5930 038e 01       		.uleb128 0x1
 5931 038f 13       		.uleb128 0x13
 5932 0390 00       		.byte	0
 5933 0391 00       		.byte	0
 5934 0392 46       		.uleb128 0x46
ARM GAS  /tmp/ccbxFcRO.s 			page 123


 5935 0393 34       		.uleb128 0x34
 5936 0394 00       		.byte	0
 5937 0395 03       		.uleb128 0x3
 5938 0396 08       		.uleb128 0x8
 5939 0397 3A       		.uleb128 0x3a
 5940 0398 0B       		.uleb128 0xb
 5941 0399 3B       		.uleb128 0x3b
 5942 039a 05       		.uleb128 0x5
 5943 039b 49       		.uleb128 0x49
 5944 039c 13       		.uleb128 0x13
 5945 039d 1C       		.uleb128 0x1c
 5946 039e 0B       		.uleb128 0xb
 5947 039f 00       		.byte	0
 5948 03a0 00       		.byte	0
 5949 03a1 47       		.uleb128 0x47
 5950 03a2 898201   		.uleb128 0x4109
 5951 03a5 01       		.byte	0x1
 5952 03a6 11       		.uleb128 0x11
 5953 03a7 01       		.uleb128 0x1
 5954 03a8 9542     		.uleb128 0x2115
 5955 03aa 19       		.uleb128 0x19
 5956 03ab 31       		.uleb128 0x31
 5957 03ac 13       		.uleb128 0x13
 5958 03ad 00       		.byte	0
 5959 03ae 00       		.byte	0
 5960 03af 48       		.uleb128 0x48
 5961 03b0 2E       		.uleb128 0x2e
 5962 03b1 01       		.byte	0x1
 5963 03b2 03       		.uleb128 0x3
 5964 03b3 0E       		.uleb128 0xe
 5965 03b4 3A       		.uleb128 0x3a
 5966 03b5 0B       		.uleb128 0xb
 5967 03b6 3B       		.uleb128 0x3b
 5968 03b7 05       		.uleb128 0x5
 5969 03b8 27       		.uleb128 0x27
 5970 03b9 19       		.uleb128 0x19
 5971 03ba 49       		.uleb128 0x49
 5972 03bb 13       		.uleb128 0x13
 5973 03bc 20       		.uleb128 0x20
 5974 03bd 0B       		.uleb128 0xb
 5975 03be 01       		.uleb128 0x1
 5976 03bf 13       		.uleb128 0x13
 5977 03c0 00       		.byte	0
 5978 03c1 00       		.byte	0
 5979 03c2 49       		.uleb128 0x49
 5980 03c3 34       		.uleb128 0x34
 5981 03c4 00       		.byte	0
 5982 03c5 03       		.uleb128 0x3
 5983 03c6 0E       		.uleb128 0xe
 5984 03c7 3A       		.uleb128 0x3a
 5985 03c8 0B       		.uleb128 0xb
 5986 03c9 3B       		.uleb128 0x3b
 5987 03ca 05       		.uleb128 0x5
 5988 03cb 49       		.uleb128 0x49
 5989 03cc 13       		.uleb128 0x13
 5990 03cd 00       		.byte	0
 5991 03ce 00       		.byte	0
ARM GAS  /tmp/ccbxFcRO.s 			page 124


 5992 03cf 4A       		.uleb128 0x4a
 5993 03d0 2E       		.uleb128 0x2e
 5994 03d1 01       		.byte	0x1
 5995 03d2 03       		.uleb128 0x3
 5996 03d3 0E       		.uleb128 0xe
 5997 03d4 3A       		.uleb128 0x3a
 5998 03d5 0B       		.uleb128 0xb
 5999 03d6 3B       		.uleb128 0x3b
 6000 03d7 0B       		.uleb128 0xb
 6001 03d8 27       		.uleb128 0x27
 6002 03d9 19       		.uleb128 0x19
 6003 03da 49       		.uleb128 0x49
 6004 03db 13       		.uleb128 0x13
 6005 03dc 11       		.uleb128 0x11
 6006 03dd 01       		.uleb128 0x1
 6007 03de 12       		.uleb128 0x12
 6008 03df 06       		.uleb128 0x6
 6009 03e0 40       		.uleb128 0x40
 6010 03e1 18       		.uleb128 0x18
 6011 03e2 9742     		.uleb128 0x2117
 6012 03e4 19       		.uleb128 0x19
 6013 03e5 01       		.uleb128 0x1
 6014 03e6 13       		.uleb128 0x13
 6015 03e7 00       		.byte	0
 6016 03e8 00       		.byte	0
 6017 03e9 4B       		.uleb128 0x4b
 6018 03ea 34       		.uleb128 0x34
 6019 03eb 00       		.byte	0
 6020 03ec 03       		.uleb128 0x3
 6021 03ed 08       		.uleb128 0x8
 6022 03ee 3A       		.uleb128 0x3a
 6023 03ef 0B       		.uleb128 0xb
 6024 03f0 3B       		.uleb128 0x3b
 6025 03f1 0B       		.uleb128 0xb
 6026 03f2 49       		.uleb128 0x49
 6027 03f3 13       		.uleb128 0x13
 6028 03f4 02       		.uleb128 0x2
 6029 03f5 18       		.uleb128 0x18
 6030 03f6 00       		.byte	0
 6031 03f7 00       		.byte	0
 6032 03f8 4C       		.uleb128 0x4c
 6033 03f9 1D       		.uleb128 0x1d
 6034 03fa 01       		.byte	0x1
 6035 03fb 31       		.uleb128 0x31
 6036 03fc 13       		.uleb128 0x13
 6037 03fd 52       		.uleb128 0x52
 6038 03fe 01       		.uleb128 0x1
 6039 03ff 55       		.uleb128 0x55
 6040 0400 17       		.uleb128 0x17
 6041 0401 58       		.uleb128 0x58
 6042 0402 0B       		.uleb128 0xb
 6043 0403 59       		.uleb128 0x59
 6044 0404 0B       		.uleb128 0xb
 6045 0405 01       		.uleb128 0x1
 6046 0406 13       		.uleb128 0x13
 6047 0407 00       		.byte	0
 6048 0408 00       		.byte	0
ARM GAS  /tmp/ccbxFcRO.s 			page 125


 6049 0409 4D       		.uleb128 0x4d
 6050 040a 2E       		.uleb128 0x2e
 6051 040b 01       		.byte	0x1
 6052 040c 03       		.uleb128 0x3
 6053 040d 0E       		.uleb128 0xe
 6054 040e 3A       		.uleb128 0x3a
 6055 040f 0B       		.uleb128 0xb
 6056 0410 3B       		.uleb128 0x3b
 6057 0411 0B       		.uleb128 0xb
 6058 0412 27       		.uleb128 0x27
 6059 0413 19       		.uleb128 0x19
 6060 0414 11       		.uleb128 0x11
 6061 0415 01       		.uleb128 0x1
 6062 0416 12       		.uleb128 0x12
 6063 0417 06       		.uleb128 0x6
 6064 0418 40       		.uleb128 0x40
 6065 0419 18       		.uleb128 0x18
 6066 041a 9742     		.uleb128 0x2117
 6067 041c 19       		.uleb128 0x19
 6068 041d 01       		.uleb128 0x1
 6069 041e 13       		.uleb128 0x13
 6070 041f 00       		.byte	0
 6071 0420 00       		.byte	0
 6072 0421 4E       		.uleb128 0x4e
 6073 0422 2E       		.uleb128 0x2e
 6074 0423 01       		.byte	0x1
 6075 0424 03       		.uleb128 0x3
 6076 0425 0E       		.uleb128 0xe
 6077 0426 3A       		.uleb128 0x3a
 6078 0427 0B       		.uleb128 0xb
 6079 0428 3B       		.uleb128 0x3b
 6080 0429 0B       		.uleb128 0xb
 6081 042a 27       		.uleb128 0x27
 6082 042b 19       		.uleb128 0x19
 6083 042c 20       		.uleb128 0x20
 6084 042d 0B       		.uleb128 0xb
 6085 042e 01       		.uleb128 0x1
 6086 042f 13       		.uleb128 0x13
 6087 0430 00       		.byte	0
 6088 0431 00       		.byte	0
 6089 0432 4F       		.uleb128 0x4f
 6090 0433 34       		.uleb128 0x34
 6091 0434 00       		.byte	0
 6092 0435 03       		.uleb128 0x3
 6093 0436 08       		.uleb128 0x8
 6094 0437 3A       		.uleb128 0x3a
 6095 0438 0B       		.uleb128 0xb
 6096 0439 3B       		.uleb128 0x3b
 6097 043a 0B       		.uleb128 0xb
 6098 043b 49       		.uleb128 0x49
 6099 043c 13       		.uleb128 0x13
 6100 043d 00       		.byte	0
 6101 043e 00       		.byte	0
 6102 043f 50       		.uleb128 0x50
 6103 0440 34       		.uleb128 0x34
 6104 0441 00       		.byte	0
 6105 0442 03       		.uleb128 0x3
ARM GAS  /tmp/ccbxFcRO.s 			page 126


 6106 0443 08       		.uleb128 0x8
 6107 0444 3A       		.uleb128 0x3a
 6108 0445 0B       		.uleb128 0xb
 6109 0446 3B       		.uleb128 0x3b
 6110 0447 0B       		.uleb128 0xb
 6111 0448 49       		.uleb128 0x49
 6112 0449 13       		.uleb128 0x13
 6113 044a 02       		.uleb128 0x2
 6114 044b 17       		.uleb128 0x17
 6115 044c 00       		.byte	0
 6116 044d 00       		.byte	0
 6117 044e 51       		.uleb128 0x51
 6118 044f 34       		.uleb128 0x34
 6119 0450 00       		.byte	0
 6120 0451 03       		.uleb128 0x3
 6121 0452 0E       		.uleb128 0xe
 6122 0453 3A       		.uleb128 0x3a
 6123 0454 0B       		.uleb128 0xb
 6124 0455 3B       		.uleb128 0x3b
 6125 0456 0B       		.uleb128 0xb
 6126 0457 49       		.uleb128 0x49
 6127 0458 13       		.uleb128 0x13
 6128 0459 02       		.uleb128 0x2
 6129 045a 17       		.uleb128 0x17
 6130 045b 00       		.byte	0
 6131 045c 00       		.byte	0
 6132 045d 52       		.uleb128 0x52
 6133 045e 2E       		.uleb128 0x2e
 6134 045f 01       		.byte	0x1
 6135 0460 03       		.uleb128 0x3
 6136 0461 0E       		.uleb128 0xe
 6137 0462 3A       		.uleb128 0x3a
 6138 0463 0B       		.uleb128 0xb
 6139 0464 3B       		.uleb128 0x3b
 6140 0465 0B       		.uleb128 0xb
 6141 0466 27       		.uleb128 0x27
 6142 0467 19       		.uleb128 0x19
 6143 0468 49       		.uleb128 0x49
 6144 0469 13       		.uleb128 0x13
 6145 046a 20       		.uleb128 0x20
 6146 046b 0B       		.uleb128 0xb
 6147 046c 01       		.uleb128 0x1
 6148 046d 13       		.uleb128 0x13
 6149 046e 00       		.byte	0
 6150 046f 00       		.byte	0
 6151 0470 53       		.uleb128 0x53
 6152 0471 05       		.uleb128 0x5
 6153 0472 00       		.byte	0
 6154 0473 03       		.uleb128 0x3
 6155 0474 08       		.uleb128 0x8
 6156 0475 3A       		.uleb128 0x3a
 6157 0476 0B       		.uleb128 0xb
 6158 0477 3B       		.uleb128 0x3b
 6159 0478 0B       		.uleb128 0xb
 6160 0479 49       		.uleb128 0x49
 6161 047a 13       		.uleb128 0x13
 6162 047b 00       		.byte	0
ARM GAS  /tmp/ccbxFcRO.s 			page 127


 6163 047c 00       		.byte	0
 6164 047d 54       		.uleb128 0x54
 6165 047e 05       		.uleb128 0x5
 6166 047f 00       		.byte	0
 6167 0480 03       		.uleb128 0x3
 6168 0481 0E       		.uleb128 0xe
 6169 0482 3A       		.uleb128 0x3a
 6170 0483 0B       		.uleb128 0xb
 6171 0484 3B       		.uleb128 0x3b
 6172 0485 0B       		.uleb128 0xb
 6173 0486 49       		.uleb128 0x49
 6174 0487 13       		.uleb128 0x13
 6175 0488 00       		.byte	0
 6176 0489 00       		.byte	0
 6177 048a 55       		.uleb128 0x55
 6178 048b 34       		.uleb128 0x34
 6179 048c 00       		.byte	0
 6180 048d 03       		.uleb128 0x3
 6181 048e 0E       		.uleb128 0xe
 6182 048f 3A       		.uleb128 0x3a
 6183 0490 0B       		.uleb128 0xb
 6184 0491 3B       		.uleb128 0x3b
 6185 0492 0B       		.uleb128 0xb
 6186 0493 49       		.uleb128 0x49
 6187 0494 13       		.uleb128 0x13
 6188 0495 00       		.byte	0
 6189 0496 00       		.byte	0
 6190 0497 56       		.uleb128 0x56
 6191 0498 2E       		.uleb128 0x2e
 6192 0499 01       		.byte	0x1
 6193 049a 31       		.uleb128 0x31
 6194 049b 13       		.uleb128 0x13
 6195 049c 11       		.uleb128 0x11
 6196 049d 01       		.uleb128 0x1
 6197 049e 12       		.uleb128 0x12
 6198 049f 06       		.uleb128 0x6
 6199 04a0 40       		.uleb128 0x40
 6200 04a1 18       		.uleb128 0x18
 6201 04a2 9742     		.uleb128 0x2117
 6202 04a4 19       		.uleb128 0x19
 6203 04a5 01       		.uleb128 0x1
 6204 04a6 13       		.uleb128 0x13
 6205 04a7 00       		.byte	0
 6206 04a8 00       		.byte	0
 6207 04a9 57       		.uleb128 0x57
 6208 04aa 34       		.uleb128 0x34
 6209 04ab 00       		.byte	0
 6210 04ac 31       		.uleb128 0x31
 6211 04ad 13       		.uleb128 0x13
 6212 04ae 00       		.byte	0
 6213 04af 00       		.byte	0
 6214 04b0 58       		.uleb128 0x58
 6215 04b1 2E       		.uleb128 0x2e
 6216 04b2 00       		.byte	0
 6217 04b3 3F       		.uleb128 0x3f
 6218 04b4 19       		.uleb128 0x19
 6219 04b5 3C       		.uleb128 0x3c
ARM GAS  /tmp/ccbxFcRO.s 			page 128


 6220 04b6 19       		.uleb128 0x19
 6221 04b7 6E       		.uleb128 0x6e
 6222 04b8 0E       		.uleb128 0xe
 6223 04b9 03       		.uleb128 0x3
 6224 04ba 0E       		.uleb128 0xe
 6225 04bb 3A       		.uleb128 0x3a
 6226 04bc 0B       		.uleb128 0xb
 6227 04bd 3B       		.uleb128 0x3b
 6228 04be 0B       		.uleb128 0xb
 6229 04bf 00       		.byte	0
 6230 04c0 00       		.byte	0
 6231 04c1 00       		.byte	0
 6232              		.section	.debug_loc,"",%progbits
 6233              	.Ldebug_loc0:
 6234              	.LLST75:
 6235 0000 00000000 		.4byte	.LVL116
 6236 0004 16000000 		.4byte	.LVL117
 6237 0008 0100     		.2byte	0x1
 6238 000a 50       		.byte	0x50
 6239 000b 16000000 		.4byte	.LVL117
 6240 000f 5C000000 		.4byte	.LVL128
 6241 0013 0100     		.2byte	0x1
 6242 0015 58       		.byte	0x58
 6243 0016 5C000000 		.4byte	.LVL128
 6244 001a 68000000 		.4byte	.LFE254
 6245 001e 0400     		.2byte	0x4
 6246 0020 F3       		.byte	0xf3
 6247 0021 01       		.uleb128 0x1
 6248 0022 50       		.byte	0x50
 6249 0023 9F       		.byte	0x9f
 6250 0024 00000000 		.4byte	0
 6251 0028 00000000 		.4byte	0
 6252              	.LLST76:
 6253 002c 00000000 		.4byte	.LVL116
 6254 0030 16000000 		.4byte	.LVL117
 6255 0034 0100     		.2byte	0x1
 6256 0036 51       		.byte	0x51
 6257 0037 16000000 		.4byte	.LVL117
 6258 003b 44000000 		.4byte	.LVL125
 6259 003f 0300     		.2byte	0x3
 6260 0041 75       		.byte	0x75
 6261 0042 7F       		.sleb128 -1
 6262 0043 9F       		.byte	0x9f
 6263 0044 58000000 		.4byte	.LVL127
 6264 0048 5C000000 		.4byte	.LVL128
 6265 004c 0300     		.2byte	0x3
 6266 004e 75       		.byte	0x75
 6267 004f 7F       		.sleb128 -1
 6268 0050 9F       		.byte	0x9f
 6269 0051 00000000 		.4byte	0
 6270 0055 00000000 		.4byte	0
 6271              	.LLST77:
 6272 0059 16000000 		.4byte	.LVL117
 6273 005d 5C000000 		.4byte	.LVL128
 6274 0061 0100     		.2byte	0x1
 6275 0063 54       		.byte	0x54
 6276 0064 00000000 		.4byte	0
ARM GAS  /tmp/ccbxFcRO.s 			page 129


 6277 0068 00000000 		.4byte	0
 6278              	.LLST78:
 6279 006c 1C000000 		.4byte	.LVL118
 6280 0070 1E000000 		.4byte	.LVL119
 6281 0074 0C00     		.2byte	0xc
 6282 0076 03       		.byte	0x3
 6283 0077 00000000 		.4byte	sd_mmc_spi_block_size
 6284 007b 94       		.byte	0x94
 6285 007c 02       		.byte	0x2
 6286 007d 0A       		.byte	0xa
 6287 007e FFFF     		.2byte	0xffff
 6288 0080 1A       		.byte	0x1a
 6289 0081 9F       		.byte	0x9f
 6290 0082 1E000000 		.4byte	.LVL119
 6291 0086 27000000 		.4byte	.LVL121-1
 6292 008a 0100     		.2byte	0x1
 6293 008c 52       		.byte	0x52
 6294 008d 00000000 		.4byte	0
 6295 0091 00000000 		.4byte	0
 6296              	.LLST79:
 6297 0095 1C000000 		.4byte	.LVL118
 6298 0099 22000000 		.4byte	.LVL120
 6299 009d 0600     		.2byte	0x6
 6300 009f 78       		.byte	0x78
 6301 00a0 00       		.sleb128 0
 6302 00a1 74       		.byte	0x74
 6303 00a2 00       		.sleb128 0
 6304 00a3 22       		.byte	0x22
 6305 00a4 9F       		.byte	0x9f
 6306 00a5 22000000 		.4byte	.LVL120
 6307 00a9 27000000 		.4byte	.LVL121-1
 6308 00ad 0100     		.2byte	0x1
 6309 00af 50       		.byte	0x50
 6310 00b0 27000000 		.4byte	.LVL121-1
 6311 00b4 28000000 		.4byte	.LVL121
 6312 00b8 0600     		.2byte	0x6
 6313 00ba 78       		.byte	0x78
 6314 00bb 00       		.sleb128 0
 6315 00bc 74       		.byte	0x74
 6316 00bd 00       		.sleb128 0
 6317 00be 22       		.byte	0x22
 6318 00bf 9F       		.byte	0x9f
 6319 00c0 00000000 		.4byte	0
 6320 00c4 00000000 		.4byte	0
 6321              	.LLST68:
 6322 00c8 00000000 		.4byte	.LVL104
 6323 00cc 1C000000 		.4byte	.LVL106
 6324 00d0 0100     		.2byte	0x1
 6325 00d2 50       		.byte	0x50
 6326 00d3 1C000000 		.4byte	.LVL106
 6327 00d7 5A000000 		.4byte	.LVL115
 6328 00db 0100     		.2byte	0x1
 6329 00dd 59       		.byte	0x59
 6330 00de 5A000000 		.4byte	.LVL115
 6331 00e2 70000000 		.4byte	.LFE252
 6332 00e6 0400     		.2byte	0x4
 6333 00e8 F3       		.byte	0xf3
ARM GAS  /tmp/ccbxFcRO.s 			page 130


 6334 00e9 01       		.uleb128 0x1
 6335 00ea 50       		.byte	0x50
 6336 00eb 9F       		.byte	0x9f
 6337 00ec 00000000 		.4byte	0
 6338 00f0 00000000 		.4byte	0
 6339              	.LLST69:
 6340 00f4 00000000 		.4byte	.LVL104
 6341 00f8 0C000000 		.4byte	.LVL105
 6342 00fc 0100     		.2byte	0x1
 6343 00fe 51       		.byte	0x51
 6344 00ff 0C000000 		.4byte	.LVL105
 6345 0103 1C000000 		.4byte	.LVL106
 6346 0107 0300     		.2byte	0x3
 6347 0109 71       		.byte	0x71
 6348 010a 7F       		.sleb128 -1
 6349 010b 9F       		.byte	0x9f
 6350 010c 1C000000 		.4byte	.LVL106
 6351 0110 2E000000 		.4byte	.LVL108
 6352 0114 0100     		.2byte	0x1
 6353 0116 54       		.byte	0x54
 6354 0117 40000000 		.4byte	.LVL111
 6355 011b 5A000000 		.4byte	.LVL115
 6356 011f 0100     		.2byte	0x1
 6357 0121 54       		.byte	0x54
 6358 0122 00000000 		.4byte	0
 6359 0126 00000000 		.4byte	0
 6360              	.LLST70:
 6361 012a 0C000000 		.4byte	.LVL105
 6362 012e 1C000000 		.4byte	.LVL106
 6363 0132 0200     		.2byte	0x2
 6364 0134 30       		.byte	0x30
 6365 0135 9F       		.byte	0x9f
 6366 0136 1C000000 		.4byte	.LVL106
 6367 013a 5A000000 		.4byte	.LVL115
 6368 013e 0100     		.2byte	0x1
 6369 0140 55       		.byte	0x55
 6370 0141 00000000 		.4byte	0
 6371 0145 00000000 		.4byte	0
 6372              	.LLST71:
 6373 0149 1C000000 		.4byte	.LVL106
 6374 014d 25000000 		.4byte	.LVL107-1
 6375 0151 0C00     		.2byte	0xc
 6376 0153 03       		.byte	0x3
 6377 0154 00000000 		.4byte	sd_mmc_spi_block_size
 6378 0158 94       		.byte	0x94
 6379 0159 02       		.byte	0x2
 6380 015a 0A       		.byte	0xa
 6381 015b FFFF     		.2byte	0xffff
 6382 015d 1A       		.byte	0x1a
 6383 015e 9F       		.byte	0x9f
 6384 015f 4C000000 		.4byte	.LVL113
 6385 0163 5A000000 		.4byte	.LVL115
 6386 0167 0C00     		.2byte	0xc
 6387 0169 03       		.byte	0x3
 6388 016a 00000000 		.4byte	sd_mmc_spi_block_size
 6389 016e 94       		.byte	0x94
 6390 016f 02       		.byte	0x2
ARM GAS  /tmp/ccbxFcRO.s 			page 131


 6391 0170 0A       		.byte	0xa
 6392 0171 FFFF     		.2byte	0xffff
 6393 0173 1A       		.byte	0x1a
 6394 0174 9F       		.byte	0x9f
 6395 0175 00000000 		.4byte	0
 6396 0179 00000000 		.4byte	0
 6397              	.LLST72:
 6398 017d 1C000000 		.4byte	.LVL106
 6399 0181 25000000 		.4byte	.LVL107-1
 6400 0185 0100     		.2byte	0x1
 6401 0187 51       		.byte	0x51
 6402 0188 25000000 		.4byte	.LVL107-1
 6403 018c 26000000 		.4byte	.LVL107
 6404 0190 0600     		.2byte	0x6
 6405 0192 79       		.byte	0x79
 6406 0193 00       		.sleb128 0
 6407 0194 75       		.byte	0x75
 6408 0195 00       		.sleb128 0
 6409 0196 22       		.byte	0x22
 6410 0197 9F       		.byte	0x9f
 6411 0198 4C000000 		.4byte	.LVL113
 6412 019c 50000000 		.4byte	.LVL114
 6413 01a0 0600     		.2byte	0x6
 6414 01a2 79       		.byte	0x79
 6415 01a3 00       		.sleb128 0
 6416 01a4 75       		.byte	0x75
 6417 01a5 00       		.sleb128 0
 6418 01a6 22       		.byte	0x22
 6419 01a7 9F       		.byte	0x9f
 6420 01a8 50000000 		.4byte	.LVL114
 6421 01ac 5A000000 		.4byte	.LVL115
 6422 01b0 0100     		.2byte	0x1
 6423 01b2 51       		.byte	0x51
 6424 01b3 00000000 		.4byte	0
 6425 01b7 00000000 		.4byte	0
 6426              	.LLST73:
 6427 01bb 3C000000 		.4byte	.LVL110
 6428 01bf 40000000 		.4byte	.LVL111
 6429 01c3 0200     		.2byte	0x2
 6430 01c5 32       		.byte	0x32
 6431 01c6 9F       		.byte	0x9f
 6432 01c7 00000000 		.4byte	0
 6433 01cb 00000000 		.4byte	0
 6434              	.LLST74:
 6435 01cf 3C000000 		.4byte	.LVL110
 6436 01d3 3F000000 		.4byte	.LVL111-1
 6437 01d7 0100     		.2byte	0x1
 6438 01d9 51       		.byte	0x51
 6439 01da 3F000000 		.4byte	.LVL111-1
 6440 01de 40000000 		.4byte	.LVL111
 6441 01e2 0300     		.2byte	0x3
 6442 01e4 91       		.byte	0x91
 6443 01e5 5C       		.sleb128 -36
 6444 01e6 9F       		.byte	0x9f
 6445 01e7 00000000 		.4byte	0
 6446 01eb 00000000 		.4byte	0
 6447              	.LLST65:
ARM GAS  /tmp/ccbxFcRO.s 			page 132


 6448 01ef 00000000 		.4byte	.LVL96
 6449 01f3 1E000000 		.4byte	.LVL97
 6450 01f7 0100     		.2byte	0x1
 6451 01f9 50       		.byte	0x50
 6452 01fa 4E000000 		.4byte	.LVL101
 6453 01fe 51000000 		.4byte	.LVL102-1
 6454 0202 0100     		.2byte	0x1
 6455 0204 50       		.byte	0x50
 6456 0205 00000000 		.4byte	0
 6457 0209 00000000 		.4byte	0
 6458              	.LLST66:
 6459 020d 1E000000 		.4byte	.LVL97
 6460 0211 2A000000 		.4byte	.LVL98
 6461 0215 0200     		.2byte	0x2
 6462 0217 34       		.byte	0x34
 6463 0218 9F       		.byte	0x9f
 6464 0219 00000000 		.4byte	0
 6465 021d 00000000 		.4byte	0
 6466              	.LLST67:
 6467 0221 1E000000 		.4byte	.LVL97
 6468 0225 2A000000 		.4byte	.LVL98
 6469 0229 0300     		.2byte	0x3
 6470 022b 91       		.byte	0x91
 6471 022c 6C       		.sleb128 -20
 6472 022d 9F       		.byte	0x9f
 6473 022e 00000000 		.4byte	0
 6474 0232 00000000 		.4byte	0
 6475              	.LLST61:
 6476 0236 00000000 		.4byte	.LVL88
 6477 023a 0E000000 		.4byte	.LVL89
 6478 023e 0100     		.2byte	0x1
 6479 0240 50       		.byte	0x50
 6480 0241 0E000000 		.4byte	.LVL89
 6481 0245 60000000 		.4byte	.LFE250
 6482 0249 0100     		.2byte	0x1
 6483 024b 58       		.byte	0x58
 6484 024c 00000000 		.4byte	0
 6485 0250 00000000 		.4byte	0
 6486              	.LLST62:
 6487 0254 26000000 		.4byte	.LVL91
 6488 0258 30000000 		.4byte	.LVL92
 6489 025c 0200     		.2byte	0x2
 6490 025e 34       		.byte	0x34
 6491 025f 9F       		.byte	0x9f
 6492 0260 00000000 		.4byte	0
 6493 0264 00000000 		.4byte	0
 6494              	.LLST63:
 6495 0268 26000000 		.4byte	.LVL91
 6496 026c 30000000 		.4byte	.LVL92
 6497 0270 0100     		.2byte	0x1
 6498 0272 58       		.byte	0x58
 6499 0273 00000000 		.4byte	0
 6500 0277 00000000 		.4byte	0
 6501              	.LLST64:
 6502 027b 4A000000 		.4byte	.LVL93
 6503 027f 4E000000 		.4byte	.LVL94
 6504 0283 0300     		.2byte	0x3
ARM GAS  /tmp/ccbxFcRO.s 			page 133


 6505 0285 91       		.byte	0x91
 6506 0286 64       		.sleb128 -28
 6507 0287 9F       		.byte	0x9f
 6508 0288 4E000000 		.4byte	.LVL94
 6509 028c 51000000 		.4byte	.LVL95-1
 6510 0290 0100     		.2byte	0x1
 6511 0292 51       		.byte	0x51
 6512 0293 51000000 		.4byte	.LVL95-1
 6513 0297 60000000 		.4byte	.LFE250
 6514 029b 0300     		.2byte	0x3
 6515 029d 91       		.byte	0x91
 6516 029e 64       		.sleb128 -28
 6517 029f 9F       		.byte	0x9f
 6518 02a0 00000000 		.4byte	0
 6519 02a4 00000000 		.4byte	0
 6520              	.LLST36:
 6521 02a8 00000000 		.4byte	.LVL57
 6522 02ac 0E000000 		.4byte	.LVL58
 6523 02b0 0100     		.2byte	0x1
 6524 02b2 50       		.byte	0x50
 6525 02b3 0E000000 		.4byte	.LVL58
 6526 02b7 6C010000 		.4byte	.LFE248
 6527 02bb 0100     		.2byte	0x1
 6528 02bd 55       		.byte	0x55
 6529 02be 00000000 		.4byte	0
 6530 02c2 00000000 		.4byte	0
 6531              	.LLST37:
 6532 02c6 00000000 		.4byte	.LVL57
 6533 02ca 24000000 		.4byte	.LVL61
 6534 02ce 0100     		.2byte	0x1
 6535 02d0 51       		.byte	0x51
 6536 02d1 24000000 		.4byte	.LVL61
 6537 02d5 6C010000 		.4byte	.LFE248
 6538 02d9 0400     		.2byte	0x4
 6539 02db F3       		.byte	0xf3
 6540 02dc 01       		.uleb128 0x1
 6541 02dd 51       		.byte	0x51
 6542 02de 9F       		.byte	0x9f
 6543 02df 00000000 		.4byte	0
 6544 02e3 00000000 		.4byte	0
 6545              	.LLST38:
 6546 02e7 00000000 		.4byte	.LVL57
 6547 02eb 22000000 		.4byte	.LVL60
 6548 02ef 0100     		.2byte	0x1
 6549 02f1 52       		.byte	0x52
 6550 02f2 22000000 		.4byte	.LVL60
 6551 02f6 6C010000 		.4byte	.LFE248
 6552 02fa 0400     		.2byte	0x4
 6553 02fc F3       		.byte	0xf3
 6554 02fd 01       		.uleb128 0x1
 6555 02fe 52       		.byte	0x52
 6556 02ff 9F       		.byte	0x9f
 6557 0300 00000000 		.4byte	0
 6558 0304 00000000 		.4byte	0
 6559              	.LLST39:
 6560 0308 00000000 		.4byte	.LVL57
 6561 030c 2A000000 		.4byte	.LVL62
ARM GAS  /tmp/ccbxFcRO.s 			page 134


 6562 0310 0100     		.2byte	0x1
 6563 0312 53       		.byte	0x53
 6564 0313 2A000000 		.4byte	.LVL62
 6565 0317 6C010000 		.4byte	.LFE248
 6566 031b 0400     		.2byte	0x4
 6567 031d F3       		.byte	0xf3
 6568 031e 01       		.uleb128 0x1
 6569 031f 53       		.byte	0x53
 6570 0320 9F       		.byte	0x9f
 6571 0321 00000000 		.4byte	0
 6572 0325 00000000 		.4byte	0
 6573              	.LLST40:
 6574 0329 00000000 		.4byte	.LVL57
 6575 032d D4000000 		.4byte	.LVL80
 6576 0331 0200     		.2byte	0x2
 6577 0333 91       		.byte	0x91
 6578 0334 00       		.sleb128 0
 6579 0335 D4000000 		.4byte	.LVL80
 6580 0339 6C010000 		.4byte	.LFE248
 6581 033d 0200     		.2byte	0x2
 6582 033f 91       		.byte	0x91
 6583 0340 00       		.sleb128 0
 6584 0341 00000000 		.4byte	0
 6585 0345 00000000 		.4byte	0
 6586              	.LLST41:
 6587 0349 AC000000 		.4byte	.LVL77
 6588 034d B6000000 		.4byte	.LVL78
 6589 0351 0100     		.2byte	0x1
 6590 0353 5A       		.byte	0x5a
 6591 0354 B6000000 		.4byte	.LVL78
 6592 0358 C6000000 		.4byte	.LVL79
 6593 035c 0300     		.2byte	0x3
 6594 035e 7A       		.byte	0x7a
 6595 035f 7F       		.sleb128 -1
 6596 0360 9F       		.byte	0x9f
 6597 0361 D4000000 		.4byte	.LVL80
 6598 0365 6C010000 		.4byte	.LFE248
 6599 0369 0300     		.2byte	0x3
 6600 036b 7A       		.byte	0x7a
 6601 036c 7F       		.sleb128 -1
 6602 036d 9F       		.byte	0x9f
 6603 036e 00000000 		.4byte	0
 6604 0372 00000000 		.4byte	0
 6605              	.LLST42:
 6606 0376 20000000 		.4byte	.LVL59
 6607 037a 46000000 		.4byte	.LVL63
 6608 037e 0200     		.2byte	0x2
 6609 0380 34       		.byte	0x34
 6610 0381 9F       		.byte	0x9f
 6611 0382 46000000 		.4byte	.LVL63
 6612 0386 6C000000 		.4byte	.LVL69
 6613 038a 0800     		.2byte	0x8
 6614 038c 91       		.byte	0x91
 6615 038d 59       		.sleb128 -39
 6616 038e 7C       		.byte	0x7c
 6617 038f 00       		.sleb128 0
 6618 0390 1C       		.byte	0x1c
ARM GAS  /tmp/ccbxFcRO.s 			page 135


 6619 0391 23       		.byte	0x23
 6620 0392 04       		.uleb128 0x4
 6621 0393 9F       		.byte	0x9f
 6622 0394 6C000000 		.4byte	.LVL69
 6623 0398 74000000 		.4byte	.LVL70
 6624 039c 0800     		.2byte	0x8
 6625 039e 91       		.byte	0x91
 6626 039f 59       		.sleb128 -39
 6627 03a0 7C       		.byte	0x7c
 6628 03a1 00       		.sleb128 0
 6629 03a2 1C       		.byte	0x1c
 6630 03a3 23       		.byte	0x23
 6631 03a4 03       		.uleb128 0x3
 6632 03a5 9F       		.byte	0x9f
 6633 03a6 00000000 		.4byte	0
 6634 03aa 00000000 		.4byte	0
 6635              	.LLST43:
 6636 03ae 20000000 		.4byte	.LVL59
 6637 03b2 46000000 		.4byte	.LVL63
 6638 03b6 0300     		.2byte	0x3
 6639 03b8 91       		.byte	0x91
 6640 03b9 58       		.sleb128 -40
 6641 03ba 9F       		.byte	0x9f
 6642 03bb 46000000 		.4byte	.LVL63
 6643 03bf 74000000 		.4byte	.LVL70
 6644 03c3 0100     		.2byte	0x1
 6645 03c5 5C       		.byte	0x5c
 6646 03c6 74000000 		.4byte	.LVL70
 6647 03ca 76000000 		.4byte	.LVL71
 6648 03ce 0300     		.2byte	0x3
 6649 03d0 7C       		.byte	0x7c
 6650 03d1 7F       		.sleb128 -1
 6651 03d2 9F       		.byte	0x9f
 6652 03d3 00000000 		.4byte	0
 6653 03d7 00000000 		.4byte	0
 6654              	.LLST44:
 6655 03db 20000000 		.4byte	.LVL59
 6656 03df 46000000 		.4byte	.LVL63
 6657 03e3 0200     		.2byte	0x2
 6658 03e5 30       		.byte	0x30
 6659 03e6 9F       		.byte	0x9f
 6660 03e7 46000000 		.4byte	.LVL63
 6661 03eb 4C000000 		.4byte	.LVL65
 6662 03ef 0100     		.2byte	0x1
 6663 03f1 53       		.byte	0x53
 6664 03f2 56000000 		.4byte	.LVL66
 6665 03f6 76000000 		.4byte	.LVL71
 6666 03fa 0100     		.2byte	0x1
 6667 03fc 53       		.byte	0x53
 6668 03fd 00000000 		.4byte	0
 6669 0401 00000000 		.4byte	0
 6670              	.LLST45:
 6671 0405 46000000 		.4byte	.LVL63
 6672 0409 4A000000 		.4byte	.LVL64
 6673 040d 0200     		.2byte	0x2
 6674 040f 7C       		.byte	0x7c
 6675 0410 7F       		.sleb128 -1
ARM GAS  /tmp/ccbxFcRO.s 			page 136


 6676 0411 4A000000 		.4byte	.LVL64
 6677 0415 5E000000 		.4byte	.LVL67
 6678 0419 0100     		.2byte	0x1
 6679 041b 5E       		.byte	0x5e
 6680 041c 66000000 		.4byte	.LVL68
 6681 0420 74000000 		.4byte	.LVL70
 6682 0424 0100     		.2byte	0x1
 6683 0426 5E       		.byte	0x5e
 6684 0427 00000000 		.4byte	0
 6685 042b 00000000 		.4byte	0
 6686              	.LLST46:
 6687 042f 46000000 		.4byte	.LVL63
 6688 0433 4A000000 		.4byte	.LVL64
 6689 0437 0200     		.2byte	0x2
 6690 0439 30       		.byte	0x30
 6691 043a 9F       		.byte	0x9f
 6692 043b 4A000000 		.4byte	.LVL64
 6693 043f 66000000 		.4byte	.LVL68
 6694 0443 0500     		.2byte	0x5
 6695 0445 38       		.byte	0x38
 6696 0446 78       		.byte	0x78
 6697 0447 00       		.sleb128 0
 6698 0448 1C       		.byte	0x1c
 6699 0449 9F       		.byte	0x9f
 6700 044a 00000000 		.4byte	0
 6701 044e 00000000 		.4byte	0
 6702              	.LLST47:
 6703 0452 8E000000 		.4byte	.LVL72
 6704 0456 92000000 		.4byte	.LVL73
 6705 045a 0200     		.2byte	0x2
 6706 045c 31       		.byte	0x31
 6707 045d 9F       		.byte	0x9f
 6708 045e 00000000 		.4byte	0
 6709 0462 00000000 		.4byte	0
 6710              	.LLST48:
 6711 0466 8E000000 		.4byte	.LVL72
 6712 046a 91000000 		.4byte	.LVL73-1
 6713 046e 0100     		.2byte	0x1
 6714 0470 50       		.byte	0x50
 6715 0471 91000000 		.4byte	.LVL73-1
 6716 0475 92000000 		.4byte	.LVL73
 6717 0479 0300     		.2byte	0x3
 6718 047b 91       		.byte	0x91
 6719 047c 56       		.sleb128 -42
 6720 047d 9F       		.byte	0x9f
 6721 047e 00000000 		.4byte	0
 6722 0482 00000000 		.4byte	0
 6723              	.LLST49:
 6724 0486 A6000000 		.4byte	.LVL76
 6725 048a AC000000 		.4byte	.LVL77
 6726 048e 0200     		.2byte	0x2
 6727 0490 31       		.byte	0x31
 6728 0491 9F       		.byte	0x9f
 6729 0492 00000000 		.4byte	0
 6730 0496 00000000 		.4byte	0
 6731              	.LLST50:
 6732 049a A6000000 		.4byte	.LVL76
ARM GAS  /tmp/ccbxFcRO.s 			page 137


 6733 049e AC000000 		.4byte	.LVL77
 6734 04a2 0300     		.2byte	0x3
 6735 04a4 91       		.byte	0x91
 6736 04a5 57       		.sleb128 -41
 6737 04a6 9F       		.byte	0x9f
 6738 04a7 00000000 		.4byte	0
 6739 04ab 00000000 		.4byte	0
 6740              	.LLST51:
 6741 04af 92000000 		.4byte	.LVL73
 6742 04b3 9C000000 		.4byte	.LVL75
 6743 04b7 0200     		.2byte	0x2
 6744 04b9 36       		.byte	0x36
 6745 04ba 9F       		.byte	0x9f
 6746 04bb 00000000 		.4byte	0
 6747 04bf 00000000 		.4byte	0
 6748              	.LLST52:
 6749 04c3 92000000 		.4byte	.LVL73
 6750 04c7 98000000 		.4byte	.LVL74
 6751 04cb 0300     		.2byte	0x3
 6752 04cd 91       		.byte	0x91
 6753 04ce 58       		.sleb128 -40
 6754 04cf 9F       		.byte	0x9f
 6755 04d0 98000000 		.4byte	.LVL74
 6756 04d4 9B000000 		.4byte	.LVL75-1
 6757 04d8 0100     		.2byte	0x1
 6758 04da 50       		.byte	0x50
 6759 04db 9B000000 		.4byte	.LVL75-1
 6760 04df 9C000000 		.4byte	.LVL75
 6761 04e3 0300     		.2byte	0x3
 6762 04e5 91       		.byte	0x91
 6763 04e6 58       		.sleb128 -40
 6764 04e7 9F       		.byte	0x9f
 6765 04e8 00000000 		.4byte	0
 6766 04ec 00000000 		.4byte	0
 6767              	.LLST53:
 6768 04f0 AC000000 		.4byte	.LVL77
 6769 04f4 B6000000 		.4byte	.LVL78
 6770 04f8 0200     		.2byte	0x2
 6771 04fa 31       		.byte	0x31
 6772 04fb 9F       		.byte	0x9f
 6773 04fc 00000000 		.4byte	0
 6774 0500 00000000 		.4byte	0
 6775              	.LLST54:
 6776 0504 AC000000 		.4byte	.LVL77
 6777 0508 B6000000 		.4byte	.LVL78
 6778 050c 0300     		.2byte	0x3
 6779 050e 91       		.byte	0x91
 6780 050f 57       		.sleb128 -41
 6781 0510 9F       		.byte	0x9f
 6782 0511 00000000 		.4byte	0
 6783 0515 00000000 		.4byte	0
 6784              	.LLST55:
 6785 0519 2A010000 		.4byte	.LVL82
 6786 051d 34010000 		.4byte	.LVL83
 6787 0521 0200     		.2byte	0x2
 6788 0523 34       		.byte	0x34
 6789 0524 9F       		.byte	0x9f
ARM GAS  /tmp/ccbxFcRO.s 			page 138


 6790 0525 00000000 		.4byte	0
 6791 0529 00000000 		.4byte	0
 6792              	.LLST56:
 6793 052d 2A010000 		.4byte	.LVL82
 6794 0531 34010000 		.4byte	.LVL83
 6795 0535 0600     		.2byte	0x6
 6796 0537 03       		.byte	0x3
 6797 0538 00000000 		.4byte	sd_mmc_spi_response_32
 6798 053c 9F       		.byte	0x9f
 6799 053d 00000000 		.4byte	0
 6800 0541 00000000 		.4byte	0
 6801              	.LLST57:
 6802 0545 4C010000 		.4byte	.LVL84
 6803 0549 50010000 		.4byte	.LVL85
 6804 054d 0200     		.2byte	0x2
 6805 054f 31       		.byte	0x31
 6806 0550 9F       		.byte	0x9f
 6807 0551 00000000 		.4byte	0
 6808 0555 00000000 		.4byte	0
 6809              	.LLST58:
 6810 0559 4C010000 		.4byte	.LVL84
 6811 055d 50010000 		.4byte	.LVL85
 6812 0561 0600     		.2byte	0x6
 6813 0563 03       		.byte	0x3
 6814 0564 00000000 		.4byte	sd_mmc_spi_response_32
 6815 0568 9F       		.byte	0x9f
 6816 0569 00000000 		.4byte	0
 6817 056d 00000000 		.4byte	0
 6818              	.LLST59:
 6819 0571 00000000 		.4byte	.LVL86
 6820 0575 0D000000 		.4byte	.LVL87-1
 6821 0579 0100     		.2byte	0x1
 6822 057b 50       		.byte	0x50
 6823 057c 0D000000 		.4byte	.LVL87-1
 6824 0580 14000000 		.4byte	.LFE247
 6825 0584 0400     		.2byte	0x4
 6826 0586 F3       		.byte	0xf3
 6827 0587 01       		.uleb128 0x1
 6828 0588 50       		.byte	0x50
 6829 0589 9F       		.byte	0x9f
 6830 058a 00000000 		.4byte	0
 6831 058e 00000000 		.4byte	0
 6832              	.LLST60:
 6833 0592 00000000 		.4byte	.LVL86
 6834 0596 0D000000 		.4byte	.LVL87-1
 6835 059a 0100     		.2byte	0x1
 6836 059c 51       		.byte	0x51
 6837 059d 0D000000 		.4byte	.LVL87-1
 6838 05a1 14000000 		.4byte	.LFE247
 6839 05a5 0400     		.2byte	0x4
 6840 05a7 F3       		.byte	0xf3
 6841 05a8 01       		.uleb128 0x1
 6842 05a9 51       		.byte	0x51
 6843 05aa 9F       		.byte	0x9f
 6844 05ab 00000000 		.4byte	0
 6845 05af 00000000 		.4byte	0
 6846              	.LLST33:
ARM GAS  /tmp/ccbxFcRO.s 			page 139


 6847 05b3 10000000 		.4byte	.LVL53
 6848 05b7 14000000 		.4byte	.LVL54
 6849 05bb 0200     		.2byte	0x2
 6850 05bd 30       		.byte	0x30
 6851 05be 9F       		.byte	0x9f
 6852 05bf 14000000 		.4byte	.LVL54
 6853 05c3 1E000000 		.4byte	.LVL55
 6854 05c7 0500     		.2byte	0x5
 6855 05c9 3A       		.byte	0x3a
 6856 05ca 74       		.byte	0x74
 6857 05cb 00       		.sleb128 0
 6858 05cc 1C       		.byte	0x1c
 6859 05cd 9F       		.byte	0x9f
 6860 05ce 1E000000 		.4byte	.LVL55
 6861 05d2 24000000 		.4byte	.LVL56
 6862 05d6 0500     		.2byte	0x5
 6863 05d8 3B       		.byte	0x3b
 6864 05d9 74       		.byte	0x74
 6865 05da 00       		.sleb128 0
 6866 05db 1C       		.byte	0x1c
 6867 05dc 9F       		.byte	0x9f
 6868 05dd 00000000 		.4byte	0
 6869 05e1 00000000 		.4byte	0
 6870              	.LLST34:
 6871 05e5 14000000 		.4byte	.LVL54
 6872 05e9 1E000000 		.4byte	.LVL55
 6873 05ed 0200     		.2byte	0x2
 6874 05ef 31       		.byte	0x31
 6875 05f0 9F       		.byte	0x9f
 6876 05f1 00000000 		.4byte	0
 6877 05f5 00000000 		.4byte	0
 6878              	.LLST35:
 6879 05f9 14000000 		.4byte	.LVL54
 6880 05fd 1E000000 		.4byte	.LVL55
 6881 0601 0300     		.2byte	0x3
 6882 0603 91       		.byte	0x91
 6883 0604 6F       		.sleb128 -17
 6884 0605 9F       		.byte	0x9f
 6885 0606 00000000 		.4byte	0
 6886 060a 00000000 		.4byte	0
 6887              	.LLST30:
 6888 060e 00000000 		.4byte	.LVL49
 6889 0612 0C000000 		.4byte	.LVL50
 6890 0616 0100     		.2byte	0x1
 6891 0618 50       		.byte	0x50
 6892 0619 0C000000 		.4byte	.LVL50
 6893 061d 24000000 		.4byte	.LFE245
 6894 0621 0400     		.2byte	0x4
 6895 0623 F3       		.byte	0xf3
 6896 0624 01       		.uleb128 0x1
 6897 0625 50       		.byte	0x50
 6898 0626 9F       		.byte	0x9f
 6899 0627 00000000 		.4byte	0
 6900 062b 00000000 		.4byte	0
 6901              	.LLST31:
 6902 062f 12000000 		.4byte	.LVL51
 6903 0633 18000000 		.4byte	.LVL52
ARM GAS  /tmp/ccbxFcRO.s 			page 140


 6904 0637 0200     		.2byte	0x2
 6905 0639 31       		.byte	0x31
 6906 063a 9F       		.byte	0x9f
 6907 063b 00000000 		.4byte	0
 6908 063f 00000000 		.4byte	0
 6909              	.LLST32:
 6910 0643 12000000 		.4byte	.LVL51
 6911 0647 18000000 		.4byte	.LVL52
 6912 064b 0300     		.2byte	0x3
 6913 064d 08       		.byte	0x8
 6914 064e 32       		.byte	0x32
 6915 064f 9F       		.byte	0x9f
 6916 0650 00000000 		.4byte	0
 6917 0654 00000000 		.4byte	0
 6918              	.LLST23:
 6919 0658 00000000 		.4byte	.LVL39
 6920 065c 16000000 		.4byte	.LVL43
 6921 0660 0100     		.2byte	0x1
 6922 0662 50       		.byte	0x50
 6923 0663 16000000 		.4byte	.LVL43
 6924 0667 3C000000 		.4byte	.LFE244
 6925 066b 0400     		.2byte	0x4
 6926 066d F3       		.byte	0xf3
 6927 066e 01       		.uleb128 0x1
 6928 066f 50       		.byte	0x50
 6929 0670 9F       		.byte	0x9f
 6930 0671 00000000 		.4byte	0
 6931 0675 00000000 		.4byte	0
 6932              	.LLST24:
 6933 0679 00000000 		.4byte	.LVL39
 6934 067d 0C000000 		.4byte	.LVL42
 6935 0681 0100     		.2byte	0x1
 6936 0683 51       		.byte	0x51
 6937 0684 0C000000 		.4byte	.LVL42
 6938 0688 1C000000 		.4byte	.LVL44
 6939 068c 0400     		.2byte	0x4
 6940 068e F3       		.byte	0xf3
 6941 068f 01       		.uleb128 0x1
 6942 0690 51       		.byte	0x51
 6943 0691 9F       		.byte	0x9f
 6944 0692 00000000 		.4byte	0
 6945 0696 00000000 		.4byte	0
 6946              	.LLST25:
 6947 069a 00000000 		.4byte	.LVL39
 6948 069e 02000000 		.4byte	.LVL40
 6949 06a2 0100     		.2byte	0x1
 6950 06a4 52       		.byte	0x52
 6951 06a5 02000000 		.4byte	.LVL40
 6952 06a9 3C000000 		.4byte	.LFE244
 6953 06ad 0400     		.2byte	0x4
 6954 06af F3       		.byte	0xf3
 6955 06b0 01       		.uleb128 0x1
 6956 06b1 52       		.byte	0x52
 6957 06b2 9F       		.byte	0x9f
 6958 06b3 00000000 		.4byte	0
 6959 06b7 00000000 		.4byte	0
 6960              	.LLST26:
ARM GAS  /tmp/ccbxFcRO.s 			page 141


 6961 06bb 00000000 		.4byte	.LVL39
 6962 06bf 04000000 		.4byte	.LVL41
 6963 06c3 0100     		.2byte	0x1
 6964 06c5 53       		.byte	0x53
 6965 06c6 04000000 		.4byte	.LVL41
 6966 06ca 3C000000 		.4byte	.LFE244
 6967 06ce 0400     		.2byte	0x4
 6968 06d0 F3       		.byte	0xf3
 6969 06d1 01       		.uleb128 0x1
 6970 06d2 53       		.byte	0x53
 6971 06d3 9F       		.byte	0x9f
 6972 06d4 00000000 		.4byte	0
 6973 06d8 00000000 		.4byte	0
 6974              	.LLST27:
 6975 06dc 1C000000 		.4byte	.LVL44
 6976 06e0 1F000000 		.4byte	.LVL45-1
 6977 06e4 0100     		.2byte	0x1
 6978 06e6 50       		.byte	0x50
 6979 06e7 1F000000 		.4byte	.LVL45-1
 6980 06eb 2E000000 		.4byte	.LVL48
 6981 06ef 0100     		.2byte	0x1
 6982 06f1 54       		.byte	0x54
 6983 06f2 00000000 		.4byte	0
 6984 06f6 00000000 		.4byte	0
 6985              	.LLST28:
 6986 06fa 26000000 		.4byte	.LVL46
 6987 06fe 2C000000 		.4byte	.LVL47
 6988 0702 0200     		.2byte	0x2
 6989 0704 31       		.byte	0x31
 6990 0705 9F       		.byte	0x9f
 6991 0706 00000000 		.4byte	0
 6992 070a 00000000 		.4byte	0
 6993              	.LLST29:
 6994 070e 26000000 		.4byte	.LVL46
 6995 0712 2C000000 		.4byte	.LVL47
 6996 0716 0300     		.2byte	0x3
 6997 0718 08       		.byte	0x8
 6998 0719 32       		.byte	0x32
 6999 071a 9F       		.byte	0x9f
 7000 071b 00000000 		.4byte	0
 7001 071f 00000000 		.4byte	0
 7002              	.LLST22:
 7003 0723 00000000 		.4byte	.LVL35
 7004 0727 0E000000 		.4byte	.LVL36
 7005 072b 0100     		.2byte	0x1
 7006 072d 50       		.byte	0x50
 7007 072e 0E000000 		.4byte	.LVL36
 7008 0732 24000000 		.4byte	.LFE243
 7009 0736 0400     		.2byte	0x4
 7010 0738 F3       		.byte	0xf3
 7011 0739 01       		.uleb128 0x1
 7012 073a 50       		.byte	0x50
 7013 073b 9F       		.byte	0x9f
 7014 073c 00000000 		.4byte	0
 7015 0740 00000000 		.4byte	0
 7016              	.LLST21:
 7017 0744 00000000 		.4byte	.LVL32
ARM GAS  /tmp/ccbxFcRO.s 			page 142


 7018 0748 08000000 		.4byte	.LVL34
 7019 074c 0100     		.2byte	0x1
 7020 074e 50       		.byte	0x50
 7021 074f 08000000 		.4byte	.LVL34
 7022 0753 10000000 		.4byte	.LFE241
 7023 0757 0500     		.2byte	0x5
 7024 0759 03       		.byte	0x3
 7025 075a 00000000 		.4byte	spiIdleFunc
 7026 075e 00000000 		.4byte	0
 7027 0762 00000000 		.4byte	0
 7028              	.LLST13:
 7029 0766 12000000 		.4byte	.LVL23
 7030 076a 16000000 		.4byte	.LVL24
 7031 076e 0200     		.2byte	0x2
 7032 0770 32       		.byte	0x32
 7033 0771 9F       		.byte	0x9f
 7034 0772 00000000 		.4byte	0
 7035 0776 00000000 		.4byte	0
 7036              	.LLST14:
 7037 077a 12000000 		.4byte	.LVL23
 7038 077e 16000000 		.4byte	.LVL24
 7039 0782 0300     		.2byte	0x3
 7040 0784 91       		.byte	0x91
 7041 0785 76       		.sleb128 -10
 7042 0786 9F       		.byte	0x9f
 7043 0787 00000000 		.4byte	0
 7044 078b 00000000 		.4byte	0
 7045              	.LLST15:
 7046 078f 16000000 		.4byte	.LVL24
 7047 0793 22000000 		.4byte	.LVL26
 7048 0797 0200     		.2byte	0x2
 7049 0799 31       		.byte	0x31
 7050 079a 9F       		.byte	0x9f
 7051 079b 00000000 		.4byte	0
 7052 079f 00000000 		.4byte	0
 7053              	.LLST16:
 7054 07a3 16000000 		.4byte	.LVL24
 7055 07a7 1C000000 		.4byte	.LVL25
 7056 07ab 0300     		.2byte	0x3
 7057 07ad 91       		.byte	0x91
 7058 07ae 75       		.sleb128 -11
 7059 07af 9F       		.byte	0x9f
 7060 07b0 1C000000 		.4byte	.LVL25
 7061 07b4 21000000 		.4byte	.LVL26-1
 7062 07b8 0100     		.2byte	0x1
 7063 07ba 51       		.byte	0x51
 7064 07bb 21000000 		.4byte	.LVL26-1
 7065 07bf 22000000 		.4byte	.LVL26
 7066 07c3 0300     		.2byte	0x3
 7067 07c5 91       		.byte	0x91
 7068 07c6 75       		.sleb128 -11
 7069 07c7 9F       		.byte	0x9f
 7070 07c8 00000000 		.4byte	0
 7071 07cc 00000000 		.4byte	0
 7072              	.LLST0:
 7073 07d0 10000000 		.4byte	.LVL0
 7074 07d4 14000000 		.4byte	.LVL1
ARM GAS  /tmp/ccbxFcRO.s 			page 143


 7075 07d8 0200     		.2byte	0x2
 7076 07da 31       		.byte	0x31
 7077 07db 9F       		.byte	0x9f
 7078 07dc 00000000 		.4byte	0
 7079 07e0 00000000 		.4byte	0
 7080              	.LLST1:
 7081 07e4 10000000 		.4byte	.LVL0
 7082 07e8 14000000 		.4byte	.LVL1
 7083 07ec 0300     		.2byte	0x3
 7084 07ee 91       		.byte	0x91
 7085 07ef 76       		.sleb128 -10
 7086 07f0 9F       		.byte	0x9f
 7087 07f1 00000000 		.4byte	0
 7088 07f5 00000000 		.4byte	0
 7089              	.LLST2:
 7090 07f9 14000000 		.4byte	.LVL1
 7091 07fd 30000000 		.4byte	.LVL3
 7092 0801 0200     		.2byte	0x2
 7093 0803 31       		.byte	0x31
 7094 0804 9F       		.byte	0x9f
 7095 0805 00000000 		.4byte	0
 7096 0809 00000000 		.4byte	0
 7097              	.LLST3:
 7098 080d 14000000 		.4byte	.LVL1
 7099 0811 20000000 		.4byte	.LVL2
 7100 0815 0300     		.2byte	0x3
 7101 0817 91       		.byte	0x91
 7102 0818 77       		.sleb128 -9
 7103 0819 9F       		.byte	0x9f
 7104 081a 20000000 		.4byte	.LVL2
 7105 081e 2F000000 		.4byte	.LVL3-1
 7106 0822 0100     		.2byte	0x1
 7107 0824 50       		.byte	0x50
 7108 0825 2F000000 		.4byte	.LVL3-1
 7109 0829 30000000 		.4byte	.LVL3
 7110 082d 0300     		.2byte	0x3
 7111 082f 91       		.byte	0x91
 7112 0830 77       		.sleb128 -9
 7113 0831 9F       		.byte	0x9f
 7114 0832 00000000 		.4byte	0
 7115 0836 00000000 		.4byte	0
 7116              	.LLST10:
 7117 083a 0E000000 		.4byte	.LVL14
 7118 083e 10000000 		.4byte	.LVL15
 7119 0842 0600     		.2byte	0x6
 7120 0844 0C       		.byte	0xc
 7121 0845 1FA10700 		.4byte	0x7a11f
 7122 0849 9F       		.byte	0x9f
 7123 084a 10000000 		.4byte	.LVL15
 7124 084e 16000000 		.4byte	.LVL16
 7125 0852 0300     		.2byte	0x3
 7126 0854 74       		.byte	0x74
 7127 0855 7E       		.sleb128 -2
 7128 0856 9F       		.byte	0x9f
 7129 0857 16000000 		.4byte	.LVL16
 7130 085b 22000000 		.4byte	.LVL18
 7131 085f 0300     		.2byte	0x3
ARM GAS  /tmp/ccbxFcRO.s 			page 144


 7132 0861 74       		.byte	0x74
 7133 0862 7F       		.sleb128 -1
 7134 0863 9F       		.byte	0x9f
 7135 0864 22000000 		.4byte	.LVL18
 7136 0868 4C000000 		.4byte	.LVL21
 7137 086c 0300     		.2byte	0x3
 7138 086e 74       		.byte	0x74
 7139 086f 7E       		.sleb128 -2
 7140 0870 9F       		.byte	0x9f
 7141 0871 4C000000 		.4byte	.LVL21
 7142 0875 58000000 		.4byte	.LVL22
 7143 0879 0300     		.2byte	0x3
 7144 087b 74       		.byte	0x74
 7145 087c 7F       		.sleb128 -1
 7146 087d 9F       		.byte	0x9f
 7147 087e 58000000 		.4byte	.LVL22
 7148 0882 60000000 		.4byte	.LFE235
 7149 0886 0300     		.2byte	0x3
 7150 0888 70       		.byte	0x70
 7151 0889 7F       		.sleb128 -1
 7152 088a 9F       		.byte	0x9f
 7153 088b 00000000 		.4byte	0
 7154 088f 00000000 		.4byte	0
 7155              	.LLST11:
 7156 0893 18000000 		.4byte	.LVL17
 7157 0897 22000000 		.4byte	.LVL18
 7158 089b 0200     		.2byte	0x2
 7159 089d 31       		.byte	0x31
 7160 089e 9F       		.byte	0x9f
 7161 089f 00000000 		.4byte	0
 7162 08a3 00000000 		.4byte	0
 7163              	.LLST12:
 7164 08a7 18000000 		.4byte	.LVL17
 7165 08ab 22000000 		.4byte	.LVL18
 7166 08af 0300     		.2byte	0x3
 7167 08b1 91       		.byte	0x91
 7168 08b2 6F       		.sleb128 -17
 7169 08b3 9F       		.byte	0x9f
 7170 08b4 00000000 		.4byte	0
 7171 08b8 00000000 		.4byte	0
 7172              	.LLST4:
 7173 08bc 18000000 		.4byte	.LVL5
 7174 08c0 2C000000 		.4byte	.LVL7
 7175 08c4 0600     		.2byte	0x6
 7176 08c6 0C       		.byte	0xc
 7177 08c7 400D0300 		.4byte	0x30d40
 7178 08cb 9F       		.byte	0x9f
 7179 08cc 2C000000 		.4byte	.LVL7
 7180 08d0 2E000000 		.4byte	.LVL8
 7181 08d4 0600     		.2byte	0x6
 7182 08d6 0C       		.byte	0xc
 7183 08d7 3F0D0300 		.4byte	0x30d3f
 7184 08db 9F       		.byte	0x9f
 7185 08dc 2E000000 		.4byte	.LVL8
 7186 08e0 32000000 		.4byte	.LVL9
 7187 08e4 0300     		.2byte	0x3
 7188 08e6 74       		.byte	0x74
ARM GAS  /tmp/ccbxFcRO.s 			page 145


 7189 08e7 7F       		.sleb128 -1
 7190 08e8 9F       		.byte	0x9f
 7191 08e9 32000000 		.4byte	.LVL9
 7192 08ed 34000000 		.4byte	.LVL10
 7193 08f1 0300     		.2byte	0x3
 7194 08f3 74       		.byte	0x74
 7195 08f4 7E       		.sleb128 -2
 7196 08f5 9F       		.byte	0x9f
 7197 08f6 34000000 		.4byte	.LVL10
 7198 08fa 50000000 		.4byte	.LVL13
 7199 08fe 0300     		.2byte	0x3
 7200 0900 74       		.byte	0x74
 7201 0901 7F       		.sleb128 -1
 7202 0902 9F       		.byte	0x9f
 7203 0903 50000000 		.4byte	.LVL13
 7204 0907 54000000 		.4byte	.LFE234
 7205 090b 0300     		.2byte	0x3
 7206 090d 70       		.byte	0x70
 7207 090e 7F       		.sleb128 -1
 7208 090f 9F       		.byte	0x9f
 7209 0910 00000000 		.4byte	0
 7210 0914 00000000 		.4byte	0
 7211              	.LLST5:
 7212 0918 12000000 		.4byte	.LVL4
 7213 091c 18000000 		.4byte	.LVL5
 7214 0920 0200     		.2byte	0x2
 7215 0922 31       		.byte	0x31
 7216 0923 9F       		.byte	0x9f
 7217 0924 00000000 		.4byte	0
 7218 0928 00000000 		.4byte	0
 7219              	.LLST6:
 7220 092c 12000000 		.4byte	.LVL4
 7221 0930 18000000 		.4byte	.LVL5
 7222 0934 0300     		.2byte	0x3
 7223 0936 91       		.byte	0x91
 7224 0937 6F       		.sleb128 -17
 7225 0938 9F       		.byte	0x9f
 7226 0939 00000000 		.4byte	0
 7227 093d 00000000 		.4byte	0
 7228              	.LLST7:
 7229 0941 22000000 		.4byte	.LVL6
 7230 0945 2C000000 		.4byte	.LVL7
 7231 0949 0200     		.2byte	0x2
 7232 094b 31       		.byte	0x31
 7233 094c 9F       		.byte	0x9f
 7234 094d 00000000 		.4byte	0
 7235 0951 00000000 		.4byte	0
 7236              	.LLST8:
 7237 0955 22000000 		.4byte	.LVL6
 7238 0959 2C000000 		.4byte	.LVL7
 7239 095d 0300     		.2byte	0x3
 7240 095f 91       		.byte	0x91
 7241 0960 6F       		.sleb128 -17
 7242 0961 9F       		.byte	0x9f
 7243 0962 00000000 		.4byte	0
 7244 0966 00000000 		.4byte	0
 7245              	.LLST9:
ARM GAS  /tmp/ccbxFcRO.s 			page 146


 7246 096a 18000000 		.4byte	.LVL5
 7247 096e 50000000 		.4byte	.LVL13
 7248 0972 0300     		.2byte	0x3
 7249 0974 91       		.byte	0x91
 7250 0975 6F       		.sleb128 -17
 7251 0976 9F       		.byte	0x9f
 7252 0977 50000000 		.4byte	.LVL13
 7253 097b 54000000 		.4byte	.LFE234
 7254 097f 0300     		.2byte	0x3
 7255 0981 7D       		.byte	0x7d
 7256 0982 6F       		.sleb128 -17
 7257 0983 9F       		.byte	0x9f
 7258 0984 00000000 		.4byte	0
 7259 0988 00000000 		.4byte	0
 7260              	.LLST17:
 7261 098c 2E000000 		.4byte	.LVL27
 7262 0990 34000000 		.4byte	.LVL28
 7263 0994 0200     		.2byte	0x2
 7264 0996 31       		.byte	0x31
 7265 0997 9F       		.byte	0x9f
 7266 0998 00000000 		.4byte	0
 7267 099c 00000000 		.4byte	0
 7268              	.LLST18:
 7269 09a0 2E000000 		.4byte	.LVL27
 7270 09a4 34000000 		.4byte	.LVL28
 7271 09a8 0300     		.2byte	0x3
 7272 09aa 91       		.byte	0x91
 7273 09ab 77       		.sleb128 -9
 7274 09ac 9F       		.byte	0x9f
 7275 09ad 00000000 		.4byte	0
 7276 09b1 00000000 		.4byte	0
 7277              	.LLST19:
 7278 09b5 40000000 		.4byte	.LVL29
 7279 09b9 44000000 		.4byte	.LVL30
 7280 09bd 0200     		.2byte	0x2
 7281 09bf 31       		.byte	0x31
 7282 09c0 9F       		.byte	0x9f
 7283 09c1 00000000 		.4byte	0
 7284 09c5 00000000 		.4byte	0
 7285              	.LLST20:
 7286 09c9 40000000 		.4byte	.LVL29
 7287 09cd 44000000 		.4byte	.LVL30
 7288 09d1 0300     		.2byte	0x3
 7289 09d3 91       		.byte	0x91
 7290 09d4 77       		.sleb128 -9
 7291 09d5 9F       		.byte	0x9f
 7292 09d6 00000000 		.4byte	0
 7293 09da 00000000 		.4byte	0
 7294              		.section	.debug_aranges,"",%progbits
 7295 0000 BC000000 		.4byte	0xbc
 7296 0004 0200     		.2byte	0x2
 7297 0006 00000000 		.4byte	.Ldebug_info0
 7298 000a 04       		.byte	0x4
 7299 000b 00       		.byte	0
 7300 000c 0000     		.2byte	0
 7301 000e 0000     		.2byte	0
 7302 0010 00000000 		.4byte	.LFB237
ARM GAS  /tmp/ccbxFcRO.s 			page 147


 7303 0014 3C000000 		.4byte	.LFE237-.LFB237
 7304 0018 00000000 		.4byte	.LFB234
 7305 001c 54000000 		.4byte	.LFE234-.LFB234
 7306 0020 00000000 		.4byte	.LFB235
 7307 0024 60000000 		.4byte	.LFE235-.LFB235
 7308 0028 00000000 		.4byte	.LFB238
 7309 002c 60000000 		.4byte	.LFE238-.LFB238
 7310 0030 00000000 		.4byte	.LFB239
 7311 0034 64000000 		.4byte	.LFE239-.LFB239
 7312 0038 00000000 		.4byte	.LFB240
 7313 003c 08000000 		.4byte	.LFE240-.LFB240
 7314 0040 00000000 		.4byte	.LFB241
 7315 0044 10000000 		.4byte	.LFE241-.LFB241
 7316 0048 00000000 		.4byte	.LFB242
 7317 004c 0C000000 		.4byte	.LFE242-.LFB242
 7318 0050 00000000 		.4byte	.LFB243
 7319 0054 24000000 		.4byte	.LFE243-.LFB243
 7320 0058 00000000 		.4byte	.LFB244
 7321 005c 3C000000 		.4byte	.LFE244-.LFB244
 7322 0060 00000000 		.4byte	.LFB245
 7323 0064 24000000 		.4byte	.LFE245-.LFB245
 7324 0068 00000000 		.4byte	.LFB246
 7325 006c 30000000 		.4byte	.LFE246-.LFB246
 7326 0070 00000000 		.4byte	.LFB248
 7327 0074 6C010000 		.4byte	.LFE248-.LFB248
 7328 0078 00000000 		.4byte	.LFB247
 7329 007c 14000000 		.4byte	.LFE247-.LFB247
 7330 0080 00000000 		.4byte	.LFB249
 7331 0084 0C000000 		.4byte	.LFE249-.LFB249
 7332 0088 00000000 		.4byte	.LFB250
 7333 008c 60000000 		.4byte	.LFE250-.LFB250
 7334 0090 00000000 		.4byte	.LFB251
 7335 0094 70000000 		.4byte	.LFE251-.LFB251
 7336 0098 00000000 		.4byte	.LFB252
 7337 009c 70000000 		.4byte	.LFE252-.LFB252
 7338 00a0 00000000 		.4byte	.LFB253
 7339 00a4 04000000 		.4byte	.LFE253-.LFB253
 7340 00a8 00000000 		.4byte	.LFB254
 7341 00ac 68000000 		.4byte	.LFE254-.LFB254
 7342 00b0 00000000 		.4byte	.LFB255
 7343 00b4 1C000000 		.4byte	.LFE255-.LFB255
 7344 00b8 00000000 		.4byte	0
 7345 00bc 00000000 		.4byte	0
 7346              		.section	.debug_ranges,"",%progbits
 7347              	.Ldebug_ranges0:
 7348 0000 06000000 		.4byte	.LBB64
 7349 0004 0A000000 		.4byte	.LBE64
 7350 0008 10000000 		.4byte	.LBB67
 7351 000c 14000000 		.4byte	.LBE67
 7352 0010 00000000 		.4byte	0
 7353 0014 00000000 		.4byte	0
 7354 0018 16000000 		.4byte	.LBB68
 7355 001c 1A000000 		.4byte	.LBE68
 7356 0020 1C000000 		.4byte	.LBB72
 7357 0024 20000000 		.4byte	.LBE72
 7358 0028 2C000000 		.4byte	.LBB73
 7359 002c 30000000 		.4byte	.LBE73
ARM GAS  /tmp/ccbxFcRO.s 			page 148


 7360 0030 00000000 		.4byte	0
 7361 0034 00000000 		.4byte	0
 7362 0038 06000000 		.4byte	.LBB74
 7363 003c 0A000000 		.4byte	.LBE74
 7364 0040 12000000 		.4byte	.LBB81
 7365 0044 18000000 		.4byte	.LBE81
 7366 0048 00000000 		.4byte	0
 7367 004c 00000000 		.4byte	0
 7368 0050 0C000000 		.4byte	.LBB77
 7369 0054 0E000000 		.4byte	.LBE77
 7370 0058 22000000 		.4byte	.LBB84
 7371 005c 32000000 		.4byte	.LBE84
 7372 0060 3A000000 		.4byte	.LBB85
 7373 0064 40000000 		.4byte	.LBE85
 7374 0068 00000000 		.4byte	0
 7375 006c 00000000 		.4byte	0
 7376 0070 08000000 		.4byte	.LBB88
 7377 0074 0C000000 		.4byte	.LBE88
 7378 0078 12000000 		.4byte	.LBB91
 7379 007c 16000000 		.4byte	.LBE91
 7380 0080 00000000 		.4byte	0
 7381 0084 00000000 		.4byte	0
 7382 0088 24000000 		.4byte	.LBB102
 7383 008c 28000000 		.4byte	.LBE102
 7384 0090 2E000000 		.4byte	.LBB105
 7385 0094 34000000 		.4byte	.LBE105
 7386 0098 00000000 		.4byte	0
 7387 009c 00000000 		.4byte	0
 7388 00a0 36000000 		.4byte	.LBB106
 7389 00a4 3C000000 		.4byte	.LBE106
 7390 00a8 40000000 		.4byte	.LBB109
 7391 00ac 44000000 		.4byte	.LBE109
 7392 00b0 00000000 		.4byte	0
 7393 00b4 00000000 		.4byte	0
 7394 00b8 02000000 		.4byte	.LBB110
 7395 00bc 04000000 		.4byte	.LBE110
 7396 00c0 06000000 		.4byte	.LBB111
 7397 00c4 0A000000 		.4byte	.LBE111
 7398 00c8 0C000000 		.4byte	.LBB112
 7399 00cc 10000000 		.4byte	.LBE112
 7400 00d0 12000000 		.4byte	.LBB113
 7401 00d4 14000000 		.4byte	.LBE113
 7402 00d8 16000000 		.4byte	.LBB114
 7403 00dc 24000000 		.4byte	.LBE114
 7404 00e0 00000000 		.4byte	0
 7405 00e4 00000000 		.4byte	0
 7406 00e8 28000000 		.4byte	.LBB121
 7407 00ec 2A000000 		.4byte	.LBE121
 7408 00f0 46000000 		.4byte	.LBB126
 7409 00f4 76000000 		.4byte	.LBE126
 7410 00f8 78000000 		.4byte	.LBB131
 7411 00fc 7A000000 		.4byte	.LBE131
 7412 0100 80000000 		.4byte	.LBB133
 7413 0104 82000000 		.4byte	.LBE133
 7414 0108 00000000 		.4byte	0
 7415 010c 00000000 		.4byte	0
 7416 0110 76000000 		.4byte	.LBB127
ARM GAS  /tmp/ccbxFcRO.s 			page 149


 7417 0114 78000000 		.4byte	.LBE127
 7418 0118 7A000000 		.4byte	.LBB132
 7419 011c 80000000 		.4byte	.LBE132
 7420 0120 8E000000 		.4byte	.LBB138
 7421 0124 92000000 		.4byte	.LBE138
 7422 0128 00000000 		.4byte	0
 7423 012c 00000000 		.4byte	0
 7424 0130 86000000 		.4byte	.LBB134
 7425 0134 8A000000 		.4byte	.LBE134
 7426 0138 9E000000 		.4byte	.LBB141
 7427 013c A2000000 		.4byte	.LBE141
 7428 0140 A6000000 		.4byte	.LBB142
 7429 0144 AC000000 		.4byte	.LBE142
 7430 0148 00000000 		.4byte	0
 7431 014c 00000000 		.4byte	0
 7432 0150 42010000 		.4byte	.LBB147
 7433 0154 48010000 		.4byte	.LBE147
 7434 0158 4C010000 		.4byte	.LBB150
 7435 015c 52010000 		.4byte	.LBE150
 7436 0160 00000000 		.4byte	0
 7437 0164 00000000 		.4byte	0
 7438 0168 1C000000 		.4byte	.LBB159
 7439 016c 26000000 		.4byte	.LBE159
 7440 0170 4C000000 		.4byte	.LBB174
 7441 0174 50000000 		.4byte	.LBE174
 7442 0178 00000000 		.4byte	0
 7443 017c 00000000 		.4byte	0
 7444 0180 2E000000 		.4byte	.LBB162
 7445 0184 32000000 		.4byte	.LBE162
 7446 0188 34000000 		.4byte	.LBB172
 7447 018c 36000000 		.4byte	.LBE172
 7448 0190 3C000000 		.4byte	.LBB173
 7449 0194 40000000 		.4byte	.LBE173
 7450 0198 00000000 		.4byte	0
 7451 019c 00000000 		.4byte	0
 7452 01a0 00000000 		.4byte	.LFB237
 7453 01a4 3C000000 		.4byte	.LFE237
 7454 01a8 00000000 		.4byte	.LFB234
 7455 01ac 54000000 		.4byte	.LFE234
 7456 01b0 00000000 		.4byte	.LFB235
 7457 01b4 60000000 		.4byte	.LFE235
 7458 01b8 00000000 		.4byte	.LFB238
 7459 01bc 60000000 		.4byte	.LFE238
 7460 01c0 00000000 		.4byte	.LFB239
 7461 01c4 64000000 		.4byte	.LFE239
 7462 01c8 00000000 		.4byte	.LFB240
 7463 01cc 08000000 		.4byte	.LFE240
 7464 01d0 00000000 		.4byte	.LFB241
 7465 01d4 10000000 		.4byte	.LFE241
 7466 01d8 00000000 		.4byte	.LFB242
 7467 01dc 0C000000 		.4byte	.LFE242
 7468 01e0 00000000 		.4byte	.LFB243
 7469 01e4 24000000 		.4byte	.LFE243
 7470 01e8 00000000 		.4byte	.LFB244
 7471 01ec 3C000000 		.4byte	.LFE244
 7472 01f0 00000000 		.4byte	.LFB245
 7473 01f4 24000000 		.4byte	.LFE245
ARM GAS  /tmp/ccbxFcRO.s 			page 150


 7474 01f8 00000000 		.4byte	.LFB246
 7475 01fc 30000000 		.4byte	.LFE246
 7476 0200 00000000 		.4byte	.LFB248
 7477 0204 6C010000 		.4byte	.LFE248
 7478 0208 00000000 		.4byte	.LFB247
 7479 020c 14000000 		.4byte	.LFE247
 7480 0210 00000000 		.4byte	.LFB249
 7481 0214 0C000000 		.4byte	.LFE249
 7482 0218 00000000 		.4byte	.LFB250
 7483 021c 60000000 		.4byte	.LFE250
 7484 0220 00000000 		.4byte	.LFB251
 7485 0224 70000000 		.4byte	.LFE251
 7486 0228 00000000 		.4byte	.LFB252
 7487 022c 70000000 		.4byte	.LFE252
 7488 0230 00000000 		.4byte	.LFB253
 7489 0234 04000000 		.4byte	.LFE253
 7490 0238 00000000 		.4byte	.LFB254
 7491 023c 68000000 		.4byte	.LFE254
 7492 0240 00000000 		.4byte	.LFB255
 7493 0244 1C000000 		.4byte	.LFE255
 7494 0248 00000000 		.4byte	0
 7495 024c 00000000 		.4byte	0
 7496              		.section	.debug_line,"",%progbits
 7497              	.Ldebug_line0:
 7498 0000 88070000 		.section	.debug_str,"MS",%progbits,1
 7498      02004803 
 7498      00000201 
 7498      FB0E0D00 
 7498      01010101 
 7499              	.LASF20:
 7500 0000 53797374 		.ascii	"SystemCoreClock\000"
 7500      656D436F 
 7500      7265436C 
 7500      6F636B00 
 7501              	.LASF140:
 7502 0010 5F5F6664 		.ascii	"__fdlibm_xopen\000"
 7502      6C69626D 
 7502      5F786F70 
 7502      656E00
 7503              	.LASF172:
 7504 001f 73737069 		.ascii	"sspi_device\000"
 7504      5F646576 
 7504      69636500 
 7505              	.LASF97:
 7506 002b 63686172 		.ascii	"char\000"
 7506      00
 7507              	.LASF62:
 7508 0030 5F636F6F 		.ascii	"_cookie\000"
 7508      6B696500 
 7509              	.LASF205:
 7510 0038 73645F6D 		.ascii	"sd_mmc_spi_select_device\000"
 7510      6D635F73 
 7510      70695F73 
 7510      656C6563 
 7510      745F6465 
 7511              	.LASF47:
 7512 0051 5F6F6E5F 		.ascii	"_on_exit_args\000"
ARM GAS  /tmp/ccbxFcRO.s 			page 151


 7512      65786974 
 7512      5F617267 
 7512      7300
 7513              	.LASF204:
 7514 005f 736C6F74 		.ascii	"slot\000"
 7514      00
 7515              	.LASF222:
 7516 0064 73645F6D 		.ascii	"sd_mmc_spi_crc7\000"
 7516      6D635F73 
 7516      70695F63 
 7516      72633700 
 7517              	.LASF112:
 7518 0074 5F723438 		.ascii	"_r48\000"
 7518      00
 7519              	.LASF117:
 7520 0079 5F736967 		.ascii	"_signal_buf\000"
 7520      6E616C5F 
 7520      62756600 
 7521              	.LASF0:
 7522 0085 756E7369 		.ascii	"unsigned int\000"
 7522      676E6564 
 7522      20696E74 
 7522      00
 7523              	.LASF146:
 7524 0092 5350495F 		.ascii	"SPI_ERROR_ARGUMENT\000"
 7524      4552524F 
 7524      525F4152 
 7524      47554D45 
 7524      4E5400
 7525              	.LASF168:
 7526 00a5 50776D53 		.ascii	"PwmSlowClock\000"
 7526      6C6F7743 
 7526      6C6F636B 
 7526      00
 7527              	.LASF61:
 7528 00b2 5F6C6266 		.ascii	"_lbfsize\000"
 7528      73697A65 
 7528      00
 7529              	.LASF59:
 7530 00bb 5F666C61 		.ascii	"_flags\000"
 7530      677300
 7531              	.LASF8:
 7532 00c2 5F5F696E 		.ascii	"__int32_t\000"
 7532      7433325F 
 7532      7400
 7533              	.LASF76:
 7534 00cc 5F657272 		.ascii	"_errno\000"
 7534      6E6F00
 7535              	.LASF159:
 7536 00d3 4150494E 		.ascii	"APIN_UART1_RXD\000"
 7536      5F554152 
 7536      54315F52 
 7536      584400
 7537              	.LASF230:
 7538 00e2 73737069 		.ascii	"sspi_deselect_device\000"
 7538      5F646573 
 7538      656C6563 
ARM GAS  /tmp/ccbxFcRO.s 			page 152


 7538      745F6465 
 7538      76696365 
 7539              	.LASF84:
 7540 00f7 5F5F7364 		.ascii	"__sdidinit\000"
 7540      6964696E 
 7540      697400
 7541              	.LASF194:
 7542 0102 73645F6D 		.ascii	"sd_mmc_spi_get_response\000"
 7542      6D635F73 
 7542      70695F67 
 7542      65745F72 
 7542      6573706F 
 7543              	.LASF73:
 7544 011a 5F6D6273 		.ascii	"_mbstate\000"
 7544      74617465 
 7544      00
 7545              	.LASF63:
 7546 0123 5F726561 		.ascii	"_read\000"
 7546      6400
 7547              	.LASF31:
 7548 0129 5F5F554C 		.ascii	"__ULong\000"
 7548      6F6E6700 
 7549              	.LASF119:
 7550 0131 5F6D6272 		.ascii	"_mbrlen_state\000"
 7550      6C656E5F 
 7550      73746174 
 7550      6500
 7551              	.LASF78:
 7552 013f 5F737464 		.ascii	"_stdout\000"
 7552      6F757400 
 7553              	.LASF199:
 7554 0147 636D645F 		.ascii	"cmd_token\000"
 7554      746F6B65 
 7554      6E00
 7555              	.LASF184:
 7556 0151 73706949 		.ascii	"spiIdleFunc\000"
 7556      646C6546 
 7556      756E6300 
 7557              	.LASF23:
 7558 015d 5F66706F 		.ascii	"_fpos_t\000"
 7558      735F7400 
 7559              	.LASF226:
 7560 0165 73645F6D 		.ascii	"sd_mmc_spi_stop_read_block\000"
 7560      6D635F73 
 7560      70695F73 
 7560      746F705F 
 7560      72656164 
 7561              	.LASF54:
 7562 0180 5F666E73 		.ascii	"_fns\000"
 7562      00
 7563              	.LASF129:
 7564 0185 5F676C6F 		.ascii	"_global_impure_ptr\000"
 7564      62616C5F 
 7564      696D7075 
 7564      72655F70 
 7564      747200
 7565              	.LASF131:
ARM GAS  /tmp/ccbxFcRO.s 			page 153


 7566 0198 675F696E 		.ascii	"g_interrupt_enabled\000"
 7566      74657272 
 7566      7570745F 
 7566      656E6162 
 7566      6C656400 
 7567              	.LASF36:
 7568 01ac 5F426967 		.ascii	"_Bigint\000"
 7568      696E7400 
 7569              	.LASF44:
 7570 01b4 5F5F746D 		.ascii	"__tm_wday\000"
 7570      5F776461 
 7570      7900
 7571              	.LASF86:
 7572 01be 5F726573 		.ascii	"_result\000"
 7572      756C7400 
 7573              	.LASF195:
 7574 01c6 73645F6D 		.ascii	"sd_mmc_spi_adtc_start\000"
 7574      6D635F73 
 7574      70695F61 
 7574      6474635F 
 7574      73746172 
 7575              	.LASF17:
 7576 01dc 75696E74 		.ascii	"uint32_t\000"
 7576      33325F74 
 7576      00
 7577              	.LASF192:
 7578 01e5 73645F6D 		.ascii	"sd_mmc_spi_read_word\000"
 7578      6D635F73 
 7578      70695F72 
 7578      6561645F 
 7578      776F7264 
 7579              	.LASF40:
 7580 01fa 5F5F746D 		.ascii	"__tm_hour\000"
 7580      5F686F75 
 7580      7200
 7581              	.LASF166:
 7582 0204 4D617850 		.ascii	"MaxPinNumber\000"
 7582      696E4E75 
 7582      6D626572 
 7582      00
 7583              	.LASF27:
 7584 0211 5F5F636F 		.ascii	"__count\000"
 7584      756E7400 
 7585              	.LASF135:
 7586 0219 666C6F61 		.ascii	"float\000"
 7586      7400
 7587              	.LASF193:
 7588 021f 73645F6D 		.ascii	"sd_mmc_spi_wait_end_of_read_blocks\000"
 7588      6D635F73 
 7588      70695F77 
 7588      6169745F 
 7588      656E645F 
 7589              	.LASF39:
 7590 0242 5F5F746D 		.ascii	"__tm_min\000"
 7590      5F6D696E 
 7590      00
 7591              	.LASF128:
ARM GAS  /tmp/ccbxFcRO.s 			page 154


 7592 024b 5F696D70 		.ascii	"_impure_ptr\000"
 7592      7572655F 
 7592      70747200 
 7593              	.LASF125:
 7594 0257 5F6E6578 		.ascii	"_nextf\000"
 7594      746600
 7595              	.LASF121:
 7596 025e 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 7596      72746F77 
 7596      63735F73 
 7596      74617465 
 7596      00
 7597              	.LASF208:
 7598 026f 68696768 		.ascii	"high_speed\000"
 7598      5F737065 
 7598      656400
 7599              	.LASF13:
 7600 027a 6C6F6E67 		.ascii	"long long unsigned int\000"
 7600      206C6F6E 
 7600      6720756E 
 7600      7369676E 
 7600      65642069 
 7601              	.LASF108:
 7602 0291 5F617363 		.ascii	"_asctime_buf\000"
 7602      74696D65 
 7602      5F627566 
 7602      00
 7603              	.LASF157:
 7604 029e 4150494E 		.ascii	"APIN_UART0_TXD\000"
 7604      5F554152 
 7604      54305F54 
 7604      584400
 7605              	.LASF58:
 7606 02ad 5F5F7346 		.ascii	"__sFILE\000"
 7606      494C4500 
 7607              	.LASF35:
 7608 02b5 5F776473 		.ascii	"_wds\000"
 7608      00
 7609              	.LASF10:
 7610 02ba 5F5F7569 		.ascii	"__uint32_t\000"
 7610      6E743332 
 7610      5F7400
 7611              	.LASF102:
 7612 02c5 5F72616E 		.ascii	"_rand48\000"
 7612      64343800 
 7613              	.LASF6:
 7614 02cd 5F5F7569 		.ascii	"__uint16_t\000"
 7614      6E743136 
 7614      5F7400
 7615              	.LASF182:
 7616 02d8 73645F6D 		.ascii	"sd_mmc_spi_block_size\000"
 7616      6D635F73 
 7616      70695F62 
 7616      6C6F636B 
 7616      5F73697A 
 7617              	.LASF98:
 7618 02ee 5F5F4649 		.ascii	"__FILE\000"
ARM GAS  /tmp/ccbxFcRO.s 			page 155


 7618      4C4500
 7619              	.LASF124:
 7620 02f5 5F685F65 		.ascii	"_h_errno\000"
 7620      72726E6F 
 7620      00
 7621              	.LASF141:
 7622 02fe 5F5F6664 		.ascii	"__fdlibm_posix\000"
 7622      6C69626D 
 7622      5F706F73 
 7622      697800
 7623              	.LASF70:
 7624 030d 5F6F6666 		.ascii	"_offset\000"
 7624      73657400 
 7625              	.LASF67:
 7626 0315 5F756275 		.ascii	"_ubuf\000"
 7626      6600
 7627              	.LASF186:
 7628 031b 73645F6D 		.ascii	"sd_mmc_spi_start_write_blocks\000"
 7628      6D635F73 
 7628      70695F73 
 7628      74617274 
 7628      5F777269 
 7629              	.LASF198:
 7630 0339 64756D6D 		.ascii	"dummy\000"
 7630      7900
 7631              	.LASF149:
 7632 033f 5350495F 		.ascii	"SPI_ERROR_OVERRUN_AND_MODE_FAULT\000"
 7632      4552524F 
 7632      525F4F56 
 7632      45525255 
 7632      4E5F414E 
 7633              	.LASF81:
 7634 0360 5F656D65 		.ascii	"_emergency\000"
 7634      7267656E 
 7634      637900
 7635              	.LASF228:
 7636 036b 75736563 		.ascii	"usec\000"
 7636      00
 7637              	.LASF134:
 7638 0370 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 7638      6972715F 
 7638      70726576 
 7638      5F696E74 
 7638      65727275 
 7639              	.LASF2:
 7640 038d 73697A65 		.ascii	"size_t\000"
 7640      5F7400
 7641              	.LASF38:
 7642 0394 5F5F746D 		.ascii	"__tm_sec\000"
 7642      5F736563 
 7642      00
 7643              	.LASF130:
 7644 039d 7375626F 		.ascii	"suboptarg\000"
 7644      70746172 
 7644      6700
 7645              	.LASF45:
 7646 03a7 5F5F746D 		.ascii	"__tm_yday\000"
ARM GAS  /tmp/ccbxFcRO.s 			page 156


 7646      5F796461 
 7646      7900
 7647              	.LASF28:
 7648 03b1 5F5F7661 		.ascii	"__value\000"
 7648      6C756500 
 7649              	.LASF80:
 7650 03b9 5F696E63 		.ascii	"_inc\000"
 7650      00
 7651              	.LASF132:
 7652 03be 5F426F6F 		.ascii	"_Bool\000"
 7652      6C00
 7653              	.LASF32:
 7654 03c4 5F6E6578 		.ascii	"_next\000"
 7654      7400
 7655              	.LASF212:
 7656 03ca 73645F6D 		.ascii	"sd_mmc_spi_set_idle_func\000"
 7656      6D635F73 
 7656      70695F73 
 7656      65745F69 
 7656      646C655F 
 7657              	.LASF148:
 7658 03e3 5350495F 		.ascii	"SPI_ERROR_MODE_FAULT\000"
 7658      4552524F 
 7658      525F4D4F 
 7658      44455F46 
 7658      41554C54 
 7659              	.LASF209:
 7660 03f8 73645F6D 		.ascii	"sd_mmc_spi_init\000"
 7660      6D635F73 
 7660      70695F69 
 7660      6E697400 
 7661              	.LASF206:
 7662 0408 636C6F63 		.ascii	"clock\000"
 7662      6B00
 7663              	.LASF88:
 7664 040e 5F703573 		.ascii	"_p5s\000"
 7664      00
 7665              	.LASF187:
 7666 0413 6E625F62 		.ascii	"nb_block\000"
 7666      6C6F636B 
 7666      00
 7667              	.LASF161:
 7668 041c 4150494E 		.ascii	"APIN_HSMCI_CLOCK\000"
 7668      5F48534D 
 7668      43495F43 
 7668      4C4F434B 
 7668      00
 7669              	.LASF123:
 7670 042d 5F776373 		.ascii	"_wcsrtombs_state\000"
 7670      72746F6D 
 7670      62735F73 
 7670      74617465 
 7670      00
 7671              	.LASF113:
 7672 043e 5F6D626C 		.ascii	"_mblen_state\000"
 7672      656E5F73 
 7672      74617465 
ARM GAS  /tmp/ccbxFcRO.s 			page 157


 7672      00
 7673              	.LASF174:
 7674 044b 6373506F 		.ascii	"csPolarity\000"
 7674      6C617269 
 7674      747900
 7675              	.LASF79:
 7676 0456 5F737464 		.ascii	"_stderr\000"
 7676      65727200 
 7677              	.LASF41:
 7678 045e 5F5F746D 		.ascii	"__tm_mday\000"
 7678      5F6D6461 
 7678      7900
 7679              	.LASF169:
 7680 0468 73646D6D 		.ascii	"sdmmc_cmd_def_t\000"
 7680      635F636D 
 7680      645F6465 
 7680      665F7400 
 7681              	.LASF94:
 7682 0478 5F736967 		.ascii	"_sig_func\000"
 7682      5F66756E 
 7682      6300
 7683              	.LASF120:
 7684 0482 5F6D6272 		.ascii	"_mbrtowc_state\000"
 7684      746F7763 
 7684      5F737461 
 7684      746500
 7685              	.LASF93:
 7686 0491 5F617465 		.ascii	"_atexit0\000"
 7686      78697430 
 7686      00
 7687              	.LASF87:
 7688 049a 5F726573 		.ascii	"_result_k\000"
 7688      756C745F 
 7688      6B00
 7689              	.LASF150:
 7690 04a4 7370695F 		.ascii	"spi_status_t\000"
 7690      73746174 
 7690      75735F74 
 7690      00
 7691              	.LASF25:
 7692 04b1 5F5F7763 		.ascii	"__wch\000"
 7692      6800
 7693              	.LASF171:
 7694 04b7 73706949 		.ascii	"spiIdleFunc_t\000"
 7694      646C6546 
 7694      756E635F 
 7694      7400
 7695              	.LASF14:
 7696 04c5 75696E74 		.ascii	"uint8_t\000"
 7696      385F7400 
 7697              	.LASF156:
 7698 04cd 4150494E 		.ascii	"APIN_UART0_RXD\000"
 7698      5F554152 
 7698      54305F52 
 7698      584400
 7699              	.LASF66:
 7700 04dc 5F636C6F 		.ascii	"_close\000"
ARM GAS  /tmp/ccbxFcRO.s 			page 158


 7700      736500
 7701              	.LASF191:
 7702 04e3 5F656376 		.ascii	"_ecv_value\000"
 7702      5F76616C 
 7702      756500
 7703              	.LASF147:
 7704 04ee 5350495F 		.ascii	"SPI_ERROR_OVERRUN\000"
 7704      4552524F 
 7704      525F4F56 
 7704      45525255 
 7704      4E00
 7705              	.LASF152:
 7706 0500 5F74696D 		.ascii	"_timezone\000"
 7706      657A6F6E 
 7706      6500
 7707              	.LASF216:
 7708 050a 73645F6D 		.ascii	"sd_mmc_spi_stop_write_block\000"
 7708      6D635F73 
 7708      70695F73 
 7708      746F705F 
 7708      77726974 
 7709              	.LASF210:
 7710 0526 63735069 		.ascii	"csPins\000"
 7710      6E7300
 7711              	.LASF77:
 7712 052d 5F737464 		.ascii	"_stdin\000"
 7712      696E00
 7713              	.LASF110:
 7714 0534 5F67616D 		.ascii	"_gamma_signgam\000"
 7714      6D615F73 
 7714      69676E67 
 7714      616D00
 7715              	.LASF12:
 7716 0543 6C6F6E67 		.ascii	"long long int\000"
 7716      206C6F6E 
 7716      6720696E 
 7716      7400
 7717              	.LASF202:
 7718 0551 73645F6D 		.ascii	"sd_mmc_spi_send_clock\000"
 7718      6D635F73 
 7718      70695F73 
 7718      656E645F 
 7718      636C6F63 
 7719              	.LASF56:
 7720 0567 5F626173 		.ascii	"_base\000"
 7720      6500
 7721              	.LASF89:
 7722 056d 5F667265 		.ascii	"_freelist\000"
 7722      656C6973 
 7722      7400
 7723              	.LASF238:
 7724 0577 73645F6D 		.ascii	"sd_mmc_spi_start_write_block\000"
 7724      6D635F73 
 7724      70695F73 
 7724      74617274 
 7724      5F777269 
 7725              	.LASF104:
ARM GAS  /tmp/ccbxFcRO.s 			page 159


 7726 0594 5F6D756C 		.ascii	"_mult\000"
 7726      7400
 7727              	.LASF105:
 7728 059a 5F616464 		.ascii	"_add\000"
 7728      00
 7729              	.LASF139:
 7730 059f 5F5F6664 		.ascii	"__fdlibm_svid\000"
 7730      6C69626D 
 7730      5F737669 
 7730      6400
 7731              	.LASF179:
 7732 05ad 73645F6D 		.ascii	"sd_mmc_spi_devices\000"
 7732      6D635F73 
 7732      70695F64 
 7732      65766963 
 7732      657300
 7733              	.LASF122:
 7734 05c0 5F776372 		.ascii	"_wcrtomb_state\000"
 7734      746F6D62 
 7734      5F737461 
 7734      746500
 7735              	.LASF60:
 7736 05cf 5F66696C 		.ascii	"_file\000"
 7736      6500
 7737              	.LASF211:
 7738 05d5 73645F6D 		.ascii	"sd_mmc_spi_get_errno\000"
 7738      6D635F73 
 7738      70695F67 
 7738      65745F65 
 7738      72726E6F 
 7739              	.LASF235:
 7740 05ea 2E2E2F6C 		.ascii	"../libraries/Storage/sd_mmc_spi.c\000"
 7740      69627261 
 7740      72696573 
 7740      2F53746F 
 7740      72616765 
 7741              	.LASF225:
 7742 060c 73737069 		.ascii	"sspi_read_packet\000"
 7742      5F726561 
 7742      645F7061 
 7742      636B6574 
 7742      00
 7743              	.LASF151:
 7744 061d 4E6F5069 		.ascii	"NoPin\000"
 7744      6E00
 7745              	.LASF85:
 7746 0623 5F5F636C 		.ascii	"__cleanup\000"
 7746      65616E75 
 7746      7000
 7747              	.LASF142:
 7748 062d 5F5F6664 		.ascii	"__fdlib_version\000"
 7748      6C69625F 
 7748      76657273 
 7748      696F6E00 
 7749              	.LASF29:
 7750 063d 5F6D6273 		.ascii	"_mbstate_t\000"
 7750      74617465 
ARM GAS  /tmp/ccbxFcRO.s 			page 160


 7750      5F7400
 7751              	.LASF183:
 7752 0648 73645F6D 		.ascii	"sd_mmc_spi_nb_block\000"
 7752      6D635F73 
 7752      70695F6E 
 7752      625F626C 
 7752      6F636B00 
 7753              	.LASF223:
 7754 065c 73697A65 		.ascii	"size\000"
 7754      00
 7755              	.LASF30:
 7756 0661 5F666C6F 		.ascii	"_flock_t\000"
 7756      636B5F74 
 7756      00
 7757              	.LASF46:
 7758 066a 5F5F746D 		.ascii	"__tm_isdst\000"
 7758      5F697364 
 7758      737400
 7759              	.LASF217:
 7760 0675 73645F6D 		.ascii	"sd_mmc_spi_start_read_block\000"
 7760      6D635F73 
 7760      70695F73 
 7760      74617274 
 7760      5F726561 
 7761              	.LASF53:
 7762 0691 5F696E64 		.ascii	"_ind\000"
 7762      00
 7763              	.LASF143:
 7764 0696 5350495F 		.ascii	"SPI_ERROR\000"
 7764      4552524F 
 7764      5200
 7765              	.LASF155:
 7766 06a0 4150494E 		.ascii	"APINS_UART0\000"
 7766      535F5541 
 7766      52543000 
 7767              	.LASF158:
 7768 06ac 4150494E 		.ascii	"APINS_UART1\000"
 7768      535F5541 
 7768      52543100 
 7769              	.LASF170:
 7770 06b8 73645F6D 		.ascii	"sd_mmc_spi_errno_t\000"
 7770      6D635F73 
 7770      70695F65 
 7770      72726E6F 
 7770      5F7400
 7771              	.LASF181:
 7772 06cb 73645F6D 		.ascii	"sd_mmc_spi_transfert_pos\000"
 7772      6D635F73 
 7772      70695F74 
 7772      72616E73 
 7772      66657274 
 7773              	.LASF213:
 7774 06e4 7370695F 		.ascii	"spi_mmc_get_speed\000"
 7774      6D6D635F 
 7774      6765745F 
 7774      73706565 
 7774      6400
ARM GAS  /tmp/ccbxFcRO.s 			page 161


 7775              	.LASF42:
 7776 06f6 5F5F746D 		.ascii	"__tm_mon\000"
 7776      5F6D6F6E 
 7776      00
 7777              	.LASF185:
 7778 06ff 73645F6D 		.ascii	"sd_mmc_spi_wait_end_of_write_blocks\000"
 7778      6D635F73 
 7778      70695F77 
 7778      6169745F 
 7778      656E645F 
 7779              	.LASF188:
 7780 0723 73645F6D 		.ascii	"sd_mmc_spi_start_read_blocks\000"
 7780      6D635F73 
 7780      70695F73 
 7780      74617274 
 7780      5F726561 
 7781              	.LASF137:
 7782 0740 6C6F6E67 		.ascii	"long double\000"
 7782      20646F75 
 7782      626C6500 
 7783              	.LASF15:
 7784 074c 75696E74 		.ascii	"uint16_t\000"
 7784      31365F74 
 7784      00
 7785              	.LASF215:
 7786 0755 746F6B65 		.ascii	"token\000"
 7786      6E00
 7787              	.LASF64:
 7788 075b 5F777269 		.ascii	"_write\000"
 7788      746500
 7789              	.LASF232:
 7790 0762 73737069 		.ascii	"sspi_select_device\000"
 7790      5F73656C 
 7790      6563745F 
 7790      64657669 
 7790      636500
 7791              	.LASF224:
 7792 0775 73737069 		.ascii	"sspi_write_packet\000"
 7792      5F777269 
 7792      74655F70 
 7792      61636B65 
 7792      7400
 7793              	.LASF52:
 7794 0787 5F617465 		.ascii	"_atexit\000"
 7794      78697400 
 7795              	.LASF18:
 7796 078f 73697A65 		.ascii	"sizetype\000"
 7796      74797065 
 7796      00
 7797              	.LASF233:
 7798 0798 73737069 		.ascii	"sspi_master_init\000"
 7798      5F6D6173 
 7798      7465725F 
 7798      696E6974 
 7798      00
 7799              	.LASF229:
 7800 07a9 73737069 		.ascii	"sspi_transceive_packet\000"
ARM GAS  /tmp/ccbxFcRO.s 			page 162


 7800      5F747261 
 7800      6E736365 
 7800      6976655F 
 7800      7061636B 
 7801              	.LASF5:
 7802 07c0 73686F72 		.ascii	"short int\000"
 7802      7420696E 
 7802      7400
 7803              	.LASF203:
 7804 07ca 73645F6D 		.ascii	"sd_mmc_spi_deselect_device\000"
 7804      6D635F73 
 7804      70695F64 
 7804      6573656C 
 7804      6563745F 
 7805              	.LASF9:
 7806 07e5 6C6F6E67 		.ascii	"long int\000"
 7806      20696E74 
 7806      00
 7807              	.LASF218:
 7808 07ee 73645F6D 		.ascii	"sd_mmc_spi_wait_busy\000"
 7808      6D635F73 
 7808      70695F77 
 7808      6169745F 
 7808      62757379 
 7809              	.LASF19:
 7810 0803 49544D5F 		.ascii	"ITM_RxBuffer\000"
 7810      52784275 
 7810      66666572 
 7810      00
 7811              	.LASF96:
 7812 0810 5F5F7366 		.ascii	"__sf\000"
 7812      00
 7813              	.LASF34:
 7814 0815 5F736967 		.ascii	"_sign\000"
 7814      6E00
 7815              	.LASF180:
 7816 081b 73645F6D 		.ascii	"sd_mmc_spi_response_32\000"
 7816      6D635F73 
 7816      70695F72 
 7816      6573706F 
 7816      6E73655F 
 7817              	.LASF83:
 7818 0832 5F637572 		.ascii	"_current_locale\000"
 7818      72656E74 
 7818      5F6C6F63 
 7818      616C6500 
 7819              	.LASF71:
 7820 0842 5F646174 		.ascii	"_data\000"
 7820      6100
 7821              	.LASF26:
 7822 0848 5F5F7763 		.ascii	"__wchb\000"
 7822      686200
 7823              	.LASF153:
 7824 084f 5F646179 		.ascii	"_daylight\000"
 7824      6C696768 
 7824      7400
 7825              	.LASF196:
ARM GAS  /tmp/ccbxFcRO.s 			page 163


 7826 0859 626C6F63 		.ascii	"block_size\000"
 7826      6B5F7369 
 7826      7A6500
 7827              	.LASF43:
 7828 0864 5F5F746D 		.ascii	"__tm_year\000"
 7828      5F796561 
 7828      7200
 7829              	.LASF178:
 7830 086e 73645F6D 		.ascii	"sd_mmc_spi_err\000"
 7830      6D635F73 
 7830      70695F65 
 7830      727200
 7831              	.LASF197:
 7832 087d 61636365 		.ascii	"access_block\000"
 7832      73735F62 
 7832      6C6F636B 
 7832      00
 7833              	.LASF138:
 7834 088a 5F5F6664 		.ascii	"__fdlibm_ieee\000"
 7834      6C69626D 
 7834      5F696565 
 7834      6500
 7835              	.LASF109:
 7836 0898 5F6C6F63 		.ascii	"_localtime_buf\000"
 7836      616C7469 
 7836      6D655F62 
 7836      756600
 7837              	.LASF127:
 7838 08a7 5F756E75 		.ascii	"_unused\000"
 7838      73656400 
 7839              	.LASF3:
 7840 08af 5F5F7569 		.ascii	"__uint8_t\000"
 7840      6E74385F 
 7840      7400
 7841              	.LASF190:
 7842 08b9 73645F6D 		.ascii	"sd_mmc_spi_write_word\000"
 7842      6D635F73 
 7842      70695F77 
 7842      72697465 
 7842      5F776F72 
 7843              	.LASF92:
 7844 08cf 5F6E6577 		.ascii	"_new\000"
 7844      00
 7845              	.LASF90:
 7846 08d4 5F637674 		.ascii	"_cvtlen\000"
 7846      6C656E00 
 7847              	.LASF33:
 7848 08dc 5F6D6178 		.ascii	"_maxwds\000"
 7848      77647300 
 7849              	.LASF154:
 7850 08e4 5F747A6E 		.ascii	"_tzname\000"
 7850      616D6500 
 7851              	.LASF82:
 7852 08ec 5F637572 		.ascii	"_current_category\000"
 7852      72656E74 
 7852      5F636174 
 7852      65676F72 
ARM GAS  /tmp/ccbxFcRO.s 			page 164


 7852      7900
 7853              	.LASF201:
 7854 08fe 73645F6D 		.ascii	"sd_mmc_spi_send_cmd\000"
 7854      6D635F73 
 7854      70695F73 
 7854      656E645F 
 7854      636D6400 
 7855              	.LASF175:
 7856 0912 62697473 		.ascii	"bitsPerTransferControl\000"
 7856      50657254 
 7856      72616E73 
 7856      66657243 
 7856      6F6E7472 
 7857              	.LASF69:
 7858 0929 5F626C6B 		.ascii	"_blksize\000"
 7858      73697A65 
 7858      00
 7859              	.LASF37:
 7860 0932 5F5F746D 		.ascii	"__tm\000"
 7860      00
 7861              	.LASF72:
 7862 0937 5F6C6F63 		.ascii	"_lock\000"
 7862      6B00
 7863              	.LASF167:
 7864 093d 50776D46 		.ascii	"PwmFastClock\000"
 7864      61737443 
 7864      6C6F636B 
 7864      00
 7865              	.LASF11:
 7866 094a 6C6F6E67 		.ascii	"long unsigned int\000"
 7866      20756E73 
 7866      69676E65 
 7866      6420696E 
 7866      7400
 7867              	.LASF207:
 7868 095c 6275735F 		.ascii	"bus_width\000"
 7868      77696474 
 7868      6800
 7869              	.LASF133:
 7870 0966 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 7870      6972715F 
 7870      63726974 
 7870      6963616C 
 7870      5F736563 
 7871              	.LASF100:
 7872 0987 5F6E696F 		.ascii	"_niobs\000"
 7872      627300
 7873              	.LASF24:
 7874 098e 77696E74 		.ascii	"wint_t\000"
 7874      5F7400
 7875              	.LASF16:
 7876 0995 696E7433 		.ascii	"int32_t\000"
 7876      325F7400 
 7877              	.LASF49:
 7878 099d 5F64736F 		.ascii	"_dso_handle\000"
 7878      5F68616E 
 7878      646C6500 
ARM GAS  /tmp/ccbxFcRO.s 			page 165


 7879              	.LASF164:
 7880 09a9 4150494E 		.ascii	"APIN_GMAC_PHY_RESET\000"
 7880      5F474D41 
 7880      435F5048 
 7880      595F5245 
 7880      53455400 
 7881              	.LASF91:
 7882 09bd 5F637674 		.ascii	"_cvtbuf\000"
 7882      62756600 
 7883              	.LASF4:
 7884 09c5 756E7369 		.ascii	"unsigned char\000"
 7884      676E6564 
 7884      20636861 
 7884      7200
 7885              	.LASF200:
 7886 09d3 6E63725F 		.ascii	"ncr_timeout\000"
 7886      74696D65 
 7886      6F757400 
 7887              	.LASF231:
 7888 09df 73737069 		.ascii	"sspi_master_setup_device\000"
 7888      5F6D6173 
 7888      7465725F 
 7888      73657475 
 7888      705F6465 
 7889              	.LASF219:
 7890 09f8 6C696E65 		.ascii	"line\000"
 7890      00
 7891              	.LASF21:
 7892 09fd 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 7892      4B5F5245 
 7892      43555253 
 7892      4956455F 
 7892      5400
 7893              	.LASF234:
 7894 0a0f 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 7894      43393920 
 7894      362E332E 
 7894      31203230 
 7894      31373036 
 7895 0a42 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 7895      76352D64 
 7895      3136202D 
 7895      6D666C6F 
 7895      61742D61 
 7896 0a75 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 7896      6E2D7365 
 7896      6374696F 
 7896      6E73202D 
 7896      66646174 
 7897 0aa8 6F6E7374 		.ascii	"onstant\000"
 7897      616E7400 
 7898              	.LASF165:
 7899 0ab0 4150494E 		.ascii	"APINS_GMAC_PHY\000"
 7899      535F474D 
 7899      41435F50 
 7899      485900
 7900              	.LASF55:
ARM GAS  /tmp/ccbxFcRO.s 			page 166


 7901 0abf 5F5F7362 		.ascii	"__sbuf\000"
 7901      756600
 7902              	.LASF116:
 7903 0ac6 5F6C3634 		.ascii	"_l64a_buf\000"
 7903      615F6275 
 7903      6600
 7904              	.LASF163:
 7905 0ad0 4150494E 		.ascii	"APIN_GMAC_PHY_INTERRUPT\000"
 7905      5F474D41 
 7905      435F5048 
 7905      595F494E 
 7905      54455252 
 7906              	.LASF99:
 7907 0ae8 5F676C75 		.ascii	"_glue\000"
 7907      6500
 7908              	.LASF237:
 7909 0aee 5F5F6664 		.ascii	"__fdlibm_version\000"
 7909      6C69626D 
 7909      5F766572 
 7909      73696F6E 
 7909      00
 7910              	.LASF236:
 7911 0aff 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70\000"
 7911      652F746F 
 7911      72626A6F 
 7911      726E2F65 
 7911      636C6970 
 7912              	.LASF95:
 7913 0b2e 5F5F7367 		.ascii	"__sglue\000"
 7913      6C756500 
 7914              	.LASF118:
 7915 0b36 5F676574 		.ascii	"_getdate_err\000"
 7915      64617465 
 7915      5F657272 
 7915      00
 7916              	.LASF221:
 7917 0b43 73645F6D 		.ascii	"sd_mmc_spi_stop_multiwrite_block\000"
 7917      6D635F73 
 7917      70695F73 
 7917      746F705F 
 7917      6D756C74 
 7918              	.LASF107:
 7919 0b64 5F737472 		.ascii	"_strtok_last\000"
 7919      746F6B5F 
 7919      6C617374 
 7919      00
 7920              	.LASF114:
 7921 0b71 5F6D6274 		.ascii	"_mbtowc_state\000"
 7921      6F77635F 
 7921      73746174 
 7921      6500
 7922              	.LASF160:
 7923 0b7f 4150494E 		.ascii	"APIN_UART1_TXD\000"
 7923      5F554152 
 7923      54315F54 
 7923      584400
 7924              	.LASF162:
ARM GAS  /tmp/ccbxFcRO.s 			page 167


 7925 0b8e 4150494E 		.ascii	"APIN_HSMCI_DATA\000"
 7925      5F48534D 
 7925      43495F44 
 7925      41544100 
 7926              	.LASF48:
 7927 0b9e 5F666E61 		.ascii	"_fnargs\000"
 7927      72677300 
 7928              	.LASF1:
 7929 0ba6 7369676E 		.ascii	"signed char\000"
 7929      65642063 
 7929      68617200 
 7930              	.LASF75:
 7931 0bb2 5F726565 		.ascii	"_reent\000"
 7931      6E7400
 7932              	.LASF7:
 7933 0bb9 73686F72 		.ascii	"short unsigned int\000"
 7933      7420756E 
 7933      7369676E 
 7933      65642069 
 7933      6E7400
 7934              	.LASF144:
 7935 0bcc 5350495F 		.ascii	"SPI_OK\000"
 7935      4F4B00
 7936              	.LASF227:
 7937 0bd3 64656C61 		.ascii	"delayMicroseconds\000"
 7937      794D6963 
 7937      726F7365 
 7937      636F6E64 
 7937      7300
 7938              	.LASF50:
 7939 0be5 5F666E74 		.ascii	"_fntypes\000"
 7939      79706573 
 7939      00
 7940              	.LASF57:
 7941 0bee 5F73697A 		.ascii	"_size\000"
 7941      6500
 7942              	.LASF136:
 7943 0bf4 646F7562 		.ascii	"double\000"
 7943      6C6500
 7944              	.LASF115:
 7945 0bfb 5F776374 		.ascii	"_wctomb_state\000"
 7945      6F6D625F 
 7945      73746174 
 7945      6500
 7946              	.LASF214:
 7947 0c09 72657370 		.ascii	"resp\000"
 7947      00
 7948              	.LASF22:
 7949 0c0e 5F6F6666 		.ascii	"_off_t\000"
 7949      5F7400
 7950              	.LASF68:
 7951 0c15 5F6E6275 		.ascii	"_nbuf\000"
 7951      6600
 7952              	.LASF106:
 7953 0c1b 5F756E75 		.ascii	"_unused_rand\000"
 7953      7365645F 
 7953      72616E64 
ARM GAS  /tmp/ccbxFcRO.s 			page 168


 7953      00
 7954              	.LASF176:
 7955 0c28 7370694D 		.ascii	"spiMode\000"
 7955      6F646500 
 7956              	.LASF74:
 7957 0c30 5F666C61 		.ascii	"_flags2\000"
 7957      67733200 
 7958              	.LASF51:
 7959 0c38 5F69735F 		.ascii	"_is_cxa\000"
 7959      63786100 
 7960              	.LASF103:
 7961 0c40 5F736565 		.ascii	"_seed\000"
 7961      6400
 7962              	.LASF111:
 7963 0c46 5F72616E 		.ascii	"_rand_next\000"
 7963      645F6E65 
 7963      787400
 7964              	.LASF173:
 7965 0c51 63735069 		.ascii	"csPin\000"
 7965      6E00
 7966              	.LASF189:
 7967 0c57 64657374 		.ascii	"dest\000"
 7967      00
 7968              	.LASF65:
 7969 0c5c 5F736565 		.ascii	"_seek\000"
 7969      6B00
 7970              	.LASF220:
 7971 0c62 6E65635F 		.ascii	"nec_timeout\000"
 7971      74696D65 
 7971      6F757400 
 7972              	.LASF177:
 7973 0c6e 636C6F63 		.ascii	"clockFrequency\000"
 7973      6B467265 
 7973      7175656E 
 7973      637900
 7974              	.LASF126:
 7975 0c7d 5F6E6D61 		.ascii	"_nmalloc\000"
 7975      6C6C6F63 
 7975      00
 7976              	.LASF101:
 7977 0c86 5F696F62 		.ascii	"_iobs\000"
 7977      7300
 7978              	.LASF145:
 7979 0c8c 5350495F 		.ascii	"SPI_ERROR_TIMEOUT\000"
 7979      4552524F 
 7979      525F5449 
 7979      4D454F55 
 7979      5400
 7980              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
