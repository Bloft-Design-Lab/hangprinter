ARM GAS  /tmp/cc6b4z2x.s 			page 1


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
  12              		.file	"xdmac.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.xdmac_configure_transfer,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	xdmac_configure_transfer
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	xdmac_configure_transfer, %function
  25              	xdmac_configure_transfer:
  26              	.LFB173:
  27              		.file 1 "../asf/sam/drivers/xdmac/xdmac.c"
   1:../asf/sam/drivers/xdmac/xdmac.c **** /**
   2:../asf/sam/drivers/xdmac/xdmac.c ****  * \file
   3:../asf/sam/drivers/xdmac/xdmac.c ****  *
   4:../asf/sam/drivers/xdmac/xdmac.c ****  * \brief SAM XDMA Controller (XDMAC) driver.
   5:../asf/sam/drivers/xdmac/xdmac.c ****  *
   6:../asf/sam/drivers/xdmac/xdmac.c ****  * Copyright (c) 2015 Atmel Corporation. All rights reserved.
   7:../asf/sam/drivers/xdmac/xdmac.c ****  *
   8:../asf/sam/drivers/xdmac/xdmac.c ****  * \asf_license_start
   9:../asf/sam/drivers/xdmac/xdmac.c ****  *
  10:../asf/sam/drivers/xdmac/xdmac.c ****  * \page License
  11:../asf/sam/drivers/xdmac/xdmac.c ****  *
  12:../asf/sam/drivers/xdmac/xdmac.c ****  * Redistribution and use in source and binary forms, with or without
  13:../asf/sam/drivers/xdmac/xdmac.c ****  * modification, are permitted provided that the following conditions are met:
  14:../asf/sam/drivers/xdmac/xdmac.c ****  *
  15:../asf/sam/drivers/xdmac/xdmac.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../asf/sam/drivers/xdmac/xdmac.c ****  *    this list of conditions and the following disclaimer.
  17:../asf/sam/drivers/xdmac/xdmac.c ****  *
  18:../asf/sam/drivers/xdmac/xdmac.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../asf/sam/drivers/xdmac/xdmac.c ****  *    this list of conditions and the following disclaimer in the documentation
  20:../asf/sam/drivers/xdmac/xdmac.c ****  *    and/or other materials provided with the distribution.
  21:../asf/sam/drivers/xdmac/xdmac.c ****  *
  22:../asf/sam/drivers/xdmac/xdmac.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../asf/sam/drivers/xdmac/xdmac.c ****  *    from this software without specific prior written permission.
  24:../asf/sam/drivers/xdmac/xdmac.c ****  *
  25:../asf/sam/drivers/xdmac/xdmac.c ****  * 4. This software may only be redistributed and used in connection with an
  26:../asf/sam/drivers/xdmac/xdmac.c ****  *    Atmel microcontroller product.
  27:../asf/sam/drivers/xdmac/xdmac.c ****  *
  28:../asf/sam/drivers/xdmac/xdmac.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../asf/sam/drivers/xdmac/xdmac.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../asf/sam/drivers/xdmac/xdmac.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
ARM GAS  /tmp/cc6b4z2x.s 			page 2


  31:../asf/sam/drivers/xdmac/xdmac.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:../asf/sam/drivers/xdmac/xdmac.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../asf/sam/drivers/xdmac/xdmac.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../asf/sam/drivers/xdmac/xdmac.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../asf/sam/drivers/xdmac/xdmac.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../asf/sam/drivers/xdmac/xdmac.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../asf/sam/drivers/xdmac/xdmac.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../asf/sam/drivers/xdmac/xdmac.c ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../asf/sam/drivers/xdmac/xdmac.c ****  *
  40:../asf/sam/drivers/xdmac/xdmac.c ****  * \asf_license_stop
  41:../asf/sam/drivers/xdmac/xdmac.c ****  *
  42:../asf/sam/drivers/xdmac/xdmac.c ****  */
  43:../asf/sam/drivers/xdmac/xdmac.c **** /*
  44:../asf/sam/drivers/xdmac/xdmac.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../asf/sam/drivers/xdmac/xdmac.c ****  */
  46:../asf/sam/drivers/xdmac/xdmac.c **** 
  47:../asf/sam/drivers/xdmac/xdmac.c **** #include  "xdmac.h"
  48:../asf/sam/drivers/xdmac/xdmac.c **** 
  49:../asf/sam/drivers/xdmac/xdmac.c **** /**
  50:../asf/sam/drivers/xdmac/xdmac.c ****  * \brief Configure DMA for a transfer.
  51:../asf/sam/drivers/xdmac/xdmac.c ****  *
  52:../asf/sam/drivers/xdmac/xdmac.c ****  * \param[out] xdmac Module hardware register base address pointer.
  53:../asf/sam/drivers/xdmac/xdmac.c ****  * \param[in] channel_num The used channel number.
  54:../asf/sam/drivers/xdmac/xdmac.c ****  * \param[in] cfg   The configuration for used channel
  55:../asf/sam/drivers/xdmac/xdmac.c ****  */
  56:../asf/sam/drivers/xdmac/xdmac.c **** void xdmac_configure_transfer(Xdmac *xdmac,
  57:../asf/sam/drivers/xdmac/xdmac.c **** 		uint32_t channel_num, xdmac_channel_config_t *cfg)
  58:../asf/sam/drivers/xdmac/xdmac.c **** {
  28              		.loc 1 58 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              	.LVL0:
  33              	.LBB20:
  34              	.LBB21:
  35              		.file 2 "../asf/sam/drivers/xdmac/xdmac.h"
   1:../asf/sam/drivers/xdmac/xdmac.h **** /**
   2:../asf/sam/drivers/xdmac/xdmac.h ****  * \file
   3:../asf/sam/drivers/xdmac/xdmac.h ****  *
   4:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief SAM XDMA Controller (DMAC) driver.
   5:../asf/sam/drivers/xdmac/xdmac.h ****  *
   6:../asf/sam/drivers/xdmac/xdmac.h ****  * Copyright (c) 2015-2016 Atmel Corporation. All rights reserved.
   7:../asf/sam/drivers/xdmac/xdmac.h ****  *
   8:../asf/sam/drivers/xdmac/xdmac.h ****  * \asf_license_start
   9:../asf/sam/drivers/xdmac/xdmac.h ****  *
  10:../asf/sam/drivers/xdmac/xdmac.h ****  * \page License
  11:../asf/sam/drivers/xdmac/xdmac.h ****  *
  12:../asf/sam/drivers/xdmac/xdmac.h ****  * Redistribution and use in source and binary forms, with or without
  13:../asf/sam/drivers/xdmac/xdmac.h ****  * modification, are permitted provided that the following conditions are met:
  14:../asf/sam/drivers/xdmac/xdmac.h ****  *
  15:../asf/sam/drivers/xdmac/xdmac.h ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../asf/sam/drivers/xdmac/xdmac.h ****  *    this list of conditions and the following disclaimer.
  17:../asf/sam/drivers/xdmac/xdmac.h ****  *
  18:../asf/sam/drivers/xdmac/xdmac.h ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../asf/sam/drivers/xdmac/xdmac.h ****  *    this list of conditions and the following disclaimer in the documentation
  20:../asf/sam/drivers/xdmac/xdmac.h ****  *    and/or other materials provided with the distribution.
  21:../asf/sam/drivers/xdmac/xdmac.h ****  *
ARM GAS  /tmp/cc6b4z2x.s 			page 3


  22:../asf/sam/drivers/xdmac/xdmac.h ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../asf/sam/drivers/xdmac/xdmac.h ****  *    from this software without specific prior written permission.
  24:../asf/sam/drivers/xdmac/xdmac.h ****  *
  25:../asf/sam/drivers/xdmac/xdmac.h ****  * 4. This software may only be redistributed and used in connection with an
  26:../asf/sam/drivers/xdmac/xdmac.h ****  *    Atmel microcontroller product.
  27:../asf/sam/drivers/xdmac/xdmac.h ****  *
  28:../asf/sam/drivers/xdmac/xdmac.h ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../asf/sam/drivers/xdmac/xdmac.h ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../asf/sam/drivers/xdmac/xdmac.h ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
  31:../asf/sam/drivers/xdmac/xdmac.h ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:../asf/sam/drivers/xdmac/xdmac.h ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../asf/sam/drivers/xdmac/xdmac.h ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../asf/sam/drivers/xdmac/xdmac.h ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../asf/sam/drivers/xdmac/xdmac.h ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../asf/sam/drivers/xdmac/xdmac.h ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../asf/sam/drivers/xdmac/xdmac.h ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../asf/sam/drivers/xdmac/xdmac.h ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../asf/sam/drivers/xdmac/xdmac.h ****  *
  40:../asf/sam/drivers/xdmac/xdmac.h ****  * \asf_license_stop
  41:../asf/sam/drivers/xdmac/xdmac.h ****  *
  42:../asf/sam/drivers/xdmac/xdmac.h ****  */
  43:../asf/sam/drivers/xdmac/xdmac.h **** /*
  44:../asf/sam/drivers/xdmac/xdmac.h ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../asf/sam/drivers/xdmac/xdmac.h ****  */
  46:../asf/sam/drivers/xdmac/xdmac.h **** 
  47:../asf/sam/drivers/xdmac/xdmac.h **** #ifndef XDMAC_H_INCLUDED
  48:../asf/sam/drivers/xdmac/xdmac.h **** #define XDMAC_H_INCLUDED
  49:../asf/sam/drivers/xdmac/xdmac.h **** 
  50:../asf/sam/drivers/xdmac/xdmac.h **** /**
  51:../asf/sam/drivers/xdmac/xdmac.h ****  * \defgroup asfdoc_sam_drivers_xdmac_group SAMV71/V70/E70/S70 XDMA Controller (XDMAC) Driver
  52:../asf/sam/drivers/xdmac/xdmac.h ****  *
  53:../asf/sam/drivers/xdmac/xdmac.h ****  * This driver for Atmel&reg; | SMART SAM XDMA Controller (XDMAC) is a AHB-protocol central
  54:../asf/sam/drivers/xdmac/xdmac.h ****  * direct memory access controller. It performs peripheral data transfer and memory move operations
  55:../asf/sam/drivers/xdmac/xdmac.h ****  * over one or two bus ports through the unidirectional communication channel.
  56:../asf/sam/drivers/xdmac/xdmac.h ****  * This is a driver for the configuration, enabling, disabling, and use of the XDMAC peripheral.
  57:../asf/sam/drivers/xdmac/xdmac.h ****  *
  58:../asf/sam/drivers/xdmac/xdmac.h ****  * Devices from the following series can use this module:
  59:../asf/sam/drivers/xdmac/xdmac.h ****  * - Atmel | SMART SAMV71
  60:../asf/sam/drivers/xdmac/xdmac.h ****  * - Atmel | SMART SAMV70
  61:../asf/sam/drivers/xdmac/xdmac.h ****  * - Atmel | SMART SAMS70
  62:../asf/sam/drivers/xdmac/xdmac.h ****  * - Atmel | SMART SAME70
  63:../asf/sam/drivers/xdmac/xdmac.h ****  *
  64:../asf/sam/drivers/xdmac/xdmac.h ****  * The outline of this documentation is as follows:
  65:../asf/sam/drivers/xdmac/xdmac.h ****  *  - \ref asfdoc_sam_drivers_xdmac_prerequisites
  66:../asf/sam/drivers/xdmac/xdmac.h ****  *  - \ref asfdoc_sam_drivers_xdmac_module_overview
  67:../asf/sam/drivers/xdmac/xdmac.h ****  *  - \ref asfdoc_sam_drivers_xdmac_special_considerations
  68:../asf/sam/drivers/xdmac/xdmac.h ****  *  - \ref asfdoc_sam_drivers_xdmac_extra_info
  69:../asf/sam/drivers/xdmac/xdmac.h ****  *  - \ref asfdoc_sam_drivers_xdmac_examples
  70:../asf/sam/drivers/xdmac/xdmac.h ****  *  - \ref asfdoc_sam_drivers_xdmac_api_overview
  71:../asf/sam/drivers/xdmac/xdmac.h ****  *
  72:../asf/sam/drivers/xdmac/xdmac.h ****  *
  73:../asf/sam/drivers/xdmac/xdmac.h ****  * \section asfdoc_sam_drivers_xdmac_prerequisites Prerequisites
  74:../asf/sam/drivers/xdmac/xdmac.h ****  *
  75:../asf/sam/drivers/xdmac/xdmac.h ****  * There are no prerequisites for this module.
  76:../asf/sam/drivers/xdmac/xdmac.h ****  *
  77:../asf/sam/drivers/xdmac/xdmac.h ****  *
  78:../asf/sam/drivers/xdmac/xdmac.h ****  * \section asfdoc_sam_drivers_xdmac_module_overview Module Overview
ARM GAS  /tmp/cc6b4z2x.s 			page 4


  79:../asf/sam/drivers/xdmac/xdmac.h ****  * The DMA Controller (XDMAC) is a AHB-protocol central direct memory access controller.
  80:../asf/sam/drivers/xdmac/xdmac.h ****  * It performs peripheral data transfer and memory move operations over one or two bus ports
  81:../asf/sam/drivers/xdmac/xdmac.h ****  * through the unidirectional communication channel. Each channel is fully programmable and
  82:../asf/sam/drivers/xdmac/xdmac.h ****  * provides both peripheral or memory to memory transfer. The channel features are configurable
  83:../asf/sam/drivers/xdmac/xdmac.h ****  * at implementation time.
  84:../asf/sam/drivers/xdmac/xdmac.h ****  *
  85:../asf/sam/drivers/xdmac/xdmac.h ****  *
  86:../asf/sam/drivers/xdmac/xdmac.h ****  * \section asfdoc_sam_drivers_xdmac_special_considerations Special Considerations
  87:../asf/sam/drivers/xdmac/xdmac.h ****  * There are no special considerations for this module.
  88:../asf/sam/drivers/xdmac/xdmac.h ****  *
  89:../asf/sam/drivers/xdmac/xdmac.h ****  *
  90:../asf/sam/drivers/xdmac/xdmac.h ****  * \section asfdoc_sam_drivers_xdmac_extra_info Extra Information
  91:../asf/sam/drivers/xdmac/xdmac.h ****  *
  92:../asf/sam/drivers/xdmac/xdmac.h ****  * For extra information, see \ref asfdoc_sam_drivers_xdmac_extra. This includes:
  93:../asf/sam/drivers/xdmac/xdmac.h ****  *  - \ref asfdoc_sam_drivers_xdmac_extra_acronyms
  94:../asf/sam/drivers/xdmac/xdmac.h ****  *  - \ref asfdoc_sam_drivers_xdmac_extra_dependencies
  95:../asf/sam/drivers/xdmac/xdmac.h ****  *  - \ref asfdoc_sam_drivers_xdmac_extra_errata
  96:../asf/sam/drivers/xdmac/xdmac.h ****  *  - \ref asfdoc_sam_drivers_xdmac_extra_history
  97:../asf/sam/drivers/xdmac/xdmac.h ****  *
  98:../asf/sam/drivers/xdmac/xdmac.h ****  * \section asfdoc_sam_drivers_xdmac_examples Examples
  99:../asf/sam/drivers/xdmac/xdmac.h ****  *
 100:../asf/sam/drivers/xdmac/xdmac.h ****  * For a list of examples related to this driver, see
 101:../asf/sam/drivers/xdmac/xdmac.h ****  * \ref asfdoc_sam_drivers_xdmac_exqsg.
 102:../asf/sam/drivers/xdmac/xdmac.h ****  *
 103:../asf/sam/drivers/xdmac/xdmac.h ****  *
 104:../asf/sam/drivers/xdmac/xdmac.h ****  * \section asfdoc_sam_drivers_xdmac_api_overview API Overview
 105:../asf/sam/drivers/xdmac/xdmac.h ****  * @{
 106:../asf/sam/drivers/xdmac/xdmac.h ****  */
 107:../asf/sam/drivers/xdmac/xdmac.h **** 
 108:../asf/sam/drivers/xdmac/xdmac.h **** #include  <compiler.h>
 109:../asf/sam/drivers/xdmac/xdmac.h **** #include  <status_codes.h>
 110:../asf/sam/drivers/xdmac/xdmac.h **** 
 111:../asf/sam/drivers/xdmac/xdmac.h **** /** @cond */
 112:../asf/sam/drivers/xdmac/xdmac.h **** /**INDENT-OFF**/
 113:../asf/sam/drivers/xdmac/xdmac.h **** #ifdef __cplusplus
 114:../asf/sam/drivers/xdmac/xdmac.h **** extern "C" {
 115:../asf/sam/drivers/xdmac/xdmac.h **** #endif
 116:../asf/sam/drivers/xdmac/xdmac.h **** /**INDENT-ON**/
 117:../asf/sam/drivers/xdmac/xdmac.h **** /** @endcond */
 118:../asf/sam/drivers/xdmac/xdmac.h **** 
 119:../asf/sam/drivers/xdmac/xdmac.h **** /** DMA channel hardware interface number */
 120:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_HSMCI       0
 121:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_SPI0_TX     1
 122:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_SPI0_RX     2
 123:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_SPI1_TX     3
 124:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_SPI1_RX     4
 125:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_QSPI_TX     5
 126:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_QSPI_RX     6
 127:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_USART0_TX   7
 128:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_USART0_RX   8
 129:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_USART1_TX   9
 130:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_USART1_RX   10
 131:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_USART2_TX   11
 132:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_USART2_RX   12
 133:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_PWM0        13
 134:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_TWIHS0_TX   14
 135:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_TWIHS0_RX   15
ARM GAS  /tmp/cc6b4z2x.s 			page 5


 136:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_TWIHS1_TX   16
 137:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_TWIHS1_RX   17
 138:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_TWIHS2_TX   18
 139:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_TWIHS2_RX   19
 140:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_UART0_TX    20
 141:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_UART0_RX    21
 142:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_UART1_TX    22
 143:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_UART1_RX    23
 144:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_UART2_TX    24
 145:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_UART2_RX    25
 146:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_UART3_TX    26
 147:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_UART3_RX    27
 148:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_UART4_TX    28
 149:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_UART4_RX    29
 150:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_DAC         30
 151:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_SSC_TX      32
 152:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_SSC_RX      33
 153:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_PIOA        34
 154:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_AFEC0       35
 155:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_AFEC1       36
 156:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_AES_TX      37
 157:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_AES_RX      38
 158:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_PWM1        39
 159:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_TC0         40
 160:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_TC1         41
 161:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_TC2         42
 162:../asf/sam/drivers/xdmac/xdmac.h **** #define XDAMC_CHANNEL_HWID_TC3         43
 163:../asf/sam/drivers/xdmac/xdmac.h **** 
 164:../asf/sam/drivers/xdmac/xdmac.h **** /* XDMA_MBR_UBC */
 165:../asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_NDE            (0x1u << 24)
 166:../asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_NDE_FETCH_DIS  (0x0u << 24)
 167:../asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_NDE_FETCH_EN   (0x1u << 24)
 168:../asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_NSEN           (0x1u << 25)
 169:../asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_NSEN_UNCHANGED (0x0u << 25)
 170:../asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_NSEN_UPDATED   (0x1u << 25)
 171:../asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_NDEN           (0x1u << 26)
 172:../asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_NDEN_UNCHANGED (0x0u << 26)
 173:../asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_NDEN_UPDATED   (0x1u << 26)
 174:../asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_NVIEW_Pos      27
 175:../asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_NVIEW_Msk      (0x3u << XDMAC_UBC_NVIEW_Pos)
 176:../asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_NVIEW_NDV0     (0x0u << XDMAC_UBC_NVIEW_Pos)
 177:../asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_NVIEW_NDV1     (0x1u << XDMAC_UBC_NVIEW_Pos)
 178:../asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_NVIEW_NDV2     (0x2u << XDMAC_UBC_NVIEW_Pos)
 179:../asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_NVIEW_NDV3     (0x3u << XDMAC_UBC_NVIEW_Pos)
 180:../asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_UBLEN_Pos 0
 181:../asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_UBLEN_Msk (0xffffffu << XDMAC_UBC_UBLEN_Pos)
 182:../asf/sam/drivers/xdmac/xdmac.h **** #define   XDMAC_UBC_UBLEN(value) ((XDMAC_UBC_UBLEN_Msk & ((value) << XDMAC_UBC_UBLEN_Pos)))
 183:../asf/sam/drivers/xdmac/xdmac.h **** 
 184:../asf/sam/drivers/xdmac/xdmac.h **** /** XDMA config register for channel */
 185:../asf/sam/drivers/xdmac/xdmac.h **** typedef struct {
 186:../asf/sam/drivers/xdmac/xdmac.h **** 	/** Microblock Control Member. */
 187:../asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_ubc;
 188:../asf/sam/drivers/xdmac/xdmac.h **** 	/** Source Address Member. */
 189:../asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_sa;
 190:../asf/sam/drivers/xdmac/xdmac.h **** 	/** Destination Address Member. */
 191:../asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_da;
 192:../asf/sam/drivers/xdmac/xdmac.h **** 	/** Configuration Register. */
ARM GAS  /tmp/cc6b4z2x.s 			page 6


 193:../asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_cfg;
 194:../asf/sam/drivers/xdmac/xdmac.h **** 	/** Block Control Member. */
 195:../asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_bc;
 196:../asf/sam/drivers/xdmac/xdmac.h **** 	/** Data Stride Member. */
 197:../asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_ds;
 198:../asf/sam/drivers/xdmac/xdmac.h **** 	/** Source Microblock Stride Member. */
 199:../asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_sus;
 200:../asf/sam/drivers/xdmac/xdmac.h **** 	/** Destination Microblock Stride Member. */
 201:../asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_dus;
 202:../asf/sam/drivers/xdmac/xdmac.h **** } xdmac_channel_config_t;
 203:../asf/sam/drivers/xdmac/xdmac.h **** 
 204:../asf/sam/drivers/xdmac/xdmac.h **** /**
 205:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Structure for storing parameters for DMA view0 that can be
 206:../asf/sam/drivers/xdmac/xdmac.h ****  * performed by the DMA Master transfer.
 207:../asf/sam/drivers/xdmac/xdmac.h ****  */
 208:../asf/sam/drivers/xdmac/xdmac.h **** typedef struct {
 209:../asf/sam/drivers/xdmac/xdmac.h **** 	/** Next Descriptor Address number. */
 210:../asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_nda;
 211:../asf/sam/drivers/xdmac/xdmac.h **** 	/** Microblock Control Member. */
 212:../asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_ubc;
 213:../asf/sam/drivers/xdmac/xdmac.h **** 	/** Destination Address Member. */
 214:../asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_da;
 215:../asf/sam/drivers/xdmac/xdmac.h **** } lld_view0;
 216:../asf/sam/drivers/xdmac/xdmac.h **** 
 217:../asf/sam/drivers/xdmac/xdmac.h **** /**
 218:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Structure for storing parameters for DMA view1 that can be
 219:../asf/sam/drivers/xdmac/xdmac.h ****  * performed by the DMA Master transfer.
 220:../asf/sam/drivers/xdmac/xdmac.h ****  */
 221:../asf/sam/drivers/xdmac/xdmac.h **** typedef struct {
 222:../asf/sam/drivers/xdmac/xdmac.h **** 	/** Next Descriptor Address number. */
 223:../asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_nda;
 224:../asf/sam/drivers/xdmac/xdmac.h **** 	/** Microblock Control Member. */
 225:../asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_ubc;
 226:../asf/sam/drivers/xdmac/xdmac.h **** 	/** Source Address Member. */
 227:../asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_sa;
 228:../asf/sam/drivers/xdmac/xdmac.h **** 	/** Destination Address Member. */
 229:../asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_da;
 230:../asf/sam/drivers/xdmac/xdmac.h **** } lld_view1;
 231:../asf/sam/drivers/xdmac/xdmac.h **** 
 232:../asf/sam/drivers/xdmac/xdmac.h **** /**
 233:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Structure for storing parameters for DMA view2 that can be
 234:../asf/sam/drivers/xdmac/xdmac.h ****  * performed by the DMA Master transfer.
 235:../asf/sam/drivers/xdmac/xdmac.h ****  */
 236:../asf/sam/drivers/xdmac/xdmac.h **** typedef struct {
 237:../asf/sam/drivers/xdmac/xdmac.h **** 	/** Next Descriptor Address number. */
 238:../asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_nda;
 239:../asf/sam/drivers/xdmac/xdmac.h **** 	/** Microblock Control Member. */
 240:../asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_ubc;
 241:../asf/sam/drivers/xdmac/xdmac.h **** 	/** Source Address Member. */
 242:../asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_sa;
 243:../asf/sam/drivers/xdmac/xdmac.h **** 	/** Destination Address Member. */
 244:../asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_da;
 245:../asf/sam/drivers/xdmac/xdmac.h **** 	/** Configuration Register. */
 246:../asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_cfg;
 247:../asf/sam/drivers/xdmac/xdmac.h **** } lld_view2;
 248:../asf/sam/drivers/xdmac/xdmac.h **** 
 249:../asf/sam/drivers/xdmac/xdmac.h **** /**
ARM GAS  /tmp/cc6b4z2x.s 			page 7


 250:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Structure for storing parameters for DMA view3 that can be
 251:../asf/sam/drivers/xdmac/xdmac.h ****  * performed by the DMA Master transfer.
 252:../asf/sam/drivers/xdmac/xdmac.h ****  */
 253:../asf/sam/drivers/xdmac/xdmac.h **** typedef struct {
 254:../asf/sam/drivers/xdmac/xdmac.h **** 	/** Next Descriptor Address number. */
 255:../asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_nda;
 256:../asf/sam/drivers/xdmac/xdmac.h **** 	/** Microblock Control Member. */
 257:../asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_ubc;
 258:../asf/sam/drivers/xdmac/xdmac.h **** 	/** Source Address Member. */
 259:../asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_sa;
 260:../asf/sam/drivers/xdmac/xdmac.h **** 	/** Destination Address Member. */
 261:../asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_da;
 262:../asf/sam/drivers/xdmac/xdmac.h **** 	/** Configuration Register. */
 263:../asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_cfg;
 264:../asf/sam/drivers/xdmac/xdmac.h **** 	/** Block Control Member. */
 265:../asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_bc;
 266:../asf/sam/drivers/xdmac/xdmac.h **** 	/** Data Stride Member. */
 267:../asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_ds;
 268:../asf/sam/drivers/xdmac/xdmac.h **** 	/** Source Microblock Stride Member. */
 269:../asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_sus;
 270:../asf/sam/drivers/xdmac/xdmac.h **** 	/** Destination Microblock Stride Member. */
 271:../asf/sam/drivers/xdmac/xdmac.h **** 	uint32_t mbr_dus;
 272:../asf/sam/drivers/xdmac/xdmac.h **** } lld_view3;
 273:../asf/sam/drivers/xdmac/xdmac.h **** 
 274:../asf/sam/drivers/xdmac/xdmac.h **** /**
 275:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Get XDMAC global type.
 276:../asf/sam/drivers/xdmac/xdmac.h ****  *
 277:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 278:../asf/sam/drivers/xdmac/xdmac.h ****  */
 279:../asf/sam/drivers/xdmac/xdmac.h **** static inline uint32_t xdmac_get_type( Xdmac *xdmac)
 280:../asf/sam/drivers/xdmac/xdmac.h **** {
 281:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 282:../asf/sam/drivers/xdmac/xdmac.h **** 	return xdmac->XDMAC_GTYPE;
 283:../asf/sam/drivers/xdmac/xdmac.h **** }
 284:../asf/sam/drivers/xdmac/xdmac.h **** 
 285:../asf/sam/drivers/xdmac/xdmac.h **** /**
 286:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Get XDMAC global configuration.
 287:../asf/sam/drivers/xdmac/xdmac.h ****  *
 288:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 289:../asf/sam/drivers/xdmac/xdmac.h ****  */
 290:../asf/sam/drivers/xdmac/xdmac.h **** static inline uint32_t xdmac_get_config(Xdmac *xdmac)
 291:../asf/sam/drivers/xdmac/xdmac.h **** {
 292:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 293:../asf/sam/drivers/xdmac/xdmac.h **** 	return xdmac->XDMAC_GCFG;
 294:../asf/sam/drivers/xdmac/xdmac.h **** }
 295:../asf/sam/drivers/xdmac/xdmac.h **** 
 296:../asf/sam/drivers/xdmac/xdmac.h **** /**
 297:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Get XDMAC global weighted arbiter configuration.
 298:../asf/sam/drivers/xdmac/xdmac.h ****  *
 299:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 300:../asf/sam/drivers/xdmac/xdmac.h ****  */
 301:../asf/sam/drivers/xdmac/xdmac.h **** static inline uint32_t xdmac_get_arbiter(Xdmac *xdmac)
 302:../asf/sam/drivers/xdmac/xdmac.h **** {
 303:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 304:../asf/sam/drivers/xdmac/xdmac.h **** 	return xdmac->XDMAC_GWAC;
 305:../asf/sam/drivers/xdmac/xdmac.h **** }
 306:../asf/sam/drivers/xdmac/xdmac.h **** 
ARM GAS  /tmp/cc6b4z2x.s 			page 8


 307:../asf/sam/drivers/xdmac/xdmac.h **** /**
 308:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Enables XDMAC global interrupt.
 309:../asf/sam/drivers/xdmac/xdmac.h ****  *
 310:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 311:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] channel_num  XDMA Channel number (range 0 to 23).
 312:../asf/sam/drivers/xdmac/xdmac.h ****  */
 313:../asf/sam/drivers/xdmac/xdmac.h **** static inline void xdmac_enable_interrupt(Xdmac *xdmac, uint32_t channel_num)
 314:../asf/sam/drivers/xdmac/xdmac.h **** {
 315:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 316:../asf/sam/drivers/xdmac/xdmac.h **** 	xdmac->XDMAC_GIE = ( XDMAC_GIE_IE0 << channel_num) ;
 317:../asf/sam/drivers/xdmac/xdmac.h **** }
 318:../asf/sam/drivers/xdmac/xdmac.h **** 
 319:../asf/sam/drivers/xdmac/xdmac.h **** /**
 320:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Disables XDMAC global interrupt
 321:../asf/sam/drivers/xdmac/xdmac.h ****  *
 322:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 323:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] channel_num  XDMA Channel number (range 0 to 23).
 324:../asf/sam/drivers/xdmac/xdmac.h ****  */
 325:../asf/sam/drivers/xdmac/xdmac.h **** static inline void xdmac_disable_interrupt(Xdmac *xdmac, uint32_t channel_num)
 326:../asf/sam/drivers/xdmac/xdmac.h **** {
 327:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 328:../asf/sam/drivers/xdmac/xdmac.h **** 	xdmac->XDMAC_GID = (XDMAC_GID_ID0 << channel_num);
 329:../asf/sam/drivers/xdmac/xdmac.h **** }
 330:../asf/sam/drivers/xdmac/xdmac.h **** 
 331:../asf/sam/drivers/xdmac/xdmac.h **** /**
 332:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Get XDMAC global interrupt mask.
 333:../asf/sam/drivers/xdmac/xdmac.h ****  *
 334:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 335:../asf/sam/drivers/xdmac/xdmac.h ****  */
 336:../asf/sam/drivers/xdmac/xdmac.h **** static inline uint32_t xdmac_get_interrupt_mask(Xdmac *xdmac)
 337:../asf/sam/drivers/xdmac/xdmac.h **** {
 338:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 339:../asf/sam/drivers/xdmac/xdmac.h **** 	return (xdmac->XDMAC_GIM);
 340:../asf/sam/drivers/xdmac/xdmac.h **** }
 341:../asf/sam/drivers/xdmac/xdmac.h **** 
 342:../asf/sam/drivers/xdmac/xdmac.h **** /**
 343:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Get XDMAC global interrupt status.
 344:../asf/sam/drivers/xdmac/xdmac.h ****  *
 345:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 346:../asf/sam/drivers/xdmac/xdmac.h ****  */
 347:../asf/sam/drivers/xdmac/xdmac.h **** static inline uint32_t xdmac_get_interrupt_status(Xdmac *xdmac)
 348:../asf/sam/drivers/xdmac/xdmac.h **** {
 349:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 350:../asf/sam/drivers/xdmac/xdmac.h **** 	return (xdmac->XDMAC_GIS);
 351:../asf/sam/drivers/xdmac/xdmac.h **** }
 352:../asf/sam/drivers/xdmac/xdmac.h **** 
 353:../asf/sam/drivers/xdmac/xdmac.h **** /**
 354:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief enables the relevant channel of given XDMAC.
 355:../asf/sam/drivers/xdmac/xdmac.h ****  *
 356:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 357:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in]  channel_num  XDMA Channel number (range 0 to 23)
 358:../asf/sam/drivers/xdmac/xdmac.h ****  */
 359:../asf/sam/drivers/xdmac/xdmac.h **** static inline void xdmac_channel_enable(Xdmac *xdmac, uint32_t channel_num)
 360:../asf/sam/drivers/xdmac/xdmac.h **** {
 361:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 362:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(channel_num < XDMACCHID_NUMBER);
 363:../asf/sam/drivers/xdmac/xdmac.h **** 	
ARM GAS  /tmp/cc6b4z2x.s 			page 9


 364:../asf/sam/drivers/xdmac/xdmac.h **** #if 0	// chrishamm: This causes occasional hard faults. Not good
 365:../asf/sam/drivers/xdmac/xdmac.h **** 	/* Update DCache before DMA transmit */
 366:../asf/sam/drivers/xdmac/xdmac.h **** 	SCB_CleanInvalidateDCache();
 367:../asf/sam/drivers/xdmac/xdmac.h **** #endif
 368:../asf/sam/drivers/xdmac/xdmac.h **** 	
 369:../asf/sam/drivers/xdmac/xdmac.h **** 	xdmac->XDMAC_GE = (XDMAC_GE_EN0 << channel_num);
 370:../asf/sam/drivers/xdmac/xdmac.h **** }
 371:../asf/sam/drivers/xdmac/xdmac.h **** 
 372:../asf/sam/drivers/xdmac/xdmac.h **** /**
 373:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Disables the relevant channel of given XDMAC.
 374:../asf/sam/drivers/xdmac/xdmac.h ****  *
 375:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 376:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in]  channel_num  XDMA Channel number (range 0 to 23)
 377:../asf/sam/drivers/xdmac/xdmac.h ****  */
 378:../asf/sam/drivers/xdmac/xdmac.h **** static inline void xdmac_channel_disable(Xdmac *xdmac, uint32_t channel_num)
 379:../asf/sam/drivers/xdmac/xdmac.h **** {
 380:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 381:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(channel_num < XDMACCHID_NUMBER);
 382:../asf/sam/drivers/xdmac/xdmac.h **** 	xdmac->XDMAC_GD =(XDMAC_GD_DI0 << channel_num);
 383:../asf/sam/drivers/xdmac/xdmac.h **** }
 384:../asf/sam/drivers/xdmac/xdmac.h **** 
 385:../asf/sam/drivers/xdmac/xdmac.h **** /**
 386:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Get Global channel status of given XDMAC.
 387:../asf/sam/drivers/xdmac/xdmac.h ****  * \note: When set to 1, this bit indicates that the channel x is enabled.
 388:../asf/sam/drivers/xdmac/xdmac.h ****           If a channel disable request is issued, this bit remains asserted
 389:../asf/sam/drivers/xdmac/xdmac.h ****           until pending transaction is completed.
 390:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 391:../asf/sam/drivers/xdmac/xdmac.h ****  */
 392:../asf/sam/drivers/xdmac/xdmac.h **** static inline uint32_t xdmac_channel_get_status(Xdmac *xdmac)
 393:../asf/sam/drivers/xdmac/xdmac.h **** {
 394:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 395:../asf/sam/drivers/xdmac/xdmac.h **** 	return xdmac->XDMAC_GS;
 396:../asf/sam/drivers/xdmac/xdmac.h **** }
 397:../asf/sam/drivers/xdmac/xdmac.h **** 
 398:../asf/sam/drivers/xdmac/xdmac.h **** /**
 399:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Suspend the relevant channel's read.
 400:../asf/sam/drivers/xdmac/xdmac.h ****  *
 401:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 402:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] channel_num  XDMA Channel number (range 0 to 23).
 403:../asf/sam/drivers/xdmac/xdmac.h ****  */
 404:../asf/sam/drivers/xdmac/xdmac.h **** static inline void xdmac_channel_read_suspend(Xdmac *xdmac, uint32_t channel_num)
 405:../asf/sam/drivers/xdmac/xdmac.h **** {
 406:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 407:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(channel_num < XDMACCHID_NUMBER);
 408:../asf/sam/drivers/xdmac/xdmac.h **** 	xdmac->XDMAC_GRS |= XDMAC_GRS_RS0 << channel_num;
 409:../asf/sam/drivers/xdmac/xdmac.h **** }
 410:../asf/sam/drivers/xdmac/xdmac.h **** 
 411:../asf/sam/drivers/xdmac/xdmac.h **** /**
 412:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Suspend the relevant channel's write.
 413:../asf/sam/drivers/xdmac/xdmac.h ****  *
 414:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 415:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] channel_num  XDMA Channel number (range 0 to 23).
 416:../asf/sam/drivers/xdmac/xdmac.h ****  */
 417:../asf/sam/drivers/xdmac/xdmac.h **** static inline void xdmac_channel_write_suspend(Xdmac *xdmac, uint32_t channel_num)
 418:../asf/sam/drivers/xdmac/xdmac.h **** {
 419:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 420:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(channel_num < XDMACCHID_NUMBER);
ARM GAS  /tmp/cc6b4z2x.s 			page 10


 421:../asf/sam/drivers/xdmac/xdmac.h **** 	xdmac->XDMAC_GWS |= XDMAC_GWS_WS0 << channel_num;
 422:../asf/sam/drivers/xdmac/xdmac.h **** }
 423:../asf/sam/drivers/xdmac/xdmac.h **** 
 424:../asf/sam/drivers/xdmac/xdmac.h **** /**
 425:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Suspend the relevant channel's read & write.
 426:../asf/sam/drivers/xdmac/xdmac.h ****  *
 427:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 428:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] channel_num  XDMA Channel number (range 0 to 23).
 429:../asf/sam/drivers/xdmac/xdmac.h ****  */
 430:../asf/sam/drivers/xdmac/xdmac.h **** static inline void xdmac_channel_readwrite_suspend(Xdmac *xdmac, uint32_t channel_num)
 431:../asf/sam/drivers/xdmac/xdmac.h **** {
 432:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 433:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(channel_num < XDMACCHID_NUMBER);
 434:../asf/sam/drivers/xdmac/xdmac.h **** 	xdmac->XDMAC_GRWS = (XDMAC_GRWS_RWS0 << channel_num);
 435:../asf/sam/drivers/xdmac/xdmac.h **** }
 436:../asf/sam/drivers/xdmac/xdmac.h **** 
 437:../asf/sam/drivers/xdmac/xdmac.h **** /**
 438:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Resume the relevant channel's read & write.
 439:../asf/sam/drivers/xdmac/xdmac.h ****  *
 440:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 441:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] channel_num  XDMA Channel number (range 0 to 23).
 442:../asf/sam/drivers/xdmac/xdmac.h ****  */
 443:../asf/sam/drivers/xdmac/xdmac.h **** static inline void xdmac_channel_readwrite_resume(Xdmac *xdmac, uint32_t channel_num)
 444:../asf/sam/drivers/xdmac/xdmac.h **** {
 445:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 446:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(channel_num < XDMACCHID_NUMBER);
 447:../asf/sam/drivers/xdmac/xdmac.h **** 	xdmac->XDMAC_GRWR = (XDMAC_GRWR_RWR0 << channel_num);
 448:../asf/sam/drivers/xdmac/xdmac.h **** }
 449:../asf/sam/drivers/xdmac/xdmac.h **** 
 450:../asf/sam/drivers/xdmac/xdmac.h **** /**
 451:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Set software transfer request on the relevant channel.
 452:../asf/sam/drivers/xdmac/xdmac.h ****  *
 453:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 454:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] channel_num  XDMA Channel number (range 0 to 23).
 455:../asf/sam/drivers/xdmac/xdmac.h ****  */
 456:../asf/sam/drivers/xdmac/xdmac.h **** static inline void xdmac_channel_software_request(Xdmac *xdmac, uint32_t channel_num)
 457:../asf/sam/drivers/xdmac/xdmac.h **** {
 458:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 459:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(channel_num < XDMACCHID_NUMBER);
 460:../asf/sam/drivers/xdmac/xdmac.h **** 	xdmac->XDMAC_GSWR = (XDMAC_GSWR_SWREQ0 << channel_num);
 461:../asf/sam/drivers/xdmac/xdmac.h **** }
 462:../asf/sam/drivers/xdmac/xdmac.h **** 
 463:../asf/sam/drivers/xdmac/xdmac.h **** /**
 464:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Get software transfer status of the relevant channel.
 465:../asf/sam/drivers/xdmac/xdmac.h ****  *
 466:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 467:../asf/sam/drivers/xdmac/xdmac.h ****  */
 468:../asf/sam/drivers/xdmac/xdmac.h **** static inline uint32_t xdmac_get_software_request_status(Xdmac *xdmac)
 469:../asf/sam/drivers/xdmac/xdmac.h **** {
 470:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 471:../asf/sam/drivers/xdmac/xdmac.h **** 	return xdmac->XDMAC_GSWS;
 472:../asf/sam/drivers/xdmac/xdmac.h **** }
 473:../asf/sam/drivers/xdmac/xdmac.h **** 
 474:../asf/sam/drivers/xdmac/xdmac.h **** /**
 475:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Enable interrupt with mask on the relevant channel of given XDMA.
 476:../asf/sam/drivers/xdmac/xdmac.h ****  *
 477:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
ARM GAS  /tmp/cc6b4z2x.s 			page 11


 478:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] channel_num  XDMA Channel number (range 0 to 23).
 479:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] mask Interrupt mask.
 480:../asf/sam/drivers/xdmac/xdmac.h ****  */
 481:../asf/sam/drivers/xdmac/xdmac.h **** static inline void xdmac_channel_enable_interrupt(Xdmac *xdmac, uint32_t channel_num, uint32_t mask
 482:../asf/sam/drivers/xdmac/xdmac.h **** {
 483:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 484:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(channel_num < XDMACCHID_NUMBER);
 485:../asf/sam/drivers/xdmac/xdmac.h **** 	xdmac->XDMAC_CHID[channel_num].XDMAC_CIE = mask;
 486:../asf/sam/drivers/xdmac/xdmac.h **** }
 487:../asf/sam/drivers/xdmac/xdmac.h **** 
 488:../asf/sam/drivers/xdmac/xdmac.h **** /**
 489:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Disable interrupt with mask on the relevant channel of given XDMA.
 490:../asf/sam/drivers/xdmac/xdmac.h ****  *
 491:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 492:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] channel_num  XDMA Channel number (range 0 to 23).
 493:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] mask Interrupt mask.
 494:../asf/sam/drivers/xdmac/xdmac.h ****  */
 495:../asf/sam/drivers/xdmac/xdmac.h **** static inline void xdmac_channel_disable_interrupt(Xdmac *xdmac, uint32_t channel_num, uint32_t mas
 496:../asf/sam/drivers/xdmac/xdmac.h **** {
 497:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 498:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(channel_num < XDMACCHID_NUMBER);
 499:../asf/sam/drivers/xdmac/xdmac.h **** 	xdmac->XDMAC_CHID[channel_num].XDMAC_CID = mask;
 500:../asf/sam/drivers/xdmac/xdmac.h **** }
 501:../asf/sam/drivers/xdmac/xdmac.h **** 
 502:../asf/sam/drivers/xdmac/xdmac.h **** /**
 503:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Get interrupt mask for the relevant channel of given XDMA.
 504:../asf/sam/drivers/xdmac/xdmac.h ****  *
 505:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 506:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] channel_num  XDMA Channel number (range 0 to 23).
 507:../asf/sam/drivers/xdmac/xdmac.h ****  */
 508:../asf/sam/drivers/xdmac/xdmac.h **** static inline uint32_t xdmac_channel_get_interrupt_mask(Xdmac *xdmac, uint32_t channel_num)
 509:../asf/sam/drivers/xdmac/xdmac.h **** {
 510:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 511:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(channel_num < XDMACCHID_NUMBER);
 512:../asf/sam/drivers/xdmac/xdmac.h **** 	return xdmac->XDMAC_CHID[channel_num].XDMAC_CIM;
 513:../asf/sam/drivers/xdmac/xdmac.h **** }
 514:../asf/sam/drivers/xdmac/xdmac.h **** 
 515:../asf/sam/drivers/xdmac/xdmac.h **** /**
 516:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Get interrupt status for the relevant channel of given XDMA.
 517:../asf/sam/drivers/xdmac/xdmac.h ****  *
 518:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 519:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] channel_num  XDMA Channel number (range 0 to 23).
 520:../asf/sam/drivers/xdmac/xdmac.h ****  */
 521:../asf/sam/drivers/xdmac/xdmac.h **** static inline uint32_t xdmac_channel_get_interrupt_status(Xdmac *xdmac, uint32_t channel_num)
 522:../asf/sam/drivers/xdmac/xdmac.h **** {
 523:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 524:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(channel_num < XDMACCHID_NUMBER);
 525:../asf/sam/drivers/xdmac/xdmac.h **** 	return xdmac->XDMAC_CHID[channel_num].XDMAC_CIS;
 526:../asf/sam/drivers/xdmac/xdmac.h **** }
 527:../asf/sam/drivers/xdmac/xdmac.h **** 
 528:../asf/sam/drivers/xdmac/xdmac.h **** /**
 529:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Set software flush request on the relevant channel.
 530:../asf/sam/drivers/xdmac/xdmac.h ****  *
 531:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer.
 532:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] channel_num  XDMA Channel number (range 0 to 23).
 533:../asf/sam/drivers/xdmac/xdmac.h ****  */
 534:../asf/sam/drivers/xdmac/xdmac.h **** static inline void xdmac_channel_software_flush_request(Xdmac *xdmac, uint32_t channel_num)
ARM GAS  /tmp/cc6b4z2x.s 			page 12


 535:../asf/sam/drivers/xdmac/xdmac.h **** {
 536:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 537:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(channel_num < XDMACCHID_NUMBER);
 538:../asf/sam/drivers/xdmac/xdmac.h **** 	xdmac->XDMAC_GSWF = (XDMAC_GSWF_SWF0 << channel_num);
 539:../asf/sam/drivers/xdmac/xdmac.h **** 	while( !(xdmac_channel_get_interrupt_status(xdmac, channel_num) & XDMAC_CIS_FIS) );
 540:../asf/sam/drivers/xdmac/xdmac.h **** }
 541:../asf/sam/drivers/xdmac/xdmac.h **** 
 542:../asf/sam/drivers/xdmac/xdmac.h **** /**
 543:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Set source address for the relevant channel of given XDMA.
 544:../asf/sam/drivers/xdmac/xdmac.h ****  *
 545:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer
 546:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] channel_num  DMA Channel number (range 0 to 23)
 547:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] src_addr Source address
 548:../asf/sam/drivers/xdmac/xdmac.h ****  */
 549:../asf/sam/drivers/xdmac/xdmac.h **** static inline void xdmac_channel_set_source_addr(Xdmac *xdmac, uint32_t channel_num, uint32_t src_a
 550:../asf/sam/drivers/xdmac/xdmac.h **** {
 551:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 552:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(channel_num < XDMACCHID_NUMBER);
 553:../asf/sam/drivers/xdmac/xdmac.h **** 	xdmac->XDMAC_CHID[channel_num].XDMAC_CSA = src_addr;
 554:../asf/sam/drivers/xdmac/xdmac.h **** }
 555:../asf/sam/drivers/xdmac/xdmac.h **** 
 556:../asf/sam/drivers/xdmac/xdmac.h **** /**
 557:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Set destination address for the relevant channel of given XDMA.
 558:../asf/sam/drivers/xdmac/xdmac.h ****  *
 559:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer
 560:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] channel_num  DMA Channel number (range 0 to 23)
 561:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] dst_addr Destination address
 562:../asf/sam/drivers/xdmac/xdmac.h ****  */
 563:../asf/sam/drivers/xdmac/xdmac.h **** static inline void xdmac_channel_set_destination_addr(Xdmac *xdmac, uint32_t channel_num, uint32_t 
 564:../asf/sam/drivers/xdmac/xdmac.h **** {
 565:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 566:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(channel_num < XDMACCHID_NUMBER);
 567:../asf/sam/drivers/xdmac/xdmac.h **** 	xdmac->XDMAC_CHID[channel_num].XDMAC_CDA = dst_addr;
 568:../asf/sam/drivers/xdmac/xdmac.h **** }
 569:../asf/sam/drivers/xdmac/xdmac.h **** 
 570:../asf/sam/drivers/xdmac/xdmac.h **** /**
 571:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Set next descriptor's address & interface for the relevant channel of given XDMA.
 572:../asf/sam/drivers/xdmac/xdmac.h ****  *
 573:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer
 574:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] channel_num  DMA Channel number (range 0 to 23)
 575:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] desc_addr Address of next descriptor.
 576:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] ndaif Interface of next descriptor.
 577:../asf/sam/drivers/xdmac/xdmac.h ****  */
 578:../asf/sam/drivers/xdmac/xdmac.h **** static inline void xdmac_channel_set_descriptor_addr(Xdmac *xdmac, uint32_t channel_num,
 579:../asf/sam/drivers/xdmac/xdmac.h **** 		uint32_t desc_addr, uint8_t ndaif)
 580:../asf/sam/drivers/xdmac/xdmac.h **** {
 581:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 582:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(channel_num < XDMACCHID_NUMBER);
 583:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(ndaif<2);
 584:../asf/sam/drivers/xdmac/xdmac.h **** 	xdmac->XDMAC_CHID[channel_num].XDMAC_CNDA = (desc_addr & 0xFFFFFFFC) | ndaif;
 585:../asf/sam/drivers/xdmac/xdmac.h **** }
 586:../asf/sam/drivers/xdmac/xdmac.h **** 
 587:../asf/sam/drivers/xdmac/xdmac.h **** /**
 588:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Set next descriptor's configuration for the relevant channel of given XDMA.
 589:../asf/sam/drivers/xdmac/xdmac.h ****  *
 590:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer
 591:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] channel_num  DMA Channel number (range 0 to 23)
ARM GAS  /tmp/cc6b4z2x.s 			page 13


 592:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] config Configuration of next descriptor.
 593:../asf/sam/drivers/xdmac/xdmac.h ****  */
 594:../asf/sam/drivers/xdmac/xdmac.h **** static inline void xdmac_channel_set_descriptor_control(Xdmac *xdmac, uint32_t channel_num, uint32_
 595:../asf/sam/drivers/xdmac/xdmac.h **** {
 596:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 597:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(channel_num < XDMACCHID_NUMBER);
 598:../asf/sam/drivers/xdmac/xdmac.h **** 	xdmac->XDMAC_CHID[channel_num].XDMAC_CNDC = config;
 599:../asf/sam/drivers/xdmac/xdmac.h **** }
 600:../asf/sam/drivers/xdmac/xdmac.h **** 
 601:../asf/sam/drivers/xdmac/xdmac.h **** /**
 602:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Set microblock length for the relevant channel of given XDMA.
 603:../asf/sam/drivers/xdmac/xdmac.h ****  *
 604:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer
 605:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] channel_num  DMA Channel number (range 0 to 23)
 606:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] ublen Microblock length.
 607:../asf/sam/drivers/xdmac/xdmac.h ****  */
 608:../asf/sam/drivers/xdmac/xdmac.h **** static inline void xdmac_channel_set_microblock_control(Xdmac *xdmac, uint32_t channel_num, uint32_
 609:../asf/sam/drivers/xdmac/xdmac.h **** {
 610:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 611:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(channel_num < XDMACCHID_NUMBER);
 612:../asf/sam/drivers/xdmac/xdmac.h **** 	xdmac->XDMAC_CHID[channel_num].XDMAC_CUBC = XDMAC_CUBC_UBLEN(ublen);
  36              		.loc 2 612 0
  37 0000 1368     		ldr	r3, [r2]
  38              	.LBE21:
  39              	.LBE20:
  40              	.LBB24:
  41              	.LBB25:
 525:../asf/sam/drivers/xdmac/xdmac.h **** }
  42              		.loc 2 525 0
  43 0002 00EB8111 		add	r1, r0, r1, lsl #6
  44              	.LVL1:
  45              	.LBE25:
  46              	.LBE24:
  47              	.LBB27:
  48              	.LBB28:
 613:../asf/sam/drivers/xdmac/xdmac.h **** }
 614:../asf/sam/drivers/xdmac/xdmac.h **** 
 615:../asf/sam/drivers/xdmac/xdmac.h **** /**
 616:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Set block length for the relevant channel of given XDMA.
 617:../asf/sam/drivers/xdmac/xdmac.h ****  *
 618:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer
 619:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] channel_num  XDMA Channel number (range 0 to 23)
 620:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] blen Block length.
 621:../asf/sam/drivers/xdmac/xdmac.h ****  */
 622:../asf/sam/drivers/xdmac/xdmac.h **** static inline void xdmac_channel_set_block_control(Xdmac *xdmac, uint32_t channel_num, uint32_t ble
 623:../asf/sam/drivers/xdmac/xdmac.h **** {
 624:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 625:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(channel_num < XDMACCHID_NUMBER);
 626:../asf/sam/drivers/xdmac/xdmac.h **** 	xdmac->XDMAC_CHID[channel_num].XDMAC_CBC = XDMAC_CBC_BLEN(blen);
 627:../asf/sam/drivers/xdmac/xdmac.h **** }
 628:../asf/sam/drivers/xdmac/xdmac.h **** 
 629:../asf/sam/drivers/xdmac/xdmac.h **** /**
 630:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Set configuration for the relevant channel of given XDMA.
 631:../asf/sam/drivers/xdmac/xdmac.h ****  *
 632:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer
 633:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] channel_num  XDMA Channel number (range 0 to 23)
 634:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] config Channel configuration.
ARM GAS  /tmp/cc6b4z2x.s 			page 14


 635:../asf/sam/drivers/xdmac/xdmac.h ****  */
 636:../asf/sam/drivers/xdmac/xdmac.h **** static inline void xdmac_channel_set_config(Xdmac *xdmac, uint32_t channel_num, uint32_t config)
 637:../asf/sam/drivers/xdmac/xdmac.h **** {
 638:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 639:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(channel_num < XDMACCHID_NUMBER);
 640:../asf/sam/drivers/xdmac/xdmac.h **** 	xdmac->XDMAC_CHID[channel_num].XDMAC_CC = config;
 641:../asf/sam/drivers/xdmac/xdmac.h **** }
 642:../asf/sam/drivers/xdmac/xdmac.h **** 
 643:../asf/sam/drivers/xdmac/xdmac.h **** /**
 644:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Set the relevant channel's data stride memory pattern of given XDMA.
 645:../asf/sam/drivers/xdmac/xdmac.h ****  *
 646:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer
 647:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] channel_num  XDMA Channel number (range 0 to 23)
 648:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] dds_msp Data stride memory pattern.
 649:../asf/sam/drivers/xdmac/xdmac.h ****  */
 650:../asf/sam/drivers/xdmac/xdmac.h **** static inline void xdmac_channel_set_datastride_mempattern(Xdmac *xdmac, uint32_t channel_num, uint
 651:../asf/sam/drivers/xdmac/xdmac.h **** {
 652:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 653:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(channel_num < XDMACCHID_NUMBER);
 654:../asf/sam/drivers/xdmac/xdmac.h **** 	xdmac->XDMAC_CHID[channel_num].XDMAC_CDS_MSP = dds_msp;
 655:../asf/sam/drivers/xdmac/xdmac.h **** }
 656:../asf/sam/drivers/xdmac/xdmac.h **** 
 657:../asf/sam/drivers/xdmac/xdmac.h **** /**
 658:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Set the relevant channel's source microblock stride of given XDMA.
 659:../asf/sam/drivers/xdmac/xdmac.h ****  *
 660:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer
 661:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] channel_num  XDMA Channel number (range 0 to 23)
 662:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] subs Source microblock stride.
 663:../asf/sam/drivers/xdmac/xdmac.h ****  */
 664:../asf/sam/drivers/xdmac/xdmac.h **** static inline void xdmac_channel_set_source_microblock_stride(Xdmac *xdmac,
 665:../asf/sam/drivers/xdmac/xdmac.h **** 		uint32_t channel_num, uint32_t subs)
 666:../asf/sam/drivers/xdmac/xdmac.h **** {
 667:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 668:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(channel_num < XDMACCHID_NUMBER);
 669:../asf/sam/drivers/xdmac/xdmac.h **** 	xdmac->XDMAC_CHID[channel_num].XDMAC_CSUS = XDMAC_CSUS_SUBS(subs);
  49              		.loc 2 669 0
  50 0006 9069     		ldr	r0, [r2, #24]
  51              	.LVL2:
  52              	.LBE28:
  53              	.LBE27:
  54              	.LBB31:
  55              	.LBB26:
 525:../asf/sam/drivers/xdmac/xdmac.h **** }
  56              		.loc 2 525 0
  57 0008 D1F85CC0 		ldr	ip, [r1, #92]
  58              	.LBE26:
  59              	.LBE31:
  60              	.LBB32:
  61              	.LBB29:
  62              		.loc 2 669 0
  63 000c 20F07F40 		bic	r0, r0, #-16777216
  64              	.LBE29:
  65              	.LBE32:
  66              		.loc 1 58 0
  67 0010 F0B5     		push	{r4, r5, r6, r7, lr}
  68              		.cfi_def_cfa_offset 20
  69              		.cfi_offset 4, -20
ARM GAS  /tmp/cc6b4z2x.s 			page 15


  70              		.cfi_offset 5, -16
  71              		.cfi_offset 6, -12
  72              		.cfi_offset 7, -8
  73              		.cfi_offset 14, -4
  74              	.LBB33:
  75              	.LBB34:
 626:../asf/sam/drivers/xdmac/xdmac.h **** }
  76              		.loc 2 626 0
  77 0012 1469     		ldr	r4, [r2, #16]
  78              	.LBE34:
  79              	.LBE33:
  80              	.LBB37:
  81              	.LBB22:
 612:../asf/sam/drivers/xdmac/xdmac.h **** }
  82              		.loc 2 612 0
  83 0014 23F07F45 		bic	r5, r3, #-16777216
  84              	.LBE22:
  85              	.LBE37:
  86              	.LBB38:
  87              	.LBB39:
 670:../asf/sam/drivers/xdmac/xdmac.h **** }
 671:../asf/sam/drivers/xdmac/xdmac.h **** 
 672:../asf/sam/drivers/xdmac/xdmac.h **** /**
 673:../asf/sam/drivers/xdmac/xdmac.h ****  * \brief Set the relevant channel's destination microblock stride of given XDMA.
 674:../asf/sam/drivers/xdmac/xdmac.h ****  *
 675:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[out] xdmac Module hardware register base address pointer
 676:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] channel_num  XDMA Channel number (range 0 to 23)
 677:../asf/sam/drivers/xdmac/xdmac.h ****  * \param[in] dubs Destination microblock stride.
 678:../asf/sam/drivers/xdmac/xdmac.h ****  */
 679:../asf/sam/drivers/xdmac/xdmac.h **** static inline void xdmac_channel_set_destination_microblock_stride(Xdmac *xdmac,
 680:../asf/sam/drivers/xdmac/xdmac.h **** 		uint32_t channel_num, uint32_t dubs)
 681:../asf/sam/drivers/xdmac/xdmac.h **** {
 682:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(xdmac);
 683:../asf/sam/drivers/xdmac/xdmac.h **** 	Assert(channel_num < XDMACCHID_NUMBER);
 684:../asf/sam/drivers/xdmac/xdmac.h **** 	xdmac->XDMAC_CHID[channel_num].XDMAC_CDUS = XDMAC_CDUS_DUBS(dubs);
  88              		.loc 2 684 0
  89 0018 D369     		ldr	r3, [r2, #28]
  90              	.LBE39:
  91              	.LBE38:
  59:../asf/sam/drivers/xdmac/xdmac.c **** 	Assert(xdmac);
  60:../asf/sam/drivers/xdmac/xdmac.c **** 	Assert(channel_num < XDMACCHID_NUMBER);
  61:../asf/sam/drivers/xdmac/xdmac.c **** 	Assert(cfg);
  62:../asf/sam/drivers/xdmac/xdmac.c **** 	
  63:../asf/sam/drivers/xdmac/xdmac.c **** 	xdmac_channel_get_interrupt_status( xdmac, channel_num);
  64:../asf/sam/drivers/xdmac/xdmac.c **** 	xdmac_channel_set_source_addr(xdmac, channel_num, cfg->mbr_sa);
  92              		.loc 1 64 0
  93 001a D2F804E0 		ldr	lr, [r2, #4]
  94              	.LBB42:
  95              	.LBB35:
 626:../asf/sam/drivers/xdmac/xdmac.h **** }
  96              		.loc 2 626 0
  97 001e C4F30B04 		ubfx	r4, r4, #0, #12
  98              	.LBE35:
  99              	.LBE42:
  65:../asf/sam/drivers/xdmac/xdmac.c **** 	xdmac_channel_set_destination_addr(xdmac, channel_num, cfg->mbr_da);
 100              		.loc 1 65 0
 101 0022 9768     		ldr	r7, [r2, #8]
ARM GAS  /tmp/cc6b4z2x.s 			page 16


 102              	.LBB43:
 103              	.LBB40:
 104              		.loc 2 684 0
 105 0024 23F07F43 		bic	r3, r3, #-16777216
 106              	.LBE40:
 107              	.LBE43:
  66:../asf/sam/drivers/xdmac/xdmac.c **** 	xdmac_channel_set_microblock_control(xdmac, channel_num, cfg->mbr_ubc);
  67:../asf/sam/drivers/xdmac/xdmac.c **** 	xdmac_channel_set_block_control(xdmac, channel_num, cfg->mbr_bc);
  68:../asf/sam/drivers/xdmac/xdmac.c **** 	xdmac_channel_set_datastride_mempattern(xdmac, channel_num, cfg->mbr_ds);
 108              		.loc 1 68 0
 109 0028 5669     		ldr	r6, [r2, #20]
 110              	.LVL3:
  69:../asf/sam/drivers/xdmac/xdmac.c **** 	xdmac_channel_set_source_microblock_stride(xdmac, channel_num, cfg->mbr_sus);
  70:../asf/sam/drivers/xdmac/xdmac.c **** 	xdmac_channel_set_destination_microblock_stride(xdmac, channel_num, cfg->mbr_dus);
  71:../asf/sam/drivers/xdmac/xdmac.c **** 	xdmac_channel_set_config(xdmac, channel_num, cfg->mbr_cfg );
 111              		.loc 1 71 0
 112 002a D268     		ldr	r2, [r2, #12]
 113              	.LVL4:
 114              	.LBB44:
 115              	.LBB45:
 553:../asf/sam/drivers/xdmac/xdmac.h **** }
 116              		.loc 2 553 0
 117 002c C1F860E0 		str	lr, [r1, #96]
 118              	.LVL5:
 119              	.LBE45:
 120              	.LBE44:
 121              	.LBB46:
 122              	.LBB47:
 567:../asf/sam/drivers/xdmac/xdmac.h **** }
 123              		.loc 2 567 0
 124 0030 4F66     		str	r7, [r1, #100]
 125              	.LVL6:
 126              	.LBE47:
 127              	.LBE46:
 128              	.LBB48:
 129              	.LBB23:
 612:../asf/sam/drivers/xdmac/xdmac.h **** }
 130              		.loc 2 612 0
 131 0032 0D67     		str	r5, [r1, #112]
 132              	.LVL7:
 133              	.LBE23:
 134              	.LBE48:
 135              	.LBB49:
 136              	.LBB36:
 626:../asf/sam/drivers/xdmac/xdmac.h **** }
 137              		.loc 2 626 0
 138 0034 4C67     		str	r4, [r1, #116]
 139              	.LVL8:
 140              	.LBE36:
 141              	.LBE49:
 142              	.LBB50:
 143              	.LBB51:
 654:../asf/sam/drivers/xdmac/xdmac.h **** }
 144              		.loc 2 654 0
 145 0036 CE67     		str	r6, [r1, #124]
 146              	.LVL9:
 147              	.LBE51:
ARM GAS  /tmp/cc6b4z2x.s 			page 17


 148              	.LBE50:
 149              	.LBB52:
 150              	.LBB30:
 669:../asf/sam/drivers/xdmac/xdmac.h **** }
 151              		.loc 2 669 0
 152 0038 C1F88000 		str	r0, [r1, #128]
 153              	.LVL10:
 154              	.LBE30:
 155              	.LBE52:
 156              	.LBB53:
 157              	.LBB41:
 158              		.loc 2 684 0
 159 003c C1F88430 		str	r3, [r1, #132]
 160              	.LVL11:
 161              	.LBE41:
 162              	.LBE53:
 163              	.LBB54:
 164              	.LBB55:
 640:../asf/sam/drivers/xdmac/xdmac.h **** }
 165              		.loc 2 640 0
 166 0040 8A67     		str	r2, [r1, #120]
 167              	.LVL12:
 168 0042 F0BD     		pop	{r4, r5, r6, r7, pc}
 169              	.LBE55:
 170              	.LBE54:
 171              		.cfi_endproc
 172              	.LFE173:
 173              		.size	xdmac_configure_transfer, .-xdmac_configure_transfer
 174              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 175              		.align	2
 176              		.type	cpu_irq_critical_section_counter, %object
 177              		.size	cpu_irq_critical_section_counter, 4
 178              	cpu_irq_critical_section_counter:
 179 0000 00000000 		.space	4
 180              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 181              		.type	cpu_irq_prev_interrupt_state, %object
 182              		.size	cpu_irq_prev_interrupt_state, 1
 183              	cpu_irq_prev_interrupt_state:
 184 0000 00       		.space	1
 185              		.text
 186              	.Letext0:
 187              		.file 3 "/usr/include/newlib/machine/_default_types.h"
 188              		.file 4 "/usr/include/newlib/sys/_stdint.h"
 189              		.file 5 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 190              		.file 6 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 191              		.file 7 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/xdma
 192              		.file 8 "/usr/include/newlib/sys/lock.h"
 193              		.file 9 "/usr/include/newlib/sys/_types.h"
 194              		.file 10 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 195              		.file 11 "/usr/include/newlib/sys/reent.h"
 196              		.file 12 "/usr/include/newlib/stdlib.h"
 197              		.file 13 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 198              		.section	.debug_info,"",%progbits
 199              	.Ldebug_info0:
 200 0000 370F0000 		.4byte	0xf37
 201 0004 0400     		.2byte	0x4
 202 0006 00000000 		.4byte	.Ldebug_abbrev0
ARM GAS  /tmp/cc6b4z2x.s 			page 18


 203 000a 04       		.byte	0x4
 204 000b 01       		.uleb128 0x1
 205 000c 2B040000 		.4byte	.LASF195
 206 0010 0C       		.byte	0xc
 207 0011 50030000 		.4byte	.LASF196
 208 0015 90080000 		.4byte	.LASF197
 209 0019 98000000 		.4byte	.Ldebug_ranges0+0x98
 210 001d 00000000 		.4byte	0
 211 0021 00000000 		.4byte	.Ldebug_line0
 212 0025 02       		.uleb128 0x2
 213 0026 04       		.byte	0x4
 214 0027 05       		.byte	0x5
 215 0028 696E7400 		.ascii	"int\000"
 216 002c 03       		.uleb128 0x3
 217 002d 04       		.byte	0x4
 218 002e 07       		.byte	0x7
 219 002f 7F010000 		.4byte	.LASF0
 220 0033 03       		.uleb128 0x3
 221 0034 01       		.byte	0x1
 222 0035 06       		.byte	0x6
 223 0036 13010000 		.4byte	.LASF1
 224 003a 03       		.uleb128 0x3
 225 003b 01       		.byte	0x1
 226 003c 08       		.byte	0x8
 227 003d 5F070000 		.4byte	.LASF2
 228 0041 03       		.uleb128 0x3
 229 0042 02       		.byte	0x2
 230 0043 05       		.byte	0x5
 231 0044 06000000 		.4byte	.LASF3
 232 0048 03       		.uleb128 0x3
 233 0049 02       		.byte	0x2
 234 004a 07       		.byte	0x7
 235 004b 1B030000 		.4byte	.LASF4
 236 004f 04       		.uleb128 0x4
 237 0050 31070000 		.4byte	.LASF6
 238 0054 03       		.byte	0x3
 239 0055 3F       		.byte	0x3f
 240 0056 5A000000 		.4byte	0x5a
 241 005a 03       		.uleb128 0x3
 242 005b 04       		.byte	0x4
 243 005c 05       		.byte	0x5
 244 005d 62010000 		.4byte	.LASF5
 245 0061 04       		.uleb128 0x4
 246 0062 28020000 		.4byte	.LASF7
 247 0066 03       		.byte	0x3
 248 0067 41       		.byte	0x41
 249 0068 6C000000 		.4byte	0x6c
 250 006c 03       		.uleb128 0x3
 251 006d 04       		.byte	0x4
 252 006e 07       		.byte	0x7
 253 006f D2020000 		.4byte	.LASF8
 254 0073 03       		.uleb128 0x3
 255 0074 08       		.byte	0x8
 256 0075 05       		.byte	0x5
 257 0076 96010000 		.4byte	.LASF9
 258 007a 03       		.uleb128 0x3
 259 007b 08       		.byte	0x8
ARM GAS  /tmp/cc6b4z2x.s 			page 19


 260 007c 07       		.byte	0x7
 261 007d 04030000 		.4byte	.LASF10
 262 0081 04       		.uleb128 0x4
 263 0082 D3050000 		.4byte	.LASF11
 264 0086 04       		.byte	0x4
 265 0087 2C       		.byte	0x2c
 266 0088 4F000000 		.4byte	0x4f
 267 008c 05       		.uleb128 0x5
 268 008d 81000000 		.4byte	0x81
 269 0091 04       		.uleb128 0x4
 270 0092 9F060000 		.4byte	.LASF12
 271 0096 04       		.byte	0x4
 272 0097 30       		.byte	0x30
 273 0098 61000000 		.4byte	0x61
 274 009c 05       		.uleb128 0x5
 275 009d 91000000 		.4byte	0x91
 276 00a1 06       		.uleb128 0x6
 277 00a2 9C000000 		.4byte	0x9c
 278 00a6 07       		.uleb128 0x7
 279 00a7 04       		.byte	0x4
 280 00a8 03       		.uleb128 0x3
 281 00a9 04       		.byte	0x4
 282 00aa 07       		.byte	0x7
 283 00ab 0F040000 		.4byte	.LASF13
 284 00af 08       		.uleb128 0x8
 285 00b0 A1000000 		.4byte	0xa1
 286 00b4 BF000000 		.4byte	0xbf
 287 00b8 09       		.uleb128 0x9
 288 00b9 A8000000 		.4byte	0xa8
 289 00bd 01       		.byte	0x1
 290 00be 00       		.byte	0
 291 00bf 06       		.uleb128 0x6
 292 00c0 AF000000 		.4byte	0xaf
 293 00c4 05       		.uleb128 0x5
 294 00c5 BF000000 		.4byte	0xbf
 295 00c9 0A       		.uleb128 0xa
 296 00ca B0000000 		.4byte	.LASF14
 297 00ce 05       		.byte	0x5
 298 00cf 6508     		.2byte	0x865
 299 00d1 8C000000 		.4byte	0x8c
 300 00d5 0B       		.uleb128 0xb
 301 00d6 BA020000 		.4byte	.LASF15
 302 00da 06       		.byte	0x6
 303 00db 3A       		.byte	0x3a
 304 00dc 91000000 		.4byte	0x91
 305 00e0 08       		.uleb128 0x8
 306 00e1 A1000000 		.4byte	0xa1
 307 00e5 F0000000 		.4byte	0xf0
 308 00e9 09       		.uleb128 0x9
 309 00ea A8000000 		.4byte	0xa8
 310 00ee 02       		.byte	0x2
 311 00ef 00       		.byte	0
 312 00f0 06       		.uleb128 0x6
 313 00f1 E0000000 		.4byte	0xe0
 314 00f5 05       		.uleb128 0x5
 315 00f6 F0000000 		.4byte	0xf0
 316 00fa 0C       		.uleb128 0xc
ARM GAS  /tmp/cc6b4z2x.s 			page 20


 317 00fb 40       		.byte	0x40
 318 00fc 07       		.byte	0x7
 319 00fd 38       		.byte	0x38
 320 00fe B7010000 		.4byte	0x1b7
 321 0102 0D       		.uleb128 0xd
 322 0103 5D090000 		.4byte	.LASF16
 323 0107 07       		.byte	0x7
 324 0108 39       		.byte	0x39
 325 0109 9C000000 		.4byte	0x9c
 326 010d 00       		.byte	0
 327 010e 0D       		.uleb128 0xd
 328 010f 1D050000 		.4byte	.LASF17
 329 0113 07       		.byte	0x7
 330 0114 3A       		.byte	0x3a
 331 0115 9C000000 		.4byte	0x9c
 332 0119 04       		.byte	0x4
 333 011a 0D       		.uleb128 0xd
 334 011b 68050000 		.4byte	.LASF18
 335 011f 07       		.byte	0x7
 336 0120 3B       		.byte	0x3b
 337 0121 9C000000 		.4byte	0x9c
 338 0125 08       		.byte	0x8
 339 0126 0D       		.uleb128 0xd
 340 0127 83050000 		.4byte	.LASF19
 341 012b 07       		.byte	0x7
 342 012c 3C       		.byte	0x3c
 343 012d A1000000 		.4byte	0xa1
 344 0131 0C       		.byte	0xc
 345 0132 0D       		.uleb128 0xd
 346 0133 2A090000 		.4byte	.LASF20
 347 0137 07       		.byte	0x7
 348 0138 3D       		.byte	0x3d
 349 0139 9C000000 		.4byte	0x9c
 350 013d 10       		.byte	0x10
 351 013e 0D       		.uleb128 0xd
 352 013f 23080000 		.4byte	.LASF21
 353 0143 07       		.byte	0x7
 354 0144 3E       		.byte	0x3e
 355 0145 9C000000 		.4byte	0x9c
 356 0149 14       		.byte	0x14
 357 014a 0D       		.uleb128 0xd
 358 014b D3060000 		.4byte	.LASF22
 359 014f 07       		.byte	0x7
 360 0150 3F       		.byte	0x3f
 361 0151 9C000000 		.4byte	0x9c
 362 0155 18       		.byte	0x18
 363 0156 0D       		.uleb128 0xd
 364 0157 E4060000 		.4byte	.LASF23
 365 015b 07       		.byte	0x7
 366 015c 40       		.byte	0x40
 367 015d 9C000000 		.4byte	0x9c
 368 0161 1C       		.byte	0x1c
 369 0162 0D       		.uleb128 0xd
 370 0163 E1010000 		.4byte	.LASF24
 371 0167 07       		.byte	0x7
 372 0168 41       		.byte	0x41
 373 0169 9C000000 		.4byte	0x9c
ARM GAS  /tmp/cc6b4z2x.s 			page 21


 374 016d 20       		.byte	0x20
 375 016e 0D       		.uleb128 0xd
 376 016f 6D080000 		.4byte	.LASF25
 377 0173 07       		.byte	0x7
 378 0174 42       		.byte	0x42
 379 0175 9C000000 		.4byte	0x9c
 380 0179 24       		.byte	0x24
 381 017a 0D       		.uleb128 0xd
 382 017b C4070000 		.4byte	.LASF26
 383 017f 07       		.byte	0x7
 384 0180 43       		.byte	0x43
 385 0181 9C000000 		.4byte	0x9c
 386 0185 28       		.byte	0x28
 387 0186 0D       		.uleb128 0xd
 388 0187 3E080000 		.4byte	.LASF27
 389 018b 07       		.byte	0x7
 390 018c 44       		.byte	0x44
 391 018d 9C000000 		.4byte	0x9c
 392 0191 2C       		.byte	0x2c
 393 0192 0D       		.uleb128 0xd
 394 0193 EB000000 		.4byte	.LASF28
 395 0197 07       		.byte	0x7
 396 0198 45       		.byte	0x45
 397 0199 9C000000 		.4byte	0x9c
 398 019d 30       		.byte	0x30
 399 019e 0D       		.uleb128 0xd
 400 019f EA020000 		.4byte	.LASF29
 401 01a3 07       		.byte	0x7
 402 01a4 46       		.byte	0x46
 403 01a5 9C000000 		.4byte	0x9c
 404 01a9 34       		.byte	0x34
 405 01aa 0D       		.uleb128 0xd
 406 01ab 2B010000 		.4byte	.LASF30
 407 01af 07       		.byte	0x7
 408 01b0 47       		.byte	0x47
 409 01b1 C4000000 		.4byte	0xc4
 410 01b5 38       		.byte	0x38
 411 01b6 00       		.byte	0
 412 01b7 04       		.uleb128 0x4
 413 01b8 DE070000 		.4byte	.LASF31
 414 01bc 07       		.byte	0x7
 415 01bd 48       		.byte	0x48
 416 01be FA000000 		.4byte	0xfa
 417 01c2 0E       		.uleb128 0xe
 418 01c3 5006     		.2byte	0x650
 419 01c5 07       		.byte	0x7
 420 01c6 4B       		.byte	0x4b
 421 01c7 B0020000 		.4byte	0x2b0
 422 01cb 0D       		.uleb128 0xd
 423 01cc 6E020000 		.4byte	.LASF32
 424 01d0 07       		.byte	0x7
 425 01d1 4C       		.byte	0x4c
 426 01d2 9C000000 		.4byte	0x9c
 427 01d6 00       		.byte	0
 428 01d7 0D       		.uleb128 0xd
 429 01d8 72050000 		.4byte	.LASF33
 430 01dc 07       		.byte	0x7
ARM GAS  /tmp/cc6b4z2x.s 			page 22


 431 01dd 4D       		.byte	0x4d
 432 01de A1000000 		.4byte	0xa1
 433 01e2 04       		.byte	0x4
 434 01e3 0D       		.uleb128 0xd
 435 01e4 7A020000 		.4byte	.LASF34
 436 01e8 07       		.byte	0x7
 437 01e9 4E       		.byte	0x4e
 438 01ea 9C000000 		.4byte	0x9c
 439 01ee 08       		.byte	0x8
 440 01ef 0D       		.uleb128 0xd
 441 01f0 84070000 		.4byte	.LASF35
 442 01f4 07       		.byte	0x7
 443 01f5 4F       		.byte	0x4f
 444 01f6 9C000000 		.4byte	0x9c
 445 01fa 0C       		.byte	0xc
 446 01fb 0D       		.uleb128 0xd
 447 01fc 7A070000 		.4byte	.LASF36
 448 0200 07       		.byte	0x7
 449 0201 50       		.byte	0x50
 450 0202 9C000000 		.4byte	0x9c
 451 0206 10       		.byte	0x10
 452 0207 0D       		.uleb128 0xd
 453 0208 BA070000 		.4byte	.LASF37
 454 020c 07       		.byte	0x7
 455 020d 51       		.byte	0x51
 456 020e A1000000 		.4byte	0xa1
 457 0212 14       		.byte	0x14
 458 0213 0D       		.uleb128 0xd
 459 0214 CD070000 		.4byte	.LASF38
 460 0218 07       		.byte	0x7
 461 0219 52       		.byte	0x52
 462 021a A1000000 		.4byte	0xa1
 463 021e 18       		.byte	0x18
 464 021f 0D       		.uleb128 0xd
 465 0220 95000000 		.4byte	.LASF39
 466 0224 07       		.byte	0x7
 467 0225 53       		.byte	0x53
 468 0226 9C000000 		.4byte	0x9c
 469 022a 1C       		.byte	0x1c
 470 022b 0D       		.uleb128 0xd
 471 022c EF060000 		.4byte	.LASF40
 472 0230 07       		.byte	0x7
 473 0231 54       		.byte	0x54
 474 0232 9C000000 		.4byte	0x9c
 475 0236 20       		.byte	0x20
 476 0237 0D       		.uleb128 0xd
 477 0238 BD000000 		.4byte	.LASF41
 478 023c 07       		.byte	0x7
 479 023d 55       		.byte	0x55
 480 023e A1000000 		.4byte	0xa1
 481 0242 24       		.byte	0x24
 482 0243 0D       		.uleb128 0xd
 483 0244 32000000 		.4byte	.LASF42
 484 0248 07       		.byte	0x7
 485 0249 56       		.byte	0x56
 486 024a 9C000000 		.4byte	0x9c
 487 024e 28       		.byte	0x28
ARM GAS  /tmp/cc6b4z2x.s 			page 23


 488 024f 0D       		.uleb128 0xd
 489 0250 78060000 		.4byte	.LASF43
 490 0254 07       		.byte	0x7
 491 0255 57       		.byte	0x57
 492 0256 9C000000 		.4byte	0x9c
 493 025a 2C       		.byte	0x2c
 494 025b 0D       		.uleb128 0xd
 495 025c 01010000 		.4byte	.LASF44
 496 0260 07       		.byte	0x7
 497 0261 58       		.byte	0x58
 498 0262 9C000000 		.4byte	0x9c
 499 0266 30       		.byte	0x30
 500 0267 0D       		.uleb128 0xd
 501 0268 F6000000 		.4byte	.LASF45
 502 026c 07       		.byte	0x7
 503 026d 59       		.byte	0x59
 504 026e 9C000000 		.4byte	0x9c
 505 0272 34       		.byte	0x34
 506 0273 0D       		.uleb128 0xd
 507 0274 34090000 		.4byte	.LASF46
 508 0278 07       		.byte	0x7
 509 0279 5A       		.byte	0x5a
 510 027a 9C000000 		.4byte	0x9c
 511 027e 38       		.byte	0x38
 512 027f 0D       		.uleb128 0xd
 513 0280 3F090000 		.4byte	.LASF47
 514 0284 07       		.byte	0x7
 515 0285 5B       		.byte	0x5b
 516 0286 A1000000 		.4byte	0xa1
 517 028a 3C       		.byte	0x3c
 518 028b 0D       		.uleb128 0xd
 519 028c 85080000 		.4byte	.LASF48
 520 0290 07       		.byte	0x7
 521 0291 5C       		.byte	0x5c
 522 0292 9C000000 		.4byte	0x9c
 523 0296 40       		.byte	0x40
 524 0297 0D       		.uleb128 0xd
 525 0298 2B010000 		.4byte	.LASF30
 526 029c 07       		.byte	0x7
 527 029d 5D       		.byte	0x5d
 528 029e F5000000 		.4byte	0xf5
 529 02a2 44       		.byte	0x44
 530 02a3 0D       		.uleb128 0xd
 531 02a4 20040000 		.4byte	.LASF49
 532 02a8 07       		.byte	0x7
 533 02a9 5E       		.byte	0x5e
 534 02aa B0020000 		.4byte	0x2b0
 535 02ae 50       		.byte	0x50
 536 02af 00       		.byte	0
 537 02b0 08       		.uleb128 0x8
 538 02b1 B7010000 		.4byte	0x1b7
 539 02b5 C0020000 		.4byte	0x2c0
 540 02b9 09       		.uleb128 0x9
 541 02ba A8000000 		.4byte	0xa8
 542 02be 17       		.byte	0x17
 543 02bf 00       		.byte	0
 544 02c0 04       		.uleb128 0x4
ARM GAS  /tmp/cc6b4z2x.s 			page 24


 545 02c1 00000000 		.4byte	.LASF50
 546 02c5 07       		.byte	0x7
 547 02c6 5F       		.byte	0x5f
 548 02c7 C2010000 		.4byte	0x1c2
 549 02cb 04       		.uleb128 0x4
 550 02cc A1050000 		.4byte	.LASF51
 551 02d0 08       		.byte	0x8
 552 02d1 07       		.byte	0x7
 553 02d2 25000000 		.4byte	0x25
 554 02d6 04       		.uleb128 0x4
 555 02d7 27050000 		.4byte	.LASF52
 556 02db 09       		.byte	0x9
 557 02dc 2C       		.byte	0x2c
 558 02dd 5A000000 		.4byte	0x5a
 559 02e1 04       		.uleb128 0x4
 560 02e2 AE060000 		.4byte	.LASF53
 561 02e6 09       		.byte	0x9
 562 02e7 72       		.byte	0x72
 563 02e8 5A000000 		.4byte	0x5a
 564 02ec 0F       		.uleb128 0xf
 565 02ed 8C030000 		.4byte	.LASF54
 566 02f1 0A       		.byte	0xa
 567 02f2 6501     		.2byte	0x165
 568 02f4 2C000000 		.4byte	0x2c
 569 02f8 10       		.uleb128 0x10
 570 02f9 04       		.byte	0x4
 571 02fa 09       		.byte	0x9
 572 02fb A6       		.byte	0xa6
 573 02fc 17030000 		.4byte	0x317
 574 0300 11       		.uleb128 0x11
 575 0301 79030000 		.4byte	.LASF55
 576 0305 09       		.byte	0x9
 577 0306 A8       		.byte	0xa8
 578 0307 EC020000 		.4byte	0x2ec
 579 030b 11       		.uleb128 0x11
 580 030c B3020000 		.4byte	.LASF56
 581 0310 09       		.byte	0x9
 582 0311 A9       		.byte	0xa9
 583 0312 17030000 		.4byte	0x317
 584 0316 00       		.byte	0
 585 0317 08       		.uleb128 0x8
 586 0318 3A000000 		.4byte	0x3a
 587 031c 27030000 		.4byte	0x327
 588 0320 09       		.uleb128 0x9
 589 0321 A8000000 		.4byte	0xa8
 590 0325 03       		.byte	0x3
 591 0326 00       		.byte	0
 592 0327 0C       		.uleb128 0xc
 593 0328 08       		.byte	0x8
 594 0329 09       		.byte	0x9
 595 032a A3       		.byte	0xa3
 596 032b 48030000 		.4byte	0x348
 597 032f 0D       		.uleb128 0xd
 598 0330 97060000 		.4byte	.LASF57
 599 0334 09       		.byte	0x9
 600 0335 A5       		.byte	0xa5
 601 0336 25000000 		.4byte	0x25
ARM GAS  /tmp/cc6b4z2x.s 			page 25


 602 033a 00       		.byte	0
 603 033b 0D       		.uleb128 0xd
 604 033c 4E070000 		.4byte	.LASF58
 605 0340 09       		.byte	0x9
 606 0341 AA       		.byte	0xaa
 607 0342 F8020000 		.4byte	0x2f8
 608 0346 04       		.byte	0x4
 609 0347 00       		.byte	0
 610 0348 04       		.uleb128 0x4
 611 0349 24060000 		.4byte	.LASF59
 612 034d 09       		.byte	0x9
 613 034e AB       		.byte	0xab
 614 034f 27030000 		.4byte	0x327
 615 0353 04       		.uleb128 0x4
 616 0354 F9040000 		.4byte	.LASF60
 617 0358 09       		.byte	0x9
 618 0359 AF       		.byte	0xaf
 619 035a CB020000 		.4byte	0x2cb
 620 035e 04       		.uleb128 0x4
 621 035f 72070000 		.4byte	.LASF61
 622 0363 0B       		.byte	0xb
 623 0364 16       		.byte	0x16
 624 0365 6C000000 		.4byte	0x6c
 625 0369 12       		.uleb128 0x12
 626 036a 66020000 		.4byte	.LASF66
 627 036e 18       		.byte	0x18
 628 036f 0B       		.byte	0xb
 629 0370 2D       		.byte	0x2d
 630 0371 BC030000 		.4byte	0x3bc
 631 0375 0D       		.uleb128 0xd
 632 0376 3B070000 		.4byte	.LASF62
 633 037a 0B       		.byte	0xb
 634 037b 2F       		.byte	0x2f
 635 037c BC030000 		.4byte	0x3bc
 636 0380 00       		.byte	0
 637 0381 13       		.uleb128 0x13
 638 0382 5F6B00   		.ascii	"_k\000"
 639 0385 0B       		.byte	0xb
 640 0386 30       		.byte	0x30
 641 0387 25000000 		.4byte	0x25
 642 038b 04       		.byte	0x4
 643 038c 0D       		.uleb128 0xd
 644 038d 82060000 		.4byte	.LASF63
 645 0391 0B       		.byte	0xb
 646 0392 30       		.byte	0x30
 647 0393 25000000 		.4byte	0x25
 648 0397 08       		.byte	0x8
 649 0398 0D       		.uleb128 0xd
 650 0399 33020000 		.4byte	.LASF64
 651 039d 0B       		.byte	0xb
 652 039e 30       		.byte	0x30
 653 039f 25000000 		.4byte	0x25
 654 03a3 0C       		.byte	0xc
 655 03a4 0D       		.uleb128 0xd
 656 03a5 7A010000 		.4byte	.LASF65
 657 03a9 0B       		.byte	0xb
 658 03aa 30       		.byte	0x30
ARM GAS  /tmp/cc6b4z2x.s 			page 26


 659 03ab 25000000 		.4byte	0x25
 660 03af 10       		.byte	0x10
 661 03b0 13       		.uleb128 0x13
 662 03b1 5F7800   		.ascii	"_x\000"
 663 03b4 0B       		.byte	0xb
 664 03b5 31       		.byte	0x31
 665 03b6 C2030000 		.4byte	0x3c2
 666 03ba 14       		.byte	0x14
 667 03bb 00       		.byte	0
 668 03bc 14       		.uleb128 0x14
 669 03bd 04       		.byte	0x4
 670 03be 69030000 		.4byte	0x369
 671 03c2 08       		.uleb128 0x8
 672 03c3 5E030000 		.4byte	0x35e
 673 03c7 D2030000 		.4byte	0x3d2
 674 03cb 09       		.uleb128 0x9
 675 03cc A8000000 		.4byte	0xa8
 676 03d0 00       		.byte	0
 677 03d1 00       		.byte	0
 678 03d2 12       		.uleb128 0x12
 679 03d3 85020000 		.4byte	.LASF67
 680 03d7 24       		.byte	0x24
 681 03d8 0B       		.byte	0xb
 682 03d9 35       		.byte	0x35
 683 03da 4B040000 		.4byte	0x44b
 684 03de 0D       		.uleb128 0xd
 685 03df E8070000 		.4byte	.LASF68
 686 03e3 0B       		.byte	0xb
 687 03e4 37       		.byte	0x37
 688 03e5 25000000 		.4byte	0x25
 689 03e9 00       		.byte	0
 690 03ea 0D       		.uleb128 0xd
 691 03eb FC080000 		.4byte	.LASF69
 692 03ef 0B       		.byte	0xb
 693 03f0 38       		.byte	0x38
 694 03f1 25000000 		.4byte	0x25
 695 03f5 04       		.byte	0x4
 696 03f6 0D       		.uleb128 0xd
 697 03f7 35010000 		.4byte	.LASF70
 698 03fb 0B       		.byte	0xb
 699 03fc 39       		.byte	0x39
 700 03fd 25000000 		.4byte	0x25
 701 0401 08       		.byte	0x8
 702 0402 0D       		.uleb128 0xd
 703 0403 67090000 		.4byte	.LASF71
 704 0407 0B       		.byte	0xb
 705 0408 3A       		.byte	0x3a
 706 0409 25000000 		.4byte	0x25
 707 040d 0C       		.byte	0xc
 708 040e 0D       		.uleb128 0xd
 709 040f 02050000 		.4byte	.LASF72
 710 0413 0B       		.byte	0xb
 711 0414 3B       		.byte	0x3b
 712 0415 25000000 		.4byte	0x25
 713 0419 10       		.byte	0x10
 714 041a 0D       		.uleb128 0xd
 715 041b AB030000 		.4byte	.LASF73
ARM GAS  /tmp/cc6b4z2x.s 			page 27


 716 041f 0B       		.byte	0xb
 717 0420 3C       		.byte	0x3c
 718 0421 25000000 		.4byte	0x25
 719 0425 14       		.byte	0x14
 720 0426 0D       		.uleb128 0xd
 721 0427 F9070000 		.4byte	.LASF74
 722 042b 0B       		.byte	0xb
 723 042c 3D       		.byte	0x3d
 724 042d 25000000 		.4byte	0x25
 725 0431 18       		.byte	0x18
 726 0432 0D       		.uleb128 0xd
 727 0433 FA050000 		.4byte	.LASF75
 728 0437 0B       		.byte	0xb
 729 0438 3E       		.byte	0x3e
 730 0439 25000000 		.4byte	0x25
 731 043d 1C       		.byte	0x1c
 732 043e 0D       		.uleb128 0xd
 733 043f E2080000 		.4byte	.LASF76
 734 0443 0B       		.byte	0xb
 735 0444 3F       		.byte	0x3f
 736 0445 25000000 		.4byte	0x25
 737 0449 20       		.byte	0x20
 738 044a 00       		.byte	0
 739 044b 15       		.uleb128 0x15
 740 044c 44010000 		.4byte	.LASF77
 741 0450 0801     		.2byte	0x108
 742 0452 0B       		.byte	0xb
 743 0453 48       		.byte	0x48
 744 0454 8B040000 		.4byte	0x48b
 745 0458 0D       		.uleb128 0xd
 746 0459 13020000 		.4byte	.LASF78
 747 045d 0B       		.byte	0xb
 748 045e 49       		.byte	0x49
 749 045f 8B040000 		.4byte	0x48b
 750 0463 00       		.byte	0
 751 0464 0D       		.uleb128 0xd
 752 0465 DB050000 		.4byte	.LASF79
 753 0469 0B       		.byte	0xb
 754 046a 4A       		.byte	0x4a
 755 046b 8B040000 		.4byte	0x48b
 756 046f 80       		.byte	0x80
 757 0470 16       		.uleb128 0x16
 758 0471 56070000 		.4byte	.LASF80
 759 0475 0B       		.byte	0xb
 760 0476 4C       		.byte	0x4c
 761 0477 5E030000 		.4byte	0x35e
 762 047b 0001     		.2byte	0x100
 763 047d 16       		.uleb128 0x16
 764 047e 72010000 		.4byte	.LASF81
 765 0482 0B       		.byte	0xb
 766 0483 4F       		.byte	0x4f
 767 0484 5E030000 		.4byte	0x35e
 768 0488 0401     		.2byte	0x104
 769 048a 00       		.byte	0
 770 048b 08       		.uleb128 0x8
 771 048c A6000000 		.4byte	0xa6
 772 0490 9B040000 		.4byte	0x49b
ARM GAS  /tmp/cc6b4z2x.s 			page 28


 773 0494 09       		.uleb128 0x9
 774 0495 A8000000 		.4byte	0xa8
 775 0499 1F       		.byte	0x1f
 776 049a 00       		.byte	0
 777 049b 15       		.uleb128 0x15
 778 049c 0B050000 		.4byte	.LASF82
 779 04a0 9001     		.2byte	0x190
 780 04a2 0B       		.byte	0xb
 781 04a3 5B       		.byte	0x5b
 782 04a4 D9040000 		.4byte	0x4d9
 783 04a8 0D       		.uleb128 0xd
 784 04a9 3B070000 		.4byte	.LASF62
 785 04ad 0B       		.byte	0xb
 786 04ae 5C       		.byte	0x5c
 787 04af D9040000 		.4byte	0x4d9
 788 04b3 00       		.byte	0
 789 04b4 0D       		.uleb128 0xd
 790 04b5 59060000 		.4byte	.LASF83
 791 04b9 0B       		.byte	0xb
 792 04ba 5D       		.byte	0x5d
 793 04bb 25000000 		.4byte	0x25
 794 04bf 04       		.byte	0x4
 795 04c0 0D       		.uleb128 0xd
 796 04c1 23020000 		.4byte	.LASF84
 797 04c5 0B       		.byte	0xb
 798 04c6 5F       		.byte	0x5f
 799 04c7 DF040000 		.4byte	0x4df
 800 04cb 08       		.byte	0x8
 801 04cc 0D       		.uleb128 0xd
 802 04cd 44010000 		.4byte	.LASF77
 803 04d1 0B       		.byte	0xb
 804 04d2 60       		.byte	0x60
 805 04d3 4B040000 		.4byte	0x44b
 806 04d7 88       		.byte	0x88
 807 04d8 00       		.byte	0
 808 04d9 14       		.uleb128 0x14
 809 04da 04       		.byte	0x4
 810 04db 9B040000 		.4byte	0x49b
 811 04df 08       		.uleb128 0x8
 812 04e0 EF040000 		.4byte	0x4ef
 813 04e4 EF040000 		.4byte	0x4ef
 814 04e8 09       		.uleb128 0x9
 815 04e9 A8000000 		.4byte	0xa8
 816 04ed 1F       		.byte	0x1f
 817 04ee 00       		.byte	0
 818 04ef 14       		.uleb128 0x14
 819 04f0 04       		.byte	0x4
 820 04f1 F5040000 		.4byte	0x4f5
 821 04f5 17       		.uleb128 0x17
 822 04f6 12       		.uleb128 0x12
 823 04f7 04060000 		.4byte	.LASF85
 824 04fb 08       		.byte	0x8
 825 04fc 0B       		.byte	0xb
 826 04fd 73       		.byte	0x73
 827 04fe 1B050000 		.4byte	0x51b
 828 0502 0D       		.uleb128 0xd
 829 0503 25010000 		.4byte	.LASF86
ARM GAS  /tmp/cc6b4z2x.s 			page 29


 830 0507 0B       		.byte	0xb
 831 0508 74       		.byte	0x74
 832 0509 1B050000 		.4byte	0x51b
 833 050d 00       		.byte	0
 834 050e 0D       		.uleb128 0xd
 835 050f DE060000 		.4byte	.LASF87
 836 0513 0B       		.byte	0xb
 837 0514 75       		.byte	0x75
 838 0515 25000000 		.4byte	0x25
 839 0519 04       		.byte	0x4
 840 051a 00       		.byte	0
 841 051b 14       		.uleb128 0x14
 842 051c 04       		.byte	0x4
 843 051d 3A000000 		.4byte	0x3a
 844 0521 12       		.uleb128 0x12
 845 0522 3B060000 		.4byte	.LASF88
 846 0526 68       		.byte	0x68
 847 0527 0B       		.byte	0xb
 848 0528 B3       		.byte	0xb3
 849 0529 4B060000 		.4byte	0x64b
 850 052d 13       		.uleb128 0x13
 851 052e 5F7000   		.ascii	"_p\000"
 852 0531 0B       		.byte	0xb
 853 0532 B4       		.byte	0xb4
 854 0533 1B050000 		.4byte	0x51b
 855 0537 00       		.byte	0
 856 0538 13       		.uleb128 0x13
 857 0539 5F7200   		.ascii	"_r\000"
 858 053c 0B       		.byte	0xb
 859 053d B5       		.byte	0xb5
 860 053e 25000000 		.4byte	0x25
 861 0542 04       		.byte	0x4
 862 0543 13       		.uleb128 0x13
 863 0544 5F7700   		.ascii	"_w\000"
 864 0547 0B       		.byte	0xb
 865 0548 B6       		.byte	0xb6
 866 0549 25000000 		.4byte	0x25
 867 054d 08       		.byte	0x8
 868 054e 0D       		.uleb128 0xd
 869 054f 6B010000 		.4byte	.LASF89
 870 0553 0B       		.byte	0xb
 871 0554 B7       		.byte	0xb7
 872 0555 41000000 		.4byte	0x41
 873 0559 0C       		.byte	0xc
 874 055a 0D       		.uleb128 0xd
 875 055b E4020000 		.4byte	.LASF90
 876 055f 0B       		.byte	0xb
 877 0560 B8       		.byte	0xb8
 878 0561 41000000 		.4byte	0x41
 879 0565 0E       		.byte	0xe
 880 0566 13       		.uleb128 0x13
 881 0567 5F626600 		.ascii	"_bf\000"
 882 056b 0B       		.byte	0xb
 883 056c B9       		.byte	0xb9
 884 056d F6040000 		.4byte	0x4f6
 885 0571 10       		.byte	0x10
 886 0572 0D       		.uleb128 0xd
ARM GAS  /tmp/cc6b4z2x.s 			page 30


 887 0573 9E000000 		.4byte	.LASF91
 888 0577 0B       		.byte	0xb
 889 0578 BA       		.byte	0xba
 890 0579 25000000 		.4byte	0x25
 891 057d 18       		.byte	0x18
 892 057e 0D       		.uleb128 0xd
 893 057f 52010000 		.4byte	.LASF92
 894 0583 0B       		.byte	0xb
 895 0584 C1       		.byte	0xc1
 896 0585 A6000000 		.4byte	0xa6
 897 0589 1C       		.byte	0x1c
 898 058a 0D       		.uleb128 0xd
 899 058b B3050000 		.4byte	.LASF93
 900 058f 0B       		.byte	0xb
 901 0590 C3       		.byte	0xc3
 902 0591 B8070000 		.4byte	0x7b8
 903 0595 20       		.byte	0x20
 904 0596 0D       		.uleb128 0xd
 905 0597 A4030000 		.4byte	.LASF94
 906 059b 0B       		.byte	0xb
 907 059c C5       		.byte	0xc5
 908 059d E2070000 		.4byte	0x7e2
 909 05a1 24       		.byte	0x24
 910 05a2 0D       		.uleb128 0xd
 911 05a3 A8060000 		.4byte	.LASF95
 912 05a7 0B       		.byte	0xb
 913 05a8 C8       		.byte	0xc8
 914 05a9 06080000 		.4byte	0x806
 915 05ad 28       		.byte	0x28
 916 05ae 0D       		.uleb128 0xd
 917 05af 0C010000 		.4byte	.LASF96
 918 05b3 0B       		.byte	0xb
 919 05b4 C9       		.byte	0xc9
 920 05b5 20080000 		.4byte	0x820
 921 05b9 2C       		.byte	0x2c
 922 05ba 13       		.uleb128 0x13
 923 05bb 5F756200 		.ascii	"_ub\000"
 924 05bf 0B       		.byte	0xb
 925 05c0 CC       		.byte	0xcc
 926 05c1 F6040000 		.4byte	0x4f6
 927 05c5 30       		.byte	0x30
 928 05c6 13       		.uleb128 0x13
 929 05c7 5F757000 		.ascii	"_up\000"
 930 05cb 0B       		.byte	0xb
 931 05cc CD       		.byte	0xcd
 932 05cd 1B050000 		.4byte	0x51b
 933 05d1 38       		.byte	0x38
 934 05d2 13       		.uleb128 0x13
 935 05d3 5F757200 		.ascii	"_ur\000"
 936 05d7 0B       		.byte	0xb
 937 05d8 CE       		.byte	0xce
 938 05d9 25000000 		.4byte	0x25
 939 05dd 3C       		.byte	0x3c
 940 05de 0D       		.uleb128 0xd
 941 05df 1F010000 		.4byte	.LASF97
 942 05e3 0B       		.byte	0xb
 943 05e4 D1       		.byte	0xd1
ARM GAS  /tmp/cc6b4z2x.s 			page 31


 944 05e5 26080000 		.4byte	0x826
 945 05e9 40       		.byte	0x40
 946 05ea 0D       		.uleb128 0xd
 947 05eb 77080000 		.4byte	.LASF98
 948 05ef 0B       		.byte	0xb
 949 05f0 D2       		.byte	0xd2
 950 05f1 36080000 		.4byte	0x836
 951 05f5 43       		.byte	0x43
 952 05f6 13       		.uleb128 0x13
 953 05f7 5F6C6200 		.ascii	"_lb\000"
 954 05fb 0B       		.byte	0xb
 955 05fc D5       		.byte	0xd5
 956 05fd F6040000 		.4byte	0x4f6
 957 0601 44       		.byte	0x44
 958 0602 0D       		.uleb128 0xd
 959 0603 CA060000 		.4byte	.LASF99
 960 0607 0B       		.byte	0xb
 961 0608 D8       		.byte	0xd8
 962 0609 25000000 		.4byte	0x25
 963 060d 4C       		.byte	0x4c
 964 060e 0D       		.uleb128 0xd
 965 060f 18040000 		.4byte	.LASF100
 966 0613 0B       		.byte	0xb
 967 0614 D9       		.byte	0xd9
 968 0615 D6020000 		.4byte	0x2d6
 969 0619 50       		.byte	0x50
 970 061a 0D       		.uleb128 0xd
 971 061b 49000000 		.4byte	.LASF101
 972 061f 0B       		.byte	0xb
 973 0620 DC       		.byte	0xdc
 974 0621 69060000 		.4byte	0x669
 975 0625 54       		.byte	0x54
 976 0626 0D       		.uleb128 0xd
 977 0627 98030000 		.4byte	.LASF102
 978 062b 0B       		.byte	0xb
 979 062c E0       		.byte	0xe0
 980 062d 53030000 		.4byte	0x353
 981 0631 58       		.byte	0x58
 982 0632 0D       		.uleb128 0xd
 983 0633 AA020000 		.4byte	.LASF103
 984 0637 0B       		.byte	0xb
 985 0638 E2       		.byte	0xe2
 986 0639 48030000 		.4byte	0x348
 987 063d 5C       		.byte	0x5c
 988 063e 0D       		.uleb128 0xd
 989 063f 0B060000 		.4byte	.LASF104
 990 0643 0B       		.byte	0xb
 991 0644 E3       		.byte	0xe3
 992 0645 25000000 		.4byte	0x25
 993 0649 64       		.byte	0x64
 994 064a 00       		.byte	0
 995 064b 18       		.uleb128 0x18
 996 064c 25000000 		.4byte	0x25
 997 0650 69060000 		.4byte	0x669
 998 0654 19       		.uleb128 0x19
 999 0655 69060000 		.4byte	0x669
 1000 0659 19       		.uleb128 0x19
ARM GAS  /tmp/cc6b4z2x.s 			page 32


 1001 065a A6000000 		.4byte	0xa6
 1002 065e 19       		.uleb128 0x19
 1003 065f A6070000 		.4byte	0x7a6
 1004 0663 19       		.uleb128 0x19
 1005 0664 25000000 		.4byte	0x25
 1006 0668 00       		.byte	0
 1007 0669 14       		.uleb128 0x14
 1008 066a 04       		.byte	0x4
 1009 066b 74060000 		.4byte	0x674
 1010 066f 06       		.uleb128 0x6
 1011 0670 69060000 		.4byte	0x669
 1012 0674 1A       		.uleb128 0x1a
 1013 0675 8A060000 		.4byte	.LASF105
 1014 0679 2804     		.2byte	0x428
 1015 067b 0B       		.byte	0xb
 1016 067c 3802     		.2byte	0x238
 1017 067e A6070000 		.4byte	0x7a6
 1018 0682 1B       		.uleb128 0x1b
 1019 0683 C3060000 		.4byte	.LASF106
 1020 0687 0B       		.byte	0xb
 1021 0688 3A02     		.2byte	0x23a
 1022 068a 25000000 		.4byte	0x25
 1023 068e 00       		.byte	0
 1024 068f 1B       		.uleb128 0x1b
 1025 0690 09080000 		.4byte	.LASF107
 1026 0694 0B       		.byte	0xb
 1027 0695 3F02     		.2byte	0x23f
 1028 0697 8D080000 		.4byte	0x88d
 1029 069b 04       		.byte	0x4
 1030 069c 1B       		.uleb128 0x1b
 1031 069d F1070000 		.4byte	.LASF108
 1032 06a1 0B       		.byte	0xb
 1033 06a2 3F02     		.2byte	0x23f
 1034 06a4 8D080000 		.4byte	0x88d
 1035 06a8 08       		.byte	0x8
 1036 06a9 1B       		.uleb128 0x1b
 1037 06aa 5E020000 		.4byte	.LASF109
 1038 06ae 0B       		.byte	0xb
 1039 06af 3F02     		.2byte	0x23f
 1040 06b1 8D080000 		.4byte	0x88d
 1041 06b5 0C       		.byte	0xc
 1042 06b6 1B       		.uleb128 0x1b
 1043 06b7 54060000 		.4byte	.LASF110
 1044 06bb 0B       		.byte	0xb
 1045 06bc 4102     		.2byte	0x241
 1046 06be 25000000 		.4byte	0x25
 1047 06c2 10       		.byte	0x10
 1048 06c3 1B       		.uleb128 0x1b
 1049 06c4 27000000 		.4byte	.LASF111
 1050 06c8 0B       		.byte	0xb
 1051 06c9 4202     		.2byte	0x242
 1052 06cb 6F0A0000 		.4byte	0xa6f
 1053 06cf 14       		.byte	0x14
 1054 06d0 1B       		.uleb128 0x1b
 1055 06d1 A8070000 		.4byte	.LASF112
 1056 06d5 0B       		.byte	0xb
 1057 06d6 4402     		.2byte	0x244
ARM GAS  /tmp/cc6b4z2x.s 			page 33


 1058 06d8 25000000 		.4byte	0x25
 1059 06dc 30       		.byte	0x30
 1060 06dd 1B       		.uleb128 0x1b
 1061 06de 5E060000 		.4byte	.LASF113
 1062 06e2 0B       		.byte	0xb
 1063 06e3 4502     		.2byte	0x245
 1064 06e5 DC070000 		.4byte	0x7dc
 1065 06e9 34       		.byte	0x34
 1066 06ea 1B       		.uleb128 0x1b
 1067 06eb CF010000 		.4byte	.LASF114
 1068 06ef 0B       		.byte	0xb
 1069 06f0 4702     		.2byte	0x247
 1070 06f2 25000000 		.4byte	0x25
 1071 06f6 38       		.byte	0x38
 1072 06f7 1B       		.uleb128 0x1b
 1073 06f8 6E060000 		.4byte	.LASF115
 1074 06fc 0B       		.byte	0xb
 1075 06fd 4902     		.2byte	0x249
 1076 06ff 8A0A0000 		.4byte	0xa8a
 1077 0703 3C       		.byte	0x3c
 1078 0704 1B       		.uleb128 0x1b
 1079 0705 71030000 		.4byte	.LASF116
 1080 0709 0B       		.byte	0xb
 1081 070a 4C02     		.2byte	0x24c
 1082 070c BC030000 		.4byte	0x3bc
 1083 0710 40       		.byte	0x40
 1084 0711 1B       		.uleb128 0x1b
 1085 0712 8C010000 		.4byte	.LASF117
 1086 0716 0B       		.byte	0xb
 1087 0717 4D02     		.2byte	0x24d
 1088 0719 25000000 		.4byte	0x25
 1089 071d 44       		.byte	0x44
 1090 071e 1B       		.uleb128 0x1b
 1091 071f 58090000 		.4byte	.LASF118
 1092 0723 0B       		.byte	0xb
 1093 0724 4E02     		.2byte	0x24e
 1094 0726 BC030000 		.4byte	0x3bc
 1095 072a 48       		.byte	0x48
 1096 072b 1B       		.uleb128 0x1b
 1097 072c 13060000 		.4byte	.LASF119
 1098 0730 0B       		.byte	0xb
 1099 0731 4F02     		.2byte	0x24f
 1100 0733 900A0000 		.4byte	0xa90
 1101 0737 4C       		.byte	0x4c
 1102 0738 1B       		.uleb128 0x1b
 1103 0739 CA020000 		.4byte	.LASF120
 1104 073d 0B       		.byte	0xb
 1105 073e 5202     		.2byte	0x252
 1106 0740 25000000 		.4byte	0x25
 1107 0744 50       		.byte	0x50
 1108 0745 1B       		.uleb128 0x1b
 1109 0746 EC010000 		.4byte	.LASF121
 1110 074a 0B       		.byte	0xb
 1111 074b 5302     		.2byte	0x253
 1112 074d A6070000 		.4byte	0x7a6
 1113 0751 54       		.byte	0x54
 1114 0752 1B       		.uleb128 0x1b
ARM GAS  /tmp/cc6b4z2x.s 			page 34


 1115 0753 E7050000 		.4byte	.LASF122
 1116 0757 0B       		.byte	0xb
 1117 0758 7602     		.2byte	0x276
 1118 075a 4D0A0000 		.4byte	0xa4d
 1119 075e 58       		.byte	0x58
 1120 075f 1C       		.uleb128 0x1c
 1121 0760 0B050000 		.4byte	.LASF82
 1122 0764 0B       		.byte	0xb
 1123 0765 7A02     		.2byte	0x27a
 1124 0767 D9040000 		.4byte	0x4d9
 1125 076b 4801     		.2byte	0x148
 1126 076d 1C       		.uleb128 0x1c
 1127 076e 2E030000 		.4byte	.LASF123
 1128 0772 0B       		.byte	0xb
 1129 0773 7B02     		.2byte	0x27b
 1130 0775 9B040000 		.4byte	0x49b
 1131 0779 4C01     		.2byte	0x14c
 1132 077b 1C       		.uleb128 0x1c
 1133 077c 2D080000 		.4byte	.LASF124
 1134 0780 0B       		.byte	0xb
 1135 0781 7F02     		.2byte	0x27f
 1136 0783 A10A0000 		.4byte	0xaa1
 1137 0787 DC02     		.2byte	0x2dc
 1138 0789 1C       		.uleb128 0x1c
 1139 078a 5A010000 		.4byte	.LASF125
 1140 078e 0B       		.byte	0xb
 1141 078f 8402     		.2byte	0x284
 1142 0791 52080000 		.4byte	0x852
 1143 0795 E002     		.2byte	0x2e0
 1144 0797 1C       		.uleb128 0x1c
 1145 0798 3F010000 		.4byte	.LASF126
 1146 079c 0B       		.byte	0xb
 1147 079d 8502     		.2byte	0x285
 1148 079f AD0A0000 		.4byte	0xaad
 1149 07a3 EC02     		.2byte	0x2ec
 1150 07a5 00       		.byte	0
 1151 07a6 14       		.uleb128 0x14
 1152 07a7 04       		.byte	0x4
 1153 07a8 AC070000 		.4byte	0x7ac
 1154 07ac 03       		.uleb128 0x3
 1155 07ad 01       		.byte	0x1
 1156 07ae 08       		.byte	0x8
 1157 07af BE060000 		.4byte	.LASF127
 1158 07b3 06       		.uleb128 0x6
 1159 07b4 AC070000 		.4byte	0x7ac
 1160 07b8 14       		.uleb128 0x14
 1161 07b9 04       		.byte	0x4
 1162 07ba 4B060000 		.4byte	0x64b
 1163 07be 18       		.uleb128 0x18
 1164 07bf 25000000 		.4byte	0x25
 1165 07c3 DC070000 		.4byte	0x7dc
 1166 07c7 19       		.uleb128 0x19
 1167 07c8 69060000 		.4byte	0x669
 1168 07cc 19       		.uleb128 0x19
 1169 07cd A6000000 		.4byte	0xa6
 1170 07d1 19       		.uleb128 0x19
 1171 07d2 DC070000 		.4byte	0x7dc
ARM GAS  /tmp/cc6b4z2x.s 			page 35


 1172 07d6 19       		.uleb128 0x19
 1173 07d7 25000000 		.4byte	0x25
 1174 07db 00       		.byte	0
 1175 07dc 14       		.uleb128 0x14
 1176 07dd 04       		.byte	0x4
 1177 07de B3070000 		.4byte	0x7b3
 1178 07e2 14       		.uleb128 0x14
 1179 07e3 04       		.byte	0x4
 1180 07e4 BE070000 		.4byte	0x7be
 1181 07e8 18       		.uleb128 0x18
 1182 07e9 E1020000 		.4byte	0x2e1
 1183 07ed 06080000 		.4byte	0x806
 1184 07f1 19       		.uleb128 0x19
 1185 07f2 69060000 		.4byte	0x669
 1186 07f6 19       		.uleb128 0x19
 1187 07f7 A6000000 		.4byte	0xa6
 1188 07fb 19       		.uleb128 0x19
 1189 07fc E1020000 		.4byte	0x2e1
 1190 0800 19       		.uleb128 0x19
 1191 0801 25000000 		.4byte	0x25
 1192 0805 00       		.byte	0
 1193 0806 14       		.uleb128 0x14
 1194 0807 04       		.byte	0x4
 1195 0808 E8070000 		.4byte	0x7e8
 1196 080c 18       		.uleb128 0x18
 1197 080d 25000000 		.4byte	0x25
 1198 0811 20080000 		.4byte	0x820
 1199 0815 19       		.uleb128 0x19
 1200 0816 69060000 		.4byte	0x669
 1201 081a 19       		.uleb128 0x19
 1202 081b A6000000 		.4byte	0xa6
 1203 081f 00       		.byte	0
 1204 0820 14       		.uleb128 0x14
 1205 0821 04       		.byte	0x4
 1206 0822 0C080000 		.4byte	0x80c
 1207 0826 08       		.uleb128 0x8
 1208 0827 3A000000 		.4byte	0x3a
 1209 082b 36080000 		.4byte	0x836
 1210 082f 09       		.uleb128 0x9
 1211 0830 A8000000 		.4byte	0xa8
 1212 0834 02       		.byte	0x2
 1213 0835 00       		.byte	0
 1214 0836 08       		.uleb128 0x8
 1215 0837 3A000000 		.4byte	0x3a
 1216 083b 46080000 		.4byte	0x846
 1217 083f 09       		.uleb128 0x9
 1218 0840 A8000000 		.4byte	0xa8
 1219 0844 00       		.byte	0
 1220 0845 00       		.byte	0
 1221 0846 0F       		.uleb128 0xf
 1222 0847 1D060000 		.4byte	.LASF128
 1223 084b 0B       		.byte	0xb
 1224 084c 1D01     		.2byte	0x11d
 1225 084e 21050000 		.4byte	0x521
 1226 0852 1D       		.uleb128 0x1d
 1227 0853 03080000 		.4byte	.LASF129
 1228 0857 0C       		.byte	0xc
ARM GAS  /tmp/cc6b4z2x.s 			page 36


 1229 0858 0B       		.byte	0xb
 1230 0859 2101     		.2byte	0x121
 1231 085b 87080000 		.4byte	0x887
 1232 085f 1B       		.uleb128 0x1b
 1233 0860 3B070000 		.4byte	.LASF62
 1234 0864 0B       		.byte	0xb
 1235 0865 2301     		.2byte	0x123
 1236 0867 87080000 		.4byte	0x887
 1237 086b 00       		.byte	0
 1238 086c 1B       		.uleb128 0x1b
 1239 086d F5020000 		.4byte	.LASF130
 1240 0871 0B       		.byte	0xb
 1241 0872 2401     		.2byte	0x124
 1242 0874 25000000 		.4byte	0x25
 1243 0878 04       		.byte	0x4
 1244 0879 1B       		.uleb128 0x1b
 1245 087a 4E060000 		.4byte	.LASF131
 1246 087e 0B       		.byte	0xb
 1247 087f 2501     		.2byte	0x125
 1248 0881 8D080000 		.4byte	0x88d
 1249 0885 08       		.byte	0x8
 1250 0886 00       		.byte	0
 1251 0887 14       		.uleb128 0x14
 1252 0888 04       		.byte	0x4
 1253 0889 52080000 		.4byte	0x852
 1254 088d 14       		.uleb128 0x14
 1255 088e 04       		.byte	0x4
 1256 088f 46080000 		.4byte	0x846
 1257 0893 1D       		.uleb128 0x1d
 1258 0894 1F000000 		.4byte	.LASF132
 1259 0898 0E       		.byte	0xe
 1260 0899 0B       		.byte	0xb
 1261 089a 3D01     		.2byte	0x13d
 1262 089c C8080000 		.4byte	0x8c8
 1263 08a0 1B       		.uleb128 0x1b
 1264 08a1 91060000 		.4byte	.LASF133
 1265 08a5 0B       		.byte	0xb
 1266 08a6 3E01     		.2byte	0x13e
 1267 08a8 C8080000 		.4byte	0x8c8
 1268 08ac 00       		.byte	0
 1269 08ad 1B       		.uleb128 0x1b
 1270 08ae 9E030000 		.4byte	.LASF134
 1271 08b2 0B       		.byte	0xb
 1272 08b3 3F01     		.2byte	0x13f
 1273 08b5 C8080000 		.4byte	0x8c8
 1274 08b9 06       		.byte	0x6
 1275 08ba 1B       		.uleb128 0x1b
 1276 08bb 6D070000 		.4byte	.LASF135
 1277 08bf 0B       		.byte	0xb
 1278 08c0 4001     		.2byte	0x140
 1279 08c2 48000000 		.4byte	0x48
 1280 08c6 0C       		.byte	0xc
 1281 08c7 00       		.byte	0
 1282 08c8 08       		.uleb128 0x8
 1283 08c9 48000000 		.4byte	0x48
 1284 08cd D8080000 		.4byte	0x8d8
 1285 08d1 09       		.uleb128 0x9
ARM GAS  /tmp/cc6b4z2x.s 			page 37


 1286 08d2 A8000000 		.4byte	0xa8
 1287 08d6 02       		.byte	0x2
 1288 08d7 00       		.byte	0
 1289 08d8 1E       		.uleb128 0x1e
 1290 08d9 D0       		.byte	0xd0
 1291 08da 0B       		.byte	0xb
 1292 08db 5702     		.2byte	0x257
 1293 08dd D9090000 		.4byte	0x9d9
 1294 08e1 1B       		.uleb128 0x1b
 1295 08e2 B5030000 		.4byte	.LASF136
 1296 08e6 0B       		.byte	0xb
 1297 08e7 5902     		.2byte	0x259
 1298 08e9 2C000000 		.4byte	0x2c
 1299 08ed 00       		.byte	0
 1300 08ee 1B       		.uleb128 0x1b
 1301 08ef 41070000 		.4byte	.LASF137
 1302 08f3 0B       		.byte	0xb
 1303 08f4 5A02     		.2byte	0x25a
 1304 08f6 A6070000 		.4byte	0x7a6
 1305 08fa 04       		.byte	0x4
 1306 08fb 1B       		.uleb128 0x1b
 1307 08fc 43030000 		.4byte	.LASF138
 1308 0900 0B       		.byte	0xb
 1309 0901 5B02     		.2byte	0x25b
 1310 0903 D9090000 		.4byte	0x9d9
 1311 0907 08       		.byte	0x8
 1312 0908 1B       		.uleb128 0x1b
 1313 0909 ED080000 		.4byte	.LASF139
 1314 090d 0B       		.byte	0xb
 1315 090e 5C02     		.2byte	0x25c
 1316 0910 D2030000 		.4byte	0x3d2
 1317 0914 24       		.byte	0x24
 1318 0915 1B       		.uleb128 0x1b
 1319 0916 10000000 		.4byte	.LASF140
 1320 091a 0B       		.byte	0xb
 1321 091b 5D02     		.2byte	0x25d
 1322 091d 25000000 		.4byte	0x25
 1323 0921 48       		.byte	0x48
 1324 0922 1B       		.uleb128 0x1b
 1325 0923 43060000 		.4byte	.LASF141
 1326 0927 0B       		.byte	0xb
 1327 0928 5E02     		.2byte	0x25e
 1328 092a 7A000000 		.4byte	0x7a
 1329 092e 50       		.byte	0x50
 1330 092f 1B       		.uleb128 0x1b
 1331 0930 CC040000 		.4byte	.LASF142
 1332 0934 0B       		.byte	0xb
 1333 0935 5F02     		.2byte	0x25f
 1334 0937 93080000 		.4byte	0x893
 1335 093b 58       		.byte	0x58
 1336 093c 1B       		.uleb128 0x1b
 1337 093d C0050000 		.4byte	.LASF143
 1338 0941 0B       		.byte	0xb
 1339 0942 6002     		.2byte	0x260
 1340 0944 48030000 		.4byte	0x348
 1341 0948 68       		.byte	0x68
 1342 0949 1B       		.uleb128 0x1b
ARM GAS  /tmp/cc6b4z2x.s 			page 38


 1343 094a 4A090000 		.4byte	.LASF144
 1344 094e 0B       		.byte	0xb
 1345 094f 6102     		.2byte	0x261
 1346 0951 48030000 		.4byte	0x348
 1347 0955 70       		.byte	0x70
 1348 0956 1B       		.uleb128 0x1b
 1349 0957 DD000000 		.4byte	.LASF145
 1350 095b 0B       		.byte	0xb
 1351 095c 6202     		.2byte	0x262
 1352 095e 48030000 		.4byte	0x348
 1353 0962 78       		.byte	0x78
 1354 0963 1B       		.uleb128 0x1b
 1355 0964 19080000 		.4byte	.LASF146
 1356 0968 0B       		.byte	0xb
 1357 0969 6302     		.2byte	0x263
 1358 096b E9090000 		.4byte	0x9e9
 1359 096f 80       		.byte	0x80
 1360 0970 1B       		.uleb128 0x1b
 1361 0971 37030000 		.4byte	.LASF147
 1362 0975 0B       		.byte	0xb
 1363 0976 6402     		.2byte	0x264
 1364 0978 F9090000 		.4byte	0x9f9
 1365 097c 88       		.byte	0x88
 1366 097d 1B       		.uleb128 0x1b
 1367 097e 3C000000 		.4byte	.LASF148
 1368 0982 0B       		.byte	0xb
 1369 0983 6502     		.2byte	0x265
 1370 0985 25000000 		.4byte	0x25
 1371 0989 A0       		.byte	0xa0
 1372 098a 1B       		.uleb128 0x1b
 1373 098b 05020000 		.4byte	.LASF149
 1374 098f 0B       		.byte	0xb
 1375 0990 6602     		.2byte	0x266
 1376 0992 48030000 		.4byte	0x348
 1377 0996 A4       		.byte	0xa4
 1378 0997 1B       		.uleb128 0x1b
 1379 0998 C6000000 		.4byte	.LASF150
 1380 099c 0B       		.byte	0xb
 1381 099d 6702     		.2byte	0x267
 1382 099f 48030000 		.4byte	0x348
 1383 09a3 AC       		.byte	0xac
 1384 09a4 1B       		.uleb128 0x1b
 1385 09a5 F4010000 		.4byte	.LASF151
 1386 09a9 0B       		.byte	0xb
 1387 09aa 6802     		.2byte	0x268
 1388 09ac 48030000 		.4byte	0x348
 1389 09b0 B4       		.byte	0xb4
 1390 09b1 1B       		.uleb128 0x1b
 1391 09b2 57000000 		.4byte	.LASF152
 1392 09b6 0B       		.byte	0xb
 1393 09b7 6902     		.2byte	0x269
 1394 09b9 48030000 		.4byte	0x348
 1395 09bd BC       		.byte	0xbc
 1396 09be 1B       		.uleb128 0x1b
 1397 09bf 66000000 		.4byte	.LASF153
 1398 09c3 0B       		.byte	0xb
 1399 09c4 6A02     		.2byte	0x26a
ARM GAS  /tmp/cc6b4z2x.s 			page 39


 1400 09c6 48030000 		.4byte	0x348
 1401 09ca C4       		.byte	0xc4
 1402 09cb 1B       		.uleb128 0x1b
 1403 09cc EC050000 		.4byte	.LASF154
 1404 09d0 0B       		.byte	0xb
 1405 09d1 6B02     		.2byte	0x26b
 1406 09d3 25000000 		.4byte	0x25
 1407 09d7 CC       		.byte	0xcc
 1408 09d8 00       		.byte	0
 1409 09d9 08       		.uleb128 0x8
 1410 09da AC070000 		.4byte	0x7ac
 1411 09de E9090000 		.4byte	0x9e9
 1412 09e2 09       		.uleb128 0x9
 1413 09e3 A8000000 		.4byte	0xa8
 1414 09e7 19       		.byte	0x19
 1415 09e8 00       		.byte	0
 1416 09e9 08       		.uleb128 0x8
 1417 09ea AC070000 		.4byte	0x7ac
 1418 09ee F9090000 		.4byte	0x9f9
 1419 09f2 09       		.uleb128 0x9
 1420 09f3 A8000000 		.4byte	0xa8
 1421 09f7 07       		.byte	0x7
 1422 09f8 00       		.byte	0
 1423 09f9 08       		.uleb128 0x8
 1424 09fa AC070000 		.4byte	0x7ac
 1425 09fe 090A0000 		.4byte	0xa09
 1426 0a02 09       		.uleb128 0x9
 1427 0a03 A8000000 		.4byte	0xa8
 1428 0a07 17       		.byte	0x17
 1429 0a08 00       		.byte	0
 1430 0a09 1E       		.uleb128 0x1e
 1431 0a0a F0       		.byte	0xf0
 1432 0a0b 0B       		.byte	0xb
 1433 0a0c 7002     		.2byte	0x270
 1434 0a0e 2D0A0000 		.4byte	0xa2d
 1435 0a12 1B       		.uleb128 0x1b
 1436 0a13 7F030000 		.4byte	.LASF155
 1437 0a17 0B       		.byte	0xb
 1438 0a18 7302     		.2byte	0x273
 1439 0a1a 2D0A0000 		.4byte	0xa2d
 1440 0a1e 00       		.byte	0
 1441 0a1f 1B       		.uleb128 0x1b
 1442 0a20 10080000 		.4byte	.LASF156
 1443 0a24 0B       		.byte	0xb
 1444 0a25 7402     		.2byte	0x274
 1445 0a27 3D0A0000 		.4byte	0xa3d
 1446 0a2b 78       		.byte	0x78
 1447 0a2c 00       		.byte	0
 1448 0a2d 08       		.uleb128 0x8
 1449 0a2e 1B050000 		.4byte	0x51b
 1450 0a32 3D0A0000 		.4byte	0xa3d
 1451 0a36 09       		.uleb128 0x9
 1452 0a37 A8000000 		.4byte	0xa8
 1453 0a3b 1D       		.byte	0x1d
 1454 0a3c 00       		.byte	0
 1455 0a3d 08       		.uleb128 0x8
 1456 0a3e 2C000000 		.4byte	0x2c
ARM GAS  /tmp/cc6b4z2x.s 			page 40


 1457 0a42 4D0A0000 		.4byte	0xa4d
 1458 0a46 09       		.uleb128 0x9
 1459 0a47 A8000000 		.4byte	0xa8
 1460 0a4b 1D       		.byte	0x1d
 1461 0a4c 00       		.byte	0
 1462 0a4d 1F       		.uleb128 0x1f
 1463 0a4e F0       		.byte	0xf0
 1464 0a4f 0B       		.byte	0xb
 1465 0a50 5502     		.2byte	0x255
 1466 0a52 6F0A0000 		.4byte	0xa6f
 1467 0a56 20       		.uleb128 0x20
 1468 0a57 8A060000 		.4byte	.LASF105
 1469 0a5b 0B       		.byte	0xb
 1470 0a5c 6C02     		.2byte	0x26c
 1471 0a5e D8080000 		.4byte	0x8d8
 1472 0a62 20       		.uleb128 0x20
 1473 0a63 7D080000 		.4byte	.LASF157
 1474 0a67 0B       		.byte	0xb
 1475 0a68 7502     		.2byte	0x275
 1476 0a6a 090A0000 		.4byte	0xa09
 1477 0a6e 00       		.byte	0
 1478 0a6f 08       		.uleb128 0x8
 1479 0a70 AC070000 		.4byte	0x7ac
 1480 0a74 7F0A0000 		.4byte	0xa7f
 1481 0a78 09       		.uleb128 0x9
 1482 0a79 A8000000 		.4byte	0xa8
 1483 0a7d 18       		.byte	0x18
 1484 0a7e 00       		.byte	0
 1485 0a7f 21       		.uleb128 0x21
 1486 0a80 8A0A0000 		.4byte	0xa8a
 1487 0a84 19       		.uleb128 0x19
 1488 0a85 69060000 		.4byte	0x669
 1489 0a89 00       		.byte	0
 1490 0a8a 14       		.uleb128 0x14
 1491 0a8b 04       		.byte	0x4
 1492 0a8c 7F0A0000 		.4byte	0xa7f
 1493 0a90 14       		.uleb128 0x14
 1494 0a91 04       		.byte	0x4
 1495 0a92 BC030000 		.4byte	0x3bc
 1496 0a96 21       		.uleb128 0x21
 1497 0a97 A10A0000 		.4byte	0xaa1
 1498 0a9b 19       		.uleb128 0x19
 1499 0a9c 25000000 		.4byte	0x25
 1500 0aa0 00       		.byte	0
 1501 0aa1 14       		.uleb128 0x14
 1502 0aa2 04       		.byte	0x4
 1503 0aa3 A70A0000 		.4byte	0xaa7
 1504 0aa7 14       		.uleb128 0x14
 1505 0aa8 04       		.byte	0x4
 1506 0aa9 960A0000 		.4byte	0xa96
 1507 0aad 08       		.uleb128 0x8
 1508 0aae 46080000 		.4byte	0x846
 1509 0ab2 BD0A0000 		.4byte	0xabd
 1510 0ab6 09       		.uleb128 0x9
 1511 0ab7 A8000000 		.4byte	0xa8
 1512 0abb 02       		.byte	0x2
 1513 0abc 00       		.byte	0
ARM GAS  /tmp/cc6b4z2x.s 			page 41


 1514 0abd 0A       		.uleb128 0xa
 1515 0abe 52020000 		.4byte	.LASF158
 1516 0ac2 0B       		.byte	0xb
 1517 0ac3 FD02     		.2byte	0x2fd
 1518 0ac5 69060000 		.4byte	0x669
 1519 0ac9 0A       		.uleb128 0xa
 1520 0aca 95070000 		.4byte	.LASF159
 1521 0ace 0B       		.byte	0xb
 1522 0acf FE02     		.2byte	0x2fe
 1523 0ad1 6F060000 		.4byte	0x66f
 1524 0ad5 0B       		.uleb128 0xb
 1525 0ad6 13050000 		.4byte	.LASF160
 1526 0ada 0C       		.byte	0xc
 1527 0adb 5F       		.byte	0x5f
 1528 0adc A6070000 		.4byte	0x7a6
 1529 0ae0 0B       		.uleb128 0xb
 1530 0ae1 8D050000 		.4byte	.LASF161
 1531 0ae5 0D       		.byte	0xd
 1532 0ae6 8F       		.byte	0x8f
 1533 0ae7 F20A0000 		.4byte	0xaf2
 1534 0aeb 03       		.uleb128 0x3
 1535 0aec 01       		.byte	0x1
 1536 0aed 02       		.byte	0x2
 1537 0aee CD050000 		.4byte	.LASF162
 1538 0af2 05       		.uleb128 0x5
 1539 0af3 EB0A0000 		.4byte	0xaeb
 1540 0af7 22       		.uleb128 0x22
 1541 0af8 4C080000 		.4byte	.LASF163
 1542 0afc 0D       		.byte	0xd
 1543 0afd 94       		.byte	0x94
 1544 0afe 9C000000 		.4byte	0x9c
 1545 0b02 05       		.uleb128 0x5
 1546 0b03 03       		.byte	0x3
 1547 0b04 00000000 		.4byte	cpu_irq_critical_section_counter
 1548 0b08 22       		.uleb128 0x22
 1549 0b09 CF030000 		.4byte	.LASF164
 1550 0b0d 0D       		.byte	0xd
 1551 0b0e 95       		.byte	0x95
 1552 0b0f F20A0000 		.4byte	0xaf2
 1553 0b13 05       		.uleb128 0x5
 1554 0b14 03       		.byte	0x3
 1555 0b15 00000000 		.4byte	cpu_irq_prev_interrupt_state
 1556 0b19 03       		.uleb128 0x3
 1557 0b1a 04       		.byte	0x4
 1558 0b1b 04       		.byte	0x4
 1559 0b1c 7D050000 		.4byte	.LASF165
 1560 0b20 03       		.uleb128 0x3
 1561 0b21 08       		.byte	0x8
 1562 0b22 04       		.byte	0x4
 1563 0b23 DA010000 		.4byte	.LASF166
 1564 0b27 0C       		.uleb128 0xc
 1565 0b28 20       		.byte	0x20
 1566 0b29 02       		.byte	0x2
 1567 0b2a B9       		.byte	0xb9
 1568 0b2b 900B0000 		.4byte	0xb90
 1569 0b2f 0D       		.uleb128 0xd
 1570 0b30 D5000000 		.4byte	.LASF167
ARM GAS  /tmp/cc6b4z2x.s 			page 42


 1571 0b34 02       		.byte	0x2
 1572 0b35 BB       		.byte	0xbb
 1573 0b36 91000000 		.4byte	0x91
 1574 0b3a 00       		.byte	0
 1575 0b3b 0D       		.uleb128 0xd
 1576 0b3c 8E070000 		.4byte	.LASF168
 1577 0b40 02       		.byte	0x2
 1578 0b41 BD       		.byte	0xbd
 1579 0b42 91000000 		.4byte	0x91
 1580 0b46 04       		.byte	0x4
 1581 0b47 0D       		.uleb128 0xd
 1582 0b48 D7070000 		.4byte	.LASF169
 1583 0b4c 02       		.byte	0x2
 1584 0b4d BF       		.byte	0xbf
 1585 0b4e 91000000 		.4byte	0x91
 1586 0b52 08       		.byte	0x8
 1587 0b53 0D       		.uleb128 0xd
 1588 0b54 1B020000 		.4byte	.LASF170
 1589 0b58 02       		.byte	0x2
 1590 0b59 C1       		.byte	0xc1
 1591 0b5a 91000000 		.4byte	0x91
 1592 0b5e 0C       		.byte	0xc
 1593 0b5f 0D       		.uleb128 0xd
 1594 0b60 B9050000 		.4byte	.LASF171
 1595 0b64 02       		.byte	0x2
 1596 0b65 C3       		.byte	0xc3
 1597 0b66 91000000 		.4byte	0x91
 1598 0b6a 10       		.byte	0x10
 1599 0b6b 0D       		.uleb128 0xd
 1600 0b6c 37080000 		.4byte	.LASF172
 1601 0b70 02       		.byte	0x2
 1602 0b71 C5       		.byte	0xc5
 1603 0b72 91000000 		.4byte	0x91
 1604 0b76 14       		.byte	0x14
 1605 0b77 0D       		.uleb128 0xd
 1606 0b78 FC020000 		.4byte	.LASF173
 1607 0b7c 02       		.byte	0x2
 1608 0b7d C7       		.byte	0xc7
 1609 0b7e 91000000 		.4byte	0x91
 1610 0b82 18       		.byte	0x18
 1611 0b83 0D       		.uleb128 0xd
 1612 0b84 B6060000 		.4byte	.LASF174
 1613 0b88 02       		.byte	0x2
 1614 0b89 C9       		.byte	0xc9
 1615 0b8a 91000000 		.4byte	0x91
 1616 0b8e 1C       		.byte	0x1c
 1617 0b8f 00       		.byte	0
 1618 0b90 04       		.uleb128 0x4
 1619 0b91 2E050000 		.4byte	.LASF175
 1620 0b95 02       		.byte	0x2
 1621 0b96 CA       		.byte	0xca
 1622 0b97 270B0000 		.4byte	0xb27
 1623 0b9b 23       		.uleb128 0x23
 1624 0b9c 39020000 		.4byte	.LASF198
 1625 0ba0 01       		.byte	0x1
 1626 0ba1 38       		.byte	0x38
 1627 0ba2 00000000 		.4byte	.LFB173
ARM GAS  /tmp/cc6b4z2x.s 			page 43


 1628 0ba6 44000000 		.4byte	.LFE173-.LFB173
 1629 0baa 01       		.uleb128 0x1
 1630 0bab 9C       		.byte	0x9c
 1631 0bac 780D0000 		.4byte	0xd78
 1632 0bb0 24       		.uleb128 0x24
 1633 0bb1 86030000 		.4byte	.LASF176
 1634 0bb5 01       		.byte	0x1
 1635 0bb6 38       		.byte	0x38
 1636 0bb7 780D0000 		.4byte	0xd78
 1637 0bbb 00000000 		.4byte	.LLST0
 1638 0bbf 24       		.uleb128 0x24
 1639 0bc0 2F060000 		.4byte	.LASF177
 1640 0bc4 01       		.byte	0x1
 1641 0bc5 39       		.byte	0x39
 1642 0bc6 91000000 		.4byte	0x91
 1643 0bca 21000000 		.4byte	.LLST1
 1644 0bce 25       		.uleb128 0x25
 1645 0bcf 63666700 		.ascii	"cfg\000"
 1646 0bd3 01       		.byte	0x1
 1647 0bd4 39       		.byte	0x39
 1648 0bd5 7E0D0000 		.4byte	0xd7e
 1649 0bd9 42000000 		.4byte	.LLST2
 1650 0bdd 26       		.uleb128 0x26
 1651 0bde 7E0E0000 		.4byte	0xe7e
 1652 0be2 00000000 		.4byte	.LBB20
 1653 0be6 00000000 		.4byte	.Ldebug_ranges0+0
 1654 0bea 01       		.byte	0x1
 1655 0beb 42       		.byte	0x42
 1656 0bec 0C0C0000 		.4byte	0xc0c
 1657 0bf0 27       		.uleb128 0x27
 1658 0bf1 A30E0000 		.4byte	0xea3
 1659 0bf5 63000000 		.4byte	.LLST3
 1660 0bf9 27       		.uleb128 0x27
 1661 0bfa 970E0000 		.4byte	0xe97
 1662 0bfe 78000000 		.4byte	.LLST4
 1663 0c02 27       		.uleb128 0x27
 1664 0c03 8B0E0000 		.4byte	0xe8b
 1665 0c07 8E000000 		.4byte	.LLST5
 1666 0c0b 00       		.byte	0
 1667 0c0c 26       		.uleb128 0x26
 1668 0c0d 140F0000 		.4byte	0xf14
 1669 0c11 02000000 		.4byte	.LBB24
 1670 0c15 20000000 		.4byte	.Ldebug_ranges0+0x20
 1671 0c19 01       		.byte	0x1
 1672 0c1a 3F       		.byte	0x3f
 1673 0c1b 320C0000 		.4byte	0xc32
 1674 0c1f 27       		.uleb128 0x27
 1675 0c20 2D0F0000 		.4byte	0xf2d
 1676 0c24 A4000000 		.4byte	.LLST6
 1677 0c28 27       		.uleb128 0x27
 1678 0c29 210F0000 		.4byte	0xf21
 1679 0c2d C5000000 		.4byte	.LLST7
 1680 0c31 00       		.byte	0
 1681 0c32 26       		.uleb128 0x26
 1682 0c33 B60D0000 		.4byte	0xdb6
 1683 0c37 06000000 		.4byte	.LBB27
 1684 0c3b 38000000 		.4byte	.Ldebug_ranges0+0x38
ARM GAS  /tmp/cc6b4z2x.s 			page 44


 1685 0c3f 01       		.byte	0x1
 1686 0c40 45       		.byte	0x45
 1687 0c41 610C0000 		.4byte	0xc61
 1688 0c45 27       		.uleb128 0x27
 1689 0c46 DB0D0000 		.4byte	0xddb
 1690 0c4a E6000000 		.4byte	.LLST8
 1691 0c4e 27       		.uleb128 0x27
 1692 0c4f CF0D0000 		.4byte	0xdcf
 1693 0c53 FD000000 		.4byte	.LLST9
 1694 0c57 27       		.uleb128 0x27
 1695 0c58 C30D0000 		.4byte	0xdc3
 1696 0c5c 13010000 		.4byte	.LLST10
 1697 0c60 00       		.byte	0
 1698 0c61 26       		.uleb128 0x26
 1699 0c62 4C0E0000 		.4byte	0xe4c
 1700 0c66 12000000 		.4byte	.LBB33
 1701 0c6a 58000000 		.4byte	.Ldebug_ranges0+0x58
 1702 0c6e 01       		.byte	0x1
 1703 0c6f 43       		.byte	0x43
 1704 0c70 900C0000 		.4byte	0xc90
 1705 0c74 27       		.uleb128 0x27
 1706 0c75 710E0000 		.4byte	0xe71
 1707 0c79 29010000 		.4byte	.LLST11
 1708 0c7d 27       		.uleb128 0x27
 1709 0c7e 650E0000 		.4byte	0xe65
 1710 0c82 40010000 		.4byte	.LLST12
 1711 0c86 27       		.uleb128 0x27
 1712 0c87 590E0000 		.4byte	0xe59
 1713 0c8b 56010000 		.4byte	.LLST13
 1714 0c8f 00       		.byte	0
 1715 0c90 26       		.uleb128 0x26
 1716 0c91 840D0000 		.4byte	0xd84
 1717 0c95 18000000 		.4byte	.LBB38
 1718 0c99 78000000 		.4byte	.Ldebug_ranges0+0x78
 1719 0c9d 01       		.byte	0x1
 1720 0c9e 46       		.byte	0x46
 1721 0c9f BF0C0000 		.4byte	0xcbf
 1722 0ca3 27       		.uleb128 0x27
 1723 0ca4 A90D0000 		.4byte	0xda9
 1724 0ca8 6C010000 		.4byte	.LLST14
 1725 0cac 27       		.uleb128 0x27
 1726 0cad 9D0D0000 		.4byte	0xd9d
 1727 0cb1 83010000 		.4byte	.LLST15
 1728 0cb5 27       		.uleb128 0x27
 1729 0cb6 910D0000 		.4byte	0xd91
 1730 0cba 99010000 		.4byte	.LLST16
 1731 0cbe 00       		.byte	0
 1732 0cbf 28       		.uleb128 0x28
 1733 0cc0 E20E0000 		.4byte	0xee2
 1734 0cc4 2C000000 		.4byte	.LBB44
 1735 0cc8 04000000 		.4byte	.LBE44-.LBB44
 1736 0ccc 01       		.byte	0x1
 1737 0ccd 40       		.byte	0x40
 1738 0cce EE0C0000 		.4byte	0xcee
 1739 0cd2 27       		.uleb128 0x27
 1740 0cd3 070F0000 		.4byte	0xf07
 1741 0cd7 AF010000 		.4byte	.LLST17
ARM GAS  /tmp/cc6b4z2x.s 			page 45


 1742 0cdb 27       		.uleb128 0x27
 1743 0cdc FB0E0000 		.4byte	0xefb
 1744 0ce0 C2010000 		.4byte	.LLST18
 1745 0ce4 27       		.uleb128 0x27
 1746 0ce5 EF0E0000 		.4byte	0xeef
 1747 0ce9 D8010000 		.4byte	.LLST19
 1748 0ced 00       		.byte	0
 1749 0cee 28       		.uleb128 0x28
 1750 0cef B00E0000 		.4byte	0xeb0
 1751 0cf3 30000000 		.4byte	.LBB46
 1752 0cf7 02000000 		.4byte	.LBE46-.LBB46
 1753 0cfb 01       		.byte	0x1
 1754 0cfc 41       		.byte	0x41
 1755 0cfd 1D0D0000 		.4byte	0xd1d
 1756 0d01 27       		.uleb128 0x27
 1757 0d02 D50E0000 		.4byte	0xed5
 1758 0d06 EE010000 		.4byte	.LLST20
 1759 0d0a 27       		.uleb128 0x27
 1760 0d0b C90E0000 		.4byte	0xec9
 1761 0d0f 01020000 		.4byte	.LLST21
 1762 0d13 27       		.uleb128 0x27
 1763 0d14 BD0E0000 		.4byte	0xebd
 1764 0d18 17020000 		.4byte	.LLST22
 1765 0d1c 00       		.byte	0
 1766 0d1d 28       		.uleb128 0x28
 1767 0d1e E80D0000 		.4byte	0xde8
 1768 0d22 36000000 		.4byte	.LBB50
 1769 0d26 02000000 		.4byte	.LBE50-.LBB50
 1770 0d2a 01       		.byte	0x1
 1771 0d2b 44       		.byte	0x44
 1772 0d2c 4C0D0000 		.4byte	0xd4c
 1773 0d30 27       		.uleb128 0x27
 1774 0d31 0D0E0000 		.4byte	0xe0d
 1775 0d35 2D020000 		.4byte	.LLST23
 1776 0d39 27       		.uleb128 0x27
 1777 0d3a 010E0000 		.4byte	0xe01
 1778 0d3e 40020000 		.4byte	.LLST24
 1779 0d42 27       		.uleb128 0x27
 1780 0d43 F50D0000 		.4byte	0xdf5
 1781 0d47 56020000 		.4byte	.LLST25
 1782 0d4b 00       		.byte	0
 1783 0d4c 29       		.uleb128 0x29
 1784 0d4d 1A0E0000 		.4byte	0xe1a
 1785 0d51 40000000 		.4byte	.LBB54
 1786 0d55 04000000 		.4byte	.LBE54-.LBB54
 1787 0d59 01       		.byte	0x1
 1788 0d5a 47       		.byte	0x47
 1789 0d5b 27       		.uleb128 0x27
 1790 0d5c 3F0E0000 		.4byte	0xe3f
 1791 0d60 6C020000 		.4byte	.LLST26
 1792 0d64 27       		.uleb128 0x27
 1793 0d65 330E0000 		.4byte	0xe33
 1794 0d69 7F020000 		.4byte	.LLST27
 1795 0d6d 27       		.uleb128 0x27
 1796 0d6e 270E0000 		.4byte	0xe27
 1797 0d72 95020000 		.4byte	.LLST28
 1798 0d76 00       		.byte	0
ARM GAS  /tmp/cc6b4z2x.s 			page 46


 1799 0d77 00       		.byte	0
 1800 0d78 14       		.uleb128 0x14
 1801 0d79 04       		.byte	0x4
 1802 0d7a C0020000 		.4byte	0x2c0
 1803 0d7e 14       		.uleb128 0x14
 1804 0d7f 04       		.byte	0x4
 1805 0d80 900B0000 		.4byte	0xb90
 1806 0d84 2A       		.uleb128 0x2a
 1807 0d85 01070000 		.4byte	.LASF179
 1808 0d89 02       		.byte	0x2
 1809 0d8a A702     		.2byte	0x2a7
 1810 0d8c 03       		.byte	0x3
 1811 0d8d B60D0000 		.4byte	0xdb6
 1812 0d91 2B       		.uleb128 0x2b
 1813 0d92 86030000 		.4byte	.LASF176
 1814 0d96 02       		.byte	0x2
 1815 0d97 A702     		.2byte	0x2a7
 1816 0d99 780D0000 		.4byte	0xd78
 1817 0d9d 2B       		.uleb128 0x2b
 1818 0d9e 2F060000 		.4byte	.LASF177
 1819 0da2 02       		.byte	0x2
 1820 0da3 A802     		.2byte	0x2a8
 1821 0da5 91000000 		.4byte	0x91
 1822 0da9 2B       		.uleb128 0x2b
 1823 0daa 93030000 		.4byte	.LASF178
 1824 0dae 02       		.byte	0x2
 1825 0daf A802     		.2byte	0x2a8
 1826 0db1 91000000 		.4byte	0x91
 1827 0db5 00       		.byte	0
 1828 0db6 2A       		.uleb128 0x2a
 1829 0db7 A4010000 		.4byte	.LASF180
 1830 0dbb 02       		.byte	0x2
 1831 0dbc 9802     		.2byte	0x298
 1832 0dbe 03       		.byte	0x3
 1833 0dbf E80D0000 		.4byte	0xde8
 1834 0dc3 2B       		.uleb128 0x2b
 1835 0dc4 86030000 		.4byte	.LASF176
 1836 0dc8 02       		.byte	0x2
 1837 0dc9 9802     		.2byte	0x298
 1838 0dcb 780D0000 		.4byte	0xd78
 1839 0dcf 2B       		.uleb128 0x2b
 1840 0dd0 2F060000 		.4byte	.LASF177
 1841 0dd4 02       		.byte	0x2
 1842 0dd5 9902     		.2byte	0x299
 1843 0dd7 91000000 		.4byte	0x91
 1844 0ddb 2B       		.uleb128 0x2b
 1845 0ddc 77000000 		.4byte	.LASF181
 1846 0de0 02       		.byte	0x2
 1847 0de1 9902     		.2byte	0x299
 1848 0de3 91000000 		.4byte	0x91
 1849 0de7 00       		.byte	0
 1850 0de8 2A       		.uleb128 0x2a
 1851 0de9 D1040000 		.4byte	.LASF182
 1852 0ded 02       		.byte	0x2
 1853 0dee 8A02     		.2byte	0x28a
 1854 0df0 03       		.byte	0x3
 1855 0df1 1A0E0000 		.4byte	0xe1a
ARM GAS  /tmp/cc6b4z2x.s 			page 47


 1856 0df5 2B       		.uleb128 0x2b
 1857 0df6 86030000 		.4byte	.LASF176
 1858 0dfa 02       		.byte	0x2
 1859 0dfb 8A02     		.2byte	0x28a
 1860 0dfd 780D0000 		.4byte	0xd78
 1861 0e01 2B       		.uleb128 0x2b
 1862 0e02 2F060000 		.4byte	.LASF177
 1863 0e06 02       		.byte	0x2
 1864 0e07 8A02     		.2byte	0x28a
 1865 0e09 91000000 		.4byte	0x91
 1866 0e0d 2B       		.uleb128 0x2b
 1867 0e0e 4F000000 		.4byte	.LASF183
 1868 0e12 02       		.byte	0x2
 1869 0e13 8A02     		.2byte	0x28a
 1870 0e15 91000000 		.4byte	0x91
 1871 0e19 00       		.byte	0
 1872 0e1a 2A       		.uleb128 0x2a
 1873 0e1b 7C000000 		.4byte	.LASF184
 1874 0e1f 02       		.byte	0x2
 1875 0e20 7C02     		.2byte	0x27c
 1876 0e22 03       		.byte	0x3
 1877 0e23 4C0E0000 		.4byte	0xe4c
 1878 0e27 2B       		.uleb128 0x2b
 1879 0e28 86030000 		.4byte	.LASF176
 1880 0e2c 02       		.byte	0x2
 1881 0e2d 7C02     		.2byte	0x27c
 1882 0e2f 780D0000 		.4byte	0xd78
 1883 0e33 2B       		.uleb128 0x2b
 1884 0e34 2F060000 		.4byte	.LASF177
 1885 0e38 02       		.byte	0x2
 1886 0e39 7C02     		.2byte	0x27c
 1887 0e3b 91000000 		.4byte	0x91
 1888 0e3f 2B       		.uleb128 0x2b
 1889 0e40 C8030000 		.4byte	.LASF185
 1890 0e44 02       		.byte	0x2
 1891 0e45 7C02     		.2byte	0x27c
 1892 0e47 91000000 		.4byte	0x91
 1893 0e4b 00       		.byte	0
 1894 0e4c 2A       		.uleb128 0x2a
 1895 0e4d 8A020000 		.4byte	.LASF186
 1896 0e51 02       		.byte	0x2
 1897 0e52 6E02     		.2byte	0x26e
 1898 0e54 03       		.byte	0x3
 1899 0e55 7E0E0000 		.4byte	0xe7e
 1900 0e59 2B       		.uleb128 0x2b
 1901 0e5a 86030000 		.4byte	.LASF176
 1902 0e5e 02       		.byte	0x2
 1903 0e5f 6E02     		.2byte	0x26e
 1904 0e61 780D0000 		.4byte	0xd78
 1905 0e65 2B       		.uleb128 0x2b
 1906 0e66 2F060000 		.4byte	.LASF177
 1907 0e6a 02       		.byte	0x2
 1908 0e6b 6E02     		.2byte	0x26e
 1909 0e6d 91000000 		.4byte	0x91
 1910 0e71 2B       		.uleb128 0x2b
 1911 0e72 F5050000 		.4byte	.LASF187
 1912 0e76 02       		.byte	0x2
ARM GAS  /tmp/cc6b4z2x.s 			page 48


 1913 0e77 6E02     		.2byte	0x26e
 1914 0e79 91000000 		.4byte	0x91
 1915 0e7d 00       		.byte	0
 1916 0e7e 2A       		.uleb128 0x2a
 1917 0e7f 05090000 		.4byte	.LASF188
 1918 0e83 02       		.byte	0x2
 1919 0e84 6002     		.2byte	0x260
 1920 0e86 03       		.byte	0x3
 1921 0e87 B00E0000 		.4byte	0xeb0
 1922 0e8b 2B       		.uleb128 0x2b
 1923 0e8c 86030000 		.4byte	.LASF176
 1924 0e90 02       		.byte	0x2
 1925 0e91 6002     		.2byte	0x260
 1926 0e93 780D0000 		.4byte	0xd78
 1927 0e97 2B       		.uleb128 0x2b
 1928 0e98 2F060000 		.4byte	.LASF177
 1929 0e9c 02       		.byte	0x2
 1930 0e9d 6002     		.2byte	0x260
 1931 0e9f 91000000 		.4byte	0x91
 1932 0ea3 2B       		.uleb128 0x2b
 1933 0ea4 C2030000 		.4byte	.LASF189
 1934 0ea8 02       		.byte	0x2
 1935 0ea9 6002     		.2byte	0x260
 1936 0eab 91000000 		.4byte	0x91
 1937 0eaf 00       		.byte	0
 1938 0eb0 2A       		.uleb128 0x2a
 1939 0eb1 EC030000 		.4byte	.LASF190
 1940 0eb5 02       		.byte	0x2
 1941 0eb6 3302     		.2byte	0x233
 1942 0eb8 03       		.byte	0x3
 1943 0eb9 E20E0000 		.4byte	0xee2
 1944 0ebd 2B       		.uleb128 0x2b
 1945 0ebe 86030000 		.4byte	.LASF176
 1946 0ec2 02       		.byte	0x2
 1947 0ec3 3302     		.2byte	0x233
 1948 0ec5 780D0000 		.4byte	0xd78
 1949 0ec9 2B       		.uleb128 0x2b
 1950 0eca 2F060000 		.4byte	.LASF177
 1951 0ece 02       		.byte	0x2
 1952 0ecf 3302     		.2byte	0x233
 1953 0ed1 91000000 		.4byte	0x91
 1954 0ed5 2B       		.uleb128 0x2b
 1955 0ed6 A7000000 		.4byte	.LASF191
 1956 0eda 02       		.byte	0x2
 1957 0edb 3302     		.2byte	0x233
 1958 0edd 91000000 		.4byte	0x91
 1959 0ee1 00       		.byte	0
 1960 0ee2 2A       		.uleb128 0x2a
 1961 0ee3 C4080000 		.4byte	.LASF192
 1962 0ee7 02       		.byte	0x2
 1963 0ee8 2502     		.2byte	0x225
 1964 0eea 03       		.byte	0x3
 1965 0eeb 140F0000 		.4byte	0xf14
 1966 0eef 2B       		.uleb128 0x2b
 1967 0ef0 86030000 		.4byte	.LASF176
 1968 0ef4 02       		.byte	0x2
 1969 0ef5 2502     		.2byte	0x225
ARM GAS  /tmp/cc6b4z2x.s 			page 49


 1970 0ef7 780D0000 		.4byte	0xd78
 1971 0efb 2B       		.uleb128 0x2b
 1972 0efc 2F060000 		.4byte	.LASF177
 1973 0f00 02       		.byte	0x2
 1974 0f01 2502     		.2byte	0x225
 1975 0f03 91000000 		.4byte	0x91
 1976 0f07 2B       		.uleb128 0x2b
 1977 0f08 F8060000 		.4byte	.LASF193
 1978 0f0c 02       		.byte	0x2
 1979 0f0d 2502     		.2byte	0x225
 1980 0f0f 91000000 		.4byte	0x91
 1981 0f13 00       		.byte	0
 1982 0f14 2C       		.uleb128 0x2c
 1983 0f15 45050000 		.4byte	.LASF194
 1984 0f19 02       		.byte	0x2
 1985 0f1a 0902     		.2byte	0x209
 1986 0f1c 91000000 		.4byte	0x91
 1987 0f20 03       		.byte	0x3
 1988 0f21 2B       		.uleb128 0x2b
 1989 0f22 86030000 		.4byte	.LASF176
 1990 0f26 02       		.byte	0x2
 1991 0f27 0902     		.2byte	0x209
 1992 0f29 780D0000 		.4byte	0xd78
 1993 0f2d 2B       		.uleb128 0x2b
 1994 0f2e 2F060000 		.4byte	.LASF177
 1995 0f32 02       		.byte	0x2
 1996 0f33 0902     		.2byte	0x209
 1997 0f35 91000000 		.4byte	0x91
 1998 0f39 00       		.byte	0
 1999 0f3a 00       		.byte	0
 2000              		.section	.debug_abbrev,"",%progbits
 2001              	.Ldebug_abbrev0:
 2002 0000 01       		.uleb128 0x1
 2003 0001 11       		.uleb128 0x11
 2004 0002 01       		.byte	0x1
 2005 0003 25       		.uleb128 0x25
 2006 0004 0E       		.uleb128 0xe
 2007 0005 13       		.uleb128 0x13
 2008 0006 0B       		.uleb128 0xb
 2009 0007 03       		.uleb128 0x3
 2010 0008 0E       		.uleb128 0xe
 2011 0009 1B       		.uleb128 0x1b
 2012 000a 0E       		.uleb128 0xe
 2013 000b 55       		.uleb128 0x55
 2014 000c 17       		.uleb128 0x17
 2015 000d 11       		.uleb128 0x11
 2016 000e 01       		.uleb128 0x1
 2017 000f 10       		.uleb128 0x10
 2018 0010 17       		.uleb128 0x17
 2019 0011 00       		.byte	0
 2020 0012 00       		.byte	0
 2021 0013 02       		.uleb128 0x2
 2022 0014 24       		.uleb128 0x24
 2023 0015 00       		.byte	0
 2024 0016 0B       		.uleb128 0xb
 2025 0017 0B       		.uleb128 0xb
 2026 0018 3E       		.uleb128 0x3e
ARM GAS  /tmp/cc6b4z2x.s 			page 50


 2027 0019 0B       		.uleb128 0xb
 2028 001a 03       		.uleb128 0x3
 2029 001b 08       		.uleb128 0x8
 2030 001c 00       		.byte	0
 2031 001d 00       		.byte	0
 2032 001e 03       		.uleb128 0x3
 2033 001f 24       		.uleb128 0x24
 2034 0020 00       		.byte	0
 2035 0021 0B       		.uleb128 0xb
 2036 0022 0B       		.uleb128 0xb
 2037 0023 3E       		.uleb128 0x3e
 2038 0024 0B       		.uleb128 0xb
 2039 0025 03       		.uleb128 0x3
 2040 0026 0E       		.uleb128 0xe
 2041 0027 00       		.byte	0
 2042 0028 00       		.byte	0
 2043 0029 04       		.uleb128 0x4
 2044 002a 16       		.uleb128 0x16
 2045 002b 00       		.byte	0
 2046 002c 03       		.uleb128 0x3
 2047 002d 0E       		.uleb128 0xe
 2048 002e 3A       		.uleb128 0x3a
 2049 002f 0B       		.uleb128 0xb
 2050 0030 3B       		.uleb128 0x3b
 2051 0031 0B       		.uleb128 0xb
 2052 0032 49       		.uleb128 0x49
 2053 0033 13       		.uleb128 0x13
 2054 0034 00       		.byte	0
 2055 0035 00       		.byte	0
 2056 0036 05       		.uleb128 0x5
 2057 0037 35       		.uleb128 0x35
 2058 0038 00       		.byte	0
 2059 0039 49       		.uleb128 0x49
 2060 003a 13       		.uleb128 0x13
 2061 003b 00       		.byte	0
 2062 003c 00       		.byte	0
 2063 003d 06       		.uleb128 0x6
 2064 003e 26       		.uleb128 0x26
 2065 003f 00       		.byte	0
 2066 0040 49       		.uleb128 0x49
 2067 0041 13       		.uleb128 0x13
 2068 0042 00       		.byte	0
 2069 0043 00       		.byte	0
 2070 0044 07       		.uleb128 0x7
 2071 0045 0F       		.uleb128 0xf
 2072 0046 00       		.byte	0
 2073 0047 0B       		.uleb128 0xb
 2074 0048 0B       		.uleb128 0xb
 2075 0049 00       		.byte	0
 2076 004a 00       		.byte	0
 2077 004b 08       		.uleb128 0x8
 2078 004c 01       		.uleb128 0x1
 2079 004d 01       		.byte	0x1
 2080 004e 49       		.uleb128 0x49
 2081 004f 13       		.uleb128 0x13
 2082 0050 01       		.uleb128 0x1
 2083 0051 13       		.uleb128 0x13
ARM GAS  /tmp/cc6b4z2x.s 			page 51


 2084 0052 00       		.byte	0
 2085 0053 00       		.byte	0
 2086 0054 09       		.uleb128 0x9
 2087 0055 21       		.uleb128 0x21
 2088 0056 00       		.byte	0
 2089 0057 49       		.uleb128 0x49
 2090 0058 13       		.uleb128 0x13
 2091 0059 2F       		.uleb128 0x2f
 2092 005a 0B       		.uleb128 0xb
 2093 005b 00       		.byte	0
 2094 005c 00       		.byte	0
 2095 005d 0A       		.uleb128 0xa
 2096 005e 34       		.uleb128 0x34
 2097 005f 00       		.byte	0
 2098 0060 03       		.uleb128 0x3
 2099 0061 0E       		.uleb128 0xe
 2100 0062 3A       		.uleb128 0x3a
 2101 0063 0B       		.uleb128 0xb
 2102 0064 3B       		.uleb128 0x3b
 2103 0065 05       		.uleb128 0x5
 2104 0066 49       		.uleb128 0x49
 2105 0067 13       		.uleb128 0x13
 2106 0068 3F       		.uleb128 0x3f
 2107 0069 19       		.uleb128 0x19
 2108 006a 3C       		.uleb128 0x3c
 2109 006b 19       		.uleb128 0x19
 2110 006c 00       		.byte	0
 2111 006d 00       		.byte	0
 2112 006e 0B       		.uleb128 0xb
 2113 006f 34       		.uleb128 0x34
 2114 0070 00       		.byte	0
 2115 0071 03       		.uleb128 0x3
 2116 0072 0E       		.uleb128 0xe
 2117 0073 3A       		.uleb128 0x3a
 2118 0074 0B       		.uleb128 0xb
 2119 0075 3B       		.uleb128 0x3b
 2120 0076 0B       		.uleb128 0xb
 2121 0077 49       		.uleb128 0x49
 2122 0078 13       		.uleb128 0x13
 2123 0079 3F       		.uleb128 0x3f
 2124 007a 19       		.uleb128 0x19
 2125 007b 3C       		.uleb128 0x3c
 2126 007c 19       		.uleb128 0x19
 2127 007d 00       		.byte	0
 2128 007e 00       		.byte	0
 2129 007f 0C       		.uleb128 0xc
 2130 0080 13       		.uleb128 0x13
 2131 0081 01       		.byte	0x1
 2132 0082 0B       		.uleb128 0xb
 2133 0083 0B       		.uleb128 0xb
 2134 0084 3A       		.uleb128 0x3a
 2135 0085 0B       		.uleb128 0xb
 2136 0086 3B       		.uleb128 0x3b
 2137 0087 0B       		.uleb128 0xb
 2138 0088 01       		.uleb128 0x1
 2139 0089 13       		.uleb128 0x13
 2140 008a 00       		.byte	0
ARM GAS  /tmp/cc6b4z2x.s 			page 52


 2141 008b 00       		.byte	0
 2142 008c 0D       		.uleb128 0xd
 2143 008d 0D       		.uleb128 0xd
 2144 008e 00       		.byte	0
 2145 008f 03       		.uleb128 0x3
 2146 0090 0E       		.uleb128 0xe
 2147 0091 3A       		.uleb128 0x3a
 2148 0092 0B       		.uleb128 0xb
 2149 0093 3B       		.uleb128 0x3b
 2150 0094 0B       		.uleb128 0xb
 2151 0095 49       		.uleb128 0x49
 2152 0096 13       		.uleb128 0x13
 2153 0097 38       		.uleb128 0x38
 2154 0098 0B       		.uleb128 0xb
 2155 0099 00       		.byte	0
 2156 009a 00       		.byte	0
 2157 009b 0E       		.uleb128 0xe
 2158 009c 13       		.uleb128 0x13
 2159 009d 01       		.byte	0x1
 2160 009e 0B       		.uleb128 0xb
 2161 009f 05       		.uleb128 0x5
 2162 00a0 3A       		.uleb128 0x3a
 2163 00a1 0B       		.uleb128 0xb
 2164 00a2 3B       		.uleb128 0x3b
 2165 00a3 0B       		.uleb128 0xb
 2166 00a4 01       		.uleb128 0x1
 2167 00a5 13       		.uleb128 0x13
 2168 00a6 00       		.byte	0
 2169 00a7 00       		.byte	0
 2170 00a8 0F       		.uleb128 0xf
 2171 00a9 16       		.uleb128 0x16
 2172 00aa 00       		.byte	0
 2173 00ab 03       		.uleb128 0x3
 2174 00ac 0E       		.uleb128 0xe
 2175 00ad 3A       		.uleb128 0x3a
 2176 00ae 0B       		.uleb128 0xb
 2177 00af 3B       		.uleb128 0x3b
 2178 00b0 05       		.uleb128 0x5
 2179 00b1 49       		.uleb128 0x49
 2180 00b2 13       		.uleb128 0x13
 2181 00b3 00       		.byte	0
 2182 00b4 00       		.byte	0
 2183 00b5 10       		.uleb128 0x10
 2184 00b6 17       		.uleb128 0x17
 2185 00b7 01       		.byte	0x1
 2186 00b8 0B       		.uleb128 0xb
 2187 00b9 0B       		.uleb128 0xb
 2188 00ba 3A       		.uleb128 0x3a
 2189 00bb 0B       		.uleb128 0xb
 2190 00bc 3B       		.uleb128 0x3b
 2191 00bd 0B       		.uleb128 0xb
 2192 00be 01       		.uleb128 0x1
 2193 00bf 13       		.uleb128 0x13
 2194 00c0 00       		.byte	0
 2195 00c1 00       		.byte	0
 2196 00c2 11       		.uleb128 0x11
 2197 00c3 0D       		.uleb128 0xd
ARM GAS  /tmp/cc6b4z2x.s 			page 53


 2198 00c4 00       		.byte	0
 2199 00c5 03       		.uleb128 0x3
 2200 00c6 0E       		.uleb128 0xe
 2201 00c7 3A       		.uleb128 0x3a
 2202 00c8 0B       		.uleb128 0xb
 2203 00c9 3B       		.uleb128 0x3b
 2204 00ca 0B       		.uleb128 0xb
 2205 00cb 49       		.uleb128 0x49
 2206 00cc 13       		.uleb128 0x13
 2207 00cd 00       		.byte	0
 2208 00ce 00       		.byte	0
 2209 00cf 12       		.uleb128 0x12
 2210 00d0 13       		.uleb128 0x13
 2211 00d1 01       		.byte	0x1
 2212 00d2 03       		.uleb128 0x3
 2213 00d3 0E       		.uleb128 0xe
 2214 00d4 0B       		.uleb128 0xb
 2215 00d5 0B       		.uleb128 0xb
 2216 00d6 3A       		.uleb128 0x3a
 2217 00d7 0B       		.uleb128 0xb
 2218 00d8 3B       		.uleb128 0x3b
 2219 00d9 0B       		.uleb128 0xb
 2220 00da 01       		.uleb128 0x1
 2221 00db 13       		.uleb128 0x13
 2222 00dc 00       		.byte	0
 2223 00dd 00       		.byte	0
 2224 00de 13       		.uleb128 0x13
 2225 00df 0D       		.uleb128 0xd
 2226 00e0 00       		.byte	0
 2227 00e1 03       		.uleb128 0x3
 2228 00e2 08       		.uleb128 0x8
 2229 00e3 3A       		.uleb128 0x3a
 2230 00e4 0B       		.uleb128 0xb
 2231 00e5 3B       		.uleb128 0x3b
 2232 00e6 0B       		.uleb128 0xb
 2233 00e7 49       		.uleb128 0x49
 2234 00e8 13       		.uleb128 0x13
 2235 00e9 38       		.uleb128 0x38
 2236 00ea 0B       		.uleb128 0xb
 2237 00eb 00       		.byte	0
 2238 00ec 00       		.byte	0
 2239 00ed 14       		.uleb128 0x14
 2240 00ee 0F       		.uleb128 0xf
 2241 00ef 00       		.byte	0
 2242 00f0 0B       		.uleb128 0xb
 2243 00f1 0B       		.uleb128 0xb
 2244 00f2 49       		.uleb128 0x49
 2245 00f3 13       		.uleb128 0x13
 2246 00f4 00       		.byte	0
 2247 00f5 00       		.byte	0
 2248 00f6 15       		.uleb128 0x15
 2249 00f7 13       		.uleb128 0x13
 2250 00f8 01       		.byte	0x1
 2251 00f9 03       		.uleb128 0x3
 2252 00fa 0E       		.uleb128 0xe
 2253 00fb 0B       		.uleb128 0xb
 2254 00fc 05       		.uleb128 0x5
ARM GAS  /tmp/cc6b4z2x.s 			page 54


 2255 00fd 3A       		.uleb128 0x3a
 2256 00fe 0B       		.uleb128 0xb
 2257 00ff 3B       		.uleb128 0x3b
 2258 0100 0B       		.uleb128 0xb
 2259 0101 01       		.uleb128 0x1
 2260 0102 13       		.uleb128 0x13
 2261 0103 00       		.byte	0
 2262 0104 00       		.byte	0
 2263 0105 16       		.uleb128 0x16
 2264 0106 0D       		.uleb128 0xd
 2265 0107 00       		.byte	0
 2266 0108 03       		.uleb128 0x3
 2267 0109 0E       		.uleb128 0xe
 2268 010a 3A       		.uleb128 0x3a
 2269 010b 0B       		.uleb128 0xb
 2270 010c 3B       		.uleb128 0x3b
 2271 010d 0B       		.uleb128 0xb
 2272 010e 49       		.uleb128 0x49
 2273 010f 13       		.uleb128 0x13
 2274 0110 38       		.uleb128 0x38
 2275 0111 05       		.uleb128 0x5
 2276 0112 00       		.byte	0
 2277 0113 00       		.byte	0
 2278 0114 17       		.uleb128 0x17
 2279 0115 15       		.uleb128 0x15
 2280 0116 00       		.byte	0
 2281 0117 27       		.uleb128 0x27
 2282 0118 19       		.uleb128 0x19
 2283 0119 00       		.byte	0
 2284 011a 00       		.byte	0
 2285 011b 18       		.uleb128 0x18
 2286 011c 15       		.uleb128 0x15
 2287 011d 01       		.byte	0x1
 2288 011e 27       		.uleb128 0x27
 2289 011f 19       		.uleb128 0x19
 2290 0120 49       		.uleb128 0x49
 2291 0121 13       		.uleb128 0x13
 2292 0122 01       		.uleb128 0x1
 2293 0123 13       		.uleb128 0x13
 2294 0124 00       		.byte	0
 2295 0125 00       		.byte	0
 2296 0126 19       		.uleb128 0x19
 2297 0127 05       		.uleb128 0x5
 2298 0128 00       		.byte	0
 2299 0129 49       		.uleb128 0x49
 2300 012a 13       		.uleb128 0x13
 2301 012b 00       		.byte	0
 2302 012c 00       		.byte	0
 2303 012d 1A       		.uleb128 0x1a
 2304 012e 13       		.uleb128 0x13
 2305 012f 01       		.byte	0x1
 2306 0130 03       		.uleb128 0x3
 2307 0131 0E       		.uleb128 0xe
 2308 0132 0B       		.uleb128 0xb
 2309 0133 05       		.uleb128 0x5
 2310 0134 3A       		.uleb128 0x3a
 2311 0135 0B       		.uleb128 0xb
ARM GAS  /tmp/cc6b4z2x.s 			page 55


 2312 0136 3B       		.uleb128 0x3b
 2313 0137 05       		.uleb128 0x5
 2314 0138 01       		.uleb128 0x1
 2315 0139 13       		.uleb128 0x13
 2316 013a 00       		.byte	0
 2317 013b 00       		.byte	0
 2318 013c 1B       		.uleb128 0x1b
 2319 013d 0D       		.uleb128 0xd
 2320 013e 00       		.byte	0
 2321 013f 03       		.uleb128 0x3
 2322 0140 0E       		.uleb128 0xe
 2323 0141 3A       		.uleb128 0x3a
 2324 0142 0B       		.uleb128 0xb
 2325 0143 3B       		.uleb128 0x3b
 2326 0144 05       		.uleb128 0x5
 2327 0145 49       		.uleb128 0x49
 2328 0146 13       		.uleb128 0x13
 2329 0147 38       		.uleb128 0x38
 2330 0148 0B       		.uleb128 0xb
 2331 0149 00       		.byte	0
 2332 014a 00       		.byte	0
 2333 014b 1C       		.uleb128 0x1c
 2334 014c 0D       		.uleb128 0xd
 2335 014d 00       		.byte	0
 2336 014e 03       		.uleb128 0x3
 2337 014f 0E       		.uleb128 0xe
 2338 0150 3A       		.uleb128 0x3a
 2339 0151 0B       		.uleb128 0xb
 2340 0152 3B       		.uleb128 0x3b
 2341 0153 05       		.uleb128 0x5
 2342 0154 49       		.uleb128 0x49
 2343 0155 13       		.uleb128 0x13
 2344 0156 38       		.uleb128 0x38
 2345 0157 05       		.uleb128 0x5
 2346 0158 00       		.byte	0
 2347 0159 00       		.byte	0
 2348 015a 1D       		.uleb128 0x1d
 2349 015b 13       		.uleb128 0x13
 2350 015c 01       		.byte	0x1
 2351 015d 03       		.uleb128 0x3
 2352 015e 0E       		.uleb128 0xe
 2353 015f 0B       		.uleb128 0xb
 2354 0160 0B       		.uleb128 0xb
 2355 0161 3A       		.uleb128 0x3a
 2356 0162 0B       		.uleb128 0xb
 2357 0163 3B       		.uleb128 0x3b
 2358 0164 05       		.uleb128 0x5
 2359 0165 01       		.uleb128 0x1
 2360 0166 13       		.uleb128 0x13
 2361 0167 00       		.byte	0
 2362 0168 00       		.byte	0
 2363 0169 1E       		.uleb128 0x1e
 2364 016a 13       		.uleb128 0x13
 2365 016b 01       		.byte	0x1
 2366 016c 0B       		.uleb128 0xb
 2367 016d 0B       		.uleb128 0xb
 2368 016e 3A       		.uleb128 0x3a
ARM GAS  /tmp/cc6b4z2x.s 			page 56


 2369 016f 0B       		.uleb128 0xb
 2370 0170 3B       		.uleb128 0x3b
 2371 0171 05       		.uleb128 0x5
 2372 0172 01       		.uleb128 0x1
 2373 0173 13       		.uleb128 0x13
 2374 0174 00       		.byte	0
 2375 0175 00       		.byte	0
 2376 0176 1F       		.uleb128 0x1f
 2377 0177 17       		.uleb128 0x17
 2378 0178 01       		.byte	0x1
 2379 0179 0B       		.uleb128 0xb
 2380 017a 0B       		.uleb128 0xb
 2381 017b 3A       		.uleb128 0x3a
 2382 017c 0B       		.uleb128 0xb
 2383 017d 3B       		.uleb128 0x3b
 2384 017e 05       		.uleb128 0x5
 2385 017f 01       		.uleb128 0x1
 2386 0180 13       		.uleb128 0x13
 2387 0181 00       		.byte	0
 2388 0182 00       		.byte	0
 2389 0183 20       		.uleb128 0x20
 2390 0184 0D       		.uleb128 0xd
 2391 0185 00       		.byte	0
 2392 0186 03       		.uleb128 0x3
 2393 0187 0E       		.uleb128 0xe
 2394 0188 3A       		.uleb128 0x3a
 2395 0189 0B       		.uleb128 0xb
 2396 018a 3B       		.uleb128 0x3b
 2397 018b 05       		.uleb128 0x5
 2398 018c 49       		.uleb128 0x49
 2399 018d 13       		.uleb128 0x13
 2400 018e 00       		.byte	0
 2401 018f 00       		.byte	0
 2402 0190 21       		.uleb128 0x21
 2403 0191 15       		.uleb128 0x15
 2404 0192 01       		.byte	0x1
 2405 0193 27       		.uleb128 0x27
 2406 0194 19       		.uleb128 0x19
 2407 0195 01       		.uleb128 0x1
 2408 0196 13       		.uleb128 0x13
 2409 0197 00       		.byte	0
 2410 0198 00       		.byte	0
 2411 0199 22       		.uleb128 0x22
 2412 019a 34       		.uleb128 0x34
 2413 019b 00       		.byte	0
 2414 019c 03       		.uleb128 0x3
 2415 019d 0E       		.uleb128 0xe
 2416 019e 3A       		.uleb128 0x3a
 2417 019f 0B       		.uleb128 0xb
 2418 01a0 3B       		.uleb128 0x3b
 2419 01a1 0B       		.uleb128 0xb
 2420 01a2 49       		.uleb128 0x49
 2421 01a3 13       		.uleb128 0x13
 2422 01a4 02       		.uleb128 0x2
 2423 01a5 18       		.uleb128 0x18
 2424 01a6 00       		.byte	0
 2425 01a7 00       		.byte	0
ARM GAS  /tmp/cc6b4z2x.s 			page 57


 2426 01a8 23       		.uleb128 0x23
 2427 01a9 2E       		.uleb128 0x2e
 2428 01aa 01       		.byte	0x1
 2429 01ab 3F       		.uleb128 0x3f
 2430 01ac 19       		.uleb128 0x19
 2431 01ad 03       		.uleb128 0x3
 2432 01ae 0E       		.uleb128 0xe
 2433 01af 3A       		.uleb128 0x3a
 2434 01b0 0B       		.uleb128 0xb
 2435 01b1 3B       		.uleb128 0x3b
 2436 01b2 0B       		.uleb128 0xb
 2437 01b3 27       		.uleb128 0x27
 2438 01b4 19       		.uleb128 0x19
 2439 01b5 11       		.uleb128 0x11
 2440 01b6 01       		.uleb128 0x1
 2441 01b7 12       		.uleb128 0x12
 2442 01b8 06       		.uleb128 0x6
 2443 01b9 40       		.uleb128 0x40
 2444 01ba 18       		.uleb128 0x18
 2445 01bb 9742     		.uleb128 0x2117
 2446 01bd 19       		.uleb128 0x19
 2447 01be 01       		.uleb128 0x1
 2448 01bf 13       		.uleb128 0x13
 2449 01c0 00       		.byte	0
 2450 01c1 00       		.byte	0
 2451 01c2 24       		.uleb128 0x24
 2452 01c3 05       		.uleb128 0x5
 2453 01c4 00       		.byte	0
 2454 01c5 03       		.uleb128 0x3
 2455 01c6 0E       		.uleb128 0xe
 2456 01c7 3A       		.uleb128 0x3a
 2457 01c8 0B       		.uleb128 0xb
 2458 01c9 3B       		.uleb128 0x3b
 2459 01ca 0B       		.uleb128 0xb
 2460 01cb 49       		.uleb128 0x49
 2461 01cc 13       		.uleb128 0x13
 2462 01cd 02       		.uleb128 0x2
 2463 01ce 17       		.uleb128 0x17
 2464 01cf 00       		.byte	0
 2465 01d0 00       		.byte	0
 2466 01d1 25       		.uleb128 0x25
 2467 01d2 05       		.uleb128 0x5
 2468 01d3 00       		.byte	0
 2469 01d4 03       		.uleb128 0x3
 2470 01d5 08       		.uleb128 0x8
 2471 01d6 3A       		.uleb128 0x3a
 2472 01d7 0B       		.uleb128 0xb
 2473 01d8 3B       		.uleb128 0x3b
 2474 01d9 0B       		.uleb128 0xb
 2475 01da 49       		.uleb128 0x49
 2476 01db 13       		.uleb128 0x13
 2477 01dc 02       		.uleb128 0x2
 2478 01dd 17       		.uleb128 0x17
 2479 01de 00       		.byte	0
 2480 01df 00       		.byte	0
 2481 01e0 26       		.uleb128 0x26
 2482 01e1 1D       		.uleb128 0x1d
ARM GAS  /tmp/cc6b4z2x.s 			page 58


 2483 01e2 01       		.byte	0x1
 2484 01e3 31       		.uleb128 0x31
 2485 01e4 13       		.uleb128 0x13
 2486 01e5 52       		.uleb128 0x52
 2487 01e6 01       		.uleb128 0x1
 2488 01e7 55       		.uleb128 0x55
 2489 01e8 17       		.uleb128 0x17
 2490 01e9 58       		.uleb128 0x58
 2491 01ea 0B       		.uleb128 0xb
 2492 01eb 59       		.uleb128 0x59
 2493 01ec 0B       		.uleb128 0xb
 2494 01ed 01       		.uleb128 0x1
 2495 01ee 13       		.uleb128 0x13
 2496 01ef 00       		.byte	0
 2497 01f0 00       		.byte	0
 2498 01f1 27       		.uleb128 0x27
 2499 01f2 05       		.uleb128 0x5
 2500 01f3 00       		.byte	0
 2501 01f4 31       		.uleb128 0x31
 2502 01f5 13       		.uleb128 0x13
 2503 01f6 02       		.uleb128 0x2
 2504 01f7 17       		.uleb128 0x17
 2505 01f8 00       		.byte	0
 2506 01f9 00       		.byte	0
 2507 01fa 28       		.uleb128 0x28
 2508 01fb 1D       		.uleb128 0x1d
 2509 01fc 01       		.byte	0x1
 2510 01fd 31       		.uleb128 0x31
 2511 01fe 13       		.uleb128 0x13
 2512 01ff 11       		.uleb128 0x11
 2513 0200 01       		.uleb128 0x1
 2514 0201 12       		.uleb128 0x12
 2515 0202 06       		.uleb128 0x6
 2516 0203 58       		.uleb128 0x58
 2517 0204 0B       		.uleb128 0xb
 2518 0205 59       		.uleb128 0x59
 2519 0206 0B       		.uleb128 0xb
 2520 0207 01       		.uleb128 0x1
 2521 0208 13       		.uleb128 0x13
 2522 0209 00       		.byte	0
 2523 020a 00       		.byte	0
 2524 020b 29       		.uleb128 0x29
 2525 020c 1D       		.uleb128 0x1d
 2526 020d 01       		.byte	0x1
 2527 020e 31       		.uleb128 0x31
 2528 020f 13       		.uleb128 0x13
 2529 0210 11       		.uleb128 0x11
 2530 0211 01       		.uleb128 0x1
 2531 0212 12       		.uleb128 0x12
 2532 0213 06       		.uleb128 0x6
 2533 0214 58       		.uleb128 0x58
 2534 0215 0B       		.uleb128 0xb
 2535 0216 59       		.uleb128 0x59
 2536 0217 0B       		.uleb128 0xb
 2537 0218 00       		.byte	0
 2538 0219 00       		.byte	0
 2539 021a 2A       		.uleb128 0x2a
ARM GAS  /tmp/cc6b4z2x.s 			page 59


 2540 021b 2E       		.uleb128 0x2e
 2541 021c 01       		.byte	0x1
 2542 021d 03       		.uleb128 0x3
 2543 021e 0E       		.uleb128 0xe
 2544 021f 3A       		.uleb128 0x3a
 2545 0220 0B       		.uleb128 0xb
 2546 0221 3B       		.uleb128 0x3b
 2547 0222 05       		.uleb128 0x5
 2548 0223 27       		.uleb128 0x27
 2549 0224 19       		.uleb128 0x19
 2550 0225 20       		.uleb128 0x20
 2551 0226 0B       		.uleb128 0xb
 2552 0227 01       		.uleb128 0x1
 2553 0228 13       		.uleb128 0x13
 2554 0229 00       		.byte	0
 2555 022a 00       		.byte	0
 2556 022b 2B       		.uleb128 0x2b
 2557 022c 05       		.uleb128 0x5
 2558 022d 00       		.byte	0
 2559 022e 03       		.uleb128 0x3
 2560 022f 0E       		.uleb128 0xe
 2561 0230 3A       		.uleb128 0x3a
 2562 0231 0B       		.uleb128 0xb
 2563 0232 3B       		.uleb128 0x3b
 2564 0233 05       		.uleb128 0x5
 2565 0234 49       		.uleb128 0x49
 2566 0235 13       		.uleb128 0x13
 2567 0236 00       		.byte	0
 2568 0237 00       		.byte	0
 2569 0238 2C       		.uleb128 0x2c
 2570 0239 2E       		.uleb128 0x2e
 2571 023a 01       		.byte	0x1
 2572 023b 03       		.uleb128 0x3
 2573 023c 0E       		.uleb128 0xe
 2574 023d 3A       		.uleb128 0x3a
 2575 023e 0B       		.uleb128 0xb
 2576 023f 3B       		.uleb128 0x3b
 2577 0240 05       		.uleb128 0x5
 2578 0241 27       		.uleb128 0x27
 2579 0242 19       		.uleb128 0x19
 2580 0243 49       		.uleb128 0x49
 2581 0244 13       		.uleb128 0x13
 2582 0245 20       		.uleb128 0x20
 2583 0246 0B       		.uleb128 0xb
 2584 0247 00       		.byte	0
 2585 0248 00       		.byte	0
 2586 0249 00       		.byte	0
 2587              		.section	.debug_loc,"",%progbits
 2588              	.Ldebug_loc0:
 2589              	.LLST0:
 2590 0000 00000000 		.4byte	.LVL0
 2591 0004 08000000 		.4byte	.LVL2
 2592 0008 0100     		.2byte	0x1
 2593 000a 50       		.byte	0x50
 2594 000b 08000000 		.4byte	.LVL2
 2595 000f 44000000 		.4byte	.LFE173
 2596 0013 0400     		.2byte	0x4
ARM GAS  /tmp/cc6b4z2x.s 			page 60


 2597 0015 F3       		.byte	0xf3
 2598 0016 01       		.uleb128 0x1
 2599 0017 50       		.byte	0x50
 2600 0018 9F       		.byte	0x9f
 2601 0019 00000000 		.4byte	0
 2602 001d 00000000 		.4byte	0
 2603              	.LLST1:
 2604 0021 00000000 		.4byte	.LVL0
 2605 0025 06000000 		.4byte	.LVL1
 2606 0029 0100     		.2byte	0x1
 2607 002b 51       		.byte	0x51
 2608 002c 06000000 		.4byte	.LVL1
 2609 0030 44000000 		.4byte	.LFE173
 2610 0034 0400     		.2byte	0x4
 2611 0036 F3       		.byte	0xf3
 2612 0037 01       		.uleb128 0x1
 2613 0038 51       		.byte	0x51
 2614 0039 9F       		.byte	0x9f
 2615 003a 00000000 		.4byte	0
 2616 003e 00000000 		.4byte	0
 2617              	.LLST2:
 2618 0042 00000000 		.4byte	.LVL0
 2619 0046 2C000000 		.4byte	.LVL4
 2620 004a 0100     		.2byte	0x1
 2621 004c 52       		.byte	0x52
 2622 004d 2C000000 		.4byte	.LVL4
 2623 0051 44000000 		.4byte	.LFE173
 2624 0055 0400     		.2byte	0x4
 2625 0057 F3       		.byte	0xf3
 2626 0058 01       		.uleb128 0x1
 2627 0059 52       		.byte	0x52
 2628 005a 9F       		.byte	0x9f
 2629 005b 00000000 		.4byte	0
 2630 005f 00000000 		.4byte	0
 2631              	.LLST3:
 2632 0063 32000000 		.4byte	.LVL6
 2633 0067 34000000 		.4byte	.LVL7
 2634 006b 0300     		.2byte	0x3
 2635 006d F3       		.byte	0xf3
 2636 006e 01       		.uleb128 0x1
 2637 006f 52       		.byte	0x52
 2638 0070 00000000 		.4byte	0
 2639 0074 00000000 		.4byte	0
 2640              	.LLST4:
 2641 0078 32000000 		.4byte	.LVL6
 2642 007c 34000000 		.4byte	.LVL7
 2643 0080 0400     		.2byte	0x4
 2644 0082 F3       		.byte	0xf3
 2645 0083 01       		.uleb128 0x1
 2646 0084 51       		.byte	0x51
 2647 0085 9F       		.byte	0x9f
 2648 0086 00000000 		.4byte	0
 2649 008a 00000000 		.4byte	0
 2650              	.LLST5:
 2651 008e 32000000 		.4byte	.LVL6
 2652 0092 34000000 		.4byte	.LVL7
 2653 0096 0400     		.2byte	0x4
ARM GAS  /tmp/cc6b4z2x.s 			page 61


 2654 0098 F3       		.byte	0xf3
 2655 0099 01       		.uleb128 0x1
 2656 009a 50       		.byte	0x50
 2657 009b 9F       		.byte	0x9f
 2658 009c 00000000 		.4byte	0
 2659 00a0 00000000 		.4byte	0
 2660              	.LLST6:
 2661 00a4 00000000 		.4byte	.LVL0
 2662 00a8 06000000 		.4byte	.LVL1
 2663 00ac 0100     		.2byte	0x1
 2664 00ae 51       		.byte	0x51
 2665 00af 06000000 		.4byte	.LVL1
 2666 00b3 2A000000 		.4byte	.LVL3
 2667 00b7 0400     		.2byte	0x4
 2668 00b9 F3       		.byte	0xf3
 2669 00ba 01       		.uleb128 0x1
 2670 00bb 51       		.byte	0x51
 2671 00bc 9F       		.byte	0x9f
 2672 00bd 00000000 		.4byte	0
 2673 00c1 00000000 		.4byte	0
 2674              	.LLST7:
 2675 00c5 00000000 		.4byte	.LVL0
 2676 00c9 08000000 		.4byte	.LVL2
 2677 00cd 0100     		.2byte	0x1
 2678 00cf 50       		.byte	0x50
 2679 00d0 08000000 		.4byte	.LVL2
 2680 00d4 2A000000 		.4byte	.LVL3
 2681 00d8 0400     		.2byte	0x4
 2682 00da F3       		.byte	0xf3
 2683 00db 01       		.uleb128 0x1
 2684 00dc 50       		.byte	0x50
 2685 00dd 9F       		.byte	0x9f
 2686 00de 00000000 		.4byte	0
 2687 00e2 00000000 		.4byte	0
 2688              	.LLST8:
 2689 00e6 38000000 		.4byte	.LVL9
 2690 00ea 3C000000 		.4byte	.LVL10
 2691 00ee 0500     		.2byte	0x5
 2692 00f0 F3       		.byte	0xf3
 2693 00f1 01       		.uleb128 0x1
 2694 00f2 52       		.byte	0x52
 2695 00f3 23       		.byte	0x23
 2696 00f4 18       		.uleb128 0x18
 2697 00f5 00000000 		.4byte	0
 2698 00f9 00000000 		.4byte	0
 2699              	.LLST9:
 2700 00fd 38000000 		.4byte	.LVL9
 2701 0101 3C000000 		.4byte	.LVL10
 2702 0105 0400     		.2byte	0x4
 2703 0107 F3       		.byte	0xf3
 2704 0108 01       		.uleb128 0x1
 2705 0109 51       		.byte	0x51
 2706 010a 9F       		.byte	0x9f
 2707 010b 00000000 		.4byte	0
 2708 010f 00000000 		.4byte	0
 2709              	.LLST10:
 2710 0113 38000000 		.4byte	.LVL9
ARM GAS  /tmp/cc6b4z2x.s 			page 62


 2711 0117 3C000000 		.4byte	.LVL10
 2712 011b 0400     		.2byte	0x4
 2713 011d F3       		.byte	0xf3
 2714 011e 01       		.uleb128 0x1
 2715 011f 50       		.byte	0x50
 2716 0120 9F       		.byte	0x9f
 2717 0121 00000000 		.4byte	0
 2718 0125 00000000 		.4byte	0
 2719              	.LLST11:
 2720 0129 34000000 		.4byte	.LVL7
 2721 012d 36000000 		.4byte	.LVL8
 2722 0131 0500     		.2byte	0x5
 2723 0133 F3       		.byte	0xf3
 2724 0134 01       		.uleb128 0x1
 2725 0135 52       		.byte	0x52
 2726 0136 23       		.byte	0x23
 2727 0137 10       		.uleb128 0x10
 2728 0138 00000000 		.4byte	0
 2729 013c 00000000 		.4byte	0
 2730              	.LLST12:
 2731 0140 34000000 		.4byte	.LVL7
 2732 0144 36000000 		.4byte	.LVL8
 2733 0148 0400     		.2byte	0x4
 2734 014a F3       		.byte	0xf3
 2735 014b 01       		.uleb128 0x1
 2736 014c 51       		.byte	0x51
 2737 014d 9F       		.byte	0x9f
 2738 014e 00000000 		.4byte	0
 2739 0152 00000000 		.4byte	0
 2740              	.LLST13:
 2741 0156 34000000 		.4byte	.LVL7
 2742 015a 36000000 		.4byte	.LVL8
 2743 015e 0400     		.2byte	0x4
 2744 0160 F3       		.byte	0xf3
 2745 0161 01       		.uleb128 0x1
 2746 0162 50       		.byte	0x50
 2747 0163 9F       		.byte	0x9f
 2748 0164 00000000 		.4byte	0
 2749 0168 00000000 		.4byte	0
 2750              	.LLST14:
 2751 016c 3C000000 		.4byte	.LVL10
 2752 0170 40000000 		.4byte	.LVL11
 2753 0174 0500     		.2byte	0x5
 2754 0176 F3       		.byte	0xf3
 2755 0177 01       		.uleb128 0x1
 2756 0178 52       		.byte	0x52
 2757 0179 23       		.byte	0x23
 2758 017a 1C       		.uleb128 0x1c
 2759 017b 00000000 		.4byte	0
 2760 017f 00000000 		.4byte	0
 2761              	.LLST15:
 2762 0183 3C000000 		.4byte	.LVL10
 2763 0187 40000000 		.4byte	.LVL11
 2764 018b 0400     		.2byte	0x4
 2765 018d F3       		.byte	0xf3
 2766 018e 01       		.uleb128 0x1
 2767 018f 51       		.byte	0x51
ARM GAS  /tmp/cc6b4z2x.s 			page 63


 2768 0190 9F       		.byte	0x9f
 2769 0191 00000000 		.4byte	0
 2770 0195 00000000 		.4byte	0
 2771              	.LLST16:
 2772 0199 3C000000 		.4byte	.LVL10
 2773 019d 40000000 		.4byte	.LVL11
 2774 01a1 0400     		.2byte	0x4
 2775 01a3 F3       		.byte	0xf3
 2776 01a4 01       		.uleb128 0x1
 2777 01a5 50       		.byte	0x50
 2778 01a6 9F       		.byte	0x9f
 2779 01a7 00000000 		.4byte	0
 2780 01ab 00000000 		.4byte	0
 2781              	.LLST17:
 2782 01af 2A000000 		.4byte	.LVL3
 2783 01b3 30000000 		.4byte	.LVL5
 2784 01b7 0100     		.2byte	0x1
 2785 01b9 5E       		.byte	0x5e
 2786 01ba 00000000 		.4byte	0
 2787 01be 00000000 		.4byte	0
 2788              	.LLST18:
 2789 01c2 2A000000 		.4byte	.LVL3
 2790 01c6 30000000 		.4byte	.LVL5
 2791 01ca 0400     		.2byte	0x4
 2792 01cc F3       		.byte	0xf3
 2793 01cd 01       		.uleb128 0x1
 2794 01ce 51       		.byte	0x51
 2795 01cf 9F       		.byte	0x9f
 2796 01d0 00000000 		.4byte	0
 2797 01d4 00000000 		.4byte	0
 2798              	.LLST19:
 2799 01d8 2A000000 		.4byte	.LVL3
 2800 01dc 30000000 		.4byte	.LVL5
 2801 01e0 0400     		.2byte	0x4
 2802 01e2 F3       		.byte	0xf3
 2803 01e3 01       		.uleb128 0x1
 2804 01e4 50       		.byte	0x50
 2805 01e5 9F       		.byte	0x9f
 2806 01e6 00000000 		.4byte	0
 2807 01ea 00000000 		.4byte	0
 2808              	.LLST20:
 2809 01ee 30000000 		.4byte	.LVL5
 2810 01f2 32000000 		.4byte	.LVL6
 2811 01f6 0100     		.2byte	0x1
 2812 01f8 57       		.byte	0x57
 2813 01f9 00000000 		.4byte	0
 2814 01fd 00000000 		.4byte	0
 2815              	.LLST21:
 2816 0201 30000000 		.4byte	.LVL5
 2817 0205 32000000 		.4byte	.LVL6
 2818 0209 0400     		.2byte	0x4
 2819 020b F3       		.byte	0xf3
 2820 020c 01       		.uleb128 0x1
 2821 020d 51       		.byte	0x51
 2822 020e 9F       		.byte	0x9f
 2823 020f 00000000 		.4byte	0
 2824 0213 00000000 		.4byte	0
ARM GAS  /tmp/cc6b4z2x.s 			page 64


 2825              	.LLST22:
 2826 0217 30000000 		.4byte	.LVL5
 2827 021b 32000000 		.4byte	.LVL6
 2828 021f 0400     		.2byte	0x4
 2829 0221 F3       		.byte	0xf3
 2830 0222 01       		.uleb128 0x1
 2831 0223 50       		.byte	0x50
 2832 0224 9F       		.byte	0x9f
 2833 0225 00000000 		.4byte	0
 2834 0229 00000000 		.4byte	0
 2835              	.LLST23:
 2836 022d 36000000 		.4byte	.LVL8
 2837 0231 38000000 		.4byte	.LVL9
 2838 0235 0100     		.2byte	0x1
 2839 0237 56       		.byte	0x56
 2840 0238 00000000 		.4byte	0
 2841 023c 00000000 		.4byte	0
 2842              	.LLST24:
 2843 0240 36000000 		.4byte	.LVL8
 2844 0244 38000000 		.4byte	.LVL9
 2845 0248 0400     		.2byte	0x4
 2846 024a F3       		.byte	0xf3
 2847 024b 01       		.uleb128 0x1
 2848 024c 51       		.byte	0x51
 2849 024d 9F       		.byte	0x9f
 2850 024e 00000000 		.4byte	0
 2851 0252 00000000 		.4byte	0
 2852              	.LLST25:
 2853 0256 36000000 		.4byte	.LVL8
 2854 025a 38000000 		.4byte	.LVL9
 2855 025e 0400     		.2byte	0x4
 2856 0260 F3       		.byte	0xf3
 2857 0261 01       		.uleb128 0x1
 2858 0262 50       		.byte	0x50
 2859 0263 9F       		.byte	0x9f
 2860 0264 00000000 		.4byte	0
 2861 0268 00000000 		.4byte	0
 2862              	.LLST26:
 2863 026c 40000000 		.4byte	.LVL11
 2864 0270 42000000 		.4byte	.LVL12
 2865 0274 0100     		.2byte	0x1
 2866 0276 52       		.byte	0x52
 2867 0277 00000000 		.4byte	0
 2868 027b 00000000 		.4byte	0
 2869              	.LLST27:
 2870 027f 40000000 		.4byte	.LVL11
 2871 0283 42000000 		.4byte	.LVL12
 2872 0287 0400     		.2byte	0x4
 2873 0289 F3       		.byte	0xf3
 2874 028a 01       		.uleb128 0x1
 2875 028b 51       		.byte	0x51
 2876 028c 9F       		.byte	0x9f
 2877 028d 00000000 		.4byte	0
 2878 0291 00000000 		.4byte	0
 2879              	.LLST28:
 2880 0295 40000000 		.4byte	.LVL11
 2881 0299 42000000 		.4byte	.LVL12
ARM GAS  /tmp/cc6b4z2x.s 			page 65


 2882 029d 0400     		.2byte	0x4
 2883 029f F3       		.byte	0xf3
 2884 02a0 01       		.uleb128 0x1
 2885 02a1 50       		.byte	0x50
 2886 02a2 9F       		.byte	0x9f
 2887 02a3 00000000 		.4byte	0
 2888 02a7 00000000 		.4byte	0
 2889              		.section	.debug_aranges,"",%progbits
 2890 0000 1C000000 		.4byte	0x1c
 2891 0004 0200     		.2byte	0x2
 2892 0006 00000000 		.4byte	.Ldebug_info0
 2893 000a 04       		.byte	0x4
 2894 000b 00       		.byte	0
 2895 000c 0000     		.2byte	0
 2896 000e 0000     		.2byte	0
 2897 0010 00000000 		.4byte	.LFB173
 2898 0014 44000000 		.4byte	.LFE173-.LFB173
 2899 0018 00000000 		.4byte	0
 2900 001c 00000000 		.4byte	0
 2901              		.section	.debug_ranges,"",%progbits
 2902              	.Ldebug_ranges0:
 2903 0000 00000000 		.4byte	.LBB20
 2904 0004 02000000 		.4byte	.LBE20
 2905 0008 14000000 		.4byte	.LBB37
 2906 000c 18000000 		.4byte	.LBE37
 2907 0010 32000000 		.4byte	.LBB48
 2908 0014 34000000 		.4byte	.LBE48
 2909 0018 00000000 		.4byte	0
 2910 001c 00000000 		.4byte	0
 2911 0020 02000000 		.4byte	.LBB24
 2912 0024 06000000 		.4byte	.LBE24
 2913 0028 08000000 		.4byte	.LBB31
 2914 002c 0C000000 		.4byte	.LBE31
 2915 0030 00000000 		.4byte	0
 2916 0034 00000000 		.4byte	0
 2917 0038 06000000 		.4byte	.LBB27
 2918 003c 08000000 		.4byte	.LBE27
 2919 0040 0C000000 		.4byte	.LBB32
 2920 0044 10000000 		.4byte	.LBE32
 2921 0048 38000000 		.4byte	.LBB52
 2922 004c 3C000000 		.4byte	.LBE52
 2923 0050 00000000 		.4byte	0
 2924 0054 00000000 		.4byte	0
 2925 0058 12000000 		.4byte	.LBB33
 2926 005c 14000000 		.4byte	.LBE33
 2927 0060 1E000000 		.4byte	.LBB42
 2928 0064 22000000 		.4byte	.LBE42
 2929 0068 34000000 		.4byte	.LBB49
 2930 006c 36000000 		.4byte	.LBE49
 2931 0070 00000000 		.4byte	0
 2932 0074 00000000 		.4byte	0
 2933 0078 18000000 		.4byte	.LBB38
 2934 007c 1A000000 		.4byte	.LBE38
 2935 0080 24000000 		.4byte	.LBB43
 2936 0084 28000000 		.4byte	.LBE43
 2937 0088 3C000000 		.4byte	.LBB53
 2938 008c 40000000 		.4byte	.LBE53
ARM GAS  /tmp/cc6b4z2x.s 			page 66


 2939 0090 00000000 		.4byte	0
 2940 0094 00000000 		.4byte	0
 2941 0098 00000000 		.4byte	.LFB173
 2942 009c 44000000 		.4byte	.LFE173
 2943 00a0 00000000 		.4byte	0
 2944 00a4 00000000 		.4byte	0
 2945              		.section	.debug_line,"",%progbits
 2946              	.Ldebug_line0:
 2947 0000 DE020000 		.section	.debug_str,"MS",%progbits,1
 2947      02006602 
 2947      00000201 
 2947      FB0E0D00 
 2947      01010101 
 2948              	.LASF50:
 2949 0000 58646D61 		.ascii	"Xdmac\000"
 2949      6300
 2950              	.LASF3:
 2951 0006 73686F72 		.ascii	"short int\000"
 2951      7420696E 
 2951      7400
 2952              	.LASF140:
 2953 0010 5F67616D 		.ascii	"_gamma_signgam\000"
 2953      6D615F73 
 2953      69676E67 
 2953      616D00
 2954              	.LASF132:
 2955 001f 5F72616E 		.ascii	"_rand48\000"
 2955      64343800 
 2956              	.LASF111:
 2957 0027 5F656D65 		.ascii	"_emergency\000"
 2957      7267656E 
 2957      637900
 2958              	.LASF42:
 2959 0032 58444D41 		.ascii	"XDMAC_GRS\000"
 2959      435F4752 
 2959      5300
 2960              	.LASF148:
 2961 003c 5F676574 		.ascii	"_getdate_err\000"
 2961      64617465 
 2961      5F657272 
 2961      00
 2962              	.LASF101:
 2963 0049 5F646174 		.ascii	"_data\000"
 2963      6100
 2964              	.LASF183:
 2965 004f 6464735F 		.ascii	"dds_msp\000"
 2965      6D737000 
 2966              	.LASF152:
 2967 0057 5F776372 		.ascii	"_wcrtomb_state\000"
 2967      746F6D62 
 2967      5F737461 
 2967      746500
 2968              	.LASF153:
 2969 0066 5F776373 		.ascii	"_wcsrtombs_state\000"
 2969      72746F6D 
 2969      62735F73 
 2969      74617465 
ARM GAS  /tmp/cc6b4z2x.s 			page 67


 2969      00
 2970              	.LASF181:
 2971 0077 73756273 		.ascii	"subs\000"
 2971      00
 2972              	.LASF184:
 2973 007c 78646D61 		.ascii	"xdmac_channel_set_config\000"
 2973      635F6368 
 2973      616E6E65 
 2973      6C5F7365 
 2973      745F636F 
 2974              	.LASF39:
 2975 0095 58444D41 		.ascii	"XDMAC_GE\000"
 2975      435F4745 
 2975      00
 2976              	.LASF91:
 2977 009e 5F6C6266 		.ascii	"_lbfsize\000"
 2977      73697A65 
 2977      00
 2978              	.LASF191:
 2979 00a7 6473745F 		.ascii	"dst_addr\000"
 2979      61646472 
 2979      00
 2980              	.LASF14:
 2981 00b0 49544D5F 		.ascii	"ITM_RxBuffer\000"
 2981      52784275 
 2981      66666572 
 2981      00
 2982              	.LASF41:
 2983 00bd 58444D41 		.ascii	"XDMAC_GS\000"
 2983      435F4753 
 2983      00
 2984              	.LASF150:
 2985 00c6 5F6D6272 		.ascii	"_mbrtowc_state\000"
 2985      746F7763 
 2985      5F737461 
 2985      746500
 2986              	.LASF167:
 2987 00d5 6D62725F 		.ascii	"mbr_ubc\000"
 2987      75626300 
 2988              	.LASF145:
 2989 00dd 5F776374 		.ascii	"_wctomb_state\000"
 2989      6F6D625F 
 2989      73746174 
 2989      6500
 2990              	.LASF28:
 2991 00eb 58444D41 		.ascii	"XDMAC_CSUS\000"
 2991      435F4353 
 2991      555300
 2992              	.LASF45:
 2993 00f6 58444D41 		.ascii	"XDMAC_GRWR\000"
 2993      435F4752 
 2993      575200
 2994              	.LASF44:
 2995 0101 58444D41 		.ascii	"XDMAC_GRWS\000"
 2995      435F4752 
 2995      575300
 2996              	.LASF96:
ARM GAS  /tmp/cc6b4z2x.s 			page 68


 2997 010c 5F636C6F 		.ascii	"_close\000"
 2997      736500
 2998              	.LASF1:
 2999 0113 7369676E 		.ascii	"signed char\000"
 2999      65642063 
 2999      68617200 
 3000              	.LASF97:
 3001 011f 5F756275 		.ascii	"_ubuf\000"
 3001      6600
 3002              	.LASF86:
 3003 0125 5F626173 		.ascii	"_base\000"
 3003      6500
 3004              	.LASF30:
 3005 012b 52657365 		.ascii	"Reserved1\000"
 3005      72766564 
 3005      3100
 3006              	.LASF70:
 3007 0135 5F5F746D 		.ascii	"__tm_hour\000"
 3007      5F686F75 
 3007      7200
 3008              	.LASF126:
 3009 013f 5F5F7366 		.ascii	"__sf\000"
 3009      00
 3010              	.LASF77:
 3011 0144 5F6F6E5F 		.ascii	"_on_exit_args\000"
 3011      65786974 
 3011      5F617267 
 3011      7300
 3012              	.LASF92:
 3013 0152 5F636F6F 		.ascii	"_cookie\000"
 3013      6B696500 
 3014              	.LASF125:
 3015 015a 5F5F7367 		.ascii	"__sglue\000"
 3015      6C756500 
 3016              	.LASF5:
 3017 0162 6C6F6E67 		.ascii	"long int\000"
 3017      20696E74 
 3017      00
 3018              	.LASF89:
 3019 016b 5F666C61 		.ascii	"_flags\000"
 3019      677300
 3020              	.LASF81:
 3021 0172 5F69735F 		.ascii	"_is_cxa\000"
 3021      63786100 
 3022              	.LASF65:
 3023 017a 5F776473 		.ascii	"_wds\000"
 3023      00
 3024              	.LASF0:
 3025 017f 756E7369 		.ascii	"unsigned int\000"
 3025      676E6564 
 3025      20696E74 
 3025      00
 3026              	.LASF117:
 3027 018c 5F726573 		.ascii	"_result_k\000"
 3027      756C745F 
 3027      6B00
 3028              	.LASF9:
ARM GAS  /tmp/cc6b4z2x.s 			page 69


 3029 0196 6C6F6E67 		.ascii	"long long int\000"
 3029      206C6F6E 
 3029      6720696E 
 3029      7400
 3030              	.LASF180:
 3031 01a4 78646D61 		.ascii	"xdmac_channel_set_source_microblock_stride\000"
 3031      635F6368 
 3031      616E6E65 
 3031      6C5F7365 
 3031      745F736F 
 3032              	.LASF114:
 3033 01cf 5F5F7364 		.ascii	"__sdidinit\000"
 3033      6964696E 
 3033      697400
 3034              	.LASF166:
 3035 01da 646F7562 		.ascii	"double\000"
 3035      6C6500
 3036              	.LASF24:
 3037 01e1 58444D41 		.ascii	"XDMAC_CUBC\000"
 3037      435F4355 
 3037      424300
 3038              	.LASF121:
 3039 01ec 5F637674 		.ascii	"_cvtbuf\000"
 3039      62756600 
 3040              	.LASF151:
 3041 01f4 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 3041      72746F77 
 3041      63735F73 
 3041      74617465 
 3041      00
 3042              	.LASF149:
 3043 0205 5F6D6272 		.ascii	"_mbrlen_state\000"
 3043      6C656E5F 
 3043      73746174 
 3043      6500
 3044              	.LASF78:
 3045 0213 5F666E61 		.ascii	"_fnargs\000"
 3045      72677300 
 3046              	.LASF170:
 3047 021b 6D62725F 		.ascii	"mbr_cfg\000"
 3047      63666700 
 3048              	.LASF84:
 3049 0223 5F666E73 		.ascii	"_fns\000"
 3049      00
 3050              	.LASF7:
 3051 0228 5F5F7569 		.ascii	"__uint32_t\000"
 3051      6E743332 
 3051      5F7400
 3052              	.LASF64:
 3053 0233 5F736967 		.ascii	"_sign\000"
 3053      6E00
 3054              	.LASF198:
 3055 0239 78646D61 		.ascii	"xdmac_configure_transfer\000"
 3055      635F636F 
 3055      6E666967 
 3055      7572655F 
 3055      7472616E 
ARM GAS  /tmp/cc6b4z2x.s 			page 70


 3056              	.LASF158:
 3057 0252 5F696D70 		.ascii	"_impure_ptr\000"
 3057      7572655F 
 3057      70747200 
 3058              	.LASF109:
 3059 025e 5F737464 		.ascii	"_stderr\000"
 3059      65727200 
 3060              	.LASF66:
 3061 0266 5F426967 		.ascii	"_Bigint\000"
 3061      696E7400 
 3062              	.LASF32:
 3063 026e 58444D41 		.ascii	"XDMAC_GTYPE\000"
 3063      435F4754 
 3063      59504500 
 3064              	.LASF34:
 3065 027a 58444D41 		.ascii	"XDMAC_GWAC\000"
 3065      435F4757 
 3065      414300
 3066              	.LASF67:
 3067 0285 5F5F746D 		.ascii	"__tm\000"
 3067      00
 3068              	.LASF186:
 3069 028a 78646D61 		.ascii	"xdmac_channel_set_block_control\000"
 3069      635F6368 
 3069      616E6E65 
 3069      6C5F7365 
 3069      745F626C 
 3070              	.LASF103:
 3071 02aa 5F6D6273 		.ascii	"_mbstate\000"
 3071      74617465 
 3071      00
 3072              	.LASF56:
 3073 02b3 5F5F7763 		.ascii	"__wchb\000"
 3073      686200
 3074              	.LASF15:
 3075 02ba 53797374 		.ascii	"SystemCoreClock\000"
 3075      656D436F 
 3075      7265436C 
 3075      6F636B00 
 3076              	.LASF120:
 3077 02ca 5F637674 		.ascii	"_cvtlen\000"
 3077      6C656E00 
 3078              	.LASF8:
 3079 02d2 6C6F6E67 		.ascii	"long unsigned int\000"
 3079      20756E73 
 3079      69676E65 
 3079      6420696E 
 3079      7400
 3080              	.LASF90:
 3081 02e4 5F66696C 		.ascii	"_file\000"
 3081      6500
 3082              	.LASF29:
 3083 02ea 58444D41 		.ascii	"XDMAC_CDUS\000"
 3083      435F4344 
 3083      555300
 3084              	.LASF130:
 3085 02f5 5F6E696F 		.ascii	"_niobs\000"
ARM GAS  /tmp/cc6b4z2x.s 			page 71


 3085      627300
 3086              	.LASF173:
 3087 02fc 6D62725F 		.ascii	"mbr_sus\000"
 3087      73757300 
 3088              	.LASF10:
 3089 0304 6C6F6E67 		.ascii	"long long unsigned int\000"
 3089      206C6F6E 
 3089      6720756E 
 3089      7369676E 
 3089      65642069 
 3090              	.LASF4:
 3091 031b 73686F72 		.ascii	"short unsigned int\000"
 3091      7420756E 
 3091      7369676E 
 3091      65642069 
 3091      6E7400
 3092              	.LASF123:
 3093 032e 5F617465 		.ascii	"_atexit0\000"
 3093      78697430 
 3093      00
 3094              	.LASF147:
 3095 0337 5F736967 		.ascii	"_signal_buf\000"
 3095      6E616C5F 
 3095      62756600 
 3096              	.LASF138:
 3097 0343 5F617363 		.ascii	"_asctime_buf\000"
 3097      74696D65 
 3097      5F627566 
 3097      00
 3098              	.LASF196:
 3099 0350 2E2E2F61 		.ascii	"../asf/sam/drivers/xdmac/xdmac.c\000"
 3099      73662F73 
 3099      616D2F64 
 3099      72697665 
 3099      72732F78 
 3100              	.LASF116:
 3101 0371 5F726573 		.ascii	"_result\000"
 3101      756C7400 
 3102              	.LASF55:
 3103 0379 5F5F7763 		.ascii	"__wch\000"
 3103      6800
 3104              	.LASF155:
 3105 037f 5F6E6578 		.ascii	"_nextf\000"
 3105      746600
 3106              	.LASF176:
 3107 0386 78646D61 		.ascii	"xdmac\000"
 3107      6300
 3108              	.LASF54:
 3109 038c 77696E74 		.ascii	"wint_t\000"
 3109      5F7400
 3110              	.LASF178:
 3111 0393 64756273 		.ascii	"dubs\000"
 3111      00
 3112              	.LASF102:
 3113 0398 5F6C6F63 		.ascii	"_lock\000"
 3113      6B00
 3114              	.LASF134:
ARM GAS  /tmp/cc6b4z2x.s 			page 72


 3115 039e 5F6D756C 		.ascii	"_mult\000"
 3115      7400
 3116              	.LASF94:
 3117 03a4 5F777269 		.ascii	"_write\000"
 3117      746500
 3118              	.LASF73:
 3119 03ab 5F5F746D 		.ascii	"__tm_year\000"
 3119      5F796561 
 3119      7200
 3120              	.LASF136:
 3121 03b5 5F756E75 		.ascii	"_unused_rand\000"
 3121      7365645F 
 3121      72616E64 
 3121      00
 3122              	.LASF189:
 3123 03c2 75626C65 		.ascii	"ublen\000"
 3123      6E00
 3124              	.LASF185:
 3125 03c8 636F6E66 		.ascii	"config\000"
 3125      696700
 3126              	.LASF164:
 3127 03cf 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 3127      6972715F 
 3127      70726576 
 3127      5F696E74 
 3127      65727275 
 3128              	.LASF190:
 3129 03ec 78646D61 		.ascii	"xdmac_channel_set_destination_addr\000"
 3129      635F6368 
 3129      616E6E65 
 3129      6C5F7365 
 3129      745F6465 
 3130              	.LASF13:
 3131 040f 73697A65 		.ascii	"sizetype\000"
 3131      74797065 
 3131      00
 3132              	.LASF100:
 3133 0418 5F6F6666 		.ascii	"_offset\000"
 3133      73657400 
 3134              	.LASF49:
 3135 0420 58444D41 		.ascii	"XDMAC_CHID\000"
 3135      435F4348 
 3135      494400
 3136              	.LASF195:
 3137 042b 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 3137      43393920 
 3137      362E332E 
 3137      31203230 
 3137      31373036 
 3138 045e 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 3138      76352D64 
 3138      3136202D 
 3138      6D666C6F 
 3138      61742D61 
 3139 0491 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 3139      6E2D7365 
 3139      6374696F 
ARM GAS  /tmp/cc6b4z2x.s 			page 73


 3139      6E73202D 
 3139      66646174 
 3140 04c4 6F6E7374 		.ascii	"onstant\000"
 3140      616E7400 
 3141              	.LASF142:
 3142 04cc 5F723438 		.ascii	"_r48\000"
 3142      00
 3143              	.LASF182:
 3144 04d1 78646D61 		.ascii	"xdmac_channel_set_datastride_mempattern\000"
 3144      635F6368 
 3144      616E6E65 
 3144      6C5F7365 
 3144      745F6461 
 3145              	.LASF60:
 3146 04f9 5F666C6F 		.ascii	"_flock_t\000"
 3146      636B5F74 
 3146      00
 3147              	.LASF72:
 3148 0502 5F5F746D 		.ascii	"__tm_mon\000"
 3148      5F6D6F6E 
 3148      00
 3149              	.LASF82:
 3150 050b 5F617465 		.ascii	"_atexit\000"
 3150      78697400 
 3151              	.LASF160:
 3152 0513 7375626F 		.ascii	"suboptarg\000"
 3152      70746172 
 3152      6700
 3153              	.LASF17:
 3154 051d 58444D41 		.ascii	"XDMAC_CID\000"
 3154      435F4349 
 3154      4400
 3155              	.LASF52:
 3156 0527 5F6F6666 		.ascii	"_off_t\000"
 3156      5F7400
 3157              	.LASF175:
 3158 052e 78646D61 		.ascii	"xdmac_channel_config_t\000"
 3158      635F6368 
 3158      616E6E65 
 3158      6C5F636F 
 3158      6E666967 
 3159              	.LASF194:
 3160 0545 78646D61 		.ascii	"xdmac_channel_get_interrupt_status\000"
 3160      635F6368 
 3160      616E6E65 
 3160      6C5F6765 
 3160      745F696E 
 3161              	.LASF18:
 3162 0568 58444D41 		.ascii	"XDMAC_CIM\000"
 3162      435F4349 
 3162      4D00
 3163              	.LASF33:
 3164 0572 58444D41 		.ascii	"XDMAC_GCFG\000"
 3164      435F4743 
 3164      464700
 3165              	.LASF165:
 3166 057d 666C6F61 		.ascii	"float\000"
ARM GAS  /tmp/cc6b4z2x.s 			page 74


 3166      7400
 3167              	.LASF19:
 3168 0583 58444D41 		.ascii	"XDMAC_CIS\000"
 3168      435F4349 
 3168      5300
 3169              	.LASF161:
 3170 058d 675F696E 		.ascii	"g_interrupt_enabled\000"
 3170      74657272 
 3170      7570745F 
 3170      656E6162 
 3170      6C656400 
 3171              	.LASF51:
 3172 05a1 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 3172      4B5F5245 
 3172      43555253 
 3172      4956455F 
 3172      5400
 3173              	.LASF93:
 3174 05b3 5F726561 		.ascii	"_read\000"
 3174      6400
 3175              	.LASF171:
 3176 05b9 6D62725F 		.ascii	"mbr_bc\000"
 3176      626300
 3177              	.LASF143:
 3178 05c0 5F6D626C 		.ascii	"_mblen_state\000"
 3178      656E5F73 
 3178      74617465 
 3178      00
 3179              	.LASF162:
 3180 05cd 5F426F6F 		.ascii	"_Bool\000"
 3180      6C00
 3181              	.LASF11:
 3182 05d3 696E7433 		.ascii	"int32_t\000"
 3182      325F7400 
 3183              	.LASF79:
 3184 05db 5F64736F 		.ascii	"_dso_handle\000"
 3184      5F68616E 
 3184      646C6500 
 3185              	.LASF122:
 3186 05e7 5F6E6577 		.ascii	"_new\000"
 3186      00
 3187              	.LASF154:
 3188 05ec 5F685F65 		.ascii	"_h_errno\000"
 3188      72726E6F 
 3188      00
 3189              	.LASF187:
 3190 05f5 626C656E 		.ascii	"blen\000"
 3190      00
 3191              	.LASF75:
 3192 05fa 5F5F746D 		.ascii	"__tm_yday\000"
 3192      5F796461 
 3192      7900
 3193              	.LASF85:
 3194 0604 5F5F7362 		.ascii	"__sbuf\000"
 3194      756600
 3195              	.LASF104:
 3196 060b 5F666C61 		.ascii	"_flags2\000"
ARM GAS  /tmp/cc6b4z2x.s 			page 75


 3196      67733200 
 3197              	.LASF119:
 3198 0613 5F667265 		.ascii	"_freelist\000"
 3198      656C6973 
 3198      7400
 3199              	.LASF128:
 3200 061d 5F5F4649 		.ascii	"__FILE\000"
 3200      4C4500
 3201              	.LASF59:
 3202 0624 5F6D6273 		.ascii	"_mbstate_t\000"
 3202      74617465 
 3202      5F7400
 3203              	.LASF177:
 3204 062f 6368616E 		.ascii	"channel_num\000"
 3204      6E656C5F 
 3204      6E756D00 
 3205              	.LASF88:
 3206 063b 5F5F7346 		.ascii	"__sFILE\000"
 3206      494C4500 
 3207              	.LASF141:
 3208 0643 5F72616E 		.ascii	"_rand_next\000"
 3208      645F6E65 
 3208      787400
 3209              	.LASF131:
 3210 064e 5F696F62 		.ascii	"_iobs\000"
 3210      7300
 3211              	.LASF110:
 3212 0654 5F696E63 		.ascii	"_inc\000"
 3212      00
 3213              	.LASF83:
 3214 0659 5F696E64 		.ascii	"_ind\000"
 3214      00
 3215              	.LASF113:
 3216 065e 5F637572 		.ascii	"_current_locale\000"
 3216      72656E74 
 3216      5F6C6F63 
 3216      616C6500 
 3217              	.LASF115:
 3218 066e 5F5F636C 		.ascii	"__cleanup\000"
 3218      65616E75 
 3218      7000
 3219              	.LASF43:
 3220 0678 58444D41 		.ascii	"XDMAC_GWS\000"
 3220      435F4757 
 3220      5300
 3221              	.LASF63:
 3222 0682 5F6D6178 		.ascii	"_maxwds\000"
 3222      77647300 
 3223              	.LASF105:
 3224 068a 5F726565 		.ascii	"_reent\000"
 3224      6E7400
 3225              	.LASF133:
 3226 0691 5F736565 		.ascii	"_seed\000"
 3226      6400
 3227              	.LASF57:
 3228 0697 5F5F636F 		.ascii	"__count\000"
 3228      756E7400 
ARM GAS  /tmp/cc6b4z2x.s 			page 76


 3229              	.LASF12:
 3230 069f 75696E74 		.ascii	"uint32_t\000"
 3230      33325F74 
 3230      00
 3231              	.LASF95:
 3232 06a8 5F736565 		.ascii	"_seek\000"
 3232      6B00
 3233              	.LASF53:
 3234 06ae 5F66706F 		.ascii	"_fpos_t\000"
 3234      735F7400 
 3235              	.LASF174:
 3236 06b6 6D62725F 		.ascii	"mbr_dus\000"
 3236      64757300 
 3237              	.LASF127:
 3238 06be 63686172 		.ascii	"char\000"
 3238      00
 3239              	.LASF106:
 3240 06c3 5F657272 		.ascii	"_errno\000"
 3240      6E6F00
 3241              	.LASF99:
 3242 06ca 5F626C6B 		.ascii	"_blksize\000"
 3242      73697A65 
 3242      00
 3243              	.LASF22:
 3244 06d3 58444D41 		.ascii	"XDMAC_CNDA\000"
 3244      435F434E 
 3244      444100
 3245              	.LASF87:
 3246 06de 5F73697A 		.ascii	"_size\000"
 3246      6500
 3247              	.LASF23:
 3248 06e4 58444D41 		.ascii	"XDMAC_CNDC\000"
 3248      435F434E 
 3248      444300
 3249              	.LASF40:
 3250 06ef 58444D41 		.ascii	"XDMAC_GD\000"
 3250      435F4744 
 3250      00
 3251              	.LASF193:
 3252 06f8 7372635F 		.ascii	"src_addr\000"
 3252      61646472 
 3252      00
 3253              	.LASF179:
 3254 0701 78646D61 		.ascii	"xdmac_channel_set_destination_microblock_stride\000"
 3254      635F6368 
 3254      616E6E65 
 3254      6C5F7365 
 3254      745F6465 
 3255              	.LASF6:
 3256 0731 5F5F696E 		.ascii	"__int32_t\000"
 3256      7433325F 
 3256      7400
 3257              	.LASF62:
 3258 073b 5F6E6578 		.ascii	"_next\000"
 3258      7400
 3259              	.LASF137:
 3260 0741 5F737472 		.ascii	"_strtok_last\000"
ARM GAS  /tmp/cc6b4z2x.s 			page 77


 3260      746F6B5F 
 3260      6C617374 
 3260      00
 3261              	.LASF58:
 3262 074e 5F5F7661 		.ascii	"__value\000"
 3262      6C756500 
 3263              	.LASF80:
 3264 0756 5F666E74 		.ascii	"_fntypes\000"
 3264      79706573 
 3264      00
 3265              	.LASF2:
 3266 075f 756E7369 		.ascii	"unsigned char\000"
 3266      676E6564 
 3266      20636861 
 3266      7200
 3267              	.LASF135:
 3268 076d 5F616464 		.ascii	"_add\000"
 3268      00
 3269              	.LASF61:
 3270 0772 5F5F554C 		.ascii	"__ULong\000"
 3270      6F6E6700 
 3271              	.LASF36:
 3272 077a 58444D41 		.ascii	"XDMAC_GID\000"
 3272      435F4749 
 3272      4400
 3273              	.LASF35:
 3274 0784 58444D41 		.ascii	"XDMAC_GIE\000"
 3274      435F4749 
 3274      4500
 3275              	.LASF168:
 3276 078e 6D62725F 		.ascii	"mbr_sa\000"
 3276      736100
 3277              	.LASF159:
 3278 0795 5F676C6F 		.ascii	"_global_impure_ptr\000"
 3278      62616C5F 
 3278      696D7075 
 3278      72655F70 
 3278      747200
 3279              	.LASF112:
 3280 07a8 5F637572 		.ascii	"_current_category\000"
 3280      72656E74 
 3280      5F636174 
 3280      65676F72 
 3280      7900
 3281              	.LASF37:
 3282 07ba 58444D41 		.ascii	"XDMAC_GIM\000"
 3282      435F4749 
 3282      4D00
 3283              	.LASF26:
 3284 07c4 58444D41 		.ascii	"XDMAC_CC\000"
 3284      435F4343 
 3284      00
 3285              	.LASF38:
 3286 07cd 58444D41 		.ascii	"XDMAC_GIS\000"
 3286      435F4749 
 3286      5300
 3287              	.LASF169:
ARM GAS  /tmp/cc6b4z2x.s 			page 78


 3288 07d7 6D62725F 		.ascii	"mbr_da\000"
 3288      646100
 3289              	.LASF31:
 3290 07de 58646D61 		.ascii	"XdmacChid\000"
 3290      63436869 
 3290      6400
 3291              	.LASF68:
 3292 07e8 5F5F746D 		.ascii	"__tm_sec\000"
 3292      5F736563 
 3292      00
 3293              	.LASF108:
 3294 07f1 5F737464 		.ascii	"_stdout\000"
 3294      6F757400 
 3295              	.LASF74:
 3296 07f9 5F5F746D 		.ascii	"__tm_wday\000"
 3296      5F776461 
 3296      7900
 3297              	.LASF129:
 3298 0803 5F676C75 		.ascii	"_glue\000"
 3298      6500
 3299              	.LASF107:
 3300 0809 5F737464 		.ascii	"_stdin\000"
 3300      696E00
 3301              	.LASF156:
 3302 0810 5F6E6D61 		.ascii	"_nmalloc\000"
 3302      6C6C6F63 
 3302      00
 3303              	.LASF146:
 3304 0819 5F6C3634 		.ascii	"_l64a_buf\000"
 3304      615F6275 
 3304      6600
 3305              	.LASF21:
 3306 0823 58444D41 		.ascii	"XDMAC_CDA\000"
 3306      435F4344 
 3306      4100
 3307              	.LASF124:
 3308 082d 5F736967 		.ascii	"_sig_func\000"
 3308      5F66756E 
 3308      6300
 3309              	.LASF172:
 3310 0837 6D62725F 		.ascii	"mbr_ds\000"
 3310      647300
 3311              	.LASF27:
 3312 083e 58444D41 		.ascii	"XDMAC_CDS_MSP\000"
 3312      435F4344 
 3312      535F4D53 
 3312      5000
 3313              	.LASF163:
 3314 084c 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 3314      6972715F 
 3314      63726974 
 3314      6963616C 
 3314      5F736563 
 3315              	.LASF25:
 3316 086d 58444D41 		.ascii	"XDMAC_CBC\000"
 3316      435F4342 
 3316      4300
ARM GAS  /tmp/cc6b4z2x.s 			page 79


 3317              	.LASF98:
 3318 0877 5F6E6275 		.ascii	"_nbuf\000"
 3318      6600
 3319              	.LASF157:
 3320 087d 5F756E75 		.ascii	"_unused\000"
 3320      73656400 
 3321              	.LASF48:
 3322 0885 58444D41 		.ascii	"XDMAC_GSWF\000"
 3322      435F4753 
 3322      574600
 3323              	.LASF197:
 3324 0890 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70_RTOS"
 3324      652F746F 
 3324      72626A6F 
 3324      726E2F65 
 3324      636C6970 
 3325 08c3 00       		.ascii	"\000"
 3326              	.LASF192:
 3327 08c4 78646D61 		.ascii	"xdmac_channel_set_source_addr\000"
 3327      635F6368 
 3327      616E6E65 
 3327      6C5F7365 
 3327      745F736F 
 3328              	.LASF76:
 3329 08e2 5F5F746D 		.ascii	"__tm_isdst\000"
 3329      5F697364 
 3329      737400
 3330              	.LASF139:
 3331 08ed 5F6C6F63 		.ascii	"_localtime_buf\000"
 3331      616C7469 
 3331      6D655F62 
 3331      756600
 3332              	.LASF69:
 3333 08fc 5F5F746D 		.ascii	"__tm_min\000"
 3333      5F6D696E 
 3333      00
 3334              	.LASF188:
 3335 0905 78646D61 		.ascii	"xdmac_channel_set_microblock_control\000"
 3335      635F6368 
 3335      616E6E65 
 3335      6C5F7365 
 3335      745F6D69 
 3336              	.LASF20:
 3337 092a 58444D41 		.ascii	"XDMAC_CSA\000"
 3337      435F4353 
 3337      4100
 3338              	.LASF46:
 3339 0934 58444D41 		.ascii	"XDMAC_GSWR\000"
 3339      435F4753 
 3339      575200
 3340              	.LASF47:
 3341 093f 58444D41 		.ascii	"XDMAC_GSWS\000"
 3341      435F4753 
 3341      575300
 3342              	.LASF144:
 3343 094a 5F6D6274 		.ascii	"_mbtowc_state\000"
 3343      6F77635F 
ARM GAS  /tmp/cc6b4z2x.s 			page 80


 3343      73746174 
 3343      6500
 3344              	.LASF118:
 3345 0958 5F703573 		.ascii	"_p5s\000"
 3345      00
 3346              	.LASF16:
 3347 095d 58444D41 		.ascii	"XDMAC_CIE\000"
 3347      435F4349 
 3347      4500
 3348              	.LASF71:
 3349 0967 5F5F746D 		.ascii	"__tm_mday\000"
 3349      5F6D6461 
 3349      7900
 3350              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
