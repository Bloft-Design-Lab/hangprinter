ARM GAS  /tmp/ccTIydBQ.s 			page 1


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
  12              		.file	"sd_mmc.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.sd_mmc_spi_get_bus_width,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv5-d16
  23              		.type	sd_mmc_spi_get_bus_width, %function
  24              	sd_mmc_spi_get_bus_width:
  25              	.LFB228:
  26              		.file 1 "../libraries/Storage/sd_mmc_spi.h"
   1:../libraries/Storage/sd_mmc_spi.h **** /**
   2:../libraries/Storage/sd_mmc_spi.h ****  * \file
   3:../libraries/Storage/sd_mmc_spi.h ****  *
   4:../libraries/Storage/sd_mmc_spi.h ****  * \brief Common SPI interface for SD/MMC stack
   5:../libraries/Storage/sd_mmc_spi.h ****  *
   6:../libraries/Storage/sd_mmc_spi.h ****  * Copyright (c) 2012-2015 Atmel Corporation. All rights reserved.
   7:../libraries/Storage/sd_mmc_spi.h ****  *
   8:../libraries/Storage/sd_mmc_spi.h ****  * \asf_license_start
   9:../libraries/Storage/sd_mmc_spi.h ****  *
  10:../libraries/Storage/sd_mmc_spi.h ****  * \page License
  11:../libraries/Storage/sd_mmc_spi.h ****  *
  12:../libraries/Storage/sd_mmc_spi.h ****  * Redistribution and use in source and binary forms, with or without
  13:../libraries/Storage/sd_mmc_spi.h ****  * modification, are permitted provided that the following conditions are met:
  14:../libraries/Storage/sd_mmc_spi.h ****  *
  15:../libraries/Storage/sd_mmc_spi.h ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../libraries/Storage/sd_mmc_spi.h ****  *    this list of conditions and the following disclaimer.
  17:../libraries/Storage/sd_mmc_spi.h ****  *
  18:../libraries/Storage/sd_mmc_spi.h ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../libraries/Storage/sd_mmc_spi.h ****  *    this list of conditions and the following disclaimer in the documentation
  20:../libraries/Storage/sd_mmc_spi.h ****  *    and/or other materials provided with the distribution.
  21:../libraries/Storage/sd_mmc_spi.h ****  *
  22:../libraries/Storage/sd_mmc_spi.h ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../libraries/Storage/sd_mmc_spi.h ****  *    from this software without specific prior written permission.
  24:../libraries/Storage/sd_mmc_spi.h ****  *
  25:../libraries/Storage/sd_mmc_spi.h ****  * 4. This software may only be redistributed and used in connection with an
  26:../libraries/Storage/sd_mmc_spi.h ****  *    Atmel microcontroller product.
  27:../libraries/Storage/sd_mmc_spi.h ****  *
  28:../libraries/Storage/sd_mmc_spi.h ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../libraries/Storage/sd_mmc_spi.h ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../libraries/Storage/sd_mmc_spi.h ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
  31:../libraries/Storage/sd_mmc_spi.h ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
ARM GAS  /tmp/ccTIydBQ.s 			page 2


  32:../libraries/Storage/sd_mmc_spi.h ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../libraries/Storage/sd_mmc_spi.h ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../libraries/Storage/sd_mmc_spi.h ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../libraries/Storage/sd_mmc_spi.h ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../libraries/Storage/sd_mmc_spi.h ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../libraries/Storage/sd_mmc_spi.h ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../libraries/Storage/sd_mmc_spi.h ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../libraries/Storage/sd_mmc_spi.h ****  *
  40:../libraries/Storage/sd_mmc_spi.h ****  * \asf_license_stop
  41:../libraries/Storage/sd_mmc_spi.h ****  *
  42:../libraries/Storage/sd_mmc_spi.h ****  */
  43:../libraries/Storage/sd_mmc_spi.h **** /*
  44:../libraries/Storage/sd_mmc_spi.h ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../libraries/Storage/sd_mmc_spi.h ****  */
  46:../libraries/Storage/sd_mmc_spi.h **** 
  47:../libraries/Storage/sd_mmc_spi.h **** #ifndef SD_MMC_SPI_H_INCLUDED
  48:../libraries/Storage/sd_mmc_spi.h **** #define SD_MMC_SPI_H_INCLUDED
  49:../libraries/Storage/sd_mmc_spi.h **** 
  50:../libraries/Storage/sd_mmc_spi.h **** #include "compiler.h"
  51:../libraries/Storage/sd_mmc_spi.h **** #include "sd_mmc_protocol.h"
  52:../libraries/Storage/sd_mmc_spi.h **** 
  53:../libraries/Storage/sd_mmc_spi.h **** #ifdef __cplusplus
  54:../libraries/Storage/sd_mmc_spi.h **** extern "C" {
  55:../libraries/Storage/sd_mmc_spi.h **** #endif
  56:../libraries/Storage/sd_mmc_spi.h **** 
  57:../libraries/Storage/sd_mmc_spi.h **** /**
  58:../libraries/Storage/sd_mmc_spi.h ****  * \ingroup sd_mmc_stack_group
  59:../libraries/Storage/sd_mmc_spi.h ****  * \defgroup sd_mmc_stack_spi Common SPI interface for SD/MMC stack
  60:../libraries/Storage/sd_mmc_spi.h ****  * @{
  61:../libraries/Storage/sd_mmc_spi.h ****  */
  62:../libraries/Storage/sd_mmc_spi.h **** 
  63:../libraries/Storage/sd_mmc_spi.h **** //! Type of return error code
  64:../libraries/Storage/sd_mmc_spi.h **** typedef uint8_t sd_mmc_spi_errno_t;
  65:../libraries/Storage/sd_mmc_spi.h **** 
  66:../libraries/Storage/sd_mmc_spi.h **** //! \name Return error codes
  67:../libraries/Storage/sd_mmc_spi.h **** //! @{
  68:../libraries/Storage/sd_mmc_spi.h **** #define SD_MMC_SPI_NO_ERR                 0 //! No error
  69:../libraries/Storage/sd_mmc_spi.h **** #define SD_MMC_SPI_ERR                    1 //! General or an unknown error
  70:../libraries/Storage/sd_mmc_spi.h **** #define SD_MMC_SPI_ERR_RESP_TIMEOUT       2 //! Timeout during command
  71:../libraries/Storage/sd_mmc_spi.h **** #define SD_MMC_SPI_ERR_RESP_BUSY_TIMEOUT  3 //! Timeout on busy signal of R1B response
  72:../libraries/Storage/sd_mmc_spi.h **** #define SD_MMC_SPI_ERR_READ_TIMEOUT       4 //! Timeout during read operation
  73:../libraries/Storage/sd_mmc_spi.h **** #define SD_MMC_SPI_ERR_WRITE_TIMEOUT      5 //! Timeout during write operation
  74:../libraries/Storage/sd_mmc_spi.h **** #define SD_MMC_SPI_ERR_RESP_CRC           6 //! Command CRC error
  75:../libraries/Storage/sd_mmc_spi.h **** #define SD_MMC_SPI_ERR_READ_CRC           7 //! CRC error during read operation
  76:../libraries/Storage/sd_mmc_spi.h **** #define SD_MMC_SPI_ERR_WRITE_CRC          8 //! CRC error during write operation
  77:../libraries/Storage/sd_mmc_spi.h **** #define SD_MMC_SPI_ERR_ILLEGAL_COMMAND    9 //! Command not supported
  78:../libraries/Storage/sd_mmc_spi.h **** #define SD_MMC_SPI_ERR_WRITE             10 //! Error during write operation
  79:../libraries/Storage/sd_mmc_spi.h **** #define SD_MMC_SPI_ERR_OUT_OF_RANGE      11 //! Data access out of range
  80:../libraries/Storage/sd_mmc_spi.h **** //! @}
  81:../libraries/Storage/sd_mmc_spi.h **** 
  82:../libraries/Storage/sd_mmc_spi.h **** 
  83:../libraries/Storage/sd_mmc_spi.h **** /** \brief Return the error code of last function
  84:../libraries/Storage/sd_mmc_spi.h ****  *
  85:../libraries/Storage/sd_mmc_spi.h ****  * \return error code
  86:../libraries/Storage/sd_mmc_spi.h ****  */
  87:../libraries/Storage/sd_mmc_spi.h **** sd_mmc_spi_errno_t sd_mmc_spi_get_errno(void);
  88:../libraries/Storage/sd_mmc_spi.h **** 
ARM GAS  /tmp/ccTIydBQ.s 			page 3


  89:../libraries/Storage/sd_mmc_spi.h **** /** \brief Initializes the low level driver
  90:../libraries/Storage/sd_mmc_spi.h ****  *
  91:../libraries/Storage/sd_mmc_spi.h ****  * This enable the clock required and the hardware interface.
  92:../libraries/Storage/sd_mmc_spi.h ****  */
  93:../libraries/Storage/sd_mmc_spi.h **** void sd_mmc_spi_init(const Pin csPins[SD_MMC_SPI_MEM_CNT]);
  94:../libraries/Storage/sd_mmc_spi.h **** 
  95:../libraries/Storage/sd_mmc_spi.h **** /** \brief Return the maximum bus width of a slot
  96:../libraries/Storage/sd_mmc_spi.h ****  *
  97:../libraries/Storage/sd_mmc_spi.h ****  * \param slot     Selected slot
  98:../libraries/Storage/sd_mmc_spi.h ****  *
  99:../libraries/Storage/sd_mmc_spi.h ****  * \return 1, 4 or 8 lines.
 100:../libraries/Storage/sd_mmc_spi.h ****  */
 101:../libraries/Storage/sd_mmc_spi.h **** static __inline__ uint8_t sd_mmc_spi_get_bus_width(uint8_t slot) {
  27              		.loc 1 101 0
  28              		.cfi_startproc
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 0, uses_anonymous_args = 0
  31              		@ link register save eliminated.
  32              	.LVL0:
 102:../libraries/Storage/sd_mmc_spi.h **** 	UNUSED(slot);
 103:../libraries/Storage/sd_mmc_spi.h **** 	return 1;
 104:../libraries/Storage/sd_mmc_spi.h **** }
  33              		.loc 1 104 0
  34 0000 0120     		movs	r0, #1
  35              	.LVL1:
  36 0002 7047     		bx	lr
  37              		.cfi_endproc
  38              	.LFE228:
  39              		.size	sd_mmc_spi_get_bus_width, .-sd_mmc_spi_get_bus_width
  40              		.section	.text.sd_mmc_spi_is_high_speed_capable,"ax",%progbits
  41              		.align	1
  42              		.p2align 2,,3
  43              		.syntax unified
  44              		.thumb
  45              		.thumb_func
  46              		.fpu fpv5-d16
  47              		.type	sd_mmc_spi_is_high_speed_capable, %function
  48              	sd_mmc_spi_is_high_speed_capable:
  49              	.LFB229:
 105:../libraries/Storage/sd_mmc_spi.h **** 
 106:../libraries/Storage/sd_mmc_spi.h **** /** \brief Return the high speed capability of the driver
 107:../libraries/Storage/sd_mmc_spi.h ****  *
 108:../libraries/Storage/sd_mmc_spi.h ****  * \return true, if the high speed is supported
 109:../libraries/Storage/sd_mmc_spi.h ****  */
 110:../libraries/Storage/sd_mmc_spi.h **** static __inline__ bool sd_mmc_spi_is_high_speed_capable(void) {
  50              		.loc 1 110 0
  51              		.cfi_startproc
  52              		@ args = 0, pretend = 0, frame = 0
  53              		@ frame_needed = 0, uses_anonymous_args = 0
  54              		@ link register save eliminated.
 111:../libraries/Storage/sd_mmc_spi.h **** 	return false;
 112:../libraries/Storage/sd_mmc_spi.h **** }
  55              		.loc 1 112 0
  56 0000 0020     		movs	r0, #0
  57 0002 7047     		bx	lr
  58              		.cfi_endproc
  59              	.LFE229:
ARM GAS  /tmp/ccTIydBQ.s 			page 4


  60              		.size	sd_mmc_spi_is_high_speed_capable, .-sd_mmc_spi_is_high_speed_capable
  61              		.section	.text.sd_mmc_spi_get_response_128,"ax",%progbits
  62              		.align	1
  63              		.p2align 2,,3
  64              		.syntax unified
  65              		.thumb
  66              		.thumb_func
  67              		.fpu fpv5-d16
  68              		.type	sd_mmc_spi_get_response_128, %function
  69              	sd_mmc_spi_get_response_128:
  70              	.LFB230:
 113:../libraries/Storage/sd_mmc_spi.h **** 
 114:../libraries/Storage/sd_mmc_spi.h **** /**
 115:../libraries/Storage/sd_mmc_spi.h ****  * \brief Select a slot and initialize it
 116:../libraries/Storage/sd_mmc_spi.h ****  *
 117:../libraries/Storage/sd_mmc_spi.h ****  * \param slot       Selected slot
 118:../libraries/Storage/sd_mmc_spi.h ****  * \param clock      Maximum clock to use (Hz)
 119:../libraries/Storage/sd_mmc_spi.h ****  * \param bus_width  Bus width to use (1, 4 or 8)
 120:../libraries/Storage/sd_mmc_spi.h ****  * \param high_speed true, to enable high speed mode
 121:../libraries/Storage/sd_mmc_spi.h ****  */
 122:../libraries/Storage/sd_mmc_spi.h **** void sd_mmc_spi_select_device(uint8_t slot, uint32_t clock, uint8_t bus_width,
 123:../libraries/Storage/sd_mmc_spi.h **** 		bool high_speed);
 124:../libraries/Storage/sd_mmc_spi.h **** 
 125:../libraries/Storage/sd_mmc_spi.h **** /**
 126:../libraries/Storage/sd_mmc_spi.h ****  * \brief Deselect a slot
 127:../libraries/Storage/sd_mmc_spi.h ****  *
 128:../libraries/Storage/sd_mmc_spi.h ****  * \param slot       Selected slot
 129:../libraries/Storage/sd_mmc_spi.h ****  */
 130:../libraries/Storage/sd_mmc_spi.h **** void sd_mmc_spi_deselect_device(uint8_t slot);
 131:../libraries/Storage/sd_mmc_spi.h **** 
 132:../libraries/Storage/sd_mmc_spi.h **** /** \brief Send 74 clock cycles on the line of selected slot
 133:../libraries/Storage/sd_mmc_spi.h ****  * Note: It is required after card plug and before card install.
 134:../libraries/Storage/sd_mmc_spi.h ****  */
 135:../libraries/Storage/sd_mmc_spi.h **** void sd_mmc_spi_send_clock(void);
 136:../libraries/Storage/sd_mmc_spi.h **** 
 137:../libraries/Storage/sd_mmc_spi.h **** /** \brief Send a command on the selected slot
 138:../libraries/Storage/sd_mmc_spi.h ****  *
 139:../libraries/Storage/sd_mmc_spi.h ****  * \param cmd        Command definition
 140:../libraries/Storage/sd_mmc_spi.h ****  * \param arg        Argument of the command
 141:../libraries/Storage/sd_mmc_spi.h ****  *
 142:../libraries/Storage/sd_mmc_spi.h ****  * \return true if success, otherwise false
 143:../libraries/Storage/sd_mmc_spi.h ****  */
 144:../libraries/Storage/sd_mmc_spi.h **** bool sd_mmc_spi_send_cmd(sdmmc_cmd_def_t cmd, uint32_t arg);
 145:../libraries/Storage/sd_mmc_spi.h **** 
 146:../libraries/Storage/sd_mmc_spi.h **** /** \brief Return the 32 bits response of the last command
 147:../libraries/Storage/sd_mmc_spi.h ****  *
 148:../libraries/Storage/sd_mmc_spi.h ****  * \return 32 bits response
 149:../libraries/Storage/sd_mmc_spi.h ****  */
 150:../libraries/Storage/sd_mmc_spi.h **** uint32_t sd_mmc_spi_get_response(void);
 151:../libraries/Storage/sd_mmc_spi.h **** static __inline__ void sd_mmc_spi_get_response_128(uint8_t *resp) {
  71              		.loc 1 151 0
  72              		.cfi_startproc
  73              		@ args = 0, pretend = 0, frame = 0
  74              		@ frame_needed = 0, uses_anonymous_args = 0
  75              		@ link register save eliminated.
  76              	.LVL2:
  77 0000 7047     		bx	lr
ARM GAS  /tmp/ccTIydBQ.s 			page 5


  78              		.cfi_endproc
  79              	.LFE230:
  80              		.size	sd_mmc_spi_get_response_128, .-sd_mmc_spi_get_response_128
  81 0002 00BF     		.section	.text.mmc_decode_csd,"ax",%progbits
  82              		.align	1
  83              		.p2align 2,,3
  84              		.syntax unified
  85              		.thumb
  86              		.thumb_func
  87              		.fpu fpv5-d16
  88              		.type	mmc_decode_csd, %function
  89              	mmc_decode_csd:
  90              	.LFB246:
  91              		.file 2 "../libraries/Storage/sd_mmc.c"
   1:../libraries/Storage/sd_mmc.c **** /**
   2:../libraries/Storage/sd_mmc.c ****  * \file
   3:../libraries/Storage/sd_mmc.c ****  *
   4:../libraries/Storage/sd_mmc.c ****  * \brief Common SD/MMC stack
   5:../libraries/Storage/sd_mmc.c ****  *
   6:../libraries/Storage/sd_mmc.c ****  * Copyright (c) 2012-2015 Atmel Corporation. All rights reserved.
   7:../libraries/Storage/sd_mmc.c ****  *
   8:../libraries/Storage/sd_mmc.c ****  * \asf_license_start
   9:../libraries/Storage/sd_mmc.c ****  *
  10:../libraries/Storage/sd_mmc.c ****  * \page License
  11:../libraries/Storage/sd_mmc.c ****  *
  12:../libraries/Storage/sd_mmc.c ****  * Redistribution and use in source and binary forms, with or without
  13:../libraries/Storage/sd_mmc.c ****  * modification, are permitted provided that the following conditions are met:
  14:../libraries/Storage/sd_mmc.c ****  *
  15:../libraries/Storage/sd_mmc.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../libraries/Storage/sd_mmc.c ****  *    this list of conditions and the following disclaimer.
  17:../libraries/Storage/sd_mmc.c ****  *
  18:../libraries/Storage/sd_mmc.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../libraries/Storage/sd_mmc.c ****  *    this list of conditions and the following disclaimer in the documentation
  20:../libraries/Storage/sd_mmc.c ****  *    and/or other materials provided with the distribution.
  21:../libraries/Storage/sd_mmc.c ****  *
  22:../libraries/Storage/sd_mmc.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../libraries/Storage/sd_mmc.c ****  *    from this software without specific prior written permission.
  24:../libraries/Storage/sd_mmc.c ****  *
  25:../libraries/Storage/sd_mmc.c ****  * 4. This software may only be redistributed and used in connection with an
  26:../libraries/Storage/sd_mmc.c ****  *    Atmel microcontroller product.
  27:../libraries/Storage/sd_mmc.c ****  *
  28:../libraries/Storage/sd_mmc.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../libraries/Storage/sd_mmc.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../libraries/Storage/sd_mmc.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
  31:../libraries/Storage/sd_mmc.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:../libraries/Storage/sd_mmc.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../libraries/Storage/sd_mmc.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../libraries/Storage/sd_mmc.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../libraries/Storage/sd_mmc.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../libraries/Storage/sd_mmc.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../libraries/Storage/sd_mmc.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../libraries/Storage/sd_mmc.c ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../libraries/Storage/sd_mmc.c ****  *
  40:../libraries/Storage/sd_mmc.c ****  * \asf_license_stop
  41:../libraries/Storage/sd_mmc.c ****  *
  42:../libraries/Storage/sd_mmc.c ****  */
  43:../libraries/Storage/sd_mmc.c **** /*
ARM GAS  /tmp/ccTIydBQ.s 			page 6


  44:../libraries/Storage/sd_mmc.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../libraries/Storage/sd_mmc.c ****  */
  46:../libraries/Storage/sd_mmc.c **** 
  47:../libraries/Storage/sd_mmc.c **** #include "Core.h"
  48:../libraries/Storage/sd_mmc.c **** #include <string.h>
  49:../libraries/Storage/sd_mmc.c **** #include "sd_mmc_protocol.h"
  50:../libraries/Storage/sd_mmc.c **** #include "sd_mmc.h"
  51:../libraries/Storage/sd_mmc.c **** #include "conf_sd_mmc.h"
  52:../libraries/Storage/sd_mmc.c **** 
  53:../libraries/Storage/sd_mmc.c **** #include "Core.h"		// for digitalRead() and pinMode()
  54:../libraries/Storage/sd_mmc.c **** 
  55:../libraries/Storage/sd_mmc.c **** #ifdef FREERTOS_USED
  56:../libraries/Storage/sd_mmc.c **** #include "FreeRTOS.h"
  57:../libraries/Storage/sd_mmc.c **** #include "task.h"
  58:../libraries/Storage/sd_mmc.c **** #include "portmacro.h"
  59:../libraries/Storage/sd_mmc.c **** #include "projdefs.h"
  60:../libraries/Storage/sd_mmc.c **** #endif
  61:../libraries/Storage/sd_mmc.c **** 
  62:../libraries/Storage/sd_mmc.c **** /**
  63:../libraries/Storage/sd_mmc.c ****  * \ingroup sd_mmc_stack
  64:../libraries/Storage/sd_mmc.c ****  * \defgroup sd_mmc_stack_internal Implementation of SD/MMC/SDIO Stack
  65:../libraries/Storage/sd_mmc.c ****  * @{
  66:../libraries/Storage/sd_mmc.c ****  */
  67:../libraries/Storage/sd_mmc.c **** 
  68:../libraries/Storage/sd_mmc.c **** // Enable debug information for SD/MMC module
  69:../libraries/Storage/sd_mmc.c **** #ifdef SD_MMC_DEBUG
  70:../libraries/Storage/sd_mmc.c **** extern void debugPrintf(const char* fmt, ...);
  71:../libraries/Storage/sd_mmc.c **** #  define sd_mmc_debug(...)      debugPrintf(__VA_ARGS__)
  72:../libraries/Storage/sd_mmc.c **** #else
  73:../libraries/Storage/sd_mmc.c **** #  define sd_mmc_debug(...)
  74:../libraries/Storage/sd_mmc.c **** #endif
  75:../libraries/Storage/sd_mmc.c **** 
  76:../libraries/Storage/sd_mmc.c **** #ifndef SD_MMC_HSMCI_MEM_CNT
  77:../libraries/Storage/sd_mmc.c **** #  error SD_MMC_HSMCI_MEM_CNT not defined
  78:../libraries/Storage/sd_mmc.c **** #endif
  79:../libraries/Storage/sd_mmc.c **** #ifndef SD_MMC_SPI_MEM_CNT
  80:../libraries/Storage/sd_mmc.c **** #  error SD_MMC_SPI_MEM_CNT not defined
  81:../libraries/Storage/sd_mmc.c **** #endif
  82:../libraries/Storage/sd_mmc.c **** 
  83:../libraries/Storage/sd_mmc.c **** typedef void (*driverIdleFunc_t)(uint32_t, uint32_t);
  84:../libraries/Storage/sd_mmc.c **** 
  85:../libraries/Storage/sd_mmc.c **** struct DriverInterface
  86:../libraries/Storage/sd_mmc.c **** {
  87:../libraries/Storage/sd_mmc.c **** 	void (*select_device)(uint8_t slot, uint32_t clock, uint8_t bus_width, bool high_speed);
  88:../libraries/Storage/sd_mmc.c **** 	void (*deselect_device)(uint8_t slot);
  89:../libraries/Storage/sd_mmc.c **** 	uint8_t (*get_bus_width)(uint8_t slot);
  90:../libraries/Storage/sd_mmc.c **** 	bool (*is_high_speed_capable)(void);
  91:../libraries/Storage/sd_mmc.c **** 	void (*send_clock)(void);
  92:../libraries/Storage/sd_mmc.c **** 	bool (*send_cmd)(sdmmc_cmd_def_t cmd, uint32_t arg);
  93:../libraries/Storage/sd_mmc.c **** 	uint32_t (*get_response)(void);
  94:../libraries/Storage/sd_mmc.c **** 	void (*get_response_128)(uint8_t* response);
  95:../libraries/Storage/sd_mmc.c **** 	bool (*adtc_start)(sdmmc_cmd_def_t cmd, uint32_t arg, uint16_t block_size, uint16_t nb_block, bool
  96:../libraries/Storage/sd_mmc.c **** 	bool (*adtc_stop)(sdmmc_cmd_def_t cmd, uint32_t arg);
  97:../libraries/Storage/sd_mmc.c **** 	bool (*read_word)(uint32_t* value);
  98:../libraries/Storage/sd_mmc.c **** 	bool (*write_word)(uint32_t value);
  99:../libraries/Storage/sd_mmc.c **** 	bool (*start_read_blocks)(void *dest, uint16_t nb_block);
 100:../libraries/Storage/sd_mmc.c **** 	bool (*wait_end_of_read_blocks)(void);
ARM GAS  /tmp/ccTIydBQ.s 			page 7


 101:../libraries/Storage/sd_mmc.c **** 	bool (*start_write_blocks)(const void *src, uint16_t nb_block);
 102:../libraries/Storage/sd_mmc.c **** 	bool (*wait_end_of_write_blocks)(void);
 103:../libraries/Storage/sd_mmc.c **** #if 1	//dc42
 104:../libraries/Storage/sd_mmc.c **** 	uint32_t (*getInterfaceSpeed)(void);
 105:../libraries/Storage/sd_mmc.c **** #endif
 106:../libraries/Storage/sd_mmc.c **** 	driverIdleFunc_t (*set_idle_func)(driverIdleFunc_t);
 107:../libraries/Storage/sd_mmc.c **** 	bool is_spi;			// true if the interface is SPI, false if it is HSMCI
 108:../libraries/Storage/sd_mmc.c **** };
 109:../libraries/Storage/sd_mmc.c **** 
 110:../libraries/Storage/sd_mmc.c **** #if (SD_MMC_HSMCI_MEM_CNT != 0)
 111:../libraries/Storage/sd_mmc.c **** #  include "hsmci.h"
 112:../libraries/Storage/sd_mmc.c **** 
 113:../libraries/Storage/sd_mmc.c **** static const struct DriverInterface hsmciInterface = {
 114:../libraries/Storage/sd_mmc.c **** 	.select_device = hsmci_select_device,
 115:../libraries/Storage/sd_mmc.c **** 	.deselect_device = hsmci_deselect_device,
 116:../libraries/Storage/sd_mmc.c **** 	.get_bus_width = hsmci_get_bus_width,
 117:../libraries/Storage/sd_mmc.c **** 	.is_high_speed_capable = hsmci_is_high_speed_capable,
 118:../libraries/Storage/sd_mmc.c **** 	.send_clock = hsmci_send_clock,
 119:../libraries/Storage/sd_mmc.c **** 	.send_cmd = hsmci_send_cmd,
 120:../libraries/Storage/sd_mmc.c **** 	.get_response = hsmci_get_response,
 121:../libraries/Storage/sd_mmc.c **** 	.get_response_128 = hsmci_get_response_128,
 122:../libraries/Storage/sd_mmc.c **** 	.adtc_start = hsmci_adtc_start,
 123:../libraries/Storage/sd_mmc.c **** 	.adtc_stop = hsmci_send_cmd,			// adtc_stop aliased to send_cmd as in the ASF original
 124:../libraries/Storage/sd_mmc.c **** 	.read_word = hsmci_read_word,
 125:../libraries/Storage/sd_mmc.c **** 	.write_word = hsmci_write_word,
 126:../libraries/Storage/sd_mmc.c **** 	.start_read_blocks = hsmci_start_read_blocks,
 127:../libraries/Storage/sd_mmc.c **** 	.wait_end_of_read_blocks = hsmci_wait_end_of_read_blocks,
 128:../libraries/Storage/sd_mmc.c **** 	.start_write_blocks = hsmci_start_write_blocks,
 129:../libraries/Storage/sd_mmc.c **** 	.wait_end_of_write_blocks = hsmci_wait_end_of_write_blocks,
 130:../libraries/Storage/sd_mmc.c **** #if 1	//dc42
 131:../libraries/Storage/sd_mmc.c **** 	.getInterfaceSpeed = hsmci_get_speed,
 132:../libraries/Storage/sd_mmc.c **** #endif
 133:../libraries/Storage/sd_mmc.c **** 	.set_idle_func = hsmci_set_idle_func,
 134:../libraries/Storage/sd_mmc.c **** 	.is_spi = false
 135:../libraries/Storage/sd_mmc.c **** };
 136:../libraries/Storage/sd_mmc.c **** #endif
 137:../libraries/Storage/sd_mmc.c **** 
 138:../libraries/Storage/sd_mmc.c **** #if (SD_MMC_SPI_MEM_CNT != 0)
 139:../libraries/Storage/sd_mmc.c **** #  include "sd_mmc_spi.h"
 140:../libraries/Storage/sd_mmc.c **** 
 141:../libraries/Storage/sd_mmc.c **** static const struct DriverInterface spiInterface = {
 142:../libraries/Storage/sd_mmc.c **** 	.select_device = sd_mmc_spi_select_device,
 143:../libraries/Storage/sd_mmc.c **** 	.deselect_device = sd_mmc_spi_deselect_device,
 144:../libraries/Storage/sd_mmc.c **** 	.get_bus_width = sd_mmc_spi_get_bus_width,
 145:../libraries/Storage/sd_mmc.c **** 	.is_high_speed_capable = sd_mmc_spi_is_high_speed_capable,
 146:../libraries/Storage/sd_mmc.c **** 	.send_clock = sd_mmc_spi_send_clock,
 147:../libraries/Storage/sd_mmc.c **** 	.send_cmd = sd_mmc_spi_send_cmd,
 148:../libraries/Storage/sd_mmc.c **** 	.get_response = sd_mmc_spi_get_response,
 149:../libraries/Storage/sd_mmc.c **** 	.get_response_128 = sd_mmc_spi_get_response_128,
 150:../libraries/Storage/sd_mmc.c **** 	.adtc_start = sd_mmc_spi_adtc_start,
 151:../libraries/Storage/sd_mmc.c **** 	.adtc_stop = sd_mmc_spi_send_cmd,			// adtc_stop aliased to send_cmd as in the ASF original
 152:../libraries/Storage/sd_mmc.c **** 	.read_word = sd_mmc_spi_read_word,
 153:../libraries/Storage/sd_mmc.c **** 	.write_word = sd_mmc_spi_write_word,
 154:../libraries/Storage/sd_mmc.c **** 	.start_read_blocks = sd_mmc_spi_start_read_blocks,
 155:../libraries/Storage/sd_mmc.c **** 	.wait_end_of_read_blocks = sd_mmc_spi_wait_end_of_read_blocks,
 156:../libraries/Storage/sd_mmc.c **** 	.start_write_blocks = sd_mmc_spi_start_write_blocks,
 157:../libraries/Storage/sd_mmc.c **** 	.wait_end_of_write_blocks = sd_mmc_spi_wait_end_of_write_blocks,
ARM GAS  /tmp/ccTIydBQ.s 			page 8


 158:../libraries/Storage/sd_mmc.c **** #if 1	//dc42
 159:../libraries/Storage/sd_mmc.c **** 	.getInterfaceSpeed = spi_mmc_get_speed,
 160:../libraries/Storage/sd_mmc.c **** #endif
 161:../libraries/Storage/sd_mmc.c **** 	.set_idle_func = sd_mmc_spi_set_idle_func,
 162:../libraries/Storage/sd_mmc.c **** 	.is_spi = true
 163:../libraries/Storage/sd_mmc.c **** };
 164:../libraries/Storage/sd_mmc.c **** #endif
 165:../libraries/Storage/sd_mmc.c **** 
 166:../libraries/Storage/sd_mmc.c **** #ifdef SDIO_SUPPORT_ENABLE
 167:../libraries/Storage/sd_mmc.c **** #  define IS_SDIO()  (sd_mmc_card->type & CARD_TYPE_SDIO)
 168:../libraries/Storage/sd_mmc.c **** #else
 169:../libraries/Storage/sd_mmc.c **** #  define IS_SDIO()  false
 170:../libraries/Storage/sd_mmc.c **** #endif
 171:../libraries/Storage/sd_mmc.c **** 
 172:../libraries/Storage/sd_mmc.c **** //! This SD MMC stack supports only the high voltage
 173:../libraries/Storage/sd_mmc.c **** #define SD_MMC_VOLTAGE_SUPPORT \
 174:../libraries/Storage/sd_mmc.c **** 		(OCR_VDD_27_28 | OCR_VDD_28_29 | \
 175:../libraries/Storage/sd_mmc.c **** 		OCR_VDD_29_30 | OCR_VDD_30_31 | \
 176:../libraries/Storage/sd_mmc.c **** 		OCR_VDD_31_32 | OCR_VDD_32_33)
 177:../libraries/Storage/sd_mmc.c **** 
 178:../libraries/Storage/sd_mmc.c **** //! SD/MMC card states
 179:../libraries/Storage/sd_mmc.c **** enum card_state {
 180:../libraries/Storage/sd_mmc.c **** 	SD_MMC_CARD_STATE_READY    = 0, //!< Ready to use
 181:../libraries/Storage/sd_mmc.c **** 	SD_MMC_CARD_STATE_DEBOUNCE = 1, //!< Debounce ongoing
 182:../libraries/Storage/sd_mmc.c **** 	SD_MMC_CARD_STATE_INIT     = 2, //!< Initialization ongoing
 183:../libraries/Storage/sd_mmc.c **** 	SD_MMC_CARD_STATE_UNUSABLE = 3, //!< Unusable card
 184:../libraries/Storage/sd_mmc.c **** 	SD_MMC_CARD_STATE_NO_CARD  = 4, //!< No SD/MMC card inserted
 185:../libraries/Storage/sd_mmc.c **** };
 186:../libraries/Storage/sd_mmc.c **** 
 187:../libraries/Storage/sd_mmc.c **** //! SD/MMC card information structure
 188:../libraries/Storage/sd_mmc.c **** struct sd_mmc_card {
 189:../libraries/Storage/sd_mmc.c **** 	const struct DriverInterface const *iface;	// Pointer to driver interface functions
 190:../libraries/Storage/sd_mmc.c **** 	uint32_t clock;				//!< Card access clock
 191:../libraries/Storage/sd_mmc.c **** 	uint32_t capacity;			//!< Card capacity in KBytes
 192:../libraries/Storage/sd_mmc.c **** #if 0	// dc42
 193:../libraries/Storage/sd_mmc.c **** 	Pin cd_gpio;         		//!< Card detect pin number, or -1 if none present
 194:../libraries/Storage/sd_mmc.c **** #endif
 195:../libraries/Storage/sd_mmc.c **** 	Pin wp_gpio;				//!< Card write protection pin number, or -1 if none present
 196:../libraries/Storage/sd_mmc.c **** 	uint16_t rca;				//!< Relative card address
 197:../libraries/Storage/sd_mmc.c **** 	enum card_state state;		//!< Card state
 198:../libraries/Storage/sd_mmc.c **** 	card_type_t type;			//!< Card type
 199:../libraries/Storage/sd_mmc.c **** 	card_version_t version;		//!< Card version
 200:../libraries/Storage/sd_mmc.c **** 	uint8_t slot;				// Slot number within the driver
 201:../libraries/Storage/sd_mmc.c **** 	uint8_t bus_width;			//!< Number of DATA lines on bus (MCI only)
 202:../libraries/Storage/sd_mmc.c **** 	uint8_t csd[CSD_REG_BSIZE];	//!< CSD register
 203:../libraries/Storage/sd_mmc.c **** 	uint8_t high_speed;			//!< High speed card (1)
 204:../libraries/Storage/sd_mmc.c **** };
 205:../libraries/Storage/sd_mmc.c **** 
 206:../libraries/Storage/sd_mmc.c **** //! SD/MMC card list
 207:../libraries/Storage/sd_mmc.c **** static struct sd_mmc_card sd_mmc_cards[SD_MMC_MEM_CNT];
 208:../libraries/Storage/sd_mmc.c **** 
 209:../libraries/Storage/sd_mmc.c **** //! Index of current slot selected
 210:../libraries/Storage/sd_mmc.c **** static uint8_t sd_mmc_slot_sel;
 211:../libraries/Storage/sd_mmc.c **** //! Pointer on current slot selected
 212:../libraries/Storage/sd_mmc.c **** static struct sd_mmc_card *sd_mmc_card;
 213:../libraries/Storage/sd_mmc.c **** //! Number of block to read or write on the current transfer
 214:../libraries/Storage/sd_mmc.c **** static uint16_t sd_mmc_nb_block_to_tranfer = 0;
ARM GAS  /tmp/ccTIydBQ.s 			page 9


 215:../libraries/Storage/sd_mmc.c **** //! Number of block remaining to read or write on the current transfer
 216:../libraries/Storage/sd_mmc.c **** static uint16_t sd_mmc_nb_block_remaining = 0;
 217:../libraries/Storage/sd_mmc.c **** 
 218:../libraries/Storage/sd_mmc.c **** //! SD/MMC transfer rate unit codes (10K) list
 219:../libraries/Storage/sd_mmc.c **** const uint32_t sd_mmc_trans_units[7] = {
 220:../libraries/Storage/sd_mmc.c **** 	10, 100, 1000, 10000, 0, 0, 0
 221:../libraries/Storage/sd_mmc.c **** };
 222:../libraries/Storage/sd_mmc.c **** //! SD transfer multiplier factor codes (1/10) list
 223:../libraries/Storage/sd_mmc.c **** const uint32_t sd_trans_multipliers[16] = {
 224:../libraries/Storage/sd_mmc.c **** 	0, 10, 12, 13, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 70, 80
 225:../libraries/Storage/sd_mmc.c **** };
 226:../libraries/Storage/sd_mmc.c **** //! MMC transfer multiplier factor codes (1/10) list
 227:../libraries/Storage/sd_mmc.c **** const uint32_t mmc_trans_multipliers[16] = {
 228:../libraries/Storage/sd_mmc.c **** 	0, 10, 12, 13, 15, 20, 26, 30, 35, 40, 45, 52, 55, 60, 70, 80
 229:../libraries/Storage/sd_mmc.c **** };
 230:../libraries/Storage/sd_mmc.c **** 
 231:../libraries/Storage/sd_mmc.c **** //! \name MMC, SD and SDIO commands process
 232:../libraries/Storage/sd_mmc.c **** //! @{
 233:../libraries/Storage/sd_mmc.c **** static bool mmc_spi_op_cond(void);
 234:../libraries/Storage/sd_mmc.c **** static bool mmc_mci_op_cond(void);
 235:../libraries/Storage/sd_mmc.c **** static bool sd_spi_op_cond(uint8_t v2);
 236:../libraries/Storage/sd_mmc.c **** static bool sd_mci_op_cond(uint8_t v2);
 237:../libraries/Storage/sd_mmc.c **** static bool sdio_op_cond(void);
 238:../libraries/Storage/sd_mmc.c **** static bool sdio_get_max_speed(void);
 239:../libraries/Storage/sd_mmc.c **** static bool sdio_cmd52_set_bus_width(void);
 240:../libraries/Storage/sd_mmc.c **** static bool sdio_cmd52_set_high_speed(void);
 241:../libraries/Storage/sd_mmc.c **** static bool sd_cm6_set_high_speed(void);
 242:../libraries/Storage/sd_mmc.c **** static bool mmc_cmd6_set_bus_width(uint8_t bus_width);
 243:../libraries/Storage/sd_mmc.c **** static bool mmc_cmd6_set_high_speed(void);
 244:../libraries/Storage/sd_mmc.c **** static bool sd_cmd8(uint8_t * v2);
 245:../libraries/Storage/sd_mmc.c **** static bool mmc_cmd8(uint8_t *b_authorize_high_speed);
 246:../libraries/Storage/sd_mmc.c **** static bool sd_mmc_cmd9_spi(void);
 247:../libraries/Storage/sd_mmc.c **** static bool sd_mmc_cmd9_mci(void);
 248:../libraries/Storage/sd_mmc.c **** static void mmc_decode_csd(void);
 249:../libraries/Storage/sd_mmc.c **** static void sd_decode_csd(void);
 250:../libraries/Storage/sd_mmc.c **** static bool sd_mmc_cmd13(void);
 251:../libraries/Storage/sd_mmc.c **** #ifdef SDIO_SUPPORT_ENABLE
 252:../libraries/Storage/sd_mmc.c **** static bool sdio_cmd52(uint8_t rw_flag, uint8_t func_nb,
 253:../libraries/Storage/sd_mmc.c **** 		uint32_t reg_addr, uint8_t rd_after_wr, uint8_t *io_data);
 254:../libraries/Storage/sd_mmc.c **** static bool sdio_cmd53(uint8_t rw_flag, uint8_t func_nb, uint32_t reg_addr,
 255:../libraries/Storage/sd_mmc.c **** 		uint8_t inc_addr, uint32_t size, bool access_block);
 256:../libraries/Storage/sd_mmc.c **** #endif // SDIO_SUPPORT_ENABLE
 257:../libraries/Storage/sd_mmc.c **** static bool sd_acmd6(void);
 258:../libraries/Storage/sd_mmc.c **** static bool sd_acmd51(void);
 259:../libraries/Storage/sd_mmc.c **** //! @}
 260:../libraries/Storage/sd_mmc.c **** 
 261:../libraries/Storage/sd_mmc.c **** //! \name Internal function to process the initialization and install
 262:../libraries/Storage/sd_mmc.c **** //! @{
 263:../libraries/Storage/sd_mmc.c **** static sd_mmc_err_t sd_mmc_select_slot(uint8_t slot);
 264:../libraries/Storage/sd_mmc.c **** static void sd_mmc_configure_slot(void);
 265:../libraries/Storage/sd_mmc.c **** static void sd_mmc_deselect_slot(void);
 266:../libraries/Storage/sd_mmc.c **** static bool sd_mmc_spi_card_init(void);
 267:../libraries/Storage/sd_mmc.c **** static bool sd_mmc_mci_card_init(void);
 268:../libraries/Storage/sd_mmc.c **** static bool sd_mmc_spi_install_mmc(void);
 269:../libraries/Storage/sd_mmc.c **** static bool sd_mmc_mci_install_mmc(void);
 270:../libraries/Storage/sd_mmc.c **** //! @}
 271:../libraries/Storage/sd_mmc.c **** 
ARM GAS  /tmp/ccTIydBQ.s 			page 10


 272:../libraries/Storage/sd_mmc.c **** 
 273:../libraries/Storage/sd_mmc.c **** //! \name Internal functions to manage a large timeout after a card insertion
 274:../libraries/Storage/sd_mmc.c **** //! @{
 275:../libraries/Storage/sd_mmc.c **** #define SD_MMC_DEBOUNCE_TIMEOUT   1000 // Unit ms
 276:../libraries/Storage/sd_mmc.c **** 
 277:../libraries/Storage/sd_mmc.c **** #if 1	//dc42
 278:../libraries/Storage/sd_mmc.c **** 
 279:../libraries/Storage/sd_mmc.c **** // The timeout functions are not needed for RepRapFirmware
 280:../libraries/Storage/sd_mmc.c **** 
 281:../libraries/Storage/sd_mmc.c **** #else
 282:../libraries/Storage/sd_mmc.c **** 
 283:../libraries/Storage/sd_mmc.c **** #if XMEGA || defined(REPRAPFIRMWARE)
 284:../libraries/Storage/sd_mmc.c **** #  define SD_MMC_START_TIMEOUT()  delay_ms(SD_MMC_DEBOUNCE_TIMEOUT)
 285:../libraries/Storage/sd_mmc.c **** #  define SD_MMC_IS_TIMEOUT()     true
 286:../libraries/Storage/sd_mmc.c **** #  define SD_MMC_STOP_TIMEOUT()
 287:../libraries/Storage/sd_mmc.c **** #endif
 288:../libraries/Storage/sd_mmc.c **** 
 289:../libraries/Storage/sd_mmc.c **** #if UC3
 290:../libraries/Storage/sd_mmc.c **** static  t_cpu_time timer;
 291:../libraries/Storage/sd_mmc.c **** #  define SD_MMC_START_TIMEOUT() \
 292:../libraries/Storage/sd_mmc.c **** 		cpu_set_timeout(cpu_ms_2_cy(SD_MMC_DEBOUNCE_TIMEOUT, sysclk_get_cpu_hz()), &timer)
 293:../libraries/Storage/sd_mmc.c **** #  define SD_MMC_IS_TIMEOUT() \
 294:../libraries/Storage/sd_mmc.c **** 		cpu_is_timeout(&timer)
 295:../libraries/Storage/sd_mmc.c **** #  define SD_MMC_STOP_TIMEOUT()
 296:../libraries/Storage/sd_mmc.c **** #endif
 297:../libraries/Storage/sd_mmc.c **** 
 298:../libraries/Storage/sd_mmc.c **** #if SAM && !defined(REPRAPFIRMWARE)
 299:../libraries/Storage/sd_mmc.c **** static bool sd_mmc_sam_systick_used;
 300:../libraries/Storage/sd_mmc.c **** #  ifdef FREERTOS_USED
 301:../libraries/Storage/sd_mmc.c **** 		static xTimeOutType xTimeOut;
 302:../libraries/Storage/sd_mmc.c **** #	endif
 303:../libraries/Storage/sd_mmc.c **** 
 304:../libraries/Storage/sd_mmc.c **** static inline void SD_MMC_START_TIMEOUT(void)
 305:../libraries/Storage/sd_mmc.c **** {
 306:../libraries/Storage/sd_mmc.c **** 	if (!SysTick->CTRL) {
 307:../libraries/Storage/sd_mmc.c **** 		sd_mmc_sam_systick_used = true;
 308:../libraries/Storage/sd_mmc.c **** 		SysTick->LOAD = (sysclk_get_cpu_hz() / (8 * 1000))
 309:../libraries/Storage/sd_mmc.c **** 				* SD_MMC_DEBOUNCE_TIMEOUT;
 310:../libraries/Storage/sd_mmc.c **** 		SysTick->CTRL = SysTick_CTRL_ENABLE_Msk;
 311:../libraries/Storage/sd_mmc.c **** 	} else {
 312:../libraries/Storage/sd_mmc.c **** 		sd_mmc_sam_systick_used = false;
 313:../libraries/Storage/sd_mmc.c **** #ifdef FREERTOS_USED
 314:../libraries/Storage/sd_mmc.c **** 		// Note: the define INCLUDE_vTaskDelay must be set to one
 315:../libraries/Storage/sd_mmc.c **** 		// in FreeRTOSConfig.h file.
 316:../libraries/Storage/sd_mmc.c **** 		vTaskSetTimeOutState(&xTimeOut);
 317:../libraries/Storage/sd_mmc.c **** #else
 318:../libraries/Storage/sd_mmc.c **** 		delay_ms(SD_MMC_DEBOUNCE_TIMEOUT);
 319:../libraries/Storage/sd_mmc.c **** #endif
 320:../libraries/Storage/sd_mmc.c **** 	}
 321:../libraries/Storage/sd_mmc.c **** }
 322:../libraries/Storage/sd_mmc.c **** 
 323:../libraries/Storage/sd_mmc.c **** static inline bool SD_MMC_IS_TIMEOUT(void)
 324:../libraries/Storage/sd_mmc.c **** {
 325:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_sam_systick_used) {
 326:../libraries/Storage/sd_mmc.c **** #ifdef FREERTOS_USED
 327:../libraries/Storage/sd_mmc.c **** 		portTickType xTicksToWait =
 328:../libraries/Storage/sd_mmc.c **** 				SD_MMC_DEBOUNCE_TIMEOUT / portTICK_RATE_MS;
ARM GAS  /tmp/ccTIydBQ.s 			page 11


 329:../libraries/Storage/sd_mmc.c **** 		return (xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == pdTRUE);
 330:../libraries/Storage/sd_mmc.c **** #else
 331:../libraries/Storage/sd_mmc.c **** 		return true;
 332:../libraries/Storage/sd_mmc.c **** #endif
 333:../libraries/Storage/sd_mmc.c **** 	}
 334:../libraries/Storage/sd_mmc.c **** 	if (SysTick->CTRL & SysTick_CTRL_COUNTFLAG_Msk) {
 335:../libraries/Storage/sd_mmc.c **** 		SysTick->CTRL = 0;
 336:../libraries/Storage/sd_mmc.c **** 		return true;
 337:../libraries/Storage/sd_mmc.c **** 	}
 338:../libraries/Storage/sd_mmc.c **** 	return false;
 339:../libraries/Storage/sd_mmc.c **** }
 340:../libraries/Storage/sd_mmc.c **** 
 341:../libraries/Storage/sd_mmc.c **** static inline void SD_MMC_STOP_TIMEOUT(void)
 342:../libraries/Storage/sd_mmc.c **** {
 343:../libraries/Storage/sd_mmc.c **** 	if (sd_mmc_sam_systick_used) {
 344:../libraries/Storage/sd_mmc.c **** 		SysTick->CTRL = 0;
 345:../libraries/Storage/sd_mmc.c **** 	}
 346:../libraries/Storage/sd_mmc.c **** }
 347:../libraries/Storage/sd_mmc.c **** #endif	//SAM
 348:../libraries/Storage/sd_mmc.c **** 
 349:../libraries/Storage/sd_mmc.c **** #endif	// RepRapFirmware
 350:../libraries/Storage/sd_mmc.c **** //! @}
 351:../libraries/Storage/sd_mmc.c **** 
 352:../libraries/Storage/sd_mmc.c **** /**
 353:../libraries/Storage/sd_mmc.c ****  * \brief Sends operation condition command and read OCR (SPI only)
 354:../libraries/Storage/sd_mmc.c ****  * - CMD1 sends operation condition command
 355:../libraries/Storage/sd_mmc.c ****  * - CMD58 reads OCR
 356:../libraries/Storage/sd_mmc.c ****  *
 357:../libraries/Storage/sd_mmc.c ****  * \return true if success, otherwise false
 358:../libraries/Storage/sd_mmc.c ****  */
 359:../libraries/Storage/sd_mmc.c **** static bool mmc_spi_op_cond(void)
 360:../libraries/Storage/sd_mmc.c **** {
 361:../libraries/Storage/sd_mmc.c **** 	uint32_t retry, resp;
 362:../libraries/Storage/sd_mmc.c **** 
 363:../libraries/Storage/sd_mmc.c **** 	/*
 364:../libraries/Storage/sd_mmc.c **** 	 * Timeout 1s = 400KHz / ((6+1)*8) cylces = 7150 retry
 365:../libraries/Storage/sd_mmc.c **** 	 * 6 = cmd byte size
 366:../libraries/Storage/sd_mmc.c **** 	 * 1 = response byte size
 367:../libraries/Storage/sd_mmc.c **** 	 */
 368:../libraries/Storage/sd_mmc.c **** 	retry = 7150;
 369:../libraries/Storage/sd_mmc.c **** 	do {
 370:../libraries/Storage/sd_mmc.c **** 		if (!sd_mmc_card->iface->send_cmd(MMC_SPI_CMD1_SEND_OP_COND, 0)) {
 371:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: CMD1 SPI Fail - Busy retry %d\n\r",
 372:../libraries/Storage/sd_mmc.c **** 					__func__, (int)(7150 - retry));
 373:../libraries/Storage/sd_mmc.c **** 			return false;
 374:../libraries/Storage/sd_mmc.c **** 		}
 375:../libraries/Storage/sd_mmc.c **** 		// Check busy flag
 376:../libraries/Storage/sd_mmc.c **** 		resp = sd_mmc_card->iface->get_response();
 377:../libraries/Storage/sd_mmc.c **** 		if (!(resp & R1_SPI_IDLE)) {
 378:../libraries/Storage/sd_mmc.c **** 			break;
 379:../libraries/Storage/sd_mmc.c **** 		}
 380:../libraries/Storage/sd_mmc.c **** 		if (retry-- == 0) {
 381:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: CMD1 Timeout on busy\n\r", __func__);
 382:../libraries/Storage/sd_mmc.c **** 			return false;
 383:../libraries/Storage/sd_mmc.c **** 		}
 384:../libraries/Storage/sd_mmc.c **** 	} while (1);
 385:../libraries/Storage/sd_mmc.c **** 
ARM GAS  /tmp/ccTIydBQ.s 			page 12


 386:../libraries/Storage/sd_mmc.c **** 	// Read OCR for SPI mode
 387:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->send_cmd(SDMMC_SPI_CMD58_READ_OCR, 0)) {
 388:../libraries/Storage/sd_mmc.c **** 		sd_mmc_debug("%s: CMD58 Fail\n\r", __func__);
 389:../libraries/Storage/sd_mmc.c **** 		return false;
 390:../libraries/Storage/sd_mmc.c **** 	}
 391:../libraries/Storage/sd_mmc.c **** 	// Check OCR value
 392:../libraries/Storage/sd_mmc.c **** 	if ((sd_mmc_card->iface->get_response() & OCR_ACCESS_MODE_MASK)
 393:../libraries/Storage/sd_mmc.c **** 			== OCR_ACCESS_MODE_SECTOR) {
 394:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->type |= CARD_TYPE_HC;
 395:../libraries/Storage/sd_mmc.c **** 	}
 396:../libraries/Storage/sd_mmc.c **** 	return true;
 397:../libraries/Storage/sd_mmc.c **** }
 398:../libraries/Storage/sd_mmc.c **** 
 399:../libraries/Storage/sd_mmc.c **** /**
 400:../libraries/Storage/sd_mmc.c ****  * \brief Sends operation condition command and read OCR (MCI only)
 401:../libraries/Storage/sd_mmc.c ****  * - CMD1 sends operation condition command
 402:../libraries/Storage/sd_mmc.c ****  * - CMD1 reads OCR
 403:../libraries/Storage/sd_mmc.c ****  *
 404:../libraries/Storage/sd_mmc.c ****  * \return true if success, otherwise false
 405:../libraries/Storage/sd_mmc.c ****  */
 406:../libraries/Storage/sd_mmc.c **** static bool mmc_mci_op_cond(void)
 407:../libraries/Storage/sd_mmc.c **** {
 408:../libraries/Storage/sd_mmc.c **** 	uint32_t retry, resp;
 409:../libraries/Storage/sd_mmc.c **** 
 410:../libraries/Storage/sd_mmc.c **** 	/*
 411:../libraries/Storage/sd_mmc.c **** 	 * Timeout 1s = 400KHz / ((6+6)*8) cylces = 4200 retry
 412:../libraries/Storage/sd_mmc.c **** 	 * 6 = cmd byte size
 413:../libraries/Storage/sd_mmc.c **** 	 * 6 = response byte size
 414:../libraries/Storage/sd_mmc.c **** 	 */
 415:../libraries/Storage/sd_mmc.c **** 	retry = 4200;
 416:../libraries/Storage/sd_mmc.c **** 	do {
 417:../libraries/Storage/sd_mmc.c **** 		if (!sd_mmc_card->iface->send_cmd(MMC_MCI_CMD1_SEND_OP_COND,
 418:../libraries/Storage/sd_mmc.c **** 				SD_MMC_VOLTAGE_SUPPORT | OCR_ACCESS_MODE_SECTOR)) {
 419:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: CMD1 MCI Fail - Busy retry %d\n\r",
 420:../libraries/Storage/sd_mmc.c **** 					__func__, (int)(4200 - retry));
 421:../libraries/Storage/sd_mmc.c **** 			return false;
 422:../libraries/Storage/sd_mmc.c **** 		}
 423:../libraries/Storage/sd_mmc.c **** 		// Check busy flag
 424:../libraries/Storage/sd_mmc.c **** 		resp = sd_mmc_card->iface->get_response();
 425:../libraries/Storage/sd_mmc.c **** 		if (resp & OCR_POWER_UP_BUSY) {
 426:../libraries/Storage/sd_mmc.c **** 			// Check OCR value
 427:../libraries/Storage/sd_mmc.c **** 			if ((resp & OCR_ACCESS_MODE_MASK)
 428:../libraries/Storage/sd_mmc.c **** 					== OCR_ACCESS_MODE_SECTOR) {
 429:../libraries/Storage/sd_mmc.c **** 				sd_mmc_card->type |= CARD_TYPE_HC;
 430:../libraries/Storage/sd_mmc.c **** 			}
 431:../libraries/Storage/sd_mmc.c **** 			break;
 432:../libraries/Storage/sd_mmc.c **** 		}
 433:../libraries/Storage/sd_mmc.c **** 		if (retry-- == 0) {
 434:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: CMD1 Timeout on busy\n\r", __func__);
 435:../libraries/Storage/sd_mmc.c **** 			return false;
 436:../libraries/Storage/sd_mmc.c **** 		}
 437:../libraries/Storage/sd_mmc.c **** 	} while (1);
 438:../libraries/Storage/sd_mmc.c **** 	return true;
 439:../libraries/Storage/sd_mmc.c **** }
 440:../libraries/Storage/sd_mmc.c **** 
 441:../libraries/Storage/sd_mmc.c **** /**
 442:../libraries/Storage/sd_mmc.c ****  * \brief Ask to all cards to send their operations conditions (SPI only).
ARM GAS  /tmp/ccTIydBQ.s 			page 13


 443:../libraries/Storage/sd_mmc.c ****  * - ACMD41 sends operation condition command.
 444:../libraries/Storage/sd_mmc.c ****  * - CMD58 reads OCR
 445:../libraries/Storage/sd_mmc.c ****  *
 446:../libraries/Storage/sd_mmc.c ****  * \param v2   Shall be 1 if it is a SD card V2
 447:../libraries/Storage/sd_mmc.c ****  *
 448:../libraries/Storage/sd_mmc.c ****  * \return true if success, otherwise false
 449:../libraries/Storage/sd_mmc.c ****  */
 450:../libraries/Storage/sd_mmc.c **** static bool sd_spi_op_cond(uint8_t v2)
 451:../libraries/Storage/sd_mmc.c **** {
 452:../libraries/Storage/sd_mmc.c **** 	uint32_t arg, retry, resp;
 453:../libraries/Storage/sd_mmc.c **** 
 454:../libraries/Storage/sd_mmc.c **** 	/*
 455:../libraries/Storage/sd_mmc.c **** 	 * Timeout 1s = 400KHz / ((6+1)*8) cylces = 7150 retry
 456:../libraries/Storage/sd_mmc.c **** 	 * 6 = cmd byte size
 457:../libraries/Storage/sd_mmc.c **** 	 * 1 = response byte size
 458:../libraries/Storage/sd_mmc.c **** 	 */
 459:../libraries/Storage/sd_mmc.c **** 	retry = 7150;
 460:../libraries/Storage/sd_mmc.c **** 	do {
 461:../libraries/Storage/sd_mmc.c **** 		// CMD55 - Indicate to the card that the next command is an
 462:../libraries/Storage/sd_mmc.c **** 		// application specific command rather than a standard command.
 463:../libraries/Storage/sd_mmc.c **** 		if (!sd_mmc_card->iface->send_cmd(SDMMC_CMD55_APP_CMD, 0)) {
 464:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: CMD55 Fail\n\r", __func__);
 465:../libraries/Storage/sd_mmc.c **** 			return false;
 466:../libraries/Storage/sd_mmc.c **** 		}
 467:../libraries/Storage/sd_mmc.c **** 
 468:../libraries/Storage/sd_mmc.c **** 		// (ACMD41) Sends host OCR register
 469:../libraries/Storage/sd_mmc.c **** 		arg = 0;
 470:../libraries/Storage/sd_mmc.c **** 		if (v2) {
 471:../libraries/Storage/sd_mmc.c **** 			arg |= SD_ACMD41_HCS;
 472:../libraries/Storage/sd_mmc.c **** 		}
 473:../libraries/Storage/sd_mmc.c **** 		// Check response
 474:../libraries/Storage/sd_mmc.c **** 		if (!sd_mmc_card->iface->send_cmd(SD_SPI_ACMD41_SD_SEND_OP_COND, arg)) {
 475:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: ACMD41 Fail\n\r", __func__);
 476:../libraries/Storage/sd_mmc.c **** 			return false;
 477:../libraries/Storage/sd_mmc.c **** 		}
 478:../libraries/Storage/sd_mmc.c **** 		resp = sd_mmc_card->iface->get_response();
 479:../libraries/Storage/sd_mmc.c **** 		if (!(resp & R1_SPI_IDLE)) {
 480:../libraries/Storage/sd_mmc.c **** 			// Card is ready
 481:../libraries/Storage/sd_mmc.c **** 			break;
 482:../libraries/Storage/sd_mmc.c **** 		}
 483:../libraries/Storage/sd_mmc.c **** 		if (retry-- == 0) {
 484:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: ACMD41 Timeout on busy, resp32 0x%08x \n\r",
 485:../libraries/Storage/sd_mmc.c **** 					__func__, resp);
 486:../libraries/Storage/sd_mmc.c **** 			return false;
 487:../libraries/Storage/sd_mmc.c **** 		}
 488:../libraries/Storage/sd_mmc.c **** 	} while (1);
 489:../libraries/Storage/sd_mmc.c **** 
 490:../libraries/Storage/sd_mmc.c **** 	// Read OCR for SPI mode
 491:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->send_cmd(SDMMC_SPI_CMD58_READ_OCR, 0)) {
 492:../libraries/Storage/sd_mmc.c **** 		sd_mmc_debug("%s: CMD58 Fail\n\r", __func__);
 493:../libraries/Storage/sd_mmc.c **** 		return false;
 494:../libraries/Storage/sd_mmc.c **** 	}
 495:../libraries/Storage/sd_mmc.c **** 	if ((sd_mmc_card->iface->get_response() & OCR_CCS) != 0) {
 496:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->type |= CARD_TYPE_HC;
 497:../libraries/Storage/sd_mmc.c **** 	}
 498:../libraries/Storage/sd_mmc.c **** 	return true;
 499:../libraries/Storage/sd_mmc.c **** }
ARM GAS  /tmp/ccTIydBQ.s 			page 14


 500:../libraries/Storage/sd_mmc.c **** 
 501:../libraries/Storage/sd_mmc.c **** /**
 502:../libraries/Storage/sd_mmc.c ****  * \brief Ask to all cards to send their operations conditions (MCI only).
 503:../libraries/Storage/sd_mmc.c ****  * - ACMD41 sends operation condition command.
 504:../libraries/Storage/sd_mmc.c ****  * - ACMD41 reads OCR
 505:../libraries/Storage/sd_mmc.c ****  *
 506:../libraries/Storage/sd_mmc.c ****  * \param v2   Shall be 1 if it is a SD card V2
 507:../libraries/Storage/sd_mmc.c ****  *
 508:../libraries/Storage/sd_mmc.c ****  * \return true if success, otherwise false
 509:../libraries/Storage/sd_mmc.c ****  */
 510:../libraries/Storage/sd_mmc.c **** static bool sd_mci_op_cond(uint8_t v2)
 511:../libraries/Storage/sd_mmc.c **** {
 512:../libraries/Storage/sd_mmc.c **** 	uint32_t arg, retry, resp;
 513:../libraries/Storage/sd_mmc.c **** 
 514:../libraries/Storage/sd_mmc.c **** 	/*
 515:../libraries/Storage/sd_mmc.c **** 	 * Timeout 1s = 400KHz / ((6+6+6+6)*8) cylces = 2100 retry
 516:../libraries/Storage/sd_mmc.c **** 	 * 6 = cmd byte size
 517:../libraries/Storage/sd_mmc.c **** 	 * 6 = response byte size
 518:../libraries/Storage/sd_mmc.c **** 	 * 6 = cmd byte size
 519:../libraries/Storage/sd_mmc.c **** 	 * 6 = response byte size
 520:../libraries/Storage/sd_mmc.c **** 	 */
 521:../libraries/Storage/sd_mmc.c **** 	retry = 2100;
 522:../libraries/Storage/sd_mmc.c **** 	do {
 523:../libraries/Storage/sd_mmc.c **** 		// CMD55 - Indicate to the card that the next command is an
 524:../libraries/Storage/sd_mmc.c **** 		// application specific command rather than a standard command.
 525:../libraries/Storage/sd_mmc.c **** 		if (!sd_mmc_card->iface->send_cmd(SDMMC_CMD55_APP_CMD, 0)) {
 526:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: CMD55 Fail\n\r", __func__);
 527:../libraries/Storage/sd_mmc.c **** 			return false;
 528:../libraries/Storage/sd_mmc.c **** 		}
 529:../libraries/Storage/sd_mmc.c **** 
 530:../libraries/Storage/sd_mmc.c **** 		// (ACMD41) Sends host OCR register
 531:../libraries/Storage/sd_mmc.c **** 		arg = SD_MMC_VOLTAGE_SUPPORT;
 532:../libraries/Storage/sd_mmc.c **** 		if (v2) {
 533:../libraries/Storage/sd_mmc.c **** 			arg |= SD_ACMD41_HCS;
 534:../libraries/Storage/sd_mmc.c **** 		}
 535:../libraries/Storage/sd_mmc.c **** 		// Check response
 536:../libraries/Storage/sd_mmc.c **** 		if (!sd_mmc_card->iface->send_cmd(SD_MCI_ACMD41_SD_SEND_OP_COND, arg)) {
 537:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: ACMD41 Fail\n\r", __func__);
 538:../libraries/Storage/sd_mmc.c **** 			return false;
 539:../libraries/Storage/sd_mmc.c **** 		}
 540:../libraries/Storage/sd_mmc.c **** 		resp = sd_mmc_card->iface->get_response();
 541:../libraries/Storage/sd_mmc.c **** 		if (resp & OCR_POWER_UP_BUSY) {
 542:../libraries/Storage/sd_mmc.c **** 			// Card is ready
 543:../libraries/Storage/sd_mmc.c **** 			if ((resp & OCR_CCS) != 0) {
 544:../libraries/Storage/sd_mmc.c **** 				sd_mmc_card->type |= CARD_TYPE_HC;
 545:../libraries/Storage/sd_mmc.c **** 			}
 546:../libraries/Storage/sd_mmc.c **** 			break;
 547:../libraries/Storage/sd_mmc.c **** 		}
 548:../libraries/Storage/sd_mmc.c **** 		if (retry-- == 0) {
 549:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: ACMD41 Timeout on busy, resp32 0x%08x \n\r",
 550:../libraries/Storage/sd_mmc.c **** 					__func__, resp);
 551:../libraries/Storage/sd_mmc.c **** 			return false;
 552:../libraries/Storage/sd_mmc.c **** 		}
 553:../libraries/Storage/sd_mmc.c **** 	} while (1);
 554:../libraries/Storage/sd_mmc.c **** 	return true;
 555:../libraries/Storage/sd_mmc.c **** }
 556:../libraries/Storage/sd_mmc.c **** 
ARM GAS  /tmp/ccTIydBQ.s 			page 15


 557:../libraries/Storage/sd_mmc.c **** #ifdef SDIO_SUPPORT_ENABLE
 558:../libraries/Storage/sd_mmc.c **** /**
 559:../libraries/Storage/sd_mmc.c ****  * \brief Try to get the SDIO card's operating condition
 560:../libraries/Storage/sd_mmc.c ****  * - CMD5 to read OCR NF field
 561:../libraries/Storage/sd_mmc.c ****  * - CMD5 to wait OCR power up busy
 562:../libraries/Storage/sd_mmc.c ****  * - CMD5 to read OCR MP field
 563:../libraries/Storage/sd_mmc.c ****  *   sd_mmc_card->type is updated
 564:../libraries/Storage/sd_mmc.c ****  *
 565:../libraries/Storage/sd_mmc.c ****  * \return true if success, otherwise false
 566:../libraries/Storage/sd_mmc.c ****  */
 567:../libraries/Storage/sd_mmc.c **** static bool sdio_op_cond(void)
 568:../libraries/Storage/sd_mmc.c **** {
 569:../libraries/Storage/sd_mmc.c **** 	uint32_t resp;
 570:../libraries/Storage/sd_mmc.c **** 
 571:../libraries/Storage/sd_mmc.c **** 	// CMD5 - SDIO send operation condition (OCR) command.
 572:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->send_cmd(SDIO_CMD5_SEND_OP_COND, 0)) {
 573:../libraries/Storage/sd_mmc.c **** 		sd_mmc_debug("%s: CMD5 Fail\n\r", __func__);
 574:../libraries/Storage/sd_mmc.c **** 		return true; // No error but card type not updated
 575:../libraries/Storage/sd_mmc.c **** 	}
 576:../libraries/Storage/sd_mmc.c **** 	resp = sd_mmc_card->iface->get_response();
 577:../libraries/Storage/sd_mmc.c **** 	if ((resp & OCR_SDIO_NF) == 0) {
 578:../libraries/Storage/sd_mmc.c **** 		return true; // No error but card type not updated
 579:../libraries/Storage/sd_mmc.c **** 	}
 580:../libraries/Storage/sd_mmc.c **** 
 581:../libraries/Storage/sd_mmc.c **** 	/*
 582:../libraries/Storage/sd_mmc.c **** 	 * Wait card ready
 583:../libraries/Storage/sd_mmc.c **** 	 * Timeout 1s = 400KHz / ((6+4)*8) cylces = 5000 retry
 584:../libraries/Storage/sd_mmc.c **** 	 * 6 = cmd byte size
 585:../libraries/Storage/sd_mmc.c **** 	 * 4(SPI) 6(MCI) = response byte size
 586:../libraries/Storage/sd_mmc.c **** 	 */
 587:../libraries/Storage/sd_mmc.c **** 	uint32_t cmd5_retry = 5000;
 588:../libraries/Storage/sd_mmc.c **** 	while (1) {
 589:../libraries/Storage/sd_mmc.c **** 		// CMD5 - SDIO send operation condition (OCR) command.
 590:../libraries/Storage/sd_mmc.c **** 		if (!sd_mmc_card->iface->send_cmd(SDIO_CMD5_SEND_OP_COND,
 591:../libraries/Storage/sd_mmc.c **** 				resp & SD_MMC_VOLTAGE_SUPPORT)) {
 592:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: CMD5 Fail\n\r", __func__);
 593:../libraries/Storage/sd_mmc.c **** 			return false;
 594:../libraries/Storage/sd_mmc.c **** 		}
 595:../libraries/Storage/sd_mmc.c **** 		resp = sd_mmc_card->iface->get_response();
 596:../libraries/Storage/sd_mmc.c **** 		if ((resp & OCR_POWER_UP_BUSY) == OCR_POWER_UP_BUSY) {
 597:../libraries/Storage/sd_mmc.c **** 			break;
 598:../libraries/Storage/sd_mmc.c **** 		}
 599:../libraries/Storage/sd_mmc.c **** 		if (cmd5_retry-- == 0) {
 600:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: CMD5 Timeout on busy\n\r", __func__);
 601:../libraries/Storage/sd_mmc.c **** 			return false;
 602:../libraries/Storage/sd_mmc.c **** 		}
 603:../libraries/Storage/sd_mmc.c **** 	}
 604:../libraries/Storage/sd_mmc.c **** 	// Update card type at the end of busy
 605:../libraries/Storage/sd_mmc.c **** 	if ((resp & OCR_SDIO_MP) > 0) {
 606:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->type = CARD_TYPE_SD_COMBO;
 607:../libraries/Storage/sd_mmc.c **** 	} else {
 608:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->type = CARD_TYPE_SDIO;
 609:../libraries/Storage/sd_mmc.c **** 	}
 610:../libraries/Storage/sd_mmc.c **** 	return true; // No error and card type updated with SDIO type
 611:../libraries/Storage/sd_mmc.c **** }
 612:../libraries/Storage/sd_mmc.c **** 
 613:../libraries/Storage/sd_mmc.c **** /**
ARM GAS  /tmp/ccTIydBQ.s 			page 16


 614:../libraries/Storage/sd_mmc.c ****  * \brief Get SDIO max transfer speed in Hz.
 615:../libraries/Storage/sd_mmc.c ****  * - CMD53 reads CIS area address in CCCR area.
 616:../libraries/Storage/sd_mmc.c ****  * - Nx CMD53 search Fun0 tuple in CIS area
 617:../libraries/Storage/sd_mmc.c ****  * - CMD53 reads TPLFE_MAX_TRAN_SPEED in Fun0 tuple
 618:../libraries/Storage/sd_mmc.c ****  * - Compute maximum speed of SDIO
 619:../libraries/Storage/sd_mmc.c ****  *   and update sd_mmc_card->clock
 620:../libraries/Storage/sd_mmc.c ****  *
 621:../libraries/Storage/sd_mmc.c ****  * \return true if success, otherwise false
 622:../libraries/Storage/sd_mmc.c ****  */
 623:../libraries/Storage/sd_mmc.c **** static bool sdio_get_max_speed(void)
 624:../libraries/Storage/sd_mmc.c **** {
 625:../libraries/Storage/sd_mmc.c **** 	uint32_t addr, addr_cis;
 626:../libraries/Storage/sd_mmc.c **** 	uint8_t buf[6];
 627:../libraries/Storage/sd_mmc.c ****  	uint32_t unit;
 628:../libraries/Storage/sd_mmc.c **** 	uint32_t mul;
 629:../libraries/Storage/sd_mmc.c **** 	uint8_t tplfe_max_tran_speed;
 630:../libraries/Storage/sd_mmc.c **** 
 631:../libraries/Storage/sd_mmc.c **** 	// Read CIS area address in CCCR area
 632:../libraries/Storage/sd_mmc.c **** 	addr_cis = 0; // Init all bytes, because the next function fill 3 bytes only
 633:../libraries/Storage/sd_mmc.c **** 	if (!sdio_cmd53(SDIO_CMD53_READ_FLAG, SDIO_CIA, SDIO_CCCR_CIS_PTR, 1, 3, true)) {
 634:../libraries/Storage/sd_mmc.c **** 		sd_mmc_debug("%s: CMD53 Read CIS Fail\n\r", __func__);
 635:../libraries/Storage/sd_mmc.c **** 		return false;
 636:../libraries/Storage/sd_mmc.c **** 	}
 637:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->start_read_blocks((uint8_t *)&addr_cis, 1)) {
 638:../libraries/Storage/sd_mmc.c **** 		return false;
 639:../libraries/Storage/sd_mmc.c **** 	}
 640:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->wait_end_of_read_blocks()) {
 641:../libraries/Storage/sd_mmc.c **** 		return false;
 642:../libraries/Storage/sd_mmc.c **** 	}
 643:../libraries/Storage/sd_mmc.c **** 	addr_cis = le32_to_cpu(addr_cis);
 644:../libraries/Storage/sd_mmc.c **** 
 645:../libraries/Storage/sd_mmc.c **** 	// Search Fun0 tuple in the CIA area
 646:../libraries/Storage/sd_mmc.c **** 	addr = addr_cis;
 647:../libraries/Storage/sd_mmc.c **** 	while (1) {
 648:../libraries/Storage/sd_mmc.c **** 		// Read a sample of CIA area
 649:../libraries/Storage/sd_mmc.c **** 		if (!sdio_cmd53(SDIO_CMD53_READ_FLAG, SDIO_CIA, addr, 1, 3, true)) {
 650:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: CMD53 Read CIA Fail\n\r", __func__);
 651:../libraries/Storage/sd_mmc.c **** 			return false;
 652:../libraries/Storage/sd_mmc.c **** 		}
 653:../libraries/Storage/sd_mmc.c **** 		if (!sd_mmc_card->iface->start_read_blocks(buf, 1)) {
 654:../libraries/Storage/sd_mmc.c **** 			return false;
 655:../libraries/Storage/sd_mmc.c **** 		}
 656:../libraries/Storage/sd_mmc.c **** 		if (!sd_mmc_card->iface->wait_end_of_read_blocks()) {
 657:../libraries/Storage/sd_mmc.c **** 			return false;
 658:../libraries/Storage/sd_mmc.c **** 		}
 659:../libraries/Storage/sd_mmc.c **** 		if (buf[0] == SDIO_CISTPL_END) {
 660:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: CMD53 Tuple error\n\r", __func__);
 661:../libraries/Storage/sd_mmc.c **** 			return false; // Tuple error
 662:../libraries/Storage/sd_mmc.c **** 		}
 663:../libraries/Storage/sd_mmc.c **** 		if (buf[0] == SDIO_CISTPL_FUNCE && buf[2] == 0x00) {
 664:../libraries/Storage/sd_mmc.c **** 			break; // Fun0 tuple found
 665:../libraries/Storage/sd_mmc.c **** 		}
 666:../libraries/Storage/sd_mmc.c **** 		if (buf[1] == 0) {
 667:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: CMD53 Tuple error\n\r", __func__);
 668:../libraries/Storage/sd_mmc.c **** 			return false; // Tuple error
 669:../libraries/Storage/sd_mmc.c **** 		}
 670:../libraries/Storage/sd_mmc.c **** 
ARM GAS  /tmp/ccTIydBQ.s 			page 17


 671:../libraries/Storage/sd_mmc.c **** 		// Next address
 672:../libraries/Storage/sd_mmc.c **** 		addr += (buf[1] + 2);
 673:../libraries/Storage/sd_mmc.c **** 		if (addr > (addr_cis + 256)) {
 674:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: CMD53 Outoff CIS area\n\r", __func__);
 675:../libraries/Storage/sd_mmc.c **** 			return false; // Outoff CIS area
 676:../libraries/Storage/sd_mmc.c **** 		}
 677:../libraries/Storage/sd_mmc.c **** 	}
 678:../libraries/Storage/sd_mmc.c **** 
 679:../libraries/Storage/sd_mmc.c **** 	// Read all Fun0 tuple fields: fn0_blk_siz & max_tran_speed
 680:../libraries/Storage/sd_mmc.c **** 	if (!sdio_cmd53(SDIO_CMD53_READ_FLAG, SDIO_CIA, addr, 1, 6, true)) {
 681:../libraries/Storage/sd_mmc.c **** 		sd_mmc_debug("%s: CMD53 Read all Fun0 Fail\n\r", __func__);
 682:../libraries/Storage/sd_mmc.c **** 		return false;
 683:../libraries/Storage/sd_mmc.c **** 	}
 684:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->start_read_blocks(buf, 1)) {
 685:../libraries/Storage/sd_mmc.c **** 		return false;
 686:../libraries/Storage/sd_mmc.c **** 	}
 687:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->wait_end_of_read_blocks()) {
 688:../libraries/Storage/sd_mmc.c **** 		return false;
 689:../libraries/Storage/sd_mmc.c **** 	}
 690:../libraries/Storage/sd_mmc.c **** 	tplfe_max_tran_speed = buf[5];
 691:../libraries/Storage/sd_mmc.c **** 	if (tplfe_max_tran_speed > 0x32) {
 692:../libraries/Storage/sd_mmc.c **** 		/* Error on SDIO register, the high speed is not activated
 693:../libraries/Storage/sd_mmc.c **** 		 * and the clock can not be more than 25MHz.
 694:../libraries/Storage/sd_mmc.c **** 		 * This error is present on specific SDIO card
 695:../libraries/Storage/sd_mmc.c **** 		 * (H&D wireless card - HDG104 WiFi SIP).
 696:../libraries/Storage/sd_mmc.c **** 		 */
 697:../libraries/Storage/sd_mmc.c **** 		tplfe_max_tran_speed = 0x32; // 25Mhz
 698:../libraries/Storage/sd_mmc.c **** 	}
 699:../libraries/Storage/sd_mmc.c **** 
 700:../libraries/Storage/sd_mmc.c **** 	// Decode transfer speed in Hz.
 701:../libraries/Storage/sd_mmc.c **** 	unit = sd_mmc_trans_units[tplfe_max_tran_speed & 0x7];
 702:../libraries/Storage/sd_mmc.c **** 	mul = sd_trans_multipliers[(tplfe_max_tran_speed >> 3) & 0xF];
 703:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->clock = unit * mul * 1000;
 704:../libraries/Storage/sd_mmc.c **** 	/**
 705:../libraries/Storage/sd_mmc.c **** 	 * Note: A combo card shall be a Full-Speed SDIO card
 706:../libraries/Storage/sd_mmc.c **** 	 * which supports upto 25MHz.
 707:../libraries/Storage/sd_mmc.c **** 	 * A SDIO card alone can be:
 708:../libraries/Storage/sd_mmc.c **** 	 * - a Low-Speed SDIO card which supports 400Khz minimum
 709:../libraries/Storage/sd_mmc.c **** 	 * - a Full-Speed SDIO card which supports upto 25MHz
 710:../libraries/Storage/sd_mmc.c **** 	 */
 711:../libraries/Storage/sd_mmc.c **** 	return true;
 712:../libraries/Storage/sd_mmc.c **** }
 713:../libraries/Storage/sd_mmc.c **** 
 714:../libraries/Storage/sd_mmc.c **** /**
 715:../libraries/Storage/sd_mmc.c ****  * \brief CMD52 for SDIO - Switches the bus width mode to 4
 716:../libraries/Storage/sd_mmc.c ****  *
 717:../libraries/Storage/sd_mmc.c ****  * \note sd_mmc_card->bus_width is updated.
 718:../libraries/Storage/sd_mmc.c ****  *
 719:../libraries/Storage/sd_mmc.c ****  * \return true if success, otherwise false
 720:../libraries/Storage/sd_mmc.c ****  */
 721:../libraries/Storage/sd_mmc.c **** static bool sdio_cmd52_set_bus_width(void)
 722:../libraries/Storage/sd_mmc.c **** {
 723:../libraries/Storage/sd_mmc.c **** 	/**
 724:../libraries/Storage/sd_mmc.c **** 	 * A SD memory card always supports bus 4bit
 725:../libraries/Storage/sd_mmc.c **** 	 * A SD COMBO card always supports bus 4bit
 726:../libraries/Storage/sd_mmc.c **** 	 * A SDIO Full-Speed alone always supports 4bit
 727:../libraries/Storage/sd_mmc.c **** 	 * A SDIO Low-Speed alone can supports 4bit (Optional)
ARM GAS  /tmp/ccTIydBQ.s 			page 18


 728:../libraries/Storage/sd_mmc.c **** 	 */
 729:../libraries/Storage/sd_mmc.c **** 	uint8_t u8_value;
 730:../libraries/Storage/sd_mmc.c **** 
 731:../libraries/Storage/sd_mmc.c **** 	// Check 4bit support in 4BLS of "Card Capability" register
 732:../libraries/Storage/sd_mmc.c **** 	if (!sdio_cmd52(SDIO_CMD52_READ_FLAG, SDIO_CIA, SDIO_CCCR_CAP,
 733:../libraries/Storage/sd_mmc.c **** 			0, &u8_value)) {
 734:../libraries/Storage/sd_mmc.c **** 		return false;
 735:../libraries/Storage/sd_mmc.c **** 	}
 736:../libraries/Storage/sd_mmc.c **** 	if ((u8_value & SDIO_CAP_4BLS) != SDIO_CAP_4BLS) {
 737:../libraries/Storage/sd_mmc.c **** 		// No supported, it is not a protocol error
 738:../libraries/Storage/sd_mmc.c **** 		return true;
 739:../libraries/Storage/sd_mmc.c **** 	}
 740:../libraries/Storage/sd_mmc.c **** 	// HS mode possible, then enable
 741:../libraries/Storage/sd_mmc.c **** 	u8_value = SDIO_BUSWIDTH_4B;
 742:../libraries/Storage/sd_mmc.c **** 	if (!sdio_cmd52(SDIO_CMD52_WRITE_FLAG, SDIO_CIA, SDIO_CCCR_BUS_CTRL,
 743:../libraries/Storage/sd_mmc.c **** 			1, &u8_value)) {
 744:../libraries/Storage/sd_mmc.c **** 		return false;
 745:../libraries/Storage/sd_mmc.c **** 	}
 746:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->bus_width = 4;
 747:../libraries/Storage/sd_mmc.c **** 	sd_mmc_debug("%d-bit bus width enabled.\n\r", (int)sd_mmc_card->bus_width);
 748:../libraries/Storage/sd_mmc.c **** 	return true;
 749:../libraries/Storage/sd_mmc.c **** }
 750:../libraries/Storage/sd_mmc.c **** 
 751:../libraries/Storage/sd_mmc.c **** /**
 752:../libraries/Storage/sd_mmc.c ****  * \brief CMD52 for SDIO - Enable the high speed mode
 753:../libraries/Storage/sd_mmc.c ****  *
 754:../libraries/Storage/sd_mmc.c ****  * \note sd_mmc_card->high_speed is updated.
 755:../libraries/Storage/sd_mmc.c ****  * \note sd_mmc_card->clock is updated.
 756:../libraries/Storage/sd_mmc.c ****  *
 757:../libraries/Storage/sd_mmc.c ****  * \return true if success, otherwise false
 758:../libraries/Storage/sd_mmc.c ****  */
 759:../libraries/Storage/sd_mmc.c **** static bool sdio_cmd52_set_high_speed(void)
 760:../libraries/Storage/sd_mmc.c **** {
 761:../libraries/Storage/sd_mmc.c **** 	uint8_t u8_value;
 762:../libraries/Storage/sd_mmc.c **** 
 763:../libraries/Storage/sd_mmc.c **** 	// Check CIA.HS
 764:../libraries/Storage/sd_mmc.c **** 	if (!sdio_cmd52(SDIO_CMD52_READ_FLAG, SDIO_CIA, SDIO_CCCR_HS, 0, &u8_value)) {
 765:../libraries/Storage/sd_mmc.c **** 		return false;
 766:../libraries/Storage/sd_mmc.c **** 	}
 767:../libraries/Storage/sd_mmc.c **** 	if ((u8_value & SDIO_SHS) != SDIO_SHS) {
 768:../libraries/Storage/sd_mmc.c **** 		// No supported, it is not a protocol error
 769:../libraries/Storage/sd_mmc.c **** 		return true;
 770:../libraries/Storage/sd_mmc.c **** 	}
 771:../libraries/Storage/sd_mmc.c **** 	// HS mode possible, then enable
 772:../libraries/Storage/sd_mmc.c **** 	u8_value = SDIO_EHS;
 773:../libraries/Storage/sd_mmc.c **** 	if (!sdio_cmd52(SDIO_CMD52_WRITE_FLAG, SDIO_CIA, SDIO_CCCR_HS,
 774:../libraries/Storage/sd_mmc.c **** 			1, &u8_value)) {
 775:../libraries/Storage/sd_mmc.c **** 		return false;
 776:../libraries/Storage/sd_mmc.c **** 	}
 777:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->high_speed = 1;
 778:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->clock *= 2;
 779:../libraries/Storage/sd_mmc.c **** 	return true;
 780:../libraries/Storage/sd_mmc.c **** }
 781:../libraries/Storage/sd_mmc.c **** 
 782:../libraries/Storage/sd_mmc.c **** #else
 783:../libraries/Storage/sd_mmc.c **** static bool sdio_op_cond(void)
 784:../libraries/Storage/sd_mmc.c **** {
ARM GAS  /tmp/ccTIydBQ.s 			page 19


 785:../libraries/Storage/sd_mmc.c **** 	return true; // No error but card type not updated
 786:../libraries/Storage/sd_mmc.c **** }
 787:../libraries/Storage/sd_mmc.c **** static bool sdio_get_max_speed(void)
 788:../libraries/Storage/sd_mmc.c **** {
 789:../libraries/Storage/sd_mmc.c **** 	return false;
 790:../libraries/Storage/sd_mmc.c **** }
 791:../libraries/Storage/sd_mmc.c **** static bool sdio_cmd52_set_bus_width(void)
 792:../libraries/Storage/sd_mmc.c **** {
 793:../libraries/Storage/sd_mmc.c **** 	return false;
 794:../libraries/Storage/sd_mmc.c **** }
 795:../libraries/Storage/sd_mmc.c **** static bool sdio_cmd52_set_high_speed(void)
 796:../libraries/Storage/sd_mmc.c **** {
 797:../libraries/Storage/sd_mmc.c **** 	return false;
 798:../libraries/Storage/sd_mmc.c **** }
 799:../libraries/Storage/sd_mmc.c **** #endif // SDIO_SUPPORT_ENABLE
 800:../libraries/Storage/sd_mmc.c **** 
 801:../libraries/Storage/sd_mmc.c **** /**
 802:../libraries/Storage/sd_mmc.c ****  * \brief CMD6 for SD - Switch card in high speed mode
 803:../libraries/Storage/sd_mmc.c ****  *
 804:../libraries/Storage/sd_mmc.c ****  * \note CMD6 for SD is valid under the "trans" state.
 805:../libraries/Storage/sd_mmc.c ****  * \note sd_mmc_card->high_speed is updated.
 806:../libraries/Storage/sd_mmc.c ****  * \note sd_mmc_card->clock is updated.
 807:../libraries/Storage/sd_mmc.c ****  *
 808:../libraries/Storage/sd_mmc.c ****  * \return true if success, otherwise false
 809:../libraries/Storage/sd_mmc.c ****  */
 810:../libraries/Storage/sd_mmc.c **** static bool sd_cm6_set_high_speed(void)
 811:../libraries/Storage/sd_mmc.c **** {
 812:../libraries/Storage/sd_mmc.c **** 	uint8_t switch_status[SD_SW_STATUS_BSIZE];
 813:../libraries/Storage/sd_mmc.c **** 
 814:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->adtc_start(SD_CMD6_SWITCH_FUNC,
 815:../libraries/Storage/sd_mmc.c **** 			SD_CMD6_MODE_SWITCH
 816:../libraries/Storage/sd_mmc.c **** 			| SD_CMD6_GRP6_NO_INFLUENCE
 817:../libraries/Storage/sd_mmc.c **** 			| SD_CMD6_GRP5_NO_INFLUENCE
 818:../libraries/Storage/sd_mmc.c **** 			| SD_CMD6_GRP4_NO_INFLUENCE
 819:../libraries/Storage/sd_mmc.c **** 			| SD_CMD6_GRP3_NO_INFLUENCE
 820:../libraries/Storage/sd_mmc.c **** 			| SD_CMD6_GRP2_DEFAULT
 821:../libraries/Storage/sd_mmc.c **** 			| SD_CMD6_GRP1_HIGH_SPEED,
 822:../libraries/Storage/sd_mmc.c **** 			SD_SW_STATUS_BSIZE, 1, true)) {
 823:../libraries/Storage/sd_mmc.c **** 		return false;
 824:../libraries/Storage/sd_mmc.c **** 	}
 825:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->start_read_blocks(switch_status, 1)) {
 826:../libraries/Storage/sd_mmc.c **** 		return false;
 827:../libraries/Storage/sd_mmc.c **** 	}
 828:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->wait_end_of_read_blocks()) {
 829:../libraries/Storage/sd_mmc.c **** 		return false;
 830:../libraries/Storage/sd_mmc.c **** 	}
 831:../libraries/Storage/sd_mmc.c **** 
 832:../libraries/Storage/sd_mmc.c **** 	if (sd_mmc_card->iface->get_response() & CARD_STATUS_SWITCH_ERROR) {
 833:../libraries/Storage/sd_mmc.c **** 		sd_mmc_debug("%s: CMD6 CARD_STATUS_SWITCH_ERROR\n\r", __func__);
 834:../libraries/Storage/sd_mmc.c **** 		return false;
 835:../libraries/Storage/sd_mmc.c **** 	}
 836:../libraries/Storage/sd_mmc.c **** 	if (SD_SW_STATUS_FUN_GRP1_RC(switch_status)
 837:../libraries/Storage/sd_mmc.c **** 			== SD_SW_STATUS_FUN_GRP_RC_ERROR) {
 838:../libraries/Storage/sd_mmc.c **** 		// No supported, it is not a protocol error
 839:../libraries/Storage/sd_mmc.c **** 		return true;
 840:../libraries/Storage/sd_mmc.c **** 	}
 841:../libraries/Storage/sd_mmc.c **** 	if (SD_SW_STATUS_FUN_GRP1_BUSY(switch_status)) {
ARM GAS  /tmp/ccTIydBQ.s 			page 20


 842:../libraries/Storage/sd_mmc.c **** 		sd_mmc_debug("%s: CMD6 SD_SW_STATUS_FUN_GRP1_BUSY\n\r", __func__);
 843:../libraries/Storage/sd_mmc.c **** 		return false;
 844:../libraries/Storage/sd_mmc.c **** 	}
 845:../libraries/Storage/sd_mmc.c **** 	// CMD6 function switching period is within 8 clocks
 846:../libraries/Storage/sd_mmc.c **** 	// after the end bit of status data.
 847:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->iface->send_clock();
 848:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->high_speed = 1;
 849:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->clock *= 2;
 850:../libraries/Storage/sd_mmc.c **** 	return true;
 851:../libraries/Storage/sd_mmc.c **** }
 852:../libraries/Storage/sd_mmc.c **** 
 853:../libraries/Storage/sd_mmc.c **** /**
 854:../libraries/Storage/sd_mmc.c ****  * \brief CMD6 for MMC - Switches the bus width mode
 855:../libraries/Storage/sd_mmc.c ****  *
 856:../libraries/Storage/sd_mmc.c ****  * \note CMD6 is valid under the "trans" state.
 857:../libraries/Storage/sd_mmc.c ****  * \note sd_mmc_card->bus_width is updated.
 858:../libraries/Storage/sd_mmc.c ****  *
 859:../libraries/Storage/sd_mmc.c ****  * \param bus_width   Bus width to set
 860:../libraries/Storage/sd_mmc.c ****  *
 861:../libraries/Storage/sd_mmc.c ****  * \return true if success, otherwise false
 862:../libraries/Storage/sd_mmc.c ****  */
 863:../libraries/Storage/sd_mmc.c **** static bool mmc_cmd6_set_bus_width(uint8_t bus_width)
 864:../libraries/Storage/sd_mmc.c **** {
 865:../libraries/Storage/sd_mmc.c **** 	uint32_t arg;
 866:../libraries/Storage/sd_mmc.c **** 
 867:../libraries/Storage/sd_mmc.c **** 	switch (bus_width) {
 868:../libraries/Storage/sd_mmc.c **** 	case 8:
 869:../libraries/Storage/sd_mmc.c **** 		arg = MMC_CMD6_ACCESS_SET_BITS
 870:../libraries/Storage/sd_mmc.c **** 				| MMC_CMD6_INDEX_BUS_WIDTH
 871:../libraries/Storage/sd_mmc.c **** 				| MMC_CMD6_VALUE_BUS_WIDTH_8BIT;
 872:../libraries/Storage/sd_mmc.c **** 		break;
 873:../libraries/Storage/sd_mmc.c **** 	case 4:
 874:../libraries/Storage/sd_mmc.c **** 		arg = MMC_CMD6_ACCESS_SET_BITS
 875:../libraries/Storage/sd_mmc.c **** 				| MMC_CMD6_INDEX_BUS_WIDTH
 876:../libraries/Storage/sd_mmc.c **** 				| MMC_CMD6_VALUE_BUS_WIDTH_4BIT;
 877:../libraries/Storage/sd_mmc.c **** 		break;
 878:../libraries/Storage/sd_mmc.c **** 	default:
 879:../libraries/Storage/sd_mmc.c **** 		arg = MMC_CMD6_ACCESS_SET_BITS
 880:../libraries/Storage/sd_mmc.c **** 				| MMC_CMD6_INDEX_BUS_WIDTH
 881:../libraries/Storage/sd_mmc.c **** 				| MMC_CMD6_VALUE_BUS_WIDTH_1BIT;
 882:../libraries/Storage/sd_mmc.c **** 		break;
 883:../libraries/Storage/sd_mmc.c **** 	}
 884:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->send_cmd(MMC_CMD6_SWITCH, arg)) {
 885:../libraries/Storage/sd_mmc.c **** 		return false;
 886:../libraries/Storage/sd_mmc.c **** 	}
 887:../libraries/Storage/sd_mmc.c **** 	if (sd_mmc_card->iface->get_response() & CARD_STATUS_SWITCH_ERROR) {
 888:../libraries/Storage/sd_mmc.c **** 		// No supported, it is not a protocol error
 889:../libraries/Storage/sd_mmc.c **** 		sd_mmc_debug("%s: CMD6 CARD_STATUS_SWITCH_ERROR\n\r", __func__);
 890:../libraries/Storage/sd_mmc.c **** 		return false;
 891:../libraries/Storage/sd_mmc.c **** 	}
 892:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->bus_width = bus_width;
 893:../libraries/Storage/sd_mmc.c **** 	sd_mmc_debug("%d-bit bus width enabled.\n\r", (int)sd_mmc_card->bus_width);
 894:../libraries/Storage/sd_mmc.c **** 	return true;
 895:../libraries/Storage/sd_mmc.c **** }
 896:../libraries/Storage/sd_mmc.c **** 
 897:../libraries/Storage/sd_mmc.c **** /**
 898:../libraries/Storage/sd_mmc.c ****  * \brief CMD6 for MMC - Switches in high speed mode
ARM GAS  /tmp/ccTIydBQ.s 			page 21


 899:../libraries/Storage/sd_mmc.c ****  *
 900:../libraries/Storage/sd_mmc.c ****  * \note CMD6 is valid under the "trans" state.
 901:../libraries/Storage/sd_mmc.c ****  * \note sd_mmc_card->high_speed is updated.
 902:../libraries/Storage/sd_mmc.c ****  * \note sd_mmc_card->clock is updated.
 903:../libraries/Storage/sd_mmc.c ****  *
 904:../libraries/Storage/sd_mmc.c ****  * \return true if success, otherwise false
 905:../libraries/Storage/sd_mmc.c ****  */
 906:../libraries/Storage/sd_mmc.c **** static bool mmc_cmd6_set_high_speed(void)
 907:../libraries/Storage/sd_mmc.c **** {
 908:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->send_cmd(MMC_CMD6_SWITCH,
 909:../libraries/Storage/sd_mmc.c **** 			MMC_CMD6_ACCESS_WRITE_BYTE
 910:../libraries/Storage/sd_mmc.c **** 			| MMC_CMD6_INDEX_HS_TIMING
 911:../libraries/Storage/sd_mmc.c **** 			| MMC_CMD6_VALUE_HS_TIMING_ENABLE)) {
 912:../libraries/Storage/sd_mmc.c **** 		return false;
 913:../libraries/Storage/sd_mmc.c **** 	}
 914:../libraries/Storage/sd_mmc.c **** 	if (sd_mmc_card->iface->get_response() & CARD_STATUS_SWITCH_ERROR) {
 915:../libraries/Storage/sd_mmc.c **** 		// No supported, it is not a protocol error
 916:../libraries/Storage/sd_mmc.c **** 		sd_mmc_debug("%s: CMD6 CARD_STATUS_SWITCH_ERROR\n\r", __func__);
 917:../libraries/Storage/sd_mmc.c **** 		return false;
 918:../libraries/Storage/sd_mmc.c **** 	}
 919:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->high_speed = 1;
 920:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->clock = 52000000lu;
 921:../libraries/Storage/sd_mmc.c **** 	return true;
 922:../libraries/Storage/sd_mmc.c **** }
 923:../libraries/Storage/sd_mmc.c **** 
 924:../libraries/Storage/sd_mmc.c **** /**
 925:../libraries/Storage/sd_mmc.c ****  * \brief CMD8 for SD card - Send Interface Condition Command.
 926:../libraries/Storage/sd_mmc.c ****  *
 927:../libraries/Storage/sd_mmc.c ****  * \note
 928:../libraries/Storage/sd_mmc.c ****  * Send SD Memory Card interface condition, which includes host supply
 929:../libraries/Storage/sd_mmc.c ****  * voltage information and asks the card whether card supports voltage.
 930:../libraries/Storage/sd_mmc.c ****  * Should be performed at initialization time to detect the card type.
 931:../libraries/Storage/sd_mmc.c ****  *
 932:../libraries/Storage/sd_mmc.c ****  * \param v2 Pointer to v2 flag to update
 933:../libraries/Storage/sd_mmc.c ****  *
 934:../libraries/Storage/sd_mmc.c ****  * \return true if success, otherwise false
 935:../libraries/Storage/sd_mmc.c ****  *         with a update of \ref sd_mmc_err.
 936:../libraries/Storage/sd_mmc.c ****  */
 937:../libraries/Storage/sd_mmc.c **** static bool sd_cmd8(uint8_t * v2)
 938:../libraries/Storage/sd_mmc.c **** {
 939:../libraries/Storage/sd_mmc.c **** 	uint32_t resp;
 940:../libraries/Storage/sd_mmc.c **** 
 941:../libraries/Storage/sd_mmc.c **** 	*v2 = 0;
 942:../libraries/Storage/sd_mmc.c **** 	// Test for SD version 2
 943:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->send_cmd(SD_CMD8_SEND_IF_COND,
 944:../libraries/Storage/sd_mmc.c **** 			SD_CMD8_PATTERN | SD_CMD8_HIGH_VOLTAGE)) {
 945:../libraries/Storage/sd_mmc.c **** 		return true; // It is not a V2
 946:../libraries/Storage/sd_mmc.c **** 	}
 947:../libraries/Storage/sd_mmc.c **** 	// Check R7 response
 948:../libraries/Storage/sd_mmc.c **** 	resp = sd_mmc_card->iface->get_response();
 949:../libraries/Storage/sd_mmc.c **** 	if (resp == 0xFFFFFFFF) {
 950:../libraries/Storage/sd_mmc.c **** 		// No compliance R7 value
 951:../libraries/Storage/sd_mmc.c **** 		return true; // It is not a V2
 952:../libraries/Storage/sd_mmc.c **** 	}
 953:../libraries/Storage/sd_mmc.c **** 	if ((resp & (SD_CMD8_MASK_PATTERN | SD_CMD8_MASK_VOLTAGE))
 954:../libraries/Storage/sd_mmc.c **** 				!= (SD_CMD8_PATTERN | SD_CMD8_HIGH_VOLTAGE)) {
 955:../libraries/Storage/sd_mmc.c **** 		sd_mmc_debug("%s: CMD8 resp32 0x%08x UNUSABLE CARD\n\r",
ARM GAS  /tmp/ccTIydBQ.s 			page 22


 956:../libraries/Storage/sd_mmc.c **** 				__func__, resp);
 957:../libraries/Storage/sd_mmc.c **** 		return false;
 958:../libraries/Storage/sd_mmc.c **** 	}
 959:../libraries/Storage/sd_mmc.c **** 	sd_mmc_debug("SD card V2\n\r");
 960:../libraries/Storage/sd_mmc.c **** 	*v2 = 1;
 961:../libraries/Storage/sd_mmc.c **** 	return true;
 962:../libraries/Storage/sd_mmc.c **** }
 963:../libraries/Storage/sd_mmc.c **** 
 964:../libraries/Storage/sd_mmc.c **** /**
 965:../libraries/Storage/sd_mmc.c ****  * \brief CMD8 - The card sends its EXT_CSD register as a block of data.
 966:../libraries/Storage/sd_mmc.c ****  *
 967:../libraries/Storage/sd_mmc.c ****  * \param b_authorize_high_speed Pointer to update with the high speed
 968:../libraries/Storage/sd_mmc.c ****  * support information
 969:../libraries/Storage/sd_mmc.c ****  *
 970:../libraries/Storage/sd_mmc.c ****  * \return true if success, otherwise false
 971:../libraries/Storage/sd_mmc.c ****  */
 972:../libraries/Storage/sd_mmc.c **** static bool mmc_cmd8(uint8_t *b_authorize_high_speed)
 973:../libraries/Storage/sd_mmc.c **** {
 974:../libraries/Storage/sd_mmc.c **** 	uint16_t i;
 975:../libraries/Storage/sd_mmc.c **** 	uint32_t ext_csd;
 976:../libraries/Storage/sd_mmc.c **** 	uint32_t sec_count;
 977:../libraries/Storage/sd_mmc.c **** 
 978:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->adtc_start(MMC_CMD8_SEND_EXT_CSD, 0,
 979:../libraries/Storage/sd_mmc.c **** 			EXT_CSD_BSIZE, 1, false)) {
 980:../libraries/Storage/sd_mmc.c **** 		return false;
 981:../libraries/Storage/sd_mmc.c **** 	}
 982:../libraries/Storage/sd_mmc.c **** 	//** Read and decode Extended Extended CSD
 983:../libraries/Storage/sd_mmc.c **** 	// Note: The read access is done in byte to avoid a buffer
 984:../libraries/Storage/sd_mmc.c **** 	// of EXT_CSD_BSIZE Byte in stack.
 985:../libraries/Storage/sd_mmc.c **** 
 986:../libraries/Storage/sd_mmc.c **** 	// Read card type
 987:../libraries/Storage/sd_mmc.c **** 	for (i = 0; i < (EXT_CSD_CARD_TYPE_INDEX + 4) / 4; i++) {
 988:../libraries/Storage/sd_mmc.c **** 		if (!sd_mmc_card->iface->read_word(&ext_csd)) {
 989:../libraries/Storage/sd_mmc.c **** 			return false;
 990:../libraries/Storage/sd_mmc.c **** 		}
 991:../libraries/Storage/sd_mmc.c **** 	}
 992:../libraries/Storage/sd_mmc.c **** 	*b_authorize_high_speed = (ext_csd >> ((EXT_CSD_CARD_TYPE_INDEX % 4) * 8))
 993:../libraries/Storage/sd_mmc.c **** 			& MMC_CTYPE_52MHZ;
 994:../libraries/Storage/sd_mmc.c **** 
 995:../libraries/Storage/sd_mmc.c **** 	if (MMC_CSD_C_SIZE(sd_mmc_card->csd) == 0xFFF) {
 996:../libraries/Storage/sd_mmc.c **** 		// For high capacity SD/MMC card,
 997:../libraries/Storage/sd_mmc.c **** 		// memory capacity = SEC_COUNT * 512 byte
 998:../libraries/Storage/sd_mmc.c **** 		for (; i <(EXT_CSD_SEC_COUNT_INDEX + 4) / 4; i++) {
 999:../libraries/Storage/sd_mmc.c **** 			if (!sd_mmc_card->iface->read_word(&sec_count)) {
1000:../libraries/Storage/sd_mmc.c **** 				return false;
1001:../libraries/Storage/sd_mmc.c **** 			}
1002:../libraries/Storage/sd_mmc.c **** 		}
1003:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->capacity = sec_count / 2;
1004:../libraries/Storage/sd_mmc.c **** 	}
1005:../libraries/Storage/sd_mmc.c **** 	for (; i < EXT_CSD_BSIZE / 4; i++) {
1006:../libraries/Storage/sd_mmc.c **** 		if (!sd_mmc_card->iface->read_word(&sec_count)) {
1007:../libraries/Storage/sd_mmc.c **** 			return false;
1008:../libraries/Storage/sd_mmc.c **** 		}
1009:../libraries/Storage/sd_mmc.c **** 	}
1010:../libraries/Storage/sd_mmc.c **** 	return true;
1011:../libraries/Storage/sd_mmc.c **** }
1012:../libraries/Storage/sd_mmc.c **** 
ARM GAS  /tmp/ccTIydBQ.s 			page 23


1013:../libraries/Storage/sd_mmc.c **** /**
1014:../libraries/Storage/sd_mmc.c ****  * \brief CMD9: Addressed card sends its card-specific
1015:../libraries/Storage/sd_mmc.c ****  * data (CSD) on the CMD line spi.
1016:../libraries/Storage/sd_mmc.c ****  *
1017:../libraries/Storage/sd_mmc.c ****  * \return true if success, otherwise false
1018:../libraries/Storage/sd_mmc.c ****  */
1019:../libraries/Storage/sd_mmc.c **** static bool sd_mmc_cmd9_spi(void)
1020:../libraries/Storage/sd_mmc.c **** {
1021:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->adtc_start(SDMMC_SPI_CMD9_SEND_CSD, (uint32_t)sd_mmc_card->rca << 16,
1022:../libraries/Storage/sd_mmc.c **** 			CSD_REG_BSIZE, 1, true)) {
1023:../libraries/Storage/sd_mmc.c **** 		return false;
1024:../libraries/Storage/sd_mmc.c **** 	}
1025:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->start_read_blocks(sd_mmc_card->csd, 1)) {
1026:../libraries/Storage/sd_mmc.c **** 		return false;
1027:../libraries/Storage/sd_mmc.c **** 	}
1028:../libraries/Storage/sd_mmc.c **** 	return sd_mmc_card->iface->wait_end_of_read_blocks();
1029:../libraries/Storage/sd_mmc.c **** }
1030:../libraries/Storage/sd_mmc.c **** 
1031:../libraries/Storage/sd_mmc.c **** /**
1032:../libraries/Storage/sd_mmc.c ****  * \brief CMD9: Addressed card sends its card-specific
1033:../libraries/Storage/sd_mmc.c ****  * data (CSD) on the CMD line mci.
1034:../libraries/Storage/sd_mmc.c ****  *
1035:../libraries/Storage/sd_mmc.c ****  * \return true if success, otherwise false
1036:../libraries/Storage/sd_mmc.c ****  */
1037:../libraries/Storage/sd_mmc.c **** static bool sd_mmc_cmd9_mci(void)
1038:../libraries/Storage/sd_mmc.c **** {
1039:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->send_cmd(SDMMC_MCI_CMD9_SEND_CSD, (uint32_t)sd_mmc_card->rca << 16)) {
1040:../libraries/Storage/sd_mmc.c **** 		return false;
1041:../libraries/Storage/sd_mmc.c **** 	}
1042:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->iface->get_response_128(sd_mmc_card->csd);
1043:../libraries/Storage/sd_mmc.c **** 	return true;
1044:../libraries/Storage/sd_mmc.c **** }
1045:../libraries/Storage/sd_mmc.c **** 
1046:../libraries/Storage/sd_mmc.c **** /**
1047:../libraries/Storage/sd_mmc.c ****  * \brief Decodes MMC CSD register
1048:../libraries/Storage/sd_mmc.c ****  */
1049:../libraries/Storage/sd_mmc.c **** static void mmc_decode_csd(void)
1050:../libraries/Storage/sd_mmc.c **** {
  92              		.loc 2 1050 0
  93              		.cfi_startproc
  94              		@ args = 0, pretend = 0, frame = 0
  95              		@ frame_needed = 0, uses_anonymous_args = 0
  96              		@ link register save eliminated.
1051:../libraries/Storage/sd_mmc.c ****  	uint32_t unit;
1052:../libraries/Storage/sd_mmc.c **** 	uint32_t mul;
1053:../libraries/Storage/sd_mmc.c **** 	uint32_t tran_speed;
1054:../libraries/Storage/sd_mmc.c **** 
1055:../libraries/Storage/sd_mmc.c **** 	// Get MMC System Specification version supported by the card
1056:../libraries/Storage/sd_mmc.c **** 	switch (MMC_CSD_SPEC_VERS(sd_mmc_card->csd)) {
  97              		.loc 2 1056 0
  98 0000 264B     		ldr	r3, .L15
  99 0002 1A68     		ldr	r2, [r3]
1050:../libraries/Storage/sd_mmc.c ****  	uint32_t unit;
 100              		.loc 2 1050 0
 101 0004 F0B4     		push	{r4, r5, r6, r7}
 102              		.cfi_def_cfa_offset 16
 103              		.cfi_offset 4, -16
ARM GAS  /tmp/ccTIydBQ.s 			page 24


 104              		.cfi_offset 5, -12
 105              		.cfi_offset 6, -8
 106              		.cfi_offset 7, -4
 107              	.LBB118:
 108              	.LBB119:
 109              		.file 3 "../libraries/Storage/sd_mmc_protocol.h"
   1:../libraries/Storage/sd_mmc_protocol.h **** /**
   2:../libraries/Storage/sd_mmc_protocol.h ****  * \file
   3:../libraries/Storage/sd_mmc_protocol.h ****  *
   4:../libraries/Storage/sd_mmc_protocol.h ****  * \brief SD/MMC protocol definitions.
   5:../libraries/Storage/sd_mmc_protocol.h ****  *
   6:../libraries/Storage/sd_mmc_protocol.h ****  * Copyright (c) 2014-2015 Atmel Corporation. All rights reserved.
   7:../libraries/Storage/sd_mmc_protocol.h ****  *
   8:../libraries/Storage/sd_mmc_protocol.h ****  * \asf_license_start
   9:../libraries/Storage/sd_mmc_protocol.h ****  *
  10:../libraries/Storage/sd_mmc_protocol.h ****  * \page License
  11:../libraries/Storage/sd_mmc_protocol.h ****  *
  12:../libraries/Storage/sd_mmc_protocol.h ****  * Redistribution and use in source and binary forms, with or without
  13:../libraries/Storage/sd_mmc_protocol.h ****  * modification, are permitted provided that the following conditions are met:
  14:../libraries/Storage/sd_mmc_protocol.h ****  *
  15:../libraries/Storage/sd_mmc_protocol.h ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../libraries/Storage/sd_mmc_protocol.h ****  *    this list of conditions and the following disclaimer.
  17:../libraries/Storage/sd_mmc_protocol.h ****  *
  18:../libraries/Storage/sd_mmc_protocol.h ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../libraries/Storage/sd_mmc_protocol.h ****  *    this list of conditions and the following disclaimer in the documentation
  20:../libraries/Storage/sd_mmc_protocol.h ****  *    and/or other materials provided with the distribution.
  21:../libraries/Storage/sd_mmc_protocol.h ****  *
  22:../libraries/Storage/sd_mmc_protocol.h ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../libraries/Storage/sd_mmc_protocol.h ****  *    from this software without specific prior written permission.
  24:../libraries/Storage/sd_mmc_protocol.h ****  *
  25:../libraries/Storage/sd_mmc_protocol.h ****  * 4. This software may only be redistributed and used in connection with an
  26:../libraries/Storage/sd_mmc_protocol.h ****  *    Atmel microcontroller product.
  27:../libraries/Storage/sd_mmc_protocol.h ****  *
  28:../libraries/Storage/sd_mmc_protocol.h ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../libraries/Storage/sd_mmc_protocol.h ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../libraries/Storage/sd_mmc_protocol.h ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
  31:../libraries/Storage/sd_mmc_protocol.h ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:../libraries/Storage/sd_mmc_protocol.h ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../libraries/Storage/sd_mmc_protocol.h ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../libraries/Storage/sd_mmc_protocol.h ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../libraries/Storage/sd_mmc_protocol.h ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../libraries/Storage/sd_mmc_protocol.h ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../libraries/Storage/sd_mmc_protocol.h ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../libraries/Storage/sd_mmc_protocol.h ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../libraries/Storage/sd_mmc_protocol.h ****  *
  40:../libraries/Storage/sd_mmc_protocol.h ****  * \asf_license_stop
  41:../libraries/Storage/sd_mmc_protocol.h ****  *
  42:../libraries/Storage/sd_mmc_protocol.h ****  */
  43:../libraries/Storage/sd_mmc_protocol.h **** /*
  44:../libraries/Storage/sd_mmc_protocol.h ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../libraries/Storage/sd_mmc_protocol.h ****  */
  46:../libraries/Storage/sd_mmc_protocol.h **** 
  47:../libraries/Storage/sd_mmc_protocol.h **** #ifndef SD_MMC_PROTOCOL_H_INCLUDED
  48:../libraries/Storage/sd_mmc_protocol.h **** #define SD_MMC_PROTOCOL_H_INCLUDED
  49:../libraries/Storage/sd_mmc_protocol.h **** 
  50:../libraries/Storage/sd_mmc_protocol.h **** #include  "compiler.h"
  51:../libraries/Storage/sd_mmc_protocol.h **** 
ARM GAS  /tmp/ccTIydBQ.s 			page 25


  52:../libraries/Storage/sd_mmc_protocol.h **** #ifdef __cplusplus
  53:../libraries/Storage/sd_mmc_protocol.h **** extern "C" {
  54:../libraries/Storage/sd_mmc_protocol.h **** #endif
  55:../libraries/Storage/sd_mmc_protocol.h **** 
  56:../libraries/Storage/sd_mmc_protocol.h **** /**
  57:../libraries/Storage/sd_mmc_protocol.h ****  * \addtogroup sd_mmc_protocol SD/MMC Protocol Definition
  58:../libraries/Storage/sd_mmc_protocol.h ****  * \ingroup sd_mmc_stack_group
  59:../libraries/Storage/sd_mmc_protocol.h ****  * @{
  60:../libraries/Storage/sd_mmc_protocol.h ****  */
  61:../libraries/Storage/sd_mmc_protocol.h **** 
  62:../libraries/Storage/sd_mmc_protocol.h **** // SD/MMC/SDIO default clock frequency for initialization (400KHz)
  63:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CLOCK_INIT   400000
  64:../libraries/Storage/sd_mmc_protocol.h **** 
  65:../libraries/Storage/sd_mmc_protocol.h **** 
  66:../libraries/Storage/sd_mmc_protocol.h **** /**
  67:../libraries/Storage/sd_mmc_protocol.h ****  * \name Macros for command definition
  68:../libraries/Storage/sd_mmc_protocol.h ****  *
  69:../libraries/Storage/sd_mmc_protocol.h ****  * Commands types:
  70:../libraries/Storage/sd_mmc_protocol.h ****  * - broadcast commands (bc), no response
  71:../libraries/Storage/sd_mmc_protocol.h ****  * - broadcast commands with response (bcr) (Note: No open drain on SD card)
  72:../libraries/Storage/sd_mmc_protocol.h ****  * - addressed (point-to-point) commands (ac), no data transfer on DAT lines
  73:../libraries/Storage/sd_mmc_protocol.h ****  * - addressed (point-to-point) data transfer commands (adtc), data transfer
  74:../libraries/Storage/sd_mmc_protocol.h ****  * on DAT lines
  75:../libraries/Storage/sd_mmc_protocol.h ****  *
  76:../libraries/Storage/sd_mmc_protocol.h ****  * Specific MMC norms:
  77:../libraries/Storage/sd_mmc_protocol.h ****  * CMD1, CMD2 & CMD3 are processed in the open-drain mode.
  78:../libraries/Storage/sd_mmc_protocol.h ****  * The CMD line is driven with push-pull drivers.
  79:../libraries/Storage/sd_mmc_protocol.h ****  *
  80:../libraries/Storage/sd_mmc_protocol.h ****  * Specific SD norms:
  81:../libraries/Storage/sd_mmc_protocol.h ****  * There is no open drain mode in SD memory card.
  82:../libraries/Storage/sd_mmc_protocol.h ****  *
  83:../libraries/Storage/sd_mmc_protocol.h ****  ***************************************
  84:../libraries/Storage/sd_mmc_protocol.h ****  * Responses types:
  85:../libraries/Storage/sd_mmc_protocol.h ****  *
  86:../libraries/Storage/sd_mmc_protocol.h ****  * R1, R3, R4 & R5 use a 48 bits response protected by a 7bit CRC checksum
  87:../libraries/Storage/sd_mmc_protocol.h ****  * - R1 receiv data not specified
  88:../libraries/Storage/sd_mmc_protocol.h ****  * - R3 receiv OCR
  89:../libraries/Storage/sd_mmc_protocol.h ****  * - R4, R5 RCA management (MMC only)
  90:../libraries/Storage/sd_mmc_protocol.h ****  * - R6, R7 RCA management (SD only)
  91:../libraries/Storage/sd_mmc_protocol.h ****  *
  92:../libraries/Storage/sd_mmc_protocol.h ****  * R1b assert the BUSY signal and respond with R1.
  93:../libraries/Storage/sd_mmc_protocol.h ****  * If the busy signal is asserted, it is done two clock cycles (Nsr time)
  94:../libraries/Storage/sd_mmc_protocol.h ****  * after the end bit of the command. The DAT0 line is driven low.
  95:../libraries/Storage/sd_mmc_protocol.h ****  * DAT1-DAT7 lines are driven by the card though their values are not relevant.
  96:../libraries/Storage/sd_mmc_protocol.h ****  *
  97:../libraries/Storage/sd_mmc_protocol.h ****  * R2 use a 136 bits response protected by a 7bit CRC checksum
  98:../libraries/Storage/sd_mmc_protocol.h ****  * The content is CID or CSD
  99:../libraries/Storage/sd_mmc_protocol.h ****  *
 100:../libraries/Storage/sd_mmc_protocol.h ****  * Specific MMC norms:
 101:../libraries/Storage/sd_mmc_protocol.h ****  * - R4 (Fast I/O) return RCA
 102:../libraries/Storage/sd_mmc_protocol.h ****  * - R5 (interrupt request) return RCA null
 103:../libraries/Storage/sd_mmc_protocol.h ****  *
 104:../libraries/Storage/sd_mmc_protocol.h ****  * Specific SD norms:
 105:../libraries/Storage/sd_mmc_protocol.h ****  * - R6 (Published RCA) return RCA
 106:../libraries/Storage/sd_mmc_protocol.h ****  * - R7 (Card interface condition) return RCA null
 107:../libraries/Storage/sd_mmc_protocol.h ****  *
 108:../libraries/Storage/sd_mmc_protocol.h ****  * @{
ARM GAS  /tmp/ccTIydBQ.s 			page 26


 109:../libraries/Storage/sd_mmc_protocol.h ****  */
 110:../libraries/Storage/sd_mmc_protocol.h **** 
 111:../libraries/Storage/sd_mmc_protocol.h **** //! Value to define a SD/MMC/SDIO command
 112:../libraries/Storage/sd_mmc_protocol.h **** typedef uint32_t sdmmc_cmd_def_t;
 113:../libraries/Storage/sd_mmc_protocol.h **** 
 114:../libraries/Storage/sd_mmc_protocol.h **** //! \name Flags used to define a SD/MMC/SDIO command
 115:../libraries/Storage/sd_mmc_protocol.h **** //! @{
 116:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD_GET_INDEX(cmd) (cmd & 0x3F)
 117:../libraries/Storage/sd_mmc_protocol.h **** //! Have response (MCI only)
 118:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_RESP_PRESENT      (1lu << 8)
 119:../libraries/Storage/sd_mmc_protocol.h **** //! 8 bit response (SPI only)
 120:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_RESP_8            (1lu << 9)
 121:../libraries/Storage/sd_mmc_protocol.h **** //! 32 bit response (SPI only)
 122:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_RESP_32           (1lu << 10)
 123:../libraries/Storage/sd_mmc_protocol.h **** //! 136 bit response (MCI only)
 124:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_RESP_136          (1lu << 11)
 125:../libraries/Storage/sd_mmc_protocol.h **** //! Expect valid crc (MCI only)
 126:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_RESP_CRC          (1lu << 12)
 127:../libraries/Storage/sd_mmc_protocol.h **** //! Card may send busy
 128:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_RESP_BUSY         (1lu << 13)
 129:../libraries/Storage/sd_mmc_protocol.h **** // Open drain for a braodcast command (bc)
 130:../libraries/Storage/sd_mmc_protocol.h **** // or to enter in inactive state (MCI only)
 131:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD_OPENDRAIN     (1lu << 14)
 132:../libraries/Storage/sd_mmc_protocol.h **** //! To signal a data write operation
 133:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD_WRITE         (1lu << 15)
 134:../libraries/Storage/sd_mmc_protocol.h **** //! To signal a SDIO tranfer in multi byte mode
 135:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD_SDIO_BYTE     (1lu << 16)
 136:../libraries/Storage/sd_mmc_protocol.h **** //! To signal a SDIO tranfer in block mode
 137:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD_SDIO_BLOCK    (1lu << 17)
 138:../libraries/Storage/sd_mmc_protocol.h **** //! To signal a data transfer in stream mode
 139:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD_STREAM        (1lu << 18)
 140:../libraries/Storage/sd_mmc_protocol.h **** //! To signal a data transfer in single block mode
 141:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD_SINGLE_BLOCK  (1lu << 19)
 142:../libraries/Storage/sd_mmc_protocol.h **** //! To signal a data transfer in multi block mode
 143:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD_MULTI_BLOCK   (1lu << 20)
 144:../libraries/Storage/sd_mmc_protocol.h **** //! @}
 145:../libraries/Storage/sd_mmc_protocol.h **** 
 146:../libraries/Storage/sd_mmc_protocol.h **** //! \name Set of flags to define a reponse type
 147:../libraries/Storage/sd_mmc_protocol.h **** //! @{
 148:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD_NO_RESP (0)
 149:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD_R1      (SDMMC_RESP_PRESENT | SDMMC_RESP_CRC)
 150:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD_R1B     (SDMMC_RESP_PRESENT | SDMMC_RESP_CRC | SDMMC_RESP_BUSY)
 151:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD_R2      (SDMMC_RESP_PRESENT | SDMMC_RESP_8 | SDMMC_RESP_136 | SDMMC_RESP_CRC)
 152:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD_R3      (SDMMC_RESP_PRESENT | SDMMC_RESP_32)
 153:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD_R4      (SDMMC_RESP_PRESENT | SDMMC_RESP_32)
 154:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD_R5      (SDMMC_RESP_PRESENT | SDMMC_RESP_8 | SDMMC_RESP_CRC)
 155:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD_R6      (SDMMC_RESP_PRESENT | SDMMC_RESP_CRC)
 156:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD_R7      (SDMMC_RESP_PRESENT | SDMMC_RESP_32 | SDMMC_RESP_CRC)
 157:../libraries/Storage/sd_mmc_protocol.h **** //! @}
 158:../libraries/Storage/sd_mmc_protocol.h **** 
 159:../libraries/Storage/sd_mmc_protocol.h **** //! \name SD/MMC/SDIO command definitions
 160:../libraries/Storage/sd_mmc_protocol.h **** //! SDMMC_CMDx are include in SD and MMC norms
 161:../libraries/Storage/sd_mmc_protocol.h **** //! MMC_CMDx   are include in MMC norms only
 162:../libraries/Storage/sd_mmc_protocol.h **** //! SD_CMDx    are include in SD norms only
 163:../libraries/Storage/sd_mmc_protocol.h **** //! SDIO_CMDx  are include in SDIO norms only
 164:../libraries/Storage/sd_mmc_protocol.h **** //! @{
 165:../libraries/Storage/sd_mmc_protocol.h **** 
ARM GAS  /tmp/ccTIydBQ.s 			page 27


 166:../libraries/Storage/sd_mmc_protocol.h **** /*
 167:../libraries/Storage/sd_mmc_protocol.h ****  * --- Basic commands and read-stream command (class 0 and class 1) ---
 168:../libraries/Storage/sd_mmc_protocol.h ****  */
 169:../libraries/Storage/sd_mmc_protocol.h **** 
 170:../libraries/Storage/sd_mmc_protocol.h **** /** Cmd0(bc): Reset all cards to idle state */
 171:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_SPI_CMD0_GO_IDLE_STATE     (0 | SDMMC_CMD_R1)
 172:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_MCI_CMD0_GO_IDLE_STATE     (0 | SDMMC_CMD_NO_RESP | SDMMC_CMD_OPENDRAIN)
 173:../libraries/Storage/sd_mmc_protocol.h **** /** MMC Cmd1(bcr, R3): Ask the card to send its Operating Conditions */
 174:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_SPI_CMD1_SEND_OP_COND        (1 | SDMMC_CMD_R1)
 175:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_MCI_CMD1_SEND_OP_COND        (1 | SDMMC_CMD_R3 | SDMMC_CMD_OPENDRAIN)
 176:../libraries/Storage/sd_mmc_protocol.h **** /** Cmd2(bcr, R2): Ask the card to send its CID number (stuff but arg 0 used) */
 177:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD2_ALL_SEND_CID          (2 | SDMMC_CMD_R2 | SDMMC_CMD_OPENDRAIN)
 178:../libraries/Storage/sd_mmc_protocol.h **** /** SD Cmd3(bcr, R6): Ask the card to publish a new relative address (RCA) */
 179:../libraries/Storage/sd_mmc_protocol.h **** #define SD_CMD3_SEND_RELATIVE_ADDR       (3 | SDMMC_CMD_R6 | SDMMC_CMD_OPENDRAIN)
 180:../libraries/Storage/sd_mmc_protocol.h **** /** MMC Cmd3(ac, R1): Assigns relative address to the card */
 181:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_CMD3_SET_RELATIVE_ADDR       (3 | SDMMC_CMD_R1)
 182:../libraries/Storage/sd_mmc_protocol.h **** /** Cmd4(bc): Program the DSR of all cards (MCI only) */
 183:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD4_SET_DSR               (4 | SDMMC_CMD_NO_RESP)
 184:../libraries/Storage/sd_mmc_protocol.h **** /** MMC Cmd5(ac, R1b): Toggle the card between Sleep state and Standby state. */
 185:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_CMD5_SLEEP_AWAKE             (5 | SDMMC_CMD_R1B)
 186:../libraries/Storage/sd_mmc_protocol.h **** /** Cmd7(ac, R1/R1b): Select/Deselect card
 187:../libraries/Storage/sd_mmc_protocol.h ****  * For SD: R1b only from the selected card.
 188:../libraries/Storage/sd_mmc_protocol.h ****  * For MMC: R1 while selecting from Stand-By State to Transfer State;
 189:../libraries/Storage/sd_mmc_protocol.h ****  *          R1b while selecting from Disconnected State to Programming State.
 190:../libraries/Storage/sd_mmc_protocol.h ****  */
 191:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD7_SELECT_CARD_CMD       (7 | SDMMC_CMD_R1B)
 192:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD7_DESELECT_CARD_CMD     (7 | SDMMC_CMD_R1)
 193:../libraries/Storage/sd_mmc_protocol.h **** /** MMC Cmd8(adtc, R1): Send EXT_CSD register as a block of data */
 194:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_CMD8_SEND_EXT_CSD            (8 | SDMMC_CMD_R1 | SDMMC_CMD_SINGLE_BLOCK)
 195:../libraries/Storage/sd_mmc_protocol.h **** /** SD Cmd8(bcr, R7) : Send SD Memory Card interface condition */
 196:../libraries/Storage/sd_mmc_protocol.h **** #define SD_CMD8_SEND_IF_COND             (8 | SDMMC_CMD_R7 | SDMMC_CMD_OPENDRAIN)
 197:../libraries/Storage/sd_mmc_protocol.h **** /** Cmd9 SPI (R1): Addressed card sends its card-specific data (CSD) */
 198:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_SPI_CMD9_SEND_CSD          (9 | SDMMC_CMD_R1 | SDMMC_CMD_SINGLE_BLOCK)
 199:../libraries/Storage/sd_mmc_protocol.h **** /** Cmd9 MCI (ac, R2): Addressed card sends its card-specific data (CSD) */
 200:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_MCI_CMD9_SEND_CSD          (9 | SDMMC_CMD_R2)
 201:../libraries/Storage/sd_mmc_protocol.h **** /** Cmd10(ac, R2): Addressed card sends its card identification (CID) */
 202:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD10_SEND_CID             (10 | SDMMC_CMD_R2)
 203:../libraries/Storage/sd_mmc_protocol.h **** /**
 204:../libraries/Storage/sd_mmc_protocol.h ****  * MMC Cmd11(adtc, R1): Read data stream from the card, starting at the given
 205:../libraries/Storage/sd_mmc_protocol.h ****  * address, until a STOP_TRANSMISSION follows.
 206:../libraries/Storage/sd_mmc_protocol.h ****  */
 207:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_CMD11_READ_DAT_UNTIL_STOP    (11 | SDMMC_CMD_R1)
 208:../libraries/Storage/sd_mmc_protocol.h **** /* SD Cmd11 MCI (ac, R1): Voltage switching */
 209:../libraries/Storage/sd_mmc_protocol.h **** #define SD_CMD11_READ_DAT_UNTIL_STOP     (11 | SDMMC_CMD_R1)
 210:../libraries/Storage/sd_mmc_protocol.h **** /** Cmd12(ac, R1b): Force the card to stop transmission */
 211:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD12_STOP_TRANSMISSION    (12 | SDMMC_CMD_R1B)
 212:../libraries/Storage/sd_mmc_protocol.h **** /** Cmd13(R2): Addressed card sends its status register. */
 213:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_SPI_CMD13_SEND_STATUS      (13 | SDMMC_CMD_R2)
 214:../libraries/Storage/sd_mmc_protocol.h **** /** Cmd13(ac, R1): Addressed card sends its status register. */
 215:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_MCI_CMD13_SEND_STATUS      (13 | SDMMC_CMD_R1)
 216:../libraries/Storage/sd_mmc_protocol.h **** /** MMC Cmd14(adtc, R1): Read the reversed bus testing data pattern from a card. */
 217:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_CMD14_BUSTEST_R              (14 | SDMMC_CMD_R1)
 218:../libraries/Storage/sd_mmc_protocol.h **** /** Cmd15(ac): Send an addressed card into the Inactive State. */
 219:../libraries/Storage/sd_mmc_protocol.h **** // Note: It is a ac cmd, but it must be send like bc cmd to open drain
 220:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD15_GO_INACTIVE_STATE    (15 | SDMMC_CMD_NO_RESP | SDMMC_CMD_OPENDRAIN)
 221:../libraries/Storage/sd_mmc_protocol.h **** /** MMC Cmd19(adtc, R1): Send the bus test data pattern */
 222:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_CMD19_BUSTEST_W              (19 | SDMMC_CMD_R1)
ARM GAS  /tmp/ccTIydBQ.s 			page 28


 223:../libraries/Storage/sd_mmc_protocol.h **** /** Cmd58(R3): Reads the OCR register of a card */
 224:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_SPI_CMD58_READ_OCR         (58 | SDMMC_CMD_R3)
 225:../libraries/Storage/sd_mmc_protocol.h **** /** Cmd59(R1): Turns the CRC option on or off */
 226:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_SPI_CMD59_CRC_ON_OFF       (59 | SDMMC_CMD_R1)
 227:../libraries/Storage/sd_mmc_protocol.h **** 
 228:../libraries/Storage/sd_mmc_protocol.h **** /*
 229:../libraries/Storage/sd_mmc_protocol.h ****  * --- Block-oriented read commands (class 2) ---
 230:../libraries/Storage/sd_mmc_protocol.h ****  */
 231:../libraries/Storage/sd_mmc_protocol.h **** /** Cmd16(ac, R1): Set the block length (in bytes) */
 232:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD16_SET_BLOCKLEN         (16 | SDMMC_CMD_R1)
 233:../libraries/Storage/sd_mmc_protocol.h **** /** Cmd17(adtc, R1): Read single block */
 234:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD17_READ_SINGLE_BLOCK    (17 | SDMMC_CMD_R1 | SDMMC_CMD_SINGLE_BLOCK)
 235:../libraries/Storage/sd_mmc_protocol.h **** /** Cmd18(adtc, R1): Read multiple block */
 236:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD18_READ_MULTIPLE_BLOCK  (18 | SDMMC_CMD_R1 | SDMMC_CMD_MULTI_BLOCK)
 237:../libraries/Storage/sd_mmc_protocol.h **** 
 238:../libraries/Storage/sd_mmc_protocol.h **** /*
 239:../libraries/Storage/sd_mmc_protocol.h ****  * --- Sequential write commands (class 3) ---
 240:../libraries/Storage/sd_mmc_protocol.h ****  */
 241:../libraries/Storage/sd_mmc_protocol.h **** 
 242:../libraries/Storage/sd_mmc_protocol.h **** /**
 243:../libraries/Storage/sd_mmc_protocol.h ****  * MMC Cmd20(adtc, R1): Write a data stream from the host, starting at the
 244:../libraries/Storage/sd_mmc_protocol.h ****  * given address, until a STOP_TRANSMISSION follows.
 245:../libraries/Storage/sd_mmc_protocol.h ****  */
 246:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_CMD20_WRITE_DAT_UNTIL_STOP   (20 | SDMMC_CMD_R1)
 247:../libraries/Storage/sd_mmc_protocol.h **** 
 248:../libraries/Storage/sd_mmc_protocol.h **** /*
 249:../libraries/Storage/sd_mmc_protocol.h ****  * --- Block-oriented write commands (class 4) ---
 250:../libraries/Storage/sd_mmc_protocol.h ****  */
 251:../libraries/Storage/sd_mmc_protocol.h **** /** MMC Cmd23(ac, R1): Set block count */
 252:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_CMD23_SET_BLOCK_COUNT        (23 | SDMMC_CMD_R1)
 253:../libraries/Storage/sd_mmc_protocol.h **** /** Cmd24(adtc, R1): Write block */
 254:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD24_WRITE_BLOCK          (24 | SDMMC_CMD_R1 | SDMMC_CMD_WRITE | SDMMC_CMD_SINGLE_BL
 255:../libraries/Storage/sd_mmc_protocol.h **** /** Cmd25(adtc, R1): Write multiple block */
 256:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD25_WRITE_MULTIPLE_BLOCK (25 | SDMMC_CMD_R1 | SDMMC_CMD_WRITE | SDMMC_CMD_MULTI_BLO
 257:../libraries/Storage/sd_mmc_protocol.h **** /** MMC Cmd26(adtc, R1): Programming of the card identification register. */
 258:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_CMD26_PROGRAM_CID            (26 | SDMMC_CMD_R1)
 259:../libraries/Storage/sd_mmc_protocol.h **** /** Cmd27(adtc, R1): Programming of the programmable bits of the CSD. */
 260:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD27_PROGRAM_CSD          (27 | SDMMC_CMD_R1)
 261:../libraries/Storage/sd_mmc_protocol.h **** 
 262:../libraries/Storage/sd_mmc_protocol.h **** /*
 263:../libraries/Storage/sd_mmc_protocol.h ****  * --- Erase commands  (class 5) ---
 264:../libraries/Storage/sd_mmc_protocol.h ****  */
 265:../libraries/Storage/sd_mmc_protocol.h **** /** SD Cmd32(ac, R1): */
 266:../libraries/Storage/sd_mmc_protocol.h **** #define SD_CMD32_ERASE_WR_BLK_START      (32 | SDMMC_CMD_R1)
 267:../libraries/Storage/sd_mmc_protocol.h **** /** SD Cmd33(ac, R1): */
 268:../libraries/Storage/sd_mmc_protocol.h **** #define SD_CMD33_ERASE_WR_BLK_END        (33 | SDMMC_CMD_R1)
 269:../libraries/Storage/sd_mmc_protocol.h **** /** MMC Cmd35(ac, R1): */
 270:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_CMD35_ERASE_GROUP_START      (35 | SDMMC_CMD_R1)
 271:../libraries/Storage/sd_mmc_protocol.h **** /** MMC Cmd36(ac, R1): */
 272:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_CMD36_ERASE_GROUP_END        (36 | SDMMC_CMD_R1)
 273:../libraries/Storage/sd_mmc_protocol.h **** /** Cmd38(ac, R1B): */
 274:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD38_ERASE                (38 | SDMMC_CMD_R1B)
 275:../libraries/Storage/sd_mmc_protocol.h **** 
 276:../libraries/Storage/sd_mmc_protocol.h **** /*
 277:../libraries/Storage/sd_mmc_protocol.h ****  * --- Block Oriented Write Protection Commands (class 6) ---
 278:../libraries/Storage/sd_mmc_protocol.h ****  */
 279:../libraries/Storage/sd_mmc_protocol.h **** /** Cmd28(ac, R1b): Set write protection */
ARM GAS  /tmp/ccTIydBQ.s 			page 29


 280:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD28_SET_WRITE_PROT       (28 | SDMMC_CMD_R1B)
 281:../libraries/Storage/sd_mmc_protocol.h **** /** Cmd29(ac, R1b): Clr write protection */
 282:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD29_CLR_WRITE_PROT       (29 | SDMMC_CMD_R1B)
 283:../libraries/Storage/sd_mmc_protocol.h **** /** Cmd30(adtc, R1b): Send write protection */
 284:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD30_SEND_WRITE_PROT      (30 | SDMMC_CMD_R1)
 285:../libraries/Storage/sd_mmc_protocol.h **** 
 286:../libraries/Storage/sd_mmc_protocol.h **** /*
 287:../libraries/Storage/sd_mmc_protocol.h ****  * --- Lock Card (class 7) ---
 288:../libraries/Storage/sd_mmc_protocol.h ****  */
 289:../libraries/Storage/sd_mmc_protocol.h **** /** Cmd42(adtc, R1): Used to set/reset the password or lock/unlock the card. */
 290:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD42_LOCK_UNLOCK          (42 | SDMMC_CMD_R1)
 291:../libraries/Storage/sd_mmc_protocol.h **** 
 292:../libraries/Storage/sd_mmc_protocol.h **** /*
 293:../libraries/Storage/sd_mmc_protocol.h ****  * --- Application-specific commands (class 8) ---
 294:../libraries/Storage/sd_mmc_protocol.h ****  */
 295:../libraries/Storage/sd_mmc_protocol.h **** /**
 296:../libraries/Storage/sd_mmc_protocol.h ****  * Cmd55(ac, R1): Indicate to the card that the next command is an application
 297:../libraries/Storage/sd_mmc_protocol.h ****  * specific command rather than a standard command.
 298:../libraries/Storage/sd_mmc_protocol.h ****  */
 299:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD55_APP_CMD              (55 | SDMMC_CMD_R1)
 300:../libraries/Storage/sd_mmc_protocol.h **** /**
 301:../libraries/Storage/sd_mmc_protocol.h ****  * Cmd 56(adtc, R1): Used either to transfer a data block to the card or to get
 302:../libraries/Storage/sd_mmc_protocol.h ****  * a data block from the card for general purpose/application specific commands.
 303:../libraries/Storage/sd_mmc_protocol.h ****  */
 304:../libraries/Storage/sd_mmc_protocol.h **** #define SDMMC_CMD56_GEN_CMD              (56 | SDMMC_CMD_R1)
 305:../libraries/Storage/sd_mmc_protocol.h **** 
 306:../libraries/Storage/sd_mmc_protocol.h **** /**
 307:../libraries/Storage/sd_mmc_protocol.h ****  * MMC Cmd6(ac, R1b) : Switche the mode of operation of the selected card
 308:../libraries/Storage/sd_mmc_protocol.h ****  * or modifies the EXT_CSD registers.
 309:../libraries/Storage/sd_mmc_protocol.h ****  */
 310:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_CMD6_SWITCH                  (6 | SDMMC_CMD_R1B)
 311:../libraries/Storage/sd_mmc_protocol.h **** /**
 312:../libraries/Storage/sd_mmc_protocol.h ****  * SD Cmd6(adtc, R1) : Check switchable function (mode 0)
 313:../libraries/Storage/sd_mmc_protocol.h ****  * and switch card function (mode 1).
 314:../libraries/Storage/sd_mmc_protocol.h ****  */
 315:../libraries/Storage/sd_mmc_protocol.h **** #define SD_CMD6_SWITCH_FUNC              (6 | SDMMC_CMD_R1 | SDMMC_CMD_SINGLE_BLOCK)
 316:../libraries/Storage/sd_mmc_protocol.h **** /** ACMD6(ac, R1): Define the data bus width */
 317:../libraries/Storage/sd_mmc_protocol.h **** #define SD_ACMD6_SET_BUS_WIDTH           (6 | SDMMC_CMD_R1)
 318:../libraries/Storage/sd_mmc_protocol.h **** /** ACMD13(adtc, R1): Send the SD Status. */
 319:../libraries/Storage/sd_mmc_protocol.h **** #define SD_ACMD13_SD_STATUS              (13 | SDMMC_CMD_R1)
 320:../libraries/Storage/sd_mmc_protocol.h **** /**
 321:../libraries/Storage/sd_mmc_protocol.h ****  * ACMD22(adtc, R1): Send the number of the written (with-out errors) write
 322:../libraries/Storage/sd_mmc_protocol.h ****  * blocks.
 323:../libraries/Storage/sd_mmc_protocol.h ****  */
 324:../libraries/Storage/sd_mmc_protocol.h **** #define SD_ACMD22_SEND_NUM_WR_BLOCKS     (22 | SDMMC_CMD_R1)
 325:../libraries/Storage/sd_mmc_protocol.h **** /**
 326:../libraries/Storage/sd_mmc_protocol.h ****  * ACMD23(ac, R1): Set the number of write blocks to be pre-erased before
 327:../libraries/Storage/sd_mmc_protocol.h ****  * writing
 328:../libraries/Storage/sd_mmc_protocol.h ****  */
 329:../libraries/Storage/sd_mmc_protocol.h **** #define SD_ACMD23_SET_WR_BLK_ERASE_COUNT (23 | SDMMC_CMD_R1)
 330:../libraries/Storage/sd_mmc_protocol.h **** /**
 331:../libraries/Storage/sd_mmc_protocol.h ****  * ACMD41(bcr, R3): Send host capacity support information (HCS) and asks the
 332:../libraries/Storage/sd_mmc_protocol.h ****  * accessed card to send its operating condition register (OCR) content
 333:../libraries/Storage/sd_mmc_protocol.h ****  * in the response
 334:../libraries/Storage/sd_mmc_protocol.h ****  */
 335:../libraries/Storage/sd_mmc_protocol.h **** #define SD_MCI_ACMD41_SD_SEND_OP_COND    (41 | SDMMC_CMD_R3 | SDMMC_CMD_OPENDRAIN)
 336:../libraries/Storage/sd_mmc_protocol.h **** /**
ARM GAS  /tmp/ccTIydBQ.s 			page 30


 337:../libraries/Storage/sd_mmc_protocol.h ****  * ACMD41(R1): Send host capacity support information (HCS) and activates the
 338:../libraries/Storage/sd_mmc_protocol.h ****  * card's initilization process
 339:../libraries/Storage/sd_mmc_protocol.h ****  */
 340:../libraries/Storage/sd_mmc_protocol.h **** #define SD_SPI_ACMD41_SD_SEND_OP_COND    (41 | SDMMC_CMD_R1)
 341:../libraries/Storage/sd_mmc_protocol.h **** /**
 342:../libraries/Storage/sd_mmc_protocol.h ****  * ACMD42(ac, R1): Connect[1]/Disconnect[0] the 50 KOhm pull-up resistor on
 343:../libraries/Storage/sd_mmc_protocol.h ****  * CD/DAT3 (pin 1) of the card.
 344:../libraries/Storage/sd_mmc_protocol.h ****  */
 345:../libraries/Storage/sd_mmc_protocol.h **** #define SD_ACMD42_SET_CLR_CARD_DETECT    (42 | SDMMC_CMD_R1)
 346:../libraries/Storage/sd_mmc_protocol.h **** /** ACMD51(adtc, R1): Read the SD Configuration Register (SCR). */
 347:../libraries/Storage/sd_mmc_protocol.h **** #define SD_ACMD51_SEND_SCR               (51 | SDMMC_CMD_R1 | SDMMC_CMD_SINGLE_BLOCK)
 348:../libraries/Storage/sd_mmc_protocol.h **** 
 349:../libraries/Storage/sd_mmc_protocol.h **** /*
 350:../libraries/Storage/sd_mmc_protocol.h ****  * --- I/O mode commands (class 9) ---
 351:../libraries/Storage/sd_mmc_protocol.h ****  */
 352:../libraries/Storage/sd_mmc_protocol.h **** /** MMC Cmd39(ac, R4): Used to write and read 8 bit (register) data fields. */
 353:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_CMD39_FAST_IO                (39 | SDMMC_CMD_R4)
 354:../libraries/Storage/sd_mmc_protocol.h **** /** MMC Cmd40(bcr, R5): Set the system into interrupt mode */
 355:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_CMD40_GO_IRQ_STATE           (40 | SDMMC_CMD_R5 | SDMMC_CMD_OPENDRAIN)
 356:../libraries/Storage/sd_mmc_protocol.h **** /** SDIO Cmd5(R4): Send operation condition */
 357:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CMD5_SEND_OP_COND           (5 | SDMMC_CMD_R4 | SDMMC_CMD_OPENDRAIN)
 358:../libraries/Storage/sd_mmc_protocol.h **** /** SDIO CMD52(R5): Direct IO read/write */
 359:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CMD52_IO_RW_DIRECT          (52 | SDMMC_CMD_R5)
 360:../libraries/Storage/sd_mmc_protocol.h **** /** SDIO CMD53(R5): Extended IO read/write */
 361:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CMD53_IO_R_BYTE_EXTENDED    (53 | SDMMC_CMD_R5 | SDMMC_CMD_SDIO_BYTE)
 362:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CMD53_IO_W_BYTE_EXTENDED    (53 | SDMMC_CMD_R5 | SDMMC_CMD_SDIO_BYTE | SDMMC_CMD_WRITE
 363:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CMD53_IO_R_BLOCK_EXTENDED   (53 | SDMMC_CMD_R5 | SDMMC_CMD_SDIO_BLOCK)
 364:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CMD53_IO_W_BLOCK_EXTENDED   (53 | SDMMC_CMD_R5 | SDMMC_CMD_SDIO_BLOCK | SDMMC_CMD_WRIT
 365:../libraries/Storage/sd_mmc_protocol.h **** //! @}
 366:../libraries/Storage/sd_mmc_protocol.h **** //! @}
 367:../libraries/Storage/sd_mmc_protocol.h **** 
 368:../libraries/Storage/sd_mmc_protocol.h **** 
 369:../libraries/Storage/sd_mmc_protocol.h **** //! \name Macros for command argument definition
 370:../libraries/Storage/sd_mmc_protocol.h **** //! @{
 371:../libraries/Storage/sd_mmc_protocol.h **** 
 372:../libraries/Storage/sd_mmc_protocol.h ****   //! \name MMC CMD6 argument structure
 373:../libraries/Storage/sd_mmc_protocol.h ****   //! @{
 374:../libraries/Storage/sd_mmc_protocol.h **** //! [31:26] Set to 0
 375:../libraries/Storage/sd_mmc_protocol.h **** //! [25:24] Access
 376:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_CMD6_ACCESS_COMMAND_SET (0lu << 24)
 377:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_CMD6_ACCESS_SET_BITS    (1lu << 24)
 378:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_CMD6_ACCESS_CLEAR_BITS  (2lu << 24)
 379:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_CMD6_ACCESS_WRITE_BYTE  (3lu << 24)
 380:../libraries/Storage/sd_mmc_protocol.h **** //! [23:16] Index for Mode Segment
 381:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_CMD6_INDEX_CMD_SET         (EXT_CSD_CMD_SET_INDEX << 16)
 382:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_CMD6_INDEX_CMD_SET_REV     (EXT_CSD_CMD_SET_REV_INDEX << 16)
 383:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_CMD6_INDEX_POWER_CLASS     (EXT_CSD_POWER_CLASS_INDEX << 16)
 384:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_CMD6_INDEX_HS_TIMING       (EXT_CSD_HS_TIMING_INDEX << 16)
 385:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_CMD6_INDEX_BUS_WIDTH       (EXT_CSD_BUS_WIDTH_INDEX << 16)
 386:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_CMD6_INDEX_ERASED_MEM_CONT (EXT_CSD_ERASED_MEM_CONT_INDEX << 16)
 387:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_CMD6_INDEX_BOOT_CONFIG     (EXT_CSD_BOOT_CONFIG_INDEX << 16)
 388:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_CMD6_INDEX_BOOT_BUS_WIDTH  (EXT_CSD_BOOT_BUS_WIDTH_INDEX << 16)
 389:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_CMD6_INDEX_ERASE_GROUP_DEF (EXT_CSD_ERASE_GROUP_DEF_INDEX << 16)
 390:../libraries/Storage/sd_mmc_protocol.h **** //! [15:8] Value
 391:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_CMD6_VALUE_BUS_WIDTH_1BIT    (0x0lu << 8)
 392:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_CMD6_VALUE_BUS_WIDTH_4BIT    (0x1lu << 8)
 393:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_CMD6_VALUE_BUS_WIDTH_8BIT    (0x2lu << 8)
ARM GAS  /tmp/ccTIydBQ.s 			page 31


 394:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_CMD6_VALUE_HS_TIMING_ENABLE  (0x1lu << 8)
 395:../libraries/Storage/sd_mmc_protocol.h **** #define MMC_CMD6_VALUE_HS_TIMING_DISABLE (0x0lu << 8)
 396:../libraries/Storage/sd_mmc_protocol.h **** //! [7:3] Set to 0
 397:../libraries/Storage/sd_mmc_protocol.h **** //! [2:0] Cmd Set
 398:../libraries/Storage/sd_mmc_protocol.h ****   //! @}
 399:../libraries/Storage/sd_mmc_protocol.h **** 
 400:../libraries/Storage/sd_mmc_protocol.h ****   //! \name SD CMD6 argument structure
 401:../libraries/Storage/sd_mmc_protocol.h ****   //! @{
 402:../libraries/Storage/sd_mmc_protocol.h **** //! CMD6 arg[ 3: 0] function group 1, access mode
 403:../libraries/Storage/sd_mmc_protocol.h **** #define SD_CMD6_GRP1_HIGH_SPEED     (0x1lu << 0)
 404:../libraries/Storage/sd_mmc_protocol.h **** #define SD_CMD6_GRP1_DEFAULT        (0x0lu << 0)
 405:../libraries/Storage/sd_mmc_protocol.h **** //! CMD6 arg[ 7: 4] function group 2, command system
 406:../libraries/Storage/sd_mmc_protocol.h **** #define SD_CMD6_GRP2_NO_INFLUENCE   (0xFlu << 4)
 407:../libraries/Storage/sd_mmc_protocol.h **** #define SD_CMD6_GRP2_DEFAULT        (0x0lu << 4)
 408:../libraries/Storage/sd_mmc_protocol.h **** //! CMD6 arg[11: 8] function group 3, 0xF or 0x0
 409:../libraries/Storage/sd_mmc_protocol.h **** #define SD_CMD6_GRP3_NO_INFLUENCE   (0xFlu << 8)
 410:../libraries/Storage/sd_mmc_protocol.h **** #define SD_CMD6_GRP3_DEFAULT        (0x0lu << 8)
 411:../libraries/Storage/sd_mmc_protocol.h **** //! CMD6 arg[15:12] function group 4, 0xF or 0x0
 412:../libraries/Storage/sd_mmc_protocol.h **** #define SD_CMD6_GRP4_NO_INFLUENCE   (0xFlu << 12)
 413:../libraries/Storage/sd_mmc_protocol.h **** #define SD_CMD6_GRP4_DEFAULT        (0x0lu << 12)
 414:../libraries/Storage/sd_mmc_protocol.h **** //! CMD6 arg[19:16] function group 5, 0xF or 0x0
 415:../libraries/Storage/sd_mmc_protocol.h **** #define SD_CMD6_GRP5_NO_INFLUENCE   (0xFlu << 16)
 416:../libraries/Storage/sd_mmc_protocol.h **** #define SD_CMD6_GRP5_DEFAULT        (0x0lu << 16)
 417:../libraries/Storage/sd_mmc_protocol.h **** //! CMD6 arg[23:20] function group 6, 0xF or 0x0
 418:../libraries/Storage/sd_mmc_protocol.h **** #define SD_CMD6_GRP6_NO_INFLUENCE   (0xFlu << 20)
 419:../libraries/Storage/sd_mmc_protocol.h **** #define SD_CMD6_GRP6_DEFAULT        (0x0lu << 20)
 420:../libraries/Storage/sd_mmc_protocol.h **** //! CMD6 arg[30:24] reserved 0
 421:../libraries/Storage/sd_mmc_protocol.h **** //! CMD6 arg[31   ] Mode, 0: Check, 1: Switch
 422:../libraries/Storage/sd_mmc_protocol.h **** #define SD_CMD6_MODE_CHECK          (0lu << 31)
 423:../libraries/Storage/sd_mmc_protocol.h **** #define SD_CMD6_MODE_SWITCH         (1lu << 31)
 424:../libraries/Storage/sd_mmc_protocol.h ****   //! @}
 425:../libraries/Storage/sd_mmc_protocol.h **** 
 426:../libraries/Storage/sd_mmc_protocol.h ****   //! \name SD CMD8 argument structure
 427:../libraries/Storage/sd_mmc_protocol.h ****   //! @{
 428:../libraries/Storage/sd_mmc_protocol.h **** #define SD_CMD8_PATTERN       0xAA
 429:../libraries/Storage/sd_mmc_protocol.h **** #define SD_CMD8_MASK_PATTERN  0xFF
 430:../libraries/Storage/sd_mmc_protocol.h **** #define SD_CMD8_HIGH_VOLTAGE  0x100
 431:../libraries/Storage/sd_mmc_protocol.h **** #define SD_CMD8_MASK_VOLTAGE  0xF00
 432:../libraries/Storage/sd_mmc_protocol.h ****   //! @}
 433:../libraries/Storage/sd_mmc_protocol.h **** 
 434:../libraries/Storage/sd_mmc_protocol.h ****   //! \name SD ACMD41 arguments
 435:../libraries/Storage/sd_mmc_protocol.h ****   //! @{
 436:../libraries/Storage/sd_mmc_protocol.h **** #define SD_ACMD41_HCS   (1lu << 30) //!< (SD) Host Capacity Support
 437:../libraries/Storage/sd_mmc_protocol.h ****   //! @}
 438:../libraries/Storage/sd_mmc_protocol.h **** //! @}
 439:../libraries/Storage/sd_mmc_protocol.h **** 
 440:../libraries/Storage/sd_mmc_protocol.h **** 
 441:../libraries/Storage/sd_mmc_protocol.h **** //! \name SDIO definitions
 442:../libraries/Storage/sd_mmc_protocol.h **** //! @{
 443:../libraries/Storage/sd_mmc_protocol.h **** 
 444:../libraries/Storage/sd_mmc_protocol.h ****   //! \name SDIO state (in R5)
 445:../libraries/Storage/sd_mmc_protocol.h ****   //! @{
 446:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_R5_COM_CRC_ERROR   (1lu << 15) /**< CRC check error */
 447:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_R5_ILLEGAL_COMMAND (1lu << 14) /**< Illegal command */
 448:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_R5_STATE           (3lu << 12) /**< SDIO R5 state mask */
 449:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_R5_STATE_DIS       (0lu << 12) /**< Disabled */
 450:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_R5_STATE_CMD       (1lu << 12) /**< DAT lines free */
ARM GAS  /tmp/ccTIydBQ.s 			page 32


 451:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_R5_STATE_TRN       (2lu << 12) /**< Transfer */
 452:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_R5_STATE_RFU       (3lu << 12) /**< Reserved */
 453:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_R5_ERROR           (1lu << 11) /**< General error */
 454:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_R5_FUNC_NUM        (1lu << 9)  /**< Invalid function number */
 455:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_R5_OUT_OF_RANGE    (1lu << 8)  /**< Argument out of range */
 456:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_R5_STATUS_ERR      (SDIO_R5_ERROR | SDIO_R5_FUNC_NUM \
 457:../libraries/Storage/sd_mmc_protocol.h **** 		| SDIO_R5_OUT_OF_RANGE) //!< Errro status bits mask
 458:../libraries/Storage/sd_mmc_protocol.h ****   //! @}
 459:../libraries/Storage/sd_mmc_protocol.h **** 
 460:../libraries/Storage/sd_mmc_protocol.h ****   //! \name SDIO state (in R6)
 461:../libraries/Storage/sd_mmc_protocol.h ****   //! @{
 462:../libraries/Storage/sd_mmc_protocol.h **** /** The CRC check of the previous command failed. */
 463:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_R6_COM_CRC_ERROR   (1lu << 15)
 464:../libraries/Storage/sd_mmc_protocol.h **** /** Command not legal for the card state. */
 465:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_R6_ILLEGAL_COMMAND (1lu << 14)
 466:../libraries/Storage/sd_mmc_protocol.h **** /** A general or an unknown error occurred during the operation. */
 467:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_R6_ERROR           (1lu << 13)
 468:../libraries/Storage/sd_mmc_protocol.h **** /** Status bits mask for SDIO R6 */
 469:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_STATUS_R6  (SDIO_R6_COM_CRC_ERROR \
 470:../libraries/Storage/sd_mmc_protocol.h **** 		| SDIO_R6_ILLEGAL_COMMAND | SDIO_R6_ERROR)
 471:../libraries/Storage/sd_mmc_protocol.h ****   //! @}
 472:../libraries/Storage/sd_mmc_protocol.h **** 
 473:../libraries/Storage/sd_mmc_protocol.h ****   //! \name SDIO CMD52 argument bit offset
 474:../libraries/Storage/sd_mmc_protocol.h ****   //! @{
 475:../libraries/Storage/sd_mmc_protocol.h **** //! CMD52 arg[ 7: 0] Write data or stuff bits
 476:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CMD52_WR_DATA      0
 477:../libraries/Storage/sd_mmc_protocol.h **** //! CMD52 arg[    8] Reserved
 478:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CMD52_STUFF0       8
 479:../libraries/Storage/sd_mmc_protocol.h **** //! CMD52 arg[25: 9] Register address
 480:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CMD52_REG_ADRR     9
 481:../libraries/Storage/sd_mmc_protocol.h **** //! CMD52 arg[   26] Reserved
 482:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CMD52_STUFF1       26
 483:../libraries/Storage/sd_mmc_protocol.h **** //! CMD52 arg[   27] Read after Write flag
 484:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CMD52_RAW_FLAG     27
 485:../libraries/Storage/sd_mmc_protocol.h **** //! CMD52 arg[30:28] Number of the function
 486:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CMD52_FUNCTION_NUM 28
 487:../libraries/Storage/sd_mmc_protocol.h **** //! CMD52 arg[   31] Direction, 1:write, 0:read.
 488:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CMD52_RW_FLAG      31
 489:../libraries/Storage/sd_mmc_protocol.h **** #  define SDIO_CMD52_READ_FLAG    0
 490:../libraries/Storage/sd_mmc_protocol.h **** #  define SDIO_CMD52_WRITE_FLAG   1
 491:../libraries/Storage/sd_mmc_protocol.h ****   //! @}
 492:../libraries/Storage/sd_mmc_protocol.h **** 
 493:../libraries/Storage/sd_mmc_protocol.h ****   //! \name SDIO CMD53 argument structure
 494:../libraries/Storage/sd_mmc_protocol.h ****   //! @{
 495:../libraries/Storage/sd_mmc_protocol.h **** /**
 496:../libraries/Storage/sd_mmc_protocol.h ****  * [ 8: 0] Byte mode: number of bytes to transfer,
 497:../libraries/Storage/sd_mmc_protocol.h ****  *                    0 cause 512 bytes transfer.
 498:../libraries/Storage/sd_mmc_protocol.h ****  *         Block mode: number of blocks to transfer,
 499:../libraries/Storage/sd_mmc_protocol.h ****  *                    0 set count to infinite.
 500:../libraries/Storage/sd_mmc_protocol.h ****  */
 501:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CMD53_COUNT        0
 502:../libraries/Storage/sd_mmc_protocol.h **** //! CMD53 arg[25: 9] Start Address I/O register
 503:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CMD53_REG_ADDR     9
 504:../libraries/Storage/sd_mmc_protocol.h **** //! CMD53 arg[   26] 1:Incrementing address, 0: fixed
 505:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CMD53_OP_CODE      26
 506:../libraries/Storage/sd_mmc_protocol.h **** //! CMD53 arg[   27] (Optional) 1:block mode
 507:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CMD53_BLOCK_MODE   27
ARM GAS  /tmp/ccTIydBQ.s 			page 33


 508:../libraries/Storage/sd_mmc_protocol.h **** //! CMD53 arg[30:28] Number of the function
 509:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CMD53_FUNCTION_NUM 28
 510:../libraries/Storage/sd_mmc_protocol.h **** //! CMD53 arg[   31] Direction, 1:WR, 0:RD
 511:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CMD53_RW_FLAG      31
 512:../libraries/Storage/sd_mmc_protocol.h **** #  define SDIO_CMD53_READ_FLAG    0
 513:../libraries/Storage/sd_mmc_protocol.h **** #  define SDIO_CMD53_WRITE_FLAG   1
 514:../libraries/Storage/sd_mmc_protocol.h ****   //! @}
 515:../libraries/Storage/sd_mmc_protocol.h **** 
 516:../libraries/Storage/sd_mmc_protocol.h ****   //! \name SDIO Functions
 517:../libraries/Storage/sd_mmc_protocol.h ****   //! @{
 518:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CIA  0 /**< SDIO Function 0 (CIA) */
 519:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_FN0  0 /**< SDIO Function 0 */
 520:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_FN1  1 /**< SDIO Function 1 */
 521:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_FN2  2 /**< SDIO Function 2 */
 522:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_FN3  3 /**< SDIO Function 3 */
 523:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_FN4  4 /**< SDIO Function 4 */
 524:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_FN5  5 /**< SDIO Function 5 */
 525:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_FN6  6 /**< SDIO Function 6 */
 526:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_FN7  7 /**< SDIO Function 7 */
 527:../libraries/Storage/sd_mmc_protocol.h ****   //! @}
 528:../libraries/Storage/sd_mmc_protocol.h **** 
 529:../libraries/Storage/sd_mmc_protocol.h ****   //! \name SDIO Card Common Control Registers (CCCR)
 530:../libraries/Storage/sd_mmc_protocol.h ****   //! @{
 531:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CCCR_SDIO_REV    0x00         /**< CCCR/SDIO revision (RO) */
 532:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_CCCR_REV_1_00    (0x0lu << 0)  /**< CCCR/FBR Version 1.00 */
 533:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_CCCR_REV_1_10    (0x1lu << 0)  /**< CCCR/FBR Version 1.10 */
 534:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_CCCR_REV_2_00    (0x2lu << 0)  /**< CCCR/FBR Version 2.00 */
 535:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_CCCR_REV_3_00    (0x3lu << 0)  /**< CCCR/FBR Version 3.00 */
 536:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_SDIO_REV_1_00    (0x0lu << 4)  /**< SDIO Spec 1.00 */
 537:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_SDIO_REV_1_10    (0x1lu << 4)  /**< SDIO Spec 1.10 */
 538:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_SDIO_REV_1_20    (0x2lu << 4)  /**< SDIO Spec 1.20(unreleased) */
 539:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_SDIO_REV_2_00    (0x3lu << 4)  /**< SDIO Spec Version 2.00 */
 540:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_SDIO_REV_3_00    (0x4lu << 4)  /**< SDIO Spec Version 3.00 */
 541:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CCCR_SD_REV      0x01         /**< SD Spec Revision (RO) */
 542:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_SD_REV_1_01      (0x0lu << 0)  /**< SD 1.01 (Mar 2000) */
 543:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_SD_REV_1_10      (0x1lu << 0)  /**< SD 1.10 (Oct 2004) */
 544:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_SD_REV_2_00      (0x2lu << 0)  /**< SD 2.00 (May 2006) */
 545:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_SD_REV_3_00      (0x3lu << 0)  /**< SD 3.00 */
 546:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CCCR_IOE         0x02         /**< I/O Enable (R/W) */
 547:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_IOE_FN1          (0x1lu << 1)  /**< Function 1 Enable/Disable */
 548:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_IOE_FN2          (0x1lu << 2)  /**< Function 2 Enable/Disable */
 549:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_IOE_FN3          (0x1lu << 3)  /**< Function 3 Enable/Disable */
 550:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_IOE_FN4          (0x1lu << 4)  /**< Function 4 Enable/Disable */
 551:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_IOE_FN5          (0x1lu << 5)  /**< Function 5 Enable/Disable */
 552:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_IOE_FN6          (0x1lu << 6)  /**< Function 6 Enable/Disable */
 553:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_IOE_FN7          (0x1lu << 7)  /**< Function 7 Enable/Disable */
 554:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CCCR_IOR         0x03         /**< I/O Ready (RO) */
 555:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_IOR_FN1          (0x1lu << 1)  /**< Function 1 ready */
 556:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_IOR_FN2          (0x1lu << 2)  /**< Function 2 ready */
 557:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_IOR_FN3          (0x1lu << 3)  /**< Function 3 ready */
 558:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_IOR_FN4          (0x1lu << 4)  /**< Function 4 ready */
 559:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_IOR_FN5          (0x1lu << 5)  /**< Function 5 ready */
 560:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_IOR_FN6          (0x1lu << 6)  /**< Function 6 ready */
 561:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_IOR_FN7          (0x1lu << 7)  /**< Function 7 ready */
 562:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CCCR_IEN         0x04         /**< Int Enable */
 563:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_IENM             (0x1lu << 0)  /**< Int Enable Master (R/W) */
 564:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_IEN_FN1          (0x1lu << 1)  /**< Function 1 Int Enable */
ARM GAS  /tmp/ccTIydBQ.s 			page 34


 565:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_IEN_FN2          (0x1lu << 2)  /**< Function 2 Int Enable */
 566:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_IEN_FN3          (0x1lu << 3)  /**< Function 3 Int Enable */
 567:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_IEN_FN4          (0x1lu << 4)  /**< Function 4 Int Enable */
 568:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_IEN_FN5          (0x1lu << 5)  /**< Function 5 Int Enable */
 569:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_IEN_FN6          (0x1lu << 6)  /**< Function 6 Int Enable */
 570:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_IEN_FN7          (0x1lu << 7)  /**< Function 7 Int Enable */
 571:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CCCR_INT         0x05         /**< Int Pending */
 572:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_INT_FN1          (0x1lu << 1)  /**< Function 1 Int pending */
 573:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_INT_FN2          (0x1lu << 2)  /**< Function 2 Int pending */
 574:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_INT_FN3          (0x1lu << 3)  /**< Function 3 Int pending */
 575:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_INT_FN4          (0x1lu << 4)  /**< Function 4 Int pending */
 576:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_INT_FN5          (0x1lu << 5)  /**< Function 5 Int pending */
 577:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_INT_FN6          (0x1lu << 6)  /**< Function 6 Int pending */
 578:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_INT_FN7          (0x1lu << 7)  /**< Function 7 Int pending */
 579:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CCCR_IOA         0x06         /**< I/O Abort */
 580:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_AS_FN1           (0x1lu << 0)  /**< Abort function 1 IO */
 581:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_AS_FN2           (0x2lu << 0)  /**< Abort function 2 IO */
 582:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_AS_FN3           (0x3lu << 0)  /**< Abort function 3 IO */
 583:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_AS_FN4           (0x4lu << 0)  /**< Abort function 4 IO */
 584:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_AS_FN5           (0x5lu << 0)  /**< Abort function 5 IO */
 585:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_AS_FN6           (0x6lu << 0)  /**< Abort function 6 IO */
 586:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_AS_FN7           (0x7lu << 0)  /**< Abort function 7 IO */
 587:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_RES              (0x1lu << 3)  /**< IO CARD RESET (WO) */
 588:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CCCR_BUS_CTRL    0x07         /**< Bus Interface Control */
 589:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_BUSWIDTH_1B      (0x0lu << 0)  /**< 1-bit data bus */
 590:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_BUSWIDTH_4B      (0x2lu << 0)  /**< 4-bit data bus */
 591:../libraries/Storage/sd_mmc_protocol.h **** /** Enable Continuous SPI interrupt (R/W) */
 592:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_BUS_ECSI         (0x1lu << 5)
 593:../libraries/Storage/sd_mmc_protocol.h **** /** Support Continuous SPI interrupt (RO) */
 594:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_BUS_SCSI         (0x1lu << 6)
 595:../libraries/Storage/sd_mmc_protocol.h **** /** Connect(0)/Disconnect(1) pull-up on CD/DAT[3] (R/W) */
 596:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_BUS_CD_DISABLE   (0x1lu << 7)
 597:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CCCR_CAP         0x08         /**< Card Capability */
 598:../libraries/Storage/sd_mmc_protocol.h **** /** Support Direct Commands during data transfer (RO) */
 599:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_CAP_SDC          (0x1lu << 0)
 600:../libraries/Storage/sd_mmc_protocol.h **** /** Support Multi-Block (RO) */
 601:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_CAP_SMB          (0x1lu << 1)
 602:../libraries/Storage/sd_mmc_protocol.h **** /** Support Read Wait (RO) */
 603:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_CAP_SRW          (0x1lu << 2)
 604:../libraries/Storage/sd_mmc_protocol.h **** /** Support Suspend/Resume (RO) */
 605:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_CAP_SBS          (0x1lu << 3)
 606:../libraries/Storage/sd_mmc_protocol.h **** /** Support interrupt between blocks of data in 4-bit SD mode (RO) */
 607:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_CAP_S4MI         (0x1lu << 4)
 608:../libraries/Storage/sd_mmc_protocol.h **** /** Enable interrupt between blocks of data in 4-bit SD mode (R/W) */
 609:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_CAP_E4MI         (0x1lu << 5)
 610:../libraries/Storage/sd_mmc_protocol.h **** /** Low-Speed Card (RO) */
 611:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_CAP_LSC          (0x1lu << 6)
 612:../libraries/Storage/sd_mmc_protocol.h **** /** 4-bit support for Low-Speed Card (RO) */
 613:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_CAP_4BLS         (0x1lu << 7)
 614:../libraries/Storage/sd_mmc_protocol.h **** /** Pointer to CIS (3B, LSB first) */
 615:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CCCR_CIS_PTR     0x09
 616:../libraries/Storage/sd_mmc_protocol.h **** /** Bus Suspend */
 617:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CCCR_BUS_SUSPEND 0x0C
 618:../libraries/Storage/sd_mmc_protocol.h **** /** Bus Status (transfer on DAT[x] lines) (RO) */
 619:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_BS               (0x1lu << 0)
 620:../libraries/Storage/sd_mmc_protocol.h **** /** Bus Release Request/Status (R/W) */
 621:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_BR               (0x1lu << 1)
ARM GAS  /tmp/ccTIydBQ.s 			page 35


 622:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CCCR_FUN_SEL     0x0D         /**< Function select */
 623:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_DF               (0x1lu << 7)  /**< Resume Data Flag (RO) */
 624:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_FS_CIA           (0x0lu << 0)  /**< Select CIA (function 0) */
 625:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_FS_FN1           (0x1lu << 0)  /**< Select Function 1 */
 626:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_FS_FN2           (0x2lu << 0)  /**< Select Function 2 */
 627:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_FS_FN3           (0x3lu << 0)  /**< Select Function 3 */
 628:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_FS_FN4           (0x4lu << 0)  /**< Select Function 4 */
 629:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_FS_FN5           (0x5lu << 0)  /**< Select Function 5 */
 630:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_FS_FN6           (0x6lu << 0)  /**< Select Function 6 */
 631:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_FS_FN7           (0x7lu << 0)  /**< Select Function 7 */
 632:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_FS_MEM           (0x8lu << 0)  /**< Select memory in combo card */
 633:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CCCR_EXEC        0x0E         /**< Exec Flags (RO) */
 634:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_EXM              (0x1lu << 0)  /**< Executing status of memory */
 635:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_EX_FN1           (0x1lu << 1)  /**< Executing status of func 1 */
 636:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_EX_FN2           (0x1lu << 2)  /**< Executing status of func 2 */
 637:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_EX_FN3           (0x1lu << 3)  /**< Executing status of func 3 */
 638:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_EX_FN4           (0x1lu << 4)  /**< Executing status of func 4 */
 639:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_EX_FN5           (0x1lu << 5)  /**< Executing status of func 5 */
 640:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_EX_FN6           (0x1lu << 6)  /**< Executing status of func 6 */
 641:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_EX_FN7           (0x1lu << 7)  /**< Executing status of func 7 */
 642:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CCCR_READY       0x0F         /**< Ready Flags (RO) */
 643:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_RFM              (0x1lu << 0)  /**< Ready Flag for memory */
 644:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_RF_FN1           (0x1lu << 1)  /**< Ready Flag for function 1 */
 645:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_RF_FN2           (0x1lu << 2)  /**< Ready Flag for function 2 */
 646:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_RF_FN3           (0x1lu << 3)  /**< Ready Flag for function 3 */
 647:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_RF_FN4           (0x1lu << 4)  /**< Ready Flag for function 4 */
 648:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_RF_FN5           (0x1lu << 5)  /**< Ready Flag for function 5 */
 649:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_RF_FN6           (0x1lu << 6)  /**< Ready Flag for function 6 */
 650:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_RF_FN7           (0x1lu << 7)  /**< Ready Flag for function 7 */
 651:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CCCR_FN0_BLKSIZ  0x10  /**< FN0 Block Size (2B, LSB first) (R/W) */
 652:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CCCR_POWER       0x12         /**< Power Control */
 653:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_POWER_SMPC       (0x1lu << 0)  /**< Support Master Power Control*/
 654:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_POWER_EMPC       (0x1lu << 1)  /**< Enable Master Power Control */
 655:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CCCR_HS          0x13         /**< High-Speed */
 656:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_SHS              (0x1lu << 0)  /**< Support High-Speed (RO) */
 657:../libraries/Storage/sd_mmc_protocol.h **** #define   SDIO_EHS              (0x1lu << 1)  /**< Enable High-Speed (R/W) */
 658:../libraries/Storage/sd_mmc_protocol.h ****   //! @}
 659:../libraries/Storage/sd_mmc_protocol.h **** 
 660:../libraries/Storage/sd_mmc_protocol.h ****   //! \name SDIO Card Metaformat
 661:../libraries/Storage/sd_mmc_protocol.h ****   //! @{
 662:../libraries/Storage/sd_mmc_protocol.h **** /** Null tuple (PCMCIA 3.1.9) */
 663:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CISTPL_NULL     0x00
 664:../libraries/Storage/sd_mmc_protocol.h **** /** Device tuple (PCMCIA 3.2.2) */
 665:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CISTPL_DEVICE   0x01
 666:../libraries/Storage/sd_mmc_protocol.h **** /** Checksum control (PCMCIA 3.1.1) */
 667:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CISTPL_CHECKSUM 0x10
 668:../libraries/Storage/sd_mmc_protocol.h **** /** Level 1 version (PCMCIA 3.2.10) */
 669:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CISTPL_VERS_1   0x15
 670:../libraries/Storage/sd_mmc_protocol.h **** /** Alternate Language String (PCMCIA 3.2.1) */
 671:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CISTPL_ALTSTR   0x16
 672:../libraries/Storage/sd_mmc_protocol.h **** /** Manufacturer Identification String (PCMCIA 3.2.9) */
 673:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CISTPL_MANFID   0x20
 674:../libraries/Storage/sd_mmc_protocol.h **** /** Function Identification (PCMCIA 3.2.7) */
 675:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CISTPL_FUNCID   0x21
 676:../libraries/Storage/sd_mmc_protocol.h **** /** Function Extensions (PCMCIA 3.2.6) */
 677:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CISTPL_FUNCE    0x22
 678:../libraries/Storage/sd_mmc_protocol.h **** /** Additional information for SDIO (PCMCIA 6.1.2) */
ARM GAS  /tmp/ccTIydBQ.s 			page 36


 679:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CISTPL_SDIO_STD 0x91
 680:../libraries/Storage/sd_mmc_protocol.h **** /** Reserved for future SDIO (PCMCIA 6.1.3) */
 681:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CISTPL_SDIO_EXT 0x92
 682:../libraries/Storage/sd_mmc_protocol.h **** /** The End-of-chain Tuple (PCMCIA 3.1.2) */
 683:../libraries/Storage/sd_mmc_protocol.h **** #define SDIO_CISTPL_END      0xFF
 684:../libraries/Storage/sd_mmc_protocol.h ****   //! @}
 685:../libraries/Storage/sd_mmc_protocol.h **** 
 686:../libraries/Storage/sd_mmc_protocol.h **** //! @}
 687:../libraries/Storage/sd_mmc_protocol.h **** 
 688:../libraries/Storage/sd_mmc_protocol.h **** //! \name CSD, OCR, SCR, Switch status, extend CSD definitions
 689:../libraries/Storage/sd_mmc_protocol.h **** //! @{
 690:../libraries/Storage/sd_mmc_protocol.h **** 
 691:../libraries/Storage/sd_mmc_protocol.h **** /**
 692:../libraries/Storage/sd_mmc_protocol.h ****  * \brief Macro function to extract a bits field from a large SD MMC register
 693:../libraries/Storage/sd_mmc_protocol.h ****  * Used by : CSD, SCR, Switch status
 694:../libraries/Storage/sd_mmc_protocol.h ****  */
 695:../libraries/Storage/sd_mmc_protocol.h **** static inline uint32_t SDMMC_UNSTUFF_BITS(uint8_t *reg, uint16_t reg_size,
 696:../libraries/Storage/sd_mmc_protocol.h **** 		uint16_t pos, uint8_t size)
 697:../libraries/Storage/sd_mmc_protocol.h **** {
 698:../libraries/Storage/sd_mmc_protocol.h **** 	uint32_t value;
 699:../libraries/Storage/sd_mmc_protocol.h **** 	value = reg[((reg_size - pos + 7) / 8) - 1] >> (pos % 8);
 110              		.loc 3 699 0
 111 0006 537D     		ldrb	r3, [r2, #21]	@ zero_extendqisi2
 700:../libraries/Storage/sd_mmc_protocol.h **** 	if (((pos % 8) + size) > 8) {
 701:../libraries/Storage/sd_mmc_protocol.h **** 		value |= (uint32_t)reg[((reg_size - pos + 7) / 8) - 2] << (8 - (pos % 8));
 702:../libraries/Storage/sd_mmc_protocol.h **** 	}
 703:../libraries/Storage/sd_mmc_protocol.h **** 	if (((pos % 8) + size) > 16) {
 704:../libraries/Storage/sd_mmc_protocol.h **** 		value |= (uint32_t)reg[((reg_size - pos + 7) / 8) - 3] << (16 - (pos % 8));
 705:../libraries/Storage/sd_mmc_protocol.h **** 	}
 706:../libraries/Storage/sd_mmc_protocol.h **** 	if (((pos % 8) + size) > 16) {
 707:../libraries/Storage/sd_mmc_protocol.h **** 		value |= (uint32_t)reg[((reg_size - pos + 7) / 8) - 3] << (16 - (pos % 8));
 708:../libraries/Storage/sd_mmc_protocol.h **** 	}
 709:../libraries/Storage/sd_mmc_protocol.h **** 	value &=  ((uint32_t)1 << size) - 1;
 112              		.loc 3 709 0
 113 0008 C3F38303 		ubfx	r3, r3, #2, #4
 114              	.LBE119:
 115              	.LBE118:
 116              		.loc 2 1056 0
 117 000c 013B     		subs	r3, r3, #1
 118 000e 032B     		cmp	r3, #3
 119 0010 40D8     		bhi	.L5
 120 0012 DFE803F0 		tbb	[pc, r3]
 121              	.L7:
 122 0016 3C       		.byte	(.L6-.L7)/2
 123 0017 39       		.byte	(.L8-.L7)/2
 124 0018 36       		.byte	(.L9-.L7)/2
 125 0019 02       		.byte	(.L10-.L7)/2
 126              		.p2align 1
 127              	.L10:
1057:../libraries/Storage/sd_mmc.c **** 	default:
1058:../libraries/Storage/sd_mmc.c **** 	case 0:
1059:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->version = CARD_VER_MMC_1_2;
1060:../libraries/Storage/sd_mmc.c **** 		break;
1061:../libraries/Storage/sd_mmc.c **** 
1062:../libraries/Storage/sd_mmc.c **** 	case 1:
1063:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->version = CARD_VER_MMC_1_4;
1064:../libraries/Storage/sd_mmc.c **** 		break;
ARM GAS  /tmp/ccTIydBQ.s 			page 37


1065:../libraries/Storage/sd_mmc.c **** 
1066:../libraries/Storage/sd_mmc.c **** 	case 2:
1067:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->version = CARD_VER_MMC_2_2;
1068:../libraries/Storage/sd_mmc.c **** 		break;
1069:../libraries/Storage/sd_mmc.c **** 
1070:../libraries/Storage/sd_mmc.c **** 	case 3:
1071:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->version = CARD_VER_MMC_3;
1072:../libraries/Storage/sd_mmc.c **** 		break;
1073:../libraries/Storage/sd_mmc.c **** 
1074:../libraries/Storage/sd_mmc.c **** 	case 4:
1075:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->version = CARD_VER_MMC_4;
 128              		.loc 2 1075 0
 129 001a 4023     		movs	r3, #64
 130 001c 9374     		strb	r3, [r2, #18]
 131              	.L11:
 132              	.LVL3:
 133              	.LBB120:
 134              	.LBB121:
 704:../libraries/Storage/sd_mmc_protocol.h **** 	}
 135              		.loc 3 704 0
 136 001e D37E     		ldrb	r3, [r2, #27]	@ zero_extendqisi2
 137              	.LBE121:
 138              	.LBE120:
1076:../libraries/Storage/sd_mmc.c **** 		break;
1077:../libraries/Storage/sd_mmc.c **** 	}
1078:../libraries/Storage/sd_mmc.c **** 
1079:../libraries/Storage/sd_mmc.c **** 	// Get MMC memory max transfer speed in Hz.
1080:../libraries/Storage/sd_mmc.c **** 	tran_speed = CSD_TRAN_SPEED(sd_mmc_card->csd);
1081:../libraries/Storage/sd_mmc.c **** 	unit = sd_mmc_trans_units[tran_speed & 0x7];
1082:../libraries/Storage/sd_mmc.c **** 	mul = mmc_trans_multipliers[(tran_speed >> 3) & 0xF];
1083:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->clock = unit * mul * 1000;
 139              		.loc 2 1083 0
 140 0020 4FF47A71 		mov	r1, #1000
 141              	.LBB126:
 142              	.LBB127:
 699:../libraries/Storage/sd_mmc_protocol.h **** 	if (((pos % 8) + size) > 8) {
 143              		.loc 3 699 0
 144 0024 107E     		ldrb	r0, [r2, #24]	@ zero_extendqisi2
 145              	.LVL4:
 146              	.LBE127:
 147              	.LBE126:
 148              	.LBB128:
 149              	.LBB122:
 150              		.loc 3 709 0
 151 0026 40F6FF74 		movw	r4, #4095
 701:../libraries/Storage/sd_mmc_protocol.h **** 	}
 152              		.loc 3 701 0
 153 002a 157F     		ldrb	r5, [r2, #28]	@ zero_extendqisi2
 704:../libraries/Storage/sd_mmc_protocol.h **** 	}
 154              		.loc 3 704 0
 155 002c 9B02     		lsls	r3, r3, #10
 156              	.LBE122:
 157              	.LBE128:
1081:../libraries/Storage/sd_mmc.c **** 	mul = mmc_trans_multipliers[(tran_speed >> 3) & 0xF];
 158              		.loc 2 1081 0
 159 002e 00F00707 		and	r7, r0, #7
 160 0032 1B4E     		ldr	r6, .L15+4
ARM GAS  /tmp/ccTIydBQ.s 			page 38


 161              	.LBB129:
 162              	.LBB123:
 707:../libraries/Storage/sd_mmc_protocol.h **** 	}
 163              		.loc 3 707 0
 164 0034 43EA8503 		orr	r3, r3, r5, lsl #2
 699:../libraries/Storage/sd_mmc_protocol.h **** 	if (((pos % 8) + size) > 8) {
 165              		.loc 3 699 0
 166 0038 557F     		ldrb	r5, [r2, #29]	@ zero_extendqisi2
 167              	.LBE123:
 168              	.LBE129:
 169              		.loc 2 1083 0
 170 003a 56F82770 		ldr	r7, [r6, r7, lsl #2]
1082:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->clock = unit * mul * 1000;
 171              		.loc 2 1082 0
 172 003e C0F3C300 		ubfx	r0, r0, #3, #4
 173              	.LVL5:
 174 0042 184E     		ldr	r6, .L15+8
 175              	.LBB130:
 176              	.LBB124:
 707:../libraries/Storage/sd_mmc_protocol.h **** 	}
 177              		.loc 3 707 0
 178 0044 43EA9513 		orr	r3, r3, r5, lsr #6
 179              	.LBE124:
 180              	.LBE130:
 181              		.loc 2 1083 0
 182 0048 01FB07F1 		mul	r1, r1, r7
 183 004c 56F82000 		ldr	r0, [r6, r0, lsl #2]
 184              	.LBB131:
 185              	.LBB125:
 186              		.loc 3 709 0
 187 0050 C3F30B03 		ubfx	r3, r3, #0, #12
 188              	.LBE125:
 189              	.LBE131:
 190              		.loc 2 1083 0
 191 0054 01FB00F1 		mul	r1, r1, r0
1084:../libraries/Storage/sd_mmc.c **** 
1085:../libraries/Storage/sd_mmc.c **** 	/*
1086:../libraries/Storage/sd_mmc.c **** 	 * Get card capacity.
1087:../libraries/Storage/sd_mmc.c **** 	 * ----------------------------------------------------
1088:../libraries/Storage/sd_mmc.c **** 	 * For normal SD/MMC card:
1089:../libraries/Storage/sd_mmc.c **** 	 * memory capacity = BLOCKNR * BLOCK_LEN
1090:../libraries/Storage/sd_mmc.c **** 	 * Where
1091:../libraries/Storage/sd_mmc.c **** 	 * BLOCKNR = (C_SIZE+1) * MULT
1092:../libraries/Storage/sd_mmc.c **** 	 * MULT = 2 ^ (C_SIZE_MULT+2)       (C_SIZE_MULT < 8)
1093:../libraries/Storage/sd_mmc.c **** 	 * BLOCK_LEN = 2 ^ READ_BL_LEN      (READ_BL_LEN < 12)
1094:../libraries/Storage/sd_mmc.c **** 	 * ----------------------------------------------------
1095:../libraries/Storage/sd_mmc.c **** 	 * For high capacity SD/MMC card:
1096:../libraries/Storage/sd_mmc.c **** 	 * memory capacity = SEC_COUNT * 512 byte
1097:../libraries/Storage/sd_mmc.c **** 	 */
1098:../libraries/Storage/sd_mmc.c **** 	if (MMC_CSD_C_SIZE(sd_mmc_card->csd) != 0xFFF) {
 192              		.loc 2 1098 0
 193 0058 A342     		cmp	r3, r4
1083:../libraries/Storage/sd_mmc.c **** 
 194              		.loc 2 1083 0
 195 005a 5160     		str	r1, [r2, #4]
 196              		.loc 2 1098 0
 197 005c 0FD0     		beq	.L4
ARM GAS  /tmp/ccTIydBQ.s 			page 39


 198              	.LVL6:
 199              	.LBB132:
 200              	.LBB133:
 201              	.LBB134:
 701:../libraries/Storage/sd_mmc_protocol.h **** 	}
 202              		.loc 3 701 0
 203 005e 917F     		ldrb	r1, [r2, #30]	@ zero_extendqisi2
 204              	.LBE134:
 205              	.LBE133:
1099:../libraries/Storage/sd_mmc.c **** 		uint32_t blocknr = ((MMC_CSD_C_SIZE(sd_mmc_card->csd) + 1) *
 206              		.loc 2 1099 0
 207 0060 0133     		adds	r3, r3, #1
 208              	.LBB138:
 209              	.LBB135:
 699:../libraries/Storage/sd_mmc_protocol.h **** 	if (((pos % 8) + size) > 8) {
 210              		.loc 3 699 0
 211 0062 D47F     		ldrb	r4, [r2, #31]	@ zero_extendqisi2
 212              	.LVL7:
 701:../libraries/Storage/sd_mmc_protocol.h **** 	}
 213              		.loc 3 701 0
 214 0064 4900     		lsls	r1, r1, #1
 215              	.LBE135:
 216              	.LBE138:
 217              	.LBB139:
 218              	.LBB140:
 219              		.loc 3 709 0
 220 0066 907E     		ldrb	r0, [r2, #26]	@ zero_extendqisi2
 221              	.LBE140:
 222              	.LBE139:
 223              	.LBB142:
 224              	.LBB136:
 701:../libraries/Storage/sd_mmc_protocol.h **** 	}
 225              		.loc 3 701 0
 226 0068 41EAD411 		orr	r1, r1, r4, lsr #7
 227              	.LVL8:
 228              	.LBE136:
 229              	.LBE142:
 230              	.LBB143:
 231              	.LBB141:
 232              		.loc 3 709 0
 233 006c 00F00F00 		and	r0, r0, #15
 234              	.LBE141:
 235              	.LBE143:
 236              	.LBB144:
 237              	.LBB137:
 238 0070 01F00701 		and	r1, r1, #7
 239              	.LVL9:
 240              	.LBE137:
 241              	.LBE144:
1100:../libraries/Storage/sd_mmc.c **** 			(1 << (MMC_CSD_C_SIZE_MULT(sd_mmc_card->csd) + 2)));
 242              		.loc 2 1100 0
 243 0074 0231     		adds	r1, r1, #2
1099:../libraries/Storage/sd_mmc.c **** 		uint32_t blocknr = ((MMC_CSD_C_SIZE(sd_mmc_card->csd) + 1) *
 244              		.loc 2 1099 0
 245 0076 8B40     		lsls	r3, r3, r1
 246              	.LVL10:
1101:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->capacity = blocknr *
ARM GAS  /tmp/ccTIydBQ.s 			page 40


 247              		.loc 2 1101 0
 248 0078 8340     		lsls	r3, r3, r0
1102:../libraries/Storage/sd_mmc.c **** 			(1 << MMC_CSD_READ_BL_LEN(sd_mmc_card->csd)) / 1024;
 249              		.loc 2 1102 0
 250 007a 9B0A     		lsrs	r3, r3, #10
1101:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->capacity = blocknr *
 251              		.loc 2 1101 0
 252 007c 9360     		str	r3, [r2, #8]
 253              	.LVL11:
 254              	.L4:
 255              	.LBE132:
1103:../libraries/Storage/sd_mmc.c **** 	}
1104:../libraries/Storage/sd_mmc.c **** }
 256              		.loc 2 1104 0
 257 007e F0BC     		pop	{r4, r5, r6, r7}
 258              		.cfi_remember_state
 259              		.cfi_restore 7
 260              		.cfi_restore 6
 261              		.cfi_restore 5
 262              		.cfi_restore 4
 263              		.cfi_def_cfa_offset 0
 264 0080 7047     		bx	lr
 265              	.LVL12:
 266              	.L9:
 267              		.cfi_restore_state
1071:../libraries/Storage/sd_mmc.c **** 		break;
 268              		.loc 2 1071 0
 269 0082 3023     		movs	r3, #48
 270 0084 9374     		strb	r3, [r2, #18]
1072:../libraries/Storage/sd_mmc.c **** 
 271              		.loc 2 1072 0
 272 0086 CAE7     		b	.L11
 273              	.L8:
1067:../libraries/Storage/sd_mmc.c **** 		break;
 274              		.loc 2 1067 0
 275 0088 2223     		movs	r3, #34
 276 008a 9374     		strb	r3, [r2, #18]
1068:../libraries/Storage/sd_mmc.c **** 
 277              		.loc 2 1068 0
 278 008c C7E7     		b	.L11
 279              	.L6:
1063:../libraries/Storage/sd_mmc.c **** 		break;
 280              		.loc 2 1063 0
 281 008e 1423     		movs	r3, #20
 282 0090 9374     		strb	r3, [r2, #18]
1064:../libraries/Storage/sd_mmc.c **** 
 283              		.loc 2 1064 0
 284 0092 C4E7     		b	.L11
 285              	.L5:
1059:../libraries/Storage/sd_mmc.c **** 		break;
 286              		.loc 2 1059 0
 287 0094 1223     		movs	r3, #18
 288 0096 9374     		strb	r3, [r2, #18]
1060:../libraries/Storage/sd_mmc.c **** 
 289              		.loc 2 1060 0
 290 0098 C1E7     		b	.L11
 291              	.L16:
ARM GAS  /tmp/ccTIydBQ.s 			page 41


 292 009a 00BF     		.align	2
 293              	.L15:
 294 009c 00000000 		.word	.LANCHOR0
 295 00a0 00000000 		.word	.LANCHOR2
 296 00a4 00000000 		.word	.LANCHOR1
 297              		.cfi_endproc
 298              	.LFE246:
 299              		.size	mmc_decode_csd, .-mmc_decode_csd
 300              		.section	.text.sd_decode_csd,"ax",%progbits
 301              		.align	1
 302              		.p2align 2,,3
 303              		.syntax unified
 304              		.thumb
 305              		.thumb_func
 306              		.fpu fpv5-d16
 307              		.type	sd_decode_csd, %function
 308              	sd_decode_csd:
 309              	.LFB247:
1105:../libraries/Storage/sd_mmc.c **** 
1106:../libraries/Storage/sd_mmc.c **** /**
1107:../libraries/Storage/sd_mmc.c ****  * \brief Decodes SD CSD register
1108:../libraries/Storage/sd_mmc.c ****  */
1109:../libraries/Storage/sd_mmc.c **** static void sd_decode_csd(void)
1110:../libraries/Storage/sd_mmc.c **** {
 310              		.loc 2 1110 0
 311              		.cfi_startproc
 312              		@ args = 0, pretend = 0, frame = 0
 313              		@ frame_needed = 0, uses_anonymous_args = 0
 314              		@ link register save eliminated.
1111:../libraries/Storage/sd_mmc.c ****  	uint32_t unit;
1112:../libraries/Storage/sd_mmc.c **** 	uint32_t mul;
1113:../libraries/Storage/sd_mmc.c **** 	uint32_t tran_speed;
1114:../libraries/Storage/sd_mmc.c **** 
1115:../libraries/Storage/sd_mmc.c **** 	// Get SD memory maximum transfer speed in Hz.
1116:../libraries/Storage/sd_mmc.c **** 	tran_speed = CSD_TRAN_SPEED(sd_mmc_card->csd);
 315              		.loc 2 1116 0
 316 0000 204A     		ldr	r2, .L22
1117:../libraries/Storage/sd_mmc.c **** 	unit = sd_mmc_trans_units[tran_speed & 0x7];
1118:../libraries/Storage/sd_mmc.c **** 	mul = sd_trans_multipliers[(tran_speed >> 3) & 0xF];
1119:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->clock = unit * mul * 1000;
 317              		.loc 2 1119 0
 318 0002 4FF47A73 		mov	r3, #1000
1116:../libraries/Storage/sd_mmc.c **** 	unit = sd_mmc_trans_units[tran_speed & 0x7];
 319              		.loc 2 1116 0
 320 0006 1268     		ldr	r2, [r2]
 321              	.LVL13:
1110:../libraries/Storage/sd_mmc.c ****  	uint32_t unit;
 322              		.loc 2 1110 0
 323 0008 70B4     		push	{r4, r5, r6}
 324              		.cfi_def_cfa_offset 12
 325              		.cfi_offset 4, -12
 326              		.cfi_offset 5, -8
 327              		.cfi_offset 6, -4
 328              	.LBB145:
 329              	.LBB146:
 699:../libraries/Storage/sd_mmc_protocol.h **** 	if (((pos % 8) + size) > 8) {
 330              		.loc 3 699 0
ARM GAS  /tmp/ccTIydBQ.s 			page 42


 331 000a 117E     		ldrb	r1, [r2, #24]	@ zero_extendqisi2
 332              	.LVL14:
 333              	.LBE146:
 334              	.LBE145:
1117:../libraries/Storage/sd_mmc.c **** 	mul = sd_trans_multipliers[(tran_speed >> 3) & 0xF];
 335              		.loc 2 1117 0
 336 000c 1E4C     		ldr	r4, .L22+4
 337 000e 01F00706 		and	r6, r1, #7
1118:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->clock = unit * mul * 1000;
 338              		.loc 2 1118 0
 339 0012 1E4D     		ldr	r5, .L22+8
 340 0014 C1F3C301 		ubfx	r1, r1, #3, #4
 341              	.LVL15:
1120:../libraries/Storage/sd_mmc.c **** 
1121:../libraries/Storage/sd_mmc.c **** 	/*
1122:../libraries/Storage/sd_mmc.c **** 	 * Get card capacity.
1123:../libraries/Storage/sd_mmc.c **** 	 * ----------------------------------------------------
1124:../libraries/Storage/sd_mmc.c **** 	 * For normal SD/MMC card:
1125:../libraries/Storage/sd_mmc.c **** 	 * memory capacity = BLOCKNR * BLOCK_LEN
1126:../libraries/Storage/sd_mmc.c **** 	 * Where
1127:../libraries/Storage/sd_mmc.c **** 	 * BLOCKNR = (C_SIZE+1) * MULT
1128:../libraries/Storage/sd_mmc.c **** 	 * MULT = 2 ^ (C_SIZE_MULT+2)       (C_SIZE_MULT < 8)
1129:../libraries/Storage/sd_mmc.c **** 	 * BLOCK_LEN = 2 ^ READ_BL_LEN      (READ_BL_LEN < 12)
1130:../libraries/Storage/sd_mmc.c **** 	 * ----------------------------------------------------
1131:../libraries/Storage/sd_mmc.c **** 	 * For high capacity SD card:
1132:../libraries/Storage/sd_mmc.c **** 	 * memory capacity = (C_SIZE+1) * 512K byte
1133:../libraries/Storage/sd_mmc.c **** 	 */
1134:../libraries/Storage/sd_mmc.c **** 	if (CSD_STRUCTURE_VERSION(sd_mmc_card->csd) >= SD_CSD_VER_2_0) {
 342              		.loc 2 1134 0
 343 0018 507D     		ldrb	r0, [r2, #21]	@ zero_extendqisi2
1119:../libraries/Storage/sd_mmc.c **** 
 344              		.loc 2 1119 0
 345 001a 54F82640 		ldr	r4, [r4, r6, lsl #2]
 346 001e 55F82110 		ldr	r1, [r5, r1, lsl #2]
 347 0022 03FB04F3 		mul	r3, r3, r4
 348 0026 03FB01F3 		mul	r3, r3, r1
 349 002a 5360     		str	r3, [r2, #4]
 350              		.loc 2 1134 0
 351 002c 8309     		lsrs	r3, r0, #6
 352 002e 1BD1     		bne	.L21
 353              	.LVL16:
 354              	.LBB147:
 355              	.LBB148:
 356              	.LBB149:
 704:../libraries/Storage/sd_mmc_protocol.h **** 	}
 357              		.loc 3 704 0
 358 0030 D37E     		ldrb	r3, [r2, #27]	@ zero_extendqisi2
 701:../libraries/Storage/sd_mmc_protocol.h **** 	}
 359              		.loc 3 701 0
 360 0032 107F     		ldrb	r0, [r2, #28]	@ zero_extendqisi2
 704:../libraries/Storage/sd_mmc_protocol.h **** 	}
 361              		.loc 3 704 0
 362 0034 9B02     		lsls	r3, r3, #10
 363              	.LBE149:
 364              	.LBE148:
 365              	.LBB153:
 366              	.LBB154:
ARM GAS  /tmp/ccTIydBQ.s 			page 43


 701:../libraries/Storage/sd_mmc_protocol.h **** 	}
 367              		.loc 3 701 0
 368 0036 917F     		ldrb	r1, [r2, #30]	@ zero_extendqisi2
 369              	.LBE154:
 370              	.LBE153:
 371              	.LBB158:
 372              	.LBB150:
 699:../libraries/Storage/sd_mmc_protocol.h **** 	if (((pos % 8) + size) > 8) {
 373              		.loc 3 699 0
 374 0038 557F     		ldrb	r5, [r2, #29]	@ zero_extendqisi2
 375              	.LVL17:
 707:../libraries/Storage/sd_mmc_protocol.h **** 	}
 376              		.loc 3 707 0
 377 003a 43EA8003 		orr	r3, r3, r0, lsl #2
 378              	.LVL18:
 379              	.LBE150:
 380              	.LBE158:
 381              	.LBB159:
 382              	.LBB155:
 699:../libraries/Storage/sd_mmc_protocol.h **** 	if (((pos % 8) + size) > 8) {
 383              		.loc 3 699 0
 384 003e D47F     		ldrb	r4, [r2, #31]	@ zero_extendqisi2
 701:../libraries/Storage/sd_mmc_protocol.h **** 	}
 385              		.loc 3 701 0
 386 0040 4900     		lsls	r1, r1, #1
 387              	.LBE155:
 388              	.LBE159:
 389              	.LBB160:
 390              	.LBB161:
 391              		.loc 3 709 0
 392 0042 907E     		ldrb	r0, [r2, #26]	@ zero_extendqisi2
 393              	.LBE161:
 394              	.LBE160:
 395              	.LBB163:
 396              	.LBB151:
 707:../libraries/Storage/sd_mmc_protocol.h **** 	}
 397              		.loc 3 707 0
 398 0044 43EA9513 		orr	r3, r3, r5, lsr #6
 399              	.LVL19:
 400              	.LBE151:
 401              	.LBE163:
 402              	.LBB164:
 403              	.LBB156:
 701:../libraries/Storage/sd_mmc_protocol.h **** 	}
 404              		.loc 3 701 0
 405 0048 41EAD411 		orr	r1, r1, r4, lsr #7
 406              	.LVL20:
 407              	.LBE156:
 408              	.LBE164:
 409              	.LBB165:
 410              	.LBB162:
 411              		.loc 3 709 0
 412 004c 00F00F00 		and	r0, r0, #15
 413              	.LBE162:
 414              	.LBE165:
 415              	.LBB166:
 416              	.LBB152:
ARM GAS  /tmp/ccTIydBQ.s 			page 44


 417 0050 C3F30B03 		ubfx	r3, r3, #0, #12
 418              	.LVL21:
 419              	.LBE152:
 420              	.LBE166:
 421              	.LBB167:
 422              	.LBB157:
 423 0054 01F00701 		and	r1, r1, #7
 424              	.LVL22:
 425              	.LBE157:
 426              	.LBE167:
1135:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->capacity =
1136:../libraries/Storage/sd_mmc.c **** 				(SD_CSD_2_0_C_SIZE(sd_mmc_card->csd) + 1)
1137:../libraries/Storage/sd_mmc.c **** 				* 512;
1138:../libraries/Storage/sd_mmc.c **** 	} else {
1139:../libraries/Storage/sd_mmc.c **** 		uint32_t blocknr = ((SD_CSD_1_0_C_SIZE(sd_mmc_card->csd) + 1) *
 427              		.loc 2 1139 0
 428 0058 0133     		adds	r3, r3, #1
1140:../libraries/Storage/sd_mmc.c **** 				(1 << (SD_CSD_1_0_C_SIZE_MULT(sd_mmc_card->csd) + 2)));
 429              		.loc 2 1140 0
 430 005a 0231     		adds	r1, r1, #2
1139:../libraries/Storage/sd_mmc.c **** 				(1 << (SD_CSD_1_0_C_SIZE_MULT(sd_mmc_card->csd) + 2)));
 431              		.loc 2 1139 0
 432 005c 8B40     		lsls	r3, r3, r1
1141:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->capacity = blocknr *
 433              		.loc 2 1141 0
 434 005e 8340     		lsls	r3, r3, r0
1142:../libraries/Storage/sd_mmc.c **** 				(1 << SD_CSD_1_0_READ_BL_LEN(sd_mmc_card->csd))
1143:../libraries/Storage/sd_mmc.c **** 				/ 1024;
 435              		.loc 2 1143 0
 436 0060 9B0A     		lsrs	r3, r3, #10
 437              	.LBE147:
1144:../libraries/Storage/sd_mmc.c **** 	}
1145:../libraries/Storage/sd_mmc.c **** }
 438              		.loc 2 1145 0
 439 0062 70BC     		pop	{r4, r5, r6}
 440              		.cfi_remember_state
 441              		.cfi_restore 6
 442              		.cfi_restore 5
 443              		.cfi_restore 4
 444              		.cfi_def_cfa_offset 0
 445              	.LVL23:
 446              	.LBB168:
1141:../libraries/Storage/sd_mmc.c **** 				(1 << SD_CSD_1_0_READ_BL_LEN(sd_mmc_card->csd))
 447              		.loc 2 1141 0
 448 0064 9360     		str	r3, [r2, #8]
 449              	.LBE168:
 450              		.loc 2 1145 0
 451 0066 7047     		bx	lr
 452              	.LVL24:
 453              	.L21:
 454              		.cfi_restore_state
 455              	.LBB169:
 456              	.LBB170:
 704:../libraries/Storage/sd_mmc_protocol.h **** 	}
 457              		.loc 3 704 0
 458 0068 137F     		ldrb	r3, [r2, #28]	@ zero_extendqisi2
 701:../libraries/Storage/sd_mmc_protocol.h **** 	}
ARM GAS  /tmp/ccTIydBQ.s 			page 45


 459              		.loc 3 701 0
 460 006a 507F     		ldrb	r0, [r2, #29]	@ zero_extendqisi2
 704:../libraries/Storage/sd_mmc_protocol.h **** 	}
 461              		.loc 3 704 0
 462 006c 1B04     		lsls	r3, r3, #16
 699:../libraries/Storage/sd_mmc_protocol.h **** 	if (((pos % 8) + size) > 8) {
 463              		.loc 3 699 0
 464 006e 917F     		ldrb	r1, [r2, #30]	@ zero_extendqisi2
 465              	.LVL25:
 707:../libraries/Storage/sd_mmc_protocol.h **** 	}
 466              		.loc 3 707 0
 467 0070 43EA0023 		orr	r3, r3, r0, lsl #8
 468              	.LVL26:
 469 0074 0B43     		orrs	r3, r3, r1
 470              	.LVL27:
 471              		.loc 3 709 0
 472 0076 C3F31503 		ubfx	r3, r3, #0, #22
 473              	.LBE170:
 474              	.LBE169:
1137:../libraries/Storage/sd_mmc.c **** 	} else {
 475              		.loc 2 1137 0
 476 007a 0133     		adds	r3, r3, #1
 477 007c 5B02     		lsls	r3, r3, #9
 478              		.loc 2 1145 0
 479 007e 70BC     		pop	{r4, r5, r6}
 480              		.cfi_restore 4
 481              		.cfi_restore 5
 482              		.cfi_restore 6
 483              		.cfi_def_cfa_offset 0
1135:../libraries/Storage/sd_mmc.c **** 				(SD_CSD_2_0_C_SIZE(sd_mmc_card->csd) + 1)
 484              		.loc 2 1135 0
 485 0080 9360     		str	r3, [r2, #8]
 486              		.loc 2 1145 0
 487 0082 7047     		bx	lr
 488              	.L23:
 489              		.align	2
 490              	.L22:
 491 0084 00000000 		.word	.LANCHOR0
 492 0088 00000000 		.word	.LANCHOR2
 493 008c 00000000 		.word	.LANCHOR3
 494              		.cfi_endproc
 495              	.LFE247:
 496              		.size	sd_decode_csd, .-sd_decode_csd
 497              		.section	.text.sd_mmc_cmd13,"ax",%progbits
 498              		.align	1
 499              		.p2align 2,,3
 500              		.syntax unified
 501              		.thumb
 502              		.thumb_func
 503              		.fpu fpv5-d16
 504              		.type	sd_mmc_cmd13, %function
 505              	sd_mmc_cmd13:
 506              	.LFB248:
1146:../libraries/Storage/sd_mmc.c **** 
1147:../libraries/Storage/sd_mmc.c **** /**
1148:../libraries/Storage/sd_mmc.c ****  * \brief CMD13 - Addressed card sends its status register.
1149:../libraries/Storage/sd_mmc.c ****  * This function waits the clear of the busy flag
ARM GAS  /tmp/ccTIydBQ.s 			page 46


1150:../libraries/Storage/sd_mmc.c ****  *
1151:../libraries/Storage/sd_mmc.c ****  * \return true if success, otherwise false
1152:../libraries/Storage/sd_mmc.c ****  */
1153:../libraries/Storage/sd_mmc.c **** static bool sd_mmc_cmd13(void)
1154:../libraries/Storage/sd_mmc.c **** {
 507              		.loc 2 1154 0
 508              		.cfi_startproc
 509              		@ args = 0, pretend = 0, frame = 0
 510              		@ frame_needed = 0, uses_anonymous_args = 0
 511              	.LVL28:
 512 0000 70B5     		push	{r4, r5, r6, lr}
 513              		.cfi_def_cfa_offset 16
 514              		.cfi_offset 4, -16
 515              		.cfi_offset 5, -12
 516              		.cfi_offset 6, -8
 517              		.cfi_offset 14, -4
 518              		.loc 2 1154 0
 519 0002 144C     		ldr	r4, .L43
 520 0004 144D     		ldr	r5, .L43+4
 521 0006 0BE0     		b	.L30
 522              	.LVL29:
 523              	.L42:
1155:../libraries/Storage/sd_mmc.c **** 	uint32_t nec_timeout;
1156:../libraries/Storage/sd_mmc.c **** 
1157:../libraries/Storage/sd_mmc.c **** 	/* Wait for data ready status.
1158:../libraries/Storage/sd_mmc.c **** 	 * Nec timing: 0 to unlimited
1159:../libraries/Storage/sd_mmc.c **** 	 * However a timeout is used.
1160:../libraries/Storage/sd_mmc.c **** 	 * 200 000 * 8 cycles
1161:../libraries/Storage/sd_mmc.c **** 	 */
1162:../libraries/Storage/sd_mmc.c **** 	nec_timeout = 200000;
1163:../libraries/Storage/sd_mmc.c **** 	do {
1164:../libraries/Storage/sd_mmc.c **** 		if (sd_mmc_card->iface->is_spi) {
1165:../libraries/Storage/sd_mmc.c **** 			if (!sd_mmc_card->iface->send_cmd(SDMMC_SPI_CMD13_SEND_STATUS, 0)) {
 524              		.loc 2 1165 0
 525 0008 5B69     		ldr	r3, [r3, #20]
 526 000a 9847     		blx	r3
 527              	.LVL30:
 528 000c 00B3     		cbz	r0, .L29
1166:../libraries/Storage/sd_mmc.c **** 				return false;
1167:../libraries/Storage/sd_mmc.c **** 			}
1168:../libraries/Storage/sd_mmc.c **** 			// Check busy flag
1169:../libraries/Storage/sd_mmc.c **** 			if (!(sd_mmc_card->iface->get_response() & 0xFF)) {
 529              		.loc 2 1169 0
 530 000e 2B68     		ldr	r3, [r5]
 531 0010 1B68     		ldr	r3, [r3]
 532 0012 9B69     		ldr	r3, [r3, #24]
 533 0014 9847     		blx	r3
 534              	.LVL31:
 535 0016 10F0FF0F 		tst	r0, #255
 536 001a 17D0     		beq	.L28
 537              	.L31:
 538              	.LVL32:
1170:../libraries/Storage/sd_mmc.c **** 				break;
1171:../libraries/Storage/sd_mmc.c **** 			}
1172:../libraries/Storage/sd_mmc.c **** 		} else {
1173:../libraries/Storage/sd_mmc.c **** 			if (!sd_mmc_card->iface->send_cmd(SDMMC_MCI_CMD13_SEND_STATUS, (uint32_t)sd_mmc_card->rca << 16)
1174:../libraries/Storage/sd_mmc.c **** 				return false;
ARM GAS  /tmp/ccTIydBQ.s 			page 47


1175:../libraries/Storage/sd_mmc.c **** 			}
1176:../libraries/Storage/sd_mmc.c **** 			// Check busy flag
1177:../libraries/Storage/sd_mmc.c **** 			if (sd_mmc_card->iface->get_response() & CARD_STATUS_READY_FOR_DATA) {
1178:../libraries/Storage/sd_mmc.c **** 				break;
1179:../libraries/Storage/sd_mmc.c **** 			}
1180:../libraries/Storage/sd_mmc.c **** 		}
1181:../libraries/Storage/sd_mmc.c **** 		if (nec_timeout-- == 0) {
 539              		.loc 2 1181 0
 540 001c 013C     		subs	r4, r4, #1
 541              	.LVL33:
 542 001e 17D0     		beq	.L29
 543              	.LVL34:
 544              	.L30:
1164:../libraries/Storage/sd_mmc.c **** 			if (!sd_mmc_card->iface->send_cmd(SDMMC_SPI_CMD13_SEND_STATUS, 0)) {
 545              		.loc 2 1164 0
 546 0020 2A68     		ldr	r2, [r5]
1165:../libraries/Storage/sd_mmc.c **** 				return false;
 547              		.loc 2 1165 0
 548 0022 0021     		movs	r1, #0
 549 0024 41F60D30 		movw	r0, #6925
1164:../libraries/Storage/sd_mmc.c **** 			if (!sd_mmc_card->iface->send_cmd(SDMMC_SPI_CMD13_SEND_STATUS, 0)) {
 550              		.loc 2 1164 0
 551 0028 1368     		ldr	r3, [r2]
 552 002a 93F84860 		ldrb	r6, [r3, #72]	@ zero_extendqisi2
 553 002e 002E     		cmp	r6, #0
 554 0030 EAD1     		bne	.L42
1173:../libraries/Storage/sd_mmc.c **** 				return false;
 555              		.loc 2 1173 0
 556 0032 D189     		ldrh	r1, [r2, #14]
 557 0034 41F20D10 		movw	r0, #4365
 558 0038 5B69     		ldr	r3, [r3, #20]
 559 003a 0904     		lsls	r1, r1, #16
 560 003c 9847     		blx	r3
 561              	.LVL35:
 562 003e 38B1     		cbz	r0, .L29
1177:../libraries/Storage/sd_mmc.c **** 				break;
 563              		.loc 2 1177 0
 564 0040 2B68     		ldr	r3, [r5]
 565 0042 1B68     		ldr	r3, [r3]
 566 0044 9B69     		ldr	r3, [r3, #24]
 567 0046 9847     		blx	r3
 568              	.LVL36:
 569 0048 C305     		lsls	r3, r0, #23
 570 004a E7D5     		bpl	.L31
 571              	.L28:
1182:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: CMD13 Busy timeout\n\r", __func__);
1183:../libraries/Storage/sd_mmc.c **** 			return false;
1184:../libraries/Storage/sd_mmc.c **** 		}
1185:../libraries/Storage/sd_mmc.c **** 	} while (1);
1186:../libraries/Storage/sd_mmc.c **** 
1187:../libraries/Storage/sd_mmc.c **** 	return true;
 572              		.loc 2 1187 0
 573 004c 0120     		movs	r0, #1
 574 004e 70BD     		pop	{r4, r5, r6, pc}
 575              	.LVL37:
 576              	.L29:
1166:../libraries/Storage/sd_mmc.c **** 			}
ARM GAS  /tmp/ccTIydBQ.s 			page 48


 577              		.loc 2 1166 0
 578 0050 0020     		movs	r0, #0
 579 0052 70BD     		pop	{r4, r5, r6, pc}
 580              	.L44:
 581              		.align	2
 582              	.L43:
 583 0054 410D0300 		.word	200001
 584 0058 00000000 		.word	.LANCHOR0
 585              		.cfi_endproc
 586              	.LFE248:
 587              		.size	sd_mmc_cmd13, .-sd_mmc_cmd13
 588              		.section	.text.sd_cmd8,"ax",%progbits
 589              		.align	1
 590              		.p2align 2,,3
 591              		.syntax unified
 592              		.thumb
 593              		.thumb_func
 594              		.fpu fpv5-d16
 595              		.type	sd_cmd8, %function
 596              	sd_cmd8:
 597              	.LFB242:
 938:../libraries/Storage/sd_mmc.c **** 	uint32_t resp;
 598              		.loc 2 938 0
 599              		.cfi_startproc
 600              		@ args = 0, pretend = 0, frame = 0
 601              		@ frame_needed = 0, uses_anonymous_args = 0
 602              	.LVL38:
 603 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 604              		.cfi_def_cfa_offset 24
 605              		.cfi_offset 3, -24
 606              		.cfi_offset 4, -20
 607              		.cfi_offset 5, -16
 608              		.cfi_offset 6, -12
 609              		.cfi_offset 7, -8
 610              		.cfi_offset 14, -4
 943:../libraries/Storage/sd_mmc.c **** 			SD_CMD8_PATTERN | SD_CMD8_HIGH_VOLTAGE)) {
 611              		.loc 2 943 0
 612 0002 114D     		ldr	r5, .L55
 938:../libraries/Storage/sd_mmc.c **** 	uint32_t resp;
 613              		.loc 2 938 0
 614 0004 0746     		mov	r7, r0
 941:../libraries/Storage/sd_mmc.c **** 	// Test for SD version 2
 615              		.loc 2 941 0
 616 0006 0026     		movs	r6, #0
 943:../libraries/Storage/sd_mmc.c **** 			SD_CMD8_PATTERN | SD_CMD8_HIGH_VOLTAGE)) {
 617              		.loc 2 943 0
 618 0008 4FF4D571 		mov	r1, #426
 619 000c 2B68     		ldr	r3, [r5]
 620 000e 45F20850 		movw	r0, #21768
 621              	.LVL39:
 941:../libraries/Storage/sd_mmc.c **** 	// Test for SD version 2
 622              		.loc 2 941 0
 623 0012 3E70     		strb	r6, [r7]
 943:../libraries/Storage/sd_mmc.c **** 			SD_CMD8_PATTERN | SD_CMD8_HIGH_VOLTAGE)) {
 624              		.loc 2 943 0
 625 0014 1B68     		ldr	r3, [r3]
 626 0016 5B69     		ldr	r3, [r3, #20]
ARM GAS  /tmp/ccTIydBQ.s 			page 49


 627 0018 9847     		blx	r3
 628              	.LVL40:
 629 001a 10B9     		cbnz	r0, .L46
 630              	.L48:
 945:../libraries/Storage/sd_mmc.c **** 	}
 631              		.loc 2 945 0
 632 001c 0124     		movs	r4, #1
 962:../libraries/Storage/sd_mmc.c **** 
 633              		.loc 2 962 0
 634 001e 2046     		mov	r0, r4
 635 0020 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 636              	.LVL41:
 637              	.L46:
 638              	.LBB173:
 639              	.LBB174:
 948:../libraries/Storage/sd_mmc.c **** 	if (resp == 0xFFFFFFFF) {
 640              		.loc 2 948 0
 641 0022 2B68     		ldr	r3, [r5]
 642 0024 0446     		mov	r4, r0
 643              	.LVL42:
 644 0026 1B68     		ldr	r3, [r3]
 645 0028 9B69     		ldr	r3, [r3, #24]
 646 002a 9847     		blx	r3
 647              	.LVL43:
 949:../libraries/Storage/sd_mmc.c **** 		// No compliance R7 value
 648              		.loc 2 949 0
 649 002c 431C     		adds	r3, r0, #1
 650 002e F5D0     		beq	.L48
 953:../libraries/Storage/sd_mmc.c **** 				!= (SD_CMD8_PATTERN | SD_CMD8_HIGH_VOLTAGE)) {
 651              		.loc 2 953 0
 652 0030 C0F30B00 		ubfx	r0, r0, #0, #12
 653              	.LVL44:
 654 0034 B0F5D57F 		cmp	r0, #426
 655 0038 02D0     		beq	.L54
 957:../libraries/Storage/sd_mmc.c **** 	}
 656              		.loc 2 957 0
 657 003a 3446     		mov	r4, r6
 658              	.LBE174:
 659              	.LBE173:
 962:../libraries/Storage/sd_mmc.c **** 
 660              		.loc 2 962 0
 661 003c 2046     		mov	r0, r4
 662 003e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 663              	.LVL45:
 664              	.L54:
 665              	.LBB177:
 666              	.LBB175:
 960:../libraries/Storage/sd_mmc.c **** 	return true;
 667              		.loc 2 960 0
 668 0040 0123     		movs	r3, #1
 669              	.LVL46:
 670              	.LBE175:
 671              	.LBE177:
 962:../libraries/Storage/sd_mmc.c **** 
 672              		.loc 2 962 0
 673 0042 2046     		mov	r0, r4
 674              	.LBB178:
ARM GAS  /tmp/ccTIydBQ.s 			page 50


 675              	.LBB176:
 960:../libraries/Storage/sd_mmc.c **** 	return true;
 676              		.loc 2 960 0
 677 0044 3B70     		strb	r3, [r7]
 678              	.LBE176:
 679              	.LBE178:
 962:../libraries/Storage/sd_mmc.c **** 
 680              		.loc 2 962 0
 681 0046 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 682              	.LVL47:
 683              	.L56:
 684              		.align	2
 685              	.L55:
 686 0048 00000000 		.word	.LANCHOR0
 687              		.cfi_endproc
 688              	.LFE242:
 689              		.size	sd_cmd8, .-sd_cmd8
 690              		.section	.text.mmc_cmd8,"ax",%progbits
 691              		.align	1
 692              		.p2align 2,,3
 693              		.syntax unified
 694              		.thumb
 695              		.thumb_func
 696              		.fpu fpv5-d16
 697              		.type	mmc_cmd8, %function
 698              	mmc_cmd8:
 699              	.LFB243:
 973:../libraries/Storage/sd_mmc.c **** 	uint16_t i;
 700              		.loc 2 973 0
 701              		.cfi_startproc
 702              		@ args = 0, pretend = 0, frame = 8
 703              		@ frame_needed = 0, uses_anonymous_args = 0
 704              	.LVL48:
 705 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 706              		.cfi_def_cfa_offset 20
 707              		.cfi_offset 4, -20
 708              		.cfi_offset 5, -16
 709              		.cfi_offset 6, -12
 710              		.cfi_offset 7, -8
 711              		.cfi_offset 14, -4
 978:../libraries/Storage/sd_mmc.c **** 			EXT_CSD_BSIZE, 1, false)) {
 712              		.loc 2 978 0
 713 0002 2A4D     		ldr	r5, .L86
 714 0004 0024     		movs	r4, #0
 973:../libraries/Storage/sd_mmc.c **** 	uint16_t i;
 715              		.loc 2 973 0
 716 0006 85B0     		sub	sp, sp, #20
 717              		.cfi_def_cfa_offset 40
 973:../libraries/Storage/sd_mmc.c **** 	uint16_t i;
 718              		.loc 2 973 0
 719 0008 0646     		mov	r6, r0
 978:../libraries/Storage/sd_mmc.c **** 			EXT_CSD_BSIZE, 1, false)) {
 720              		.loc 2 978 0
 721 000a 2F68     		ldr	r7, [r5]
 722 000c 2146     		mov	r1, r4
 723 000e 0123     		movs	r3, #1
 724 0010 4FF40072 		mov	r2, #512
ARM GAS  /tmp/ccTIydBQ.s 			page 51


 725 0014 3F68     		ldr	r7, [r7]
 726 0016 0094     		str	r4, [sp]
 727 0018 2548     		ldr	r0, .L86+4
 728              	.LVL49:
 729 001a 3C6A     		ldr	r4, [r7, #32]
 730 001c A047     		blx	r4
 731              	.LVL50:
 732 001e 60B1     		cbz	r0, .L58
 733 0020 3224     		movs	r4, #50
 734 0022 01E0     		b	.L61
 735              	.LVL51:
 736              	.L59:
 737 0024 A4B2     		uxth	r4, r4
 738              	.LBB183:
 739              	.LBB184:
 987:../libraries/Storage/sd_mmc.c **** 		if (!sd_mmc_card->iface->read_word(&ext_csd)) {
 740              		.loc 2 987 0
 741 0026 54B1     		cbz	r4, .L82
 742              	.L61:
 743              	.LVL52:
 988:../libraries/Storage/sd_mmc.c **** 			return false;
 744              		.loc 2 988 0
 745 0028 2B68     		ldr	r3, [r5]
 746 002a 02A8     		add	r0, sp, #8
 747 002c 013C     		subs	r4, r4, #1
 748              	.LVL53:
 749 002e 1B68     		ldr	r3, [r3]
 750 0030 9B6A     		ldr	r3, [r3, #40]
 751 0032 9847     		blx	r3
 752              	.LVL54:
 753 0034 0028     		cmp	r0, #0
 754 0036 F5D1     		bne	.L59
 755              	.LVL55:
 756              	.L63:
 989:../libraries/Storage/sd_mmc.c **** 		}
 757              		.loc 2 989 0
 758 0038 0020     		movs	r0, #0
 759              	.L58:
 760              	.LBE184:
 761              	.LBE183:
1011:../libraries/Storage/sd_mmc.c **** 
 762              		.loc 2 1011 0
 763 003a 05B0     		add	sp, sp, #20
 764              		.cfi_remember_state
 765              		.cfi_def_cfa_offset 20
 766              		@ sp needed
 767 003c F0BD     		pop	{r4, r5, r6, r7, pc}
 768              	.LVL56:
 769              	.L82:
 770              		.cfi_restore_state
 771              	.LBB190:
 772              	.LBB189:
 993:../libraries/Storage/sd_mmc.c **** 
 773              		.loc 2 993 0
 774 003e 029A     		ldr	r2, [sp, #8]
 775              	.LBB185:
 776              	.LBB186:
ARM GAS  /tmp/ccTIydBQ.s 			page 52


 777              		.loc 3 709 0
 778 0040 40F6FF71 		movw	r1, #4095
 779              	.LBE186:
 780              	.LBE185:
 995:../libraries/Storage/sd_mmc.c **** 		// For high capacity SD/MMC card,
 781              		.loc 2 995 0
 782 0044 2B68     		ldr	r3, [r5]
 783              	.LVL57:
 993:../libraries/Storage/sd_mmc.c **** 
 784              		.loc 2 993 0
 785 0046 02F00202 		and	r2, r2, #2
 992:../libraries/Storage/sd_mmc.c **** 			& MMC_CTYPE_52MHZ;
 786              		.loc 2 992 0
 787 004a 3270     		strb	r2, [r6]
 788              	.LBB188:
 789              	.LBB187:
 704:../libraries/Storage/sd_mmc_protocol.h **** 	}
 790              		.loc 3 704 0
 791 004c DA7E     		ldrb	r2, [r3, #27]	@ zero_extendqisi2
 701:../libraries/Storage/sd_mmc_protocol.h **** 	}
 792              		.loc 3 701 0
 793 004e 1C7F     		ldrb	r4, [r3, #28]	@ zero_extendqisi2
 704:../libraries/Storage/sd_mmc_protocol.h **** 	}
 794              		.loc 3 704 0
 795 0050 9202     		lsls	r2, r2, #10
 699:../libraries/Storage/sd_mmc_protocol.h **** 	if (((pos % 8) + size) > 8) {
 796              		.loc 3 699 0
 797 0052 587F     		ldrb	r0, [r3, #29]	@ zero_extendqisi2
 798              	.LVL58:
 707:../libraries/Storage/sd_mmc_protocol.h **** 	}
 799              		.loc 3 707 0
 800 0054 42EA8402 		orr	r2, r2, r4, lsl #2
 801              	.LVL59:
 802 0058 42EA9012 		orr	r2, r2, r0, lsr #6
 803              	.LVL60:
 804              		.loc 3 709 0
 805 005c C2F30B02 		ubfx	r2, r2, #0, #12
 806              	.LBE187:
 807              	.LBE188:
 995:../libraries/Storage/sd_mmc.c **** 		// For high capacity SD/MMC card,
 808              		.loc 2 995 0
 809 0060 8A42     		cmp	r2, r1
 810 0062 0ED0     		beq	.L83
 811 0064 3224     		movs	r4, #50
 812 0066 03AE     		add	r6, sp, #12
 813              	.LVL61:
 814 0068 03E0     		b	.L66
 815              	.L84:
1005:../libraries/Storage/sd_mmc.c **** 		if (!sd_mmc_card->iface->read_word(&sec_count)) {
 816              		.loc 2 1005 0
 817 006a A4B2     		uxth	r4, r4
 818              	.LVL62:
 819 006c 802C     		cmp	r4, #128
 820 006e E4D0     		beq	.L58
 821 0070 2B68     		ldr	r3, [r5]
 822              	.LVL63:
 823              	.L66:
ARM GAS  /tmp/ccTIydBQ.s 			page 53


1006:../libraries/Storage/sd_mmc.c **** 			return false;
 824              		.loc 2 1006 0
 825 0072 1B68     		ldr	r3, [r3]
 826 0074 3046     		mov	r0, r6
1005:../libraries/Storage/sd_mmc.c **** 		if (!sd_mmc_card->iface->read_word(&sec_count)) {
 827              		.loc 2 1005 0
 828 0076 0134     		adds	r4, r4, #1
 829              	.LVL64:
1006:../libraries/Storage/sd_mmc.c **** 			return false;
 830              		.loc 2 1006 0
 831 0078 9B6A     		ldr	r3, [r3, #40]
 832 007a 9847     		blx	r3
 833              	.LVL65:
 834 007c 0028     		cmp	r0, #0
 835 007e F4D1     		bne	.L84
 836 0080 DAE7     		b	.L63
 837              	.LVL66:
 838              	.L83:
 995:../libraries/Storage/sd_mmc.c **** 		// For high capacity SD/MMC card,
 839              		.loc 2 995 0
 840 0082 0424     		movs	r4, #4
 841 0084 03AE     		add	r6, sp, #12
 842              	.LVL67:
 843 0086 00E0     		b	.L65
 844              	.LVL68:
 845              	.L85:
 846 0088 2B68     		ldr	r3, [r5]
 847              	.LVL69:
 848              	.L65:
 999:../libraries/Storage/sd_mmc.c **** 				return false;
 849              		.loc 2 999 0
 850 008a 1B68     		ldr	r3, [r3]
 851 008c 3046     		mov	r0, r6
 852 008e 013C     		subs	r4, r4, #1
 853              	.LVL70:
 854 0090 9B6A     		ldr	r3, [r3, #40]
 855 0092 9847     		blx	r3
 856              	.LVL71:
 857 0094 0028     		cmp	r0, #0
 858 0096 CFD0     		beq	.L63
 859 0098 A4B2     		uxth	r4, r4
 860              	.LVL72:
 998:../libraries/Storage/sd_mmc.c **** 			if (!sd_mmc_card->iface->read_word(&sec_count)) {
 861              		.loc 2 998 0
 862 009a 002C     		cmp	r4, #0
 863 009c F4D1     		bne	.L85
1003:../libraries/Storage/sd_mmc.c **** 	}
 864              		.loc 2 1003 0
 865 009e 039A     		ldr	r2, [sp, #12]
 866 00a0 3624     		movs	r4, #54
 867              	.LVL73:
 868 00a2 2B68     		ldr	r3, [r5]
 869 00a4 5208     		lsrs	r2, r2, #1
 870 00a6 9A60     		str	r2, [r3, #8]
 871 00a8 E3E7     		b	.L66
 872              	.L87:
 873 00aa 00BF     		.align	2
ARM GAS  /tmp/ccTIydBQ.s 			page 54


 874              	.L86:
 875 00ac 00000000 		.word	.LANCHOR0
 876 00b0 08110800 		.word	528648
 877              	.LBE189:
 878              	.LBE190:
 879              		.cfi_endproc
 880              	.LFE243:
 881              		.size	mmc_cmd8, .-mmc_cmd8
 882              		.section	.text.sd_mmc_cmd9_spi,"ax",%progbits
 883              		.align	1
 884              		.p2align 2,,3
 885              		.syntax unified
 886              		.thumb
 887              		.thumb_func
 888              		.fpu fpv5-d16
 889              		.type	sd_mmc_cmd9_spi, %function
 890              	sd_mmc_cmd9_spi:
 891              	.LFB244:
1020:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->adtc_start(SDMMC_SPI_CMD9_SEND_CSD, (uint32_t)sd_mmc_card->rca << 16,
 892              		.loc 2 1020 0
 893              		.cfi_startproc
 894              		@ args = 0, pretend = 0, frame = 0
 895              		@ frame_needed = 0, uses_anonymous_args = 0
 896 0000 70B5     		push	{r4, r5, r6, lr}
 897              		.cfi_def_cfa_offset 16
 898              		.cfi_offset 4, -16
 899              		.cfi_offset 5, -12
 900              		.cfi_offset 6, -8
 901              		.cfi_offset 14, -4
1021:../libraries/Storage/sd_mmc.c **** 			CSD_REG_BSIZE, 1, true)) {
 902              		.loc 2 1021 0
 903 0002 104E     		ldr	r6, .L97
1020:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->adtc_start(SDMMC_SPI_CMD9_SEND_CSD, (uint32_t)sd_mmc_card->rca << 16,
 904              		.loc 2 1020 0
 905 0004 82B0     		sub	sp, sp, #8
 906              		.cfi_def_cfa_offset 24
1021:../libraries/Storage/sd_mmc.c **** 			CSD_REG_BSIZE, 1, true)) {
 907              		.loc 2 1021 0
 908 0006 0124     		movs	r4, #1
 909 0008 1022     		movs	r2, #16
 910 000a 3568     		ldr	r5, [r6]
 911 000c 0E48     		ldr	r0, .L97+4
 912 000e 2346     		mov	r3, r4
 913 0010 E989     		ldrh	r1, [r5, #14]
 914 0012 2D68     		ldr	r5, [r5]
 915 0014 9140     		lsls	r1, r1, r2
 916 0016 0094     		str	r4, [sp]
 917 0018 2D6A     		ldr	r5, [r5, #32]
 918 001a A847     		blx	r5
 919              	.LVL74:
 920 001c 10B9     		cbnz	r0, .L96
 921              	.L90:
1029:../libraries/Storage/sd_mmc.c **** 
 922              		.loc 2 1029 0
 923 001e 0020     		movs	r0, #0
 924 0020 02B0     		add	sp, sp, #8
 925              		.cfi_remember_state
ARM GAS  /tmp/ccTIydBQ.s 			page 55


 926              		.cfi_def_cfa_offset 16
 927              		@ sp needed
 928 0022 70BD     		pop	{r4, r5, r6, pc}
 929              	.L96:
 930              		.cfi_restore_state
1025:../libraries/Storage/sd_mmc.c **** 		return false;
 931              		.loc 2 1025 0
 932 0024 3068     		ldr	r0, [r6]
 933 0026 2146     		mov	r1, r4
 934 0028 0368     		ldr	r3, [r0]
 935 002a 1530     		adds	r0, r0, #21
 936 002c 1B6B     		ldr	r3, [r3, #48]
 937 002e 9847     		blx	r3
 938              	.LVL75:
 939 0030 0028     		cmp	r0, #0
 940 0032 F4D0     		beq	.L90
 941              	.LBB193:
 942              	.LBB194:
1028:../libraries/Storage/sd_mmc.c **** }
 943              		.loc 2 1028 0
 944 0034 3368     		ldr	r3, [r6]
 945 0036 1B68     		ldr	r3, [r3]
 946 0038 5B6B     		ldr	r3, [r3, #52]
 947              	.LBE194:
 948              	.LBE193:
1029:../libraries/Storage/sd_mmc.c **** 
 949              		.loc 2 1029 0
 950 003a 02B0     		add	sp, sp, #8
 951              		.cfi_def_cfa_offset 16
 952              		@ sp needed
 953 003c BDE87040 		pop	{r4, r5, r6, lr}
 954              		.cfi_restore 14
 955              		.cfi_restore 6
 956              		.cfi_restore 5
 957              		.cfi_restore 4
 958              		.cfi_def_cfa_offset 0
 959              	.LBB196:
 960              	.LBB195:
1028:../libraries/Storage/sd_mmc.c **** }
 961              		.loc 2 1028 0
 962 0040 1847     		bx	r3
 963              	.LVL76:
 964              	.L98:
 965 0042 00BF     		.align	2
 966              	.L97:
 967 0044 00000000 		.word	.LANCHOR0
 968 0048 09110800 		.word	528649
 969              	.LBE195:
 970              	.LBE196:
 971              		.cfi_endproc
 972              	.LFE244:
 973              		.size	sd_mmc_cmd9_spi, .-sd_mmc_cmd9_spi
 974              		.section	.text.sd_mmc_cmd9_mci,"ax",%progbits
 975              		.align	1
 976              		.p2align 2,,3
 977              		.syntax unified
 978              		.thumb
ARM GAS  /tmp/ccTIydBQ.s 			page 56


 979              		.thumb_func
 980              		.fpu fpv5-d16
 981              		.type	sd_mmc_cmd9_mci, %function
 982              	sd_mmc_cmd9_mci:
 983              	.LFB245:
1038:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->send_cmd(SDMMC_MCI_CMD9_SEND_CSD, (uint32_t)sd_mmc_card->rca << 16)) {
 984              		.loc 2 1038 0
 985              		.cfi_startproc
 986              		@ args = 0, pretend = 0, frame = 0
 987              		@ frame_needed = 0, uses_anonymous_args = 0
 988 0000 38B5     		push	{r3, r4, r5, lr}
 989              		.cfi_def_cfa_offset 16
 990              		.cfi_offset 3, -16
 991              		.cfi_offset 4, -12
 992              		.cfi_offset 5, -8
 993              		.cfi_offset 14, -4
1039:../libraries/Storage/sd_mmc.c **** 		return false;
 994              		.loc 2 1039 0
 995 0002 094D     		ldr	r5, .L105
 996 0004 41F60930 		movw	r0, #6921
 997 0008 2B68     		ldr	r3, [r5]
 998 000a D989     		ldrh	r1, [r3, #14]
 999 000c 1B68     		ldr	r3, [r3]
 1000 000e 0904     		lsls	r1, r1, #16
 1001 0010 5B69     		ldr	r3, [r3, #20]
 1002 0012 9847     		blx	r3
 1003              	.LVL77:
 1004 0014 0446     		mov	r4, r0
 1005 0016 20B1     		cbz	r0, .L100
 1006              	.LBB199:
 1007              	.LBB200:
1042:../libraries/Storage/sd_mmc.c **** 	return true;
 1008              		.loc 2 1042 0
 1009 0018 2868     		ldr	r0, [r5]
 1010 001a 0368     		ldr	r3, [r0]
 1011 001c 1530     		adds	r0, r0, #21
 1012 001e DB69     		ldr	r3, [r3, #28]
 1013 0020 9847     		blx	r3
 1014              	.LVL78:
 1015              	.L100:
 1016              	.LBE200:
 1017              	.LBE199:
1044:../libraries/Storage/sd_mmc.c **** 
 1018              		.loc 2 1044 0
 1019 0022 2046     		mov	r0, r4
 1020 0024 38BD     		pop	{r3, r4, r5, pc}
 1021              	.L106:
 1022 0026 00BF     		.align	2
 1023              	.L105:
 1024 0028 00000000 		.word	.LANCHOR0
 1025              		.cfi_endproc
 1026              	.LFE245:
 1027              		.size	sd_mmc_cmd9_mci, .-sd_mmc_cmd9_mci
 1028              		.section	.text.sd_acmd51,"ax",%progbits
 1029              		.align	1
 1030              		.p2align 2,,3
 1031              		.syntax unified
ARM GAS  /tmp/ccTIydBQ.s 			page 57


 1032              		.thumb
 1033              		.thumb_func
 1034              		.fpu fpv5-d16
 1035              		.type	sd_acmd51, %function
 1036              	sd_acmd51:
 1037              	.LFB250:
1188:../libraries/Storage/sd_mmc.c **** }
1189:../libraries/Storage/sd_mmc.c **** 
1190:../libraries/Storage/sd_mmc.c **** #ifdef SDIO_SUPPORT_ENABLE
1191:../libraries/Storage/sd_mmc.c **** /**
1192:../libraries/Storage/sd_mmc.c ****  * \brief CMD52 - SDIO IO_RW_DIRECT command
1193:../libraries/Storage/sd_mmc.c ****  *
1194:../libraries/Storage/sd_mmc.c ****  * \param rw_flag   Direction, 1:write, 0:read.
1195:../libraries/Storage/sd_mmc.c ****  * \param func_nb   Number of the function.
1196:../libraries/Storage/sd_mmc.c ****  * \param rd_after_wr Read after Write flag.
1197:../libraries/Storage/sd_mmc.c ****  * \param reg_addr  register address.
1198:../libraries/Storage/sd_mmc.c ****  * \param io_data   Pointer to input argument and response buffer.
1199:../libraries/Storage/sd_mmc.c ****  *
1200:../libraries/Storage/sd_mmc.c ****  * \return true if success, otherwise false
1201:../libraries/Storage/sd_mmc.c ****  */
1202:../libraries/Storage/sd_mmc.c **** static bool sdio_cmd52(uint8_t rw_flag, uint8_t func_nb,
1203:../libraries/Storage/sd_mmc.c **** 		uint32_t reg_addr, uint8_t rd_after_wr, uint8_t *io_data)
1204:../libraries/Storage/sd_mmc.c **** {
1205:../libraries/Storage/sd_mmc.c **** 	Assert(io_data != NULL);
1206:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->send_cmd(SDIO_CMD52_IO_RW_DIRECT,
1207:../libraries/Storage/sd_mmc.c **** 		((uint32_t)*io_data << SDIO_CMD52_WR_DATA)
1208:../libraries/Storage/sd_mmc.c **** 		| ((uint32_t)rw_flag << SDIO_CMD52_RW_FLAG)
1209:../libraries/Storage/sd_mmc.c **** 		| ((uint32_t)func_nb << SDIO_CMD52_FUNCTION_NUM)
1210:../libraries/Storage/sd_mmc.c **** 		| ((uint32_t)rd_after_wr << SDIO_CMD52_RAW_FLAG)
1211:../libraries/Storage/sd_mmc.c **** 		| ((uint32_t)reg_addr << SDIO_CMD52_REG_ADRR))) {
1212:../libraries/Storage/sd_mmc.c **** 		return false;
1213:../libraries/Storage/sd_mmc.c **** 	}
1214:../libraries/Storage/sd_mmc.c **** 	*io_data = sd_mmc_card->iface->get_response() & 0xFF;
1215:../libraries/Storage/sd_mmc.c **** 	return true;
1216:../libraries/Storage/sd_mmc.c **** }
1217:../libraries/Storage/sd_mmc.c **** 
1218:../libraries/Storage/sd_mmc.c **** /**
1219:../libraries/Storage/sd_mmc.c ****  * \brief CMD53 - SDIO IO_RW_EXTENDED command
1220:../libraries/Storage/sd_mmc.c ****  * This implementation support only the SDIO multi-byte transfer mode which is
1221:../libraries/Storage/sd_mmc.c ****  * similar to the single block transfer on memory.
1222:../libraries/Storage/sd_mmc.c ****  * Note: The SDIO block transfer mode is optional for SDIO card.
1223:../libraries/Storage/sd_mmc.c ****  *
1224:../libraries/Storage/sd_mmc.c ****  * \param rw_flag   Direction, 1:write, 0:read.
1225:../libraries/Storage/sd_mmc.c ****  * \param func_nb   Number of the function.
1226:../libraries/Storage/sd_mmc.c ****  * \param reg_addr  Register address.
1227:../libraries/Storage/sd_mmc.c ****  * \param inc_addr  1:Incrementing address, 0: fixed.
1228:../libraries/Storage/sd_mmc.c ****  * \param size      Transfer data size.
1229:../libraries/Storage/sd_mmc.c ****  * \param access_block  true, if the block access (DMA) is used
1230:../libraries/Storage/sd_mmc.c ****  *
1231:../libraries/Storage/sd_mmc.c ****  * \return true if success, otherwise false
1232:../libraries/Storage/sd_mmc.c ****  */
1233:../libraries/Storage/sd_mmc.c **** static bool sdio_cmd53(uint8_t rw_flag, uint8_t func_nb, uint32_t reg_addr,
1234:../libraries/Storage/sd_mmc.c **** 		uint8_t inc_addr, uint32_t size, bool access_block)
1235:../libraries/Storage/sd_mmc.c **** {
1236:../libraries/Storage/sd_mmc.c **** 	Assert(size != 0);
1237:../libraries/Storage/sd_mmc.c **** 	Assert(size <= 512);
1238:../libraries/Storage/sd_mmc.c **** 
ARM GAS  /tmp/ccTIydBQ.s 			page 58


1239:../libraries/Storage/sd_mmc.c **** 	return sd_mmc_card->iface->adtc_start((rw_flag == SDIO_CMD53_READ_FLAG)?
1240:../libraries/Storage/sd_mmc.c **** 			SDIO_CMD53_IO_R_BYTE_EXTENDED :
1241:../libraries/Storage/sd_mmc.c **** 			SDIO_CMD53_IO_W_BYTE_EXTENDED,
1242:../libraries/Storage/sd_mmc.c **** 			((size % 512) << SDIO_CMD53_COUNT)
1243:../libraries/Storage/sd_mmc.c **** 			| ((uint32_t)reg_addr << SDIO_CMD53_REG_ADDR)
1244:../libraries/Storage/sd_mmc.c **** 			| ((uint32_t)inc_addr << SDIO_CMD53_OP_CODE)
1245:../libraries/Storage/sd_mmc.c **** 			| ((uint32_t)0 << SDIO_CMD53_BLOCK_MODE)
1246:../libraries/Storage/sd_mmc.c **** 			| ((uint32_t)func_nb << SDIO_CMD53_FUNCTION_NUM)
1247:../libraries/Storage/sd_mmc.c **** 			| ((uint32_t)rw_flag << SDIO_CMD53_RW_FLAG),
1248:../libraries/Storage/sd_mmc.c **** 			size, 1, access_block);
1249:../libraries/Storage/sd_mmc.c **** }
1250:../libraries/Storage/sd_mmc.c **** #endif // SDIO_SUPPORT_ENABLE
1251:../libraries/Storage/sd_mmc.c **** 
1252:../libraries/Storage/sd_mmc.c **** /**
1253:../libraries/Storage/sd_mmc.c ****  * \brief ACMD6 - Define the data bus width to 4 bits bus
1254:../libraries/Storage/sd_mmc.c ****  *
1255:../libraries/Storage/sd_mmc.c ****  * \return true if success, otherwise false
1256:../libraries/Storage/sd_mmc.c ****  */
1257:../libraries/Storage/sd_mmc.c **** static bool sd_acmd6(void)
1258:../libraries/Storage/sd_mmc.c **** {
1259:../libraries/Storage/sd_mmc.c **** 	// CMD55 - Indicate to the card that the next command is an
1260:../libraries/Storage/sd_mmc.c **** 	// application specific command rather than a standard command.
1261:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->send_cmd(SDMMC_CMD55_APP_CMD, (uint32_t)sd_mmc_card->rca << 16)) {
1262:../libraries/Storage/sd_mmc.c **** 		return false;
1263:../libraries/Storage/sd_mmc.c **** 	}
1264:../libraries/Storage/sd_mmc.c **** 	// 10b = 4 bits bus
1265:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->send_cmd(SD_ACMD6_SET_BUS_WIDTH, 0x2)) {
1266:../libraries/Storage/sd_mmc.c **** 		return false;
1267:../libraries/Storage/sd_mmc.c **** 	}
1268:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->bus_width = 4;
1269:../libraries/Storage/sd_mmc.c **** 	sd_mmc_debug("%d-bit bus width enabled.\n\r", (int)sd_mmc_card->bus_width);
1270:../libraries/Storage/sd_mmc.c **** 	return true;
1271:../libraries/Storage/sd_mmc.c **** }
1272:../libraries/Storage/sd_mmc.c **** 
1273:../libraries/Storage/sd_mmc.c **** /**
1274:../libraries/Storage/sd_mmc.c ****  * \brief ACMD51 - Read the SD Configuration Register.
1275:../libraries/Storage/sd_mmc.c ****  *
1276:../libraries/Storage/sd_mmc.c ****  * \note
1277:../libraries/Storage/sd_mmc.c ****  * SD Card Configuration Register (SCR) provides information on the SD Memory
1278:../libraries/Storage/sd_mmc.c ****  * Card's special features that were configured into the given card. The size
1279:../libraries/Storage/sd_mmc.c ****  * of SCR register is 64 bits.
1280:../libraries/Storage/sd_mmc.c ****  *
1281:../libraries/Storage/sd_mmc.c ****  *
1282:../libraries/Storage/sd_mmc.c ****  * \return true if success, otherwise false
1283:../libraries/Storage/sd_mmc.c ****  */
1284:../libraries/Storage/sd_mmc.c **** static bool sd_acmd51(void)
1285:../libraries/Storage/sd_mmc.c **** {
 1038              		.loc 2 1285 0
 1039              		.cfi_startproc
 1040              		@ args = 0, pretend = 0, frame = 8
 1041              		@ frame_needed = 0, uses_anonymous_args = 0
 1042 0000 70B5     		push	{r4, r5, r6, lr}
 1043              		.cfi_def_cfa_offset 16
 1044              		.cfi_offset 4, -16
 1045              		.cfi_offset 5, -12
 1046              		.cfi_offset 6, -8
 1047              		.cfi_offset 14, -4
ARM GAS  /tmp/ccTIydBQ.s 			page 59


1286:../libraries/Storage/sd_mmc.c **** 	uint8_t scr[SD_SCR_REG_BSIZE];
1287:../libraries/Storage/sd_mmc.c **** 
1288:../libraries/Storage/sd_mmc.c **** 	// CMD55 - Indicate to the card that the next command is an
1289:../libraries/Storage/sd_mmc.c **** 	// application specific command rather than a standard command.
1290:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->send_cmd(SDMMC_CMD55_APP_CMD, (uint32_t)sd_mmc_card->rca << 16)) {
 1048              		.loc 2 1290 0
 1049 0002 214C     		ldr	r4, .L128
1285:../libraries/Storage/sd_mmc.c **** 	uint8_t scr[SD_SCR_REG_BSIZE];
 1050              		.loc 2 1285 0
 1051 0004 84B0     		sub	sp, sp, #16
 1052              		.cfi_def_cfa_offset 32
 1053              		.loc 2 1290 0
 1054 0006 41F23710 		movw	r0, #4407
 1055 000a 2368     		ldr	r3, [r4]
 1056 000c D989     		ldrh	r1, [r3, #14]
 1057 000e 1B68     		ldr	r3, [r3]
 1058 0010 0904     		lsls	r1, r1, #16
 1059 0012 5B69     		ldr	r3, [r3, #20]
 1060 0014 9847     		blx	r3
 1061              	.LVL79:
 1062 0016 10B9     		cbnz	r0, .L127
 1063              	.L113:
 1064              	.LBB207:
 1065              	.LBB208:
1291:../libraries/Storage/sd_mmc.c **** 		return false;
1292:../libraries/Storage/sd_mmc.c **** 	}
1293:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->adtc_start(SD_ACMD51_SEND_SCR, 0,
1294:../libraries/Storage/sd_mmc.c **** 			SD_SCR_REG_BSIZE, 1, true)) {
1295:../libraries/Storage/sd_mmc.c **** 		return false;
1296:../libraries/Storage/sd_mmc.c **** 	}
1297:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->start_read_blocks(scr, 1)) {
1298:../libraries/Storage/sd_mmc.c **** 		return false;
 1066              		.loc 2 1298 0
 1067 0018 0020     		movs	r0, #0
 1068              	.L109:
 1069              	.LBE208:
 1070              	.LBE207:
1299:../libraries/Storage/sd_mmc.c **** 	}
1300:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->wait_end_of_read_blocks()) {
1301:../libraries/Storage/sd_mmc.c **** 		return false;
1302:../libraries/Storage/sd_mmc.c **** 	}
1303:../libraries/Storage/sd_mmc.c **** 
1304:../libraries/Storage/sd_mmc.c **** 	// Get SD Memory Card - Spec. Version
1305:../libraries/Storage/sd_mmc.c **** 	switch (SD_SCR_SD_SPEC(scr)) {
1306:../libraries/Storage/sd_mmc.c **** 	case SD_SCR_SD_SPEC_1_0_01:
1307:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->version = CARD_VER_SD_1_0;
1308:../libraries/Storage/sd_mmc.c **** 		break;
1309:../libraries/Storage/sd_mmc.c **** 
1310:../libraries/Storage/sd_mmc.c **** 	case SD_SCR_SD_SPEC_1_10:
1311:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->version = CARD_VER_SD_1_10;
1312:../libraries/Storage/sd_mmc.c **** 		break;
1313:../libraries/Storage/sd_mmc.c **** 
1314:../libraries/Storage/sd_mmc.c **** 	case SD_SCR_SD_SPEC_2_00:
1315:../libraries/Storage/sd_mmc.c **** 		if (SD_SCR_SD_SPEC3(scr) == SD_SCR_SD_SPEC_3_00) {
1316:../libraries/Storage/sd_mmc.c **** 			sd_mmc_card->version = CARD_VER_SD_3_0;
1317:../libraries/Storage/sd_mmc.c **** 		} else {
1318:../libraries/Storage/sd_mmc.c **** 			sd_mmc_card->version = CARD_VER_SD_2_0;
ARM GAS  /tmp/ccTIydBQ.s 			page 60


1319:../libraries/Storage/sd_mmc.c **** 		}
1320:../libraries/Storage/sd_mmc.c **** 		break;
1321:../libraries/Storage/sd_mmc.c **** 
1322:../libraries/Storage/sd_mmc.c **** 	default:
1323:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->version = CARD_VER_SD_1_0;
1324:../libraries/Storage/sd_mmc.c **** 		break;
1325:../libraries/Storage/sd_mmc.c **** 	}
1326:../libraries/Storage/sd_mmc.c **** 	return true;
1327:../libraries/Storage/sd_mmc.c **** }
 1071              		.loc 2 1327 0
 1072 001a 04B0     		add	sp, sp, #16
 1073              		.cfi_remember_state
 1074              		.cfi_def_cfa_offset 16
 1075              		@ sp needed
 1076 001c 70BD     		pop	{r4, r5, r6, pc}
 1077              	.L127:
 1078              		.cfi_restore_state
1293:../libraries/Storage/sd_mmc.c **** 			SD_SCR_REG_BSIZE, 1, true)) {
 1079              		.loc 2 1293 0
 1080 001e 2368     		ldr	r3, [r4]
 1081 0020 0125     		movs	r5, #1
 1082 0022 0822     		movs	r2, #8
 1083 0024 0021     		movs	r1, #0
 1084 0026 1E68     		ldr	r6, [r3]
 1085 0028 2B46     		mov	r3, r5
 1086 002a 0095     		str	r5, [sp]
 1087 002c 1748     		ldr	r0, .L128+4
 1088 002e 366A     		ldr	r6, [r6, #32]
 1089 0030 B047     		blx	r6
 1090              	.LVL80:
 1091 0032 0028     		cmp	r0, #0
 1092 0034 F0D0     		beq	.L113
 1093              	.LBB210:
 1094              	.LBB209:
1297:../libraries/Storage/sd_mmc.c **** 		return false;
 1095              		.loc 2 1297 0
 1096 0036 2368     		ldr	r3, [r4]
 1097 0038 2946     		mov	r1, r5
 1098 003a 02A8     		add	r0, sp, #8
 1099 003c 1B68     		ldr	r3, [r3]
 1100 003e 1B6B     		ldr	r3, [r3, #48]
 1101 0040 9847     		blx	r3
 1102              	.LVL81:
 1103 0042 0028     		cmp	r0, #0
 1104 0044 E8D0     		beq	.L113
1300:../libraries/Storage/sd_mmc.c **** 		return false;
 1105              		.loc 2 1300 0
 1106 0046 2368     		ldr	r3, [r4]
 1107 0048 1B68     		ldr	r3, [r3]
 1108 004a 5B6B     		ldr	r3, [r3, #52]
 1109 004c 9847     		blx	r3
 1110              	.LVL82:
 1111 004e 0028     		cmp	r0, #0
 1112 0050 E2D0     		beq	.L113
1305:../libraries/Storage/sd_mmc.c **** 	case SD_SCR_SD_SPEC_1_0_01:
 1113              		.loc 2 1305 0
 1114 0052 9DF80830 		ldrb	r3, [sp, #8]	@ zero_extendqisi2
ARM GAS  /tmp/ccTIydBQ.s 			page 61


 1115 0056 03F00F03 		and	r3, r3, #15
 1116 005a 012B     		cmp	r3, #1
 1117 005c 0FD0     		beq	.L115
 1118 005e 0AD3     		bcc	.L125
 1119 0060 022B     		cmp	r3, #2
 1120 0062 08D1     		bne	.L125
1315:../libraries/Storage/sd_mmc.c **** 			sd_mmc_card->version = CARD_VER_SD_3_0;
 1121              		.loc 2 1315 0
 1122 0064 9DF80A30 		ldrb	r3, [sp, #10]	@ zero_extendqisi2
 1123 0068 DB09     		lsrs	r3, r3, #7
1316:../libraries/Storage/sd_mmc.c **** 		} else {
 1124              		.loc 2 1316 0
 1125 006a 2368     		ldr	r3, [r4]
 1126 006c 14BF     		ite	ne
 1127 006e 3022     		movne	r2, #48
1318:../libraries/Storage/sd_mmc.c **** 		}
 1128              		.loc 2 1318 0
 1129 0070 2022     		moveq	r2, #32
 1130 0072 9A74     		strb	r2, [r3, #18]
 1131 0074 D1E7     		b	.L109
 1132              	.L125:
1323:../libraries/Storage/sd_mmc.c **** 		break;
 1133              		.loc 2 1323 0
 1134 0076 2368     		ldr	r3, [r4]
 1135 0078 1022     		movs	r2, #16
 1136 007a 9A74     		strb	r2, [r3, #18]
 1137 007c CDE7     		b	.L109
 1138              	.L115:
1311:../libraries/Storage/sd_mmc.c **** 		break;
 1139              		.loc 2 1311 0
 1140 007e 2368     		ldr	r3, [r4]
 1141 0080 1A22     		movs	r2, #26
 1142 0082 9A74     		strb	r2, [r3, #18]
 1143 0084 C9E7     		b	.L109
 1144              	.L129:
 1145 0086 00BF     		.align	2
 1146              	.L128:
 1147 0088 00000000 		.word	.LANCHOR0
 1148 008c 33110800 		.word	528691
 1149              	.LBE209:
 1150              	.LBE210:
 1151              		.cfi_endproc
 1152              	.LFE250:
 1153              		.size	sd_acmd51, .-sd_acmd51
 1154              		.section	.text.sd_mmc_select_slot.part.5,"ax",%progbits
 1155              		.align	1
 1156              		.p2align 2,,3
 1157              		.syntax unified
 1158              		.thumb
 1159              		.thumb_func
 1160              		.fpu fpv5-d16
 1161              		.type	sd_mmc_select_slot.part.5, %function
 1162              	sd_mmc_select_slot.part.5:
 1163              	.LFB278:
1328:../libraries/Storage/sd_mmc.c **** 
1329:../libraries/Storage/sd_mmc.c **** /**
1330:../libraries/Storage/sd_mmc.c ****  * \brief Select a card slot and initialize the associated driver
ARM GAS  /tmp/ccTIydBQ.s 			page 62


1331:../libraries/Storage/sd_mmc.c ****  *
1332:../libraries/Storage/sd_mmc.c ****  * \param slot  Card slot number
1333:../libraries/Storage/sd_mmc.c ****  *
1334:../libraries/Storage/sd_mmc.c ****  * \retval SD_MMC_ERR_SLOT     Wrong slot number
1335:../libraries/Storage/sd_mmc.c ****  * \retval SD_MMC_ERR_NO_CARD  No card present on slot
1336:../libraries/Storage/sd_mmc.c ****  * \retval SD_MMC_ERR_UNUSABLE Unusable card
1337:../libraries/Storage/sd_mmc.c ****  * \retval SD_MMC_INIT_ONGOING Card initialization requested
1338:../libraries/Storage/sd_mmc.c ****  * \retval SD_MMC_OK           Card present
1339:../libraries/Storage/sd_mmc.c ****  * \retval SD_MMC_CD_DEBOUNCING Giving the card time to be ready
1340:../libraries/Storage/sd_mmc.c ****  */
1341:../libraries/Storage/sd_mmc.c **** static sd_mmc_err_t sd_mmc_select_slot(uint8_t slot)
 1164              		.loc 2 1341 0
 1165              		.cfi_startproc
 1166              		@ args = 0, pretend = 0, frame = 0
 1167              		@ frame_needed = 0, uses_anonymous_args = 0
 1168              	.LVL83:
 1169 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1170              		.cfi_def_cfa_offset 24
 1171              		.cfi_offset 3, -24
 1172              		.cfi_offset 4, -20
 1173              		.cfi_offset 5, -16
 1174              		.cfi_offset 6, -12
 1175              		.cfi_offset 7, -8
 1176              		.cfi_offset 14, -4
 1177              		.loc 2 1341 0
 1178 0002 0446     		mov	r4, r0
1342:../libraries/Storage/sd_mmc.c **** {
1343:../libraries/Storage/sd_mmc.c **** 	if (slot >= SD_MMC_MEM_CNT) {
1344:../libraries/Storage/sd_mmc.c **** 		return SD_MMC_ERR_SLOT;
1345:../libraries/Storage/sd_mmc.c **** 	}
1346:../libraries/Storage/sd_mmc.c **** 	Assert(sd_mmc_nb_block_remaining == 0);
1347:../libraries/Storage/sd_mmc.c **** 
1348:../libraries/Storage/sd_mmc.c **** #if 1	// dc42
1349:../libraries/Storage/sd_mmc.c **** 	// RepRapFirmware now handles the card detect pin and debouncing, so ignore the card detect pin he
1350:../libraries/Storage/sd_mmc.c **** #else
1351:../libraries/Storage/sd_mmc.c **** 	if (sd_mmc_cards[slot].cd_gpio != NoPin) {
1352:../libraries/Storage/sd_mmc.c **** 		//! Card Detect pins
1353:../libraries/Storage/sd_mmc.c **** 		if (digitalRead(sd_mmc_cards[slot].cd_gpio) != SD_MMC_CD_DETECT_VALUE) {
1354:../libraries/Storage/sd_mmc.c **** 			if (sd_mmc_cards[slot].state == SD_MMC_CARD_STATE_DEBOUNCE) {
1355:../libraries/Storage/sd_mmc.c **** 				SD_MMC_STOP_TIMEOUT();
1356:../libraries/Storage/sd_mmc.c **** 			}
1357:../libraries/Storage/sd_mmc.c **** 			sd_mmc_cards[slot].state = SD_MMC_CARD_STATE_NO_CARD;
1358:../libraries/Storage/sd_mmc.c **** 			return SD_MMC_ERR_NO_CARD;
1359:../libraries/Storage/sd_mmc.c **** 		}
1360:../libraries/Storage/sd_mmc.c **** 		if (sd_mmc_cards[slot].state == SD_MMC_CARD_STATE_NO_CARD) {
1361:../libraries/Storage/sd_mmc.c **** 			// A card plug on going, but this is not initialized
1362:../libraries/Storage/sd_mmc.c **** 			sd_mmc_cards[slot].state = SD_MMC_CARD_STATE_DEBOUNCE;
1363:../libraries/Storage/sd_mmc.c **** 			// Debounce + Power On Setup
1364:../libraries/Storage/sd_mmc.c **** 			SD_MMC_START_TIMEOUT();
1365:../libraries/Storage/sd_mmc.c **** 			return SD_MMC_CD_DEBOUNCING;
1366:../libraries/Storage/sd_mmc.c **** 		}
1367:../libraries/Storage/sd_mmc.c **** 		if (sd_mmc_cards[slot].state == SD_MMC_CARD_STATE_DEBOUNCE) {
1368:../libraries/Storage/sd_mmc.c **** 			if (!SD_MMC_IS_TIMEOUT()) {
1369:../libraries/Storage/sd_mmc.c **** 				// Debounce on going
1370:../libraries/Storage/sd_mmc.c **** 				return SD_MMC_CD_DEBOUNCING;
1371:../libraries/Storage/sd_mmc.c **** 			}
1372:../libraries/Storage/sd_mmc.c **** 			// Card is not initialized
ARM GAS  /tmp/ccTIydBQ.s 			page 63


1373:../libraries/Storage/sd_mmc.c **** 			sd_mmc_cards[slot].state = SD_MMC_CARD_STATE_INIT;
1374:../libraries/Storage/sd_mmc.c **** 			// Set 1-bit bus width and low clock for initialization
1375:../libraries/Storage/sd_mmc.c **** 			sd_mmc_cards[slot].clock = SDMMC_CLOCK_INIT;
1376:../libraries/Storage/sd_mmc.c **** 			sd_mmc_cards[slot].bus_width = 1;
1377:../libraries/Storage/sd_mmc.c **** 			sd_mmc_cards[slot].high_speed = 0;
1378:../libraries/Storage/sd_mmc.c **** 		}
1379:../libraries/Storage/sd_mmc.c **** 		if (sd_mmc_cards[slot].state == SD_MMC_CARD_STATE_UNUSABLE) {
1380:../libraries/Storage/sd_mmc.c **** 			return SD_MMC_ERR_UNUSABLE;
1381:../libraries/Storage/sd_mmc.c **** 		}
1382:../libraries/Storage/sd_mmc.c **** 	}
1383:../libraries/Storage/sd_mmc.c **** 	else
1384:../libraries/Storage/sd_mmc.c **** #endif
1385:../libraries/Storage/sd_mmc.c **** 	{
1386:../libraries/Storage/sd_mmc.c **** 		// No pin card detection, then always try to install it
1387:../libraries/Storage/sd_mmc.c **** 		if ((sd_mmc_cards[slot].state == SD_MMC_CARD_STATE_NO_CARD)
 1179              		.loc 2 1387 0
 1180 0004 1748     		ldr	r0, .L134
 1181              	.LVL84:
 1182 0006 A200     		lsls	r2, r4, #2
 1183 0008 1119     		adds	r1, r2, r4
 1184 000a 00EBC101 		add	r1, r0, r1, lsl #3
1388:../libraries/Storage/sd_mmc.c **** 				|| (sd_mmc_cards[slot].state == SD_MMC_CARD_STATE_UNUSABLE)) {
 1185              		.loc 2 1388 0
 1186 000e 0B7C     		ldrb	r3, [r1, #16]	@ zero_extendqisi2
1387:../libraries/Storage/sd_mmc.c **** 				|| (sd_mmc_cards[slot].state == SD_MMC_CARD_STATE_UNUSABLE)) {
 1187              		.loc 2 1387 0
 1188 0010 033B     		subs	r3, r3, #3
 1189 0012 012B     		cmp	r3, #1
 1190 0014 1CD9     		bls	.L131
 1191 0016 91F82530 		ldrb	r3, [r1, #37]	@ zero_extendqisi2
 1192 001a 0033     		adds	r3, r3, #0
 1193 001c 18BF     		it	ne
 1194 001e 0123     		movne	r3, #1
 1195              	.L132:
 1196              	.LBB211:
 1197              	.LBB212:
1389:../libraries/Storage/sd_mmc.c **** 			// Card is not initialized
1390:../libraries/Storage/sd_mmc.c **** 			sd_mmc_cards[slot].state = SD_MMC_CARD_STATE_INIT;
1391:../libraries/Storage/sd_mmc.c **** 			// Set 1-bit bus width and low clock for initialization
1392:../libraries/Storage/sd_mmc.c **** 			sd_mmc_cards[slot].clock = SDMMC_CLOCK_INIT;
1393:../libraries/Storage/sd_mmc.c **** 			sd_mmc_cards[slot].bus_width = 1;
1394:../libraries/Storage/sd_mmc.c **** 			sd_mmc_cards[slot].high_speed = 0;
1395:../libraries/Storage/sd_mmc.c **** 		}
1396:../libraries/Storage/sd_mmc.c **** 	}
1397:../libraries/Storage/sd_mmc.c **** 
1398:../libraries/Storage/sd_mmc.c **** 	// Initialize interface
1399:../libraries/Storage/sd_mmc.c **** 	sd_mmc_slot_sel = slot;
1400:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card = &sd_mmc_cards[slot];
1401:../libraries/Storage/sd_mmc.c **** 	sd_mmc_configure_slot();
1402:../libraries/Storage/sd_mmc.c **** 	return (sd_mmc_cards[slot].state == SD_MMC_CARD_STATE_INIT) ?
1403:../libraries/Storage/sd_mmc.c **** 			SD_MMC_INIT_ONGOING : SD_MMC_OK;
1404:../libraries/Storage/sd_mmc.c **** }
1405:../libraries/Storage/sd_mmc.c **** 
1406:../libraries/Storage/sd_mmc.c **** /**
1407:../libraries/Storage/sd_mmc.c ****  * \brief Configures the driver with the selected card configuration
1408:../libraries/Storage/sd_mmc.c ****  */
1409:../libraries/Storage/sd_mmc.c **** static void sd_mmc_configure_slot(void)
ARM GAS  /tmp/ccTIydBQ.s 			page 64


1410:../libraries/Storage/sd_mmc.c **** {
1411:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->iface->select_device(sd_mmc_card->slot, sd_mmc_card->clock, sd_mmc_card->bus_width, s
 1198              		.loc 2 1411 0
 1199 0020 2244     		add	r2, r2, r4
 1200              	.LBE212:
 1201              	.LBE211:
1400:../libraries/Storage/sd_mmc.c **** 	sd_mmc_configure_slot();
 1202              		.loc 2 1400 0
 1203 0022 04EB8401 		add	r1, r4, r4, lsl #2
 1204 0026 104E     		ldr	r6, .L134+4
 1205              	.LBB217:
 1206              	.LBB213:
 1207              		.loc 2 1411 0
 1208 0028 D200     		lsls	r2, r2, #3
 1209              	.LBE213:
 1210              	.LBE217:
1399:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card = &sd_mmc_cards[slot];
 1211              		.loc 2 1399 0
 1212 002a 104F     		ldr	r7, .L134+8
1400:../libraries/Storage/sd_mmc.c **** 	sd_mmc_configure_slot();
 1213              		.loc 2 1400 0
 1214 002c 00EBC101 		add	r1, r0, r1, lsl #3
 1215              	.LBB218:
 1216              	.LBB214:
 1217              		.loc 2 1411 0
 1218 0030 8518     		adds	r5, r0, r2
 1219 0032 8258     		ldr	r2, [r0, r2]
 1220              	.LBE214:
 1221              	.LBE218:
1400:../libraries/Storage/sd_mmc.c **** 	sd_mmc_configure_slot();
 1222              		.loc 2 1400 0
 1223 0034 3160     		str	r1, [r6]
 1224              	.LBB219:
 1225              	.LBB215:
 1226              		.loc 2 1411 0
 1227 0036 E87C     		ldrb	r0, [r5, #19]	@ zero_extendqisi2
 1228 0038 1668     		ldr	r6, [r2]
 1229 003a 6968     		ldr	r1, [r5, #4]
 1230 003c 2A7D     		ldrb	r2, [r5, #20]	@ zero_extendqisi2
 1231              	.LBE215:
 1232              	.LBE219:
1399:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card = &sd_mmc_cards[slot];
 1233              		.loc 2 1399 0
 1234 003e 3C70     		strb	r4, [r7]
 1235              	.LBB220:
 1236              	.LBB216:
 1237              		.loc 2 1411 0
 1238 0040 B047     		blx	r6
 1239              	.LVL85:
 1240              	.LBE216:
 1241              	.LBE220:
1403:../libraries/Storage/sd_mmc.c **** }
 1242              		.loc 2 1403 0
 1243 0042 287C     		ldrb	r0, [r5, #16]	@ zero_extendqisi2
1404:../libraries/Storage/sd_mmc.c **** 
 1244              		.loc 2 1404 0
 1245 0044 A0F10200 		sub	r0, #2
ARM GAS  /tmp/ccTIydBQ.s 			page 65


 1246 0048 B0FA80F0 		clz	r0, r0
 1247 004c 4009     		lsrs	r0, r0, #5
 1248 004e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1249              	.L131:
1394:../libraries/Storage/sd_mmc.c **** 		}
 1250              		.loc 2 1394 0
 1251 0050 0023     		movs	r3, #0
1390:../libraries/Storage/sd_mmc.c **** 			// Set 1-bit bus width and low clock for initialization
 1252              		.loc 2 1390 0
 1253 0052 0227     		movs	r7, #2
1392:../libraries/Storage/sd_mmc.c **** 			sd_mmc_cards[slot].bus_width = 1;
 1254              		.loc 2 1392 0
 1255 0054 064E     		ldr	r6, .L134+12
1393:../libraries/Storage/sd_mmc.c **** 			sd_mmc_cards[slot].high_speed = 0;
 1256              		.loc 2 1393 0
 1257 0056 0125     		movs	r5, #1
1394:../libraries/Storage/sd_mmc.c **** 		}
 1258              		.loc 2 1394 0
 1259 0058 81F82530 		strb	r3, [r1, #37]
1390:../libraries/Storage/sd_mmc.c **** 			// Set 1-bit bus width and low clock for initialization
 1260              		.loc 2 1390 0
 1261 005c 0F74     		strb	r7, [r1, #16]
1392:../libraries/Storage/sd_mmc.c **** 			sd_mmc_cards[slot].bus_width = 1;
 1262              		.loc 2 1392 0
 1263 005e 4E60     		str	r6, [r1, #4]
1393:../libraries/Storage/sd_mmc.c **** 			sd_mmc_cards[slot].high_speed = 0;
 1264              		.loc 2 1393 0
 1265 0060 0D75     		strb	r5, [r1, #20]
 1266 0062 DDE7     		b	.L132
 1267              	.L135:
 1268              		.align	2
 1269              	.L134:
 1270 0064 00000000 		.word	.LANCHOR4
 1271 0068 00000000 		.word	.LANCHOR0
 1272 006c 00000000 		.word	.LANCHOR5
 1273 0070 801A0600 		.word	400000
 1274              		.cfi_endproc
 1275              	.LFE278:
 1276              		.size	sd_mmc_select_slot.part.5, .-sd_mmc_select_slot.part.5
 1277              		.section	.text.sd_mmc_deselect_slot.part.6,"ax",%progbits
 1278              		.align	1
 1279              		.p2align 2,,3
 1280              		.syntax unified
 1281              		.thumb
 1282              		.thumb_func
 1283              		.fpu fpv5-d16
 1284              		.type	sd_mmc_deselect_slot.part.6, %function
 1285              	sd_mmc_deselect_slot.part.6:
 1286              	.LFB279:
1412:../libraries/Storage/sd_mmc.c **** }
1413:../libraries/Storage/sd_mmc.c **** 
1414:../libraries/Storage/sd_mmc.c **** /**
1415:../libraries/Storage/sd_mmc.c ****  * \brief Deselect the current card slot
1416:../libraries/Storage/sd_mmc.c ****  */
1417:../libraries/Storage/sd_mmc.c **** static void sd_mmc_deselect_slot(void)
 1287              		.loc 2 1417 0
 1288              		.cfi_startproc
ARM GAS  /tmp/ccTIydBQ.s 			page 66


 1289              		@ args = 0, pretend = 0, frame = 0
 1290              		@ frame_needed = 0, uses_anonymous_args = 0
 1291 0000 08B5     		push	{r3, lr}
 1292              		.cfi_def_cfa_offset 8
 1293              		.cfi_offset 3, -8
 1294              		.cfi_offset 14, -4
1418:../libraries/Storage/sd_mmc.c **** {
1419:../libraries/Storage/sd_mmc.c **** 	if (sd_mmc_slot_sel < SD_MMC_MEM_CNT) {
1420:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->iface->deselect_device(sd_mmc_card->slot);
 1295              		.loc 2 1420 0
 1296 0002 054B     		ldr	r3, .L138
 1297 0004 1B68     		ldr	r3, [r3]
 1298 0006 1A68     		ldr	r2, [r3]
 1299 0008 D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 1300 000a 5368     		ldr	r3, [r2, #4]
 1301 000c 9847     		blx	r3
 1302              	.LVL86:
1421:../libraries/Storage/sd_mmc.c **** 		sd_mmc_slot_sel = 0xFF;					// No slot selected
 1303              		.loc 2 1421 0
 1304 000e 034B     		ldr	r3, .L138+4
 1305 0010 FF22     		movs	r2, #255
 1306 0012 1A70     		strb	r2, [r3]
 1307 0014 08BD     		pop	{r3, pc}
 1308              	.L139:
 1309 0016 00BF     		.align	2
 1310              	.L138:
 1311 0018 00000000 		.word	.LANCHOR0
 1312 001c 00000000 		.word	.LANCHOR5
 1313              		.cfi_endproc
 1314              	.LFE279:
 1315              		.size	sd_mmc_deselect_slot.part.6, .-sd_mmc_deselect_slot.part.6
 1316              		.section	.text.sd_mmc_init,"ax",%progbits
 1317              		.align	1
 1318              		.p2align 2,,3
 1319              		.global	sd_mmc_init
 1320              		.syntax unified
 1321              		.thumb
 1322              		.thumb_func
 1323              		.fpu fpv5-d16
 1324              		.type	sd_mmc_init, %function
 1325              	sd_mmc_init:
 1326              	.LFB258:
1422:../libraries/Storage/sd_mmc.c **** 	}
1423:../libraries/Storage/sd_mmc.c **** }
1424:../libraries/Storage/sd_mmc.c **** 
1425:../libraries/Storage/sd_mmc.c **** /**
1426:../libraries/Storage/sd_mmc.c ****  * \brief Initialize the SD card in SPI mode.
1427:../libraries/Storage/sd_mmc.c ****  *
1428:../libraries/Storage/sd_mmc.c ****  * \note
1429:../libraries/Storage/sd_mmc.c ****  * This function runs the initialization procedure and the identification
1430:../libraries/Storage/sd_mmc.c ****  * process, then it sets the SD/MMC card in transfer state.
1431:../libraries/Storage/sd_mmc.c ****  * At last, it will automatically enable maximum bus width and transfer speed.
1432:../libraries/Storage/sd_mmc.c ****  *
1433:../libraries/Storage/sd_mmc.c ****  * \return true if success, otherwise false
1434:../libraries/Storage/sd_mmc.c ****  */
1435:../libraries/Storage/sd_mmc.c **** static bool sd_mmc_spi_card_init(void)
1436:../libraries/Storage/sd_mmc.c **** {
ARM GAS  /tmp/ccTIydBQ.s 			page 67


1437:../libraries/Storage/sd_mmc.c **** 	uint8_t v2 = 0;
1438:../libraries/Storage/sd_mmc.c **** 
1439:../libraries/Storage/sd_mmc.c **** 	// In first, try to install SD/SDIO card
1440:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->type = CARD_TYPE_SD;
1441:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->version = CARD_VER_UNKNOWN;
1442:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->rca = 0;
1443:../libraries/Storage/sd_mmc.c **** 	sd_mmc_debug("Start SD card install\n\r");
1444:../libraries/Storage/sd_mmc.c **** 
1445:../libraries/Storage/sd_mmc.c **** 	// Card need of 74 cycles clock minimum to start
1446:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->iface->send_clock();
1447:../libraries/Storage/sd_mmc.c **** 
1448:../libraries/Storage/sd_mmc.c **** 	// CMD0 - Reset all cards to idle state.
1449:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->send_cmd(SDMMC_SPI_CMD0_GO_IDLE_STATE, 0)) {
1450:../libraries/Storage/sd_mmc.c **** 		return false;
1451:../libraries/Storage/sd_mmc.c **** 	}
1452:../libraries/Storage/sd_mmc.c **** 	if (!sd_cmd8(&v2)) {
1453:../libraries/Storage/sd_mmc.c **** 		return false;
1454:../libraries/Storage/sd_mmc.c **** 	}
1455:../libraries/Storage/sd_mmc.c **** 	// Try to get the SDIO card's operating condition
1456:../libraries/Storage/sd_mmc.c **** 	if (!sdio_op_cond()) {
1457:../libraries/Storage/sd_mmc.c **** 		return false;
1458:../libraries/Storage/sd_mmc.c **** 	}
1459:../libraries/Storage/sd_mmc.c **** 
1460:../libraries/Storage/sd_mmc.c **** 	if (sd_mmc_card->type & CARD_TYPE_SD) {
1461:../libraries/Storage/sd_mmc.c **** 		// Try to get the SD card's operating condition
1462:../libraries/Storage/sd_mmc.c **** 		if (!sd_spi_op_cond(v2)) {
1463:../libraries/Storage/sd_mmc.c **** 			// It is not a SD card
1464:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("Start MMC Install\n\r");
1465:../libraries/Storage/sd_mmc.c **** 			sd_mmc_card->type = CARD_TYPE_MMC;
1466:../libraries/Storage/sd_mmc.c **** 			return sd_mmc_spi_install_mmc();
1467:../libraries/Storage/sd_mmc.c **** 		}
1468:../libraries/Storage/sd_mmc.c **** 
1469:../libraries/Storage/sd_mmc.c **** 		/* The CRC on card is disabled by default.
1470:../libraries/Storage/sd_mmc.c **** 		 * However, to be sure, the CRC OFF command is send.
1471:../libraries/Storage/sd_mmc.c **** 		 * Unfortunately, specific SDIO card does not support it
1472:../libraries/Storage/sd_mmc.c **** 		 * (H&D wireless card - HDG104 WiFi SIP)
1473:../libraries/Storage/sd_mmc.c **** 		 * and the command is send only on SD card.
1474:../libraries/Storage/sd_mmc.c **** 		 */
1475:../libraries/Storage/sd_mmc.c **** 		if (!sd_mmc_card->iface->send_cmd(SDMMC_SPI_CMD59_CRC_ON_OFF, 0)) {
1476:../libraries/Storage/sd_mmc.c **** 			return false;
1477:../libraries/Storage/sd_mmc.c **** 		}
1478:../libraries/Storage/sd_mmc.c **** 	}
1479:../libraries/Storage/sd_mmc.c **** 	// SD MEMORY
1480:../libraries/Storage/sd_mmc.c **** 	if (sd_mmc_card->type & CARD_TYPE_SD) {
1481:../libraries/Storage/sd_mmc.c **** 		// Get the Card-Specific Data
1482:../libraries/Storage/sd_mmc.c **** 		if (!sd_mmc_cmd9_spi()) {
1483:../libraries/Storage/sd_mmc.c **** 			return false;
1484:../libraries/Storage/sd_mmc.c **** 		}
1485:../libraries/Storage/sd_mmc.c **** 		sd_decode_csd();
1486:../libraries/Storage/sd_mmc.c **** 		// Read the SCR to get card version
1487:../libraries/Storage/sd_mmc.c **** 		if (!sd_acmd51()) {
1488:../libraries/Storage/sd_mmc.c **** 			return false;
1489:../libraries/Storage/sd_mmc.c **** 		}
1490:../libraries/Storage/sd_mmc.c **** 	}
1491:../libraries/Storage/sd_mmc.c **** 	if (IS_SDIO()) {
1492:../libraries/Storage/sd_mmc.c **** 		if (!sdio_get_max_speed()) {
1493:../libraries/Storage/sd_mmc.c **** 			return false;
ARM GAS  /tmp/ccTIydBQ.s 			page 68


1494:../libraries/Storage/sd_mmc.c **** 		}
1495:../libraries/Storage/sd_mmc.c **** 	}
1496:../libraries/Storage/sd_mmc.c **** 	// SD MEMORY not HC, Set default block size
1497:../libraries/Storage/sd_mmc.c **** 	if ((sd_mmc_card->type & CARD_TYPE_SD) &&
1498:../libraries/Storage/sd_mmc.c **** 			(0 == (sd_mmc_card->type & CARD_TYPE_HC))) {
1499:../libraries/Storage/sd_mmc.c **** 		if (!sd_mmc_card->iface->send_cmd(SDMMC_CMD16_SET_BLOCKLEN, SD_MMC_BLOCK_SIZE)) {
1500:../libraries/Storage/sd_mmc.c **** 			return false;
1501:../libraries/Storage/sd_mmc.c **** 		}
1502:../libraries/Storage/sd_mmc.c **** 	}
1503:../libraries/Storage/sd_mmc.c **** 	// Check communication
1504:../libraries/Storage/sd_mmc.c **** 	if (sd_mmc_card->type & CARD_TYPE_SD) {
1505:../libraries/Storage/sd_mmc.c **** 		if (!sd_mmc_cmd13()) {
1506:../libraries/Storage/sd_mmc.c **** 			return false;
1507:../libraries/Storage/sd_mmc.c **** 		}
1508:../libraries/Storage/sd_mmc.c **** 	}
1509:../libraries/Storage/sd_mmc.c **** 	// Re-initialize the slot with the new speed
1510:../libraries/Storage/sd_mmc.c **** 	sd_mmc_configure_slot();
1511:../libraries/Storage/sd_mmc.c **** 	return true;
1512:../libraries/Storage/sd_mmc.c **** }
1513:../libraries/Storage/sd_mmc.c **** 
1514:../libraries/Storage/sd_mmc.c **** /**
1515:../libraries/Storage/sd_mmc.c ****  * \brief Initialize the SD card in MCI mode.
1516:../libraries/Storage/sd_mmc.c ****  *
1517:../libraries/Storage/sd_mmc.c ****  * \note
1518:../libraries/Storage/sd_mmc.c ****  * This function runs the initialization procedure and the identification
1519:../libraries/Storage/sd_mmc.c ****  * process, then it sets the SD/MMC card in transfer state.
1520:../libraries/Storage/sd_mmc.c ****  * At last, it will automatically enable maximum bus width and transfer speed.
1521:../libraries/Storage/sd_mmc.c ****  *
1522:../libraries/Storage/sd_mmc.c ****  * \return true if success, otherwise false
1523:../libraries/Storage/sd_mmc.c ****  */
1524:../libraries/Storage/sd_mmc.c **** static bool sd_mmc_mci_card_init(void)
1525:../libraries/Storage/sd_mmc.c **** {
1526:../libraries/Storage/sd_mmc.c **** 	uint8_t v2 = 0;
1527:../libraries/Storage/sd_mmc.c **** 
1528:../libraries/Storage/sd_mmc.c **** 	// In first, try to install SD/SDIO card
1529:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->type = CARD_TYPE_SD;
1530:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->version = CARD_VER_UNKNOWN;
1531:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->rca = 0;
1532:../libraries/Storage/sd_mmc.c **** 	sd_mmc_debug("Start SD card install\n\r");
1533:../libraries/Storage/sd_mmc.c **** 
1534:../libraries/Storage/sd_mmc.c **** 	// Card need of 74 cycles clock minimum to start
1535:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->iface->send_clock();
1536:../libraries/Storage/sd_mmc.c **** 
1537:../libraries/Storage/sd_mmc.c **** 	// CMD0 - Reset all cards to idle state.
1538:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->send_cmd(SDMMC_MCI_CMD0_GO_IDLE_STATE, 0)) {
1539:../libraries/Storage/sd_mmc.c **** 		return false;
1540:../libraries/Storage/sd_mmc.c **** 	}
1541:../libraries/Storage/sd_mmc.c **** 	if (!sd_cmd8(&v2)) {
1542:../libraries/Storage/sd_mmc.c **** 		return false;
1543:../libraries/Storage/sd_mmc.c **** 	}
1544:../libraries/Storage/sd_mmc.c **** 	// Try to get the SDIO card's operating condition
1545:../libraries/Storage/sd_mmc.c **** 	if (!sdio_op_cond()) {
1546:../libraries/Storage/sd_mmc.c **** 		return false;
1547:../libraries/Storage/sd_mmc.c **** 	}
1548:../libraries/Storage/sd_mmc.c **** 
1549:../libraries/Storage/sd_mmc.c **** 	if (sd_mmc_card->type & CARD_TYPE_SD) {
1550:../libraries/Storage/sd_mmc.c **** 		// Try to get the SD card's operating condition
ARM GAS  /tmp/ccTIydBQ.s 			page 69


1551:../libraries/Storage/sd_mmc.c **** 		if (!sd_mci_op_cond(v2)) {
1552:../libraries/Storage/sd_mmc.c **** 			// It is not a SD card
1553:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("Start MMC Install\n\r");
1554:../libraries/Storage/sd_mmc.c **** 			sd_mmc_card->type = CARD_TYPE_MMC;
1555:../libraries/Storage/sd_mmc.c **** 			return sd_mmc_mci_install_mmc();
1556:../libraries/Storage/sd_mmc.c **** 		}
1557:../libraries/Storage/sd_mmc.c **** 	}
1558:../libraries/Storage/sd_mmc.c **** 
1559:../libraries/Storage/sd_mmc.c **** 	if (sd_mmc_card->type & CARD_TYPE_SD) {
1560:../libraries/Storage/sd_mmc.c **** 		// SD MEMORY, Put the Card in Identify Mode
1561:../libraries/Storage/sd_mmc.c **** 		// Note: The CID is not used in this stack
1562:../libraries/Storage/sd_mmc.c **** 		if (!sd_mmc_card->iface->send_cmd(SDMMC_CMD2_ALL_SEND_CID, 0)) {
1563:../libraries/Storage/sd_mmc.c **** 			return false;
1564:../libraries/Storage/sd_mmc.c **** 		}
1565:../libraries/Storage/sd_mmc.c **** 	}
1566:../libraries/Storage/sd_mmc.c **** 	// Ask the card to publish a new relative address (RCA).
1567:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->send_cmd(SD_CMD3_SEND_RELATIVE_ADDR, 0)) {
1568:../libraries/Storage/sd_mmc.c **** 		return false;
1569:../libraries/Storage/sd_mmc.c **** 	}
1570:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->rca = (sd_mmc_card->iface->get_response() >> 16) & 0xFFFF;
1571:../libraries/Storage/sd_mmc.c **** 
1572:../libraries/Storage/sd_mmc.c **** 	// SD MEMORY, Get the Card-Specific Data
1573:../libraries/Storage/sd_mmc.c **** 	if (sd_mmc_card->type & CARD_TYPE_SD) {
1574:../libraries/Storage/sd_mmc.c **** 		if (!sd_mmc_cmd9_mci()) {
1575:../libraries/Storage/sd_mmc.c **** 			return false;
1576:../libraries/Storage/sd_mmc.c **** 		}
1577:../libraries/Storage/sd_mmc.c **** 		sd_decode_csd();
1578:../libraries/Storage/sd_mmc.c **** 	}
1579:../libraries/Storage/sd_mmc.c **** 	// Select the and put it into Transfer Mode
1580:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->send_cmd(SDMMC_CMD7_SELECT_CARD_CMD,
1581:../libraries/Storage/sd_mmc.c **** 			(uint32_t)sd_mmc_card->rca << 16)) {
1582:../libraries/Storage/sd_mmc.c **** 		return false;
1583:../libraries/Storage/sd_mmc.c **** 	}
1584:../libraries/Storage/sd_mmc.c **** 	// SD MEMORY, Read the SCR to get card version
1585:../libraries/Storage/sd_mmc.c **** 	if (sd_mmc_card->type & CARD_TYPE_SD) {
1586:../libraries/Storage/sd_mmc.c **** 		if (!sd_acmd51()) {
1587:../libraries/Storage/sd_mmc.c **** 			return false;
1588:../libraries/Storage/sd_mmc.c **** 		}
1589:../libraries/Storage/sd_mmc.c **** 	}
1590:../libraries/Storage/sd_mmc.c **** 	if (IS_SDIO()) {
1591:../libraries/Storage/sd_mmc.c **** 		if (!sdio_get_max_speed()) {
1592:../libraries/Storage/sd_mmc.c **** 			return false;
1593:../libraries/Storage/sd_mmc.c **** 		}
1594:../libraries/Storage/sd_mmc.c **** 	}
1595:../libraries/Storage/sd_mmc.c **** 	if ((4 <= sd_mmc_card->iface->get_bus_width(sd_mmc_card->slot))) {
1596:../libraries/Storage/sd_mmc.c **** 		// TRY to enable 4-bit mode
1597:../libraries/Storage/sd_mmc.c **** 		if (IS_SDIO()) {
1598:../libraries/Storage/sd_mmc.c **** 			if (!sdio_cmd52_set_bus_width()) {
1599:../libraries/Storage/sd_mmc.c **** 				return false;
1600:../libraries/Storage/sd_mmc.c **** 			}
1601:../libraries/Storage/sd_mmc.c **** 		}
1602:../libraries/Storage/sd_mmc.c **** 		if (sd_mmc_card->type & CARD_TYPE_SD) {
1603:../libraries/Storage/sd_mmc.c **** 			if (!sd_acmd6()) {
1604:../libraries/Storage/sd_mmc.c **** 				return false;
1605:../libraries/Storage/sd_mmc.c **** 			}
1606:../libraries/Storage/sd_mmc.c **** 		}
1607:../libraries/Storage/sd_mmc.c **** 		// Switch to selected bus mode
ARM GAS  /tmp/ccTIydBQ.s 			page 70


1608:../libraries/Storage/sd_mmc.c **** 		sd_mmc_configure_slot();
1609:../libraries/Storage/sd_mmc.c **** 	}
1610:../libraries/Storage/sd_mmc.c **** 	if (sd_mmc_card->iface->is_high_speed_capable()) {
1611:../libraries/Storage/sd_mmc.c **** 		// TRY to enable High-Speed Mode
1612:../libraries/Storage/sd_mmc.c **** 		if (IS_SDIO()) {
1613:../libraries/Storage/sd_mmc.c **** 			if (!sdio_cmd52_set_high_speed()) {
1614:../libraries/Storage/sd_mmc.c **** 				return false;
1615:../libraries/Storage/sd_mmc.c **** 			}
1616:../libraries/Storage/sd_mmc.c **** 		}
1617:../libraries/Storage/sd_mmc.c **** 		if (sd_mmc_card->type & CARD_TYPE_SD) {
1618:../libraries/Storage/sd_mmc.c **** 			if (sd_mmc_card->version > CARD_VER_SD_1_0) {
1619:../libraries/Storage/sd_mmc.c **** 				if (!sd_cm6_set_high_speed()) {
1620:../libraries/Storage/sd_mmc.c **** 					return false;
1621:../libraries/Storage/sd_mmc.c **** 				}
1622:../libraries/Storage/sd_mmc.c **** 			}
1623:../libraries/Storage/sd_mmc.c **** 		}
1624:../libraries/Storage/sd_mmc.c **** 		// Valid new configuration
1625:../libraries/Storage/sd_mmc.c **** 		sd_mmc_configure_slot();
1626:../libraries/Storage/sd_mmc.c **** 	}
1627:../libraries/Storage/sd_mmc.c **** 	// SD MEMORY, Set default block size
1628:../libraries/Storage/sd_mmc.c **** 	if (sd_mmc_card->type & CARD_TYPE_SD) {
1629:../libraries/Storage/sd_mmc.c **** 		if (!sd_mmc_card->iface->send_cmd(SDMMC_CMD16_SET_BLOCKLEN, SD_MMC_BLOCK_SIZE)) {
1630:../libraries/Storage/sd_mmc.c **** 			return false;
1631:../libraries/Storage/sd_mmc.c **** 		}
1632:../libraries/Storage/sd_mmc.c **** 	}
1633:../libraries/Storage/sd_mmc.c **** 	return true;
1634:../libraries/Storage/sd_mmc.c **** }
1635:../libraries/Storage/sd_mmc.c **** 
1636:../libraries/Storage/sd_mmc.c **** /**
1637:../libraries/Storage/sd_mmc.c ****  * \brief Initialize the MMC card in SPI mode.
1638:../libraries/Storage/sd_mmc.c ****  *
1639:../libraries/Storage/sd_mmc.c ****  * \note
1640:../libraries/Storage/sd_mmc.c ****  * This function runs the initialization procedure and the identification
1641:../libraries/Storage/sd_mmc.c ****  * process, then it sets the SD/MMC card in transfer state.
1642:../libraries/Storage/sd_mmc.c ****  * At last, it will automatically enable maximum bus width and transfer speed.
1643:../libraries/Storage/sd_mmc.c ****  *
1644:../libraries/Storage/sd_mmc.c ****  * \return true if success, otherwise false
1645:../libraries/Storage/sd_mmc.c ****  */
1646:../libraries/Storage/sd_mmc.c **** static bool sd_mmc_spi_install_mmc(void)
1647:../libraries/Storage/sd_mmc.c **** {
1648:../libraries/Storage/sd_mmc.c **** 	uint8_t b_authorize_high_speed;
1649:../libraries/Storage/sd_mmc.c **** 
1650:../libraries/Storage/sd_mmc.c **** 	// CMD0 - Reset all cards to idle state.
1651:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->send_cmd(SDMMC_SPI_CMD0_GO_IDLE_STATE, 0)) {
1652:../libraries/Storage/sd_mmc.c **** 		return false;
1653:../libraries/Storage/sd_mmc.c **** 	}
1654:../libraries/Storage/sd_mmc.c **** 
1655:../libraries/Storage/sd_mmc.c **** 	if (!mmc_spi_op_cond()) {
1656:../libraries/Storage/sd_mmc.c **** 		return false;
1657:../libraries/Storage/sd_mmc.c **** 	}
1658:../libraries/Storage/sd_mmc.c **** 
1659:../libraries/Storage/sd_mmc.c **** 	// Disable CRC check for SPI mode
1660:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->send_cmd(SDMMC_SPI_CMD59_CRC_ON_OFF, 0)) {
1661:../libraries/Storage/sd_mmc.c **** 		return false;
1662:../libraries/Storage/sd_mmc.c **** 	}
1663:../libraries/Storage/sd_mmc.c **** 	// Get the Card-Specific Data
1664:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_cmd9_spi()) {
ARM GAS  /tmp/ccTIydBQ.s 			page 71


1665:../libraries/Storage/sd_mmc.c **** 		return false;
1666:../libraries/Storage/sd_mmc.c **** 	}
1667:../libraries/Storage/sd_mmc.c **** 	mmc_decode_csd();
1668:../libraries/Storage/sd_mmc.c **** 	// For MMC 4.0 Higher version
1669:../libraries/Storage/sd_mmc.c **** 	if (sd_mmc_card->version >= CARD_VER_MMC_4) {
1670:../libraries/Storage/sd_mmc.c **** 		// Get EXT_CSD
1671:../libraries/Storage/sd_mmc.c **** 		if (!mmc_cmd8(&b_authorize_high_speed)) {
1672:../libraries/Storage/sd_mmc.c **** 			return false;
1673:../libraries/Storage/sd_mmc.c **** 		}
1674:../libraries/Storage/sd_mmc.c **** 	}
1675:../libraries/Storage/sd_mmc.c **** 	// Set default block size
1676:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->send_cmd(SDMMC_CMD16_SET_BLOCKLEN, SD_MMC_BLOCK_SIZE)) {
1677:../libraries/Storage/sd_mmc.c **** 		return false;
1678:../libraries/Storage/sd_mmc.c **** 	}
1679:../libraries/Storage/sd_mmc.c **** 	// Check communication
1680:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_cmd13()) {
1681:../libraries/Storage/sd_mmc.c **** 		return false;
1682:../libraries/Storage/sd_mmc.c **** 	}
1683:../libraries/Storage/sd_mmc.c **** 	// Re-initialize the slot with the new speed
1684:../libraries/Storage/sd_mmc.c **** 	sd_mmc_configure_slot();
1685:../libraries/Storage/sd_mmc.c **** 	return true;
1686:../libraries/Storage/sd_mmc.c **** }
1687:../libraries/Storage/sd_mmc.c **** 
1688:../libraries/Storage/sd_mmc.c **** 
1689:../libraries/Storage/sd_mmc.c **** /**
1690:../libraries/Storage/sd_mmc.c ****  * \brief Initialize the MMC card in MCI mode.
1691:../libraries/Storage/sd_mmc.c ****  *
1692:../libraries/Storage/sd_mmc.c ****  * \note
1693:../libraries/Storage/sd_mmc.c ****  * This function runs the initialization procedure and the identification
1694:../libraries/Storage/sd_mmc.c ****  * process, then it sets the SD/MMC card in transfer state.
1695:../libraries/Storage/sd_mmc.c ****  * At last, it will automatically enable maximum bus width and transfer speed.
1696:../libraries/Storage/sd_mmc.c ****  *
1697:../libraries/Storage/sd_mmc.c ****  * \return true if success, otherwise false
1698:../libraries/Storage/sd_mmc.c ****  */
1699:../libraries/Storage/sd_mmc.c **** static bool sd_mmc_mci_install_mmc(void)
1700:../libraries/Storage/sd_mmc.c **** {
1701:../libraries/Storage/sd_mmc.c **** 	uint8_t b_authorize_high_speed;
1702:../libraries/Storage/sd_mmc.c **** 
1703:../libraries/Storage/sd_mmc.c **** 	// CMD0 - Reset all cards to idle state.
1704:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->send_cmd(SDMMC_MCI_CMD0_GO_IDLE_STATE, 0)) {
1705:../libraries/Storage/sd_mmc.c **** 		return false;
1706:../libraries/Storage/sd_mmc.c **** 	}
1707:../libraries/Storage/sd_mmc.c **** 
1708:../libraries/Storage/sd_mmc.c **** 	if (!mmc_mci_op_cond()) {
1709:../libraries/Storage/sd_mmc.c **** 		return false;
1710:../libraries/Storage/sd_mmc.c **** 	}
1711:../libraries/Storage/sd_mmc.c **** 
1712:../libraries/Storage/sd_mmc.c **** 	// Put the Card in Identify Mode
1713:../libraries/Storage/sd_mmc.c **** 	// Note: The CID is not used in this stack
1714:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->send_cmd(SDMMC_CMD2_ALL_SEND_CID, 0)) {
1715:../libraries/Storage/sd_mmc.c **** 		return false;
1716:../libraries/Storage/sd_mmc.c **** 	}
1717:../libraries/Storage/sd_mmc.c **** 	// Assign relative address to the card.
1718:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->rca = 1;
1719:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->send_cmd(MMC_CMD3_SET_RELATIVE_ADDR, (uint32_t)sd_mmc_card->rca << 16)) {
1720:../libraries/Storage/sd_mmc.c **** 		return false;
1721:../libraries/Storage/sd_mmc.c **** 	}
ARM GAS  /tmp/ccTIydBQ.s 			page 72


1722:../libraries/Storage/sd_mmc.c **** 	// Get the Card-Specific Data
1723:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_cmd9_mci()) {
1724:../libraries/Storage/sd_mmc.c **** 		return false;
1725:../libraries/Storage/sd_mmc.c **** 	}
1726:../libraries/Storage/sd_mmc.c **** 	mmc_decode_csd();
1727:../libraries/Storage/sd_mmc.c **** 	// Select the and put it into Transfer Mode
1728:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->send_cmd(SDMMC_CMD7_SELECT_CARD_CMD, (uint32_t)sd_mmc_card->rca << 16)) {
1729:../libraries/Storage/sd_mmc.c **** 		return false;
1730:../libraries/Storage/sd_mmc.c **** 	}
1731:../libraries/Storage/sd_mmc.c **** 	if (sd_mmc_card->version >= CARD_VER_MMC_4) {
1732:../libraries/Storage/sd_mmc.c **** 		// For MMC 4.0 Higher version
1733:../libraries/Storage/sd_mmc.c **** 		// Get EXT_CSD
1734:../libraries/Storage/sd_mmc.c **** 		if (!mmc_cmd8(&b_authorize_high_speed)) {
1735:../libraries/Storage/sd_mmc.c **** 			return false;
1736:../libraries/Storage/sd_mmc.c **** 		}
1737:../libraries/Storage/sd_mmc.c **** 		if (4 <= sd_mmc_card->iface->get_bus_width(sd_mmc_card->slot)) {
1738:../libraries/Storage/sd_mmc.c **** 			// Enable more bus width
1739:../libraries/Storage/sd_mmc.c **** 			if (!mmc_cmd6_set_bus_width(sd_mmc_card->iface->get_bus_width(sd_mmc_card->slot))) {
1740:../libraries/Storage/sd_mmc.c **** 				return false;
1741:../libraries/Storage/sd_mmc.c **** 			}
1742:../libraries/Storage/sd_mmc.c **** 			// Re-initialize the slot with the bus width
1743:../libraries/Storage/sd_mmc.c **** 			sd_mmc_configure_slot();
1744:../libraries/Storage/sd_mmc.c **** 		}
1745:../libraries/Storage/sd_mmc.c **** 		if (sd_mmc_card->iface->is_high_speed_capable() && b_authorize_high_speed) {
1746:../libraries/Storage/sd_mmc.c **** 			// Enable HS
1747:../libraries/Storage/sd_mmc.c **** 			if (!mmc_cmd6_set_high_speed()) {
1748:../libraries/Storage/sd_mmc.c **** 				return false;
1749:../libraries/Storage/sd_mmc.c **** 			}
1750:../libraries/Storage/sd_mmc.c **** 			// Re-initialize the slot with the new speed
1751:../libraries/Storage/sd_mmc.c **** 			sd_mmc_configure_slot();
1752:../libraries/Storage/sd_mmc.c **** 		}
1753:../libraries/Storage/sd_mmc.c **** 	} else {
1754:../libraries/Storage/sd_mmc.c **** 		// Re-initialize the slot with the new speed
1755:../libraries/Storage/sd_mmc.c **** 		sd_mmc_configure_slot();
1756:../libraries/Storage/sd_mmc.c **** 	}
1757:../libraries/Storage/sd_mmc.c **** 
1758:../libraries/Storage/sd_mmc.c **** 	uint8_t retry = 10;
1759:../libraries/Storage/sd_mmc.c **** 	while (retry--) {
1760:../libraries/Storage/sd_mmc.c **** 		// Retry is a WORKAROUND for no compliance card (Atmel Internal ref. MMC19):
1761:../libraries/Storage/sd_mmc.c **** 		// These cards seem not ready immediatly
1762:../libraries/Storage/sd_mmc.c **** 		// after the end of busy of mmc_cmd6_set_high_speed()
1763:../libraries/Storage/sd_mmc.c **** 
1764:../libraries/Storage/sd_mmc.c **** 		// Set default block size
1765:../libraries/Storage/sd_mmc.c **** 		if (sd_mmc_card->iface->send_cmd(SDMMC_CMD16_SET_BLOCKLEN, SD_MMC_BLOCK_SIZE)) {
1766:../libraries/Storage/sd_mmc.c **** 			return true;
1767:../libraries/Storage/sd_mmc.c **** 		}
1768:../libraries/Storage/sd_mmc.c **** 	}
1769:../libraries/Storage/sd_mmc.c **** 	return false;
1770:../libraries/Storage/sd_mmc.c **** }
1771:../libraries/Storage/sd_mmc.c **** 
1772:../libraries/Storage/sd_mmc.c **** //-------------------------------------------------------------------
1773:../libraries/Storage/sd_mmc.c **** //--------------------- PUBLIC FUNCTIONS ----------------------------
1774:../libraries/Storage/sd_mmc.c **** 
1775:../libraries/Storage/sd_mmc.c **** void sd_mmc_init(const Pin wpPins[], const Pin spiCsPins[])
1776:../libraries/Storage/sd_mmc.c **** {
 1327              		.loc 2 1776 0
 1328              		.cfi_startproc
ARM GAS  /tmp/ccTIydBQ.s 			page 73


 1329              		@ args = 0, pretend = 0, frame = 0
 1330              		@ frame_needed = 0, uses_anonymous_args = 0
 1331              	.LVL87:
 1332 0000 70B5     		push	{r4, r5, r6, lr}
 1333              		.cfi_def_cfa_offset 16
 1334              		.cfi_offset 4, -16
 1335              		.cfi_offset 5, -12
 1336              		.cfi_offset 6, -8
 1337              		.cfi_offset 14, -4
 1338              	.LBB221:
 1339              	.LBB222:
1777:../libraries/Storage/sd_mmc.c **** 	for (size_t slot = 0; slot < SD_MMC_MEM_CNT; slot++)
1778:../libraries/Storage/sd_mmc.c **** 	{
1779:../libraries/Storage/sd_mmc.c **** 		struct sd_mmc_card *card = &sd_mmc_cards[slot];
1780:../libraries/Storage/sd_mmc.c **** 		card->state = SD_MMC_CARD_STATE_NO_CARD;
 1340              		.loc 2 1780 0
 1341 0002 0423     		movs	r3, #4
 1342 0004 144C     		ldr	r4, .L150
 1343              	.LBE222:
 1344              	.LBE221:
1776:../libraries/Storage/sd_mmc.c **** 	for (size_t slot = 0; slot < SD_MMC_MEM_CNT; slot++)
 1345              		.loc 2 1776 0
 1346 0006 0546     		mov	r5, r0
 1347 0008 0E46     		mov	r6, r1
 1348              	.LBB229:
 1349              	.LBB227:
 1350              		.loc 2 1780 0
 1351 000a 2374     		strb	r3, [r4, #16]
1781:../libraries/Storage/sd_mmc.c **** 		card->wp_gpio = wpPins[slot];
 1352              		.loc 2 1781 0
 1353 000c 0078     		ldrb	r0, [r0]	@ zero_extendqisi2
 1354              	.LVL88:
1782:../libraries/Storage/sd_mmc.c **** 		if (card->wp_gpio != NoPin)
 1355              		.loc 2 1782 0
 1356 000e FF28     		cmp	r0, #255
1781:../libraries/Storage/sd_mmc.c **** 		card->wp_gpio = wpPins[slot];
 1357              		.loc 2 1781 0
 1358 0010 2073     		strb	r0, [r4, #12]
 1359              		.loc 2 1782 0
 1360 0012 03D0     		beq	.L141
 1361              	.LVL89:
 1362              	.LBB223:
 1363              	.LBB224:
 1364              		.file 4 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h"
   1:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** /*
   2:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****   Copyright (c) 2011 Arduino.  All right reserved.
   3:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 
   4:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****   This library is free software; you can redistribute it and/or
   5:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****   modify it under the terms of the GNU Lesser General Public
   6:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****   License as published by the Free Software Foundation; either
   7:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****   version 2.1 of the License, or (at your option) any later version.
   8:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 
   9:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****   This library is distributed in the hope that it will be useful,
  10:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****   but WITHOUT ANY WARRANTY; without even the implied warranty of
  11:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
  12:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****   See the GNU Lesser General Public License for more details.
  13:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 
ARM GAS  /tmp/ccTIydBQ.s 			page 74


  14:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****   You should have received a copy of the GNU Lesser General Public
  15:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****   License along with this library; if not, write to the Free Software
  16:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****   Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
  17:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** */
  18:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 
  19:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** #ifndef _WIRING_DIGITAL_
  20:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** #define _WIRING_DIGITAL_
  21:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 
  22:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** #ifdef __cplusplus
  23:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** extern "C" {
  24:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** #endif
  25:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 
  26:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** // Pin mode enumeration. Would ideally be a C++ scoped enum, but we need to use it from C library f
  27:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** enum PinMode
  28:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** {
  29:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 	PIN_MODE_NOT_CONFIGURED = -1,	// used in Platform class to record that the mode for a pin has not 
  30:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 	INPUT = 0,						// pin is a digital input
  31:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 	INPUT_PULLUP,					// pin is a digital input with pullup enabled
  32:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** #if SAM4E || SAM4S || SAME70
  33:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 	INPUT_PULLDOWN,					// pin is a digital input with pulldown enabled
  34:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** #else
  35:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 	INPUT_PULLDOWN_NOT_AVAILABLE,
  36:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** #endif
  37:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 	OUTPUT_LOW,						// pin is an output with initial state LOW
  38:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 	OUTPUT_HIGH,					// pin is an output with initial state HIGH
  39:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 	AIN,							// pin is an analog input, digital input buffer is disabled if possible
  40:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 	SPECIAL,						// pin is used for the special function defined for it in the variant.cpp file
  41:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 	OUTPUT_PWM_LOW,					// PWM output mode, initially low
  42:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 	OUTPUT_PWM_HIGH,				// PWM output mode, initially high
  43:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 	OUTPUT_LOW_OPEN_DRAIN,			// used in SX1509B expansion driver to put the pin in open drain output m
  44:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 	OUTPUT_HIGH_OPEN_DRAIN,			// used in SX1509B expansion driver to put the pin in open drain output 
  45:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 	OUTPUT_PWM_OPEN_DRAIN			// used in SX1509B expansion driver to put the pin in PWM output mode
  46:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** };
  47:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 
  48:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** /**
  49:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****  * \brief Configures the specified pin to behave either as an input or an output. See the descripti
  50:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****  *
  51:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****  * \param ulPin The number of the pin whose mode you wish to set
  52:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****  * \param ulMode Either INPUT or OUTPUT
  53:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****  * \param debounceCutoff Debounce cutoff frequency (only one can be set per PIO)
  54:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****  */
  55:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** extern void pinModeDuet(Pin pin, enum PinMode dwMode, uint32_t debounceCutoff);
  56:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 
  57:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** inline void pinMode(Pin pin, enum PinMode dwMode)
  58:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** {
  59:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 	pinModeDuet(pin, dwMode, 0);
 1365              		.loc 4 59 0
 1366 0014 0022     		movs	r2, #0
 1367 0016 0121     		movs	r1, #1
 1368              	.LVL90:
 1369 0018 FFF7FEFF 		bl	pinModeDuet
 1370              	.LVL91:
 1371              	.L141:
 1372              	.LBE224:
 1373              	.LBE223:
1783:../libraries/Storage/sd_mmc.c **** 		{
1784:../libraries/Storage/sd_mmc.c **** 			pinMode(card->wp_gpio, INPUT_PULLUP);
ARM GAS  /tmp/ccTIydBQ.s 			page 75


1785:../libraries/Storage/sd_mmc.c **** 		}
1786:../libraries/Storage/sd_mmc.c **** #if SD_MMC_HSMCI_MEM_CNT != 0
1787:../libraries/Storage/sd_mmc.c **** 		if (slot < SD_MMC_HSMCI_MEM_CNT)
1788:../libraries/Storage/sd_mmc.c **** 		{
1789:../libraries/Storage/sd_mmc.c **** 			card->iface = &hsmciInterface;
 1374              		.loc 2 1789 0
 1375 001c 0F49     		ldr	r1, .L150+4
1790:../libraries/Storage/sd_mmc.c **** 			card->slot = slot;
 1376              		.loc 2 1790 0
 1377 001e 0022     		movs	r2, #0
1780:../libraries/Storage/sd_mmc.c **** 		card->wp_gpio = wpPins[slot];
 1378              		.loc 2 1780 0
 1379 0020 0423     		movs	r3, #4
1789:../libraries/Storage/sd_mmc.c **** 			card->slot = slot;
 1380              		.loc 2 1789 0
 1381 0022 2160     		str	r1, [r4]
 1382              		.loc 2 1790 0
 1383 0024 E274     		strb	r2, [r4, #19]
 1384              	.LVL92:
1780:../libraries/Storage/sd_mmc.c **** 		card->wp_gpio = wpPins[slot];
 1385              		.loc 2 1780 0
 1386 0026 84F83830 		strb	r3, [r4, #56]
1781:../libraries/Storage/sd_mmc.c **** 		if (card->wp_gpio != NoPin)
 1387              		.loc 2 1781 0
 1388 002a 6878     		ldrb	r0, [r5, #1]	@ zero_extendqisi2
1782:../libraries/Storage/sd_mmc.c **** 		{
 1389              		.loc 2 1782 0
 1390 002c FF28     		cmp	r0, #255
1781:../libraries/Storage/sd_mmc.c **** 		if (card->wp_gpio != NoPin)
 1391              		.loc 2 1781 0
 1392 002e 84F83400 		strb	r0, [r4, #52]
1782:../libraries/Storage/sd_mmc.c **** 		{
 1393              		.loc 2 1782 0
 1394 0032 02D0     		beq	.L142
 1395              	.LVL93:
 1396              	.LBB226:
 1397              	.LBB225:
 1398              		.loc 4 59 0
 1399 0034 0121     		movs	r1, #1
 1400 0036 FFF7FEFF 		bl	pinModeDuet
 1401              	.LVL94:
 1402              	.L142:
 1403              	.LBE225:
 1404              	.LBE226:
1791:../libraries/Storage/sd_mmc.c **** 		}
1792:../libraries/Storage/sd_mmc.c **** 		else
1793:../libraries/Storage/sd_mmc.c **** #endif
1794:../libraries/Storage/sd_mmc.c **** 		{
1795:../libraries/Storage/sd_mmc.c **** #if (SD_MMC_SPI_MEM_CNT != 0)
1796:../libraries/Storage/sd_mmc.c **** 			card->iface = &spiInterface;
 1405              		.loc 2 1796 0
 1406 003a 0948     		ldr	r0, .L150+8
1797:../libraries/Storage/sd_mmc.c **** 			card->slot = slot - SD_MMC_HSMCI_MEM_CNT;
 1407              		.loc 2 1797 0
 1408 003c 0021     		movs	r1, #0
 1409              	.LBE227:
 1410              	.LBE229:
ARM GAS  /tmp/ccTIydBQ.s 			page 76


1798:../libraries/Storage/sd_mmc.c **** #endif
1799:../libraries/Storage/sd_mmc.c **** 		}
1800:../libraries/Storage/sd_mmc.c **** 	}
1801:../libraries/Storage/sd_mmc.c **** 	sd_mmc_slot_sel = 0xFF;					// No slot selected
 1411              		.loc 2 1801 0
 1412 003e 094B     		ldr	r3, .L150+12
 1413 0040 FF22     		movs	r2, #255
 1414              	.LBB230:
 1415              	.LBB228:
1796:../libraries/Storage/sd_mmc.c **** 			card->slot = slot - SD_MMC_HSMCI_MEM_CNT;
 1416              		.loc 2 1796 0
 1417 0042 A062     		str	r0, [r4, #40]
1797:../libraries/Storage/sd_mmc.c **** 			card->slot = slot - SD_MMC_HSMCI_MEM_CNT;
 1418              		.loc 2 1797 0
 1419 0044 84F83B10 		strb	r1, [r4, #59]
 1420              	.LVL95:
 1421              	.LBE228:
 1422              	.LBE230:
 1423              		.loc 2 1801 0
 1424 0048 1A70     		strb	r2, [r3]
1802:../libraries/Storage/sd_mmc.c **** 
1803:../libraries/Storage/sd_mmc.c **** #if SD_MMC_HSMCI_MEM_CNT != 0
1804:../libraries/Storage/sd_mmc.c **** 	hsmci_init();
 1425              		.loc 2 1804 0
 1426 004a FFF7FEFF 		bl	hsmci_init
 1427              	.LVL96:
1805:../libraries/Storage/sd_mmc.c **** #endif
1806:../libraries/Storage/sd_mmc.c **** 
1807:../libraries/Storage/sd_mmc.c **** #if SD_MMC_SPI_MEM_CNT != 0
1808:../libraries/Storage/sd_mmc.c **** 	sd_mmc_spi_init(spiCsPins);
 1428              		.loc 2 1808 0
 1429 004e 3046     		mov	r0, r6
1809:../libraries/Storage/sd_mmc.c **** #endif
1810:../libraries/Storage/sd_mmc.c **** }
 1430              		.loc 2 1810 0
 1431 0050 BDE87040 		pop	{r4, r5, r6, lr}
 1432              		.cfi_restore 14
 1433              		.cfi_restore 6
 1434              		.cfi_restore 5
 1435              		.cfi_restore 4
 1436              		.cfi_def_cfa_offset 0
 1437              	.LVL97:
1808:../libraries/Storage/sd_mmc.c **** #endif
 1438              		.loc 2 1808 0
 1439 0054 FFF7FEBF 		b	sd_mmc_spi_init
 1440              	.LVL98:
 1441              	.L151:
 1442              		.align	2
 1443              	.L150:
 1444 0058 00000000 		.word	.LANCHOR4
 1445 005c 00000000 		.word	.LANCHOR6
 1446 0060 00000000 		.word	.LANCHOR7
 1447 0064 00000000 		.word	.LANCHOR5
 1448              		.cfi_endproc
 1449              	.LFE258:
 1450              		.size	sd_mmc_init, .-sd_mmc_init
 1451              		.section	.text.sd_mmc_nb_slot,"ax",%progbits
ARM GAS  /tmp/ccTIydBQ.s 			page 77


 1452              		.align	1
 1453              		.p2align 2,,3
 1454              		.global	sd_mmc_nb_slot
 1455              		.syntax unified
 1456              		.thumb
 1457              		.thumb_func
 1458              		.fpu fpv5-d16
 1459              		.type	sd_mmc_nb_slot, %function
 1460              	sd_mmc_nb_slot:
 1461              	.LFB259:
1811:../libraries/Storage/sd_mmc.c **** 
1812:../libraries/Storage/sd_mmc.c **** uint8_t sd_mmc_nb_slot(void)
1813:../libraries/Storage/sd_mmc.c **** {
 1462              		.loc 2 1813 0
 1463              		.cfi_startproc
 1464              		@ args = 0, pretend = 0, frame = 0
 1465              		@ frame_needed = 0, uses_anonymous_args = 0
 1466              		@ link register save eliminated.
1814:../libraries/Storage/sd_mmc.c **** 	return SD_MMC_MEM_CNT;
1815:../libraries/Storage/sd_mmc.c **** }
 1467              		.loc 2 1815 0
 1468 0000 0220     		movs	r0, #2
 1469 0002 7047     		bx	lr
 1470              		.cfi_endproc
 1471              	.LFE259:
 1472              		.size	sd_mmc_nb_slot, .-sd_mmc_nb_slot
 1473              		.section	.text.sd_mmc_check,"ax",%progbits
 1474              		.align	1
 1475              		.p2align 2,,3
 1476              		.global	sd_mmc_check
 1477              		.syntax unified
 1478              		.thumb
 1479              		.thumb_func
 1480              		.fpu fpv5-d16
 1481              		.type	sd_mmc_check, %function
 1482              	sd_mmc_check:
 1483              	.LFB260:
1816:../libraries/Storage/sd_mmc.c **** 
1817:../libraries/Storage/sd_mmc.c **** sd_mmc_err_t sd_mmc_check(uint8_t slot)
1818:../libraries/Storage/sd_mmc.c **** {
 1484              		.loc 2 1818 0
 1485              		.cfi_startproc
 1486              		@ args = 0, pretend = 0, frame = 72
 1487              		@ frame_needed = 0, uses_anonymous_args = 0
 1488              	.LVL99:
 1489              	.LBB281:
 1490              	.LBB282:
1343:../libraries/Storage/sd_mmc.c **** 		return SD_MMC_ERR_SLOT;
 1491              		.loc 2 1343 0
 1492 0000 0128     		cmp	r0, #1
 1493              	.LBE282:
 1494              	.LBE281:
 1495              		.loc 2 1818 0
 1496 0002 F0B5     		push	{r4, r5, r6, r7, lr}
 1497              		.cfi_def_cfa_offset 20
 1498              		.cfi_offset 4, -20
 1499              		.cfi_offset 5, -16
ARM GAS  /tmp/ccTIydBQ.s 			page 78


 1500              		.cfi_offset 6, -12
 1501              		.cfi_offset 7, -8
 1502              		.cfi_offset 14, -4
 1503 0004 95B0     		sub	sp, sp, #84
 1504              		.cfi_def_cfa_offset 104
 1505              	.LBB286:
 1506              	.LBB283:
1343:../libraries/Storage/sd_mmc.c **** 		return SD_MMC_ERR_SLOT;
 1507              		.loc 2 1343 0
 1508 0006 23D9     		bls	.L372
1344:../libraries/Storage/sd_mmc.c **** 	}
 1509              		.loc 2 1344 0
 1510 0008 0424     		movs	r4, #4
 1511              	.LVL100:
 1512              	.L154:
 1513              	.LBE283:
 1514              	.LBE286:
 1515              	.LBB287:
 1516              	.LBB288:
1419:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->iface->deselect_device(sd_mmc_card->slot);
 1517              		.loc 2 1419 0
 1518 000a 944B     		ldr	r3, .L383
 1519 000c 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1520 000e 012B     		cmp	r3, #1
 1521 0010 19D9     		bls	.L365
 1522              	.L233:
 1523              	.LBE288:
 1524              	.LBE287:
1819:../libraries/Storage/sd_mmc.c **** #if 1	//dc42
1820:../libraries/Storage/sd_mmc.c **** 	sd_mmc_err_t sd_mmc_err;
1821:../libraries/Storage/sd_mmc.c **** 	do
1822:../libraries/Storage/sd_mmc.c **** 	{
1823:../libraries/Storage/sd_mmc.c **** 		sd_mmc_err = sd_mmc_select_slot(slot);
1824:../libraries/Storage/sd_mmc.c **** 	} while (sd_mmc_err == SD_MMC_CD_DEBOUNCING);
1825:../libraries/Storage/sd_mmc.c **** #else
1826:../libraries/Storage/sd_mmc.c **** 	sd_mmc_err_t sd_mmc_err = sd_mmc_select_slot(slot);
1827:../libraries/Storage/sd_mmc.c **** #endif
1828:../libraries/Storage/sd_mmc.c **** 	if (sd_mmc_err != SD_MMC_INIT_ONGOING)
1829:../libraries/Storage/sd_mmc.c **** 	{
1830:../libraries/Storage/sd_mmc.c **** 		sd_mmc_deselect_slot();
1831:../libraries/Storage/sd_mmc.c **** 		return sd_mmc_err;
1832:../libraries/Storage/sd_mmc.c **** 	}
1833:../libraries/Storage/sd_mmc.c **** 
1834:../libraries/Storage/sd_mmc.c **** 	// Initialization of the card requested
1835:../libraries/Storage/sd_mmc.c **** 	if (sd_mmc_card->iface->is_spi ? sd_mmc_spi_card_init() : sd_mmc_mci_card_init()) {
1836:../libraries/Storage/sd_mmc.c **** 		sd_mmc_debug("SD/MMC card ready\n\r");
1837:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->state = SD_MMC_CARD_STATE_READY;
1838:../libraries/Storage/sd_mmc.c **** 		sd_mmc_deselect_slot();
1839:../libraries/Storage/sd_mmc.c **** #if 1
1840:../libraries/Storage/sd_mmc.c **** 		// If we return SD_MMC_INIT_ONGOING here then I can't see how we can ever access the card
1841:../libraries/Storage/sd_mmc.c **** 		return SD_MMC_OK;
1842:../libraries/Storage/sd_mmc.c **** #else
1843:../libraries/Storage/sd_mmc.c **** 		// To notify that the card has been just initialized
1844:../libraries/Storage/sd_mmc.c **** 		// It is necessary for USB Device MSC
1845:../libraries/Storage/sd_mmc.c **** 		return SD_MMC_INIT_ONGOING;
1846:../libraries/Storage/sd_mmc.c **** #endif
1847:../libraries/Storage/sd_mmc.c **** 	}
ARM GAS  /tmp/ccTIydBQ.s 			page 79


1848:../libraries/Storage/sd_mmc.c **** 	sd_mmc_debug("SD/MMC card initialization failed\n\r");
1849:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->state = SD_MMC_CARD_STATE_UNUSABLE;
1850:../libraries/Storage/sd_mmc.c **** 	sd_mmc_deselect_slot();
1851:../libraries/Storage/sd_mmc.c **** 	return SD_MMC_ERR_UNUSABLE;
1852:../libraries/Storage/sd_mmc.c **** }
 1525              		.loc 2 1852 0
 1526 0012 2046     		mov	r0, r4
 1527 0014 15B0     		add	sp, sp, #84
 1528              		.cfi_remember_state
 1529              		.cfi_def_cfa_offset 20
 1530              		@ sp needed
 1531 0016 F0BD     		pop	{r4, r5, r6, r7, pc}
 1532              	.L158:
 1533              		.cfi_restore_state
 1534              	.LBB289:
 1535              	.LBB290:
1526:../libraries/Storage/sd_mmc.c **** 
 1536              		.loc 2 1526 0
 1537 0018 8DF80F50 		strb	r5, [sp, #15]
1529:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->version = CARD_VER_UNKNOWN;
 1538              		.loc 2 1529 0
 1539 001c 5874     		strb	r0, [r3, #17]
1530:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->rca = 0;
 1540              		.loc 2 1530 0
 1541 001e 9D74     		strb	r5, [r3, #18]
1531:../libraries/Storage/sd_mmc.c **** 	sd_mmc_debug("Start SD card install\n\r");
 1542              		.loc 2 1531 0
 1543 0020 DD81     		strh	r5, [r3, #14]	@ movhi
1535:../libraries/Storage/sd_mmc.c **** 
 1544              		.loc 2 1535 0
 1545 0022 1369     		ldr	r3, [r2, #16]
 1546 0024 9847     		blx	r3
 1547              	.LVL101:
1538:../libraries/Storage/sd_mmc.c **** 		return false;
 1548              		.loc 2 1538 0
 1549 0026 2368     		ldr	r3, [r4]
 1550 0028 2946     		mov	r1, r5
 1551 002a 4FF48040 		mov	r0, #16384
 1552 002e 1B68     		ldr	r3, [r3]
 1553 0030 5B69     		ldr	r3, [r3, #20]
 1554 0032 9847     		blx	r3
 1555              	.LVL102:
 1556 0034 0028     		cmp	r0, #0
 1557 0036 66D1     		bne	.L373
 1558              	.L218:
 1559 0038 2368     		ldr	r3, [r4]
 1560              	.L221:
 1561              	.LBE290:
 1562              	.LBE289:
 1563              	.LBB342:
 1564              	.LBB343:
1419:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->iface->deselect_device(sd_mmc_card->slot);
 1565              		.loc 2 1419 0
 1566 003a 884A     		ldr	r2, .L383
 1567              	.LBE343:
 1568              	.LBE342:
1849:../libraries/Storage/sd_mmc.c **** 	sd_mmc_deselect_slot();
ARM GAS  /tmp/ccTIydBQ.s 			page 80


 1569              		.loc 2 1849 0
 1570 003c 0324     		movs	r4, #3
 1571              	.LBB346:
 1572              	.LBB344:
1419:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->iface->deselect_device(sd_mmc_card->slot);
 1573              		.loc 2 1419 0
 1574 003e 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 1575              	.LBE344:
 1576              	.LBE346:
1849:../libraries/Storage/sd_mmc.c **** 	sd_mmc_deselect_slot();
 1577              		.loc 2 1849 0
 1578 0040 1C74     		strb	r4, [r3, #16]
 1579              	.LBB347:
 1580              	.LBB345:
1419:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->iface->deselect_device(sd_mmc_card->slot);
 1581              		.loc 2 1419 0
 1582 0042 012A     		cmp	r2, #1
 1583 0044 E5D8     		bhi	.L233
 1584              	.L365:
 1585 0046 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 1586              	.LVL103:
 1587              	.LBE345:
 1588              	.LBE347:
 1589              		.loc 2 1852 0
 1590 004a 2046     		mov	r0, r4
 1591 004c 15B0     		add	sp, sp, #84
 1592              		.cfi_remember_state
 1593              		.cfi_def_cfa_offset 20
 1594              		@ sp needed
 1595 004e F0BD     		pop	{r4, r5, r6, r7, pc}
 1596              	.LVL104:
 1597              	.L372:
 1598              		.cfi_restore_state
 1599 0050 0546     		mov	r5, r0
 1600              	.LVL105:
 1601              	.L317:
 1602              	.LBB348:
 1603              	.LBB284:
 1604 0052 2846     		mov	r0, r5
 1605 0054 FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 1606              	.LVL106:
 1607              	.LBE284:
 1608              	.LBE348:
1824:../libraries/Storage/sd_mmc.c **** #else
 1609              		.loc 2 1824 0
 1610 0058 0828     		cmp	r0, #8
 1611              	.LBB349:
 1612              	.LBB285:
 1613 005a 0446     		mov	r4, r0
 1614              	.LVL107:
 1615              	.LBE285:
 1616              	.LBE349:
 1617 005c F9D0     		beq	.L317
1828:../libraries/Storage/sd_mmc.c **** 	{
 1618              		.loc 2 1828 0
 1619 005e 0128     		cmp	r0, #1
 1620 0060 D3D1     		bne	.L154
ARM GAS  /tmp/ccTIydBQ.s 			page 81


1835:../libraries/Storage/sd_mmc.c **** 		sd_mmc_debug("SD/MMC card ready\n\r");
 1621              		.loc 2 1835 0
 1622 0062 7F4C     		ldr	r4, .L383+4
 1623 0064 2368     		ldr	r3, [r4]
 1624 0066 1A68     		ldr	r2, [r3]
 1625 0068 92F84850 		ldrb	r5, [r2, #72]	@ zero_extendqisi2
 1626 006c 002D     		cmp	r5, #0
 1627 006e D3D0     		beq	.L158
 1628              	.LBB350:
 1629              	.LBB351:
1437:../libraries/Storage/sd_mmc.c **** 
 1630              		.loc 2 1437 0
 1631 0070 0025     		movs	r5, #0
 1632 0072 8DF80F50 		strb	r5, [sp, #15]
1440:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->version = CARD_VER_UNKNOWN;
 1633              		.loc 2 1440 0
 1634 0076 5874     		strb	r0, [r3, #17]
1441:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->rca = 0;
 1635              		.loc 2 1441 0
 1636 0078 9D74     		strb	r5, [r3, #18]
1442:../libraries/Storage/sd_mmc.c **** 	sd_mmc_debug("Start SD card install\n\r");
 1637              		.loc 2 1442 0
 1638 007a DD81     		strh	r5, [r3, #14]	@ movhi
1446:../libraries/Storage/sd_mmc.c **** 
 1639              		.loc 2 1446 0
 1640 007c 1369     		ldr	r3, [r2, #16]
 1641 007e 9847     		blx	r3
 1642              	.LVL108:
1449:../libraries/Storage/sd_mmc.c **** 		return false;
 1643              		.loc 2 1449 0
 1644 0080 2368     		ldr	r3, [r4]
 1645 0082 2946     		mov	r1, r5
 1646 0084 4FF48850 		mov	r0, #4352
 1647 0088 1B68     		ldr	r3, [r3]
 1648 008a 5B69     		ldr	r3, [r3, #20]
 1649 008c 9847     		blx	r3
 1650              	.LVL109:
 1651 008e 60B9     		cbnz	r0, .L374
 1652              	.L171:
 1653              	.LBB352:
 1654              	.LBB353:
1656:../libraries/Storage/sd_mmc.c **** 	}
 1655              		.loc 2 1656 0
 1656 0090 0025     		movs	r5, #0
 1657              	.L364:
 1658 0092 2368     		ldr	r3, [r4]
 1659              	.L179:
 1660              	.LBE353:
 1661              	.LBE352:
 1662              	.LBE351:
 1663              	.LBE350:
1835:../libraries/Storage/sd_mmc.c **** 		sd_mmc_debug("SD/MMC card ready\n\r");
 1664              		.loc 2 1835 0 discriminator 4
 1665 0094 002D     		cmp	r5, #0
 1666 0096 D0D0     		beq	.L221
 1667              	.LBB369:
 1668              	.LBB370:
ARM GAS  /tmp/ccTIydBQ.s 			page 82


1419:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->iface->deselect_device(sd_mmc_card->slot);
 1669              		.loc 2 1419 0
 1670 0098 704A     		ldr	r2, .L383
 1671              	.LBE370:
 1672              	.LBE369:
1837:../libraries/Storage/sd_mmc.c **** 		sd_mmc_deselect_slot();
 1673              		.loc 2 1837 0
 1674 009a 0024     		movs	r4, #0
 1675              	.LBB373:
 1676              	.LBB371:
1419:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->iface->deselect_device(sd_mmc_card->slot);
 1677              		.loc 2 1419 0
 1678 009c 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 1679              	.LBE371:
 1680              	.LBE373:
1837:../libraries/Storage/sd_mmc.c **** 		sd_mmc_deselect_slot();
 1681              		.loc 2 1837 0
 1682 009e 1C74     		strb	r4, [r3, #16]
 1683              	.LBB374:
 1684              	.LBB372:
1419:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->iface->deselect_device(sd_mmc_card->slot);
 1685              		.loc 2 1419 0
 1686 00a0 012A     		cmp	r2, #1
 1687 00a2 D0D9     		bls	.L365
 1688              	.LBE372:
 1689              	.LBE374:
 1690              		.loc 2 1852 0
 1691 00a4 2046     		mov	r0, r4
 1692 00a6 15B0     		add	sp, sp, #84
 1693              		.cfi_remember_state
 1694              		.cfi_def_cfa_offset 20
 1695              		@ sp needed
 1696 00a8 F0BD     		pop	{r4, r5, r6, r7, pc}
 1697              	.L374:
 1698              		.cfi_restore_state
 1699              	.LBB375:
 1700              	.LBB366:
1452:../libraries/Storage/sd_mmc.c **** 		return false;
 1701              		.loc 2 1452 0
 1702 00aa 0DF10F00 		add	r0, sp, #15
 1703 00ae FFF7FEFF 		bl	sd_cmd8
 1704              	.LVL110:
 1705 00b2 0546     		mov	r5, r0
 1706 00b4 0028     		cmp	r0, #0
 1707 00b6 EBD0     		beq	.L171
1460:../libraries/Storage/sd_mmc.c **** 		// Try to get the SD card's operating condition
 1708              		.loc 2 1460 0
 1709 00b8 2068     		ldr	r0, [r4]
 1710 00ba 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 1711 00bc D907     		lsls	r1, r3, #31
 1712 00be 00F19880 		bmi	.L375
 1713              	.L162:
1497:../libraries/Storage/sd_mmc.c **** 			(0 == (sd_mmc_card->type & CARD_TYPE_HC))) {
 1714              		.loc 2 1497 0
 1715 00c2 03F00903 		and	r3, r3, #9
 1716 00c6 012B     		cmp	r3, #1
 1717 00c8 11D1     		bne	.L178
ARM GAS  /tmp/ccTIydBQ.s 			page 83


 1718              	.L227:
1499:../libraries/Storage/sd_mmc.c **** 			return false;
 1719              		.loc 2 1499 0
 1720 00ca 0368     		ldr	r3, [r0]
 1721 00cc 4FF40071 		mov	r1, #512
 1722 00d0 41F21010 		movw	r0, #4368
 1723 00d4 5B69     		ldr	r3, [r3, #20]
 1724 00d6 9847     		blx	r3
 1725              	.LVL111:
 1726 00d8 0028     		cmp	r0, #0
 1727 00da D9D0     		beq	.L171
 1728 00dc 2068     		ldr	r0, [r4]
 1729 00de 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 1730              	.L177:
1504:../libraries/Storage/sd_mmc.c **** 		if (!sd_mmc_cmd13()) {
 1731              		.loc 2 1504 0
 1732 00e0 DE07     		lsls	r6, r3, #31
 1733 00e2 04D5     		bpl	.L178
1505:../libraries/Storage/sd_mmc.c **** 			return false;
 1734              		.loc 2 1505 0
 1735 00e4 FFF7FEFF 		bl	sd_mmc_cmd13
 1736              	.LVL112:
 1737 00e8 0028     		cmp	r0, #0
 1738 00ea D1D0     		beq	.L171
 1739              	.L363:
 1740 00ec 2068     		ldr	r0, [r4]
 1741              	.L178:
 1742              	.LBB358:
 1743              	.LBB359:
1411:../libraries/Storage/sd_mmc.c **** }
 1744              		.loc 2 1411 0
 1745 00ee 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 1746 00f2 0168     		ldr	r1, [r0]
 1747 00f4 0033     		adds	r3, r3, #0
 1748 00f6 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 1749 00f8 0E68     		ldr	r6, [r1]
 1750 00fa 18BF     		it	ne
 1751 00fc 0123     		movne	r3, #1
 1752 00fe 4168     		ldr	r1, [r0, #4]
 1753 0100 C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 1754 0102 B047     		blx	r6
 1755              	.LVL113:
 1756 0104 C5E7     		b	.L364
 1757              	.L373:
 1758              	.LBE359:
 1759              	.LBE358:
 1760              	.LBE366:
 1761              	.LBE375:
 1762              	.LBB376:
 1763              	.LBB339:
1541:../libraries/Storage/sd_mmc.c **** 		return false;
 1764              		.loc 2 1541 0
 1765 0106 0DF10F00 		add	r0, sp, #15
 1766 010a FFF7FEFF 		bl	sd_cmd8
 1767              	.LVL114:
 1768 010e 2368     		ldr	r3, [r4]
 1769 0110 0028     		cmp	r0, #0
ARM GAS  /tmp/ccTIydBQ.s 			page 84


 1770 0112 92D0     		beq	.L221
1549:../libraries/Storage/sd_mmc.c **** 		// Try to get the SD card's operating condition
 1771              		.loc 2 1549 0
 1772 0114 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1773 0116 D007     		lsls	r0, r2, #31
 1774 0118 00F1FB80 		bmi	.L376
 1775              	.L183:
1567:../libraries/Storage/sd_mmc.c **** 		return false;
 1776              		.loc 2 1567 0
 1777 011c 1B68     		ldr	r3, [r3]
 1778 011e 0021     		movs	r1, #0
 1779 0120 45F20310 		movw	r0, #20739
 1780 0124 5B69     		ldr	r3, [r3, #20]
 1781 0126 9847     		blx	r3
 1782              	.LVL115:
 1783 0128 0028     		cmp	r0, #0
 1784 012a 85D0     		beq	.L218
1570:../libraries/Storage/sd_mmc.c **** 
 1785              		.loc 2 1570 0
 1786 012c 2568     		ldr	r5, [r4]
 1787 012e 2B68     		ldr	r3, [r5]
 1788 0130 9B69     		ldr	r3, [r3, #24]
 1789 0132 9847     		blx	r3
 1790              	.LVL116:
1573:../libraries/Storage/sd_mmc.c **** 		if (!sd_mmc_cmd9_mci()) {
 1791              		.loc 2 1573 0
 1792 0134 2368     		ldr	r3, [r4]
1570:../libraries/Storage/sd_mmc.c **** 
 1793              		.loc 2 1570 0
 1794 0136 000C     		lsrs	r0, r0, #16
 1795 0138 E881     		strh	r0, [r5, #14]	@ movhi
1573:../libraries/Storage/sd_mmc.c **** 		if (!sd_mmc_cmd9_mci()) {
 1796              		.loc 2 1573 0
 1797 013a 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1798 013c D107     		lsls	r1, r2, #31
 1799 013e 07D5     		bpl	.L206
1574:../libraries/Storage/sd_mmc.c **** 			return false;
 1800              		.loc 2 1574 0
 1801 0140 FFF7FEFF 		bl	sd_mmc_cmd9_mci
 1802              	.LVL117:
 1803 0144 0028     		cmp	r0, #0
 1804 0146 3FF477AF 		beq	.L218
1577:../libraries/Storage/sd_mmc.c **** 	}
 1805              		.loc 2 1577 0
 1806 014a FFF7FEFF 		bl	sd_decode_csd
 1807              	.LVL118:
 1808 014e 2368     		ldr	r3, [r4]
 1809              	.L206:
1581:../libraries/Storage/sd_mmc.c **** 		return false;
 1810              		.loc 2 1581 0
 1811 0150 D989     		ldrh	r1, [r3, #14]
1580:../libraries/Storage/sd_mmc.c **** 			(uint32_t)sd_mmc_card->rca << 16)) {
 1812              		.loc 2 1580 0
 1813 0152 43F20710 		movw	r0, #12551
 1814 0156 1B68     		ldr	r3, [r3]
 1815 0158 0904     		lsls	r1, r1, #16
 1816 015a 5B69     		ldr	r3, [r3, #20]
ARM GAS  /tmp/ccTIydBQ.s 			page 85


 1817 015c 9847     		blx	r3
 1818              	.LVL119:
 1819 015e 2368     		ldr	r3, [r4]
 1820 0160 0546     		mov	r5, r0
 1821 0162 0028     		cmp	r0, #0
 1822 0164 3FF469AF 		beq	.L221
1585:../libraries/Storage/sd_mmc.c **** 		if (!sd_acmd51()) {
 1823              		.loc 2 1585 0
 1824 0168 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1825 016a D207     		lsls	r2, r2, #31
 1826 016c 05D5     		bpl	.L209
1586:../libraries/Storage/sd_mmc.c **** 			return false;
 1827              		.loc 2 1586 0
 1828 016e FFF7FEFF 		bl	sd_acmd51
 1829              	.LVL120:
 1830 0172 2368     		ldr	r3, [r4]
 1831 0174 0028     		cmp	r0, #0
 1832 0176 3FF460AF 		beq	.L221
 1833              	.L209:
1595:../libraries/Storage/sd_mmc.c **** 		// TRY to enable 4-bit mode
 1834              		.loc 2 1595 0
 1835 017a 1A68     		ldr	r2, [r3]
 1836 017c D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 1837 017e 9368     		ldr	r3, [r2, #8]
 1838 0180 9847     		blx	r3
 1839              	.LVL121:
 1840 0182 0328     		cmp	r0, #3
 1841 0184 0FD9     		bls	.L211
1602:../libraries/Storage/sd_mmc.c **** 			if (!sd_acmd6()) {
 1842              		.loc 2 1602 0
 1843 0186 2668     		ldr	r6, [r4]
 1844 0188 737C     		ldrb	r3, [r6, #17]	@ zero_extendqisi2
 1845 018a DF07     		lsls	r7, r3, #31
 1846 018c 00F1DD81 		bmi	.L212
 1847 0190 327D     		ldrb	r2, [r6, #20]	@ zero_extendqisi2
 1848              	.L213:
 1849              	.LBB291:
 1850              	.LBB292:
1411:../libraries/Storage/sd_mmc.c **** }
 1851              		.loc 2 1411 0
 1852 0192 96F82530 		ldrb	r3, [r6, #37]	@ zero_extendqisi2
 1853 0196 3068     		ldr	r0, [r6]
 1854 0198 0033     		adds	r3, r3, #0
 1855 019a 7168     		ldr	r1, [r6, #4]
 1856 019c 0768     		ldr	r7, [r0]
 1857 019e 18BF     		it	ne
 1858 01a0 0123     		movne	r3, #1
 1859 01a2 F07C     		ldrb	r0, [r6, #19]	@ zero_extendqisi2
 1860 01a4 B847     		blx	r7
 1861              	.LVL122:
 1862              	.L211:
 1863              	.LBE292:
 1864              	.LBE291:
1610:../libraries/Storage/sd_mmc.c **** 		// TRY to enable High-Speed Mode
 1865              		.loc 2 1610 0
 1866 01a6 2368     		ldr	r3, [r4]
 1867 01a8 1B68     		ldr	r3, [r3]
ARM GAS  /tmp/ccTIydBQ.s 			page 86


 1868 01aa DB68     		ldr	r3, [r3, #12]
 1869 01ac 9847     		blx	r3
 1870              	.LVL123:
 1871 01ae 90B1     		cbz	r0, .L216
1617:../libraries/Storage/sd_mmc.c **** 			if (sd_mmc_card->version > CARD_VER_SD_1_0) {
 1872              		.loc 2 1617 0
 1873 01b0 2068     		ldr	r0, [r4]
 1874 01b2 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 1875 01b4 DE07     		lsls	r6, r3, #31
 1876 01b6 03D5     		bpl	.L217
1618:../libraries/Storage/sd_mmc.c **** 				if (!sd_cm6_set_high_speed()) {
 1877              		.loc 2 1618 0
 1878 01b8 837C     		ldrb	r3, [r0, #18]	@ zero_extendqisi2
 1879 01ba 102B     		cmp	r3, #16
 1880 01bc 00F2E481 		bhi	.L377
 1881              	.L217:
 1882              	.LBB293:
 1883              	.LBB294:
1411:../libraries/Storage/sd_mmc.c **** }
 1884              		.loc 2 1411 0
 1885 01c0 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 1886 01c4 0168     		ldr	r1, [r0]
 1887 01c6 0033     		adds	r3, r3, #0
 1888 01c8 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 1889 01ca 0E68     		ldr	r6, [r1]
 1890 01cc 18BF     		it	ne
 1891 01ce 0123     		movne	r3, #1
 1892 01d0 4168     		ldr	r1, [r0, #4]
 1893 01d2 C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 1894 01d4 B047     		blx	r6
 1895              	.LVL124:
 1896              	.L216:
 1897              	.LBE294:
 1898              	.LBE293:
1628:../libraries/Storage/sd_mmc.c **** 		if (!sd_mmc_card->iface->send_cmd(SDMMC_CMD16_SET_BLOCKLEN, SD_MMC_BLOCK_SIZE)) {
 1899              		.loc 2 1628 0
 1900 01d6 2368     		ldr	r3, [r4]
 1901 01d8 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1902 01da D207     		lsls	r2, r2, #31
 1903 01dc 7FF55AAF 		bpl	.L179
1629:../libraries/Storage/sd_mmc.c **** 			return false;
 1904              		.loc 2 1629 0
 1905 01e0 1B68     		ldr	r3, [r3]
 1906 01e2 4FF40071 		mov	r1, #512
 1907 01e6 41F21010 		movw	r0, #4368
 1908 01ea 5B69     		ldr	r3, [r3, #20]
 1909 01ec 9847     		blx	r3
 1910              	.LVL125:
 1911              	.L366:
 1912 01ee 0546     		mov	r5, r0
 1913 01f0 4FE7     		b	.L364
 1914              	.L375:
 1915              	.LVL126:
 1916 01f2 9DF80F30 		ldrb	r3, [sp, #15]	@ zero_extendqisi2
 1917              	.LBE339:
 1918              	.LBE376:
 1919              	.LBB377:
ARM GAS  /tmp/ccTIydBQ.s 			page 87


 1920              	.LBB367:
1462:../libraries/Storage/sd_mmc.c **** 			// It is not a SD card
 1921              		.loc 2 1462 0
 1922 01f6 41F6EF36 		movw	r6, #7151
 1923 01fa 002B     		cmp	r3, #0
 1924 01fc 14BF     		ite	ne
 1925 01fe 4FF08047 		movne	r7, #1073741824
 1926 0202 0027     		moveq	r7, #0
 1927 0204 11E0     		b	.L165
 1928              	.LVL127:
 1929              	.L378:
 1930              	.LBB360:
 1931              	.LBB361:
 474:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: ACMD41 Fail\n\r", __func__);
 1932              		.loc 2 474 0
 1933 0206 2368     		ldr	r3, [r4]
 1934 0208 41F22910 		movw	r0, #4393
 1935 020c 1B68     		ldr	r3, [r3]
 1936 020e 5B69     		ldr	r3, [r3, #20]
 1937 0210 9847     		blx	r3
 1938              	.LVL128:
 1939 0212 98B1     		cbz	r0, .L163
 478:../libraries/Storage/sd_mmc.c **** 		if (!(resp & R1_SPI_IDLE)) {
 1940              		.loc 2 478 0
 1941 0214 2368     		ldr	r3, [r4]
 1942 0216 1B68     		ldr	r3, [r3]
 1943 0218 9B69     		ldr	r3, [r3, #24]
 1944 021a 9847     		blx	r3
 1945              	.LVL129:
 479:../libraries/Storage/sd_mmc.c **** 			// Card is ready
 1946              		.loc 2 479 0
 1947 021c 10F00101 		ands	r1, r0, #1
 1948 0220 00F04881 		beq	.L164
 483:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: ACMD41 Timeout on busy, resp32 0x%08x \n\r",
 1949              		.loc 2 483 0
 1950 0224 013E     		subs	r6, r6, #1
 1951              	.LVL130:
 1952 0226 09D0     		beq	.L163
 1953 0228 2068     		ldr	r0, [r4]
 1954              	.LVL131:
 1955              	.L165:
 463:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: CMD55 Fail\n\r", __func__);
 1956              		.loc 2 463 0
 1957 022a 0368     		ldr	r3, [r0]
 1958 022c 0021     		movs	r1, #0
 1959 022e 41F23710 		movw	r0, #4407
 1960 0232 5B69     		ldr	r3, [r3, #20]
 1961 0234 9847     		blx	r3
 1962              	.LVL132:
 474:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: ACMD41 Fail\n\r", __func__);
 1963              		.loc 2 474 0
 1964 0236 3946     		mov	r1, r7
 463:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: CMD55 Fail\n\r", __func__);
 1965              		.loc 2 463 0
 1966 0238 0028     		cmp	r0, #0
 1967 023a E4D1     		bne	.L378
 1968              	.LVL133:
ARM GAS  /tmp/ccTIydBQ.s 			page 88


 1969              	.L163:
 1970              	.LBE361:
 1971              	.LBE360:
1465:../libraries/Storage/sd_mmc.c **** 			return sd_mmc_spi_install_mmc();
 1972              		.loc 2 1465 0
 1973 023c 2368     		ldr	r3, [r4]
 1974 023e 0225     		movs	r5, #2
 1975              	.LBB363:
 1976              	.LBB356:
1651:../libraries/Storage/sd_mmc.c **** 		return false;
 1977              		.loc 2 1651 0
 1978 0240 0021     		movs	r1, #0
 1979 0242 4FF48850 		mov	r0, #4352
 1980 0246 1A68     		ldr	r2, [r3]
 1981              	.LBE356:
 1982              	.LBE363:
1465:../libraries/Storage/sd_mmc.c **** 			return sd_mmc_spi_install_mmc();
 1983              		.loc 2 1465 0
 1984 0248 5D74     		strb	r5, [r3, #17]
 1985              	.LBB364:
 1986              	.LBB357:
1651:../libraries/Storage/sd_mmc.c **** 		return false;
 1987              		.loc 2 1651 0
 1988 024a 5369     		ldr	r3, [r2, #20]
 1989 024c 9847     		blx	r3
 1990              	.LVL134:
 1991 024e 0028     		cmp	r0, #0
 1992 0250 3FF41EAF 		beq	.L171
 1993 0254 41F6EF35 		movw	r5, #7151
 1994 0258 07E0     		b	.L172
 1995              	.L384:
 1996 025a 00BF     		.align	2
 1997              	.L383:
 1998 025c 00000000 		.word	.LANCHOR5
 1999 0260 00000000 		.word	.LANCHOR0
 2000              	.LVL135:
 2001              	.L379:
 2002              	.LBB354:
 2003              	.LBB355:
 380:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: CMD1 Timeout on busy\n\r", __func__);
 2004              		.loc 2 380 0
 2005 0264 013D     		subs	r5, r5, #1
 2006              	.LVL136:
 2007 0266 3FF413AF 		beq	.L171
 2008              	.LVL137:
 2009              	.L172:
 370:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: CMD1 SPI Fail - Busy retry %d\n\r",
 2010              		.loc 2 370 0
 2011 026a 2368     		ldr	r3, [r4]
 2012 026c 0021     		movs	r1, #0
 2013 026e 41F20110 		movw	r0, #4353
 2014 0272 1B68     		ldr	r3, [r3]
 2015 0274 5B69     		ldr	r3, [r3, #20]
 2016 0276 9847     		blx	r3
 2017              	.LVL138:
 2018 0278 0028     		cmp	r0, #0
 2019 027a 3FF409AF 		beq	.L171
ARM GAS  /tmp/ccTIydBQ.s 			page 89


 376:../libraries/Storage/sd_mmc.c **** 		if (!(resp & R1_SPI_IDLE)) {
 2020              		.loc 2 376 0
 2021 027e 2368     		ldr	r3, [r4]
 2022 0280 1B68     		ldr	r3, [r3]
 2023 0282 9B69     		ldr	r3, [r3, #24]
 2024 0284 9847     		blx	r3
 2025              	.LVL139:
 377:../libraries/Storage/sd_mmc.c **** 			break;
 2026              		.loc 2 377 0
 2027 0286 10F00101 		ands	r1, r0, #1
 2028 028a EBD1     		bne	.L379
 387:../libraries/Storage/sd_mmc.c **** 		sd_mmc_debug("%s: CMD58 Fail\n\r", __func__);
 2029              		.loc 2 387 0
 2030 028c 2368     		ldr	r3, [r4]
 2031 028e 40F23A50 		movw	r0, #1338
 2032              	.LVL140:
 2033 0292 1B68     		ldr	r3, [r3]
 2034 0294 5B69     		ldr	r3, [r3, #20]
 2035 0296 9847     		blx	r3
 2036              	.LVL141:
 2037 0298 0028     		cmp	r0, #0
 2038 029a 3FF4F9AE 		beq	.L171
 392:../libraries/Storage/sd_mmc.c **** 			== OCR_ACCESS_MODE_SECTOR) {
 2039              		.loc 2 392 0
 2040 029e 2368     		ldr	r3, [r4]
 2041 02a0 1B68     		ldr	r3, [r3]
 2042 02a2 9B69     		ldr	r3, [r3, #24]
 2043 02a4 9847     		blx	r3
 2044              	.LVL142:
 2045 02a6 00F0C040 		and	r0, r0, #1610612736
 394:../libraries/Storage/sd_mmc.c **** 	}
 2046              		.loc 2 394 0
 2047 02aa 2368     		ldr	r3, [r4]
 392:../libraries/Storage/sd_mmc.c **** 			== OCR_ACCESS_MODE_SECTOR) {
 2048              		.loc 2 392 0
 2049 02ac B0F1804F 		cmp	r0, #1073741824
 2050 02b0 03D1     		bne	.L174
 394:../libraries/Storage/sd_mmc.c **** 	}
 2051              		.loc 2 394 0
 2052 02b2 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 2053 02b4 42F00802 		orr	r2, r2, #8
 2054 02b8 5A74     		strb	r2, [r3, #17]
 2055              	.L174:
 2056              	.LVL143:
 2057              	.LBE355:
 2058              	.LBE354:
1660:../libraries/Storage/sd_mmc.c **** 		return false;
 2059              		.loc 2 1660 0
 2060 02ba 1B68     		ldr	r3, [r3]
 2061 02bc 0021     		movs	r1, #0
 2062 02be 41F23B10 		movw	r0, #4411
 2063 02c2 5B69     		ldr	r3, [r3, #20]
 2064 02c4 9847     		blx	r3
 2065              	.LVL144:
 2066 02c6 0028     		cmp	r0, #0
 2067 02c8 3FF4E2AE 		beq	.L171
1664:../libraries/Storage/sd_mmc.c **** 		return false;
ARM GAS  /tmp/ccTIydBQ.s 			page 90


 2068              		.loc 2 1664 0
 2069 02cc FFF7FEFF 		bl	sd_mmc_cmd9_spi
 2070              	.LVL145:
 2071 02d0 0028     		cmp	r0, #0
 2072 02d2 3FF4DDAE 		beq	.L171
1667:../libraries/Storage/sd_mmc.c **** 	// For MMC 4.0 Higher version
 2073              		.loc 2 1667 0
 2074 02d6 FFF7FEFF 		bl	mmc_decode_csd
 2075              	.LVL146:
1669:../libraries/Storage/sd_mmc.c **** 		// Get EXT_CSD
 2076              		.loc 2 1669 0
 2077 02da 2368     		ldr	r3, [r4]
 2078 02dc 9A7C     		ldrb	r2, [r3, #18]	@ zero_extendqisi2
 2079 02de 3F2A     		cmp	r2, #63
 2080 02e0 06D9     		bls	.L175
1671:../libraries/Storage/sd_mmc.c **** 			return false;
 2081              		.loc 2 1671 0
 2082 02e2 04A8     		add	r0, sp, #16
 2083 02e4 FFF7FEFF 		bl	mmc_cmd8
 2084              	.LVL147:
 2085 02e8 0028     		cmp	r0, #0
 2086 02ea 3FF4D1AE 		beq	.L171
 2087 02ee 2368     		ldr	r3, [r4]
 2088              	.L175:
1676:../libraries/Storage/sd_mmc.c **** 		return false;
 2089              		.loc 2 1676 0
 2090 02f0 1B68     		ldr	r3, [r3]
 2091 02f2 4FF40071 		mov	r1, #512
 2092 02f6 41F21010 		movw	r0, #4368
 2093 02fa 5B69     		ldr	r3, [r3, #20]
 2094 02fc 9847     		blx	r3
 2095              	.LVL148:
 2096 02fe 0028     		cmp	r0, #0
 2097 0300 3FF4C6AE 		beq	.L171
1680:../libraries/Storage/sd_mmc.c **** 		return false;
 2098              		.loc 2 1680 0
 2099 0304 FFF7FEFF 		bl	sd_mmc_cmd13
 2100              	.LVL149:
 2101 0308 0546     		mov	r5, r0
 2102 030a 0028     		cmp	r0, #0
 2103 030c 3FF4C0AE 		beq	.L171
 2104 0310 ECE6     		b	.L363
 2105              	.L376:
 2106              	.LVL150:
 2107 0312 9DF80F20 		ldrb	r2, [sp, #15]	@ zero_extendqisi2
 2108              	.LBE357:
 2109              	.LBE364:
 2110              	.LBE367:
 2111              	.LBE377:
 2112              	.LBB378:
 2113              	.LBB340:
1551:../libraries/Storage/sd_mmc.c **** 			// It is not a SD card
 2114              		.loc 2 1551 0
 2115 0316 40F63506 		movw	r6, #2101
 2116 031a 984F     		ldr	r7, .L385
 2117 031c 002A     		cmp	r2, #0
 2118 031e 08BF     		it	eq
ARM GAS  /tmp/ccTIydBQ.s 			page 91


 2119 0320 4FF4FC17 		moveq	r7, #2064384
 2120 0324 10E0     		b	.L188
 2121              	.LVL151:
 2122              	.L381:
 2123              	.LBB295:
 2124              	.LBB296:
 536:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: ACMD41 Fail\n\r", __func__);
 2125              		.loc 2 536 0
 2126 0326 2368     		ldr	r3, [r4]
 2127 0328 44F22950 		movw	r0, #17705
 2128 032c 1B68     		ldr	r3, [r3]
 2129 032e 5B69     		ldr	r3, [r3, #20]
 2130 0330 9847     		blx	r3
 2131              	.LVL152:
 2132 0332 90B1     		cbz	r0, .L184
 540:../libraries/Storage/sd_mmc.c **** 		if (resp & OCR_POWER_UP_BUSY) {
 2133              		.loc 2 540 0
 2134 0334 2368     		ldr	r3, [r4]
 2135 0336 1B68     		ldr	r3, [r3]
 2136 0338 9B69     		ldr	r3, [r3, #24]
 2137 033a 9847     		blx	r3
 2138              	.LVL153:
 541:../libraries/Storage/sd_mmc.c **** 			// Card is ready
 2139              		.loc 2 541 0
 2140 033c 0028     		cmp	r0, #0
 2141 033e C0F2EF80 		blt	.L380
 548:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: ACMD41 Timeout on busy, resp32 0x%08x \n\r",
 2142              		.loc 2 548 0
 2143 0342 013E     		subs	r6, r6, #1
 2144              	.LVL154:
 2145 0344 09D0     		beq	.L184
 2146 0346 2368     		ldr	r3, [r4]
 2147              	.LVL155:
 2148              	.L188:
 525:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: CMD55 Fail\n\r", __func__);
 2149              		.loc 2 525 0
 2150 0348 1B68     		ldr	r3, [r3]
 2151 034a 0021     		movs	r1, #0
 2152 034c 41F23710 		movw	r0, #4407
 2153 0350 5B69     		ldr	r3, [r3, #20]
 2154 0352 9847     		blx	r3
 2155              	.LVL156:
 536:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: ACMD41 Fail\n\r", __func__);
 2156              		.loc 2 536 0
 2157 0354 3946     		mov	r1, r7
 525:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: CMD55 Fail\n\r", __func__);
 2158              		.loc 2 525 0
 2159 0356 0028     		cmp	r0, #0
 2160 0358 E5D1     		bne	.L381
 2161              	.LVL157:
 2162              	.L184:
 2163              	.LBE296:
 2164              	.LBE295:
1554:../libraries/Storage/sd_mmc.c **** 			return sd_mmc_mci_install_mmc();
 2165              		.loc 2 1554 0
 2166 035a 2368     		ldr	r3, [r4]
 2167 035c 0226     		movs	r6, #2
ARM GAS  /tmp/ccTIydBQ.s 			page 92


 2168              	.LBB298:
 2169              	.LBB299:
1704:../libraries/Storage/sd_mmc.c **** 		return false;
 2170              		.loc 2 1704 0
 2171 035e 0021     		movs	r1, #0
 2172 0360 4FF48040 		mov	r0, #16384
 2173 0364 1A68     		ldr	r2, [r3]
 2174              	.LBE299:
 2175              	.LBE298:
1554:../libraries/Storage/sd_mmc.c **** 			return sd_mmc_mci_install_mmc();
 2176              		.loc 2 1554 0
 2177 0366 5E74     		strb	r6, [r3, #17]
 2178              	.LBB332:
 2179              	.LBB330:
1704:../libraries/Storage/sd_mmc.c **** 		return false;
 2180              		.loc 2 1704 0
 2181 0368 5369     		ldr	r3, [r2, #20]
 2182 036a 9847     		blx	r3
 2183              	.LVL158:
 2184 036c 0028     		cmp	r0, #0
 2185 036e 3FF490AE 		beq	.L364
 2186 0372 41F26906 		movw	r6, #4201
 2187              	.LBB300:
 2188              	.LBB301:
 417:../libraries/Storage/sd_mmc.c **** 				SD_MMC_VOLTAGE_SUPPORT | OCR_ACCESS_MODE_SECTOR)) {
 2189              		.loc 2 417 0
 2190 0376 814F     		ldr	r7, .L385
 2191 0378 02E0     		b	.L195
 2192              	.LVL159:
 2193              	.L191:
 433:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: CMD1 Timeout on busy\n\r", __func__);
 2194              		.loc 2 433 0
 2195 037a 013E     		subs	r6, r6, #1
 2196              	.LVL160:
 2197 037c 3FF489AE 		beq	.L364
 2198              	.LVL161:
 2199              	.L195:
 417:../libraries/Storage/sd_mmc.c **** 				SD_MMC_VOLTAGE_SUPPORT | OCR_ACCESS_MODE_SECTOR)) {
 2200              		.loc 2 417 0
 2201 0380 2368     		ldr	r3, [r4]
 2202 0382 3946     		mov	r1, r7
 2203 0384 44F20150 		movw	r0, #17665
 2204 0388 1B68     		ldr	r3, [r3]
 2205 038a 5B69     		ldr	r3, [r3, #20]
 2206 038c 9847     		blx	r3
 2207              	.LVL162:
 2208 038e 0028     		cmp	r0, #0
 2209 0390 3FF47FAE 		beq	.L364
 424:../libraries/Storage/sd_mmc.c **** 		if (resp & OCR_POWER_UP_BUSY) {
 2210              		.loc 2 424 0
 2211 0394 2368     		ldr	r3, [r4]
 2212 0396 1B68     		ldr	r3, [r3]
 2213 0398 9B69     		ldr	r3, [r3, #24]
 2214 039a 9847     		blx	r3
 2215              	.LVL163:
 425:../libraries/Storage/sd_mmc.c **** 			// Check OCR value
 2216              		.loc 2 425 0
ARM GAS  /tmp/ccTIydBQ.s 			page 93


 2217 039c 031E     		subs	r3, r0, #0
 2218 039e ECDA     		bge	.L191
 427:../libraries/Storage/sd_mmc.c **** 					== OCR_ACCESS_MODE_SECTOR) {
 2219              		.loc 2 427 0
 2220 03a0 03F0C043 		and	r3, r3, #1610612736
 2221 03a4 B3F1804F 		cmp	r3, #1073741824
 429:../libraries/Storage/sd_mmc.c **** 			}
 2222              		.loc 2 429 0
 2223 03a8 2368     		ldr	r3, [r4]
 427:../libraries/Storage/sd_mmc.c **** 					== OCR_ACCESS_MODE_SECTOR) {
 2224              		.loc 2 427 0
 2225 03aa 03D1     		bne	.L193
 429:../libraries/Storage/sd_mmc.c **** 			}
 2226              		.loc 2 429 0
 2227 03ac 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 2228 03ae 42F00802 		orr	r2, r2, #8
 2229 03b2 5A74     		strb	r2, [r3, #17]
 2230              	.L193:
 2231              	.LVL164:
 2232              	.LBE301:
 2233              	.LBE300:
1714:../libraries/Storage/sd_mmc.c **** 		return false;
 2234              		.loc 2 1714 0
 2235 03b4 1B68     		ldr	r3, [r3]
 2236 03b6 0021     		movs	r1, #0
 2237 03b8 45F60230 		movw	r0, #23298
 2238 03bc 5B69     		ldr	r3, [r3, #20]
 2239 03be 9847     		blx	r3
 2240              	.LVL165:
 2241 03c0 0028     		cmp	r0, #0
 2242 03c2 3FF466AE 		beq	.L364
1718:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->send_cmd(MMC_CMD3_SET_RELATIVE_ADDR, (uint32_t)sd_mmc_card->rca << 16)) {
 2243              		.loc 2 1718 0
 2244 03c6 2368     		ldr	r3, [r4]
 2245 03c8 0126     		movs	r6, #1
1719:../libraries/Storage/sd_mmc.c **** 		return false;
 2246              		.loc 2 1719 0
 2247 03ca 4FF48031 		mov	r1, #65536
 2248 03ce 41F20310 		movw	r0, #4355
 2249 03d2 1A68     		ldr	r2, [r3]
1718:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->send_cmd(MMC_CMD3_SET_RELATIVE_ADDR, (uint32_t)sd_mmc_card->rca << 16)) {
 2250              		.loc 2 1718 0
 2251 03d4 DE81     		strh	r6, [r3, #14]	@ movhi
1719:../libraries/Storage/sd_mmc.c **** 		return false;
 2252              		.loc 2 1719 0
 2253 03d6 5369     		ldr	r3, [r2, #20]
 2254 03d8 9847     		blx	r3
 2255              	.LVL166:
 2256 03da 0028     		cmp	r0, #0
 2257 03dc 3FF459AE 		beq	.L364
1723:../libraries/Storage/sd_mmc.c **** 		return false;
 2258              		.loc 2 1723 0
 2259 03e0 FFF7FEFF 		bl	sd_mmc_cmd9_mci
 2260              	.LVL167:
 2261 03e4 0028     		cmp	r0, #0
 2262 03e6 3FF454AE 		beq	.L364
1726:../libraries/Storage/sd_mmc.c **** 	// Select the and put it into Transfer Mode
ARM GAS  /tmp/ccTIydBQ.s 			page 94


 2263              		.loc 2 1726 0
 2264 03ea FFF7FEFF 		bl	mmc_decode_csd
 2265              	.LVL168:
1728:../libraries/Storage/sd_mmc.c **** 		return false;
 2266              		.loc 2 1728 0
 2267 03ee 2368     		ldr	r3, [r4]
 2268 03f0 43F20710 		movw	r0, #12551
 2269 03f4 D989     		ldrh	r1, [r3, #14]
 2270 03f6 1B68     		ldr	r3, [r3]
 2271 03f8 0904     		lsls	r1, r1, #16
 2272 03fa 5B69     		ldr	r3, [r3, #20]
 2273 03fc 9847     		blx	r3
 2274              	.LVL169:
 2275 03fe 0028     		cmp	r0, #0
 2276 0400 3FF447AE 		beq	.L364
1731:../libraries/Storage/sd_mmc.c **** 		// For MMC 4.0 Higher version
 2277              		.loc 2 1731 0
 2278 0404 2068     		ldr	r0, [r4]
 2279 0406 837C     		ldrb	r3, [r0, #18]	@ zero_extendqisi2
 2280 0408 3F2B     		cmp	r3, #63
 2281 040a 40F2FC80 		bls	.L196
1734:../libraries/Storage/sd_mmc.c **** 			return false;
 2282              		.loc 2 1734 0
 2283 040e 04A8     		add	r0, sp, #16
 2284 0410 FFF7FEFF 		bl	mmc_cmd8
 2285              	.LVL170:
 2286 0414 0028     		cmp	r0, #0
 2287 0416 3FF43CAE 		beq	.L364
1737:../libraries/Storage/sd_mmc.c **** 			// Enable more bus width
 2288              		.loc 2 1737 0
 2289 041a 2368     		ldr	r3, [r4]
 2290 041c 1A68     		ldr	r2, [r3]
 2291 041e D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 2292 0420 9368     		ldr	r3, [r2, #8]
 2293 0422 9847     		blx	r3
 2294              	.LVL171:
 2295 0424 0328     		cmp	r0, #3
 2296 0426 2AD9     		bls	.L197
1739:../libraries/Storage/sd_mmc.c **** 				return false;
 2297              		.loc 2 1739 0
 2298 0428 2368     		ldr	r3, [r4]
 2299 042a 1A68     		ldr	r2, [r3]
 2300 042c D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 2301 042e 9368     		ldr	r3, [r2, #8]
 2302 0430 9847     		blx	r3
 2303              	.LVL172:
 2304              	.LBB302:
 2305              	.LBB303:
 867:../libraries/Storage/sd_mmc.c **** 	case 8:
 2306              		.loc 2 867 0
 2307 0432 0428     		cmp	r0, #4
 2308              	.LBE303:
 2309              	.LBE302:
1739:../libraries/Storage/sd_mmc.c **** 				return false;
 2310              		.loc 2 1739 0
 2311 0434 0646     		mov	r6, r0
 2312              	.LVL173:
ARM GAS  /tmp/ccTIydBQ.s 			page 95


 2313              	.LBB308:
 2314              	.LBB304:
 867:../libraries/Storage/sd_mmc.c **** 	case 8:
 2315              		.loc 2 867 0
 2316 0436 00F0E280 		beq	.L229
 879:../libraries/Storage/sd_mmc.c **** 				| MMC_CMD6_INDEX_BUS_WIDTH
 2317              		.loc 2 879 0
 2318 043a 5149     		ldr	r1, .L385+4
 2319 043c 514B     		ldr	r3, .L385+8
 2320 043e 0828     		cmp	r0, #8
 2321 0440 18BF     		it	ne
 2322 0442 1946     		movne	r1, r3
 2323              	.L199:
 2324              	.LVL174:
 884:../libraries/Storage/sd_mmc.c **** 		return false;
 2325              		.loc 2 884 0
 2326 0444 2368     		ldr	r3, [r4]
 2327 0446 43F20610 		movw	r0, #12550
 2328              	.LVL175:
 2329 044a 1B68     		ldr	r3, [r3]
 2330 044c 5B69     		ldr	r3, [r3, #20]
 2331 044e 9847     		blx	r3
 2332              	.LVL176:
 2333 0450 0028     		cmp	r0, #0
 2334 0452 3FF41EAE 		beq	.L364
 887:../libraries/Storage/sd_mmc.c **** 		// No supported, it is not a protocol error
 2335              		.loc 2 887 0
 2336 0456 2368     		ldr	r3, [r4]
 2337 0458 1B68     		ldr	r3, [r3]
 2338 045a 9B69     		ldr	r3, [r3, #24]
 2339 045c 9847     		blx	r3
 2340              	.LVL177:
 2341 045e 0706     		lsls	r7, r0, #24
 2342 0460 3FF517AE 		bmi	.L364
 892:../libraries/Storage/sd_mmc.c **** 	sd_mmc_debug("%d-bit bus width enabled.\n\r", (int)sd_mmc_card->bus_width);
 2343              		.loc 2 892 0
 2344 0464 2068     		ldr	r0, [r4]
 2345              	.LBE304:
 2346              	.LBE308:
 2347              	.LBB309:
 2348              	.LBB310:
1411:../libraries/Storage/sd_mmc.c **** }
 2349              		.loc 2 1411 0
 2350 0466 3246     		mov	r2, r6
 2351 0468 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 2352 046c 0168     		ldr	r1, [r0]
 2353 046e 0033     		adds	r3, r3, #0
 2354              	.LBE310:
 2355              	.LBE309:
 2356              	.LBB312:
 2357              	.LBB305:
 892:../libraries/Storage/sd_mmc.c **** 	sd_mmc_debug("%d-bit bus width enabled.\n\r", (int)sd_mmc_card->bus_width);
 2358              		.loc 2 892 0
 2359 0470 0675     		strb	r6, [r0, #20]
 2360              	.LBE305:
 2361              	.LBE312:
 2362              	.LBB313:
ARM GAS  /tmp/ccTIydBQ.s 			page 96


 2363              	.LBB311:
1411:../libraries/Storage/sd_mmc.c **** }
 2364              		.loc 2 1411 0
 2365 0472 0E68     		ldr	r6, [r1]
 2366 0474 18BF     		it	ne
 2367 0476 0123     		movne	r3, #1
 2368 0478 4168     		ldr	r1, [r0, #4]
 2369 047a C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 2370 047c B047     		blx	r6
 2371              	.LVL178:
 2372              	.L197:
 2373              	.LBE311:
 2374              	.LBE313:
1745:../libraries/Storage/sd_mmc.c **** 			// Enable HS
 2375              		.loc 2 1745 0
 2376 047e 2368     		ldr	r3, [r4]
 2377 0480 1B68     		ldr	r3, [r3]
 2378 0482 DB68     		ldr	r3, [r3, #12]
 2379 0484 9847     		blx	r3
 2380              	.LVL179:
 2381 0486 20B1     		cbz	r0, .L201
 2382 0488 9DF81030 		ldrb	r3, [sp, #16]	@ zero_extendqisi2
 2383 048c 002B     		cmp	r3, #0
 2384 048e 40F0C680 		bne	.L382
 2385              	.L201:
 2386              	.LVL180:
 2387              	.LBB314:
 2388              	.LBB306:
 879:../libraries/Storage/sd_mmc.c **** 				| MMC_CMD6_INDEX_BUS_WIDTH
 2389              		.loc 2 879 0
 2390 0492 0A26     		movs	r6, #10
 2391              	.LVL181:
 2392              	.L203:
 2393              	.LBE306:
 2394              	.LBE314:
1765:../libraries/Storage/sd_mmc.c **** 			return true;
 2395              		.loc 2 1765 0
 2396 0494 2368     		ldr	r3, [r4]
 2397 0496 4FF40071 		mov	r1, #512
 2398 049a 41F21010 		movw	r0, #4368
 2399 049e 013E     		subs	r6, r6, #1
 2400              	.LVL182:
 2401 04a0 1B68     		ldr	r3, [r3]
 2402 04a2 5B69     		ldr	r3, [r3, #20]
 2403 04a4 9847     		blx	r3
 2404              	.LVL183:
 2405 04a6 0028     		cmp	r0, #0
 2406 04a8 7FF4A1AE 		bne	.L366
1759:../libraries/Storage/sd_mmc.c **** 		// Retry is a WORKAROUND for no compliance card (Atmel Internal ref. MMC19):
 2407              		.loc 2 1759 0
 2408 04ac 16F0FF06 		ands	r6, r6, #255
 2409 04b0 F0D1     		bne	.L203
 2410 04b2 EEE5     		b	.L364
 2411              	.LVL184:
 2412              	.L164:
 2413              	.LBE330:
 2414              	.LBE332:
ARM GAS  /tmp/ccTIydBQ.s 			page 97


 2415              	.LBE340:
 2416              	.LBE378:
 2417              	.LBB379:
 2418              	.LBB368:
 2419              	.LBB365:
 2420              	.LBB362:
 491:../libraries/Storage/sd_mmc.c **** 		sd_mmc_debug("%s: CMD58 Fail\n\r", __func__);
 2421              		.loc 2 491 0
 2422 04b4 2368     		ldr	r3, [r4]
 2423 04b6 40F23A50 		movw	r0, #1338
 2424              	.LVL185:
 2425 04ba 1B68     		ldr	r3, [r3]
 2426 04bc 5B69     		ldr	r3, [r3, #20]
 2427 04be 9847     		blx	r3
 2428              	.LVL186:
 2429 04c0 0028     		cmp	r0, #0
 2430 04c2 3FF4BBAE 		beq	.L163
 495:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->type |= CARD_TYPE_HC;
 2431              		.loc 2 495 0
 2432 04c6 2368     		ldr	r3, [r4]
 2433 04c8 1B68     		ldr	r3, [r3]
 2434 04ca 9B69     		ldr	r3, [r3, #24]
 2435 04cc 9847     		blx	r3
 2436              	.LVL187:
 2437 04ce 4200     		lsls	r2, r0, #1
 496:../libraries/Storage/sd_mmc.c **** 	}
 2438              		.loc 2 496 0
 2439 04d0 2368     		ldr	r3, [r4]
 495:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->type |= CARD_TYPE_HC;
 2440              		.loc 2 495 0
 2441 04d2 03D5     		bpl	.L167
 496:../libraries/Storage/sd_mmc.c **** 	}
 2442              		.loc 2 496 0
 2443 04d4 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 2444 04d6 42F00802 		orr	r2, r2, #8
 2445 04da 5A74     		strb	r2, [r3, #17]
 2446              	.L167:
 2447              	.LVL188:
 2448              	.LBE362:
 2449              	.LBE365:
1475:../libraries/Storage/sd_mmc.c **** 			return false;
 2450              		.loc 2 1475 0
 2451 04dc 1B68     		ldr	r3, [r3]
 2452 04de 0021     		movs	r1, #0
 2453 04e0 41F23B10 		movw	r0, #4411
 2454 04e4 5B69     		ldr	r3, [r3, #20]
 2455 04e6 9847     		blx	r3
 2456              	.LVL189:
 2457 04e8 0028     		cmp	r0, #0
 2458 04ea 3FF4D1AD 		beq	.L171
1480:../libraries/Storage/sd_mmc.c **** 		// Get the Card-Specific Data
 2459              		.loc 2 1480 0
 2460 04ee 2068     		ldr	r0, [r4]
 2461 04f0 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 2462 04f2 DF07     		lsls	r7, r3, #31
 2463 04f4 7FF5E5AD 		bpl	.L162
1482:../libraries/Storage/sd_mmc.c **** 			return false;
ARM GAS  /tmp/ccTIydBQ.s 			page 98


 2464              		.loc 2 1482 0
 2465 04f8 FFF7FEFF 		bl	sd_mmc_cmd9_spi
 2466              	.LVL190:
 2467 04fc 0028     		cmp	r0, #0
 2468 04fe 3FF4C7AD 		beq	.L171
1485:../libraries/Storage/sd_mmc.c **** 		// Read the SCR to get card version
 2469              		.loc 2 1485 0
 2470 0502 FFF7FEFF 		bl	sd_decode_csd
 2471              	.LVL191:
1487:../libraries/Storage/sd_mmc.c **** 			return false;
 2472              		.loc 2 1487 0
 2473 0506 FFF7FEFF 		bl	sd_acmd51
 2474              	.LVL192:
 2475 050a 0028     		cmp	r0, #0
 2476 050c 3FF4C0AD 		beq	.L171
 2477 0510 2068     		ldr	r0, [r4]
 2478 0512 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
1497:../libraries/Storage/sd_mmc.c **** 			(0 == (sd_mmc_card->type & CARD_TYPE_HC))) {
 2479              		.loc 2 1497 0
 2480 0514 03F00902 		and	r2, r3, #9
 2481 0518 012A     		cmp	r2, #1
 2482 051a 7FF4E1AD 		bne	.L177
 2483 051e D4E5     		b	.L227
 2484              	.LVL193:
 2485              	.L380:
 2486              	.LBE368:
 2487              	.LBE379:
 2488              	.LBB380:
 2489              	.LBB341:
 2490              	.LBB333:
 2491              	.LBB297:
 544:../libraries/Storage/sd_mmc.c **** 			}
 2492              		.loc 2 544 0
 2493 0520 2368     		ldr	r3, [r4]
 543:../libraries/Storage/sd_mmc.c **** 				sd_mmc_card->type |= CARD_TYPE_HC;
 2494              		.loc 2 543 0
 2495 0522 4100     		lsls	r1, r0, #1
 544:../libraries/Storage/sd_mmc.c **** 			}
 2496              		.loc 2 544 0
 2497 0524 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 543:../libraries/Storage/sd_mmc.c **** 				sd_mmc_card->type |= CARD_TYPE_HC;
 2498              		.loc 2 543 0
 2499 0526 02D5     		bpl	.L187
 544:../libraries/Storage/sd_mmc.c **** 			}
 2500              		.loc 2 544 0
 2501 0528 42F00802 		orr	r2, r2, #8
 2502 052c 5A74     		strb	r2, [r3, #17]
 2503              	.L187:
 2504              	.LBE297:
 2505              	.LBE333:
1559:../libraries/Storage/sd_mmc.c **** 		// SD MEMORY, Put the Card in Identify Mode
 2506              		.loc 2 1559 0
 2507 052e D007     		lsls	r0, r2, #31
 2508              	.LVL194:
 2509 0530 7FF5F4AD 		bpl	.L183
1562:../libraries/Storage/sd_mmc.c **** 			return false;
 2510              		.loc 2 1562 0
ARM GAS  /tmp/ccTIydBQ.s 			page 99


 2511 0534 1B68     		ldr	r3, [r3]
 2512 0536 0021     		movs	r1, #0
 2513 0538 45F60230 		movw	r0, #23298
 2514 053c 5B69     		ldr	r3, [r3, #20]
 2515 053e 9847     		blx	r3
 2516              	.LVL195:
 2517 0540 2368     		ldr	r3, [r4]
 2518 0542 0028     		cmp	r0, #0
 2519 0544 7FF4EAAD 		bne	.L183
 2520 0548 77E5     		b	.L221
 2521              	.LVL196:
 2522              	.L212:
 2523              	.LBB334:
 2524              	.LBB335:
1261:../libraries/Storage/sd_mmc.c **** 		return false;
 2525              		.loc 2 1261 0
 2526 054a F189     		ldrh	r1, [r6, #14]
 2527 054c 41F23710 		movw	r0, #4407
 2528 0550 3368     		ldr	r3, [r6]
 2529 0552 0904     		lsls	r1, r1, #16
 2530 0554 5B69     		ldr	r3, [r3, #20]
 2531 0556 9847     		blx	r3
 2532              	.LVL197:
 2533 0558 2368     		ldr	r3, [r4]
 2534 055a 0028     		cmp	r0, #0
 2535 055c 3FF46DAD 		beq	.L221
1265:../libraries/Storage/sd_mmc.c **** 		return false;
 2536              		.loc 2 1265 0
 2537 0560 1B68     		ldr	r3, [r3]
 2538 0562 0221     		movs	r1, #2
 2539 0564 41F20610 		movw	r0, #4358
 2540 0568 5B69     		ldr	r3, [r3, #20]
 2541 056a 9847     		blx	r3
 2542              	.LVL198:
 2543 056c 0028     		cmp	r0, #0
 2544 056e 3FF463AD 		beq	.L218
1268:../libraries/Storage/sd_mmc.c **** 	sd_mmc_debug("%d-bit bus width enabled.\n\r", (int)sd_mmc_card->bus_width);
 2545              		.loc 2 1268 0
 2546 0572 0423     		movs	r3, #4
 2547 0574 2668     		ldr	r6, [r4]
 2548 0576 1A46     		mov	r2, r3
 2549 0578 3375     		strb	r3, [r6, #20]
 2550 057a 0AE6     		b	.L213
 2551              	.L386:
 2552              		.align	2
 2553              	.L385:
 2554 057c 00801F40 		.word	1075806208
 2555 0580 0002B701 		.word	28770816
 2556 0584 0000B701 		.word	28770304
 2557              	.L377:
 2558              	.LBE335:
 2559              	.LBE334:
 2560              	.LBB336:
 2561              	.LBB337:
 814:../libraries/Storage/sd_mmc.c **** 			SD_CMD6_MODE_SWITCH
 2562              		.loc 2 814 0
 2563 0588 0068     		ldr	r0, [r0]
ARM GAS  /tmp/ccTIydBQ.s 			page 100


 2564 058a 0126     		movs	r6, #1
 2565 058c 4022     		movs	r2, #64
 2566 058e 3349     		ldr	r1, .L387
 2567 0590 0096     		str	r6, [sp]
 2568 0592 3346     		mov	r3, r6
 2569 0594 076A     		ldr	r7, [r0, #32]
 2570 0596 3248     		ldr	r0, .L387+4
 2571 0598 B847     		blx	r7
 2572              	.LVL199:
 2573 059a 0028     		cmp	r0, #0
 2574 059c 3FF44CAD 		beq	.L218
 825:../libraries/Storage/sd_mmc.c **** 		return false;
 2575              		.loc 2 825 0
 2576 05a0 2368     		ldr	r3, [r4]
 2577 05a2 3146     		mov	r1, r6
 2578 05a4 04A8     		add	r0, sp, #16
 2579 05a6 1B68     		ldr	r3, [r3]
 2580 05a8 1B6B     		ldr	r3, [r3, #48]
 2581 05aa 9847     		blx	r3
 2582              	.LVL200:
 2583 05ac 0028     		cmp	r0, #0
 2584 05ae 3FF443AD 		beq	.L218
 828:../libraries/Storage/sd_mmc.c **** 		return false;
 2585              		.loc 2 828 0
 2586 05b2 2368     		ldr	r3, [r4]
 2587 05b4 1B68     		ldr	r3, [r3]
 2588 05b6 5B6B     		ldr	r3, [r3, #52]
 2589 05b8 9847     		blx	r3
 2590              	.LVL201:
 2591 05ba 0028     		cmp	r0, #0
 2592 05bc 3FF43CAD 		beq	.L218
 832:../libraries/Storage/sd_mmc.c **** 		sd_mmc_debug("%s: CMD6 CARD_STATUS_SWITCH_ERROR\n\r", __func__);
 2593              		.loc 2 832 0
 2594 05c0 2368     		ldr	r3, [r4]
 2595 05c2 1B68     		ldr	r3, [r3]
 2596 05c4 9B69     		ldr	r3, [r3, #24]
 2597 05c6 9847     		blx	r3
 2598              	.LVL202:
 2599 05c8 0106     		lsls	r1, r0, #24
 2600 05ca 3FF535AD 		bmi	.L218
 836:../libraries/Storage/sd_mmc.c **** 			== SD_SW_STATUS_FUN_GRP_RC_ERROR) {
 2601              		.loc 2 836 0
 2602 05ce 9DF82030 		ldrb	r3, [sp, #32]	@ zero_extendqisi2
 2603 05d2 03F00F03 		and	r3, r3, #15
 2604 05d6 0F2B     		cmp	r3, #15
 2605 05d8 13D0     		beq	.L219
 841:../libraries/Storage/sd_mmc.c **** 		sd_mmc_debug("%s: CMD6 SD_SW_STATUS_FUN_GRP1_BUSY\n\r", __func__);
 2606              		.loc 2 841 0
 2607 05da BDF82C30 		ldrh	r3, [sp, #44]
 2608 05de 5BBA     		rev16	r3, r3
 2609 05e0 9BB2     		uxth	r3, r3
 2610 05e2 002B     		cmp	r3, #0
 2611 05e4 7FF428AD 		bne	.L218
 847:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->high_speed = 1;
 2612              		.loc 2 847 0
 2613 05e8 2368     		ldr	r3, [r4]
 2614 05ea 1B68     		ldr	r3, [r3]
ARM GAS  /tmp/ccTIydBQ.s 			page 101


 2615 05ec 1B69     		ldr	r3, [r3, #16]
 2616 05ee 9847     		blx	r3
 2617              	.LVL203:
 848:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->clock *= 2;
 2618              		.loc 2 848 0
 2619 05f0 2068     		ldr	r0, [r4]
 849:../libraries/Storage/sd_mmc.c **** 	return true;
 2620              		.loc 2 849 0
 2621 05f2 4368     		ldr	r3, [r0, #4]
 848:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->clock *= 2;
 2622              		.loc 2 848 0
 2623 05f4 80F82560 		strb	r6, [r0, #37]
 849:../libraries/Storage/sd_mmc.c **** 	return true;
 2624              		.loc 2 849 0
 2625 05f8 B340     		lsls	r3, r3, r6
 2626 05fa 4360     		str	r3, [r0, #4]
 2627 05fc E0E5     		b	.L217
 2628              	.LVL204:
 2629              	.L229:
 2630              	.LBE337:
 2631              	.LBE336:
 2632              	.LBB338:
 2633              	.LBB331:
 2634              	.LBB315:
 2635              	.LBB307:
 874:../libraries/Storage/sd_mmc.c **** 				| MMC_CMD6_INDEX_BUS_WIDTH
 2636              		.loc 2 874 0
 2637 05fe 1949     		ldr	r1, .L387+8
 2638 0600 20E7     		b	.L199
 2639              	.LVL205:
 2640              	.L219:
 2641 0602 2068     		ldr	r0, [r4]
 2642 0604 DCE5     		b	.L217
 2643              	.L196:
 2644              	.LBE307:
 2645              	.LBE315:
 2646              	.LBB316:
 2647              	.LBB317:
1411:../libraries/Storage/sd_mmc.c **** }
 2648              		.loc 2 1411 0
 2649 0606 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 2650 060a 0168     		ldr	r1, [r0]
 2651 060c 0033     		adds	r3, r3, #0
 2652 060e 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 2653 0610 0E68     		ldr	r6, [r1]
 2654 0612 18BF     		it	ne
 2655 0614 0123     		movne	r3, #1
 2656 0616 4168     		ldr	r1, [r0, #4]
 2657 0618 C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 2658 061a B047     		blx	r6
 2659              	.LVL206:
 2660 061c 39E7     		b	.L201
 2661              	.L382:
 2662              	.LBE317:
 2663              	.LBE316:
 2664              	.LBB318:
 2665              	.LBB319:
ARM GAS  /tmp/ccTIydBQ.s 			page 102


 908:../libraries/Storage/sd_mmc.c **** 			MMC_CMD6_ACCESS_WRITE_BYTE
 2666              		.loc 2 908 0
 2667 061e 2368     		ldr	r3, [r4]
 2668 0620 43F20610 		movw	r0, #12550
 2669 0624 1049     		ldr	r1, .L387+12
 2670 0626 1B68     		ldr	r3, [r3]
 2671 0628 5B69     		ldr	r3, [r3, #20]
 2672 062a 9847     		blx	r3
 2673              	.LVL207:
 2674 062c 0028     		cmp	r0, #0
 2675 062e 3FF430AD 		beq	.L364
 914:../libraries/Storage/sd_mmc.c **** 		// No supported, it is not a protocol error
 2676              		.loc 2 914 0
 2677 0632 2368     		ldr	r3, [r4]
 2678 0634 1B68     		ldr	r3, [r3]
 2679 0636 9B69     		ldr	r3, [r3, #24]
 2680 0638 9847     		blx	r3
 2681              	.LVL208:
 2682 063a 0606     		lsls	r6, r0, #24
 2683 063c 3FF529AD 		bmi	.L364
 919:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->clock = 52000000lu;
 2684              		.loc 2 919 0
 2685 0640 2068     		ldr	r0, [r4]
 2686 0642 0121     		movs	r1, #1
 920:../libraries/Storage/sd_mmc.c **** 	return true;
 2687              		.loc 2 920 0
 2688 0644 094A     		ldr	r2, .L387+16
 2689              	.LBE319:
 2690              	.LBE318:
 2691              	.LBB322:
 2692              	.LBB323:
1411:../libraries/Storage/sd_mmc.c **** }
 2693              		.loc 2 1411 0
 2694 0646 0668     		ldr	r6, [r0]
 2695 0648 0B46     		mov	r3, r1
 2696              	.LBE323:
 2697              	.LBE322:
 2698              	.LBB326:
 2699              	.LBB320:
 919:../libraries/Storage/sd_mmc.c **** 	sd_mmc_card->clock = 52000000lu;
 2700              		.loc 2 919 0
 2701 064a 80F82510 		strb	r1, [r0, #37]
 2702              	.LBE320:
 2703              	.LBE326:
 2704              	.LBB327:
 2705              	.LBB324:
1411:../libraries/Storage/sd_mmc.c **** }
 2706              		.loc 2 1411 0
 2707 064e 1146     		mov	r1, r2
 2708 0650 3668     		ldr	r6, [r6]
 2709              	.LBE324:
 2710              	.LBE327:
 2711              	.LBB328:
 2712              	.LBB321:
 920:../libraries/Storage/sd_mmc.c **** 	return true;
 2713              		.loc 2 920 0
 2714 0652 4260     		str	r2, [r0, #4]
ARM GAS  /tmp/ccTIydBQ.s 			page 103


 2715              	.LBE321:
 2716              	.LBE328:
 2717              	.LBB329:
 2718              	.LBB325:
1411:../libraries/Storage/sd_mmc.c **** }
 2719              		.loc 2 1411 0
 2720 0654 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 2721 0656 C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 2722 0658 B047     		blx	r6
 2723              	.LVL209:
 2724 065a 1AE7     		b	.L201
 2725              	.L388:
 2726              		.align	2
 2727              	.L387:
 2728 065c 01FFFF80 		.word	-2130706687
 2729 0660 06110800 		.word	528646
 2730 0664 0001B701 		.word	28770560
 2731 0668 0001B903 		.word	62456064
 2732 066c 00751903 		.word	52000000
 2733              	.LBE325:
 2734              	.LBE329:
 2735              	.LBE331:
 2736              	.LBE338:
 2737              	.LBE341:
 2738              	.LBE380:
 2739              		.cfi_endproc
 2740              	.LFE260:
 2741              		.size	sd_mmc_check, .-sd_mmc_check
 2742              		.section	.text.sd_mmc_get_type,"ax",%progbits
 2743              		.align	1
 2744              		.p2align 2,,3
 2745              		.global	sd_mmc_get_type
 2746              		.syntax unified
 2747              		.thumb
 2748              		.thumb_func
 2749              		.fpu fpv5-d16
 2750              		.type	sd_mmc_get_type, %function
 2751              	sd_mmc_get_type:
 2752              	.LFB261:
1853:../libraries/Storage/sd_mmc.c **** 
1854:../libraries/Storage/sd_mmc.c **** card_type_t sd_mmc_get_type(uint8_t slot)
1855:../libraries/Storage/sd_mmc.c **** {
 2753              		.loc 2 1855 0
 2754              		.cfi_startproc
 2755              		@ args = 0, pretend = 0, frame = 0
 2756              		@ frame_needed = 0, uses_anonymous_args = 0
 2757              	.LVL210:
 2758              	.LBB381:
 2759              	.LBB382:
1343:../libraries/Storage/sd_mmc.c **** 		return SD_MMC_ERR_SLOT;
 2760              		.loc 2 1343 0
 2761 0000 0128     		cmp	r0, #1
 2762 0002 01D9     		bls	.L398
 2763              	.LBE382:
 2764              	.LBE381:
1856:../libraries/Storage/sd_mmc.c **** 	if (SD_MMC_OK != sd_mmc_select_slot(slot)) {
1857:../libraries/Storage/sd_mmc.c **** 		return CARD_TYPE_UNKNOWN;
ARM GAS  /tmp/ccTIydBQ.s 			page 104


 2765              		.loc 2 1857 0
 2766 0004 0020     		movs	r0, #0
 2767              	.LVL211:
1858:../libraries/Storage/sd_mmc.c **** 	}
1859:../libraries/Storage/sd_mmc.c **** 	sd_mmc_deselect_slot();
1860:../libraries/Storage/sd_mmc.c **** 	return sd_mmc_card->type;
1861:../libraries/Storage/sd_mmc.c **** }
 2768              		.loc 2 1861 0
 2769 0006 7047     		bx	lr
 2770              	.LVL212:
 2771              	.L398:
1855:../libraries/Storage/sd_mmc.c **** 	if (SD_MMC_OK != sd_mmc_select_slot(slot)) {
 2772              		.loc 2 1855 0
 2773 0008 08B5     		push	{r3, lr}
 2774              		.cfi_def_cfa_offset 8
 2775              		.cfi_offset 3, -8
 2776              		.cfi_offset 14, -4
 2777              	.LBB384:
 2778              	.LBB383:
 2779 000a FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 2780              	.LVL213:
 2781              	.LBE383:
 2782              	.LBE384:
1856:../libraries/Storage/sd_mmc.c **** 	if (SD_MMC_OK != sd_mmc_select_slot(slot)) {
 2783              		.loc 2 1856 0
 2784 000e 38B9     		cbnz	r0, .L392
 2785              	.LBB385:
 2786              	.LBB386:
1419:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->iface->deselect_device(sd_mmc_card->slot);
 2787              		.loc 2 1419 0
 2788 0010 064B     		ldr	r3, .L400
 2789 0012 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 2790 0014 012B     		cmp	r3, #1
 2791 0016 05D9     		bls	.L399
 2792              	.L393:
 2793              	.LBE386:
 2794              	.LBE385:
1860:../libraries/Storage/sd_mmc.c **** }
 2795              		.loc 2 1860 0
 2796 0018 054B     		ldr	r3, .L400+4
 2797 001a 1B68     		ldr	r3, [r3]
 2798 001c 587C     		ldrb	r0, [r3, #17]	@ zero_extendqisi2
 2799              		.loc 2 1861 0
 2800 001e 08BD     		pop	{r3, pc}
 2801              	.L392:
1857:../libraries/Storage/sd_mmc.c **** 	}
 2802              		.loc 2 1857 0
 2803 0020 0020     		movs	r0, #0
 2804 0022 08BD     		pop	{r3, pc}
 2805              	.L399:
 2806              	.LBB388:
 2807              	.LBB387:
 2808 0024 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 2809              	.LVL214:
 2810 0028 F6E7     		b	.L393
 2811              	.L401:
 2812 002a 00BF     		.align	2
ARM GAS  /tmp/ccTIydBQ.s 			page 105


 2813              	.L400:
 2814 002c 00000000 		.word	.LANCHOR5
 2815 0030 00000000 		.word	.LANCHOR0
 2816              	.LBE387:
 2817              	.LBE388:
 2818              		.cfi_endproc
 2819              	.LFE261:
 2820              		.size	sd_mmc_get_type, .-sd_mmc_get_type
 2821              		.section	.text.sd_mmc_get_version,"ax",%progbits
 2822              		.align	1
 2823              		.p2align 2,,3
 2824              		.global	sd_mmc_get_version
 2825              		.syntax unified
 2826              		.thumb
 2827              		.thumb_func
 2828              		.fpu fpv5-d16
 2829              		.type	sd_mmc_get_version, %function
 2830              	sd_mmc_get_version:
 2831              	.LFB262:
1862:../libraries/Storage/sd_mmc.c **** 
1863:../libraries/Storage/sd_mmc.c **** card_version_t sd_mmc_get_version(uint8_t slot)
1864:../libraries/Storage/sd_mmc.c **** {
 2832              		.loc 2 1864 0
 2833              		.cfi_startproc
 2834              		@ args = 0, pretend = 0, frame = 0
 2835              		@ frame_needed = 0, uses_anonymous_args = 0
 2836              	.LVL215:
 2837              	.LBB389:
 2838              	.LBB390:
1343:../libraries/Storage/sd_mmc.c **** 		return SD_MMC_ERR_SLOT;
 2839              		.loc 2 1343 0
 2840 0000 0128     		cmp	r0, #1
 2841 0002 01D9     		bls	.L411
 2842              	.LBE390:
 2843              	.LBE389:
1865:../libraries/Storage/sd_mmc.c **** 	if (SD_MMC_OK != sd_mmc_select_slot(slot)) {
1866:../libraries/Storage/sd_mmc.c **** 		return CARD_VER_UNKNOWN;
 2844              		.loc 2 1866 0
 2845 0004 0020     		movs	r0, #0
 2846              	.LVL216:
1867:../libraries/Storage/sd_mmc.c **** 	}
1868:../libraries/Storage/sd_mmc.c **** 	sd_mmc_deselect_slot();
1869:../libraries/Storage/sd_mmc.c **** 	return sd_mmc_card->version;
1870:../libraries/Storage/sd_mmc.c **** }
 2847              		.loc 2 1870 0
 2848 0006 7047     		bx	lr
 2849              	.LVL217:
 2850              	.L411:
1864:../libraries/Storage/sd_mmc.c **** 	if (SD_MMC_OK != sd_mmc_select_slot(slot)) {
 2851              		.loc 2 1864 0
 2852 0008 08B5     		push	{r3, lr}
 2853              		.cfi_def_cfa_offset 8
 2854              		.cfi_offset 3, -8
 2855              		.cfi_offset 14, -4
 2856              	.LBB392:
 2857              	.LBB391:
 2858 000a FFF7FEFF 		bl	sd_mmc_select_slot.part.5
ARM GAS  /tmp/ccTIydBQ.s 			page 106


 2859              	.LVL218:
 2860              	.LBE391:
 2861              	.LBE392:
1865:../libraries/Storage/sd_mmc.c **** 	if (SD_MMC_OK != sd_mmc_select_slot(slot)) {
 2862              		.loc 2 1865 0
 2863 000e 38B9     		cbnz	r0, .L405
 2864              	.LBB393:
 2865              	.LBB394:
1419:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->iface->deselect_device(sd_mmc_card->slot);
 2866              		.loc 2 1419 0
 2867 0010 064B     		ldr	r3, .L413
 2868 0012 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 2869 0014 012B     		cmp	r3, #1
 2870 0016 05D9     		bls	.L412
 2871              	.L406:
 2872              	.LBE394:
 2873              	.LBE393:
1869:../libraries/Storage/sd_mmc.c **** }
 2874              		.loc 2 1869 0
 2875 0018 054B     		ldr	r3, .L413+4
 2876 001a 1B68     		ldr	r3, [r3]
 2877 001c 987C     		ldrb	r0, [r3, #18]	@ zero_extendqisi2
 2878              		.loc 2 1870 0
 2879 001e 08BD     		pop	{r3, pc}
 2880              	.L405:
1866:../libraries/Storage/sd_mmc.c **** 	}
 2881              		.loc 2 1866 0
 2882 0020 0020     		movs	r0, #0
 2883 0022 08BD     		pop	{r3, pc}
 2884              	.L412:
 2885              	.LBB396:
 2886              	.LBB395:
 2887 0024 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 2888              	.LVL219:
 2889 0028 F6E7     		b	.L406
 2890              	.L414:
 2891 002a 00BF     		.align	2
 2892              	.L413:
 2893 002c 00000000 		.word	.LANCHOR5
 2894 0030 00000000 		.word	.LANCHOR0
 2895              	.LBE395:
 2896              	.LBE396:
 2897              		.cfi_endproc
 2898              	.LFE262:
 2899              		.size	sd_mmc_get_version, .-sd_mmc_get_version
 2900              		.section	.text.sd_mmc_get_capacity,"ax",%progbits
 2901              		.align	1
 2902              		.p2align 2,,3
 2903              		.global	sd_mmc_get_capacity
 2904              		.syntax unified
 2905              		.thumb
 2906              		.thumb_func
 2907              		.fpu fpv5-d16
 2908              		.type	sd_mmc_get_capacity, %function
 2909              	sd_mmc_get_capacity:
 2910              	.LFB263:
1871:../libraries/Storage/sd_mmc.c **** 
ARM GAS  /tmp/ccTIydBQ.s 			page 107


1872:../libraries/Storage/sd_mmc.c **** uint32_t sd_mmc_get_capacity(uint8_t slot)
1873:../libraries/Storage/sd_mmc.c **** {
 2911              		.loc 2 1873 0
 2912              		.cfi_startproc
 2913              		@ args = 0, pretend = 0, frame = 0
 2914              		@ frame_needed = 0, uses_anonymous_args = 0
 2915              	.LVL220:
 2916              	.LBB397:
 2917              	.LBB398:
1343:../libraries/Storage/sd_mmc.c **** 		return SD_MMC_ERR_SLOT;
 2918              		.loc 2 1343 0
 2919 0000 0128     		cmp	r0, #1
 2920 0002 01D9     		bls	.L424
 2921              	.LBE398:
 2922              	.LBE397:
1874:../libraries/Storage/sd_mmc.c **** 	if (SD_MMC_OK != sd_mmc_select_slot(slot)) {
1875:../libraries/Storage/sd_mmc.c **** 		return 0;
 2923              		.loc 2 1875 0
 2924 0004 0020     		movs	r0, #0
 2925              	.LVL221:
1876:../libraries/Storage/sd_mmc.c **** 	}
1877:../libraries/Storage/sd_mmc.c **** 	sd_mmc_deselect_slot();
1878:../libraries/Storage/sd_mmc.c **** 	return sd_mmc_card->capacity;
1879:../libraries/Storage/sd_mmc.c **** }
 2926              		.loc 2 1879 0
 2927 0006 7047     		bx	lr
 2928              	.LVL222:
 2929              	.L424:
1873:../libraries/Storage/sd_mmc.c **** 	if (SD_MMC_OK != sd_mmc_select_slot(slot)) {
 2930              		.loc 2 1873 0
 2931 0008 08B5     		push	{r3, lr}
 2932              		.cfi_def_cfa_offset 8
 2933              		.cfi_offset 3, -8
 2934              		.cfi_offset 14, -4
 2935              	.LBB400:
 2936              	.LBB399:
 2937 000a FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 2938              	.LVL223:
 2939              	.LBE399:
 2940              	.LBE400:
1874:../libraries/Storage/sd_mmc.c **** 	if (SD_MMC_OK != sd_mmc_select_slot(slot)) {
 2941              		.loc 2 1874 0
 2942 000e 38B9     		cbnz	r0, .L418
 2943              	.LBB401:
 2944              	.LBB402:
1419:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->iface->deselect_device(sd_mmc_card->slot);
 2945              		.loc 2 1419 0
 2946 0010 064B     		ldr	r3, .L426
 2947 0012 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 2948 0014 012B     		cmp	r3, #1
 2949 0016 05D9     		bls	.L425
 2950              	.L419:
 2951              	.LBE402:
 2952              	.LBE401:
1878:../libraries/Storage/sd_mmc.c **** }
 2953              		.loc 2 1878 0
 2954 0018 054B     		ldr	r3, .L426+4
ARM GAS  /tmp/ccTIydBQ.s 			page 108


 2955 001a 1B68     		ldr	r3, [r3]
 2956 001c 9868     		ldr	r0, [r3, #8]
 2957              		.loc 2 1879 0
 2958 001e 08BD     		pop	{r3, pc}
 2959              	.L418:
1875:../libraries/Storage/sd_mmc.c **** 	}
 2960              		.loc 2 1875 0
 2961 0020 0020     		movs	r0, #0
 2962 0022 08BD     		pop	{r3, pc}
 2963              	.L425:
 2964              	.LBB404:
 2965              	.LBB403:
 2966 0024 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 2967              	.LVL224:
 2968 0028 F6E7     		b	.L419
 2969              	.L427:
 2970 002a 00BF     		.align	2
 2971              	.L426:
 2972 002c 00000000 		.word	.LANCHOR5
 2973 0030 00000000 		.word	.LANCHOR0
 2974              	.LBE403:
 2975              	.LBE404:
 2976              		.cfi_endproc
 2977              	.LFE263:
 2978              		.size	sd_mmc_get_capacity, .-sd_mmc_get_capacity
 2979              		.section	.text.sd_mmc_is_write_protected,"ax",%progbits
 2980              		.align	1
 2981              		.p2align 2,,3
 2982              		.global	sd_mmc_is_write_protected
 2983              		.syntax unified
 2984              		.thumb
 2985              		.thumb_func
 2986              		.fpu fpv5-d16
 2987              		.type	sd_mmc_is_write_protected, %function
 2988              	sd_mmc_is_write_protected:
 2989              	.LFB264:
1880:../libraries/Storage/sd_mmc.c **** 
1881:../libraries/Storage/sd_mmc.c **** bool sd_mmc_is_write_protected(uint8_t slot)
1882:../libraries/Storage/sd_mmc.c **** {
 2990              		.loc 2 1882 0
 2991              		.cfi_startproc
 2992              		@ args = 0, pretend = 0, frame = 0
 2993              		@ frame_needed = 0, uses_anonymous_args = 0
 2994              	.LVL225:
 2995 0000 08B5     		push	{r3, lr}
 2996              		.cfi_def_cfa_offset 8
 2997              		.cfi_offset 3, -8
 2998              		.cfi_offset 14, -4
1883:../libraries/Storage/sd_mmc.c **** 	return sd_mmc_cards[slot].wp_gpio != NoPin && digitalRead(sd_mmc_cards[slot].wp_gpio) == SD_MMC_WP
 2999              		.loc 2 1883 0
 3000 0002 00EB8000 		add	r0, r0, r0, lsl #2
 3001              	.LVL226:
 3002 0006 074B     		ldr	r3, .L432
 3003 0008 03EBC000 		add	r0, r3, r0, lsl #3
 3004 000c 007B     		ldrb	r0, [r0, #12]	@ zero_extendqisi2
 3005 000e FF28     		cmp	r0, #255
 3006 0010 05D0     		beq	.L430
ARM GAS  /tmp/ccTIydBQ.s 			page 109


 3007              		.loc 2 1883 0 is_stmt 0 discriminator 1
 3008 0012 FFF7FEFF 		bl	digitalRead
 3009              	.LVL227:
 3010 0016 80F00100 		eor	r0, r0, #1
 3011 001a C0B2     		uxtb	r0, r0
 3012 001c 08BD     		pop	{r3, pc}
 3013              	.L430:
 3014 001e 0020     		movs	r0, #0
1884:../libraries/Storage/sd_mmc.c **** }
 3015              		.loc 2 1884 0 is_stmt 1
 3016 0020 08BD     		pop	{r3, pc}
 3017              	.L433:
 3018 0022 00BF     		.align	2
 3019              	.L432:
 3020 0024 00000000 		.word	.LANCHOR4
 3021              		.cfi_endproc
 3022              	.LFE264:
 3023              		.size	sd_mmc_is_write_protected, .-sd_mmc_is_write_protected
 3024              		.section	.text.sd_mmc_unmount,"ax",%progbits
 3025              		.align	1
 3026              		.p2align 2,,3
 3027              		.global	sd_mmc_unmount
 3028              		.syntax unified
 3029              		.thumb
 3030              		.thumb_func
 3031              		.fpu fpv5-d16
 3032              		.type	sd_mmc_unmount, %function
 3033              	sd_mmc_unmount:
 3034              	.LFB265:
1885:../libraries/Storage/sd_mmc.c **** 
1886:../libraries/Storage/sd_mmc.c **** #if 1	// dc42
1887:../libraries/Storage/sd_mmc.c **** 
1888:../libraries/Storage/sd_mmc.c **** // Unmount the card. Must call this to force it to be re-initialised when changing card.
1889:../libraries/Storage/sd_mmc.c **** void sd_mmc_unmount(uint8_t slot)
1890:../libraries/Storage/sd_mmc.c **** {
 3035              		.loc 2 1890 0
 3036              		.cfi_startproc
 3037              		@ args = 0, pretend = 0, frame = 0
 3038              		@ frame_needed = 0, uses_anonymous_args = 0
 3039              		@ link register save eliminated.
 3040              	.LVL228:
1891:../libraries/Storage/sd_mmc.c **** 	sd_mmc_cards[slot].state = SD_MMC_CARD_STATE_NO_CARD;
 3041              		.loc 2 1891 0
 3042 0000 00EB8000 		add	r0, r0, r0, lsl #2
 3043              	.LVL229:
 3044 0004 024B     		ldr	r3, .L435
 3045 0006 0422     		movs	r2, #4
 3046 0008 03EBC000 		add	r0, r3, r0, lsl #3
 3047 000c 0274     		strb	r2, [r0, #16]
 3048 000e 7047     		bx	lr
 3049              	.L436:
 3050              		.align	2
 3051              	.L435:
 3052 0010 00000000 		.word	.LANCHOR4
 3053              		.cfi_endproc
 3054              	.LFE265:
 3055              		.size	sd_mmc_unmount, .-sd_mmc_unmount
ARM GAS  /tmp/ccTIydBQ.s 			page 110


 3056              		.section	.text.sd_mmc_get_interface_speed,"ax",%progbits
 3057              		.align	1
 3058              		.p2align 2,,3
 3059              		.global	sd_mmc_get_interface_speed
 3060              		.syntax unified
 3061              		.thumb
 3062              		.thumb_func
 3063              		.fpu fpv5-d16
 3064              		.type	sd_mmc_get_interface_speed, %function
 3065              	sd_mmc_get_interface_speed:
 3066              	.LFB266:
1892:../libraries/Storage/sd_mmc.c **** }
1893:../libraries/Storage/sd_mmc.c **** 
1894:../libraries/Storage/sd_mmc.c **** // Get the interface speed in bytes/sec
1895:../libraries/Storage/sd_mmc.c **** uint32_t sd_mmc_get_interface_speed(uint8_t slot)
1896:../libraries/Storage/sd_mmc.c **** {
 3067              		.loc 2 1896 0
 3068              		.cfi_startproc
 3069              		@ args = 0, pretend = 0, frame = 0
 3070              		@ frame_needed = 0, uses_anonymous_args = 0
 3071              		@ link register save eliminated.
 3072              	.LVL230:
1897:../libraries/Storage/sd_mmc.c **** 	return sd_mmc_cards[slot].iface->getInterfaceSpeed();
 3073              		.loc 2 1897 0
 3074 0000 00EB8000 		add	r0, r0, r0, lsl #2
 3075              	.LVL231:
 3076 0004 024B     		ldr	r3, .L438
 3077 0006 53F83030 		ldr	r3, [r3, r0, lsl #3]
 3078 000a 1B6C     		ldr	r3, [r3, #64]
 3079 000c 1847     		bx	r3
 3080              	.LVL232:
 3081              	.L439:
 3082 000e 00BF     		.align	2
 3083              	.L438:
 3084 0010 00000000 		.word	.LANCHOR4
 3085              		.cfi_endproc
 3086              	.LFE266:
 3087              		.size	sd_mmc_get_interface_speed, .-sd_mmc_get_interface_speed
 3088              		.section	.text.sd_mmc_init_read_blocks,"ax",%progbits
 3089              		.align	1
 3090              		.p2align 2,,3
 3091              		.global	sd_mmc_init_read_blocks
 3092              		.syntax unified
 3093              		.thumb
 3094              		.thumb_func
 3095              		.fpu fpv5-d16
 3096              		.type	sd_mmc_init_read_blocks, %function
 3097              	sd_mmc_init_read_blocks:
 3098              	.LFB267:
1898:../libraries/Storage/sd_mmc.c **** }
1899:../libraries/Storage/sd_mmc.c **** 
1900:../libraries/Storage/sd_mmc.c **** #endif
1901:../libraries/Storage/sd_mmc.c **** 
1902:../libraries/Storage/sd_mmc.c **** sd_mmc_err_t sd_mmc_init_read_blocks(uint8_t slot, uint32_t start, uint16_t nb_block)
1903:../libraries/Storage/sd_mmc.c **** {
 3099              		.loc 2 1903 0
 3100              		.cfi_startproc
ARM GAS  /tmp/ccTIydBQ.s 			page 111


 3101              		@ args = 0, pretend = 0, frame = 0
 3102              		@ frame_needed = 0, uses_anonymous_args = 0
 3103              	.LVL233:
 3104              	.LBB405:
 3105              	.LBB406:
1343:../libraries/Storage/sd_mmc.c **** 		return SD_MMC_ERR_SLOT;
 3106              		.loc 2 1343 0
 3107 0000 0128     		cmp	r0, #1
 3108              	.LBE406:
 3109              	.LBE405:
 3110              		.loc 2 1903 0
 3111 0002 F0B5     		push	{r4, r5, r6, r7, lr}
 3112              		.cfi_def_cfa_offset 20
 3113              		.cfi_offset 4, -20
 3114              		.cfi_offset 5, -16
 3115              		.cfi_offset 6, -12
 3116              		.cfi_offset 7, -8
 3117              		.cfi_offset 14, -4
 3118 0004 83B0     		sub	sp, sp, #12
 3119              		.cfi_def_cfa_offset 32
 3120              	.LBB409:
 3121              	.LBB407:
1343:../libraries/Storage/sd_mmc.c **** 		return SD_MMC_ERR_SLOT;
 3122              		.loc 2 1343 0
 3123 0006 03D9     		bls	.L457
1344:../libraries/Storage/sd_mmc.c **** 	}
 3124              		.loc 2 1344 0
 3125 0008 0424     		movs	r4, #4
 3126              	.LVL234:
 3127              	.L441:
 3128              	.LBE407:
 3129              	.LBE409:
1904:../libraries/Storage/sd_mmc.c **** 	sd_mmc_err_t sd_mmc_err;
1905:../libraries/Storage/sd_mmc.c **** 	uint32_t cmd, arg, resp;
1906:../libraries/Storage/sd_mmc.c **** 
1907:../libraries/Storage/sd_mmc.c **** 	sd_mmc_err = sd_mmc_select_slot(slot);
1908:../libraries/Storage/sd_mmc.c **** 	if (sd_mmc_err != SD_MMC_OK) {
1909:../libraries/Storage/sd_mmc.c **** 		return sd_mmc_err;
1910:../libraries/Storage/sd_mmc.c **** 	}
1911:../libraries/Storage/sd_mmc.c **** 
1912:../libraries/Storage/sd_mmc.c **** 	// Wait for data ready status
1913:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_cmd13()) {
1914:../libraries/Storage/sd_mmc.c **** 		sd_mmc_deselect_slot();
1915:../libraries/Storage/sd_mmc.c **** 		return SD_MMC_ERR_COMM;
1916:../libraries/Storage/sd_mmc.c **** 	}
1917:../libraries/Storage/sd_mmc.c **** 
1918:../libraries/Storage/sd_mmc.c **** 	if (nb_block > 1) {
1919:../libraries/Storage/sd_mmc.c **** 		cmd = SDMMC_CMD18_READ_MULTIPLE_BLOCK;
1920:../libraries/Storage/sd_mmc.c **** 	} else {
1921:../libraries/Storage/sd_mmc.c **** 		cmd = SDMMC_CMD17_READ_SINGLE_BLOCK;
1922:../libraries/Storage/sd_mmc.c **** 	}
1923:../libraries/Storage/sd_mmc.c **** 	/*
1924:../libraries/Storage/sd_mmc.c **** 	 * SDSC Card (CCS=0) uses byte unit address,
1925:../libraries/Storage/sd_mmc.c **** 	 * SDHC and SDXC Cards (CCS=1) use block unit address (512 Bytes unit).
1926:../libraries/Storage/sd_mmc.c **** 	 */
1927:../libraries/Storage/sd_mmc.c **** 	if (sd_mmc_card->type & CARD_TYPE_HC) {
1928:../libraries/Storage/sd_mmc.c **** 		arg = start;
ARM GAS  /tmp/ccTIydBQ.s 			page 112


1929:../libraries/Storage/sd_mmc.c **** 	} else {
1930:../libraries/Storage/sd_mmc.c **** 		arg = (start * SD_MMC_BLOCK_SIZE);
1931:../libraries/Storage/sd_mmc.c **** 	}
1932:../libraries/Storage/sd_mmc.c **** 
1933:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->adtc_start(cmd, arg, SD_MMC_BLOCK_SIZE, nb_block, true)) {
1934:../libraries/Storage/sd_mmc.c **** 		sd_mmc_deselect_slot();
1935:../libraries/Storage/sd_mmc.c **** 		return SD_MMC_ERR_COMM;
1936:../libraries/Storage/sd_mmc.c **** 	}
1937:../libraries/Storage/sd_mmc.c **** 	// Check response
1938:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->is_spi) {
1939:../libraries/Storage/sd_mmc.c **** 		resp = sd_mmc_card->iface->get_response();
1940:../libraries/Storage/sd_mmc.c **** 		if (resp & CARD_STATUS_ERR_RD_WR) {
1941:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: Read blocks %02d resp32 0x%08x CARD_STATUS_ERR_RD_WR\n\r",
1942:../libraries/Storage/sd_mmc.c **** 					__func__, (int)SDMMC_CMD_GET_INDEX(cmd), resp);
1943:../libraries/Storage/sd_mmc.c **** 			sd_mmc_deselect_slot();
1944:../libraries/Storage/sd_mmc.c **** 			return SD_MMC_ERR_COMM;
1945:../libraries/Storage/sd_mmc.c **** 		}
1946:../libraries/Storage/sd_mmc.c **** 	}
1947:../libraries/Storage/sd_mmc.c **** 	sd_mmc_nb_block_remaining = nb_block;
1948:../libraries/Storage/sd_mmc.c **** 	sd_mmc_nb_block_to_tranfer = nb_block;
1949:../libraries/Storage/sd_mmc.c **** 	return SD_MMC_OK;
1950:../libraries/Storage/sd_mmc.c **** }
 3130              		.loc 2 1950 0
 3131 000a 2046     		mov	r0, r4
 3132 000c 03B0     		add	sp, sp, #12
 3133              		.cfi_remember_state
 3134              		.cfi_def_cfa_offset 20
 3135              		@ sp needed
 3136 000e F0BD     		pop	{r4, r5, r6, r7, pc}
 3137              	.LVL235:
 3138              	.L457:
 3139              		.cfi_restore_state
 3140 0010 0E46     		mov	r6, r1
 3141 0012 1546     		mov	r5, r2
 3142              	.LBB410:
 3143              	.LBB408:
 3144 0014 FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 3145              	.LVL236:
 3146              	.LBE408:
 3147              	.LBE410:
1908:../libraries/Storage/sd_mmc.c **** 		return sd_mmc_err;
 3148              		.loc 2 1908 0
 3149 0018 0446     		mov	r4, r0
 3150 001a 0028     		cmp	r0, #0
 3151 001c F5D1     		bne	.L441
1913:../libraries/Storage/sd_mmc.c **** 		sd_mmc_deselect_slot();
 3152              		.loc 2 1913 0
 3153 001e FFF7FEFF 		bl	sd_mmc_cmd13
 3154              	.LVL237:
 3155 0022 28B3     		cbz	r0, .L455
1927:../libraries/Storage/sd_mmc.c **** 		arg = start;
 3156              		.loc 2 1927 0
 3157 0024 184F     		ldr	r7, .L460
1921:../libraries/Storage/sd_mmc.c **** 	}
 3158              		.loc 2 1921 0
 3159 0026 1949     		ldr	r1, .L460+4
1927:../libraries/Storage/sd_mmc.c **** 		arg = start;
ARM GAS  /tmp/ccTIydBQ.s 			page 113


 3160              		.loc 2 1927 0
 3161 0028 3B68     		ldr	r3, [r7]
1921:../libraries/Storage/sd_mmc.c **** 	}
 3162              		.loc 2 1921 0
 3163 002a 1948     		ldr	r0, .L460+8
1927:../libraries/Storage/sd_mmc.c **** 		arg = start;
 3164              		.loc 2 1927 0
 3165 002c 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
1921:../libraries/Storage/sd_mmc.c **** 	}
 3166              		.loc 2 1921 0
 3167 002e 012D     		cmp	r5, #1
 3168 0030 98BF     		it	ls
 3169 0032 0846     		movls	r0, r1
 3170              	.LVL238:
1927:../libraries/Storage/sd_mmc.c **** 		arg = start;
 3171              		.loc 2 1927 0
 3172 0034 1207     		lsls	r2, r2, #28
1933:../libraries/Storage/sd_mmc.c **** 		sd_mmc_deselect_slot();
 3173              		.loc 2 1933 0
 3174 0036 1A68     		ldr	r2, [r3]
 3175 0038 4FF00103 		mov	r3, #1
1930:../libraries/Storage/sd_mmc.c **** 	}
 3176              		.loc 2 1930 0
 3177 003c 58BF     		it	pl
 3178 003e 7602     		lslpl	r6, r6, #9
 3179              	.LVL239:
1933:../libraries/Storage/sd_mmc.c **** 		sd_mmc_deselect_slot();
 3180              		.loc 2 1933 0
 3181 0040 0093     		str	r3, [sp]
 3182 0042 2B46     		mov	r3, r5
 3183 0044 3146     		mov	r1, r6
 3184 0046 166A     		ldr	r6, [r2, #32]
 3185              	.LVL240:
 3186 0048 4FF40072 		mov	r2, #512
 3187 004c B047     		blx	r6
 3188              	.LVL241:
 3189 004e 78B1     		cbz	r0, .L455
1938:../libraries/Storage/sd_mmc.c **** 		resp = sd_mmc_card->iface->get_response();
 3190              		.loc 2 1938 0
 3191 0050 3B68     		ldr	r3, [r7]
 3192 0052 1B68     		ldr	r3, [r3]
 3193 0054 93F84820 		ldrb	r2, [r3, #72]	@ zero_extendqisi2
 3194 0058 22B1     		cbz	r2, .L458
 3195              	.L448:
1947:../libraries/Storage/sd_mmc.c **** 	sd_mmc_nb_block_to_tranfer = nb_block;
 3196              		.loc 2 1947 0
 3197 005a 0E4A     		ldr	r2, .L460+12
1948:../libraries/Storage/sd_mmc.c **** 	return SD_MMC_OK;
 3198              		.loc 2 1948 0
 3199 005c 0E4B     		ldr	r3, .L460+16
1947:../libraries/Storage/sd_mmc.c **** 	sd_mmc_nb_block_to_tranfer = nb_block;
 3200              		.loc 2 1947 0
 3201 005e 1580     		strh	r5, [r2]	@ movhi
1948:../libraries/Storage/sd_mmc.c **** 	return SD_MMC_OK;
 3202              		.loc 2 1948 0
 3203 0060 1D80     		strh	r5, [r3]	@ movhi
1949:../libraries/Storage/sd_mmc.c **** }
ARM GAS  /tmp/ccTIydBQ.s 			page 114


 3204              		.loc 2 1949 0
 3205 0062 D2E7     		b	.L441
 3206              	.L458:
1939:../libraries/Storage/sd_mmc.c **** 		if (resp & CARD_STATUS_ERR_RD_WR) {
 3207              		.loc 2 1939 0
 3208 0064 9B69     		ldr	r3, [r3, #24]
 3209 0066 9847     		blx	r3
 3210              	.LVL242:
1940:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: Read blocks %02d resp32 0x%08x CARD_STATUS_ERR_RD_WR\n\r",
 3211              		.loc 2 1940 0
 3212 0068 0C4B     		ldr	r3, .L460+20
 3213 006a 0340     		ands	r3, r3, r0
 3214 006c 002B     		cmp	r3, #0
 3215 006e F4D0     		beq	.L448
 3216              	.LVL243:
 3217              	.L455:
 3218              	.LBB411:
 3219              	.LBB412:
1419:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->iface->deselect_device(sd_mmc_card->slot);
 3220              		.loc 2 1419 0
 3221 0070 0B4B     		ldr	r3, .L460+24
 3222 0072 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 3223 0074 012B     		cmp	r3, #1
 3224 0076 03D9     		bls	.L459
 3225              	.L456:
 3226              	.LBE412:
 3227              	.LBE411:
1915:../libraries/Storage/sd_mmc.c **** 	}
 3228              		.loc 2 1915 0
 3229 0078 0524     		movs	r4, #5
 3230              		.loc 2 1950 0
 3231 007a 2046     		mov	r0, r4
 3232 007c 03B0     		add	sp, sp, #12
 3233              		.cfi_remember_state
 3234              		.cfi_def_cfa_offset 20
 3235              		@ sp needed
 3236 007e F0BD     		pop	{r4, r5, r6, r7, pc}
 3237              	.L459:
 3238              		.cfi_restore_state
 3239              	.LBB414:
 3240              	.LBB413:
 3241 0080 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 3242              	.LVL244:
 3243 0084 F8E7     		b	.L456
 3244              	.L461:
 3245 0086 00BF     		.align	2
 3246              	.L460:
 3247 0088 00000000 		.word	.LANCHOR0
 3248 008c 11110800 		.word	528657
 3249 0090 12111000 		.word	1052946
 3250 0094 00000000 		.word	.LANCHOR8
 3251 0098 00000000 		.word	.LANCHOR9
 3252 009c 000058E4 		.word	-463994880
 3253 00a0 00000000 		.word	.LANCHOR5
 3254              	.LBE413:
 3255              	.LBE414:
 3256              		.cfi_endproc
ARM GAS  /tmp/ccTIydBQ.s 			page 115


 3257              	.LFE267:
 3258              		.size	sd_mmc_init_read_blocks, .-sd_mmc_init_read_blocks
 3259              		.section	.text.sd_mmc_start_read_blocks,"ax",%progbits
 3260              		.align	1
 3261              		.p2align 2,,3
 3262              		.global	sd_mmc_start_read_blocks
 3263              		.syntax unified
 3264              		.thumb
 3265              		.thumb_func
 3266              		.fpu fpv5-d16
 3267              		.type	sd_mmc_start_read_blocks, %function
 3268              	sd_mmc_start_read_blocks:
 3269              	.LFB268:
1951:../libraries/Storage/sd_mmc.c **** 
1952:../libraries/Storage/sd_mmc.c **** sd_mmc_err_t sd_mmc_start_read_blocks(void *dest, uint16_t nb_block)
1953:../libraries/Storage/sd_mmc.c **** {
 3270              		.loc 2 1953 0
 3271              		.cfi_startproc
 3272              		@ args = 0, pretend = 0, frame = 0
 3273              		@ frame_needed = 0, uses_anonymous_args = 0
 3274              	.LVL245:
1954:../libraries/Storage/sd_mmc.c **** 	Assert(sd_mmc_nb_block_remaining >= nb_block);
1955:../libraries/Storage/sd_mmc.c **** 
1956:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->start_read_blocks(dest, nb_block)) {
 3275              		.loc 2 1956 0
 3276 0000 094B     		ldr	r3, .L466
 3277 0002 1B68     		ldr	r3, [r3]
 3278 0004 1B68     		ldr	r3, [r3]
1953:../libraries/Storage/sd_mmc.c **** 	Assert(sd_mmc_nb_block_remaining >= nb_block);
 3279              		.loc 2 1953 0
 3280 0006 10B5     		push	{r4, lr}
 3281              		.cfi_def_cfa_offset 8
 3282              		.cfi_offset 4, -8
 3283              		.cfi_offset 14, -4
 3284              		.loc 2 1956 0
 3285 0008 1B6B     		ldr	r3, [r3, #48]
1953:../libraries/Storage/sd_mmc.c **** 	Assert(sd_mmc_nb_block_remaining >= nb_block);
 3286              		.loc 2 1953 0
 3287 000a 0C46     		mov	r4, r1
 3288              		.loc 2 1956 0
 3289 000c 9847     		blx	r3
 3290              	.LVL246:
 3291 000e 20B9     		cbnz	r0, .L463
 3292 0010 0346     		mov	r3, r0
1957:../libraries/Storage/sd_mmc.c **** 		sd_mmc_nb_block_remaining = 0;
 3293              		.loc 2 1957 0
 3294 0012 064A     		ldr	r2, .L466+4
1958:../libraries/Storage/sd_mmc.c **** 		return SD_MMC_ERR_COMM;
 3295              		.loc 2 1958 0
 3296 0014 0520     		movs	r0, #5
1957:../libraries/Storage/sd_mmc.c **** 		sd_mmc_nb_block_remaining = 0;
 3297              		.loc 2 1957 0
 3298 0016 1380     		strh	r3, [r2]	@ movhi
 3299              		.loc 2 1958 0
 3300 0018 10BD     		pop	{r4, pc}
 3301              	.L463:
1959:../libraries/Storage/sd_mmc.c **** 	}
ARM GAS  /tmp/ccTIydBQ.s 			page 116


1960:../libraries/Storage/sd_mmc.c **** 	sd_mmc_nb_block_remaining -= nb_block;
 3302              		.loc 2 1960 0
 3303 001a 044A     		ldr	r2, .L466+4
1961:../libraries/Storage/sd_mmc.c **** 	return SD_MMC_OK;
 3304              		.loc 2 1961 0
 3305 001c 0020     		movs	r0, #0
1960:../libraries/Storage/sd_mmc.c **** 	return SD_MMC_OK;
 3306              		.loc 2 1960 0
 3307 001e 1388     		ldrh	r3, [r2]
 3308 0020 1C1B     		subs	r4, r3, r4
 3309 0022 1480     		strh	r4, [r2]	@ movhi
1962:../libraries/Storage/sd_mmc.c **** }
 3310              		.loc 2 1962 0
 3311 0024 10BD     		pop	{r4, pc}
 3312              	.L467:
 3313 0026 00BF     		.align	2
 3314              	.L466:
 3315 0028 00000000 		.word	.LANCHOR0
 3316 002c 00000000 		.word	.LANCHOR8
 3317              		.cfi_endproc
 3318              	.LFE268:
 3319              		.size	sd_mmc_start_read_blocks, .-sd_mmc_start_read_blocks
 3320              		.section	.text.sd_mmc_wait_end_of_read_blocks,"ax",%progbits
 3321              		.align	1
 3322              		.p2align 2,,3
 3323              		.global	sd_mmc_wait_end_of_read_blocks
 3324              		.syntax unified
 3325              		.thumb
 3326              		.thumb_func
 3327              		.fpu fpv5-d16
 3328              		.type	sd_mmc_wait_end_of_read_blocks, %function
 3329              	sd_mmc_wait_end_of_read_blocks:
 3330              	.LFB269:
1963:../libraries/Storage/sd_mmc.c **** 
1964:../libraries/Storage/sd_mmc.c **** sd_mmc_err_t sd_mmc_wait_end_of_read_blocks(bool abort)
1965:../libraries/Storage/sd_mmc.c **** {
 3331              		.loc 2 1965 0
 3332              		.cfi_startproc
 3333              		@ args = 0, pretend = 0, frame = 0
 3334              		@ frame_needed = 0, uses_anonymous_args = 0
 3335              	.LVL247:
 3336 0000 38B5     		push	{r3, r4, r5, lr}
 3337              		.cfi_def_cfa_offset 16
 3338              		.cfi_offset 3, -16
 3339              		.cfi_offset 4, -12
 3340              		.cfi_offset 5, -8
 3341              		.cfi_offset 14, -4
1966:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->wait_end_of_read_blocks()) {
 3342              		.loc 2 1966 0
 3343 0002 164C     		ldr	r4, .L488
1965:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->wait_end_of_read_blocks()) {
 3344              		.loc 2 1965 0
 3345 0004 0546     		mov	r5, r0
 3346              		.loc 2 1966 0
 3347 0006 2368     		ldr	r3, [r4]
 3348 0008 1B68     		ldr	r3, [r3]
 3349 000a 5B6B     		ldr	r3, [r3, #52]
ARM GAS  /tmp/ccTIydBQ.s 			page 117


 3350 000c 9847     		blx	r3
 3351              	.LVL248:
 3352 000e 08B9     		cbnz	r0, .L484
1967:../libraries/Storage/sd_mmc.c **** 		return SD_MMC_ERR_COMM;
 3353              		.loc 2 1967 0
 3354 0010 0520     		movs	r0, #5
1968:../libraries/Storage/sd_mmc.c **** 	}
1969:../libraries/Storage/sd_mmc.c **** 	if (abort) {
1970:../libraries/Storage/sd_mmc.c **** 		sd_mmc_nb_block_remaining = 0;
1971:../libraries/Storage/sd_mmc.c **** 	} else if (sd_mmc_nb_block_remaining) {
1972:../libraries/Storage/sd_mmc.c **** 		return SD_MMC_OK;
1973:../libraries/Storage/sd_mmc.c **** 	}
1974:../libraries/Storage/sd_mmc.c **** 
1975:../libraries/Storage/sd_mmc.c **** 	// All blocks are transfered then stop read operation
1976:../libraries/Storage/sd_mmc.c **** 	if (sd_mmc_nb_block_to_tranfer == 1) {
1977:../libraries/Storage/sd_mmc.c **** 		// Single block transfer, then nothing to do
1978:../libraries/Storage/sd_mmc.c **** 		sd_mmc_deselect_slot();
1979:../libraries/Storage/sd_mmc.c **** 		return SD_MMC_OK;
1980:../libraries/Storage/sd_mmc.c **** 	}
1981:../libraries/Storage/sd_mmc.c **** 	// WORKAROUND for no compliance card (Atmel Internal ref. !MMC7 !SD19):
1982:../libraries/Storage/sd_mmc.c **** 	// The errors on this command must be ignored
1983:../libraries/Storage/sd_mmc.c **** 	// and one retry can be necessary in SPI mode for no compliance card.
1984:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->adtc_stop(SDMMC_CMD12_STOP_TRANSMISSION, 0)) {
1985:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->iface->adtc_stop(SDMMC_CMD12_STOP_TRANSMISSION, 0);
1986:../libraries/Storage/sd_mmc.c **** 	}
1987:../libraries/Storage/sd_mmc.c **** 	sd_mmc_deselect_slot();
1988:../libraries/Storage/sd_mmc.c **** 	return SD_MMC_OK;
1989:../libraries/Storage/sd_mmc.c **** }
 3355              		.loc 2 1989 0
 3356 0012 38BD     		pop	{r3, r4, r5, pc}
 3357              	.L484:
1970:../libraries/Storage/sd_mmc.c **** 	} else if (sd_mmc_nb_block_remaining) {
 3358              		.loc 2 1970 0
 3359 0014 124B     		ldr	r3, .L488+4
1969:../libraries/Storage/sd_mmc.c **** 		sd_mmc_nb_block_remaining = 0;
 3360              		.loc 2 1969 0
 3361 0016 9DB9     		cbnz	r5, .L485
1971:../libraries/Storage/sd_mmc.c **** 		return SD_MMC_OK;
 3362              		.loc 2 1971 0
 3363 0018 1B88     		ldrh	r3, [r3]
 3364 001a 7BB9     		cbnz	r3, .L483
 3365              	.L471:
1976:../libraries/Storage/sd_mmc.c **** 		// Single block transfer, then nothing to do
 3366              		.loc 2 1976 0
 3367 001c 114B     		ldr	r3, .L488+8
 3368 001e 1B88     		ldrh	r3, [r3]
 3369 0020 012B     		cmp	r3, #1
 3370 0022 07D0     		beq	.L482
1984:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->iface->adtc_stop(SDMMC_CMD12_STOP_TRANSMISSION, 0);
 3371              		.loc 2 1984 0
 3372 0024 2368     		ldr	r3, [r4]
 3373 0026 0021     		movs	r1, #0
 3374 0028 43F20C10 		movw	r0, #12556
 3375 002c 1B68     		ldr	r3, [r3]
 3376 002e 5B6A     		ldr	r3, [r3, #36]
 3377 0030 9847     		blx	r3
 3378              	.LVL249:
ARM GAS  /tmp/ccTIydBQ.s 			page 118


 3379 0032 58B1     		cbz	r0, .L486
 3380              	.L482:
 3381              	.LBB415:
 3382              	.LBB416:
1419:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->iface->deselect_device(sd_mmc_card->slot);
 3383              		.loc 2 1419 0
 3384 0034 0C4B     		ldr	r3, .L488+12
 3385 0036 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 3386 0038 012B     		cmp	r3, #1
 3387 003a 04D9     		bls	.L487
 3388              	.L483:
 3389              	.LBE416:
 3390              	.LBE415:
1979:../libraries/Storage/sd_mmc.c **** 	}
 3391              		.loc 2 1979 0
 3392 003c 0020     		movs	r0, #0
 3393 003e 38BD     		pop	{r3, r4, r5, pc}
 3394              	.L485:
1970:../libraries/Storage/sd_mmc.c **** 	} else if (sd_mmc_nb_block_remaining) {
 3395              		.loc 2 1970 0
 3396 0040 0022     		movs	r2, #0
 3397 0042 1A80     		strh	r2, [r3]	@ movhi
 3398 0044 EAE7     		b	.L471
 3399              	.L487:
 3400              	.LBB418:
 3401              	.LBB417:
 3402 0046 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 3403              	.LVL250:
 3404 004a F7E7     		b	.L483
 3405              	.L486:
 3406              	.LBE417:
 3407              	.LBE418:
1985:../libraries/Storage/sd_mmc.c **** 	}
 3408              		.loc 2 1985 0
 3409 004c 2368     		ldr	r3, [r4]
 3410 004e 0146     		mov	r1, r0
 3411 0050 43F20C10 		movw	r0, #12556
 3412 0054 1B68     		ldr	r3, [r3]
 3413 0056 5B6A     		ldr	r3, [r3, #36]
 3414 0058 9847     		blx	r3
 3415              	.LVL251:
 3416 005a EBE7     		b	.L482
 3417              	.L489:
 3418              		.align	2
 3419              	.L488:
 3420 005c 00000000 		.word	.LANCHOR0
 3421 0060 00000000 		.word	.LANCHOR8
 3422 0064 00000000 		.word	.LANCHOR9
 3423 0068 00000000 		.word	.LANCHOR5
 3424              		.cfi_endproc
 3425              	.LFE269:
 3426              		.size	sd_mmc_wait_end_of_read_blocks, .-sd_mmc_wait_end_of_read_blocks
 3427              		.section	.text.sd_mmc_init_write_blocks,"ax",%progbits
 3428              		.align	1
 3429              		.p2align 2,,3
 3430              		.global	sd_mmc_init_write_blocks
 3431              		.syntax unified
ARM GAS  /tmp/ccTIydBQ.s 			page 119


 3432              		.thumb
 3433              		.thumb_func
 3434              		.fpu fpv5-d16
 3435              		.type	sd_mmc_init_write_blocks, %function
 3436              	sd_mmc_init_write_blocks:
 3437              	.LFB270:
1990:../libraries/Storage/sd_mmc.c **** 
1991:../libraries/Storage/sd_mmc.c **** sd_mmc_err_t sd_mmc_init_write_blocks(uint8_t slot, uint32_t start, uint16_t nb_block)
1992:../libraries/Storage/sd_mmc.c **** {
 3438              		.loc 2 1992 0
 3439              		.cfi_startproc
 3440              		@ args = 0, pretend = 0, frame = 0
 3441              		@ frame_needed = 0, uses_anonymous_args = 0
 3442              	.LVL252:
 3443              	.LBB419:
 3444              	.LBB420:
1343:../libraries/Storage/sd_mmc.c **** 		return SD_MMC_ERR_SLOT;
 3445              		.loc 2 1343 0
 3446 0000 0128     		cmp	r0, #1
 3447              	.LBE420:
 3448              	.LBE419:
 3449              		.loc 2 1992 0
 3450 0002 F0B5     		push	{r4, r5, r6, r7, lr}
 3451              		.cfi_def_cfa_offset 20
 3452              		.cfi_offset 4, -20
 3453              		.cfi_offset 5, -16
 3454              		.cfi_offset 6, -12
 3455              		.cfi_offset 7, -8
 3456              		.cfi_offset 14, -4
 3457 0004 83B0     		sub	sp, sp, #12
 3458              		.cfi_def_cfa_offset 32
 3459              	.LBB423:
 3460              	.LBB421:
1343:../libraries/Storage/sd_mmc.c **** 		return SD_MMC_ERR_SLOT;
 3461              		.loc 2 1343 0
 3462 0006 03D9     		bls	.L517
1344:../libraries/Storage/sd_mmc.c **** 	}
 3463              		.loc 2 1344 0
 3464 0008 0425     		movs	r5, #4
 3465              	.LVL253:
 3466              	.L503:
 3467              	.LBE421:
 3468              	.LBE423:
1993:../libraries/Storage/sd_mmc.c **** 	sd_mmc_err_t sd_mmc_err;
1994:../libraries/Storage/sd_mmc.c **** 	uint32_t cmd, arg, resp;
1995:../libraries/Storage/sd_mmc.c **** 
1996:../libraries/Storage/sd_mmc.c **** 	sd_mmc_err = sd_mmc_select_slot(slot);
1997:../libraries/Storage/sd_mmc.c **** 	if (sd_mmc_err != SD_MMC_OK) {
1998:../libraries/Storage/sd_mmc.c **** 		return sd_mmc_err;
1999:../libraries/Storage/sd_mmc.c **** 	}
2000:../libraries/Storage/sd_mmc.c **** 	if (sd_mmc_is_write_protected(slot)) {
2001:../libraries/Storage/sd_mmc.c **** 		sd_mmc_deselect_slot();
2002:../libraries/Storage/sd_mmc.c **** 		return SD_MMC_ERR_WP;
2003:../libraries/Storage/sd_mmc.c **** 	}
2004:../libraries/Storage/sd_mmc.c **** 
2005:../libraries/Storage/sd_mmc.c **** 	if (nb_block > 1) {
2006:../libraries/Storage/sd_mmc.c **** 		cmd = SDMMC_CMD25_WRITE_MULTIPLE_BLOCK;
ARM GAS  /tmp/ccTIydBQ.s 			page 120


2007:../libraries/Storage/sd_mmc.c **** 	} else {
2008:../libraries/Storage/sd_mmc.c **** 		cmd = SDMMC_CMD24_WRITE_BLOCK;
2009:../libraries/Storage/sd_mmc.c **** 	}
2010:../libraries/Storage/sd_mmc.c **** 	/*
2011:../libraries/Storage/sd_mmc.c **** 	 * SDSC Card (CCS=0) uses byte unit address,
2012:../libraries/Storage/sd_mmc.c **** 	 * SDHC and SDXC Cards (CCS=1) use block unit address (512 Bytes unit).
2013:../libraries/Storage/sd_mmc.c **** 	 */
2014:../libraries/Storage/sd_mmc.c **** 	if (sd_mmc_card->type & CARD_TYPE_HC) {
2015:../libraries/Storage/sd_mmc.c **** 		arg = start;
2016:../libraries/Storage/sd_mmc.c **** 	} else {
2017:../libraries/Storage/sd_mmc.c **** 		arg = (start * SD_MMC_BLOCK_SIZE);
2018:../libraries/Storage/sd_mmc.c **** 	}
2019:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->adtc_start(cmd, arg, SD_MMC_BLOCK_SIZE, nb_block, true)) {
2020:../libraries/Storage/sd_mmc.c **** 		sd_mmc_deselect_slot();
2021:../libraries/Storage/sd_mmc.c **** 		return SD_MMC_ERR_COMM;
2022:../libraries/Storage/sd_mmc.c **** 	}
2023:../libraries/Storage/sd_mmc.c **** 	// Check response
2024:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->is_spi) {
2025:../libraries/Storage/sd_mmc.c **** 		resp = sd_mmc_card->iface->get_response();
2026:../libraries/Storage/sd_mmc.c **** 		if (resp & CARD_STATUS_ERR_RD_WR) {
2027:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: Write blocks %02d r1 0x%08x CARD_STATUS_ERR_RD_WR\n\r",
2028:../libraries/Storage/sd_mmc.c **** 					__func__, (int)SDMMC_CMD_GET_INDEX(cmd), resp);
2029:../libraries/Storage/sd_mmc.c **** 			sd_mmc_deselect_slot();
2030:../libraries/Storage/sd_mmc.c **** 			return SD_MMC_ERR_COMM;
2031:../libraries/Storage/sd_mmc.c **** 		}
2032:../libraries/Storage/sd_mmc.c **** 	}
2033:../libraries/Storage/sd_mmc.c **** 	sd_mmc_nb_block_remaining = nb_block;
2034:../libraries/Storage/sd_mmc.c **** 	sd_mmc_nb_block_to_tranfer = nb_block;
2035:../libraries/Storage/sd_mmc.c **** 	return SD_MMC_OK;
2036:../libraries/Storage/sd_mmc.c **** }
 3469              		.loc 2 2036 0
 3470 000a 2846     		mov	r0, r5
 3471 000c 03B0     		add	sp, sp, #12
 3472              		.cfi_remember_state
 3473              		.cfi_def_cfa_offset 20
 3474              		@ sp needed
 3475 000e F0BD     		pop	{r4, r5, r6, r7, pc}
 3476              	.LVL254:
 3477              	.L517:
 3478              		.cfi_restore_state
 3479 0010 0446     		mov	r4, r0
 3480 0012 0F46     		mov	r7, r1
 3481 0014 1646     		mov	r6, r2
 3482              	.LBB424:
 3483              	.LBB422:
 3484 0016 FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 3485              	.LVL255:
 3486              	.LBE422:
 3487              	.LBE424:
1997:../libraries/Storage/sd_mmc.c **** 		return sd_mmc_err;
 3488              		.loc 2 1997 0
 3489 001a 0546     		mov	r5, r0
 3490 001c 0028     		cmp	r0, #0
 3491 001e F4D1     		bne	.L503
 3492              	.LVL256:
 3493              	.LBB425:
 3494              	.LBB426:
ARM GAS  /tmp/ccTIydBQ.s 			page 121


1883:../libraries/Storage/sd_mmc.c **** }
 3495              		.loc 2 1883 0
 3496 0020 04EB8404 		add	r4, r4, r4, lsl #2
 3497              	.LVL257:
 3498 0024 234B     		ldr	r3, .L520
 3499 0026 03EBC404 		add	r4, r3, r4, lsl #3
 3500 002a 207B     		ldrb	r0, [r4, #12]	@ zero_extendqisi2
 3501 002c FF28     		cmp	r0, #255
 3502 002e 0AD0     		beq	.L492
 3503 0030 FFF7FEFF 		bl	digitalRead
 3504              	.LVL258:
 3505 0034 38B9     		cbnz	r0, .L492
 3506              	.LBE426:
 3507              	.LBE425:
 3508              	.LBB427:
 3509              	.LBB428:
1419:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->iface->deselect_device(sd_mmc_card->slot);
 3510              		.loc 2 1419 0
 3511 0036 204B     		ldr	r3, .L520+4
 3512 0038 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 3513 003a 012B     		cmp	r3, #1
 3514 003c 32D9     		bls	.L499
 3515              	.LBE428:
 3516              	.LBE427:
2002:../libraries/Storage/sd_mmc.c **** 	}
 3517              		.loc 2 2002 0
 3518 003e 0725     		movs	r5, #7
 3519              		.loc 2 2036 0
 3520 0040 2846     		mov	r0, r5
 3521 0042 03B0     		add	sp, sp, #12
 3522              		.cfi_remember_state
 3523              		.cfi_def_cfa_offset 20
 3524              		@ sp needed
 3525 0044 F0BD     		pop	{r4, r5, r6, r7, pc}
 3526              	.LVL259:
 3527              	.L492:
 3528              		.cfi_restore_state
2014:../libraries/Storage/sd_mmc.c **** 		arg = start;
 3529              		.loc 2 2014 0
 3530 0046 1D4C     		ldr	r4, .L520+8
2008:../libraries/Storage/sd_mmc.c **** 	}
 3531              		.loc 2 2008 0
 3532 0048 1D48     		ldr	r0, .L520+12
2014:../libraries/Storage/sd_mmc.c **** 		arg = start;
 3533              		.loc 2 2014 0
 3534 004a 2368     		ldr	r3, [r4]
2008:../libraries/Storage/sd_mmc.c **** 	}
 3535              		.loc 2 2008 0
 3536 004c 1D49     		ldr	r1, .L520+16
2014:../libraries/Storage/sd_mmc.c **** 		arg = start;
 3537              		.loc 2 2014 0
 3538 004e 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
2008:../libraries/Storage/sd_mmc.c **** 	}
 3539              		.loc 2 2008 0
 3540 0050 012E     		cmp	r6, #1
 3541 0052 98BF     		it	ls
 3542 0054 0846     		movls	r0, r1
ARM GAS  /tmp/ccTIydBQ.s 			page 122


 3543              	.LVL260:
2014:../libraries/Storage/sd_mmc.c **** 		arg = start;
 3544              		.loc 2 2014 0
 3545 0056 1207     		lsls	r2, r2, #28
 3546 0058 00D4     		bmi	.L494
2017:../libraries/Storage/sd_mmc.c **** 	}
 3547              		.loc 2 2017 0
 3548 005a 7F02     		lsls	r7, r7, #9
 3549              	.LVL261:
 3550              	.L494:
2019:../libraries/Storage/sd_mmc.c **** 		sd_mmc_deselect_slot();
 3551              		.loc 2 2019 0
 3552 005c 1A68     		ldr	r2, [r3]
 3553 005e 0123     		movs	r3, #1
 3554 0060 3946     		mov	r1, r7
 3555 0062 0093     		str	r3, [sp]
 3556 0064 3346     		mov	r3, r6
 3557 0066 176A     		ldr	r7, [r2, #32]
 3558              	.LVL262:
 3559 0068 4FF40072 		mov	r2, #512
 3560 006c B847     		blx	r7
 3561              	.LVL263:
 3562 006e 88B1     		cbz	r0, .L513
2024:../libraries/Storage/sd_mmc.c **** 		resp = sd_mmc_card->iface->get_response();
 3563              		.loc 2 2024 0
 3564 0070 2368     		ldr	r3, [r4]
 3565 0072 1B68     		ldr	r3, [r3]
 3566 0074 93F84820 		ldrb	r2, [r3, #72]	@ zero_extendqisi2
 3567 0078 32B1     		cbz	r2, .L518
 3568              	.L497:
2033:../libraries/Storage/sd_mmc.c **** 	sd_mmc_nb_block_to_tranfer = nb_block;
 3569              		.loc 2 2033 0
 3570 007a 134A     		ldr	r2, .L520+20
 3571              		.loc 2 2036 0
 3572 007c 2846     		mov	r0, r5
2034:../libraries/Storage/sd_mmc.c **** 	return SD_MMC_OK;
 3573              		.loc 2 2034 0
 3574 007e 134B     		ldr	r3, .L520+24
2033:../libraries/Storage/sd_mmc.c **** 	sd_mmc_nb_block_to_tranfer = nb_block;
 3575              		.loc 2 2033 0
 3576 0080 1680     		strh	r6, [r2]	@ movhi
2034:../libraries/Storage/sd_mmc.c **** 	return SD_MMC_OK;
 3577              		.loc 2 2034 0
 3578 0082 1E80     		strh	r6, [r3]	@ movhi
 3579              		.loc 2 2036 0
 3580 0084 03B0     		add	sp, sp, #12
 3581              		.cfi_remember_state
 3582              		.cfi_def_cfa_offset 20
 3583              		@ sp needed
 3584 0086 F0BD     		pop	{r4, r5, r6, r7, pc}
 3585              	.LVL264:
 3586              	.L518:
 3587              		.cfi_restore_state
2025:../libraries/Storage/sd_mmc.c **** 		if (resp & CARD_STATUS_ERR_RD_WR) {
 3588              		.loc 2 2025 0
 3589 0088 9B69     		ldr	r3, [r3, #24]
 3590 008a 9847     		blx	r3
ARM GAS  /tmp/ccTIydBQ.s 			page 123


 3591              	.LVL265:
2026:../libraries/Storage/sd_mmc.c **** 			sd_mmc_debug("%s: Write blocks %02d r1 0x%08x CARD_STATUS_ERR_RD_WR\n\r",
 3592              		.loc 2 2026 0
 3593 008c 104B     		ldr	r3, .L520+28
 3594 008e 0340     		ands	r3, r3, r0
 3595 0090 002B     		cmp	r3, #0
 3596 0092 F2D0     		beq	.L497
 3597              	.LVL266:
 3598              	.L513:
 3599              	.LBB430:
 3600              	.LBB431:
1419:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->iface->deselect_device(sd_mmc_card->slot);
 3601              		.loc 2 1419 0
 3602 0094 084B     		ldr	r3, .L520+4
 3603 0096 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 3604 0098 012B     		cmp	r3, #1
 3605 009a 07D9     		bls	.L519
 3606              	.L514:
 3607              	.LBE431:
 3608              	.LBE430:
2021:../libraries/Storage/sd_mmc.c **** 	}
 3609              		.loc 2 2021 0
 3610 009c 0525     		movs	r5, #5
 3611              		.loc 2 2036 0
 3612 009e 2846     		mov	r0, r5
 3613 00a0 03B0     		add	sp, sp, #12
 3614              		.cfi_remember_state
 3615              		.cfi_def_cfa_offset 20
 3616              		@ sp needed
 3617 00a2 F0BD     		pop	{r4, r5, r6, r7, pc}
 3618              	.LVL267:
 3619              	.L499:
 3620              		.cfi_restore_state
 3621              	.LBB433:
 3622              	.LBB429:
 3623 00a4 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 3624              	.LVL268:
 3625              	.LBE429:
 3626              	.LBE433:
2002:../libraries/Storage/sd_mmc.c **** 	}
 3627              		.loc 2 2002 0
 3628 00a8 0725     		movs	r5, #7
 3629 00aa AEE7     		b	.L503
 3630              	.LVL269:
 3631              	.L519:
 3632              	.LBB434:
 3633              	.LBB432:
 3634 00ac FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 3635              	.LVL270:
 3636 00b0 F4E7     		b	.L514
 3637              	.L521:
 3638 00b2 00BF     		.align	2
 3639              	.L520:
 3640 00b4 00000000 		.word	.LANCHOR4
 3641 00b8 00000000 		.word	.LANCHOR5
 3642 00bc 00000000 		.word	.LANCHOR0
 3643 00c0 19911000 		.word	1085721
ARM GAS  /tmp/ccTIydBQ.s 			page 124


 3644 00c4 18910800 		.word	561432
 3645 00c8 00000000 		.word	.LANCHOR8
 3646 00cc 00000000 		.word	.LANCHOR9
 3647 00d0 000058E4 		.word	-463994880
 3648              	.LBE432:
 3649              	.LBE434:
 3650              		.cfi_endproc
 3651              	.LFE270:
 3652              		.size	sd_mmc_init_write_blocks, .-sd_mmc_init_write_blocks
 3653              		.section	.text.sd_mmc_start_write_blocks,"ax",%progbits
 3654              		.align	1
 3655              		.p2align 2,,3
 3656              		.global	sd_mmc_start_write_blocks
 3657              		.syntax unified
 3658              		.thumb
 3659              		.thumb_func
 3660              		.fpu fpv5-d16
 3661              		.type	sd_mmc_start_write_blocks, %function
 3662              	sd_mmc_start_write_blocks:
 3663              	.LFB271:
2037:../libraries/Storage/sd_mmc.c **** 
2038:../libraries/Storage/sd_mmc.c **** sd_mmc_err_t sd_mmc_start_write_blocks(const void *src, uint16_t nb_block)
2039:../libraries/Storage/sd_mmc.c **** {
 3664              		.loc 2 2039 0
 3665              		.cfi_startproc
 3666              		@ args = 0, pretend = 0, frame = 0
 3667              		@ frame_needed = 0, uses_anonymous_args = 0
 3668              	.LVL271:
2040:../libraries/Storage/sd_mmc.c **** 	Assert(sd_mmc_nb_block_remaining >= nb_block);
2041:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->start_write_blocks(src, nb_block)) {
 3669              		.loc 2 2041 0
 3670 0000 094B     		ldr	r3, .L526
 3671 0002 1B68     		ldr	r3, [r3]
 3672 0004 1B68     		ldr	r3, [r3]
2039:../libraries/Storage/sd_mmc.c **** 	Assert(sd_mmc_nb_block_remaining >= nb_block);
 3673              		.loc 2 2039 0
 3674 0006 10B5     		push	{r4, lr}
 3675              		.cfi_def_cfa_offset 8
 3676              		.cfi_offset 4, -8
 3677              		.cfi_offset 14, -4
 3678              		.loc 2 2041 0
 3679 0008 9B6B     		ldr	r3, [r3, #56]
2039:../libraries/Storage/sd_mmc.c **** 	Assert(sd_mmc_nb_block_remaining >= nb_block);
 3680              		.loc 2 2039 0
 3681 000a 0C46     		mov	r4, r1
 3682              		.loc 2 2041 0
 3683 000c 9847     		blx	r3
 3684              	.LVL272:
 3685 000e 20B9     		cbnz	r0, .L523
 3686 0010 0346     		mov	r3, r0
2042:../libraries/Storage/sd_mmc.c **** 		sd_mmc_nb_block_remaining = 0;
 3687              		.loc 2 2042 0
 3688 0012 064A     		ldr	r2, .L526+4
2043:../libraries/Storage/sd_mmc.c **** 		return SD_MMC_ERR_COMM;
 3689              		.loc 2 2043 0
 3690 0014 0520     		movs	r0, #5
2042:../libraries/Storage/sd_mmc.c **** 		sd_mmc_nb_block_remaining = 0;
ARM GAS  /tmp/ccTIydBQ.s 			page 125


 3691              		.loc 2 2042 0
 3692 0016 1380     		strh	r3, [r2]	@ movhi
 3693              		.loc 2 2043 0
 3694 0018 10BD     		pop	{r4, pc}
 3695              	.L523:
2044:../libraries/Storage/sd_mmc.c **** 	}
2045:../libraries/Storage/sd_mmc.c **** 	sd_mmc_nb_block_remaining -= nb_block;
 3696              		.loc 2 2045 0
 3697 001a 044A     		ldr	r2, .L526+4
2046:../libraries/Storage/sd_mmc.c **** 	return SD_MMC_OK;
 3698              		.loc 2 2046 0
 3699 001c 0020     		movs	r0, #0
2045:../libraries/Storage/sd_mmc.c **** 	return SD_MMC_OK;
 3700              		.loc 2 2045 0
 3701 001e 1388     		ldrh	r3, [r2]
 3702 0020 1C1B     		subs	r4, r3, r4
 3703 0022 1480     		strh	r4, [r2]	@ movhi
2047:../libraries/Storage/sd_mmc.c **** }
 3704              		.loc 2 2047 0
 3705 0024 10BD     		pop	{r4, pc}
 3706              	.L527:
 3707 0026 00BF     		.align	2
 3708              	.L526:
 3709 0028 00000000 		.word	.LANCHOR0
 3710 002c 00000000 		.word	.LANCHOR8
 3711              		.cfi_endproc
 3712              	.LFE271:
 3713              		.size	sd_mmc_start_write_blocks, .-sd_mmc_start_write_blocks
 3714              		.section	.text.sd_mmc_wait_end_of_write_blocks,"ax",%progbits
 3715              		.align	1
 3716              		.p2align 2,,3
 3717              		.global	sd_mmc_wait_end_of_write_blocks
 3718              		.syntax unified
 3719              		.thumb
 3720              		.thumb_func
 3721              		.fpu fpv5-d16
 3722              		.type	sd_mmc_wait_end_of_write_blocks, %function
 3723              	sd_mmc_wait_end_of_write_blocks:
 3724              	.LFB272:
2048:../libraries/Storage/sd_mmc.c **** 
2049:../libraries/Storage/sd_mmc.c **** sd_mmc_err_t sd_mmc_wait_end_of_write_blocks(bool abort)
2050:../libraries/Storage/sd_mmc.c **** {
 3725              		.loc 2 2050 0
 3726              		.cfi_startproc
 3727              		@ args = 0, pretend = 0, frame = 0
 3728              		@ frame_needed = 0, uses_anonymous_args = 0
 3729              	.LVL273:
 3730 0000 38B5     		push	{r3, r4, r5, lr}
 3731              		.cfi_def_cfa_offset 16
 3732              		.cfi_offset 3, -16
 3733              		.cfi_offset 4, -12
 3734              		.cfi_offset 5, -8
 3735              		.cfi_offset 14, -4
2051:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->wait_end_of_write_blocks()) {
 3736              		.loc 2 2051 0
 3737 0002 174C     		ldr	r4, .L550
2050:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->wait_end_of_write_blocks()) {
ARM GAS  /tmp/ccTIydBQ.s 			page 126


 3738              		.loc 2 2050 0
 3739 0004 0546     		mov	r5, r0
 3740              		.loc 2 2051 0
 3741 0006 2368     		ldr	r3, [r4]
 3742 0008 1B68     		ldr	r3, [r3]
 3743 000a DB6B     		ldr	r3, [r3, #60]
 3744 000c 9847     		blx	r3
 3745              	.LVL274:
 3746 000e 08B9     		cbnz	r0, .L546
 3747              	.L544:
2052:../libraries/Storage/sd_mmc.c **** 		return SD_MMC_ERR_COMM;
2053:../libraries/Storage/sd_mmc.c **** 	}
2054:../libraries/Storage/sd_mmc.c **** 	if (abort) {
2055:../libraries/Storage/sd_mmc.c **** 		sd_mmc_nb_block_remaining = 0;
2056:../libraries/Storage/sd_mmc.c **** 	} else if (sd_mmc_nb_block_remaining) {
2057:../libraries/Storage/sd_mmc.c **** 		return SD_MMC_OK;
2058:../libraries/Storage/sd_mmc.c **** 	}
2059:../libraries/Storage/sd_mmc.c **** 
2060:../libraries/Storage/sd_mmc.c **** 	// All blocks are transfered then stop write operation
2061:../libraries/Storage/sd_mmc.c **** 	if (sd_mmc_nb_block_to_tranfer == 1) {
2062:../libraries/Storage/sd_mmc.c **** 		// Single block transfer, then nothing to do
2063:../libraries/Storage/sd_mmc.c **** 		sd_mmc_deselect_slot();
2064:../libraries/Storage/sd_mmc.c **** 		return SD_MMC_OK;
2065:../libraries/Storage/sd_mmc.c **** 	}
2066:../libraries/Storage/sd_mmc.c **** 
2067:../libraries/Storage/sd_mmc.c **** 	if (!sd_mmc_card->iface->is_spi) {
2068:../libraries/Storage/sd_mmc.c **** 		// Note: SPI multi block writes terminate using a special
2069:../libraries/Storage/sd_mmc.c **** 		// token, not a STOP_TRANSMISSION request.
2070:../libraries/Storage/sd_mmc.c **** 		if (!sd_mmc_card->iface->adtc_stop(SDMMC_CMD12_STOP_TRANSMISSION, 0)) {
2071:../libraries/Storage/sd_mmc.c **** 			sd_mmc_deselect_slot();
2072:../libraries/Storage/sd_mmc.c **** 			return SD_MMC_ERR_COMM;
 3748              		.loc 2 2072 0
 3749 0010 0520     		movs	r0, #5
 3750 0012 38BD     		pop	{r3, r4, r5, pc}
 3751              	.L546:
2055:../libraries/Storage/sd_mmc.c **** 	} else if (sd_mmc_nb_block_remaining) {
 3752              		.loc 2 2055 0
 3753 0014 134B     		ldr	r3, .L550+4
2054:../libraries/Storage/sd_mmc.c **** 		sd_mmc_nb_block_remaining = 0;
 3754              		.loc 2 2054 0
 3755 0016 85B9     		cbnz	r5, .L547
2056:../libraries/Storage/sd_mmc.c **** 		return SD_MMC_OK;
 3756              		.loc 2 2056 0
 3757 0018 1B88     		ldrh	r3, [r3]
 3758 001a 63B9     		cbnz	r3, .L545
 3759              	.L532:
2061:../libraries/Storage/sd_mmc.c **** 		// Single block transfer, then nothing to do
 3760              		.loc 2 2061 0
 3761 001c 124B     		ldr	r3, .L550+8
 3762 001e 1B88     		ldrh	r3, [r3]
 3763 0020 012B     		cmp	r3, #1
 3764 0022 04D0     		beq	.L543
2067:../libraries/Storage/sd_mmc.c **** 		// Note: SPI multi block writes terminate using a special
 3765              		.loc 2 2067 0
 3766 0024 2368     		ldr	r3, [r4]
 3767 0026 1B68     		ldr	r3, [r3]
 3768 0028 93F84810 		ldrb	r1, [r3, #72]	@ zero_extendqisi2
ARM GAS  /tmp/ccTIydBQ.s 			page 127


 3769 002c 41B1     		cbz	r1, .L548
 3770              	.L543:
 3771              	.LBB435:
 3772              	.LBB436:
1419:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->iface->deselect_device(sd_mmc_card->slot);
 3773              		.loc 2 1419 0
 3774 002e 0F4B     		ldr	r3, .L550+12
 3775 0030 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 3776 0032 012B     		cmp	r3, #1
 3777 0034 11D9     		bls	.L549
 3778              	.L545:
 3779              	.LBE436:
 3780              	.LBE435:
2064:../libraries/Storage/sd_mmc.c **** 	}
 3781              		.loc 2 2064 0
 3782 0036 0020     		movs	r0, #0
 3783 0038 38BD     		pop	{r3, r4, r5, pc}
 3784              	.L547:
2055:../libraries/Storage/sd_mmc.c **** 	} else if (sd_mmc_nb_block_remaining) {
 3785              		.loc 2 2055 0
 3786 003a 0022     		movs	r2, #0
 3787 003c 1A80     		strh	r2, [r3]	@ movhi
 3788 003e EDE7     		b	.L532
 3789              	.L548:
2070:../libraries/Storage/sd_mmc.c **** 			sd_mmc_deselect_slot();
 3790              		.loc 2 2070 0
 3791 0040 5B6A     		ldr	r3, [r3, #36]
 3792 0042 43F20C10 		movw	r0, #12556
 3793 0046 9847     		blx	r3
 3794              	.LVL275:
 3795 0048 0028     		cmp	r0, #0
 3796 004a F0D1     		bne	.L543
 3797              	.LBB438:
 3798              	.LBB439:
1419:../libraries/Storage/sd_mmc.c **** 		sd_mmc_card->iface->deselect_device(sd_mmc_card->slot);
 3799              		.loc 2 1419 0
 3800 004c 074B     		ldr	r3, .L550+12
 3801 004e 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 3802 0050 012B     		cmp	r3, #1
 3803 0052 DDD8     		bhi	.L544
 3804 0054 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 3805              	.LVL276:
 3806 0058 DAE7     		b	.L544
 3807              	.L549:
 3808              	.LBE439:
 3809              	.LBE438:
 3810              	.LBB440:
 3811              	.LBB437:
 3812 005a FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 3813              	.LVL277:
 3814 005e EAE7     		b	.L545
 3815              	.L551:
 3816              		.align	2
 3817              	.L550:
 3818 0060 00000000 		.word	.LANCHOR0
 3819 0064 00000000 		.word	.LANCHOR8
 3820 0068 00000000 		.word	.LANCHOR9
ARM GAS  /tmp/ccTIydBQ.s 			page 128


 3821 006c 00000000 		.word	.LANCHOR5
 3822              	.LBE437:
 3823              	.LBE440:
 3824              		.cfi_endproc
 3825              	.LFE272:
 3826              		.size	sd_mmc_wait_end_of_write_blocks, .-sd_mmc_wait_end_of_write_blocks
 3827              		.global	mmc_trans_multipliers
 3828              		.global	sd_trans_multipliers
 3829              		.global	sd_mmc_trans_units
 3830              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 3831              		.align	2
 3832              		.type	cpu_irq_critical_section_counter, %object
 3833              		.size	cpu_irq_critical_section_counter, 4
 3834              	cpu_irq_critical_section_counter:
 3835 0000 00000000 		.space	4
 3836              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 3837              		.type	cpu_irq_prev_interrupt_state, %object
 3838              		.size	cpu_irq_prev_interrupt_state, 1
 3839              	cpu_irq_prev_interrupt_state:
 3840 0000 00       		.space	1
 3841              		.section	.bss.sd_mmc_card,"aw",%nobits
 3842              		.align	2
 3843              		.set	.LANCHOR0,. + 0
 3844              		.type	sd_mmc_card, %object
 3845              		.size	sd_mmc_card, 4
 3846              	sd_mmc_card:
 3847 0000 00000000 		.space	4
 3848              		.section	.bss.sd_mmc_cards,"aw",%nobits
 3849              		.align	2
 3850              		.set	.LANCHOR4,. + 0
 3851              		.type	sd_mmc_cards, %object
 3852              		.size	sd_mmc_cards, 80
 3853              	sd_mmc_cards:
 3854 0000 00000000 		.space	80
 3854      00000000 
 3854      00000000 
 3854      00000000 
 3854      00000000 
 3855              		.section	.bss.sd_mmc_nb_block_remaining,"aw",%nobits
 3856              		.align	1
 3857              		.set	.LANCHOR8,. + 0
 3858              		.type	sd_mmc_nb_block_remaining, %object
 3859              		.size	sd_mmc_nb_block_remaining, 2
 3860              	sd_mmc_nb_block_remaining:
 3861 0000 0000     		.space	2
 3862              		.section	.bss.sd_mmc_nb_block_to_tranfer,"aw",%nobits
 3863              		.align	1
 3864              		.set	.LANCHOR9,. + 0
 3865              		.type	sd_mmc_nb_block_to_tranfer, %object
 3866              		.size	sd_mmc_nb_block_to_tranfer, 2
 3867              	sd_mmc_nb_block_to_tranfer:
 3868 0000 0000     		.space	2
 3869              		.section	.bss.sd_mmc_slot_sel,"aw",%nobits
 3870              		.set	.LANCHOR5,. + 0
 3871              		.type	sd_mmc_slot_sel, %object
 3872              		.size	sd_mmc_slot_sel, 1
 3873              	sd_mmc_slot_sel:
ARM GAS  /tmp/ccTIydBQ.s 			page 129


 3874 0000 00       		.space	1
 3875              		.section	.rodata.hsmciInterface,"a",%progbits
 3876              		.align	2
 3877              		.set	.LANCHOR6,. + 0
 3878              		.type	hsmciInterface, %object
 3879              		.size	hsmciInterface, 76
 3880              	hsmciInterface:
 3881 0000 00000000 		.word	hsmci_select_device
 3882 0004 00000000 		.word	hsmci_deselect_device
 3883 0008 00000000 		.word	hsmci_get_bus_width
 3884 000c 00000000 		.word	hsmci_is_high_speed_capable
 3885 0010 00000000 		.word	hsmci_send_clock
 3886 0014 00000000 		.word	hsmci_send_cmd
 3887 0018 00000000 		.word	hsmci_get_response
 3888 001c 00000000 		.word	hsmci_get_response_128
 3889 0020 00000000 		.word	hsmci_adtc_start
 3890 0024 00000000 		.word	hsmci_send_cmd
 3891 0028 00000000 		.word	hsmci_read_word
 3892 002c 00000000 		.word	hsmci_write_word
 3893 0030 00000000 		.word	hsmci_start_read_blocks
 3894 0034 00000000 		.word	hsmci_wait_end_of_read_blocks
 3895 0038 00000000 		.word	hsmci_start_write_blocks
 3896 003c 00000000 		.word	hsmci_wait_end_of_write_blocks
 3897 0040 00000000 		.word	hsmci_get_speed
 3898 0044 00000000 		.word	hsmci_set_idle_func
 3899 0048 00       		.byte	0
 3900 0049 000000   		.space	3
 3901              		.section	.rodata.mmc_trans_multipliers,"a",%progbits
 3902              		.align	2
 3903              		.set	.LANCHOR1,. + 0
 3904              		.type	mmc_trans_multipliers, %object
 3905              		.size	mmc_trans_multipliers, 64
 3906              	mmc_trans_multipliers:
 3907 0000 00000000 		.word	0
 3908 0004 0A000000 		.word	10
 3909 0008 0C000000 		.word	12
 3910 000c 0D000000 		.word	13
 3911 0010 0F000000 		.word	15
 3912 0014 14000000 		.word	20
 3913 0018 1A000000 		.word	26
 3914 001c 1E000000 		.word	30
 3915 0020 23000000 		.word	35
 3916 0024 28000000 		.word	40
 3917 0028 2D000000 		.word	45
 3918 002c 34000000 		.word	52
 3919 0030 37000000 		.word	55
 3920 0034 3C000000 		.word	60
 3921 0038 46000000 		.word	70
 3922 003c 50000000 		.word	80
 3923              		.section	.rodata.sd_mmc_trans_units,"a",%progbits
 3924              		.align	2
 3925              		.set	.LANCHOR2,. + 0
 3926              		.type	sd_mmc_trans_units, %object
 3927              		.size	sd_mmc_trans_units, 28
 3928              	sd_mmc_trans_units:
 3929 0000 0A000000 		.word	10
 3930 0004 64000000 		.word	100
ARM GAS  /tmp/ccTIydBQ.s 			page 130


 3931 0008 E8030000 		.word	1000
 3932 000c 10270000 		.word	10000
 3933 0010 00000000 		.word	0
 3934 0014 00000000 		.word	0
 3935 0018 00000000 		.word	0
 3936              		.section	.rodata.sd_trans_multipliers,"a",%progbits
 3937              		.align	2
 3938              		.set	.LANCHOR3,. + 0
 3939              		.type	sd_trans_multipliers, %object
 3940              		.size	sd_trans_multipliers, 64
 3941              	sd_trans_multipliers:
 3942 0000 00000000 		.word	0
 3943 0004 0A000000 		.word	10
 3944 0008 0C000000 		.word	12
 3945 000c 0D000000 		.word	13
 3946 0010 0F000000 		.word	15
 3947 0014 14000000 		.word	20
 3948 0018 19000000 		.word	25
 3949 001c 1E000000 		.word	30
 3950 0020 23000000 		.word	35
 3951 0024 28000000 		.word	40
 3952 0028 2D000000 		.word	45
 3953 002c 32000000 		.word	50
 3954 0030 37000000 		.word	55
 3955 0034 3C000000 		.word	60
 3956 0038 46000000 		.word	70
 3957 003c 50000000 		.word	80
 3958              		.section	.rodata.spiInterface,"a",%progbits
 3959              		.align	2
 3960              		.set	.LANCHOR7,. + 0
 3961              		.type	spiInterface, %object
 3962              		.size	spiInterface, 76
 3963              	spiInterface:
 3964 0000 00000000 		.word	sd_mmc_spi_select_device
 3965 0004 00000000 		.word	sd_mmc_spi_deselect_device
 3966 0008 00000000 		.word	sd_mmc_spi_get_bus_width
 3967 000c 00000000 		.word	sd_mmc_spi_is_high_speed_capable
 3968 0010 00000000 		.word	sd_mmc_spi_send_clock
 3969 0014 00000000 		.word	sd_mmc_spi_send_cmd
 3970 0018 00000000 		.word	sd_mmc_spi_get_response
 3971 001c 00000000 		.word	sd_mmc_spi_get_response_128
 3972 0020 00000000 		.word	sd_mmc_spi_adtc_start
 3973 0024 00000000 		.word	sd_mmc_spi_send_cmd
 3974 0028 00000000 		.word	sd_mmc_spi_read_word
 3975 002c 00000000 		.word	sd_mmc_spi_write_word
 3976 0030 00000000 		.word	sd_mmc_spi_start_read_blocks
 3977 0034 00000000 		.word	sd_mmc_spi_wait_end_of_read_blocks
 3978 0038 00000000 		.word	sd_mmc_spi_start_write_blocks
 3979 003c 00000000 		.word	sd_mmc_spi_wait_end_of_write_blocks
 3980 0040 00000000 		.word	spi_mmc_get_speed
 3981 0044 00000000 		.word	sd_mmc_spi_set_idle_func
 3982 0048 01       		.byte	1
 3983 0049 000000   		.space	3
 3984              		.text
 3985              	.Letext0:
 3986              		.file 5 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 3987              		.file 6 "/usr/include/newlib/machine/_default_types.h"
ARM GAS  /tmp/ccTIydBQ.s 			page 131


 3988              		.file 7 "/usr/include/newlib/sys/_stdint.h"
 3989              		.file 8 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 3990              		.file 9 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 3991              		.file 10 "/usr/include/newlib/sys/lock.h"
 3992              		.file 11 "/usr/include/newlib/sys/_types.h"
 3993              		.file 12 "/usr/include/newlib/sys/reent.h"
 3994              		.file 13 "/usr/include/newlib/stdlib.h"
 3995              		.file 14 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 3996              		.file 15 "/usr/include/newlib/math.h"
 3997              		.file 16 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/Core.h"
 3998              		.file 17 "/usr/include/newlib/time.h"
 3999              		.file 18 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/variant.h"
 4000              		.file 19 "../libraries/Storage/sd_mmc.h"
 4001              		.file 20 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/hsmci/hsmci.h"
 4002              		.section	.debug_info,"",%progbits
 4003              	.Ldebug_info0:
 4004 0000 DE250000 		.4byte	0x25de
 4005 0004 0400     		.2byte	0x4
 4006 0006 00000000 		.4byte	.Ldebug_abbrev0
 4007 000a 04       		.byte	0x4
 4008 000b 01       		.uleb128 0x1
 4009 000c 250C0000 		.4byte	.LASF292
 4010 0010 0C       		.byte	0xc
 4011 0011 AF020000 		.4byte	.LASF293
 4012 0015 2C0D0000 		.4byte	.LASF294
 4013 0019 B8040000 		.4byte	.Ldebug_ranges0+0x4b8
 4014 001d 00000000 		.4byte	0
 4015 0021 00000000 		.4byte	.Ldebug_line0
 4016 0025 02       		.uleb128 0x2
 4017 0026 04       		.byte	0x4
 4018 0027 05       		.byte	0x5
 4019 0028 696E7400 		.ascii	"int\000"
 4020 002c 03       		.uleb128 0x3
 4021 002d 88040000 		.4byte	.LASF2
 4022 0031 05       		.byte	0x5
 4023 0032 D8       		.byte	0xd8
 4024 0033 37000000 		.4byte	0x37
 4025 0037 04       		.uleb128 0x4
 4026 0038 04       		.byte	0x4
 4027 0039 07       		.byte	0x7
 4028 003a E2000000 		.4byte	.LASF0
 4029 003e 04       		.uleb128 0x4
 4030 003f 01       		.byte	0x1
 4031 0040 06       		.byte	0x6
 4032 0041 DF0D0000 		.4byte	.LASF1
 4033 0045 03       		.uleb128 0x3
 4034 0046 740A0000 		.4byte	.LASF3
 4035 004a 06       		.byte	0x6
 4036 004b 1D       		.byte	0x1d
 4037 004c 50000000 		.4byte	0x50
 4038 0050 04       		.uleb128 0x4
 4039 0051 01       		.byte	0x1
 4040 0052 08       		.byte	0x8
 4041 0053 DC0B0000 		.4byte	.LASF4
 4042 0057 04       		.uleb128 0x4
 4043 0058 02       		.byte	0x2
 4044 0059 05       		.byte	0x5
ARM GAS  /tmp/ccTIydBQ.s 			page 132


 4045 005a 6C090000 		.4byte	.LASF5
 4046 005e 03       		.uleb128 0x3
 4047 005f B9030000 		.4byte	.LASF6
 4048 0063 06       		.byte	0x6
 4049 0064 2B       		.byte	0x2b
 4050 0065 69000000 		.4byte	0x69
 4051 0069 04       		.uleb128 0x4
 4052 006a 02       		.byte	0x2
 4053 006b 07       		.byte	0x7
 4054 006c 1A0E0000 		.4byte	.LASF7
 4055 0070 03       		.uleb128 0x3
 4056 0071 14010000 		.4byte	.LASF8
 4057 0075 06       		.byte	0x6
 4058 0076 3F       		.byte	0x3f
 4059 0077 7B000000 		.4byte	0x7b
 4060 007b 04       		.uleb128 0x4
 4061 007c 04       		.byte	0x4
 4062 007d 05       		.byte	0x5
 4063 007e 7E090000 		.4byte	.LASF9
 4064 0082 03       		.uleb128 0x3
 4065 0083 F40B0000 		.4byte	.LASF10
 4066 0087 06       		.byte	0x6
 4067 0088 41       		.byte	0x41
 4068 0089 8D000000 		.4byte	0x8d
 4069 008d 04       		.uleb128 0x4
 4070 008e 04       		.byte	0x4
 4071 008f 07       		.byte	0x7
 4072 0090 080B0000 		.4byte	.LASF11
 4073 0094 04       		.uleb128 0x4
 4074 0095 08       		.byte	0x8
 4075 0096 05       		.byte	0x5
 4076 0097 11070000 		.4byte	.LASF12
 4077 009b 04       		.uleb128 0x4
 4078 009c 08       		.byte	0x8
 4079 009d 07       		.byte	0x7
 4080 009e 45030000 		.4byte	.LASF13
 4081 00a2 03       		.uleb128 0x3
 4082 00a3 75060000 		.4byte	.LASF14
 4083 00a7 07       		.byte	0x7
 4084 00a8 18       		.byte	0x18
 4085 00a9 45000000 		.4byte	0x45
 4086 00ad 05       		.uleb128 0x5
 4087 00ae A2000000 		.4byte	0xa2
 4088 00b2 03       		.uleb128 0x3
 4089 00b3 F4080000 		.4byte	.LASF15
 4090 00b7 07       		.byte	0x7
 4091 00b8 24       		.byte	0x24
 4092 00b9 5E000000 		.4byte	0x5e
 4093 00bd 03       		.uleb128 0x3
 4094 00be 530B0000 		.4byte	.LASF16
 4095 00c2 07       		.byte	0x7
 4096 00c3 2C       		.byte	0x2c
 4097 00c4 70000000 		.4byte	0x70
 4098 00c8 06       		.uleb128 0x6
 4099 00c9 BD000000 		.4byte	0xbd
 4100 00cd 03       		.uleb128 0x3
 4101 00ce 6D020000 		.4byte	.LASF17
ARM GAS  /tmp/ccTIydBQ.s 			page 133


 4102 00d2 07       		.byte	0x7
 4103 00d3 30       		.byte	0x30
 4104 00d4 82000000 		.4byte	0x82
 4105 00d8 06       		.uleb128 0x6
 4106 00d9 CD000000 		.4byte	0xcd
 4107 00dd 05       		.uleb128 0x5
 4108 00de CD000000 		.4byte	0xcd
 4109 00e2 07       		.uleb128 0x7
 4110 00e3 04       		.byte	0x4
 4111 00e4 04       		.uleb128 0x4
 4112 00e5 04       		.byte	0x4
 4113 00e6 07       		.byte	0x7
 4114 00e7 53090000 		.4byte	.LASF18
 4115 00eb 08       		.uleb128 0x8
 4116 00ec 87090000 		.4byte	.LASF19
 4117 00f0 08       		.byte	0x8
 4118 00f1 6508     		.2byte	0x865
 4119 00f3 C8000000 		.4byte	0xc8
 4120 00f7 09       		.uleb128 0x9
 4121 00f8 23000000 		.4byte	.LASF20
 4122 00fc 09       		.byte	0x9
 4123 00fd 3A       		.byte	0x3a
 4124 00fe CD000000 		.4byte	0xcd
 4125 0102 03       		.uleb128 0x3
 4126 0103 FF0B0000 		.4byte	.LASF21
 4127 0107 0A       		.byte	0xa
 4128 0108 07       		.byte	0x7
 4129 0109 25000000 		.4byte	0x25
 4130 010d 03       		.uleb128 0x3
 4131 010e 5D0E0000 		.4byte	.LASF22
 4132 0112 0B       		.byte	0xb
 4133 0113 2C       		.byte	0x2c
 4134 0114 7B000000 		.4byte	0x7b
 4135 0118 03       		.uleb128 0x3
 4136 0119 C3010000 		.4byte	.LASF23
 4137 011d 0B       		.byte	0xb
 4138 011e 72       		.byte	0x72
 4139 011f 7B000000 		.4byte	0x7b
 4140 0123 0A       		.uleb128 0xa
 4141 0124 4C0B0000 		.4byte	.LASF24
 4142 0128 05       		.byte	0x5
 4143 0129 6501     		.2byte	0x165
 4144 012b 37000000 		.4byte	0x37
 4145 012f 0B       		.uleb128 0xb
 4146 0130 04       		.byte	0x4
 4147 0131 0B       		.byte	0xb
 4148 0132 A6       		.byte	0xa6
 4149 0133 4E010000 		.4byte	0x14e
 4150 0137 0C       		.uleb128 0xc
 4151 0138 61060000 		.4byte	.LASF25
 4152 013c 0B       		.byte	0xb
 4153 013d A8       		.byte	0xa8
 4154 013e 23010000 		.4byte	0x123
 4155 0142 0C       		.uleb128 0xc
 4156 0143 D0090000 		.4byte	.LASF26
 4157 0147 0B       		.byte	0xb
 4158 0148 A9       		.byte	0xa9
ARM GAS  /tmp/ccTIydBQ.s 			page 134


 4159 0149 4E010000 		.4byte	0x14e
 4160 014d 00       		.byte	0
 4161 014e 0D       		.uleb128 0xd
 4162 014f 50000000 		.4byte	0x50
 4163 0153 5E010000 		.4byte	0x15e
 4164 0157 0E       		.uleb128 0xe
 4165 0158 E4000000 		.4byte	0xe4
 4166 015c 03       		.byte	0x3
 4167 015d 00       		.byte	0
 4168 015e 0F       		.uleb128 0xf
 4169 015f 08       		.byte	0x8
 4170 0160 0B       		.byte	0xb
 4171 0161 A3       		.byte	0xa3
 4172 0162 7F010000 		.4byte	0x17f
 4173 0166 10       		.uleb128 0x10
 4174 0167 A7020000 		.4byte	.LASF27
 4175 016b 0B       		.byte	0xb
 4176 016c A5       		.byte	0xa5
 4177 016d 25000000 		.4byte	0x25
 4178 0171 00       		.byte	0
 4179 0172 10       		.uleb128 0x10
 4180 0173 AC040000 		.4byte	.LASF28
 4181 0177 0B       		.byte	0xb
 4182 0178 AA       		.byte	0xaa
 4183 0179 2F010000 		.4byte	0x12f
 4184 017d 04       		.byte	0x4
 4185 017e 00       		.byte	0
 4186 017f 03       		.uleb128 0x3
 4187 0180 F9070000 		.4byte	.LASF29
 4188 0184 0B       		.byte	0xb
 4189 0185 AB       		.byte	0xab
 4190 0186 5E010000 		.4byte	0x15e
 4191 018a 03       		.uleb128 0x3
 4192 018b 00000000 		.4byte	.LASF30
 4193 018f 0B       		.byte	0xb
 4194 0190 AF       		.byte	0xaf
 4195 0191 02010000 		.4byte	0x102
 4196 0195 03       		.uleb128 0x3
 4197 0196 95010000 		.4byte	.LASF31
 4198 019a 0C       		.byte	0xc
 4199 019b 16       		.byte	0x16
 4200 019c 8D000000 		.4byte	0x8d
 4201 01a0 11       		.uleb128 0x11
 4202 01a1 76090000 		.4byte	.LASF36
 4203 01a5 18       		.byte	0x18
 4204 01a6 0C       		.byte	0xc
 4205 01a7 2D       		.byte	0x2d
 4206 01a8 F3010000 		.4byte	0x1f3
 4207 01ac 10       		.uleb128 0x10
 4208 01ad EE0E0000 		.4byte	.LASF32
 4209 01b1 0C       		.byte	0xc
 4210 01b2 2F       		.byte	0x2f
 4211 01b3 F3010000 		.4byte	0x1f3
 4212 01b7 00       		.byte	0
 4213 01b8 12       		.uleb128 0x12
 4214 01b9 5F6B00   		.ascii	"_k\000"
 4215 01bc 0C       		.byte	0xc
ARM GAS  /tmp/ccTIydBQ.s 			page 135


 4216 01bd 30       		.byte	0x30
 4217 01be 25000000 		.4byte	0x25
 4218 01c2 04       		.byte	0x4
 4219 01c3 10       		.uleb128 0x10
 4220 01c4 950A0000 		.4byte	.LASF33
 4221 01c8 0C       		.byte	0xc
 4222 01c9 30       		.byte	0x30
 4223 01ca 25000000 		.4byte	0x25
 4224 01ce 08       		.byte	0x8
 4225 01cf 10       		.uleb128 0x10
 4226 01d0 99090000 		.4byte	.LASF34
 4227 01d4 0C       		.byte	0xc
 4228 01d5 30       		.byte	0x30
 4229 01d6 25000000 		.4byte	0x25
 4230 01da 0C       		.byte	0xc
 4231 01db 10       		.uleb128 0x10
 4232 01dc 80030000 		.4byte	.LASF35
 4233 01e0 0C       		.byte	0xc
 4234 01e1 30       		.byte	0x30
 4235 01e2 25000000 		.4byte	0x25
 4236 01e6 10       		.byte	0x10
 4237 01e7 12       		.uleb128 0x12
 4238 01e8 5F7800   		.ascii	"_x\000"
 4239 01eb 0C       		.byte	0xc
 4240 01ec 31       		.byte	0x31
 4241 01ed F9010000 		.4byte	0x1f9
 4242 01f1 14       		.byte	0x14
 4243 01f2 00       		.byte	0
 4244 01f3 13       		.uleb128 0x13
 4245 01f4 04       		.byte	0x4
 4246 01f5 A0010000 		.4byte	0x1a0
 4247 01f9 0D       		.uleb128 0xd
 4248 01fa 95010000 		.4byte	0x195
 4249 01fe 09020000 		.4byte	0x209
 4250 0202 0E       		.uleb128 0xe
 4251 0203 E4000000 		.4byte	0xe4
 4252 0207 00       		.byte	0
 4253 0208 00       		.byte	0
 4254 0209 11       		.uleb128 0x11
 4255 020a D90A0000 		.4byte	.LASF37
 4256 020e 24       		.byte	0x24
 4257 020f 0C       		.byte	0xc
 4258 0210 35       		.byte	0x35
 4259 0211 82020000 		.4byte	0x282
 4260 0215 10       		.uleb128 0x10
 4261 0216 8F040000 		.4byte	.LASF38
 4262 021a 0C       		.byte	0xc
 4263 021b 37       		.byte	0x37
 4264 021c 25000000 		.4byte	0x25
 4265 0220 00       		.byte	0
 4266 0221 10       		.uleb128 0x10
 4267 0222 EB020000 		.4byte	.LASF39
 4268 0226 0C       		.byte	0xc
 4269 0227 38       		.byte	0x38
 4270 0228 25000000 		.4byte	0x25
 4271 022c 04       		.byte	0x4
 4272 022d 10       		.uleb128 0x10
ARM GAS  /tmp/ccTIydBQ.s 			page 136


 4273 022e 76020000 		.4byte	.LASF40
 4274 0232 0C       		.byte	0xc
 4275 0233 39       		.byte	0x39
 4276 0234 25000000 		.4byte	0x25
 4277 0238 08       		.byte	0x8
 4278 0239 10       		.uleb128 0x10
 4279 023a C1050000 		.4byte	.LASF41
 4280 023e 0C       		.byte	0xc
 4281 023f 3A       		.byte	0x3a
 4282 0240 25000000 		.4byte	0x25
 4283 0244 0C       		.byte	0xc
 4284 0245 10       		.uleb128 0x10
 4285 0246 CD080000 		.4byte	.LASF42
 4286 024a 0C       		.byte	0xc
 4287 024b 3B       		.byte	0x3b
 4288 024c 25000000 		.4byte	0x25
 4289 0250 10       		.byte	0x10
 4290 0251 10       		.uleb128 0x10
 4291 0252 E1090000 		.4byte	.LASF43
 4292 0256 0C       		.byte	0xc
 4293 0257 3C       		.byte	0x3c
 4294 0258 25000000 		.4byte	0x25
 4295 025c 14       		.byte	0x14
 4296 025d 10       		.uleb128 0x10
 4297 025e 4D050000 		.4byte	.LASF44
 4298 0262 0C       		.byte	0xc
 4299 0263 3D       		.byte	0x3d
 4300 0264 25000000 		.4byte	0x25
 4301 0268 18       		.byte	0x18
 4302 0269 10       		.uleb128 0x10
 4303 026a A2040000 		.4byte	.LASF45
 4304 026e 0C       		.byte	0xc
 4305 026f 3E       		.byte	0x3e
 4306 0270 25000000 		.4byte	0x25
 4307 0274 1C       		.byte	0x1c
 4308 0275 10       		.uleb128 0x10
 4309 0276 09080000 		.4byte	.LASF46
 4310 027a 0C       		.byte	0xc
 4311 027b 3F       		.byte	0x3f
 4312 027c 25000000 		.4byte	0x25
 4313 0280 20       		.byte	0x20
 4314 0281 00       		.byte	0
 4315 0282 14       		.uleb128 0x14
 4316 0283 5F000000 		.4byte	.LASF47
 4317 0287 0801     		.2byte	0x108
 4318 0289 0C       		.byte	0xc
 4319 028a 48       		.byte	0x48
 4320 028b C2020000 		.4byte	0x2c2
 4321 028f 10       		.uleb128 0x10
 4322 0290 D70D0000 		.4byte	.LASF48
 4323 0294 0C       		.byte	0xc
 4324 0295 49       		.byte	0x49
 4325 0296 C2020000 		.4byte	0x2c2
 4326 029a 00       		.byte	0
 4327 029b 10       		.uleb128 0x10
 4328 029c 5B0B0000 		.4byte	.LASF49
 4329 02a0 0C       		.byte	0xc
ARM GAS  /tmp/ccTIydBQ.s 			page 137


 4330 02a1 4A       		.byte	0x4a
 4331 02a2 C2020000 		.4byte	0x2c2
 4332 02a6 80       		.byte	0x80
 4333 02a7 15       		.uleb128 0x15
 4334 02a8 420E0000 		.4byte	.LASF50
 4335 02ac 0C       		.byte	0xc
 4336 02ad 4C       		.byte	0x4c
 4337 02ae 95010000 		.4byte	0x195
 4338 02b2 0001     		.2byte	0x100
 4339 02b4 15       		.uleb128 0x15
 4340 02b5 B00E0000 		.4byte	.LASF51
 4341 02b9 0C       		.byte	0xc
 4342 02ba 4F       		.byte	0x4f
 4343 02bb 95010000 		.4byte	0x195
 4344 02bf 0401     		.2byte	0x104
 4345 02c1 00       		.byte	0
 4346 02c2 0D       		.uleb128 0xd
 4347 02c3 E2000000 		.4byte	0xe2
 4348 02c7 D2020000 		.4byte	0x2d2
 4349 02cb 0E       		.uleb128 0xe
 4350 02cc E4000000 		.4byte	0xe4
 4351 02d0 1F       		.byte	0x1f
 4352 02d1 00       		.byte	0
 4353 02d2 14       		.uleb128 0x14
 4354 02d3 32090000 		.4byte	.LASF52
 4355 02d7 9001     		.2byte	0x190
 4356 02d9 0C       		.byte	0xc
 4357 02da 5B       		.byte	0x5b
 4358 02db 10030000 		.4byte	0x310
 4359 02df 10       		.uleb128 0x10
 4360 02e0 EE0E0000 		.4byte	.LASF32
 4361 02e4 0C       		.byte	0xc
 4362 02e5 5C       		.byte	0x5c
 4363 02e6 10030000 		.4byte	0x310
 4364 02ea 00       		.byte	0
 4365 02eb 10       		.uleb128 0x10
 4366 02ec 2D080000 		.4byte	.LASF53
 4367 02f0 0C       		.byte	0xc
 4368 02f1 5D       		.byte	0x5d
 4369 02f2 25000000 		.4byte	0x25
 4370 02f6 04       		.byte	0x4
 4371 02f7 10       		.uleb128 0x10
 4372 02f8 CB010000 		.4byte	.LASF54
 4373 02fc 0C       		.byte	0xc
 4374 02fd 5F       		.byte	0x5f
 4375 02fe 16030000 		.4byte	0x316
 4376 0302 08       		.byte	0x8
 4377 0303 10       		.uleb128 0x10
 4378 0304 5F000000 		.4byte	.LASF47
 4379 0308 0C       		.byte	0xc
 4380 0309 60       		.byte	0x60
 4381 030a 82020000 		.4byte	0x282
 4382 030e 88       		.byte	0x88
 4383 030f 00       		.byte	0
 4384 0310 13       		.uleb128 0x13
 4385 0311 04       		.byte	0x4
 4386 0312 D2020000 		.4byte	0x2d2
ARM GAS  /tmp/ccTIydBQ.s 			page 138


 4387 0316 0D       		.uleb128 0xd
 4388 0317 26030000 		.4byte	0x326
 4389 031b 26030000 		.4byte	0x326
 4390 031f 0E       		.uleb128 0xe
 4391 0320 E4000000 		.4byte	0xe4
 4392 0324 1F       		.byte	0x1f
 4393 0325 00       		.byte	0
 4394 0326 13       		.uleb128 0x13
 4395 0327 04       		.byte	0x4
 4396 0328 2C030000 		.4byte	0x32c
 4397 032c 16       		.uleb128 0x16
 4398 032d 11       		.uleb128 0x11
 4399 032e FD080000 		.4byte	.LASF55
 4400 0332 08       		.byte	0x8
 4401 0333 0C       		.byte	0xc
 4402 0334 73       		.byte	0x73
 4403 0335 52030000 		.4byte	0x352
 4404 0339 10       		.uleb128 0x10
 4405 033a 1F070000 		.4byte	.LASF56
 4406 033e 0C       		.byte	0xc
 4407 033f 74       		.byte	0x74
 4408 0340 52030000 		.4byte	0x352
 4409 0344 00       		.byte	0
 4410 0345 10       		.uleb128 0x10
 4411 0346 4B0E0000 		.4byte	.LASF57
 4412 034a 0C       		.byte	0xc
 4413 034b 75       		.byte	0x75
 4414 034c 25000000 		.4byte	0x25
 4415 0350 04       		.byte	0x4
 4416 0351 00       		.byte	0
 4417 0352 13       		.uleb128 0x13
 4418 0353 04       		.byte	0x4
 4419 0354 50000000 		.4byte	0x50
 4420 0358 11       		.uleb128 0x11
 4421 0359 78030000 		.4byte	.LASF58
 4422 035d 68       		.byte	0x68
 4423 035e 0C       		.byte	0xc
 4424 035f B3       		.byte	0xb3
 4425 0360 82040000 		.4byte	0x482
 4426 0364 12       		.uleb128 0x12
 4427 0365 5F7000   		.ascii	"_p\000"
 4428 0368 0C       		.byte	0xc
 4429 0369 B4       		.byte	0xb4
 4430 036a 52030000 		.4byte	0x352
 4431 036e 00       		.byte	0
 4432 036f 12       		.uleb128 0x12
 4433 0370 5F7200   		.ascii	"_r\000"
 4434 0373 0C       		.byte	0xc
 4435 0374 B5       		.byte	0xb5
 4436 0375 25000000 		.4byte	0x25
 4437 0379 04       		.byte	0x4
 4438 037a 12       		.uleb128 0x12
 4439 037b 5F7700   		.ascii	"_w\000"
 4440 037e 0C       		.byte	0xc
 4441 037f B6       		.byte	0xb6
 4442 0380 25000000 		.4byte	0x25
 4443 0384 08       		.byte	0x8
ARM GAS  /tmp/ccTIydBQ.s 			page 139


 4444 0385 10       		.uleb128 0x10
 4445 0386 0D010000 		.4byte	.LASF59
 4446 038a 0C       		.byte	0xc
 4447 038b B7       		.byte	0xb7
 4448 038c 57000000 		.4byte	0x57
 4449 0390 0C       		.byte	0xc
 4450 0391 10       		.uleb128 0x10
 4451 0392 B3070000 		.4byte	.LASF60
 4452 0396 0C       		.byte	0xc
 4453 0397 B8       		.byte	0xb8
 4454 0398 57000000 		.4byte	0x57
 4455 039c 0E       		.byte	0xe
 4456 039d 12       		.uleb128 0x12
 4457 039e 5F626600 		.ascii	"_bf\000"
 4458 03a2 0C       		.byte	0xc
 4459 03a3 B9       		.byte	0xb9
 4460 03a4 2D030000 		.4byte	0x32d
 4461 03a8 10       		.byte	0x10
 4462 03a9 10       		.uleb128 0x10
 4463 03aa 04010000 		.4byte	.LASF61
 4464 03ae 0C       		.byte	0xc
 4465 03af BA       		.byte	0xba
 4466 03b0 25000000 		.4byte	0x25
 4467 03b4 18       		.byte	0x18
 4468 03b5 10       		.uleb128 0x10
 4469 03b6 E6010000 		.4byte	.LASF62
 4470 03ba 0C       		.byte	0xc
 4471 03bb C1       		.byte	0xc1
 4472 03bc E2000000 		.4byte	0xe2
 4473 03c0 1C       		.byte	0x1c
 4474 03c1 10       		.uleb128 0x10
 4475 03c2 42040000 		.4byte	.LASF63
 4476 03c6 0C       		.byte	0xc
 4477 03c7 C3       		.byte	0xc3
 4478 03c8 EF050000 		.4byte	0x5ef
 4479 03cc 20       		.byte	0x20
 4480 03cd 10       		.uleb128 0x10
 4481 03ce 04090000 		.4byte	.LASF64
 4482 03d2 0C       		.byte	0xc
 4483 03d3 C5       		.byte	0xc5
 4484 03d4 19060000 		.4byte	0x619
 4485 03d8 24       		.byte	0x24
 4486 03d9 10       		.uleb128 0x10
 4487 03da E80E0000 		.4byte	.LASF65
 4488 03de 0C       		.byte	0xc
 4489 03df C8       		.byte	0xc8
 4490 03e0 3D060000 		.4byte	0x63d
 4491 03e4 28       		.byte	0x28
 4492 03e5 10       		.uleb128 0x10
 4493 03e6 A4060000 		.4byte	.LASF66
 4494 03ea 0C       		.byte	0xc
 4495 03eb C9       		.byte	0xc9
 4496 03ec 57060000 		.4byte	0x657
 4497 03f0 2C       		.byte	0x2c
 4498 03f1 12       		.uleb128 0x12
 4499 03f2 5F756200 		.ascii	"_ub\000"
 4500 03f6 0C       		.byte	0xc
ARM GAS  /tmp/ccTIydBQ.s 			page 140


 4501 03f7 CC       		.byte	0xcc
 4502 03f8 2D030000 		.4byte	0x32d
 4503 03fc 30       		.byte	0x30
 4504 03fd 12       		.uleb128 0x12
 4505 03fe 5F757000 		.ascii	"_up\000"
 4506 0402 0C       		.byte	0xc
 4507 0403 CD       		.byte	0xcd
 4508 0404 52030000 		.4byte	0x352
 4509 0408 38       		.byte	0x38
 4510 0409 12       		.uleb128 0x12
 4511 040a 5F757200 		.ascii	"_ur\000"
 4512 040e 0C       		.byte	0xc
 4513 040f CE       		.byte	0xce
 4514 0410 25000000 		.4byte	0x25
 4515 0414 3C       		.byte	0x3c
 4516 0415 10       		.uleb128 0x10
 4517 0416 14080000 		.4byte	.LASF67
 4518 041a 0C       		.byte	0xc
 4519 041b D1       		.byte	0xd1
 4520 041c 5D060000 		.4byte	0x65d
 4521 0420 40       		.byte	0x40
 4522 0421 10       		.uleb128 0x10
 4523 0422 740E0000 		.4byte	.LASF68
 4524 0426 0C       		.byte	0xc
 4525 0427 D2       		.byte	0xd2
 4526 0428 6D060000 		.4byte	0x66d
 4527 042c 43       		.byte	0x43
 4528 042d 12       		.uleb128 0x12
 4529 042e 5F6C6200 		.ascii	"_lb\000"
 4530 0432 0C       		.byte	0xc
 4531 0433 D5       		.byte	0xd5
 4532 0434 2D030000 		.4byte	0x32d
 4533 0438 44       		.byte	0x44
 4534 0439 10       		.uleb128 0x10
 4535 043a D00A0000 		.4byte	.LASF69
 4536 043e 0C       		.byte	0xc
 4537 043f D8       		.byte	0xd8
 4538 0440 25000000 		.4byte	0x25
 4539 0444 4C       		.byte	0x4c
 4540 0445 10       		.uleb128 0x10
 4541 0446 F7030000 		.4byte	.LASF70
 4542 044a 0C       		.byte	0xc
 4543 044b D9       		.byte	0xd9
 4544 044c 0D010000 		.4byte	0x10d
 4545 0450 50       		.byte	0x50
 4546 0451 10       		.uleb128 0x10
 4547 0452 CA090000 		.4byte	.LASF71
 4548 0456 0C       		.byte	0xc
 4549 0457 DC       		.byte	0xdc
 4550 0458 A0040000 		.4byte	0x4a0
 4551 045c 54       		.byte	0x54
 4552 045d 10       		.uleb128 0x10
 4553 045e DE0A0000 		.4byte	.LASF72
 4554 0462 0C       		.byte	0xc
 4555 0463 E0       		.byte	0xe0
 4556 0464 8A010000 		.4byte	0x18a
 4557 0468 58       		.byte	0x58
ARM GAS  /tmp/ccTIydBQ.s 			page 141


 4558 0469 10       		.uleb128 0x10
 4559 046a 6B010000 		.4byte	.LASF73
 4560 046e 0C       		.byte	0xc
 4561 046f E2       		.byte	0xe2
 4562 0470 7F010000 		.4byte	0x17f
 4563 0474 5C       		.byte	0x5c
 4564 0475 10       		.uleb128 0x10
 4565 0476 A80E0000 		.4byte	.LASF74
 4566 047a 0C       		.byte	0xc
 4567 047b E3       		.byte	0xe3
 4568 047c 25000000 		.4byte	0x25
 4569 0480 64       		.byte	0x64
 4570 0481 00       		.byte	0
 4571 0482 17       		.uleb128 0x17
 4572 0483 25000000 		.4byte	0x25
 4573 0487 A0040000 		.4byte	0x4a0
 4574 048b 18       		.uleb128 0x18
 4575 048c A0040000 		.4byte	0x4a0
 4576 0490 18       		.uleb128 0x18
 4577 0491 E2000000 		.4byte	0xe2
 4578 0495 18       		.uleb128 0x18
 4579 0496 DD050000 		.4byte	0x5dd
 4580 049a 18       		.uleb128 0x18
 4581 049b 25000000 		.4byte	0x25
 4582 049f 00       		.byte	0
 4583 04a0 13       		.uleb128 0x13
 4584 04a1 04       		.byte	0x4
 4585 04a2 AB040000 		.4byte	0x4ab
 4586 04a6 05       		.uleb128 0x5
 4587 04a7 A0040000 		.4byte	0x4a0
 4588 04ab 19       		.uleb128 0x19
 4589 04ac 070E0000 		.4byte	.LASF75
 4590 04b0 2804     		.2byte	0x428
 4591 04b2 0C       		.byte	0xc
 4592 04b3 3802     		.2byte	0x238
 4593 04b5 DD050000 		.4byte	0x5dd
 4594 04b9 1A       		.uleb128 0x1a
 4595 04ba 1E010000 		.4byte	.LASF76
 4596 04be 0C       		.byte	0xc
 4597 04bf 3A02     		.2byte	0x23a
 4598 04c1 25000000 		.4byte	0x25
 4599 04c5 00       		.byte	0
 4600 04c6 1A       		.uleb128 0x1a
 4601 04c7 FB060000 		.4byte	.LASF77
 4602 04cb 0C       		.byte	0xc
 4603 04cc 3F02     		.2byte	0x23f
 4604 04ce C4060000 		.4byte	0x6c4
 4605 04d2 04       		.byte	0x4
 4606 04d3 1A       		.uleb128 0x1a
 4607 04d4 BB010000 		.4byte	.LASF78
 4608 04d8 0C       		.byte	0xc
 4609 04d9 3F02     		.2byte	0x23f
 4610 04db C4060000 		.4byte	0x6c4
 4611 04df 08       		.byte	0x8
 4612 04e0 1A       		.uleb128 0x1a
 4613 04e1 240F0000 		.4byte	.LASF79
 4614 04e5 0C       		.byte	0xc
ARM GAS  /tmp/ccTIydBQ.s 			page 142


 4615 04e6 3F02     		.2byte	0x23f
 4616 04e8 C4060000 		.4byte	0x6c4
 4617 04ec 0C       		.byte	0xc
 4618 04ed 1A       		.uleb128 0x1a
 4619 04ee B4040000 		.4byte	.LASF80
 4620 04f2 0C       		.byte	0xc
 4621 04f3 4102     		.2byte	0x241
 4622 04f5 25000000 		.4byte	0x25
 4623 04f9 10       		.byte	0x10
 4624 04fa 1A       		.uleb128 0x1a
 4625 04fb 8F020000 		.4byte	.LASF81
 4626 04ff 0C       		.byte	0xc
 4627 0500 4202     		.2byte	0x242
 4628 0502 A6080000 		.4byte	0x8a6
 4629 0506 14       		.byte	0x14
 4630 0507 1A       		.uleb128 0x1a
 4631 0508 A50A0000 		.4byte	.LASF82
 4632 050c 0C       		.byte	0xc
 4633 050d 4402     		.2byte	0x244
 4634 050f 25000000 		.4byte	0x25
 4635 0513 30       		.byte	0x30
 4636 0514 1A       		.uleb128 0x1a
 4637 0515 AE090000 		.4byte	.LASF83
 4638 0519 0C       		.byte	0xc
 4639 051a 4502     		.2byte	0x245
 4640 051c 13060000 		.4byte	0x613
 4641 0520 34       		.byte	0x34
 4642 0521 1A       		.uleb128 0x1a
 4643 0522 58010000 		.4byte	.LASF84
 4644 0526 0C       		.byte	0xc
 4645 0527 4702     		.2byte	0x247
 4646 0529 25000000 		.4byte	0x25
 4647 052d 38       		.byte	0x38
 4648 052e 1A       		.uleb128 0x1a
 4649 052f C5070000 		.4byte	.LASF85
 4650 0533 0C       		.byte	0xc
 4651 0534 4902     		.2byte	0x249
 4652 0536 C1080000 		.4byte	0x8c1
 4653 053a 3C       		.byte	0x3c
 4654 053b 1A       		.uleb128 0x1a
 4655 053c 48020000 		.4byte	.LASF86
 4656 0540 0C       		.byte	0xc
 4657 0541 4C02     		.2byte	0x24c
 4658 0543 F3010000 		.4byte	0x1f3
 4659 0547 40       		.byte	0x40
 4660 0548 1A       		.uleb128 0x1a
 4661 0549 46060000 		.4byte	.LASF87
 4662 054d 0C       		.byte	0xc
 4663 054e 4D02     		.2byte	0x24d
 4664 0550 25000000 		.4byte	0x25
 4665 0554 44       		.byte	0x44
 4666 0555 1A       		.uleb128 0x1a
 4667 0556 48050000 		.4byte	.LASF88
 4668 055a 0C       		.byte	0xc
 4669 055b 4E02     		.2byte	0x24e
 4670 055d F3010000 		.4byte	0x1f3
 4671 0561 48       		.byte	0x48
ARM GAS  /tmp/ccTIydBQ.s 			page 143


 4672 0562 1A       		.uleb128 0x1a
 4673 0563 25070000 		.4byte	.LASF89
 4674 0567 0C       		.byte	0xc
 4675 0568 4F02     		.2byte	0x24f
 4676 056a C7080000 		.4byte	0x8c7
 4677 056e 4C       		.byte	0x4c
 4678 056f 1A       		.uleb128 0x1a
 4679 0570 8D0A0000 		.4byte	.LASF90
 4680 0574 0C       		.byte	0xc
 4681 0575 5202     		.2byte	0x252
 4682 0577 25000000 		.4byte	0x25
 4683 057b 50       		.byte	0x50
 4684 057c 1A       		.uleb128 0x1a
 4685 057d D40B0000 		.4byte	.LASF91
 4686 0581 0C       		.byte	0xc
 4687 0582 5302     		.2byte	0x253
 4688 0584 DD050000 		.4byte	0x5dd
 4689 0588 54       		.byte	0x54
 4690 0589 1A       		.uleb128 0x1a
 4691 058a 7E0A0000 		.4byte	.LASF92
 4692 058e 0C       		.byte	0xc
 4693 058f 7602     		.2byte	0x276
 4694 0591 84080000 		.4byte	0x884
 4695 0595 58       		.byte	0x58
 4696 0596 1B       		.uleb128 0x1b
 4697 0597 32090000 		.4byte	.LASF52
 4698 059b 0C       		.byte	0xc
 4699 059c 7A02     		.2byte	0x27a
 4700 059e 10030000 		.4byte	0x310
 4701 05a2 4801     		.2byte	0x148
 4702 05a4 1B       		.uleb128 0x1b
 4703 05a5 E4050000 		.4byte	.LASF93
 4704 05a9 0C       		.byte	0xc
 4705 05aa 7B02     		.2byte	0x27b
 4706 05ac D2020000 		.4byte	0x2d2
 4707 05b0 4C01     		.2byte	0x14c
 4708 05b2 1B       		.uleb128 0x1b
 4709 05b3 CB050000 		.4byte	.LASF94
 4710 05b7 0C       		.byte	0xc
 4711 05b8 7F02     		.2byte	0x27f
 4712 05ba D8080000 		.4byte	0x8d8
 4713 05be DC02     		.2byte	0x2dc
 4714 05c0 1B       		.uleb128 0x1b
 4715 05c1 B8080000 		.4byte	.LASF95
 4716 05c5 0C       		.byte	0xc
 4717 05c6 8402     		.2byte	0x284
 4718 05c8 89060000 		.4byte	0x689
 4719 05cc E002     		.2byte	0x2e0
 4720 05ce 1B       		.uleb128 0x1b
 4721 05cf 94090000 		.4byte	.LASF96
 4722 05d3 0C       		.byte	0xc
 4723 05d4 8502     		.2byte	0x285
 4724 05d6 E4080000 		.4byte	0x8e4
 4725 05da EC02     		.2byte	0x2ec
 4726 05dc 00       		.byte	0
 4727 05dd 13       		.uleb128 0x13
 4728 05de 04       		.byte	0x4
ARM GAS  /tmp/ccTIydBQ.s 			page 144


 4729 05df E3050000 		.4byte	0x5e3
 4730 05e3 04       		.uleb128 0x4
 4731 05e4 01       		.byte	0x1
 4732 05e5 08       		.byte	0x8
 4733 05e6 BC050000 		.4byte	.LASF97
 4734 05ea 05       		.uleb128 0x5
 4735 05eb E3050000 		.4byte	0x5e3
 4736 05ef 13       		.uleb128 0x13
 4737 05f0 04       		.byte	0x4
 4738 05f1 82040000 		.4byte	0x482
 4739 05f5 17       		.uleb128 0x17
 4740 05f6 25000000 		.4byte	0x25
 4741 05fa 13060000 		.4byte	0x613
 4742 05fe 18       		.uleb128 0x18
 4743 05ff A0040000 		.4byte	0x4a0
 4744 0603 18       		.uleb128 0x18
 4745 0604 E2000000 		.4byte	0xe2
 4746 0608 18       		.uleb128 0x18
 4747 0609 13060000 		.4byte	0x613
 4748 060d 18       		.uleb128 0x18
 4749 060e 25000000 		.4byte	0x25
 4750 0612 00       		.byte	0
 4751 0613 13       		.uleb128 0x13
 4752 0614 04       		.byte	0x4
 4753 0615 EA050000 		.4byte	0x5ea
 4754 0619 13       		.uleb128 0x13
 4755 061a 04       		.byte	0x4
 4756 061b F5050000 		.4byte	0x5f5
 4757 061f 17       		.uleb128 0x17
 4758 0620 18010000 		.4byte	0x118
 4759 0624 3D060000 		.4byte	0x63d
 4760 0628 18       		.uleb128 0x18
 4761 0629 A0040000 		.4byte	0x4a0
 4762 062d 18       		.uleb128 0x18
 4763 062e E2000000 		.4byte	0xe2
 4764 0632 18       		.uleb128 0x18
 4765 0633 18010000 		.4byte	0x118
 4766 0637 18       		.uleb128 0x18
 4767 0638 25000000 		.4byte	0x25
 4768 063c 00       		.byte	0
 4769 063d 13       		.uleb128 0x13
 4770 063e 04       		.byte	0x4
 4771 063f 1F060000 		.4byte	0x61f
 4772 0643 17       		.uleb128 0x17
 4773 0644 25000000 		.4byte	0x25
 4774 0648 57060000 		.4byte	0x657
 4775 064c 18       		.uleb128 0x18
 4776 064d A0040000 		.4byte	0x4a0
 4777 0651 18       		.uleb128 0x18
 4778 0652 E2000000 		.4byte	0xe2
 4779 0656 00       		.byte	0
 4780 0657 13       		.uleb128 0x13
 4781 0658 04       		.byte	0x4
 4782 0659 43060000 		.4byte	0x643
 4783 065d 0D       		.uleb128 0xd
 4784 065e 50000000 		.4byte	0x50
 4785 0662 6D060000 		.4byte	0x66d
ARM GAS  /tmp/ccTIydBQ.s 			page 145


 4786 0666 0E       		.uleb128 0xe
 4787 0667 E4000000 		.4byte	0xe4
 4788 066b 02       		.byte	0x2
 4789 066c 00       		.byte	0
 4790 066d 0D       		.uleb128 0xd
 4791 066e 50000000 		.4byte	0x50
 4792 0672 7D060000 		.4byte	0x67d
 4793 0676 0E       		.uleb128 0xe
 4794 0677 E4000000 		.4byte	0xe4
 4795 067b 00       		.byte	0
 4796 067c 00       		.byte	0
 4797 067d 0A       		.uleb128 0xa
 4798 067e 50020000 		.4byte	.LASF98
 4799 0682 0C       		.byte	0xc
 4800 0683 1D01     		.2byte	0x11d
 4801 0685 58030000 		.4byte	0x358
 4802 0689 1C       		.uleb128 0x1c
 4803 068a FD0C0000 		.4byte	.LASF99
 4804 068e 0C       		.byte	0xc
 4805 068f 0C       		.byte	0xc
 4806 0690 2101     		.2byte	0x121
 4807 0692 BE060000 		.4byte	0x6be
 4808 0696 1A       		.uleb128 0x1a
 4809 0697 EE0E0000 		.4byte	.LASF32
 4810 069b 0C       		.byte	0xc
 4811 069c 2301     		.2byte	0x123
 4812 069e BE060000 		.4byte	0x6be
 4813 06a2 00       		.byte	0
 4814 06a3 1A       		.uleb128 0x1a
 4815 06a4 450B0000 		.4byte	.LASF100
 4816 06a8 0C       		.byte	0xc
 4817 06a9 2401     		.2byte	0x124
 4818 06ab 25000000 		.4byte	0x25
 4819 06af 04       		.byte	0x4
 4820 06b0 1A       		.uleb128 0x1a
 4821 06b1 350F0000 		.4byte	.LASF101
 4822 06b5 0C       		.byte	0xc
 4823 06b6 2501     		.2byte	0x125
 4824 06b8 C4060000 		.4byte	0x6c4
 4825 06bc 08       		.byte	0x8
 4826 06bd 00       		.byte	0
 4827 06be 13       		.uleb128 0x13
 4828 06bf 04       		.byte	0x4
 4829 06c0 89060000 		.4byte	0x689
 4830 06c4 13       		.uleb128 0x13
 4831 06c5 04       		.byte	0x4
 4832 06c6 7D060000 		.4byte	0x67d
 4833 06ca 1C       		.uleb128 0x1c
 4834 06cb 9A030000 		.4byte	.LASF102
 4835 06cf 0E       		.byte	0xe
 4836 06d0 0C       		.byte	0xc
 4837 06d1 3D01     		.2byte	0x13d
 4838 06d3 FF060000 		.4byte	0x6ff
 4839 06d7 1A       		.uleb128 0x1a
 4840 06d8 D20E0000 		.4byte	.LASF103
 4841 06dc 0C       		.byte	0xc
 4842 06dd 3E01     		.2byte	0x13e
ARM GAS  /tmp/ccTIydBQ.s 			page 146


 4843 06df FF060000 		.4byte	0x6ff
 4844 06e3 00       		.byte	0
 4845 06e4 1A       		.uleb128 0x1a
 4846 06e5 3B070000 		.4byte	.LASF104
 4847 06e9 0C       		.byte	0xc
 4848 06ea 3F01     		.2byte	0x13f
 4849 06ec FF060000 		.4byte	0x6ff
 4850 06f0 06       		.byte	0x6
 4851 06f1 1A       		.uleb128 0x1a
 4852 06f2 41070000 		.4byte	.LASF105
 4853 06f6 0C       		.byte	0xc
 4854 06f7 4001     		.2byte	0x140
 4855 06f9 69000000 		.4byte	0x69
 4856 06fd 0C       		.byte	0xc
 4857 06fe 00       		.byte	0
 4858 06ff 0D       		.uleb128 0xd
 4859 0700 69000000 		.4byte	0x69
 4860 0704 0F070000 		.4byte	0x70f
 4861 0708 0E       		.uleb128 0xe
 4862 0709 E4000000 		.4byte	0xe4
 4863 070d 02       		.byte	0x2
 4864 070e 00       		.byte	0
 4865 070f 1D       		.uleb128 0x1d
 4866 0710 D0       		.byte	0xd0
 4867 0711 0C       		.byte	0xc
 4868 0712 5702     		.2byte	0x257
 4869 0714 10080000 		.4byte	0x810
 4870 0718 1A       		.uleb128 0x1a
 4871 0719 7A0E0000 		.4byte	.LASF106
 4872 071d 0C       		.byte	0xc
 4873 071e 5902     		.2byte	0x259
 4874 0720 37000000 		.4byte	0x37
 4875 0724 00       		.byte	0
 4876 0725 1A       		.uleb128 0x1a
 4877 0726 7E0D0000 		.4byte	.LASF107
 4878 072a 0C       		.byte	0xc
 4879 072b 5A02     		.2byte	0x25a
 4880 072d DD050000 		.4byte	0x5dd
 4881 0731 04       		.byte	0x4
 4882 0732 1A       		.uleb128 0x1a
 4883 0733 5C030000 		.4byte	.LASF108
 4884 0737 0C       		.byte	0xc
 4885 0738 5B02     		.2byte	0x25b
 4886 073a 10080000 		.4byte	0x810
 4887 073e 08       		.byte	0x8
 4888 073f 1A       		.uleb128 0x1a
 4889 0740 3D0A0000 		.4byte	.LASF109
 4890 0744 0C       		.byte	0xc
 4891 0745 5C02     		.2byte	0x25c
 4892 0747 09020000 		.4byte	0x209
 4893 074b 24       		.byte	0x24
 4894 074c 1A       		.uleb128 0x1a
 4895 074d 02070000 		.4byte	.LASF110
 4896 0751 0C       		.byte	0xc
 4897 0752 5D02     		.2byte	0x25d
 4898 0754 25000000 		.4byte	0x25
 4899 0758 48       		.byte	0x48
ARM GAS  /tmp/ccTIydBQ.s 			page 147


 4900 0759 1A       		.uleb128 0x1a
 4901 075a D80E0000 		.4byte	.LASF111
 4902 075e 0C       		.byte	0xc
 4903 075f 5E02     		.2byte	0x25e
 4904 0761 9B000000 		.4byte	0x9b
 4905 0765 50       		.byte	0x50
 4906 0766 1A       		.uleb128 0x1a
 4907 0767 85030000 		.4byte	.LASF112
 4908 076b 0C       		.byte	0xc
 4909 076c 5F02     		.2byte	0x25f
 4910 076e CA060000 		.4byte	0x6ca
 4911 0772 58       		.byte	0x58
 4912 0773 1A       		.uleb128 0x1a
 4913 0774 91050000 		.4byte	.LASF113
 4914 0778 0C       		.byte	0xc
 4915 0779 6002     		.2byte	0x260
 4916 077b 7F010000 		.4byte	0x17f
 4917 077f 68       		.byte	0x68
 4918 0780 1A       		.uleb128 0x1a
 4919 0781 8B0D0000 		.4byte	.LASF114
 4920 0785 0C       		.byte	0xc
 4921 0786 6102     		.2byte	0x261
 4922 0788 7F010000 		.4byte	0x17f
 4923 078c 70       		.byte	0x70
 4924 078d 1A       		.uleb128 0x1a
 4925 078e 7B000000 		.4byte	.LASF115
 4926 0792 0C       		.byte	0xc
 4927 0793 6202     		.2byte	0x262
 4928 0795 7F010000 		.4byte	0x17f
 4929 0799 78       		.byte	0x78
 4930 079a 1A       		.uleb128 0x1a
 4931 079b DB0C0000 		.4byte	.LASF116
 4932 079f 0C       		.byte	0xc
 4933 07a0 6302     		.2byte	0x263
 4934 07a2 20080000 		.4byte	0x820
 4935 07a6 80       		.byte	0x80
 4936 07a7 1A       		.uleb128 0x1a
 4937 07a8 D6000000 		.4byte	.LASF117
 4938 07ac 0C       		.byte	0xc
 4939 07ad 6402     		.2byte	0x264
 4940 07af 30080000 		.4byte	0x830
 4941 07b3 88       		.byte	0x88
 4942 07b4 1A       		.uleb128 0x1a
 4943 07b5 710D0000 		.4byte	.LASF118
 4944 07b9 0C       		.byte	0xc
 4945 07ba 6502     		.2byte	0x265
 4946 07bc 25000000 		.4byte	0x25
 4947 07c0 A0       		.byte	0xa0
 4948 07c1 1A       		.uleb128 0x1a
 4949 07c2 9D010000 		.4byte	.LASF119
 4950 07c6 0C       		.byte	0xc
 4951 07c7 6602     		.2byte	0x266
 4952 07c9 7F010000 		.4byte	0x17f
 4953 07cd A4       		.byte	0xa4
 4954 07ce 1A       		.uleb128 0x1a
 4955 07cf D5050000 		.4byte	.LASF120
 4956 07d3 0C       		.byte	0xc
ARM GAS  /tmp/ccTIydBQ.s 			page 148


 4957 07d4 6702     		.2byte	0x267
 4958 07d6 7F010000 		.4byte	0x17f
 4959 07da AC       		.byte	0xac
 4960 07db 1A       		.uleb128 0x1a
 4961 07dc 13030000 		.4byte	.LASF121
 4962 07e0 0C       		.byte	0xc
 4963 07e1 6802     		.2byte	0x268
 4964 07e3 7F010000 		.4byte	0x17f
 4965 07e7 B4       		.byte	0xb4
 4966 07e8 1A       		.uleb128 0x1a
 4967 07e9 63070000 		.4byte	.LASF122
 4968 07ed 0C       		.byte	0xc
 4969 07ee 6902     		.2byte	0x269
 4970 07f0 7F010000 		.4byte	0x17f
 4971 07f4 BC       		.byte	0xbc
 4972 07f5 1A       		.uleb128 0x1a
 4973 07f6 80050000 		.4byte	.LASF123
 4974 07fa 0C       		.byte	0xc
 4975 07fb 6A02     		.2byte	0x26a
 4976 07fd 7F010000 		.4byte	0x17f
 4977 0801 C4       		.byte	0xc4
 4978 0802 1A       		.uleb128 0x1a
 4979 0803 9F0E0000 		.4byte	.LASF124
 4980 0807 0C       		.byte	0xc
 4981 0808 6B02     		.2byte	0x26b
 4982 080a 25000000 		.4byte	0x25
 4983 080e CC       		.byte	0xcc
 4984 080f 00       		.byte	0
 4985 0810 0D       		.uleb128 0xd
 4986 0811 E3050000 		.4byte	0x5e3
 4987 0815 20080000 		.4byte	0x820
 4988 0819 0E       		.uleb128 0xe
 4989 081a E4000000 		.4byte	0xe4
 4990 081e 19       		.byte	0x19
 4991 081f 00       		.byte	0
 4992 0820 0D       		.uleb128 0xd
 4993 0821 E3050000 		.4byte	0x5e3
 4994 0825 30080000 		.4byte	0x830
 4995 0829 0E       		.uleb128 0xe
 4996 082a E4000000 		.4byte	0xe4
 4997 082e 07       		.byte	0x7
 4998 082f 00       		.byte	0
 4999 0830 0D       		.uleb128 0xd
 5000 0831 E3050000 		.4byte	0x5e3
 5001 0835 40080000 		.4byte	0x840
 5002 0839 0E       		.uleb128 0xe
 5003 083a E4000000 		.4byte	0xe4
 5004 083e 17       		.byte	0x17
 5005 083f 00       		.byte	0
 5006 0840 1D       		.uleb128 0x1d
 5007 0841 F0       		.byte	0xf0
 5008 0842 0C       		.byte	0xc
 5009 0843 7002     		.2byte	0x270
 5010 0845 64080000 		.4byte	0x864
 5011 0849 1A       		.uleb128 0x1a
 5012 084a 00030000 		.4byte	.LASF125
 5013 084e 0C       		.byte	0xc
ARM GAS  /tmp/ccTIydBQ.s 			page 149


 5014 084f 7302     		.2byte	0x273
 5015 0851 64080000 		.4byte	0x864
 5016 0855 00       		.byte	0
 5017 0856 1A       		.uleb128 0x1a
 5018 0857 2C0F0000 		.4byte	.LASF126
 5019 085b 0C       		.byte	0xc
 5020 085c 7402     		.2byte	0x274
 5021 085e 74080000 		.4byte	0x874
 5022 0862 78       		.byte	0x78
 5023 0863 00       		.byte	0
 5024 0864 0D       		.uleb128 0xd
 5025 0865 52030000 		.4byte	0x352
 5026 0869 74080000 		.4byte	0x874
 5027 086d 0E       		.uleb128 0xe
 5028 086e E4000000 		.4byte	0xe4
 5029 0872 1D       		.byte	0x1d
 5030 0873 00       		.byte	0
 5031 0874 0D       		.uleb128 0xd
 5032 0875 37000000 		.4byte	0x37
 5033 0879 84080000 		.4byte	0x884
 5034 087d 0E       		.uleb128 0xe
 5035 087e E4000000 		.4byte	0xe4
 5036 0882 1D       		.byte	0x1d
 5037 0883 00       		.byte	0
 5038 0884 1E       		.uleb128 0x1e
 5039 0885 F0       		.byte	0xf0
 5040 0886 0C       		.byte	0xc
 5041 0887 5502     		.2byte	0x255
 5042 0889 A6080000 		.4byte	0x8a6
 5043 088d 1F       		.uleb128 0x1f
 5044 088e 070E0000 		.4byte	.LASF75
 5045 0892 0C       		.byte	0xc
 5046 0893 6C02     		.2byte	0x26c
 5047 0895 0F070000 		.4byte	0x70f
 5048 0899 1F       		.uleb128 0x1f
 5049 089a 6C0A0000 		.4byte	.LASF127
 5050 089e 0C       		.byte	0xc
 5051 089f 7502     		.2byte	0x275
 5052 08a1 40080000 		.4byte	0x840
 5053 08a5 00       		.byte	0
 5054 08a6 0D       		.uleb128 0xd
 5055 08a7 E3050000 		.4byte	0x5e3
 5056 08ab B6080000 		.4byte	0x8b6
 5057 08af 0E       		.uleb128 0xe
 5058 08b0 E4000000 		.4byte	0xe4
 5059 08b4 18       		.byte	0x18
 5060 08b5 00       		.byte	0
 5061 08b6 20       		.uleb128 0x20
 5062 08b7 C1080000 		.4byte	0x8c1
 5063 08bb 18       		.uleb128 0x18
 5064 08bc A0040000 		.4byte	0x4a0
 5065 08c0 00       		.byte	0
 5066 08c1 13       		.uleb128 0x13
 5067 08c2 04       		.byte	0x4
 5068 08c3 B6080000 		.4byte	0x8b6
 5069 08c7 13       		.uleb128 0x13
 5070 08c8 04       		.byte	0x4
ARM GAS  /tmp/ccTIydBQ.s 			page 150


 5071 08c9 F3010000 		.4byte	0x1f3
 5072 08cd 20       		.uleb128 0x20
 5073 08ce D8080000 		.4byte	0x8d8
 5074 08d2 18       		.uleb128 0x18
 5075 08d3 25000000 		.4byte	0x25
 5076 08d7 00       		.byte	0
 5077 08d8 13       		.uleb128 0x13
 5078 08d9 04       		.byte	0x4
 5079 08da DE080000 		.4byte	0x8de
 5080 08de 13       		.uleb128 0x13
 5081 08df 04       		.byte	0x4
 5082 08e0 CD080000 		.4byte	0x8cd
 5083 08e4 0D       		.uleb128 0xd
 5084 08e5 7D060000 		.4byte	0x67d
 5085 08e9 F4080000 		.4byte	0x8f4
 5086 08ed 0E       		.uleb128 0xe
 5087 08ee E4000000 		.4byte	0xe4
 5088 08f2 02       		.byte	0x2
 5089 08f3 00       		.byte	0
 5090 08f4 08       		.uleb128 0x8
 5091 08f5 F4020000 		.4byte	.LASF128
 5092 08f9 0C       		.byte	0xc
 5093 08fa FD02     		.2byte	0x2fd
 5094 08fc A0040000 		.4byte	0x4a0
 5095 0900 08       		.uleb128 0x8
 5096 0901 EE010000 		.4byte	.LASF129
 5097 0905 0C       		.byte	0xc
 5098 0906 FE02     		.2byte	0x2fe
 5099 0908 A6040000 		.4byte	0x4a6
 5100 090c 13       		.uleb128 0x13
 5101 090d 04       		.byte	0x4
 5102 090e 12090000 		.4byte	0x912
 5103 0912 21       		.uleb128 0x21
 5104 0913 09       		.uleb128 0x9
 5105 0914 98040000 		.4byte	.LASF130
 5106 0918 0D       		.byte	0xd
 5107 0919 5F       		.byte	0x5f
 5108 091a DD050000 		.4byte	0x5dd
 5109 091e 09       		.uleb128 0x9
 5110 091f 01020000 		.4byte	.LASF131
 5111 0923 0E       		.byte	0xe
 5112 0924 8F       		.byte	0x8f
 5113 0925 30090000 		.4byte	0x930
 5114 0929 04       		.uleb128 0x4
 5115 092a 01       		.byte	0x1
 5116 092b 02       		.byte	0x2
 5117 092c B9040000 		.4byte	.LASF132
 5118 0930 06       		.uleb128 0x6
 5119 0931 29090000 		.4byte	0x929
 5120 0935 22       		.uleb128 0x22
 5121 0936 410F0000 		.4byte	.LASF133
 5122 093a 0E       		.byte	0xe
 5123 093b 94       		.byte	0x94
 5124 093c D8000000 		.4byte	0xd8
 5125 0940 05       		.uleb128 0x5
 5126 0941 03       		.byte	0x3
 5127 0942 00000000 		.4byte	cpu_irq_critical_section_counter
ARM GAS  /tmp/ccTIydBQ.s 			page 151


 5128 0946 22       		.uleb128 0x22
 5129 0947 6B040000 		.4byte	.LASF134
 5130 094b 0E       		.byte	0xe
 5131 094c 95       		.byte	0x95
 5132 094d 30090000 		.4byte	0x930
 5133 0951 05       		.uleb128 0x5
 5134 0952 03       		.byte	0x3
 5135 0953 00000000 		.4byte	cpu_irq_prev_interrupt_state
 5136 0957 04       		.uleb128 0x4
 5137 0958 04       		.byte	0x4
 5138 0959 04       		.byte	0x4
 5139 095a CD020000 		.4byte	.LASF135
 5140 095e 04       		.uleb128 0x4
 5141 095f 08       		.byte	0x8
 5142 0960 04       		.byte	0x4
 5143 0961 510E0000 		.4byte	.LASF136
 5144 0965 04       		.uleb128 0x4
 5145 0966 08       		.byte	0x8
 5146 0967 04       		.byte	0x4
 5147 0968 E8080000 		.4byte	.LASF137
 5148 096c 23       		.uleb128 0x23
 5149 096d 030D0000 		.4byte	.LASF161
 5150 0971 01       		.byte	0x1
 5151 0972 3E000000 		.4byte	0x3e
 5152 0976 0F       		.byte	0xf
 5153 0977 9902     		.2byte	0x299
 5154 0979 96090000 		.4byte	0x996
 5155 097d 24       		.uleb128 0x24
 5156 097e 1F0A0000 		.4byte	.LASF138
 5157 0982 7F       		.sleb128 -1
 5158 0983 25       		.uleb128 0x25
 5159 0984 46070000 		.4byte	.LASF139
 5160 0988 00       		.byte	0
 5161 0989 25       		.uleb128 0x25
 5162 098a 50000000 		.4byte	.LASF140
 5163 098e 01       		.byte	0x1
 5164 098f 25       		.uleb128 0x25
 5165 0990 E8030000 		.4byte	.LASF141
 5166 0994 02       		.byte	0x2
 5167 0995 00       		.byte	0
 5168 0996 08       		.uleb128 0x8
 5169 0997 CF070000 		.4byte	.LASF142
 5170 099b 0F       		.byte	0xf
 5171 099c A402     		.2byte	0x2a4
 5172 099e 6C090000 		.4byte	0x96c
 5173 09a2 26       		.uleb128 0x26
 5174 09a3 50696E00 		.ascii	"Pin\000"
 5175 09a7 10       		.byte	0x10
 5176 09a8 38       		.byte	0x38
 5177 09a9 A2000000 		.4byte	0xa2
 5178 09ad 05       		.uleb128 0x5
 5179 09ae A2090000 		.4byte	0x9a2
 5180 09b2 27       		.uleb128 0x27
 5181 09b3 BF070000 		.4byte	.LASF143
 5182 09b7 10       		.byte	0x10
 5183 09b8 39       		.byte	0x39
 5184 09b9 AD090000 		.4byte	0x9ad
ARM GAS  /tmp/ccTIydBQ.s 			page 152


 5185 09bd 7F       		.sleb128 -1
 5186 09be 09       		.uleb128 0x9
 5187 09bf EA0B0000 		.4byte	.LASF144
 5188 09c3 11       		.byte	0x11
 5189 09c4 8B       		.byte	0x8b
 5190 09c5 7B000000 		.4byte	0x7b
 5191 09c9 09       		.uleb128 0x9
 5192 09ca D7090000 		.4byte	.LASF145
 5193 09ce 11       		.byte	0x11
 5194 09cf 8C       		.byte	0x8c
 5195 09d0 25000000 		.4byte	0x25
 5196 09d4 0D       		.uleb128 0xd
 5197 09d5 DD050000 		.4byte	0x5dd
 5198 09d9 E4090000 		.4byte	0x9e4
 5199 09dd 0E       		.uleb128 0xe
 5200 09de E4000000 		.4byte	0xe4
 5201 09e2 01       		.byte	0x1
 5202 09e3 00       		.byte	0
 5203 09e4 09       		.uleb128 0x9
 5204 09e5 9D0A0000 		.4byte	.LASF146
 5205 09e9 11       		.byte	0x11
 5206 09ea 8F       		.byte	0x8f
 5207 09eb D4090000 		.4byte	0x9d4
 5208 09ef 28       		.uleb128 0x28
 5209 09f0 670B0000 		.4byte	.LASF147
 5210 09f4 12       		.byte	0x12
 5211 09f5 5C       		.byte	0x5c
 5212 09f6 AD000000 		.4byte	0xad
 5213 09fa 38       		.byte	0x38
 5214 09fb 28       		.uleb128 0x28
 5215 09fc 7D060000 		.4byte	.LASF148
 5216 0a00 12       		.byte	0x12
 5217 0a01 5D       		.byte	0x5d
 5218 0a02 AD000000 		.4byte	0xad
 5219 0a06 05       		.byte	0x5
 5220 0a07 28       		.uleb128 0x28
 5221 0a08 69030000 		.4byte	.LASF149
 5222 0a0c 12       		.byte	0x12
 5223 0a0d 5E       		.byte	0x5e
 5224 0a0e AD000000 		.4byte	0xad
 5225 0a12 06       		.byte	0x6
 5226 0a13 28       		.uleb128 0x28
 5227 0a14 730B0000 		.4byte	.LASF150
 5228 0a18 12       		.byte	0x12
 5229 0a19 60       		.byte	0x60
 5230 0a1a AD000000 		.4byte	0xad
 5231 0a1e 39       		.byte	0x39
 5232 0a1f 28       		.uleb128 0x28
 5233 0a20 34010000 		.4byte	.LASF151
 5234 0a24 12       		.byte	0x12
 5235 0a25 61       		.byte	0x61
 5236 0a26 AD000000 		.4byte	0xad
 5237 0a2a 03       		.byte	0x3
 5238 0a2b 28       		.uleb128 0x28
 5239 0a2c A80D0000 		.4byte	.LASF152
 5240 0a30 12       		.byte	0x12
 5241 0a31 62       		.byte	0x62
ARM GAS  /tmp/ccTIydBQ.s 			page 153


 5242 0a32 AD000000 		.4byte	0xad
 5243 0a36 04       		.byte	0x4
 5244 0a37 28       		.uleb128 0x28
 5245 0a38 6F050000 		.4byte	.LASF153
 5246 0a3c 12       		.byte	0x12
 5247 0a3d 69       		.byte	0x69
 5248 0a3e AD000000 		.4byte	0xad
 5249 0a42 33       		.byte	0x33
 5250 0a43 28       		.uleb128 0x28
 5251 0a44 C70D0000 		.4byte	.LASF154
 5252 0a48 12       		.byte	0x12
 5253 0a49 6A       		.byte	0x6a
 5254 0a4a AD000000 		.4byte	0xad
 5255 0a4e 34       		.byte	0x34
 5256 0a4f 28       		.uleb128 0x28
 5257 0a50 E50C0000 		.4byte	.LASF155
 5258 0a54 12       		.byte	0x12
 5259 0a55 6D       		.byte	0x6d
 5260 0a56 AD000000 		.4byte	0xad
 5261 0a5a 35       		.byte	0x35
 5262 0a5b 28       		.uleb128 0x28
 5263 0a5c 81010000 		.4byte	.LASF156
 5264 0a60 12       		.byte	0x12
 5265 0a61 6E       		.byte	0x6e
 5266 0a62 AD000000 		.4byte	0xad
 5267 0a66 36       		.byte	0x36
 5268 0a67 28       		.uleb128 0x28
 5269 0a68 C60C0000 		.4byte	.LASF157
 5270 0a6c 12       		.byte	0x12
 5271 0a6d 6F       		.byte	0x6f
 5272 0a6e AD000000 		.4byte	0xad
 5273 0a72 37       		.byte	0x37
 5274 0a73 28       		.uleb128 0x28
 5275 0a74 9A020000 		.4byte	.LASF158
 5276 0a78 12       		.byte	0x12
 5277 0a79 71       		.byte	0x71
 5278 0a7a DD000000 		.4byte	0xdd
 5279 0a7e 32       		.byte	0x32
 5280 0a7f 29       		.uleb128 0x29
 5281 0a80 E40A0000 		.4byte	.LASF159
 5282 0a84 12       		.byte	0x12
 5283 0a85 73       		.byte	0x73
 5284 0a86 DD000000 		.4byte	0xdd
 5285 0a8a 58466100 		.4byte	0x614658
 5286 0a8e 2A       		.uleb128 0x2a
 5287 0a8f F7000000 		.4byte	.LASF160
 5288 0a93 12       		.byte	0x12
 5289 0a94 74       		.byte	0x74
 5290 0a95 DD000000 		.4byte	0xdd
 5291 0a99 4661     		.2byte	0x6146
 5292 0a9b 2B       		.uleb128 0x2b
 5293 0a9c ED050000 		.4byte	.LASF162
 5294 0aa0 01       		.byte	0x1
 5295 0aa1 3E000000 		.4byte	0x3e
 5296 0aa5 04       		.byte	0x4
 5297 0aa6 1B       		.byte	0x1b
 5298 0aa7 FA0A0000 		.4byte	0xafa
ARM GAS  /tmp/ccTIydBQ.s 			page 154


 5299 0aab 24       		.uleb128 0x24
 5300 0aac E3060000 		.4byte	.LASF163
 5301 0ab0 7F       		.sleb128 -1
 5302 0ab1 25       		.uleb128 0x25
 5303 0ab2 C10D0000 		.4byte	.LASF164
 5304 0ab6 00       		.byte	0
 5305 0ab7 25       		.uleb128 0x25
 5306 0ab8 3C080000 		.4byte	.LASF165
 5307 0abc 01       		.byte	0x1
 5308 0abd 25       		.uleb128 0x25
 5309 0abe 54070000 		.4byte	.LASF166
 5310 0ac2 02       		.byte	0x2
 5311 0ac3 25       		.uleb128 0x25
 5312 0ac4 370E0000 		.4byte	.LASF167
 5313 0ac8 03       		.byte	0x3
 5314 0ac9 25       		.uleb128 0x25
 5315 0aca 0E0E0000 		.4byte	.LASF168
 5316 0ace 04       		.byte	0x4
 5317 0acf 2C       		.uleb128 0x2c
 5318 0ad0 41494E00 		.ascii	"AIN\000"
 5319 0ad4 05       		.byte	0x5
 5320 0ad5 25       		.uleb128 0x25
 5321 0ad6 63010000 		.4byte	.LASF169
 5322 0ada 06       		.byte	0x6
 5323 0adb 25       		.uleb128 0x25
 5324 0adc 33000000 		.4byte	.LASF170
 5325 0ae0 07       		.byte	0x7
 5326 0ae1 25       		.uleb128 0x25
 5327 0ae2 C6000000 		.4byte	.LASF171
 5328 0ae6 08       		.byte	0x8
 5329 0ae7 25       		.uleb128 0x25
 5330 0ae8 240B0000 		.4byte	.LASF172
 5331 0aec 09       		.byte	0x9
 5332 0aed 25       		.uleb128 0x25
 5333 0aee F10A0000 		.4byte	.LASF173
 5334 0af2 0A       		.byte	0xa
 5335 0af3 25       		.uleb128 0x25
 5336 0af4 D0010000 		.4byte	.LASF174
 5337 0af8 0B       		.byte	0xb
 5338 0af9 00       		.byte	0
 5339 0afa 03       		.uleb128 0x3
 5340 0afb E7040000 		.4byte	.LASF175
 5341 0aff 03       		.byte	0x3
 5342 0b00 70       		.byte	0x70
 5343 0b01 CD000000 		.4byte	0xcd
 5344 0b05 03       		.uleb128 0x3
 5345 0b06 62050000 		.4byte	.LASF176
 5346 0b0a 13       		.byte	0x13
 5347 0b0b 47       		.byte	0x47
 5348 0b0c A2000000 		.4byte	0xa2
 5349 0b10 03       		.uleb128 0x3
 5350 0b11 0E0A0000 		.4byte	.LASF177
 5351 0b15 13       		.byte	0x13
 5352 0b16 56       		.byte	0x56
 5353 0b17 A2000000 		.4byte	0xa2
 5354 0b1b 03       		.uleb128 0x3
 5355 0b1c 990D0000 		.4byte	.LASF178
ARM GAS  /tmp/ccTIydBQ.s 			page 155


 5356 0b20 13       		.byte	0x13
 5357 0b21 63       		.byte	0x63
 5358 0b22 A2000000 		.4byte	0xa2
 5359 0b26 03       		.uleb128 0x3
 5360 0b27 50060000 		.4byte	.LASF179
 5361 0b2b 02       		.byte	0x2
 5362 0b2c 53       		.byte	0x53
 5363 0b2d 310B0000 		.4byte	0xb31
 5364 0b31 13       		.uleb128 0x13
 5365 0b32 04       		.byte	0x4
 5366 0b33 370B0000 		.4byte	0xb37
 5367 0b37 20       		.uleb128 0x20
 5368 0b38 470B0000 		.4byte	0xb47
 5369 0b3c 18       		.uleb128 0x18
 5370 0b3d CD000000 		.4byte	0xcd
 5371 0b41 18       		.uleb128 0x18
 5372 0b42 CD000000 		.4byte	0xcd
 5373 0b46 00       		.byte	0
 5374 0b47 11       		.uleb128 0x11
 5375 0b48 74080000 		.4byte	.LASF180
 5376 0b4c 4C       		.byte	0x4c
 5377 0b4d 02       		.byte	0x2
 5378 0b4e 55       		.byte	0x55
 5379 0b4f 380C0000 		.4byte	0xc38
 5380 0b53 10       		.uleb128 0x10
 5381 0b54 42000000 		.4byte	.LASF181
 5382 0b58 02       		.byte	0x2
 5383 0b59 57       		.byte	0x57
 5384 0b5a 570C0000 		.4byte	0xc57
 5385 0b5e 00       		.byte	0
 5386 0b5f 10       		.uleb128 0x10
 5387 0b60 640E0000 		.4byte	.LASF182
 5388 0b64 02       		.byte	0x2
 5389 0b65 58       		.byte	0x58
 5390 0b66 680C0000 		.4byte	0xc68
 5391 0b6a 04       		.byte	0x4
 5392 0b6b 10       		.uleb128 0x10
 5393 0b6c 7F0B0000 		.4byte	.LASF183
 5394 0b70 02       		.byte	0x2
 5395 0b71 59       		.byte	0x59
 5396 0b72 7D0C0000 		.4byte	0xc7d
 5397 0b76 08       		.byte	0x8
 5398 0b77 10       		.uleb128 0x10
 5399 0b78 24030000 		.4byte	.LASF184
 5400 0b7c 02       		.byte	0x2
 5401 0b7d 5A       		.byte	0x5a
 5402 0b7e 880C0000 		.4byte	0xc88
 5403 0b82 0C       		.byte	0xc
 5404 0b83 10       		.uleb128 0x10
 5405 0b84 22020000 		.4byte	.LASF185
 5406 0b88 02       		.byte	0x2
 5407 0b89 5B       		.byte	0x5b
 5408 0b8a 26030000 		.4byte	0x326
 5409 0b8e 10       		.byte	0x10
 5410 0b8f 10       		.uleb128 0x10
 5411 0b90 89080000 		.4byte	.LASF186
 5412 0b94 02       		.byte	0x2
ARM GAS  /tmp/ccTIydBQ.s 			page 156


 5413 0b95 5C       		.byte	0x5c
 5414 0b96 A20C0000 		.4byte	0xca2
 5415 0b9a 14       		.byte	0x14
 5416 0b9b 10       		.uleb128 0x10
 5417 0b9c 74010000 		.4byte	.LASF187
 5418 0ba0 02       		.byte	0x2
 5419 0ba1 5D       		.byte	0x5d
 5420 0ba2 AD0C0000 		.4byte	0xcad
 5421 0ba6 18       		.byte	0x18
 5422 0ba7 10       		.uleb128 0x10
 5423 0ba8 B5000000 		.4byte	.LASF188
 5424 0bac 02       		.byte	0x2
 5425 0bad 5E       		.byte	0x5e
 5426 0bae C40C0000 		.4byte	0xcc4
 5427 0bb2 1C       		.byte	0x1c
 5428 0bb3 10       		.uleb128 0x10
 5429 0bb4 27090000 		.4byte	.LASF189
 5430 0bb8 02       		.byte	0x2
 5431 0bb9 5F       		.byte	0x5f
 5432 0bba ED0C0000 		.4byte	0xced
 5433 0bbe 20       		.byte	0x20
 5434 0bbf 10       		.uleb128 0x10
 5435 0bc0 2D0E0000 		.4byte	.LASF190
 5436 0bc4 02       		.byte	0x2
 5437 0bc5 60       		.byte	0x60
 5438 0bc6 A20C0000 		.4byte	0xca2
 5439 0bca 24       		.byte	0x24
 5440 0bcb 10       		.uleb128 0x10
 5441 0bcc DD040000 		.4byte	.LASF191
 5442 0bd0 02       		.byte	0x2
 5443 0bd1 61       		.byte	0x61
 5444 0bd2 080D0000 		.4byte	0xd08
 5445 0bd6 28       		.byte	0x28
 5446 0bd7 10       		.uleb128 0x10
 5447 0bd8 60040000 		.4byte	.LASF192
 5448 0bdc 02       		.byte	0x2
 5449 0bdd 62       		.byte	0x62
 5450 0bde 1D0D0000 		.4byte	0xd1d
 5451 0be2 2C       		.byte	0x2c
 5452 0be3 10       		.uleb128 0x10
 5453 0be4 D6080000 		.4byte	.LASF193
 5454 0be8 02       		.byte	0x2
 5455 0be9 63       		.byte	0x63
 5456 0bea 370D0000 		.4byte	0xd37
 5457 0bee 30       		.byte	0x30
 5458 0bef 10       		.uleb128 0x10
 5459 0bf0 870E0000 		.4byte	.LASF194
 5460 0bf4 02       		.byte	0x2
 5461 0bf5 64       		.byte	0x64
 5462 0bf6 880C0000 		.4byte	0xc88
 5463 0bfa 34       		.byte	0x34
 5464 0bfb 10       		.uleb128 0x10
 5465 0bfc 14090000 		.4byte	.LASF195
 5466 0c00 02       		.byte	0x2
 5467 0c01 65       		.byte	0x65
 5468 0c02 510D0000 		.4byte	0xd51
 5469 0c06 38       		.byte	0x38
ARM GAS  /tmp/ccTIydBQ.s 			page 157


 5470 0c07 10       		.uleb128 0x10
 5471 0c08 B6060000 		.4byte	.LASF196
 5472 0c0c 02       		.byte	0x2
 5473 0c0d 66       		.byte	0x66
 5474 0c0e 880C0000 		.4byte	0xc88
 5475 0c12 3C       		.byte	0x3c
 5476 0c13 10       		.uleb128 0x10
 5477 0c14 48040000 		.4byte	.LASF197
 5478 0c18 02       		.byte	0x2
 5479 0c19 68       		.byte	0x68
 5480 0c1a AD0C0000 		.4byte	0xcad
 5481 0c1e 40       		.byte	0x40
 5482 0c1f 10       		.uleb128 0x10
 5483 0c20 BF040000 		.4byte	.LASF198
 5484 0c24 02       		.byte	0x2
 5485 0c25 6A       		.byte	0x6a
 5486 0c26 660D0000 		.4byte	0xd66
 5487 0c2a 44       		.byte	0x44
 5488 0c2b 10       		.uleb128 0x10
 5489 0c2c 110C0000 		.4byte	.LASF199
 5490 0c30 02       		.byte	0x2
 5491 0c31 6B       		.byte	0x6b
 5492 0c32 29090000 		.4byte	0x929
 5493 0c36 48       		.byte	0x48
 5494 0c37 00       		.byte	0
 5495 0c38 05       		.uleb128 0x5
 5496 0c39 470B0000 		.4byte	0xb47
 5497 0c3d 20       		.uleb128 0x20
 5498 0c3e 570C0000 		.4byte	0xc57
 5499 0c42 18       		.uleb128 0x18
 5500 0c43 A2000000 		.4byte	0xa2
 5501 0c47 18       		.uleb128 0x18
 5502 0c48 CD000000 		.4byte	0xcd
 5503 0c4c 18       		.uleb128 0x18
 5504 0c4d A2000000 		.4byte	0xa2
 5505 0c51 18       		.uleb128 0x18
 5506 0c52 29090000 		.4byte	0x929
 5507 0c56 00       		.byte	0
 5508 0c57 13       		.uleb128 0x13
 5509 0c58 04       		.byte	0x4
 5510 0c59 3D0C0000 		.4byte	0xc3d
 5511 0c5d 20       		.uleb128 0x20
 5512 0c5e 680C0000 		.4byte	0xc68
 5513 0c62 18       		.uleb128 0x18
 5514 0c63 A2000000 		.4byte	0xa2
 5515 0c67 00       		.byte	0
 5516 0c68 13       		.uleb128 0x13
 5517 0c69 04       		.byte	0x4
 5518 0c6a 5D0C0000 		.4byte	0xc5d
 5519 0c6e 17       		.uleb128 0x17
 5520 0c6f A2000000 		.4byte	0xa2
 5521 0c73 7D0C0000 		.4byte	0xc7d
 5522 0c77 18       		.uleb128 0x18
 5523 0c78 A2000000 		.4byte	0xa2
 5524 0c7c 00       		.byte	0
 5525 0c7d 13       		.uleb128 0x13
 5526 0c7e 04       		.byte	0x4
ARM GAS  /tmp/ccTIydBQ.s 			page 158


 5527 0c7f 6E0C0000 		.4byte	0xc6e
 5528 0c83 2D       		.uleb128 0x2d
 5529 0c84 29090000 		.4byte	0x929
 5530 0c88 13       		.uleb128 0x13
 5531 0c89 04       		.byte	0x4
 5532 0c8a 830C0000 		.4byte	0xc83
 5533 0c8e 17       		.uleb128 0x17
 5534 0c8f 29090000 		.4byte	0x929
 5535 0c93 A20C0000 		.4byte	0xca2
 5536 0c97 18       		.uleb128 0x18
 5537 0c98 FA0A0000 		.4byte	0xafa
 5538 0c9c 18       		.uleb128 0x18
 5539 0c9d CD000000 		.4byte	0xcd
 5540 0ca1 00       		.byte	0
 5541 0ca2 13       		.uleb128 0x13
 5542 0ca3 04       		.byte	0x4
 5543 0ca4 8E0C0000 		.4byte	0xc8e
 5544 0ca8 2D       		.uleb128 0x2d
 5545 0ca9 CD000000 		.4byte	0xcd
 5546 0cad 13       		.uleb128 0x13
 5547 0cae 04       		.byte	0x4
 5548 0caf A80C0000 		.4byte	0xca8
 5549 0cb3 20       		.uleb128 0x20
 5550 0cb4 BE0C0000 		.4byte	0xcbe
 5551 0cb8 18       		.uleb128 0x18
 5552 0cb9 BE0C0000 		.4byte	0xcbe
 5553 0cbd 00       		.byte	0
 5554 0cbe 13       		.uleb128 0x13
 5555 0cbf 04       		.byte	0x4
 5556 0cc0 A2000000 		.4byte	0xa2
 5557 0cc4 13       		.uleb128 0x13
 5558 0cc5 04       		.byte	0x4
 5559 0cc6 B30C0000 		.4byte	0xcb3
 5560 0cca 17       		.uleb128 0x17
 5561 0ccb 29090000 		.4byte	0x929
 5562 0ccf ED0C0000 		.4byte	0xced
 5563 0cd3 18       		.uleb128 0x18
 5564 0cd4 FA0A0000 		.4byte	0xafa
 5565 0cd8 18       		.uleb128 0x18
 5566 0cd9 CD000000 		.4byte	0xcd
 5567 0cdd 18       		.uleb128 0x18
 5568 0cde B2000000 		.4byte	0xb2
 5569 0ce2 18       		.uleb128 0x18
 5570 0ce3 B2000000 		.4byte	0xb2
 5571 0ce7 18       		.uleb128 0x18
 5572 0ce8 29090000 		.4byte	0x929
 5573 0cec 00       		.byte	0
 5574 0ced 13       		.uleb128 0x13
 5575 0cee 04       		.byte	0x4
 5576 0cef CA0C0000 		.4byte	0xcca
 5577 0cf3 17       		.uleb128 0x17
 5578 0cf4 29090000 		.4byte	0x929
 5579 0cf8 020D0000 		.4byte	0xd02
 5580 0cfc 18       		.uleb128 0x18
 5581 0cfd 020D0000 		.4byte	0xd02
 5582 0d01 00       		.byte	0
 5583 0d02 13       		.uleb128 0x13
ARM GAS  /tmp/ccTIydBQ.s 			page 159


 5584 0d03 04       		.byte	0x4
 5585 0d04 CD000000 		.4byte	0xcd
 5586 0d08 13       		.uleb128 0x13
 5587 0d09 04       		.byte	0x4
 5588 0d0a F30C0000 		.4byte	0xcf3
 5589 0d0e 17       		.uleb128 0x17
 5590 0d0f 29090000 		.4byte	0x929
 5591 0d13 1D0D0000 		.4byte	0xd1d
 5592 0d17 18       		.uleb128 0x18
 5593 0d18 CD000000 		.4byte	0xcd
 5594 0d1c 00       		.byte	0
 5595 0d1d 13       		.uleb128 0x13
 5596 0d1e 04       		.byte	0x4
 5597 0d1f 0E0D0000 		.4byte	0xd0e
 5598 0d23 17       		.uleb128 0x17
 5599 0d24 29090000 		.4byte	0x929
 5600 0d28 370D0000 		.4byte	0xd37
 5601 0d2c 18       		.uleb128 0x18
 5602 0d2d E2000000 		.4byte	0xe2
 5603 0d31 18       		.uleb128 0x18
 5604 0d32 B2000000 		.4byte	0xb2
 5605 0d36 00       		.byte	0
 5606 0d37 13       		.uleb128 0x13
 5607 0d38 04       		.byte	0x4
 5608 0d39 230D0000 		.4byte	0xd23
 5609 0d3d 17       		.uleb128 0x17
 5610 0d3e 29090000 		.4byte	0x929
 5611 0d42 510D0000 		.4byte	0xd51
 5612 0d46 18       		.uleb128 0x18
 5613 0d47 0C090000 		.4byte	0x90c
 5614 0d4b 18       		.uleb128 0x18
 5615 0d4c B2000000 		.4byte	0xb2
 5616 0d50 00       		.byte	0
 5617 0d51 13       		.uleb128 0x13
 5618 0d52 04       		.byte	0x4
 5619 0d53 3D0D0000 		.4byte	0xd3d
 5620 0d57 17       		.uleb128 0x17
 5621 0d58 260B0000 		.4byte	0xb26
 5622 0d5c 660D0000 		.4byte	0xd66
 5623 0d60 18       		.uleb128 0x18
 5624 0d61 260B0000 		.4byte	0xb26
 5625 0d65 00       		.byte	0
 5626 0d66 13       		.uleb128 0x13
 5627 0d67 04       		.byte	0x4
 5628 0d68 570D0000 		.4byte	0xd57
 5629 0d6c 22       		.uleb128 0x22
 5630 0d6d D3020000 		.4byte	.LASF200
 5631 0d71 02       		.byte	0x2
 5632 0d72 71       		.byte	0x71
 5633 0d73 380C0000 		.4byte	0xc38
 5634 0d77 05       		.uleb128 0x5
 5635 0d78 03       		.byte	0x3
 5636 0d79 00000000 		.4byte	hsmciInterface
 5637 0d7d 22       		.uleb128 0x22
 5638 0d7e 180C0000 		.4byte	.LASF201
 5639 0d82 02       		.byte	0x2
 5640 0d83 8D       		.byte	0x8d
ARM GAS  /tmp/ccTIydBQ.s 			page 160


 5641 0d84 380C0000 		.4byte	0xc38
 5642 0d88 05       		.uleb128 0x5
 5643 0d89 03       		.byte	0x3
 5644 0d8a 00000000 		.4byte	spiInterface
 5645 0d8e 2B       		.uleb128 0x2b
 5646 0d8f D8060000 		.4byte	.LASF202
 5647 0d93 01       		.byte	0x1
 5648 0d94 50000000 		.4byte	0x50
 5649 0d98 02       		.byte	0x2
 5650 0d99 B3       		.byte	0xb3
 5651 0d9a BD0D0000 		.4byte	0xdbd
 5652 0d9e 25       		.uleb128 0x25
 5653 0d9f C4030000 		.4byte	.LASF203
 5654 0da3 00       		.byte	0
 5655 0da4 25       		.uleb128 0x25
 5656 0da5 F3090000 		.4byte	.LASF204
 5657 0da9 01       		.byte	0x1
 5658 0daa 25       		.uleb128 0x25
 5659 0dab 92080000 		.4byte	.LASF205
 5660 0daf 02       		.byte	0x2
 5661 0db0 25       		.uleb128 0x25
 5662 0db1 2D020000 		.4byte	.LASF206
 5663 0db5 03       		.byte	0x3
 5664 0db6 25       		.uleb128 0x25
 5665 0db7 09000000 		.4byte	.LASF207
 5666 0dbb 04       		.byte	0x4
 5667 0dbc 00       		.byte	0
 5668 0dbd 11       		.uleb128 0x11
 5669 0dbe 07030000 		.4byte	.LASF208
 5670 0dc2 28       		.byte	0x28
 5671 0dc3 02       		.byte	0x2
 5672 0dc4 BC       		.byte	0xbc
 5673 0dc5 5A0E0000 		.4byte	0xe5a
 5674 0dc9 10       		.uleb128 0x10
 5675 0dca B9070000 		.4byte	.LASF209
 5676 0dce 02       		.byte	0x2
 5677 0dcf BD       		.byte	0xbd
 5678 0dd0 5A0E0000 		.4byte	0xe5a
 5679 0dd4 00       		.byte	0
 5680 0dd5 10       		.uleb128 0x10
 5681 0dd6 37050000 		.4byte	.LASF210
 5682 0dda 02       		.byte	0x2
 5683 0ddb BE       		.byte	0xbe
 5684 0ddc CD000000 		.4byte	0xcd
 5685 0de0 04       		.byte	0x4
 5686 0de1 10       		.uleb128 0x10
 5687 0de2 6D000000 		.4byte	.LASF211
 5688 0de6 02       		.byte	0x2
 5689 0de7 BF       		.byte	0xbf
 5690 0de8 CD000000 		.4byte	0xcd
 5691 0dec 08       		.byte	0x8
 5692 0ded 10       		.uleb128 0x10
 5693 0dee 1D060000 		.4byte	.LASF212
 5694 0df2 02       		.byte	0x2
 5695 0df3 C3       		.byte	0xc3
 5696 0df4 A2090000 		.4byte	0x9a2
 5697 0df8 0C       		.byte	0xc
ARM GAS  /tmp/ccTIydBQ.s 			page 161


 5698 0df9 12       		.uleb128 0x12
 5699 0dfa 72636100 		.ascii	"rca\000"
 5700 0dfe 02       		.byte	0x2
 5701 0dff C4       		.byte	0xc4
 5702 0e00 B2000000 		.4byte	0xb2
 5703 0e04 0E       		.byte	0xe
 5704 0e05 10       		.uleb128 0x10
 5705 0e06 D50C0000 		.4byte	.LASF213
 5706 0e0a 02       		.byte	0x2
 5707 0e0b C5       		.byte	0xc5
 5708 0e0c 8E0D0000 		.4byte	0xd8e
 5709 0e10 10       		.byte	0x10
 5710 0e11 10       		.uleb128 0x10
 5711 0e12 CF0B0000 		.4byte	.LASF214
 5712 0e16 02       		.byte	0x2
 5713 0e17 C6       		.byte	0xc6
 5714 0e18 100B0000 		.4byte	0xb10
 5715 0e1c 11       		.byte	0x11
 5716 0e1d 10       		.uleb128 0x10
 5717 0e1e EF000000 		.4byte	.LASF215
 5718 0e22 02       		.byte	0x2
 5719 0e23 C7       		.byte	0xc7
 5720 0e24 1B0B0000 		.4byte	0xb1b
 5721 0e28 12       		.byte	0x12
 5722 0e29 10       		.uleb128 0x10
 5723 0e2a 76000000 		.4byte	.LASF216
 5724 0e2e 02       		.byte	0x2
 5725 0e2f C8       		.byte	0xc8
 5726 0e30 A2000000 		.4byte	0xa2
 5727 0e34 13       		.byte	0x13
 5728 0e35 10       		.uleb128 0x10
 5729 0e36 1A0B0000 		.4byte	.LASF217
 5730 0e3a 02       		.byte	0x2
 5731 0e3b C9       		.byte	0xc9
 5732 0e3c A2000000 		.4byte	0xa2
 5733 0e40 14       		.byte	0x14
 5734 0e41 12       		.uleb128 0x12
 5735 0e42 63736400 		.ascii	"csd\000"
 5736 0e46 02       		.byte	0x2
 5737 0e47 CA       		.byte	0xca
 5738 0e48 600E0000 		.4byte	0xe60
 5739 0e4c 15       		.byte	0x15
 5740 0e4d 10       		.uleb128 0x10
 5741 0e4e 3A030000 		.4byte	.LASF218
 5742 0e52 02       		.byte	0x2
 5743 0e53 CB       		.byte	0xcb
 5744 0e54 A2000000 		.4byte	0xa2
 5745 0e58 25       		.byte	0x25
 5746 0e59 00       		.byte	0
 5747 0e5a 13       		.uleb128 0x13
 5748 0e5b 04       		.byte	0x4
 5749 0e5c 380C0000 		.4byte	0xc38
 5750 0e60 0D       		.uleb128 0xd
 5751 0e61 A2000000 		.4byte	0xa2
 5752 0e65 700E0000 		.4byte	0xe70
 5753 0e69 0E       		.uleb128 0xe
 5754 0e6a E4000000 		.4byte	0xe4
ARM GAS  /tmp/ccTIydBQ.s 			page 162


 5755 0e6e 0F       		.byte	0xf
 5756 0e6f 00       		.byte	0
 5757 0e70 0D       		.uleb128 0xd
 5758 0e71 BD0D0000 		.4byte	0xdbd
 5759 0e75 800E0000 		.4byte	0xe80
 5760 0e79 0E       		.uleb128 0xe
 5761 0e7a E4000000 		.4byte	0xe4
 5762 0e7e 01       		.byte	0x1
 5763 0e7f 00       		.byte	0
 5764 0e80 22       		.uleb128 0x22
 5765 0e81 C0080000 		.4byte	.LASF219
 5766 0e85 02       		.byte	0x2
 5767 0e86 CF       		.byte	0xcf
 5768 0e87 700E0000 		.4byte	0xe70
 5769 0e8b 05       		.uleb128 0x5
 5770 0e8c 03       		.byte	0x3
 5771 0e8d 00000000 		.4byte	sd_mmc_cards
 5772 0e91 22       		.uleb128 0x22
 5773 0e92 CD040000 		.4byte	.LASF220
 5774 0e96 02       		.byte	0x2
 5775 0e97 D2       		.byte	0xd2
 5776 0e98 A2000000 		.4byte	0xa2
 5777 0e9c 05       		.uleb128 0x5
 5778 0e9d 03       		.byte	0x3
 5779 0e9e 00000000 		.4byte	sd_mmc_slot_sel
 5780 0ea2 22       		.uleb128 0x22
 5781 0ea3 07030000 		.4byte	.LASF208
 5782 0ea7 02       		.byte	0x2
 5783 0ea8 D4       		.byte	0xd4
 5784 0ea9 B30E0000 		.4byte	0xeb3
 5785 0ead 05       		.uleb128 0x5
 5786 0eae 03       		.byte	0x3
 5787 0eaf 00000000 		.4byte	sd_mmc_card
 5788 0eb3 13       		.uleb128 0x13
 5789 0eb4 04       		.byte	0x4
 5790 0eb5 BD0D0000 		.4byte	0xdbd
 5791 0eb9 22       		.uleb128 0x22
 5792 0eba 49080000 		.4byte	.LASF221
 5793 0ebe 02       		.byte	0x2
 5794 0ebf D6       		.byte	0xd6
 5795 0ec0 B2000000 		.4byte	0xb2
 5796 0ec4 05       		.uleb128 0x5
 5797 0ec5 03       		.byte	0x3
 5798 0ec6 00000000 		.4byte	sd_mmc_nb_block_to_tranfer
 5799 0eca 22       		.uleb128 0x22
 5800 0ecb B80E0000 		.4byte	.LASF222
 5801 0ecf 02       		.byte	0x2
 5802 0ed0 D8       		.byte	0xd8
 5803 0ed1 B2000000 		.4byte	0xb2
 5804 0ed5 05       		.uleb128 0x5
 5805 0ed6 03       		.byte	0x3
 5806 0ed7 00000000 		.4byte	sd_mmc_nb_block_remaining
 5807 0edb 0D       		.uleb128 0xd
 5808 0edc DD000000 		.4byte	0xdd
 5809 0ee0 EB0E0000 		.4byte	0xeeb
 5810 0ee4 0E       		.uleb128 0xe
 5811 0ee5 E4000000 		.4byte	0xe4
ARM GAS  /tmp/ccTIydBQ.s 			page 163


 5812 0ee9 06       		.byte	0x6
 5813 0eea 00       		.byte	0
 5814 0eeb 05       		.uleb128 0x5
 5815 0eec DB0E0000 		.4byte	0xedb
 5816 0ef0 2E       		.uleb128 0x2e
 5817 0ef1 0D040000 		.4byte	.LASF223
 5818 0ef5 02       		.byte	0x2
 5819 0ef6 DB       		.byte	0xdb
 5820 0ef7 EB0E0000 		.4byte	0xeeb
 5821 0efb 05       		.uleb128 0x5
 5822 0efc 03       		.byte	0x3
 5823 0efd 00000000 		.4byte	sd_mmc_trans_units
 5824 0f01 0D       		.uleb128 0xd
 5825 0f02 DD000000 		.4byte	0xdd
 5826 0f06 110F0000 		.4byte	0xf11
 5827 0f0a 0E       		.uleb128 0xe
 5828 0f0b E4000000 		.4byte	0xe4
 5829 0f0f 0F       		.byte	0xf
 5830 0f10 00       		.byte	0
 5831 0f11 05       		.uleb128 0x5
 5832 0f12 010F0000 		.4byte	0xf01
 5833 0f16 2E       		.uleb128 0x2e
 5834 0f17 F5050000 		.4byte	.LASF224
 5835 0f1b 02       		.byte	0x2
 5836 0f1c DF       		.byte	0xdf
 5837 0f1d 110F0000 		.4byte	0xf11
 5838 0f21 05       		.uleb128 0x5
 5839 0f22 03       		.byte	0x3
 5840 0f23 00000000 		.4byte	sd_trans_multipliers
 5841 0f27 2E       		.uleb128 0x2e
 5842 0f28 5B0D0000 		.4byte	.LASF225
 5843 0f2c 02       		.byte	0x2
 5844 0f2d E3       		.byte	0xe3
 5845 0f2e 110F0000 		.4byte	0xf11
 5846 0f32 05       		.uleb128 0x5
 5847 0f33 03       		.byte	0x3
 5848 0f34 00000000 		.4byte	mmc_trans_multipliers
 5849 0f38 2F       		.uleb128 0x2f
 5850 0f39 4C0A0000 		.4byte	.LASF226
 5851 0f3d 02       		.byte	0x2
 5852 0f3e 0108     		.2byte	0x801
 5853 0f40 050B0000 		.4byte	0xb05
 5854 0f44 00000000 		.4byte	.LFB272
 5855 0f48 70000000 		.4byte	.LFE272-.LFB272
 5856 0f4c 01       		.uleb128 0x1
 5857 0f4d 9C       		.byte	0x9c
 5858 0f4e AC0F0000 		.4byte	0xfac
 5859 0f52 30       		.uleb128 0x30
 5860 0f53 5A040000 		.4byte	.LASF228
 5861 0f57 02       		.byte	0x2
 5862 0f58 0108     		.2byte	0x801
 5863 0f5a 29090000 		.4byte	0x929
 5864 0f5e 00000000 		.4byte	.LLST99
 5865 0f62 31       		.uleb128 0x31
 5866 0f63 A51C0000 		.4byte	0x1ca5
 5867 0f67 2E000000 		.4byte	.LBB435
 5868 0f6b A0040000 		.4byte	.Ldebug_ranges0+0x4a0
ARM GAS  /tmp/ccTIydBQ.s 			page 164


 5869 0f6f 02       		.byte	0x2
 5870 0f70 0F08     		.2byte	0x80f
 5871 0f72 800F0000 		.4byte	0xf80
 5872 0f76 32       		.uleb128 0x32
 5873 0f77 5E000000 		.4byte	.LVL277
 5874 0f7b 80250000 		.4byte	0x2580
 5875 0f7f 00       		.byte	0
 5876 0f80 33       		.uleb128 0x33
 5877 0f81 A51C0000 		.4byte	0x1ca5
 5878 0f85 4C000000 		.4byte	.LBB438
 5879 0f89 0E000000 		.4byte	.LBE438-.LBB438
 5880 0f8d 02       		.byte	0x2
 5881 0f8e 1708     		.2byte	0x817
 5882 0f90 9E0F0000 		.4byte	0xf9e
 5883 0f94 32       		.uleb128 0x32
 5884 0f95 58000000 		.4byte	.LVL276
 5885 0f99 80250000 		.4byte	0x2580
 5886 0f9d 00       		.byte	0
 5887 0f9e 34       		.uleb128 0x34
 5888 0f9f 48000000 		.4byte	.LVL275
 5889 0fa3 35       		.uleb128 0x35
 5890 0fa4 01       		.uleb128 0x1
 5891 0fa5 50       		.byte	0x50
 5892 0fa6 03       		.uleb128 0x3
 5893 0fa7 0A       		.byte	0xa
 5894 0fa8 0C31     		.2byte	0x310c
 5895 0faa 00       		.byte	0
 5896 0fab 00       		.byte	0
 5897 0fac 36       		.uleb128 0x36
 5898 0fad DF070000 		.4byte	.LASF227
 5899 0fb1 02       		.byte	0x2
 5900 0fb2 F607     		.2byte	0x7f6
 5901 0fb4 050B0000 		.4byte	0xb05
 5902 0fb8 00000000 		.4byte	.LFB271
 5903 0fbc 30000000 		.4byte	.LFE271-.LFB271
 5904 0fc0 01       		.uleb128 0x1
 5905 0fc1 9C       		.byte	0x9c
 5906 0fc2 FA0F0000 		.4byte	0xffa
 5907 0fc6 37       		.uleb128 0x37
 5908 0fc7 73726300 		.ascii	"src\000"
 5909 0fcb 02       		.byte	0x2
 5910 0fcc F607     		.2byte	0x7f6
 5911 0fce 0C090000 		.4byte	0x90c
 5912 0fd2 21000000 		.4byte	.LLST97
 5913 0fd6 30       		.uleb128 0x30
 5914 0fd7 E2020000 		.4byte	.LASF229
 5915 0fdb 02       		.byte	0x2
 5916 0fdc F607     		.2byte	0x7f6
 5917 0fde B2000000 		.4byte	0xb2
 5918 0fe2 42000000 		.4byte	.LLST98
 5919 0fe6 34       		.uleb128 0x34
 5920 0fe7 0E000000 		.4byte	.LVL272
 5921 0feb 35       		.uleb128 0x35
 5922 0fec 01       		.uleb128 0x1
 5923 0fed 50       		.byte	0x50
 5924 0fee 03       		.uleb128 0x3
 5925 0fef F3       		.byte	0xf3
ARM GAS  /tmp/ccTIydBQ.s 			page 165


 5926 0ff0 01       		.uleb128 0x1
 5927 0ff1 50       		.byte	0x50
 5928 0ff2 35       		.uleb128 0x35
 5929 0ff3 01       		.uleb128 0x1
 5930 0ff4 51       		.byte	0x51
 5931 0ff5 02       		.uleb128 0x2
 5932 0ff6 74       		.byte	0x74
 5933 0ff7 00       		.sleb128 0
 5934 0ff8 00       		.byte	0
 5935 0ff9 00       		.byte	0
 5936 0ffa 2F       		.uleb128 0x2f
 5937 0ffb 0B0F0000 		.4byte	.LASF230
 5938 0fff 02       		.byte	0x2
 5939 1000 C707     		.2byte	0x7c7
 5940 1002 050B0000 		.4byte	0xb05
 5941 1006 00000000 		.4byte	.LFB270
 5942 100a D4000000 		.4byte	.LFE270-.LFB270
 5943 100e 01       		.uleb128 0x1
 5944 100f 9C       		.byte	0x9c
 5945 1010 2E110000 		.4byte	0x112e
 5946 1014 30       		.uleb128 0x30
 5947 1015 76000000 		.4byte	.LASF216
 5948 1019 02       		.byte	0x2
 5949 101a C707     		.2byte	0x7c7
 5950 101c A2000000 		.4byte	0xa2
 5951 1020 63000000 		.4byte	.LLST89
 5952 1024 30       		.uleb128 0x30
 5953 1025 27080000 		.4byte	.LASF231
 5954 1029 02       		.byte	0x2
 5955 102a C707     		.2byte	0x7c7
 5956 102c CD000000 		.4byte	0xcd
 5957 1030 9D000000 		.4byte	.LLST90
 5958 1034 30       		.uleb128 0x30
 5959 1035 E2020000 		.4byte	.LASF229
 5960 1039 02       		.byte	0x2
 5961 103a C707     		.2byte	0x7c7
 5962 103c B2000000 		.4byte	0xb2
 5963 1040 FB000000 		.4byte	.LLST91
 5964 1044 38       		.uleb128 0x38
 5965 1045 3D050000 		.4byte	.LASF237
 5966 1049 02       		.byte	0x2
 5967 104a C907     		.2byte	0x7c9
 5968 104c 050B0000 		.4byte	0xb05
 5969 1050 39       		.uleb128 0x39
 5970 1051 636D6400 		.ascii	"cmd\000"
 5971 1055 02       		.byte	0x2
 5972 1056 CA07     		.2byte	0x7ca
 5973 1058 CD000000 		.4byte	0xcd
 5974 105c 35010000 		.4byte	.LLST92
 5975 1060 39       		.uleb128 0x39
 5976 1061 61726700 		.ascii	"arg\000"
 5977 1065 02       		.byte	0x2
 5978 1066 CA07     		.2byte	0x7ca
 5979 1068 CD000000 		.4byte	0xcd
 5980 106c 94010000 		.4byte	.LLST93
 5981 1070 3A       		.uleb128 0x3a
 5982 1071 580E0000 		.4byte	.LASF232
ARM GAS  /tmp/ccTIydBQ.s 			page 166


 5983 1075 02       		.byte	0x2
 5984 1076 CA07     		.2byte	0x7ca
 5985 1078 CD000000 		.4byte	0xcd
 5986 107c B2010000 		.4byte	.LLST94
 5987 1080 31       		.uleb128 0x31
 5988 1081 B71C0000 		.4byte	0x1cb7
 5989 1085 00000000 		.4byte	.LBB419
 5990 1089 50040000 		.4byte	.Ldebug_ranges0+0x450
 5991 108d 02       		.byte	0x2
 5992 108e CC07     		.2byte	0x7cc
 5993 1090 AE100000 		.4byte	0x10ae
 5994 1094 3B       		.uleb128 0x3b
 5995 1095 C81C0000 		.4byte	0x1cc8
 5996 1099 C5010000 		.4byte	.LLST95
 5997 109d 3C       		.uleb128 0x3c
 5998 109e 1A000000 		.4byte	.LVL255
 5999 10a2 4A250000 		.4byte	0x254a
 6000 10a6 35       		.uleb128 0x35
 6001 10a7 01       		.uleb128 0x1
 6002 10a8 50       		.byte	0x50
 6003 10a9 02       		.uleb128 0x2
 6004 10aa 74       		.byte	0x74
 6005 10ab 00       		.sleb128 0
 6006 10ac 00       		.byte	0
 6007 10ad 00       		.byte	0
 6008 10ae 33       		.uleb128 0x33
 6009 10af 4A130000 		.4byte	0x134a
 6010 10b3 20000000 		.4byte	.LBB425
 6011 10b7 16000000 		.4byte	.LBE425-.LBB425
 6012 10bb 02       		.byte	0x2
 6013 10bc D007     		.2byte	0x7d0
 6014 10be D5100000 		.4byte	0x10d5
 6015 10c2 3B       		.uleb128 0x3b
 6016 10c3 5B130000 		.4byte	0x135b
 6017 10c7 F1010000 		.4byte	.LLST96
 6018 10cb 32       		.uleb128 0x32
 6019 10cc 34000000 		.4byte	.LVL258
 6020 10d0 B5250000 		.4byte	0x25b5
 6021 10d4 00       		.byte	0
 6022 10d5 31       		.uleb128 0x31
 6023 10d6 A51C0000 		.4byte	0x1ca5
 6024 10da 36000000 		.4byte	.LBB427
 6025 10de 70040000 		.4byte	.Ldebug_ranges0+0x470
 6026 10e2 02       		.byte	0x2
 6027 10e3 D107     		.2byte	0x7d1
 6028 10e5 F3100000 		.4byte	0x10f3
 6029 10e9 32       		.uleb128 0x32
 6030 10ea A8000000 		.4byte	.LVL268
 6031 10ee 80250000 		.4byte	0x2580
 6032 10f2 00       		.byte	0
 6033 10f3 31       		.uleb128 0x31
 6034 10f4 A51C0000 		.4byte	0x1ca5
 6035 10f8 94000000 		.4byte	.LBB430
 6036 10fc 88040000 		.4byte	.Ldebug_ranges0+0x488
 6037 1100 02       		.byte	0x2
 6038 1101 E407     		.2byte	0x7e4
 6039 1103 11110000 		.4byte	0x1111
ARM GAS  /tmp/ccTIydBQ.s 			page 167


 6040 1107 32       		.uleb128 0x32
 6041 1108 B0000000 		.4byte	.LVL270
 6042 110c 80250000 		.4byte	0x2580
 6043 1110 00       		.byte	0
 6044 1111 3D       		.uleb128 0x3d
 6045 1112 6E000000 		.4byte	.LVL263
 6046 1116 02       		.uleb128 0x2
 6047 1117 77       		.byte	0x77
 6048 1118 00       		.sleb128 0
 6049 1119 35       		.uleb128 0x35
 6050 111a 01       		.uleb128 0x1
 6051 111b 52       		.byte	0x52
 6052 111c 03       		.uleb128 0x3
 6053 111d 0A       		.byte	0xa
 6054 111e 0002     		.2byte	0x200
 6055 1120 35       		.uleb128 0x35
 6056 1121 01       		.uleb128 0x1
 6057 1122 53       		.byte	0x53
 6058 1123 02       		.uleb128 0x2
 6059 1124 76       		.byte	0x76
 6060 1125 00       		.sleb128 0
 6061 1126 35       		.uleb128 0x35
 6062 1127 02       		.uleb128 0x2
 6063 1128 7D       		.byte	0x7d
 6064 1129 00       		.sleb128 0
 6065 112a 01       		.uleb128 0x1
 6066 112b 31       		.byte	0x31
 6067 112c 00       		.byte	0
 6068 112d 00       		.byte	0
 6069 112e 2F       		.uleb128 0x2f
 6070 112f 770F0000 		.4byte	.LASF233
 6071 1133 02       		.byte	0x2
 6072 1134 AC07     		.2byte	0x7ac
 6073 1136 050B0000 		.4byte	0xb05
 6074 113a 00000000 		.4byte	.LFB269
 6075 113e 6C000000 		.4byte	.LFE269-.LFB269
 6076 1142 01       		.uleb128 0x1
 6077 1143 9C       		.byte	0x9c
 6078 1144 9A110000 		.4byte	0x119a
 6079 1148 30       		.uleb128 0x30
 6080 1149 5A040000 		.4byte	.LASF228
 6081 114d 02       		.byte	0x2
 6082 114e AC07     		.2byte	0x7ac
 6083 1150 29090000 		.4byte	0x929
 6084 1154 04020000 		.4byte	.LLST88
 6085 1158 31       		.uleb128 0x31
 6086 1159 A51C0000 		.4byte	0x1ca5
 6087 115d 34000000 		.4byte	.LBB415
 6088 1161 38040000 		.4byte	.Ldebug_ranges0+0x438
 6089 1165 02       		.byte	0x2
 6090 1166 BA07     		.2byte	0x7ba
 6091 1168 76110000 		.4byte	0x1176
 6092 116c 32       		.uleb128 0x32
 6093 116d 4A000000 		.4byte	.LVL250
 6094 1171 80250000 		.4byte	0x2580
 6095 1175 00       		.byte	0
 6096 1176 3E       		.uleb128 0x3e
ARM GAS  /tmp/ccTIydBQ.s 			page 168


 6097 1177 32000000 		.4byte	.LVL249
 6098 117b 8C110000 		.4byte	0x118c
 6099 117f 35       		.uleb128 0x35
 6100 1180 01       		.uleb128 0x1
 6101 1181 50       		.byte	0x50
 6102 1182 03       		.uleb128 0x3
 6103 1183 0A       		.byte	0xa
 6104 1184 0C31     		.2byte	0x310c
 6105 1186 35       		.uleb128 0x35
 6106 1187 01       		.uleb128 0x1
 6107 1188 51       		.byte	0x51
 6108 1189 01       		.uleb128 0x1
 6109 118a 30       		.byte	0x30
 6110 118b 00       		.byte	0
 6111 118c 34       		.uleb128 0x34
 6112 118d 5A000000 		.4byte	.LVL251
 6113 1191 35       		.uleb128 0x35
 6114 1192 01       		.uleb128 0x1
 6115 1193 50       		.byte	0x50
 6116 1194 03       		.uleb128 0x3
 6117 1195 0A       		.byte	0xa
 6118 1196 0C31     		.2byte	0x310c
 6119 1198 00       		.byte	0
 6120 1199 00       		.byte	0
 6121 119a 36       		.uleb128 0x36
 6122 119b 3A090000 		.4byte	.LASF234
 6123 119f 02       		.byte	0x2
 6124 11a0 A007     		.2byte	0x7a0
 6125 11a2 050B0000 		.4byte	0xb05
 6126 11a6 00000000 		.4byte	.LFB268
 6127 11aa 30000000 		.4byte	.LFE268-.LFB268
 6128 11ae 01       		.uleb128 0x1
 6129 11af 9C       		.byte	0x9c
 6130 11b0 E8110000 		.4byte	0x11e8
 6131 11b4 30       		.uleb128 0x30
 6132 11b5 E30E0000 		.4byte	.LASF235
 6133 11b9 02       		.byte	0x2
 6134 11ba A007     		.2byte	0x7a0
 6135 11bc E2000000 		.4byte	0xe2
 6136 11c0 25020000 		.4byte	.LLST86
 6137 11c4 30       		.uleb128 0x30
 6138 11c5 E2020000 		.4byte	.LASF229
 6139 11c9 02       		.byte	0x2
 6140 11ca A007     		.2byte	0x7a0
 6141 11cc B2000000 		.4byte	0xb2
 6142 11d0 46020000 		.4byte	.LLST87
 6143 11d4 34       		.uleb128 0x34
 6144 11d5 0E000000 		.4byte	.LVL246
 6145 11d9 35       		.uleb128 0x35
 6146 11da 01       		.uleb128 0x1
 6147 11db 50       		.byte	0x50
 6148 11dc 03       		.uleb128 0x3
 6149 11dd F3       		.byte	0xf3
 6150 11de 01       		.uleb128 0x1
 6151 11df 50       		.byte	0x50
 6152 11e0 35       		.uleb128 0x35
 6153 11e1 01       		.uleb128 0x1
ARM GAS  /tmp/ccTIydBQ.s 			page 169


 6154 11e2 51       		.byte	0x51
 6155 11e3 02       		.uleb128 0x2
 6156 11e4 74       		.byte	0x74
 6157 11e5 00       		.sleb128 0
 6158 11e6 00       		.byte	0
 6159 11e7 00       		.byte	0
 6160 11e8 2F       		.uleb128 0x2f
 6161 11e9 140D0000 		.4byte	.LASF236
 6162 11ed 02       		.byte	0x2
 6163 11ee 6E07     		.2byte	0x76e
 6164 11f0 050B0000 		.4byte	0xb05
 6165 11f4 00000000 		.4byte	.LFB267
 6166 11f8 A4000000 		.4byte	.LFE267-.LFB267
 6167 11fc 01       		.uleb128 0x1
 6168 11fd 9C       		.byte	0x9c
 6169 11fe F8120000 		.4byte	0x12f8
 6170 1202 30       		.uleb128 0x30
 6171 1203 76000000 		.4byte	.LASF216
 6172 1207 02       		.byte	0x2
 6173 1208 6E07     		.2byte	0x76e
 6174 120a A2000000 		.4byte	0xa2
 6175 120e 67020000 		.4byte	.LLST79
 6176 1212 30       		.uleb128 0x30
 6177 1213 27080000 		.4byte	.LASF231
 6178 1217 02       		.byte	0x2
 6179 1218 6E07     		.2byte	0x76e
 6180 121a CD000000 		.4byte	0xcd
 6181 121e A1020000 		.4byte	.LLST80
 6182 1222 30       		.uleb128 0x30
 6183 1223 E2020000 		.4byte	.LASF229
 6184 1227 02       		.byte	0x2
 6185 1228 6E07     		.2byte	0x76e
 6186 122a B2000000 		.4byte	0xb2
 6187 122e E6020000 		.4byte	.LLST81
 6188 1232 38       		.uleb128 0x38
 6189 1233 3D050000 		.4byte	.LASF237
 6190 1237 02       		.byte	0x2
 6191 1238 7007     		.2byte	0x770
 6192 123a 050B0000 		.4byte	0xb05
 6193 123e 39       		.uleb128 0x39
 6194 123f 636D6400 		.ascii	"cmd\000"
 6195 1243 02       		.byte	0x2
 6196 1244 7107     		.2byte	0x771
 6197 1246 CD000000 		.4byte	0xcd
 6198 124a 20030000 		.4byte	.LLST82
 6199 124e 39       		.uleb128 0x39
 6200 124f 61726700 		.ascii	"arg\000"
 6201 1253 02       		.byte	0x2
 6202 1254 7107     		.2byte	0x771
 6203 1256 CD000000 		.4byte	0xcd
 6204 125a 59030000 		.4byte	.LLST83
 6205 125e 3A       		.uleb128 0x3a
 6206 125f 580E0000 		.4byte	.LASF232
 6207 1263 02       		.byte	0x2
 6208 1264 7107     		.2byte	0x771
 6209 1266 CD000000 		.4byte	0xcd
 6210 126a 77030000 		.4byte	.LLST84
ARM GAS  /tmp/ccTIydBQ.s 			page 170


 6211 126e 31       		.uleb128 0x31
 6212 126f B71C0000 		.4byte	0x1cb7
 6213 1273 00000000 		.4byte	.LBB405
 6214 1277 00040000 		.4byte	.Ldebug_ranges0+0x400
 6215 127b 02       		.byte	0x2
 6216 127c 7307     		.2byte	0x773
 6217 127e 95120000 		.4byte	0x1295
 6218 1282 3B       		.uleb128 0x3b
 6219 1283 C81C0000 		.4byte	0x1cc8
 6220 1287 8A030000 		.4byte	.LLST85
 6221 128b 32       		.uleb128 0x32
 6222 128c 18000000 		.4byte	.LVL236
 6223 1290 4A250000 		.4byte	0x254a
 6224 1294 00       		.byte	0
 6225 1295 31       		.uleb128 0x31
 6226 1296 A51C0000 		.4byte	0x1ca5
 6227 129a 70000000 		.4byte	.LBB411
 6228 129e 20040000 		.4byte	.Ldebug_ranges0+0x420
 6229 12a2 02       		.byte	0x2
 6230 12a3 7A07     		.2byte	0x77a
 6231 12a5 B3120000 		.4byte	0x12b3
 6232 12a9 32       		.uleb128 0x32
 6233 12aa 84000000 		.4byte	.LVL244
 6234 12ae 80250000 		.4byte	0x2580
 6235 12b2 00       		.byte	0
 6236 12b3 32       		.uleb128 0x32
 6237 12b4 22000000 		.4byte	.LVL237
 6238 12b8 101D0000 		.4byte	0x1d10
 6239 12bc 3D       		.uleb128 0x3d
 6240 12bd 4E000000 		.4byte	.LVL241
 6241 12c1 02       		.uleb128 0x2
 6242 12c2 76       		.byte	0x76
 6243 12c3 00       		.sleb128 0
 6244 12c4 35       		.uleb128 0x35
 6245 12c5 01       		.uleb128 0x1
 6246 12c6 50       		.byte	0x50
 6247 12c7 1B       		.uleb128 0x1b
 6248 12c8 0C       		.byte	0xc
 6249 12c9 12111000 		.4byte	0x101112
 6250 12cd 0C       		.byte	0xc
 6251 12ce 11110800 		.4byte	0x81111
 6252 12d2 75       		.byte	0x75
 6253 12d3 00       		.sleb128 0
 6254 12d4 40       		.byte	0x40
 6255 12d5 4B       		.byte	0x4b
 6256 12d6 24       		.byte	0x24
 6257 12d7 22       		.byte	0x22
 6258 12d8 0C       		.byte	0xc
 6259 12d9 01000080 		.4byte	0x80000001
 6260 12dd 2B       		.byte	0x2b
 6261 12de 28       		.byte	0x28
 6262 12df 0100     		.2byte	0x1
 6263 12e1 16       		.byte	0x16
 6264 12e2 13       		.byte	0x13
 6265 12e3 35       		.uleb128 0x35
 6266 12e4 01       		.uleb128 0x1
 6267 12e5 52       		.byte	0x52
ARM GAS  /tmp/ccTIydBQ.s 			page 171


 6268 12e6 03       		.uleb128 0x3
 6269 12e7 0A       		.byte	0xa
 6270 12e8 0002     		.2byte	0x200
 6271 12ea 35       		.uleb128 0x35
 6272 12eb 01       		.uleb128 0x1
 6273 12ec 53       		.byte	0x53
 6274 12ed 02       		.uleb128 0x2
 6275 12ee 75       		.byte	0x75
 6276 12ef 00       		.sleb128 0
 6277 12f0 35       		.uleb128 0x35
 6278 12f1 02       		.uleb128 0x2
 6279 12f2 7D       		.byte	0x7d
 6280 12f3 00       		.sleb128 0
 6281 12f4 01       		.uleb128 0x1
 6282 12f5 31       		.byte	0x31
 6283 12f6 00       		.byte	0
 6284 12f7 00       		.byte	0
 6285 12f8 3F       		.uleb128 0x3f
 6286 12f9 1C050000 		.4byte	.LASF238
 6287 12fd 02       		.byte	0x2
 6288 12fe 6707     		.2byte	0x767
 6289 1300 CD000000 		.4byte	0xcd
 6290 1304 00000000 		.4byte	.LFB266
 6291 1308 14000000 		.4byte	.LFE266-.LFB266
 6292 130c 01       		.uleb128 0x1
 6293 130d 9C       		.byte	0x9c
 6294 130e 23130000 		.4byte	0x1323
 6295 1312 30       		.uleb128 0x30
 6296 1313 76000000 		.4byte	.LASF216
 6297 1317 02       		.byte	0x2
 6298 1318 6707     		.2byte	0x767
 6299 131a A2000000 		.4byte	0xa2
 6300 131e B6030000 		.4byte	.LLST78
 6301 1322 00       		.byte	0
 6302 1323 40       		.uleb128 0x40
 6303 1324 A9080000 		.4byte	.LASF239
 6304 1328 02       		.byte	0x2
 6305 1329 6107     		.2byte	0x761
 6306 132b 00000000 		.4byte	.LFB265
 6307 132f 14000000 		.4byte	.LFE265-.LFB265
 6308 1333 01       		.uleb128 0x1
 6309 1334 9C       		.byte	0x9c
 6310 1335 4A130000 		.4byte	0x134a
 6311 1339 30       		.uleb128 0x30
 6312 133a 76000000 		.4byte	.LASF216
 6313 133e 02       		.byte	0x2
 6314 133f 6107     		.2byte	0x761
 6315 1341 A2000000 		.4byte	0xa2
 6316 1345 D7030000 		.4byte	.LLST77
 6317 1349 00       		.byte	0
 6318 134a 41       		.uleb128 0x41
 6319 134b 72070000 		.4byte	.LASF295
 6320 134f 02       		.byte	0x2
 6321 1350 5907     		.2byte	0x759
 6322 1352 29090000 		.4byte	0x929
 6323 1356 01       		.byte	0x1
 6324 1357 68130000 		.4byte	0x1368
ARM GAS  /tmp/ccTIydBQ.s 			page 172


 6325 135b 42       		.uleb128 0x42
 6326 135c 76000000 		.4byte	.LASF216
 6327 1360 02       		.byte	0x2
 6328 1361 5907     		.2byte	0x759
 6329 1363 A2000000 		.4byte	0xa2
 6330 1367 00       		.byte	0
 6331 1368 36       		.uleb128 0x36
 6332 1369 8C070000 		.4byte	.LASF240
 6333 136d 02       		.byte	0x2
 6334 136e 5007     		.2byte	0x750
 6335 1370 CD000000 		.4byte	0xcd
 6336 1374 00000000 		.4byte	.LFB263
 6337 1378 34000000 		.4byte	.LFE263-.LFB263
 6338 137c 01       		.uleb128 0x1
 6339 137d 9C       		.byte	0x9c
 6340 137e D4130000 		.4byte	0x13d4
 6341 1382 30       		.uleb128 0x30
 6342 1383 76000000 		.4byte	.LASF216
 6343 1387 02       		.byte	0x2
 6344 1388 5007     		.2byte	0x750
 6345 138a A2000000 		.4byte	0xa2
 6346 138e F8030000 		.4byte	.LLST74
 6347 1392 31       		.uleb128 0x31
 6348 1393 B71C0000 		.4byte	0x1cb7
 6349 1397 00000000 		.4byte	.LBB397
 6350 139b D0030000 		.4byte	.Ldebug_ranges0+0x3d0
 6351 139f 02       		.byte	0x2
 6352 13a0 5207     		.2byte	0x752
 6353 13a2 B9130000 		.4byte	0x13b9
 6354 13a6 3B       		.uleb128 0x3b
 6355 13a7 C81C0000 		.4byte	0x1cc8
 6356 13ab 32040000 		.4byte	.LLST75
 6357 13af 32       		.uleb128 0x32
 6358 13b0 0E000000 		.4byte	.LVL223
 6359 13b4 4A250000 		.4byte	0x254a
 6360 13b8 00       		.byte	0
 6361 13b9 43       		.uleb128 0x43
 6362 13ba A51C0000 		.4byte	0x1ca5
 6363 13be 10000000 		.4byte	.LBB401
 6364 13c2 E8030000 		.4byte	.Ldebug_ranges0+0x3e8
 6365 13c6 02       		.byte	0x2
 6366 13c7 5507     		.2byte	0x755
 6367 13c9 32       		.uleb128 0x32
 6368 13ca 28000000 		.4byte	.LVL224
 6369 13ce 80250000 		.4byte	0x2580
 6370 13d2 00       		.byte	0
 6371 13d3 00       		.byte	0
 6372 13d4 36       		.uleb128 0x36
 6373 13d5 0A060000 		.4byte	.LASF241
 6374 13d9 02       		.byte	0x2
 6375 13da 4707     		.2byte	0x747
 6376 13dc 1B0B0000 		.4byte	0xb1b
 6377 13e0 00000000 		.4byte	.LFB262
 6378 13e4 34000000 		.4byte	.LFE262-.LFB262
 6379 13e8 01       		.uleb128 0x1
 6380 13e9 9C       		.byte	0x9c
 6381 13ea 40140000 		.4byte	0x1440
ARM GAS  /tmp/ccTIydBQ.s 			page 173


 6382 13ee 30       		.uleb128 0x30
 6383 13ef 76000000 		.4byte	.LASF216
 6384 13f3 02       		.byte	0x2
 6385 13f4 4707     		.2byte	0x747
 6386 13f6 A2000000 		.4byte	0xa2
 6387 13fa 6C040000 		.4byte	.LLST72
 6388 13fe 31       		.uleb128 0x31
 6389 13ff B71C0000 		.4byte	0x1cb7
 6390 1403 00000000 		.4byte	.LBB389
 6391 1407 A0030000 		.4byte	.Ldebug_ranges0+0x3a0
 6392 140b 02       		.byte	0x2
 6393 140c 4907     		.2byte	0x749
 6394 140e 25140000 		.4byte	0x1425
 6395 1412 3B       		.uleb128 0x3b
 6396 1413 C81C0000 		.4byte	0x1cc8
 6397 1417 A6040000 		.4byte	.LLST73
 6398 141b 32       		.uleb128 0x32
 6399 141c 0E000000 		.4byte	.LVL218
 6400 1420 4A250000 		.4byte	0x254a
 6401 1424 00       		.byte	0
 6402 1425 43       		.uleb128 0x43
 6403 1426 A51C0000 		.4byte	0x1ca5
 6404 142a 10000000 		.4byte	.LBB393
 6405 142e B8030000 		.4byte	.Ldebug_ranges0+0x3b8
 6406 1432 02       		.byte	0x2
 6407 1433 4C07     		.2byte	0x74c
 6408 1435 32       		.uleb128 0x32
 6409 1436 28000000 		.4byte	.LVL219
 6410 143a 80250000 		.4byte	0x2580
 6411 143e 00       		.byte	0
 6412 143f 00       		.byte	0
 6413 1440 36       		.uleb128 0x36
 6414 1441 2D0A0000 		.4byte	.LASF242
 6415 1445 02       		.byte	0x2
 6416 1446 3E07     		.2byte	0x73e
 6417 1448 100B0000 		.4byte	0xb10
 6418 144c 00000000 		.4byte	.LFB261
 6419 1450 34000000 		.4byte	.LFE261-.LFB261
 6420 1454 01       		.uleb128 0x1
 6421 1455 9C       		.byte	0x9c
 6422 1456 AC140000 		.4byte	0x14ac
 6423 145a 30       		.uleb128 0x30
 6424 145b 76000000 		.4byte	.LASF216
 6425 145f 02       		.byte	0x2
 6426 1460 3E07     		.2byte	0x73e
 6427 1462 A2000000 		.4byte	0xa2
 6428 1466 E0040000 		.4byte	.LLST70
 6429 146a 31       		.uleb128 0x31
 6430 146b B71C0000 		.4byte	0x1cb7
 6431 146f 00000000 		.4byte	.LBB381
 6432 1473 70030000 		.4byte	.Ldebug_ranges0+0x370
 6433 1477 02       		.byte	0x2
 6434 1478 4007     		.2byte	0x740
 6435 147a 91140000 		.4byte	0x1491
 6436 147e 3B       		.uleb128 0x3b
 6437 147f C81C0000 		.4byte	0x1cc8
 6438 1483 1A050000 		.4byte	.LLST71
ARM GAS  /tmp/ccTIydBQ.s 			page 174


 6439 1487 32       		.uleb128 0x32
 6440 1488 0E000000 		.4byte	.LVL213
 6441 148c 4A250000 		.4byte	0x254a
 6442 1490 00       		.byte	0
 6443 1491 43       		.uleb128 0x43
 6444 1492 A51C0000 		.4byte	0x1ca5
 6445 1496 10000000 		.4byte	.LBB385
 6446 149a 88030000 		.4byte	.Ldebug_ranges0+0x388
 6447 149e 02       		.byte	0x2
 6448 149f 4307     		.2byte	0x743
 6449 14a1 32       		.uleb128 0x32
 6450 14a2 28000000 		.4byte	.LVL214
 6451 14a6 80250000 		.4byte	0x2580
 6452 14aa 00       		.byte	0
 6453 14ab 00       		.byte	0
 6454 14ac 2F       		.uleb128 0x2f
 6455 14ad 15020000 		.4byte	.LASF243
 6456 14b1 02       		.byte	0x2
 6457 14b2 1907     		.2byte	0x719
 6458 14b4 050B0000 		.4byte	0xb05
 6459 14b8 00000000 		.4byte	.LFB260
 6460 14bc 70060000 		.4byte	.LFE260-.LFB260
 6461 14c0 01       		.uleb128 0x1
 6462 14c1 9C       		.byte	0x9c
 6463 14c2 371B0000 		.4byte	0x1b37
 6464 14c6 30       		.uleb128 0x30
 6465 14c7 76000000 		.4byte	.LASF216
 6466 14cb 02       		.byte	0x2
 6467 14cc 1907     		.2byte	0x719
 6468 14ce A2000000 		.4byte	0xa2
 6469 14d2 54050000 		.4byte	.LLST53
 6470 14d6 38       		.uleb128 0x38
 6471 14d7 3D050000 		.4byte	.LASF237
 6472 14db 02       		.byte	0x2
 6473 14dc 1C07     		.2byte	0x71c
 6474 14de 050B0000 		.4byte	0xb05
 6475 14e2 31       		.uleb128 0x31
 6476 14e3 B71C0000 		.4byte	0x1cb7
 6477 14e7 00000000 		.4byte	.LBB281
 6478 14eb C0010000 		.4byte	.Ldebug_ranges0+0x1c0
 6479 14ef 02       		.byte	0x2
 6480 14f0 1F07     		.2byte	0x71f
 6481 14f2 10150000 		.4byte	0x1510
 6482 14f6 3B       		.uleb128 0x3b
 6483 14f7 C81C0000 		.4byte	0x1cc8
 6484 14fb 8E050000 		.4byte	.LLST54
 6485 14ff 3C       		.uleb128 0x3c
 6486 1500 58000000 		.4byte	.LVL106
 6487 1504 4A250000 		.4byte	0x254a
 6488 1508 35       		.uleb128 0x35
 6489 1509 01       		.uleb128 0x1
 6490 150a 50       		.byte	0x50
 6491 150b 02       		.uleb128 0x2
 6492 150c 75       		.byte	0x75
 6493 150d 00       		.sleb128 0
 6494 150e 00       		.byte	0
 6495 150f 00       		.byte	0
ARM GAS  /tmp/ccTIydBQ.s 			page 175


 6496 1510 44       		.uleb128 0x44
 6497 1511 A51C0000 		.4byte	0x1ca5
 6498 1515 0A000000 		.4byte	.LBB287
 6499 1519 08000000 		.4byte	.LBE287-.LBB287
 6500 151d 02       		.byte	0x2
 6501 151e 2607     		.2byte	0x726
 6502 1520 31       		.uleb128 0x31
 6503 1521 6B1C0000 		.4byte	0x1c6b
 6504 1525 18000000 		.4byte	.LBB289
 6505 1529 E8010000 		.4byte	.Ldebug_ranges0+0x1e8
 6506 152d 02       		.byte	0x2
 6507 152e 2B07     		.2byte	0x72b
 6508 1530 EA180000 		.4byte	0x18ea
 6509 1534 45       		.uleb128 0x45
 6510 1535 E8010000 		.4byte	.Ldebug_ranges0+0x1e8
 6511 1539 46       		.uleb128 0x46
 6512 153a 7C1C0000 		.4byte	0x1c7c
 6513 153e 03       		.uleb128 0x3
 6514 153f 91       		.byte	0x91
 6515 1540 A77F     		.sleb128 -89
 6516 1542 33       		.uleb128 0x33
 6517 1543 AE1C0000 		.4byte	0x1cae
 6518 1547 92010000 		.4byte	.LBB291
 6519 154b 14000000 		.4byte	.LBE291-.LBB291
 6520 154f 02       		.byte	0x2
 6521 1550 4806     		.2byte	0x648
 6522 1552 5F150000 		.4byte	0x155f
 6523 1556 47       		.uleb128 0x47
 6524 1557 A6010000 		.4byte	.LVL122
 6525 155b 02       		.uleb128 0x2
 6526 155c 77       		.byte	0x77
 6527 155d 00       		.sleb128 0
 6528 155e 00       		.byte	0
 6529 155f 33       		.uleb128 0x33
 6530 1560 AE1C0000 		.4byte	0x1cae
 6531 1564 C0010000 		.4byte	.LBB293
 6532 1568 16000000 		.4byte	.LBE293-.LBB293
 6533 156c 02       		.byte	0x2
 6534 156d 5906     		.2byte	0x659
 6535 156f 7C150000 		.4byte	0x157c
 6536 1573 47       		.uleb128 0x47
 6537 1574 D6010000 		.4byte	.LVL124
 6538 1578 02       		.uleb128 0x2
 6539 1579 76       		.byte	0x76
 6540 157a 00       		.sleb128 0
 6541 157b 00       		.byte	0
 6542 157c 31       		.uleb128 0x31
 6543 157d 73210000 		.4byte	0x2173
 6544 1581 26030000 		.4byte	.LBB295
 6545 1585 10020000 		.4byte	.Ldebug_ranges0+0x210
 6546 1589 02       		.byte	0x2
 6547 158a 0F06     		.2byte	0x60f
 6548 158c DE150000 		.4byte	0x15de
 6549 1590 3B       		.uleb128 0x3b
 6550 1591 84210000 		.4byte	0x2184
 6551 1595 B7050000 		.4byte	.LLST55
 6552 1599 45       		.uleb128 0x45
ARM GAS  /tmp/ccTIydBQ.s 			page 176


 6553 159a 10020000 		.4byte	.Ldebug_ranges0+0x210
 6554 159e 48       		.uleb128 0x48
 6555 159f 8F210000 		.4byte	0x218f
 6556 15a3 CC050000 		.4byte	.LLST56
 6557 15a7 48       		.uleb128 0x48
 6558 15a8 9B210000 		.4byte	0x219b
 6559 15ac 00060000 		.4byte	.LLST57
 6560 15b0 48       		.uleb128 0x48
 6561 15b1 A7210000 		.4byte	0x21a7
 6562 15b5 4A060000 		.4byte	.LLST58
 6563 15b9 3E       		.uleb128 0x3e
 6564 15ba 32030000 		.4byte	.LVL152
 6565 15be CA150000 		.4byte	0x15ca
 6566 15c2 35       		.uleb128 0x35
 6567 15c3 01       		.uleb128 0x1
 6568 15c4 50       		.byte	0x50
 6569 15c5 03       		.uleb128 0x3
 6570 15c6 0A       		.byte	0xa
 6571 15c7 2945     		.2byte	0x4529
 6572 15c9 00       		.byte	0
 6573 15ca 34       		.uleb128 0x34
 6574 15cb 54030000 		.4byte	.LVL156
 6575 15cf 35       		.uleb128 0x35
 6576 15d0 01       		.uleb128 0x1
 6577 15d1 50       		.byte	0x50
 6578 15d2 03       		.uleb128 0x3
 6579 15d3 0A       		.byte	0xa
 6580 15d4 3711     		.2byte	0x1137
 6581 15d6 35       		.uleb128 0x35
 6582 15d7 01       		.uleb128 0x1
 6583 15d8 51       		.byte	0x51
 6584 15d9 01       		.uleb128 0x1
 6585 15da 30       		.byte	0x30
 6586 15db 00       		.byte	0
 6587 15dc 00       		.byte	0
 6588 15dd 00       		.byte	0
 6589 15de 31       		.uleb128 0x31
 6590 15df 231C0000 		.4byte	0x1c23
 6591 15e3 5E030000 		.4byte	.LBB298
 6592 15e7 28020000 		.4byte	.Ldebug_ranges0+0x228
 6593 15eb 02       		.byte	0x2
 6594 15ec 1306     		.2byte	0x613
 6595 15ee AA170000 		.4byte	0x17aa
 6596 15f2 45       		.uleb128 0x45
 6597 15f3 28020000 		.4byte	.Ldebug_ranges0+0x228
 6598 15f7 46       		.uleb128 0x46
 6599 15f8 341C0000 		.4byte	0x1c34
 6600 15fc 03       		.uleb128 0x3
 6601 15fd 91       		.byte	0x91
 6602 15fe A87F     		.sleb128 -88
 6603 1600 48       		.uleb128 0x48
 6604 1601 401C0000 		.4byte	0x1c40
 6605 1605 68060000 		.4byte	.LLST59
 6606 1609 33       		.uleb128 0x33
 6607 160a F5210000 		.4byte	0x21f5
 6608 160e 76030000 		.4byte	.LBB300
 6609 1612 3E000000 		.4byte	.LBE300-.LBB300
ARM GAS  /tmp/ccTIydBQ.s 			page 177


 6610 1616 02       		.byte	0x2
 6611 1617 AC06     		.2byte	0x6ac
 6612 1619 4D160000 		.4byte	0x164d
 6613 161d 49       		.uleb128 0x49
 6614 161e 76030000 		.4byte	.LBB301
 6615 1622 3E000000 		.4byte	.LBE301-.LBB301
 6616 1626 48       		.uleb128 0x48
 6617 1627 06220000 		.4byte	0x2206
 6618 162b 89060000 		.4byte	.LLST60
 6619 162f 48       		.uleb128 0x48
 6620 1630 12220000 		.4byte	0x2212
 6621 1634 B8060000 		.4byte	.LLST61
 6622 1638 34       		.uleb128 0x34
 6623 1639 8E030000 		.4byte	.LVL162
 6624 163d 35       		.uleb128 0x35
 6625 163e 01       		.uleb128 0x1
 6626 163f 50       		.byte	0x50
 6627 1640 03       		.uleb128 0x3
 6628 1641 0A       		.byte	0xa
 6629 1642 0145     		.2byte	0x4501
 6630 1644 35       		.uleb128 0x35
 6631 1645 01       		.uleb128 0x1
 6632 1646 51       		.byte	0x51
 6633 1647 02       		.uleb128 0x2
 6634 1648 77       		.byte	0x77
 6635 1649 00       		.sleb128 0
 6636 164a 00       		.byte	0
 6637 164b 00       		.byte	0
 6638 164c 00       		.byte	0
 6639 164d 31       		.uleb128 0x31
 6640 164e 0E210000 		.4byte	0x210e
 6641 1652 32040000 		.4byte	.LBB302
 6642 1656 48020000 		.4byte	.Ldebug_ranges0+0x248
 6643 165a 02       		.byte	0x2
 6644 165b CB06     		.2byte	0x6cb
 6645 165d 87160000 		.4byte	0x1687
 6646 1661 3B       		.uleb128 0x3b
 6647 1662 1F210000 		.4byte	0x211f
 6648 1666 D6060000 		.4byte	.LLST62
 6649 166a 45       		.uleb128 0x45
 6650 166b 48020000 		.4byte	.Ldebug_ranges0+0x248
 6651 166f 48       		.uleb128 0x48
 6652 1670 2B210000 		.4byte	0x212b
 6653 1674 F4060000 		.4byte	.LLST63
 6654 1678 34       		.uleb128 0x34
 6655 1679 50040000 		.4byte	.LVL176
 6656 167d 35       		.uleb128 0x35
 6657 167e 01       		.uleb128 0x1
 6658 167f 50       		.byte	0x50
 6659 1680 03       		.uleb128 0x3
 6660 1681 0A       		.byte	0xa
 6661 1682 0631     		.2byte	0x3106
 6662 1684 00       		.byte	0
 6663 1685 00       		.byte	0
 6664 1686 00       		.byte	0
 6665 1687 31       		.uleb128 0x31
 6666 1688 AE1C0000 		.4byte	0x1cae
ARM GAS  /tmp/ccTIydBQ.s 			page 178


 6667 168c 66040000 		.4byte	.LBB309
 6668 1690 78020000 		.4byte	.Ldebug_ranges0+0x278
 6669 1694 02       		.byte	0x2
 6670 1695 CF06     		.2byte	0x6cf
 6671 1697 A4160000 		.4byte	0x16a4
 6672 169b 47       		.uleb128 0x47
 6673 169c 7E040000 		.4byte	.LVL178
 6674 16a0 02       		.uleb128 0x2
 6675 16a1 76       		.byte	0x76
 6676 16a2 00       		.sleb128 0
 6677 16a3 00       		.byte	0
 6678 16a4 33       		.uleb128 0x33
 6679 16a5 AE1C0000 		.4byte	0x1cae
 6680 16a9 06060000 		.4byte	.LBB316
 6681 16ad 18000000 		.4byte	.LBE316-.LBB316
 6682 16b1 02       		.byte	0x2
 6683 16b2 DB06     		.2byte	0x6db
 6684 16b4 C1160000 		.4byte	0x16c1
 6685 16b8 47       		.uleb128 0x47
 6686 16b9 1C060000 		.4byte	.LVL206
 6687 16bd 02       		.uleb128 0x2
 6688 16be 76       		.byte	0x76
 6689 16bf 00       		.sleb128 0
 6690 16c0 00       		.byte	0
 6691 16c1 31       		.uleb128 0x31
 6692 16c2 01210000 		.4byte	0x2101
 6693 16c6 1E060000 		.4byte	.LBB318
 6694 16ca 90020000 		.4byte	.Ldebug_ranges0+0x290
 6695 16ce 02       		.byte	0x2
 6696 16cf D306     		.2byte	0x6d3
 6697 16d1 EC160000 		.4byte	0x16ec
 6698 16d5 34       		.uleb128 0x34
 6699 16d6 2C060000 		.4byte	.LVL207
 6700 16da 35       		.uleb128 0x35
 6701 16db 01       		.uleb128 0x1
 6702 16dc 50       		.byte	0x50
 6703 16dd 03       		.uleb128 0x3
 6704 16de 0A       		.byte	0xa
 6705 16df 0631     		.2byte	0x3106
 6706 16e1 35       		.uleb128 0x35
 6707 16e2 01       		.uleb128 0x1
 6708 16e3 51       		.byte	0x51
 6709 16e4 05       		.uleb128 0x5
 6710 16e5 0C       		.byte	0xc
 6711 16e6 0001B903 		.4byte	0x3b90100
 6712 16ea 00       		.byte	0
 6713 16eb 00       		.byte	0
 6714 16ec 31       		.uleb128 0x31
 6715 16ed AE1C0000 		.4byte	0x1cae
 6716 16f1 46060000 		.4byte	.LBB322
 6717 16f5 B0020000 		.4byte	.Ldebug_ranges0+0x2b0
 6718 16f9 02       		.byte	0x2
 6719 16fa D706     		.2byte	0x6d7
 6720 16fc 18170000 		.4byte	0x1718
 6721 1700 3D       		.uleb128 0x3d
 6722 1701 5A060000 		.4byte	.LVL209
 6723 1705 02       		.uleb128 0x2
ARM GAS  /tmp/ccTIydBQ.s 			page 179


 6724 1706 76       		.byte	0x76
 6725 1707 00       		.sleb128 0
 6726 1708 35       		.uleb128 0x35
 6727 1709 01       		.uleb128 0x1
 6728 170a 51       		.byte	0x51
 6729 170b 05       		.uleb128 0x5
 6730 170c 0C       		.byte	0xc
 6731 170d 00751903 		.4byte	0x3197500
 6732 1711 35       		.uleb128 0x35
 6733 1712 01       		.uleb128 0x1
 6734 1713 53       		.byte	0x53
 6735 1714 01       		.uleb128 0x1
 6736 1715 31       		.byte	0x31
 6737 1716 00       		.byte	0
 6738 1717 00       		.byte	0
 6739 1718 3E       		.uleb128 0x3e
 6740 1719 6C030000 		.4byte	.LVL158
 6741 171d 2E170000 		.4byte	0x172e
 6742 1721 35       		.uleb128 0x35
 6743 1722 01       		.uleb128 0x1
 6744 1723 50       		.byte	0x50
 6745 1724 03       		.uleb128 0x3
 6746 1725 0A       		.byte	0xa
 6747 1726 0040     		.2byte	0x4000
 6748 1728 35       		.uleb128 0x35
 6749 1729 01       		.uleb128 0x1
 6750 172a 51       		.byte	0x51
 6751 172b 01       		.uleb128 0x1
 6752 172c 30       		.byte	0x30
 6753 172d 00       		.byte	0
 6754 172e 3E       		.uleb128 0x3e
 6755 172f C0030000 		.4byte	.LVL165
 6756 1733 44170000 		.4byte	0x1744
 6757 1737 35       		.uleb128 0x35
 6758 1738 01       		.uleb128 0x1
 6759 1739 50       		.byte	0x50
 6760 173a 03       		.uleb128 0x3
 6761 173b 0A       		.byte	0xa
 6762 173c 025B     		.2byte	0x5b02
 6763 173e 35       		.uleb128 0x35
 6764 173f 01       		.uleb128 0x1
 6765 1740 51       		.byte	0x51
 6766 1741 01       		.uleb128 0x1
 6767 1742 30       		.byte	0x30
 6768 1743 00       		.byte	0
 6769 1744 3E       		.uleb128 0x3e
 6770 1745 DA030000 		.4byte	.LVL166
 6771 1749 5C170000 		.4byte	0x175c
 6772 174d 35       		.uleb128 0x35
 6773 174e 01       		.uleb128 0x1
 6774 174f 50       		.byte	0x50
 6775 1750 03       		.uleb128 0x3
 6776 1751 0A       		.byte	0xa
 6777 1752 0311     		.2byte	0x1103
 6778 1754 35       		.uleb128 0x35
 6779 1755 01       		.uleb128 0x1
 6780 1756 51       		.byte	0x51
ARM GAS  /tmp/ccTIydBQ.s 			page 180


 6781 1757 03       		.uleb128 0x3
 6782 1758 40       		.byte	0x40
 6783 1759 3C       		.byte	0x3c
 6784 175a 24       		.byte	0x24
 6785 175b 00       		.byte	0
 6786 175c 32       		.uleb128 0x32
 6787 175d E4030000 		.4byte	.LVL167
 6788 1761 7E200000 		.4byte	0x207e
 6789 1765 32       		.uleb128 0x32
 6790 1766 EE030000 		.4byte	.LVL168
 6791 176a F51E0000 		.4byte	0x1ef5
 6792 176e 3E       		.uleb128 0x3e
 6793 176f FE030000 		.4byte	.LVL169
 6794 1773 7F170000 		.4byte	0x177f
 6795 1777 35       		.uleb128 0x35
 6796 1778 01       		.uleb128 0x1
 6797 1779 50       		.byte	0x50
 6798 177a 03       		.uleb128 0x3
 6799 177b 0A       		.byte	0xa
 6800 177c 0731     		.2byte	0x3107
 6801 177e 00       		.byte	0
 6802 177f 4A       		.uleb128 0x4a
 6803 1780 14040000 		.4byte	.LVL170
 6804 1784 98200000 		.4byte	0x2098
 6805 1788 94170000 		.4byte	0x1794
 6806 178c 35       		.uleb128 0x35
 6807 178d 01       		.uleb128 0x1
 6808 178e 50       		.byte	0x50
 6809 178f 03       		.uleb128 0x3
 6810 1790 91       		.byte	0x91
 6811 1791 A87F     		.sleb128 -88
 6812 1793 00       		.byte	0
 6813 1794 34       		.uleb128 0x34
 6814 1795 A6040000 		.4byte	.LVL183
 6815 1799 35       		.uleb128 0x35
 6816 179a 01       		.uleb128 0x1
 6817 179b 50       		.byte	0x50
 6818 179c 03       		.uleb128 0x3
 6819 179d 0A       		.byte	0xa
 6820 179e 1011     		.2byte	0x1110
 6821 17a0 35       		.uleb128 0x35
 6822 17a1 01       		.uleb128 0x1
 6823 17a2 51       		.byte	0x51
 6824 17a3 03       		.uleb128 0x3
 6825 17a4 0A       		.byte	0xa
 6826 17a5 0002     		.2byte	0x200
 6827 17a7 00       		.byte	0
 6828 17a8 00       		.byte	0
 6829 17a9 00       		.byte	0
 6830 17aa 33       		.uleb128 0x33
 6831 17ab 031D0000 		.4byte	0x1d03
 6832 17af 4A050000 		.4byte	.LBB334
 6833 17b3 3E000000 		.4byte	.LBE334-.LBB334
 6834 17b7 02       		.byte	0x2
 6835 17b8 4306     		.2byte	0x643
 6836 17ba E2170000 		.4byte	0x17e2
 6837 17be 3E       		.uleb128 0x3e
ARM GAS  /tmp/ccTIydBQ.s 			page 181


 6838 17bf 58050000 		.4byte	.LVL197
 6839 17c3 CF170000 		.4byte	0x17cf
 6840 17c7 35       		.uleb128 0x35
 6841 17c8 01       		.uleb128 0x1
 6842 17c9 50       		.byte	0x50
 6843 17ca 03       		.uleb128 0x3
 6844 17cb 0A       		.byte	0xa
 6845 17cc 3711     		.2byte	0x1137
 6846 17ce 00       		.byte	0
 6847 17cf 34       		.uleb128 0x34
 6848 17d0 6C050000 		.4byte	.LVL198
 6849 17d4 35       		.uleb128 0x35
 6850 17d5 01       		.uleb128 0x1
 6851 17d6 50       		.byte	0x50
 6852 17d7 03       		.uleb128 0x3
 6853 17d8 0A       		.byte	0xa
 6854 17d9 0611     		.2byte	0x1106
 6855 17db 35       		.uleb128 0x35
 6856 17dc 01       		.uleb128 0x1
 6857 17dd 51       		.byte	0x51
 6858 17de 01       		.uleb128 0x1
 6859 17df 32       		.byte	0x32
 6860 17e0 00       		.byte	0
 6861 17e1 00       		.byte	0
 6862 17e2 33       		.uleb128 0x33
 6863 17e3 38210000 		.4byte	0x2138
 6864 17e7 88050000 		.4byte	.LBB336
 6865 17eb 76000000 		.4byte	.LBE336-.LBB336
 6866 17ef 02       		.byte	0x2
 6867 17f0 5306     		.2byte	0x653
 6868 17f2 50180000 		.4byte	0x1850
 6869 17f6 49       		.uleb128 0x49
 6870 17f7 88050000 		.4byte	.LBB337
 6871 17fb 76000000 		.4byte	.LBE337-.LBB337
 6872 17ff 46       		.uleb128 0x46
 6873 1800 49210000 		.4byte	0x2149
 6874 1804 03       		.uleb128 0x3
 6875 1805 91       		.byte	0x91
 6876 1806 A87F     		.sleb128 -88
 6877 1808 4B       		.uleb128 0x4b
 6878 1809 9A050000 		.4byte	.LVL199
 6879 180d 02       		.uleb128 0x2
 6880 180e 77       		.byte	0x77
 6881 180f 00       		.sleb128 0
 6882 1810 3B180000 		.4byte	0x183b
 6883 1814 35       		.uleb128 0x35
 6884 1815 01       		.uleb128 0x1
 6885 1816 50       		.byte	0x50
 6886 1817 05       		.uleb128 0x5
 6887 1818 0C       		.byte	0xc
 6888 1819 06110800 		.4byte	0x81106
 6889 181d 35       		.uleb128 0x35
 6890 181e 01       		.uleb128 0x1
 6891 181f 51       		.byte	0x51
 6892 1820 06       		.uleb128 0x6
 6893 1821 11       		.byte	0x11
 6894 1822 81FEFF87 		.sleb128 -2130706687
ARM GAS  /tmp/ccTIydBQ.s 			page 182


 6894      78
 6895 1827 35       		.uleb128 0x35
 6896 1828 01       		.uleb128 0x1
 6897 1829 52       		.byte	0x52
 6898 182a 02       		.uleb128 0x2
 6899 182b 08       		.byte	0x8
 6900 182c 40       		.byte	0x40
 6901 182d 35       		.uleb128 0x35
 6902 182e 01       		.uleb128 0x1
 6903 182f 53       		.byte	0x53
 6904 1830 02       		.uleb128 0x2
 6905 1831 76       		.byte	0x76
 6906 1832 00       		.sleb128 0
 6907 1833 35       		.uleb128 0x35
 6908 1834 02       		.uleb128 0x2
 6909 1835 7D       		.byte	0x7d
 6910 1836 00       		.sleb128 0
 6911 1837 02       		.uleb128 0x2
 6912 1838 76       		.byte	0x76
 6913 1839 00       		.sleb128 0
 6914 183a 00       		.byte	0
 6915 183b 34       		.uleb128 0x34
 6916 183c AC050000 		.4byte	.LVL200
 6917 1840 35       		.uleb128 0x35
 6918 1841 01       		.uleb128 0x1
 6919 1842 50       		.byte	0x50
 6920 1843 03       		.uleb128 0x3
 6921 1844 91       		.byte	0x91
 6922 1845 A87F     		.sleb128 -88
 6923 1847 35       		.uleb128 0x35
 6924 1848 01       		.uleb128 0x1
 6925 1849 51       		.byte	0x51
 6926 184a 02       		.uleb128 0x2
 6927 184b 76       		.byte	0x76
 6928 184c 00       		.sleb128 0
 6929 184d 00       		.byte	0
 6930 184e 00       		.byte	0
 6931 184f 00       		.byte	0
 6932 1850 3E       		.uleb128 0x3e
 6933 1851 34000000 		.4byte	.LVL102
 6934 1855 67180000 		.4byte	0x1867
 6935 1859 35       		.uleb128 0x35
 6936 185a 01       		.uleb128 0x1
 6937 185b 50       		.byte	0x50
 6938 185c 03       		.uleb128 0x3
 6939 185d 0A       		.byte	0xa
 6940 185e 0040     		.2byte	0x4000
 6941 1860 35       		.uleb128 0x35
 6942 1861 01       		.uleb128 0x1
 6943 1862 51       		.byte	0x51
 6944 1863 02       		.uleb128 0x2
 6945 1864 75       		.byte	0x75
 6946 1865 00       		.sleb128 0
 6947 1866 00       		.byte	0
 6948 1867 4A       		.uleb128 0x4a
 6949 1868 0E010000 		.4byte	.LVL114
 6950 186c D8200000 		.4byte	0x20d8
ARM GAS  /tmp/ccTIydBQ.s 			page 183


 6951 1870 7C180000 		.4byte	0x187c
 6952 1874 35       		.uleb128 0x35
 6953 1875 01       		.uleb128 0x1
 6954 1876 50       		.byte	0x50
 6955 1877 03       		.uleb128 0x3
 6956 1878 91       		.byte	0x91
 6957 1879 A77F     		.sleb128 -89
 6958 187b 00       		.byte	0
 6959 187c 3E       		.uleb128 0x3e
 6960 187d 28010000 		.4byte	.LVL115
 6961 1881 92180000 		.4byte	0x1892
 6962 1885 35       		.uleb128 0x35
 6963 1886 01       		.uleb128 0x1
 6964 1887 50       		.byte	0x50
 6965 1888 03       		.uleb128 0x3
 6966 1889 0A       		.byte	0xa
 6967 188a 0351     		.2byte	0x5103
 6968 188c 35       		.uleb128 0x35
 6969 188d 01       		.uleb128 0x1
 6970 188e 51       		.byte	0x51
 6971 188f 01       		.uleb128 0x1
 6972 1890 30       		.byte	0x30
 6973 1891 00       		.byte	0
 6974 1892 32       		.uleb128 0x32
 6975 1893 44010000 		.4byte	.LVL117
 6976 1897 7E200000 		.4byte	0x207e
 6977 189b 32       		.uleb128 0x32
 6978 189c 4E010000 		.4byte	.LVL118
 6979 18a0 481D0000 		.4byte	0x1d48
 6980 18a4 3E       		.uleb128 0x3e
 6981 18a5 5E010000 		.4byte	.LVL119
 6982 18a9 B5180000 		.4byte	0x18b5
 6983 18ad 35       		.uleb128 0x35
 6984 18ae 01       		.uleb128 0x1
 6985 18af 50       		.byte	0x50
 6986 18b0 03       		.uleb128 0x3
 6987 18b1 0A       		.byte	0xa
 6988 18b2 0731     		.2byte	0x3107
 6989 18b4 00       		.byte	0
 6990 18b5 32       		.uleb128 0x32
 6991 18b6 72010000 		.4byte	.LVL120
 6992 18ba D51C0000 		.4byte	0x1cd5
 6993 18be 3E       		.uleb128 0x3e
 6994 18bf EE010000 		.4byte	.LVL125
 6995 18c3 D6180000 		.4byte	0x18d6
 6996 18c7 35       		.uleb128 0x35
 6997 18c8 01       		.uleb128 0x1
 6998 18c9 50       		.byte	0x50
 6999 18ca 03       		.uleb128 0x3
 7000 18cb 0A       		.byte	0xa
 7001 18cc 1011     		.2byte	0x1110
 7002 18ce 35       		.uleb128 0x35
 7003 18cf 01       		.uleb128 0x1
 7004 18d0 51       		.byte	0x51
 7005 18d1 03       		.uleb128 0x3
 7006 18d2 0A       		.byte	0xa
 7007 18d3 0002     		.2byte	0x200
ARM GAS  /tmp/ccTIydBQ.s 			page 184


 7008 18d5 00       		.byte	0
 7009 18d6 34       		.uleb128 0x34
 7010 18d7 40050000 		.4byte	.LVL195
 7011 18db 35       		.uleb128 0x35
 7012 18dc 01       		.uleb128 0x1
 7013 18dd 50       		.byte	0x50
 7014 18de 03       		.uleb128 0x3
 7015 18df 0A       		.byte	0xa
 7016 18e0 025B     		.2byte	0x5b02
 7017 18e2 35       		.uleb128 0x35
 7018 18e3 01       		.uleb128 0x1
 7019 18e4 51       		.byte	0x51
 7020 18e5 01       		.uleb128 0x1
 7021 18e6 30       		.byte	0x30
 7022 18e7 00       		.byte	0
 7023 18e8 00       		.byte	0
 7024 18e9 00       		.byte	0
 7025 18ea 31       		.uleb128 0x31
 7026 18eb A51C0000 		.4byte	0x1ca5
 7027 18ef 3A000000 		.4byte	.LBB342
 7028 18f3 D0020000 		.4byte	.Ldebug_ranges0+0x2d0
 7029 18f7 02       		.byte	0x2
 7030 18f8 3A07     		.2byte	0x73a
 7031 18fa 08190000 		.4byte	0x1908
 7032 18fe 32       		.uleb128 0x32
 7033 18ff 4A000000 		.4byte	.LVL103
 7034 1903 80250000 		.4byte	0x2580
 7035 1907 00       		.byte	0
 7036 1908 31       		.uleb128 0x31
 7037 1909 881C0000 		.4byte	0x1c88
 7038 190d 70000000 		.4byte	.LBB350
 7039 1911 F0020000 		.4byte	.Ldebug_ranges0+0x2f0
 7040 1915 02       		.byte	0x2
 7041 1916 2B07     		.2byte	0x72b
 7042 1918 261B0000 		.4byte	0x1b26
 7043 191c 45       		.uleb128 0x45
 7044 191d F0020000 		.4byte	.Ldebug_ranges0+0x2f0
 7045 1921 46       		.uleb128 0x46
 7046 1922 991C0000 		.4byte	0x1c99
 7047 1926 03       		.uleb128 0x3
 7048 1927 91       		.byte	0x91
 7049 1928 A77F     		.sleb128 -89
 7050 192a 31       		.uleb128 0x31
 7051 192b 4D1C0000 		.4byte	0x1c4d
 7052 192f 90000000 		.4byte	.LBB352
 7053 1933 18030000 		.4byte	.Ldebug_ranges0+0x318
 7054 1937 02       		.byte	0x2
 7055 1938 BA05     		.2byte	0x5ba
 7056 193a 161A0000 		.4byte	0x1a16
 7057 193e 45       		.uleb128 0x45
 7058 193f 18030000 		.4byte	.Ldebug_ranges0+0x318
 7059 1943 46       		.uleb128 0x46
 7060 1944 5E1C0000 		.4byte	0x1c5e
 7061 1948 03       		.uleb128 0x3
 7062 1949 91       		.byte	0x91
 7063 194a A87F     		.sleb128 -88
 7064 194c 33       		.uleb128 0x33
ARM GAS  /tmp/ccTIydBQ.s 			page 185


 7065 194d 1F220000 		.4byte	0x221f
 7066 1951 64020000 		.4byte	.LBB354
 7067 1955 56000000 		.4byte	.LBE354-.LBB354
 7068 1959 02       		.byte	0x2
 7069 195a 7706     		.2byte	0x677
 7070 195c A0190000 		.4byte	0x19a0
 7071 1960 49       		.uleb128 0x49
 7072 1961 64020000 		.4byte	.LBB355
 7073 1965 56000000 		.4byte	.LBE355-.LBB355
 7074 1969 48       		.uleb128 0x48
 7075 196a 30220000 		.4byte	0x2230
 7076 196e 07070000 		.4byte	.LLST64
 7077 1972 48       		.uleb128 0x48
 7078 1973 3C220000 		.4byte	0x223c
 7079 1977 36070000 		.4byte	.LLST65
 7080 197b 3E       		.uleb128 0x3e
 7081 197c 78020000 		.4byte	.LVL138
 7082 1980 91190000 		.4byte	0x1991
 7083 1984 35       		.uleb128 0x35
 7084 1985 01       		.uleb128 0x1
 7085 1986 50       		.byte	0x50
 7086 1987 03       		.uleb128 0x3
 7087 1988 0A       		.byte	0xa
 7088 1989 0111     		.2byte	0x1101
 7089 198b 35       		.uleb128 0x35
 7090 198c 01       		.uleb128 0x1
 7091 198d 51       		.byte	0x51
 7092 198e 01       		.uleb128 0x1
 7093 198f 30       		.byte	0x30
 7094 1990 00       		.byte	0
 7095 1991 34       		.uleb128 0x34
 7096 1992 98020000 		.4byte	.LVL141
 7097 1996 35       		.uleb128 0x35
 7098 1997 01       		.uleb128 0x1
 7099 1998 50       		.byte	0x50
 7100 1999 03       		.uleb128 0x3
 7101 199a 0A       		.byte	0xa
 7102 199b 3A05     		.2byte	0x53a
 7103 199d 00       		.byte	0
 7104 199e 00       		.byte	0
 7105 199f 00       		.byte	0
 7106 19a0 3E       		.uleb128 0x3e
 7107 19a1 4E020000 		.4byte	.LVL134
 7108 19a5 B6190000 		.4byte	0x19b6
 7109 19a9 35       		.uleb128 0x35
 7110 19aa 01       		.uleb128 0x1
 7111 19ab 50       		.byte	0x50
 7112 19ac 03       		.uleb128 0x3
 7113 19ad 0A       		.byte	0xa
 7114 19ae 0011     		.2byte	0x1100
 7115 19b0 35       		.uleb128 0x35
 7116 19b1 01       		.uleb128 0x1
 7117 19b2 51       		.byte	0x51
 7118 19b3 01       		.uleb128 0x1
 7119 19b4 30       		.byte	0x30
 7120 19b5 00       		.byte	0
 7121 19b6 3E       		.uleb128 0x3e
ARM GAS  /tmp/ccTIydBQ.s 			page 186


 7122 19b7 C6020000 		.4byte	.LVL144
 7123 19bb CC190000 		.4byte	0x19cc
 7124 19bf 35       		.uleb128 0x35
 7125 19c0 01       		.uleb128 0x1
 7126 19c1 50       		.byte	0x50
 7127 19c2 03       		.uleb128 0x3
 7128 19c3 0A       		.byte	0xa
 7129 19c4 3B11     		.2byte	0x113b
 7130 19c6 35       		.uleb128 0x35
 7131 19c7 01       		.uleb128 0x1
 7132 19c8 51       		.byte	0x51
 7133 19c9 01       		.uleb128 0x1
 7134 19ca 30       		.byte	0x30
 7135 19cb 00       		.byte	0
 7136 19cc 32       		.uleb128 0x32
 7137 19cd D0020000 		.4byte	.LVL145
 7138 19d1 8B200000 		.4byte	0x208b
 7139 19d5 32       		.uleb128 0x32
 7140 19d6 DA020000 		.4byte	.LVL146
 7141 19da F51E0000 		.4byte	0x1ef5
 7142 19de 4A       		.uleb128 0x4a
 7143 19df E8020000 		.4byte	.LVL147
 7144 19e3 98200000 		.4byte	0x2098
 7145 19e7 F3190000 		.4byte	0x19f3
 7146 19eb 35       		.uleb128 0x35
 7147 19ec 01       		.uleb128 0x1
 7148 19ed 50       		.byte	0x50
 7149 19ee 03       		.uleb128 0x3
 7150 19ef 91       		.byte	0x91
 7151 19f0 A87F     		.sleb128 -88
 7152 19f2 00       		.byte	0
 7153 19f3 3E       		.uleb128 0x3e
 7154 19f4 FE020000 		.4byte	.LVL148
 7155 19f8 0B1A0000 		.4byte	0x1a0b
 7156 19fc 35       		.uleb128 0x35
 7157 19fd 01       		.uleb128 0x1
 7158 19fe 50       		.byte	0x50
 7159 19ff 03       		.uleb128 0x3
 7160 1a00 0A       		.byte	0xa
 7161 1a01 1011     		.2byte	0x1110
 7162 1a03 35       		.uleb128 0x35
 7163 1a04 01       		.uleb128 0x1
 7164 1a05 51       		.byte	0x51
 7165 1a06 03       		.uleb128 0x3
 7166 1a07 0A       		.byte	0xa
 7167 1a08 0002     		.2byte	0x200
 7168 1a0a 00       		.byte	0
 7169 1a0b 32       		.uleb128 0x32
 7170 1a0c 08030000 		.4byte	.LVL149
 7171 1a10 101D0000 		.4byte	0x1d10
 7172 1a14 00       		.byte	0
 7173 1a15 00       		.byte	0
 7174 1a16 33       		.uleb128 0x33
 7175 1a17 AE1C0000 		.4byte	0x1cae
 7176 1a1b EE000000 		.4byte	.LBB358
 7177 1a1f 18000000 		.4byte	.LBE358-.LBB358
 7178 1a23 02       		.byte	0x2
ARM GAS  /tmp/ccTIydBQ.s 			page 187


 7179 1a24 E605     		.2byte	0x5e6
 7180 1a26 331A0000 		.4byte	0x1a33
 7181 1a2a 47       		.uleb128 0x47
 7182 1a2b 04010000 		.4byte	.LVL113
 7183 1a2f 02       		.uleb128 0x2
 7184 1a30 76       		.byte	0x76
 7185 1a31 00       		.sleb128 0
 7186 1a32 00       		.byte	0
 7187 1a33 31       		.uleb128 0x31
 7188 1a34 B4210000 		.4byte	0x21b4
 7189 1a38 06020000 		.4byte	.LBB360
 7190 1a3c 38030000 		.4byte	.Ldebug_ranges0+0x338
 7191 1a40 02       		.byte	0x2
 7192 1a41 B605     		.2byte	0x5b6
 7193 1a43 A61A0000 		.4byte	0x1aa6
 7194 1a47 3B       		.uleb128 0x3b
 7195 1a48 C5210000 		.4byte	0x21c5
 7196 1a4c 54070000 		.4byte	.LLST66
 7197 1a50 45       		.uleb128 0x45
 7198 1a51 38030000 		.4byte	.Ldebug_ranges0+0x338
 7199 1a55 48       		.uleb128 0x48
 7200 1a56 D0210000 		.4byte	0x21d0
 7201 1a5a 69070000 		.4byte	.LLST67
 7202 1a5e 48       		.uleb128 0x48
 7203 1a5f DC210000 		.4byte	0x21dc
 7204 1a63 9D070000 		.4byte	.LLST68
 7205 1a67 48       		.uleb128 0x48
 7206 1a68 E8210000 		.4byte	0x21e8
 7207 1a6c E7070000 		.4byte	.LLST69
 7208 1a70 3E       		.uleb128 0x3e
 7209 1a71 12020000 		.4byte	.LVL128
 7210 1a75 811A0000 		.4byte	0x1a81
 7211 1a79 35       		.uleb128 0x35
 7212 1a7a 01       		.uleb128 0x1
 7213 1a7b 50       		.byte	0x50
 7214 1a7c 03       		.uleb128 0x3
 7215 1a7d 0A       		.byte	0xa
 7216 1a7e 2911     		.2byte	0x1129
 7217 1a80 00       		.byte	0
 7218 1a81 3E       		.uleb128 0x3e
 7219 1a82 36020000 		.4byte	.LVL132
 7220 1a86 971A0000 		.4byte	0x1a97
 7221 1a8a 35       		.uleb128 0x35
 7222 1a8b 01       		.uleb128 0x1
 7223 1a8c 50       		.byte	0x50
 7224 1a8d 03       		.uleb128 0x3
 7225 1a8e 0A       		.byte	0xa
 7226 1a8f 3711     		.2byte	0x1137
 7227 1a91 35       		.uleb128 0x35
 7228 1a92 01       		.uleb128 0x1
 7229 1a93 51       		.byte	0x51
 7230 1a94 01       		.uleb128 0x1
 7231 1a95 30       		.byte	0x30
 7232 1a96 00       		.byte	0
 7233 1a97 34       		.uleb128 0x34
 7234 1a98 C0040000 		.4byte	.LVL186
 7235 1a9c 35       		.uleb128 0x35
ARM GAS  /tmp/ccTIydBQ.s 			page 188


 7236 1a9d 01       		.uleb128 0x1
 7237 1a9e 50       		.byte	0x50
 7238 1a9f 03       		.uleb128 0x3
 7239 1aa0 0A       		.byte	0xa
 7240 1aa1 3A05     		.2byte	0x53a
 7241 1aa3 00       		.byte	0
 7242 1aa4 00       		.byte	0
 7243 1aa5 00       		.byte	0
 7244 1aa6 3E       		.uleb128 0x3e
 7245 1aa7 8E000000 		.4byte	.LVL109
 7246 1aab BD1A0000 		.4byte	0x1abd
 7247 1aaf 35       		.uleb128 0x35
 7248 1ab0 01       		.uleb128 0x1
 7249 1ab1 50       		.byte	0x50
 7250 1ab2 03       		.uleb128 0x3
 7251 1ab3 0A       		.byte	0xa
 7252 1ab4 0011     		.2byte	0x1100
 7253 1ab6 35       		.uleb128 0x35
 7254 1ab7 01       		.uleb128 0x1
 7255 1ab8 51       		.byte	0x51
 7256 1ab9 02       		.uleb128 0x2
 7257 1aba 75       		.byte	0x75
 7258 1abb 00       		.sleb128 0
 7259 1abc 00       		.byte	0
 7260 1abd 4A       		.uleb128 0x4a
 7261 1abe B2000000 		.4byte	.LVL110
 7262 1ac2 D8200000 		.4byte	0x20d8
 7263 1ac6 D21A0000 		.4byte	0x1ad2
 7264 1aca 35       		.uleb128 0x35
 7265 1acb 01       		.uleb128 0x1
 7266 1acc 50       		.byte	0x50
 7267 1acd 03       		.uleb128 0x3
 7268 1ace 91       		.byte	0x91
 7269 1acf A77F     		.sleb128 -89
 7270 1ad1 00       		.byte	0
 7271 1ad2 3E       		.uleb128 0x3e
 7272 1ad3 D8000000 		.4byte	.LVL111
 7273 1ad7 EA1A0000 		.4byte	0x1aea
 7274 1adb 35       		.uleb128 0x35
 7275 1adc 01       		.uleb128 0x1
 7276 1add 50       		.byte	0x50
 7277 1ade 03       		.uleb128 0x3
 7278 1adf 0A       		.byte	0xa
 7279 1ae0 1011     		.2byte	0x1110
 7280 1ae2 35       		.uleb128 0x35
 7281 1ae3 01       		.uleb128 0x1
 7282 1ae4 51       		.byte	0x51
 7283 1ae5 03       		.uleb128 0x3
 7284 1ae6 0A       		.byte	0xa
 7285 1ae7 0002     		.2byte	0x200
 7286 1ae9 00       		.byte	0
 7287 1aea 32       		.uleb128 0x32
 7288 1aeb E8000000 		.4byte	.LVL112
 7289 1aef 101D0000 		.4byte	0x1d10
 7290 1af3 3E       		.uleb128 0x3e
 7291 1af4 E8040000 		.4byte	.LVL189
 7292 1af8 091B0000 		.4byte	0x1b09
ARM GAS  /tmp/ccTIydBQ.s 			page 189


 7293 1afc 35       		.uleb128 0x35
 7294 1afd 01       		.uleb128 0x1
 7295 1afe 50       		.byte	0x50
 7296 1aff 03       		.uleb128 0x3
 7297 1b00 0A       		.byte	0xa
 7298 1b01 3B11     		.2byte	0x113b
 7299 1b03 35       		.uleb128 0x35
 7300 1b04 01       		.uleb128 0x1
 7301 1b05 51       		.byte	0x51
 7302 1b06 01       		.uleb128 0x1
 7303 1b07 30       		.byte	0x30
 7304 1b08 00       		.byte	0
 7305 1b09 32       		.uleb128 0x32
 7306 1b0a FC040000 		.4byte	.LVL190
 7307 1b0e 8B200000 		.4byte	0x208b
 7308 1b12 32       		.uleb128 0x32
 7309 1b13 06050000 		.4byte	.LVL191
 7310 1b17 481D0000 		.4byte	0x1d48
 7311 1b1b 32       		.uleb128 0x32
 7312 1b1c 0A050000 		.4byte	.LVL192
 7313 1b20 D51C0000 		.4byte	0x1cd5
 7314 1b24 00       		.byte	0
 7315 1b25 00       		.byte	0
 7316 1b26 4C       		.uleb128 0x4c
 7317 1b27 A51C0000 		.4byte	0x1ca5
 7318 1b2b 98000000 		.4byte	.LBB369
 7319 1b2f 50030000 		.4byte	.Ldebug_ranges0+0x350
 7320 1b33 02       		.byte	0x2
 7321 1b34 2E07     		.2byte	0x72e
 7322 1b36 00       		.byte	0
 7323 1b37 4D       		.uleb128 0x4d
 7324 1b38 25010000 		.4byte	.LASF296
 7325 1b3c 02       		.byte	0x2
 7326 1b3d 1407     		.2byte	0x714
 7327 1b3f A2000000 		.4byte	0xa2
 7328 1b43 00000000 		.4byte	.LFB259
 7329 1b47 04000000 		.4byte	.LFE259-.LFB259
 7330 1b4b 01       		.uleb128 0x1
 7331 1b4c 9C       		.byte	0x9c
 7332 1b4d 40       		.uleb128 0x40
 7333 1b4e DC030000 		.4byte	.LASF244
 7334 1b52 02       		.byte	0x2
 7335 1b53 EF06     		.2byte	0x6ef
 7336 1b55 00000000 		.4byte	.LFB258
 7337 1b59 68000000 		.4byte	.LFE258-.LFB258
 7338 1b5d 01       		.uleb128 0x1
 7339 1b5e 9C       		.byte	0x9c
 7340 1b5f 1D1C0000 		.4byte	0x1c1d
 7341 1b63 30       		.uleb128 0x30
 7342 1b64 65090000 		.4byte	.LASF245
 7343 1b68 02       		.byte	0x2
 7344 1b69 EF06     		.2byte	0x6ef
 7345 1b6b 1D1C0000 		.4byte	0x1c1d
 7346 1b6f 05080000 		.4byte	.LLST47
 7347 1b73 30       		.uleb128 0x30
 7348 1b74 B70D0000 		.4byte	.LASF246
 7349 1b78 02       		.byte	0x2
ARM GAS  /tmp/ccTIydBQ.s 			page 190


 7350 1b79 EF06     		.2byte	0x6ef
 7351 1b7b 1D1C0000 		.4byte	0x1c1d
 7352 1b7f 31080000 		.4byte	.LLST48
 7353 1b83 4E       		.uleb128 0x4e
 7354 1b84 88010000 		.4byte	.Ldebug_ranges0+0x188
 7355 1b88 021C0000 		.4byte	0x1c02
 7356 1b8c 3A       		.uleb128 0x3a
 7357 1b8d 76000000 		.4byte	.LASF216
 7358 1b91 02       		.byte	0x2
 7359 1b92 F106     		.2byte	0x6f1
 7360 1b94 2C000000 		.4byte	0x2c
 7361 1b98 68080000 		.4byte	.LLST49
 7362 1b9c 45       		.uleb128 0x45
 7363 1b9d 88010000 		.4byte	.Ldebug_ranges0+0x188
 7364 1ba1 3A       		.uleb128 0x3a
 7365 1ba2 1A0A0000 		.4byte	.LASF247
 7366 1ba6 02       		.byte	0x2
 7367 1ba7 F306     		.2byte	0x6f3
 7368 1ba9 B30E0000 		.4byte	0xeb3
 7369 1bad 94080000 		.4byte	.LLST50
 7370 1bb1 43       		.uleb128 0x43
 7371 1bb2 F8220000 		.4byte	0x22f8
 7372 1bb6 14000000 		.4byte	.LBB223
 7373 1bba A8010000 		.4byte	.Ldebug_ranges0+0x1a8
 7374 1bbe 02       		.byte	0x2
 7375 1bbf F806     		.2byte	0x6f8
 7376 1bc1 3B       		.uleb128 0x3b
 7377 1bc2 0F230000 		.4byte	0x230f
 7378 1bc6 BC080000 		.4byte	.LLST51
 7379 1bca 3B       		.uleb128 0x3b
 7380 1bcb 04230000 		.4byte	0x2304
 7381 1bcf DC080000 		.4byte	.LLST52
 7382 1bd3 4A       		.uleb128 0x4a
 7383 1bd4 1C000000 		.4byte	.LVL91
 7384 1bd8 C0250000 		.4byte	0x25c0
 7385 1bdc EB1B0000 		.4byte	0x1beb
 7386 1be0 35       		.uleb128 0x35
 7387 1be1 01       		.uleb128 0x1
 7388 1be2 51       		.byte	0x51
 7389 1be3 01       		.uleb128 0x1
 7390 1be4 31       		.byte	0x31
 7391 1be5 35       		.uleb128 0x35
 7392 1be6 01       		.uleb128 0x1
 7393 1be7 52       		.byte	0x52
 7394 1be8 01       		.uleb128 0x1
 7395 1be9 30       		.byte	0x30
 7396 1bea 00       		.byte	0
 7397 1beb 3C       		.uleb128 0x3c
 7398 1bec 3A000000 		.4byte	.LVL94
 7399 1bf0 C0250000 		.4byte	0x25c0
 7400 1bf4 35       		.uleb128 0x35
 7401 1bf5 01       		.uleb128 0x1
 7402 1bf6 51       		.byte	0x51
 7403 1bf7 01       		.uleb128 0x1
 7404 1bf8 31       		.byte	0x31
 7405 1bf9 35       		.uleb128 0x35
 7406 1bfa 01       		.uleb128 0x1
ARM GAS  /tmp/ccTIydBQ.s 			page 191


 7407 1bfb 52       		.byte	0x52
 7408 1bfc 01       		.uleb128 0x1
 7409 1bfd 30       		.byte	0x30
 7410 1bfe 00       		.byte	0
 7411 1bff 00       		.byte	0
 7412 1c00 00       		.byte	0
 7413 1c01 00       		.byte	0
 7414 1c02 32       		.uleb128 0x32
 7415 1c03 4E000000 		.4byte	.LVL96
 7416 1c07 CB250000 		.4byte	0x25cb
 7417 1c0b 4F       		.uleb128 0x4f
 7418 1c0c 58000000 		.4byte	.LVL98
 7419 1c10 D6250000 		.4byte	0x25d6
 7420 1c14 35       		.uleb128 0x35
 7421 1c15 01       		.uleb128 0x1
 7422 1c16 50       		.byte	0x50
 7423 1c17 03       		.uleb128 0x3
 7424 1c18 F3       		.byte	0xf3
 7425 1c19 01       		.uleb128 0x1
 7426 1c1a 51       		.byte	0x51
 7427 1c1b 00       		.byte	0
 7428 1c1c 00       		.byte	0
 7429 1c1d 13       		.uleb128 0x13
 7430 1c1e 04       		.byte	0x4
 7431 1c1f AD090000 		.4byte	0x9ad
 7432 1c23 50       		.uleb128 0x50
 7433 1c24 A80B0000 		.4byte	.LASF250
 7434 1c28 02       		.byte	0x2
 7435 1c29 A306     		.2byte	0x6a3
 7436 1c2b 29090000 		.4byte	0x929
 7437 1c2f 01       		.byte	0x1
 7438 1c30 4D1C0000 		.4byte	0x1c4d
 7439 1c34 38       		.uleb128 0x38
 7440 1c35 89000000 		.4byte	.LASF248
 7441 1c39 02       		.byte	0x2
 7442 1c3a A506     		.2byte	0x6a5
 7443 1c3c A2000000 		.4byte	0xa2
 7444 1c40 38       		.uleb128 0x38
 7445 1c41 3B0F0000 		.4byte	.LASF249
 7446 1c45 02       		.byte	0x2
 7447 1c46 DE06     		.2byte	0x6de
 7448 1c48 A2000000 		.4byte	0xa2
 7449 1c4c 00       		.byte	0
 7450 1c4d 50       		.uleb128 0x50
 7451 1c4e A2030000 		.4byte	.LASF251
 7452 1c52 02       		.byte	0x2
 7453 1c53 6E06     		.2byte	0x66e
 7454 1c55 29090000 		.4byte	0x929
 7455 1c59 01       		.byte	0x1
 7456 1c5a 6B1C0000 		.4byte	0x1c6b
 7457 1c5e 38       		.uleb128 0x38
 7458 1c5f 89000000 		.4byte	.LASF248
 7459 1c63 02       		.byte	0x2
 7460 1c64 7006     		.2byte	0x670
 7461 1c66 A2000000 		.4byte	0xa2
 7462 1c6a 00       		.byte	0
 7463 1c6b 50       		.uleb128 0x50
ARM GAS  /tmp/ccTIydBQ.s 			page 192


 7464 1c6c F7040000 		.4byte	.LASF252
 7465 1c70 02       		.byte	0x2
 7466 1c71 F405     		.2byte	0x5f4
 7467 1c73 29090000 		.4byte	0x929
 7468 1c77 01       		.byte	0x1
 7469 1c78 881C0000 		.4byte	0x1c88
 7470 1c7c 51       		.uleb128 0x51
 7471 1c7d 763200   		.ascii	"v2\000"
 7472 1c80 02       		.byte	0x2
 7473 1c81 F605     		.2byte	0x5f6
 7474 1c83 A2000000 		.4byte	0xa2
 7475 1c87 00       		.byte	0
 7476 1c88 50       		.uleb128 0x50
 7477 1c89 43010000 		.4byte	.LASF253
 7478 1c8d 02       		.byte	0x2
 7479 1c8e 9B05     		.2byte	0x59b
 7480 1c90 29090000 		.4byte	0x929
 7481 1c94 01       		.byte	0x1
 7482 1c95 A51C0000 		.4byte	0x1ca5
 7483 1c99 51       		.uleb128 0x51
 7484 1c9a 763200   		.ascii	"v2\000"
 7485 1c9d 02       		.byte	0x2
 7486 1c9e 9D05     		.2byte	0x59d
 7487 1ca0 A2000000 		.4byte	0xa2
 7488 1ca4 00       		.byte	0
 7489 1ca5 52       		.uleb128 0x52
 7490 1ca6 620F0000 		.4byte	.LASF254
 7491 1caa 02       		.byte	0x2
 7492 1cab 8905     		.2byte	0x589
 7493 1cad 01       		.byte	0x1
 7494 1cae 52       		.uleb128 0x52
 7495 1caf 57020000 		.4byte	.LASF255
 7496 1cb3 02       		.byte	0x2
 7497 1cb4 8105     		.2byte	0x581
 7498 1cb6 01       		.byte	0x1
 7499 1cb7 50       		.uleb128 0x50
 7500 1cb8 A0070000 		.4byte	.LASF256
 7501 1cbc 02       		.byte	0x2
 7502 1cbd 3D05     		.2byte	0x53d
 7503 1cbf 050B0000 		.4byte	0xb05
 7504 1cc3 01       		.byte	0x1
 7505 1cc4 D51C0000 		.4byte	0x1cd5
 7506 1cc8 42       		.uleb128 0x42
 7507 1cc9 76000000 		.4byte	.LASF216
 7508 1ccd 02       		.byte	0x2
 7509 1cce 3D05     		.2byte	0x53d
 7510 1cd0 A2000000 		.4byte	0xa2
 7511 1cd4 00       		.byte	0
 7512 1cd5 50       		.uleb128 0x50
 7513 1cd6 32080000 		.4byte	.LASF257
 7514 1cda 02       		.byte	0x2
 7515 1cdb 0405     		.2byte	0x504
 7516 1cdd 29090000 		.4byte	0x929
 7517 1ce1 01       		.byte	0x1
 7518 1ce2 F31C0000 		.4byte	0x1cf3
 7519 1ce6 51       		.uleb128 0x51
 7520 1ce7 73637200 		.ascii	"scr\000"
ARM GAS  /tmp/ccTIydBQ.s 			page 193


 7521 1ceb 02       		.byte	0x2
 7522 1cec 0605     		.2byte	0x506
 7523 1cee F31C0000 		.4byte	0x1cf3
 7524 1cf2 00       		.byte	0
 7525 1cf3 0D       		.uleb128 0xd
 7526 1cf4 A2000000 		.4byte	0xa2
 7527 1cf8 031D0000 		.4byte	0x1d03
 7528 1cfc 0E       		.uleb128 0xe
 7529 1cfd E4000000 		.4byte	0xe4
 7530 1d01 07       		.byte	0x7
 7531 1d02 00       		.byte	0
 7532 1d03 53       		.uleb128 0x53
 7533 1d04 5C090000 		.4byte	.LASF264
 7534 1d08 02       		.byte	0x2
 7535 1d09 E904     		.2byte	0x4e9
 7536 1d0b 29090000 		.4byte	0x929
 7537 1d0f 01       		.byte	0x1
 7538 1d10 54       		.uleb128 0x54
 7539 1d11 1A080000 		.4byte	.LASF281
 7540 1d15 02       		.byte	0x2
 7541 1d16 8104     		.2byte	0x481
 7542 1d18 29090000 		.4byte	0x929
 7543 1d1c 00000000 		.4byte	.LFB248
 7544 1d20 5C000000 		.4byte	.LFE248-.LFB248
 7545 1d24 01       		.uleb128 0x1
 7546 1d25 9C       		.byte	0x9c
 7547 1d26 481D0000 		.4byte	0x1d48
 7548 1d2a 3A       		.uleb128 0x3a
 7549 1d2b 36040000 		.4byte	.LASF258
 7550 1d2f 02       		.byte	0x2
 7551 1d30 8304     		.2byte	0x483
 7552 1d32 CD000000 		.4byte	0xcd
 7553 1d36 FA080000 		.4byte	.LLST35
 7554 1d3a 34       		.uleb128 0x34
 7555 1d3b 3E000000 		.4byte	.LVL35
 7556 1d3f 35       		.uleb128 0x35
 7557 1d40 01       		.uleb128 0x1
 7558 1d41 50       		.byte	0x50
 7559 1d42 03       		.uleb128 0x3
 7560 1d43 0A       		.byte	0xa
 7561 1d44 0D11     		.2byte	0x110d
 7562 1d46 00       		.byte	0
 7563 1d47 00       		.byte	0
 7564 1d48 55       		.uleb128 0x55
 7565 1d49 67060000 		.4byte	.LASF262
 7566 1d4d 02       		.byte	0x2
 7567 1d4e 5504     		.2byte	0x455
 7568 1d50 00000000 		.4byte	.LFB247
 7569 1d54 90000000 		.4byte	.LFE247-.LFB247
 7570 1d58 01       		.uleb128 0x1
 7571 1d59 9C       		.byte	0x9c
 7572 1d5a F51E0000 		.4byte	0x1ef5
 7573 1d5e 3A       		.uleb128 0x3a
 7574 1d5f 84080000 		.4byte	.LASF259
 7575 1d63 02       		.byte	0x2
 7576 1d64 5704     		.2byte	0x457
 7577 1d66 CD000000 		.4byte	0xcd
ARM GAS  /tmp/ccTIydBQ.s 			page 194


 7578 1d6a 39090000 		.4byte	.LLST13
 7579 1d6e 39       		.uleb128 0x39
 7580 1d6f 6D756C00 		.ascii	"mul\000"
 7581 1d73 02       		.byte	0x2
 7582 1d74 5804     		.2byte	0x458
 7583 1d76 CD000000 		.4byte	0xcd
 7584 1d7a 75090000 		.4byte	.LLST14
 7585 1d7e 38       		.uleb128 0x38
 7586 1d7f 3A0B0000 		.4byte	.LASF260
 7587 1d83 02       		.byte	0x2
 7588 1d84 5904     		.2byte	0x459
 7589 1d86 CD000000 		.4byte	0xcd
 7590 1d8a 4E       		.uleb128 0x4e
 7591 1d8b 70000000 		.4byte	.Ldebug_ranges0+0x70
 7592 1d8f 641E0000 		.4byte	0x1e64
 7593 1d93 3A       		.uleb128 0x3a
 7594 1d94 9F090000 		.4byte	.LASF261
 7595 1d98 02       		.byte	0x2
 7596 1d99 7304     		.2byte	0x473
 7597 1d9b CD000000 		.4byte	0xcd
 7598 1d9f B5090000 		.4byte	.LLST19
 7599 1da3 31       		.uleb128 0x31
 7600 1da4 AA220000 		.4byte	0x22aa
 7601 1da8 30000000 		.4byte	.LBB148
 7602 1dac 88000000 		.4byte	.Ldebug_ranges0+0x88
 7603 1db0 02       		.byte	0x2
 7604 1db1 7304     		.2byte	0x473
 7605 1db3 EB1D0000 		.4byte	0x1deb
 7606 1db7 3B       		.uleb128 0x3b
 7607 1db8 DF220000 		.4byte	0x22df
 7608 1dbc 890A0000 		.4byte	.LLST20
 7609 1dc0 3B       		.uleb128 0x3b
 7610 1dc1 D3220000 		.4byte	0x22d3
 7611 1dc5 9D0A0000 		.4byte	.LLST21
 7612 1dc9 3B       		.uleb128 0x3b
 7613 1dca C7220000 		.4byte	0x22c7
 7614 1dce B20A0000 		.4byte	.LLST22
 7615 1dd2 3B       		.uleb128 0x3b
 7616 1dd3 BB220000 		.4byte	0x22bb
 7617 1dd7 C70A0000 		.4byte	.LLST23
 7618 1ddb 45       		.uleb128 0x45
 7619 1ddc 88000000 		.4byte	.Ldebug_ranges0+0x88
 7620 1de0 48       		.uleb128 0x48
 7621 1de1 EB220000 		.4byte	0x22eb
 7622 1de5 DC0A0000 		.4byte	.LLST24
 7623 1de9 00       		.byte	0
 7624 1dea 00       		.byte	0
 7625 1deb 31       		.uleb128 0x31
 7626 1dec AA220000 		.4byte	0x22aa
 7627 1df0 36000000 		.4byte	.LBB153
 7628 1df4 B0000000 		.4byte	.Ldebug_ranges0+0xb0
 7629 1df8 02       		.byte	0x2
 7630 1df9 7404     		.2byte	0x474
 7631 1dfb 331E0000 		.4byte	0x1e33
 7632 1dff 3B       		.uleb128 0x3b
 7633 1e00 DF220000 		.4byte	0x22df
 7634 1e04 230B0000 		.4byte	.LLST25
ARM GAS  /tmp/ccTIydBQ.s 			page 195


 7635 1e08 3B       		.uleb128 0x3b
 7636 1e09 D3220000 		.4byte	0x22d3
 7637 1e0d 370B0000 		.4byte	.LLST26
 7638 1e11 3B       		.uleb128 0x3b
 7639 1e12 C7220000 		.4byte	0x22c7
 7640 1e16 4C0B0000 		.4byte	.LLST27
 7641 1e1a 3B       		.uleb128 0x3b
 7642 1e1b BB220000 		.4byte	0x22bb
 7643 1e1f 610B0000 		.4byte	.LLST28
 7644 1e23 45       		.uleb128 0x45
 7645 1e24 B0000000 		.4byte	.Ldebug_ranges0+0xb0
 7646 1e28 48       		.uleb128 0x48
 7647 1e29 EB220000 		.4byte	0x22eb
 7648 1e2d 760B0000 		.4byte	.LLST29
 7649 1e31 00       		.byte	0
 7650 1e32 00       		.byte	0
 7651 1e33 43       		.uleb128 0x43
 7652 1e34 AA220000 		.4byte	0x22aa
 7653 1e38 42000000 		.4byte	.LBB160
 7654 1e3c D8000000 		.4byte	.Ldebug_ranges0+0xd8
 7655 1e40 02       		.byte	0x2
 7656 1e41 7604     		.2byte	0x476
 7657 1e43 56       		.uleb128 0x56
 7658 1e44 DF220000 		.4byte	0x22df
 7659 1e48 56       		.uleb128 0x56
 7660 1e49 D3220000 		.4byte	0x22d3
 7661 1e4d 56       		.uleb128 0x56
 7662 1e4e C7220000 		.4byte	0x22c7
 7663 1e52 56       		.uleb128 0x56
 7664 1e53 BB220000 		.4byte	0x22bb
 7665 1e57 45       		.uleb128 0x45
 7666 1e58 D8000000 		.4byte	.Ldebug_ranges0+0xd8
 7667 1e5c 57       		.uleb128 0x57
 7668 1e5d EB220000 		.4byte	0x22eb
 7669 1e61 00       		.byte	0
 7670 1e62 00       		.byte	0
 7671 1e63 00       		.byte	0
 7672 1e64 33       		.uleb128 0x33
 7673 1e65 AA220000 		.4byte	0x22aa
 7674 1e69 0A000000 		.4byte	.LBB145
 7675 1e6d 02000000 		.4byte	.LBE145-.LBB145
 7676 1e71 02       		.byte	0x2
 7677 1e72 5C04     		.2byte	0x45c
 7678 1e74 AC1E0000 		.4byte	0x1eac
 7679 1e78 3B       		.uleb128 0x3b
 7680 1e79 DF220000 		.4byte	0x22df
 7681 1e7d 8D0B0000 		.4byte	.LLST15
 7682 1e81 3B       		.uleb128 0x3b
 7683 1e82 D3220000 		.4byte	0x22d3
 7684 1e86 A10B0000 		.4byte	.LLST16
 7685 1e8a 3B       		.uleb128 0x3b
 7686 1e8b C7220000 		.4byte	0x22c7
 7687 1e8f B60B0000 		.4byte	.LLST17
 7688 1e93 3B       		.uleb128 0x3b
 7689 1e94 BB220000 		.4byte	0x22bb
 7690 1e98 CB0B0000 		.4byte	.LLST18
 7691 1e9c 49       		.uleb128 0x49
ARM GAS  /tmp/ccTIydBQ.s 			page 196


 7692 1e9d 0A000000 		.4byte	.LBB146
 7693 1ea1 02000000 		.4byte	.LBE146-.LBB146
 7694 1ea5 57       		.uleb128 0x57
 7695 1ea6 EB220000 		.4byte	0x22eb
 7696 1eaa 00       		.byte	0
 7697 1eab 00       		.byte	0
 7698 1eac 58       		.uleb128 0x58
 7699 1ead AA220000 		.4byte	0x22aa
 7700 1eb1 68000000 		.4byte	.LBB169
 7701 1eb5 12000000 		.4byte	.LBE169-.LBB169
 7702 1eb9 02       		.byte	0x2
 7703 1eba 7004     		.2byte	0x470
 7704 1ebc 3B       		.uleb128 0x3b
 7705 1ebd DF220000 		.4byte	0x22df
 7706 1ec1 E00B0000 		.4byte	.LLST30
 7707 1ec5 3B       		.uleb128 0x3b
 7708 1ec6 D3220000 		.4byte	0x22d3
 7709 1eca F40B0000 		.4byte	.LLST31
 7710 1ece 3B       		.uleb128 0x3b
 7711 1ecf C7220000 		.4byte	0x22c7
 7712 1ed3 090C0000 		.4byte	.LLST32
 7713 1ed7 3B       		.uleb128 0x3b
 7714 1ed8 BB220000 		.4byte	0x22bb
 7715 1edc 1E0C0000 		.4byte	.LLST33
 7716 1ee0 49       		.uleb128 0x49
 7717 1ee1 68000000 		.4byte	.LBB170
 7718 1ee5 12000000 		.4byte	.LBE170-.LBB170
 7719 1ee9 48       		.uleb128 0x48
 7720 1eea EB220000 		.4byte	0x22eb
 7721 1eee 330C0000 		.4byte	.LLST34
 7722 1ef2 00       		.byte	0
 7723 1ef3 00       		.byte	0
 7724 1ef4 00       		.byte	0
 7725 1ef5 55       		.uleb128 0x55
 7726 1ef6 80020000 		.4byte	.LASF263
 7727 1efa 02       		.byte	0x2
 7728 1efb 1904     		.2byte	0x419
 7729 1efd 00000000 		.4byte	.LFB246
 7730 1f01 A8000000 		.4byte	.LFE246-.LFB246
 7731 1f05 01       		.uleb128 0x1
 7732 1f06 9C       		.byte	0x9c
 7733 1f07 7E200000 		.4byte	0x207e
 7734 1f0b 3A       		.uleb128 0x3a
 7735 1f0c 84080000 		.4byte	.LASF259
 7736 1f10 02       		.byte	0x2
 7737 1f11 1B04     		.2byte	0x41b
 7738 1f13 CD000000 		.4byte	0xcd
 7739 1f17 760C0000 		.4byte	.LLST1
 7740 1f1b 39       		.uleb128 0x39
 7741 1f1c 6D756C00 		.ascii	"mul\000"
 7742 1f20 02       		.byte	0x2
 7743 1f21 1C04     		.2byte	0x41c
 7744 1f23 CD000000 		.4byte	0xcd
 7745 1f27 B20C0000 		.4byte	.LLST2
 7746 1f2b 38       		.uleb128 0x38
 7747 1f2c 3A0B0000 		.4byte	.LASF260
 7748 1f30 02       		.byte	0x2
ARM GAS  /tmp/ccTIydBQ.s 			page 197


 7749 1f31 1D04     		.2byte	0x41d
 7750 1f33 CD000000 		.4byte	0xcd
 7751 1f37 59       		.uleb128 0x59
 7752 1f38 5E000000 		.4byte	.LBB132
 7753 1f3c 20000000 		.4byte	.LBE132-.LBB132
 7754 1f40 CD1F0000 		.4byte	0x1fcd
 7755 1f44 3A       		.uleb128 0x3a
 7756 1f45 9F090000 		.4byte	.LASF261
 7757 1f49 02       		.byte	0x2
 7758 1f4a 4B04     		.2byte	0x44b
 7759 1f4c CD000000 		.4byte	0xcd
 7760 1f50 F20C0000 		.4byte	.LLST7
 7761 1f54 31       		.uleb128 0x31
 7762 1f55 AA220000 		.4byte	0x22aa
 7763 1f59 5E000000 		.4byte	.LBB133
 7764 1f5d 30000000 		.4byte	.Ldebug_ranges0+0x30
 7765 1f61 02       		.byte	0x2
 7766 1f62 4C04     		.2byte	0x44c
 7767 1f64 9C1F0000 		.4byte	0x1f9c
 7768 1f68 3B       		.uleb128 0x3b
 7769 1f69 DF220000 		.4byte	0x22df
 7770 1f6d 6C0D0000 		.4byte	.LLST8
 7771 1f71 3B       		.uleb128 0x3b
 7772 1f72 D3220000 		.4byte	0x22d3
 7773 1f76 800D0000 		.4byte	.LLST9
 7774 1f7a 3B       		.uleb128 0x3b
 7775 1f7b C7220000 		.4byte	0x22c7
 7776 1f7f 950D0000 		.4byte	.LLST10
 7777 1f83 3B       		.uleb128 0x3b
 7778 1f84 BB220000 		.4byte	0x22bb
 7779 1f88 AA0D0000 		.4byte	.LLST11
 7780 1f8c 45       		.uleb128 0x45
 7781 1f8d 30000000 		.4byte	.Ldebug_ranges0+0x30
 7782 1f91 48       		.uleb128 0x48
 7783 1f92 EB220000 		.4byte	0x22eb
 7784 1f96 BF0D0000 		.4byte	.LLST12
 7785 1f9a 00       		.byte	0
 7786 1f9b 00       		.byte	0
 7787 1f9c 43       		.uleb128 0x43
 7788 1f9d AA220000 		.4byte	0x22aa
 7789 1fa1 66000000 		.4byte	.LBB139
 7790 1fa5 58000000 		.4byte	.Ldebug_ranges0+0x58
 7791 1fa9 02       		.byte	0x2
 7792 1faa 4E04     		.2byte	0x44e
 7793 1fac 56       		.uleb128 0x56
 7794 1fad DF220000 		.4byte	0x22df
 7795 1fb1 56       		.uleb128 0x56
 7796 1fb2 D3220000 		.4byte	0x22d3
 7797 1fb6 56       		.uleb128 0x56
 7798 1fb7 C7220000 		.4byte	0x22c7
 7799 1fbb 56       		.uleb128 0x56
 7800 1fbc BB220000 		.4byte	0x22bb
 7801 1fc0 45       		.uleb128 0x45
 7802 1fc1 58000000 		.4byte	.Ldebug_ranges0+0x58
 7803 1fc5 57       		.uleb128 0x57
 7804 1fc6 EB220000 		.4byte	0x22eb
 7805 1fca 00       		.byte	0
ARM GAS  /tmp/ccTIydBQ.s 			page 198


 7806 1fcb 00       		.byte	0
 7807 1fcc 00       		.byte	0
 7808 1fcd 33       		.uleb128 0x33
 7809 1fce AA220000 		.4byte	0x22aa
 7810 1fd2 06000000 		.4byte	.LBB118
 7811 1fd6 06000000 		.4byte	.LBE118-.LBB118
 7812 1fda 02       		.byte	0x2
 7813 1fdb 2004     		.2byte	0x420
 7814 1fdd 05200000 		.4byte	0x2005
 7815 1fe1 56       		.uleb128 0x56
 7816 1fe2 DF220000 		.4byte	0x22df
 7817 1fe6 56       		.uleb128 0x56
 7818 1fe7 D3220000 		.4byte	0x22d3
 7819 1feb 56       		.uleb128 0x56
 7820 1fec C7220000 		.4byte	0x22c7
 7821 1ff0 56       		.uleb128 0x56
 7822 1ff1 BB220000 		.4byte	0x22bb
 7823 1ff5 49       		.uleb128 0x49
 7824 1ff6 06000000 		.4byte	.LBB119
 7825 1ffa 06000000 		.4byte	.LBE119-.LBB119
 7826 1ffe 57       		.uleb128 0x57
 7827 1fff EB220000 		.4byte	0x22eb
 7828 2003 00       		.byte	0
 7829 2004 00       		.byte	0
 7830 2005 31       		.uleb128 0x31
 7831 2006 AA220000 		.4byte	0x22aa
 7832 200a 1E000000 		.4byte	.LBB120
 7833 200e 00000000 		.4byte	.Ldebug_ranges0+0
 7834 2012 02       		.byte	0x2
 7835 2013 4A04     		.2byte	0x44a
 7836 2015 39200000 		.4byte	0x2039
 7837 2019 56       		.uleb128 0x56
 7838 201a DF220000 		.4byte	0x22df
 7839 201e 56       		.uleb128 0x56
 7840 201f D3220000 		.4byte	0x22d3
 7841 2023 56       		.uleb128 0x56
 7842 2024 C7220000 		.4byte	0x22c7
 7843 2028 56       		.uleb128 0x56
 7844 2029 BB220000 		.4byte	0x22bb
 7845 202d 45       		.uleb128 0x45
 7846 202e 00000000 		.4byte	.Ldebug_ranges0+0
 7847 2032 57       		.uleb128 0x57
 7848 2033 EB220000 		.4byte	0x22eb
 7849 2037 00       		.byte	0
 7850 2038 00       		.byte	0
 7851 2039 58       		.uleb128 0x58
 7852 203a AA220000 		.4byte	0x22aa
 7853 203e 24000000 		.4byte	.LBB126
 7854 2042 02000000 		.4byte	.LBE126-.LBB126
 7855 2046 02       		.byte	0x2
 7856 2047 3804     		.2byte	0x438
 7857 2049 3B       		.uleb128 0x3b
 7858 204a DF220000 		.4byte	0x22df
 7859 204e D60D0000 		.4byte	.LLST3
 7860 2052 3B       		.uleb128 0x3b
 7861 2053 D3220000 		.4byte	0x22d3
 7862 2057 EA0D0000 		.4byte	.LLST4
ARM GAS  /tmp/ccTIydBQ.s 			page 199


 7863 205b 3B       		.uleb128 0x3b
 7864 205c C7220000 		.4byte	0x22c7
 7865 2060 FF0D0000 		.4byte	.LLST5
 7866 2064 3B       		.uleb128 0x3b
 7867 2065 BB220000 		.4byte	0x22bb
 7868 2069 140E0000 		.4byte	.LLST6
 7869 206d 49       		.uleb128 0x49
 7870 206e 24000000 		.4byte	.LBB127
 7871 2072 02000000 		.4byte	.LBE127-.LBB127
 7872 2076 57       		.uleb128 0x57
 7873 2077 EB220000 		.4byte	0x22eb
 7874 207b 00       		.byte	0
 7875 207c 00       		.byte	0
 7876 207d 00       		.byte	0
 7877 207e 53       		.uleb128 0x53
 7878 207f 64080000 		.4byte	.LASF265
 7879 2083 02       		.byte	0x2
 7880 2084 0D04     		.2byte	0x40d
 7881 2086 29090000 		.4byte	0x929
 7882 208a 01       		.byte	0x1
 7883 208b 53       		.uleb128 0x53
 7884 208c BF0B0000 		.4byte	.LASF266
 7885 2090 02       		.byte	0x2
 7886 2091 FB03     		.2byte	0x3fb
 7887 2093 29090000 		.4byte	0x929
 7888 2097 01       		.byte	0x1
 7889 2098 50       		.uleb128 0x50
 7890 2099 0B090000 		.4byte	.LASF267
 7891 209d 02       		.byte	0x2
 7892 209e CC03     		.2byte	0x3cc
 7893 20a0 29090000 		.4byte	0x929
 7894 20a4 01       		.byte	0x1
 7895 20a5 D8200000 		.4byte	0x20d8
 7896 20a9 42       		.uleb128 0x42
 7897 20aa 89000000 		.4byte	.LASF248
 7898 20ae 02       		.byte	0x2
 7899 20af CC03     		.2byte	0x3cc
 7900 20b1 BE0C0000 		.4byte	0xcbe
 7901 20b5 51       		.uleb128 0x51
 7902 20b6 6900     		.ascii	"i\000"
 7903 20b8 02       		.byte	0x2
 7904 20b9 CE03     		.2byte	0x3ce
 7905 20bb B2000000 		.4byte	0xb2
 7906 20bf 38       		.uleb128 0x38
 7907 20c0 EB090000 		.4byte	.LASF268
 7908 20c4 02       		.byte	0x2
 7909 20c5 CF03     		.2byte	0x3cf
 7910 20c7 CD000000 		.4byte	0xcd
 7911 20cb 38       		.uleb128 0x38
 7912 20cc 830A0000 		.4byte	.LASF269
 7913 20d0 02       		.byte	0x2
 7914 20d1 D003     		.2byte	0x3d0
 7915 20d3 CD000000 		.4byte	0xcd
 7916 20d7 00       		.byte	0
 7917 20d8 50       		.uleb128 0x50
 7918 20d9 AD000000 		.4byte	.LASF270
 7919 20dd 02       		.byte	0x2
ARM GAS  /tmp/ccTIydBQ.s 			page 200


 7920 20de A903     		.2byte	0x3a9
 7921 20e0 29090000 		.4byte	0x929
 7922 20e4 01       		.byte	0x1
 7923 20e5 01210000 		.4byte	0x2101
 7924 20e9 5A       		.uleb128 0x5a
 7925 20ea 763200   		.ascii	"v2\000"
 7926 20ed 02       		.byte	0x2
 7927 20ee A903     		.2byte	0x3a9
 7928 20f0 BE0C0000 		.4byte	0xcbe
 7929 20f4 38       		.uleb128 0x38
 7930 20f5 580E0000 		.4byte	.LASF232
 7931 20f9 02       		.byte	0x2
 7932 20fa AB03     		.2byte	0x3ab
 7933 20fc CD000000 		.4byte	0xcd
 7934 2100 00       		.byte	0
 7935 2101 53       		.uleb128 0x53
 7936 2102 8C060000 		.4byte	.LASF271
 7937 2106 02       		.byte	0x2
 7938 2107 8A03     		.2byte	0x38a
 7939 2109 29090000 		.4byte	0x929
 7940 210d 01       		.byte	0x1
 7941 210e 50       		.uleb128 0x50
 7942 210f F40E0000 		.4byte	.LASF272
 7943 2113 02       		.byte	0x2
 7944 2114 5F03     		.2byte	0x35f
 7945 2116 29090000 		.4byte	0x929
 7946 211a 01       		.byte	0x1
 7947 211b 38210000 		.4byte	0x2138
 7948 211f 42       		.uleb128 0x42
 7949 2120 1A0B0000 		.4byte	.LASF217
 7950 2124 02       		.byte	0x2
 7951 2125 5F03     		.2byte	0x35f
 7952 2127 A2000000 		.4byte	0xa2
 7953 212b 51       		.uleb128 0x51
 7954 212c 61726700 		.ascii	"arg\000"
 7955 2130 02       		.byte	0x2
 7956 2131 6103     		.2byte	0x361
 7957 2133 CD000000 		.4byte	0xcd
 7958 2137 00       		.byte	0
 7959 2138 50       		.uleb128 0x50
 7960 2139 20040000 		.4byte	.LASF273
 7961 213d 02       		.byte	0x2
 7962 213e 2A03     		.2byte	0x32a
 7963 2140 29090000 		.4byte	0x929
 7964 2144 01       		.byte	0x1
 7965 2145 56210000 		.4byte	0x2156
 7966 2149 38       		.uleb128 0x38
 7967 214a FF030000 		.4byte	.LASF274
 7968 214e 02       		.byte	0x2
 7969 214f 2C03     		.2byte	0x32c
 7970 2151 56210000 		.4byte	0x2156
 7971 2155 00       		.byte	0
 7972 2156 0D       		.uleb128 0xd
 7973 2157 A2000000 		.4byte	0xa2
 7974 215b 66210000 		.4byte	0x2166
 7975 215f 0E       		.uleb128 0xe
 7976 2160 E4000000 		.4byte	0xe4
ARM GAS  /tmp/ccTIydBQ.s 			page 201


 7977 2164 3F       		.byte	0x3f
 7978 2165 00       		.byte	0
 7979 2166 53       		.uleb128 0x53
 7980 2167 A0000000 		.4byte	.LASF275
 7981 216b 02       		.byte	0x2
 7982 216c 0F03     		.2byte	0x30f
 7983 216e 29090000 		.4byte	0x929
 7984 2172 01       		.byte	0x1
 7985 2173 50       		.uleb128 0x50
 7986 2174 9E050000 		.4byte	.LASF276
 7987 2178 02       		.byte	0x2
 7988 2179 FE01     		.2byte	0x1fe
 7989 217b 29090000 		.4byte	0x929
 7990 217f 01       		.byte	0x1
 7991 2180 B4210000 		.4byte	0x21b4
 7992 2184 5A       		.uleb128 0x5a
 7993 2185 763200   		.ascii	"v2\000"
 7994 2188 02       		.byte	0x2
 7995 2189 FE01     		.2byte	0x1fe
 7996 218b A2000000 		.4byte	0xa2
 7997 218f 51       		.uleb128 0x51
 7998 2190 61726700 		.ascii	"arg\000"
 7999 2194 02       		.byte	0x2
 8000 2195 0002     		.2byte	0x200
 8001 2197 CD000000 		.4byte	0xcd
 8002 219b 38       		.uleb128 0x38
 8003 219c 3B0F0000 		.4byte	.LASF249
 8004 21a0 02       		.byte	0x2
 8005 21a1 0002     		.2byte	0x200
 8006 21a3 CD000000 		.4byte	0xcd
 8007 21a7 38       		.uleb128 0x38
 8008 21a8 580E0000 		.4byte	.LASF232
 8009 21ac 02       		.byte	0x2
 8010 21ad 0002     		.2byte	0x200
 8011 21af CD000000 		.4byte	0xcd
 8012 21b3 00       		.byte	0
 8013 21b4 50       		.uleb128 0x50
 8014 21b5 AD050000 		.4byte	.LASF277
 8015 21b9 02       		.byte	0x2
 8016 21ba C201     		.2byte	0x1c2
 8017 21bc 29090000 		.4byte	0x929
 8018 21c0 01       		.byte	0x1
 8019 21c1 F5210000 		.4byte	0x21f5
 8020 21c5 5A       		.uleb128 0x5a
 8021 21c6 763200   		.ascii	"v2\000"
 8022 21c9 02       		.byte	0x2
 8023 21ca C201     		.2byte	0x1c2
 8024 21cc A2000000 		.4byte	0xa2
 8025 21d0 51       		.uleb128 0x51
 8026 21d1 61726700 		.ascii	"arg\000"
 8027 21d5 02       		.byte	0x2
 8028 21d6 C401     		.2byte	0x1c4
 8029 21d8 CD000000 		.4byte	0xcd
 8030 21dc 38       		.uleb128 0x38
 8031 21dd 3B0F0000 		.4byte	.LASF249
 8032 21e1 02       		.byte	0x2
 8033 21e2 C401     		.2byte	0x1c4
ARM GAS  /tmp/ccTIydBQ.s 			page 202


 8034 21e4 CD000000 		.4byte	0xcd
 8035 21e8 38       		.uleb128 0x38
 8036 21e9 580E0000 		.4byte	.LASF232
 8037 21ed 02       		.byte	0x2
 8038 21ee C401     		.2byte	0x1c4
 8039 21f0 CD000000 		.4byte	0xcd
 8040 21f4 00       		.byte	0
 8041 21f5 50       		.uleb128 0x50
 8042 21f6 AB010000 		.4byte	.LASF278
 8043 21fa 02       		.byte	0x2
 8044 21fb 9601     		.2byte	0x196
 8045 21fd 29090000 		.4byte	0x929
 8046 2201 01       		.byte	0x1
 8047 2202 1F220000 		.4byte	0x221f
 8048 2206 38       		.uleb128 0x38
 8049 2207 3B0F0000 		.4byte	.LASF249
 8050 220b 02       		.byte	0x2
 8051 220c 9801     		.2byte	0x198
 8052 220e CD000000 		.4byte	0xcd
 8053 2212 38       		.uleb128 0x38
 8054 2213 580E0000 		.4byte	.LASF232
 8055 2217 02       		.byte	0x2
 8056 2218 9801     		.2byte	0x198
 8057 221a CD000000 		.4byte	0xcd
 8058 221e 00       		.byte	0
 8059 221f 50       		.uleb128 0x50
 8060 2220 8A030000 		.4byte	.LASF279
 8061 2224 02       		.byte	0x2
 8062 2225 6701     		.2byte	0x167
 8063 2227 29090000 		.4byte	0x929
 8064 222b 01       		.byte	0x1
 8065 222c 49220000 		.4byte	0x2249
 8066 2230 38       		.uleb128 0x38
 8067 2231 3B0F0000 		.4byte	.LASF249
 8068 2235 02       		.byte	0x2
 8069 2236 6901     		.2byte	0x169
 8070 2238 CD000000 		.4byte	0xcd
 8071 223c 38       		.uleb128 0x38
 8072 223d 580E0000 		.4byte	.LASF232
 8073 2241 02       		.byte	0x2
 8074 2242 6901     		.2byte	0x169
 8075 2244 CD000000 		.4byte	0xcd
 8076 2248 00       		.byte	0
 8077 2249 5B       		.uleb128 0x5b
 8078 224a EB0D0000 		.4byte	.LASF280
 8079 224e 01       		.byte	0x1
 8080 224f 97       		.byte	0x97
 8081 2250 00000000 		.4byte	.LFB230
 8082 2254 02000000 		.4byte	.LFE230-.LFB230
 8083 2258 01       		.uleb128 0x1
 8084 2259 9C       		.byte	0x9c
 8085 225a 6C220000 		.4byte	0x226c
 8086 225e 5C       		.uleb128 0x5c
 8087 225f 580E0000 		.4byte	.LASF232
 8088 2263 01       		.byte	0x1
 8089 2264 97       		.byte	0x97
 8090 2265 BE0C0000 		.4byte	0xcbe
ARM GAS  /tmp/ccTIydBQ.s 			page 203


 8091 2269 01       		.uleb128 0x1
 8092 226a 50       		.byte	0x50
 8093 226b 00       		.byte	0
 8094 226c 5D       		.uleb128 0x5d
 8095 226d 25060000 		.4byte	.LASF297
 8096 2271 01       		.byte	0x1
 8097 2272 6E       		.byte	0x6e
 8098 2273 29090000 		.4byte	0x929
 8099 2277 00000000 		.4byte	.LFB229
 8100 227b 04000000 		.4byte	.LFE229-.LFB229
 8101 227f 01       		.uleb128 0x1
 8102 2280 9C       		.byte	0x9c
 8103 2281 5E       		.uleb128 0x5e
 8104 2282 B70A0000 		.4byte	.LASF282
 8105 2286 01       		.byte	0x1
 8106 2287 65       		.byte	0x65
 8107 2288 A2000000 		.4byte	0xa2
 8108 228c 00000000 		.4byte	.LFB228
 8109 2290 04000000 		.4byte	.LFE228-.LFB228
 8110 2294 01       		.uleb128 0x1
 8111 2295 9C       		.byte	0x9c
 8112 2296 AA220000 		.4byte	0x22aa
 8113 229a 5F       		.uleb128 0x5f
 8114 229b 76000000 		.4byte	.LASF216
 8115 229f 01       		.byte	0x1
 8116 22a0 65       		.byte	0x65
 8117 22a1 A2000000 		.4byte	0xa2
 8118 22a5 290E0000 		.4byte	.LLST0
 8119 22a9 00       		.byte	0
 8120 22aa 50       		.uleb128 0x50
 8121 22ab 950B0000 		.4byte	.LASF283
 8122 22af 03       		.byte	0x3
 8123 22b0 B702     		.2byte	0x2b7
 8124 22b2 CD000000 		.4byte	0xcd
 8125 22b6 03       		.byte	0x3
 8126 22b7 F8220000 		.4byte	0x22f8
 8127 22bb 5A       		.uleb128 0x5a
 8128 22bc 72656700 		.ascii	"reg\000"
 8129 22c0 03       		.byte	0x3
 8130 22c1 B702     		.2byte	0x2b7
 8131 22c3 BE0C0000 		.4byte	0xcbe
 8132 22c7 42       		.uleb128 0x42
 8133 22c8 CF060000 		.4byte	.LASF284
 8134 22cc 03       		.byte	0x3
 8135 22cd B702     		.2byte	0x2b7
 8136 22cf B2000000 		.4byte	0xb2
 8137 22d3 5A       		.uleb128 0x5a
 8138 22d4 706F7300 		.ascii	"pos\000"
 8139 22d8 03       		.byte	0x3
 8140 22d9 B802     		.2byte	0x2b8
 8141 22db B2000000 		.4byte	0xb2
 8142 22df 42       		.uleb128 0x42
 8143 22e0 04080000 		.4byte	.LASF285
 8144 22e4 03       		.byte	0x3
 8145 22e5 B802     		.2byte	0x2b8
 8146 22e7 A2000000 		.4byte	0xa2
 8147 22eb 38       		.uleb128 0x38
ARM GAS  /tmp/ccTIydBQ.s 			page 204


 8148 22ec AB060000 		.4byte	.LASF286
 8149 22f0 03       		.byte	0x3
 8150 22f1 BA02     		.2byte	0x2ba
 8151 22f3 CD000000 		.4byte	0xcd
 8152 22f7 00       		.byte	0
 8153 22f8 60       		.uleb128 0x60
 8154 22f9 8D0B0000 		.4byte	.LASF298
 8155 22fd 04       		.byte	0x4
 8156 22fe 39       		.byte	0x39
 8157 22ff 03       		.byte	0x3
 8158 2300 1B230000 		.4byte	0x231b
 8159 2304 61       		.uleb128 0x61
 8160 2305 70696E00 		.ascii	"pin\000"
 8161 2309 04       		.byte	0x4
 8162 230a 39       		.byte	0x39
 8163 230b A2090000 		.4byte	0x9a2
 8164 230f 62       		.uleb128 0x62
 8165 2310 A7090000 		.4byte	.LASF287
 8166 2314 04       		.byte	0x4
 8167 2315 39       		.byte	0x39
 8168 2316 9B0A0000 		.4byte	0xa9b
 8169 231a 00       		.byte	0
 8170 231b 63       		.uleb128 0x63
 8171 231c D8200000 		.4byte	0x20d8
 8172 2320 00000000 		.4byte	.LFB242
 8173 2324 4C000000 		.4byte	.LFE242-.LFB242
 8174 2328 01       		.uleb128 0x1
 8175 2329 9C       		.byte	0x9c
 8176 232a 73230000 		.4byte	0x2373
 8177 232e 3B       		.uleb128 0x3b
 8178 232f E9200000 		.4byte	0x20e9
 8179 2333 4A0E0000 		.4byte	.LLST36
 8180 2337 57       		.uleb128 0x57
 8181 2338 F4200000 		.4byte	0x20f4
 8182 233c 4E       		.uleb128 0x4e
 8183 233d F0000000 		.4byte	.Ldebug_ranges0+0xf0
 8184 2341 5E230000 		.4byte	0x235e
 8185 2345 3B       		.uleb128 0x3b
 8186 2346 E9200000 		.4byte	0x20e9
 8187 234a 760E0000 		.4byte	.LLST37
 8188 234e 45       		.uleb128 0x45
 8189 234f F0000000 		.4byte	.Ldebug_ranges0+0xf0
 8190 2353 48       		.uleb128 0x48
 8191 2354 37230000 		.4byte	0x2337
 8192 2358 970E0000 		.4byte	.LLST38
 8193 235c 00       		.byte	0
 8194 235d 00       		.byte	0
 8195 235e 34       		.uleb128 0x34
 8196 235f 1A000000 		.4byte	.LVL40
 8197 2363 35       		.uleb128 0x35
 8198 2364 01       		.uleb128 0x1
 8199 2365 50       		.byte	0x50
 8200 2366 03       		.uleb128 0x3
 8201 2367 0A       		.byte	0xa
 8202 2368 0855     		.2byte	0x5508
 8203 236a 35       		.uleb128 0x35
 8204 236b 01       		.uleb128 0x1
ARM GAS  /tmp/ccTIydBQ.s 			page 205


 8205 236c 51       		.byte	0x51
 8206 236d 03       		.uleb128 0x3
 8207 236e 0A       		.byte	0xa
 8208 236f AA01     		.2byte	0x1aa
 8209 2371 00       		.byte	0
 8210 2372 00       		.byte	0
 8211 2373 64       		.uleb128 0x64
 8212 2374 98200000 		.4byte	0x2098
 8213 2378 00000000 		.4byte	.LFB243
 8214 237c B4000000 		.4byte	.LFE243-.LFB243
 8215 2380 01       		.uleb128 0x1
 8216 2381 9C       		.byte	0x9c
 8217 2382 6A240000 		.4byte	0x246a
 8218 2386 3B       		.uleb128 0x3b
 8219 2387 A9200000 		.4byte	0x20a9
 8220 238b B70E0000 		.4byte	.LLST39
 8221 238f 57       		.uleb128 0x57
 8222 2390 B5200000 		.4byte	0x20b5
 8223 2394 57       		.uleb128 0x57
 8224 2395 BF200000 		.4byte	0x20bf
 8225 2399 57       		.uleb128 0x57
 8226 239a CB200000 		.4byte	0x20cb
 8227 239e 4E       		.uleb128 0x4e
 8228 239f 10010000 		.4byte	.Ldebug_ranges0+0x110
 8229 23a3 40240000 		.4byte	0x2440
 8230 23a7 56       		.uleb128 0x56
 8231 23a8 A9200000 		.4byte	0x20a9
 8232 23ac 45       		.uleb128 0x45
 8233 23ad 10010000 		.4byte	.Ldebug_ranges0+0x110
 8234 23b1 48       		.uleb128 0x48
 8235 23b2 8F230000 		.4byte	0x238f
 8236 23b6 150F0000 		.4byte	.LLST40
 8237 23ba 46       		.uleb128 0x46
 8238 23bb 94230000 		.4byte	0x2394
 8239 23bf 02       		.uleb128 0x2
 8240 23c0 91       		.byte	0x91
 8241 23c1 60       		.sleb128 -32
 8242 23c2 46       		.uleb128 0x46
 8243 23c3 99230000 		.4byte	0x2399
 8244 23c7 02       		.uleb128 0x2
 8245 23c8 91       		.byte	0x91
 8246 23c9 64       		.sleb128 -28
 8247 23ca 31       		.uleb128 0x31
 8248 23cb AA220000 		.4byte	0x22aa
 8249 23cf 40000000 		.4byte	.LBB185
 8250 23d3 28010000 		.4byte	.Ldebug_ranges0+0x128
 8251 23d7 02       		.byte	0x2
 8252 23d8 E303     		.2byte	0x3e3
 8253 23da 12240000 		.4byte	0x2412
 8254 23de 3B       		.uleb128 0x3b
 8255 23df DF220000 		.4byte	0x22df
 8256 23e3 680F0000 		.4byte	.LLST41
 8257 23e7 3B       		.uleb128 0x3b
 8258 23e8 D3220000 		.4byte	0x22d3
 8259 23ec 7C0F0000 		.4byte	.LLST42
 8260 23f0 3B       		.uleb128 0x3b
 8261 23f1 C7220000 		.4byte	0x22c7
ARM GAS  /tmp/ccTIydBQ.s 			page 206


 8262 23f5 910F0000 		.4byte	.LLST43
 8263 23f9 3B       		.uleb128 0x3b
 8264 23fa BB220000 		.4byte	0x22bb
 8265 23fe A60F0000 		.4byte	.LLST44
 8266 2402 45       		.uleb128 0x45
 8267 2403 28010000 		.4byte	.Ldebug_ranges0+0x128
 8268 2407 48       		.uleb128 0x48
 8269 2408 EB220000 		.4byte	0x22eb
 8270 240c BB0F0000 		.4byte	.LLST45
 8271 2410 00       		.byte	0
 8272 2411 00       		.byte	0
 8273 2412 3E       		.uleb128 0x3e
 8274 2413 34000000 		.4byte	.LVL54
 8275 2417 22240000 		.4byte	0x2422
 8276 241b 35       		.uleb128 0x35
 8277 241c 01       		.uleb128 0x1
 8278 241d 50       		.byte	0x50
 8279 241e 02       		.uleb128 0x2
 8280 241f 91       		.byte	0x91
 8281 2420 60       		.sleb128 -32
 8282 2421 00       		.byte	0
 8283 2422 3E       		.uleb128 0x3e
 8284 2423 7C000000 		.4byte	.LVL65
 8285 2427 32240000 		.4byte	0x2432
 8286 242b 35       		.uleb128 0x35
 8287 242c 01       		.uleb128 0x1
 8288 242d 50       		.byte	0x50
 8289 242e 02       		.uleb128 0x2
 8290 242f 76       		.byte	0x76
 8291 2430 00       		.sleb128 0
 8292 2431 00       		.byte	0
 8293 2432 34       		.uleb128 0x34
 8294 2433 94000000 		.4byte	.LVL71
 8295 2437 35       		.uleb128 0x35
 8296 2438 01       		.uleb128 0x1
 8297 2439 50       		.byte	0x50
 8298 243a 02       		.uleb128 0x2
 8299 243b 76       		.byte	0x76
 8300 243c 00       		.sleb128 0
 8301 243d 00       		.byte	0
 8302 243e 00       		.byte	0
 8303 243f 00       		.byte	0
 8304 2440 3D       		.uleb128 0x3d
 8305 2441 1E000000 		.4byte	.LVL50
 8306 2445 02       		.uleb128 0x2
 8307 2446 74       		.byte	0x74
 8308 2447 00       		.sleb128 0
 8309 2448 35       		.uleb128 0x35
 8310 2449 01       		.uleb128 0x1
 8311 244a 50       		.byte	0x50
 8312 244b 05       		.uleb128 0x5
 8313 244c 0C       		.byte	0xc
 8314 244d 08110800 		.4byte	0x81108
 8315 2451 35       		.uleb128 0x35
 8316 2452 01       		.uleb128 0x1
 8317 2453 51       		.byte	0x51
 8318 2454 01       		.uleb128 0x1
ARM GAS  /tmp/ccTIydBQ.s 			page 207


 8319 2455 30       		.byte	0x30
 8320 2456 35       		.uleb128 0x35
 8321 2457 01       		.uleb128 0x1
 8322 2458 52       		.byte	0x52
 8323 2459 03       		.uleb128 0x3
 8324 245a 0A       		.byte	0xa
 8325 245b 0002     		.2byte	0x200
 8326 245d 35       		.uleb128 0x35
 8327 245e 01       		.uleb128 0x1
 8328 245f 53       		.byte	0x53
 8329 2460 01       		.uleb128 0x1
 8330 2461 31       		.byte	0x31
 8331 2462 35       		.uleb128 0x35
 8332 2463 02       		.uleb128 0x2
 8333 2464 7D       		.byte	0x7d
 8334 2465 00       		.sleb128 0
 8335 2466 01       		.uleb128 0x1
 8336 2467 30       		.byte	0x30
 8337 2468 00       		.byte	0
 8338 2469 00       		.byte	0
 8339 246a 65       		.uleb128 0x65
 8340 246b 8B200000 		.4byte	0x208b
 8341 246f 00000000 		.4byte	.LFB244
 8342 2473 4C000000 		.4byte	.LFE244-.LFB244
 8343 2477 01       		.uleb128 0x1
 8344 2478 9C       		.byte	0x9c
 8345 2479 B2240000 		.4byte	0x24b2
 8346 247d 4B       		.uleb128 0x4b
 8347 247e 1C000000 		.4byte	.LVL74
 8348 2482 02       		.uleb128 0x2
 8349 2483 75       		.byte	0x75
 8350 2484 00       		.sleb128 0
 8351 2485 A5240000 		.4byte	0x24a5
 8352 2489 35       		.uleb128 0x35
 8353 248a 01       		.uleb128 0x1
 8354 248b 50       		.byte	0x50
 8355 248c 05       		.uleb128 0x5
 8356 248d 0C       		.byte	0xc
 8357 248e 09110800 		.4byte	0x81109
 8358 2492 35       		.uleb128 0x35
 8359 2493 01       		.uleb128 0x1
 8360 2494 52       		.byte	0x52
 8361 2495 01       		.uleb128 0x1
 8362 2496 40       		.byte	0x40
 8363 2497 35       		.uleb128 0x35
 8364 2498 01       		.uleb128 0x1
 8365 2499 53       		.byte	0x53
 8366 249a 02       		.uleb128 0x2
 8367 249b 74       		.byte	0x74
 8368 249c 00       		.sleb128 0
 8369 249d 35       		.uleb128 0x35
 8370 249e 02       		.uleb128 0x2
 8371 249f 7D       		.byte	0x7d
 8372 24a0 00       		.sleb128 0
 8373 24a1 02       		.uleb128 0x2
 8374 24a2 74       		.byte	0x74
 8375 24a3 00       		.sleb128 0
ARM GAS  /tmp/ccTIydBQ.s 			page 208


 8376 24a4 00       		.byte	0
 8377 24a5 34       		.uleb128 0x34
 8378 24a6 30000000 		.4byte	.LVL75
 8379 24aa 35       		.uleb128 0x35
 8380 24ab 01       		.uleb128 0x1
 8381 24ac 51       		.byte	0x51
 8382 24ad 02       		.uleb128 0x2
 8383 24ae 74       		.byte	0x74
 8384 24af 00       		.sleb128 0
 8385 24b0 00       		.byte	0
 8386 24b1 00       		.byte	0
 8387 24b2 63       		.uleb128 0x63
 8388 24b3 7E200000 		.4byte	0x207e
 8389 24b7 00000000 		.4byte	.LFB245
 8390 24bb 2C000000 		.4byte	.LFE245-.LFB245
 8391 24bf 01       		.uleb128 0x1
 8392 24c0 9C       		.byte	0x9c
 8393 24c1 D3240000 		.4byte	0x24d3
 8394 24c5 34       		.uleb128 0x34
 8395 24c6 14000000 		.4byte	.LVL77
 8396 24ca 35       		.uleb128 0x35
 8397 24cb 01       		.uleb128 0x1
 8398 24cc 50       		.byte	0x50
 8399 24cd 03       		.uleb128 0x3
 8400 24ce 0A       		.byte	0xa
 8401 24cf 091B     		.2byte	0x1b09
 8402 24d1 00       		.byte	0
 8403 24d2 00       		.byte	0
 8404 24d3 63       		.uleb128 0x63
 8405 24d4 D51C0000 		.4byte	0x1cd5
 8406 24d8 00000000 		.4byte	.LFB250
 8407 24dc 90000000 		.4byte	.LFE250-.LFB250
 8408 24e0 01       		.uleb128 0x1
 8409 24e1 9C       		.byte	0x9c
 8410 24e2 4A250000 		.4byte	0x254a
 8411 24e6 57       		.uleb128 0x57
 8412 24e7 E61C0000 		.4byte	0x1ce6
 8413 24eb 4E       		.uleb128 0x4e
 8414 24ec 40010000 		.4byte	.Ldebug_ranges0+0x140
 8415 24f0 0F250000 		.4byte	0x250f
 8416 24f4 46       		.uleb128 0x46
 8417 24f5 E6240000 		.4byte	0x24e6
 8418 24f9 02       		.uleb128 0x2
 8419 24fa 91       		.byte	0x91
 8420 24fb 68       		.sleb128 -24
 8421 24fc 34       		.uleb128 0x34
 8422 24fd 42000000 		.4byte	.LVL81
 8423 2501 35       		.uleb128 0x35
 8424 2502 01       		.uleb128 0x1
 8425 2503 50       		.byte	0x50
 8426 2504 02       		.uleb128 0x2
 8427 2505 91       		.byte	0x91
 8428 2506 68       		.sleb128 -24
 8429 2507 35       		.uleb128 0x35
 8430 2508 01       		.uleb128 0x1
 8431 2509 51       		.byte	0x51
 8432 250a 02       		.uleb128 0x2
ARM GAS  /tmp/ccTIydBQ.s 			page 209


 8433 250b 75       		.byte	0x75
 8434 250c 00       		.sleb128 0
 8435 250d 00       		.byte	0
 8436 250e 00       		.byte	0
 8437 250f 3E       		.uleb128 0x3e
 8438 2510 16000000 		.4byte	.LVL79
 8439 2514 20250000 		.4byte	0x2520
 8440 2518 35       		.uleb128 0x35
 8441 2519 01       		.uleb128 0x1
 8442 251a 50       		.byte	0x50
 8443 251b 03       		.uleb128 0x3
 8444 251c 0A       		.byte	0xa
 8445 251d 3711     		.2byte	0x1137
 8446 251f 00       		.byte	0
 8447 2520 3D       		.uleb128 0x3d
 8448 2521 32000000 		.4byte	.LVL80
 8449 2525 02       		.uleb128 0x2
 8450 2526 76       		.byte	0x76
 8451 2527 00       		.sleb128 0
 8452 2528 35       		.uleb128 0x35
 8453 2529 01       		.uleb128 0x1
 8454 252a 50       		.byte	0x50
 8455 252b 05       		.uleb128 0x5
 8456 252c 0C       		.byte	0xc
 8457 252d 33110800 		.4byte	0x81133
 8458 2531 35       		.uleb128 0x35
 8459 2532 01       		.uleb128 0x1
 8460 2533 51       		.byte	0x51
 8461 2534 01       		.uleb128 0x1
 8462 2535 30       		.byte	0x30
 8463 2536 35       		.uleb128 0x35
 8464 2537 01       		.uleb128 0x1
 8465 2538 52       		.byte	0x52
 8466 2539 01       		.uleb128 0x1
 8467 253a 38       		.byte	0x38
 8468 253b 35       		.uleb128 0x35
 8469 253c 01       		.uleb128 0x1
 8470 253d 53       		.byte	0x53
 8471 253e 02       		.uleb128 0x2
 8472 253f 75       		.byte	0x75
 8473 2540 00       		.sleb128 0
 8474 2541 35       		.uleb128 0x35
 8475 2542 02       		.uleb128 0x2
 8476 2543 7D       		.byte	0x7d
 8477 2544 00       		.sleb128 0
 8478 2545 02       		.uleb128 0x2
 8479 2546 75       		.byte	0x75
 8480 2547 00       		.sleb128 0
 8481 2548 00       		.byte	0
 8482 2549 00       		.byte	0
 8483 254a 64       		.uleb128 0x64
 8484 254b B71C0000 		.4byte	0x1cb7
 8485 254f 00000000 		.4byte	.LFB278
 8486 2553 74000000 		.4byte	.LFE278-.LFB278
 8487 2557 01       		.uleb128 0x1
 8488 2558 9C       		.byte	0x9c
 8489 2559 80250000 		.4byte	0x2580
ARM GAS  /tmp/ccTIydBQ.s 			page 210


 8490 255d 3B       		.uleb128 0x3b
 8491 255e C81C0000 		.4byte	0x1cc8
 8492 2562 02100000 		.4byte	.LLST46
 8493 2566 43       		.uleb128 0x43
 8494 2567 AE1C0000 		.4byte	0x1cae
 8495 256b 20000000 		.4byte	.LBB211
 8496 256f 58010000 		.4byte	.Ldebug_ranges0+0x158
 8497 2573 02       		.byte	0x2
 8498 2574 7905     		.2byte	0x579
 8499 2576 47       		.uleb128 0x47
 8500 2577 42000000 		.4byte	.LVL85
 8501 257b 02       		.uleb128 0x2
 8502 257c 76       		.byte	0x76
 8503 257d 00       		.sleb128 0
 8504 257e 00       		.byte	0
 8505 257f 00       		.byte	0
 8506 2580 66       		.uleb128 0x66
 8507 2581 A51C0000 		.4byte	0x1ca5
 8508 2585 00000000 		.4byte	.LFB279
 8509 2589 20000000 		.4byte	.LFE279-.LFB279
 8510 258d 01       		.uleb128 0x1
 8511 258e 9C       		.byte	0x9c
 8512 258f 64       		.uleb128 0x64
 8513 2590 4A130000 		.4byte	0x134a
 8514 2594 00000000 		.4byte	.LFB264
 8515 2598 28000000 		.4byte	.LFE264-.LFB264
 8516 259c 01       		.uleb128 0x1
 8517 259d 9C       		.byte	0x9c
 8518 259e B5250000 		.4byte	0x25b5
 8519 25a2 3B       		.uleb128 0x3b
 8520 25a3 5B130000 		.4byte	0x135b
 8521 25a7 23100000 		.4byte	.LLST76
 8522 25ab 32       		.uleb128 0x32
 8523 25ac 16000000 		.4byte	.LVL227
 8524 25b0 B5250000 		.4byte	0x25b5
 8525 25b4 00       		.byte	0
 8526 25b5 67       		.uleb128 0x67
 8527 25b6 BE090000 		.4byte	.LASF288
 8528 25ba BE090000 		.4byte	.LASF288
 8529 25be 04       		.byte	0x4
 8530 25bf 50       		.byte	0x50
 8531 25c0 67       		.uleb128 0x67
 8532 25c1 2F070000 		.4byte	.LASF289
 8533 25c5 2F070000 		.4byte	.LASF289
 8534 25c9 04       		.byte	0x4
 8535 25ca 37       		.byte	0x37
 8536 25cb 67       		.uleb128 0x67
 8537 25cc 57050000 		.4byte	.LASF290
 8538 25d0 57050000 		.4byte	.LASF290
 8539 25d4 14       		.byte	0x14
 8540 25d5 46       		.byte	0x46
 8541 25d6 67       		.uleb128 0x67
 8542 25d7 0C050000 		.4byte	.LASF291
 8543 25db 0C050000 		.4byte	.LASF291
 8544 25df 01       		.byte	0x1
 8545 25e0 5D       		.byte	0x5d
 8546 25e1 00       		.byte	0
ARM GAS  /tmp/ccTIydBQ.s 			page 211


 8547              		.section	.debug_abbrev,"",%progbits
 8548              	.Ldebug_abbrev0:
 8549 0000 01       		.uleb128 0x1
 8550 0001 11       		.uleb128 0x11
 8551 0002 01       		.byte	0x1
 8552 0003 25       		.uleb128 0x25
 8553 0004 0E       		.uleb128 0xe
 8554 0005 13       		.uleb128 0x13
 8555 0006 0B       		.uleb128 0xb
 8556 0007 03       		.uleb128 0x3
 8557 0008 0E       		.uleb128 0xe
 8558 0009 1B       		.uleb128 0x1b
 8559 000a 0E       		.uleb128 0xe
 8560 000b 55       		.uleb128 0x55
 8561 000c 17       		.uleb128 0x17
 8562 000d 11       		.uleb128 0x11
 8563 000e 01       		.uleb128 0x1
 8564 000f 10       		.uleb128 0x10
 8565 0010 17       		.uleb128 0x17
 8566 0011 00       		.byte	0
 8567 0012 00       		.byte	0
 8568 0013 02       		.uleb128 0x2
 8569 0014 24       		.uleb128 0x24
 8570 0015 00       		.byte	0
 8571 0016 0B       		.uleb128 0xb
 8572 0017 0B       		.uleb128 0xb
 8573 0018 3E       		.uleb128 0x3e
 8574 0019 0B       		.uleb128 0xb
 8575 001a 03       		.uleb128 0x3
 8576 001b 08       		.uleb128 0x8
 8577 001c 00       		.byte	0
 8578 001d 00       		.byte	0
 8579 001e 03       		.uleb128 0x3
 8580 001f 16       		.uleb128 0x16
 8581 0020 00       		.byte	0
 8582 0021 03       		.uleb128 0x3
 8583 0022 0E       		.uleb128 0xe
 8584 0023 3A       		.uleb128 0x3a
 8585 0024 0B       		.uleb128 0xb
 8586 0025 3B       		.uleb128 0x3b
 8587 0026 0B       		.uleb128 0xb
 8588 0027 49       		.uleb128 0x49
 8589 0028 13       		.uleb128 0x13
 8590 0029 00       		.byte	0
 8591 002a 00       		.byte	0
 8592 002b 04       		.uleb128 0x4
 8593 002c 24       		.uleb128 0x24
 8594 002d 00       		.byte	0
 8595 002e 0B       		.uleb128 0xb
 8596 002f 0B       		.uleb128 0xb
 8597 0030 3E       		.uleb128 0x3e
 8598 0031 0B       		.uleb128 0xb
 8599 0032 03       		.uleb128 0x3
 8600 0033 0E       		.uleb128 0xe
 8601 0034 00       		.byte	0
 8602 0035 00       		.byte	0
 8603 0036 05       		.uleb128 0x5
ARM GAS  /tmp/ccTIydBQ.s 			page 212


 8604 0037 26       		.uleb128 0x26
 8605 0038 00       		.byte	0
 8606 0039 49       		.uleb128 0x49
 8607 003a 13       		.uleb128 0x13
 8608 003b 00       		.byte	0
 8609 003c 00       		.byte	0
 8610 003d 06       		.uleb128 0x6
 8611 003e 35       		.uleb128 0x35
 8612 003f 00       		.byte	0
 8613 0040 49       		.uleb128 0x49
 8614 0041 13       		.uleb128 0x13
 8615 0042 00       		.byte	0
 8616 0043 00       		.byte	0
 8617 0044 07       		.uleb128 0x7
 8618 0045 0F       		.uleb128 0xf
 8619 0046 00       		.byte	0
 8620 0047 0B       		.uleb128 0xb
 8621 0048 0B       		.uleb128 0xb
 8622 0049 00       		.byte	0
 8623 004a 00       		.byte	0
 8624 004b 08       		.uleb128 0x8
 8625 004c 34       		.uleb128 0x34
 8626 004d 00       		.byte	0
 8627 004e 03       		.uleb128 0x3
 8628 004f 0E       		.uleb128 0xe
 8629 0050 3A       		.uleb128 0x3a
 8630 0051 0B       		.uleb128 0xb
 8631 0052 3B       		.uleb128 0x3b
 8632 0053 05       		.uleb128 0x5
 8633 0054 49       		.uleb128 0x49
 8634 0055 13       		.uleb128 0x13
 8635 0056 3F       		.uleb128 0x3f
 8636 0057 19       		.uleb128 0x19
 8637 0058 3C       		.uleb128 0x3c
 8638 0059 19       		.uleb128 0x19
 8639 005a 00       		.byte	0
 8640 005b 00       		.byte	0
 8641 005c 09       		.uleb128 0x9
 8642 005d 34       		.uleb128 0x34
 8643 005e 00       		.byte	0
 8644 005f 03       		.uleb128 0x3
 8645 0060 0E       		.uleb128 0xe
 8646 0061 3A       		.uleb128 0x3a
 8647 0062 0B       		.uleb128 0xb
 8648 0063 3B       		.uleb128 0x3b
 8649 0064 0B       		.uleb128 0xb
 8650 0065 49       		.uleb128 0x49
 8651 0066 13       		.uleb128 0x13
 8652 0067 3F       		.uleb128 0x3f
 8653 0068 19       		.uleb128 0x19
 8654 0069 3C       		.uleb128 0x3c
 8655 006a 19       		.uleb128 0x19
 8656 006b 00       		.byte	0
 8657 006c 00       		.byte	0
 8658 006d 0A       		.uleb128 0xa
 8659 006e 16       		.uleb128 0x16
 8660 006f 00       		.byte	0
ARM GAS  /tmp/ccTIydBQ.s 			page 213


 8661 0070 03       		.uleb128 0x3
 8662 0071 0E       		.uleb128 0xe
 8663 0072 3A       		.uleb128 0x3a
 8664 0073 0B       		.uleb128 0xb
 8665 0074 3B       		.uleb128 0x3b
 8666 0075 05       		.uleb128 0x5
 8667 0076 49       		.uleb128 0x49
 8668 0077 13       		.uleb128 0x13
 8669 0078 00       		.byte	0
 8670 0079 00       		.byte	0
 8671 007a 0B       		.uleb128 0xb
 8672 007b 17       		.uleb128 0x17
 8673 007c 01       		.byte	0x1
 8674 007d 0B       		.uleb128 0xb
 8675 007e 0B       		.uleb128 0xb
 8676 007f 3A       		.uleb128 0x3a
 8677 0080 0B       		.uleb128 0xb
 8678 0081 3B       		.uleb128 0x3b
 8679 0082 0B       		.uleb128 0xb
 8680 0083 01       		.uleb128 0x1
 8681 0084 13       		.uleb128 0x13
 8682 0085 00       		.byte	0
 8683 0086 00       		.byte	0
 8684 0087 0C       		.uleb128 0xc
 8685 0088 0D       		.uleb128 0xd
 8686 0089 00       		.byte	0
 8687 008a 03       		.uleb128 0x3
 8688 008b 0E       		.uleb128 0xe
 8689 008c 3A       		.uleb128 0x3a
 8690 008d 0B       		.uleb128 0xb
 8691 008e 3B       		.uleb128 0x3b
 8692 008f 0B       		.uleb128 0xb
 8693 0090 49       		.uleb128 0x49
 8694 0091 13       		.uleb128 0x13
 8695 0092 00       		.byte	0
 8696 0093 00       		.byte	0
 8697 0094 0D       		.uleb128 0xd
 8698 0095 01       		.uleb128 0x1
 8699 0096 01       		.byte	0x1
 8700 0097 49       		.uleb128 0x49
 8701 0098 13       		.uleb128 0x13
 8702 0099 01       		.uleb128 0x1
 8703 009a 13       		.uleb128 0x13
 8704 009b 00       		.byte	0
 8705 009c 00       		.byte	0
 8706 009d 0E       		.uleb128 0xe
 8707 009e 21       		.uleb128 0x21
 8708 009f 00       		.byte	0
 8709 00a0 49       		.uleb128 0x49
 8710 00a1 13       		.uleb128 0x13
 8711 00a2 2F       		.uleb128 0x2f
 8712 00a3 0B       		.uleb128 0xb
 8713 00a4 00       		.byte	0
 8714 00a5 00       		.byte	0
 8715 00a6 0F       		.uleb128 0xf
 8716 00a7 13       		.uleb128 0x13
 8717 00a8 01       		.byte	0x1
ARM GAS  /tmp/ccTIydBQ.s 			page 214


 8718 00a9 0B       		.uleb128 0xb
 8719 00aa 0B       		.uleb128 0xb
 8720 00ab 3A       		.uleb128 0x3a
 8721 00ac 0B       		.uleb128 0xb
 8722 00ad 3B       		.uleb128 0x3b
 8723 00ae 0B       		.uleb128 0xb
 8724 00af 01       		.uleb128 0x1
 8725 00b0 13       		.uleb128 0x13
 8726 00b1 00       		.byte	0
 8727 00b2 00       		.byte	0
 8728 00b3 10       		.uleb128 0x10
 8729 00b4 0D       		.uleb128 0xd
 8730 00b5 00       		.byte	0
 8731 00b6 03       		.uleb128 0x3
 8732 00b7 0E       		.uleb128 0xe
 8733 00b8 3A       		.uleb128 0x3a
 8734 00b9 0B       		.uleb128 0xb
 8735 00ba 3B       		.uleb128 0x3b
 8736 00bb 0B       		.uleb128 0xb
 8737 00bc 49       		.uleb128 0x49
 8738 00bd 13       		.uleb128 0x13
 8739 00be 38       		.uleb128 0x38
 8740 00bf 0B       		.uleb128 0xb
 8741 00c0 00       		.byte	0
 8742 00c1 00       		.byte	0
 8743 00c2 11       		.uleb128 0x11
 8744 00c3 13       		.uleb128 0x13
 8745 00c4 01       		.byte	0x1
 8746 00c5 03       		.uleb128 0x3
 8747 00c6 0E       		.uleb128 0xe
 8748 00c7 0B       		.uleb128 0xb
 8749 00c8 0B       		.uleb128 0xb
 8750 00c9 3A       		.uleb128 0x3a
 8751 00ca 0B       		.uleb128 0xb
 8752 00cb 3B       		.uleb128 0x3b
 8753 00cc 0B       		.uleb128 0xb
 8754 00cd 01       		.uleb128 0x1
 8755 00ce 13       		.uleb128 0x13
 8756 00cf 00       		.byte	0
 8757 00d0 00       		.byte	0
 8758 00d1 12       		.uleb128 0x12
 8759 00d2 0D       		.uleb128 0xd
 8760 00d3 00       		.byte	0
 8761 00d4 03       		.uleb128 0x3
 8762 00d5 08       		.uleb128 0x8
 8763 00d6 3A       		.uleb128 0x3a
 8764 00d7 0B       		.uleb128 0xb
 8765 00d8 3B       		.uleb128 0x3b
 8766 00d9 0B       		.uleb128 0xb
 8767 00da 49       		.uleb128 0x49
 8768 00db 13       		.uleb128 0x13
 8769 00dc 38       		.uleb128 0x38
 8770 00dd 0B       		.uleb128 0xb
 8771 00de 00       		.byte	0
 8772 00df 00       		.byte	0
 8773 00e0 13       		.uleb128 0x13
 8774 00e1 0F       		.uleb128 0xf
ARM GAS  /tmp/ccTIydBQ.s 			page 215


 8775 00e2 00       		.byte	0
 8776 00e3 0B       		.uleb128 0xb
 8777 00e4 0B       		.uleb128 0xb
 8778 00e5 49       		.uleb128 0x49
 8779 00e6 13       		.uleb128 0x13
 8780 00e7 00       		.byte	0
 8781 00e8 00       		.byte	0
 8782 00e9 14       		.uleb128 0x14
 8783 00ea 13       		.uleb128 0x13
 8784 00eb 01       		.byte	0x1
 8785 00ec 03       		.uleb128 0x3
 8786 00ed 0E       		.uleb128 0xe
 8787 00ee 0B       		.uleb128 0xb
 8788 00ef 05       		.uleb128 0x5
 8789 00f0 3A       		.uleb128 0x3a
 8790 00f1 0B       		.uleb128 0xb
 8791 00f2 3B       		.uleb128 0x3b
 8792 00f3 0B       		.uleb128 0xb
 8793 00f4 01       		.uleb128 0x1
 8794 00f5 13       		.uleb128 0x13
 8795 00f6 00       		.byte	0
 8796 00f7 00       		.byte	0
 8797 00f8 15       		.uleb128 0x15
 8798 00f9 0D       		.uleb128 0xd
 8799 00fa 00       		.byte	0
 8800 00fb 03       		.uleb128 0x3
 8801 00fc 0E       		.uleb128 0xe
 8802 00fd 3A       		.uleb128 0x3a
 8803 00fe 0B       		.uleb128 0xb
 8804 00ff 3B       		.uleb128 0x3b
 8805 0100 0B       		.uleb128 0xb
 8806 0101 49       		.uleb128 0x49
 8807 0102 13       		.uleb128 0x13
 8808 0103 38       		.uleb128 0x38
 8809 0104 05       		.uleb128 0x5
 8810 0105 00       		.byte	0
 8811 0106 00       		.byte	0
 8812 0107 16       		.uleb128 0x16
 8813 0108 15       		.uleb128 0x15
 8814 0109 00       		.byte	0
 8815 010a 27       		.uleb128 0x27
 8816 010b 19       		.uleb128 0x19
 8817 010c 00       		.byte	0
 8818 010d 00       		.byte	0
 8819 010e 17       		.uleb128 0x17
 8820 010f 15       		.uleb128 0x15
 8821 0110 01       		.byte	0x1
 8822 0111 27       		.uleb128 0x27
 8823 0112 19       		.uleb128 0x19
 8824 0113 49       		.uleb128 0x49
 8825 0114 13       		.uleb128 0x13
 8826 0115 01       		.uleb128 0x1
 8827 0116 13       		.uleb128 0x13
 8828 0117 00       		.byte	0
 8829 0118 00       		.byte	0
 8830 0119 18       		.uleb128 0x18
 8831 011a 05       		.uleb128 0x5
ARM GAS  /tmp/ccTIydBQ.s 			page 216


 8832 011b 00       		.byte	0
 8833 011c 49       		.uleb128 0x49
 8834 011d 13       		.uleb128 0x13
 8835 011e 00       		.byte	0
 8836 011f 00       		.byte	0
 8837 0120 19       		.uleb128 0x19
 8838 0121 13       		.uleb128 0x13
 8839 0122 01       		.byte	0x1
 8840 0123 03       		.uleb128 0x3
 8841 0124 0E       		.uleb128 0xe
 8842 0125 0B       		.uleb128 0xb
 8843 0126 05       		.uleb128 0x5
 8844 0127 3A       		.uleb128 0x3a
 8845 0128 0B       		.uleb128 0xb
 8846 0129 3B       		.uleb128 0x3b
 8847 012a 05       		.uleb128 0x5
 8848 012b 01       		.uleb128 0x1
 8849 012c 13       		.uleb128 0x13
 8850 012d 00       		.byte	0
 8851 012e 00       		.byte	0
 8852 012f 1A       		.uleb128 0x1a
 8853 0130 0D       		.uleb128 0xd
 8854 0131 00       		.byte	0
 8855 0132 03       		.uleb128 0x3
 8856 0133 0E       		.uleb128 0xe
 8857 0134 3A       		.uleb128 0x3a
 8858 0135 0B       		.uleb128 0xb
 8859 0136 3B       		.uleb128 0x3b
 8860 0137 05       		.uleb128 0x5
 8861 0138 49       		.uleb128 0x49
 8862 0139 13       		.uleb128 0x13
 8863 013a 38       		.uleb128 0x38
 8864 013b 0B       		.uleb128 0xb
 8865 013c 00       		.byte	0
 8866 013d 00       		.byte	0
 8867 013e 1B       		.uleb128 0x1b
 8868 013f 0D       		.uleb128 0xd
 8869 0140 00       		.byte	0
 8870 0141 03       		.uleb128 0x3
 8871 0142 0E       		.uleb128 0xe
 8872 0143 3A       		.uleb128 0x3a
 8873 0144 0B       		.uleb128 0xb
 8874 0145 3B       		.uleb128 0x3b
 8875 0146 05       		.uleb128 0x5
 8876 0147 49       		.uleb128 0x49
 8877 0148 13       		.uleb128 0x13
 8878 0149 38       		.uleb128 0x38
 8879 014a 05       		.uleb128 0x5
 8880 014b 00       		.byte	0
 8881 014c 00       		.byte	0
 8882 014d 1C       		.uleb128 0x1c
 8883 014e 13       		.uleb128 0x13
 8884 014f 01       		.byte	0x1
 8885 0150 03       		.uleb128 0x3
 8886 0151 0E       		.uleb128 0xe
 8887 0152 0B       		.uleb128 0xb
 8888 0153 0B       		.uleb128 0xb
ARM GAS  /tmp/ccTIydBQ.s 			page 217


 8889 0154 3A       		.uleb128 0x3a
 8890 0155 0B       		.uleb128 0xb
 8891 0156 3B       		.uleb128 0x3b
 8892 0157 05       		.uleb128 0x5
 8893 0158 01       		.uleb128 0x1
 8894 0159 13       		.uleb128 0x13
 8895 015a 00       		.byte	0
 8896 015b 00       		.byte	0
 8897 015c 1D       		.uleb128 0x1d
 8898 015d 13       		.uleb128 0x13
 8899 015e 01       		.byte	0x1
 8900 015f 0B       		.uleb128 0xb
 8901 0160 0B       		.uleb128 0xb
 8902 0161 3A       		.uleb128 0x3a
 8903 0162 0B       		.uleb128 0xb
 8904 0163 3B       		.uleb128 0x3b
 8905 0164 05       		.uleb128 0x5
 8906 0165 01       		.uleb128 0x1
 8907 0166 13       		.uleb128 0x13
 8908 0167 00       		.byte	0
 8909 0168 00       		.byte	0
 8910 0169 1E       		.uleb128 0x1e
 8911 016a 17       		.uleb128 0x17
 8912 016b 01       		.byte	0x1
 8913 016c 0B       		.uleb128 0xb
 8914 016d 0B       		.uleb128 0xb
 8915 016e 3A       		.uleb128 0x3a
 8916 016f 0B       		.uleb128 0xb
 8917 0170 3B       		.uleb128 0x3b
 8918 0171 05       		.uleb128 0x5
 8919 0172 01       		.uleb128 0x1
 8920 0173 13       		.uleb128 0x13
 8921 0174 00       		.byte	0
 8922 0175 00       		.byte	0
 8923 0176 1F       		.uleb128 0x1f
 8924 0177 0D       		.uleb128 0xd
 8925 0178 00       		.byte	0
 8926 0179 03       		.uleb128 0x3
 8927 017a 0E       		.uleb128 0xe
 8928 017b 3A       		.uleb128 0x3a
 8929 017c 0B       		.uleb128 0xb
 8930 017d 3B       		.uleb128 0x3b
 8931 017e 05       		.uleb128 0x5
 8932 017f 49       		.uleb128 0x49
 8933 0180 13       		.uleb128 0x13
 8934 0181 00       		.byte	0
 8935 0182 00       		.byte	0
 8936 0183 20       		.uleb128 0x20
 8937 0184 15       		.uleb128 0x15
 8938 0185 01       		.byte	0x1
 8939 0186 27       		.uleb128 0x27
 8940 0187 19       		.uleb128 0x19
 8941 0188 01       		.uleb128 0x1
 8942 0189 13       		.uleb128 0x13
 8943 018a 00       		.byte	0
 8944 018b 00       		.byte	0
 8945 018c 21       		.uleb128 0x21
ARM GAS  /tmp/ccTIydBQ.s 			page 218


 8946 018d 26       		.uleb128 0x26
 8947 018e 00       		.byte	0
 8948 018f 00       		.byte	0
 8949 0190 00       		.byte	0
 8950 0191 22       		.uleb128 0x22
 8951 0192 34       		.uleb128 0x34
 8952 0193 00       		.byte	0
 8953 0194 03       		.uleb128 0x3
 8954 0195 0E       		.uleb128 0xe
 8955 0196 3A       		.uleb128 0x3a
 8956 0197 0B       		.uleb128 0xb
 8957 0198 3B       		.uleb128 0x3b
 8958 0199 0B       		.uleb128 0xb
 8959 019a 49       		.uleb128 0x49
 8960 019b 13       		.uleb128 0x13
 8961 019c 02       		.uleb128 0x2
 8962 019d 18       		.uleb128 0x18
 8963 019e 00       		.byte	0
 8964 019f 00       		.byte	0
 8965 01a0 23       		.uleb128 0x23
 8966 01a1 04       		.uleb128 0x4
 8967 01a2 01       		.byte	0x1
 8968 01a3 03       		.uleb128 0x3
 8969 01a4 0E       		.uleb128 0xe
 8970 01a5 0B       		.uleb128 0xb
 8971 01a6 0B       		.uleb128 0xb
 8972 01a7 49       		.uleb128 0x49
 8973 01a8 13       		.uleb128 0x13
 8974 01a9 3A       		.uleb128 0x3a
 8975 01aa 0B       		.uleb128 0xb
 8976 01ab 3B       		.uleb128 0x3b
 8977 01ac 05       		.uleb128 0x5
 8978 01ad 01       		.uleb128 0x1
 8979 01ae 13       		.uleb128 0x13
 8980 01af 00       		.byte	0
 8981 01b0 00       		.byte	0
 8982 01b1 24       		.uleb128 0x24
 8983 01b2 28       		.uleb128 0x28
 8984 01b3 00       		.byte	0
 8985 01b4 03       		.uleb128 0x3
 8986 01b5 0E       		.uleb128 0xe
 8987 01b6 1C       		.uleb128 0x1c
 8988 01b7 0D       		.uleb128 0xd
 8989 01b8 00       		.byte	0
 8990 01b9 00       		.byte	0
 8991 01ba 25       		.uleb128 0x25
 8992 01bb 28       		.uleb128 0x28
 8993 01bc 00       		.byte	0
 8994 01bd 03       		.uleb128 0x3
 8995 01be 0E       		.uleb128 0xe
 8996 01bf 1C       		.uleb128 0x1c
 8997 01c0 0B       		.uleb128 0xb
 8998 01c1 00       		.byte	0
 8999 01c2 00       		.byte	0
 9000 01c3 26       		.uleb128 0x26
 9001 01c4 16       		.uleb128 0x16
 9002 01c5 00       		.byte	0
ARM GAS  /tmp/ccTIydBQ.s 			page 219


 9003 01c6 03       		.uleb128 0x3
 9004 01c7 08       		.uleb128 0x8
 9005 01c8 3A       		.uleb128 0x3a
 9006 01c9 0B       		.uleb128 0xb
 9007 01ca 3B       		.uleb128 0x3b
 9008 01cb 0B       		.uleb128 0xb
 9009 01cc 49       		.uleb128 0x49
 9010 01cd 13       		.uleb128 0x13
 9011 01ce 00       		.byte	0
 9012 01cf 00       		.byte	0
 9013 01d0 27       		.uleb128 0x27
 9014 01d1 34       		.uleb128 0x34
 9015 01d2 00       		.byte	0
 9016 01d3 03       		.uleb128 0x3
 9017 01d4 0E       		.uleb128 0xe
 9018 01d5 3A       		.uleb128 0x3a
 9019 01d6 0B       		.uleb128 0xb
 9020 01d7 3B       		.uleb128 0x3b
 9021 01d8 0B       		.uleb128 0xb
 9022 01d9 49       		.uleb128 0x49
 9023 01da 13       		.uleb128 0x13
 9024 01db 1C       		.uleb128 0x1c
 9025 01dc 0D       		.uleb128 0xd
 9026 01dd 00       		.byte	0
 9027 01de 00       		.byte	0
 9028 01df 28       		.uleb128 0x28
 9029 01e0 34       		.uleb128 0x34
 9030 01e1 00       		.byte	0
 9031 01e2 03       		.uleb128 0x3
 9032 01e3 0E       		.uleb128 0xe
 9033 01e4 3A       		.uleb128 0x3a
 9034 01e5 0B       		.uleb128 0xb
 9035 01e6 3B       		.uleb128 0x3b
 9036 01e7 0B       		.uleb128 0xb
 9037 01e8 49       		.uleb128 0x49
 9038 01e9 13       		.uleb128 0x13
 9039 01ea 1C       		.uleb128 0x1c
 9040 01eb 0B       		.uleb128 0xb
 9041 01ec 00       		.byte	0
 9042 01ed 00       		.byte	0
 9043 01ee 29       		.uleb128 0x29
 9044 01ef 34       		.uleb128 0x34
 9045 01f0 00       		.byte	0
 9046 01f1 03       		.uleb128 0x3
 9047 01f2 0E       		.uleb128 0xe
 9048 01f3 3A       		.uleb128 0x3a
 9049 01f4 0B       		.uleb128 0xb
 9050 01f5 3B       		.uleb128 0x3b
 9051 01f6 0B       		.uleb128 0xb
 9052 01f7 49       		.uleb128 0x49
 9053 01f8 13       		.uleb128 0x13
 9054 01f9 1C       		.uleb128 0x1c
 9055 01fa 06       		.uleb128 0x6
 9056 01fb 00       		.byte	0
 9057 01fc 00       		.byte	0
 9058 01fd 2A       		.uleb128 0x2a
 9059 01fe 34       		.uleb128 0x34
ARM GAS  /tmp/ccTIydBQ.s 			page 220


 9060 01ff 00       		.byte	0
 9061 0200 03       		.uleb128 0x3
 9062 0201 0E       		.uleb128 0xe
 9063 0202 3A       		.uleb128 0x3a
 9064 0203 0B       		.uleb128 0xb
 9065 0204 3B       		.uleb128 0x3b
 9066 0205 0B       		.uleb128 0xb
 9067 0206 49       		.uleb128 0x49
 9068 0207 13       		.uleb128 0x13
 9069 0208 1C       		.uleb128 0x1c
 9070 0209 05       		.uleb128 0x5
 9071 020a 00       		.byte	0
 9072 020b 00       		.byte	0
 9073 020c 2B       		.uleb128 0x2b
 9074 020d 04       		.uleb128 0x4
 9075 020e 01       		.byte	0x1
 9076 020f 03       		.uleb128 0x3
 9077 0210 0E       		.uleb128 0xe
 9078 0211 0B       		.uleb128 0xb
 9079 0212 0B       		.uleb128 0xb
 9080 0213 49       		.uleb128 0x49
 9081 0214 13       		.uleb128 0x13
 9082 0215 3A       		.uleb128 0x3a
 9083 0216 0B       		.uleb128 0xb
 9084 0217 3B       		.uleb128 0x3b
 9085 0218 0B       		.uleb128 0xb
 9086 0219 01       		.uleb128 0x1
 9087 021a 13       		.uleb128 0x13
 9088 021b 00       		.byte	0
 9089 021c 00       		.byte	0
 9090 021d 2C       		.uleb128 0x2c
 9091 021e 28       		.uleb128 0x28
 9092 021f 00       		.byte	0
 9093 0220 03       		.uleb128 0x3
 9094 0221 08       		.uleb128 0x8
 9095 0222 1C       		.uleb128 0x1c
 9096 0223 0B       		.uleb128 0xb
 9097 0224 00       		.byte	0
 9098 0225 00       		.byte	0
 9099 0226 2D       		.uleb128 0x2d
 9100 0227 15       		.uleb128 0x15
 9101 0228 00       		.byte	0
 9102 0229 27       		.uleb128 0x27
 9103 022a 19       		.uleb128 0x19
 9104 022b 49       		.uleb128 0x49
 9105 022c 13       		.uleb128 0x13
 9106 022d 00       		.byte	0
 9107 022e 00       		.byte	0
 9108 022f 2E       		.uleb128 0x2e
 9109 0230 34       		.uleb128 0x34
 9110 0231 00       		.byte	0
 9111 0232 03       		.uleb128 0x3
 9112 0233 0E       		.uleb128 0xe
 9113 0234 3A       		.uleb128 0x3a
 9114 0235 0B       		.uleb128 0xb
 9115 0236 3B       		.uleb128 0x3b
 9116 0237 0B       		.uleb128 0xb
ARM GAS  /tmp/ccTIydBQ.s 			page 221


 9117 0238 49       		.uleb128 0x49
 9118 0239 13       		.uleb128 0x13
 9119 023a 3F       		.uleb128 0x3f
 9120 023b 19       		.uleb128 0x19
 9121 023c 02       		.uleb128 0x2
 9122 023d 18       		.uleb128 0x18
 9123 023e 00       		.byte	0
 9124 023f 00       		.byte	0
 9125 0240 2F       		.uleb128 0x2f
 9126 0241 2E       		.uleb128 0x2e
 9127 0242 01       		.byte	0x1
 9128 0243 3F       		.uleb128 0x3f
 9129 0244 19       		.uleb128 0x19
 9130 0245 03       		.uleb128 0x3
 9131 0246 0E       		.uleb128 0xe
 9132 0247 3A       		.uleb128 0x3a
 9133 0248 0B       		.uleb128 0xb
 9134 0249 3B       		.uleb128 0x3b
 9135 024a 05       		.uleb128 0x5
 9136 024b 27       		.uleb128 0x27
 9137 024c 19       		.uleb128 0x19
 9138 024d 49       		.uleb128 0x49
 9139 024e 13       		.uleb128 0x13
 9140 024f 11       		.uleb128 0x11
 9141 0250 01       		.uleb128 0x1
 9142 0251 12       		.uleb128 0x12
 9143 0252 06       		.uleb128 0x6
 9144 0253 40       		.uleb128 0x40
 9145 0254 18       		.uleb128 0x18
 9146 0255 9642     		.uleb128 0x2116
 9147 0257 19       		.uleb128 0x19
 9148 0258 01       		.uleb128 0x1
 9149 0259 13       		.uleb128 0x13
 9150 025a 00       		.byte	0
 9151 025b 00       		.byte	0
 9152 025c 30       		.uleb128 0x30
 9153 025d 05       		.uleb128 0x5
 9154 025e 00       		.byte	0
 9155 025f 03       		.uleb128 0x3
 9156 0260 0E       		.uleb128 0xe
 9157 0261 3A       		.uleb128 0x3a
 9158 0262 0B       		.uleb128 0xb
 9159 0263 3B       		.uleb128 0x3b
 9160 0264 05       		.uleb128 0x5
 9161 0265 49       		.uleb128 0x49
 9162 0266 13       		.uleb128 0x13
 9163 0267 02       		.uleb128 0x2
 9164 0268 17       		.uleb128 0x17
 9165 0269 00       		.byte	0
 9166 026a 00       		.byte	0
 9167 026b 31       		.uleb128 0x31
 9168 026c 1D       		.uleb128 0x1d
 9169 026d 01       		.byte	0x1
 9170 026e 31       		.uleb128 0x31
 9171 026f 13       		.uleb128 0x13
 9172 0270 52       		.uleb128 0x52
 9173 0271 01       		.uleb128 0x1
ARM GAS  /tmp/ccTIydBQ.s 			page 222


 9174 0272 55       		.uleb128 0x55
 9175 0273 17       		.uleb128 0x17
 9176 0274 58       		.uleb128 0x58
 9177 0275 0B       		.uleb128 0xb
 9178 0276 59       		.uleb128 0x59
 9179 0277 05       		.uleb128 0x5
 9180 0278 01       		.uleb128 0x1
 9181 0279 13       		.uleb128 0x13
 9182 027a 00       		.byte	0
 9183 027b 00       		.byte	0
 9184 027c 32       		.uleb128 0x32
 9185 027d 898201   		.uleb128 0x4109
 9186 0280 00       		.byte	0
 9187 0281 11       		.uleb128 0x11
 9188 0282 01       		.uleb128 0x1
 9189 0283 31       		.uleb128 0x31
 9190 0284 13       		.uleb128 0x13
 9191 0285 00       		.byte	0
 9192 0286 00       		.byte	0
 9193 0287 33       		.uleb128 0x33
 9194 0288 1D       		.uleb128 0x1d
 9195 0289 01       		.byte	0x1
 9196 028a 31       		.uleb128 0x31
 9197 028b 13       		.uleb128 0x13
 9198 028c 11       		.uleb128 0x11
 9199 028d 01       		.uleb128 0x1
 9200 028e 12       		.uleb128 0x12
 9201 028f 06       		.uleb128 0x6
 9202 0290 58       		.uleb128 0x58
 9203 0291 0B       		.uleb128 0xb
 9204 0292 59       		.uleb128 0x59
 9205 0293 05       		.uleb128 0x5
 9206 0294 01       		.uleb128 0x1
 9207 0295 13       		.uleb128 0x13
 9208 0296 00       		.byte	0
 9209 0297 00       		.byte	0
 9210 0298 34       		.uleb128 0x34
 9211 0299 898201   		.uleb128 0x4109
 9212 029c 01       		.byte	0x1
 9213 029d 11       		.uleb128 0x11
 9214 029e 01       		.uleb128 0x1
 9215 029f 00       		.byte	0
 9216 02a0 00       		.byte	0
 9217 02a1 35       		.uleb128 0x35
 9218 02a2 8A8201   		.uleb128 0x410a
 9219 02a5 00       		.byte	0
 9220 02a6 02       		.uleb128 0x2
 9221 02a7 18       		.uleb128 0x18
 9222 02a8 9142     		.uleb128 0x2111
 9223 02aa 18       		.uleb128 0x18
 9224 02ab 00       		.byte	0
 9225 02ac 00       		.byte	0
 9226 02ad 36       		.uleb128 0x36
 9227 02ae 2E       		.uleb128 0x2e
 9228 02af 01       		.byte	0x1
 9229 02b0 3F       		.uleb128 0x3f
 9230 02b1 19       		.uleb128 0x19
ARM GAS  /tmp/ccTIydBQ.s 			page 223


 9231 02b2 03       		.uleb128 0x3
 9232 02b3 0E       		.uleb128 0xe
 9233 02b4 3A       		.uleb128 0x3a
 9234 02b5 0B       		.uleb128 0xb
 9235 02b6 3B       		.uleb128 0x3b
 9236 02b7 05       		.uleb128 0x5
 9237 02b8 27       		.uleb128 0x27
 9238 02b9 19       		.uleb128 0x19
 9239 02ba 49       		.uleb128 0x49
 9240 02bb 13       		.uleb128 0x13
 9241 02bc 11       		.uleb128 0x11
 9242 02bd 01       		.uleb128 0x1
 9243 02be 12       		.uleb128 0x12
 9244 02bf 06       		.uleb128 0x6
 9245 02c0 40       		.uleb128 0x40
 9246 02c1 18       		.uleb128 0x18
 9247 02c2 9742     		.uleb128 0x2117
 9248 02c4 19       		.uleb128 0x19
 9249 02c5 01       		.uleb128 0x1
 9250 02c6 13       		.uleb128 0x13
 9251 02c7 00       		.byte	0
 9252 02c8 00       		.byte	0
 9253 02c9 37       		.uleb128 0x37
 9254 02ca 05       		.uleb128 0x5
 9255 02cb 00       		.byte	0
 9256 02cc 03       		.uleb128 0x3
 9257 02cd 08       		.uleb128 0x8
 9258 02ce 3A       		.uleb128 0x3a
 9259 02cf 0B       		.uleb128 0xb
 9260 02d0 3B       		.uleb128 0x3b
 9261 02d1 05       		.uleb128 0x5
 9262 02d2 49       		.uleb128 0x49
 9263 02d3 13       		.uleb128 0x13
 9264 02d4 02       		.uleb128 0x2
 9265 02d5 17       		.uleb128 0x17
 9266 02d6 00       		.byte	0
 9267 02d7 00       		.byte	0
 9268 02d8 38       		.uleb128 0x38
 9269 02d9 34       		.uleb128 0x34
 9270 02da 00       		.byte	0
 9271 02db 03       		.uleb128 0x3
 9272 02dc 0E       		.uleb128 0xe
 9273 02dd 3A       		.uleb128 0x3a
 9274 02de 0B       		.uleb128 0xb
 9275 02df 3B       		.uleb128 0x3b
 9276 02e0 05       		.uleb128 0x5
 9277 02e1 49       		.uleb128 0x49
 9278 02e2 13       		.uleb128 0x13
 9279 02e3 00       		.byte	0
 9280 02e4 00       		.byte	0
 9281 02e5 39       		.uleb128 0x39
 9282 02e6 34       		.uleb128 0x34
 9283 02e7 00       		.byte	0
 9284 02e8 03       		.uleb128 0x3
 9285 02e9 08       		.uleb128 0x8
 9286 02ea 3A       		.uleb128 0x3a
 9287 02eb 0B       		.uleb128 0xb
ARM GAS  /tmp/ccTIydBQ.s 			page 224


 9288 02ec 3B       		.uleb128 0x3b
 9289 02ed 05       		.uleb128 0x5
 9290 02ee 49       		.uleb128 0x49
 9291 02ef 13       		.uleb128 0x13
 9292 02f0 02       		.uleb128 0x2
 9293 02f1 17       		.uleb128 0x17
 9294 02f2 00       		.byte	0
 9295 02f3 00       		.byte	0
 9296 02f4 3A       		.uleb128 0x3a
 9297 02f5 34       		.uleb128 0x34
 9298 02f6 00       		.byte	0
 9299 02f7 03       		.uleb128 0x3
 9300 02f8 0E       		.uleb128 0xe
 9301 02f9 3A       		.uleb128 0x3a
 9302 02fa 0B       		.uleb128 0xb
 9303 02fb 3B       		.uleb128 0x3b
 9304 02fc 05       		.uleb128 0x5
 9305 02fd 49       		.uleb128 0x49
 9306 02fe 13       		.uleb128 0x13
 9307 02ff 02       		.uleb128 0x2
 9308 0300 17       		.uleb128 0x17
 9309 0301 00       		.byte	0
 9310 0302 00       		.byte	0
 9311 0303 3B       		.uleb128 0x3b
 9312 0304 05       		.uleb128 0x5
 9313 0305 00       		.byte	0
 9314 0306 31       		.uleb128 0x31
 9315 0307 13       		.uleb128 0x13
 9316 0308 02       		.uleb128 0x2
 9317 0309 17       		.uleb128 0x17
 9318 030a 00       		.byte	0
 9319 030b 00       		.byte	0
 9320 030c 3C       		.uleb128 0x3c
 9321 030d 898201   		.uleb128 0x4109
 9322 0310 01       		.byte	0x1
 9323 0311 11       		.uleb128 0x11
 9324 0312 01       		.uleb128 0x1
 9325 0313 31       		.uleb128 0x31
 9326 0314 13       		.uleb128 0x13
 9327 0315 00       		.byte	0
 9328 0316 00       		.byte	0
 9329 0317 3D       		.uleb128 0x3d
 9330 0318 898201   		.uleb128 0x4109
 9331 031b 01       		.byte	0x1
 9332 031c 11       		.uleb128 0x11
 9333 031d 01       		.uleb128 0x1
 9334 031e 9342     		.uleb128 0x2113
 9335 0320 18       		.uleb128 0x18
 9336 0321 00       		.byte	0
 9337 0322 00       		.byte	0
 9338 0323 3E       		.uleb128 0x3e
 9339 0324 898201   		.uleb128 0x4109
 9340 0327 01       		.byte	0x1
 9341 0328 11       		.uleb128 0x11
 9342 0329 01       		.uleb128 0x1
 9343 032a 01       		.uleb128 0x1
 9344 032b 13       		.uleb128 0x13
ARM GAS  /tmp/ccTIydBQ.s 			page 225


 9345 032c 00       		.byte	0
 9346 032d 00       		.byte	0
 9347 032e 3F       		.uleb128 0x3f
 9348 032f 2E       		.uleb128 0x2e
 9349 0330 01       		.byte	0x1
 9350 0331 3F       		.uleb128 0x3f
 9351 0332 19       		.uleb128 0x19
 9352 0333 03       		.uleb128 0x3
 9353 0334 0E       		.uleb128 0xe
 9354 0335 3A       		.uleb128 0x3a
 9355 0336 0B       		.uleb128 0xb
 9356 0337 3B       		.uleb128 0x3b
 9357 0338 05       		.uleb128 0x5
 9358 0339 27       		.uleb128 0x27
 9359 033a 19       		.uleb128 0x19
 9360 033b 49       		.uleb128 0x49
 9361 033c 13       		.uleb128 0x13
 9362 033d 11       		.uleb128 0x11
 9363 033e 01       		.uleb128 0x1
 9364 033f 12       		.uleb128 0x12
 9365 0340 06       		.uleb128 0x6
 9366 0341 40       		.uleb128 0x40
 9367 0342 18       		.uleb128 0x18
 9368 0343 01       		.uleb128 0x1
 9369 0344 13       		.uleb128 0x13
 9370 0345 00       		.byte	0
 9371 0346 00       		.byte	0
 9372 0347 40       		.uleb128 0x40
 9373 0348 2E       		.uleb128 0x2e
 9374 0349 01       		.byte	0x1
 9375 034a 3F       		.uleb128 0x3f
 9376 034b 19       		.uleb128 0x19
 9377 034c 03       		.uleb128 0x3
 9378 034d 0E       		.uleb128 0xe
 9379 034e 3A       		.uleb128 0x3a
 9380 034f 0B       		.uleb128 0xb
 9381 0350 3B       		.uleb128 0x3b
 9382 0351 05       		.uleb128 0x5
 9383 0352 27       		.uleb128 0x27
 9384 0353 19       		.uleb128 0x19
 9385 0354 11       		.uleb128 0x11
 9386 0355 01       		.uleb128 0x1
 9387 0356 12       		.uleb128 0x12
 9388 0357 06       		.uleb128 0x6
 9389 0358 40       		.uleb128 0x40
 9390 0359 18       		.uleb128 0x18
 9391 035a 9742     		.uleb128 0x2117
 9392 035c 19       		.uleb128 0x19
 9393 035d 01       		.uleb128 0x1
 9394 035e 13       		.uleb128 0x13
 9395 035f 00       		.byte	0
 9396 0360 00       		.byte	0
 9397 0361 41       		.uleb128 0x41
 9398 0362 2E       		.uleb128 0x2e
 9399 0363 01       		.byte	0x1
 9400 0364 3F       		.uleb128 0x3f
 9401 0365 19       		.uleb128 0x19
ARM GAS  /tmp/ccTIydBQ.s 			page 226


 9402 0366 03       		.uleb128 0x3
 9403 0367 0E       		.uleb128 0xe
 9404 0368 3A       		.uleb128 0x3a
 9405 0369 0B       		.uleb128 0xb
 9406 036a 3B       		.uleb128 0x3b
 9407 036b 05       		.uleb128 0x5
 9408 036c 27       		.uleb128 0x27
 9409 036d 19       		.uleb128 0x19
 9410 036e 49       		.uleb128 0x49
 9411 036f 13       		.uleb128 0x13
 9412 0370 20       		.uleb128 0x20
 9413 0371 0B       		.uleb128 0xb
 9414 0372 01       		.uleb128 0x1
 9415 0373 13       		.uleb128 0x13
 9416 0374 00       		.byte	0
 9417 0375 00       		.byte	0
 9418 0376 42       		.uleb128 0x42
 9419 0377 05       		.uleb128 0x5
 9420 0378 00       		.byte	0
 9421 0379 03       		.uleb128 0x3
 9422 037a 0E       		.uleb128 0xe
 9423 037b 3A       		.uleb128 0x3a
 9424 037c 0B       		.uleb128 0xb
 9425 037d 3B       		.uleb128 0x3b
 9426 037e 05       		.uleb128 0x5
 9427 037f 49       		.uleb128 0x49
 9428 0380 13       		.uleb128 0x13
 9429 0381 00       		.byte	0
 9430 0382 00       		.byte	0
 9431 0383 43       		.uleb128 0x43
 9432 0384 1D       		.uleb128 0x1d
 9433 0385 01       		.byte	0x1
 9434 0386 31       		.uleb128 0x31
 9435 0387 13       		.uleb128 0x13
 9436 0388 52       		.uleb128 0x52
 9437 0389 01       		.uleb128 0x1
 9438 038a 55       		.uleb128 0x55
 9439 038b 17       		.uleb128 0x17
 9440 038c 58       		.uleb128 0x58
 9441 038d 0B       		.uleb128 0xb
 9442 038e 59       		.uleb128 0x59
 9443 038f 05       		.uleb128 0x5
 9444 0390 00       		.byte	0
 9445 0391 00       		.byte	0
 9446 0392 44       		.uleb128 0x44
 9447 0393 1D       		.uleb128 0x1d
 9448 0394 00       		.byte	0
 9449 0395 31       		.uleb128 0x31
 9450 0396 13       		.uleb128 0x13
 9451 0397 11       		.uleb128 0x11
 9452 0398 01       		.uleb128 0x1
 9453 0399 12       		.uleb128 0x12
 9454 039a 06       		.uleb128 0x6
 9455 039b 58       		.uleb128 0x58
 9456 039c 0B       		.uleb128 0xb
 9457 039d 59       		.uleb128 0x59
 9458 039e 05       		.uleb128 0x5
ARM GAS  /tmp/ccTIydBQ.s 			page 227


 9459 039f 00       		.byte	0
 9460 03a0 00       		.byte	0
 9461 03a1 45       		.uleb128 0x45
 9462 03a2 0B       		.uleb128 0xb
 9463 03a3 01       		.byte	0x1
 9464 03a4 55       		.uleb128 0x55
 9465 03a5 17       		.uleb128 0x17
 9466 03a6 00       		.byte	0
 9467 03a7 00       		.byte	0
 9468 03a8 46       		.uleb128 0x46
 9469 03a9 34       		.uleb128 0x34
 9470 03aa 00       		.byte	0
 9471 03ab 31       		.uleb128 0x31
 9472 03ac 13       		.uleb128 0x13
 9473 03ad 02       		.uleb128 0x2
 9474 03ae 18       		.uleb128 0x18
 9475 03af 00       		.byte	0
 9476 03b0 00       		.byte	0
 9477 03b1 47       		.uleb128 0x47
 9478 03b2 898201   		.uleb128 0x4109
 9479 03b5 00       		.byte	0
 9480 03b6 11       		.uleb128 0x11
 9481 03b7 01       		.uleb128 0x1
 9482 03b8 9342     		.uleb128 0x2113
 9483 03ba 18       		.uleb128 0x18
 9484 03bb 00       		.byte	0
 9485 03bc 00       		.byte	0
 9486 03bd 48       		.uleb128 0x48
 9487 03be 34       		.uleb128 0x34
 9488 03bf 00       		.byte	0
 9489 03c0 31       		.uleb128 0x31
 9490 03c1 13       		.uleb128 0x13
 9491 03c2 02       		.uleb128 0x2
 9492 03c3 17       		.uleb128 0x17
 9493 03c4 00       		.byte	0
 9494 03c5 00       		.byte	0
 9495 03c6 49       		.uleb128 0x49
 9496 03c7 0B       		.uleb128 0xb
 9497 03c8 01       		.byte	0x1
 9498 03c9 11       		.uleb128 0x11
 9499 03ca 01       		.uleb128 0x1
 9500 03cb 12       		.uleb128 0x12
 9501 03cc 06       		.uleb128 0x6
 9502 03cd 00       		.byte	0
 9503 03ce 00       		.byte	0
 9504 03cf 4A       		.uleb128 0x4a
 9505 03d0 898201   		.uleb128 0x4109
 9506 03d3 01       		.byte	0x1
 9507 03d4 11       		.uleb128 0x11
 9508 03d5 01       		.uleb128 0x1
 9509 03d6 31       		.uleb128 0x31
 9510 03d7 13       		.uleb128 0x13
 9511 03d8 01       		.uleb128 0x1
 9512 03d9 13       		.uleb128 0x13
 9513 03da 00       		.byte	0
 9514 03db 00       		.byte	0
 9515 03dc 4B       		.uleb128 0x4b
ARM GAS  /tmp/ccTIydBQ.s 			page 228


 9516 03dd 898201   		.uleb128 0x4109
 9517 03e0 01       		.byte	0x1
 9518 03e1 11       		.uleb128 0x11
 9519 03e2 01       		.uleb128 0x1
 9520 03e3 9342     		.uleb128 0x2113
 9521 03e5 18       		.uleb128 0x18
 9522 03e6 01       		.uleb128 0x1
 9523 03e7 13       		.uleb128 0x13
 9524 03e8 00       		.byte	0
 9525 03e9 00       		.byte	0
 9526 03ea 4C       		.uleb128 0x4c
 9527 03eb 1D       		.uleb128 0x1d
 9528 03ec 00       		.byte	0
 9529 03ed 31       		.uleb128 0x31
 9530 03ee 13       		.uleb128 0x13
 9531 03ef 52       		.uleb128 0x52
 9532 03f0 01       		.uleb128 0x1
 9533 03f1 55       		.uleb128 0x55
 9534 03f2 17       		.uleb128 0x17
 9535 03f3 58       		.uleb128 0x58
 9536 03f4 0B       		.uleb128 0xb
 9537 03f5 59       		.uleb128 0x59
 9538 03f6 05       		.uleb128 0x5
 9539 03f7 00       		.byte	0
 9540 03f8 00       		.byte	0
 9541 03f9 4D       		.uleb128 0x4d
 9542 03fa 2E       		.uleb128 0x2e
 9543 03fb 00       		.byte	0
 9544 03fc 3F       		.uleb128 0x3f
 9545 03fd 19       		.uleb128 0x19
 9546 03fe 03       		.uleb128 0x3
 9547 03ff 0E       		.uleb128 0xe
 9548 0400 3A       		.uleb128 0x3a
 9549 0401 0B       		.uleb128 0xb
 9550 0402 3B       		.uleb128 0x3b
 9551 0403 05       		.uleb128 0x5
 9552 0404 27       		.uleb128 0x27
 9553 0405 19       		.uleb128 0x19
 9554 0406 49       		.uleb128 0x49
 9555 0407 13       		.uleb128 0x13
 9556 0408 11       		.uleb128 0x11
 9557 0409 01       		.uleb128 0x1
 9558 040a 12       		.uleb128 0x12
 9559 040b 06       		.uleb128 0x6
 9560 040c 40       		.uleb128 0x40
 9561 040d 18       		.uleb128 0x18
 9562 040e 9742     		.uleb128 0x2117
 9563 0410 19       		.uleb128 0x19
 9564 0411 00       		.byte	0
 9565 0412 00       		.byte	0
 9566 0413 4E       		.uleb128 0x4e
 9567 0414 0B       		.uleb128 0xb
 9568 0415 01       		.byte	0x1
 9569 0416 55       		.uleb128 0x55
 9570 0417 17       		.uleb128 0x17
 9571 0418 01       		.uleb128 0x1
 9572 0419 13       		.uleb128 0x13
ARM GAS  /tmp/ccTIydBQ.s 			page 229


 9573 041a 00       		.byte	0
 9574 041b 00       		.byte	0
 9575 041c 4F       		.uleb128 0x4f
 9576 041d 898201   		.uleb128 0x4109
 9577 0420 01       		.byte	0x1
 9578 0421 11       		.uleb128 0x11
 9579 0422 01       		.uleb128 0x1
 9580 0423 9542     		.uleb128 0x2115
 9581 0425 19       		.uleb128 0x19
 9582 0426 31       		.uleb128 0x31
 9583 0427 13       		.uleb128 0x13
 9584 0428 00       		.byte	0
 9585 0429 00       		.byte	0
 9586 042a 50       		.uleb128 0x50
 9587 042b 2E       		.uleb128 0x2e
 9588 042c 01       		.byte	0x1
 9589 042d 03       		.uleb128 0x3
 9590 042e 0E       		.uleb128 0xe
 9591 042f 3A       		.uleb128 0x3a
 9592 0430 0B       		.uleb128 0xb
 9593 0431 3B       		.uleb128 0x3b
 9594 0432 05       		.uleb128 0x5
 9595 0433 27       		.uleb128 0x27
 9596 0434 19       		.uleb128 0x19
 9597 0435 49       		.uleb128 0x49
 9598 0436 13       		.uleb128 0x13
 9599 0437 20       		.uleb128 0x20
 9600 0438 0B       		.uleb128 0xb
 9601 0439 01       		.uleb128 0x1
 9602 043a 13       		.uleb128 0x13
 9603 043b 00       		.byte	0
 9604 043c 00       		.byte	0
 9605 043d 51       		.uleb128 0x51
 9606 043e 34       		.uleb128 0x34
 9607 043f 00       		.byte	0
 9608 0440 03       		.uleb128 0x3
 9609 0441 08       		.uleb128 0x8
 9610 0442 3A       		.uleb128 0x3a
 9611 0443 0B       		.uleb128 0xb
 9612 0444 3B       		.uleb128 0x3b
 9613 0445 05       		.uleb128 0x5
 9614 0446 49       		.uleb128 0x49
 9615 0447 13       		.uleb128 0x13
 9616 0448 00       		.byte	0
 9617 0449 00       		.byte	0
 9618 044a 52       		.uleb128 0x52
 9619 044b 2E       		.uleb128 0x2e
 9620 044c 00       		.byte	0
 9621 044d 03       		.uleb128 0x3
 9622 044e 0E       		.uleb128 0xe
 9623 044f 3A       		.uleb128 0x3a
 9624 0450 0B       		.uleb128 0xb
 9625 0451 3B       		.uleb128 0x3b
 9626 0452 05       		.uleb128 0x5
 9627 0453 27       		.uleb128 0x27
 9628 0454 19       		.uleb128 0x19
 9629 0455 20       		.uleb128 0x20
ARM GAS  /tmp/ccTIydBQ.s 			page 230


 9630 0456 0B       		.uleb128 0xb
 9631 0457 00       		.byte	0
 9632 0458 00       		.byte	0
 9633 0459 53       		.uleb128 0x53
 9634 045a 2E       		.uleb128 0x2e
 9635 045b 00       		.byte	0
 9636 045c 03       		.uleb128 0x3
 9637 045d 0E       		.uleb128 0xe
 9638 045e 3A       		.uleb128 0x3a
 9639 045f 0B       		.uleb128 0xb
 9640 0460 3B       		.uleb128 0x3b
 9641 0461 05       		.uleb128 0x5
 9642 0462 27       		.uleb128 0x27
 9643 0463 19       		.uleb128 0x19
 9644 0464 49       		.uleb128 0x49
 9645 0465 13       		.uleb128 0x13
 9646 0466 20       		.uleb128 0x20
 9647 0467 0B       		.uleb128 0xb
 9648 0468 00       		.byte	0
 9649 0469 00       		.byte	0
 9650 046a 54       		.uleb128 0x54
 9651 046b 2E       		.uleb128 0x2e
 9652 046c 01       		.byte	0x1
 9653 046d 03       		.uleb128 0x3
 9654 046e 0E       		.uleb128 0xe
 9655 046f 3A       		.uleb128 0x3a
 9656 0470 0B       		.uleb128 0xb
 9657 0471 3B       		.uleb128 0x3b
 9658 0472 05       		.uleb128 0x5
 9659 0473 27       		.uleb128 0x27
 9660 0474 19       		.uleb128 0x19
 9661 0475 49       		.uleb128 0x49
 9662 0476 13       		.uleb128 0x13
 9663 0477 11       		.uleb128 0x11
 9664 0478 01       		.uleb128 0x1
 9665 0479 12       		.uleb128 0x12
 9666 047a 06       		.uleb128 0x6
 9667 047b 40       		.uleb128 0x40
 9668 047c 18       		.uleb128 0x18
 9669 047d 9642     		.uleb128 0x2116
 9670 047f 19       		.uleb128 0x19
 9671 0480 01       		.uleb128 0x1
 9672 0481 13       		.uleb128 0x13
 9673 0482 00       		.byte	0
 9674 0483 00       		.byte	0
 9675 0484 55       		.uleb128 0x55
 9676 0485 2E       		.uleb128 0x2e
 9677 0486 01       		.byte	0x1
 9678 0487 03       		.uleb128 0x3
 9679 0488 0E       		.uleb128 0xe
 9680 0489 3A       		.uleb128 0x3a
 9681 048a 0B       		.uleb128 0xb
 9682 048b 3B       		.uleb128 0x3b
 9683 048c 05       		.uleb128 0x5
 9684 048d 27       		.uleb128 0x27
 9685 048e 19       		.uleb128 0x19
 9686 048f 11       		.uleb128 0x11
ARM GAS  /tmp/ccTIydBQ.s 			page 231


 9687 0490 01       		.uleb128 0x1
 9688 0491 12       		.uleb128 0x12
 9689 0492 06       		.uleb128 0x6
 9690 0493 40       		.uleb128 0x40
 9691 0494 18       		.uleb128 0x18
 9692 0495 9742     		.uleb128 0x2117
 9693 0497 19       		.uleb128 0x19
 9694 0498 01       		.uleb128 0x1
 9695 0499 13       		.uleb128 0x13
 9696 049a 00       		.byte	0
 9697 049b 00       		.byte	0
 9698 049c 56       		.uleb128 0x56
 9699 049d 05       		.uleb128 0x5
 9700 049e 00       		.byte	0
 9701 049f 31       		.uleb128 0x31
 9702 04a0 13       		.uleb128 0x13
 9703 04a1 00       		.byte	0
 9704 04a2 00       		.byte	0
 9705 04a3 57       		.uleb128 0x57
 9706 04a4 34       		.uleb128 0x34
 9707 04a5 00       		.byte	0
 9708 04a6 31       		.uleb128 0x31
 9709 04a7 13       		.uleb128 0x13
 9710 04a8 00       		.byte	0
 9711 04a9 00       		.byte	0
 9712 04aa 58       		.uleb128 0x58
 9713 04ab 1D       		.uleb128 0x1d
 9714 04ac 01       		.byte	0x1
 9715 04ad 31       		.uleb128 0x31
 9716 04ae 13       		.uleb128 0x13
 9717 04af 11       		.uleb128 0x11
 9718 04b0 01       		.uleb128 0x1
 9719 04b1 12       		.uleb128 0x12
 9720 04b2 06       		.uleb128 0x6
 9721 04b3 58       		.uleb128 0x58
 9722 04b4 0B       		.uleb128 0xb
 9723 04b5 59       		.uleb128 0x59
 9724 04b6 05       		.uleb128 0x5
 9725 04b7 00       		.byte	0
 9726 04b8 00       		.byte	0
 9727 04b9 59       		.uleb128 0x59
 9728 04ba 0B       		.uleb128 0xb
 9729 04bb 01       		.byte	0x1
 9730 04bc 11       		.uleb128 0x11
 9731 04bd 01       		.uleb128 0x1
 9732 04be 12       		.uleb128 0x12
 9733 04bf 06       		.uleb128 0x6
 9734 04c0 01       		.uleb128 0x1
 9735 04c1 13       		.uleb128 0x13
 9736 04c2 00       		.byte	0
 9737 04c3 00       		.byte	0
 9738 04c4 5A       		.uleb128 0x5a
 9739 04c5 05       		.uleb128 0x5
 9740 04c6 00       		.byte	0
 9741 04c7 03       		.uleb128 0x3
 9742 04c8 08       		.uleb128 0x8
 9743 04c9 3A       		.uleb128 0x3a
ARM GAS  /tmp/ccTIydBQ.s 			page 232


 9744 04ca 0B       		.uleb128 0xb
 9745 04cb 3B       		.uleb128 0x3b
 9746 04cc 05       		.uleb128 0x5
 9747 04cd 49       		.uleb128 0x49
 9748 04ce 13       		.uleb128 0x13
 9749 04cf 00       		.byte	0
 9750 04d0 00       		.byte	0
 9751 04d1 5B       		.uleb128 0x5b
 9752 04d2 2E       		.uleb128 0x2e
 9753 04d3 01       		.byte	0x1
 9754 04d4 03       		.uleb128 0x3
 9755 04d5 0E       		.uleb128 0xe
 9756 04d6 3A       		.uleb128 0x3a
 9757 04d7 0B       		.uleb128 0xb
 9758 04d8 3B       		.uleb128 0x3b
 9759 04d9 0B       		.uleb128 0xb
 9760 04da 27       		.uleb128 0x27
 9761 04db 19       		.uleb128 0x19
 9762 04dc 11       		.uleb128 0x11
 9763 04dd 01       		.uleb128 0x1
 9764 04de 12       		.uleb128 0x12
 9765 04df 06       		.uleb128 0x6
 9766 04e0 40       		.uleb128 0x40
 9767 04e1 18       		.uleb128 0x18
 9768 04e2 9742     		.uleb128 0x2117
 9769 04e4 19       		.uleb128 0x19
 9770 04e5 01       		.uleb128 0x1
 9771 04e6 13       		.uleb128 0x13
 9772 04e7 00       		.byte	0
 9773 04e8 00       		.byte	0
 9774 04e9 5C       		.uleb128 0x5c
 9775 04ea 05       		.uleb128 0x5
 9776 04eb 00       		.byte	0
 9777 04ec 03       		.uleb128 0x3
 9778 04ed 0E       		.uleb128 0xe
 9779 04ee 3A       		.uleb128 0x3a
 9780 04ef 0B       		.uleb128 0xb
 9781 04f0 3B       		.uleb128 0x3b
 9782 04f1 0B       		.uleb128 0xb
 9783 04f2 49       		.uleb128 0x49
 9784 04f3 13       		.uleb128 0x13
 9785 04f4 02       		.uleb128 0x2
 9786 04f5 18       		.uleb128 0x18
 9787 04f6 00       		.byte	0
 9788 04f7 00       		.byte	0
 9789 04f8 5D       		.uleb128 0x5d
 9790 04f9 2E       		.uleb128 0x2e
 9791 04fa 00       		.byte	0
 9792 04fb 03       		.uleb128 0x3
 9793 04fc 0E       		.uleb128 0xe
 9794 04fd 3A       		.uleb128 0x3a
 9795 04fe 0B       		.uleb128 0xb
 9796 04ff 3B       		.uleb128 0x3b
 9797 0500 0B       		.uleb128 0xb
 9798 0501 27       		.uleb128 0x27
 9799 0502 19       		.uleb128 0x19
 9800 0503 49       		.uleb128 0x49
ARM GAS  /tmp/ccTIydBQ.s 			page 233


 9801 0504 13       		.uleb128 0x13
 9802 0505 11       		.uleb128 0x11
 9803 0506 01       		.uleb128 0x1
 9804 0507 12       		.uleb128 0x12
 9805 0508 06       		.uleb128 0x6
 9806 0509 40       		.uleb128 0x40
 9807 050a 18       		.uleb128 0x18
 9808 050b 9742     		.uleb128 0x2117
 9809 050d 19       		.uleb128 0x19
 9810 050e 00       		.byte	0
 9811 050f 00       		.byte	0
 9812 0510 5E       		.uleb128 0x5e
 9813 0511 2E       		.uleb128 0x2e
 9814 0512 01       		.byte	0x1
 9815 0513 03       		.uleb128 0x3
 9816 0514 0E       		.uleb128 0xe
 9817 0515 3A       		.uleb128 0x3a
 9818 0516 0B       		.uleb128 0xb
 9819 0517 3B       		.uleb128 0x3b
 9820 0518 0B       		.uleb128 0xb
 9821 0519 27       		.uleb128 0x27
 9822 051a 19       		.uleb128 0x19
 9823 051b 49       		.uleb128 0x49
 9824 051c 13       		.uleb128 0x13
 9825 051d 11       		.uleb128 0x11
 9826 051e 01       		.uleb128 0x1
 9827 051f 12       		.uleb128 0x12
 9828 0520 06       		.uleb128 0x6
 9829 0521 40       		.uleb128 0x40
 9830 0522 18       		.uleb128 0x18
 9831 0523 9742     		.uleb128 0x2117
 9832 0525 19       		.uleb128 0x19
 9833 0526 01       		.uleb128 0x1
 9834 0527 13       		.uleb128 0x13
 9835 0528 00       		.byte	0
 9836 0529 00       		.byte	0
 9837 052a 5F       		.uleb128 0x5f
 9838 052b 05       		.uleb128 0x5
 9839 052c 00       		.byte	0
 9840 052d 03       		.uleb128 0x3
 9841 052e 0E       		.uleb128 0xe
 9842 052f 3A       		.uleb128 0x3a
 9843 0530 0B       		.uleb128 0xb
 9844 0531 3B       		.uleb128 0x3b
 9845 0532 0B       		.uleb128 0xb
 9846 0533 49       		.uleb128 0x49
 9847 0534 13       		.uleb128 0x13
 9848 0535 02       		.uleb128 0x2
 9849 0536 17       		.uleb128 0x17
 9850 0537 00       		.byte	0
 9851 0538 00       		.byte	0
 9852 0539 60       		.uleb128 0x60
 9853 053a 2E       		.uleb128 0x2e
 9854 053b 01       		.byte	0x1
 9855 053c 3F       		.uleb128 0x3f
 9856 053d 19       		.uleb128 0x19
 9857 053e 03       		.uleb128 0x3
ARM GAS  /tmp/ccTIydBQ.s 			page 234


 9858 053f 0E       		.uleb128 0xe
 9859 0540 3A       		.uleb128 0x3a
 9860 0541 0B       		.uleb128 0xb
 9861 0542 3B       		.uleb128 0x3b
 9862 0543 0B       		.uleb128 0xb
 9863 0544 27       		.uleb128 0x27
 9864 0545 19       		.uleb128 0x19
 9865 0546 20       		.uleb128 0x20
 9866 0547 0B       		.uleb128 0xb
 9867 0548 01       		.uleb128 0x1
 9868 0549 13       		.uleb128 0x13
 9869 054a 00       		.byte	0
 9870 054b 00       		.byte	0
 9871 054c 61       		.uleb128 0x61
 9872 054d 05       		.uleb128 0x5
 9873 054e 00       		.byte	0
 9874 054f 03       		.uleb128 0x3
 9875 0550 08       		.uleb128 0x8
 9876 0551 3A       		.uleb128 0x3a
 9877 0552 0B       		.uleb128 0xb
 9878 0553 3B       		.uleb128 0x3b
 9879 0554 0B       		.uleb128 0xb
 9880 0555 49       		.uleb128 0x49
 9881 0556 13       		.uleb128 0x13
 9882 0557 00       		.byte	0
 9883 0558 00       		.byte	0
 9884 0559 62       		.uleb128 0x62
 9885 055a 05       		.uleb128 0x5
 9886 055b 00       		.byte	0
 9887 055c 03       		.uleb128 0x3
 9888 055d 0E       		.uleb128 0xe
 9889 055e 3A       		.uleb128 0x3a
 9890 055f 0B       		.uleb128 0xb
 9891 0560 3B       		.uleb128 0x3b
 9892 0561 0B       		.uleb128 0xb
 9893 0562 49       		.uleb128 0x49
 9894 0563 13       		.uleb128 0x13
 9895 0564 00       		.byte	0
 9896 0565 00       		.byte	0
 9897 0566 63       		.uleb128 0x63
 9898 0567 2E       		.uleb128 0x2e
 9899 0568 01       		.byte	0x1
 9900 0569 31       		.uleb128 0x31
 9901 056a 13       		.uleb128 0x13
 9902 056b 11       		.uleb128 0x11
 9903 056c 01       		.uleb128 0x1
 9904 056d 12       		.uleb128 0x12
 9905 056e 06       		.uleb128 0x6
 9906 056f 40       		.uleb128 0x40
 9907 0570 18       		.uleb128 0x18
 9908 0571 9642     		.uleb128 0x2116
 9909 0573 19       		.uleb128 0x19
 9910 0574 01       		.uleb128 0x1
 9911 0575 13       		.uleb128 0x13
 9912 0576 00       		.byte	0
 9913 0577 00       		.byte	0
 9914 0578 64       		.uleb128 0x64
ARM GAS  /tmp/ccTIydBQ.s 			page 235


 9915 0579 2E       		.uleb128 0x2e
 9916 057a 01       		.byte	0x1
 9917 057b 31       		.uleb128 0x31
 9918 057c 13       		.uleb128 0x13
 9919 057d 11       		.uleb128 0x11
 9920 057e 01       		.uleb128 0x1
 9921 057f 12       		.uleb128 0x12
 9922 0580 06       		.uleb128 0x6
 9923 0581 40       		.uleb128 0x40
 9924 0582 18       		.uleb128 0x18
 9925 0583 9742     		.uleb128 0x2117
 9926 0585 19       		.uleb128 0x19
 9927 0586 01       		.uleb128 0x1
 9928 0587 13       		.uleb128 0x13
 9929 0588 00       		.byte	0
 9930 0589 00       		.byte	0
 9931 058a 65       		.uleb128 0x65
 9932 058b 2E       		.uleb128 0x2e
 9933 058c 01       		.byte	0x1
 9934 058d 31       		.uleb128 0x31
 9935 058e 13       		.uleb128 0x13
 9936 058f 11       		.uleb128 0x11
 9937 0590 01       		.uleb128 0x1
 9938 0591 12       		.uleb128 0x12
 9939 0592 06       		.uleb128 0x6
 9940 0593 40       		.uleb128 0x40
 9941 0594 18       		.uleb128 0x18
 9942 0595 01       		.uleb128 0x1
 9943 0596 13       		.uleb128 0x13
 9944 0597 00       		.byte	0
 9945 0598 00       		.byte	0
 9946 0599 66       		.uleb128 0x66
 9947 059a 2E       		.uleb128 0x2e
 9948 059b 00       		.byte	0
 9949 059c 31       		.uleb128 0x31
 9950 059d 13       		.uleb128 0x13
 9951 059e 11       		.uleb128 0x11
 9952 059f 01       		.uleb128 0x1
 9953 05a0 12       		.uleb128 0x12
 9954 05a1 06       		.uleb128 0x6
 9955 05a2 40       		.uleb128 0x40
 9956 05a3 18       		.uleb128 0x18
 9957 05a4 9642     		.uleb128 0x2116
 9958 05a6 19       		.uleb128 0x19
 9959 05a7 00       		.byte	0
 9960 05a8 00       		.byte	0
 9961 05a9 67       		.uleb128 0x67
 9962 05aa 2E       		.uleb128 0x2e
 9963 05ab 00       		.byte	0
 9964 05ac 3F       		.uleb128 0x3f
 9965 05ad 19       		.uleb128 0x19
 9966 05ae 3C       		.uleb128 0x3c
 9967 05af 19       		.uleb128 0x19
 9968 05b0 6E       		.uleb128 0x6e
 9969 05b1 0E       		.uleb128 0xe
 9970 05b2 03       		.uleb128 0x3
 9971 05b3 0E       		.uleb128 0xe
ARM GAS  /tmp/ccTIydBQ.s 			page 236


 9972 05b4 3A       		.uleb128 0x3a
 9973 05b5 0B       		.uleb128 0xb
 9974 05b6 3B       		.uleb128 0x3b
 9975 05b7 0B       		.uleb128 0xb
 9976 05b8 00       		.byte	0
 9977 05b9 00       		.byte	0
 9978 05ba 00       		.byte	0
 9979              		.section	.debug_loc,"",%progbits
 9980              	.Ldebug_loc0:
 9981              	.LLST99:
 9982 0000 00000000 		.4byte	.LVL273
 9983 0004 0D000000 		.4byte	.LVL274-1
 9984 0008 0100     		.2byte	0x1
 9985 000a 50       		.byte	0x50
 9986 000b 0D000000 		.4byte	.LVL274-1
 9987 000f 70000000 		.4byte	.LFE272
 9988 0013 0400     		.2byte	0x4
 9989 0015 F3       		.byte	0xf3
 9990 0016 01       		.uleb128 0x1
 9991 0017 50       		.byte	0x50
 9992 0018 9F       		.byte	0x9f
 9993 0019 00000000 		.4byte	0
 9994 001d 00000000 		.4byte	0
 9995              	.LLST97:
 9996 0021 00000000 		.4byte	.LVL271
 9997 0025 0D000000 		.4byte	.LVL272-1
 9998 0029 0100     		.2byte	0x1
 9999 002b 50       		.byte	0x50
 10000 002c 0D000000 		.4byte	.LVL272-1
 10001 0030 30000000 		.4byte	.LFE271
 10002 0034 0400     		.2byte	0x4
 10003 0036 F3       		.byte	0xf3
 10004 0037 01       		.uleb128 0x1
 10005 0038 50       		.byte	0x50
 10006 0039 9F       		.byte	0x9f
 10007 003a 00000000 		.4byte	0
 10008 003e 00000000 		.4byte	0
 10009              	.LLST98:
 10010 0042 00000000 		.4byte	.LVL271
 10011 0046 0D000000 		.4byte	.LVL272-1
 10012 004a 0100     		.2byte	0x1
 10013 004c 51       		.byte	0x51
 10014 004d 0D000000 		.4byte	.LVL272-1
 10015 0051 30000000 		.4byte	.LFE271
 10016 0055 0400     		.2byte	0x4
 10017 0057 F3       		.byte	0xf3
 10018 0058 01       		.uleb128 0x1
 10019 0059 51       		.byte	0x51
 10020 005a 9F       		.byte	0x9f
 10021 005b 00000000 		.4byte	0
 10022 005f 00000000 		.4byte	0
 10023              	.LLST89:
 10024 0063 00000000 		.4byte	.LVL252
 10025 0067 0A000000 		.4byte	.LVL253
 10026 006b 0100     		.2byte	0x1
 10027 006d 50       		.byte	0x50
 10028 006e 0A000000 		.4byte	.LVL253
ARM GAS  /tmp/ccTIydBQ.s 			page 237


 10029 0072 10000000 		.4byte	.LVL254
 10030 0076 0400     		.2byte	0x4
 10031 0078 F3       		.byte	0xf3
 10032 0079 01       		.uleb128 0x1
 10033 007a 50       		.byte	0x50
 10034 007b 9F       		.byte	0x9f
 10035 007c 10000000 		.4byte	.LVL254
 10036 0080 19000000 		.4byte	.LVL255-1
 10037 0084 0100     		.2byte	0x1
 10038 0086 50       		.byte	0x50
 10039 0087 19000000 		.4byte	.LVL255-1
 10040 008b D4000000 		.4byte	.LFE270
 10041 008f 0400     		.2byte	0x4
 10042 0091 F3       		.byte	0xf3
 10043 0092 01       		.uleb128 0x1
 10044 0093 50       		.byte	0x50
 10045 0094 9F       		.byte	0x9f
 10046 0095 00000000 		.4byte	0
 10047 0099 00000000 		.4byte	0
 10048              	.LLST90:
 10049 009d 00000000 		.4byte	.LVL252
 10050 00a1 0A000000 		.4byte	.LVL253
 10051 00a5 0100     		.2byte	0x1
 10052 00a7 51       		.byte	0x51
 10053 00a8 0A000000 		.4byte	.LVL253
 10054 00ac 10000000 		.4byte	.LVL254
 10055 00b0 0400     		.2byte	0x4
 10056 00b2 F3       		.byte	0xf3
 10057 00b3 01       		.uleb128 0x1
 10058 00b4 51       		.byte	0x51
 10059 00b5 9F       		.byte	0x9f
 10060 00b6 10000000 		.4byte	.LVL254
 10061 00ba 19000000 		.4byte	.LVL255-1
 10062 00be 0100     		.2byte	0x1
 10063 00c0 51       		.byte	0x51
 10064 00c1 19000000 		.4byte	.LVL255-1
 10065 00c5 5C000000 		.4byte	.LVL261
 10066 00c9 0100     		.2byte	0x1
 10067 00cb 57       		.byte	0x57
 10068 00cc 5C000000 		.4byte	.LVL261
 10069 00d0 A4000000 		.4byte	.LVL267
 10070 00d4 0400     		.2byte	0x4
 10071 00d6 F3       		.byte	0xf3
 10072 00d7 01       		.uleb128 0x1
 10073 00d8 51       		.byte	0x51
 10074 00d9 9F       		.byte	0x9f
 10075 00da A4000000 		.4byte	.LVL267
 10076 00de AC000000 		.4byte	.LVL269
 10077 00e2 0100     		.2byte	0x1
 10078 00e4 57       		.byte	0x57
 10079 00e5 AC000000 		.4byte	.LVL269
 10080 00e9 D4000000 		.4byte	.LFE270
 10081 00ed 0400     		.2byte	0x4
 10082 00ef F3       		.byte	0xf3
 10083 00f0 01       		.uleb128 0x1
 10084 00f1 51       		.byte	0x51
 10085 00f2 9F       		.byte	0x9f
ARM GAS  /tmp/ccTIydBQ.s 			page 238


 10086 00f3 00000000 		.4byte	0
 10087 00f7 00000000 		.4byte	0
 10088              	.LLST91:
 10089 00fb 00000000 		.4byte	.LVL252
 10090 00ff 0A000000 		.4byte	.LVL253
 10091 0103 0100     		.2byte	0x1
 10092 0105 52       		.byte	0x52
 10093 0106 0A000000 		.4byte	.LVL253
 10094 010a 10000000 		.4byte	.LVL254
 10095 010e 0400     		.2byte	0x4
 10096 0110 F3       		.byte	0xf3
 10097 0111 01       		.uleb128 0x1
 10098 0112 52       		.byte	0x52
 10099 0113 9F       		.byte	0x9f
 10100 0114 10000000 		.4byte	.LVL254
 10101 0118 19000000 		.4byte	.LVL255-1
 10102 011c 0100     		.2byte	0x1
 10103 011e 52       		.byte	0x52
 10104 011f 19000000 		.4byte	.LVL255-1
 10105 0123 D4000000 		.4byte	.LFE270
 10106 0127 0400     		.2byte	0x4
 10107 0129 F3       		.byte	0xf3
 10108 012a 01       		.uleb128 0x1
 10109 012b 52       		.byte	0x52
 10110 012c 9F       		.byte	0x9f
 10111 012d 00000000 		.4byte	0
 10112 0131 00000000 		.4byte	0
 10113              	.LLST92:
 10114 0135 56000000 		.4byte	.LVL260
 10115 0139 6D000000 		.4byte	.LVL263-1
 10116 013d 0100     		.2byte	0x1
 10117 013f 50       		.byte	0x50
 10118 0140 6D000000 		.4byte	.LVL263-1
 10119 0144 A4000000 		.4byte	.LVL267
 10120 0148 1C00     		.2byte	0x1c
 10121 014a 0C       		.byte	0xc
 10122 014b 19911000 		.4byte	0x109119
 10123 014f 0C       		.byte	0xc
 10124 0150 18910800 		.4byte	0x89118
 10125 0154 76       		.byte	0x76
 10126 0155 00       		.sleb128 0
 10127 0156 40       		.byte	0x40
 10128 0157 4B       		.byte	0x4b
 10129 0158 24       		.byte	0x24
 10130 0159 22       		.byte	0x22
 10131 015a 0C       		.byte	0xc
 10132 015b 01000080 		.4byte	0x80000001
 10133 015f 2B       		.byte	0x2b
 10134 0160 28       		.byte	0x28
 10135 0161 0100     		.2byte	0x1
 10136 0163 16       		.byte	0x16
 10137 0164 13       		.byte	0x13
 10138 0165 9F       		.byte	0x9f
 10139 0166 AC000000 		.4byte	.LVL269
 10140 016a D4000000 		.4byte	.LFE270
 10141 016e 1C00     		.2byte	0x1c
 10142 0170 0C       		.byte	0xc
ARM GAS  /tmp/ccTIydBQ.s 			page 239


 10143 0171 19911000 		.4byte	0x109119
 10144 0175 0C       		.byte	0xc
 10145 0176 18910800 		.4byte	0x89118
 10146 017a 76       		.byte	0x76
 10147 017b 00       		.sleb128 0
 10148 017c 40       		.byte	0x40
 10149 017d 4B       		.byte	0x4b
 10150 017e 24       		.byte	0x24
 10151 017f 22       		.byte	0x22
 10152 0180 0C       		.byte	0xc
 10153 0181 01000080 		.4byte	0x80000001
 10154 0185 2B       		.byte	0x2b
 10155 0186 28       		.byte	0x28
 10156 0187 0100     		.2byte	0x1
 10157 0189 16       		.byte	0x16
 10158 018a 13       		.byte	0x13
 10159 018b 9F       		.byte	0x9f
 10160 018c 00000000 		.4byte	0
 10161 0190 00000000 		.4byte	0
 10162              	.LLST93:
 10163 0194 5C000000 		.4byte	.LVL261
 10164 0198 68000000 		.4byte	.LVL262
 10165 019c 0100     		.2byte	0x1
 10166 019e 57       		.byte	0x57
 10167 019f 68000000 		.4byte	.LVL262
 10168 01a3 6D000000 		.4byte	.LVL263-1
 10169 01a7 0100     		.2byte	0x1
 10170 01a9 51       		.byte	0x51
 10171 01aa 00000000 		.4byte	0
 10172 01ae 00000000 		.4byte	0
 10173              	.LLST94:
 10174 01b2 8C000000 		.4byte	.LVL265
 10175 01b6 94000000 		.4byte	.LVL266
 10176 01ba 0100     		.2byte	0x1
 10177 01bc 50       		.byte	0x50
 10178 01bd 00000000 		.4byte	0
 10179 01c1 00000000 		.4byte	0
 10180              	.LLST95:
 10181 01c5 00000000 		.4byte	.LVL252
 10182 01c9 0A000000 		.4byte	.LVL253
 10183 01cd 0100     		.2byte	0x1
 10184 01cf 50       		.byte	0x50
 10185 01d0 10000000 		.4byte	.LVL254
 10186 01d4 19000000 		.4byte	.LVL255-1
 10187 01d8 0100     		.2byte	0x1
 10188 01da 50       		.byte	0x50
 10189 01db 19000000 		.4byte	.LVL255-1
 10190 01df 1A000000 		.4byte	.LVL255
 10191 01e3 0400     		.2byte	0x4
 10192 01e5 F3       		.byte	0xf3
 10193 01e6 01       		.uleb128 0x1
 10194 01e7 50       		.byte	0x50
 10195 01e8 9F       		.byte	0x9f
 10196 01e9 00000000 		.4byte	0
 10197 01ed 00000000 		.4byte	0
 10198              	.LLST96:
 10199 01f1 20000000 		.4byte	.LVL256
ARM GAS  /tmp/ccTIydBQ.s 			page 240


 10200 01f5 24000000 		.4byte	.LVL257
 10201 01f9 0100     		.2byte	0x1
 10202 01fb 54       		.byte	0x54
 10203 01fc 00000000 		.4byte	0
 10204 0200 00000000 		.4byte	0
 10205              	.LLST88:
 10206 0204 00000000 		.4byte	.LVL247
 10207 0208 0D000000 		.4byte	.LVL248-1
 10208 020c 0100     		.2byte	0x1
 10209 020e 50       		.byte	0x50
 10210 020f 0D000000 		.4byte	.LVL248-1
 10211 0213 6C000000 		.4byte	.LFE269
 10212 0217 0400     		.2byte	0x4
 10213 0219 F3       		.byte	0xf3
 10214 021a 01       		.uleb128 0x1
 10215 021b 50       		.byte	0x50
 10216 021c 9F       		.byte	0x9f
 10217 021d 00000000 		.4byte	0
 10218 0221 00000000 		.4byte	0
 10219              	.LLST86:
 10220 0225 00000000 		.4byte	.LVL245
 10221 0229 0D000000 		.4byte	.LVL246-1
 10222 022d 0100     		.2byte	0x1
 10223 022f 50       		.byte	0x50
 10224 0230 0D000000 		.4byte	.LVL246-1
 10225 0234 30000000 		.4byte	.LFE268
 10226 0238 0400     		.2byte	0x4
 10227 023a F3       		.byte	0xf3
 10228 023b 01       		.uleb128 0x1
 10229 023c 50       		.byte	0x50
 10230 023d 9F       		.byte	0x9f
 10231 023e 00000000 		.4byte	0
 10232 0242 00000000 		.4byte	0
 10233              	.LLST87:
 10234 0246 00000000 		.4byte	.LVL245
 10235 024a 0D000000 		.4byte	.LVL246-1
 10236 024e 0100     		.2byte	0x1
 10237 0250 51       		.byte	0x51
 10238 0251 0D000000 		.4byte	.LVL246-1
 10239 0255 30000000 		.4byte	.LFE268
 10240 0259 0400     		.2byte	0x4
 10241 025b F3       		.byte	0xf3
 10242 025c 01       		.uleb128 0x1
 10243 025d 51       		.byte	0x51
 10244 025e 9F       		.byte	0x9f
 10245 025f 00000000 		.4byte	0
 10246 0263 00000000 		.4byte	0
 10247              	.LLST79:
 10248 0267 00000000 		.4byte	.LVL233
 10249 026b 0A000000 		.4byte	.LVL234
 10250 026f 0100     		.2byte	0x1
 10251 0271 50       		.byte	0x50
 10252 0272 0A000000 		.4byte	.LVL234
 10253 0276 10000000 		.4byte	.LVL235
 10254 027a 0400     		.2byte	0x4
 10255 027c F3       		.byte	0xf3
 10256 027d 01       		.uleb128 0x1
ARM GAS  /tmp/ccTIydBQ.s 			page 241


 10257 027e 50       		.byte	0x50
 10258 027f 9F       		.byte	0x9f
 10259 0280 10000000 		.4byte	.LVL235
 10260 0284 17000000 		.4byte	.LVL236-1
 10261 0288 0100     		.2byte	0x1
 10262 028a 50       		.byte	0x50
 10263 028b 17000000 		.4byte	.LVL236-1
 10264 028f A4000000 		.4byte	.LFE267
 10265 0293 0400     		.2byte	0x4
 10266 0295 F3       		.byte	0xf3
 10267 0296 01       		.uleb128 0x1
 10268 0297 50       		.byte	0x50
 10269 0298 9F       		.byte	0x9f
 10270 0299 00000000 		.4byte	0
 10271 029d 00000000 		.4byte	0
 10272              	.LLST80:
 10273 02a1 00000000 		.4byte	.LVL233
 10274 02a5 0A000000 		.4byte	.LVL234
 10275 02a9 0100     		.2byte	0x1
 10276 02ab 51       		.byte	0x51
 10277 02ac 0A000000 		.4byte	.LVL234
 10278 02b0 10000000 		.4byte	.LVL235
 10279 02b4 0400     		.2byte	0x4
 10280 02b6 F3       		.byte	0xf3
 10281 02b7 01       		.uleb128 0x1
 10282 02b8 51       		.byte	0x51
 10283 02b9 9F       		.byte	0x9f
 10284 02ba 10000000 		.4byte	.LVL235
 10285 02be 17000000 		.4byte	.LVL236-1
 10286 02c2 0100     		.2byte	0x1
 10287 02c4 51       		.byte	0x51
 10288 02c5 17000000 		.4byte	.LVL236-1
 10289 02c9 40000000 		.4byte	.LVL239
 10290 02cd 0100     		.2byte	0x1
 10291 02cf 56       		.byte	0x56
 10292 02d0 40000000 		.4byte	.LVL239
 10293 02d4 A4000000 		.4byte	.LFE267
 10294 02d8 0400     		.2byte	0x4
 10295 02da F3       		.byte	0xf3
 10296 02db 01       		.uleb128 0x1
 10297 02dc 51       		.byte	0x51
 10298 02dd 9F       		.byte	0x9f
 10299 02de 00000000 		.4byte	0
 10300 02e2 00000000 		.4byte	0
 10301              	.LLST81:
 10302 02e6 00000000 		.4byte	.LVL233
 10303 02ea 0A000000 		.4byte	.LVL234
 10304 02ee 0100     		.2byte	0x1
 10305 02f0 52       		.byte	0x52
 10306 02f1 0A000000 		.4byte	.LVL234
 10307 02f5 10000000 		.4byte	.LVL235
 10308 02f9 0400     		.2byte	0x4
 10309 02fb F3       		.byte	0xf3
 10310 02fc 01       		.uleb128 0x1
 10311 02fd 52       		.byte	0x52
 10312 02fe 9F       		.byte	0x9f
 10313 02ff 10000000 		.4byte	.LVL235
ARM GAS  /tmp/ccTIydBQ.s 			page 242


 10314 0303 17000000 		.4byte	.LVL236-1
 10315 0307 0100     		.2byte	0x1
 10316 0309 52       		.byte	0x52
 10317 030a 17000000 		.4byte	.LVL236-1
 10318 030e A4000000 		.4byte	.LFE267
 10319 0312 0400     		.2byte	0x4
 10320 0314 F3       		.byte	0xf3
 10321 0315 01       		.uleb128 0x1
 10322 0316 52       		.byte	0x52
 10323 0317 9F       		.byte	0x9f
 10324 0318 00000000 		.4byte	0
 10325 031c 00000000 		.4byte	0
 10326              	.LLST82:
 10327 0320 34000000 		.4byte	.LVL238
 10328 0324 4D000000 		.4byte	.LVL241-1
 10329 0328 0100     		.2byte	0x1
 10330 032a 50       		.byte	0x50
 10331 032b 4D000000 		.4byte	.LVL241-1
 10332 032f 70000000 		.4byte	.LVL243
 10333 0333 1C00     		.2byte	0x1c
 10334 0335 0C       		.byte	0xc
 10335 0336 12111000 		.4byte	0x101112
 10336 033a 0C       		.byte	0xc
 10337 033b 11110800 		.4byte	0x81111
 10338 033f 75       		.byte	0x75
 10339 0340 00       		.sleb128 0
 10340 0341 40       		.byte	0x40
 10341 0342 4B       		.byte	0x4b
 10342 0343 24       		.byte	0x24
 10343 0344 22       		.byte	0x22
 10344 0345 0C       		.byte	0xc
 10345 0346 01000080 		.4byte	0x80000001
 10346 034a 2B       		.byte	0x2b
 10347 034b 28       		.byte	0x28
 10348 034c 0100     		.2byte	0x1
 10349 034e 16       		.byte	0x16
 10350 034f 13       		.byte	0x13
 10351 0350 9F       		.byte	0x9f
 10352 0351 00000000 		.4byte	0
 10353 0355 00000000 		.4byte	0
 10354              	.LLST83:
 10355 0359 40000000 		.4byte	.LVL239
 10356 035d 48000000 		.4byte	.LVL240
 10357 0361 0100     		.2byte	0x1
 10358 0363 56       		.byte	0x56
 10359 0364 48000000 		.4byte	.LVL240
 10360 0368 4D000000 		.4byte	.LVL241-1
 10361 036c 0100     		.2byte	0x1
 10362 036e 51       		.byte	0x51
 10363 036f 00000000 		.4byte	0
 10364 0373 00000000 		.4byte	0
 10365              	.LLST84:
 10366 0377 68000000 		.4byte	.LVL242
 10367 037b 70000000 		.4byte	.LVL243
 10368 037f 0100     		.2byte	0x1
 10369 0381 50       		.byte	0x50
 10370 0382 00000000 		.4byte	0
ARM GAS  /tmp/ccTIydBQ.s 			page 243


 10371 0386 00000000 		.4byte	0
 10372              	.LLST85:
 10373 038a 00000000 		.4byte	.LVL233
 10374 038e 0A000000 		.4byte	.LVL234
 10375 0392 0100     		.2byte	0x1
 10376 0394 50       		.byte	0x50
 10377 0395 10000000 		.4byte	.LVL235
 10378 0399 17000000 		.4byte	.LVL236-1
 10379 039d 0100     		.2byte	0x1
 10380 039f 50       		.byte	0x50
 10381 03a0 17000000 		.4byte	.LVL236-1
 10382 03a4 18000000 		.4byte	.LVL236
 10383 03a8 0400     		.2byte	0x4
 10384 03aa F3       		.byte	0xf3
 10385 03ab 01       		.uleb128 0x1
 10386 03ac 50       		.byte	0x50
 10387 03ad 9F       		.byte	0x9f
 10388 03ae 00000000 		.4byte	0
 10389 03b2 00000000 		.4byte	0
 10390              	.LLST78:
 10391 03b6 00000000 		.4byte	.LVL230
 10392 03ba 04000000 		.4byte	.LVL231
 10393 03be 0100     		.2byte	0x1
 10394 03c0 50       		.byte	0x50
 10395 03c1 04000000 		.4byte	.LVL231
 10396 03c5 14000000 		.4byte	.LFE266
 10397 03c9 0400     		.2byte	0x4
 10398 03cb F3       		.byte	0xf3
 10399 03cc 01       		.uleb128 0x1
 10400 03cd 50       		.byte	0x50
 10401 03ce 9F       		.byte	0x9f
 10402 03cf 00000000 		.4byte	0
 10403 03d3 00000000 		.4byte	0
 10404              	.LLST77:
 10405 03d7 00000000 		.4byte	.LVL228
 10406 03db 04000000 		.4byte	.LVL229
 10407 03df 0100     		.2byte	0x1
 10408 03e1 50       		.byte	0x50
 10409 03e2 04000000 		.4byte	.LVL229
 10410 03e6 14000000 		.4byte	.LFE265
 10411 03ea 0400     		.2byte	0x4
 10412 03ec F3       		.byte	0xf3
 10413 03ed 01       		.uleb128 0x1
 10414 03ee 50       		.byte	0x50
 10415 03ef 9F       		.byte	0x9f
 10416 03f0 00000000 		.4byte	0
 10417 03f4 00000000 		.4byte	0
 10418              	.LLST74:
 10419 03f8 00000000 		.4byte	.LVL220
 10420 03fc 06000000 		.4byte	.LVL221
 10421 0400 0100     		.2byte	0x1
 10422 0402 50       		.byte	0x50
 10423 0403 06000000 		.4byte	.LVL221
 10424 0407 08000000 		.4byte	.LVL222
 10425 040b 0400     		.2byte	0x4
 10426 040d F3       		.byte	0xf3
 10427 040e 01       		.uleb128 0x1
ARM GAS  /tmp/ccTIydBQ.s 			page 244


 10428 040f 50       		.byte	0x50
 10429 0410 9F       		.byte	0x9f
 10430 0411 08000000 		.4byte	.LVL222
 10431 0415 0D000000 		.4byte	.LVL223-1
 10432 0419 0100     		.2byte	0x1
 10433 041b 50       		.byte	0x50
 10434 041c 0D000000 		.4byte	.LVL223-1
 10435 0420 34000000 		.4byte	.LFE263
 10436 0424 0400     		.2byte	0x4
 10437 0426 F3       		.byte	0xf3
 10438 0427 01       		.uleb128 0x1
 10439 0428 50       		.byte	0x50
 10440 0429 9F       		.byte	0x9f
 10441 042a 00000000 		.4byte	0
 10442 042e 00000000 		.4byte	0
 10443              	.LLST75:
 10444 0432 00000000 		.4byte	.LVL220
 10445 0436 06000000 		.4byte	.LVL221
 10446 043a 0100     		.2byte	0x1
 10447 043c 50       		.byte	0x50
 10448 043d 06000000 		.4byte	.LVL221
 10449 0441 08000000 		.4byte	.LVL222
 10450 0445 0400     		.2byte	0x4
 10451 0447 F3       		.byte	0xf3
 10452 0448 01       		.uleb128 0x1
 10453 0449 50       		.byte	0x50
 10454 044a 9F       		.byte	0x9f
 10455 044b 08000000 		.4byte	.LVL222
 10456 044f 0D000000 		.4byte	.LVL223-1
 10457 0453 0100     		.2byte	0x1
 10458 0455 50       		.byte	0x50
 10459 0456 0D000000 		.4byte	.LVL223-1
 10460 045a 0E000000 		.4byte	.LVL223
 10461 045e 0400     		.2byte	0x4
 10462 0460 F3       		.byte	0xf3
 10463 0461 01       		.uleb128 0x1
 10464 0462 50       		.byte	0x50
 10465 0463 9F       		.byte	0x9f
 10466 0464 00000000 		.4byte	0
 10467 0468 00000000 		.4byte	0
 10468              	.LLST72:
 10469 046c 00000000 		.4byte	.LVL215
 10470 0470 06000000 		.4byte	.LVL216
 10471 0474 0100     		.2byte	0x1
 10472 0476 50       		.byte	0x50
 10473 0477 06000000 		.4byte	.LVL216
 10474 047b 08000000 		.4byte	.LVL217
 10475 047f 0400     		.2byte	0x4
 10476 0481 F3       		.byte	0xf3
 10477 0482 01       		.uleb128 0x1
 10478 0483 50       		.byte	0x50
 10479 0484 9F       		.byte	0x9f
 10480 0485 08000000 		.4byte	.LVL217
 10481 0489 0D000000 		.4byte	.LVL218-1
 10482 048d 0100     		.2byte	0x1
 10483 048f 50       		.byte	0x50
 10484 0490 0D000000 		.4byte	.LVL218-1
ARM GAS  /tmp/ccTIydBQ.s 			page 245


 10485 0494 34000000 		.4byte	.LFE262
 10486 0498 0400     		.2byte	0x4
 10487 049a F3       		.byte	0xf3
 10488 049b 01       		.uleb128 0x1
 10489 049c 50       		.byte	0x50
 10490 049d 9F       		.byte	0x9f
 10491 049e 00000000 		.4byte	0
 10492 04a2 00000000 		.4byte	0
 10493              	.LLST73:
 10494 04a6 00000000 		.4byte	.LVL215
 10495 04aa 06000000 		.4byte	.LVL216
 10496 04ae 0100     		.2byte	0x1
 10497 04b0 50       		.byte	0x50
 10498 04b1 06000000 		.4byte	.LVL216
 10499 04b5 08000000 		.4byte	.LVL217
 10500 04b9 0400     		.2byte	0x4
 10501 04bb F3       		.byte	0xf3
 10502 04bc 01       		.uleb128 0x1
 10503 04bd 50       		.byte	0x50
 10504 04be 9F       		.byte	0x9f
 10505 04bf 08000000 		.4byte	.LVL217
 10506 04c3 0D000000 		.4byte	.LVL218-1
 10507 04c7 0100     		.2byte	0x1
 10508 04c9 50       		.byte	0x50
 10509 04ca 0D000000 		.4byte	.LVL218-1
 10510 04ce 0E000000 		.4byte	.LVL218
 10511 04d2 0400     		.2byte	0x4
 10512 04d4 F3       		.byte	0xf3
 10513 04d5 01       		.uleb128 0x1
 10514 04d6 50       		.byte	0x50
 10515 04d7 9F       		.byte	0x9f
 10516 04d8 00000000 		.4byte	0
 10517 04dc 00000000 		.4byte	0
 10518              	.LLST70:
 10519 04e0 00000000 		.4byte	.LVL210
 10520 04e4 06000000 		.4byte	.LVL211
 10521 04e8 0100     		.2byte	0x1
 10522 04ea 50       		.byte	0x50
 10523 04eb 06000000 		.4byte	.LVL211
 10524 04ef 08000000 		.4byte	.LVL212
 10525 04f3 0400     		.2byte	0x4
 10526 04f5 F3       		.byte	0xf3
 10527 04f6 01       		.uleb128 0x1
 10528 04f7 50       		.byte	0x50
 10529 04f8 9F       		.byte	0x9f
 10530 04f9 08000000 		.4byte	.LVL212
 10531 04fd 0D000000 		.4byte	.LVL213-1
 10532 0501 0100     		.2byte	0x1
 10533 0503 50       		.byte	0x50
 10534 0504 0D000000 		.4byte	.LVL213-1
 10535 0508 34000000 		.4byte	.LFE261
 10536 050c 0400     		.2byte	0x4
 10537 050e F3       		.byte	0xf3
 10538 050f 01       		.uleb128 0x1
 10539 0510 50       		.byte	0x50
 10540 0511 9F       		.byte	0x9f
 10541 0512 00000000 		.4byte	0
ARM GAS  /tmp/ccTIydBQ.s 			page 246


 10542 0516 00000000 		.4byte	0
 10543              	.LLST71:
 10544 051a 00000000 		.4byte	.LVL210
 10545 051e 06000000 		.4byte	.LVL211
 10546 0522 0100     		.2byte	0x1
 10547 0524 50       		.byte	0x50
 10548 0525 06000000 		.4byte	.LVL211
 10549 0529 08000000 		.4byte	.LVL212
 10550 052d 0400     		.2byte	0x4
 10551 052f F3       		.byte	0xf3
 10552 0530 01       		.uleb128 0x1
 10553 0531 50       		.byte	0x50
 10554 0532 9F       		.byte	0x9f
 10555 0533 08000000 		.4byte	.LVL212
 10556 0537 0D000000 		.4byte	.LVL213-1
 10557 053b 0100     		.2byte	0x1
 10558 053d 50       		.byte	0x50
 10559 053e 0D000000 		.4byte	.LVL213-1
 10560 0542 0E000000 		.4byte	.LVL213
 10561 0546 0400     		.2byte	0x4
 10562 0548 F3       		.byte	0xf3
 10563 0549 01       		.uleb128 0x1
 10564 054a 50       		.byte	0x50
 10565 054b 9F       		.byte	0x9f
 10566 054c 00000000 		.4byte	0
 10567 0550 00000000 		.4byte	0
 10568              	.LLST53:
 10569 0554 00000000 		.4byte	.LVL99
 10570 0558 0A000000 		.4byte	.LVL100
 10571 055c 0100     		.2byte	0x1
 10572 055e 50       		.byte	0x50
 10573 055f 0A000000 		.4byte	.LVL100
 10574 0563 50000000 		.4byte	.LVL104
 10575 0567 0400     		.2byte	0x4
 10576 0569 F3       		.byte	0xf3
 10577 056a 01       		.uleb128 0x1
 10578 056b 50       		.byte	0x50
 10579 056c 9F       		.byte	0x9f
 10580 056d 50000000 		.4byte	.LVL104
 10581 0571 52000000 		.4byte	.LVL105
 10582 0575 0100     		.2byte	0x1
 10583 0577 50       		.byte	0x50
 10584 0578 52000000 		.4byte	.LVL105
 10585 057c 70060000 		.4byte	.LFE260
 10586 0580 0400     		.2byte	0x4
 10587 0582 F3       		.byte	0xf3
 10588 0583 01       		.uleb128 0x1
 10589 0584 50       		.byte	0x50
 10590 0585 9F       		.byte	0x9f
 10591 0586 00000000 		.4byte	0
 10592 058a 00000000 		.4byte	0
 10593              	.LLST54:
 10594 058e 00000000 		.4byte	.LVL99
 10595 0592 0A000000 		.4byte	.LVL100
 10596 0596 0100     		.2byte	0x1
 10597 0598 50       		.byte	0x50
 10598 0599 50000000 		.4byte	.LVL104
ARM GAS  /tmp/ccTIydBQ.s 			page 247


 10599 059d 52000000 		.4byte	.LVL105
 10600 05a1 0100     		.2byte	0x1
 10601 05a3 50       		.byte	0x50
 10602 05a4 52000000 		.4byte	.LVL105
 10603 05a8 5C000000 		.4byte	.LVL107
 10604 05ac 0100     		.2byte	0x1
 10605 05ae 55       		.byte	0x55
 10606 05af 00000000 		.4byte	0
 10607 05b3 00000000 		.4byte	0
 10608              	.LLST55:
 10609 05b7 12030000 		.4byte	.LVL150
 10610 05bb 26030000 		.4byte	.LVL151
 10611 05bf 0300     		.2byte	0x3
 10612 05c1 91       		.byte	0x91
 10613 05c2 A77F     		.sleb128 -89
 10614 05c4 00000000 		.4byte	0
 10615 05c8 00000000 		.4byte	0
 10616              	.LLST56:
 10617 05cc 26030000 		.4byte	.LVL151
 10618 05d0 31030000 		.4byte	.LVL152-1
 10619 05d4 0100     		.2byte	0x1
 10620 05d6 51       		.byte	0x51
 10621 05d7 31030000 		.4byte	.LVL152-1
 10622 05db 48030000 		.4byte	.LVL155
 10623 05df 0100     		.2byte	0x1
 10624 05e1 57       		.byte	0x57
 10625 05e2 54030000 		.4byte	.LVL156
 10626 05e6 5A030000 		.4byte	.LVL157
 10627 05ea 0100     		.2byte	0x1
 10628 05ec 57       		.byte	0x57
 10629 05ed 20050000 		.4byte	.LVL193
 10630 05f1 4A050000 		.4byte	.LVL196
 10631 05f5 0100     		.2byte	0x1
 10632 05f7 57       		.byte	0x57
 10633 05f8 00000000 		.4byte	0
 10634 05fc 00000000 		.4byte	0
 10635              	.LLST57:
 10636 0600 12030000 		.4byte	.LVL150
 10637 0604 26030000 		.4byte	.LVL151
 10638 0608 0400     		.2byte	0x4
 10639 060a 0A       		.byte	0xa
 10640 060b 3408     		.2byte	0x834
 10641 060d 9F       		.byte	0x9f
 10642 060e 26030000 		.4byte	.LVL151
 10643 0612 3C030000 		.4byte	.LVL153
 10644 0616 0300     		.2byte	0x3
 10645 0618 76       		.byte	0x76
 10646 0619 7F       		.sleb128 -1
 10647 061a 9F       		.byte	0x9f
 10648 061b 3C030000 		.4byte	.LVL153
 10649 061f 44030000 		.4byte	.LVL154
 10650 0623 0300     		.2byte	0x3
 10651 0625 76       		.byte	0x76
 10652 0626 7E       		.sleb128 -2
 10653 0627 9F       		.byte	0x9f
 10654 0628 44030000 		.4byte	.LVL154
 10655 062c 5A030000 		.4byte	.LVL157
ARM GAS  /tmp/ccTIydBQ.s 			page 248


 10656 0630 0300     		.2byte	0x3
 10657 0632 76       		.byte	0x76
 10658 0633 7F       		.sleb128 -1
 10659 0634 9F       		.byte	0x9f
 10660 0635 20050000 		.4byte	.LVL193
 10661 0639 4A050000 		.4byte	.LVL196
 10662 063d 0300     		.2byte	0x3
 10663 063f 76       		.byte	0x76
 10664 0640 7E       		.sleb128 -2
 10665 0641 9F       		.byte	0x9f
 10666 0642 00000000 		.4byte	0
 10667 0646 00000000 		.4byte	0
 10668              	.LLST58:
 10669 064a 3C030000 		.4byte	.LVL153
 10670 064e 48030000 		.4byte	.LVL155
 10671 0652 0100     		.2byte	0x1
 10672 0654 50       		.byte	0x50
 10673 0655 20050000 		.4byte	.LVL193
 10674 0659 30050000 		.4byte	.LVL194
 10675 065d 0100     		.2byte	0x1
 10676 065f 50       		.byte	0x50
 10677 0660 00000000 		.4byte	0
 10678 0664 00000000 		.4byte	0
 10679              	.LLST59:
 10680 0668 92040000 		.4byte	.LVL180
 10681 066c 94040000 		.4byte	.LVL181
 10682 0670 0200     		.2byte	0x2
 10683 0672 39       		.byte	0x39
 10684 0673 9F       		.byte	0x9f
 10685 0674 94040000 		.4byte	.LVL181
 10686 0678 A0040000 		.4byte	.LVL182
 10687 067c 0300     		.2byte	0x3
 10688 067e 76       		.byte	0x76
 10689 067f 7F       		.sleb128 -1
 10690 0680 9F       		.byte	0x9f
 10691 0681 00000000 		.4byte	0
 10692 0685 00000000 		.4byte	0
 10693              	.LLST60:
 10694 0689 7A030000 		.4byte	.LVL159
 10695 068d 7C030000 		.4byte	.LVL160
 10696 0691 0300     		.2byte	0x3
 10697 0693 76       		.byte	0x76
 10698 0694 7E       		.sleb128 -2
 10699 0695 9F       		.byte	0x9f
 10700 0696 7C030000 		.4byte	.LVL160
 10701 069a 9C030000 		.4byte	.LVL163
 10702 069e 0300     		.2byte	0x3
 10703 06a0 76       		.byte	0x76
 10704 06a1 7F       		.sleb128 -1
 10705 06a2 9F       		.byte	0x9f
 10706 06a3 9C030000 		.4byte	.LVL163
 10707 06a7 B4030000 		.4byte	.LVL164
 10708 06ab 0300     		.2byte	0x3
 10709 06ad 76       		.byte	0x76
 10710 06ae 7E       		.sleb128 -2
 10711 06af 9F       		.byte	0x9f
 10712 06b0 00000000 		.4byte	0
ARM GAS  /tmp/ccTIydBQ.s 			page 249


 10713 06b4 00000000 		.4byte	0
 10714              	.LLST61:
 10715 06b8 7A030000 		.4byte	.LVL159
 10716 06bc 80030000 		.4byte	.LVL161
 10717 06c0 0100     		.2byte	0x1
 10718 06c2 50       		.byte	0x50
 10719 06c3 9C030000 		.4byte	.LVL163
 10720 06c7 B4030000 		.4byte	.LVL164
 10721 06cb 0100     		.2byte	0x1
 10722 06cd 50       		.byte	0x50
 10723 06ce 00000000 		.4byte	0
 10724 06d2 00000000 		.4byte	0
 10725              	.LLST62:
 10726 06d6 36040000 		.4byte	.LVL173
 10727 06da 4A040000 		.4byte	.LVL175
 10728 06de 0100     		.2byte	0x1
 10729 06e0 50       		.byte	0x50
 10730 06e1 FE050000 		.4byte	.LVL204
 10731 06e5 02060000 		.4byte	.LVL205
 10732 06e9 0100     		.2byte	0x1
 10733 06eb 50       		.byte	0x50
 10734 06ec 00000000 		.4byte	0
 10735 06f0 00000000 		.4byte	0
 10736              	.LLST63:
 10737 06f4 44040000 		.4byte	.LVL174
 10738 06f8 4F040000 		.4byte	.LVL176-1
 10739 06fc 0100     		.2byte	0x1
 10740 06fe 51       		.byte	0x51
 10741 06ff 00000000 		.4byte	0
 10742 0703 00000000 		.4byte	0
 10743              	.LLST64:
 10744 0707 64020000 		.4byte	.LVL135
 10745 070b 66020000 		.4byte	.LVL136
 10746 070f 0300     		.2byte	0x3
 10747 0711 75       		.byte	0x75
 10748 0712 7E       		.sleb128 -2
 10749 0713 9F       		.byte	0x9f
 10750 0714 66020000 		.4byte	.LVL136
 10751 0718 86020000 		.4byte	.LVL139
 10752 071c 0300     		.2byte	0x3
 10753 071e 75       		.byte	0x75
 10754 071f 7F       		.sleb128 -1
 10755 0720 9F       		.byte	0x9f
 10756 0721 86020000 		.4byte	.LVL139
 10757 0725 BA020000 		.4byte	.LVL143
 10758 0729 0300     		.2byte	0x3
 10759 072b 75       		.byte	0x75
 10760 072c 7E       		.sleb128 -2
 10761 072d 9F       		.byte	0x9f
 10762 072e 00000000 		.4byte	0
 10763 0732 00000000 		.4byte	0
 10764              	.LLST65:
 10765 0736 64020000 		.4byte	.LVL135
 10766 073a 6A020000 		.4byte	.LVL137
 10767 073e 0100     		.2byte	0x1
 10768 0740 50       		.byte	0x50
 10769 0741 86020000 		.4byte	.LVL139
ARM GAS  /tmp/ccTIydBQ.s 			page 250


 10770 0745 92020000 		.4byte	.LVL140
 10771 0749 0100     		.2byte	0x1
 10772 074b 50       		.byte	0x50
 10773 074c 00000000 		.4byte	0
 10774 0750 00000000 		.4byte	0
 10775              	.LLST66:
 10776 0754 F2010000 		.4byte	.LVL126
 10777 0758 06020000 		.4byte	.LVL127
 10778 075c 0300     		.2byte	0x3
 10779 075e 91       		.byte	0x91
 10780 075f A77F     		.sleb128 -89
 10781 0761 00000000 		.4byte	0
 10782 0765 00000000 		.4byte	0
 10783              	.LLST67:
 10784 0769 06020000 		.4byte	.LVL127
 10785 076d 11020000 		.4byte	.LVL128-1
 10786 0771 0100     		.2byte	0x1
 10787 0773 51       		.byte	0x51
 10788 0774 11020000 		.4byte	.LVL128-1
 10789 0778 2A020000 		.4byte	.LVL131
 10790 077c 0100     		.2byte	0x1
 10791 077e 57       		.byte	0x57
 10792 077f 36020000 		.4byte	.LVL132
 10793 0783 3C020000 		.4byte	.LVL133
 10794 0787 0100     		.2byte	0x1
 10795 0789 57       		.byte	0x57
 10796 078a B4040000 		.4byte	.LVL184
 10797 078e DC040000 		.4byte	.LVL188
 10798 0792 0100     		.2byte	0x1
 10799 0794 57       		.byte	0x57
 10800 0795 00000000 		.4byte	0
 10801 0799 00000000 		.4byte	0
 10802              	.LLST68:
 10803 079d F2010000 		.4byte	.LVL126
 10804 07a1 06020000 		.4byte	.LVL127
 10805 07a5 0400     		.2byte	0x4
 10806 07a7 0A       		.byte	0xa
 10807 07a8 EE1B     		.2byte	0x1bee
 10808 07aa 9F       		.byte	0x9f
 10809 07ab 06020000 		.4byte	.LVL127
 10810 07af 1C020000 		.4byte	.LVL129
 10811 07b3 0300     		.2byte	0x3
 10812 07b5 76       		.byte	0x76
 10813 07b6 7F       		.sleb128 -1
 10814 07b7 9F       		.byte	0x9f
 10815 07b8 1C020000 		.4byte	.LVL129
 10816 07bc 26020000 		.4byte	.LVL130
 10817 07c0 0300     		.2byte	0x3
 10818 07c2 76       		.byte	0x76
 10819 07c3 7E       		.sleb128 -2
 10820 07c4 9F       		.byte	0x9f
 10821 07c5 26020000 		.4byte	.LVL130
 10822 07c9 3C020000 		.4byte	.LVL133
 10823 07cd 0300     		.2byte	0x3
 10824 07cf 76       		.byte	0x76
 10825 07d0 7F       		.sleb128 -1
 10826 07d1 9F       		.byte	0x9f
ARM GAS  /tmp/ccTIydBQ.s 			page 251


 10827 07d2 B4040000 		.4byte	.LVL184
 10828 07d6 DC040000 		.4byte	.LVL188
 10829 07da 0300     		.2byte	0x3
 10830 07dc 76       		.byte	0x76
 10831 07dd 7E       		.sleb128 -2
 10832 07de 9F       		.byte	0x9f
 10833 07df 00000000 		.4byte	0
 10834 07e3 00000000 		.4byte	0
 10835              	.LLST69:
 10836 07e7 1C020000 		.4byte	.LVL129
 10837 07eb 2A020000 		.4byte	.LVL131
 10838 07ef 0100     		.2byte	0x1
 10839 07f1 50       		.byte	0x50
 10840 07f2 B4040000 		.4byte	.LVL184
 10841 07f6 BA040000 		.4byte	.LVL185
 10842 07fa 0100     		.2byte	0x1
 10843 07fc 50       		.byte	0x50
 10844 07fd 00000000 		.4byte	0
 10845 0801 00000000 		.4byte	0
 10846              	.LLST47:
 10847 0805 00000000 		.4byte	.LVL87
 10848 0809 0E000000 		.4byte	.LVL88
 10849 080d 0100     		.2byte	0x1
 10850 080f 50       		.byte	0x50
 10851 0810 0E000000 		.4byte	.LVL88
 10852 0814 54000000 		.4byte	.LVL97
 10853 0818 0100     		.2byte	0x1
 10854 081a 55       		.byte	0x55
 10855 081b 54000000 		.4byte	.LVL97
 10856 081f 68000000 		.4byte	.LFE258
 10857 0823 0400     		.2byte	0x4
 10858 0825 F3       		.byte	0xf3
 10859 0826 01       		.uleb128 0x1
 10860 0827 50       		.byte	0x50
 10861 0828 9F       		.byte	0x9f
 10862 0829 00000000 		.4byte	0
 10863 082d 00000000 		.4byte	0
 10864              	.LLST48:
 10865 0831 00000000 		.4byte	.LVL87
 10866 0835 18000000 		.4byte	.LVL90
 10867 0839 0100     		.2byte	0x1
 10868 083b 51       		.byte	0x51
 10869 083c 18000000 		.4byte	.LVL90
 10870 0840 54000000 		.4byte	.LVL97
 10871 0844 0100     		.2byte	0x1
 10872 0846 56       		.byte	0x56
 10873 0847 54000000 		.4byte	.LVL97
 10874 084b 57000000 		.4byte	.LVL98-1
 10875 084f 0100     		.2byte	0x1
 10876 0851 50       		.byte	0x50
 10877 0852 57000000 		.4byte	.LVL98-1
 10878 0856 68000000 		.4byte	.LFE258
 10879 085a 0400     		.2byte	0x4
 10880 085c F3       		.byte	0xf3
 10881 085d 01       		.uleb128 0x1
 10882 085e 51       		.byte	0x51
 10883 085f 9F       		.byte	0x9f
ARM GAS  /tmp/ccTIydBQ.s 			page 252


 10884 0860 00000000 		.4byte	0
 10885 0864 00000000 		.4byte	0
 10886              	.LLST49:
 10887 0868 00000000 		.4byte	.LVL87
 10888 086c 26000000 		.4byte	.LVL92
 10889 0870 0200     		.2byte	0x2
 10890 0872 30       		.byte	0x30
 10891 0873 9F       		.byte	0x9f
 10892 0874 26000000 		.4byte	.LVL92
 10893 0878 48000000 		.4byte	.LVL95
 10894 087c 0200     		.2byte	0x2
 10895 087e 31       		.byte	0x31
 10896 087f 9F       		.byte	0x9f
 10897 0880 48000000 		.4byte	.LVL95
 10898 0884 68000000 		.4byte	.LFE258
 10899 0888 0200     		.2byte	0x2
 10900 088a 32       		.byte	0x32
 10901 088b 9F       		.byte	0x9f
 10902 088c 00000000 		.4byte	0
 10903 0890 00000000 		.4byte	0
 10904              	.LLST50:
 10905 0894 00000000 		.4byte	.LVL87
 10906 0898 26000000 		.4byte	.LVL92
 10907 089c 0600     		.2byte	0x6
 10908 089e 03       		.byte	0x3
 10909 089f 00000000 		.4byte	sd_mmc_cards
 10910 08a3 9F       		.byte	0x9f
 10911 08a4 26000000 		.4byte	.LVL92
 10912 08a8 68000000 		.4byte	.LFE258
 10913 08ac 0600     		.2byte	0x6
 10914 08ae 03       		.byte	0x3
 10915 08af 28000000 		.4byte	sd_mmc_cards+40
 10916 08b3 9F       		.byte	0x9f
 10917 08b4 00000000 		.4byte	0
 10918 08b8 00000000 		.4byte	0
 10919              	.LLST51:
 10920 08bc 14000000 		.4byte	.LVL89
 10921 08c0 1C000000 		.4byte	.LVL91
 10922 08c4 0200     		.2byte	0x2
 10923 08c6 31       		.byte	0x31
 10924 08c7 9F       		.byte	0x9f
 10925 08c8 34000000 		.4byte	.LVL93
 10926 08cc 3A000000 		.4byte	.LVL94
 10927 08d0 0200     		.2byte	0x2
 10928 08d2 31       		.byte	0x31
 10929 08d3 9F       		.byte	0x9f
 10930 08d4 00000000 		.4byte	0
 10931 08d8 00000000 		.4byte	0
 10932              	.LLST52:
 10933 08dc 14000000 		.4byte	.LVL89
 10934 08e0 1B000000 		.4byte	.LVL91-1
 10935 08e4 0100     		.2byte	0x1
 10936 08e6 50       		.byte	0x50
 10937 08e7 34000000 		.4byte	.LVL93
 10938 08eb 39000000 		.4byte	.LVL94-1
 10939 08ef 0100     		.2byte	0x1
 10940 08f1 50       		.byte	0x50
ARM GAS  /tmp/ccTIydBQ.s 			page 253


 10941 08f2 00000000 		.4byte	0
 10942 08f6 00000000 		.4byte	0
 10943              	.LLST35:
 10944 08fa 00000000 		.4byte	.LVL28
 10945 08fe 08000000 		.4byte	.LVL29
 10946 0902 0600     		.2byte	0x6
 10947 0904 0C       		.byte	0xc
 10948 0905 400D0300 		.4byte	0x30d40
 10949 0909 9F       		.byte	0x9f
 10950 090a 08000000 		.4byte	.LVL29
 10951 090e 1C000000 		.4byte	.LVL32
 10952 0912 0300     		.2byte	0x3
 10953 0914 74       		.byte	0x74
 10954 0915 7F       		.sleb128 -1
 10955 0916 9F       		.byte	0x9f
 10956 0917 1C000000 		.4byte	.LVL32
 10957 091b 1E000000 		.4byte	.LVL33
 10958 091f 0300     		.2byte	0x3
 10959 0921 74       		.byte	0x74
 10960 0922 7E       		.sleb128 -2
 10961 0923 9F       		.byte	0x9f
 10962 0924 1E000000 		.4byte	.LVL33
 10963 0928 50000000 		.4byte	.LVL37
 10964 092c 0300     		.2byte	0x3
 10965 092e 74       		.byte	0x74
 10966 092f 7F       		.sleb128 -1
 10967 0930 9F       		.byte	0x9f
 10968 0931 00000000 		.4byte	0
 10969 0935 00000000 		.4byte	0
 10970              	.LLST13:
 10971 0939 0C000000 		.4byte	.LVL14
 10972 093d 18000000 		.4byte	.LVL15
 10973 0941 0F00     		.2byte	0xf
 10974 0943 71       		.byte	0x71
 10975 0944 00       		.sleb128 0
 10976 0945 37       		.byte	0x37
 10977 0946 1A       		.byte	0x1a
 10978 0947 08       		.byte	0x8
 10979 0948 FF       		.byte	0xff
 10980 0949 1A       		.byte	0x1a
 10981 094a 32       		.byte	0x32
 10982 094b 24       		.byte	0x24
 10983 094c 03       		.byte	0x3
 10984 094d 00000000 		.4byte	sd_mmc_trans_units
 10985 0951 22       		.byte	0x22
 10986 0952 18000000 		.4byte	.LVL15
 10987 0956 90000000 		.4byte	.LFE247
 10988 095a 1100     		.2byte	0x11
 10989 095c 72       		.byte	0x72
 10990 095d 18       		.sleb128 24
 10991 095e 94       		.byte	0x94
 10992 095f 01       		.byte	0x1
 10993 0960 37       		.byte	0x37
 10994 0961 1A       		.byte	0x1a
 10995 0962 08       		.byte	0x8
 10996 0963 FF       		.byte	0xff
 10997 0964 1A       		.byte	0x1a
ARM GAS  /tmp/ccTIydBQ.s 			page 254


 10998 0965 32       		.byte	0x32
 10999 0966 24       		.byte	0x24
 11000 0967 03       		.byte	0x3
 11001 0968 00000000 		.4byte	sd_mmc_trans_units
 11002 096c 22       		.byte	0x22
 11003 096d 00000000 		.4byte	0
 11004 0971 00000000 		.4byte	0
 11005              	.LLST14:
 11006 0975 0C000000 		.4byte	.LVL14
 11007 0979 18000000 		.4byte	.LVL15
 11008 097d 1100     		.2byte	0x11
 11009 097f 71       		.byte	0x71
 11010 0980 00       		.sleb128 0
 11011 0981 08       		.byte	0x8
 11012 0982 FF       		.byte	0xff
 11013 0983 1A       		.byte	0x1a
 11014 0984 33       		.byte	0x33
 11015 0985 25       		.byte	0x25
 11016 0986 3F       		.byte	0x3f
 11017 0987 1A       		.byte	0x1a
 11018 0988 32       		.byte	0x32
 11019 0989 24       		.byte	0x24
 11020 098a 03       		.byte	0x3
 11021 098b 00000000 		.4byte	sd_trans_multipliers
 11022 098f 22       		.byte	0x22
 11023 0990 18000000 		.4byte	.LVL15
 11024 0994 90000000 		.4byte	.LFE247
 11025 0998 1300     		.2byte	0x13
 11026 099a 72       		.byte	0x72
 11027 099b 18       		.sleb128 24
 11028 099c 94       		.byte	0x94
 11029 099d 01       		.byte	0x1
 11030 099e 08       		.byte	0x8
 11031 099f FF       		.byte	0xff
 11032 09a0 1A       		.byte	0x1a
 11033 09a1 33       		.byte	0x33
 11034 09a2 25       		.byte	0x25
 11035 09a3 3F       		.byte	0x3f
 11036 09a4 1A       		.byte	0x1a
 11037 09a5 32       		.byte	0x32
 11038 09a6 24       		.byte	0x24
 11039 09a7 03       		.byte	0x3
 11040 09a8 00000000 		.4byte	sd_trans_multipliers
 11041 09ac 22       		.byte	0x22
 11042 09ad 00000000 		.4byte	0
 11043 09b1 00000000 		.4byte	0
 11044              	.LLST19:
 11045 09b5 4C000000 		.4byte	.LVL20
 11046 09b9 54000000 		.4byte	.LVL21
 11047 09bd 1000     		.2byte	0x10
 11048 09bf 73       		.byte	0x73
 11049 09c0 00       		.sleb128 0
 11050 09c1 0A       		.byte	0xa
 11051 09c2 FF0F     		.2byte	0xfff
 11052 09c4 1A       		.byte	0x1a
 11053 09c5 23       		.byte	0x23
 11054 09c6 01       		.uleb128 0x1
ARM GAS  /tmp/ccTIydBQ.s 			page 255


 11055 09c7 71       		.byte	0x71
 11056 09c8 00       		.sleb128 0
 11057 09c9 37       		.byte	0x37
 11058 09ca 1A       		.byte	0x1a
 11059 09cb 23       		.byte	0x23
 11060 09cc 02       		.uleb128 0x2
 11061 09cd 24       		.byte	0x24
 11062 09ce 9F       		.byte	0x9f
 11063 09cf 54000000 		.4byte	.LVL21
 11064 09d3 58000000 		.4byte	.LVL22
 11065 09d7 2600     		.2byte	0x26
 11066 09d9 72       		.byte	0x72
 11067 09da 1C       		.sleb128 28
 11068 09db 94       		.byte	0x94
 11069 09dc 01       		.byte	0x1
 11070 09dd 08       		.byte	0x8
 11071 09de FF       		.byte	0xff
 11072 09df 1A       		.byte	0x1a
 11073 09e0 32       		.byte	0x32
 11074 09e1 24       		.byte	0x24
 11075 09e2 72       		.byte	0x72
 11076 09e3 1B       		.sleb128 27
 11077 09e4 94       		.byte	0x94
 11078 09e5 01       		.byte	0x1
 11079 09e6 08       		.byte	0x8
 11080 09e7 FF       		.byte	0xff
 11081 09e8 1A       		.byte	0x1a
 11082 09e9 3A       		.byte	0x3a
 11083 09ea 24       		.byte	0x24
 11084 09eb 21       		.byte	0x21
 11085 09ec 75       		.byte	0x75
 11086 09ed 00       		.sleb128 0
 11087 09ee 36       		.byte	0x36
 11088 09ef 25       		.byte	0x25
 11089 09f0 21       		.byte	0x21
 11090 09f1 0A       		.byte	0xa
 11091 09f2 FF0F     		.2byte	0xfff
 11092 09f4 1A       		.byte	0x1a
 11093 09f5 23       		.byte	0x23
 11094 09f6 01       		.uleb128 0x1
 11095 09f7 71       		.byte	0x71
 11096 09f8 00       		.sleb128 0
 11097 09f9 37       		.byte	0x37
 11098 09fa 1A       		.byte	0x1a
 11099 09fb 23       		.byte	0x23
 11100 09fc 02       		.uleb128 0x2
 11101 09fd 24       		.byte	0x24
 11102 09fe 9F       		.byte	0x9f
 11103 09ff 58000000 		.4byte	.LVL22
 11104 0a03 64000000 		.4byte	.LVL23
 11105 0a07 3200     		.2byte	0x32
 11106 0a09 72       		.byte	0x72
 11107 0a0a 1C       		.sleb128 28
 11108 0a0b 94       		.byte	0x94
 11109 0a0c 01       		.byte	0x1
 11110 0a0d 08       		.byte	0x8
 11111 0a0e FF       		.byte	0xff
ARM GAS  /tmp/ccTIydBQ.s 			page 256


 11112 0a0f 1A       		.byte	0x1a
 11113 0a10 32       		.byte	0x32
 11114 0a11 24       		.byte	0x24
 11115 0a12 72       		.byte	0x72
 11116 0a13 1B       		.sleb128 27
 11117 0a14 94       		.byte	0x94
 11118 0a15 01       		.byte	0x1
 11119 0a16 08       		.byte	0x8
 11120 0a17 FF       		.byte	0xff
 11121 0a18 1A       		.byte	0x1a
 11122 0a19 3A       		.byte	0x3a
 11123 0a1a 24       		.byte	0x24
 11124 0a1b 21       		.byte	0x21
 11125 0a1c 75       		.byte	0x75
 11126 0a1d 00       		.sleb128 0
 11127 0a1e 36       		.byte	0x36
 11128 0a1f 25       		.byte	0x25
 11129 0a20 21       		.byte	0x21
 11130 0a21 0A       		.byte	0xa
 11131 0a22 FF0F     		.2byte	0xfff
 11132 0a24 1A       		.byte	0x1a
 11133 0a25 23       		.byte	0x23
 11134 0a26 01       		.uleb128 0x1
 11135 0a27 74       		.byte	0x74
 11136 0a28 00       		.sleb128 0
 11137 0a29 37       		.byte	0x37
 11138 0a2a 25       		.byte	0x25
 11139 0a2b 72       		.byte	0x72
 11140 0a2c 1E       		.sleb128 30
 11141 0a2d 94       		.byte	0x94
 11142 0a2e 01       		.byte	0x1
 11143 0a2f 08       		.byte	0x8
 11144 0a30 FF       		.byte	0xff
 11145 0a31 1A       		.byte	0x1a
 11146 0a32 31       		.byte	0x31
 11147 0a33 24       		.byte	0x24
 11148 0a34 21       		.byte	0x21
 11149 0a35 37       		.byte	0x37
 11150 0a36 1A       		.byte	0x1a
 11151 0a37 23       		.byte	0x23
 11152 0a38 02       		.uleb128 0x2
 11153 0a39 24       		.byte	0x24
 11154 0a3a 9F       		.byte	0x9f
 11155 0a3b 64000000 		.4byte	.LVL23
 11156 0a3f 68000000 		.4byte	.LVL24
 11157 0a43 3C00     		.2byte	0x3c
 11158 0a45 72       		.byte	0x72
 11159 0a46 1C       		.sleb128 28
 11160 0a47 94       		.byte	0x94
 11161 0a48 01       		.byte	0x1
 11162 0a49 08       		.byte	0x8
 11163 0a4a FF       		.byte	0xff
 11164 0a4b 1A       		.byte	0x1a
 11165 0a4c 32       		.byte	0x32
 11166 0a4d 24       		.byte	0x24
 11167 0a4e 72       		.byte	0x72
 11168 0a4f 1B       		.sleb128 27
ARM GAS  /tmp/ccTIydBQ.s 			page 257


 11169 0a50 94       		.byte	0x94
 11170 0a51 01       		.byte	0x1
 11171 0a52 08       		.byte	0x8
 11172 0a53 FF       		.byte	0xff
 11173 0a54 1A       		.byte	0x1a
 11174 0a55 3A       		.byte	0x3a
 11175 0a56 24       		.byte	0x24
 11176 0a57 21       		.byte	0x21
 11177 0a58 72       		.byte	0x72
 11178 0a59 1D       		.sleb128 29
 11179 0a5a 94       		.byte	0x94
 11180 0a5b 01       		.byte	0x1
 11181 0a5c 08       		.byte	0x8
 11182 0a5d FF       		.byte	0xff
 11183 0a5e 1A       		.byte	0x1a
 11184 0a5f 36       		.byte	0x36
 11185 0a60 25       		.byte	0x25
 11186 0a61 21       		.byte	0x21
 11187 0a62 0A       		.byte	0xa
 11188 0a63 FF0F     		.2byte	0xfff
 11189 0a65 1A       		.byte	0x1a
 11190 0a66 23       		.byte	0x23
 11191 0a67 01       		.uleb128 0x1
 11192 0a68 72       		.byte	0x72
 11193 0a69 1F       		.sleb128 31
 11194 0a6a 94       		.byte	0x94
 11195 0a6b 01       		.byte	0x1
 11196 0a6c 08       		.byte	0x8
 11197 0a6d FF       		.byte	0xff
 11198 0a6e 1A       		.byte	0x1a
 11199 0a6f 37       		.byte	0x37
 11200 0a70 25       		.byte	0x25
 11201 0a71 72       		.byte	0x72
 11202 0a72 1E       		.sleb128 30
 11203 0a73 94       		.byte	0x94
 11204 0a74 01       		.byte	0x1
 11205 0a75 08       		.byte	0x8
 11206 0a76 FF       		.byte	0xff
 11207 0a77 1A       		.byte	0x1a
 11208 0a78 31       		.byte	0x31
 11209 0a79 24       		.byte	0x24
 11210 0a7a 21       		.byte	0x21
 11211 0a7b 37       		.byte	0x37
 11212 0a7c 1A       		.byte	0x1a
 11213 0a7d 23       		.byte	0x23
 11214 0a7e 02       		.uleb128 0x2
 11215 0a7f 24       		.byte	0x24
 11216 0a80 9F       		.byte	0x9f
 11217 0a81 00000000 		.4byte	0
 11218 0a85 00000000 		.4byte	0
 11219              	.LLST20:
 11220 0a89 30000000 		.4byte	.LVL16
 11221 0a8d 48000000 		.4byte	.LVL19
 11222 0a91 0200     		.2byte	0x2
 11223 0a93 3C       		.byte	0x3c
 11224 0a94 9F       		.byte	0x9f
 11225 0a95 00000000 		.4byte	0
ARM GAS  /tmp/ccTIydBQ.s 			page 258


 11226 0a99 00000000 		.4byte	0
 11227              	.LLST21:
 11228 0a9d 30000000 		.4byte	.LVL16
 11229 0aa1 48000000 		.4byte	.LVL19
 11230 0aa5 0300     		.2byte	0x3
 11231 0aa7 08       		.byte	0x8
 11232 0aa8 3E       		.byte	0x3e
 11233 0aa9 9F       		.byte	0x9f
 11234 0aaa 00000000 		.4byte	0
 11235 0aae 00000000 		.4byte	0
 11236              	.LLST22:
 11237 0ab2 30000000 		.4byte	.LVL16
 11238 0ab6 48000000 		.4byte	.LVL19
 11239 0aba 0300     		.2byte	0x3
 11240 0abc 08       		.byte	0x8
 11241 0abd 80       		.byte	0x80
 11242 0abe 9F       		.byte	0x9f
 11243 0abf 00000000 		.4byte	0
 11244 0ac3 00000000 		.4byte	0
 11245              	.LLST23:
 11246 0ac7 30000000 		.4byte	.LVL16
 11247 0acb 48000000 		.4byte	.LVL19
 11248 0acf 0300     		.2byte	0x3
 11249 0ad1 72       		.byte	0x72
 11250 0ad2 15       		.sleb128 21
 11251 0ad3 9F       		.byte	0x9f
 11252 0ad4 00000000 		.4byte	0
 11253 0ad8 00000000 		.4byte	0
 11254              	.LLST24:
 11255 0adc 3A000000 		.4byte	.LVL17
 11256 0ae0 3E000000 		.4byte	.LVL18
 11257 0ae4 1200     		.2byte	0x12
 11258 0ae6 72       		.byte	0x72
 11259 0ae7 1C       		.sleb128 28
 11260 0ae8 94       		.byte	0x94
 11261 0ae9 01       		.byte	0x1
 11262 0aea 08       		.byte	0x8
 11263 0aeb FF       		.byte	0xff
 11264 0aec 1A       		.byte	0x1a
 11265 0aed 32       		.byte	0x32
 11266 0aee 24       		.byte	0x24
 11267 0aef 75       		.byte	0x75
 11268 0af0 00       		.sleb128 0
 11269 0af1 36       		.byte	0x36
 11270 0af2 25       		.byte	0x25
 11271 0af3 21       		.byte	0x21
 11272 0af4 73       		.byte	0x73
 11273 0af5 00       		.sleb128 0
 11274 0af6 21       		.byte	0x21
 11275 0af7 9F       		.byte	0x9f
 11276 0af8 3E000000 		.4byte	.LVL18
 11277 0afc 48000000 		.4byte	.LVL19
 11278 0b00 1900     		.2byte	0x19
 11279 0b02 72       		.byte	0x72
 11280 0b03 1C       		.sleb128 28
 11281 0b04 94       		.byte	0x94
 11282 0b05 01       		.byte	0x1
ARM GAS  /tmp/ccTIydBQ.s 			page 259


 11283 0b06 08       		.byte	0x8
 11284 0b07 FF       		.byte	0xff
 11285 0b08 1A       		.byte	0x1a
 11286 0b09 32       		.byte	0x32
 11287 0b0a 24       		.byte	0x24
 11288 0b0b 75       		.byte	0x75
 11289 0b0c 00       		.sleb128 0
 11290 0b0d 36       		.byte	0x36
 11291 0b0e 25       		.byte	0x25
 11292 0b0f 21       		.byte	0x21
 11293 0b10 72       		.byte	0x72
 11294 0b11 1B       		.sleb128 27
 11295 0b12 94       		.byte	0x94
 11296 0b13 01       		.byte	0x1
 11297 0b14 08       		.byte	0x8
 11298 0b15 FF       		.byte	0xff
 11299 0b16 1A       		.byte	0x1a
 11300 0b17 3A       		.byte	0x3a
 11301 0b18 24       		.byte	0x24
 11302 0b19 21       		.byte	0x21
 11303 0b1a 9F       		.byte	0x9f
 11304 0b1b 00000000 		.4byte	0
 11305 0b1f 00000000 		.4byte	0
 11306              	.LLST25:
 11307 0b23 48000000 		.4byte	.LVL19
 11308 0b27 4C000000 		.4byte	.LVL20
 11309 0b2b 0200     		.2byte	0x2
 11310 0b2d 33       		.byte	0x33
 11311 0b2e 9F       		.byte	0x9f
 11312 0b2f 00000000 		.4byte	0
 11313 0b33 00000000 		.4byte	0
 11314              	.LLST26:
 11315 0b37 48000000 		.4byte	.LVL19
 11316 0b3b 4C000000 		.4byte	.LVL20
 11317 0b3f 0300     		.2byte	0x3
 11318 0b41 08       		.byte	0x8
 11319 0b42 2F       		.byte	0x2f
 11320 0b43 9F       		.byte	0x9f
 11321 0b44 00000000 		.4byte	0
 11322 0b48 00000000 		.4byte	0
 11323              	.LLST27:
 11324 0b4c 48000000 		.4byte	.LVL19
 11325 0b50 4C000000 		.4byte	.LVL20
 11326 0b54 0300     		.2byte	0x3
 11327 0b56 08       		.byte	0x8
 11328 0b57 80       		.byte	0x80
 11329 0b58 9F       		.byte	0x9f
 11330 0b59 00000000 		.4byte	0
 11331 0b5d 00000000 		.4byte	0
 11332              	.LLST28:
 11333 0b61 48000000 		.4byte	.LVL19
 11334 0b65 4C000000 		.4byte	.LVL20
 11335 0b69 0300     		.2byte	0x3
 11336 0b6b 72       		.byte	0x72
 11337 0b6c 15       		.sleb128 21
 11338 0b6d 9F       		.byte	0x9f
 11339 0b6e 00000000 		.4byte	0
ARM GAS  /tmp/ccTIydBQ.s 			page 260


 11340 0b72 00000000 		.4byte	0
 11341              	.LLST29:
 11342 0b76 48000000 		.4byte	.LVL19
 11343 0b7a 4C000000 		.4byte	.LVL20
 11344 0b7e 0500     		.2byte	0x5
 11345 0b80 74       		.byte	0x74
 11346 0b81 00       		.sleb128 0
 11347 0b82 37       		.byte	0x37
 11348 0b83 25       		.byte	0x25
 11349 0b84 9F       		.byte	0x9f
 11350 0b85 00000000 		.4byte	0
 11351 0b89 00000000 		.4byte	0
 11352              	.LLST15:
 11353 0b8d 08000000 		.4byte	.LVL13
 11354 0b91 0C000000 		.4byte	.LVL14
 11355 0b95 0200     		.2byte	0x2
 11356 0b97 38       		.byte	0x38
 11357 0b98 9F       		.byte	0x9f
 11358 0b99 00000000 		.4byte	0
 11359 0b9d 00000000 		.4byte	0
 11360              	.LLST16:
 11361 0ba1 08000000 		.4byte	.LVL13
 11362 0ba5 0C000000 		.4byte	.LVL14
 11363 0ba9 0300     		.2byte	0x3
 11364 0bab 08       		.byte	0x8
 11365 0bac 60       		.byte	0x60
 11366 0bad 9F       		.byte	0x9f
 11367 0bae 00000000 		.4byte	0
 11368 0bb2 00000000 		.4byte	0
 11369              	.LLST17:
 11370 0bb6 08000000 		.4byte	.LVL13
 11371 0bba 0C000000 		.4byte	.LVL14
 11372 0bbe 0300     		.2byte	0x3
 11373 0bc0 08       		.byte	0x8
 11374 0bc1 80       		.byte	0x80
 11375 0bc2 9F       		.byte	0x9f
 11376 0bc3 00000000 		.4byte	0
 11377 0bc7 00000000 		.4byte	0
 11378              	.LLST18:
 11379 0bcb 08000000 		.4byte	.LVL13
 11380 0bcf 0C000000 		.4byte	.LVL14
 11381 0bd3 0300     		.2byte	0x3
 11382 0bd5 72       		.byte	0x72
 11383 0bd6 15       		.sleb128 21
 11384 0bd7 9F       		.byte	0x9f
 11385 0bd8 00000000 		.4byte	0
 11386 0bdc 00000000 		.4byte	0
 11387              	.LLST30:
 11388 0be0 68000000 		.4byte	.LVL24
 11389 0be4 76000000 		.4byte	.LVL27
 11390 0be8 0200     		.2byte	0x2
 11391 0bea 46       		.byte	0x46
 11392 0beb 9F       		.byte	0x9f
 11393 0bec 00000000 		.4byte	0
 11394 0bf0 00000000 		.4byte	0
 11395              	.LLST31:
 11396 0bf4 68000000 		.4byte	.LVL24
ARM GAS  /tmp/ccTIydBQ.s 			page 261


 11397 0bf8 76000000 		.4byte	.LVL27
 11398 0bfc 0300     		.2byte	0x3
 11399 0bfe 08       		.byte	0x8
 11400 0bff 30       		.byte	0x30
 11401 0c00 9F       		.byte	0x9f
 11402 0c01 00000000 		.4byte	0
 11403 0c05 00000000 		.4byte	0
 11404              	.LLST32:
 11405 0c09 68000000 		.4byte	.LVL24
 11406 0c0d 76000000 		.4byte	.LVL27
 11407 0c11 0300     		.2byte	0x3
 11408 0c13 08       		.byte	0x8
 11409 0c14 80       		.byte	0x80
 11410 0c15 9F       		.byte	0x9f
 11411 0c16 00000000 		.4byte	0
 11412 0c1a 00000000 		.4byte	0
 11413              	.LLST33:
 11414 0c1e 68000000 		.4byte	.LVL24
 11415 0c22 76000000 		.4byte	.LVL27
 11416 0c26 0300     		.2byte	0x3
 11417 0c28 72       		.byte	0x72
 11418 0c29 15       		.sleb128 21
 11419 0c2a 9F       		.byte	0x9f
 11420 0c2b 00000000 		.4byte	0
 11421 0c2f 00000000 		.4byte	0
 11422              	.LLST34:
 11423 0c33 70000000 		.4byte	.LVL25
 11424 0c37 74000000 		.4byte	.LVL26
 11425 0c3b 1000     		.2byte	0x10
 11426 0c3d 72       		.byte	0x72
 11427 0c3e 1D       		.sleb128 29
 11428 0c3f 94       		.byte	0x94
 11429 0c40 01       		.byte	0x1
 11430 0c41 08       		.byte	0x8
 11431 0c42 FF       		.byte	0xff
 11432 0c43 1A       		.byte	0x1a
 11433 0c44 38       		.byte	0x38
 11434 0c45 24       		.byte	0x24
 11435 0c46 71       		.byte	0x71
 11436 0c47 00       		.sleb128 0
 11437 0c48 21       		.byte	0x21
 11438 0c49 73       		.byte	0x73
 11439 0c4a 00       		.sleb128 0
 11440 0c4b 21       		.byte	0x21
 11441 0c4c 9F       		.byte	0x9f
 11442 0c4d 74000000 		.4byte	.LVL26
 11443 0c51 76000000 		.4byte	.LVL27
 11444 0c55 1700     		.2byte	0x17
 11445 0c57 72       		.byte	0x72
 11446 0c58 1D       		.sleb128 29
 11447 0c59 94       		.byte	0x94
 11448 0c5a 01       		.byte	0x1
 11449 0c5b 08       		.byte	0x8
 11450 0c5c FF       		.byte	0xff
 11451 0c5d 1A       		.byte	0x1a
 11452 0c5e 38       		.byte	0x38
 11453 0c5f 24       		.byte	0x24
ARM GAS  /tmp/ccTIydBQ.s 			page 262


 11454 0c60 72       		.byte	0x72
 11455 0c61 1C       		.sleb128 28
 11456 0c62 94       		.byte	0x94
 11457 0c63 01       		.byte	0x1
 11458 0c64 08       		.byte	0x8
 11459 0c65 FF       		.byte	0xff
 11460 0c66 1A       		.byte	0x1a
 11461 0c67 40       		.byte	0x40
 11462 0c68 24       		.byte	0x24
 11463 0c69 21       		.byte	0x21
 11464 0c6a 71       		.byte	0x71
 11465 0c6b 00       		.sleb128 0
 11466 0c6c 21       		.byte	0x21
 11467 0c6d 9F       		.byte	0x9f
 11468 0c6e 00000000 		.4byte	0
 11469 0c72 00000000 		.4byte	0
 11470              	.LLST1:
 11471 0c76 26000000 		.4byte	.LVL4
 11472 0c7a 42000000 		.4byte	.LVL5
 11473 0c7e 0F00     		.2byte	0xf
 11474 0c80 70       		.byte	0x70
 11475 0c81 00       		.sleb128 0
 11476 0c82 37       		.byte	0x37
 11477 0c83 1A       		.byte	0x1a
 11478 0c84 08       		.byte	0x8
 11479 0c85 FF       		.byte	0xff
 11480 0c86 1A       		.byte	0x1a
 11481 0c87 32       		.byte	0x32
 11482 0c88 24       		.byte	0x24
 11483 0c89 03       		.byte	0x3
 11484 0c8a 00000000 		.4byte	sd_mmc_trans_units
 11485 0c8e 22       		.byte	0x22
 11486 0c8f 42000000 		.4byte	.LVL5
 11487 0c93 82000000 		.4byte	.LVL12
 11488 0c97 1100     		.2byte	0x11
 11489 0c99 72       		.byte	0x72
 11490 0c9a 18       		.sleb128 24
 11491 0c9b 94       		.byte	0x94
 11492 0c9c 01       		.byte	0x1
 11493 0c9d 37       		.byte	0x37
 11494 0c9e 1A       		.byte	0x1a
 11495 0c9f 08       		.byte	0x8
 11496 0ca0 FF       		.byte	0xff
 11497 0ca1 1A       		.byte	0x1a
 11498 0ca2 32       		.byte	0x32
 11499 0ca3 24       		.byte	0x24
 11500 0ca4 03       		.byte	0x3
 11501 0ca5 00000000 		.4byte	sd_mmc_trans_units
 11502 0ca9 22       		.byte	0x22
 11503 0caa 00000000 		.4byte	0
 11504 0cae 00000000 		.4byte	0
 11505              	.LLST2:
 11506 0cb2 26000000 		.4byte	.LVL4
 11507 0cb6 42000000 		.4byte	.LVL5
 11508 0cba 1100     		.2byte	0x11
 11509 0cbc 70       		.byte	0x70
 11510 0cbd 00       		.sleb128 0
ARM GAS  /tmp/ccTIydBQ.s 			page 263


 11511 0cbe 08       		.byte	0x8
 11512 0cbf FF       		.byte	0xff
 11513 0cc0 1A       		.byte	0x1a
 11514 0cc1 33       		.byte	0x33
 11515 0cc2 25       		.byte	0x25
 11516 0cc3 3F       		.byte	0x3f
 11517 0cc4 1A       		.byte	0x1a
 11518 0cc5 32       		.byte	0x32
 11519 0cc6 24       		.byte	0x24
 11520 0cc7 03       		.byte	0x3
 11521 0cc8 00000000 		.4byte	mmc_trans_multipliers
 11522 0ccc 22       		.byte	0x22
 11523 0ccd 42000000 		.4byte	.LVL5
 11524 0cd1 82000000 		.4byte	.LVL12
 11525 0cd5 1300     		.2byte	0x13
 11526 0cd7 72       		.byte	0x72
 11527 0cd8 18       		.sleb128 24
 11528 0cd9 94       		.byte	0x94
 11529 0cda 01       		.byte	0x1
 11530 0cdb 08       		.byte	0x8
 11531 0cdc FF       		.byte	0xff
 11532 0cdd 1A       		.byte	0x1a
 11533 0cde 33       		.byte	0x33
 11534 0cdf 25       		.byte	0x25
 11535 0ce0 3F       		.byte	0x3f
 11536 0ce1 1A       		.byte	0x1a
 11537 0ce2 32       		.byte	0x32
 11538 0ce3 24       		.byte	0x24
 11539 0ce4 03       		.byte	0x3
 11540 0ce5 00000000 		.4byte	mmc_trans_multipliers
 11541 0ce9 22       		.byte	0x22
 11542 0cea 00000000 		.4byte	0
 11543 0cee 00000000 		.4byte	0
 11544              	.LLST7:
 11545 0cf2 6C000000 		.4byte	.LVL8
 11546 0cf6 74000000 		.4byte	.LVL9
 11547 0cfa 0A00     		.2byte	0xa
 11548 0cfc 73       		.byte	0x73
 11549 0cfd 00       		.sleb128 0
 11550 0cfe 71       		.byte	0x71
 11551 0cff 00       		.sleb128 0
 11552 0d00 37       		.byte	0x37
 11553 0d01 1A       		.byte	0x1a
 11554 0d02 23       		.byte	0x23
 11555 0d03 02       		.uleb128 0x2
 11556 0d04 24       		.byte	0x24
 11557 0d05 9F       		.byte	0x9f
 11558 0d06 74000000 		.4byte	.LVL9
 11559 0d0a 78000000 		.4byte	.LVL10
 11560 0d0e 1600     		.2byte	0x16
 11561 0d10 73       		.byte	0x73
 11562 0d11 00       		.sleb128 0
 11563 0d12 74       		.byte	0x74
 11564 0d13 00       		.sleb128 0
 11565 0d14 37       		.byte	0x37
 11566 0d15 25       		.byte	0x25
 11567 0d16 72       		.byte	0x72
ARM GAS  /tmp/ccTIydBQ.s 			page 264


 11568 0d17 1E       		.sleb128 30
 11569 0d18 94       		.byte	0x94
 11570 0d19 01       		.byte	0x1
 11571 0d1a 08       		.byte	0x8
 11572 0d1b FF       		.byte	0xff
 11573 0d1c 1A       		.byte	0x1a
 11574 0d1d 31       		.byte	0x31
 11575 0d1e 24       		.byte	0x24
 11576 0d1f 21       		.byte	0x21
 11577 0d20 37       		.byte	0x37
 11578 0d21 1A       		.byte	0x1a
 11579 0d22 23       		.byte	0x23
 11580 0d23 02       		.uleb128 0x2
 11581 0d24 24       		.byte	0x24
 11582 0d25 9F       		.byte	0x9f
 11583 0d26 78000000 		.4byte	.LVL10
 11584 0d2a 7E000000 		.4byte	.LVL11
 11585 0d2e 3400     		.2byte	0x34
 11586 0d30 72       		.byte	0x72
 11587 0d31 1C       		.sleb128 28
 11588 0d32 94       		.byte	0x94
 11589 0d33 01       		.byte	0x1
 11590 0d34 08       		.byte	0x8
 11591 0d35 FF       		.byte	0xff
 11592 0d36 1A       		.byte	0x1a
 11593 0d37 32       		.byte	0x32
 11594 0d38 24       		.byte	0x24
 11595 0d39 72       		.byte	0x72
 11596 0d3a 1B       		.sleb128 27
 11597 0d3b 94       		.byte	0x94
 11598 0d3c 01       		.byte	0x1
 11599 0d3d 08       		.byte	0x8
 11600 0d3e FF       		.byte	0xff
 11601 0d3f 1A       		.byte	0x1a
 11602 0d40 3A       		.byte	0x3a
 11603 0d41 24       		.byte	0x24
 11604 0d42 21       		.byte	0x21
 11605 0d43 75       		.byte	0x75
 11606 0d44 00       		.sleb128 0
 11607 0d45 36       		.byte	0x36
 11608 0d46 25       		.byte	0x25
 11609 0d47 21       		.byte	0x21
 11610 0d48 09       		.byte	0x9
 11611 0d49 F8       		.byte	0xf8
 11612 0d4a 24       		.byte	0x24
 11613 0d4b 09       		.byte	0x9
 11614 0d4c F8       		.byte	0xf8
 11615 0d4d 25       		.byte	0x25
 11616 0d4e 23       		.byte	0x23
 11617 0d4f 01       		.uleb128 0x1
 11618 0d50 74       		.byte	0x74
 11619 0d51 00       		.sleb128 0
 11620 0d52 37       		.byte	0x37
 11621 0d53 25       		.byte	0x25
 11622 0d54 72       		.byte	0x72
 11623 0d55 1E       		.sleb128 30
 11624 0d56 94       		.byte	0x94
ARM GAS  /tmp/ccTIydBQ.s 			page 265


 11625 0d57 01       		.byte	0x1
 11626 0d58 08       		.byte	0x8
 11627 0d59 FF       		.byte	0xff
 11628 0d5a 1A       		.byte	0x1a
 11629 0d5b 31       		.byte	0x31
 11630 0d5c 24       		.byte	0x24
 11631 0d5d 21       		.byte	0x21
 11632 0d5e 37       		.byte	0x37
 11633 0d5f 1A       		.byte	0x1a
 11634 0d60 23       		.byte	0x23
 11635 0d61 02       		.uleb128 0x2
 11636 0d62 24       		.byte	0x24
 11637 0d63 9F       		.byte	0x9f
 11638 0d64 00000000 		.4byte	0
 11639 0d68 00000000 		.4byte	0
 11640              	.LLST8:
 11641 0d6c 5E000000 		.4byte	.LVL6
 11642 0d70 6C000000 		.4byte	.LVL8
 11643 0d74 0200     		.2byte	0x2
 11644 0d76 33       		.byte	0x33
 11645 0d77 9F       		.byte	0x9f
 11646 0d78 00000000 		.4byte	0
 11647 0d7c 00000000 		.4byte	0
 11648              	.LLST9:
 11649 0d80 5E000000 		.4byte	.LVL6
 11650 0d84 6C000000 		.4byte	.LVL8
 11651 0d88 0300     		.2byte	0x3
 11652 0d8a 08       		.byte	0x8
 11653 0d8b 2F       		.byte	0x2f
 11654 0d8c 9F       		.byte	0x9f
 11655 0d8d 00000000 		.4byte	0
 11656 0d91 00000000 		.4byte	0
 11657              	.LLST10:
 11658 0d95 5E000000 		.4byte	.LVL6
 11659 0d99 6C000000 		.4byte	.LVL8
 11660 0d9d 0300     		.2byte	0x3
 11661 0d9f 08       		.byte	0x8
 11662 0da0 80       		.byte	0x80
 11663 0da1 9F       		.byte	0x9f
 11664 0da2 00000000 		.4byte	0
 11665 0da6 00000000 		.4byte	0
 11666              	.LLST11:
 11667 0daa 5E000000 		.4byte	.LVL6
 11668 0dae 6C000000 		.4byte	.LVL8
 11669 0db2 0300     		.2byte	0x3
 11670 0db4 72       		.byte	0x72
 11671 0db5 15       		.sleb128 21
 11672 0db6 9F       		.byte	0x9f
 11673 0db7 00000000 		.4byte	0
 11674 0dbb 00000000 		.4byte	0
 11675              	.LLST12:
 11676 0dbf 64000000 		.4byte	.LVL7
 11677 0dc3 6C000000 		.4byte	.LVL8
 11678 0dc7 0500     		.2byte	0x5
 11679 0dc9 74       		.byte	0x74
 11680 0dca 00       		.sleb128 0
 11681 0dcb 37       		.byte	0x37
ARM GAS  /tmp/ccTIydBQ.s 			page 266


 11682 0dcc 25       		.byte	0x25
 11683 0dcd 9F       		.byte	0x9f
 11684 0dce 00000000 		.4byte	0
 11685 0dd2 00000000 		.4byte	0
 11686              	.LLST3:
 11687 0dd6 1E000000 		.4byte	.LVL3
 11688 0dda 26000000 		.4byte	.LVL4
 11689 0dde 0200     		.2byte	0x2
 11690 0de0 38       		.byte	0x38
 11691 0de1 9F       		.byte	0x9f
 11692 0de2 00000000 		.4byte	0
 11693 0de6 00000000 		.4byte	0
 11694              	.LLST4:
 11695 0dea 1E000000 		.4byte	.LVL3
 11696 0dee 26000000 		.4byte	.LVL4
 11697 0df2 0300     		.2byte	0x3
 11698 0df4 08       		.byte	0x8
 11699 0df5 60       		.byte	0x60
 11700 0df6 9F       		.byte	0x9f
 11701 0df7 00000000 		.4byte	0
 11702 0dfb 00000000 		.4byte	0
 11703              	.LLST5:
 11704 0dff 1E000000 		.4byte	.LVL3
 11705 0e03 26000000 		.4byte	.LVL4
 11706 0e07 0300     		.2byte	0x3
 11707 0e09 08       		.byte	0x8
 11708 0e0a 80       		.byte	0x80
 11709 0e0b 9F       		.byte	0x9f
 11710 0e0c 00000000 		.4byte	0
 11711 0e10 00000000 		.4byte	0
 11712              	.LLST6:
 11713 0e14 1E000000 		.4byte	.LVL3
 11714 0e18 26000000 		.4byte	.LVL4
 11715 0e1c 0300     		.2byte	0x3
 11716 0e1e 72       		.byte	0x72
 11717 0e1f 15       		.sleb128 21
 11718 0e20 9F       		.byte	0x9f
 11719 0e21 00000000 		.4byte	0
 11720 0e25 00000000 		.4byte	0
 11721              	.LLST0:
 11722 0e29 00000000 		.4byte	.LVL0
 11723 0e2d 02000000 		.4byte	.LVL1
 11724 0e31 0100     		.2byte	0x1
 11725 0e33 50       		.byte	0x50
 11726 0e34 02000000 		.4byte	.LVL1
 11727 0e38 04000000 		.4byte	.LFE228
 11728 0e3c 0400     		.2byte	0x4
 11729 0e3e F3       		.byte	0xf3
 11730 0e3f 01       		.uleb128 0x1
 11731 0e40 50       		.byte	0x50
 11732 0e41 9F       		.byte	0x9f
 11733 0e42 00000000 		.4byte	0
 11734 0e46 00000000 		.4byte	0
 11735              	.LLST36:
 11736 0e4a 00000000 		.4byte	.LVL38
 11737 0e4e 12000000 		.4byte	.LVL39
 11738 0e52 0100     		.2byte	0x1
ARM GAS  /tmp/ccTIydBQ.s 			page 267


 11739 0e54 50       		.byte	0x50
 11740 0e55 12000000 		.4byte	.LVL39
 11741 0e59 48000000 		.4byte	.LVL47
 11742 0e5d 0100     		.2byte	0x1
 11743 0e5f 57       		.byte	0x57
 11744 0e60 48000000 		.4byte	.LVL47
 11745 0e64 4C000000 		.4byte	.LFE242
 11746 0e68 0400     		.2byte	0x4
 11747 0e6a F3       		.byte	0xf3
 11748 0e6b 01       		.uleb128 0x1
 11749 0e6c 50       		.byte	0x50
 11750 0e6d 9F       		.byte	0x9f
 11751 0e6e 00000000 		.4byte	0
 11752 0e72 00000000 		.4byte	0
 11753              	.LLST37:
 11754 0e76 26000000 		.4byte	.LVL42
 11755 0e7a 48000000 		.4byte	.LVL47
 11756 0e7e 0100     		.2byte	0x1
 11757 0e80 57       		.byte	0x57
 11758 0e81 48000000 		.4byte	.LVL47
 11759 0e85 4C000000 		.4byte	.LFE242
 11760 0e89 0400     		.2byte	0x4
 11761 0e8b F3       		.byte	0xf3
 11762 0e8c 01       		.uleb128 0x1
 11763 0e8d 50       		.byte	0x50
 11764 0e8e 9F       		.byte	0x9f
 11765 0e8f 00000000 		.4byte	0
 11766 0e93 00000000 		.4byte	0
 11767              	.LLST38:
 11768 0e97 2C000000 		.4byte	.LVL43
 11769 0e9b 34000000 		.4byte	.LVL44
 11770 0e9f 0100     		.2byte	0x1
 11771 0ea1 50       		.byte	0x50
 11772 0ea2 34000000 		.4byte	.LVL44
 11773 0ea6 42000000 		.4byte	.LVL46
 11774 0eaa 0300     		.2byte	0x3
 11775 0eac 73       		.byte	0x73
 11776 0ead 7F       		.sleb128 -1
 11777 0eae 9F       		.byte	0x9f
 11778 0eaf 00000000 		.4byte	0
 11779 0eb3 00000000 		.4byte	0
 11780              	.LLST39:
 11781 0eb7 00000000 		.4byte	.LVL48
 11782 0ebb 1A000000 		.4byte	.LVL49
 11783 0ebf 0100     		.2byte	0x1
 11784 0ec1 50       		.byte	0x50
 11785 0ec2 1A000000 		.4byte	.LVL49
 11786 0ec6 38000000 		.4byte	.LVL55
 11787 0eca 0100     		.2byte	0x1
 11788 0ecc 56       		.byte	0x56
 11789 0ecd 38000000 		.4byte	.LVL55
 11790 0ed1 3E000000 		.4byte	.LVL56
 11791 0ed5 0400     		.2byte	0x4
 11792 0ed7 F3       		.byte	0xf3
 11793 0ed8 01       		.uleb128 0x1
 11794 0ed9 50       		.byte	0x50
 11795 0eda 9F       		.byte	0x9f
ARM GAS  /tmp/ccTIydBQ.s 			page 268


 11796 0edb 3E000000 		.4byte	.LVL56
 11797 0edf 68000000 		.4byte	.LVL61
 11798 0ee3 0100     		.2byte	0x1
 11799 0ee5 56       		.byte	0x56
 11800 0ee6 68000000 		.4byte	.LVL61
 11801 0eea 82000000 		.4byte	.LVL66
 11802 0eee 0400     		.2byte	0x4
 11803 0ef0 F3       		.byte	0xf3
 11804 0ef1 01       		.uleb128 0x1
 11805 0ef2 50       		.byte	0x50
 11806 0ef3 9F       		.byte	0x9f
 11807 0ef4 82000000 		.4byte	.LVL66
 11808 0ef8 86000000 		.4byte	.LVL67
 11809 0efc 0100     		.2byte	0x1
 11810 0efe 56       		.byte	0x56
 11811 0eff 86000000 		.4byte	.LVL67
 11812 0f03 B4000000 		.4byte	.LFE243
 11813 0f07 0400     		.2byte	0x4
 11814 0f09 F3       		.byte	0xf3
 11815 0f0a 01       		.uleb128 0x1
 11816 0f0b 50       		.byte	0x50
 11817 0f0c 9F       		.byte	0x9f
 11818 0f0d 00000000 		.4byte	0
 11819 0f11 00000000 		.4byte	0
 11820              	.LLST40:
 11821 0f15 28000000 		.4byte	.LVL52
 11822 0f19 2E000000 		.4byte	.LVL53
 11823 0f1d 0600     		.2byte	0x6
 11824 0f1f 08       		.byte	0x8
 11825 0f20 32       		.byte	0x32
 11826 0f21 74       		.byte	0x74
 11827 0f22 00       		.sleb128 0
 11828 0f23 1C       		.byte	0x1c
 11829 0f24 9F       		.byte	0x9f
 11830 0f25 6C000000 		.4byte	.LVL62
 11831 0f29 78000000 		.4byte	.LVL64
 11832 0f2d 0100     		.2byte	0x1
 11833 0f2f 54       		.byte	0x54
 11834 0f30 88000000 		.4byte	.LVL68
 11835 0f34 8A000000 		.4byte	.LVL69
 11836 0f38 0600     		.2byte	0x6
 11837 0f3a 08       		.byte	0x8
 11838 0f3b 37       		.byte	0x37
 11839 0f3c 74       		.byte	0x74
 11840 0f3d 00       		.sleb128 0
 11841 0f3e 1C       		.byte	0x1c
 11842 0f3f 9F       		.byte	0x9f
 11843 0f40 8A000000 		.4byte	.LVL69
 11844 0f44 90000000 		.4byte	.LVL70
 11845 0f48 0600     		.2byte	0x6
 11846 0f4a 08       		.byte	0x8
 11847 0f4b 36       		.byte	0x36
 11848 0f4c 74       		.byte	0x74
 11849 0f4d 00       		.sleb128 0
 11850 0f4e 1C       		.byte	0x1c
 11851 0f4f 9F       		.byte	0x9f
 11852 0f50 9A000000 		.4byte	.LVL72
ARM GAS  /tmp/ccTIydBQ.s 			page 269


 11853 0f54 A2000000 		.4byte	.LVL73
 11854 0f58 0600     		.2byte	0x6
 11855 0f5a 08       		.byte	0x8
 11856 0f5b 37       		.byte	0x37
 11857 0f5c 74       		.byte	0x74
 11858 0f5d 00       		.sleb128 0
 11859 0f5e 1C       		.byte	0x1c
 11860 0f5f 9F       		.byte	0x9f
 11861 0f60 00000000 		.4byte	0
 11862 0f64 00000000 		.4byte	0
 11863              	.LLST41:
 11864 0f68 46000000 		.4byte	.LVL57
 11865 0f6c 5C000000 		.4byte	.LVL60
 11866 0f70 0200     		.2byte	0x2
 11867 0f72 3C       		.byte	0x3c
 11868 0f73 9F       		.byte	0x9f
 11869 0f74 00000000 		.4byte	0
 11870 0f78 00000000 		.4byte	0
 11871              	.LLST42:
 11872 0f7c 46000000 		.4byte	.LVL57
 11873 0f80 5C000000 		.4byte	.LVL60
 11874 0f84 0300     		.2byte	0x3
 11875 0f86 08       		.byte	0x8
 11876 0f87 3E       		.byte	0x3e
 11877 0f88 9F       		.byte	0x9f
 11878 0f89 00000000 		.4byte	0
 11879 0f8d 00000000 		.4byte	0
 11880              	.LLST43:
 11881 0f91 46000000 		.4byte	.LVL57
 11882 0f95 5C000000 		.4byte	.LVL60
 11883 0f99 0300     		.2byte	0x3
 11884 0f9b 08       		.byte	0x8
 11885 0f9c 80       		.byte	0x80
 11886 0f9d 9F       		.byte	0x9f
 11887 0f9e 00000000 		.4byte	0
 11888 0fa2 00000000 		.4byte	0
 11889              	.LLST44:
 11890 0fa6 46000000 		.4byte	.LVL57
 11891 0faa 5C000000 		.4byte	.LVL60
 11892 0fae 0300     		.2byte	0x3
 11893 0fb0 73       		.byte	0x73
 11894 0fb1 15       		.sleb128 21
 11895 0fb2 9F       		.byte	0x9f
 11896 0fb3 00000000 		.4byte	0
 11897 0fb7 00000000 		.4byte	0
 11898              	.LLST45:
 11899 0fbb 54000000 		.4byte	.LVL58
 11900 0fbf 58000000 		.4byte	.LVL59
 11901 0fc3 1200     		.2byte	0x12
 11902 0fc5 73       		.byte	0x73
 11903 0fc6 1C       		.sleb128 28
 11904 0fc7 94       		.byte	0x94
 11905 0fc8 01       		.byte	0x1
 11906 0fc9 08       		.byte	0x8
 11907 0fca FF       		.byte	0xff
 11908 0fcb 1A       		.byte	0x1a
 11909 0fcc 32       		.byte	0x32
ARM GAS  /tmp/ccTIydBQ.s 			page 270


 11910 0fcd 24       		.byte	0x24
 11911 0fce 70       		.byte	0x70
 11912 0fcf 00       		.sleb128 0
 11913 0fd0 36       		.byte	0x36
 11914 0fd1 25       		.byte	0x25
 11915 0fd2 21       		.byte	0x21
 11916 0fd3 72       		.byte	0x72
 11917 0fd4 00       		.sleb128 0
 11918 0fd5 21       		.byte	0x21
 11919 0fd6 9F       		.byte	0x9f
 11920 0fd7 58000000 		.4byte	.LVL59
 11921 0fdb 5C000000 		.4byte	.LVL60
 11922 0fdf 1900     		.2byte	0x19
 11923 0fe1 73       		.byte	0x73
 11924 0fe2 1C       		.sleb128 28
 11925 0fe3 94       		.byte	0x94
 11926 0fe4 01       		.byte	0x1
 11927 0fe5 08       		.byte	0x8
 11928 0fe6 FF       		.byte	0xff
 11929 0fe7 1A       		.byte	0x1a
 11930 0fe8 32       		.byte	0x32
 11931 0fe9 24       		.byte	0x24
 11932 0fea 70       		.byte	0x70
 11933 0feb 00       		.sleb128 0
 11934 0fec 36       		.byte	0x36
 11935 0fed 25       		.byte	0x25
 11936 0fee 21       		.byte	0x21
 11937 0fef 73       		.byte	0x73
 11938 0ff0 1B       		.sleb128 27
 11939 0ff1 94       		.byte	0x94
 11940 0ff2 01       		.byte	0x1
 11941 0ff3 08       		.byte	0x8
 11942 0ff4 FF       		.byte	0xff
 11943 0ff5 1A       		.byte	0x1a
 11944 0ff6 3A       		.byte	0x3a
 11945 0ff7 24       		.byte	0x24
 11946 0ff8 21       		.byte	0x21
 11947 0ff9 9F       		.byte	0x9f
 11948 0ffa 00000000 		.4byte	0
 11949 0ffe 00000000 		.4byte	0
 11950              	.LLST46:
 11951 1002 00000000 		.4byte	.LVL83
 11952 1006 06000000 		.4byte	.LVL84
 11953 100a 0100     		.2byte	0x1
 11954 100c 50       		.byte	0x50
 11955 100d 06000000 		.4byte	.LVL84
 11956 1011 74000000 		.4byte	.LFE278
 11957 1015 0400     		.2byte	0x4
 11958 1017 F3       		.byte	0xf3
 11959 1018 01       		.uleb128 0x1
 11960 1019 50       		.byte	0x50
 11961 101a 9F       		.byte	0x9f
 11962 101b 00000000 		.4byte	0
 11963 101f 00000000 		.4byte	0
 11964              	.LLST76:
 11965 1023 00000000 		.4byte	.LVL225
 11966 1027 06000000 		.4byte	.LVL226
ARM GAS  /tmp/ccTIydBQ.s 			page 271


 11967 102b 0100     		.2byte	0x1
 11968 102d 50       		.byte	0x50
 11969 102e 06000000 		.4byte	.LVL226
 11970 1032 28000000 		.4byte	.LFE264
 11971 1036 0400     		.2byte	0x4
 11972 1038 F3       		.byte	0xf3
 11973 1039 01       		.uleb128 0x1
 11974 103a 50       		.byte	0x50
 11975 103b 9F       		.byte	0x9f
 11976 103c 00000000 		.4byte	0
 11977 1040 00000000 		.4byte	0
 11978              		.section	.debug_aranges,"",%progbits
 11979 0000 F4000000 		.4byte	0xf4
 11980 0004 0200     		.2byte	0x2
 11981 0006 00000000 		.4byte	.Ldebug_info0
 11982 000a 04       		.byte	0x4
 11983 000b 00       		.byte	0
 11984 000c 0000     		.2byte	0
 11985 000e 0000     		.2byte	0
 11986 0010 00000000 		.4byte	.LFB228
 11987 0014 04000000 		.4byte	.LFE228-.LFB228
 11988 0018 00000000 		.4byte	.LFB229
 11989 001c 04000000 		.4byte	.LFE229-.LFB229
 11990 0020 00000000 		.4byte	.LFB230
 11991 0024 02000000 		.4byte	.LFE230-.LFB230
 11992 0028 00000000 		.4byte	.LFB246
 11993 002c A8000000 		.4byte	.LFE246-.LFB246
 11994 0030 00000000 		.4byte	.LFB247
 11995 0034 90000000 		.4byte	.LFE247-.LFB247
 11996 0038 00000000 		.4byte	.LFB248
 11997 003c 5C000000 		.4byte	.LFE248-.LFB248
 11998 0040 00000000 		.4byte	.LFB242
 11999 0044 4C000000 		.4byte	.LFE242-.LFB242
 12000 0048 00000000 		.4byte	.LFB243
 12001 004c B4000000 		.4byte	.LFE243-.LFB243
 12002 0050 00000000 		.4byte	.LFB244
 12003 0054 4C000000 		.4byte	.LFE244-.LFB244
 12004 0058 00000000 		.4byte	.LFB245
 12005 005c 2C000000 		.4byte	.LFE245-.LFB245
 12006 0060 00000000 		.4byte	.LFB250
 12007 0064 90000000 		.4byte	.LFE250-.LFB250
 12008 0068 00000000 		.4byte	.LFB278
 12009 006c 74000000 		.4byte	.LFE278-.LFB278
 12010 0070 00000000 		.4byte	.LFB279
 12011 0074 20000000 		.4byte	.LFE279-.LFB279
 12012 0078 00000000 		.4byte	.LFB258
 12013 007c 68000000 		.4byte	.LFE258-.LFB258
 12014 0080 00000000 		.4byte	.LFB259
 12015 0084 04000000 		.4byte	.LFE259-.LFB259
 12016 0088 00000000 		.4byte	.LFB260
 12017 008c 70060000 		.4byte	.LFE260-.LFB260
 12018 0090 00000000 		.4byte	.LFB261
 12019 0094 34000000 		.4byte	.LFE261-.LFB261
 12020 0098 00000000 		.4byte	.LFB262
 12021 009c 34000000 		.4byte	.LFE262-.LFB262
 12022 00a0 00000000 		.4byte	.LFB263
 12023 00a4 34000000 		.4byte	.LFE263-.LFB263
ARM GAS  /tmp/ccTIydBQ.s 			page 272


 12024 00a8 00000000 		.4byte	.LFB264
 12025 00ac 28000000 		.4byte	.LFE264-.LFB264
 12026 00b0 00000000 		.4byte	.LFB265
 12027 00b4 14000000 		.4byte	.LFE265-.LFB265
 12028 00b8 00000000 		.4byte	.LFB266
 12029 00bc 14000000 		.4byte	.LFE266-.LFB266
 12030 00c0 00000000 		.4byte	.LFB267
 12031 00c4 A4000000 		.4byte	.LFE267-.LFB267
 12032 00c8 00000000 		.4byte	.LFB268
 12033 00cc 30000000 		.4byte	.LFE268-.LFB268
 12034 00d0 00000000 		.4byte	.LFB269
 12035 00d4 6C000000 		.4byte	.LFE269-.LFB269
 12036 00d8 00000000 		.4byte	.LFB270
 12037 00dc D4000000 		.4byte	.LFE270-.LFB270
 12038 00e0 00000000 		.4byte	.LFB271
 12039 00e4 30000000 		.4byte	.LFE271-.LFB271
 12040 00e8 00000000 		.4byte	.LFB272
 12041 00ec 70000000 		.4byte	.LFE272-.LFB272
 12042 00f0 00000000 		.4byte	0
 12043 00f4 00000000 		.4byte	0
 12044              		.section	.debug_ranges,"",%progbits
 12045              	.Ldebug_ranges0:
 12046 0000 1E000000 		.4byte	.LBB120
 12047 0004 20000000 		.4byte	.LBE120
 12048 0008 26000000 		.4byte	.LBB128
 12049 000c 2E000000 		.4byte	.LBE128
 12050 0010 34000000 		.4byte	.LBB129
 12051 0014 3A000000 		.4byte	.LBE129
 12052 0018 44000000 		.4byte	.LBB130
 12053 001c 48000000 		.4byte	.LBE130
 12054 0020 50000000 		.4byte	.LBB131
 12055 0024 54000000 		.4byte	.LBE131
 12056 0028 00000000 		.4byte	0
 12057 002c 00000000 		.4byte	0
 12058 0030 5E000000 		.4byte	.LBB133
 12059 0034 60000000 		.4byte	.LBE133
 12060 0038 62000000 		.4byte	.LBB138
 12061 003c 66000000 		.4byte	.LBE138
 12062 0040 68000000 		.4byte	.LBB142
 12063 0044 6C000000 		.4byte	.LBE142
 12064 0048 70000000 		.4byte	.LBB144
 12065 004c 74000000 		.4byte	.LBE144
 12066 0050 00000000 		.4byte	0
 12067 0054 00000000 		.4byte	0
 12068 0058 66000000 		.4byte	.LBB139
 12069 005c 68000000 		.4byte	.LBE139
 12070 0060 6C000000 		.4byte	.LBB143
 12071 0064 70000000 		.4byte	.LBE143
 12072 0068 00000000 		.4byte	0
 12073 006c 00000000 		.4byte	0
 12074 0070 30000000 		.4byte	.LBB147
 12075 0074 62000000 		.4byte	.LBE147
 12076 0078 64000000 		.4byte	.LBB168
 12077 007c 66000000 		.4byte	.LBE168
 12078 0080 00000000 		.4byte	0
 12079 0084 00000000 		.4byte	0
 12080 0088 30000000 		.4byte	.LBB148
ARM GAS  /tmp/ccTIydBQ.s 			page 273


 12081 008c 36000000 		.4byte	.LBE148
 12082 0090 38000000 		.4byte	.LBB158
 12083 0094 3E000000 		.4byte	.LBE158
 12084 0098 44000000 		.4byte	.LBB163
 12085 009c 48000000 		.4byte	.LBE163
 12086 00a0 50000000 		.4byte	.LBB166
 12087 00a4 54000000 		.4byte	.LBE166
 12088 00a8 00000000 		.4byte	0
 12089 00ac 00000000 		.4byte	0
 12090 00b0 36000000 		.4byte	.LBB153
 12091 00b4 38000000 		.4byte	.LBE153
 12092 00b8 3E000000 		.4byte	.LBB159
 12093 00bc 42000000 		.4byte	.LBE159
 12094 00c0 48000000 		.4byte	.LBB164
 12095 00c4 4C000000 		.4byte	.LBE164
 12096 00c8 54000000 		.4byte	.LBB167
 12097 00cc 58000000 		.4byte	.LBE167
 12098 00d0 00000000 		.4byte	0
 12099 00d4 00000000 		.4byte	0
 12100 00d8 42000000 		.4byte	.LBB160
 12101 00dc 44000000 		.4byte	.LBE160
 12102 00e0 4C000000 		.4byte	.LBB165
 12103 00e4 50000000 		.4byte	.LBE165
 12104 00e8 00000000 		.4byte	0
 12105 00ec 00000000 		.4byte	0
 12106 00f0 22000000 		.4byte	.LBB173
 12107 00f4 3C000000 		.4byte	.LBE173
 12108 00f8 40000000 		.4byte	.LBB177
 12109 00fc 42000000 		.4byte	.LBE177
 12110 0100 44000000 		.4byte	.LBB178
 12111 0104 46000000 		.4byte	.LBE178
 12112 0108 00000000 		.4byte	0
 12113 010c 00000000 		.4byte	0
 12114 0110 26000000 		.4byte	.LBB183
 12115 0114 3A000000 		.4byte	.LBE183
 12116 0118 3E000000 		.4byte	.LBB190
 12117 011c B4000000 		.4byte	.LBE190
 12118 0120 00000000 		.4byte	0
 12119 0124 00000000 		.4byte	0
 12120 0128 40000000 		.4byte	.LBB185
 12121 012c 44000000 		.4byte	.LBE185
 12122 0130 4C000000 		.4byte	.LBB188
 12123 0134 60000000 		.4byte	.LBE188
 12124 0138 00000000 		.4byte	0
 12125 013c 00000000 		.4byte	0
 12126 0140 18000000 		.4byte	.LBB208
 12127 0144 1A000000 		.4byte	.LBE208
 12128 0148 36000000 		.4byte	.LBB209
 12129 014c 90000000 		.4byte	.LBE209
 12130 0150 00000000 		.4byte	0
 12131 0154 00000000 		.4byte	0
 12132 0158 20000000 		.4byte	.LBB211
 12133 015c 22000000 		.4byte	.LBE211
 12134 0160 28000000 		.4byte	.LBB217
 12135 0164 2A000000 		.4byte	.LBE217
 12136 0168 30000000 		.4byte	.LBB218
 12137 016c 34000000 		.4byte	.LBE218
ARM GAS  /tmp/ccTIydBQ.s 			page 274


 12138 0170 36000000 		.4byte	.LBB219
 12139 0174 3E000000 		.4byte	.LBE219
 12140 0178 40000000 		.4byte	.LBB220
 12141 017c 42000000 		.4byte	.LBE220
 12142 0180 00000000 		.4byte	0
 12143 0184 00000000 		.4byte	0
 12144 0188 02000000 		.4byte	.LBB221
 12145 018c 06000000 		.4byte	.LBE221
 12146 0190 0A000000 		.4byte	.LBB229
 12147 0194 3E000000 		.4byte	.LBE229
 12148 0198 42000000 		.4byte	.LBB230
 12149 019c 48000000 		.4byte	.LBE230
 12150 01a0 00000000 		.4byte	0
 12151 01a4 00000000 		.4byte	0
 12152 01a8 14000000 		.4byte	.LBB223
 12153 01ac 1C000000 		.4byte	.LBE223
 12154 01b0 34000000 		.4byte	.LBB226
 12155 01b4 3A000000 		.4byte	.LBE226
 12156 01b8 00000000 		.4byte	0
 12157 01bc 00000000 		.4byte	0
 12158 01c0 00000000 		.4byte	.LBB281
 12159 01c4 02000000 		.4byte	.LBE281
 12160 01c8 06000000 		.4byte	.LBB286
 12161 01cc 0A000000 		.4byte	.LBE286
 12162 01d0 52000000 		.4byte	.LBB348
 12163 01d4 58000000 		.4byte	.LBE348
 12164 01d8 5A000000 		.4byte	.LBB349
 12165 01dc 5C000000 		.4byte	.LBE349
 12166 01e0 00000000 		.4byte	0
 12167 01e4 00000000 		.4byte	0
 12168 01e8 18000000 		.4byte	.LBB289
 12169 01ec 3A000000 		.4byte	.LBE289
 12170 01f0 06010000 		.4byte	.LBB376
 12171 01f4 F6010000 		.4byte	.LBE376
 12172 01f8 16030000 		.4byte	.LBB378
 12173 01fc B4040000 		.4byte	.LBE378
 12174 0200 20050000 		.4byte	.LBB380
 12175 0204 70060000 		.4byte	.LBE380
 12176 0208 00000000 		.4byte	0
 12177 020c 00000000 		.4byte	0
 12178 0210 26030000 		.4byte	.LBB295
 12179 0214 5A030000 		.4byte	.LBE295
 12180 0218 20050000 		.4byte	.LBB333
 12181 021c 2E050000 		.4byte	.LBE333
 12182 0220 00000000 		.4byte	0
 12183 0224 00000000 		.4byte	0
 12184 0228 5E030000 		.4byte	.LBB298
 12185 022c 66030000 		.4byte	.LBE298
 12186 0230 68030000 		.4byte	.LBB332
 12187 0234 B4040000 		.4byte	.LBE332
 12188 0238 FE050000 		.4byte	.LBB338
 12189 023c 70060000 		.4byte	.LBE338
 12190 0240 00000000 		.4byte	0
 12191 0244 00000000 		.4byte	0
 12192 0248 32040000 		.4byte	.LBB302
 12193 024c 34040000 		.4byte	.LBE302
 12194 0250 36040000 		.4byte	.LBB308
ARM GAS  /tmp/ccTIydBQ.s 			page 275


 12195 0254 66040000 		.4byte	.LBE308
 12196 0258 70040000 		.4byte	.LBB312
 12197 025c 72040000 		.4byte	.LBE312
 12198 0260 92040000 		.4byte	.LBB314
 12199 0264 94040000 		.4byte	.LBE314
 12200 0268 FE050000 		.4byte	.LBB315
 12201 026c 06060000 		.4byte	.LBE315
 12202 0270 00000000 		.4byte	0
 12203 0274 00000000 		.4byte	0
 12204 0278 66040000 		.4byte	.LBB309
 12205 027c 70040000 		.4byte	.LBE309
 12206 0280 72040000 		.4byte	.LBB313
 12207 0284 7E040000 		.4byte	.LBE313
 12208 0288 00000000 		.4byte	0
 12209 028c 00000000 		.4byte	0
 12210 0290 1E060000 		.4byte	.LBB318
 12211 0294 46060000 		.4byte	.LBE318
 12212 0298 4A060000 		.4byte	.LBB326
 12213 029c 4E060000 		.4byte	.LBE326
 12214 02a0 52060000 		.4byte	.LBB328
 12215 02a4 54060000 		.4byte	.LBE328
 12216 02a8 00000000 		.4byte	0
 12217 02ac 00000000 		.4byte	0
 12218 02b0 46060000 		.4byte	.LBB322
 12219 02b4 4A060000 		.4byte	.LBE322
 12220 02b8 4E060000 		.4byte	.LBB327
 12221 02bc 52060000 		.4byte	.LBE327
 12222 02c0 54060000 		.4byte	.LBB329
 12223 02c4 70060000 		.4byte	.LBE329
 12224 02c8 00000000 		.4byte	0
 12225 02cc 00000000 		.4byte	0
 12226 02d0 3A000000 		.4byte	.LBB342
 12227 02d4 3C000000 		.4byte	.LBE342
 12228 02d8 3E000000 		.4byte	.LBB346
 12229 02dc 40000000 		.4byte	.LBE346
 12230 02e0 42000000 		.4byte	.LBB347
 12231 02e4 4A000000 		.4byte	.LBE347
 12232 02e8 00000000 		.4byte	0
 12233 02ec 00000000 		.4byte	0
 12234 02f0 70000000 		.4byte	.LBB350
 12235 02f4 94000000 		.4byte	.LBE350
 12236 02f8 AA000000 		.4byte	.LBB375
 12237 02fc 06010000 		.4byte	.LBE375
 12238 0300 F6010000 		.4byte	.LBB377
 12239 0304 16030000 		.4byte	.LBE377
 12240 0308 B4040000 		.4byte	.LBB379
 12241 030c 20050000 		.4byte	.LBE379
 12242 0310 00000000 		.4byte	0
 12243 0314 00000000 		.4byte	0
 12244 0318 90000000 		.4byte	.LBB352
 12245 031c 94000000 		.4byte	.LBE352
 12246 0320 40020000 		.4byte	.LBB363
 12247 0324 48020000 		.4byte	.LBE363
 12248 0328 4A020000 		.4byte	.LBB364
 12249 032c 16030000 		.4byte	.LBE364
 12250 0330 00000000 		.4byte	0
 12251 0334 00000000 		.4byte	0
ARM GAS  /tmp/ccTIydBQ.s 			page 276


 12252 0338 06020000 		.4byte	.LBB360
 12253 033c 3C020000 		.4byte	.LBE360
 12254 0340 B4040000 		.4byte	.LBB365
 12255 0344 DC040000 		.4byte	.LBE365
 12256 0348 00000000 		.4byte	0
 12257 034c 00000000 		.4byte	0
 12258 0350 98000000 		.4byte	.LBB369
 12259 0354 9A000000 		.4byte	.LBE369
 12260 0358 9C000000 		.4byte	.LBB373
 12261 035c 9E000000 		.4byte	.LBE373
 12262 0360 A0000000 		.4byte	.LBB374
 12263 0364 A4000000 		.4byte	.LBE374
 12264 0368 00000000 		.4byte	0
 12265 036c 00000000 		.4byte	0
 12266 0370 00000000 		.4byte	.LBB381
 12267 0374 04000000 		.4byte	.LBE381
 12268 0378 0A000000 		.4byte	.LBB384
 12269 037c 0E000000 		.4byte	.LBE384
 12270 0380 00000000 		.4byte	0
 12271 0384 00000000 		.4byte	0
 12272 0388 10000000 		.4byte	.LBB385
 12273 038c 18000000 		.4byte	.LBE385
 12274 0390 24000000 		.4byte	.LBB388
 12275 0394 34000000 		.4byte	.LBE388
 12276 0398 00000000 		.4byte	0
 12277 039c 00000000 		.4byte	0
 12278 03a0 00000000 		.4byte	.LBB389
 12279 03a4 04000000 		.4byte	.LBE389
 12280 03a8 0A000000 		.4byte	.LBB392
 12281 03ac 0E000000 		.4byte	.LBE392
 12282 03b0 00000000 		.4byte	0
 12283 03b4 00000000 		.4byte	0
 12284 03b8 10000000 		.4byte	.LBB393
 12285 03bc 18000000 		.4byte	.LBE393
 12286 03c0 24000000 		.4byte	.LBB396
 12287 03c4 34000000 		.4byte	.LBE396
 12288 03c8 00000000 		.4byte	0
 12289 03cc 00000000 		.4byte	0
 12290 03d0 00000000 		.4byte	.LBB397
 12291 03d4 04000000 		.4byte	.LBE397
 12292 03d8 0A000000 		.4byte	.LBB400
 12293 03dc 0E000000 		.4byte	.LBE400
 12294 03e0 00000000 		.4byte	0
 12295 03e4 00000000 		.4byte	0
 12296 03e8 10000000 		.4byte	.LBB401
 12297 03ec 18000000 		.4byte	.LBE401
 12298 03f0 24000000 		.4byte	.LBB404
 12299 03f4 34000000 		.4byte	.LBE404
 12300 03f8 00000000 		.4byte	0
 12301 03fc 00000000 		.4byte	0
 12302 0400 00000000 		.4byte	.LBB405
 12303 0404 02000000 		.4byte	.LBE405
 12304 0408 06000000 		.4byte	.LBB409
 12305 040c 0A000000 		.4byte	.LBE409
 12306 0410 14000000 		.4byte	.LBB410
 12307 0414 18000000 		.4byte	.LBE410
 12308 0418 00000000 		.4byte	0
ARM GAS  /tmp/ccTIydBQ.s 			page 277


 12309 041c 00000000 		.4byte	0
 12310 0420 70000000 		.4byte	.LBB411
 12311 0424 78000000 		.4byte	.LBE411
 12312 0428 80000000 		.4byte	.LBB414
 12313 042c A4000000 		.4byte	.LBE414
 12314 0430 00000000 		.4byte	0
 12315 0434 00000000 		.4byte	0
 12316 0438 34000000 		.4byte	.LBB415
 12317 043c 3C000000 		.4byte	.LBE415
 12318 0440 46000000 		.4byte	.LBB418
 12319 0444 4C000000 		.4byte	.LBE418
 12320 0448 00000000 		.4byte	0
 12321 044c 00000000 		.4byte	0
 12322 0450 00000000 		.4byte	.LBB419
 12323 0454 02000000 		.4byte	.LBE419
 12324 0458 06000000 		.4byte	.LBB423
 12325 045c 0A000000 		.4byte	.LBE423
 12326 0460 16000000 		.4byte	.LBB424
 12327 0464 1A000000 		.4byte	.LBE424
 12328 0468 00000000 		.4byte	0
 12329 046c 00000000 		.4byte	0
 12330 0470 36000000 		.4byte	.LBB427
 12331 0474 3E000000 		.4byte	.LBE427
 12332 0478 A4000000 		.4byte	.LBB433
 12333 047c A8000000 		.4byte	.LBE433
 12334 0480 00000000 		.4byte	0
 12335 0484 00000000 		.4byte	0
 12336 0488 94000000 		.4byte	.LBB430
 12337 048c 9C000000 		.4byte	.LBE430
 12338 0490 AC000000 		.4byte	.LBB434
 12339 0494 D4000000 		.4byte	.LBE434
 12340 0498 00000000 		.4byte	0
 12341 049c 00000000 		.4byte	0
 12342 04a0 2E000000 		.4byte	.LBB435
 12343 04a4 36000000 		.4byte	.LBE435
 12344 04a8 5A000000 		.4byte	.LBB440
 12345 04ac 70000000 		.4byte	.LBE440
 12346 04b0 00000000 		.4byte	0
 12347 04b4 00000000 		.4byte	0
 12348 04b8 00000000 		.4byte	.LFB228
 12349 04bc 04000000 		.4byte	.LFE228
 12350 04c0 00000000 		.4byte	.LFB229
 12351 04c4 04000000 		.4byte	.LFE229
 12352 04c8 00000000 		.4byte	.LFB230
 12353 04cc 02000000 		.4byte	.LFE230
 12354 04d0 00000000 		.4byte	.LFB246
 12355 04d4 A8000000 		.4byte	.LFE246
 12356 04d8 00000000 		.4byte	.LFB247
 12357 04dc 90000000 		.4byte	.LFE247
 12358 04e0 00000000 		.4byte	.LFB248
 12359 04e4 5C000000 		.4byte	.LFE248
 12360 04e8 00000000 		.4byte	.LFB242
 12361 04ec 4C000000 		.4byte	.LFE242
 12362 04f0 00000000 		.4byte	.LFB243
 12363 04f4 B4000000 		.4byte	.LFE243
 12364 04f8 00000000 		.4byte	.LFB244
 12365 04fc 4C000000 		.4byte	.LFE244
ARM GAS  /tmp/ccTIydBQ.s 			page 278


 12366 0500 00000000 		.4byte	.LFB245
 12367 0504 2C000000 		.4byte	.LFE245
 12368 0508 00000000 		.4byte	.LFB250
 12369 050c 90000000 		.4byte	.LFE250
 12370 0510 00000000 		.4byte	.LFB278
 12371 0514 74000000 		.4byte	.LFE278
 12372 0518 00000000 		.4byte	.LFB279
 12373 051c 20000000 		.4byte	.LFE279
 12374 0520 00000000 		.4byte	.LFB258
 12375 0524 68000000 		.4byte	.LFE258
 12376 0528 00000000 		.4byte	.LFB259
 12377 052c 04000000 		.4byte	.LFE259
 12378 0530 00000000 		.4byte	.LFB260
 12379 0534 70060000 		.4byte	.LFE260
 12380 0538 00000000 		.4byte	.LFB261
 12381 053c 34000000 		.4byte	.LFE261
 12382 0540 00000000 		.4byte	.LFB262
 12383 0544 34000000 		.4byte	.LFE262
 12384 0548 00000000 		.4byte	.LFB263
 12385 054c 34000000 		.4byte	.LFE263
 12386 0550 00000000 		.4byte	.LFB264
 12387 0554 28000000 		.4byte	.LFE264
 12388 0558 00000000 		.4byte	.LFB265
 12389 055c 14000000 		.4byte	.LFE265
 12390 0560 00000000 		.4byte	.LFB266
 12391 0564 14000000 		.4byte	.LFE266
 12392 0568 00000000 		.4byte	.LFB267
 12393 056c A4000000 		.4byte	.LFE267
 12394 0570 00000000 		.4byte	.LFB268
 12395 0574 30000000 		.4byte	.LFE268
 12396 0578 00000000 		.4byte	.LFB269
 12397 057c 6C000000 		.4byte	.LFE269
 12398 0580 00000000 		.4byte	.LFB270
 12399 0584 D4000000 		.4byte	.LFE270
 12400 0588 00000000 		.4byte	.LFB271
 12401 058c 30000000 		.4byte	.LFE271
 12402 0590 00000000 		.4byte	.LFB272
 12403 0594 70000000 		.4byte	.LFE272
 12404 0598 00000000 		.4byte	0
 12405 059c 00000000 		.4byte	0
 12406              		.section	.debug_line,"",%progbits
 12407              	.Ldebug_line0:
 12408 0000 93090000 		.section	.debug_str,"MS",%progbits,1
 12408      0200E702 
 12408      00000201 
 12408      FB0E0D00 
 12408      01010101 
 12409              	.LASF30:
 12410 0000 5F666C6F 		.ascii	"_flock_t\000"
 12410      636B5F74 
 12410      00
 12411              	.LASF207:
 12412 0009 53445F4D 		.ascii	"SD_MMC_CARD_STATE_NO_CARD\000"
 12412      4D435F43 
 12412      4152445F 
 12412      53544154 
 12412      455F4E4F 
ARM GAS  /tmp/ccTIydBQ.s 			page 279


 12413              	.LASF20:
 12414 0023 53797374 		.ascii	"SystemCoreClock\000"
 12414      656D436F 
 12414      7265436C 
 12414      6F636B00 
 12415              	.LASF170:
 12416 0033 4F555450 		.ascii	"OUTPUT_PWM_LOW\000"
 12416      55545F50 
 12416      574D5F4C 
 12416      4F5700
 12417              	.LASF181:
 12418 0042 73656C65 		.ascii	"select_device\000"
 12418      63745F64 
 12418      65766963 
 12418      6500
 12419              	.LASF140:
 12420 0050 5F5F6664 		.ascii	"__fdlibm_xopen\000"
 12420      6C69626D 
 12420      5F786F70 
 12420      656E00
 12421              	.LASF47:
 12422 005f 5F6F6E5F 		.ascii	"_on_exit_args\000"
 12422      65786974 
 12422      5F617267 
 12422      7300
 12423              	.LASF211:
 12424 006d 63617061 		.ascii	"capacity\000"
 12424      63697479 
 12424      00
 12425              	.LASF216:
 12426 0076 736C6F74 		.ascii	"slot\000"
 12426      00
 12427              	.LASF115:
 12428 007b 5F776374 		.ascii	"_wctomb_state\000"
 12428      6F6D625F 
 12428      73746174 
 12428      6500
 12429              	.LASF248:
 12430 0089 625F6175 		.ascii	"b_authorize_high_speed\000"
 12430      74686F72 
 12430      697A655F 
 12430      68696768 
 12430      5F737065 
 12431              	.LASF275:
 12432 00a0 7364696F 		.ascii	"sdio_op_cond\000"
 12432      5F6F705F 
 12432      636F6E64 
 12432      00
 12433              	.LASF270:
 12434 00ad 73645F63 		.ascii	"sd_cmd8\000"
 12434      6D643800 
 12435              	.LASF188:
 12436 00b5 6765745F 		.ascii	"get_response_128\000"
 12436      72657370 
 12436      6F6E7365 
 12436      5F313238 
 12436      00
ARM GAS  /tmp/ccTIydBQ.s 			page 280


 12437              	.LASF171:
 12438 00c6 4F555450 		.ascii	"OUTPUT_PWM_HIGH\000"
 12438      55545F50 
 12438      574D5F48 
 12438      49474800 
 12439              	.LASF117:
 12440 00d6 5F736967 		.ascii	"_signal_buf\000"
 12440      6E616C5F 
 12440      62756600 
 12441              	.LASF0:
 12442 00e2 756E7369 		.ascii	"unsigned int\000"
 12442      676E6564 
 12442      20696E74 
 12442      00
 12443              	.LASF215:
 12444 00ef 76657273 		.ascii	"version\000"
 12444      696F6E00 
 12445              	.LASF160:
 12446 00f7 50776D53 		.ascii	"PwmSlowClock\000"
 12446      6C6F7743 
 12446      6C6F636B 
 12446      00
 12447              	.LASF61:
 12448 0104 5F6C6266 		.ascii	"_lbfsize\000"
 12448      73697A65 
 12448      00
 12449              	.LASF59:
 12450 010d 5F666C61 		.ascii	"_flags\000"
 12450      677300
 12451              	.LASF8:
 12452 0114 5F5F696E 		.ascii	"__int32_t\000"
 12452      7433325F 
 12452      7400
 12453              	.LASF76:
 12454 011e 5F657272 		.ascii	"_errno\000"
 12454      6E6F00
 12455              	.LASF296:
 12456 0125 73645F6D 		.ascii	"sd_mmc_nb_slot\000"
 12456      6D635F6E 
 12456      625F736C 
 12456      6F7400
 12457              	.LASF151:
 12458 0134 4150494E 		.ascii	"APIN_UART1_RXD\000"
 12458      5F554152 
 12458      54315F52 
 12458      584400
 12459              	.LASF253:
 12460 0143 73645F6D 		.ascii	"sd_mmc_spi_card_init\000"
 12460      6D635F73 
 12460      70695F63 
 12460      6172645F 
 12460      696E6974 
 12461              	.LASF84:
 12462 0158 5F5F7364 		.ascii	"__sdidinit\000"
 12462      6964696E 
 12462      697400
 12463              	.LASF169:
ARM GAS  /tmp/ccTIydBQ.s 			page 281


 12464 0163 53504543 		.ascii	"SPECIAL\000"
 12464      49414C00 
 12465              	.LASF73:
 12466 016b 5F6D6273 		.ascii	"_mbstate\000"
 12466      74617465 
 12466      00
 12467              	.LASF187:
 12468 0174 6765745F 		.ascii	"get_response\000"
 12468      72657370 
 12468      6F6E7365 
 12468      00
 12469              	.LASF156:
 12470 0181 4150494E 		.ascii	"APIN_GMAC_PHY_RESET\000"
 12470      5F474D41 
 12470      435F5048 
 12470      595F5245 
 12470      53455400 
 12471              	.LASF31:
 12472 0195 5F5F554C 		.ascii	"__ULong\000"
 12472      6F6E6700 
 12473              	.LASF119:
 12474 019d 5F6D6272 		.ascii	"_mbrlen_state\000"
 12474      6C656E5F 
 12474      73746174 
 12474      6500
 12475              	.LASF278:
 12476 01ab 6D6D635F 		.ascii	"mmc_mci_op_cond\000"
 12476      6D63695F 
 12476      6F705F63 
 12476      6F6E6400 
 12477              	.LASF78:
 12478 01bb 5F737464 		.ascii	"_stdout\000"
 12478      6F757400 
 12479              	.LASF23:
 12480 01c3 5F66706F 		.ascii	"_fpos_t\000"
 12480      735F7400 
 12481              	.LASF54:
 12482 01cb 5F666E73 		.ascii	"_fns\000"
 12482      00
 12483              	.LASF174:
 12484 01d0 4F555450 		.ascii	"OUTPUT_PWM_OPEN_DRAIN\000"
 12484      55545F50 
 12484      574D5F4F 
 12484      50454E5F 
 12484      44524149 
 12485              	.LASF62:
 12486 01e6 5F636F6F 		.ascii	"_cookie\000"
 12486      6B696500 
 12487              	.LASF129:
 12488 01ee 5F676C6F 		.ascii	"_global_impure_ptr\000"
 12488      62616C5F 
 12488      696D7075 
 12488      72655F70 
 12488      747200
 12489              	.LASF131:
 12490 0201 675F696E 		.ascii	"g_interrupt_enabled\000"
 12490      74657272 
ARM GAS  /tmp/ccTIydBQ.s 			page 282


 12490      7570745F 
 12490      656E6162 
 12490      6C656400 
 12491              	.LASF243:
 12492 0215 73645F6D 		.ascii	"sd_mmc_check\000"
 12492      6D635F63 
 12492      6865636B 
 12492      00
 12493              	.LASF185:
 12494 0222 73656E64 		.ascii	"send_clock\000"
 12494      5F636C6F 
 12494      636B00
 12495              	.LASF206:
 12496 022d 53445F4D 		.ascii	"SD_MMC_CARD_STATE_UNUSABLE\000"
 12496      4D435F43 
 12496      4152445F 
 12496      53544154 
 12496      455F554E 
 12497              	.LASF86:
 12498 0248 5F726573 		.ascii	"_result\000"
 12498      756C7400 
 12499              	.LASF98:
 12500 0250 5F5F4649 		.ascii	"__FILE\000"
 12500      4C4500
 12501              	.LASF255:
 12502 0257 73645F6D 		.ascii	"sd_mmc_configure_slot\000"
 12502      6D635F63 
 12502      6F6E6669 
 12502      67757265 
 12502      5F736C6F 
 12503              	.LASF17:
 12504 026d 75696E74 		.ascii	"uint32_t\000"
 12504      33325F74 
 12504      00
 12505              	.LASF40:
 12506 0276 5F5F746D 		.ascii	"__tm_hour\000"
 12506      5F686F75 
 12506      7200
 12507              	.LASF263:
 12508 0280 6D6D635F 		.ascii	"mmc_decode_csd\000"
 12508      6465636F 
 12508      64655F63 
 12508      736400
 12509              	.LASF81:
 12510 028f 5F656D65 		.ascii	"_emergency\000"
 12510      7267656E 
 12510      637900
 12511              	.LASF158:
 12512 029a 4D617850 		.ascii	"MaxPinNumber\000"
 12512      696E4E75 
 12512      6D626572 
 12512      00
 12513              	.LASF27:
 12514 02a7 5F5F636F 		.ascii	"__count\000"
 12514      756E7400 
 12515              	.LASF293:
 12516 02af 2E2E2F6C 		.ascii	"../libraries/Storage/sd_mmc.c\000"
ARM GAS  /tmp/ccTIydBQ.s 			page 283


 12516      69627261 
 12516      72696573 
 12516      2F53746F 
 12516      72616765 
 12517              	.LASF135:
 12518 02cd 666C6F61 		.ascii	"float\000"
 12518      7400
 12519              	.LASF200:
 12520 02d3 68736D63 		.ascii	"hsmciInterface\000"
 12520      69496E74 
 12520      65726661 
 12520      636500
 12521              	.LASF229:
 12522 02e2 6E625F62 		.ascii	"nb_block\000"
 12522      6C6F636B 
 12522      00
 12523              	.LASF39:
 12524 02eb 5F5F746D 		.ascii	"__tm_min\000"
 12524      5F6D696E 
 12524      00
 12525              	.LASF128:
 12526 02f4 5F696D70 		.ascii	"_impure_ptr\000"
 12526      7572655F 
 12526      70747200 
 12527              	.LASF125:
 12528 0300 5F6E6578 		.ascii	"_nextf\000"
 12528      746600
 12529              	.LASF208:
 12530 0307 73645F6D 		.ascii	"sd_mmc_card\000"
 12530      6D635F63 
 12530      61726400 
 12531              	.LASF121:
 12532 0313 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 12532      72746F77 
 12532      63735F73 
 12532      74617465 
 12532      00
 12533              	.LASF184:
 12534 0324 69735F68 		.ascii	"is_high_speed_capable\000"
 12534      6967685F 
 12534      73706565 
 12534      645F6361 
 12534      7061626C 
 12535              	.LASF218:
 12536 033a 68696768 		.ascii	"high_speed\000"
 12536      5F737065 
 12536      656400
 12537              	.LASF13:
 12538 0345 6C6F6E67 		.ascii	"long long unsigned int\000"
 12538      206C6F6E 
 12538      6720756E 
 12538      7369676E 
 12538      65642069 
 12539              	.LASF108:
 12540 035c 5F617363 		.ascii	"_asctime_buf\000"
 12540      74696D65 
 12540      5F627566 
ARM GAS  /tmp/ccTIydBQ.s 			page 284


 12540      00
 12541              	.LASF149:
 12542 0369 4150494E 		.ascii	"APIN_UART0_TXD\000"
 12542      5F554152 
 12542      54305F54 
 12542      584400
 12543              	.LASF58:
 12544 0378 5F5F7346 		.ascii	"__sFILE\000"
 12544      494C4500 
 12545              	.LASF35:
 12546 0380 5F776473 		.ascii	"_wds\000"
 12546      00
 12547              	.LASF112:
 12548 0385 5F723438 		.ascii	"_r48\000"
 12548      00
 12549              	.LASF279:
 12550 038a 6D6D635F 		.ascii	"mmc_spi_op_cond\000"
 12550      7370695F 
 12550      6F705F63 
 12550      6F6E6400 
 12551              	.LASF102:
 12552 039a 5F72616E 		.ascii	"_rand48\000"
 12552      64343800 
 12553              	.LASF251:
 12554 03a2 73645F6D 		.ascii	"sd_mmc_spi_install_mmc\000"
 12554      6D635F73 
 12554      70695F69 
 12554      6E737461 
 12554      6C6C5F6D 
 12555              	.LASF6:
 12556 03b9 5F5F7569 		.ascii	"__uint16_t\000"
 12556      6E743136 
 12556      5F7400
 12557              	.LASF203:
 12558 03c4 53445F4D 		.ascii	"SD_MMC_CARD_STATE_READY\000"
 12558      4D435F43 
 12558      4152445F 
 12558      53544154 
 12558      455F5245 
 12559              	.LASF244:
 12560 03dc 73645F6D 		.ascii	"sd_mmc_init\000"
 12560      6D635F69 
 12560      6E697400 
 12561              	.LASF141:
 12562 03e8 5F5F6664 		.ascii	"__fdlibm_posix\000"
 12562      6C69626D 
 12562      5F706F73 
 12562      697800
 12563              	.LASF70:
 12564 03f7 5F6F6666 		.ascii	"_offset\000"
 12564      73657400 
 12565              	.LASF274:
 12566 03ff 73776974 		.ascii	"switch_status\000"
 12566      63685F73 
 12566      74617475 
 12566      7300
 12567              	.LASF223:
ARM GAS  /tmp/ccTIydBQ.s 			page 285


 12568 040d 73645F6D 		.ascii	"sd_mmc_trans_units\000"
 12568      6D635F74 
 12568      72616E73 
 12568      5F756E69 
 12568      747300
 12569              	.LASF273:
 12570 0420 73645F63 		.ascii	"sd_cm6_set_high_speed\000"
 12570      6D365F73 
 12570      65745F68 
 12570      6967685F 
 12570      73706565 
 12571              	.LASF258:
 12572 0436 6E65635F 		.ascii	"nec_timeout\000"
 12572      74696D65 
 12572      6F757400 
 12573              	.LASF63:
 12574 0442 5F726561 		.ascii	"_read\000"
 12574      6400
 12575              	.LASF197:
 12576 0448 67657449 		.ascii	"getInterfaceSpeed\000"
 12576      6E746572 
 12576      66616365 
 12576      53706565 
 12576      6400
 12577              	.LASF228:
 12578 045a 61626F72 		.ascii	"abort\000"
 12578      7400
 12579              	.LASF192:
 12580 0460 77726974 		.ascii	"write_word\000"
 12580      655F776F 
 12580      726400
 12581              	.LASF134:
 12582 046b 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 12582      6972715F 
 12582      70726576 
 12582      5F696E74 
 12582      65727275 
 12583              	.LASF2:
 12584 0488 73697A65 		.ascii	"size_t\000"
 12584      5F7400
 12585              	.LASF38:
 12586 048f 5F5F746D 		.ascii	"__tm_sec\000"
 12586      5F736563 
 12586      00
 12587              	.LASF130:
 12588 0498 7375626F 		.ascii	"suboptarg\000"
 12588      70746172 
 12588      6700
 12589              	.LASF45:
 12590 04a2 5F5F746D 		.ascii	"__tm_yday\000"
 12590      5F796461 
 12590      7900
 12591              	.LASF28:
 12592 04ac 5F5F7661 		.ascii	"__value\000"
 12592      6C756500 
 12593              	.LASF80:
 12594 04b4 5F696E63 		.ascii	"_inc\000"
ARM GAS  /tmp/ccTIydBQ.s 			page 286


 12594      00
 12595              	.LASF132:
 12596 04b9 5F426F6F 		.ascii	"_Bool\000"
 12596      6C00
 12597              	.LASF198:
 12598 04bf 7365745F 		.ascii	"set_idle_func\000"
 12598      69646C65 
 12598      5F66756E 
 12598      6300
 12599              	.LASF220:
 12600 04cd 73645F6D 		.ascii	"sd_mmc_slot_sel\000"
 12600      6D635F73 
 12600      6C6F745F 
 12600      73656C00 
 12601              	.LASF191:
 12602 04dd 72656164 		.ascii	"read_word\000"
 12602      5F776F72 
 12602      6400
 12603              	.LASF175:
 12604 04e7 73646D6D 		.ascii	"sdmmc_cmd_def_t\000"
 12604      635F636D 
 12604      645F6465 
 12604      665F7400 
 12605              	.LASF252:
 12606 04f7 73645F6D 		.ascii	"sd_mmc_mci_card_init\000"
 12606      6D635F6D 
 12606      63695F63 
 12606      6172645F 
 12606      696E6974 
 12607              	.LASF291:
 12608 050c 73645F6D 		.ascii	"sd_mmc_spi_init\000"
 12608      6D635F73 
 12608      70695F69 
 12608      6E697400 
 12609              	.LASF238:
 12610 051c 73645F6D 		.ascii	"sd_mmc_get_interface_speed\000"
 12610      6D635F67 
 12610      65745F69 
 12610      6E746572 
 12610      66616365 
 12611              	.LASF210:
 12612 0537 636C6F63 		.ascii	"clock\000"
 12612      6B00
 12613              	.LASF237:
 12614 053d 73645F6D 		.ascii	"sd_mmc_err\000"
 12614      6D635F65 
 12614      727200
 12615              	.LASF88:
 12616 0548 5F703573 		.ascii	"_p5s\000"
 12616      00
 12617              	.LASF44:
 12618 054d 5F5F746D 		.ascii	"__tm_wday\000"
 12618      5F776461 
 12618      7900
 12619              	.LASF290:
 12620 0557 68736D63 		.ascii	"hsmci_init\000"
 12620      695F696E 
ARM GAS  /tmp/ccTIydBQ.s 			page 287


 12620      697400
 12621              	.LASF176:
 12622 0562 73645F6D 		.ascii	"sd_mmc_err_t\000"
 12622      6D635F65 
 12622      72725F74 
 12622      00
 12623              	.LASF153:
 12624 056f 4150494E 		.ascii	"APIN_HSMCI_CLOCK\000"
 12624      5F48534D 
 12624      43495F43 
 12624      4C4F434B 
 12624      00
 12625              	.LASF123:
 12626 0580 5F776373 		.ascii	"_wcsrtombs_state\000"
 12626      72746F6D 
 12626      62735F73 
 12626      74617465 
 12626      00
 12627              	.LASF113:
 12628 0591 5F6D626C 		.ascii	"_mblen_state\000"
 12628      656E5F73 
 12628      74617465 
 12628      00
 12629              	.LASF276:
 12630 059e 73645F6D 		.ascii	"sd_mci_op_cond\000"
 12630      63695F6F 
 12630      705F636F 
 12630      6E6400
 12631              	.LASF277:
 12632 05ad 73645F73 		.ascii	"sd_spi_op_cond\000"
 12632      70695F6F 
 12632      705F636F 
 12632      6E6400
 12633              	.LASF97:
 12634 05bc 63686172 		.ascii	"char\000"
 12634      00
 12635              	.LASF41:
 12636 05c1 5F5F746D 		.ascii	"__tm_mday\000"
 12636      5F6D6461 
 12636      7900
 12637              	.LASF94:
 12638 05cb 5F736967 		.ascii	"_sig_func\000"
 12638      5F66756E 
 12638      6300
 12639              	.LASF120:
 12640 05d5 5F6D6272 		.ascii	"_mbrtowc_state\000"
 12640      746F7763 
 12640      5F737461 
 12640      746500
 12641              	.LASF93:
 12642 05e4 5F617465 		.ascii	"_atexit0\000"
 12642      78697430 
 12642      00
 12643              	.LASF162:
 12644 05ed 50696E4D 		.ascii	"PinMode\000"
 12644      6F646500 
 12645              	.LASF224:
ARM GAS  /tmp/ccTIydBQ.s 			page 288


 12646 05f5 73645F74 		.ascii	"sd_trans_multipliers\000"
 12646      72616E73 
 12646      5F6D756C 
 12646      7469706C 
 12646      69657273 
 12647              	.LASF241:
 12648 060a 73645F6D 		.ascii	"sd_mmc_get_version\000"
 12648      6D635F67 
 12648      65745F76 
 12648      65727369 
 12648      6F6E00
 12649              	.LASF212:
 12650 061d 77705F67 		.ascii	"wp_gpio\000"
 12650      70696F00 
 12651              	.LASF297:
 12652 0625 73645F6D 		.ascii	"sd_mmc_spi_is_high_speed_capable\000"
 12652      6D635F73 
 12652      70695F69 
 12652      735F6869 
 12652      67685F73 
 12653              	.LASF87:
 12654 0646 5F726573 		.ascii	"_result_k\000"
 12654      756C745F 
 12654      6B00
 12655              	.LASF179:
 12656 0650 64726976 		.ascii	"driverIdleFunc_t\000"
 12656      65724964 
 12656      6C654675 
 12656      6E635F74 
 12656      00
 12657              	.LASF25:
 12658 0661 5F5F7763 		.ascii	"__wch\000"
 12658      6800
 12659              	.LASF262:
 12660 0667 73645F64 		.ascii	"sd_decode_csd\000"
 12660      65636F64 
 12660      655F6373 
 12660      6400
 12661              	.LASF14:
 12662 0675 75696E74 		.ascii	"uint8_t\000"
 12662      385F7400 
 12663              	.LASF148:
 12664 067d 4150494E 		.ascii	"APIN_UART0_RXD\000"
 12664      5F554152 
 12664      54305F52 
 12664      584400
 12665              	.LASF271:
 12666 068c 6D6D635F 		.ascii	"mmc_cmd6_set_high_speed\000"
 12666      636D6436 
 12666      5F736574 
 12666      5F686967 
 12666      685F7370 
 12667              	.LASF66:
 12668 06a4 5F636C6F 		.ascii	"_close\000"
 12668      736500
 12669              	.LASF286:
 12670 06ab 5F656376 		.ascii	"_ecv_value\000"
ARM GAS  /tmp/ccTIydBQ.s 			page 289


 12670      5F76616C 
 12670      756500
 12671              	.LASF196:
 12672 06b6 77616974 		.ascii	"wait_end_of_write_blocks\000"
 12672      5F656E64 
 12672      5F6F665F 
 12672      77726974 
 12672      655F626C 
 12673              	.LASF284:
 12674 06cf 7265675F 		.ascii	"reg_size\000"
 12674      73697A65 
 12674      00
 12675              	.LASF202:
 12676 06d8 63617264 		.ascii	"card_state\000"
 12676      5F737461 
 12676      746500
 12677              	.LASF163:
 12678 06e3 50494E5F 		.ascii	"PIN_MODE_NOT_CONFIGURED\000"
 12678      4D4F4445 
 12678      5F4E4F54 
 12678      5F434F4E 
 12678      46494755 
 12679              	.LASF77:
 12680 06fb 5F737464 		.ascii	"_stdin\000"
 12680      696E00
 12681              	.LASF110:
 12682 0702 5F67616D 		.ascii	"_gamma_signgam\000"
 12682      6D615F73 
 12682      69676E67 
 12682      616D00
 12683              	.LASF12:
 12684 0711 6C6F6E67 		.ascii	"long long int\000"
 12684      206C6F6E 
 12684      6720696E 
 12684      7400
 12685              	.LASF56:
 12686 071f 5F626173 		.ascii	"_base\000"
 12686      6500
 12687              	.LASF89:
 12688 0725 5F667265 		.ascii	"_freelist\000"
 12688      656C6973 
 12688      7400
 12689              	.LASF289:
 12690 072f 70696E4D 		.ascii	"pinModeDuet\000"
 12690      6F646544 
 12690      75657400 
 12691              	.LASF104:
 12692 073b 5F6D756C 		.ascii	"_mult\000"
 12692      7400
 12693              	.LASF105:
 12694 0741 5F616464 		.ascii	"_add\000"
 12694      00
 12695              	.LASF139:
 12696 0746 5F5F6664 		.ascii	"__fdlibm_svid\000"
 12696      6C69626D 
 12696      5F737669 
 12696      6400
ARM GAS  /tmp/ccTIydBQ.s 			page 290


 12697              	.LASF166:
 12698 0754 494E5055 		.ascii	"INPUT_PULLDOWN\000"
 12698      545F5055 
 12698      4C4C444F 
 12698      574E00
 12699              	.LASF122:
 12700 0763 5F776372 		.ascii	"_wcrtomb_state\000"
 12700      746F6D62 
 12700      5F737461 
 12700      746500
 12701              	.LASF295:
 12702 0772 73645F6D 		.ascii	"sd_mmc_is_write_protected\000"
 12702      6D635F69 
 12702      735F7772 
 12702      6974655F 
 12702      70726F74 
 12703              	.LASF240:
 12704 078c 73645F6D 		.ascii	"sd_mmc_get_capacity\000"
 12704      6D635F67 
 12704      65745F63 
 12704      61706163 
 12704      69747900 
 12705              	.LASF256:
 12706 07a0 73645F6D 		.ascii	"sd_mmc_select_slot\000"
 12706      6D635F73 
 12706      656C6563 
 12706      745F736C 
 12706      6F7400
 12707              	.LASF60:
 12708 07b3 5F66696C 		.ascii	"_file\000"
 12708      6500
 12709              	.LASF209:
 12710 07b9 69666163 		.ascii	"iface\000"
 12710      6500
 12711              	.LASF143:
 12712 07bf 4E6F5069 		.ascii	"NoPin\000"
 12712      6E00
 12713              	.LASF85:
 12714 07c5 5F5F636C 		.ascii	"__cleanup\000"
 12714      65616E75 
 12714      7000
 12715              	.LASF142:
 12716 07cf 5F5F6664 		.ascii	"__fdlib_version\000"
 12716      6C69625F 
 12716      76657273 
 12716      696F6E00 
 12717              	.LASF227:
 12718 07df 73645F6D 		.ascii	"sd_mmc_start_write_blocks\000"
 12718      6D635F73 
 12718      74617274 
 12718      5F777269 
 12718      74655F62 
 12719              	.LASF29:
 12720 07f9 5F6D6273 		.ascii	"_mbstate_t\000"
 12720      74617465 
 12720      5F7400
 12721              	.LASF285:
ARM GAS  /tmp/ccTIydBQ.s 			page 291


 12722 0804 73697A65 		.ascii	"size\000"
 12722      00
 12723              	.LASF46:
 12724 0809 5F5F746D 		.ascii	"__tm_isdst\000"
 12724      5F697364 
 12724      737400
 12725              	.LASF67:
 12726 0814 5F756275 		.ascii	"_ubuf\000"
 12726      6600
 12727              	.LASF281:
 12728 081a 73645F6D 		.ascii	"sd_mmc_cmd13\000"
 12728      6D635F63 
 12728      6D643133 
 12728      00
 12729              	.LASF231:
 12730 0827 73746172 		.ascii	"start\000"
 12730      7400
 12731              	.LASF53:
 12732 082d 5F696E64 		.ascii	"_ind\000"
 12732      00
 12733              	.LASF257:
 12734 0832 73645F61 		.ascii	"sd_acmd51\000"
 12734      636D6435 
 12734      3100
 12735              	.LASF165:
 12736 083c 494E5055 		.ascii	"INPUT_PULLUP\000"
 12736      545F5055 
 12736      4C4C5550 
 12736      00
 12737              	.LASF221:
 12738 0849 73645F6D 		.ascii	"sd_mmc_nb_block_to_tranfer\000"
 12738      6D635F6E 
 12738      625F626C 
 12738      6F636B5F 
 12738      746F5F74 
 12739              	.LASF265:
 12740 0864 73645F6D 		.ascii	"sd_mmc_cmd9_mci\000"
 12740      6D635F63 
 12740      6D64395F 
 12740      6D636900 
 12741              	.LASF180:
 12742 0874 44726976 		.ascii	"DriverInterface\000"
 12742      6572496E 
 12742      74657266 
 12742      61636500 
 12743              	.LASF259:
 12744 0884 756E6974 		.ascii	"unit\000"
 12744      00
 12745              	.LASF186:
 12746 0889 73656E64 		.ascii	"send_cmd\000"
 12746      5F636D64 
 12746      00
 12747              	.LASF205:
 12748 0892 53445F4D 		.ascii	"SD_MMC_CARD_STATE_INIT\000"
 12748      4D435F43 
 12748      4152445F 
 12748      53544154 
ARM GAS  /tmp/ccTIydBQ.s 			page 292


 12748      455F494E 
 12749              	.LASF239:
 12750 08a9 73645F6D 		.ascii	"sd_mmc_unmount\000"
 12750      6D635F75 
 12750      6E6D6F75 
 12750      6E7400
 12751              	.LASF95:
 12752 08b8 5F5F7367 		.ascii	"__sglue\000"
 12752      6C756500 
 12753              	.LASF219:
 12754 08c0 73645F6D 		.ascii	"sd_mmc_cards\000"
 12754      6D635F63 
 12754      61726473 
 12754      00
 12755              	.LASF42:
 12756 08cd 5F5F746D 		.ascii	"__tm_mon\000"
 12756      5F6D6F6E 
 12756      00
 12757              	.LASF193:
 12758 08d6 73746172 		.ascii	"start_read_blocks\000"
 12758      745F7265 
 12758      61645F62 
 12758      6C6F636B 
 12758      7300
 12759              	.LASF137:
 12760 08e8 6C6F6E67 		.ascii	"long double\000"
 12760      20646F75 
 12760      626C6500 
 12761              	.LASF15:
 12762 08f4 75696E74 		.ascii	"uint16_t\000"
 12762      31365F74 
 12762      00
 12763              	.LASF55:
 12764 08fd 5F5F7362 		.ascii	"__sbuf\000"
 12764      756600
 12765              	.LASF64:
 12766 0904 5F777269 		.ascii	"_write\000"
 12766      746500
 12767              	.LASF267:
 12768 090b 6D6D635F 		.ascii	"mmc_cmd8\000"
 12768      636D6438 
 12768      00
 12769              	.LASF195:
 12770 0914 73746172 		.ascii	"start_write_blocks\000"
 12770      745F7772 
 12770      6974655F 
 12770      626C6F63 
 12770      6B7300
 12771              	.LASF189:
 12772 0927 61647463 		.ascii	"adtc_start\000"
 12772      5F737461 
 12772      727400
 12773              	.LASF52:
 12774 0932 5F617465 		.ascii	"_atexit\000"
 12774      78697400 
 12775              	.LASF234:
 12776 093a 73645F6D 		.ascii	"sd_mmc_start_read_blocks\000"
ARM GAS  /tmp/ccTIydBQ.s 			page 293


 12776      6D635F73 
 12776      74617274 
 12776      5F726561 
 12776      645F626C 
 12777              	.LASF18:
 12778 0953 73697A65 		.ascii	"sizetype\000"
 12778      74797065 
 12778      00
 12779              	.LASF264:
 12780 095c 73645F61 		.ascii	"sd_acmd6\000"
 12780      636D6436 
 12780      00
 12781              	.LASF245:
 12782 0965 77705069 		.ascii	"wpPins\000"
 12782      6E7300
 12783              	.LASF5:
 12784 096c 73686F72 		.ascii	"short int\000"
 12784      7420696E 
 12784      7400
 12785              	.LASF36:
 12786 0976 5F426967 		.ascii	"_Bigint\000"
 12786      696E7400 
 12787              	.LASF9:
 12788 097e 6C6F6E67 		.ascii	"long int\000"
 12788      20696E74 
 12788      00
 12789              	.LASF19:
 12790 0987 49544D5F 		.ascii	"ITM_RxBuffer\000"
 12790      52784275 
 12790      66666572 
 12790      00
 12791              	.LASF96:
 12792 0994 5F5F7366 		.ascii	"__sf\000"
 12792      00
 12793              	.LASF34:
 12794 0999 5F736967 		.ascii	"_sign\000"
 12794      6E00
 12795              	.LASF261:
 12796 099f 626C6F63 		.ascii	"blocknr\000"
 12796      6B6E7200 
 12797              	.LASF287:
 12798 09a7 64774D6F 		.ascii	"dwMode\000"
 12798      646500
 12799              	.LASF83:
 12800 09ae 5F637572 		.ascii	"_current_locale\000"
 12800      72656E74 
 12800      5F6C6F63 
 12800      616C6500 
 12801              	.LASF288:
 12802 09be 64696769 		.ascii	"digitalRead\000"
 12802      74616C52 
 12802      65616400 
 12803              	.LASF71:
 12804 09ca 5F646174 		.ascii	"_data\000"
 12804      6100
 12805              	.LASF26:
 12806 09d0 5F5F7763 		.ascii	"__wchb\000"
ARM GAS  /tmp/ccTIydBQ.s 			page 294


 12806      686200
 12807              	.LASF145:
 12808 09d7 5F646179 		.ascii	"_daylight\000"
 12808      6C696768 
 12808      7400
 12809              	.LASF43:
 12810 09e1 5F5F746D 		.ascii	"__tm_year\000"
 12810      5F796561 
 12810      7200
 12811              	.LASF268:
 12812 09eb 6578745F 		.ascii	"ext_csd\000"
 12812      63736400 
 12813              	.LASF204:
 12814 09f3 53445F4D 		.ascii	"SD_MMC_CARD_STATE_DEBOUNCE\000"
 12814      4D435F43 
 12814      4152445F 
 12814      53544154 
 12814      455F4445 
 12815              	.LASF177:
 12816 0a0e 63617264 		.ascii	"card_type_t\000"
 12816      5F747970 
 12816      655F7400 
 12817              	.LASF247:
 12818 0a1a 63617264 		.ascii	"card\000"
 12818      00
 12819              	.LASF138:
 12820 0a1f 5F5F6664 		.ascii	"__fdlibm_ieee\000"
 12820      6C69626D 
 12820      5F696565 
 12820      6500
 12821              	.LASF242:
 12822 0a2d 73645F6D 		.ascii	"sd_mmc_get_type\000"
 12822      6D635F67 
 12822      65745F74 
 12822      79706500 
 12823              	.LASF109:
 12824 0a3d 5F6C6F63 		.ascii	"_localtime_buf\000"
 12824      616C7469 
 12824      6D655F62 
 12824      756600
 12825              	.LASF226:
 12826 0a4c 73645F6D 		.ascii	"sd_mmc_wait_end_of_write_blocks\000"
 12826      6D635F77 
 12826      6169745F 
 12826      656E645F 
 12826      6F665F77 
 12827              	.LASF127:
 12828 0a6c 5F756E75 		.ascii	"_unused\000"
 12828      73656400 
 12829              	.LASF3:
 12830 0a74 5F5F7569 		.ascii	"__uint8_t\000"
 12830      6E74385F 
 12830      7400
 12831              	.LASF92:
 12832 0a7e 5F6E6577 		.ascii	"_new\000"
 12832      00
 12833              	.LASF269:
ARM GAS  /tmp/ccTIydBQ.s 			page 295


 12834 0a83 7365635F 		.ascii	"sec_count\000"
 12834      636F756E 
 12834      7400
 12835              	.LASF90:
 12836 0a8d 5F637674 		.ascii	"_cvtlen\000"
 12836      6C656E00 
 12837              	.LASF33:
 12838 0a95 5F6D6178 		.ascii	"_maxwds\000"
 12838      77647300 
 12839              	.LASF146:
 12840 0a9d 5F747A6E 		.ascii	"_tzname\000"
 12840      616D6500 
 12841              	.LASF82:
 12842 0aa5 5F637572 		.ascii	"_current_category\000"
 12842      72656E74 
 12842      5F636174 
 12842      65676F72 
 12842      7900
 12843              	.LASF282:
 12844 0ab7 73645F6D 		.ascii	"sd_mmc_spi_get_bus_width\000"
 12844      6D635F73 
 12844      70695F67 
 12844      65745F62 
 12844      75735F77 
 12845              	.LASF69:
 12846 0ad0 5F626C6B 		.ascii	"_blksize\000"
 12846      73697A65 
 12846      00
 12847              	.LASF37:
 12848 0ad9 5F5F746D 		.ascii	"__tm\000"
 12848      00
 12849              	.LASF72:
 12850 0ade 5F6C6F63 		.ascii	"_lock\000"
 12850      6B00
 12851              	.LASF159:
 12852 0ae4 50776D46 		.ascii	"PwmFastClock\000"
 12852      61737443 
 12852      6C6F636B 
 12852      00
 12853              	.LASF173:
 12854 0af1 4F555450 		.ascii	"OUTPUT_HIGH_OPEN_DRAIN\000"
 12854      55545F48 
 12854      4947485F 
 12854      4F50454E 
 12854      5F445241 
 12855              	.LASF11:
 12856 0b08 6C6F6E67 		.ascii	"long unsigned int\000"
 12856      20756E73 
 12856      69676E65 
 12856      6420696E 
 12856      7400
 12857              	.LASF217:
 12858 0b1a 6275735F 		.ascii	"bus_width\000"
 12858      77696474 
 12858      6800
 12859              	.LASF172:
 12860 0b24 4F555450 		.ascii	"OUTPUT_LOW_OPEN_DRAIN\000"
ARM GAS  /tmp/ccTIydBQ.s 			page 296


 12860      55545F4C 
 12860      4F575F4F 
 12860      50454E5F 
 12860      44524149 
 12861              	.LASF260:
 12862 0b3a 7472616E 		.ascii	"tran_speed\000"
 12862      5F737065 
 12862      656400
 12863              	.LASF100:
 12864 0b45 5F6E696F 		.ascii	"_niobs\000"
 12864      627300
 12865              	.LASF24:
 12866 0b4c 77696E74 		.ascii	"wint_t\000"
 12866      5F7400
 12867              	.LASF16:
 12868 0b53 696E7433 		.ascii	"int32_t\000"
 12868      325F7400 
 12869              	.LASF49:
 12870 0b5b 5F64736F 		.ascii	"_dso_handle\000"
 12870      5F68616E 
 12870      646C6500 
 12871              	.LASF147:
 12872 0b67 4150494E 		.ascii	"APINS_UART0\000"
 12872      535F5541 
 12872      52543000 
 12873              	.LASF150:
 12874 0b73 4150494E 		.ascii	"APINS_UART1\000"
 12874      535F5541 
 12874      52543100 
 12875              	.LASF183:
 12876 0b7f 6765745F 		.ascii	"get_bus_width\000"
 12876      6275735F 
 12876      77696474 
 12876      6800
 12877              	.LASF298:
 12878 0b8d 70696E4D 		.ascii	"pinMode\000"
 12878      6F646500 
 12879              	.LASF283:
 12880 0b95 53444D4D 		.ascii	"SDMMC_UNSTUFF_BITS\000"
 12880      435F554E 
 12880      53545546 
 12880      465F4249 
 12880      545300
 12881              	.LASF250:
 12882 0ba8 73645F6D 		.ascii	"sd_mmc_mci_install_mmc\000"
 12882      6D635F6D 
 12882      63695F69 
 12882      6E737461 
 12882      6C6C5F6D 
 12883              	.LASF266:
 12884 0bbf 73645F6D 		.ascii	"sd_mmc_cmd9_spi\000"
 12884      6D635F63 
 12884      6D64395F 
 12884      73706900 
 12885              	.LASF214:
 12886 0bcf 74797065 		.ascii	"type\000"
 12886      00
ARM GAS  /tmp/ccTIydBQ.s 			page 297


 12887              	.LASF91:
 12888 0bd4 5F637674 		.ascii	"_cvtbuf\000"
 12888      62756600 
 12889              	.LASF4:
 12890 0bdc 756E7369 		.ascii	"unsigned char\000"
 12890      676E6564 
 12890      20636861 
 12890      7200
 12891              	.LASF144:
 12892 0bea 5F74696D 		.ascii	"_timezone\000"
 12892      657A6F6E 
 12892      6500
 12893              	.LASF10:
 12894 0bf4 5F5F7569 		.ascii	"__uint32_t\000"
 12894      6E743332 
 12894      5F7400
 12895              	.LASF21:
 12896 0bff 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 12896      4B5F5245 
 12896      43555253 
 12896      4956455F 
 12896      5400
 12897              	.LASF199:
 12898 0c11 69735F73 		.ascii	"is_spi\000"
 12898      706900
 12899              	.LASF201:
 12900 0c18 73706949 		.ascii	"spiInterface\000"
 12900      6E746572 
 12900      66616365 
 12900      00
 12901              	.LASF292:
 12902 0c25 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 12902      43393920 
 12902      362E332E 
 12902      31203230 
 12902      31373036 
 12903 0c58 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 12903      76352D64 
 12903      3136202D 
 12903      6D666C6F 
 12903      61742D61 
 12904 0c8b 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 12904      6E2D7365 
 12904      6374696F 
 12904      6E73202D 
 12904      66646174 
 12905 0cbe 6F6E7374 		.ascii	"onstant\000"
 12905      616E7400 
 12906              	.LASF157:
 12907 0cc6 4150494E 		.ascii	"APINS_GMAC_PHY\000"
 12907      535F474D 
 12907      41435F50 
 12907      485900
 12908              	.LASF213:
 12909 0cd5 73746174 		.ascii	"state\000"
 12909      6500
 12910              	.LASF116:
ARM GAS  /tmp/ccTIydBQ.s 			page 298


 12911 0cdb 5F6C3634 		.ascii	"_l64a_buf\000"
 12911      615F6275 
 12911      6600
 12912              	.LASF155:
 12913 0ce5 4150494E 		.ascii	"APIN_GMAC_PHY_INTERRUPT\000"
 12913      5F474D41 
 12913      435F5048 
 12913      595F494E 
 12913      54455252 
 12914              	.LASF99:
 12915 0cfd 5F676C75 		.ascii	"_glue\000"
 12915      6500
 12916              	.LASF161:
 12917 0d03 5F5F6664 		.ascii	"__fdlibm_version\000"
 12917      6C69626D 
 12917      5F766572 
 12917      73696F6E 
 12917      00
 12918              	.LASF236:
 12919 0d14 73645F6D 		.ascii	"sd_mmc_init_read_blocks\000"
 12919      6D635F69 
 12919      6E69745F 
 12919      72656164 
 12919      5F626C6F 
 12920              	.LASF294:
 12921 0d2c 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70\000"
 12921      652F746F 
 12921      72626A6F 
 12921      726E2F65 
 12921      636C6970 
 12922              	.LASF225:
 12923 0d5b 6D6D635F 		.ascii	"mmc_trans_multipliers\000"
 12923      7472616E 
 12923      735F6D75 
 12923      6C746970 
 12923      6C696572 
 12924              	.LASF118:
 12925 0d71 5F676574 		.ascii	"_getdate_err\000"
 12925      64617465 
 12925      5F657272 
 12925      00
 12926              	.LASF107:
 12927 0d7e 5F737472 		.ascii	"_strtok_last\000"
 12927      746F6B5F 
 12927      6C617374 
 12927      00
 12928              	.LASF114:
 12929 0d8b 5F6D6274 		.ascii	"_mbtowc_state\000"
 12929      6F77635F 
 12929      73746174 
 12929      6500
 12930              	.LASF178:
 12931 0d99 63617264 		.ascii	"card_version_t\000"
 12931      5F766572 
 12931      73696F6E 
 12931      5F7400
 12932              	.LASF152:
ARM GAS  /tmp/ccTIydBQ.s 			page 299


 12933 0da8 4150494E 		.ascii	"APIN_UART1_TXD\000"
 12933      5F554152 
 12933      54315F54 
 12933      584400
 12934              	.LASF246:
 12935 0db7 73706943 		.ascii	"spiCsPins\000"
 12935      7350696E 
 12935      7300
 12936              	.LASF164:
 12937 0dc1 494E5055 		.ascii	"INPUT\000"
 12937      5400
 12938              	.LASF154:
 12939 0dc7 4150494E 		.ascii	"APIN_HSMCI_DATA\000"
 12939      5F48534D 
 12939      43495F44 
 12939      41544100 
 12940              	.LASF48:
 12941 0dd7 5F666E61 		.ascii	"_fnargs\000"
 12941      72677300 
 12942              	.LASF1:
 12943 0ddf 7369676E 		.ascii	"signed char\000"
 12943      65642063 
 12943      68617200 
 12944              	.LASF280:
 12945 0deb 73645F6D 		.ascii	"sd_mmc_spi_get_response_128\000"
 12945      6D635F73 
 12945      70695F67 
 12945      65745F72 
 12945      6573706F 
 12946              	.LASF75:
 12947 0e07 5F726565 		.ascii	"_reent\000"
 12947      6E7400
 12948              	.LASF168:
 12949 0e0e 4F555450 		.ascii	"OUTPUT_HIGH\000"
 12949      55545F48 
 12949      49474800 
 12950              	.LASF7:
 12951 0e1a 73686F72 		.ascii	"short unsigned int\000"
 12951      7420756E 
 12951      7369676E 
 12951      65642069 
 12951      6E7400
 12952              	.LASF190:
 12953 0e2d 61647463 		.ascii	"adtc_stop\000"
 12953      5F73746F 
 12953      7000
 12954              	.LASF167:
 12955 0e37 4F555450 		.ascii	"OUTPUT_LOW\000"
 12955      55545F4C 
 12955      4F5700
 12956              	.LASF50:
 12957 0e42 5F666E74 		.ascii	"_fntypes\000"
 12957      79706573 
 12957      00
 12958              	.LASF57:
 12959 0e4b 5F73697A 		.ascii	"_size\000"
 12959      6500
ARM GAS  /tmp/ccTIydBQ.s 			page 300


 12960              	.LASF136:
 12961 0e51 646F7562 		.ascii	"double\000"
 12961      6C6500
 12962              	.LASF232:
 12963 0e58 72657370 		.ascii	"resp\000"
 12963      00
 12964              	.LASF22:
 12965 0e5d 5F6F6666 		.ascii	"_off_t\000"
 12965      5F7400
 12966              	.LASF182:
 12967 0e64 64657365 		.ascii	"deselect_device\000"
 12967      6C656374 
 12967      5F646576 
 12967      69636500 
 12968              	.LASF68:
 12969 0e74 5F6E6275 		.ascii	"_nbuf\000"
 12969      6600
 12970              	.LASF106:
 12971 0e7a 5F756E75 		.ascii	"_unused_rand\000"
 12971      7365645F 
 12971      72616E64 
 12971      00
 12972              	.LASF194:
 12973 0e87 77616974 		.ascii	"wait_end_of_read_blocks\000"
 12973      5F656E64 
 12973      5F6F665F 
 12973      72656164 
 12973      5F626C6F 
 12974              	.LASF124:
 12975 0e9f 5F685F65 		.ascii	"_h_errno\000"
 12975      72726E6F 
 12975      00
 12976              	.LASF74:
 12977 0ea8 5F666C61 		.ascii	"_flags2\000"
 12977      67733200 
 12978              	.LASF51:
 12979 0eb0 5F69735F 		.ascii	"_is_cxa\000"
 12979      63786100 
 12980              	.LASF222:
 12981 0eb8 73645F6D 		.ascii	"sd_mmc_nb_block_remaining\000"
 12981      6D635F6E 
 12981      625F626C 
 12981      6F636B5F 
 12981      72656D61 
 12982              	.LASF103:
 12983 0ed2 5F736565 		.ascii	"_seed\000"
 12983      6400
 12984              	.LASF111:
 12985 0ed8 5F72616E 		.ascii	"_rand_next\000"
 12985      645F6E65 
 12985      787400
 12986              	.LASF235:
 12987 0ee3 64657374 		.ascii	"dest\000"
 12987      00
 12988              	.LASF65:
 12989 0ee8 5F736565 		.ascii	"_seek\000"
 12989      6B00
ARM GAS  /tmp/ccTIydBQ.s 			page 301


 12990              	.LASF32:
 12991 0eee 5F6E6578 		.ascii	"_next\000"
 12991      7400
 12992              	.LASF272:
 12993 0ef4 6D6D635F 		.ascii	"mmc_cmd6_set_bus_width\000"
 12993      636D6436 
 12993      5F736574 
 12993      5F627573 
 12993      5F776964 
 12994              	.LASF230:
 12995 0f0b 73645F6D 		.ascii	"sd_mmc_init_write_blocks\000"
 12995      6D635F69 
 12995      6E69745F 
 12995      77726974 
 12995      655F626C 
 12996              	.LASF79:
 12997 0f24 5F737464 		.ascii	"_stderr\000"
 12997      65727200 
 12998              	.LASF126:
 12999 0f2c 5F6E6D61 		.ascii	"_nmalloc\000"
 12999      6C6C6F63 
 12999      00
 13000              	.LASF101:
 13001 0f35 5F696F62 		.ascii	"_iobs\000"
 13001      7300
 13002              	.LASF249:
 13003 0f3b 72657472 		.ascii	"retry\000"
 13003      7900
 13004              	.LASF133:
 13005 0f41 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 13005      6972715F 
 13005      63726974 
 13005      6963616C 
 13005      5F736563 
 13006              	.LASF254:
 13007 0f62 73645F6D 		.ascii	"sd_mmc_deselect_slot\000"
 13007      6D635F64 
 13007      6573656C 
 13007      6563745F 
 13007      736C6F74 
 13008              	.LASF233:
 13009 0f77 73645F6D 		.ascii	"sd_mmc_wait_end_of_read_blocks\000"
 13009      6D635F77 
 13009      6169745F 
 13009      656E645F 
 13009      6F665F72 
 13010              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
