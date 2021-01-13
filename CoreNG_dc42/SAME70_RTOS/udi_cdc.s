ARM GAS  /tmp/ccCxIftT.s 			page 1


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
  12              		.file	"udi_cdc.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.udi_cdc_comm_disable,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	udi_cdc_comm_disable
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	udi_cdc_comm_disable, %function
  25              	udi_cdc_comm_disable:
  26              	.LFB151:
  27              		.file 1 "../asf/common/services/usb/class/cdc/device/udi_cdc.c"
   1:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** /**
   2:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \file
   3:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  *
   4:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \brief USB Device Communication Device Class (CDC) interface.
   5:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  *
   6:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * Copyright (c) 2009-2016 Atmel Corporation. All rights reserved.
   7:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  *
   8:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \asf_license_start
   9:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  *
  10:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \page License
  11:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  *
  12:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * Redistribution and use in source and binary forms, with or without
  13:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * modification, are permitted provided that the following conditions are met:
  14:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  *
  15:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  *    this list of conditions and the following disclaimer.
  17:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  *
  18:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  *    this list of conditions and the following disclaimer in the documentation
  20:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  *    and/or other materials provided with the distribution.
  21:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  *
  22:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  *    from this software without specific prior written permission.
  24:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  *
  25:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * 4. This software may only be redistributed and used in connection with an
  26:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  *    Atmel microcontroller product.
  27:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  *
  28:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
ARM GAS  /tmp/ccCxIftT.s 			page 2


  31:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  *
  40:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \asf_license_stop
  41:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  *
  42:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  */
  43:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** /*
  44:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  */
  46:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
  47:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #include "conf_usb.h"
  48:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #include "usb_protocol.h"
  49:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #include "usb_protocol_cdc.h"
  50:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #include "udd.h"
  51:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #include "udc.h"
  52:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #include "udi_cdc.h"
  53:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #include <string.h>
  54:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
  55:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #ifdef UDI_CDC_LOW_RATE
  56:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #  ifdef USB_DEVICE_HS_SUPPORT
  57:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #    define UDI_CDC_TX_BUFFERS     (UDI_CDC_DATA_EPS_HS_SIZE)
  58:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #    define UDI_CDC_RX_BUFFERS     (UDI_CDC_DATA_EPS_HS_SIZE)
  59:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #  else
  60:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #    define UDI_CDC_TX_BUFFERS     (UDI_CDC_DATA_EPS_FS_SIZE)
  61:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #    define UDI_CDC_RX_BUFFERS     (UDI_CDC_DATA_EPS_FS_SIZE)
  62:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #  endif
  63:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #else
  64:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #  ifdef USB_DEVICE_HS_SUPPORT
  65:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #    define UDI_CDC_TX_BUFFERS     (UDI_CDC_DATA_EPS_HS_SIZE)
  66:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #    define UDI_CDC_RX_BUFFERS     (UDI_CDC_DATA_EPS_HS_SIZE)
  67:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #  else
  68:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #    define UDI_CDC_TX_BUFFERS     (5*UDI_CDC_DATA_EPS_FS_SIZE)
  69:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #    define UDI_CDC_RX_BUFFERS     (5*UDI_CDC_DATA_EPS_FS_SIZE)
  70:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #  endif
  71:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #endif
  72:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
  73:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #ifndef UDI_CDC_TX_EMPTY_NOTIFY
  74:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #  define UDI_CDC_TX_EMPTY_NOTIFY(port)
  75:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #endif
  76:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
  77:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** /**
  78:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \ingroup udi_cdc_group
  79:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \defgroup udi_cdc_group_udc Interface with USB Device Core (UDC)
  80:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  *
  81:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * Structures and functions required by UDC.
  82:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  *
  83:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * @{
  84:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  */
  85:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** bool udi_cdc_comm_enable(void);
  86:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** void udi_cdc_comm_disable(void);
  87:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** bool udi_cdc_comm_setup(void);
ARM GAS  /tmp/ccCxIftT.s 			page 3


  88:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** bool udi_cdc_data_enable(void);
  89:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** void udi_cdc_data_disable(void);
  90:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** bool udi_cdc_data_setup(void);
  91:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** uint8_t udi_cdc_getsetting(void);
  92:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** void udi_cdc_data_sof_notify(void);
  93:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** UDC_DESC_STORAGE udi_api_t udi_api_cdc_comm = {
  94:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	.enable = udi_cdc_comm_enable,
  95:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	.disable = udi_cdc_comm_disable,
  96:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	.setup = udi_cdc_comm_setup,
  97:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	.getsetting = udi_cdc_getsetting,
  98:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** };
  99:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** UDC_DESC_STORAGE udi_api_t udi_api_cdc_data = {
 100:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	.enable = udi_cdc_data_enable,
 101:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	.disable = udi_cdc_data_disable,
 102:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	.setup = udi_cdc_data_setup,
 103:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	.getsetting = udi_cdc_getsetting,
 104:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	.sof_notify = udi_cdc_data_sof_notify,
 105:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** };
 106:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** //@}
 107:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 108:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** /**
 109:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \ingroup udi_cdc_group
 110:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \defgroup udi_cdc_group_internal Implementation of UDI CDC
 111:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  *
 112:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * Class internal implementation
 113:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * @{
 114:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  */
 115:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 116:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** /**
 117:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \name Internal routines
 118:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  */
 119:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** //@{
 120:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 121:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** /**
 122:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \name Routines to control serial line
 123:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  */
 124:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** //@{
 125:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 126:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** /**
 127:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \brief Returns the port number corresponding at current setup request
 128:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  *
 129:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \return port number
 130:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  */
 131:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** static uint8_t udi_cdc_setup_to_port(void);
 132:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 133:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** /**
 134:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \brief Sends line coding to application
 135:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  *
 136:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * Called after SETUP request when line coding data is received.
 137:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  */
 138:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** static void udi_cdc_line_coding_received(void);
 139:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 140:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** /**
 141:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \brief Records new state
 142:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  *
 143:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \param port       Communication port number to manage
 144:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \param b_set      State is enabled if true, else disabled
ARM GAS  /tmp/ccCxIftT.s 			page 4


 145:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \param bit_mask   Field to process (see CDC_SERIAL_STATE_ defines)
 146:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  */
 147:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** static void udi_cdc_ctrl_state_change(uint8_t port, bool b_set, le16_t bit_mask);
 148:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 149:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** /**
 150:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \brief Check and eventually notify the USB host of new state
 151:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  *
 152:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \param port       Communication port number to manage
 153:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \param ep         Port communication endpoint
 154:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  */
 155:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** static void udi_cdc_ctrl_state_notify(uint8_t port, udd_ep_id_t ep);
 156:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 157:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** /**
 158:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \brief Ack sent of serial state message
 159:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * Callback called after serial state message sent
 160:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  *
 161:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \param status     UDD_EP_TRANSFER_OK, if transfer finished
 162:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \param status     UDD_EP_TRANSFER_ABORT, if transfer aborted
 163:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \param n          number of data transfered
 164:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  */
 165:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** static void udi_cdc_serial_state_msg_sent(udd_ep_status_t status, iram_size_t n, udd_ep_id_t ep);
 166:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 167:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** //@}
 168:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 169:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** /**
 170:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \name Routines to process data transfer
 171:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  */
 172:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** //@{
 173:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 174:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** /**
 175:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \brief Enable the reception of data from the USB host
 176:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  *
 177:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * The value udi_cdc_rx_trans_sel indicate the RX buffer to fill.
 178:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  *
 179:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \param port       Communication port number to manage
 180:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  *
 181:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \return \c 1 if function was successfully done, otherwise \c 0.
 182:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  */
 183:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** static bool udi_cdc_rx_start(uint8_t port);
 184:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 185:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** /**
 186:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \brief Update rx buffer management with a new data
 187:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * Callback called after data reception on USB line
 188:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  *
 189:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \param status     UDD_EP_TRANSFER_OK, if transfer finish
 190:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \param status     UDD_EP_TRANSFER_ABORT, if transfer aborted
 191:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \param n          number of data received
 192:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  */
 193:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** static void udi_cdc_data_received(udd_ep_status_t status, iram_size_t n, udd_ep_id_t ep);
 194:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 195:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** /**
 196:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \brief Ack sent of tx buffer
 197:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * Callback called after data transfer on USB line
 198:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  *
 199:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \param status     UDD_EP_TRANSFER_OK, if transfer finished
 200:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \param status     UDD_EP_TRANSFER_ABORT, if transfer aborted
 201:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \param n          number of data transfered
ARM GAS  /tmp/ccCxIftT.s 			page 5


 202:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  */
 203:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** static void udi_cdc_data_sent(udd_ep_status_t status, iram_size_t n, udd_ep_id_t ep);
 204:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 205:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** /**
 206:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \brief Send buffer on line or wait a SOF event
 207:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  *
 208:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \param port       Communication port number to manage
 209:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  */
 210:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** static void udi_cdc_tx_send(uint8_t port);
 211:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 212:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** //@}
 213:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 214:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** //@}
 215:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 216:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** /**
 217:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \name Information about configuration of communication line
 218:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  */
 219:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** //@{
 220:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** COMPILER_WORD_ALIGNED
 221:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		static usb_cdc_line_coding_t udi_cdc_line_coding[UDI_CDC_PORT_NB];
 222:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** static bool udi_cdc_serial_state_msg_ongoing[UDI_CDC_PORT_NB];
 223:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** static volatile le16_t udi_cdc_state[UDI_CDC_PORT_NB];
 224:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** COMPILER_WORD_ALIGNED static usb_cdc_notify_serial_state_t uid_cdc_state_msg[UDI_CDC_PORT_NB];
 225:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 226:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** //! Status of CDC COMM interfaces
 227:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** static volatile uint8_t udi_cdc_nb_comm_enabled = 0;
 228:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** //@}
 229:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 230:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** /**
 231:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * \name Variables to manage RX/TX transfer requests
 232:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  * Two buffers for each sense are used to optimize the speed.
 233:../asf/common/services/usb/class/cdc/device/udi_cdc.c ****  */
 234:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** //@{
 235:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 236:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** //! Status of CDC DATA interfaces
 237:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** static volatile uint8_t udi_cdc_nb_data_enabled = 0;
 238:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** static volatile bool udi_cdc_data_running = false;
 239:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** //! Buffer to receive data
 240:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** COMPILER_WORD_ALIGNED static uint8_t udi_cdc_rx_buf[UDI_CDC_PORT_NB][2][UDI_CDC_RX_BUFFERS];
 241:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** //! Data available in RX buffers
 242:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** static volatile uint16_t udi_cdc_rx_buf_nb[UDI_CDC_PORT_NB][2];
 243:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** //! Give the current RX buffer used (rx0 if 0, rx1 if 1)
 244:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** static volatile uint8_t udi_cdc_rx_buf_sel[UDI_CDC_PORT_NB];
 245:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** //! Read position in current RX buffer
 246:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** static volatile uint16_t udi_cdc_rx_pos[UDI_CDC_PORT_NB];
 247:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** //! Signal a transfer on-going
 248:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** static volatile bool udi_cdc_rx_trans_ongoing[UDI_CDC_PORT_NB];
 249:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 250:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** //! Define a transfer halted
 251:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #define  UDI_CDC_TRANS_HALTED    2
 252:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 253:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** //! Buffer to send data
 254:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** COMPILER_WORD_ALIGNED static uint8_t udi_cdc_tx_buf[UDI_CDC_PORT_NB][2][UDI_CDC_TX_BUFFERS];
 255:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** //! Data available in TX buffers
 256:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** static uint16_t udi_cdc_tx_buf_nb[UDI_CDC_PORT_NB][2];
 257:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** //! Give current TX buffer used (tx0 if 0, tx1 if 1)
 258:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** static volatile uint8_t udi_cdc_tx_buf_sel[UDI_CDC_PORT_NB];
ARM GAS  /tmp/ccCxIftT.s 			page 6


 259:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** //! Value of SOF during last TX transfer
 260:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** static uint16_t udi_cdc_tx_sof_num[UDI_CDC_PORT_NB];
 261:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** //! Signal a transfer on-going
 262:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** static volatile bool udi_cdc_tx_trans_ongoing[UDI_CDC_PORT_NB];
 263:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** //! Signal that both buffer content data to send
 264:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** static volatile bool udi_cdc_tx_both_buf_to_send[UDI_CDC_PORT_NB];
 265:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 266:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** //@}
 267:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 268:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** bool udi_cdc_comm_enable(void)
 269:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 270:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint8_t port;
 271:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint8_t iface_comm_num;
 272:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 273:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #if UDI_CDC_PORT_NB == 1 // To optimize code
 274:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	port = 0;
 275:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_nb_comm_enabled = 0;
 276:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #else
 277:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (udi_cdc_nb_comm_enabled > UDI_CDC_PORT_NB) {
 278:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		udi_cdc_nb_comm_enabled = 0;
 279:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 280:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	port = udi_cdc_nb_comm_enabled;
 281:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #endif
 282:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 283:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	// Initialize control signal management
 284:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_state[port] = CPU_TO_LE16(0);
 285:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 286:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uid_cdc_state_msg[port].header.bmRequestType =
 287:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			USB_REQ_DIR_IN | USB_REQ_TYPE_CLASS |
 288:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			USB_REQ_RECIP_INTERFACE;
 289:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uid_cdc_state_msg[port].header.bNotification = USB_REQ_CDC_NOTIFY_SERIAL_STATE;
 290:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uid_cdc_state_msg[port].header.wValue = LE16(0);
 291:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 292:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	switch (port) {
 293:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #define UDI_CDC_PORT_TO_IFACE_COMM(index, unused) \
 294:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	case index: \
 295:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		iface_comm_num = UDI_CDC_COMM_IFACE_NUMBER_##index; \
 296:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		break;
 297:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	MREPEAT(UDI_CDC_PORT_NB, UDI_CDC_PORT_TO_IFACE_COMM, ~)
 298:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #undef UDI_CDC_PORT_TO_IFACE_COMM
 299:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	default:
 300:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		iface_comm_num = UDI_CDC_COMM_IFACE_NUMBER_0;
 301:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		break;
 302:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 303:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 304:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uid_cdc_state_msg[port].header.wIndex = LE16(iface_comm_num);
 305:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uid_cdc_state_msg[port].header.wLength = LE16(2);
 306:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uid_cdc_state_msg[port].value = CPU_TO_LE16(0);
 307:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 308:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_line_coding[port].dwDTERate = CPU_TO_LE32(UDI_CDC_DEFAULT_RATE);
 309:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_line_coding[port].bCharFormat = UDI_CDC_DEFAULT_STOPBITS;
 310:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_line_coding[port].bParityType = UDI_CDC_DEFAULT_PARITY;
 311:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_line_coding[port].bDataBits = UDI_CDC_DEFAULT_DATABITS;
 312:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	// Call application callback
 313:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	// to initialize memories or indicate that interface is enabled
 314:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	UDI_CDC_SET_CODING_EXT(port,(&udi_cdc_line_coding[port]));
 315:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (!UDI_CDC_ENABLE_EXT(port)) {
ARM GAS  /tmp/ccCxIftT.s 			page 7


 316:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		return false;
 317:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 318:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_nb_comm_enabled++;
 319:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	return true;
 320:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 321:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 322:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** bool udi_cdc_data_enable(void)
 323:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 324:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint8_t port;
 325:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 326:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #if UDI_CDC_PORT_NB == 1 // To optimize code
 327:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	port = 0;
 328:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_nb_data_enabled = 0;
 329:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #else
 330:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (udi_cdc_nb_data_enabled > UDI_CDC_PORT_NB) {
 331:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		udi_cdc_nb_data_enabled = 0;
 332:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 333:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	port = udi_cdc_nb_data_enabled;
 334:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #endif
 335:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 336:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	// Initialize TX management
 337:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_trans_ongoing[port] = false;
 338:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_both_buf_to_send[port] = false;
 339:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_buf_sel[port] = 0;
 340:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_buf_nb[port][0] = 0;
 341:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_buf_nb[port][1] = 0;
 342:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_sof_num[port] = 0;
 343:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_send(port);
 344:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 345:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	// Initialize RX management
 346:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_trans_ongoing[port] = false;
 347:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_buf_sel[port] = 0;
 348:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_buf_nb[port][0] = 0;
 349:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_buf_nb[port][1] = 0;
 350:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_pos[port] = 0;
 351:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (!udi_cdc_rx_start(port)) {
 352:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		return false;
 353:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 354:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_nb_data_enabled++;
 355:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (udi_cdc_nb_data_enabled == UDI_CDC_PORT_NB) {
 356:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		udi_cdc_data_running = true;
 357:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 358:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	return true;
 359:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 360:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 361:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** void udi_cdc_comm_disable(void)
 362:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
  28              		.loc 1 362 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              		@ link register save eliminated.
 363:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	Assert(udi_cdc_nb_comm_enabled != 0);
 364:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_nb_comm_enabled--;
  33              		.loc 1 364 0
  34 0000 024A     		ldr	r2, .L2
  35 0002 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
ARM GAS  /tmp/ccCxIftT.s 			page 8


  36 0004 013B     		subs	r3, r3, #1
  37 0006 DBB2     		uxtb	r3, r3
  38 0008 1370     		strb	r3, [r2]
  39 000a 7047     		bx	lr
  40              	.L3:
  41              		.align	2
  42              	.L2:
  43 000c 00000000 		.word	.LANCHOR0
  44              		.cfi_endproc
  45              	.LFE151:
  46              		.size	udi_cdc_comm_disable, .-udi_cdc_comm_disable
  47              		.section	.text.udi_cdc_data_setup,"ax",%progbits
  48              		.align	1
  49              		.p2align 2,,3
  50              		.global	udi_cdc_data_setup
  51              		.syntax unified
  52              		.thumb
  53              		.thumb_func
  54              		.fpu fpv5-d16
  55              		.type	udi_cdc_data_setup, %function
  56              	udi_cdc_data_setup:
  57              	.LFB154:
 365:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 366:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 367:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** void udi_cdc_data_disable(void)
 368:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 369:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint8_t port;
 370:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 371:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	Assert(udi_cdc_nb_data_enabled != 0);
 372:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_nb_data_enabled--;
 373:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	port = udi_cdc_nb_data_enabled;
 374:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	UDI_CDC_DISABLE_EXT(port);
 375:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_data_running = false;
 376:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 377:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 378:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** bool udi_cdc_comm_setup(void)
 379:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 380:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint8_t port = udi_cdc_setup_to_port();
 381:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 382:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (Udd_setup_is_in()) {
 383:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		// GET Interface Requests
 384:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		if (Udd_setup_type() == USB_REQ_TYPE_CLASS) {
 385:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			// Requests Class Interface Get
 386:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			switch (udd_g_ctrlreq.req.bRequest) {
 387:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			case USB_REQ_CDC_GET_LINE_CODING:
 388:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 				// Get configuration of CDC line
 389:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 				if (sizeof(usb_cdc_line_coding_t) !=
 390:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 						udd_g_ctrlreq.req.wLength)
 391:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 					return false; // Error for USB host
 392:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 				udd_g_ctrlreq.payload =
 393:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 						(uint8_t *) &
 394:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 						udi_cdc_line_coding[port];
 395:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 				udd_g_ctrlreq.payload_size =
 396:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 						sizeof(usb_cdc_line_coding_t);
 397:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 				return true;
 398:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			}
 399:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		}
ARM GAS  /tmp/ccCxIftT.s 			page 9


 400:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 401:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (Udd_setup_is_out()) {
 402:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		// SET Interface Requests
 403:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		if (Udd_setup_type() == USB_REQ_TYPE_CLASS) {
 404:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			// Requests Class Interface Set
 405:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			switch (udd_g_ctrlreq.req.bRequest) {
 406:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			case USB_REQ_CDC_SET_LINE_CODING:
 407:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 				// Change configuration of CDC line
 408:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 				if (sizeof(usb_cdc_line_coding_t) !=
 409:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 						udd_g_ctrlreq.req.wLength)
 410:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 					return false; // Error for USB host
 411:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 				udd_g_ctrlreq.callback =
 412:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 						udi_cdc_line_coding_received;
 413:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 				udd_g_ctrlreq.payload =
 414:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 						(uint8_t *) &
 415:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 						udi_cdc_line_coding[port];
 416:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 				udd_g_ctrlreq.payload_size =
 417:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 						sizeof(usb_cdc_line_coding_t);
 418:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 				return true;
 419:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			case USB_REQ_CDC_SET_CONTROL_LINE_STATE:
 420:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 				// According cdc spec 1.1 chapter 6.2.14
 421:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 				UDI_CDC_SET_DTR_EXT(port, (0 !=
 422:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 						(udd_g_ctrlreq.req.wValue
 423:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 						 & CDC_CTRL_SIGNAL_DTE_PRESENT)));
 424:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 				UDI_CDC_SET_RTS_EXT(port, (0 !=
 425:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 						(udd_g_ctrlreq.req.wValue
 426:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 						 & CDC_CTRL_SIGNAL_ACTIVATE_CARRIER)));
 427:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 				return true;
 428:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			}
 429:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		}
 430:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 431:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	return false;  // request Not supported
 432:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 433:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 434:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** bool udi_cdc_data_setup(void)
 435:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
  58              		.loc 1 435 0
  59              		.cfi_startproc
  60              		@ args = 0, pretend = 0, frame = 0
  61              		@ frame_needed = 0, uses_anonymous_args = 0
  62              		@ link register save eliminated.
 436:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	return false;  // request Not supported
 437:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
  63              		.loc 1 437 0
  64 0000 0020     		movs	r0, #0
  65 0002 7047     		bx	lr
  66              		.cfi_endproc
  67              	.LFE154:
  68              		.size	udi_cdc_data_setup, .-udi_cdc_data_setup
  69              		.section	.text.udi_cdc_getsetting,"ax",%progbits
  70              		.align	1
  71              		.p2align 2,,3
  72              		.global	udi_cdc_getsetting
  73              		.syntax unified
  74              		.thumb
  75              		.thumb_func
  76              		.fpu fpv5-d16
ARM GAS  /tmp/ccCxIftT.s 			page 10


  77              		.type	udi_cdc_getsetting, %function
  78              	udi_cdc_getsetting:
  79              	.LFB155:
 438:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 439:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** uint8_t udi_cdc_getsetting(void)
 440:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
  80              		.loc 1 440 0
  81              		.cfi_startproc
  82              		@ args = 0, pretend = 0, frame = 0
  83              		@ frame_needed = 0, uses_anonymous_args = 0
  84              		@ link register save eliminated.
 441:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	return 0;      // CDC don't have multiple alternate setting
 442:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
  85              		.loc 1 442 0
  86 0000 0020     		movs	r0, #0
  87 0002 7047     		bx	lr
  88              		.cfi_endproc
  89              	.LFE155:
  90              		.size	udi_cdc_getsetting, .-udi_cdc_getsetting
  91              		.section	.text.udi_cdc_line_coding_received,"ax",%progbits
  92              		.align	1
  93              		.p2align 2,,3
  94              		.syntax unified
  95              		.thumb
  96              		.thumb_func
  97              		.fpu fpv5-d16
  98              		.type	udi_cdc_line_coding_received, %function
  99              	udi_cdc_line_coding_received:
 100              	.LFB158:
 443:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 444:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** void udi_cdc_data_sof_notify(void)
 445:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 446:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	static uint8_t port_notify = 0;
 447:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 448:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	// A call of udi_cdc_data_sof_notify() is done for each port
 449:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_send(port_notify);
 450:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #if UDI_CDC_PORT_NB != 1 // To optimize code
 451:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	port_notify++;
 452:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (port_notify >= UDI_CDC_PORT_NB) {
 453:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		port_notify = 0;
 454:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 455:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #endif
 456:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 457:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 458:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 459:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** //-------------------------------------------------
 460:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** //------- Internal routines to control serial line
 461:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 462:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** static uint8_t udi_cdc_setup_to_port(void)
 463:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 464:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint8_t port;
 465:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 466:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	switch (udd_g_ctrlreq.req.wIndex & 0xFF) {
 467:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #define UDI_CDC_IFACE_COMM_TO_PORT(iface, unused) \
 468:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	case UDI_CDC_COMM_IFACE_NUMBER_##iface: \
 469:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		port = iface; \
 470:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		break;
ARM GAS  /tmp/ccCxIftT.s 			page 11


 471:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	MREPEAT(UDI_CDC_PORT_NB, UDI_CDC_IFACE_COMM_TO_PORT, ~)
 472:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #undef UDI_CDC_IFACE_COMM_TO_PORT
 473:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	default:
 474:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		port = 0;
 475:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		break;
 476:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 477:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	return port;
 478:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 479:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 480:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** static void udi_cdc_line_coding_received(void)
 481:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 101              		.loc 1 481 0
 102              		.cfi_startproc
 103              		@ args = 0, pretend = 0, frame = 0
 104              		@ frame_needed = 0, uses_anonymous_args = 0
 105              		@ link register save eliminated.
 106              	.LVL0:
 107 0000 7047     		bx	lr
 108              		.cfi_endproc
 109              	.LFE158:
 110              		.size	udi_cdc_line_coding_received, .-udi_cdc_line_coding_received
 111 0002 00BF     		.section	.text.udi_cdc_data_disable,"ax",%progbits
 112              		.align	1
 113              		.p2align 2,,3
 114              		.global	udi_cdc_data_disable
 115              		.syntax unified
 116              		.thumb
 117              		.thumb_func
 118              		.fpu fpv5-d16
 119              		.type	udi_cdc_data_disable, %function
 120              	udi_cdc_data_disable:
 121              	.LFB152:
 368:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint8_t port;
 122              		.loc 1 368 0
 123              		.cfi_startproc
 124              		@ args = 0, pretend = 0, frame = 0
 125              		@ frame_needed = 0, uses_anonymous_args = 0
 372:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	port = udi_cdc_nb_data_enabled;
 126              		.loc 1 372 0
 127 0000 064A     		ldr	r2, .L9
 368:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint8_t port;
 128              		.loc 1 368 0
 129 0002 08B5     		push	{r3, lr}
 130              		.cfi_def_cfa_offset 8
 131              		.cfi_offset 3, -8
 132              		.cfi_offset 14, -4
 372:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	port = udi_cdc_nb_data_enabled;
 133              		.loc 1 372 0
 134 0004 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
 135 0006 013B     		subs	r3, r3, #1
 136 0008 DBB2     		uxtb	r3, r3
 137 000a 1370     		strb	r3, [r2]
 373:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	UDI_CDC_DISABLE_EXT(port);
 138              		.loc 1 373 0
 139 000c 1078     		ldrb	r0, [r2]	@ zero_extendqisi2
 140              	.LVL1:
 374:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_data_running = false;
ARM GAS  /tmp/ccCxIftT.s 			page 12


 141              		.loc 1 374 0
 142 000e FFF7FEFF 		bl	core_cdc_disable
 143              	.LVL2:
 375:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 144              		.loc 1 375 0
 145 0012 034B     		ldr	r3, .L9+4
 146 0014 0022     		movs	r2, #0
 147 0016 1A70     		strb	r2, [r3]
 148 0018 08BD     		pop	{r3, pc}
 149              	.L10:
 150 001a 00BF     		.align	2
 151              	.L9:
 152 001c 00000000 		.word	.LANCHOR1
 153 0020 00000000 		.word	.LANCHOR2
 154              		.cfi_endproc
 155              	.LFE152:
 156              		.size	udi_cdc_data_disable, .-udi_cdc_data_disable
 157              		.section	.text.udi_cdc_comm_setup,"ax",%progbits
 158              		.align	1
 159              		.p2align 2,,3
 160              		.global	udi_cdc_comm_setup
 161              		.syntax unified
 162              		.thumb
 163              		.thumb_func
 164              		.fpu fpv5-d16
 165              		.type	udi_cdc_comm_setup, %function
 166              	udi_cdc_comm_setup:
 167              	.LFB153:
 379:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint8_t port = udi_cdc_setup_to_port();
 168              		.loc 1 379 0
 169              		.cfi_startproc
 170              		@ args = 0, pretend = 0, frame = 0
 171              		@ frame_needed = 0, uses_anonymous_args = 0
 172              		@ link register save eliminated.
 173              	.LVL3:
 382:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		// GET Interface Requests
 174              		.loc 1 382 0
 175 0000 164A     		ldr	r2, .L31
 176 0002 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
 177 0004 13F0800F 		tst	r3, #128
 384:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			// Requests Class Interface Get
 178              		.loc 1 384 0
 179 0008 03F06003 		and	r3, r3, #96
 382:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		// GET Interface Requests
 180              		.loc 1 382 0
 181 000c 0CD1     		bne	.L29
 403:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			// Requests Class Interface Set
 182              		.loc 1 403 0
 183 000e 202B     		cmp	r3, #32
 184 0010 01D0     		beq	.L30
 185              	.L22:
 431:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 186              		.loc 1 431 0
 187 0012 0020     		movs	r0, #0
 188 0014 7047     		bx	lr
 189              	.L30:
 405:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			case USB_REQ_CDC_SET_LINE_CODING:
ARM GAS  /tmp/ccCxIftT.s 			page 13


 190              		.loc 1 405 0
 191 0016 5078     		ldrb	r0, [r2, #1]	@ zero_extendqisi2
 192 0018 2028     		cmp	r0, #32
 193 001a 12D0     		beq	.L15
 431:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 194              		.loc 1 431 0
 195 001c A0F12200 		sub	r0, #34
 196 0020 B0FA80F0 		clz	r0, r0
 197 0024 4009     		lsrs	r0, r0, #5
 198 0026 7047     		bx	lr
 199              	.L29:
 384:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			// Requests Class Interface Get
 200              		.loc 1 384 0
 201 0028 202B     		cmp	r3, #32
 202 002a F2D1     		bne	.L22
 386:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			case USB_REQ_CDC_GET_LINE_CODING:
 203              		.loc 1 386 0
 204 002c 5378     		ldrb	r3, [r2, #1]	@ zero_extendqisi2
 205 002e 212B     		cmp	r3, #33
 206 0030 EFD1     		bne	.L22
 389:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 						udd_g_ctrlreq.req.wLength)
 207              		.loc 1 389 0
 208 0032 D388     		ldrh	r3, [r2, #6]
 209 0034 072B     		cmp	r3, #7
 210 0036 ECD1     		bne	.L22
 392:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 						(uint8_t *) &
 211              		.loc 1 392 0
 212 0038 0949     		ldr	r1, .L31+4
 397:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			}
 213              		.loc 1 397 0
 214 003a 0120     		movs	r0, #1
 395:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 						sizeof(usb_cdc_line_coding_t);
 215              		.loc 1 395 0
 216 003c 9381     		strh	r3, [r2, #12]	@ movhi
 392:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 						(uint8_t *) &
 217              		.loc 1 392 0
 218 003e 9160     		str	r1, [r2, #8]
 397:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			}
 219              		.loc 1 397 0
 220 0040 7047     		bx	lr
 221              	.L15:
 408:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 						udd_g_ctrlreq.req.wLength)
 222              		.loc 1 408 0
 223 0042 D388     		ldrh	r3, [r2, #6]
 224 0044 072B     		cmp	r3, #7
 225 0046 E4D1     		bne	.L22
 226              	.LBB254:
 227              	.LBB255:
 413:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 						(uint8_t *) &
 228              		.loc 1 413 0
 229 0048 0549     		ldr	r1, .L31+4
 416:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 						sizeof(usb_cdc_line_coding_t);
 230              		.loc 1 416 0
 231 004a 0120     		movs	r0, #1
 232              	.LBE255:
 233              	.LBE254:
 379:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint8_t port = udi_cdc_setup_to_port();
ARM GAS  /tmp/ccCxIftT.s 			page 14


 234              		.loc 1 379 0
 235 004c 10B4     		push	{r4}
 236              		.cfi_def_cfa_offset 4
 237              		.cfi_offset 4, -4
 238              	.LBB257:
 239              	.LBB256:
 411:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 						udi_cdc_line_coding_received;
 240              		.loc 1 411 0
 241 004e 054C     		ldr	r4, .L31+8
 416:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 						sizeof(usb_cdc_line_coding_t);
 242              		.loc 1 416 0
 243 0050 9381     		strh	r3, [r2, #12]	@ movhi
 411:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 						udi_cdc_line_coding_received;
 244              		.loc 1 411 0
 245 0052 1461     		str	r4, [r2, #16]
 413:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 						(uint8_t *) &
 246              		.loc 1 413 0
 247 0054 9160     		str	r1, [r2, #8]
 248              	.LBE256:
 249              	.LBE257:
 432:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 250              		.loc 1 432 0
 251 0056 5DF8044B 		ldr	r4, [sp], #4
 252              		.cfi_restore 4
 253              		.cfi_def_cfa_offset 0
 254 005a 7047     		bx	lr
 255              	.L32:
 256              		.align	2
 257              	.L31:
 258 005c 00000000 		.word	udd_g_ctrlreq
 259 0060 00000000 		.word	.LANCHOR3
 260 0064 00000000 		.word	udi_cdc_line_coding_received
 261              		.cfi_endproc
 262              	.LFE153:
 263              		.size	udi_cdc_comm_setup, .-udi_cdc_comm_setup
 264              		.section	.text.udi_cdc_comm_enable,"ax",%progbits
 265              		.align	1
 266              		.p2align 2,,3
 267              		.global	udi_cdc_comm_enable
 268              		.syntax unified
 269              		.thumb
 270              		.thumb_func
 271              		.fpu fpv5-d16
 272              		.type	udi_cdc_comm_enable, %function
 273              	udi_cdc_comm_enable:
 274              	.LFB149:
 269:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint8_t port;
 275              		.loc 1 269 0
 276              		.cfi_startproc
 277              		@ args = 0, pretend = 0, frame = 0
 278              		@ frame_needed = 0, uses_anonymous_args = 0
 279              	.LVL4:
 280 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 281              		.cfi_def_cfa_offset 24
 282              		.cfi_offset 3, -24
 283              		.cfi_offset 4, -20
 284              		.cfi_offset 5, -16
ARM GAS  /tmp/ccCxIftT.s 			page 15


 285              		.cfi_offset 6, -12
 286              		.cfi_offset 7, -8
 287              		.cfi_offset 14, -4
 286:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			USB_REQ_DIR_IN | USB_REQ_TYPE_CLASS |
 288              		.loc 1 286 0
 289 0002 124A     		ldr	r2, .L39
 275:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #else
 290              		.loc 1 275 0
 291 0004 0023     		movs	r3, #0
 308:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_line_coding[port].bCharFormat = UDI_CDC_DEFAULT_STOPBITS;
 292              		.loc 1 308 0
 293 0006 1249     		ldr	r1, .L39+4
 286:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			USB_REQ_DIR_IN | USB_REQ_TYPE_CLASS |
 294              		.loc 1 286 0
 295 0008 4FF0A10C 		mov	ip, #161
 284:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 296              		.loc 1 284 0
 297 000c 1148     		ldr	r0, .L39+8
 289:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uid_cdc_state_msg[port].header.wValue = LE16(0);
 298              		.loc 1 289 0
 299 000e 4FF0200E 		mov	lr, #32
 275:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #else
 300              		.loc 1 275 0
 301 0012 114C     		ldr	r4, .L39+12
 305:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uid_cdc_state_msg[port].value = CPU_TO_LE16(0);
 302              		.loc 1 305 0
 303 0014 0227     		movs	r7, #2
 308:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_line_coding[port].bCharFormat = UDI_CDC_DEFAULT_STOPBITS;
 304              		.loc 1 308 0
 305 0016 4FF4E136 		mov	r6, #115200
 311:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	// Call application callback
 306              		.loc 1 311 0
 307 001a 0825     		movs	r5, #8
 275:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #else
 308              		.loc 1 275 0
 309 001c 2370     		strb	r3, [r4]
 290:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 310              		.loc 1 290 0
 311 001e 5380     		strh	r3, [r2, #2]	@ movhi
 312              	.LVL5:
 284:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 313              		.loc 1 284 0
 314 0020 0380     		strh	r3, [r0]	@ movhi
 315:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		return false;
 315              		.loc 1 315 0
 316 0022 1846     		mov	r0, r3
 304:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uid_cdc_state_msg[port].header.wLength = LE16(2);
 317              		.loc 1 304 0
 318 0024 9380     		strh	r3, [r2, #4]	@ movhi
 306:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 319              		.loc 1 306 0
 320 0026 1381     		strh	r3, [r2, #8]	@ movhi
 286:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			USB_REQ_DIR_IN | USB_REQ_TYPE_CLASS |
 321              		.loc 1 286 0
 322 0028 82F800C0 		strb	ip, [r2]
 289:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uid_cdc_state_msg[port].header.wValue = LE16(0);
 323              		.loc 1 289 0
ARM GAS  /tmp/ccCxIftT.s 			page 16


 324 002c 82F801E0 		strb	lr, [r2, #1]
 305:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uid_cdc_state_msg[port].value = CPU_TO_LE16(0);
 325              		.loc 1 305 0
 326 0030 D780     		strh	r7, [r2, #6]	@ movhi
 309:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_line_coding[port].bParityType = UDI_CDC_DEFAULT_PARITY;
 327              		.loc 1 309 0
 328 0032 0B71     		strb	r3, [r1, #4]
 310:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_line_coding[port].bDataBits = UDI_CDC_DEFAULT_DATABITS;
 329              		.loc 1 310 0
 330 0034 4B71     		strb	r3, [r1, #5]
 308:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_line_coding[port].bCharFormat = UDI_CDC_DEFAULT_STOPBITS;
 331              		.loc 1 308 0
 332 0036 0E60     		str	r6, [r1]
 311:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	// Call application callback
 333              		.loc 1 311 0
 334 0038 8D71     		strb	r5, [r1, #6]
 315:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		return false;
 335              		.loc 1 315 0
 336 003a FFF7FEFF 		bl	core_cdc_enable
 337              	.LVL6:
 338 003e 18B1     		cbz	r0, .L34
 339              	.LBB260:
 318:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	return true;
 340              		.loc 1 318 0
 341 0040 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 342 0042 0133     		adds	r3, r3, #1
 343 0044 DBB2     		uxtb	r3, r3
 344 0046 2370     		strb	r3, [r4]
 345              	.L34:
 346              	.LBE260:
 320:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 347              		.loc 1 320 0
 348 0048 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 349              	.L40:
 350 004a 00BF     		.align	2
 351              	.L39:
 352 004c 00000000 		.word	.LANCHOR5
 353 0050 00000000 		.word	.LANCHOR3
 354 0054 00000000 		.word	.LANCHOR4
 355 0058 00000000 		.word	.LANCHOR0
 356              		.cfi_endproc
 357              	.LFE149:
 358              		.size	udi_cdc_comm_enable, .-udi_cdc_comm_enable
 359              		.section	.text.udi_cdc_ctrl_state_notify.isra.5.part.6,"ax",%progbits
 360              		.align	1
 361              		.p2align 2,,3
 362              		.syntax unified
 363              		.thumb
 364              		.thumb_func
 365              		.fpu fpv5-d16
 366              		.type	udi_cdc_ctrl_state_notify.isra.5.part.6, %function
 367              	udi_cdc_ctrl_state_notify.isra.5.part.6:
 368              	.LFB200:
 482:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint8_t port = udi_cdc_setup_to_port();
 483:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	UNUSED(port);
 484:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 485:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	UDI_CDC_SET_CODING_EXT(port, (&udi_cdc_line_coding[port]));
ARM GAS  /tmp/ccCxIftT.s 			page 17


 486:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 487:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 488:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** static void udi_cdc_ctrl_state_change(uint8_t port, bool b_set, le16_t bit_mask)
 489:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 490:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	irqflags_t flags;
 491:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udd_ep_id_t ep_comm;
 492:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 493:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #if UDI_CDC_PORT_NB == 1 // To optimize code
 494:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	port = 0;
 495:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #endif
 496:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 497:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	// Update state
 498:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	flags = cpu_irq_save(); // Protect udi_cdc_state
 499:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (b_set) {
 500:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		udi_cdc_state[port] |= bit_mask;
 501:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	} else {
 502:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		udi_cdc_state[port] &= ~(unsigned)bit_mask;
 503:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 504:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	cpu_irq_restore(flags);
 505:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 506:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	// Send it if possible and state changed
 507:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	switch (port) {
 508:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #define UDI_CDC_PORT_TO_COMM_EP(index, unused) \
 509:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	case index: \
 510:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		ep_comm = UDI_CDC_COMM_EP_##index; \
 511:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		break;
 512:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	MREPEAT(UDI_CDC_PORT_NB, UDI_CDC_PORT_TO_COMM_EP, ~)
 513:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #undef UDI_CDC_PORT_TO_COMM_EP
 514:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	default:
 515:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		ep_comm = UDI_CDC_COMM_EP_0;
 516:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		break;
 517:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 518:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_ctrl_state_notify(port, ep_comm);
 519:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 520:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 521:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 522:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** static void udi_cdc_ctrl_state_notify(uint8_t port, udd_ep_id_t ep)
 369              		.loc 1 522 0
 370              		.cfi_startproc
 371              		@ args = 0, pretend = 0, frame = 0
 372              		@ frame_needed = 0, uses_anonymous_args = 0
 373              	.LVL7:
 523:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 524:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #if UDI_CDC_PORT_NB == 1 // To optimize code
 525:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	port = 0;
 526:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #endif
 527:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 528:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	// Send it if possible and state changed
 529:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if ((!udi_cdc_serial_state_msg_ongoing[port])
 530:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			&& (udi_cdc_state[port] != uid_cdc_state_msg[port].value)) {
 531:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		// Fill notification message
 532:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		uid_cdc_state_msg[port].value = udi_cdc_state[port];
 374              		.loc 1 532 0
 375 0000 084A     		ldr	r2, .L43
 533:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		// Send notification message
 534:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		udi_cdc_serial_state_msg_ongoing[port] =
 535:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 				udd_ep_run(ep,
ARM GAS  /tmp/ccCxIftT.s 			page 18


 376              		.loc 1 535 0
 377 0002 0A23     		movs	r3, #10
 378 0004 0021     		movs	r1, #0
 522:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 379              		.loc 1 522 0
 380 0006 70B5     		push	{r4, r5, r6, lr}
 381              		.cfi_def_cfa_offset 16
 382              		.cfi_offset 4, -16
 383              		.cfi_offset 5, -12
 384              		.cfi_offset 6, -8
 385              		.cfi_offset 14, -4
 532:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		// Send notification message
 386              		.loc 1 532 0
 387 0008 074C     		ldr	r4, .L43+4
 522:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 388              		.loc 1 522 0
 389 000a 82B0     		sub	sp, sp, #8
 390              		.cfi_def_cfa_offset 24
 391              		.loc 1 535 0
 392 000c 074E     		ldr	r6, .L43+8
 532:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		// Send notification message
 393              		.loc 1 532 0
 394 000e 1588     		ldrh	r5, [r2]
 395              		.loc 1 535 0
 396 0010 2246     		mov	r2, r4
 397 0012 0096     		str	r6, [sp]
 532:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		// Send notification message
 398              		.loc 1 532 0
 399 0014 2581     		strh	r5, [r4, #8]	@ movhi
 400              		.loc 1 535 0
 401 0016 FFF7FEFF 		bl	udd_ep_run
 402              	.LVL8:
 534:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 				udd_ep_run(ep,
 403              		.loc 1 534 0
 404 001a 054B     		ldr	r3, .L43+12
 405 001c 1870     		strb	r0, [r3]
 536:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 				false,
 537:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 				(uint8_t *) & uid_cdc_state_msg[port],
 538:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 				sizeof(uid_cdc_state_msg[0]),
 539:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 				udi_cdc_serial_state_msg_sent);
 540:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 541:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 406              		.loc 1 541 0
 407 001e 02B0     		add	sp, sp, #8
 408              		.cfi_def_cfa_offset 16
 409              		@ sp needed
 410 0020 70BD     		pop	{r4, r5, r6, pc}
 411              	.L44:
 412 0022 00BF     		.align	2
 413              	.L43:
 414 0024 00000000 		.word	.LANCHOR4
 415 0028 00000000 		.word	.LANCHOR5
 416 002c 00000000 		.word	udi_cdc_serial_state_msg_sent
 417 0030 00000000 		.word	.LANCHOR6
 418              		.cfi_endproc
 419              	.LFE200:
 420              		.size	udi_cdc_ctrl_state_notify.isra.5.part.6, .-udi_cdc_ctrl_state_notify.isra.5.part.6
ARM GAS  /tmp/ccCxIftT.s 			page 19


 421              		.section	.text.udi_cdc_serial_state_msg_sent,"ax",%progbits
 422              		.align	1
 423              		.p2align 2,,3
 424              		.syntax unified
 425              		.thumb
 426              		.thumb_func
 427              		.fpu fpv5-d16
 428              		.type	udi_cdc_serial_state_msg_sent, %function
 429              	udi_cdc_serial_state_msg_sent:
 430              	.LFB161:
 542:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 543:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 544:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** static void udi_cdc_serial_state_msg_sent(udd_ep_status_t status, iram_size_t n, udd_ep_id_t ep)
 545:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 431              		.loc 1 545 0
 432              		.cfi_startproc
 433              		@ args = 0, pretend = 0, frame = 0
 434              		@ frame_needed = 0, uses_anonymous_args = 0
 435              		@ link register save eliminated.
 436              	.LVL9:
 437 0000 F0B4     		push	{r4, r5, r6, r7}
 438              		.cfi_def_cfa_offset 16
 439              		.cfi_offset 4, -16
 440              		.cfi_offset 5, -12
 441              		.cfi_offset 6, -8
 442              		.cfi_offset 7, -4
 546:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint8_t port;
 547:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	UNUSED(n);
 548:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	UNUSED(status);
 549:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 550:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	switch (ep) {
 551:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #define UDI_CDC_GET_PORT_FROM_COMM_EP(iface, unused) \
 552:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	case UDI_CDC_COMM_EP_##iface: \
 553:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		port = iface; \
 554:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		break;
 555:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	MREPEAT(UDI_CDC_PORT_NB, UDI_CDC_GET_PORT_FROM_COMM_EP, ~)
 556:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #undef UDI_CDC_GET_PORT_FROM_COMM_EP
 557:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	default:
 558:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		port = 0;
 559:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		break;
 560:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 561:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 562:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_serial_state_msg_ongoing[port] = false;
 563:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 564:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	// For the irregular signals like break, the incoming ring signal,
 565:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	// or the overrun error state, this will reset their values to zero
 566:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	// and again will not send another notification until their state changes.
 567:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_state[port] &= ~(CDC_SERIAL_STATE_BREAK |
 443              		.loc 1 567 0
 444 0002 0D4C     		ldr	r4, .L48
 562:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 445              		.loc 1 562 0
 446 0004 0027     		movs	r7, #0
 568:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			CDC_SERIAL_STATE_RING |
 569:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			CDC_SERIAL_STATE_FRAMING |
 570:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			CDC_SERIAL_STATE_PARITY | CDC_SERIAL_STATE_OVERRUN);
 571:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uid_cdc_state_msg[port].value &= ~(CDC_SERIAL_STATE_BREAK |
ARM GAS  /tmp/ccCxIftT.s 			page 20


 447              		.loc 1 571 0
 448 0006 0D4D     		ldr	r5, .L48+4
 567:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			CDC_SERIAL_STATE_RING |
 449              		.loc 1 567 0
 450 0008 2388     		ldrh	r3, [r4]
 451              		.loc 1 571 0
 452 000a 2989     		ldrh	r1, [r5, #8]
 453              	.LVL10:
 567:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			CDC_SERIAL_STATE_RING |
 454              		.loc 1 567 0
 455 000c 23F07C03 		bic	r3, r3, #124
 562:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 456              		.loc 1 562 0
 457 0010 0B4E     		ldr	r6, .L48+8
 458              		.loc 1 571 0
 459 0012 21F07C01 		bic	r1, r1, #124
 567:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			CDC_SERIAL_STATE_RING |
 460              		.loc 1 567 0
 461 0016 1B04     		lsls	r3, r3, #16
 562:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 462              		.loc 1 562 0
 463 0018 3770     		strb	r7, [r6]
 464              		.loc 1 571 0
 465 001a 89B2     		uxth	r1, r1
 567:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			CDC_SERIAL_STATE_RING |
 466              		.loc 1 567 0
 467 001c 1B0C     		lsrs	r3, r3, #16
 468              		.loc 1 571 0
 469 001e 2981     		strh	r1, [r5, #8]	@ movhi
 470              	.LVL11:
 567:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			CDC_SERIAL_STATE_RING |
 471              		.loc 1 567 0
 472 0020 2380     		strh	r3, [r4]	@ movhi
 473              	.LBB261:
 474              	.LBB262:
 530:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		// Fill notification message
 475              		.loc 1 530 0
 476 0022 2388     		ldrh	r3, [r4]
 477 0024 9BB2     		uxth	r3, r3
 478 0026 9942     		cmp	r1, r3
 479 0028 03D0     		beq	.L45
 480 002a 1046     		mov	r0, r2
 481              	.LVL12:
 482              	.LBE262:
 483              	.LBE261:
 572:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			CDC_SERIAL_STATE_RING |
 573:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			CDC_SERIAL_STATE_FRAMING |
 574:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			CDC_SERIAL_STATE_PARITY | CDC_SERIAL_STATE_OVERRUN);
 575:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	// Send it if possible and state changed
 576:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_ctrl_state_notify(port, ep);
 577:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 484              		.loc 1 577 0
 485 002c F0BC     		pop	{r4, r5, r6, r7}
 486              		.cfi_remember_state
 487              		.cfi_restore 7
 488              		.cfi_restore 6
 489              		.cfi_restore 5
ARM GAS  /tmp/ccCxIftT.s 			page 21


 490              		.cfi_restore 4
 491              		.cfi_def_cfa_offset 0
 492              	.LBB264:
 493              	.LBB263:
 494 002e FFF7FEBF 		b	udi_cdc_ctrl_state_notify.isra.5.part.6
 495              	.LVL13:
 496              	.L45:
 497              		.cfi_restore_state
 498              	.LBE263:
 499              	.LBE264:
 500 0032 F0BC     		pop	{r4, r5, r6, r7}
 501              		.cfi_restore 7
 502              		.cfi_restore 6
 503              		.cfi_restore 5
 504              		.cfi_restore 4
 505              		.cfi_def_cfa_offset 0
 506 0034 7047     		bx	lr
 507              	.L49:
 508 0036 00BF     		.align	2
 509              	.L48:
 510 0038 00000000 		.word	.LANCHOR4
 511 003c 00000000 		.word	.LANCHOR5
 512 0040 00000000 		.word	.LANCHOR6
 513              		.cfi_endproc
 514              	.LFE161:
 515              		.size	udi_cdc_serial_state_msg_sent, .-udi_cdc_serial_state_msg_sent
 516              		.section	.text.udi_cdc_ctrl_state_change.isra.7,"ax",%progbits
 517              		.align	1
 518              		.p2align 2,,3
 519              		.syntax unified
 520              		.thumb
 521              		.thumb_func
 522              		.fpu fpv5-d16
 523              		.type	udi_cdc_ctrl_state_change.isra.7, %function
 524              	udi_cdc_ctrl_state_change.isra.7:
 525              	.LFB201:
 488:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 526              		.loc 1 488 0
 527              		.cfi_startproc
 528              		@ args = 0, pretend = 0, frame = 0
 529              		@ frame_needed = 0, uses_anonymous_args = 0
 530              		@ link register save eliminated.
 531              	.LVL14:
 532 0000 30B4     		push	{r4, r5}
 533              		.cfi_def_cfa_offset 8
 534              		.cfi_offset 4, -8
 535              		.cfi_offset 5, -4
 536              	.LBB299:
 537              	.LBB300:
 538              	.LBB301:
 539              	.LBB302:
 540              		.file 2 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h"
   1:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /**************************************************************************//**
   2:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  * @file     core_cmFunc.h
   3:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  * @brief    CMSIS Cortex-M Core Function Access Header File
   4:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  * @version  V4.00
   5:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  * @date     28. August 2014
ARM GAS  /tmp/ccCxIftT.s 			page 22


   6:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  *
   7:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  * @note
   8:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  *
   9:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  ******************************************************************************/
  10:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /* Copyright (c) 2009 - 2014 ARM LIMITED
  11:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  12:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    All rights reserved.
  13:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    Redistribution and use in source and binary forms, with or without
  14:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    modification, are permitted provided that the following conditions are met:
  15:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    - Redistributions of source code must retain the above copyright
  16:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****      notice, this list of conditions and the following disclaimer.
  17:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    - Redistributions in binary form must reproduce the above copyright
  18:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****      notice, this list of conditions and the following disclaimer in the
  19:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****      documentation and/or other materials provided with the distribution.
  20:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    - Neither the name of ARM nor the names of its contributors may be used
  21:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****      to endorse or promote products derived from this software without
  22:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****      specific prior written permission.
  23:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    *
  24:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  25:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  26:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  27:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    ARE DISCLAIMED. IN NO EVENT SHALL COPYRIGHT HOLDERS AND CONTRIBUTORS BE
  28:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
  29:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
  30:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
  31:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
  32:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
  33:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  34:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    POSSIBILITY OF SUCH DAMAGE.
  35:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    ---------------------------------------------------------------------------*/
  36:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  37:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  38:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #ifndef __CORE_CMFUNC_H
  39:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #define __CORE_CMFUNC_H
  40:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  41:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  42:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /* ###########################  Core Function Access  ########################### */
  43:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \ingroup  CMSIS_Core_FunctionInterface
  44:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \defgroup CMSIS_Core_RegAccFunctions CMSIS Core Register Access Functions
  45:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   @{
  46:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
  47:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  48:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #if   defined ( __CC_ARM ) /*------------------RealView Compiler -----------------*/
  49:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /* ARM armcc specific functions */
  50:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  51:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #if (__ARMCC_VERSION < 400677)
  52:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   #error "Please use ARM Compiler Toolchain V4.0.677 or later!"
  53:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #endif
  54:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  55:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /* intrinsic void __enable_irq();     */
  56:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /* intrinsic void __disable_irq();    */
  57:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  58:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get Control Register
  59:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  60:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the content of the Control Register.
  61:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  62:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               Control Register value
ARM GAS  /tmp/ccCxIftT.s 			page 23


  63:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
  64:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE uint32_t __get_CONTROL(void)
  65:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
  66:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regControl         __ASM("control");
  67:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(__regControl);
  68:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
  69:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  70:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  71:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Set Control Register
  72:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  73:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function writes the given value to the Control Register.
  74:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  75:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \param [in]    control  Control Register value to set
  76:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
  77:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE void __set_CONTROL(uint32_t control)
  78:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
  79:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regControl         __ASM("control");
  80:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __regControl = control;
  81:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
  82:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  83:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  84:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get IPSR Register
  85:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  86:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the content of the IPSR Register.
  87:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  88:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               IPSR Register value
  89:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
  90:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE uint32_t __get_IPSR(void)
  91:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
  92:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regIPSR          __ASM("ipsr");
  93:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(__regIPSR);
  94:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
  95:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  96:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  97:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get APSR Register
  98:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  99:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the content of the APSR Register.
 100:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 101:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               APSR Register value
 102:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 103:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE uint32_t __get_APSR(void)
 104:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 105:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regAPSR          __ASM("apsr");
 106:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(__regAPSR);
 107:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 108:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 109:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 110:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get xPSR Register
 111:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 112:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the content of the xPSR Register.
 113:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 114:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               xPSR Register value
 115:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 116:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE uint32_t __get_xPSR(void)
 117:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 118:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regXPSR          __ASM("xpsr");
 119:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(__regXPSR);
ARM GAS  /tmp/ccCxIftT.s 			page 24


 120:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 121:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 122:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 123:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get Process Stack Pointer
 124:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 125:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the current value of the Process Stack Pointer (PSP).
 126:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 127:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               PSP Register value
 128:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 129:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE uint32_t __get_PSP(void)
 130:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 131:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regProcessStackPointer  __ASM("psp");
 132:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(__regProcessStackPointer);
 133:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 134:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 135:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 136:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Set Process Stack Pointer
 137:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 138:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function assigns the given value to the Process Stack Pointer (PSP).
 139:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 140:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \param [in]    topOfProcStack  Process Stack Pointer value to set
 141:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 142:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE void __set_PSP(uint32_t topOfProcStack)
 143:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 144:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regProcessStackPointer  __ASM("psp");
 145:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __regProcessStackPointer = topOfProcStack;
 146:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 147:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 148:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 149:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get Main Stack Pointer
 150:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 151:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the current value of the Main Stack Pointer (MSP).
 152:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 153:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               MSP Register value
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 155:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE uint32_t __get_MSP(void)
 156:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 157:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regMainStackPointer     __ASM("msp");
 158:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(__regMainStackPointer);
 159:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 160:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 161:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 162:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Set Main Stack Pointer
 163:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 164:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function assigns the given value to the Main Stack Pointer (MSP).
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 166:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \param [in]    topOfMainStack  Main Stack Pointer value to set
 167:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 168:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE void __set_MSP(uint32_t topOfMainStack)
 169:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 170:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regMainStackPointer     __ASM("msp");
 171:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __regMainStackPointer = topOfMainStack;
 172:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 173:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 174:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 175:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get Priority Mask
 176:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
ARM GAS  /tmp/ccCxIftT.s 			page 25


 177:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the current state of the priority mask bit from the Priority Mask Registe
 178:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 179:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               Priority Mask value
 180:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 181:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE uint32_t __get_PRIMASK(void)
 182:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 183:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regPriMask         __ASM("primask");
 184:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(__regPriMask);
 185:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 186:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 187:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 188:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Set Priority Mask
 189:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 190:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function assigns the given value to the Priority Mask Register.
 191:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 192:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \param [in]    priMask  Priority Mask
 193:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 194:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE void __set_PRIMASK(uint32_t priMask)
 195:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 196:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regPriMask         __ASM("primask");
 197:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __regPriMask = (priMask);
 198:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 199:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 200:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 201:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #if       (__CORTEX_M >= 0x03) || (__CORTEX_SC >= 300)
 202:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 203:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Enable FIQ
 204:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 205:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function enables FIQ interrupts by clearing the F-bit in the CPSR.
 206:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     Can only be executed in Privileged modes.
 207:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 208:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #define __enable_fault_irq                __enable_fiq
 209:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 210:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 211:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Disable FIQ
 212:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 213:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function disables FIQ interrupts by setting the F-bit in the CPSR.
 214:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     Can only be executed in Privileged modes.
 215:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 216:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #define __disable_fault_irq               __disable_fiq
 217:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 218:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 219:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get Base Priority
 220:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 221:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the current value of the Base Priority register.
 222:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 223:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               Base Priority register value
 224:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 225:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE uint32_t  __get_BASEPRI(void)
 226:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 227:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regBasePri         __ASM("basepri");
 228:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(__regBasePri);
 229:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 230:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 231:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 232:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Set Base Priority
 233:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
ARM GAS  /tmp/ccCxIftT.s 			page 26


 234:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function assigns the given value to the Base Priority register.
 235:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 236:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \param [in]    basePri  Base Priority value to set
 237:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 238:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE void __set_BASEPRI(uint32_t basePri)
 239:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 240:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regBasePri         __ASM("basepri");
 241:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __regBasePri = (basePri & 0xff);
 242:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 243:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 244:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 245:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get Fault Mask
 246:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 247:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the current value of the Fault Mask register.
 248:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 249:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               Fault Mask register value
 250:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 251:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE uint32_t __get_FAULTMASK(void)
 252:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 253:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regFaultMask       __ASM("faultmask");
 254:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(__regFaultMask);
 255:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 256:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 257:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 258:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Set Fault Mask
 259:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 260:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function assigns the given value to the Fault Mask register.
 261:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 262:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \param [in]    faultMask  Fault Mask value to set
 263:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 264:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE void __set_FAULTMASK(uint32_t faultMask)
 265:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 266:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regFaultMask       __ASM("faultmask");
 267:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __regFaultMask = (faultMask & (uint32_t)1);
 268:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 269:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 270:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #endif /* (__CORTEX_M >= 0x03) || (__CORTEX_SC >= 300) */
 271:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 272:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 273:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #if       (__CORTEX_M == 0x04) || (__CORTEX_M == 0x07)
 274:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 275:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get FPSCR
 276:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 277:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the current value of the Floating Point Status/Control register.
 278:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 279:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               Floating Point Status/Control register value
 280:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 281:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE uint32_t __get_FPSCR(void)
 282:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 283:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #if (__FPU_PRESENT == 1) && (__FPU_USED == 1)
 284:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regfpscr         __ASM("fpscr");
 285:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(__regfpscr);
 286:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #else
 287:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    return(0);
 288:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #endif
 289:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 290:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
ARM GAS  /tmp/ccCxIftT.s 			page 27


 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 292:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Set FPSCR
 293:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 294:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function assigns the given value to the Floating Point Status/Control register.
 295:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 296:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \param [in]    fpscr  Floating Point Status/Control value to set
 297:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 298:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE void __set_FPSCR(uint32_t fpscr)
 299:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 300:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #if (__FPU_PRESENT == 1) && (__FPU_USED == 1)
 301:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regfpscr         __ASM("fpscr");
 302:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __regfpscr = (fpscr);
 303:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #endif
 304:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 305:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 306:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #endif /* (__CORTEX_M == 0x04) || (__CORTEX_M == 0x07) */
 307:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 308:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 309:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #elif defined ( __GNUC__ ) /*------------------ GNU Compiler ---------------------*/
 310:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /* GNU gcc specific functions */
 311:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 312:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Enable IRQ Interrupts
 313:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 314:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   This function enables IRQ interrupts by clearing the I-bit in the CPSR.
 315:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   Can only be executed in Privileged modes.
 316:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 317:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __enable_irq(void)
 318:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __ASM volatile ("cpsie i" : : : "memory");
 320:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 321:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 322:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 323:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Disable IRQ Interrupts
 324:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 325:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   This function disables IRQ interrupts by setting the I-bit in the CPSR.
 326:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   Can only be executed in Privileged modes.
 327:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 328:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __disable_irq(void)
 329:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 330:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __ASM volatile ("cpsid i" : : : "memory");
 331:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 332:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 333:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 334:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get Control Register
 335:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 336:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the content of the Control Register.
 337:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 338:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               Control Register value
 339:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 340:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_CONTROL(void)
 341:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 342:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   uint32_t result;
 343:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 344:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __ASM volatile ("MRS %0, control" : "=r" (result) );
 345:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(result);
 346:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 347:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
ARM GAS  /tmp/ccCxIftT.s 			page 28


 348:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 349:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Set Control Register
 350:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 351:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function writes the given value to the Control Register.
 352:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 353:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \param [in]    control  Control Register value to set
 354:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 355:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __set_CONTROL(uint32_t control)
 356:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 357:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __ASM volatile ("MSR control, %0" : : "r" (control) : "memory");
 358:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 359:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 360:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 361:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get IPSR Register
 362:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 363:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the content of the IPSR Register.
 364:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 365:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               IPSR Register value
 366:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 367:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_IPSR(void)
 368:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 369:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   uint32_t result;
 370:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 371:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __ASM volatile ("MRS %0, ipsr" : "=r" (result) );
 372:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(result);
 373:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 374:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 375:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 376:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get APSR Register
 377:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 378:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the content of the APSR Register.
 379:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 380:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               APSR Register value
 381:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 382:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_APSR(void)
 383:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 384:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   uint32_t result;
 385:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 386:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __ASM volatile ("MRS %0, apsr" : "=r" (result) );
 387:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(result);
 388:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 389:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 390:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 391:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get xPSR Register
 392:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 393:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the content of the xPSR Register.
 394:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 395:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               xPSR Register value
 396:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 397:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_xPSR(void)
 398:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 399:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   uint32_t result;
 400:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 401:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __ASM volatile ("MRS %0, xpsr" : "=r" (result) );
 402:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(result);
 403:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 404:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
ARM GAS  /tmp/ccCxIftT.s 			page 29


 405:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 406:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get Process Stack Pointer
 407:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 408:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the current value of the Process Stack Pointer (PSP).
 409:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 410:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               PSP Register value
 411:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 412:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_PSP(void)
 413:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 414:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t result;
 415:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 416:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __ASM volatile ("MRS %0, psp\n"  : "=r" (result) );
 417:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(result);
 418:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 419:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 420:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 421:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Set Process Stack Pointer
 422:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 423:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function assigns the given value to the Process Stack Pointer (PSP).
 424:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 425:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \param [in]    topOfProcStack  Process Stack Pointer value to set
 426:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 427:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __set_PSP(uint32_t topOfProcStack)
 428:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 429:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __ASM volatile ("MSR psp, %0\n" : : "r" (topOfProcStack) : "sp");
 430:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 431:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 432:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 433:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get Main Stack Pointer
 434:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 435:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the current value of the Main Stack Pointer (MSP).
 436:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 437:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               MSP Register value
 438:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 439:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_MSP(void)
 440:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 441:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t result;
 442:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 443:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __ASM volatile ("MRS %0, msp\n" : "=r" (result) );
 444:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(result);
 445:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 446:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 447:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 448:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Set Main Stack Pointer
 449:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 450:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function assigns the given value to the Main Stack Pointer (MSP).
 451:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 452:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \param [in]    topOfMainStack  Main Stack Pointer value to set
 453:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 454:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __set_MSP(uint32_t topOfMainStack)
 455:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 456:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __ASM volatile ("MSR msp, %0\n" : : "r" (topOfMainStack) : "sp");
 457:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 458:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 459:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 460:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get Priority Mask
 461:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
ARM GAS  /tmp/ccCxIftT.s 			page 30


 462:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the current state of the priority mask bit from the Priority Mask Registe
 463:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 464:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               Priority Mask value
 465:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 466:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_PRIMASK(void)
 467:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 468:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   uint32_t result;
 469:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 470:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __ASM volatile ("MRS %0, primask" : "=r" (result) );
 541              		.loc 2 470 0
 542              		.syntax unified
 543              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 544 0002 EFF31085 		MRS r5, primask
 545              	@ 0 "" 2
 546              	.LVL15:
 547              		.thumb
 548              		.syntax unified
 549              	.LBE302:
 550              	.LBE301:
 551              	.LBB303:
 552              	.LBB304:
 330:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 553              		.loc 2 330 0
 554              		.syntax unified
 555              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 556 0006 72B6     		cpsid i
 557              	@ 0 "" 2
 558              		.thumb
 559              		.syntax unified
 560              	.LBE304:
 561              	.LBE303:
 562              	.LBB305:
 563              	.LBB306:
 564              		.file 3 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h"
   1:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /**************************************************************************//**
   2:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * @file     core_cmInstr.h
   3:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * @brief    CMSIS Cortex-M Core Instruction Access Header File
   4:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * @version  V4.00
   5:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * @date     28. August 2014
   6:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  *
   7:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * @note
   8:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  *
   9:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  ******************************************************************************/
  10:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /* Copyright (c) 2009 - 2014 ARM LIMITED
  11:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  12:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    All rights reserved.
  13:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    Redistribution and use in source and binary forms, with or without
  14:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    modification, are permitted provided that the following conditions are met:
  15:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    - Redistributions of source code must retain the above copyright
  16:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****      notice, this list of conditions and the following disclaimer.
  17:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    - Redistributions in binary form must reproduce the above copyright
  18:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****      notice, this list of conditions and the following disclaimer in the
  19:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****      documentation and/or other materials provided with the distribution.
  20:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    - Neither the name of ARM nor the names of its contributors may be used
  21:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****      to endorse or promote products derived from this software without
  22:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****      specific prior written permission.
  23:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    *
ARM GAS  /tmp/ccCxIftT.s 			page 31


  24:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  25:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  26:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  27:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    ARE DISCLAIMED. IN NO EVENT SHALL COPYRIGHT HOLDERS AND CONTRIBUTORS BE
  28:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
  29:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
  30:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
  31:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
  32:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
  33:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  34:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    POSSIBILITY OF SUCH DAMAGE.
  35:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    ---------------------------------------------------------------------------*/
  36:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  37:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  38:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #ifndef __CORE_CMINSTR_H
  39:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __CORE_CMINSTR_H
  40:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  41:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  42:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /* ##########################  Core Instruction Access  ######################### */
  43:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \defgroup CMSIS_Core_InstructionInterface CMSIS Core Instruction Interface
  44:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   Access to dedicated instructions
  45:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   @{
  46:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** */
  47:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  48:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #if   defined ( __CC_ARM ) /*------------------RealView Compiler -----------------*/
  49:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /* ARM armcc specific functions */
  50:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  51:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #if (__ARMCC_VERSION < 400677)
  52:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   #error "Please use ARM Compiler Toolchain V4.0.677 or later!"
  53:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #endif
  54:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  55:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  56:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  No Operation
  57:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  58:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     No Operation does nothing. This instruction can be used for code alignment purposes.
  59:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
  60:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __NOP                             __nop
  61:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  62:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  63:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Wait For Interrupt
  64:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  65:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Wait For Interrupt is a hint instruction that suspends execution
  66:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     until one of a number of events occurs.
  67:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
  68:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __WFI                             __wfi
  69:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  70:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  71:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Wait For Event
  72:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  73:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Wait For Event is a hint instruction that permits the processor to enter
  74:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     a low-power state until one of a number of events occurs.
  75:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
  76:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __WFE                             __wfe
  77:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  78:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  79:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Send Event
  80:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
ARM GAS  /tmp/ccCxIftT.s 			page 32


  81:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Send Event is a hint instruction. It causes an event to be signaled to the CPU.
  82:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
  83:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __SEV                             __sev
  84:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  85:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  86:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Instruction Synchronization Barrier
  87:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  88:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Instruction Synchronization Barrier flushes the pipeline in the processor,
  89:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     so that all instructions following the ISB are fetched from cache or
  90:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     memory, after the instruction has been completed.
  91:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
  92:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __ISB()                           __isb(0xF)
  93:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  94:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  95:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Data Synchronization Barrier
  96:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  97:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function acts as a special kind of Data Memory Barrier.
  98:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     It completes when all explicit memory accesses before this instruction complete.
  99:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 100:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __DSB()                           __dsb(0xF)
 101:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 102:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 103:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Data Memory Barrier
 104:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 105:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function ensures the apparent order of the explicit memory operations before
 106:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     and after the instruction, without ensuring their completion.
 107:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 108:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __DMB()                           __dmb(0xF)
 109:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 110:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 111:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Reverse byte order (32 bit)
 112:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 113:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function reverses the byte order in integer value.
 114:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 115:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  Value to reverse
 116:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return               Reversed value
 117:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 118:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __REV                             __rev
 119:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 120:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 121:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Reverse byte order (16 bit)
 122:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 123:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function reverses the byte order in two unsigned short values.
 124:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 125:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  Value to reverse
 126:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return               Reversed value
 127:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 128:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #ifndef __NO_EMBEDDED_ASM
 129:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__((section(".rev16_text"))) __STATIC_INLINE __ASM uint32_t __REV16(uint32_t value)
 130:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 131:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   rev16 r0, r0
 132:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   bx lr
 133:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 134:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #endif
 135:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 136:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Reverse byte order in signed short value
 137:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
ARM GAS  /tmp/ccCxIftT.s 			page 33


 138:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function reverses the byte order in a signed short value with sign extension to integer.
 139:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 140:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  Value to reverse
 141:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return               Reversed value
 142:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 143:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #ifndef __NO_EMBEDDED_ASM
 144:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__((section(".revsh_text"))) __STATIC_INLINE __ASM int32_t __REVSH(int32_t value)
 145:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 146:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   revsh r0, r0
 147:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   bx lr
 148:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 149:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #endif
 150:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 151:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 152:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Rotate Right in unsigned value (32 bit)
 153:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function Rotate Right (immediate) provides the value of the contents of a register rotated
 155:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 156:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  Value to rotate
 157:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  Number of Bits to rotate
 158:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return               Rotated value
 159:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 160:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __ROR                             __ror
 161:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 162:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 163:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Breakpoint
 164:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function causes the processor to enter Debug state.
 166:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Debug tools can use this to investigate system state when the instruction at a particular addre
 167:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 168:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  is ignored by the processor.
 169:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****                    If required, a debugger can use it to store additional information about the bre
 170:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 171:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __BKPT(value)                       __breakpoint(value)
 172:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 173:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 174:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #if       (__CORTEX_M >= 0x03) || (__CORTEX_SC >= 300)
 175:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 176:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Reverse bit order of value
 177:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 178:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function reverses the bit order of the given value.
 179:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 180:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  Value to reverse
 181:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return               Reversed value
 182:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 183:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __RBIT                            __rbit
 184:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 185:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 186:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  LDR Exclusive (8 bit)
 187:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 188:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a exclusive LDR instruction for 8 bit value.
 189:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 190:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to data
 191:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return             value of type uint8_t at (*ptr)
 192:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 193:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __LDREXB(ptr)                     ((uint8_t ) __ldrex(ptr))
 194:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
ARM GAS  /tmp/ccCxIftT.s 			page 34


 195:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 196:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  LDR Exclusive (16 bit)
 197:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 198:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a exclusive LDR instruction for 16 bit values.
 199:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 200:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to data
 201:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return        value of type uint16_t at (*ptr)
 202:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 203:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __LDREXH(ptr)                     ((uint16_t) __ldrex(ptr))
 204:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 205:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 206:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  LDR Exclusive (32 bit)
 207:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 208:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a exclusive LDR instruction for 32 bit values.
 209:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 210:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to data
 211:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return        value of type uint32_t at (*ptr)
 212:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 213:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __LDREXW(ptr)                     ((uint32_t ) __ldrex(ptr))
 214:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 215:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 216:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  STR Exclusive (8 bit)
 217:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 218:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a exclusive STR instruction for 8 bit values.
 219:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 220:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to store
 221:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to location
 222:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return          0  Function succeeded
 223:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return          1  Function failed
 224:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 225:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __STREXB(value, ptr)              __strex(value, ptr)
 226:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 227:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 228:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  STR Exclusive (16 bit)
 229:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 230:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a exclusive STR instruction for 16 bit values.
 231:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 232:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to store
 233:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to location
 234:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return          0  Function succeeded
 235:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return          1  Function failed
 236:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 237:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __STREXH(value, ptr)              __strex(value, ptr)
 238:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 239:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 240:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  STR Exclusive (32 bit)
 241:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 242:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a exclusive STR instruction for 32 bit values.
 243:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 244:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to store
 245:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to location
 246:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return          0  Function succeeded
 247:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return          1  Function failed
 248:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 249:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __STREXW(value, ptr)              __strex(value, ptr)
 250:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 251:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
ARM GAS  /tmp/ccCxIftT.s 			page 35


 252:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Remove the exclusive lock
 253:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 254:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function removes the exclusive lock which is created by LDREX.
 255:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 256:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 257:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __CLREX                           __clrex
 258:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 259:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 260:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Signed Saturate
 261:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 262:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function saturates a signed value.
 263:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 264:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to be saturated
 265:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    sat  Bit position to saturate to (1..32)
 266:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return             Saturated value
 267:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 268:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __SSAT                            __ssat
 269:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 270:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 271:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Unsigned Saturate
 272:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 273:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function saturates an unsigned value.
 274:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 275:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to be saturated
 276:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    sat  Bit position to saturate to (0..31)
 277:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return             Saturated value
 278:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 279:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __USAT                            __usat
 280:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 281:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 282:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Count leading zeros
 283:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 284:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function counts the number of leading zeros of a data value.
 285:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 286:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to count the leading zeros
 287:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return             number of leading zeros in value
 288:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 289:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __CLZ                             __clz
 290:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 292:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Rotate Right with Extend (32 bit)
 293:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 294:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function moves each bit of a bitstring right by one bit. The carry input is shifted in at 
 295:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 296:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  Value to rotate
 297:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return               Rotated value
 298:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 299:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #ifndef __NO_EMBEDDED_ASM
 300:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__((section(".rrx_text"))) __STATIC_INLINE __ASM uint32_t __RRX(uint32_t value)
 301:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 302:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   rrx r0, r0
 303:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   bx lr
 304:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 305:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #endif
 306:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 307:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 308:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  LDRT Unprivileged (8 bit)
ARM GAS  /tmp/ccCxIftT.s 			page 36


 309:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 310:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a Unprivileged LDRT instruction for 8 bit value.
 311:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 312:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to data
 313:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return             value of type uint8_t at (*ptr)
 314:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 315:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __LDRBT(ptr)                      ((uint8_t )  __ldrt(ptr))
 316:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 317:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 318:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  LDRT Unprivileged (16 bit)
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 320:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a Unprivileged LDRT instruction for 16 bit values.
 321:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 322:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to data
 323:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return        value of type uint16_t at (*ptr)
 324:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 325:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __LDRHT(ptr)                      ((uint16_t)  __ldrt(ptr))
 326:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 327:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 328:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  LDRT Unprivileged (32 bit)
 329:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 330:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a Unprivileged LDRT instruction for 32 bit values.
 331:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 332:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to data
 333:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return        value of type uint32_t at (*ptr)
 334:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 335:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __LDRT(ptr)                       ((uint32_t ) __ldrt(ptr))
 336:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 337:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 338:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  STRT Unprivileged (8 bit)
 339:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 340:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a Unprivileged STRT instruction for 8 bit values.
 341:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 342:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to store
 343:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to location
 344:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 345:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __STRBT(value, ptr)               __strt(value, ptr)
 346:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 347:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 348:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  STRT Unprivileged (16 bit)
 349:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 350:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a Unprivileged STRT instruction for 16 bit values.
 351:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 352:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to store
 353:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to location
 354:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 355:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __STRHT(value, ptr)               __strt(value, ptr)
 356:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 357:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 358:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  STRT Unprivileged (32 bit)
 359:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 360:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a Unprivileged STRT instruction for 32 bit values.
 361:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 362:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to store
 363:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to location
 364:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 365:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __STRT(value, ptr)                __strt(value, ptr)
ARM GAS  /tmp/ccCxIftT.s 			page 37


 366:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 367:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #endif /* (__CORTEX_M >= 0x03) || (__CORTEX_SC >= 300) */
 368:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 369:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 370:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #elif defined ( __GNUC__ ) /*------------------ GNU Compiler ---------------------*/
 371:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /* GNU gcc specific functions */
 372:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 373:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /* Define macros for porting to both thumb1 and thumb2.
 374:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * For thumb1, use low register (r0-r7), specified by constrant "l"
 375:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * Otherwise, use general registers, specified by constrant "r" */
 376:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #if defined (__thumb__) && !defined (__thumb2__)
 377:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __CMSIS_GCC_OUT_REG(r) "=l" (r)
 378:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __CMSIS_GCC_USE_REG(r) "l" (r)
 379:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #else
 380:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __CMSIS_GCC_OUT_REG(r) "=r" (r)
 381:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __CMSIS_GCC_USE_REG(r) "r" (r)
 382:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #endif
 383:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 384:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  No Operation
 385:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 386:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     No Operation does nothing. This instruction can be used for code alignment purposes.
 387:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 388:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __NOP(void)
 389:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 390:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   __ASM volatile ("nop");
 391:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 392:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 393:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 394:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Wait For Interrupt
 395:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 396:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Wait For Interrupt is a hint instruction that suspends execution
 397:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     until one of a number of events occurs.
 398:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 399:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __WFI(void)
 400:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 401:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   __ASM volatile ("wfi");
 402:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 403:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 404:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 405:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Wait For Event
 406:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 407:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Wait For Event is a hint instruction that permits the processor to enter
 408:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     a low-power state until one of a number of events occurs.
 409:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 410:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __WFE(void)
 411:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 412:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   __ASM volatile ("wfe");
 413:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 414:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 415:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 416:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Send Event
 417:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 418:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Send Event is a hint instruction. It causes an event to be signaled to the CPU.
 419:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 420:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __SEV(void)
 421:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 422:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   __ASM volatile ("sev");
ARM GAS  /tmp/ccCxIftT.s 			page 38


 423:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 424:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 425:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 426:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Instruction Synchronization Barrier
 427:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 428:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Instruction Synchronization Barrier flushes the pipeline in the processor,
 429:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     so that all instructions following the ISB are fetched from cache or
 430:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     memory, after the instruction has been completed.
 431:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 432:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __ISB(void)
 433:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 434:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   __ASM volatile ("isb");
 435:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 436:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 437:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 438:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Data Synchronization Barrier
 439:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 440:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function acts as a special kind of Data Memory Barrier.
 441:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     It completes when all explicit memory accesses before this instruction complete.
 442:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 443:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __DSB(void)
 444:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 445:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   __ASM volatile ("dsb");
 446:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 447:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 448:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 449:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Data Memory Barrier
 450:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 451:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function ensures the apparent order of the explicit memory operations before
 452:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     and after the instruction, without ensuring their completion.
 453:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 454:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __DMB(void)
 455:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 456:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   __ASM volatile ("dmb");
 565              		.loc 3 456 0
 566              		.syntax unified
 567              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 568 0008 BFF35F8F 		dmb
 569              	@ 0 "" 2
 570              		.thumb
 571              		.syntax unified
 572              	.LBE306:
 573              	.LBE305:
 574              		.file 4 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
   1:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** /**
   2:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * \file
   3:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
   4:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * \brief Global interrupt management for SAM D20, SAM3 and SAM4 (NVIC based)
   5:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
   6:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * Copyright (c) 2012-2015 Atmel Corporation. All rights reserved.
   7:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
   8:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * \asf_license_start
   9:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
  10:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * \page License
  11:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
  12:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * Redistribution and use in source and binary forms, with or without
  13:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * modification, are permitted provided that the following conditions are met:
ARM GAS  /tmp/ccCxIftT.s 			page 39


  14:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
  15:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *    this list of conditions and the following disclaimer.
  17:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
  18:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *    this list of conditions and the following disclaimer in the documentation
  20:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *    and/or other materials provided with the distribution.
  21:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
  22:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *    from this software without specific prior written permission.
  24:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
  25:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * 4. This software may only be redistributed and used in connection with an
  26:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *    Atmel microcontroller product.
  27:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
  28:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
  31:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * POSSIBILITY OF SUCH DAMAGE.
  39:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
  40:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * \asf_license_stop
  41:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
  42:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  */
  43:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** /*
  44:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  */
  46:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
  47:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** #ifndef UTILS_INTERRUPT_INTERRUPT_H
  48:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** #define UTILS_INTERRUPT_INTERRUPT_H
  49:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
  50:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** #include <compiler.h>
  51:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** #include <parts.h>
  52:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
  53:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** #ifdef __cplusplus
  54:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** extern "C" {
  55:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** #endif
  56:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
  57:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** /**
  58:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * \weakgroup interrupt_group
  59:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
  60:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * @{
  61:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  */
  62:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
  63:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** /**
  64:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * \name Interrupt Service Routine definition
  65:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
  66:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * @{
  67:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  */
  68:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
  69:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** /**
  70:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * \brief Define service routine
ARM GAS  /tmp/ccCxIftT.s 			page 40


  71:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
  72:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * \note For NVIC devices the interrupt service routines are predefined to
  73:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *       add to vector table in binary generation, so there is no service
  74:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *       register at run time. The routine collections are in exceptions.h.
  75:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
  76:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * Usage:
  77:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * \code
  78:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	ISR(foo_irq_handler)
  79:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	{
  80:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	     // Function definition
  81:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	     ...
  82:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	}
  83:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** \endcode
  84:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
  85:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * \param func Name for the function.
  86:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  */
  87:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** #  define ISR(func)   \
  88:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	void func (void)
  89:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
  90:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** /**
  91:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * \brief Initialize interrupt vectors
  92:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
  93:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * For NVIC the interrupt vectors are put in vector table. So nothing
  94:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * to do to initialize them, except defined the vector function with
  95:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * right name.
  96:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
  97:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * This must be called prior to \ref irq_register_handler.
  98:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  */
  99:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** #  define irq_initialize_vectors()   \
 100:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	do {                             \
 101:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	} while(0)
 102:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
 103:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** /**
 104:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * \brief Register handler for interrupt
 105:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
 106:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * For NVIC the interrupt vectors are put in vector table. So nothing
 107:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * to do to register them, except defined the vector function with
 108:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * right name.
 109:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
 110:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * Usage:
 111:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * \code
 112:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	irq_initialize_vectors();
 113:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	irq_register_handler(foo_irq_handler);
 114:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** \endcode
 115:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
 116:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * \note The function \a func must be defined with the \ref ISR macro.
 117:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * \note The functions prototypes can be found in the device exception header
 118:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *       files (exceptions.h).
 119:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  */
 120:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** #  define irq_register_handler(int_num, int_prio)                      \
 121:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	NVIC_ClearPendingIRQ(    (IRQn_Type)int_num);                      \
 122:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	NVIC_SetPriority(    (IRQn_Type)int_num, int_prio);                \
 123:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	NVIC_EnableIRQ(      (IRQn_Type)int_num);                          \
 124:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
 125:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** //@}
 126:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
 127:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** #  define cpu_irq_enable()                     \
ARM GAS  /tmp/ccCxIftT.s 			page 41


 128:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	do {                                       \
 129:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 		g_interrupt_enabled = true;            \
 130:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 		__DMB();                               \
 131:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 		__enable_irq();                        \
 132:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	} while (0)
 133:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** #  define cpu_irq_disable()                    \
 134:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	do {                                       \
 135:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 		__disable_irq();                       \
 136:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 		__DMB();                               \
 137:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 		g_interrupt_enabled = false;           \
 138:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	} while (0)
 139:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
 140:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** typedef uint32_t irqflags_t;
 141:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
 142:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** #if !defined(__DOXYGEN__)
 143:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** extern volatile bool g_interrupt_enabled;
 144:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** #endif
 145:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
 146:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** #define cpu_irq_is_enabled()    (__get_PRIMASK() == 0)
 147:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
 148:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** static volatile uint32_t cpu_irq_critical_section_counter;
 149:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** static volatile bool     cpu_irq_prev_interrupt_state;
 150:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
 151:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** static inline irqflags_t cpu_irq_save(void)
 152:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** {
 153:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	irqflags_t flags = cpu_irq_is_enabled();
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	cpu_irq_disable();
 575              		.loc 4 154 0
 576 000c 0023     		movs	r3, #0
 577 000e 114C     		ldr	r4, .L57
 578 0010 2370     		strb	r3, [r4]
 579              	.LVL16:
 580              	.LBE300:
 581              	.LBE299:
 500:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	} else {
 582              		.loc 1 500 0
 583 0012 114B     		ldr	r3, .L57+4
 584 0014 1A88     		ldrh	r2, [r3]
 585 0016 92B2     		uxth	r2, r2
 499:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		udi_cdc_state[port] |= bit_mask;
 586              		.loc 1 499 0
 587 0018 88B1     		cbz	r0, .L51
 588              	.LVL17:
 500:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	} else {
 589              		.loc 1 500 0
 590 001a 1143     		orrs	r1, r1, r2
 591              	.LVL18:
 592 001c 1980     		strh	r1, [r3]	@ movhi
 593              	.LBB307:
 594              	.LBB308:
 155:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	return flags;
 156:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** }
 157:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
 158:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** static inline bool cpu_irq_is_enabled_flags(irqflags_t flags)
 159:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** {
 160:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	return (flags);
 161:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** }
ARM GAS  /tmp/ccCxIftT.s 			page 42


 162:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
 163:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** static inline void cpu_irq_restore(irqflags_t flags)
 164:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** {
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	if (cpu_irq_is_enabled_flags(flags))
 595              		.loc 4 165 0
 596 001e 9DB1     		cbz	r5, .L56
 597              	.L53:
 598              	.LVL19:
 599              	.LBE308:
 600              	.LBE307:
 601              	.LBB316:
 602              	.LBB317:
 529:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			&& (udi_cdc_state[port] != uid_cdc_state_msg[port].value)) {
 603              		.loc 1 529 0
 604 0020 0E4A     		ldr	r2, .L57+8
 605 0022 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 606 0024 4AB9     		cbnz	r2, .L50
 607              	.LVL20:
 608              	.LBE317:
 609              	.LBE316:
 610              	.LBB318:
 611              	.LBB319:
 612              	.LBB320:
 613              	.LBB321:
 530:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		// Fill notification message
 614              		.loc 1 530 0
 615 0026 1B88     		ldrh	r3, [r3]
 616 0028 0D4A     		ldr	r2, .L57+12
 617 002a 9BB2     		uxth	r3, r3
 618 002c 1289     		ldrh	r2, [r2, #8]
 619 002e 9A42     		cmp	r2, r3
 620 0030 03D0     		beq	.L50
 621 0032 8320     		movs	r0, #131
 622              	.LVL21:
 623              	.LBE321:
 624              	.LBE320:
 625              	.LBE319:
 626              	.LBE318:
 519:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 627              		.loc 1 519 0
 628 0034 30BC     		pop	{r4, r5}
 629              		.cfi_remember_state
 630              		.cfi_restore 5
 631              		.cfi_restore 4
 632              		.cfi_def_cfa_offset 0
 633              	.LBB325:
 634              	.LBB324:
 635              	.LBB323:
 636              	.LBB322:
 637 0036 FFF7FEBF 		b	udi_cdc_ctrl_state_notify.isra.5.part.6
 638              	.LVL22:
 639              	.L50:
 640              		.cfi_restore_state
 641              	.LBE322:
 642              	.LBE323:
 643              	.LBE324:
 644              	.LBE325:
ARM GAS  /tmp/ccCxIftT.s 			page 43


 645 003a 30BC     		pop	{r4, r5}
 646              		.cfi_remember_state
 647              		.cfi_restore 5
 648              		.cfi_restore 4
 649              		.cfi_def_cfa_offset 0
 650 003c 7047     		bx	lr
 651              	.LVL23:
 652              	.L51:
 653              		.cfi_restore_state
 502:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 654              		.loc 1 502 0
 655 003e 22EA0101 		bic	r1, r2, r1
 656              	.LVL24:
 657 0042 1980     		strh	r1, [r3]	@ movhi
 658              	.LVL25:
 659              	.LBB326:
 660              	.LBB315:
 661              		.loc 4 165 0
 662 0044 002D     		cmp	r5, #0
 663 0046 EBD1     		bne	.L53
 664              	.L56:
 665              	.LVL26:
 666              	.LBB309:
 667              	.LBB310:
 166:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 		cpu_irq_enable();
 668              		.loc 4 166 0
 669 0048 0122     		movs	r2, #1
 670 004a 2270     		strb	r2, [r4]
 671              	.LBB311:
 672              	.LBB312:
 673              		.loc 3 456 0
 674              		.syntax unified
 675              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 676 004c BFF35F8F 		dmb
 677              	@ 0 "" 2
 678              		.thumb
 679              		.syntax unified
 680              	.LBE312:
 681              	.LBE311:
 682              	.LBB313:
 683              	.LBB314:
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 684              		.loc 2 319 0
 685              		.syntax unified
 686              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 687 0050 62B6     		cpsie i
 688              	@ 0 "" 2
 689              		.thumb
 690              		.syntax unified
 691 0052 E5E7     		b	.L53
 692              	.L58:
 693              		.align	2
 694              	.L57:
 695 0054 00000000 		.word	g_interrupt_enabled
 696 0058 00000000 		.word	.LANCHOR4
 697 005c 00000000 		.word	.LANCHOR6
 698 0060 00000000 		.word	.LANCHOR5
ARM GAS  /tmp/ccCxIftT.s 			page 44


 699              	.LBE314:
 700              	.LBE313:
 701              	.LBE310:
 702              	.LBE309:
 703              	.LBE315:
 704              	.LBE326:
 705              		.cfi_endproc
 706              	.LFE201:
 707              		.size	udi_cdc_ctrl_state_change.isra.7, .-udi_cdc_ctrl_state_change.isra.7
 708              		.section	.text.udi_cdc_tx_send.isra.3,"ax",%progbits
 709              		.align	1
 710              		.p2align 2,,3
 711              		.syntax unified
 712              		.thumb
 713              		.thumb_func
 714              		.fpu fpv5-d16
 715              		.type	udi_cdc_tx_send.isra.3, %function
 716              	udi_cdc_tx_send.isra.3:
 717              	.LFB197:
 578:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 579:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 580:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** //-------------------------------------------------
 581:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** //------- Internal routines to process data transfer
 582:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 583:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 584:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** static bool udi_cdc_rx_start(uint8_t port)
 585:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 586:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	irqflags_t flags;
 587:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint8_t buf_sel_trans;
 588:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udd_ep_id_t ep;
 589:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 590:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #if UDI_CDC_PORT_NB == 1 // To optimize code
 591:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	port = 0;
 592:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #endif
 593:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 594:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	flags = cpu_irq_save();
 595:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	buf_sel_trans = udi_cdc_rx_buf_sel[port];
 596:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (udi_cdc_rx_trans_ongoing[port] ||
 597:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		(udi_cdc_rx_pos[port] < udi_cdc_rx_buf_nb[port][buf_sel_trans])) {
 598:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		// Transfer already on-going or current buffer no empty
 599:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		cpu_irq_restore(flags);
 600:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		return false;
 601:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 602:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 603:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	// Change current buffer
 604:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_pos[port] = 0;
 605:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_buf_sel[port] = (buf_sel_trans==0)?1:0;
 606:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 607:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	// Start transfer on RX
 608:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_trans_ongoing[port] = true;
 609:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	cpu_irq_restore(flags);
 610:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 611:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (udi_cdc_multi_is_rx_ready(port)) {
 612:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		UDI_CDC_RX_NOTIFY(port);
 613:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 614:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	// Send the buffer with enable of short packet
 615:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	switch (port) {
ARM GAS  /tmp/ccCxIftT.s 			page 45


 616:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #define UDI_CDC_PORT_TO_DATA_EP_OUT(index, unused) \
 617:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	case index: \
 618:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		ep = UDI_CDC_DATA_EP_OUT_##index; \
 619:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		break;
 620:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	MREPEAT(UDI_CDC_PORT_NB, UDI_CDC_PORT_TO_DATA_EP_OUT, ~)
 621:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #undef UDI_CDC_PORT_TO_DATA_EP_OUT
 622:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	default:
 623:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		ep = UDI_CDC_DATA_EP_OUT_0;
 624:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		break;
 625:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 626:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	return udd_ep_run(ep,
 627:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			true,
 628:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			udi_cdc_rx_buf[port][buf_sel_trans],
 629:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			UDI_CDC_RX_BUFFERS,
 630:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			udi_cdc_data_received);
 631:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 632:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 633:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 634:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** static void udi_cdc_data_received(udd_ep_status_t status, iram_size_t n, udd_ep_id_t ep)
 635:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 636:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint8_t buf_sel_trans;
 637:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint8_t port;
 638:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 639:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	switch (ep) {
 640:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #define UDI_CDC_DATA_EP_OUT_TO_PORT(index, unused) \
 641:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	case UDI_CDC_DATA_EP_OUT_##index: \
 642:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		port = index; \
 643:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		break;
 644:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	MREPEAT(UDI_CDC_PORT_NB, UDI_CDC_DATA_EP_OUT_TO_PORT, ~)
 645:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #undef UDI_CDC_DATA_EP_OUT_TO_PORT
 646:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	default:
 647:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		port = 0;
 648:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		break;
 649:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 650:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 651:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (UDD_EP_TRANSFER_OK != status) {
 652:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		// Abort reception
 653:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		return;
 654:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 655:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	buf_sel_trans = (udi_cdc_rx_buf_sel[port]==0)?1:0;
 656:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (!n) {
 657:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		udd_ep_run( ep,
 658:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 				true,
 659:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 				udi_cdc_rx_buf[port][buf_sel_trans],
 660:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 				UDI_CDC_RX_BUFFERS,
 661:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 				udi_cdc_data_received);
 662:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		return;
 663:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 664:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_buf_nb[port][buf_sel_trans] = n;
 665:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_trans_ongoing[port] = false;
 666:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_start(port);
 667:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 668:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 669:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 670:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** static void udi_cdc_data_sent(udd_ep_status_t status, iram_size_t n, udd_ep_id_t ep)
 671:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 672:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint8_t port;
ARM GAS  /tmp/ccCxIftT.s 			page 46


 673:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	UNUSED(n);
 674:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 675:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	switch (ep) {
 676:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #define UDI_CDC_DATA_EP_IN_TO_PORT(index, unused) \
 677:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	case UDI_CDC_DATA_EP_IN_##index: \
 678:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		port = index; \
 679:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		break;
 680:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	MREPEAT(UDI_CDC_PORT_NB, UDI_CDC_DATA_EP_IN_TO_PORT, ~)
 681:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #undef UDI_CDC_DATA_EP_IN_TO_PORT
 682:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	default:
 683:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		port = 0;
 684:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		break;
 685:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 686:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 687:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (UDD_EP_TRANSFER_OK != status) {
 688:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		// Abort transfer
 689:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		return;
 690:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 691:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_buf_nb[port][(udi_cdc_tx_buf_sel[port]==0)?1:0] = 0;
 692:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_both_buf_to_send[port] = false;
 693:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_trans_ongoing[port] = false;
 694:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 695:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (n != 0) {
 696:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		UDI_CDC_TX_EMPTY_NOTIFY(port);
 697:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 698:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_send(port);
 699:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 700:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 701:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 702:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** static void udi_cdc_tx_send(uint8_t port)
 718              		.loc 1 702 0
 719              		.cfi_startproc
 720              		@ args = 0, pretend = 0, frame = 8
 721              		@ frame_needed = 0, uses_anonymous_args = 0
 722              	.LVL27:
 723 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 724              		.cfi_def_cfa_offset 36
 725              		.cfi_offset 4, -36
 726              		.cfi_offset 5, -32
 727              		.cfi_offset 6, -28
 728              		.cfi_offset 7, -24
 729              		.cfi_offset 8, -20
 730              		.cfi_offset 9, -16
 731              		.cfi_offset 10, -12
 732              		.cfi_offset 11, -8
 733              		.cfi_offset 14, -4
 703:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 704:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	irqflags_t flags;
 705:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint8_t buf_sel_trans;
 706:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	bool b_short_packet;
 707:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udd_ep_id_t ep;
 708:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	static uint16_t sof_zlp_counter = 0;
 709:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 710:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #if UDI_CDC_PORT_NB == 1 // To optimize code
 711:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	port = 0;
 712:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #endif
 713:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
ARM GAS  /tmp/ccCxIftT.s 			page 47


 714:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (udi_cdc_tx_trans_ongoing[port]) {
 734              		.loc 1 714 0
 735 0004 484E     		ldr	r6, .L84
 702:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 736              		.loc 1 702 0
 737 0006 85B0     		sub	sp, sp, #20
 738              		.cfi_def_cfa_offset 56
 739              		.loc 1 714 0
 740 0008 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 741 000a 13B1     		cbz	r3, .L81
 742              	.L59:
 715:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		return; // Already on going or wait next SOF to send next data
 716:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 717:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (udd_is_high_speed()) {
 718:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		if (udi_cdc_tx_sof_num[port] == udd_get_micro_frame_number()) {
 719:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			return; // Wait next SOF to send next data
 720:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		}
 721:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}else{
 722:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		if (udi_cdc_tx_sof_num[port] == udd_get_frame_number()) {
 723:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			return; // Wait next SOF to send next data
 724:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		}
 725:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 726:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 727:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	flags = cpu_irq_save(); // to protect udi_cdc_tx_buf_sel
 728:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	buf_sel_trans = udi_cdc_tx_buf_sel[port];
 729:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (udi_cdc_tx_buf_nb[port][buf_sel_trans] == 0) {
 730:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		sof_zlp_counter++;
 731:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		if (((!udd_is_high_speed()) && (sof_zlp_counter < 100))
 732:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 				|| (udd_is_high_speed() && (sof_zlp_counter < 800))) {
 733:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			cpu_irq_restore(flags);
 734:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			return;
 735:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		}
 736:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 737:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	sof_zlp_counter = 0;
 738:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 739:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (!udi_cdc_tx_both_buf_to_send[port]) {
 740:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		// Send current Buffer
 741:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		// and switch the current buffer
 742:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		udi_cdc_tx_buf_sel[port] = (buf_sel_trans==0)?1:0;
 743:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}else{
 744:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		// Send the other Buffer
 745:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		// and no switch the current buffer
 746:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		buf_sel_trans = (buf_sel_trans==0)?1:0;
 747:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 748:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_trans_ongoing[port] = true;
 749:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	cpu_irq_restore(flags);
 750:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 751:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	b_short_packet = (udi_cdc_tx_buf_nb[port][buf_sel_trans] != UDI_CDC_TX_BUFFERS);
 752:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (b_short_packet) {
 753:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		if (udd_is_high_speed()) {
 754:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			udi_cdc_tx_sof_num[port] = udd_get_micro_frame_number();
 755:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		}else{
 756:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			udi_cdc_tx_sof_num[port] = udd_get_frame_number();
 757:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		}
 758:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}else{
 759:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		udi_cdc_tx_sof_num[port] = 0; // Force next transfer without wait SOF
 760:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
ARM GAS  /tmp/ccCxIftT.s 			page 48


 761:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 762:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	// Send the buffer with enable of short packet
 763:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	switch (port) {
 764:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #define UDI_CDC_PORT_TO_DATA_EP_IN(index, unused) \
 765:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	case index: \
 766:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		ep = UDI_CDC_DATA_EP_IN_##index; \
 767:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		break;
 768:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	MREPEAT(UDI_CDC_PORT_NB, UDI_CDC_PORT_TO_DATA_EP_IN, ~)
 769:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #undef UDI_CDC_PORT_TO_DATA_EP_IN
 770:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	default:
 771:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		ep = UDI_CDC_DATA_EP_IN_0;
 772:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		break;
 773:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 774:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udd_ep_run( ep,
 775:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			b_short_packet,
 776:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			udi_cdc_tx_buf[port][buf_sel_trans],
 777:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			udi_cdc_tx_buf_nb[port][buf_sel_trans],
 778:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			udi_cdc_data_sent);
 779:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 743              		.loc 1 779 0
 744 000c 05B0     		add	sp, sp, #20
 745              		.cfi_remember_state
 746              		.cfi_def_cfa_offset 36
 747              		@ sp needed
 748 000e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 749              	.L81:
 750              		.cfi_restore_state
 718:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			return; // Wait next SOF to send next data
 751              		.loc 1 718 0
 752 0012 DFF82881 		ldr	r8, .L84+20
 717:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		if (udi_cdc_tx_sof_num[port] == udd_get_micro_frame_number()) {
 753              		.loc 1 717 0
 754 0016 FFF7FEFF 		bl	udd_is_high_speed
 755              	.LVL28:
 718:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			return; // Wait next SOF to send next data
 756              		.loc 1 718 0
 757 001a B8F80040 		ldrh	r4, [r8]
 717:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		if (udi_cdc_tx_sof_num[port] == udd_get_micro_frame_number()) {
 758              		.loc 1 717 0
 759 001e 0028     		cmp	r0, #0
 760 0020 48D1     		bne	.L82
 722:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			return; // Wait next SOF to send next data
 761              		.loc 1 722 0
 762 0022 FFF7FEFF 		bl	udd_get_frame_number
 763              	.LVL29:
 764 0026 8442     		cmp	r4, r0
 765 0028 F0D0     		beq	.L59
 766              	.L66:
 767              	.LBB357:
 768              	.LBB358:
 769              	.LBB359:
 770              	.LBB360:
 771              	.LBB361:
 772              	.LBB362:
 773              		.loc 2 470 0
 774              		.syntax unified
 775              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
ARM GAS  /tmp/ccCxIftT.s 			page 49


 776 002a EFF31082 		MRS r2, primask
 777              	@ 0 "" 2
 778              	.LVL30:
 779              		.thumb
 780              		.syntax unified
 781              	.LBE362:
 782              	.LBE361:
 783              	.LBB363:
 784              	.LBB364:
 330:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 785              		.loc 2 330 0
 786              		.syntax unified
 787              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 788 002e 72B6     		cpsid i
 789              	@ 0 "" 2
 790              		.thumb
 791              		.syntax unified
 792              	.LBE364:
 793              	.LBE363:
 794              	.LBB365:
 795              	.LBB366:
 796              		.loc 3 456 0
 797              		.syntax unified
 798              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 799 0030 BFF35F8F 		dmb
 800              	@ 0 "" 2
 801              		.thumb
 802              		.syntax unified
 803              	.LBE366:
 804              	.LBE365:
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	return flags;
 805              		.loc 4 154 0
 806 0034 0023     		movs	r3, #0
 807 0036 DFF808B1 		ldr	fp, .L84+24
 808              	.LBE360:
 809              	.LBE359:
 728:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (udi_cdc_tx_buf_nb[port][buf_sel_trans] == 0) {
 810              		.loc 1 728 0
 811 003a DFF808A1 		ldr	r10, .L84+28
 812              	.LBB368:
 813              	.LBB367:
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	return flags;
 814              		.loc 4 154 0
 815 003e 8BF80030 		strb	r3, [fp]
 816              	.LVL31:
 817              	.LBE367:
 818              	.LBE368:
 728:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (udi_cdc_tx_buf_nb[port][buf_sel_trans] == 0) {
 819              		.loc 1 728 0
 820 0042 9AF80040 		ldrb	r4, [r10]	@ zero_extendqisi2
 729:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		sof_zlp_counter++;
 821              		.loc 1 729 0
 822 0046 DFF80091 		ldr	r9, .L84+32
 728:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (udi_cdc_tx_buf_nb[port][buf_sel_trans] == 0) {
 823              		.loc 1 728 0
 824 004a E4B2     		uxtb	r4, r4
 825              	.LVL32:
ARM GAS  /tmp/ccCxIftT.s 			page 50


 729:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		sof_zlp_counter++;
 826              		.loc 1 729 0
 827 004c 39F81430 		ldrh	r3, [r9, r4, lsl #1]
 828 0050 2746     		mov	r7, r4
 829 0052 002B     		cmp	r3, #0
 830 0054 3BD0     		beq	.L64
 831 0056 354D     		ldr	r5, .L84+4
 832              	.L65:
 739:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		// Send current Buffer
 833              		.loc 1 739 0
 834 0058 354B     		ldr	r3, .L84+8
 737:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 835              		.loc 1 737 0
 836 005a 0021     		movs	r1, #0
 739:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		// Send current Buffer
 837              		.loc 1 739 0
 838 005c 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 737:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 839              		.loc 1 737 0
 840 005e 2980     		strh	r1, [r5]	@ movhi
 739:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		// Send current Buffer
 841              		.loc 1 739 0
 842 0060 6BBB     		cbnz	r3, .L70
 742:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}else{
 843              		.loc 1 742 0
 844 0062 B4FA84F4 		clz	r4, r4
 845              	.LVL33:
 846 0066 6409     		lsrs	r4, r4, #5
 847 0068 8AF80040 		strb	r4, [r10]
 848              	.LVL34:
 849              	.L71:
 748:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	cpu_irq_restore(flags);
 850              		.loc 1 748 0
 851 006c 0123     		movs	r3, #1
 852 006e 3370     		strb	r3, [r6]
 853              	.LVL35:
 854              	.LBB369:
 855              	.LBB370:
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 		cpu_irq_enable();
 856              		.loc 4 165 0
 857 0070 002A     		cmp	r2, #0
 858 0072 4CD0     		beq	.L83
 859              	.L72:
 860              	.LBE370:
 861              	.LBE369:
 751:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (b_short_packet) {
 862              		.loc 1 751 0
 863 0074 39F81730 		ldrh	r3, [r9, r7, lsl #1]
 864 0078 B3F5A07F 		cmp	r3, #320
 865 007c 14BF     		ite	ne
 866 007e 0125     		movne	r5, #1
 867 0080 0025     		moveq	r5, #0
 868              	.LVL36:
 752:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		if (udd_is_high_speed()) {
 869              		.loc 1 752 0
 870 0082 20D0     		beq	.L73
 753:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			udi_cdc_tx_sof_num[port] = udd_get_micro_frame_number();
ARM GAS  /tmp/ccCxIftT.s 			page 51


 871              		.loc 1 753 0
 872 0084 FFF7FEFF 		bl	udd_is_high_speed
 873              	.LVL37:
 874 0088 0028     		cmp	r0, #0
 875 008a 46D0     		beq	.L74
 754:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		}else{
 876              		.loc 1 754 0
 877 008c FFF7FEFF 		bl	udd_get_micro_frame_number
 878              	.LVL38:
 879 0090 39F81730 		ldrh	r3, [r9, r7, lsl #1]
 880 0094 A8F80000 		strh	r0, [r8]	@ movhi
 881              	.L75:
 882              	.LVL39:
 776:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			udi_cdc_tx_buf_nb[port][buf_sel_trans],
 883              		.loc 1 776 0
 884 0098 07EB8707 		add	r7, r7, r7, lsl #2
 885 009c 254C     		ldr	r4, .L84+12
 774:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			b_short_packet,
 886              		.loc 1 774 0
 887 009e 2648     		ldr	r0, .L84+16
 888 00a0 2946     		mov	r1, r5
 889 00a2 04EB8712 		add	r2, r4, r7, lsl #6
 890 00a6 0090     		str	r0, [sp]
 891 00a8 8120     		movs	r0, #129
 892 00aa FFF7FEFF 		bl	udd_ep_run
 893              	.LVL40:
 894              	.LBE358:
 895              	.LBE357:
 896              		.loc 1 779 0
 897 00ae 05B0     		add	sp, sp, #20
 898              		.cfi_remember_state
 899              		.cfi_def_cfa_offset 36
 900              		@ sp needed
 901 00b0 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 902              	.LVL41:
 903              	.L82:
 904              		.cfi_restore_state
 718:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			return; // Wait next SOF to send next data
 905              		.loc 1 718 0
 906 00b4 FFF7FEFF 		bl	udd_get_micro_frame_number
 907              	.LVL42:
 908 00b8 8442     		cmp	r4, r0
 909 00ba B6D1     		bne	.L66
 910 00bc A6E7     		b	.L59
 911              	.LVL43:
 912              	.L70:
 913              	.LBB388:
 914              	.LBB387:
 746:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 915              		.loc 1 746 0
 916 00be B4FA84F7 		clz	r7, r4
 917 00c2 7F09     		lsrs	r7, r7, #5
 918 00c4 D2E7     		b	.L71
 919              	.LVL44:
 920              	.L73:
 759:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 921              		.loc 1 759 0
ARM GAS  /tmp/ccCxIftT.s 			page 52


 922 00c6 0022     		movs	r2, #0
 923 00c8 A8F80020 		strh	r2, [r8]	@ movhi
 924 00cc E4E7     		b	.L75
 925              	.LVL45:
 926              	.L64:
 730:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		if (((!udd_is_high_speed()) && (sof_zlp_counter < 100))
 927              		.loc 1 730 0
 928 00ce 174D     		ldr	r5, .L84+4
 929 00d0 0392     		str	r2, [sp, #12]
 930 00d2 2B88     		ldrh	r3, [r5]
 931 00d4 0133     		adds	r3, r3, #1
 932 00d6 2B80     		strh	r3, [r5]	@ movhi
 731:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 				|| (udd_is_high_speed() && (sof_zlp_counter < 800))) {
 933              		.loc 1 731 0
 934 00d8 FFF7FEFF 		bl	udd_is_high_speed
 935              	.LVL46:
 936 00dc 039A     		ldr	r2, [sp, #12]
 937 00de 58B9     		cbnz	r0, .L67
 938 00e0 2B88     		ldrh	r3, [r5]
 939 00e2 632B     		cmp	r3, #99
 940 00e4 08D8     		bhi	.L67
 941              	.L69:
 942              	.LVL47:
 943              	.LBB378:
 944              	.LBB379:
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 		cpu_irq_enable();
 945              		.loc 4 165 0
 946 00e6 002A     		cmp	r2, #0
 947 00e8 90D1     		bne	.L59
 948              	.LVL48:
 949              	.LBB380:
 950              	.LBB381:
 951              		.loc 4 166 0
 952 00ea 0123     		movs	r3, #1
 953 00ec 8BF80030 		strb	r3, [fp]
 954              	.LBB382:
 955              	.LBB383:
 956              		.loc 3 456 0
 957              		.syntax unified
 958              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 959 00f0 BFF35F8F 		dmb
 960              	@ 0 "" 2
 961              		.thumb
 962              		.syntax unified
 963              	.LBE383:
 964              	.LBE382:
 965              	.LBB384:
 966              	.LBB385:
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 967              		.loc 2 319 0
 968              		.syntax unified
 969              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 970 00f4 62B6     		cpsie i
 971              	@ 0 "" 2
 972              		.thumb
 973              		.syntax unified
 974 00f6 89E7     		b	.L59
ARM GAS  /tmp/ccCxIftT.s 			page 53


 975              	.L67:
 976 00f8 0392     		str	r2, [sp, #12]
 977              	.LBE385:
 978              	.LBE384:
 979              	.LBE381:
 980              	.LBE380:
 981              	.LBE379:
 982              	.LBE378:
 732:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			cpu_irq_restore(flags);
 983              		.loc 1 732 0
 984 00fa FFF7FEFF 		bl	udd_is_high_speed
 985              	.LVL49:
 986 00fe 039A     		ldr	r2, [sp, #12]
 987 0100 0028     		cmp	r0, #0
 988 0102 A9D0     		beq	.L65
 989 0104 2B88     		ldrh	r3, [r5]
 990 0106 B3F5487F 		cmp	r3, #800
 991 010a ECD3     		bcc	.L69
 992 010c A4E7     		b	.L65
 993              	.LVL50:
 994              	.L83:
 995              	.LBB386:
 996              	.LBB377:
 997              	.LBB371:
 998              	.LBB372:
 999              		.loc 4 166 0
 1000 010e 8BF80030 		strb	r3, [fp]
 1001              	.LBB373:
 1002              	.LBB374:
 1003              		.loc 3 456 0
 1004              		.syntax unified
 1005              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1006 0112 BFF35F8F 		dmb
 1007              	@ 0 "" 2
 1008              		.thumb
 1009              		.syntax unified
 1010              	.LBE374:
 1011              	.LBE373:
 1012              	.LBB375:
 1013              	.LBB376:
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 1014              		.loc 2 319 0
 1015              		.syntax unified
 1016              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1017 0116 62B6     		cpsie i
 1018              	@ 0 "" 2
 1019              		.thumb
 1020              		.syntax unified
 1021 0118 ACE7     		b	.L72
 1022              	.LVL51:
 1023              	.L74:
 1024              	.LBE376:
 1025              	.LBE375:
 1026              	.LBE372:
 1027              	.LBE371:
 1028              	.LBE377:
 1029              	.LBE386:
ARM GAS  /tmp/ccCxIftT.s 			page 54


 756:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		}
 1030              		.loc 1 756 0
 1031 011a FFF7FEFF 		bl	udd_get_frame_number
 1032              	.LVL52:
 1033 011e 39F81730 		ldrh	r3, [r9, r7, lsl #1]
 1034 0122 A8F80000 		strh	r0, [r8]	@ movhi
 1035 0126 B7E7     		b	.L75
 1036              	.L85:
 1037              		.align	2
 1038              	.L84:
 1039 0128 00000000 		.word	.LANCHOR7
 1040 012c 00000000 		.word	.LANCHOR11
 1041 0130 00000000 		.word	.LANCHOR12
 1042 0134 00000000 		.word	.LANCHOR13
 1043 0138 00000000 		.word	udi_cdc_data_sent
 1044 013c 00000000 		.word	.LANCHOR8
 1045 0140 00000000 		.word	g_interrupt_enabled
 1046 0144 00000000 		.word	.LANCHOR9
 1047 0148 00000000 		.word	.LANCHOR10
 1048              	.LBE387:
 1049              	.LBE388:
 1050              		.cfi_endproc
 1051              	.LFE197:
 1052              		.size	udi_cdc_tx_send.isra.3, .-udi_cdc_tx_send.isra.3
 1053              		.section	.text.udi_cdc_data_sof_notify,"ax",%progbits
 1054              		.align	1
 1055              		.p2align 2,,3
 1056              		.global	udi_cdc_data_sof_notify
 1057              		.syntax unified
 1058              		.thumb
 1059              		.thumb_func
 1060              		.fpu fpv5-d16
 1061              		.type	udi_cdc_data_sof_notify, %function
 1062              	udi_cdc_data_sof_notify:
 1063              	.LFB156:
 445:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	static uint8_t port_notify = 0;
 1064              		.loc 1 445 0
 1065              		.cfi_startproc
 1066              		@ args = 0, pretend = 0, frame = 0
 1067              		@ frame_needed = 0, uses_anonymous_args = 0
 1068              		@ link register save eliminated.
 449:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #if UDI_CDC_PORT_NB != 1 // To optimize code
 1069              		.loc 1 449 0
 1070 0000 FFF7FEBF 		b	udi_cdc_tx_send.isra.3
 1071              	.LVL53:
 1072              		.cfi_endproc
 1073              	.LFE156:
 1074              		.size	udi_cdc_data_sof_notify, .-udi_cdc_data_sof_notify
 1075              		.section	.text.udi_cdc_data_sent,"ax",%progbits
 1076              		.align	1
 1077              		.p2align 2,,3
 1078              		.syntax unified
 1079              		.thumb
 1080              		.thumb_func
 1081              		.fpu fpv5-d16
 1082              		.type	udi_cdc_data_sent, %function
 1083              	udi_cdc_data_sent:
ARM GAS  /tmp/ccCxIftT.s 			page 55


 1084              	.LFB164:
 671:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint8_t port;
 1085              		.loc 1 671 0
 1086              		.cfi_startproc
 1087              		@ args = 0, pretend = 0, frame = 0
 1088              		@ frame_needed = 0, uses_anonymous_args = 0
 1089              	.LVL54:
 687:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		// Abort transfer
 1090              		.loc 1 687 0
 1091 0000 88B9     		cbnz	r0, .L87
 1092              	.LVL55:
 1093              	.LBB391:
 1094              	.LBB392:
 691:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_both_buf_to_send[port] = false;
 1095              		.loc 1 691 0
 1096 0002 0C4B     		ldr	r3, .L97
 1097              	.LBE392:
 1098              	.LBE391:
 671:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint8_t port;
 1099              		.loc 1 671 0
 1100 0004 70B5     		push	{r4, r5, r6, lr}
 1101              		.cfi_def_cfa_offset 16
 1102              		.cfi_offset 4, -16
 1103              		.cfi_offset 5, -12
 1104              		.cfi_offset 6, -8
 1105              		.cfi_offset 14, -4
 1106              	.LBB396:
 1107              	.LBB393:
 691:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_both_buf_to_send[port] = false;
 1108              		.loc 1 691 0
 1109 0006 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1110 0008 0B4C     		ldr	r4, .L97+4
 1111 000a B3FA83F3 		clz	r3, r3
 692:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_trans_ongoing[port] = false;
 1112              		.loc 1 692 0
 1113 000e 0B4E     		ldr	r6, .L97+8
 693:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 1114              		.loc 1 693 0
 1115 0010 0B4D     		ldr	r5, .L97+12
 691:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_both_buf_to_send[port] = false;
 1116              		.loc 1 691 0
 1117 0012 5B09     		lsrs	r3, r3, #5
 692:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_trans_ongoing[port] = false;
 1118              		.loc 1 692 0
 1119 0014 3070     		strb	r0, [r6]
 693:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 1120              		.loc 1 693 0
 1121 0016 2870     		strb	r0, [r5]
 691:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_both_buf_to_send[port] = false;
 1122              		.loc 1 691 0
 1123 0018 24F81300 		strh	r0, [r4, r3, lsl #1]	@ movhi
 695:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		UDI_CDC_TX_EMPTY_NOTIFY(port);
 1124              		.loc 1 695 0
 1125 001c 21B9     		cbnz	r1, .L96
 1126              	.LBE393:
 1127              	.LBE396:
 699:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
ARM GAS  /tmp/ccCxIftT.s 			page 56


 1128              		.loc 1 699 0
 1129 001e BDE87040 		pop	{r4, r5, r6, lr}
 1130              		.cfi_restore 14
 1131              		.cfi_restore 6
 1132              		.cfi_restore 5
 1133              		.cfi_restore 4
 1134              		.cfi_def_cfa_offset 0
 1135              	.LBB397:
 1136              	.LBB394:
 698:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 1137              		.loc 1 698 0
 1138 0022 FFF7FEBF 		b	udi_cdc_tx_send.isra.3
 1139              	.LVL56:
 1140              	.L87:
 1141 0026 7047     		bx	lr
 1142              	.LVL57:
 1143              	.L96:
 1144              		.cfi_def_cfa_offset 16
 1145              		.cfi_offset 4, -16
 1146              		.cfi_offset 5, -12
 1147              		.cfi_offset 6, -8
 1148              		.cfi_offset 14, -4
 696:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 1149              		.loc 1 696 0
 1150 0028 FFF7FEFF 		bl	core_cdc_tx_empty_notify
 1151              	.LVL58:
 1152              	.LBE394:
 1153              	.LBE397:
 699:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 1154              		.loc 1 699 0
 1155 002c BDE87040 		pop	{r4, r5, r6, lr}
 1156              		.cfi_restore 4
 1157              		.cfi_restore 5
 1158              		.cfi_restore 6
 1159              		.cfi_restore 14
 1160              		.cfi_def_cfa_offset 0
 1161              	.LBB398:
 1162              	.LBB395:
 698:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 1163              		.loc 1 698 0
 1164 0030 FFF7FEBF 		b	udi_cdc_tx_send.isra.3
 1165              	.LVL59:
 1166              	.L98:
 1167              		.align	2
 1168              	.L97:
 1169 0034 00000000 		.word	.LANCHOR9
 1170 0038 00000000 		.word	.LANCHOR10
 1171 003c 00000000 		.word	.LANCHOR12
 1172 0040 00000000 		.word	.LANCHOR7
 1173              	.LBE395:
 1174              	.LBE398:
 1175              		.cfi_endproc
 1176              	.LFE164:
 1177              		.size	udi_cdc_data_sent, .-udi_cdc_data_sent
 1178              		.section	.text.udi_cdc_ctrl_signal_dcd,"ax",%progbits
 1179              		.align	1
 1180              		.p2align 2,,3
ARM GAS  /tmp/ccCxIftT.s 			page 57


 1181              		.global	udi_cdc_ctrl_signal_dcd
 1182              		.syntax unified
 1183              		.thumb
 1184              		.thumb_func
 1185              		.fpu fpv5-d16
 1186              		.type	udi_cdc_ctrl_signal_dcd, %function
 1187              	udi_cdc_ctrl_signal_dcd:
 1188              	.LFB166:
 780:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 781:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 782:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** //---------------------------------------------
 783:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** //------- Application interface
 784:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 785:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 786:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** //------- Application interface
 787:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 788:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** void udi_cdc_ctrl_signal_dcd(bool b_set)
 789:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 1189              		.loc 1 789 0
 1190              		.cfi_startproc
 1191              		@ args = 0, pretend = 0, frame = 0
 1192              		@ frame_needed = 0, uses_anonymous_args = 0
 1193              		@ link register save eliminated.
 1194              	.LVL60:
 790:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_ctrl_state_change(0, b_set, CDC_SERIAL_STATE_DCD);
 1195              		.loc 1 790 0
 1196 0000 0121     		movs	r1, #1
 1197 0002 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.7
 1198              	.LVL61:
 1199              		.cfi_endproc
 1200              	.LFE166:
 1201              		.size	udi_cdc_ctrl_signal_dcd, .-udi_cdc_ctrl_signal_dcd
 1202 0006 00BF     		.section	.text.udi_cdc_ctrl_signal_dsr,"ax",%progbits
 1203              		.align	1
 1204              		.p2align 2,,3
 1205              		.global	udi_cdc_ctrl_signal_dsr
 1206              		.syntax unified
 1207              		.thumb
 1208              		.thumb_func
 1209              		.fpu fpv5-d16
 1210              		.type	udi_cdc_ctrl_signal_dsr, %function
 1211              	udi_cdc_ctrl_signal_dsr:
 1212              	.LFB167:
 791:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 792:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 793:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** void udi_cdc_ctrl_signal_dsr(bool b_set)
 794:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 1213              		.loc 1 794 0
 1214              		.cfi_startproc
 1215              		@ args = 0, pretend = 0, frame = 0
 1216              		@ frame_needed = 0, uses_anonymous_args = 0
 1217              		@ link register save eliminated.
 1218              	.LVL62:
 795:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_ctrl_state_change(0, b_set, CDC_SERIAL_STATE_DSR);
 1219              		.loc 1 795 0
 1220 0000 0221     		movs	r1, #2
 1221 0002 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.7
ARM GAS  /tmp/ccCxIftT.s 			page 58


 1222              	.LVL63:
 1223              		.cfi_endproc
 1224              	.LFE167:
 1225              		.size	udi_cdc_ctrl_signal_dsr, .-udi_cdc_ctrl_signal_dsr
 1226 0006 00BF     		.section	.text.udi_cdc_signal_framing_error,"ax",%progbits
 1227              		.align	1
 1228              		.p2align 2,,3
 1229              		.global	udi_cdc_signal_framing_error
 1230              		.syntax unified
 1231              		.thumb
 1232              		.thumb_func
 1233              		.fpu fpv5-d16
 1234              		.type	udi_cdc_signal_framing_error, %function
 1235              	udi_cdc_signal_framing_error:
 1236              	.LFB168:
 796:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 797:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 798:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** void udi_cdc_signal_framing_error(void)
 799:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 1237              		.loc 1 799 0
 1238              		.cfi_startproc
 1239              		@ args = 0, pretend = 0, frame = 0
 1240              		@ frame_needed = 0, uses_anonymous_args = 0
 1241              		@ link register save eliminated.
 800:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_ctrl_state_change(0, true, CDC_SERIAL_STATE_FRAMING);
 1242              		.loc 1 800 0
 1243 0000 1021     		movs	r1, #16
 1244 0002 0120     		movs	r0, #1
 1245 0004 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.7
 1246              	.LVL64:
 1247              		.cfi_endproc
 1248              	.LFE168:
 1249              		.size	udi_cdc_signal_framing_error, .-udi_cdc_signal_framing_error
 1250              		.section	.text.udi_cdc_signal_parity_error,"ax",%progbits
 1251              		.align	1
 1252              		.p2align 2,,3
 1253              		.global	udi_cdc_signal_parity_error
 1254              		.syntax unified
 1255              		.thumb
 1256              		.thumb_func
 1257              		.fpu fpv5-d16
 1258              		.type	udi_cdc_signal_parity_error, %function
 1259              	udi_cdc_signal_parity_error:
 1260              	.LFB169:
 801:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 802:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 803:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** void udi_cdc_signal_parity_error(void)
 804:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 1261              		.loc 1 804 0
 1262              		.cfi_startproc
 1263              		@ args = 0, pretend = 0, frame = 0
 1264              		@ frame_needed = 0, uses_anonymous_args = 0
 1265              		@ link register save eliminated.
 805:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_ctrl_state_change(0, true, CDC_SERIAL_STATE_PARITY);
 1266              		.loc 1 805 0
 1267 0000 2021     		movs	r1, #32
 1268 0002 0120     		movs	r0, #1
ARM GAS  /tmp/ccCxIftT.s 			page 59


 1269 0004 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.7
 1270              	.LVL65:
 1271              		.cfi_endproc
 1272              	.LFE169:
 1273              		.size	udi_cdc_signal_parity_error, .-udi_cdc_signal_parity_error
 1274              		.section	.text.udi_cdc_signal_overrun,"ax",%progbits
 1275              		.align	1
 1276              		.p2align 2,,3
 1277              		.global	udi_cdc_signal_overrun
 1278              		.syntax unified
 1279              		.thumb
 1280              		.thumb_func
 1281              		.fpu fpv5-d16
 1282              		.type	udi_cdc_signal_overrun, %function
 1283              	udi_cdc_signal_overrun:
 1284              	.LFB170:
 806:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 807:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 808:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** void udi_cdc_signal_overrun(void)
 809:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 1285              		.loc 1 809 0
 1286              		.cfi_startproc
 1287              		@ args = 0, pretend = 0, frame = 0
 1288              		@ frame_needed = 0, uses_anonymous_args = 0
 1289              		@ link register save eliminated.
 810:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_ctrl_state_change(0, true, CDC_SERIAL_STATE_OVERRUN);
 1290              		.loc 1 810 0
 1291 0000 4021     		movs	r1, #64
 1292 0002 0120     		movs	r0, #1
 1293 0004 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.7
 1294              	.LVL66:
 1295              		.cfi_endproc
 1296              	.LFE170:
 1297              		.size	udi_cdc_signal_overrun, .-udi_cdc_signal_overrun
 1298              		.section	.text.udi_cdc_multi_ctrl_signal_dcd,"ax",%progbits
 1299              		.align	1
 1300              		.p2align 2,,3
 1301              		.global	udi_cdc_multi_ctrl_signal_dcd
 1302              		.syntax unified
 1303              		.thumb
 1304              		.thumb_func
 1305              		.fpu fpv5-d16
 1306              		.type	udi_cdc_multi_ctrl_signal_dcd, %function
 1307              	udi_cdc_multi_ctrl_signal_dcd:
 1308              	.LFB171:
 811:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 812:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 813:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** void udi_cdc_multi_ctrl_signal_dcd(uint8_t port, bool b_set)
 814:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 1309              		.loc 1 814 0
 1310              		.cfi_startproc
 1311              		@ args = 0, pretend = 0, frame = 0
 1312              		@ frame_needed = 0, uses_anonymous_args = 0
 1313              		@ link register save eliminated.
 1314              	.LVL67:
 1315              		.loc 1 814 0
 1316 0000 0846     		mov	r0, r1
ARM GAS  /tmp/ccCxIftT.s 			page 60


 1317              	.LVL68:
 815:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_ctrl_state_change(port, b_set, CDC_SERIAL_STATE_DCD);
 1318              		.loc 1 815 0
 1319 0002 0121     		movs	r1, #1
 1320              	.LVL69:
 1321 0004 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.7
 1322              	.LVL70:
 1323              		.cfi_endproc
 1324              	.LFE171:
 1325              		.size	udi_cdc_multi_ctrl_signal_dcd, .-udi_cdc_multi_ctrl_signal_dcd
 1326              		.section	.text.udi_cdc_multi_ctrl_signal_dsr,"ax",%progbits
 1327              		.align	1
 1328              		.p2align 2,,3
 1329              		.global	udi_cdc_multi_ctrl_signal_dsr
 1330              		.syntax unified
 1331              		.thumb
 1332              		.thumb_func
 1333              		.fpu fpv5-d16
 1334              		.type	udi_cdc_multi_ctrl_signal_dsr, %function
 1335              	udi_cdc_multi_ctrl_signal_dsr:
 1336              	.LFB172:
 816:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 817:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 818:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** void udi_cdc_multi_ctrl_signal_dsr(uint8_t port, bool b_set)
 819:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 1337              		.loc 1 819 0
 1338              		.cfi_startproc
 1339              		@ args = 0, pretend = 0, frame = 0
 1340              		@ frame_needed = 0, uses_anonymous_args = 0
 1341              		@ link register save eliminated.
 1342              	.LVL71:
 1343              		.loc 1 819 0
 1344 0000 0846     		mov	r0, r1
 1345              	.LVL72:
 820:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_ctrl_state_change(port, b_set, CDC_SERIAL_STATE_DSR);
 1346              		.loc 1 820 0
 1347 0002 0221     		movs	r1, #2
 1348              	.LVL73:
 1349 0004 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.7
 1350              	.LVL74:
 1351              		.cfi_endproc
 1352              	.LFE172:
 1353              		.size	udi_cdc_multi_ctrl_signal_dsr, .-udi_cdc_multi_ctrl_signal_dsr
 1354              		.section	.text.udi_cdc_multi_signal_framing_error,"ax",%progbits
 1355              		.align	1
 1356              		.p2align 2,,3
 1357              		.global	udi_cdc_multi_signal_framing_error
 1358              		.syntax unified
 1359              		.thumb
 1360              		.thumb_func
 1361              		.fpu fpv5-d16
 1362              		.type	udi_cdc_multi_signal_framing_error, %function
 1363              	udi_cdc_multi_signal_framing_error:
 1364              	.LFB173:
 821:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 822:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 823:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** void udi_cdc_multi_signal_framing_error(uint8_t port)
ARM GAS  /tmp/ccCxIftT.s 			page 61


 824:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 1365              		.loc 1 824 0
 1366              		.cfi_startproc
 1367              		@ args = 0, pretend = 0, frame = 0
 1368              		@ frame_needed = 0, uses_anonymous_args = 0
 1369              		@ link register save eliminated.
 1370              	.LVL75:
 825:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_ctrl_state_change(port, true, CDC_SERIAL_STATE_FRAMING);
 1371              		.loc 1 825 0
 1372 0000 1021     		movs	r1, #16
 1373 0002 0120     		movs	r0, #1
 1374              	.LVL76:
 1375 0004 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.7
 1376              	.LVL77:
 1377              		.cfi_endproc
 1378              	.LFE173:
 1379              		.size	udi_cdc_multi_signal_framing_error, .-udi_cdc_multi_signal_framing_error
 1380              		.section	.text.udi_cdc_multi_signal_parity_error,"ax",%progbits
 1381              		.align	1
 1382              		.p2align 2,,3
 1383              		.global	udi_cdc_multi_signal_parity_error
 1384              		.syntax unified
 1385              		.thumb
 1386              		.thumb_func
 1387              		.fpu fpv5-d16
 1388              		.type	udi_cdc_multi_signal_parity_error, %function
 1389              	udi_cdc_multi_signal_parity_error:
 1390              	.LFB174:
 826:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 827:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 828:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** void udi_cdc_multi_signal_parity_error(uint8_t port)
 829:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 1391              		.loc 1 829 0
 1392              		.cfi_startproc
 1393              		@ args = 0, pretend = 0, frame = 0
 1394              		@ frame_needed = 0, uses_anonymous_args = 0
 1395              		@ link register save eliminated.
 1396              	.LVL78:
 830:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_ctrl_state_change(port, true, CDC_SERIAL_STATE_PARITY);
 1397              		.loc 1 830 0
 1398 0000 2021     		movs	r1, #32
 1399 0002 0120     		movs	r0, #1
 1400              	.LVL79:
 1401 0004 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.7
 1402              	.LVL80:
 1403              		.cfi_endproc
 1404              	.LFE174:
 1405              		.size	udi_cdc_multi_signal_parity_error, .-udi_cdc_multi_signal_parity_error
 1406              		.section	.text.udi_cdc_multi_signal_overrun,"ax",%progbits
 1407              		.align	1
 1408              		.p2align 2,,3
 1409              		.global	udi_cdc_multi_signal_overrun
 1410              		.syntax unified
 1411              		.thumb
 1412              		.thumb_func
 1413              		.fpu fpv5-d16
 1414              		.type	udi_cdc_multi_signal_overrun, %function
ARM GAS  /tmp/ccCxIftT.s 			page 62


 1415              	udi_cdc_multi_signal_overrun:
 1416              	.LFB175:
 831:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 832:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 833:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** void udi_cdc_multi_signal_overrun(uint8_t port)
 834:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 1417              		.loc 1 834 0
 1418              		.cfi_startproc
 1419              		@ args = 0, pretend = 0, frame = 0
 1420              		@ frame_needed = 0, uses_anonymous_args = 0
 1421              		@ link register save eliminated.
 1422              	.LVL81:
 835:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_ctrl_state_change(port, true, CDC_SERIAL_STATE_OVERRUN);
 1423              		.loc 1 835 0
 1424 0000 4021     		movs	r1, #64
 1425 0002 0120     		movs	r0, #1
 1426              	.LVL82:
 1427 0004 FFF7FEBF 		b	udi_cdc_ctrl_state_change.isra.7
 1428              	.LVL83:
 1429              		.cfi_endproc
 1430              	.LFE175:
 1431              		.size	udi_cdc_multi_signal_overrun, .-udi_cdc_multi_signal_overrun
 1432              		.section	.text.udi_cdc_multi_get_nb_received_data,"ax",%progbits
 1433              		.align	1
 1434              		.p2align 2,,3
 1435              		.global	udi_cdc_multi_get_nb_received_data
 1436              		.syntax unified
 1437              		.thumb
 1438              		.thumb_func
 1439              		.fpu fpv5-d16
 1440              		.type	udi_cdc_multi_get_nb_received_data, %function
 1441              	udi_cdc_multi_get_nb_received_data:
 1442              	.LFB176:
 836:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 837:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 838:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** iram_size_t udi_cdc_multi_get_nb_received_data(uint8_t port)
 839:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 1443              		.loc 1 839 0
 1444              		.cfi_startproc
 1445              		@ args = 0, pretend = 0, frame = 0
 1446              		@ frame_needed = 0, uses_anonymous_args = 0
 1447              		@ link register save eliminated.
 1448              	.LVL84:
 1449 0000 30B4     		push	{r4, r5}
 1450              		.cfi_def_cfa_offset 8
 1451              		.cfi_offset 4, -8
 1452              		.cfi_offset 5, -4
 1453              	.LBB417:
 1454              	.LBB418:
 1455              	.LBB419:
 1456              	.LBB420:
 1457              		.loc 2 470 0
 1458              		.syntax unified
 1459              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1460 0002 EFF31083 		MRS r3, primask
 1461              	@ 0 "" 2
 1462              	.LVL85:
ARM GAS  /tmp/ccCxIftT.s 			page 63


 1463              		.thumb
 1464              		.syntax unified
 1465              	.LBE420:
 1466              	.LBE419:
 1467              	.LBB421:
 1468              	.LBB422:
 330:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 1469              		.loc 2 330 0
 1470              		.syntax unified
 1471              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1472 0006 72B6     		cpsid i
 1473              	@ 0 "" 2
 1474              		.thumb
 1475              		.syntax unified
 1476              	.LBE422:
 1477              	.LBE421:
 1478              	.LBB423:
 1479              	.LBB424:
 1480              		.loc 3 456 0
 1481              		.syntax unified
 1482              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1483 0008 BFF35F8F 		dmb
 1484              	@ 0 "" 2
 1485              		.thumb
 1486              		.syntax unified
 1487              	.LBE424:
 1488              	.LBE423:
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	return flags;
 1489              		.loc 4 154 0
 1490 000c 0020     		movs	r0, #0
 1491              	.LBE418:
 1492              	.LBE417:
 840:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	irqflags_t flags;
 841:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint16_t pos;
 842:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	iram_size_t nb_received;
 843:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 844:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #if UDI_CDC_PORT_NB == 1 // To optimize code
 845:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	port = 0;
 846:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #endif
 847:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	flags = cpu_irq_save();
 848:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	pos = udi_cdc_rx_pos[port];
 1493              		.loc 1 848 0
 1494 000e 0A49     		ldr	r1, .L112
 849:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	nb_received = udi_cdc_rx_buf_nb[port][udi_cdc_rx_buf_sel[port]] - pos;
 1495              		.loc 1 849 0
 1496 0010 0A4A     		ldr	r2, .L112+4
 1497              	.LBB427:
 1498              	.LBB425:
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	return flags;
 1499              		.loc 4 154 0
 1500 0012 0B4C     		ldr	r4, .L112+8
 1501              	.LBE425:
 1502              	.LBE427:
 1503              		.loc 1 849 0
 1504 0014 0B4D     		ldr	r5, .L112+12
 1505              	.LBB428:
 1506              	.LBB426:
ARM GAS  /tmp/ccCxIftT.s 			page 64


 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	return flags;
 1507              		.loc 4 154 0
 1508 0016 2070     		strb	r0, [r4]
 1509              	.LBE426:
 1510              	.LBE428:
 848:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	nb_received = udi_cdc_rx_buf_nb[port][udi_cdc_rx_buf_sel[port]] - pos;
 1511              		.loc 1 848 0
 1512 0018 0888     		ldrh	r0, [r1]
 1513              		.loc 1 849 0
 1514 001a 1178     		ldrb	r1, [r2]	@ zero_extendqisi2
 848:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	nb_received = udi_cdc_rx_buf_nb[port][udi_cdc_rx_buf_sel[port]] - pos;
 1515              		.loc 1 848 0
 1516 001c 82B2     		uxth	r2, r0
 1517              	.LVL86:
 1518              		.loc 1 849 0
 1519 001e C9B2     		uxtb	r1, r1
 1520 0020 35F81100 		ldrh	r0, [r5, r1, lsl #1]
 1521 0024 80B2     		uxth	r0, r0
 1522 0026 801A     		subs	r0, r0, r2
 1523              	.LVL87:
 1524              	.LBB429:
 1525              	.LBB430:
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 		cpu_irq_enable();
 1526              		.loc 4 165 0
 1527 0028 23B9     		cbnz	r3, .L109
 1528              	.LVL88:
 1529              	.LBB431:
 1530              	.LBB432:
 1531              		.loc 4 166 0
 1532 002a 0123     		movs	r3, #1
 1533 002c 2370     		strb	r3, [r4]
 1534              	.LBB433:
 1535              	.LBB434:
 1536              		.loc 3 456 0
 1537              		.syntax unified
 1538              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1539 002e BFF35F8F 		dmb
 1540              	@ 0 "" 2
 1541              		.thumb
 1542              		.syntax unified
 1543              	.LBE434:
 1544              	.LBE433:
 1545              	.LBB435:
 1546              	.LBB436:
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 1547              		.loc 2 319 0
 1548              		.syntax unified
 1549              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1550 0032 62B6     		cpsie i
 1551              	@ 0 "" 2
 1552              		.thumb
 1553              		.syntax unified
 1554              	.L109:
 1555              	.LBE436:
 1556              	.LBE435:
 1557              	.LBE432:
 1558              	.LBE431:
ARM GAS  /tmp/ccCxIftT.s 			page 65


 1559              	.LBE430:
 1560              	.LBE429:
 850:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	cpu_irq_restore(flags);
 851:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	return nb_received;
 852:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 1561              		.loc 1 852 0
 1562 0034 30BC     		pop	{r4, r5}
 1563              		.cfi_restore 5
 1564              		.cfi_restore 4
 1565              		.cfi_def_cfa_offset 0
 1566 0036 7047     		bx	lr
 1567              	.L113:
 1568              		.align	2
 1569              	.L112:
 1570 0038 00000000 		.word	.LANCHOR14
 1571 003c 00000000 		.word	.LANCHOR15
 1572 0040 00000000 		.word	g_interrupt_enabled
 1573 0044 00000000 		.word	.LANCHOR16
 1574              		.cfi_endproc
 1575              	.LFE176:
 1576              		.size	udi_cdc_multi_get_nb_received_data, .-udi_cdc_multi_get_nb_received_data
 1577              		.section	.text.udi_cdc_rx_start.isra.10,"ax",%progbits
 1578              		.align	1
 1579              		.p2align 2,,3
 1580              		.syntax unified
 1581              		.thumb
 1582              		.thumb_func
 1583              		.fpu fpv5-d16
 1584              		.type	udi_cdc_rx_start.isra.10, %function
 1585              	udi_cdc_rx_start.isra.10:
 1586              	.LFB204:
 584:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 1587              		.loc 1 584 0
 1588              		.cfi_startproc
 1589              		@ args = 0, pretend = 0, frame = 0
 1590              		@ frame_needed = 0, uses_anonymous_args = 0
 1591              	.LVL89:
 1592 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1593              		.cfi_def_cfa_offset 20
 1594              		.cfi_offset 4, -20
 1595              		.cfi_offset 5, -16
 1596              		.cfi_offset 6, -12
 1597              		.cfi_offset 7, -8
 1598              		.cfi_offset 14, -4
 1599 0002 83B0     		sub	sp, sp, #12
 1600              		.cfi_def_cfa_offset 32
 1601              	.LBB467:
 1602              	.LBB468:
 1603              	.LBB469:
 1604              	.LBB470:
 1605              		.loc 2 470 0
 1606              		.syntax unified
 1607              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1608 0004 EFF31080 		MRS r0, primask
 1609              	@ 0 "" 2
 1610              	.LVL90:
 1611              		.thumb
ARM GAS  /tmp/ccCxIftT.s 			page 66


 1612              		.syntax unified
 1613              	.LBE470:
 1614              	.LBE469:
 1615              	.LBB471:
 1616              	.LBB472:
 330:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 1617              		.loc 2 330 0
 1618              		.syntax unified
 1619              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1620 0008 72B6     		cpsid i
 1621              	@ 0 "" 2
 1622              		.thumb
 1623              		.syntax unified
 1624              	.LBE472:
 1625              	.LBE471:
 1626              	.LBB473:
 1627              	.LBB474:
 1628              		.loc 3 456 0
 1629              		.syntax unified
 1630              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1631 000a BFF35F8F 		dmb
 1632              	@ 0 "" 2
 1633              		.thumb
 1634              		.syntax unified
 1635              	.LBE474:
 1636              	.LBE473:
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	return flags;
 1637              		.loc 4 154 0
 1638 000e 0023     		movs	r3, #0
 1639 0010 2149     		ldr	r1, .L128
 1640              	.LBE468:
 1641              	.LBE467:
 595:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (udi_cdc_rx_trans_ongoing[port] ||
 1642              		.loc 1 595 0
 1643 0012 224E     		ldr	r6, .L128+4
 596:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		(udi_cdc_rx_pos[port] < udi_cdc_rx_buf_nb[port][buf_sel_trans])) {
 1644              		.loc 1 596 0
 1645 0014 224D     		ldr	r5, .L128+8
 1646              	.LBB476:
 1647              	.LBB475:
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	return flags;
 1648              		.loc 4 154 0
 1649 0016 0B70     		strb	r3, [r1]
 1650              	.LVL91:
 1651              	.LBE475:
 1652              	.LBE476:
 595:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (udi_cdc_rx_trans_ongoing[port] ||
 1653              		.loc 1 595 0
 1654 0018 3478     		ldrb	r4, [r6]	@ zero_extendqisi2
 596:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		(udi_cdc_rx_pos[port] < udi_cdc_rx_buf_nb[port][buf_sel_trans])) {
 1655              		.loc 1 596 0
 1656 001a 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 1657              	.LVL92:
 1658 001c 5BB9     		cbnz	r3, .L115
 1659 001e E4B2     		uxtb	r4, r4
 1660 0020 03F0FF0E 		and	lr, r3, #255
 597:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		// Transfer already on-going or current buffer no empty
ARM GAS  /tmp/ccCxIftT.s 			page 67


 1661              		.loc 1 597 0
 1662 0024 1F4F     		ldr	r7, .L128+12
 1663 0026 204B     		ldr	r3, .L128+16
 1664 0028 3A88     		ldrh	r2, [r7]
 1665 002a 33F81430 		ldrh	r3, [r3, r4, lsl #1]
 1666 002e 92B2     		uxth	r2, r2
 1667 0030 9BB2     		uxth	r3, r3
 596:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		(udi_cdc_rx_pos[port] < udi_cdc_rx_buf_nb[port][buf_sel_trans])) {
 1668              		.loc 1 596 0
 1669 0032 9A42     		cmp	r2, r3
 1670 0034 03D2     		bcs	.L116
 1671              	.LVL93:
 1672              	.L115:
 1673              	.LBB477:
 1674              	.LBB478:
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 		cpu_irq_enable();
 1675              		.loc 4 165 0
 1676 0036 F0B1     		cbz	r0, .L125
 1677              	.LBE478:
 1678              	.LBE477:
 600:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 1679              		.loc 1 600 0
 1680 0038 0020     		movs	r0, #0
 1681              	.LVL94:
 631:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 1682              		.loc 1 631 0
 1683 003a 03B0     		add	sp, sp, #12
 1684              		.cfi_remember_state
 1685              		.cfi_def_cfa_offset 20
 1686              		@ sp needed
 1687 003c F0BD     		pop	{r4, r5, r6, r7, pc}
 1688              	.LVL95:
 1689              	.L116:
 1690              		.cfi_restore_state
 605:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 1691              		.loc 1 605 0
 1692 003e B4FA84F3 		clz	r3, r4
 608:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	cpu_irq_restore(flags);
 1693              		.loc 1 608 0
 1694 0042 0122     		movs	r2, #1
 604:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_buf_sel[port] = (buf_sel_trans==0)?1:0;
 1695              		.loc 1 604 0
 1696 0044 A7F800E0 		strh	lr, [r7]	@ movhi
 605:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 1697              		.loc 1 605 0
 1698 0048 5B09     		lsrs	r3, r3, #5
 1699 004a 3370     		strb	r3, [r6]
 608:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	cpu_irq_restore(flags);
 1700              		.loc 1 608 0
 1701 004c 2A70     		strb	r2, [r5]
 1702              	.LVL96:
 1703              	.LBB486:
 1704              	.LBB487:
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 		cpu_irq_enable();
 1705              		.loc 4 165 0
 1706 004e E8B1     		cbz	r0, .L126
 1707              	.L118:
ARM GAS  /tmp/ccCxIftT.s 			page 68


 1708              	.LVL97:
 1709              	.LBE487:
 1710              	.LBE486:
 1711              	.LBB495:
 1712              	.LBB496:
 853:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 854:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** iram_size_t udi_cdc_get_nb_received_data(void)
 855:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 856:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	return udi_cdc_multi_get_nb_received_data(0);
 857:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 858:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 859:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** bool udi_cdc_multi_is_rx_ready(uint8_t port)
 860:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 861:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	return (udi_cdc_multi_get_nb_received_data(port) > 0);
 1713              		.loc 1 861 0
 1714 0050 0020     		movs	r0, #0
 1715 0052 FFF7FEFF 		bl	udi_cdc_multi_get_nb_received_data
 1716              	.LVL98:
 1717              	.LBE496:
 1718              	.LBE495:
 611:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		UDI_CDC_RX_NOTIFY(port);
 1719              		.loc 1 611 0
 1720 0056 A8B9     		cbnz	r0, .L127
 1721              	.L119:
 1722              	.LVL99:
 628:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			UDI_CDC_RX_BUFFERS,
 1723              		.loc 1 628 0
 1724 0058 04EB8404 		add	r4, r4, r4, lsl #2
 1725              	.LVL100:
 1726 005c 134A     		ldr	r2, .L128+20
 626:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			true,
 1727              		.loc 1 626 0
 1728 005e 1448     		ldr	r0, .L128+24
 1729 0060 4FF4A073 		mov	r3, #320
 1730 0064 02EB8412 		add	r2, r2, r4, lsl #6
 1731 0068 0121     		movs	r1, #1
 1732 006a 0090     		str	r0, [sp]
 1733 006c 0220     		movs	r0, #2
 1734 006e FFF7FEFF 		bl	udd_ep_run
 1735              	.LVL101:
 631:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 1736              		.loc 1 631 0
 1737 0072 03B0     		add	sp, sp, #12
 1738              		.cfi_remember_state
 1739              		.cfi_def_cfa_offset 20
 1740              		@ sp needed
 1741 0074 F0BD     		pop	{r4, r5, r6, r7, pc}
 1742              	.LVL102:
 1743              	.L125:
 1744              		.cfi_restore_state
 1745              	.LBB497:
 1746              	.LBB485:
 1747              	.LBB479:
 1748              	.LBB480:
 1749              		.loc 4 166 0
 1750 0076 0123     		movs	r3, #1
 1751 0078 0B70     		strb	r3, [r1]
ARM GAS  /tmp/ccCxIftT.s 			page 69


 1752              	.LBB481:
 1753              	.LBB482:
 1754              		.loc 3 456 0
 1755              		.syntax unified
 1756              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1757 007a BFF35F8F 		dmb
 1758              	@ 0 "" 2
 1759              		.thumb
 1760              		.syntax unified
 1761              	.LBE482:
 1762              	.LBE481:
 1763              	.LBB483:
 1764              	.LBB484:
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 1765              		.loc 2 319 0
 1766              		.syntax unified
 1767              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1768 007e 62B6     		cpsie i
 1769              	@ 0 "" 2
 1770              		.thumb
 1771              		.syntax unified
 1772              	.LBE484:
 1773              	.LBE483:
 1774              	.LBE480:
 1775              	.LBE479:
 1776              	.LBE485:
 1777              	.LBE497:
 631:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 1778              		.loc 1 631 0
 1779 0080 03B0     		add	sp, sp, #12
 1780              		.cfi_remember_state
 1781              		.cfi_def_cfa_offset 20
 1782              		@ sp needed
 1783 0082 F0BD     		pop	{r4, r5, r6, r7, pc}
 1784              	.LVL103:
 1785              	.L127:
 1786              		.cfi_restore_state
 612:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 1787              		.loc 1 612 0
 1788 0084 0020     		movs	r0, #0
 1789 0086 FFF7FEFF 		bl	core_cdc_rx_notify
 1790              	.LVL104:
 1791 008a E5E7     		b	.L119
 1792              	.LVL105:
 1793              	.L126:
 1794              	.LBB498:
 1795              	.LBB494:
 1796              	.LBB488:
 1797              	.LBB489:
 1798              		.loc 4 166 0
 1799 008c 0A70     		strb	r2, [r1]
 1800              	.LBB490:
 1801              	.LBB491:
 1802              		.loc 3 456 0
 1803              		.syntax unified
 1804              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1805 008e BFF35F8F 		dmb
ARM GAS  /tmp/ccCxIftT.s 			page 70


 1806              	@ 0 "" 2
 1807              		.thumb
 1808              		.syntax unified
 1809              	.LBE491:
 1810              	.LBE490:
 1811              	.LBB492:
 1812              	.LBB493:
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 1813              		.loc 2 319 0
 1814              		.syntax unified
 1815              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1816 0092 62B6     		cpsie i
 1817              	@ 0 "" 2
 1818              		.thumb
 1819              		.syntax unified
 1820 0094 DCE7     		b	.L118
 1821              	.L129:
 1822 0096 00BF     		.align	2
 1823              	.L128:
 1824 0098 00000000 		.word	g_interrupt_enabled
 1825 009c 00000000 		.word	.LANCHOR15
 1826 00a0 00000000 		.word	.LANCHOR17
 1827 00a4 00000000 		.word	.LANCHOR14
 1828 00a8 00000000 		.word	.LANCHOR16
 1829 00ac 00000000 		.word	.LANCHOR18
 1830 00b0 00000000 		.word	udi_cdc_data_received
 1831              	.LBE493:
 1832              	.LBE492:
 1833              	.LBE489:
 1834              	.LBE488:
 1835              	.LBE494:
 1836              	.LBE498:
 1837              		.cfi_endproc
 1838              	.LFE204:
 1839              		.size	udi_cdc_rx_start.isra.10, .-udi_cdc_rx_start.isra.10
 1840              		.section	.text.udi_cdc_data_enable,"ax",%progbits
 1841              		.align	1
 1842              		.p2align 2,,3
 1843              		.global	udi_cdc_data_enable
 1844              		.syntax unified
 1845              		.thumb
 1846              		.thumb_func
 1847              		.fpu fpv5-d16
 1848              		.type	udi_cdc_data_enable, %function
 1849              	udi_cdc_data_enable:
 1850              	.LFB150:
 323:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint8_t port;
 1851              		.loc 1 323 0
 1852              		.cfi_startproc
 1853              		@ args = 0, pretend = 0, frame = 0
 1854              		@ frame_needed = 0, uses_anonymous_args = 0
 1855              	.LVL106:
 1856 0000 70B5     		push	{r4, r5, r6, lr}
 1857              		.cfi_def_cfa_offset 16
 1858              		.cfi_offset 4, -16
 1859              		.cfi_offset 5, -12
 1860              		.cfi_offset 6, -8
ARM GAS  /tmp/ccCxIftT.s 			page 71


 1861              		.cfi_offset 14, -4
 340:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_buf_nb[port][1] = 0;
 1862              		.loc 1 340 0
 1863 0002 144B     		ldr	r3, .L137
 328:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #else
 1864              		.loc 1 328 0
 1865 0004 0024     		movs	r4, #0
 337:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_both_buf_to_send[port] = false;
 1866              		.loc 1 337 0
 1867 0006 1448     		ldr	r0, .L137+4
 338:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_buf_sel[port] = 0;
 1868              		.loc 1 338 0
 1869 0008 1449     		ldr	r1, .L137+8
 339:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_buf_nb[port][0] = 0;
 1870              		.loc 1 339 0
 1871 000a 154A     		ldr	r2, .L137+12
 328:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #else
 1872              		.loc 1 328 0
 1873 000c 154D     		ldr	r5, .L137+16
 342:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_send(port);
 1874              		.loc 1 342 0
 1875 000e 164E     		ldr	r6, .L137+20
 328:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #else
 1876              		.loc 1 328 0
 1877 0010 2C70     		strb	r4, [r5]
 340:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_buf_nb[port][1] = 0;
 1878              		.loc 1 340 0
 1879 0012 1C80     		strh	r4, [r3]	@ movhi
 337:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_both_buf_to_send[port] = false;
 1880              		.loc 1 337 0
 1881 0014 0470     		strb	r4, [r0]
 341:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_sof_num[port] = 0;
 1882              		.loc 1 341 0
 1883 0016 5C80     		strh	r4, [r3, #2]	@ movhi
 338:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_buf_sel[port] = 0;
 1884              		.loc 1 338 0
 1885 0018 0C70     		strb	r4, [r1]
 342:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_send(port);
 1886              		.loc 1 342 0
 1887 001a 3480     		strh	r4, [r6]	@ movhi
 339:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_buf_nb[port][0] = 0;
 1888              		.loc 1 339 0
 1889 001c 1470     		strb	r4, [r2]
 343:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 1890              		.loc 1 343 0
 1891 001e FFF7FEFF 		bl	udi_cdc_tx_send.isra.3
 1892              	.LVL107:
 348:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_buf_nb[port][1] = 0;
 1893              		.loc 1 348 0
 1894 0022 124B     		ldr	r3, .L137+24
 346:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_buf_sel[port] = 0;
 1895              		.loc 1 346 0
 1896 0024 1248     		ldr	r0, .L137+28
 347:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_buf_nb[port][0] = 0;
 1897              		.loc 1 347 0
 1898 0026 1349     		ldr	r1, .L137+32
 350:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (!udi_cdc_rx_start(port)) {
ARM GAS  /tmp/ccCxIftT.s 			page 72


 1899              		.loc 1 350 0
 1900 0028 134A     		ldr	r2, .L137+36
 346:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_buf_sel[port] = 0;
 1901              		.loc 1 346 0
 1902 002a 0470     		strb	r4, [r0]
 347:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_buf_nb[port][0] = 0;
 1903              		.loc 1 347 0
 1904 002c 0C70     		strb	r4, [r1]
 348:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_buf_nb[port][1] = 0;
 1905              		.loc 1 348 0
 1906 002e 1C80     		strh	r4, [r3]	@ movhi
 349:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_pos[port] = 0;
 1907              		.loc 1 349 0
 1908 0030 5C80     		strh	r4, [r3, #2]	@ movhi
 350:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (!udi_cdc_rx_start(port)) {
 1909              		.loc 1 350 0
 1910 0032 1480     		strh	r4, [r2]	@ movhi
 351:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		return false;
 1911              		.loc 1 351 0
 1912 0034 FFF7FEFF 		bl	udi_cdc_rx_start.isra.10
 1913              	.LVL108:
 1914 0038 38B1     		cbz	r0, .L131
 1915              	.LBB501:
 354:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (udi_cdc_nb_data_enabled == UDI_CDC_PORT_NB) {
 1916              		.loc 1 354 0
 1917 003a 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 1918 003c 0133     		adds	r3, r3, #1
 1919 003e DBB2     		uxtb	r3, r3
 1920 0040 2B70     		strb	r3, [r5]
 355:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		udi_cdc_data_running = true;
 1921              		.loc 1 355 0
 1922 0042 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 1923 0044 DBB2     		uxtb	r3, r3
 1924 0046 012B     		cmp	r3, #1
 1925 0048 00D0     		beq	.L136
 1926              	.L131:
 1927              	.LBE501:
 359:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 1928              		.loc 1 359 0
 1929 004a 70BD     		pop	{r4, r5, r6, pc}
 1930              	.L136:
 1931              	.LBB502:
 356:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 1932              		.loc 1 356 0
 1933 004c 0B4A     		ldr	r2, .L137+40
 1934 004e 1370     		strb	r3, [r2]
 1935              	.LBE502:
 359:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 1936              		.loc 1 359 0
 1937 0050 70BD     		pop	{r4, r5, r6, pc}
 1938              	.L138:
 1939 0052 00BF     		.align	2
 1940              	.L137:
 1941 0054 00000000 		.word	.LANCHOR10
 1942 0058 00000000 		.word	.LANCHOR7
 1943 005c 00000000 		.word	.LANCHOR12
 1944 0060 00000000 		.word	.LANCHOR9
ARM GAS  /tmp/ccCxIftT.s 			page 73


 1945 0064 00000000 		.word	.LANCHOR1
 1946 0068 00000000 		.word	.LANCHOR8
 1947 006c 00000000 		.word	.LANCHOR16
 1948 0070 00000000 		.word	.LANCHOR17
 1949 0074 00000000 		.word	.LANCHOR15
 1950 0078 00000000 		.word	.LANCHOR14
 1951 007c 00000000 		.word	.LANCHOR2
 1952              		.cfi_endproc
 1953              	.LFE150:
 1954              		.size	udi_cdc_data_enable, .-udi_cdc_data_enable
 1955              		.section	.text.udi_cdc_data_received,"ax",%progbits
 1956              		.align	1
 1957              		.p2align 2,,3
 1958              		.syntax unified
 1959              		.thumb
 1960              		.thumb_func
 1961              		.fpu fpv5-d16
 1962              		.type	udi_cdc_data_received, %function
 1963              	udi_cdc_data_received:
 1964              	.LFB163:
 635:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint8_t buf_sel_trans;
 1965              		.loc 1 635 0
 1966              		.cfi_startproc
 1967              		@ args = 0, pretend = 0, frame = 0
 1968              		@ frame_needed = 0, uses_anonymous_args = 0
 1969              	.LVL109:
 651:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		// Abort reception
 1970              		.loc 1 651 0
 1971 0000 08BB     		cbnz	r0, .L143
 1972              	.LVL110:
 1973              	.LBB505:
 1974              	.LBB506:
 655:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (!n) {
 1975              		.loc 1 655 0
 1976 0002 114B     		ldr	r3, .L147
 1977              	.LBE506:
 1978              	.LBE505:
 635:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint8_t buf_sel_trans;
 1979              		.loc 1 635 0
 1980 0004 10B5     		push	{r4, lr}
 1981              		.cfi_def_cfa_offset 8
 1982              		.cfi_offset 4, -8
 1983              		.cfi_offset 14, -4
 1984              	.LBB510:
 1985              	.LBB507:
 655:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (!n) {
 1986              		.loc 1 655 0
 1987 0006 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1988              	.LBE507:
 1989              	.LBE510:
 635:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint8_t buf_sel_trans;
 1990              		.loc 1 635 0
 1991 0008 82B0     		sub	sp, sp, #8
 1992              		.cfi_def_cfa_offset 16
 1993              	.LBB511:
 1994              	.LBB508:
 655:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (!n) {
ARM GAS  /tmp/ccCxIftT.s 			page 74


 1995              		.loc 1 655 0
 1996 000a B3FA83F3 		clz	r3, r3
 1997 000e 5B09     		lsrs	r3, r3, #5
 1998              	.LVL111:
 656:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		udd_ep_run( ep,
 1999              		.loc 1 656 0
 2000 0010 51B1     		cbz	r1, .L146
 664:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_trans_ongoing[port] = false;
 2001              		.loc 1 664 0
 2002 0012 89B2     		uxth	r1, r1
 2003              	.LVL112:
 2004 0014 0D4C     		ldr	r4, .L147+4
 665:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_start(port);
 2005              		.loc 1 665 0
 2006 0016 0E4A     		ldr	r2, .L147+8
 2007              	.LVL113:
 664:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_trans_ongoing[port] = false;
 2008              		.loc 1 664 0
 2009 0018 24F81310 		strh	r1, [r4, r3, lsl #1]	@ movhi
 665:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_start(port);
 2010              		.loc 1 665 0
 2011 001c 1070     		strb	r0, [r2]
 2012              	.LBE508:
 2013              	.LBE511:
 667:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 2014              		.loc 1 667 0
 2015 001e 02B0     		add	sp, sp, #8
 2016              		.cfi_remember_state
 2017              		.cfi_def_cfa_offset 8
 2018              		@ sp needed
 2019 0020 BDE81040 		pop	{r4, lr}
 2020              		.cfi_restore 14
 2021              		.cfi_restore 4
 2022              		.cfi_def_cfa_offset 0
 2023              	.LBB512:
 2024              	.LBB509:
 666:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 2025              		.loc 1 666 0
 2026 0024 FFF7FEBF 		b	udi_cdc_rx_start.isra.10
 2027              	.LVL114:
 2028              	.L146:
 2029              		.cfi_restore_state
 2030 0028 1046     		mov	r0, r2
 2031              	.LVL115:
 659:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 				UDI_CDC_RX_BUFFERS,
 2032              		.loc 1 659 0
 2033 002a 9A00     		lsls	r2, r3, #2
 2034              	.LVL116:
 2035 002c 094C     		ldr	r4, .L147+12
 657:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 				true,
 2036              		.loc 1 657 0
 2037 002e 0A49     		ldr	r1, .L147+16
 2038              	.LVL117:
 659:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 				UDI_CDC_RX_BUFFERS,
 2039              		.loc 1 659 0
 2040 0030 1A44     		add	r2, r2, r3
 657:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 				true,
ARM GAS  /tmp/ccCxIftT.s 			page 75


 2041              		.loc 1 657 0
 2042 0032 4FF4A073 		mov	r3, #320
 2043              	.LVL118:
 2044 0036 0091     		str	r1, [sp]
 2045 0038 04EB8212 		add	r2, r4, r2, lsl #6
 2046 003c 0121     		movs	r1, #1
 2047 003e FFF7FEFF 		bl	udd_ep_run
 2048              	.LVL119:
 2049              	.LBE509:
 2050              	.LBE512:
 667:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 2051              		.loc 1 667 0
 2052 0042 02B0     		add	sp, sp, #8
 2053              		.cfi_def_cfa_offset 8
 2054              		@ sp needed
 2055 0044 10BD     		pop	{r4, pc}
 2056              	.LVL120:
 2057              	.L143:
 2058              		.cfi_def_cfa_offset 0
 2059              		.cfi_restore 4
 2060              		.cfi_restore 14
 2061 0046 7047     		bx	lr
 2062              	.L148:
 2063              		.align	2
 2064              	.L147:
 2065 0048 00000000 		.word	.LANCHOR15
 2066 004c 00000000 		.word	.LANCHOR16
 2067 0050 00000000 		.word	.LANCHOR17
 2068 0054 00000000 		.word	.LANCHOR18
 2069 0058 00000000 		.word	udi_cdc_data_received
 2070              		.cfi_endproc
 2071              	.LFE163:
 2072              		.size	udi_cdc_data_received, .-udi_cdc_data_received
 2073              		.section	.text.udi_cdc_get_nb_received_data,"ax",%progbits
 2074              		.align	1
 2075              		.p2align 2,,3
 2076              		.global	udi_cdc_get_nb_received_data
 2077              		.syntax unified
 2078              		.thumb
 2079              		.thumb_func
 2080              		.fpu fpv5-d16
 2081              		.type	udi_cdc_get_nb_received_data, %function
 2082              	udi_cdc_get_nb_received_data:
 2083              	.LFB177:
 855:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	return udi_cdc_multi_get_nb_received_data(0);
 2084              		.loc 1 855 0
 2085              		.cfi_startproc
 2086              		@ args = 0, pretend = 0, frame = 0
 2087              		@ frame_needed = 0, uses_anonymous_args = 0
 2088              		@ link register save eliminated.
 856:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 2089              		.loc 1 856 0
 2090 0000 0020     		movs	r0, #0
 2091 0002 FFF7FEBF 		b	udi_cdc_multi_get_nb_received_data
 2092              	.LVL121:
 2093              		.cfi_endproc
 2094              	.LFE177:
ARM GAS  /tmp/ccCxIftT.s 			page 76


 2095              		.size	udi_cdc_get_nb_received_data, .-udi_cdc_get_nb_received_data
 2096 0006 00BF     		.section	.text.udi_cdc_multi_is_rx_ready,"ax",%progbits
 2097              		.align	1
 2098              		.p2align 2,,3
 2099              		.global	udi_cdc_multi_is_rx_ready
 2100              		.syntax unified
 2101              		.thumb
 2102              		.thumb_func
 2103              		.fpu fpv5-d16
 2104              		.type	udi_cdc_multi_is_rx_ready, %function
 2105              	udi_cdc_multi_is_rx_ready:
 2106              	.LFB178:
 860:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	return (udi_cdc_multi_get_nb_received_data(port) > 0);
 2107              		.loc 1 860 0
 2108              		.cfi_startproc
 2109              		@ args = 0, pretend = 0, frame = 0
 2110              		@ frame_needed = 0, uses_anonymous_args = 0
 2111              	.LVL122:
 2112 0000 08B5     		push	{r3, lr}
 2113              		.cfi_def_cfa_offset 8
 2114              		.cfi_offset 3, -8
 2115              		.cfi_offset 14, -4
 2116              		.loc 1 861 0
 2117 0002 FFF7FEFF 		bl	udi_cdc_multi_get_nb_received_data
 2118              	.LVL123:
 862:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 2119              		.loc 1 862 0
 2120 0006 0030     		adds	r0, r0, #0
 2121 0008 18BF     		it	ne
 2122 000a 0120     		movne	r0, #1
 2123 000c 08BD     		pop	{r3, pc}
 2124              		.cfi_endproc
 2125              	.LFE178:
 2126              		.size	udi_cdc_multi_is_rx_ready, .-udi_cdc_multi_is_rx_ready
 2127 000e 00BF     		.section	.text.udi_cdc_is_rx_ready,"ax",%progbits
 2128              		.align	1
 2129              		.p2align 2,,3
 2130              		.global	udi_cdc_is_rx_ready
 2131              		.syntax unified
 2132              		.thumb
 2133              		.thumb_func
 2134              		.fpu fpv5-d16
 2135              		.type	udi_cdc_is_rx_ready, %function
 2136              	udi_cdc_is_rx_ready:
 2137              	.LFB179:
 863:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 864:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** bool udi_cdc_is_rx_ready(void)
 865:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 2138              		.loc 1 865 0
 2139              		.cfi_startproc
 2140              		@ args = 0, pretend = 0, frame = 0
 2141              		@ frame_needed = 0, uses_anonymous_args = 0
 2142              	.LVL124:
 2143 0000 08B5     		push	{r3, lr}
 2144              		.cfi_def_cfa_offset 8
 2145              		.cfi_offset 3, -8
 2146              		.cfi_offset 14, -4
ARM GAS  /tmp/ccCxIftT.s 			page 77


 2147              	.LBB513:
 2148              	.LBB514:
 861:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 2149              		.loc 1 861 0
 2150 0002 0020     		movs	r0, #0
 2151 0004 FFF7FEFF 		bl	udi_cdc_multi_get_nb_received_data
 2152              	.LVL125:
 2153              	.LBE514:
 2154              	.LBE513:
 866:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	return udi_cdc_multi_is_rx_ready(0);
 867:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 2155              		.loc 1 867 0
 2156 0008 0030     		adds	r0, r0, #0
 2157 000a 18BF     		it	ne
 2158 000c 0120     		movne	r0, #1
 2159 000e 08BD     		pop	{r3, pc}
 2160              		.cfi_endproc
 2161              	.LFE179:
 2162              		.size	udi_cdc_is_rx_ready, .-udi_cdc_is_rx_ready
 2163              		.section	.text.udi_cdc_multi_getc,"ax",%progbits
 2164              		.align	1
 2165              		.p2align 2,,3
 2166              		.global	udi_cdc_multi_getc
 2167              		.syntax unified
 2168              		.thumb
 2169              		.thumb_func
 2170              		.fpu fpv5-d16
 2171              		.type	udi_cdc_multi_getc, %function
 2172              	udi_cdc_multi_getc:
 2173              	.LFB180:
 868:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 869:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** int udi_cdc_multi_getc(uint8_t port)
 870:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 2174              		.loc 1 870 0
 2175              		.cfi_startproc
 2176              		@ args = 0, pretend = 0, frame = 0
 2177              		@ frame_needed = 0, uses_anonymous_args = 0
 2178              	.LVL126:
 2179 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2180              		.cfi_def_cfa_offset 40
 2181              		.cfi_offset 3, -40
 2182              		.cfi_offset 4, -36
 2183              		.cfi_offset 5, -32
 2184              		.cfi_offset 6, -28
 2185              		.cfi_offset 7, -24
 2186              		.cfi_offset 8, -20
 2187              		.cfi_offset 9, -16
 2188              		.cfi_offset 10, -12
 2189              		.cfi_offset 11, -8
 2190              		.cfi_offset 14, -4
 871:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	irqflags_t flags;
 872:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	int rx_data = 0;
 873:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	bool b_databit_9;
 874:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint16_t pos;
 875:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint8_t buf_sel;
 876:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	bool again;
 877:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
ARM GAS  /tmp/ccCxIftT.s 			page 78


 878:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #if UDI_CDC_PORT_NB == 1 // To optimize code
 879:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	port = 0;
 880:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #endif
 881:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 882:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	b_databit_9 = (9 == udi_cdc_line_coding[port].bDataBits);
 2191              		.loc 1 882 0
 2192 0004 254B     		ldr	r3, .L165
 872:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	bool b_databit_9;
 2193              		.loc 1 872 0
 2194 0006 0020     		movs	r0, #0
 2195 0008 254D     		ldr	r5, .L165+4
 2196              		.loc 1 882 0
 2197 000a 93F806B0 		ldrb	fp, [r3, #6]	@ zero_extendqisi2
 2198              	.LBB533:
 2199              	.LBB534:
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	return flags;
 2200              		.loc 4 154 0
 2201 000e 8146     		mov	r9, r0
 2202 0010 244C     		ldr	r4, .L165+8
 2203              	.LBE534:
 2204              	.LBE533:
 2205              		.loc 1 882 0
 2206 0012 ABF1090B 		sub	fp, fp, #9
 2207 0016 244F     		ldr	r7, .L165+12
 2208 0018 244E     		ldr	r6, .L165+16
 2209 001a BBFA8BFB 		clz	fp, fp
 883:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 884:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** udi_cdc_getc_process_one_byte:
 885:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	// Check available data
 886:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	flags = cpu_irq_save();
 887:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	pos = udi_cdc_rx_pos[port];
 888:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	buf_sel = udi_cdc_rx_buf_sel[port];
 889:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	again = pos >= udi_cdc_rx_buf_nb[port][buf_sel];
 890:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	cpu_irq_restore(flags);
 891:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	while (again) {
 892:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		if (!udi_cdc_data_running) {
 2210              		.loc 1 892 0
 2211 001e DFF894A0 		ldr	r10, .L165+24
 882:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 2212              		.loc 1 882 0
 2213 0022 4FEA5B1B 		lsr	fp, fp, #5
 2214              	.LVL127:
 2215              	.L155:
 2216              	.LBB542:
 2217              	.LBB541:
 2218              	.LBB535:
 2219              	.LBB536:
 2220              		.loc 2 470 0
 2221              		.syntax unified
 2222              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2223 0026 EFF31081 		MRS r1, primask
 2224              	@ 0 "" 2
 2225              	.LVL128:
 2226              		.thumb
 2227              		.syntax unified
 2228              	.LBE536:
 2229              	.LBE535:
ARM GAS  /tmp/ccCxIftT.s 			page 79


 2230              	.LBB537:
 2231              	.LBB538:
 330:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 2232              		.loc 2 330 0
 2233              		.syntax unified
 2234              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2235 002a 72B6     		cpsid i
 2236              	@ 0 "" 2
 2237              		.thumb
 2238              		.syntax unified
 2239              	.LBE538:
 2240              	.LBE537:
 2241              	.LBB539:
 2242              	.LBB540:
 2243              		.loc 3 456 0
 2244              		.syntax unified
 2245              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2246 002c BFF35F8F 		dmb
 2247              	@ 0 "" 2
 2248              		.thumb
 2249              		.syntax unified
 2250              	.LBE540:
 2251              	.LBE539:
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	return flags;
 2252              		.loc 4 154 0
 2253 0030 85F80090 		strb	r9, [r5]
 2254              	.LBE541:
 2255              	.LBE542:
 887:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	buf_sel = udi_cdc_rx_buf_sel[port];
 2256              		.loc 1 887 0
 2257 0034 B4F800E0 		ldrh	lr, [r4]
 888:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	again = pos >= udi_cdc_rx_buf_nb[port][buf_sel];
 2258              		.loc 1 888 0
 2259 0038 3B78     		ldrb	r3, [r7]	@ zero_extendqisi2
 887:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	buf_sel = udi_cdc_rx_buf_sel[port];
 2260              		.loc 1 887 0
 2261 003a 1FFA8EFE 		uxth	lr, lr
 2262              	.LVL129:
 888:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	again = pos >= udi_cdc_rx_buf_nb[port][buf_sel];
 2263              		.loc 1 888 0
 2264 003e DBB2     		uxtb	r3, r3
 889:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	cpu_irq_restore(flags);
 2265              		.loc 1 889 0
 2266 0040 36F81320 		ldrh	r2, [r6, r3, lsl #1]
 2267 0044 92B2     		uxth	r2, r2
 2268              	.LVL130:
 2269              	.LBB543:
 2270              	.LBB544:
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 		cpu_irq_enable();
 2271              		.loc 4 165 0
 2272 0046 11B3     		cbz	r1, .L164
 2273              	.L156:
 2274              	.LBE544:
 2275              	.LBE543:
 891:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		if (!udi_cdc_data_running) {
 2276              		.loc 1 891 0
 2277 0048 9645     		cmp	lr, r2
ARM GAS  /tmp/ccCxIftT.s 			page 80


 2278 004a 09D3     		bcc	.L157
 2279              		.loc 1 892 0
 2280 004c 9AF80030 		ldrb	r3, [r10]	@ zero_extendqisi2
 2281 0050 03F0FF02 		and	r2, r3, #255
 2282              	.LVL131:
 2283 0054 002B     		cmp	r3, #0
 2284 0056 E6D1     		bne	.L155
 893:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			return 0;
 2285              		.loc 1 893 0
 2286 0058 9046     		mov	r8, r2
 2287              	.LVL132:
 2288              	.L154:
 894:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		}
 895:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		goto udi_cdc_getc_process_one_byte;
 896:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 897:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 898:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	// Read data
 899:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	rx_data |= udi_cdc_rx_buf[port][buf_sel][pos];
 900:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_pos[port] = pos+1;
 901:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 902:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_start(port);
 903:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 904:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (b_databit_9) {
 905:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		// Receive MSB
 906:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		b_databit_9 = false;
 907:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		rx_data = rx_data << 8;
 908:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		goto udi_cdc_getc_process_one_byte;
 909:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 910:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	return rx_data;
 911:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 2289              		.loc 1 911 0
 2290 005a 4046     		mov	r0, r8
 2291 005c BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2292              	.LVL133:
 2293              	.L157:
 899:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_pos[port] = pos+1;
 2294              		.loc 1 899 0
 2295 0060 03EB8303 		add	r3, r3, r3, lsl #2
 2296 0064 1249     		ldr	r1, .L165+20
 900:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 2297              		.loc 1 900 0
 2298 0066 0EF10102 		add	r2, lr, #1
 2299              	.LVL134:
 899:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_pos[port] = pos+1;
 2300              		.loc 1 899 0
 2301 006a 01EB8313 		add	r3, r1, r3, lsl #6
 900:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 2302              		.loc 1 900 0
 2303 006e 92B2     		uxth	r2, r2
 899:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_pos[port] = pos+1;
 2304              		.loc 1 899 0
 2305 0070 13F80E30 		ldrb	r3, [r3, lr]	@ zero_extendqisi2
 900:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 2306              		.loc 1 900 0
 2307 0074 2280     		strh	r2, [r4]	@ movhi
 899:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_pos[port] = pos+1;
 2308              		.loc 1 899 0
ARM GAS  /tmp/ccCxIftT.s 			page 81


 2309 0076 43EA0008 		orr	r8, r3, r0
 2310              	.LVL135:
 902:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 2311              		.loc 1 902 0
 2312 007a FFF7FEFF 		bl	udi_cdc_rx_start.isra.10
 2313              	.LVL136:
 904:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		// Receive MSB
 2314              		.loc 1 904 0
 2315 007e BBF1000F 		cmp	fp, #0
 2316 0082 EAD0     		beq	.L154
 907:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		goto udi_cdc_getc_process_one_byte;
 2317              		.loc 1 907 0
 2318 0084 4FEA0820 		lsl	r0, r8, #8
 2319              	.LVL137:
 906:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		rx_data = rx_data << 8;
 2320              		.loc 1 906 0
 2321 0088 4FF0000B 		mov	fp, #0
 908:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 2322              		.loc 1 908 0
 2323 008c CBE7     		b	.L155
 2324              	.LVL138:
 2325              	.L164:
 2326              	.LBB552:
 2327              	.LBB551:
 2328              	.LBB545:
 2329              	.LBB546:
 2330              		.loc 4 166 0
 2331 008e 0121     		movs	r1, #1
 2332 0090 2970     		strb	r1, [r5]
 2333              	.LBB547:
 2334              	.LBB548:
 2335              		.loc 3 456 0
 2336              		.syntax unified
 2337              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2338 0092 BFF35F8F 		dmb
 2339              	@ 0 "" 2
 2340              		.thumb
 2341              		.syntax unified
 2342              	.LBE548:
 2343              	.LBE547:
 2344              	.LBB549:
 2345              	.LBB550:
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 2346              		.loc 2 319 0
 2347              		.syntax unified
 2348              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2349 0096 62B6     		cpsie i
 2350              	@ 0 "" 2
 2351              		.thumb
 2352              		.syntax unified
 2353 0098 D6E7     		b	.L156
 2354              	.L166:
 2355 009a 00BF     		.align	2
 2356              	.L165:
 2357 009c 00000000 		.word	.LANCHOR3
 2358 00a0 00000000 		.word	g_interrupt_enabled
 2359 00a4 00000000 		.word	.LANCHOR14
ARM GAS  /tmp/ccCxIftT.s 			page 82


 2360 00a8 00000000 		.word	.LANCHOR15
 2361 00ac 00000000 		.word	.LANCHOR16
 2362 00b0 00000000 		.word	.LANCHOR18
 2363 00b4 00000000 		.word	.LANCHOR2
 2364              	.LBE550:
 2365              	.LBE549:
 2366              	.LBE546:
 2367              	.LBE545:
 2368              	.LBE551:
 2369              	.LBE552:
 2370              		.cfi_endproc
 2371              	.LFE180:
 2372              		.size	udi_cdc_multi_getc, .-udi_cdc_multi_getc
 2373              		.section	.text.udi_cdc_getc,"ax",%progbits
 2374              		.align	1
 2375              		.p2align 2,,3
 2376              		.global	udi_cdc_getc
 2377              		.syntax unified
 2378              		.thumb
 2379              		.thumb_func
 2380              		.fpu fpv5-d16
 2381              		.type	udi_cdc_getc, %function
 2382              	udi_cdc_getc:
 2383              	.LFB181:
 912:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 913:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** int udi_cdc_getc(void)
 914:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 2384              		.loc 1 914 0
 2385              		.cfi_startproc
 2386              		@ args = 0, pretend = 0, frame = 0
 2387              		@ frame_needed = 0, uses_anonymous_args = 0
 2388              		@ link register save eliminated.
 915:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	return udi_cdc_multi_getc(0);
 2389              		.loc 1 915 0
 2390 0000 0020     		movs	r0, #0
 2391 0002 FFF7FEBF 		b	udi_cdc_multi_getc
 2392              	.LVL139:
 2393              		.cfi_endproc
 2394              	.LFE181:
 2395              		.size	udi_cdc_getc, .-udi_cdc_getc
 2396 0006 00BF     		.section	.text.udi_cdc_multi_read_buf,"ax",%progbits
 2397              		.align	1
 2398              		.p2align 2,,3
 2399              		.global	udi_cdc_multi_read_buf
 2400              		.syntax unified
 2401              		.thumb
 2402              		.thumb_func
 2403              		.fpu fpv5-d16
 2404              		.type	udi_cdc_multi_read_buf, %function
 2405              	udi_cdc_multi_read_buf:
 2406              	.LFB182:
 916:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 917:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 918:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** iram_size_t udi_cdc_multi_read_buf(uint8_t port, void* buf, iram_size_t size)
 919:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 2407              		.loc 1 919 0
 2408              		.cfi_startproc
ARM GAS  /tmp/ccCxIftT.s 			page 83


 2409              		@ args = 0, pretend = 0, frame = 0
 2410              		@ frame_needed = 0, uses_anonymous_args = 0
 2411              	.LVL140:
 2412 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2413              		.cfi_def_cfa_offset 40
 2414              		.cfi_offset 3, -40
 2415              		.cfi_offset 4, -36
 2416              		.cfi_offset 5, -32
 2417              		.cfi_offset 6, -28
 2418              		.cfi_offset 7, -24
 2419              		.cfi_offset 8, -20
 2420              		.cfi_offset 9, -16
 2421              		.cfi_offset 10, -12
 2422              		.cfi_offset 11, -8
 2423              		.cfi_offset 14, -4
 2424              		.loc 1 919 0
 2425 0004 1546     		mov	r5, r2
 920:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	irqflags_t flags;
 921:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint8_t *ptr_buf = (uint8_t *)buf;
 2426              		.loc 1 921 0
 2427 0006 0F46     		mov	r7, r1
 2428 0008 DFF89490 		ldr	r9, .L176+12
 2429              	.LBB571:
 2430              	.LBB572:
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	return flags;
 2431              		.loc 4 154 0
 2432 000c 4FF0000B 		mov	fp, #0
 2433 0010 204E     		ldr	r6, .L176
 2434 0012 DFF890A0 		ldr	r10, .L176+16
 2435 0016 DFF89080 		ldr	r8, .L176+20
 2436              	.LVL141:
 2437              	.L169:
 2438              	.LBB573:
 2439              	.LBB574:
 2440              		.loc 2 470 0
 2441              		.syntax unified
 2442              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2443 001a EFF31081 		MRS r1, primask
 2444              	@ 0 "" 2
 2445              	.LVL142:
 2446              		.thumb
 2447              		.syntax unified
 2448              	.LBE574:
 2449              	.LBE573:
 2450              	.LBB575:
 2451              	.LBB576:
 330:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 2452              		.loc 2 330 0
 2453              		.syntax unified
 2454              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2455 001e 72B6     		cpsid i
 2456              	@ 0 "" 2
 2457              		.thumb
 2458              		.syntax unified
 2459              	.LBE576:
 2460              	.LBE575:
 2461              	.LBB577:
ARM GAS  /tmp/ccCxIftT.s 			page 84


 2462              	.LBB578:
 2463              		.loc 3 456 0
 2464              		.syntax unified
 2465              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2466 0020 BFF35F8F 		dmb
 2467              	@ 0 "" 2
 2468              		.thumb
 2469              		.syntax unified
 2470              	.LBE578:
 2471              	.LBE577:
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	return flags;
 2472              		.loc 4 154 0
 2473 0024 89F800B0 		strb	fp, [r9]
 2474              	.LBE572:
 2475              	.LBE571:
 922:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	iram_size_t copy_nb;
 923:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint16_t pos;
 924:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint8_t buf_sel;
 925:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	bool again;
 926:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 927:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #if UDI_CDC_PORT_NB == 1 // To optimize code
 928:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	port = 0;
 929:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #endif
 930:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 931:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** udi_cdc_read_buf_loop_wait:
 932:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	// Check available data
 933:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	flags = cpu_irq_save();
 934:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	pos = udi_cdc_rx_pos[port];
 2476              		.loc 1 934 0
 2477 0028 3288     		ldrh	r2, [r6]
 935:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	buf_sel = udi_cdc_rx_buf_sel[port];
 2478              		.loc 1 935 0
 2479 002a 9AF80030 		ldrb	r3, [r10]	@ zero_extendqisi2
 934:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	buf_sel = udi_cdc_rx_buf_sel[port];
 2480              		.loc 1 934 0
 2481 002e 92B2     		uxth	r2, r2
 2482              	.LVL143:
 2483              		.loc 1 935 0
 2484 0030 DBB2     		uxtb	r3, r3
 2485              	.LVL144:
 936:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	again = pos >= udi_cdc_rx_buf_nb[port][buf_sel];
 2486              		.loc 1 936 0
 2487 0032 38F81340 		ldrh	r4, [r8, r3, lsl #1]
 2488 0036 A4B2     		uxth	r4, r4
 2489              	.LVL145:
 2490              	.LBB579:
 2491              	.LBB580:
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 		cpu_irq_enable();
 2492              		.loc 4 165 0
 2493 0038 29B3     		cbz	r1, .L175
 2494              	.L170:
 2495              	.LBE580:
 2496              	.LBE579:
 937:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	cpu_irq_restore(flags);
 938:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	while (again) {
 939:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		if (!udi_cdc_data_running) {
 940:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			return size;
ARM GAS  /tmp/ccCxIftT.s 			page 85


 941:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		}
 942:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		goto udi_cdc_read_buf_loop_wait;
 943:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 944:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 945:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	// Read data
 946:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	copy_nb = udi_cdc_rx_buf_nb[port][buf_sel] - pos;
 947:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (copy_nb>size) {
 948:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		copy_nb = size;
 949:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 950:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	memcpy(ptr_buf, &udi_cdc_rx_buf[port][buf_sel][pos], copy_nb);
 2497              		.loc 1 950 0
 2498 003a 03EB8301 		add	r1, r3, r3, lsl #2
 938:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		if (!udi_cdc_data_running) {
 2499              		.loc 1 938 0
 2500 003e A242     		cmp	r2, r4
 2501              		.loc 1 950 0
 2502 0040 3846     		mov	r0, r7
 2503 0042 02EB8111 		add	r1, r2, r1, lsl #6
 938:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		if (!udi_cdc_data_running) {
 2504              		.loc 1 938 0
 2505 0046 06D3     		bcc	.L171
 2506              	.LVL146:
 939:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			return size;
 2507              		.loc 1 939 0
 2508 0048 134B     		ldr	r3, .L176+4
 2509              	.LVL147:
 2510 004a 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 2511 004c 002B     		cmp	r3, #0
 2512 004e E4D1     		bne	.L169
 2513              	.LVL148:
 2514              	.L173:
 951:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_pos[port] += copy_nb;
 952:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	ptr_buf += copy_nb;
 953:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	size -= copy_nb;
 954:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_start(port);
 955:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 956:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (size) {
 957:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		goto udi_cdc_read_buf_loop_wait;
 958:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 959:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	return 0;
 960:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 2515              		.loc 1 960 0
 2516 0050 2846     		mov	r0, r5
 2517 0052 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2518              	.LVL149:
 2519              	.L171:
 946:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (copy_nb>size) {
 2520              		.loc 1 946 0
 2521 0056 38F81340 		ldrh	r4, [r8, r3, lsl #1]
 2522              	.LVL150:
 950:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_pos[port] += copy_nb;
 2523              		.loc 1 950 0
 2524 005a 104B     		ldr	r3, .L176+8
 2525              	.LVL151:
 946:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (copy_nb>size) {
 2526              		.loc 1 946 0
 2527 005c A4B2     		uxth	r4, r4
ARM GAS  /tmp/ccCxIftT.s 			page 86


 950:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_pos[port] += copy_nb;
 2528              		.loc 1 950 0
 2529 005e 1944     		add	r1, r1, r3
 946:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (copy_nb>size) {
 2530              		.loc 1 946 0
 2531 0060 A41A     		subs	r4, r4, r2
 2532              	.LVL152:
 2533 0062 AC42     		cmp	r4, r5
 2534 0064 28BF     		it	cs
 2535 0066 2C46     		movcs	r4, r5
 2536              	.LVL153:
 950:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_pos[port] += copy_nb;
 2537              		.loc 1 950 0
 2538 0068 2246     		mov	r2, r4
 2539              	.LVL154:
 953:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_start(port);
 2540              		.loc 1 953 0
 2541 006a 2D1B     		subs	r5, r5, r4
 2542              	.LVL155:
 950:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_rx_pos[port] += copy_nb;
 2543              		.loc 1 950 0
 2544 006c FFF7FEFF 		bl	memcpy
 2545              	.LVL156:
 951:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	ptr_buf += copy_nb;
 2546              		.loc 1 951 0
 2547 0070 3288     		ldrh	r2, [r6]
 952:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	size -= copy_nb;
 2548              		.loc 1 952 0
 2549 0072 2744     		add	r7, r7, r4
 2550              	.LVL157:
 951:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	ptr_buf += copy_nb;
 2551              		.loc 1 951 0
 2552 0074 14FA82F4 		uxtah	r4, r4, r2
 2553              	.LVL158:
 2554 0078 A4B2     		uxth	r4, r4
 2555 007a 3480     		strh	r4, [r6]	@ movhi
 954:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 2556              		.loc 1 954 0
 2557 007c FFF7FEFF 		bl	udi_cdc_rx_start.isra.10
 2558              	.LVL159:
 956:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		goto udi_cdc_read_buf_loop_wait;
 2559              		.loc 1 956 0
 2560 0080 002D     		cmp	r5, #0
 2561 0082 CAD1     		bne	.L169
 2562 0084 E4E7     		b	.L173
 2563              	.LVL160:
 2564              	.L175:
 2565              	.LBB588:
 2566              	.LBB587:
 2567              	.LBB581:
 2568              	.LBB582:
 2569              		.loc 4 166 0
 2570 0086 0121     		movs	r1, #1
 2571 0088 89F80010 		strb	r1, [r9]
 2572              	.LBB583:
 2573              	.LBB584:
 2574              		.loc 3 456 0
ARM GAS  /tmp/ccCxIftT.s 			page 87


 2575              		.syntax unified
 2576              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2577 008c BFF35F8F 		dmb
 2578              	@ 0 "" 2
 2579              		.thumb
 2580              		.syntax unified
 2581              	.LBE584:
 2582              	.LBE583:
 2583              	.LBB585:
 2584              	.LBB586:
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 2585              		.loc 2 319 0
 2586              		.syntax unified
 2587              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2588 0090 62B6     		cpsie i
 2589              	@ 0 "" 2
 2590              		.thumb
 2591              		.syntax unified
 2592 0092 D2E7     		b	.L170
 2593              	.L177:
 2594              		.align	2
 2595              	.L176:
 2596 0094 00000000 		.word	.LANCHOR14
 2597 0098 00000000 		.word	.LANCHOR2
 2598 009c 00000000 		.word	.LANCHOR18
 2599 00a0 00000000 		.word	g_interrupt_enabled
 2600 00a4 00000000 		.word	.LANCHOR15
 2601 00a8 00000000 		.word	.LANCHOR16
 2602              	.LBE586:
 2603              	.LBE585:
 2604              	.LBE582:
 2605              	.LBE581:
 2606              	.LBE587:
 2607              	.LBE588:
 2608              		.cfi_endproc
 2609              	.LFE182:
 2610              		.size	udi_cdc_multi_read_buf, .-udi_cdc_multi_read_buf
 2611              		.section	.text.udi_cdc_read_no_polling,"ax",%progbits
 2612              		.align	1
 2613              		.p2align 2,,3
 2614              		.global	udi_cdc_read_no_polling
 2615              		.syntax unified
 2616              		.thumb
 2617              		.thumb_func
 2618              		.fpu fpv5-d16
 2619              		.type	udi_cdc_read_no_polling, %function
 2620              	udi_cdc_read_no_polling:
 2621              	.LFB184:
 961:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 962:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** static iram_size_t udi_cdc_multi_read_no_polling(uint8_t port, void* buf, iram_size_t size)
 963:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 964:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint8_t *ptr_buf = (uint8_t *)buf;
 965:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	iram_size_t nb_avail_data;
 966:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint16_t pos;
 967:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint8_t buf_sel;
 968:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	irqflags_t flags;
 969:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
ARM GAS  /tmp/ccCxIftT.s 			page 88


 970:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #if UDI_CDC_PORT_NB == 1 // To optimize code
 971:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	port = 0;
 972:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #endif
 973:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 974:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	//Data interface not started... exit
 975:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (!udi_cdc_data_running) {
 976:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		return 0;
 977:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 978:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	
 979:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	//Get number of available data
 980:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	// Check available data
 981:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	flags = cpu_irq_save(); // to protect udi_cdc_rx_pos & udi_cdc_rx_buf_sel
 982:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	pos = udi_cdc_rx_pos[port];
 983:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	buf_sel = udi_cdc_rx_buf_sel[port];
 984:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	nb_avail_data = udi_cdc_rx_buf_nb[port][buf_sel] - pos;
 985:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	cpu_irq_restore(flags);
 986:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	//If the buffer contains less than the requested number of data,
 987:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	//adjust read size
 988:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if(nb_avail_data<size) {
 989:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		size = nb_avail_data;
 990:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 991:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if(size>0) {
 992:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		memcpy(ptr_buf, &udi_cdc_rx_buf[port][buf_sel][pos], size);
 993:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		flags = cpu_irq_save(); // to protect udi_cdc_rx_pos
 994:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		udi_cdc_rx_pos[port] += size;
 995:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		cpu_irq_restore(flags);
 996:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		
 997:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		ptr_buf += size;
 998:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		udi_cdc_rx_start(port);
 999:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
1000:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	return(nb_avail_data);
1001:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
1002:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
1003:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** iram_size_t udi_cdc_read_no_polling(void* buf, iram_size_t size)
1004:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 2622              		.loc 1 1004 0
 2623              		.cfi_startproc
 2624              		@ args = 0, pretend = 0, frame = 0
 2625              		@ frame_needed = 0, uses_anonymous_args = 0
 2626              	.LVL161:
 2627 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2628              		.cfi_def_cfa_offset 24
 2629              		.cfi_offset 3, -24
 2630              		.cfi_offset 4, -20
 2631              		.cfi_offset 5, -16
 2632              		.cfi_offset 6, -12
 2633              		.cfi_offset 7, -8
 2634              		.cfi_offset 14, -4
 2635              	.LBB627:
 2636              	.LBB628:
 975:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		return 0;
 2637              		.loc 1 975 0
 2638 0002 264B     		ldr	r3, .L190
 2639              	.LVL162:
 2640 0004 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 2641 0006 03F0FF04 		and	r4, r3, #255
 2642 000a C3B1     		cbz	r3, .L178
ARM GAS  /tmp/ccCxIftT.s 			page 89


 2643              	.LBB629:
 2644              	.LBB630:
 2645              	.LBB631:
 2646              	.LBB632:
 2647              		.loc 2 470 0
 2648              		.syntax unified
 2649              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2650 000c EFF31085 		MRS r5, primask
 2651              	@ 0 "" 2
 2652              	.LVL163:
 2653              		.thumb
 2654              		.syntax unified
 2655              	.LBE632:
 2656              	.LBE631:
 2657              	.LBB633:
 2658              	.LBB634:
 330:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 2659              		.loc 2 330 0
 2660              		.syntax unified
 2661              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2662 0010 72B6     		cpsid i
 2663              	@ 0 "" 2
 2664              		.thumb
 2665              		.syntax unified
 2666              	.LBE634:
 2667              	.LBE633:
 2668              	.LBB635:
 2669              	.LBB636:
 2670              		.loc 3 456 0
 2671              		.syntax unified
 2672              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2673 0012 BFF35F8F 		dmb
 2674              	@ 0 "" 2
 2675              		.thumb
 2676              		.syntax unified
 2677              	.LBE636:
 2678              	.LBE635:
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	return flags;
 2679              		.loc 4 154 0
 2680 0016 0022     		movs	r2, #0
 2681 0018 214E     		ldr	r6, .L190+4
 2682              	.LBE630:
 2683              	.LBE629:
 982:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	buf_sel = udi_cdc_rx_buf_sel[port];
 2684              		.loc 1 982 0
 2685 001a 224F     		ldr	r7, .L190+8
 983:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	nb_avail_data = udi_cdc_rx_buf_nb[port][buf_sel] - pos;
 2686              		.loc 1 983 0
 2687 001c 224B     		ldr	r3, .L190+12
 2688              	.LBB638:
 2689              	.LBB637:
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	return flags;
 2690              		.loc 4 154 0
 2691 001e 3270     		strb	r2, [r6]
 2692              	.LBE637:
 2693              	.LBE638:
 982:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	buf_sel = udi_cdc_rx_buf_sel[port];
ARM GAS  /tmp/ccCxIftT.s 			page 90


 2694              		.loc 1 982 0
 2695 0020 3A88     		ldrh	r2, [r7]
 983:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	nb_avail_data = udi_cdc_rx_buf_nb[port][buf_sel] - pos;
 2696              		.loc 1 983 0
 2697 0022 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 984:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	cpu_irq_restore(flags);
 2698              		.loc 1 984 0
 2699 0024 214C     		ldr	r4, .L190+16
 982:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	buf_sel = udi_cdc_rx_buf_sel[port];
 2700              		.loc 1 982 0
 2701 0026 92B2     		uxth	r2, r2
 2702              	.LVL164:
 983:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	nb_avail_data = udi_cdc_rx_buf_nb[port][buf_sel] - pos;
 2703              		.loc 1 983 0
 2704 0028 DBB2     		uxtb	r3, r3
 2705              	.LVL165:
 984:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	cpu_irq_restore(flags);
 2706              		.loc 1 984 0
 2707 002a 34F81340 		ldrh	r4, [r4, r3, lsl #1]
 2708 002e A4B2     		uxth	r4, r4
 2709 0030 A41A     		subs	r4, r4, r2
 2710              	.LVL166:
 2711              	.LBB639:
 2712              	.LBB640:
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 		cpu_irq_enable();
 2713              		.loc 4 165 0
 2714 0032 05B3     		cbz	r5, .L187
 2715 0034 A142     		cmp	r1, r4
 2716 0036 28BF     		it	cs
 2717 0038 2146     		movcs	r1, r4
 2718              	.LVL167:
 2719 003a 0D46     		mov	r5, r1
 2720              	.LVL168:
 2721              	.LBE640:
 2722              	.LBE639:
 991:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		memcpy(ptr_buf, &udi_cdc_rx_buf[port][buf_sel][pos], size);
 2723              		.loc 1 991 0
 2724 003c 09B9     		cbnz	r1, .L188
 2725              	.LVL169:
 2726              	.L178:
 2727              	.LBE628:
 2728              	.LBE627:
1005:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	return udi_cdc_multi_read_no_polling(0, buf, size);
1006:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 2729              		.loc 1 1006 0
 2730 003e 2046     		mov	r0, r4
 2731              	.LVL170:
 2732 0040 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2733              	.LVL171:
 2734              	.L188:
 2735              	.LBB669:
 2736              	.LBB667:
 992:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		flags = cpu_irq_save(); // to protect udi_cdc_rx_pos
 2737              		.loc 1 992 0
 2738 0042 03EB8303 		add	r3, r3, r3, lsl #2
 2739              	.LVL172:
 2740 0046 1A49     		ldr	r1, .L190+20
ARM GAS  /tmp/ccCxIftT.s 			page 91


 2741 0048 02EB8313 		add	r3, r2, r3, lsl #6
 2742 004c 2A46     		mov	r2, r5
 2743              	.LVL173:
 2744 004e 1944     		add	r1, r1, r3
 2745 0050 FFF7FEFF 		bl	memcpy
 2746              	.LVL174:
 2747              	.LBB648:
 2748              	.LBB649:
 2749              	.LBB650:
 2750              	.LBB651:
 2751              		.loc 2 470 0
 2752              		.syntax unified
 2753              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2754 0054 EFF31083 		MRS r3, primask
 2755              	@ 0 "" 2
 2756              	.LVL175:
 2757              		.thumb
 2758              		.syntax unified
 2759              	.LBE651:
 2760              	.LBE650:
 2761              	.LBB652:
 2762              	.LBB653:
 330:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 2763              		.loc 2 330 0
 2764              		.syntax unified
 2765              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2766 0058 72B6     		cpsid i
 2767              	@ 0 "" 2
 2768              		.thumb
 2769              		.syntax unified
 2770              	.LBE653:
 2771              	.LBE652:
 2772              	.LBB654:
 2773              	.LBB655:
 2774              		.loc 3 456 0
 2775              		.syntax unified
 2776              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2777 005a BFF35F8F 		dmb
 2778              	@ 0 "" 2
 2779              		.thumb
 2780              		.syntax unified
 2781              	.LBE655:
 2782              	.LBE654:
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	return flags;
 2783              		.loc 4 154 0
 2784 005e 0022     		movs	r2, #0
 2785 0060 3270     		strb	r2, [r6]
 2786              	.LBE649:
 2787              	.LBE648:
 994:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		cpu_irq_restore(flags);
 2788              		.loc 1 994 0
 2789 0062 3988     		ldrh	r1, [r7]
 2790 0064 15FA81F5 		uxtah	r5, r5, r1
 2791 0068 ADB2     		uxth	r5, r5
 2792 006a 3D80     		strh	r5, [r7]	@ movhi
 2793              	.LBB656:
 2794              	.LBB657:
ARM GAS  /tmp/ccCxIftT.s 			page 92


 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 		cpu_irq_enable();
 2795              		.loc 4 165 0
 2796 006c 7BB1     		cbz	r3, .L189
 2797              	.L181:
 2798              	.LVL176:
 2799              	.LBE657:
 2800              	.LBE656:
 998:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
 2801              		.loc 1 998 0
 2802 006e FFF7FEFF 		bl	udi_cdc_rx_start.isra.10
 2803              	.LVL177:
 2804              	.LBE667:
 2805              	.LBE669:
 2806              		.loc 1 1006 0
 2807 0072 2046     		mov	r0, r4
 2808 0074 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2809              	.LVL178:
 2810              	.L187:
 2811              	.LBB670:
 2812              	.LBB668:
 2813              	.LBB665:
 2814              	.LBB647:
 2815              	.LBB641:
 2816              	.LBB642:
 2817              		.loc 4 166 0
 2818 0076 0125     		movs	r5, #1
 2819 0078 3570     		strb	r5, [r6]
 2820              	.LBB643:
 2821              	.LBB644:
 2822              		.loc 3 456 0
 2823              		.syntax unified
 2824              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2825 007a BFF35F8F 		dmb
 2826              	@ 0 "" 2
 2827              		.thumb
 2828              		.syntax unified
 2829              	.LBE644:
 2830              	.LBE643:
 2831              	.LBB645:
 2832              	.LBB646:
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 2833              		.loc 2 319 0
 2834              		.syntax unified
 2835              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2836 007e 62B6     		cpsie i
 2837              	@ 0 "" 2
 2838              		.thumb
 2839              		.syntax unified
 2840 0080 A142     		cmp	r1, r4
 2841 0082 28BF     		it	cs
 2842 0084 2146     		movcs	r1, r4
 2843              	.LVL179:
 2844 0086 0D46     		mov	r5, r1
 2845              	.LVL180:
 2846              	.LBE646:
 2847              	.LBE645:
 2848              	.LBE642:
ARM GAS  /tmp/ccCxIftT.s 			page 93


 2849              	.LBE641:
 2850              	.LBE647:
 2851              	.LBE665:
 991:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		memcpy(ptr_buf, &udi_cdc_rx_buf[port][buf_sel][pos], size);
 2852              		.loc 1 991 0
 2853 0088 0029     		cmp	r1, #0
 2854 008a D8D0     		beq	.L178
 2855 008c D9E7     		b	.L188
 2856              	.LVL181:
 2857              	.L189:
 2858              	.LBB666:
 2859              	.LBB664:
 2860              	.LBB658:
 2861              	.LBB659:
 2862              		.loc 4 166 0
 2863 008e 0123     		movs	r3, #1
 2864 0090 3370     		strb	r3, [r6]
 2865              	.LBB660:
 2866              	.LBB661:
 2867              		.loc 3 456 0
 2868              		.syntax unified
 2869              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2870 0092 BFF35F8F 		dmb
 2871              	@ 0 "" 2
 2872              		.thumb
 2873              		.syntax unified
 2874              	.LBE661:
 2875              	.LBE660:
 2876              	.LBB662:
 2877              	.LBB663:
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 2878              		.loc 2 319 0
 2879              		.syntax unified
 2880              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2881 0096 62B6     		cpsie i
 2882              	@ 0 "" 2
 2883              		.thumb
 2884              		.syntax unified
 2885 0098 E9E7     		b	.L181
 2886              	.L191:
 2887 009a 00BF     		.align	2
 2888              	.L190:
 2889 009c 00000000 		.word	.LANCHOR2
 2890 00a0 00000000 		.word	g_interrupt_enabled
 2891 00a4 00000000 		.word	.LANCHOR14
 2892 00a8 00000000 		.word	.LANCHOR15
 2893 00ac 00000000 		.word	.LANCHOR16
 2894 00b0 00000000 		.word	.LANCHOR18
 2895              	.LBE663:
 2896              	.LBE662:
 2897              	.LBE659:
 2898              	.LBE658:
 2899              	.LBE664:
 2900              	.LBE666:
 2901              	.LBE668:
 2902              	.LBE670:
 2903              		.cfi_endproc
ARM GAS  /tmp/ccCxIftT.s 			page 94


 2904              	.LFE184:
 2905              		.size	udi_cdc_read_no_polling, .-udi_cdc_read_no_polling
 2906              		.section	.text.udi_cdc_read_buf,"ax",%progbits
 2907              		.align	1
 2908              		.p2align 2,,3
 2909              		.global	udi_cdc_read_buf
 2910              		.syntax unified
 2911              		.thumb
 2912              		.thumb_func
 2913              		.fpu fpv5-d16
 2914              		.type	udi_cdc_read_buf, %function
 2915              	udi_cdc_read_buf:
 2916              	.LFB185:
1007:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
1008:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** iram_size_t udi_cdc_read_buf(void* buf, iram_size_t size)
1009:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 2917              		.loc 1 1009 0
 2918              		.cfi_startproc
 2919              		@ args = 0, pretend = 0, frame = 0
 2920              		@ frame_needed = 0, uses_anonymous_args = 0
 2921              		@ link register save eliminated.
 2922              	.LVL182:
1010:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	return udi_cdc_multi_read_buf(0, buf, size);
 2923              		.loc 1 1010 0
 2924 0000 0A46     		mov	r2, r1
 2925 0002 0146     		mov	r1, r0
 2926              	.LVL183:
 2927 0004 0020     		movs	r0, #0
 2928              	.LVL184:
 2929 0006 FFF7FEBF 		b	udi_cdc_multi_read_buf
 2930              	.LVL185:
 2931              		.cfi_endproc
 2932              	.LFE185:
 2933              		.size	udi_cdc_read_buf, .-udi_cdc_read_buf
 2934 000a 00BF     		.section	.text.udi_cdc_multi_get_free_tx_buffer,"ax",%progbits
 2935              		.align	1
 2936              		.p2align 2,,3
 2937              		.global	udi_cdc_multi_get_free_tx_buffer
 2938              		.syntax unified
 2939              		.thumb
 2940              		.thumb_func
 2941              		.fpu fpv5-d16
 2942              		.type	udi_cdc_multi_get_free_tx_buffer, %function
 2943              	udi_cdc_multi_get_free_tx_buffer:
 2944              	.LFB186:
1011:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
1012:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
1013:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** iram_size_t udi_cdc_multi_get_free_tx_buffer(uint8_t port)
1014:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 2945              		.loc 1 1014 0
 2946              		.cfi_startproc
 2947              		@ args = 0, pretend = 0, frame = 0
 2948              		@ frame_needed = 0, uses_anonymous_args = 0
 2949              		@ link register save eliminated.
 2950              	.LVL186:
 2951 0000 F0B4     		push	{r4, r5, r6, r7}
 2952              		.cfi_def_cfa_offset 16
ARM GAS  /tmp/ccCxIftT.s 			page 95


 2953              		.cfi_offset 4, -16
 2954              		.cfi_offset 5, -12
 2955              		.cfi_offset 6, -8
 2956              		.cfi_offset 7, -4
 2957              	.LBB689:
 2958              	.LBB690:
 2959              	.LBB691:
 2960              	.LBB692:
 2961              		.loc 2 470 0
 2962              		.syntax unified
 2963              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2964 0002 EFF31085 		MRS r5, primask
 2965              	@ 0 "" 2
 2966              	.LVL187:
 2967              		.thumb
 2968              		.syntax unified
 2969              	.LBE692:
 2970              	.LBE691:
 2971              	.LBB693:
 2972              	.LBB694:
 330:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 2973              		.loc 2 330 0
 2974              		.syntax unified
 2975              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2976 0006 72B6     		cpsid i
 2977              	@ 0 "" 2
 2978              		.thumb
 2979              		.syntax unified
 2980              	.LBE694:
 2981              	.LBE693:
 2982              	.LBB695:
 2983              	.LBB696:
 2984              		.loc 3 456 0
 2985              		.syntax unified
 2986              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2987 0008 BFF35F8F 		dmb
 2988              	@ 0 "" 2
 2989              		.thumb
 2990              		.syntax unified
 2991              	.LBE696:
 2992              	.LBE695:
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	return flags;
 2993              		.loc 4 154 0
 2994 000c 144A     		ldr	r2, .L200
 2995 000e 0021     		movs	r1, #0
 2996              	.LBE690:
 2997              	.LBE689:
1015:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	irqflags_t flags;
1016:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	iram_size_t buf_sel_nb, retval;
1017:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint8_t buf_sel;
1018:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
1019:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #if UDI_CDC_PORT_NB == 1 // To optimize code
1020:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	port = 0;
1021:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #endif
1022:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
1023:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	flags = cpu_irq_save();
1024:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	buf_sel = udi_cdc_tx_buf_sel[port];
ARM GAS  /tmp/ccCxIftT.s 			page 96


 2998              		.loc 1 1024 0
 2999 0010 144C     		ldr	r4, .L200+4
 3000              	.LBB698:
 3001              	.LBB697:
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	return flags;
 3002              		.loc 4 154 0
 3003 0012 1170     		strb	r1, [r2]
 3004              	.LVL188:
 3005              	.LBE697:
 3006              	.LBE698:
 3007              		.loc 1 1024 0
 3008 0014 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
1025:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	buf_sel_nb = udi_cdc_tx_buf_nb[port][buf_sel];
 3009              		.loc 1 1025 0
 3010 0016 1448     		ldr	r0, .L200+8
1024:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	buf_sel_nb = udi_cdc_tx_buf_nb[port][buf_sel];
 3011              		.loc 1 1024 0
 3012 0018 DBB2     		uxtb	r3, r3
 3013              	.LVL189:
 3014              		.loc 1 1025 0
 3015 001a 30F81300 		ldrh	r0, [r0, r3, lsl #1]
 3016              	.LVL190:
1026:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (buf_sel_nb == UDI_CDC_TX_BUFFERS) {
 3017              		.loc 1 1026 0
 3018 001e B0F5A07F 		cmp	r0, #320
 3019 0022 09D0     		beq	.L194
 3020 0024 C0F5A070 		rsb	r0, r0, #320
 3021              	.LVL191:
 3022              	.L195:
 3023              	.LBB699:
 3024              	.LBB700:
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 		cpu_irq_enable();
 3025              		.loc 4 165 0
 3026 0028 25B9     		cbnz	r5, .L193
 3027              	.LVL192:
 3028              	.LBB701:
 3029              	.LBB702:
 3030              		.loc 4 166 0
 3031 002a 0123     		movs	r3, #1
 3032 002c 1370     		strb	r3, [r2]
 3033              	.LBB703:
 3034              	.LBB704:
 3035              		.loc 3 456 0
 3036              		.syntax unified
 3037              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 3038 002e BFF35F8F 		dmb
 3039              	@ 0 "" 2
 3040              		.thumb
 3041              		.syntax unified
 3042              	.LBE704:
 3043              	.LBE703:
 3044              	.LBB705:
 3045              	.LBB706:
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 3046              		.loc 2 319 0
 3047              		.syntax unified
 3048              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
ARM GAS  /tmp/ccCxIftT.s 			page 97


 3049 0032 62B6     		cpsie i
 3050              	@ 0 "" 2
 3051              	.LVL193:
 3052              		.thumb
 3053              		.syntax unified
 3054              	.L193:
 3055              	.LBE706:
 3056              	.LBE705:
 3057              	.LBE702:
 3058              	.LBE701:
 3059              	.LBE700:
 3060              	.LBE699:
1027:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		if ((!udi_cdc_tx_trans_ongoing[port])
1028:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			&& (!udi_cdc_tx_both_buf_to_send[port])) {
1029:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			/* One buffer is full, but the other buffer is not used.
1030:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			 * (not used = transfer on-going)
1031:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			 * then move to the other buffer to store data */
1032:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			udi_cdc_tx_both_buf_to_send[port] = true;
1033:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			udi_cdc_tx_buf_sel[port] = (buf_sel == 0)? 1 : 0;
1034:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			buf_sel_nb = 0;
1035:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		}
1036:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
1037:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	retval = UDI_CDC_TX_BUFFERS - buf_sel_nb;  
1038:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	cpu_irq_restore(flags);
1039:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	return retval;
1040:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 3061              		.loc 1 1040 0
 3062 0034 F0BC     		pop	{r4, r5, r6, r7}
 3063              		.cfi_remember_state
 3064              		.cfi_restore 7
 3065              		.cfi_restore 6
 3066              		.cfi_restore 5
 3067              		.cfi_restore 4
 3068              		.cfi_def_cfa_offset 0
 3069 0036 7047     		bx	lr
 3070              	.LVL194:
 3071              	.L194:
 3072              		.cfi_restore_state
1027:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		if ((!udi_cdc_tx_trans_ongoing[port])
 3073              		.loc 1 1027 0
 3074 0038 0C4E     		ldr	r6, .L200+12
 3075 003a 3678     		ldrb	r6, [r6]	@ zero_extendqisi2
 3076 003c 06F0FF07 		and	r7, r6, #255
 3077 0040 4EB9     		cbnz	r6, .L197
1028:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			/* One buffer is full, but the other buffer is not used.
 3078              		.loc 1 1028 0
 3079 0042 0B49     		ldr	r1, .L200+16
 3080 0044 0E78     		ldrb	r6, [r1]	@ zero_extendqisi2
 3081 0046 46B9     		cbnz	r6, .L198
1033:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			buf_sel_nb = 0;
 3082              		.loc 1 1033 0
 3083 0048 B3FA83F3 		clz	r3, r3
 3084              	.LVL195:
1032:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			udi_cdc_tx_buf_sel[port] = (buf_sel == 0)? 1 : 0;
 3085              		.loc 1 1032 0
 3086 004c 0126     		movs	r6, #1
1033:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			buf_sel_nb = 0;
ARM GAS  /tmp/ccCxIftT.s 			page 98


 3087              		.loc 1 1033 0
 3088 004e 5B09     		lsrs	r3, r3, #5
1032:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			udi_cdc_tx_buf_sel[port] = (buf_sel == 0)? 1 : 0;
 3089              		.loc 1 1032 0
 3090 0050 0E70     		strb	r6, [r1]
1033:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			buf_sel_nb = 0;
 3091              		.loc 1 1033 0
 3092 0052 2370     		strb	r3, [r4]
 3093              	.LVL196:
 3094 0054 E8E7     		b	.L195
 3095              	.LVL197:
 3096              	.L197:
 3097 0056 0846     		mov	r0, r1
 3098              	.LVL198:
 3099 0058 E6E7     		b	.L195
 3100              	.LVL199:
 3101              	.L198:
 3102 005a 3846     		mov	r0, r7
 3103              	.LVL200:
 3104 005c E4E7     		b	.L195
 3105              	.L201:
 3106 005e 00BF     		.align	2
 3107              	.L200:
 3108 0060 00000000 		.word	g_interrupt_enabled
 3109 0064 00000000 		.word	.LANCHOR9
 3110 0068 00000000 		.word	.LANCHOR10
 3111 006c 00000000 		.word	.LANCHOR7
 3112 0070 00000000 		.word	.LANCHOR12
 3113              		.cfi_endproc
 3114              	.LFE186:
 3115              		.size	udi_cdc_multi_get_free_tx_buffer, .-udi_cdc_multi_get_free_tx_buffer
 3116              		.section	.text.udi_cdc_get_free_tx_buffer,"ax",%progbits
 3117              		.align	1
 3118              		.p2align 2,,3
 3119              		.global	udi_cdc_get_free_tx_buffer
 3120              		.syntax unified
 3121              		.thumb
 3122              		.thumb_func
 3123              		.fpu fpv5-d16
 3124              		.type	udi_cdc_get_free_tx_buffer, %function
 3125              	udi_cdc_get_free_tx_buffer:
 3126              	.LFB187:
1041:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
1042:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** iram_size_t udi_cdc_get_free_tx_buffer(void)
1043:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 3127              		.loc 1 1043 0
 3128              		.cfi_startproc
 3129              		@ args = 0, pretend = 0, frame = 0
 3130              		@ frame_needed = 0, uses_anonymous_args = 0
 3131              		@ link register save eliminated.
1044:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	return udi_cdc_multi_get_free_tx_buffer(0);
 3132              		.loc 1 1044 0
 3133 0000 0020     		movs	r0, #0
 3134 0002 FFF7FEBF 		b	udi_cdc_multi_get_free_tx_buffer
 3135              	.LVL201:
 3136              		.cfi_endproc
 3137              	.LFE187:
ARM GAS  /tmp/ccCxIftT.s 			page 99


 3138              		.size	udi_cdc_get_free_tx_buffer, .-udi_cdc_get_free_tx_buffer
 3139 0006 00BF     		.section	.text.udi_cdc_multi_is_tx_ready,"ax",%progbits
 3140              		.align	1
 3141              		.p2align 2,,3
 3142              		.global	udi_cdc_multi_is_tx_ready
 3143              		.syntax unified
 3144              		.thumb
 3145              		.thumb_func
 3146              		.fpu fpv5-d16
 3147              		.type	udi_cdc_multi_is_tx_ready, %function
 3148              	udi_cdc_multi_is_tx_ready:
 3149              	.LFB188:
1045:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
1046:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
1047:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** bool udi_cdc_multi_is_tx_ready(uint8_t port)
1048:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 3150              		.loc 1 1048 0
 3151              		.cfi_startproc
 3152              		@ args = 0, pretend = 0, frame = 0
 3153              		@ frame_needed = 0, uses_anonymous_args = 0
 3154              	.LVL202:
 3155 0000 08B5     		push	{r3, lr}
 3156              		.cfi_def_cfa_offset 8
 3157              		.cfi_offset 3, -8
 3158              		.cfi_offset 14, -4
1049:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	return (udi_cdc_multi_get_free_tx_buffer(port) != 0);
 3159              		.loc 1 1049 0
 3160 0002 FFF7FEFF 		bl	udi_cdc_multi_get_free_tx_buffer
 3161              	.LVL203:
1050:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 3162              		.loc 1 1050 0
 3163 0006 0030     		adds	r0, r0, #0
 3164 0008 18BF     		it	ne
 3165 000a 0120     		movne	r0, #1
 3166 000c 08BD     		pop	{r3, pc}
 3167              		.cfi_endproc
 3168              	.LFE188:
 3169              		.size	udi_cdc_multi_is_tx_ready, .-udi_cdc_multi_is_tx_ready
 3170 000e 00BF     		.section	.text.udi_cdc_is_tx_ready,"ax",%progbits
 3171              		.align	1
 3172              		.p2align 2,,3
 3173              		.global	udi_cdc_is_tx_ready
 3174              		.syntax unified
 3175              		.thumb
 3176              		.thumb_func
 3177              		.fpu fpv5-d16
 3178              		.type	udi_cdc_is_tx_ready, %function
 3179              	udi_cdc_is_tx_ready:
 3180              	.LFB189:
1051:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
1052:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** bool udi_cdc_is_tx_ready(void)
1053:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 3181              		.loc 1 1053 0
 3182              		.cfi_startproc
 3183              		@ args = 0, pretend = 0, frame = 0
 3184              		@ frame_needed = 0, uses_anonymous_args = 0
 3185              	.LVL204:
ARM GAS  /tmp/ccCxIftT.s 			page 100


 3186 0000 08B5     		push	{r3, lr}
 3187              		.cfi_def_cfa_offset 8
 3188              		.cfi_offset 3, -8
 3189              		.cfi_offset 14, -4
 3190              	.LBB707:
 3191              	.LBB708:
1049:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 3192              		.loc 1 1049 0
 3193 0002 0020     		movs	r0, #0
 3194 0004 FFF7FEFF 		bl	udi_cdc_multi_get_free_tx_buffer
 3195              	.LVL205:
 3196              	.LBE708:
 3197              	.LBE707:
1054:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	return udi_cdc_multi_is_tx_ready(0);
1055:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 3198              		.loc 1 1055 0
 3199 0008 0030     		adds	r0, r0, #0
 3200 000a 18BF     		it	ne
 3201 000c 0120     		movne	r0, #1
 3202 000e 08BD     		pop	{r3, pc}
 3203              		.cfi_endproc
 3204              	.LFE189:
 3205              		.size	udi_cdc_is_tx_ready, .-udi_cdc_is_tx_ready
 3206              		.section	.text.udi_cdc_multi_putc,"ax",%progbits
 3207              		.align	1
 3208              		.p2align 2,,3
 3209              		.global	udi_cdc_multi_putc
 3210              		.syntax unified
 3211              		.thumb
 3212              		.thumb_func
 3213              		.fpu fpv5-d16
 3214              		.type	udi_cdc_multi_putc, %function
 3215              	udi_cdc_multi_putc:
 3216              	.LFB190:
1056:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
1057:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** int udi_cdc_multi_putc(uint8_t port, int value)
1058:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 3217              		.loc 1 1058 0
 3218              		.cfi_startproc
 3219              		@ args = 0, pretend = 0, frame = 0
 3220              		@ frame_needed = 0, uses_anonymous_args = 0
 3221              	.LVL206:
1059:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	irqflags_t flags;
1060:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	bool b_databit_9;
1061:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint8_t buf_sel;
1062:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
1063:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #if UDI_CDC_PORT_NB == 1 // To optimize code
1064:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	port = 0;
1065:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #endif
1066:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
1067:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	b_databit_9 = (9 == udi_cdc_line_coding[port].bDataBits);
 3222              		.loc 1 1067 0
 3223 0000 1F4B     		ldr	r3, .L217
1058:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	irqflags_t flags;
 3224              		.loc 1 1058 0
 3225 0002 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 3226              		.cfi_def_cfa_offset 24
ARM GAS  /tmp/ccCxIftT.s 			page 101


 3227              		.cfi_offset 4, -24
 3228              		.cfi_offset 5, -20
 3229              		.cfi_offset 6, -16
 3230              		.cfi_offset 7, -12
 3231              		.cfi_offset 8, -8
 3232              		.cfi_offset 14, -4
 3233              		.loc 1 1067 0
 3234 0006 9D79     		ldrb	r5, [r3, #6]	@ zero_extendqisi2
1058:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	irqflags_t flags;
 3235              		.loc 1 1058 0
 3236 0008 0C46     		mov	r4, r1
 3237              	.LBB729:
 3238              	.LBB730:
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	return flags;
 3239              		.loc 4 154 0
 3240 000a 1E4F     		ldr	r7, .L217+4
 3241              	.LBE730:
 3242              	.LBE729:
 3243              		.loc 1 1067 0
 3244 000c A5F10905 		sub	r5, #9
1068:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
1069:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** udi_cdc_putc_process_one_byte:
1070:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	// Check available space
1071:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (!udi_cdc_multi_is_tx_ready(port)) {
1072:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		if (!udi_cdc_data_running) {
1073:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			return false;
1074:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		}
1075:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		goto udi_cdc_putc_process_one_byte;
1076:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
1077:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
1078:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	// Write value
1079:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	flags = cpu_irq_save();
1080:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	buf_sel = udi_cdc_tx_buf_sel[port];
 3245              		.loc 1 1080 0
 3246 0010 DFF88080 		ldr	r8, .L217+20
1081:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_buf[port][buf_sel][udi_cdc_tx_buf_nb[port][buf_sel]++] = value;
 3247              		.loc 1 1081 0
 3248 0014 1C4E     		ldr	r6, .L217+8
1067:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
 3249              		.loc 1 1067 0
 3250 0016 B5FA85F5 		clz	r5, r5
 3251 001a 6D09     		lsrs	r5, r5, #5
 3252              	.LVL207:
 3253              	.L208:
 3254              	.LBB739:
 3255              	.LBB740:
1049:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 3256              		.loc 1 1049 0
 3257 001c 0020     		movs	r0, #0
 3258 001e FFF7FEFF 		bl	udi_cdc_multi_get_free_tx_buffer
 3259              	.LVL208:
 3260              	.LBE740:
 3261              	.LBE739:
1072:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			return false;
 3262              		.loc 1 1072 0
 3263 0022 1A4B     		ldr	r3, .L217+12
1071:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		if (!udi_cdc_data_running) {
ARM GAS  /tmp/ccCxIftT.s 			page 102


 3264              		.loc 1 1071 0
 3265 0024 30B9     		cbnz	r0, .L209
1072:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			return false;
 3266              		.loc 1 1072 0
 3267 0026 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 3268 0028 03F0FF00 		and	r0, r3, #255
 3269 002c 002B     		cmp	r3, #0
 3270 002e F5D1     		bne	.L208
 3271 0030 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3272              	.LVL209:
 3273              	.L209:
 3274              	.LBB741:
 3275              	.LBB737:
 3276              	.LBB731:
 3277              	.LBB732:
 3278              		.loc 2 470 0
 3279              		.syntax unified
 3280              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 3281 0034 EFF31082 		MRS r2, primask
 3282              	@ 0 "" 2
 3283              	.LVL210:
 3284              		.thumb
 3285              		.syntax unified
 3286              	.LBE732:
 3287              	.LBE731:
 3288              	.LBB733:
 3289              	.LBB734:
 330:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 3290              		.loc 2 330 0
 3291              		.syntax unified
 3292              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 3293 0038 72B6     		cpsid i
 3294              	@ 0 "" 2
 3295              		.thumb
 3296              		.syntax unified
 3297              	.LBE734:
 3298              	.LBE733:
 3299              	.LBB735:
 3300              	.LBB736:
 3301              		.loc 3 456 0
 3302              		.syntax unified
 3303              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 3304 003a BFF35F8F 		dmb
 3305              	@ 0 "" 2
 3306              		.thumb
 3307              		.syntax unified
 3308              	.LBE736:
 3309              	.LBE735:
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	return flags;
 3310              		.loc 4 154 0
 3311 003e 0023     		movs	r3, #0
 3312              	.LBE737:
 3313              	.LBE741:
 3314              		.loc 1 1081 0
 3315 0040 1349     		ldr	r1, .L217+16
 3316              	.LBB742:
 3317              	.LBB738:
ARM GAS  /tmp/ccCxIftT.s 			page 103


 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	return flags;
 3318              		.loc 4 154 0
 3319 0042 3B70     		strb	r3, [r7]
 3320              	.LBE738:
 3321              	.LBE742:
1080:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_buf[port][buf_sel][udi_cdc_tx_buf_nb[port][buf_sel]++] = value;
 3322              		.loc 1 1080 0
 3323 0044 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 3324 0048 DBB2     		uxtb	r3, r3
 3325              	.LVL211:
 3326              		.loc 1 1081 0
 3327 004a 36F81300 		ldrh	r0, [r6, r3, lsl #1]
 3328 004e 03EB830C 		add	ip, r3, r3, lsl #2
 3329 0052 00F1010E 		add	lr, r0, #1
 3330 0056 01EB8C11 		add	r1, r1, ip, lsl #6
 3331 005a 26F813E0 		strh	lr, [r6, r3, lsl #1]	@ movhi
 3332 005e 0C54     		strb	r4, [r1, r0]
 3333              	.LBB743:
 3334              	.LBB744:
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 		cpu_irq_enable();
 3335              		.loc 4 165 0
 3336 0060 1AB1     		cbz	r2, .L215
 3337              	.LVL212:
 3338              	.LBE744:
 3339              	.LBE743:
1082:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	cpu_irq_restore(flags);
1083:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
1084:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (b_databit_9) {
 3340              		.loc 1 1084 0
 3341 0062 4DB1     		cbz	r5, .L213
 3342              	.LVL213:
 3343              	.L216:
1085:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		// Send MSB
1086:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		b_databit_9 = false;
 3344              		.loc 1 1086 0
 3345 0064 0025     		movs	r5, #0
1087:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		value = value >> 8;
 3346              		.loc 1 1087 0
 3347 0066 2412     		asrs	r4, r4, #8
 3348              	.LVL214:
1088:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		goto udi_cdc_putc_process_one_byte;
 3349              		.loc 1 1088 0
 3350 0068 D8E7     		b	.L208
 3351              	.LVL215:
 3352              	.L215:
 3353              	.LBB752:
 3354              	.LBB751:
 3355              	.LBB745:
 3356              	.LBB746:
 3357              		.loc 4 166 0
 3358 006a 0123     		movs	r3, #1
 3359              	.LVL216:
 3360 006c 3B70     		strb	r3, [r7]
 3361              	.LBB747:
 3362              	.LBB748:
 3363              		.loc 3 456 0
 3364              		.syntax unified
ARM GAS  /tmp/ccCxIftT.s 			page 104


 3365              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 3366 006e BFF35F8F 		dmb
 3367              	@ 0 "" 2
 3368              		.thumb
 3369              		.syntax unified
 3370              	.LBE748:
 3371              	.LBE747:
 3372              	.LBB749:
 3373              	.LBB750:
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 3374              		.loc 2 319 0
 3375              		.syntax unified
 3376              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 3377 0072 62B6     		cpsie i
 3378              	@ 0 "" 2
 3379              	.LVL217:
 3380              		.thumb
 3381              		.syntax unified
 3382              	.LBE750:
 3383              	.LBE749:
 3384              	.LBE746:
 3385              	.LBE745:
 3386              	.LBE751:
 3387              	.LBE752:
1084:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		// Send MSB
 3388              		.loc 1 1084 0
 3389 0074 002D     		cmp	r5, #0
 3390 0076 F5D1     		bne	.L216
 3391              	.L213:
1089:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
1090:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	return true;
 3392              		.loc 1 1090 0
 3393 0078 0120     		movs	r0, #1
1091:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 3394              		.loc 1 1091 0
 3395 007a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3396              	.LVL218:
 3397              	.L218:
 3398 007e 00BF     		.align	2
 3399              	.L217:
 3400 0080 00000000 		.word	.LANCHOR3
 3401 0084 00000000 		.word	g_interrupt_enabled
 3402 0088 00000000 		.word	.LANCHOR10
 3403 008c 00000000 		.word	.LANCHOR2
 3404 0090 00000000 		.word	.LANCHOR13
 3405 0094 00000000 		.word	.LANCHOR9
 3406              		.cfi_endproc
 3407              	.LFE190:
 3408              		.size	udi_cdc_multi_putc, .-udi_cdc_multi_putc
 3409              		.section	.text.udi_cdc_putc,"ax",%progbits
 3410              		.align	1
 3411              		.p2align 2,,3
 3412              		.global	udi_cdc_putc
 3413              		.syntax unified
 3414              		.thumb
 3415              		.thumb_func
 3416              		.fpu fpv5-d16
ARM GAS  /tmp/ccCxIftT.s 			page 105


 3417              		.type	udi_cdc_putc, %function
 3418              	udi_cdc_putc:
 3419              	.LFB191:
1092:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
1093:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** int udi_cdc_putc(int value)
1094:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 3420              		.loc 1 1094 0
 3421              		.cfi_startproc
 3422              		@ args = 0, pretend = 0, frame = 0
 3423              		@ frame_needed = 0, uses_anonymous_args = 0
 3424              		@ link register save eliminated.
 3425              	.LVL219:
1095:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	return udi_cdc_multi_putc(0, value);
 3426              		.loc 1 1095 0
 3427 0000 0146     		mov	r1, r0
 3428 0002 0020     		movs	r0, #0
 3429              	.LVL220:
 3430 0004 FFF7FEBF 		b	udi_cdc_multi_putc
 3431              	.LVL221:
 3432              		.cfi_endproc
 3433              	.LFE191:
 3434              		.size	udi_cdc_putc, .-udi_cdc_putc
 3435              		.section	.text.udi_cdc_multi_write_buf,"ax",%progbits
 3436              		.align	1
 3437              		.p2align 2,,3
 3438              		.global	udi_cdc_multi_write_buf
 3439              		.syntax unified
 3440              		.thumb
 3441              		.thumb_func
 3442              		.fpu fpv5-d16
 3443              		.type	udi_cdc_multi_write_buf, %function
 3444              	udi_cdc_multi_write_buf:
 3445              	.LFB192:
1096:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
1097:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
1098:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** iram_size_t udi_cdc_multi_write_buf(uint8_t port, const void* buf, iram_size_t size)
1099:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 3446              		.loc 1 1099 0
 3447              		.cfi_startproc
 3448              		@ args = 0, pretend = 0, frame = 0
 3449              		@ frame_needed = 0, uses_anonymous_args = 0
 3450              	.LVL222:
 3451 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3452              		.cfi_def_cfa_offset 40
 3453              		.cfi_offset 3, -40
 3454              		.cfi_offset 4, -36
 3455              		.cfi_offset 5, -32
 3456              		.cfi_offset 6, -28
 3457              		.cfi_offset 7, -24
 3458              		.cfi_offset 8, -20
 3459              		.cfi_offset 9, -16
 3460              		.cfi_offset 10, -12
 3461              		.cfi_offset 11, -8
 3462              		.cfi_offset 14, -4
1100:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	irqflags_t flags;
1101:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint8_t buf_sel;
1102:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint16_t buf_nb;
ARM GAS  /tmp/ccCxIftT.s 			page 106


1103:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	iram_size_t copy_nb;
1104:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	uint8_t *ptr_buf = (uint8_t *)buf;
1105:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
1106:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #if UDI_CDC_PORT_NB == 1 // To optimize code
1107:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	port = 0;
1108:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #endif
1109:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
1110:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (9 == udi_cdc_line_coding[port].bDataBits) {
 3463              		.loc 1 1110 0
 3464 0004 204B     		ldr	r3, .L230
 3465              	.LVL223:
1099:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	irqflags_t flags;
 3466              		.loc 1 1099 0
 3467 0006 1746     		mov	r7, r2
 3468 0008 8846     		mov	r8, r1
 3469              	.LBB773:
 3470              	.LBB774:
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	return flags;
 3471              		.loc 4 154 0
 3472 000a DFF888A0 		ldr	r10, .L230+12
 3473              	.LBE774:
 3474              	.LBE773:
 3475              		.loc 1 1110 0
 3476 000e 9B79     		ldrb	r3, [r3, #6]	@ zero_extendqisi2
1111:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		size *=2;
1112:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
1113:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
1114:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** udi_cdc_write_buf_loop_wait:
1115:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	// Check available space
1116:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (!udi_cdc_multi_is_tx_ready(port)) {
1117:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #if 1	// dc42 change to make this function non-blocking
1118:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		return size;
1119:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #else
1120:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		if (!udi_cdc_data_running) {
1121:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 			return size;
1122:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		}
1123:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		goto udi_cdc_write_buf_loop_wait;
1124:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #endif
1125:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
1126:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
1127:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	// Write values
1128:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	flags = cpu_irq_save();
1129:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	buf_sel = udi_cdc_tx_buf_sel[port];
1130:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	buf_nb = udi_cdc_tx_buf_nb[port][buf_sel];
 3477              		.loc 1 1130 0
 3478 0010 DFF88490 		ldr	r9, .L230+16
1110:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		size *=2;
 3479              		.loc 1 1110 0
 3480 0014 092B     		cmp	r3, #9
1111:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		size *=2;
 3481              		.loc 1 1111 0
 3482 0016 08BF     		it	eq
 3483 0018 5700     		lsleq	r7, r2, #1
 3484              	.LVL224:
 3485 001a 02E0     		b	.L224
 3486              	.LVL225:
 3487              	.L223:
ARM GAS  /tmp/ccCxIftT.s 			page 107


1131:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	copy_nb = UDI_CDC_TX_BUFFERS - buf_nb;
1132:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (copy_nb > size) {
1133:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		copy_nb = size;
1134:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
1135:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	memcpy(&udi_cdc_tx_buf[port][buf_sel][buf_nb], ptr_buf, copy_nb);
1136:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_buf_nb[port][buf_sel] = buf_nb + copy_nb;
1137:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	cpu_irq_restore(flags);
1138:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
1139:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	// Update buffer pointer
1140:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	ptr_buf = ptr_buf + copy_nb;
1141:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	size -= copy_nb;
1142:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
1143:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (size) {
 3488              		.loc 1 1143 0
 3489 001c 3F1B     		subs	r7, r7, r4
 3490              	.LVL226:
1140:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	size -= copy_nb;
 3491              		.loc 1 1140 0
 3492 001e A044     		add	r8, r8, r4
 3493              	.LVL227:
 3494              		.loc 1 1143 0
 3495 0020 2ED0     		beq	.L222
 3496              	.LVL228:
 3497              	.L224:
 3498              	.LBB784:
 3499              	.LBB785:
1049:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 3500              		.loc 1 1049 0
 3501 0022 0020     		movs	r0, #0
 3502 0024 FFF7FEFF 		bl	udi_cdc_multi_get_free_tx_buffer
 3503              	.LVL229:
 3504              	.LBE785:
 3505              	.LBE784:
1116:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** #if 1	// dc42 change to make this function non-blocking
 3506              		.loc 1 1116 0
 3507 0028 50B3     		cbz	r0, .L222
 3508              	.LBB786:
 3509              	.LBB781:
 3510              	.LBB775:
 3511              	.LBB776:
 3512              		.loc 2 470 0
 3513              		.syntax unified
 3514              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 3515 002a EFF3108B 		MRS fp, primask
 3516              	@ 0 "" 2
 3517              	.LVL230:
 3518              		.thumb
 3519              		.syntax unified
 3520              	.LBE776:
 3521              	.LBE775:
 3522              	.LBB777:
 3523              	.LBB778:
 330:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 3524              		.loc 2 330 0
 3525              		.syntax unified
 3526              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 3527 002e 72B6     		cpsid i
ARM GAS  /tmp/ccCxIftT.s 			page 108


 3528              	@ 0 "" 2
 3529              		.thumb
 3530              		.syntax unified
 3531              	.LBE778:
 3532              	.LBE777:
 3533              	.LBB779:
 3534              	.LBB780:
 3535              		.loc 3 456 0
 3536              		.syntax unified
 3537              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 3538 0030 BFF35F8F 		dmb
 3539              	@ 0 "" 2
 3540              		.thumb
 3541              		.syntax unified
 3542              	.LBE780:
 3543              	.LBE779:
 3544              	.LBE781:
 3545              	.LBE786:
1129:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	buf_nb = udi_cdc_tx_buf_nb[port][buf_sel];
 3546              		.loc 1 1129 0
 3547 0034 154B     		ldr	r3, .L230+4
 3548              	.LBB787:
 3549              	.LBB782:
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	return flags;
 3550              		.loc 4 154 0
 3551 0036 0022     		movs	r2, #0
 3552              	.LBE782:
 3553              	.LBE787:
1135:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_buf_nb[port][buf_sel] = buf_nb + copy_nb;
 3554              		.loc 1 1135 0
 3555 0038 1548     		ldr	r0, .L230+8
 3556 003a 4146     		mov	r1, r8
 3557              	.LBB788:
 3558              	.LBB783:
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	return flags;
 3559              		.loc 4 154 0
 3560 003c 8AF80020 		strb	r2, [r10]
 3561              	.LBE783:
 3562              	.LBE788:
1129:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	buf_nb = udi_cdc_tx_buf_nb[port][buf_sel];
 3563              		.loc 1 1129 0
 3564 0040 1D78     		ldrb	r5, [r3]	@ zero_extendqisi2
 3565 0042 EDB2     		uxtb	r5, r5
 3566              	.LVL231:
1130:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	copy_nb = UDI_CDC_TX_BUFFERS - buf_nb;
 3567              		.loc 1 1130 0
 3568 0044 39F81560 		ldrh	r6, [r9, r5, lsl #1]
 3569              	.LVL232:
1135:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_buf_nb[port][buf_sel] = buf_nb + copy_nb;
 3570              		.loc 1 1135 0
 3571 0048 05EB8502 		add	r2, r5, r5, lsl #2
1131:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	if (copy_nb > size) {
 3572              		.loc 1 1131 0
 3573 004c C6F5A074 		rsb	r4, r6, #320
 3574              	.LVL233:
1135:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_buf_nb[port][buf_sel] = buf_nb + copy_nb;
 3575              		.loc 1 1135 0
ARM GAS  /tmp/ccCxIftT.s 			page 109


 3576 0050 06EB8212 		add	r2, r6, r2, lsl #6
 3577 0054 BC42     		cmp	r4, r7
 3578 0056 1044     		add	r0, r0, r2
 3579 0058 28BF     		it	cs
 3580 005a 3C46     		movcs	r4, r7
 3581              	.LVL234:
 3582 005c 2246     		mov	r2, r4
1136:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	cpu_irq_restore(flags);
 3583              		.loc 1 1136 0
 3584 005e 2644     		add	r6, r6, r4
 3585              	.LVL235:
1135:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	udi_cdc_tx_buf_nb[port][buf_sel] = buf_nb + copy_nb;
 3586              		.loc 1 1135 0
 3587 0060 FFF7FEFF 		bl	memcpy
 3588              	.LVL236:
 3589              	.LBB789:
 3590              	.LBB790:
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 		cpu_irq_enable();
 3591              		.loc 4 165 0
 3592 0064 5B46     		mov	r3, fp
 3593              	.LBE790:
 3594              	.LBE789:
1136:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	cpu_irq_restore(flags);
 3595              		.loc 1 1136 0
 3596 0066 29F81560 		strh	r6, [r9, r5, lsl #1]	@ movhi
 3597              	.LBB798:
 3598              	.LBB797:
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 		cpu_irq_enable();
 3599              		.loc 4 165 0
 3600 006a 002B     		cmp	r3, #0
 3601 006c D6D1     		bne	.L223
 3602              	.LVL237:
 3603              	.LBB791:
 3604              	.LBB792:
 3605              		.loc 4 166 0
 3606 006e 0123     		movs	r3, #1
 3607 0070 8AF80030 		strb	r3, [r10]
 3608              	.LBB793:
 3609              	.LBB794:
 3610              		.loc 3 456 0
 3611              		.syntax unified
 3612              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 3613 0074 BFF35F8F 		dmb
 3614              	@ 0 "" 2
 3615              		.thumb
 3616              		.syntax unified
 3617              	.LBE794:
 3618              	.LBE793:
 3619              	.LBB795:
 3620              	.LBB796:
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 3621              		.loc 2 319 0
 3622              		.syntax unified
 3623              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 3624 0078 62B6     		cpsie i
 3625              	@ 0 "" 2
 3626              		.thumb
ARM GAS  /tmp/ccCxIftT.s 			page 110


 3627              		.syntax unified
 3628              	.LBE796:
 3629              	.LBE795:
 3630              	.LBE792:
 3631              	.LBE791:
 3632              	.LBE797:
 3633              	.LBE798:
 3634              		.loc 1 1143 0
 3635 007a 3F1B     		subs	r7, r7, r4
 3636              	.LVL238:
1140:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	size -= copy_nb;
 3637              		.loc 1 1140 0
 3638 007c A044     		add	r8, r8, r4
 3639              	.LVL239:
 3640              		.loc 1 1143 0
 3641 007e D0D1     		bne	.L224
 3642              	.LVL240:
 3643              	.L222:
1144:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 		goto udi_cdc_write_buf_loop_wait;
1145:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	}
1146:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
1147:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	return 0;
1148:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** }
 3644              		.loc 1 1148 0
 3645 0080 3846     		mov	r0, r7
 3646 0082 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3647              	.LVL241:
 3648              	.L231:
 3649 0086 00BF     		.align	2
 3650              	.L230:
 3651 0088 00000000 		.word	.LANCHOR3
 3652 008c 00000000 		.word	.LANCHOR9
 3653 0090 00000000 		.word	.LANCHOR13
 3654 0094 00000000 		.word	g_interrupt_enabled
 3655 0098 00000000 		.word	.LANCHOR10
 3656              		.cfi_endproc
 3657              	.LFE192:
 3658              		.size	udi_cdc_multi_write_buf, .-udi_cdc_multi_write_buf
 3659              		.section	.text.udi_cdc_write_buf,"ax",%progbits
 3660              		.align	1
 3661              		.p2align 2,,3
 3662              		.global	udi_cdc_write_buf
 3663              		.syntax unified
 3664              		.thumb
 3665              		.thumb_func
 3666              		.fpu fpv5-d16
 3667              		.type	udi_cdc_write_buf, %function
 3668              	udi_cdc_write_buf:
 3669              	.LFB193:
1149:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 
1150:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** iram_size_t udi_cdc_write_buf(const void* buf, iram_size_t size)
1151:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** {
 3670              		.loc 1 1151 0
 3671              		.cfi_startproc
 3672              		@ args = 0, pretend = 0, frame = 0
 3673              		@ frame_needed = 0, uses_anonymous_args = 0
 3674              		@ link register save eliminated.
ARM GAS  /tmp/ccCxIftT.s 			page 111


 3675              	.LVL242:
1152:../asf/common/services/usb/class/cdc/device/udi_cdc.c **** 	return udi_cdc_multi_write_buf(0, buf, size);
 3676              		.loc 1 1152 0
 3677 0000 0A46     		mov	r2, r1
 3678 0002 0146     		mov	r1, r0
 3679              	.LVL243:
 3680 0004 0020     		movs	r0, #0
 3681              	.LVL244:
 3682 0006 FFF7FEBF 		b	udi_cdc_multi_write_buf
 3683              	.LVL245:
 3684              		.cfi_endproc
 3685              	.LFE193:
 3686              		.size	udi_cdc_write_buf, .-udi_cdc_write_buf
 3687              		.global	udi_api_cdc_data
 3688              		.global	udi_api_cdc_comm
 3689 000a 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 3690              		.align	2
 3691              		.type	cpu_irq_critical_section_counter, %object
 3692              		.size	cpu_irq_critical_section_counter, 4
 3693              	cpu_irq_critical_section_counter:
 3694 0000 00000000 		.space	4
 3695              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 3696              		.type	cpu_irq_prev_interrupt_state, %object
 3697              		.size	cpu_irq_prev_interrupt_state, 1
 3698              	cpu_irq_prev_interrupt_state:
 3699 0000 00       		.space	1
 3700              		.section	.bss.sof_zlp_counter.9788,"aw",%nobits
 3701              		.align	1
 3702              		.set	.LANCHOR11,. + 0
 3703              		.type	sof_zlp_counter.9788, %object
 3704              		.size	sof_zlp_counter.9788, 2
 3705              	sof_zlp_counter.9788:
 3706 0000 0000     		.space	2
 3707              		.section	.bss.udi_cdc_data_running,"aw",%nobits
 3708              		.set	.LANCHOR2,. + 0
 3709              		.type	udi_cdc_data_running, %object
 3710              		.size	udi_cdc_data_running, 1
 3711              	udi_cdc_data_running:
 3712 0000 00       		.space	1
 3713              		.section	.bss.udi_cdc_line_coding,"aw",%nobits
 3714              		.align	2
 3715              		.set	.LANCHOR3,. + 0
 3716              		.type	udi_cdc_line_coding, %object
 3717              		.size	udi_cdc_line_coding, 7
 3718              	udi_cdc_line_coding:
 3719 0000 00000000 		.space	7
 3719      000000
 3720              		.section	.bss.udi_cdc_nb_comm_enabled,"aw",%nobits
 3721              		.set	.LANCHOR0,. + 0
 3722              		.type	udi_cdc_nb_comm_enabled, %object
 3723              		.size	udi_cdc_nb_comm_enabled, 1
 3724              	udi_cdc_nb_comm_enabled:
 3725 0000 00       		.space	1
 3726              		.section	.bss.udi_cdc_nb_data_enabled,"aw",%nobits
 3727              		.set	.LANCHOR1,. + 0
 3728              		.type	udi_cdc_nb_data_enabled, %object
 3729              		.size	udi_cdc_nb_data_enabled, 1
ARM GAS  /tmp/ccCxIftT.s 			page 112


 3730              	udi_cdc_nb_data_enabled:
 3731 0000 00       		.space	1
 3732              		.section	.bss.udi_cdc_rx_buf,"aw",%nobits
 3733              		.align	2
 3734              		.set	.LANCHOR18,. + 0
 3735              		.type	udi_cdc_rx_buf, %object
 3736              		.size	udi_cdc_rx_buf, 640
 3737              	udi_cdc_rx_buf:
 3738 0000 00000000 		.space	640
 3738      00000000 
 3738      00000000 
 3738      00000000 
 3738      00000000 
 3739              		.section	.bss.udi_cdc_rx_buf_nb,"aw",%nobits
 3740              		.align	2
 3741              		.set	.LANCHOR16,. + 0
 3742              		.type	udi_cdc_rx_buf_nb, %object
 3743              		.size	udi_cdc_rx_buf_nb, 4
 3744              	udi_cdc_rx_buf_nb:
 3745 0000 00000000 		.space	4
 3746              		.section	.bss.udi_cdc_rx_buf_sel,"aw",%nobits
 3747              		.align	2
 3748              		.set	.LANCHOR15,. + 0
 3749              		.type	udi_cdc_rx_buf_sel, %object
 3750              		.size	udi_cdc_rx_buf_sel, 1
 3751              	udi_cdc_rx_buf_sel:
 3752 0000 00       		.space	1
 3753              		.section	.bss.udi_cdc_rx_pos,"aw",%nobits
 3754              		.align	2
 3755              		.set	.LANCHOR14,. + 0
 3756              		.type	udi_cdc_rx_pos, %object
 3757              		.size	udi_cdc_rx_pos, 2
 3758              	udi_cdc_rx_pos:
 3759 0000 0000     		.space	2
 3760              		.section	.bss.udi_cdc_rx_trans_ongoing,"aw",%nobits
 3761              		.align	2
 3762              		.set	.LANCHOR17,. + 0
 3763              		.type	udi_cdc_rx_trans_ongoing, %object
 3764              		.size	udi_cdc_rx_trans_ongoing, 1
 3765              	udi_cdc_rx_trans_ongoing:
 3766 0000 00       		.space	1
 3767              		.section	.bss.udi_cdc_serial_state_msg_ongoing,"aw",%nobits
 3768              		.align	2
 3769              		.set	.LANCHOR6,. + 0
 3770              		.type	udi_cdc_serial_state_msg_ongoing, %object
 3771              		.size	udi_cdc_serial_state_msg_ongoing, 1
 3772              	udi_cdc_serial_state_msg_ongoing:
 3773 0000 00       		.space	1
 3774              		.section	.bss.udi_cdc_state,"aw",%nobits
 3775              		.align	2
 3776              		.set	.LANCHOR4,. + 0
 3777              		.type	udi_cdc_state, %object
 3778              		.size	udi_cdc_state, 2
 3779              	udi_cdc_state:
 3780 0000 0000     		.space	2
 3781              		.section	.bss.udi_cdc_tx_both_buf_to_send,"aw",%nobits
 3782              		.align	2
ARM GAS  /tmp/ccCxIftT.s 			page 113


 3783              		.set	.LANCHOR12,. + 0
 3784              		.type	udi_cdc_tx_both_buf_to_send, %object
 3785              		.size	udi_cdc_tx_both_buf_to_send, 1
 3786              	udi_cdc_tx_both_buf_to_send:
 3787 0000 00       		.space	1
 3788              		.section	.bss.udi_cdc_tx_buf,"aw",%nobits
 3789              		.align	2
 3790              		.set	.LANCHOR13,. + 0
 3791              		.type	udi_cdc_tx_buf, %object
 3792              		.size	udi_cdc_tx_buf, 640
 3793              	udi_cdc_tx_buf:
 3794 0000 00000000 		.space	640
 3794      00000000 
 3794      00000000 
 3794      00000000 
 3794      00000000 
 3795              		.section	.bss.udi_cdc_tx_buf_nb,"aw",%nobits
 3796              		.align	2
 3797              		.set	.LANCHOR10,. + 0
 3798              		.type	udi_cdc_tx_buf_nb, %object
 3799              		.size	udi_cdc_tx_buf_nb, 4
 3800              	udi_cdc_tx_buf_nb:
 3801 0000 00000000 		.space	4
 3802              		.section	.bss.udi_cdc_tx_buf_sel,"aw",%nobits
 3803              		.align	2
 3804              		.set	.LANCHOR9,. + 0
 3805              		.type	udi_cdc_tx_buf_sel, %object
 3806              		.size	udi_cdc_tx_buf_sel, 1
 3807              	udi_cdc_tx_buf_sel:
 3808 0000 00       		.space	1
 3809              		.section	.bss.udi_cdc_tx_sof_num,"aw",%nobits
 3810              		.align	2
 3811              		.set	.LANCHOR8,. + 0
 3812              		.type	udi_cdc_tx_sof_num, %object
 3813              		.size	udi_cdc_tx_sof_num, 2
 3814              	udi_cdc_tx_sof_num:
 3815 0000 0000     		.space	2
 3816              		.section	.bss.udi_cdc_tx_trans_ongoing,"aw",%nobits
 3817              		.align	2
 3818              		.set	.LANCHOR7,. + 0
 3819              		.type	udi_cdc_tx_trans_ongoing, %object
 3820              		.size	udi_cdc_tx_trans_ongoing, 1
 3821              	udi_cdc_tx_trans_ongoing:
 3822 0000 00       		.space	1
 3823              		.section	.bss.uid_cdc_state_msg,"aw",%nobits
 3824              		.align	2
 3825              		.set	.LANCHOR5,. + 0
 3826              		.type	uid_cdc_state_msg, %object
 3827              		.size	uid_cdc_state_msg, 10
 3828              	uid_cdc_state_msg:
 3829 0000 00000000 		.space	10
 3829      00000000 
 3829      0000
 3830              		.section	.data.udi_api_cdc_comm,"aw",%progbits
 3831              		.align	2
 3832              		.type	udi_api_cdc_comm, %object
 3833              		.size	udi_api_cdc_comm, 20
ARM GAS  /tmp/ccCxIftT.s 			page 114


 3834              	udi_api_cdc_comm:
 3835 0000 00000000 		.word	udi_cdc_comm_enable
 3836 0004 00000000 		.word	udi_cdc_comm_disable
 3837 0008 00000000 		.word	udi_cdc_comm_setup
 3838 000c 00000000 		.word	udi_cdc_getsetting
 3839 0010 00000000 		.space	4
 3840              		.section	.data.udi_api_cdc_data,"aw",%progbits
 3841              		.align	2
 3842              		.type	udi_api_cdc_data, %object
 3843              		.size	udi_api_cdc_data, 20
 3844              	udi_api_cdc_data:
 3845 0000 00000000 		.word	udi_cdc_data_enable
 3846 0004 00000000 		.word	udi_cdc_data_disable
 3847 0008 00000000 		.word	udi_cdc_data_setup
 3848 000c 00000000 		.word	udi_cdc_getsetting
 3849 0010 00000000 		.word	udi_cdc_data_sof_notify
 3850              		.text
 3851              	.Letext0:
 3852              		.file 5 "/usr/include/newlib/machine/_default_types.h"
 3853              		.file 6 "/usr/include/newlib/sys/_stdint.h"
 3854              		.file 7 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 3855              		.file 8 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 3856              		.file 9 "/usr/include/newlib/sys/lock.h"
 3857              		.file 10 "/usr/include/newlib/sys/_types.h"
 3858              		.file 11 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 3859              		.file 12 "/usr/include/newlib/sys/reent.h"
 3860              		.file 13 "/usr/include/newlib/stdlib.h"
 3861              		.file 14 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/compiler.h"
 3862              		.file 15 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb/class/cdc/usb_protocol_c
 3863              		.file 16 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb/usb_protocol.h"
 3864              		.file 17 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb/udc/udi.h"
 3865              		.file 18 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb/udc/udc_desc.h"
 3866              		.file 19 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb/udc/udd.h"
 3867              		.file 20 "../asf/common/services/usb/class/cdc/device/udi_cdc.h"
 3868              		.file 21 "/home/torbjorn/eclipse-workspace/CoreNG/asf/conf_usb.h"
 3869              		.section	.debug_info,"",%progbits
 3870              	.Ldebug_info0:
 3871 0000 742B0000 		.4byte	0x2b74
 3872 0004 0400     		.2byte	0x4
 3873 0006 00000000 		.4byte	.Ldebug_abbrev0
 3874 000a 04       		.byte	0x4
 3875 000b 01       		.uleb128 0x1
 3876 000c CC0F0000 		.4byte	.LASF325
 3877 0010 0C       		.byte	0xc
 3878 0011 4A0F0000 		.4byte	.LASF326
 3879 0015 E5060000 		.4byte	.LASF327
 3880 0019 B8020000 		.4byte	.Ldebug_ranges0+0x2b8
 3881 001d 00000000 		.4byte	0
 3882 0021 00000000 		.4byte	.Ldebug_line0
 3883 0025 02       		.uleb128 0x2
 3884 0026 04       		.byte	0x4
 3885 0027 05       		.byte	0x5
 3886 0028 696E7400 		.ascii	"int\000"
 3887 002c 03       		.uleb128 0x3
 3888 002d 04       		.byte	0x4
 3889 002e 07       		.byte	0x7
 3890 002f 70010000 		.4byte	.LASF0
ARM GAS  /tmp/ccCxIftT.s 			page 115


 3891 0033 03       		.uleb128 0x3
 3892 0034 01       		.byte	0x1
 3893 0035 06       		.byte	0x6
 3894 0036 25110000 		.4byte	.LASF1
 3895 003a 04       		.uleb128 0x4
 3896 003b 380D0000 		.4byte	.LASF4
 3897 003f 05       		.byte	0x5
 3898 0040 1D       		.byte	0x1d
 3899 0041 45000000 		.4byte	0x45
 3900 0045 03       		.uleb128 0x3
 3901 0046 01       		.byte	0x1
 3902 0047 08       		.byte	0x8
 3903 0048 FD0E0000 		.4byte	.LASF2
 3904 004c 03       		.uleb128 0x3
 3905 004d 02       		.byte	0x2
 3906 004e 05       		.byte	0x5
 3907 004f 15020000 		.4byte	.LASF3
 3908 0053 04       		.uleb128 0x4
 3909 0054 12060000 		.4byte	.LASF5
 3910 0058 05       		.byte	0x5
 3911 0059 2B       		.byte	0x2b
 3912 005a 5E000000 		.4byte	0x5e
 3913 005e 03       		.uleb128 0x3
 3914 005f 02       		.byte	0x2
 3915 0060 07       		.byte	0x7
 3916 0061 38110000 		.4byte	.LASF6
 3917 0065 04       		.uleb128 0x4
 3918 0066 D5010000 		.4byte	.LASF7
 3919 006a 05       		.byte	0x5
 3920 006b 3F       		.byte	0x3f
 3921 006c 70000000 		.4byte	0x70
 3922 0070 03       		.uleb128 0x3
 3923 0071 04       		.byte	0x4
 3924 0072 05       		.byte	0x5
 3925 0073 060C0000 		.4byte	.LASF8
 3926 0077 04       		.uleb128 0x4
 3927 0078 110F0000 		.4byte	.LASF9
 3928 007c 05       		.byte	0x5
 3929 007d 41       		.byte	0x41
 3930 007e 82000000 		.4byte	0x82
 3931 0082 03       		.uleb128 0x3
 3932 0083 04       		.byte	0x4
 3933 0084 07       		.byte	0x7
 3934 0085 90090000 		.4byte	.LASF10
 3935 0089 03       		.uleb128 0x3
 3936 008a 08       		.byte	0x8
 3937 008b 05       		.byte	0x5
 3938 008c 36080000 		.4byte	.LASF11
 3939 0090 03       		.uleb128 0x3
 3940 0091 08       		.byte	0x8
 3941 0092 07       		.byte	0x7
 3942 0093 DB030000 		.4byte	.LASF12
 3943 0097 04       		.uleb128 0x4
 3944 0098 55070000 		.4byte	.LASF13
 3945 009c 06       		.byte	0x6
 3946 009d 18       		.byte	0x18
 3947 009e 3A000000 		.4byte	0x3a
ARM GAS  /tmp/ccCxIftT.s 			page 116


 3948 00a2 05       		.uleb128 0x5
 3949 00a3 97000000 		.4byte	0x97
 3950 00a7 04       		.uleb128 0x4
 3951 00a8 F80A0000 		.4byte	.LASF14
 3952 00ac 06       		.byte	0x6
 3953 00ad 24       		.byte	0x24
 3954 00ae 53000000 		.4byte	0x53
 3955 00b2 05       		.uleb128 0x5
 3956 00b3 A7000000 		.4byte	0xa7
 3957 00b7 04       		.uleb128 0x4
 3958 00b8 400E0000 		.4byte	.LASF15
 3959 00bc 06       		.byte	0x6
 3960 00bd 2C       		.byte	0x2c
 3961 00be 65000000 		.4byte	0x65
 3962 00c2 05       		.uleb128 0x5
 3963 00c3 B7000000 		.4byte	0xb7
 3964 00c7 04       		.uleb128 0x4
 3965 00c8 29030000 		.4byte	.LASF16
 3966 00cc 06       		.byte	0x6
 3967 00cd 30       		.byte	0x30
 3968 00ce 77000000 		.4byte	0x77
 3969 00d2 05       		.uleb128 0x5
 3970 00d3 C7000000 		.4byte	0xc7
 3971 00d7 06       		.uleb128 0x6
 3972 00d8 04       		.byte	0x4
 3973 00d9 03       		.uleb128 0x3
 3974 00da 04       		.byte	0x4
 3975 00db 07       		.byte	0x7
 3976 00dc E00D0000 		.4byte	.LASF17
 3977 00e0 07       		.uleb128 0x7
 3978 00e1 3C0C0000 		.4byte	.LASF18
 3979 00e5 07       		.byte	0x7
 3980 00e6 6508     		.2byte	0x865
 3981 00e8 C2000000 		.4byte	0xc2
 3982 00ec 08       		.uleb128 0x8
 3983 00ed 69000000 		.4byte	.LASF19
 3984 00f1 08       		.byte	0x8
 3985 00f2 3A       		.byte	0x3a
 3986 00f3 C7000000 		.4byte	0xc7
 3987 00f7 04       		.uleb128 0x4
 3988 00f8 56090000 		.4byte	.LASF20
 3989 00fc 09       		.byte	0x9
 3990 00fd 07       		.byte	0x7
 3991 00fe 25000000 		.4byte	0x25
 3992 0102 04       		.uleb128 0x4
 3993 0103 D3110000 		.4byte	.LASF21
 3994 0107 0A       		.byte	0xa
 3995 0108 2C       		.byte	0x2c
 3996 0109 70000000 		.4byte	0x70
 3997 010d 04       		.uleb128 0x4
 3998 010e 91020000 		.4byte	.LASF22
 3999 0112 0A       		.byte	0xa
 4000 0113 72       		.byte	0x72
 4001 0114 70000000 		.4byte	0x70
 4002 0118 09       		.uleb128 0x9
 4003 0119 2E0E0000 		.4byte	.LASF23
 4004 011d 0B       		.byte	0xb
ARM GAS  /tmp/ccCxIftT.s 			page 117


 4005 011e 6501     		.2byte	0x165
 4006 0120 2C000000 		.4byte	0x2c
 4007 0124 0A       		.uleb128 0xa
 4008 0125 04       		.byte	0x4
 4009 0126 0A       		.byte	0xa
 4010 0127 A6       		.byte	0xa6
 4011 0128 43010000 		.4byte	0x143
 4012 012c 0B       		.uleb128 0xb
 4013 012d 36070000 		.4byte	.LASF24
 4014 0131 0A       		.byte	0xa
 4015 0132 A8       		.byte	0xa8
 4016 0133 18010000 		.4byte	0x118
 4017 0137 0B       		.uleb128 0xb
 4018 0138 210B0000 		.4byte	.LASF25
 4019 013c 0A       		.byte	0xa
 4020 013d A9       		.byte	0xa9
 4021 013e 43010000 		.4byte	0x143
 4022 0142 00       		.byte	0
 4023 0143 0C       		.uleb128 0xc
 4024 0144 45000000 		.4byte	0x45
 4025 0148 53010000 		.4byte	0x153
 4026 014c 0D       		.uleb128 0xd
 4027 014d D9000000 		.4byte	0xd9
 4028 0151 03       		.byte	0x3
 4029 0152 00       		.byte	0
 4030 0153 0E       		.uleb128 0xe
 4031 0154 08       		.byte	0x8
 4032 0155 0A       		.byte	0xa
 4033 0156 A3       		.byte	0xa3
 4034 0157 74010000 		.4byte	0x174
 4035 015b 0F       		.uleb128 0xf
 4036 015c 5F030000 		.4byte	.LASF26
 4037 0160 0A       		.byte	0xa
 4038 0161 A5       		.byte	0xa5
 4039 0162 25000000 		.4byte	0x25
 4040 0166 00       		.byte	0
 4041 0167 0F       		.uleb128 0xf
 4042 0168 FB050000 		.4byte	.LASF27
 4043 016c 0A       		.byte	0xa
 4044 016d AA       		.byte	0xaa
 4045 016e 24010000 		.4byte	0x124
 4046 0172 04       		.byte	0x4
 4047 0173 00       		.byte	0
 4048 0174 04       		.uleb128 0x4
 4049 0175 0F090000 		.4byte	.LASF28
 4050 0179 0A       		.byte	0xa
 4051 017a AB       		.byte	0xab
 4052 017b 53010000 		.4byte	0x153
 4053 017f 04       		.uleb128 0x4
 4054 0180 30000000 		.4byte	.LASF29
 4055 0184 0A       		.byte	0xa
 4056 0185 AF       		.byte	0xaf
 4057 0186 F7000000 		.4byte	0xf7
 4058 018a 04       		.uleb128 0x4
 4059 018b 3F020000 		.4byte	.LASF30
 4060 018f 0C       		.byte	0xc
 4061 0190 16       		.byte	0x16
ARM GAS  /tmp/ccCxIftT.s 			page 118


 4062 0191 82000000 		.4byte	0x82
 4063 0195 10       		.uleb128 0x10
 4064 0196 DF020000 		.4byte	.LASF35
 4065 019a 18       		.byte	0x18
 4066 019b 0C       		.byte	0xc
 4067 019c 2D       		.byte	0x2d
 4068 019d E8010000 		.4byte	0x1e8
 4069 01a1 0F       		.uleb128 0xf
 4070 01a2 5C050000 		.4byte	.LASF31
 4071 01a6 0C       		.byte	0xc
 4072 01a7 2F       		.byte	0x2f
 4073 01a8 E8010000 		.4byte	0x1e8
 4074 01ac 00       		.byte	0
 4075 01ad 11       		.uleb128 0x11
 4076 01ae 5F6B00   		.ascii	"_k\000"
 4077 01b1 0C       		.byte	0xc
 4078 01b2 30       		.byte	0x30
 4079 01b3 25000000 		.4byte	0x25
 4080 01b7 04       		.byte	0x4
 4081 01b8 0F       		.uleb128 0xf
 4082 01b9 580D0000 		.4byte	.LASF32
 4083 01bd 0C       		.byte	0xc
 4084 01be 30       		.byte	0x30
 4085 01bf 25000000 		.4byte	0x25
 4086 01c3 08       		.byte	0x8
 4087 01c4 0F       		.uleb128 0xf
 4088 01c5 7F0C0000 		.4byte	.LASF33
 4089 01c9 0C       		.byte	0xc
 4090 01ca 30       		.byte	0x30
 4091 01cb 25000000 		.4byte	0x25
 4092 01cf 0C       		.byte	0xc
 4093 01d0 0F       		.uleb128 0xf
 4094 01d1 0F040000 		.4byte	.LASF34
 4095 01d5 0C       		.byte	0xc
 4096 01d6 30       		.byte	0x30
 4097 01d7 25000000 		.4byte	0x25
 4098 01db 10       		.byte	0x10
 4099 01dc 11       		.uleb128 0x11
 4100 01dd 5F7800   		.ascii	"_x\000"
 4101 01e0 0C       		.byte	0xc
 4102 01e1 31       		.byte	0x31
 4103 01e2 EE010000 		.4byte	0x1ee
 4104 01e6 14       		.byte	0x14
 4105 01e7 00       		.byte	0
 4106 01e8 12       		.uleb128 0x12
 4107 01e9 04       		.byte	0x4
 4108 01ea 95010000 		.4byte	0x195
 4109 01ee 0C       		.uleb128 0xc
 4110 01ef 8A010000 		.4byte	0x18a
 4111 01f3 FE010000 		.4byte	0x1fe
 4112 01f7 0D       		.uleb128 0xd
 4113 01f8 D9000000 		.4byte	0xd9
 4114 01fc 00       		.byte	0
 4115 01fd 00       		.byte	0
 4116 01fe 10       		.uleb128 0x10
 4117 01ff AF0D0000 		.4byte	.LASF36
 4118 0203 24       		.byte	0x24
ARM GAS  /tmp/ccCxIftT.s 			page 119


 4119 0204 0C       		.byte	0xc
 4120 0205 35       		.byte	0x35
 4121 0206 77020000 		.4byte	0x277
 4122 020a 0F       		.uleb128 0xf
 4123 020b 16050000 		.4byte	.LASF37
 4124 020f 0C       		.byte	0xc
 4125 0210 37       		.byte	0x37
 4126 0211 25000000 		.4byte	0x25
 4127 0215 00       		.byte	0
 4128 0216 0F       		.uleb128 0xf
 4129 0217 6D030000 		.4byte	.LASF38
 4130 021b 0C       		.byte	0xc
 4131 021c 38       		.byte	0x38
 4132 021d 25000000 		.4byte	0x25
 4133 0221 04       		.byte	0x4
 4134 0222 0F       		.uleb128 0xf
 4135 0223 32030000 		.4byte	.LASF39
 4136 0227 0C       		.byte	0xc
 4137 0228 39       		.byte	0x39
 4138 0229 25000000 		.4byte	0x25
 4139 022d 08       		.byte	0x8
 4140 022e 0F       		.uleb128 0xf
 4141 022f 90060000 		.4byte	.LASF40
 4142 0233 0C       		.byte	0xc
 4143 0234 3A       		.byte	0x3a
 4144 0235 25000000 		.4byte	0x25
 4145 0239 0C       		.byte	0xc
 4146 023a 0F       		.uleb128 0xf
 4147 023b 950A0000 		.4byte	.LASF41
 4148 023f 0C       		.byte	0xc
 4149 0240 3B       		.byte	0x3b
 4150 0241 25000000 		.4byte	0x25
 4151 0245 10       		.byte	0x10
 4152 0246 0F       		.uleb128 0xf
 4153 0247 D90C0000 		.4byte	.LASF42
 4154 024b 0C       		.byte	0xc
 4155 024c 3C       		.byte	0x3c
 4156 024d 25000000 		.4byte	0x25
 4157 0251 14       		.byte	0x14
 4158 0252 0F       		.uleb128 0xf
 4159 0253 F1020000 		.4byte	.LASF43
 4160 0257 0C       		.byte	0xc
 4161 0258 3D       		.byte	0x3d
 4162 0259 25000000 		.4byte	0x25
 4163 025d 18       		.byte	0x18
 4164 025e 0F       		.uleb128 0xf
 4165 025f 29050000 		.4byte	.LASF44
 4166 0263 0C       		.byte	0xc
 4167 0264 3E       		.byte	0x3e
 4168 0265 25000000 		.4byte	0x25
 4169 0269 1C       		.byte	0x1c
 4170 026a 0F       		.uleb128 0xf
 4171 026b 68090000 		.4byte	.LASF45
 4172 026f 0C       		.byte	0xc
 4173 0270 3F       		.byte	0x3f
 4174 0271 25000000 		.4byte	0x25
 4175 0275 20       		.byte	0x20
ARM GAS  /tmp/ccCxIftT.s 			page 120


 4176 0276 00       		.byte	0
 4177 0277 13       		.uleb128 0x13
 4178 0278 B5000000 		.4byte	.LASF46
 4179 027c 0801     		.2byte	0x108
 4180 027e 0C       		.byte	0xc
 4181 027f 48       		.byte	0x48
 4182 0280 B7020000 		.4byte	0x2b7
 4183 0284 0F       		.uleb128 0xf
 4184 0285 1D110000 		.4byte	.LASF47
 4185 0289 0C       		.byte	0xc
 4186 028a 49       		.byte	0x49
 4187 028b B7020000 		.4byte	0x2b7
 4188 028f 00       		.byte	0
 4189 0290 0F       		.uleb128 0xf
 4190 0291 700E0000 		.4byte	.LASF48
 4191 0295 0C       		.byte	0xc
 4192 0296 4A       		.byte	0x4a
 4193 0297 B7020000 		.4byte	0x2b7
 4194 029b 80       		.byte	0x80
 4195 029c 14       		.uleb128 0x14
 4196 029d 75110000 		.4byte	.LASF49
 4197 02a1 0C       		.byte	0xc
 4198 02a2 4C       		.byte	0x4c
 4199 02a3 8A010000 		.4byte	0x18a
 4200 02a7 0001     		.2byte	0x100
 4201 02a9 14       		.uleb128 0x14
 4202 02aa 21120000 		.4byte	.LASF50
 4203 02ae 0C       		.byte	0xc
 4204 02af 4F       		.byte	0x4f
 4205 02b0 8A010000 		.4byte	0x18a
 4206 02b4 0401     		.2byte	0x104
 4207 02b6 00       		.byte	0
 4208 02b7 0C       		.uleb128 0xc
 4209 02b8 D7000000 		.4byte	0xd7
 4210 02bc C7020000 		.4byte	0x2c7
 4211 02c0 0D       		.uleb128 0xd
 4212 02c1 D9000000 		.4byte	0xd9
 4213 02c5 1F       		.byte	0x1f
 4214 02c6 00       		.byte	0
 4215 02c7 13       		.uleb128 0x13
 4216 02c8 3B0B0000 		.4byte	.LASF51
 4217 02cc 9001     		.2byte	0x190
 4218 02ce 0C       		.byte	0xc
 4219 02cf 5B       		.byte	0x5b
 4220 02d0 05030000 		.4byte	0x305
 4221 02d4 0F       		.uleb128 0xf
 4222 02d5 5C050000 		.4byte	.LASF31
 4223 02d9 0C       		.byte	0xc
 4224 02da 5C       		.byte	0x5c
 4225 02db 05030000 		.4byte	0x305
 4226 02df 00       		.byte	0
 4227 02e0 0F       		.uleb128 0xf
 4228 02e1 B9090000 		.4byte	.LASF52
 4229 02e5 0C       		.byte	0xc
 4230 02e6 5D       		.byte	0x5d
 4231 02e7 25000000 		.4byte	0x25
 4232 02eb 04       		.byte	0x4
ARM GAS  /tmp/ccCxIftT.s 			page 121


 4233 02ec 0F       		.uleb128 0xf
 4234 02ed 24040000 		.4byte	.LASF53
 4235 02f1 0C       		.byte	0xc
 4236 02f2 5F       		.byte	0x5f
 4237 02f3 0B030000 		.4byte	0x30b
 4238 02f7 08       		.byte	0x8
 4239 02f8 0F       		.uleb128 0xf
 4240 02f9 B5000000 		.4byte	.LASF46
 4241 02fd 0C       		.byte	0xc
 4242 02fe 60       		.byte	0x60
 4243 02ff 77020000 		.4byte	0x277
 4244 0303 88       		.byte	0x88
 4245 0304 00       		.byte	0
 4246 0305 12       		.uleb128 0x12
 4247 0306 04       		.byte	0x4
 4248 0307 C7020000 		.4byte	0x2c7
 4249 030b 0C       		.uleb128 0xc
 4250 030c 1B030000 		.4byte	0x31b
 4251 0310 1B030000 		.4byte	0x31b
 4252 0314 0D       		.uleb128 0xd
 4253 0315 D9000000 		.4byte	0xd9
 4254 0319 1F       		.byte	0x1f
 4255 031a 00       		.byte	0
 4256 031b 12       		.uleb128 0x12
 4257 031c 04       		.byte	0x4
 4258 031d 21030000 		.4byte	0x321
 4259 0321 15       		.uleb128 0x15
 4260 0322 10       		.uleb128 0x10
 4261 0323 7D100000 		.4byte	.LASF54
 4262 0327 08       		.byte	0x8
 4263 0328 0C       		.byte	0xc
 4264 0329 73       		.byte	0x73
 4265 032a 47030000 		.4byte	0x347
 4266 032e 0F       		.uleb128 0xf
 4267 032f 5C080000 		.4byte	.LASF55
 4268 0333 0C       		.byte	0xc
 4269 0334 74       		.byte	0x74
 4270 0335 47030000 		.4byte	0x347
 4271 0339 00       		.byte	0
 4272 033a 0F       		.uleb128 0xf
 4273 033b AB110000 		.4byte	.LASF56
 4274 033f 0C       		.byte	0xc
 4275 0340 75       		.byte	0x75
 4276 0341 25000000 		.4byte	0x25
 4277 0345 04       		.byte	0x4
 4278 0346 00       		.byte	0
 4279 0347 12       		.uleb128 0x12
 4280 0348 04       		.byte	0x4
 4281 0349 45000000 		.4byte	0x45
 4282 034d 10       		.uleb128 0x10
 4283 034e 07040000 		.4byte	.LASF57
 4284 0352 68       		.byte	0x68
 4285 0353 0C       		.byte	0xc
 4286 0354 B3       		.byte	0xb3
 4287 0355 77040000 		.4byte	0x477
 4288 0359 11       		.uleb128 0x11
 4289 035a 5F7000   		.ascii	"_p\000"
ARM GAS  /tmp/ccCxIftT.s 			page 122


 4290 035d 0C       		.byte	0xc
 4291 035e B4       		.byte	0xb4
 4292 035f 47030000 		.4byte	0x347
 4293 0363 00       		.byte	0
 4294 0364 11       		.uleb128 0x11
 4295 0365 5F7200   		.ascii	"_r\000"
 4296 0368 0C       		.byte	0xc
 4297 0369 B5       		.byte	0xb5
 4298 036a 25000000 		.4byte	0x25
 4299 036e 04       		.byte	0x4
 4300 036f 11       		.uleb128 0x11
 4301 0370 5F7700   		.ascii	"_w\000"
 4302 0373 0C       		.byte	0xc
 4303 0374 B6       		.byte	0xb6
 4304 0375 25000000 		.4byte	0x25
 4305 0379 08       		.byte	0x8
 4306 037a 0F       		.uleb128 0xf
 4307 037b CE010000 		.4byte	.LASF58
 4308 037f 0C       		.byte	0xc
 4309 0380 B7       		.byte	0xb7
 4310 0381 4C000000 		.4byte	0x4c
 4311 0385 0C       		.byte	0xc
 4312 0386 0F       		.uleb128 0xf
 4313 0387 A7080000 		.4byte	.LASF59
 4314 038b 0C       		.byte	0xc
 4315 038c B8       		.byte	0xb8
 4316 038d 4C000000 		.4byte	0x4c
 4317 0391 0E       		.byte	0xe
 4318 0392 11       		.uleb128 0x11
 4319 0393 5F626600 		.ascii	"_bf\000"
 4320 0397 0C       		.byte	0xc
 4321 0398 B9       		.byte	0xb9
 4322 0399 22030000 		.4byte	0x322
 4323 039d 10       		.byte	0x10
 4324 039e 0F       		.uleb128 0xf
 4325 039f C5010000 		.4byte	.LASF60
 4326 03a3 0C       		.byte	0xc
 4327 03a4 BA       		.byte	0xba
 4328 03a5 25000000 		.4byte	0x25
 4329 03a9 18       		.byte	0x18
 4330 03aa 0F       		.uleb128 0xf
 4331 03ab C3020000 		.4byte	.LASF61
 4332 03af 0C       		.byte	0xc
 4333 03b0 C1       		.byte	0xc1
 4334 03b1 D7000000 		.4byte	0xd7
 4335 03b5 1C       		.byte	0x1c
 4336 03b6 0F       		.uleb128 0xf
 4337 03b7 CC040000 		.4byte	.LASF62
 4338 03bb 0C       		.byte	0xc
 4339 03bc C3       		.byte	0xc3
 4340 03bd E4050000 		.4byte	0x5e4
 4341 03c1 20       		.byte	0x20
 4342 03c2 0F       		.uleb128 0xf
 4343 03c3 110B0000 		.4byte	.LASF63
 4344 03c7 0C       		.byte	0xc
 4345 03c8 C5       		.byte	0xc5
 4346 03c9 0E060000 		.4byte	0x60e
ARM GAS  /tmp/ccCxIftT.s 			page 123


 4347 03cd 24       		.byte	0x24
 4348 03ce 0F       		.uleb128 0xf
 4349 03cf 69120000 		.4byte	.LASF64
 4350 03d3 0C       		.byte	0xc
 4351 03d4 C8       		.byte	0xc8
 4352 03d5 32060000 		.4byte	0x632
 4353 03d9 28       		.byte	0x28
 4354 03da 0F       		.uleb128 0xf
 4355 03db 81070000 		.4byte	.LASF65
 4356 03df 0C       		.byte	0xc
 4357 03e0 C9       		.byte	0xc9
 4358 03e1 4C060000 		.4byte	0x64c
 4359 03e5 2C       		.byte	0x2c
 4360 03e6 11       		.uleb128 0x11
 4361 03e7 5F756200 		.ascii	"_ub\000"
 4362 03eb 0C       		.byte	0xc
 4363 03ec CC       		.byte	0xcc
 4364 03ed 22030000 		.4byte	0x322
 4365 03f1 30       		.byte	0x30
 4366 03f2 11       		.uleb128 0x11
 4367 03f3 5F757000 		.ascii	"_up\000"
 4368 03f7 0C       		.byte	0xc
 4369 03f8 CD       		.byte	0xcd
 4370 03f9 47030000 		.4byte	0x347
 4371 03fd 38       		.byte	0x38
 4372 03fe 11       		.uleb128 0x11
 4373 03ff 5F757200 		.ascii	"_ur\000"
 4374 0403 0C       		.byte	0xc
 4375 0404 CE       		.byte	0xce
 4376 0405 25000000 		.4byte	0x25
 4377 0409 3C       		.byte	0x3c
 4378 040a 0F       		.uleb128 0xf
 4379 040b 64040000 		.4byte	.LASF66
 4380 040f 0C       		.byte	0xc
 4381 0410 D1       		.byte	0xd1
 4382 0411 52060000 		.4byte	0x652
 4383 0415 40       		.byte	0x40
 4384 0416 0F       		.uleb128 0xf
 4385 0417 DA110000 		.4byte	.LASF67
 4386 041b 0C       		.byte	0xc
 4387 041c D2       		.byte	0xd2
 4388 041d 62060000 		.4byte	0x662
 4389 0421 43       		.byte	0x43
 4390 0422 11       		.uleb128 0x11
 4391 0423 5F6C6200 		.ascii	"_lb\000"
 4392 0427 0C       		.byte	0xc
 4393 0428 D5       		.byte	0xd5
 4394 0429 22030000 		.4byte	0x322
 4395 042d 44       		.byte	0x44
 4396 042e 0F       		.uleb128 0xf
 4397 042f 8E0D0000 		.4byte	.LASF68
 4398 0433 0C       		.byte	0xc
 4399 0434 D8       		.byte	0xd8
 4400 0435 25000000 		.4byte	0x25
 4401 0439 4C       		.byte	0x4c
 4402 043a 0F       		.uleb128 0xf
 4403 043b 5C040000 		.4byte	.LASF69
ARM GAS  /tmp/ccCxIftT.s 			page 124


 4404 043f 0C       		.byte	0xc
 4405 0440 D9       		.byte	0xd9
 4406 0441 02010000 		.4byte	0x102
 4407 0445 50       		.byte	0x50
 4408 0446 0F       		.uleb128 0xf
 4409 0447 A00C0000 		.4byte	.LASF70
 4410 044b 0C       		.byte	0xc
 4411 044c DC       		.byte	0xdc
 4412 044d 95040000 		.4byte	0x495
 4413 0451 54       		.byte	0x54
 4414 0452 0F       		.uleb128 0xf
 4415 0453 B40D0000 		.4byte	.LASF71
 4416 0457 0C       		.byte	0xc
 4417 0458 E0       		.byte	0xe0
 4418 0459 7F010000 		.4byte	0x17f
 4419 045d 58       		.byte	0x58
 4420 045e 0F       		.uleb128 0xf
 4421 045f 1F020000 		.4byte	.LASF72
 4422 0463 0C       		.byte	0xc
 4423 0464 E2       		.byte	0xe2
 4424 0465 74010000 		.4byte	0x174
 4425 0469 5C       		.byte	0x5c
 4426 046a 0F       		.uleb128 0xf
 4427 046b 10120000 		.4byte	.LASF73
 4428 046f 0C       		.byte	0xc
 4429 0470 E3       		.byte	0xe3
 4430 0471 25000000 		.4byte	0x25
 4431 0475 64       		.byte	0x64
 4432 0476 00       		.byte	0
 4433 0477 16       		.uleb128 0x16
 4434 0478 25000000 		.4byte	0x25
 4435 047c 95040000 		.4byte	0x495
 4436 0480 17       		.uleb128 0x17
 4437 0481 95040000 		.4byte	0x495
 4438 0485 17       		.uleb128 0x17
 4439 0486 D7000000 		.4byte	0xd7
 4440 048a 17       		.uleb128 0x17
 4441 048b D2050000 		.4byte	0x5d2
 4442 048f 17       		.uleb128 0x17
 4443 0490 25000000 		.4byte	0x25
 4444 0494 00       		.byte	0
 4445 0495 12       		.uleb128 0x12
 4446 0496 04       		.byte	0x4
 4447 0497 A0040000 		.4byte	0x4a0
 4448 049b 18       		.uleb128 0x18
 4449 049c 95040000 		.4byte	0x495
 4450 04a0 19       		.uleb128 0x19
 4451 04a1 31110000 		.4byte	.LASF74
 4452 04a5 2804     		.2byte	0x428
 4453 04a7 0C       		.byte	0xc
 4454 04a8 3802     		.2byte	0x238
 4455 04aa D2050000 		.4byte	0x5d2
 4456 04ae 1A       		.uleb128 0x1a
 4457 04af DF010000 		.4byte	.LASF75
 4458 04b3 0C       		.byte	0xc
 4459 04b4 3A02     		.2byte	0x23a
 4460 04b6 25000000 		.4byte	0x25
ARM GAS  /tmp/ccCxIftT.s 			page 125


 4461 04ba 00       		.byte	0
 4462 04bb 1A       		.uleb128 0x1a
 4463 04bc 06080000 		.4byte	.LASF76
 4464 04c0 0C       		.byte	0xc
 4465 04c1 3F02     		.2byte	0x23f
 4466 04c3 B9060000 		.4byte	0x6b9
 4467 04c7 04       		.byte	0x4
 4468 04c8 1A       		.uleb128 0x1a
 4469 04c9 DE0E0000 		.4byte	.LASF77
 4470 04cd 0C       		.byte	0xc
 4471 04ce 3F02     		.2byte	0x23f
 4472 04d0 B9060000 		.4byte	0x6b9
 4473 04d4 08       		.byte	0x8
 4474 04d5 1A       		.uleb128 0x1a
 4475 04d6 6F120000 		.4byte	.LASF78
 4476 04da 0C       		.byte	0xc
 4477 04db 3F02     		.2byte	0x23f
 4478 04dd B9060000 		.4byte	0x6b9
 4479 04e1 0C       		.byte	0xc
 4480 04e2 1A       		.uleb128 0x1a
 4481 04e3 33050000 		.4byte	.LASF79
 4482 04e7 0C       		.byte	0xc
 4483 04e8 4102     		.2byte	0x241
 4484 04ea 25000000 		.4byte	0x25
 4485 04ee 10       		.byte	0x10
 4486 04ef 1A       		.uleb128 0x1a
 4487 04f0 C1040000 		.4byte	.LASF80
 4488 04f4 0C       		.byte	0xc
 4489 04f5 4202     		.2byte	0x242
 4490 04f7 9B080000 		.4byte	0x89b
 4491 04fb 14       		.byte	0x14
 4492 04fc 1A       		.uleb128 0x1a
 4493 04fd 6A0D0000 		.4byte	.LASF81
 4494 0501 0C       		.byte	0xc
 4495 0502 4402     		.2byte	0x244
 4496 0504 25000000 		.4byte	0x25
 4497 0508 30       		.byte	0x30
 4498 0509 1A       		.uleb128 0x1a
 4499 050a 900C0000 		.4byte	.LASF82
 4500 050e 0C       		.byte	0xc
 4501 050f 4502     		.2byte	0x245
 4502 0511 08060000 		.4byte	0x608
 4503 0515 34       		.byte	0x34
 4504 0516 1A       		.uleb128 0x1a
 4505 0517 95070000 		.4byte	.LASF83
 4506 051b 0C       		.byte	0xc
 4507 051c 4702     		.2byte	0x247
 4508 051e 25000000 		.4byte	0x25
 4509 0522 38       		.byte	0x38
 4510 0523 1A       		.uleb128 0x1a
 4511 0524 DD080000 		.4byte	.LASF84
 4512 0528 0C       		.byte	0xc
 4513 0529 4902     		.2byte	0x249
 4514 052b B6080000 		.4byte	0x8b6
 4515 052f 3C       		.byte	0x3c
 4516 0530 1A       		.uleb128 0x1a
 4517 0531 FB020000 		.4byte	.LASF85
ARM GAS  /tmp/ccCxIftT.s 			page 126


 4518 0535 0C       		.byte	0xc
 4519 0536 4C02     		.2byte	0x24c
 4520 0538 E8010000 		.4byte	0x1e8
 4521 053c 40       		.byte	0x40
 4522 053d 1A       		.uleb128 0x1a
 4523 053e 21070000 		.4byte	.LASF86
 4524 0542 0C       		.byte	0xc
 4525 0543 4D02     		.2byte	0x24d
 4526 0545 25000000 		.4byte	0x25
 4527 0549 44       		.byte	0x44
 4528 054a 1A       		.uleb128 0x1a
 4529 054b 1D060000 		.4byte	.LASF87
 4530 054f 0C       		.byte	0xc
 4531 0550 4E02     		.2byte	0x24e
 4532 0552 E8010000 		.4byte	0x1e8
 4533 0556 48       		.byte	0x48
 4534 0557 1A       		.uleb128 0x1a
 4535 0558 62080000 		.4byte	.LASF88
 4536 055c 0C       		.byte	0xc
 4537 055d 4F02     		.2byte	0x24f
 4538 055f BC080000 		.4byte	0x8bc
 4539 0563 4C       		.byte	0x4c
 4540 0564 1A       		.uleb128 0x1a
 4541 0565 500D0000 		.4byte	.LASF89
 4542 0569 0C       		.byte	0xc
 4543 056a 5202     		.2byte	0x252
 4544 056c 25000000 		.4byte	0x25
 4545 0570 50       		.byte	0x50
 4546 0571 1A       		.uleb128 0x1a
 4547 0572 E60E0000 		.4byte	.LASF90
 4548 0576 0C       		.byte	0xc
 4549 0577 5302     		.2byte	0x253
 4550 0579 D2050000 		.4byte	0x5d2
 4551 057d 54       		.byte	0x54
 4552 057e 1A       		.uleb128 0x1a
 4553 057f 4B0D0000 		.4byte	.LASF91
 4554 0583 0C       		.byte	0xc
 4555 0584 7602     		.2byte	0x276
 4556 0586 79080000 		.4byte	0x879
 4557 058a 58       		.byte	0x58
 4558 058b 1B       		.uleb128 0x1b
 4559 058c 3B0B0000 		.4byte	.LASF51
 4560 0590 0C       		.byte	0xc
 4561 0591 7A02     		.2byte	0x27a
 4562 0593 05030000 		.4byte	0x305
 4563 0597 4801     		.2byte	0x148
 4564 0599 1B       		.uleb128 0x1b
 4565 059a B3060000 		.4byte	.LASF92
 4566 059e 0C       		.byte	0xc
 4567 059f 7B02     		.2byte	0x27b
 4568 05a1 C7020000 		.4byte	0x2c7
 4569 05a5 4C01     		.2byte	0x14c
 4570 05a7 1B       		.uleb128 0x1b
 4571 05a8 9A060000 		.4byte	.LASF93
 4572 05ac 0C       		.byte	0xc
 4573 05ad 7F02     		.2byte	0x27f
 4574 05af CD080000 		.4byte	0x8cd
ARM GAS  /tmp/ccCxIftT.s 			page 127


 4575 05b3 DC02     		.2byte	0x2dc
 4576 05b5 1B       		.uleb128 0x1b
 4577 05b6 B4100000 		.4byte	.LASF94
 4578 05ba 0C       		.byte	0xc
 4579 05bb 8402     		.2byte	0x284
 4580 05bd 7E060000 		.4byte	0x67e
 4581 05c1 E002     		.2byte	0x2e0
 4582 05c3 1B       		.uleb128 0x1b
 4583 05c4 7A0C0000 		.4byte	.LASF95
 4584 05c8 0C       		.byte	0xc
 4585 05c9 8502     		.2byte	0x285
 4586 05cb D9080000 		.4byte	0x8d9
 4587 05cf EC02     		.2byte	0x2ec
 4588 05d1 00       		.byte	0
 4589 05d2 12       		.uleb128 0x12
 4590 05d3 04       		.byte	0x4
 4591 05d4 D8050000 		.4byte	0x5d8
 4592 05d8 03       		.uleb128 0x3
 4593 05d9 01       		.byte	0x1
 4594 05da 08       		.byte	0x8
 4595 05db 8B060000 		.4byte	.LASF96
 4596 05df 18       		.uleb128 0x18
 4597 05e0 D8050000 		.4byte	0x5d8
 4598 05e4 12       		.uleb128 0x12
 4599 05e5 04       		.byte	0x4
 4600 05e6 77040000 		.4byte	0x477
 4601 05ea 16       		.uleb128 0x16
 4602 05eb 25000000 		.4byte	0x25
 4603 05ef 08060000 		.4byte	0x608
 4604 05f3 17       		.uleb128 0x17
 4605 05f4 95040000 		.4byte	0x495
 4606 05f8 17       		.uleb128 0x17
 4607 05f9 D7000000 		.4byte	0xd7
 4608 05fd 17       		.uleb128 0x17
 4609 05fe 08060000 		.4byte	0x608
 4610 0602 17       		.uleb128 0x17
 4611 0603 25000000 		.4byte	0x25
 4612 0607 00       		.byte	0
 4613 0608 12       		.uleb128 0x12
 4614 0609 04       		.byte	0x4
 4615 060a DF050000 		.4byte	0x5df
 4616 060e 12       		.uleb128 0x12
 4617 060f 04       		.byte	0x4
 4618 0610 EA050000 		.4byte	0x5ea
 4619 0614 16       		.uleb128 0x16
 4620 0615 0D010000 		.4byte	0x10d
 4621 0619 32060000 		.4byte	0x632
 4622 061d 17       		.uleb128 0x17
 4623 061e 95040000 		.4byte	0x495
 4624 0622 17       		.uleb128 0x17
 4625 0623 D7000000 		.4byte	0xd7
 4626 0627 17       		.uleb128 0x17
 4627 0628 0D010000 		.4byte	0x10d
 4628 062c 17       		.uleb128 0x17
 4629 062d 25000000 		.4byte	0x25
 4630 0631 00       		.byte	0
 4631 0632 12       		.uleb128 0x12
ARM GAS  /tmp/ccCxIftT.s 			page 128


 4632 0633 04       		.byte	0x4
 4633 0634 14060000 		.4byte	0x614
 4634 0638 16       		.uleb128 0x16
 4635 0639 25000000 		.4byte	0x25
 4636 063d 4C060000 		.4byte	0x64c
 4637 0641 17       		.uleb128 0x17
 4638 0642 95040000 		.4byte	0x495
 4639 0646 17       		.uleb128 0x17
 4640 0647 D7000000 		.4byte	0xd7
 4641 064b 00       		.byte	0
 4642 064c 12       		.uleb128 0x12
 4643 064d 04       		.byte	0x4
 4644 064e 38060000 		.4byte	0x638
 4645 0652 0C       		.uleb128 0xc
 4646 0653 45000000 		.4byte	0x45
 4647 0657 62060000 		.4byte	0x662
 4648 065b 0D       		.uleb128 0xd
 4649 065c D9000000 		.4byte	0xd9
 4650 0660 02       		.byte	0x2
 4651 0661 00       		.byte	0
 4652 0662 0C       		.uleb128 0xc
 4653 0663 45000000 		.4byte	0x45
 4654 0667 72060000 		.4byte	0x672
 4655 066b 0D       		.uleb128 0xd
 4656 066c D9000000 		.4byte	0xd9
 4657 0670 00       		.byte	0
 4658 0671 00       		.byte	0
 4659 0672 09       		.uleb128 0x9
 4660 0673 4C040000 		.4byte	.LASF97
 4661 0677 0C       		.byte	0xc
 4662 0678 1D01     		.2byte	0x11d
 4663 067a 4D030000 		.4byte	0x34d
 4664 067e 1C       		.uleb128 0x1c
 4665 067f 8D100000 		.4byte	.LASF98
 4666 0683 0C       		.byte	0xc
 4667 0684 0C       		.byte	0xc
 4668 0685 2101     		.2byte	0x121
 4669 0687 B3060000 		.4byte	0x6b3
 4670 068b 1A       		.uleb128 0x1a
 4671 068c 5C050000 		.4byte	.LASF31
 4672 0690 0C       		.byte	0xc
 4673 0691 2301     		.2byte	0x123
 4674 0693 B3060000 		.4byte	0x6b3
 4675 0697 00       		.byte	0
 4676 0698 1A       		.uleb128 0x1a
 4677 0699 C50F0000 		.4byte	.LASF99
 4678 069d 0C       		.byte	0xc
 4679 069e 2401     		.2byte	0x124
 4680 06a0 25000000 		.4byte	0x25
 4681 06a4 04       		.byte	0x4
 4682 06a5 1A       		.uleb128 0x1a
 4683 06a6 80120000 		.4byte	.LASF100
 4684 06aa 0C       		.byte	0xc
 4685 06ab 2501     		.2byte	0x125
 4686 06ad B9060000 		.4byte	0x6b9
 4687 06b1 08       		.byte	0x8
 4688 06b2 00       		.byte	0
ARM GAS  /tmp/ccCxIftT.s 			page 129


 4689 06b3 12       		.uleb128 0x12
 4690 06b4 04       		.byte	0x4
 4691 06b5 7E060000 		.4byte	0x67e
 4692 06b9 12       		.uleb128 0x12
 4693 06ba 04       		.byte	0x4
 4694 06bb 72060000 		.4byte	0x672
 4695 06bf 1C       		.uleb128 0x1c
 4696 06c0 FF030000 		.4byte	.LASF101
 4697 06c4 0E       		.byte	0xe
 4698 06c5 0C       		.byte	0xc
 4699 06c6 3D01     		.2byte	0x13d
 4700 06c8 F4060000 		.4byte	0x6f4
 4701 06cc 1A       		.uleb128 0x1a
 4702 06cd 29120000 		.4byte	.LASF102
 4703 06d1 0C       		.byte	0xc
 4704 06d2 3E01     		.2byte	0x13e
 4705 06d4 F4060000 		.4byte	0x6f4
 4706 06d8 00       		.byte	0
 4707 06d9 1A       		.uleb128 0x1a
 4708 06da ED0B0000 		.4byte	.LASF103
 4709 06de 0C       		.byte	0xc
 4710 06df 3F01     		.2byte	0x13f
 4711 06e1 F4060000 		.4byte	0x6f4
 4712 06e5 06       		.byte	0x6
 4713 06e6 1A       		.uleb128 0x1a
 4714 06e7 7F080000 		.4byte	.LASF104
 4715 06eb 0C       		.byte	0xc
 4716 06ec 4001     		.2byte	0x140
 4717 06ee 5E000000 		.4byte	0x5e
 4718 06f2 0C       		.byte	0xc
 4719 06f3 00       		.byte	0
 4720 06f4 0C       		.uleb128 0xc
 4721 06f5 5E000000 		.4byte	0x5e
 4722 06f9 04070000 		.4byte	0x704
 4723 06fd 0D       		.uleb128 0xd
 4724 06fe D9000000 		.4byte	0xd9
 4725 0702 02       		.byte	0x2
 4726 0703 00       		.byte	0
 4727 0704 1D       		.uleb128 0x1d
 4728 0705 D0       		.byte	0xd0
 4729 0706 0C       		.byte	0xc
 4730 0707 5702     		.2byte	0x257
 4731 0709 05080000 		.4byte	0x805
 4732 070d 1A       		.uleb128 0x1a
 4733 070e E0110000 		.4byte	.LASF105
 4734 0712 0C       		.byte	0xc
 4735 0713 5902     		.2byte	0x259
 4736 0715 2C000000 		.4byte	0x2c
 4737 0719 00       		.byte	0
 4738 071a 1A       		.uleb128 0x1a
 4739 071b E5100000 		.4byte	.LASF106
 4740 071f 0C       		.byte	0xc
 4741 0720 5A02     		.2byte	0x25a
 4742 0722 D2050000 		.4byte	0x5d2
 4743 0726 04       		.byte	0x4
 4744 0727 1A       		.uleb128 0x1a
 4745 0728 F2030000 		.4byte	.LASF107
ARM GAS  /tmp/ccCxIftT.s 			page 130


 4746 072c 0C       		.byte	0xc
 4747 072d 5B02     		.2byte	0x25b
 4748 072f 05080000 		.4byte	0x805
 4749 0733 08       		.byte	0x8
 4750 0734 1A       		.uleb128 0x1a
 4751 0735 210D0000 		.4byte	.LASF108
 4752 0739 0C       		.byte	0xc
 4753 073a 5C02     		.2byte	0x25c
 4754 073c FE010000 		.4byte	0x1fe
 4755 0740 24       		.byte	0x24
 4756 0741 1A       		.uleb128 0x1a
 4757 0742 0D080000 		.4byte	.LASF109
 4758 0746 0C       		.byte	0xc
 4759 0747 5D02     		.2byte	0x25d
 4760 0749 25000000 		.4byte	0x25
 4761 074d 48       		.byte	0x48
 4762 074e 1A       		.uleb128 0x1a
 4763 074f 48120000 		.4byte	.LASF110
 4764 0753 0C       		.byte	0xc
 4765 0754 5E02     		.2byte	0x25e
 4766 0756 90000000 		.4byte	0x90
 4767 075a 50       		.byte	0x50
 4768 075b 1A       		.uleb128 0x1a
 4769 075c 25010000 		.4byte	.LASF111
 4770 0760 0C       		.byte	0xc
 4771 0761 5F02     		.2byte	0x25f
 4772 0763 BF060000 		.4byte	0x6bf
 4773 0767 58       		.byte	0x58
 4774 0768 1A       		.uleb128 0x1a
 4775 0769 02090000 		.4byte	.LASF112
 4776 076d 0C       		.byte	0xc
 4777 076e 6002     		.2byte	0x260
 4778 0770 74010000 		.4byte	0x174
 4779 0774 68       		.byte	0x68
 4780 0775 1A       		.uleb128 0x1a
 4781 0776 F2100000 		.4byte	.LASF113
 4782 077a 0C       		.byte	0xc
 4783 077b 6102     		.2byte	0x261
 4784 077d 74010000 		.4byte	0x174
 4785 0781 70       		.byte	0x70
 4786 0782 1A       		.uleb128 0x1a
 4787 0783 DC000000 		.4byte	.LASF114
 4788 0787 0C       		.byte	0xc
 4789 0788 6202     		.2byte	0x262
 4790 078a 74010000 		.4byte	0x174
 4791 078e 78       		.byte	0x78
 4792 078f 1A       		.uleb128 0x1a
 4793 0790 600D0000 		.4byte	.LASF115
 4794 0794 0C       		.byte	0xc
 4795 0795 6302     		.2byte	0x263
 4796 0797 15080000 		.4byte	0x815
 4797 079b 80       		.byte	0x80
 4798 079c 1A       		.uleb128 0x1a
 4799 079d CF030000 		.4byte	.LASF116
 4800 07a1 0C       		.byte	0xc
 4801 07a2 6402     		.2byte	0x264
 4802 07a4 25080000 		.4byte	0x825
ARM GAS  /tmp/ccCxIftT.s 			page 131


 4803 07a8 88       		.byte	0x88
 4804 07a9 1A       		.uleb128 0x1a
 4805 07aa BC100000 		.4byte	.LASF117
 4806 07ae 0C       		.byte	0xc
 4807 07af 6502     		.2byte	0x265
 4808 07b1 25000000 		.4byte	0x25
 4809 07b5 A0       		.byte	0xa0
 4810 07b6 1A       		.uleb128 0x1a
 4811 07b7 A60F0000 		.4byte	.LASF118
 4812 07bb 0C       		.byte	0xc
 4813 07bc 6602     		.2byte	0x266
 4814 07be 74010000 		.4byte	0x174
 4815 07c2 A4       		.byte	0xa4
 4816 07c3 1A       		.uleb128 0x1a
 4817 07c4 A4060000 		.4byte	.LASF119
 4818 07c8 0C       		.byte	0xc
 4819 07c9 6702     		.2byte	0x267
 4820 07cb 74010000 		.4byte	0x174
 4821 07cf AC       		.byte	0xac
 4822 07d0 1A       		.uleb128 0x1a
 4823 07d1 B7030000 		.4byte	.LASF120
 4824 07d5 0C       		.byte	0xc
 4825 07d6 6802     		.2byte	0x268
 4826 07d8 74010000 		.4byte	0x174
 4827 07dc B4       		.byte	0xb4
 4828 07dd 1A       		.uleb128 0x1a
 4829 07de 84080000 		.4byte	.LASF121
 4830 07e2 0C       		.byte	0xc
 4831 07e3 6902     		.2byte	0x269
 4832 07e5 74010000 		.4byte	0x174
 4833 07e9 BC       		.byte	0xbc
 4834 07ea 1A       		.uleb128 0x1a
 4835 07eb 53060000 		.4byte	.LASF122
 4836 07ef 0C       		.byte	0xc
 4837 07f0 6A02     		.2byte	0x26a
 4838 07f2 74010000 		.4byte	0x174
 4839 07f6 C4       		.byte	0xc4
 4840 07f7 1A       		.uleb128 0x1a
 4841 07f8 53040000 		.4byte	.LASF123
 4842 07fc 0C       		.byte	0xc
 4843 07fd 6B02     		.2byte	0x26b
 4844 07ff 25000000 		.4byte	0x25
 4845 0803 CC       		.byte	0xcc
 4846 0804 00       		.byte	0
 4847 0805 0C       		.uleb128 0xc
 4848 0806 D8050000 		.4byte	0x5d8
 4849 080a 15080000 		.4byte	0x815
 4850 080e 0D       		.uleb128 0xd
 4851 080f D9000000 		.4byte	0xd9
 4852 0813 19       		.byte	0x19
 4853 0814 00       		.byte	0
 4854 0815 0C       		.uleb128 0xc
 4855 0816 D8050000 		.4byte	0x5d8
 4856 081a 25080000 		.4byte	0x825
 4857 081e 0D       		.uleb128 0xd
 4858 081f D9000000 		.4byte	0xd9
 4859 0823 07       		.byte	0x7
ARM GAS  /tmp/ccCxIftT.s 			page 132


 4860 0824 00       		.byte	0
 4861 0825 0C       		.uleb128 0xc
 4862 0826 D8050000 		.4byte	0x5d8
 4863 082a 35080000 		.4byte	0x835
 4864 082e 0D       		.uleb128 0xd
 4865 082f D9000000 		.4byte	0xd9
 4866 0833 17       		.byte	0x17
 4867 0834 00       		.byte	0
 4868 0835 1D       		.uleb128 0x1d
 4869 0836 F0       		.byte	0xf0
 4870 0837 0C       		.byte	0xc
 4871 0838 7002     		.2byte	0x270
 4872 083a 59080000 		.4byte	0x859
 4873 083e 1A       		.uleb128 0x1a
 4874 083f 82030000 		.4byte	.LASF124
 4875 0843 0C       		.byte	0xc
 4876 0844 7302     		.2byte	0x273
 4877 0846 59080000 		.4byte	0x859
 4878 084a 00       		.byte	0
 4879 084b 1A       		.uleb128 0x1a
 4880 084c 77120000 		.4byte	.LASF125
 4881 0850 0C       		.byte	0xc
 4882 0851 7402     		.2byte	0x274
 4883 0853 69080000 		.4byte	0x869
 4884 0857 78       		.byte	0x78
 4885 0858 00       		.byte	0
 4886 0859 0C       		.uleb128 0xc
 4887 085a 47030000 		.4byte	0x347
 4888 085e 69080000 		.4byte	0x869
 4889 0862 0D       		.uleb128 0xd
 4890 0863 D9000000 		.4byte	0xd9
 4891 0867 1D       		.byte	0x1d
 4892 0868 00       		.byte	0
 4893 0869 0C       		.uleb128 0xc
 4894 086a 2C000000 		.4byte	0x2c
 4895 086e 79080000 		.4byte	0x879
 4896 0872 0D       		.uleb128 0xd
 4897 0873 D9000000 		.4byte	0xd9
 4898 0877 1D       		.byte	0x1d
 4899 0878 00       		.byte	0
 4900 0879 1E       		.uleb128 0x1e
 4901 087a F0       		.byte	0xf0
 4902 087b 0C       		.byte	0xc
 4903 087c 5502     		.2byte	0x255
 4904 087e 9B080000 		.4byte	0x89b
 4905 0882 1F       		.uleb128 0x1f
 4906 0883 31110000 		.4byte	.LASF74
 4907 0887 0C       		.byte	0xc
 4908 0888 6C02     		.2byte	0x26c
 4909 088a 04070000 		.4byte	0x704
 4910 088e 1F       		.uleb128 0x1f
 4911 088f 300D0000 		.4byte	.LASF126
 4912 0893 0C       		.byte	0xc
 4913 0894 7502     		.2byte	0x275
 4914 0896 35080000 		.4byte	0x835
 4915 089a 00       		.byte	0
 4916 089b 0C       		.uleb128 0xc
ARM GAS  /tmp/ccCxIftT.s 			page 133


 4917 089c D8050000 		.4byte	0x5d8
 4918 08a0 AB080000 		.4byte	0x8ab
 4919 08a4 0D       		.uleb128 0xd
 4920 08a5 D9000000 		.4byte	0xd9
 4921 08a9 18       		.byte	0x18
 4922 08aa 00       		.byte	0
 4923 08ab 20       		.uleb128 0x20
 4924 08ac B6080000 		.4byte	0x8b6
 4925 08b0 17       		.uleb128 0x17
 4926 08b1 95040000 		.4byte	0x495
 4927 08b5 00       		.byte	0
 4928 08b6 12       		.uleb128 0x12
 4929 08b7 04       		.byte	0x4
 4930 08b8 AB080000 		.4byte	0x8ab
 4931 08bc 12       		.uleb128 0x12
 4932 08bd 04       		.byte	0x4
 4933 08be E8010000 		.4byte	0x1e8
 4934 08c2 20       		.uleb128 0x20
 4935 08c3 CD080000 		.4byte	0x8cd
 4936 08c7 17       		.uleb128 0x17
 4937 08c8 25000000 		.4byte	0x25
 4938 08cc 00       		.byte	0
 4939 08cd 12       		.uleb128 0x12
 4940 08ce 04       		.byte	0x4
 4941 08cf D3080000 		.4byte	0x8d3
 4942 08d3 12       		.uleb128 0x12
 4943 08d4 04       		.byte	0x4
 4944 08d5 C2080000 		.4byte	0x8c2
 4945 08d9 0C       		.uleb128 0xc
 4946 08da 72060000 		.4byte	0x672
 4947 08de E9080000 		.4byte	0x8e9
 4948 08e2 0D       		.uleb128 0xd
 4949 08e3 D9000000 		.4byte	0xd9
 4950 08e7 02       		.byte	0x2
 4951 08e8 00       		.byte	0
 4952 08e9 07       		.uleb128 0x7
 4953 08ea 76030000 		.4byte	.LASF127
 4954 08ee 0C       		.byte	0xc
 4955 08ef FD02     		.2byte	0x2fd
 4956 08f1 95040000 		.4byte	0x495
 4957 08f5 07       		.uleb128 0x7
 4958 08f6 B90C0000 		.4byte	.LASF128
 4959 08fa 0C       		.byte	0xc
 4960 08fb FE02     		.2byte	0x2fe
 4961 08fd 9B040000 		.4byte	0x49b
 4962 0901 12       		.uleb128 0x12
 4963 0902 04       		.byte	0x4
 4964 0903 07090000 		.4byte	0x907
 4965 0907 21       		.uleb128 0x21
 4966 0908 08       		.uleb128 0x8
 4967 0909 1F050000 		.4byte	.LASF129
 4968 090d 0D       		.byte	0xd
 4969 090e 5F       		.byte	0x5f
 4970 090f D2050000 		.4byte	0x5d2
 4971 0913 04       		.uleb128 0x4
 4972 0914 850C0000 		.4byte	.LASF130
 4973 0918 04       		.byte	0x4
ARM GAS  /tmp/ccCxIftT.s 			page 134


 4974 0919 8C       		.byte	0x8c
 4975 091a C7000000 		.4byte	0xc7
 4976 091e 08       		.uleb128 0x8
 4977 091f CB020000 		.4byte	.LASF131
 4978 0923 04       		.byte	0x4
 4979 0924 8F       		.byte	0x8f
 4980 0925 30090000 		.4byte	0x930
 4981 0929 03       		.uleb128 0x3
 4982 092a 01       		.byte	0x1
 4983 092b 02       		.byte	0x2
 4984 092c 38050000 		.4byte	.LASF132
 4985 0930 05       		.uleb128 0x5
 4986 0931 29090000 		.4byte	0x929
 4987 0935 22       		.uleb128 0x22
 4988 0936 010E0000 		.4byte	.LASF133
 4989 093a 04       		.byte	0x4
 4990 093b 94       		.byte	0x94
 4991 093c D2000000 		.4byte	0xd2
 4992 0940 05       		.uleb128 0x5
 4993 0941 03       		.byte	0x3
 4994 0942 00000000 		.4byte	cpu_irq_critical_section_counter
 4995 0946 22       		.uleb128 0x22
 4996 0947 9F050000 		.4byte	.LASF134
 4997 094b 04       		.byte	0x4
 4998 094c 95       		.byte	0x95
 4999 094d 30090000 		.4byte	0x930
 5000 0951 05       		.uleb128 0x5
 5001 0952 03       		.byte	0x3
 5002 0953 00000000 		.4byte	cpu_irq_prev_interrupt_state
 5003 0957 09       		.uleb128 0x9
 5004 0958 B20E0000 		.4byte	.LASF135
 5005 095c 0E       		.byte	0xe
 5006 095d 0401     		.2byte	0x104
 5007 095f A7000000 		.4byte	0xa7
 5008 0963 05       		.uleb128 0x5
 5009 0964 57090000 		.4byte	0x957
 5010 0968 09       		.uleb128 0x9
 5011 0969 37040000 		.4byte	.LASF136
 5012 096d 0E       		.byte	0xe
 5013 096e 0801     		.2byte	0x108
 5014 0970 C7000000 		.4byte	0xc7
 5015 0974 03       		.uleb128 0x3
 5016 0975 04       		.byte	0x4
 5017 0976 04       		.byte	0x4
 5018 0977 67030000 		.4byte	.LASF137
 5019 097b 03       		.uleb128 0x3
 5020 097c 08       		.byte	0x8
 5021 097d 04       		.byte	0x4
 5022 097e B1110000 		.4byte	.LASF138
 5023 0982 09       		.uleb128 0x9
 5024 0983 930F0000 		.4byte	.LASF139
 5025 0987 0E       		.byte	0xe
 5026 0988 0E01     		.2byte	0x10e
 5027 098a C7000000 		.4byte	0xc7
 5028 098e 0E       		.uleb128 0xe
 5029 098f 07       		.byte	0x7
 5030 0990 0F       		.byte	0xf
ARM GAS  /tmp/ccCxIftT.s 			page 135


 5031 0991 EB       		.byte	0xeb
 5032 0992 C7090000 		.4byte	0x9c7
 5033 0996 0F       		.uleb128 0xf
 5034 0997 E7020000 		.4byte	.LASF140
 5035 099b 0F       		.byte	0xf
 5036 099c EC       		.byte	0xec
 5037 099d 68090000 		.4byte	0x968
 5038 09a1 00       		.byte	0
 5039 09a2 0F       		.uleb128 0xf
 5040 09a3 BF0A0000 		.4byte	.LASF141
 5041 09a7 0F       		.byte	0xf
 5042 09a8 ED       		.byte	0xed
 5043 09a9 97000000 		.4byte	0x97
 5044 09ad 04       		.byte	0x4
 5045 09ae 0F       		.uleb128 0xf
 5046 09af D3090000 		.4byte	.LASF142
 5047 09b3 0F       		.byte	0xf
 5048 09b4 EE       		.byte	0xee
 5049 09b5 97000000 		.4byte	0x97
 5050 09b9 05       		.byte	0x5
 5051 09ba 0F       		.uleb128 0xf
 5052 09bb BC050000 		.4byte	.LASF143
 5053 09bf 0F       		.byte	0xf
 5054 09c0 EF       		.byte	0xef
 5055 09c1 97000000 		.4byte	0x97
 5056 09c5 06       		.byte	0x6
 5057 09c6 00       		.byte	0
 5058 09c7 04       		.uleb128 0x4
 5059 09c8 73090000 		.4byte	.LASF144
 5060 09cc 0F       		.byte	0xf
 5061 09cd F0       		.byte	0xf0
 5062 09ce 8E090000 		.4byte	0x98e
 5063 09d2 23       		.uleb128 0x23
 5064 09d3 6D100000 		.4byte	.LASF148
 5065 09d7 01       		.byte	0x1
 5066 09d8 45000000 		.4byte	0x45
 5067 09dc 0F       		.byte	0xf
 5068 09dd F2       		.byte	0xf2
 5069 09de F5090000 		.4byte	0x9f5
 5070 09e2 24       		.uleb128 0x24
 5071 09e3 A10B0000 		.4byte	.LASF145
 5072 09e7 00       		.byte	0
 5073 09e8 24       		.uleb128 0x24
 5074 09e9 B3010000 		.4byte	.LASF146
 5075 09ed 01       		.byte	0x1
 5076 09ee 24       		.uleb128 0x24
 5077 09ef B10B0000 		.4byte	.LASF147
 5078 09f3 02       		.byte	0x2
 5079 09f4 00       		.byte	0
 5080 09f5 23       		.uleb128 0x23
 5081 09f6 2B070000 		.4byte	.LASF149
 5082 09fa 01       		.byte	0x1
 5083 09fb 45000000 		.4byte	0x45
 5084 09ff 0F       		.byte	0xf
 5085 0a00 F8       		.byte	0xf8
 5086 0a01 240A0000 		.4byte	0xa24
 5087 0a05 24       		.uleb128 0x24
ARM GAS  /tmp/ccCxIftT.s 			page 136


 5088 0a06 4F080000 		.4byte	.LASF150
 5089 0a0a 00       		.byte	0
 5090 0a0b 24       		.uleb128 0x24
 5091 0a0c 77020000 		.4byte	.LASF151
 5092 0a10 01       		.byte	0x1
 5093 0a11 24       		.uleb128 0x24
 5094 0a12 4A000000 		.4byte	.LASF152
 5095 0a16 02       		.byte	0x2
 5096 0a17 24       		.uleb128 0x24
 5097 0a18 CC0C0000 		.4byte	.LASF153
 5098 0a1c 03       		.byte	0x3
 5099 0a1d 24       		.uleb128 0x24
 5100 0a1e C10B0000 		.4byte	.LASF154
 5101 0a22 04       		.byte	0x4
 5102 0a23 00       		.byte	0
 5103 0a24 1D       		.uleb128 0x1d
 5104 0a25 08       		.byte	0x8
 5105 0a26 0F       		.byte	0xf
 5106 0a27 1B01     		.2byte	0x11b
 5107 0a29 6F0A0000 		.4byte	0xa6f
 5108 0a2d 1A       		.uleb128 0x1a
 5109 0a2e 8E010000 		.4byte	.LASF155
 5110 0a32 0F       		.byte	0xf
 5111 0a33 1C01     		.2byte	0x11c
 5112 0a35 97000000 		.4byte	0x97
 5113 0a39 00       		.byte	0
 5114 0a3a 1A       		.uleb128 0x1a
 5115 0a3b 29040000 		.4byte	.LASF156
 5116 0a3f 0F       		.byte	0xf
 5117 0a40 1D01     		.2byte	0x11d
 5118 0a42 97000000 		.4byte	0x97
 5119 0a46 01       		.byte	0x1
 5120 0a47 1A       		.uleb128 0x1a
 5121 0a48 99020000 		.4byte	.LASF157
 5122 0a4c 0F       		.byte	0xf
 5123 0a4d 1E01     		.2byte	0x11e
 5124 0a4f 57090000 		.4byte	0x957
 5125 0a53 02       		.byte	0x2
 5126 0a54 1A       		.uleb128 0x1a
 5127 0a55 43000000 		.4byte	.LASF158
 5128 0a59 0F       		.byte	0xf
 5129 0a5a 1F01     		.2byte	0x11f
 5130 0a5c 57090000 		.4byte	0x957
 5131 0a60 04       		.byte	0x4
 5132 0a61 1A       		.uleb128 0x1a
 5133 0a62 720C0000 		.4byte	.LASF159
 5134 0a66 0F       		.byte	0xf
 5135 0a67 2001     		.2byte	0x120
 5136 0a69 57090000 		.4byte	0x957
 5137 0a6d 06       		.byte	0x6
 5138 0a6e 00       		.byte	0
 5139 0a6f 09       		.uleb128 0x9
 5140 0a70 7E110000 		.4byte	.LASF160
 5141 0a74 0F       		.byte	0xf
 5142 0a75 2101     		.2byte	0x121
 5143 0a77 240A0000 		.4byte	0xa24
 5144 0a7b 1D       		.uleb128 0x1d
ARM GAS  /tmp/ccCxIftT.s 			page 137


 5145 0a7c 0A       		.byte	0xa
 5146 0a7d 0F       		.byte	0xf
 5147 0a7e 2701     		.2byte	0x127
 5148 0a80 9F0A0000 		.4byte	0xa9f
 5149 0a84 1A       		.uleb128 0x1a
 5150 0a85 89090000 		.4byte	.LASF161
 5151 0a89 0F       		.byte	0xf
 5152 0a8a 2801     		.2byte	0x128
 5153 0a8c 6F0A0000 		.4byte	0xa6f
 5154 0a90 00       		.byte	0
 5155 0a91 1A       		.uleb128 0x1a
 5156 0a92 92040000 		.4byte	.LASF162
 5157 0a96 0F       		.byte	0xf
 5158 0a97 2901     		.2byte	0x129
 5159 0a99 57090000 		.4byte	0x957
 5160 0a9d 08       		.byte	0x8
 5161 0a9e 00       		.byte	0
 5162 0a9f 09       		.uleb128 0x9
 5163 0aa0 830B0000 		.4byte	.LASF163
 5164 0aa4 0F       		.byte	0xf
 5165 0aa5 2A01     		.2byte	0x12a
 5166 0aa7 7B0A0000 		.4byte	0xa7b
 5167 0aab 1D       		.uleb128 0x1d
 5168 0aac 08       		.byte	0x8
 5169 0aad 10       		.byte	0x10
 5170 0aae 3801     		.2byte	0x138
 5171 0ab0 F60A0000 		.4byte	0xaf6
 5172 0ab4 1A       		.uleb128 0x1a
 5173 0ab5 8E010000 		.4byte	.LASF155
 5174 0ab9 10       		.byte	0x10
 5175 0aba 3901     		.2byte	0x139
 5176 0abc 97000000 		.4byte	0x97
 5177 0ac0 00       		.byte	0
 5178 0ac1 1A       		.uleb128 0x1a
 5179 0ac2 420D0000 		.4byte	.LASF164
 5180 0ac6 10       		.byte	0x10
 5181 0ac7 3A01     		.2byte	0x13a
 5182 0ac9 97000000 		.4byte	0x97
 5183 0acd 01       		.byte	0x1
 5184 0ace 1A       		.uleb128 0x1a
 5185 0acf 99020000 		.4byte	.LASF157
 5186 0ad3 10       		.byte	0x10
 5187 0ad4 3B01     		.2byte	0x13b
 5188 0ad6 57090000 		.4byte	0x957
 5189 0ada 02       		.byte	0x2
 5190 0adb 1A       		.uleb128 0x1a
 5191 0adc 43000000 		.4byte	.LASF158
 5192 0ae0 10       		.byte	0x10
 5193 0ae1 3C01     		.2byte	0x13c
 5194 0ae3 57090000 		.4byte	0x957
 5195 0ae7 04       		.byte	0x4
 5196 0ae8 1A       		.uleb128 0x1a
 5197 0ae9 720C0000 		.4byte	.LASF159
 5198 0aed 10       		.byte	0x10
 5199 0aee 3D01     		.2byte	0x13d
 5200 0af0 57090000 		.4byte	0x957
 5201 0af4 06       		.byte	0x6
ARM GAS  /tmp/ccCxIftT.s 			page 138


 5202 0af5 00       		.byte	0
 5203 0af6 09       		.uleb128 0x9
 5204 0af7 C6050000 		.4byte	.LASF165
 5205 0afb 10       		.byte	0x10
 5206 0afc 3E01     		.2byte	0x13e
 5207 0afe AB0A0000 		.4byte	0xaab
 5208 0b02 1D       		.uleb128 0x1d
 5209 0b03 12       		.byte	0x12
 5210 0b04 10       		.byte	0x10
 5211 0b05 4301     		.2byte	0x143
 5212 0b07 C20B0000 		.4byte	0xbc2
 5213 0b0b 1A       		.uleb128 0x1a
 5214 0b0c FD110000 		.4byte	.LASF166
 5215 0b10 10       		.byte	0x10
 5216 0b11 4401     		.2byte	0x144
 5217 0b13 97000000 		.4byte	0x97
 5218 0b17 00       		.byte	0
 5219 0b18 1A       		.uleb128 0x1a
 5220 0b19 010B0000 		.4byte	.LASF167
 5221 0b1d 10       		.byte	0x10
 5222 0b1e 4501     		.2byte	0x145
 5223 0b20 97000000 		.4byte	0x97
 5224 0b24 01       		.byte	0x1
 5225 0b25 1A       		.uleb128 0x1a
 5226 0b26 58030000 		.4byte	.LASF168
 5227 0b2a 10       		.byte	0x10
 5228 0b2b 4601     		.2byte	0x146
 5229 0b2d 57090000 		.4byte	0x957
 5230 0b31 02       		.byte	0x2
 5231 0b32 1A       		.uleb128 0x1a
 5232 0b33 03030000 		.4byte	.LASF169
 5233 0b37 10       		.byte	0x10
 5234 0b38 4701     		.2byte	0x147
 5235 0b3a 97000000 		.4byte	0x97
 5236 0b3e 04       		.byte	0x4
 5237 0b3f 1A       		.uleb128 0x1a
 5238 0b40 82040000 		.4byte	.LASF170
 5239 0b44 10       		.byte	0x10
 5240 0b45 4801     		.2byte	0x148
 5241 0b47 97000000 		.4byte	0x97
 5242 0b4b 05       		.byte	0x5
 5243 0b4c 1A       		.uleb128 0x1a
 5244 0b4d CB0A0000 		.4byte	.LASF171
 5245 0b51 10       		.byte	0x10
 5246 0b52 4901     		.2byte	0x149
 5247 0b54 97000000 		.4byte	0x97
 5248 0b58 06       		.byte	0x6
 5249 0b59 1A       		.uleb128 0x1a
 5250 0b5a 14040000 		.4byte	.LASF172
 5251 0b5e 10       		.byte	0x10
 5252 0b5f 4A01     		.2byte	0x14a
 5253 0b61 97000000 		.4byte	0x97
 5254 0b65 07       		.byte	0x7
 5255 0b66 1A       		.uleb128 0x1a
 5256 0b67 180B0000 		.4byte	.LASF173
 5257 0b6b 10       		.byte	0x10
 5258 0b6c 4B01     		.2byte	0x14b
ARM GAS  /tmp/ccCxIftT.s 			page 139


 5259 0b6e 57090000 		.4byte	0x957
 5260 0b72 08       		.byte	0x8
 5261 0b73 1A       		.uleb128 0x1a
 5262 0b74 47020000 		.4byte	.LASF174
 5263 0b78 10       		.byte	0x10
 5264 0b79 4C01     		.2byte	0x14c
 5265 0b7b 57090000 		.4byte	0x957
 5266 0b7f 0A       		.byte	0xa
 5267 0b80 1A       		.uleb128 0x1a
 5268 0b81 35020000 		.4byte	.LASF175
 5269 0b85 10       		.byte	0x10
 5270 0b86 4D01     		.2byte	0x14d
 5271 0b88 57090000 		.4byte	0x957
 5272 0b8c 0C       		.byte	0xc
 5273 0b8d 1A       		.uleb128 0x1a
 5274 0b8e 83020000 		.4byte	.LASF176
 5275 0b92 10       		.byte	0x10
 5276 0b93 4E01     		.2byte	0x14e
 5277 0b95 97000000 		.4byte	0x97
 5278 0b99 0E       		.byte	0xe
 5279 0b9a 1A       		.uleb128 0x1a
 5280 0b9b 3C030000 		.4byte	.LASF177
 5281 0b9f 10       		.byte	0x10
 5282 0ba0 4F01     		.2byte	0x14f
 5283 0ba2 97000000 		.4byte	0x97
 5284 0ba6 0F       		.byte	0xf
 5285 0ba7 1A       		.uleb128 0x1a
 5286 0ba8 3C0A0000 		.4byte	.LASF178
 5287 0bac 10       		.byte	0x10
 5288 0bad 5001     		.2byte	0x150
 5289 0baf 97000000 		.4byte	0x97
 5290 0bb3 10       		.byte	0x10
 5291 0bb4 1A       		.uleb128 0x1a
 5292 0bb5 C0110000 		.4byte	.LASF179
 5293 0bb9 10       		.byte	0x10
 5294 0bba 5101     		.2byte	0x151
 5295 0bbc 97000000 		.4byte	0x97
 5296 0bc0 11       		.byte	0x11
 5297 0bc1 00       		.byte	0
 5298 0bc2 09       		.uleb128 0x9
 5299 0bc3 93100000 		.4byte	.LASF180
 5300 0bc7 10       		.byte	0x10
 5301 0bc8 5201     		.2byte	0x152
 5302 0bca 020B0000 		.4byte	0xb02
 5303 0bce 1D       		.uleb128 0x1d
 5304 0bcf 05       		.byte	0x5
 5305 0bd0 10       		.byte	0x10
 5306 0bd1 7401     		.2byte	0x174
 5307 0bd3 0C0C0000 		.4byte	0xc0c
 5308 0bd7 1A       		.uleb128 0x1a
 5309 0bd8 FD110000 		.4byte	.LASF166
 5310 0bdc 10       		.byte	0x10
 5311 0bdd 7501     		.2byte	0x175
 5312 0bdf 97000000 		.4byte	0x97
 5313 0be3 00       		.byte	0
 5314 0be4 1A       		.uleb128 0x1a
 5315 0be5 010B0000 		.4byte	.LASF167
ARM GAS  /tmp/ccCxIftT.s 			page 140


 5316 0be9 10       		.byte	0x10
 5317 0bea 7601     		.2byte	0x176
 5318 0bec 97000000 		.4byte	0x97
 5319 0bf0 01       		.byte	0x1
 5320 0bf1 1A       		.uleb128 0x1a
 5321 0bf2 AA030000 		.4byte	.LASF181
 5322 0bf6 10       		.byte	0x10
 5323 0bf7 7701     		.2byte	0x177
 5324 0bf9 57090000 		.4byte	0x957
 5325 0bfd 02       		.byte	0x2
 5326 0bfe 1A       		.uleb128 0x1a
 5327 0bff 68020000 		.4byte	.LASF182
 5328 0c03 10       		.byte	0x10
 5329 0c04 7801     		.2byte	0x178
 5330 0c06 97000000 		.4byte	0x97
 5331 0c0a 04       		.byte	0x4
 5332 0c0b 00       		.byte	0
 5333 0c0c 09       		.uleb128 0x9
 5334 0c0d 020A0000 		.4byte	.LASF183
 5335 0c11 10       		.byte	0x10
 5336 0c12 7901     		.2byte	0x179
 5337 0c14 CE0B0000 		.4byte	0xbce
 5338 0c18 1D       		.uleb128 0x1d
 5339 0c19 09       		.byte	0x9
 5340 0c1a 10       		.byte	0x10
 5341 0c1b A401     		.2byte	0x1a4
 5342 0c1d 8A0C0000 		.4byte	0xc8a
 5343 0c21 1A       		.uleb128 0x1a
 5344 0c22 FD110000 		.4byte	.LASF166
 5345 0c26 10       		.byte	0x10
 5346 0c27 A501     		.2byte	0x1a5
 5347 0c29 97000000 		.4byte	0x97
 5348 0c2d 00       		.byte	0
 5349 0c2e 1A       		.uleb128 0x1a
 5350 0c2f 010B0000 		.4byte	.LASF167
 5351 0c33 10       		.byte	0x10
 5352 0c34 A601     		.2byte	0x1a6
 5353 0c36 97000000 		.4byte	0x97
 5354 0c3a 01       		.byte	0x1
 5355 0c3b 1A       		.uleb128 0x1a
 5356 0c3c AA030000 		.4byte	.LASF181
 5357 0c40 10       		.byte	0x10
 5358 0c41 A701     		.2byte	0x1a7
 5359 0c43 57090000 		.4byte	0x957
 5360 0c47 02       		.byte	0x2
 5361 0c48 1A       		.uleb128 0x1a
 5362 0c49 2D0C0000 		.4byte	.LASF184
 5363 0c4d 10       		.byte	0x10
 5364 0c4e A801     		.2byte	0x1a8
 5365 0c50 97000000 		.4byte	0x97
 5366 0c54 04       		.byte	0x4
 5367 0c55 1A       		.uleb128 0x1a
 5368 0c56 480E0000 		.4byte	.LASF185
 5369 0c5a 10       		.byte	0x10
 5370 0c5b A901     		.2byte	0x1a9
 5371 0c5d 97000000 		.4byte	0x97
 5372 0c61 05       		.byte	0x5
ARM GAS  /tmp/ccCxIftT.s 			page 141


 5373 0c62 1A       		.uleb128 0x1a
 5374 0c63 5D070000 		.4byte	.LASF186
 5375 0c67 10       		.byte	0x10
 5376 0c68 AA01     		.2byte	0x1aa
 5377 0c6a 97000000 		.4byte	0x97
 5378 0c6e 06       		.byte	0x6
 5379 0c6f 1A       		.uleb128 0x1a
 5380 0c70 E90D0000 		.4byte	.LASF187
 5381 0c74 10       		.byte	0x10
 5382 0c75 AB01     		.2byte	0x1ab
 5383 0c77 97000000 		.4byte	0x97
 5384 0c7b 07       		.byte	0x7
 5385 0c7c 1A       		.uleb128 0x1a
 5386 0c7d 39000000 		.4byte	.LASF188
 5387 0c81 10       		.byte	0x10
 5388 0c82 AC01     		.2byte	0x1ac
 5389 0c84 97000000 		.4byte	0x97
 5390 0c88 08       		.byte	0x8
 5391 0c89 00       		.byte	0
 5392 0c8a 09       		.uleb128 0x9
 5393 0c8b ED110000 		.4byte	.LASF189
 5394 0c8f 10       		.byte	0x10
 5395 0c90 AD01     		.2byte	0x1ad
 5396 0c92 180C0000 		.4byte	0xc18
 5397 0c96 0E       		.uleb128 0xe
 5398 0c97 14       		.byte	0x14
 5399 0c98 11       		.byte	0x11
 5400 0c99 4A       		.byte	0x4a
 5401 0c9a DB0C0000 		.4byte	0xcdb
 5402 0c9e 0F       		.uleb128 0xf
 5403 0c9f 6A040000 		.4byte	.LASF190
 5404 0ca3 11       		.byte	0x11
 5405 0ca4 55       		.byte	0x55
 5406 0ca5 E00C0000 		.4byte	0xce0
 5407 0ca9 00       		.byte	0
 5408 0caa 0F       		.uleb128 0xf
 5409 0cab 860D0000 		.4byte	.LASF191
 5410 0caf 11       		.byte	0x11
 5411 0cb0 62       		.byte	0x62
 5412 0cb1 1B030000 		.4byte	0x31b
 5413 0cb5 04       		.byte	0x4
 5414 0cb6 0F       		.uleb128 0xf
 5415 0cb7 0B0F0000 		.4byte	.LASF192
 5416 0cbb 11       		.byte	0x11
 5417 0cbc 6F       		.byte	0x6f
 5418 0cbd E00C0000 		.4byte	0xce0
 5419 0cc1 08       		.byte	0x8
 5420 0cc2 0F       		.uleb128 0xf
 5421 0cc3 44080000 		.4byte	.LASF193
 5422 0cc7 11       		.byte	0x11
 5423 0cc8 78       		.byte	0x78
 5424 0cc9 EB0C0000 		.4byte	0xceb
 5425 0ccd 0C       		.byte	0xc
 5426 0cce 0F       		.uleb128 0xf
 5427 0ccf 280B0000 		.4byte	.LASF194
 5428 0cd3 11       		.byte	0x11
 5429 0cd4 7D       		.byte	0x7d
ARM GAS  /tmp/ccCxIftT.s 			page 142


 5430 0cd5 1B030000 		.4byte	0x31b
 5431 0cd9 10       		.byte	0x10
 5432 0cda 00       		.byte	0
 5433 0cdb 25       		.uleb128 0x25
 5434 0cdc 29090000 		.4byte	0x929
 5435 0ce0 12       		.uleb128 0x12
 5436 0ce1 04       		.byte	0x4
 5437 0ce2 DB0C0000 		.4byte	0xcdb
 5438 0ce6 25       		.uleb128 0x25
 5439 0ce7 97000000 		.4byte	0x97
 5440 0ceb 12       		.uleb128 0x12
 5441 0cec 04       		.byte	0x4
 5442 0ced E60C0000 		.4byte	0xce6
 5443 0cf1 04       		.uleb128 0x4
 5444 0cf2 7C0D0000 		.4byte	.LASF195
 5445 0cf6 11       		.byte	0x11
 5446 0cf7 7E       		.byte	0x7e
 5447 0cf8 960C0000 		.4byte	0xc96
 5448 0cfc 0E       		.uleb128 0xe
 5449 0cfd 08       		.byte	0x8
 5450 0cfe 12       		.byte	0x12
 5451 0cff 64       		.byte	0x64
 5452 0d00 1D0D0000 		.4byte	0xd1d
 5453 0d04 0F       		.uleb128 0xf
 5454 0d05 0B120000 		.4byte	.LASF196
 5455 0d09 12       		.byte	0x12
 5456 0d0a 66       		.byte	0x66
 5457 0d0b 1D0D0000 		.4byte	0xd1d
 5458 0d0f 00       		.byte	0
 5459 0d10 0F       		.uleb128 0xf
 5460 0d11 18120000 		.4byte	.LASF197
 5461 0d15 12       		.byte	0x12
 5462 0d16 68       		.byte	0x68
 5463 0d17 230D0000 		.4byte	0xd23
 5464 0d1b 04       		.byte	0x4
 5465 0d1c 00       		.byte	0
 5466 0d1d 12       		.uleb128 0x12
 5467 0d1e 04       		.byte	0x4
 5468 0d1f 8A0C0000 		.4byte	0xc8a
 5469 0d23 12       		.uleb128 0x12
 5470 0d24 04       		.byte	0x4
 5471 0d25 290D0000 		.4byte	0xd29
 5472 0d29 12       		.uleb128 0x12
 5473 0d2a 04       		.byte	0x4
 5474 0d2b F10C0000 		.4byte	0xcf1
 5475 0d2f 04       		.uleb128 0x4
 5476 0d30 F30B0000 		.4byte	.LASF198
 5477 0d34 12       		.byte	0x12
 5478 0d35 69       		.byte	0x69
 5479 0d36 FC0C0000 		.4byte	0xcfc
 5480 0d3a 0E       		.uleb128 0xe
 5481 0d3b 0C       		.byte	0xc
 5482 0d3c 12       		.byte	0x12
 5483 0d3d 6F       		.byte	0x6f
 5484 0d3e 670D0000 		.4byte	0xd67
 5485 0d42 0F       		.uleb128 0xf
 5486 0d43 140D0000 		.4byte	.LASF199
ARM GAS  /tmp/ccCxIftT.s 			page 143


 5487 0d47 12       		.byte	0x12
 5488 0d48 71       		.byte	0x71
 5489 0d49 670D0000 		.4byte	0xd67
 5490 0d4d 00       		.byte	0
 5491 0d4e 0F       		.uleb128 0xf
 5492 0d4f 64060000 		.4byte	.LASF200
 5493 0d53 12       		.byte	0x12
 5494 0d54 73       		.byte	0x73
 5495 0d55 6D0D0000 		.4byte	0xd6d
 5496 0d59 04       		.byte	0x4
 5497 0d5a 0F       		.uleb128 0xf
 5498 0d5b 2E060000 		.4byte	.LASF201
 5499 0d5f 12       		.byte	0x12
 5500 0d60 7C       		.byte	0x7c
 5501 0d61 730D0000 		.4byte	0xd73
 5502 0d65 08       		.byte	0x8
 5503 0d66 00       		.byte	0
 5504 0d67 12       		.uleb128 0x12
 5505 0d68 04       		.byte	0x4
 5506 0d69 C20B0000 		.4byte	0xbc2
 5507 0d6d 12       		.uleb128 0x12
 5508 0d6e 04       		.byte	0x4
 5509 0d6f 2F0D0000 		.4byte	0xd2f
 5510 0d73 12       		.uleb128 0x12
 5511 0d74 04       		.byte	0x4
 5512 0d75 0C0C0000 		.4byte	0xc0c
 5513 0d79 04       		.uleb128 0x4
 5514 0d7a 88070000 		.4byte	.LASF202
 5515 0d7e 12       		.byte	0x12
 5516 0d7f 7D       		.byte	0x7d
 5517 0d80 3A0D0000 		.4byte	0xd3a
 5518 0d84 08       		.uleb128 0x8
 5519 0d85 5A110000 		.4byte	.LASF203
 5520 0d89 12       		.byte	0x12
 5521 0d8a 80       		.byte	0x80
 5522 0d8b 790D0000 		.4byte	0xd79
 5523 0d8f 04       		.uleb128 0x4
 5524 0d90 22060000 		.4byte	.LASF204
 5525 0d94 13       		.byte	0x13
 5526 0d95 45       		.byte	0x45
 5527 0d96 97000000 		.4byte	0x97
 5528 0d9a 26       		.uleb128 0x26
 5529 0d9b 01       		.byte	0x1
 5530 0d9c 45000000 		.4byte	0x45
 5531 0da0 13       		.byte	0x13
 5532 0da1 49       		.byte	0x49
 5533 0da2 B30D0000 		.4byte	0xdb3
 5534 0da6 24       		.uleb128 0x24
 5535 0da7 C9000000 		.4byte	.LASF205
 5536 0dab 00       		.byte	0
 5537 0dac 24       		.uleb128 0x24
 5538 0dad B3070000 		.4byte	.LASF206
 5539 0db1 01       		.byte	0x1
 5540 0db2 00       		.byte	0
 5541 0db3 04       		.uleb128 0x4
 5542 0db4 1A090000 		.4byte	.LASF207
 5543 0db8 13       		.byte	0x13
ARM GAS  /tmp/ccCxIftT.s 			page 144


 5544 0db9 4C       		.byte	0x4c
 5545 0dba 9A0D0000 		.4byte	0xd9a
 5546 0dbe 0E       		.uleb128 0xe
 5547 0dbf 18       		.byte	0x18
 5548 0dc0 13       		.byte	0x13
 5549 0dc1 54       		.byte	0x54
 5550 0dc2 030E0000 		.4byte	0xe03
 5551 0dc6 11       		.uleb128 0x11
 5552 0dc7 72657100 		.ascii	"req\000"
 5553 0dcb 13       		.byte	0x13
 5554 0dcc 57       		.byte	0x57
 5555 0dcd F60A0000 		.4byte	0xaf6
 5556 0dd1 00       		.byte	0
 5557 0dd2 0F       		.uleb128 0xf
 5558 0dd3 00050000 		.4byte	.LASF208
 5559 0dd7 13       		.byte	0x13
 5560 0dd8 5B       		.byte	0x5b
 5561 0dd9 030E0000 		.4byte	0xe03
 5562 0ddd 08       		.byte	0x8
 5563 0dde 0F       		.uleb128 0xf
 5564 0ddf 9D030000 		.4byte	.LASF209
 5565 0de3 13       		.byte	0x13
 5566 0de4 5E       		.byte	0x5e
 5567 0de5 A7000000 		.4byte	0xa7
 5568 0de9 0C       		.byte	0xc
 5569 0dea 0F       		.uleb128 0xf
 5570 0deb 84100000 		.4byte	.LASF210
 5571 0def 13       		.byte	0x13
 5572 0df0 61       		.byte	0x61
 5573 0df1 1B030000 		.4byte	0x31b
 5574 0df5 10       		.byte	0x10
 5575 0df6 0F       		.uleb128 0xf
 5576 0df7 03060000 		.4byte	.LASF211
 5577 0dfb 13       		.byte	0x13
 5578 0dfc 65       		.byte	0x65
 5579 0dfd E00C0000 		.4byte	0xce0
 5580 0e01 14       		.byte	0x14
 5581 0e02 00       		.byte	0
 5582 0e03 12       		.uleb128 0x12
 5583 0e04 04       		.byte	0x4
 5584 0e05 97000000 		.4byte	0x97
 5585 0e09 04       		.uleb128 0x4
 5586 0e0a 45030000 		.4byte	.LASF212
 5587 0e0e 13       		.byte	0x13
 5588 0e0f 66       		.byte	0x66
 5589 0e10 BE0D0000 		.4byte	0xdbe
 5590 0e14 08       		.uleb128 0x8
 5591 0e15 73070000 		.4byte	.LASF213
 5592 0e19 13       		.byte	0x13
 5593 0e1a 67       		.byte	0x67
 5594 0e1b 090E0000 		.4byte	0xe09
 5595 0e1f 08       		.uleb128 0x8
 5596 0e20 B40F0000 		.4byte	.LASF214
 5597 0e24 14       		.byte	0x14
 5598 0e25 4B       		.byte	0x4b
 5599 0e26 F10C0000 		.4byte	0xcf1
 5600 0e2a 08       		.uleb128 0x8
ARM GAS  /tmp/ccCxIftT.s 			page 145


 5601 0e2b 2B0A0000 		.4byte	.LASF215
 5602 0e2f 14       		.byte	0x14
 5603 0e30 4C       		.byte	0x4c
 5604 0e31 F10C0000 		.4byte	0xcf1
 5605 0e35 27       		.uleb128 0x27
 5606 0e36 1F0E0000 		.4byte	0xe1f
 5607 0e3a 01       		.byte	0x1
 5608 0e3b 5D       		.byte	0x5d
 5609 0e3c 05       		.uleb128 0x5
 5610 0e3d 03       		.byte	0x3
 5611 0e3e 00000000 		.4byte	udi_api_cdc_comm
 5612 0e42 27       		.uleb128 0x27
 5613 0e43 2A0E0000 		.4byte	0xe2a
 5614 0e47 01       		.byte	0x1
 5615 0e48 63       		.byte	0x63
 5616 0e49 05       		.uleb128 0x5
 5617 0e4a 03       		.byte	0x3
 5618 0e4b 00000000 		.4byte	udi_api_cdc_data
 5619 0e4f 0C       		.uleb128 0xc
 5620 0e50 C7090000 		.4byte	0x9c7
 5621 0e54 5F0E0000 		.4byte	0xe5f
 5622 0e58 0D       		.uleb128 0xd
 5623 0e59 D9000000 		.4byte	0xd9
 5624 0e5d 00       		.byte	0
 5625 0e5e 00       		.byte	0
 5626 0e5f 22       		.uleb128 0x22
 5627 0e60 93080000 		.4byte	.LASF216
 5628 0e64 01       		.byte	0x1
 5629 0e65 DD       		.byte	0xdd
 5630 0e66 4F0E0000 		.4byte	0xe4f
 5631 0e6a 05       		.uleb128 0x5
 5632 0e6b 03       		.byte	0x3
 5633 0e6c 00000000 		.4byte	udi_cdc_line_coding
 5634 0e70 0C       		.uleb128 0xc
 5635 0e71 29090000 		.4byte	0x929
 5636 0e75 800E0000 		.4byte	0xe80
 5637 0e79 0D       		.uleb128 0xd
 5638 0e7a D9000000 		.4byte	0xd9
 5639 0e7e 00       		.byte	0
 5640 0e7f 00       		.byte	0
 5641 0e80 22       		.uleb128 0x22
 5642 0e81 290F0000 		.4byte	.LASF217
 5643 0e85 01       		.byte	0x1
 5644 0e86 DE       		.byte	0xde
 5645 0e87 700E0000 		.4byte	0xe70
 5646 0e8b 05       		.uleb128 0x5
 5647 0e8c 03       		.byte	0x3
 5648 0e8d 00000000 		.4byte	udi_cdc_serial_state_msg_ongoing
 5649 0e91 0C       		.uleb128 0xc
 5650 0e92 63090000 		.4byte	0x963
 5651 0e96 A10E0000 		.4byte	0xea1
 5652 0e9a 0D       		.uleb128 0xd
 5653 0e9b D9000000 		.4byte	0xd9
 5654 0e9f 00       		.byte	0
 5655 0ea0 00       		.byte	0
 5656 0ea1 05       		.uleb128 0x5
 5657 0ea2 910E0000 		.4byte	0xe91
ARM GAS  /tmp/ccCxIftT.s 			page 146


 5658 0ea6 22       		.uleb128 0x22
 5659 0ea7 86120000 		.4byte	.LASF218
 5660 0eab 01       		.byte	0x1
 5661 0eac DF       		.byte	0xdf
 5662 0ead A10E0000 		.4byte	0xea1
 5663 0eb1 05       		.uleb128 0x5
 5664 0eb2 03       		.byte	0x3
 5665 0eb3 00000000 		.4byte	udi_cdc_state
 5666 0eb7 0C       		.uleb128 0xc
 5667 0eb8 9F0A0000 		.4byte	0xa9f
 5668 0ebc C70E0000 		.4byte	0xec7
 5669 0ec0 0D       		.uleb128 0xd
 5670 0ec1 D9000000 		.4byte	0xd9
 5671 0ec5 00       		.byte	0
 5672 0ec6 00       		.byte	0
 5673 0ec7 22       		.uleb128 0x22
 5674 0ec8 E30C0000 		.4byte	.LASF219
 5675 0ecc 01       		.byte	0x1
 5676 0ecd E0       		.byte	0xe0
 5677 0ece B70E0000 		.4byte	0xeb7
 5678 0ed2 05       		.uleb128 0x5
 5679 0ed3 03       		.byte	0x3
 5680 0ed4 00000000 		.4byte	uid_cdc_state_msg
 5681 0ed8 22       		.uleb128 0x22
 5682 0ed9 E3050000 		.4byte	.LASF220
 5683 0edd 01       		.byte	0x1
 5684 0ede E3       		.byte	0xe3
 5685 0edf A2000000 		.4byte	0xa2
 5686 0ee3 05       		.uleb128 0x5
 5687 0ee4 03       		.byte	0x3
 5688 0ee5 00000000 		.4byte	udi_cdc_nb_comm_enabled
 5689 0ee9 22       		.uleb128 0x22
 5690 0eea 87050000 		.4byte	.LASF221
 5691 0eee 01       		.byte	0x1
 5692 0eef ED       		.byte	0xed
 5693 0ef0 A2000000 		.4byte	0xa2
 5694 0ef4 05       		.uleb128 0x5
 5695 0ef5 03       		.byte	0x3
 5696 0ef6 00000000 		.4byte	udi_cdc_nb_data_enabled
 5697 0efa 22       		.uleb128 0x22
 5698 0efb AD080000 		.4byte	.LASF222
 5699 0eff 01       		.byte	0x1
 5700 0f00 EE       		.byte	0xee
 5701 0f01 30090000 		.4byte	0x930
 5702 0f05 05       		.uleb128 0x5
 5703 0f06 03       		.byte	0x3
 5704 0f07 00000000 		.4byte	udi_cdc_data_running
 5705 0f0b 0C       		.uleb128 0xc
 5706 0f0c 97000000 		.4byte	0x97
 5707 0f10 280F0000 		.4byte	0xf28
 5708 0f14 0D       		.uleb128 0xd
 5709 0f15 D9000000 		.4byte	0xd9
 5710 0f19 00       		.byte	0
 5711 0f1a 0D       		.uleb128 0xd
 5712 0f1b D9000000 		.4byte	0xd9
 5713 0f1f 01       		.byte	0x1
 5714 0f20 28       		.uleb128 0x28
ARM GAS  /tmp/ccCxIftT.s 			page 147


 5715 0f21 D9000000 		.4byte	0xd9
 5716 0f25 3F01     		.2byte	0x13f
 5717 0f27 00       		.byte	0
 5718 0f28 22       		.uleb128 0x22
 5719 0f29 EE0E0000 		.4byte	.LASF223
 5720 0f2d 01       		.byte	0x1
 5721 0f2e F0       		.byte	0xf0
 5722 0f2f 0B0F0000 		.4byte	0xf0b
 5723 0f33 05       		.uleb128 0x5
 5724 0f34 03       		.byte	0x3
 5725 0f35 00000000 		.4byte	udi_cdc_rx_buf
 5726 0f39 0C       		.uleb128 0xc
 5727 0f3a B2000000 		.4byte	0xb2
 5728 0f3e 4F0F0000 		.4byte	0xf4f
 5729 0f42 0D       		.uleb128 0xd
 5730 0f43 D9000000 		.4byte	0xd9
 5731 0f47 00       		.byte	0
 5732 0f48 0D       		.uleb128 0xd
 5733 0f49 D9000000 		.4byte	0xd9
 5734 0f4d 01       		.byte	0x1
 5735 0f4e 00       		.byte	0
 5736 0f4f 05       		.uleb128 0x5
 5737 0f50 390F0000 		.4byte	0xf39
 5738 0f54 22       		.uleb128 0x22
 5739 0f55 57000000 		.4byte	.LASF224
 5740 0f59 01       		.byte	0x1
 5741 0f5a F2       		.byte	0xf2
 5742 0f5b 4F0F0000 		.4byte	0xf4f
 5743 0f5f 05       		.uleb128 0x5
 5744 0f60 03       		.byte	0x3
 5745 0f61 00000000 		.4byte	udi_cdc_rx_buf_nb
 5746 0f65 0C       		.uleb128 0xc
 5747 0f66 A2000000 		.4byte	0xa2
 5748 0f6a 750F0000 		.4byte	0xf75
 5749 0f6e 0D       		.uleb128 0xd
 5750 0f6f D9000000 		.4byte	0xd9
 5751 0f73 00       		.byte	0
 5752 0f74 00       		.byte	0
 5753 0f75 05       		.uleb128 0x5
 5754 0f76 650F0000 		.4byte	0xf65
 5755 0f7a 22       		.uleb128 0x22
 5756 0f7b 74050000 		.4byte	.LASF225
 5757 0f7f 01       		.byte	0x1
 5758 0f80 F4       		.byte	0xf4
 5759 0f81 750F0000 		.4byte	0xf75
 5760 0f85 05       		.uleb128 0x5
 5761 0f86 03       		.byte	0x3
 5762 0f87 00000000 		.4byte	udi_cdc_rx_buf_sel
 5763 0f8b 0C       		.uleb128 0xc
 5764 0f8c B2000000 		.4byte	0xb2
 5765 0f90 9B0F0000 		.4byte	0xf9b
 5766 0f94 0D       		.uleb128 0xd
 5767 0f95 D9000000 		.4byte	0xd9
 5768 0f99 00       		.byte	0
 5769 0f9a 00       		.byte	0
 5770 0f9b 05       		.uleb128 0x5
 5771 0f9c 8B0F0000 		.4byte	0xf8b
ARM GAS  /tmp/ccCxIftT.s 			page 148


 5772 0fa0 22       		.uleb128 0x22
 5773 0fa1 21000000 		.4byte	.LASF226
 5774 0fa5 01       		.byte	0x1
 5775 0fa6 F6       		.byte	0xf6
 5776 0fa7 9B0F0000 		.4byte	0xf9b
 5777 0fab 05       		.uleb128 0x5
 5778 0fac 03       		.byte	0x3
 5779 0fad 00000000 		.4byte	udi_cdc_rx_pos
 5780 0fb1 0C       		.uleb128 0xc
 5781 0fb2 30090000 		.4byte	0x930
 5782 0fb6 C10F0000 		.4byte	0xfc1
 5783 0fba 0D       		.uleb128 0xd
 5784 0fbb D9000000 		.4byte	0xd9
 5785 0fbf 00       		.byte	0
 5786 0fc0 00       		.byte	0
 5787 0fc1 05       		.uleb128 0x5
 5788 0fc2 B10F0000 		.4byte	0xfb1
 5789 0fc6 22       		.uleb128 0x22
 5790 0fc7 2F120000 		.4byte	.LASF227
 5791 0fcb 01       		.byte	0x1
 5792 0fcc F8       		.byte	0xf8
 5793 0fcd C10F0000 		.4byte	0xfc1
 5794 0fd1 05       		.uleb128 0x5
 5795 0fd2 03       		.byte	0x3
 5796 0fd3 00000000 		.4byte	udi_cdc_rx_trans_ongoing
 5797 0fd7 22       		.uleb128 0x22
 5798 0fd8 12000000 		.4byte	.LASF228
 5799 0fdc 01       		.byte	0x1
 5800 0fdd FE       		.byte	0xfe
 5801 0fde 0B0F0000 		.4byte	0xf0b
 5802 0fe2 05       		.uleb128 0x5
 5803 0fe3 03       		.byte	0x3
 5804 0fe4 00000000 		.4byte	udi_cdc_tx_buf
 5805 0fe8 0C       		.uleb128 0xc
 5806 0fe9 A7000000 		.4byte	0xa7
 5807 0fed FE0F0000 		.4byte	0xffe
 5808 0ff1 0D       		.uleb128 0xd
 5809 0ff2 D9000000 		.4byte	0xd9
 5810 0ff6 00       		.byte	0
 5811 0ff7 0D       		.uleb128 0xd
 5812 0ff8 D9000000 		.4byte	0xd9
 5813 0ffc 01       		.byte	0x1
 5814 0ffd 00       		.byte	0
 5815 0ffe 29       		.uleb128 0x29
 5816 0fff A7090000 		.4byte	.LASF229
 5817 1003 01       		.byte	0x1
 5818 1004 0001     		.2byte	0x100
 5819 1006 E80F0000 		.4byte	0xfe8
 5820 100a 05       		.uleb128 0x5
 5821 100b 03       		.byte	0x3
 5822 100c 00000000 		.4byte	udi_cdc_tx_buf_nb
 5823 1010 29       		.uleb128 0x29
 5824 1011 7C0E0000 		.4byte	.LASF230
 5825 1015 01       		.byte	0x1
 5826 1016 0201     		.2byte	0x102
 5827 1018 750F0000 		.4byte	0xf75
 5828 101c 05       		.uleb128 0x5
ARM GAS  /tmp/ccCxIftT.s 			page 149


 5829 101d 03       		.byte	0x3
 5830 101e 00000000 		.4byte	udi_cdc_tx_buf_sel
 5831 1022 0C       		.uleb128 0xc
 5832 1023 A7000000 		.4byte	0xa7
 5833 1027 32100000 		.4byte	0x1032
 5834 102b 0D       		.uleb128 0xd
 5835 102c D9000000 		.4byte	0xd9
 5836 1030 00       		.byte	0
 5837 1031 00       		.byte	0
 5838 1032 29       		.uleb128 0x29
 5839 1033 B0020000 		.4byte	.LASF231
 5840 1037 01       		.byte	0x1
 5841 1038 0401     		.2byte	0x104
 5842 103a 22100000 		.4byte	0x1022
 5843 103e 05       		.uleb128 0x5
 5844 103f 03       		.byte	0x3
 5845 1040 00000000 		.4byte	udi_cdc_tx_sof_num
 5846 1044 29       		.uleb128 0x29
 5847 1045 3C070000 		.4byte	.LASF232
 5848 1049 01       		.byte	0x1
 5849 104a 0601     		.2byte	0x106
 5850 104c C10F0000 		.4byte	0xfc1
 5851 1050 05       		.uleb128 0x5
 5852 1051 03       		.byte	0x3
 5853 1052 00000000 		.4byte	udi_cdc_tx_trans_ongoing
 5854 1056 29       		.uleb128 0x29
 5855 1057 560C0000 		.4byte	.LASF233
 5856 105b 01       		.byte	0x1
 5857 105c 0801     		.2byte	0x108
 5858 105e C10F0000 		.4byte	0xfc1
 5859 1062 05       		.uleb128 0x5
 5860 1063 03       		.byte	0x3
 5861 1064 00000000 		.4byte	udi_cdc_tx_both_buf_to_send
 5862 1068 2A       		.uleb128 0x2a
 5863 1069 A2100000 		.4byte	.LASF235
 5864 106d 01       		.byte	0x1
 5865 106e 7E04     		.2byte	0x47e
 5866 1070 82090000 		.4byte	0x982
 5867 1074 00000000 		.4byte	.LFB193
 5868 1078 0A000000 		.4byte	.LFE193-.LFB193
 5869 107c 01       		.uleb128 0x1
 5870 107d 9C       		.byte	0x9c
 5871 107e C0100000 		.4byte	0x10c0
 5872 1082 2B       		.uleb128 0x2b
 5873 1083 62756600 		.ascii	"buf\000"
 5874 1087 01       		.byte	0x1
 5875 1088 7E04     		.2byte	0x47e
 5876 108a 01090000 		.4byte	0x901
 5877 108e 00000000 		.4byte	.LLST95
 5878 1092 2C       		.uleb128 0x2c
 5879 1093 51090000 		.4byte	.LASF234
 5880 1097 01       		.byte	0x1
 5881 1098 7E04     		.2byte	0x47e
 5882 109a 82090000 		.4byte	0x982
 5883 109e 2C000000 		.4byte	.LLST96
 5884 10a2 2D       		.uleb128 0x2d
 5885 10a3 0A000000 		.4byte	.LVL245
ARM GAS  /tmp/ccCxIftT.s 			page 150


 5886 10a7 C0100000 		.4byte	0x10c0
 5887 10ab 2E       		.uleb128 0x2e
 5888 10ac 01       		.uleb128 0x1
 5889 10ad 50       		.byte	0x50
 5890 10ae 01       		.uleb128 0x1
 5891 10af 30       		.byte	0x30
 5892 10b0 2E       		.uleb128 0x2e
 5893 10b1 01       		.uleb128 0x1
 5894 10b2 51       		.byte	0x51
 5895 10b3 03       		.uleb128 0x3
 5896 10b4 F3       		.byte	0xf3
 5897 10b5 01       		.uleb128 0x1
 5898 10b6 50       		.byte	0x50
 5899 10b7 2E       		.uleb128 0x2e
 5900 10b8 01       		.uleb128 0x1
 5901 10b9 52       		.byte	0x52
 5902 10ba 03       		.uleb128 0x3
 5903 10bb F3       		.byte	0xf3
 5904 10bc 01       		.uleb128 0x1
 5905 10bd 51       		.byte	0x51
 5906 10be 00       		.byte	0
 5907 10bf 00       		.byte	0
 5908 10c0 2A       		.uleb128 0x2a
 5909 10c1 970D0000 		.4byte	.LASF236
 5910 10c5 01       		.byte	0x1
 5911 10c6 4A04     		.2byte	0x44a
 5912 10c8 82090000 		.4byte	0x982
 5913 10cc 00000000 		.4byte	.LFB192
 5914 10d0 9C000000 		.4byte	.LFE192-.LFB192
 5915 10d4 01       		.uleb128 0x1
 5916 10d5 9C       		.byte	0x9c
 5917 10d6 4A120000 		.4byte	0x124a
 5918 10da 2C       		.uleb128 0x2c
 5919 10db A2090000 		.4byte	.LASF237
 5920 10df 01       		.byte	0x1
 5921 10e0 4A04     		.2byte	0x44a
 5922 10e2 97000000 		.4byte	0x97
 5923 10e6 58000000 		.4byte	.LLST87
 5924 10ea 2B       		.uleb128 0x2b
 5925 10eb 62756600 		.ascii	"buf\000"
 5926 10ef 01       		.byte	0x1
 5927 10f0 4A04     		.2byte	0x44a
 5928 10f2 01090000 		.4byte	0x901
 5929 10f6 77000000 		.4byte	.LLST88
 5930 10fa 2C       		.uleb128 0x2c
 5931 10fb 51090000 		.4byte	.LASF234
 5932 10ff 01       		.byte	0x1
 5933 1100 4A04     		.2byte	0x44a
 5934 1102 82090000 		.4byte	0x982
 5935 1106 98000000 		.4byte	.LLST89
 5936 110a 2F       		.uleb128 0x2f
 5937 110b 07010000 		.4byte	.LASF244
 5938 110f 01       		.byte	0x1
 5939 1110 4C04     		.2byte	0x44c
 5940 1112 13090000 		.4byte	0x913
 5941 1116 30       		.uleb128 0x30
 5942 1117 D5080000 		.4byte	.LASF238
ARM GAS  /tmp/ccCxIftT.s 			page 151


 5943 111b 01       		.byte	0x1
 5944 111c 4D04     		.2byte	0x44d
 5945 111e 97000000 		.4byte	0x97
 5946 1122 C1000000 		.4byte	.LLST90
 5947 1126 30       		.uleb128 0x30
 5948 1127 9F0F0000 		.4byte	.LASF239
 5949 112b 01       		.byte	0x1
 5950 112c 4E04     		.2byte	0x44e
 5951 112e A7000000 		.4byte	0xa7
 5952 1132 DF000000 		.4byte	.LLST91
 5953 1136 30       		.uleb128 0x30
 5954 1137 330B0000 		.4byte	.LASF240
 5955 113b 01       		.byte	0x1
 5956 113c 4F04     		.2byte	0x44f
 5957 113e 82090000 		.4byte	0x982
 5958 1142 03010000 		.4byte	.LLST92
 5959 1146 30       		.uleb128 0x30
 5960 1147 4B110000 		.4byte	.LASF241
 5961 114b 01       		.byte	0x1
 5962 114c 5004     		.2byte	0x450
 5963 114e 030E0000 		.4byte	0xe03
 5964 1152 21010000 		.4byte	.LLST93
 5965 1156 31       		.uleb128 0x31
 5966 1157 C9100000 		.4byte	.LASF246
 5967 115b 01       		.byte	0x1
 5968 115c 5A04     		.2byte	0x45a
 5969 115e 32       		.uleb128 0x32
 5970 115f 25230000 		.4byte	0x2325
 5971 1163 0A000000 		.4byte	.LBB773
 5972 1167 78020000 		.4byte	.Ldebug_ranges0+0x278
 5973 116b 01       		.byte	0x1
 5974 116c 6804     		.2byte	0x468
 5975 116e BF110000 		.4byte	0x11bf
 5976 1172 33       		.uleb128 0x33
 5977 1173 78020000 		.4byte	.Ldebug_ranges0+0x278
 5978 1177 34       		.uleb128 0x34
 5979 1178 35230000 		.4byte	0x2335
 5980 117c 35       		.uleb128 0x35
 5981 117d 41230000 		.4byte	0x2341
 5982 1181 2A000000 		.4byte	.LBB775
 5983 1185 04000000 		.4byte	.LBE775-.LBB775
 5984 1189 04       		.byte	0x4
 5985 118a 99       		.byte	0x99
 5986 118b 9F110000 		.4byte	0x119f
 5987 118f 36       		.uleb128 0x36
 5988 1190 2A000000 		.4byte	.LBB776
 5989 1194 04000000 		.4byte	.LBE776-.LBB776
 5990 1198 34       		.uleb128 0x34
 5991 1199 52230000 		.4byte	0x2352
 5992 119d 00       		.byte	0
 5993 119e 00       		.byte	0
 5994 119f 37       		.uleb128 0x37
 5995 11a0 5F230000 		.4byte	0x235f
 5996 11a4 2E000000 		.4byte	.LBB777
 5997 11a8 02000000 		.4byte	.LBE777-.LBB777
 5998 11ac 04       		.byte	0x4
 5999 11ad 9A       		.byte	0x9a
ARM GAS  /tmp/ccCxIftT.s 			page 152


 6000 11ae 37       		.uleb128 0x37
 6001 11af 71230000 		.4byte	0x2371
 6002 11b3 30000000 		.4byte	.LBB779
 6003 11b7 04000000 		.4byte	.LBE779-.LBB779
 6004 11bb 04       		.byte	0x4
 6005 11bc 9A       		.byte	0x9a
 6006 11bd 00       		.byte	0
 6007 11be 00       		.byte	0
 6008 11bf 38       		.uleb128 0x38
 6009 11c0 0F140000 		.4byte	0x140f
 6010 11c4 22000000 		.4byte	.LBB784
 6011 11c8 06000000 		.4byte	.LBE784-.LBB784
 6012 11cc 01       		.byte	0x1
 6013 11cd 5C04     		.2byte	0x45c
 6014 11cf EC110000 		.4byte	0x11ec
 6015 11d3 39       		.uleb128 0x39
 6016 11d4 20140000 		.4byte	0x1420
 6017 11d8 3F010000 		.4byte	.LLST94
 6018 11dc 3A       		.uleb128 0x3a
 6019 11dd 28000000 		.4byte	.LVL229
 6020 11e1 57140000 		.4byte	0x1457
 6021 11e5 2E       		.uleb128 0x2e
 6022 11e6 01       		.uleb128 0x1
 6023 11e7 50       		.byte	0x50
 6024 11e8 01       		.uleb128 0x1
 6025 11e9 30       		.byte	0x30
 6026 11ea 00       		.byte	0
 6027 11eb 00       		.byte	0
 6028 11ec 32       		.uleb128 0x32
 6029 11ed F1220000 		.4byte	0x22f1
 6030 11f1 64000000 		.4byte	.LBB789
 6031 11f5 A0020000 		.4byte	.Ldebug_ranges0+0x2a0
 6032 11f9 01       		.byte	0x1
 6033 11fa 7104     		.2byte	0x471
 6034 11fc 33120000 		.4byte	0x1233
 6035 1200 3B       		.uleb128 0x3b
 6036 1201 FD220000 		.4byte	0x22fd
 6037 1205 36       		.uleb128 0x36
 6038 1206 6E000000 		.4byte	.LBB791
 6039 120a 0C000000 		.4byte	.LBE791-.LBB791
 6040 120e 3B       		.uleb128 0x3b
 6041 120f FD220000 		.4byte	0x22fd
 6042 1213 37       		.uleb128 0x37
 6043 1214 71230000 		.4byte	0x2371
 6044 1218 74000000 		.4byte	.LBB793
 6045 121c 04000000 		.4byte	.LBE793-.LBB793
 6046 1220 04       		.byte	0x4
 6047 1221 A6       		.byte	0xa6
 6048 1222 37       		.uleb128 0x37
 6049 1223 68230000 		.4byte	0x2368
 6050 1227 78000000 		.4byte	.LBB795
 6051 122b 02000000 		.4byte	.LBE795-.LBB795
 6052 122f 04       		.byte	0x4
 6053 1230 A6       		.byte	0xa6
 6054 1231 00       		.byte	0
 6055 1232 00       		.byte	0
 6056 1233 3A       		.uleb128 0x3a
ARM GAS  /tmp/ccCxIftT.s 			page 153


 6057 1234 64000000 		.4byte	.LVL236
 6058 1238 152B0000 		.4byte	0x2b15
 6059 123c 2E       		.uleb128 0x2e
 6060 123d 01       		.uleb128 0x1
 6061 123e 51       		.byte	0x51
 6062 123f 02       		.uleb128 0x2
 6063 1240 78       		.byte	0x78
 6064 1241 00       		.sleb128 0
 6065 1242 2E       		.uleb128 0x2e
 6066 1243 01       		.uleb128 0x1
 6067 1244 52       		.byte	0x52
 6068 1245 02       		.uleb128 0x2
 6069 1246 74       		.byte	0x74
 6070 1247 00       		.sleb128 0
 6071 1248 00       		.byte	0
 6072 1249 00       		.byte	0
 6073 124a 2A       		.uleb128 0x2a
 6074 124b D6050000 		.4byte	.LASF242
 6075 124f 01       		.byte	0x1
 6076 1250 4504     		.2byte	0x445
 6077 1252 25000000 		.4byte	0x25
 6078 1256 00000000 		.4byte	.LFB191
 6079 125a 08000000 		.4byte	.LFE191-.LFB191
 6080 125e 01       		.uleb128 0x1
 6081 125f 9C       		.byte	0x9c
 6082 1260 8B120000 		.4byte	0x128b
 6083 1264 2C       		.uleb128 0x2c
 6084 1265 92040000 		.4byte	.LASF162
 6085 1269 01       		.byte	0x1
 6086 126a 4504     		.2byte	0x445
 6087 126c 25000000 		.4byte	0x25
 6088 1270 53010000 		.4byte	.LLST86
 6089 1274 2D       		.uleb128 0x2d
 6090 1275 08000000 		.4byte	.LVL221
 6091 1279 8B120000 		.4byte	0x128b
 6092 127d 2E       		.uleb128 0x2e
 6093 127e 01       		.uleb128 0x1
 6094 127f 50       		.byte	0x50
 6095 1280 01       		.uleb128 0x1
 6096 1281 30       		.byte	0x30
 6097 1282 2E       		.uleb128 0x2e
 6098 1283 01       		.uleb128 0x1
 6099 1284 51       		.byte	0x51
 6100 1285 03       		.uleb128 0x3
 6101 1286 F3       		.byte	0xf3
 6102 1287 01       		.uleb128 0x1
 6103 1288 50       		.byte	0x50
 6104 1289 00       		.byte	0
 6105 128a 00       		.byte	0
 6106 128b 2A       		.uleb128 0x2a
 6107 128c 800F0000 		.4byte	.LASF243
 6108 1290 01       		.byte	0x1
 6109 1291 2104     		.2byte	0x421
 6110 1293 25000000 		.4byte	0x25
 6111 1297 00000000 		.4byte	.LFB190
 6112 129b 98000000 		.4byte	.LFE190-.LFB190
 6113 129f 01       		.uleb128 0x1
ARM GAS  /tmp/ccCxIftT.s 			page 154


 6114 12a0 9C       		.byte	0x9c
 6115 12a1 CB130000 		.4byte	0x13cb
 6116 12a5 2C       		.uleb128 0x2c
 6117 12a6 A2090000 		.4byte	.LASF237
 6118 12aa 01       		.byte	0x1
 6119 12ab 2104     		.2byte	0x421
 6120 12ad 97000000 		.4byte	0x97
 6121 12b1 7F010000 		.4byte	.LLST81
 6122 12b5 2C       		.uleb128 0x2c
 6123 12b6 92040000 		.4byte	.LASF162
 6124 12ba 01       		.byte	0x1
 6125 12bb 2104     		.2byte	0x421
 6126 12bd 25000000 		.4byte	0x25
 6127 12c1 9E010000 		.4byte	.LLST82
 6128 12c5 2F       		.uleb128 0x2f
 6129 12c6 07010000 		.4byte	.LASF244
 6130 12ca 01       		.byte	0x1
 6131 12cb 2304     		.2byte	0x423
 6132 12cd 13090000 		.4byte	0x913
 6133 12d1 30       		.uleb128 0x30
 6134 12d2 37060000 		.4byte	.LASF245
 6135 12d6 01       		.byte	0x1
 6136 12d7 2404     		.2byte	0x424
 6137 12d9 29090000 		.4byte	0x929
 6138 12dd BC010000 		.4byte	.LLST83
 6139 12e1 30       		.uleb128 0x30
 6140 12e2 D5080000 		.4byte	.LASF238
 6141 12e6 01       		.byte	0x1
 6142 12e7 2504     		.2byte	0x425
 6143 12e9 97000000 		.4byte	0x97
 6144 12ed F2010000 		.4byte	.LLST84
 6145 12f1 31       		.uleb128 0x31
 6146 12f2 C9070000 		.4byte	.LASF247
 6147 12f6 01       		.byte	0x1
 6148 12f7 2D04     		.2byte	0x42d
 6149 12f9 32       		.uleb128 0x32
 6150 12fa 25230000 		.4byte	0x2325
 6151 12fe 0A000000 		.4byte	.LBB729
 6152 1302 40020000 		.4byte	.Ldebug_ranges0+0x240
 6153 1306 01       		.byte	0x1
 6154 1307 3704     		.2byte	0x437
 6155 1309 5A130000 		.4byte	0x135a
 6156 130d 33       		.uleb128 0x33
 6157 130e 40020000 		.4byte	.Ldebug_ranges0+0x240
 6158 1312 34       		.uleb128 0x34
 6159 1313 35230000 		.4byte	0x2335
 6160 1317 35       		.uleb128 0x35
 6161 1318 41230000 		.4byte	0x2341
 6162 131c 34000000 		.4byte	.LBB731
 6163 1320 04000000 		.4byte	.LBE731-.LBB731
 6164 1324 04       		.byte	0x4
 6165 1325 99       		.byte	0x99
 6166 1326 3A130000 		.4byte	0x133a
 6167 132a 36       		.uleb128 0x36
 6168 132b 34000000 		.4byte	.LBB732
 6169 132f 04000000 		.4byte	.LBE732-.LBB732
 6170 1333 34       		.uleb128 0x34
ARM GAS  /tmp/ccCxIftT.s 			page 155


 6171 1334 52230000 		.4byte	0x2352
 6172 1338 00       		.byte	0
 6173 1339 00       		.byte	0
 6174 133a 37       		.uleb128 0x37
 6175 133b 5F230000 		.4byte	0x235f
 6176 133f 38000000 		.4byte	.LBB733
 6177 1343 02000000 		.4byte	.LBE733-.LBB733
 6178 1347 04       		.byte	0x4
 6179 1348 9A       		.byte	0x9a
 6180 1349 37       		.uleb128 0x37
 6181 134a 71230000 		.4byte	0x2371
 6182 134e 3A000000 		.4byte	.LBB735
 6183 1352 04000000 		.4byte	.LBE735-.LBB735
 6184 1356 04       		.byte	0x4
 6185 1357 9A       		.byte	0x9a
 6186 1358 00       		.byte	0
 6187 1359 00       		.byte	0
 6188 135a 38       		.uleb128 0x38
 6189 135b 0F140000 		.4byte	0x140f
 6190 135f 1C000000 		.4byte	.LBB739
 6191 1363 06000000 		.4byte	.LBE739-.LBB739
 6192 1367 01       		.byte	0x1
 6193 1368 2F04     		.2byte	0x42f
 6194 136a 87130000 		.4byte	0x1387
 6195 136e 39       		.uleb128 0x39
 6196 136f 20140000 		.4byte	0x1420
 6197 1373 10020000 		.4byte	.LLST85
 6198 1377 3A       		.uleb128 0x3a
 6199 1378 22000000 		.4byte	.LVL208
 6200 137c 57140000 		.4byte	0x1457
 6201 1380 2E       		.uleb128 0x2e
 6202 1381 01       		.uleb128 0x1
 6203 1382 50       		.byte	0x50
 6204 1383 01       		.uleb128 0x1
 6205 1384 30       		.byte	0x30
 6206 1385 00       		.byte	0
 6207 1386 00       		.byte	0
 6208 1387 3C       		.uleb128 0x3c
 6209 1388 F1220000 		.4byte	0x22f1
 6210 138c 60000000 		.4byte	.LBB743
 6211 1390 60020000 		.4byte	.Ldebug_ranges0+0x260
 6212 1394 01       		.byte	0x1
 6213 1395 3A04     		.2byte	0x43a
 6214 1397 3B       		.uleb128 0x3b
 6215 1398 FD220000 		.4byte	0x22fd
 6216 139c 36       		.uleb128 0x36
 6217 139d 6A000000 		.4byte	.LBB745
 6218 13a1 0A000000 		.4byte	.LBE745-.LBB745
 6219 13a5 3B       		.uleb128 0x3b
 6220 13a6 FD220000 		.4byte	0x22fd
 6221 13aa 37       		.uleb128 0x37
 6222 13ab 71230000 		.4byte	0x2371
 6223 13af 6E000000 		.4byte	.LBB747
 6224 13b3 04000000 		.4byte	.LBE747-.LBB747
 6225 13b7 04       		.byte	0x4
 6226 13b8 A6       		.byte	0xa6
 6227 13b9 37       		.uleb128 0x37
ARM GAS  /tmp/ccCxIftT.s 			page 156


 6228 13ba 68230000 		.4byte	0x2368
 6229 13be 72000000 		.4byte	.LBB749
 6230 13c2 02000000 		.4byte	.LBE749-.LBB749
 6231 13c6 04       		.byte	0x4
 6232 13c7 A6       		.byte	0xa6
 6233 13c8 00       		.byte	0
 6234 13c9 00       		.byte	0
 6235 13ca 00       		.byte	0
 6236 13cb 2A       		.uleb128 0x2a
 6237 13cc 5C0E0000 		.4byte	.LASF248
 6238 13d0 01       		.byte	0x1
 6239 13d1 1C04     		.2byte	0x41c
 6240 13d3 29090000 		.4byte	0x929
 6241 13d7 00000000 		.4byte	.LFB189
 6242 13db 10000000 		.4byte	.LFE189-.LFB189
 6243 13df 01       		.uleb128 0x1
 6244 13e0 9C       		.byte	0x9c
 6245 13e1 0F140000 		.4byte	0x140f
 6246 13e5 3D       		.uleb128 0x3d
 6247 13e6 0F140000 		.4byte	0x140f
 6248 13ea 02000000 		.4byte	.LBB707
 6249 13ee 06000000 		.4byte	.LBE707-.LBB707
 6250 13f2 01       		.byte	0x1
 6251 13f3 1E04     		.2byte	0x41e
 6252 13f5 39       		.uleb128 0x39
 6253 13f6 20140000 		.4byte	0x1420
 6254 13fa 24020000 		.4byte	.LLST80
 6255 13fe 3A       		.uleb128 0x3a
 6256 13ff 08000000 		.4byte	.LVL205
 6257 1403 57140000 		.4byte	0x1457
 6258 1407 2E       		.uleb128 0x2e
 6259 1408 01       		.uleb128 0x1
 6260 1409 50       		.byte	0x50
 6261 140a 01       		.uleb128 0x1
 6262 140b 30       		.byte	0x30
 6263 140c 00       		.byte	0
 6264 140d 00       		.byte	0
 6265 140e 00       		.byte	0
 6266 140f 3E       		.uleb128 0x3e
 6267 1410 C60D0000 		.4byte	.LASF264
 6268 1414 01       		.byte	0x1
 6269 1415 1704     		.2byte	0x417
 6270 1417 29090000 		.4byte	0x929
 6271 141b 01       		.byte	0x1
 6272 141c 2D140000 		.4byte	0x142d
 6273 1420 3F       		.uleb128 0x3f
 6274 1421 A2090000 		.4byte	.LASF237
 6275 1425 01       		.byte	0x1
 6276 1426 1704     		.2byte	0x417
 6277 1428 97000000 		.4byte	0x97
 6278 142c 00       		.byte	0
 6279 142d 2A       		.uleb128 0x2a
 6280 142e D2040000 		.4byte	.LASF249
 6281 1432 01       		.byte	0x1
 6282 1433 1204     		.2byte	0x412
 6283 1435 82090000 		.4byte	0x982
 6284 1439 00000000 		.4byte	.LFB187
ARM GAS  /tmp/ccCxIftT.s 			page 157


 6285 143d 06000000 		.4byte	.LFE187-.LFB187
 6286 1441 01       		.uleb128 0x1
 6287 1442 9C       		.byte	0x9c
 6288 1443 57140000 		.4byte	0x1457
 6289 1447 2D       		.uleb128 0x2d
 6290 1448 06000000 		.4byte	.LVL201
 6291 144c 57140000 		.4byte	0x1457
 6292 1450 2E       		.uleb128 0x2e
 6293 1451 01       		.uleb128 0x1
 6294 1452 50       		.byte	0x50
 6295 1453 01       		.uleb128 0x1
 6296 1454 30       		.byte	0x30
 6297 1455 00       		.byte	0
 6298 1456 00       		.byte	0
 6299 1457 2A       		.uleb128 0x2a
 6300 1458 9E0A0000 		.4byte	.LASF250
 6301 145c 01       		.byte	0x1
 6302 145d F503     		.2byte	0x3f5
 6303 145f 82090000 		.4byte	0x982
 6304 1463 00000000 		.4byte	.LFB186
 6305 1467 74000000 		.4byte	.LFE186-.LFB186
 6306 146b 01       		.uleb128 0x1
 6307 146c 9C       		.byte	0x9c
 6308 146d 6C150000 		.4byte	0x156c
 6309 1471 2C       		.uleb128 0x2c
 6310 1472 A2090000 		.4byte	.LASF237
 6311 1476 01       		.byte	0x1
 6312 1477 F503     		.2byte	0x3f5
 6313 1479 97000000 		.4byte	0x97
 6314 147d 38020000 		.4byte	.LLST73
 6315 1481 2F       		.uleb128 0x2f
 6316 1482 07010000 		.4byte	.LASF244
 6317 1486 01       		.byte	0x1
 6318 1487 F703     		.2byte	0x3f7
 6319 1489 13090000 		.4byte	0x913
 6320 148d 30       		.uleb128 0x30
 6321 148e F60D0000 		.4byte	.LASF251
 6322 1492 01       		.byte	0x1
 6323 1493 F803     		.2byte	0x3f8
 6324 1495 82090000 		.4byte	0x982
 6325 1499 57020000 		.4byte	.LLST74
 6326 149d 2F       		.uleb128 0x2f
 6327 149e E7070000 		.4byte	.LASF252
 6328 14a2 01       		.byte	0x1
 6329 14a3 F803     		.2byte	0x3f8
 6330 14a5 82090000 		.4byte	0x982
 6331 14a9 30       		.uleb128 0x30
 6332 14aa D5080000 		.4byte	.LASF238
 6333 14ae 01       		.byte	0x1
 6334 14af F903     		.2byte	0x3f9
 6335 14b1 97000000 		.4byte	0x97
 6336 14b5 CD020000 		.4byte	.LLST75
 6337 14b9 32       		.uleb128 0x32
 6338 14ba 25230000 		.4byte	0x2325
 6339 14be 02000000 		.4byte	.LBB689
 6340 14c2 28020000 		.4byte	.Ldebug_ranges0+0x228
 6341 14c6 01       		.byte	0x1
ARM GAS  /tmp/ccCxIftT.s 			page 158


 6342 14c7 FF03     		.2byte	0x3ff
 6343 14c9 20150000 		.4byte	0x1520
 6344 14cd 33       		.uleb128 0x33
 6345 14ce 28020000 		.4byte	.Ldebug_ranges0+0x228
 6346 14d2 40       		.uleb128 0x40
 6347 14d3 35230000 		.4byte	0x2335
 6348 14d7 F6020000 		.4byte	.LLST76
 6349 14db 35       		.uleb128 0x35
 6350 14dc 41230000 		.4byte	0x2341
 6351 14e0 02000000 		.4byte	.LBB691
 6352 14e4 04000000 		.4byte	.LBE691-.LBB691
 6353 14e8 04       		.byte	0x4
 6354 14e9 99       		.byte	0x99
 6355 14ea 00150000 		.4byte	0x1500
 6356 14ee 36       		.uleb128 0x36
 6357 14ef 02000000 		.4byte	.LBB692
 6358 14f3 04000000 		.4byte	.LBE692-.LBB692
 6359 14f7 41       		.uleb128 0x41
 6360 14f8 52230000 		.4byte	0x2352
 6361 14fc 01       		.uleb128 0x1
 6362 14fd 55       		.byte	0x55
 6363 14fe 00       		.byte	0
 6364 14ff 00       		.byte	0
 6365 1500 37       		.uleb128 0x37
 6366 1501 5F230000 		.4byte	0x235f
 6367 1505 06000000 		.4byte	.LBB693
 6368 1509 02000000 		.4byte	.LBE693-.LBB693
 6369 150d 04       		.byte	0x4
 6370 150e 9A       		.byte	0x9a
 6371 150f 37       		.uleb128 0x37
 6372 1510 71230000 		.4byte	0x2371
 6373 1514 08000000 		.4byte	.LBB695
 6374 1518 04000000 		.4byte	.LBE695-.LBB695
 6375 151c 04       		.byte	0x4
 6376 151d 9A       		.byte	0x9a
 6377 151e 00       		.byte	0
 6378 151f 00       		.byte	0
 6379 1520 3D       		.uleb128 0x3d
 6380 1521 F1220000 		.4byte	0x22f1
 6381 1525 28000000 		.4byte	.LBB699
 6382 1529 0C000000 		.4byte	.LBE699-.LBB699
 6383 152d 01       		.byte	0x1
 6384 152e 0E04     		.2byte	0x40e
 6385 1530 39       		.uleb128 0x39
 6386 1531 FD220000 		.4byte	0x22fd
 6387 1535 10030000 		.4byte	.LLST77
 6388 1539 36       		.uleb128 0x36
 6389 153a 2A000000 		.4byte	.LBB701
 6390 153e 0A000000 		.4byte	.LBE701-.LBB701
 6391 1542 39       		.uleb128 0x39
 6392 1543 FD220000 		.4byte	0x22fd
 6393 1547 2A030000 		.4byte	.LLST78
 6394 154b 37       		.uleb128 0x37
 6395 154c 71230000 		.4byte	0x2371
 6396 1550 2E000000 		.4byte	.LBB703
 6397 1554 04000000 		.4byte	.LBE703-.LBB703
 6398 1558 04       		.byte	0x4
ARM GAS  /tmp/ccCxIftT.s 			page 159


 6399 1559 A6       		.byte	0xa6
 6400 155a 37       		.uleb128 0x37
 6401 155b 68230000 		.4byte	0x2368
 6402 155f 32000000 		.4byte	.LBB705
 6403 1563 02000000 		.4byte	.LBE705-.LBB705
 6404 1567 04       		.byte	0x4
 6405 1568 A6       		.byte	0xa6
 6406 1569 00       		.byte	0
 6407 156a 00       		.byte	0
 6408 156b 00       		.byte	0
 6409 156c 2A       		.uleb128 0x2a
 6410 156d 71040000 		.4byte	.LASF253
 6411 1571 01       		.byte	0x1
 6412 1572 F003     		.2byte	0x3f0
 6413 1574 82090000 		.4byte	0x982
 6414 1578 00000000 		.4byte	.LFB185
 6415 157c 0A000000 		.4byte	.LFE185-.LFB185
 6416 1580 01       		.uleb128 0x1
 6417 1581 9C       		.byte	0x9c
 6418 1582 C4150000 		.4byte	0x15c4
 6419 1586 2B       		.uleb128 0x2b
 6420 1587 62756600 		.ascii	"buf\000"
 6421 158b 01       		.byte	0x1
 6422 158c F003     		.2byte	0x3f0
 6423 158e D7000000 		.4byte	0xd7
 6424 1592 44030000 		.4byte	.LLST71
 6425 1596 2C       		.uleb128 0x2c
 6426 1597 51090000 		.4byte	.LASF234
 6427 159b 01       		.byte	0x1
 6428 159c F003     		.2byte	0x3f0
 6429 159e 82090000 		.4byte	0x982
 6430 15a2 70030000 		.4byte	.LLST72
 6431 15a6 2D       		.uleb128 0x2d
 6432 15a7 0A000000 		.4byte	.LVL185
 6433 15ab 42180000 		.4byte	0x1842
 6434 15af 2E       		.uleb128 0x2e
 6435 15b0 01       		.uleb128 0x1
 6436 15b1 50       		.byte	0x50
 6437 15b2 01       		.uleb128 0x1
 6438 15b3 30       		.byte	0x30
 6439 15b4 2E       		.uleb128 0x2e
 6440 15b5 01       		.uleb128 0x1
 6441 15b6 51       		.byte	0x51
 6442 15b7 03       		.uleb128 0x3
 6443 15b8 F3       		.byte	0xf3
 6444 15b9 01       		.uleb128 0x1
 6445 15ba 50       		.byte	0x50
 6446 15bb 2E       		.uleb128 0x2e
 6447 15bc 01       		.uleb128 0x1
 6448 15bd 52       		.byte	0x52
 6449 15be 03       		.uleb128 0x3
 6450 15bf F3       		.byte	0xf3
 6451 15c0 01       		.uleb128 0x1
 6452 15c1 51       		.byte	0x51
 6453 15c2 00       		.byte	0
 6454 15c3 00       		.byte	0
 6455 15c4 2A       		.uleb128 0x2a
ARM GAS  /tmp/ccCxIftT.s 			page 160


 6456 15c5 0D010000 		.4byte	.LASF254
 6457 15c9 01       		.byte	0x1
 6458 15ca EB03     		.2byte	0x3eb
 6459 15cc 82090000 		.4byte	0x982
 6460 15d0 00000000 		.4byte	.LFB184
 6461 15d4 B4000000 		.4byte	.LFE184-.LFB184
 6462 15d8 01       		.uleb128 0x1
 6463 15d9 9C       		.byte	0x9c
 6464 15da D0170000 		.4byte	0x17d0
 6465 15de 2B       		.uleb128 0x2b
 6466 15df 62756600 		.ascii	"buf\000"
 6467 15e3 01       		.byte	0x1
 6468 15e4 EB03     		.2byte	0x3eb
 6469 15e6 D7000000 		.4byte	0xd7
 6470 15ea 9C030000 		.4byte	.LLST63
 6471 15ee 2C       		.uleb128 0x2c
 6472 15ef 51090000 		.4byte	.LASF234
 6473 15f3 01       		.byte	0x1
 6474 15f4 EB03     		.2byte	0x3eb
 6475 15f6 82090000 		.4byte	0x982
 6476 15fa EF030000 		.4byte	.LLST64
 6477 15fe 3C       		.uleb128 0x3c
 6478 15ff D0170000 		.4byte	0x17d0
 6479 1603 02000000 		.4byte	.LBB627
 6480 1607 C0010000 		.4byte	.Ldebug_ranges0+0x1c0
 6481 160b 01       		.byte	0x1
 6482 160c ED03     		.2byte	0x3ed
 6483 160e 42       		.uleb128 0x42
 6484 160f E1170000 		.4byte	0x17e1
 6485 1613 00       		.byte	0
 6486 1614 39       		.uleb128 0x39
 6487 1615 F9170000 		.4byte	0x17f9
 6488 1619 29040000 		.4byte	.LLST65
 6489 161d 39       		.uleb128 0x39
 6490 161e ED170000 		.4byte	0x17ed
 6491 1622 A5040000 		.4byte	.LLST66
 6492 1626 33       		.uleb128 0x33
 6493 1627 C0010000 		.4byte	.Ldebug_ranges0+0x1c0
 6494 162b 40       		.uleb128 0x40
 6495 162c 05180000 		.4byte	0x1805
 6496 1630 F8040000 		.4byte	.LLST67
 6497 1634 40       		.uleb128 0x40
 6498 1635 11180000 		.4byte	0x1811
 6499 1639 4B050000 		.4byte	.LLST68
 6500 163d 40       		.uleb128 0x40
 6501 163e 1D180000 		.4byte	0x181d
 6502 1642 69050000 		.4byte	.LLST69
 6503 1646 40       		.uleb128 0x40
 6504 1647 29180000 		.4byte	0x1829
 6505 164b 92050000 		.4byte	.LLST70
 6506 164f 34       		.uleb128 0x34
 6507 1650 35180000 		.4byte	0x1835
 6508 1654 32       		.uleb128 0x32
 6509 1655 25230000 		.4byte	0x2325
 6510 1659 0C000000 		.4byte	.LBB629
 6511 165d E0010000 		.4byte	.Ldebug_ranges0+0x1e0
 6512 1661 01       		.byte	0x1
ARM GAS  /tmp/ccCxIftT.s 			page 161


 6513 1662 D503     		.2byte	0x3d5
 6514 1664 B5160000 		.4byte	0x16b5
 6515 1668 33       		.uleb128 0x33
 6516 1669 E0010000 		.4byte	.Ldebug_ranges0+0x1e0
 6517 166d 34       		.uleb128 0x34
 6518 166e 35230000 		.4byte	0x2335
 6519 1672 35       		.uleb128 0x35
 6520 1673 41230000 		.4byte	0x2341
 6521 1677 0C000000 		.4byte	.LBB631
 6522 167b 04000000 		.4byte	.LBE631-.LBB631
 6523 167f 04       		.byte	0x4
 6524 1680 99       		.byte	0x99
 6525 1681 95160000 		.4byte	0x1695
 6526 1685 36       		.uleb128 0x36
 6527 1686 0C000000 		.4byte	.LBB632
 6528 168a 04000000 		.4byte	.LBE632-.LBB632
 6529 168e 34       		.uleb128 0x34
 6530 168f 52230000 		.4byte	0x2352
 6531 1693 00       		.byte	0
 6532 1694 00       		.byte	0
 6533 1695 37       		.uleb128 0x37
 6534 1696 5F230000 		.4byte	0x235f
 6535 169a 10000000 		.4byte	.LBB633
 6536 169e 02000000 		.4byte	.LBE633-.LBB633
 6537 16a2 04       		.byte	0x4
 6538 16a3 9A       		.byte	0x9a
 6539 16a4 37       		.uleb128 0x37
 6540 16a5 71230000 		.4byte	0x2371
 6541 16a9 12000000 		.4byte	.LBB635
 6542 16ad 04000000 		.4byte	.LBE635-.LBB635
 6543 16b1 04       		.byte	0x4
 6544 16b2 9A       		.byte	0x9a
 6545 16b3 00       		.byte	0
 6546 16b4 00       		.byte	0
 6547 16b5 32       		.uleb128 0x32
 6548 16b6 F1220000 		.4byte	0x22f1
 6549 16ba 32000000 		.4byte	.LBB639
 6550 16be F8010000 		.4byte	.Ldebug_ranges0+0x1f8
 6551 16c2 01       		.byte	0x1
 6552 16c3 D903     		.2byte	0x3d9
 6553 16c5 FC160000 		.4byte	0x16fc
 6554 16c9 3B       		.uleb128 0x3b
 6555 16ca FD220000 		.4byte	0x22fd
 6556 16ce 36       		.uleb128 0x36
 6557 16cf 76000000 		.4byte	.LBB641
 6558 16d3 12000000 		.4byte	.LBE641-.LBB641
 6559 16d7 3B       		.uleb128 0x3b
 6560 16d8 FD220000 		.4byte	0x22fd
 6561 16dc 37       		.uleb128 0x37
 6562 16dd 71230000 		.4byte	0x2371
 6563 16e1 7A000000 		.4byte	.LBB643
 6564 16e5 04000000 		.4byte	.LBE643-.LBB643
 6565 16e9 04       		.byte	0x4
 6566 16ea A6       		.byte	0xa6
 6567 16eb 37       		.uleb128 0x37
 6568 16ec 68230000 		.4byte	0x2368
 6569 16f0 7E000000 		.4byte	.LBB645
ARM GAS  /tmp/ccCxIftT.s 			page 162


 6570 16f4 0A000000 		.4byte	.LBE645-.LBB645
 6571 16f8 04       		.byte	0x4
 6572 16f9 A6       		.byte	0xa6
 6573 16fa 00       		.byte	0
 6574 16fb 00       		.byte	0
 6575 16fc 38       		.uleb128 0x38
 6576 16fd 25230000 		.4byte	0x2325
 6577 1701 54000000 		.4byte	.LBB648
 6578 1705 0E000000 		.4byte	.LBE648-.LBB648
 6579 1709 01       		.byte	0x1
 6580 170a E103     		.2byte	0x3e1
 6581 170c 61170000 		.4byte	0x1761
 6582 1710 36       		.uleb128 0x36
 6583 1711 54000000 		.4byte	.LBB649
 6584 1715 0E000000 		.4byte	.LBE649-.LBB649
 6585 1719 34       		.uleb128 0x34
 6586 171a 35230000 		.4byte	0x2335
 6587 171e 35       		.uleb128 0x35
 6588 171f 41230000 		.4byte	0x2341
 6589 1723 54000000 		.4byte	.LBB650
 6590 1727 04000000 		.4byte	.LBE650-.LBB650
 6591 172b 04       		.byte	0x4
 6592 172c 99       		.byte	0x99
 6593 172d 41170000 		.4byte	0x1741
 6594 1731 36       		.uleb128 0x36
 6595 1732 54000000 		.4byte	.LBB651
 6596 1736 04000000 		.4byte	.LBE651-.LBB651
 6597 173a 34       		.uleb128 0x34
 6598 173b 52230000 		.4byte	0x2352
 6599 173f 00       		.byte	0
 6600 1740 00       		.byte	0
 6601 1741 37       		.uleb128 0x37
 6602 1742 5F230000 		.4byte	0x235f
 6603 1746 58000000 		.4byte	.LBB652
 6604 174a 02000000 		.4byte	.LBE652-.LBB652
 6605 174e 04       		.byte	0x4
 6606 174f 9A       		.byte	0x9a
 6607 1750 37       		.uleb128 0x37
 6608 1751 71230000 		.4byte	0x2371
 6609 1755 5A000000 		.4byte	.LBB654
 6610 1759 04000000 		.4byte	.LBE654-.LBB654
 6611 175d 04       		.byte	0x4
 6612 175e 9A       		.byte	0x9a
 6613 175f 00       		.byte	0
 6614 1760 00       		.byte	0
 6615 1761 32       		.uleb128 0x32
 6616 1762 F1220000 		.4byte	0x22f1
 6617 1766 6C000000 		.4byte	.LBB656
 6618 176a 10020000 		.4byte	.Ldebug_ranges0+0x210
 6619 176e 01       		.byte	0x1
 6620 176f E303     		.2byte	0x3e3
 6621 1771 A8170000 		.4byte	0x17a8
 6622 1775 3B       		.uleb128 0x3b
 6623 1776 FD220000 		.4byte	0x22fd
 6624 177a 36       		.uleb128 0x36
 6625 177b 8E000000 		.4byte	.LBB658
 6626 177f 26000000 		.4byte	.LBE658-.LBB658
ARM GAS  /tmp/ccCxIftT.s 			page 163


 6627 1783 3B       		.uleb128 0x3b
 6628 1784 FD220000 		.4byte	0x22fd
 6629 1788 37       		.uleb128 0x37
 6630 1789 71230000 		.4byte	0x2371
 6631 178d 92000000 		.4byte	.LBB660
 6632 1791 04000000 		.4byte	.LBE660-.LBB660
 6633 1795 04       		.byte	0x4
 6634 1796 A6       		.byte	0xa6
 6635 1797 37       		.uleb128 0x37
 6636 1798 68230000 		.4byte	0x2368
 6637 179c 96000000 		.4byte	.LBB662
 6638 17a0 1E000000 		.4byte	.LBE662-.LBB662
 6639 17a4 04       		.byte	0x4
 6640 17a5 A6       		.byte	0xa6
 6641 17a6 00       		.byte	0
 6642 17a7 00       		.byte	0
 6643 17a8 43       		.uleb128 0x43
 6644 17a9 54000000 		.4byte	.LVL174
 6645 17ad 152B0000 		.4byte	0x2b15
 6646 17b1 BC170000 		.4byte	0x17bc
 6647 17b5 2E       		.uleb128 0x2e
 6648 17b6 01       		.uleb128 0x1
 6649 17b7 52       		.byte	0x52
 6650 17b8 02       		.uleb128 0x2
 6651 17b9 75       		.byte	0x75
 6652 17ba 00       		.sleb128 0
 6653 17bb 00       		.byte	0
 6654 17bc 3A       		.uleb128 0x3a
 6655 17bd 72000000 		.4byte	.LVL177
 6656 17c1 24280000 		.4byte	0x2824
 6657 17c5 44       		.uleb128 0x44
 6658 17c6 1F200000 		.4byte	0x201f
 6659 17ca 01       		.uleb128 0x1
 6660 17cb 30       		.byte	0x30
 6661 17cc 00       		.byte	0
 6662 17cd 00       		.byte	0
 6663 17ce 00       		.byte	0
 6664 17cf 00       		.byte	0
 6665 17d0 45       		.uleb128 0x45
 6666 17d1 3E050000 		.4byte	.LASF287
 6667 17d5 01       		.byte	0x1
 6668 17d6 C203     		.2byte	0x3c2
 6669 17d8 82090000 		.4byte	0x982
 6670 17dc 01       		.byte	0x1
 6671 17dd 42180000 		.4byte	0x1842
 6672 17e1 3F       		.uleb128 0x3f
 6673 17e2 A2090000 		.4byte	.LASF237
 6674 17e6 01       		.byte	0x1
 6675 17e7 C203     		.2byte	0x3c2
 6676 17e9 97000000 		.4byte	0x97
 6677 17ed 46       		.uleb128 0x46
 6678 17ee 62756600 		.ascii	"buf\000"
 6679 17f2 01       		.byte	0x1
 6680 17f3 C203     		.2byte	0x3c2
 6681 17f5 D7000000 		.4byte	0xd7
 6682 17f9 3F       		.uleb128 0x3f
 6683 17fa 51090000 		.4byte	.LASF234
ARM GAS  /tmp/ccCxIftT.s 			page 164


 6684 17fe 01       		.byte	0x1
 6685 17ff C203     		.2byte	0x3c2
 6686 1801 82090000 		.4byte	0x982
 6687 1805 2F       		.uleb128 0x2f
 6688 1806 4B110000 		.4byte	.LASF241
 6689 180a 01       		.byte	0x1
 6690 180b C403     		.2byte	0x3c4
 6691 180d 030E0000 		.4byte	0xe03
 6692 1811 2F       		.uleb128 0x2f
 6693 1812 2A090000 		.4byte	.LASF255
 6694 1816 01       		.byte	0x1
 6695 1817 C503     		.2byte	0x3c5
 6696 1819 82090000 		.4byte	0x982
 6697 181d 47       		.uleb128 0x47
 6698 181e 706F7300 		.ascii	"pos\000"
 6699 1822 01       		.byte	0x1
 6700 1823 C603     		.2byte	0x3c6
 6701 1825 A7000000 		.4byte	0xa7
 6702 1829 2F       		.uleb128 0x2f
 6703 182a D5080000 		.4byte	.LASF238
 6704 182e 01       		.byte	0x1
 6705 182f C703     		.2byte	0x3c7
 6706 1831 97000000 		.4byte	0x97
 6707 1835 2F       		.uleb128 0x2f
 6708 1836 07010000 		.4byte	.LASF244
 6709 183a 01       		.byte	0x1
 6710 183b C803     		.2byte	0x3c8
 6711 183d 13090000 		.4byte	0x913
 6712 1841 00       		.byte	0
 6713 1842 2A       		.uleb128 0x2a
 6714 1843 51020000 		.4byte	.LASF256
 6715 1847 01       		.byte	0x1
 6716 1848 9603     		.2byte	0x396
 6717 184a 82090000 		.4byte	0x982
 6718 184e 00000000 		.4byte	.LFB182
 6719 1852 AC000000 		.4byte	.LFE182-.LFB182
 6720 1856 01       		.uleb128 0x1
 6721 1857 9C       		.byte	0x9c
 6722 1858 C2190000 		.4byte	0x19c2
 6723 185c 2C       		.uleb128 0x2c
 6724 185d A2090000 		.4byte	.LASF237
 6725 1861 01       		.byte	0x1
 6726 1862 9603     		.2byte	0x396
 6727 1864 97000000 		.4byte	0x97
 6728 1868 BB050000 		.4byte	.LLST55
 6729 186c 2B       		.uleb128 0x2b
 6730 186d 62756600 		.ascii	"buf\000"
 6731 1871 01       		.byte	0x1
 6732 1872 9603     		.2byte	0x396
 6733 1874 D7000000 		.4byte	0xd7
 6734 1878 DA050000 		.4byte	.LLST56
 6735 187c 2C       		.uleb128 0x2c
 6736 187d 51090000 		.4byte	.LASF234
 6737 1881 01       		.byte	0x1
 6738 1882 9603     		.2byte	0x396
 6739 1884 82090000 		.4byte	0x982
 6740 1888 FB050000 		.4byte	.LLST57
ARM GAS  /tmp/ccCxIftT.s 			page 165


 6741 188c 2F       		.uleb128 0x2f
 6742 188d 07010000 		.4byte	.LASF244
 6743 1891 01       		.byte	0x1
 6744 1892 9803     		.2byte	0x398
 6745 1894 13090000 		.4byte	0x913
 6746 1898 30       		.uleb128 0x30
 6747 1899 4B110000 		.4byte	.LASF241
 6748 189d 01       		.byte	0x1
 6749 189e 9903     		.2byte	0x399
 6750 18a0 030E0000 		.4byte	0xe03
 6751 18a4 24060000 		.4byte	.LLST58
 6752 18a8 30       		.uleb128 0x30
 6753 18a9 330B0000 		.4byte	.LASF240
 6754 18ad 01       		.byte	0x1
 6755 18ae 9A03     		.2byte	0x39a
 6756 18b0 82090000 		.4byte	0x982
 6757 18b4 6E060000 		.4byte	.LLST59
 6758 18b8 48       		.uleb128 0x48
 6759 18b9 706F7300 		.ascii	"pos\000"
 6760 18bd 01       		.byte	0x1
 6761 18be 9B03     		.2byte	0x39b
 6762 18c0 A7000000 		.4byte	0xa7
 6763 18c4 81060000 		.4byte	.LLST60
 6764 18c8 30       		.uleb128 0x30
 6765 18c9 D5080000 		.4byte	.LASF238
 6766 18cd 01       		.byte	0x1
 6767 18ce 9C03     		.2byte	0x39c
 6768 18d0 97000000 		.4byte	0x97
 6769 18d4 AA060000 		.4byte	.LLST61
 6770 18d8 30       		.uleb128 0x30
 6771 18d9 C3000000 		.4byte	.LASF257
 6772 18dd 01       		.byte	0x1
 6773 18de 9D03     		.2byte	0x39d
 6774 18e0 29090000 		.4byte	0x929
 6775 18e4 D3060000 		.4byte	.LLST62
 6776 18e8 31       		.uleb128 0x31
 6777 18e9 E7080000 		.4byte	.LASF258
 6778 18ed 01       		.byte	0x1
 6779 18ee A303     		.2byte	0x3a3
 6780 18f0 38       		.uleb128 0x38
 6781 18f1 25230000 		.4byte	0x2325
 6782 18f5 0C000000 		.4byte	.LBB571
 6783 18f9 1C000000 		.4byte	.LBE571-.LBB571
 6784 18fd 01       		.byte	0x1
 6785 18fe A503     		.2byte	0x3a5
 6786 1900 55190000 		.4byte	0x1955
 6787 1904 36       		.uleb128 0x36
 6788 1905 0C000000 		.4byte	.LBB572
 6789 1909 1C000000 		.4byte	.LBE572-.LBB572
 6790 190d 34       		.uleb128 0x34
 6791 190e 35230000 		.4byte	0x2335
 6792 1912 35       		.uleb128 0x35
 6793 1913 41230000 		.4byte	0x2341
 6794 1917 1A000000 		.4byte	.LBB573
 6795 191b 04000000 		.4byte	.LBE573-.LBB573
 6796 191f 04       		.byte	0x4
 6797 1920 99       		.byte	0x99
ARM GAS  /tmp/ccCxIftT.s 			page 166


 6798 1921 35190000 		.4byte	0x1935
 6799 1925 36       		.uleb128 0x36
 6800 1926 1A000000 		.4byte	.LBB574
 6801 192a 04000000 		.4byte	.LBE574-.LBB574
 6802 192e 34       		.uleb128 0x34
 6803 192f 52230000 		.4byte	0x2352
 6804 1933 00       		.byte	0
 6805 1934 00       		.byte	0
 6806 1935 37       		.uleb128 0x37
 6807 1936 5F230000 		.4byte	0x235f
 6808 193a 1E000000 		.4byte	.LBB575
 6809 193e 02000000 		.4byte	.LBE575-.LBB575
 6810 1942 04       		.byte	0x4
 6811 1943 9A       		.byte	0x9a
 6812 1944 37       		.uleb128 0x37
 6813 1945 71230000 		.4byte	0x2371
 6814 1949 20000000 		.4byte	.LBB577
 6815 194d 04000000 		.4byte	.LBE577-.LBB577
 6816 1951 04       		.byte	0x4
 6817 1952 9A       		.byte	0x9a
 6818 1953 00       		.byte	0
 6819 1954 00       		.byte	0
 6820 1955 32       		.uleb128 0x32
 6821 1956 F1220000 		.4byte	0x22f1
 6822 195a 38000000 		.4byte	.LBB579
 6823 195e A8010000 		.4byte	.Ldebug_ranges0+0x1a8
 6824 1962 01       		.byte	0x1
 6825 1963 A903     		.2byte	0x3a9
 6826 1965 9C190000 		.4byte	0x199c
 6827 1969 3B       		.uleb128 0x3b
 6828 196a FD220000 		.4byte	0x22fd
 6829 196e 36       		.uleb128 0x36
 6830 196f 86000000 		.4byte	.LBB581
 6831 1973 26000000 		.4byte	.LBE581-.LBB581
 6832 1977 3B       		.uleb128 0x3b
 6833 1978 FD220000 		.4byte	0x22fd
 6834 197c 37       		.uleb128 0x37
 6835 197d 71230000 		.4byte	0x2371
 6836 1981 8C000000 		.4byte	.LBB583
 6837 1985 04000000 		.4byte	.LBE583-.LBB583
 6838 1989 04       		.byte	0x4
 6839 198a A6       		.byte	0xa6
 6840 198b 37       		.uleb128 0x37
 6841 198c 68230000 		.4byte	0x2368
 6842 1990 90000000 		.4byte	.LBB585
 6843 1994 1C000000 		.4byte	.LBE585-.LBB585
 6844 1998 04       		.byte	0x4
 6845 1999 A6       		.byte	0xa6
 6846 199a 00       		.byte	0
 6847 199b 00       		.byte	0
 6848 199c 43       		.uleb128 0x43
 6849 199d 70000000 		.4byte	.LVL156
 6850 19a1 152B0000 		.4byte	0x2b15
 6851 19a5 B0190000 		.4byte	0x19b0
 6852 19a9 2E       		.uleb128 0x2e
 6853 19aa 01       		.uleb128 0x1
 6854 19ab 52       		.byte	0x52
ARM GAS  /tmp/ccCxIftT.s 			page 167


 6855 19ac 02       		.uleb128 0x2
 6856 19ad 74       		.byte	0x74
 6857 19ae 00       		.sleb128 0
 6858 19af 00       		.byte	0
 6859 19b0 3A       		.uleb128 0x3a
 6860 19b1 80000000 		.4byte	.LVL159
 6861 19b5 24280000 		.4byte	0x2824
 6862 19b9 44       		.uleb128 0x44
 6863 19ba 1F200000 		.4byte	0x201f
 6864 19be 01       		.uleb128 0x1
 6865 19bf 30       		.byte	0x30
 6866 19c0 00       		.byte	0
 6867 19c1 00       		.byte	0
 6868 19c2 2A       		.uleb128 0x2a
 6869 19c3 1C0F0000 		.4byte	.LASF259
 6870 19c7 01       		.byte	0x1
 6871 19c8 9103     		.2byte	0x391
 6872 19ca 25000000 		.4byte	0x25
 6873 19ce 00000000 		.4byte	.LFB181
 6874 19d2 06000000 		.4byte	.LFE181-.LFB181
 6875 19d6 01       		.uleb128 0x1
 6876 19d7 9C       		.byte	0x9c
 6877 19d8 EC190000 		.4byte	0x19ec
 6878 19dc 2D       		.uleb128 0x2d
 6879 19dd 06000000 		.4byte	.LVL139
 6880 19e1 EC190000 		.4byte	0x19ec
 6881 19e5 2E       		.uleb128 0x2e
 6882 19e6 01       		.uleb128 0x1
 6883 19e7 50       		.byte	0x50
 6884 19e8 01       		.uleb128 0x1
 6885 19e9 30       		.byte	0x30
 6886 19ea 00       		.byte	0
 6887 19eb 00       		.byte	0
 6888 19ec 2A       		.uleb128 0x2a
 6889 19ed ED040000 		.4byte	.LASF260
 6890 19f1 01       		.byte	0x1
 6891 19f2 6503     		.2byte	0x365
 6892 19f4 25000000 		.4byte	0x25
 6893 19f8 00000000 		.4byte	.LFB180
 6894 19fc B8000000 		.4byte	.LFE180-.LFB180
 6895 1a00 01       		.uleb128 0x1
 6896 1a01 9C       		.byte	0x9c
 6897 1a02 301B0000 		.4byte	0x1b30
 6898 1a06 2C       		.uleb128 0x2c
 6899 1a07 A2090000 		.4byte	.LASF237
 6900 1a0b 01       		.byte	0x1
 6901 1a0c 6503     		.2byte	0x365
 6902 1a0e 97000000 		.4byte	0x97
 6903 1a12 23070000 		.4byte	.LLST50
 6904 1a16 2F       		.uleb128 0x2f
 6905 1a17 07010000 		.4byte	.LASF244
 6906 1a1b 01       		.byte	0x1
 6907 1a1c 6703     		.2byte	0x367
 6908 1a1e 13090000 		.4byte	0x913
 6909 1a22 30       		.uleb128 0x30
 6910 1a23 19070000 		.4byte	.LASF261
 6911 1a27 01       		.byte	0x1
ARM GAS  /tmp/ccCxIftT.s 			page 168


 6912 1a28 6803     		.2byte	0x368
 6913 1a2a 25000000 		.4byte	0x25
 6914 1a2e 42070000 		.4byte	.LLST51
 6915 1a32 30       		.uleb128 0x30
 6916 1a33 37060000 		.4byte	.LASF245
 6917 1a37 01       		.byte	0x1
 6918 1a38 6903     		.2byte	0x369
 6919 1a3a 29090000 		.4byte	0x929
 6920 1a3e 82070000 		.4byte	.LLST52
 6921 1a42 48       		.uleb128 0x48
 6922 1a43 706F7300 		.ascii	"pos\000"
 6923 1a47 01       		.byte	0x1
 6924 1a48 6A03     		.2byte	0x36a
 6925 1a4a A7000000 		.4byte	0xa7
 6926 1a4e B7070000 		.4byte	.LLST53
 6927 1a52 2F       		.uleb128 0x2f
 6928 1a53 D5080000 		.4byte	.LASF238
 6929 1a57 01       		.byte	0x1
 6930 1a58 6B03     		.2byte	0x36b
 6931 1a5a 97000000 		.4byte	0x97
 6932 1a5e 30       		.uleb128 0x30
 6933 1a5f C3000000 		.4byte	.LASF257
 6934 1a63 01       		.byte	0x1
 6935 1a64 6C03     		.2byte	0x36c
 6936 1a66 29090000 		.4byte	0x929
 6937 1a6a E0070000 		.4byte	.LLST54
 6938 1a6e 31       		.uleb128 0x31
 6939 1a6f 650B0000 		.4byte	.LASF262
 6940 1a73 01       		.byte	0x1
 6941 1a74 7403     		.2byte	0x374
 6942 1a76 32       		.uleb128 0x32
 6943 1a77 25230000 		.4byte	0x2325
 6944 1a7b 0E000000 		.4byte	.LBB533
 6945 1a7f 78010000 		.4byte	.Ldebug_ranges0+0x178
 6946 1a83 01       		.byte	0x1
 6947 1a84 7603     		.2byte	0x376
 6948 1a86 D71A0000 		.4byte	0x1ad7
 6949 1a8a 33       		.uleb128 0x33
 6950 1a8b 78010000 		.4byte	.Ldebug_ranges0+0x178
 6951 1a8f 34       		.uleb128 0x34
 6952 1a90 35230000 		.4byte	0x2335
 6953 1a94 35       		.uleb128 0x35
 6954 1a95 41230000 		.4byte	0x2341
 6955 1a99 26000000 		.4byte	.LBB535
 6956 1a9d 04000000 		.4byte	.LBE535-.LBB535
 6957 1aa1 04       		.byte	0x4
 6958 1aa2 99       		.byte	0x99
 6959 1aa3 B71A0000 		.4byte	0x1ab7
 6960 1aa7 36       		.uleb128 0x36
 6961 1aa8 26000000 		.4byte	.LBB536
 6962 1aac 04000000 		.4byte	.LBE536-.LBB536
 6963 1ab0 34       		.uleb128 0x34
 6964 1ab1 52230000 		.4byte	0x2352
 6965 1ab5 00       		.byte	0
 6966 1ab6 00       		.byte	0
 6967 1ab7 37       		.uleb128 0x37
 6968 1ab8 5F230000 		.4byte	0x235f
ARM GAS  /tmp/ccCxIftT.s 			page 169


 6969 1abc 2A000000 		.4byte	.LBB537
 6970 1ac0 02000000 		.4byte	.LBE537-.LBB537
 6971 1ac4 04       		.byte	0x4
 6972 1ac5 9A       		.byte	0x9a
 6973 1ac6 37       		.uleb128 0x37
 6974 1ac7 71230000 		.4byte	0x2371
 6975 1acb 2C000000 		.4byte	.LBB539
 6976 1acf 04000000 		.4byte	.LBE539-.LBB539
 6977 1ad3 04       		.byte	0x4
 6978 1ad4 9A       		.byte	0x9a
 6979 1ad5 00       		.byte	0
 6980 1ad6 00       		.byte	0
 6981 1ad7 32       		.uleb128 0x32
 6982 1ad8 F1220000 		.4byte	0x22f1
 6983 1adc 46000000 		.4byte	.LBB543
 6984 1ae0 90010000 		.4byte	.Ldebug_ranges0+0x190
 6985 1ae4 01       		.byte	0x1
 6986 1ae5 7A03     		.2byte	0x37a
 6987 1ae7 1E1B0000 		.4byte	0x1b1e
 6988 1aeb 3B       		.uleb128 0x3b
 6989 1aec FD220000 		.4byte	0x22fd
 6990 1af0 36       		.uleb128 0x36
 6991 1af1 8E000000 		.4byte	.LBB545
 6992 1af5 2A000000 		.4byte	.LBE545-.LBB545
 6993 1af9 3B       		.uleb128 0x3b
 6994 1afa FD220000 		.4byte	0x22fd
 6995 1afe 37       		.uleb128 0x37
 6996 1aff 71230000 		.4byte	0x2371
 6997 1b03 92000000 		.4byte	.LBB547
 6998 1b07 04000000 		.4byte	.LBE547-.LBB547
 6999 1b0b 04       		.byte	0x4
 7000 1b0c A6       		.byte	0xa6
 7001 1b0d 37       		.uleb128 0x37
 7002 1b0e 68230000 		.4byte	0x2368
 7003 1b12 96000000 		.4byte	.LBB549
 7004 1b16 22000000 		.4byte	.LBE549-.LBB549
 7005 1b1a 04       		.byte	0x4
 7006 1b1b A6       		.byte	0xa6
 7007 1b1c 00       		.byte	0
 7008 1b1d 00       		.byte	0
 7009 1b1e 3A       		.uleb128 0x3a
 7010 1b1f 7E000000 		.4byte	.LVL136
 7011 1b23 24280000 		.4byte	0x2824
 7012 1b27 44       		.uleb128 0x44
 7013 1b28 1F200000 		.4byte	0x201f
 7014 1b2c 01       		.uleb128 0x1
 7015 1b2d 30       		.byte	0x30
 7016 1b2e 00       		.byte	0
 7017 1b2f 00       		.byte	0
 7018 1b30 2A       		.uleb128 0x2a
 7019 1b31 89030000 		.4byte	.LASF263
 7020 1b35 01       		.byte	0x1
 7021 1b36 6003     		.2byte	0x360
 7022 1b38 29090000 		.4byte	0x929
 7023 1b3c 00000000 		.4byte	.LFB179
 7024 1b40 10000000 		.4byte	.LFE179-.LFB179
 7025 1b44 01       		.uleb128 0x1
ARM GAS  /tmp/ccCxIftT.s 			page 170


 7026 1b45 9C       		.byte	0x9c
 7027 1b46 741B0000 		.4byte	0x1b74
 7028 1b4a 3D       		.uleb128 0x3d
 7029 1b4b 741B0000 		.4byte	0x1b74
 7030 1b4f 02000000 		.4byte	.LBB513
 7031 1b53 06000000 		.4byte	.LBE513-.LBB513
 7032 1b57 01       		.byte	0x1
 7033 1b58 6203     		.2byte	0x362
 7034 1b5a 39       		.uleb128 0x39
 7035 1b5b 851B0000 		.4byte	0x1b85
 7036 1b5f 30080000 		.4byte	.LLST49
 7037 1b63 3A       		.uleb128 0x3a
 7038 1b64 08000000 		.4byte	.LVL125
 7039 1b68 BC1B0000 		.4byte	0x1bbc
 7040 1b6c 2E       		.uleb128 0x2e
 7041 1b6d 01       		.uleb128 0x1
 7042 1b6e 50       		.byte	0x50
 7043 1b6f 01       		.uleb128 0x1
 7044 1b70 30       		.byte	0x30
 7045 1b71 00       		.byte	0
 7046 1b72 00       		.byte	0
 7047 1b73 00       		.byte	0
 7048 1b74 3E       		.uleb128 0x3e
 7049 1b75 8A000000 		.4byte	.LASF265
 7050 1b79 01       		.byte	0x1
 7051 1b7a 5B03     		.2byte	0x35b
 7052 1b7c 29090000 		.4byte	0x929
 7053 1b80 01       		.byte	0x1
 7054 1b81 921B0000 		.4byte	0x1b92
 7055 1b85 3F       		.uleb128 0x3f
 7056 1b86 A2090000 		.4byte	.LASF237
 7057 1b8a 01       		.byte	0x1
 7058 1b8b 5B03     		.2byte	0x35b
 7059 1b8d 97000000 		.4byte	0x97
 7060 1b91 00       		.byte	0
 7061 1b92 2A       		.uleb128 0x2a
 7062 1b93 00110000 		.4byte	.LASF266
 7063 1b97 01       		.byte	0x1
 7064 1b98 5603     		.2byte	0x356
 7065 1b9a 82090000 		.4byte	0x982
 7066 1b9e 00000000 		.4byte	.LFB177
 7067 1ba2 06000000 		.4byte	.LFE177-.LFB177
 7068 1ba6 01       		.uleb128 0x1
 7069 1ba7 9C       		.byte	0x9c
 7070 1ba8 BC1B0000 		.4byte	0x1bbc
 7071 1bac 2D       		.uleb128 0x2d
 7072 1bad 06000000 		.4byte	.LVL121
 7073 1bb1 BC1B0000 		.4byte	0x1bbc
 7074 1bb5 2E       		.uleb128 0x2e
 7075 1bb6 01       		.uleb128 0x1
 7076 1bb7 50       		.byte	0x50
 7077 1bb8 01       		.uleb128 0x1
 7078 1bb9 30       		.byte	0x30
 7079 1bba 00       		.byte	0
 7080 1bbb 00       		.byte	0
 7081 1bbc 2A       		.uleb128 0x2a
 7082 1bbd 8F0E0000 		.4byte	.LASF267
ARM GAS  /tmp/ccCxIftT.s 			page 171


 7083 1bc1 01       		.byte	0x1
 7084 1bc2 4603     		.2byte	0x346
 7085 1bc4 82090000 		.4byte	0x982
 7086 1bc8 00000000 		.4byte	.LFB176
 7087 1bcc 48000000 		.4byte	.LFE176-.LFB176
 7088 1bd0 01       		.uleb128 0x1
 7089 1bd1 9C       		.byte	0x9c
 7090 1bd2 B31C0000 		.4byte	0x1cb3
 7091 1bd6 2C       		.uleb128 0x2c
 7092 1bd7 A2090000 		.4byte	.LASF237
 7093 1bdb 01       		.byte	0x1
 7094 1bdc 4603     		.2byte	0x346
 7095 1bde 97000000 		.4byte	0x97
 7096 1be2 44080000 		.4byte	.LLST33
 7097 1be6 2F       		.uleb128 0x2f
 7098 1be7 07010000 		.4byte	.LASF244
 7099 1beb 01       		.byte	0x1
 7100 1bec 4803     		.2byte	0x348
 7101 1bee 13090000 		.4byte	0x913
 7102 1bf2 49       		.uleb128 0x49
 7103 1bf3 706F7300 		.ascii	"pos\000"
 7104 1bf7 01       		.byte	0x1
 7105 1bf8 4903     		.2byte	0x349
 7106 1bfa A7000000 		.4byte	0xa7
 7107 1bfe 01       		.uleb128 0x1
 7108 1bff 52       		.byte	0x52
 7109 1c00 29       		.uleb128 0x29
 7110 1c01 220E0000 		.4byte	.LASF268
 7111 1c05 01       		.byte	0x1
 7112 1c06 4A03     		.2byte	0x34a
 7113 1c08 82090000 		.4byte	0x982
 7114 1c0c 01       		.uleb128 0x1
 7115 1c0d 50       		.byte	0x50
 7116 1c0e 32       		.uleb128 0x32
 7117 1c0f 25230000 		.4byte	0x2325
 7118 1c13 02000000 		.4byte	.LBB417
 7119 1c17 D0000000 		.4byte	.Ldebug_ranges0+0xd0
 7120 1c1b 01       		.byte	0x1
 7121 1c1c 4F03     		.2byte	0x34f
 7122 1c1e 6F1C0000 		.4byte	0x1c6f
 7123 1c22 33       		.uleb128 0x33
 7124 1c23 D0000000 		.4byte	.Ldebug_ranges0+0xd0
 7125 1c27 34       		.uleb128 0x34
 7126 1c28 35230000 		.4byte	0x2335
 7127 1c2c 35       		.uleb128 0x35
 7128 1c2d 41230000 		.4byte	0x2341
 7129 1c31 02000000 		.4byte	.LBB419
 7130 1c35 04000000 		.4byte	.LBE419-.LBB419
 7131 1c39 04       		.byte	0x4
 7132 1c3a 99       		.byte	0x99
 7133 1c3b 4F1C0000 		.4byte	0x1c4f
 7134 1c3f 36       		.uleb128 0x36
 7135 1c40 02000000 		.4byte	.LBB420
 7136 1c44 04000000 		.4byte	.LBE420-.LBB420
 7137 1c48 34       		.uleb128 0x34
 7138 1c49 52230000 		.4byte	0x2352
 7139 1c4d 00       		.byte	0
ARM GAS  /tmp/ccCxIftT.s 			page 172


 7140 1c4e 00       		.byte	0
 7141 1c4f 37       		.uleb128 0x37
 7142 1c50 5F230000 		.4byte	0x235f
 7143 1c54 06000000 		.4byte	.LBB421
 7144 1c58 02000000 		.4byte	.LBE421-.LBB421
 7145 1c5c 04       		.byte	0x4
 7146 1c5d 9A       		.byte	0x9a
 7147 1c5e 37       		.uleb128 0x37
 7148 1c5f 71230000 		.4byte	0x2371
 7149 1c63 08000000 		.4byte	.LBB423
 7150 1c67 04000000 		.4byte	.LBE423-.LBB423
 7151 1c6b 04       		.byte	0x4
 7152 1c6c 9A       		.byte	0x9a
 7153 1c6d 00       		.byte	0
 7154 1c6e 00       		.byte	0
 7155 1c6f 3D       		.uleb128 0x3d
 7156 1c70 F1220000 		.4byte	0x22f1
 7157 1c74 28000000 		.4byte	.LBB429
 7158 1c78 0C000000 		.4byte	.LBE429-.LBB429
 7159 1c7c 01       		.byte	0x1
 7160 1c7d 5203     		.2byte	0x352
 7161 1c7f 3B       		.uleb128 0x3b
 7162 1c80 FD220000 		.4byte	0x22fd
 7163 1c84 36       		.uleb128 0x36
 7164 1c85 2A000000 		.4byte	.LBB431
 7165 1c89 0A000000 		.4byte	.LBE431-.LBB431
 7166 1c8d 3B       		.uleb128 0x3b
 7167 1c8e FD220000 		.4byte	0x22fd
 7168 1c92 37       		.uleb128 0x37
 7169 1c93 71230000 		.4byte	0x2371
 7170 1c97 2E000000 		.4byte	.LBB433
 7171 1c9b 04000000 		.4byte	.LBE433-.LBB433
 7172 1c9f 04       		.byte	0x4
 7173 1ca0 A6       		.byte	0xa6
 7174 1ca1 37       		.uleb128 0x37
 7175 1ca2 68230000 		.4byte	0x2368
 7176 1ca6 32000000 		.4byte	.LBB435
 7177 1caa 02000000 		.4byte	.LBE435-.LBB435
 7178 1cae 04       		.byte	0x4
 7179 1caf A6       		.byte	0xa6
 7180 1cb0 00       		.byte	0
 7181 1cb1 00       		.byte	0
 7182 1cb2 00       		.byte	0
 7183 1cb3 4A       		.uleb128 0x4a
 7184 1cb4 6E060000 		.4byte	.LASF269
 7185 1cb8 01       		.byte	0x1
 7186 1cb9 4103     		.2byte	0x341
 7187 1cbb 00000000 		.4byte	.LFB175
 7188 1cbf 08000000 		.4byte	.LFE175-.LFB175
 7189 1cc3 01       		.uleb128 0x1
 7190 1cc4 9C       		.byte	0x9c
 7191 1cc5 F81C0000 		.4byte	0x1cf8
 7192 1cc9 2C       		.uleb128 0x2c
 7193 1cca A2090000 		.4byte	.LASF237
 7194 1cce 01       		.byte	0x1
 7195 1ccf 4103     		.2byte	0x341
 7196 1cd1 97000000 		.4byte	0x97
ARM GAS  /tmp/ccCxIftT.s 			page 173


 7197 1cd5 63080000 		.4byte	.LLST32
 7198 1cd9 2D       		.uleb128 0x2d
 7199 1cda 08000000 		.4byte	.LVL83
 7200 1cde 28240000 		.4byte	0x2428
 7201 1ce2 2E       		.uleb128 0x2e
 7202 1ce3 01       		.uleb128 0x1
 7203 1ce4 50       		.byte	0x50
 7204 1ce5 01       		.uleb128 0x1
 7205 1ce6 31       		.byte	0x31
 7206 1ce7 2E       		.uleb128 0x2e
 7207 1ce8 01       		.uleb128 0x1
 7208 1ce9 51       		.byte	0x51
 7209 1cea 02       		.uleb128 0x2
 7210 1ceb 08       		.byte	0x8
 7211 1cec 40       		.byte	0x40
 7212 1ced 44       		.uleb128 0x44
 7213 1cee 03210000 		.4byte	0x2103
 7214 1cf2 03       		.uleb128 0x3
 7215 1cf3 F3       		.byte	0xf3
 7216 1cf4 01       		.uleb128 0x1
 7217 1cf5 50       		.byte	0x50
 7218 1cf6 00       		.byte	0
 7219 1cf7 00       		.byte	0
 7220 1cf8 4A       		.uleb128 0x4a
 7221 1cf9 430B0000 		.4byte	.LASF270
 7222 1cfd 01       		.byte	0x1
 7223 1cfe 3C03     		.2byte	0x33c
 7224 1d00 00000000 		.4byte	.LFB174
 7225 1d04 08000000 		.4byte	.LFE174-.LFB174
 7226 1d08 01       		.uleb128 0x1
 7227 1d09 9C       		.byte	0x9c
 7228 1d0a 3D1D0000 		.4byte	0x1d3d
 7229 1d0e 2C       		.uleb128 0x2c
 7230 1d0f A2090000 		.4byte	.LASF237
 7231 1d13 01       		.byte	0x1
 7232 1d14 3C03     		.2byte	0x33c
 7233 1d16 97000000 		.4byte	0x97
 7234 1d1a 84080000 		.4byte	.LLST31
 7235 1d1e 2D       		.uleb128 0x2d
 7236 1d1f 08000000 		.4byte	.LVL80
 7237 1d23 28240000 		.4byte	0x2428
 7238 1d27 2E       		.uleb128 0x2e
 7239 1d28 01       		.uleb128 0x1
 7240 1d29 50       		.byte	0x50
 7241 1d2a 01       		.uleb128 0x1
 7242 1d2b 31       		.byte	0x31
 7243 1d2c 2E       		.uleb128 0x2e
 7244 1d2d 01       		.uleb128 0x1
 7245 1d2e 51       		.byte	0x51
 7246 1d2f 02       		.uleb128 0x2
 7247 1d30 08       		.byte	0x8
 7248 1d31 20       		.byte	0x20
 7249 1d32 44       		.uleb128 0x44
 7250 1d33 03210000 		.4byte	0x2103
 7251 1d37 03       		.uleb128 0x3
 7252 1d38 F3       		.byte	0xf3
 7253 1d39 01       		.uleb128 0x1
ARM GAS  /tmp/ccCxIftT.s 			page 174


 7254 1d3a 50       		.byte	0x50
 7255 1d3b 00       		.byte	0
 7256 1d3c 00       		.byte	0
 7257 1d3d 4A       		.uleb128 0x4a
 7258 1d3e DF090000 		.4byte	.LASF271
 7259 1d42 01       		.byte	0x1
 7260 1d43 3703     		.2byte	0x337
 7261 1d45 00000000 		.4byte	.LFB173
 7262 1d49 08000000 		.4byte	.LFE173-.LFB173
 7263 1d4d 01       		.uleb128 0x1
 7264 1d4e 9C       		.byte	0x9c
 7265 1d4f 811D0000 		.4byte	0x1d81
 7266 1d53 2C       		.uleb128 0x2c
 7267 1d54 A2090000 		.4byte	.LASF237
 7268 1d58 01       		.byte	0x1
 7269 1d59 3703     		.2byte	0x337
 7270 1d5b 97000000 		.4byte	0x97
 7271 1d5f A5080000 		.4byte	.LLST30
 7272 1d63 2D       		.uleb128 0x2d
 7273 1d64 08000000 		.4byte	.LVL77
 7274 1d68 28240000 		.4byte	0x2428
 7275 1d6c 2E       		.uleb128 0x2e
 7276 1d6d 01       		.uleb128 0x1
 7277 1d6e 50       		.byte	0x50
 7278 1d6f 01       		.uleb128 0x1
 7279 1d70 31       		.byte	0x31
 7280 1d71 2E       		.uleb128 0x2e
 7281 1d72 01       		.uleb128 0x1
 7282 1d73 51       		.byte	0x51
 7283 1d74 01       		.uleb128 0x1
 7284 1d75 40       		.byte	0x40
 7285 1d76 44       		.uleb128 0x44
 7286 1d77 03210000 		.4byte	0x2103
 7287 1d7b 03       		.uleb128 0x3
 7288 1d7c F3       		.byte	0xf3
 7289 1d7d 01       		.uleb128 0x1
 7290 1d7e 50       		.byte	0x50
 7291 1d7f 00       		.byte	0
 7292 1d80 00       		.byte	0
 7293 1d81 4A       		.uleb128 0x4a
 7294 1d82 CF0B0000 		.4byte	.LASF272
 7295 1d86 01       		.byte	0x1
 7296 1d87 3203     		.2byte	0x332
 7297 1d89 00000000 		.4byte	.LFB172
 7298 1d8d 08000000 		.4byte	.LFE172-.LFB172
 7299 1d91 01       		.uleb128 0x1
 7300 1d92 9C       		.byte	0x9c
 7301 1d93 D01D0000 		.4byte	0x1dd0
 7302 1d97 2C       		.uleb128 0x2c
 7303 1d98 A2090000 		.4byte	.LASF237
 7304 1d9c 01       		.byte	0x1
 7305 1d9d 3203     		.2byte	0x332
 7306 1d9f 97000000 		.4byte	0x97
 7307 1da3 C6080000 		.4byte	.LLST28
 7308 1da7 2C       		.uleb128 0x2c
 7309 1da8 05120000 		.4byte	.LASF273
 7310 1dac 01       		.byte	0x1
ARM GAS  /tmp/ccCxIftT.s 			page 175


 7311 1dad 3203     		.2byte	0x332
 7312 1daf 29090000 		.4byte	0x929
 7313 1db3 E7080000 		.4byte	.LLST29
 7314 1db7 2D       		.uleb128 0x2d
 7315 1db8 08000000 		.4byte	.LVL74
 7316 1dbc 28240000 		.4byte	0x2428
 7317 1dc0 2E       		.uleb128 0x2e
 7318 1dc1 01       		.uleb128 0x1
 7319 1dc2 51       		.byte	0x51
 7320 1dc3 01       		.uleb128 0x1
 7321 1dc4 32       		.byte	0x32
 7322 1dc5 44       		.uleb128 0x44
 7323 1dc6 03210000 		.4byte	0x2103
 7324 1dca 03       		.uleb128 0x3
 7325 1dcb F3       		.byte	0xf3
 7326 1dcc 01       		.uleb128 0x1
 7327 1dcd 50       		.byte	0x50
 7328 1dce 00       		.byte	0
 7329 1dcf 00       		.byte	0
 7330 1dd0 4A       		.uleb128 0x4a
 7331 1dd1 770A0000 		.4byte	.LASF274
 7332 1dd5 01       		.byte	0x1
 7333 1dd6 2D03     		.2byte	0x32d
 7334 1dd8 00000000 		.4byte	.LFB171
 7335 1ddc 08000000 		.4byte	.LFE171-.LFB171
 7336 1de0 01       		.uleb128 0x1
 7337 1de1 9C       		.byte	0x9c
 7338 1de2 1F1E0000 		.4byte	0x1e1f
 7339 1de6 2C       		.uleb128 0x2c
 7340 1de7 A2090000 		.4byte	.LASF237
 7341 1deb 01       		.byte	0x1
 7342 1dec 2D03     		.2byte	0x32d
 7343 1dee 97000000 		.4byte	0x97
 7344 1df2 08090000 		.4byte	.LLST26
 7345 1df6 2C       		.uleb128 0x2c
 7346 1df7 05120000 		.4byte	.LASF273
 7347 1dfb 01       		.byte	0x1
 7348 1dfc 2D03     		.2byte	0x32d
 7349 1dfe 29090000 		.4byte	0x929
 7350 1e02 29090000 		.4byte	.LLST27
 7351 1e06 2D       		.uleb128 0x2d
 7352 1e07 08000000 		.4byte	.LVL70
 7353 1e0b 28240000 		.4byte	0x2428
 7354 1e0f 2E       		.uleb128 0x2e
 7355 1e10 01       		.uleb128 0x1
 7356 1e11 51       		.byte	0x51
 7357 1e12 01       		.uleb128 0x1
 7358 1e13 31       		.byte	0x31
 7359 1e14 44       		.uleb128 0x44
 7360 1e15 03210000 		.4byte	0x2103
 7361 1e19 03       		.uleb128 0x3
 7362 1e1a F3       		.byte	0xf3
 7363 1e1b 01       		.uleb128 0x1
 7364 1e1c 50       		.byte	0x50
 7365 1e1d 00       		.byte	0
 7366 1e1e 00       		.byte	0
 7367 1e1f 4A       		.uleb128 0x4a
ARM GAS  /tmp/ccCxIftT.s 			page 176


 7368 1e20 9C010000 		.4byte	.LASF275
 7369 1e24 01       		.byte	0x1
 7370 1e25 2803     		.2byte	0x328
 7371 1e27 00000000 		.4byte	.LFB170
 7372 1e2b 08000000 		.4byte	.LFE170-.LFB170
 7373 1e2f 01       		.uleb128 0x1
 7374 1e30 9C       		.byte	0x9c
 7375 1e31 521E0000 		.4byte	0x1e52
 7376 1e35 2D       		.uleb128 0x2d
 7377 1e36 08000000 		.4byte	.LVL66
 7378 1e3a 28240000 		.4byte	0x2428
 7379 1e3e 2E       		.uleb128 0x2e
 7380 1e3f 01       		.uleb128 0x1
 7381 1e40 50       		.byte	0x50
 7382 1e41 01       		.uleb128 0x1
 7383 1e42 31       		.byte	0x31
 7384 1e43 2E       		.uleb128 0x2e
 7385 1e44 01       		.uleb128 0x1
 7386 1e45 51       		.byte	0x51
 7387 1e46 02       		.uleb128 0x2
 7388 1e47 08       		.byte	0x8
 7389 1e48 40       		.byte	0x40
 7390 1e49 44       		.uleb128 0x44
 7391 1e4a 03210000 		.4byte	0x2103
 7392 1e4e 01       		.uleb128 0x1
 7393 1e4f 30       		.byte	0x30
 7394 1e50 00       		.byte	0
 7395 1e51 00       		.byte	0
 7396 1e52 4A       		.uleb128 0x4a
 7397 1e53 C20E0000 		.4byte	.LASF276
 7398 1e57 01       		.byte	0x1
 7399 1e58 2303     		.2byte	0x323
 7400 1e5a 00000000 		.4byte	.LFB169
 7401 1e5e 08000000 		.4byte	.LFE169-.LFB169
 7402 1e62 01       		.uleb128 0x1
 7403 1e63 9C       		.byte	0x9c
 7404 1e64 851E0000 		.4byte	0x1e85
 7405 1e68 2D       		.uleb128 0x2d
 7406 1e69 08000000 		.4byte	.LVL65
 7407 1e6d 28240000 		.4byte	0x2428
 7408 1e71 2E       		.uleb128 0x2e
 7409 1e72 01       		.uleb128 0x1
 7410 1e73 50       		.byte	0x50
 7411 1e74 01       		.uleb128 0x1
 7412 1e75 31       		.byte	0x31
 7413 1e76 2E       		.uleb128 0x2e
 7414 1e77 01       		.uleb128 0x1
 7415 1e78 51       		.byte	0x51
 7416 1e79 02       		.uleb128 0x2
 7417 1e7a 08       		.byte	0x8
 7418 1e7b 20       		.byte	0x20
 7419 1e7c 44       		.uleb128 0x44
 7420 1e7d 03210000 		.4byte	0x2103
 7421 1e81 01       		.uleb128 0x1
 7422 1e82 30       		.byte	0x30
 7423 1e83 00       		.byte	0
 7424 1e84 00       		.byte	0
ARM GAS  /tmp/ccCxIftT.s 			page 177


 7425 1e85 4A       		.uleb128 0x4a
 7426 1e86 DB0A0000 		.4byte	.LASF277
 7427 1e8a 01       		.byte	0x1
 7428 1e8b 1E03     		.2byte	0x31e
 7429 1e8d 00000000 		.4byte	.LFB168
 7430 1e91 08000000 		.4byte	.LFE168-.LFB168
 7431 1e95 01       		.uleb128 0x1
 7432 1e96 9C       		.byte	0x9c
 7433 1e97 B71E0000 		.4byte	0x1eb7
 7434 1e9b 2D       		.uleb128 0x2d
 7435 1e9c 08000000 		.4byte	.LVL64
 7436 1ea0 28240000 		.4byte	0x2428
 7437 1ea4 2E       		.uleb128 0x2e
 7438 1ea5 01       		.uleb128 0x1
 7439 1ea6 50       		.byte	0x50
 7440 1ea7 01       		.uleb128 0x1
 7441 1ea8 31       		.byte	0x31
 7442 1ea9 2E       		.uleb128 0x2e
 7443 1eaa 01       		.uleb128 0x1
 7444 1eab 51       		.byte	0x51
 7445 1eac 01       		.uleb128 0x1
 7446 1ead 40       		.byte	0x40
 7447 1eae 44       		.uleb128 0x44
 7448 1eaf 03210000 		.4byte	0x2103
 7449 1eb3 01       		.uleb128 0x1
 7450 1eb4 30       		.byte	0x30
 7451 1eb5 00       		.byte	0
 7452 1eb6 00       		.byte	0
 7453 1eb7 4A       		.uleb128 0x4a
 7454 1eb8 EE070000 		.4byte	.LASF278
 7455 1ebc 01       		.byte	0x1
 7456 1ebd 1903     		.2byte	0x319
 7457 1ebf 00000000 		.4byte	.LFB167
 7458 1ec3 06000000 		.4byte	.LFE167-.LFB167
 7459 1ec7 01       		.uleb128 0x1
 7460 1ec8 9C       		.byte	0x9c
 7461 1ec9 F41E0000 		.4byte	0x1ef4
 7462 1ecd 2C       		.uleb128 0x2c
 7463 1ece 05120000 		.4byte	.LASF273
 7464 1ed2 01       		.byte	0x1
 7465 1ed3 1903     		.2byte	0x319
 7466 1ed5 29090000 		.4byte	0x929
 7467 1ed9 4A090000 		.4byte	.LLST25
 7468 1edd 2D       		.uleb128 0x2d
 7469 1ede 06000000 		.4byte	.LVL63
 7470 1ee2 28240000 		.4byte	0x2428
 7471 1ee6 2E       		.uleb128 0x2e
 7472 1ee7 01       		.uleb128 0x1
 7473 1ee8 51       		.byte	0x51
 7474 1ee9 01       		.uleb128 0x1
 7475 1eea 32       		.byte	0x32
 7476 1eeb 44       		.uleb128 0x44
 7477 1eec 03210000 		.4byte	0x2103
 7478 1ef0 01       		.uleb128 0x1
 7479 1ef1 30       		.byte	0x30
 7480 1ef2 00       		.byte	0
 7481 1ef3 00       		.byte	0
ARM GAS  /tmp/ccCxIftT.s 			page 178


 7482 1ef4 4A       		.uleb128 0x4a
 7483 1ef5 CD060000 		.4byte	.LASF279
 7484 1ef9 01       		.byte	0x1
 7485 1efa 1403     		.2byte	0x314
 7486 1efc 00000000 		.4byte	.LFB166
 7487 1f00 06000000 		.4byte	.LFE166-.LFB166
 7488 1f04 01       		.uleb128 0x1
 7489 1f05 9C       		.byte	0x9c
 7490 1f06 311F0000 		.4byte	0x1f31
 7491 1f0a 2C       		.uleb128 0x2c
 7492 1f0b 05120000 		.4byte	.LASF273
 7493 1f0f 01       		.byte	0x1
 7494 1f10 1403     		.2byte	0x314
 7495 1f12 29090000 		.4byte	0x929
 7496 1f16 6B090000 		.4byte	.LLST24
 7497 1f1a 2D       		.uleb128 0x2d
 7498 1f1b 06000000 		.4byte	.LVL61
 7499 1f1f 28240000 		.4byte	0x2428
 7500 1f23 2E       		.uleb128 0x2e
 7501 1f24 01       		.uleb128 0x1
 7502 1f25 51       		.byte	0x51
 7503 1f26 01       		.uleb128 0x1
 7504 1f27 31       		.byte	0x31
 7505 1f28 44       		.uleb128 0x44
 7506 1f29 03210000 		.4byte	0x2103
 7507 1f2d 01       		.uleb128 0x1
 7508 1f2e 30       		.byte	0x30
 7509 1f2f 00       		.byte	0
 7510 1f30 00       		.byte	0
 7511 1f31 4B       		.uleb128 0x4b
 7512 1f32 65110000 		.4byte	.LASF283
 7513 1f36 01       		.byte	0x1
 7514 1f37 BE02     		.2byte	0x2be
 7515 1f39 01       		.byte	0x1
 7516 1f3a 8C1F0000 		.4byte	0x1f8c
 7517 1f3e 3F       		.uleb128 0x3f
 7518 1f3f A2090000 		.4byte	.LASF237
 7519 1f43 01       		.byte	0x1
 7520 1f44 BE02     		.2byte	0x2be
 7521 1f46 97000000 		.4byte	0x97
 7522 1f4a 2F       		.uleb128 0x2f
 7523 1f4b 07010000 		.4byte	.LASF244
 7524 1f4f 01       		.byte	0x1
 7525 1f50 C002     		.2byte	0x2c0
 7526 1f52 13090000 		.4byte	0x913
 7527 1f56 2F       		.uleb128 0x2f
 7528 1f57 3E040000 		.4byte	.LASF280
 7529 1f5b 01       		.byte	0x1
 7530 1f5c C102     		.2byte	0x2c1
 7531 1f5e 97000000 		.4byte	0x97
 7532 1f62 2F       		.uleb128 0x2f
 7533 1f63 B2040000 		.4byte	.LASF281
 7534 1f67 01       		.byte	0x1
 7535 1f68 C202     		.2byte	0x2c2
 7536 1f6a 29090000 		.4byte	0x929
 7537 1f6e 47       		.uleb128 0x47
 7538 1f6f 657000   		.ascii	"ep\000"
ARM GAS  /tmp/ccCxIftT.s 			page 179


 7539 1f72 01       		.byte	0x1
 7540 1f73 C302     		.2byte	0x2c3
 7541 1f75 8F0D0000 		.4byte	0xd8f
 7542 1f79 29       		.uleb128 0x29
 7543 1f7a F50C0000 		.4byte	.LASF282
 7544 1f7e 01       		.byte	0x1
 7545 1f7f C402     		.2byte	0x2c4
 7546 1f81 A7000000 		.4byte	0xa7
 7547 1f85 05       		.uleb128 0x5
 7548 1f86 03       		.byte	0x3
 7549 1f87 00000000 		.4byte	sof_zlp_counter.9788
 7550 1f8b 00       		.byte	0
 7551 1f8c 4B       		.uleb128 0x4b
 7552 1f8d 62050000 		.4byte	.LASF284
 7553 1f91 01       		.byte	0x1
 7554 1f92 9E02     		.2byte	0x29e
 7555 1f94 01       		.byte	0x1
 7556 1f95 C71F0000 		.4byte	0x1fc7
 7557 1f99 3F       		.uleb128 0x3f
 7558 1f9a 6C070000 		.4byte	.LASF285
 7559 1f9e 01       		.byte	0x1
 7560 1f9f 9E02     		.2byte	0x29e
 7561 1fa1 B30D0000 		.4byte	0xdb3
 7562 1fa5 46       		.uleb128 0x46
 7563 1fa6 6E00     		.ascii	"n\000"
 7564 1fa8 01       		.byte	0x1
 7565 1fa9 9E02     		.2byte	0x29e
 7566 1fab 82090000 		.4byte	0x982
 7567 1faf 46       		.uleb128 0x46
 7568 1fb0 657000   		.ascii	"ep\000"
 7569 1fb3 01       		.byte	0x1
 7570 1fb4 9E02     		.2byte	0x29e
 7571 1fb6 8F0D0000 		.4byte	0xd8f
 7572 1fba 2F       		.uleb128 0x2f
 7573 1fbb A2090000 		.4byte	.LASF237
 7574 1fbf 01       		.byte	0x1
 7575 1fc0 A002     		.2byte	0x2a0
 7576 1fc2 97000000 		.4byte	0x97
 7577 1fc6 00       		.byte	0
 7578 1fc7 4B       		.uleb128 0x4b
 7579 1fc8 150A0000 		.4byte	.LASF286
 7580 1fcc 01       		.byte	0x1
 7581 1fcd 7A02     		.2byte	0x27a
 7582 1fcf 01       		.byte	0x1
 7583 1fd0 0E200000 		.4byte	0x200e
 7584 1fd4 3F       		.uleb128 0x3f
 7585 1fd5 6C070000 		.4byte	.LASF285
 7586 1fd9 01       		.byte	0x1
 7587 1fda 7A02     		.2byte	0x27a
 7588 1fdc B30D0000 		.4byte	0xdb3
 7589 1fe0 46       		.uleb128 0x46
 7590 1fe1 6E00     		.ascii	"n\000"
 7591 1fe3 01       		.byte	0x1
 7592 1fe4 7A02     		.2byte	0x27a
 7593 1fe6 82090000 		.4byte	0x982
 7594 1fea 46       		.uleb128 0x46
 7595 1feb 657000   		.ascii	"ep\000"
ARM GAS  /tmp/ccCxIftT.s 			page 180


 7596 1fee 01       		.byte	0x1
 7597 1fef 7A02     		.2byte	0x27a
 7598 1ff1 8F0D0000 		.4byte	0xd8f
 7599 1ff5 2F       		.uleb128 0x2f
 7600 1ff6 3E040000 		.4byte	.LASF280
 7601 1ffa 01       		.byte	0x1
 7602 1ffb 7C02     		.2byte	0x27c
 7603 1ffd 97000000 		.4byte	0x97
 7604 2001 2F       		.uleb128 0x2f
 7605 2002 A2090000 		.4byte	.LASF237
 7606 2006 01       		.byte	0x1
 7607 2007 7D02     		.2byte	0x27d
 7608 2009 97000000 		.4byte	0x97
 7609 200d 00       		.byte	0
 7610 200e 45       		.uleb128 0x45
 7611 200f A4000000 		.4byte	.LASF288
 7612 2013 01       		.byte	0x1
 7613 2014 4802     		.2byte	0x248
 7614 2016 29090000 		.4byte	0x929
 7615 201a 01       		.byte	0x1
 7616 201b 4F200000 		.4byte	0x204f
 7617 201f 3F       		.uleb128 0x3f
 7618 2020 A2090000 		.4byte	.LASF237
 7619 2024 01       		.byte	0x1
 7620 2025 4802     		.2byte	0x248
 7621 2027 97000000 		.4byte	0x97
 7622 202b 2F       		.uleb128 0x2f
 7623 202c 07010000 		.4byte	.LASF244
 7624 2030 01       		.byte	0x1
 7625 2031 4A02     		.2byte	0x24a
 7626 2033 13090000 		.4byte	0x913
 7627 2037 2F       		.uleb128 0x2f
 7628 2038 3E040000 		.4byte	.LASF280
 7629 203c 01       		.byte	0x1
 7630 203d 4B02     		.2byte	0x24b
 7631 203f 97000000 		.4byte	0x97
 7632 2043 47       		.uleb128 0x47
 7633 2044 657000   		.ascii	"ep\000"
 7634 2047 01       		.byte	0x1
 7635 2048 4C02     		.2byte	0x24c
 7636 204a 8F0D0000 		.4byte	0xd8f
 7637 204e 00       		.byte	0
 7638 204f 4C       		.uleb128 0x4c
 7639 2050 0F0C0000 		.4byte	.LASF293
 7640 2054 01       		.byte	0x1
 7641 2055 2002     		.2byte	0x220
 7642 2057 00000000 		.4byte	.LFB161
 7643 205b 44000000 		.4byte	.LFE161-.LFB161
 7644 205f 01       		.uleb128 0x1
 7645 2060 9C       		.byte	0x9c
 7646 2061 D1200000 		.4byte	0x20d1
 7647 2065 2C       		.uleb128 0x2c
 7648 2066 6C070000 		.4byte	.LASF285
 7649 206a 01       		.byte	0x1
 7650 206b 2002     		.2byte	0x220
 7651 206d B30D0000 		.4byte	0xdb3
 7652 2071 8C090000 		.4byte	.LLST2
ARM GAS  /tmp/ccCxIftT.s 			page 181


 7653 2075 2B       		.uleb128 0x2b
 7654 2076 6E00     		.ascii	"n\000"
 7655 2078 01       		.byte	0x1
 7656 2079 2002     		.2byte	0x220
 7657 207b 82090000 		.4byte	0x982
 7658 207f B8090000 		.4byte	.LLST3
 7659 2083 2B       		.uleb128 0x2b
 7660 2084 657000   		.ascii	"ep\000"
 7661 2087 01       		.byte	0x1
 7662 2088 2002     		.2byte	0x220
 7663 208a 8F0D0000 		.4byte	0xd8f
 7664 208e D9090000 		.4byte	.LLST4
 7665 2092 4D       		.uleb128 0x4d
 7666 2093 A2090000 		.4byte	.LASF237
 7667 2097 01       		.byte	0x1
 7668 2098 2202     		.2byte	0x222
 7669 209a 97000000 		.4byte	0x97
 7670 209e 00       		.byte	0
 7671 209f 3C       		.uleb128 0x3c
 7672 20a0 D1200000 		.4byte	0x20d1
 7673 20a4 22000000 		.4byte	.LBB261
 7674 20a8 18000000 		.4byte	.Ldebug_ranges0+0x18
 7675 20ac 01       		.byte	0x1
 7676 20ad 4002     		.2byte	0x240
 7677 20af 42       		.uleb128 0x42
 7678 20b0 DE200000 		.4byte	0x20de
 7679 20b4 00       		.byte	0
 7680 20b5 39       		.uleb128 0x39
 7681 20b6 EA200000 		.4byte	0x20ea
 7682 20ba 050A0000 		.4byte	.LLST5
 7683 20be 2D       		.uleb128 0x2d
 7684 20bf 32000000 		.4byte	.LVL13
 7685 20c3 E5230000 		.4byte	0x23e5
 7686 20c7 44       		.uleb128 0x44
 7687 20c8 DE200000 		.4byte	0x20de
 7688 20cc 01       		.uleb128 0x1
 7689 20cd 30       		.byte	0x30
 7690 20ce 00       		.byte	0
 7691 20cf 00       		.byte	0
 7692 20d0 00       		.byte	0
 7693 20d1 4B       		.uleb128 0x4b
 7694 20d2 1C080000 		.4byte	.LASF289
 7695 20d6 01       		.byte	0x1
 7696 20d7 0A02     		.2byte	0x20a
 7697 20d9 01       		.byte	0x1
 7698 20da F6200000 		.4byte	0x20f6
 7699 20de 3F       		.uleb128 0x3f
 7700 20df A2090000 		.4byte	.LASF237
 7701 20e3 01       		.byte	0x1
 7702 20e4 0A02     		.2byte	0x20a
 7703 20e6 97000000 		.4byte	0x97
 7704 20ea 46       		.uleb128 0x46
 7705 20eb 657000   		.ascii	"ep\000"
 7706 20ee 01       		.byte	0x1
 7707 20ef 0A02     		.2byte	0x20a
 7708 20f1 8F0D0000 		.4byte	0xd8f
 7709 20f5 00       		.byte	0
ARM GAS  /tmp/ccCxIftT.s 			page 182


 7710 20f6 4B       		.uleb128 0x4b
 7711 20f7 98040000 		.4byte	.LASF290
 7712 20fb 01       		.byte	0x1
 7713 20fc E801     		.2byte	0x1e8
 7714 20fe 01       		.byte	0x1
 7715 20ff 40210000 		.4byte	0x2140
 7716 2103 3F       		.uleb128 0x3f
 7717 2104 A2090000 		.4byte	.LASF237
 7718 2108 01       		.byte	0x1
 7719 2109 E801     		.2byte	0x1e8
 7720 210b 97000000 		.4byte	0x97
 7721 210f 3F       		.uleb128 0x3f
 7722 2110 05120000 		.4byte	.LASF273
 7723 2114 01       		.byte	0x1
 7724 2115 E801     		.2byte	0x1e8
 7725 2117 29090000 		.4byte	0x929
 7726 211b 3F       		.uleb128 0x3f
 7727 211c 050D0000 		.4byte	.LASF291
 7728 2120 01       		.byte	0x1
 7729 2121 E801     		.2byte	0x1e8
 7730 2123 57090000 		.4byte	0x957
 7731 2127 2F       		.uleb128 0x2f
 7732 2128 07010000 		.4byte	.LASF244
 7733 212c 01       		.byte	0x1
 7734 212d EA01     		.2byte	0x1ea
 7735 212f 13090000 		.4byte	0x913
 7736 2133 2F       		.uleb128 0x2f
 7737 2134 B8110000 		.4byte	.LASF292
 7738 2138 01       		.byte	0x1
 7739 2139 EB01     		.2byte	0x1eb
 7740 213b 8F0D0000 		.4byte	0xd8f
 7741 213f 00       		.byte	0
 7742 2140 4C       		.uleb128 0x4c
 7743 2141 EA000000 		.4byte	.LASF294
 7744 2145 01       		.byte	0x1
 7745 2146 E001     		.2byte	0x1e0
 7746 2148 00000000 		.4byte	.LFB158
 7747 214c 02000000 		.4byte	.LFE158-.LFB158
 7748 2150 01       		.uleb128 0x1
 7749 2151 9C       		.byte	0x9c
 7750 2152 63210000 		.4byte	0x2163
 7751 2156 2F       		.uleb128 0x2f
 7752 2157 A2090000 		.4byte	.LASF237
 7753 215b 01       		.byte	0x1
 7754 215c E201     		.2byte	0x1e2
 7755 215e 97000000 		.4byte	0x97
 7756 2162 00       		.byte	0
 7757 2163 45       		.uleb128 0x45
 7758 2164 53120000 		.4byte	.LASF295
 7759 2168 01       		.byte	0x1
 7760 2169 CE01     		.2byte	0x1ce
 7761 216b 97000000 		.4byte	0x97
 7762 216f 01       		.byte	0x1
 7763 2170 81210000 		.4byte	0x2181
 7764 2174 2F       		.uleb128 0x2f
 7765 2175 A2090000 		.4byte	.LASF237
 7766 2179 01       		.byte	0x1
ARM GAS  /tmp/ccCxIftT.s 			page 183


 7767 217a D001     		.2byte	0x1d0
 7768 217c 97000000 		.4byte	0x97
 7769 2180 00       		.byte	0
 7770 2181 4A       		.uleb128 0x4a
 7771 2182 4A0A0000 		.4byte	.LASF296
 7772 2186 01       		.byte	0x1
 7773 2187 BC01     		.2byte	0x1bc
 7774 2189 00000000 		.4byte	.LFB156
 7775 218d 04000000 		.4byte	.LFE156-.LFB156
 7776 2191 01       		.uleb128 0x1
 7777 2192 9C       		.byte	0x9c
 7778 2193 AE210000 		.4byte	0x21ae
 7779 2197 4D       		.uleb128 0x4d
 7780 2198 BA0D0000 		.4byte	.LASF297
 7781 219c 01       		.byte	0x1
 7782 219d BE01     		.2byte	0x1be
 7783 219f 97000000 		.4byte	0x97
 7784 21a3 00       		.byte	0
 7785 21a4 4E       		.uleb128 0x4e
 7786 21a5 04000000 		.4byte	.LVL53
 7787 21a9 A9250000 		.4byte	0x25a9
 7788 21ad 00       		.byte	0
 7789 21ae 4F       		.uleb128 0x4f
 7790 21af 6C080000 		.4byte	.LASF298
 7791 21b3 01       		.byte	0x1
 7792 21b4 B701     		.2byte	0x1b7
 7793 21b6 97000000 		.4byte	0x97
 7794 21ba 00000000 		.4byte	.LFB155
 7795 21be 04000000 		.4byte	.LFE155-.LFB155
 7796 21c2 01       		.uleb128 0x1
 7797 21c3 9C       		.byte	0x9c
 7798 21c4 4F       		.uleb128 0x4f
 7799 21c5 C2080000 		.4byte	.LASF299
 7800 21c9 01       		.byte	0x1
 7801 21ca B201     		.2byte	0x1b2
 7802 21cc 29090000 		.4byte	0x929
 7803 21d0 00000000 		.4byte	.LFB154
 7804 21d4 04000000 		.4byte	.LFE154-.LFB154
 7805 21d8 01       		.uleb128 0x1
 7806 21d9 9C       		.byte	0x9c
 7807 21da 3E       		.uleb128 0x3e
 7808 21db A0070000 		.4byte	.LASF300
 7809 21df 01       		.byte	0x1
 7810 21e0 7A01     		.2byte	0x17a
 7811 21e2 29090000 		.4byte	0x929
 7812 21e6 01       		.byte	0x1
 7813 21e7 F8210000 		.4byte	0x21f8
 7814 21eb 2F       		.uleb128 0x2f
 7815 21ec A2090000 		.4byte	.LASF237
 7816 21f0 01       		.byte	0x1
 7817 21f1 7C01     		.2byte	0x17c
 7818 21f3 97000000 		.4byte	0x97
 7819 21f7 00       		.byte	0
 7820 21f8 4A       		.uleb128 0x4a
 7821 21f9 BE090000 		.4byte	.LASF301
 7822 21fd 01       		.byte	0x1
 7823 21fe 6F01     		.2byte	0x16f
ARM GAS  /tmp/ccCxIftT.s 			page 184


 7824 2200 00000000 		.4byte	.LFB152
 7825 2204 24000000 		.4byte	.LFE152-.LFB152
 7826 2208 01       		.uleb128 0x1
 7827 2209 9C       		.byte	0x9c
 7828 220a 28220000 		.4byte	0x2228
 7829 220e 30       		.uleb128 0x30
 7830 220f A2090000 		.4byte	.LASF237
 7831 2213 01       		.byte	0x1
 7832 2214 7101     		.2byte	0x171
 7833 2216 97000000 		.4byte	0x97
 7834 221a 310A0000 		.4byte	.LLST0
 7835 221e 50       		.uleb128 0x50
 7836 221f 12000000 		.4byte	.LVL2
 7837 2223 1E2B0000 		.4byte	0x2b1e
 7838 2227 00       		.byte	0
 7839 2228 51       		.uleb128 0x51
 7840 2229 620A0000 		.4byte	.LASF328
 7841 222d 01       		.byte	0x1
 7842 222e 6901     		.2byte	0x169
 7843 2230 00000000 		.4byte	.LFB151
 7844 2234 10000000 		.4byte	.LFE151-.LFB151
 7845 2238 01       		.uleb128 0x1
 7846 2239 9C       		.byte	0x9c
 7847 223a 3E       		.uleb128 0x3e
 7848 223b E6010000 		.4byte	.LASF302
 7849 223f 01       		.byte	0x1
 7850 2240 4201     		.2byte	0x142
 7851 2242 29090000 		.4byte	0x929
 7852 2246 01       		.byte	0x1
 7853 2247 58220000 		.4byte	0x2258
 7854 224b 2F       		.uleb128 0x2f
 7855 224c A2090000 		.4byte	.LASF237
 7856 2250 01       		.byte	0x1
 7857 2251 4401     		.2byte	0x144
 7858 2253 97000000 		.4byte	0x97
 7859 2257 00       		.byte	0
 7860 2258 3E       		.uleb128 0x3e
 7861 2259 38010000 		.4byte	.LASF303
 7862 225d 01       		.byte	0x1
 7863 225e 0C01     		.2byte	0x10c
 7864 2260 29090000 		.4byte	0x929
 7865 2264 01       		.byte	0x1
 7866 2265 82220000 		.4byte	0x2282
 7867 2269 2F       		.uleb128 0x2f
 7868 226a A2090000 		.4byte	.LASF237
 7869 226e 01       		.byte	0x1
 7870 226f 0E01     		.2byte	0x10e
 7871 2271 97000000 		.4byte	0x97
 7872 2275 2F       		.uleb128 0x2f
 7873 2276 4C010000 		.4byte	.LASF304
 7874 227a 01       		.byte	0x1
 7875 227b 0F01     		.2byte	0x10f
 7876 227d 97000000 		.4byte	0x97
 7877 2281 00       		.byte	0
 7878 2282 52       		.uleb128 0x52
 7879 2283 93110000 		.4byte	.LASF305
 7880 2287 15       		.byte	0x15
ARM GAS  /tmp/ccCxIftT.s 			page 185


 7881 2288 96       		.byte	0x96
 7882 2289 03       		.byte	0x3
 7883 228a A5220000 		.4byte	0x22a5
 7884 228e 53       		.uleb128 0x53
 7885 228f A2090000 		.4byte	.LASF237
 7886 2293 15       		.byte	0x15
 7887 2294 96       		.byte	0x96
 7888 2295 97000000 		.4byte	0x97
 7889 2299 54       		.uleb128 0x54
 7890 229a 63666700 		.ascii	"cfg\000"
 7891 229e 15       		.byte	0x15
 7892 229f 96       		.byte	0x96
 7893 22a0 A5220000 		.4byte	0x22a5
 7894 22a4 00       		.byte	0
 7895 22a5 12       		.uleb128 0x12
 7896 22a6 04       		.byte	0x4
 7897 22a7 C7090000 		.4byte	0x9c7
 7898 22ab 52       		.uleb128 0x52
 7899 22ac BC060000 		.4byte	.LASF306
 7900 22b0 15       		.byte	0x15
 7901 22b1 93       		.byte	0x93
 7902 22b2 03       		.byte	0x3
 7903 22b3 CE220000 		.4byte	0x22ce
 7904 22b7 53       		.uleb128 0x53
 7905 22b8 A2090000 		.4byte	.LASF237
 7906 22bc 15       		.byte	0x15
 7907 22bd 93       		.byte	0x93
 7908 22be 97000000 		.4byte	0x97
 7909 22c2 53       		.uleb128 0x53
 7910 22c3 B90E0000 		.4byte	.LASF307
 7911 22c7 15       		.byte	0x15
 7912 22c8 93       		.byte	0x93
 7913 22c9 29090000 		.4byte	0x929
 7914 22cd 00       		.byte	0
 7915 22ce 52       		.uleb128 0x52
 7916 22cf 7D010000 		.4byte	.LASF308
 7917 22d3 15       		.byte	0x15
 7918 22d4 90       		.byte	0x90
 7919 22d5 03       		.byte	0x3
 7920 22d6 F1220000 		.4byte	0x22f1
 7921 22da 53       		.uleb128 0x53
 7922 22db A2090000 		.4byte	.LASF237
 7923 22df 15       		.byte	0x15
 7924 22e0 90       		.byte	0x90
 7925 22e1 97000000 		.4byte	0x97
 7926 22e5 53       		.uleb128 0x53
 7927 22e6 B90E0000 		.4byte	.LASF307
 7928 22ea 15       		.byte	0x15
 7929 22eb 90       		.byte	0x90
 7930 22ec 29090000 		.4byte	0x929
 7931 22f0 00       		.byte	0
 7932 22f1 55       		.uleb128 0x55
 7933 22f2 A0020000 		.4byte	.LASF309
 7934 22f6 04       		.byte	0x4
 7935 22f7 A3       		.byte	0xa3
 7936 22f8 03       		.byte	0x3
 7937 22f9 09230000 		.4byte	0x2309
ARM GAS  /tmp/ccCxIftT.s 			page 186


 7938 22fd 53       		.uleb128 0x53
 7939 22fe 07010000 		.4byte	.LASF244
 7940 2302 04       		.byte	0x4
 7941 2303 A3       		.byte	0xa3
 7942 2304 13090000 		.4byte	0x913
 7943 2308 00       		.byte	0
 7944 2309 56       		.uleb128 0x56
 7945 230a 10030000 		.4byte	.LASF310
 7946 230e 04       		.byte	0x4
 7947 230f 9E       		.byte	0x9e
 7948 2310 29090000 		.4byte	0x929
 7949 2314 03       		.byte	0x3
 7950 2315 25230000 		.4byte	0x2325
 7951 2319 53       		.uleb128 0x53
 7952 231a 07010000 		.4byte	.LASF244
 7953 231e 04       		.byte	0x4
 7954 231f 9E       		.byte	0x9e
 7955 2320 13090000 		.4byte	0x913
 7956 2324 00       		.byte	0
 7957 2325 56       		.uleb128 0x56
 7958 2326 28020000 		.4byte	.LASF311
 7959 232a 04       		.byte	0x4
 7960 232b 97       		.byte	0x97
 7961 232c 13090000 		.4byte	0x913
 7962 2330 03       		.byte	0x3
 7963 2331 41230000 		.4byte	0x2341
 7964 2335 57       		.uleb128 0x57
 7965 2336 07010000 		.4byte	.LASF244
 7966 233a 04       		.byte	0x4
 7967 233b 99       		.byte	0x99
 7968 233c 13090000 		.4byte	0x913
 7969 2340 00       		.byte	0
 7970 2341 45       		.uleb128 0x45
 7971 2342 2A010000 		.4byte	.LASF312
 7972 2346 02       		.byte	0x2
 7973 2347 D201     		.2byte	0x1d2
 7974 2349 C7000000 		.4byte	0xc7
 7975 234d 03       		.byte	0x3
 7976 234e 5F230000 		.4byte	0x235f
 7977 2352 2F       		.uleb128 0x2f
 7978 2353 C8030000 		.4byte	.LASF313
 7979 2357 02       		.byte	0x2
 7980 2358 D401     		.2byte	0x1d4
 7981 235a C7000000 		.4byte	0xc7
 7982 235e 00       		.byte	0
 7983 235f 58       		.uleb128 0x58
 7984 2360 08050000 		.4byte	.LASF314
 7985 2364 02       		.byte	0x2
 7986 2365 4801     		.2byte	0x148
 7987 2367 03       		.byte	0x3
 7988 2368 58       		.uleb128 0x58
 7989 2369 490C0000 		.4byte	.LASF315
 7990 236d 02       		.byte	0x2
 7991 236e 3D01     		.2byte	0x13d
 7992 2370 03       		.byte	0x3
 7993 2371 58       		.uleb128 0x58
 7994 2372 0E0D0000 		.4byte	.LASF316
ARM GAS  /tmp/ccCxIftT.s 			page 187


 7995 2376 03       		.byte	0x3
 7996 2377 C601     		.2byte	0x1c6
 7997 2379 03       		.byte	0x3
 7998 237a 59       		.uleb128 0x59
 7999 237b DA210000 		.4byte	0x21da
 8000 237f 00000000 		.4byte	.LFB153
 8001 2383 68000000 		.4byte	.LFE153-.LFB153
 8002 2387 01       		.uleb128 0x1
 8003 2388 9C       		.byte	0x9c
 8004 2389 9E230000 		.4byte	0x239e
 8005 238d 34       		.uleb128 0x34
 8006 238e EB210000 		.4byte	0x21eb
 8007 2392 33       		.uleb128 0x33
 8008 2393 00000000 		.4byte	.Ldebug_ranges0+0
 8009 2397 34       		.uleb128 0x34
 8010 2398 8D230000 		.4byte	0x238d
 8011 239c 00       		.byte	0
 8012 239d 00       		.byte	0
 8013 239e 59       		.uleb128 0x59
 8014 239f 58220000 		.4byte	0x2258
 8015 23a3 00000000 		.4byte	.LFB149
 8016 23a7 5C000000 		.4byte	.LFE149-.LFB149
 8017 23ab 01       		.uleb128 0x1
 8018 23ac 9C       		.byte	0x9c
 8019 23ad E5230000 		.4byte	0x23e5
 8020 23b1 5A       		.uleb128 0x5a
 8021 23b2 69220000 		.4byte	0x2269
 8022 23b6 00       		.byte	0
 8023 23b7 5A       		.uleb128 0x5a
 8024 23b8 75220000 		.4byte	0x2275
 8025 23bc 00       		.byte	0
 8026 23bd 5B       		.uleb128 0x5b
 8027 23be 40000000 		.4byte	.LBB260
 8028 23c2 08000000 		.4byte	.LBE260-.LBB260
 8029 23c6 D5230000 		.4byte	0x23d5
 8030 23ca 34       		.uleb128 0x34
 8031 23cb B1230000 		.4byte	0x23b1
 8032 23cf 34       		.uleb128 0x34
 8033 23d0 B7230000 		.4byte	0x23b7
 8034 23d4 00       		.byte	0
 8035 23d5 3A       		.uleb128 0x3a
 8036 23d6 3E000000 		.4byte	.LVL6
 8037 23da 292B0000 		.4byte	0x2b29
 8038 23de 2E       		.uleb128 0x2e
 8039 23df 01       		.uleb128 0x1
 8040 23e0 50       		.byte	0x50
 8041 23e1 01       		.uleb128 0x1
 8042 23e2 30       		.byte	0x30
 8043 23e3 00       		.byte	0
 8044 23e4 00       		.byte	0
 8045 23e5 59       		.uleb128 0x59
 8046 23e6 D1200000 		.4byte	0x20d1
 8047 23ea 00000000 		.4byte	.LFB200
 8048 23ee 34000000 		.4byte	.LFE200-.LFB200
 8049 23f2 01       		.uleb128 0x1
 8050 23f3 9C       		.byte	0x9c
 8051 23f4 28240000 		.4byte	0x2428
ARM GAS  /tmp/ccCxIftT.s 			page 188


 8052 23f8 39       		.uleb128 0x39
 8053 23f9 EA200000 		.4byte	0x20ea
 8054 23fd 440A0000 		.4byte	.LLST1
 8055 2401 3B       		.uleb128 0x3b
 8056 2402 DE200000 		.4byte	0x20de
 8057 2406 3A       		.uleb128 0x3a
 8058 2407 1A000000 		.4byte	.LVL8
 8059 240b 342B0000 		.4byte	0x2b34
 8060 240f 2E       		.uleb128 0x2e
 8061 2410 01       		.uleb128 0x1
 8062 2411 51       		.byte	0x51
 8063 2412 01       		.uleb128 0x1
 8064 2413 30       		.byte	0x30
 8065 2414 2E       		.uleb128 0x2e
 8066 2415 01       		.uleb128 0x1
 8067 2416 52       		.byte	0x52
 8068 2417 02       		.uleb128 0x2
 8069 2418 74       		.byte	0x74
 8070 2419 00       		.sleb128 0
 8071 241a 2E       		.uleb128 0x2e
 8072 241b 01       		.uleb128 0x1
 8073 241c 53       		.byte	0x53
 8074 241d 01       		.uleb128 0x1
 8075 241e 3A       		.byte	0x3a
 8076 241f 2E       		.uleb128 0x2e
 8077 2420 02       		.uleb128 0x2
 8078 2421 7D       		.byte	0x7d
 8079 2422 00       		.sleb128 0
 8080 2423 02       		.uleb128 0x2
 8081 2424 76       		.byte	0x76
 8082 2425 00       		.sleb128 0
 8083 2426 00       		.byte	0
 8084 2427 00       		.byte	0
 8085 2428 59       		.uleb128 0x59
 8086 2429 F6200000 		.4byte	0x20f6
 8087 242d 00000000 		.4byte	.LFB201
 8088 2431 64000000 		.4byte	.LFE201-.LFB201
 8089 2435 01       		.uleb128 0x1
 8090 2436 9C       		.byte	0x9c
 8091 2437 A9250000 		.4byte	0x25a9
 8092 243b 39       		.uleb128 0x39
 8093 243c 0F210000 		.4byte	0x210f
 8094 2440 650A0000 		.4byte	.LLST6
 8095 2444 39       		.uleb128 0x39
 8096 2445 1B210000 		.4byte	0x211b
 8097 2449 910A0000 		.4byte	.LLST7
 8098 244d 5C       		.uleb128 0x5c
 8099 244e 03210000 		.4byte	0x2103
 8100 2452 06       		.uleb128 0x6
 8101 2453 FA       		.byte	0xfa
 8102 2454 03210000 		.4byte	0x2103
 8103 2458 9F       		.byte	0x9f
 8104 2459 34       		.uleb128 0x34
 8105 245a 27210000 		.4byte	0x2127
 8106 245e 40       		.uleb128 0x40
 8107 245f 33210000 		.4byte	0x2133
 8108 2463 CB0A0000 		.4byte	.LLST8
ARM GAS  /tmp/ccCxIftT.s 			page 189


 8109 2467 38       		.uleb128 0x38
 8110 2468 25230000 		.4byte	0x2325
 8111 246c 02000000 		.4byte	.LBB299
 8112 2470 10000000 		.4byte	.LBE299-.LBB299
 8113 2474 01       		.byte	0x1
 8114 2475 F201     		.2byte	0x1f2
 8115 2477 D2240000 		.4byte	0x24d2
 8116 247b 36       		.uleb128 0x36
 8117 247c 02000000 		.4byte	.LBB300
 8118 2480 10000000 		.4byte	.LBE300-.LBB300
 8119 2484 40       		.uleb128 0x40
 8120 2485 35230000 		.4byte	0x2335
 8121 2489 E00A0000 		.4byte	.LLST9
 8122 248d 35       		.uleb128 0x35
 8123 248e 41230000 		.4byte	0x2341
 8124 2492 02000000 		.4byte	.LBB301
 8125 2496 04000000 		.4byte	.LBE301-.LBB301
 8126 249a 04       		.byte	0x4
 8127 249b 99       		.byte	0x99
 8128 249c B2240000 		.4byte	0x24b2
 8129 24a0 36       		.uleb128 0x36
 8130 24a1 02000000 		.4byte	.LBB302
 8131 24a5 04000000 		.4byte	.LBE302-.LBB302
 8132 24a9 41       		.uleb128 0x41
 8133 24aa 52230000 		.4byte	0x2352
 8134 24ae 01       		.uleb128 0x1
 8135 24af 55       		.byte	0x55
 8136 24b0 00       		.byte	0
 8137 24b1 00       		.byte	0
 8138 24b2 37       		.uleb128 0x37
 8139 24b3 5F230000 		.4byte	0x235f
 8140 24b7 06000000 		.4byte	.LBB303
 8141 24bb 02000000 		.4byte	.LBE303-.LBB303
 8142 24bf 04       		.byte	0x4
 8143 24c0 9A       		.byte	0x9a
 8144 24c1 37       		.uleb128 0x37
 8145 24c2 71230000 		.4byte	0x2371
 8146 24c6 08000000 		.4byte	.LBB305
 8147 24ca 04000000 		.4byte	.LBE305-.LBB305
 8148 24ce 04       		.byte	0x4
 8149 24cf 9A       		.byte	0x9a
 8150 24d0 00       		.byte	0
 8151 24d1 00       		.byte	0
 8152 24d2 32       		.uleb128 0x32
 8153 24d3 F1220000 		.4byte	0x22f1
 8154 24d7 1E000000 		.4byte	.LBB307
 8155 24db 30000000 		.4byte	.Ldebug_ranges0+0x30
 8156 24df 01       		.byte	0x1
 8157 24e0 F801     		.2byte	0x1f8
 8158 24e2 26250000 		.4byte	0x2526
 8159 24e6 39       		.uleb128 0x39
 8160 24e7 FD220000 		.4byte	0x22fd
 8161 24eb FA0A0000 		.4byte	.LLST10
 8162 24ef 36       		.uleb128 0x36
 8163 24f0 48000000 		.4byte	.LBB309
 8164 24f4 1C000000 		.4byte	.LBE309-.LBB309
 8165 24f8 5C       		.uleb128 0x5c
ARM GAS  /tmp/ccCxIftT.s 			page 190


 8166 24f9 FD220000 		.4byte	0x22fd
 8167 24fd 08       		.uleb128 0x8
 8168 24fe 75       		.byte	0x75
 8169 24ff 00       		.sleb128 0
 8170 2500 30       		.byte	0x30
 8171 2501 29       		.byte	0x29
 8172 2502 08       		.byte	0x8
 8173 2503 FF       		.byte	0xff
 8174 2504 1A       		.byte	0x1a
 8175 2505 9F       		.byte	0x9f
 8176 2506 37       		.uleb128 0x37
 8177 2507 71230000 		.4byte	0x2371
 8178 250b 4C000000 		.4byte	.LBB311
 8179 250f 04000000 		.4byte	.LBE311-.LBB311
 8180 2513 04       		.byte	0x4
 8181 2514 A6       		.byte	0xa6
 8182 2515 37       		.uleb128 0x37
 8183 2516 68230000 		.4byte	0x2368
 8184 251a 50000000 		.4byte	.LBB313
 8185 251e 14000000 		.4byte	.LBE313-.LBB313
 8186 2522 04       		.byte	0x4
 8187 2523 A6       		.byte	0xa6
 8188 2524 00       		.byte	0
 8189 2525 00       		.byte	0
 8190 2526 38       		.uleb128 0x38
 8191 2527 D1200000 		.4byte	0x20d1
 8192 252b 20000000 		.4byte	.LBB316
 8193 252f 06000000 		.4byte	.LBE316-.LBB316
 8194 2533 01       		.byte	0x1
 8195 2534 0602     		.2byte	0x206
 8196 2536 4D250000 		.4byte	0x254d
 8197 253a 39       		.uleb128 0x39
 8198 253b DE200000 		.4byte	0x20de
 8199 253f 260B0000 		.4byte	.LLST11
 8200 2543 39       		.uleb128 0x39
 8201 2544 EA200000 		.4byte	0x20ea
 8202 2548 CB0A0000 		.4byte	.LLST8
 8203 254c 00       		.byte	0
 8204 254d 33       		.uleb128 0x33
 8205 254e 48000000 		.4byte	.Ldebug_ranges0+0x48
 8206 2552 39       		.uleb128 0x39
 8207 2553 0F210000 		.4byte	0x210f
 8208 2557 3A0B0000 		.4byte	.LLST13
 8209 255b 3B       		.uleb128 0x3b
 8210 255c 1B210000 		.4byte	0x211b
 8211 2560 3B       		.uleb128 0x3b
 8212 2561 03210000 		.4byte	0x2103
 8213 2565 33       		.uleb128 0x33
 8214 2566 48000000 		.4byte	.Ldebug_ranges0+0x48
 8215 256a 34       		.uleb128 0x34
 8216 256b 27210000 		.4byte	0x2127
 8217 256f 34       		.uleb128 0x34
 8218 2570 33210000 		.4byte	0x2133
 8219 2574 3C       		.uleb128 0x3c
 8220 2575 D1200000 		.4byte	0x20d1
 8221 2579 26000000 		.4byte	.LBB320
 8222 257d 48000000 		.4byte	.Ldebug_ranges0+0x48
ARM GAS  /tmp/ccCxIftT.s 			page 191


 8223 2581 01       		.byte	0x1
 8224 2582 0602     		.2byte	0x206
 8225 2584 3B       		.uleb128 0x3b
 8226 2585 DE200000 		.4byte	0x20de
 8227 2589 3B       		.uleb128 0x3b
 8228 258a EA200000 		.4byte	0x20ea
 8229 258e 2D       		.uleb128 0x2d
 8230 258f 3A000000 		.4byte	.LVL22
 8231 2593 E5230000 		.4byte	0x23e5
 8232 2597 2E       		.uleb128 0x2e
 8233 2598 01       		.uleb128 0x1
 8234 2599 50       		.byte	0x50
 8235 259a 02       		.uleb128 0x2
 8236 259b 09       		.byte	0x9
 8237 259c 83       		.byte	0x83
 8238 259d 44       		.uleb128 0x44
 8239 259e DE200000 		.4byte	0x20de
 8240 25a2 01       		.uleb128 0x1
 8241 25a3 30       		.byte	0x30
 8242 25a4 00       		.byte	0
 8243 25a5 00       		.byte	0
 8244 25a6 00       		.byte	0
 8245 25a7 00       		.byte	0
 8246 25a8 00       		.byte	0
 8247 25a9 59       		.uleb128 0x59
 8248 25aa 311F0000 		.4byte	0x1f31
 8249 25ae 00000000 		.4byte	.LFB197
 8250 25b2 4C010000 		.4byte	.LFE197-.LFB197
 8251 25b6 01       		.uleb128 0x1
 8252 25b7 9C       		.byte	0x9c
 8253 25b8 94270000 		.4byte	0x2794
 8254 25bc 5C       		.uleb128 0x5c
 8255 25bd 3E1F0000 		.4byte	0x1f3e
 8256 25c1 06       		.uleb128 0x6
 8257 25c2 FA       		.byte	0xfa
 8258 25c3 3E1F0000 		.4byte	0x1f3e
 8259 25c7 9F       		.byte	0x9f
 8260 25c8 34       		.uleb128 0x34
 8261 25c9 4A1F0000 		.4byte	0x1f4a
 8262 25cd 34       		.uleb128 0x34
 8263 25ce 561F0000 		.4byte	0x1f56
 8264 25d2 34       		.uleb128 0x34
 8265 25d3 621F0000 		.4byte	0x1f62
 8266 25d7 34       		.uleb128 0x34
 8267 25d8 6E1F0000 		.4byte	0x1f6e
 8268 25dc 41       		.uleb128 0x41
 8269 25dd 791F0000 		.4byte	0x1f79
 8270 25e1 05       		.uleb128 0x5
 8271 25e2 03       		.byte	0x3
 8272 25e3 00000000 		.4byte	sof_zlp_counter.9788
 8273 25e7 5D       		.uleb128 0x5d
 8274 25e8 60000000 		.4byte	.Ldebug_ranges0+0x60
 8275 25ec 78270000 		.4byte	0x2778
 8276 25f0 3B       		.uleb128 0x3b
 8277 25f1 3E1F0000 		.4byte	0x1f3e
 8278 25f5 33       		.uleb128 0x33
 8279 25f6 60000000 		.4byte	.Ldebug_ranges0+0x60
ARM GAS  /tmp/ccCxIftT.s 			page 192


 8280 25fa 34       		.uleb128 0x34
 8281 25fb 4A1F0000 		.4byte	0x1f4a
 8282 25ff 40       		.uleb128 0x40
 8283 2600 561F0000 		.4byte	0x1f56
 8284 2604 4D0B0000 		.4byte	.LLST14
 8285 2608 40       		.uleb128 0x40
 8286 2609 621F0000 		.4byte	0x1f62
 8287 260d 870B0000 		.4byte	.LLST15
 8288 2611 40       		.uleb128 0x40
 8289 2612 6E1F0000 		.4byte	0x1f6e
 8290 2616 B00B0000 		.4byte	.LLST16
 8291 261a 41       		.uleb128 0x41
 8292 261b 791F0000 		.4byte	0x1f79
 8293 261f 05       		.uleb128 0x5
 8294 2620 03       		.byte	0x3
 8295 2621 00000000 		.4byte	sof_zlp_counter.9788
 8296 2625 32       		.uleb128 0x32
 8297 2626 25230000 		.4byte	0x2325
 8298 262a 2A000000 		.4byte	.LBB359
 8299 262e 78000000 		.4byte	.Ldebug_ranges0+0x78
 8300 2632 01       		.byte	0x1
 8301 2633 D702     		.2byte	0x2d7
 8302 2635 8C260000 		.4byte	0x268c
 8303 2639 33       		.uleb128 0x33
 8304 263a 78000000 		.4byte	.Ldebug_ranges0+0x78
 8305 263e 40       		.uleb128 0x40
 8306 263f 35230000 		.4byte	0x2335
 8307 2643 C50B0000 		.4byte	.LLST17
 8308 2647 35       		.uleb128 0x35
 8309 2648 41230000 		.4byte	0x2341
 8310 264c 2A000000 		.4byte	.LBB361
 8311 2650 04000000 		.4byte	.LBE361-.LBB361
 8312 2654 04       		.byte	0x4
 8313 2655 99       		.byte	0x99
 8314 2656 6C260000 		.4byte	0x266c
 8315 265a 36       		.uleb128 0x36
 8316 265b 2A000000 		.4byte	.LBB362
 8317 265f 04000000 		.4byte	.LBE362-.LBB362
 8318 2663 41       		.uleb128 0x41
 8319 2664 52230000 		.4byte	0x2352
 8320 2668 01       		.uleb128 0x1
 8321 2669 52       		.byte	0x52
 8322 266a 00       		.byte	0
 8323 266b 00       		.byte	0
 8324 266c 37       		.uleb128 0x37
 8325 266d 5F230000 		.4byte	0x235f
 8326 2671 2E000000 		.4byte	.LBB363
 8327 2675 02000000 		.4byte	.LBE363-.LBB363
 8328 2679 04       		.byte	0x4
 8329 267a 9A       		.byte	0x9a
 8330 267b 37       		.uleb128 0x37
 8331 267c 71230000 		.4byte	0x2371
 8332 2680 30000000 		.4byte	.LBB365
 8333 2684 04000000 		.4byte	.LBE365-.LBB365
 8334 2688 04       		.byte	0x4
 8335 2689 9A       		.byte	0x9a
 8336 268a 00       		.byte	0
ARM GAS  /tmp/ccCxIftT.s 			page 193


 8337 268b 00       		.byte	0
 8338 268c 32       		.uleb128 0x32
 8339 268d F1220000 		.4byte	0x22f1
 8340 2691 70000000 		.4byte	.LBB369
 8341 2695 90000000 		.4byte	.Ldebug_ranges0+0x90
 8342 2699 01       		.byte	0x1
 8343 269a ED02     		.2byte	0x2ed
 8344 269c D3260000 		.4byte	0x26d3
 8345 26a0 3B       		.uleb128 0x3b
 8346 26a1 FD220000 		.4byte	0x22fd
 8347 26a5 36       		.uleb128 0x36
 8348 26a6 0E010000 		.4byte	.LBB371
 8349 26aa 0C000000 		.4byte	.LBE371-.LBB371
 8350 26ae 3B       		.uleb128 0x3b
 8351 26af FD220000 		.4byte	0x22fd
 8352 26b3 37       		.uleb128 0x37
 8353 26b4 71230000 		.4byte	0x2371
 8354 26b8 12010000 		.4byte	.LBB373
 8355 26bc 04000000 		.4byte	.LBE373-.LBB373
 8356 26c0 04       		.byte	0x4
 8357 26c1 A6       		.byte	0xa6
 8358 26c2 37       		.uleb128 0x37
 8359 26c3 68230000 		.4byte	0x2368
 8360 26c7 16010000 		.4byte	.LBB375
 8361 26cb 04000000 		.4byte	.LBE375-.LBB375
 8362 26cf 04       		.byte	0x4
 8363 26d0 A6       		.byte	0xa6
 8364 26d1 00       		.byte	0
 8365 26d2 00       		.byte	0
 8366 26d3 38       		.uleb128 0x38
 8367 26d4 F1220000 		.4byte	0x22f1
 8368 26d8 E6000000 		.4byte	.LBB378
 8369 26dc 14000000 		.4byte	.LBE378-.LBB378
 8370 26e0 01       		.byte	0x1
 8371 26e1 DD02     		.2byte	0x2dd
 8372 26e3 1A270000 		.4byte	0x271a
 8373 26e7 3B       		.uleb128 0x3b
 8374 26e8 FD220000 		.4byte	0x22fd
 8375 26ec 36       		.uleb128 0x36
 8376 26ed EA000000 		.4byte	.LBB380
 8377 26f1 10000000 		.4byte	.LBE380-.LBB380
 8378 26f5 3B       		.uleb128 0x3b
 8379 26f6 FD220000 		.4byte	0x22fd
 8380 26fa 37       		.uleb128 0x37
 8381 26fb 71230000 		.4byte	0x2371
 8382 26ff F0000000 		.4byte	.LBB382
 8383 2703 04000000 		.4byte	.LBE382-.LBB382
 8384 2707 04       		.byte	0x4
 8385 2708 A6       		.byte	0xa6
 8386 2709 37       		.uleb128 0x37
 8387 270a 68230000 		.4byte	0x2368
 8388 270e F4000000 		.4byte	.LBB384
 8389 2712 06000000 		.4byte	.LBE384-.LBB384
 8390 2716 04       		.byte	0x4
 8391 2717 A6       		.byte	0xa6
 8392 2718 00       		.byte	0
 8393 2719 00       		.byte	0
ARM GAS  /tmp/ccCxIftT.s 			page 194


 8394 271a 50       		.uleb128 0x50
 8395 271b 88000000 		.4byte	.LVL37
 8396 271f 402B0000 		.4byte	0x2b40
 8397 2723 50       		.uleb128 0x50
 8398 2724 90000000 		.4byte	.LVL38
 8399 2728 4B2B0000 		.4byte	0x2b4b
 8400 272c 43       		.uleb128 0x43
 8401 272d AE000000 		.4byte	.LVL40
 8402 2731 342B0000 		.4byte	0x2b34
 8403 2735 5B270000 		.4byte	0x275b
 8404 2739 2E       		.uleb128 0x2e
 8405 273a 01       		.uleb128 0x1
 8406 273b 50       		.byte	0x50
 8407 273c 02       		.uleb128 0x2
 8408 273d 09       		.byte	0x9
 8409 273e 81       		.byte	0x81
 8410 273f 2E       		.uleb128 0x2e
 8411 2740 01       		.uleb128 0x1
 8412 2741 51       		.byte	0x51
 8413 2742 02       		.uleb128 0x2
 8414 2743 75       		.byte	0x75
 8415 2744 00       		.sleb128 0
 8416 2745 2E       		.uleb128 0x2e
 8417 2746 01       		.uleb128 0x1
 8418 2747 52       		.byte	0x52
 8419 2748 07       		.uleb128 0x7
 8420 2749 77       		.byte	0x77
 8421 274a 00       		.sleb128 0
 8422 274b 36       		.byte	0x36
 8423 274c 24       		.byte	0x24
 8424 274d 74       		.byte	0x74
 8425 274e 00       		.sleb128 0
 8426 274f 22       		.byte	0x22
 8427 2750 2E       		.uleb128 0x2e
 8428 2751 02       		.uleb128 0x2
 8429 2752 7D       		.byte	0x7d
 8430 2753 00       		.sleb128 0
 8431 2754 05       		.uleb128 0x5
 8432 2755 03       		.byte	0x3
 8433 2756 00000000 		.4byte	udi_cdc_data_sent
 8434 275a 00       		.byte	0
 8435 275b 50       		.uleb128 0x50
 8436 275c DC000000 		.4byte	.LVL46
 8437 2760 402B0000 		.4byte	0x2b40
 8438 2764 50       		.uleb128 0x50
 8439 2765 FE000000 		.4byte	.LVL49
 8440 2769 402B0000 		.4byte	0x2b40
 8441 276d 50       		.uleb128 0x50
 8442 276e 1E010000 		.4byte	.LVL52
 8443 2772 562B0000 		.4byte	0x2b56
 8444 2776 00       		.byte	0
 8445 2777 00       		.byte	0
 8446 2778 50       		.uleb128 0x50
 8447 2779 1A000000 		.4byte	.LVL28
 8448 277d 402B0000 		.4byte	0x2b40
 8449 2781 50       		.uleb128 0x50
 8450 2782 26000000 		.4byte	.LVL29
ARM GAS  /tmp/ccCxIftT.s 			page 195


 8451 2786 562B0000 		.4byte	0x2b56
 8452 278a 50       		.uleb128 0x50
 8453 278b B8000000 		.4byte	.LVL42
 8454 278f 4B2B0000 		.4byte	0x2b4b
 8455 2793 00       		.byte	0
 8456 2794 59       		.uleb128 0x59
 8457 2795 8C1F0000 		.4byte	0x1f8c
 8458 2799 00000000 		.4byte	.LFB164
 8459 279d 44000000 		.4byte	.LFE164-.LFB164
 8460 27a1 01       		.uleb128 0x1
 8461 27a2 9C       		.byte	0x9c
 8462 27a3 24280000 		.4byte	0x2824
 8463 27a7 39       		.uleb128 0x39
 8464 27a8 991F0000 		.4byte	0x1f99
 8465 27ac DF0B0000 		.4byte	.LLST18
 8466 27b0 39       		.uleb128 0x39
 8467 27b1 A51F0000 		.4byte	0x1fa5
 8468 27b5 190C0000 		.4byte	.LLST19
 8469 27b9 39       		.uleb128 0x39
 8470 27ba AF1F0000 		.4byte	0x1faf
 8471 27be 530C0000 		.4byte	.LLST20
 8472 27c2 5A       		.uleb128 0x5a
 8473 27c3 BA1F0000 		.4byte	0x1fba
 8474 27c7 00       		.byte	0
 8475 27c8 33       		.uleb128 0x33
 8476 27c9 A8000000 		.4byte	.Ldebug_ranges0+0xa8
 8477 27cd 39       		.uleb128 0x39
 8478 27ce 991F0000 		.4byte	0x1f99
 8479 27d2 8D0C0000 		.4byte	.LLST21
 8480 27d6 39       		.uleb128 0x39
 8481 27d7 AF1F0000 		.4byte	0x1faf
 8482 27db AD0C0000 		.4byte	.LLST22
 8483 27df 39       		.uleb128 0x39
 8484 27e0 A51F0000 		.4byte	0x1fa5
 8485 27e4 D10C0000 		.4byte	.LLST23
 8486 27e8 33       		.uleb128 0x33
 8487 27e9 A8000000 		.4byte	.Ldebug_ranges0+0xa8
 8488 27ed 34       		.uleb128 0x34
 8489 27ee C2270000 		.4byte	0x27c2
 8490 27f2 5E       		.uleb128 0x5e
 8491 27f3 26000000 		.4byte	.LVL56
 8492 27f7 A9250000 		.4byte	0x25a9
 8493 27fb 07280000 		.4byte	0x2807
 8494 27ff 44       		.uleb128 0x44
 8495 2800 3E1F0000 		.4byte	0x1f3e
 8496 2804 01       		.uleb128 0x1
 8497 2805 30       		.byte	0x30
 8498 2806 00       		.byte	0
 8499 2807 50       		.uleb128 0x50
 8500 2808 2C000000 		.4byte	.LVL58
 8501 280c 612B0000 		.4byte	0x2b61
 8502 2810 2D       		.uleb128 0x2d
 8503 2811 34000000 		.4byte	.LVL59
 8504 2815 A9250000 		.4byte	0x25a9
 8505 2819 44       		.uleb128 0x44
 8506 281a 3E1F0000 		.4byte	0x1f3e
 8507 281e 01       		.uleb128 0x1
ARM GAS  /tmp/ccCxIftT.s 			page 196


 8508 281f 30       		.byte	0x30
 8509 2820 00       		.byte	0
 8510 2821 00       		.byte	0
 8511 2822 00       		.byte	0
 8512 2823 00       		.byte	0
 8513 2824 59       		.uleb128 0x59
 8514 2825 0E200000 		.4byte	0x200e
 8515 2829 00000000 		.4byte	.LFB204
 8516 282d B4000000 		.4byte	.LFE204-.LFB204
 8517 2831 01       		.uleb128 0x1
 8518 2832 9C       		.byte	0x9c
 8519 2833 D6290000 		.4byte	0x29d6
 8520 2837 5C       		.uleb128 0x5c
 8521 2838 1F200000 		.4byte	0x201f
 8522 283c 06       		.uleb128 0x6
 8523 283d FA       		.byte	0xfa
 8524 283e 1F200000 		.4byte	0x201f
 8525 2842 9F       		.byte	0x9f
 8526 2843 34       		.uleb128 0x34
 8527 2844 2B200000 		.4byte	0x202b
 8528 2848 40       		.uleb128 0x40
 8529 2849 37200000 		.4byte	0x2037
 8530 284d 0B0D0000 		.4byte	.LLST34
 8531 2851 40       		.uleb128 0x40
 8532 2852 43200000 		.4byte	0x2043
 8533 2856 340D0000 		.4byte	.LLST35
 8534 285a 32       		.uleb128 0x32
 8535 285b 25230000 		.4byte	0x2325
 8536 285f 04000000 		.4byte	.LBB467
 8537 2863 F0000000 		.4byte	.Ldebug_ranges0+0xf0
 8538 2867 01       		.byte	0x1
 8539 2868 5202     		.2byte	0x252
 8540 286a BF280000 		.4byte	0x28bf
 8541 286e 33       		.uleb128 0x33
 8542 286f F0000000 		.4byte	.Ldebug_ranges0+0xf0
 8543 2873 40       		.uleb128 0x40
 8544 2874 35230000 		.4byte	0x2335
 8545 2878 480D0000 		.4byte	.LLST36
 8546 287c 35       		.uleb128 0x35
 8547 287d 41230000 		.4byte	0x2341
 8548 2881 04000000 		.4byte	.LBB469
 8549 2885 04000000 		.4byte	.LBE469-.LBB469
 8550 2889 04       		.byte	0x4
 8551 288a 99       		.byte	0x99
 8552 288b 9F280000 		.4byte	0x289f
 8553 288f 36       		.uleb128 0x36
 8554 2890 04000000 		.4byte	.LBB470
 8555 2894 04000000 		.4byte	.LBE470-.LBB470
 8556 2898 34       		.uleb128 0x34
 8557 2899 52230000 		.4byte	0x2352
 8558 289d 00       		.byte	0
 8559 289e 00       		.byte	0
 8560 289f 37       		.uleb128 0x37
 8561 28a0 5F230000 		.4byte	0x235f
 8562 28a4 08000000 		.4byte	.LBB471
 8563 28a8 02000000 		.4byte	.LBE471-.LBB471
 8564 28ac 04       		.byte	0x4
ARM GAS  /tmp/ccCxIftT.s 			page 197


 8565 28ad 9A       		.byte	0x9a
 8566 28ae 37       		.uleb128 0x37
 8567 28af 71230000 		.4byte	0x2371
 8568 28b3 0A000000 		.4byte	.LBB473
 8569 28b7 04000000 		.4byte	.LBE473-.LBB473
 8570 28bb 04       		.byte	0x4
 8571 28bc 9A       		.byte	0x9a
 8572 28bd 00       		.byte	0
 8573 28be 00       		.byte	0
 8574 28bf 32       		.uleb128 0x32
 8575 28c0 F1220000 		.4byte	0x22f1
 8576 28c4 36000000 		.4byte	.LBB477
 8577 28c8 08010000 		.4byte	.Ldebug_ranges0+0x108
 8578 28cc 01       		.byte	0x1
 8579 28cd 5702     		.2byte	0x257
 8580 28cf 0E290000 		.4byte	0x290e
 8581 28d3 39       		.uleb128 0x39
 8582 28d4 FD220000 		.4byte	0x22fd
 8583 28d8 620D0000 		.4byte	.LLST37
 8584 28dc 36       		.uleb128 0x36
 8585 28dd 76000000 		.4byte	.LBB479
 8586 28e1 0A000000 		.4byte	.LBE479-.LBB479
 8587 28e5 39       		.uleb128 0x39
 8588 28e6 FD220000 		.4byte	0x22fd
 8589 28ea 8E0D0000 		.4byte	.LLST38
 8590 28ee 37       		.uleb128 0x37
 8591 28ef 71230000 		.4byte	0x2371
 8592 28f3 7A000000 		.4byte	.LBB481
 8593 28f7 04000000 		.4byte	.LBE481-.LBB481
 8594 28fb 04       		.byte	0x4
 8595 28fc A6       		.byte	0xa6
 8596 28fd 37       		.uleb128 0x37
 8597 28fe 68230000 		.4byte	0x2368
 8598 2902 7E000000 		.4byte	.LBB483
 8599 2906 02000000 		.4byte	.LBE483-.LBB483
 8600 290a 04       		.byte	0x4
 8601 290b A6       		.byte	0xa6
 8602 290c 00       		.byte	0
 8603 290d 00       		.byte	0
 8604 290e 32       		.uleb128 0x32
 8605 290f F1220000 		.4byte	0x22f1
 8606 2913 4E000000 		.4byte	.LBB486
 8607 2917 20010000 		.4byte	.Ldebug_ranges0+0x120
 8608 291b 01       		.byte	0x1
 8609 291c 6102     		.2byte	0x261
 8610 291e 62290000 		.4byte	0x2962
 8611 2922 39       		.uleb128 0x39
 8612 2923 FD220000 		.4byte	0x22fd
 8613 2927 A80D0000 		.4byte	.LLST39
 8614 292b 36       		.uleb128 0x36
 8615 292c 8C000000 		.4byte	.LBB488
 8616 2930 28000000 		.4byte	.LBE488-.LBB488
 8617 2934 5C       		.uleb128 0x5c
 8618 2935 FD220000 		.4byte	0x22fd
 8619 2939 08       		.uleb128 0x8
 8620 293a 70       		.byte	0x70
 8621 293b 00       		.sleb128 0
ARM GAS  /tmp/ccCxIftT.s 			page 198


 8622 293c 30       		.byte	0x30
 8623 293d 29       		.byte	0x29
 8624 293e 08       		.byte	0x8
 8625 293f FF       		.byte	0xff
 8626 2940 1A       		.byte	0x1a
 8627 2941 9F       		.byte	0x9f
 8628 2942 37       		.uleb128 0x37
 8629 2943 71230000 		.4byte	0x2371
 8630 2947 8E000000 		.4byte	.LBB490
 8631 294b 04000000 		.4byte	.LBE490-.LBB490
 8632 294f 04       		.byte	0x4
 8633 2950 A6       		.byte	0xa6
 8634 2951 37       		.uleb128 0x37
 8635 2952 68230000 		.4byte	0x2368
 8636 2956 92000000 		.4byte	.LBB492
 8637 295a 22000000 		.4byte	.LBE492-.LBB492
 8638 295e 04       		.byte	0x4
 8639 295f A6       		.byte	0xa6
 8640 2960 00       		.byte	0
 8641 2961 00       		.byte	0
 8642 2962 38       		.uleb128 0x38
 8643 2963 741B0000 		.4byte	0x1b74
 8644 2967 50000000 		.4byte	.LBB495
 8645 296b 06000000 		.4byte	.LBE495-.LBB495
 8646 296f 01       		.byte	0x1
 8647 2970 6302     		.2byte	0x263
 8648 2972 8F290000 		.4byte	0x298f
 8649 2976 39       		.uleb128 0x39
 8650 2977 851B0000 		.4byte	0x1b85
 8651 297b D40D0000 		.4byte	.LLST40
 8652 297f 3A       		.uleb128 0x3a
 8653 2980 56000000 		.4byte	.LVL98
 8654 2984 BC1B0000 		.4byte	0x1bbc
 8655 2988 2E       		.uleb128 0x2e
 8656 2989 01       		.uleb128 0x1
 8657 298a 50       		.byte	0x50
 8658 298b 01       		.uleb128 0x1
 8659 298c 30       		.byte	0x30
 8660 298d 00       		.byte	0
 8661 298e 00       		.byte	0
 8662 298f 43       		.uleb128 0x43
 8663 2990 72000000 		.4byte	.LVL101
 8664 2994 342B0000 		.4byte	0x2b34
 8665 2998 C6290000 		.4byte	0x29c6
 8666 299c 2E       		.uleb128 0x2e
 8667 299d 01       		.uleb128 0x1
 8668 299e 50       		.byte	0x50
 8669 299f 01       		.uleb128 0x1
 8670 29a0 32       		.byte	0x32
 8671 29a1 2E       		.uleb128 0x2e
 8672 29a2 01       		.uleb128 0x1
 8673 29a3 51       		.byte	0x51
 8674 29a4 01       		.uleb128 0x1
 8675 29a5 31       		.byte	0x31
 8676 29a6 2E       		.uleb128 0x2e
 8677 29a7 01       		.uleb128 0x1
 8678 29a8 52       		.byte	0x52
ARM GAS  /tmp/ccCxIftT.s 			page 199


 8679 29a9 0A       		.uleb128 0xa
 8680 29aa 74       		.byte	0x74
 8681 29ab 00       		.sleb128 0
 8682 29ac 36       		.byte	0x36
 8683 29ad 24       		.byte	0x24
 8684 29ae 03       		.byte	0x3
 8685 29af 00000000 		.4byte	.LANCHOR18
 8686 29b3 22       		.byte	0x22
 8687 29b4 2E       		.uleb128 0x2e
 8688 29b5 01       		.uleb128 0x1
 8689 29b6 53       		.byte	0x53
 8690 29b7 03       		.uleb128 0x3
 8691 29b8 0A       		.byte	0xa
 8692 29b9 4001     		.2byte	0x140
 8693 29bb 2E       		.uleb128 0x2e
 8694 29bc 02       		.uleb128 0x2
 8695 29bd 7D       		.byte	0x7d
 8696 29be 00       		.sleb128 0
 8697 29bf 05       		.uleb128 0x5
 8698 29c0 03       		.byte	0x3
 8699 29c1 00000000 		.4byte	udi_cdc_data_received
 8700 29c5 00       		.byte	0
 8701 29c6 3A       		.uleb128 0x3a
 8702 29c7 8A000000 		.4byte	.LVL104
 8703 29cb 6C2B0000 		.4byte	0x2b6c
 8704 29cf 2E       		.uleb128 0x2e
 8705 29d0 01       		.uleb128 0x1
 8706 29d1 50       		.byte	0x50
 8707 29d2 01       		.uleb128 0x1
 8708 29d3 30       		.byte	0x30
 8709 29d4 00       		.byte	0
 8710 29d5 00       		.byte	0
 8711 29d6 59       		.uleb128 0x59
 8712 29d7 3A220000 		.4byte	0x223a
 8713 29db 00000000 		.4byte	.LFB150
 8714 29df 80000000 		.4byte	.LFE150-.LFB150
 8715 29e3 01       		.uleb128 0x1
 8716 29e4 9C       		.byte	0x9c
 8717 29e5 252A0000 		.4byte	0x2a25
 8718 29e9 5A       		.uleb128 0x5a
 8719 29ea 4B220000 		.4byte	0x224b
 8720 29ee 00       		.byte	0
 8721 29ef 5D       		.uleb128 0x5d
 8722 29f0 38010000 		.4byte	.Ldebug_ranges0+0x138
 8723 29f4 FE290000 		.4byte	0x29fe
 8724 29f8 34       		.uleb128 0x34
 8725 29f9 E9290000 		.4byte	0x29e9
 8726 29fd 00       		.byte	0
 8727 29fe 43       		.uleb128 0x43
 8728 29ff 22000000 		.4byte	.LVL107
 8729 2a03 A9250000 		.4byte	0x25a9
 8730 2a07 132A0000 		.4byte	0x2a13
 8731 2a0b 44       		.uleb128 0x44
 8732 2a0c 3E1F0000 		.4byte	0x1f3e
 8733 2a10 01       		.uleb128 0x1
 8734 2a11 30       		.byte	0x30
 8735 2a12 00       		.byte	0
ARM GAS  /tmp/ccCxIftT.s 			page 200


 8736 2a13 3A       		.uleb128 0x3a
 8737 2a14 38000000 		.4byte	.LVL108
 8738 2a18 24280000 		.4byte	0x2824
 8739 2a1c 44       		.uleb128 0x44
 8740 2a1d 1F200000 		.4byte	0x201f
 8741 2a21 01       		.uleb128 0x1
 8742 2a22 30       		.byte	0x30
 8743 2a23 00       		.byte	0
 8744 2a24 00       		.byte	0
 8745 2a25 59       		.uleb128 0x59
 8746 2a26 C71F0000 		.4byte	0x1fc7
 8747 2a2a 00000000 		.4byte	.LFB163
 8748 2a2e 5C000000 		.4byte	.LFE163-.LFB163
 8749 2a32 01       		.uleb128 0x1
 8750 2a33 9C       		.byte	0x9c
 8751 2a34 C92A0000 		.4byte	0x2ac9
 8752 2a38 39       		.uleb128 0x39
 8753 2a39 D41F0000 		.4byte	0x1fd4
 8754 2a3d E80D0000 		.4byte	.LLST41
 8755 2a41 39       		.uleb128 0x39
 8756 2a42 E01F0000 		.4byte	0x1fe0
 8757 2a46 2D0E0000 		.4byte	.LLST42
 8758 2a4a 39       		.uleb128 0x39
 8759 2a4b EA1F0000 		.4byte	0x1fea
 8760 2a4f 720E0000 		.4byte	.LLST43
 8761 2a53 34       		.uleb128 0x34
 8762 2a54 F51F0000 		.4byte	0x1ff5
 8763 2a58 5A       		.uleb128 0x5a
 8764 2a59 01200000 		.4byte	0x2001
 8765 2a5d 00       		.byte	0
 8766 2a5e 33       		.uleb128 0x33
 8767 2a5f 50010000 		.4byte	.Ldebug_ranges0+0x150
 8768 2a63 39       		.uleb128 0x39
 8769 2a64 D41F0000 		.4byte	0x1fd4
 8770 2a68 B70E0000 		.4byte	.LLST44
 8771 2a6c 39       		.uleb128 0x39
 8772 2a6d EA1F0000 		.4byte	0x1fea
 8773 2a71 CB0E0000 		.4byte	.LLST45
 8774 2a75 39       		.uleb128 0x39
 8775 2a76 E01F0000 		.4byte	0x1fe0
 8776 2a7a 050F0000 		.4byte	.LLST46
 8777 2a7e 33       		.uleb128 0x33
 8778 2a7f 50010000 		.4byte	.Ldebug_ranges0+0x150
 8779 2a83 40       		.uleb128 0x40
 8780 2a84 532A0000 		.4byte	0x2a53
 8781 2a88 3F0F0000 		.4byte	.LLST47
 8782 2a8c 34       		.uleb128 0x34
 8783 2a8d 582A0000 		.4byte	0x2a58
 8784 2a91 5E       		.uleb128 0x5e
 8785 2a92 28000000 		.4byte	.LVL114
 8786 2a96 24280000 		.4byte	0x2824
 8787 2a9a A62A0000 		.4byte	0x2aa6
 8788 2a9e 44       		.uleb128 0x44
 8789 2a9f 1F200000 		.4byte	0x201f
 8790 2aa3 01       		.uleb128 0x1
 8791 2aa4 30       		.byte	0x30
 8792 2aa5 00       		.byte	0
ARM GAS  /tmp/ccCxIftT.s 			page 201


 8793 2aa6 3A       		.uleb128 0x3a
 8794 2aa7 42000000 		.4byte	.LVL119
 8795 2aab 342B0000 		.4byte	0x2b34
 8796 2aaf 2E       		.uleb128 0x2e
 8797 2ab0 01       		.uleb128 0x1
 8798 2ab1 51       		.byte	0x51
 8799 2ab2 01       		.uleb128 0x1
 8800 2ab3 31       		.byte	0x31
 8801 2ab4 2E       		.uleb128 0x2e
 8802 2ab5 01       		.uleb128 0x1
 8803 2ab6 53       		.byte	0x53
 8804 2ab7 03       		.uleb128 0x3
 8805 2ab8 0A       		.byte	0xa
 8806 2ab9 4001     		.2byte	0x140
 8807 2abb 2E       		.uleb128 0x2e
 8808 2abc 02       		.uleb128 0x2
 8809 2abd 7D       		.byte	0x7d
 8810 2abe 00       		.sleb128 0
 8811 2abf 05       		.uleb128 0x5
 8812 2ac0 03       		.byte	0x3
 8813 2ac1 00000000 		.4byte	udi_cdc_data_received
 8814 2ac5 00       		.byte	0
 8815 2ac6 00       		.byte	0
 8816 2ac7 00       		.byte	0
 8817 2ac8 00       		.byte	0
 8818 2ac9 59       		.uleb128 0x59
 8819 2aca 741B0000 		.4byte	0x1b74
 8820 2ace 00000000 		.4byte	.LFB178
 8821 2ad2 0E000000 		.4byte	.LFE178-.LFB178
 8822 2ad6 01       		.uleb128 0x1
 8823 2ad7 9C       		.byte	0x9c
 8824 2ad8 EF2A0000 		.4byte	0x2aef
 8825 2adc 39       		.uleb128 0x39
 8826 2add 851B0000 		.4byte	0x1b85
 8827 2ae1 5D0F0000 		.4byte	.LLST48
 8828 2ae5 50       		.uleb128 0x50
 8829 2ae6 06000000 		.4byte	.LVL123
 8830 2aea BC1B0000 		.4byte	0x1bbc
 8831 2aee 00       		.byte	0
 8832 2aef 59       		.uleb128 0x59
 8833 2af0 0F140000 		.4byte	0x140f
 8834 2af4 00000000 		.4byte	.LFB188
 8835 2af8 0E000000 		.4byte	.LFE188-.LFB188
 8836 2afc 01       		.uleb128 0x1
 8837 2afd 9C       		.byte	0x9c
 8838 2afe 152B0000 		.4byte	0x2b15
 8839 2b02 39       		.uleb128 0x39
 8840 2b03 20140000 		.4byte	0x1420
 8841 2b07 7E0F0000 		.4byte	.LLST79
 8842 2b0b 50       		.uleb128 0x50
 8843 2b0c 06000000 		.4byte	.LVL203
 8844 2b10 57140000 		.4byte	0x1457
 8845 2b14 00       		.byte	0
 8846 2b15 5F       		.uleb128 0x5f
 8847 2b16 53110000 		.4byte	.LASF329
 8848 2b1a 53110000 		.4byte	.LASF329
 8849 2b1e 60       		.uleb128 0x60
ARM GAS  /tmp/ccCxIftT.s 			page 202


 8850 2b1f 79000000 		.4byte	.LASF317
 8851 2b23 79000000 		.4byte	.LASF317
 8852 2b27 15       		.byte	0x15
 8853 2b28 87       		.byte	0x87
 8854 2b29 60       		.uleb128 0x60
 8855 2b2a 43060000 		.4byte	.LASF318
 8856 2b2e 43060000 		.4byte	.LASF318
 8857 2b32 15       		.byte	0x15
 8858 2b33 84       		.byte	0x84
 8859 2b34 61       		.uleb128 0x61
 8860 2b35 350E0000 		.4byte	.LASF319
 8861 2b39 350E0000 		.4byte	.LASF319
 8862 2b3d 13       		.byte	0x13
 8863 2b3e 4401     		.2byte	0x144
 8864 2b40 60       		.uleb128 0x60
 8865 2b41 00000000 		.4byte	.LASF320
 8866 2b45 00000000 		.4byte	.LASF320
 8867 2b49 13       		.byte	0x13
 8868 2b4a B3       		.byte	0xb3
 8869 2b4b 60       		.uleb128 0x60
 8870 2b4c FA010000 		.4byte	.LASF321
 8871 2b50 FA010000 		.4byte	.LASF321
 8872 2b54 13       		.byte	0x13
 8873 2b55 CF       		.byte	0xcf
 8874 2b56 60       		.uleb128 0x60
 8875 2b57 5B010000 		.4byte	.LASF322
 8876 2b5b 5B010000 		.4byte	.LASF322
 8877 2b5f 13       		.byte	0x13
 8878 2b60 C8       		.byte	0xc8
 8879 2b61 60       		.uleb128 0x60
 8880 2b62 38090000 		.4byte	.LASF323
 8881 2b66 38090000 		.4byte	.LASF323
 8882 2b6a 15       		.byte	0x15
 8883 2b6b 8D       		.byte	0x8d
 8884 2b6c 60       		.uleb128 0x60
 8885 2b6d A60C0000 		.4byte	.LASF324
 8886 2b71 A60C0000 		.4byte	.LASF324
 8887 2b75 15       		.byte	0x15
 8888 2b76 8A       		.byte	0x8a
 8889 2b77 00       		.byte	0
 8890              		.section	.debug_abbrev,"",%progbits
 8891              	.Ldebug_abbrev0:
 8892 0000 01       		.uleb128 0x1
 8893 0001 11       		.uleb128 0x11
 8894 0002 01       		.byte	0x1
 8895 0003 25       		.uleb128 0x25
 8896 0004 0E       		.uleb128 0xe
 8897 0005 13       		.uleb128 0x13
 8898 0006 0B       		.uleb128 0xb
 8899 0007 03       		.uleb128 0x3
 8900 0008 0E       		.uleb128 0xe
 8901 0009 1B       		.uleb128 0x1b
 8902 000a 0E       		.uleb128 0xe
 8903 000b 55       		.uleb128 0x55
 8904 000c 17       		.uleb128 0x17
 8905 000d 11       		.uleb128 0x11
 8906 000e 01       		.uleb128 0x1
ARM GAS  /tmp/ccCxIftT.s 			page 203


 8907 000f 10       		.uleb128 0x10
 8908 0010 17       		.uleb128 0x17
 8909 0011 00       		.byte	0
 8910 0012 00       		.byte	0
 8911 0013 02       		.uleb128 0x2
 8912 0014 24       		.uleb128 0x24
 8913 0015 00       		.byte	0
 8914 0016 0B       		.uleb128 0xb
 8915 0017 0B       		.uleb128 0xb
 8916 0018 3E       		.uleb128 0x3e
 8917 0019 0B       		.uleb128 0xb
 8918 001a 03       		.uleb128 0x3
 8919 001b 08       		.uleb128 0x8
 8920 001c 00       		.byte	0
 8921 001d 00       		.byte	0
 8922 001e 03       		.uleb128 0x3
 8923 001f 24       		.uleb128 0x24
 8924 0020 00       		.byte	0
 8925 0021 0B       		.uleb128 0xb
 8926 0022 0B       		.uleb128 0xb
 8927 0023 3E       		.uleb128 0x3e
 8928 0024 0B       		.uleb128 0xb
 8929 0025 03       		.uleb128 0x3
 8930 0026 0E       		.uleb128 0xe
 8931 0027 00       		.byte	0
 8932 0028 00       		.byte	0
 8933 0029 04       		.uleb128 0x4
 8934 002a 16       		.uleb128 0x16
 8935 002b 00       		.byte	0
 8936 002c 03       		.uleb128 0x3
 8937 002d 0E       		.uleb128 0xe
 8938 002e 3A       		.uleb128 0x3a
 8939 002f 0B       		.uleb128 0xb
 8940 0030 3B       		.uleb128 0x3b
 8941 0031 0B       		.uleb128 0xb
 8942 0032 49       		.uleb128 0x49
 8943 0033 13       		.uleb128 0x13
 8944 0034 00       		.byte	0
 8945 0035 00       		.byte	0
 8946 0036 05       		.uleb128 0x5
 8947 0037 35       		.uleb128 0x35
 8948 0038 00       		.byte	0
 8949 0039 49       		.uleb128 0x49
 8950 003a 13       		.uleb128 0x13
 8951 003b 00       		.byte	0
 8952 003c 00       		.byte	0
 8953 003d 06       		.uleb128 0x6
 8954 003e 0F       		.uleb128 0xf
 8955 003f 00       		.byte	0
 8956 0040 0B       		.uleb128 0xb
 8957 0041 0B       		.uleb128 0xb
 8958 0042 00       		.byte	0
 8959 0043 00       		.byte	0
 8960 0044 07       		.uleb128 0x7
 8961 0045 34       		.uleb128 0x34
 8962 0046 00       		.byte	0
 8963 0047 03       		.uleb128 0x3
ARM GAS  /tmp/ccCxIftT.s 			page 204


 8964 0048 0E       		.uleb128 0xe
 8965 0049 3A       		.uleb128 0x3a
 8966 004a 0B       		.uleb128 0xb
 8967 004b 3B       		.uleb128 0x3b
 8968 004c 05       		.uleb128 0x5
 8969 004d 49       		.uleb128 0x49
 8970 004e 13       		.uleb128 0x13
 8971 004f 3F       		.uleb128 0x3f
 8972 0050 19       		.uleb128 0x19
 8973 0051 3C       		.uleb128 0x3c
 8974 0052 19       		.uleb128 0x19
 8975 0053 00       		.byte	0
 8976 0054 00       		.byte	0
 8977 0055 08       		.uleb128 0x8
 8978 0056 34       		.uleb128 0x34
 8979 0057 00       		.byte	0
 8980 0058 03       		.uleb128 0x3
 8981 0059 0E       		.uleb128 0xe
 8982 005a 3A       		.uleb128 0x3a
 8983 005b 0B       		.uleb128 0xb
 8984 005c 3B       		.uleb128 0x3b
 8985 005d 0B       		.uleb128 0xb
 8986 005e 49       		.uleb128 0x49
 8987 005f 13       		.uleb128 0x13
 8988 0060 3F       		.uleb128 0x3f
 8989 0061 19       		.uleb128 0x19
 8990 0062 3C       		.uleb128 0x3c
 8991 0063 19       		.uleb128 0x19
 8992 0064 00       		.byte	0
 8993 0065 00       		.byte	0
 8994 0066 09       		.uleb128 0x9
 8995 0067 16       		.uleb128 0x16
 8996 0068 00       		.byte	0
 8997 0069 03       		.uleb128 0x3
 8998 006a 0E       		.uleb128 0xe
 8999 006b 3A       		.uleb128 0x3a
 9000 006c 0B       		.uleb128 0xb
 9001 006d 3B       		.uleb128 0x3b
 9002 006e 05       		.uleb128 0x5
 9003 006f 49       		.uleb128 0x49
 9004 0070 13       		.uleb128 0x13
 9005 0071 00       		.byte	0
 9006 0072 00       		.byte	0
 9007 0073 0A       		.uleb128 0xa
 9008 0074 17       		.uleb128 0x17
 9009 0075 01       		.byte	0x1
 9010 0076 0B       		.uleb128 0xb
 9011 0077 0B       		.uleb128 0xb
 9012 0078 3A       		.uleb128 0x3a
 9013 0079 0B       		.uleb128 0xb
 9014 007a 3B       		.uleb128 0x3b
 9015 007b 0B       		.uleb128 0xb
 9016 007c 01       		.uleb128 0x1
 9017 007d 13       		.uleb128 0x13
 9018 007e 00       		.byte	0
 9019 007f 00       		.byte	0
 9020 0080 0B       		.uleb128 0xb
ARM GAS  /tmp/ccCxIftT.s 			page 205


 9021 0081 0D       		.uleb128 0xd
 9022 0082 00       		.byte	0
 9023 0083 03       		.uleb128 0x3
 9024 0084 0E       		.uleb128 0xe
 9025 0085 3A       		.uleb128 0x3a
 9026 0086 0B       		.uleb128 0xb
 9027 0087 3B       		.uleb128 0x3b
 9028 0088 0B       		.uleb128 0xb
 9029 0089 49       		.uleb128 0x49
 9030 008a 13       		.uleb128 0x13
 9031 008b 00       		.byte	0
 9032 008c 00       		.byte	0
 9033 008d 0C       		.uleb128 0xc
 9034 008e 01       		.uleb128 0x1
 9035 008f 01       		.byte	0x1
 9036 0090 49       		.uleb128 0x49
 9037 0091 13       		.uleb128 0x13
 9038 0092 01       		.uleb128 0x1
 9039 0093 13       		.uleb128 0x13
 9040 0094 00       		.byte	0
 9041 0095 00       		.byte	0
 9042 0096 0D       		.uleb128 0xd
 9043 0097 21       		.uleb128 0x21
 9044 0098 00       		.byte	0
 9045 0099 49       		.uleb128 0x49
 9046 009a 13       		.uleb128 0x13
 9047 009b 2F       		.uleb128 0x2f
 9048 009c 0B       		.uleb128 0xb
 9049 009d 00       		.byte	0
 9050 009e 00       		.byte	0
 9051 009f 0E       		.uleb128 0xe
 9052 00a0 13       		.uleb128 0x13
 9053 00a1 01       		.byte	0x1
 9054 00a2 0B       		.uleb128 0xb
 9055 00a3 0B       		.uleb128 0xb
 9056 00a4 3A       		.uleb128 0x3a
 9057 00a5 0B       		.uleb128 0xb
 9058 00a6 3B       		.uleb128 0x3b
 9059 00a7 0B       		.uleb128 0xb
 9060 00a8 01       		.uleb128 0x1
 9061 00a9 13       		.uleb128 0x13
 9062 00aa 00       		.byte	0
 9063 00ab 00       		.byte	0
 9064 00ac 0F       		.uleb128 0xf
 9065 00ad 0D       		.uleb128 0xd
 9066 00ae 00       		.byte	0
 9067 00af 03       		.uleb128 0x3
 9068 00b0 0E       		.uleb128 0xe
 9069 00b1 3A       		.uleb128 0x3a
 9070 00b2 0B       		.uleb128 0xb
 9071 00b3 3B       		.uleb128 0x3b
 9072 00b4 0B       		.uleb128 0xb
 9073 00b5 49       		.uleb128 0x49
 9074 00b6 13       		.uleb128 0x13
 9075 00b7 38       		.uleb128 0x38
 9076 00b8 0B       		.uleb128 0xb
 9077 00b9 00       		.byte	0
ARM GAS  /tmp/ccCxIftT.s 			page 206


 9078 00ba 00       		.byte	0
 9079 00bb 10       		.uleb128 0x10
 9080 00bc 13       		.uleb128 0x13
 9081 00bd 01       		.byte	0x1
 9082 00be 03       		.uleb128 0x3
 9083 00bf 0E       		.uleb128 0xe
 9084 00c0 0B       		.uleb128 0xb
 9085 00c1 0B       		.uleb128 0xb
 9086 00c2 3A       		.uleb128 0x3a
 9087 00c3 0B       		.uleb128 0xb
 9088 00c4 3B       		.uleb128 0x3b
 9089 00c5 0B       		.uleb128 0xb
 9090 00c6 01       		.uleb128 0x1
 9091 00c7 13       		.uleb128 0x13
 9092 00c8 00       		.byte	0
 9093 00c9 00       		.byte	0
 9094 00ca 11       		.uleb128 0x11
 9095 00cb 0D       		.uleb128 0xd
 9096 00cc 00       		.byte	0
 9097 00cd 03       		.uleb128 0x3
 9098 00ce 08       		.uleb128 0x8
 9099 00cf 3A       		.uleb128 0x3a
 9100 00d0 0B       		.uleb128 0xb
 9101 00d1 3B       		.uleb128 0x3b
 9102 00d2 0B       		.uleb128 0xb
 9103 00d3 49       		.uleb128 0x49
 9104 00d4 13       		.uleb128 0x13
 9105 00d5 38       		.uleb128 0x38
 9106 00d6 0B       		.uleb128 0xb
 9107 00d7 00       		.byte	0
 9108 00d8 00       		.byte	0
 9109 00d9 12       		.uleb128 0x12
 9110 00da 0F       		.uleb128 0xf
 9111 00db 00       		.byte	0
 9112 00dc 0B       		.uleb128 0xb
 9113 00dd 0B       		.uleb128 0xb
 9114 00de 49       		.uleb128 0x49
 9115 00df 13       		.uleb128 0x13
 9116 00e0 00       		.byte	0
 9117 00e1 00       		.byte	0
 9118 00e2 13       		.uleb128 0x13
 9119 00e3 13       		.uleb128 0x13
 9120 00e4 01       		.byte	0x1
 9121 00e5 03       		.uleb128 0x3
 9122 00e6 0E       		.uleb128 0xe
 9123 00e7 0B       		.uleb128 0xb
 9124 00e8 05       		.uleb128 0x5
 9125 00e9 3A       		.uleb128 0x3a
 9126 00ea 0B       		.uleb128 0xb
 9127 00eb 3B       		.uleb128 0x3b
 9128 00ec 0B       		.uleb128 0xb
 9129 00ed 01       		.uleb128 0x1
 9130 00ee 13       		.uleb128 0x13
 9131 00ef 00       		.byte	0
 9132 00f0 00       		.byte	0
 9133 00f1 14       		.uleb128 0x14
 9134 00f2 0D       		.uleb128 0xd
ARM GAS  /tmp/ccCxIftT.s 			page 207


 9135 00f3 00       		.byte	0
 9136 00f4 03       		.uleb128 0x3
 9137 00f5 0E       		.uleb128 0xe
 9138 00f6 3A       		.uleb128 0x3a
 9139 00f7 0B       		.uleb128 0xb
 9140 00f8 3B       		.uleb128 0x3b
 9141 00f9 0B       		.uleb128 0xb
 9142 00fa 49       		.uleb128 0x49
 9143 00fb 13       		.uleb128 0x13
 9144 00fc 38       		.uleb128 0x38
 9145 00fd 05       		.uleb128 0x5
 9146 00fe 00       		.byte	0
 9147 00ff 00       		.byte	0
 9148 0100 15       		.uleb128 0x15
 9149 0101 15       		.uleb128 0x15
 9150 0102 00       		.byte	0
 9151 0103 27       		.uleb128 0x27
 9152 0104 19       		.uleb128 0x19
 9153 0105 00       		.byte	0
 9154 0106 00       		.byte	0
 9155 0107 16       		.uleb128 0x16
 9156 0108 15       		.uleb128 0x15
 9157 0109 01       		.byte	0x1
 9158 010a 27       		.uleb128 0x27
 9159 010b 19       		.uleb128 0x19
 9160 010c 49       		.uleb128 0x49
 9161 010d 13       		.uleb128 0x13
 9162 010e 01       		.uleb128 0x1
 9163 010f 13       		.uleb128 0x13
 9164 0110 00       		.byte	0
 9165 0111 00       		.byte	0
 9166 0112 17       		.uleb128 0x17
 9167 0113 05       		.uleb128 0x5
 9168 0114 00       		.byte	0
 9169 0115 49       		.uleb128 0x49
 9170 0116 13       		.uleb128 0x13
 9171 0117 00       		.byte	0
 9172 0118 00       		.byte	0
 9173 0119 18       		.uleb128 0x18
 9174 011a 26       		.uleb128 0x26
 9175 011b 00       		.byte	0
 9176 011c 49       		.uleb128 0x49
 9177 011d 13       		.uleb128 0x13
 9178 011e 00       		.byte	0
 9179 011f 00       		.byte	0
 9180 0120 19       		.uleb128 0x19
 9181 0121 13       		.uleb128 0x13
 9182 0122 01       		.byte	0x1
 9183 0123 03       		.uleb128 0x3
 9184 0124 0E       		.uleb128 0xe
 9185 0125 0B       		.uleb128 0xb
 9186 0126 05       		.uleb128 0x5
 9187 0127 3A       		.uleb128 0x3a
 9188 0128 0B       		.uleb128 0xb
 9189 0129 3B       		.uleb128 0x3b
 9190 012a 05       		.uleb128 0x5
 9191 012b 01       		.uleb128 0x1
ARM GAS  /tmp/ccCxIftT.s 			page 208


 9192 012c 13       		.uleb128 0x13
 9193 012d 00       		.byte	0
 9194 012e 00       		.byte	0
 9195 012f 1A       		.uleb128 0x1a
 9196 0130 0D       		.uleb128 0xd
 9197 0131 00       		.byte	0
 9198 0132 03       		.uleb128 0x3
 9199 0133 0E       		.uleb128 0xe
 9200 0134 3A       		.uleb128 0x3a
 9201 0135 0B       		.uleb128 0xb
 9202 0136 3B       		.uleb128 0x3b
 9203 0137 05       		.uleb128 0x5
 9204 0138 49       		.uleb128 0x49
 9205 0139 13       		.uleb128 0x13
 9206 013a 38       		.uleb128 0x38
 9207 013b 0B       		.uleb128 0xb
 9208 013c 00       		.byte	0
 9209 013d 00       		.byte	0
 9210 013e 1B       		.uleb128 0x1b
 9211 013f 0D       		.uleb128 0xd
 9212 0140 00       		.byte	0
 9213 0141 03       		.uleb128 0x3
 9214 0142 0E       		.uleb128 0xe
 9215 0143 3A       		.uleb128 0x3a
 9216 0144 0B       		.uleb128 0xb
 9217 0145 3B       		.uleb128 0x3b
 9218 0146 05       		.uleb128 0x5
 9219 0147 49       		.uleb128 0x49
 9220 0148 13       		.uleb128 0x13
 9221 0149 38       		.uleb128 0x38
 9222 014a 05       		.uleb128 0x5
 9223 014b 00       		.byte	0
 9224 014c 00       		.byte	0
 9225 014d 1C       		.uleb128 0x1c
 9226 014e 13       		.uleb128 0x13
 9227 014f 01       		.byte	0x1
 9228 0150 03       		.uleb128 0x3
 9229 0151 0E       		.uleb128 0xe
 9230 0152 0B       		.uleb128 0xb
 9231 0153 0B       		.uleb128 0xb
 9232 0154 3A       		.uleb128 0x3a
 9233 0155 0B       		.uleb128 0xb
 9234 0156 3B       		.uleb128 0x3b
 9235 0157 05       		.uleb128 0x5
 9236 0158 01       		.uleb128 0x1
 9237 0159 13       		.uleb128 0x13
 9238 015a 00       		.byte	0
 9239 015b 00       		.byte	0
 9240 015c 1D       		.uleb128 0x1d
 9241 015d 13       		.uleb128 0x13
 9242 015e 01       		.byte	0x1
 9243 015f 0B       		.uleb128 0xb
 9244 0160 0B       		.uleb128 0xb
 9245 0161 3A       		.uleb128 0x3a
 9246 0162 0B       		.uleb128 0xb
 9247 0163 3B       		.uleb128 0x3b
 9248 0164 05       		.uleb128 0x5
ARM GAS  /tmp/ccCxIftT.s 			page 209


 9249 0165 01       		.uleb128 0x1
 9250 0166 13       		.uleb128 0x13
 9251 0167 00       		.byte	0
 9252 0168 00       		.byte	0
 9253 0169 1E       		.uleb128 0x1e
 9254 016a 17       		.uleb128 0x17
 9255 016b 01       		.byte	0x1
 9256 016c 0B       		.uleb128 0xb
 9257 016d 0B       		.uleb128 0xb
 9258 016e 3A       		.uleb128 0x3a
 9259 016f 0B       		.uleb128 0xb
 9260 0170 3B       		.uleb128 0x3b
 9261 0171 05       		.uleb128 0x5
 9262 0172 01       		.uleb128 0x1
 9263 0173 13       		.uleb128 0x13
 9264 0174 00       		.byte	0
 9265 0175 00       		.byte	0
 9266 0176 1F       		.uleb128 0x1f
 9267 0177 0D       		.uleb128 0xd
 9268 0178 00       		.byte	0
 9269 0179 03       		.uleb128 0x3
 9270 017a 0E       		.uleb128 0xe
 9271 017b 3A       		.uleb128 0x3a
 9272 017c 0B       		.uleb128 0xb
 9273 017d 3B       		.uleb128 0x3b
 9274 017e 05       		.uleb128 0x5
 9275 017f 49       		.uleb128 0x49
 9276 0180 13       		.uleb128 0x13
 9277 0181 00       		.byte	0
 9278 0182 00       		.byte	0
 9279 0183 20       		.uleb128 0x20
 9280 0184 15       		.uleb128 0x15
 9281 0185 01       		.byte	0x1
 9282 0186 27       		.uleb128 0x27
 9283 0187 19       		.uleb128 0x19
 9284 0188 01       		.uleb128 0x1
 9285 0189 13       		.uleb128 0x13
 9286 018a 00       		.byte	0
 9287 018b 00       		.byte	0
 9288 018c 21       		.uleb128 0x21
 9289 018d 26       		.uleb128 0x26
 9290 018e 00       		.byte	0
 9291 018f 00       		.byte	0
 9292 0190 00       		.byte	0
 9293 0191 22       		.uleb128 0x22
 9294 0192 34       		.uleb128 0x34
 9295 0193 00       		.byte	0
 9296 0194 03       		.uleb128 0x3
 9297 0195 0E       		.uleb128 0xe
 9298 0196 3A       		.uleb128 0x3a
 9299 0197 0B       		.uleb128 0xb
 9300 0198 3B       		.uleb128 0x3b
 9301 0199 0B       		.uleb128 0xb
 9302 019a 49       		.uleb128 0x49
 9303 019b 13       		.uleb128 0x13
 9304 019c 02       		.uleb128 0x2
 9305 019d 18       		.uleb128 0x18
ARM GAS  /tmp/ccCxIftT.s 			page 210


 9306 019e 00       		.byte	0
 9307 019f 00       		.byte	0
 9308 01a0 23       		.uleb128 0x23
 9309 01a1 04       		.uleb128 0x4
 9310 01a2 01       		.byte	0x1
 9311 01a3 03       		.uleb128 0x3
 9312 01a4 0E       		.uleb128 0xe
 9313 01a5 0B       		.uleb128 0xb
 9314 01a6 0B       		.uleb128 0xb
 9315 01a7 49       		.uleb128 0x49
 9316 01a8 13       		.uleb128 0x13
 9317 01a9 3A       		.uleb128 0x3a
 9318 01aa 0B       		.uleb128 0xb
 9319 01ab 3B       		.uleb128 0x3b
 9320 01ac 0B       		.uleb128 0xb
 9321 01ad 01       		.uleb128 0x1
 9322 01ae 13       		.uleb128 0x13
 9323 01af 00       		.byte	0
 9324 01b0 00       		.byte	0
 9325 01b1 24       		.uleb128 0x24
 9326 01b2 28       		.uleb128 0x28
 9327 01b3 00       		.byte	0
 9328 01b4 03       		.uleb128 0x3
 9329 01b5 0E       		.uleb128 0xe
 9330 01b6 1C       		.uleb128 0x1c
 9331 01b7 0B       		.uleb128 0xb
 9332 01b8 00       		.byte	0
 9333 01b9 00       		.byte	0
 9334 01ba 25       		.uleb128 0x25
 9335 01bb 15       		.uleb128 0x15
 9336 01bc 00       		.byte	0
 9337 01bd 27       		.uleb128 0x27
 9338 01be 19       		.uleb128 0x19
 9339 01bf 49       		.uleb128 0x49
 9340 01c0 13       		.uleb128 0x13
 9341 01c1 00       		.byte	0
 9342 01c2 00       		.byte	0
 9343 01c3 26       		.uleb128 0x26
 9344 01c4 04       		.uleb128 0x4
 9345 01c5 01       		.byte	0x1
 9346 01c6 0B       		.uleb128 0xb
 9347 01c7 0B       		.uleb128 0xb
 9348 01c8 49       		.uleb128 0x49
 9349 01c9 13       		.uleb128 0x13
 9350 01ca 3A       		.uleb128 0x3a
 9351 01cb 0B       		.uleb128 0xb
 9352 01cc 3B       		.uleb128 0x3b
 9353 01cd 0B       		.uleb128 0xb
 9354 01ce 01       		.uleb128 0x1
 9355 01cf 13       		.uleb128 0x13
 9356 01d0 00       		.byte	0
 9357 01d1 00       		.byte	0
 9358 01d2 27       		.uleb128 0x27
 9359 01d3 34       		.uleb128 0x34
 9360 01d4 00       		.byte	0
 9361 01d5 47       		.uleb128 0x47
 9362 01d6 13       		.uleb128 0x13
ARM GAS  /tmp/ccCxIftT.s 			page 211


 9363 01d7 3A       		.uleb128 0x3a
 9364 01d8 0B       		.uleb128 0xb
 9365 01d9 3B       		.uleb128 0x3b
 9366 01da 0B       		.uleb128 0xb
 9367 01db 02       		.uleb128 0x2
 9368 01dc 18       		.uleb128 0x18
 9369 01dd 00       		.byte	0
 9370 01de 00       		.byte	0
 9371 01df 28       		.uleb128 0x28
 9372 01e0 21       		.uleb128 0x21
 9373 01e1 00       		.byte	0
 9374 01e2 49       		.uleb128 0x49
 9375 01e3 13       		.uleb128 0x13
 9376 01e4 2F       		.uleb128 0x2f
 9377 01e5 05       		.uleb128 0x5
 9378 01e6 00       		.byte	0
 9379 01e7 00       		.byte	0
 9380 01e8 29       		.uleb128 0x29
 9381 01e9 34       		.uleb128 0x34
 9382 01ea 00       		.byte	0
 9383 01eb 03       		.uleb128 0x3
 9384 01ec 0E       		.uleb128 0xe
 9385 01ed 3A       		.uleb128 0x3a
 9386 01ee 0B       		.uleb128 0xb
 9387 01ef 3B       		.uleb128 0x3b
 9388 01f0 05       		.uleb128 0x5
 9389 01f1 49       		.uleb128 0x49
 9390 01f2 13       		.uleb128 0x13
 9391 01f3 02       		.uleb128 0x2
 9392 01f4 18       		.uleb128 0x18
 9393 01f5 00       		.byte	0
 9394 01f6 00       		.byte	0
 9395 01f7 2A       		.uleb128 0x2a
 9396 01f8 2E       		.uleb128 0x2e
 9397 01f9 01       		.byte	0x1
 9398 01fa 3F       		.uleb128 0x3f
 9399 01fb 19       		.uleb128 0x19
 9400 01fc 03       		.uleb128 0x3
 9401 01fd 0E       		.uleb128 0xe
 9402 01fe 3A       		.uleb128 0x3a
 9403 01ff 0B       		.uleb128 0xb
 9404 0200 3B       		.uleb128 0x3b
 9405 0201 05       		.uleb128 0x5
 9406 0202 27       		.uleb128 0x27
 9407 0203 19       		.uleb128 0x19
 9408 0204 49       		.uleb128 0x49
 9409 0205 13       		.uleb128 0x13
 9410 0206 11       		.uleb128 0x11
 9411 0207 01       		.uleb128 0x1
 9412 0208 12       		.uleb128 0x12
 9413 0209 06       		.uleb128 0x6
 9414 020a 40       		.uleb128 0x40
 9415 020b 18       		.uleb128 0x18
 9416 020c 9742     		.uleb128 0x2117
 9417 020e 19       		.uleb128 0x19
 9418 020f 01       		.uleb128 0x1
 9419 0210 13       		.uleb128 0x13
ARM GAS  /tmp/ccCxIftT.s 			page 212


 9420 0211 00       		.byte	0
 9421 0212 00       		.byte	0
 9422 0213 2B       		.uleb128 0x2b
 9423 0214 05       		.uleb128 0x5
 9424 0215 00       		.byte	0
 9425 0216 03       		.uleb128 0x3
 9426 0217 08       		.uleb128 0x8
 9427 0218 3A       		.uleb128 0x3a
 9428 0219 0B       		.uleb128 0xb
 9429 021a 3B       		.uleb128 0x3b
 9430 021b 05       		.uleb128 0x5
 9431 021c 49       		.uleb128 0x49
 9432 021d 13       		.uleb128 0x13
 9433 021e 02       		.uleb128 0x2
 9434 021f 17       		.uleb128 0x17
 9435 0220 00       		.byte	0
 9436 0221 00       		.byte	0
 9437 0222 2C       		.uleb128 0x2c
 9438 0223 05       		.uleb128 0x5
 9439 0224 00       		.byte	0
 9440 0225 03       		.uleb128 0x3
 9441 0226 0E       		.uleb128 0xe
 9442 0227 3A       		.uleb128 0x3a
 9443 0228 0B       		.uleb128 0xb
 9444 0229 3B       		.uleb128 0x3b
 9445 022a 05       		.uleb128 0x5
 9446 022b 49       		.uleb128 0x49
 9447 022c 13       		.uleb128 0x13
 9448 022d 02       		.uleb128 0x2
 9449 022e 17       		.uleb128 0x17
 9450 022f 00       		.byte	0
 9451 0230 00       		.byte	0
 9452 0231 2D       		.uleb128 0x2d
 9453 0232 898201   		.uleb128 0x4109
 9454 0235 01       		.byte	0x1
 9455 0236 11       		.uleb128 0x11
 9456 0237 01       		.uleb128 0x1
 9457 0238 9542     		.uleb128 0x2115
 9458 023a 19       		.uleb128 0x19
 9459 023b 31       		.uleb128 0x31
 9460 023c 13       		.uleb128 0x13
 9461 023d 00       		.byte	0
 9462 023e 00       		.byte	0
 9463 023f 2E       		.uleb128 0x2e
 9464 0240 8A8201   		.uleb128 0x410a
 9465 0243 00       		.byte	0
 9466 0244 02       		.uleb128 0x2
 9467 0245 18       		.uleb128 0x18
 9468 0246 9142     		.uleb128 0x2111
 9469 0248 18       		.uleb128 0x18
 9470 0249 00       		.byte	0
 9471 024a 00       		.byte	0
 9472 024b 2F       		.uleb128 0x2f
 9473 024c 34       		.uleb128 0x34
 9474 024d 00       		.byte	0
 9475 024e 03       		.uleb128 0x3
 9476 024f 0E       		.uleb128 0xe
ARM GAS  /tmp/ccCxIftT.s 			page 213


 9477 0250 3A       		.uleb128 0x3a
 9478 0251 0B       		.uleb128 0xb
 9479 0252 3B       		.uleb128 0x3b
 9480 0253 05       		.uleb128 0x5
 9481 0254 49       		.uleb128 0x49
 9482 0255 13       		.uleb128 0x13
 9483 0256 00       		.byte	0
 9484 0257 00       		.byte	0
 9485 0258 30       		.uleb128 0x30
 9486 0259 34       		.uleb128 0x34
 9487 025a 00       		.byte	0
 9488 025b 03       		.uleb128 0x3
 9489 025c 0E       		.uleb128 0xe
 9490 025d 3A       		.uleb128 0x3a
 9491 025e 0B       		.uleb128 0xb
 9492 025f 3B       		.uleb128 0x3b
 9493 0260 05       		.uleb128 0x5
 9494 0261 49       		.uleb128 0x49
 9495 0262 13       		.uleb128 0x13
 9496 0263 02       		.uleb128 0x2
 9497 0264 17       		.uleb128 0x17
 9498 0265 00       		.byte	0
 9499 0266 00       		.byte	0
 9500 0267 31       		.uleb128 0x31
 9501 0268 0A       		.uleb128 0xa
 9502 0269 00       		.byte	0
 9503 026a 03       		.uleb128 0x3
 9504 026b 0E       		.uleb128 0xe
 9505 026c 3A       		.uleb128 0x3a
 9506 026d 0B       		.uleb128 0xb
 9507 026e 3B       		.uleb128 0x3b
 9508 026f 05       		.uleb128 0x5
 9509 0270 00       		.byte	0
 9510 0271 00       		.byte	0
 9511 0272 32       		.uleb128 0x32
 9512 0273 1D       		.uleb128 0x1d
 9513 0274 01       		.byte	0x1
 9514 0275 31       		.uleb128 0x31
 9515 0276 13       		.uleb128 0x13
 9516 0277 52       		.uleb128 0x52
 9517 0278 01       		.uleb128 0x1
 9518 0279 55       		.uleb128 0x55
 9519 027a 17       		.uleb128 0x17
 9520 027b 58       		.uleb128 0x58
 9521 027c 0B       		.uleb128 0xb
 9522 027d 59       		.uleb128 0x59
 9523 027e 05       		.uleb128 0x5
 9524 027f 01       		.uleb128 0x1
 9525 0280 13       		.uleb128 0x13
 9526 0281 00       		.byte	0
 9527 0282 00       		.byte	0
 9528 0283 33       		.uleb128 0x33
 9529 0284 0B       		.uleb128 0xb
 9530 0285 01       		.byte	0x1
 9531 0286 55       		.uleb128 0x55
 9532 0287 17       		.uleb128 0x17
 9533 0288 00       		.byte	0
ARM GAS  /tmp/ccCxIftT.s 			page 214


 9534 0289 00       		.byte	0
 9535 028a 34       		.uleb128 0x34
 9536 028b 34       		.uleb128 0x34
 9537 028c 00       		.byte	0
 9538 028d 31       		.uleb128 0x31
 9539 028e 13       		.uleb128 0x13
 9540 028f 00       		.byte	0
 9541 0290 00       		.byte	0
 9542 0291 35       		.uleb128 0x35
 9543 0292 1D       		.uleb128 0x1d
 9544 0293 01       		.byte	0x1
 9545 0294 31       		.uleb128 0x31
 9546 0295 13       		.uleb128 0x13
 9547 0296 11       		.uleb128 0x11
 9548 0297 01       		.uleb128 0x1
 9549 0298 12       		.uleb128 0x12
 9550 0299 06       		.uleb128 0x6
 9551 029a 58       		.uleb128 0x58
 9552 029b 0B       		.uleb128 0xb
 9553 029c 59       		.uleb128 0x59
 9554 029d 0B       		.uleb128 0xb
 9555 029e 01       		.uleb128 0x1
 9556 029f 13       		.uleb128 0x13
 9557 02a0 00       		.byte	0
 9558 02a1 00       		.byte	0
 9559 02a2 36       		.uleb128 0x36
 9560 02a3 0B       		.uleb128 0xb
 9561 02a4 01       		.byte	0x1
 9562 02a5 11       		.uleb128 0x11
 9563 02a6 01       		.uleb128 0x1
 9564 02a7 12       		.uleb128 0x12
 9565 02a8 06       		.uleb128 0x6
 9566 02a9 00       		.byte	0
 9567 02aa 00       		.byte	0
 9568 02ab 37       		.uleb128 0x37
 9569 02ac 1D       		.uleb128 0x1d
 9570 02ad 00       		.byte	0
 9571 02ae 31       		.uleb128 0x31
 9572 02af 13       		.uleb128 0x13
 9573 02b0 11       		.uleb128 0x11
 9574 02b1 01       		.uleb128 0x1
 9575 02b2 12       		.uleb128 0x12
 9576 02b3 06       		.uleb128 0x6
 9577 02b4 58       		.uleb128 0x58
 9578 02b5 0B       		.uleb128 0xb
 9579 02b6 59       		.uleb128 0x59
 9580 02b7 0B       		.uleb128 0xb
 9581 02b8 00       		.byte	0
 9582 02b9 00       		.byte	0
 9583 02ba 38       		.uleb128 0x38
 9584 02bb 1D       		.uleb128 0x1d
 9585 02bc 01       		.byte	0x1
 9586 02bd 31       		.uleb128 0x31
 9587 02be 13       		.uleb128 0x13
 9588 02bf 11       		.uleb128 0x11
 9589 02c0 01       		.uleb128 0x1
 9590 02c1 12       		.uleb128 0x12
ARM GAS  /tmp/ccCxIftT.s 			page 215


 9591 02c2 06       		.uleb128 0x6
 9592 02c3 58       		.uleb128 0x58
 9593 02c4 0B       		.uleb128 0xb
 9594 02c5 59       		.uleb128 0x59
 9595 02c6 05       		.uleb128 0x5
 9596 02c7 01       		.uleb128 0x1
 9597 02c8 13       		.uleb128 0x13
 9598 02c9 00       		.byte	0
 9599 02ca 00       		.byte	0
 9600 02cb 39       		.uleb128 0x39
 9601 02cc 05       		.uleb128 0x5
 9602 02cd 00       		.byte	0
 9603 02ce 31       		.uleb128 0x31
 9604 02cf 13       		.uleb128 0x13
 9605 02d0 02       		.uleb128 0x2
 9606 02d1 17       		.uleb128 0x17
 9607 02d2 00       		.byte	0
 9608 02d3 00       		.byte	0
 9609 02d4 3A       		.uleb128 0x3a
 9610 02d5 898201   		.uleb128 0x4109
 9611 02d8 01       		.byte	0x1
 9612 02d9 11       		.uleb128 0x11
 9613 02da 01       		.uleb128 0x1
 9614 02db 31       		.uleb128 0x31
 9615 02dc 13       		.uleb128 0x13
 9616 02dd 00       		.byte	0
 9617 02de 00       		.byte	0
 9618 02df 3B       		.uleb128 0x3b
 9619 02e0 05       		.uleb128 0x5
 9620 02e1 00       		.byte	0
 9621 02e2 31       		.uleb128 0x31
 9622 02e3 13       		.uleb128 0x13
 9623 02e4 00       		.byte	0
 9624 02e5 00       		.byte	0
 9625 02e6 3C       		.uleb128 0x3c
 9626 02e7 1D       		.uleb128 0x1d
 9627 02e8 01       		.byte	0x1
 9628 02e9 31       		.uleb128 0x31
 9629 02ea 13       		.uleb128 0x13
 9630 02eb 52       		.uleb128 0x52
 9631 02ec 01       		.uleb128 0x1
 9632 02ed 55       		.uleb128 0x55
 9633 02ee 17       		.uleb128 0x17
 9634 02ef 58       		.uleb128 0x58
 9635 02f0 0B       		.uleb128 0xb
 9636 02f1 59       		.uleb128 0x59
 9637 02f2 05       		.uleb128 0x5
 9638 02f3 00       		.byte	0
 9639 02f4 00       		.byte	0
 9640 02f5 3D       		.uleb128 0x3d
 9641 02f6 1D       		.uleb128 0x1d
 9642 02f7 01       		.byte	0x1
 9643 02f8 31       		.uleb128 0x31
 9644 02f9 13       		.uleb128 0x13
 9645 02fa 11       		.uleb128 0x11
 9646 02fb 01       		.uleb128 0x1
 9647 02fc 12       		.uleb128 0x12
ARM GAS  /tmp/ccCxIftT.s 			page 216


 9648 02fd 06       		.uleb128 0x6
 9649 02fe 58       		.uleb128 0x58
 9650 02ff 0B       		.uleb128 0xb
 9651 0300 59       		.uleb128 0x59
 9652 0301 05       		.uleb128 0x5
 9653 0302 00       		.byte	0
 9654 0303 00       		.byte	0
 9655 0304 3E       		.uleb128 0x3e
 9656 0305 2E       		.uleb128 0x2e
 9657 0306 01       		.byte	0x1
 9658 0307 3F       		.uleb128 0x3f
 9659 0308 19       		.uleb128 0x19
 9660 0309 03       		.uleb128 0x3
 9661 030a 0E       		.uleb128 0xe
 9662 030b 3A       		.uleb128 0x3a
 9663 030c 0B       		.uleb128 0xb
 9664 030d 3B       		.uleb128 0x3b
 9665 030e 05       		.uleb128 0x5
 9666 030f 27       		.uleb128 0x27
 9667 0310 19       		.uleb128 0x19
 9668 0311 49       		.uleb128 0x49
 9669 0312 13       		.uleb128 0x13
 9670 0313 20       		.uleb128 0x20
 9671 0314 0B       		.uleb128 0xb
 9672 0315 01       		.uleb128 0x1
 9673 0316 13       		.uleb128 0x13
 9674 0317 00       		.byte	0
 9675 0318 00       		.byte	0
 9676 0319 3F       		.uleb128 0x3f
 9677 031a 05       		.uleb128 0x5
 9678 031b 00       		.byte	0
 9679 031c 03       		.uleb128 0x3
 9680 031d 0E       		.uleb128 0xe
 9681 031e 3A       		.uleb128 0x3a
 9682 031f 0B       		.uleb128 0xb
 9683 0320 3B       		.uleb128 0x3b
 9684 0321 05       		.uleb128 0x5
 9685 0322 49       		.uleb128 0x49
 9686 0323 13       		.uleb128 0x13
 9687 0324 00       		.byte	0
 9688 0325 00       		.byte	0
 9689 0326 40       		.uleb128 0x40
 9690 0327 34       		.uleb128 0x34
 9691 0328 00       		.byte	0
 9692 0329 31       		.uleb128 0x31
 9693 032a 13       		.uleb128 0x13
 9694 032b 02       		.uleb128 0x2
 9695 032c 17       		.uleb128 0x17
 9696 032d 00       		.byte	0
 9697 032e 00       		.byte	0
 9698 032f 41       		.uleb128 0x41
 9699 0330 34       		.uleb128 0x34
 9700 0331 00       		.byte	0
 9701 0332 31       		.uleb128 0x31
 9702 0333 13       		.uleb128 0x13
 9703 0334 02       		.uleb128 0x2
 9704 0335 18       		.uleb128 0x18
ARM GAS  /tmp/ccCxIftT.s 			page 217


 9705 0336 00       		.byte	0
 9706 0337 00       		.byte	0
 9707 0338 42       		.uleb128 0x42
 9708 0339 05       		.uleb128 0x5
 9709 033a 00       		.byte	0
 9710 033b 31       		.uleb128 0x31
 9711 033c 13       		.uleb128 0x13
 9712 033d 1C       		.uleb128 0x1c
 9713 033e 0B       		.uleb128 0xb
 9714 033f 00       		.byte	0
 9715 0340 00       		.byte	0
 9716 0341 43       		.uleb128 0x43
 9717 0342 898201   		.uleb128 0x4109
 9718 0345 01       		.byte	0x1
 9719 0346 11       		.uleb128 0x11
 9720 0347 01       		.uleb128 0x1
 9721 0348 31       		.uleb128 0x31
 9722 0349 13       		.uleb128 0x13
 9723 034a 01       		.uleb128 0x1
 9724 034b 13       		.uleb128 0x13
 9725 034c 00       		.byte	0
 9726 034d 00       		.byte	0
 9727 034e 44       		.uleb128 0x44
 9728 034f 8A8201   		.uleb128 0x410a
 9729 0352 00       		.byte	0
 9730 0353 31       		.uleb128 0x31
 9731 0354 13       		.uleb128 0x13
 9732 0355 9142     		.uleb128 0x2111
 9733 0357 18       		.uleb128 0x18
 9734 0358 00       		.byte	0
 9735 0359 00       		.byte	0
 9736 035a 45       		.uleb128 0x45
 9737 035b 2E       		.uleb128 0x2e
 9738 035c 01       		.byte	0x1
 9739 035d 03       		.uleb128 0x3
 9740 035e 0E       		.uleb128 0xe
 9741 035f 3A       		.uleb128 0x3a
 9742 0360 0B       		.uleb128 0xb
 9743 0361 3B       		.uleb128 0x3b
 9744 0362 05       		.uleb128 0x5
 9745 0363 27       		.uleb128 0x27
 9746 0364 19       		.uleb128 0x19
 9747 0365 49       		.uleb128 0x49
 9748 0366 13       		.uleb128 0x13
 9749 0367 20       		.uleb128 0x20
 9750 0368 0B       		.uleb128 0xb
 9751 0369 01       		.uleb128 0x1
 9752 036a 13       		.uleb128 0x13
 9753 036b 00       		.byte	0
 9754 036c 00       		.byte	0
 9755 036d 46       		.uleb128 0x46
 9756 036e 05       		.uleb128 0x5
 9757 036f 00       		.byte	0
 9758 0370 03       		.uleb128 0x3
 9759 0371 08       		.uleb128 0x8
 9760 0372 3A       		.uleb128 0x3a
 9761 0373 0B       		.uleb128 0xb
ARM GAS  /tmp/ccCxIftT.s 			page 218


 9762 0374 3B       		.uleb128 0x3b
 9763 0375 05       		.uleb128 0x5
 9764 0376 49       		.uleb128 0x49
 9765 0377 13       		.uleb128 0x13
 9766 0378 00       		.byte	0
 9767 0379 00       		.byte	0
 9768 037a 47       		.uleb128 0x47
 9769 037b 34       		.uleb128 0x34
 9770 037c 00       		.byte	0
 9771 037d 03       		.uleb128 0x3
 9772 037e 08       		.uleb128 0x8
 9773 037f 3A       		.uleb128 0x3a
 9774 0380 0B       		.uleb128 0xb
 9775 0381 3B       		.uleb128 0x3b
 9776 0382 05       		.uleb128 0x5
 9777 0383 49       		.uleb128 0x49
 9778 0384 13       		.uleb128 0x13
 9779 0385 00       		.byte	0
 9780 0386 00       		.byte	0
 9781 0387 48       		.uleb128 0x48
 9782 0388 34       		.uleb128 0x34
 9783 0389 00       		.byte	0
 9784 038a 03       		.uleb128 0x3
 9785 038b 08       		.uleb128 0x8
 9786 038c 3A       		.uleb128 0x3a
 9787 038d 0B       		.uleb128 0xb
 9788 038e 3B       		.uleb128 0x3b
 9789 038f 05       		.uleb128 0x5
 9790 0390 49       		.uleb128 0x49
 9791 0391 13       		.uleb128 0x13
 9792 0392 02       		.uleb128 0x2
 9793 0393 17       		.uleb128 0x17
 9794 0394 00       		.byte	0
 9795 0395 00       		.byte	0
 9796 0396 49       		.uleb128 0x49
 9797 0397 34       		.uleb128 0x34
 9798 0398 00       		.byte	0
 9799 0399 03       		.uleb128 0x3
 9800 039a 08       		.uleb128 0x8
 9801 039b 3A       		.uleb128 0x3a
 9802 039c 0B       		.uleb128 0xb
 9803 039d 3B       		.uleb128 0x3b
 9804 039e 05       		.uleb128 0x5
 9805 039f 49       		.uleb128 0x49
 9806 03a0 13       		.uleb128 0x13
 9807 03a1 02       		.uleb128 0x2
 9808 03a2 18       		.uleb128 0x18
 9809 03a3 00       		.byte	0
 9810 03a4 00       		.byte	0
 9811 03a5 4A       		.uleb128 0x4a
 9812 03a6 2E       		.uleb128 0x2e
 9813 03a7 01       		.byte	0x1
 9814 03a8 3F       		.uleb128 0x3f
 9815 03a9 19       		.uleb128 0x19
 9816 03aa 03       		.uleb128 0x3
 9817 03ab 0E       		.uleb128 0xe
 9818 03ac 3A       		.uleb128 0x3a
ARM GAS  /tmp/ccCxIftT.s 			page 219


 9819 03ad 0B       		.uleb128 0xb
 9820 03ae 3B       		.uleb128 0x3b
 9821 03af 05       		.uleb128 0x5
 9822 03b0 27       		.uleb128 0x27
 9823 03b1 19       		.uleb128 0x19
 9824 03b2 11       		.uleb128 0x11
 9825 03b3 01       		.uleb128 0x1
 9826 03b4 12       		.uleb128 0x12
 9827 03b5 06       		.uleb128 0x6
 9828 03b6 40       		.uleb128 0x40
 9829 03b7 18       		.uleb128 0x18
 9830 03b8 9742     		.uleb128 0x2117
 9831 03ba 19       		.uleb128 0x19
 9832 03bb 01       		.uleb128 0x1
 9833 03bc 13       		.uleb128 0x13
 9834 03bd 00       		.byte	0
 9835 03be 00       		.byte	0
 9836 03bf 4B       		.uleb128 0x4b
 9837 03c0 2E       		.uleb128 0x2e
 9838 03c1 01       		.byte	0x1
 9839 03c2 03       		.uleb128 0x3
 9840 03c3 0E       		.uleb128 0xe
 9841 03c4 3A       		.uleb128 0x3a
 9842 03c5 0B       		.uleb128 0xb
 9843 03c6 3B       		.uleb128 0x3b
 9844 03c7 05       		.uleb128 0x5
 9845 03c8 27       		.uleb128 0x27
 9846 03c9 19       		.uleb128 0x19
 9847 03ca 20       		.uleb128 0x20
 9848 03cb 0B       		.uleb128 0xb
 9849 03cc 01       		.uleb128 0x1
 9850 03cd 13       		.uleb128 0x13
 9851 03ce 00       		.byte	0
 9852 03cf 00       		.byte	0
 9853 03d0 4C       		.uleb128 0x4c
 9854 03d1 2E       		.uleb128 0x2e
 9855 03d2 01       		.byte	0x1
 9856 03d3 03       		.uleb128 0x3
 9857 03d4 0E       		.uleb128 0xe
 9858 03d5 3A       		.uleb128 0x3a
 9859 03d6 0B       		.uleb128 0xb
 9860 03d7 3B       		.uleb128 0x3b
 9861 03d8 05       		.uleb128 0x5
 9862 03d9 27       		.uleb128 0x27
 9863 03da 19       		.uleb128 0x19
 9864 03db 11       		.uleb128 0x11
 9865 03dc 01       		.uleb128 0x1
 9866 03dd 12       		.uleb128 0x12
 9867 03de 06       		.uleb128 0x6
 9868 03df 40       		.uleb128 0x40
 9869 03e0 18       		.uleb128 0x18
 9870 03e1 9742     		.uleb128 0x2117
 9871 03e3 19       		.uleb128 0x19
 9872 03e4 01       		.uleb128 0x1
 9873 03e5 13       		.uleb128 0x13
 9874 03e6 00       		.byte	0
 9875 03e7 00       		.byte	0
ARM GAS  /tmp/ccCxIftT.s 			page 220


 9876 03e8 4D       		.uleb128 0x4d
 9877 03e9 34       		.uleb128 0x34
 9878 03ea 00       		.byte	0
 9879 03eb 03       		.uleb128 0x3
 9880 03ec 0E       		.uleb128 0xe
 9881 03ed 3A       		.uleb128 0x3a
 9882 03ee 0B       		.uleb128 0xb
 9883 03ef 3B       		.uleb128 0x3b
 9884 03f0 05       		.uleb128 0x5
 9885 03f1 49       		.uleb128 0x49
 9886 03f2 13       		.uleb128 0x13
 9887 03f3 1C       		.uleb128 0x1c
 9888 03f4 0B       		.uleb128 0xb
 9889 03f5 00       		.byte	0
 9890 03f6 00       		.byte	0
 9891 03f7 4E       		.uleb128 0x4e
 9892 03f8 898201   		.uleb128 0x4109
 9893 03fb 00       		.byte	0
 9894 03fc 11       		.uleb128 0x11
 9895 03fd 01       		.uleb128 0x1
 9896 03fe 9542     		.uleb128 0x2115
 9897 0400 19       		.uleb128 0x19
 9898 0401 31       		.uleb128 0x31
 9899 0402 13       		.uleb128 0x13
 9900 0403 00       		.byte	0
 9901 0404 00       		.byte	0
 9902 0405 4F       		.uleb128 0x4f
 9903 0406 2E       		.uleb128 0x2e
 9904 0407 00       		.byte	0
 9905 0408 3F       		.uleb128 0x3f
 9906 0409 19       		.uleb128 0x19
 9907 040a 03       		.uleb128 0x3
 9908 040b 0E       		.uleb128 0xe
 9909 040c 3A       		.uleb128 0x3a
 9910 040d 0B       		.uleb128 0xb
 9911 040e 3B       		.uleb128 0x3b
 9912 040f 05       		.uleb128 0x5
 9913 0410 27       		.uleb128 0x27
 9914 0411 19       		.uleb128 0x19
 9915 0412 49       		.uleb128 0x49
 9916 0413 13       		.uleb128 0x13
 9917 0414 11       		.uleb128 0x11
 9918 0415 01       		.uleb128 0x1
 9919 0416 12       		.uleb128 0x12
 9920 0417 06       		.uleb128 0x6
 9921 0418 40       		.uleb128 0x40
 9922 0419 18       		.uleb128 0x18
 9923 041a 9742     		.uleb128 0x2117
 9924 041c 19       		.uleb128 0x19
 9925 041d 00       		.byte	0
 9926 041e 00       		.byte	0
 9927 041f 50       		.uleb128 0x50
 9928 0420 898201   		.uleb128 0x4109
 9929 0423 00       		.byte	0
 9930 0424 11       		.uleb128 0x11
 9931 0425 01       		.uleb128 0x1
 9932 0426 31       		.uleb128 0x31
ARM GAS  /tmp/ccCxIftT.s 			page 221


 9933 0427 13       		.uleb128 0x13
 9934 0428 00       		.byte	0
 9935 0429 00       		.byte	0
 9936 042a 51       		.uleb128 0x51
 9937 042b 2E       		.uleb128 0x2e
 9938 042c 00       		.byte	0
 9939 042d 3F       		.uleb128 0x3f
 9940 042e 19       		.uleb128 0x19
 9941 042f 03       		.uleb128 0x3
 9942 0430 0E       		.uleb128 0xe
 9943 0431 3A       		.uleb128 0x3a
 9944 0432 0B       		.uleb128 0xb
 9945 0433 3B       		.uleb128 0x3b
 9946 0434 05       		.uleb128 0x5
 9947 0435 27       		.uleb128 0x27
 9948 0436 19       		.uleb128 0x19
 9949 0437 11       		.uleb128 0x11
 9950 0438 01       		.uleb128 0x1
 9951 0439 12       		.uleb128 0x12
 9952 043a 06       		.uleb128 0x6
 9953 043b 40       		.uleb128 0x40
 9954 043c 18       		.uleb128 0x18
 9955 043d 9742     		.uleb128 0x2117
 9956 043f 19       		.uleb128 0x19
 9957 0440 00       		.byte	0
 9958 0441 00       		.byte	0
 9959 0442 52       		.uleb128 0x52
 9960 0443 2E       		.uleb128 0x2e
 9961 0444 01       		.byte	0x1
 9962 0445 3F       		.uleb128 0x3f
 9963 0446 19       		.uleb128 0x19
 9964 0447 03       		.uleb128 0x3
 9965 0448 0E       		.uleb128 0xe
 9966 0449 3A       		.uleb128 0x3a
 9967 044a 0B       		.uleb128 0xb
 9968 044b 3B       		.uleb128 0x3b
 9969 044c 0B       		.uleb128 0xb
 9970 044d 27       		.uleb128 0x27
 9971 044e 19       		.uleb128 0x19
 9972 044f 20       		.uleb128 0x20
 9973 0450 0B       		.uleb128 0xb
 9974 0451 01       		.uleb128 0x1
 9975 0452 13       		.uleb128 0x13
 9976 0453 00       		.byte	0
 9977 0454 00       		.byte	0
 9978 0455 53       		.uleb128 0x53
 9979 0456 05       		.uleb128 0x5
 9980 0457 00       		.byte	0
 9981 0458 03       		.uleb128 0x3
 9982 0459 0E       		.uleb128 0xe
 9983 045a 3A       		.uleb128 0x3a
 9984 045b 0B       		.uleb128 0xb
 9985 045c 3B       		.uleb128 0x3b
 9986 045d 0B       		.uleb128 0xb
 9987 045e 49       		.uleb128 0x49
 9988 045f 13       		.uleb128 0x13
 9989 0460 00       		.byte	0
ARM GAS  /tmp/ccCxIftT.s 			page 222


 9990 0461 00       		.byte	0
 9991 0462 54       		.uleb128 0x54
 9992 0463 05       		.uleb128 0x5
 9993 0464 00       		.byte	0
 9994 0465 03       		.uleb128 0x3
 9995 0466 08       		.uleb128 0x8
 9996 0467 3A       		.uleb128 0x3a
 9997 0468 0B       		.uleb128 0xb
 9998 0469 3B       		.uleb128 0x3b
 9999 046a 0B       		.uleb128 0xb
 10000 046b 49       		.uleb128 0x49
 10001 046c 13       		.uleb128 0x13
 10002 046d 00       		.byte	0
 10003 046e 00       		.byte	0
 10004 046f 55       		.uleb128 0x55
 10005 0470 2E       		.uleb128 0x2e
 10006 0471 01       		.byte	0x1
 10007 0472 03       		.uleb128 0x3
 10008 0473 0E       		.uleb128 0xe
 10009 0474 3A       		.uleb128 0x3a
 10010 0475 0B       		.uleb128 0xb
 10011 0476 3B       		.uleb128 0x3b
 10012 0477 0B       		.uleb128 0xb
 10013 0478 27       		.uleb128 0x27
 10014 0479 19       		.uleb128 0x19
 10015 047a 20       		.uleb128 0x20
 10016 047b 0B       		.uleb128 0xb
 10017 047c 01       		.uleb128 0x1
 10018 047d 13       		.uleb128 0x13
 10019 047e 00       		.byte	0
 10020 047f 00       		.byte	0
 10021 0480 56       		.uleb128 0x56
 10022 0481 2E       		.uleb128 0x2e
 10023 0482 01       		.byte	0x1
 10024 0483 03       		.uleb128 0x3
 10025 0484 0E       		.uleb128 0xe
 10026 0485 3A       		.uleb128 0x3a
 10027 0486 0B       		.uleb128 0xb
 10028 0487 3B       		.uleb128 0x3b
 10029 0488 0B       		.uleb128 0xb
 10030 0489 27       		.uleb128 0x27
 10031 048a 19       		.uleb128 0x19
 10032 048b 49       		.uleb128 0x49
 10033 048c 13       		.uleb128 0x13
 10034 048d 20       		.uleb128 0x20
 10035 048e 0B       		.uleb128 0xb
 10036 048f 01       		.uleb128 0x1
 10037 0490 13       		.uleb128 0x13
 10038 0491 00       		.byte	0
 10039 0492 00       		.byte	0
 10040 0493 57       		.uleb128 0x57
 10041 0494 34       		.uleb128 0x34
 10042 0495 00       		.byte	0
 10043 0496 03       		.uleb128 0x3
 10044 0497 0E       		.uleb128 0xe
 10045 0498 3A       		.uleb128 0x3a
 10046 0499 0B       		.uleb128 0xb
ARM GAS  /tmp/ccCxIftT.s 			page 223


 10047 049a 3B       		.uleb128 0x3b
 10048 049b 0B       		.uleb128 0xb
 10049 049c 49       		.uleb128 0x49
 10050 049d 13       		.uleb128 0x13
 10051 049e 00       		.byte	0
 10052 049f 00       		.byte	0
 10053 04a0 58       		.uleb128 0x58
 10054 04a1 2E       		.uleb128 0x2e
 10055 04a2 00       		.byte	0
 10056 04a3 03       		.uleb128 0x3
 10057 04a4 0E       		.uleb128 0xe
 10058 04a5 3A       		.uleb128 0x3a
 10059 04a6 0B       		.uleb128 0xb
 10060 04a7 3B       		.uleb128 0x3b
 10061 04a8 05       		.uleb128 0x5
 10062 04a9 27       		.uleb128 0x27
 10063 04aa 19       		.uleb128 0x19
 10064 04ab 20       		.uleb128 0x20
 10065 04ac 0B       		.uleb128 0xb
 10066 04ad 00       		.byte	0
 10067 04ae 00       		.byte	0
 10068 04af 59       		.uleb128 0x59
 10069 04b0 2E       		.uleb128 0x2e
 10070 04b1 01       		.byte	0x1
 10071 04b2 31       		.uleb128 0x31
 10072 04b3 13       		.uleb128 0x13
 10073 04b4 11       		.uleb128 0x11
 10074 04b5 01       		.uleb128 0x1
 10075 04b6 12       		.uleb128 0x12
 10076 04b7 06       		.uleb128 0x6
 10077 04b8 40       		.uleb128 0x40
 10078 04b9 18       		.uleb128 0x18
 10079 04ba 9742     		.uleb128 0x2117
 10080 04bc 19       		.uleb128 0x19
 10081 04bd 01       		.uleb128 0x1
 10082 04be 13       		.uleb128 0x13
 10083 04bf 00       		.byte	0
 10084 04c0 00       		.byte	0
 10085 04c1 5A       		.uleb128 0x5a
 10086 04c2 34       		.uleb128 0x34
 10087 04c3 00       		.byte	0
 10088 04c4 31       		.uleb128 0x31
 10089 04c5 13       		.uleb128 0x13
 10090 04c6 1C       		.uleb128 0x1c
 10091 04c7 0B       		.uleb128 0xb
 10092 04c8 00       		.byte	0
 10093 04c9 00       		.byte	0
 10094 04ca 5B       		.uleb128 0x5b
 10095 04cb 0B       		.uleb128 0xb
 10096 04cc 01       		.byte	0x1
 10097 04cd 11       		.uleb128 0x11
 10098 04ce 01       		.uleb128 0x1
 10099 04cf 12       		.uleb128 0x12
 10100 04d0 06       		.uleb128 0x6
 10101 04d1 01       		.uleb128 0x1
 10102 04d2 13       		.uleb128 0x13
 10103 04d3 00       		.byte	0
ARM GAS  /tmp/ccCxIftT.s 			page 224


 10104 04d4 00       		.byte	0
 10105 04d5 5C       		.uleb128 0x5c
 10106 04d6 05       		.uleb128 0x5
 10107 04d7 00       		.byte	0
 10108 04d8 31       		.uleb128 0x31
 10109 04d9 13       		.uleb128 0x13
 10110 04da 02       		.uleb128 0x2
 10111 04db 18       		.uleb128 0x18
 10112 04dc 00       		.byte	0
 10113 04dd 00       		.byte	0
 10114 04de 5D       		.uleb128 0x5d
 10115 04df 0B       		.uleb128 0xb
 10116 04e0 01       		.byte	0x1
 10117 04e1 55       		.uleb128 0x55
 10118 04e2 17       		.uleb128 0x17
 10119 04e3 01       		.uleb128 0x1
 10120 04e4 13       		.uleb128 0x13
 10121 04e5 00       		.byte	0
 10122 04e6 00       		.byte	0
 10123 04e7 5E       		.uleb128 0x5e
 10124 04e8 898201   		.uleb128 0x4109
 10125 04eb 01       		.byte	0x1
 10126 04ec 11       		.uleb128 0x11
 10127 04ed 01       		.uleb128 0x1
 10128 04ee 9542     		.uleb128 0x2115
 10129 04f0 19       		.uleb128 0x19
 10130 04f1 31       		.uleb128 0x31
 10131 04f2 13       		.uleb128 0x13
 10132 04f3 01       		.uleb128 0x1
 10133 04f4 13       		.uleb128 0x13
 10134 04f5 00       		.byte	0
 10135 04f6 00       		.byte	0
 10136 04f7 5F       		.uleb128 0x5f
 10137 04f8 2E       		.uleb128 0x2e
 10138 04f9 00       		.byte	0
 10139 04fa 3F       		.uleb128 0x3f
 10140 04fb 19       		.uleb128 0x19
 10141 04fc 3C       		.uleb128 0x3c
 10142 04fd 19       		.uleb128 0x19
 10143 04fe 6E       		.uleb128 0x6e
 10144 04ff 0E       		.uleb128 0xe
 10145 0500 03       		.uleb128 0x3
 10146 0501 0E       		.uleb128 0xe
 10147 0502 00       		.byte	0
 10148 0503 00       		.byte	0
 10149 0504 60       		.uleb128 0x60
 10150 0505 2E       		.uleb128 0x2e
 10151 0506 00       		.byte	0
 10152 0507 3F       		.uleb128 0x3f
 10153 0508 19       		.uleb128 0x19
 10154 0509 3C       		.uleb128 0x3c
 10155 050a 19       		.uleb128 0x19
 10156 050b 6E       		.uleb128 0x6e
 10157 050c 0E       		.uleb128 0xe
 10158 050d 03       		.uleb128 0x3
 10159 050e 0E       		.uleb128 0xe
 10160 050f 3A       		.uleb128 0x3a
ARM GAS  /tmp/ccCxIftT.s 			page 225


 10161 0510 0B       		.uleb128 0xb
 10162 0511 3B       		.uleb128 0x3b
 10163 0512 0B       		.uleb128 0xb
 10164 0513 00       		.byte	0
 10165 0514 00       		.byte	0
 10166 0515 61       		.uleb128 0x61
 10167 0516 2E       		.uleb128 0x2e
 10168 0517 00       		.byte	0
 10169 0518 3F       		.uleb128 0x3f
 10170 0519 19       		.uleb128 0x19
 10171 051a 3C       		.uleb128 0x3c
 10172 051b 19       		.uleb128 0x19
 10173 051c 6E       		.uleb128 0x6e
 10174 051d 0E       		.uleb128 0xe
 10175 051e 03       		.uleb128 0x3
 10176 051f 0E       		.uleb128 0xe
 10177 0520 3A       		.uleb128 0x3a
 10178 0521 0B       		.uleb128 0xb
 10179 0522 3B       		.uleb128 0x3b
 10180 0523 05       		.uleb128 0x5
 10181 0524 00       		.byte	0
 10182 0525 00       		.byte	0
 10183 0526 00       		.byte	0
 10184              		.section	.debug_loc,"",%progbits
 10185              	.Ldebug_loc0:
 10186              	.LLST95:
 10187 0000 00000000 		.4byte	.LVL242
 10188 0004 06000000 		.4byte	.LVL244
 10189 0008 0100     		.2byte	0x1
 10190 000a 50       		.byte	0x50
 10191 000b 06000000 		.4byte	.LVL244
 10192 000f 09000000 		.4byte	.LVL245-1
 10193 0013 0100     		.2byte	0x1
 10194 0015 51       		.byte	0x51
 10195 0016 09000000 		.4byte	.LVL245-1
 10196 001a 0A000000 		.4byte	.LFE193
 10197 001e 0400     		.2byte	0x4
 10198 0020 F3       		.byte	0xf3
 10199 0021 01       		.uleb128 0x1
 10200 0022 50       		.byte	0x50
 10201 0023 9F       		.byte	0x9f
 10202 0024 00000000 		.4byte	0
 10203 0028 00000000 		.4byte	0
 10204              	.LLST96:
 10205 002c 00000000 		.4byte	.LVL242
 10206 0030 04000000 		.4byte	.LVL243
 10207 0034 0100     		.2byte	0x1
 10208 0036 51       		.byte	0x51
 10209 0037 04000000 		.4byte	.LVL243
 10210 003b 09000000 		.4byte	.LVL245-1
 10211 003f 0100     		.2byte	0x1
 10212 0041 52       		.byte	0x52
 10213 0042 09000000 		.4byte	.LVL245-1
 10214 0046 0A000000 		.4byte	.LFE193
 10215 004a 0400     		.2byte	0x4
 10216 004c F3       		.byte	0xf3
 10217 004d 01       		.uleb128 0x1
ARM GAS  /tmp/ccCxIftT.s 			page 226


 10218 004e 51       		.byte	0x51
 10219 004f 9F       		.byte	0x9f
 10220 0050 00000000 		.4byte	0
 10221 0054 00000000 		.4byte	0
 10222              	.LLST87:
 10223 0058 00000000 		.4byte	.LVL222
 10224 005c 06000000 		.4byte	.LVL223
 10225 0060 0100     		.2byte	0x1
 10226 0062 50       		.byte	0x50
 10227 0063 06000000 		.4byte	.LVL223
 10228 0067 9C000000 		.4byte	.LFE192
 10229 006b 0200     		.2byte	0x2
 10230 006d 30       		.byte	0x30
 10231 006e 9F       		.byte	0x9f
 10232 006f 00000000 		.4byte	0
 10233 0073 00000000 		.4byte	0
 10234              	.LLST88:
 10235 0077 00000000 		.4byte	.LVL222
 10236 007b 1C000000 		.4byte	.LVL225
 10237 007f 0100     		.2byte	0x1
 10238 0081 51       		.byte	0x51
 10239 0082 1C000000 		.4byte	.LVL225
 10240 0086 9C000000 		.4byte	.LFE192
 10241 008a 0400     		.2byte	0x4
 10242 008c F3       		.byte	0xf3
 10243 008d 01       		.uleb128 0x1
 10244 008e 51       		.byte	0x51
 10245 008f 9F       		.byte	0x9f
 10246 0090 00000000 		.4byte	0
 10247 0094 00000000 		.4byte	0
 10248              	.LLST89:
 10249 0098 00000000 		.4byte	.LVL222
 10250 009c 1A000000 		.4byte	.LVL224
 10251 00a0 0100     		.2byte	0x1
 10252 00a2 52       		.byte	0x52
 10253 00a3 1A000000 		.4byte	.LVL224
 10254 00a7 1E000000 		.4byte	.LVL226
 10255 00ab 0100     		.2byte	0x1
 10256 00ad 57       		.byte	0x57
 10257 00ae 22000000 		.4byte	.LVL228
 10258 00b2 7C000000 		.4byte	.LVL238
 10259 00b6 0100     		.2byte	0x1
 10260 00b8 57       		.byte	0x57
 10261 00b9 00000000 		.4byte	0
 10262 00bd 00000000 		.4byte	0
 10263              	.LLST90:
 10264 00c1 1C000000 		.4byte	.LVL225
 10265 00c5 22000000 		.4byte	.LVL228
 10266 00c9 0100     		.2byte	0x1
 10267 00cb 55       		.byte	0x55
 10268 00cc 44000000 		.4byte	.LVL231
 10269 00d0 80000000 		.4byte	.LVL240
 10270 00d4 0100     		.2byte	0x1
 10271 00d6 55       		.byte	0x55
 10272 00d7 00000000 		.4byte	0
 10273 00db 00000000 		.4byte	0
 10274              	.LLST91:
ARM GAS  /tmp/ccCxIftT.s 			page 227


 10275 00df 48000000 		.4byte	.LVL232
 10276 00e3 60000000 		.4byte	.LVL235
 10277 00e7 0100     		.2byte	0x1
 10278 00e9 56       		.byte	0x56
 10279 00ea 60000000 		.4byte	.LVL235
 10280 00ee 63000000 		.4byte	.LVL236-1
 10281 00f2 0700     		.2byte	0x7
 10282 00f4 75       		.byte	0x75
 10283 00f5 00       		.sleb128 0
 10284 00f6 31       		.byte	0x31
 10285 00f7 24       		.byte	0x24
 10286 00f8 79       		.byte	0x79
 10287 00f9 00       		.sleb128 0
 10288 00fa 22       		.byte	0x22
 10289 00fb 00000000 		.4byte	0
 10290 00ff 00000000 		.4byte	0
 10291              	.LLST92:
 10292 0103 1C000000 		.4byte	.LVL225
 10293 0107 22000000 		.4byte	.LVL228
 10294 010b 0100     		.2byte	0x1
 10295 010d 54       		.byte	0x54
 10296 010e 50000000 		.4byte	.LVL233
 10297 0112 80000000 		.4byte	.LVL240
 10298 0116 0100     		.2byte	0x1
 10299 0118 54       		.byte	0x54
 10300 0119 00000000 		.4byte	0
 10301 011d 00000000 		.4byte	0
 10302              	.LLST93:
 10303 0121 06000000 		.4byte	.LVL223
 10304 0125 1C000000 		.4byte	.LVL225
 10305 0129 0100     		.2byte	0x1
 10306 012b 51       		.byte	0x51
 10307 012c 1C000000 		.4byte	.LVL225
 10308 0130 86000000 		.4byte	.LVL241
 10309 0134 0100     		.2byte	0x1
 10310 0136 58       		.byte	0x58
 10311 0137 00000000 		.4byte	0
 10312 013b 00000000 		.4byte	0
 10313              	.LLST94:
 10314 013f 22000000 		.4byte	.LVL228
 10315 0143 28000000 		.4byte	.LVL229
 10316 0147 0200     		.2byte	0x2
 10317 0149 30       		.byte	0x30
 10318 014a 9F       		.byte	0x9f
 10319 014b 00000000 		.4byte	0
 10320 014f 00000000 		.4byte	0
 10321              	.LLST86:
 10322 0153 00000000 		.4byte	.LVL219
 10323 0157 04000000 		.4byte	.LVL220
 10324 015b 0100     		.2byte	0x1
 10325 015d 50       		.byte	0x50
 10326 015e 04000000 		.4byte	.LVL220
 10327 0162 07000000 		.4byte	.LVL221-1
 10328 0166 0100     		.2byte	0x1
 10329 0168 51       		.byte	0x51
 10330 0169 07000000 		.4byte	.LVL221-1
 10331 016d 08000000 		.4byte	.LFE191
ARM GAS  /tmp/ccCxIftT.s 			page 228


 10332 0171 0400     		.2byte	0x4
 10333 0173 F3       		.byte	0xf3
 10334 0174 01       		.uleb128 0x1
 10335 0175 50       		.byte	0x50
 10336 0176 9F       		.byte	0x9f
 10337 0177 00000000 		.4byte	0
 10338 017b 00000000 		.4byte	0
 10339              	.LLST81:
 10340 017f 00000000 		.4byte	.LVL206
 10341 0183 00000000 		.4byte	.LVL206
 10342 0187 0100     		.2byte	0x1
 10343 0189 50       		.byte	0x50
 10344 018a 00000000 		.4byte	.LVL206
 10345 018e 98000000 		.4byte	.LFE190
 10346 0192 0200     		.2byte	0x2
 10347 0194 30       		.byte	0x30
 10348 0195 9F       		.byte	0x9f
 10349 0196 00000000 		.4byte	0
 10350 019a 00000000 		.4byte	0
 10351              	.LLST82:
 10352 019e 00000000 		.4byte	.LVL206
 10353 01a2 1C000000 		.4byte	.LVL207
 10354 01a6 0100     		.2byte	0x1
 10355 01a8 51       		.byte	0x51
 10356 01a9 1C000000 		.4byte	.LVL207
 10357 01ad 7E000000 		.4byte	.LVL218
 10358 01b1 0100     		.2byte	0x1
 10359 01b3 54       		.byte	0x54
 10360 01b4 00000000 		.4byte	0
 10361 01b8 00000000 		.4byte	0
 10362              	.LLST83:
 10363 01bc 1C000000 		.4byte	.LVL207
 10364 01c0 62000000 		.4byte	.LVL212
 10365 01c4 0100     		.2byte	0x1
 10366 01c6 55       		.byte	0x55
 10367 01c7 62000000 		.4byte	.LVL212
 10368 01cb 6A000000 		.4byte	.LVL215
 10369 01cf 0200     		.2byte	0x2
 10370 01d1 30       		.byte	0x30
 10371 01d2 9F       		.byte	0x9f
 10372 01d3 6A000000 		.4byte	.LVL215
 10373 01d7 74000000 		.4byte	.LVL217
 10374 01db 0100     		.2byte	0x1
 10375 01dd 55       		.byte	0x55
 10376 01de 74000000 		.4byte	.LVL217
 10377 01e2 98000000 		.4byte	.LFE190
 10378 01e6 0200     		.2byte	0x2
 10379 01e8 30       		.byte	0x30
 10380 01e9 9F       		.byte	0x9f
 10381 01ea 00000000 		.4byte	0
 10382 01ee 00000000 		.4byte	0
 10383              	.LLST84:
 10384 01f2 4A000000 		.4byte	.LVL211
 10385 01f6 64000000 		.4byte	.LVL213
 10386 01fa 0100     		.2byte	0x1
 10387 01fc 53       		.byte	0x53
 10388 01fd 6A000000 		.4byte	.LVL215
ARM GAS  /tmp/ccCxIftT.s 			page 229


 10389 0201 6C000000 		.4byte	.LVL216
 10390 0205 0100     		.2byte	0x1
 10391 0207 53       		.byte	0x53
 10392 0208 00000000 		.4byte	0
 10393 020c 00000000 		.4byte	0
 10394              	.LLST85:
 10395 0210 1C000000 		.4byte	.LVL207
 10396 0214 22000000 		.4byte	.LVL208
 10397 0218 0200     		.2byte	0x2
 10398 021a 30       		.byte	0x30
 10399 021b 9F       		.byte	0x9f
 10400 021c 00000000 		.4byte	0
 10401 0220 00000000 		.4byte	0
 10402              	.LLST80:
 10403 0224 00000000 		.4byte	.LVL204
 10404 0228 08000000 		.4byte	.LVL205
 10405 022c 0200     		.2byte	0x2
 10406 022e 30       		.byte	0x30
 10407 022f 9F       		.byte	0x9f
 10408 0230 00000000 		.4byte	0
 10409 0234 00000000 		.4byte	0
 10410              	.LLST73:
 10411 0238 00000000 		.4byte	.LVL186
 10412 023c 00000000 		.4byte	.LVL186
 10413 0240 0100     		.2byte	0x1
 10414 0242 50       		.byte	0x50
 10415 0243 00000000 		.4byte	.LVL186
 10416 0247 74000000 		.4byte	.LFE186
 10417 024b 0200     		.2byte	0x2
 10418 024d 30       		.byte	0x30
 10419 024e 9F       		.byte	0x9f
 10420 024f 00000000 		.4byte	0
 10421 0253 00000000 		.4byte	0
 10422              	.LLST74:
 10423 0257 1E000000 		.4byte	.LVL190
 10424 025b 28000000 		.4byte	.LVL191
 10425 025f 0100     		.2byte	0x1
 10426 0261 50       		.byte	0x50
 10427 0262 38000000 		.4byte	.LVL194
 10428 0266 54000000 		.4byte	.LVL196
 10429 026a 0100     		.2byte	0x1
 10430 026c 50       		.byte	0x50
 10431 026d 54000000 		.4byte	.LVL196
 10432 0271 56000000 		.4byte	.LVL197
 10433 0275 0200     		.2byte	0x2
 10434 0277 30       		.byte	0x30
 10435 0278 9F       		.byte	0x9f
 10436 0279 56000000 		.4byte	.LVL197
 10437 027d 58000000 		.4byte	.LVL198
 10438 0281 0100     		.2byte	0x1
 10439 0283 50       		.byte	0x50
 10440 0284 58000000 		.4byte	.LVL198
 10441 0288 5A000000 		.4byte	.LVL199
 10442 028c 1100     		.2byte	0x11
 10443 028e 73       		.byte	0x73
 10444 028f 00       		.sleb128 0
 10445 0290 31       		.byte	0x31
ARM GAS  /tmp/ccCxIftT.s 			page 230


 10446 0291 24       		.byte	0x24
 10447 0292 03       		.byte	0x3
 10448 0293 00000000 		.4byte	.LANCHOR10
 10449 0297 22       		.byte	0x22
 10450 0298 94       		.byte	0x94
 10451 0299 02       		.byte	0x2
 10452 029a 0A       		.byte	0xa
 10453 029b FFFF     		.2byte	0xffff
 10454 029d 1A       		.byte	0x1a
 10455 029e 9F       		.byte	0x9f
 10456 029f 5A000000 		.4byte	.LVL199
 10457 02a3 5C000000 		.4byte	.LVL200
 10458 02a7 0100     		.2byte	0x1
 10459 02a9 50       		.byte	0x50
 10460 02aa 5C000000 		.4byte	.LVL200
 10461 02ae 74000000 		.4byte	.LFE186
 10462 02b2 1100     		.2byte	0x11
 10463 02b4 73       		.byte	0x73
 10464 02b5 00       		.sleb128 0
 10465 02b6 31       		.byte	0x31
 10466 02b7 24       		.byte	0x24
 10467 02b8 03       		.byte	0x3
 10468 02b9 00000000 		.4byte	.LANCHOR10
 10469 02bd 22       		.byte	0x22
 10470 02be 94       		.byte	0x94
 10471 02bf 02       		.byte	0x2
 10472 02c0 0A       		.byte	0xa
 10473 02c1 FFFF     		.2byte	0xffff
 10474 02c3 1A       		.byte	0x1a
 10475 02c4 9F       		.byte	0x9f
 10476 02c5 00000000 		.4byte	0
 10477 02c9 00000000 		.4byte	0
 10478              	.LLST75:
 10479 02cd 1A000000 		.4byte	.LVL189
 10480 02d1 28000000 		.4byte	.LVL191
 10481 02d5 0100     		.2byte	0x1
 10482 02d7 53       		.byte	0x53
 10483 02d8 38000000 		.4byte	.LVL194
 10484 02dc 4C000000 		.4byte	.LVL195
 10485 02e0 0100     		.2byte	0x1
 10486 02e2 53       		.byte	0x53
 10487 02e3 56000000 		.4byte	.LVL197
 10488 02e7 74000000 		.4byte	.LFE186
 10489 02eb 0100     		.2byte	0x1
 10490 02ed 53       		.byte	0x53
 10491 02ee 00000000 		.4byte	0
 10492 02f2 00000000 		.4byte	0
 10493              	.LLST76:
 10494 02f6 06000000 		.4byte	.LVL187
 10495 02fa 14000000 		.4byte	.LVL188
 10496 02fe 0800     		.2byte	0x8
 10497 0300 75       		.byte	0x75
 10498 0301 00       		.sleb128 0
 10499 0302 30       		.byte	0x30
 10500 0303 29       		.byte	0x29
 10501 0304 08       		.byte	0x8
 10502 0305 FF       		.byte	0xff
ARM GAS  /tmp/ccCxIftT.s 			page 231


 10503 0306 1A       		.byte	0x1a
 10504 0307 9F       		.byte	0x9f
 10505 0308 00000000 		.4byte	0
 10506 030c 00000000 		.4byte	0
 10507              	.LLST77:
 10508 0310 28000000 		.4byte	.LVL191
 10509 0314 34000000 		.4byte	.LVL193
 10510 0318 0800     		.2byte	0x8
 10511 031a 75       		.byte	0x75
 10512 031b 00       		.sleb128 0
 10513 031c 30       		.byte	0x30
 10514 031d 29       		.byte	0x29
 10515 031e 08       		.byte	0x8
 10516 031f FF       		.byte	0xff
 10517 0320 1A       		.byte	0x1a
 10518 0321 9F       		.byte	0x9f
 10519 0322 00000000 		.4byte	0
 10520 0326 00000000 		.4byte	0
 10521              	.LLST78:
 10522 032a 2A000000 		.4byte	.LVL192
 10523 032e 34000000 		.4byte	.LVL193
 10524 0332 0800     		.2byte	0x8
 10525 0334 75       		.byte	0x75
 10526 0335 00       		.sleb128 0
 10527 0336 30       		.byte	0x30
 10528 0337 29       		.byte	0x29
 10529 0338 08       		.byte	0x8
 10530 0339 FF       		.byte	0xff
 10531 033a 1A       		.byte	0x1a
 10532 033b 9F       		.byte	0x9f
 10533 033c 00000000 		.4byte	0
 10534 0340 00000000 		.4byte	0
 10535              	.LLST71:
 10536 0344 00000000 		.4byte	.LVL182
 10537 0348 06000000 		.4byte	.LVL184
 10538 034c 0100     		.2byte	0x1
 10539 034e 50       		.byte	0x50
 10540 034f 06000000 		.4byte	.LVL184
 10541 0353 09000000 		.4byte	.LVL185-1
 10542 0357 0100     		.2byte	0x1
 10543 0359 51       		.byte	0x51
 10544 035a 09000000 		.4byte	.LVL185-1
 10545 035e 0A000000 		.4byte	.LFE185
 10546 0362 0400     		.2byte	0x4
 10547 0364 F3       		.byte	0xf3
 10548 0365 01       		.uleb128 0x1
 10549 0366 50       		.byte	0x50
 10550 0367 9F       		.byte	0x9f
 10551 0368 00000000 		.4byte	0
 10552 036c 00000000 		.4byte	0
 10553              	.LLST72:
 10554 0370 00000000 		.4byte	.LVL182
 10555 0374 04000000 		.4byte	.LVL183
 10556 0378 0100     		.2byte	0x1
 10557 037a 51       		.byte	0x51
 10558 037b 04000000 		.4byte	.LVL183
 10559 037f 09000000 		.4byte	.LVL185-1
ARM GAS  /tmp/ccCxIftT.s 			page 232


 10560 0383 0100     		.2byte	0x1
 10561 0385 52       		.byte	0x52
 10562 0386 09000000 		.4byte	.LVL185-1
 10563 038a 0A000000 		.4byte	.LFE185
 10564 038e 0400     		.2byte	0x4
 10565 0390 F3       		.byte	0xf3
 10566 0391 01       		.uleb128 0x1
 10567 0392 51       		.byte	0x51
 10568 0393 9F       		.byte	0x9f
 10569 0394 00000000 		.4byte	0
 10570 0398 00000000 		.4byte	0
 10571              	.LLST63:
 10572 039c 00000000 		.4byte	.LVL161
 10573 03a0 40000000 		.4byte	.LVL170
 10574 03a4 0100     		.2byte	0x1
 10575 03a6 50       		.byte	0x50
 10576 03a7 40000000 		.4byte	.LVL170
 10577 03ab 42000000 		.4byte	.LVL171
 10578 03af 0400     		.2byte	0x4
 10579 03b1 F3       		.byte	0xf3
 10580 03b2 01       		.uleb128 0x1
 10581 03b3 50       		.byte	0x50
 10582 03b4 9F       		.byte	0x9f
 10583 03b5 42000000 		.4byte	.LVL171
 10584 03b9 53000000 		.4byte	.LVL174-1
 10585 03bd 0100     		.2byte	0x1
 10586 03bf 50       		.byte	0x50
 10587 03c0 53000000 		.4byte	.LVL174-1
 10588 03c4 76000000 		.4byte	.LVL178
 10589 03c8 0400     		.2byte	0x4
 10590 03ca F3       		.byte	0xf3
 10591 03cb 01       		.uleb128 0x1
 10592 03cc 50       		.byte	0x50
 10593 03cd 9F       		.byte	0x9f
 10594 03ce 76000000 		.4byte	.LVL178
 10595 03d2 8E000000 		.4byte	.LVL181
 10596 03d6 0100     		.2byte	0x1
 10597 03d8 50       		.byte	0x50
 10598 03d9 8E000000 		.4byte	.LVL181
 10599 03dd B4000000 		.4byte	.LFE184
 10600 03e1 0400     		.2byte	0x4
 10601 03e3 F3       		.byte	0xf3
 10602 03e4 01       		.uleb128 0x1
 10603 03e5 50       		.byte	0x50
 10604 03e6 9F       		.byte	0x9f
 10605 03e7 00000000 		.4byte	0
 10606 03eb 00000000 		.4byte	0
 10607              	.LLST64:
 10608 03ef 00000000 		.4byte	.LVL161
 10609 03f3 3A000000 		.4byte	.LVL167
 10610 03f7 0100     		.2byte	0x1
 10611 03f9 51       		.byte	0x51
 10612 03fa 3A000000 		.4byte	.LVL167
 10613 03fe 76000000 		.4byte	.LVL178
 10614 0402 0400     		.2byte	0x4
 10615 0404 F3       		.byte	0xf3
 10616 0405 01       		.uleb128 0x1
ARM GAS  /tmp/ccCxIftT.s 			page 233


 10617 0406 51       		.byte	0x51
 10618 0407 9F       		.byte	0x9f
 10619 0408 76000000 		.4byte	.LVL178
 10620 040c 86000000 		.4byte	.LVL179
 10621 0410 0100     		.2byte	0x1
 10622 0412 51       		.byte	0x51
 10623 0413 86000000 		.4byte	.LVL179
 10624 0417 B4000000 		.4byte	.LFE184
 10625 041b 0400     		.2byte	0x4
 10626 041d F3       		.byte	0xf3
 10627 041e 01       		.uleb128 0x1
 10628 041f 51       		.byte	0x51
 10629 0420 9F       		.byte	0x9f
 10630 0421 00000000 		.4byte	0
 10631 0425 00000000 		.4byte	0
 10632              	.LLST65:
 10633 0429 04000000 		.4byte	.LVL162
 10634 042d 3A000000 		.4byte	.LVL167
 10635 0431 0100     		.2byte	0x1
 10636 0433 51       		.byte	0x51
 10637 0434 3A000000 		.4byte	.LVL167
 10638 0438 3C000000 		.4byte	.LVL168
 10639 043c 0400     		.2byte	0x4
 10640 043e F3       		.byte	0xf3
 10641 043f 01       		.uleb128 0x1
 10642 0440 51       		.byte	0x51
 10643 0441 9F       		.byte	0x9f
 10644 0442 3C000000 		.4byte	.LVL168
 10645 0446 3E000000 		.4byte	.LVL169
 10646 044a 1700     		.2byte	0x17
 10647 044c F3       		.byte	0xf3
 10648 044d 01       		.uleb128 0x1
 10649 044e 51       		.byte	0x51
 10650 044f 12       		.byte	0x12
 10651 0450 40       		.byte	0x40
 10652 0451 4B       		.byte	0x4b
 10653 0452 24       		.byte	0x24
 10654 0453 22       		.byte	0x22
 10655 0454 74       		.byte	0x74
 10656 0455 00       		.sleb128 0
 10657 0456 16       		.byte	0x16
 10658 0457 14       		.byte	0x14
 10659 0458 40       		.byte	0x40
 10660 0459 4B       		.byte	0x4b
 10661 045a 24       		.byte	0x24
 10662 045b 22       		.byte	0x22
 10663 045c 2D       		.byte	0x2d
 10664 045d 28       		.byte	0x28
 10665 045e 0100     		.2byte	0x1
 10666 0460 16       		.byte	0x16
 10667 0461 13       		.byte	0x13
 10668 0462 9F       		.byte	0x9f
 10669 0463 76000000 		.4byte	.LVL178
 10670 0467 86000000 		.4byte	.LVL179
 10671 046b 0100     		.2byte	0x1
 10672 046d 51       		.byte	0x51
 10673 046e 86000000 		.4byte	.LVL179
ARM GAS  /tmp/ccCxIftT.s 			page 234


 10674 0472 88000000 		.4byte	.LVL180
 10675 0476 0400     		.2byte	0x4
 10676 0478 F3       		.byte	0xf3
 10677 0479 01       		.uleb128 0x1
 10678 047a 51       		.byte	0x51
 10679 047b 9F       		.byte	0x9f
 10680 047c 88000000 		.4byte	.LVL180
 10681 0480 8E000000 		.4byte	.LVL181
 10682 0484 1700     		.2byte	0x17
 10683 0486 F3       		.byte	0xf3
 10684 0487 01       		.uleb128 0x1
 10685 0488 51       		.byte	0x51
 10686 0489 12       		.byte	0x12
 10687 048a 40       		.byte	0x40
 10688 048b 4B       		.byte	0x4b
 10689 048c 24       		.byte	0x24
 10690 048d 22       		.byte	0x22
 10691 048e 74       		.byte	0x74
 10692 048f 00       		.sleb128 0
 10693 0490 16       		.byte	0x16
 10694 0491 14       		.byte	0x14
 10695 0492 40       		.byte	0x40
 10696 0493 4B       		.byte	0x4b
 10697 0494 24       		.byte	0x24
 10698 0495 22       		.byte	0x22
 10699 0496 2D       		.byte	0x2d
 10700 0497 28       		.byte	0x28
 10701 0498 0100     		.2byte	0x1
 10702 049a 16       		.byte	0x16
 10703 049b 13       		.byte	0x13
 10704 049c 9F       		.byte	0x9f
 10705 049d 00000000 		.4byte	0
 10706 04a1 00000000 		.4byte	0
 10707              	.LLST66:
 10708 04a5 00000000 		.4byte	.LVL161
 10709 04a9 40000000 		.4byte	.LVL170
 10710 04ad 0100     		.2byte	0x1
 10711 04af 50       		.byte	0x50
 10712 04b0 40000000 		.4byte	.LVL170
 10713 04b4 42000000 		.4byte	.LVL171
 10714 04b8 0400     		.2byte	0x4
 10715 04ba F3       		.byte	0xf3
 10716 04bb 01       		.uleb128 0x1
 10717 04bc 50       		.byte	0x50
 10718 04bd 9F       		.byte	0x9f
 10719 04be 42000000 		.4byte	.LVL171
 10720 04c2 53000000 		.4byte	.LVL174-1
 10721 04c6 0100     		.2byte	0x1
 10722 04c8 50       		.byte	0x50
 10723 04c9 53000000 		.4byte	.LVL174-1
 10724 04cd 76000000 		.4byte	.LVL178
 10725 04d1 0400     		.2byte	0x4
 10726 04d3 F3       		.byte	0xf3
 10727 04d4 01       		.uleb128 0x1
 10728 04d5 50       		.byte	0x50
 10729 04d6 9F       		.byte	0x9f
 10730 04d7 76000000 		.4byte	.LVL178
ARM GAS  /tmp/ccCxIftT.s 			page 235


 10731 04db 8E000000 		.4byte	.LVL181
 10732 04df 0100     		.2byte	0x1
 10733 04e1 50       		.byte	0x50
 10734 04e2 8E000000 		.4byte	.LVL181
 10735 04e6 B4000000 		.4byte	.LFE184
 10736 04ea 0400     		.2byte	0x4
 10737 04ec F3       		.byte	0xf3
 10738 04ed 01       		.uleb128 0x1
 10739 04ee 50       		.byte	0x50
 10740 04ef 9F       		.byte	0x9f
 10741 04f0 00000000 		.4byte	0
 10742 04f4 00000000 		.4byte	0
 10743              	.LLST67:
 10744 04f8 04000000 		.4byte	.LVL162
 10745 04fc 40000000 		.4byte	.LVL170
 10746 0500 0100     		.2byte	0x1
 10747 0502 50       		.byte	0x50
 10748 0503 40000000 		.4byte	.LVL170
 10749 0507 42000000 		.4byte	.LVL171
 10750 050b 0400     		.2byte	0x4
 10751 050d F3       		.byte	0xf3
 10752 050e 01       		.uleb128 0x1
 10753 050f 50       		.byte	0x50
 10754 0510 9F       		.byte	0x9f
 10755 0511 42000000 		.4byte	.LVL171
 10756 0515 53000000 		.4byte	.LVL174-1
 10757 0519 0100     		.2byte	0x1
 10758 051b 50       		.byte	0x50
 10759 051c 53000000 		.4byte	.LVL174-1
 10760 0520 6E000000 		.4byte	.LVL176
 10761 0524 0400     		.2byte	0x4
 10762 0526 F3       		.byte	0xf3
 10763 0527 01       		.uleb128 0x1
 10764 0528 50       		.byte	0x50
 10765 0529 9F       		.byte	0x9f
 10766 052a 76000000 		.4byte	.LVL178
 10767 052e 8E000000 		.4byte	.LVL181
 10768 0532 0100     		.2byte	0x1
 10769 0534 50       		.byte	0x50
 10770 0535 8E000000 		.4byte	.LVL181
 10771 0539 B4000000 		.4byte	.LFE184
 10772 053d 0400     		.2byte	0x4
 10773 053f F3       		.byte	0xf3
 10774 0540 01       		.uleb128 0x1
 10775 0541 50       		.byte	0x50
 10776 0542 9F       		.byte	0x9f
 10777 0543 00000000 		.4byte	0
 10778 0547 00000000 		.4byte	0
 10779              	.LLST68:
 10780 054b 32000000 		.4byte	.LVL166
 10781 054f 3E000000 		.4byte	.LVL169
 10782 0553 0100     		.2byte	0x1
 10783 0555 54       		.byte	0x54
 10784 0556 42000000 		.4byte	.LVL171
 10785 055a B4000000 		.4byte	.LFE184
 10786 055e 0100     		.2byte	0x1
 10787 0560 54       		.byte	0x54
ARM GAS  /tmp/ccCxIftT.s 			page 236


 10788 0561 00000000 		.4byte	0
 10789 0565 00000000 		.4byte	0
 10790              	.LLST69:
 10791 0569 28000000 		.4byte	.LVL164
 10792 056d 3E000000 		.4byte	.LVL169
 10793 0571 0100     		.2byte	0x1
 10794 0573 52       		.byte	0x52
 10795 0574 42000000 		.4byte	.LVL171
 10796 0578 4E000000 		.4byte	.LVL173
 10797 057c 0100     		.2byte	0x1
 10798 057e 52       		.byte	0x52
 10799 057f 76000000 		.4byte	.LVL178
 10800 0583 8E000000 		.4byte	.LVL181
 10801 0587 0100     		.2byte	0x1
 10802 0589 52       		.byte	0x52
 10803 058a 00000000 		.4byte	0
 10804 058e 00000000 		.4byte	0
 10805              	.LLST70:
 10806 0592 2A000000 		.4byte	.LVL165
 10807 0596 3E000000 		.4byte	.LVL169
 10808 059a 0100     		.2byte	0x1
 10809 059c 53       		.byte	0x53
 10810 059d 42000000 		.4byte	.LVL171
 10811 05a1 46000000 		.4byte	.LVL172
 10812 05a5 0100     		.2byte	0x1
 10813 05a7 53       		.byte	0x53
 10814 05a8 76000000 		.4byte	.LVL178
 10815 05ac 8E000000 		.4byte	.LVL181
 10816 05b0 0100     		.2byte	0x1
 10817 05b2 53       		.byte	0x53
 10818 05b3 00000000 		.4byte	0
 10819 05b7 00000000 		.4byte	0
 10820              	.LLST55:
 10821 05bb 00000000 		.4byte	.LVL140
 10822 05bf 00000000 		.4byte	.LVL140
 10823 05c3 0100     		.2byte	0x1
 10824 05c5 50       		.byte	0x50
 10825 05c6 00000000 		.4byte	.LVL140
 10826 05ca AC000000 		.4byte	.LFE182
 10827 05ce 0200     		.2byte	0x2
 10828 05d0 30       		.byte	0x30
 10829 05d1 9F       		.byte	0x9f
 10830 05d2 00000000 		.4byte	0
 10831 05d6 00000000 		.4byte	0
 10832              	.LLST56:
 10833 05da 00000000 		.4byte	.LVL140
 10834 05de 1A000000 		.4byte	.LVL141
 10835 05e2 0100     		.2byte	0x1
 10836 05e4 51       		.byte	0x51
 10837 05e5 1A000000 		.4byte	.LVL141
 10838 05e9 AC000000 		.4byte	.LFE182
 10839 05ed 0400     		.2byte	0x4
 10840 05ef F3       		.byte	0xf3
 10841 05f0 01       		.uleb128 0x1
 10842 05f1 51       		.byte	0x51
 10843 05f2 9F       		.byte	0x9f
 10844 05f3 00000000 		.4byte	0
ARM GAS  /tmp/ccCxIftT.s 			page 237


 10845 05f7 00000000 		.4byte	0
 10846              	.LLST57:
 10847 05fb 00000000 		.4byte	.LVL140
 10848 05ff 1A000000 		.4byte	.LVL141
 10849 0603 0100     		.2byte	0x1
 10850 0605 52       		.byte	0x52
 10851 0606 1A000000 		.4byte	.LVL141
 10852 060a 6C000000 		.4byte	.LVL155
 10853 060e 0100     		.2byte	0x1
 10854 0610 55       		.byte	0x55
 10855 0611 74000000 		.4byte	.LVL157
 10856 0615 AC000000 		.4byte	.LFE182
 10857 0619 0100     		.2byte	0x1
 10858 061b 55       		.byte	0x55
 10859 061c 00000000 		.4byte	0
 10860 0620 00000000 		.4byte	0
 10861              	.LLST58:
 10862 0624 00000000 		.4byte	.LVL140
 10863 0628 1A000000 		.4byte	.LVL141
 10864 062c 0100     		.2byte	0x1
 10865 062e 51       		.byte	0x51
 10866 062f 1A000000 		.4byte	.LVL141
 10867 0633 48000000 		.4byte	.LVL146
 10868 0637 0100     		.2byte	0x1
 10869 0639 57       		.byte	0x57
 10870 063a 48000000 		.4byte	.LVL146
 10871 063e 50000000 		.4byte	.LVL148
 10872 0642 0100     		.2byte	0x1
 10873 0644 50       		.byte	0x50
 10874 0645 50000000 		.4byte	.LVL148
 10875 0649 56000000 		.4byte	.LVL149
 10876 064d 0100     		.2byte	0x1
 10877 064f 57       		.byte	0x57
 10878 0650 56000000 		.4byte	.LVL149
 10879 0654 6F000000 		.4byte	.LVL156-1
 10880 0658 0100     		.2byte	0x1
 10881 065a 50       		.byte	0x50
 10882 065b 6F000000 		.4byte	.LVL156-1
 10883 065f AC000000 		.4byte	.LFE182
 10884 0663 0100     		.2byte	0x1
 10885 0665 57       		.byte	0x57
 10886 0666 00000000 		.4byte	0
 10887 066a 00000000 		.4byte	0
 10888              	.LLST59:
 10889 066e 62000000 		.4byte	.LVL152
 10890 0672 78000000 		.4byte	.LVL158
 10891 0676 0100     		.2byte	0x1
 10892 0678 54       		.byte	0x54
 10893 0679 00000000 		.4byte	0
 10894 067d 00000000 		.4byte	0
 10895              	.LLST60:
 10896 0681 30000000 		.4byte	.LVL143
 10897 0685 50000000 		.4byte	.LVL148
 10898 0689 0100     		.2byte	0x1
 10899 068b 52       		.byte	0x52
 10900 068c 56000000 		.4byte	.LVL149
 10901 0690 6A000000 		.4byte	.LVL154
ARM GAS  /tmp/ccCxIftT.s 			page 238


 10902 0694 0100     		.2byte	0x1
 10903 0696 52       		.byte	0x52
 10904 0697 86000000 		.4byte	.LVL160
 10905 069b AC000000 		.4byte	.LFE182
 10906 069f 0100     		.2byte	0x1
 10907 06a1 52       		.byte	0x52
 10908 06a2 00000000 		.4byte	0
 10909 06a6 00000000 		.4byte	0
 10910              	.LLST61:
 10911 06aa 32000000 		.4byte	.LVL144
 10912 06ae 4A000000 		.4byte	.LVL147
 10913 06b2 0100     		.2byte	0x1
 10914 06b4 53       		.byte	0x53
 10915 06b5 56000000 		.4byte	.LVL149
 10916 06b9 5C000000 		.4byte	.LVL151
 10917 06bd 0100     		.2byte	0x1
 10918 06bf 53       		.byte	0x53
 10919 06c0 86000000 		.4byte	.LVL160
 10920 06c4 AC000000 		.4byte	.LFE182
 10921 06c8 0100     		.2byte	0x1
 10922 06ca 53       		.byte	0x53
 10923 06cb 00000000 		.4byte	0
 10924 06cf 00000000 		.4byte	0
 10925              	.LLST62:
 10926 06d3 38000000 		.4byte	.LVL145
 10927 06d7 50000000 		.4byte	.LVL148
 10928 06db 0E00     		.2byte	0xe
 10929 06dd 72       		.byte	0x72
 10930 06de 00       		.sleb128 0
 10931 06df 0A       		.byte	0xa
 10932 06e0 FFFF     		.2byte	0xffff
 10933 06e2 1A       		.byte	0x1a
 10934 06e3 74       		.byte	0x74
 10935 06e4 00       		.sleb128 0
 10936 06e5 0A       		.byte	0xa
 10937 06e6 FFFF     		.2byte	0xffff
 10938 06e8 1A       		.byte	0x1a
 10939 06e9 2A       		.byte	0x2a
 10940 06ea 9F       		.byte	0x9f
 10941 06eb 56000000 		.4byte	.LVL149
 10942 06ef 5A000000 		.4byte	.LVL150
 10943 06f3 0E00     		.2byte	0xe
 10944 06f5 72       		.byte	0x72
 10945 06f6 00       		.sleb128 0
 10946 06f7 0A       		.byte	0xa
 10947 06f8 FFFF     		.2byte	0xffff
 10948 06fa 1A       		.byte	0x1a
 10949 06fb 74       		.byte	0x74
 10950 06fc 00       		.sleb128 0
 10951 06fd 0A       		.byte	0xa
 10952 06fe FFFF     		.2byte	0xffff
 10953 0700 1A       		.byte	0x1a
 10954 0701 2A       		.byte	0x2a
 10955 0702 9F       		.byte	0x9f
 10956 0703 86000000 		.4byte	.LVL160
 10957 0707 AC000000 		.4byte	.LFE182
 10958 070b 0E00     		.2byte	0xe
ARM GAS  /tmp/ccCxIftT.s 			page 239


 10959 070d 72       		.byte	0x72
 10960 070e 00       		.sleb128 0
 10961 070f 0A       		.byte	0xa
 10962 0710 FFFF     		.2byte	0xffff
 10963 0712 1A       		.byte	0x1a
 10964 0713 74       		.byte	0x74
 10965 0714 00       		.sleb128 0
 10966 0715 0A       		.byte	0xa
 10967 0716 FFFF     		.2byte	0xffff
 10968 0718 1A       		.byte	0x1a
 10969 0719 2A       		.byte	0x2a
 10970 071a 9F       		.byte	0x9f
 10971 071b 00000000 		.4byte	0
 10972 071f 00000000 		.4byte	0
 10973              	.LLST50:
 10974 0723 00000000 		.4byte	.LVL126
 10975 0727 00000000 		.4byte	.LVL126
 10976 072b 0100     		.2byte	0x1
 10977 072d 50       		.byte	0x50
 10978 072e 00000000 		.4byte	.LVL126
 10979 0732 B8000000 		.4byte	.LFE180
 10980 0736 0200     		.2byte	0x2
 10981 0738 30       		.byte	0x30
 10982 0739 9F       		.byte	0x9f
 10983 073a 00000000 		.4byte	0
 10984 073e 00000000 		.4byte	0
 10985              	.LLST51:
 10986 0742 00000000 		.4byte	.LVL126
 10987 0746 26000000 		.4byte	.LVL127
 10988 074a 0200     		.2byte	0x2
 10989 074c 30       		.byte	0x30
 10990 074d 9F       		.byte	0x9f
 10991 074e 26000000 		.4byte	.LVL127
 10992 0752 5A000000 		.4byte	.LVL132
 10993 0756 0100     		.2byte	0x1
 10994 0758 50       		.byte	0x50
 10995 0759 60000000 		.4byte	.LVL133
 10996 075d 7A000000 		.4byte	.LVL135
 10997 0761 0100     		.2byte	0x1
 10998 0763 50       		.byte	0x50
 10999 0764 7A000000 		.4byte	.LVL135
 11000 0768 88000000 		.4byte	.LVL137
 11001 076c 0100     		.2byte	0x1
 11002 076e 58       		.byte	0x58
 11003 076f 88000000 		.4byte	.LVL137
 11004 0773 B8000000 		.4byte	.LFE180
 11005 0777 0100     		.2byte	0x1
 11006 0779 50       		.byte	0x50
 11007 077a 00000000 		.4byte	0
 11008 077e 00000000 		.4byte	0
 11009              	.LLST52:
 11010 0782 26000000 		.4byte	.LVL127
 11011 0786 5A000000 		.4byte	.LVL132
 11012 078a 0100     		.2byte	0x1
 11013 078c 5B       		.byte	0x5b
 11014 078d 60000000 		.4byte	.LVL133
 11015 0791 7E000000 		.4byte	.LVL136
ARM GAS  /tmp/ccCxIftT.s 			page 240


 11016 0795 0100     		.2byte	0x1
 11017 0797 5B       		.byte	0x5b
 11018 0798 7E000000 		.4byte	.LVL136
 11019 079c 8E000000 		.4byte	.LVL138
 11020 07a0 0200     		.2byte	0x2
 11021 07a2 30       		.byte	0x30
 11022 07a3 9F       		.byte	0x9f
 11023 07a4 8E000000 		.4byte	.LVL138
 11024 07a8 B8000000 		.4byte	.LFE180
 11025 07ac 0100     		.2byte	0x1
 11026 07ae 5B       		.byte	0x5b
 11027 07af 00000000 		.4byte	0
 11028 07b3 00000000 		.4byte	0
 11029              	.LLST53:
 11030 07b7 3E000000 		.4byte	.LVL129
 11031 07bb 5A000000 		.4byte	.LVL132
 11032 07bf 0100     		.2byte	0x1
 11033 07c1 5E       		.byte	0x5e
 11034 07c2 60000000 		.4byte	.LVL133
 11035 07c6 7D000000 		.4byte	.LVL136-1
 11036 07ca 0100     		.2byte	0x1
 11037 07cc 5E       		.byte	0x5e
 11038 07cd 8E000000 		.4byte	.LVL138
 11039 07d1 B8000000 		.4byte	.LFE180
 11040 07d5 0100     		.2byte	0x1
 11041 07d7 5E       		.byte	0x5e
 11042 07d8 00000000 		.4byte	0
 11043 07dc 00000000 		.4byte	0
 11044              	.LLST54:
 11045 07e0 46000000 		.4byte	.LVL130
 11046 07e4 54000000 		.4byte	.LVL131
 11047 07e8 0E00     		.2byte	0xe
 11048 07ea 7E       		.byte	0x7e
 11049 07eb 00       		.sleb128 0
 11050 07ec 0A       		.byte	0xa
 11051 07ed FFFF     		.2byte	0xffff
 11052 07ef 1A       		.byte	0x1a
 11053 07f0 72       		.byte	0x72
 11054 07f1 00       		.sleb128 0
 11055 07f2 0A       		.byte	0xa
 11056 07f3 FFFF     		.2byte	0xffff
 11057 07f5 1A       		.byte	0x1a
 11058 07f6 2A       		.byte	0x2a
 11059 07f7 9F       		.byte	0x9f
 11060 07f8 60000000 		.4byte	.LVL133
 11061 07fc 6A000000 		.4byte	.LVL134
 11062 0800 0E00     		.2byte	0xe
 11063 0802 7E       		.byte	0x7e
 11064 0803 00       		.sleb128 0
 11065 0804 0A       		.byte	0xa
 11066 0805 FFFF     		.2byte	0xffff
 11067 0807 1A       		.byte	0x1a
 11068 0808 72       		.byte	0x72
 11069 0809 00       		.sleb128 0
 11070 080a 0A       		.byte	0xa
 11071 080b FFFF     		.2byte	0xffff
 11072 080d 1A       		.byte	0x1a
ARM GAS  /tmp/ccCxIftT.s 			page 241


 11073 080e 2A       		.byte	0x2a
 11074 080f 9F       		.byte	0x9f
 11075 0810 8E000000 		.4byte	.LVL138
 11076 0814 B8000000 		.4byte	.LFE180
 11077 0818 0E00     		.2byte	0xe
 11078 081a 7E       		.byte	0x7e
 11079 081b 00       		.sleb128 0
 11080 081c 0A       		.byte	0xa
 11081 081d FFFF     		.2byte	0xffff
 11082 081f 1A       		.byte	0x1a
 11083 0820 72       		.byte	0x72
 11084 0821 00       		.sleb128 0
 11085 0822 0A       		.byte	0xa
 11086 0823 FFFF     		.2byte	0xffff
 11087 0825 1A       		.byte	0x1a
 11088 0826 2A       		.byte	0x2a
 11089 0827 9F       		.byte	0x9f
 11090 0828 00000000 		.4byte	0
 11091 082c 00000000 		.4byte	0
 11092              	.LLST49:
 11093 0830 00000000 		.4byte	.LVL124
 11094 0834 08000000 		.4byte	.LVL125
 11095 0838 0200     		.2byte	0x2
 11096 083a 30       		.byte	0x30
 11097 083b 9F       		.byte	0x9f
 11098 083c 00000000 		.4byte	0
 11099 0840 00000000 		.4byte	0
 11100              	.LLST33:
 11101 0844 00000000 		.4byte	.LVL84
 11102 0848 00000000 		.4byte	.LVL84
 11103 084c 0100     		.2byte	0x1
 11104 084e 50       		.byte	0x50
 11105 084f 00000000 		.4byte	.LVL84
 11106 0853 48000000 		.4byte	.LFE176
 11107 0857 0200     		.2byte	0x2
 11108 0859 30       		.byte	0x30
 11109 085a 9F       		.byte	0x9f
 11110 085b 00000000 		.4byte	0
 11111 085f 00000000 		.4byte	0
 11112              	.LLST32:
 11113 0863 00000000 		.4byte	.LVL81
 11114 0867 04000000 		.4byte	.LVL82
 11115 086b 0100     		.2byte	0x1
 11116 086d 50       		.byte	0x50
 11117 086e 04000000 		.4byte	.LVL82
 11118 0872 08000000 		.4byte	.LFE175
 11119 0876 0400     		.2byte	0x4
 11120 0878 F3       		.byte	0xf3
 11121 0879 01       		.uleb128 0x1
 11122 087a 50       		.byte	0x50
 11123 087b 9F       		.byte	0x9f
 11124 087c 00000000 		.4byte	0
 11125 0880 00000000 		.4byte	0
 11126              	.LLST31:
 11127 0884 00000000 		.4byte	.LVL78
 11128 0888 04000000 		.4byte	.LVL79
 11129 088c 0100     		.2byte	0x1
ARM GAS  /tmp/ccCxIftT.s 			page 242


 11130 088e 50       		.byte	0x50
 11131 088f 04000000 		.4byte	.LVL79
 11132 0893 08000000 		.4byte	.LFE174
 11133 0897 0400     		.2byte	0x4
 11134 0899 F3       		.byte	0xf3
 11135 089a 01       		.uleb128 0x1
 11136 089b 50       		.byte	0x50
 11137 089c 9F       		.byte	0x9f
 11138 089d 00000000 		.4byte	0
 11139 08a1 00000000 		.4byte	0
 11140              	.LLST30:
 11141 08a5 00000000 		.4byte	.LVL75
 11142 08a9 04000000 		.4byte	.LVL76
 11143 08ad 0100     		.2byte	0x1
 11144 08af 50       		.byte	0x50
 11145 08b0 04000000 		.4byte	.LVL76
 11146 08b4 08000000 		.4byte	.LFE173
 11147 08b8 0400     		.2byte	0x4
 11148 08ba F3       		.byte	0xf3
 11149 08bb 01       		.uleb128 0x1
 11150 08bc 50       		.byte	0x50
 11151 08bd 9F       		.byte	0x9f
 11152 08be 00000000 		.4byte	0
 11153 08c2 00000000 		.4byte	0
 11154              	.LLST28:
 11155 08c6 00000000 		.4byte	.LVL71
 11156 08ca 02000000 		.4byte	.LVL72
 11157 08ce 0100     		.2byte	0x1
 11158 08d0 50       		.byte	0x50
 11159 08d1 02000000 		.4byte	.LVL72
 11160 08d5 08000000 		.4byte	.LFE172
 11161 08d9 0400     		.2byte	0x4
 11162 08db F3       		.byte	0xf3
 11163 08dc 01       		.uleb128 0x1
 11164 08dd 50       		.byte	0x50
 11165 08de 9F       		.byte	0x9f
 11166 08df 00000000 		.4byte	0
 11167 08e3 00000000 		.4byte	0
 11168              	.LLST29:
 11169 08e7 00000000 		.4byte	.LVL71
 11170 08eb 04000000 		.4byte	.LVL73
 11171 08ef 0100     		.2byte	0x1
 11172 08f1 51       		.byte	0x51
 11173 08f2 04000000 		.4byte	.LVL73
 11174 08f6 08000000 		.4byte	.LFE172
 11175 08fa 0400     		.2byte	0x4
 11176 08fc F3       		.byte	0xf3
 11177 08fd 01       		.uleb128 0x1
 11178 08fe 51       		.byte	0x51
 11179 08ff 9F       		.byte	0x9f
 11180 0900 00000000 		.4byte	0
 11181 0904 00000000 		.4byte	0
 11182              	.LLST26:
 11183 0908 00000000 		.4byte	.LVL67
 11184 090c 02000000 		.4byte	.LVL68
 11185 0910 0100     		.2byte	0x1
 11186 0912 50       		.byte	0x50
ARM GAS  /tmp/ccCxIftT.s 			page 243


 11187 0913 02000000 		.4byte	.LVL68
 11188 0917 08000000 		.4byte	.LFE171
 11189 091b 0400     		.2byte	0x4
 11190 091d F3       		.byte	0xf3
 11191 091e 01       		.uleb128 0x1
 11192 091f 50       		.byte	0x50
 11193 0920 9F       		.byte	0x9f
 11194 0921 00000000 		.4byte	0
 11195 0925 00000000 		.4byte	0
 11196              	.LLST27:
 11197 0929 00000000 		.4byte	.LVL67
 11198 092d 04000000 		.4byte	.LVL69
 11199 0931 0100     		.2byte	0x1
 11200 0933 51       		.byte	0x51
 11201 0934 04000000 		.4byte	.LVL69
 11202 0938 08000000 		.4byte	.LFE171
 11203 093c 0400     		.2byte	0x4
 11204 093e F3       		.byte	0xf3
 11205 093f 01       		.uleb128 0x1
 11206 0940 51       		.byte	0x51
 11207 0941 9F       		.byte	0x9f
 11208 0942 00000000 		.4byte	0
 11209 0946 00000000 		.4byte	0
 11210              	.LLST25:
 11211 094a 00000000 		.4byte	.LVL62
 11212 094e 05000000 		.4byte	.LVL63-1
 11213 0952 0100     		.2byte	0x1
 11214 0954 50       		.byte	0x50
 11215 0955 05000000 		.4byte	.LVL63-1
 11216 0959 06000000 		.4byte	.LFE167
 11217 095d 0400     		.2byte	0x4
 11218 095f F3       		.byte	0xf3
 11219 0960 01       		.uleb128 0x1
 11220 0961 50       		.byte	0x50
 11221 0962 9F       		.byte	0x9f
 11222 0963 00000000 		.4byte	0
 11223 0967 00000000 		.4byte	0
 11224              	.LLST24:
 11225 096b 00000000 		.4byte	.LVL60
 11226 096f 05000000 		.4byte	.LVL61-1
 11227 0973 0100     		.2byte	0x1
 11228 0975 50       		.byte	0x50
 11229 0976 05000000 		.4byte	.LVL61-1
 11230 097a 06000000 		.4byte	.LFE166
 11231 097e 0400     		.2byte	0x4
 11232 0980 F3       		.byte	0xf3
 11233 0981 01       		.uleb128 0x1
 11234 0982 50       		.byte	0x50
 11235 0983 9F       		.byte	0x9f
 11236 0984 00000000 		.4byte	0
 11237 0988 00000000 		.4byte	0
 11238              	.LLST2:
 11239 098c 00000000 		.4byte	.LVL9
 11240 0990 2C000000 		.4byte	.LVL12
 11241 0994 0100     		.2byte	0x1
 11242 0996 50       		.byte	0x50
 11243 0997 2C000000 		.4byte	.LVL12
ARM GAS  /tmp/ccCxIftT.s 			page 244


 11244 099b 32000000 		.4byte	.LVL13
 11245 099f 0400     		.2byte	0x4
 11246 09a1 F3       		.byte	0xf3
 11247 09a2 01       		.uleb128 0x1
 11248 09a3 50       		.byte	0x50
 11249 09a4 9F       		.byte	0x9f
 11250 09a5 32000000 		.4byte	.LVL13
 11251 09a9 44000000 		.4byte	.LFE161
 11252 09ad 0100     		.2byte	0x1
 11253 09af 50       		.byte	0x50
 11254 09b0 00000000 		.4byte	0
 11255 09b4 00000000 		.4byte	0
 11256              	.LLST3:
 11257 09b8 00000000 		.4byte	.LVL9
 11258 09bc 0C000000 		.4byte	.LVL10
 11259 09c0 0100     		.2byte	0x1
 11260 09c2 51       		.byte	0x51
 11261 09c3 0C000000 		.4byte	.LVL10
 11262 09c7 44000000 		.4byte	.LFE161
 11263 09cb 0400     		.2byte	0x4
 11264 09cd F3       		.byte	0xf3
 11265 09ce 01       		.uleb128 0x1
 11266 09cf 51       		.byte	0x51
 11267 09d0 9F       		.byte	0x9f
 11268 09d1 00000000 		.4byte	0
 11269 09d5 00000000 		.4byte	0
 11270              	.LLST4:
 11271 09d9 00000000 		.4byte	.LVL9
 11272 09dd 31000000 		.4byte	.LVL13-1
 11273 09e1 0100     		.2byte	0x1
 11274 09e3 52       		.byte	0x52
 11275 09e4 31000000 		.4byte	.LVL13-1
 11276 09e8 32000000 		.4byte	.LVL13
 11277 09ec 0400     		.2byte	0x4
 11278 09ee F3       		.byte	0xf3
 11279 09ef 01       		.uleb128 0x1
 11280 09f0 52       		.byte	0x52
 11281 09f1 9F       		.byte	0x9f
 11282 09f2 32000000 		.4byte	.LVL13
 11283 09f6 44000000 		.4byte	.LFE161
 11284 09fa 0100     		.2byte	0x1
 11285 09fc 52       		.byte	0x52
 11286 09fd 00000000 		.4byte	0
 11287 0a01 00000000 		.4byte	0
 11288              	.LLST5:
 11289 0a05 20000000 		.4byte	.LVL11
 11290 0a09 31000000 		.4byte	.LVL13-1
 11291 0a0d 0100     		.2byte	0x1
 11292 0a0f 52       		.byte	0x52
 11293 0a10 31000000 		.4byte	.LVL13-1
 11294 0a14 32000000 		.4byte	.LVL13
 11295 0a18 0400     		.2byte	0x4
 11296 0a1a F3       		.byte	0xf3
 11297 0a1b 01       		.uleb128 0x1
 11298 0a1c 52       		.byte	0x52
 11299 0a1d 9F       		.byte	0x9f
 11300 0a1e 32000000 		.4byte	.LVL13
ARM GAS  /tmp/ccCxIftT.s 			page 245


 11301 0a22 44000000 		.4byte	.LFE161
 11302 0a26 0100     		.2byte	0x1
 11303 0a28 52       		.byte	0x52
 11304 0a29 00000000 		.4byte	0
 11305 0a2d 00000000 		.4byte	0
 11306              	.LLST0:
 11307 0a31 0E000000 		.4byte	.LVL1
 11308 0a35 11000000 		.4byte	.LVL2-1
 11309 0a39 0100     		.2byte	0x1
 11310 0a3b 50       		.byte	0x50
 11311 0a3c 00000000 		.4byte	0
 11312 0a40 00000000 		.4byte	0
 11313              	.LLST1:
 11314 0a44 00000000 		.4byte	.LVL7
 11315 0a48 19000000 		.4byte	.LVL8-1
 11316 0a4c 0100     		.2byte	0x1
 11317 0a4e 50       		.byte	0x50
 11318 0a4f 19000000 		.4byte	.LVL8-1
 11319 0a53 34000000 		.4byte	.LFE200
 11320 0a57 0400     		.2byte	0x4
 11321 0a59 F3       		.byte	0xf3
 11322 0a5a 01       		.uleb128 0x1
 11323 0a5b 50       		.byte	0x50
 11324 0a5c 9F       		.byte	0x9f
 11325 0a5d 00000000 		.4byte	0
 11326 0a61 00000000 		.4byte	0
 11327              	.LLST6:
 11328 0a65 00000000 		.4byte	.LVL14
 11329 0a69 34000000 		.4byte	.LVL21
 11330 0a6d 0100     		.2byte	0x1
 11331 0a6f 50       		.byte	0x50
 11332 0a70 34000000 		.4byte	.LVL21
 11333 0a74 3A000000 		.4byte	.LVL22
 11334 0a78 0400     		.2byte	0x4
 11335 0a7a F3       		.byte	0xf3
 11336 0a7b 01       		.uleb128 0x1
 11337 0a7c 50       		.byte	0x50
 11338 0a7d 9F       		.byte	0x9f
 11339 0a7e 3A000000 		.4byte	.LVL22
 11340 0a82 64000000 		.4byte	.LFE201
 11341 0a86 0100     		.2byte	0x1
 11342 0a88 50       		.byte	0x50
 11343 0a89 00000000 		.4byte	0
 11344 0a8d 00000000 		.4byte	0
 11345              	.LLST7:
 11346 0a91 00000000 		.4byte	.LVL14
 11347 0a95 1C000000 		.4byte	.LVL18
 11348 0a99 0100     		.2byte	0x1
 11349 0a9b 51       		.byte	0x51
 11350 0a9c 1C000000 		.4byte	.LVL18
 11351 0aa0 3E000000 		.4byte	.LVL23
 11352 0aa4 0400     		.2byte	0x4
 11353 0aa6 F3       		.byte	0xf3
 11354 0aa7 01       		.uleb128 0x1
 11355 0aa8 51       		.byte	0x51
 11356 0aa9 9F       		.byte	0x9f
 11357 0aaa 3E000000 		.4byte	.LVL23
ARM GAS  /tmp/ccCxIftT.s 			page 246


 11358 0aae 42000000 		.4byte	.LVL24
 11359 0ab2 0100     		.2byte	0x1
 11360 0ab4 51       		.byte	0x51
 11361 0ab5 42000000 		.4byte	.LVL24
 11362 0ab9 64000000 		.4byte	.LFE201
 11363 0abd 0400     		.2byte	0x4
 11364 0abf F3       		.byte	0xf3
 11365 0ac0 01       		.uleb128 0x1
 11366 0ac1 51       		.byte	0x51
 11367 0ac2 9F       		.byte	0x9f
 11368 0ac3 00000000 		.4byte	0
 11369 0ac7 00000000 		.4byte	0
 11370              	.LLST8:
 11371 0acb 20000000 		.4byte	.LVL19
 11372 0acf 3E000000 		.4byte	.LVL23
 11373 0ad3 0300     		.2byte	0x3
 11374 0ad5 09       		.byte	0x9
 11375 0ad6 83       		.byte	0x83
 11376 0ad7 9F       		.byte	0x9f
 11377 0ad8 00000000 		.4byte	0
 11378 0adc 00000000 		.4byte	0
 11379              	.LLST9:
 11380 0ae0 06000000 		.4byte	.LVL15
 11381 0ae4 12000000 		.4byte	.LVL16
 11382 0ae8 0800     		.2byte	0x8
 11383 0aea 75       		.byte	0x75
 11384 0aeb 00       		.sleb128 0
 11385 0aec 30       		.byte	0x30
 11386 0aed 29       		.byte	0x29
 11387 0aee 08       		.byte	0x8
 11388 0aef FF       		.byte	0xff
 11389 0af0 1A       		.byte	0x1a
 11390 0af1 9F       		.byte	0x9f
 11391 0af2 00000000 		.4byte	0
 11392 0af6 00000000 		.4byte	0
 11393              	.LLST10:
 11394 0afa 1A000000 		.4byte	.LVL17
 11395 0afe 20000000 		.4byte	.LVL19
 11396 0b02 0800     		.2byte	0x8
 11397 0b04 75       		.byte	0x75
 11398 0b05 00       		.sleb128 0
 11399 0b06 30       		.byte	0x30
 11400 0b07 29       		.byte	0x29
 11401 0b08 08       		.byte	0x8
 11402 0b09 FF       		.byte	0xff
 11403 0b0a 1A       		.byte	0x1a
 11404 0b0b 9F       		.byte	0x9f
 11405 0b0c 44000000 		.4byte	.LVL25
 11406 0b10 64000000 		.4byte	.LFE201
 11407 0b14 0800     		.2byte	0x8
 11408 0b16 75       		.byte	0x75
 11409 0b17 00       		.sleb128 0
 11410 0b18 30       		.byte	0x30
 11411 0b19 29       		.byte	0x29
 11412 0b1a 08       		.byte	0x8
 11413 0b1b FF       		.byte	0xff
 11414 0b1c 1A       		.byte	0x1a
ARM GAS  /tmp/ccCxIftT.s 			page 247


 11415 0b1d 9F       		.byte	0x9f
 11416 0b1e 00000000 		.4byte	0
 11417 0b22 00000000 		.4byte	0
 11418              	.LLST11:
 11419 0b26 20000000 		.4byte	.LVL19
 11420 0b2a 3E000000 		.4byte	.LVL23
 11421 0b2e 0200     		.2byte	0x2
 11422 0b30 30       		.byte	0x30
 11423 0b31 9F       		.byte	0x9f
 11424 0b32 00000000 		.4byte	0
 11425 0b36 00000000 		.4byte	0
 11426              	.LLST13:
 11427 0b3a 26000000 		.4byte	.LVL20
 11428 0b3e 34000000 		.4byte	.LVL21
 11429 0b42 0100     		.2byte	0x1
 11430 0b44 50       		.byte	0x50
 11431 0b45 00000000 		.4byte	0
 11432 0b49 00000000 		.4byte	0
 11433              	.LLST14:
 11434 0b4d 4C000000 		.4byte	.LVL32
 11435 0b51 66000000 		.4byte	.LVL33
 11436 0b55 0100     		.2byte	0x1
 11437 0b57 54       		.byte	0x54
 11438 0b58 66000000 		.4byte	.LVL33
 11439 0b5c 6C000000 		.4byte	.LVL34
 11440 0b60 0100     		.2byte	0x1
 11441 0b62 57       		.byte	0x57
 11442 0b63 BE000000 		.4byte	.LVL43
 11443 0b67 C6000000 		.4byte	.LVL44
 11444 0b6b 0700     		.2byte	0x7
 11445 0b6d 74       		.byte	0x74
 11446 0b6e 00       		.sleb128 0
 11447 0b6f 48       		.byte	0x48
 11448 0b70 24       		.byte	0x24
 11449 0b71 30       		.byte	0x30
 11450 0b72 29       		.byte	0x29
 11451 0b73 9F       		.byte	0x9f
 11452 0b74 CE000000 		.4byte	.LVL45
 11453 0b78 0E010000 		.4byte	.LVL50
 11454 0b7c 0100     		.2byte	0x1
 11455 0b7e 54       		.byte	0x54
 11456 0b7f 00000000 		.4byte	0
 11457 0b83 00000000 		.4byte	0
 11458              	.LLST15:
 11459 0b87 82000000 		.4byte	.LVL36
 11460 0b8b B4000000 		.4byte	.LVL41
 11461 0b8f 0100     		.2byte	0x1
 11462 0b91 55       		.byte	0x55
 11463 0b92 C6000000 		.4byte	.LVL44
 11464 0b96 CE000000 		.4byte	.LVL45
 11465 0b9a 0100     		.2byte	0x1
 11466 0b9c 55       		.byte	0x55
 11467 0b9d 1A010000 		.4byte	.LVL51
 11468 0ba1 4C010000 		.4byte	.LFE197
 11469 0ba5 0100     		.2byte	0x1
 11470 0ba7 55       		.byte	0x55
 11471 0ba8 00000000 		.4byte	0
ARM GAS  /tmp/ccCxIftT.s 			page 248


 11472 0bac 00000000 		.4byte	0
 11473              	.LLST16:
 11474 0bb0 98000000 		.4byte	.LVL39
 11475 0bb4 B4000000 		.4byte	.LVL41
 11476 0bb8 0300     		.2byte	0x3
 11477 0bba 09       		.byte	0x9
 11478 0bbb 81       		.byte	0x81
 11479 0bbc 9F       		.byte	0x9f
 11480 0bbd 00000000 		.4byte	0
 11481 0bc1 00000000 		.4byte	0
 11482              	.LLST17:
 11483 0bc5 2E000000 		.4byte	.LVL30
 11484 0bc9 42000000 		.4byte	.LVL31
 11485 0bcd 0800     		.2byte	0x8
 11486 0bcf 72       		.byte	0x72
 11487 0bd0 00       		.sleb128 0
 11488 0bd1 30       		.byte	0x30
 11489 0bd2 29       		.byte	0x29
 11490 0bd3 08       		.byte	0x8
 11491 0bd4 FF       		.byte	0xff
 11492 0bd5 1A       		.byte	0x1a
 11493 0bd6 9F       		.byte	0x9f
 11494 0bd7 00000000 		.4byte	0
 11495 0bdb 00000000 		.4byte	0
 11496              	.LLST18:
 11497 0bdf 00000000 		.4byte	.LVL54
 11498 0be3 25000000 		.4byte	.LVL56-1
 11499 0be7 0100     		.2byte	0x1
 11500 0be9 50       		.byte	0x50
 11501 0bea 25000000 		.4byte	.LVL56-1
 11502 0bee 26000000 		.4byte	.LVL56
 11503 0bf2 0400     		.2byte	0x4
 11504 0bf4 F3       		.byte	0xf3
 11505 0bf5 01       		.uleb128 0x1
 11506 0bf6 50       		.byte	0x50
 11507 0bf7 9F       		.byte	0x9f
 11508 0bf8 26000000 		.4byte	.LVL56
 11509 0bfc 2B000000 		.4byte	.LVL58-1
 11510 0c00 0100     		.2byte	0x1
 11511 0c02 50       		.byte	0x50
 11512 0c03 2B000000 		.4byte	.LVL58-1
 11513 0c07 44000000 		.4byte	.LFE164
 11514 0c0b 0400     		.2byte	0x4
 11515 0c0d F3       		.byte	0xf3
 11516 0c0e 01       		.uleb128 0x1
 11517 0c0f 50       		.byte	0x50
 11518 0c10 9F       		.byte	0x9f
 11519 0c11 00000000 		.4byte	0
 11520 0c15 00000000 		.4byte	0
 11521              	.LLST19:
 11522 0c19 00000000 		.4byte	.LVL54
 11523 0c1d 25000000 		.4byte	.LVL56-1
 11524 0c21 0100     		.2byte	0x1
 11525 0c23 51       		.byte	0x51
 11526 0c24 25000000 		.4byte	.LVL56-1
 11527 0c28 26000000 		.4byte	.LVL56
 11528 0c2c 0400     		.2byte	0x4
ARM GAS  /tmp/ccCxIftT.s 			page 249


 11529 0c2e F3       		.byte	0xf3
 11530 0c2f 01       		.uleb128 0x1
 11531 0c30 51       		.byte	0x51
 11532 0c31 9F       		.byte	0x9f
 11533 0c32 26000000 		.4byte	.LVL56
 11534 0c36 2B000000 		.4byte	.LVL58-1
 11535 0c3a 0100     		.2byte	0x1
 11536 0c3c 51       		.byte	0x51
 11537 0c3d 2B000000 		.4byte	.LVL58-1
 11538 0c41 44000000 		.4byte	.LFE164
 11539 0c45 0400     		.2byte	0x4
 11540 0c47 F3       		.byte	0xf3
 11541 0c48 01       		.uleb128 0x1
 11542 0c49 51       		.byte	0x51
 11543 0c4a 9F       		.byte	0x9f
 11544 0c4b 00000000 		.4byte	0
 11545 0c4f 00000000 		.4byte	0
 11546              	.LLST20:
 11547 0c53 00000000 		.4byte	.LVL54
 11548 0c57 25000000 		.4byte	.LVL56-1
 11549 0c5b 0100     		.2byte	0x1
 11550 0c5d 52       		.byte	0x52
 11551 0c5e 25000000 		.4byte	.LVL56-1
 11552 0c62 26000000 		.4byte	.LVL56
 11553 0c66 0400     		.2byte	0x4
 11554 0c68 F3       		.byte	0xf3
 11555 0c69 01       		.uleb128 0x1
 11556 0c6a 52       		.byte	0x52
 11557 0c6b 9F       		.byte	0x9f
 11558 0c6c 26000000 		.4byte	.LVL56
 11559 0c70 2B000000 		.4byte	.LVL58-1
 11560 0c74 0100     		.2byte	0x1
 11561 0c76 52       		.byte	0x52
 11562 0c77 2B000000 		.4byte	.LVL58-1
 11563 0c7b 44000000 		.4byte	.LFE164
 11564 0c7f 0400     		.2byte	0x4
 11565 0c81 F3       		.byte	0xf3
 11566 0c82 01       		.uleb128 0x1
 11567 0c83 52       		.byte	0x52
 11568 0c84 9F       		.byte	0x9f
 11569 0c85 00000000 		.4byte	0
 11570 0c89 00000000 		.4byte	0
 11571              	.LLST21:
 11572 0c8d 02000000 		.4byte	.LVL55
 11573 0c91 26000000 		.4byte	.LVL56
 11574 0c95 0200     		.2byte	0x2
 11575 0c97 30       		.byte	0x30
 11576 0c98 9F       		.byte	0x9f
 11577 0c99 28000000 		.4byte	.LVL57
 11578 0c9d 44000000 		.4byte	.LFE164
 11579 0ca1 0200     		.2byte	0x2
 11580 0ca3 30       		.byte	0x30
 11581 0ca4 9F       		.byte	0x9f
 11582 0ca5 00000000 		.4byte	0
 11583 0ca9 00000000 		.4byte	0
 11584              	.LLST22:
 11585 0cad 02000000 		.4byte	.LVL55
ARM GAS  /tmp/ccCxIftT.s 			page 250


 11586 0cb1 26000000 		.4byte	.LVL56
 11587 0cb5 0400     		.2byte	0x4
 11588 0cb7 F3       		.byte	0xf3
 11589 0cb8 01       		.uleb128 0x1
 11590 0cb9 52       		.byte	0x52
 11591 0cba 9F       		.byte	0x9f
 11592 0cbb 28000000 		.4byte	.LVL57
 11593 0cbf 44000000 		.4byte	.LFE164
 11594 0cc3 0400     		.2byte	0x4
 11595 0cc5 F3       		.byte	0xf3
 11596 0cc6 01       		.uleb128 0x1
 11597 0cc7 52       		.byte	0x52
 11598 0cc8 9F       		.byte	0x9f
 11599 0cc9 00000000 		.4byte	0
 11600 0ccd 00000000 		.4byte	0
 11601              	.LLST23:
 11602 0cd1 02000000 		.4byte	.LVL55
 11603 0cd5 25000000 		.4byte	.LVL56-1
 11604 0cd9 0100     		.2byte	0x1
 11605 0cdb 51       		.byte	0x51
 11606 0cdc 25000000 		.4byte	.LVL56-1
 11607 0ce0 26000000 		.4byte	.LVL56
 11608 0ce4 0400     		.2byte	0x4
 11609 0ce6 F3       		.byte	0xf3
 11610 0ce7 01       		.uleb128 0x1
 11611 0ce8 51       		.byte	0x51
 11612 0ce9 9F       		.byte	0x9f
 11613 0cea 28000000 		.4byte	.LVL57
 11614 0cee 2B000000 		.4byte	.LVL58-1
 11615 0cf2 0100     		.2byte	0x1
 11616 0cf4 51       		.byte	0x51
 11617 0cf5 2B000000 		.4byte	.LVL58-1
 11618 0cf9 44000000 		.4byte	.LFE164
 11619 0cfd 0400     		.2byte	0x4
 11620 0cff F3       		.byte	0xf3
 11621 0d00 01       		.uleb128 0x1
 11622 0d01 51       		.byte	0x51
 11623 0d02 9F       		.byte	0x9f
 11624 0d03 00000000 		.4byte	0
 11625 0d07 00000000 		.4byte	0
 11626              	.LLST34:
 11627 0d0b 1C000000 		.4byte	.LVL92
 11628 0d0f 36000000 		.4byte	.LVL93
 11629 0d13 0100     		.2byte	0x1
 11630 0d15 54       		.byte	0x54
 11631 0d16 3E000000 		.4byte	.LVL95
 11632 0d1a 5C000000 		.4byte	.LVL100
 11633 0d1e 0100     		.2byte	0x1
 11634 0d20 54       		.byte	0x54
 11635 0d21 84000000 		.4byte	.LVL103
 11636 0d25 B4000000 		.4byte	.LFE204
 11637 0d29 0100     		.2byte	0x1
 11638 0d2b 54       		.byte	0x54
 11639 0d2c 00000000 		.4byte	0
 11640 0d30 00000000 		.4byte	0
 11641              	.LLST35:
 11642 0d34 58000000 		.4byte	.LVL99
ARM GAS  /tmp/ccCxIftT.s 			page 251


 11643 0d38 76000000 		.4byte	.LVL102
 11644 0d3c 0200     		.2byte	0x2
 11645 0d3e 32       		.byte	0x32
 11646 0d3f 9F       		.byte	0x9f
 11647 0d40 00000000 		.4byte	0
 11648 0d44 00000000 		.4byte	0
 11649              	.LLST36:
 11650 0d48 08000000 		.4byte	.LVL90
 11651 0d4c 18000000 		.4byte	.LVL91
 11652 0d50 0800     		.2byte	0x8
 11653 0d52 70       		.byte	0x70
 11654 0d53 00       		.sleb128 0
 11655 0d54 30       		.byte	0x30
 11656 0d55 29       		.byte	0x29
 11657 0d56 08       		.byte	0x8
 11658 0d57 FF       		.byte	0xff
 11659 0d58 1A       		.byte	0x1a
 11660 0d59 9F       		.byte	0x9f
 11661 0d5a 00000000 		.4byte	0
 11662 0d5e 00000000 		.4byte	0
 11663              	.LLST37:
 11664 0d62 36000000 		.4byte	.LVL93
 11665 0d66 3A000000 		.4byte	.LVL94
 11666 0d6a 0800     		.2byte	0x8
 11667 0d6c 70       		.byte	0x70
 11668 0d6d 00       		.sleb128 0
 11669 0d6e 30       		.byte	0x30
 11670 0d6f 29       		.byte	0x29
 11671 0d70 08       		.byte	0x8
 11672 0d71 FF       		.byte	0xff
 11673 0d72 1A       		.byte	0x1a
 11674 0d73 9F       		.byte	0x9f
 11675 0d74 76000000 		.4byte	.LVL102
 11676 0d78 84000000 		.4byte	.LVL103
 11677 0d7c 0800     		.2byte	0x8
 11678 0d7e 70       		.byte	0x70
 11679 0d7f 00       		.sleb128 0
 11680 0d80 30       		.byte	0x30
 11681 0d81 29       		.byte	0x29
 11682 0d82 08       		.byte	0x8
 11683 0d83 FF       		.byte	0xff
 11684 0d84 1A       		.byte	0x1a
 11685 0d85 9F       		.byte	0x9f
 11686 0d86 00000000 		.4byte	0
 11687 0d8a 00000000 		.4byte	0
 11688              	.LLST38:
 11689 0d8e 76000000 		.4byte	.LVL102
 11690 0d92 84000000 		.4byte	.LVL103
 11691 0d96 0800     		.2byte	0x8
 11692 0d98 70       		.byte	0x70
 11693 0d99 00       		.sleb128 0
 11694 0d9a 30       		.byte	0x30
 11695 0d9b 29       		.byte	0x29
 11696 0d9c 08       		.byte	0x8
 11697 0d9d FF       		.byte	0xff
 11698 0d9e 1A       		.byte	0x1a
 11699 0d9f 9F       		.byte	0x9f
ARM GAS  /tmp/ccCxIftT.s 			page 252


 11700 0da0 00000000 		.4byte	0
 11701 0da4 00000000 		.4byte	0
 11702              	.LLST39:
 11703 0da8 4E000000 		.4byte	.LVL96
 11704 0dac 50000000 		.4byte	.LVL97
 11705 0db0 0800     		.2byte	0x8
 11706 0db2 70       		.byte	0x70
 11707 0db3 00       		.sleb128 0
 11708 0db4 30       		.byte	0x30
 11709 0db5 29       		.byte	0x29
 11710 0db6 08       		.byte	0x8
 11711 0db7 FF       		.byte	0xff
 11712 0db8 1A       		.byte	0x1a
 11713 0db9 9F       		.byte	0x9f
 11714 0dba 8C000000 		.4byte	.LVL105
 11715 0dbe B4000000 		.4byte	.LFE204
 11716 0dc2 0800     		.2byte	0x8
 11717 0dc4 70       		.byte	0x70
 11718 0dc5 00       		.sleb128 0
 11719 0dc6 30       		.byte	0x30
 11720 0dc7 29       		.byte	0x29
 11721 0dc8 08       		.byte	0x8
 11722 0dc9 FF       		.byte	0xff
 11723 0dca 1A       		.byte	0x1a
 11724 0dcb 9F       		.byte	0x9f
 11725 0dcc 00000000 		.4byte	0
 11726 0dd0 00000000 		.4byte	0
 11727              	.LLST40:
 11728 0dd4 50000000 		.4byte	.LVL97
 11729 0dd8 56000000 		.4byte	.LVL98
 11730 0ddc 0200     		.2byte	0x2
 11731 0dde 30       		.byte	0x30
 11732 0ddf 9F       		.byte	0x9f
 11733 0de0 00000000 		.4byte	0
 11734 0de4 00000000 		.4byte	0
 11735              	.LLST41:
 11736 0de8 00000000 		.4byte	.LVL109
 11737 0dec 27000000 		.4byte	.LVL114-1
 11738 0df0 0100     		.2byte	0x1
 11739 0df2 50       		.byte	0x50
 11740 0df3 27000000 		.4byte	.LVL114-1
 11741 0df7 28000000 		.4byte	.LVL114
 11742 0dfb 0400     		.2byte	0x4
 11743 0dfd F3       		.byte	0xf3
 11744 0dfe 01       		.uleb128 0x1
 11745 0dff 50       		.byte	0x50
 11746 0e00 9F       		.byte	0x9f
 11747 0e01 28000000 		.4byte	.LVL114
 11748 0e05 2A000000 		.4byte	.LVL115
 11749 0e09 0100     		.2byte	0x1
 11750 0e0b 50       		.byte	0x50
 11751 0e0c 2A000000 		.4byte	.LVL115
 11752 0e10 46000000 		.4byte	.LVL120
 11753 0e14 0400     		.2byte	0x4
 11754 0e16 F3       		.byte	0xf3
 11755 0e17 01       		.uleb128 0x1
 11756 0e18 50       		.byte	0x50
ARM GAS  /tmp/ccCxIftT.s 			page 253


 11757 0e19 9F       		.byte	0x9f
 11758 0e1a 46000000 		.4byte	.LVL120
 11759 0e1e 5C000000 		.4byte	.LFE163
 11760 0e22 0100     		.2byte	0x1
 11761 0e24 50       		.byte	0x50
 11762 0e25 00000000 		.4byte	0
 11763 0e29 00000000 		.4byte	0
 11764              	.LLST42:
 11765 0e2d 00000000 		.4byte	.LVL109
 11766 0e31 14000000 		.4byte	.LVL112
 11767 0e35 0100     		.2byte	0x1
 11768 0e37 51       		.byte	0x51
 11769 0e38 14000000 		.4byte	.LVL112
 11770 0e3c 28000000 		.4byte	.LVL114
 11771 0e40 0400     		.2byte	0x4
 11772 0e42 F3       		.byte	0xf3
 11773 0e43 01       		.uleb128 0x1
 11774 0e44 51       		.byte	0x51
 11775 0e45 9F       		.byte	0x9f
 11776 0e46 28000000 		.4byte	.LVL114
 11777 0e4a 30000000 		.4byte	.LVL117
 11778 0e4e 0100     		.2byte	0x1
 11779 0e50 51       		.byte	0x51
 11780 0e51 30000000 		.4byte	.LVL117
 11781 0e55 46000000 		.4byte	.LVL120
 11782 0e59 0400     		.2byte	0x4
 11783 0e5b F3       		.byte	0xf3
 11784 0e5c 01       		.uleb128 0x1
 11785 0e5d 51       		.byte	0x51
 11786 0e5e 9F       		.byte	0x9f
 11787 0e5f 46000000 		.4byte	.LVL120
 11788 0e63 5C000000 		.4byte	.LFE163
 11789 0e67 0100     		.2byte	0x1
 11790 0e69 51       		.byte	0x51
 11791 0e6a 00000000 		.4byte	0
 11792 0e6e 00000000 		.4byte	0
 11793              	.LLST43:
 11794 0e72 00000000 		.4byte	.LVL109
 11795 0e76 18000000 		.4byte	.LVL113
 11796 0e7a 0100     		.2byte	0x1
 11797 0e7c 52       		.byte	0x52
 11798 0e7d 18000000 		.4byte	.LVL113
 11799 0e81 28000000 		.4byte	.LVL114
 11800 0e85 0400     		.2byte	0x4
 11801 0e87 F3       		.byte	0xf3
 11802 0e88 01       		.uleb128 0x1
 11803 0e89 52       		.byte	0x52
 11804 0e8a 9F       		.byte	0x9f
 11805 0e8b 28000000 		.4byte	.LVL114
 11806 0e8f 2C000000 		.4byte	.LVL116
 11807 0e93 0100     		.2byte	0x1
 11808 0e95 52       		.byte	0x52
 11809 0e96 2C000000 		.4byte	.LVL116
 11810 0e9a 46000000 		.4byte	.LVL120
 11811 0e9e 0400     		.2byte	0x4
 11812 0ea0 F3       		.byte	0xf3
 11813 0ea1 01       		.uleb128 0x1
ARM GAS  /tmp/ccCxIftT.s 			page 254


 11814 0ea2 52       		.byte	0x52
 11815 0ea3 9F       		.byte	0x9f
 11816 0ea4 46000000 		.4byte	.LVL120
 11817 0ea8 5C000000 		.4byte	.LFE163
 11818 0eac 0100     		.2byte	0x1
 11819 0eae 52       		.byte	0x52
 11820 0eaf 00000000 		.4byte	0
 11821 0eb3 00000000 		.4byte	0
 11822              	.LLST44:
 11823 0eb7 02000000 		.4byte	.LVL110
 11824 0ebb 46000000 		.4byte	.LVL120
 11825 0ebf 0200     		.2byte	0x2
 11826 0ec1 30       		.byte	0x30
 11827 0ec2 9F       		.byte	0x9f
 11828 0ec3 00000000 		.4byte	0
 11829 0ec7 00000000 		.4byte	0
 11830              	.LLST45:
 11831 0ecb 02000000 		.4byte	.LVL110
 11832 0ecf 18000000 		.4byte	.LVL113
 11833 0ed3 0100     		.2byte	0x1
 11834 0ed5 52       		.byte	0x52
 11835 0ed6 18000000 		.4byte	.LVL113
 11836 0eda 28000000 		.4byte	.LVL114
 11837 0ede 0400     		.2byte	0x4
 11838 0ee0 F3       		.byte	0xf3
 11839 0ee1 01       		.uleb128 0x1
 11840 0ee2 52       		.byte	0x52
 11841 0ee3 9F       		.byte	0x9f
 11842 0ee4 28000000 		.4byte	.LVL114
 11843 0ee8 2C000000 		.4byte	.LVL116
 11844 0eec 0100     		.2byte	0x1
 11845 0eee 52       		.byte	0x52
 11846 0eef 2C000000 		.4byte	.LVL116
 11847 0ef3 46000000 		.4byte	.LVL120
 11848 0ef7 0400     		.2byte	0x4
 11849 0ef9 F3       		.byte	0xf3
 11850 0efa 01       		.uleb128 0x1
 11851 0efb 52       		.byte	0x52
 11852 0efc 9F       		.byte	0x9f
 11853 0efd 00000000 		.4byte	0
 11854 0f01 00000000 		.4byte	0
 11855              	.LLST46:
 11856 0f05 02000000 		.4byte	.LVL110
 11857 0f09 14000000 		.4byte	.LVL112
 11858 0f0d 0100     		.2byte	0x1
 11859 0f0f 51       		.byte	0x51
 11860 0f10 14000000 		.4byte	.LVL112
 11861 0f14 28000000 		.4byte	.LVL114
 11862 0f18 0400     		.2byte	0x4
 11863 0f1a F3       		.byte	0xf3
 11864 0f1b 01       		.uleb128 0x1
 11865 0f1c 51       		.byte	0x51
 11866 0f1d 9F       		.byte	0x9f
 11867 0f1e 28000000 		.4byte	.LVL114
 11868 0f22 30000000 		.4byte	.LVL117
 11869 0f26 0100     		.2byte	0x1
 11870 0f28 51       		.byte	0x51
ARM GAS  /tmp/ccCxIftT.s 			page 255


 11871 0f29 30000000 		.4byte	.LVL117
 11872 0f2d 46000000 		.4byte	.LVL120
 11873 0f31 0400     		.2byte	0x4
 11874 0f33 F3       		.byte	0xf3
 11875 0f34 01       		.uleb128 0x1
 11876 0f35 51       		.byte	0x51
 11877 0f36 9F       		.byte	0x9f
 11878 0f37 00000000 		.4byte	0
 11879 0f3b 00000000 		.4byte	0
 11880              	.LLST47:
 11881 0f3f 10000000 		.4byte	.LVL111
 11882 0f43 27000000 		.4byte	.LVL114-1
 11883 0f47 0100     		.2byte	0x1
 11884 0f49 53       		.byte	0x53
 11885 0f4a 28000000 		.4byte	.LVL114
 11886 0f4e 36000000 		.4byte	.LVL118
 11887 0f52 0100     		.2byte	0x1
 11888 0f54 53       		.byte	0x53
 11889 0f55 00000000 		.4byte	0
 11890 0f59 00000000 		.4byte	0
 11891              	.LLST48:
 11892 0f5d 00000000 		.4byte	.LVL122
 11893 0f61 05000000 		.4byte	.LVL123-1
 11894 0f65 0100     		.2byte	0x1
 11895 0f67 50       		.byte	0x50
 11896 0f68 05000000 		.4byte	.LVL123-1
 11897 0f6c 0E000000 		.4byte	.LFE178
 11898 0f70 0400     		.2byte	0x4
 11899 0f72 F3       		.byte	0xf3
 11900 0f73 01       		.uleb128 0x1
 11901 0f74 50       		.byte	0x50
 11902 0f75 9F       		.byte	0x9f
 11903 0f76 00000000 		.4byte	0
 11904 0f7a 00000000 		.4byte	0
 11905              	.LLST79:
 11906 0f7e 00000000 		.4byte	.LVL202
 11907 0f82 05000000 		.4byte	.LVL203-1
 11908 0f86 0100     		.2byte	0x1
 11909 0f88 50       		.byte	0x50
 11910 0f89 05000000 		.4byte	.LVL203-1
 11911 0f8d 0E000000 		.4byte	.LFE188
 11912 0f91 0400     		.2byte	0x4
 11913 0f93 F3       		.byte	0xf3
 11914 0f94 01       		.uleb128 0x1
 11915 0f95 50       		.byte	0x50
 11916 0f96 9F       		.byte	0x9f
 11917 0f97 00000000 		.4byte	0
 11918 0f9b 00000000 		.4byte	0
 11919              		.section	.debug_aranges,"",%progbits
 11920 0000 6C010000 		.4byte	0x16c
 11921 0004 0200     		.2byte	0x2
 11922 0006 00000000 		.4byte	.Ldebug_info0
 11923 000a 04       		.byte	0x4
 11924 000b 00       		.byte	0
 11925 000c 0000     		.2byte	0
 11926 000e 0000     		.2byte	0
 11927 0010 00000000 		.4byte	.LFB151
ARM GAS  /tmp/ccCxIftT.s 			page 256


 11928 0014 10000000 		.4byte	.LFE151-.LFB151
 11929 0018 00000000 		.4byte	.LFB154
 11930 001c 04000000 		.4byte	.LFE154-.LFB154
 11931 0020 00000000 		.4byte	.LFB155
 11932 0024 04000000 		.4byte	.LFE155-.LFB155
 11933 0028 00000000 		.4byte	.LFB158
 11934 002c 02000000 		.4byte	.LFE158-.LFB158
 11935 0030 00000000 		.4byte	.LFB152
 11936 0034 24000000 		.4byte	.LFE152-.LFB152
 11937 0038 00000000 		.4byte	.LFB153
 11938 003c 68000000 		.4byte	.LFE153-.LFB153
 11939 0040 00000000 		.4byte	.LFB149
 11940 0044 5C000000 		.4byte	.LFE149-.LFB149
 11941 0048 00000000 		.4byte	.LFB200
 11942 004c 34000000 		.4byte	.LFE200-.LFB200
 11943 0050 00000000 		.4byte	.LFB161
 11944 0054 44000000 		.4byte	.LFE161-.LFB161
 11945 0058 00000000 		.4byte	.LFB201
 11946 005c 64000000 		.4byte	.LFE201-.LFB201
 11947 0060 00000000 		.4byte	.LFB197
 11948 0064 4C010000 		.4byte	.LFE197-.LFB197
 11949 0068 00000000 		.4byte	.LFB156
 11950 006c 04000000 		.4byte	.LFE156-.LFB156
 11951 0070 00000000 		.4byte	.LFB164
 11952 0074 44000000 		.4byte	.LFE164-.LFB164
 11953 0078 00000000 		.4byte	.LFB166
 11954 007c 06000000 		.4byte	.LFE166-.LFB166
 11955 0080 00000000 		.4byte	.LFB167
 11956 0084 06000000 		.4byte	.LFE167-.LFB167
 11957 0088 00000000 		.4byte	.LFB168
 11958 008c 08000000 		.4byte	.LFE168-.LFB168
 11959 0090 00000000 		.4byte	.LFB169
 11960 0094 08000000 		.4byte	.LFE169-.LFB169
 11961 0098 00000000 		.4byte	.LFB170
 11962 009c 08000000 		.4byte	.LFE170-.LFB170
 11963 00a0 00000000 		.4byte	.LFB171
 11964 00a4 08000000 		.4byte	.LFE171-.LFB171
 11965 00a8 00000000 		.4byte	.LFB172
 11966 00ac 08000000 		.4byte	.LFE172-.LFB172
 11967 00b0 00000000 		.4byte	.LFB173
 11968 00b4 08000000 		.4byte	.LFE173-.LFB173
 11969 00b8 00000000 		.4byte	.LFB174
 11970 00bc 08000000 		.4byte	.LFE174-.LFB174
 11971 00c0 00000000 		.4byte	.LFB175
 11972 00c4 08000000 		.4byte	.LFE175-.LFB175
 11973 00c8 00000000 		.4byte	.LFB176
 11974 00cc 48000000 		.4byte	.LFE176-.LFB176
 11975 00d0 00000000 		.4byte	.LFB204
 11976 00d4 B4000000 		.4byte	.LFE204-.LFB204
 11977 00d8 00000000 		.4byte	.LFB150
 11978 00dc 80000000 		.4byte	.LFE150-.LFB150
 11979 00e0 00000000 		.4byte	.LFB163
 11980 00e4 5C000000 		.4byte	.LFE163-.LFB163
 11981 00e8 00000000 		.4byte	.LFB177
 11982 00ec 06000000 		.4byte	.LFE177-.LFB177
 11983 00f0 00000000 		.4byte	.LFB178
 11984 00f4 0E000000 		.4byte	.LFE178-.LFB178
ARM GAS  /tmp/ccCxIftT.s 			page 257


 11985 00f8 00000000 		.4byte	.LFB179
 11986 00fc 10000000 		.4byte	.LFE179-.LFB179
 11987 0100 00000000 		.4byte	.LFB180
 11988 0104 B8000000 		.4byte	.LFE180-.LFB180
 11989 0108 00000000 		.4byte	.LFB181
 11990 010c 06000000 		.4byte	.LFE181-.LFB181
 11991 0110 00000000 		.4byte	.LFB182
 11992 0114 AC000000 		.4byte	.LFE182-.LFB182
 11993 0118 00000000 		.4byte	.LFB184
 11994 011c B4000000 		.4byte	.LFE184-.LFB184
 11995 0120 00000000 		.4byte	.LFB185
 11996 0124 0A000000 		.4byte	.LFE185-.LFB185
 11997 0128 00000000 		.4byte	.LFB186
 11998 012c 74000000 		.4byte	.LFE186-.LFB186
 11999 0130 00000000 		.4byte	.LFB187
 12000 0134 06000000 		.4byte	.LFE187-.LFB187
 12001 0138 00000000 		.4byte	.LFB188
 12002 013c 0E000000 		.4byte	.LFE188-.LFB188
 12003 0140 00000000 		.4byte	.LFB189
 12004 0144 10000000 		.4byte	.LFE189-.LFB189
 12005 0148 00000000 		.4byte	.LFB190
 12006 014c 98000000 		.4byte	.LFE190-.LFB190
 12007 0150 00000000 		.4byte	.LFB191
 12008 0154 08000000 		.4byte	.LFE191-.LFB191
 12009 0158 00000000 		.4byte	.LFB192
 12010 015c 9C000000 		.4byte	.LFE192-.LFB192
 12011 0160 00000000 		.4byte	.LFB193
 12012 0164 0A000000 		.4byte	.LFE193-.LFB193
 12013 0168 00000000 		.4byte	0
 12014 016c 00000000 		.4byte	0
 12015              		.section	.debug_ranges,"",%progbits
 12016              	.Ldebug_ranges0:
 12017 0000 48000000 		.4byte	.LBB255
 12018 0004 4C000000 		.4byte	.LBE255
 12019 0008 4E000000 		.4byte	.LBB256
 12020 000c 56000000 		.4byte	.LBE256
 12021 0010 00000000 		.4byte	0
 12022 0014 00000000 		.4byte	0
 12023 0018 22000000 		.4byte	.LBB261
 12024 001c 2C000000 		.4byte	.LBE261
 12025 0020 2E000000 		.4byte	.LBB264
 12026 0024 32000000 		.4byte	.LBE264
 12027 0028 00000000 		.4byte	0
 12028 002c 00000000 		.4byte	0
 12029 0030 1E000000 		.4byte	.LBB307
 12030 0034 20000000 		.4byte	.LBE307
 12031 0038 44000000 		.4byte	.LBB326
 12032 003c 64000000 		.4byte	.LBE326
 12033 0040 00000000 		.4byte	0
 12034 0044 00000000 		.4byte	0
 12035 0048 26000000 		.4byte	.LBB318
 12036 004c 34000000 		.4byte	.LBE318
 12037 0050 36000000 		.4byte	.LBB325
 12038 0054 3A000000 		.4byte	.LBE325
 12039 0058 00000000 		.4byte	0
 12040 005c 00000000 		.4byte	0
 12041 0060 2A000000 		.4byte	.LBB357
ARM GAS  /tmp/ccCxIftT.s 			page 258


 12042 0064 AE000000 		.4byte	.LBE357
 12043 0068 BE000000 		.4byte	.LBB388
 12044 006c 4C010000 		.4byte	.LBE388
 12045 0070 00000000 		.4byte	0
 12046 0074 00000000 		.4byte	0
 12047 0078 2A000000 		.4byte	.LBB359
 12048 007c 3A000000 		.4byte	.LBE359
 12049 0080 3E000000 		.4byte	.LBB368
 12050 0084 42000000 		.4byte	.LBE368
 12051 0088 00000000 		.4byte	0
 12052 008c 00000000 		.4byte	0
 12053 0090 70000000 		.4byte	.LBB369
 12054 0094 74000000 		.4byte	.LBE369
 12055 0098 0E010000 		.4byte	.LBB386
 12056 009c 1A010000 		.4byte	.LBE386
 12057 00a0 00000000 		.4byte	0
 12058 00a4 00000000 		.4byte	0
 12059 00a8 02000000 		.4byte	.LBB391
 12060 00ac 04000000 		.4byte	.LBE391
 12061 00b0 06000000 		.4byte	.LBB396
 12062 00b4 1E000000 		.4byte	.LBE396
 12063 00b8 22000000 		.4byte	.LBB397
 12064 00bc 2C000000 		.4byte	.LBE397
 12065 00c0 30000000 		.4byte	.LBB398
 12066 00c4 44000000 		.4byte	.LBE398
 12067 00c8 00000000 		.4byte	0
 12068 00cc 00000000 		.4byte	0
 12069 00d0 02000000 		.4byte	.LBB417
 12070 00d4 0E000000 		.4byte	.LBE417
 12071 00d8 12000000 		.4byte	.LBB427
 12072 00dc 14000000 		.4byte	.LBE427
 12073 00e0 16000000 		.4byte	.LBB428
 12074 00e4 18000000 		.4byte	.LBE428
 12075 00e8 00000000 		.4byte	0
 12076 00ec 00000000 		.4byte	0
 12077 00f0 04000000 		.4byte	.LBB467
 12078 00f4 12000000 		.4byte	.LBE467
 12079 00f8 16000000 		.4byte	.LBB476
 12080 00fc 18000000 		.4byte	.LBE476
 12081 0100 00000000 		.4byte	0
 12082 0104 00000000 		.4byte	0
 12083 0108 36000000 		.4byte	.LBB477
 12084 010c 38000000 		.4byte	.LBE477
 12085 0110 76000000 		.4byte	.LBB497
 12086 0114 80000000 		.4byte	.LBE497
 12087 0118 00000000 		.4byte	0
 12088 011c 00000000 		.4byte	0
 12089 0120 4E000000 		.4byte	.LBB486
 12090 0124 50000000 		.4byte	.LBE486
 12091 0128 8C000000 		.4byte	.LBB498
 12092 012c B4000000 		.4byte	.LBE498
 12093 0130 00000000 		.4byte	0
 12094 0134 00000000 		.4byte	0
 12095 0138 3A000000 		.4byte	.LBB501
 12096 013c 4A000000 		.4byte	.LBE501
 12097 0140 4C000000 		.4byte	.LBB502
 12098 0144 50000000 		.4byte	.LBE502
ARM GAS  /tmp/ccCxIftT.s 			page 259


 12099 0148 00000000 		.4byte	0
 12100 014c 00000000 		.4byte	0
 12101 0150 02000000 		.4byte	.LBB505
 12102 0154 04000000 		.4byte	.LBE505
 12103 0158 06000000 		.4byte	.LBB510
 12104 015c 08000000 		.4byte	.LBE510
 12105 0160 0A000000 		.4byte	.LBB511
 12106 0164 1E000000 		.4byte	.LBE511
 12107 0168 24000000 		.4byte	.LBB512
 12108 016c 42000000 		.4byte	.LBE512
 12109 0170 00000000 		.4byte	0
 12110 0174 00000000 		.4byte	0
 12111 0178 0E000000 		.4byte	.LBB533
 12112 017c 12000000 		.4byte	.LBE533
 12113 0180 26000000 		.4byte	.LBB542
 12114 0184 34000000 		.4byte	.LBE542
 12115 0188 00000000 		.4byte	0
 12116 018c 00000000 		.4byte	0
 12117 0190 46000000 		.4byte	.LBB543
 12118 0194 48000000 		.4byte	.LBE543
 12119 0198 8E000000 		.4byte	.LBB552
 12120 019c B8000000 		.4byte	.LBE552
 12121 01a0 00000000 		.4byte	0
 12122 01a4 00000000 		.4byte	0
 12123 01a8 38000000 		.4byte	.LBB579
 12124 01ac 3A000000 		.4byte	.LBE579
 12125 01b0 86000000 		.4byte	.LBB588
 12126 01b4 AC000000 		.4byte	.LBE588
 12127 01b8 00000000 		.4byte	0
 12128 01bc 00000000 		.4byte	0
 12129 01c0 02000000 		.4byte	.LBB627
 12130 01c4 3E000000 		.4byte	.LBE627
 12131 01c8 42000000 		.4byte	.LBB669
 12132 01cc 72000000 		.4byte	.LBE669
 12133 01d0 76000000 		.4byte	.LBB670
 12134 01d4 B4000000 		.4byte	.LBE670
 12135 01d8 00000000 		.4byte	0
 12136 01dc 00000000 		.4byte	0
 12137 01e0 0C000000 		.4byte	.LBB629
 12138 01e4 1A000000 		.4byte	.LBE629
 12139 01e8 1E000000 		.4byte	.LBB638
 12140 01ec 20000000 		.4byte	.LBE638
 12141 01f0 00000000 		.4byte	0
 12142 01f4 00000000 		.4byte	0
 12143 01f8 32000000 		.4byte	.LBB639
 12144 01fc 3C000000 		.4byte	.LBE639
 12145 0200 76000000 		.4byte	.LBB665
 12146 0204 88000000 		.4byte	.LBE665
 12147 0208 00000000 		.4byte	0
 12148 020c 00000000 		.4byte	0
 12149 0210 6C000000 		.4byte	.LBB656
 12150 0214 6E000000 		.4byte	.LBE656
 12151 0218 8E000000 		.4byte	.LBB666
 12152 021c B4000000 		.4byte	.LBE666
 12153 0220 00000000 		.4byte	0
 12154 0224 00000000 		.4byte	0
 12155 0228 02000000 		.4byte	.LBB689
ARM GAS  /tmp/ccCxIftT.s 			page 260


 12156 022c 10000000 		.4byte	.LBE689
 12157 0230 12000000 		.4byte	.LBB698
 12158 0234 14000000 		.4byte	.LBE698
 12159 0238 00000000 		.4byte	0
 12160 023c 00000000 		.4byte	0
 12161 0240 0A000000 		.4byte	.LBB729
 12162 0244 0C000000 		.4byte	.LBE729
 12163 0248 34000000 		.4byte	.LBB741
 12164 024c 40000000 		.4byte	.LBE741
 12165 0250 42000000 		.4byte	.LBB742
 12166 0254 44000000 		.4byte	.LBE742
 12167 0258 00000000 		.4byte	0
 12168 025c 00000000 		.4byte	0
 12169 0260 60000000 		.4byte	.LBB743
 12170 0264 62000000 		.4byte	.LBE743
 12171 0268 6A000000 		.4byte	.LBB752
 12172 026c 74000000 		.4byte	.LBE752
 12173 0270 00000000 		.4byte	0
 12174 0274 00000000 		.4byte	0
 12175 0278 0A000000 		.4byte	.LBB773
 12176 027c 0E000000 		.4byte	.LBE773
 12177 0280 2A000000 		.4byte	.LBB786
 12178 0284 34000000 		.4byte	.LBE786
 12179 0288 36000000 		.4byte	.LBB787
 12180 028c 38000000 		.4byte	.LBE787
 12181 0290 3C000000 		.4byte	.LBB788
 12182 0294 40000000 		.4byte	.LBE788
 12183 0298 00000000 		.4byte	0
 12184 029c 00000000 		.4byte	0
 12185 02a0 64000000 		.4byte	.LBB789
 12186 02a4 66000000 		.4byte	.LBE789
 12187 02a8 6A000000 		.4byte	.LBB798
 12188 02ac 7A000000 		.4byte	.LBE798
 12189 02b0 00000000 		.4byte	0
 12190 02b4 00000000 		.4byte	0
 12191 02b8 00000000 		.4byte	.LFB151
 12192 02bc 10000000 		.4byte	.LFE151
 12193 02c0 00000000 		.4byte	.LFB154
 12194 02c4 04000000 		.4byte	.LFE154
 12195 02c8 00000000 		.4byte	.LFB155
 12196 02cc 04000000 		.4byte	.LFE155
 12197 02d0 00000000 		.4byte	.LFB158
 12198 02d4 02000000 		.4byte	.LFE158
 12199 02d8 00000000 		.4byte	.LFB152
 12200 02dc 24000000 		.4byte	.LFE152
 12201 02e0 00000000 		.4byte	.LFB153
 12202 02e4 68000000 		.4byte	.LFE153
 12203 02e8 00000000 		.4byte	.LFB149
 12204 02ec 5C000000 		.4byte	.LFE149
 12205 02f0 00000000 		.4byte	.LFB200
 12206 02f4 34000000 		.4byte	.LFE200
 12207 02f8 00000000 		.4byte	.LFB161
 12208 02fc 44000000 		.4byte	.LFE161
 12209 0300 00000000 		.4byte	.LFB201
 12210 0304 64000000 		.4byte	.LFE201
 12211 0308 00000000 		.4byte	.LFB197
 12212 030c 4C010000 		.4byte	.LFE197
ARM GAS  /tmp/ccCxIftT.s 			page 261


 12213 0310 00000000 		.4byte	.LFB156
 12214 0314 04000000 		.4byte	.LFE156
 12215 0318 00000000 		.4byte	.LFB164
 12216 031c 44000000 		.4byte	.LFE164
 12217 0320 00000000 		.4byte	.LFB166
 12218 0324 06000000 		.4byte	.LFE166
 12219 0328 00000000 		.4byte	.LFB167
 12220 032c 06000000 		.4byte	.LFE167
 12221 0330 00000000 		.4byte	.LFB168
 12222 0334 08000000 		.4byte	.LFE168
 12223 0338 00000000 		.4byte	.LFB169
 12224 033c 08000000 		.4byte	.LFE169
 12225 0340 00000000 		.4byte	.LFB170
 12226 0344 08000000 		.4byte	.LFE170
 12227 0348 00000000 		.4byte	.LFB171
 12228 034c 08000000 		.4byte	.LFE171
 12229 0350 00000000 		.4byte	.LFB172
 12230 0354 08000000 		.4byte	.LFE172
 12231 0358 00000000 		.4byte	.LFB173
 12232 035c 08000000 		.4byte	.LFE173
 12233 0360 00000000 		.4byte	.LFB174
 12234 0364 08000000 		.4byte	.LFE174
 12235 0368 00000000 		.4byte	.LFB175
 12236 036c 08000000 		.4byte	.LFE175
 12237 0370 00000000 		.4byte	.LFB176
 12238 0374 48000000 		.4byte	.LFE176
 12239 0378 00000000 		.4byte	.LFB204
 12240 037c B4000000 		.4byte	.LFE204
 12241 0380 00000000 		.4byte	.LFB150
 12242 0384 80000000 		.4byte	.LFE150
 12243 0388 00000000 		.4byte	.LFB163
 12244 038c 5C000000 		.4byte	.LFE163
 12245 0390 00000000 		.4byte	.LFB177
 12246 0394 06000000 		.4byte	.LFE177
 12247 0398 00000000 		.4byte	.LFB178
 12248 039c 0E000000 		.4byte	.LFE178
 12249 03a0 00000000 		.4byte	.LFB179
 12250 03a4 10000000 		.4byte	.LFE179
 12251 03a8 00000000 		.4byte	.LFB180
 12252 03ac B8000000 		.4byte	.LFE180
 12253 03b0 00000000 		.4byte	.LFB181
 12254 03b4 06000000 		.4byte	.LFE181
 12255 03b8 00000000 		.4byte	.LFB182
 12256 03bc AC000000 		.4byte	.LFE182
 12257 03c0 00000000 		.4byte	.LFB184
 12258 03c4 B4000000 		.4byte	.LFE184
 12259 03c8 00000000 		.4byte	.LFB185
 12260 03cc 0A000000 		.4byte	.LFE185
 12261 03d0 00000000 		.4byte	.LFB186
 12262 03d4 74000000 		.4byte	.LFE186
 12263 03d8 00000000 		.4byte	.LFB187
 12264 03dc 06000000 		.4byte	.LFE187
 12265 03e0 00000000 		.4byte	.LFB188
 12266 03e4 0E000000 		.4byte	.LFE188
 12267 03e8 00000000 		.4byte	.LFB189
 12268 03ec 10000000 		.4byte	.LFE189
 12269 03f0 00000000 		.4byte	.LFB190
ARM GAS  /tmp/ccCxIftT.s 			page 262


 12270 03f4 98000000 		.4byte	.LFE190
 12271 03f8 00000000 		.4byte	.LFB191
 12272 03fc 08000000 		.4byte	.LFE191
 12273 0400 00000000 		.4byte	.LFB192
 12274 0404 9C000000 		.4byte	.LFE192
 12275 0408 00000000 		.4byte	.LFB193
 12276 040c 0A000000 		.4byte	.LFE193
 12277 0410 00000000 		.4byte	0
 12278 0414 00000000 		.4byte	0
 12279              		.section	.debug_line,"",%progbits
 12280              	.Ldebug_line0:
 12281 0000 FC0B0000 		.section	.debug_str,"MS",%progbits,1
 12281      0200D403 
 12281      00000201 
 12281      FB0E0D00 
 12281      01010101 
 12282              	.LASF320:
 12283 0000 7564645F 		.ascii	"udd_is_high_speed\000"
 12283      69735F68 
 12283      6967685F 
 12283      73706565 
 12283      6400
 12284              	.LASF228:
 12285 0012 7564695F 		.ascii	"udi_cdc_tx_buf\000"
 12285      6364635F 
 12285      74785F62 
 12285      756600
 12286              	.LASF226:
 12287 0021 7564695F 		.ascii	"udi_cdc_rx_pos\000"
 12287      6364635F 
 12287      72785F70 
 12287      6F7300
 12288              	.LASF29:
 12289 0030 5F666C6F 		.ascii	"_flock_t\000"
 12289      636B5F74 
 12289      00
 12290              	.LASF188:
 12291 0039 624D6178 		.ascii	"bMaxPower\000"
 12291      506F7765 
 12291      7200
 12292              	.LASF158:
 12293 0043 77496E64 		.ascii	"wIndex\000"
 12293      657800
 12294              	.LASF152:
 12295 004a 4344435F 		.ascii	"CDC_PAR_EVEN\000"
 12295      5041525F 
 12295      4556454E 
 12295      00
 12296              	.LASF224:
 12297 0057 7564695F 		.ascii	"udi_cdc_rx_buf_nb\000"
 12297      6364635F 
 12297      72785F62 
 12297      75665F6E 
 12297      6200
 12298              	.LASF19:
 12299 0069 53797374 		.ascii	"SystemCoreClock\000"
 12299      656D436F 
ARM GAS  /tmp/ccCxIftT.s 			page 263


 12299      7265436C 
 12299      6F636B00 
 12300              	.LASF317:
 12301 0079 636F7265 		.ascii	"core_cdc_disable\000"
 12301      5F636463 
 12301      5F646973 
 12301      61626C65 
 12301      00
 12302              	.LASF265:
 12303 008a 7564695F 		.ascii	"udi_cdc_multi_is_rx_ready\000"
 12303      6364635F 
 12303      6D756C74 
 12303      695F6973 
 12303      5F72785F 
 12304              	.LASF288:
 12305 00a4 7564695F 		.ascii	"udi_cdc_rx_start\000"
 12305      6364635F 
 12305      72785F73 
 12305      74617274 
 12305      00
 12306              	.LASF46:
 12307 00b5 5F6F6E5F 		.ascii	"_on_exit_args\000"
 12307      65786974 
 12307      5F617267 
 12307      7300
 12308              	.LASF257:
 12309 00c3 61676169 		.ascii	"again\000"
 12309      6E00
 12310              	.LASF205:
 12311 00c9 5544445F 		.ascii	"UDD_EP_TRANSFER_OK\000"
 12311      45505F54 
 12311      52414E53 
 12311      4645525F 
 12311      4F4B00
 12312              	.LASF114:
 12313 00dc 5F776374 		.ascii	"_wctomb_state\000"
 12313      6F6D625F 
 12313      73746174 
 12313      6500
 12314              	.LASF294:
 12315 00ea 7564695F 		.ascii	"udi_cdc_line_coding_received\000"
 12315      6364635F 
 12315      6C696E65 
 12315      5F636F64 
 12315      696E675F 
 12316              	.LASF244:
 12317 0107 666C6167 		.ascii	"flags\000"
 12317      7300
 12318              	.LASF254:
 12319 010d 7564695F 		.ascii	"udi_cdc_read_no_polling\000"
 12319      6364635F 
 12319      72656164 
 12319      5F6E6F5F 
 12319      706F6C6C 
 12320              	.LASF111:
 12321 0125 5F723438 		.ascii	"_r48\000"
 12321      00
ARM GAS  /tmp/ccCxIftT.s 			page 264


 12322              	.LASF312:
 12323 012a 5F5F6765 		.ascii	"__get_PRIMASK\000"
 12323      745F5052 
 12323      494D4153 
 12323      4B00
 12324              	.LASF303:
 12325 0138 7564695F 		.ascii	"udi_cdc_comm_enable\000"
 12325      6364635F 
 12325      636F6D6D 
 12325      5F656E61 
 12325      626C6500 
 12326              	.LASF304:
 12327 014c 69666163 		.ascii	"iface_comm_num\000"
 12327      655F636F 
 12327      6D6D5F6E 
 12327      756D00
 12328              	.LASF322:
 12329 015b 7564645F 		.ascii	"udd_get_frame_number\000"
 12329      6765745F 
 12329      6672616D 
 12329      655F6E75 
 12329      6D626572 
 12330              	.LASF0:
 12331 0170 756E7369 		.ascii	"unsigned int\000"
 12331      676E6564 
 12331      20696E74 
 12331      00
 12332              	.LASF308:
 12333 017d 636F7265 		.ascii	"core_cdc_set_dtr\000"
 12333      5F636463 
 12333      5F736574 
 12333      5F647472 
 12333      00
 12334              	.LASF155:
 12335 018e 626D5265 		.ascii	"bmRequestType\000"
 12335      71756573 
 12335      74547970 
 12335      6500
 12336              	.LASF275:
 12337 019c 7564695F 		.ascii	"udi_cdc_signal_overrun\000"
 12337      6364635F 
 12337      7369676E 
 12337      616C5F6F 
 12337      76657272 
 12338              	.LASF146:
 12339 01b3 4344435F 		.ascii	"CDC_STOP_BITS_1_5\000"
 12339      53544F50 
 12339      5F424954 
 12339      535F315F 
 12339      3500
 12340              	.LASF60:
 12341 01c5 5F6C6266 		.ascii	"_lbfsize\000"
 12341      73697A65 
 12341      00
 12342              	.LASF58:
 12343 01ce 5F666C61 		.ascii	"_flags\000"
 12343      677300
ARM GAS  /tmp/ccCxIftT.s 			page 265


 12344              	.LASF7:
 12345 01d5 5F5F696E 		.ascii	"__int32_t\000"
 12345      7433325F 
 12345      7400
 12346              	.LASF75:
 12347 01df 5F657272 		.ascii	"_errno\000"
 12347      6E6F00
 12348              	.LASF302:
 12349 01e6 7564695F 		.ascii	"udi_cdc_data_enable\000"
 12349      6364635F 
 12349      64617461 
 12349      5F656E61 
 12349      626C6500 
 12350              	.LASF321:
 12351 01fa 7564645F 		.ascii	"udd_get_micro_frame_number\000"
 12351      6765745F 
 12351      6D696372 
 12351      6F5F6672 
 12351      616D655F 
 12352              	.LASF3:
 12353 0215 73686F72 		.ascii	"short int\000"
 12353      7420696E 
 12353      7400
 12354              	.LASF72:
 12355 021f 5F6D6273 		.ascii	"_mbstate\000"
 12355      74617465 
 12355      00
 12356              	.LASF311:
 12357 0228 6370755F 		.ascii	"cpu_irq_save\000"
 12357      6972715F 
 12357      73617665 
 12357      00
 12358              	.LASF175:
 12359 0235 62636444 		.ascii	"bcdDevice\000"
 12359      65766963 
 12359      6500
 12360              	.LASF30:
 12361 023f 5F5F554C 		.ascii	"__ULong\000"
 12361      6F6E6700 
 12362              	.LASF174:
 12363 0247 69645072 		.ascii	"idProduct\000"
 12363      6F647563 
 12363      7400
 12364              	.LASF256:
 12365 0251 7564695F 		.ascii	"udi_cdc_multi_read_buf\000"
 12365      6364635F 
 12365      6D756C74 
 12365      695F7265 
 12365      61645F62 
 12366              	.LASF182:
 12367 0268 624E756D 		.ascii	"bNumDeviceCaps\000"
 12367      44657669 
 12367      63654361 
 12367      707300
 12368              	.LASF151:
 12369 0277 4344435F 		.ascii	"CDC_PAR_ODD\000"
 12369      5041525F 
ARM GAS  /tmp/ccCxIftT.s 			page 266


 12369      4F444400 
 12370              	.LASF176:
 12371 0283 694D616E 		.ascii	"iManufacturer\000"
 12371      75666163 
 12371      74757265 
 12371      7200
 12372              	.LASF22:
 12373 0291 5F66706F 		.ascii	"_fpos_t\000"
 12373      735F7400 
 12374              	.LASF157:
 12375 0299 7756616C 		.ascii	"wValue\000"
 12375      756500
 12376              	.LASF309:
 12377 02a0 6370755F 		.ascii	"cpu_irq_restore\000"
 12377      6972715F 
 12377      72657374 
 12377      6F726500 
 12378              	.LASF231:
 12379 02b0 7564695F 		.ascii	"udi_cdc_tx_sof_num\000"
 12379      6364635F 
 12379      74785F73 
 12379      6F665F6E 
 12379      756D00
 12380              	.LASF61:
 12381 02c3 5F636F6F 		.ascii	"_cookie\000"
 12381      6B696500 
 12382              	.LASF131:
 12383 02cb 675F696E 		.ascii	"g_interrupt_enabled\000"
 12383      74657272 
 12383      7570745F 
 12383      656E6162 
 12383      6C656400 
 12384              	.LASF35:
 12385 02df 5F426967 		.ascii	"_Bigint\000"
 12385      696E7400 
 12386              	.LASF140:
 12387 02e7 64774454 		.ascii	"dwDTERate\000"
 12387      45526174 
 12387      6500
 12388              	.LASF43:
 12389 02f1 5F5F746D 		.ascii	"__tm_wday\000"
 12389      5F776461 
 12389      7900
 12390              	.LASF85:
 12391 02fb 5F726573 		.ascii	"_result\000"
 12391      756C7400 
 12392              	.LASF169:
 12393 0303 62446576 		.ascii	"bDeviceClass\000"
 12393      69636543 
 12393      6C617373 
 12393      00
 12394              	.LASF310:
 12395 0310 6370755F 		.ascii	"cpu_irq_is_enabled_flags\000"
 12395      6972715F 
 12395      69735F65 
 12395      6E61626C 
 12395      65645F66 
ARM GAS  /tmp/ccCxIftT.s 			page 267


 12396              	.LASF16:
 12397 0329 75696E74 		.ascii	"uint32_t\000"
 12397      33325F74 
 12397      00
 12398              	.LASF39:
 12399 0332 5F5F746D 		.ascii	"__tm_hour\000"
 12399      5F686F75 
 12399      7200
 12400              	.LASF177:
 12401 033c 6950726F 		.ascii	"iProduct\000"
 12401      64756374 
 12401      00
 12402              	.LASF212:
 12403 0345 7564645F 		.ascii	"udd_ctrl_request_t\000"
 12403      6374726C 
 12403      5F726571 
 12403      75657374 
 12403      5F7400
 12404              	.LASF168:
 12405 0358 62636455 		.ascii	"bcdUSB\000"
 12405      534200
 12406              	.LASF26:
 12407 035f 5F5F636F 		.ascii	"__count\000"
 12407      756E7400 
 12408              	.LASF137:
 12409 0367 666C6F61 		.ascii	"float\000"
 12409      7400
 12410              	.LASF38:
 12411 036d 5F5F746D 		.ascii	"__tm_min\000"
 12411      5F6D696E 
 12411      00
 12412              	.LASF127:
 12413 0376 5F696D70 		.ascii	"_impure_ptr\000"
 12413      7572655F 
 12413      70747200 
 12414              	.LASF124:
 12415 0382 5F6E6578 		.ascii	"_nextf\000"
 12415      746600
 12416              	.LASF263:
 12417 0389 7564695F 		.ascii	"udi_cdc_is_rx_ready\000"
 12417      6364635F 
 12417      69735F72 
 12417      785F7265 
 12417      61647900 
 12418              	.LASF209:
 12419 039d 7061796C 		.ascii	"payload_size\000"
 12419      6F61645F 
 12419      73697A65 
 12419      00
 12420              	.LASF181:
 12421 03aa 77546F74 		.ascii	"wTotalLength\000"
 12421      616C4C65 
 12421      6E677468 
 12421      00
 12422              	.LASF120:
 12423 03b7 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 12423      72746F77 
ARM GAS  /tmp/ccCxIftT.s 			page 268


 12423      63735F73 
 12423      74617465 
 12423      00
 12424              	.LASF313:
 12425 03c8 72657375 		.ascii	"result\000"
 12425      6C7400
 12426              	.LASF116:
 12427 03cf 5F736967 		.ascii	"_signal_buf\000"
 12427      6E616C5F 
 12427      62756600 
 12428              	.LASF12:
 12429 03db 6C6F6E67 		.ascii	"long long unsigned int\000"
 12429      206C6F6E 
 12429      6720756E 
 12429      7369676E 
 12429      65642069 
 12430              	.LASF107:
 12431 03f2 5F617363 		.ascii	"_asctime_buf\000"
 12431      74696D65 
 12431      5F627566 
 12431      00
 12432              	.LASF101:
 12433 03ff 5F72616E 		.ascii	"_rand48\000"
 12433      64343800 
 12434              	.LASF57:
 12435 0407 5F5F7346 		.ascii	"__sFILE\000"
 12435      494C4500 
 12436              	.LASF34:
 12437 040f 5F776473 		.ascii	"_wds\000"
 12437      00
 12438              	.LASF172:
 12439 0414 624D6178 		.ascii	"bMaxPacketSize0\000"
 12439      5061636B 
 12439      65745369 
 12439      7A653000 
 12440              	.LASF53:
 12441 0424 5F666E73 		.ascii	"_fns\000"
 12441      00
 12442              	.LASF156:
 12443 0429 624E6F74 		.ascii	"bNotification\000"
 12443      69666963 
 12443      6174696F 
 12443      6E00
 12444              	.LASF136:
 12445 0437 6C653332 		.ascii	"le32_t\000"
 12445      5F7400
 12446              	.LASF280:
 12447 043e 6275665F 		.ascii	"buf_sel_trans\000"
 12447      73656C5F 
 12447      7472616E 
 12447      7300
 12448              	.LASF97:
 12449 044c 5F5F4649 		.ascii	"__FILE\000"
 12449      4C4500
 12450              	.LASF123:
 12451 0453 5F685F65 		.ascii	"_h_errno\000"
 12451      72726E6F 
ARM GAS  /tmp/ccCxIftT.s 			page 269


 12451      00
 12452              	.LASF69:
 12453 045c 5F6F6666 		.ascii	"_offset\000"
 12453      73657400 
 12454              	.LASF66:
 12455 0464 5F756275 		.ascii	"_ubuf\000"
 12455      6600
 12456              	.LASF190:
 12457 046a 656E6162 		.ascii	"enable\000"
 12457      6C6500
 12458              	.LASF253:
 12459 0471 7564695F 		.ascii	"udi_cdc_read_buf\000"
 12459      6364635F 
 12459      72656164 
 12459      5F627566 
 12459      00
 12460              	.LASF170:
 12461 0482 62446576 		.ascii	"bDeviceSubClass\000"
 12461      69636553 
 12461      7562436C 
 12461      61737300 
 12462              	.LASF162:
 12463 0492 76616C75 		.ascii	"value\000"
 12463      6500
 12464              	.LASF290:
 12465 0498 7564695F 		.ascii	"udi_cdc_ctrl_state_change\000"
 12465      6364635F 
 12465      6374726C 
 12465      5F737461 
 12465      74655F63 
 12466              	.LASF281:
 12467 04b2 625F7368 		.ascii	"b_short_packet\000"
 12467      6F72745F 
 12467      7061636B 
 12467      657400
 12468              	.LASF80:
 12469 04c1 5F656D65 		.ascii	"_emergency\000"
 12469      7267656E 
 12469      637900
 12470              	.LASF62:
 12471 04cc 5F726561 		.ascii	"_read\000"
 12471      6400
 12472              	.LASF249:
 12473 04d2 7564695F 		.ascii	"udi_cdc_get_free_tx_buffer\000"
 12473      6364635F 
 12473      6765745F 
 12473      66726565 
 12473      5F74785F 
 12474              	.LASF260:
 12475 04ed 7564695F 		.ascii	"udi_cdc_multi_getc\000"
 12475      6364635F 
 12475      6D756C74 
 12475      695F6765 
 12475      746300
 12476              	.LASF208:
 12477 0500 7061796C 		.ascii	"payload\000"
 12477      6F616400 
ARM GAS  /tmp/ccCxIftT.s 			page 270


 12478              	.LASF314:
 12479 0508 5F5F6469 		.ascii	"__disable_irq\000"
 12479      7361626C 
 12479      655F6972 
 12479      7100
 12480              	.LASF37:
 12481 0516 5F5F746D 		.ascii	"__tm_sec\000"
 12481      5F736563 
 12481      00
 12482              	.LASF129:
 12483 051f 7375626F 		.ascii	"suboptarg\000"
 12483      70746172 
 12483      6700
 12484              	.LASF44:
 12485 0529 5F5F746D 		.ascii	"__tm_yday\000"
 12485      5F796461 
 12485      7900
 12486              	.LASF79:
 12487 0533 5F696E63 		.ascii	"_inc\000"
 12487      00
 12488              	.LASF132:
 12489 0538 5F426F6F 		.ascii	"_Bool\000"
 12489      6C00
 12490              	.LASF287:
 12491 053e 7564695F 		.ascii	"udi_cdc_multi_read_no_polling\000"
 12491      6364635F 
 12491      6D756C74 
 12491      695F7265 
 12491      61645F6E 
 12492              	.LASF31:
 12493 055c 5F6E6578 		.ascii	"_next\000"
 12493      7400
 12494              	.LASF284:
 12495 0562 7564695F 		.ascii	"udi_cdc_data_sent\000"
 12495      6364635F 
 12495      64617461 
 12495      5F73656E 
 12495      7400
 12496              	.LASF225:
 12497 0574 7564695F 		.ascii	"udi_cdc_rx_buf_sel\000"
 12497      6364635F 
 12497      72785F62 
 12497      75665F73 
 12497      656C00
 12498              	.LASF221:
 12499 0587 7564695F 		.ascii	"udi_cdc_nb_data_enabled\000"
 12499      6364635F 
 12499      6E625F64 
 12499      6174615F 
 12499      656E6162 
 12500              	.LASF134:
 12501 059f 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 12501      6972715F 
 12501      70726576 
 12501      5F696E74 
 12501      65727275 
 12502              	.LASF143:
ARM GAS  /tmp/ccCxIftT.s 			page 271


 12503 05bc 62446174 		.ascii	"bDataBits\000"
 12503      61426974 
 12503      7300
 12504              	.LASF165:
 12505 05c6 7573625F 		.ascii	"usb_setup_req_t\000"
 12505      73657475 
 12505      705F7265 
 12505      715F7400 
 12506              	.LASF242:
 12507 05d6 7564695F 		.ascii	"udi_cdc_putc\000"
 12507      6364635F 
 12507      70757463 
 12507      00
 12508              	.LASF220:
 12509 05e3 7564695F 		.ascii	"udi_cdc_nb_comm_enabled\000"
 12509      6364635F 
 12509      6E625F63 
 12509      6F6D6D5F 
 12509      656E6162 
 12510              	.LASF27:
 12511 05fb 5F5F7661 		.ascii	"__value\000"
 12511      6C756500 
 12512              	.LASF211:
 12513 0603 6F766572 		.ascii	"over_under_run\000"
 12513      5F756E64 
 12513      65725F72 
 12513      756E00
 12514              	.LASF5:
 12515 0612 5F5F7569 		.ascii	"__uint16_t\000"
 12515      6E743136 
 12515      5F7400
 12516              	.LASF87:
 12517 061d 5F703573 		.ascii	"_p5s\000"
 12517      00
 12518              	.LASF204:
 12519 0622 7564645F 		.ascii	"udd_ep_id_t\000"
 12519      65705F69 
 12519      645F7400 
 12520              	.LASF201:
 12521 062e 636F6E66 		.ascii	"conf_bos\000"
 12521      5F626F73 
 12521      00
 12522              	.LASF245:
 12523 0637 625F6461 		.ascii	"b_databit_9\000"
 12523      74616269 
 12523      745F3900 
 12524              	.LASF318:
 12525 0643 636F7265 		.ascii	"core_cdc_enable\000"
 12525      5F636463 
 12525      5F656E61 
 12525      626C6500 
 12526              	.LASF122:
 12527 0653 5F776373 		.ascii	"_wcsrtombs_state\000"
 12527      72746F6D 
 12527      62735F73 
 12527      74617465 
 12527      00
ARM GAS  /tmp/ccCxIftT.s 			page 272


 12528              	.LASF200:
 12529 0664 636F6E66 		.ascii	"conf_lsfs\000"
 12529      5F6C7366 
 12529      7300
 12530              	.LASF269:
 12531 066e 7564695F 		.ascii	"udi_cdc_multi_signal_overrun\000"
 12531      6364635F 
 12531      6D756C74 
 12531      695F7369 
 12531      676E616C 
 12532              	.LASF96:
 12533 068b 63686172 		.ascii	"char\000"
 12533      00
 12534              	.LASF40:
 12535 0690 5F5F746D 		.ascii	"__tm_mday\000"
 12535      5F6D6461 
 12535      7900
 12536              	.LASF93:
 12537 069a 5F736967 		.ascii	"_sig_func\000"
 12537      5F66756E 
 12537      6300
 12538              	.LASF119:
 12539 06a4 5F6D6272 		.ascii	"_mbrtowc_state\000"
 12539      746F7763 
 12539      5F737461 
 12539      746500
 12540              	.LASF92:
 12541 06b3 5F617465 		.ascii	"_atexit0\000"
 12541      78697430 
 12541      00
 12542              	.LASF306:
 12543 06bc 636F7265 		.ascii	"core_cdc_set_rts\000"
 12543      5F636463 
 12543      5F736574 
 12543      5F727473 
 12543      00
 12544              	.LASF279:
 12545 06cd 7564695F 		.ascii	"udi_cdc_ctrl_signal_dcd\000"
 12545      6364635F 
 12545      6374726C 
 12545      5F736967 
 12545      6E616C5F 
 12546              	.LASF327:
 12547 06e5 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70_RTOS"
 12547      652F746F 
 12547      72626A6F 
 12547      726E2F65 
 12547      636C6970 
 12548 0718 00       		.ascii	"\000"
 12549              	.LASF261:
 12550 0719 72785F64 		.ascii	"rx_data\000"
 12550      61746100 
 12551              	.LASF86:
 12552 0721 5F726573 		.ascii	"_result_k\000"
 12552      756C745F 
 12552      6B00
 12553              	.LASF149:
ARM GAS  /tmp/ccCxIftT.s 			page 273


 12554 072b 6364635F 		.ascii	"cdc_parity\000"
 12554      70617269 
 12554      747900
 12555              	.LASF24:
 12556 0736 5F5F7763 		.ascii	"__wch\000"
 12556      6800
 12557              	.LASF232:
 12558 073c 7564695F 		.ascii	"udi_cdc_tx_trans_ongoing\000"
 12558      6364635F 
 12558      74785F74 
 12558      72616E73 
 12558      5F6F6E67 
 12559              	.LASF13:
 12560 0755 75696E74 		.ascii	"uint8_t\000"
 12560      385F7400 
 12561              	.LASF186:
 12562 075d 69436F6E 		.ascii	"iConfiguration\000"
 12562      66696775 
 12562      72617469 
 12562      6F6E00
 12563              	.LASF285:
 12564 076c 73746174 		.ascii	"status\000"
 12564      757300
 12565              	.LASF213:
 12566 0773 7564645F 		.ascii	"udd_g_ctrlreq\000"
 12566      675F6374 
 12566      726C7265 
 12566      7100
 12567              	.LASF65:
 12568 0781 5F636C6F 		.ascii	"_close\000"
 12568      736500
 12569              	.LASF202:
 12570 0788 7564635F 		.ascii	"udc_config_t\000"
 12570      636F6E66 
 12570      69675F74 
 12570      00
 12571              	.LASF83:
 12572 0795 5F5F7364 		.ascii	"__sdidinit\000"
 12572      6964696E 
 12572      697400
 12573              	.LASF300:
 12574 07a0 7564695F 		.ascii	"udi_cdc_comm_setup\000"
 12574      6364635F 
 12574      636F6D6D 
 12574      5F736574 
 12574      757000
 12575              	.LASF206:
 12576 07b3 5544445F 		.ascii	"UDD_EP_TRANSFER_ABORT\000"
 12576      45505F54 
 12576      52414E53 
 12576      4645525F 
 12576      41424F52 
 12577              	.LASF247:
 12578 07c9 7564695F 		.ascii	"udi_cdc_putc_process_one_byte\000"
 12578      6364635F 
 12578      70757463 
 12578      5F70726F 
ARM GAS  /tmp/ccCxIftT.s 			page 274


 12578      63657373 
 12579              	.LASF252:
 12580 07e7 72657476 		.ascii	"retval\000"
 12580      616C00
 12581              	.LASF278:
 12582 07ee 7564695F 		.ascii	"udi_cdc_ctrl_signal_dsr\000"
 12582      6364635F 
 12582      6374726C 
 12582      5F736967 
 12582      6E616C5F 
 12583              	.LASF76:
 12584 0806 5F737464 		.ascii	"_stdin\000"
 12584      696E00
 12585              	.LASF109:
 12586 080d 5F67616D 		.ascii	"_gamma_signgam\000"
 12586      6D615F73 
 12586      69676E67 
 12586      616D00
 12587              	.LASF289:
 12588 081c 7564695F 		.ascii	"udi_cdc_ctrl_state_notify\000"
 12588      6364635F 
 12588      6374726C 
 12588      5F737461 
 12588      74655F6E 
 12589              	.LASF11:
 12590 0836 6C6F6E67 		.ascii	"long long int\000"
 12590      206C6F6E 
 12590      6720696E 
 12590      7400
 12591              	.LASF193:
 12592 0844 67657473 		.ascii	"getsetting\000"
 12592      65747469 
 12592      6E6700
 12593              	.LASF150:
 12594 084f 4344435F 		.ascii	"CDC_PAR_NONE\000"
 12594      5041525F 
 12594      4E4F4E45 
 12594      00
 12595              	.LASF55:
 12596 085c 5F626173 		.ascii	"_base\000"
 12596      6500
 12597              	.LASF88:
 12598 0862 5F667265 		.ascii	"_freelist\000"
 12598      656C6973 
 12598      7400
 12599              	.LASF298:
 12600 086c 7564695F 		.ascii	"udi_cdc_getsetting\000"
 12600      6364635F 
 12600      67657473 
 12600      65747469 
 12600      6E6700
 12601              	.LASF104:
 12602 087f 5F616464 		.ascii	"_add\000"
 12602      00
 12603              	.LASF121:
 12604 0884 5F776372 		.ascii	"_wcrtomb_state\000"
 12604      746F6D62 
ARM GAS  /tmp/ccCxIftT.s 			page 275


 12604      5F737461 
 12604      746500
 12605              	.LASF216:
 12606 0893 7564695F 		.ascii	"udi_cdc_line_coding\000"
 12606      6364635F 
 12606      6C696E65 
 12606      5F636F64 
 12606      696E6700 
 12607              	.LASF59:
 12608 08a7 5F66696C 		.ascii	"_file\000"
 12608      6500
 12609              	.LASF222:
 12610 08ad 7564695F 		.ascii	"udi_cdc_data_running\000"
 12610      6364635F 
 12610      64617461 
 12610      5F72756E 
 12610      6E696E67 
 12611              	.LASF299:
 12612 08c2 7564695F 		.ascii	"udi_cdc_data_setup\000"
 12612      6364635F 
 12612      64617461 
 12612      5F736574 
 12612      757000
 12613              	.LASF238:
 12614 08d5 6275665F 		.ascii	"buf_sel\000"
 12614      73656C00 
 12615              	.LASF84:
 12616 08dd 5F5F636C 		.ascii	"__cleanup\000"
 12616      65616E75 
 12616      7000
 12617              	.LASF258:
 12618 08e7 7564695F 		.ascii	"udi_cdc_read_buf_loop_wait\000"
 12618      6364635F 
 12618      72656164 
 12618      5F627566 
 12618      5F6C6F6F 
 12619              	.LASF112:
 12620 0902 5F6D626C 		.ascii	"_mblen_state\000"
 12620      656E5F73 
 12620      74617465 
 12620      00
 12621              	.LASF28:
 12622 090f 5F6D6273 		.ascii	"_mbstate_t\000"
 12622      74617465 
 12622      5F7400
 12623              	.LASF207:
 12624 091a 7564645F 		.ascii	"udd_ep_status_t\000"
 12624      65705F73 
 12624      74617475 
 12624      735F7400 
 12625              	.LASF255:
 12626 092a 6E625F61 		.ascii	"nb_avail_data\000"
 12626      7661696C 
 12626      5F646174 
 12626      6100
 12627              	.LASF323:
 12628 0938 636F7265 		.ascii	"core_cdc_tx_empty_notify\000"
ARM GAS  /tmp/ccCxIftT.s 			page 276


 12628      5F636463 
 12628      5F74785F 
 12628      656D7074 
 12628      795F6E6F 
 12629              	.LASF234:
 12630 0951 73697A65 		.ascii	"size\000"
 12630      00
 12631              	.LASF20:
 12632 0956 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 12632      4B5F5245 
 12632      43555253 
 12632      4956455F 
 12632      5400
 12633              	.LASF45:
 12634 0968 5F5F746D 		.ascii	"__tm_isdst\000"
 12634      5F697364 
 12634      737400
 12635              	.LASF144:
 12636 0973 7573625F 		.ascii	"usb_cdc_line_coding_t\000"
 12636      6364635F 
 12636      6C696E65 
 12636      5F636F64 
 12636      696E675F 
 12637              	.LASF161:
 12638 0989 68656164 		.ascii	"header\000"
 12638      657200
 12639              	.LASF10:
 12640 0990 6C6F6E67 		.ascii	"long unsigned int\000"
 12640      20756E73 
 12640      69676E65 
 12640      6420696E 
 12640      7400
 12641              	.LASF237:
 12642 09a2 706F7274 		.ascii	"port\000"
 12642      00
 12643              	.LASF229:
 12644 09a7 7564695F 		.ascii	"udi_cdc_tx_buf_nb\000"
 12644      6364635F 
 12644      74785F62 
 12644      75665F6E 
 12644      6200
 12645              	.LASF52:
 12646 09b9 5F696E64 		.ascii	"_ind\000"
 12646      00
 12647              	.LASF301:
 12648 09be 7564695F 		.ascii	"udi_cdc_data_disable\000"
 12648      6364635F 
 12648      64617461 
 12648      5F646973 
 12648      61626C65 
 12649              	.LASF142:
 12650 09d3 62506172 		.ascii	"bParityType\000"
 12650      69747954 
 12650      79706500 
 12651              	.LASF271:
 12652 09df 7564695F 		.ascii	"udi_cdc_multi_signal_framing_error\000"
 12652      6364635F 
ARM GAS  /tmp/ccCxIftT.s 			page 277


 12652      6D756C74 
 12652      695F7369 
 12652      676E616C 
 12653              	.LASF183:
 12654 0a02 7573625F 		.ascii	"usb_dev_bos_desc_t\000"
 12654      6465765F 
 12654      626F735F 
 12654      64657363 
 12654      5F7400
 12655              	.LASF286:
 12656 0a15 7564695F 		.ascii	"udi_cdc_data_received\000"
 12656      6364635F 
 12656      64617461 
 12656      5F726563 
 12656      65697665 
 12657              	.LASF215:
 12658 0a2b 7564695F 		.ascii	"udi_api_cdc_data\000"
 12658      6170695F 
 12658      6364635F 
 12658      64617461 
 12658      00
 12659              	.LASF178:
 12660 0a3c 69536572 		.ascii	"iSerialNumber\000"
 12660      69616C4E 
 12660      756D6265 
 12660      7200
 12661              	.LASF296:
 12662 0a4a 7564695F 		.ascii	"udi_cdc_data_sof_notify\000"
 12662      6364635F 
 12662      64617461 
 12662      5F736F66 
 12662      5F6E6F74 
 12663              	.LASF328:
 12664 0a62 7564695F 		.ascii	"udi_cdc_comm_disable\000"
 12664      6364635F 
 12664      636F6D6D 
 12664      5F646973 
 12664      61626C65 
 12665              	.LASF274:
 12666 0a77 7564695F 		.ascii	"udi_cdc_multi_ctrl_signal_dcd\000"
 12666      6364635F 
 12666      6D756C74 
 12666      695F6374 
 12666      726C5F73 
 12667              	.LASF41:
 12668 0a95 5F5F746D 		.ascii	"__tm_mon\000"
 12668      5F6D6F6E 
 12668      00
 12669              	.LASF250:
 12670 0a9e 7564695F 		.ascii	"udi_cdc_multi_get_free_tx_buffer\000"
 12670      6364635F 
 12670      6D756C74 
 12670      695F6765 
 12670      745F6672 
 12671              	.LASF141:
 12672 0abf 62436861 		.ascii	"bCharFormat\000"
 12672      72466F72 
ARM GAS  /tmp/ccCxIftT.s 			page 278


 12672      6D617400 
 12673              	.LASF171:
 12674 0acb 62446576 		.ascii	"bDeviceProtocol\000"
 12674      69636550 
 12674      726F746F 
 12674      636F6C00 
 12675              	.LASF277:
 12676 0adb 7564695F 		.ascii	"udi_cdc_signal_framing_error\000"
 12676      6364635F 
 12676      7369676E 
 12676      616C5F66 
 12676      72616D69 
 12677              	.LASF14:
 12678 0af8 75696E74 		.ascii	"uint16_t\000"
 12678      31365F74 
 12678      00
 12679              	.LASF167:
 12680 0b01 62446573 		.ascii	"bDescriptorType\000"
 12680      63726970 
 12680      746F7254 
 12680      79706500 
 12681              	.LASF63:
 12682 0b11 5F777269 		.ascii	"_write\000"
 12682      746500
 12683              	.LASF173:
 12684 0b18 69645665 		.ascii	"idVendor\000"
 12684      6E646F72 
 12684      00
 12685              	.LASF25:
 12686 0b21 5F5F7763 		.ascii	"__wchb\000"
 12686      686200
 12687              	.LASF194:
 12688 0b28 736F665F 		.ascii	"sof_notify\000"
 12688      6E6F7469 
 12688      667900
 12689              	.LASF240:
 12690 0b33 636F7079 		.ascii	"copy_nb\000"
 12690      5F6E6200 
 12691              	.LASF51:
 12692 0b3b 5F617465 		.ascii	"_atexit\000"
 12692      78697400 
 12693              	.LASF270:
 12694 0b43 7564695F 		.ascii	"udi_cdc_multi_signal_parity_error\000"
 12694      6364635F 
 12694      6D756C74 
 12694      695F7369 
 12694      676E616C 
 12695              	.LASF262:
 12696 0b65 7564695F 		.ascii	"udi_cdc_getc_process_one_byte\000"
 12696      6364635F 
 12696      67657463 
 12696      5F70726F 
 12696      63657373 
 12697              	.LASF163:
 12698 0b83 7573625F 		.ascii	"usb_cdc_notify_serial_state_t\000"
 12698      6364635F 
 12698      6E6F7469 
ARM GAS  /tmp/ccCxIftT.s 			page 279


 12698      66795F73 
 12698      65726961 
 12699              	.LASF145:
 12700 0ba1 4344435F 		.ascii	"CDC_STOP_BITS_1\000"
 12700      53544F50 
 12700      5F424954 
 12700      535F3100 
 12701              	.LASF147:
 12702 0bb1 4344435F 		.ascii	"CDC_STOP_BITS_2\000"
 12702      53544F50 
 12702      5F424954 
 12702      535F3200 
 12703              	.LASF154:
 12704 0bc1 4344435F 		.ascii	"CDC_PAR_SPACE\000"
 12704      5041525F 
 12704      53504143 
 12704      4500
 12705              	.LASF272:
 12706 0bcf 7564695F 		.ascii	"udi_cdc_multi_ctrl_signal_dsr\000"
 12706      6364635F 
 12706      6D756C74 
 12706      695F6374 
 12706      726C5F73 
 12707              	.LASF103:
 12708 0bed 5F6D756C 		.ascii	"_mult\000"
 12708      7400
 12709              	.LASF198:
 12710 0bf3 7564635F 		.ascii	"udc_config_speed_t\000"
 12710      636F6E66 
 12710      69675F73 
 12710      70656564 
 12710      5F7400
 12711              	.LASF8:
 12712 0c06 6C6F6E67 		.ascii	"long int\000"
 12712      20696E74 
 12712      00
 12713              	.LASF293:
 12714 0c0f 7564695F 		.ascii	"udi_cdc_serial_state_msg_sent\000"
 12714      6364635F 
 12714      73657269 
 12714      616C5F73 
 12714      74617465 
 12715              	.LASF184:
 12716 0c2d 624E756D 		.ascii	"bNumInterfaces\000"
 12716      496E7465 
 12716      72666163 
 12716      657300
 12717              	.LASF18:
 12718 0c3c 49544D5F 		.ascii	"ITM_RxBuffer\000"
 12718      52784275 
 12718      66666572 
 12718      00
 12719              	.LASF315:
 12720 0c49 5F5F656E 		.ascii	"__enable_irq\000"
 12720      61626C65 
 12720      5F697271 
 12720      00
ARM GAS  /tmp/ccCxIftT.s 			page 280


 12721              	.LASF233:
 12722 0c56 7564695F 		.ascii	"udi_cdc_tx_both_buf_to_send\000"
 12722      6364635F 
 12722      74785F62 
 12722      6F74685F 
 12722      6275665F 
 12723              	.LASF159:
 12724 0c72 774C656E 		.ascii	"wLength\000"
 12724      67746800 
 12725              	.LASF95:
 12726 0c7a 5F5F7366 		.ascii	"__sf\000"
 12726      00
 12727              	.LASF33:
 12728 0c7f 5F736967 		.ascii	"_sign\000"
 12728      6E00
 12729              	.LASF130:
 12730 0c85 69727166 		.ascii	"irqflags_t\000"
 12730      6C616773 
 12730      5F7400
 12731              	.LASF82:
 12732 0c90 5F637572 		.ascii	"_current_locale\000"
 12732      72656E74 
 12732      5F6C6F63 
 12732      616C6500 
 12733              	.LASF70:
 12734 0ca0 5F646174 		.ascii	"_data\000"
 12734      6100
 12735              	.LASF324:
 12736 0ca6 636F7265 		.ascii	"core_cdc_rx_notify\000"
 12736      5F636463 
 12736      5F72785F 
 12736      6E6F7469 
 12736      667900
 12737              	.LASF128:
 12738 0cb9 5F676C6F 		.ascii	"_global_impure_ptr\000"
 12738      62616C5F 
 12738      696D7075 
 12738      72655F70 
 12738      747200
 12739              	.LASF153:
 12740 0ccc 4344435F 		.ascii	"CDC_PAR_MARK\000"
 12740      5041525F 
 12740      4D41524B 
 12740      00
 12741              	.LASF42:
 12742 0cd9 5F5F746D 		.ascii	"__tm_year\000"
 12742      5F796561 
 12742      7200
 12743              	.LASF219:
 12744 0ce3 7569645F 		.ascii	"uid_cdc_state_msg\000"
 12744      6364635F 
 12744      73746174 
 12744      655F6D73 
 12744      6700
 12745              	.LASF282:
 12746 0cf5 736F665F 		.ascii	"sof_zlp_counter\000"
 12746      7A6C705F 
ARM GAS  /tmp/ccCxIftT.s 			page 281


 12746      636F756E 
 12746      74657200 
 12747              	.LASF291:
 12748 0d05 6269745F 		.ascii	"bit_mask\000"
 12748      6D61736B 
 12748      00
 12749              	.LASF316:
 12750 0d0e 5F5F444D 		.ascii	"__DMB\000"
 12750      4200
 12751              	.LASF199:
 12752 0d14 636F6E66 		.ascii	"confdev_lsfs\000"
 12752      6465765F 
 12752      6C736673 
 12752      00
 12753              	.LASF108:
 12754 0d21 5F6C6F63 		.ascii	"_localtime_buf\000"
 12754      616C7469 
 12754      6D655F62 
 12754      756600
 12755              	.LASF126:
 12756 0d30 5F756E75 		.ascii	"_unused\000"
 12756      73656400 
 12757              	.LASF4:
 12758 0d38 5F5F7569 		.ascii	"__uint8_t\000"
 12758      6E74385F 
 12758      7400
 12759              	.LASF164:
 12760 0d42 62526571 		.ascii	"bRequest\000"
 12760      75657374 
 12760      00
 12761              	.LASF91:
 12762 0d4b 5F6E6577 		.ascii	"_new\000"
 12762      00
 12763              	.LASF89:
 12764 0d50 5F637674 		.ascii	"_cvtlen\000"
 12764      6C656E00 
 12765              	.LASF32:
 12766 0d58 5F6D6178 		.ascii	"_maxwds\000"
 12766      77647300 
 12767              	.LASF115:
 12768 0d60 5F6C3634 		.ascii	"_l64a_buf\000"
 12768      615F6275 
 12768      6600
 12769              	.LASF81:
 12770 0d6a 5F637572 		.ascii	"_current_category\000"
 12770      72656E74 
 12770      5F636174 
 12770      65676F72 
 12770      7900
 12771              	.LASF195:
 12772 0d7c 7564695F 		.ascii	"udi_api_t\000"
 12772      6170695F 
 12772      7400
 12773              	.LASF191:
 12774 0d86 64697361 		.ascii	"disable\000"
 12774      626C6500 
 12775              	.LASF68:
ARM GAS  /tmp/ccCxIftT.s 			page 282


 12776 0d8e 5F626C6B 		.ascii	"_blksize\000"
 12776      73697A65 
 12776      00
 12777              	.LASF236:
 12778 0d97 7564695F 		.ascii	"udi_cdc_multi_write_buf\000"
 12778      6364635F 
 12778      6D756C74 
 12778      695F7772 
 12778      6974655F 
 12779              	.LASF36:
 12780 0daf 5F5F746D 		.ascii	"__tm\000"
 12780      00
 12781              	.LASF71:
 12782 0db4 5F6C6F63 		.ascii	"_lock\000"
 12782      6B00
 12783              	.LASF297:
 12784 0dba 706F7274 		.ascii	"port_notify\000"
 12784      5F6E6F74 
 12784      69667900 
 12785              	.LASF264:
 12786 0dc6 7564695F 		.ascii	"udi_cdc_multi_is_tx_ready\000"
 12786      6364635F 
 12786      6D756C74 
 12786      695F6973 
 12786      5F74785F 
 12787              	.LASF17:
 12788 0de0 73697A65 		.ascii	"sizetype\000"
 12788      74797065 
 12788      00
 12789              	.LASF187:
 12790 0de9 626D4174 		.ascii	"bmAttributes\000"
 12790      74726962 
 12790      75746573 
 12790      00
 12791              	.LASF251:
 12792 0df6 6275665F 		.ascii	"buf_sel_nb\000"
 12792      73656C5F 
 12792      6E6200
 12793              	.LASF133:
 12794 0e01 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 12794      6972715F 
 12794      63726974 
 12794      6963616C 
 12794      5F736563 
 12795              	.LASF268:
 12796 0e22 6E625F72 		.ascii	"nb_received\000"
 12796      65636569 
 12796      76656400 
 12797              	.LASF23:
 12798 0e2e 77696E74 		.ascii	"wint_t\000"
 12798      5F7400
 12799              	.LASF319:
 12800 0e35 7564645F 		.ascii	"udd_ep_run\000"
 12800      65705F72 
 12800      756E00
 12801              	.LASF15:
 12802 0e40 696E7433 		.ascii	"int32_t\000"
ARM GAS  /tmp/ccCxIftT.s 			page 283


 12802      325F7400 
 12803              	.LASF185:
 12804 0e48 62436F6E 		.ascii	"bConfigurationValue\000"
 12804      66696775 
 12804      72617469 
 12804      6F6E5661 
 12804      6C756500 
 12805              	.LASF248:
 12806 0e5c 7564695F 		.ascii	"udi_cdc_is_tx_ready\000"
 12806      6364635F 
 12806      69735F74 
 12806      785F7265 
 12806      61647900 
 12807              	.LASF48:
 12808 0e70 5F64736F 		.ascii	"_dso_handle\000"
 12808      5F68616E 
 12808      646C6500 
 12809              	.LASF230:
 12810 0e7c 7564695F 		.ascii	"udi_cdc_tx_buf_sel\000"
 12810      6364635F 
 12810      74785F62 
 12810      75665F73 
 12810      656C00
 12811              	.LASF267:
 12812 0e8f 7564695F 		.ascii	"udi_cdc_multi_get_nb_received_data\000"
 12812      6364635F 
 12812      6D756C74 
 12812      695F6765 
 12812      745F6E62 
 12813              	.LASF135:
 12814 0eb2 6C653136 		.ascii	"le16_t\000"
 12814      5F7400
 12815              	.LASF307:
 12816 0eb9 625F656E 		.ascii	"b_enable\000"
 12816      61626C65 
 12816      00
 12817              	.LASF276:
 12818 0ec2 7564695F 		.ascii	"udi_cdc_signal_parity_error\000"
 12818      6364635F 
 12818      7369676E 
 12818      616C5F70 
 12818      61726974 
 12819              	.LASF77:
 12820 0ede 5F737464 		.ascii	"_stdout\000"
 12820      6F757400 
 12821              	.LASF90:
 12822 0ee6 5F637674 		.ascii	"_cvtbuf\000"
 12822      62756600 
 12823              	.LASF223:
 12824 0eee 7564695F 		.ascii	"udi_cdc_rx_buf\000"
 12824      6364635F 
 12824      72785F62 
 12824      756600
 12825              	.LASF2:
 12826 0efd 756E7369 		.ascii	"unsigned char\000"
 12826      676E6564 
 12826      20636861 
ARM GAS  /tmp/ccCxIftT.s 			page 284


 12826      7200
 12827              	.LASF192:
 12828 0f0b 73657475 		.ascii	"setup\000"
 12828      7000
 12829              	.LASF9:
 12830 0f11 5F5F7569 		.ascii	"__uint32_t\000"
 12830      6E743332 
 12830      5F7400
 12831              	.LASF259:
 12832 0f1c 7564695F 		.ascii	"udi_cdc_getc\000"
 12832      6364635F 
 12832      67657463 
 12832      00
 12833              	.LASF217:
 12834 0f29 7564695F 		.ascii	"udi_cdc_serial_state_msg_ongoing\000"
 12834      6364635F 
 12834      73657269 
 12834      616C5F73 
 12834      74617465 
 12835              	.LASF326:
 12836 0f4a 2E2E2F61 		.ascii	"../asf/common/services/usb/class/cdc/device/udi_cdc"
 12836      73662F63 
 12836      6F6D6D6F 
 12836      6E2F7365 
 12836      72766963 
 12837 0f7d 2E6300   		.ascii	".c\000"
 12838              	.LASF243:
 12839 0f80 7564695F 		.ascii	"udi_cdc_multi_putc\000"
 12839      6364635F 
 12839      6D756C74 
 12839      695F7075 
 12839      746300
 12840              	.LASF139:
 12841 0f93 6972616D 		.ascii	"iram_size_t\000"
 12841      5F73697A 
 12841      655F7400 
 12842              	.LASF239:
 12843 0f9f 6275665F 		.ascii	"buf_nb\000"
 12843      6E6200
 12844              	.LASF118:
 12845 0fa6 5F6D6272 		.ascii	"_mbrlen_state\000"
 12845      6C656E5F 
 12845      73746174 
 12845      6500
 12846              	.LASF214:
 12847 0fb4 7564695F 		.ascii	"udi_api_cdc_comm\000"
 12847      6170695F 
 12847      6364635F 
 12847      636F6D6D 
 12847      00
 12848              	.LASF99:
 12849 0fc5 5F6E696F 		.ascii	"_niobs\000"
 12849      627300
 12850              	.LASF325:
 12851 0fcc 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 12851      43393920 
 12851      362E332E 
ARM GAS  /tmp/ccCxIftT.s 			page 285


 12851      31203230 
 12851      31373036 
 12852 0fff 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 12852      76352D64 
 12852      3136202D 
 12852      6D666C6F 
 12852      61742D61 
 12853 1032 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 12853      6E2D7365 
 12853      6374696F 
 12853      6E73202D 
 12853      66646174 
 12854 1065 6F6E7374 		.ascii	"onstant\000"
 12854      616E7400 
 12855              	.LASF148:
 12856 106d 6364635F 		.ascii	"cdc_char_format\000"
 12856      63686172 
 12856      5F666F72 
 12856      6D617400 
 12857              	.LASF54:
 12858 107d 5F5F7362 		.ascii	"__sbuf\000"
 12858      756600
 12859              	.LASF210:
 12860 1084 63616C6C 		.ascii	"callback\000"
 12860      6261636B 
 12860      00
 12861              	.LASF98:
 12862 108d 5F676C75 		.ascii	"_glue\000"
 12862      6500
 12863              	.LASF180:
 12864 1093 7573625F 		.ascii	"usb_dev_desc_t\000"
 12864      6465765F 
 12864      64657363 
 12864      5F7400
 12865              	.LASF235:
 12866 10a2 7564695F 		.ascii	"udi_cdc_write_buf\000"
 12866      6364635F 
 12866      77726974 
 12866      655F6275 
 12866      6600
 12867              	.LASF94:
 12868 10b4 5F5F7367 		.ascii	"__sglue\000"
 12868      6C756500 
 12869              	.LASF117:
 12870 10bc 5F676574 		.ascii	"_getdate_err\000"
 12870      64617465 
 12870      5F657272 
 12870      00
 12871              	.LASF246:
 12872 10c9 7564695F 		.ascii	"udi_cdc_write_buf_loop_wait\000"
 12872      6364635F 
 12872      77726974 
 12872      655F6275 
 12872      665F6C6F 
 12873              	.LASF106:
 12874 10e5 5F737472 		.ascii	"_strtok_last\000"
 12874      746F6B5F 
ARM GAS  /tmp/ccCxIftT.s 			page 286


 12874      6C617374 
 12874      00
 12875              	.LASF113:
 12876 10f2 5F6D6274 		.ascii	"_mbtowc_state\000"
 12876      6F77635F 
 12876      73746174 
 12876      6500
 12877              	.LASF266:
 12878 1100 7564695F 		.ascii	"udi_cdc_get_nb_received_data\000"
 12878      6364635F 
 12878      6765745F 
 12878      6E625F72 
 12878      65636569 
 12879              	.LASF47:
 12880 111d 5F666E61 		.ascii	"_fnargs\000"
 12880      72677300 
 12881              	.LASF1:
 12882 1125 7369676E 		.ascii	"signed char\000"
 12882      65642063 
 12882      68617200 
 12883              	.LASF74:
 12884 1131 5F726565 		.ascii	"_reent\000"
 12884      6E7400
 12885              	.LASF6:
 12886 1138 73686F72 		.ascii	"short unsigned int\000"
 12886      7420756E 
 12886      7369676E 
 12886      65642069 
 12886      6E7400
 12887              	.LASF241:
 12888 114b 7074725F 		.ascii	"ptr_buf\000"
 12888      62756600 
 12889              	.LASF329:
 12890 1153 6D656D63 		.ascii	"memcpy\000"
 12890      707900
 12891              	.LASF203:
 12892 115a 7564635F 		.ascii	"udc_config\000"
 12892      636F6E66 
 12892      696700
 12893              	.LASF283:
 12894 1165 7564695F 		.ascii	"udi_cdc_tx_send\000"
 12894      6364635F 
 12894      74785F73 
 12894      656E6400 
 12895              	.LASF49:
 12896 1175 5F666E74 		.ascii	"_fntypes\000"
 12896      79706573 
 12896      00
 12897              	.LASF160:
 12898 117e 7573625F 		.ascii	"usb_cdc_notify_msg_t\000"
 12898      6364635F 
 12898      6E6F7469 
 12898      66795F6D 
 12898      73675F74 
 12899              	.LASF305:
 12900 1193 636F7265 		.ascii	"core_cdc_set_coding_ext\000"
 12900      5F636463 
ARM GAS  /tmp/ccCxIftT.s 			page 287


 12900      5F736574 
 12900      5F636F64 
 12900      696E675F 
 12901              	.LASF56:
 12902 11ab 5F73697A 		.ascii	"_size\000"
 12902      6500
 12903              	.LASF138:
 12904 11b1 646F7562 		.ascii	"double\000"
 12904      6C6500
 12905              	.LASF292:
 12906 11b8 65705F63 		.ascii	"ep_comm\000"
 12906      6F6D6D00 
 12907              	.LASF179:
 12908 11c0 624E756D 		.ascii	"bNumConfigurations\000"
 12908      436F6E66 
 12908      69677572 
 12908      6174696F 
 12908      6E7300
 12909              	.LASF21:
 12910 11d3 5F6F6666 		.ascii	"_off_t\000"
 12910      5F7400
 12911              	.LASF67:
 12912 11da 5F6E6275 		.ascii	"_nbuf\000"
 12912      6600
 12913              	.LASF105:
 12914 11e0 5F756E75 		.ascii	"_unused_rand\000"
 12914      7365645F 
 12914      72616E64 
 12914      00
 12915              	.LASF189:
 12916 11ed 7573625F 		.ascii	"usb_conf_desc_t\000"
 12916      636F6E66 
 12916      5F646573 
 12916      635F7400 
 12917              	.LASF166:
 12918 11fd 624C656E 		.ascii	"bLength\000"
 12918      67746800 
 12919              	.LASF273:
 12920 1205 625F7365 		.ascii	"b_set\000"
 12920      7400
 12921              	.LASF196:
 12922 120b 64657363 		.ascii	"desc\000"
 12922      00
 12923              	.LASF73:
 12924 1210 5F666C61 		.ascii	"_flags2\000"
 12924      67733200 
 12925              	.LASF197:
 12926 1218 7564695F 		.ascii	"udi_apis\000"
 12926      61706973 
 12926      00
 12927              	.LASF50:
 12928 1221 5F69735F 		.ascii	"_is_cxa\000"
 12928      63786100 
 12929              	.LASF102:
 12930 1229 5F736565 		.ascii	"_seed\000"
 12930      6400
 12931              	.LASF227:
ARM GAS  /tmp/ccCxIftT.s 			page 288


 12932 122f 7564695F 		.ascii	"udi_cdc_rx_trans_ongoing\000"
 12932      6364635F 
 12932      72785F74 
 12932      72616E73 
 12932      5F6F6E67 
 12933              	.LASF110:
 12934 1248 5F72616E 		.ascii	"_rand_next\000"
 12934      645F6E65 
 12934      787400
 12935              	.LASF295:
 12936 1253 7564695F 		.ascii	"udi_cdc_setup_to_port\000"
 12936      6364635F 
 12936      73657475 
 12936      705F746F 
 12936      5F706F72 
 12937              	.LASF64:
 12938 1269 5F736565 		.ascii	"_seek\000"
 12938      6B00
 12939              	.LASF78:
 12940 126f 5F737464 		.ascii	"_stderr\000"
 12940      65727200 
 12941              	.LASF125:
 12942 1277 5F6E6D61 		.ascii	"_nmalloc\000"
 12942      6C6C6F63 
 12942      00
 12943              	.LASF100:
 12944 1280 5F696F62 		.ascii	"_iobs\000"
 12944      7300
 12945              	.LASF218:
 12946 1286 7564695F 		.ascii	"udi_cdc_state\000"
 12946      6364635F 
 12946      73746174 
 12946      6500
 12947              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
