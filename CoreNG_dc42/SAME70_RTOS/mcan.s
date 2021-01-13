ARM GAS  /tmp/cciOmULZ.s 			page 1


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
  12              		.file	"mcan.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text._mcan_enable_peripheral_clock,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv5-d16
  23              		.type	_mcan_enable_peripheral_clock, %function
  24              	_mcan_enable_peripheral_clock:
  25              	.LFB189:
  26              		.file 1 "../asf/sam/drivers/mcan/mcan.c"
   1:../asf/sam/drivers/mcan/mcan.c **** /**
   2:../asf/sam/drivers/mcan/mcan.c ****  * \file
   3:../asf/sam/drivers/mcan/mcan.c ****  *
   4:../asf/sam/drivers/mcan/mcan.c ****  * \brief SAM Control Area Network (MCAN) Low Level Driver
   5:../asf/sam/drivers/mcan/mcan.c ****  *
   6:../asf/sam/drivers/mcan/mcan.c ****  * Copyright (C) 2015-2016 Atmel Corporation. All rights reserved.
   7:../asf/sam/drivers/mcan/mcan.c ****  *
   8:../asf/sam/drivers/mcan/mcan.c ****  * \asf_license_start
   9:../asf/sam/drivers/mcan/mcan.c ****  *
  10:../asf/sam/drivers/mcan/mcan.c ****  * \page License
  11:../asf/sam/drivers/mcan/mcan.c ****  *
  12:../asf/sam/drivers/mcan/mcan.c ****  * Redistribution and use in source and binary forms, with or without
  13:../asf/sam/drivers/mcan/mcan.c ****  * modification, are permitted provided that the following conditions are met:
  14:../asf/sam/drivers/mcan/mcan.c ****  *
  15:../asf/sam/drivers/mcan/mcan.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../asf/sam/drivers/mcan/mcan.c ****  *    this list of conditions and the following disclaimer.
  17:../asf/sam/drivers/mcan/mcan.c ****  *
  18:../asf/sam/drivers/mcan/mcan.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../asf/sam/drivers/mcan/mcan.c ****  *    this list of conditions and the following disclaimer in the documentation
  20:../asf/sam/drivers/mcan/mcan.c ****  *    and/or other materials provided with the distribution.
  21:../asf/sam/drivers/mcan/mcan.c ****  *
  22:../asf/sam/drivers/mcan/mcan.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../asf/sam/drivers/mcan/mcan.c ****  *    from this software without specific prior written permission.
  24:../asf/sam/drivers/mcan/mcan.c ****  *
  25:../asf/sam/drivers/mcan/mcan.c ****  * 4. This software may only be redistributed and used in connection with an
  26:../asf/sam/drivers/mcan/mcan.c ****  *    Atmel microcontroller product.
  27:../asf/sam/drivers/mcan/mcan.c ****  *
  28:../asf/sam/drivers/mcan/mcan.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../asf/sam/drivers/mcan/mcan.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../asf/sam/drivers/mcan/mcan.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
  31:../asf/sam/drivers/mcan/mcan.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
ARM GAS  /tmp/cciOmULZ.s 			page 2


  32:../asf/sam/drivers/mcan/mcan.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../asf/sam/drivers/mcan/mcan.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../asf/sam/drivers/mcan/mcan.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../asf/sam/drivers/mcan/mcan.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../asf/sam/drivers/mcan/mcan.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../asf/sam/drivers/mcan/mcan.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../asf/sam/drivers/mcan/mcan.c ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../asf/sam/drivers/mcan/mcan.c ****  *
  40:../asf/sam/drivers/mcan/mcan.c ****  * \asf_license_stop
  41:../asf/sam/drivers/mcan/mcan.c ****  *
  42:../asf/sam/drivers/mcan/mcan.c ****  */
  43:../asf/sam/drivers/mcan/mcan.c **** /*
  44:../asf/sam/drivers/mcan/mcan.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../asf/sam/drivers/mcan/mcan.c ****  */
  46:../asf/sam/drivers/mcan/mcan.c **** 
  47:../asf/sam/drivers/mcan/mcan.c **** #include "mcan.h"
  48:../asf/sam/drivers/mcan/mcan.c **** #include "pmc.h"
  49:../asf/sam/drivers/mcan/mcan.c **** #include <string.h>
  50:../asf/sam/drivers/mcan/mcan.c **** #include <sysclk.h>
  51:../asf/sam/drivers/mcan/mcan.c **** 
  52:../asf/sam/drivers/mcan/mcan.c **** /** @cond 0 */
  53:../asf/sam/drivers/mcan/mcan.c **** /**INDENT-OFF**/
  54:../asf/sam/drivers/mcan/mcan.c **** #ifdef __cplusplus
  55:../asf/sam/drivers/mcan/mcan.c **** extern "C" {
  56:../asf/sam/drivers/mcan/mcan.c **** #endif
  57:../asf/sam/drivers/mcan/mcan.c **** /**INDENT-ON**/
  58:../asf/sam/drivers/mcan/mcan.c **** /** @endcond */
  59:../asf/sam/drivers/mcan/mcan.c **** 
  60:../asf/sam/drivers/mcan/mcan.c **** /* PCK5 ID,assigned to MCAN module */
  61:../asf/sam/drivers/mcan/mcan.c **** #define PMC_PCK_5               5
  62:../asf/sam/drivers/mcan/mcan.c **** /* Get a value of 2 to 15 bit. */
  63:../asf/sam/drivers/mcan/mcan.c **** #define BIT_2_TO_15_MASK         0x0000fffc
  64:../asf/sam/drivers/mcan/mcan.c **** 
  65:../asf/sam/drivers/mcan/mcan.c **** /* Message ram definition. */
  66:../asf/sam/drivers/mcan/mcan.c **** COMPILER_ALIGNED(4)
  67:../asf/sam/drivers/mcan/mcan.c **** static struct mcan_rx_element_buffer mcan0_rx_buffer[CONF_MCAN0_RX_BUFFER_NUM];
  68:../asf/sam/drivers/mcan/mcan.c **** COMPILER_ALIGNED(4)
  69:../asf/sam/drivers/mcan/mcan.c **** static struct mcan_rx_element_fifo_0 mcan0_rx_fifo_0[CONF_MCAN0_RX_FIFO_0_NUM];
  70:../asf/sam/drivers/mcan/mcan.c **** COMPILER_ALIGNED(4)
  71:../asf/sam/drivers/mcan/mcan.c **** static struct mcan_rx_element_fifo_1 mcan0_rx_fifo_1[CONF_MCAN0_RX_FIFO_1_NUM];
  72:../asf/sam/drivers/mcan/mcan.c **** COMPILER_ALIGNED(4)
  73:../asf/sam/drivers/mcan/mcan.c **** static struct mcan_tx_element mcan0_tx_buffer[CONF_MCAN0_TX_BUFFER_NUM + CONF_MCAN0_TX_FIFO_QUEUE_N
  74:../asf/sam/drivers/mcan/mcan.c **** COMPILER_ALIGNED(4)
  75:../asf/sam/drivers/mcan/mcan.c **** static struct mcan_tx_event_element mcan0_tx_event_fifo[CONF_MCAN0_TX_EVENT_FIFO];
  76:../asf/sam/drivers/mcan/mcan.c **** COMPILER_ALIGNED(4)
  77:../asf/sam/drivers/mcan/mcan.c **** static struct mcan_standard_message_filter_element mcan0_rx_standard_filter[CONF_MCAN0_RX_STANDARD_
  78:../asf/sam/drivers/mcan/mcan.c **** COMPILER_ALIGNED(4)
  79:../asf/sam/drivers/mcan/mcan.c **** static struct mcan_extended_message_filter_element mcan0_rx_extended_filter[CONF_MCAN0_RX_EXTENDED_
  80:../asf/sam/drivers/mcan/mcan.c **** 
  81:../asf/sam/drivers/mcan/mcan.c **** COMPILER_ALIGNED(4)
  82:../asf/sam/drivers/mcan/mcan.c **** static struct mcan_rx_element_buffer mcan1_rx_buffer[CONF_MCAN1_RX_BUFFER_NUM];
  83:../asf/sam/drivers/mcan/mcan.c **** COMPILER_ALIGNED(4)
  84:../asf/sam/drivers/mcan/mcan.c **** static struct mcan_rx_element_fifo_0 mcan1_rx_fifo_0[CONF_MCAN1_RX_FIFO_0_NUM];
  85:../asf/sam/drivers/mcan/mcan.c **** COMPILER_ALIGNED(4)
  86:../asf/sam/drivers/mcan/mcan.c **** static struct mcan_rx_element_fifo_1 mcan1_rx_fifo_1[CONF_MCAN1_RX_FIFO_1_NUM];
  87:../asf/sam/drivers/mcan/mcan.c **** COMPILER_ALIGNED(4)
  88:../asf/sam/drivers/mcan/mcan.c **** static struct mcan_tx_element mcan1_tx_buffer[CONF_MCAN1_TX_BUFFER_NUM + CONF_MCAN1_TX_FIFO_QUEUE_N
ARM GAS  /tmp/cciOmULZ.s 			page 3


  89:../asf/sam/drivers/mcan/mcan.c **** COMPILER_ALIGNED(4)
  90:../asf/sam/drivers/mcan/mcan.c **** static struct mcan_tx_event_element mcan1_tx_event_fifo[CONF_MCAN1_TX_EVENT_FIFO];
  91:../asf/sam/drivers/mcan/mcan.c **** COMPILER_ALIGNED(4)
  92:../asf/sam/drivers/mcan/mcan.c **** static struct mcan_standard_message_filter_element mcan1_rx_standard_filter[CONF_MCAN1_RX_STANDARD_
  93:../asf/sam/drivers/mcan/mcan.c **** COMPILER_ALIGNED(4)
  94:../asf/sam/drivers/mcan/mcan.c **** static struct mcan_extended_message_filter_element mcan1_rx_extended_filter[CONF_MCAN1_RX_EXTENDED_
  95:../asf/sam/drivers/mcan/mcan.c **** 
  96:../asf/sam/drivers/mcan/mcan.c **** /**
  97:../asf/sam/drivers/mcan/mcan.c ****  * \brief initialize MCAN memory .
  98:../asf/sam/drivers/mcan/mcan.c ****  *
  99:../asf/sam/drivers/mcan/mcan.c ****  * \param hw  Base address of the MCAN
 100:../asf/sam/drivers/mcan/mcan.c ****  *
 101:../asf/sam/drivers/mcan/mcan.c ****  */
 102:../asf/sam/drivers/mcan/mcan.c **** static void _mcan_message_memory_init(Mcan *hw)
 103:../asf/sam/drivers/mcan/mcan.c **** {
 104:../asf/sam/drivers/mcan/mcan.c **** 	if (hw == MCAN0) {
 105:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_SIDFC = ((uint32_t)mcan0_rx_standard_filter & BIT_2_TO_15_MASK) |
 106:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_SIDFC_LSS(CONF_MCAN0_RX_STANDARD_ID_FILTER_NUM);
 107:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_XIDFC = ((uint32_t)mcan0_rx_extended_filter & BIT_2_TO_15_MASK) |
 108:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_XIDFC_LSE(CONF_MCAN0_RX_EXTENDED_ID_FILTER_NUM);
 109:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_RXF0C = ((uint32_t)mcan0_rx_fifo_0 & BIT_2_TO_15_MASK) |
 110:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_RXF0C_F0S(CONF_MCAN0_RX_FIFO_0_NUM);
 111:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_RXF1C = ((uint32_t)mcan0_rx_fifo_1 & BIT_2_TO_15_MASK) |
 112:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_RXF1C_F1S(CONF_MCAN0_RX_FIFO_1_NUM);
 113:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_RXBC = ((uint32_t)mcan0_rx_buffer & BIT_2_TO_15_MASK);
 114:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_TXBC = ((uint32_t)mcan0_tx_buffer & BIT_2_TO_15_MASK) |
 115:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_TXBC_NDTB(CONF_MCAN0_TX_BUFFER_NUM) |
 116:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_TXBC_TFQS(CONF_MCAN0_TX_FIFO_QUEUE_NUM);
 117:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_TXEFC = ((uint32_t)mcan0_tx_event_fifo & BIT_2_TO_15_MASK) |
 118:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_TXEFC_EFS(CONF_MCAN0_TX_EVENT_FIFO);
 119:../asf/sam/drivers/mcan/mcan.c **** 	} else if (hw == MCAN1) {
 120:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_SIDFC = ((uint32_t)mcan1_rx_standard_filter & BIT_2_TO_15_MASK) |
 121:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_SIDFC_LSS(CONF_MCAN1_RX_STANDARD_ID_FILTER_NUM);
 122:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_XIDFC = ((uint32_t)mcan1_rx_extended_filter & BIT_2_TO_15_MASK) |
 123:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_XIDFC_LSE(CONF_MCAN1_RX_EXTENDED_ID_FILTER_NUM);
 124:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_RXF0C = ((uint32_t)mcan1_rx_fifo_0 & BIT_2_TO_15_MASK) |
 125:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_RXF0C_F0S(CONF_MCAN1_RX_FIFO_0_NUM);
 126:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_RXF1C = ((uint32_t)mcan1_rx_fifo_1 & BIT_2_TO_15_MASK) |
 127:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_RXF1C_F1S(CONF_MCAN1_RX_FIFO_1_NUM);
 128:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_RXBC = ((uint32_t)mcan1_rx_buffer & BIT_2_TO_15_MASK);
 129:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_TXBC = ((uint32_t)mcan1_tx_buffer & BIT_2_TO_15_MASK) |
 130:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_TXBC_NDTB(CONF_MCAN1_TX_BUFFER_NUM) |
 131:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_TXBC_TFQS(CONF_MCAN1_TX_FIFO_QUEUE_NUM);
 132:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_TXEFC = ((uint32_t)mcan1_tx_event_fifo & BIT_2_TO_15_MASK) |
 133:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_TXEFC_EFS(CONF_MCAN1_TX_EVENT_FIFO);
 134:../asf/sam/drivers/mcan/mcan.c **** 	}
 135:../asf/sam/drivers/mcan/mcan.c **** 
 136:../asf/sam/drivers/mcan/mcan.c **** 	/**
 137:../asf/sam/drivers/mcan/mcan.c **** 	 * The data size in conf_mcan.h should be 8/12/16/20/24/32/48/64,
 138:../asf/sam/drivers/mcan/mcan.c **** 	 * The corresponding setting value in register is 0/1//2/3/4/5/6/7.
 139:../asf/sam/drivers/mcan/mcan.c **** 	 * To simplify the calculation, seperate to two group 8/12/16/20/24 which
 140:../asf/sam/drivers/mcan/mcan.c **** 	 * increased with 4 and 32/48/64 which increased with 16.
 141:../asf/sam/drivers/mcan/mcan.c **** 	 */
 142:../asf/sam/drivers/mcan/mcan.c **** 	if (CONF_MCAN_ELEMENT_DATA_SIZE <= 24) {
 143:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_RXESC = MCAN_RXESC_RBDS((CONF_MCAN_ELEMENT_DATA_SIZE - 8) / 4) |
 144:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_RXESC_F0DS((CONF_MCAN_ELEMENT_DATA_SIZE - 8) / 4) |
 145:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_RXESC_F1DS((CONF_MCAN_ELEMENT_DATA_SIZE - 8) / 4);
ARM GAS  /tmp/cciOmULZ.s 			page 4


 146:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_TXESC = MCAN_TXESC_TBDS((CONF_MCAN_ELEMENT_DATA_SIZE - 8) / 4);
 147:../asf/sam/drivers/mcan/mcan.c **** 	} else {
 148:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_RXESC = MCAN_RXESC_RBDS((CONF_MCAN_ELEMENT_DATA_SIZE - 32) / 16 + 5) |
 149:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_RXESC_F0DS((CONF_MCAN_ELEMENT_DATA_SIZE - 32) / 16 + 5) |
 150:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_RXESC_F1DS((CONF_MCAN_ELEMENT_DATA_SIZE - 32) / 16 + 5);
 151:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_TXESC = MCAN_TXESC_TBDS((CONF_MCAN_ELEMENT_DATA_SIZE - 32) / 16 + 5);
 152:../asf/sam/drivers/mcan/mcan.c **** 	}
 153:../asf/sam/drivers/mcan/mcan.c **** }
 154:../asf/sam/drivers/mcan/mcan.c **** 
 155:../asf/sam/drivers/mcan/mcan.c **** /**
 156:../asf/sam/drivers/mcan/mcan.c ****  * \brief set default configuration when initialization.
 157:../asf/sam/drivers/mcan/mcan.c ****  *
 158:../asf/sam/drivers/mcan/mcan.c ****  * \param hw  Base address of the MCAN
 159:../asf/sam/drivers/mcan/mcan.c ****  * \param config  default configuration parameters.
 160:../asf/sam/drivers/mcan/mcan.c ****  */
 161:../asf/sam/drivers/mcan/mcan.c **** static void _mcan_set_configuration(Mcan *hw, struct mcan_config *config)
 162:../asf/sam/drivers/mcan/mcan.c **** {
 163:../asf/sam/drivers/mcan/mcan.c **** 	/* Timing setting. */
 164:../asf/sam/drivers/mcan/mcan.c **** 	hw->MCAN_BTP = MCAN_BTP_BRP(CONF_MCAN_NBTP_NBRP_VALUE) |
 165:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_BTP_SJW(CONF_MCAN_NBTP_NSJW_VALUE) |
 166:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_BTP_TSEG1(CONF_MCAN_NBTP_NTSEG1_VALUE) |
 167:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_BTP_TSEG2(CONF_MCAN_NBTP_NTSEG2_VALUE);
 168:../asf/sam/drivers/mcan/mcan.c **** 	hw->MCAN_FBTP = MCAN_FBTP_FBRP(CONF_MCAN_FBTP_FBRP_VALUE) |
 169:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_FBTP_FSJW(CONF_MCAN_FBTP_FSJW_VALUE) |
 170:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_FBTP_FTSEG1(CONF_MCAN_FBTP_FTSEG1_VALUE) |
 171:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_FBTP_FTSEG2(CONF_MCAN_FBTP_FTSEG2_VALUE) |
 172:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_FBTP_TDCO(config->delay_compensation_offset);
 173:../asf/sam/drivers/mcan/mcan.c **** 
 174:../asf/sam/drivers/mcan/mcan.c **** 	if (config->tdc_enable) {
 175:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_FBTP |= MCAN_FBTP_TDC_ENABLED;
 176:../asf/sam/drivers/mcan/mcan.c **** 	}
 177:../asf/sam/drivers/mcan/mcan.c **** 	
 178:../asf/sam/drivers/mcan/mcan.c **** 	hw->MCAN_RWD |= MCAN_RWD_WDC(config->watchdog_configuration);
 179:../asf/sam/drivers/mcan/mcan.c **** 
 180:../asf/sam/drivers/mcan/mcan.c **** 	if (config->transmit_pause) {
 181:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_CCCR |= MCAN_CCCR_TXP;
 182:../asf/sam/drivers/mcan/mcan.c **** 	}
 183:../asf/sam/drivers/mcan/mcan.c **** 
 184:../asf/sam/drivers/mcan/mcan.c **** 	if (!config->automatic_retransmission) {
 185:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_CCCR |= MCAN_CCCR_DAR;
 186:../asf/sam/drivers/mcan/mcan.c **** 	}
 187:../asf/sam/drivers/mcan/mcan.c **** 
 188:../asf/sam/drivers/mcan/mcan.c **** 	if (config->clock_stop_request) {
 189:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_CCCR |= MCAN_CCCR_CSR;
 190:../asf/sam/drivers/mcan/mcan.c **** 	}
 191:../asf/sam/drivers/mcan/mcan.c **** 
 192:../asf/sam/drivers/mcan/mcan.c **** 	hw->MCAN_TSCC = MCAN_TSCC_TCP(config->timestamp_prescaler) |
 193:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_TSCC_TSS_TCP_INC;
 194:../asf/sam/drivers/mcan/mcan.c **** 
 195:../asf/sam/drivers/mcan/mcan.c **** 	hw->MCAN_TOCC = MCAN_TOCC_TOP(config->timeout_period) |
 196:../asf/sam/drivers/mcan/mcan.c **** 			config->timeout_mode | config->timeout_enable;
 197:../asf/sam/drivers/mcan/mcan.c **** 
 198:../asf/sam/drivers/mcan/mcan.c **** 	hw->MCAN_GFC = MCAN_GFC_ANFS(config->nonmatching_frames_action_standard) |
 199:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_GFC_ANFE(config->nonmatching_frames_action_extended);
 200:../asf/sam/drivers/mcan/mcan.c **** 	if (config->remote_frames_standard_reject) {
 201:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_GFC |= MCAN_GFC_RRFS;
 202:../asf/sam/drivers/mcan/mcan.c **** 	}
ARM GAS  /tmp/cciOmULZ.s 			page 5


 203:../asf/sam/drivers/mcan/mcan.c **** 	if (config->remote_frames_extended_reject) {
 204:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_GFC|= MCAN_GFC_RRFE;
 205:../asf/sam/drivers/mcan/mcan.c **** 	}
 206:../asf/sam/drivers/mcan/mcan.c **** 
 207:../asf/sam/drivers/mcan/mcan.c **** 	hw->MCAN_XIDAM = config->extended_id_mask;
 208:../asf/sam/drivers/mcan/mcan.c **** 
 209:../asf/sam/drivers/mcan/mcan.c **** 	if (config->rx_fifo_0_overwrite) {
 210:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_RXF0C |= MCAN_RXF0C_F0OM;
 211:../asf/sam/drivers/mcan/mcan.c **** 	}
 212:../asf/sam/drivers/mcan/mcan.c **** 	hw->MCAN_RXF0C |= MCAN_RXF0C_F0WM(config->rx_fifo_0_watermark);
 213:../asf/sam/drivers/mcan/mcan.c **** 
 214:../asf/sam/drivers/mcan/mcan.c **** 	if (config->rx_fifo_1_overwrite) {
 215:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_RXF1C |= MCAN_RXF1C_F1OM;
 216:../asf/sam/drivers/mcan/mcan.c **** 	}
 217:../asf/sam/drivers/mcan/mcan.c **** 	hw->MCAN_RXF1C |= MCAN_RXF1C_F1WM(config->rx_fifo_1_watermark);
 218:../asf/sam/drivers/mcan/mcan.c **** 
 219:../asf/sam/drivers/mcan/mcan.c **** 	if (config->tx_queue_mode) {
 220:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_TXBC |= MCAN_TXBC_TFQM;
 221:../asf/sam/drivers/mcan/mcan.c **** 	}
 222:../asf/sam/drivers/mcan/mcan.c **** 
 223:../asf/sam/drivers/mcan/mcan.c **** 	hw->MCAN_TXEFC |= MCAN_TXEFC_EFWM(config->tx_event_fifo_watermark);
 224:../asf/sam/drivers/mcan/mcan.c **** }
 225:../asf/sam/drivers/mcan/mcan.c **** 
 226:../asf/sam/drivers/mcan/mcan.c **** /**
 227:../asf/sam/drivers/mcan/mcan.c ****  * \brief enable can module clock.
 228:../asf/sam/drivers/mcan/mcan.c ****  *
 229:../asf/sam/drivers/mcan/mcan.c ****  * \param module_inst  MCAN instance
 230:../asf/sam/drivers/mcan/mcan.c ****  *
 231:../asf/sam/drivers/mcan/mcan.c ****  */
 232:../asf/sam/drivers/mcan/mcan.c **** static void _mcan_enable_peripheral_clock(struct mcan_module *const module_inst)
 233:../asf/sam/drivers/mcan/mcan.c **** {
  27              		.loc 1 233 0
  28              		.cfi_startproc
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 0, uses_anonymous_args = 0
  31              		@ link register save eliminated.
  32              	.LVL0:
 234:../asf/sam/drivers/mcan/mcan.c **** 	if (module_inst->hw == MCAN0) {
  33              		.loc 1 234 0
  34 0000 0368     		ldr	r3, [r0]
  35 0002 064A     		ldr	r2, .L7
  36 0004 9342     		cmp	r3, r2
  37 0006 06D0     		beq	.L5
 235:../asf/sam/drivers/mcan/mcan.c **** 		/* Turn on the digital interface clock. */
 236:../asf/sam/drivers/mcan/mcan.c **** 		pmc_enable_periph_clk(ID_MCAN0);
 237:../asf/sam/drivers/mcan/mcan.c **** 	} else if (module_inst->hw == MCAN1) {
  38              		.loc 1 237 0
  39 0008 054A     		ldr	r2, .L7+4
  40 000a 9342     		cmp	r3, r2
  41 000c 00D0     		beq	.L6
  42 000e 7047     		bx	lr
  43              	.L6:
 238:../asf/sam/drivers/mcan/mcan.c **** 		/* Turn on the digital interface clock. */
 239:../asf/sam/drivers/mcan/mcan.c **** 		pmc_enable_periph_clk(ID_MCAN1);
  44              		.loc 1 239 0
  45 0010 2520     		movs	r0, #37
  46              	.LVL1:
ARM GAS  /tmp/cciOmULZ.s 			page 6


  47 0012 FFF7FEBF 		b	pmc_enable_periph_clk
  48              	.LVL2:
  49              	.L5:
 236:../asf/sam/drivers/mcan/mcan.c **** 	} else if (module_inst->hw == MCAN1) {
  50              		.loc 1 236 0
  51 0016 2320     		movs	r0, #35
  52              	.LVL3:
  53 0018 FFF7FEBF 		b	pmc_enable_periph_clk
  54              	.LVL4:
  55              	.L8:
  56              		.align	2
  57              	.L7:
  58 001c 00000340 		.word	1073938432
  59 0020 00400340 		.word	1073954816
  60              		.cfi_endproc
  61              	.LFE189:
  62              		.size	_mcan_enable_peripheral_clock, .-_mcan_enable_peripheral_clock
  63              		.section	.text.mcan_init,"ax",%progbits
  64              		.align	1
  65              		.p2align 2,,3
  66              		.global	mcan_init
  67              		.syntax unified
  68              		.thumb
  69              		.thumb_func
  70              		.fpu fpv5-d16
  71              		.type	mcan_init, %function
  72              	mcan_init:
  73              	.LFB190:
 240:../asf/sam/drivers/mcan/mcan.c **** 	}
 241:../asf/sam/drivers/mcan/mcan.c **** }
 242:../asf/sam/drivers/mcan/mcan.c **** 
 243:../asf/sam/drivers/mcan/mcan.c **** /**
 244:../asf/sam/drivers/mcan/mcan.c ****  * \brief initialize can module.
 245:../asf/sam/drivers/mcan/mcan.c ****  *
 246:../asf/sam/drivers/mcan/mcan.c ****  * \param module_inst  MCAN instance
 247:../asf/sam/drivers/mcan/mcan.c ****  * \param hw  Base address of MCAN.
 248:../asf/sam/drivers/mcan/mcan.c ****  * \param config default configuration .
 249:../asf/sam/drivers/mcan/mcan.c ****  */
 250:../asf/sam/drivers/mcan/mcan.c **** void mcan_init(struct mcan_module *const module_inst, Mcan *hw,
 251:../asf/sam/drivers/mcan/mcan.c **** 		struct mcan_config *config)
 252:../asf/sam/drivers/mcan/mcan.c **** {
  74              		.loc 1 252 0
  75              		.cfi_startproc
  76              		@ args = 0, pretend = 0, frame = 0
  77              		@ frame_needed = 0, uses_anonymous_args = 0
  78              	.LVL5:
  79 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  80              		.cfi_def_cfa_offset 24
  81              		.cfi_offset 3, -24
  82              		.cfi_offset 4, -20
  83              		.cfi_offset 5, -16
  84              		.cfi_offset 6, -12
  85              		.cfi_offset 7, -8
  86              		.cfi_offset 14, -4
  87              		.loc 1 252 0
  88 0002 0646     		mov	r6, r0
 253:../asf/sam/drivers/mcan/mcan.c **** 	/* Sanity check arguments */
ARM GAS  /tmp/cciOmULZ.s 			page 7


 254:../asf/sam/drivers/mcan/mcan.c **** 	Assert(module_inst);
 255:../asf/sam/drivers/mcan/mcan.c **** 	Assert(hw);
 256:../asf/sam/drivers/mcan/mcan.c **** 	Assert(config);
 257:../asf/sam/drivers/mcan/mcan.c **** 
 258:../asf/sam/drivers/mcan/mcan.c **** 	/* Associate the software module instance with the hardware module */
 259:../asf/sam/drivers/mcan/mcan.c **** 	module_inst->hw = hw;
 260:../asf/sam/drivers/mcan/mcan.c **** 
 261:../asf/sam/drivers/mcan/mcan.c **** 	pmc_disable_pck(PMC_PCK_5);
  89              		.loc 1 261 0
  90 0004 0520     		movs	r0, #5
  91              	.LVL6:
 252:../asf/sam/drivers/mcan/mcan.c **** 	/* Sanity check arguments */
  92              		.loc 1 252 0
  93 0006 0C46     		mov	r4, r1
  94 0008 1546     		mov	r5, r2
 259:../asf/sam/drivers/mcan/mcan.c **** 
  95              		.loc 1 259 0
  96 000a 3160     		str	r1, [r6]
  97              		.loc 1 261 0
  98 000c FFF7FEFF 		bl	pmc_disable_pck
  99              	.LVL7:
 262:../asf/sam/drivers/mcan/mcan.c **** 
 263:../asf/sam/drivers/mcan/mcan.c **** 	pmc_switch_pck_to_pllack(PMC_PCK_5, PMC_PCK_PRES(9));
 100              		.loc 1 263 0
 101 0010 9021     		movs	r1, #144
 102 0012 0520     		movs	r0, #5
 103 0014 FFF7FEFF 		bl	pmc_switch_pck_to_pllack
 104              	.LVL8:
 264:../asf/sam/drivers/mcan/mcan.c **** 	pmc_enable_pck(PMC_PCK_5);
 105              		.loc 1 264 0
 106 0018 0520     		movs	r0, #5
 107 001a FFF7FEFF 		bl	pmc_enable_pck
 108              	.LVL9:
 265:../asf/sam/drivers/mcan/mcan.c **** 
 266:../asf/sam/drivers/mcan/mcan.c **** 	/* Enable peripheral clock */
 267:../asf/sam/drivers/mcan/mcan.c **** 	_mcan_enable_peripheral_clock(module_inst);
 109              		.loc 1 267 0
 110 001e 3046     		mov	r0, r6
 111 0020 FFF7FEFF 		bl	_mcan_enable_peripheral_clock
 112              	.LVL10:
 268:../asf/sam/drivers/mcan/mcan.c **** 
 269:../asf/sam/drivers/mcan/mcan.c **** 
 270:../asf/sam/drivers/mcan/mcan.c **** 	/* Configuration Change Enable. */
 271:../asf/sam/drivers/mcan/mcan.c **** 	hw->MCAN_CCCR |= MCAN_CCCR_CCE;
 113              		.loc 1 271 0
 114 0024 A369     		ldr	r3, [r4, #24]
 115              	.LBB16:
 116              	.LBB17:
 104:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_SIDFC = ((uint32_t)mcan0_rx_standard_filter & BIT_2_TO_15_MASK) |
 117              		.loc 1 104 0
 118 0026 774A     		ldr	r2, .L49
 119              	.LBE17:
 120              	.LBE16:
 121              		.loc 1 271 0
 122 0028 43F00203 		orr	r3, r3, #2
 123              	.LBB22:
 124              	.LBB18:
ARM GAS  /tmp/cciOmULZ.s 			page 8


 104:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_SIDFC = ((uint32_t)mcan0_rx_standard_filter & BIT_2_TO_15_MASK) |
 125              		.loc 1 104 0
 126 002c 9442     		cmp	r4, r2
 127              	.LBE18:
 128              	.LBE22:
 129              		.loc 1 271 0
 130 002e A361     		str	r3, [r4, #24]
 131              	.LVL11:
 132              	.LBB23:
 133              	.LBB19:
 104:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_SIDFC = ((uint32_t)mcan0_rx_standard_filter & BIT_2_TO_15_MASK) |
 134              		.loc 1 104 0
 135 0030 00F0C580 		beq	.L47
 119:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_SIDFC = ((uint32_t)mcan1_rx_standard_filter & BIT_2_TO_15_MASK) |
 136              		.loc 1 119 0
 137 0034 744B     		ldr	r3, .L49+4
 138 0036 9C42     		cmp	r4, r3
 139 0038 00F09280 		beq	.L48
 140              	.LVL12:
 141              	.L11:
 143:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_RXESC_F0DS((CONF_MCAN_ELEMENT_DATA_SIZE - 8) / 4) |
 142              		.loc 1 143 0
 143 003c 0023     		movs	r3, #0
 144              	.LBE19:
 145              	.LBE23:
 146              	.LBB24:
 147              	.LBB25:
 164:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_BTP_SJW(CONF_MCAN_NBTP_NSJW_VALUE) |
 148              		.loc 1 164 0
 149 003e 7349     		ldr	r1, .L49+8
 171:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_FBTP_TDCO(config->delay_compensation_offset);
 150              		.loc 1 171 0
 151 0040 734A     		ldr	r2, .L49+12
 152              	.LBE25:
 153              	.LBE24:
 154              	.LBB29:
 155              	.LBB20:
 143:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_RXESC_F0DS((CONF_MCAN_ELEMENT_DATA_SIZE - 8) / 4) |
 156              		.loc 1 143 0
 157 0042 C4F8BC30 		str	r3, [r4, #188]
 146:../asf/sam/drivers/mcan/mcan.c **** 	} else {
 158              		.loc 1 146 0
 159 0046 C4F8C830 		str	r3, [r4, #200]
 160              	.LVL13:
 161              	.LBE20:
 162              	.LBE29:
 163              	.LBB30:
 164              	.LBB26:
 164:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_BTP_SJW(CONF_MCAN_NBTP_NSJW_VALUE) |
 165              		.loc 1 164 0
 166 004a E161     		str	r1, [r4, #28]
 172:../asf/sam/drivers/mcan/mcan.c **** 
 167              		.loc 1 172 0
 168 004c EB7B     		ldrb	r3, [r5, #15]	@ zero_extendqisi2
 174:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_FBTP |= MCAN_FBTP_TDC_ENABLED;
 169              		.loc 1 174 0
 170 004e A97B     		ldrb	r1, [r5, #14]	@ zero_extendqisi2
ARM GAS  /tmp/cciOmULZ.s 			page 9


 172:../asf/sam/drivers/mcan/mcan.c **** 
 171              		.loc 1 172 0
 172 0050 1B06     		lsls	r3, r3, #24
 173 0052 03F0F853 		and	r3, r3, #520093696
 171:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_FBTP_TDCO(config->delay_compensation_offset);
 174              		.loc 1 171 0
 175 0056 1A43     		orrs	r2, r2, r3
 168:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_FBTP_FSJW(CONF_MCAN_FBTP_FSJW_VALUE) |
 176              		.loc 1 168 0
 177 0058 E260     		str	r2, [r4, #12]
 174:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_FBTP |= MCAN_FBTP_TDC_ENABLED;
 178              		.loc 1 174 0
 179 005a 19B1     		cbz	r1, .L12
 175:../asf/sam/drivers/mcan/mcan.c **** 	}
 180              		.loc 1 175 0
 181 005c E368     		ldr	r3, [r4, #12]
 182 005e 43F40003 		orr	r3, r3, #8388608
 183 0062 E360     		str	r3, [r4, #12]
 184              	.L12:
 178:../asf/sam/drivers/mcan/mcan.c **** 
 185              		.loc 1 178 0
 186 0064 6169     		ldr	r1, [r4, #20]
 187 0066 6B78     		ldrb	r3, [r5, #1]	@ zero_extendqisi2
 180:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_CCCR |= MCAN_CCCR_TXP;
 188              		.loc 1 180 0
 189 0068 AA78     		ldrb	r2, [r5, #2]	@ zero_extendqisi2
 178:../asf/sam/drivers/mcan/mcan.c **** 
 190              		.loc 1 178 0
 191 006a 0B43     		orrs	r3, r3, r1
 192 006c 6361     		str	r3, [r4, #20]
 180:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_CCCR |= MCAN_CCCR_TXP;
 193              		.loc 1 180 0
 194 006e 1AB1     		cbz	r2, .L13
 181:../asf/sam/drivers/mcan/mcan.c **** 	}
 195              		.loc 1 181 0
 196 0070 A369     		ldr	r3, [r4, #24]
 197 0072 43F48043 		orr	r3, r3, #16384
 198 0076 A361     		str	r3, [r4, #24]
 199              	.L13:
 184:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_CCCR |= MCAN_CCCR_DAR;
 200              		.loc 1 184 0
 201 0078 6B79     		ldrb	r3, [r5, #5]	@ zero_extendqisi2
 202 007a 1BB9     		cbnz	r3, .L14
 185:../asf/sam/drivers/mcan/mcan.c **** 	}
 203              		.loc 1 185 0
 204 007c A369     		ldr	r3, [r4, #24]
 205 007e 43F04003 		orr	r3, r3, #64
 206 0082 A361     		str	r3, [r4, #24]
 207              	.L14:
 188:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_CCCR |= MCAN_CCCR_CSR;
 208              		.loc 1 188 0
 209 0084 AB79     		ldrb	r3, [r5, #6]	@ zero_extendqisi2
 210 0086 1BB1     		cbz	r3, .L15
 189:../asf/sam/drivers/mcan/mcan.c **** 	}
 211              		.loc 1 189 0
 212 0088 A369     		ldr	r3, [r4, #24]
 213 008a 43F01003 		orr	r3, r3, #16
ARM GAS  /tmp/cciOmULZ.s 			page 10


 214 008e A361     		str	r3, [r4, #24]
 215              	.L15:
 192:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_TSCC_TSS_TCP_INC;
 216              		.loc 1 192 0
 217 0090 2A7A     		ldrb	r2, [r5, #8]	@ zero_extendqisi2
 198:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_GFC_ANFE(config->nonmatching_frames_action_extended);
 218              		.loc 1 198 0
 219 0092 2B7C     		ldrb	r3, [r5, #16]	@ zero_extendqisi2
 199:../asf/sam/drivers/mcan/mcan.c **** 	if (config->remote_frames_standard_reject) {
 220              		.loc 1 199 0
 221 0094 687C     		ldrb	r0, [r5, #17]	@ zero_extendqisi2
 192:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_TSCC_TSS_TCP_INC;
 222              		.loc 1 192 0
 223 0096 1204     		lsls	r2, r2, #16
 196:../asf/sam/drivers/mcan/mcan.c **** 
 224              		.loc 1 196 0
 225 0098 6E7B     		ldrb	r6, [r5, #13]	@ zero_extendqisi2
 198:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_GFC_ANFE(config->nonmatching_frames_action_extended);
 226              		.loc 1 198 0
 227 009a 1B01     		lsls	r3, r3, #4
 196:../asf/sam/drivers/mcan/mcan.c **** 
 228              		.loc 1 196 0
 229 009c 297B     		ldrb	r1, [r5, #12]	@ zero_extendqisi2
 199:../asf/sam/drivers/mcan/mcan.c **** 	if (config->remote_frames_standard_reject) {
 230              		.loc 1 199 0
 231 009e 8000     		lsls	r0, r0, #2
 192:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_TSCC_TSS_TCP_INC;
 232              		.loc 1 192 0
 233 00a0 02F47022 		and	r2, r2, #983040
 198:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_GFC_ANFE(config->nonmatching_frames_action_extended);
 234              		.loc 1 198 0
 235 00a4 03F03003 		and	r3, r3, #48
 199:../asf/sam/drivers/mcan/mcan.c **** 	if (config->remote_frames_standard_reject) {
 236              		.loc 1 199 0
 237 00a8 00F00C00 		and	r0, r0, #12
 196:../asf/sam/drivers/mcan/mcan.c **** 
 238              		.loc 1 196 0
 239 00ac 3143     		orrs	r1, r1, r6
 195:../asf/sam/drivers/mcan/mcan.c **** 			config->timeout_mode | config->timeout_enable;
 240              		.loc 1 195 0
 241 00ae 6E89     		ldrh	r6, [r5, #10]
 192:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_TSCC_TSS_TCP_INC;
 242              		.loc 1 192 0
 243 00b0 42F00102 		orr	r2, r2, #1
 198:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_GFC_ANFE(config->nonmatching_frames_action_extended);
 244              		.loc 1 198 0
 245 00b4 0343     		orrs	r3, r3, r0
 200:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_GFC |= MCAN_GFC_RRFS;
 246              		.loc 1 200 0
 247 00b6 A87C     		ldrb	r0, [r5, #18]	@ zero_extendqisi2
 196:../asf/sam/drivers/mcan/mcan.c **** 
 248              		.loc 1 196 0
 249 00b8 41EA0641 		orr	r1, r1, r6, lsl #16
 192:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_TSCC_TSS_TCP_INC;
 250              		.loc 1 192 0
 251 00bc 2262     		str	r2, [r4, #32]
 195:../asf/sam/drivers/mcan/mcan.c **** 			config->timeout_mode | config->timeout_enable;
ARM GAS  /tmp/cciOmULZ.s 			page 11


 252              		.loc 1 195 0
 253 00be A162     		str	r1, [r4, #40]
 198:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_GFC_ANFE(config->nonmatching_frames_action_extended);
 254              		.loc 1 198 0
 255 00c0 C4F88030 		str	r3, [r4, #128]
 200:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_GFC |= MCAN_GFC_RRFS;
 256              		.loc 1 200 0
 257 00c4 28B1     		cbz	r0, .L16
 201:../asf/sam/drivers/mcan/mcan.c **** 	}
 258              		.loc 1 201 0
 259 00c6 D4F88030 		ldr	r3, [r4, #128]
 260 00ca 43F00203 		orr	r3, r3, #2
 261 00ce C4F88030 		str	r3, [r4, #128]
 262              	.L16:
 203:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_GFC|= MCAN_GFC_RRFE;
 263              		.loc 1 203 0
 264 00d2 EB7C     		ldrb	r3, [r5, #19]	@ zero_extendqisi2
 265 00d4 2BB1     		cbz	r3, .L17
 204:../asf/sam/drivers/mcan/mcan.c **** 	}
 266              		.loc 1 204 0
 267 00d6 D4F88030 		ldr	r3, [r4, #128]
 268 00da 43F00103 		orr	r3, r3, #1
 269 00de C4F88030 		str	r3, [r4, #128]
 270              	.L17:
 207:../asf/sam/drivers/mcan/mcan.c **** 
 271              		.loc 1 207 0
 272 00e2 6A69     		ldr	r2, [r5, #20]
 209:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_RXF0C |= MCAN_RXF0C_F0OM;
 273              		.loc 1 209 0
 274 00e4 2B7E     		ldrb	r3, [r5, #24]	@ zero_extendqisi2
 207:../asf/sam/drivers/mcan/mcan.c **** 
 275              		.loc 1 207 0
 276 00e6 C4F89020 		str	r2, [r4, #144]
 209:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_RXF0C |= MCAN_RXF0C_F0OM;
 277              		.loc 1 209 0
 278 00ea 2BB1     		cbz	r3, .L18
 210:../asf/sam/drivers/mcan/mcan.c **** 	}
 279              		.loc 1 210 0
 280 00ec D4F8A030 		ldr	r3, [r4, #160]
 281 00f0 43F00043 		orr	r3, r3, #-2147483648
 282 00f4 C4F8A030 		str	r3, [r4, #160]
 283              	.L18:
 212:../asf/sam/drivers/mcan/mcan.c **** 
 284              		.loc 1 212 0
 285 00f8 6B7E     		ldrb	r3, [r5, #25]	@ zero_extendqisi2
 286 00fa D4F8A010 		ldr	r1, [r4, #160]
 287 00fe 1B06     		lsls	r3, r3, #24
 214:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_RXF1C |= MCAN_RXF1C_F1OM;
 288              		.loc 1 214 0
 289 0100 AA7E     		ldrb	r2, [r5, #26]	@ zero_extendqisi2
 212:../asf/sam/drivers/mcan/mcan.c **** 
 290              		.loc 1 212 0
 291 0102 03F0FE43 		and	r3, r3, #2130706432
 292 0106 0B43     		orrs	r3, r3, r1
 293 0108 C4F8A030 		str	r3, [r4, #160]
 214:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_RXF1C |= MCAN_RXF1C_F1OM;
 294              		.loc 1 214 0
ARM GAS  /tmp/cciOmULZ.s 			page 12


 295 010c 2AB1     		cbz	r2, .L19
 215:../asf/sam/drivers/mcan/mcan.c **** 	}
 296              		.loc 1 215 0
 297 010e D4F8B030 		ldr	r3, [r4, #176]
 298 0112 43F00043 		orr	r3, r3, #-2147483648
 299 0116 C4F8B030 		str	r3, [r4, #176]
 300              	.L19:
 217:../asf/sam/drivers/mcan/mcan.c **** 
 301              		.loc 1 217 0
 302 011a EB7E     		ldrb	r3, [r5, #27]	@ zero_extendqisi2
 303 011c D4F8B010 		ldr	r1, [r4, #176]
 304 0120 1B06     		lsls	r3, r3, #24
 219:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_TXBC |= MCAN_TXBC_TFQM;
 305              		.loc 1 219 0
 306 0122 2A7F     		ldrb	r2, [r5, #28]	@ zero_extendqisi2
 217:../asf/sam/drivers/mcan/mcan.c **** 
 307              		.loc 1 217 0
 308 0124 03F0FE43 		and	r3, r3, #2130706432
 309 0128 0B43     		orrs	r3, r3, r1
 310 012a C4F8B030 		str	r3, [r4, #176]
 219:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_TXBC |= MCAN_TXBC_TFQM;
 311              		.loc 1 219 0
 312 012e 2AB1     		cbz	r2, .L20
 220:../asf/sam/drivers/mcan/mcan.c **** 	}
 313              		.loc 1 220 0
 314 0130 D4F8C030 		ldr	r3, [r4, #192]
 315 0134 43F08043 		orr	r3, r3, #1073741824
 316 0138 C4F8C030 		str	r3, [r4, #192]
 317              	.L20:
 223:../asf/sam/drivers/mcan/mcan.c **** }
 318              		.loc 1 223 0
 319 013c 6B7F     		ldrb	r3, [r5, #29]	@ zero_extendqisi2
 320              	.LBE26:
 321              	.LBE30:
 272:../asf/sam/drivers/mcan/mcan.c **** 
 273:../asf/sam/drivers/mcan/mcan.c **** 	/* Initialize the message memory address. */
 274:../asf/sam/drivers/mcan/mcan.c **** 	_mcan_message_memory_init(hw);
 275:../asf/sam/drivers/mcan/mcan.c **** 
 276:../asf/sam/drivers/mcan/mcan.c **** 	/* Set the configuration. */
 277:../asf/sam/drivers/mcan/mcan.c **** 	_mcan_set_configuration(hw, config);
 278:../asf/sam/drivers/mcan/mcan.c **** 
 279:../asf/sam/drivers/mcan/mcan.c **** 	/* Enable the interrupt setting which no need change. */
 280:../asf/sam/drivers/mcan/mcan.c **** 	hw->MCAN_ILE = MCAN_ILE_EINT0 | MCAN_ILE_EINT1;
 281:../asf/sam/drivers/mcan/mcan.c **** 	hw->MCAN_TXBTIE = 0xFFFFFFFFul;
 322              		.loc 1 281 0
 323 013e 4FF0FF32 		mov	r2, #-1
 324              	.LBB31:
 325              	.LBB27:
 223:../asf/sam/drivers/mcan/mcan.c **** }
 326              		.loc 1 223 0
 327 0142 D4F8F000 		ldr	r0, [r4, #240]
 328              	.LBE27:
 329              	.LBE31:
 280:../asf/sam/drivers/mcan/mcan.c **** 	hw->MCAN_TXBTIE = 0xFFFFFFFFul;
 330              		.loc 1 280 0
 331 0146 0321     		movs	r1, #3
 332              	.LBB32:
ARM GAS  /tmp/cciOmULZ.s 			page 13


 333              	.LBB28:
 223:../asf/sam/drivers/mcan/mcan.c **** }
 334              		.loc 1 223 0
 335 0148 1B06     		lsls	r3, r3, #24
 336 014a 03F07C53 		and	r3, r3, #1056964608
 337 014e 0343     		orrs	r3, r3, r0
 338 0150 C4F8F030 		str	r3, [r4, #240]
 339              	.LVL14:
 340              	.LBE28:
 341              	.LBE32:
 280:../asf/sam/drivers/mcan/mcan.c **** 	hw->MCAN_TXBTIE = 0xFFFFFFFFul;
 342              		.loc 1 280 0
 343 0154 E165     		str	r1, [r4, #92]
 344              		.loc 1 281 0
 345 0156 C4F8E020 		str	r2, [r4, #224]
 282:../asf/sam/drivers/mcan/mcan.c **** 	hw->MCAN_TXBCIE = 0xFFFFFFFFul;
 346              		.loc 1 282 0
 347 015a C4F8E420 		str	r2, [r4, #228]
 348 015e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 349              	.LVL15:
 350              	.L48:
 351              	.LBB33:
 352              	.LBB21:
 120:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_SIDFC_LSS(CONF_MCAN1_RX_STANDARD_ID_FILTER_NUM);
 353              		.loc 1 120 0
 354 0160 4FF6FC73 		movw	r3, #65532
 355 0164 2B4F     		ldr	r7, .L49+16
 122:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_XIDFC_LSE(CONF_MCAN1_RX_EXTENDED_ID_FILTER_NUM);
 356              		.loc 1 122 0
 357 0166 2C4E     		ldr	r6, .L49+20
 358              	.LVL16:
 124:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_RXF0C_F0S(CONF_MCAN1_RX_FIFO_0_NUM);
 359              		.loc 1 124 0
 360 0168 2C48     		ldr	r0, .L49+24
 120:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_SIDFC_LSS(CONF_MCAN1_RX_STANDARD_ID_FILTER_NUM);
 361              		.loc 1 120 0
 362 016a 1F40     		ands	r7, r7, r3
 126:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_RXF1C_F1S(CONF_MCAN1_RX_FIFO_1_NUM);
 363              		.loc 1 126 0
 364 016c 2C49     		ldr	r1, .L49+28
 122:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_XIDFC_LSE(CONF_MCAN1_RX_EXTENDED_ID_FILTER_NUM);
 365              		.loc 1 122 0
 366 016e 1E40     		ands	r6, r6, r3
 129:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_TXBC_NDTB(CONF_MCAN1_TX_BUFFER_NUM) |
 367              		.loc 1 129 0
 368 0170 DFF8D0E0 		ldr	lr, .L49+64
 120:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_SIDFC_LSS(CONF_MCAN1_RX_STANDARD_ID_FILTER_NUM);
 369              		.loc 1 120 0
 370 0174 47F40017 		orr	r7, r7, #2097152
 132:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_TXEFC_EFS(CONF_MCAN1_TX_EVENT_FIFO);
 371              		.loc 1 132 0
 372 0178 2A4A     		ldr	r2, .L49+32
 124:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_RXF0C_F0S(CONF_MCAN1_RX_FIFO_0_NUM);
 373              		.loc 1 124 0
 374 017a 1840     		ands	r0, r0, r3
 126:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_RXF1C_F1S(CONF_MCAN1_RX_FIFO_1_NUM);
 375              		.loc 1 126 0
ARM GAS  /tmp/cciOmULZ.s 			page 14


 376 017c 1940     		ands	r1, r1, r3
 129:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_TXBC_NDTB(CONF_MCAN1_TX_BUFFER_NUM) |
 377              		.loc 1 129 0
 378 017e 0EEA030E 		and	lr, lr, r3
 132:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_TXEFC_EFS(CONF_MCAN1_TX_EVENT_FIFO);
 379              		.loc 1 132 0
 380 0182 1A40     		ands	r2, r2, r3
 130:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_TXBC_TFQS(CONF_MCAN1_TX_FIFO_QUEUE_NUM);
 381              		.loc 1 130 0
 382 0184 DFF8C0C0 		ldr	ip, .L49+68
 120:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_SIDFC_LSS(CONF_MCAN1_RX_STANDARD_ID_FILTER_NUM);
 383              		.loc 1 120 0
 384 0188 C4F88470 		str	r7, [r4, #132]
 122:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_XIDFC_LSE(CONF_MCAN1_RX_EXTENDED_ID_FILTER_NUM);
 385              		.loc 1 122 0
 386 018c 46F48016 		orr	r6, r6, #1048576
 124:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_RXF0C_F0S(CONF_MCAN1_RX_FIFO_0_NUM);
 387              		.loc 1 124 0
 388 0190 40F48010 		orr	r0, r0, #1048576
 126:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_RXF1C_F1S(CONF_MCAN1_RX_FIFO_1_NUM);
 389              		.loc 1 126 0
 390 0194 41F48011 		orr	r1, r1, #1048576
 132:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_TXEFC_EFS(CONF_MCAN1_TX_EVENT_FIFO);
 391              		.loc 1 132 0
 392 0198 42F40022 		orr	r2, r2, #524288
 130:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_TXBC_TFQS(CONF_MCAN1_TX_FIFO_QUEUE_NUM);
 393              		.loc 1 130 0
 394 019c 4EEA0C0C 		orr	ip, lr, ip
 128:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_TXBC = ((uint32_t)mcan1_tx_buffer & BIT_2_TO_15_MASK) |
 395              		.loc 1 128 0
 396 01a0 214F     		ldr	r7, .L49+36
 397              	.L46:
 398 01a2 3B40     		ands	r3, r3, r7
 122:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_XIDFC_LSE(CONF_MCAN1_RX_EXTENDED_ID_FILTER_NUM);
 399              		.loc 1 122 0
 400 01a4 C4F88860 		str	r6, [r4, #136]
 124:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_RXF0C_F0S(CONF_MCAN1_RX_FIFO_0_NUM);
 401              		.loc 1 124 0
 402 01a8 C4F8A000 		str	r0, [r4, #160]
 126:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_RXF1C_F1S(CONF_MCAN1_RX_FIFO_1_NUM);
 403              		.loc 1 126 0
 404 01ac C4F8B010 		str	r1, [r4, #176]
 128:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_TXBC = ((uint32_t)mcan1_tx_buffer & BIT_2_TO_15_MASK) |
 405              		.loc 1 128 0
 406 01b0 C4F8AC30 		str	r3, [r4, #172]
 129:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_TXBC_NDTB(CONF_MCAN1_TX_BUFFER_NUM) |
 407              		.loc 1 129 0
 408 01b4 C4F8C0C0 		str	ip, [r4, #192]
 132:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_TXEFC_EFS(CONF_MCAN1_TX_EVENT_FIFO);
 409              		.loc 1 132 0
 410 01b8 C4F8F020 		str	r2, [r4, #240]
 411 01bc 3EE7     		b	.L11
 412              	.LVL17:
 413              	.L47:
 105:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_SIDFC_LSS(CONF_MCAN0_RX_STANDARD_ID_FILTER_NUM);
 414              		.loc 1 105 0
 415 01be 4FF6FC73 		movw	r3, #65532
ARM GAS  /tmp/cciOmULZ.s 			page 15


 416 01c2 1A4F     		ldr	r7, .L49+40
 107:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_XIDFC_LSE(CONF_MCAN0_RX_EXTENDED_ID_FILTER_NUM);
 417              		.loc 1 107 0
 418 01c4 1A4E     		ldr	r6, .L49+44
 419              	.LVL18:
 109:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_RXF0C_F0S(CONF_MCAN0_RX_FIFO_0_NUM);
 420              		.loc 1 109 0
 421 01c6 1B48     		ldr	r0, .L49+48
 105:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_SIDFC_LSS(CONF_MCAN0_RX_STANDARD_ID_FILTER_NUM);
 422              		.loc 1 105 0
 423 01c8 1F40     		ands	r7, r7, r3
 111:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_RXF1C_F1S(CONF_MCAN0_RX_FIFO_1_NUM);
 424              		.loc 1 111 0
 425 01ca 1B49     		ldr	r1, .L49+52
 107:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_XIDFC_LSE(CONF_MCAN0_RX_EXTENDED_ID_FILTER_NUM);
 426              		.loc 1 107 0
 427 01cc 1E40     		ands	r6, r6, r3
 114:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_TXBC_NDTB(CONF_MCAN0_TX_BUFFER_NUM) |
 428              		.loc 1 114 0
 429 01ce DFF87CE0 		ldr	lr, .L49+72
 105:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_SIDFC_LSS(CONF_MCAN0_RX_STANDARD_ID_FILTER_NUM);
 430              		.loc 1 105 0
 431 01d2 47F40017 		orr	r7, r7, #2097152
 117:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_TXEFC_EFS(CONF_MCAN0_TX_EVENT_FIFO);
 432              		.loc 1 117 0
 433 01d6 194A     		ldr	r2, .L49+56
 109:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_RXF0C_F0S(CONF_MCAN0_RX_FIFO_0_NUM);
 434              		.loc 1 109 0
 435 01d8 1840     		ands	r0, r0, r3
 111:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_RXF1C_F1S(CONF_MCAN0_RX_FIFO_1_NUM);
 436              		.loc 1 111 0
 437 01da 1940     		ands	r1, r1, r3
 114:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_TXBC_NDTB(CONF_MCAN0_TX_BUFFER_NUM) |
 438              		.loc 1 114 0
 439 01dc 0EEA030E 		and	lr, lr, r3
 117:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_TXEFC_EFS(CONF_MCAN0_TX_EVENT_FIFO);
 440              		.loc 1 117 0
 441 01e0 1A40     		ands	r2, r2, r3
 115:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_TXBC_TFQS(CONF_MCAN0_TX_FIFO_QUEUE_NUM);
 442              		.loc 1 115 0
 443 01e2 DFF864C0 		ldr	ip, .L49+68
 105:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_SIDFC_LSS(CONF_MCAN0_RX_STANDARD_ID_FILTER_NUM);
 444              		.loc 1 105 0
 445 01e6 C4F88470 		str	r7, [r4, #132]
 107:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_XIDFC_LSE(CONF_MCAN0_RX_EXTENDED_ID_FILTER_NUM);
 446              		.loc 1 107 0
 447 01ea 46F48016 		orr	r6, r6, #1048576
 109:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_RXF0C_F0S(CONF_MCAN0_RX_FIFO_0_NUM);
 448              		.loc 1 109 0
 449 01ee 40F48010 		orr	r0, r0, #1048576
 111:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_RXF1C_F1S(CONF_MCAN0_RX_FIFO_1_NUM);
 450              		.loc 1 111 0
 451 01f2 41F48011 		orr	r1, r1, #1048576
 117:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_TXEFC_EFS(CONF_MCAN0_TX_EVENT_FIFO);
 452              		.loc 1 117 0
 453 01f6 42F40022 		orr	r2, r2, #524288
 115:../asf/sam/drivers/mcan/mcan.c **** 				MCAN_TXBC_TFQS(CONF_MCAN0_TX_FIFO_QUEUE_NUM);
ARM GAS  /tmp/cciOmULZ.s 			page 16


 454              		.loc 1 115 0
 455 01fa 4EEA0C0C 		orr	ip, lr, ip
 113:../asf/sam/drivers/mcan/mcan.c **** 		hw->MCAN_TXBC = ((uint32_t)mcan0_tx_buffer & BIT_2_TO_15_MASK) |
 456              		.loc 1 113 0
 457 01fe 104F     		ldr	r7, .L49+60
 458 0200 CFE7     		b	.L46
 459              	.L50:
 460 0202 00BF     		.align	2
 461              	.L49:
 462 0204 00000340 		.word	1073938432
 463 0208 00400340 		.word	1073954816
 464 020c 730A0200 		.word	133747
 465 0210 330A0500 		.word	330291
 466 0214 00000000 		.word	.LANCHOR7
 467 0218 00000000 		.word	.LANCHOR8
 468 021c 00000000 		.word	.LANCHOR9
 469 0220 00000000 		.word	.LANCHOR10
 470 0224 00000000 		.word	.LANCHOR13
 471 0228 00000000 		.word	.LANCHOR11
 472 022c 00000000 		.word	.LANCHOR0
 473 0230 00000000 		.word	.LANCHOR1
 474 0234 00000000 		.word	.LANCHOR2
 475 0238 00000000 		.word	.LANCHOR3
 476 023c 00000000 		.word	.LANCHOR6
 477 0240 00000000 		.word	.LANCHOR4
 478 0244 00000000 		.word	.LANCHOR12
 479 0248 00000404 		.word	67371008
 480 024c 00000000 		.word	.LANCHOR5
 481              	.LBE21:
 482              	.LBE33:
 483              		.cfi_endproc
 484              	.LFE190:
 485              		.size	mcan_init, .-mcan_init
 486              		.section	.text.mcan_set_baudrate,"ax",%progbits
 487              		.align	1
 488              		.p2align 2,,3
 489              		.global	mcan_set_baudrate
 490              		.syntax unified
 491              		.thumb
 492              		.thumb_func
 493              		.fpu fpv5-d16
 494              		.type	mcan_set_baudrate, %function
 495              	mcan_set_baudrate:
 496              	.LFB191:
 283:../asf/sam/drivers/mcan/mcan.c **** }
 284:../asf/sam/drivers/mcan/mcan.c **** 
 285:../asf/sam/drivers/mcan/mcan.c **** /**
 286:../asf/sam/drivers/mcan/mcan.c ****  * \brief Set MCAN baudrate.
 287:../asf/sam/drivers/mcan/mcan.c ****  *
 288:../asf/sam/drivers/mcan/mcan.c ****  * \param[in]  hw          Pointer to the MCAN module instance
 289:../asf/sam/drivers/mcan/mcan.c ****  * \param[in]  baudrate    MCAN baudrate
 290:../asf/sam/drivers/mcan/mcan.c ****  */
 291:../asf/sam/drivers/mcan/mcan.c **** void mcan_set_baudrate(Mcan *hw, uint32_t baudrate)
 292:../asf/sam/drivers/mcan/mcan.c **** {
 497              		.loc 1 292 0
 498              		.cfi_startproc
 499              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/cciOmULZ.s 			page 17


 500              		@ frame_needed = 0, uses_anonymous_args = 0
 501              		@ link register save eliminated.
 502              	.LVL19:
 293:../asf/sam/drivers/mcan/mcan.c **** 	uint32_t gclk_mcan_value;
 294:../asf/sam/drivers/mcan/mcan.c **** 	uint32_t mcan_nbtp_nbrp_value;
 295:../asf/sam/drivers/mcan/mcan.c **** 	uint32_t mcan_nbtp_nsgw_value = 3, mcan_nbtp_ntseg1_value = 10, mcan_nbtp_ntseg2_value = 7;
 296:../asf/sam/drivers/mcan/mcan.c **** 
 297:../asf/sam/drivers/mcan/mcan.c **** 	gclk_mcan_value = sysclk_get_peripheral_hz();
 298:../asf/sam/drivers/mcan/mcan.c **** 
 299:../asf/sam/drivers/mcan/mcan.c **** 	mcan_nbtp_nbrp_value = gclk_mcan_value / baudrate / (3 + mcan_nbtp_ntseg1_value + mcan_nbtp_ntseg2
 503              		.loc 1 299 0
 504 0000 074B     		ldr	r3, .L53
 300:../asf/sam/drivers/mcan/mcan.c **** 	
 301:../asf/sam/drivers/mcan/mcan.c **** 	hw->MCAN_BTP = MCAN_BTP_BRP(mcan_nbtp_nbrp_value) |
 302:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_BTP_SJW(mcan_nbtp_nsgw_value) |
 303:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_BTP_TSEG1(mcan_nbtp_ntseg1_value) |
 505              		.loc 1 303 0
 506 0002 40F67322 		movw	r2, #2675
 299:../asf/sam/drivers/mcan/mcan.c **** 	
 507              		.loc 1 299 0
 508 0006 B3FBF1F1 		udiv	r1, r3, r1
 509              	.LVL20:
 292:../asf/sam/drivers/mcan/mcan.c **** 	uint32_t gclk_mcan_value;
 510              		.loc 1 292 0
 511 000a 30B4     		push	{r4, r5}
 512              		.cfi_def_cfa_offset 8
 513              		.cfi_offset 4, -8
 514              		.cfi_offset 5, -4
 299:../asf/sam/drivers/mcan/mcan.c **** 	
 515              		.loc 1 299 0
 516 000c 054D     		ldr	r5, .L53+4
 301:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_BTP_SJW(mcan_nbtp_nsgw_value) |
 517              		.loc 1 301 0
 518 000e 064C     		ldr	r4, .L53+8
 299:../asf/sam/drivers/mcan/mcan.c **** 	
 519              		.loc 1 299 0
 520 0010 A5FB0131 		umull	r3, r1, r5, r1
 301:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_BTP_SJW(mcan_nbtp_nsgw_value) |
 521              		.loc 1 301 0
 522 0014 04EA0131 		and	r1, r4, r1, lsl #12
 523              		.loc 1 303 0
 524 0018 0A43     		orrs	r2, r2, r1
 304:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_BTP_TSEG2(mcan_nbtp_ntseg2_value);
 305:../asf/sam/drivers/mcan/mcan.c **** }
 525              		.loc 1 305 0
 526 001a 30BC     		pop	{r4, r5}
 527              		.cfi_restore 5
 528              		.cfi_restore 4
 529              		.cfi_def_cfa_offset 0
 301:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_BTP_SJW(mcan_nbtp_nsgw_value) |
 530              		.loc 1 301 0
 531 001c C261     		str	r2, [r0, #28]
 532              		.loc 1 305 0
 533 001e 7047     		bx	lr
 534              	.L54:
 535              		.align	2
 536              	.L53:
ARM GAS  /tmp/cciOmULZ.s 			page 18


 537 0020 80D1F008 		.word	150000000
 538 0024 CDCCCCCC 		.word	-858993459
 539 0028 0000FF03 		.word	67043328
 540              		.cfi_endproc
 541              	.LFE191:
 542              		.size	mcan_set_baudrate, .-mcan_set_baudrate
 543              		.section	.text.mcan_fd_set_baudrate,"ax",%progbits
 544              		.align	1
 545              		.p2align 2,,3
 546              		.global	mcan_fd_set_baudrate
 547              		.syntax unified
 548              		.thumb
 549              		.thumb_func
 550              		.fpu fpv5-d16
 551              		.type	mcan_fd_set_baudrate, %function
 552              	mcan_fd_set_baudrate:
 553              	.LFB192:
 306:../asf/sam/drivers/mcan/mcan.c **** 
 307:../asf/sam/drivers/mcan/mcan.c **** /**
 308:../asf/sam/drivers/mcan/mcan.c ****  * \brief Set MCAN_FD baudrate.
 309:../asf/sam/drivers/mcan/mcan.c ****  *
 310:../asf/sam/drivers/mcan/mcan.c ****  * \param[in]  hw          Pointer to the MCAN_FD module instance
 311:../asf/sam/drivers/mcan/mcan.c ****  * \param[in]  baudrate    MCAN_FD baudrate
 312:../asf/sam/drivers/mcan/mcan.c ****  */
 313:../asf/sam/drivers/mcan/mcan.c **** void mcan_fd_set_baudrate(Mcan *hw, uint32_t baudrate)
 314:../asf/sam/drivers/mcan/mcan.c **** {
 554              		.loc 1 314 0
 555              		.cfi_startproc
 556              		@ args = 0, pretend = 0, frame = 0
 557              		@ frame_needed = 0, uses_anonymous_args = 0
 558              		@ link register save eliminated.
 559              	.LVL21:
 315:../asf/sam/drivers/mcan/mcan.c **** 	uint32_t gclk_mcan_fd_value;
 316:../asf/sam/drivers/mcan/mcan.c **** 	uint32_t mcan_fd_dbtp_dbrp_value;
 317:../asf/sam/drivers/mcan/mcan.c **** 	uint32_t mcan_fd_dbtp_dsgw_value = 3, mcan_fd_dbtp_dtseg1_value = 9, mcan_fd_dbtp_dtseg2_value = 3
 318:../asf/sam/drivers/mcan/mcan.c **** 
 319:../asf/sam/drivers/mcan/mcan.c **** 	gclk_mcan_fd_value = sysclk_get_peripheral_hz();
 320:../asf/sam/drivers/mcan/mcan.c **** 	
 321:../asf/sam/drivers/mcan/mcan.c **** 	mcan_fd_dbtp_dbrp_value = gclk_mcan_fd_value / baudrate / (3 + mcan_fd_dbtp_dtseg1_value + mcan_fd
 560              		.loc 1 321 0
 561 0000 084B     		ldr	r3, .L57
 322:../asf/sam/drivers/mcan/mcan.c **** 	
 323:../asf/sam/drivers/mcan/mcan.c **** 	hw->MCAN_FBTP = MCAN_FBTP_FBRP(mcan_fd_dbtp_dbrp_value) |
 324:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_FBTP_FSJW(mcan_fd_dbtp_dsgw_value) |
 325:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_FBTP_FTSEG1(mcan_fd_dbtp_dtseg1_value) |
 562              		.loc 1 325 0
 563 0002 40F63312 		movw	r2, #2355
 321:../asf/sam/drivers/mcan/mcan.c **** 	
 564              		.loc 1 321 0
 565 0006 B3FBF1F3 		udiv	r3, r3, r1
 314:../asf/sam/drivers/mcan/mcan.c **** 	uint32_t gclk_mcan_fd_value;
 566              		.loc 1 314 0
 567 000a 10B4     		push	{r4}
 568              		.cfi_def_cfa_offset 4
 569              		.cfi_offset 4, -4
 321:../asf/sam/drivers/mcan/mcan.c **** 	
 570              		.loc 1 321 0
ARM GAS  /tmp/cciOmULZ.s 			page 19


 571 000c 064C     		ldr	r4, .L57+4
 572 000e A4FB0313 		umull	r1, r3, r4, r3
 573              	.LVL22:
 326:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_FBTP_FTSEG2(mcan_fd_dbtp_dtseg2_value);
 327:../asf/sam/drivers/mcan/mcan.c **** }
 574              		.loc 1 327 0
 575 0012 5DF8044B 		ldr	r4, [sp], #4
 576              		.cfi_restore 4
 577              		.cfi_def_cfa_offset 0
 323:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_FBTP_FSJW(mcan_fd_dbtp_dsgw_value) |
 578              		.loc 1 323 0
 579 0016 5B03     		lsls	r3, r3, #13
 580 0018 03F4F813 		and	r3, r3, #2031616
 325:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_FBTP_FTSEG2(mcan_fd_dbtp_dtseg2_value);
 581              		.loc 1 325 0
 582 001c 1A43     		orrs	r2, r2, r3
 323:../asf/sam/drivers/mcan/mcan.c **** 			MCAN_FBTP_FSJW(mcan_fd_dbtp_dsgw_value) |
 583              		.loc 1 323 0
 584 001e C260     		str	r2, [r0, #12]
 585              		.loc 1 327 0
 586 0020 7047     		bx	lr
 587              	.L58:
 588 0022 00BF     		.align	2
 589              	.L57:
 590 0024 80D1F008 		.word	150000000
 591 0028 89888888 		.word	-2004318071
 592              		.cfi_endproc
 593              	.LFE192:
 594              		.size	mcan_fd_set_baudrate, .-mcan_fd_set_baudrate
 595              		.section	.text.mcan_start,"ax",%progbits
 596              		.align	1
 597              		.p2align 2,,3
 598              		.global	mcan_start
 599              		.syntax unified
 600              		.thumb
 601              		.thumb_func
 602              		.fpu fpv5-d16
 603              		.type	mcan_start, %function
 604              	mcan_start:
 605              	.LFB193:
 328:../asf/sam/drivers/mcan/mcan.c **** 
 329:../asf/sam/drivers/mcan/mcan.c **** /**
 330:../asf/sam/drivers/mcan/mcan.c ****  * \brief start can module after initialization.
 331:../asf/sam/drivers/mcan/mcan.c ****  *
 332:../asf/sam/drivers/mcan/mcan.c ****  * \param module_inst  MCAN instance
 333:../asf/sam/drivers/mcan/mcan.c ****  *
 334:../asf/sam/drivers/mcan/mcan.c ****  */
 335:../asf/sam/drivers/mcan/mcan.c **** void mcan_start(struct mcan_module *const module_inst)
 336:../asf/sam/drivers/mcan/mcan.c **** {
 606              		.loc 1 336 0
 607              		.cfi_startproc
 608              		@ args = 0, pretend = 0, frame = 0
 609              		@ frame_needed = 0, uses_anonymous_args = 0
 610              		@ link register save eliminated.
 611              	.LVL23:
 337:../asf/sam/drivers/mcan/mcan.c **** 	module_inst->hw->MCAN_CCCR &= ~MCAN_CCCR_INIT;
 612              		.loc 1 337 0
ARM GAS  /tmp/cciOmULZ.s 			page 20


 613 0000 0268     		ldr	r2, [r0]
 614 0002 9369     		ldr	r3, [r2, #24]
 615 0004 23F00103 		bic	r3, r3, #1
 616 0008 9361     		str	r3, [r2, #24]
 617              	.L60:
 338:../asf/sam/drivers/mcan/mcan.c **** 	/* Wait for the sync. */
 339:../asf/sam/drivers/mcan/mcan.c **** 	while (module_inst->hw->MCAN_CCCR & MCAN_CCCR_INIT);
 618              		.loc 1 339 0 discriminator 1
 619 000a 9369     		ldr	r3, [r2, #24]
 620 000c DB07     		lsls	r3, r3, #31
 621 000e FCD4     		bmi	.L60
 340:../asf/sam/drivers/mcan/mcan.c **** }
 622              		.loc 1 340 0
 623 0010 7047     		bx	lr
 624              		.cfi_endproc
 625              	.LFE193:
 626              		.size	mcan_start, .-mcan_start
 627 0012 00BF     		.section	.text.mcan_stop,"ax",%progbits
 628              		.align	1
 629              		.p2align 2,,3
 630              		.global	mcan_stop
 631              		.syntax unified
 632              		.thumb
 633              		.thumb_func
 634              		.fpu fpv5-d16
 635              		.type	mcan_stop, %function
 636              	mcan_stop:
 637              	.LFB194:
 341:../asf/sam/drivers/mcan/mcan.c **** 
 342:../asf/sam/drivers/mcan/mcan.c **** /**
 343:../asf/sam/drivers/mcan/mcan.c ****  * \brief stop mcan module when bus off occurs
 344:../asf/sam/drivers/mcan/mcan.c ****  *
 345:../asf/sam/drivers/mcan/mcan.c ****  * \param module_inst  MCAN instance
 346:../asf/sam/drivers/mcan/mcan.c ****  *
 347:../asf/sam/drivers/mcan/mcan.c ****  */
 348:../asf/sam/drivers/mcan/mcan.c **** void mcan_stop(struct mcan_module *const module_inst)
 349:../asf/sam/drivers/mcan/mcan.c **** {
 638              		.loc 1 349 0
 639              		.cfi_startproc
 640              		@ args = 0, pretend = 0, frame = 0
 641              		@ frame_needed = 0, uses_anonymous_args = 0
 642              		@ link register save eliminated.
 643              	.LVL24:
 350:../asf/sam/drivers/mcan/mcan.c **** 	module_inst->hw->MCAN_CCCR |= MCAN_CCCR_INIT;
 644              		.loc 1 350 0
 645 0000 0268     		ldr	r2, [r0]
 646 0002 9369     		ldr	r3, [r2, #24]
 647 0004 43F00103 		orr	r3, r3, #1
 648 0008 9361     		str	r3, [r2, #24]
 649              	.L63:
 351:../asf/sam/drivers/mcan/mcan.c **** 	/* Wait for the sync. */
 352:../asf/sam/drivers/mcan/mcan.c **** 	while (!(module_inst->hw->MCAN_CCCR & MCAN_CCCR_INIT));
 650              		.loc 1 352 0 discriminator 1
 651 000a 9369     		ldr	r3, [r2, #24]
 652 000c DB07     		lsls	r3, r3, #31
 653 000e FCD5     		bpl	.L63
 353:../asf/sam/drivers/mcan/mcan.c **** }
ARM GAS  /tmp/cciOmULZ.s 			page 21


 654              		.loc 1 353 0
 655 0010 7047     		bx	lr
 656              		.cfi_endproc
 657              	.LFE194:
 658              		.size	mcan_stop, .-mcan_stop
 659 0012 00BF     		.section	.text.mcan_enable_fd_mode,"ax",%progbits
 660              		.align	1
 661              		.p2align 2,,3
 662              		.global	mcan_enable_fd_mode
 663              		.syntax unified
 664              		.thumb
 665              		.thumb_func
 666              		.fpu fpv5-d16
 667              		.type	mcan_enable_fd_mode, %function
 668              	mcan_enable_fd_mode:
 669              	.LFB195:
 354:../asf/sam/drivers/mcan/mcan.c **** 
 355:../asf/sam/drivers/mcan/mcan.c **** /**
 356:../asf/sam/drivers/mcan/mcan.c ****  * \brief switch mcan module into fd mode.
 357:../asf/sam/drivers/mcan/mcan.c ****  *
 358:../asf/sam/drivers/mcan/mcan.c ****  * \param module_inst  MCAN instance
 359:../asf/sam/drivers/mcan/mcan.c ****  *
 360:../asf/sam/drivers/mcan/mcan.c ****  */
 361:../asf/sam/drivers/mcan/mcan.c **** void mcan_enable_fd_mode(struct mcan_module *const module_inst)
 362:../asf/sam/drivers/mcan/mcan.c **** {
 670              		.loc 1 362 0
 671              		.cfi_startproc
 672              		@ args = 0, pretend = 0, frame = 0
 673              		@ frame_needed = 0, uses_anonymous_args = 0
 674              		@ link register save eliminated.
 675              	.LVL25:
 363:../asf/sam/drivers/mcan/mcan.c **** 	module_inst->hw->MCAN_CCCR |= MCAN_CCCR_INIT;
 676              		.loc 1 363 0
 677 0000 0268     		ldr	r2, [r0]
 678 0002 9369     		ldr	r3, [r2, #24]
 679 0004 43F00103 		orr	r3, r3, #1
 680 0008 9361     		str	r3, [r2, #24]
 681              	.L67:
 364:../asf/sam/drivers/mcan/mcan.c **** 	/* Wait for the sync. */
 365:../asf/sam/drivers/mcan/mcan.c **** 	while (!(module_inst->hw->MCAN_CCCR & MCAN_CCCR_INIT));
 682              		.loc 1 365 0 discriminator 1
 683 000a 9369     		ldr	r3, [r2, #24]
 684 000c DB07     		lsls	r3, r3, #31
 685 000e FCD5     		bpl	.L67
 366:../asf/sam/drivers/mcan/mcan.c **** 	module_inst->hw->MCAN_CCCR |= MCAN_CCCR_CCE;
 686              		.loc 1 366 0
 687 0010 9369     		ldr	r3, [r2, #24]
 688 0012 43F00203 		orr	r3, r3, #2
 689 0016 9361     		str	r3, [r2, #24]
 367:../asf/sam/drivers/mcan/mcan.c **** 
 368:../asf/sam/drivers/mcan/mcan.c **** 	module_inst->hw->MCAN_CCCR |= MCAN_CCCR_CME(2);
 690              		.loc 1 368 0
 691 0018 9369     		ldr	r3, [r2, #24]
 692 001a 43F40073 		orr	r3, r3, #512
 693 001e 9361     		str	r3, [r2, #24]
 369:../asf/sam/drivers/mcan/mcan.c **** 	module_inst->hw->MCAN_CCCR |= MCAN_CCCR_CMR(2);
 694              		.loc 1 369 0
ARM GAS  /tmp/cciOmULZ.s 			page 22


 695 0020 9369     		ldr	r3, [r2, #24]
 696 0022 43F40063 		orr	r3, r3, #2048
 697 0026 9361     		str	r3, [r2, #24]
 698 0028 7047     		bx	lr
 699              		.cfi_endproc
 700              	.LFE195:
 701              		.size	mcan_enable_fd_mode, .-mcan_enable_fd_mode
 702 002a 00BF     		.section	.text.mcan_disable_fd_mode,"ax",%progbits
 703              		.align	1
 704              		.p2align 2,,3
 705              		.global	mcan_disable_fd_mode
 706              		.syntax unified
 707              		.thumb
 708              		.thumb_func
 709              		.fpu fpv5-d16
 710              		.type	mcan_disable_fd_mode, %function
 711              	mcan_disable_fd_mode:
 712              	.LFB196:
 370:../asf/sam/drivers/mcan/mcan.c **** }
 371:../asf/sam/drivers/mcan/mcan.c **** 
 372:../asf/sam/drivers/mcan/mcan.c **** /** 
 373:../asf/sam/drivers/mcan/mcan.c ****  * \brief disable fd mode of mcan module.
 374:../asf/sam/drivers/mcan/mcan.c ****  *
 375:../asf/sam/drivers/mcan/mcan.c ****  * \param module_inst  MCAN instance
 376:../asf/sam/drivers/mcan/mcan.c ****  *
 377:../asf/sam/drivers/mcan/mcan.c ****  */
 378:../asf/sam/drivers/mcan/mcan.c **** void mcan_disable_fd_mode(struct mcan_module *const module_inst)
 379:../asf/sam/drivers/mcan/mcan.c **** {
 713              		.loc 1 379 0
 714              		.cfi_startproc
 715              		@ args = 0, pretend = 0, frame = 0
 716              		@ frame_needed = 0, uses_anonymous_args = 0
 717              		@ link register save eliminated.
 718              	.LVL26:
 380:../asf/sam/drivers/mcan/mcan.c **** 	module_inst->hw->MCAN_CCCR &= MCAN_CCCR_CME(MCAN_CCCR_CME_ISO11898_1);
 719              		.loc 1 380 0
 720 0000 0368     		ldr	r3, [r0]
 721 0002 0022     		movs	r2, #0
 722 0004 9969     		ldr	r1, [r3, #24]
 723 0006 9A61     		str	r2, [r3, #24]
 724 0008 7047     		bx	lr
 725              		.cfi_endproc
 726              	.LFE196:
 727              		.size	mcan_disable_fd_mode, .-mcan_disable_fd_mode
 728 000a 00BF     		.section	.text.mcan_enable_restricted_operation_mode,"ax",%progbits
 729              		.align	1
 730              		.p2align 2,,3
 731              		.global	mcan_enable_restricted_operation_mode
 732              		.syntax unified
 733              		.thumb
 734              		.thumb_func
 735              		.fpu fpv5-d16
 736              		.type	mcan_enable_restricted_operation_mode, %function
 737              	mcan_enable_restricted_operation_mode:
 738              	.LFB197:
 381:../asf/sam/drivers/mcan/mcan.c **** }
 382:../asf/sam/drivers/mcan/mcan.c **** 
ARM GAS  /tmp/cciOmULZ.s 			page 23


 383:../asf/sam/drivers/mcan/mcan.c **** /**
 384:../asf/sam/drivers/mcan/mcan.c ****  * \brief enable restricted mode of mcan module.
 385:../asf/sam/drivers/mcan/mcan.c ****  *
 386:../asf/sam/drivers/mcan/mcan.c ****  * \param module_inst  MCAN instance
 387:../asf/sam/drivers/mcan/mcan.c ****  *
 388:../asf/sam/drivers/mcan/mcan.c ****  */
 389:../asf/sam/drivers/mcan/mcan.c **** void mcan_enable_restricted_operation_mode(
 390:../asf/sam/drivers/mcan/mcan.c **** 		struct mcan_module *const module_inst)
 391:../asf/sam/drivers/mcan/mcan.c **** {
 739              		.loc 1 391 0
 740              		.cfi_startproc
 741              		@ args = 0, pretend = 0, frame = 0
 742              		@ frame_needed = 0, uses_anonymous_args = 0
 743              		@ link register save eliminated.
 744              	.LVL27:
 392:../asf/sam/drivers/mcan/mcan.c **** 	module_inst->hw->MCAN_CCCR |= MCAN_CCCR_INIT;
 745              		.loc 1 392 0
 746 0000 0268     		ldr	r2, [r0]
 747 0002 9369     		ldr	r3, [r2, #24]
 748 0004 43F00103 		orr	r3, r3, #1
 749 0008 9361     		str	r3, [r2, #24]
 750              	.L72:
 393:../asf/sam/drivers/mcan/mcan.c **** 	/* Wait for the sync. */
 394:../asf/sam/drivers/mcan/mcan.c **** 	while (!(module_inst->hw->MCAN_CCCR & MCAN_CCCR_INIT));
 751              		.loc 1 394 0 discriminator 1
 752 000a 9369     		ldr	r3, [r2, #24]
 753 000c DB07     		lsls	r3, r3, #31
 754 000e FCD5     		bpl	.L72
 395:../asf/sam/drivers/mcan/mcan.c **** 	module_inst->hw->MCAN_CCCR |= MCAN_CCCR_CCE;
 755              		.loc 1 395 0
 756 0010 9369     		ldr	r3, [r2, #24]
 757 0012 43F00203 		orr	r3, r3, #2
 758 0016 9361     		str	r3, [r2, #24]
 396:../asf/sam/drivers/mcan/mcan.c **** 
 397:../asf/sam/drivers/mcan/mcan.c **** 	module_inst->hw->MCAN_CCCR |= MCAN_CCCR_ASM;
 759              		.loc 1 397 0
 760 0018 9369     		ldr	r3, [r2, #24]
 761 001a 43F00403 		orr	r3, r3, #4
 762 001e 9361     		str	r3, [r2, #24]
 763 0020 7047     		bx	lr
 764              		.cfi_endproc
 765              	.LFE197:
 766              		.size	mcan_enable_restricted_operation_mode, .-mcan_enable_restricted_operation_mode
 767 0022 00BF     		.section	.text.mcan_disable_restricted_operation_mode,"ax",%progbits
 768              		.align	1
 769              		.p2align 2,,3
 770              		.global	mcan_disable_restricted_operation_mode
 771              		.syntax unified
 772              		.thumb
 773              		.thumb_func
 774              		.fpu fpv5-d16
 775              		.type	mcan_disable_restricted_operation_mode, %function
 776              	mcan_disable_restricted_operation_mode:
 777              	.LFB198:
 398:../asf/sam/drivers/mcan/mcan.c **** }
 399:../asf/sam/drivers/mcan/mcan.c **** 
 400:../asf/sam/drivers/mcan/mcan.c **** /**
ARM GAS  /tmp/cciOmULZ.s 			page 24


 401:../asf/sam/drivers/mcan/mcan.c ****  * \brief disable restricted mode of mcan module.
 402:../asf/sam/drivers/mcan/mcan.c ****  *
 403:../asf/sam/drivers/mcan/mcan.c ****  * \param module_inst  MCAN instance
 404:../asf/sam/drivers/mcan/mcan.c ****  *
 405:../asf/sam/drivers/mcan/mcan.c ****  */
 406:../asf/sam/drivers/mcan/mcan.c **** void mcan_disable_restricted_operation_mode(
 407:../asf/sam/drivers/mcan/mcan.c **** 		struct mcan_module *const module_inst)
 408:../asf/sam/drivers/mcan/mcan.c **** {
 778              		.loc 1 408 0
 779              		.cfi_startproc
 780              		@ args = 0, pretend = 0, frame = 0
 781              		@ frame_needed = 0, uses_anonymous_args = 0
 782              		@ link register save eliminated.
 783              	.LVL28:
 409:../asf/sam/drivers/mcan/mcan.c **** 	module_inst->hw->MCAN_CCCR &= ~MCAN_CCCR_ASM;
 784              		.loc 1 409 0
 785 0000 0268     		ldr	r2, [r0]
 786 0002 9369     		ldr	r3, [r2, #24]
 787 0004 23F00403 		bic	r3, r3, #4
 788 0008 9361     		str	r3, [r2, #24]
 789 000a 7047     		bx	lr
 790              		.cfi_endproc
 791              	.LFE198:
 792              		.size	mcan_disable_restricted_operation_mode, .-mcan_disable_restricted_operation_mode
 793              		.section	.text.mcan_enable_bus_monitor_mode,"ax",%progbits
 794              		.align	1
 795              		.p2align 2,,3
 796              		.global	mcan_enable_bus_monitor_mode
 797              		.syntax unified
 798              		.thumb
 799              		.thumb_func
 800              		.fpu fpv5-d16
 801              		.type	mcan_enable_bus_monitor_mode, %function
 802              	mcan_enable_bus_monitor_mode:
 803              	.LFB199:
 410:../asf/sam/drivers/mcan/mcan.c **** }
 411:../asf/sam/drivers/mcan/mcan.c **** 
 412:../asf/sam/drivers/mcan/mcan.c **** /**
 413:../asf/sam/drivers/mcan/mcan.c ****  * \brief enable bus monitor mode of mcan module.
 414:../asf/sam/drivers/mcan/mcan.c ****  *
 415:../asf/sam/drivers/mcan/mcan.c ****  * \param module_inst  MCAN instance
 416:../asf/sam/drivers/mcan/mcan.c ****  *
 417:../asf/sam/drivers/mcan/mcan.c ****  */
 418:../asf/sam/drivers/mcan/mcan.c **** void mcan_enable_bus_monitor_mode(struct mcan_module *const module_inst)
 419:../asf/sam/drivers/mcan/mcan.c **** {
 804              		.loc 1 419 0
 805              		.cfi_startproc
 806              		@ args = 0, pretend = 0, frame = 0
 807              		@ frame_needed = 0, uses_anonymous_args = 0
 808              		@ link register save eliminated.
 809              	.LVL29:
 420:../asf/sam/drivers/mcan/mcan.c **** 	module_inst->hw->MCAN_CCCR |= MCAN_CCCR_INIT;
 810              		.loc 1 420 0
 811 0000 0268     		ldr	r2, [r0]
 812 0002 9369     		ldr	r3, [r2, #24]
 813 0004 43F00103 		orr	r3, r3, #1
 814 0008 9361     		str	r3, [r2, #24]
ARM GAS  /tmp/cciOmULZ.s 			page 25


 815              	.L77:
 421:../asf/sam/drivers/mcan/mcan.c **** 	/* Wait for the sync. */
 422:../asf/sam/drivers/mcan/mcan.c **** 	while (!(module_inst->hw->MCAN_CCCR & MCAN_CCCR_INIT));
 816              		.loc 1 422 0 discriminator 1
 817 000a 9369     		ldr	r3, [r2, #24]
 818 000c DB07     		lsls	r3, r3, #31
 819 000e FCD5     		bpl	.L77
 423:../asf/sam/drivers/mcan/mcan.c **** 	module_inst->hw->MCAN_CCCR |= MCAN_CCCR_CCE;
 820              		.loc 1 423 0
 821 0010 9369     		ldr	r3, [r2, #24]
 822 0012 43F00203 		orr	r3, r3, #2
 823 0016 9361     		str	r3, [r2, #24]
 424:../asf/sam/drivers/mcan/mcan.c **** 
 425:../asf/sam/drivers/mcan/mcan.c **** 	module_inst->hw->MCAN_CCCR |= MCAN_CCCR_MON;
 824              		.loc 1 425 0
 825 0018 9369     		ldr	r3, [r2, #24]
 826 001a 43F02003 		orr	r3, r3, #32
 827 001e 9361     		str	r3, [r2, #24]
 828 0020 7047     		bx	lr
 829              		.cfi_endproc
 830              	.LFE199:
 831              		.size	mcan_enable_bus_monitor_mode, .-mcan_enable_bus_monitor_mode
 832 0022 00BF     		.section	.text.mcan_disable_bus_monitor_mode,"ax",%progbits
 833              		.align	1
 834              		.p2align 2,,3
 835              		.global	mcan_disable_bus_monitor_mode
 836              		.syntax unified
 837              		.thumb
 838              		.thumb_func
 839              		.fpu fpv5-d16
 840              		.type	mcan_disable_bus_monitor_mode, %function
 841              	mcan_disable_bus_monitor_mode:
 842              	.LFB200:
 426:../asf/sam/drivers/mcan/mcan.c **** }
 427:../asf/sam/drivers/mcan/mcan.c **** 
 428:../asf/sam/drivers/mcan/mcan.c **** /**
 429:../asf/sam/drivers/mcan/mcan.c ****  * \brief disable bus monitor mode of mcan module.
 430:../asf/sam/drivers/mcan/mcan.c ****  *
 431:../asf/sam/drivers/mcan/mcan.c ****  * \param module_inst  MCAN instance
 432:../asf/sam/drivers/mcan/mcan.c ****  *
 433:../asf/sam/drivers/mcan/mcan.c ****  */
 434:../asf/sam/drivers/mcan/mcan.c **** void mcan_disable_bus_monitor_mode(struct mcan_module *const module_inst)
 435:../asf/sam/drivers/mcan/mcan.c **** {
 843              		.loc 1 435 0
 844              		.cfi_startproc
 845              		@ args = 0, pretend = 0, frame = 0
 846              		@ frame_needed = 0, uses_anonymous_args = 0
 847              		@ link register save eliminated.
 848              	.LVL30:
 436:../asf/sam/drivers/mcan/mcan.c **** 	module_inst->hw->MCAN_CCCR &= ~MCAN_CCCR_MON;
 849              		.loc 1 436 0
 850 0000 0268     		ldr	r2, [r0]
 851 0002 9369     		ldr	r3, [r2, #24]
 852 0004 23F02003 		bic	r3, r3, #32
 853 0008 9361     		str	r3, [r2, #24]
 854 000a 7047     		bx	lr
 855              		.cfi_endproc
ARM GAS  /tmp/cciOmULZ.s 			page 26


 856              	.LFE200:
 857              		.size	mcan_disable_bus_monitor_mode, .-mcan_disable_bus_monitor_mode
 858              		.section	.text.mcan_enable_sleep_mode,"ax",%progbits
 859              		.align	1
 860              		.p2align 2,,3
 861              		.global	mcan_enable_sleep_mode
 862              		.syntax unified
 863              		.thumb
 864              		.thumb_func
 865              		.fpu fpv5-d16
 866              		.type	mcan_enable_sleep_mode, %function
 867              	mcan_enable_sleep_mode:
 868              	.LFB201:
 437:../asf/sam/drivers/mcan/mcan.c **** }
 438:../asf/sam/drivers/mcan/mcan.c **** 
 439:../asf/sam/drivers/mcan/mcan.c **** /**
 440:../asf/sam/drivers/mcan/mcan.c ****  * \brief enable sleep mode of mcan module.
 441:../asf/sam/drivers/mcan/mcan.c ****  *
 442:../asf/sam/drivers/mcan/mcan.c ****  * \param module_inst  MCAN instance
 443:../asf/sam/drivers/mcan/mcan.c ****  *
 444:../asf/sam/drivers/mcan/mcan.c ****  */
 445:../asf/sam/drivers/mcan/mcan.c **** void mcan_enable_sleep_mode(struct mcan_module *const module_inst)
 446:../asf/sam/drivers/mcan/mcan.c **** {
 869              		.loc 1 446 0
 870              		.cfi_startproc
 871              		@ args = 0, pretend = 0, frame = 0
 872              		@ frame_needed = 0, uses_anonymous_args = 0
 873              		@ link register save eliminated.
 874              	.LVL31:
 447:../asf/sam/drivers/mcan/mcan.c **** 	module_inst->hw->MCAN_CCCR |= MCAN_CCCR_CSR;
 875              		.loc 1 447 0
 876 0000 0368     		ldr	r3, [r0]
 877 0002 9A69     		ldr	r2, [r3, #24]
 878 0004 42F01002 		orr	r2, r2, #16
 879 0008 9A61     		str	r2, [r3, #24]
 880              	.L82:
 448:../asf/sam/drivers/mcan/mcan.c **** 	/* Wait for the sync. */
 449:../asf/sam/drivers/mcan/mcan.c **** 	while (!(module_inst->hw->MCAN_CCCR & MCAN_CCCR_INIT));
 881              		.loc 1 449 0 discriminator 1
 882 000a 9A69     		ldr	r2, [r3, #24]
 883 000c D107     		lsls	r1, r2, #31
 884 000e FCD5     		bpl	.L82
 885              	.L86:
 450:../asf/sam/drivers/mcan/mcan.c **** 
 451:../asf/sam/drivers/mcan/mcan.c **** 	while (!(module_inst->hw->MCAN_CCCR & MCAN_CCCR_CSA));
 886              		.loc 1 451 0 discriminator 1
 887 0010 9A69     		ldr	r2, [r3, #24]
 888 0012 1207     		lsls	r2, r2, #28
 889 0014 FCD5     		bpl	.L86
 452:../asf/sam/drivers/mcan/mcan.c **** }
 890              		.loc 1 452 0
 891 0016 7047     		bx	lr
 892              		.cfi_endproc
 893              	.LFE201:
 894              		.size	mcan_enable_sleep_mode, .-mcan_enable_sleep_mode
 895              		.section	.text.mcan_disable_sleep_mode,"ax",%progbits
 896              		.align	1
ARM GAS  /tmp/cciOmULZ.s 			page 27


 897              		.p2align 2,,3
 898              		.global	mcan_disable_sleep_mode
 899              		.syntax unified
 900              		.thumb
 901              		.thumb_func
 902              		.fpu fpv5-d16
 903              		.type	mcan_disable_sleep_mode, %function
 904              	mcan_disable_sleep_mode:
 905              	.LFB202:
 453:../asf/sam/drivers/mcan/mcan.c **** 
 454:../asf/sam/drivers/mcan/mcan.c **** /**
 455:../asf/sam/drivers/mcan/mcan.c ****  * \brief disable sleep mode of mcan module.
 456:../asf/sam/drivers/mcan/mcan.c ****  *
 457:../asf/sam/drivers/mcan/mcan.c ****  * \param module_inst  MCAN instance
 458:../asf/sam/drivers/mcan/mcan.c ****  *
 459:../asf/sam/drivers/mcan/mcan.c ****  */
 460:../asf/sam/drivers/mcan/mcan.c **** void mcan_disable_sleep_mode(struct mcan_module *const module_inst)
 461:../asf/sam/drivers/mcan/mcan.c **** {
 906              		.loc 1 461 0
 907              		.cfi_startproc
 908              		@ args = 0, pretend = 0, frame = 0
 909              		@ frame_needed = 0, uses_anonymous_args = 0
 910              	.LVL32:
 911 0000 10B5     		push	{r4, lr}
 912              		.cfi_def_cfa_offset 8
 913              		.cfi_offset 4, -8
 914              		.cfi_offset 14, -4
 915              		.loc 1 461 0
 916 0002 0446     		mov	r4, r0
 462:../asf/sam/drivers/mcan/mcan.c **** 	/* Enable peripheral clock */
 463:../asf/sam/drivers/mcan/mcan.c **** 	_mcan_enable_peripheral_clock(module_inst);
 917              		.loc 1 463 0
 918 0004 FFF7FEFF 		bl	_mcan_enable_peripheral_clock
 919              	.LVL33:
 464:../asf/sam/drivers/mcan/mcan.c **** 
 465:../asf/sam/drivers/mcan/mcan.c **** 	module_inst->hw->MCAN_CCCR &= ~MCAN_CCCR_CSR;
 920              		.loc 1 465 0
 921 0008 2268     		ldr	r2, [r4]
 922 000a 9369     		ldr	r3, [r2, #24]
 923 000c 23F01003 		bic	r3, r3, #16
 924 0010 9361     		str	r3, [r2, #24]
 925              	.L90:
 466:../asf/sam/drivers/mcan/mcan.c **** 	while ((module_inst->hw->MCAN_CCCR & MCAN_CCCR_CSA));
 926              		.loc 1 466 0 discriminator 1
 927 0012 9369     		ldr	r3, [r2, #24]
 928 0014 1B07     		lsls	r3, r3, #28
 929 0016 FCD4     		bmi	.L90
 467:../asf/sam/drivers/mcan/mcan.c **** }
 930              		.loc 1 467 0
 931 0018 10BD     		pop	{r4, pc}
 932              		.cfi_endproc
 933              	.LFE202:
 934              		.size	mcan_disable_sleep_mode, .-mcan_disable_sleep_mode
 935 001a 00BF     		.section	.text.mcan_enable_test_mode,"ax",%progbits
 936              		.align	1
 937              		.p2align 2,,3
 938              		.global	mcan_enable_test_mode
ARM GAS  /tmp/cciOmULZ.s 			page 28


 939              		.syntax unified
 940              		.thumb
 941              		.thumb_func
 942              		.fpu fpv5-d16
 943              		.type	mcan_enable_test_mode, %function
 944              	mcan_enable_test_mode:
 945              	.LFB203:
 468:../asf/sam/drivers/mcan/mcan.c **** 
 469:../asf/sam/drivers/mcan/mcan.c **** /**
 470:../asf/sam/drivers/mcan/mcan.c ****  * \brief enable test mode of mcan module.
 471:../asf/sam/drivers/mcan/mcan.c ****  *
 472:../asf/sam/drivers/mcan/mcan.c ****  * \param module_inst  MCAN instance
 473:../asf/sam/drivers/mcan/mcan.c ****  *
 474:../asf/sam/drivers/mcan/mcan.c ****  */
 475:../asf/sam/drivers/mcan/mcan.c **** void mcan_enable_test_mode(struct mcan_module *const module_inst)
 476:../asf/sam/drivers/mcan/mcan.c **** {
 946              		.loc 1 476 0
 947              		.cfi_startproc
 948              		@ args = 0, pretend = 0, frame = 0
 949              		@ frame_needed = 0, uses_anonymous_args = 0
 950              		@ link register save eliminated.
 951              	.LVL34:
 477:../asf/sam/drivers/mcan/mcan.c **** 	module_inst->hw->MCAN_CCCR |= MCAN_CCCR_INIT;
 952              		.loc 1 477 0
 953 0000 0268     		ldr	r2, [r0]
 954 0002 9369     		ldr	r3, [r2, #24]
 955 0004 43F00103 		orr	r3, r3, #1
 956 0008 9361     		str	r3, [r2, #24]
 957              	.L94:
 478:../asf/sam/drivers/mcan/mcan.c **** 	/* Wait for the sync. */
 479:../asf/sam/drivers/mcan/mcan.c **** 	while (!(module_inst->hw->MCAN_CCCR & MCAN_CCCR_INIT));
 958              		.loc 1 479 0 discriminator 1
 959 000a 9369     		ldr	r3, [r2, #24]
 960 000c DB07     		lsls	r3, r3, #31
 961 000e FCD5     		bpl	.L94
 480:../asf/sam/drivers/mcan/mcan.c **** 	module_inst->hw->MCAN_CCCR |= MCAN_CCCR_CCE;
 962              		.loc 1 480 0
 963 0010 9369     		ldr	r3, [r2, #24]
 964 0012 43F00203 		orr	r3, r3, #2
 965 0016 9361     		str	r3, [r2, #24]
 481:../asf/sam/drivers/mcan/mcan.c **** 
 482:../asf/sam/drivers/mcan/mcan.c **** 	module_inst->hw->MCAN_CCCR |= MCAN_CCCR_TEST;
 966              		.loc 1 482 0
 967 0018 9369     		ldr	r3, [r2, #24]
 968 001a 43F08003 		orr	r3, r3, #128
 969 001e 9361     		str	r3, [r2, #24]
 483:../asf/sam/drivers/mcan/mcan.c **** 	module_inst->hw->MCAN_TEST |= MCAN_TEST_LBCK;
 970              		.loc 1 483 0
 971 0020 1369     		ldr	r3, [r2, #16]
 972 0022 43F01003 		orr	r3, r3, #16
 973 0026 1361     		str	r3, [r2, #16]
 974 0028 7047     		bx	lr
 975              		.cfi_endproc
 976              	.LFE203:
 977              		.size	mcan_enable_test_mode, .-mcan_enable_test_mode
 978 002a 00BF     		.section	.text.mcan_disable_test_mode,"ax",%progbits
 979              		.align	1
ARM GAS  /tmp/cciOmULZ.s 			page 29


 980              		.p2align 2,,3
 981              		.global	mcan_disable_test_mode
 982              		.syntax unified
 983              		.thumb
 984              		.thumb_func
 985              		.fpu fpv5-d16
 986              		.type	mcan_disable_test_mode, %function
 987              	mcan_disable_test_mode:
 988              	.LFB204:
 484:../asf/sam/drivers/mcan/mcan.c **** }
 485:../asf/sam/drivers/mcan/mcan.c **** 
 486:../asf/sam/drivers/mcan/mcan.c **** /**
 487:../asf/sam/drivers/mcan/mcan.c ****  * \brief disable test mode of mcan module.
 488:../asf/sam/drivers/mcan/mcan.c ****  *
 489:../asf/sam/drivers/mcan/mcan.c ****  * \param module_inst  MCAN instance
 490:../asf/sam/drivers/mcan/mcan.c ****  *
 491:../asf/sam/drivers/mcan/mcan.c ****  */
 492:../asf/sam/drivers/mcan/mcan.c **** void mcan_disable_test_mode(struct mcan_module *const module_inst)
 493:../asf/sam/drivers/mcan/mcan.c **** {
 989              		.loc 1 493 0
 990              		.cfi_startproc
 991              		@ args = 0, pretend = 0, frame = 0
 992              		@ frame_needed = 0, uses_anonymous_args = 0
 993              		@ link register save eliminated.
 994              	.LVL35:
 494:../asf/sam/drivers/mcan/mcan.c **** 	module_inst->hw->MCAN_CCCR &= ~MCAN_CCCR_TEST;
 995              		.loc 1 494 0
 996 0000 0268     		ldr	r2, [r0]
 997 0002 9369     		ldr	r3, [r2, #24]
 998 0004 23F08003 		bic	r3, r3, #128
 999 0008 9361     		str	r3, [r2, #24]
 1000 000a 7047     		bx	lr
 1001              		.cfi_endproc
 1002              	.LFE204:
 1003              		.size	mcan_disable_test_mode, .-mcan_disable_test_mode
 1004              		.section	.text.mcan_set_rx_standard_filter,"ax",%progbits
 1005              		.align	1
 1006              		.p2align 2,,3
 1007              		.global	mcan_set_rx_standard_filter
 1008              		.syntax unified
 1009              		.thumb
 1010              		.thumb_func
 1011              		.fpu fpv5-d16
 1012              		.type	mcan_set_rx_standard_filter, %function
 1013              	mcan_set_rx_standard_filter:
 1014              	.LFB205:
 495:../asf/sam/drivers/mcan/mcan.c **** }
 496:../asf/sam/drivers/mcan/mcan.c **** 
 497:../asf/sam/drivers/mcan/mcan.c **** /**
 498:../asf/sam/drivers/mcan/mcan.c ****  * \brief set standard receive CAN ID.
 499:../asf/sam/drivers/mcan/mcan.c ****  *
 500:../asf/sam/drivers/mcan/mcan.c ****  * \param module_inst  MCAN instance
 501:../asf/sam/drivers/mcan/mcan.c ****  * \param sd_filter  structure of CAN ID
 502:../asf/sam/drivers/mcan/mcan.c ****  * \param index  CAN messages memory index for different CAN ID
 503:../asf/sam/drivers/mcan/mcan.c ****  *
 504:../asf/sam/drivers/mcan/mcan.c ****  * \return status code.
 505:../asf/sam/drivers/mcan/mcan.c ****  */
ARM GAS  /tmp/cciOmULZ.s 			page 30


 506:../asf/sam/drivers/mcan/mcan.c **** enum status_code mcan_set_rx_standard_filter(
 507:../asf/sam/drivers/mcan/mcan.c **** 		struct mcan_module *const module_inst,
 508:../asf/sam/drivers/mcan/mcan.c **** 		struct mcan_standard_message_filter_element *sd_filter, uint32_t index)
 509:../asf/sam/drivers/mcan/mcan.c **** {
 1015              		.loc 1 509 0
 1016              		.cfi_startproc
 1017              		@ args = 0, pretend = 0, frame = 0
 1018              		@ frame_needed = 0, uses_anonymous_args = 0
 1019              		@ link register save eliminated.
 1020              	.LVL36:
 510:../asf/sam/drivers/mcan/mcan.c **** 	if (module_inst->hw == MCAN0) {
 1021              		.loc 1 510 0
 1022 0000 0368     		ldr	r3, [r0]
 1023 0002 0A48     		ldr	r0, .L103
 1024              	.LVL37:
 1025 0004 8342     		cmp	r3, r0
 1026 0006 0BD0     		beq	.L102
 511:../asf/sam/drivers/mcan/mcan.c **** 		mcan0_rx_standard_filter[index].S0.reg = sd_filter->S0.reg;
 512:../asf/sam/drivers/mcan/mcan.c **** 		return STATUS_OK;
 513:../asf/sam/drivers/mcan/mcan.c **** 	} else if (module_inst->hw == MCAN1) {
 1027              		.loc 1 513 0
 1028 0008 0948     		ldr	r0, .L103+4
 1029 000a 8342     		cmp	r3, r0
 1030 000c 05D1     		bne	.L101
 514:../asf/sam/drivers/mcan/mcan.c **** 		mcan1_rx_standard_filter[index].S0.reg = sd_filter->S0.reg;
 1031              		.loc 1 514 0
 1032 000e 0968     		ldr	r1, [r1]
 1033              	.LVL38:
 515:../asf/sam/drivers/mcan/mcan.c **** 		return STATUS_OK;
 1034              		.loc 1 515 0
 1035 0010 0020     		movs	r0, #0
 514:../asf/sam/drivers/mcan/mcan.c **** 		mcan1_rx_standard_filter[index].S0.reg = sd_filter->S0.reg;
 1036              		.loc 1 514 0
 1037 0012 084B     		ldr	r3, .L103+8
 1038 0014 43F82210 		str	r1, [r3, r2, lsl #2]
 1039              		.loc 1 515 0
 1040 0018 7047     		bx	lr
 1041              	.LVL39:
 1042              	.L101:
 516:../asf/sam/drivers/mcan/mcan.c **** 	}
 517:../asf/sam/drivers/mcan/mcan.c **** 	return ERR_INVALID_ARG;
 1043              		.loc 1 517 0
 1044 001a 6FF00700 		mvn	r0, #7
 518:../asf/sam/drivers/mcan/mcan.c **** }
 1045              		.loc 1 518 0
 1046 001e 7047     		bx	lr
 1047              	.L102:
 511:../asf/sam/drivers/mcan/mcan.c **** 		return STATUS_OK;
 1048              		.loc 1 511 0
 1049 0020 0968     		ldr	r1, [r1]
 1050              	.LVL40:
 512:../asf/sam/drivers/mcan/mcan.c **** 	} else if (module_inst->hw == MCAN1) {
 1051              		.loc 1 512 0
 1052 0022 0020     		movs	r0, #0
 511:../asf/sam/drivers/mcan/mcan.c **** 		return STATUS_OK;
 1053              		.loc 1 511 0
 1054 0024 044B     		ldr	r3, .L103+12
ARM GAS  /tmp/cciOmULZ.s 			page 31


 1055 0026 43F82210 		str	r1, [r3, r2, lsl #2]
 512:../asf/sam/drivers/mcan/mcan.c **** 	} else if (module_inst->hw == MCAN1) {
 1056              		.loc 1 512 0
 1057 002a 7047     		bx	lr
 1058              	.L104:
 1059              		.align	2
 1060              	.L103:
 1061 002c 00000340 		.word	1073938432
 1062 0030 00400340 		.word	1073954816
 1063 0034 00000000 		.word	.LANCHOR7
 1064 0038 00000000 		.word	.LANCHOR0
 1065              		.cfi_endproc
 1066              	.LFE205:
 1067              		.size	mcan_set_rx_standard_filter, .-mcan_set_rx_standard_filter
 1068              		.section	.text.mcan_set_rx_extended_filter,"ax",%progbits
 1069              		.align	1
 1070              		.p2align 2,,3
 1071              		.global	mcan_set_rx_extended_filter
 1072              		.syntax unified
 1073              		.thumb
 1074              		.thumb_func
 1075              		.fpu fpv5-d16
 1076              		.type	mcan_set_rx_extended_filter, %function
 1077              	mcan_set_rx_extended_filter:
 1078              	.LFB206:
 519:../asf/sam/drivers/mcan/mcan.c **** 
 520:../asf/sam/drivers/mcan/mcan.c **** /**
 521:../asf/sam/drivers/mcan/mcan.c ****  * \brief set extended receive CAN ID.
 522:../asf/sam/drivers/mcan/mcan.c ****  *
 523:../asf/sam/drivers/mcan/mcan.c ****  * \param module_inst  MCAN instance
 524:../asf/sam/drivers/mcan/mcan.c ****  * \param sd_filter  structure of extended CAN ID
 525:../asf/sam/drivers/mcan/mcan.c ****  * \param index  CAN messages memory index for different CAN ID
 526:../asf/sam/drivers/mcan/mcan.c ****  *
 527:../asf/sam/drivers/mcan/mcan.c ****  * \return status code.
 528:../asf/sam/drivers/mcan/mcan.c ****  */
 529:../asf/sam/drivers/mcan/mcan.c **** enum status_code mcan_set_rx_extended_filter(
 530:../asf/sam/drivers/mcan/mcan.c **** 		struct mcan_module *const module_inst,
 531:../asf/sam/drivers/mcan/mcan.c **** 		struct mcan_extended_message_filter_element *et_filter, uint32_t index)
 532:../asf/sam/drivers/mcan/mcan.c **** {
 1079              		.loc 1 532 0
 1080              		.cfi_startproc
 1081              		@ args = 0, pretend = 0, frame = 0
 1082              		@ frame_needed = 0, uses_anonymous_args = 0
 1083              		@ link register save eliminated.
 1084              	.LVL41:
 533:../asf/sam/drivers/mcan/mcan.c **** 	if (module_inst->hw == MCAN0) {
 1085              		.loc 1 533 0
 1086 0000 0068     		ldr	r0, [r0]
 1087              	.LVL42:
 1088 0002 124B     		ldr	r3, .L111
 1089 0004 9842     		cmp	r0, r3
 532:../asf/sam/drivers/mcan/mcan.c **** 	if (module_inst->hw == MCAN0) {
 1090              		.loc 1 532 0
 1091 0006 10B4     		push	{r4}
 1092              		.cfi_def_cfa_offset 4
 1093              		.cfi_offset 4, -4
 1094              		.loc 1 533 0
ARM GAS  /tmp/cciOmULZ.s 			page 32


 1095 0008 13D0     		beq	.L110
 534:../asf/sam/drivers/mcan/mcan.c **** 		mcan0_rx_extended_filter[index].F0.reg = et_filter->F0.reg;
 535:../asf/sam/drivers/mcan/mcan.c **** 		mcan0_rx_extended_filter[index].F1.reg = et_filter->F1.reg;
 536:../asf/sam/drivers/mcan/mcan.c **** 		return STATUS_OK;
 537:../asf/sam/drivers/mcan/mcan.c **** 	} else if (module_inst->hw == MCAN1) {
 1096              		.loc 1 537 0
 1097 000a 114B     		ldr	r3, .L111+4
 1098 000c 9842     		cmp	r0, r3
 1099 000e 0BD1     		bne	.L108
 538:../asf/sam/drivers/mcan/mcan.c **** 		mcan1_rx_extended_filter[index].F0.reg = et_filter->F0.reg;
 1100              		.loc 1 538 0
 1101 0010 0C68     		ldr	r4, [r1]
 539:../asf/sam/drivers/mcan/mcan.c **** 		mcan1_rx_extended_filter[index].F1.reg = et_filter->F1.reg;
 540:../asf/sam/drivers/mcan/mcan.c **** 		return STATUS_OK;
 1102              		.loc 1 540 0
 1103 0012 0020     		movs	r0, #0
 538:../asf/sam/drivers/mcan/mcan.c **** 		mcan1_rx_extended_filter[index].F0.reg = et_filter->F0.reg;
 1104              		.loc 1 538 0
 1105 0014 0F4B     		ldr	r3, .L111+8
 1106 0016 43F83240 		str	r4, [r3, r2, lsl #3]
 539:../asf/sam/drivers/mcan/mcan.c **** 		mcan1_rx_extended_filter[index].F1.reg = et_filter->F1.reg;
 1107              		.loc 1 539 0
 1108 001a 03EBC203 		add	r3, r3, r2, lsl #3
 1109 001e 4A68     		ldr	r2, [r1, #4]
 1110              	.LVL43:
 1111 0020 5A60     		str	r2, [r3, #4]
 541:../asf/sam/drivers/mcan/mcan.c **** 	}
 542:../asf/sam/drivers/mcan/mcan.c **** 	return ERR_INVALID_ARG;
 543:../asf/sam/drivers/mcan/mcan.c **** }
 1112              		.loc 1 543 0
 1113 0022 5DF8044B 		ldr	r4, [sp], #4
 1114              		.cfi_remember_state
 1115              		.cfi_restore 4
 1116              		.cfi_def_cfa_offset 0
 1117 0026 7047     		bx	lr
 1118              	.LVL44:
 1119              	.L108:
 1120              		.cfi_restore_state
 542:../asf/sam/drivers/mcan/mcan.c **** }
 1121              		.loc 1 542 0
 1122 0028 6FF00700 		mvn	r0, #7
 1123              		.loc 1 543 0
 1124 002c 5DF8044B 		ldr	r4, [sp], #4
 1125              		.cfi_remember_state
 1126              		.cfi_restore 4
 1127              		.cfi_def_cfa_offset 0
 1128 0030 7047     		bx	lr
 1129              	.L110:
 1130              		.cfi_restore_state
 534:../asf/sam/drivers/mcan/mcan.c **** 		mcan0_rx_extended_filter[index].F1.reg = et_filter->F1.reg;
 1131              		.loc 1 534 0
 1132 0032 0C68     		ldr	r4, [r1]
 536:../asf/sam/drivers/mcan/mcan.c **** 	} else if (module_inst->hw == MCAN1) {
 1133              		.loc 1 536 0
 1134 0034 0020     		movs	r0, #0
 534:../asf/sam/drivers/mcan/mcan.c **** 		mcan0_rx_extended_filter[index].F1.reg = et_filter->F1.reg;
 1135              		.loc 1 534 0
ARM GAS  /tmp/cciOmULZ.s 			page 33


 1136 0036 084B     		ldr	r3, .L111+12
 1137 0038 43F83240 		str	r4, [r3, r2, lsl #3]
 535:../asf/sam/drivers/mcan/mcan.c **** 		return STATUS_OK;
 1138              		.loc 1 535 0
 1139 003c 03EBC203 		add	r3, r3, r2, lsl #3
 1140 0040 4A68     		ldr	r2, [r1, #4]
 1141              	.LVL45:
 1142 0042 5A60     		str	r2, [r3, #4]
 1143              		.loc 1 543 0
 1144 0044 5DF8044B 		ldr	r4, [sp], #4
 1145              		.cfi_restore 4
 1146              		.cfi_def_cfa_offset 0
 1147 0048 7047     		bx	lr
 1148              	.L112:
 1149 004a 00BF     		.align	2
 1150              	.L111:
 1151 004c 00000340 		.word	1073938432
 1152 0050 00400340 		.word	1073954816
 1153 0054 00000000 		.word	.LANCHOR8
 1154 0058 00000000 		.word	.LANCHOR1
 1155              		.cfi_endproc
 1156              	.LFE206:
 1157              		.size	mcan_set_rx_extended_filter, .-mcan_set_rx_extended_filter
 1158              		.section	.text.mcan_get_rx_buffer_element,"ax",%progbits
 1159              		.align	1
 1160              		.p2align 2,,3
 1161              		.global	mcan_get_rx_buffer_element
 1162              		.syntax unified
 1163              		.thumb
 1164              		.thumb_func
 1165              		.fpu fpv5-d16
 1166              		.type	mcan_get_rx_buffer_element, %function
 1167              	mcan_get_rx_buffer_element:
 1168              	.LFB207:
 544:../asf/sam/drivers/mcan/mcan.c **** 
 545:../asf/sam/drivers/mcan/mcan.c **** /**
 546:../asf/sam/drivers/mcan/mcan.c ****  * \brief get dedicated rx buffer element .
 547:../asf/sam/drivers/mcan/mcan.c ****  *
 548:../asf/sam/drivers/mcan/mcan.c ****  * \param module_inst  MCAN instance
 549:../asf/sam/drivers/mcan/mcan.c ****  * \param rx_element  structure of element
 550:../asf/sam/drivers/mcan/mcan.c ****  * \param index  CAN messages memory index for receiving CAN ID
 551:../asf/sam/drivers/mcan/mcan.c ****  *
 552:../asf/sam/drivers/mcan/mcan.c ****  * \return status code.
 553:../asf/sam/drivers/mcan/mcan.c ****  */
 554:../asf/sam/drivers/mcan/mcan.c **** enum status_code mcan_get_rx_buffer_element(
 555:../asf/sam/drivers/mcan/mcan.c **** 		struct mcan_module *const module_inst,
 556:../asf/sam/drivers/mcan/mcan.c **** 		struct mcan_rx_element_buffer *rx_element, uint32_t index)
 557:../asf/sam/drivers/mcan/mcan.c **** {
 1169              		.loc 1 557 0
 1170              		.cfi_startproc
 1171              		@ args = 0, pretend = 0, frame = 0
 1172              		@ frame_needed = 0, uses_anonymous_args = 0
 1173              		@ link register save eliminated.
 1174              	.LVL46:
 1175 0000 70B4     		push	{r4, r5, r6}
 1176              		.cfi_def_cfa_offset 12
 1177              		.cfi_offset 4, -12
ARM GAS  /tmp/cciOmULZ.s 			page 34


 1178              		.cfi_offset 5, -8
 1179              		.cfi_offset 6, -4
 558:../asf/sam/drivers/mcan/mcan.c **** 	if (module_inst->hw == MCAN0) {
 1180              		.loc 1 558 0
 1181 0002 0368     		ldr	r3, [r0]
 557:../asf/sam/drivers/mcan/mcan.c **** 	if (module_inst->hw == MCAN0) {
 1182              		.loc 1 557 0
 1183 0004 0D46     		mov	r5, r1
 1184              		.loc 1 558 0
 1185 0006 0C49     		ldr	r1, .L120
 1186              	.LVL47:
 1187 0008 8B42     		cmp	r3, r1
 1188 000a 13D0     		beq	.L119
 559:../asf/sam/drivers/mcan/mcan.c **** 		memcpy(rx_element, &mcan0_rx_buffer[index], sizeof(struct mcan_rx_element_buffer));
 560:../asf/sam/drivers/mcan/mcan.c **** 		return STATUS_OK;
 561:../asf/sam/drivers/mcan/mcan.c **** 	} else if (module_inst->hw == MCAN1) {
 1189              		.loc 1 561 0
 1190 000c 0B49     		ldr	r1, .L120+4
 1191 000e 8B42     		cmp	r3, r1
 1192 0010 0BD1     		bne	.L116
 562:../asf/sam/drivers/mcan/mcan.c **** 		memcpy(rx_element, &mcan1_rx_buffer[index], sizeof(struct mcan_rx_element_buffer));
 1193              		.loc 1 562 0
 1194 0012 0B4C     		ldr	r4, .L120+8
 1195              	.L118:
 1196 0014 04EB0214 		add	r4, r4, r2, lsl #4
 563:../asf/sam/drivers/mcan/mcan.c **** 		return STATUS_OK;
 1197              		.loc 1 563 0
 1198 0018 0026     		movs	r6, #0
 562:../asf/sam/drivers/mcan/mcan.c **** 		memcpy(rx_element, &mcan1_rx_buffer[index], sizeof(struct mcan_rx_element_buffer));
 1199              		.loc 1 562 0
 1200 001a 0FCC     		ldmia	r4!, {r0, r1, r2, r3}
 1201              	.LVL48:
 1202 001c 2860     		str	r0, [r5]	@ unaligned
 564:../asf/sam/drivers/mcan/mcan.c **** 	}
 565:../asf/sam/drivers/mcan/mcan.c **** 	return ERR_INVALID_ARG;
 566:../asf/sam/drivers/mcan/mcan.c **** }
 1203              		.loc 1 566 0
 1204 001e 3046     		mov	r0, r6
 562:../asf/sam/drivers/mcan/mcan.c **** 		return STATUS_OK;
 1205              		.loc 1 562 0
 1206 0020 6960     		str	r1, [r5, #4]	@ unaligned
 1207 0022 AA60     		str	r2, [r5, #8]	@ unaligned
 1208 0024 EB60     		str	r3, [r5, #12]	@ unaligned
 1209              		.loc 1 566 0
 1210 0026 70BC     		pop	{r4, r5, r6}
 1211              		.cfi_remember_state
 1212              		.cfi_restore 6
 1213              		.cfi_restore 5
 1214              		.cfi_restore 4
 1215              		.cfi_def_cfa_offset 0
 1216              	.LVL49:
 1217 0028 7047     		bx	lr
 1218              	.LVL50:
 1219              	.L116:
 1220              		.cfi_restore_state
 565:../asf/sam/drivers/mcan/mcan.c **** }
 1221              		.loc 1 565 0
ARM GAS  /tmp/cciOmULZ.s 			page 35


 1222 002a 6FF00706 		mvn	r6, #7
 1223              		.loc 1 566 0
 1224 002e 3046     		mov	r0, r6
 1225              	.LVL51:
 1226 0030 70BC     		pop	{r4, r5, r6}
 1227              		.cfi_remember_state
 1228              		.cfi_restore 4
 1229              		.cfi_restore 5
 1230              		.cfi_restore 6
 1231              		.cfi_def_cfa_offset 0
 1232              	.LVL52:
 1233 0032 7047     		bx	lr
 1234              	.LVL53:
 1235              	.L119:
 1236              		.cfi_restore_state
 559:../asf/sam/drivers/mcan/mcan.c **** 		return STATUS_OK;
 1237              		.loc 1 559 0
 1238 0034 034C     		ldr	r4, .L120+12
 1239 0036 EDE7     		b	.L118
 1240              	.L121:
 1241              		.align	2
 1242              	.L120:
 1243 0038 00000340 		.word	1073938432
 1244 003c 00400340 		.word	1073954816
 1245 0040 00000000 		.word	.LANCHOR11
 1246 0044 00000000 		.word	.LANCHOR4
 1247              		.cfi_endproc
 1248              	.LFE207:
 1249              		.size	mcan_get_rx_buffer_element, .-mcan_get_rx_buffer_element
 1250              		.section	.text.mcan_get_rx_fifo_0_element,"ax",%progbits
 1251              		.align	1
 1252              		.p2align 2,,3
 1253              		.global	mcan_get_rx_fifo_0_element
 1254              		.syntax unified
 1255              		.thumb
 1256              		.thumb_func
 1257              		.fpu fpv5-d16
 1258              		.type	mcan_get_rx_fifo_0_element, %function
 1259              	mcan_get_rx_fifo_0_element:
 1260              	.LFB208:
 567:../asf/sam/drivers/mcan/mcan.c **** 
 568:../asf/sam/drivers/mcan/mcan.c **** /**
 569:../asf/sam/drivers/mcan/mcan.c ****  * \brief get FIFO rx buffer element .
 570:../asf/sam/drivers/mcan/mcan.c ****  *
 571:../asf/sam/drivers/mcan/mcan.c ****  * \param module_inst  MCAN instance
 572:../asf/sam/drivers/mcan/mcan.c ****  * \param rx_element  structure of element
 573:../asf/sam/drivers/mcan/mcan.c ****  * \param index  CAN messages memory index for receiving CAN ID
 574:../asf/sam/drivers/mcan/mcan.c ****  *
 575:../asf/sam/drivers/mcan/mcan.c ****  * \return status code.
 576:../asf/sam/drivers/mcan/mcan.c ****  */
 577:../asf/sam/drivers/mcan/mcan.c **** enum status_code mcan_get_rx_fifo_0_element(
 578:../asf/sam/drivers/mcan/mcan.c **** 		struct mcan_module *const module_inst,
 579:../asf/sam/drivers/mcan/mcan.c **** 		struct mcan_rx_element_fifo_0 *rx_element, uint32_t index)
 580:../asf/sam/drivers/mcan/mcan.c **** {
 1261              		.loc 1 580 0
 1262              		.cfi_startproc
 1263              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/cciOmULZ.s 			page 36


 1264              		@ frame_needed = 0, uses_anonymous_args = 0
 1265              		@ link register save eliminated.
 1266              	.LVL54:
 1267 0000 70B4     		push	{r4, r5, r6}
 1268              		.cfi_def_cfa_offset 12
 1269              		.cfi_offset 4, -12
 1270              		.cfi_offset 5, -8
 1271              		.cfi_offset 6, -4
 581:../asf/sam/drivers/mcan/mcan.c **** 	if (module_inst->hw == MCAN0) {
 1272              		.loc 1 581 0
 1273 0002 0368     		ldr	r3, [r0]
 580:../asf/sam/drivers/mcan/mcan.c **** 	if (module_inst->hw == MCAN0) {
 1274              		.loc 1 580 0
 1275 0004 0D46     		mov	r5, r1
 1276              		.loc 1 581 0
 1277 0006 0C49     		ldr	r1, .L129
 1278              	.LVL55:
 1279 0008 8B42     		cmp	r3, r1
 1280 000a 13D0     		beq	.L128
 582:../asf/sam/drivers/mcan/mcan.c **** 		memcpy(rx_element, &mcan0_rx_fifo_0[index], sizeof(struct mcan_rx_element_buffer));
 583:../asf/sam/drivers/mcan/mcan.c **** 		return STATUS_OK;
 584:../asf/sam/drivers/mcan/mcan.c **** 	} else if (module_inst->hw == MCAN1) {
 1281              		.loc 1 584 0
 1282 000c 0B49     		ldr	r1, .L129+4
 1283 000e 8B42     		cmp	r3, r1
 1284 0010 0BD1     		bne	.L125
 585:../asf/sam/drivers/mcan/mcan.c **** 		memcpy(rx_element, &mcan1_rx_fifo_0[index], sizeof(struct mcan_rx_element_buffer));
 1285              		.loc 1 585 0
 1286 0012 0B4C     		ldr	r4, .L129+8
 1287              	.L127:
 1288 0014 04EB0214 		add	r4, r4, r2, lsl #4
 586:../asf/sam/drivers/mcan/mcan.c **** 		return STATUS_OK;
 1289              		.loc 1 586 0
 1290 0018 0026     		movs	r6, #0
 585:../asf/sam/drivers/mcan/mcan.c **** 		memcpy(rx_element, &mcan1_rx_fifo_0[index], sizeof(struct mcan_rx_element_buffer));
 1291              		.loc 1 585 0
 1292 001a 0FCC     		ldmia	r4!, {r0, r1, r2, r3}
 1293              	.LVL56:
 1294 001c 2860     		str	r0, [r5]	@ unaligned
 587:../asf/sam/drivers/mcan/mcan.c **** 	}
 588:../asf/sam/drivers/mcan/mcan.c **** 	return ERR_INVALID_ARG;
 589:../asf/sam/drivers/mcan/mcan.c **** }
 1295              		.loc 1 589 0
 1296 001e 3046     		mov	r0, r6
 585:../asf/sam/drivers/mcan/mcan.c **** 		return STATUS_OK;
 1297              		.loc 1 585 0
 1298 0020 6960     		str	r1, [r5, #4]	@ unaligned
 1299 0022 AA60     		str	r2, [r5, #8]	@ unaligned
 1300 0024 EB60     		str	r3, [r5, #12]	@ unaligned
 1301              		.loc 1 589 0
 1302 0026 70BC     		pop	{r4, r5, r6}
 1303              		.cfi_remember_state
 1304              		.cfi_restore 6
 1305              		.cfi_restore 5
 1306              		.cfi_restore 4
 1307              		.cfi_def_cfa_offset 0
 1308              	.LVL57:
ARM GAS  /tmp/cciOmULZ.s 			page 37


 1309 0028 7047     		bx	lr
 1310              	.LVL58:
 1311              	.L125:
 1312              		.cfi_restore_state
 588:../asf/sam/drivers/mcan/mcan.c **** }
 1313              		.loc 1 588 0
 1314 002a 6FF00706 		mvn	r6, #7
 1315              		.loc 1 589 0
 1316 002e 3046     		mov	r0, r6
 1317              	.LVL59:
 1318 0030 70BC     		pop	{r4, r5, r6}
 1319              		.cfi_remember_state
 1320              		.cfi_restore 4
 1321              		.cfi_restore 5
 1322              		.cfi_restore 6
 1323              		.cfi_def_cfa_offset 0
 1324              	.LVL60:
 1325 0032 7047     		bx	lr
 1326              	.LVL61:
 1327              	.L128:
 1328              		.cfi_restore_state
 582:../asf/sam/drivers/mcan/mcan.c **** 		return STATUS_OK;
 1329              		.loc 1 582 0
 1330 0034 034C     		ldr	r4, .L129+12
 1331 0036 EDE7     		b	.L127
 1332              	.L130:
 1333              		.align	2
 1334              	.L129:
 1335 0038 00000340 		.word	1073938432
 1336 003c 00400340 		.word	1073954816
 1337 0040 00000000 		.word	.LANCHOR9
 1338 0044 00000000 		.word	.LANCHOR2
 1339              		.cfi_endproc
 1340              	.LFE208:
 1341              		.size	mcan_get_rx_fifo_0_element, .-mcan_get_rx_fifo_0_element
 1342              		.section	.text.mcan_get_rx_fifo_1_element,"ax",%progbits
 1343              		.align	1
 1344              		.p2align 2,,3
 1345              		.global	mcan_get_rx_fifo_1_element
 1346              		.syntax unified
 1347              		.thumb
 1348              		.thumb_func
 1349              		.fpu fpv5-d16
 1350              		.type	mcan_get_rx_fifo_1_element, %function
 1351              	mcan_get_rx_fifo_1_element:
 1352              	.LFB209:
 590:../asf/sam/drivers/mcan/mcan.c **** 
 591:../asf/sam/drivers/mcan/mcan.c **** /**
 592:../asf/sam/drivers/mcan/mcan.c ****  * \brief get FIFO rx buffer element .
 593:../asf/sam/drivers/mcan/mcan.c ****  *
 594:../asf/sam/drivers/mcan/mcan.c ****  * \param module_inst  MCAN instance
 595:../asf/sam/drivers/mcan/mcan.c ****  * \param rx_element  structure of element
 596:../asf/sam/drivers/mcan/mcan.c ****  * \param index  CAN messages memory index for receiving CAN ID
 597:../asf/sam/drivers/mcan/mcan.c ****  *
 598:../asf/sam/drivers/mcan/mcan.c ****  * \return status code.
 599:../asf/sam/drivers/mcan/mcan.c ****  */
 600:../asf/sam/drivers/mcan/mcan.c **** enum status_code mcan_get_rx_fifo_1_element(
ARM GAS  /tmp/cciOmULZ.s 			page 38


 601:../asf/sam/drivers/mcan/mcan.c **** 		struct mcan_module *const module_inst,
 602:../asf/sam/drivers/mcan/mcan.c **** 		struct mcan_rx_element_fifo_1 *rx_element, uint32_t index)
 603:../asf/sam/drivers/mcan/mcan.c **** {
 1353              		.loc 1 603 0
 1354              		.cfi_startproc
 1355              		@ args = 0, pretend = 0, frame = 0
 1356              		@ frame_needed = 0, uses_anonymous_args = 0
 1357              		@ link register save eliminated.
 1358              	.LVL62:
 1359 0000 70B4     		push	{r4, r5, r6}
 1360              		.cfi_def_cfa_offset 12
 1361              		.cfi_offset 4, -12
 1362              		.cfi_offset 5, -8
 1363              		.cfi_offset 6, -4
 604:../asf/sam/drivers/mcan/mcan.c **** 	if (module_inst->hw == MCAN0) {
 1364              		.loc 1 604 0
 1365 0002 0368     		ldr	r3, [r0]
 603:../asf/sam/drivers/mcan/mcan.c **** 	if (module_inst->hw == MCAN0) {
 1366              		.loc 1 603 0
 1367 0004 0D46     		mov	r5, r1
 1368              		.loc 1 604 0
 1369 0006 0C49     		ldr	r1, .L138
 1370              	.LVL63:
 1371 0008 8B42     		cmp	r3, r1
 1372 000a 13D0     		beq	.L137
 605:../asf/sam/drivers/mcan/mcan.c **** 		memcpy(rx_element, &mcan0_rx_fifo_1[index], sizeof(struct mcan_rx_element_buffer));
 606:../asf/sam/drivers/mcan/mcan.c **** 		return STATUS_OK;
 607:../asf/sam/drivers/mcan/mcan.c **** 	} else if (module_inst->hw == MCAN1) {
 1373              		.loc 1 607 0
 1374 000c 0B49     		ldr	r1, .L138+4
 1375 000e 8B42     		cmp	r3, r1
 1376 0010 0BD1     		bne	.L134
 608:../asf/sam/drivers/mcan/mcan.c **** 		memcpy(rx_element, &mcan1_rx_fifo_1[index], sizeof(struct mcan_rx_element_buffer));
 1377              		.loc 1 608 0
 1378 0012 0B4C     		ldr	r4, .L138+8
 1379              	.L136:
 1380 0014 04EB0214 		add	r4, r4, r2, lsl #4
 609:../asf/sam/drivers/mcan/mcan.c **** 		return STATUS_OK;
 1381              		.loc 1 609 0
 1382 0018 0026     		movs	r6, #0
 608:../asf/sam/drivers/mcan/mcan.c **** 		memcpy(rx_element, &mcan1_rx_fifo_1[index], sizeof(struct mcan_rx_element_buffer));
 1383              		.loc 1 608 0
 1384 001a 0FCC     		ldmia	r4!, {r0, r1, r2, r3}
 1385              	.LVL64:
 1386 001c 2860     		str	r0, [r5]	@ unaligned
 610:../asf/sam/drivers/mcan/mcan.c **** 	}
 611:../asf/sam/drivers/mcan/mcan.c **** 	return ERR_INVALID_ARG;
 612:../asf/sam/drivers/mcan/mcan.c **** }
 1387              		.loc 1 612 0
 1388 001e 3046     		mov	r0, r6
 608:../asf/sam/drivers/mcan/mcan.c **** 		return STATUS_OK;
 1389              		.loc 1 608 0
 1390 0020 6960     		str	r1, [r5, #4]	@ unaligned
 1391 0022 AA60     		str	r2, [r5, #8]	@ unaligned
 1392 0024 EB60     		str	r3, [r5, #12]	@ unaligned
 1393              		.loc 1 612 0
 1394 0026 70BC     		pop	{r4, r5, r6}
ARM GAS  /tmp/cciOmULZ.s 			page 39


 1395              		.cfi_remember_state
 1396              		.cfi_restore 6
 1397              		.cfi_restore 5
 1398              		.cfi_restore 4
 1399              		.cfi_def_cfa_offset 0
 1400              	.LVL65:
 1401 0028 7047     		bx	lr
 1402              	.LVL66:
 1403              	.L134:
 1404              		.cfi_restore_state
 611:../asf/sam/drivers/mcan/mcan.c **** }
 1405              		.loc 1 611 0
 1406 002a 6FF00706 		mvn	r6, #7
 1407              		.loc 1 612 0
 1408 002e 3046     		mov	r0, r6
 1409              	.LVL67:
 1410 0030 70BC     		pop	{r4, r5, r6}
 1411              		.cfi_remember_state
 1412              		.cfi_restore 4
 1413              		.cfi_restore 5
 1414              		.cfi_restore 6
 1415              		.cfi_def_cfa_offset 0
 1416              	.LVL68:
 1417 0032 7047     		bx	lr
 1418              	.LVL69:
 1419              	.L137:
 1420              		.cfi_restore_state
 605:../asf/sam/drivers/mcan/mcan.c **** 		return STATUS_OK;
 1421              		.loc 1 605 0
 1422 0034 034C     		ldr	r4, .L138+12
 1423 0036 EDE7     		b	.L136
 1424              	.L139:
 1425              		.align	2
 1426              	.L138:
 1427 0038 00000340 		.word	1073938432
 1428 003c 00400340 		.word	1073954816
 1429 0040 00000000 		.word	.LANCHOR10
 1430 0044 00000000 		.word	.LANCHOR3
 1431              		.cfi_endproc
 1432              	.LFE209:
 1433              		.size	mcan_get_rx_fifo_1_element, .-mcan_get_rx_fifo_1_element
 1434              		.section	.text.mcan_set_tx_buffer_element,"ax",%progbits
 1435              		.align	1
 1436              		.p2align 2,,3
 1437              		.global	mcan_set_tx_buffer_element
 1438              		.syntax unified
 1439              		.thumb
 1440              		.thumb_func
 1441              		.fpu fpv5-d16
 1442              		.type	mcan_set_tx_buffer_element, %function
 1443              	mcan_set_tx_buffer_element:
 1444              	.LFB210:
 613:../asf/sam/drivers/mcan/mcan.c **** 
 614:../asf/sam/drivers/mcan/mcan.c **** /**
 615:../asf/sam/drivers/mcan/mcan.c ****  * \brief set dedicated transmit buffer element .
 616:../asf/sam/drivers/mcan/mcan.c ****  *
 617:../asf/sam/drivers/mcan/mcan.c ****  * \param module_inst  MCAN instance
ARM GAS  /tmp/cciOmULZ.s 			page 40


 618:../asf/sam/drivers/mcan/mcan.c ****  * \param tx_element  structure of element
 619:../asf/sam/drivers/mcan/mcan.c ****  * \param index  CAN messages memory index for transmitting CAN ID
 620:../asf/sam/drivers/mcan/mcan.c ****  *
 621:../asf/sam/drivers/mcan/mcan.c ****  * \return status code.
 622:../asf/sam/drivers/mcan/mcan.c ****  */
 623:../asf/sam/drivers/mcan/mcan.c **** enum status_code mcan_set_tx_buffer_element(
 624:../asf/sam/drivers/mcan/mcan.c **** 		struct mcan_module *const module_inst,
 625:../asf/sam/drivers/mcan/mcan.c **** 		struct mcan_tx_element *tx_element, uint32_t index)
 626:../asf/sam/drivers/mcan/mcan.c **** {
 1445              		.loc 1 626 0
 1446              		.cfi_startproc
 1447              		@ args = 0, pretend = 0, frame = 0
 1448              		@ frame_needed = 0, uses_anonymous_args = 0
 1449              		@ link register save eliminated.
 1450              	.LVL70:
 627:../asf/sam/drivers/mcan/mcan.c **** 	uint32_t i;
 628:../asf/sam/drivers/mcan/mcan.c **** 	if (module_inst->hw == MCAN0) {
 1451              		.loc 1 628 0
 1452 0000 0368     		ldr	r3, [r0]
 1453 0002 1A48     		ldr	r0, .L151
 1454              	.LVL71:
 1455 0004 8342     		cmp	r3, r0
 626:../asf/sam/drivers/mcan/mcan.c **** 	uint32_t i;
 1456              		.loc 1 626 0
 1457 0006 70B4     		push	{r4, r5, r6}
 1458              		.cfi_def_cfa_offset 12
 1459              		.cfi_offset 4, -12
 1460              		.cfi_offset 5, -8
 1461              		.cfi_offset 6, -4
 1462              		.loc 1 628 0
 1463 0008 1CD0     		beq	.L150
 629:../asf/sam/drivers/mcan/mcan.c **** 		mcan0_tx_buffer[index].T0.reg = tx_element->T0.reg;
 630:../asf/sam/drivers/mcan/mcan.c **** 		mcan0_tx_buffer[index].T1.reg = tx_element->T1.reg;
 631:../asf/sam/drivers/mcan/mcan.c **** 		for (i = 0; i < CONF_MCAN_ELEMENT_DATA_SIZE; i++) {
 632:../asf/sam/drivers/mcan/mcan.c **** 			mcan0_tx_buffer[index].data[i] = tx_element->data[i];
 633:../asf/sam/drivers/mcan/mcan.c **** 		}
 634:../asf/sam/drivers/mcan/mcan.c **** 		return STATUS_OK;
 635:../asf/sam/drivers/mcan/mcan.c **** 	} else if (module_inst->hw == MCAN1) {
 1464              		.loc 1 635 0
 1465 000a 1948     		ldr	r0, .L151+4
 1466 000c 8342     		cmp	r3, r0
 1467 000e 15D1     		bne	.L146
 636:../asf/sam/drivers/mcan/mcan.c **** 		mcan1_tx_buffer[index].T0.reg = tx_element->T0.reg;
 1468              		.loc 1 636 0
 1469 0010 1001     		lsls	r0, r2, #4
 1470 0012 0E68     		ldr	r6, [r1]
 1471 0014 174A     		ldr	r2, .L151+8
 1472              	.LVL72:
 1473 0016 01F10803 		add	r3, r1, #8
 1474 001a C51D     		adds	r5, r0, #7
 1475 001c 01F11004 		add	r4, r1, #16
 1476 0020 1650     		str	r6, [r2, r0]
 1477 0022 1044     		add	r0, r0, r2
 637:../asf/sam/drivers/mcan/mcan.c **** 		mcan1_tx_buffer[index].T1.reg = tx_element->T1.reg;
 1478              		.loc 1 637 0
 1479 0024 4968     		ldr	r1, [r1, #4]
 1480              	.LVL73:
ARM GAS  /tmp/cciOmULZ.s 			page 41


 1481 0026 2A44     		add	r2, r2, r5
 1482 0028 4160     		str	r1, [r0, #4]
 1483              	.LVL74:
 1484              	.L144:
 638:../asf/sam/drivers/mcan/mcan.c **** 		for (i = 0; i < CONF_MCAN_ELEMENT_DATA_SIZE; i++) {
 639:../asf/sam/drivers/mcan/mcan.c **** 			mcan1_tx_buffer[index].data[i] = tx_element->data[i];
 1485              		.loc 1 639 0 discriminator 3
 1486 002a 13F8011B 		ldrb	r1, [r3], #1	@ zero_extendqisi2
 1487              	.LVL75:
 638:../asf/sam/drivers/mcan/mcan.c **** 		for (i = 0; i < CONF_MCAN_ELEMENT_DATA_SIZE; i++) {
 1488              		.loc 1 638 0 discriminator 3
 1489 002e A342     		cmp	r3, r4
 1490              		.loc 1 639 0 discriminator 3
 1491 0030 02F8011F 		strb	r1, [r2, #1]!
 1492              	.LVL76:
 638:../asf/sam/drivers/mcan/mcan.c **** 		for (i = 0; i < CONF_MCAN_ELEMENT_DATA_SIZE; i++) {
 1493              		.loc 1 638 0 discriminator 3
 1494 0034 F9D1     		bne	.L144
 1495              	.LVL77:
 1496              	.L145:
 634:../asf/sam/drivers/mcan/mcan.c **** 	} else if (module_inst->hw == MCAN1) {
 1497              		.loc 1 634 0
 1498 0036 0020     		movs	r0, #0
 640:../asf/sam/drivers/mcan/mcan.c **** 		}
 641:../asf/sam/drivers/mcan/mcan.c **** 		return STATUS_OK;
 642:../asf/sam/drivers/mcan/mcan.c **** 	}
 643:../asf/sam/drivers/mcan/mcan.c **** 	return ERR_INVALID_ARG;
 644:../asf/sam/drivers/mcan/mcan.c **** }
 1499              		.loc 1 644 0
 1500 0038 70BC     		pop	{r4, r5, r6}
 1501              		.cfi_remember_state
 1502              		.cfi_restore 6
 1503              		.cfi_restore 5
 1504              		.cfi_restore 4
 1505              		.cfi_def_cfa_offset 0
 1506 003a 7047     		bx	lr
 1507              	.LVL78:
 1508              	.L146:
 1509              		.cfi_restore_state
 643:../asf/sam/drivers/mcan/mcan.c **** }
 1510              		.loc 1 643 0
 1511 003c 6FF00700 		mvn	r0, #7
 1512              		.loc 1 644 0
 1513 0040 70BC     		pop	{r4, r5, r6}
 1514              		.cfi_remember_state
 1515              		.cfi_restore 4
 1516              		.cfi_restore 5
 1517              		.cfi_restore 6
 1518              		.cfi_def_cfa_offset 0
 1519 0042 7047     		bx	lr
 1520              	.L150:
 1521              		.cfi_restore_state
 629:../asf/sam/drivers/mcan/mcan.c **** 		mcan0_tx_buffer[index].T1.reg = tx_element->T1.reg;
 1522              		.loc 1 629 0
 1523 0044 1201     		lsls	r2, r2, #4
 1524              	.LVL79:
 1525 0046 0D68     		ldr	r5, [r1]
ARM GAS  /tmp/cciOmULZ.s 			page 42


 1526 0048 0B48     		ldr	r0, .L151+12
 1527 004a 01F10803 		add	r3, r1, #8
 1528 004e D61D     		adds	r6, r2, #7
 1529 0050 01F11004 		add	r4, r1, #16
 1530 0054 8550     		str	r5, [r0, r2]
 1531 0056 0244     		add	r2, r2, r0
 630:../asf/sam/drivers/mcan/mcan.c **** 		for (i = 0; i < CONF_MCAN_ELEMENT_DATA_SIZE; i++) {
 1532              		.loc 1 630 0
 1533 0058 4D68     		ldr	r5, [r1, #4]
 1534 005a 8119     		adds	r1, r0, r6
 1535              	.LVL80:
 1536 005c 5560     		str	r5, [r2, #4]
 1537              	.LVL81:
 1538              	.L142:
 632:../asf/sam/drivers/mcan/mcan.c **** 		}
 1539              		.loc 1 632 0 discriminator 3
 1540 005e 13F8012B 		ldrb	r2, [r3], #1	@ zero_extendqisi2
 1541              	.LVL82:
 631:../asf/sam/drivers/mcan/mcan.c **** 			mcan0_tx_buffer[index].data[i] = tx_element->data[i];
 1542              		.loc 1 631 0 discriminator 3
 1543 0062 A342     		cmp	r3, r4
 632:../asf/sam/drivers/mcan/mcan.c **** 		}
 1544              		.loc 1 632 0 discriminator 3
 1545 0064 01F8012F 		strb	r2, [r1, #1]!
 1546              	.LVL83:
 631:../asf/sam/drivers/mcan/mcan.c **** 			mcan0_tx_buffer[index].data[i] = tx_element->data[i];
 1547              		.loc 1 631 0 discriminator 3
 1548 0068 F9D1     		bne	.L142
 1549 006a E4E7     		b	.L145
 1550              	.L152:
 1551              		.align	2
 1552              	.L151:
 1553 006c 00000340 		.word	1073938432
 1554 0070 00400340 		.word	1073954816
 1555 0074 00000000 		.word	.LANCHOR12
 1556 0078 00000000 		.word	.LANCHOR5
 1557              		.cfi_endproc
 1558              	.LFE210:
 1559              		.size	mcan_set_tx_buffer_element, .-mcan_set_tx_buffer_element
 1560              		.section	.text.mcan_get_tx_event_fifo_element,"ax",%progbits
 1561              		.align	1
 1562              		.p2align 2,,3
 1563              		.global	mcan_get_tx_event_fifo_element
 1564              		.syntax unified
 1565              		.thumb
 1566              		.thumb_func
 1567              		.fpu fpv5-d16
 1568              		.type	mcan_get_tx_event_fifo_element, %function
 1569              	mcan_get_tx_event_fifo_element:
 1570              	.LFB211:
 645:../asf/sam/drivers/mcan/mcan.c **** 
 646:../asf/sam/drivers/mcan/mcan.c **** /**
 647:../asf/sam/drivers/mcan/mcan.c ****  * \brief set FIFO transmit buffer element .
 648:../asf/sam/drivers/mcan/mcan.c ****  *
 649:../asf/sam/drivers/mcan/mcan.c ****  * \param module_inst  MCAN instance
 650:../asf/sam/drivers/mcan/mcan.c ****  * \param tx_element  structure of element
 651:../asf/sam/drivers/mcan/mcan.c ****  * \param index  CAN messages memory index for transmitting CAN ID
ARM GAS  /tmp/cciOmULZ.s 			page 43


 652:../asf/sam/drivers/mcan/mcan.c ****  *
 653:../asf/sam/drivers/mcan/mcan.c ****  * \return status code.
 654:../asf/sam/drivers/mcan/mcan.c ****  */
 655:../asf/sam/drivers/mcan/mcan.c **** enum status_code mcan_get_tx_event_fifo_element(
 656:../asf/sam/drivers/mcan/mcan.c **** 		struct mcan_module *const module_inst,
 657:../asf/sam/drivers/mcan/mcan.c **** 		struct mcan_tx_event_element *tx_event_element, uint32_t index)
 658:../asf/sam/drivers/mcan/mcan.c **** {
 1571              		.loc 1 658 0
 1572              		.cfi_startproc
 1573              		@ args = 0, pretend = 0, frame = 0
 1574              		@ frame_needed = 0, uses_anonymous_args = 0
 1575              		@ link register save eliminated.
 1576              	.LVL84:
 659:../asf/sam/drivers/mcan/mcan.c **** 	if (module_inst->hw == MCAN0) {
 1577              		.loc 1 659 0
 1578 0000 0068     		ldr	r0, [r0]
 1579              	.LVL85:
 1580 0002 0D4B     		ldr	r3, .L160
 1581 0004 9842     		cmp	r0, r3
 658:../asf/sam/drivers/mcan/mcan.c **** 	if (module_inst->hw == MCAN0) {
 1582              		.loc 1 658 0
 1583 0006 10B4     		push	{r4}
 1584              		.cfi_def_cfa_offset 4
 1585              		.cfi_offset 4, -4
 1586              		.loc 1 659 0
 1587 0008 13D0     		beq	.L159
 660:../asf/sam/drivers/mcan/mcan.c **** 		tx_event_element->E0.reg = mcan0_tx_event_fifo[index].E0.reg;
 661:../asf/sam/drivers/mcan/mcan.c **** 		tx_event_element->E1.reg = mcan0_tx_event_fifo[index].E1.reg;
 662:../asf/sam/drivers/mcan/mcan.c **** 		return STATUS_OK;
 663:../asf/sam/drivers/mcan/mcan.c **** 	} else if (module_inst->hw == MCAN1) {
 1588              		.loc 1 663 0
 1589 000a 0C4B     		ldr	r3, .L160+4
 1590 000c 9842     		cmp	r0, r3
 1591 000e 0BD1     		bne	.L156
 664:../asf/sam/drivers/mcan/mcan.c **** 		tx_event_element->E0.reg = mcan1_tx_event_fifo[index].E0.reg;
 1592              		.loc 1 664 0
 1593 0010 0B4B     		ldr	r3, .L160+8
 1594              	.L158:
 1595 0012 53F83240 		ldr	r4, [r3, r2, lsl #3]
 665:../asf/sam/drivers/mcan/mcan.c **** 		tx_event_element->E1.reg = mcan1_tx_event_fifo[index].E1.reg;
 1596              		.loc 1 665 0
 1597 0016 03EBC203 		add	r3, r3, r2, lsl #3
 666:../asf/sam/drivers/mcan/mcan.c **** 		return STATUS_OK;
 1598              		.loc 1 666 0
 1599 001a 0020     		movs	r0, #0
 664:../asf/sam/drivers/mcan/mcan.c **** 		tx_event_element->E0.reg = mcan1_tx_event_fifo[index].E0.reg;
 1600              		.loc 1 664 0
 1601 001c 0C60     		str	r4, [r1]
 665:../asf/sam/drivers/mcan/mcan.c **** 		tx_event_element->E1.reg = mcan1_tx_event_fifo[index].E1.reg;
 1602              		.loc 1 665 0
 1603 001e 5B68     		ldr	r3, [r3, #4]
 667:../asf/sam/drivers/mcan/mcan.c **** 	}
 668:../asf/sam/drivers/mcan/mcan.c **** 	return ERR_INVALID_ARG;
 669:../asf/sam/drivers/mcan/mcan.c **** }
 1604              		.loc 1 669 0
 1605 0020 5DF8044B 		ldr	r4, [sp], #4
 1606              		.cfi_remember_state
ARM GAS  /tmp/cciOmULZ.s 			page 44


 1607              		.cfi_restore 4
 1608              		.cfi_def_cfa_offset 0
 665:../asf/sam/drivers/mcan/mcan.c **** 		return STATUS_OK;
 1609              		.loc 1 665 0
 1610 0024 4B60     		str	r3, [r1, #4]
 1611              		.loc 1 669 0
 1612 0026 7047     		bx	lr
 1613              	.L156:
 1614              		.cfi_restore_state
 668:../asf/sam/drivers/mcan/mcan.c **** }
 1615              		.loc 1 668 0
 1616 0028 6FF00700 		mvn	r0, #7
 1617              		.loc 1 669 0
 1618 002c 5DF8044B 		ldr	r4, [sp], #4
 1619              		.cfi_remember_state
 1620              		.cfi_restore 4
 1621              		.cfi_def_cfa_offset 0
 1622 0030 7047     		bx	lr
 1623              	.L159:
 1624              		.cfi_restore_state
 660:../asf/sam/drivers/mcan/mcan.c **** 		tx_event_element->E1.reg = mcan0_tx_event_fifo[index].E1.reg;
 1625              		.loc 1 660 0
 1626 0032 044B     		ldr	r3, .L160+12
 1627 0034 EDE7     		b	.L158
 1628              	.L161:
 1629 0036 00BF     		.align	2
 1630              	.L160:
 1631 0038 00000340 		.word	1073938432
 1632 003c 00400340 		.word	1073954816
 1633 0040 00000000 		.word	.LANCHOR13
 1634 0044 00000000 		.word	.LANCHOR6
 1635              		.cfi_endproc
 1636              	.LFE211:
 1637              		.size	mcan_get_tx_event_fifo_element, .-mcan_get_tx_event_fifo_element
 1638              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 1639              		.align	2
 1640              		.type	cpu_irq_critical_section_counter, %object
 1641              		.size	cpu_irq_critical_section_counter, 4
 1642              	cpu_irq_critical_section_counter:
 1643 0000 00000000 		.space	4
 1644              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 1645              		.type	cpu_irq_prev_interrupt_state, %object
 1646              		.size	cpu_irq_prev_interrupt_state, 1
 1647              	cpu_irq_prev_interrupt_state:
 1648 0000 00       		.space	1
 1649              		.section	.bss.mcan0_rx_buffer,"aw",%nobits
 1650              		.align	2
 1651              		.set	.LANCHOR4,. + 0
 1652              		.type	mcan0_rx_buffer, %object
 1653              		.size	mcan0_rx_buffer, 256
 1654              	mcan0_rx_buffer:
 1655 0000 00000000 		.space	256
 1655      00000000 
 1655      00000000 
 1655      00000000 
 1655      00000000 
 1656              		.section	.bss.mcan0_rx_extended_filter,"aw",%nobits
ARM GAS  /tmp/cciOmULZ.s 			page 45


 1657              		.align	2
 1658              		.set	.LANCHOR1,. + 0
 1659              		.type	mcan0_rx_extended_filter, %object
 1660              		.size	mcan0_rx_extended_filter, 128
 1661              	mcan0_rx_extended_filter:
 1662 0000 00000000 		.space	128
 1662      00000000 
 1662      00000000 
 1662      00000000 
 1662      00000000 
 1663              		.section	.bss.mcan0_rx_fifo_0,"aw",%nobits
 1664              		.align	2
 1665              		.set	.LANCHOR2,. + 0
 1666              		.type	mcan0_rx_fifo_0, %object
 1667              		.size	mcan0_rx_fifo_0, 256
 1668              	mcan0_rx_fifo_0:
 1669 0000 00000000 		.space	256
 1669      00000000 
 1669      00000000 
 1669      00000000 
 1669      00000000 
 1670              		.section	.bss.mcan0_rx_fifo_1,"aw",%nobits
 1671              		.align	2
 1672              		.set	.LANCHOR3,. + 0
 1673              		.type	mcan0_rx_fifo_1, %object
 1674              		.size	mcan0_rx_fifo_1, 256
 1675              	mcan0_rx_fifo_1:
 1676 0000 00000000 		.space	256
 1676      00000000 
 1676      00000000 
 1676      00000000 
 1676      00000000 
 1677              		.section	.bss.mcan0_rx_standard_filter,"aw",%nobits
 1678              		.align	2
 1679              		.set	.LANCHOR0,. + 0
 1680              		.type	mcan0_rx_standard_filter, %object
 1681              		.size	mcan0_rx_standard_filter, 128
 1682              	mcan0_rx_standard_filter:
 1683 0000 00000000 		.space	128
 1683      00000000 
 1683      00000000 
 1683      00000000 
 1683      00000000 
 1684              		.section	.bss.mcan0_tx_buffer,"aw",%nobits
 1685              		.align	2
 1686              		.set	.LANCHOR5,. + 0
 1687              		.type	mcan0_tx_buffer, %object
 1688              		.size	mcan0_tx_buffer, 128
 1689              	mcan0_tx_buffer:
 1690 0000 00000000 		.space	128
 1690      00000000 
 1690      00000000 
 1690      00000000 
 1690      00000000 
 1691              		.section	.bss.mcan0_tx_event_fifo,"aw",%nobits
 1692              		.align	2
 1693              		.set	.LANCHOR6,. + 0
ARM GAS  /tmp/cciOmULZ.s 			page 46


 1694              		.type	mcan0_tx_event_fifo, %object
 1695              		.size	mcan0_tx_event_fifo, 64
 1696              	mcan0_tx_event_fifo:
 1697 0000 00000000 		.space	64
 1697      00000000 
 1697      00000000 
 1697      00000000 
 1697      00000000 
 1698              		.section	.bss.mcan1_rx_buffer,"aw",%nobits
 1699              		.align	2
 1700              		.set	.LANCHOR11,. + 0
 1701              		.type	mcan1_rx_buffer, %object
 1702              		.size	mcan1_rx_buffer, 256
 1703              	mcan1_rx_buffer:
 1704 0000 00000000 		.space	256
 1704      00000000 
 1704      00000000 
 1704      00000000 
 1704      00000000 
 1705              		.section	.bss.mcan1_rx_extended_filter,"aw",%nobits
 1706              		.align	2
 1707              		.set	.LANCHOR8,. + 0
 1708              		.type	mcan1_rx_extended_filter, %object
 1709              		.size	mcan1_rx_extended_filter, 128
 1710              	mcan1_rx_extended_filter:
 1711 0000 00000000 		.space	128
 1711      00000000 
 1711      00000000 
 1711      00000000 
 1711      00000000 
 1712              		.section	.bss.mcan1_rx_fifo_0,"aw",%nobits
 1713              		.align	2
 1714              		.set	.LANCHOR9,. + 0
 1715              		.type	mcan1_rx_fifo_0, %object
 1716              		.size	mcan1_rx_fifo_0, 256
 1717              	mcan1_rx_fifo_0:
 1718 0000 00000000 		.space	256
 1718      00000000 
 1718      00000000 
 1718      00000000 
 1718      00000000 
 1719              		.section	.bss.mcan1_rx_fifo_1,"aw",%nobits
 1720              		.align	2
 1721              		.set	.LANCHOR10,. + 0
 1722              		.type	mcan1_rx_fifo_1, %object
 1723              		.size	mcan1_rx_fifo_1, 256
 1724              	mcan1_rx_fifo_1:
 1725 0000 00000000 		.space	256
 1725      00000000 
 1725      00000000 
 1725      00000000 
 1725      00000000 
 1726              		.section	.bss.mcan1_rx_standard_filter,"aw",%nobits
 1727              		.align	2
 1728              		.set	.LANCHOR7,. + 0
 1729              		.type	mcan1_rx_standard_filter, %object
 1730              		.size	mcan1_rx_standard_filter, 128
ARM GAS  /tmp/cciOmULZ.s 			page 47


 1731              	mcan1_rx_standard_filter:
 1732 0000 00000000 		.space	128
 1732      00000000 
 1732      00000000 
 1732      00000000 
 1732      00000000 
 1733              		.section	.bss.mcan1_tx_buffer,"aw",%nobits
 1734              		.align	2
 1735              		.set	.LANCHOR12,. + 0
 1736              		.type	mcan1_tx_buffer, %object
 1737              		.size	mcan1_tx_buffer, 128
 1738              	mcan1_tx_buffer:
 1739 0000 00000000 		.space	128
 1739      00000000 
 1739      00000000 
 1739      00000000 
 1739      00000000 
 1740              		.section	.bss.mcan1_tx_event_fifo,"aw",%nobits
 1741              		.align	2
 1742              		.set	.LANCHOR13,. + 0
 1743              		.type	mcan1_tx_event_fifo, %object
 1744              		.size	mcan1_tx_event_fifo, 64
 1745              	mcan1_tx_event_fifo:
 1746 0000 00000000 		.space	64
 1746      00000000 
 1746      00000000 
 1746      00000000 
 1746      00000000 
 1747              		.text
 1748              	.Letext0:
 1749              		.file 2 "/usr/include/newlib/machine/_default_types.h"
 1750              		.file 3 "/usr/include/newlib/sys/_stdint.h"
 1751              		.file 4 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 1752              		.file 5 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 1753              		.file 6 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/mcan
 1754              		.file 7 "/usr/include/newlib/sys/lock.h"
 1755              		.file 8 "/usr/include/newlib/sys/_types.h"
 1756              		.file 9 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 1757              		.file 10 "/usr/include/newlib/sys/reent.h"
 1758              		.file 11 "/usr/include/newlib/stdlib.h"
 1759              		.file 12 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 1760              		.file 13 "../asf/sam/drivers/mcan/mcan.h"
 1761              		.file 14 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/status_codes.h"
 1762              		.file 15 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h"
 1763              		.file 16 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h"
 1764              		.file 17 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h"
 1765              		.file 18 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/pmc/pmc.h"
 1766              		.section	.debug_info,"",%progbits
 1767              	.Ldebug_info0:
 1768 0000 111C0000 		.4byte	0x1c11
 1769 0004 0400     		.2byte	0x4
 1770 0006 00000000 		.4byte	.Ldebug_abbrev0
 1771 000a 04       		.byte	0x4
 1772 000b 01       		.uleb128 0x1
 1773 000c DF100000 		.4byte	.LASF343
 1774 0010 0C       		.byte	0xc
 1775 0011 E6020000 		.4byte	.LASF344
ARM GAS  /tmp/cciOmULZ.s 			page 48


 1776 0015 81070000 		.4byte	.LASF345
 1777 0019 58000000 		.4byte	.Ldebug_ranges0+0x58
 1778 001d 00000000 		.4byte	0
 1779 0021 00000000 		.4byte	.Ldebug_line0
 1780 0025 02       		.uleb128 0x2
 1781 0026 04       		.byte	0x4
 1782 0027 07       		.byte	0x7
 1783 0028 03080000 		.4byte	.LASF0
 1784 002c 03       		.uleb128 0x3
 1785 002d 04       		.byte	0x4
 1786 002e 05       		.byte	0x5
 1787 002f 696E7400 		.ascii	"int\000"
 1788 0033 02       		.uleb128 0x2
 1789 0034 01       		.byte	0x1
 1790 0035 06       		.byte	0x6
 1791 0036 AA120000 		.4byte	.LASF1
 1792 003a 04       		.uleb128 0x4
 1793 003b 880E0000 		.4byte	.LASF4
 1794 003f 02       		.byte	0x2
 1795 0040 1D       		.byte	0x1d
 1796 0041 45000000 		.4byte	0x45
 1797 0045 02       		.uleb128 0x2
 1798 0046 01       		.byte	0x1
 1799 0047 08       		.byte	0x8
 1800 0048 4F100000 		.4byte	.LASF2
 1801 004c 02       		.uleb128 0x2
 1802 004d 02       		.byte	0x2
 1803 004e 05       		.byte	0x5
 1804 004f 3C020000 		.4byte	.LASF3
 1805 0053 04       		.uleb128 0x4
 1806 0054 0B050000 		.4byte	.LASF5
 1807 0058 02       		.byte	0x2
 1808 0059 2B       		.byte	0x2b
 1809 005a 5E000000 		.4byte	0x5e
 1810 005e 02       		.uleb128 0x2
 1811 005f 02       		.byte	0x2
 1812 0060 07       		.byte	0x7
 1813 0061 D3120000 		.4byte	.LASF6
 1814 0065 04       		.uleb128 0x4
 1815 0066 77070000 		.4byte	.LASF7
 1816 006a 02       		.byte	0x2
 1817 006b 3F       		.byte	0x3f
 1818 006c 70000000 		.4byte	0x70
 1819 0070 02       		.uleb128 0x2
 1820 0071 04       		.byte	0x4
 1821 0072 05       		.byte	0x5
 1822 0073 260D0000 		.4byte	.LASF8
 1823 0077 04       		.uleb128 0x4
 1824 0078 76100000 		.4byte	.LASF9
 1825 007c 02       		.byte	0x2
 1826 007d 41       		.byte	0x41
 1827 007e 82000000 		.4byte	0x82
 1828 0082 02       		.uleb128 0x2
 1829 0083 04       		.byte	0x4
 1830 0084 07       		.byte	0x7
 1831 0085 850F0000 		.4byte	.LASF10
 1832 0089 02       		.uleb128 0x2
ARM GAS  /tmp/cciOmULZ.s 			page 49


 1833 008a 08       		.byte	0x8
 1834 008b 05       		.byte	0x5
 1835 008c 44090000 		.4byte	.LASF11
 1836 0090 02       		.uleb128 0x2
 1837 0091 08       		.byte	0x8
 1838 0092 07       		.byte	0x7
 1839 0093 8E040000 		.4byte	.LASF12
 1840 0097 04       		.uleb128 0x4
 1841 0098 20080000 		.4byte	.LASF13
 1842 009c 03       		.byte	0x3
 1843 009d 18       		.byte	0x18
 1844 009e 3A000000 		.4byte	0x3a
 1845 00a2 04       		.uleb128 0x4
 1846 00a3 0C0C0000 		.4byte	.LASF14
 1847 00a7 03       		.byte	0x3
 1848 00a8 24       		.byte	0x24
 1849 00a9 53000000 		.4byte	0x53
 1850 00ad 04       		.uleb128 0x4
 1851 00ae EB0F0000 		.4byte	.LASF15
 1852 00b2 03       		.byte	0x3
 1853 00b3 2C       		.byte	0x2c
 1854 00b4 65000000 		.4byte	0x65
 1855 00b8 05       		.uleb128 0x5
 1856 00b9 AD000000 		.4byte	0xad
 1857 00bd 04       		.uleb128 0x4
 1858 00be A8030000 		.4byte	.LASF16
 1859 00c2 03       		.byte	0x3
 1860 00c3 30       		.byte	0x30
 1861 00c4 77000000 		.4byte	0x77
 1862 00c8 05       		.uleb128 0x5
 1863 00c9 BD000000 		.4byte	0xbd
 1864 00cd 06       		.uleb128 0x6
 1865 00ce C8000000 		.4byte	0xc8
 1866 00d2 07       		.uleb128 0x7
 1867 00d3 04       		.byte	0x4
 1868 00d4 02       		.uleb128 0x2
 1869 00d5 04       		.byte	0x4
 1870 00d6 07       		.byte	0x7
 1871 00d7 A30C0000 		.4byte	.LASF17
 1872 00db 08       		.uleb128 0x8
 1873 00dc CD000000 		.4byte	0xcd
 1874 00e0 EB000000 		.4byte	0xeb
 1875 00e4 09       		.uleb128 0x9
 1876 00e5 D4000000 		.4byte	0xd4
 1877 00e9 01       		.byte	0x1
 1878 00ea 00       		.byte	0
 1879 00eb 06       		.uleb128 0x6
 1880 00ec DB000000 		.4byte	0xdb
 1881 00f0 05       		.uleb128 0x5
 1882 00f1 EB000000 		.4byte	0xeb
 1883 00f5 05       		.uleb128 0x5
 1884 00f6 EB000000 		.4byte	0xeb
 1885 00fa 05       		.uleb128 0x5
 1886 00fb EB000000 		.4byte	0xeb
 1887 00ff 08       		.uleb128 0x8
 1888 0100 CD000000 		.4byte	0xcd
 1889 0104 0F010000 		.4byte	0x10f
ARM GAS  /tmp/cciOmULZ.s 			page 50


 1890 0108 09       		.uleb128 0x9
 1891 0109 D4000000 		.4byte	0xd4
 1892 010d 03       		.byte	0x3
 1893 010e 00       		.byte	0
 1894 010f 06       		.uleb128 0x6
 1895 0110 FF000000 		.4byte	0xff
 1896 0114 05       		.uleb128 0x5
 1897 0115 0F010000 		.4byte	0x10f
 1898 0119 0A       		.uleb128 0xa
 1899 011a 2F0D0000 		.4byte	.LASF18
 1900 011e 04       		.byte	0x4
 1901 011f 6508     		.2byte	0x865
 1902 0121 B8000000 		.4byte	0xb8
 1903 0125 0B       		.uleb128 0xb
 1904 0126 2C000000 		.4byte	.LASF19
 1905 012a 05       		.byte	0x5
 1906 012b 3A       		.byte	0x3a
 1907 012c BD000000 		.4byte	0xbd
 1908 0130 08       		.uleb128 0x8
 1909 0131 CD000000 		.4byte	0xcd
 1910 0135 40010000 		.4byte	0x140
 1911 0139 09       		.uleb128 0x9
 1912 013a D4000000 		.4byte	0xd4
 1913 013e 00       		.byte	0
 1914 013f 00       		.byte	0
 1915 0140 06       		.uleb128 0x6
 1916 0141 30010000 		.4byte	0x130
 1917 0145 05       		.uleb128 0x5
 1918 0146 40010000 		.4byte	0x140
 1919 014a 0C       		.uleb128 0xc
 1920 014b FC       		.byte	0xfc
 1921 014c 06       		.byte	0x6
 1922 014d 38       		.byte	0x38
 1923 014e AB030000 		.4byte	0x3ab
 1924 0152 0D       		.uleb128 0xd
 1925 0153 BA0A0000 		.4byte	.LASF20
 1926 0157 06       		.byte	0x6
 1927 0158 39       		.byte	0x39
 1928 0159 F0000000 		.4byte	0xf0
 1929 015d 00       		.byte	0
 1930 015e 0D       		.uleb128 0xd
 1931 015f 4C0E0000 		.4byte	.LASF21
 1932 0163 06       		.byte	0x6
 1933 0164 3A       		.byte	0x3a
 1934 0165 C8000000 		.4byte	0xc8
 1935 0169 08       		.byte	0x8
 1936 016a 0D       		.uleb128 0xd
 1937 016b 21060000 		.4byte	.LASF22
 1938 016f 06       		.byte	0x6
 1939 0170 3B       		.byte	0x3b
 1940 0171 C8000000 		.4byte	0xc8
 1941 0175 0C       		.byte	0xc
 1942 0176 0D       		.uleb128 0xd
 1943 0177 9E030000 		.4byte	.LASF23
 1944 017b 06       		.byte	0x6
 1945 017c 3C       		.byte	0x3c
 1946 017d C8000000 		.4byte	0xc8
ARM GAS  /tmp/cciOmULZ.s 			page 51


 1947 0181 10       		.byte	0x10
 1948 0182 0D       		.uleb128 0xd
 1949 0183 1C0F0000 		.4byte	.LASF24
 1950 0187 06       		.byte	0x6
 1951 0188 3D       		.byte	0x3d
 1952 0189 C8000000 		.4byte	0xc8
 1953 018d 14       		.byte	0x14
 1954 018e 0D       		.uleb128 0xd
 1955 018f 2B0A0000 		.4byte	.LASF25
 1956 0193 06       		.byte	0x6
 1957 0194 3E       		.byte	0x3e
 1958 0195 C8000000 		.4byte	0xc8
 1959 0199 18       		.byte	0x18
 1960 019a 0D       		.uleb128 0xd
 1961 019b 37120000 		.4byte	.LASF26
 1962 019f 06       		.byte	0x6
 1963 01a0 3F       		.byte	0x3f
 1964 01a1 C8000000 		.4byte	0xc8
 1965 01a5 1C       		.byte	0x1c
 1966 01a6 0D       		.uleb128 0xd
 1967 01a7 1C0D0000 		.4byte	.LASF27
 1968 01ab 06       		.byte	0x6
 1969 01ac 40       		.byte	0x40
 1970 01ad C8000000 		.4byte	0xc8
 1971 01b1 20       		.byte	0x20
 1972 01b2 0D       		.uleb128 0xd
 1973 01b3 760D0000 		.4byte	.LASF28
 1974 01b7 06       		.byte	0x6
 1975 01b8 41       		.byte	0x41
 1976 01b9 C8000000 		.4byte	0xc8
 1977 01bd 24       		.byte	0x24
 1978 01be 0D       		.uleb128 0xd
 1979 01bf 1A010000 		.4byte	.LASF29
 1980 01c3 06       		.byte	0x6
 1981 01c4 42       		.byte	0x42
 1982 01c5 C8000000 		.4byte	0xc8
 1983 01c9 28       		.byte	0x28
 1984 01ca 0D       		.uleb128 0xd
 1985 01cb EE010000 		.4byte	.LASF30
 1986 01cf 06       		.byte	0x6
 1987 01d0 43       		.byte	0x43
 1988 01d1 C8000000 		.4byte	0xc8
 1989 01d5 2C       		.byte	0x2c
 1990 01d6 0D       		.uleb128 0xd
 1991 01d7 C40A0000 		.4byte	.LASF31
 1992 01db 06       		.byte	0x6
 1993 01dc 44       		.byte	0x44
 1994 01dd 14010000 		.4byte	0x114
 1995 01e1 30       		.byte	0x30
 1996 01e2 0D       		.uleb128 0xd
 1997 01e3 410C0000 		.4byte	.LASF32
 1998 01e7 06       		.byte	0x6
 1999 01e8 45       		.byte	0x45
 2000 01e9 CD000000 		.4byte	0xcd
 2001 01ed 40       		.byte	0x40
 2002 01ee 0D       		.uleb128 0xd
 2003 01ef CA000000 		.4byte	.LASF33
ARM GAS  /tmp/cciOmULZ.s 			page 52


 2004 01f3 06       		.byte	0x6
 2005 01f4 46       		.byte	0x46
 2006 01f5 CD000000 		.4byte	0xcd
 2007 01f9 44       		.byte	0x44
 2008 01fa 0D       		.uleb128 0xd
 2009 01fb CE0A0000 		.4byte	.LASF34
 2010 01ff 06       		.byte	0x6
 2011 0200 47       		.byte	0x47
 2012 0201 F5000000 		.4byte	0xf5
 2013 0205 48       		.byte	0x48
 2014 0206 0D       		.uleb128 0xd
 2015 0207 AD100000 		.4byte	.LASF35
 2016 020b 06       		.byte	0x6
 2017 020c 48       		.byte	0x48
 2018 020d C8000000 		.4byte	0xc8
 2019 0211 50       		.byte	0x50
 2020 0212 0D       		.uleb128 0xd
 2021 0213 9F100000 		.4byte	.LASF36
 2022 0217 06       		.byte	0x6
 2023 0218 49       		.byte	0x49
 2024 0219 C8000000 		.4byte	0xc8
 2025 021d 54       		.byte	0x54
 2026 021e 0D       		.uleb128 0xd
 2027 021f 3E100000 		.4byte	.LASF37
 2028 0223 06       		.byte	0x6
 2029 0224 4A       		.byte	0x4a
 2030 0225 C8000000 		.4byte	0xc8
 2031 0229 58       		.byte	0x58
 2032 022a 0D       		.uleb128 0xd
 2033 022b FF0F0000 		.4byte	.LASF38
 2034 022f 06       		.byte	0x6
 2035 0230 4B       		.byte	0x4b
 2036 0231 C8000000 		.4byte	0xc8
 2037 0235 5C       		.byte	0x5c
 2038 0236 0D       		.uleb128 0xd
 2039 0237 D80A0000 		.4byte	.LASF39
 2040 023b 06       		.byte	0x6
 2041 023c 4C       		.byte	0x4c
 2042 023d C0030000 		.4byte	0x3c0
 2043 0241 60       		.byte	0x60
 2044 0242 0D       		.uleb128 0xd
 2045 0243 BC0B0000 		.4byte	.LASF40
 2046 0247 06       		.byte	0x6
 2047 0248 4D       		.byte	0x4d
 2048 0249 C8000000 		.4byte	0xc8
 2049 024d 80       		.byte	0x80
 2050 024e 0D       		.uleb128 0xd
 2051 024f 0F010000 		.4byte	.LASF41
 2052 0253 06       		.byte	0x6
 2053 0254 4E       		.byte	0x4e
 2054 0255 C8000000 		.4byte	0xc8
 2055 0259 84       		.byte	0x84
 2056 025a 0D       		.uleb128 0xd
 2057 025b 85080000 		.4byte	.LASF42
 2058 025f 06       		.byte	0x6
 2059 0260 4F       		.byte	0x4f
 2060 0261 C8000000 		.4byte	0xc8
ARM GAS  /tmp/cciOmULZ.s 			page 53


 2061 0265 88       		.byte	0x88
 2062 0266 0D       		.uleb128 0xd
 2063 0267 630F0000 		.4byte	.LASF43
 2064 026b 06       		.byte	0x6
 2065 026c 50       		.byte	0x50
 2066 026d 45010000 		.4byte	0x145
 2067 0271 8C       		.byte	0x8c
 2068 0272 0D       		.uleb128 0xd
 2069 0273 8F020000 		.4byte	.LASF44
 2070 0277 06       		.byte	0x6
 2071 0278 51       		.byte	0x51
 2072 0279 C8000000 		.4byte	0xc8
 2073 027d 90       		.byte	0x90
 2074 027e 0D       		.uleb128 0xd
 2075 027f 84040000 		.4byte	.LASF45
 2076 0283 06       		.byte	0x6
 2077 0284 52       		.byte	0x52
 2078 0285 CD000000 		.4byte	0xcd
 2079 0289 94       		.byte	0x94
 2080 028a 0D       		.uleb128 0xd
 2081 028b A80B0000 		.4byte	.LASF46
 2082 028f 06       		.byte	0x6
 2083 0290 53       		.byte	0x53
 2084 0291 C8000000 		.4byte	0xc8
 2085 0295 98       		.byte	0x98
 2086 0296 0D       		.uleb128 0xd
 2087 0297 3B0F0000 		.4byte	.LASF47
 2088 029b 06       		.byte	0x6
 2089 029c 54       		.byte	0x54
 2090 029d C8000000 		.4byte	0xc8
 2091 02a1 9C       		.byte	0x9c
 2092 02a2 0D       		.uleb128 0xd
 2093 02a3 1F0E0000 		.4byte	.LASF48
 2094 02a7 06       		.byte	0x6
 2095 02a8 55       		.byte	0x55
 2096 02a9 C8000000 		.4byte	0xc8
 2097 02ad A0       		.byte	0xa0
 2098 02ae 0D       		.uleb128 0xd
 2099 02af 1A0B0000 		.4byte	.LASF49
 2100 02b3 06       		.byte	0x6
 2101 02b4 56       		.byte	0x56
 2102 02b5 CD000000 		.4byte	0xcd
 2103 02b9 A4       		.byte	0xa4
 2104 02ba 0D       		.uleb128 0xd
 2105 02bb 820A0000 		.4byte	.LASF50
 2106 02bf 06       		.byte	0x6
 2107 02c0 57       		.byte	0x57
 2108 02c1 C8000000 		.4byte	0xc8
 2109 02c5 A8       		.byte	0xa8
 2110 02c6 0D       		.uleb128 0xd
 2111 02c7 10080000 		.4byte	.LASF51
 2112 02cb 06       		.byte	0x6
 2113 02cc 58       		.byte	0x58
 2114 02cd C8000000 		.4byte	0xc8
 2115 02d1 AC       		.byte	0xac
 2116 02d2 0D       		.uleb128 0xd
 2117 02d3 EA0B0000 		.4byte	.LASF52
ARM GAS  /tmp/cciOmULZ.s 			page 54


 2118 02d7 06       		.byte	0x6
 2119 02d8 59       		.byte	0x59
 2120 02d9 C8000000 		.4byte	0xc8
 2121 02dd B0       		.byte	0xb0
 2122 02de 0D       		.uleb128 0xd
 2123 02df 360C0000 		.4byte	.LASF53
 2124 02e3 06       		.byte	0x6
 2125 02e4 5A       		.byte	0x5a
 2126 02e5 CD000000 		.4byte	0xcd
 2127 02e9 B4       		.byte	0xb4
 2128 02ea 0D       		.uleb128 0xd
 2129 02eb C50B0000 		.4byte	.LASF54
 2130 02ef 06       		.byte	0x6
 2131 02f0 5B       		.byte	0x5b
 2132 02f1 C8000000 		.4byte	0xc8
 2133 02f5 B8       		.byte	0xb8
 2134 02f6 0D       		.uleb128 0xd
 2135 02f7 3E080000 		.4byte	.LASF55
 2136 02fb 06       		.byte	0x6
 2137 02fc 5C       		.byte	0x5c
 2138 02fd C8000000 		.4byte	0xc8
 2139 0301 BC       		.byte	0xbc
 2140 0302 0D       		.uleb128 0xd
 2141 0303 830B0000 		.4byte	.LASF56
 2142 0307 06       		.byte	0x6
 2143 0308 5D       		.byte	0x5d
 2144 0309 C8000000 		.4byte	0xc8
 2145 030d C0       		.byte	0xc0
 2146 030e 0D       		.uleb128 0xd
 2147 030f 86000000 		.4byte	.LASF57
 2148 0313 06       		.byte	0x6
 2149 0314 5E       		.byte	0x5e
 2150 0315 CD000000 		.4byte	0xcd
 2151 0319 C4       		.byte	0xc4
 2152 031a 0D       		.uleb128 0xd
 2153 031b 920B0000 		.4byte	.LASF58
 2154 031f 06       		.byte	0x6
 2155 0320 5F       		.byte	0x5f
 2156 0321 C8000000 		.4byte	0xc8
 2157 0325 C8       		.byte	0xc8
 2158 0326 0D       		.uleb128 0xd
 2159 0327 B6090000 		.4byte	.LASF59
 2160 032b 06       		.byte	0x6
 2161 032c 60       		.byte	0x60
 2162 032d CD000000 		.4byte	0xcd
 2163 0331 CC       		.byte	0xcc
 2164 0332 0D       		.uleb128 0xd
 2165 0333 7A0F0000 		.4byte	.LASF60
 2166 0337 06       		.byte	0x6
 2167 0338 61       		.byte	0x61
 2168 0339 C8000000 		.4byte	0xc8
 2169 033d D0       		.byte	0xd0
 2170 033e 0D       		.uleb128 0xd
 2171 033f F2090000 		.4byte	.LASF61
 2172 0343 06       		.byte	0x6
 2173 0344 62       		.byte	0x62
 2174 0345 C8000000 		.4byte	0xc8
ARM GAS  /tmp/cciOmULZ.s 			page 55


 2175 0349 D4       		.byte	0xd4
 2176 034a 0D       		.uleb128 0xd
 2177 034b 730C0000 		.4byte	.LASF62
 2178 034f 06       		.byte	0x6
 2179 0350 63       		.byte	0x63
 2180 0351 CD000000 		.4byte	0xcd
 2181 0355 D8       		.byte	0xd8
 2182 0356 0D       		.uleb128 0xd
 2183 0357 D0090000 		.4byte	.LASF63
 2184 035b 06       		.byte	0x6
 2185 035c 64       		.byte	0x64
 2186 035d CD000000 		.4byte	0xcd
 2187 0361 DC       		.byte	0xdc
 2188 0362 0D       		.uleb128 0xd
 2189 0363 F30F0000 		.4byte	.LASF64
 2190 0367 06       		.byte	0x6
 2191 0368 65       		.byte	0x65
 2192 0369 C8000000 		.4byte	0xc8
 2193 036d E0       		.byte	0xe0
 2194 036e 0D       		.uleb128 0xd
 2195 036f E1000000 		.4byte	.LASF65
 2196 0373 06       		.byte	0x6
 2197 0374 66       		.byte	0x66
 2198 0375 C8000000 		.4byte	0xc8
 2199 0379 E4       		.byte	0xe4
 2200 037a 0D       		.uleb128 0xd
 2201 037b E60C0000 		.4byte	.LASF66
 2202 037f 06       		.byte	0x6
 2203 0380 67       		.byte	0x67
 2204 0381 FA000000 		.4byte	0xfa
 2205 0385 E8       		.byte	0xe8
 2206 0386 0D       		.uleb128 0xd
 2207 0387 89120000 		.4byte	.LASF67
 2208 038b 06       		.byte	0x6
 2209 038c 68       		.byte	0x68
 2210 038d C8000000 		.4byte	0xc8
 2211 0391 F0       		.byte	0xf0
 2212 0392 0D       		.uleb128 0xd
 2213 0393 E6120000 		.4byte	.LASF68
 2214 0397 06       		.byte	0x6
 2215 0398 69       		.byte	0x69
 2216 0399 CD000000 		.4byte	0xcd
 2217 039d F4       		.byte	0xf4
 2218 039e 0D       		.uleb128 0xd
 2219 039f 7E120000 		.4byte	.LASF69
 2220 03a3 06       		.byte	0x6
 2221 03a4 6A       		.byte	0x6a
 2222 03a5 C8000000 		.4byte	0xc8
 2223 03a9 F8       		.byte	0xf8
 2224 03aa 00       		.byte	0
 2225 03ab 08       		.uleb128 0x8
 2226 03ac CD000000 		.4byte	0xcd
 2227 03b0 BB030000 		.4byte	0x3bb
 2228 03b4 09       		.uleb128 0x9
 2229 03b5 D4000000 		.4byte	0xd4
 2230 03b9 07       		.byte	0x7
 2231 03ba 00       		.byte	0
ARM GAS  /tmp/cciOmULZ.s 			page 56


 2232 03bb 06       		.uleb128 0x6
 2233 03bc AB030000 		.4byte	0x3ab
 2234 03c0 05       		.uleb128 0x5
 2235 03c1 BB030000 		.4byte	0x3bb
 2236 03c5 04       		.uleb128 0x4
 2237 03c6 420E0000 		.4byte	.LASF70
 2238 03ca 06       		.byte	0x6
 2239 03cb 6B       		.byte	0x6b
 2240 03cc 4A010000 		.4byte	0x14a
 2241 03d0 04       		.uleb128 0x4
 2242 03d1 81100000 		.4byte	.LASF71
 2243 03d5 07       		.byte	0x7
 2244 03d6 07       		.byte	0x7
 2245 03d7 2C000000 		.4byte	0x2c
 2246 03db 04       		.uleb128 0x4
 2247 03dc 5F130000 		.4byte	.LASF72
 2248 03e0 08       		.byte	0x8
 2249 03e1 2C       		.byte	0x2c
 2250 03e2 70000000 		.4byte	0x70
 2251 03e6 04       		.uleb128 0x4
 2252 03e7 BB020000 		.4byte	.LASF73
 2253 03eb 08       		.byte	0x8
 2254 03ec 72       		.byte	0x72
 2255 03ed 70000000 		.4byte	0x70
 2256 03f1 0E       		.uleb128 0xe
 2257 03f2 E40F0000 		.4byte	.LASF74
 2258 03f6 09       		.byte	0x9
 2259 03f7 6501     		.2byte	0x165
 2260 03f9 25000000 		.4byte	0x25
 2261 03fd 0F       		.uleb128 0xf
 2262 03fe 04       		.byte	0x4
 2263 03ff 08       		.byte	0x8
 2264 0400 A6       		.byte	0xa6
 2265 0401 1C040000 		.4byte	0x41c
 2266 0405 10       		.uleb128 0x10
 2267 0406 1A080000 		.4byte	.LASF75
 2268 040a 08       		.byte	0x8
 2269 040b A8       		.byte	0xa8
 2270 040c F1030000 		.4byte	0x3f1
 2271 0410 10       		.uleb128 0x10
 2272 0411 DC0D0000 		.4byte	.LASF76
 2273 0415 08       		.byte	0x8
 2274 0416 A9       		.byte	0xa9
 2275 0417 1C040000 		.4byte	0x41c
 2276 041b 00       		.byte	0
 2277 041c 08       		.uleb128 0x8
 2278 041d 45000000 		.4byte	0x45
 2279 0421 2C040000 		.4byte	0x42c
 2280 0425 09       		.uleb128 0x9
 2281 0426 D4000000 		.4byte	0xd4
 2282 042a 03       		.byte	0x3
 2283 042b 00       		.byte	0
 2284 042c 0C       		.uleb128 0xc
 2285 042d 08       		.byte	0x8
 2286 042e 08       		.byte	0x8
 2287 042f A3       		.byte	0xa3
 2288 0430 4D040000 		.4byte	0x44d
ARM GAS  /tmp/cciOmULZ.s 			page 57


 2289 0434 0D       		.uleb128 0xd
 2290 0435 F2030000 		.4byte	.LASF77
 2291 0439 08       		.byte	0x8
 2292 043a A5       		.byte	0xa5
 2293 043b 2C000000 		.4byte	0x2c
 2294 043f 00       		.byte	0
 2295 0440 0D       		.uleb128 0xd
 2296 0441 E2060000 		.4byte	.LASF78
 2297 0445 08       		.byte	0x8
 2298 0446 AA       		.byte	0xaa
 2299 0447 FD030000 		.4byte	0x3fd
 2300 044b 04       		.byte	0x4
 2301 044c 00       		.byte	0
 2302 044d 04       		.uleb128 0x4
 2303 044e 770A0000 		.4byte	.LASF79
 2304 0452 08       		.byte	0x8
 2305 0453 AB       		.byte	0xab
 2306 0454 2C040000 		.4byte	0x42c
 2307 0458 04       		.uleb128 0x4
 2308 0459 00000000 		.4byte	.LASF80
 2309 045d 08       		.byte	0x8
 2310 045e AF       		.byte	0xaf
 2311 045f D0030000 		.4byte	0x3d0
 2312 0463 04       		.uleb128 0x4
 2313 0464 250F0000 		.4byte	.LASF81
 2314 0468 0A       		.byte	0xa
 2315 0469 16       		.byte	0x16
 2316 046a 82000000 		.4byte	0x82
 2317 046e 11       		.uleb128 0x11
 2318 046f 35030000 		.4byte	.LASF86
 2319 0473 18       		.byte	0x18
 2320 0474 0A       		.byte	0xa
 2321 0475 2D       		.byte	0x2d
 2322 0476 C1040000 		.4byte	0x4c1
 2323 047a 0D       		.uleb128 0xd
 2324 047b 5D060000 		.4byte	.LASF82
 2325 047f 0A       		.byte	0xa
 2326 0480 2F       		.byte	0x2f
 2327 0481 C1040000 		.4byte	0x4c1
 2328 0485 00       		.byte	0
 2329 0486 12       		.uleb128 0x12
 2330 0487 5F6B00   		.ascii	"_k\000"
 2331 048a 0A       		.byte	0xa
 2332 048b 30       		.byte	0x30
 2333 048c 2C000000 		.4byte	0x2c
 2334 0490 04       		.byte	0x4
 2335 0491 0D       		.uleb128 0xd
 2336 0492 9F0E0000 		.4byte	.LASF83
 2337 0496 0A       		.byte	0xa
 2338 0497 30       		.byte	0x30
 2339 0498 2C000000 		.4byte	0x2c
 2340 049c 08       		.byte	0x8
 2341 049d 0D       		.uleb128 0xd
 2342 049e 9D0B0000 		.4byte	.LASF84
 2343 04a2 0A       		.byte	0xa
 2344 04a3 30       		.byte	0x30
 2345 04a4 2C000000 		.4byte	0x2c
ARM GAS  /tmp/cciOmULZ.s 			page 58


 2346 04a8 0C       		.byte	0xc
 2347 04a9 0D       		.uleb128 0xd
 2348 04aa D0040000 		.4byte	.LASF85
 2349 04ae 0A       		.byte	0xa
 2350 04af 30       		.byte	0x30
 2351 04b0 2C000000 		.4byte	0x2c
 2352 04b4 10       		.byte	0x10
 2353 04b5 12       		.uleb128 0x12
 2354 04b6 5F7800   		.ascii	"_x\000"
 2355 04b9 0A       		.byte	0xa
 2356 04ba 31       		.byte	0x31
 2357 04bb C7040000 		.4byte	0x4c7
 2358 04bf 14       		.byte	0x14
 2359 04c0 00       		.byte	0
 2360 04c1 13       		.uleb128 0x13
 2361 04c2 04       		.byte	0x4
 2362 04c3 6E040000 		.4byte	0x46e
 2363 04c7 08       		.uleb128 0x8
 2364 04c8 63040000 		.4byte	0x463
 2365 04cc D7040000 		.4byte	0x4d7
 2366 04d0 09       		.uleb128 0x9
 2367 04d1 D4000000 		.4byte	0xd4
 2368 04d5 00       		.byte	0
 2369 04d6 00       		.byte	0
 2370 04d7 11       		.uleb128 0x11
 2371 04d8 360F0000 		.4byte	.LASF87
 2372 04dc 24       		.byte	0x24
 2373 04dd 0A       		.byte	0xa
 2374 04de 35       		.byte	0x35
 2375 04df 50050000 		.4byte	0x550
 2376 04e3 0D       		.uleb128 0xd
 2377 04e4 D4050000 		.4byte	.LASF88
 2378 04e8 0A       		.byte	0xa
 2379 04e9 37       		.byte	0x37
 2380 04ea 2C000000 		.4byte	0x2c
 2381 04ee 00       		.byte	0
 2382 04ef 0D       		.uleb128 0xd
 2383 04f0 1E040000 		.4byte	.LASF89
 2384 04f4 0A       		.byte	0xa
 2385 04f5 38       		.byte	0x38
 2386 04f6 2C000000 		.4byte	0x2c
 2387 04fa 04       		.byte	0x4
 2388 04fb 0D       		.uleb128 0xd
 2389 04fc B1030000 		.4byte	.LASF90
 2390 0500 0A       		.byte	0xa
 2391 0501 39       		.byte	0x39
 2392 0502 2C000000 		.4byte	0x2c
 2393 0506 08       		.byte	0x8
 2394 0507 0D       		.uleb128 0xd
 2395 0508 4B070000 		.4byte	.LASF91
 2396 050c 0A       		.byte	0xa
 2397 050d 3A       		.byte	0x3a
 2398 050e 2C000000 		.4byte	0x2c
 2399 0512 0C       		.byte	0xc
 2400 0513 0D       		.uleb128 0xd
 2401 0514 B30B0000 		.4byte	.LASF92
 2402 0518 0A       		.byte	0xa
ARM GAS  /tmp/cciOmULZ.s 			page 59


 2403 0519 3B       		.byte	0x3b
 2404 051a 2C000000 		.4byte	0x2c
 2405 051e 10       		.byte	0x10
 2406 051f 0D       		.uleb128 0xd
 2407 0520 150E0000 		.4byte	.LASF93
 2408 0524 0A       		.byte	0xa
 2409 0525 3C       		.byte	0x3c
 2410 0526 2C000000 		.4byte	0x2c
 2411 052a 14       		.byte	0x14
 2412 052b 0D       		.uleb128 0xd
 2413 052c 62030000 		.4byte	.LASF94
 2414 0530 0A       		.byte	0xa
 2415 0531 3D       		.byte	0x3d
 2416 0532 2C000000 		.4byte	0x2c
 2417 0536 18       		.byte	0x18
 2418 0537 0D       		.uleb128 0xd
 2419 0538 E7050000 		.4byte	.LASF95
 2420 053c 0A       		.byte	0xa
 2421 053d 3E       		.byte	0x3e
 2422 053e 2C000000 		.4byte	0x2c
 2423 0542 1C       		.byte	0x1c
 2424 0543 0D       		.uleb128 0xd
 2425 0544 050B0000 		.4byte	.LASF96
 2426 0548 0A       		.byte	0xa
 2427 0549 3F       		.byte	0x3f
 2428 054a 2C000000 		.4byte	0x2c
 2429 054e 20       		.byte	0x20
 2430 054f 00       		.byte	0
 2431 0550 14       		.uleb128 0x14
 2432 0551 78000000 		.4byte	.LASF97
 2433 0555 0801     		.2byte	0x108
 2434 0557 0A       		.byte	0xa
 2435 0558 48       		.byte	0x48
 2436 0559 90050000 		.4byte	0x590
 2437 055d 0D       		.uleb128 0xd
 2438 055e BB030000 		.4byte	.LASF98
 2439 0562 0A       		.byte	0xa
 2440 0563 49       		.byte	0x49
 2441 0564 90050000 		.4byte	0x590
 2442 0568 00       		.byte	0
 2443 0569 0D       		.uleb128 0xd
 2444 056a 32100000 		.4byte	.LASF99
 2445 056e 0A       		.byte	0xa
 2446 056f 4A       		.byte	0x4a
 2447 0570 90050000 		.4byte	0x590
 2448 0574 80       		.byte	0x80
 2449 0575 15       		.uleb128 0x15
 2450 0576 20130000 		.4byte	.LASF100
 2451 057a 0A       		.byte	0xa
 2452 057b 4C       		.byte	0x4c
 2453 057c 63040000 		.4byte	0x463
 2454 0580 0001     		.2byte	0x100
 2455 0582 15       		.uleb128 0x15
 2456 0583 CA130000 		.4byte	.LASF101
 2457 0587 0A       		.byte	0xa
 2458 0588 4F       		.byte	0x4f
 2459 0589 63040000 		.4byte	0x463
ARM GAS  /tmp/cciOmULZ.s 			page 60


 2460 058d 0401     		.2byte	0x104
 2461 058f 00       		.byte	0
 2462 0590 08       		.uleb128 0x8
 2463 0591 D2000000 		.4byte	0xd2
 2464 0595 A0050000 		.4byte	0x5a0
 2465 0599 09       		.uleb128 0x9
 2466 059a D4000000 		.4byte	0xd4
 2467 059e 1F       		.byte	0x1f
 2468 059f 00       		.byte	0
 2469 05a0 14       		.uleb128 0x14
 2470 05a1 940C0000 		.4byte	.LASF102
 2471 05a5 9001     		.2byte	0x190
 2472 05a7 0A       		.byte	0xa
 2473 05a8 5B       		.byte	0x5b
 2474 05a9 DE050000 		.4byte	0x5de
 2475 05ad 0D       		.uleb128 0xd
 2476 05ae 5D060000 		.4byte	.LASF82
 2477 05b2 0A       		.byte	0xa
 2478 05b3 5C       		.byte	0x5c
 2479 05b4 DE050000 		.4byte	0x5de
 2480 05b8 00       		.byte	0
 2481 05b9 0D       		.uleb128 0xd
 2482 05ba 3A0B0000 		.4byte	.LASF103
 2483 05be 0A       		.byte	0xa
 2484 05bf 5D       		.byte	0x5d
 2485 05c0 2C000000 		.4byte	0x2c
 2486 05c4 04       		.byte	0x4
 2487 05c5 0D       		.uleb128 0xd
 2488 05c6 ED030000 		.4byte	.LASF104
 2489 05ca 0A       		.byte	0xa
 2490 05cb 5F       		.byte	0x5f
 2491 05cc E4050000 		.4byte	0x5e4
 2492 05d0 08       		.byte	0x8
 2493 05d1 0D       		.uleb128 0xd
 2494 05d2 78000000 		.4byte	.LASF97
 2495 05d6 0A       		.byte	0xa
 2496 05d7 60       		.byte	0x60
 2497 05d8 50050000 		.4byte	0x550
 2498 05dc 88       		.byte	0x88
 2499 05dd 00       		.byte	0
 2500 05de 13       		.uleb128 0x13
 2501 05df 04       		.byte	0x4
 2502 05e0 A0050000 		.4byte	0x5a0
 2503 05e4 08       		.uleb128 0x8
 2504 05e5 F4050000 		.4byte	0x5f4
 2505 05e9 F4050000 		.4byte	0x5f4
 2506 05ed 09       		.uleb128 0x9
 2507 05ee D4000000 		.4byte	0xd4
 2508 05f2 1F       		.byte	0x1f
 2509 05f3 00       		.byte	0
 2510 05f4 13       		.uleb128 0x13
 2511 05f5 04       		.byte	0x4
 2512 05f6 FA050000 		.4byte	0x5fa
 2513 05fa 16       		.uleb128 0x16
 2514 05fb 11       		.uleb128 0x11
 2515 05fc 150C0000 		.4byte	.LASF105
 2516 0600 08       		.byte	0x8
ARM GAS  /tmp/cciOmULZ.s 			page 61


 2517 0601 0A       		.byte	0xa
 2518 0602 73       		.byte	0x73
 2519 0603 20060000 		.4byte	0x620
 2520 0607 0D       		.uleb128 0xd
 2521 0608 52090000 		.4byte	.LASF106
 2522 060c 0A       		.byte	0xa
 2523 060d 74       		.byte	0x74
 2524 060e 20060000 		.4byte	0x620
 2525 0612 00       		.byte	0
 2526 0613 0D       		.uleb128 0xd
 2527 0614 52130000 		.4byte	.LASF107
 2528 0618 0A       		.byte	0xa
 2529 0619 75       		.byte	0x75
 2530 061a 2C000000 		.4byte	0x2c
 2531 061e 04       		.byte	0x4
 2532 061f 00       		.byte	0
 2533 0620 13       		.uleb128 0x13
 2534 0621 04       		.byte	0x4
 2535 0622 45000000 		.4byte	0x45
 2536 0626 11       		.uleb128 0x11
 2537 0627 29130000 		.4byte	.LASF108
 2538 062b 68       		.byte	0x68
 2539 062c 0A       		.byte	0xa
 2540 062d B3       		.byte	0xb3
 2541 062e 50070000 		.4byte	0x750
 2542 0632 12       		.uleb128 0x12
 2543 0633 5F7000   		.ascii	"_p\000"
 2544 0636 0A       		.byte	0xa
 2545 0637 B4       		.byte	0xb4
 2546 0638 20060000 		.4byte	0x620
 2547 063c 00       		.byte	0
 2548 063d 12       		.uleb128 0x12
 2549 063e 5F7200   		.ascii	"_r\000"
 2550 0641 0A       		.byte	0xa
 2551 0642 B5       		.byte	0xb5
 2552 0643 2C000000 		.4byte	0x2c
 2553 0647 04       		.byte	0x4
 2554 0648 12       		.uleb128 0x12
 2555 0649 5F7700   		.ascii	"_w\000"
 2556 064c 0A       		.byte	0xa
 2557 064d B6       		.byte	0xb6
 2558 064e 2C000000 		.4byte	0x2c
 2559 0652 08       		.byte	0x8
 2560 0653 0D       		.uleb128 0xd
 2561 0654 41010000 		.4byte	.LASF109
 2562 0658 0A       		.byte	0xa
 2563 0659 B7       		.byte	0xb7
 2564 065a 4C000000 		.4byte	0x4c
 2565 065e 0C       		.byte	0xc
 2566 065f 0D       		.uleb128 0xd
 2567 0660 DB090000 		.4byte	.LASF110
 2568 0664 0A       		.byte	0xa
 2569 0665 B8       		.byte	0xb8
 2570 0666 4C000000 		.4byte	0x4c
 2571 066a 0E       		.byte	0xe
 2572 066b 12       		.uleb128 0x12
 2573 066c 5F626600 		.ascii	"_bf\000"
ARM GAS  /tmp/cciOmULZ.s 			page 62


 2574 0670 0A       		.byte	0xa
 2575 0671 B9       		.byte	0xb9
 2576 0672 FB050000 		.4byte	0x5fb
 2577 0676 10       		.byte	0x10
 2578 0677 0D       		.uleb128 0xd
 2579 0678 38010000 		.4byte	.LASF111
 2580 067c 0A       		.byte	0xa
 2581 067d BA       		.byte	0xba
 2582 067e 2C000000 		.4byte	0x2c
 2583 0682 18       		.byte	0x18
 2584 0683 0D       		.uleb128 0xd
 2585 0684 19030000 		.4byte	.LASF112
 2586 0688 0A       		.byte	0xa
 2587 0689 C1       		.byte	0xc1
 2588 068a D2000000 		.4byte	0xd2
 2589 068e 1C       		.byte	0x1c
 2590 068f 0D       		.uleb128 0xd
 2591 0690 A7100000 		.4byte	.LASF113
 2592 0694 0A       		.byte	0xa
 2593 0695 C3       		.byte	0xc3
 2594 0696 BD080000 		.4byte	0x8bd
 2595 069a 20       		.byte	0x20
 2596 069b 0D       		.uleb128 0xd
 2597 069c 2F0C0000 		.4byte	.LASF114
 2598 06a0 0A       		.byte	0xa
 2599 06a1 C5       		.byte	0xc5
 2600 06a2 E7080000 		.4byte	0x8e7
 2601 06a6 24       		.byte	0x24
 2602 06a7 0D       		.uleb128 0xd
 2603 06a8 21140000 		.4byte	.LASF115
 2604 06ac 0A       		.byte	0xa
 2605 06ad C8       		.byte	0xc8
 2606 06ae 0B090000 		.4byte	0x90b
 2607 06b2 28       		.byte	0x28
 2608 06b3 0D       		.uleb128 0xd
 2609 06b4 90080000 		.4byte	.LASF116
 2610 06b8 0A       		.byte	0xa
 2611 06b9 C9       		.byte	0xc9
 2612 06ba 25090000 		.4byte	0x925
 2613 06be 2C       		.byte	0x2c
 2614 06bf 12       		.uleb128 0x12
 2615 06c0 5F756200 		.ascii	"_ub\000"
 2616 06c4 0A       		.byte	0xa
 2617 06c5 CC       		.byte	0xcc
 2618 06c6 FB050000 		.4byte	0x5fb
 2619 06ca 30       		.byte	0x30
 2620 06cb 12       		.uleb128 0x12
 2621 06cc 5F757000 		.ascii	"_up\000"
 2622 06d0 0A       		.byte	0xa
 2623 06d1 CD       		.byte	0xcd
 2624 06d2 20060000 		.4byte	0x620
 2625 06d6 38       		.byte	0x38
 2626 06d7 12       		.uleb128 0x12
 2627 06d8 5F757200 		.ascii	"_ur\000"
 2628 06dc 0A       		.byte	0xa
 2629 06dd CE       		.byte	0xce
 2630 06de 2C000000 		.4byte	0x2c
ARM GAS  /tmp/cciOmULZ.s 			page 63


 2631 06e2 3C       		.byte	0x3c
 2632 06e3 0D       		.uleb128 0xd
 2633 06e4 3A050000 		.4byte	.LASF117
 2634 06e8 0A       		.byte	0xa
 2635 06e9 D1       		.byte	0xd1
 2636 06ea 2B090000 		.4byte	0x92b
 2637 06ee 40       		.byte	0x40
 2638 06ef 0D       		.uleb128 0xd
 2639 06f0 66130000 		.4byte	.LASF118
 2640 06f4 0A       		.byte	0xa
 2641 06f5 D2       		.byte	0xd2
 2642 06f6 3B090000 		.4byte	0x93b
 2643 06fa 43       		.byte	0x43
 2644 06fb 12       		.uleb128 0x12
 2645 06fc 5F6C6200 		.ascii	"_lb\000"
 2646 0700 0A       		.byte	0xa
 2647 0701 D5       		.byte	0xd5
 2648 0702 FB050000 		.4byte	0x5fb
 2649 0706 44       		.byte	0x44
 2650 0707 0D       		.uleb128 0xd
 2651 0708 2D0F0000 		.4byte	.LASF119
 2652 070c 0A       		.byte	0xa
 2653 070d D8       		.byte	0xd8
 2654 070e 2C000000 		.4byte	0x2c
 2655 0712 4C       		.byte	0x4c
 2656 0713 0D       		.uleb128 0xd
 2657 0714 32050000 		.4byte	.LASF120
 2658 0718 0A       		.byte	0xa
 2659 0719 D9       		.byte	0xd9
 2660 071a DB030000 		.4byte	0x3db
 2661 071e 50       		.byte	0x50
 2662 071f 0D       		.uleb128 0xd
 2663 0720 D60D0000 		.4byte	.LASF121
 2664 0724 0A       		.byte	0xa
 2665 0725 DC       		.byte	0xdc
 2666 0726 6E070000 		.4byte	0x76e
 2667 072a 54       		.byte	0x54
 2668 072b 0D       		.uleb128 0xd
 2669 072c 5D0F0000 		.4byte	.LASF122
 2670 0730 0A       		.byte	0xa
 2671 0731 E0       		.byte	0xe0
 2672 0732 58040000 		.4byte	0x458
 2673 0736 58       		.byte	0x58
 2674 0737 0D       		.uleb128 0xd
 2675 0738 4B020000 		.4byte	.LASF123
 2676 073c 0A       		.byte	0xa
 2677 073d E2       		.byte	0xe2
 2678 073e 4D040000 		.4byte	0x44d
 2679 0742 5C       		.byte	0x5c
 2680 0743 0D       		.uleb128 0xd
 2681 0744 C2130000 		.4byte	.LASF124
 2682 0748 0A       		.byte	0xa
 2683 0749 E3       		.byte	0xe3
 2684 074a 2C000000 		.4byte	0x2c
 2685 074e 64       		.byte	0x64
 2686 074f 00       		.byte	0
 2687 0750 17       		.uleb128 0x17
ARM GAS  /tmp/cciOmULZ.s 			page 64


 2688 0751 2C000000 		.4byte	0x2c
 2689 0755 6E070000 		.4byte	0x76e
 2690 0759 18       		.uleb128 0x18
 2691 075a 6E070000 		.4byte	0x76e
 2692 075e 18       		.uleb128 0x18
 2693 075f D2000000 		.4byte	0xd2
 2694 0763 18       		.uleb128 0x18
 2695 0764 AB080000 		.4byte	0x8ab
 2696 0768 18       		.uleb128 0x18
 2697 0769 2C000000 		.4byte	0x2c
 2698 076d 00       		.byte	0
 2699 076e 13       		.uleb128 0x13
 2700 076f 04       		.byte	0x4
 2701 0770 79070000 		.4byte	0x779
 2702 0774 06       		.uleb128 0x6
 2703 0775 6E070000 		.4byte	0x76e
 2704 0779 19       		.uleb128 0x19
 2705 077a CC120000 		.4byte	.LASF125
 2706 077e 2804     		.2byte	0x428
 2707 0780 0A       		.byte	0xa
 2708 0781 3802     		.2byte	0x238
 2709 0783 AB080000 		.4byte	0x8ab
 2710 0787 1A       		.uleb128 0x1a
 2711 0788 60010000 		.4byte	.LASF126
 2712 078c 0A       		.byte	0xa
 2713 078d 3A02     		.2byte	0x23a
 2714 078f 2C000000 		.4byte	0x2c
 2715 0793 00       		.byte	0
 2716 0794 1A       		.uleb128 0x1a
 2717 0795 1F090000 		.4byte	.LASF127
 2718 0799 0A       		.byte	0xa
 2719 079a 3F02     		.2byte	0x23f
 2720 079c 92090000 		.4byte	0x992
 2721 07a0 04       		.byte	0x4
 2722 07a1 1A       		.uleb128 0x1a
 2723 07a2 B3020000 		.4byte	.LASF128
 2724 07a6 0A       		.byte	0xa
 2725 07a7 3F02     		.2byte	0x23f
 2726 07a9 92090000 		.4byte	0x992
 2727 07ad 08       		.byte	0x8
 2728 07ae 1A       		.uleb128 0x1a
 2729 07af 27140000 		.4byte	.LASF129
 2730 07b3 0A       		.byte	0xa
 2731 07b4 3F02     		.2byte	0x23f
 2732 07b6 92090000 		.4byte	0x992
 2733 07ba 0C       		.byte	0xc
 2734 07bb 1A       		.uleb128 0x1a
 2735 07bc F1050000 		.4byte	.LASF130
 2736 07c0 0A       		.byte	0xa
 2737 07c1 4102     		.2byte	0x241
 2738 07c3 2C000000 		.4byte	0x2c
 2739 07c7 10       		.byte	0x10
 2740 07c8 1A       		.uleb128 0x1a
 2741 07c9 74050000 		.4byte	.LASF131
 2742 07cd 0A       		.byte	0xa
 2743 07ce 4202     		.2byte	0x242
 2744 07d0 740B0000 		.4byte	0xb74
ARM GAS  /tmp/cciOmULZ.s 			page 65


 2745 07d4 14       		.byte	0x14
 2746 07d5 1A       		.uleb128 0x1a
 2747 07d6 D40E0000 		.4byte	.LASF132
 2748 07da 0A       		.byte	0xa
 2749 07db 4402     		.2byte	0x244
 2750 07dd 2C000000 		.4byte	0x2c
 2751 07e1 30       		.byte	0x30
 2752 07e2 1A       		.uleb128 0x1a
 2753 07e3 B70D0000 		.4byte	.LASF133
 2754 07e7 0A       		.byte	0xa
 2755 07e8 4502     		.2byte	0x245
 2756 07ea E1080000 		.4byte	0x8e1
 2757 07ee 34       		.byte	0x34
 2758 07ef 1A       		.uleb128 0x1a
 2759 07f0 97080000 		.4byte	.LASF134
 2760 07f4 0A       		.byte	0xa
 2761 07f5 4702     		.2byte	0x247
 2762 07f7 2C000000 		.4byte	0x2c
 2763 07fb 38       		.byte	0x38
 2764 07fc 1A       		.uleb128 0x1a
 2765 07fd 350A0000 		.4byte	.LASF135
 2766 0801 0A       		.byte	0xa
 2767 0802 4902     		.2byte	0x249
 2768 0804 8F0B0000 		.4byte	0xb8f
 2769 0808 3C       		.byte	0x3c
 2770 0809 1A       		.uleb128 0x1a
 2771 080a 96030000 		.4byte	.LASF136
 2772 080e 0A       		.byte	0xa
 2773 080f 4C02     		.2byte	0x24c
 2774 0811 C1040000 		.4byte	0x4c1
 2775 0815 40       		.byte	0x40
 2776 0816 1A       		.uleb128 0x1a
 2777 0817 DF070000 		.4byte	.LASF137
 2778 081b 0A       		.byte	0xa
 2779 081c 4D02     		.2byte	0x24d
 2780 081e 2C000000 		.4byte	0x2c
 2781 0822 44       		.byte	0x44
 2782 0823 1A       		.uleb128 0x1a
 2783 0824 F6060000 		.4byte	.LASF138
 2784 0828 0A       		.byte	0xa
 2785 0829 4E02     		.2byte	0x24e
 2786 082b C1040000 		.4byte	0x4c1
 2787 082f 48       		.byte	0x48
 2788 0830 1A       		.uleb128 0x1a
 2789 0831 58090000 		.4byte	.LASF139
 2790 0835 0A       		.byte	0xa
 2791 0836 4F02     		.2byte	0x24f
 2792 0838 950B0000 		.4byte	0xb95
 2793 083c 4C       		.byte	0x4c
 2794 083d 1A       		.uleb128 0x1a
 2795 083e 970E0000 		.4byte	.LASF140
 2796 0842 0A       		.byte	0xa
 2797 0843 5202     		.2byte	0x252
 2798 0845 2C000000 		.4byte	0x2c
 2799 0849 50       		.byte	0x50
 2800 084a 1A       		.uleb128 0x1a
 2801 084b 47100000 		.4byte	.LASF141
ARM GAS  /tmp/cciOmULZ.s 			page 66


 2802 084f 0A       		.byte	0xa
 2803 0850 5302     		.2byte	0x253
 2804 0852 AB080000 		.4byte	0x8ab
 2805 0856 54       		.byte	0x54
 2806 0857 1A       		.uleb128 0x1a
 2807 0858 920E0000 		.4byte	.LASF142
 2808 085c 0A       		.byte	0xa
 2809 085d 7602     		.2byte	0x276
 2810 085f 520B0000 		.4byte	0xb52
 2811 0863 58       		.byte	0x58
 2812 0864 1B       		.uleb128 0x1b
 2813 0865 940C0000 		.4byte	.LASF102
 2814 0869 0A       		.byte	0xa
 2815 086a 7A02     		.2byte	0x27a
 2816 086c DE050000 		.4byte	0x5de
 2817 0870 4801     		.2byte	0x148
 2818 0872 1B       		.uleb128 0x1b
 2819 0873 6E070000 		.4byte	.LASF143
 2820 0877 0A       		.byte	0xa
 2821 0878 7B02     		.2byte	0x27b
 2822 087a A0050000 		.4byte	0x5a0
 2823 087e 4C01     		.2byte	0x14c
 2824 0880 1B       		.uleb128 0x1b
 2825 0881 55070000 		.4byte	.LASF144
 2826 0885 0A       		.byte	0xa
 2827 0886 7F02     		.2byte	0x27f
 2828 0888 A60B0000 		.4byte	0xba6
 2829 088c DC02     		.2byte	0x2dc
 2830 088e 1B       		.uleb128 0x1b
 2831 088f 2F120000 		.4byte	.LASF145
 2832 0893 0A       		.byte	0xa
 2833 0894 8402     		.2byte	0x284
 2834 0896 57090000 		.4byte	0x957
 2835 089a E002     		.2byte	0x2e0
 2836 089c 1B       		.uleb128 0x1b
 2837 089d 800D0000 		.4byte	.LASF146
 2838 08a1 0A       		.byte	0xa
 2839 08a2 8502     		.2byte	0x285
 2840 08a4 B20B0000 		.4byte	0xbb2
 2841 08a8 EC02     		.2byte	0x2ec
 2842 08aa 00       		.byte	0
 2843 08ab 13       		.uleb128 0x13
 2844 08ac 04       		.byte	0x4
 2845 08ad B1080000 		.4byte	0x8b1
 2846 08b1 02       		.uleb128 0x2
 2847 08b2 01       		.byte	0x1
 2848 08b3 08       		.byte	0x8
 2849 08b4 32070000 		.4byte	.LASF147
 2850 08b8 06       		.uleb128 0x6
 2851 08b9 B1080000 		.4byte	0x8b1
 2852 08bd 13       		.uleb128 0x13
 2853 08be 04       		.byte	0x4
 2854 08bf 50070000 		.4byte	0x750
 2855 08c3 17       		.uleb128 0x17
 2856 08c4 2C000000 		.4byte	0x2c
 2857 08c8 E1080000 		.4byte	0x8e1
 2858 08cc 18       		.uleb128 0x18
ARM GAS  /tmp/cciOmULZ.s 			page 67


 2859 08cd 6E070000 		.4byte	0x76e
 2860 08d1 18       		.uleb128 0x18
 2861 08d2 D2000000 		.4byte	0xd2
 2862 08d6 18       		.uleb128 0x18
 2863 08d7 E1080000 		.4byte	0x8e1
 2864 08db 18       		.uleb128 0x18
 2865 08dc 2C000000 		.4byte	0x2c
 2866 08e0 00       		.byte	0
 2867 08e1 13       		.uleb128 0x13
 2868 08e2 04       		.byte	0x4
 2869 08e3 B8080000 		.4byte	0x8b8
 2870 08e7 13       		.uleb128 0x13
 2871 08e8 04       		.byte	0x4
 2872 08e9 C3080000 		.4byte	0x8c3
 2873 08ed 17       		.uleb128 0x17
 2874 08ee E6030000 		.4byte	0x3e6
 2875 08f2 0B090000 		.4byte	0x90b
 2876 08f6 18       		.uleb128 0x18
 2877 08f7 6E070000 		.4byte	0x76e
 2878 08fb 18       		.uleb128 0x18
 2879 08fc D2000000 		.4byte	0xd2
 2880 0900 18       		.uleb128 0x18
 2881 0901 E6030000 		.4byte	0x3e6
 2882 0905 18       		.uleb128 0x18
 2883 0906 2C000000 		.4byte	0x2c
 2884 090a 00       		.byte	0
 2885 090b 13       		.uleb128 0x13
 2886 090c 04       		.byte	0x4
 2887 090d ED080000 		.4byte	0x8ed
 2888 0911 17       		.uleb128 0x17
 2889 0912 2C000000 		.4byte	0x2c
 2890 0916 25090000 		.4byte	0x925
 2891 091a 18       		.uleb128 0x18
 2892 091b 6E070000 		.4byte	0x76e
 2893 091f 18       		.uleb128 0x18
 2894 0920 D2000000 		.4byte	0xd2
 2895 0924 00       		.byte	0
 2896 0925 13       		.uleb128 0x13
 2897 0926 04       		.byte	0x4
 2898 0927 11090000 		.4byte	0x911
 2899 092b 08       		.uleb128 0x8
 2900 092c 45000000 		.4byte	0x45
 2901 0930 3B090000 		.4byte	0x93b
 2902 0934 09       		.uleb128 0x9
 2903 0935 D4000000 		.4byte	0xd4
 2904 0939 02       		.byte	0x2
 2905 093a 00       		.byte	0
 2906 093b 08       		.uleb128 0x8
 2907 093c 45000000 		.4byte	0x45
 2908 0940 4B090000 		.4byte	0x94b
 2909 0944 09       		.uleb128 0x9
 2910 0945 D4000000 		.4byte	0xd4
 2911 0949 00       		.byte	0
 2912 094a 00       		.byte	0
 2913 094b 0E       		.uleb128 0xe
 2914 094c 16050000 		.4byte	.LASF148
 2915 0950 0A       		.byte	0xa
ARM GAS  /tmp/cciOmULZ.s 			page 68


 2916 0951 1D01     		.2byte	0x11d
 2917 0953 26060000 		.4byte	0x626
 2918 0957 1C       		.uleb128 0x1c
 2919 0958 BE110000 		.4byte	.LASF149
 2920 095c 0C       		.byte	0xc
 2921 095d 0A       		.byte	0xa
 2922 095e 2101     		.2byte	0x121
 2923 0960 8C090000 		.4byte	0x98c
 2924 0964 1A       		.uleb128 0x1a
 2925 0965 5D060000 		.4byte	.LASF82
 2926 0969 0A       		.byte	0xa
 2927 096a 2301     		.2byte	0x123
 2928 096c 8C090000 		.4byte	0x98c
 2929 0970 00       		.byte	0
 2930 0971 1A       		.uleb128 0x1a
 2931 0972 DD0F0000 		.4byte	.LASF150
 2932 0976 0A       		.byte	0xa
 2933 0977 2401     		.2byte	0x124
 2934 0979 2C000000 		.4byte	0x2c
 2935 097d 04       		.byte	0x4
 2936 097e 1A       		.uleb128 0x1a
 2937 097f 38140000 		.4byte	.LASF151
 2938 0983 0A       		.byte	0xa
 2939 0984 2501     		.2byte	0x125
 2940 0986 92090000 		.4byte	0x992
 2941 098a 08       		.byte	0x8
 2942 098b 00       		.byte	0
 2943 098c 13       		.uleb128 0x13
 2944 098d 04       		.byte	0x4
 2945 098e 57090000 		.4byte	0x957
 2946 0992 13       		.uleb128 0x13
 2947 0993 04       		.byte	0x4
 2948 0994 4B090000 		.4byte	0x94b
 2949 0998 1C       		.uleb128 0x1c
 2950 0999 B2040000 		.4byte	.LASF152
 2951 099d 0E       		.byte	0xe
 2952 099e 0A       		.byte	0xa
 2953 099f 3D01     		.2byte	0x13d
 2954 09a1 CD090000 		.4byte	0x9cd
 2955 09a5 1A       		.uleb128 0x1a
 2956 09a6 FA130000 		.4byte	.LASF153
 2957 09aa 0A       		.byte	0xa
 2958 09ab 3E01     		.2byte	0x13e
 2959 09ad CD090000 		.4byte	0x9cd
 2960 09b1 00       		.byte	0
 2961 09b2 1A       		.uleb128 0x1a
 2962 09b3 71090000 		.4byte	.LASF154
 2963 09b7 0A       		.byte	0xa
 2964 09b8 3F01     		.2byte	0x13f
 2965 09ba CD090000 		.4byte	0x9cd
 2966 09be 06       		.byte	0x6
 2967 09bf 1A       		.uleb128 0x1a
 2968 09c0 77090000 		.4byte	.LASF155
 2969 09c4 0A       		.byte	0xa
 2970 09c5 4001     		.2byte	0x140
 2971 09c7 5E000000 		.4byte	0x5e
 2972 09cb 0C       		.byte	0xc
ARM GAS  /tmp/cciOmULZ.s 			page 69


 2973 09cc 00       		.byte	0
 2974 09cd 08       		.uleb128 0x8
 2975 09ce 5E000000 		.4byte	0x5e
 2976 09d2 DD090000 		.4byte	0x9dd
 2977 09d6 09       		.uleb128 0x9
 2978 09d7 D4000000 		.4byte	0xd4
 2979 09db 02       		.byte	0x2
 2980 09dc 00       		.byte	0
 2981 09dd 1D       		.uleb128 0x1d
 2982 09de D0       		.byte	0xd0
 2983 09df 0A       		.byte	0xa
 2984 09e0 5702     		.2byte	0x257
 2985 09e2 DE0A0000 		.4byte	0xade
 2986 09e6 1A       		.uleb128 0x1a
 2987 09e7 6C130000 		.4byte	.LASF156
 2988 09eb 0A       		.byte	0xa
 2989 09ec 5902     		.2byte	0x259
 2990 09ee 25000000 		.4byte	0x25
 2991 09f2 00       		.byte	0
 2992 09f3 1A       		.uleb128 0x1a
 2993 09f4 40120000 		.4byte	.LASF157
 2994 09f8 0A       		.byte	0xa
 2995 09f9 5A02     		.2byte	0x25a
 2996 09fb AB080000 		.4byte	0x8ab
 2997 09ff 04       		.byte	0x4
 2998 0a00 1A       		.uleb128 0x1a
 2999 0a01 A5040000 		.4byte	.LASF158
 3000 0a05 0A       		.byte	0xa
 3001 0a06 5B02     		.2byte	0x25b
 3002 0a08 DE0A0000 		.4byte	0xade
 3003 0a0c 08       		.byte	0x8
 3004 0a0d 1A       		.uleb128 0x1a
 3005 0a0e 710E0000 		.4byte	.LASF159
 3006 0a12 0A       		.byte	0xa
 3007 0a13 5C02     		.2byte	0x25c
 3008 0a15 D7040000 		.4byte	0x4d7
 3009 0a19 24       		.byte	0x24
 3010 0a1a 1A       		.uleb128 0x1a
 3011 0a1b 26090000 		.4byte	.LASF160
 3012 0a1f 0A       		.byte	0xa
 3013 0a20 5D02     		.2byte	0x25d
 3014 0a22 2C000000 		.4byte	0x2c
 3015 0a26 48       		.byte	0x48
 3016 0a27 1A       		.uleb128 0x1a
 3017 0a28 00140000 		.4byte	.LASF161
 3018 0a2c 0A       		.byte	0xa
 3019 0a2d 5E02     		.2byte	0x25e
 3020 0a2f 90000000 		.4byte	0x90
 3021 0a33 50       		.byte	0x50
 3022 0a34 1A       		.uleb128 0x1a
 3023 0a35 D3000000 		.4byte	.LASF162
 3024 0a39 0A       		.byte	0xa
 3025 0a3a 5F02     		.2byte	0x25f
 3026 0a3c 98090000 		.4byte	0x998
 3027 0a40 58       		.byte	0x58
 3028 0a41 1A       		.uleb128 0x1a
 3029 0a42 25070000 		.4byte	.LASF163
ARM GAS  /tmp/cciOmULZ.s 			page 70


 3030 0a46 0A       		.byte	0xa
 3031 0a47 6002     		.2byte	0x260
 3032 0a49 4D040000 		.4byte	0x44d
 3033 0a4d 68       		.byte	0x68
 3034 0a4e 1A       		.uleb128 0x1a
 3035 0a4f 4D120000 		.4byte	.LASF164
 3036 0a53 0A       		.byte	0xa
 3037 0a54 6102     		.2byte	0x261
 3038 0a56 4D040000 		.4byte	0x44d
 3039 0a5a 70       		.byte	0x70
 3040 0a5b 1A       		.uleb128 0x1a
 3041 0a5c BC000000 		.4byte	.LASF165
 3042 0a60 0A       		.byte	0xa
 3043 0a61 6202     		.2byte	0x262
 3044 0a63 4D040000 		.4byte	0x44d
 3045 0a67 78       		.byte	0x78
 3046 0a68 1A       		.uleb128 0x1a
 3047 0a69 A70E0000 		.4byte	.LASF166
 3048 0a6d 0A       		.byte	0xa
 3049 0a6e 6302     		.2byte	0x263
 3050 0a70 EE0A0000 		.4byte	0xaee
 3051 0a74 80       		.byte	0x80
 3052 0a75 1A       		.uleb128 0x1a
 3053 0a76 03010000 		.4byte	.LASF167
 3054 0a7a 0A       		.byte	0xa
 3055 0a7b 6402     		.2byte	0x264
 3056 0a7d FE0A0000 		.4byte	0xafe
 3057 0a81 88       		.byte	0x88
 3058 0a82 1A       		.uleb128 0x1a
 3059 0a83 45130000 		.4byte	.LASF168
 3060 0a87 0A       		.byte	0xa
 3061 0a88 6502     		.2byte	0x265
 3062 0a8a 2C000000 		.4byte	0x2c
 3063 0a8e A0       		.byte	0xa0
 3064 0a8f 1A       		.uleb128 0x1a
 3065 0a90 81020000 		.4byte	.LASF169
 3066 0a94 0A       		.byte	0xa
 3067 0a95 6602     		.2byte	0x266
 3068 0a97 4D040000 		.4byte	0x44d
 3069 0a9b A4       		.byte	0xa4
 3070 0a9c 1A       		.uleb128 0x1a
 3071 0a9d 5F070000 		.4byte	.LASF170
 3072 0aa1 0A       		.byte	0xa
 3073 0aa2 6702     		.2byte	0x267
 3074 0aa4 4D040000 		.4byte	0x44d
 3075 0aa8 AC       		.byte	0xac
 3076 0aa9 1A       		.uleb128 0x1a
 3077 0aaa 67040000 		.4byte	.LASF171
 3078 0aae 0A       		.byte	0xa
 3079 0aaf 6802     		.2byte	0x268
 3080 0ab1 4D040000 		.4byte	0x44d
 3081 0ab5 B4       		.byte	0xb4
 3082 0ab6 1A       		.uleb128 0x1a
 3083 0ab7 C1090000 		.4byte	.LASF172
 3084 0abb 0A       		.byte	0xa
 3085 0abc 6902     		.2byte	0x269
 3086 0abe 4D040000 		.4byte	0x44d
ARM GAS  /tmp/cciOmULZ.s 			page 71


 3087 0ac2 BC       		.byte	0xbc
 3088 0ac3 1A       		.uleb128 0x1a
 3089 0ac4 14070000 		.4byte	.LASF173
 3090 0ac8 0A       		.byte	0xa
 3091 0ac9 6A02     		.2byte	0x26a
 3092 0acb 4D040000 		.4byte	0x44d
 3093 0acf C4       		.byte	0xc4
 3094 0ad0 1A       		.uleb128 0x1a
 3095 0ad1 1D050000 		.4byte	.LASF174
 3096 0ad5 0A       		.byte	0xa
 3097 0ad6 6B02     		.2byte	0x26b
 3098 0ad8 2C000000 		.4byte	0x2c
 3099 0adc CC       		.byte	0xcc
 3100 0add 00       		.byte	0
 3101 0ade 08       		.uleb128 0x8
 3102 0adf B1080000 		.4byte	0x8b1
 3103 0ae3 EE0A0000 		.4byte	0xaee
 3104 0ae7 09       		.uleb128 0x9
 3105 0ae8 D4000000 		.4byte	0xd4
 3106 0aec 19       		.byte	0x19
 3107 0aed 00       		.byte	0
 3108 0aee 08       		.uleb128 0x8
 3109 0aef B1080000 		.4byte	0x8b1
 3110 0af3 FE0A0000 		.4byte	0xafe
 3111 0af7 09       		.uleb128 0x9
 3112 0af8 D4000000 		.4byte	0xd4
 3113 0afc 07       		.byte	0x7
 3114 0afd 00       		.byte	0
 3115 0afe 08       		.uleb128 0x8
 3116 0aff B1080000 		.4byte	0x8b1
 3117 0b03 0E0B0000 		.4byte	0xb0e
 3118 0b07 09       		.uleb128 0x9
 3119 0b08 D4000000 		.4byte	0xd4
 3120 0b0c 17       		.byte	0x17
 3121 0b0d 00       		.byte	0
 3122 0b0e 1D       		.uleb128 0x1d
 3123 0b0f F0       		.byte	0xf0
 3124 0b10 0A       		.byte	0xa
 3125 0b11 7002     		.2byte	0x270
 3126 0b13 320B0000 		.4byte	0xb32
 3127 0b17 1A       		.uleb128 0x1a
 3128 0b18 33040000 		.4byte	.LASF175
 3129 0b1c 0A       		.byte	0xa
 3130 0b1d 7302     		.2byte	0x273
 3131 0b1f 320B0000 		.4byte	0xb32
 3132 0b23 00       		.byte	0
 3133 0b24 1A       		.uleb128 0x1a
 3134 0b25 2F140000 		.4byte	.LASF176
 3135 0b29 0A       		.byte	0xa
 3136 0b2a 7402     		.2byte	0x274
 3137 0b2c 420B0000 		.4byte	0xb42
 3138 0b30 78       		.byte	0x78
 3139 0b31 00       		.byte	0
 3140 0b32 08       		.uleb128 0x8
 3141 0b33 20060000 		.4byte	0x620
 3142 0b37 420B0000 		.4byte	0xb42
 3143 0b3b 09       		.uleb128 0x9
ARM GAS  /tmp/cciOmULZ.s 			page 72


 3144 0b3c D4000000 		.4byte	0xd4
 3145 0b40 1D       		.byte	0x1d
 3146 0b41 00       		.byte	0
 3147 0b42 08       		.uleb128 0x8
 3148 0b43 25000000 		.4byte	0x25
 3149 0b47 520B0000 		.4byte	0xb52
 3150 0b4b 09       		.uleb128 0x9
 3151 0b4c D4000000 		.4byte	0xd4
 3152 0b50 1D       		.byte	0x1d
 3153 0b51 00       		.byte	0
 3154 0b52 1E       		.uleb128 0x1e
 3155 0b53 F0       		.byte	0xf0
 3156 0b54 0A       		.byte	0xa
 3157 0b55 5502     		.2byte	0x255
 3158 0b57 740B0000 		.4byte	0xb74
 3159 0b5b 1F       		.uleb128 0x1f
 3160 0b5c CC120000 		.4byte	.LASF125
 3161 0b60 0A       		.byte	0xa
 3162 0b61 6C02     		.2byte	0x26c
 3163 0b63 DD090000 		.4byte	0x9dd
 3164 0b67 1F       		.uleb128 0x1f
 3165 0b68 800E0000 		.4byte	.LASF177
 3166 0b6c 0A       		.byte	0xa
 3167 0b6d 7502     		.2byte	0x275
 3168 0b6f 0E0B0000 		.4byte	0xb0e
 3169 0b73 00       		.byte	0
 3170 0b74 08       		.uleb128 0x8
 3171 0b75 B1080000 		.4byte	0x8b1
 3172 0b79 840B0000 		.4byte	0xb84
 3173 0b7d 09       		.uleb128 0x9
 3174 0b7e D4000000 		.4byte	0xd4
 3175 0b82 18       		.byte	0x18
 3176 0b83 00       		.byte	0
 3177 0b84 20       		.uleb128 0x20
 3178 0b85 8F0B0000 		.4byte	0xb8f
 3179 0b89 18       		.uleb128 0x18
 3180 0b8a 6E070000 		.4byte	0x76e
 3181 0b8e 00       		.byte	0
 3182 0b8f 13       		.uleb128 0x13
 3183 0b90 04       		.byte	0x4
 3184 0b91 840B0000 		.4byte	0xb84
 3185 0b95 13       		.uleb128 0x13
 3186 0b96 04       		.byte	0x4
 3187 0b97 C1040000 		.4byte	0x4c1
 3188 0b9b 20       		.uleb128 0x20
 3189 0b9c A60B0000 		.4byte	0xba6
 3190 0ba0 18       		.uleb128 0x18
 3191 0ba1 2C000000 		.4byte	0x2c
 3192 0ba5 00       		.byte	0
 3193 0ba6 13       		.uleb128 0x13
 3194 0ba7 04       		.byte	0x4
 3195 0ba8 AC0B0000 		.4byte	0xbac
 3196 0bac 13       		.uleb128 0x13
 3197 0bad 04       		.byte	0x4
 3198 0bae 9B0B0000 		.4byte	0xb9b
 3199 0bb2 08       		.uleb128 0x8
 3200 0bb3 4B090000 		.4byte	0x94b
ARM GAS  /tmp/cciOmULZ.s 			page 73


 3201 0bb7 C20B0000 		.4byte	0xbc2
 3202 0bbb 09       		.uleb128 0x9
 3203 0bbc D4000000 		.4byte	0xd4
 3204 0bc0 02       		.byte	0x2
 3205 0bc1 00       		.byte	0
 3206 0bc2 0A       		.uleb128 0xa
 3207 0bc3 27040000 		.4byte	.LASF178
 3208 0bc7 0A       		.byte	0xa
 3209 0bc8 FD02     		.2byte	0x2fd
 3210 0bca 6E070000 		.4byte	0x76e
 3211 0bce 0A       		.uleb128 0xa
 3212 0bcf E30D0000 		.4byte	.LASF179
 3213 0bd3 0A       		.byte	0xa
 3214 0bd4 FE02     		.2byte	0x2fe
 3215 0bd6 74070000 		.4byte	0x774
 3216 0bda 0B       		.uleb128 0xb
 3217 0bdb DD050000 		.4byte	.LASF180
 3218 0bdf 0B       		.byte	0xb
 3219 0be0 5F       		.byte	0x5f
 3220 0be1 AB080000 		.4byte	0x8ab
 3221 0be5 0B       		.uleb128 0xb
 3222 0be6 21030000 		.4byte	.LASF181
 3223 0bea 0C       		.byte	0xc
 3224 0beb 8F       		.byte	0x8f
 3225 0bec F70B0000 		.4byte	0xbf7
 3226 0bf0 02       		.uleb128 0x2
 3227 0bf1 01       		.byte	0x1
 3228 0bf2 02       		.byte	0x2
 3229 0bf3 F6050000 		.4byte	.LASF182
 3230 0bf7 05       		.uleb128 0x5
 3231 0bf8 F00B0000 		.4byte	0xbf0
 3232 0bfc 21       		.uleb128 0x21
 3233 0bfd 970F0000 		.4byte	.LASF183
 3234 0c01 0C       		.byte	0xc
 3235 0c02 94       		.byte	0x94
 3236 0c03 C8000000 		.4byte	0xc8
 3237 0c07 05       		.uleb128 0x5
 3238 0c08 03       		.byte	0x3
 3239 0c09 00000000 		.4byte	cpu_irq_critical_section_counter
 3240 0c0d 21       		.uleb128 0x21
 3241 0c0e 40060000 		.4byte	.LASF184
 3242 0c12 0C       		.byte	0xc
 3243 0c13 95       		.byte	0x95
 3244 0c14 F70B0000 		.4byte	0xbf7
 3245 0c18 05       		.uleb128 0x5
 3246 0c19 03       		.byte	0x3
 3247 0c1a 00000000 		.4byte	cpu_irq_prev_interrupt_state
 3248 0c1e 02       		.uleb128 0x2
 3249 0c1f 04       		.byte	0x4
 3250 0c20 04       		.byte	0x4
 3251 0c21 FA030000 		.4byte	.LASF185
 3252 0c25 02       		.uleb128 0x2
 3253 0c26 08       		.byte	0x8
 3254 0c27 04       		.byte	0x4
 3255 0c28 58130000 		.4byte	.LASF186
 3256 0c2c 22       		.uleb128 0x22
 3257 0c2d 23120000 		.4byte	.LASF235
ARM GAS  /tmp/cciOmULZ.s 			page 74


 3258 0c31 01       		.byte	0x1
 3259 0c32 33000000 		.4byte	0x33
 3260 0c36 0E       		.byte	0xe
 3261 0c37 4B       		.byte	0x4b
 3262 0c38 B60C0000 		.4byte	0xcb6
 3263 0c3c 23       		.uleb128 0x23
 3264 0c3d 850D0000 		.4byte	.LASF187
 3265 0c41 00       		.byte	0
 3266 0c42 23       		.uleb128 0x23
 3267 0c43 630C0000 		.4byte	.LASF188
 3268 0c47 19       		.byte	0x19
 3269 0c48 23       		.uleb128 0x23
 3270 0c49 91000000 		.4byte	.LASF189
 3271 0c4d 1C       		.byte	0x1c
 3272 0c4e 23       		.uleb128 0x23
 3273 0c4f B7060000 		.4byte	.LASF190
 3274 0c53 12       		.byte	0x12
 3275 0c54 24       		.uleb128 0x24
 3276 0c55 ED000000 		.4byte	.LASF191
 3277 0c59 7F       		.sleb128 -1
 3278 0c5a 24       		.uleb128 0x24
 3279 0c5b 93100000 		.4byte	.LASF192
 3280 0c5f 7E       		.sleb128 -2
 3281 0c60 24       		.uleb128 0x24
 3282 0c61 EA060000 		.4byte	.LASF193
 3283 0c65 7D       		.sleb128 -3
 3284 0c66 24       		.uleb128 0x24
 3285 0c67 6D0F0000 		.4byte	.LASF194
 3286 0c6b 7C       		.sleb128 -4
 3287 0c6c 24       		.uleb128 0x24
 3288 0c6d C30C0000 		.4byte	.LASF195
 3289 0c71 7B       		.sleb128 -5
 3290 0c72 24       		.uleb128 0x24
 3291 0c73 50050000 		.4byte	.LASF196
 3292 0c77 7A       		.sleb128 -6
 3293 0c78 24       		.uleb128 0x24
 3294 0c79 8D0A0000 		.4byte	.LASF197
 3295 0c7d 79       		.sleb128 -7
 3296 0c7e 24       		.uleb128 0x24
 3297 0c7f A7060000 		.4byte	.LASF198
 3298 0c83 78       		.sleb128 -8
 3299 0c84 24       		.uleb128 0x24
 3300 0c85 BA040000 		.4byte	.LASF199
 3301 0c89 77       		.sleb128 -9
 3302 0c8a 24       		.uleb128 0x24
 3303 0c8b FA000000 		.4byte	.LASF200
 3304 0c8f 76       		.sleb128 -10
 3305 0c90 24       		.uleb128 0x24
 3306 0c91 1D000000 		.4byte	.LASF201
 3307 0c95 75       		.sleb128 -11
 3308 0c96 24       		.uleb128 0x24
 3309 0c97 B1110000 		.4byte	.LASF202
 3310 0c9b 74       		.sleb128 -12
 3311 0c9c 24       		.uleb128 0x24
 3312 0c9d B5100000 		.4byte	.LASF203
 3313 0ca1 73       		.sleb128 -13
 3314 0ca2 24       		.uleb128 0x24
ARM GAS  /tmp/cciOmULZ.s 			page 75


 3315 0ca3 A2080000 		.4byte	.LASF204
 3316 0ca7 72       		.sleb128 -14
 3317 0ca8 24       		.uleb128 0x24
 3318 0ca9 15060000 		.4byte	.LASF205
 3319 0cad 71       		.sleb128 -15
 3320 0cae 24       		.uleb128 0x24
 3321 0caf 0B140000 		.4byte	.LASF206
 3322 0cb3 807F     		.sleb128 -128
 3323 0cb5 00       		.byte	0
 3324 0cb6 0C       		.uleb128 0xc
 3325 0cb7 04       		.byte	0x4
 3326 0cb8 0D       		.byte	0xd
 3327 0cb9 3C       		.byte	0x3c
 3328 0cba FA0C0000 		.4byte	0xcfa
 3329 0cbe 25       		.uleb128 0x25
 3330 0cbf 494400   		.ascii	"ID\000"
 3331 0cc2 0D       		.byte	0xd
 3332 0cc3 3E       		.byte	0x3e
 3333 0cc4 BD000000 		.4byte	0xbd
 3334 0cc8 04       		.byte	0x4
 3335 0cc9 1D       		.byte	0x1d
 3336 0cca 03       		.byte	0x3
 3337 0ccb 00       		.byte	0
 3338 0ccc 25       		.uleb128 0x25
 3339 0ccd 52545200 		.ascii	"RTR\000"
 3340 0cd1 0D       		.byte	0xd
 3341 0cd2 40       		.byte	0x40
 3342 0cd3 BD000000 		.4byte	0xbd
 3343 0cd7 04       		.byte	0x4
 3344 0cd8 01       		.byte	0x1
 3345 0cd9 02       		.byte	0x2
 3346 0cda 00       		.byte	0
 3347 0cdb 25       		.uleb128 0x25
 3348 0cdc 58544400 		.ascii	"XTD\000"
 3349 0ce0 0D       		.byte	0xd
 3350 0ce1 42       		.byte	0x42
 3351 0ce2 BD000000 		.4byte	0xbd
 3352 0ce6 04       		.byte	0x4
 3353 0ce7 01       		.byte	0x1
 3354 0ce8 01       		.byte	0x1
 3355 0ce9 00       		.byte	0
 3356 0cea 25       		.uleb128 0x25
 3357 0ceb 45534900 		.ascii	"ESI\000"
 3358 0cef 0D       		.byte	0xd
 3359 0cf0 44       		.byte	0x44
 3360 0cf1 BD000000 		.4byte	0xbd
 3361 0cf5 04       		.byte	0x4
 3362 0cf6 01       		.byte	0x1
 3363 0cf7 00       		.byte	0
 3364 0cf8 00       		.byte	0
 3365 0cf9 00       		.byte	0
 3366 0cfa 0F       		.uleb128 0xf
 3367 0cfb 04       		.byte	0x4
 3368 0cfc 0D       		.byte	0xd
 3369 0cfd 3B       		.byte	0x3b
 3370 0cfe 190D0000 		.4byte	0xd19
 3371 0d02 26       		.uleb128 0x26
ARM GAS  /tmp/cciOmULZ.s 			page 76


 3372 0d03 62697400 		.ascii	"bit\000"
 3373 0d07 0D       		.byte	0xd
 3374 0d08 45       		.byte	0x45
 3375 0d09 B60C0000 		.4byte	0xcb6
 3376 0d0d 26       		.uleb128 0x26
 3377 0d0e 72656700 		.ascii	"reg\000"
 3378 0d12 0D       		.byte	0xd
 3379 0d13 47       		.byte	0x47
 3380 0d14 BD000000 		.4byte	0xbd
 3381 0d18 00       		.byte	0
 3382 0d19 04       		.uleb128 0x4
 3383 0d1a 63060000 		.4byte	.LASF207
 3384 0d1e 0D       		.byte	0xd
 3385 0d1f 48       		.byte	0x48
 3386 0d20 FA0C0000 		.4byte	0xcfa
 3387 0d24 05       		.uleb128 0x5
 3388 0d25 190D0000 		.4byte	0xd19
 3389 0d29 0C       		.uleb128 0xc
 3390 0d2a 04       		.byte	0x4
 3391 0d2b 0D       		.byte	0xd
 3392 0d2c 56       		.byte	0x56
 3393 0d2d 8C0D0000 		.4byte	0xd8c
 3394 0d31 27       		.uleb128 0x27
 3395 0d32 CA060000 		.4byte	.LASF208
 3396 0d36 0D       		.byte	0xd
 3397 0d37 58       		.byte	0x58
 3398 0d38 BD000000 		.4byte	0xbd
 3399 0d3c 04       		.byte	0x4
 3400 0d3d 10       		.byte	0x10
 3401 0d3e 10       		.byte	0x10
 3402 0d3f 00       		.byte	0
 3403 0d40 25       		.uleb128 0x25
 3404 0d41 444C4300 		.ascii	"DLC\000"
 3405 0d45 0D       		.byte	0xd
 3406 0d46 5A       		.byte	0x5a
 3407 0d47 BD000000 		.4byte	0xbd
 3408 0d4b 04       		.byte	0x4
 3409 0d4c 04       		.byte	0x4
 3410 0d4d 0C       		.byte	0xc
 3411 0d4e 00       		.byte	0
 3412 0d4f 25       		.uleb128 0x25
 3413 0d50 42525300 		.ascii	"BRS\000"
 3414 0d54 0D       		.byte	0xd
 3415 0d55 5C       		.byte	0x5c
 3416 0d56 BD000000 		.4byte	0xbd
 3417 0d5a 04       		.byte	0x4
 3418 0d5b 01       		.byte	0x1
 3419 0d5c 0B       		.byte	0xb
 3420 0d5d 00       		.byte	0
 3421 0d5e 25       		.uleb128 0x25
 3422 0d5f 45444C00 		.ascii	"EDL\000"
 3423 0d63 0D       		.byte	0xd
 3424 0d64 5E       		.byte	0x5e
 3425 0d65 BD000000 		.4byte	0xbd
 3426 0d69 04       		.byte	0x4
 3427 0d6a 01       		.byte	0x1
 3428 0d6b 0A       		.byte	0xa
ARM GAS  /tmp/cciOmULZ.s 			page 77


 3429 0d6c 00       		.byte	0
 3430 0d6d 27       		.uleb128 0x27
 3431 0d6e 39080000 		.4byte	.LASF209
 3432 0d72 0D       		.byte	0xd
 3433 0d73 62       		.byte	0x62
 3434 0d74 BD000000 		.4byte	0xbd
 3435 0d78 04       		.byte	0x4
 3436 0d79 07       		.byte	0x7
 3437 0d7a 01       		.byte	0x1
 3438 0d7b 00       		.byte	0
 3439 0d7c 27       		.uleb128 0x27
 3440 0d7d 46020000 		.4byte	.LASF210
 3441 0d81 0D       		.byte	0xd
 3442 0d82 64       		.byte	0x64
 3443 0d83 BD000000 		.4byte	0xbd
 3444 0d87 04       		.byte	0x4
 3445 0d88 01       		.byte	0x1
 3446 0d89 00       		.byte	0
 3447 0d8a 00       		.byte	0
 3448 0d8b 00       		.byte	0
 3449 0d8c 0F       		.uleb128 0xf
 3450 0d8d 04       		.byte	0x4
 3451 0d8e 0D       		.byte	0xd
 3452 0d8f 55       		.byte	0x55
 3453 0d90 AB0D0000 		.4byte	0xdab
 3454 0d94 26       		.uleb128 0x26
 3455 0d95 62697400 		.ascii	"bit\000"
 3456 0d99 0D       		.byte	0xd
 3457 0d9a 65       		.byte	0x65
 3458 0d9b 290D0000 		.4byte	0xd29
 3459 0d9f 26       		.uleb128 0x26
 3460 0da0 72656700 		.ascii	"reg\000"
 3461 0da4 0D       		.byte	0xd
 3462 0da5 67       		.byte	0x67
 3463 0da6 BD000000 		.4byte	0xbd
 3464 0daa 00       		.byte	0
 3465 0dab 04       		.uleb128 0x4
 3466 0dac 3E140000 		.4byte	.LASF211
 3467 0db0 0D       		.byte	0xd
 3468 0db1 68       		.byte	0x68
 3469 0db2 8C0D0000 		.4byte	0xd8c
 3470 0db6 05       		.uleb128 0x5
 3471 0db7 AB0D0000 		.4byte	0xdab
 3472 0dbb 11       		.uleb128 0x11
 3473 0dbc 94110000 		.4byte	.LASF212
 3474 0dc0 10       		.byte	0x10
 3475 0dc1 0D       		.byte	0xd
 3476 0dc2 7D       		.byte	0x7d
 3477 0dc3 EA0D0000 		.4byte	0xdea
 3478 0dc7 12       		.uleb128 0x12
 3479 0dc8 523000   		.ascii	"R0\000"
 3480 0dcb 0D       		.byte	0xd
 3481 0dcc 7E       		.byte	0x7e
 3482 0dcd 240D0000 		.4byte	0xd24
 3483 0dd1 00       		.byte	0
 3484 0dd2 12       		.uleb128 0x12
 3485 0dd3 523100   		.ascii	"R1\000"
ARM GAS  /tmp/cciOmULZ.s 			page 78


 3486 0dd6 0D       		.byte	0xd
 3487 0dd7 7F       		.byte	0x7f
 3488 0dd8 B60D0000 		.4byte	0xdb6
 3489 0ddc 04       		.byte	0x4
 3490 0ddd 0D       		.uleb128 0xd
 3491 0dde A30B0000 		.4byte	.LASF213
 3492 0de2 0D       		.byte	0xd
 3493 0de3 80       		.byte	0x80
 3494 0de4 EA0D0000 		.4byte	0xdea
 3495 0de8 08       		.byte	0x8
 3496 0de9 00       		.byte	0
 3497 0dea 08       		.uleb128 0x8
 3498 0deb 97000000 		.4byte	0x97
 3499 0def FA0D0000 		.4byte	0xdfa
 3500 0df3 09       		.uleb128 0x9
 3501 0df4 D4000000 		.4byte	0xd4
 3502 0df8 07       		.byte	0x7
 3503 0df9 00       		.byte	0
 3504 0dfa 11       		.uleb128 0x11
 3505 0dfb 3F0B0000 		.4byte	.LASF214
 3506 0dff 10       		.byte	0x10
 3507 0e00 0D       		.byte	0xd
 3508 0e01 86       		.byte	0x86
 3509 0e02 290E0000 		.4byte	0xe29
 3510 0e06 12       		.uleb128 0x12
 3511 0e07 523000   		.ascii	"R0\000"
 3512 0e0a 0D       		.byte	0xd
 3513 0e0b 87       		.byte	0x87
 3514 0e0c 240D0000 		.4byte	0xd24
 3515 0e10 00       		.byte	0
 3516 0e11 12       		.uleb128 0x12
 3517 0e12 523100   		.ascii	"R1\000"
 3518 0e15 0D       		.byte	0xd
 3519 0e16 88       		.byte	0x88
 3520 0e17 B60D0000 		.4byte	0xdb6
 3521 0e1b 04       		.byte	0x4
 3522 0e1c 0D       		.uleb128 0xd
 3523 0e1d A30B0000 		.4byte	.LASF213
 3524 0e21 0D       		.byte	0xd
 3525 0e22 89       		.byte	0x89
 3526 0e23 EA0D0000 		.4byte	0xdea
 3527 0e27 08       		.byte	0x8
 3528 0e28 00       		.byte	0
 3529 0e29 11       		.uleb128 0x11
 3530 0e2a F50B0000 		.4byte	.LASF215
 3531 0e2e 10       		.byte	0x10
 3532 0e2f 0D       		.byte	0xd
 3533 0e30 8F       		.byte	0x8f
 3534 0e31 580E0000 		.4byte	0xe58
 3535 0e35 12       		.uleb128 0x12
 3536 0e36 523000   		.ascii	"R0\000"
 3537 0e39 0D       		.byte	0xd
 3538 0e3a 90       		.byte	0x90
 3539 0e3b 240D0000 		.4byte	0xd24
 3540 0e3f 00       		.byte	0
 3541 0e40 12       		.uleb128 0x12
 3542 0e41 523100   		.ascii	"R1\000"
ARM GAS  /tmp/cciOmULZ.s 			page 79


 3543 0e44 0D       		.byte	0xd
 3544 0e45 91       		.byte	0x91
 3545 0e46 B60D0000 		.4byte	0xdb6
 3546 0e4a 04       		.byte	0x4
 3547 0e4b 0D       		.uleb128 0xd
 3548 0e4c A30B0000 		.4byte	.LASF213
 3549 0e50 0D       		.byte	0xd
 3550 0e51 92       		.byte	0x92
 3551 0e52 EA0D0000 		.4byte	0xdea
 3552 0e56 08       		.byte	0x8
 3553 0e57 00       		.byte	0
 3554 0e58 0C       		.uleb128 0xc
 3555 0e59 04       		.byte	0x4
 3556 0e5a 0D       		.byte	0xd
 3557 0e5b 97       		.byte	0x97
 3558 0e5c 8D0E0000 		.4byte	0xe8d
 3559 0e60 25       		.uleb128 0x25
 3560 0e61 494400   		.ascii	"ID\000"
 3561 0e64 0D       		.byte	0xd
 3562 0e65 99       		.byte	0x99
 3563 0e66 BD000000 		.4byte	0xbd
 3564 0e6a 04       		.byte	0x4
 3565 0e6b 1D       		.byte	0x1d
 3566 0e6c 03       		.byte	0x3
 3567 0e6d 00       		.byte	0
 3568 0e6e 25       		.uleb128 0x25
 3569 0e6f 52545200 		.ascii	"RTR\000"
 3570 0e73 0D       		.byte	0xd
 3571 0e74 9B       		.byte	0x9b
 3572 0e75 BD000000 		.4byte	0xbd
 3573 0e79 04       		.byte	0x4
 3574 0e7a 01       		.byte	0x1
 3575 0e7b 02       		.byte	0x2
 3576 0e7c 00       		.byte	0
 3577 0e7d 25       		.uleb128 0x25
 3578 0e7e 58544400 		.ascii	"XTD\000"
 3579 0e82 0D       		.byte	0xd
 3580 0e83 9D       		.byte	0x9d
 3581 0e84 BD000000 		.4byte	0xbd
 3582 0e88 04       		.byte	0x4
 3583 0e89 01       		.byte	0x1
 3584 0e8a 01       		.byte	0x1
 3585 0e8b 00       		.byte	0
 3586 0e8c 00       		.byte	0
 3587 0e8d 0F       		.uleb128 0xf
 3588 0e8e 04       		.byte	0x4
 3589 0e8f 0D       		.byte	0xd
 3590 0e90 96       		.byte	0x96
 3591 0e91 AC0E0000 		.4byte	0xeac
 3592 0e95 26       		.uleb128 0x26
 3593 0e96 62697400 		.ascii	"bit\000"
 3594 0e9a 0D       		.byte	0xd
 3595 0e9b A0       		.byte	0xa0
 3596 0e9c 580E0000 		.4byte	0xe58
 3597 0ea0 26       		.uleb128 0x26
 3598 0ea1 72656700 		.ascii	"reg\000"
 3599 0ea5 0D       		.byte	0xd
ARM GAS  /tmp/cciOmULZ.s 			page 80


 3600 0ea6 A2       		.byte	0xa2
 3601 0ea7 BD000000 		.4byte	0xbd
 3602 0eab 00       		.byte	0
 3603 0eac 04       		.uleb128 0x4
 3604 0ead 48010000 		.4byte	.LASF216
 3605 0eb1 0D       		.byte	0xd
 3606 0eb2 A3       		.byte	0xa3
 3607 0eb3 8D0E0000 		.4byte	0xe8d
 3608 0eb7 05       		.uleb128 0x5
 3609 0eb8 AC0E0000 		.4byte	0xeac
 3610 0ebc 0C       		.uleb128 0xc
 3611 0ebd 04       		.byte	0x4
 3612 0ebe 0D       		.byte	0xd
 3613 0ebf B4       		.byte	0xb4
 3614 0ec0 F10E0000 		.4byte	0xef1
 3615 0ec4 25       		.uleb128 0x25
 3616 0ec5 444C4300 		.ascii	"DLC\000"
 3617 0ec9 0D       		.byte	0xd
 3618 0eca B8       		.byte	0xb8
 3619 0ecb BD000000 		.4byte	0xbd
 3620 0ecf 04       		.byte	0x4
 3621 0ed0 04       		.byte	0x4
 3622 0ed1 0C       		.byte	0xc
 3623 0ed2 00       		.byte	0
 3624 0ed3 27       		.uleb128 0x27
 3625 0ed4 8D0B0000 		.4byte	.LASF217
 3626 0ed8 0D       		.byte	0xd
 3627 0ed9 BC       		.byte	0xbc
 3628 0eda BD000000 		.4byte	0xbd
 3629 0ede 04       		.byte	0x4
 3630 0edf 01       		.byte	0x1
 3631 0ee0 08       		.byte	0x8
 3632 0ee1 00       		.byte	0
 3633 0ee2 25       		.uleb128 0x25
 3634 0ee3 4D4D00   		.ascii	"MM\000"
 3635 0ee6 0D       		.byte	0xd
 3636 0ee7 BE       		.byte	0xbe
 3637 0ee8 BD000000 		.4byte	0xbd
 3638 0eec 04       		.byte	0x4
 3639 0eed 08       		.byte	0x8
 3640 0eee 00       		.byte	0
 3641 0eef 00       		.byte	0
 3642 0ef0 00       		.byte	0
 3643 0ef1 0F       		.uleb128 0xf
 3644 0ef2 04       		.byte	0x4
 3645 0ef3 0D       		.byte	0xd
 3646 0ef4 B3       		.byte	0xb3
 3647 0ef5 100F0000 		.4byte	0xf10
 3648 0ef9 26       		.uleb128 0x26
 3649 0efa 62697400 		.ascii	"bit\000"
 3650 0efe 0D       		.byte	0xd
 3651 0eff BF       		.byte	0xbf
 3652 0f00 BC0E0000 		.4byte	0xebc
 3653 0f04 26       		.uleb128 0x26
 3654 0f05 72656700 		.ascii	"reg\000"
 3655 0f09 0D       		.byte	0xd
 3656 0f0a C1       		.byte	0xc1
ARM GAS  /tmp/cciOmULZ.s 			page 81


 3657 0f0b BD000000 		.4byte	0xbd
 3658 0f0f 00       		.byte	0
 3659 0f10 04       		.uleb128 0x4
 3660 0f11 2A0E0000 		.4byte	.LASF218
 3661 0f15 0D       		.byte	0xd
 3662 0f16 C2       		.byte	0xc2
 3663 0f17 F10E0000 		.4byte	0xef1
 3664 0f1b 05       		.uleb128 0x5
 3665 0f1c 100F0000 		.4byte	0xf10
 3666 0f20 11       		.uleb128 0x11
 3667 0f21 40050000 		.4byte	.LASF219
 3668 0f25 10       		.byte	0x10
 3669 0f26 0D       		.byte	0xd
 3670 0f27 E2       		.byte	0xe2
 3671 0f28 4F0F0000 		.4byte	0xf4f
 3672 0f2c 12       		.uleb128 0x12
 3673 0f2d 543000   		.ascii	"T0\000"
 3674 0f30 0D       		.byte	0xd
 3675 0f31 E3       		.byte	0xe3
 3676 0f32 B70E0000 		.4byte	0xeb7
 3677 0f36 00       		.byte	0
 3678 0f37 12       		.uleb128 0x12
 3679 0f38 543100   		.ascii	"T1\000"
 3680 0f3b 0D       		.byte	0xd
 3681 0f3c E4       		.byte	0xe4
 3682 0f3d 1B0F0000 		.4byte	0xf1b
 3683 0f41 04       		.byte	0x4
 3684 0f42 0D       		.uleb128 0xd
 3685 0f43 A30B0000 		.4byte	.LASF213
 3686 0f47 0D       		.byte	0xd
 3687 0f48 E5       		.byte	0xe5
 3688 0f49 EA0D0000 		.4byte	0xdea
 3689 0f4d 08       		.byte	0x8
 3690 0f4e 00       		.byte	0
 3691 0f4f 0C       		.uleb128 0xc
 3692 0f50 04       		.byte	0x4
 3693 0f51 0D       		.byte	0xd
 3694 0f52 EA       		.byte	0xea
 3695 0f53 930F0000 		.4byte	0xf93
 3696 0f57 25       		.uleb128 0x25
 3697 0f58 494400   		.ascii	"ID\000"
 3698 0f5b 0D       		.byte	0xd
 3699 0f5c EC       		.byte	0xec
 3700 0f5d BD000000 		.4byte	0xbd
 3701 0f61 04       		.byte	0x4
 3702 0f62 1D       		.byte	0x1d
 3703 0f63 03       		.byte	0x3
 3704 0f64 00       		.byte	0
 3705 0f65 25       		.uleb128 0x25
 3706 0f66 52545200 		.ascii	"RTR\000"
 3707 0f6a 0D       		.byte	0xd
 3708 0f6b EE       		.byte	0xee
 3709 0f6c BD000000 		.4byte	0xbd
 3710 0f70 04       		.byte	0x4
 3711 0f71 01       		.byte	0x1
 3712 0f72 02       		.byte	0x2
 3713 0f73 00       		.byte	0
ARM GAS  /tmp/cciOmULZ.s 			page 82


 3714 0f74 25       		.uleb128 0x25
 3715 0f75 58544400 		.ascii	"XTD\000"
 3716 0f79 0D       		.byte	0xd
 3717 0f7a F0       		.byte	0xf0
 3718 0f7b BD000000 		.4byte	0xbd
 3719 0f7f 04       		.byte	0x4
 3720 0f80 01       		.byte	0x1
 3721 0f81 01       		.byte	0x1
 3722 0f82 00       		.byte	0
 3723 0f83 25       		.uleb128 0x25
 3724 0f84 45534900 		.ascii	"ESI\000"
 3725 0f88 0D       		.byte	0xd
 3726 0f89 F2       		.byte	0xf2
 3727 0f8a BD000000 		.4byte	0xbd
 3728 0f8e 04       		.byte	0x4
 3729 0f8f 01       		.byte	0x1
 3730 0f90 00       		.byte	0
 3731 0f91 00       		.byte	0
 3732 0f92 00       		.byte	0
 3733 0f93 0F       		.uleb128 0xf
 3734 0f94 04       		.byte	0x4
 3735 0f95 0D       		.byte	0xd
 3736 0f96 E9       		.byte	0xe9
 3737 0f97 B20F0000 		.4byte	0xfb2
 3738 0f9b 26       		.uleb128 0x26
 3739 0f9c 62697400 		.ascii	"bit\000"
 3740 0fa0 0D       		.byte	0xd
 3741 0fa1 F3       		.byte	0xf3
 3742 0fa2 4F0F0000 		.4byte	0xf4f
 3743 0fa6 26       		.uleb128 0x26
 3744 0fa7 72656700 		.ascii	"reg\000"
 3745 0fab 0D       		.byte	0xd
 3746 0fac F5       		.byte	0xf5
 3747 0fad BD000000 		.4byte	0xbd
 3748 0fb1 00       		.byte	0
 3749 0fb2 04       		.uleb128 0x4
 3750 0fb3 D0010000 		.4byte	.LASF220
 3751 0fb7 0D       		.byte	0xd
 3752 0fb8 F6       		.byte	0xf6
 3753 0fb9 930F0000 		.4byte	0xf93
 3754 0fbd 05       		.uleb128 0x5
 3755 0fbe B20F0000 		.4byte	0xfb2
 3756 0fc2 1D       		.uleb128 0x1d
 3757 0fc3 04       		.byte	0x4
 3758 0fc4 0D       		.byte	0xd
 3759 0fc5 0401     		.2byte	0x104
 3760 0fc7 2A100000 		.4byte	0x102a
 3761 0fcb 28       		.uleb128 0x28
 3762 0fcc E1090000 		.4byte	.LASF221
 3763 0fd0 0D       		.byte	0xd
 3764 0fd1 0601     		.2byte	0x106
 3765 0fd3 BD000000 		.4byte	0xbd
 3766 0fd7 04       		.byte	0x4
 3767 0fd8 10       		.byte	0x10
 3768 0fd9 10       		.byte	0x10
 3769 0fda 00       		.byte	0
 3770 0fdb 29       		.uleb128 0x29
ARM GAS  /tmp/cciOmULZ.s 			page 83


 3771 0fdc 444C4300 		.ascii	"DLC\000"
 3772 0fe0 0D       		.byte	0xd
 3773 0fe1 0801     		.2byte	0x108
 3774 0fe3 BD000000 		.4byte	0xbd
 3775 0fe7 04       		.byte	0x4
 3776 0fe8 04       		.byte	0x4
 3777 0fe9 0C       		.byte	0xc
 3778 0fea 00       		.byte	0
 3779 0feb 29       		.uleb128 0x29
 3780 0fec 42525300 		.ascii	"BRS\000"
 3781 0ff0 0D       		.byte	0xd
 3782 0ff1 0A01     		.2byte	0x10a
 3783 0ff3 BD000000 		.4byte	0xbd
 3784 0ff7 04       		.byte	0x4
 3785 0ff8 01       		.byte	0x1
 3786 0ff9 0B       		.byte	0xb
 3787 0ffa 00       		.byte	0
 3788 0ffb 29       		.uleb128 0x29
 3789 0ffc 45444C00 		.ascii	"EDL\000"
 3790 1000 0D       		.byte	0xd
 3791 1001 0C01     		.2byte	0x10c
 3792 1003 BD000000 		.4byte	0xbd
 3793 1007 04       		.byte	0x4
 3794 1008 01       		.byte	0x1
 3795 1009 0A       		.byte	0xa
 3796 100a 00       		.byte	0
 3797 100b 29       		.uleb128 0x29
 3798 100c 455400   		.ascii	"ET\000"
 3799 100f 0D       		.byte	0xd
 3800 1010 0E01     		.2byte	0x10e
 3801 1012 BD000000 		.4byte	0xbd
 3802 1016 04       		.byte	0x4
 3803 1017 02       		.byte	0x2
 3804 1018 08       		.byte	0x8
 3805 1019 00       		.byte	0
 3806 101a 29       		.uleb128 0x29
 3807 101b 4D4D00   		.ascii	"MM\000"
 3808 101e 0D       		.byte	0xd
 3809 101f 1001     		.2byte	0x110
 3810 1021 BD000000 		.4byte	0xbd
 3811 1025 04       		.byte	0x4
 3812 1026 08       		.byte	0x8
 3813 1027 00       		.byte	0
 3814 1028 00       		.byte	0
 3815 1029 00       		.byte	0
 3816 102a 1E       		.uleb128 0x1e
 3817 102b 04       		.byte	0x4
 3818 102c 0D       		.byte	0xd
 3819 102d 0301     		.2byte	0x103
 3820 102f 4C100000 		.4byte	0x104c
 3821 1033 2A       		.uleb128 0x2a
 3822 1034 62697400 		.ascii	"bit\000"
 3823 1038 0D       		.byte	0xd
 3824 1039 1101     		.2byte	0x111
 3825 103b C20F0000 		.4byte	0xfc2
 3826 103f 2A       		.uleb128 0x2a
 3827 1040 72656700 		.ascii	"reg\000"
ARM GAS  /tmp/cciOmULZ.s 			page 84


 3828 1044 0D       		.byte	0xd
 3829 1045 1301     		.2byte	0x113
 3830 1047 BD000000 		.4byte	0xbd
 3831 104b 00       		.byte	0
 3832 104c 0E       		.uleb128 0xe
 3833 104d 7C090000 		.4byte	.LASF222
 3834 1051 0D       		.byte	0xd
 3835 1052 1401     		.2byte	0x114
 3836 1054 2A100000 		.4byte	0x102a
 3837 1058 05       		.uleb128 0x5
 3838 1059 4C100000 		.4byte	0x104c
 3839 105d 1C       		.uleb128 0x1c
 3840 105e 7E0C0000 		.4byte	.LASF223
 3841 1062 08       		.byte	0x8
 3842 1063 0D       		.byte	0xd
 3843 1064 2C01     		.2byte	0x12c
 3844 1066 83100000 		.4byte	0x1083
 3845 106a 2B       		.uleb128 0x2b
 3846 106b 453000   		.ascii	"E0\000"
 3847 106e 0D       		.byte	0xd
 3848 106f 2D01     		.2byte	0x12d
 3849 1071 BD0F0000 		.4byte	0xfbd
 3850 1075 00       		.byte	0
 3851 1076 2B       		.uleb128 0x2b
 3852 1077 453100   		.ascii	"E1\000"
 3853 107a 0D       		.byte	0xd
 3854 107b 2E01     		.2byte	0x12e
 3855 107d 58100000 		.4byte	0x1058
 3856 1081 04       		.byte	0x4
 3857 1082 00       		.byte	0
 3858 1083 1D       		.uleb128 0x1d
 3859 1084 04       		.byte	0x4
 3860 1085 0D       		.byte	0xd
 3861 1086 3301     		.2byte	0x133
 3862 1088 CD100000 		.4byte	0x10cd
 3863 108c 28       		.uleb128 0x28
 3864 108d AB110000 		.4byte	.LASF224
 3865 1091 0D       		.byte	0xd
 3866 1092 3501     		.2byte	0x135
 3867 1094 BD000000 		.4byte	0xbd
 3868 1098 04       		.byte	0x4
 3869 1099 0B       		.byte	0xb
 3870 109a 15       		.byte	0x15
 3871 109b 00       		.byte	0
 3872 109c 28       		.uleb128 0x28
 3873 109d 08100000 		.4byte	.LASF225
 3874 10a1 0D       		.byte	0xd
 3875 10a2 3901     		.2byte	0x139
 3876 10a4 BD000000 		.4byte	0xbd
 3877 10a8 04       		.byte	0x4
 3878 10a9 0B       		.byte	0xb
 3879 10aa 05       		.byte	0x5
 3880 10ab 00       		.byte	0
 3881 10ac 28       		.uleb128 0x28
 3882 10ad 0E100000 		.4byte	.LASF226
 3883 10b1 0D       		.byte	0xd
 3884 10b2 3B01     		.2byte	0x13b
ARM GAS  /tmp/cciOmULZ.s 			page 85


 3885 10b4 BD000000 		.4byte	0xbd
 3886 10b8 04       		.byte	0x4
 3887 10b9 03       		.byte	0x3
 3888 10ba 02       		.byte	0x2
 3889 10bb 00       		.byte	0
 3890 10bc 29       		.uleb128 0x29
 3891 10bd 53465400 		.ascii	"SFT\000"
 3892 10c1 0D       		.byte	0xd
 3893 10c2 3D01     		.2byte	0x13d
 3894 10c4 BD000000 		.4byte	0xbd
 3895 10c8 04       		.byte	0x4
 3896 10c9 02       		.byte	0x2
 3897 10ca 00       		.byte	0
 3898 10cb 00       		.byte	0
 3899 10cc 00       		.byte	0
 3900 10cd 1E       		.uleb128 0x1e
 3901 10ce 04       		.byte	0x4
 3902 10cf 0D       		.byte	0xd
 3903 10d0 3201     		.2byte	0x132
 3904 10d2 EF100000 		.4byte	0x10ef
 3905 10d6 2A       		.uleb128 0x2a
 3906 10d7 62697400 		.ascii	"bit\000"
 3907 10db 0D       		.byte	0xd
 3908 10dc 3E01     		.2byte	0x13e
 3909 10de 83100000 		.4byte	0x1083
 3910 10e2 2A       		.uleb128 0x2a
 3911 10e3 72656700 		.ascii	"reg\000"
 3912 10e7 0D       		.byte	0xd
 3913 10e8 4001     		.2byte	0x140
 3914 10ea BD000000 		.4byte	0xbd
 3915 10ee 00       		.byte	0
 3916 10ef 0E       		.uleb128 0xe
 3917 10f0 A3010000 		.4byte	.LASF227
 3918 10f4 0D       		.byte	0xd
 3919 10f5 4101     		.2byte	0x141
 3920 10f7 CD100000 		.4byte	0x10cd
 3921 10fb 05       		.uleb128 0x5
 3922 10fc EF100000 		.4byte	0x10ef
 3923 1100 1C       		.uleb128 0x1c
 3924 1101 49080000 		.4byte	.LASF228
 3925 1105 04       		.byte	0x4
 3926 1106 0D       		.byte	0xd
 3927 1107 6001     		.2byte	0x160
 3928 1109 1A110000 		.4byte	0x111a
 3929 110d 2B       		.uleb128 0x2b
 3930 110e 533000   		.ascii	"S0\000"
 3931 1111 0D       		.byte	0xd
 3932 1112 6101     		.2byte	0x161
 3933 1114 FB100000 		.4byte	0x10fb
 3934 1118 00       		.byte	0
 3935 1119 00       		.byte	0
 3936 111a 1D       		.uleb128 0x1d
 3937 111b 04       		.byte	0x4
 3938 111c 0D       		.byte	0xd
 3939 111d 6601     		.2byte	0x166
 3940 111f 44110000 		.4byte	0x1144
 3941 1123 28       		.uleb128 0x28
ARM GAS  /tmp/cciOmULZ.s 			page 86


 3942 1124 CA040000 		.4byte	.LASF229
 3943 1128 0D       		.byte	0xd
 3944 1129 6801     		.2byte	0x168
 3945 112b BD000000 		.4byte	0xbd
 3946 112f 04       		.byte	0x4
 3947 1130 1D       		.byte	0x1d
 3948 1131 03       		.byte	0x3
 3949 1132 00       		.byte	0
 3950 1133 28       		.uleb128 0x28
 3951 1134 470E0000 		.4byte	.LASF230
 3952 1138 0D       		.byte	0xd
 3953 1139 6A01     		.2byte	0x16a
 3954 113b BD000000 		.4byte	0xbd
 3955 113f 04       		.byte	0x4
 3956 1140 03       		.byte	0x3
 3957 1141 00       		.byte	0
 3958 1142 00       		.byte	0
 3959 1143 00       		.byte	0
 3960 1144 1E       		.uleb128 0x1e
 3961 1145 04       		.byte	0x4
 3962 1146 0D       		.byte	0xd
 3963 1147 6501     		.2byte	0x165
 3964 1149 66110000 		.4byte	0x1166
 3965 114d 2A       		.uleb128 0x2a
 3966 114e 62697400 		.ascii	"bit\000"
 3967 1152 0D       		.byte	0xd
 3968 1153 6B01     		.2byte	0x16b
 3969 1155 1A110000 		.4byte	0x111a
 3970 1159 2A       		.uleb128 0x2a
 3971 115a 72656700 		.ascii	"reg\000"
 3972 115e 0D       		.byte	0xd
 3973 115f 6D01     		.2byte	0x16d
 3974 1161 BD000000 		.4byte	0xbd
 3975 1165 00       		.byte	0
 3976 1166 0E       		.uleb128 0xe
 3977 1167 54020000 		.4byte	.LASF231
 3978 116b 0D       		.byte	0xd
 3979 116c 6E01     		.2byte	0x16e
 3980 116e 44110000 		.4byte	0x1144
 3981 1172 05       		.uleb128 0x5
 3982 1173 66110000 		.4byte	0x1166
 3983 1177 1D       		.uleb128 0x1d
 3984 1178 04       		.byte	0x4
 3985 1179 0D       		.byte	0xd
 3986 117a 8101     		.2byte	0x181
 3987 117c A1110000 		.4byte	0x11a1
 3988 1180 28       		.uleb128 0x28
 3989 1181 FF0E0000 		.4byte	.LASF232
 3990 1185 0D       		.byte	0xd
 3991 1186 8301     		.2byte	0x183
 3992 1188 BD000000 		.4byte	0xbd
 3993 118c 04       		.byte	0x4
 3994 118d 1D       		.byte	0x1d
 3995 118e 03       		.byte	0x3
 3996 118f 00       		.byte	0
 3997 1190 29       		.uleb128 0x29
 3998 1191 45465400 		.ascii	"EFT\000"
ARM GAS  /tmp/cciOmULZ.s 			page 87


 3999 1195 0D       		.byte	0xd
 4000 1196 8701     		.2byte	0x187
 4001 1198 BD000000 		.4byte	0xbd
 4002 119c 04       		.byte	0x4
 4003 119d 02       		.byte	0x2
 4004 119e 00       		.byte	0
 4005 119f 00       		.byte	0
 4006 11a0 00       		.byte	0
 4007 11a1 1E       		.uleb128 0x1e
 4008 11a2 04       		.byte	0x4
 4009 11a3 0D       		.byte	0xd
 4010 11a4 8001     		.2byte	0x180
 4011 11a6 C3110000 		.4byte	0x11c3
 4012 11aa 2A       		.uleb128 0x2a
 4013 11ab 62697400 		.ascii	"bit\000"
 4014 11af 0D       		.byte	0xd
 4015 11b0 8801     		.2byte	0x188
 4016 11b2 77110000 		.4byte	0x1177
 4017 11b6 2A       		.uleb128 0x2a
 4018 11b7 72656700 		.ascii	"reg\000"
 4019 11bb 0D       		.byte	0xd
 4020 11bc 8A01     		.2byte	0x18a
 4021 11be BD000000 		.4byte	0xbd
 4022 11c2 00       		.byte	0
 4023 11c3 0E       		.uleb128 0xe
 4024 11c4 560B0000 		.4byte	.LASF233
 4025 11c8 0D       		.byte	0xd
 4026 11c9 8B01     		.2byte	0x18b
 4027 11cb A1110000 		.4byte	0x11a1
 4028 11cf 05       		.uleb128 0x5
 4029 11d0 C3110000 		.4byte	0x11c3
 4030 11d4 1C       		.uleb128 0x1c
 4031 11d5 B80F0000 		.4byte	.LASF234
 4032 11d9 08       		.byte	0x8
 4033 11da 0D       		.byte	0xd
 4034 11db 9D01     		.2byte	0x19d
 4035 11dd FA110000 		.4byte	0x11fa
 4036 11e1 2B       		.uleb128 0x2b
 4037 11e2 463000   		.ascii	"F0\000"
 4038 11e5 0D       		.byte	0xd
 4039 11e6 9E01     		.2byte	0x19e
 4040 11e8 72110000 		.4byte	0x1172
 4041 11ec 00       		.byte	0
 4042 11ed 2B       		.uleb128 0x2b
 4043 11ee 463100   		.ascii	"F1\000"
 4044 11f1 0D       		.byte	0xd
 4045 11f2 9F01     		.2byte	0x19f
 4046 11f4 CF110000 		.4byte	0x11cf
 4047 11f8 04       		.byte	0x4
 4048 11f9 00       		.byte	0
 4049 11fa 2C       		.uleb128 0x2c
 4050 11fb B8080000 		.4byte	.LASF236
 4051 11ff 01       		.byte	0x1
 4052 1200 45000000 		.4byte	0x45
 4053 1204 0D       		.byte	0xd
 4054 1205 F201     		.2byte	0x1f2
 4055 1207 24120000 		.4byte	0x1224
ARM GAS  /tmp/cciOmULZ.s 			page 88


 4056 120b 23       		.uleb128 0x23
 4057 120c F4040000 		.4byte	.LASF237
 4058 1210 00       		.byte	0
 4059 1211 23       		.uleb128 0x23
 4060 1212 E9070000 		.4byte	.LASF238
 4061 1216 02       		.byte	0x2
 4062 1217 23       		.uleb128 0x23
 4063 1218 E6080000 		.4byte	.LASF239
 4064 121c 04       		.byte	0x4
 4065 121d 23       		.uleb128 0x23
 4066 121e FD080000 		.4byte	.LASF240
 4067 1222 06       		.byte	0x6
 4068 1223 00       		.byte	0
 4069 1224 2C       		.uleb128 0x2c
 4070 1225 9B0A0000 		.4byte	.LASF241
 4071 1229 01       		.byte	0x1
 4072 122a 45000000 		.4byte	0x45
 4073 122e 0D       		.byte	0xd
 4074 122f 0102     		.2byte	0x201
 4075 1231 48120000 		.4byte	0x1248
 4076 1235 23       		.uleb128 0x23
 4077 1236 3F0A0000 		.4byte	.LASF242
 4078 123a 00       		.byte	0
 4079 123b 23       		.uleb128 0x23
 4080 123c 13100000 		.4byte	.LASF243
 4081 1240 01       		.byte	0x1
 4082 1241 23       		.uleb128 0x23
 4083 1242 F60D0000 		.4byte	.LASF244
 4084 1246 02       		.byte	0x2
 4085 1247 00       		.byte	0
 4086 1248 1C       		.uleb128 0x1c
 4087 1249 78040000 		.4byte	.LASF245
 4088 124d 04       		.byte	0x4
 4089 124e 0D       		.byte	0xd
 4090 124f 1302     		.2byte	0x213
 4091 1251 62120000 		.4byte	0x1262
 4092 1255 2B       		.uleb128 0x2b
 4093 1256 687700   		.ascii	"hw\000"
 4094 1259 0D       		.byte	0xd
 4095 125a 1602     		.2byte	0x216
 4096 125c 62120000 		.4byte	0x1262
 4097 1260 00       		.byte	0
 4098 1261 00       		.byte	0
 4099 1262 13       		.uleb128 0x13
 4100 1263 04       		.byte	0x4
 4101 1264 C5030000 		.4byte	0x3c5
 4102 1268 1C       		.uleb128 0x1c
 4103 1269 26050000 		.4byte	.LASF246
 4104 126d 20       		.byte	0x20
 4105 126e 0D       		.byte	0xd
 4106 126f 2102     		.2byte	0x221
 4107 1271 BB130000 		.4byte	0x13bb
 4108 1275 1A       		.uleb128 0x1a
 4109 1276 35090000 		.4byte	.LASF247
 4110 127a 0D       		.byte	0xd
 4111 127b 2302     		.2byte	0x223
 4112 127d F00B0000 		.4byte	0xbf0
ARM GAS  /tmp/cciOmULZ.s 			page 89


 4113 1281 00       		.byte	0
 4114 1282 1A       		.uleb128 0x1a
 4115 1283 050F0000 		.4byte	.LASF248
 4116 1287 0D       		.byte	0xd
 4117 1288 2502     		.2byte	0x225
 4118 128a 97000000 		.4byte	0x97
 4119 128e 01       		.byte	0x1
 4120 128f 1A       		.uleb128 0x1a
 4121 1290 C0070000 		.4byte	.LASF249
 4122 1294 0D       		.byte	0xd
 4123 1295 2702     		.2byte	0x227
 4124 1297 F00B0000 		.4byte	0xbf0
 4125 129b 02       		.byte	0x2
 4126 129c 1A       		.uleb128 0x1a
 4127 129d 62090000 		.4byte	.LASF250
 4128 12a1 0D       		.byte	0xd
 4129 12a2 2902     		.2byte	0x229
 4130 12a4 F00B0000 		.4byte	0xbf0
 4131 12a8 03       		.byte	0x3
 4132 12a9 1A       		.uleb128 0x1a
 4133 12aa CA080000 		.4byte	.LASF251
 4134 12ae 0D       		.byte	0xd
 4135 12af 2B02     		.2byte	0x22b
 4136 12b1 F00B0000 		.4byte	0xbf0
 4137 12b5 04       		.byte	0x4
 4138 12b6 1A       		.uleb128 0x1a
 4139 12b7 4A0C0000 		.4byte	.LASF252
 4140 12bb 0D       		.byte	0xd
 4141 12bc 2D02     		.2byte	0x22d
 4142 12be F00B0000 		.4byte	0xbf0
 4143 12c2 05       		.byte	0x5
 4144 12c3 1A       		.uleb128 0x1a
 4145 12c4 1C0C0000 		.4byte	.LASF253
 4146 12c8 0D       		.byte	0xd
 4147 12c9 2F02     		.2byte	0x22f
 4148 12cb F00B0000 		.4byte	0xbf0
 4149 12cf 06       		.byte	0x6
 4150 12d0 1A       		.uleb128 0x1a
 4151 12d1 F00C0000 		.4byte	.LASF254
 4152 12d5 0D       		.byte	0xd
 4153 12d6 3102     		.2byte	0x231
 4154 12d8 F00B0000 		.4byte	0xbf0
 4155 12dc 07       		.byte	0x7
 4156 12dd 1A       		.uleb128 0x1a
 4157 12de C3030000 		.4byte	.LASF255
 4158 12e2 0D       		.byte	0xd
 4159 12e3 3302     		.2byte	0x233
 4160 12e5 97000000 		.4byte	0x97
 4161 12e9 08       		.byte	0x8
 4162 12ea 1A       		.uleb128 0x1a
 4163 12eb 06060000 		.4byte	.LASF256
 4164 12ef 0D       		.byte	0xd
 4165 12f0 3502     		.2byte	0x235
 4166 12f2 A2000000 		.4byte	0xa2
 4167 12f6 0A       		.byte	0xa
 4168 12f7 1A       		.uleb128 0x1a
 4169 12f8 8F0D0000 		.4byte	.LASF257
ARM GAS  /tmp/cciOmULZ.s 			page 90


 4170 12fc 0D       		.byte	0xd
 4171 12fd 3702     		.2byte	0x237
 4172 12ff FA110000 		.4byte	0x11fa
 4173 1303 0C       		.byte	0xc
 4174 1304 1A       		.uleb128 0x1a
 4175 1305 C70D0000 		.4byte	.LASF258
 4176 1309 0D       		.byte	0xd
 4177 130a 3902     		.2byte	0x239
 4178 130c F00B0000 		.4byte	0xbf0
 4179 1310 0D       		.byte	0xd
 4180 1311 1A       		.uleb128 0x1a
 4181 1312 A8020000 		.4byte	.LASF259
 4182 1316 0D       		.byte	0xd
 4183 1317 3B02     		.2byte	0x23b
 4184 1319 F00B0000 		.4byte	0xbf0
 4185 131d 0E       		.byte	0xe
 4186 131e 1A       		.uleb128 0x1a
 4187 131f 0A020000 		.4byte	.LASF260
 4188 1323 0D       		.byte	0xd
 4189 1324 3D02     		.2byte	0x23d
 4190 1326 97000000 		.4byte	0x97
 4191 132a 0F       		.byte	0xf
 4192 132b 1A       		.uleb128 0x1a
 4193 132c 5B120000 		.4byte	.LASF261
 4194 1330 0D       		.byte	0xd
 4195 1331 3F02     		.2byte	0x23f
 4196 1333 24120000 		.4byte	0x1224
 4197 1337 10       		.byte	0x10
 4198 1338 1A       		.uleb128 0x1a
 4199 1339 B10E0000 		.4byte	.LASF262
 4200 133d 0D       		.byte	0xd
 4201 133e 4102     		.2byte	0x241
 4202 1340 24120000 		.4byte	0x1224
 4203 1344 11       		.byte	0x11
 4204 1345 1A       		.uleb128 0x1a
 4205 1346 79130000 		.4byte	.LASF263
 4206 134a 0D       		.byte	0xd
 4207 134b 4302     		.2byte	0x243
 4208 134d F00B0000 		.4byte	0xbf0
 4209 1351 12       		.byte	0x12
 4210 1352 1A       		.uleb128 0x1a
 4211 1353 85010000 		.4byte	.LASF264
 4212 1357 0D       		.byte	0xd
 4213 1358 4502     		.2byte	0x245
 4214 135a F00B0000 		.4byte	0xbf0
 4215 135e 13       		.byte	0x13
 4216 135f 1A       		.uleb128 0x1a
 4217 1360 97050000 		.4byte	.LASF265
 4218 1364 0D       		.byte	0xd
 4219 1365 4702     		.2byte	0x247
 4220 1367 BD000000 		.4byte	0xbd
 4221 136b 14       		.byte	0x14
 4222 136c 1A       		.uleb128 0x1a
 4223 136d 37070000 		.4byte	.LASF266
 4224 1371 0D       		.byte	0xd
 4225 1372 4902     		.2byte	0x249
 4226 1374 F00B0000 		.4byte	0xbf0
ARM GAS  /tmp/cciOmULZ.s 			page 91


 4227 1378 18       		.byte	0x18
 4228 1379 1A       		.uleb128 0x1a
 4229 137a 24010000 		.4byte	.LASF267
 4230 137e 0D       		.byte	0xd
 4231 137f 4B02     		.2byte	0x24b
 4232 1381 97000000 		.4byte	0x97
 4233 1385 19       		.byte	0x19
 4234 1386 1A       		.uleb128 0x1a
 4235 1387 05030000 		.4byte	.LASF268
 4236 138b 0D       		.byte	0xd
 4237 138c 4D02     		.2byte	0x24d
 4238 138e F00B0000 		.4byte	0xbf0
 4239 1392 1A       		.byte	0x1a
 4240 1393 1A       		.uleb128 0x1a
 4241 1394 31130000 		.4byte	.LASF269
 4242 1398 0D       		.byte	0xd
 4243 1399 4F02     		.2byte	0x24f
 4244 139b 97000000 		.4byte	0x97
 4245 139f 1B       		.byte	0x1b
 4246 13a0 1A       		.uleb128 0x1a
 4247 13a1 9A020000 		.4byte	.LASF270
 4248 13a5 0D       		.byte	0xd
 4249 13a6 5102     		.2byte	0x251
 4250 13a8 F00B0000 		.4byte	0xbf0
 4251 13ac 1C       		.byte	0x1c
 4252 13ad 1A       		.uleb128 0x1a
 4253 13ae 5E0D0000 		.4byte	.LASF271
 4254 13b2 0D       		.byte	0xd
 4255 13b3 5302     		.2byte	0x253
 4256 13b5 97000000 		.4byte	0x97
 4257 13b9 1D       		.byte	0x1d
 4258 13ba 00       		.byte	0
 4259 13bb 22       		.uleb128 0x22
 4260 13bc C3020000 		.4byte	.LASF272
 4261 13c0 01       		.byte	0x1
 4262 13c1 45000000 		.4byte	0x45
 4263 13c5 0F       		.byte	0xf
 4264 13c6 4F       		.byte	0x4f
 4265 13c7 F0130000 		.4byte	0x13f0
 4266 13cb 23       		.uleb128 0x23
 4267 13cc 250B0000 		.4byte	.LASF273
 4268 13d0 03       		.byte	0x3
 4269 13d1 23       		.uleb128 0x23
 4270 13d2 3D030000 		.4byte	.LASF274
 4271 13d6 04       		.byte	0x4
 4272 13d7 23       		.uleb128 0x23
 4273 13d8 D00C0000 		.4byte	.LASF275
 4274 13dc 05       		.byte	0x5
 4275 13dd 23       		.uleb128 0x23
 4276 13de 80110000 		.4byte	.LASF276
 4277 13e2 06       		.byte	0x6
 4278 13e3 23       		.uleb128 0x23
 4279 13e4 D7030000 		.4byte	.LASF277
 4280 13e8 07       		.byte	0x7
 4281 13e9 23       		.uleb128 0x23
 4282 13ea E5040000 		.4byte	.LASF278
 4283 13ee 08       		.byte	0x8
ARM GAS  /tmp/cciOmULZ.s 			page 92


 4284 13ef 00       		.byte	0
 4285 13f0 08       		.uleb128 0x8
 4286 13f1 BB0D0000 		.4byte	0xdbb
 4287 13f5 00140000 		.4byte	0x1400
 4288 13f9 09       		.uleb128 0x9
 4289 13fa D4000000 		.4byte	0xd4
 4290 13fe 0F       		.byte	0xf
 4291 13ff 00       		.byte	0
 4292 1400 21       		.uleb128 0x21
 4293 1401 CF070000 		.4byte	.LASF279
 4294 1405 01       		.byte	0x1
 4295 1406 43       		.byte	0x43
 4296 1407 F0130000 		.4byte	0x13f0
 4297 140b 05       		.uleb128 0x5
 4298 140c 03       		.byte	0x3
 4299 140d 00000000 		.4byte	mcan0_rx_buffer
 4300 1411 08       		.uleb128 0x8
 4301 1412 FA0D0000 		.4byte	0xdfa
 4302 1416 21140000 		.4byte	0x1421
 4303 141a 09       		.uleb128 0x9
 4304 141b D4000000 		.4byte	0xd4
 4305 141f 0F       		.byte	0xf
 4306 1420 00       		.byte	0
 4307 1421 21       		.uleb128 0x21
 4308 1422 D5040000 		.4byte	.LASF280
 4309 1426 01       		.byte	0x1
 4310 1427 45       		.byte	0x45
 4311 1428 11140000 		.4byte	0x1411
 4312 142c 05       		.uleb128 0x5
 4313 142d 03       		.byte	0x3
 4314 142e 00000000 		.4byte	mcan0_rx_fifo_0
 4315 1432 08       		.uleb128 0x8
 4316 1433 290E0000 		.4byte	0xe29
 4317 1437 42140000 		.4byte	0x1442
 4318 143b 09       		.uleb128 0x9
 4319 143c D4000000 		.4byte	0xd4
 4320 1440 0F       		.byte	0xf
 4321 1441 00       		.byte	0
 4322 1442 21       		.uleb128 0x21
 4323 1443 52030000 		.4byte	.LASF281
 4324 1447 01       		.byte	0x1
 4325 1448 47       		.byte	0x47
 4326 1449 32140000 		.4byte	0x1432
 4327 144d 05       		.uleb128 0x5
 4328 144e 03       		.byte	0x3
 4329 144f 00000000 		.4byte	mcan0_rx_fifo_1
 4330 1453 08       		.uleb128 0x8
 4331 1454 200F0000 		.4byte	0xf20
 4332 1458 63140000 		.4byte	0x1463
 4333 145c 09       		.uleb128 0x9
 4334 145d D4000000 		.4byte	0xd4
 4335 1461 07       		.byte	0x7
 4336 1462 00       		.byte	0
 4337 1463 21       		.uleb128 0x21
 4338 1464 B2130000 		.4byte	.LASF282
 4339 1468 01       		.byte	0x1
 4340 1469 49       		.byte	0x49
ARM GAS  /tmp/cciOmULZ.s 			page 93


 4341 146a 53140000 		.4byte	0x1453
 4342 146e 05       		.uleb128 0x5
 4343 146f 03       		.byte	0x3
 4344 1470 00000000 		.4byte	mcan0_tx_buffer
 4345 1474 08       		.uleb128 0x8
 4346 1475 5D100000 		.4byte	0x105d
 4347 1479 84140000 		.4byte	0x1484
 4348 147d 09       		.uleb128 0x9
 4349 147e D4000000 		.4byte	0xd4
 4350 1482 07       		.byte	0x7
 4351 1483 00       		.byte	0
 4352 1484 21       		.uleb128 0x21
 4353 1485 09000000 		.4byte	.LASF283
 4354 1489 01       		.byte	0x1
 4355 148a 4B       		.byte	0x4b
 4356 148b 74140000 		.4byte	0x1474
 4357 148f 05       		.uleb128 0x5
 4358 1490 03       		.byte	0x3
 4359 1491 00000000 		.4byte	mcan0_tx_event_fifo
 4360 1495 08       		.uleb128 0x8
 4361 1496 00110000 		.4byte	0x1100
 4362 149a A5140000 		.4byte	0x14a5
 4363 149e 09       		.uleb128 0x9
 4364 149f D4000000 		.4byte	0xd4
 4365 14a3 1F       		.byte	0x1f
 4366 14a4 00       		.byte	0
 4367 14a5 21       		.uleb128 0x21
 4368 14a6 FB060000 		.4byte	.LASF284
 4369 14aa 01       		.byte	0x1
 4370 14ab 4D       		.byte	0x4d
 4371 14ac 95140000 		.4byte	0x1495
 4372 14b0 05       		.uleb128 0x5
 4373 14b1 03       		.byte	0x3
 4374 14b2 00000000 		.4byte	mcan0_rx_standard_filter
 4375 14b6 08       		.uleb128 0x8
 4376 14b7 D4110000 		.4byte	0x11d4
 4377 14bb C6140000 		.4byte	0x14c6
 4378 14bf 09       		.uleb128 0x9
 4379 14c0 D4000000 		.4byte	0xd4
 4380 14c4 0F       		.byte	0xf
 4381 14c5 00       		.byte	0
 4382 14c6 21       		.uleb128 0x21
 4383 14c7 5E0A0000 		.4byte	.LASF285
 4384 14cb 01       		.byte	0x1
 4385 14cc 4F       		.byte	0x4f
 4386 14cd B6140000 		.4byte	0x14b6
 4387 14d1 05       		.uleb128 0x5
 4388 14d2 03       		.byte	0x3
 4389 14d3 00000000 		.4byte	mcan0_rx_extended_filter
 4390 14d7 21       		.uleb128 0x21
 4391 14d8 64050000 		.4byte	.LASF286
 4392 14dc 01       		.byte	0x1
 4393 14dd 52       		.byte	0x52
 4394 14de F0130000 		.4byte	0x13f0
 4395 14e2 05       		.uleb128 0x5
 4396 14e3 03       		.byte	0x3
 4397 14e4 00000000 		.4byte	mcan1_rx_buffer
ARM GAS  /tmp/cciOmULZ.s 			page 94


 4398 14e8 21       		.uleb128 0x21
 4399 14e9 00130000 		.4byte	.LASF287
 4400 14ed 01       		.byte	0x1
 4401 14ee 54       		.byte	0x54
 4402 14ef 11140000 		.4byte	0x1411
 4403 14f3 05       		.uleb128 0x5
 4404 14f4 03       		.byte	0x3
 4405 14f5 00000000 		.4byte	mcan1_rx_fifo_0
 4406 14f9 21       		.uleb128 0x21
 4407 14fa 10130000 		.4byte	.LASF288
 4408 14fe 01       		.byte	0x1
 4409 14ff 56       		.byte	0x56
 4410 1500 32140000 		.4byte	0x1432
 4411 1504 05       		.uleb128 0x5
 4412 1505 03       		.byte	0x3
 4413 1506 00000000 		.4byte	mcan1_rx_fifo_1
 4414 150a 21       		.uleb128 0x21
 4415 150b CF100000 		.4byte	.LASF289
 4416 150f 01       		.byte	0x1
 4417 1510 58       		.byte	0x58
 4418 1511 53140000 		.4byte	0x1453
 4419 1515 05       		.uleb128 0x5
 4420 1516 03       		.byte	0x3
 4421 1517 00000000 		.4byte	mcan1_tx_buffer
 4422 151b 21       		.uleb128 0x21
 4423 151c 56140000 		.4byte	.LASF290
 4424 1520 01       		.byte	0x1
 4425 1521 5A       		.byte	0x5a
 4426 1522 74140000 		.4byte	0x1474
 4427 1526 05       		.uleb128 0x5
 4428 1527 03       		.byte	0x3
 4429 1528 00000000 		.4byte	mcan1_tx_event_fifo
 4430 152c 21       		.uleb128 0x21
 4431 152d E60E0000 		.4byte	.LASF291
 4432 1531 01       		.byte	0x1
 4433 1532 5C       		.byte	0x5c
 4434 1533 95140000 		.4byte	0x1495
 4435 1537 05       		.uleb128 0x5
 4436 1538 03       		.byte	0x3
 4437 1539 00000000 		.4byte	mcan1_rx_standard_filter
 4438 153d 21       		.uleb128 0x21
 4439 153e FD090000 		.4byte	.LASF292
 4440 1542 01       		.byte	0x1
 4441 1543 5E       		.byte	0x5e
 4442 1544 B6140000 		.4byte	0x14b6
 4443 1548 05       		.uleb128 0x5
 4444 1549 03       		.byte	0x3
 4445 154a 00000000 		.4byte	mcan1_rx_extended_filter
 4446 154e 2D       		.uleb128 0x2d
 4447 154f 04120000 		.4byte	.LASF296
 4448 1553 01       		.byte	0x1
 4449 1554 8F02     		.2byte	0x28f
 4450 1556 2C0C0000 		.4byte	0xc2c
 4451 155a 00000000 		.4byte	.LFB211
 4452 155e 48000000 		.4byte	.LFE211-.LFB211
 4453 1562 01       		.uleb128 0x1
 4454 1563 9C       		.byte	0x9c
ARM GAS  /tmp/cciOmULZ.s 			page 95


 4455 1564 95150000 		.4byte	0x1595
 4456 1568 2E       		.uleb128 0x2e
 4457 1569 E6090000 		.4byte	.LASF293
 4458 156d 01       		.byte	0x1
 4459 156e 9002     		.2byte	0x290
 4460 1570 9B150000 		.4byte	0x159b
 4461 1574 00000000 		.4byte	.LLST29
 4462 1578 2F       		.uleb128 0x2f
 4463 1579 28080000 		.4byte	.LASF294
 4464 157d 01       		.byte	0x1
 4465 157e 9102     		.2byte	0x291
 4466 1580 A0150000 		.4byte	0x15a0
 4467 1584 01       		.uleb128 0x1
 4468 1585 51       		.byte	0x51
 4469 1586 2F       		.uleb128 0x2f
 4470 1587 3A040000 		.4byte	.LASF295
 4471 158b 01       		.byte	0x1
 4472 158c 9102     		.2byte	0x291
 4473 158e BD000000 		.4byte	0xbd
 4474 1592 01       		.uleb128 0x1
 4475 1593 52       		.byte	0x52
 4476 1594 00       		.byte	0
 4477 1595 13       		.uleb128 0x13
 4478 1596 04       		.byte	0x4
 4479 1597 48120000 		.4byte	0x1248
 4480 159b 06       		.uleb128 0x6
 4481 159c 95150000 		.4byte	0x1595
 4482 15a0 13       		.uleb128 0x13
 4483 15a1 04       		.byte	0x4
 4484 15a2 5D100000 		.4byte	0x105d
 4485 15a6 2D       		.uleb128 0x2d
 4486 15a7 97130000 		.4byte	.LASF297
 4487 15ab 01       		.byte	0x1
 4488 15ac 6F02     		.2byte	0x26f
 4489 15ae 2C0C0000 		.4byte	0xc2c
 4490 15b2 00000000 		.4byte	.LFB210
 4491 15b6 7C000000 		.4byte	.LFE210-.LFB210
 4492 15ba 01       		.uleb128 0x1
 4493 15bb 9C       		.byte	0x9c
 4494 15bc FF150000 		.4byte	0x15ff
 4495 15c0 2E       		.uleb128 0x2e
 4496 15c1 E6090000 		.4byte	.LASF293
 4497 15c5 01       		.byte	0x1
 4498 15c6 7002     		.2byte	0x270
 4499 15c8 9B150000 		.4byte	0x159b
 4500 15cc 21000000 		.4byte	.LLST25
 4501 15d0 2E       		.uleb128 0x2e
 4502 15d1 B5070000 		.4byte	.LASF298
 4503 15d5 01       		.byte	0x1
 4504 15d6 7102     		.2byte	0x271
 4505 15d8 FF150000 		.4byte	0x15ff
 4506 15dc 42000000 		.4byte	.LLST26
 4507 15e0 2E       		.uleb128 0x2e
 4508 15e1 3A040000 		.4byte	.LASF295
 4509 15e5 01       		.byte	0x1
 4510 15e6 7102     		.2byte	0x271
 4511 15e8 BD000000 		.4byte	0xbd
ARM GAS  /tmp/cciOmULZ.s 			page 96


 4512 15ec 88000000 		.4byte	.LLST27
 4513 15f0 30       		.uleb128 0x30
 4514 15f1 6900     		.ascii	"i\000"
 4515 15f3 01       		.byte	0x1
 4516 15f4 7302     		.2byte	0x273
 4517 15f6 BD000000 		.4byte	0xbd
 4518 15fa C2000000 		.4byte	.LLST28
 4519 15fe 00       		.byte	0
 4520 15ff 13       		.uleb128 0x13
 4521 1600 04       		.byte	0x4
 4522 1601 200F0000 		.4byte	0xf20
 4523 1605 2D       		.uleb128 0x2d
 4524 1606 3C000000 		.4byte	.LASF299
 4525 160a 01       		.byte	0x1
 4526 160b 5802     		.2byte	0x258
 4527 160d 2C0C0000 		.4byte	0xc2c
 4528 1611 00000000 		.4byte	.LFB209
 4529 1615 48000000 		.4byte	.LFE209-.LFB209
 4530 1619 01       		.uleb128 0x1
 4531 161a 9C       		.byte	0x9c
 4532 161b 50160000 		.4byte	0x1650
 4533 161f 2E       		.uleb128 0x2e
 4534 1620 E6090000 		.4byte	.LASF293
 4535 1624 01       		.byte	0x1
 4536 1625 5902     		.2byte	0x259
 4537 1627 9B150000 		.4byte	0x159b
 4538 162b 36010000 		.4byte	.LLST22
 4539 162f 2E       		.uleb128 0x2e
 4540 1630 EF130000 		.4byte	.LASF300
 4541 1634 01       		.byte	0x1
 4542 1635 5A02     		.2byte	0x25a
 4543 1637 50160000 		.4byte	0x1650
 4544 163b 7B010000 		.4byte	.LLST23
 4545 163f 2E       		.uleb128 0x2e
 4546 1640 3A040000 		.4byte	.LASF295
 4547 1644 01       		.byte	0x1
 4548 1645 5A02     		.2byte	0x25a
 4549 1647 BD000000 		.4byte	0xbd
 4550 164b CB010000 		.4byte	.LLST24
 4551 164f 00       		.byte	0
 4552 1650 13       		.uleb128 0x13
 4553 1651 04       		.byte	0x4
 4554 1652 290E0000 		.4byte	0xe29
 4555 1656 2D       		.uleb128 0x2d
 4556 1657 560E0000 		.4byte	.LASF301
 4557 165b 01       		.byte	0x1
 4558 165c 4102     		.2byte	0x241
 4559 165e 2C0C0000 		.4byte	0xc2c
 4560 1662 00000000 		.4byte	.LFB208
 4561 1666 48000000 		.4byte	.LFE208-.LFB208
 4562 166a 01       		.uleb128 0x1
 4563 166b 9C       		.byte	0x9c
 4564 166c A1160000 		.4byte	0x16a1
 4565 1670 2E       		.uleb128 0x2e
 4566 1671 E6090000 		.4byte	.LASF293
 4567 1675 01       		.byte	0x1
 4568 1676 4202     		.2byte	0x242
ARM GAS  /tmp/cciOmULZ.s 			page 97


 4569 1678 9B150000 		.4byte	0x159b
 4570 167c F7010000 		.4byte	.LLST19
 4571 1680 2E       		.uleb128 0x2e
 4572 1681 EF130000 		.4byte	.LASF300
 4573 1685 01       		.byte	0x1
 4574 1686 4302     		.2byte	0x243
 4575 1688 A1160000 		.4byte	0x16a1
 4576 168c 3C020000 		.4byte	.LLST20
 4577 1690 2E       		.uleb128 0x2e
 4578 1691 3A040000 		.4byte	.LASF295
 4579 1695 01       		.byte	0x1
 4580 1696 4302     		.2byte	0x243
 4581 1698 BD000000 		.4byte	0xbd
 4582 169c 8C020000 		.4byte	.LLST21
 4583 16a0 00       		.byte	0
 4584 16a1 13       		.uleb128 0x13
 4585 16a2 04       		.byte	0x4
 4586 16a3 FA0D0000 		.4byte	0xdfa
 4587 16a7 2D       		.uleb128 0x2d
 4588 16a8 9C0D0000 		.4byte	.LASF302
 4589 16ac 01       		.byte	0x1
 4590 16ad 2A02     		.2byte	0x22a
 4591 16af 2C0C0000 		.4byte	0xc2c
 4592 16b3 00000000 		.4byte	.LFB207
 4593 16b7 48000000 		.4byte	.LFE207-.LFB207
 4594 16bb 01       		.uleb128 0x1
 4595 16bc 9C       		.byte	0x9c
 4596 16bd F2160000 		.4byte	0x16f2
 4597 16c1 2E       		.uleb128 0x2e
 4598 16c2 E6090000 		.4byte	.LASF293
 4599 16c6 01       		.byte	0x1
 4600 16c7 2B02     		.2byte	0x22b
 4601 16c9 9B150000 		.4byte	0x159b
 4602 16cd B8020000 		.4byte	.LLST16
 4603 16d1 2E       		.uleb128 0x2e
 4604 16d2 EF130000 		.4byte	.LASF300
 4605 16d6 01       		.byte	0x1
 4606 16d7 2C02     		.2byte	0x22c
 4607 16d9 F2160000 		.4byte	0x16f2
 4608 16dd FD020000 		.4byte	.LLST17
 4609 16e1 2E       		.uleb128 0x2e
 4610 16e2 3A040000 		.4byte	.LASF295
 4611 16e6 01       		.byte	0x1
 4612 16e7 2C02     		.2byte	0x22c
 4613 16e9 BD000000 		.4byte	0xbd
 4614 16ed 4D030000 		.4byte	.LLST18
 4615 16f1 00       		.byte	0
 4616 16f2 13       		.uleb128 0x13
 4617 16f3 04       		.byte	0x4
 4618 16f4 BB0D0000 		.4byte	0xdbb
 4619 16f8 2D       		.uleb128 0x2d
 4620 16f9 A8050000 		.4byte	.LASF303
 4621 16fd 01       		.byte	0x1
 4622 16fe 1102     		.2byte	0x211
 4623 1700 2C0C0000 		.4byte	0xc2c
 4624 1704 00000000 		.4byte	.LFB206
 4625 1708 5C000000 		.4byte	.LFE206-.LFB206
ARM GAS  /tmp/cciOmULZ.s 			page 98


 4626 170c 01       		.uleb128 0x1
 4627 170d 9C       		.byte	0x9c
 4628 170e 41170000 		.4byte	0x1741
 4629 1712 2E       		.uleb128 0x2e
 4630 1713 E6090000 		.4byte	.LASF293
 4631 1717 01       		.byte	0x1
 4632 1718 1202     		.2byte	0x212
 4633 171a 9B150000 		.4byte	0x159b
 4634 171e 79030000 		.4byte	.LLST14
 4635 1722 2F       		.uleb128 0x2f
 4636 1723 FC050000 		.4byte	.LASF304
 4637 1727 01       		.byte	0x1
 4638 1728 1302     		.2byte	0x213
 4639 172a 41170000 		.4byte	0x1741
 4640 172e 01       		.uleb128 0x1
 4641 172f 51       		.byte	0x51
 4642 1730 2E       		.uleb128 0x2e
 4643 1731 3A040000 		.4byte	.LASF295
 4644 1735 01       		.byte	0x1
 4645 1736 1302     		.2byte	0x213
 4646 1738 BD000000 		.4byte	0xbd
 4647 173c 9A030000 		.4byte	.LLST15
 4648 1740 00       		.byte	0
 4649 1741 13       		.uleb128 0x13
 4650 1742 04       		.byte	0x4
 4651 1743 D4110000 		.4byte	0x11d4
 4652 1747 2D       		.uleb128 0x2d
 4653 1748 9A090000 		.4byte	.LASF305
 4654 174c 01       		.byte	0x1
 4655 174d FA01     		.2byte	0x1fa
 4656 174f 2C0C0000 		.4byte	0xc2c
 4657 1753 00000000 		.4byte	.LFB205
 4658 1757 3C000000 		.4byte	.LFE205-.LFB205
 4659 175b 01       		.uleb128 0x1
 4660 175c 9C       		.byte	0x9c
 4661 175d 90170000 		.4byte	0x1790
 4662 1761 2E       		.uleb128 0x2e
 4663 1762 E6090000 		.4byte	.LASF293
 4664 1766 01       		.byte	0x1
 4665 1767 FB01     		.2byte	0x1fb
 4666 1769 9B150000 		.4byte	0x159b
 4667 176d D4030000 		.4byte	.LLST12
 4668 1771 2E       		.uleb128 0x2e
 4669 1772 FB0A0000 		.4byte	.LASF306
 4670 1776 01       		.byte	0x1
 4671 1777 FC01     		.2byte	0x1fc
 4672 1779 90170000 		.4byte	0x1790
 4673 177d F5030000 		.4byte	.LLST13
 4674 1781 2F       		.uleb128 0x2f
 4675 1782 3A040000 		.4byte	.LASF295
 4676 1786 01       		.byte	0x1
 4677 1787 FC01     		.2byte	0x1fc
 4678 1789 BD000000 		.4byte	0xbd
 4679 178d 01       		.uleb128 0x1
 4680 178e 52       		.byte	0x52
 4681 178f 00       		.byte	0
 4682 1790 13       		.uleb128 0x13
ARM GAS  /tmp/cciOmULZ.s 			page 99


 4683 1791 04       		.byte	0x4
 4684 1792 00110000 		.4byte	0x1100
 4685 1796 31       		.uleb128 0x31
 4686 1797 AC0C0000 		.4byte	.LASF307
 4687 179b 01       		.byte	0x1
 4688 179c EC01     		.2byte	0x1ec
 4689 179e 00000000 		.4byte	.LFB204
 4690 17a2 0C000000 		.4byte	.LFE204-.LFB204
 4691 17a6 01       		.uleb128 0x1
 4692 17a7 9C       		.byte	0x9c
 4693 17a8 BB170000 		.4byte	0x17bb
 4694 17ac 2F       		.uleb128 0x2f
 4695 17ad E6090000 		.4byte	.LASF293
 4696 17b1 01       		.byte	0x1
 4697 17b2 EC01     		.2byte	0x1ec
 4698 17b4 9B150000 		.4byte	0x159b
 4699 17b8 01       		.uleb128 0x1
 4700 17b9 50       		.byte	0x50
 4701 17ba 00       		.byte	0
 4702 17bb 31       		.uleb128 0x31
 4703 17bc B6120000 		.4byte	.LASF308
 4704 17c0 01       		.byte	0x1
 4705 17c1 DB01     		.2byte	0x1db
 4706 17c3 00000000 		.4byte	.LFB203
 4707 17c7 2A000000 		.4byte	.LFE203-.LFB203
 4708 17cb 01       		.uleb128 0x1
 4709 17cc 9C       		.byte	0x9c
 4710 17cd E0170000 		.4byte	0x17e0
 4711 17d1 2F       		.uleb128 0x2f
 4712 17d2 E6090000 		.4byte	.LASF293
 4713 17d6 01       		.byte	0x1
 4714 17d7 DB01     		.2byte	0x1db
 4715 17d9 9B150000 		.4byte	0x159b
 4716 17dd 01       		.uleb128 0x1
 4717 17de 50       		.byte	0x50
 4718 17df 00       		.byte	0
 4719 17e0 31       		.uleb128 0x31
 4720 17e1 24020000 		.4byte	.LASF309
 4721 17e5 01       		.byte	0x1
 4722 17e6 CC01     		.2byte	0x1cc
 4723 17e8 00000000 		.4byte	.LFB202
 4724 17ec 1A000000 		.4byte	.LFE202-.LFB202
 4725 17f0 01       		.uleb128 0x1
 4726 17f1 9C       		.byte	0x9c
 4727 17f2 17180000 		.4byte	0x1817
 4728 17f6 2E       		.uleb128 0x2e
 4729 17f7 E6090000 		.4byte	.LASF293
 4730 17fb 01       		.byte	0x1
 4731 17fc CC01     		.2byte	0x1cc
 4732 17fe 9B150000 		.4byte	0x159b
 4733 1802 2F040000 		.4byte	.LLST11
 4734 1806 32       		.uleb128 0x32
 4735 1807 08000000 		.4byte	.LVL33
 4736 180b 2E1B0000 		.4byte	0x1b2e
 4737 180f 33       		.uleb128 0x33
 4738 1810 01       		.uleb128 0x1
 4739 1811 50       		.byte	0x50
ARM GAS  /tmp/cciOmULZ.s 			page 100


 4740 1812 02       		.uleb128 0x2
 4741 1813 74       		.byte	0x74
 4742 1814 00       		.sleb128 0
 4743 1815 00       		.byte	0
 4744 1816 00       		.byte	0
 4745 1817 31       		.uleb128 0x31
 4746 1818 460F0000 		.4byte	.LASF310
 4747 181c 01       		.byte	0x1
 4748 181d BD01     		.2byte	0x1bd
 4749 181f 00000000 		.4byte	.LFB201
 4750 1823 18000000 		.4byte	.LFE201-.LFB201
 4751 1827 01       		.uleb128 0x1
 4752 1828 9C       		.byte	0x9c
 4753 1829 3C180000 		.4byte	0x183c
 4754 182d 2F       		.uleb128 0x2f
 4755 182e E6090000 		.4byte	.LASF293
 4756 1832 01       		.byte	0x1
 4757 1833 BD01     		.2byte	0x1bd
 4758 1835 9B150000 		.4byte	0x159b
 4759 1839 01       		.uleb128 0x1
 4760 183a 50       		.byte	0x50
 4761 183b 00       		.byte	0
 4762 183c 31       		.uleb128 0x31
 4763 183d 67010000 		.4byte	.LASF311
 4764 1841 01       		.byte	0x1
 4765 1842 B201     		.2byte	0x1b2
 4766 1844 00000000 		.4byte	.LFB200
 4767 1848 0C000000 		.4byte	.LFE200-.LFB200
 4768 184c 01       		.uleb128 0x1
 4769 184d 9C       		.byte	0x9c
 4770 184e 61180000 		.4byte	0x1861
 4771 1852 2F       		.uleb128 0x2f
 4772 1853 E6090000 		.4byte	.LASF293
 4773 1857 01       		.byte	0x1
 4774 1858 B201     		.2byte	0x1b2
 4775 185a 9B150000 		.4byte	0x159b
 4776 185e 01       		.uleb128 0x1
 4777 185f 50       		.byte	0x50
 4778 1860 00       		.byte	0
 4779 1861 31       		.uleb128 0x31
 4780 1862 D2130000 		.4byte	.LASF312
 4781 1866 01       		.byte	0x1
 4782 1867 A201     		.2byte	0x1a2
 4783 1869 00000000 		.4byte	.LFB199
 4784 186d 22000000 		.4byte	.LFE199-.LFB199
 4785 1871 01       		.uleb128 0x1
 4786 1872 9C       		.byte	0x9c
 4787 1873 86180000 		.4byte	0x1886
 4788 1877 2F       		.uleb128 0x2f
 4789 1878 E6090000 		.4byte	.LASF293
 4790 187c 01       		.byte	0x1
 4791 187d A201     		.2byte	0x1a2
 4792 187f 9B150000 		.4byte	0x159b
 4793 1883 01       		.uleb128 0x1
 4794 1884 50       		.byte	0x50
 4795 1885 00       		.byte	0
 4796 1886 31       		.uleb128 0x31
ARM GAS  /tmp/cciOmULZ.s 			page 101


 4797 1887 40040000 		.4byte	.LASF313
 4798 188b 01       		.byte	0x1
 4799 188c 9601     		.2byte	0x196
 4800 188e 00000000 		.4byte	.LFB198
 4801 1892 0C000000 		.4byte	.LFE198-.LFB198
 4802 1896 01       		.uleb128 0x1
 4803 1897 9C       		.byte	0x9c
 4804 1898 AB180000 		.4byte	0x18ab
 4805 189c 2F       		.uleb128 0x2f
 4806 189d E6090000 		.4byte	.LASF293
 4807 18a1 01       		.byte	0x1
 4808 18a2 9701     		.2byte	0x197
 4809 18a4 9B150000 		.4byte	0x159b
 4810 18a8 01       		.uleb128 0x1
 4811 18a9 50       		.byte	0x50
 4812 18aa 00       		.byte	0
 4813 18ab 31       		.uleb128 0x31
 4814 18ac DE110000 		.4byte	.LASF314
 4815 18b0 01       		.byte	0x1
 4816 18b1 8501     		.2byte	0x185
 4817 18b3 00000000 		.4byte	.LFB197
 4818 18b7 22000000 		.4byte	.LFE197-.LFB197
 4819 18bb 01       		.uleb128 0x1
 4820 18bc 9C       		.byte	0x9c
 4821 18bd D0180000 		.4byte	0x18d0
 4822 18c1 2F       		.uleb128 0x2f
 4823 18c2 E6090000 		.4byte	.LASF293
 4824 18c6 01       		.byte	0x1
 4825 18c7 8601     		.2byte	0x186
 4826 18c9 9B150000 		.4byte	0x159b
 4827 18cd 01       		.uleb128 0x1
 4828 18ce 50       		.byte	0x50
 4829 18cf 00       		.byte	0
 4830 18d0 31       		.uleb128 0x31
 4831 18d1 070D0000 		.4byte	.LASF315
 4832 18d5 01       		.byte	0x1
 4833 18d6 7A01     		.2byte	0x17a
 4834 18d8 00000000 		.4byte	.LFB196
 4835 18dc 0A000000 		.4byte	.LFE196-.LFB196
 4836 18e0 01       		.uleb128 0x1
 4837 18e1 9C       		.byte	0x9c
 4838 18e2 F5180000 		.4byte	0x18f5
 4839 18e6 2F       		.uleb128 0x2f
 4840 18e7 E6090000 		.4byte	.LASF293
 4841 18eb 01       		.byte	0x1
 4842 18ec 7A01     		.2byte	0x17a
 4843 18ee 9B150000 		.4byte	0x159b
 4844 18f2 01       		.uleb128 0x1
 4845 18f3 50       		.byte	0x50
 4846 18f4 00       		.byte	0
 4847 18f5 31       		.uleb128 0x31
 4848 18f6 7B060000 		.4byte	.LASF316
 4849 18fa 01       		.byte	0x1
 4850 18fb 6901     		.2byte	0x169
 4851 18fd 00000000 		.4byte	.LFB195
 4852 1901 2A000000 		.4byte	.LFE195-.LFB195
 4853 1905 01       		.uleb128 0x1
ARM GAS  /tmp/cciOmULZ.s 			page 102


 4854 1906 9C       		.byte	0x9c
 4855 1907 1A190000 		.4byte	0x191a
 4856 190b 2F       		.uleb128 0x2f
 4857 190c E6090000 		.4byte	.LASF293
 4858 1910 01       		.byte	0x1
 4859 1911 6901     		.2byte	0x169
 4860 1913 9B150000 		.4byte	0x159b
 4861 1917 01       		.uleb128 0x1
 4862 1918 50       		.byte	0x50
 4863 1919 00       		.byte	0
 4864 191a 31       		.uleb128 0x31
 4865 191b 100B0000 		.4byte	.LASF317
 4866 191f 01       		.byte	0x1
 4867 1920 5C01     		.2byte	0x15c
 4868 1922 00000000 		.4byte	.LFB194
 4869 1926 12000000 		.4byte	.LFE194-.LFB194
 4870 192a 01       		.uleb128 0x1
 4871 192b 9C       		.byte	0x9c
 4872 192c 3F190000 		.4byte	0x193f
 4873 1930 2F       		.uleb128 0x2f
 4874 1931 E6090000 		.4byte	.LASF293
 4875 1935 01       		.byte	0x1
 4876 1936 5C01     		.2byte	0x15c
 4877 1938 9B150000 		.4byte	0x159b
 4878 193c 01       		.uleb128 0x1
 4879 193d 50       		.byte	0x50
 4880 193e 00       		.byte	0
 4881 193f 31       		.uleb128 0x31
 4882 1940 14090000 		.4byte	.LASF318
 4883 1944 01       		.byte	0x1
 4884 1945 4F01     		.2byte	0x14f
 4885 1947 00000000 		.4byte	.LFB193
 4886 194b 12000000 		.4byte	.LFE193-.LFB193
 4887 194f 01       		.uleb128 0x1
 4888 1950 9C       		.byte	0x9c
 4889 1951 64190000 		.4byte	0x1964
 4890 1955 2F       		.uleb128 0x2f
 4891 1956 E6090000 		.4byte	.LASF293
 4892 195a 01       		.byte	0x1
 4893 195b 4F01     		.2byte	0x14f
 4894 195d 9B150000 		.4byte	0x159b
 4895 1961 01       		.uleb128 0x1
 4896 1962 50       		.byte	0x50
 4897 1963 00       		.byte	0
 4898 1964 31       		.uleb128 0x31
 4899 1965 490D0000 		.4byte	.LASF319
 4900 1969 01       		.byte	0x1
 4901 196a 3901     		.2byte	0x139
 4902 196c 00000000 		.4byte	.LFB192
 4903 1970 2C000000 		.4byte	.LFE192-.LFB192
 4904 1974 01       		.uleb128 0x1
 4905 1975 9C       		.byte	0x9c
 4906 1976 DB190000 		.4byte	0x19db
 4907 197a 34       		.uleb128 0x34
 4908 197b 687700   		.ascii	"hw\000"
 4909 197e 01       		.byte	0x1
 4910 197f 3901     		.2byte	0x139
ARM GAS  /tmp/cciOmULZ.s 			page 103


 4911 1981 62120000 		.4byte	0x1262
 4912 1985 01       		.uleb128 0x1
 4913 1986 50       		.byte	0x50
 4914 1987 2E       		.uleb128 0x2e
 4915 1988 D8000000 		.4byte	.LASF320
 4916 198c 01       		.byte	0x1
 4917 198d 3901     		.2byte	0x139
 4918 198f BD000000 		.4byte	0xbd
 4919 1993 4D040000 		.4byte	.LLST9
 4920 1997 35       		.uleb128 0x35
 4921 1998 A9000000 		.4byte	.LASF326
 4922 199c 01       		.byte	0x1
 4923 199d 3B01     		.2byte	0x13b
 4924 199f BD000000 		.4byte	0xbd
 4925 19a3 36       		.uleb128 0x36
 4926 19a4 8F060000 		.4byte	.LASF321
 4927 19a8 01       		.byte	0x1
 4928 19a9 3C01     		.2byte	0x13c
 4929 19ab BD000000 		.4byte	0xbd
 4930 19af 6E040000 		.4byte	.LLST10
 4931 19b3 37       		.uleb128 0x37
 4932 19b4 CE020000 		.4byte	.LASF322
 4933 19b8 01       		.byte	0x1
 4934 19b9 3D01     		.2byte	0x13d
 4935 19bb BD000000 		.4byte	0xbd
 4936 19bf 03       		.byte	0x3
 4937 19c0 37       		.uleb128 0x37
 4938 19c1 D00B0000 		.4byte	.LASF323
 4939 19c5 01       		.byte	0x1
 4940 19c6 3D01     		.2byte	0x13d
 4941 19c8 BD000000 		.4byte	0xbd
 4942 19cc 09       		.byte	0x9
 4943 19cd 37       		.uleb128 0x37
 4944 19ce 7C030000 		.4byte	.LASF324
 4945 19d2 01       		.byte	0x1
 4946 19d3 3D01     		.2byte	0x13d
 4947 19d5 BD000000 		.4byte	0xbd
 4948 19d9 03       		.byte	0x3
 4949 19da 00       		.byte	0
 4950 19db 31       		.uleb128 0x31
 4951 19dc F8010000 		.4byte	.LASF325
 4952 19e0 01       		.byte	0x1
 4953 19e1 2301     		.2byte	0x123
 4954 19e3 00000000 		.4byte	.LFB191
 4955 19e7 2C000000 		.4byte	.LFE191-.LFB191
 4956 19eb 01       		.uleb128 0x1
 4957 19ec 9C       		.byte	0x9c
 4958 19ed 521A0000 		.4byte	0x1a52
 4959 19f1 34       		.uleb128 0x34
 4960 19f2 687700   		.ascii	"hw\000"
 4961 19f5 01       		.byte	0x1
 4962 19f6 2301     		.2byte	0x123
 4963 19f8 62120000 		.4byte	0x1262
 4964 19fc 01       		.uleb128 0x1
 4965 19fd 50       		.byte	0x50
 4966 19fe 2E       		.uleb128 0x2e
 4967 19ff D8000000 		.4byte	.LASF320
ARM GAS  /tmp/cciOmULZ.s 			page 104


 4968 1a03 01       		.byte	0x1
 4969 1a04 2301     		.2byte	0x123
 4970 1a06 BD000000 		.4byte	0xbd
 4971 1a0a B9040000 		.4byte	.LLST7
 4972 1a0e 35       		.uleb128 0x35
 4973 1a0f C4050000 		.4byte	.LASF327
 4974 1a13 01       		.byte	0x1
 4975 1a14 2501     		.2byte	0x125
 4976 1a16 BD000000 		.4byte	0xbd
 4977 1a1a 36       		.uleb128 0x36
 4978 1a1b 160A0000 		.4byte	.LASF328
 4979 1a1f 01       		.byte	0x1
 4980 1a20 2601     		.2byte	0x126
 4981 1a22 BD000000 		.4byte	0xbd
 4982 1a26 DA040000 		.4byte	.LLST8
 4983 1a2a 37       		.uleb128 0x37
 4984 1a2b 2B060000 		.4byte	.LASF329
 4985 1a2f 01       		.byte	0x1
 4986 1a30 2701     		.2byte	0x127
 4987 1a32 BD000000 		.4byte	0xbd
 4988 1a36 03       		.byte	0x3
 4989 1a37 37       		.uleb128 0x37
 4990 1a38 6E080000 		.4byte	.LASF330
 4991 1a3c 01       		.byte	0x1
 4992 1a3d 2701     		.2byte	0x127
 4993 1a3f BD000000 		.4byte	0xbd
 4994 1a43 0A       		.byte	0xa
 4995 1a44 37       		.uleb128 0x37
 4996 1a45 57000000 		.4byte	.LASF331
 4997 1a49 01       		.byte	0x1
 4998 1a4a 2701     		.2byte	0x127
 4999 1a4c BD000000 		.4byte	0xbd
 5000 1a50 07       		.byte	0x7
 5001 1a51 00       		.byte	0
 5002 1a52 38       		.uleb128 0x38
 5003 1a53 6E000000 		.4byte	.LASF332
 5004 1a57 01       		.byte	0x1
 5005 1a58 FA       		.byte	0xfa
 5006 1a59 00000000 		.4byte	.LFB190
 5007 1a5d 50020000 		.4byte	.LFE190-.LFB190
 5008 1a61 01       		.uleb128 0x1
 5009 1a62 9C       		.byte	0x9c
 5010 1a63 281B0000 		.4byte	0x1b28
 5011 1a67 39       		.uleb128 0x39
 5012 1a68 E6090000 		.4byte	.LASF293
 5013 1a6c 01       		.byte	0x1
 5014 1a6d FA       		.byte	0xfa
 5015 1a6e 9B150000 		.4byte	0x159b
 5016 1a72 25050000 		.4byte	.LLST1
 5017 1a76 3A       		.uleb128 0x3a
 5018 1a77 687700   		.ascii	"hw\000"
 5019 1a7a 01       		.byte	0x1
 5020 1a7b FA       		.byte	0xfa
 5021 1a7c 62120000 		.4byte	0x1262
 5022 1a80 83050000 		.4byte	.LLST2
 5023 1a84 39       		.uleb128 0x39
 5024 1a85 9C0C0000 		.4byte	.LASF333
ARM GAS  /tmp/cciOmULZ.s 			page 105


 5025 1a89 01       		.byte	0x1
 5026 1a8a FB       		.byte	0xfb
 5027 1a8b 281B0000 		.4byte	0x1b28
 5028 1a8f A1050000 		.4byte	.LLST3
 5029 1a93 3B       		.uleb128 0x3b
 5030 1a94 991B0000 		.4byte	0x1b99
 5031 1a98 26000000 		.4byte	.LBB16
 5032 1a9c 00000000 		.4byte	.Ldebug_ranges0+0
 5033 1aa0 01       		.byte	0x1
 5034 1aa1 1201     		.2byte	0x112
 5035 1aa3 B11A0000 		.4byte	0x1ab1
 5036 1aa7 3C       		.uleb128 0x3c
 5037 1aa8 A51B0000 		.4byte	0x1ba5
 5038 1aac BF050000 		.4byte	.LLST4
 5039 1ab0 00       		.byte	0
 5040 1ab1 3B       		.uleb128 0x3b
 5041 1ab2 771B0000 		.4byte	0x1b77
 5042 1ab6 3E000000 		.4byte	.LBB24
 5043 1aba 30000000 		.4byte	.Ldebug_ranges0+0x30
 5044 1abe 01       		.byte	0x1
 5045 1abf 1501     		.2byte	0x115
 5046 1ac1 D81A0000 		.4byte	0x1ad8
 5047 1ac5 3C       		.uleb128 0x3c
 5048 1ac6 8D1B0000 		.4byte	0x1b8d
 5049 1aca DD050000 		.4byte	.LLST5
 5050 1ace 3C       		.uleb128 0x3c
 5051 1acf 831B0000 		.4byte	0x1b83
 5052 1ad3 F0050000 		.4byte	.LLST6
 5053 1ad7 00       		.byte	0
 5054 1ad8 3D       		.uleb128 0x3d
 5055 1ad9 10000000 		.4byte	.LVL7
 5056 1add E61B0000 		.4byte	0x1be6
 5057 1ae1 EB1A0000 		.4byte	0x1aeb
 5058 1ae5 33       		.uleb128 0x33
 5059 1ae6 01       		.uleb128 0x1
 5060 1ae7 50       		.byte	0x50
 5061 1ae8 01       		.uleb128 0x1
 5062 1ae9 35       		.byte	0x35
 5063 1aea 00       		.byte	0
 5064 1aeb 3D       		.uleb128 0x3d
 5065 1aec 18000000 		.4byte	.LVL8
 5066 1af0 F21B0000 		.4byte	0x1bf2
 5067 1af4 041B0000 		.4byte	0x1b04
 5068 1af8 33       		.uleb128 0x33
 5069 1af9 01       		.uleb128 0x1
 5070 1afa 50       		.byte	0x50
 5071 1afb 01       		.uleb128 0x1
 5072 1afc 35       		.byte	0x35
 5073 1afd 33       		.uleb128 0x33
 5074 1afe 01       		.uleb128 0x1
 5075 1aff 51       		.byte	0x51
 5076 1b00 02       		.uleb128 0x2
 5077 1b01 08       		.byte	0x8
 5078 1b02 90       		.byte	0x90
 5079 1b03 00       		.byte	0
 5080 1b04 3D       		.uleb128 0x3d
 5081 1b05 1E000000 		.4byte	.LVL9
ARM GAS  /tmp/cciOmULZ.s 			page 106


 5082 1b09 FD1B0000 		.4byte	0x1bfd
 5083 1b0d 171B0000 		.4byte	0x1b17
 5084 1b11 33       		.uleb128 0x33
 5085 1b12 01       		.uleb128 0x1
 5086 1b13 50       		.byte	0x50
 5087 1b14 01       		.uleb128 0x1
 5088 1b15 35       		.byte	0x35
 5089 1b16 00       		.byte	0
 5090 1b17 32       		.uleb128 0x32
 5091 1b18 24000000 		.4byte	.LVL10
 5092 1b1c 2E1B0000 		.4byte	0x1b2e
 5093 1b20 33       		.uleb128 0x33
 5094 1b21 01       		.uleb128 0x1
 5095 1b22 50       		.byte	0x50
 5096 1b23 02       		.uleb128 0x2
 5097 1b24 76       		.byte	0x76
 5098 1b25 00       		.sleb128 0
 5099 1b26 00       		.byte	0
 5100 1b27 00       		.byte	0
 5101 1b28 13       		.uleb128 0x13
 5102 1b29 04       		.byte	0x4
 5103 1b2a 68120000 		.4byte	0x1268
 5104 1b2e 3E       		.uleb128 0x3e
 5105 1b2f 00040000 		.4byte	.LASF346
 5106 1b33 01       		.byte	0x1
 5107 1b34 E8       		.byte	0xe8
 5108 1b35 00000000 		.4byte	.LFB189
 5109 1b39 24000000 		.4byte	.LFE189-.LFB189
 5110 1b3d 01       		.uleb128 0x1
 5111 1b3e 9C       		.byte	0x9c
 5112 1b3f 771B0000 		.4byte	0x1b77
 5113 1b43 39       		.uleb128 0x39
 5114 1b44 E6090000 		.4byte	.LASF293
 5115 1b48 01       		.byte	0x1
 5116 1b49 E8       		.byte	0xe8
 5117 1b4a 9B150000 		.4byte	0x159b
 5118 1b4e 03060000 		.4byte	.LLST0
 5119 1b52 3F       		.uleb128 0x3f
 5120 1b53 16000000 		.4byte	.LVL2
 5121 1b57 091C0000 		.4byte	0x1c09
 5122 1b5b 661B0000 		.4byte	0x1b66
 5123 1b5f 33       		.uleb128 0x33
 5124 1b60 01       		.uleb128 0x1
 5125 1b61 50       		.byte	0x50
 5126 1b62 02       		.uleb128 0x2
 5127 1b63 08       		.byte	0x8
 5128 1b64 25       		.byte	0x25
 5129 1b65 00       		.byte	0
 5130 1b66 40       		.uleb128 0x40
 5131 1b67 1C000000 		.4byte	.LVL4
 5132 1b6b 091C0000 		.4byte	0x1c09
 5133 1b6f 33       		.uleb128 0x33
 5134 1b70 01       		.uleb128 0x1
 5135 1b71 50       		.byte	0x50
 5136 1b72 02       		.uleb128 0x2
 5137 1b73 08       		.byte	0x8
 5138 1b74 23       		.byte	0x23
ARM GAS  /tmp/cciOmULZ.s 			page 107


 5139 1b75 00       		.byte	0
 5140 1b76 00       		.byte	0
 5141 1b77 41       		.uleb128 0x41
 5142 1b78 7F050000 		.4byte	.LASF334
 5143 1b7c 01       		.byte	0x1
 5144 1b7d A1       		.byte	0xa1
 5145 1b7e 01       		.byte	0x1
 5146 1b7f 991B0000 		.4byte	0x1b99
 5147 1b83 42       		.uleb128 0x42
 5148 1b84 687700   		.ascii	"hw\000"
 5149 1b87 01       		.byte	0x1
 5150 1b88 A1       		.byte	0xa1
 5151 1b89 62120000 		.4byte	0x1262
 5152 1b8d 43       		.uleb128 0x43
 5153 1b8e 9C0C0000 		.4byte	.LASF333
 5154 1b92 01       		.byte	0x1
 5155 1b93 A1       		.byte	0xa1
 5156 1b94 281B0000 		.4byte	0x1b28
 5157 1b98 00       		.byte	0
 5158 1b99 41       		.uleb128 0x41
 5159 1b9a C4110000 		.4byte	.LASF335
 5160 1b9e 01       		.byte	0x1
 5161 1b9f 66       		.byte	0x66
 5162 1ba0 01       		.byte	0x1
 5163 1ba1 B01B0000 		.4byte	0x1bb0
 5164 1ba5 42       		.uleb128 0x42
 5165 1ba6 687700   		.ascii	"hw\000"
 5166 1ba9 01       		.byte	0x1
 5167 1baa 66       		.byte	0x66
 5168 1bab 62120000 		.4byte	0x1262
 5169 1baf 00       		.byte	0
 5170 1bb0 44       		.uleb128 0x44
 5171 1bb1 5D100000 		.4byte	.LASF336
 5172 1bb5 10       		.byte	0x10
 5173 1bb6 9201     		.2byte	0x192
 5174 1bb8 BD000000 		.4byte	0xbd
 5175 1bbc 03       		.byte	0x3
 5176 1bbd 44       		.uleb128 0x44
 5177 1bbe CF060000 		.4byte	.LASF337
 5178 1bc2 10       		.byte	0x10
 5179 1bc3 4E01     		.2byte	0x14e
 5180 1bc5 BD000000 		.4byte	0xbd
 5181 1bc9 03       		.byte	0x3
 5182 1bca 45       		.uleb128 0x45
 5183 1bcb 3C0D0000 		.4byte	.LASF347
 5184 1bcf 11       		.byte	0x11
 5185 1bd0 CE       		.byte	0xce
 5186 1bd1 BD000000 		.4byte	0xbd
 5187 1bd5 03       		.byte	0x3
 5188 1bd6 E61B0000 		.4byte	0x1be6
 5189 1bda 43       		.uleb128 0x43
 5190 1bdb A3000000 		.4byte	.LASF338
 5191 1bdf 11       		.byte	0x11
 5192 1be0 CE       		.byte	0xce
 5193 1be1 BD000000 		.4byte	0xbd
 5194 1be5 00       		.byte	0
 5195 1be6 46       		.uleb128 0x46
ARM GAS  /tmp/cciOmULZ.s 			page 108


 5196 1be7 6C030000 		.4byte	.LASF339
 5197 1beb 6C030000 		.4byte	.LASF339
 5198 1bef 12       		.byte	0x12
 5199 1bf0 0201     		.2byte	0x102
 5200 1bf2 47       		.uleb128 0x47
 5201 1bf3 E20A0000 		.4byte	.LASF340
 5202 1bf7 E20A0000 		.4byte	.LASF340
 5203 1bfb 12       		.byte	0x12
 5204 1bfc EF       		.byte	0xef
 5205 1bfd 46       		.uleb128 0x46
 5206 1bfe F1120000 		.4byte	.LASF341
 5207 1c02 F1120000 		.4byte	.LASF341
 5208 1c06 12       		.byte	0x12
 5209 1c07 0101     		.2byte	0x101
 5210 1c09 47       		.uleb128 0x47
 5211 1c0a 94120000 		.4byte	.LASF342
 5212 1c0e 94120000 		.4byte	.LASF342
 5213 1c12 12       		.byte	0x12
 5214 1c13 DB       		.byte	0xdb
 5215 1c14 00       		.byte	0
 5216              		.section	.debug_abbrev,"",%progbits
 5217              	.Ldebug_abbrev0:
 5218 0000 01       		.uleb128 0x1
 5219 0001 11       		.uleb128 0x11
 5220 0002 01       		.byte	0x1
 5221 0003 25       		.uleb128 0x25
 5222 0004 0E       		.uleb128 0xe
 5223 0005 13       		.uleb128 0x13
 5224 0006 0B       		.uleb128 0xb
 5225 0007 03       		.uleb128 0x3
 5226 0008 0E       		.uleb128 0xe
 5227 0009 1B       		.uleb128 0x1b
 5228 000a 0E       		.uleb128 0xe
 5229 000b 55       		.uleb128 0x55
 5230 000c 17       		.uleb128 0x17
 5231 000d 11       		.uleb128 0x11
 5232 000e 01       		.uleb128 0x1
 5233 000f 10       		.uleb128 0x10
 5234 0010 17       		.uleb128 0x17
 5235 0011 00       		.byte	0
 5236 0012 00       		.byte	0
 5237 0013 02       		.uleb128 0x2
 5238 0014 24       		.uleb128 0x24
 5239 0015 00       		.byte	0
 5240 0016 0B       		.uleb128 0xb
 5241 0017 0B       		.uleb128 0xb
 5242 0018 3E       		.uleb128 0x3e
 5243 0019 0B       		.uleb128 0xb
 5244 001a 03       		.uleb128 0x3
 5245 001b 0E       		.uleb128 0xe
 5246 001c 00       		.byte	0
 5247 001d 00       		.byte	0
 5248 001e 03       		.uleb128 0x3
 5249 001f 24       		.uleb128 0x24
 5250 0020 00       		.byte	0
 5251 0021 0B       		.uleb128 0xb
 5252 0022 0B       		.uleb128 0xb
ARM GAS  /tmp/cciOmULZ.s 			page 109


 5253 0023 3E       		.uleb128 0x3e
 5254 0024 0B       		.uleb128 0xb
 5255 0025 03       		.uleb128 0x3
 5256 0026 08       		.uleb128 0x8
 5257 0027 00       		.byte	0
 5258 0028 00       		.byte	0
 5259 0029 04       		.uleb128 0x4
 5260 002a 16       		.uleb128 0x16
 5261 002b 00       		.byte	0
 5262 002c 03       		.uleb128 0x3
 5263 002d 0E       		.uleb128 0xe
 5264 002e 3A       		.uleb128 0x3a
 5265 002f 0B       		.uleb128 0xb
 5266 0030 3B       		.uleb128 0x3b
 5267 0031 0B       		.uleb128 0xb
 5268 0032 49       		.uleb128 0x49
 5269 0033 13       		.uleb128 0x13
 5270 0034 00       		.byte	0
 5271 0035 00       		.byte	0
 5272 0036 05       		.uleb128 0x5
 5273 0037 35       		.uleb128 0x35
 5274 0038 00       		.byte	0
 5275 0039 49       		.uleb128 0x49
 5276 003a 13       		.uleb128 0x13
 5277 003b 00       		.byte	0
 5278 003c 00       		.byte	0
 5279 003d 06       		.uleb128 0x6
 5280 003e 26       		.uleb128 0x26
 5281 003f 00       		.byte	0
 5282 0040 49       		.uleb128 0x49
 5283 0041 13       		.uleb128 0x13
 5284 0042 00       		.byte	0
 5285 0043 00       		.byte	0
 5286 0044 07       		.uleb128 0x7
 5287 0045 0F       		.uleb128 0xf
 5288 0046 00       		.byte	0
 5289 0047 0B       		.uleb128 0xb
 5290 0048 0B       		.uleb128 0xb
 5291 0049 00       		.byte	0
 5292 004a 00       		.byte	0
 5293 004b 08       		.uleb128 0x8
 5294 004c 01       		.uleb128 0x1
 5295 004d 01       		.byte	0x1
 5296 004e 49       		.uleb128 0x49
 5297 004f 13       		.uleb128 0x13
 5298 0050 01       		.uleb128 0x1
 5299 0051 13       		.uleb128 0x13
 5300 0052 00       		.byte	0
 5301 0053 00       		.byte	0
 5302 0054 09       		.uleb128 0x9
 5303 0055 21       		.uleb128 0x21
 5304 0056 00       		.byte	0
 5305 0057 49       		.uleb128 0x49
 5306 0058 13       		.uleb128 0x13
 5307 0059 2F       		.uleb128 0x2f
 5308 005a 0B       		.uleb128 0xb
 5309 005b 00       		.byte	0
ARM GAS  /tmp/cciOmULZ.s 			page 110


 5310 005c 00       		.byte	0
 5311 005d 0A       		.uleb128 0xa
 5312 005e 34       		.uleb128 0x34
 5313 005f 00       		.byte	0
 5314 0060 03       		.uleb128 0x3
 5315 0061 0E       		.uleb128 0xe
 5316 0062 3A       		.uleb128 0x3a
 5317 0063 0B       		.uleb128 0xb
 5318 0064 3B       		.uleb128 0x3b
 5319 0065 05       		.uleb128 0x5
 5320 0066 49       		.uleb128 0x49
 5321 0067 13       		.uleb128 0x13
 5322 0068 3F       		.uleb128 0x3f
 5323 0069 19       		.uleb128 0x19
 5324 006a 3C       		.uleb128 0x3c
 5325 006b 19       		.uleb128 0x19
 5326 006c 00       		.byte	0
 5327 006d 00       		.byte	0
 5328 006e 0B       		.uleb128 0xb
 5329 006f 34       		.uleb128 0x34
 5330 0070 00       		.byte	0
 5331 0071 03       		.uleb128 0x3
 5332 0072 0E       		.uleb128 0xe
 5333 0073 3A       		.uleb128 0x3a
 5334 0074 0B       		.uleb128 0xb
 5335 0075 3B       		.uleb128 0x3b
 5336 0076 0B       		.uleb128 0xb
 5337 0077 49       		.uleb128 0x49
 5338 0078 13       		.uleb128 0x13
 5339 0079 3F       		.uleb128 0x3f
 5340 007a 19       		.uleb128 0x19
 5341 007b 3C       		.uleb128 0x3c
 5342 007c 19       		.uleb128 0x19
 5343 007d 00       		.byte	0
 5344 007e 00       		.byte	0
 5345 007f 0C       		.uleb128 0xc
 5346 0080 13       		.uleb128 0x13
 5347 0081 01       		.byte	0x1
 5348 0082 0B       		.uleb128 0xb
 5349 0083 0B       		.uleb128 0xb
 5350 0084 3A       		.uleb128 0x3a
 5351 0085 0B       		.uleb128 0xb
 5352 0086 3B       		.uleb128 0x3b
 5353 0087 0B       		.uleb128 0xb
 5354 0088 01       		.uleb128 0x1
 5355 0089 13       		.uleb128 0x13
 5356 008a 00       		.byte	0
 5357 008b 00       		.byte	0
 5358 008c 0D       		.uleb128 0xd
 5359 008d 0D       		.uleb128 0xd
 5360 008e 00       		.byte	0
 5361 008f 03       		.uleb128 0x3
 5362 0090 0E       		.uleb128 0xe
 5363 0091 3A       		.uleb128 0x3a
 5364 0092 0B       		.uleb128 0xb
 5365 0093 3B       		.uleb128 0x3b
 5366 0094 0B       		.uleb128 0xb
ARM GAS  /tmp/cciOmULZ.s 			page 111


 5367 0095 49       		.uleb128 0x49
 5368 0096 13       		.uleb128 0x13
 5369 0097 38       		.uleb128 0x38
 5370 0098 0B       		.uleb128 0xb
 5371 0099 00       		.byte	0
 5372 009a 00       		.byte	0
 5373 009b 0E       		.uleb128 0xe
 5374 009c 16       		.uleb128 0x16
 5375 009d 00       		.byte	0
 5376 009e 03       		.uleb128 0x3
 5377 009f 0E       		.uleb128 0xe
 5378 00a0 3A       		.uleb128 0x3a
 5379 00a1 0B       		.uleb128 0xb
 5380 00a2 3B       		.uleb128 0x3b
 5381 00a3 05       		.uleb128 0x5
 5382 00a4 49       		.uleb128 0x49
 5383 00a5 13       		.uleb128 0x13
 5384 00a6 00       		.byte	0
 5385 00a7 00       		.byte	0
 5386 00a8 0F       		.uleb128 0xf
 5387 00a9 17       		.uleb128 0x17
 5388 00aa 01       		.byte	0x1
 5389 00ab 0B       		.uleb128 0xb
 5390 00ac 0B       		.uleb128 0xb
 5391 00ad 3A       		.uleb128 0x3a
 5392 00ae 0B       		.uleb128 0xb
 5393 00af 3B       		.uleb128 0x3b
 5394 00b0 0B       		.uleb128 0xb
 5395 00b1 01       		.uleb128 0x1
 5396 00b2 13       		.uleb128 0x13
 5397 00b3 00       		.byte	0
 5398 00b4 00       		.byte	0
 5399 00b5 10       		.uleb128 0x10
 5400 00b6 0D       		.uleb128 0xd
 5401 00b7 00       		.byte	0
 5402 00b8 03       		.uleb128 0x3
 5403 00b9 0E       		.uleb128 0xe
 5404 00ba 3A       		.uleb128 0x3a
 5405 00bb 0B       		.uleb128 0xb
 5406 00bc 3B       		.uleb128 0x3b
 5407 00bd 0B       		.uleb128 0xb
 5408 00be 49       		.uleb128 0x49
 5409 00bf 13       		.uleb128 0x13
 5410 00c0 00       		.byte	0
 5411 00c1 00       		.byte	0
 5412 00c2 11       		.uleb128 0x11
 5413 00c3 13       		.uleb128 0x13
 5414 00c4 01       		.byte	0x1
 5415 00c5 03       		.uleb128 0x3
 5416 00c6 0E       		.uleb128 0xe
 5417 00c7 0B       		.uleb128 0xb
 5418 00c8 0B       		.uleb128 0xb
 5419 00c9 3A       		.uleb128 0x3a
 5420 00ca 0B       		.uleb128 0xb
 5421 00cb 3B       		.uleb128 0x3b
 5422 00cc 0B       		.uleb128 0xb
 5423 00cd 01       		.uleb128 0x1
ARM GAS  /tmp/cciOmULZ.s 			page 112


 5424 00ce 13       		.uleb128 0x13
 5425 00cf 00       		.byte	0
 5426 00d0 00       		.byte	0
 5427 00d1 12       		.uleb128 0x12
 5428 00d2 0D       		.uleb128 0xd
 5429 00d3 00       		.byte	0
 5430 00d4 03       		.uleb128 0x3
 5431 00d5 08       		.uleb128 0x8
 5432 00d6 3A       		.uleb128 0x3a
 5433 00d7 0B       		.uleb128 0xb
 5434 00d8 3B       		.uleb128 0x3b
 5435 00d9 0B       		.uleb128 0xb
 5436 00da 49       		.uleb128 0x49
 5437 00db 13       		.uleb128 0x13
 5438 00dc 38       		.uleb128 0x38
 5439 00dd 0B       		.uleb128 0xb
 5440 00de 00       		.byte	0
 5441 00df 00       		.byte	0
 5442 00e0 13       		.uleb128 0x13
 5443 00e1 0F       		.uleb128 0xf
 5444 00e2 00       		.byte	0
 5445 00e3 0B       		.uleb128 0xb
 5446 00e4 0B       		.uleb128 0xb
 5447 00e5 49       		.uleb128 0x49
 5448 00e6 13       		.uleb128 0x13
 5449 00e7 00       		.byte	0
 5450 00e8 00       		.byte	0
 5451 00e9 14       		.uleb128 0x14
 5452 00ea 13       		.uleb128 0x13
 5453 00eb 01       		.byte	0x1
 5454 00ec 03       		.uleb128 0x3
 5455 00ed 0E       		.uleb128 0xe
 5456 00ee 0B       		.uleb128 0xb
 5457 00ef 05       		.uleb128 0x5
 5458 00f0 3A       		.uleb128 0x3a
 5459 00f1 0B       		.uleb128 0xb
 5460 00f2 3B       		.uleb128 0x3b
 5461 00f3 0B       		.uleb128 0xb
 5462 00f4 01       		.uleb128 0x1
 5463 00f5 13       		.uleb128 0x13
 5464 00f6 00       		.byte	0
 5465 00f7 00       		.byte	0
 5466 00f8 15       		.uleb128 0x15
 5467 00f9 0D       		.uleb128 0xd
 5468 00fa 00       		.byte	0
 5469 00fb 03       		.uleb128 0x3
 5470 00fc 0E       		.uleb128 0xe
 5471 00fd 3A       		.uleb128 0x3a
 5472 00fe 0B       		.uleb128 0xb
 5473 00ff 3B       		.uleb128 0x3b
 5474 0100 0B       		.uleb128 0xb
 5475 0101 49       		.uleb128 0x49
 5476 0102 13       		.uleb128 0x13
 5477 0103 38       		.uleb128 0x38
 5478 0104 05       		.uleb128 0x5
 5479 0105 00       		.byte	0
 5480 0106 00       		.byte	0
ARM GAS  /tmp/cciOmULZ.s 			page 113


 5481 0107 16       		.uleb128 0x16
 5482 0108 15       		.uleb128 0x15
 5483 0109 00       		.byte	0
 5484 010a 27       		.uleb128 0x27
 5485 010b 19       		.uleb128 0x19
 5486 010c 00       		.byte	0
 5487 010d 00       		.byte	0
 5488 010e 17       		.uleb128 0x17
 5489 010f 15       		.uleb128 0x15
 5490 0110 01       		.byte	0x1
 5491 0111 27       		.uleb128 0x27
 5492 0112 19       		.uleb128 0x19
 5493 0113 49       		.uleb128 0x49
 5494 0114 13       		.uleb128 0x13
 5495 0115 01       		.uleb128 0x1
 5496 0116 13       		.uleb128 0x13
 5497 0117 00       		.byte	0
 5498 0118 00       		.byte	0
 5499 0119 18       		.uleb128 0x18
 5500 011a 05       		.uleb128 0x5
 5501 011b 00       		.byte	0
 5502 011c 49       		.uleb128 0x49
 5503 011d 13       		.uleb128 0x13
 5504 011e 00       		.byte	0
 5505 011f 00       		.byte	0
 5506 0120 19       		.uleb128 0x19
 5507 0121 13       		.uleb128 0x13
 5508 0122 01       		.byte	0x1
 5509 0123 03       		.uleb128 0x3
 5510 0124 0E       		.uleb128 0xe
 5511 0125 0B       		.uleb128 0xb
 5512 0126 05       		.uleb128 0x5
 5513 0127 3A       		.uleb128 0x3a
 5514 0128 0B       		.uleb128 0xb
 5515 0129 3B       		.uleb128 0x3b
 5516 012a 05       		.uleb128 0x5
 5517 012b 01       		.uleb128 0x1
 5518 012c 13       		.uleb128 0x13
 5519 012d 00       		.byte	0
 5520 012e 00       		.byte	0
 5521 012f 1A       		.uleb128 0x1a
 5522 0130 0D       		.uleb128 0xd
 5523 0131 00       		.byte	0
 5524 0132 03       		.uleb128 0x3
 5525 0133 0E       		.uleb128 0xe
 5526 0134 3A       		.uleb128 0x3a
 5527 0135 0B       		.uleb128 0xb
 5528 0136 3B       		.uleb128 0x3b
 5529 0137 05       		.uleb128 0x5
 5530 0138 49       		.uleb128 0x49
 5531 0139 13       		.uleb128 0x13
 5532 013a 38       		.uleb128 0x38
 5533 013b 0B       		.uleb128 0xb
 5534 013c 00       		.byte	0
 5535 013d 00       		.byte	0
 5536 013e 1B       		.uleb128 0x1b
 5537 013f 0D       		.uleb128 0xd
ARM GAS  /tmp/cciOmULZ.s 			page 114


 5538 0140 00       		.byte	0
 5539 0141 03       		.uleb128 0x3
 5540 0142 0E       		.uleb128 0xe
 5541 0143 3A       		.uleb128 0x3a
 5542 0144 0B       		.uleb128 0xb
 5543 0145 3B       		.uleb128 0x3b
 5544 0146 05       		.uleb128 0x5
 5545 0147 49       		.uleb128 0x49
 5546 0148 13       		.uleb128 0x13
 5547 0149 38       		.uleb128 0x38
 5548 014a 05       		.uleb128 0x5
 5549 014b 00       		.byte	0
 5550 014c 00       		.byte	0
 5551 014d 1C       		.uleb128 0x1c
 5552 014e 13       		.uleb128 0x13
 5553 014f 01       		.byte	0x1
 5554 0150 03       		.uleb128 0x3
 5555 0151 0E       		.uleb128 0xe
 5556 0152 0B       		.uleb128 0xb
 5557 0153 0B       		.uleb128 0xb
 5558 0154 3A       		.uleb128 0x3a
 5559 0155 0B       		.uleb128 0xb
 5560 0156 3B       		.uleb128 0x3b
 5561 0157 05       		.uleb128 0x5
 5562 0158 01       		.uleb128 0x1
 5563 0159 13       		.uleb128 0x13
 5564 015a 00       		.byte	0
 5565 015b 00       		.byte	0
 5566 015c 1D       		.uleb128 0x1d
 5567 015d 13       		.uleb128 0x13
 5568 015e 01       		.byte	0x1
 5569 015f 0B       		.uleb128 0xb
 5570 0160 0B       		.uleb128 0xb
 5571 0161 3A       		.uleb128 0x3a
 5572 0162 0B       		.uleb128 0xb
 5573 0163 3B       		.uleb128 0x3b
 5574 0164 05       		.uleb128 0x5
 5575 0165 01       		.uleb128 0x1
 5576 0166 13       		.uleb128 0x13
 5577 0167 00       		.byte	0
 5578 0168 00       		.byte	0
 5579 0169 1E       		.uleb128 0x1e
 5580 016a 17       		.uleb128 0x17
 5581 016b 01       		.byte	0x1
 5582 016c 0B       		.uleb128 0xb
 5583 016d 0B       		.uleb128 0xb
 5584 016e 3A       		.uleb128 0x3a
 5585 016f 0B       		.uleb128 0xb
 5586 0170 3B       		.uleb128 0x3b
 5587 0171 05       		.uleb128 0x5
 5588 0172 01       		.uleb128 0x1
 5589 0173 13       		.uleb128 0x13
 5590 0174 00       		.byte	0
 5591 0175 00       		.byte	0
 5592 0176 1F       		.uleb128 0x1f
 5593 0177 0D       		.uleb128 0xd
 5594 0178 00       		.byte	0
ARM GAS  /tmp/cciOmULZ.s 			page 115


 5595 0179 03       		.uleb128 0x3
 5596 017a 0E       		.uleb128 0xe
 5597 017b 3A       		.uleb128 0x3a
 5598 017c 0B       		.uleb128 0xb
 5599 017d 3B       		.uleb128 0x3b
 5600 017e 05       		.uleb128 0x5
 5601 017f 49       		.uleb128 0x49
 5602 0180 13       		.uleb128 0x13
 5603 0181 00       		.byte	0
 5604 0182 00       		.byte	0
 5605 0183 20       		.uleb128 0x20
 5606 0184 15       		.uleb128 0x15
 5607 0185 01       		.byte	0x1
 5608 0186 27       		.uleb128 0x27
 5609 0187 19       		.uleb128 0x19
 5610 0188 01       		.uleb128 0x1
 5611 0189 13       		.uleb128 0x13
 5612 018a 00       		.byte	0
 5613 018b 00       		.byte	0
 5614 018c 21       		.uleb128 0x21
 5615 018d 34       		.uleb128 0x34
 5616 018e 00       		.byte	0
 5617 018f 03       		.uleb128 0x3
 5618 0190 0E       		.uleb128 0xe
 5619 0191 3A       		.uleb128 0x3a
 5620 0192 0B       		.uleb128 0xb
 5621 0193 3B       		.uleb128 0x3b
 5622 0194 0B       		.uleb128 0xb
 5623 0195 49       		.uleb128 0x49
 5624 0196 13       		.uleb128 0x13
 5625 0197 02       		.uleb128 0x2
 5626 0198 18       		.uleb128 0x18
 5627 0199 00       		.byte	0
 5628 019a 00       		.byte	0
 5629 019b 22       		.uleb128 0x22
 5630 019c 04       		.uleb128 0x4
 5631 019d 01       		.byte	0x1
 5632 019e 03       		.uleb128 0x3
 5633 019f 0E       		.uleb128 0xe
 5634 01a0 0B       		.uleb128 0xb
 5635 01a1 0B       		.uleb128 0xb
 5636 01a2 49       		.uleb128 0x49
 5637 01a3 13       		.uleb128 0x13
 5638 01a4 3A       		.uleb128 0x3a
 5639 01a5 0B       		.uleb128 0xb
 5640 01a6 3B       		.uleb128 0x3b
 5641 01a7 0B       		.uleb128 0xb
 5642 01a8 01       		.uleb128 0x1
 5643 01a9 13       		.uleb128 0x13
 5644 01aa 00       		.byte	0
 5645 01ab 00       		.byte	0
 5646 01ac 23       		.uleb128 0x23
 5647 01ad 28       		.uleb128 0x28
 5648 01ae 00       		.byte	0
 5649 01af 03       		.uleb128 0x3
 5650 01b0 0E       		.uleb128 0xe
 5651 01b1 1C       		.uleb128 0x1c
ARM GAS  /tmp/cciOmULZ.s 			page 116


 5652 01b2 0B       		.uleb128 0xb
 5653 01b3 00       		.byte	0
 5654 01b4 00       		.byte	0
 5655 01b5 24       		.uleb128 0x24
 5656 01b6 28       		.uleb128 0x28
 5657 01b7 00       		.byte	0
 5658 01b8 03       		.uleb128 0x3
 5659 01b9 0E       		.uleb128 0xe
 5660 01ba 1C       		.uleb128 0x1c
 5661 01bb 0D       		.uleb128 0xd
 5662 01bc 00       		.byte	0
 5663 01bd 00       		.byte	0
 5664 01be 25       		.uleb128 0x25
 5665 01bf 0D       		.uleb128 0xd
 5666 01c0 00       		.byte	0
 5667 01c1 03       		.uleb128 0x3
 5668 01c2 08       		.uleb128 0x8
 5669 01c3 3A       		.uleb128 0x3a
 5670 01c4 0B       		.uleb128 0xb
 5671 01c5 3B       		.uleb128 0x3b
 5672 01c6 0B       		.uleb128 0xb
 5673 01c7 49       		.uleb128 0x49
 5674 01c8 13       		.uleb128 0x13
 5675 01c9 0B       		.uleb128 0xb
 5676 01ca 0B       		.uleb128 0xb
 5677 01cb 0D       		.uleb128 0xd
 5678 01cc 0B       		.uleb128 0xb
 5679 01cd 0C       		.uleb128 0xc
 5680 01ce 0B       		.uleb128 0xb
 5681 01cf 38       		.uleb128 0x38
 5682 01d0 0B       		.uleb128 0xb
 5683 01d1 00       		.byte	0
 5684 01d2 00       		.byte	0
 5685 01d3 26       		.uleb128 0x26
 5686 01d4 0D       		.uleb128 0xd
 5687 01d5 00       		.byte	0
 5688 01d6 03       		.uleb128 0x3
 5689 01d7 08       		.uleb128 0x8
 5690 01d8 3A       		.uleb128 0x3a
 5691 01d9 0B       		.uleb128 0xb
 5692 01da 3B       		.uleb128 0x3b
 5693 01db 0B       		.uleb128 0xb
 5694 01dc 49       		.uleb128 0x49
 5695 01dd 13       		.uleb128 0x13
 5696 01de 00       		.byte	0
 5697 01df 00       		.byte	0
 5698 01e0 27       		.uleb128 0x27
 5699 01e1 0D       		.uleb128 0xd
 5700 01e2 00       		.byte	0
 5701 01e3 03       		.uleb128 0x3
 5702 01e4 0E       		.uleb128 0xe
 5703 01e5 3A       		.uleb128 0x3a
 5704 01e6 0B       		.uleb128 0xb
 5705 01e7 3B       		.uleb128 0x3b
 5706 01e8 0B       		.uleb128 0xb
 5707 01e9 49       		.uleb128 0x49
 5708 01ea 13       		.uleb128 0x13
ARM GAS  /tmp/cciOmULZ.s 			page 117


 5709 01eb 0B       		.uleb128 0xb
 5710 01ec 0B       		.uleb128 0xb
 5711 01ed 0D       		.uleb128 0xd
 5712 01ee 0B       		.uleb128 0xb
 5713 01ef 0C       		.uleb128 0xc
 5714 01f0 0B       		.uleb128 0xb
 5715 01f1 38       		.uleb128 0x38
 5716 01f2 0B       		.uleb128 0xb
 5717 01f3 00       		.byte	0
 5718 01f4 00       		.byte	0
 5719 01f5 28       		.uleb128 0x28
 5720 01f6 0D       		.uleb128 0xd
 5721 01f7 00       		.byte	0
 5722 01f8 03       		.uleb128 0x3
 5723 01f9 0E       		.uleb128 0xe
 5724 01fa 3A       		.uleb128 0x3a
 5725 01fb 0B       		.uleb128 0xb
 5726 01fc 3B       		.uleb128 0x3b
 5727 01fd 05       		.uleb128 0x5
 5728 01fe 49       		.uleb128 0x49
 5729 01ff 13       		.uleb128 0x13
 5730 0200 0B       		.uleb128 0xb
 5731 0201 0B       		.uleb128 0xb
 5732 0202 0D       		.uleb128 0xd
 5733 0203 0B       		.uleb128 0xb
 5734 0204 0C       		.uleb128 0xc
 5735 0205 0B       		.uleb128 0xb
 5736 0206 38       		.uleb128 0x38
 5737 0207 0B       		.uleb128 0xb
 5738 0208 00       		.byte	0
 5739 0209 00       		.byte	0
 5740 020a 29       		.uleb128 0x29
 5741 020b 0D       		.uleb128 0xd
 5742 020c 00       		.byte	0
 5743 020d 03       		.uleb128 0x3
 5744 020e 08       		.uleb128 0x8
 5745 020f 3A       		.uleb128 0x3a
 5746 0210 0B       		.uleb128 0xb
 5747 0211 3B       		.uleb128 0x3b
 5748 0212 05       		.uleb128 0x5
 5749 0213 49       		.uleb128 0x49
 5750 0214 13       		.uleb128 0x13
 5751 0215 0B       		.uleb128 0xb
 5752 0216 0B       		.uleb128 0xb
 5753 0217 0D       		.uleb128 0xd
 5754 0218 0B       		.uleb128 0xb
 5755 0219 0C       		.uleb128 0xc
 5756 021a 0B       		.uleb128 0xb
 5757 021b 38       		.uleb128 0x38
 5758 021c 0B       		.uleb128 0xb
 5759 021d 00       		.byte	0
 5760 021e 00       		.byte	0
 5761 021f 2A       		.uleb128 0x2a
 5762 0220 0D       		.uleb128 0xd
 5763 0221 00       		.byte	0
 5764 0222 03       		.uleb128 0x3
 5765 0223 08       		.uleb128 0x8
ARM GAS  /tmp/cciOmULZ.s 			page 118


 5766 0224 3A       		.uleb128 0x3a
 5767 0225 0B       		.uleb128 0xb
 5768 0226 3B       		.uleb128 0x3b
 5769 0227 05       		.uleb128 0x5
 5770 0228 49       		.uleb128 0x49
 5771 0229 13       		.uleb128 0x13
 5772 022a 00       		.byte	0
 5773 022b 00       		.byte	0
 5774 022c 2B       		.uleb128 0x2b
 5775 022d 0D       		.uleb128 0xd
 5776 022e 00       		.byte	0
 5777 022f 03       		.uleb128 0x3
 5778 0230 08       		.uleb128 0x8
 5779 0231 3A       		.uleb128 0x3a
 5780 0232 0B       		.uleb128 0xb
 5781 0233 3B       		.uleb128 0x3b
 5782 0234 05       		.uleb128 0x5
 5783 0235 49       		.uleb128 0x49
 5784 0236 13       		.uleb128 0x13
 5785 0237 38       		.uleb128 0x38
 5786 0238 0B       		.uleb128 0xb
 5787 0239 00       		.byte	0
 5788 023a 00       		.byte	0
 5789 023b 2C       		.uleb128 0x2c
 5790 023c 04       		.uleb128 0x4
 5791 023d 01       		.byte	0x1
 5792 023e 03       		.uleb128 0x3
 5793 023f 0E       		.uleb128 0xe
 5794 0240 0B       		.uleb128 0xb
 5795 0241 0B       		.uleb128 0xb
 5796 0242 49       		.uleb128 0x49
 5797 0243 13       		.uleb128 0x13
 5798 0244 3A       		.uleb128 0x3a
 5799 0245 0B       		.uleb128 0xb
 5800 0246 3B       		.uleb128 0x3b
 5801 0247 05       		.uleb128 0x5
 5802 0248 01       		.uleb128 0x1
 5803 0249 13       		.uleb128 0x13
 5804 024a 00       		.byte	0
 5805 024b 00       		.byte	0
 5806 024c 2D       		.uleb128 0x2d
 5807 024d 2E       		.uleb128 0x2e
 5808 024e 01       		.byte	0x1
 5809 024f 3F       		.uleb128 0x3f
 5810 0250 19       		.uleb128 0x19
 5811 0251 03       		.uleb128 0x3
 5812 0252 0E       		.uleb128 0xe
 5813 0253 3A       		.uleb128 0x3a
 5814 0254 0B       		.uleb128 0xb
 5815 0255 3B       		.uleb128 0x3b
 5816 0256 05       		.uleb128 0x5
 5817 0257 27       		.uleb128 0x27
 5818 0258 19       		.uleb128 0x19
 5819 0259 49       		.uleb128 0x49
 5820 025a 13       		.uleb128 0x13
 5821 025b 11       		.uleb128 0x11
 5822 025c 01       		.uleb128 0x1
ARM GAS  /tmp/cciOmULZ.s 			page 119


 5823 025d 12       		.uleb128 0x12
 5824 025e 06       		.uleb128 0x6
 5825 025f 40       		.uleb128 0x40
 5826 0260 18       		.uleb128 0x18
 5827 0261 9742     		.uleb128 0x2117
 5828 0263 19       		.uleb128 0x19
 5829 0264 01       		.uleb128 0x1
 5830 0265 13       		.uleb128 0x13
 5831 0266 00       		.byte	0
 5832 0267 00       		.byte	0
 5833 0268 2E       		.uleb128 0x2e
 5834 0269 05       		.uleb128 0x5
 5835 026a 00       		.byte	0
 5836 026b 03       		.uleb128 0x3
 5837 026c 0E       		.uleb128 0xe
 5838 026d 3A       		.uleb128 0x3a
 5839 026e 0B       		.uleb128 0xb
 5840 026f 3B       		.uleb128 0x3b
 5841 0270 05       		.uleb128 0x5
 5842 0271 49       		.uleb128 0x49
 5843 0272 13       		.uleb128 0x13
 5844 0273 02       		.uleb128 0x2
 5845 0274 17       		.uleb128 0x17
 5846 0275 00       		.byte	0
 5847 0276 00       		.byte	0
 5848 0277 2F       		.uleb128 0x2f
 5849 0278 05       		.uleb128 0x5
 5850 0279 00       		.byte	0
 5851 027a 03       		.uleb128 0x3
 5852 027b 0E       		.uleb128 0xe
 5853 027c 3A       		.uleb128 0x3a
 5854 027d 0B       		.uleb128 0xb
 5855 027e 3B       		.uleb128 0x3b
 5856 027f 05       		.uleb128 0x5
 5857 0280 49       		.uleb128 0x49
 5858 0281 13       		.uleb128 0x13
 5859 0282 02       		.uleb128 0x2
 5860 0283 18       		.uleb128 0x18
 5861 0284 00       		.byte	0
 5862 0285 00       		.byte	0
 5863 0286 30       		.uleb128 0x30
 5864 0287 34       		.uleb128 0x34
 5865 0288 00       		.byte	0
 5866 0289 03       		.uleb128 0x3
 5867 028a 08       		.uleb128 0x8
 5868 028b 3A       		.uleb128 0x3a
 5869 028c 0B       		.uleb128 0xb
 5870 028d 3B       		.uleb128 0x3b
 5871 028e 05       		.uleb128 0x5
 5872 028f 49       		.uleb128 0x49
 5873 0290 13       		.uleb128 0x13
 5874 0291 02       		.uleb128 0x2
 5875 0292 17       		.uleb128 0x17
 5876 0293 00       		.byte	0
 5877 0294 00       		.byte	0
 5878 0295 31       		.uleb128 0x31
 5879 0296 2E       		.uleb128 0x2e
ARM GAS  /tmp/cciOmULZ.s 			page 120


 5880 0297 01       		.byte	0x1
 5881 0298 3F       		.uleb128 0x3f
 5882 0299 19       		.uleb128 0x19
 5883 029a 03       		.uleb128 0x3
 5884 029b 0E       		.uleb128 0xe
 5885 029c 3A       		.uleb128 0x3a
 5886 029d 0B       		.uleb128 0xb
 5887 029e 3B       		.uleb128 0x3b
 5888 029f 05       		.uleb128 0x5
 5889 02a0 27       		.uleb128 0x27
 5890 02a1 19       		.uleb128 0x19
 5891 02a2 11       		.uleb128 0x11
 5892 02a3 01       		.uleb128 0x1
 5893 02a4 12       		.uleb128 0x12
 5894 02a5 06       		.uleb128 0x6
 5895 02a6 40       		.uleb128 0x40
 5896 02a7 18       		.uleb128 0x18
 5897 02a8 9742     		.uleb128 0x2117
 5898 02aa 19       		.uleb128 0x19
 5899 02ab 01       		.uleb128 0x1
 5900 02ac 13       		.uleb128 0x13
 5901 02ad 00       		.byte	0
 5902 02ae 00       		.byte	0
 5903 02af 32       		.uleb128 0x32
 5904 02b0 898201   		.uleb128 0x4109
 5905 02b3 01       		.byte	0x1
 5906 02b4 11       		.uleb128 0x11
 5907 02b5 01       		.uleb128 0x1
 5908 02b6 31       		.uleb128 0x31
 5909 02b7 13       		.uleb128 0x13
 5910 02b8 00       		.byte	0
 5911 02b9 00       		.byte	0
 5912 02ba 33       		.uleb128 0x33
 5913 02bb 8A8201   		.uleb128 0x410a
 5914 02be 00       		.byte	0
 5915 02bf 02       		.uleb128 0x2
 5916 02c0 18       		.uleb128 0x18
 5917 02c1 9142     		.uleb128 0x2111
 5918 02c3 18       		.uleb128 0x18
 5919 02c4 00       		.byte	0
 5920 02c5 00       		.byte	0
 5921 02c6 34       		.uleb128 0x34
 5922 02c7 05       		.uleb128 0x5
 5923 02c8 00       		.byte	0
 5924 02c9 03       		.uleb128 0x3
 5925 02ca 08       		.uleb128 0x8
 5926 02cb 3A       		.uleb128 0x3a
 5927 02cc 0B       		.uleb128 0xb
 5928 02cd 3B       		.uleb128 0x3b
 5929 02ce 05       		.uleb128 0x5
 5930 02cf 49       		.uleb128 0x49
 5931 02d0 13       		.uleb128 0x13
 5932 02d1 02       		.uleb128 0x2
 5933 02d2 18       		.uleb128 0x18
 5934 02d3 00       		.byte	0
 5935 02d4 00       		.byte	0
 5936 02d5 35       		.uleb128 0x35
ARM GAS  /tmp/cciOmULZ.s 			page 121


 5937 02d6 34       		.uleb128 0x34
 5938 02d7 00       		.byte	0
 5939 02d8 03       		.uleb128 0x3
 5940 02d9 0E       		.uleb128 0xe
 5941 02da 3A       		.uleb128 0x3a
 5942 02db 0B       		.uleb128 0xb
 5943 02dc 3B       		.uleb128 0x3b
 5944 02dd 05       		.uleb128 0x5
 5945 02de 49       		.uleb128 0x49
 5946 02df 13       		.uleb128 0x13
 5947 02e0 00       		.byte	0
 5948 02e1 00       		.byte	0
 5949 02e2 36       		.uleb128 0x36
 5950 02e3 34       		.uleb128 0x34
 5951 02e4 00       		.byte	0
 5952 02e5 03       		.uleb128 0x3
 5953 02e6 0E       		.uleb128 0xe
 5954 02e7 3A       		.uleb128 0x3a
 5955 02e8 0B       		.uleb128 0xb
 5956 02e9 3B       		.uleb128 0x3b
 5957 02ea 05       		.uleb128 0x5
 5958 02eb 49       		.uleb128 0x49
 5959 02ec 13       		.uleb128 0x13
 5960 02ed 02       		.uleb128 0x2
 5961 02ee 17       		.uleb128 0x17
 5962 02ef 00       		.byte	0
 5963 02f0 00       		.byte	0
 5964 02f1 37       		.uleb128 0x37
 5965 02f2 34       		.uleb128 0x34
 5966 02f3 00       		.byte	0
 5967 02f4 03       		.uleb128 0x3
 5968 02f5 0E       		.uleb128 0xe
 5969 02f6 3A       		.uleb128 0x3a
 5970 02f7 0B       		.uleb128 0xb
 5971 02f8 3B       		.uleb128 0x3b
 5972 02f9 05       		.uleb128 0x5
 5973 02fa 49       		.uleb128 0x49
 5974 02fb 13       		.uleb128 0x13
 5975 02fc 1C       		.uleb128 0x1c
 5976 02fd 0B       		.uleb128 0xb
 5977 02fe 00       		.byte	0
 5978 02ff 00       		.byte	0
 5979 0300 38       		.uleb128 0x38
 5980 0301 2E       		.uleb128 0x2e
 5981 0302 01       		.byte	0x1
 5982 0303 3F       		.uleb128 0x3f
 5983 0304 19       		.uleb128 0x19
 5984 0305 03       		.uleb128 0x3
 5985 0306 0E       		.uleb128 0xe
 5986 0307 3A       		.uleb128 0x3a
 5987 0308 0B       		.uleb128 0xb
 5988 0309 3B       		.uleb128 0x3b
 5989 030a 0B       		.uleb128 0xb
 5990 030b 27       		.uleb128 0x27
 5991 030c 19       		.uleb128 0x19
 5992 030d 11       		.uleb128 0x11
 5993 030e 01       		.uleb128 0x1
ARM GAS  /tmp/cciOmULZ.s 			page 122


 5994 030f 12       		.uleb128 0x12
 5995 0310 06       		.uleb128 0x6
 5996 0311 40       		.uleb128 0x40
 5997 0312 18       		.uleb128 0x18
 5998 0313 9742     		.uleb128 0x2117
 5999 0315 19       		.uleb128 0x19
 6000 0316 01       		.uleb128 0x1
 6001 0317 13       		.uleb128 0x13
 6002 0318 00       		.byte	0
 6003 0319 00       		.byte	0
 6004 031a 39       		.uleb128 0x39
 6005 031b 05       		.uleb128 0x5
 6006 031c 00       		.byte	0
 6007 031d 03       		.uleb128 0x3
 6008 031e 0E       		.uleb128 0xe
 6009 031f 3A       		.uleb128 0x3a
 6010 0320 0B       		.uleb128 0xb
 6011 0321 3B       		.uleb128 0x3b
 6012 0322 0B       		.uleb128 0xb
 6013 0323 49       		.uleb128 0x49
 6014 0324 13       		.uleb128 0x13
 6015 0325 02       		.uleb128 0x2
 6016 0326 17       		.uleb128 0x17
 6017 0327 00       		.byte	0
 6018 0328 00       		.byte	0
 6019 0329 3A       		.uleb128 0x3a
 6020 032a 05       		.uleb128 0x5
 6021 032b 00       		.byte	0
 6022 032c 03       		.uleb128 0x3
 6023 032d 08       		.uleb128 0x8
 6024 032e 3A       		.uleb128 0x3a
 6025 032f 0B       		.uleb128 0xb
 6026 0330 3B       		.uleb128 0x3b
 6027 0331 0B       		.uleb128 0xb
 6028 0332 49       		.uleb128 0x49
 6029 0333 13       		.uleb128 0x13
 6030 0334 02       		.uleb128 0x2
 6031 0335 17       		.uleb128 0x17
 6032 0336 00       		.byte	0
 6033 0337 00       		.byte	0
 6034 0338 3B       		.uleb128 0x3b
 6035 0339 1D       		.uleb128 0x1d
 6036 033a 01       		.byte	0x1
 6037 033b 31       		.uleb128 0x31
 6038 033c 13       		.uleb128 0x13
 6039 033d 52       		.uleb128 0x52
 6040 033e 01       		.uleb128 0x1
 6041 033f 55       		.uleb128 0x55
 6042 0340 17       		.uleb128 0x17
 6043 0341 58       		.uleb128 0x58
 6044 0342 0B       		.uleb128 0xb
 6045 0343 59       		.uleb128 0x59
 6046 0344 05       		.uleb128 0x5
 6047 0345 01       		.uleb128 0x1
 6048 0346 13       		.uleb128 0x13
 6049 0347 00       		.byte	0
 6050 0348 00       		.byte	0
ARM GAS  /tmp/cciOmULZ.s 			page 123


 6051 0349 3C       		.uleb128 0x3c
 6052 034a 05       		.uleb128 0x5
 6053 034b 00       		.byte	0
 6054 034c 31       		.uleb128 0x31
 6055 034d 13       		.uleb128 0x13
 6056 034e 02       		.uleb128 0x2
 6057 034f 17       		.uleb128 0x17
 6058 0350 00       		.byte	0
 6059 0351 00       		.byte	0
 6060 0352 3D       		.uleb128 0x3d
 6061 0353 898201   		.uleb128 0x4109
 6062 0356 01       		.byte	0x1
 6063 0357 11       		.uleb128 0x11
 6064 0358 01       		.uleb128 0x1
 6065 0359 31       		.uleb128 0x31
 6066 035a 13       		.uleb128 0x13
 6067 035b 01       		.uleb128 0x1
 6068 035c 13       		.uleb128 0x13
 6069 035d 00       		.byte	0
 6070 035e 00       		.byte	0
 6071 035f 3E       		.uleb128 0x3e
 6072 0360 2E       		.uleb128 0x2e
 6073 0361 01       		.byte	0x1
 6074 0362 03       		.uleb128 0x3
 6075 0363 0E       		.uleb128 0xe
 6076 0364 3A       		.uleb128 0x3a
 6077 0365 0B       		.uleb128 0xb
 6078 0366 3B       		.uleb128 0x3b
 6079 0367 0B       		.uleb128 0xb
 6080 0368 27       		.uleb128 0x27
 6081 0369 19       		.uleb128 0x19
 6082 036a 11       		.uleb128 0x11
 6083 036b 01       		.uleb128 0x1
 6084 036c 12       		.uleb128 0x12
 6085 036d 06       		.uleb128 0x6
 6086 036e 40       		.uleb128 0x40
 6087 036f 18       		.uleb128 0x18
 6088 0370 9742     		.uleb128 0x2117
 6089 0372 19       		.uleb128 0x19
 6090 0373 01       		.uleb128 0x1
 6091 0374 13       		.uleb128 0x13
 6092 0375 00       		.byte	0
 6093 0376 00       		.byte	0
 6094 0377 3F       		.uleb128 0x3f
 6095 0378 898201   		.uleb128 0x4109
 6096 037b 01       		.byte	0x1
 6097 037c 11       		.uleb128 0x11
 6098 037d 01       		.uleb128 0x1
 6099 037e 9542     		.uleb128 0x2115
 6100 0380 19       		.uleb128 0x19
 6101 0381 31       		.uleb128 0x31
 6102 0382 13       		.uleb128 0x13
 6103 0383 01       		.uleb128 0x1
 6104 0384 13       		.uleb128 0x13
 6105 0385 00       		.byte	0
 6106 0386 00       		.byte	0
 6107 0387 40       		.uleb128 0x40
ARM GAS  /tmp/cciOmULZ.s 			page 124


 6108 0388 898201   		.uleb128 0x4109
 6109 038b 01       		.byte	0x1
 6110 038c 11       		.uleb128 0x11
 6111 038d 01       		.uleb128 0x1
 6112 038e 9542     		.uleb128 0x2115
 6113 0390 19       		.uleb128 0x19
 6114 0391 31       		.uleb128 0x31
 6115 0392 13       		.uleb128 0x13
 6116 0393 00       		.byte	0
 6117 0394 00       		.byte	0
 6118 0395 41       		.uleb128 0x41
 6119 0396 2E       		.uleb128 0x2e
 6120 0397 01       		.byte	0x1
 6121 0398 03       		.uleb128 0x3
 6122 0399 0E       		.uleb128 0xe
 6123 039a 3A       		.uleb128 0x3a
 6124 039b 0B       		.uleb128 0xb
 6125 039c 3B       		.uleb128 0x3b
 6126 039d 0B       		.uleb128 0xb
 6127 039e 27       		.uleb128 0x27
 6128 039f 19       		.uleb128 0x19
 6129 03a0 20       		.uleb128 0x20
 6130 03a1 0B       		.uleb128 0xb
 6131 03a2 01       		.uleb128 0x1
 6132 03a3 13       		.uleb128 0x13
 6133 03a4 00       		.byte	0
 6134 03a5 00       		.byte	0
 6135 03a6 42       		.uleb128 0x42
 6136 03a7 05       		.uleb128 0x5
 6137 03a8 00       		.byte	0
 6138 03a9 03       		.uleb128 0x3
 6139 03aa 08       		.uleb128 0x8
 6140 03ab 3A       		.uleb128 0x3a
 6141 03ac 0B       		.uleb128 0xb
 6142 03ad 3B       		.uleb128 0x3b
 6143 03ae 0B       		.uleb128 0xb
 6144 03af 49       		.uleb128 0x49
 6145 03b0 13       		.uleb128 0x13
 6146 03b1 00       		.byte	0
 6147 03b2 00       		.byte	0
 6148 03b3 43       		.uleb128 0x43
 6149 03b4 05       		.uleb128 0x5
 6150 03b5 00       		.byte	0
 6151 03b6 03       		.uleb128 0x3
 6152 03b7 0E       		.uleb128 0xe
 6153 03b8 3A       		.uleb128 0x3a
 6154 03b9 0B       		.uleb128 0xb
 6155 03ba 3B       		.uleb128 0x3b
 6156 03bb 0B       		.uleb128 0xb
 6157 03bc 49       		.uleb128 0x49
 6158 03bd 13       		.uleb128 0x13
 6159 03be 00       		.byte	0
 6160 03bf 00       		.byte	0
 6161 03c0 44       		.uleb128 0x44
 6162 03c1 2E       		.uleb128 0x2e
 6163 03c2 00       		.byte	0
 6164 03c3 03       		.uleb128 0x3
ARM GAS  /tmp/cciOmULZ.s 			page 125


 6165 03c4 0E       		.uleb128 0xe
 6166 03c5 3A       		.uleb128 0x3a
 6167 03c6 0B       		.uleb128 0xb
 6168 03c7 3B       		.uleb128 0x3b
 6169 03c8 05       		.uleb128 0x5
 6170 03c9 27       		.uleb128 0x27
 6171 03ca 19       		.uleb128 0x19
 6172 03cb 49       		.uleb128 0x49
 6173 03cc 13       		.uleb128 0x13
 6174 03cd 20       		.uleb128 0x20
 6175 03ce 0B       		.uleb128 0xb
 6176 03cf 00       		.byte	0
 6177 03d0 00       		.byte	0
 6178 03d1 45       		.uleb128 0x45
 6179 03d2 2E       		.uleb128 0x2e
 6180 03d3 01       		.byte	0x1
 6181 03d4 03       		.uleb128 0x3
 6182 03d5 0E       		.uleb128 0xe
 6183 03d6 3A       		.uleb128 0x3a
 6184 03d7 0B       		.uleb128 0xb
 6185 03d8 3B       		.uleb128 0x3b
 6186 03d9 0B       		.uleb128 0xb
 6187 03da 27       		.uleb128 0x27
 6188 03db 19       		.uleb128 0x19
 6189 03dc 49       		.uleb128 0x49
 6190 03dd 13       		.uleb128 0x13
 6191 03de 20       		.uleb128 0x20
 6192 03df 0B       		.uleb128 0xb
 6193 03e0 01       		.uleb128 0x1
 6194 03e1 13       		.uleb128 0x13
 6195 03e2 00       		.byte	0
 6196 03e3 00       		.byte	0
 6197 03e4 46       		.uleb128 0x46
 6198 03e5 2E       		.uleb128 0x2e
 6199 03e6 00       		.byte	0
 6200 03e7 3F       		.uleb128 0x3f
 6201 03e8 19       		.uleb128 0x19
 6202 03e9 3C       		.uleb128 0x3c
 6203 03ea 19       		.uleb128 0x19
 6204 03eb 6E       		.uleb128 0x6e
 6205 03ec 0E       		.uleb128 0xe
 6206 03ed 03       		.uleb128 0x3
 6207 03ee 0E       		.uleb128 0xe
 6208 03ef 3A       		.uleb128 0x3a
 6209 03f0 0B       		.uleb128 0xb
 6210 03f1 3B       		.uleb128 0x3b
 6211 03f2 05       		.uleb128 0x5
 6212 03f3 00       		.byte	0
 6213 03f4 00       		.byte	0
 6214 03f5 47       		.uleb128 0x47
 6215 03f6 2E       		.uleb128 0x2e
 6216 03f7 00       		.byte	0
 6217 03f8 3F       		.uleb128 0x3f
 6218 03f9 19       		.uleb128 0x19
 6219 03fa 3C       		.uleb128 0x3c
 6220 03fb 19       		.uleb128 0x19
 6221 03fc 6E       		.uleb128 0x6e
ARM GAS  /tmp/cciOmULZ.s 			page 126


 6222 03fd 0E       		.uleb128 0xe
 6223 03fe 03       		.uleb128 0x3
 6224 03ff 0E       		.uleb128 0xe
 6225 0400 3A       		.uleb128 0x3a
 6226 0401 0B       		.uleb128 0xb
 6227 0402 3B       		.uleb128 0x3b
 6228 0403 0B       		.uleb128 0xb
 6229 0404 00       		.byte	0
 6230 0405 00       		.byte	0
 6231 0406 00       		.byte	0
 6232              		.section	.debug_loc,"",%progbits
 6233              	.Ldebug_loc0:
 6234              	.LLST29:
 6235 0000 00000000 		.4byte	.LVL84
 6236 0004 02000000 		.4byte	.LVL85
 6237 0008 0100     		.2byte	0x1
 6238 000a 50       		.byte	0x50
 6239 000b 02000000 		.4byte	.LVL85
 6240 000f 48000000 		.4byte	.LFE211
 6241 0013 0400     		.2byte	0x4
 6242 0015 F3       		.byte	0xf3
 6243 0016 01       		.uleb128 0x1
 6244 0017 50       		.byte	0x50
 6245 0018 9F       		.byte	0x9f
 6246 0019 00000000 		.4byte	0
 6247 001d 00000000 		.4byte	0
 6248              	.LLST25:
 6249 0021 00000000 		.4byte	.LVL70
 6250 0025 04000000 		.4byte	.LVL71
 6251 0029 0100     		.2byte	0x1
 6252 002b 50       		.byte	0x50
 6253 002c 04000000 		.4byte	.LVL71
 6254 0030 7C000000 		.4byte	.LFE210
 6255 0034 0400     		.2byte	0x4
 6256 0036 F3       		.byte	0xf3
 6257 0037 01       		.uleb128 0x1
 6258 0038 50       		.byte	0x50
 6259 0039 9F       		.byte	0x9f
 6260 003a 00000000 		.4byte	0
 6261 003e 00000000 		.4byte	0
 6262              	.LLST26:
 6263 0042 00000000 		.4byte	.LVL70
 6264 0046 26000000 		.4byte	.LVL73
 6265 004a 0100     		.2byte	0x1
 6266 004c 51       		.byte	0x51
 6267 004d 26000000 		.4byte	.LVL73
 6268 0051 36000000 		.4byte	.LVL77
 6269 0055 0300     		.2byte	0x3
 6270 0057 74       		.byte	0x74
 6271 0058 70       		.sleb128 -16
 6272 0059 9F       		.byte	0x9f
 6273 005a 36000000 		.4byte	.LVL77
 6274 005e 3C000000 		.4byte	.LVL78
 6275 0062 0400     		.2byte	0x4
 6276 0064 F3       		.byte	0xf3
 6277 0065 01       		.uleb128 0x1
 6278 0066 51       		.byte	0x51
ARM GAS  /tmp/cciOmULZ.s 			page 127


 6279 0067 9F       		.byte	0x9f
 6280 0068 3C000000 		.4byte	.LVL78
 6281 006c 5C000000 		.4byte	.LVL80
 6282 0070 0100     		.2byte	0x1
 6283 0072 51       		.byte	0x51
 6284 0073 5C000000 		.4byte	.LVL80
 6285 0077 7C000000 		.4byte	.LFE210
 6286 007b 0300     		.2byte	0x3
 6287 007d 74       		.byte	0x74
 6288 007e 70       		.sleb128 -16
 6289 007f 9F       		.byte	0x9f
 6290 0080 00000000 		.4byte	0
 6291 0084 00000000 		.4byte	0
 6292              	.LLST27:
 6293 0088 00000000 		.4byte	.LVL70
 6294 008c 16000000 		.4byte	.LVL72
 6295 0090 0100     		.2byte	0x1
 6296 0092 52       		.byte	0x52
 6297 0093 16000000 		.4byte	.LVL72
 6298 0097 3C000000 		.4byte	.LVL78
 6299 009b 0400     		.2byte	0x4
 6300 009d F3       		.byte	0xf3
 6301 009e 01       		.uleb128 0x1
 6302 009f 52       		.byte	0x52
 6303 00a0 9F       		.byte	0x9f
 6304 00a1 3C000000 		.4byte	.LVL78
 6305 00a5 46000000 		.4byte	.LVL79
 6306 00a9 0100     		.2byte	0x1
 6307 00ab 52       		.byte	0x52
 6308 00ac 46000000 		.4byte	.LVL79
 6309 00b0 7C000000 		.4byte	.LFE210
 6310 00b4 0400     		.2byte	0x4
 6311 00b6 F3       		.byte	0xf3
 6312 00b7 01       		.uleb128 0x1
 6313 00b8 52       		.byte	0x52
 6314 00b9 9F       		.byte	0x9f
 6315 00ba 00000000 		.4byte	0
 6316 00be 00000000 		.4byte	0
 6317              	.LLST28:
 6318 00c2 2A000000 		.4byte	.LVL74
 6319 00c6 2E000000 		.4byte	.LVL75
 6320 00ca 0800     		.2byte	0x8
 6321 00cc 73       		.byte	0x73
 6322 00cd 00       		.sleb128 0
 6323 00ce 74       		.byte	0x74
 6324 00cf 00       		.sleb128 0
 6325 00d0 1C       		.byte	0x1c
 6326 00d1 23       		.byte	0x23
 6327 00d2 08       		.uleb128 0x8
 6328 00d3 9F       		.byte	0x9f
 6329 00d4 2E000000 		.4byte	.LVL75
 6330 00d8 34000000 		.4byte	.LVL76
 6331 00dc 0800     		.2byte	0x8
 6332 00de 73       		.byte	0x73
 6333 00df 00       		.sleb128 0
 6334 00e0 74       		.byte	0x74
 6335 00e1 00       		.sleb128 0
ARM GAS  /tmp/cciOmULZ.s 			page 128


 6336 00e2 1C       		.byte	0x1c
 6337 00e3 23       		.byte	0x23
 6338 00e4 07       		.uleb128 0x7
 6339 00e5 9F       		.byte	0x9f
 6340 00e6 34000000 		.4byte	.LVL76
 6341 00ea 36000000 		.4byte	.LVL77
 6342 00ee 0800     		.2byte	0x8
 6343 00f0 73       		.byte	0x73
 6344 00f1 00       		.sleb128 0
 6345 00f2 74       		.byte	0x74
 6346 00f3 00       		.sleb128 0
 6347 00f4 1C       		.byte	0x1c
 6348 00f5 23       		.byte	0x23
 6349 00f6 08       		.uleb128 0x8
 6350 00f7 9F       		.byte	0x9f
 6351 00f8 5E000000 		.4byte	.LVL81
 6352 00fc 62000000 		.4byte	.LVL82
 6353 0100 0800     		.2byte	0x8
 6354 0102 73       		.byte	0x73
 6355 0103 00       		.sleb128 0
 6356 0104 74       		.byte	0x74
 6357 0105 00       		.sleb128 0
 6358 0106 1C       		.byte	0x1c
 6359 0107 23       		.byte	0x23
 6360 0108 08       		.uleb128 0x8
 6361 0109 9F       		.byte	0x9f
 6362 010a 62000000 		.4byte	.LVL82
 6363 010e 68000000 		.4byte	.LVL83
 6364 0112 0800     		.2byte	0x8
 6365 0114 73       		.byte	0x73
 6366 0115 00       		.sleb128 0
 6367 0116 74       		.byte	0x74
 6368 0117 00       		.sleb128 0
 6369 0118 1C       		.byte	0x1c
 6370 0119 23       		.byte	0x23
 6371 011a 07       		.uleb128 0x7
 6372 011b 9F       		.byte	0x9f
 6373 011c 68000000 		.4byte	.LVL83
 6374 0120 7C000000 		.4byte	.LFE210
 6375 0124 0800     		.2byte	0x8
 6376 0126 73       		.byte	0x73
 6377 0127 00       		.sleb128 0
 6378 0128 74       		.byte	0x74
 6379 0129 00       		.sleb128 0
 6380 012a 1C       		.byte	0x1c
 6381 012b 23       		.byte	0x23
 6382 012c 08       		.uleb128 0x8
 6383 012d 9F       		.byte	0x9f
 6384 012e 00000000 		.4byte	0
 6385 0132 00000000 		.4byte	0
 6386              	.LLST22:
 6387 0136 00000000 		.4byte	.LVL62
 6388 013a 1C000000 		.4byte	.LVL64
 6389 013e 0100     		.2byte	0x1
 6390 0140 50       		.byte	0x50
 6391 0141 1C000000 		.4byte	.LVL64
 6392 0145 2A000000 		.4byte	.LVL66
ARM GAS  /tmp/cciOmULZ.s 			page 129


 6393 0149 0400     		.2byte	0x4
 6394 014b F3       		.byte	0xf3
 6395 014c 01       		.uleb128 0x1
 6396 014d 50       		.byte	0x50
 6397 014e 9F       		.byte	0x9f
 6398 014f 2A000000 		.4byte	.LVL66
 6399 0153 30000000 		.4byte	.LVL67
 6400 0157 0100     		.2byte	0x1
 6401 0159 50       		.byte	0x50
 6402 015a 30000000 		.4byte	.LVL67
 6403 015e 34000000 		.4byte	.LVL69
 6404 0162 0400     		.2byte	0x4
 6405 0164 F3       		.byte	0xf3
 6406 0165 01       		.uleb128 0x1
 6407 0166 50       		.byte	0x50
 6408 0167 9F       		.byte	0x9f
 6409 0168 34000000 		.4byte	.LVL69
 6410 016c 48000000 		.4byte	.LFE209
 6411 0170 0100     		.2byte	0x1
 6412 0172 50       		.byte	0x50
 6413 0173 00000000 		.4byte	0
 6414 0177 00000000 		.4byte	0
 6415              	.LLST23:
 6416 017b 00000000 		.4byte	.LVL62
 6417 017f 08000000 		.4byte	.LVL63
 6418 0183 0100     		.2byte	0x1
 6419 0185 51       		.byte	0x51
 6420 0186 08000000 		.4byte	.LVL63
 6421 018a 28000000 		.4byte	.LVL65
 6422 018e 0100     		.2byte	0x1
 6423 0190 55       		.byte	0x55
 6424 0191 28000000 		.4byte	.LVL65
 6425 0195 2A000000 		.4byte	.LVL66
 6426 0199 0400     		.2byte	0x4
 6427 019b F3       		.byte	0xf3
 6428 019c 01       		.uleb128 0x1
 6429 019d 51       		.byte	0x51
 6430 019e 9F       		.byte	0x9f
 6431 019f 2A000000 		.4byte	.LVL66
 6432 01a3 32000000 		.4byte	.LVL68
 6433 01a7 0100     		.2byte	0x1
 6434 01a9 55       		.byte	0x55
 6435 01aa 32000000 		.4byte	.LVL68
 6436 01ae 34000000 		.4byte	.LVL69
 6437 01b2 0400     		.2byte	0x4
 6438 01b4 F3       		.byte	0xf3
 6439 01b5 01       		.uleb128 0x1
 6440 01b6 51       		.byte	0x51
 6441 01b7 9F       		.byte	0x9f
 6442 01b8 34000000 		.4byte	.LVL69
 6443 01bc 48000000 		.4byte	.LFE209
 6444 01c0 0100     		.2byte	0x1
 6445 01c2 55       		.byte	0x55
 6446 01c3 00000000 		.4byte	0
 6447 01c7 00000000 		.4byte	0
 6448              	.LLST24:
 6449 01cb 00000000 		.4byte	.LVL62
ARM GAS  /tmp/cciOmULZ.s 			page 130


 6450 01cf 1C000000 		.4byte	.LVL64
 6451 01d3 0100     		.2byte	0x1
 6452 01d5 52       		.byte	0x52
 6453 01d6 1C000000 		.4byte	.LVL64
 6454 01da 2A000000 		.4byte	.LVL66
 6455 01de 0400     		.2byte	0x4
 6456 01e0 F3       		.byte	0xf3
 6457 01e1 01       		.uleb128 0x1
 6458 01e2 52       		.byte	0x52
 6459 01e3 9F       		.byte	0x9f
 6460 01e4 2A000000 		.4byte	.LVL66
 6461 01e8 48000000 		.4byte	.LFE209
 6462 01ec 0100     		.2byte	0x1
 6463 01ee 52       		.byte	0x52
 6464 01ef 00000000 		.4byte	0
 6465 01f3 00000000 		.4byte	0
 6466              	.LLST19:
 6467 01f7 00000000 		.4byte	.LVL54
 6468 01fb 1C000000 		.4byte	.LVL56
 6469 01ff 0100     		.2byte	0x1
 6470 0201 50       		.byte	0x50
 6471 0202 1C000000 		.4byte	.LVL56
 6472 0206 2A000000 		.4byte	.LVL58
 6473 020a 0400     		.2byte	0x4
 6474 020c F3       		.byte	0xf3
 6475 020d 01       		.uleb128 0x1
 6476 020e 50       		.byte	0x50
 6477 020f 9F       		.byte	0x9f
 6478 0210 2A000000 		.4byte	.LVL58
 6479 0214 30000000 		.4byte	.LVL59
 6480 0218 0100     		.2byte	0x1
 6481 021a 50       		.byte	0x50
 6482 021b 30000000 		.4byte	.LVL59
 6483 021f 34000000 		.4byte	.LVL61
 6484 0223 0400     		.2byte	0x4
 6485 0225 F3       		.byte	0xf3
 6486 0226 01       		.uleb128 0x1
 6487 0227 50       		.byte	0x50
 6488 0228 9F       		.byte	0x9f
 6489 0229 34000000 		.4byte	.LVL61
 6490 022d 48000000 		.4byte	.LFE208
 6491 0231 0100     		.2byte	0x1
 6492 0233 50       		.byte	0x50
 6493 0234 00000000 		.4byte	0
 6494 0238 00000000 		.4byte	0
 6495              	.LLST20:
 6496 023c 00000000 		.4byte	.LVL54
 6497 0240 08000000 		.4byte	.LVL55
 6498 0244 0100     		.2byte	0x1
 6499 0246 51       		.byte	0x51
 6500 0247 08000000 		.4byte	.LVL55
 6501 024b 28000000 		.4byte	.LVL57
 6502 024f 0100     		.2byte	0x1
 6503 0251 55       		.byte	0x55
 6504 0252 28000000 		.4byte	.LVL57
 6505 0256 2A000000 		.4byte	.LVL58
 6506 025a 0400     		.2byte	0x4
ARM GAS  /tmp/cciOmULZ.s 			page 131


 6507 025c F3       		.byte	0xf3
 6508 025d 01       		.uleb128 0x1
 6509 025e 51       		.byte	0x51
 6510 025f 9F       		.byte	0x9f
 6511 0260 2A000000 		.4byte	.LVL58
 6512 0264 32000000 		.4byte	.LVL60
 6513 0268 0100     		.2byte	0x1
 6514 026a 55       		.byte	0x55
 6515 026b 32000000 		.4byte	.LVL60
 6516 026f 34000000 		.4byte	.LVL61
 6517 0273 0400     		.2byte	0x4
 6518 0275 F3       		.byte	0xf3
 6519 0276 01       		.uleb128 0x1
 6520 0277 51       		.byte	0x51
 6521 0278 9F       		.byte	0x9f
 6522 0279 34000000 		.4byte	.LVL61
 6523 027d 48000000 		.4byte	.LFE208
 6524 0281 0100     		.2byte	0x1
 6525 0283 55       		.byte	0x55
 6526 0284 00000000 		.4byte	0
 6527 0288 00000000 		.4byte	0
 6528              	.LLST21:
 6529 028c 00000000 		.4byte	.LVL54
 6530 0290 1C000000 		.4byte	.LVL56
 6531 0294 0100     		.2byte	0x1
 6532 0296 52       		.byte	0x52
 6533 0297 1C000000 		.4byte	.LVL56
 6534 029b 2A000000 		.4byte	.LVL58
 6535 029f 0400     		.2byte	0x4
 6536 02a1 F3       		.byte	0xf3
 6537 02a2 01       		.uleb128 0x1
 6538 02a3 52       		.byte	0x52
 6539 02a4 9F       		.byte	0x9f
 6540 02a5 2A000000 		.4byte	.LVL58
 6541 02a9 48000000 		.4byte	.LFE208
 6542 02ad 0100     		.2byte	0x1
 6543 02af 52       		.byte	0x52
 6544 02b0 00000000 		.4byte	0
 6545 02b4 00000000 		.4byte	0
 6546              	.LLST16:
 6547 02b8 00000000 		.4byte	.LVL46
 6548 02bc 1C000000 		.4byte	.LVL48
 6549 02c0 0100     		.2byte	0x1
 6550 02c2 50       		.byte	0x50
 6551 02c3 1C000000 		.4byte	.LVL48
 6552 02c7 2A000000 		.4byte	.LVL50
 6553 02cb 0400     		.2byte	0x4
 6554 02cd F3       		.byte	0xf3
 6555 02ce 01       		.uleb128 0x1
 6556 02cf 50       		.byte	0x50
 6557 02d0 9F       		.byte	0x9f
 6558 02d1 2A000000 		.4byte	.LVL50
 6559 02d5 30000000 		.4byte	.LVL51
 6560 02d9 0100     		.2byte	0x1
 6561 02db 50       		.byte	0x50
 6562 02dc 30000000 		.4byte	.LVL51
 6563 02e0 34000000 		.4byte	.LVL53
ARM GAS  /tmp/cciOmULZ.s 			page 132


 6564 02e4 0400     		.2byte	0x4
 6565 02e6 F3       		.byte	0xf3
 6566 02e7 01       		.uleb128 0x1
 6567 02e8 50       		.byte	0x50
 6568 02e9 9F       		.byte	0x9f
 6569 02ea 34000000 		.4byte	.LVL53
 6570 02ee 48000000 		.4byte	.LFE207
 6571 02f2 0100     		.2byte	0x1
 6572 02f4 50       		.byte	0x50
 6573 02f5 00000000 		.4byte	0
 6574 02f9 00000000 		.4byte	0
 6575              	.LLST17:
 6576 02fd 00000000 		.4byte	.LVL46
 6577 0301 08000000 		.4byte	.LVL47
 6578 0305 0100     		.2byte	0x1
 6579 0307 51       		.byte	0x51
 6580 0308 08000000 		.4byte	.LVL47
 6581 030c 28000000 		.4byte	.LVL49
 6582 0310 0100     		.2byte	0x1
 6583 0312 55       		.byte	0x55
 6584 0313 28000000 		.4byte	.LVL49
 6585 0317 2A000000 		.4byte	.LVL50
 6586 031b 0400     		.2byte	0x4
 6587 031d F3       		.byte	0xf3
 6588 031e 01       		.uleb128 0x1
 6589 031f 51       		.byte	0x51
 6590 0320 9F       		.byte	0x9f
 6591 0321 2A000000 		.4byte	.LVL50
 6592 0325 32000000 		.4byte	.LVL52
 6593 0329 0100     		.2byte	0x1
 6594 032b 55       		.byte	0x55
 6595 032c 32000000 		.4byte	.LVL52
 6596 0330 34000000 		.4byte	.LVL53
 6597 0334 0400     		.2byte	0x4
 6598 0336 F3       		.byte	0xf3
 6599 0337 01       		.uleb128 0x1
 6600 0338 51       		.byte	0x51
 6601 0339 9F       		.byte	0x9f
 6602 033a 34000000 		.4byte	.LVL53
 6603 033e 48000000 		.4byte	.LFE207
 6604 0342 0100     		.2byte	0x1
 6605 0344 55       		.byte	0x55
 6606 0345 00000000 		.4byte	0
 6607 0349 00000000 		.4byte	0
 6608              	.LLST18:
 6609 034d 00000000 		.4byte	.LVL46
 6610 0351 1C000000 		.4byte	.LVL48
 6611 0355 0100     		.2byte	0x1
 6612 0357 52       		.byte	0x52
 6613 0358 1C000000 		.4byte	.LVL48
 6614 035c 2A000000 		.4byte	.LVL50
 6615 0360 0400     		.2byte	0x4
 6616 0362 F3       		.byte	0xf3
 6617 0363 01       		.uleb128 0x1
 6618 0364 52       		.byte	0x52
 6619 0365 9F       		.byte	0x9f
 6620 0366 2A000000 		.4byte	.LVL50
ARM GAS  /tmp/cciOmULZ.s 			page 133


 6621 036a 48000000 		.4byte	.LFE207
 6622 036e 0100     		.2byte	0x1
 6623 0370 52       		.byte	0x52
 6624 0371 00000000 		.4byte	0
 6625 0375 00000000 		.4byte	0
 6626              	.LLST14:
 6627 0379 00000000 		.4byte	.LVL41
 6628 037d 02000000 		.4byte	.LVL42
 6629 0381 0100     		.2byte	0x1
 6630 0383 50       		.byte	0x50
 6631 0384 02000000 		.4byte	.LVL42
 6632 0388 5C000000 		.4byte	.LFE206
 6633 038c 0400     		.2byte	0x4
 6634 038e F3       		.byte	0xf3
 6635 038f 01       		.uleb128 0x1
 6636 0390 50       		.byte	0x50
 6637 0391 9F       		.byte	0x9f
 6638 0392 00000000 		.4byte	0
 6639 0396 00000000 		.4byte	0
 6640              	.LLST15:
 6641 039a 00000000 		.4byte	.LVL41
 6642 039e 20000000 		.4byte	.LVL43
 6643 03a2 0100     		.2byte	0x1
 6644 03a4 52       		.byte	0x52
 6645 03a5 20000000 		.4byte	.LVL43
 6646 03a9 28000000 		.4byte	.LVL44
 6647 03ad 0400     		.2byte	0x4
 6648 03af F3       		.byte	0xf3
 6649 03b0 01       		.uleb128 0x1
 6650 03b1 52       		.byte	0x52
 6651 03b2 9F       		.byte	0x9f
 6652 03b3 28000000 		.4byte	.LVL44
 6653 03b7 42000000 		.4byte	.LVL45
 6654 03bb 0100     		.2byte	0x1
 6655 03bd 52       		.byte	0x52
 6656 03be 42000000 		.4byte	.LVL45
 6657 03c2 5C000000 		.4byte	.LFE206
 6658 03c6 0400     		.2byte	0x4
 6659 03c8 F3       		.byte	0xf3
 6660 03c9 01       		.uleb128 0x1
 6661 03ca 52       		.byte	0x52
 6662 03cb 9F       		.byte	0x9f
 6663 03cc 00000000 		.4byte	0
 6664 03d0 00000000 		.4byte	0
 6665              	.LLST12:
 6666 03d4 00000000 		.4byte	.LVL36
 6667 03d8 04000000 		.4byte	.LVL37
 6668 03dc 0100     		.2byte	0x1
 6669 03de 50       		.byte	0x50
 6670 03df 04000000 		.4byte	.LVL37
 6671 03e3 3C000000 		.4byte	.LFE205
 6672 03e7 0400     		.2byte	0x4
 6673 03e9 F3       		.byte	0xf3
 6674 03ea 01       		.uleb128 0x1
 6675 03eb 50       		.byte	0x50
 6676 03ec 9F       		.byte	0x9f
 6677 03ed 00000000 		.4byte	0
ARM GAS  /tmp/cciOmULZ.s 			page 134


 6678 03f1 00000000 		.4byte	0
 6679              	.LLST13:
 6680 03f5 00000000 		.4byte	.LVL36
 6681 03f9 10000000 		.4byte	.LVL38
 6682 03fd 0100     		.2byte	0x1
 6683 03ff 51       		.byte	0x51
 6684 0400 10000000 		.4byte	.LVL38
 6685 0404 1A000000 		.4byte	.LVL39
 6686 0408 0400     		.2byte	0x4
 6687 040a F3       		.byte	0xf3
 6688 040b 01       		.uleb128 0x1
 6689 040c 51       		.byte	0x51
 6690 040d 9F       		.byte	0x9f
 6691 040e 1A000000 		.4byte	.LVL39
 6692 0412 22000000 		.4byte	.LVL40
 6693 0416 0100     		.2byte	0x1
 6694 0418 51       		.byte	0x51
 6695 0419 22000000 		.4byte	.LVL40
 6696 041d 3C000000 		.4byte	.LFE205
 6697 0421 0400     		.2byte	0x4
 6698 0423 F3       		.byte	0xf3
 6699 0424 01       		.uleb128 0x1
 6700 0425 51       		.byte	0x51
 6701 0426 9F       		.byte	0x9f
 6702 0427 00000000 		.4byte	0
 6703 042b 00000000 		.4byte	0
 6704              	.LLST11:
 6705 042f 00000000 		.4byte	.LVL32
 6706 0433 07000000 		.4byte	.LVL33-1
 6707 0437 0100     		.2byte	0x1
 6708 0439 50       		.byte	0x50
 6709 043a 07000000 		.4byte	.LVL33-1
 6710 043e 1A000000 		.4byte	.LFE202
 6711 0442 0100     		.2byte	0x1
 6712 0444 54       		.byte	0x54
 6713 0445 00000000 		.4byte	0
 6714 0449 00000000 		.4byte	0
 6715              	.LLST9:
 6716 044d 00000000 		.4byte	.LVL21
 6717 0451 12000000 		.4byte	.LVL22
 6718 0455 0100     		.2byte	0x1
 6719 0457 51       		.byte	0x51
 6720 0458 12000000 		.4byte	.LVL22
 6721 045c 2C000000 		.4byte	.LFE192
 6722 0460 0400     		.2byte	0x4
 6723 0462 F3       		.byte	0xf3
 6724 0463 01       		.uleb128 0x1
 6725 0464 51       		.byte	0x51
 6726 0465 9F       		.byte	0x9f
 6727 0466 00000000 		.4byte	0
 6728 046a 00000000 		.4byte	0
 6729              	.LLST10:
 6730 046e 00000000 		.4byte	.LVL21
 6731 0472 12000000 		.4byte	.LVL22
 6732 0476 1700     		.2byte	0x17
 6733 0478 0C       		.byte	0xc
 6734 0479 80D1F008 		.4byte	0x8f0d180
ARM GAS  /tmp/cciOmULZ.s 			page 135


 6735 047d F7       		.byte	0xf7
 6736 047e 25       		.uleb128 0x25
 6737 047f 71       		.byte	0x71
 6738 0480 00       		.sleb128 0
 6739 0481 F7       		.byte	0xf7
 6740 0482 25       		.uleb128 0x25
 6741 0483 1B       		.byte	0x1b
 6742 0484 F7       		.byte	0xf7
 6743 0485 00       		.uleb128 0
 6744 0486 F7       		.byte	0xf7
 6745 0487 25       		.uleb128 0x25
 6746 0488 3F       		.byte	0x3f
 6747 0489 F7       		.byte	0xf7
 6748 048a 25       		.uleb128 0x25
 6749 048b 1B       		.byte	0x1b
 6750 048c F7       		.byte	0xf7
 6751 048d 00       		.uleb128 0
 6752 048e 9F       		.byte	0x9f
 6753 048f 12000000 		.4byte	.LVL22
 6754 0493 2C000000 		.4byte	.LFE192
 6755 0497 1800     		.2byte	0x18
 6756 0499 0C       		.byte	0xc
 6757 049a 80D1F008 		.4byte	0x8f0d180
 6758 049e F7       		.byte	0xf7
 6759 049f 25       		.uleb128 0x25
 6760 04a0 F3       		.byte	0xf3
 6761 04a1 01       		.uleb128 0x1
 6762 04a2 51       		.byte	0x51
 6763 04a3 F7       		.byte	0xf7
 6764 04a4 25       		.uleb128 0x25
 6765 04a5 1B       		.byte	0x1b
 6766 04a6 F7       		.byte	0xf7
 6767 04a7 00       		.uleb128 0
 6768 04a8 F7       		.byte	0xf7
 6769 04a9 25       		.uleb128 0x25
 6770 04aa 3F       		.byte	0x3f
 6771 04ab F7       		.byte	0xf7
 6772 04ac 25       		.uleb128 0x25
 6773 04ad 1B       		.byte	0x1b
 6774 04ae F7       		.byte	0xf7
 6775 04af 00       		.uleb128 0
 6776 04b0 9F       		.byte	0x9f
 6777 04b1 00000000 		.4byte	0
 6778 04b5 00000000 		.4byte	0
 6779              	.LLST7:
 6780 04b9 00000000 		.4byte	.LVL19
 6781 04bd 0A000000 		.4byte	.LVL20
 6782 04c1 0100     		.2byte	0x1
 6783 04c3 51       		.byte	0x51
 6784 04c4 0A000000 		.4byte	.LVL20
 6785 04c8 2C000000 		.4byte	.LFE191
 6786 04cc 0400     		.2byte	0x4
 6787 04ce F3       		.byte	0xf3
 6788 04cf 01       		.uleb128 0x1
 6789 04d0 51       		.byte	0x51
 6790 04d1 9F       		.byte	0x9f
 6791 04d2 00000000 		.4byte	0
ARM GAS  /tmp/cciOmULZ.s 			page 136


 6792 04d6 00000000 		.4byte	0
 6793              	.LLST8:
 6794 04da 00000000 		.4byte	.LVL19
 6795 04de 0A000000 		.4byte	.LVL20
 6796 04e2 1700     		.2byte	0x17
 6797 04e4 0C       		.byte	0xc
 6798 04e5 80D1F008 		.4byte	0x8f0d180
 6799 04e9 F7       		.byte	0xf7
 6800 04ea 25       		.uleb128 0x25
 6801 04eb 71       		.byte	0x71
 6802 04ec 00       		.sleb128 0
 6803 04ed F7       		.byte	0xf7
 6804 04ee 25       		.uleb128 0x25
 6805 04ef 1B       		.byte	0x1b
 6806 04f0 F7       		.byte	0xf7
 6807 04f1 00       		.uleb128 0
 6808 04f2 F7       		.byte	0xf7
 6809 04f3 25       		.uleb128 0x25
 6810 04f4 44       		.byte	0x44
 6811 04f5 F7       		.byte	0xf7
 6812 04f6 25       		.uleb128 0x25
 6813 04f7 1B       		.byte	0x1b
 6814 04f8 F7       		.byte	0xf7
 6815 04f9 00       		.uleb128 0
 6816 04fa 9F       		.byte	0x9f
 6817 04fb 0A000000 		.4byte	.LVL20
 6818 04ff 2C000000 		.4byte	.LFE191
 6819 0503 1800     		.2byte	0x18
 6820 0505 0C       		.byte	0xc
 6821 0506 80D1F008 		.4byte	0x8f0d180
 6822 050a F7       		.byte	0xf7
 6823 050b 25       		.uleb128 0x25
 6824 050c F3       		.byte	0xf3
 6825 050d 01       		.uleb128 0x1
 6826 050e 51       		.byte	0x51
 6827 050f F7       		.byte	0xf7
 6828 0510 25       		.uleb128 0x25
 6829 0511 1B       		.byte	0x1b
 6830 0512 F7       		.byte	0xf7
 6831 0513 00       		.uleb128 0
 6832 0514 F7       		.byte	0xf7
 6833 0515 25       		.uleb128 0x25
 6834 0516 44       		.byte	0x44
 6835 0517 F7       		.byte	0xf7
 6836 0518 25       		.uleb128 0x25
 6837 0519 1B       		.byte	0x1b
 6838 051a F7       		.byte	0xf7
 6839 051b 00       		.uleb128 0
 6840 051c 9F       		.byte	0x9f
 6841 051d 00000000 		.4byte	0
 6842 0521 00000000 		.4byte	0
 6843              	.LLST1:
 6844 0525 00000000 		.4byte	.LVL5
 6845 0529 06000000 		.4byte	.LVL6
 6846 052d 0100     		.2byte	0x1
 6847 052f 50       		.byte	0x50
 6848 0530 06000000 		.4byte	.LVL6
ARM GAS  /tmp/cciOmULZ.s 			page 137


 6849 0534 3C000000 		.4byte	.LVL12
 6850 0538 0100     		.2byte	0x1
 6851 053a 56       		.byte	0x56
 6852 053b 3C000000 		.4byte	.LVL12
 6853 053f 60010000 		.4byte	.LVL15
 6854 0543 0400     		.2byte	0x4
 6855 0545 F3       		.byte	0xf3
 6856 0546 01       		.uleb128 0x1
 6857 0547 50       		.byte	0x50
 6858 0548 9F       		.byte	0x9f
 6859 0549 60010000 		.4byte	.LVL15
 6860 054d 68010000 		.4byte	.LVL16
 6861 0551 0100     		.2byte	0x1
 6862 0553 56       		.byte	0x56
 6863 0554 68010000 		.4byte	.LVL16
 6864 0558 BE010000 		.4byte	.LVL17
 6865 055c 0400     		.2byte	0x4
 6866 055e F3       		.byte	0xf3
 6867 055f 01       		.uleb128 0x1
 6868 0560 50       		.byte	0x50
 6869 0561 9F       		.byte	0x9f
 6870 0562 BE010000 		.4byte	.LVL17
 6871 0566 C6010000 		.4byte	.LVL18
 6872 056a 0100     		.2byte	0x1
 6873 056c 56       		.byte	0x56
 6874 056d C6010000 		.4byte	.LVL18
 6875 0571 50020000 		.4byte	.LFE190
 6876 0575 0400     		.2byte	0x4
 6877 0577 F3       		.byte	0xf3
 6878 0578 01       		.uleb128 0x1
 6879 0579 50       		.byte	0x50
 6880 057a 9F       		.byte	0x9f
 6881 057b 00000000 		.4byte	0
 6882 057f 00000000 		.4byte	0
 6883              	.LLST2:
 6884 0583 00000000 		.4byte	.LVL5
 6885 0587 0F000000 		.4byte	.LVL7-1
 6886 058b 0100     		.2byte	0x1
 6887 058d 51       		.byte	0x51
 6888 058e 0F000000 		.4byte	.LVL7-1
 6889 0592 50020000 		.4byte	.LFE190
 6890 0596 0100     		.2byte	0x1
 6891 0598 54       		.byte	0x54
 6892 0599 00000000 		.4byte	0
 6893 059d 00000000 		.4byte	0
 6894              	.LLST3:
 6895 05a1 00000000 		.4byte	.LVL5
 6896 05a5 0F000000 		.4byte	.LVL7-1
 6897 05a9 0100     		.2byte	0x1
 6898 05ab 52       		.byte	0x52
 6899 05ac 0F000000 		.4byte	.LVL7-1
 6900 05b0 50020000 		.4byte	.LFE190
 6901 05b4 0100     		.2byte	0x1
 6902 05b6 55       		.byte	0x55
 6903 05b7 00000000 		.4byte	0
 6904 05bb 00000000 		.4byte	0
 6905              	.LLST4:
ARM GAS  /tmp/cciOmULZ.s 			page 138


 6906 05bf 30000000 		.4byte	.LVL11
 6907 05c3 4A000000 		.4byte	.LVL13
 6908 05c7 0100     		.2byte	0x1
 6909 05c9 54       		.byte	0x54
 6910 05ca 60010000 		.4byte	.LVL15
 6911 05ce 50020000 		.4byte	.LFE190
 6912 05d2 0100     		.2byte	0x1
 6913 05d4 54       		.byte	0x54
 6914 05d5 00000000 		.4byte	0
 6915 05d9 00000000 		.4byte	0
 6916              	.LLST5:
 6917 05dd 4A000000 		.4byte	.LVL13
 6918 05e1 54010000 		.4byte	.LVL14
 6919 05e5 0100     		.2byte	0x1
 6920 05e7 55       		.byte	0x55
 6921 05e8 00000000 		.4byte	0
 6922 05ec 00000000 		.4byte	0
 6923              	.LLST6:
 6924 05f0 4A000000 		.4byte	.LVL13
 6925 05f4 54010000 		.4byte	.LVL14
 6926 05f8 0100     		.2byte	0x1
 6927 05fa 54       		.byte	0x54
 6928 05fb 00000000 		.4byte	0
 6929 05ff 00000000 		.4byte	0
 6930              	.LLST0:
 6931 0603 00000000 		.4byte	.LVL0
 6932 0607 12000000 		.4byte	.LVL1
 6933 060b 0100     		.2byte	0x1
 6934 060d 50       		.byte	0x50
 6935 060e 12000000 		.4byte	.LVL1
 6936 0612 16000000 		.4byte	.LVL2
 6937 0616 0400     		.2byte	0x4
 6938 0618 F3       		.byte	0xf3
 6939 0619 01       		.uleb128 0x1
 6940 061a 50       		.byte	0x50
 6941 061b 9F       		.byte	0x9f
 6942 061c 16000000 		.4byte	.LVL2
 6943 0620 18000000 		.4byte	.LVL3
 6944 0624 0100     		.2byte	0x1
 6945 0626 50       		.byte	0x50
 6946 0627 18000000 		.4byte	.LVL3
 6947 062b 24000000 		.4byte	.LFE189
 6948 062f 0400     		.2byte	0x4
 6949 0631 F3       		.byte	0xf3
 6950 0632 01       		.uleb128 0x1
 6951 0633 50       		.byte	0x50
 6952 0634 9F       		.byte	0x9f
 6953 0635 00000000 		.4byte	0
 6954 0639 00000000 		.4byte	0
 6955              		.section	.debug_aranges,"",%progbits
 6956 0000 CC000000 		.4byte	0xcc
 6957 0004 0200     		.2byte	0x2
 6958 0006 00000000 		.4byte	.Ldebug_info0
 6959 000a 04       		.byte	0x4
 6960 000b 00       		.byte	0
 6961 000c 0000     		.2byte	0
 6962 000e 0000     		.2byte	0
ARM GAS  /tmp/cciOmULZ.s 			page 139


 6963 0010 00000000 		.4byte	.LFB189
 6964 0014 24000000 		.4byte	.LFE189-.LFB189
 6965 0018 00000000 		.4byte	.LFB190
 6966 001c 50020000 		.4byte	.LFE190-.LFB190
 6967 0020 00000000 		.4byte	.LFB191
 6968 0024 2C000000 		.4byte	.LFE191-.LFB191
 6969 0028 00000000 		.4byte	.LFB192
 6970 002c 2C000000 		.4byte	.LFE192-.LFB192
 6971 0030 00000000 		.4byte	.LFB193
 6972 0034 12000000 		.4byte	.LFE193-.LFB193
 6973 0038 00000000 		.4byte	.LFB194
 6974 003c 12000000 		.4byte	.LFE194-.LFB194
 6975 0040 00000000 		.4byte	.LFB195
 6976 0044 2A000000 		.4byte	.LFE195-.LFB195
 6977 0048 00000000 		.4byte	.LFB196
 6978 004c 0A000000 		.4byte	.LFE196-.LFB196
 6979 0050 00000000 		.4byte	.LFB197
 6980 0054 22000000 		.4byte	.LFE197-.LFB197
 6981 0058 00000000 		.4byte	.LFB198
 6982 005c 0C000000 		.4byte	.LFE198-.LFB198
 6983 0060 00000000 		.4byte	.LFB199
 6984 0064 22000000 		.4byte	.LFE199-.LFB199
 6985 0068 00000000 		.4byte	.LFB200
 6986 006c 0C000000 		.4byte	.LFE200-.LFB200
 6987 0070 00000000 		.4byte	.LFB201
 6988 0074 18000000 		.4byte	.LFE201-.LFB201
 6989 0078 00000000 		.4byte	.LFB202
 6990 007c 1A000000 		.4byte	.LFE202-.LFB202
 6991 0080 00000000 		.4byte	.LFB203
 6992 0084 2A000000 		.4byte	.LFE203-.LFB203
 6993 0088 00000000 		.4byte	.LFB204
 6994 008c 0C000000 		.4byte	.LFE204-.LFB204
 6995 0090 00000000 		.4byte	.LFB205
 6996 0094 3C000000 		.4byte	.LFE205-.LFB205
 6997 0098 00000000 		.4byte	.LFB206
 6998 009c 5C000000 		.4byte	.LFE206-.LFB206
 6999 00a0 00000000 		.4byte	.LFB207
 7000 00a4 48000000 		.4byte	.LFE207-.LFB207
 7001 00a8 00000000 		.4byte	.LFB208
 7002 00ac 48000000 		.4byte	.LFE208-.LFB208
 7003 00b0 00000000 		.4byte	.LFB209
 7004 00b4 48000000 		.4byte	.LFE209-.LFB209
 7005 00b8 00000000 		.4byte	.LFB210
 7006 00bc 7C000000 		.4byte	.LFE210-.LFB210
 7007 00c0 00000000 		.4byte	.LFB211
 7008 00c4 48000000 		.4byte	.LFE211-.LFB211
 7009 00c8 00000000 		.4byte	0
 7010 00cc 00000000 		.4byte	0
 7011              		.section	.debug_ranges,"",%progbits
 7012              	.Ldebug_ranges0:
 7013 0000 26000000 		.4byte	.LBB16
 7014 0004 28000000 		.4byte	.LBE16
 7015 0008 2C000000 		.4byte	.LBB22
 7016 000c 2E000000 		.4byte	.LBE22
 7017 0010 30000000 		.4byte	.LBB23
 7018 0014 3E000000 		.4byte	.LBE23
 7019 0018 42000000 		.4byte	.LBB29
ARM GAS  /tmp/cciOmULZ.s 			page 140


 7020 001c 4A000000 		.4byte	.LBE29
 7021 0020 60010000 		.4byte	.LBB33
 7022 0024 50020000 		.4byte	.LBE33
 7023 0028 00000000 		.4byte	0
 7024 002c 00000000 		.4byte	0
 7025 0030 3E000000 		.4byte	.LBB24
 7026 0034 42000000 		.4byte	.LBE24
 7027 0038 4A000000 		.4byte	.LBB30
 7028 003c 3E010000 		.4byte	.LBE30
 7029 0040 42010000 		.4byte	.LBB31
 7030 0044 46010000 		.4byte	.LBE31
 7031 0048 48010000 		.4byte	.LBB32
 7032 004c 54010000 		.4byte	.LBE32
 7033 0050 00000000 		.4byte	0
 7034 0054 00000000 		.4byte	0
 7035 0058 00000000 		.4byte	.LFB189
 7036 005c 24000000 		.4byte	.LFE189
 7037 0060 00000000 		.4byte	.LFB190
 7038 0064 50020000 		.4byte	.LFE190
 7039 0068 00000000 		.4byte	.LFB191
 7040 006c 2C000000 		.4byte	.LFE191
 7041 0070 00000000 		.4byte	.LFB192
 7042 0074 2C000000 		.4byte	.LFE192
 7043 0078 00000000 		.4byte	.LFB193
 7044 007c 12000000 		.4byte	.LFE193
 7045 0080 00000000 		.4byte	.LFB194
 7046 0084 12000000 		.4byte	.LFE194
 7047 0088 00000000 		.4byte	.LFB195
 7048 008c 2A000000 		.4byte	.LFE195
 7049 0090 00000000 		.4byte	.LFB196
 7050 0094 0A000000 		.4byte	.LFE196
 7051 0098 00000000 		.4byte	.LFB197
 7052 009c 22000000 		.4byte	.LFE197
 7053 00a0 00000000 		.4byte	.LFB198
 7054 00a4 0C000000 		.4byte	.LFE198
 7055 00a8 00000000 		.4byte	.LFB199
 7056 00ac 22000000 		.4byte	.LFE199
 7057 00b0 00000000 		.4byte	.LFB200
 7058 00b4 0C000000 		.4byte	.LFE200
 7059 00b8 00000000 		.4byte	.LFB201
 7060 00bc 18000000 		.4byte	.LFE201
 7061 00c0 00000000 		.4byte	.LFB202
 7062 00c4 1A000000 		.4byte	.LFE202
 7063 00c8 00000000 		.4byte	.LFB203
 7064 00cc 2A000000 		.4byte	.LFE203
 7065 00d0 00000000 		.4byte	.LFB204
 7066 00d4 0C000000 		.4byte	.LFE204
 7067 00d8 00000000 		.4byte	.LFB205
 7068 00dc 3C000000 		.4byte	.LFE205
 7069 00e0 00000000 		.4byte	.LFB206
 7070 00e4 5C000000 		.4byte	.LFE206
 7071 00e8 00000000 		.4byte	.LFB207
 7072 00ec 48000000 		.4byte	.LFE207
 7073 00f0 00000000 		.4byte	.LFB208
 7074 00f4 48000000 		.4byte	.LFE208
 7075 00f8 00000000 		.4byte	.LFB209
 7076 00fc 48000000 		.4byte	.LFE209
ARM GAS  /tmp/cciOmULZ.s 			page 141


 7077 0100 00000000 		.4byte	.LFB210
 7078 0104 7C000000 		.4byte	.LFE210
 7079 0108 00000000 		.4byte	.LFB211
 7080 010c 48000000 		.4byte	.LFE211
 7081 0110 00000000 		.4byte	0
 7082 0114 00000000 		.4byte	0
 7083              		.section	.debug_line,"",%progbits
 7084              	.Ldebug_line0:
 7085 0000 8F060000 		.section	.debug_str,"MS",%progbits,1
 7085      02005603 
 7085      00000201 
 7085      FB0E0D00 
 7085      01010101 
 7086              	.LASF80:
 7087 0000 5F666C6F 		.ascii	"_flock_t\000"
 7087      636B5F74 
 7087      00
 7088              	.LASF283:
 7089 0009 6D63616E 		.ascii	"mcan0_tx_event_fifo\000"
 7089      305F7478 
 7089      5F657665 
 7089      6E745F66 
 7089      69666F00 
 7090              	.LASF201:
 7091 001d 4552525F 		.ascii	"ERR_BAD_FORMAT\000"
 7091      4241445F 
 7091      464F524D 
 7091      415400
 7092              	.LASF19:
 7093 002c 53797374 		.ascii	"SystemCoreClock\000"
 7093      656D436F 
 7093      7265436C 
 7093      6F636B00 
 7094              	.LASF299:
 7095 003c 6D63616E 		.ascii	"mcan_get_rx_fifo_1_element\000"
 7095      5F676574 
 7095      5F72785F 
 7095      6669666F 
 7095      5F315F65 
 7096              	.LASF331:
 7097 0057 6D63616E 		.ascii	"mcan_nbtp_ntseg2_value\000"
 7097      5F6E6274 
 7097      705F6E74 
 7097      73656732 
 7097      5F76616C 
 7098              	.LASF332:
 7099 006e 6D63616E 		.ascii	"mcan_init\000"
 7099      5F696E69 
 7099      7400
 7100              	.LASF97:
 7101 0078 5F6F6E5F 		.ascii	"_on_exit_args\000"
 7101      65786974 
 7101      5F617267 
 7101      7300
 7102              	.LASF57:
 7103 0086 4D43414E 		.ascii	"MCAN_TXFQS\000"
 7103      5F545846 
ARM GAS  /tmp/cciOmULZ.s 			page 142


 7103      515300
 7104              	.LASF189:
 7105 0091 53544154 		.ascii	"STATUS_ERR_DENIED\000"
 7105      55535F45 
 7105      52525F44 
 7105      454E4945 
 7105      4400
 7106              	.LASF338:
 7107 00a3 756C5F69 		.ascii	"ul_id\000"
 7107      6400
 7108              	.LASF326:
 7109 00a9 67636C6B 		.ascii	"gclk_mcan_fd_value\000"
 7109      5F6D6361 
 7109      6E5F6664 
 7109      5F76616C 
 7109      756500
 7110              	.LASF165:
 7111 00bc 5F776374 		.ascii	"_wctomb_state\000"
 7111      6F6D625F 
 7111      73746174 
 7111      6500
 7112              	.LASF33:
 7113 00ca 4D43414E 		.ascii	"MCAN_PSR\000"
 7113      5F505352 
 7113      00
 7114              	.LASF162:
 7115 00d3 5F723438 		.ascii	"_r48\000"
 7115      00
 7116              	.LASF320:
 7117 00d8 62617564 		.ascii	"baudrate\000"
 7117      72617465 
 7117      00
 7118              	.LASF65:
 7119 00e1 4D43414E 		.ascii	"MCAN_TXBCIE\000"
 7119      5F545842 
 7119      43494500 
 7120              	.LASF191:
 7121 00ed 4552525F 		.ascii	"ERR_IO_ERROR\000"
 7121      494F5F45 
 7121      52524F52 
 7121      00
 7122              	.LASF200:
 7123 00fa 4552525F 		.ascii	"ERR_BUSY\000"
 7123      42555359 
 7123      00
 7124              	.LASF167:
 7125 0103 5F736967 		.ascii	"_signal_buf\000"
 7125      6E616C5F 
 7125      62756600 
 7126              	.LASF41:
 7127 010f 4D43414E 		.ascii	"MCAN_SIDFC\000"
 7127      5F534944 
 7127      464300
 7128              	.LASF29:
 7129 011a 4D43414E 		.ascii	"MCAN_TOCC\000"
 7129      5F544F43 
 7129      4300
ARM GAS  /tmp/cciOmULZ.s 			page 143


 7130              	.LASF267:
 7131 0124 72785F66 		.ascii	"rx_fifo_0_watermark\000"
 7131      69666F5F 
 7131      305F7761 
 7131      7465726D 
 7131      61726B00 
 7132              	.LASF111:
 7133 0138 5F6C6266 		.ascii	"_lbfsize\000"
 7133      73697A65 
 7133      00
 7134              	.LASF109:
 7135 0141 5F666C61 		.ascii	"_flags\000"
 7135      677300
 7136              	.LASF216:
 7137 0148 4D43414E 		.ascii	"MCAN_TX_ELEMENT_T0_Type\000"
 7137      5F54585F 
 7137      454C454D 
 7137      454E545F 
 7137      54305F54 
 7138              	.LASF126:
 7139 0160 5F657272 		.ascii	"_errno\000"
 7139      6E6F00
 7140              	.LASF311:
 7141 0167 6D63616E 		.ascii	"mcan_disable_bus_monitor_mode\000"
 7141      5F646973 
 7141      61626C65 
 7141      5F627573 
 7141      5F6D6F6E 
 7142              	.LASF264:
 7143 0185 72656D6F 		.ascii	"remote_frames_extended_reject\000"
 7143      74655F66 
 7143      72616D65 
 7143      735F6578 
 7143      74656E64 
 7144              	.LASF227:
 7145 01a3 4D43414E 		.ascii	"MCAN_STANDARD_MESSAGE_FILTER_ELEMENT_S0_Type\000"
 7145      5F535441 
 7145      4E444152 
 7145      445F4D45 
 7145      53534147 
 7146              	.LASF220:
 7147 01d0 4D43414E 		.ascii	"MCAN_TX_EVENT_ELEMENT_E0_Type\000"
 7147      5F54585F 
 7147      4556454E 
 7147      545F454C 
 7147      454D454E 
 7148              	.LASF30:
 7149 01ee 4D43414E 		.ascii	"MCAN_TOCV\000"
 7149      5F544F43 
 7149      5600
 7150              	.LASF325:
 7151 01f8 6D63616E 		.ascii	"mcan_set_baudrate\000"
 7151      5F736574 
 7151      5F626175 
 7151      64726174 
 7151      6500
 7152              	.LASF260:
ARM GAS  /tmp/cciOmULZ.s 			page 144


 7153 020a 64656C61 		.ascii	"delay_compensation_offset\000"
 7153      795F636F 
 7153      6D70656E 
 7153      73617469 
 7153      6F6E5F6F 
 7154              	.LASF309:
 7155 0224 6D63616E 		.ascii	"mcan_disable_sleep_mode\000"
 7155      5F646973 
 7155      61626C65 
 7155      5F736C65 
 7155      65705F6D 
 7156              	.LASF3:
 7157 023c 73686F72 		.ascii	"short int\000"
 7157      7420696E 
 7157      7400
 7158              	.LASF210:
 7159 0246 414E4D46 		.ascii	"ANMF\000"
 7159      00
 7160              	.LASF123:
 7161 024b 5F6D6273 		.ascii	"_mbstate\000"
 7161      74617465 
 7161      00
 7162              	.LASF231:
 7163 0254 4D43414E 		.ascii	"MCAN_EXTENDED_MESSAGE_FILTER_ELEMENT_F0_Type\000"
 7163      5F455854 
 7163      454E4445 
 7163      445F4D45 
 7163      53534147 
 7164              	.LASF169:
 7165 0281 5F6D6272 		.ascii	"_mbrlen_state\000"
 7165      6C656E5F 
 7165      73746174 
 7165      6500
 7166              	.LASF44:
 7167 028f 4D43414E 		.ascii	"MCAN_XIDAM\000"
 7167      5F584944 
 7167      414D00
 7168              	.LASF270:
 7169 029a 74785F71 		.ascii	"tx_queue_mode\000"
 7169      75657565 
 7169      5F6D6F64 
 7169      6500
 7170              	.LASF259:
 7171 02a8 7464635F 		.ascii	"tdc_enable\000"
 7171      656E6162 
 7171      6C6500
 7172              	.LASF128:
 7173 02b3 5F737464 		.ascii	"_stdout\000"
 7173      6F757400 
 7174              	.LASF73:
 7175 02bb 5F66706F 		.ascii	"_fpos_t\000"
 7175      735F7400 
 7176              	.LASF272:
 7177 02c3 706C6C5F 		.ascii	"pll_source\000"
 7177      736F7572 
 7177      636500
 7178              	.LASF322:
ARM GAS  /tmp/cciOmULZ.s 			page 145


 7179 02ce 6D63616E 		.ascii	"mcan_fd_dbtp_dsgw_value\000"
 7179      5F66645F 
 7179      64627470 
 7179      5F647367 
 7179      775F7661 
 7180              	.LASF344:
 7181 02e6 2E2E2F61 		.ascii	"../asf/sam/drivers/mcan/mcan.c\000"
 7181      73662F73 
 7181      616D2F64 
 7181      72697665 
 7181      72732F6D 
 7182              	.LASF268:
 7183 0305 72785F66 		.ascii	"rx_fifo_1_overwrite\000"
 7183      69666F5F 
 7183      315F6F76 
 7183      65727772 
 7183      69746500 
 7184              	.LASF112:
 7185 0319 5F636F6F 		.ascii	"_cookie\000"
 7185      6B696500 
 7186              	.LASF181:
 7187 0321 675F696E 		.ascii	"g_interrupt_enabled\000"
 7187      74657272 
 7187      7570745F 
 7187      656E6162 
 7187      6C656400 
 7188              	.LASF86:
 7189 0335 5F426967 		.ascii	"_Bigint\000"
 7189      696E7400 
 7190              	.LASF274:
 7191 033d 504C4C5F 		.ascii	"PLL_SRC_MAINCK_8M_RC\000"
 7191      5352435F 
 7191      4D41494E 
 7191      434B5F38 
 7191      4D5F5243 
 7192              	.LASF281:
 7193 0352 6D63616E 		.ascii	"mcan0_rx_fifo_1\000"
 7193      305F7278 
 7193      5F666966 
 7193      6F5F3100 
 7194              	.LASF94:
 7195 0362 5F5F746D 		.ascii	"__tm_wday\000"
 7195      5F776461 
 7195      7900
 7196              	.LASF339:
 7197 036c 706D635F 		.ascii	"pmc_disable_pck\000"
 7197      64697361 
 7197      626C655F 
 7197      70636B00 
 7198              	.LASF324:
 7199 037c 6D63616E 		.ascii	"mcan_fd_dbtp_dtseg2_value\000"
 7199      5F66645F 
 7199      64627470 
 7199      5F647473 
 7199      6567325F 
 7200              	.LASF136:
 7201 0396 5F726573 		.ascii	"_result\000"
ARM GAS  /tmp/cciOmULZ.s 			page 146


 7201      756C7400 
 7202              	.LASF23:
 7203 039e 4D43414E 		.ascii	"MCAN_TEST\000"
 7203      5F544553 
 7203      5400
 7204              	.LASF16:
 7205 03a8 75696E74 		.ascii	"uint32_t\000"
 7205      33325F74 
 7205      00
 7206              	.LASF90:
 7207 03b1 5F5F746D 		.ascii	"__tm_hour\000"
 7207      5F686F75 
 7207      7200
 7208              	.LASF98:
 7209 03bb 5F666E61 		.ascii	"_fnargs\000"
 7209      72677300 
 7210              	.LASF255:
 7211 03c3 74696D65 		.ascii	"timestamp_prescaler\000"
 7211      7374616D 
 7211      705F7072 
 7211      65736361 
 7211      6C657200 
 7212              	.LASF277:
 7213 03d7 504C4C5F 		.ascii	"PLL_SRC_MAINCK_BYPASS\000"
 7213      5352435F 
 7213      4D41494E 
 7213      434B5F42 
 7213      59504153 
 7214              	.LASF104:
 7215 03ed 5F666E73 		.ascii	"_fns\000"
 7215      00
 7216              	.LASF77:
 7217 03f2 5F5F636F 		.ascii	"__count\000"
 7217      756E7400 
 7218              	.LASF185:
 7219 03fa 666C6F61 		.ascii	"float\000"
 7219      7400
 7220              	.LASF346:
 7221 0400 5F6D6361 		.ascii	"_mcan_enable_peripheral_clock\000"
 7221      6E5F656E 
 7221      61626C65 
 7221      5F706572 
 7221      69706865 
 7222              	.LASF89:
 7223 041e 5F5F746D 		.ascii	"__tm_min\000"
 7223      5F6D696E 
 7223      00
 7224              	.LASF178:
 7225 0427 5F696D70 		.ascii	"_impure_ptr\000"
 7225      7572655F 
 7225      70747200 
 7226              	.LASF175:
 7227 0433 5F6E6578 		.ascii	"_nextf\000"
 7227      746600
 7228              	.LASF295:
 7229 043a 696E6465 		.ascii	"index\000"
 7229      7800
ARM GAS  /tmp/cciOmULZ.s 			page 147


 7230              	.LASF313:
 7231 0440 6D63616E 		.ascii	"mcan_disable_restricted_operation_mode\000"
 7231      5F646973 
 7231      61626C65 
 7231      5F726573 
 7231      74726963 
 7232              	.LASF171:
 7233 0467 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 7233      72746F77 
 7233      63735F73 
 7233      74617465 
 7233      00
 7234              	.LASF245:
 7235 0478 6D63616E 		.ascii	"mcan_module\000"
 7235      5F6D6F64 
 7235      756C6500 
 7236              	.LASF45:
 7237 0484 4D43414E 		.ascii	"MCAN_HPMS\000"
 7237      5F48504D 
 7237      5300
 7238              	.LASF12:
 7239 048e 6C6F6E67 		.ascii	"long long unsigned int\000"
 7239      206C6F6E 
 7239      6720756E 
 7239      7369676E 
 7239      65642069 
 7240              	.LASF158:
 7241 04a5 5F617363 		.ascii	"_asctime_buf\000"
 7241      74696D65 
 7241      5F627566 
 7241      00
 7242              	.LASF152:
 7243 04b2 5F72616E 		.ascii	"_rand48\000"
 7243      64343800 
 7244              	.LASF199:
 7245 04ba 4552525F 		.ascii	"ERR_BAD_ADDRESS\000"
 7245      4241445F 
 7245      41444452 
 7245      45535300 
 7246              	.LASF229:
 7247 04ca 45464944 		.ascii	"EFID1\000"
 7247      3100
 7248              	.LASF85:
 7249 04d0 5F776473 		.ascii	"_wds\000"
 7249      00
 7250              	.LASF280:
 7251 04d5 6D63616E 		.ascii	"mcan0_rx_fifo_0\000"
 7251      305F7278 
 7251      5F666966 
 7251      6F5F3000 
 7252              	.LASF278:
 7253 04e5 504C4C5F 		.ascii	"PLL_NR_SOURCES\000"
 7253      4E525F53 
 7253      4F555243 
 7253      455300
 7254              	.LASF237:
 7255 04f4 4D43414E 		.ascii	"MCAN_TIMEOUT_CONTINUES\000"
ARM GAS  /tmp/cciOmULZ.s 			page 148


 7255      5F54494D 
 7255      454F5554 
 7255      5F434F4E 
 7255      54494E55 
 7256              	.LASF5:
 7257 050b 5F5F7569 		.ascii	"__uint16_t\000"
 7257      6E743136 
 7257      5F7400
 7258              	.LASF148:
 7259 0516 5F5F4649 		.ascii	"__FILE\000"
 7259      4C4500
 7260              	.LASF174:
 7261 051d 5F685F65 		.ascii	"_h_errno\000"
 7261      72726E6F 
 7261      00
 7262              	.LASF246:
 7263 0526 6D63616E 		.ascii	"mcan_config\000"
 7263      5F636F6E 
 7263      66696700 
 7264              	.LASF120:
 7265 0532 5F6F6666 		.ascii	"_offset\000"
 7265      73657400 
 7266              	.LASF117:
 7267 053a 5F756275 		.ascii	"_ubuf\000"
 7267      6600
 7268              	.LASF219:
 7269 0540 6D63616E 		.ascii	"mcan_tx_element\000"
 7269      5F74785F 
 7269      656C656D 
 7269      656E7400 
 7270              	.LASF196:
 7271 0550 4552525F 		.ascii	"ERR_UNSUPPORTED_DEV\000"
 7271      554E5355 
 7271      50504F52 
 7271      5445445F 
 7271      44455600 
 7272              	.LASF286:
 7273 0564 6D63616E 		.ascii	"mcan1_rx_buffer\000"
 7273      315F7278 
 7273      5F627566 
 7273      66657200 
 7274              	.LASF131:
 7275 0574 5F656D65 		.ascii	"_emergency\000"
 7275      7267656E 
 7275      637900
 7276              	.LASF334:
 7277 057f 5F6D6361 		.ascii	"_mcan_set_configuration\000"
 7277      6E5F7365 
 7277      745F636F 
 7277      6E666967 
 7277      75726174 
 7278              	.LASF265:
 7279 0597 65787465 		.ascii	"extended_id_mask\000"
 7279      6E646564 
 7279      5F69645F 
 7279      6D61736B 
 7279      00
ARM GAS  /tmp/cciOmULZ.s 			page 149


 7280              	.LASF303:
 7281 05a8 6D63616E 		.ascii	"mcan_set_rx_extended_filter\000"
 7281      5F736574 
 7281      5F72785F 
 7281      65787465 
 7281      6E646564 
 7282              	.LASF327:
 7283 05c4 67636C6B 		.ascii	"gclk_mcan_value\000"
 7283      5F6D6361 
 7283      6E5F7661 
 7283      6C756500 
 7284              	.LASF88:
 7285 05d4 5F5F746D 		.ascii	"__tm_sec\000"
 7285      5F736563 
 7285      00
 7286              	.LASF180:
 7287 05dd 7375626F 		.ascii	"suboptarg\000"
 7287      70746172 
 7287      6700
 7288              	.LASF95:
 7289 05e7 5F5F746D 		.ascii	"__tm_yday\000"
 7289      5F796461 
 7289      7900
 7290              	.LASF130:
 7291 05f1 5F696E63 		.ascii	"_inc\000"
 7291      00
 7292              	.LASF182:
 7293 05f6 5F426F6F 		.ascii	"_Bool\000"
 7293      6C00
 7294              	.LASF304:
 7295 05fc 65745F66 		.ascii	"et_filter\000"
 7295      696C7465 
 7295      7200
 7296              	.LASF256:
 7297 0606 74696D65 		.ascii	"timeout_period\000"
 7297      6F75745F 
 7297      70657269 
 7297      6F6400
 7298              	.LASF205:
 7299 0615 4552525F 		.ascii	"ERR_ABORTED\000"
 7299      41424F52 
 7299      54454400 
 7300              	.LASF22:
 7301 0621 4D43414E 		.ascii	"MCAN_FBTP\000"
 7301      5F464254 
 7301      5000
 7302              	.LASF329:
 7303 062b 6D63616E 		.ascii	"mcan_nbtp_nsgw_value\000"
 7303      5F6E6274 
 7303      705F6E73 
 7303      67775F76 
 7303      616C7565 
 7304              	.LASF184:
 7305 0640 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 7305      6972715F 
 7305      70726576 
 7305      5F696E74 
ARM GAS  /tmp/cciOmULZ.s 			page 150


 7305      65727275 
 7306              	.LASF82:
 7307 065d 5F6E6578 		.ascii	"_next\000"
 7307      7400
 7308              	.LASF207:
 7309 0663 4D43414E 		.ascii	"MCAN_RX_ELEMENT_R0_Type\000"
 7309      5F52585F 
 7309      454C454D 
 7309      454E545F 
 7309      52305F54 
 7310              	.LASF316:
 7311 067b 6D63616E 		.ascii	"mcan_enable_fd_mode\000"
 7311      5F656E61 
 7311      626C655F 
 7311      66645F6D 
 7311      6F646500 
 7312              	.LASF321:
 7313 068f 6D63616E 		.ascii	"mcan_fd_dbtp_dbrp_value\000"
 7313      5F66645F 
 7313      64627470 
 7313      5F646272 
 7313      705F7661 
 7314              	.LASF198:
 7315 06a7 4552525F 		.ascii	"ERR_INVALID_ARG\000"
 7315      494E5641 
 7315      4C49445F 
 7315      41524700 
 7316              	.LASF190:
 7317 06b7 53544154 		.ascii	"STATUS_ERR_TIMEOUT\000"
 7317      55535F45 
 7317      52525F54 
 7317      494D454F 
 7317      555400
 7318              	.LASF208:
 7319 06ca 52585453 		.ascii	"RXTS\000"
 7319      00
 7320              	.LASF337:
 7321 06cf 73797363 		.ascii	"sysclk_get_main_hz\000"
 7321      6C6B5F67 
 7321      65745F6D 
 7321      61696E5F 
 7321      687A00
 7322              	.LASF78:
 7323 06e2 5F5F7661 		.ascii	"__value\000"
 7323      6C756500 
 7324              	.LASF193:
 7325 06ea 4552525F 		.ascii	"ERR_TIMEOUT\000"
 7325      54494D45 
 7325      4F555400 
 7326              	.LASF138:
 7327 06f6 5F703573 		.ascii	"_p5s\000"
 7327      00
 7328              	.LASF284:
 7329 06fb 6D63616E 		.ascii	"mcan0_rx_standard_filter\000"
 7329      305F7278 
 7329      5F737461 
 7329      6E646172 
ARM GAS  /tmp/cciOmULZ.s 			page 151


 7329      645F6669 
 7330              	.LASF173:
 7331 0714 5F776373 		.ascii	"_wcsrtombs_state\000"
 7331      72746F6D 
 7331      62735F73 
 7331      74617465 
 7331      00
 7332              	.LASF163:
 7333 0725 5F6D626C 		.ascii	"_mblen_state\000"
 7333      656E5F73 
 7333      74617465 
 7333      00
 7334              	.LASF147:
 7335 0732 63686172 		.ascii	"char\000"
 7335      00
 7336              	.LASF266:
 7337 0737 72785F66 		.ascii	"rx_fifo_0_overwrite\000"
 7337      69666F5F 
 7337      305F6F76 
 7337      65727772 
 7337      69746500 
 7338              	.LASF91:
 7339 074b 5F5F746D 		.ascii	"__tm_mday\000"
 7339      5F6D6461 
 7339      7900
 7340              	.LASF144:
 7341 0755 5F736967 		.ascii	"_sig_func\000"
 7341      5F66756E 
 7341      6300
 7342              	.LASF170:
 7343 075f 5F6D6272 		.ascii	"_mbrtowc_state\000"
 7343      746F7763 
 7343      5F737461 
 7343      746500
 7344              	.LASF143:
 7345 076e 5F617465 		.ascii	"_atexit0\000"
 7345      78697430 
 7345      00
 7346              	.LASF7:
 7347 0777 5F5F696E 		.ascii	"__int32_t\000"
 7347      7433325F 
 7347      7400
 7348              	.LASF345:
 7349 0781 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70_RTOS"
 7349      652F746F 
 7349      72626A6F 
 7349      726E2F65 
 7349      636C6970 
 7350 07b4 00       		.ascii	"\000"
 7351              	.LASF298:
 7352 07b5 74785F65 		.ascii	"tx_element\000"
 7352      6C656D65 
 7352      6E7400
 7353              	.LASF249:
 7354 07c0 7472616E 		.ascii	"transmit_pause\000"
 7354      736D6974 
 7354      5F706175 
ARM GAS  /tmp/cciOmULZ.s 			page 152


 7354      736500
 7355              	.LASF279:
 7356 07cf 6D63616E 		.ascii	"mcan0_rx_buffer\000"
 7356      305F7278 
 7356      5F627566 
 7356      66657200 
 7357              	.LASF137:
 7358 07df 5F726573 		.ascii	"_result_k\000"
 7358      756C745F 
 7358      6B00
 7359              	.LASF238:
 7360 07e9 4D43414E 		.ascii	"MCAN_TIMEOUT_TX_EVEN_FIFO\000"
 7360      5F54494D 
 7360      454F5554 
 7360      5F54585F 
 7360      4556454E 
 7361              	.LASF0:
 7362 0803 756E7369 		.ascii	"unsigned int\000"
 7362      676E6564 
 7362      20696E74 
 7362      00
 7363              	.LASF51:
 7364 0810 4D43414E 		.ascii	"MCAN_RXBC\000"
 7364      5F525842 
 7364      4300
 7365              	.LASF75:
 7366 081a 5F5F7763 		.ascii	"__wch\000"
 7366      6800
 7367              	.LASF13:
 7368 0820 75696E74 		.ascii	"uint8_t\000"
 7368      385F7400 
 7369              	.LASF294:
 7370 0828 74785F65 		.ascii	"tx_event_element\000"
 7370      76656E74 
 7370      5F656C65 
 7370      6D656E74 
 7370      00
 7371              	.LASF209:
 7372 0839 46494458 		.ascii	"FIDX\000"
 7372      00
 7373              	.LASF55:
 7374 083e 4D43414E 		.ascii	"MCAN_RXESC\000"
 7374      5F525845 
 7374      534300
 7375              	.LASF228:
 7376 0849 6D63616E 		.ascii	"mcan_standard_message_filter_element\000"
 7376      5F737461 
 7376      6E646172 
 7376      645F6D65 
 7376      73736167 
 7377              	.LASF330:
 7378 086e 6D63616E 		.ascii	"mcan_nbtp_ntseg1_value\000"
 7378      5F6E6274 
 7378      705F6E74 
 7378      73656731 
 7378      5F76616C 
 7379              	.LASF42:
ARM GAS  /tmp/cciOmULZ.s 			page 153


 7380 0885 4D43414E 		.ascii	"MCAN_XIDFC\000"
 7380      5F584944 
 7380      464300
 7381              	.LASF116:
 7382 0890 5F636C6F 		.ascii	"_close\000"
 7382      736500
 7383              	.LASF134:
 7384 0897 5F5F7364 		.ascii	"__sdidinit\000"
 7384      6964696E 
 7384      697400
 7385              	.LASF204:
 7386 08a2 4552525F 		.ascii	"ERR_TIMER_NOT_RUNNING\000"
 7386      54494D45 
 7386      525F4E4F 
 7386      545F5255 
 7386      4E4E494E 
 7387              	.LASF236:
 7388 08b8 6D63616E 		.ascii	"mcan_timeout_mode\000"
 7388      5F74696D 
 7388      656F7574 
 7388      5F6D6F64 
 7388      6500
 7389              	.LASF251:
 7390 08ca 70726F74 		.ascii	"protocol_exception_handling\000"
 7390      6F636F6C 
 7390      5F657863 
 7390      65707469 
 7390      6F6E5F68 
 7391              	.LASF239:
 7392 08e6 4D43414E 		.ascii	"MCAN_TIMEOUT_RX_FIFO_0\000"
 7392      5F54494D 
 7392      454F5554 
 7392      5F52585F 
 7392      4649464F 
 7393              	.LASF240:
 7394 08fd 4D43414E 		.ascii	"MCAN_TIMEOUT_RX_FIFO_1\000"
 7394      5F54494D 
 7394      454F5554 
 7394      5F52585F 
 7394      4649464F 
 7395              	.LASF318:
 7396 0914 6D63616E 		.ascii	"mcan_start\000"
 7396      5F737461 
 7396      727400
 7397              	.LASF127:
 7398 091f 5F737464 		.ascii	"_stdin\000"
 7398      696E00
 7399              	.LASF160:
 7400 0926 5F67616D 		.ascii	"_gamma_signgam\000"
 7400      6D615F73 
 7400      69676E67 
 7400      616D00
 7401              	.LASF247:
 7402 0935 72756E5F 		.ascii	"run_in_standby\000"
 7402      696E5F73 
 7402      74616E64 
 7402      627900
ARM GAS  /tmp/cciOmULZ.s 			page 154


 7403              	.LASF11:
 7404 0944 6C6F6E67 		.ascii	"long long int\000"
 7404      206C6F6E 
 7404      6720696E 
 7404      7400
 7405              	.LASF106:
 7406 0952 5F626173 		.ascii	"_base\000"
 7406      6500
 7407              	.LASF139:
 7408 0958 5F667265 		.ascii	"_freelist\000"
 7408      656C6973 
 7408      7400
 7409              	.LASF250:
 7410 0962 65646765 		.ascii	"edge_filtering\000"
 7410      5F66696C 
 7410      74657269 
 7410      6E6700
 7411              	.LASF154:
 7412 0971 5F6D756C 		.ascii	"_mult\000"
 7412      7400
 7413              	.LASF155:
 7414 0977 5F616464 		.ascii	"_add\000"
 7414      00
 7415              	.LASF222:
 7416 097c 4D43414E 		.ascii	"MCAN_TX_EVENT_ELEMENT_E1_Type\000"
 7416      5F54585F 
 7416      4556454E 
 7416      545F454C 
 7416      454D454E 
 7417              	.LASF305:
 7418 099a 6D63616E 		.ascii	"mcan_set_rx_standard_filter\000"
 7418      5F736574 
 7418      5F72785F 
 7418      7374616E 
 7418      64617264 
 7419              	.LASF59:
 7420 09b6 4D43414E 		.ascii	"MCAN_TXBRP\000"
 7420      5F545842 
 7420      525000
 7421              	.LASF172:
 7422 09c1 5F776372 		.ascii	"_wcrtomb_state\000"
 7422      746F6D62 
 7422      5F737461 
 7422      746500
 7423              	.LASF63:
 7424 09d0 4D43414E 		.ascii	"MCAN_TXBCF\000"
 7424      5F545842 
 7424      434600
 7425              	.LASF110:
 7426 09db 5F66696C 		.ascii	"_file\000"
 7426      6500
 7427              	.LASF221:
 7428 09e1 54585453 		.ascii	"TXTS\000"
 7428      00
 7429              	.LASF293:
 7430 09e6 6D6F6475 		.ascii	"module_inst\000"
 7430      6C655F69 
ARM GAS  /tmp/cciOmULZ.s 			page 155


 7430      6E737400 
 7431              	.LASF61:
 7432 09f2 4D43414E 		.ascii	"MCAN_TXBCR\000"
 7432      5F545842 
 7432      435200
 7433              	.LASF292:
 7434 09fd 6D63616E 		.ascii	"mcan1_rx_extended_filter\000"
 7434      315F7278 
 7434      5F657874 
 7434      656E6465 
 7434      645F6669 
 7435              	.LASF328:
 7436 0a16 6D63616E 		.ascii	"mcan_nbtp_nbrp_value\000"
 7436      5F6E6274 
 7436      705F6E62 
 7436      72705F76 
 7436      616C7565 
 7437              	.LASF25:
 7438 0a2b 4D43414E 		.ascii	"MCAN_CCCR\000"
 7438      5F434343 
 7438      5200
 7439              	.LASF135:
 7440 0a35 5F5F636C 		.ascii	"__cleanup\000"
 7440      65616E75 
 7440      7000
 7441              	.LASF242:
 7442 0a3f 4D43414E 		.ascii	"MCAN_NONMATCHING_FRAMES_FIFO_0\000"
 7442      5F4E4F4E 
 7442      4D415443 
 7442      48494E47 
 7442      5F465241 
 7443              	.LASF285:
 7444 0a5e 6D63616E 		.ascii	"mcan0_rx_extended_filter\000"
 7444      305F7278 
 7444      5F657874 
 7444      656E6465 
 7444      645F6669 
 7445              	.LASF79:
 7446 0a77 5F6D6273 		.ascii	"_mbstate_t\000"
 7446      74617465 
 7446      5F7400
 7447              	.LASF50:
 7448 0a82 4D43414E 		.ascii	"MCAN_RXF0A\000"
 7448      5F525846 
 7448      304100
 7449              	.LASF197:
 7450 0a8d 4552525F 		.ascii	"ERR_NO_MEMORY\000"
 7450      4E4F5F4D 
 7450      454D4F52 
 7450      5900
 7451              	.LASF241:
 7452 0a9b 6D63616E 		.ascii	"mcan_nonmatching_frames_action\000"
 7452      5F6E6F6E 
 7452      6D617463 
 7452      68696E67 
 7452      5F667261 
 7453              	.LASF20:
ARM GAS  /tmp/cciOmULZ.s 			page 156


 7454 0aba 52657365 		.ascii	"Reserved1\000"
 7454      72766564 
 7454      3100
 7455              	.LASF31:
 7456 0ac4 52657365 		.ascii	"Reserved2\000"
 7456      72766564 
 7456      3200
 7457              	.LASF34:
 7458 0ace 52657365 		.ascii	"Reserved3\000"
 7458      72766564 
 7458      3300
 7459              	.LASF39:
 7460 0ad8 52657365 		.ascii	"Reserved4\000"
 7460      72766564 
 7460      3400
 7461              	.LASF340:
 7462 0ae2 706D635F 		.ascii	"pmc_switch_pck_to_pllack\000"
 7462      73776974 
 7462      63685F70 
 7462      636B5F74 
 7462      6F5F706C 
 7463              	.LASF306:
 7464 0afb 73645F66 		.ascii	"sd_filter\000"
 7464      696C7465 
 7464      7200
 7465              	.LASF96:
 7466 0b05 5F5F746D 		.ascii	"__tm_isdst\000"
 7466      5F697364 
 7466      737400
 7467              	.LASF317:
 7468 0b10 6D63616E 		.ascii	"mcan_stop\000"
 7468      5F73746F 
 7468      7000
 7469              	.LASF49:
 7470 0b1a 4D43414E 		.ascii	"MCAN_RXF0S\000"
 7470      5F525846 
 7470      305300
 7471              	.LASF273:
 7472 0b25 504C4C5F 		.ascii	"PLL_SRC_MAINCK_4M_RC\000"
 7472      5352435F 
 7472      4D41494E 
 7472      434B5F34 
 7472      4D5F5243 
 7473              	.LASF103:
 7474 0b3a 5F696E64 		.ascii	"_ind\000"
 7474      00
 7475              	.LASF214:
 7476 0b3f 6D63616E 		.ascii	"mcan_rx_element_fifo_0\000"
 7476      5F72785F 
 7476      656C656D 
 7476      656E745F 
 7476      6669666F 
 7477              	.LASF233:
 7478 0b56 4D43414E 		.ascii	"MCAN_EXTENDED_MESSAGE_FILTER_ELEMENT_F1_Type\000"
 7478      5F455854 
 7478      454E4445 
 7478      445F4D45 
ARM GAS  /tmp/cciOmULZ.s 			page 157


 7478      53534147 
 7479              	.LASF56:
 7480 0b83 4D43414E 		.ascii	"MCAN_TXBC\000"
 7480      5F545842 
 7480      4300
 7481              	.LASF217:
 7482 0b8d 45464343 		.ascii	"EFCC\000"
 7482      00
 7483              	.LASF58:
 7484 0b92 4D43414E 		.ascii	"MCAN_TXESC\000"
 7484      5F545845 
 7484      534300
 7485              	.LASF84:
 7486 0b9d 5F736967 		.ascii	"_sign\000"
 7486      6E00
 7487              	.LASF213:
 7488 0ba3 64617461 		.ascii	"data\000"
 7488      00
 7489              	.LASF46:
 7490 0ba8 4D43414E 		.ascii	"MCAN_NDAT1\000"
 7490      5F4E4441 
 7490      543100
 7491              	.LASF92:
 7492 0bb3 5F5F746D 		.ascii	"__tm_mon\000"
 7492      5F6D6F6E 
 7492      00
 7493              	.LASF40:
 7494 0bbc 4D43414E 		.ascii	"MCAN_GFC\000"
 7494      5F474643 
 7494      00
 7495              	.LASF54:
 7496 0bc5 4D43414E 		.ascii	"MCAN_RXF1A\000"
 7496      5F525846 
 7496      314100
 7497              	.LASF323:
 7498 0bd0 6D63616E 		.ascii	"mcan_fd_dbtp_dtseg1_value\000"
 7498      5F66645F 
 7498      64627470 
 7498      5F647473 
 7498      6567315F 
 7499              	.LASF52:
 7500 0bea 4D43414E 		.ascii	"MCAN_RXF1C\000"
 7500      5F525846 
 7500      314300
 7501              	.LASF215:
 7502 0bf5 6D63616E 		.ascii	"mcan_rx_element_fifo_1\000"
 7502      5F72785F 
 7502      656C656D 
 7502      656E745F 
 7502      6669666F 
 7503              	.LASF14:
 7504 0c0c 75696E74 		.ascii	"uint16_t\000"
 7504      31365F74 
 7504      00
 7505              	.LASF105:
 7506 0c15 5F5F7362 		.ascii	"__sbuf\000"
 7506      756600
ARM GAS  /tmp/cciOmULZ.s 			page 158


 7507              	.LASF253:
 7508 0c1c 636C6F63 		.ascii	"clock_stop_request\000"
 7508      6B5F7374 
 7508      6F705F72 
 7508      65717565 
 7508      737400
 7509              	.LASF114:
 7510 0c2f 5F777269 		.ascii	"_write\000"
 7510      746500
 7511              	.LASF53:
 7512 0c36 4D43414E 		.ascii	"MCAN_RXF1S\000"
 7512      5F525846 
 7512      315300
 7513              	.LASF32:
 7514 0c41 4D43414E 		.ascii	"MCAN_ECR\000"
 7514      5F454352 
 7514      00
 7515              	.LASF252:
 7516 0c4a 6175746F 		.ascii	"automatic_retransmission\000"
 7516      6D617469 
 7516      635F7265 
 7516      7472616E 
 7516      736D6973 
 7517              	.LASF188:
 7518 0c63 53544154 		.ascii	"STATUS_ERR_BUSY\000"
 7518      55535F45 
 7518      52525F42 
 7518      55535900 
 7519              	.LASF62:
 7520 0c73 4D43414E 		.ascii	"MCAN_TXBTO\000"
 7520      5F545842 
 7520      544F00
 7521              	.LASF223:
 7522 0c7e 6D63616E 		.ascii	"mcan_tx_event_element\000"
 7522      5F74785F 
 7522      6576656E 
 7522      745F656C 
 7522      656D656E 
 7523              	.LASF102:
 7524 0c94 5F617465 		.ascii	"_atexit\000"
 7524      78697400 
 7525              	.LASF333:
 7526 0c9c 636F6E66 		.ascii	"config\000"
 7526      696700
 7527              	.LASF17:
 7528 0ca3 73697A65 		.ascii	"sizetype\000"
 7528      74797065 
 7528      00
 7529              	.LASF307:
 7530 0cac 6D63616E 		.ascii	"mcan_disable_test_mode\000"
 7530      5F646973 
 7530      61626C65 
 7530      5F746573 
 7530      745F6D6F 
 7531              	.LASF195:
 7532 0cc3 4552525F 		.ascii	"ERR_PROTOCOL\000"
 7532      50524F54 
ARM GAS  /tmp/cciOmULZ.s 			page 159


 7532      4F434F4C 
 7532      00
 7533              	.LASF275:
 7534 0cd0 504C4C5F 		.ascii	"PLL_SRC_MAINCK_12M_RC\000"
 7534      5352435F 
 7534      4D41494E 
 7534      434B5F31 
 7534      324D5F52 
 7535              	.LASF66:
 7536 0ce6 52657365 		.ascii	"Reserved6\000"
 7536      72766564 
 7536      3600
 7537              	.LASF254:
 7538 0cf0 636C6F63 		.ascii	"clock_stop_acknowledge\000"
 7538      6B5F7374 
 7538      6F705F61 
 7538      636B6E6F 
 7538      776C6564 
 7539              	.LASF315:
 7540 0d07 6D63616E 		.ascii	"mcan_disable_fd_mode\000"
 7540      5F646973 
 7540      61626C65 
 7540      5F66645F 
 7540      6D6F6465 
 7541              	.LASF27:
 7542 0d1c 4D43414E 		.ascii	"MCAN_TSCC\000"
 7542      5F545343 
 7542      4300
 7543              	.LASF8:
 7544 0d26 6C6F6E67 		.ascii	"long int\000"
 7544      20696E74 
 7544      00
 7545              	.LASF18:
 7546 0d2f 49544D5F 		.ascii	"ITM_RxBuffer\000"
 7546      52784275 
 7546      66666572 
 7546      00
 7547              	.LASF347:
 7548 0d3c 6F73635F 		.ascii	"osc_get_rate\000"
 7548      6765745F 
 7548      72617465 
 7548      00
 7549              	.LASF319:
 7550 0d49 6D63616E 		.ascii	"mcan_fd_set_baudrate\000"
 7550      5F66645F 
 7550      7365745F 
 7550      62617564 
 7550      72617465 
 7551              	.LASF271:
 7552 0d5e 74785F65 		.ascii	"tx_event_fifo_watermark\000"
 7552      76656E74 
 7552      5F666966 
 7552      6F5F7761 
 7552      7465726D 
 7553              	.LASF28:
 7554 0d76 4D43414E 		.ascii	"MCAN_TSCV\000"
 7554      5F545343 
ARM GAS  /tmp/cciOmULZ.s 			page 160


 7554      5600
 7555              	.LASF146:
 7556 0d80 5F5F7366 		.ascii	"__sf\000"
 7556      00
 7557              	.LASF187:
 7558 0d85 53544154 		.ascii	"STATUS_OK\000"
 7558      55535F4F 
 7558      4B00
 7559              	.LASF257:
 7560 0d8f 74696D65 		.ascii	"timeout_mode\000"
 7560      6F75745F 
 7560      6D6F6465 
 7560      00
 7561              	.LASF302:
 7562 0d9c 6D63616E 		.ascii	"mcan_get_rx_buffer_element\000"
 7562      5F676574 
 7562      5F72785F 
 7562      62756666 
 7562      65725F65 
 7563              	.LASF133:
 7564 0db7 5F637572 		.ascii	"_current_locale\000"
 7564      72656E74 
 7564      5F6C6F63 
 7564      616C6500 
 7565              	.LASF258:
 7566 0dc7 74696D65 		.ascii	"timeout_enable\000"
 7566      6F75745F 
 7566      656E6162 
 7566      6C6500
 7567              	.LASF121:
 7568 0dd6 5F646174 		.ascii	"_data\000"
 7568      6100
 7569              	.LASF76:
 7570 0ddc 5F5F7763 		.ascii	"__wchb\000"
 7570      686200
 7571              	.LASF179:
 7572 0de3 5F676C6F 		.ascii	"_global_impure_ptr\000"
 7572      62616C5F 
 7572      696D7075 
 7572      72655F70 
 7572      747200
 7573              	.LASF244:
 7574 0df6 4D43414E 		.ascii	"MCAN_NONMATCHING_FRAMES_REJECT\000"
 7574      5F4E4F4E 
 7574      4D415443 
 7574      48494E47 
 7574      5F465241 
 7575              	.LASF93:
 7576 0e15 5F5F746D 		.ascii	"__tm_year\000"
 7576      5F796561 
 7576      7200
 7577              	.LASF48:
 7578 0e1f 4D43414E 		.ascii	"MCAN_RXF0C\000"
 7578      5F525846 
 7578      304300
 7579              	.LASF218:
 7580 0e2a 4D43414E 		.ascii	"MCAN_TX_ELEMENT_T1_Type\000"
ARM GAS  /tmp/cciOmULZ.s 			page 161


 7580      5F54585F 
 7580      454C454D 
 7580      454E545F 
 7580      54315F54 
 7581              	.LASF70:
 7582 0e42 4D63616E 		.ascii	"Mcan\000"
 7582      00
 7583              	.LASF230:
 7584 0e47 45464543 		.ascii	"EFEC\000"
 7584      00
 7585              	.LASF21:
 7586 0e4c 4D43414E 		.ascii	"MCAN_CUST\000"
 7586      5F435553 
 7586      5400
 7587              	.LASF301:
 7588 0e56 6D63616E 		.ascii	"mcan_get_rx_fifo_0_element\000"
 7588      5F676574 
 7588      5F72785F 
 7588      6669666F 
 7588      5F305F65 
 7589              	.LASF159:
 7590 0e71 5F6C6F63 		.ascii	"_localtime_buf\000"
 7590      616C7469 
 7590      6D655F62 
 7590      756600
 7591              	.LASF177:
 7592 0e80 5F756E75 		.ascii	"_unused\000"
 7592      73656400 
 7593              	.LASF4:
 7594 0e88 5F5F7569 		.ascii	"__uint8_t\000"
 7594      6E74385F 
 7594      7400
 7595              	.LASF142:
 7596 0e92 5F6E6577 		.ascii	"_new\000"
 7596      00
 7597              	.LASF140:
 7598 0e97 5F637674 		.ascii	"_cvtlen\000"
 7598      6C656E00 
 7599              	.LASF83:
 7600 0e9f 5F6D6178 		.ascii	"_maxwds\000"
 7600      77647300 
 7601              	.LASF166:
 7602 0ea7 5F6C3634 		.ascii	"_l64a_buf\000"
 7602      615F6275 
 7602      6600
 7603              	.LASF262:
 7604 0eb1 6E6F6E6D 		.ascii	"nonmatching_frames_action_extended\000"
 7604      61746368 
 7604      696E675F 
 7604      6672616D 
 7604      65735F61 
 7605              	.LASF132:
 7606 0ed4 5F637572 		.ascii	"_current_category\000"
 7606      72656E74 
 7606      5F636174 
 7606      65676F72 
 7606      7900
ARM GAS  /tmp/cciOmULZ.s 			page 162


 7607              	.LASF291:
 7608 0ee6 6D63616E 		.ascii	"mcan1_rx_standard_filter\000"
 7608      315F7278 
 7608      5F737461 
 7608      6E646172 
 7608      645F6669 
 7609              	.LASF232:
 7610 0eff 45464944 		.ascii	"EFID2\000"
 7610      3200
 7611              	.LASF248:
 7612 0f05 77617463 		.ascii	"watchdog_configuration\000"
 7612      68646F67 
 7612      5F636F6E 
 7612      66696775 
 7612      72617469 
 7613              	.LASF24:
 7614 0f1c 4D43414E 		.ascii	"MCAN_RWD\000"
 7614      5F525744 
 7614      00
 7615              	.LASF81:
 7616 0f25 5F5F554C 		.ascii	"__ULong\000"
 7616      6F6E6700 
 7617              	.LASF119:
 7618 0f2d 5F626C6B 		.ascii	"_blksize\000"
 7618      73697A65 
 7618      00
 7619              	.LASF87:
 7620 0f36 5F5F746D 		.ascii	"__tm\000"
 7620      00
 7621              	.LASF47:
 7622 0f3b 4D43414E 		.ascii	"MCAN_NDAT2\000"
 7622      5F4E4441 
 7622      543200
 7623              	.LASF310:
 7624 0f46 6D63616E 		.ascii	"mcan_enable_sleep_mode\000"
 7624      5F656E61 
 7624      626C655F 
 7624      736C6565 
 7624      705F6D6F 
 7625              	.LASF122:
 7626 0f5d 5F6C6F63 		.ascii	"_lock\000"
 7626      6B00
 7627              	.LASF43:
 7628 0f63 52657365 		.ascii	"Reserved5\000"
 7628      72766564 
 7628      3500
 7629              	.LASF194:
 7630 0f6d 4552525F 		.ascii	"ERR_BAD_DATA\000"
 7630      4241445F 
 7630      44415441 
 7630      00
 7631              	.LASF60:
 7632 0f7a 4D43414E 		.ascii	"MCAN_TXBAR\000"
 7632      5F545842 
 7632      415200
 7633              	.LASF10:
 7634 0f85 6C6F6E67 		.ascii	"long unsigned int\000"
ARM GAS  /tmp/cciOmULZ.s 			page 163


 7634      20756E73 
 7634      69676E65 
 7634      6420696E 
 7634      7400
 7635              	.LASF183:
 7636 0f97 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 7636      6972715F 
 7636      63726974 
 7636      6963616C 
 7636      5F736563 
 7637              	.LASF234:
 7638 0fb8 6D63616E 		.ascii	"mcan_extended_message_filter_element\000"
 7638      5F657874 
 7638      656E6465 
 7638      645F6D65 
 7638      73736167 
 7639              	.LASF150:
 7640 0fdd 5F6E696F 		.ascii	"_niobs\000"
 7640      627300
 7641              	.LASF74:
 7642 0fe4 77696E74 		.ascii	"wint_t\000"
 7642      5F7400
 7643              	.LASF15:
 7644 0feb 696E7433 		.ascii	"int32_t\000"
 7644      325F7400 
 7645              	.LASF64:
 7646 0ff3 4D43414E 		.ascii	"MCAN_TXBTIE\000"
 7646      5F545842 
 7646      54494500 
 7647              	.LASF38:
 7648 0fff 4D43414E 		.ascii	"MCAN_ILE\000"
 7648      5F494C45 
 7648      00
 7649              	.LASF225:
 7650 1008 53464944 		.ascii	"SFID1\000"
 7650      3100
 7651              	.LASF226:
 7652 100e 53464543 		.ascii	"SFEC\000"
 7652      00
 7653              	.LASF243:
 7654 1013 4D43414E 		.ascii	"MCAN_NONMATCHING_FRAMES_FIFO_1\000"
 7654      5F4E4F4E 
 7654      4D415443 
 7654      48494E47 
 7654      5F465241 
 7655              	.LASF99:
 7656 1032 5F64736F 		.ascii	"_dso_handle\000"
 7656      5F68616E 
 7656      646C6500 
 7657              	.LASF37:
 7658 103e 4D43414E 		.ascii	"MCAN_ILS\000"
 7658      5F494C53 
 7658      00
 7659              	.LASF141:
 7660 1047 5F637674 		.ascii	"_cvtbuf\000"
 7660      62756600 
 7661              	.LASF2:
ARM GAS  /tmp/cciOmULZ.s 			page 164


 7662 104f 756E7369 		.ascii	"unsigned char\000"
 7662      676E6564 
 7662      20636861 
 7662      7200
 7663              	.LASF336:
 7664 105d 73797363 		.ascii	"sysclk_get_peripheral_hz\000"
 7664      6C6B5F67 
 7664      65745F70 
 7664      65726970 
 7664      68657261 
 7665              	.LASF9:
 7666 1076 5F5F7569 		.ascii	"__uint32_t\000"
 7666      6E743332 
 7666      5F7400
 7667              	.LASF71:
 7668 1081 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 7668      4B5F5245 
 7668      43555253 
 7668      4956455F 
 7668      5400
 7669              	.LASF192:
 7670 1093 4552525F 		.ascii	"ERR_FLUSHED\000"
 7670      464C5553 
 7670      48454400 
 7671              	.LASF36:
 7672 109f 4D43414E 		.ascii	"MCAN_IE\000"
 7672      5F494500 
 7673              	.LASF113:
 7674 10a7 5F726561 		.ascii	"_read\000"
 7674      6400
 7675              	.LASF35:
 7676 10ad 4D43414E 		.ascii	"MCAN_IR\000"
 7676      5F495200 
 7677              	.LASF203:
 7678 10b5 4552525F 		.ascii	"ERR_TIMER_ALREADY_RUNNING\000"
 7678      54494D45 
 7678      525F414C 
 7678      52454144 
 7678      595F5255 
 7679              	.LASF289:
 7680 10cf 6D63616E 		.ascii	"mcan1_tx_buffer\000"
 7680      315F7478 
 7680      5F627566 
 7680      66657200 
 7681              	.LASF343:
 7682 10df 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 7682      43393920 
 7682      362E332E 
 7682      31203230 
 7682      31373036 
 7683 1112 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 7683      76352D64 
 7683      3136202D 
 7683      6D666C6F 
 7683      61742D61 
 7684 1145 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 7684      6E2D7365 
ARM GAS  /tmp/cciOmULZ.s 			page 165


 7684      6374696F 
 7684      6E73202D 
 7684      66646174 
 7685 1178 6F6E7374 		.ascii	"onstant\000"
 7685      616E7400 
 7686              	.LASF276:
 7687 1180 504C4C5F 		.ascii	"PLL_SRC_MAINCK_XTAL\000"
 7687      5352435F 
 7687      4D41494E 
 7687      434B5F58 
 7687      54414C00 
 7688              	.LASF212:
 7689 1194 6D63616E 		.ascii	"mcan_rx_element_buffer\000"
 7689      5F72785F 
 7689      656C656D 
 7689      656E745F 
 7689      62756666 
 7690              	.LASF224:
 7691 11ab 53464944 		.ascii	"SFID2\000"
 7691      3200
 7692              	.LASF202:
 7693 11b1 4552525F 		.ascii	"ERR_NO_TIMER\000"
 7693      4E4F5F54 
 7693      494D4552 
 7693      00
 7694              	.LASF149:
 7695 11be 5F676C75 		.ascii	"_glue\000"
 7695      6500
 7696              	.LASF335:
 7697 11c4 5F6D6361 		.ascii	"_mcan_message_memory_init\000"
 7697      6E5F6D65 
 7697      73736167 
 7697      655F6D65 
 7697      6D6F7279 
 7698              	.LASF314:
 7699 11de 6D63616E 		.ascii	"mcan_enable_restricted_operation_mode\000"
 7699      5F656E61 
 7699      626C655F 
 7699      72657374 
 7699      72696374 
 7700              	.LASF296:
 7701 1204 6D63616E 		.ascii	"mcan_get_tx_event_fifo_element\000"
 7701      5F676574 
 7701      5F74785F 
 7701      6576656E 
 7701      745F6669 
 7702              	.LASF235:
 7703 1223 73746174 		.ascii	"status_code\000"
 7703      75735F63 
 7703      6F646500 
 7704              	.LASF145:
 7705 122f 5F5F7367 		.ascii	"__sglue\000"
 7705      6C756500 
 7706              	.LASF26:
 7707 1237 4D43414E 		.ascii	"MCAN_BTP\000"
 7707      5F425450 
 7707      00
ARM GAS  /tmp/cciOmULZ.s 			page 166


 7708              	.LASF157:
 7709 1240 5F737472 		.ascii	"_strtok_last\000"
 7709      746F6B5F 
 7709      6C617374 
 7709      00
 7710              	.LASF164:
 7711 124d 5F6D6274 		.ascii	"_mbtowc_state\000"
 7711      6F77635F 
 7711      73746174 
 7711      6500
 7712              	.LASF261:
 7713 125b 6E6F6E6D 		.ascii	"nonmatching_frames_action_standard\000"
 7713      61746368 
 7713      696E675F 
 7713      6672616D 
 7713      65735F61 
 7714              	.LASF69:
 7715 127e 4D43414E 		.ascii	"MCAN_TXEFA\000"
 7715      5F545845 
 7715      464100
 7716              	.LASF67:
 7717 1289 4D43414E 		.ascii	"MCAN_TXEFC\000"
 7717      5F545845 
 7717      464300
 7718              	.LASF342:
 7719 1294 706D635F 		.ascii	"pmc_enable_periph_clk\000"
 7719      656E6162 
 7719      6C655F70 
 7719      65726970 
 7719      685F636C 
 7720              	.LASF1:
 7721 12aa 7369676E 		.ascii	"signed char\000"
 7721      65642063 
 7721      68617200 
 7722              	.LASF308:
 7723 12b6 6D63616E 		.ascii	"mcan_enable_test_mode\000"
 7723      5F656E61 
 7723      626C655F 
 7723      74657374 
 7723      5F6D6F64 
 7724              	.LASF125:
 7725 12cc 5F726565 		.ascii	"_reent\000"
 7725      6E7400
 7726              	.LASF6:
 7727 12d3 73686F72 		.ascii	"short unsigned int\000"
 7727      7420756E 
 7727      7369676E 
 7727      65642069 
 7727      6E7400
 7728              	.LASF68:
 7729 12e6 4D43414E 		.ascii	"MCAN_TXEFS\000"
 7729      5F545845 
 7729      465300
 7730              	.LASF341:
 7731 12f1 706D635F 		.ascii	"pmc_enable_pck\000"
 7731      656E6162 
 7731      6C655F70 
ARM GAS  /tmp/cciOmULZ.s 			page 167


 7731      636B00
 7732              	.LASF287:
 7733 1300 6D63616E 		.ascii	"mcan1_rx_fifo_0\000"
 7733      315F7278 
 7733      5F666966 
 7733      6F5F3000 
 7734              	.LASF288:
 7735 1310 6D63616E 		.ascii	"mcan1_rx_fifo_1\000"
 7735      315F7278 
 7735      5F666966 
 7735      6F5F3100 
 7736              	.LASF100:
 7737 1320 5F666E74 		.ascii	"_fntypes\000"
 7737      79706573 
 7737      00
 7738              	.LASF108:
 7739 1329 5F5F7346 		.ascii	"__sFILE\000"
 7739      494C4500 
 7740              	.LASF269:
 7741 1331 72785F66 		.ascii	"rx_fifo_1_watermark\000"
 7741      69666F5F 
 7741      315F7761 
 7741      7465726D 
 7741      61726B00 
 7742              	.LASF168:
 7743 1345 5F676574 		.ascii	"_getdate_err\000"
 7743      64617465 
 7743      5F657272 
 7743      00
 7744              	.LASF107:
 7745 1352 5F73697A 		.ascii	"_size\000"
 7745      6500
 7746              	.LASF186:
 7747 1358 646F7562 		.ascii	"double\000"
 7747      6C6500
 7748              	.LASF72:
 7749 135f 5F6F6666 		.ascii	"_off_t\000"
 7749      5F7400
 7750              	.LASF118:
 7751 1366 5F6E6275 		.ascii	"_nbuf\000"
 7751      6600
 7752              	.LASF156:
 7753 136c 5F756E75 		.ascii	"_unused_rand\000"
 7753      7365645F 
 7753      72616E64 
 7753      00
 7754              	.LASF263:
 7755 1379 72656D6F 		.ascii	"remote_frames_standard_reject\000"
 7755      74655F66 
 7755      72616D65 
 7755      735F7374 
 7755      616E6461 
 7756              	.LASF297:
 7757 1397 6D63616E 		.ascii	"mcan_set_tx_buffer_element\000"
 7757      5F736574 
 7757      5F74785F 
 7757      62756666 
ARM GAS  /tmp/cciOmULZ.s 			page 168


 7757      65725F65 
 7758              	.LASF282:
 7759 13b2 6D63616E 		.ascii	"mcan0_tx_buffer\000"
 7759      305F7478 
 7759      5F627566 
 7759      66657200 
 7760              	.LASF124:
 7761 13c2 5F666C61 		.ascii	"_flags2\000"
 7761      67733200 
 7762              	.LASF101:
 7763 13ca 5F69735F 		.ascii	"_is_cxa\000"
 7763      63786100 
 7764              	.LASF312:
 7765 13d2 6D63616E 		.ascii	"mcan_enable_bus_monitor_mode\000"
 7765      5F656E61 
 7765      626C655F 
 7765      6275735F 
 7765      6D6F6E69 
 7766              	.LASF300:
 7767 13ef 72785F65 		.ascii	"rx_element\000"
 7767      6C656D65 
 7767      6E7400
 7768              	.LASF153:
 7769 13fa 5F736565 		.ascii	"_seed\000"
 7769      6400
 7770              	.LASF161:
 7771 1400 5F72616E 		.ascii	"_rand_next\000"
 7771      645F6E65 
 7771      787400
 7772              	.LASF206:
 7773 140b 4F504552 		.ascii	"OPERATION_IN_PROGRESS\000"
 7773      4154494F 
 7773      4E5F494E 
 7773      5F50524F 
 7773      47524553 
 7774              	.LASF115:
 7775 1421 5F736565 		.ascii	"_seek\000"
 7775      6B00
 7776              	.LASF129:
 7777 1427 5F737464 		.ascii	"_stderr\000"
 7777      65727200 
 7778              	.LASF176:
 7779 142f 5F6E6D61 		.ascii	"_nmalloc\000"
 7779      6C6C6F63 
 7779      00
 7780              	.LASF151:
 7781 1438 5F696F62 		.ascii	"_iobs\000"
 7781      7300
 7782              	.LASF211:
 7783 143e 4D43414E 		.ascii	"MCAN_RX_ELEMENT_R1_Type\000"
 7783      5F52585F 
 7783      454C454D 
 7783      454E545F 
 7783      52315F54 
 7784              	.LASF290:
 7785 1456 6D63616E 		.ascii	"mcan1_tx_event_fifo\000"
 7785      315F7478 
ARM GAS  /tmp/cciOmULZ.s 			page 169


 7785      5F657665 
 7785      6E745F66 
 7785      69666F00 
 7786              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
