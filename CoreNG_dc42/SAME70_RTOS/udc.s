ARM GAS  /tmp/cc1oZp4Q.s 			page 1


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
  12              		.file	"udc.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.udc_valid_address,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv5-d16
  23              		.type	udc_valid_address, %function
  24              	udc_valid_address:
  25              	.LFB165:
  26              		.file 1 "../asf/common/services/usb/udc/udc.c"
   1:../asf/common/services/usb/udc/udc.c **** /**
   2:../asf/common/services/usb/udc/udc.c ****  * \file
   3:../asf/common/services/usb/udc/udc.c ****  *
   4:../asf/common/services/usb/udc/udc.c ****  * \brief USB Device Controller (UDC)
   5:../asf/common/services/usb/udc/udc.c ****  *
   6:../asf/common/services/usb/udc/udc.c ****  * Copyright (c) 2009-2015 Atmel Corporation. All rights reserved.
   7:../asf/common/services/usb/udc/udc.c ****  *
   8:../asf/common/services/usb/udc/udc.c ****  * \asf_license_start
   9:../asf/common/services/usb/udc/udc.c ****  *
  10:../asf/common/services/usb/udc/udc.c ****  * \page License
  11:../asf/common/services/usb/udc/udc.c ****  *
  12:../asf/common/services/usb/udc/udc.c ****  * Redistribution and use in source and binary forms, with or without
  13:../asf/common/services/usb/udc/udc.c ****  * modification, are permitted provided that the following conditions are met:
  14:../asf/common/services/usb/udc/udc.c ****  *
  15:../asf/common/services/usb/udc/udc.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../asf/common/services/usb/udc/udc.c ****  *    this list of conditions and the following disclaimer.
  17:../asf/common/services/usb/udc/udc.c ****  *
  18:../asf/common/services/usb/udc/udc.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../asf/common/services/usb/udc/udc.c ****  *    this list of conditions and the following disclaimer in the documentation
  20:../asf/common/services/usb/udc/udc.c ****  *    and/or other materials provided with the distribution.
  21:../asf/common/services/usb/udc/udc.c ****  *
  22:../asf/common/services/usb/udc/udc.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../asf/common/services/usb/udc/udc.c ****  *    from this software without specific prior written permission.
  24:../asf/common/services/usb/udc/udc.c ****  *
  25:../asf/common/services/usb/udc/udc.c ****  * 4. This software may only be redistributed and used in connection with an
  26:../asf/common/services/usb/udc/udc.c ****  *    Atmel microcontroller product.
  27:../asf/common/services/usb/udc/udc.c ****  *
  28:../asf/common/services/usb/udc/udc.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../asf/common/services/usb/udc/udc.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../asf/common/services/usb/udc/udc.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
  31:../asf/common/services/usb/udc/udc.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
ARM GAS  /tmp/cc1oZp4Q.s 			page 2


  32:../asf/common/services/usb/udc/udc.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../asf/common/services/usb/udc/udc.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../asf/common/services/usb/udc/udc.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../asf/common/services/usb/udc/udc.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../asf/common/services/usb/udc/udc.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../asf/common/services/usb/udc/udc.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../asf/common/services/usb/udc/udc.c ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../asf/common/services/usb/udc/udc.c ****  *
  40:../asf/common/services/usb/udc/udc.c ****  * \asf_license_stop
  41:../asf/common/services/usb/udc/udc.c ****  *
  42:../asf/common/services/usb/udc/udc.c ****  */
  43:../asf/common/services/usb/udc/udc.c **** /*
  44:../asf/common/services/usb/udc/udc.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../asf/common/services/usb/udc/udc.c ****  */
  46:../asf/common/services/usb/udc/udc.c **** 
  47:../asf/common/services/usb/udc/udc.c **** #include "conf_usb.h"
  48:../asf/common/services/usb/udc/udc.c **** #include "usb_protocol.h"
  49:../asf/common/services/usb/udc/udc.c **** #include "udd.h"
  50:../asf/common/services/usb/udc/udc.c **** #include "udc_desc.h"
  51:../asf/common/services/usb/udc/udc.c **** #include "udi.h"
  52:../asf/common/services/usb/udc/udc.c **** #include "udc.h"
  53:../asf/common/services/usb/udc/udc.c **** 
  54:../asf/common/services/usb/udc/udc.c **** /**
  55:../asf/common/services/usb/udc/udc.c ****  * \ingroup udc_group
  56:../asf/common/services/usb/udc/udc.c ****  * \defgroup udc_group_interne Implementation of UDC
  57:../asf/common/services/usb/udc/udc.c ****  *
  58:../asf/common/services/usb/udc/udc.c ****  * Internal implementation
  59:../asf/common/services/usb/udc/udc.c ****  * @{
  60:../asf/common/services/usb/udc/udc.c ****  */
  61:../asf/common/services/usb/udc/udc.c **** 
  62:../asf/common/services/usb/udc/udc.c **** //! \name Internal variables to manage the USB device
  63:../asf/common/services/usb/udc/udc.c **** //! @{
  64:../asf/common/services/usb/udc/udc.c **** 
  65:../asf/common/services/usb/udc/udc.c **** //! Device status state (see enum usb_device_status in usb_protocol.h)
  66:../asf/common/services/usb/udc/udc.c **** static le16_t udc_device_status;
  67:../asf/common/services/usb/udc/udc.c **** 
  68:../asf/common/services/usb/udc/udc.c **** COMPILER_WORD_ALIGNED
  69:../asf/common/services/usb/udc/udc.c **** //! Device interface setting value
  70:../asf/common/services/usb/udc/udc.c **** static uint8_t udc_iface_setting = 0;
  71:../asf/common/services/usb/udc/udc.c **** 
  72:../asf/common/services/usb/udc/udc.c **** //! Device Configuration number selected by the USB host
  73:../asf/common/services/usb/udc/udc.c **** COMPILER_WORD_ALIGNED
  74:../asf/common/services/usb/udc/udc.c **** static uint8_t udc_num_configuration = 0;
  75:../asf/common/services/usb/udc/udc.c **** 
  76:../asf/common/services/usb/udc/udc.c **** //! Pointer on the selected speed device configuration
  77:../asf/common/services/usb/udc/udc.c **** static udc_config_speed_t UDC_DESC_STORAGE *udc_ptr_conf;
  78:../asf/common/services/usb/udc/udc.c **** 
  79:../asf/common/services/usb/udc/udc.c **** //! Pointer on interface descriptor used by SETUP request.
  80:../asf/common/services/usb/udc/udc.c **** static usb_iface_desc_t UDC_DESC_STORAGE *udc_ptr_iface;
  81:../asf/common/services/usb/udc/udc.c **** 
  82:../asf/common/services/usb/udc/udc.c **** //! @}
  83:../asf/common/services/usb/udc/udc.c **** 
  84:../asf/common/services/usb/udc/udc.c **** 
  85:../asf/common/services/usb/udc/udc.c **** //! \name Internal structure to store the USB device main strings
  86:../asf/common/services/usb/udc/udc.c **** //! @{
  87:../asf/common/services/usb/udc/udc.c **** 
  88:../asf/common/services/usb/udc/udc.c **** /**
ARM GAS  /tmp/cc1oZp4Q.s 			page 3


  89:../asf/common/services/usb/udc/udc.c ****  * \brief Language ID of USB device (US ID by default)
  90:../asf/common/services/usb/udc/udc.c ****  */
  91:../asf/common/services/usb/udc/udc.c **** COMPILER_WORD_ALIGNED
  92:../asf/common/services/usb/udc/udc.c **** static UDC_DESC_STORAGE usb_str_lgid_desc_t udc_string_desc_languageid = {
  93:../asf/common/services/usb/udc/udc.c **** 	.desc.bLength = sizeof(usb_str_lgid_desc_t),
  94:../asf/common/services/usb/udc/udc.c **** 	.desc.bDescriptorType = USB_DT_STRING,
  95:../asf/common/services/usb/udc/udc.c **** 	.string = {LE16(USB_LANGID_EN_US)}
  96:../asf/common/services/usb/udc/udc.c **** };
  97:../asf/common/services/usb/udc/udc.c **** 
  98:../asf/common/services/usb/udc/udc.c **** /**
  99:../asf/common/services/usb/udc/udc.c ****  * \brief USB device manufacture name storage
 100:../asf/common/services/usb/udc/udc.c ****  * String is allocated only if USB_DEVICE_MANUFACTURE_NAME is declared
 101:../asf/common/services/usb/udc/udc.c ****  * by usb application configuration
 102:../asf/common/services/usb/udc/udc.c ****  */
 103:../asf/common/services/usb/udc/udc.c **** #ifdef USB_DEVICE_MANUFACTURE_NAME
 104:../asf/common/services/usb/udc/udc.c **** static uint8_t udc_string_manufacturer_name[] = USB_DEVICE_MANUFACTURE_NAME;
 105:../asf/common/services/usb/udc/udc.c **** #  define USB_DEVICE_MANUFACTURE_NAME_SIZE  \
 106:../asf/common/services/usb/udc/udc.c **** 	(sizeof(udc_string_manufacturer_name)-1)
 107:../asf/common/services/usb/udc/udc.c **** #else
 108:../asf/common/services/usb/udc/udc.c **** #  define USB_DEVICE_MANUFACTURE_NAME_SIZE  0
 109:../asf/common/services/usb/udc/udc.c **** #endif
 110:../asf/common/services/usb/udc/udc.c **** 
 111:../asf/common/services/usb/udc/udc.c **** /**
 112:../asf/common/services/usb/udc/udc.c ****  * \brief USB device product name storage
 113:../asf/common/services/usb/udc/udc.c ****  * String is allocated only if USB_DEVICE_PRODUCT_NAME is declared
 114:../asf/common/services/usb/udc/udc.c ****  * by usb application configuration
 115:../asf/common/services/usb/udc/udc.c ****  */
 116:../asf/common/services/usb/udc/udc.c **** #ifdef USB_DEVICE_PRODUCT_NAME
 117:../asf/common/services/usb/udc/udc.c **** static uint8_t udc_string_product_name[] = USB_DEVICE_PRODUCT_NAME;
 118:../asf/common/services/usb/udc/udc.c **** #  define USB_DEVICE_PRODUCT_NAME_SIZE  (sizeof(udc_string_product_name)-1)
 119:../asf/common/services/usb/udc/udc.c **** #else
 120:../asf/common/services/usb/udc/udc.c **** #  define USB_DEVICE_PRODUCT_NAME_SIZE  0
 121:../asf/common/services/usb/udc/udc.c **** #endif
 122:../asf/common/services/usb/udc/udc.c **** 
 123:../asf/common/services/usb/udc/udc.c **** /**
 124:../asf/common/services/usb/udc/udc.c ****  * \brief Get USB device serial number
 125:../asf/common/services/usb/udc/udc.c ****  *
 126:../asf/common/services/usb/udc/udc.c ****  * Use the define USB_DEVICE_SERIAL_NAME to set static serial number.
 127:../asf/common/services/usb/udc/udc.c ****  *
 128:../asf/common/services/usb/udc/udc.c ****  * For dynamic serial number set the define USB_DEVICE_GET_SERIAL_NAME_POINTER
 129:../asf/common/services/usb/udc/udc.c ****  * to a suitable pointer. This will also require the serial number length
 130:../asf/common/services/usb/udc/udc.c ****  * define USB_DEVICE_GET_SERIAL_NAME_LENGTH.
 131:../asf/common/services/usb/udc/udc.c ****  */
 132:../asf/common/services/usb/udc/udc.c **** #if defined USB_DEVICE_GET_SERIAL_NAME_POINTER
 133:../asf/common/services/usb/udc/udc.c **** 	static const uint8_t *udc_get_string_serial_name(void)
 134:../asf/common/services/usb/udc/udc.c **** 	{
 135:../asf/common/services/usb/udc/udc.c **** 		return (const uint8_t *)USB_DEVICE_GET_SERIAL_NAME_POINTER;
 136:../asf/common/services/usb/udc/udc.c **** 	}
 137:../asf/common/services/usb/udc/udc.c **** #  define USB_DEVICE_SERIAL_NAME_SIZE \
 138:../asf/common/services/usb/udc/udc.c **** 	USB_DEVICE_GET_SERIAL_NAME_LENGTH
 139:../asf/common/services/usb/udc/udc.c **** #elif defined USB_DEVICE_SERIAL_NAME
 140:../asf/common/services/usb/udc/udc.c **** 	static const uint8_t *udc_get_string_serial_name(void)
 141:../asf/common/services/usb/udc/udc.c **** 	{
 142:../asf/common/services/usb/udc/udc.c **** 		return (const uint8_t *)USB_DEVICE_SERIAL_NAME;
 143:../asf/common/services/usb/udc/udc.c **** 	}
 144:../asf/common/services/usb/udc/udc.c **** #  define USB_DEVICE_SERIAL_NAME_SIZE \
 145:../asf/common/services/usb/udc/udc.c **** 	(sizeof(USB_DEVICE_SERIAL_NAME)-1)
ARM GAS  /tmp/cc1oZp4Q.s 			page 4


 146:../asf/common/services/usb/udc/udc.c **** #else
 147:../asf/common/services/usb/udc/udc.c **** #  define USB_DEVICE_SERIAL_NAME_SIZE  0
 148:../asf/common/services/usb/udc/udc.c **** #endif
 149:../asf/common/services/usb/udc/udc.c **** 
 150:../asf/common/services/usb/udc/udc.c **** /**
 151:../asf/common/services/usb/udc/udc.c ****  * \brief USB device string descriptor
 152:../asf/common/services/usb/udc/udc.c ****  * Structure used to transfer ASCII strings to USB String descriptor structure.
 153:../asf/common/services/usb/udc/udc.c ****  */
 154:../asf/common/services/usb/udc/udc.c **** struct udc_string_desc_t {
 155:../asf/common/services/usb/udc/udc.c **** 	usb_str_desc_t header;
 156:../asf/common/services/usb/udc/udc.c **** 	le16_t string[Max(Max(USB_DEVICE_MANUFACTURE_NAME_SIZE, \
 157:../asf/common/services/usb/udc/udc.c **** 			USB_DEVICE_PRODUCT_NAME_SIZE), USB_DEVICE_SERIAL_NAME_SIZE)];
 158:../asf/common/services/usb/udc/udc.c **** };
 159:../asf/common/services/usb/udc/udc.c **** COMPILER_WORD_ALIGNED
 160:../asf/common/services/usb/udc/udc.c **** static UDC_DESC_STORAGE struct udc_string_desc_t udc_string_desc = {
 161:../asf/common/services/usb/udc/udc.c **** 	.header.bDescriptorType = USB_DT_STRING
 162:../asf/common/services/usb/udc/udc.c **** };
 163:../asf/common/services/usb/udc/udc.c **** //! @}
 164:../asf/common/services/usb/udc/udc.c **** 
 165:../asf/common/services/usb/udc/udc.c **** usb_iface_desc_t UDC_DESC_STORAGE *udc_get_interface_desc(void)
 166:../asf/common/services/usb/udc/udc.c **** {
 167:../asf/common/services/usb/udc/udc.c **** 	return udc_ptr_iface;
 168:../asf/common/services/usb/udc/udc.c **** }
 169:../asf/common/services/usb/udc/udc.c **** 
 170:../asf/common/services/usb/udc/udc.c **** /**
 171:../asf/common/services/usb/udc/udc.c ****  * \brief Returns a value to check the end of USB Configuration descriptor
 172:../asf/common/services/usb/udc/udc.c ****  *
 173:../asf/common/services/usb/udc/udc.c ****  * \return address after the last byte of USB Configuration descriptor
 174:../asf/common/services/usb/udc/udc.c ****  */
 175:../asf/common/services/usb/udc/udc.c **** static usb_conf_desc_t UDC_DESC_STORAGE *udc_get_eof_conf(void)
 176:../asf/common/services/usb/udc/udc.c **** {
 177:../asf/common/services/usb/udc/udc.c **** 	return (UDC_DESC_STORAGE usb_conf_desc_t *) ((uint8_t *)
 178:../asf/common/services/usb/udc/udc.c **** 			udc_ptr_conf->desc +
 179:../asf/common/services/usb/udc/udc.c **** 			le16_to_cpu(udc_ptr_conf->desc->wTotalLength));
 180:../asf/common/services/usb/udc/udc.c **** }
 181:../asf/common/services/usb/udc/udc.c **** 
 182:../asf/common/services/usb/udc/udc.c **** #if (0!=USB_DEVICE_MAX_EP)
 183:../asf/common/services/usb/udc/udc.c **** /**
 184:../asf/common/services/usb/udc/udc.c ****  * \brief Search specific descriptor in global interface descriptor
 185:../asf/common/services/usb/udc/udc.c ****  *
 186:../asf/common/services/usb/udc/udc.c ****  * \param desc       Address of interface descriptor
 187:../asf/common/services/usb/udc/udc.c ****  *                   or previous specific descriptor found
 188:../asf/common/services/usb/udc/udc.c ****  * \param desc_id    Descriptor ID to search
 189:../asf/common/services/usb/udc/udc.c ****  *
 190:../asf/common/services/usb/udc/udc.c ****  * \return address of specific descriptor found
 191:../asf/common/services/usb/udc/udc.c ****  * \return NULL if it is the end of global interface descriptor
 192:../asf/common/services/usb/udc/udc.c ****  */
 193:../asf/common/services/usb/udc/udc.c **** static usb_conf_desc_t UDC_DESC_STORAGE *udc_next_desc_in_iface(usb_conf_desc_t
 194:../asf/common/services/usb/udc/udc.c **** 		UDC_DESC_STORAGE * desc, uint8_t desc_id)
 195:../asf/common/services/usb/udc/udc.c **** {
 196:../asf/common/services/usb/udc/udc.c **** 	usb_conf_desc_t UDC_DESC_STORAGE *ptr_eof_desc;
 197:../asf/common/services/usb/udc/udc.c **** 
 198:../asf/common/services/usb/udc/udc.c **** 	ptr_eof_desc = udc_get_eof_conf();
 199:../asf/common/services/usb/udc/udc.c **** 	// Go to next descriptor
 200:../asf/common/services/usb/udc/udc.c **** 	desc = (UDC_DESC_STORAGE usb_conf_desc_t *) ((uint8_t *) desc +
 201:../asf/common/services/usb/udc/udc.c **** 			desc->bLength);
 202:../asf/common/services/usb/udc/udc.c **** 	// Check the end of configuration descriptor
ARM GAS  /tmp/cc1oZp4Q.s 			page 5


 203:../asf/common/services/usb/udc/udc.c **** 	while (ptr_eof_desc > desc) {
 204:../asf/common/services/usb/udc/udc.c **** 		// If new interface descriptor is found,
 205:../asf/common/services/usb/udc/udc.c **** 		// then it is the end of the current global interface descriptor
 206:../asf/common/services/usb/udc/udc.c **** 		if (USB_DT_INTERFACE == desc->bDescriptorType) {
 207:../asf/common/services/usb/udc/udc.c **** 			break; // End of global interface descriptor
 208:../asf/common/services/usb/udc/udc.c **** 		}
 209:../asf/common/services/usb/udc/udc.c **** 		if (desc_id == desc->bDescriptorType) {
 210:../asf/common/services/usb/udc/udc.c **** 			return desc; // Specific descriptor found
 211:../asf/common/services/usb/udc/udc.c **** 		}
 212:../asf/common/services/usb/udc/udc.c **** 		// Go to next descriptor
 213:../asf/common/services/usb/udc/udc.c **** 		desc = (UDC_DESC_STORAGE usb_conf_desc_t *) ((uint8_t *) desc +
 214:../asf/common/services/usb/udc/udc.c **** 				desc->bLength);
 215:../asf/common/services/usb/udc/udc.c **** 	}
 216:../asf/common/services/usb/udc/udc.c **** 	return NULL; // No specific descriptor found
 217:../asf/common/services/usb/udc/udc.c **** }
 218:../asf/common/services/usb/udc/udc.c **** #endif
 219:../asf/common/services/usb/udc/udc.c **** 
 220:../asf/common/services/usb/udc/udc.c **** /**
 221:../asf/common/services/usb/udc/udc.c ****  * \brief Search an interface descriptor
 222:../asf/common/services/usb/udc/udc.c ****  * This routine updates the internal pointer udc_ptr_iface.
 223:../asf/common/services/usb/udc/udc.c ****  *
 224:../asf/common/services/usb/udc/udc.c ****  * \param iface_num     Interface number to find in Configuration Descriptor
 225:../asf/common/services/usb/udc/udc.c ****  * \param setting_num   Setting number of interface to find
 226:../asf/common/services/usb/udc/udc.c ****  *
 227:../asf/common/services/usb/udc/udc.c ****  * \return 1 if found or 0 if not found
 228:../asf/common/services/usb/udc/udc.c ****  */
 229:../asf/common/services/usb/udc/udc.c **** static bool udc_update_iface_desc(uint8_t iface_num, uint8_t setting_num)
 230:../asf/common/services/usb/udc/udc.c **** {
 231:../asf/common/services/usb/udc/udc.c **** 	usb_conf_desc_t UDC_DESC_STORAGE *ptr_end_desc;
 232:../asf/common/services/usb/udc/udc.c **** 
 233:../asf/common/services/usb/udc/udc.c **** 	if (0 == udc_num_configuration) {
 234:../asf/common/services/usb/udc/udc.c **** 		return false;
 235:../asf/common/services/usb/udc/udc.c **** 	}
 236:../asf/common/services/usb/udc/udc.c **** 
 237:../asf/common/services/usb/udc/udc.c **** 	if (iface_num >= udc_ptr_conf->desc->bNumInterfaces) {
 238:../asf/common/services/usb/udc/udc.c **** 		return false;
 239:../asf/common/services/usb/udc/udc.c **** 	}
 240:../asf/common/services/usb/udc/udc.c **** 
 241:../asf/common/services/usb/udc/udc.c **** 	// Start at the beginning of configuration descriptor
 242:../asf/common/services/usb/udc/udc.c **** 	udc_ptr_iface = (UDC_DESC_STORAGE usb_iface_desc_t *)
 243:../asf/common/services/usb/udc/udc.c **** 			udc_ptr_conf->desc;
 244:../asf/common/services/usb/udc/udc.c **** 
 245:../asf/common/services/usb/udc/udc.c **** 	// Check the end of configuration descriptor
 246:../asf/common/services/usb/udc/udc.c **** 	ptr_end_desc = udc_get_eof_conf();
 247:../asf/common/services/usb/udc/udc.c **** 	while (ptr_end_desc >
 248:../asf/common/services/usb/udc/udc.c **** 			(UDC_DESC_STORAGE usb_conf_desc_t *) udc_ptr_iface) {
 249:../asf/common/services/usb/udc/udc.c **** 		if (USB_DT_INTERFACE == udc_ptr_iface->bDescriptorType) {
 250:../asf/common/services/usb/udc/udc.c **** 			// A interface descriptor is found
 251:../asf/common/services/usb/udc/udc.c **** 			// Check interface and alternate setting number
 252:../asf/common/services/usb/udc/udc.c **** 			if ((iface_num == udc_ptr_iface->bInterfaceNumber) &&
 253:../asf/common/services/usb/udc/udc.c **** 					(setting_num ==
 254:../asf/common/services/usb/udc/udc.c **** 					udc_ptr_iface->bAlternateSetting)) {
 255:../asf/common/services/usb/udc/udc.c **** 				return true; // Interface found
 256:../asf/common/services/usb/udc/udc.c **** 			}
 257:../asf/common/services/usb/udc/udc.c **** 		}
 258:../asf/common/services/usb/udc/udc.c **** 		// Go to next descriptor
 259:../asf/common/services/usb/udc/udc.c **** 		udc_ptr_iface = (UDC_DESC_STORAGE usb_iface_desc_t *) (
ARM GAS  /tmp/cc1oZp4Q.s 			page 6


 260:../asf/common/services/usb/udc/udc.c **** 				(uint8_t *) udc_ptr_iface +
 261:../asf/common/services/usb/udc/udc.c **** 				udc_ptr_iface->bLength);
 262:../asf/common/services/usb/udc/udc.c **** 	}
 263:../asf/common/services/usb/udc/udc.c **** 	return false; // Interface not found
 264:../asf/common/services/usb/udc/udc.c **** }
 265:../asf/common/services/usb/udc/udc.c **** 
 266:../asf/common/services/usb/udc/udc.c **** /**
 267:../asf/common/services/usb/udc/udc.c ****  * \brief Disables an usb device interface (UDI)
 268:../asf/common/services/usb/udc/udc.c ****  * This routine call the UDI corresponding to interface number
 269:../asf/common/services/usb/udc/udc.c ****  *
 270:../asf/common/services/usb/udc/udc.c ****  * \param iface_num     Interface number to disable
 271:../asf/common/services/usb/udc/udc.c ****  *
 272:../asf/common/services/usb/udc/udc.c ****  * \return 1 if it is done or 0 if interface is not found
 273:../asf/common/services/usb/udc/udc.c ****  */
 274:../asf/common/services/usb/udc/udc.c **** static bool udc_iface_disable(uint8_t iface_num)
 275:../asf/common/services/usb/udc/udc.c **** {
 276:../asf/common/services/usb/udc/udc.c **** 	udi_api_t UDC_DESC_STORAGE *udi_api;
 277:../asf/common/services/usb/udc/udc.c **** 
 278:../asf/common/services/usb/udc/udc.c **** 	// Select first alternate setting of the interface
 279:../asf/common/services/usb/udc/udc.c **** 	// to update udc_ptr_iface before call iface->getsetting()
 280:../asf/common/services/usb/udc/udc.c **** 	if (!udc_update_iface_desc(iface_num, 0)) {
 281:../asf/common/services/usb/udc/udc.c **** 		return false;
 282:../asf/common/services/usb/udc/udc.c **** 	}
 283:../asf/common/services/usb/udc/udc.c **** 
 284:../asf/common/services/usb/udc/udc.c **** 	// Select the interface with the current alternate setting
 285:../asf/common/services/usb/udc/udc.c **** 	udi_api = udc_ptr_conf->udi_apis[iface_num];
 286:../asf/common/services/usb/udc/udc.c **** 
 287:../asf/common/services/usb/udc/udc.c **** #if (0!=USB_DEVICE_MAX_EP)
 288:../asf/common/services/usb/udc/udc.c **** 	if (!udc_update_iface_desc(iface_num, udi_api->getsetting())) {
 289:../asf/common/services/usb/udc/udc.c **** 		return false;
 290:../asf/common/services/usb/udc/udc.c **** 	}
 291:../asf/common/services/usb/udc/udc.c **** 
 292:../asf/common/services/usb/udc/udc.c **** 	// Start at the beginning of interface descriptor
 293:../asf/common/services/usb/udc/udc.c **** 	{
 294:../asf/common/services/usb/udc/udc.c **** 		usb_ep_desc_t UDC_DESC_STORAGE *ep_desc;
 295:../asf/common/services/usb/udc/udc.c **** 		ep_desc = (UDC_DESC_STORAGE usb_ep_desc_t *) udc_ptr_iface;
 296:../asf/common/services/usb/udc/udc.c **** 		while (1) {
 297:../asf/common/services/usb/udc/udc.c **** 			// Search Endpoint descriptor included in global interface descriptor
 298:../asf/common/services/usb/udc/udc.c **** 			ep_desc = (UDC_DESC_STORAGE usb_ep_desc_t *)
 299:../asf/common/services/usb/udc/udc.c **** 					udc_next_desc_in_iface((UDC_DESC_STORAGE
 300:../asf/common/services/usb/udc/udc.c **** 					usb_conf_desc_t *)
 301:../asf/common/services/usb/udc/udc.c **** 					ep_desc, USB_DT_ENDPOINT);
 302:../asf/common/services/usb/udc/udc.c **** 			if (NULL == ep_desc) {
 303:../asf/common/services/usb/udc/udc.c **** 				break;
 304:../asf/common/services/usb/udc/udc.c **** 			}
 305:../asf/common/services/usb/udc/udc.c **** 			// Free the endpoint used by the interface
 306:../asf/common/services/usb/udc/udc.c **** 			udd_ep_free(ep_desc->bEndpointAddress);
 307:../asf/common/services/usb/udc/udc.c **** 		}
 308:../asf/common/services/usb/udc/udc.c **** 	}
 309:../asf/common/services/usb/udc/udc.c **** #endif
 310:../asf/common/services/usb/udc/udc.c **** 
 311:../asf/common/services/usb/udc/udc.c **** 	// Disable interface
 312:../asf/common/services/usb/udc/udc.c **** 	udi_api->disable();
 313:../asf/common/services/usb/udc/udc.c **** 	return true;
 314:../asf/common/services/usb/udc/udc.c **** }
 315:../asf/common/services/usb/udc/udc.c **** 
 316:../asf/common/services/usb/udc/udc.c **** /**
ARM GAS  /tmp/cc1oZp4Q.s 			page 7


 317:../asf/common/services/usb/udc/udc.c ****  * \brief Enables an usb device interface (UDI)
 318:../asf/common/services/usb/udc/udc.c ****  * This routine calls the UDI corresponding
 319:../asf/common/services/usb/udc/udc.c ****  * to the interface and setting number.
 320:../asf/common/services/usb/udc/udc.c ****  *
 321:../asf/common/services/usb/udc/udc.c ****  * \param iface_num     Interface number to enable
 322:../asf/common/services/usb/udc/udc.c ****  * \param setting_num   Setting number to enable
 323:../asf/common/services/usb/udc/udc.c ****  *
 324:../asf/common/services/usb/udc/udc.c ****  * \return 1 if it is done or 0 if interface is not found
 325:../asf/common/services/usb/udc/udc.c ****  */
 326:../asf/common/services/usb/udc/udc.c **** static bool udc_iface_enable(uint8_t iface_num, uint8_t setting_num)
 327:../asf/common/services/usb/udc/udc.c **** {
 328:../asf/common/services/usb/udc/udc.c **** 	// Select the interface descriptor
 329:../asf/common/services/usb/udc/udc.c **** 	if (!udc_update_iface_desc(iface_num, setting_num)) {
 330:../asf/common/services/usb/udc/udc.c **** 		return false;
 331:../asf/common/services/usb/udc/udc.c **** 	}
 332:../asf/common/services/usb/udc/udc.c **** 
 333:../asf/common/services/usb/udc/udc.c **** #if (0!=USB_DEVICE_MAX_EP)
 334:../asf/common/services/usb/udc/udc.c **** 	usb_ep_desc_t UDC_DESC_STORAGE *ep_desc;
 335:../asf/common/services/usb/udc/udc.c **** 
 336:../asf/common/services/usb/udc/udc.c **** 	// Start at the beginning of the global interface descriptor
 337:../asf/common/services/usb/udc/udc.c **** 	ep_desc = (UDC_DESC_STORAGE usb_ep_desc_t *) udc_ptr_iface;
 338:../asf/common/services/usb/udc/udc.c **** 	while (1) {
 339:../asf/common/services/usb/udc/udc.c **** 		// Search Endpoint descriptor included in the global interface descriptor
 340:../asf/common/services/usb/udc/udc.c **** 		ep_desc = (UDC_DESC_STORAGE usb_ep_desc_t *)
 341:../asf/common/services/usb/udc/udc.c **** 				udc_next_desc_in_iface((UDC_DESC_STORAGE
 342:../asf/common/services/usb/udc/udc.c **** 						usb_conf_desc_t *) ep_desc,
 343:../asf/common/services/usb/udc/udc.c **** 				USB_DT_ENDPOINT);
 344:../asf/common/services/usb/udc/udc.c **** 		if (NULL == ep_desc)
 345:../asf/common/services/usb/udc/udc.c **** 			break;
 346:../asf/common/services/usb/udc/udc.c **** 		// Alloc the endpoint used by the interface
 347:../asf/common/services/usb/udc/udc.c **** 		if (!udd_ep_alloc(ep_desc->bEndpointAddress,
 348:../asf/common/services/usb/udc/udc.c **** 				ep_desc->bmAttributes,
 349:../asf/common/services/usb/udc/udc.c **** 				le16_to_cpu
 350:../asf/common/services/usb/udc/udc.c **** 				(ep_desc->wMaxPacketSize))) {
 351:../asf/common/services/usb/udc/udc.c **** 			return false;
 352:../asf/common/services/usb/udc/udc.c **** 		}
 353:../asf/common/services/usb/udc/udc.c **** 	}
 354:../asf/common/services/usb/udc/udc.c **** #endif
 355:../asf/common/services/usb/udc/udc.c **** 	// Enable the interface
 356:../asf/common/services/usb/udc/udc.c **** 	return udc_ptr_conf->udi_apis[iface_num]->enable();
 357:../asf/common/services/usb/udc/udc.c **** }
 358:../asf/common/services/usb/udc/udc.c **** 
 359:../asf/common/services/usb/udc/udc.c **** /*! \brief Start the USB Device stack
 360:../asf/common/services/usb/udc/udc.c ****  */
 361:../asf/common/services/usb/udc/udc.c **** void udc_start(void)
 362:../asf/common/services/usb/udc/udc.c **** {
 363:../asf/common/services/usb/udc/udc.c **** 	udd_enable();
 364:../asf/common/services/usb/udc/udc.c **** }
 365:../asf/common/services/usb/udc/udc.c **** 
 366:../asf/common/services/usb/udc/udc.c **** /*! \brief Stop the USB Device stack
 367:../asf/common/services/usb/udc/udc.c ****  */
 368:../asf/common/services/usb/udc/udc.c **** void udc_stop(void)
 369:../asf/common/services/usb/udc/udc.c **** {
 370:../asf/common/services/usb/udc/udc.c **** 	udd_disable();
 371:../asf/common/services/usb/udc/udc.c **** 	udc_reset();
 372:../asf/common/services/usb/udc/udc.c **** }
 373:../asf/common/services/usb/udc/udc.c **** 
ARM GAS  /tmp/cc1oZp4Q.s 			page 8


 374:../asf/common/services/usb/udc/udc.c **** /**
 375:../asf/common/services/usb/udc/udc.c ****  * \brief Reset the current configuration of the USB device,
 376:../asf/common/services/usb/udc/udc.c ****  * This routines can be called by UDD when a RESET on the USB line occurs.
 377:../asf/common/services/usb/udc/udc.c ****  */
 378:../asf/common/services/usb/udc/udc.c **** void udc_reset(void)
 379:../asf/common/services/usb/udc/udc.c **** {
 380:../asf/common/services/usb/udc/udc.c **** 	uint8_t iface_num;
 381:../asf/common/services/usb/udc/udc.c **** 
 382:../asf/common/services/usb/udc/udc.c **** 	if (udc_num_configuration) {
 383:../asf/common/services/usb/udc/udc.c **** 		for (iface_num = 0;
 384:../asf/common/services/usb/udc/udc.c **** 				iface_num < udc_ptr_conf->desc->bNumInterfaces;
 385:../asf/common/services/usb/udc/udc.c **** 				iface_num++) {
 386:../asf/common/services/usb/udc/udc.c **** 			udc_iface_disable(iface_num);
 387:../asf/common/services/usb/udc/udc.c **** 		}
 388:../asf/common/services/usb/udc/udc.c **** 	}
 389:../asf/common/services/usb/udc/udc.c **** 	udc_num_configuration = 0;
 390:../asf/common/services/usb/udc/udc.c **** #if (USB_CONFIG_ATTR_REMOTE_WAKEUP \
 391:../asf/common/services/usb/udc/udc.c **** 	== (USB_DEVICE_ATTR & USB_CONFIG_ATTR_REMOTE_WAKEUP))
 392:../asf/common/services/usb/udc/udc.c **** 	if (CPU_TO_LE16(USB_DEV_STATUS_REMOTEWAKEUP) & udc_device_status) {
 393:../asf/common/services/usb/udc/udc.c **** 		// Remote wakeup is enabled then disable it
 394:../asf/common/services/usb/udc/udc.c **** 		UDC_REMOTEWAKEUP_DISABLE();
 395:../asf/common/services/usb/udc/udc.c **** 	}
 396:../asf/common/services/usb/udc/udc.c **** #endif
 397:../asf/common/services/usb/udc/udc.c **** 	udc_device_status =
 398:../asf/common/services/usb/udc/udc.c **** #if (USB_DEVICE_ATTR & USB_CONFIG_ATTR_SELF_POWERED)
 399:../asf/common/services/usb/udc/udc.c **** 			CPU_TO_LE16(USB_DEV_STATUS_SELF_POWERED);
 400:../asf/common/services/usb/udc/udc.c **** #else
 401:../asf/common/services/usb/udc/udc.c **** 			CPU_TO_LE16(USB_DEV_STATUS_BUS_POWERED);
 402:../asf/common/services/usb/udc/udc.c **** #endif
 403:../asf/common/services/usb/udc/udc.c **** }
 404:../asf/common/services/usb/udc/udc.c **** 
 405:../asf/common/services/usb/udc/udc.c **** void udc_sof_notify(void)
 406:../asf/common/services/usb/udc/udc.c **** {
 407:../asf/common/services/usb/udc/udc.c **** 	uint8_t iface_num;
 408:../asf/common/services/usb/udc/udc.c **** 
 409:../asf/common/services/usb/udc/udc.c **** 	if (udc_num_configuration) {
 410:../asf/common/services/usb/udc/udc.c **** 		for (iface_num = 0;
 411:../asf/common/services/usb/udc/udc.c **** 				iface_num < udc_ptr_conf->desc->bNumInterfaces;
 412:../asf/common/services/usb/udc/udc.c **** 				iface_num++) {
 413:../asf/common/services/usb/udc/udc.c **** 			if (udc_ptr_conf->udi_apis[iface_num]->sof_notify != NULL) {
 414:../asf/common/services/usb/udc/udc.c **** 				udc_ptr_conf->udi_apis[iface_num]->sof_notify();
 415:../asf/common/services/usb/udc/udc.c **** 			}
 416:../asf/common/services/usb/udc/udc.c **** 		}
 417:../asf/common/services/usb/udc/udc.c **** 	}
 418:../asf/common/services/usb/udc/udc.c **** }
 419:../asf/common/services/usb/udc/udc.c **** 
 420:../asf/common/services/usb/udc/udc.c **** /**
 421:../asf/common/services/usb/udc/udc.c ****  * \brief Standard device request to get device status
 422:../asf/common/services/usb/udc/udc.c ****  *
 423:../asf/common/services/usb/udc/udc.c ****  * \return true if success
 424:../asf/common/services/usb/udc/udc.c ****  */
 425:../asf/common/services/usb/udc/udc.c **** static bool udc_req_std_dev_get_status(void)
 426:../asf/common/services/usb/udc/udc.c **** {
 427:../asf/common/services/usb/udc/udc.c **** 	if (udd_g_ctrlreq.req.wLength != sizeof(udc_device_status)) {
 428:../asf/common/services/usb/udc/udc.c **** 		return false;
 429:../asf/common/services/usb/udc/udc.c **** 	}
 430:../asf/common/services/usb/udc/udc.c **** 
ARM GAS  /tmp/cc1oZp4Q.s 			page 9


 431:../asf/common/services/usb/udc/udc.c **** 	udd_set_setup_payload( (uint8_t *) & udc_device_status,
 432:../asf/common/services/usb/udc/udc.c **** 			sizeof(udc_device_status));
 433:../asf/common/services/usb/udc/udc.c **** 	return true;
 434:../asf/common/services/usb/udc/udc.c **** }
 435:../asf/common/services/usb/udc/udc.c **** 
 436:../asf/common/services/usb/udc/udc.c **** #if (0!=USB_DEVICE_MAX_EP)
 437:../asf/common/services/usb/udc/udc.c **** /**
 438:../asf/common/services/usb/udc/udc.c ****  * \brief Standard endpoint request to get endpoint status
 439:../asf/common/services/usb/udc/udc.c ****  *
 440:../asf/common/services/usb/udc/udc.c ****  * \return true if success
 441:../asf/common/services/usb/udc/udc.c ****  */
 442:../asf/common/services/usb/udc/udc.c **** static bool udc_req_std_ep_get_status(void)
 443:../asf/common/services/usb/udc/udc.c **** {
 444:../asf/common/services/usb/udc/udc.c **** 	static le16_t udc_ep_status;
 445:../asf/common/services/usb/udc/udc.c **** 
 446:../asf/common/services/usb/udc/udc.c **** 	if (udd_g_ctrlreq.req.wLength != sizeof(udc_ep_status)) {
 447:../asf/common/services/usb/udc/udc.c **** 		return false;
 448:../asf/common/services/usb/udc/udc.c **** 	}
 449:../asf/common/services/usb/udc/udc.c **** 
 450:../asf/common/services/usb/udc/udc.c **** 	udc_ep_status = udd_ep_is_halted(udd_g_ctrlreq.req.
 451:../asf/common/services/usb/udc/udc.c **** 			wIndex & 0xFF) ? CPU_TO_LE16(USB_EP_STATUS_HALTED) : 0;
 452:../asf/common/services/usb/udc/udc.c **** 
 453:../asf/common/services/usb/udc/udc.c **** 	udd_set_setup_payload( (uint8_t *) & udc_ep_status,
 454:../asf/common/services/usb/udc/udc.c **** 			sizeof(udc_ep_status));
 455:../asf/common/services/usb/udc/udc.c **** 	return true;
 456:../asf/common/services/usb/udc/udc.c **** }
 457:../asf/common/services/usb/udc/udc.c **** #endif
 458:../asf/common/services/usb/udc/udc.c **** 
 459:../asf/common/services/usb/udc/udc.c **** /**
 460:../asf/common/services/usb/udc/udc.c ****  * \brief Standard device request to change device status
 461:../asf/common/services/usb/udc/udc.c ****  *
 462:../asf/common/services/usb/udc/udc.c ****  * \return true if success
 463:../asf/common/services/usb/udc/udc.c ****  */
 464:../asf/common/services/usb/udc/udc.c **** static bool udc_req_std_dev_clear_feature(void)
 465:../asf/common/services/usb/udc/udc.c **** {
 466:../asf/common/services/usb/udc/udc.c **** 	if (udd_g_ctrlreq.req.wLength) {
 467:../asf/common/services/usb/udc/udc.c **** 		return false;
 468:../asf/common/services/usb/udc/udc.c **** 	}
 469:../asf/common/services/usb/udc/udc.c **** 
 470:../asf/common/services/usb/udc/udc.c **** 	if (udd_g_ctrlreq.req.wValue == USB_DEV_FEATURE_REMOTE_WAKEUP) {
 471:../asf/common/services/usb/udc/udc.c **** 		udc_device_status &= CPU_TO_LE16(~(uint32_t)USB_DEV_STATUS_REMOTEWAKEUP);
 472:../asf/common/services/usb/udc/udc.c **** #if (USB_CONFIG_ATTR_REMOTE_WAKEUP \
 473:../asf/common/services/usb/udc/udc.c **** 	== (USB_DEVICE_ATTR & USB_CONFIG_ATTR_REMOTE_WAKEUP))
 474:../asf/common/services/usb/udc/udc.c **** 		UDC_REMOTEWAKEUP_DISABLE();
 475:../asf/common/services/usb/udc/udc.c **** #endif
 476:../asf/common/services/usb/udc/udc.c **** 		return true;
 477:../asf/common/services/usb/udc/udc.c **** 	}
 478:../asf/common/services/usb/udc/udc.c **** 	return false;
 479:../asf/common/services/usb/udc/udc.c **** }
 480:../asf/common/services/usb/udc/udc.c **** 
 481:../asf/common/services/usb/udc/udc.c **** #if (0!=USB_DEVICE_MAX_EP)
 482:../asf/common/services/usb/udc/udc.c **** /**
 483:../asf/common/services/usb/udc/udc.c ****  * \brief Standard endpoint request to clear endpoint feature
 484:../asf/common/services/usb/udc/udc.c ****  *
 485:../asf/common/services/usb/udc/udc.c ****  * \return true if success
 486:../asf/common/services/usb/udc/udc.c ****  */
 487:../asf/common/services/usb/udc/udc.c **** static bool udc_req_std_ep_clear_feature(void)
ARM GAS  /tmp/cc1oZp4Q.s 			page 10


 488:../asf/common/services/usb/udc/udc.c **** {
 489:../asf/common/services/usb/udc/udc.c **** 	if (udd_g_ctrlreq.req.wLength) {
 490:../asf/common/services/usb/udc/udc.c **** 		return false;
 491:../asf/common/services/usb/udc/udc.c **** 	}
 492:../asf/common/services/usb/udc/udc.c **** 
 493:../asf/common/services/usb/udc/udc.c **** 	if (udd_g_ctrlreq.req.wValue == USB_EP_FEATURE_HALT) {
 494:../asf/common/services/usb/udc/udc.c **** 		return udd_ep_clear_halt(udd_g_ctrlreq.req.wIndex & 0xFF);
 495:../asf/common/services/usb/udc/udc.c **** 	}
 496:../asf/common/services/usb/udc/udc.c **** 	return false;
 497:../asf/common/services/usb/udc/udc.c **** }
 498:../asf/common/services/usb/udc/udc.c **** #endif
 499:../asf/common/services/usb/udc/udc.c **** 
 500:../asf/common/services/usb/udc/udc.c **** /**
 501:../asf/common/services/usb/udc/udc.c ****  * \brief Standard device request to set a feature
 502:../asf/common/services/usb/udc/udc.c ****  *
 503:../asf/common/services/usb/udc/udc.c ****  * \return true if success
 504:../asf/common/services/usb/udc/udc.c ****  */
 505:../asf/common/services/usb/udc/udc.c **** static bool udc_req_std_dev_set_feature(void)
 506:../asf/common/services/usb/udc/udc.c **** {
 507:../asf/common/services/usb/udc/udc.c **** 	if (udd_g_ctrlreq.req.wLength) {
 508:../asf/common/services/usb/udc/udc.c **** 		return false;
 509:../asf/common/services/usb/udc/udc.c **** 	}
 510:../asf/common/services/usb/udc/udc.c **** 
 511:../asf/common/services/usb/udc/udc.c **** 	switch (udd_g_ctrlreq.req.wValue) {
 512:../asf/common/services/usb/udc/udc.c **** 
 513:../asf/common/services/usb/udc/udc.c **** 	case USB_DEV_FEATURE_REMOTE_WAKEUP:
 514:../asf/common/services/usb/udc/udc.c **** #if (USB_CONFIG_ATTR_REMOTE_WAKEUP \
 515:../asf/common/services/usb/udc/udc.c **** 	== (USB_DEVICE_ATTR & USB_CONFIG_ATTR_REMOTE_WAKEUP))
 516:../asf/common/services/usb/udc/udc.c **** 		udc_device_status |= CPU_TO_LE16(USB_DEV_STATUS_REMOTEWAKEUP);
 517:../asf/common/services/usb/udc/udc.c **** 		UDC_REMOTEWAKEUP_ENABLE();
 518:../asf/common/services/usb/udc/udc.c **** 		return true;
 519:../asf/common/services/usb/udc/udc.c **** #else
 520:../asf/common/services/usb/udc/udc.c **** 		return false;
 521:../asf/common/services/usb/udc/udc.c **** #endif
 522:../asf/common/services/usb/udc/udc.c **** 
 523:../asf/common/services/usb/udc/udc.c **** #ifdef USB_DEVICE_HS_SUPPORT
 524:../asf/common/services/usb/udc/udc.c **** 	case USB_DEV_FEATURE_TEST_MODE:
 525:../asf/common/services/usb/udc/udc.c **** 		if (!udd_is_high_speed()) {
 526:../asf/common/services/usb/udc/udc.c **** 			break;
 527:../asf/common/services/usb/udc/udc.c **** 		}
 528:../asf/common/services/usb/udc/udc.c **** 		if (udd_g_ctrlreq.req.wIndex & 0xff) {
 529:../asf/common/services/usb/udc/udc.c **** 			break;
 530:../asf/common/services/usb/udc/udc.c **** 		}
 531:../asf/common/services/usb/udc/udc.c **** 		// Unconfigure the device, terminating all ongoing requests
 532:../asf/common/services/usb/udc/udc.c **** 		udc_reset();
 533:../asf/common/services/usb/udc/udc.c **** 		switch ((udd_g_ctrlreq.req.wIndex >> 8) & 0xFF) {
 534:../asf/common/services/usb/udc/udc.c **** 		case USB_DEV_TEST_MODE_J:
 535:../asf/common/services/usb/udc/udc.c **** 			udd_g_ctrlreq.callback = udd_test_mode_j;
 536:../asf/common/services/usb/udc/udc.c **** 			return true;
 537:../asf/common/services/usb/udc/udc.c **** 
 538:../asf/common/services/usb/udc/udc.c **** 		case USB_DEV_TEST_MODE_K:
 539:../asf/common/services/usb/udc/udc.c **** 			udd_g_ctrlreq.callback = udd_test_mode_k;
 540:../asf/common/services/usb/udc/udc.c **** 			return true;
 541:../asf/common/services/usb/udc/udc.c **** 
 542:../asf/common/services/usb/udc/udc.c **** 		case USB_DEV_TEST_MODE_SE0_NAK:
 543:../asf/common/services/usb/udc/udc.c **** 			udd_g_ctrlreq.callback = udd_test_mode_se0_nak;
 544:../asf/common/services/usb/udc/udc.c **** 			return true;
ARM GAS  /tmp/cc1oZp4Q.s 			page 11


 545:../asf/common/services/usb/udc/udc.c **** 
 546:../asf/common/services/usb/udc/udc.c **** 		case USB_DEV_TEST_MODE_PACKET:
 547:../asf/common/services/usb/udc/udc.c **** 			udd_g_ctrlreq.callback = udd_test_mode_packet;
 548:../asf/common/services/usb/udc/udc.c **** 			return true;
 549:../asf/common/services/usb/udc/udc.c **** 
 550:../asf/common/services/usb/udc/udc.c **** 		case USB_DEV_TEST_MODE_FORCE_ENABLE: // Only for downstream facing hub ports
 551:../asf/common/services/usb/udc/udc.c **** 		default:
 552:../asf/common/services/usb/udc/udc.c **** 			break;
 553:../asf/common/services/usb/udc/udc.c **** 		}
 554:../asf/common/services/usb/udc/udc.c **** 		break;
 555:../asf/common/services/usb/udc/udc.c **** #endif
 556:../asf/common/services/usb/udc/udc.c **** 	default:
 557:../asf/common/services/usb/udc/udc.c **** 		break;
 558:../asf/common/services/usb/udc/udc.c **** 	}
 559:../asf/common/services/usb/udc/udc.c **** 	return false;
 560:../asf/common/services/usb/udc/udc.c **** }
 561:../asf/common/services/usb/udc/udc.c **** 
 562:../asf/common/services/usb/udc/udc.c **** /**
 563:../asf/common/services/usb/udc/udc.c ****  * \brief Standard endpoint request to halt an endpoint
 564:../asf/common/services/usb/udc/udc.c ****  *
 565:../asf/common/services/usb/udc/udc.c ****  * \return true if success
 566:../asf/common/services/usb/udc/udc.c ****  */
 567:../asf/common/services/usb/udc/udc.c **** #if (0!=USB_DEVICE_MAX_EP)
 568:../asf/common/services/usb/udc/udc.c **** static bool udc_req_std_ep_set_feature(void)
 569:../asf/common/services/usb/udc/udc.c **** {
 570:../asf/common/services/usb/udc/udc.c **** 	if (udd_g_ctrlreq.req.wLength) {
 571:../asf/common/services/usb/udc/udc.c **** 		return false;
 572:../asf/common/services/usb/udc/udc.c **** 	}
 573:../asf/common/services/usb/udc/udc.c **** 	if (udd_g_ctrlreq.req.wValue == USB_EP_FEATURE_HALT) {
 574:../asf/common/services/usb/udc/udc.c **** 		udd_ep_abort(udd_g_ctrlreq.req.wIndex & 0xFF);
 575:../asf/common/services/usb/udc/udc.c **** 		return udd_ep_set_halt(udd_g_ctrlreq.req.wIndex & 0xFF);
 576:../asf/common/services/usb/udc/udc.c **** 	}
 577:../asf/common/services/usb/udc/udc.c **** 	return false;
 578:../asf/common/services/usb/udc/udc.c **** }
 579:../asf/common/services/usb/udc/udc.c **** #endif
 580:../asf/common/services/usb/udc/udc.c **** 
 581:../asf/common/services/usb/udc/udc.c **** /**
 582:../asf/common/services/usb/udc/udc.c ****  * \brief Change the address of device
 583:../asf/common/services/usb/udc/udc.c ****  * Callback called at the end of request set address
 584:../asf/common/services/usb/udc/udc.c ****  */
 585:../asf/common/services/usb/udc/udc.c **** static void udc_valid_address(void)
 586:../asf/common/services/usb/udc/udc.c **** {
  27              		.loc 1 586 0
  28              		.cfi_startproc
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 0, uses_anonymous_args = 0
  31              		@ link register save eliminated.
 587:../asf/common/services/usb/udc/udc.c **** 	udd_set_address(udd_g_ctrlreq.req.wValue & 0x7F);
  32              		.loc 1 587 0
  33 0000 024B     		ldr	r3, .L2
  34 0002 9878     		ldrb	r0, [r3, #2]	@ zero_extendqisi2
  35 0004 00F07F00 		and	r0, r0, #127
  36 0008 FFF7FEBF 		b	udd_set_address
  37              	.LVL0:
  38              	.L3:
  39              		.align	2
  40              	.L2:
ARM GAS  /tmp/cc1oZp4Q.s 			page 12


  41 000c 00000000 		.word	udd_g_ctrlreq
  42              		.cfi_endproc
  43              	.LFE165:
  44              		.size	udc_valid_address, .-udc_valid_address
  45              		.section	.text.udc_update_iface_desc.part.0,"ax",%progbits
  46              		.align	1
  47              		.p2align 2,,3
  48              		.syntax unified
  49              		.thumb
  50              		.thumb_func
  51              		.fpu fpv5-d16
  52              		.type	udc_update_iface_desc.part.0, %function
  53              	udc_update_iface_desc.part.0:
  54              	.LFB177:
 229:../asf/common/services/usb/udc/udc.c **** {
  55              		.loc 1 229 0
  56              		.cfi_startproc
  57              		@ args = 0, pretend = 0, frame = 0
  58              		@ frame_needed = 0, uses_anonymous_args = 0
  59              		@ link register save eliminated.
  60              	.LVL1:
 237:../asf/common/services/usb/udc/udc.c **** 		return false;
  61              		.loc 1 237 0
  62 0000 134B     		ldr	r3, .L23
  63 0002 1B68     		ldr	r3, [r3]
  64 0004 1B68     		ldr	r3, [r3]
  65 0006 1A79     		ldrb	r2, [r3, #4]	@ zero_extendqisi2
  66 0008 8242     		cmp	r2, r0
  67 000a 1DD9     		bls	.L20
 229:../asf/common/services/usb/udc/udc.c **** {
  68              		.loc 1 229 0
  69 000c 70B4     		push	{r4, r5, r6}
  70              		.cfi_def_cfa_offset 12
  71              		.cfi_offset 4, -12
  72              		.cfi_offset 5, -8
  73              		.cfi_offset 6, -4
 242:../asf/common/services/usb/udc/udc.c **** 			udc_ptr_conf->desc;
  74              		.loc 1 242 0
  75 000e 114E     		ldr	r6, .L23+4
  76 0010 3360     		str	r3, [r6]
  77              	.LBB56:
  78              	.LBB57:
 179:../asf/common/services/usb/udc/udc.c **** }
  79              		.loc 1 179 0
  80 0012 5C88     		ldrh	r4, [r3, #2]	@ unaligned
 177:../asf/common/services/usb/udc/udc.c **** 			udc_ptr_conf->desc +
  81              		.loc 1 177 0
  82 0014 1C44     		add	r4, r4, r3
  83              	.LBE57:
  84              	.LBE56:
 247:../asf/common/services/usb/udc/udc.c **** 			(UDC_DESC_STORAGE usb_conf_desc_t *) udc_ptr_iface) {
  85              		.loc 1 247 0
  86 0016 A342     		cmp	r3, r4
  87 0018 13D2     		bcs	.L7
  88 001a 0025     		movs	r5, #0
  89 001c 04E0     		b	.L10
  90              	.L8:
ARM GAS  /tmp/cc1oZp4Q.s 			page 13


 261:../asf/common/services/usb/udc/udc.c **** 	}
  91              		.loc 1 261 0
  92 001e 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
  93 0020 0125     		movs	r5, #1
 259:../asf/common/services/usb/udc/udc.c **** 				(uint8_t *) udc_ptr_iface +
  94              		.loc 1 259 0
  95 0022 1344     		add	r3, r3, r2
 247:../asf/common/services/usb/udc/udc.c **** 			(UDC_DESC_STORAGE usb_conf_desc_t *) udc_ptr_iface) {
  96              		.loc 1 247 0
  97 0024 9C42     		cmp	r4, r3
  98 0026 0BD9     		bls	.L21
  99              	.L10:
 249:../asf/common/services/usb/udc/udc.c **** 			// A interface descriptor is found
 100              		.loc 1 249 0
 101 0028 5A78     		ldrb	r2, [r3, #1]	@ zero_extendqisi2
 102 002a 042A     		cmp	r2, #4
 103 002c F7D1     		bne	.L8
 252:../asf/common/services/usb/udc/udc.c **** 					(setting_num ==
 104              		.loc 1 252 0
 105 002e 9A78     		ldrb	r2, [r3, #2]	@ zero_extendqisi2
 106 0030 8242     		cmp	r2, r0
 107 0032 F4D1     		bne	.L8
 108 0034 DA78     		ldrb	r2, [r3, #3]	@ zero_extendqisi2
 109 0036 8A42     		cmp	r2, r1
 110 0038 F1D1     		bne	.L8
 111 003a 3DB9     		cbnz	r5, .L22
 112              	.L9:
 255:../asf/common/services/usb/udc/udc.c **** 			}
 113              		.loc 1 255 0
 114 003c 0120     		movs	r0, #1
 115              	.LVL2:
 116 003e 01E0     		b	.L6
 117              	.LVL3:
 118              	.L21:
 119 0040 3360     		str	r3, [r6]
 120              	.L7:
 238:../asf/common/services/usb/udc/udc.c **** 	}
 121              		.loc 1 238 0
 122 0042 0020     		movs	r0, #0
 123              	.LVL4:
 124              	.L6:
 264:../asf/common/services/usb/udc/udc.c **** 
 125              		.loc 1 264 0
 126 0044 70BC     		pop	{r4, r5, r6}
 127              		.cfi_restore 6
 128              		.cfi_restore 5
 129              		.cfi_restore 4
 130              		.cfi_def_cfa_offset 0
 131 0046 7047     		bx	lr
 132              	.LVL5:
 133              	.L20:
 238:../asf/common/services/usb/udc/udc.c **** 	}
 134              		.loc 1 238 0
 135 0048 0020     		movs	r0, #0
 136              	.LVL6:
 264:../asf/common/services/usb/udc/udc.c **** 
 137              		.loc 1 264 0
ARM GAS  /tmp/cc1oZp4Q.s 			page 14


 138 004a 7047     		bx	lr
 139              	.LVL7:
 140              	.L22:
 141              		.cfi_def_cfa_offset 12
 142              		.cfi_offset 4, -12
 143              		.cfi_offset 5, -8
 144              		.cfi_offset 6, -4
 145 004c 3360     		str	r3, [r6]
 146 004e F5E7     		b	.L9
 147              	.L24:
 148              		.align	2
 149              	.L23:
 150 0050 00000000 		.word	.LANCHOR0
 151 0054 00000000 		.word	.LANCHOR1
 152              		.cfi_endproc
 153              	.LFE177:
 154              		.size	udc_update_iface_desc.part.0, .-udc_update_iface_desc.part.0
 155              		.section	.text.udc_iface_disable,"ax",%progbits
 156              		.align	1
 157              		.p2align 2,,3
 158              		.syntax unified
 159              		.thumb
 160              		.thumb_func
 161              		.fpu fpv5-d16
 162              		.type	udc_iface_disable, %function
 163              	udc_iface_disable:
 164              	.LFB153:
 275:../asf/common/services/usb/udc/udc.c **** 	udi_api_t UDC_DESC_STORAGE *udi_api;
 165              		.loc 1 275 0
 166              		.cfi_startproc
 167              		@ args = 0, pretend = 0, frame = 0
 168              		@ frame_needed = 0, uses_anonymous_args = 0
 169              	.LVL8:
 170 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 171              		.cfi_def_cfa_offset 24
 172              		.cfi_offset 3, -24
 173              		.cfi_offset 4, -20
 174              		.cfi_offset 5, -16
 175              		.cfi_offset 6, -12
 176              		.cfi_offset 7, -8
 177              		.cfi_offset 14, -4
 178              	.LBB71:
 179              	.LBB72:
 233:../asf/common/services/usb/udc/udc.c **** 		return false;
 180              		.loc 1 233 0
 181 0002 1C4C     		ldr	r4, .L63
 182              	.LVL9:
 183 0004 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 184 0006 13B9     		cbnz	r3, .L61
 185              	.LVL10:
 186              	.L26:
 187              	.LBE72:
 188              	.LBE71:
 281:../asf/common/services/usb/udc/udc.c **** 	}
 189              		.loc 1 281 0
 190 0008 0026     		movs	r6, #0
 314:../asf/common/services/usb/udc/udc.c **** 
ARM GAS  /tmp/cc1oZp4Q.s 			page 15


 191              		.loc 1 314 0
 192 000a 3046     		mov	r0, r6
 193 000c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 194              	.LVL11:
 195              	.L61:
 196              	.LBB74:
 197              	.LBB73:
 198 000e 0021     		movs	r1, #0
 199 0010 0646     		mov	r6, r0
 200 0012 FFF7FEFF 		bl	udc_update_iface_desc.part.0
 201              	.LVL12:
 202              	.LBE73:
 203              	.LBE74:
 280:../asf/common/services/usb/udc/udc.c **** 		return false;
 204              		.loc 1 280 0
 205 0016 0028     		cmp	r0, #0
 206 0018 F6D0     		beq	.L26
 207              	.LVL13:
 208              	.LBB75:
 209              	.LBB76:
 285:../asf/common/services/usb/udc/udc.c **** 
 210              		.loc 1 285 0
 211 001a 174F     		ldr	r7, .L63+4
 212 001c 3B68     		ldr	r3, [r7]
 213 001e 5B68     		ldr	r3, [r3, #4]
 214 0020 53F82650 		ldr	r5, [r3, r6, lsl #2]
 215              	.LVL14:
 288:../asf/common/services/usb/udc/udc.c **** 		return false;
 216              		.loc 1 288 0
 217 0024 EB68     		ldr	r3, [r5, #12]
 218 0026 9847     		blx	r3
 219              	.LVL15:
 220              	.LBB77:
 221              	.LBB78:
 233:../asf/common/services/usb/udc/udc.c **** 		return false;
 222              		.loc 1 233 0
 223 0028 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 224 002a 002B     		cmp	r3, #0
 225 002c ECD0     		beq	.L26
 226 002e 0146     		mov	r1, r0
 227 0030 3046     		mov	r0, r6
 228              	.LVL16:
 229 0032 FFF7FEFF 		bl	udc_update_iface_desc.part.0
 230              	.LVL17:
 231              	.LBE78:
 232              	.LBE77:
 288:../asf/common/services/usb/udc/udc.c **** 		return false;
 233              		.loc 1 288 0
 234 0036 0646     		mov	r6, r0
 235              	.LVL18:
 236 0038 0028     		cmp	r0, #0
 237 003a E5D0     		beq	.L26
 238              	.LBB79:
 295:../asf/common/services/usb/udc/udc.c **** 		while (1) {
 239              		.loc 1 295 0
 240 003c 0F4B     		ldr	r3, .L63+8
 241 003e 1C68     		ldr	r4, [r3]
ARM GAS  /tmp/cc1oZp4Q.s 			page 16


 242              	.LVL19:
 243              	.L32:
 244              	.LBB80:
 245              	.LBB81:
 246              	.LBB82:
 247              	.LBB83:
 178:../asf/common/services/usb/udc/udc.c **** 			le16_to_cpu(udc_ptr_conf->desc->wTotalLength));
 248              		.loc 1 178 0
 249 0040 3A68     		ldr	r2, [r7]
 250              	.LBE83:
 251              	.LBE82:
 201:../asf/common/services/usb/udc/udc.c **** 	// Check the end of configuration descriptor
 252              		.loc 1 201 0
 253 0042 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 254              	.LBB86:
 255              	.LBB84:
 178:../asf/common/services/usb/udc/udc.c **** 			le16_to_cpu(udc_ptr_conf->desc->wTotalLength));
 256              		.loc 1 178 0
 257 0044 1268     		ldr	r2, [r2]
 258              	.LBE84:
 259              	.LBE86:
 200:../asf/common/services/usb/udc/udc.c **** 			desc->bLength);
 260              		.loc 1 200 0
 261 0046 1C44     		add	r4, r4, r3
 262              	.LVL20:
 263              	.LBB87:
 264              	.LBB85:
 179:../asf/common/services/usb/udc/udc.c **** }
 265              		.loc 1 179 0
 266 0048 5388     		ldrh	r3, [r2, #2]	@ unaligned
 177:../asf/common/services/usb/udc/udc.c **** 			udc_ptr_conf->desc +
 267              		.loc 1 177 0
 268 004a 1A44     		add	r2, r2, r3
 269              	.LVL21:
 270              	.LBE85:
 271              	.LBE87:
 203:../asf/common/services/usb/udc/udc.c **** 		// If new interface descriptor is found,
 272              		.loc 1 203 0
 273 004c A242     		cmp	r2, r4
 274 004e 06D8     		bhi	.L31
 275 0050 08E0     		b	.L27
 276              	.L62:
 209:../asf/common/services/usb/udc/udc.c **** 			return desc; // Specific descriptor found
 277              		.loc 1 209 0
 278 0052 052B     		cmp	r3, #5
 279 0054 0AD0     		beq	.L28
 214:../asf/common/services/usb/udc/udc.c **** 	}
 280              		.loc 1 214 0
 281 0056 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 213:../asf/common/services/usb/udc/udc.c **** 				desc->bLength);
 282              		.loc 1 213 0
 283 0058 1C44     		add	r4, r4, r3
 284              	.LVL22:
 203:../asf/common/services/usb/udc/udc.c **** 		// If new interface descriptor is found,
 285              		.loc 1 203 0
 286 005a A242     		cmp	r2, r4
 287 005c 02D9     		bls	.L27
ARM GAS  /tmp/cc1oZp4Q.s 			page 17


 288              	.L31:
 206:../asf/common/services/usb/udc/udc.c **** 			break; // End of global interface descriptor
 289              		.loc 1 206 0
 290 005e 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 291 0060 042B     		cmp	r3, #4
 292 0062 F6D1     		bne	.L62
 293              	.L27:
 294              	.LVL23:
 295              	.LBE81:
 296              	.LBE80:
 297              	.LBE79:
 312:../asf/common/services/usb/udc/udc.c **** 	return true;
 298              		.loc 1 312 0
 299 0064 6B68     		ldr	r3, [r5, #4]
 300 0066 9847     		blx	r3
 301              	.LVL24:
 302              	.LBE76:
 303              	.LBE75:
 314:../asf/common/services/usb/udc/udc.c **** 
 304              		.loc 1 314 0
 305 0068 3046     		mov	r0, r6
 306 006a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 307              	.LVL25:
 308              	.L28:
 309              	.LBB90:
 310              	.LBB89:
 311              	.LBB88:
 306:../asf/common/services/usb/udc/udc.c **** 		}
 312              		.loc 1 306 0
 313 006c A078     		ldrb	r0, [r4, #2]	@ zero_extendqisi2
 314 006e FFF7FEFF 		bl	udd_ep_free
 315              	.LVL26:
 316 0072 E5E7     		b	.L32
 317              	.L64:
 318              		.align	2
 319              	.L63:
 320 0074 00000000 		.word	.LANCHOR2
 321 0078 00000000 		.word	.LANCHOR0
 322 007c 00000000 		.word	.LANCHOR1
 323              	.LBE88:
 324              	.LBE89:
 325              	.LBE90:
 326              		.cfi_endproc
 327              	.LFE153:
 328              		.size	udc_iface_disable, .-udc_iface_disable
 329              		.section	.text.udc_iface_enable,"ax",%progbits
 330              		.align	1
 331              		.p2align 2,,3
 332              		.syntax unified
 333              		.thumb
 334              		.thumb_func
 335              		.fpu fpv5-d16
 336              		.type	udc_iface_enable, %function
 337              	udc_iface_enable:
 338              	.LFB154:
 327:../asf/common/services/usb/udc/udc.c **** 	// Select the interface descriptor
 339              		.loc 1 327 0
ARM GAS  /tmp/cc1oZp4Q.s 			page 18


 340              		.cfi_startproc
 341              		@ args = 0, pretend = 0, frame = 0
 342              		@ frame_needed = 0, uses_anonymous_args = 0
 343              	.LVL27:
 344              	.LBB101:
 345              	.LBB102:
 233:../asf/common/services/usb/udc/udc.c **** 		return false;
 346              		.loc 1 233 0
 347 0000 174B     		ldr	r3, .L101
 348              	.LVL28:
 349 0002 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 350 0004 0BB9     		cbnz	r3, .L99
 351              	.LBE102:
 352              	.LBE101:
 357:../asf/common/services/usb/udc/udc.c **** 
 353              		.loc 1 357 0
 354 0006 0020     		movs	r0, #0
 355              	.LVL29:
 356 0008 7047     		bx	lr
 357              	.LVL30:
 358              	.L99:
 327:../asf/common/services/usb/udc/udc.c **** 	// Select the interface descriptor
 359              		.loc 1 327 0
 360 000a 70B5     		push	{r4, r5, r6, lr}
 361              		.cfi_def_cfa_offset 16
 362              		.cfi_offset 4, -16
 363              		.cfi_offset 5, -12
 364              		.cfi_offset 6, -8
 365              		.cfi_offset 14, -4
 366 000c 0646     		mov	r6, r0
 367              	.LBB104:
 368              	.LBB103:
 369 000e FFF7FEFF 		bl	udc_update_iface_desc.part.0
 370              	.LVL31:
 371              	.LBE103:
 372              	.LBE104:
 329:../asf/common/services/usb/udc/udc.c **** 		return false;
 373              		.loc 1 329 0
 374 0012 10B3     		cbz	r0, .L86
 375              	.LVL32:
 376              	.LBB105:
 377              	.LBB106:
 337:../asf/common/services/usb/udc/udc.c **** 	while (1) {
 378              		.loc 1 337 0
 379 0014 134B     		ldr	r3, .L101+4
 380 0016 144D     		ldr	r5, .L101+8
 381 0018 1C68     		ldr	r4, [r3]
 382              	.LVL33:
 383              	.L72:
 384              	.LBB107:
 385              	.LBB108:
 386              	.LBB109:
 387              	.LBB110:
 178:../asf/common/services/usb/udc/udc.c **** 			le16_to_cpu(udc_ptr_conf->desc->wTotalLength));
 388              		.loc 1 178 0
 389 001a 2968     		ldr	r1, [r5]
 390              	.LBE110:
ARM GAS  /tmp/cc1oZp4Q.s 			page 19


 391              	.LBE109:
 201:../asf/common/services/usb/udc/udc.c **** 	// Check the end of configuration descriptor
 392              		.loc 1 201 0
 393 001c 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 394              	.LBB113:
 395              	.LBB111:
 178:../asf/common/services/usb/udc/udc.c **** 			le16_to_cpu(udc_ptr_conf->desc->wTotalLength));
 396              		.loc 1 178 0
 397 001e 0A68     		ldr	r2, [r1]
 398              	.LBE111:
 399              	.LBE113:
 200:../asf/common/services/usb/udc/udc.c **** 			desc->bLength);
 400              		.loc 1 200 0
 401 0020 1C44     		add	r4, r4, r3
 402              	.LVL34:
 403              	.LBB114:
 404              	.LBB112:
 179:../asf/common/services/usb/udc/udc.c **** }
 405              		.loc 1 179 0
 406 0022 5388     		ldrh	r3, [r2, #2]	@ unaligned
 177:../asf/common/services/usb/udc/udc.c **** 			udc_ptr_conf->desc +
 407              		.loc 1 177 0
 408 0024 1A44     		add	r2, r2, r3
 409              	.LVL35:
 410              	.LBE112:
 411              	.LBE114:
 203:../asf/common/services/usb/udc/udc.c **** 		// If new interface descriptor is found,
 412              		.loc 1 203 0
 413 0026 A242     		cmp	r2, r4
 414 0028 06D8     		bhi	.L71
 415 002a 08E0     		b	.L67
 416              	.L100:
 209:../asf/common/services/usb/udc/udc.c **** 			return desc; // Specific descriptor found
 417              		.loc 1 209 0
 418 002c 052B     		cmp	r3, #5
 419 002e 0DD0     		beq	.L68
 214:../asf/common/services/usb/udc/udc.c **** 	}
 420              		.loc 1 214 0
 421 0030 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 213:../asf/common/services/usb/udc/udc.c **** 				desc->bLength);
 422              		.loc 1 213 0
 423 0032 1C44     		add	r4, r4, r3
 424              	.LVL36:
 203:../asf/common/services/usb/udc/udc.c **** 		// If new interface descriptor is found,
 425              		.loc 1 203 0
 426 0034 A242     		cmp	r2, r4
 427 0036 02D9     		bls	.L67
 428              	.L71:
 206:../asf/common/services/usb/udc/udc.c **** 			break; // End of global interface descriptor
 429              		.loc 1 206 0
 430 0038 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 431 003a 042B     		cmp	r3, #4
 432 003c F6D1     		bne	.L100
 433              	.L67:
 434              	.LVL37:
 435              	.LBE108:
 436              	.LBE107:
ARM GAS  /tmp/cc1oZp4Q.s 			page 20


 356:../asf/common/services/usb/udc/udc.c **** }
 437              		.loc 1 356 0
 438 003e 4B68     		ldr	r3, [r1, #4]
 439 0040 53F82630 		ldr	r3, [r3, r6, lsl #2]
 440              	.LBE106:
 441              	.LBE105:
 357:../asf/common/services/usb/udc/udc.c **** 
 442              		.loc 1 357 0
 443 0044 BDE87040 		pop	{r4, r5, r6, lr}
 444              		.cfi_remember_state
 445              		.cfi_restore 14
 446              		.cfi_restore 6
 447              		.cfi_restore 5
 448              		.cfi_restore 4
 449              		.cfi_def_cfa_offset 0
 450              	.LVL38:
 451              	.LBB116:
 452              	.LBB115:
 356:../asf/common/services/usb/udc/udc.c **** }
 453              		.loc 1 356 0
 454 0048 1B68     		ldr	r3, [r3]
 455 004a 1847     		bx	r3
 456              	.LVL39:
 457              	.L68:
 458              		.cfi_restore_state
 347:../asf/common/services/usb/udc/udc.c **** 				ep_desc->bmAttributes,
 459              		.loc 1 347 0
 460 004c A288     		ldrh	r2, [r4, #4]	@ unaligned
 461 004e E178     		ldrb	r1, [r4, #3]	@ zero_extendqisi2
 462 0050 A078     		ldrb	r0, [r4, #2]	@ zero_extendqisi2
 463 0052 FFF7FEFF 		bl	udd_ep_alloc
 464              	.LVL40:
 465 0056 0028     		cmp	r0, #0
 466 0058 DFD1     		bne	.L72
 467              	.LVL41:
 468              	.L86:
 469              	.LBE115:
 470              	.LBE116:
 357:../asf/common/services/usb/udc/udc.c **** 
 471              		.loc 1 357 0
 472 005a 0020     		movs	r0, #0
 473 005c 70BD     		pop	{r4, r5, r6, pc}
 474              	.L102:
 475 005e 00BF     		.align	2
 476              	.L101:
 477 0060 00000000 		.word	.LANCHOR2
 478 0064 00000000 		.word	.LANCHOR1
 479 0068 00000000 		.word	.LANCHOR0
 480              		.cfi_endproc
 481              	.LFE154:
 482              		.size	udc_iface_enable, .-udc_iface_enable
 483              		.section	.text.udc_get_interface_desc,"ax",%progbits
 484              		.align	1
 485              		.p2align 2,,3
 486              		.global	udc_get_interface_desc
 487              		.syntax unified
 488              		.thumb
ARM GAS  /tmp/cc1oZp4Q.s 			page 21


 489              		.thumb_func
 490              		.fpu fpv5-d16
 491              		.type	udc_get_interface_desc, %function
 492              	udc_get_interface_desc:
 493              	.LFB149:
 166:../asf/common/services/usb/udc/udc.c **** 	return udc_ptr_iface;
 494              		.loc 1 166 0
 495              		.cfi_startproc
 496              		@ args = 0, pretend = 0, frame = 0
 497              		@ frame_needed = 0, uses_anonymous_args = 0
 498              		@ link register save eliminated.
 167:../asf/common/services/usb/udc/udc.c **** }
 499              		.loc 1 167 0
 500 0000 014B     		ldr	r3, .L104
 168:../asf/common/services/usb/udc/udc.c **** 
 501              		.loc 1 168 0
 502 0002 1868     		ldr	r0, [r3]
 503 0004 7047     		bx	lr
 504              	.L105:
 505 0006 00BF     		.align	2
 506              	.L104:
 507 0008 00000000 		.word	.LANCHOR1
 508              		.cfi_endproc
 509              	.LFE149:
 510              		.size	udc_get_interface_desc, .-udc_get_interface_desc
 511              		.section	.text.udc_start,"ax",%progbits
 512              		.align	1
 513              		.p2align 2,,3
 514              		.global	udc_start
 515              		.syntax unified
 516              		.thumb
 517              		.thumb_func
 518              		.fpu fpv5-d16
 519              		.type	udc_start, %function
 520              	udc_start:
 521              	.LFB155:
 362:../asf/common/services/usb/udc/udc.c **** 	udd_enable();
 522              		.loc 1 362 0
 523              		.cfi_startproc
 524              		@ args = 0, pretend = 0, frame = 0
 525              		@ frame_needed = 0, uses_anonymous_args = 0
 526              		@ link register save eliminated.
 363:../asf/common/services/usb/udc/udc.c **** }
 527              		.loc 1 363 0
 528 0000 FFF7FEBF 		b	udd_enable
 529              	.LVL42:
 530              		.cfi_endproc
 531              	.LFE155:
 532              		.size	udc_start, .-udc_start
 533              		.section	.text.udc_reset,"ax",%progbits
 534              		.align	1
 535              		.p2align 2,,3
 536              		.global	udc_reset
 537              		.syntax unified
 538              		.thumb
 539              		.thumb_func
 540              		.fpu fpv5-d16
ARM GAS  /tmp/cc1oZp4Q.s 			page 22


 541              		.type	udc_reset, %function
 542              	udc_reset:
 543              	.LFB157:
 379:../asf/common/services/usb/udc/udc.c **** 	uint8_t iface_num;
 544              		.loc 1 379 0
 545              		.cfi_startproc
 546              		@ args = 0, pretend = 0, frame = 0
 547              		@ frame_needed = 0, uses_anonymous_args = 0
 548 0000 70B5     		push	{r4, r5, r6, lr}
 549              		.cfi_def_cfa_offset 16
 550              		.cfi_offset 4, -16
 551              		.cfi_offset 5, -12
 552              		.cfi_offset 6, -8
 553              		.cfi_offset 14, -4
 382:../asf/common/services/usb/udc/udc.c **** 		for (iface_num = 0;
 554              		.loc 1 382 0
 555 0002 0C4E     		ldr	r6, .L117
 556 0004 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 557 0006 7BB1     		cbz	r3, .L109
 558              	.LVL43:
 384:../asf/common/services/usb/udc/udc.c **** 				iface_num++) {
 559              		.loc 1 384 0 discriminator 1
 560 0008 0B4D     		ldr	r5, .L117+4
 561 000a 2B68     		ldr	r3, [r5]
 562 000c 1B68     		ldr	r3, [r3]
 383:../asf/common/services/usb/udc/udc.c **** 				iface_num < udc_ptr_conf->desc->bNumInterfaces;
 563              		.loc 1 383 0 discriminator 1
 564 000e 1B79     		ldrb	r3, [r3, #4]	@ zero_extendqisi2
 565 0010 53B1     		cbz	r3, .L109
 383:../asf/common/services/usb/udc/udc.c **** 				iface_num < udc_ptr_conf->desc->bNumInterfaces;
 566              		.loc 1 383 0 is_stmt 0
 567 0012 0024     		movs	r4, #0
 568              	.LVL44:
 569              	.L110:
 386:../asf/common/services/usb/udc/udc.c **** 		}
 570              		.loc 1 386 0 is_stmt 1
 571 0014 2046     		mov	r0, r4
 385:../asf/common/services/usb/udc/udc.c **** 			udc_iface_disable(iface_num);
 572              		.loc 1 385 0
 573 0016 0134     		adds	r4, r4, #1
 574              	.LVL45:
 386:../asf/common/services/usb/udc/udc.c **** 		}
 575              		.loc 1 386 0
 576 0018 FFF7FEFF 		bl	udc_iface_disable
 577              	.LVL46:
 384:../asf/common/services/usb/udc/udc.c **** 				iface_num++) {
 578              		.loc 1 384 0
 579 001c 2B68     		ldr	r3, [r5]
 385:../asf/common/services/usb/udc/udc.c **** 			udc_iface_disable(iface_num);
 580              		.loc 1 385 0
 581 001e E4B2     		uxtb	r4, r4
 582              	.LVL47:
 384:../asf/common/services/usb/udc/udc.c **** 				iface_num++) {
 583              		.loc 1 384 0
 584 0020 1B68     		ldr	r3, [r3]
 383:../asf/common/services/usb/udc/udc.c **** 				iface_num < udc_ptr_conf->desc->bNumInterfaces;
 585              		.loc 1 383 0
ARM GAS  /tmp/cc1oZp4Q.s 			page 23


 586 0022 1B79     		ldrb	r3, [r3, #4]	@ zero_extendqisi2
 587 0024 A342     		cmp	r3, r4
 588 0026 F5D8     		bhi	.L110
 589              	.LVL48:
 590              	.L109:
 389:../asf/common/services/usb/udc/udc.c **** #if (USB_CONFIG_ATTR_REMOTE_WAKEUP \
 591              		.loc 1 389 0
 592 0028 0021     		movs	r1, #0
 397:../asf/common/services/usb/udc/udc.c **** #if (USB_DEVICE_ATTR & USB_CONFIG_ATTR_SELF_POWERED)
 593              		.loc 1 397 0
 594 002a 044B     		ldr	r3, .L117+8
 595 002c 0122     		movs	r2, #1
 389:../asf/common/services/usb/udc/udc.c **** #if (USB_CONFIG_ATTR_REMOTE_WAKEUP \
 596              		.loc 1 389 0
 597 002e 3170     		strb	r1, [r6]
 397:../asf/common/services/usb/udc/udc.c **** #if (USB_DEVICE_ATTR & USB_CONFIG_ATTR_SELF_POWERED)
 598              		.loc 1 397 0
 599 0030 1A80     		strh	r2, [r3]	@ movhi
 403:../asf/common/services/usb/udc/udc.c **** 
 600              		.loc 1 403 0
 601 0032 70BD     		pop	{r4, r5, r6, pc}
 602              	.L118:
 603              		.align	2
 604              	.L117:
 605 0034 00000000 		.word	.LANCHOR2
 606 0038 00000000 		.word	.LANCHOR0
 607 003c 00000000 		.word	.LANCHOR3
 608              		.cfi_endproc
 609              	.LFE157:
 610              		.size	udc_reset, .-udc_reset
 611              		.section	.text.udc_stop,"ax",%progbits
 612              		.align	1
 613              		.p2align 2,,3
 614              		.global	udc_stop
 615              		.syntax unified
 616              		.thumb
 617              		.thumb_func
 618              		.fpu fpv5-d16
 619              		.type	udc_stop, %function
 620              	udc_stop:
 621              	.LFB156:
 369:../asf/common/services/usb/udc/udc.c **** 	udd_disable();
 622              		.loc 1 369 0
 623              		.cfi_startproc
 624              		@ args = 0, pretend = 0, frame = 0
 625              		@ frame_needed = 0, uses_anonymous_args = 0
 626 0000 08B5     		push	{r3, lr}
 627              		.cfi_def_cfa_offset 8
 628              		.cfi_offset 3, -8
 629              		.cfi_offset 14, -4
 370:../asf/common/services/usb/udc/udc.c **** 	udc_reset();
 630              		.loc 1 370 0
 631 0002 FFF7FEFF 		bl	udd_disable
 632              	.LVL49:
 372:../asf/common/services/usb/udc/udc.c **** 
 633              		.loc 1 372 0
 634 0006 BDE80840 		pop	{r3, lr}
ARM GAS  /tmp/cc1oZp4Q.s 			page 24


 635              		.cfi_restore 14
 636              		.cfi_restore 3
 637              		.cfi_def_cfa_offset 0
 371:../asf/common/services/usb/udc/udc.c **** }
 638              		.loc 1 371 0
 639 000a FFF7FEBF 		b	udc_reset
 640              	.LVL50:
 641              		.cfi_endproc
 642              	.LFE156:
 643              		.size	udc_stop, .-udc_stop
 644 000e 00BF     		.section	.text.udc_sof_notify,"ax",%progbits
 645              		.align	1
 646              		.p2align 2,,3
 647              		.global	udc_sof_notify
 648              		.syntax unified
 649              		.thumb
 650              		.thumb_func
 651              		.fpu fpv5-d16
 652              		.type	udc_sof_notify, %function
 653              	udc_sof_notify:
 654              	.LFB158:
 406:../asf/common/services/usb/udc/udc.c **** 	uint8_t iface_num;
 655              		.loc 1 406 0
 656              		.cfi_startproc
 657              		@ args = 0, pretend = 0, frame = 0
 658              		@ frame_needed = 0, uses_anonymous_args = 0
 659 0000 38B5     		push	{r3, r4, r5, lr}
 660              		.cfi_def_cfa_offset 16
 661              		.cfi_offset 3, -16
 662              		.cfi_offset 4, -12
 663              		.cfi_offset 5, -8
 664              		.cfi_offset 14, -4
 409:../asf/common/services/usb/udc/udc.c **** 		for (iface_num = 0;
 665              		.loc 1 409 0
 666 0002 0B4B     		ldr	r3, .L134
 667 0004 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 668 0006 93B1     		cbz	r3, .L121
 669              	.LVL51:
 411:../asf/common/services/usb/udc/udc.c **** 				iface_num++) {
 670              		.loc 1 411 0 discriminator 1
 671 0008 0A4D     		ldr	r5, .L134+4
 672 000a 2B68     		ldr	r3, [r5]
 673 000c 1A68     		ldr	r2, [r3]
 410:../asf/common/services/usb/udc/udc.c **** 				iface_num < udc_ptr_conf->desc->bNumInterfaces;
 674              		.loc 1 410 0 discriminator 1
 675 000e 1279     		ldrb	r2, [r2, #4]	@ zero_extendqisi2
 676 0010 6AB1     		cbz	r2, .L121
 410:../asf/common/services/usb/udc/udc.c **** 				iface_num < udc_ptr_conf->desc->bNumInterfaces;
 677              		.loc 1 410 0 is_stmt 0
 678 0012 0024     		movs	r4, #0
 679              	.LVL52:
 680              	.L125:
 413:../asf/common/services/usb/udc/udc.c **** 				udc_ptr_conf->udi_apis[iface_num]->sof_notify();
 681              		.loc 1 413 0 is_stmt 1
 682 0014 5B68     		ldr	r3, [r3, #4]
 683 0016 53F82430 		ldr	r3, [r3, r4, lsl #2]
 684 001a 1B69     		ldr	r3, [r3, #16]
ARM GAS  /tmp/cc1oZp4Q.s 			page 25


 685 001c 03B1     		cbz	r3, .L124
 414:../asf/common/services/usb/udc/udc.c **** 			}
 686              		.loc 1 414 0
 687 001e 9847     		blx	r3
 688              	.LVL53:
 689              	.L124:
 411:../asf/common/services/usb/udc/udc.c **** 				iface_num++) {
 690              		.loc 1 411 0
 691 0020 2B68     		ldr	r3, [r5]
 412:../asf/common/services/usb/udc/udc.c **** 			if (udc_ptr_conf->udi_apis[iface_num]->sof_notify != NULL) {
 692              		.loc 1 412 0
 693 0022 0134     		adds	r4, r4, #1
 694              	.LVL54:
 411:../asf/common/services/usb/udc/udc.c **** 				iface_num++) {
 695              		.loc 1 411 0
 696 0024 1A68     		ldr	r2, [r3]
 412:../asf/common/services/usb/udc/udc.c **** 			if (udc_ptr_conf->udi_apis[iface_num]->sof_notify != NULL) {
 697              		.loc 1 412 0
 698 0026 E4B2     		uxtb	r4, r4
 699              	.LVL55:
 410:../asf/common/services/usb/udc/udc.c **** 				iface_num < udc_ptr_conf->desc->bNumInterfaces;
 700              		.loc 1 410 0
 701 0028 1279     		ldrb	r2, [r2, #4]	@ zero_extendqisi2
 702 002a A242     		cmp	r2, r4
 703 002c F2D8     		bhi	.L125
 704              	.LVL56:
 705              	.L121:
 706 002e 38BD     		pop	{r3, r4, r5, pc}
 707              	.L135:
 708              		.align	2
 709              	.L134:
 710 0030 00000000 		.word	.LANCHOR2
 711 0034 00000000 		.word	.LANCHOR0
 712              		.cfi_endproc
 713              	.LFE158:
 714              		.size	udc_sof_notify, .-udc_sof_notify
 715              		.section	.text.udc_process_setup,"ax",%progbits
 716              		.align	1
 717              		.p2align 2,,3
 718              		.global	udc_process_setup
 719              		.syntax unified
 720              		.thumb
 721              		.thumb_func
 722              		.fpu fpv5-d16
 723              		.type	udc_process_setup, %function
 724              	udc_process_setup:
 725              	.LFB176:
 588:../asf/common/services/usb/udc/udc.c **** }
 589:../asf/common/services/usb/udc/udc.c **** 
 590:../asf/common/services/usb/udc/udc.c **** /**
 591:../asf/common/services/usb/udc/udc.c ****  * \brief Standard device request to set device address
 592:../asf/common/services/usb/udc/udc.c ****  *
 593:../asf/common/services/usb/udc/udc.c ****  * \return true if success
 594:../asf/common/services/usb/udc/udc.c ****  */
 595:../asf/common/services/usb/udc/udc.c **** static bool udc_req_std_dev_set_address(void)
 596:../asf/common/services/usb/udc/udc.c **** {
 597:../asf/common/services/usb/udc/udc.c **** 	if (udd_g_ctrlreq.req.wLength) {
ARM GAS  /tmp/cc1oZp4Q.s 			page 26


 598:../asf/common/services/usb/udc/udc.c **** 		return false;
 599:../asf/common/services/usb/udc/udc.c **** 	}
 600:../asf/common/services/usb/udc/udc.c **** 
 601:../asf/common/services/usb/udc/udc.c **** 	// The address must be changed at the end of setup request after the handshake
 602:../asf/common/services/usb/udc/udc.c **** 	// then we use a callback to change address
 603:../asf/common/services/usb/udc/udc.c **** 	udd_g_ctrlreq.callback = udc_valid_address;
 604:../asf/common/services/usb/udc/udc.c **** 	return true;
 605:../asf/common/services/usb/udc/udc.c **** }
 606:../asf/common/services/usb/udc/udc.c **** 
 607:../asf/common/services/usb/udc/udc.c **** /**
 608:../asf/common/services/usb/udc/udc.c ****  * \brief Standard device request to get device string descriptor
 609:../asf/common/services/usb/udc/udc.c ****  *
 610:../asf/common/services/usb/udc/udc.c ****  * \return true if success
 611:../asf/common/services/usb/udc/udc.c ****  */
 612:../asf/common/services/usb/udc/udc.c **** static bool udc_req_std_dev_get_str_desc(void)
 613:../asf/common/services/usb/udc/udc.c **** {
 614:../asf/common/services/usb/udc/udc.c **** 	uint8_t i;
 615:../asf/common/services/usb/udc/udc.c **** 	const uint8_t *str;
 616:../asf/common/services/usb/udc/udc.c **** 	uint8_t str_length = 0;
 617:../asf/common/services/usb/udc/udc.c **** 
 618:../asf/common/services/usb/udc/udc.c **** 	// Link payload pointer to the string corresponding at request
 619:../asf/common/services/usb/udc/udc.c **** 	switch (udd_g_ctrlreq.req.wValue & 0xff) {
 620:../asf/common/services/usb/udc/udc.c **** 	case 0:
 621:../asf/common/services/usb/udc/udc.c **** 		udd_set_setup_payload((uint8_t *) &udc_string_desc_languageid,
 622:../asf/common/services/usb/udc/udc.c **** 				sizeof(udc_string_desc_languageid));
 623:../asf/common/services/usb/udc/udc.c **** 		break;
 624:../asf/common/services/usb/udc/udc.c **** 
 625:../asf/common/services/usb/udc/udc.c **** #ifdef USB_DEVICE_MANUFACTURE_NAME
 626:../asf/common/services/usb/udc/udc.c **** 	case 1:
 627:../asf/common/services/usb/udc/udc.c **** 		str_length = USB_DEVICE_MANUFACTURE_NAME_SIZE;
 628:../asf/common/services/usb/udc/udc.c **** 		str = udc_string_manufacturer_name;
 629:../asf/common/services/usb/udc/udc.c **** 		break;
 630:../asf/common/services/usb/udc/udc.c **** #endif
 631:../asf/common/services/usb/udc/udc.c **** #ifdef USB_DEVICE_PRODUCT_NAME
 632:../asf/common/services/usb/udc/udc.c **** 	case 2:
 633:../asf/common/services/usb/udc/udc.c **** 		str_length = USB_DEVICE_PRODUCT_NAME_SIZE;
 634:../asf/common/services/usb/udc/udc.c **** 		str = udc_string_product_name;
 635:../asf/common/services/usb/udc/udc.c **** 		break;
 636:../asf/common/services/usb/udc/udc.c **** #endif
 637:../asf/common/services/usb/udc/udc.c **** #if defined USB_DEVICE_SERIAL_NAME || defined USB_DEVICE_GET_SERIAL_NAME_POINTER
 638:../asf/common/services/usb/udc/udc.c **** 	case 3:
 639:../asf/common/services/usb/udc/udc.c **** 		str_length = USB_DEVICE_SERIAL_NAME_SIZE;
 640:../asf/common/services/usb/udc/udc.c **** 		str = udc_get_string_serial_name();
 641:../asf/common/services/usb/udc/udc.c **** 		break;
 642:../asf/common/services/usb/udc/udc.c **** #endif
 643:../asf/common/services/usb/udc/udc.c **** 	default:
 644:../asf/common/services/usb/udc/udc.c **** #ifdef UDC_GET_EXTRA_STRING
 645:../asf/common/services/usb/udc/udc.c **** 		if (UDC_GET_EXTRA_STRING()) {
 646:../asf/common/services/usb/udc/udc.c **** 			break;
 647:../asf/common/services/usb/udc/udc.c **** 		}
 648:../asf/common/services/usb/udc/udc.c **** #endif
 649:../asf/common/services/usb/udc/udc.c **** 		return false;
 650:../asf/common/services/usb/udc/udc.c **** 	}
 651:../asf/common/services/usb/udc/udc.c **** 
 652:../asf/common/services/usb/udc/udc.c **** 	if (str_length) {
 653:../asf/common/services/usb/udc/udc.c **** 		for(i = 0; i < str_length; i++) {
 654:../asf/common/services/usb/udc/udc.c **** 			udc_string_desc.string[i] = cpu_to_le16((le16_t)str[i]);
ARM GAS  /tmp/cc1oZp4Q.s 			page 27


 655:../asf/common/services/usb/udc/udc.c **** 		}
 656:../asf/common/services/usb/udc/udc.c **** 
 657:../asf/common/services/usb/udc/udc.c **** 		udc_string_desc.header.bLength = 2 + (str_length) * 2;
 658:../asf/common/services/usb/udc/udc.c **** 		udd_set_setup_payload(
 659:../asf/common/services/usb/udc/udc.c **** 			(uint8_t *) &udc_string_desc,
 660:../asf/common/services/usb/udc/udc.c **** 			udc_string_desc.header.bLength);
 661:../asf/common/services/usb/udc/udc.c **** 	}
 662:../asf/common/services/usb/udc/udc.c **** 
 663:../asf/common/services/usb/udc/udc.c **** 	return true;
 664:../asf/common/services/usb/udc/udc.c **** }
 665:../asf/common/services/usb/udc/udc.c **** 
 666:../asf/common/services/usb/udc/udc.c **** /**
 667:../asf/common/services/usb/udc/udc.c ****  * \brief Standard device request to get descriptors about USB device
 668:../asf/common/services/usb/udc/udc.c ****  *
 669:../asf/common/services/usb/udc/udc.c ****  * \return true if success
 670:../asf/common/services/usb/udc/udc.c ****  */
 671:../asf/common/services/usb/udc/udc.c **** static bool udc_req_std_dev_get_descriptor(void)
 672:../asf/common/services/usb/udc/udc.c **** {
 673:../asf/common/services/usb/udc/udc.c **** 	uint8_t conf_num;
 674:../asf/common/services/usb/udc/udc.c **** 
 675:../asf/common/services/usb/udc/udc.c **** 	conf_num = udd_g_ctrlreq.req.wValue & 0xff;
 676:../asf/common/services/usb/udc/udc.c **** 
 677:../asf/common/services/usb/udc/udc.c **** 	// Check descriptor ID
 678:../asf/common/services/usb/udc/udc.c **** 	switch ((uint8_t) (udd_g_ctrlreq.req.wValue >> 8)) {
 679:../asf/common/services/usb/udc/udc.c **** 	case USB_DT_DEVICE:
 680:../asf/common/services/usb/udc/udc.c **** 		// Device descriptor requested
 681:../asf/common/services/usb/udc/udc.c **** #ifdef USB_DEVICE_HS_SUPPORT
 682:../asf/common/services/usb/udc/udc.c **** 		if (!udd_is_high_speed()) {
 683:../asf/common/services/usb/udc/udc.c **** 			udd_set_setup_payload(
 684:../asf/common/services/usb/udc/udc.c **** 				(uint8_t *) udc_config.confdev_hs,
 685:../asf/common/services/usb/udc/udc.c **** 				udc_config.confdev_hs->bLength);
 686:../asf/common/services/usb/udc/udc.c **** 		} else
 687:../asf/common/services/usb/udc/udc.c **** #endif
 688:../asf/common/services/usb/udc/udc.c **** 		{
 689:../asf/common/services/usb/udc/udc.c **** 			udd_set_setup_payload(
 690:../asf/common/services/usb/udc/udc.c **** 				(uint8_t *) udc_config.confdev_lsfs,
 691:../asf/common/services/usb/udc/udc.c **** 				udc_config.confdev_lsfs->bLength);
 692:../asf/common/services/usb/udc/udc.c **** 		}
 693:../asf/common/services/usb/udc/udc.c **** 		break;
 694:../asf/common/services/usb/udc/udc.c **** 
 695:../asf/common/services/usb/udc/udc.c **** 	case USB_DT_CONFIGURATION:
 696:../asf/common/services/usb/udc/udc.c **** 		// Configuration descriptor requested
 697:../asf/common/services/usb/udc/udc.c **** #ifdef USB_DEVICE_HS_SUPPORT
 698:../asf/common/services/usb/udc/udc.c **** 		if (udd_is_high_speed()) {
 699:../asf/common/services/usb/udc/udc.c **** 			// HS descriptor
 700:../asf/common/services/usb/udc/udc.c **** 			if (conf_num >= udc_config.confdev_hs->
 701:../asf/common/services/usb/udc/udc.c **** 					bNumConfigurations) {
 702:../asf/common/services/usb/udc/udc.c **** 				return false;
 703:../asf/common/services/usb/udc/udc.c **** 			}
 704:../asf/common/services/usb/udc/udc.c **** 			udd_set_setup_payload(
 705:../asf/common/services/usb/udc/udc.c **** 				(uint8_t *)udc_config.conf_hs[conf_num].desc,
 706:../asf/common/services/usb/udc/udc.c **** 				le16_to_cpu(udc_config.conf_hs[conf_num].desc->wTotalLength));
 707:../asf/common/services/usb/udc/udc.c **** 		} else
 708:../asf/common/services/usb/udc/udc.c **** #endif
 709:../asf/common/services/usb/udc/udc.c **** 		{
 710:../asf/common/services/usb/udc/udc.c **** 			// FS descriptor
 711:../asf/common/services/usb/udc/udc.c **** 			if (conf_num >= udc_config.confdev_lsfs->
ARM GAS  /tmp/cc1oZp4Q.s 			page 28


 712:../asf/common/services/usb/udc/udc.c **** 					bNumConfigurations) {
 713:../asf/common/services/usb/udc/udc.c **** 				return false;
 714:../asf/common/services/usb/udc/udc.c **** 			}
 715:../asf/common/services/usb/udc/udc.c **** 			udd_set_setup_payload(
 716:../asf/common/services/usb/udc/udc.c **** 				(uint8_t *)udc_config.conf_lsfs[conf_num].desc,
 717:../asf/common/services/usb/udc/udc.c **** 				le16_to_cpu(udc_config.conf_lsfs[conf_num].desc->wTotalLength));
 718:../asf/common/services/usb/udc/udc.c **** 		}
 719:../asf/common/services/usb/udc/udc.c **** 		((usb_conf_desc_t *) udd_g_ctrlreq.payload)->bDescriptorType =
 720:../asf/common/services/usb/udc/udc.c **** 				USB_DT_CONFIGURATION;
 721:../asf/common/services/usb/udc/udc.c **** 		break;
 722:../asf/common/services/usb/udc/udc.c **** 
 723:../asf/common/services/usb/udc/udc.c **** #ifdef USB_DEVICE_HS_SUPPORT
 724:../asf/common/services/usb/udc/udc.c **** 	case USB_DT_DEVICE_QUALIFIER:
 725:../asf/common/services/usb/udc/udc.c **** 		// Device qualifier descriptor requested
 726:../asf/common/services/usb/udc/udc.c **** 		udd_set_setup_payload( (uint8_t *) udc_config.qualifier,
 727:../asf/common/services/usb/udc/udc.c **** 				udc_config.qualifier->bLength);
 728:../asf/common/services/usb/udc/udc.c **** 		break;
 729:../asf/common/services/usb/udc/udc.c **** 
 730:../asf/common/services/usb/udc/udc.c **** 	case USB_DT_OTHER_SPEED_CONFIGURATION:
 731:../asf/common/services/usb/udc/udc.c **** 		// Other configuration descriptor requested
 732:../asf/common/services/usb/udc/udc.c **** 		if (!udd_is_high_speed()) {
 733:../asf/common/services/usb/udc/udc.c **** 			// HS descriptor
 734:../asf/common/services/usb/udc/udc.c **** 			if (conf_num >= udc_config.confdev_hs->
 735:../asf/common/services/usb/udc/udc.c **** 					bNumConfigurations) {
 736:../asf/common/services/usb/udc/udc.c **** 				return false;
 737:../asf/common/services/usb/udc/udc.c **** 			}
 738:../asf/common/services/usb/udc/udc.c **** 			udd_set_setup_payload(
 739:../asf/common/services/usb/udc/udc.c **** 				(uint8_t *)udc_config.conf_hs[conf_num].desc,
 740:../asf/common/services/usb/udc/udc.c **** 				le16_to_cpu(udc_config.conf_hs[conf_num].desc->wTotalLength));
 741:../asf/common/services/usb/udc/udc.c **** 		} else {
 742:../asf/common/services/usb/udc/udc.c **** 			// FS descriptor
 743:../asf/common/services/usb/udc/udc.c **** 			if (conf_num >= udc_config.confdev_lsfs->
 744:../asf/common/services/usb/udc/udc.c **** 					bNumConfigurations) {
 745:../asf/common/services/usb/udc/udc.c **** 				return false;
 746:../asf/common/services/usb/udc/udc.c **** 			}
 747:../asf/common/services/usb/udc/udc.c **** 			udd_set_setup_payload(
 748:../asf/common/services/usb/udc/udc.c **** 				(uint8_t *)udc_config.conf_lsfs[conf_num].desc,
 749:../asf/common/services/usb/udc/udc.c **** 				le16_to_cpu(udc_config.conf_lsfs[conf_num].desc->wTotalLength));
 750:../asf/common/services/usb/udc/udc.c **** 		}
 751:../asf/common/services/usb/udc/udc.c **** 		((usb_conf_desc_t *) udd_g_ctrlreq.payload)->bDescriptorType =
 752:../asf/common/services/usb/udc/udc.c **** 				USB_DT_OTHER_SPEED_CONFIGURATION;
 753:../asf/common/services/usb/udc/udc.c **** 		break;
 754:../asf/common/services/usb/udc/udc.c **** #endif
 755:../asf/common/services/usb/udc/udc.c **** 
 756:../asf/common/services/usb/udc/udc.c **** 	case USB_DT_BOS:
 757:../asf/common/services/usb/udc/udc.c **** 		// Device BOS descriptor requested
 758:../asf/common/services/usb/udc/udc.c **** 		if (udc_config.conf_bos == NULL) {
 759:../asf/common/services/usb/udc/udc.c **** 			return false;
 760:../asf/common/services/usb/udc/udc.c **** 		}
 761:../asf/common/services/usb/udc/udc.c **** 		udd_set_setup_payload( (uint8_t *) udc_config.conf_bos,
 762:../asf/common/services/usb/udc/udc.c **** 				udc_config.conf_bos->wTotalLength);
 763:../asf/common/services/usb/udc/udc.c **** 		break;
 764:../asf/common/services/usb/udc/udc.c **** 
 765:../asf/common/services/usb/udc/udc.c **** 	case USB_DT_STRING:
 766:../asf/common/services/usb/udc/udc.c **** 		// String descriptor requested
 767:../asf/common/services/usb/udc/udc.c **** 		if (!udc_req_std_dev_get_str_desc()) {
 768:../asf/common/services/usb/udc/udc.c **** 			return false;
ARM GAS  /tmp/cc1oZp4Q.s 			page 29


 769:../asf/common/services/usb/udc/udc.c **** 		}
 770:../asf/common/services/usb/udc/udc.c **** 		break;
 771:../asf/common/services/usb/udc/udc.c **** 
 772:../asf/common/services/usb/udc/udc.c **** 	default:
 773:../asf/common/services/usb/udc/udc.c **** 		// Unknown descriptor requested
 774:../asf/common/services/usb/udc/udc.c **** 		return false;
 775:../asf/common/services/usb/udc/udc.c **** 	}
 776:../asf/common/services/usb/udc/udc.c **** 	// if the descriptor is larger than length requested, then reduce it
 777:../asf/common/services/usb/udc/udc.c **** 	if (udd_g_ctrlreq.req.wLength < udd_g_ctrlreq.payload_size) {
 778:../asf/common/services/usb/udc/udc.c **** 		udd_g_ctrlreq.payload_size = udd_g_ctrlreq.req.wLength;
 779:../asf/common/services/usb/udc/udc.c **** 	}
 780:../asf/common/services/usb/udc/udc.c **** 	return true;
 781:../asf/common/services/usb/udc/udc.c **** }
 782:../asf/common/services/usb/udc/udc.c **** 
 783:../asf/common/services/usb/udc/udc.c **** /**
 784:../asf/common/services/usb/udc/udc.c ****  * \brief Standard device request to get configuration number
 785:../asf/common/services/usb/udc/udc.c ****  *
 786:../asf/common/services/usb/udc/udc.c ****  * \return true if success
 787:../asf/common/services/usb/udc/udc.c ****  */
 788:../asf/common/services/usb/udc/udc.c **** static bool udc_req_std_dev_get_configuration(void)
 789:../asf/common/services/usb/udc/udc.c **** {
 790:../asf/common/services/usb/udc/udc.c **** 	if (udd_g_ctrlreq.req.wLength != 1) {
 791:../asf/common/services/usb/udc/udc.c **** 		return false;
 792:../asf/common/services/usb/udc/udc.c **** 	}
 793:../asf/common/services/usb/udc/udc.c **** 
 794:../asf/common/services/usb/udc/udc.c **** 	udd_set_setup_payload(&udc_num_configuration,1);
 795:../asf/common/services/usb/udc/udc.c **** 	return true;
 796:../asf/common/services/usb/udc/udc.c **** }
 797:../asf/common/services/usb/udc/udc.c **** 
 798:../asf/common/services/usb/udc/udc.c **** /**
 799:../asf/common/services/usb/udc/udc.c ****  * \brief Standard device request to enable a configuration
 800:../asf/common/services/usb/udc/udc.c ****  *
 801:../asf/common/services/usb/udc/udc.c ****  * \return true if success
 802:../asf/common/services/usb/udc/udc.c ****  */
 803:../asf/common/services/usb/udc/udc.c **** static bool udc_req_std_dev_set_configuration(void)
 804:../asf/common/services/usb/udc/udc.c **** {
 805:../asf/common/services/usb/udc/udc.c **** 	uint8_t iface_num;
 806:../asf/common/services/usb/udc/udc.c **** 
 807:../asf/common/services/usb/udc/udc.c **** 	// Check request length
 808:../asf/common/services/usb/udc/udc.c **** 	if (udd_g_ctrlreq.req.wLength) {
 809:../asf/common/services/usb/udc/udc.c **** 		return false;
 810:../asf/common/services/usb/udc/udc.c **** 	}
 811:../asf/common/services/usb/udc/udc.c **** 	// Authorize configuration only if the address is valid
 812:../asf/common/services/usb/udc/udc.c **** 	if (!udd_getaddress()) {
 813:../asf/common/services/usb/udc/udc.c **** 		return false;
 814:../asf/common/services/usb/udc/udc.c **** 	}
 815:../asf/common/services/usb/udc/udc.c **** 	// Check the configuration number requested
 816:../asf/common/services/usb/udc/udc.c **** #ifdef USB_DEVICE_HS_SUPPORT
 817:../asf/common/services/usb/udc/udc.c **** 	if (udd_is_high_speed()) {
 818:../asf/common/services/usb/udc/udc.c **** 		// HS descriptor
 819:../asf/common/services/usb/udc/udc.c **** 		if ((udd_g_ctrlreq.req.wValue & 0xFF) >
 820:../asf/common/services/usb/udc/udc.c **** 				udc_config.confdev_hs->bNumConfigurations) {
 821:../asf/common/services/usb/udc/udc.c **** 			return false;
 822:../asf/common/services/usb/udc/udc.c **** 		}
 823:../asf/common/services/usb/udc/udc.c **** 	} else
 824:../asf/common/services/usb/udc/udc.c **** #endif
 825:../asf/common/services/usb/udc/udc.c **** 	{
ARM GAS  /tmp/cc1oZp4Q.s 			page 30


 826:../asf/common/services/usb/udc/udc.c **** 		// FS descriptor
 827:../asf/common/services/usb/udc/udc.c **** 		if ((udd_g_ctrlreq.req.wValue & 0xFF) >
 828:../asf/common/services/usb/udc/udc.c **** 				udc_config.confdev_lsfs->bNumConfigurations) {
 829:../asf/common/services/usb/udc/udc.c **** 			return false;
 830:../asf/common/services/usb/udc/udc.c **** 		}
 831:../asf/common/services/usb/udc/udc.c **** 	}
 832:../asf/common/services/usb/udc/udc.c **** 
 833:../asf/common/services/usb/udc/udc.c **** 	// Reset current configuration
 834:../asf/common/services/usb/udc/udc.c **** 	udc_reset();
 835:../asf/common/services/usb/udc/udc.c **** 
 836:../asf/common/services/usb/udc/udc.c **** 	// Enable new configuration
 837:../asf/common/services/usb/udc/udc.c **** 	udc_num_configuration = udd_g_ctrlreq.req.wValue & 0xFF;
 838:../asf/common/services/usb/udc/udc.c **** 	if (udc_num_configuration == 0) {
 839:../asf/common/services/usb/udc/udc.c **** 		return true; // Default empty configuration requested
 840:../asf/common/services/usb/udc/udc.c **** 	}
 841:../asf/common/services/usb/udc/udc.c **** 	// Update pointer of the configuration descriptor
 842:../asf/common/services/usb/udc/udc.c **** #ifdef USB_DEVICE_HS_SUPPORT
 843:../asf/common/services/usb/udc/udc.c **** 	if (udd_is_high_speed()) {
 844:../asf/common/services/usb/udc/udc.c **** 		// HS descriptor
 845:../asf/common/services/usb/udc/udc.c **** 		udc_ptr_conf = &udc_config.conf_hs[udc_num_configuration - 1];
 846:../asf/common/services/usb/udc/udc.c **** 	} else
 847:../asf/common/services/usb/udc/udc.c **** #endif
 848:../asf/common/services/usb/udc/udc.c **** 	{
 849:../asf/common/services/usb/udc/udc.c **** 		// FS descriptor
 850:../asf/common/services/usb/udc/udc.c **** 		udc_ptr_conf = &udc_config.conf_lsfs[udc_num_configuration - 1];
 851:../asf/common/services/usb/udc/udc.c **** 	}
 852:../asf/common/services/usb/udc/udc.c **** 	// Enable all interfaces of the selected configuration
 853:../asf/common/services/usb/udc/udc.c **** 	for (iface_num = 0; iface_num < udc_ptr_conf->desc->bNumInterfaces;
 854:../asf/common/services/usb/udc/udc.c **** 			iface_num++) {
 855:../asf/common/services/usb/udc/udc.c **** 		if (!udc_iface_enable(iface_num, 0)) {
 856:../asf/common/services/usb/udc/udc.c **** 			return false;
 857:../asf/common/services/usb/udc/udc.c **** 		}
 858:../asf/common/services/usb/udc/udc.c **** 	}
 859:../asf/common/services/usb/udc/udc.c **** 	return true;
 860:../asf/common/services/usb/udc/udc.c **** }
 861:../asf/common/services/usb/udc/udc.c **** 
 862:../asf/common/services/usb/udc/udc.c **** /**
 863:../asf/common/services/usb/udc/udc.c ****  * \brief Standard interface request
 864:../asf/common/services/usb/udc/udc.c ****  * to get the alternate setting number of an interface
 865:../asf/common/services/usb/udc/udc.c ****  *
 866:../asf/common/services/usb/udc/udc.c ****  * \return true if success
 867:../asf/common/services/usb/udc/udc.c ****  */
 868:../asf/common/services/usb/udc/udc.c **** static bool udc_req_std_iface_get_setting(void)
 869:../asf/common/services/usb/udc/udc.c **** {
 870:../asf/common/services/usb/udc/udc.c **** 	uint8_t iface_num;
 871:../asf/common/services/usb/udc/udc.c **** 	udi_api_t UDC_DESC_STORAGE *udi_api;
 872:../asf/common/services/usb/udc/udc.c **** 
 873:../asf/common/services/usb/udc/udc.c **** 	if (udd_g_ctrlreq.req.wLength != 1) {
 874:../asf/common/services/usb/udc/udc.c **** 		return false; // Error in request
 875:../asf/common/services/usb/udc/udc.c **** 	}
 876:../asf/common/services/usb/udc/udc.c **** 	if (!udc_num_configuration) {
 877:../asf/common/services/usb/udc/udc.c **** 		return false; // The device is not is configured state yet
 878:../asf/common/services/usb/udc/udc.c **** 	}
 879:../asf/common/services/usb/udc/udc.c **** 
 880:../asf/common/services/usb/udc/udc.c **** 	// Check the interface number included in the request
 881:../asf/common/services/usb/udc/udc.c **** 	iface_num = udd_g_ctrlreq.req.wIndex & 0xFF;
 882:../asf/common/services/usb/udc/udc.c **** 	if (iface_num >= udc_ptr_conf->desc->bNumInterfaces) {
ARM GAS  /tmp/cc1oZp4Q.s 			page 31


 883:../asf/common/services/usb/udc/udc.c **** 		return false;
 884:../asf/common/services/usb/udc/udc.c **** 	}
 885:../asf/common/services/usb/udc/udc.c **** 
 886:../asf/common/services/usb/udc/udc.c **** 	// Select first alternate setting of the interface to update udc_ptr_iface
 887:../asf/common/services/usb/udc/udc.c **** 	// before call iface->getsetting()
 888:../asf/common/services/usb/udc/udc.c **** 	if (!udc_update_iface_desc(iface_num, 0)) {
 889:../asf/common/services/usb/udc/udc.c **** 		return false;
 890:../asf/common/services/usb/udc/udc.c **** 	}
 891:../asf/common/services/usb/udc/udc.c **** 	// Get alternate setting from UDI
 892:../asf/common/services/usb/udc/udc.c **** 	udi_api = udc_ptr_conf->udi_apis[iface_num];
 893:../asf/common/services/usb/udc/udc.c **** 	udc_iface_setting = udi_api->getsetting();
 894:../asf/common/services/usb/udc/udc.c **** 
 895:../asf/common/services/usb/udc/udc.c **** 	// Link value to payload pointer of request
 896:../asf/common/services/usb/udc/udc.c **** 	udd_set_setup_payload(&udc_iface_setting,1);
 897:../asf/common/services/usb/udc/udc.c **** 	return true;
 898:../asf/common/services/usb/udc/udc.c **** }
 899:../asf/common/services/usb/udc/udc.c **** 
 900:../asf/common/services/usb/udc/udc.c **** /**
 901:../asf/common/services/usb/udc/udc.c ****  * \brief Standard interface request
 902:../asf/common/services/usb/udc/udc.c ****  * to set an alternate setting of an interface
 903:../asf/common/services/usb/udc/udc.c ****  *
 904:../asf/common/services/usb/udc/udc.c ****  * \return true if success
 905:../asf/common/services/usb/udc/udc.c ****  */
 906:../asf/common/services/usb/udc/udc.c **** static bool udc_req_std_iface_set_setting(void)
 907:../asf/common/services/usb/udc/udc.c **** {
 908:../asf/common/services/usb/udc/udc.c **** 	uint8_t iface_num, setting_num;
 909:../asf/common/services/usb/udc/udc.c **** 
 910:../asf/common/services/usb/udc/udc.c **** 	if (udd_g_ctrlreq.req.wLength) {
 911:../asf/common/services/usb/udc/udc.c **** 		return false; // Error in request
 912:../asf/common/services/usb/udc/udc.c **** 	}
 913:../asf/common/services/usb/udc/udc.c **** 	if (!udc_num_configuration) {
 914:../asf/common/services/usb/udc/udc.c **** 		return false; // The device is not is configured state yet
 915:../asf/common/services/usb/udc/udc.c **** 	}
 916:../asf/common/services/usb/udc/udc.c **** 
 917:../asf/common/services/usb/udc/udc.c **** 	iface_num = udd_g_ctrlreq.req.wIndex & 0xFF;
 918:../asf/common/services/usb/udc/udc.c **** 	setting_num = udd_g_ctrlreq.req.wValue & 0xFF;
 919:../asf/common/services/usb/udc/udc.c **** 
 920:../asf/common/services/usb/udc/udc.c **** 	// Disable current setting
 921:../asf/common/services/usb/udc/udc.c **** 	if (!udc_iface_disable(iface_num)) {
 922:../asf/common/services/usb/udc/udc.c **** 		return false;
 923:../asf/common/services/usb/udc/udc.c **** 	}
 924:../asf/common/services/usb/udc/udc.c **** 
 925:../asf/common/services/usb/udc/udc.c **** 	// Enable new setting
 926:../asf/common/services/usb/udc/udc.c **** 	return udc_iface_enable(iface_num, setting_num);
 927:../asf/common/services/usb/udc/udc.c **** }
 928:../asf/common/services/usb/udc/udc.c **** 
 929:../asf/common/services/usb/udc/udc.c **** /**
 930:../asf/common/services/usb/udc/udc.c ****  * \brief Main routine to manage the standard USB SETUP request
 931:../asf/common/services/usb/udc/udc.c ****  *
 932:../asf/common/services/usb/udc/udc.c ****  * \return true if the request is supported
 933:../asf/common/services/usb/udc/udc.c ****  */
 934:../asf/common/services/usb/udc/udc.c **** static bool udc_reqstd(void)
 935:../asf/common/services/usb/udc/udc.c **** {
 936:../asf/common/services/usb/udc/udc.c **** 	if (Udd_setup_is_in()) {
 937:../asf/common/services/usb/udc/udc.c **** 		// GET Standard Requests
 938:../asf/common/services/usb/udc/udc.c **** 		if (udd_g_ctrlreq.req.wLength == 0) {
 939:../asf/common/services/usb/udc/udc.c **** 			return false; // Error for USB host
ARM GAS  /tmp/cc1oZp4Q.s 			page 32


 940:../asf/common/services/usb/udc/udc.c **** 		}
 941:../asf/common/services/usb/udc/udc.c **** 
 942:../asf/common/services/usb/udc/udc.c **** 		if (USB_REQ_RECIP_DEVICE == Udd_setup_recipient()) {
 943:../asf/common/services/usb/udc/udc.c **** 			// Standard Get Device request
 944:../asf/common/services/usb/udc/udc.c **** 			switch (udd_g_ctrlreq.req.bRequest) {
 945:../asf/common/services/usb/udc/udc.c **** 			case USB_REQ_GET_STATUS:
 946:../asf/common/services/usb/udc/udc.c **** 				return udc_req_std_dev_get_status();
 947:../asf/common/services/usb/udc/udc.c **** 			case USB_REQ_GET_DESCRIPTOR:
 948:../asf/common/services/usb/udc/udc.c **** 				return udc_req_std_dev_get_descriptor();
 949:../asf/common/services/usb/udc/udc.c **** 			case USB_REQ_GET_CONFIGURATION:
 950:../asf/common/services/usb/udc/udc.c **** 				return udc_req_std_dev_get_configuration();
 951:../asf/common/services/usb/udc/udc.c **** 			default:
 952:../asf/common/services/usb/udc/udc.c **** 				break;
 953:../asf/common/services/usb/udc/udc.c **** 			}
 954:../asf/common/services/usb/udc/udc.c **** 		}
 955:../asf/common/services/usb/udc/udc.c **** 
 956:../asf/common/services/usb/udc/udc.c **** 		if (USB_REQ_RECIP_INTERFACE == Udd_setup_recipient()) {
 957:../asf/common/services/usb/udc/udc.c **** 			// Standard Get Interface request
 958:../asf/common/services/usb/udc/udc.c **** 			switch (udd_g_ctrlreq.req.bRequest) {
 959:../asf/common/services/usb/udc/udc.c **** 			case USB_REQ_GET_INTERFACE:
 960:../asf/common/services/usb/udc/udc.c **** 				return udc_req_std_iface_get_setting();
 961:../asf/common/services/usb/udc/udc.c **** 			default:
 962:../asf/common/services/usb/udc/udc.c **** 				break;
 963:../asf/common/services/usb/udc/udc.c **** 			}
 964:../asf/common/services/usb/udc/udc.c **** 		}
 965:../asf/common/services/usb/udc/udc.c **** #if (0!=USB_DEVICE_MAX_EP)
 966:../asf/common/services/usb/udc/udc.c **** 		if (USB_REQ_RECIP_ENDPOINT == Udd_setup_recipient()) {
 967:../asf/common/services/usb/udc/udc.c **** 			// Standard Get Endpoint request
 968:../asf/common/services/usb/udc/udc.c **** 			switch (udd_g_ctrlreq.req.bRequest) {
 969:../asf/common/services/usb/udc/udc.c **** 			case USB_REQ_GET_STATUS:
 970:../asf/common/services/usb/udc/udc.c **** 				return udc_req_std_ep_get_status();
 971:../asf/common/services/usb/udc/udc.c **** 			default:
 972:../asf/common/services/usb/udc/udc.c **** 				break;
 973:../asf/common/services/usb/udc/udc.c **** 			}
 974:../asf/common/services/usb/udc/udc.c **** 		}
 975:../asf/common/services/usb/udc/udc.c **** #endif
 976:../asf/common/services/usb/udc/udc.c **** 	} else {
 977:../asf/common/services/usb/udc/udc.c **** 		// SET Standard Requests
 978:../asf/common/services/usb/udc/udc.c **** 		if (USB_REQ_RECIP_DEVICE == Udd_setup_recipient()) {
 979:../asf/common/services/usb/udc/udc.c **** 			// Standard Set Device request
 980:../asf/common/services/usb/udc/udc.c **** 			switch (udd_g_ctrlreq.req.bRequest) {
 981:../asf/common/services/usb/udc/udc.c **** 			case USB_REQ_SET_ADDRESS:
 982:../asf/common/services/usb/udc/udc.c **** 				return udc_req_std_dev_set_address();
 983:../asf/common/services/usb/udc/udc.c **** 			case USB_REQ_CLEAR_FEATURE:
 984:../asf/common/services/usb/udc/udc.c **** 				return udc_req_std_dev_clear_feature();
 985:../asf/common/services/usb/udc/udc.c **** 			case USB_REQ_SET_FEATURE:
 986:../asf/common/services/usb/udc/udc.c **** 				return udc_req_std_dev_set_feature();
 987:../asf/common/services/usb/udc/udc.c **** 			case USB_REQ_SET_CONFIGURATION:
 988:../asf/common/services/usb/udc/udc.c **** 				return udc_req_std_dev_set_configuration();
 989:../asf/common/services/usb/udc/udc.c **** 			case USB_REQ_SET_DESCRIPTOR:
 990:../asf/common/services/usb/udc/udc.c **** 				/* Not supported (defined as optional by the USB 2.0 spec) */
 991:../asf/common/services/usb/udc/udc.c **** 				break;
 992:../asf/common/services/usb/udc/udc.c **** 			default:
 993:../asf/common/services/usb/udc/udc.c **** 				break;
 994:../asf/common/services/usb/udc/udc.c **** 			}
 995:../asf/common/services/usb/udc/udc.c **** 		}
 996:../asf/common/services/usb/udc/udc.c **** 
ARM GAS  /tmp/cc1oZp4Q.s 			page 33


 997:../asf/common/services/usb/udc/udc.c **** 		if (USB_REQ_RECIP_INTERFACE == Udd_setup_recipient()) {
 998:../asf/common/services/usb/udc/udc.c **** 			// Standard Set Interface request
 999:../asf/common/services/usb/udc/udc.c **** 			switch (udd_g_ctrlreq.req.bRequest) {
1000:../asf/common/services/usb/udc/udc.c **** 			case USB_REQ_SET_INTERFACE:
1001:../asf/common/services/usb/udc/udc.c **** 				return udc_req_std_iface_set_setting();
1002:../asf/common/services/usb/udc/udc.c **** 			default:
1003:../asf/common/services/usb/udc/udc.c **** 				break;
1004:../asf/common/services/usb/udc/udc.c **** 			}
1005:../asf/common/services/usb/udc/udc.c **** 		}
1006:../asf/common/services/usb/udc/udc.c **** #if (0!=USB_DEVICE_MAX_EP)
1007:../asf/common/services/usb/udc/udc.c **** 		if (USB_REQ_RECIP_ENDPOINT == Udd_setup_recipient()) {
1008:../asf/common/services/usb/udc/udc.c **** 			// Standard Set Endpoint request
1009:../asf/common/services/usb/udc/udc.c **** 			switch (udd_g_ctrlreq.req.bRequest) {
1010:../asf/common/services/usb/udc/udc.c **** 			case USB_REQ_CLEAR_FEATURE:
1011:../asf/common/services/usb/udc/udc.c **** 				return udc_req_std_ep_clear_feature();
1012:../asf/common/services/usb/udc/udc.c **** 			case USB_REQ_SET_FEATURE:
1013:../asf/common/services/usb/udc/udc.c **** 				return udc_req_std_ep_set_feature();
1014:../asf/common/services/usb/udc/udc.c **** 			default:
1015:../asf/common/services/usb/udc/udc.c **** 				break;
1016:../asf/common/services/usb/udc/udc.c **** 			}
1017:../asf/common/services/usb/udc/udc.c **** 		}
1018:../asf/common/services/usb/udc/udc.c **** #endif
1019:../asf/common/services/usb/udc/udc.c **** 	}
1020:../asf/common/services/usb/udc/udc.c **** 	return false;
1021:../asf/common/services/usb/udc/udc.c **** }
1022:../asf/common/services/usb/udc/udc.c **** 
1023:../asf/common/services/usb/udc/udc.c **** /**
1024:../asf/common/services/usb/udc/udc.c ****  * \brief Send the SETUP interface request to UDI
1025:../asf/common/services/usb/udc/udc.c ****  *
1026:../asf/common/services/usb/udc/udc.c ****  * \return true if the request is supported
1027:../asf/common/services/usb/udc/udc.c ****  */
1028:../asf/common/services/usb/udc/udc.c **** static bool udc_req_iface(void)
1029:../asf/common/services/usb/udc/udc.c **** {
1030:../asf/common/services/usb/udc/udc.c **** 	uint8_t iface_num;
1031:../asf/common/services/usb/udc/udc.c **** 	udi_api_t UDC_DESC_STORAGE *udi_api;
1032:../asf/common/services/usb/udc/udc.c **** 
1033:../asf/common/services/usb/udc/udc.c **** 	if (0 == udc_num_configuration) {
1034:../asf/common/services/usb/udc/udc.c **** 		return false; // The device is not is configured state yet
1035:../asf/common/services/usb/udc/udc.c **** 	}
1036:../asf/common/services/usb/udc/udc.c **** 	// Check interface number
1037:../asf/common/services/usb/udc/udc.c **** 	iface_num = udd_g_ctrlreq.req.wIndex & 0xFF;
1038:../asf/common/services/usb/udc/udc.c **** 	if (iface_num >= udc_ptr_conf->desc->bNumInterfaces) {
1039:../asf/common/services/usb/udc/udc.c **** 		return false;
1040:../asf/common/services/usb/udc/udc.c **** 	}
1041:../asf/common/services/usb/udc/udc.c **** 
1042:../asf/common/services/usb/udc/udc.c **** 	//* To update udc_ptr_iface with the selected interface in request
1043:../asf/common/services/usb/udc/udc.c **** 	// Select first alternate setting of interface to update udc_ptr_iface
1044:../asf/common/services/usb/udc/udc.c **** 	// before calling udi_api->getsetting()
1045:../asf/common/services/usb/udc/udc.c **** 	if (!udc_update_iface_desc(iface_num, 0)) {
1046:../asf/common/services/usb/udc/udc.c **** 		return false;
1047:../asf/common/services/usb/udc/udc.c **** 	}
1048:../asf/common/services/usb/udc/udc.c **** 	// Select the interface with the current alternate setting
1049:../asf/common/services/usb/udc/udc.c **** 	udi_api = udc_ptr_conf->udi_apis[iface_num];
1050:../asf/common/services/usb/udc/udc.c **** 	if (!udc_update_iface_desc(iface_num, udi_api->getsetting())) {
1051:../asf/common/services/usb/udc/udc.c **** 		return false;
1052:../asf/common/services/usb/udc/udc.c **** 	}
1053:../asf/common/services/usb/udc/udc.c **** 
ARM GAS  /tmp/cc1oZp4Q.s 			page 34


1054:../asf/common/services/usb/udc/udc.c **** 	// Send the SETUP request to the UDI corresponding to the interface number
1055:../asf/common/services/usb/udc/udc.c **** 	return udi_api->setup();
1056:../asf/common/services/usb/udc/udc.c **** }
1057:../asf/common/services/usb/udc/udc.c **** 
1058:../asf/common/services/usb/udc/udc.c **** /**
1059:../asf/common/services/usb/udc/udc.c ****  * \brief Send the SETUP interface request to UDI
1060:../asf/common/services/usb/udc/udc.c ****  *
1061:../asf/common/services/usb/udc/udc.c ****  * \return true if the request is supported
1062:../asf/common/services/usb/udc/udc.c ****  */
1063:../asf/common/services/usb/udc/udc.c **** static bool udc_req_ep(void)
1064:../asf/common/services/usb/udc/udc.c **** {
1065:../asf/common/services/usb/udc/udc.c **** 	uint8_t iface_num;
1066:../asf/common/services/usb/udc/udc.c **** 	udi_api_t UDC_DESC_STORAGE *udi_api;
1067:../asf/common/services/usb/udc/udc.c **** 
1068:../asf/common/services/usb/udc/udc.c **** 	if (0 == udc_num_configuration) {
1069:../asf/common/services/usb/udc/udc.c **** 		return false; // The device is not is configured state yet
1070:../asf/common/services/usb/udc/udc.c **** 	}
1071:../asf/common/services/usb/udc/udc.c **** 	// Send this request on all enabled interfaces
1072:../asf/common/services/usb/udc/udc.c **** 	iface_num = udd_g_ctrlreq.req.wIndex & 0xFF;
1073:../asf/common/services/usb/udc/udc.c **** 	for (iface_num = 0; iface_num < udc_ptr_conf->desc->bNumInterfaces;
1074:../asf/common/services/usb/udc/udc.c **** 			iface_num++) {
1075:../asf/common/services/usb/udc/udc.c **** 		// Select the interface with the current alternate setting
1076:../asf/common/services/usb/udc/udc.c **** 		udi_api = udc_ptr_conf->udi_apis[iface_num];
1077:../asf/common/services/usb/udc/udc.c **** 		if (!udc_update_iface_desc(iface_num, udi_api->getsetting())) {
1078:../asf/common/services/usb/udc/udc.c **** 			return false;
1079:../asf/common/services/usb/udc/udc.c **** 		}
1080:../asf/common/services/usb/udc/udc.c **** 
1081:../asf/common/services/usb/udc/udc.c **** 		// Send the SETUP request to the UDI
1082:../asf/common/services/usb/udc/udc.c **** 		if (udi_api->setup()) {
1083:../asf/common/services/usb/udc/udc.c **** 			return true;
1084:../asf/common/services/usb/udc/udc.c **** 		}
1085:../asf/common/services/usb/udc/udc.c **** 	}
1086:../asf/common/services/usb/udc/udc.c **** 	return false;
1087:../asf/common/services/usb/udc/udc.c **** }
1088:../asf/common/services/usb/udc/udc.c **** 
1089:../asf/common/services/usb/udc/udc.c **** /**
1090:../asf/common/services/usb/udc/udc.c ****  * \brief Main routine to manage the USB SETUP request.
1091:../asf/common/services/usb/udc/udc.c ****  *
1092:../asf/common/services/usb/udc/udc.c ****  * This function parses a USB SETUP request and submits an appropriate
1093:../asf/common/services/usb/udc/udc.c ****  * response back to the host or, in the case of SETUP OUT requests
1094:../asf/common/services/usb/udc/udc.c ****  * with data, sets up a buffer for receiving the data payload.
1095:../asf/common/services/usb/udc/udc.c ****  *
1096:../asf/common/services/usb/udc/udc.c ****  * The main standard requests defined by the USB 2.0 standard are handled
1097:../asf/common/services/usb/udc/udc.c ****  * internally. The interface requests are sent to UDI, and the specific request
1098:../asf/common/services/usb/udc/udc.c ****  * sent to a specific application callback.
1099:../asf/common/services/usb/udc/udc.c ****  *
1100:../asf/common/services/usb/udc/udc.c ****  * \return true if the request is supported, else the request is stalled by UDD
1101:../asf/common/services/usb/udc/udc.c ****  */
1102:../asf/common/services/usb/udc/udc.c **** bool udc_process_setup(void)
1103:../asf/common/services/usb/udc/udc.c **** {
 726              		.loc 1 1103 0
 727              		.cfi_startproc
 728              		@ args = 0, pretend = 0, frame = 0
 729              		@ frame_needed = 0, uses_anonymous_args = 0
 730 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 731              		.cfi_def_cfa_offset 32
 732              		.cfi_offset 3, -32
ARM GAS  /tmp/cc1oZp4Q.s 			page 35


 733              		.cfi_offset 4, -28
 734              		.cfi_offset 5, -24
 735              		.cfi_offset 6, -20
 736              		.cfi_offset 7, -16
 737              		.cfi_offset 8, -12
 738              		.cfi_offset 9, -8
 739              		.cfi_offset 14, -4
1104:../asf/common/services/usb/udc/udc.c **** 	// By default no data (receive/send) and no callbacks registered
1105:../asf/common/services/usb/udc/udc.c **** 	udd_g_ctrlreq.payload_size = 0;
 740              		.loc 1 1105 0
 741 0004 A44C     		ldr	r4, .L245
 742 0006 0022     		movs	r2, #0
1106:../asf/common/services/usb/udc/udc.c **** 	udd_g_ctrlreq.callback = NULL;
1107:../asf/common/services/usb/udc/udc.c **** 	udd_g_ctrlreq.over_under_run = NULL;
1108:../asf/common/services/usb/udc/udc.c **** 
1109:../asf/common/services/usb/udc/udc.c **** 	if (Udd_setup_is_in()) {
 743              		.loc 1 1109 0
 744 0008 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
1105:../asf/common/services/usb/udc/udc.c **** 	udd_g_ctrlreq.callback = NULL;
 745              		.loc 1 1105 0
 746 000a A281     		strh	r2, [r4, #12]	@ movhi
1106:../asf/common/services/usb/udc/udc.c **** 	udd_g_ctrlreq.callback = NULL;
 747              		.loc 1 1106 0
 748 000c 2261     		str	r2, [r4, #16]
1107:../asf/common/services/usb/udc/udc.c **** 
 749              		.loc 1 1107 0
 750 000e 6261     		str	r2, [r4, #20]
 751              		.loc 1 1109 0
 752 0010 1A06     		lsls	r2, r3, #24
 753 0012 0CD4     		bmi	.L238
1110:../asf/common/services/usb/udc/udc.c **** 		if (udd_g_ctrlreq.req.wLength == 0) {
1111:../asf/common/services/usb/udc/udc.c **** 			return false; // Error from USB host
1112:../asf/common/services/usb/udc/udc.c **** 		}
1113:../asf/common/services/usb/udc/udc.c **** 	}
1114:../asf/common/services/usb/udc/udc.c **** 
1115:../asf/common/services/usb/udc/udc.c **** 	// If standard request then try to decode it in UDC
1116:../asf/common/services/usb/udc/udc.c **** 	if (Udd_setup_type() == USB_REQ_TYPE_STANDARD) {
 754              		.loc 1 1116 0
 755 0014 13F0600F 		tst	r3, #96
 756 0018 4AD0     		beq	.L239
 757              	.L232:
 758 001a 03F01F03 		and	r3, r3, #31
1117:../asf/common/services/usb/udc/udc.c **** 		if (udc_reqstd()) {
1118:../asf/common/services/usb/udc/udc.c **** 			return true;
1119:../asf/common/services/usb/udc/udc.c **** 		}
1120:../asf/common/services/usb/udc/udc.c **** 	}
1121:../asf/common/services/usb/udc/udc.c **** 
1122:../asf/common/services/usb/udc/udc.c **** 	// If interface request then try to decode it in UDI
1123:../asf/common/services/usb/udc/udc.c **** 	if (Udd_setup_recipient() == USB_REQ_RECIP_INTERFACE) {
 759              		.loc 1 1123 0
 760 001e 012B     		cmp	r3, #1
 761 0020 62D0     		beq	.L233
 762              	.L184:
1124:../asf/common/services/usb/udc/udc.c **** 		if (udc_req_iface()) {
1125:../asf/common/services/usb/udc/udc.c **** 			return true;
1126:../asf/common/services/usb/udc/udc.c **** 		}
1127:../asf/common/services/usb/udc/udc.c **** 	}
ARM GAS  /tmp/cc1oZp4Q.s 			page 36


1128:../asf/common/services/usb/udc/udc.c **** 
1129:../asf/common/services/usb/udc/udc.c **** 	// If endpoint request then try to decode it in UDI
1130:../asf/common/services/usb/udc/udc.c **** 	if (Udd_setup_recipient() == USB_REQ_RECIP_ENDPOINT) {
 763              		.loc 1 1130 0
 764 0022 022B     		cmp	r3, #2
 765 0024 1ED0     		beq	.L166
 766              	.L139:
1111:../asf/common/services/usb/udc/udc.c **** 		}
 767              		.loc 1 1111 0
 768 0026 0025     		movs	r5, #0
 769              	.L230:
1131:../asf/common/services/usb/udc/udc.c **** 		if (udc_req_ep()) {
1132:../asf/common/services/usb/udc/udc.c **** 			return true;
1133:../asf/common/services/usb/udc/udc.c **** 		}
1134:../asf/common/services/usb/udc/udc.c **** 	}
1135:../asf/common/services/usb/udc/udc.c **** 
1136:../asf/common/services/usb/udc/udc.c **** 	// Here SETUP request unknown by UDC and UDIs
1137:../asf/common/services/usb/udc/udc.c **** #ifdef USB_DEVICE_SPECIFIC_REQUEST
1138:../asf/common/services/usb/udc/udc.c **** 	// Try to decode it in specific callback
1139:../asf/common/services/usb/udc/udc.c **** 	return USB_DEVICE_SPECIFIC_REQUEST(); // Ex: Vendor request,...
1140:../asf/common/services/usb/udc/udc.c **** #else
1141:../asf/common/services/usb/udc/udc.c **** 	return false;
1142:../asf/common/services/usb/udc/udc.c **** #endif
1143:../asf/common/services/usb/udc/udc.c **** }
 770              		.loc 1 1143 0
 771 0028 2846     		mov	r0, r5
 772 002a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 773              	.L238:
1110:../asf/common/services/usb/udc/udc.c **** 			return false; // Error from USB host
 774              		.loc 1 1110 0
 775 002e E688     		ldrh	r6, [r4, #6]
 776 0030 002E     		cmp	r6, #0
 777 0032 F8D0     		beq	.L139
1116:../asf/common/services/usb/udc/udc.c **** 		if (udc_reqstd()) {
 778              		.loc 1 1116 0
 779 0034 13F06001 		ands	r1, r3, #96
 780 0038 EFD1     		bne	.L232
 781              	.LBB155:
 782              	.LBB156:
 942:../asf/common/services/usb/udc/udc.c **** 			// Standard Get Device request
 783              		.loc 1 942 0
 784 003a 13F01F03 		ands	r3, r3, #31
 785 003e 40F08180 		bne	.L141
 944:../asf/common/services/usb/udc/udc.c **** 			case USB_REQ_GET_STATUS:
 786              		.loc 1 944 0
 787 0042 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 788 0044 062B     		cmp	r3, #6
 789 0046 00F03781 		beq	.L142
 790 004a 082B     		cmp	r3, #8
 791 004c 00F01A81 		beq	.L143
 792 0050 002B     		cmp	r3, #0
 793 0052 E8D1     		bne	.L139
 794              	.LBB157:
 795              	.LBB158:
 427:../asf/common/services/usb/udc/udc.c **** 		return false;
 796              		.loc 1 427 0
 797 0054 022E     		cmp	r6, #2
ARM GAS  /tmp/cc1oZp4Q.s 			page 37


 798 0056 E6D1     		bne	.L139
 431:../asf/common/services/usb/udc/udc.c **** 			sizeof(udc_device_status));
 799              		.loc 1 431 0
 800 0058 3146     		mov	r1, r6
 801 005a 9048     		ldr	r0, .L245+4
 802 005c FFF7FEFF 		bl	udd_set_setup_payload
 803              	.LVL57:
 804              	.LBE158:
 805              	.LBE157:
 806              	.LBE156:
 807              	.LBE155:
1118:../asf/common/services/usb/udc/udc.c **** 		}
 808              		.loc 1 1118 0
 809 0060 0125     		movs	r5, #1
 810 0062 E1E7     		b	.L230
 811              	.L166:
 812              	.LBB208:
 813              	.LBB209:
1068:../asf/common/services/usb/udc/udc.c **** 		return false; // The device is not is configured state yet
 814              		.loc 1 1068 0
 815 0064 8E4E     		ldr	r6, .L245+8
 816 0066 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 817 0068 002B     		cmp	r3, #0
 818 006a DCD0     		beq	.L139
 819              	.LVL58:
1073:../asf/common/services/usb/udc/udc.c **** 			iface_num++) {
 820              		.loc 1 1073 0
 821 006c 8D4F     		ldr	r7, .L245+12
 822 006e 3B68     		ldr	r3, [r7]
 823 0070 1A68     		ldr	r2, [r3]
 824 0072 1279     		ldrb	r2, [r2, #4]	@ zero_extendqisi2
 825 0074 002A     		cmp	r2, #0
 826 0076 D6D0     		beq	.L139
 827 0078 0024     		movs	r4, #0
 828 007a 0EE0     		b	.L187
 829              	.LVL59:
 830              	.L240:
 831              	.LBB210:
 832              	.LBB211:
 833 007c FFF7FEFF 		bl	udc_update_iface_desc.part.0
 834              	.LVL60:
 835              	.LBE211:
 836              	.LBE210:
1077:../asf/common/services/usb/udc/udc.c **** 			return false;
 837              		.loc 1 1077 0
 838 0080 0028     		cmp	r0, #0
 839 0082 D0D0     		beq	.L139
1082:../asf/common/services/usb/udc/udc.c **** 			return true;
 840              		.loc 1 1082 0
 841 0084 AB68     		ldr	r3, [r5, #8]
1074:../asf/common/services/usb/udc/udc.c **** 		// Select the interface with the current alternate setting
 842              		.loc 1 1074 0
 843 0086 0134     		adds	r4, r4, #1
 844              	.LVL61:
1082:../asf/common/services/usb/udc/udc.c **** 			return true;
 845              		.loc 1 1082 0
 846 0088 9847     		blx	r3
ARM GAS  /tmp/cc1oZp4Q.s 			page 38


 847              	.LVL62:
 848 008a 0028     		cmp	r0, #0
 849 008c 58D1     		bne	.L235
1073:../asf/common/services/usb/udc/udc.c **** 			iface_num++) {
 850              		.loc 1 1073 0
 851 008e 3B68     		ldr	r3, [r7]
1074:../asf/common/services/usb/udc/udc.c **** 		// Select the interface with the current alternate setting
 852              		.loc 1 1074 0
 853 0090 E4B2     		uxtb	r4, r4
 854              	.LVL63:
1073:../asf/common/services/usb/udc/udc.c **** 			iface_num++) {
 855              		.loc 1 1073 0
 856 0092 1A68     		ldr	r2, [r3]
 857 0094 1279     		ldrb	r2, [r2, #4]	@ zero_extendqisi2
 858 0096 A242     		cmp	r2, r4
 859 0098 C5D9     		bls	.L139
 860              	.LVL64:
 861              	.L187:
1076:../asf/common/services/usb/udc/udc.c **** 		if (!udc_update_iface_desc(iface_num, udi_api->getsetting())) {
 862              		.loc 1 1076 0
 863 009a 5B68     		ldr	r3, [r3, #4]
 864 009c 53F82450 		ldr	r5, [r3, r4, lsl #2]
 865              	.LVL65:
1077:../asf/common/services/usb/udc/udc.c **** 			return false;
 866              		.loc 1 1077 0
 867 00a0 EB68     		ldr	r3, [r5, #12]
 868 00a2 9847     		blx	r3
 869              	.LVL66:
 870              	.LBB214:
 871              	.LBB212:
 233:../asf/common/services/usb/udc/udc.c **** 		return false;
 872              		.loc 1 233 0
 873 00a4 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 874              	.LBE212:
 875              	.LBE214:
1077:../asf/common/services/usb/udc/udc.c **** 			return false;
 876              		.loc 1 1077 0
 877 00a6 0146     		mov	r1, r0
 878              	.LVL67:
 879              	.LBB215:
 880              	.LBB213:
 881 00a8 2046     		mov	r0, r4
 233:../asf/common/services/usb/udc/udc.c **** 		return false;
 882              		.loc 1 233 0
 883 00aa 002B     		cmp	r3, #0
 884 00ac E6D1     		bne	.L240
 885 00ae BAE7     		b	.L139
 886              	.LVL68:
 887              	.L239:
 888              	.LBE213:
 889              	.LBE215:
 890              	.LBE209:
 891              	.LBE208:
 892              	.LBB216:
 893              	.LBB199:
 978:../asf/common/services/usb/udc/udc.c **** 			// Standard Set Device request
 894              		.loc 1 978 0
ARM GAS  /tmp/cc1oZp4Q.s 			page 39


 895 00b0 13F01F03 		ands	r3, r3, #31
 896 00b4 2DD1     		bne	.L167
 980:../asf/common/services/usb/udc/udc.c **** 			case USB_REQ_SET_ADDRESS:
 897              		.loc 1 980 0
 898 00b6 6278     		ldrb	r2, [r4, #1]	@ zero_extendqisi2
 899 00b8 013A     		subs	r2, r2, #1
 900 00ba 082A     		cmp	r2, #8
 901 00bc B3D8     		bhi	.L139
 902 00be 01A1     		adr	r1, .L169
 903 00c0 51F822F0 		ldr	pc, [r1, r2, lsl #2]
 904              		.p2align 2
 905              	.L169:
 906 00c4 7F010000 		.word	.L168+1
 907 00c8 27000000 		.word	.L139+1
 908 00cc 23000000 		.word	.L184+1
 909 00d0 27000000 		.word	.L139+1
 910 00d4 6F010000 		.word	.L170+1
 911 00d8 27000000 		.word	.L139+1
 912 00dc 27000000 		.word	.L139+1
 913 00e0 27000000 		.word	.L139+1
 914 00e4 9B010000 		.word	.L171+1
 915              		.p2align 1
 916              	.L233:
 917 00e8 6D4E     		ldr	r6, .L245+8
 918 00ea 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 919              	.LBE199:
 920              	.LBE216:
 921              	.LBB217:
 922              	.LBB218:
1033:../asf/common/services/usb/udc/udc.c **** 		return false; // The device is not is configured state yet
 923              		.loc 1 1033 0
 924 00ec 002B     		cmp	r3, #0
 925 00ee 9AD0     		beq	.L139
 926 00f0 6C4F     		ldr	r7, .L245+12
 927              	.L162:
1038:../asf/common/services/usb/udc/udc.c **** 		return false;
 928              		.loc 1 1038 0
 929 00f2 3D68     		ldr	r5, [r7]
1037:../asf/common/services/usb/udc/udc.c **** 	if (iface_num >= udc_ptr_conf->desc->bNumInterfaces) {
 930              		.loc 1 1037 0
 931 00f4 2779     		ldrb	r7, [r4, #4]	@ zero_extendqisi2
 932              	.LVL69:
1038:../asf/common/services/usb/udc/udc.c **** 		return false;
 933              		.loc 1 1038 0
 934 00f6 2B68     		ldr	r3, [r5]
 935 00f8 1B79     		ldrb	r3, [r3, #4]	@ zero_extendqisi2
 936 00fa BB42     		cmp	r3, r7
 937 00fc 93D9     		bls	.L139
 938              	.LVL70:
 939              	.LBB219:
 940              	.LBB220:
 941 00fe 0021     		movs	r1, #0
 942 0100 3846     		mov	r0, r7
 943 0102 FFF7FEFF 		bl	udc_update_iface_desc.part.0
 944              	.LVL71:
 945              	.LBE220:
 946              	.LBE219:
ARM GAS  /tmp/cc1oZp4Q.s 			page 40


1045:../asf/common/services/usb/udc/udc.c **** 		return false;
 947              		.loc 1 1045 0
 948 0106 0028     		cmp	r0, #0
 949 0108 7ED1     		bne	.L241
 950              	.LVL72:
 951              	.L234:
 952 010a 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 953 010c 03F01F03 		and	r3, r3, #31
 954 0110 87E7     		b	.L184
 955              	.L167:
 956              	.LBE218:
 957              	.LBE217:
 958              	.LBB224:
 959              	.LBB200:
 997:../asf/common/services/usb/udc/udc.c **** 			// Standard Set Interface request
 960              		.loc 1 997 0
 961 0112 012B     		cmp	r3, #1
 962 0114 51D0     		beq	.L242
1007:../asf/common/services/usb/udc/udc.c **** 			// Standard Set Endpoint request
 963              		.loc 1 1007 0
 964 0116 022B     		cmp	r3, #2
 965 0118 85D1     		bne	.L139
1009:../asf/common/services/usb/udc/udc.c **** 			case USB_REQ_CLEAR_FEATURE:
 966              		.loc 1 1009 0
 967 011a 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 968 011c 012B     		cmp	r3, #1
 969 011e 65D0     		beq	.L182
 970 0120 032B     		cmp	r3, #3
 971 0122 9FD1     		bne	.L166
 972              	.LBB159:
 973              	.LBB160:
 570:../asf/common/services/usb/udc/udc.c **** 		return false;
 974              		.loc 1 570 0
 975 0124 E388     		ldrh	r3, [r4, #6]
 976 0126 002B     		cmp	r3, #0
 977 0128 9CD1     		bne	.L166
 573:../asf/common/services/usb/udc/udc.c **** 		udd_ep_abort(udd_g_ctrlreq.req.wIndex & 0xFF);
 978              		.loc 1 573 0
 979 012a 6388     		ldrh	r3, [r4, #2]
 980 012c 002B     		cmp	r3, #0
 981 012e 99D1     		bne	.L166
 574:../asf/common/services/usb/udc/udc.c **** 		return udd_ep_set_halt(udd_g_ctrlreq.req.wIndex & 0xFF);
 982              		.loc 1 574 0
 983 0130 2079     		ldrb	r0, [r4, #4]	@ zero_extendqisi2
 984 0132 FFF7FEFF 		bl	udd_ep_abort
 985              	.LVL73:
 575:../asf/common/services/usb/udc/udc.c **** 	}
 986              		.loc 1 575 0
 987 0136 2079     		ldrb	r0, [r4, #4]	@ zero_extendqisi2
 988 0138 FFF7FEFF 		bl	udd_ep_set_halt
 989              	.LVL74:
 990              	.LBE160:
 991              	.LBE159:
 992              	.LBE200:
 993              	.LBE224:
1117:../asf/common/services/usb/udc/udc.c **** 			return true;
 994              		.loc 1 1117 0
ARM GAS  /tmp/cc1oZp4Q.s 			page 41


 995 013c 0028     		cmp	r0, #0
 996 013e 3AD0     		beq	.L152
 997              	.L235:
1118:../asf/common/services/usb/udc/udc.c **** 		}
 998              		.loc 1 1118 0
 999 0140 0125     		movs	r5, #1
 1000 0142 71E7     		b	.L230
 1001              	.L141:
 1002              	.LBB225:
 1003              	.LBB201:
 956:../asf/common/services/usb/udc/udc.c **** 			// Standard Get Interface request
 1004              		.loc 1 956 0
 1005 0144 012B     		cmp	r3, #1
 1006 0146 74D0     		beq	.L243
 966:../asf/common/services/usb/udc/udc.c **** 			// Standard Get Endpoint request
 1007              		.loc 1 966 0
 1008 0148 022B     		cmp	r3, #2
 1009 014a 7FF46CAF 		bne	.L139
 968:../asf/common/services/usb/udc/udc.c **** 			case USB_REQ_GET_STATUS:
 1010              		.loc 1 968 0
 1011 014e 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 1012 0150 002B     		cmp	r3, #0
 1013 0152 87D1     		bne	.L166
 1014              	.LBB161:
 1015              	.LBB162:
 446:../asf/common/services/usb/udc/udc.c **** 		return false;
 1016              		.loc 1 446 0
 1017 0154 022E     		cmp	r6, #2
 1018 0156 85D1     		bne	.L166
 450:../asf/common/services/usb/udc/udc.c **** 			wIndex & 0xFF) ? CPU_TO_LE16(USB_EP_STATUS_HALTED) : 0;
 1019              		.loc 1 450 0
 1020 0158 2079     		ldrb	r0, [r4, #4]	@ zero_extendqisi2
 1021              	.LBE162:
 1022              	.LBE161:
 1023              	.LBE201:
 1024              	.LBE225:
1118:../asf/common/services/usb/udc/udc.c **** 		}
 1025              		.loc 1 1118 0
 1026 015a 0125     		movs	r5, #1
 1027              	.LBB226:
 1028              	.LBB202:
 1029              	.LBB164:
 1030              	.LBB163:
 450:../asf/common/services/usb/udc/udc.c **** 			wIndex & 0xFF) ? CPU_TO_LE16(USB_EP_STATUS_HALTED) : 0;
 1031              		.loc 1 450 0
 1032 015c FFF7FEFF 		bl	udd_ep_is_halted
 1033              	.LVL75:
 1034 0160 514B     		ldr	r3, .L245+16
 453:../asf/common/services/usb/udc/udc.c **** 			sizeof(udc_ep_status));
 1035              		.loc 1 453 0
 1036 0162 3146     		mov	r1, r6
 451:../asf/common/services/usb/udc/udc.c **** 
 1037              		.loc 1 451 0
 1038 0164 1880     		strh	r0, [r3]	@ movhi
 453:../asf/common/services/usb/udc/udc.c **** 			sizeof(udc_ep_status));
 1039              		.loc 1 453 0
 1040 0166 1846     		mov	r0, r3
ARM GAS  /tmp/cc1oZp4Q.s 			page 42


 1041 0168 FFF7FEFF 		bl	udd_set_setup_payload
 1042              	.LVL76:
 1043 016c 5CE7     		b	.L230
 1044              	.L170:
 1045              	.LBE163:
 1046              	.LBE164:
 1047              	.LBB165:
 1048              	.LBB166:
 597:../asf/common/services/usb/udc/udc.c **** 		return false;
 1049              		.loc 1 597 0
 1050 016e E388     		ldrh	r3, [r4, #6]
 1051 0170 002B     		cmp	r3, #0
 1052 0172 7FF458AF 		bne	.L139
 603:../asf/common/services/usb/udc/udc.c **** 	return true;
 1053              		.loc 1 603 0
 1054 0176 4D4B     		ldr	r3, .L245+20
 1055              	.LBE166:
 1056              	.LBE165:
 1057              	.LBE202:
 1058              	.LBE226:
1118:../asf/common/services/usb/udc/udc.c **** 		}
 1059              		.loc 1 1118 0
 1060 0178 0125     		movs	r5, #1
 1061              	.LBB227:
 1062              	.LBB203:
 1063              	.LBB168:
 1064              	.LBB167:
 603:../asf/common/services/usb/udc/udc.c **** 	return true;
 1065              		.loc 1 603 0
 1066 017a 2361     		str	r3, [r4, #16]
 1067 017c 54E7     		b	.L230
 1068              	.L168:
 1069              	.LBE167:
 1070              	.LBE168:
 1071              	.LBB169:
 1072              	.LBB170:
 466:../asf/common/services/usb/udc/udc.c **** 		return false;
 1073              		.loc 1 466 0
 1074 017e E388     		ldrh	r3, [r4, #6]
 1075 0180 002B     		cmp	r3, #0
 1076 0182 7FF450AF 		bne	.L139
 470:../asf/common/services/usb/udc/udc.c **** 		udc_device_status &= CPU_TO_LE16(~(uint32_t)USB_DEV_STATUS_REMOTEWAKEUP);
 1077              		.loc 1 470 0
 1078 0186 6588     		ldrh	r5, [r4, #2]
 1079 0188 012D     		cmp	r5, #1
 1080 018a 7FF44CAF 		bne	.L139
 471:../asf/common/services/usb/udc/udc.c **** #if (USB_CONFIG_ATTR_REMOTE_WAKEUP \
 1081              		.loc 1 471 0
 1082 018e 434A     		ldr	r2, .L245+4
 1083 0190 1388     		ldrh	r3, [r2]
 1084 0192 23F00203 		bic	r3, r3, #2
 1085 0196 1380     		strh	r3, [r2]	@ movhi
 1086 0198 46E7     		b	.L230
 1087              	.L171:
 1088              	.LBE170:
 1089              	.LBE169:
 1090              	.LBB171:
ARM GAS  /tmp/cc1oZp4Q.s 			page 43


 1091              	.LBB172:
 808:../asf/common/services/usb/udc/udc.c **** 		return false;
 1092              		.loc 1 808 0
 1093 019a E588     		ldrh	r5, [r4, #6]
 1094 019c 002D     		cmp	r5, #0
 1095 019e 7FF442AF 		bne	.L139
 812:../asf/common/services/usb/udc/udc.c **** 		return false;
 1096              		.loc 1 812 0
 1097 01a2 FFF7FEFF 		bl	udd_getaddress
 1098              	.LVL77:
 1099 01a6 30B1     		cbz	r0, .L152
 828:../asf/common/services/usb/udc/udc.c **** 			return false;
 1100              		.loc 1 828 0
 1101 01a8 414E     		ldr	r6, .L245+24
 827:../asf/common/services/usb/udc/udc.c **** 				udc_config.confdev_lsfs->bNumConfigurations) {
 1102              		.loc 1 827 0
 1103 01aa A278     		ldrb	r2, [r4, #2]	@ zero_extendqisi2
 828:../asf/common/services/usb/udc/udc.c **** 			return false;
 1104              		.loc 1 828 0
 1105 01ac 3368     		ldr	r3, [r6]
 1106 01ae 5B7C     		ldrb	r3, [r3, #17]	@ zero_extendqisi2
 827:../asf/common/services/usb/udc/udc.c **** 				udc_config.confdev_lsfs->bNumConfigurations) {
 1107              		.loc 1 827 0
 1108 01b0 9A42     		cmp	r2, r3
 1109 01b2 40F3EB80 		ble	.L244
 1110              	.L152:
 1111 01b6 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 1112 01b8 2FE7     		b	.L232
 1113              	.L242:
 1114              	.LBE172:
 1115              	.LBE171:
 999:../asf/common/services/usb/udc/udc.c **** 			case USB_REQ_SET_INTERFACE:
 1116              		.loc 1 999 0
 1117 01ba 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 1118 01bc 0B2B     		cmp	r3, #11
 1119 01be FAD1     		bne	.L152
 1120              	.LBB174:
 1121              	.LBB175:
 910:../asf/common/services/usb/udc/udc.c **** 		return false; // Error in request
 1122              		.loc 1 910 0
 1123 01c0 E388     		ldrh	r3, [r4, #6]
 1124 01c2 002B     		cmp	r3, #0
 1125 01c4 90D1     		bne	.L233
 913:../asf/common/services/usb/udc/udc.c **** 		return false; // The device is not is configured state yet
 1126              		.loc 1 913 0
 1127 01c6 364B     		ldr	r3, .L245+8
 1128 01c8 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1129 01ca 002B     		cmp	r3, #0
 1130 01cc 3FF42BAF 		beq	.L139
 917:../asf/common/services/usb/udc/udc.c **** 	setting_num = udd_g_ctrlreq.req.wValue & 0xFF;
 1131              		.loc 1 917 0
 1132 01d0 2579     		ldrb	r5, [r4, #4]	@ zero_extendqisi2
 1133              	.LVL78:
 918:../asf/common/services/usb/udc/udc.c **** 
 1134              		.loc 1 918 0
 1135 01d2 6688     		ldrh	r6, [r4, #2]
 1136              	.LVL79:
ARM GAS  /tmp/cc1oZp4Q.s 			page 44


 921:../asf/common/services/usb/udc/udc.c **** 		return false;
 1137              		.loc 1 921 0
 1138 01d4 2846     		mov	r0, r5
 1139 01d6 FFF7FEFF 		bl	udc_iface_disable
 1140              	.LVL80:
 1141 01da 0028     		cmp	r0, #0
 1142 01dc EBD0     		beq	.L152
 926:../asf/common/services/usb/udc/udc.c **** }
 1143              		.loc 1 926 0
 1144 01de F1B2     		uxtb	r1, r6
 1145 01e0 2846     		mov	r0, r5
 1146 01e2 FFF7FEFF 		bl	udc_iface_enable
 1147              	.LVL81:
 1148              	.LBE175:
 1149              	.LBE174:
 1150              	.LBE203:
 1151              	.LBE227:
1117:../asf/common/services/usb/udc/udc.c **** 			return true;
 1152              		.loc 1 1117 0
 1153 01e6 0028     		cmp	r0, #0
 1154 01e8 AAD1     		bne	.L235
 1155 01ea E4E7     		b	.L152
 1156              	.LVL82:
 1157              	.L182:
 1158              	.LBB228:
 1159              	.LBB204:
 1160              	.LBB176:
 1161              	.LBB177:
 489:../asf/common/services/usb/udc/udc.c **** 		return false;
 1162              		.loc 1 489 0
 1163 01ec E388     		ldrh	r3, [r4, #6]
 1164 01ee 002B     		cmp	r3, #0
 1165 01f0 7FF438AF 		bne	.L166
 493:../asf/common/services/usb/udc/udc.c **** 		return udd_ep_clear_halt(udd_g_ctrlreq.req.wIndex & 0xFF);
 1166              		.loc 1 493 0
 1167 01f4 6388     		ldrh	r3, [r4, #2]
 1168 01f6 002B     		cmp	r3, #0
 1169 01f8 7FF434AF 		bne	.L166
 494:../asf/common/services/usb/udc/udc.c **** 	}
 1170              		.loc 1 494 0
 1171 01fc 2079     		ldrb	r0, [r4, #4]	@ zero_extendqisi2
 1172 01fe FFF7FEFF 		bl	udd_ep_clear_halt
 1173              	.LVL83:
 1174              	.LBE177:
 1175              	.LBE176:
 1176              	.LBE204:
 1177              	.LBE228:
1117:../asf/common/services/usb/udc/udc.c **** 			return true;
 1178              		.loc 1 1117 0
 1179 0202 0028     		cmp	r0, #0
 1180 0204 9CD1     		bne	.L235
 1181 0206 D6E7     		b	.L152
 1182              	.LVL84:
 1183              	.L241:
 1184              	.LBB229:
 1185              	.LBB223:
1049:../asf/common/services/usb/udc/udc.c **** 	if (!udc_update_iface_desc(iface_num, udi_api->getsetting())) {
ARM GAS  /tmp/cc1oZp4Q.s 			page 45


 1186              		.loc 1 1049 0
 1187 0208 6B68     		ldr	r3, [r5, #4]
 1188 020a 53F82750 		ldr	r5, [r3, r7, lsl #2]
 1189              	.LVL85:
1050:../asf/common/services/usb/udc/udc.c **** 		return false;
 1190              		.loc 1 1050 0
 1191 020e EB68     		ldr	r3, [r5, #12]
 1192 0210 9847     		blx	r3
 1193              	.LVL86:
 1194              	.LBB221:
 1195              	.LBB222:
 233:../asf/common/services/usb/udc/udc.c **** 		return false;
 1196              		.loc 1 233 0
 1197 0212 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 1198 0214 002B     		cmp	r3, #0
 1199 0216 3FF406AF 		beq	.L139
 1200 021a 0146     		mov	r1, r0
 1201 021c 3846     		mov	r0, r7
 1202              	.LVL87:
 1203 021e FFF7FEFF 		bl	udc_update_iface_desc.part.0
 1204              	.LVL88:
 1205              	.LBE222:
 1206              	.LBE221:
1050:../asf/common/services/usb/udc/udc.c **** 		return false;
 1207              		.loc 1 1050 0
 1208 0222 0028     		cmp	r0, #0
 1209 0224 3FF471AF 		beq	.L234
1055:../asf/common/services/usb/udc/udc.c **** }
 1210              		.loc 1 1055 0
 1211 0228 AB68     		ldr	r3, [r5, #8]
 1212 022a 9847     		blx	r3
 1213              	.LVL89:
 1214              	.LBE223:
 1215              	.LBE229:
1124:../asf/common/services/usb/udc/udc.c **** 			return true;
 1216              		.loc 1 1124 0
 1217 022c 0028     		cmp	r0, #0
 1218 022e 87D1     		bne	.L235
 1219 0230 6BE7     		b	.L234
 1220              	.L243:
 1221              	.LBB230:
 1222              	.LBB205:
 958:../asf/common/services/usb/udc/udc.c **** 			case USB_REQ_GET_INTERFACE:
 1223              		.loc 1 958 0
 1224 0232 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 1225 0234 0A2B     		cmp	r3, #10
 1226 0236 BED1     		bne	.L152
 1227              	.LBB178:
 1228              	.LBB179:
 873:../asf/common/services/usb/udc/udc.c **** 		return false; // Error in request
 1229              		.loc 1 873 0
 1230 0238 012E     		cmp	r6, #1
 1231 023a 7FF455AF 		bne	.L233
 876:../asf/common/services/usb/udc/udc.c **** 		return false; // The device is not is configured state yet
 1232              		.loc 1 876 0
 1233 023e 184E     		ldr	r6, .L245+8
 1234 0240 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
ARM GAS  /tmp/cc1oZp4Q.s 			page 46


 1235 0242 002B     		cmp	r3, #0
 1236 0244 3FF4EFAE 		beq	.L139
 882:../asf/common/services/usb/udc/udc.c **** 		return false;
 1237              		.loc 1 882 0
 1238 0248 164F     		ldr	r7, .L245+12
 881:../asf/common/services/usb/udc/udc.c **** 	if (iface_num >= udc_ptr_conf->desc->bNumInterfaces) {
 1239              		.loc 1 881 0
 1240 024a 94F80480 		ldrb	r8, [r4, #4]	@ zero_extendqisi2
 1241              	.LVL90:
 882:../asf/common/services/usb/udc/udc.c **** 		return false;
 1242              		.loc 1 882 0
 1243 024e D7F80090 		ldr	r9, [r7]
 1244 0252 D9F80030 		ldr	r3, [r9]
 1245 0256 1B79     		ldrb	r3, [r3, #4]	@ zero_extendqisi2
 1246 0258 4345     		cmp	r3, r8
 1247 025a 7FF64AAF 		bls	.L162
 1248              	.LVL91:
 1249              	.LBB180:
 1250              	.LBB181:
 1251 025e 4046     		mov	r0, r8
 1252 0260 FFF7FEFF 		bl	udc_update_iface_desc.part.0
 1253              	.LVL92:
 1254              	.LBE181:
 1255              	.LBE180:
 888:../asf/common/services/usb/udc/udc.c **** 		return false;
 1256              		.loc 1 888 0
 1257 0264 0546     		mov	r5, r0
 1258 0266 0028     		cmp	r0, #0
 1259 0268 A5D0     		beq	.L152
 1260              	.LVL93:
 892:../asf/common/services/usb/udc/udc.c **** 	udc_iface_setting = udi_api->getsetting();
 1261              		.loc 1 892 0
 1262 026a D9F80430 		ldr	r3, [r9, #4]
 893:../asf/common/services/usb/udc/udc.c **** 
 1263              		.loc 1 893 0
 1264 026e 53F82830 		ldr	r3, [r3, r8, lsl #2]
 1265 0272 DB68     		ldr	r3, [r3, #12]
 1266 0274 9847     		blx	r3
 1267              	.LVL94:
 1268 0276 0F4B     		ldr	r3, .L245+28
 896:../asf/common/services/usb/udc/udc.c **** 	return true;
 1269              		.loc 1 896 0
 1270 0278 0121     		movs	r1, #1
 893:../asf/common/services/usb/udc/udc.c **** 
 1271              		.loc 1 893 0
 1272 027a 1870     		strb	r0, [r3]
 896:../asf/common/services/usb/udc/udc.c **** 	return true;
 1273              		.loc 1 896 0
 1274 027c 1846     		mov	r0, r3
 1275 027e FFF7FEFF 		bl	udd_set_setup_payload
 1276              	.LVL95:
 1277 0282 D1E6     		b	.L230
 1278              	.LVL96:
 1279              	.L143:
 1280              	.LBE179:
 1281              	.LBE178:
 1282              	.LBB182:
ARM GAS  /tmp/cc1oZp4Q.s 			page 47


 1283              	.LBB183:
 790:../asf/common/services/usb/udc/udc.c **** 		return false;
 1284              		.loc 1 790 0
 1285 0284 012E     		cmp	r6, #1
 1286 0286 7FF4CEAE 		bne	.L139
 794:../asf/common/services/usb/udc/udc.c **** 	return true;
 1287              		.loc 1 794 0
 1288 028a 3146     		mov	r1, r6
 1289 028c 0448     		ldr	r0, .L245+8
 1290              	.LBE183:
 1291              	.LBE182:
 1292              	.LBE205:
 1293              	.LBE230:
1118:../asf/common/services/usb/udc/udc.c **** 		}
 1294              		.loc 1 1118 0
 1295 028e 3546     		mov	r5, r6
 1296              	.LBB231:
 1297              	.LBB206:
 1298              	.LBB185:
 1299              	.LBB184:
 794:../asf/common/services/usb/udc/udc.c **** 	return true;
 1300              		.loc 1 794 0
 1301 0290 FFF7FEFF 		bl	udd_set_setup_payload
 1302              	.LVL97:
 1303 0294 C8E6     		b	.L230
 1304              	.L246:
 1305 0296 00BF     		.align	2
 1306              	.L245:
 1307 0298 00000000 		.word	udd_g_ctrlreq
 1308 029c 00000000 		.word	.LANCHOR3
 1309 02a0 00000000 		.word	.LANCHOR2
 1310 02a4 00000000 		.word	.LANCHOR0
 1311 02a8 00000000 		.word	.LANCHOR9
 1312 02ac 00000000 		.word	udc_valid_address
 1313 02b0 00000000 		.word	udc_config
 1314 02b4 00000000 		.word	.LANCHOR8
 1315              	.L142:
 1316              	.LBE184:
 1317              	.LBE185:
 1318              	.LBB186:
 1319              	.LBB187:
 675:../asf/common/services/usb/udc/udc.c **** 
 1320              		.loc 1 675 0
 1321 02b8 6288     		ldrh	r2, [r4, #2]
 1322              	.LVL98:
 678:../asf/common/services/usb/udc/udc.c **** 	case USB_DT_DEVICE:
 1323              		.loc 1 678 0
 1324 02ba 130A     		lsrs	r3, r2, #8
 1325 02bc 013B     		subs	r3, r3, #1
 1326 02be 0E2B     		cmp	r3, #14
 1327 02c0 3FF6B1AE 		bhi	.L139
 1328 02c4 01A1     		adr	r1, .L147
 1329 02c6 51F823F0 		ldr	pc, [r1, r3, lsl #2]
 1330 02ca 00BF     		.p2align 2
 1331              	.L147:
 1332 02cc 81030000 		.word	.L146+1
 1333 02d0 5F030000 		.word	.L148+1
ARM GAS  /tmp/cc1oZp4Q.s 			page 48


 1334 02d4 25030000 		.word	.L149+1
 1335 02d8 27000000 		.word	.L139+1
 1336 02dc 27000000 		.word	.L139+1
 1337 02e0 27000000 		.word	.L139+1
 1338 02e4 27000000 		.word	.L139+1
 1339 02e8 27000000 		.word	.L139+1
 1340 02ec 27000000 		.word	.L139+1
 1341 02f0 27000000 		.word	.L139+1
 1342 02f4 27000000 		.word	.L139+1
 1343 02f8 27000000 		.word	.L139+1
 1344 02fc 27000000 		.word	.L139+1
 1345 0300 27000000 		.word	.L139+1
 1346 0304 09030000 		.word	.L150+1
 1347              		.p2align 1
 1348              	.L150:
 758:../asf/common/services/usb/udc/udc.c **** 			return false;
 1349              		.loc 1 758 0
 1350 0308 374B     		ldr	r3, .L247
 1351 030a 9868     		ldr	r0, [r3, #8]
 1352 030c 0028     		cmp	r0, #0
 1353 030e 3FF48AAE 		beq	.L139
 761:../asf/common/services/usb/udc/udc.c **** 				udc_config.conf_bos->wTotalLength);
 1354              		.loc 1 761 0
 1355 0312 4188     		ldrh	r1, [r0, #2]	@ unaligned
 1356 0314 FFF7FEFF 		bl	udd_set_setup_payload
 1357              	.LVL99:
 1358              	.L151:
 777:../asf/common/services/usb/udc/udc.c **** 		udd_g_ctrlreq.payload_size = udd_g_ctrlreq.req.wLength;
 1359              		.loc 1 777 0
 1360 0318 E388     		ldrh	r3, [r4, #6]
 1361 031a A289     		ldrh	r2, [r4, #12]
 1362 031c 9A42     		cmp	r2, r3
 778:../asf/common/services/usb/udc/udc.c **** 	}
 1363              		.loc 1 778 0
 1364 031e 88BF     		it	hi
 1365 0320 A381     		strhhi	r3, [r4, #12]	@ movhi
 1366 0322 0DE7     		b	.L235
 1367              	.LVL100:
 1368              	.L149:
 1369              	.LBB188:
 1370              	.LBB189:
 619:../asf/common/services/usb/udc/udc.c **** 	case 0:
 1371              		.loc 1 619 0
 1372 0324 D2B2     		uxtb	r2, r2
 1373 0326 012A     		cmp	r2, #1
 1374 0328 5AD0     		beq	.L153
 1375 032a 54D3     		bcc	.L154
 1376 032c 022A     		cmp	r2, #2
 1377 032e 7FF442AF 		bne	.L152
 633:../asf/common/services/usb/udc/udc.c **** 		str = udc_string_product_name;
 1378              		.loc 1 633 0
 1379 0332 0422     		movs	r2, #4
 1380              	.LVL101:
 634:../asf/common/services/usb/udc/udc.c **** 		break;
 1381              		.loc 1 634 0
 1382 0334 2D49     		ldr	r1, .L247+4
 1383              	.L155:
ARM GAS  /tmp/cc1oZp4Q.s 			page 49


 1384              	.LVL102:
 1385 0336 2E4E     		ldr	r6, .L247+8
 1386 0338 0139     		subs	r1, r1, #1
 1387              	.LVL103:
 1388              	.LBE189:
 1389              	.LBE188:
 1390              	.LBE187:
 1391              	.LBE186:
 1392              	.LBE206:
 1393              	.LBE231:
1103:../asf/common/services/usb/udc/udc.c **** 	// By default no data (receive/send) and no callbacks registered
 1394              		.loc 1 1103 0
 1395 033a 0023     		movs	r3, #0
 1396 033c 3046     		mov	r0, r6
 1397              	.LVL104:
 1398              	.L156:
 1399              	.LBB232:
 1400              	.LBB207:
 1401              	.LBB196:
 1402              	.LBB194:
 1403              	.LBB192:
 1404              	.LBB190:
 653:../asf/common/services/usb/udc/udc.c **** 			udc_string_desc.string[i] = cpu_to_le16((le16_t)str[i]);
 1405              		.loc 1 653 0
 1406 033e 0133     		adds	r3, r3, #1
 1407              	.LVL105:
 654:../asf/common/services/usb/udc/udc.c **** 		}
 1408              		.loc 1 654 0
 1409 0340 11F8015F 		ldrb	r5, [r1, #1]!	@ zero_extendqisi2
 653:../asf/common/services/usb/udc/udc.c **** 			udc_string_desc.string[i] = cpu_to_le16((le16_t)str[i]);
 1410              		.loc 1 653 0
 1411 0344 DBB2     		uxtb	r3, r3
 1412              	.LVL106:
 654:../asf/common/services/usb/udc/udc.c **** 		}
 1413              		.loc 1 654 0
 1414 0346 20F8025F 		strh	r5, [r0, #2]!	@ movhi
 653:../asf/common/services/usb/udc/udc.c **** 			udc_string_desc.string[i] = cpu_to_le16((le16_t)str[i]);
 1415              		.loc 1 653 0
 1416 034a 9A42     		cmp	r2, r3
 1417 034c F7D8     		bhi	.L156
 657:../asf/common/services/usb/udc/udc.c **** 		udd_set_setup_payload(
 1418              		.loc 1 657 0
 1419 034e 5300     		lsls	r3, r2, #1
 1420              	.LVL107:
 658:../asf/common/services/usb/udc/udc.c **** 			(uint8_t *) &udc_string_desc,
 1421              		.loc 1 658 0
 1422 0350 2748     		ldr	r0, .L247+8
 657:../asf/common/services/usb/udc/udc.c **** 		udd_set_setup_payload(
 1423              		.loc 1 657 0
 1424 0352 0233     		adds	r3, r3, #2
 658:../asf/common/services/usb/udc/udc.c **** 			(uint8_t *) &udc_string_desc,
 1425              		.loc 1 658 0
 1426 0354 1946     		mov	r1, r3
 657:../asf/common/services/usb/udc/udc.c **** 		udd_set_setup_payload(
 1427              		.loc 1 657 0
 1428 0356 3370     		strb	r3, [r6]
 658:../asf/common/services/usb/udc/udc.c **** 			(uint8_t *) &udc_string_desc,
ARM GAS  /tmp/cc1oZp4Q.s 			page 50


 1429              		.loc 1 658 0
 1430 0358 FFF7FEFF 		bl	udd_set_setup_payload
 1431              	.LVL108:
 1432 035c DCE7     		b	.L151
 1433              	.LVL109:
 1434              	.L148:
 1435              	.LBE190:
 1436              	.LBE192:
 711:../asf/common/services/usb/udc/udc.c **** 					bNumConfigurations) {
 1437              		.loc 1 711 0
 1438 035e 224B     		ldr	r3, .L247
 675:../asf/common/services/usb/udc/udc.c **** 
 1439              		.loc 1 675 0
 1440 0360 D2B2     		uxtb	r2, r2
 711:../asf/common/services/usb/udc/udc.c **** 					bNumConfigurations) {
 1441              		.loc 1 711 0
 1442 0362 1968     		ldr	r1, [r3]
 1443 0364 497C     		ldrb	r1, [r1, #17]	@ zero_extendqisi2
 1444 0366 9142     		cmp	r1, r2
 1445 0368 7FF65DAE 		bls	.L139
 716:../asf/common/services/usb/udc/udc.c **** 				le16_to_cpu(udc_config.conf_lsfs[conf_num].desc->wTotalLength));
 1446              		.loc 1 716 0
 1447 036c 5B68     		ldr	r3, [r3, #4]
 1448 036e 53F83200 		ldr	r0, [r3, r2, lsl #3]
 715:../asf/common/services/usb/udc/udc.c **** 				(uint8_t *)udc_config.conf_lsfs[conf_num].desc,
 1449              		.loc 1 715 0
 1450 0372 4188     		ldrh	r1, [r0, #2]	@ unaligned
 1451 0374 FFF7FEFF 		bl	udd_set_setup_payload
 1452              	.LVL110:
 719:../asf/common/services/usb/udc/udc.c **** 				USB_DT_CONFIGURATION;
 1453              		.loc 1 719 0
 1454 0378 A368     		ldr	r3, [r4, #8]
 1455 037a 0222     		movs	r2, #2
 1456 037c 5A70     		strb	r2, [r3, #1]
 1457 037e CBE7     		b	.L151
 1458              	.LVL111:
 1459              	.L146:
 690:../asf/common/services/usb/udc/udc.c **** 				udc_config.confdev_lsfs->bLength);
 1460              		.loc 1 690 0
 1461 0380 194B     		ldr	r3, .L247
 1462 0382 1868     		ldr	r0, [r3]
 689:../asf/common/services/usb/udc/udc.c **** 				(uint8_t *) udc_config.confdev_lsfs,
 1463              		.loc 1 689 0
 1464 0384 0178     		ldrb	r1, [r0]	@ zero_extendqisi2
 1465 0386 FFF7FEFF 		bl	udd_set_setup_payload
 1466              	.LVL112:
 1467 038a C5E7     		b	.L151
 1468              	.L244:
 1469              	.LBE194:
 1470              	.LBE196:
 1471              	.LBB197:
 1472              	.LBB173:
 834:../asf/common/services/usb/udc/udc.c **** 
 1473              		.loc 1 834 0
 1474 038c FFF7FEFF 		bl	udc_reset
 1475              	.LVL113:
 837:../asf/common/services/usb/udc/udc.c **** 	if (udc_num_configuration == 0) {
ARM GAS  /tmp/cc1oZp4Q.s 			page 51


 1476              		.loc 1 837 0
 1477 0390 A178     		ldrb	r1, [r4, #2]	@ zero_extendqisi2
 1478 0392 184B     		ldr	r3, .L247+12
 1479 0394 1970     		strb	r1, [r3]
 838:../asf/common/services/usb/udc/udc.c **** 		return true; // Default empty configuration requested
 1480              		.loc 1 838 0
 1481 0396 0029     		cmp	r1, #0
 1482 0398 3FF4D2AE 		beq	.L235
 850:../asf/common/services/usb/udc/udc.c **** 	}
 1483              		.loc 1 850 0
 1484 039c 6FF06042 		mvn	r2, #-536870912
 1485 03a0 7368     		ldr	r3, [r6, #4]
 1486 03a2 154F     		ldr	r7, .L247+16
 1487 03a4 0A44     		add	r2, r2, r1
 853:../asf/common/services/usb/udc/udc.c **** 			iface_num++) {
 1488              		.loc 1 853 0
 1489 03a6 53F83210 		ldr	r1, [r3, r2, lsl #3]
 850:../asf/common/services/usb/udc/udc.c **** 	}
 1490              		.loc 1 850 0
 1491 03aa 03EBC203 		add	r3, r3, r2, lsl #3
 853:../asf/common/services/usb/udc/udc.c **** 			iface_num++) {
 1492              		.loc 1 853 0
 1493 03ae 0A79     		ldrb	r2, [r1, #4]	@ zero_extendqisi2
 850:../asf/common/services/usb/udc/udc.c **** 	}
 1494              		.loc 1 850 0
 1495 03b0 3B60     		str	r3, [r7]
 1496              	.LVL114:
 853:../asf/common/services/usb/udc/udc.c **** 			iface_num++) {
 1497              		.loc 1 853 0
 1498 03b2 002A     		cmp	r2, #0
 1499 03b4 3FF4C4AE 		beq	.L235
 1500              	.LVL115:
 1501              	.L176:
 855:../asf/common/services/usb/udc/udc.c **** 			return false;
 1502              		.loc 1 855 0
 1503 03b8 2846     		mov	r0, r5
 1504 03ba 0021     		movs	r1, #0
 1505 03bc FFF7FEFF 		bl	udc_iface_enable
 1506              	.LVL116:
 854:../asf/common/services/usb/udc/udc.c **** 		if (!udc_iface_enable(iface_num, 0)) {
 1507              		.loc 1 854 0
 1508 03c0 0135     		adds	r5, r5, #1
 1509              	.LVL117:
 855:../asf/common/services/usb/udc/udc.c **** 			return false;
 1510              		.loc 1 855 0
 1511 03c2 0028     		cmp	r0, #0
 1512 03c4 3FF4F7AE 		beq	.L152
 853:../asf/common/services/usb/udc/udc.c **** 			iface_num++) {
 1513              		.loc 1 853 0
 1514 03c8 3B68     		ldr	r3, [r7]
 854:../asf/common/services/usb/udc/udc.c **** 		if (!udc_iface_enable(iface_num, 0)) {
 1515              		.loc 1 854 0
 1516 03ca EDB2     		uxtb	r5, r5
 1517              	.LVL118:
 853:../asf/common/services/usb/udc/udc.c **** 			iface_num++) {
 1518              		.loc 1 853 0
 1519 03cc 1B68     		ldr	r3, [r3]
ARM GAS  /tmp/cc1oZp4Q.s 			page 52


 1520 03ce 1B79     		ldrb	r3, [r3, #4]	@ zero_extendqisi2
 1521 03d0 AB42     		cmp	r3, r5
 1522 03d2 F1D8     		bhi	.L176
 1523 03d4 B4E6     		b	.L235
 1524              	.LVL119:
 1525              	.L154:
 1526              	.LBE173:
 1527              	.LBE197:
 1528              	.LBB198:
 1529              	.LBB195:
 1530              	.LBB193:
 1531              	.LBB191:
 621:../asf/common/services/usb/udc/udc.c **** 				sizeof(udc_string_desc_languageid));
 1532              		.loc 1 621 0
 1533 03d6 0421     		movs	r1, #4
 1534 03d8 0848     		ldr	r0, .L247+20
 1535 03da FFF7FEFF 		bl	udd_set_setup_payload
 1536              	.LVL120:
 1537 03de 9BE7     		b	.L151
 1538              	.LVL121:
 1539              	.L153:
 627:../asf/common/services/usb/udc/udc.c **** 		str = udc_string_manufacturer_name;
 1540              		.loc 1 627 0
 1541 03e0 0622     		movs	r2, #6
 1542              	.LVL122:
 628:../asf/common/services/usb/udc/udc.c **** 		break;
 1543              		.loc 1 628 0
 1544 03e2 0749     		ldr	r1, .L247+24
 1545 03e4 A7E7     		b	.L155
 1546              	.L248:
 1547 03e6 00BF     		.align	2
 1548              	.L247:
 1549 03e8 00000000 		.word	udc_config
 1550 03ec 00000000 		.word	.LANCHOR4
 1551 03f0 00000000 		.word	.LANCHOR7
 1552 03f4 00000000 		.word	.LANCHOR2
 1553 03f8 00000000 		.word	.LANCHOR0
 1554 03fc 00000000 		.word	.LANCHOR6
 1555 0400 00000000 		.word	.LANCHOR5
 1556              	.LBE191:
 1557              	.LBE193:
 1558              	.LBE195:
 1559              	.LBE198:
 1560              	.LBE207:
 1561              	.LBE232:
 1562              		.cfi_endproc
 1563              	.LFE176:
 1564              		.size	udc_process_setup, .-udc_process_setup
 1565              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 1566              		.align	2
 1567              		.type	cpu_irq_critical_section_counter, %object
 1568              		.size	cpu_irq_critical_section_counter, 4
 1569              	cpu_irq_critical_section_counter:
 1570 0000 00000000 		.space	4
 1571              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 1572              		.type	cpu_irq_prev_interrupt_state, %object
 1573              		.size	cpu_irq_prev_interrupt_state, 1
ARM GAS  /tmp/cc1oZp4Q.s 			page 53


 1574              	cpu_irq_prev_interrupt_state:
 1575 0000 00       		.space	1
 1576              		.section	.bss.udc_device_status,"aw",%nobits
 1577              		.align	1
 1578              		.set	.LANCHOR3,. + 0
 1579              		.type	udc_device_status, %object
 1580              		.size	udc_device_status, 2
 1581              	udc_device_status:
 1582 0000 0000     		.space	2
 1583              		.section	.bss.udc_ep_status.9448,"aw",%nobits
 1584              		.align	1
 1585              		.set	.LANCHOR9,. + 0
 1586              		.type	udc_ep_status.9448, %object
 1587              		.size	udc_ep_status.9448, 2
 1588              	udc_ep_status.9448:
 1589 0000 0000     		.space	2
 1590              		.section	.bss.udc_iface_setting,"aw",%nobits
 1591              		.align	2
 1592              		.set	.LANCHOR8,. + 0
 1593              		.type	udc_iface_setting, %object
 1594              		.size	udc_iface_setting, 1
 1595              	udc_iface_setting:
 1596 0000 00       		.space	1
 1597              		.section	.bss.udc_num_configuration,"aw",%nobits
 1598              		.align	2
 1599              		.set	.LANCHOR2,. + 0
 1600              		.type	udc_num_configuration, %object
 1601              		.size	udc_num_configuration, 1
 1602              	udc_num_configuration:
 1603 0000 00       		.space	1
 1604              		.section	.bss.udc_ptr_conf,"aw",%nobits
 1605              		.align	2
 1606              		.set	.LANCHOR0,. + 0
 1607              		.type	udc_ptr_conf, %object
 1608              		.size	udc_ptr_conf, 4
 1609              	udc_ptr_conf:
 1610 0000 00000000 		.space	4
 1611              		.section	.bss.udc_ptr_iface,"aw",%nobits
 1612              		.align	2
 1613              		.set	.LANCHOR1,. + 0
 1614              		.type	udc_ptr_iface, %object
 1615              		.size	udc_ptr_iface, 4
 1616              	udc_ptr_iface:
 1617 0000 00000000 		.space	4
 1618              		.section	.data.udc_string_desc,"aw",%progbits
 1619              		.align	2
 1620              		.set	.LANCHOR7,. + 0
 1621              		.type	udc_string_desc, %object
 1622              		.size	udc_string_desc, 14
 1623              	udc_string_desc:
 1624 0000 00       		.space	1
 1625 0001 03       		.byte	3
 1626 0002 00000000 		.space	12
 1626      00000000 
 1626      00000000 
 1627              		.section	.data.udc_string_desc_languageid,"aw",%progbits
 1628              		.align	2
ARM GAS  /tmp/cc1oZp4Q.s 			page 54


 1629              		.set	.LANCHOR6,. + 0
 1630              		.type	udc_string_desc_languageid, %object
 1631              		.size	udc_string_desc_languageid, 4
 1632              	udc_string_desc_languageid:
 1633 0000 04       		.byte	4
 1634 0001 03       		.byte	3
 1635 0002 0904     		.short	1033
 1636              		.section	.data.udc_string_manufacturer_name,"aw",%progbits
 1637              		.align	2
 1638              		.set	.LANCHOR5,. + 0
 1639              		.type	udc_string_manufacturer_name, %object
 1640              		.size	udc_string_manufacturer_name, 7
 1641              	udc_string_manufacturer_name:
 1642 0000 44756574 		.ascii	"Duet3D\000"
 1642      334400
 1643              		.section	.data.udc_string_product_name,"aw",%progbits
 1644              		.align	2
 1645              		.set	.LANCHOR4,. + 0
 1646              		.type	udc_string_product_name, %object
 1647              		.size	udc_string_product_name, 5
 1648              	udc_string_product_name:
 1649 0000 44756574 		.ascii	"Duet\000"
 1649      00
 1650              		.text
 1651              	.Letext0:
 1652              		.file 2 "/usr/include/newlib/machine/_default_types.h"
 1653              		.file 3 "/usr/include/newlib/sys/_stdint.h"
 1654              		.file 4 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 1655              		.file 5 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 1656              		.file 6 "/usr/include/newlib/sys/lock.h"
 1657              		.file 7 "/usr/include/newlib/sys/_types.h"
 1658              		.file 8 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 1659              		.file 9 "/usr/include/newlib/sys/reent.h"
 1660              		.file 10 "/usr/include/newlib/stdlib.h"
 1661              		.file 11 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 1662              		.file 12 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/compiler.h"
 1663              		.file 13 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb/usb_protocol.h"
 1664              		.file 14 "../asf/common/services/usb/udc/udi.h"
 1665              		.file 15 "../asf/common/services/usb/udc/udc_desc.h"
 1666              		.file 16 "../asf/common/services/usb/udc/udd.h"
 1667              		.section	.debug_info,"",%progbits
 1668              	.Ldebug_info0:
 1669 0000 941A0000 		.4byte	0x1a94
 1670 0004 0400     		.2byte	0x4
 1671 0006 00000000 		.4byte	.Ldebug_abbrev0
 1672 000a 04       		.byte	0x4
 1673 000b 01       		.uleb128 0x1
 1674 000c 850E0000 		.4byte	.LASF300
 1675 0010 0C       		.byte	0xc
 1676 0011 B2050000 		.4byte	.LASF301
 1677 0015 AE070000 		.4byte	.LASF302
 1678 0019 E8010000 		.4byte	.Ldebug_ranges0+0x1e8
 1679 001d 00000000 		.4byte	0
 1680 0021 00000000 		.4byte	.Ldebug_line0
 1681 0025 02       		.uleb128 0x2
 1682 0026 04       		.byte	0x4
 1683 0027 05       		.byte	0x5
ARM GAS  /tmp/cc1oZp4Q.s 			page 55


 1684 0028 696E7400 		.ascii	"int\000"
 1685 002c 03       		.uleb128 0x3
 1686 002d 04       		.byte	0x4
 1687 002e 07       		.byte	0x7
 1688 002f 58010000 		.4byte	.LASF0
 1689 0033 03       		.uleb128 0x3
 1690 0034 01       		.byte	0x1
 1691 0035 06       		.byte	0x6
 1692 0036 D30F0000 		.4byte	.LASF1
 1693 003a 04       		.uleb128 0x4
 1694 003b BC0B0000 		.4byte	.LASF4
 1695 003f 02       		.byte	0x2
 1696 0040 1D       		.byte	0x1d
 1697 0041 45000000 		.4byte	0x45
 1698 0045 03       		.uleb128 0x3
 1699 0046 01       		.byte	0x1
 1700 0047 08       		.byte	0x8
 1701 0048 DE0D0000 		.4byte	.LASF2
 1702 004c 03       		.uleb128 0x3
 1703 004d 02       		.byte	0x2
 1704 004e 05       		.byte	0x5
 1705 004f 5D020000 		.4byte	.LASF3
 1706 0053 04       		.uleb128 0x4
 1707 0054 24050000 		.4byte	.LASF5
 1708 0058 02       		.byte	0x2
 1709 0059 2B       		.byte	0x2b
 1710 005a 5E000000 		.4byte	0x5e
 1711 005e 03       		.uleb128 0x3
 1712 005f 02       		.byte	0x2
 1713 0060 07       		.byte	0x7
 1714 0061 E60F0000 		.4byte	.LASF6
 1715 0065 04       		.uleb128 0x4
 1716 0066 B1010000 		.4byte	.LASF7
 1717 006a 02       		.byte	0x2
 1718 006b 3F       		.byte	0x3f
 1719 006c 70000000 		.4byte	0x70
 1720 0070 03       		.uleb128 0x3
 1721 0071 04       		.byte	0x4
 1722 0072 05       		.byte	0x5
 1723 0073 8E0A0000 		.4byte	.LASF8
 1724 0077 04       		.uleb128 0x4
 1725 0078 1D0A0000 		.4byte	.LASF9
 1726 007c 02       		.byte	0x2
 1727 007d 41       		.byte	0x41
 1728 007e 82000000 		.4byte	0x82
 1729 0082 03       		.uleb128 0x3
 1730 0083 04       		.byte	0x4
 1731 0084 07       		.byte	0x7
 1732 0085 A5090000 		.4byte	.LASF10
 1733 0089 03       		.uleb128 0x3
 1734 008a 08       		.byte	0x8
 1735 008b 05       		.byte	0x5
 1736 008c 6C080000 		.4byte	.LASF11
 1737 0090 03       		.uleb128 0x3
 1738 0091 08       		.byte	0x8
 1739 0092 07       		.byte	0x7
 1740 0093 B4040000 		.4byte	.LASF12
ARM GAS  /tmp/cc1oZp4Q.s 			page 56


 1741 0097 04       		.uleb128 0x4
 1742 0098 14080000 		.4byte	.LASF13
 1743 009c 03       		.byte	0x3
 1744 009d 18       		.byte	0x18
 1745 009e 3A000000 		.4byte	0x3a
 1746 00a2 05       		.uleb128 0x5
 1747 00a3 97000000 		.4byte	0x97
 1748 00a7 04       		.uleb128 0x4
 1749 00a8 040A0000 		.4byte	.LASF14
 1750 00ac 03       		.byte	0x3
 1751 00ad 24       		.byte	0x24
 1752 00ae 53000000 		.4byte	0x53
 1753 00b2 04       		.uleb128 0x4
 1754 00b3 510D0000 		.4byte	.LASF15
 1755 00b7 03       		.byte	0x3
 1756 00b8 2C       		.byte	0x2c
 1757 00b9 65000000 		.4byte	0x65
 1758 00bd 06       		.uleb128 0x6
 1759 00be B2000000 		.4byte	0xb2
 1760 00c2 04       		.uleb128 0x4
 1761 00c3 A6030000 		.4byte	.LASF16
 1762 00c7 03       		.byte	0x3
 1763 00c8 30       		.byte	0x30
 1764 00c9 77000000 		.4byte	0x77
 1765 00cd 06       		.uleb128 0x6
 1766 00ce C2000000 		.4byte	0xc2
 1767 00d2 07       		.uleb128 0x7
 1768 00d3 04       		.byte	0x4
 1769 00d4 03       		.uleb128 0x3
 1770 00d5 04       		.byte	0x4
 1771 00d6 07       		.byte	0x7
 1772 00d7 9F0C0000 		.4byte	.LASF17
 1773 00db 08       		.uleb128 0x8
 1774 00dc B80A0000 		.4byte	.LASF18
 1775 00e0 04       		.byte	0x4
 1776 00e1 6508     		.2byte	0x865
 1777 00e3 BD000000 		.4byte	0xbd
 1778 00e7 09       		.uleb128 0x9
 1779 00e8 7B000000 		.4byte	.LASF19
 1780 00ec 05       		.byte	0x5
 1781 00ed 3A       		.byte	0x3a
 1782 00ee C2000000 		.4byte	0xc2
 1783 00f2 04       		.uleb128 0x4
 1784 00f3 6B090000 		.4byte	.LASF20
 1785 00f7 06       		.byte	0x6
 1786 00f8 07       		.byte	0x7
 1787 00f9 25000000 		.4byte	0x25
 1788 00fd 04       		.uleb128 0x4
 1789 00fe 78100000 		.4byte	.LASF21
 1790 0102 07       		.byte	0x7
 1791 0103 2C       		.byte	0x2c
 1792 0104 70000000 		.4byte	0x70
 1793 0108 04       		.uleb128 0x4
 1794 0109 F0020000 		.4byte	.LASF22
 1795 010d 07       		.byte	0x7
 1796 010e 72       		.byte	0x72
 1797 010f 70000000 		.4byte	0x70
ARM GAS  /tmp/cc1oZp4Q.s 			page 57


 1798 0113 0A       		.uleb128 0xa
 1799 0114 EB0C0000 		.4byte	.LASF23
 1800 0118 08       		.byte	0x8
 1801 0119 6501     		.2byte	0x165
 1802 011b 2C000000 		.4byte	0x2c
 1803 011f 0B       		.uleb128 0xb
 1804 0120 04       		.byte	0x4
 1805 0121 07       		.byte	0x7
 1806 0122 A6       		.byte	0xa6
 1807 0123 3E010000 		.4byte	0x13e
 1808 0127 0C       		.uleb128 0xc
 1809 0128 08080000 		.4byte	.LASF24
 1810 012c 07       		.byte	0x7
 1811 012d A8       		.byte	0xa8
 1812 012e 13010000 		.4byte	0x113
 1813 0132 0C       		.uleb128 0xc
 1814 0133 190B0000 		.4byte	.LASF25
 1815 0137 07       		.byte	0x7
 1816 0138 A9       		.byte	0xa9
 1817 0139 3E010000 		.4byte	0x13e
 1818 013d 00       		.byte	0
 1819 013e 0D       		.uleb128 0xd
 1820 013f 45000000 		.4byte	0x45
 1821 0143 4E010000 		.4byte	0x14e
 1822 0147 0E       		.uleb128 0xe
 1823 0148 D4000000 		.4byte	0xd4
 1824 014c 03       		.byte	0x3
 1825 014d 00       		.byte	0
 1826 014e 0F       		.uleb128 0xf
 1827 014f 08       		.byte	0x8
 1828 0150 07       		.byte	0x7
 1829 0151 A3       		.byte	0xa3
 1830 0152 6F010000 		.4byte	0x16f
 1831 0156 10       		.uleb128 0x10
 1832 0157 F4030000 		.4byte	.LASF26
 1833 015b 07       		.byte	0x7
 1834 015c A5       		.byte	0xa5
 1835 015d 25000000 		.4byte	0x25
 1836 0161 00       		.byte	0
 1837 0162 10       		.uleb128 0x10
 1838 0163 56060000 		.4byte	.LASF27
 1839 0167 07       		.byte	0x7
 1840 0168 AA       		.byte	0xaa
 1841 0169 1F010000 		.4byte	0x11f
 1842 016d 04       		.byte	0x4
 1843 016e 00       		.byte	0
 1844 016f 04       		.uleb128 0x4
 1845 0170 60090000 		.4byte	.LASF28
 1846 0174 07       		.byte	0x7
 1847 0175 AB       		.byte	0xab
 1848 0176 4E010000 		.4byte	0x14e
 1849 017a 04       		.uleb128 0x4
 1850 017b 2F000000 		.4byte	.LASF29
 1851 017f 07       		.byte	0x7
 1852 0180 AF       		.byte	0xaf
 1853 0181 F2000000 		.4byte	0xf2
 1854 0185 04       		.uleb128 0x4
ARM GAS  /tmp/cc1oZp4Q.s 			page 58


 1855 0186 AE020000 		.4byte	.LASF30
 1856 018a 09       		.byte	0x9
 1857 018b 16       		.byte	0x16
 1858 018c 82000000 		.4byte	0x82
 1859 0190 11       		.uleb128 0x11
 1860 0191 64030000 		.4byte	.LASF35
 1861 0195 18       		.byte	0x18
 1862 0196 09       		.byte	0x9
 1863 0197 2D       		.byte	0x2d
 1864 0198 E3010000 		.4byte	0x1e3
 1865 019c 10       		.uleb128 0x10
 1866 019d 74060000 		.4byte	.LASF31
 1867 01a1 09       		.byte	0x9
 1868 01a2 2F       		.byte	0x2f
 1869 01a3 E3010000 		.4byte	0x1e3
 1870 01a7 00       		.byte	0
 1871 01a8 12       		.uleb128 0x12
 1872 01a9 5F6B00   		.ascii	"_k\000"
 1873 01ac 09       		.byte	0x9
 1874 01ad 30       		.byte	0x30
 1875 01ae 25000000 		.4byte	0x25
 1876 01b2 04       		.byte	0x4
 1877 01b3 10       		.uleb128 0x10
 1878 01b4 F80B0000 		.4byte	.LASF32
 1879 01b8 09       		.byte	0x9
 1880 01b9 30       		.byte	0x30
 1881 01ba 25000000 		.4byte	0x25
 1882 01be 08       		.byte	0x8
 1883 01bf 10       		.uleb128 0x10
 1884 01c0 D90A0000 		.4byte	.LASF33
 1885 01c4 09       		.byte	0x9
 1886 01c5 30       		.byte	0x30
 1887 01c6 25000000 		.4byte	0x25
 1888 01ca 0C       		.byte	0xc
 1889 01cb 10       		.uleb128 0x10
 1890 01cc E8040000 		.4byte	.LASF34
 1891 01d0 09       		.byte	0x9
 1892 01d1 30       		.byte	0x30
 1893 01d2 25000000 		.4byte	0x25
 1894 01d6 10       		.byte	0x10
 1895 01d7 12       		.uleb128 0x12
 1896 01d8 5F7800   		.ascii	"_x\000"
 1897 01db 09       		.byte	0x9
 1898 01dc 31       		.byte	0x31
 1899 01dd E9010000 		.4byte	0x1e9
 1900 01e1 14       		.byte	0x14
 1901 01e2 00       		.byte	0
 1902 01e3 13       		.uleb128 0x13
 1903 01e4 04       		.byte	0x4
 1904 01e5 90010000 		.4byte	0x190
 1905 01e9 0D       		.uleb128 0xd
 1906 01ea 85010000 		.4byte	0x185
 1907 01ee F9010000 		.4byte	0x1f9
 1908 01f2 0E       		.uleb128 0xe
 1909 01f3 D4000000 		.4byte	0xd4
 1910 01f7 00       		.byte	0
 1911 01f8 00       		.byte	0
ARM GAS  /tmp/cc1oZp4Q.s 			page 59


 1912 01f9 11       		.uleb128 0x11
 1913 01fa 7E0C0000 		.4byte	.LASF36
 1914 01fe 24       		.byte	0x24
 1915 01ff 09       		.byte	0x9
 1916 0200 35       		.byte	0x35
 1917 0201 72020000 		.4byte	0x272
 1918 0205 10       		.uleb128 0x10
 1919 0206 43010000 		.4byte	.LASF37
 1920 020a 09       		.byte	0x9
 1921 020b 37       		.byte	0x37
 1922 020c 25000000 		.4byte	0x25
 1923 0210 00       		.byte	0
 1924 0211 10       		.uleb128 0x10
 1925 0212 02040000 		.4byte	.LASF38
 1926 0216 09       		.byte	0x9
 1927 0217 38       		.byte	0x38
 1928 0218 25000000 		.4byte	0x25
 1929 021c 04       		.byte	0x4
 1930 021d 10       		.uleb128 0x10
 1931 021e AF030000 		.4byte	.LASF39
 1932 0222 09       		.byte	0x9
 1933 0223 39       		.byte	0x39
 1934 0224 25000000 		.4byte	0x25
 1935 0228 08       		.byte	0x8
 1936 0229 10       		.uleb128 0x10
 1937 022a 78070000 		.4byte	.LASF40
 1938 022e 09       		.byte	0x9
 1939 022f 3A       		.byte	0x3a
 1940 0230 25000000 		.4byte	0x25
 1941 0234 0C       		.byte	0xc
 1942 0235 10       		.uleb128 0x10
 1943 0236 EB090000 		.4byte	.LASF41
 1944 023a 09       		.byte	0x9
 1945 023b 3B       		.byte	0x3b
 1946 023c 25000000 		.4byte	0x25
 1947 0240 10       		.byte	0x10
 1948 0241 10       		.uleb128 0x10
 1949 0242 2C0B0000 		.4byte	.LASF42
 1950 0246 09       		.byte	0x9
 1951 0247 3C       		.byte	0x3c
 1952 0248 25000000 		.4byte	0x25
 1953 024c 14       		.byte	0x14
 1954 024d 10       		.uleb128 0x10
 1955 024e 6C030000 		.4byte	.LASF43
 1956 0252 09       		.byte	0x9
 1957 0253 3D       		.byte	0x3d
 1958 0254 25000000 		.4byte	0x25
 1959 0258 18       		.byte	0x18
 1960 0259 10       		.uleb128 0x10
 1961 025a 4C060000 		.4byte	.LASF44
 1962 025e 09       		.byte	0x9
 1963 025f 3E       		.byte	0x3e
 1964 0260 25000000 		.4byte	0x25
 1965 0264 1C       		.byte	0x1c
 1966 0265 10       		.uleb128 0x10
 1967 0266 93090000 		.4byte	.LASF45
 1968 026a 09       		.byte	0x9
ARM GAS  /tmp/cc1oZp4Q.s 			page 60


 1969 026b 3F       		.byte	0x3f
 1970 026c 25000000 		.4byte	0x25
 1971 0270 20       		.byte	0x20
 1972 0271 00       		.byte	0
 1973 0272 14       		.uleb128 0x14
 1974 0273 99000000 		.4byte	.LASF46
 1975 0277 0801     		.2byte	0x108
 1976 0279 09       		.byte	0x9
 1977 027a 48       		.byte	0x48
 1978 027b B2020000 		.4byte	0x2b2
 1979 027f 10       		.uleb128 0x10
 1980 0280 CB0F0000 		.4byte	.LASF47
 1981 0284 09       		.byte	0x9
 1982 0285 49       		.byte	0x49
 1983 0286 B2020000 		.4byte	0x2b2
 1984 028a 00       		.byte	0
 1985 028b 10       		.uleb128 0x10
 1986 028c 8E0D0000 		.4byte	.LASF48
 1987 0290 09       		.byte	0x9
 1988 0291 4A       		.byte	0x4a
 1989 0292 B2020000 		.4byte	0x2b2
 1990 0296 80       		.byte	0x80
 1991 0297 15       		.uleb128 0x15
 1992 0298 40100000 		.4byte	.LASF49
 1993 029c 09       		.byte	0x9
 1994 029d 4C       		.byte	0x4c
 1995 029e 85010000 		.4byte	0x185
 1996 02a2 0001     		.2byte	0x100
 1997 02a4 15       		.uleb128 0x15
 1998 02a5 E3100000 		.4byte	.LASF50
 1999 02a9 09       		.byte	0x9
 2000 02aa 4F       		.byte	0x4f
 2001 02ab 85010000 		.4byte	0x185
 2002 02af 0401     		.2byte	0x104
 2003 02b1 00       		.byte	0
 2004 02b2 0D       		.uleb128 0xd
 2005 02b3 D2000000 		.4byte	0xd2
 2006 02b7 C2020000 		.4byte	0x2c2
 2007 02bb 0E       		.uleb128 0xe
 2008 02bc D4000000 		.4byte	0xd4
 2009 02c0 1F       		.byte	0x1f
 2010 02c1 00       		.byte	0
 2011 02c2 14       		.uleb128 0x14
 2012 02c3 570A0000 		.4byte	.LASF51
 2013 02c7 9001     		.2byte	0x190
 2014 02c9 09       		.byte	0x9
 2015 02ca 5B       		.byte	0x5b
 2016 02cb 00030000 		.4byte	0x300
 2017 02cf 10       		.uleb128 0x10
 2018 02d0 74060000 		.4byte	.LASF31
 2019 02d4 09       		.byte	0x9
 2020 02d5 5C       		.byte	0x5c
 2021 02d6 00030000 		.4byte	0x300
 2022 02da 00       		.byte	0
 2023 02db 10       		.uleb128 0x10
 2024 02dc C1090000 		.4byte	.LASF52
 2025 02e0 09       		.byte	0x9
ARM GAS  /tmp/cc1oZp4Q.s 			page 61


 2026 02e1 5D       		.byte	0x5d
 2027 02e2 25000000 		.4byte	0x25
 2028 02e6 04       		.byte	0x4
 2029 02e7 10       		.uleb128 0x10
 2030 02e8 0E030000 		.4byte	.LASF53
 2031 02ec 09       		.byte	0x9
 2032 02ed 5F       		.byte	0x5f
 2033 02ee 06030000 		.4byte	0x306
 2034 02f2 08       		.byte	0x8
 2035 02f3 10       		.uleb128 0x10
 2036 02f4 99000000 		.4byte	.LASF46
 2037 02f8 09       		.byte	0x9
 2038 02f9 60       		.byte	0x60
 2039 02fa 72020000 		.4byte	0x272
 2040 02fe 88       		.byte	0x88
 2041 02ff 00       		.byte	0
 2042 0300 13       		.uleb128 0x13
 2043 0301 04       		.byte	0x4
 2044 0302 C2020000 		.4byte	0x2c2
 2045 0306 0D       		.uleb128 0xd
 2046 0307 16030000 		.4byte	0x316
 2047 030b 16030000 		.4byte	0x316
 2048 030f 0E       		.uleb128 0xe
 2049 0310 D4000000 		.4byte	0xd4
 2050 0314 1F       		.byte	0x1f
 2051 0315 00       		.byte	0
 2052 0316 13       		.uleb128 0x13
 2053 0317 04       		.byte	0x4
 2054 0318 1C030000 		.4byte	0x31c
 2055 031c 16       		.uleb128 0x16
 2056 031d 11       		.uleb128 0x11
 2057 031e 360F0000 		.4byte	.LASF54
 2058 0322 08       		.byte	0x8
 2059 0323 09       		.byte	0x9
 2060 0324 73       		.byte	0x73
 2061 0325 42030000 		.4byte	0x342
 2062 0329 10       		.uleb128 0x10
 2063 032a 9F080000 		.4byte	.LASF55
 2064 032e 09       		.byte	0x9
 2065 032f 74       		.byte	0x74
 2066 0330 42030000 		.4byte	0x342
 2067 0334 00       		.byte	0
 2068 0335 10       		.uleb128 0x10
 2069 0336 51100000 		.4byte	.LASF56
 2070 033a 09       		.byte	0x9
 2071 033b 75       		.byte	0x75
 2072 033c 25000000 		.4byte	0x25
 2073 0340 04       		.byte	0x4
 2074 0341 00       		.byte	0
 2075 0342 13       		.uleb128 0x13
 2076 0343 04       		.byte	0x4
 2077 0344 45000000 		.4byte	0x45
 2078 0348 11       		.uleb128 0x11
 2079 0349 E0040000 		.4byte	.LASF57
 2080 034d 68       		.byte	0x68
 2081 034e 09       		.byte	0x9
 2082 034f B3       		.byte	0xb3
ARM GAS  /tmp/cc1oZp4Q.s 			page 62


 2083 0350 72040000 		.4byte	0x472
 2084 0354 12       		.uleb128 0x12
 2085 0355 5F7000   		.ascii	"_p\000"
 2086 0358 09       		.byte	0x9
 2087 0359 B4       		.byte	0xb4
 2088 035a 42030000 		.4byte	0x342
 2089 035e 00       		.byte	0
 2090 035f 12       		.uleb128 0x12
 2091 0360 5F7200   		.ascii	"_r\000"
 2092 0363 09       		.byte	0x9
 2093 0364 B5       		.byte	0xb5
 2094 0365 25000000 		.4byte	0x25
 2095 0369 04       		.byte	0x4
 2096 036a 12       		.uleb128 0x12
 2097 036b 5F7700   		.ascii	"_w\000"
 2098 036e 09       		.byte	0x9
 2099 036f B6       		.byte	0xb6
 2100 0370 25000000 		.4byte	0x25
 2101 0374 08       		.byte	0x8
 2102 0375 10       		.uleb128 0x10
 2103 0376 98010000 		.4byte	.LASF58
 2104 037a 09       		.byte	0x9
 2105 037b B7       		.byte	0xb7
 2106 037c 4C000000 		.4byte	0x4c
 2107 0380 0C       		.byte	0xc
 2108 0381 10       		.uleb128 0x10
 2109 0382 470B0000 		.4byte	.LASF59
 2110 0386 09       		.byte	0x9
 2111 0387 B8       		.byte	0xb8
 2112 0388 4C000000 		.4byte	0x4c
 2113 038c 0E       		.byte	0xe
 2114 038d 12       		.uleb128 0x12
 2115 038e 5F626600 		.ascii	"_bf\000"
 2116 0392 09       		.byte	0x9
 2117 0393 B9       		.byte	0xb9
 2118 0394 1D030000 		.4byte	0x31d
 2119 0398 10       		.byte	0x10
 2120 0399 10       		.uleb128 0x10
 2121 039a 8F010000 		.4byte	.LASF60
 2122 039e 09       		.byte	0x9
 2123 039f BA       		.byte	0xba
 2124 03a0 25000000 		.4byte	0x25
 2125 03a4 18       		.byte	0x18
 2126 03a5 10       		.uleb128 0x10
 2127 03a6 13030000 		.4byte	.LASF61
 2128 03aa 09       		.byte	0x9
 2129 03ab C1       		.byte	0xc1
 2130 03ac D2000000 		.4byte	0xd2
 2131 03b0 1C       		.byte	0x1c
 2132 03b1 10       		.uleb128 0x10
 2133 03b2 4D0E0000 		.4byte	.LASF62
 2134 03b6 09       		.byte	0x9
 2135 03b7 C3       		.byte	0xc3
 2136 03b8 DF050000 		.4byte	0x5df
 2137 03bc 20       		.byte	0x20
 2138 03bd 10       		.uleb128 0x10
 2139 03be 0D0A0000 		.4byte	.LASF63
ARM GAS  /tmp/cc1oZp4Q.s 			page 63


 2140 03c2 09       		.byte	0x9
 2141 03c3 C5       		.byte	0xc5
 2142 03c4 09060000 		.4byte	0x609
 2143 03c8 24       		.byte	0x24
 2144 03c9 10       		.uleb128 0x10
 2145 03ca 20110000 		.4byte	.LASF64
 2146 03ce 09       		.byte	0x9
 2147 03cf C8       		.byte	0xc8
 2148 03d0 2D060000 		.4byte	0x62d
 2149 03d4 28       		.byte	0x28
 2150 03d5 10       		.uleb128 0x10
 2151 03d6 2A080000 		.4byte	.LASF65
 2152 03da 09       		.byte	0x9
 2153 03db C9       		.byte	0xc9
 2154 03dc 47060000 		.4byte	0x647
 2155 03e0 2C       		.byte	0x2c
 2156 03e1 12       		.uleb128 0x12
 2157 03e2 5F756200 		.ascii	"_ub\000"
 2158 03e6 09       		.byte	0x9
 2159 03e7 CC       		.byte	0xcc
 2160 03e8 1D030000 		.4byte	0x31d
 2161 03ec 30       		.byte	0x30
 2162 03ed 12       		.uleb128 0x12
 2163 03ee 5F757000 		.ascii	"_up\000"
 2164 03f2 09       		.byte	0x9
 2165 03f3 CD       		.byte	0xcd
 2166 03f4 42030000 		.4byte	0x342
 2167 03f8 38       		.byte	0x38
 2168 03f9 12       		.uleb128 0x12
 2169 03fa 5F757200 		.ascii	"_ur\000"
 2170 03fe 09       		.byte	0x9
 2171 03ff CE       		.byte	0xce
 2172 0400 25000000 		.4byte	0x25
 2173 0404 3C       		.byte	0x3c
 2174 0405 10       		.uleb128 0x10
 2175 0406 81050000 		.4byte	.LASF66
 2176 040a 09       		.byte	0x9
 2177 040b D1       		.byte	0xd1
 2178 040c 4D060000 		.4byte	0x64d
 2179 0410 40       		.byte	0x40
 2180 0411 10       		.uleb128 0x10
 2181 0412 7F100000 		.4byte	.LASF67
 2182 0416 09       		.byte	0x9
 2183 0417 D2       		.byte	0xd2
 2184 0418 5D060000 		.4byte	0x65d
 2185 041c 43       		.byte	0x43
 2186 041d 12       		.uleb128 0x12
 2187 041e 5F6C6200 		.ascii	"_lb\000"
 2188 0422 09       		.byte	0x9
 2189 0423 D5       		.byte	0xd5
 2190 0424 1D030000 		.4byte	0x31d
 2191 0428 44       		.byte	0x44
 2192 0429 10       		.uleb128 0x10
 2193 042a 600C0000 		.4byte	.LASF68
 2194 042e 09       		.byte	0x9
 2195 042f D8       		.byte	0xd8
 2196 0430 25000000 		.4byte	0x25
ARM GAS  /tmp/cc1oZp4Q.s 			page 64


 2197 0434 4C       		.byte	0x4c
 2198 0435 10       		.uleb128 0x10
 2199 0436 79050000 		.4byte	.LASF69
 2200 043a 09       		.byte	0x9
 2201 043b D9       		.byte	0xd9
 2202 043c FD000000 		.4byte	0xfd
 2203 0440 50       		.byte	0x50
 2204 0441 10       		.uleb128 0x10
 2205 0442 130B0000 		.4byte	.LASF70
 2206 0446 09       		.byte	0x9
 2207 0447 DC       		.byte	0xdc
 2208 0448 90040000 		.4byte	0x490
 2209 044c 54       		.byte	0x54
 2210 044d 10       		.uleb128 0x10
 2211 044e 830C0000 		.4byte	.LASF71
 2212 0452 09       		.byte	0x9
 2213 0453 E0       		.byte	0xe0
 2214 0454 7A010000 		.4byte	0x17a
 2215 0458 58       		.byte	0x58
 2216 0459 10       		.uleb128 0x10
 2217 045a 7E020000 		.4byte	.LASF72
 2218 045e 09       		.byte	0x9
 2219 045f E2       		.byte	0xe2
 2220 0460 6F010000 		.4byte	0x16f
 2221 0464 5C       		.byte	0x5c
 2222 0465 10       		.uleb128 0x10
 2223 0466 D2100000 		.4byte	.LASF73
 2224 046a 09       		.byte	0x9
 2225 046b E3       		.byte	0xe3
 2226 046c 25000000 		.4byte	0x25
 2227 0470 64       		.byte	0x64
 2228 0471 00       		.byte	0
 2229 0472 17       		.uleb128 0x17
 2230 0473 25000000 		.4byte	0x25
 2231 0477 90040000 		.4byte	0x490
 2232 047b 18       		.uleb128 0x18
 2233 047c 90040000 		.4byte	0x490
 2234 0480 18       		.uleb128 0x18
 2235 0481 D2000000 		.4byte	0xd2
 2236 0485 18       		.uleb128 0x18
 2237 0486 CD050000 		.4byte	0x5cd
 2238 048a 18       		.uleb128 0x18
 2239 048b 25000000 		.4byte	0x25
 2240 048f 00       		.byte	0
 2241 0490 13       		.uleb128 0x13
 2242 0491 04       		.byte	0x4
 2243 0492 9B040000 		.4byte	0x49b
 2244 0496 05       		.uleb128 0x5
 2245 0497 90040000 		.4byte	0x490
 2246 049b 19       		.uleb128 0x19
 2247 049c DF0F0000 		.4byte	.LASF74
 2248 04a0 2804     		.2byte	0x428
 2249 04a2 09       		.byte	0x9
 2250 04a3 3802     		.2byte	0x238
 2251 04a5 CD050000 		.4byte	0x5cd
 2252 04a9 1A       		.uleb128 0x1a
 2253 04aa BB010000 		.4byte	.LASF75
ARM GAS  /tmp/cc1oZp4Q.s 			page 65


 2254 04ae 09       		.byte	0x9
 2255 04af 3A02     		.2byte	0x23a
 2256 04b1 25000000 		.4byte	0x25
 2257 04b5 00       		.byte	0
 2258 04b6 1A       		.uleb128 0x1a
 2259 04b7 56080000 		.4byte	.LASF76
 2260 04bb 09       		.byte	0x9
 2261 04bc 3F02     		.2byte	0x23f
 2262 04be B4060000 		.4byte	0x6b4
 2263 04c2 04       		.byte	0x4
 2264 04c3 1A       		.uleb128 0x1a
 2265 04c4 DA020000 		.4byte	.LASF77
 2266 04c8 09       		.byte	0x9
 2267 04c9 3F02     		.2byte	0x23f
 2268 04cb B4060000 		.4byte	0x6b4
 2269 04cf 08       		.byte	0x8
 2270 04d0 1A       		.uleb128 0x1a
 2271 04d1 31110000 		.4byte	.LASF78
 2272 04d5 09       		.byte	0x9
 2273 04d6 3F02     		.2byte	0x23f
 2274 04d8 B4060000 		.4byte	0x6b4
 2275 04dc 0C       		.byte	0xc
 2276 04dd 1A       		.uleb128 0x1a
 2277 04de 5E060000 		.4byte	.LASF79
 2278 04e2 09       		.byte	0x9
 2279 04e3 4102     		.2byte	0x241
 2280 04e5 25000000 		.4byte	0x25
 2281 04e9 10       		.byte	0x10
 2282 04ea 1A       		.uleb128 0x1a
 2283 04eb C6030000 		.4byte	.LASF80
 2284 04ef 09       		.byte	0x9
 2285 04f0 4202     		.2byte	0x242
 2286 04f2 96080000 		.4byte	0x896
 2287 04f6 14       		.byte	0x14
 2288 04f7 1A       		.uleb128 0x1a
 2289 04f8 1E0C0000 		.4byte	.LASF81
 2290 04fc 09       		.byte	0x9
 2291 04fd 4402     		.2byte	0x244
 2292 04ff 25000000 		.4byte	0x25
 2293 0503 30       		.byte	0x30
 2294 0504 1A       		.uleb128 0x1a
 2295 0505 030B0000 		.4byte	.LASF82
 2296 0509 09       		.byte	0x9
 2297 050a 4502     		.2byte	0x245
 2298 050c 03060000 		.4byte	0x603
 2299 0510 34       		.byte	0x34
 2300 0511 1A       		.uleb128 0x1a
 2301 0512 3E080000 		.4byte	.LASF83
 2302 0516 09       		.byte	0x9
 2303 0517 4702     		.2byte	0x247
 2304 0519 25000000 		.4byte	0x25
 2305 051d 38       		.byte	0x38
 2306 051e 1A       		.uleb128 0x1a
 2307 051f 49090000 		.4byte	.LASF84
 2308 0523 09       		.byte	0x9
 2309 0524 4902     		.2byte	0x249
 2310 0526 B1080000 		.4byte	0x8b1
ARM GAS  /tmp/cc1oZp4Q.s 			page 66


 2311 052a 3C       		.byte	0x3c
 2312 052b 1A       		.uleb128 0x1a
 2313 052c 81030000 		.4byte	.LASF85
 2314 0530 09       		.byte	0x9
 2315 0531 4C02     		.2byte	0x24c
 2316 0533 E3010000 		.4byte	0x1e3
 2317 0537 40       		.byte	0x40
 2318 0538 1A       		.uleb128 0x1a
 2319 0539 FE070000 		.4byte	.LASF86
 2320 053d 09       		.byte	0x9
 2321 053e 4D02     		.2byte	0x24d
 2322 0540 25000000 		.4byte	0x25
 2323 0544 44       		.byte	0x44
 2324 0545 1A       		.uleb128 0x1a
 2325 0546 17070000 		.4byte	.LASF87
 2326 054a 09       		.byte	0x9
 2327 054b 4E02     		.2byte	0x24e
 2328 054d E3010000 		.4byte	0x1e3
 2329 0551 48       		.byte	0x48
 2330 0552 1A       		.uleb128 0x1a
 2331 0553 A5080000 		.4byte	.LASF88
 2332 0557 09       		.byte	0x9
 2333 0558 4F02     		.2byte	0x24f
 2334 055a B7080000 		.4byte	0x8b7
 2335 055e 4C       		.byte	0x4c
 2336 055f 1A       		.uleb128 0x1a
 2337 0560 F00B0000 		.4byte	.LASF89
 2338 0564 09       		.byte	0x9
 2339 0565 5202     		.2byte	0x252
 2340 0567 25000000 		.4byte	0x25
 2341 056b 50       		.byte	0x50
 2342 056c 1A       		.uleb128 0x1a
 2343 056d D60D0000 		.4byte	.LASF90
 2344 0571 09       		.byte	0x9
 2345 0572 5302     		.2byte	0x253
 2346 0574 CD050000 		.4byte	0x5cd
 2347 0578 54       		.byte	0x54
 2348 0579 1A       		.uleb128 0x1a
 2349 057a DD0B0000 		.4byte	.LASF91
 2350 057e 09       		.byte	0x9
 2351 057f 7602     		.2byte	0x276
 2352 0581 74080000 		.4byte	0x874
 2353 0585 58       		.byte	0x58
 2354 0586 1B       		.uleb128 0x1b
 2355 0587 570A0000 		.4byte	.LASF51
 2356 058b 09       		.byte	0x9
 2357 058c 7A02     		.2byte	0x27a
 2358 058e 00030000 		.4byte	0x300
 2359 0592 4801     		.2byte	0x148
 2360 0594 1B       		.uleb128 0x1b
 2361 0595 9B070000 		.4byte	.LASF92
 2362 0599 09       		.byte	0x9
 2363 059a 7B02     		.2byte	0x27b
 2364 059c C2020000 		.4byte	0x2c2
 2365 05a0 4C01     		.2byte	0x14c
 2366 05a2 1B       		.uleb128 0x1b
 2367 05a3 82070000 		.4byte	.LASF93
ARM GAS  /tmp/cc1oZp4Q.s 			page 67


 2368 05a7 09       		.byte	0x9
 2369 05a8 7F02     		.2byte	0x27f
 2370 05aa C8080000 		.4byte	0x8c8
 2371 05ae DC02     		.2byte	0x2dc
 2372 05b0 1B       		.uleb128 0x1b
 2373 05b1 870F0000 		.4byte	.LASF94
 2374 05b5 09       		.byte	0x9
 2375 05b6 8402     		.2byte	0x284
 2376 05b8 79060000 		.4byte	0x679
 2377 05bc E002     		.2byte	0x2e0
 2378 05be 1B       		.uleb128 0x1b
 2379 05bf D40A0000 		.4byte	.LASF95
 2380 05c3 09       		.byte	0x9
 2381 05c4 8502     		.2byte	0x285
 2382 05c6 D4080000 		.4byte	0x8d4
 2383 05ca EC02     		.2byte	0x2ec
 2384 05cc 00       		.byte	0
 2385 05cd 13       		.uleb128 0x13
 2386 05ce 04       		.byte	0x4
 2387 05cf D3050000 		.4byte	0x5d3
 2388 05d3 03       		.uleb128 0x3
 2389 05d4 01       		.byte	0x1
 2390 05d5 08       		.byte	0x8
 2391 05d6 5E070000 		.4byte	.LASF96
 2392 05da 05       		.uleb128 0x5
 2393 05db D3050000 		.4byte	0x5d3
 2394 05df 13       		.uleb128 0x13
 2395 05e0 04       		.byte	0x4
 2396 05e1 72040000 		.4byte	0x472
 2397 05e5 17       		.uleb128 0x17
 2398 05e6 25000000 		.4byte	0x25
 2399 05ea 03060000 		.4byte	0x603
 2400 05ee 18       		.uleb128 0x18
 2401 05ef 90040000 		.4byte	0x490
 2402 05f3 18       		.uleb128 0x18
 2403 05f4 D2000000 		.4byte	0xd2
 2404 05f8 18       		.uleb128 0x18
 2405 05f9 03060000 		.4byte	0x603
 2406 05fd 18       		.uleb128 0x18
 2407 05fe 25000000 		.4byte	0x25
 2408 0602 00       		.byte	0
 2409 0603 13       		.uleb128 0x13
 2410 0604 04       		.byte	0x4
 2411 0605 DA050000 		.4byte	0x5da
 2412 0609 13       		.uleb128 0x13
 2413 060a 04       		.byte	0x4
 2414 060b E5050000 		.4byte	0x5e5
 2415 060f 17       		.uleb128 0x17
 2416 0610 08010000 		.4byte	0x108
 2417 0614 2D060000 		.4byte	0x62d
 2418 0618 18       		.uleb128 0x18
 2419 0619 90040000 		.4byte	0x490
 2420 061d 18       		.uleb128 0x18
 2421 061e D2000000 		.4byte	0xd2
 2422 0622 18       		.uleb128 0x18
 2423 0623 08010000 		.4byte	0x108
 2424 0627 18       		.uleb128 0x18
ARM GAS  /tmp/cc1oZp4Q.s 			page 68


 2425 0628 25000000 		.4byte	0x25
 2426 062c 00       		.byte	0
 2427 062d 13       		.uleb128 0x13
 2428 062e 04       		.byte	0x4
 2429 062f 0F060000 		.4byte	0x60f
 2430 0633 17       		.uleb128 0x17
 2431 0634 25000000 		.4byte	0x25
 2432 0638 47060000 		.4byte	0x647
 2433 063c 18       		.uleb128 0x18
 2434 063d 90040000 		.4byte	0x490
 2435 0641 18       		.uleb128 0x18
 2436 0642 D2000000 		.4byte	0xd2
 2437 0646 00       		.byte	0
 2438 0647 13       		.uleb128 0x13
 2439 0648 04       		.byte	0x4
 2440 0649 33060000 		.4byte	0x633
 2441 064d 0D       		.uleb128 0xd
 2442 064e 45000000 		.4byte	0x45
 2443 0652 5D060000 		.4byte	0x65d
 2444 0656 0E       		.uleb128 0xe
 2445 0657 D4000000 		.4byte	0xd4
 2446 065b 02       		.byte	0x2
 2447 065c 00       		.byte	0
 2448 065d 0D       		.uleb128 0xd
 2449 065e 45000000 		.4byte	0x45
 2450 0662 6D060000 		.4byte	0x66d
 2451 0666 0E       		.uleb128 0xe
 2452 0667 D4000000 		.4byte	0xd4
 2453 066b 00       		.byte	0
 2454 066c 00       		.byte	0
 2455 066d 0A       		.uleb128 0xa
 2456 066e 2F050000 		.4byte	.LASF97
 2457 0672 09       		.byte	0x9
 2458 0673 1D01     		.2byte	0x11d
 2459 0675 48030000 		.4byte	0x348
 2460 0679 1C       		.uleb128 0x1c
 2461 067a DE000000 		.4byte	.LASF98
 2462 067e 0C       		.byte	0xc
 2463 067f 09       		.byte	0x9
 2464 0680 2101     		.2byte	0x121
 2465 0682 AE060000 		.4byte	0x6ae
 2466 0686 1A       		.uleb128 0x1a
 2467 0687 74060000 		.4byte	.LASF31
 2468 068b 09       		.byte	0x9
 2469 068c 2301     		.2byte	0x123
 2470 068e AE060000 		.4byte	0x6ae
 2471 0692 00       		.byte	0
 2472 0693 1A       		.uleb128 0x1a
 2473 0694 E40C0000 		.4byte	.LASF99
 2474 0698 09       		.byte	0x9
 2475 0699 2401     		.2byte	0x124
 2476 069b 25000000 		.4byte	0x25
 2477 069f 04       		.byte	0x4
 2478 06a0 1A       		.uleb128 0x1a
 2479 06a1 0E080000 		.4byte	.LASF100
 2480 06a5 09       		.byte	0x9
 2481 06a6 2501     		.2byte	0x125
ARM GAS  /tmp/cc1oZp4Q.s 			page 69


 2482 06a8 B4060000 		.4byte	0x6b4
 2483 06ac 08       		.byte	0x8
 2484 06ad 00       		.byte	0
 2485 06ae 13       		.uleb128 0x13
 2486 06af 04       		.byte	0x4
 2487 06b0 79060000 		.4byte	0x679
 2488 06b4 13       		.uleb128 0x13
 2489 06b5 04       		.byte	0x4
 2490 06b6 6D060000 		.4byte	0x66d
 2491 06ba 1C       		.uleb128 0x1c
 2492 06bb D8040000 		.4byte	.LASF101
 2493 06bf 0E       		.byte	0xe
 2494 06c0 09       		.byte	0x9
 2495 06c1 3D01     		.2byte	0x13d
 2496 06c3 EF060000 		.4byte	0x6ef
 2497 06c7 1A       		.uleb128 0x1a
 2498 06c8 01110000 		.4byte	.LASF102
 2499 06cc 09       		.byte	0x9
 2500 06cd 3E01     		.2byte	0x13e
 2501 06cf EF060000 		.4byte	0x6ef
 2502 06d3 00       		.byte	0
 2503 06d4 1A       		.uleb128 0x1a
 2504 06d5 AF080000 		.4byte	.LASF103
 2505 06d9 09       		.byte	0x9
 2506 06da 3F01     		.2byte	0x13f
 2507 06dc EF060000 		.4byte	0x6ef
 2508 06e0 06       		.byte	0x6
 2509 06e1 1A       		.uleb128 0x1a
 2510 06e2 B5080000 		.4byte	.LASF104
 2511 06e6 09       		.byte	0x9
 2512 06e7 4001     		.2byte	0x140
 2513 06e9 5E000000 		.4byte	0x5e
 2514 06ed 0C       		.byte	0xc
 2515 06ee 00       		.byte	0
 2516 06ef 0D       		.uleb128 0xd
 2517 06f0 5E000000 		.4byte	0x5e
 2518 06f4 FF060000 		.4byte	0x6ff
 2519 06f8 0E       		.uleb128 0xe
 2520 06f9 D4000000 		.4byte	0xd4
 2521 06fd 02       		.byte	0x2
 2522 06fe 00       		.byte	0
 2523 06ff 1D       		.uleb128 0x1d
 2524 0700 D0       		.byte	0xd0
 2525 0701 09       		.byte	0x9
 2526 0702 5702     		.2byte	0x257
 2527 0704 00080000 		.4byte	0x800
 2528 0708 1A       		.uleb128 0x1a
 2529 0709 85100000 		.4byte	.LASF105
 2530 070d 09       		.byte	0x9
 2531 070e 5902     		.2byte	0x259
 2532 0710 2C000000 		.4byte	0x2c
 2533 0714 00       		.byte	0
 2534 0715 1A       		.uleb128 0x1a
 2535 0716 9C0F0000 		.4byte	.LASF106
 2536 071a 09       		.byte	0x9
 2537 071b 5A02     		.2byte	0x25a
 2538 071d CD050000 		.4byte	0x5cd
ARM GAS  /tmp/cc1oZp4Q.s 			page 70


 2539 0721 04       		.byte	0x4
 2540 0722 1A       		.uleb128 0x1a
 2541 0723 CB040000 		.4byte	.LASF107
 2542 0727 09       		.byte	0x9
 2543 0728 5B02     		.2byte	0x25b
 2544 072a 00080000 		.4byte	0x800
 2545 072e 08       		.byte	0x8
 2546 072f 1A       		.uleb128 0x1a
 2547 0730 A50B0000 		.4byte	.LASF108
 2548 0734 09       		.byte	0x9
 2549 0735 5C02     		.2byte	0x25c
 2550 0737 F9010000 		.4byte	0x1f9
 2551 073b 24       		.byte	0x24
 2552 073c 1A       		.uleb128 0x1a
 2553 073d 5D080000 		.4byte	.LASF109
 2554 0741 09       		.byte	0x9
 2555 0742 5D02     		.2byte	0x25d
 2556 0744 25000000 		.4byte	0x25
 2557 0748 48       		.byte	0x48
 2558 0749 1A       		.uleb128 0x1a
 2559 074a 07110000 		.4byte	.LASF110
 2560 074e 09       		.byte	0x9
 2561 074f 5E02     		.2byte	0x25e
 2562 0751 90000000 		.4byte	0x90
 2563 0755 50       		.byte	0x50
 2564 0756 1A       		.uleb128 0x1a
 2565 0757 23010000 		.4byte	.LASF111
 2566 075b 09       		.byte	0x9
 2567 075c 5F02     		.2byte	0x25f
 2568 075e BA060000 		.4byte	0x6ba
 2569 0762 58       		.byte	0x58
 2570 0763 1A       		.uleb128 0x1a
 2571 0764 53090000 		.4byte	.LASF112
 2572 0768 09       		.byte	0x9
 2573 0769 6002     		.2byte	0x260
 2574 076b 6F010000 		.4byte	0x16f
 2575 076f 68       		.byte	0x68
 2576 0770 1A       		.uleb128 0x1a
 2577 0771 A90F0000 		.4byte	.LASF113
 2578 0775 09       		.byte	0x9
 2579 0776 6102     		.2byte	0x261
 2580 0778 6F010000 		.4byte	0x16f
 2581 077c 70       		.byte	0x70
 2582 077d 1A       		.uleb128 0x1a
 2583 077e D0000000 		.4byte	.LASF114
 2584 0782 09       		.byte	0x9
 2585 0783 6202     		.2byte	0x262
 2586 0785 6F010000 		.4byte	0x16f
 2587 0789 78       		.byte	0x78
 2588 078a 1A       		.uleb128 0x1a
 2589 078b 470F0000 		.4byte	.LASF115
 2590 078f 09       		.byte	0x9
 2591 0790 6302     		.2byte	0x263
 2592 0792 10080000 		.4byte	0x810
 2593 0796 80       		.byte	0x80
 2594 0797 1A       		.uleb128 0x1a
 2595 0798 4C010000 		.4byte	.LASF116
ARM GAS  /tmp/cc1oZp4Q.s 			page 71


 2596 079c 09       		.byte	0x9
 2597 079d 6402     		.2byte	0x264
 2598 079f 20080000 		.4byte	0x820
 2599 07a3 88       		.byte	0x88
 2600 07a4 1A       		.uleb128 0x1a
 2601 07a5 8F0F0000 		.4byte	.LASF117
 2602 07a9 09       		.byte	0x9
 2603 07aa 6502     		.2byte	0x265
 2604 07ac 25000000 		.4byte	0x25
 2605 07b0 A0       		.byte	0xa0
 2606 07b1 1A       		.uleb128 0x1a
 2607 07b2 530E0000 		.4byte	.LASF118
 2608 07b6 09       		.byte	0x9
 2609 07b7 6602     		.2byte	0x266
 2610 07b9 6F010000 		.4byte	0x16f
 2611 07bd A4       		.byte	0xa4
 2612 07be 1A       		.uleb128 0x1a
 2613 07bf 8C070000 		.4byte	.LASF119
 2614 07c3 09       		.byte	0x9
 2615 07c4 6702     		.2byte	0x267
 2616 07c6 6F010000 		.4byte	0x16f
 2617 07ca AC       		.byte	0xac
 2618 07cb 1A       		.uleb128 0x1a
 2619 07cc 89040000 		.4byte	.LASF120
 2620 07d0 09       		.byte	0x9
 2621 07d1 6802     		.2byte	0x268
 2622 07d3 6F010000 		.4byte	0x16f
 2623 07d7 B4       		.byte	0xb4
 2624 07d8 1A       		.uleb128 0x1a
 2625 07d9 EE080000 		.4byte	.LASF121
 2626 07dd 09       		.byte	0x9
 2627 07de 6902     		.2byte	0x269
 2628 07e0 6F010000 		.4byte	0x16f
 2629 07e4 BC       		.byte	0xbc
 2630 07e5 1A       		.uleb128 0x1a
 2631 07e6 25070000 		.4byte	.LASF122
 2632 07ea 09       		.byte	0x9
 2633 07eb 6A02     		.2byte	0x26a
 2634 07ed 6F010000 		.4byte	0x16f
 2635 07f1 C4       		.byte	0xc4
 2636 07f2 1A       		.uleb128 0x1a
 2637 07f3 280A0000 		.4byte	.LASF123
 2638 07f7 09       		.byte	0x9
 2639 07f8 6B02     		.2byte	0x26b
 2640 07fa 25000000 		.4byte	0x25
 2641 07fe CC       		.byte	0xcc
 2642 07ff 00       		.byte	0
 2643 0800 0D       		.uleb128 0xd
 2644 0801 D3050000 		.4byte	0x5d3
 2645 0805 10080000 		.4byte	0x810
 2646 0809 0E       		.uleb128 0xe
 2647 080a D4000000 		.4byte	0xd4
 2648 080e 19       		.byte	0x19
 2649 080f 00       		.byte	0
 2650 0810 0D       		.uleb128 0xd
 2651 0811 D3050000 		.4byte	0x5d3
 2652 0815 20080000 		.4byte	0x820
ARM GAS  /tmp/cc1oZp4Q.s 			page 72


 2653 0819 0E       		.uleb128 0xe
 2654 081a D4000000 		.4byte	0xd4
 2655 081e 07       		.byte	0x7
 2656 081f 00       		.byte	0
 2657 0820 0D       		.uleb128 0xd
 2658 0821 D3050000 		.4byte	0x5d3
 2659 0825 30080000 		.4byte	0x830
 2660 0829 0E       		.uleb128 0xe
 2661 082a D4000000 		.4byte	0xd4
 2662 082e 17       		.byte	0x17
 2663 082f 00       		.byte	0
 2664 0830 1D       		.uleb128 0x1d
 2665 0831 F0       		.byte	0xf0
 2666 0832 09       		.byte	0x9
 2667 0833 7002     		.2byte	0x270
 2668 0835 54080000 		.4byte	0x854
 2669 0839 1A       		.uleb128 0x1a
 2670 083a 32040000 		.4byte	.LASF124
 2671 083e 09       		.byte	0x9
 2672 083f 7302     		.2byte	0x273
 2673 0841 54080000 		.4byte	0x854
 2674 0845 00       		.byte	0
 2675 0846 1A       		.uleb128 0x1a
 2676 0847 39110000 		.4byte	.LASF125
 2677 084b 09       		.byte	0x9
 2678 084c 7402     		.2byte	0x274
 2679 084e 64080000 		.4byte	0x864
 2680 0852 78       		.byte	0x78
 2681 0853 00       		.byte	0
 2682 0854 0D       		.uleb128 0xd
 2683 0855 42030000 		.4byte	0x342
 2684 0859 64080000 		.4byte	0x864
 2685 085d 0E       		.uleb128 0xe
 2686 085e D4000000 		.4byte	0xd4
 2687 0862 1D       		.byte	0x1d
 2688 0863 00       		.byte	0
 2689 0864 0D       		.uleb128 0xd
 2690 0865 2C000000 		.4byte	0x2c
 2691 0869 74080000 		.4byte	0x874
 2692 086d 0E       		.uleb128 0xe
 2693 086e D4000000 		.4byte	0xd4
 2694 0872 1D       		.byte	0x1d
 2695 0873 00       		.byte	0
 2696 0874 1E       		.uleb128 0x1e
 2697 0875 F0       		.byte	0xf0
 2698 0876 09       		.byte	0x9
 2699 0877 5502     		.2byte	0x255
 2700 0879 96080000 		.4byte	0x896
 2701 087d 1F       		.uleb128 0x1f
 2702 087e DF0F0000 		.4byte	.LASF74
 2703 0882 09       		.byte	0x9
 2704 0883 6C02     		.2byte	0x26c
 2705 0885 FF060000 		.4byte	0x6ff
 2706 0889 1F       		.uleb128 0x1f
 2707 088a B40B0000 		.4byte	.LASF126
 2708 088e 09       		.byte	0x9
 2709 088f 7502     		.2byte	0x275
ARM GAS  /tmp/cc1oZp4Q.s 			page 73


 2710 0891 30080000 		.4byte	0x830
 2711 0895 00       		.byte	0
 2712 0896 0D       		.uleb128 0xd
 2713 0897 D3050000 		.4byte	0x5d3
 2714 089b A6080000 		.4byte	0x8a6
 2715 089f 0E       		.uleb128 0xe
 2716 08a0 D4000000 		.4byte	0xd4
 2717 08a4 18       		.byte	0x18
 2718 08a5 00       		.byte	0
 2719 08a6 20       		.uleb128 0x20
 2720 08a7 B1080000 		.4byte	0x8b1
 2721 08ab 18       		.uleb128 0x18
 2722 08ac 90040000 		.4byte	0x490
 2723 08b0 00       		.byte	0
 2724 08b1 13       		.uleb128 0x13
 2725 08b2 04       		.byte	0x4
 2726 08b3 A6080000 		.4byte	0x8a6
 2727 08b7 13       		.uleb128 0x13
 2728 08b8 04       		.byte	0x4
 2729 08b9 E3010000 		.4byte	0x1e3
 2730 08bd 20       		.uleb128 0x20
 2731 08be C8080000 		.4byte	0x8c8
 2732 08c2 18       		.uleb128 0x18
 2733 08c3 25000000 		.4byte	0x25
 2734 08c7 00       		.byte	0
 2735 08c8 13       		.uleb128 0x13
 2736 08c9 04       		.byte	0x4
 2737 08ca CE080000 		.4byte	0x8ce
 2738 08ce 13       		.uleb128 0x13
 2739 08cf 04       		.byte	0x4
 2740 08d0 BD080000 		.4byte	0x8bd
 2741 08d4 0D       		.uleb128 0xd
 2742 08d5 6D060000 		.4byte	0x66d
 2743 08d9 E4080000 		.4byte	0x8e4
 2744 08dd 0E       		.uleb128 0xe
 2745 08de D4000000 		.4byte	0xd4
 2746 08e2 02       		.byte	0x2
 2747 08e3 00       		.byte	0
 2748 08e4 08       		.uleb128 0x8
 2749 08e5 C2010000 		.4byte	.LASF127
 2750 08e9 09       		.byte	0x9
 2751 08ea FD02     		.2byte	0x2fd
 2752 08ec 90040000 		.4byte	0x490
 2753 08f0 08       		.uleb128 0x8
 2754 08f1 3D030000 		.4byte	.LASF128
 2755 08f5 09       		.byte	0x9
 2756 08f6 FE02     		.2byte	0x2fe
 2757 08f8 96040000 		.4byte	0x496
 2758 08fc 09       		.uleb128 0x9
 2759 08fd 110E0000 		.4byte	.LASF129
 2760 0901 0A       		.byte	0xa
 2761 0902 5F       		.byte	0x5f
 2762 0903 CD050000 		.4byte	0x5cd
 2763 0907 09       		.uleb128 0x9
 2764 0908 50030000 		.4byte	.LASF130
 2765 090c 0B       		.byte	0xb
 2766 090d 8F       		.byte	0x8f
ARM GAS  /tmp/cc1oZp4Q.s 			page 74


 2767 090e 19090000 		.4byte	0x919
 2768 0912 03       		.uleb128 0x3
 2769 0913 01       		.byte	0x1
 2770 0914 02       		.byte	0x2
 2771 0915 63060000 		.4byte	.LASF131
 2772 0919 06       		.uleb128 0x6
 2773 091a 12090000 		.4byte	0x912
 2774 091e 21       		.uleb128 0x21
 2775 091f C30C0000 		.4byte	.LASF132
 2776 0923 0B       		.byte	0xb
 2777 0924 94       		.byte	0x94
 2778 0925 CD000000 		.4byte	0xcd
 2779 0929 05       		.uleb128 0x5
 2780 092a 03       		.byte	0x3
 2781 092b 00000000 		.4byte	cpu_irq_critical_section_counter
 2782 092f 21       		.uleb128 0x21
 2783 0930 F3050000 		.4byte	.LASF133
 2784 0934 0B       		.byte	0xb
 2785 0935 95       		.byte	0x95
 2786 0936 19090000 		.4byte	0x919
 2787 093a 05       		.uleb128 0x5
 2788 093b 03       		.byte	0x3
 2789 093c 00000000 		.4byte	cpu_irq_prev_interrupt_state
 2790 0940 0A       		.uleb128 0xa
 2791 0941 C50A0000 		.4byte	.LASF134
 2792 0945 0C       		.byte	0xc
 2793 0946 0401     		.2byte	0x104
 2794 0948 A7000000 		.4byte	0xa7
 2795 094c 03       		.uleb128 0x3
 2796 094d 04       		.byte	0x4
 2797 094e 04       		.byte	0x4
 2798 094f FC030000 		.4byte	.LASF135
 2799 0953 03       		.uleb128 0x3
 2800 0954 08       		.byte	0x8
 2801 0955 04       		.byte	0x4
 2802 0956 57100000 		.4byte	.LASF136
 2803 095a 22       		.uleb128 0x22
 2804 095b 3D0F0000 		.4byte	.LASF148
 2805 095f 01       		.byte	0x1
 2806 0960 45000000 		.4byte	0x45
 2807 0964 0D       		.byte	0xd
 2808 0965 70       		.byte	0x70
 2809 0966 AD090000 		.4byte	0x9ad
 2810 096a 23       		.uleb128 0x23
 2811 096b 29020000 		.4byte	.LASF137
 2812 096f 00       		.byte	0
 2813 0970 23       		.uleb128 0x23
 2814 0971 6A0B0000 		.4byte	.LASF138
 2815 0975 01       		.byte	0x1
 2816 0976 23       		.uleb128 0x23
 2817 0977 7A060000 		.4byte	.LASF139
 2818 097b 03       		.byte	0x3
 2819 097c 23       		.uleb128 0x23
 2820 097d 2C090000 		.4byte	.LASF140
 2821 0981 05       		.byte	0x5
 2822 0982 23       		.uleb128 0x23
 2823 0983 C60B0000 		.4byte	.LASF141
ARM GAS  /tmp/cc1oZp4Q.s 			page 75


 2824 0987 06       		.byte	0x6
 2825 0988 23       		.uleb128 0x23
 2826 0989 D7080000 		.4byte	.LASF142
 2827 098d 07       		.byte	0x7
 2828 098e 23       		.uleb128 0x23
 2829 098f 7A080000 		.4byte	.LASF143
 2830 0993 08       		.byte	0x8
 2831 0994 23       		.uleb128 0x23
 2832 0995 DF0A0000 		.4byte	.LASF144
 2833 0999 09       		.byte	0x9
 2834 099a 23       		.uleb128 0x23
 2835 099b 1B0E0000 		.4byte	.LASF145
 2836 099f 0A       		.byte	0xa
 2837 09a0 23       		.uleb128 0x23
 2838 09a1 890C0000 		.4byte	.LASF146
 2839 09a5 0B       		.byte	0xb
 2840 09a6 23       		.uleb128 0x23
 2841 09a7 2C100000 		.4byte	.LASF147
 2842 09ab 0C       		.byte	0xc
 2843 09ac 00       		.byte	0
 2844 09ad 22       		.uleb128 0x22
 2845 09ae 9F010000 		.4byte	.LASF149
 2846 09b2 01       		.byte	0x1
 2847 09b3 45000000 		.4byte	0x45
 2848 09b7 0D       		.byte	0xd
 2849 09b8 82       		.byte	0x82
 2850 09b9 D0090000 		.4byte	0x9d0
 2851 09bd 23       		.uleb128 0x23
 2852 09be 360D0000 		.4byte	.LASF150
 2853 09c2 00       		.byte	0
 2854 09c3 23       		.uleb128 0x23
 2855 09c4 EB010000 		.4byte	.LASF151
 2856 09c8 01       		.byte	0x1
 2857 09c9 23       		.uleb128 0x23
 2858 09ca D7050000 		.4byte	.LASF152
 2859 09ce 02       		.byte	0x2
 2860 09cf 00       		.byte	0
 2861 09d0 22       		.uleb128 0x22
 2862 09d1 A2100000 		.4byte	.LASF153
 2863 09d5 01       		.byte	0x1
 2864 09d6 45000000 		.4byte	0x45
 2865 09da 0D       		.byte	0xd
 2866 09db 94       		.byte	0x94
 2867 09dc E7090000 		.4byte	0x9e7
 2868 09e0 23       		.uleb128 0x23
 2869 09e1 E9070000 		.4byte	.LASF154
 2870 09e5 01       		.byte	0x1
 2871 09e6 00       		.byte	0
 2872 09e7 22       		.uleb128 0x22
 2873 09e8 720E0000 		.4byte	.LASF155
 2874 09ec 01       		.byte	0x1
 2875 09ed 45000000 		.4byte	0x45
 2876 09f1 0D       		.byte	0xd
 2877 09f2 9D       		.byte	0x9d
 2878 09f3 160A0000 		.4byte	0xa16
 2879 09f7 23       		.uleb128 0x23
 2880 09f8 F20C0000 		.4byte	.LASF156
ARM GAS  /tmp/cc1oZp4Q.s 			page 76


 2881 09fc 01       		.byte	0x1
 2882 09fd 23       		.uleb128 0x23
 2883 09fe 5E100000 		.4byte	.LASF157
 2884 0a02 02       		.byte	0x2
 2885 0a03 23       		.uleb128 0x23
 2886 0a04 58050000 		.4byte	.LASF158
 2887 0a08 03       		.byte	0x3
 2888 0a09 23       		.uleb128 0x23
 2889 0a0a 36050000 		.4byte	.LASF159
 2890 0a0e 04       		.byte	0x4
 2891 0a0f 23       		.uleb128 0x23
 2892 0a10 F2000000 		.4byte	.LASF160
 2893 0a14 05       		.byte	0x5
 2894 0a15 00       		.byte	0
 2895 0a16 22       		.uleb128 0x22
 2896 0a17 63070000 		.4byte	.LASF161
 2897 0a1b 01       		.byte	0x1
 2898 0a1c 45000000 		.4byte	0x45
 2899 0a20 0D       		.byte	0xd
 2900 0a21 B5       		.byte	0xb5
 2901 0a22 2D0A0000 		.4byte	0xa2d
 2902 0a26 23       		.uleb128 0x23
 2903 0a27 B70F0000 		.4byte	.LASF162
 2904 0a2b 00       		.byte	0
 2905 0a2c 00       		.byte	0
 2906 0a2d 22       		.uleb128 0x22
 2907 0a2e 87050000 		.4byte	.LASF163
 2908 0a32 01       		.byte	0x1
 2909 0a33 45000000 		.4byte	0x45
 2910 0a37 0D       		.byte	0xd
 2911 0a38 C7       		.byte	0xc7
 2912 0a39 860A0000 		.4byte	0xa86
 2913 0a3d 23       		.uleb128 0x23
 2914 0a3e E4000000 		.4byte	.LASF164
 2915 0a42 01       		.byte	0x1
 2916 0a43 23       		.uleb128 0x23
 2917 0a44 690C0000 		.4byte	.LASF165
 2918 0a48 02       		.byte	0x2
 2919 0a49 23       		.uleb128 0x23
 2920 0a4a 8B000000 		.4byte	.LASF166
 2921 0a4e 03       		.byte	0x3
 2922 0a4f 23       		.uleb128 0x23
 2923 0a50 9A0D0000 		.4byte	.LASF167
 2924 0a54 04       		.byte	0x4
 2925 0a55 23       		.uleb128 0x23
 2926 0a56 260D0000 		.4byte	.LASF168
 2927 0a5a 05       		.byte	0x5
 2928 0a5b 23       		.uleb128 0x23
 2929 0a5c 800B0000 		.4byte	.LASF169
 2930 0a60 06       		.byte	0x6
 2931 0a61 23       		.uleb128 0x23
 2932 0a62 6D0D0000 		.4byte	.LASF170
 2933 0a66 07       		.byte	0x7
 2934 0a67 23       		.uleb128 0x23
 2935 0a68 67020000 		.4byte	.LASF171
 2936 0a6c 08       		.byte	0x8
 2937 0a6d 23       		.uleb128 0x23
ARM GAS  /tmp/cc1oZp4Q.s 			page 77


 2938 0a6e AB0D0000 		.4byte	.LASF172
 2939 0a72 09       		.byte	0x9
 2940 0a73 23       		.uleb128 0x23
 2941 0a74 76030000 		.4byte	.LASF173
 2942 0a78 0B       		.byte	0xb
 2943 0a79 23       		.uleb128 0x23
 2944 0a7a 69060000 		.4byte	.LASF174
 2945 0a7e 0F       		.byte	0xf
 2946 0a7f 23       		.uleb128 0x23
 2947 0a80 B7000000 		.4byte	.LASF175
 2948 0a84 10       		.byte	0x10
 2949 0a85 00       		.byte	0
 2950 0a86 24       		.uleb128 0x24
 2951 0a87 65010000 		.4byte	.LASF176
 2952 0a8b 02       		.byte	0x2
 2953 0a8c 5E000000 		.4byte	0x5e
 2954 0a90 0D       		.byte	0xd
 2955 0a91 0D01     		.2byte	0x10d
 2956 0a93 9F0A0000 		.4byte	0xa9f
 2957 0a97 25       		.uleb128 0x25
 2958 0a98 1B090000 		.4byte	.LASF177
 2959 0a9c 0904     		.2byte	0x409
 2960 0a9e 00       		.byte	0
 2961 0a9f 1D       		.uleb128 0x1d
 2962 0aa0 08       		.byte	0x8
 2963 0aa1 0D       		.byte	0xd
 2964 0aa2 3801     		.2byte	0x138
 2965 0aa4 EA0A0000 		.4byte	0xaea
 2966 0aa8 1A       		.uleb128 0x1a
 2967 0aa9 5C0B0000 		.4byte	.LASF178
 2968 0aad 0D       		.byte	0xd
 2969 0aae 3901     		.2byte	0x139
 2970 0ab0 97000000 		.4byte	0x97
 2971 0ab4 00       		.byte	0
 2972 0ab5 1A       		.uleb128 0x1a
 2973 0ab6 0A050000 		.4byte	.LASF179
 2974 0aba 0D       		.byte	0xd
 2975 0abb 3A01     		.2byte	0x13a
 2976 0abd 97000000 		.4byte	0x97
 2977 0ac1 01       		.byte	0x1
 2978 0ac2 1A       		.uleb128 0x1a
 2979 0ac3 F8020000 		.4byte	.LASF180
 2980 0ac7 0D       		.byte	0xd
 2981 0ac8 3B01     		.2byte	0x13b
 2982 0aca 40090000 		.4byte	0x940
 2983 0ace 02       		.byte	0x2
 2984 0acf 1A       		.uleb128 0x1a
 2985 0ad0 42000000 		.4byte	.LASF181
 2986 0ad4 0D       		.byte	0xd
 2987 0ad5 3C01     		.2byte	0x13c
 2988 0ad7 40090000 		.4byte	0x940
 2989 0adb 04       		.byte	0x4
 2990 0adc 1A       		.uleb128 0x1a
 2991 0add CC0A0000 		.4byte	.LASF182
 2992 0ae1 0D       		.byte	0xd
 2993 0ae2 3D01     		.2byte	0x13d
 2994 0ae4 40090000 		.4byte	0x940
ARM GAS  /tmp/cc1oZp4Q.s 			page 78


 2995 0ae8 06       		.byte	0x6
 2996 0ae9 00       		.byte	0
 2997 0aea 0A       		.uleb128 0xa
 2998 0aeb BA060000 		.4byte	.LASF183
 2999 0aef 0D       		.byte	0xd
 3000 0af0 3E01     		.2byte	0x13e
 3001 0af2 9F0A0000 		.4byte	0xa9f
 3002 0af6 1D       		.uleb128 0x1d
 3003 0af7 12       		.byte	0x12
 3004 0af8 0D       		.byte	0xd
 3005 0af9 4301     		.2byte	0x143
 3006 0afb B60B0000 		.4byte	0xbb6
 3007 0aff 1A       		.uleb128 0x1a
 3008 0b00 B6100000 		.4byte	.LASF184
 3009 0b04 0D       		.byte	0xd
 3010 0b05 4401     		.2byte	0x144
 3011 0b07 97000000 		.4byte	0x97
 3012 0b0b 00       		.byte	0
 3013 0b0c 1A       		.uleb128 0x1a
 3014 0b0d 260F0000 		.4byte	.LASF185
 3015 0b11 0D       		.byte	0xd
 3016 0b12 4501     		.2byte	0x145
 3017 0b14 97000000 		.4byte	0x97
 3018 0b18 01       		.byte	0x1
 3019 0b19 1A       		.uleb128 0x1a
 3020 0b1a ED030000 		.4byte	.LASF186
 3021 0b1e 0D       		.byte	0xd
 3022 0b1f 4601     		.2byte	0x146
 3023 0b21 40090000 		.4byte	0x940
 3024 0b25 02       		.byte	0x2
 3025 0b26 1A       		.uleb128 0x1a
 3026 0b27 89030000 		.4byte	.LASF187
 3027 0b2b 0D       		.byte	0xd
 3028 0b2c 4701     		.2byte	0x147
 3029 0b2e 97000000 		.4byte	0x97
 3030 0b32 04       		.byte	0x4
 3031 0b33 1A       		.uleb128 0x1a
 3032 0b34 A2050000 		.4byte	.LASF188
 3033 0b38 0D       		.byte	0xd
 3034 0b39 4801     		.2byte	0x148
 3035 0b3b 97000000 		.4byte	0x97
 3036 0b3f 05       		.byte	0x5
 3037 0b40 1A       		.uleb128 0x1a
 3038 0b41 F4090000 		.4byte	.LASF189
 3039 0b45 0D       		.byte	0xd
 3040 0b46 4901     		.2byte	0x149
 3041 0b48 97000000 		.4byte	0x97
 3042 0b4c 06       		.byte	0x6
 3043 0b4d 1A       		.uleb128 0x1a
 3044 0b4e 1F000000 		.4byte	.LASF190
 3045 0b52 0D       		.byte	0xd
 3046 0b53 4A01     		.2byte	0x14a
 3047 0b55 97000000 		.4byte	0x97
 3048 0b59 07       		.byte	0x7
 3049 0b5a 1A       		.uleb128 0x1a
 3050 0b5b 140A0000 		.4byte	.LASF191
 3051 0b5f 0D       		.byte	0xd
ARM GAS  /tmp/cc1oZp4Q.s 			page 79


 3052 0b60 4B01     		.2byte	0x14b
 3053 0b62 40090000 		.4byte	0x940
 3054 0b66 08       		.byte	0x8
 3055 0b67 1A       		.uleb128 0x1a
 3056 0b68 B6020000 		.4byte	.LASF192
 3057 0b6c 0D       		.byte	0xd
 3058 0b6d 4C01     		.2byte	0x14c
 3059 0b6f 40090000 		.4byte	0x940
 3060 0b73 0A       		.byte	0xa
 3061 0b74 1A       		.uleb128 0x1a
 3062 0b75 A4020000 		.4byte	.LASF193
 3063 0b79 0D       		.byte	0xd
 3064 0b7a 4D01     		.2byte	0x14d
 3065 0b7c 40090000 		.4byte	0x940
 3066 0b80 0C       		.byte	0xc
 3067 0b81 1A       		.uleb128 0x1a
 3068 0b82 E2020000 		.4byte	.LASF194
 3069 0b86 0D       		.byte	0xd
 3070 0b87 4E01     		.2byte	0x14e
 3071 0b89 97000000 		.4byte	0x97
 3072 0b8d 0E       		.byte	0xe
 3073 0b8e 1A       		.uleb128 0x1a
 3074 0b8f D1030000 		.4byte	.LASF195
 3075 0b93 0D       		.byte	0xd
 3076 0b94 4F01     		.2byte	0x14f
 3077 0b96 97000000 		.4byte	0x97
 3078 0b9a 0F       		.byte	0xf
 3079 0b9b 1A       		.uleb128 0x1a
 3080 0b9c B50C0000 		.4byte	.LASF196
 3081 0ba0 0D       		.byte	0xd
 3082 0ba1 5001     		.2byte	0x150
 3083 0ba3 97000000 		.4byte	0x97
 3084 0ba7 10       		.byte	0x10
 3085 0ba8 1A       		.uleb128 0x1a
 3086 0ba9 5A0F0000 		.4byte	.LASF197
 3087 0bad 0D       		.byte	0xd
 3088 0bae 5101     		.2byte	0x151
 3089 0bb0 97000000 		.4byte	0x97
 3090 0bb4 11       		.byte	0x11
 3091 0bb5 00       		.byte	0
 3092 0bb6 0A       		.uleb128 0xa
 3093 0bb7 6D0F0000 		.4byte	.LASF198
 3094 0bbb 0D       		.byte	0xd
 3095 0bbc 5201     		.2byte	0x152
 3096 0bbe F60A0000 		.4byte	0xaf6
 3097 0bc2 1D       		.uleb128 0x1d
 3098 0bc3 05       		.byte	0x5
 3099 0bc4 0D       		.byte	0xd
 3100 0bc5 7401     		.2byte	0x174
 3101 0bc7 000C0000 		.4byte	0xc00
 3102 0bcb 1A       		.uleb128 0x1a
 3103 0bcc B6100000 		.4byte	.LASF184
 3104 0bd0 0D       		.byte	0xd
 3105 0bd1 7501     		.2byte	0x175
 3106 0bd3 97000000 		.4byte	0x97
 3107 0bd7 00       		.byte	0
 3108 0bd8 1A       		.uleb128 0x1a
ARM GAS  /tmp/cc1oZp4Q.s 			page 80


 3109 0bd9 260F0000 		.4byte	.LASF185
 3110 0bdd 0D       		.byte	0xd
 3111 0bde 7601     		.2byte	0x176
 3112 0be0 97000000 		.4byte	0x97
 3113 0be4 01       		.byte	0x1
 3114 0be5 1A       		.uleb128 0x1a
 3115 0be6 7C040000 		.4byte	.LASF199
 3116 0bea 0D       		.byte	0xd
 3117 0beb 7701     		.2byte	0x177
 3118 0bed 40090000 		.4byte	0x940
 3119 0bf1 02       		.byte	0x2
 3120 0bf2 1A       		.uleb128 0x1a
 3121 0bf3 CB020000 		.4byte	.LASF200
 3122 0bf7 0D       		.byte	0xd
 3123 0bf8 7801     		.2byte	0x178
 3124 0bfa 97000000 		.4byte	0x97
 3125 0bfe 04       		.byte	0x4
 3126 0bff 00       		.byte	0
 3127 0c00 0A       		.uleb128 0xa
 3128 0c01 C6090000 		.4byte	.LASF201
 3129 0c05 0D       		.byte	0xd
 3130 0c06 7901     		.2byte	0x179
 3131 0c08 C20B0000 		.4byte	0xbc2
 3132 0c0c 1D       		.uleb128 0x1d
 3133 0c0d 09       		.byte	0x9
 3134 0c0e 0D       		.byte	0xd
 3135 0c0f A401     		.2byte	0x1a4
 3136 0c11 7E0C0000 		.4byte	0xc7e
 3137 0c15 1A       		.uleb128 0x1a
 3138 0c16 B6100000 		.4byte	.LASF184
 3139 0c1a 0D       		.byte	0xd
 3140 0c1b A501     		.2byte	0x1a5
 3141 0c1d 97000000 		.4byte	0x97
 3142 0c21 00       		.byte	0
 3143 0c22 1A       		.uleb128 0x1a
 3144 0c23 260F0000 		.4byte	.LASF185
 3145 0c27 0D       		.byte	0xd
 3146 0c28 A601     		.2byte	0x1a6
 3147 0c2a 97000000 		.4byte	0x97
 3148 0c2e 01       		.byte	0x1
 3149 0c2f 1A       		.uleb128 0x1a
 3150 0c30 7C040000 		.4byte	.LASF199
 3151 0c34 0D       		.byte	0xd
 3152 0c35 A701     		.2byte	0x1a7
 3153 0c37 40090000 		.4byte	0x940
 3154 0c3b 02       		.byte	0x2
 3155 0c3c 1A       		.uleb128 0x1a
 3156 0c3d A90A0000 		.4byte	.LASF202
 3157 0c41 0D       		.byte	0xd
 3158 0c42 A801     		.2byte	0x1a8
 3159 0c44 97000000 		.4byte	0x97
 3160 0c48 04       		.byte	0x4
 3161 0c49 1A       		.uleb128 0x1a
 3162 0c4a 590D0000 		.4byte	.LASF203
 3163 0c4e 0D       		.byte	0xd
 3164 0c4f A901     		.2byte	0x1a9
 3165 0c51 97000000 		.4byte	0x97
ARM GAS  /tmp/cc1oZp4Q.s 			page 81


 3166 0c55 05       		.byte	0x5
 3167 0c56 1A       		.uleb128 0x1a
 3168 0c57 4D0B0000 		.4byte	.LASF204
 3169 0c5b 0D       		.byte	0xd
 3170 0c5c AA01     		.2byte	0x1aa
 3171 0c5e 97000000 		.4byte	0x97
 3172 0c62 06       		.byte	0x6
 3173 0c63 1A       		.uleb128 0x1a
 3174 0c64 A80C0000 		.4byte	.LASF205
 3175 0c68 0D       		.byte	0xd
 3176 0c69 AB01     		.2byte	0x1ab
 3177 0c6b 97000000 		.4byte	0x97
 3178 0c6f 07       		.byte	0x7
 3179 0c70 1A       		.uleb128 0x1a
 3180 0c71 38000000 		.4byte	.LASF206
 3181 0c75 0D       		.byte	0xd
 3182 0c76 AC01     		.2byte	0x1ac
 3183 0c78 97000000 		.4byte	0x97
 3184 0c7c 08       		.byte	0x8
 3185 0c7d 00       		.byte	0
 3186 0c7e 0A       		.uleb128 0xa
 3187 0c7f 92100000 		.4byte	.LASF207
 3188 0c83 0D       		.byte	0xd
 3189 0c84 AD01     		.2byte	0x1ad
 3190 0c86 0C0C0000 		.4byte	0xc0c
 3191 0c8a 1D       		.uleb128 0x1d
 3192 0c8b 09       		.byte	0x9
 3193 0c8c 0D       		.byte	0xd
 3194 0c8d C801     		.2byte	0x1c8
 3195 0c8f 090D0000 		.4byte	0xd09
 3196 0c93 1A       		.uleb128 0x1a
 3197 0c94 B6100000 		.4byte	.LASF184
 3198 0c98 0D       		.byte	0xd
 3199 0c99 C901     		.2byte	0x1c9
 3200 0c9b 97000000 		.4byte	0x97
 3201 0c9f 00       		.byte	0
 3202 0ca0 1A       		.uleb128 0x1a
 3203 0ca1 260F0000 		.4byte	.LASF185
 3204 0ca5 0D       		.byte	0xd
 3205 0ca6 CA01     		.2byte	0x1ca
 3206 0ca8 97000000 		.4byte	0x97
 3207 0cac 01       		.byte	0x1
 3208 0cad 1A       		.uleb128 0x1a
 3209 0cae 9A040000 		.4byte	.LASF208
 3210 0cb2 0D       		.byte	0xd
 3211 0cb3 CB01     		.2byte	0x1cb
 3212 0cb5 97000000 		.4byte	0x97
 3213 0cb9 02       		.byte	0x2
 3214 0cba 1A       		.uleb128 0x1a
 3215 0cbb FF0D0000 		.4byte	.LASF209
 3216 0cbf 0D       		.byte	0xd
 3217 0cc0 CC01     		.2byte	0x1cc
 3218 0cc2 97000000 		.4byte	0x97
 3219 0cc6 03       		.byte	0x3
 3220 0cc7 1A       		.uleb128 0x1a
 3221 0cc8 1D060000 		.4byte	.LASF210
 3222 0ccc 0D       		.byte	0xd
ARM GAS  /tmp/cc1oZp4Q.s 			page 82


 3223 0ccd CD01     		.2byte	0x1cd
 3224 0ccf 97000000 		.4byte	0x97
 3225 0cd3 04       		.byte	0x4
 3226 0cd4 1A       		.uleb128 0x1a
 3227 0cd5 D7060000 		.4byte	.LASF211
 3228 0cd9 0D       		.byte	0xd
 3229 0cda CE01     		.2byte	0x1ce
 3230 0cdc 97000000 		.4byte	0x97
 3231 0ce0 05       		.byte	0x5
 3232 0ce1 1A       		.uleb128 0x1a
 3233 0ce2 91020000 		.4byte	.LASF212
 3234 0ce6 0D       		.byte	0xd
 3235 0ce7 CF01     		.2byte	0x1cf
 3236 0ce9 97000000 		.4byte	0x97
 3237 0ced 06       		.byte	0x6
 3238 0cee 1A       		.uleb128 0x1a
 3239 0cef A7060000 		.4byte	.LASF213
 3240 0cf3 0D       		.byte	0xd
 3241 0cf4 D001     		.2byte	0x1d0
 3242 0cf6 97000000 		.4byte	0x97
 3243 0cfa 07       		.byte	0x7
 3244 0cfb 1A       		.uleb128 0x1a
 3245 0cfc 18010000 		.4byte	.LASF214
 3246 0d00 0D       		.byte	0xd
 3247 0d01 D101     		.2byte	0x1d1
 3248 0d03 97000000 		.4byte	0x97
 3249 0d07 08       		.byte	0x8
 3250 0d08 00       		.byte	0
 3251 0d09 0A       		.uleb128 0xa
 3252 0d0a F90F0000 		.4byte	.LASF215
 3253 0d0e 0D       		.byte	0xd
 3254 0d0f D201     		.2byte	0x1d2
 3255 0d11 8A0C0000 		.4byte	0xc8a
 3256 0d15 1D       		.uleb128 0x1d
 3257 0d16 07       		.byte	0x7
 3258 0d17 0D       		.byte	0xd
 3259 0d18 D701     		.2byte	0x1d7
 3260 0d1a 6D0D0000 		.4byte	0xd6d
 3261 0d1e 1A       		.uleb128 0x1a
 3262 0d1f B6100000 		.4byte	.LASF184
 3263 0d23 0D       		.byte	0xd
 3264 0d24 D801     		.2byte	0x1d8
 3265 0d26 97000000 		.4byte	0x97
 3266 0d2a 00       		.byte	0
 3267 0d2b 1A       		.uleb128 0x1a
 3268 0d2c 260F0000 		.4byte	.LASF185
 3269 0d30 0D       		.byte	0xd
 3270 0d31 D901     		.2byte	0x1d9
 3271 0d33 97000000 		.4byte	0x97
 3272 0d37 01       		.byte	0x1
 3273 0d38 1A       		.uleb128 0x1a
 3274 0d39 360B0000 		.4byte	.LASF216
 3275 0d3d 0D       		.byte	0xd
 3276 0d3e DA01     		.2byte	0x1da
 3277 0d40 97000000 		.4byte	0x97
 3278 0d44 02       		.byte	0x2
 3279 0d45 1A       		.uleb128 0x1a
ARM GAS  /tmp/cc1oZp4Q.s 			page 83


 3280 0d46 A80C0000 		.4byte	.LASF205
 3281 0d4a 0D       		.byte	0xd
 3282 0d4b DB01     		.2byte	0x1db
 3283 0d4d 97000000 		.4byte	0x97
 3284 0d51 03       		.byte	0x3
 3285 0d52 1A       		.uleb128 0x1a
 3286 0d53 4E020000 		.4byte	.LASF217
 3287 0d57 0D       		.byte	0xd
 3288 0d58 DC01     		.2byte	0x1dc
 3289 0d5a 40090000 		.4byte	0x940
 3290 0d5e 04       		.byte	0x4
 3291 0d5f 1A       		.uleb128 0x1a
 3292 0d60 87020000 		.4byte	.LASF218
 3293 0d64 0D       		.byte	0xd
 3294 0d65 DD01     		.2byte	0x1dd
 3295 0d67 97000000 		.4byte	0x97
 3296 0d6b 06       		.byte	0x6
 3297 0d6c 00       		.byte	0
 3298 0d6d 0A       		.uleb128 0xa
 3299 0d6e 12110000 		.4byte	.LASF219
 3300 0d72 0D       		.byte	0xd
 3301 0d73 DE01     		.2byte	0x1de
 3302 0d75 150D0000 		.4byte	0xd15
 3303 0d79 1D       		.uleb128 0x1d
 3304 0d7a 02       		.byte	0x2
 3305 0d7b 0D       		.byte	0xd
 3306 0d7c E401     		.2byte	0x1e4
 3307 0d7e 9D0D0000 		.4byte	0xd9d
 3308 0d82 1A       		.uleb128 0x1a
 3309 0d83 B6100000 		.4byte	.LASF184
 3310 0d87 0D       		.byte	0xd
 3311 0d88 E501     		.2byte	0x1e5
 3312 0d8a 97000000 		.4byte	0x97
 3313 0d8e 00       		.byte	0
 3314 0d8f 1A       		.uleb128 0x1a
 3315 0d90 260F0000 		.4byte	.LASF185
 3316 0d94 0D       		.byte	0xd
 3317 0d95 E601     		.2byte	0x1e6
 3318 0d97 97000000 		.4byte	0x97
 3319 0d9b 01       		.byte	0x1
 3320 0d9c 00       		.byte	0
 3321 0d9d 0A       		.uleb128 0xa
 3322 0d9e BE100000 		.4byte	.LASF220
 3323 0da2 0D       		.byte	0xd
 3324 0da3 E701     		.2byte	0x1e7
 3325 0da5 790D0000 		.4byte	0xd79
 3326 0da9 1D       		.uleb128 0x1d
 3327 0daa 04       		.byte	0x4
 3328 0dab 0D       		.byte	0xd
 3329 0dac E901     		.2byte	0x1e9
 3330 0dae CD0D0000 		.4byte	0xdcd
 3331 0db2 1A       		.uleb128 0x1a
 3332 0db3 CD100000 		.4byte	.LASF221
 3333 0db7 0D       		.byte	0xd
 3334 0db8 EA01     		.2byte	0x1ea
 3335 0dba 9D0D0000 		.4byte	0xd9d
 3336 0dbe 00       		.byte	0
ARM GAS  /tmp/cc1oZp4Q.s 			page 84


 3337 0dbf 1A       		.uleb128 0x1a
 3338 0dc0 E2070000 		.4byte	.LASF222
 3339 0dc4 0D       		.byte	0xd
 3340 0dc5 EB01     		.2byte	0x1eb
 3341 0dc7 CD0D0000 		.4byte	0xdcd
 3342 0dcb 02       		.byte	0x2
 3343 0dcc 00       		.byte	0
 3344 0dcd 0D       		.uleb128 0xd
 3345 0dce 40090000 		.4byte	0x940
 3346 0dd2 DD0D0000 		.4byte	0xddd
 3347 0dd6 0E       		.uleb128 0xe
 3348 0dd7 D4000000 		.4byte	0xd4
 3349 0ddb 00       		.byte	0
 3350 0ddc 00       		.byte	0
 3351 0ddd 0A       		.uleb128 0xa
 3352 0dde 5B040000 		.4byte	.LASF223
 3353 0de2 0D       		.byte	0xd
 3354 0de3 EC01     		.2byte	0x1ec
 3355 0de5 A90D0000 		.4byte	0xda9
 3356 0de9 0F       		.uleb128 0xf
 3357 0dea 14       		.byte	0x14
 3358 0deb 0E       		.byte	0xe
 3359 0dec 4A       		.byte	0x4a
 3360 0ded 2E0E0000 		.4byte	0xe2e
 3361 0df1 10       		.uleb128 0x10
 3362 0df2 9B050000 		.4byte	.LASF224
 3363 0df6 0E       		.byte	0xe
 3364 0df7 55       		.byte	0x55
 3365 0df8 330E0000 		.4byte	0xe33
 3366 0dfc 00       		.byte	0
 3367 0dfd 10       		.uleb128 0x10
 3368 0dfe 460C0000 		.4byte	.LASF225
 3369 0e02 0E       		.byte	0xe
 3370 0e03 62       		.byte	0x62
 3371 0e04 16030000 		.4byte	0x316
 3372 0e08 04       		.byte	0x4
 3373 0e09 10       		.uleb128 0x10
 3374 0e0a EC0D0000 		.4byte	.LASF226
 3375 0e0e 0E       		.byte	0xe
 3376 0e0f 6F       		.byte	0x6f
 3377 0e10 330E0000 		.4byte	0xe33
 3378 0e14 08       		.byte	0x8
 3379 0e15 10       		.uleb128 0x10
 3380 0e16 94080000 		.4byte	.LASF227
 3381 0e1a 0E       		.byte	0xe
 3382 0e1b 78       		.byte	0x78
 3383 0e1c 3E0E0000 		.4byte	0xe3e
 3384 0e20 0C       		.byte	0xc
 3385 0e21 10       		.uleb128 0x10
 3386 0e22 310A0000 		.4byte	.LASF228
 3387 0e26 0E       		.byte	0xe
 3388 0e27 7D       		.byte	0x7d
 3389 0e28 16030000 		.4byte	0x316
 3390 0e2c 10       		.byte	0x10
 3391 0e2d 00       		.byte	0
 3392 0e2e 26       		.uleb128 0x26
 3393 0e2f 12090000 		.4byte	0x912
ARM GAS  /tmp/cc1oZp4Q.s 			page 85


 3394 0e33 13       		.uleb128 0x13
 3395 0e34 04       		.byte	0x4
 3396 0e35 2E0E0000 		.4byte	0xe2e
 3397 0e39 26       		.uleb128 0x26
 3398 0e3a 97000000 		.4byte	0x97
 3399 0e3e 13       		.uleb128 0x13
 3400 0e3f 04       		.byte	0x4
 3401 0e40 390E0000 		.4byte	0xe39
 3402 0e44 04       		.uleb128 0x4
 3403 0e45 300C0000 		.4byte	.LASF229
 3404 0e49 0E       		.byte	0xe
 3405 0e4a 7E       		.byte	0x7e
 3406 0e4b E90D0000 		.4byte	0xde9
 3407 0e4f 0F       		.uleb128 0xf
 3408 0e50 08       		.byte	0x8
 3409 0e51 0F       		.byte	0xf
 3410 0e52 64       		.byte	0x64
 3411 0e53 700E0000 		.4byte	0xe70
 3412 0e57 10       		.uleb128 0x10
 3413 0e58 CD100000 		.4byte	.LASF221
 3414 0e5c 0F       		.byte	0xf
 3415 0e5d 66       		.byte	0x66
 3416 0e5e 700E0000 		.4byte	0xe70
 3417 0e62 00       		.byte	0
 3418 0e63 10       		.uleb128 0x10
 3419 0e64 DA100000 		.4byte	.LASF230
 3420 0e68 0F       		.byte	0xf
 3421 0e69 68       		.byte	0x68
 3422 0e6a 760E0000 		.4byte	0xe76
 3423 0e6e 04       		.byte	0x4
 3424 0e6f 00       		.byte	0
 3425 0e70 13       		.uleb128 0x13
 3426 0e71 04       		.byte	0x4
 3427 0e72 7E0C0000 		.4byte	0xc7e
 3428 0e76 13       		.uleb128 0x13
 3429 0e77 04       		.byte	0x4
 3430 0e78 7C0E0000 		.4byte	0xe7c
 3431 0e7c 13       		.uleb128 0x13
 3432 0e7d 04       		.byte	0x4
 3433 0e7e 440E0000 		.4byte	0xe44
 3434 0e82 04       		.uleb128 0x4
 3435 0e83 7B0A0000 		.4byte	.LASF231
 3436 0e87 0F       		.byte	0xf
 3437 0e88 69       		.byte	0x69
 3438 0e89 4F0E0000 		.4byte	0xe4f
 3439 0e8d 0F       		.uleb128 0xf
 3440 0e8e 0C       		.byte	0xc
 3441 0e8f 0F       		.byte	0xf
 3442 0e90 6F       		.byte	0x6f
 3443 0e91 BA0E0000 		.4byte	0xeba
 3444 0e95 10       		.uleb128 0x10
 3445 0e96 980B0000 		.4byte	.LASF232
 3446 0e9a 0F       		.byte	0xf
 3447 0e9b 71       		.byte	0x71
 3448 0e9c BA0E0000 		.4byte	0xeba
 3449 0ea0 00       		.byte	0
 3450 0ea1 10       		.uleb128 0x10
ARM GAS  /tmp/cc1oZp4Q.s 			page 86


 3451 0ea2 36070000 		.4byte	.LASF233
 3452 0ea6 0F       		.byte	0xf
 3453 0ea7 73       		.byte	0x73
 3454 0ea8 C00E0000 		.4byte	0xec0
 3455 0eac 04       		.byte	0x4
 3456 0ead 10       		.uleb128 0x10
 3457 0eae 1C070000 		.4byte	.LASF234
 3458 0eb2 0F       		.byte	0xf
 3459 0eb3 7C       		.byte	0x7c
 3460 0eb4 C60E0000 		.4byte	0xec6
 3461 0eb8 08       		.byte	0x8
 3462 0eb9 00       		.byte	0
 3463 0eba 13       		.uleb128 0x13
 3464 0ebb 04       		.byte	0x4
 3465 0ebc B60B0000 		.4byte	0xbb6
 3466 0ec0 13       		.uleb128 0x13
 3467 0ec1 04       		.byte	0x4
 3468 0ec2 820E0000 		.4byte	0xe82
 3469 0ec6 13       		.uleb128 0x13
 3470 0ec7 04       		.byte	0x4
 3471 0ec8 000C0000 		.4byte	0xc00
 3472 0ecc 04       		.uleb128 0x4
 3473 0ecd 31080000 		.4byte	.LASF235
 3474 0ed1 0F       		.byte	0xf
 3475 0ed2 7D       		.byte	0x7d
 3476 0ed3 8D0E0000 		.4byte	0xe8d
 3477 0ed7 09       		.uleb128 0x9
 3478 0ed8 21100000 		.4byte	.LASF236
 3479 0edc 0F       		.byte	0xf
 3480 0edd 80       		.byte	0x80
 3481 0ede CC0E0000 		.4byte	0xecc
 3482 0ee2 0F       		.uleb128 0xf
 3483 0ee3 18       		.byte	0x18
 3484 0ee4 10       		.byte	0x10
 3485 0ee5 54       		.byte	0x54
 3486 0ee6 270F0000 		.4byte	0xf27
 3487 0eea 12       		.uleb128 0x12
 3488 0eeb 72657100 		.ascii	"req\000"
 3489 0eef 10       		.byte	0x10
 3490 0ef0 57       		.byte	0x57
 3491 0ef1 EA0A0000 		.4byte	0xaea
 3492 0ef5 00       		.byte	0
 3493 0ef6 10       		.uleb128 0x10
 3494 0ef7 2B060000 		.4byte	.LASF237
 3495 0efb 10       		.byte	0x10
 3496 0efc 5B       		.byte	0x5b
 3497 0efd 270F0000 		.4byte	0xf27
 3498 0f01 08       		.byte	0x8
 3499 0f02 10       		.uleb128 0x10
 3500 0f03 6F040000 		.4byte	.LASF238
 3501 0f07 10       		.byte	0x10
 3502 0f08 5E       		.byte	0x5e
 3503 0f09 A7000000 		.4byte	0xa7
 3504 0f0d 0C       		.byte	0xc
 3505 0f0e 10       		.uleb128 0x10
 3506 0f0f 510F0000 		.4byte	.LASF239
 3507 0f13 10       		.byte	0x10
ARM GAS  /tmp/cc1oZp4Q.s 			page 87


 3508 0f14 61       		.byte	0x61
 3509 0f15 16030000 		.4byte	0x316
 3510 0f19 10       		.byte	0x10
 3511 0f1a 10       		.uleb128 0x10
 3512 0f1b F9060000 		.4byte	.LASF240
 3513 0f1f 10       		.byte	0x10
 3514 0f20 65       		.byte	0x65
 3515 0f21 330E0000 		.4byte	0xe33
 3516 0f25 14       		.byte	0x14
 3517 0f26 00       		.byte	0
 3518 0f27 13       		.uleb128 0x13
 3519 0f28 04       		.byte	0x4
 3520 0f29 97000000 		.4byte	0x97
 3521 0f2d 04       		.uleb128 0x4
 3522 0f2e DA030000 		.4byte	.LASF241
 3523 0f32 10       		.byte	0x10
 3524 0f33 66       		.byte	0x66
 3525 0f34 E20E0000 		.4byte	0xee2
 3526 0f38 09       		.uleb128 0x9
 3527 0f39 1C080000 		.4byte	.LASF242
 3528 0f3d 10       		.byte	0x10
 3529 0f3e 67       		.byte	0x67
 3530 0f3f 2D0F0000 		.4byte	0xf2d
 3531 0f43 21       		.uleb128 0x21
 3532 0f44 D9090000 		.4byte	.LASF243
 3533 0f48 01       		.byte	0x1
 3534 0f49 42       		.byte	0x42
 3535 0f4a 40090000 		.4byte	0x940
 3536 0f4e 05       		.uleb128 0x5
 3537 0f4f 03       		.byte	0x3
 3538 0f50 00000000 		.4byte	udc_device_status
 3539 0f54 21       		.uleb128 0x21
 3540 0f55 B60D0000 		.4byte	.LASF244
 3541 0f59 01       		.byte	0x1
 3542 0f5a 46       		.byte	0x46
 3543 0f5b 97000000 		.4byte	0x97
 3544 0f5f 05       		.uleb128 0x5
 3545 0f60 03       		.byte	0x3
 3546 0f61 00000000 		.4byte	udc_iface_setting
 3547 0f65 21       		.uleb128 0x21
 3548 0f66 7D090000 		.4byte	.LASF245
 3549 0f6a 01       		.byte	0x1
 3550 0f6b 4A       		.byte	0x4a
 3551 0f6c 97000000 		.4byte	0x97
 3552 0f70 05       		.uleb128 0x5
 3553 0f71 03       		.byte	0x3
 3554 0f72 00000000 		.4byte	udc_num_configuration
 3555 0f76 21       		.uleb128 0x21
 3556 0f77 CA060000 		.4byte	.LASF246
 3557 0f7b 01       		.byte	0x1
 3558 0f7c 4D       		.byte	0x4d
 3559 0f7d C00E0000 		.4byte	0xec0
 3560 0f81 05       		.uleb128 0x5
 3561 0f82 03       		.byte	0x3
 3562 0f83 00000000 		.4byte	udc_ptr_conf
 3563 0f87 21       		.uleb128 0x21
 3564 0f88 33060000 		.4byte	.LASF247
ARM GAS  /tmp/cc1oZp4Q.s 			page 88


 3565 0f8c 01       		.byte	0x1
 3566 0f8d 50       		.byte	0x50
 3567 0f8e 980F0000 		.4byte	0xf98
 3568 0f92 05       		.uleb128 0x5
 3569 0f93 03       		.byte	0x3
 3570 0f94 00000000 		.4byte	udc_ptr_iface
 3571 0f98 13       		.uleb128 0x13
 3572 0f99 04       		.byte	0x4
 3573 0f9a 090D0000 		.4byte	0xd09
 3574 0f9e 21       		.uleb128 0x21
 3575 0f9f 3C0A0000 		.4byte	.LASF248
 3576 0fa3 01       		.byte	0x1
 3577 0fa4 5C       		.byte	0x5c
 3578 0fa5 DD0D0000 		.4byte	0xddd
 3579 0fa9 05       		.uleb128 0x5
 3580 0faa 03       		.byte	0x3
 3581 0fab 00000000 		.4byte	udc_string_desc_languageid
 3582 0faf 0D       		.uleb128 0xd
 3583 0fb0 97000000 		.4byte	0x97
 3584 0fb4 BF0F0000 		.4byte	0xfbf
 3585 0fb8 0E       		.uleb128 0xe
 3586 0fb9 D4000000 		.4byte	0xd4
 3587 0fbd 06       		.byte	0x6
 3588 0fbe 00       		.byte	0
 3589 0fbf 21       		.uleb128 0x21
 3590 0fc0 BA080000 		.4byte	.LASF249
 3591 0fc4 01       		.byte	0x1
 3592 0fc5 68       		.byte	0x68
 3593 0fc6 AF0F0000 		.4byte	0xfaf
 3594 0fca 05       		.uleb128 0x5
 3595 0fcb 03       		.byte	0x3
 3596 0fcc 00000000 		.4byte	udc_string_manufacturer_name
 3597 0fd0 0D       		.uleb128 0xd
 3598 0fd1 97000000 		.4byte	0x97
 3599 0fd5 E00F0000 		.4byte	0xfe0
 3600 0fd9 0E       		.uleb128 0xe
 3601 0fda D4000000 		.4byte	0xd4
 3602 0fde 04       		.byte	0x4
 3603 0fdf 00       		.byte	0
 3604 0fe0 21       		.uleb128 0x21
 3605 0fe1 49000000 		.4byte	.LASF250
 3606 0fe5 01       		.byte	0x1
 3607 0fe6 75       		.byte	0x75
 3608 0fe7 D00F0000 		.4byte	0xfd0
 3609 0feb 05       		.uleb128 0x5
 3610 0fec 03       		.byte	0x3
 3611 0fed 00000000 		.4byte	udc_string_product_name
 3612 0ff1 11       		.uleb128 0x11
 3613 0ff2 3C020000 		.4byte	.LASF251
 3614 0ff6 0E       		.byte	0xe
 3615 0ff7 01       		.byte	0x1
 3616 0ff8 9A       		.byte	0x9a
 3617 0ff9 16100000 		.4byte	0x1016
 3618 0ffd 10       		.uleb128 0x10
 3619 0ffe 9E090000 		.4byte	.LASF252
 3620 1002 01       		.byte	0x1
 3621 1003 9B       		.byte	0x9b
ARM GAS  /tmp/cc1oZp4Q.s 			page 89


 3622 1004 9D0D0000 		.4byte	0xd9d
 3623 1008 00       		.byte	0
 3624 1009 10       		.uleb128 0x10
 3625 100a E2070000 		.4byte	.LASF222
 3626 100e 01       		.byte	0x1
 3627 100f 9C       		.byte	0x9c
 3628 1010 16100000 		.4byte	0x1016
 3629 1014 02       		.byte	0x2
 3630 1015 00       		.byte	0
 3631 1016 0D       		.uleb128 0xd
 3632 1017 40090000 		.4byte	0x940
 3633 101b 26100000 		.4byte	0x1026
 3634 101f 0E       		.uleb128 0xe
 3635 1020 D4000000 		.4byte	0xd4
 3636 1024 05       		.byte	0x5
 3637 1025 00       		.byte	0
 3638 1026 21       		.uleb128 0x21
 3639 1027 A7000000 		.4byte	.LASF253
 3640 102b 01       		.byte	0x1
 3641 102c A0       		.byte	0xa0
 3642 102d F10F0000 		.4byte	0xff1
 3643 1031 05       		.uleb128 0x5
 3644 1032 03       		.byte	0x3
 3645 1033 00000000 		.4byte	udc_string_desc
 3646 1037 27       		.uleb128 0x27
 3647 1038 970A0000 		.4byte	.LASF303
 3648 103c 01       		.byte	0x1
 3649 103d 4E04     		.2byte	0x44e
 3650 103f 12090000 		.4byte	0x912
 3651 1043 00000000 		.4byte	.LFB176
 3652 1047 04040000 		.4byte	.LFE176-.LFB176
 3653 104b 01       		.uleb128 0x1
 3654 104c 9C       		.byte	0x9c
 3655 104d 67140000 		.4byte	0x1467
 3656 1051 28       		.uleb128 0x28
 3657 1052 BB140000 		.4byte	0x14bb
 3658 1056 3A000000 		.4byte	.LBB155
 3659 105a B8000000 		.4byte	.Ldebug_ranges0+0xb8
 3660 105e 01       		.byte	0x1
 3661 105f 5D04     		.2byte	0x45d
 3662 1061 41130000 		.4byte	0x1341
 3663 1065 29       		.uleb128 0x29
 3664 1066 24160000 		.4byte	0x1624
 3665 106a 54000000 		.4byte	.LBB157
 3666 106e 0C000000 		.4byte	.LBE157-.LBB157
 3667 1072 01       		.byte	0x1
 3668 1073 B203     		.2byte	0x3b2
 3669 1075 93100000 		.4byte	0x1093
 3670 1079 2A       		.uleb128 0x2a
 3671 107a 60000000 		.4byte	.LVL57
 3672 107e 1A1A0000 		.4byte	0x1a1a
 3673 1082 2B       		.uleb128 0x2b
 3674 1083 01       		.uleb128 0x1
 3675 1084 50       		.byte	0x50
 3676 1085 05       		.uleb128 0x5
 3677 1086 03       		.byte	0x3
 3678 1087 00000000 		.4byte	.LANCHOR3
ARM GAS  /tmp/cc1oZp4Q.s 			page 90


 3679 108b 2B       		.uleb128 0x2b
 3680 108c 01       		.uleb128 0x1
 3681 108d 51       		.byte	0x51
 3682 108e 02       		.uleb128 0x2
 3683 108f 76       		.byte	0x76
 3684 1090 00       		.sleb128 0
 3685 1091 00       		.byte	0
 3686 1092 00       		.byte	0
 3687 1093 29       		.uleb128 0x29
 3688 1094 CC150000 		.4byte	0x15cc
 3689 1098 24010000 		.4byte	.LBB159
 3690 109c 18000000 		.4byte	.LBE159-.LBB159
 3691 10a0 01       		.byte	0x1
 3692 10a1 F503     		.2byte	0x3f5
 3693 10a3 BA100000 		.4byte	0x10ba
 3694 10a7 2C       		.uleb128 0x2c
 3695 10a8 36010000 		.4byte	.LVL73
 3696 10ac 251A0000 		.4byte	0x1a25
 3697 10b0 2C       		.uleb128 0x2c
 3698 10b1 3C010000 		.4byte	.LVL74
 3699 10b5 311A0000 		.4byte	0x1a31
 3700 10b9 00       		.byte	0
 3701 10ba 28       		.uleb128 0x28
 3702 10bb 00160000 		.4byte	0x1600
 3703 10bf 54010000 		.4byte	.LBB161
 3704 10c3 10010000 		.4byte	.Ldebug_ranges0+0x110
 3705 10c7 01       		.byte	0x1
 3706 10c8 CA03     		.2byte	0x3ca
 3707 10ca 02110000 		.4byte	0x1102
 3708 10ce 2D       		.uleb128 0x2d
 3709 10cf 10010000 		.4byte	.Ldebug_ranges0+0x110
 3710 10d3 2E       		.uleb128 0x2e
 3711 10d4 11160000 		.4byte	0x1611
 3712 10d8 05       		.uleb128 0x5
 3713 10d9 03       		.byte	0x3
 3714 10da 00000000 		.4byte	udc_ep_status.9448
 3715 10de 2C       		.uleb128 0x2c
 3716 10df 60010000 		.4byte	.LVL75
 3717 10e3 3D1A0000 		.4byte	0x1a3d
 3718 10e7 2A       		.uleb128 0x2a
 3719 10e8 6C010000 		.4byte	.LVL76
 3720 10ec 1A1A0000 		.4byte	0x1a1a
 3721 10f0 2B       		.uleb128 0x2b
 3722 10f1 01       		.uleb128 0x1
 3723 10f2 50       		.byte	0x50
 3724 10f3 05       		.uleb128 0x5
 3725 10f4 03       		.byte	0x3
 3726 10f5 00000000 		.4byte	.LANCHOR9
 3727 10f9 2B       		.uleb128 0x2b
 3728 10fa 01       		.uleb128 0x1
 3729 10fb 51       		.byte	0x51
 3730 10fc 02       		.uleb128 0x2
 3731 10fd 76       		.byte	0x76
 3732 10fe 00       		.sleb128 0
 3733 10ff 00       		.byte	0
 3734 1100 00       		.byte	0
 3735 1101 00       		.byte	0
ARM GAS  /tmp/cc1oZp4Q.s 			page 91


 3736 1102 2F       		.uleb128 0x2f
 3737 1103 9F150000 		.4byte	0x159f
 3738 1107 6E010000 		.4byte	.LBB165
 3739 110b 28010000 		.4byte	.Ldebug_ranges0+0x128
 3740 110f 01       		.byte	0x1
 3741 1110 D603     		.2byte	0x3d6
 3742 1112 30       		.uleb128 0x30
 3743 1113 F3150000 		.4byte	0x15f3
 3744 1117 7E010000 		.4byte	.LBB169
 3745 111b 1C000000 		.4byte	.LBE169-.LBB169
 3746 111f 01       		.byte	0x1
 3747 1120 D803     		.2byte	0x3d8
 3748 1122 28       		.uleb128 0x28
 3749 1123 1C150000 		.4byte	0x151c
 3750 1127 9A010000 		.4byte	.LBB171
 3751 112b 40010000 		.4byte	.Ldebug_ranges0+0x140
 3752 112f 01       		.byte	0x1
 3753 1130 DC03     		.2byte	0x3dc
 3754 1132 6D110000 		.4byte	0x116d
 3755 1136 2D       		.uleb128 0x2d
 3756 1137 40010000 		.4byte	.Ldebug_ranges0+0x140
 3757 113b 31       		.uleb128 0x31
 3758 113c 2D150000 		.4byte	0x152d
 3759 1140 00000000 		.4byte	.LLST21
 3760 1144 2C       		.uleb128 0x2c
 3761 1145 A6010000 		.4byte	.LVL77
 3762 1149 491A0000 		.4byte	0x1a49
 3763 114d 2C       		.uleb128 0x2c
 3764 114e 90030000 		.4byte	.LVL113
 3765 1152 58160000 		.4byte	0x1658
 3766 1156 2A       		.uleb128 0x2a
 3767 1157 C0030000 		.4byte	.LVL116
 3768 115b D8160000 		.4byte	0x16d8
 3769 115f 2B       		.uleb128 0x2b
 3770 1160 01       		.uleb128 0x1
 3771 1161 50       		.byte	0x50
 3772 1162 02       		.uleb128 0x2
 3773 1163 75       		.byte	0x75
 3774 1164 00       		.sleb128 0
 3775 1165 2B       		.uleb128 0x2b
 3776 1166 01       		.uleb128 0x1
 3777 1167 51       		.byte	0x51
 3778 1168 01       		.uleb128 0x1
 3779 1169 30       		.byte	0x30
 3780 116a 00       		.byte	0
 3781 116b 00       		.byte	0
 3782 116c 00       		.byte	0
 3783 116d 29       		.uleb128 0x29
 3784 116e C8140000 		.4byte	0x14c8
 3785 1172 C0010000 		.4byte	.LBB174
 3786 1176 26000000 		.4byte	.LBE174-.LBB174
 3787 117a 01       		.byte	0x1
 3788 117b E903     		.2byte	0x3e9
 3789 117d C8110000 		.4byte	0x11c8
 3790 1181 32       		.uleb128 0x32
 3791 1182 C0010000 		.4byte	.LBB175
 3792 1186 26000000 		.4byte	.LBE175-.LBB175
ARM GAS  /tmp/cc1oZp4Q.s 			page 92


 3793 118a 31       		.uleb128 0x31
 3794 118b D9140000 		.4byte	0x14d9
 3795 118f 2A000000 		.4byte	.LLST22
 3796 1193 31       		.uleb128 0x31
 3797 1194 E5140000 		.4byte	0x14e5
 3798 1198 3D000000 		.4byte	.LLST23
 3799 119c 33       		.uleb128 0x33
 3800 119d DA010000 		.4byte	.LVL80
 3801 11a1 14170000 		.4byte	0x1714
 3802 11a5 B0110000 		.4byte	0x11b0
 3803 11a9 2B       		.uleb128 0x2b
 3804 11aa 01       		.uleb128 0x1
 3805 11ab 50       		.byte	0x50
 3806 11ac 02       		.uleb128 0x2
 3807 11ad 75       		.byte	0x75
 3808 11ae 00       		.sleb128 0
 3809 11af 00       		.byte	0
 3810 11b0 2A       		.uleb128 0x2a
 3811 11b1 E6010000 		.4byte	.LVL81
 3812 11b5 D8160000 		.4byte	0x16d8
 3813 11b9 2B       		.uleb128 0x2b
 3814 11ba 01       		.uleb128 0x1
 3815 11bb 50       		.byte	0x50
 3816 11bc 02       		.uleb128 0x2
 3817 11bd 75       		.byte	0x75
 3818 11be 00       		.sleb128 0
 3819 11bf 2B       		.uleb128 0x2b
 3820 11c0 01       		.uleb128 0x1
 3821 11c1 51       		.byte	0x51
 3822 11c2 02       		.uleb128 0x2
 3823 11c3 76       		.byte	0x76
 3824 11c4 00       		.sleb128 0
 3825 11c5 00       		.byte	0
 3826 11c6 00       		.byte	0
 3827 11c7 00       		.byte	0
 3828 11c8 29       		.uleb128 0x29
 3829 11c9 E6150000 		.4byte	0x15e6
 3830 11cd EC010000 		.4byte	.LBB176
 3831 11d1 16000000 		.4byte	.LBE176-.LBB176
 3832 11d5 01       		.byte	0x1
 3833 11d6 F303     		.2byte	0x3f3
 3834 11d8 E6110000 		.4byte	0x11e6
 3835 11dc 2C       		.uleb128 0x2c
 3836 11dd 02020000 		.4byte	.LVL83
 3837 11e1 541A0000 		.4byte	0x1a54
 3838 11e5 00       		.byte	0
 3839 11e6 29       		.uleb128 0x29
 3840 11e7 F2140000 		.4byte	0x14f2
 3841 11eb 38020000 		.4byte	.LBB178
 3842 11ef 4C000000 		.4byte	.LBE178-.LBB178
 3843 11f3 01       		.byte	0x1
 3844 11f4 C003     		.2byte	0x3c0
 3845 11f6 75120000 		.4byte	0x1275
 3846 11fa 32       		.uleb128 0x32
 3847 11fb 38020000 		.4byte	.LBB179
 3848 11ff 4C000000 		.4byte	.LBE179-.LBB179
 3849 1203 31       		.uleb128 0x31
ARM GAS  /tmp/cc1oZp4Q.s 			page 93


 3850 1204 03150000 		.4byte	0x1503
 3851 1208 50000000 		.4byte	.LLST24
 3852 120c 31       		.uleb128 0x31
 3853 120d 0F150000 		.4byte	0x150f
 3854 1211 63000000 		.4byte	.LLST25
 3855 1215 29       		.uleb128 0x29
 3856 1216 4C170000 		.4byte	0x174c
 3857 121a 5E020000 		.4byte	.LBB180
 3858 121e 06000000 		.4byte	.LBE180-.LBB180
 3859 1222 01       		.byte	0x1
 3860 1223 7803     		.2byte	0x378
 3861 1225 5B120000 		.4byte	0x125b
 3862 1229 34       		.uleb128 0x34
 3863 122a 67170000 		.4byte	0x1767
 3864 122e 80000000 		.4byte	.LLST26
 3865 1232 34       		.uleb128 0x34
 3866 1233 5C170000 		.4byte	0x175c
 3867 1237 94000000 		.4byte	.LLST27
 3868 123b 32       		.uleb128 0x32
 3869 123c 5E020000 		.4byte	.LBB181
 3870 1240 06000000 		.4byte	.LBE181-.LBB181
 3871 1244 35       		.uleb128 0x35
 3872 1245 72170000 		.4byte	0x1772
 3873 1249 2A       		.uleb128 0x2a
 3874 124a 64020000 		.4byte	.LVL92
 3875 124e D1170000 		.4byte	0x17d1
 3876 1252 2B       		.uleb128 0x2b
 3877 1253 01       		.uleb128 0x1
 3878 1254 50       		.byte	0x50
 3879 1255 02       		.uleb128 0x2
 3880 1256 78       		.byte	0x78
 3881 1257 00       		.sleb128 0
 3882 1258 00       		.byte	0
 3883 1259 00       		.byte	0
 3884 125a 00       		.byte	0
 3885 125b 2A       		.uleb128 0x2a
 3886 125c 82020000 		.4byte	.LVL95
 3887 1260 1A1A0000 		.4byte	0x1a1a
 3888 1264 2B       		.uleb128 0x2b
 3889 1265 01       		.uleb128 0x1
 3890 1266 50       		.byte	0x50
 3891 1267 05       		.uleb128 0x5
 3892 1268 03       		.byte	0x3
 3893 1269 00000000 		.4byte	.LANCHOR8
 3894 126d 2B       		.uleb128 0x2b
 3895 126e 01       		.uleb128 0x1
 3896 126f 51       		.byte	0x51
 3897 1270 01       		.uleb128 0x1
 3898 1271 31       		.byte	0x31
 3899 1272 00       		.byte	0
 3900 1273 00       		.byte	0
 3901 1274 00       		.byte	0
 3902 1275 28       		.uleb128 0x28
 3903 1276 3A150000 		.4byte	0x153a
 3904 127a 84020000 		.4byte	.LBB182
 3905 127e 58010000 		.4byte	.Ldebug_ranges0+0x158
 3906 1282 01       		.byte	0x1
ARM GAS  /tmp/cc1oZp4Q.s 			page 94


 3907 1283 B603     		.2byte	0x3b6
 3908 1285 A3120000 		.4byte	0x12a3
 3909 1289 2A       		.uleb128 0x2a
 3910 128a 94020000 		.4byte	.LVL97
 3911 128e 1A1A0000 		.4byte	0x1a1a
 3912 1292 2B       		.uleb128 0x2b
 3913 1293 01       		.uleb128 0x1
 3914 1294 50       		.byte	0x50
 3915 1295 05       		.uleb128 0x5
 3916 1296 03       		.byte	0x3
 3917 1297 00000000 		.4byte	.LANCHOR2
 3918 129b 2B       		.uleb128 0x2b
 3919 129c 01       		.uleb128 0x1
 3920 129d 51       		.byte	0x51
 3921 129e 02       		.uleb128 0x2
 3922 129f 75       		.byte	0x75
 3923 12a0 00       		.sleb128 0
 3924 12a1 00       		.byte	0
 3925 12a2 00       		.byte	0
 3926 12a3 36       		.uleb128 0x36
 3927 12a4 47150000 		.4byte	0x1547
 3928 12a8 B8020000 		.4byte	.LBB186
 3929 12ac 70010000 		.4byte	.Ldebug_ranges0+0x170
 3930 12b0 01       		.byte	0x1
 3931 12b1 B403     		.2byte	0x3b4
 3932 12b3 2D       		.uleb128 0x2d
 3933 12b4 70010000 		.4byte	.Ldebug_ranges0+0x170
 3934 12b8 31       		.uleb128 0x31
 3935 12b9 58150000 		.4byte	0x1558
 3936 12bd A7000000 		.4byte	.LLST28
 3937 12c1 28       		.uleb128 0x28
 3938 12c2 65150000 		.4byte	0x1565
 3939 12c6 24030000 		.4byte	.LBB188
 3940 12ca 90010000 		.4byte	.Ldebug_ranges0+0x190
 3941 12ce 01       		.byte	0x1
 3942 12cf FF02     		.2byte	0x2ff
 3943 12d1 23130000 		.4byte	0x1323
 3944 12d5 2D       		.uleb128 0x2d
 3945 12d6 90010000 		.4byte	.Ldebug_ranges0+0x190
 3946 12da 31       		.uleb128 0x31
 3947 12db 76150000 		.4byte	0x1576
 3948 12df 09010000 		.4byte	.LLST29
 3949 12e3 31       		.uleb128 0x31
 3950 12e4 80150000 		.4byte	0x1580
 3951 12e8 33010000 		.4byte	.LLST30
 3952 12ec 31       		.uleb128 0x31
 3953 12ed 8C150000 		.4byte	0x158c
 3954 12f1 53010000 		.4byte	.LLST31
 3955 12f5 33       		.uleb128 0x33
 3956 12f6 5C030000 		.4byte	.LVL108
 3957 12fa 1A1A0000 		.4byte	0x1a1a
 3958 12fe 09130000 		.4byte	0x1309
 3959 1302 2B       		.uleb128 0x2b
 3960 1303 01       		.uleb128 0x1
 3961 1304 50       		.byte	0x50
 3962 1305 02       		.uleb128 0x2
 3963 1306 76       		.byte	0x76
ARM GAS  /tmp/cc1oZp4Q.s 			page 95


 3964 1307 00       		.sleb128 0
 3965 1308 00       		.byte	0
 3966 1309 2A       		.uleb128 0x2a
 3967 130a DE030000 		.4byte	.LVL120
 3968 130e 1A1A0000 		.4byte	0x1a1a
 3969 1312 2B       		.uleb128 0x2b
 3970 1313 01       		.uleb128 0x1
 3971 1314 50       		.byte	0x50
 3972 1315 05       		.uleb128 0x5
 3973 1316 03       		.byte	0x3
 3974 1317 00000000 		.4byte	.LANCHOR6
 3975 131b 2B       		.uleb128 0x2b
 3976 131c 01       		.uleb128 0x1
 3977 131d 51       		.byte	0x51
 3978 131e 01       		.uleb128 0x1
 3979 131f 34       		.byte	0x34
 3980 1320 00       		.byte	0
 3981 1321 00       		.byte	0
 3982 1322 00       		.byte	0
 3983 1323 2C       		.uleb128 0x2c
 3984 1324 18030000 		.4byte	.LVL99
 3985 1328 1A1A0000 		.4byte	0x1a1a
 3986 132c 2C       		.uleb128 0x2c
 3987 132d 78030000 		.4byte	.LVL110
 3988 1331 1A1A0000 		.4byte	0x1a1a
 3989 1335 2C       		.uleb128 0x2c
 3990 1336 8A030000 		.4byte	.LVL112
 3991 133a 1A1A0000 		.4byte	0x1a1a
 3992 133e 00       		.byte	0
 3993 133f 00       		.byte	0
 3994 1340 00       		.byte	0
 3995 1341 29       		.uleb128 0x29
 3996 1342 67140000 		.4byte	0x1467
 3997 1346 64000000 		.4byte	.LBB208
 3998 134a 4C000000 		.4byte	.LBE208-.LBB208
 3999 134e 01       		.byte	0x1
 4000 134f 6B04     		.2byte	0x46b
 4001 1351 A9130000 		.4byte	0x13a9
 4002 1355 32       		.uleb128 0x32
 4003 1356 64000000 		.4byte	.LBB209
 4004 135a 4C000000 		.4byte	.LBE209-.LBB209
 4005 135e 31       		.uleb128 0x31
 4006 135f 78140000 		.4byte	0x1478
 4007 1363 8A010000 		.4byte	.LLST32
 4008 1367 31       		.uleb128 0x31
 4009 1368 84140000 		.4byte	0x1484
 4010 136c B4010000 		.4byte	.LLST33
 4011 1370 36       		.uleb128 0x36
 4012 1371 4C170000 		.4byte	0x174c
 4013 1375 7C000000 		.4byte	.LBB210
 4014 1379 B0010000 		.4byte	.Ldebug_ranges0+0x1b0
 4015 137d 01       		.byte	0x1
 4016 137e 3504     		.2byte	0x435
 4017 1380 34       		.uleb128 0x34
 4018 1381 67170000 		.4byte	0x1767
 4019 1385 D2010000 		.4byte	.LLST34
 4020 1389 34       		.uleb128 0x34
ARM GAS  /tmp/cc1oZp4Q.s 			page 96


 4021 138a 5C170000 		.4byte	0x175c
 4022 138e F0010000 		.4byte	.LLST35
 4023 1392 2D       		.uleb128 0x2d
 4024 1393 B0010000 		.4byte	.Ldebug_ranges0+0x1b0
 4025 1397 35       		.uleb128 0x35
 4026 1398 72170000 		.4byte	0x1772
 4027 139c 2C       		.uleb128 0x2c
 4028 139d 80000000 		.4byte	.LVL60
 4029 13a1 D1170000 		.4byte	0x17d1
 4030 13a5 00       		.byte	0
 4031 13a6 00       		.byte	0
 4032 13a7 00       		.byte	0
 4033 13a8 00       		.byte	0
 4034 13a9 36       		.uleb128 0x36
 4035 13aa 91140000 		.4byte	0x1491
 4036 13ae EC000000 		.4byte	.LBB217
 4037 13b2 D0010000 		.4byte	.Ldebug_ranges0+0x1d0
 4038 13b6 01       		.byte	0x1
 4039 13b7 6404     		.2byte	0x464
 4040 13b9 2D       		.uleb128 0x2d
 4041 13ba D0010000 		.4byte	.Ldebug_ranges0+0x1d0
 4042 13be 31       		.uleb128 0x31
 4043 13bf A2140000 		.4byte	0x14a2
 4044 13c3 0E020000 		.4byte	.LLST36
 4045 13c7 31       		.uleb128 0x31
 4046 13c8 AE140000 		.4byte	0x14ae
 4047 13cc 2C020000 		.4byte	.LLST37
 4048 13d0 29       		.uleb128 0x29
 4049 13d1 4C170000 		.4byte	0x174c
 4050 13d5 FE000000 		.4byte	.LBB219
 4051 13d9 08000000 		.4byte	.LBE219-.LBB219
 4052 13dd 01       		.byte	0x1
 4053 13de 1504     		.2byte	0x415
 4054 13e0 1C140000 		.4byte	0x141c
 4055 13e4 34       		.uleb128 0x34
 4056 13e5 67170000 		.4byte	0x1767
 4057 13e9 3F020000 		.4byte	.LLST38
 4058 13ed 34       		.uleb128 0x34
 4059 13ee 5C170000 		.4byte	0x175c
 4060 13f2 53020000 		.4byte	.LLST39
 4061 13f6 32       		.uleb128 0x32
 4062 13f7 FE000000 		.4byte	.LBB220
 4063 13fb 08000000 		.4byte	.LBE220-.LBB220
 4064 13ff 35       		.uleb128 0x35
 4065 1400 72170000 		.4byte	0x1772
 4066 1404 2A       		.uleb128 0x2a
 4067 1405 06010000 		.4byte	.LVL71
 4068 1409 D1170000 		.4byte	0x17d1
 4069 140d 2B       		.uleb128 0x2b
 4070 140e 01       		.uleb128 0x1
 4071 140f 50       		.byte	0x50
 4072 1410 02       		.uleb128 0x2
 4073 1411 77       		.byte	0x77
 4074 1412 00       		.sleb128 0
 4075 1413 2B       		.uleb128 0x2b
 4076 1414 01       		.uleb128 0x1
 4077 1415 51       		.byte	0x51
ARM GAS  /tmp/cc1oZp4Q.s 			page 97


 4078 1416 02       		.uleb128 0x2
 4079 1417 71       		.byte	0x71
 4080 1418 00       		.sleb128 0
 4081 1419 00       		.byte	0
 4082 141a 00       		.byte	0
 4083 141b 00       		.byte	0
 4084 141c 37       		.uleb128 0x37
 4085 141d 4C170000 		.4byte	0x174c
 4086 1421 12020000 		.4byte	.LBB221
 4087 1425 10000000 		.4byte	.LBE221-.LBB221
 4088 1429 01       		.byte	0x1
 4089 142a 1A04     		.2byte	0x41a
 4090 142c 34       		.uleb128 0x34
 4091 142d 67170000 		.4byte	0x1767
 4092 1431 66020000 		.4byte	.LLST40
 4093 1435 34       		.uleb128 0x34
 4094 1436 5C170000 		.4byte	0x175c
 4095 143a 79020000 		.4byte	.LLST41
 4096 143e 32       		.uleb128 0x32
 4097 143f 12020000 		.4byte	.LBB222
 4098 1443 10000000 		.4byte	.LBE222-.LBB222
 4099 1447 35       		.uleb128 0x35
 4100 1448 72170000 		.4byte	0x1772
 4101 144c 2A       		.uleb128 0x2a
 4102 144d 22020000 		.4byte	.LVL88
 4103 1451 D1170000 		.4byte	0x17d1
 4104 1455 2B       		.uleb128 0x2b
 4105 1456 01       		.uleb128 0x1
 4106 1457 50       		.byte	0x50
 4107 1458 02       		.uleb128 0x2
 4108 1459 77       		.byte	0x77
 4109 145a 00       		.sleb128 0
 4110 145b 2B       		.uleb128 0x2b
 4111 145c 01       		.uleb128 0x1
 4112 145d 51       		.byte	0x51
 4113 145e 02       		.uleb128 0x2
 4114 145f 71       		.byte	0x71
 4115 1460 00       		.sleb128 0
 4116 1461 00       		.byte	0
 4117 1462 00       		.byte	0
 4118 1463 00       		.byte	0
 4119 1464 00       		.byte	0
 4120 1465 00       		.byte	0
 4121 1466 00       		.byte	0
 4122 1467 38       		.uleb128 0x38
 4123 1468 26110000 		.4byte	.LASF256
 4124 146c 01       		.byte	0x1
 4125 146d 2704     		.2byte	0x427
 4126 146f 12090000 		.4byte	0x912
 4127 1473 01       		.byte	0x1
 4128 1474 91140000 		.4byte	0x1491
 4129 1478 39       		.uleb128 0x39
 4130 1479 A4070000 		.4byte	.LASF254
 4131 147d 01       		.byte	0x1
 4132 147e 2904     		.2byte	0x429
 4133 1480 97000000 		.4byte	0x97
 4134 1484 39       		.uleb128 0x39
ARM GAS  /tmp/cc1oZp4Q.s 			page 98


 4135 1485 9F060000 		.4byte	.LASF255
 4136 1489 01       		.byte	0x1
 4137 148a 2A04     		.2byte	0x42a
 4138 148c 7C0E0000 		.4byte	0xe7c
 4139 1490 00       		.byte	0
 4140 1491 38       		.uleb128 0x38
 4141 1492 C80D0000 		.4byte	.LASF257
 4142 1496 01       		.byte	0x1
 4143 1497 0404     		.2byte	0x404
 4144 1499 12090000 		.4byte	0x912
 4145 149d 01       		.byte	0x1
 4146 149e BB140000 		.4byte	0x14bb
 4147 14a2 39       		.uleb128 0x39
 4148 14a3 A4070000 		.4byte	.LASF254
 4149 14a7 01       		.byte	0x1
 4150 14a8 0604     		.2byte	0x406
 4151 14aa 97000000 		.4byte	0x97
 4152 14ae 39       		.uleb128 0x39
 4153 14af 9F060000 		.4byte	.LASF255
 4154 14b3 01       		.byte	0x1
 4155 14b4 0704     		.2byte	0x407
 4156 14b6 7C0E0000 		.4byte	0xe7c
 4157 14ba 00       		.byte	0
 4158 14bb 3A       		.uleb128 0x3a
 4159 14bc 7C0F0000 		.4byte	.LASF262
 4160 14c0 01       		.byte	0x1
 4161 14c1 A603     		.2byte	0x3a6
 4162 14c3 12090000 		.4byte	0x912
 4163 14c7 01       		.byte	0x1
 4164 14c8 38       		.uleb128 0x38
 4165 14c9 40070000 		.4byte	.LASF258
 4166 14cd 01       		.byte	0x1
 4167 14ce 8A03     		.2byte	0x38a
 4168 14d0 12090000 		.4byte	0x912
 4169 14d4 01       		.byte	0x1
 4170 14d5 F2140000 		.4byte	0x14f2
 4171 14d9 39       		.uleb128 0x39
 4172 14da A4070000 		.4byte	.LASF254
 4173 14de 01       		.byte	0x1
 4174 14df 8C03     		.2byte	0x38c
 4175 14e1 97000000 		.4byte	0x97
 4176 14e5 39       		.uleb128 0x39
 4177 14e6 200B0000 		.4byte	.LASF259
 4178 14ea 01       		.byte	0x1
 4179 14eb 8C03     		.2byte	0x38c
 4180 14ed 97000000 		.4byte	0x97
 4181 14f1 00       		.byte	0
 4182 14f2 38       		.uleb128 0x38
 4183 14f3 FD080000 		.4byte	.LASF260
 4184 14f7 01       		.byte	0x1
 4185 14f8 6403     		.2byte	0x364
 4186 14fa 12090000 		.4byte	0x912
 4187 14fe 01       		.byte	0x1
 4188 14ff 1C150000 		.4byte	0x151c
 4189 1503 39       		.uleb128 0x39
 4190 1504 A4070000 		.4byte	.LASF254
 4191 1508 01       		.byte	0x1
ARM GAS  /tmp/cc1oZp4Q.s 			page 99


 4192 1509 6603     		.2byte	0x366
 4193 150b 97000000 		.4byte	0x97
 4194 150f 39       		.uleb128 0x39
 4195 1510 9F060000 		.4byte	.LASF255
 4196 1514 01       		.byte	0x1
 4197 1515 6703     		.2byte	0x367
 4198 1517 7C0E0000 		.4byte	0xe7c
 4199 151b 00       		.byte	0
 4200 151c 38       		.uleb128 0x38
 4201 151d 1B030000 		.4byte	.LASF261
 4202 1521 01       		.byte	0x1
 4203 1522 2303     		.2byte	0x323
 4204 1524 12090000 		.4byte	0x912
 4205 1528 01       		.byte	0x1
 4206 1529 3A150000 		.4byte	0x153a
 4207 152d 39       		.uleb128 0x39
 4208 152e A4070000 		.4byte	.LASF254
 4209 1532 01       		.byte	0x1
 4210 1533 2503     		.2byte	0x325
 4211 1535 97000000 		.4byte	0x97
 4212 1539 00       		.byte	0
 4213 153a 3A       		.uleb128 0x3a
 4214 153b 07020000 		.4byte	.LASF263
 4215 153f 01       		.byte	0x1
 4216 1540 1403     		.2byte	0x314
 4217 1542 12090000 		.4byte	0x912
 4218 1546 01       		.byte	0x1
 4219 1547 38       		.uleb128 0x38
 4220 1548 00000000 		.4byte	.LASF264
 4221 154c 01       		.byte	0x1
 4222 154d 9F02     		.2byte	0x29f
 4223 154f 12090000 		.4byte	0x912
 4224 1553 01       		.byte	0x1
 4225 1554 65150000 		.4byte	0x1565
 4226 1558 39       		.uleb128 0x39
 4227 1559 40090000 		.4byte	.LASF265
 4228 155d 01       		.byte	0x1
 4229 155e A102     		.2byte	0x2a1
 4230 1560 97000000 		.4byte	0x97
 4231 1564 00       		.byte	0
 4232 1565 38       		.uleb128 0x38
 4233 1566 ED040000 		.4byte	.LASF266
 4234 156a 01       		.byte	0x1
 4235 156b 6402     		.2byte	0x264
 4236 156d 12090000 		.4byte	0x912
 4237 1571 01       		.byte	0x1
 4238 1572 99150000 		.4byte	0x1599
 4239 1576 3B       		.uleb128 0x3b
 4240 1577 6900     		.ascii	"i\000"
 4241 1579 01       		.byte	0x1
 4242 157a 6602     		.2byte	0x266
 4243 157c 97000000 		.4byte	0x97
 4244 1580 3B       		.uleb128 0x3b
 4245 1581 73747200 		.ascii	"str\000"
 4246 1585 01       		.byte	0x1
 4247 1586 6702     		.2byte	0x267
 4248 1588 99150000 		.4byte	0x1599
ARM GAS  /tmp/cc1oZp4Q.s 			page 100


 4249 158c 39       		.uleb128 0x39
 4250 158d 41060000 		.4byte	.LASF267
 4251 1591 01       		.byte	0x1
 4252 1592 6802     		.2byte	0x268
 4253 1594 97000000 		.4byte	0x97
 4254 1598 00       		.byte	0
 4255 1599 13       		.uleb128 0x13
 4256 159a 04       		.byte	0x4
 4257 159b A2000000 		.4byte	0xa2
 4258 159f 3A       		.uleb128 0x3a
 4259 15a0 310E0000 		.4byte	.LASF268
 4260 15a4 01       		.byte	0x1
 4261 15a5 5302     		.2byte	0x253
 4262 15a7 12090000 		.4byte	0x912
 4263 15ab 01       		.byte	0x1
 4264 15ac 3C       		.uleb128 0x3c
 4265 15ad 39040000 		.4byte	.LASF304
 4266 15b1 01       		.byte	0x1
 4267 15b2 4902     		.2byte	0x249
 4268 15b4 00000000 		.4byte	.LFB165
 4269 15b8 10000000 		.4byte	.LFE165-.LFB165
 4270 15bc 01       		.uleb128 0x1
 4271 15bd 9C       		.byte	0x9c
 4272 15be CC150000 		.4byte	0x15cc
 4273 15c2 3D       		.uleb128 0x3d
 4274 15c3 0C000000 		.4byte	.LVL0
 4275 15c7 601A0000 		.4byte	0x1a60
 4276 15cb 00       		.byte	0
 4277 15cc 3A       		.uleb128 0x3a
 4278 15cd 28010000 		.4byte	.LASF269
 4279 15d1 01       		.byte	0x1
 4280 15d2 3802     		.2byte	0x238
 4281 15d4 12090000 		.4byte	0x912
 4282 15d8 01       		.byte	0x1
 4283 15d9 3A       		.uleb128 0x3a
 4284 15da 5F0A0000 		.4byte	.LASF270
 4285 15de 01       		.byte	0x1
 4286 15df F901     		.2byte	0x1f9
 4287 15e1 12090000 		.4byte	0x912
 4288 15e5 01       		.byte	0x1
 4289 15e6 3A       		.uleb128 0x3a
 4290 15e7 CE010000 		.4byte	.LASF271
 4291 15eb 01       		.byte	0x1
 4292 15ec E701     		.2byte	0x1e7
 4293 15ee 12090000 		.4byte	0x912
 4294 15f2 01       		.byte	0x1
 4295 15f3 3A       		.uleb128 0x3a
 4296 15f4 000C0000 		.4byte	.LASF272
 4297 15f8 01       		.byte	0x1
 4298 15f9 D001     		.2byte	0x1d0
 4299 15fb 12090000 		.4byte	0x912
 4300 15ff 01       		.byte	0x1
 4301 1600 38       		.uleb128 0x38
 4302 1601 61000000 		.4byte	.LASF273
 4303 1605 01       		.byte	0x1
 4304 1606 BA01     		.2byte	0x1ba
 4305 1608 12090000 		.4byte	0x912
ARM GAS  /tmp/cc1oZp4Q.s 			page 101


 4306 160c 01       		.byte	0x1
 4307 160d 24160000 		.4byte	0x1624
 4308 1611 3E       		.uleb128 0x3e
 4309 1612 E20B0000 		.4byte	.LASF274
 4310 1616 01       		.byte	0x1
 4311 1617 BC01     		.2byte	0x1bc
 4312 1619 40090000 		.4byte	0x940
 4313 161d 05       		.uleb128 0x5
 4314 161e 03       		.byte	0x3
 4315 161f 00000000 		.4byte	udc_ep_status.9448
 4316 1623 00       		.byte	0
 4317 1624 3A       		.uleb128 0x3a
 4318 1625 0B040000 		.4byte	.LASF275
 4319 1629 01       		.byte	0x1
 4320 162a A901     		.2byte	0x1a9
 4321 162c 12090000 		.4byte	0x912
 4322 1630 01       		.byte	0x1
 4323 1631 3F       		.uleb128 0x3f
 4324 1632 08070000 		.4byte	.LASF276
 4325 1636 01       		.byte	0x1
 4326 1637 9501     		.2byte	0x195
 4327 1639 00000000 		.4byte	.LFB158
 4328 163d 38000000 		.4byte	.LFE158-.LFB158
 4329 1641 01       		.uleb128 0x1
 4330 1642 9C       		.byte	0x9c
 4331 1643 58160000 		.4byte	0x1658
 4332 1647 40       		.uleb128 0x40
 4333 1648 A4070000 		.4byte	.LASF254
 4334 164c 01       		.byte	0x1
 4335 164d 9701     		.2byte	0x197
 4336 164f 97000000 		.4byte	0x97
 4337 1653 8C020000 		.4byte	.LLST20
 4338 1657 00       		.byte	0
 4339 1658 41       		.uleb128 0x41
 4340 1659 F90A0000 		.4byte	.LASF277
 4341 165d 01       		.byte	0x1
 4342 165e 7A01     		.2byte	0x17a
 4343 1660 00000000 		.4byte	.LFB157
 4344 1664 40000000 		.4byte	.LFE157-.LFB157
 4345 1668 01       		.uleb128 0x1
 4346 1669 9C       		.byte	0x9c
 4347 166a 8F160000 		.4byte	0x168f
 4348 166e 40       		.uleb128 0x40
 4349 166f A4070000 		.4byte	.LASF254
 4350 1673 01       		.byte	0x1
 4351 1674 7C01     		.2byte	0x17c
 4352 1676 97000000 		.4byte	0x97
 4353 167a B6020000 		.4byte	.LLST19
 4354 167e 2A       		.uleb128 0x2a
 4355 167f 1C000000 		.4byte	.LVL46
 4356 1683 14170000 		.4byte	0x1714
 4357 1687 2B       		.uleb128 0x2b
 4358 1688 01       		.uleb128 0x1
 4359 1689 50       		.byte	0x50
 4360 168a 02       		.uleb128 0x2
 4361 168b 74       		.byte	0x74
 4362 168c 7F       		.sleb128 -1
ARM GAS  /tmp/cc1oZp4Q.s 			page 102


 4363 168d 00       		.byte	0
 4364 168e 00       		.byte	0
 4365 168f 41       		.uleb128 0x41
 4366 1690 AB040000 		.4byte	.LASF278
 4367 1694 01       		.byte	0x1
 4368 1695 7001     		.2byte	0x170
 4369 1697 00000000 		.4byte	.LFB156
 4370 169b 0E000000 		.4byte	.LFE156-.LFB156
 4371 169f 01       		.uleb128 0x1
 4372 16a0 9C       		.byte	0x9c
 4373 16a1 B8160000 		.4byte	0x16b8
 4374 16a5 2C       		.uleb128 0x2c
 4375 16a6 06000000 		.4byte	.LVL49
 4376 16aa 6B1A0000 		.4byte	0x1a6b
 4377 16ae 3D       		.uleb128 0x3d
 4378 16af 0E000000 		.4byte	.LVL50
 4379 16b3 58160000 		.4byte	0x1658
 4380 16b7 00       		.byte	0
 4381 16b8 41       		.uleb128 0x41
 4382 16b9 B7090000 		.4byte	.LASF279
 4383 16bd 01       		.byte	0x1
 4384 16be 6901     		.2byte	0x169
 4385 16c0 00000000 		.4byte	.LFB155
 4386 16c4 04000000 		.4byte	.LFE155-.LFB155
 4387 16c8 01       		.uleb128 0x1
 4388 16c9 9C       		.byte	0x9c
 4389 16ca D8160000 		.4byte	0x16d8
 4390 16ce 3D       		.uleb128 0x3d
 4391 16cf 04000000 		.4byte	.LVL42
 4392 16d3 761A0000 		.4byte	0x1a76
 4393 16d7 00       		.byte	0
 4394 16d8 38       		.uleb128 0x38
 4395 16d9 13050000 		.4byte	.LASF280
 4396 16dd 01       		.byte	0x1
 4397 16de 4601     		.2byte	0x146
 4398 16e0 12090000 		.4byte	0x912
 4399 16e4 01       		.byte	0x1
 4400 16e5 0E170000 		.4byte	0x170e
 4401 16e9 42       		.uleb128 0x42
 4402 16ea A4070000 		.4byte	.LASF254
 4403 16ee 01       		.byte	0x1
 4404 16ef 4601     		.2byte	0x146
 4405 16f1 97000000 		.4byte	0x97
 4406 16f5 42       		.uleb128 0x42
 4407 16f6 200B0000 		.4byte	.LASF259
 4408 16fa 01       		.byte	0x1
 4409 16fb 4601     		.2byte	0x146
 4410 16fd 97000000 		.4byte	0x97
 4411 1701 39       		.uleb128 0x39
 4412 1702 49100000 		.4byte	.LASF281
 4413 1706 01       		.byte	0x1
 4414 1707 4E01     		.2byte	0x14e
 4415 1709 0E170000 		.4byte	0x170e
 4416 170d 00       		.byte	0
 4417 170e 13       		.uleb128 0x13
 4418 170f 04       		.byte	0x4
 4419 1710 6D0D0000 		.4byte	0xd6d
ARM GAS  /tmp/cc1oZp4Q.s 			page 103


 4420 1714 38       		.uleb128 0x38
 4421 1715 E7060000 		.4byte	.LASF282
 4422 1719 01       		.byte	0x1
 4423 171a 1201     		.2byte	0x112
 4424 171c 12090000 		.4byte	0x912
 4425 1720 01       		.byte	0x1
 4426 1721 4C170000 		.4byte	0x174c
 4427 1725 42       		.uleb128 0x42
 4428 1726 A4070000 		.4byte	.LASF254
 4429 172a 01       		.byte	0x1
 4430 172b 1201     		.2byte	0x112
 4431 172d 97000000 		.4byte	0x97
 4432 1731 39       		.uleb128 0x39
 4433 1732 9F060000 		.4byte	.LASF255
 4434 1736 01       		.byte	0x1
 4435 1737 1401     		.2byte	0x114
 4436 1739 7C0E0000 		.4byte	0xe7c
 4437 173d 43       		.uleb128 0x43
 4438 173e 39       		.uleb128 0x39
 4439 173f 49100000 		.4byte	.LASF281
 4440 1743 01       		.byte	0x1
 4441 1744 2601     		.2byte	0x126
 4442 1746 0E170000 		.4byte	0x170e
 4443 174a 00       		.byte	0
 4444 174b 00       		.byte	0
 4445 174c 44       		.uleb128 0x44
 4446 174d EB100000 		.4byte	.LASF283
 4447 1751 01       		.byte	0x1
 4448 1752 E5       		.byte	0xe5
 4449 1753 12090000 		.4byte	0x912
 4450 1757 01       		.byte	0x1
 4451 1758 7E170000 		.4byte	0x177e
 4452 175c 45       		.uleb128 0x45
 4453 175d A4070000 		.4byte	.LASF254
 4454 1761 01       		.byte	0x1
 4455 1762 E5       		.byte	0xe5
 4456 1763 97000000 		.4byte	0x97
 4457 1767 45       		.uleb128 0x45
 4458 1768 200B0000 		.4byte	.LASF259
 4459 176c 01       		.byte	0x1
 4460 176d E5       		.byte	0xe5
 4461 176e 97000000 		.4byte	0x97
 4462 1772 46       		.uleb128 0x46
 4463 1773 49080000 		.4byte	.LASF284
 4464 1777 01       		.byte	0x1
 4465 1778 E7       		.byte	0xe7
 4466 1779 700E0000 		.4byte	0xe70
 4467 177d 00       		.byte	0
 4468 177e 44       		.uleb128 0x44
 4469 177f 0A100000 		.4byte	.LASF285
 4470 1783 01       		.byte	0x1
 4471 1784 C1       		.byte	0xc1
 4472 1785 700E0000 		.4byte	0xe70
 4473 1789 01       		.byte	0x1
 4474 178a B0170000 		.4byte	0x17b0
 4475 178e 45       		.uleb128 0x45
 4476 178f CD100000 		.4byte	.LASF221
ARM GAS  /tmp/cc1oZp4Q.s 			page 104


 4477 1793 01       		.byte	0x1
 4478 1794 C2       		.byte	0xc2
 4479 1795 700E0000 		.4byte	0xe70
 4480 1799 45       		.uleb128 0x45
 4481 179a 70010000 		.4byte	.LASF286
 4482 179e 01       		.byte	0x1
 4483 179f C2       		.byte	0xc2
 4484 17a0 97000000 		.4byte	0x97
 4485 17a4 46       		.uleb128 0x46
 4486 17a5 10060000 		.4byte	.LASF287
 4487 17a9 01       		.byte	0x1
 4488 17aa C4       		.byte	0xc4
 4489 17ab 700E0000 		.4byte	0xe70
 4490 17af 00       		.byte	0
 4491 17b0 47       		.uleb128 0x47
 4492 17b1 8E060000 		.4byte	.LASF288
 4493 17b5 01       		.byte	0x1
 4494 17b6 AF       		.byte	0xaf
 4495 17b7 700E0000 		.4byte	0xe70
 4496 17bb 01       		.byte	0x1
 4497 17bc 48       		.uleb128 0x48
 4498 17bd 78010000 		.4byte	.LASF305
 4499 17c1 01       		.byte	0x1
 4500 17c2 A5       		.byte	0xa5
 4501 17c3 980F0000 		.4byte	0xf98
 4502 17c7 00000000 		.4byte	.LFB149
 4503 17cb 0C000000 		.4byte	.LFE149-.LFB149
 4504 17cf 01       		.uleb128 0x1
 4505 17d0 9C       		.byte	0x9c
 4506 17d1 49       		.uleb128 0x49
 4507 17d2 4C170000 		.4byte	0x174c
 4508 17d6 00000000 		.4byte	.LFB177
 4509 17da 58000000 		.4byte	.LFE177-.LFB177
 4510 17de 01       		.uleb128 0x1
 4511 17df 9C       		.byte	0x9c
 4512 17e0 09180000 		.4byte	0x1809
 4513 17e4 34       		.uleb128 0x34
 4514 17e5 5C170000 		.4byte	0x175c
 4515 17e9 E0020000 		.4byte	.LLST0
 4516 17ed 4A       		.uleb128 0x4a
 4517 17ee 67170000 		.4byte	0x1767
 4518 17f2 01       		.uleb128 0x1
 4519 17f3 51       		.byte	0x51
 4520 17f4 35       		.uleb128 0x35
 4521 17f5 72170000 		.4byte	0x1772
 4522 17f9 4B       		.uleb128 0x4b
 4523 17fa B0170000 		.4byte	0x17b0
 4524 17fe 12000000 		.4byte	.LBB56
 4525 1802 04000000 		.4byte	.LBE56-.LBB56
 4526 1806 01       		.byte	0x1
 4527 1807 F6       		.byte	0xf6
 4528 1808 00       		.byte	0
 4529 1809 4C       		.uleb128 0x4c
 4530 180a 14170000 		.4byte	0x1714
 4531 180e 00000000 		.4byte	.LFB153
 4532 1812 80000000 		.4byte	.LFE153-.LFB153
 4533 1816 01       		.uleb128 0x1
ARM GAS  /tmp/cc1oZp4Q.s 			page 105


 4534 1817 9C       		.byte	0x9c
 4535 1818 38190000 		.4byte	0x1938
 4536 181c 34       		.uleb128 0x34
 4537 181d 25170000 		.4byte	0x1725
 4538 1821 3E030000 		.4byte	.LLST1
 4539 1825 35       		.uleb128 0x35
 4540 1826 31170000 		.4byte	0x1731
 4541 182a 28       		.uleb128 0x28
 4542 182b 4C170000 		.4byte	0x174c
 4543 182f 02000000 		.4byte	.LBB71
 4544 1833 00000000 		.4byte	.Ldebug_ranges0+0
 4545 1837 01       		.byte	0x1
 4546 1838 1801     		.2byte	0x118
 4547 183a 72180000 		.4byte	0x1872
 4548 183e 34       		.uleb128 0x34
 4549 183f 67170000 		.4byte	0x1767
 4550 1843 78030000 		.4byte	.LLST2
 4551 1847 34       		.uleb128 0x34
 4552 1848 5C170000 		.4byte	0x175c
 4553 184c 98030000 		.4byte	.LLST3
 4554 1850 2D       		.uleb128 0x2d
 4555 1851 00000000 		.4byte	.Ldebug_ranges0+0
 4556 1855 35       		.uleb128 0x35
 4557 1856 72170000 		.4byte	0x1772
 4558 185a 2A       		.uleb128 0x2a
 4559 185b 16000000 		.4byte	.LVL12
 4560 185f D1170000 		.4byte	0x17d1
 4561 1863 2B       		.uleb128 0x2b
 4562 1864 01       		.uleb128 0x1
 4563 1865 50       		.byte	0x50
 4564 1866 02       		.uleb128 0x2
 4565 1867 76       		.byte	0x76
 4566 1868 00       		.sleb128 0
 4567 1869 2B       		.uleb128 0x2b
 4568 186a 01       		.uleb128 0x1
 4569 186b 51       		.byte	0x51
 4570 186c 02       		.uleb128 0x2
 4571 186d 71       		.byte	0x71
 4572 186e 00       		.sleb128 0
 4573 186f 00       		.byte	0
 4574 1870 00       		.byte	0
 4575 1871 00       		.byte	0
 4576 1872 2D       		.uleb128 0x2d
 4577 1873 18000000 		.4byte	.Ldebug_ranges0+0x18
 4578 1877 34       		.uleb128 0x34
 4579 1878 25170000 		.4byte	0x1725
 4580 187c C4030000 		.4byte	.LLST4
 4581 1880 2D       		.uleb128 0x2d
 4582 1881 18000000 		.4byte	.Ldebug_ranges0+0x18
 4583 1885 2E       		.uleb128 0x2e
 4584 1886 25180000 		.4byte	0x1825
 4585 188a 01       		.uleb128 0x1
 4586 188b 55       		.byte	0x55
 4587 188c 29       		.uleb128 0x29
 4588 188d 4C170000 		.4byte	0x174c
 4589 1891 28000000 		.4byte	.LBB77
 4590 1895 0E000000 		.4byte	.LBE77-.LBB77
ARM GAS  /tmp/cc1oZp4Q.s 			page 106


 4591 1899 01       		.byte	0x1
 4592 189a 2001     		.2byte	0x120
 4593 189c D8180000 		.4byte	0x18d8
 4594 18a0 34       		.uleb128 0x34
 4595 18a1 67170000 		.4byte	0x1767
 4596 18a5 D7030000 		.4byte	.LLST5
 4597 18a9 34       		.uleb128 0x34
 4598 18aa 5C170000 		.4byte	0x175c
 4599 18ae EA030000 		.4byte	.LLST6
 4600 18b2 32       		.uleb128 0x32
 4601 18b3 28000000 		.4byte	.LBB78
 4602 18b7 0E000000 		.4byte	.LBE78-.LBB78
 4603 18bb 35       		.uleb128 0x35
 4604 18bc 72170000 		.4byte	0x1772
 4605 18c0 2A       		.uleb128 0x2a
 4606 18c1 36000000 		.4byte	.LVL17
 4607 18c5 D1170000 		.4byte	0x17d1
 4608 18c9 2B       		.uleb128 0x2b
 4609 18ca 01       		.uleb128 0x1
 4610 18cb 50       		.byte	0x50
 4611 18cc 02       		.uleb128 0x2
 4612 18cd 76       		.byte	0x76
 4613 18ce 00       		.sleb128 0
 4614 18cf 2B       		.uleb128 0x2b
 4615 18d0 01       		.uleb128 0x1
 4616 18d1 51       		.byte	0x51
 4617 18d2 02       		.uleb128 0x2
 4618 18d3 71       		.byte	0x71
 4619 18d4 00       		.sleb128 0
 4620 18d5 00       		.byte	0
 4621 18d6 00       		.byte	0
 4622 18d7 00       		.byte	0
 4623 18d8 2D       		.uleb128 0x2d
 4624 18d9 30000000 		.4byte	.Ldebug_ranges0+0x30
 4625 18dd 31       		.uleb128 0x31
 4626 18de 3E170000 		.4byte	0x173e
 4627 18e2 FD030000 		.4byte	.LLST7
 4628 18e6 29       		.uleb128 0x29
 4629 18e7 7E170000 		.4byte	0x177e
 4630 18eb 40000000 		.4byte	.LBB80
 4631 18ef 24000000 		.4byte	.LBE80-.LBB80
 4632 18f3 01       		.byte	0x1
 4633 18f4 2A01     		.2byte	0x12a
 4634 18f6 2B190000 		.4byte	0x192b
 4635 18fa 34       		.uleb128 0x34
 4636 18fb 99170000 		.4byte	0x1799
 4637 18ff 10040000 		.4byte	.LLST8
 4638 1903 34       		.uleb128 0x34
 4639 1904 8E170000 		.4byte	0x178e
 4640 1908 24040000 		.4byte	.LLST9
 4641 190c 32       		.uleb128 0x32
 4642 190d 40000000 		.4byte	.LBB81
 4643 1911 24000000 		.4byte	.LBE81-.LBB81
 4644 1915 35       		.uleb128 0x35
 4645 1916 A4170000 		.4byte	0x17a4
 4646 191a 4D       		.uleb128 0x4d
 4647 191b B0170000 		.4byte	0x17b0
ARM GAS  /tmp/cc1oZp4Q.s 			page 107


 4648 191f 40000000 		.4byte	.LBB82
 4649 1923 48000000 		.4byte	.Ldebug_ranges0+0x48
 4650 1927 01       		.byte	0x1
 4651 1928 C6       		.byte	0xc6
 4652 1929 00       		.byte	0
 4653 192a 00       		.byte	0
 4654 192b 2C       		.uleb128 0x2c
 4655 192c 72000000 		.4byte	.LVL26
 4656 1930 811A0000 		.4byte	0x1a81
 4657 1934 00       		.byte	0
 4658 1935 00       		.byte	0
 4659 1936 00       		.byte	0
 4660 1937 00       		.byte	0
 4661 1938 4E       		.uleb128 0x4e
 4662 1939 D8160000 		.4byte	0x16d8
 4663 193d 00000000 		.4byte	.LFB154
 4664 1941 6C000000 		.4byte	.LFE154-.LFB154
 4665 1945 01       		.uleb128 0x1
 4666 1946 9C       		.byte	0x9c
 4667 1947 1A1A0000 		.4byte	0x1a1a
 4668 194b 34       		.uleb128 0x34
 4669 194c E9160000 		.4byte	0x16e9
 4670 1950 42040000 		.4byte	.LLST10
 4671 1954 34       		.uleb128 0x34
 4672 1955 F5160000 		.4byte	0x16f5
 4673 1959 7C040000 		.4byte	.LLST11
 4674 195d 35       		.uleb128 0x35
 4675 195e 01170000 		.4byte	0x1701
 4676 1962 28       		.uleb128 0x28
 4677 1963 4C170000 		.4byte	0x174c
 4678 1967 00000000 		.4byte	.LBB101
 4679 196b 68000000 		.4byte	.Ldebug_ranges0+0x68
 4680 196f 01       		.byte	0x1
 4681 1970 4901     		.2byte	0x149
 4682 1972 A4190000 		.4byte	0x19a4
 4683 1976 34       		.uleb128 0x34
 4684 1977 67170000 		.4byte	0x1767
 4685 197b 9D040000 		.4byte	.LLST12
 4686 197f 34       		.uleb128 0x34
 4687 1980 5C170000 		.4byte	0x175c
 4688 1984 B0040000 		.4byte	.LLST13
 4689 1988 2D       		.uleb128 0x2d
 4690 1989 68000000 		.4byte	.Ldebug_ranges0+0x68
 4691 198d 35       		.uleb128 0x35
 4692 198e 72170000 		.4byte	0x1772
 4693 1992 2A       		.uleb128 0x2a
 4694 1993 12000000 		.4byte	.LVL31
 4695 1997 D1170000 		.4byte	0x17d1
 4696 199b 2B       		.uleb128 0x2b
 4697 199c 01       		.uleb128 0x1
 4698 199d 50       		.byte	0x50
 4699 199e 02       		.uleb128 0x2
 4700 199f 76       		.byte	0x76
 4701 19a0 00       		.sleb128 0
 4702 19a1 00       		.byte	0
 4703 19a2 00       		.byte	0
 4704 19a3 00       		.byte	0
ARM GAS  /tmp/cc1oZp4Q.s 			page 108


 4705 19a4 2D       		.uleb128 0x2d
 4706 19a5 80000000 		.4byte	.Ldebug_ranges0+0x80
 4707 19a9 34       		.uleb128 0x34
 4708 19aa F5160000 		.4byte	0x16f5
 4709 19ae EA040000 		.4byte	.LLST14
 4710 19b2 34       		.uleb128 0x34
 4711 19b3 E9160000 		.4byte	0x16e9
 4712 19b7 FD040000 		.4byte	.LLST15
 4713 19bb 2D       		.uleb128 0x2d
 4714 19bc 80000000 		.4byte	.Ldebug_ranges0+0x80
 4715 19c0 31       		.uleb128 0x31
 4716 19c1 5D190000 		.4byte	0x195d
 4717 19c5 1B050000 		.4byte	.LLST16
 4718 19c9 29       		.uleb128 0x29
 4719 19ca 7E170000 		.4byte	0x177e
 4720 19ce 1A000000 		.4byte	.LBB107
 4721 19d2 24000000 		.4byte	.LBE107-.LBB107
 4722 19d6 01       		.byte	0x1
 4723 19d7 5401     		.2byte	0x154
 4724 19d9 0E1A0000 		.4byte	0x1a0e
 4725 19dd 34       		.uleb128 0x34
 4726 19de 99170000 		.4byte	0x1799
 4727 19e2 2E050000 		.4byte	.LLST17
 4728 19e6 34       		.uleb128 0x34
 4729 19e7 8E170000 		.4byte	0x178e
 4730 19eb 42050000 		.4byte	.LLST18
 4731 19ef 32       		.uleb128 0x32
 4732 19f0 1A000000 		.4byte	.LBB108
 4733 19f4 24000000 		.4byte	.LBE108-.LBB108
 4734 19f8 35       		.uleb128 0x35
 4735 19f9 A4170000 		.4byte	0x17a4
 4736 19fd 4D       		.uleb128 0x4d
 4737 19fe B0170000 		.4byte	0x17b0
 4738 1a02 1A000000 		.4byte	.LBB109
 4739 1a06 98000000 		.4byte	.Ldebug_ranges0+0x98
 4740 1a0a 01       		.byte	0x1
 4741 1a0b C6       		.byte	0xc6
 4742 1a0c 00       		.byte	0
 4743 1a0d 00       		.byte	0
 4744 1a0e 2C       		.uleb128 0x2c
 4745 1a0f 56000000 		.4byte	.LVL40
 4746 1a13 8C1A0000 		.4byte	0x1a8c
 4747 1a17 00       		.byte	0
 4748 1a18 00       		.byte	0
 4749 1a19 00       		.byte	0
 4750 1a1a 4F       		.uleb128 0x4f
 4751 1a1b 100D0000 		.4byte	.LASF289
 4752 1a1f 100D0000 		.4byte	.LASF289
 4753 1a23 10       		.byte	0x10
 4754 1a24 DB       		.byte	0xdb
 4755 1a25 50       		.uleb128 0x50
 4756 1a26 F20D0000 		.4byte	.LASF290
 4757 1a2a F20D0000 		.4byte	.LASF290
 4758 1a2e 10       		.byte	0x10
 4759 1a2f 5001     		.2byte	0x150
 4760 1a31 50       		.uleb128 0x50
 4761 1a32 4B040000 		.4byte	.LASF291
ARM GAS  /tmp/cc1oZp4Q.s 			page 109


 4762 1a36 4B040000 		.4byte	.LASF291
 4763 1a3a 10       		.byte	0x10
 4764 1a3b 1001     		.2byte	0x110
 4765 1a3d 50       		.uleb128 0x50
 4766 1a3e 610E0000 		.4byte	.LASF292
 4767 1a42 610E0000 		.4byte	.LASF292
 4768 1a46 10       		.byte	0x10
 4769 1a47 0301     		.2byte	0x103
 4770 1a49 4F       		.uleb128 0x4f
 4771 1a4a FF020000 		.4byte	.LASF293
 4772 1a4e FF020000 		.4byte	.LASF293
 4773 1a52 10       		.byte	0x10
 4774 1a53 C1       		.byte	0xc1
 4775 1a54 50       		.uleb128 0x50
 4776 1a55 4E0C0000 		.4byte	.LASF294
 4777 1a59 4E0C0000 		.4byte	.LASF294
 4778 1a5d 10       		.byte	0x10
 4779 1a5e 1D01     		.2byte	0x11d
 4780 1a60 4F       		.uleb128 0x4f
 4781 1a61 96030000 		.4byte	.LASF295
 4782 1a65 96030000 		.4byte	.LASF295
 4783 1a69 10       		.byte	0x10
 4784 1a6a BA       		.byte	0xba
 4785 1a6b 4F       		.uleb128 0x4f
 4786 1a6c 3A0C0000 		.4byte	.LASF296
 4787 1a70 3A0C0000 		.4byte	.LASF296
 4788 1a74 10       		.byte	0x10
 4789 1a75 9B       		.byte	0x9b
 4790 1a76 4F       		.uleb128 0x4f
 4791 1a77 C0020000 		.4byte	.LASF297
 4792 1a7b C0020000 		.4byte	.LASF297
 4793 1a7f 10       		.byte	0x10
 4794 1a80 96       		.byte	0x96
 4795 1a81 4F       		.uleb128 0x4f
 4796 1a82 26040000 		.4byte	.LASF298
 4797 1a86 26040000 		.4byte	.LASF298
 4798 1a8a 10       		.byte	0x10
 4799 1a8b FA       		.byte	0xfa
 4800 1a8c 4F       		.uleb128 0x4f
 4801 1a8d B9030000 		.4byte	.LASF299
 4802 1a91 B9030000 		.4byte	.LASF299
 4803 1a95 10       		.byte	0x10
 4804 1a96 F2       		.byte	0xf2
 4805 1a97 00       		.byte	0
 4806              		.section	.debug_abbrev,"",%progbits
 4807              	.Ldebug_abbrev0:
 4808 0000 01       		.uleb128 0x1
 4809 0001 11       		.uleb128 0x11
 4810 0002 01       		.byte	0x1
 4811 0003 25       		.uleb128 0x25
 4812 0004 0E       		.uleb128 0xe
 4813 0005 13       		.uleb128 0x13
 4814 0006 0B       		.uleb128 0xb
 4815 0007 03       		.uleb128 0x3
 4816 0008 0E       		.uleb128 0xe
 4817 0009 1B       		.uleb128 0x1b
 4818 000a 0E       		.uleb128 0xe
ARM GAS  /tmp/cc1oZp4Q.s 			page 110


 4819 000b 55       		.uleb128 0x55
 4820 000c 17       		.uleb128 0x17
 4821 000d 11       		.uleb128 0x11
 4822 000e 01       		.uleb128 0x1
 4823 000f 10       		.uleb128 0x10
 4824 0010 17       		.uleb128 0x17
 4825 0011 00       		.byte	0
 4826 0012 00       		.byte	0
 4827 0013 02       		.uleb128 0x2
 4828 0014 24       		.uleb128 0x24
 4829 0015 00       		.byte	0
 4830 0016 0B       		.uleb128 0xb
 4831 0017 0B       		.uleb128 0xb
 4832 0018 3E       		.uleb128 0x3e
 4833 0019 0B       		.uleb128 0xb
 4834 001a 03       		.uleb128 0x3
 4835 001b 08       		.uleb128 0x8
 4836 001c 00       		.byte	0
 4837 001d 00       		.byte	0
 4838 001e 03       		.uleb128 0x3
 4839 001f 24       		.uleb128 0x24
 4840 0020 00       		.byte	0
 4841 0021 0B       		.uleb128 0xb
 4842 0022 0B       		.uleb128 0xb
 4843 0023 3E       		.uleb128 0x3e
 4844 0024 0B       		.uleb128 0xb
 4845 0025 03       		.uleb128 0x3
 4846 0026 0E       		.uleb128 0xe
 4847 0027 00       		.byte	0
 4848 0028 00       		.byte	0
 4849 0029 04       		.uleb128 0x4
 4850 002a 16       		.uleb128 0x16
 4851 002b 00       		.byte	0
 4852 002c 03       		.uleb128 0x3
 4853 002d 0E       		.uleb128 0xe
 4854 002e 3A       		.uleb128 0x3a
 4855 002f 0B       		.uleb128 0xb
 4856 0030 3B       		.uleb128 0x3b
 4857 0031 0B       		.uleb128 0xb
 4858 0032 49       		.uleb128 0x49
 4859 0033 13       		.uleb128 0x13
 4860 0034 00       		.byte	0
 4861 0035 00       		.byte	0
 4862 0036 05       		.uleb128 0x5
 4863 0037 26       		.uleb128 0x26
 4864 0038 00       		.byte	0
 4865 0039 49       		.uleb128 0x49
 4866 003a 13       		.uleb128 0x13
 4867 003b 00       		.byte	0
 4868 003c 00       		.byte	0
 4869 003d 06       		.uleb128 0x6
 4870 003e 35       		.uleb128 0x35
 4871 003f 00       		.byte	0
 4872 0040 49       		.uleb128 0x49
 4873 0041 13       		.uleb128 0x13
 4874 0042 00       		.byte	0
 4875 0043 00       		.byte	0
ARM GAS  /tmp/cc1oZp4Q.s 			page 111


 4876 0044 07       		.uleb128 0x7
 4877 0045 0F       		.uleb128 0xf
 4878 0046 00       		.byte	0
 4879 0047 0B       		.uleb128 0xb
 4880 0048 0B       		.uleb128 0xb
 4881 0049 00       		.byte	0
 4882 004a 00       		.byte	0
 4883 004b 08       		.uleb128 0x8
 4884 004c 34       		.uleb128 0x34
 4885 004d 00       		.byte	0
 4886 004e 03       		.uleb128 0x3
 4887 004f 0E       		.uleb128 0xe
 4888 0050 3A       		.uleb128 0x3a
 4889 0051 0B       		.uleb128 0xb
 4890 0052 3B       		.uleb128 0x3b
 4891 0053 05       		.uleb128 0x5
 4892 0054 49       		.uleb128 0x49
 4893 0055 13       		.uleb128 0x13
 4894 0056 3F       		.uleb128 0x3f
 4895 0057 19       		.uleb128 0x19
 4896 0058 3C       		.uleb128 0x3c
 4897 0059 19       		.uleb128 0x19
 4898 005a 00       		.byte	0
 4899 005b 00       		.byte	0
 4900 005c 09       		.uleb128 0x9
 4901 005d 34       		.uleb128 0x34
 4902 005e 00       		.byte	0
 4903 005f 03       		.uleb128 0x3
 4904 0060 0E       		.uleb128 0xe
 4905 0061 3A       		.uleb128 0x3a
 4906 0062 0B       		.uleb128 0xb
 4907 0063 3B       		.uleb128 0x3b
 4908 0064 0B       		.uleb128 0xb
 4909 0065 49       		.uleb128 0x49
 4910 0066 13       		.uleb128 0x13
 4911 0067 3F       		.uleb128 0x3f
 4912 0068 19       		.uleb128 0x19
 4913 0069 3C       		.uleb128 0x3c
 4914 006a 19       		.uleb128 0x19
 4915 006b 00       		.byte	0
 4916 006c 00       		.byte	0
 4917 006d 0A       		.uleb128 0xa
 4918 006e 16       		.uleb128 0x16
 4919 006f 00       		.byte	0
 4920 0070 03       		.uleb128 0x3
 4921 0071 0E       		.uleb128 0xe
 4922 0072 3A       		.uleb128 0x3a
 4923 0073 0B       		.uleb128 0xb
 4924 0074 3B       		.uleb128 0x3b
 4925 0075 05       		.uleb128 0x5
 4926 0076 49       		.uleb128 0x49
 4927 0077 13       		.uleb128 0x13
 4928 0078 00       		.byte	0
 4929 0079 00       		.byte	0
 4930 007a 0B       		.uleb128 0xb
 4931 007b 17       		.uleb128 0x17
 4932 007c 01       		.byte	0x1
ARM GAS  /tmp/cc1oZp4Q.s 			page 112


 4933 007d 0B       		.uleb128 0xb
 4934 007e 0B       		.uleb128 0xb
 4935 007f 3A       		.uleb128 0x3a
 4936 0080 0B       		.uleb128 0xb
 4937 0081 3B       		.uleb128 0x3b
 4938 0082 0B       		.uleb128 0xb
 4939 0083 01       		.uleb128 0x1
 4940 0084 13       		.uleb128 0x13
 4941 0085 00       		.byte	0
 4942 0086 00       		.byte	0
 4943 0087 0C       		.uleb128 0xc
 4944 0088 0D       		.uleb128 0xd
 4945 0089 00       		.byte	0
 4946 008a 03       		.uleb128 0x3
 4947 008b 0E       		.uleb128 0xe
 4948 008c 3A       		.uleb128 0x3a
 4949 008d 0B       		.uleb128 0xb
 4950 008e 3B       		.uleb128 0x3b
 4951 008f 0B       		.uleb128 0xb
 4952 0090 49       		.uleb128 0x49
 4953 0091 13       		.uleb128 0x13
 4954 0092 00       		.byte	0
 4955 0093 00       		.byte	0
 4956 0094 0D       		.uleb128 0xd
 4957 0095 01       		.uleb128 0x1
 4958 0096 01       		.byte	0x1
 4959 0097 49       		.uleb128 0x49
 4960 0098 13       		.uleb128 0x13
 4961 0099 01       		.uleb128 0x1
 4962 009a 13       		.uleb128 0x13
 4963 009b 00       		.byte	0
 4964 009c 00       		.byte	0
 4965 009d 0E       		.uleb128 0xe
 4966 009e 21       		.uleb128 0x21
 4967 009f 00       		.byte	0
 4968 00a0 49       		.uleb128 0x49
 4969 00a1 13       		.uleb128 0x13
 4970 00a2 2F       		.uleb128 0x2f
 4971 00a3 0B       		.uleb128 0xb
 4972 00a4 00       		.byte	0
 4973 00a5 00       		.byte	0
 4974 00a6 0F       		.uleb128 0xf
 4975 00a7 13       		.uleb128 0x13
 4976 00a8 01       		.byte	0x1
 4977 00a9 0B       		.uleb128 0xb
 4978 00aa 0B       		.uleb128 0xb
 4979 00ab 3A       		.uleb128 0x3a
 4980 00ac 0B       		.uleb128 0xb
 4981 00ad 3B       		.uleb128 0x3b
 4982 00ae 0B       		.uleb128 0xb
 4983 00af 01       		.uleb128 0x1
 4984 00b0 13       		.uleb128 0x13
 4985 00b1 00       		.byte	0
 4986 00b2 00       		.byte	0
 4987 00b3 10       		.uleb128 0x10
 4988 00b4 0D       		.uleb128 0xd
 4989 00b5 00       		.byte	0
ARM GAS  /tmp/cc1oZp4Q.s 			page 113


 4990 00b6 03       		.uleb128 0x3
 4991 00b7 0E       		.uleb128 0xe
 4992 00b8 3A       		.uleb128 0x3a
 4993 00b9 0B       		.uleb128 0xb
 4994 00ba 3B       		.uleb128 0x3b
 4995 00bb 0B       		.uleb128 0xb
 4996 00bc 49       		.uleb128 0x49
 4997 00bd 13       		.uleb128 0x13
 4998 00be 38       		.uleb128 0x38
 4999 00bf 0B       		.uleb128 0xb
 5000 00c0 00       		.byte	0
 5001 00c1 00       		.byte	0
 5002 00c2 11       		.uleb128 0x11
 5003 00c3 13       		.uleb128 0x13
 5004 00c4 01       		.byte	0x1
 5005 00c5 03       		.uleb128 0x3
 5006 00c6 0E       		.uleb128 0xe
 5007 00c7 0B       		.uleb128 0xb
 5008 00c8 0B       		.uleb128 0xb
 5009 00c9 3A       		.uleb128 0x3a
 5010 00ca 0B       		.uleb128 0xb
 5011 00cb 3B       		.uleb128 0x3b
 5012 00cc 0B       		.uleb128 0xb
 5013 00cd 01       		.uleb128 0x1
 5014 00ce 13       		.uleb128 0x13
 5015 00cf 00       		.byte	0
 5016 00d0 00       		.byte	0
 5017 00d1 12       		.uleb128 0x12
 5018 00d2 0D       		.uleb128 0xd
 5019 00d3 00       		.byte	0
 5020 00d4 03       		.uleb128 0x3
 5021 00d5 08       		.uleb128 0x8
 5022 00d6 3A       		.uleb128 0x3a
 5023 00d7 0B       		.uleb128 0xb
 5024 00d8 3B       		.uleb128 0x3b
 5025 00d9 0B       		.uleb128 0xb
 5026 00da 49       		.uleb128 0x49
 5027 00db 13       		.uleb128 0x13
 5028 00dc 38       		.uleb128 0x38
 5029 00dd 0B       		.uleb128 0xb
 5030 00de 00       		.byte	0
 5031 00df 00       		.byte	0
 5032 00e0 13       		.uleb128 0x13
 5033 00e1 0F       		.uleb128 0xf
 5034 00e2 00       		.byte	0
 5035 00e3 0B       		.uleb128 0xb
 5036 00e4 0B       		.uleb128 0xb
 5037 00e5 49       		.uleb128 0x49
 5038 00e6 13       		.uleb128 0x13
 5039 00e7 00       		.byte	0
 5040 00e8 00       		.byte	0
 5041 00e9 14       		.uleb128 0x14
 5042 00ea 13       		.uleb128 0x13
 5043 00eb 01       		.byte	0x1
 5044 00ec 03       		.uleb128 0x3
 5045 00ed 0E       		.uleb128 0xe
 5046 00ee 0B       		.uleb128 0xb
ARM GAS  /tmp/cc1oZp4Q.s 			page 114


 5047 00ef 05       		.uleb128 0x5
 5048 00f0 3A       		.uleb128 0x3a
 5049 00f1 0B       		.uleb128 0xb
 5050 00f2 3B       		.uleb128 0x3b
 5051 00f3 0B       		.uleb128 0xb
 5052 00f4 01       		.uleb128 0x1
 5053 00f5 13       		.uleb128 0x13
 5054 00f6 00       		.byte	0
 5055 00f7 00       		.byte	0
 5056 00f8 15       		.uleb128 0x15
 5057 00f9 0D       		.uleb128 0xd
 5058 00fa 00       		.byte	0
 5059 00fb 03       		.uleb128 0x3
 5060 00fc 0E       		.uleb128 0xe
 5061 00fd 3A       		.uleb128 0x3a
 5062 00fe 0B       		.uleb128 0xb
 5063 00ff 3B       		.uleb128 0x3b
 5064 0100 0B       		.uleb128 0xb
 5065 0101 49       		.uleb128 0x49
 5066 0102 13       		.uleb128 0x13
 5067 0103 38       		.uleb128 0x38
 5068 0104 05       		.uleb128 0x5
 5069 0105 00       		.byte	0
 5070 0106 00       		.byte	0
 5071 0107 16       		.uleb128 0x16
 5072 0108 15       		.uleb128 0x15
 5073 0109 00       		.byte	0
 5074 010a 27       		.uleb128 0x27
 5075 010b 19       		.uleb128 0x19
 5076 010c 00       		.byte	0
 5077 010d 00       		.byte	0
 5078 010e 17       		.uleb128 0x17
 5079 010f 15       		.uleb128 0x15
 5080 0110 01       		.byte	0x1
 5081 0111 27       		.uleb128 0x27
 5082 0112 19       		.uleb128 0x19
 5083 0113 49       		.uleb128 0x49
 5084 0114 13       		.uleb128 0x13
 5085 0115 01       		.uleb128 0x1
 5086 0116 13       		.uleb128 0x13
 5087 0117 00       		.byte	0
 5088 0118 00       		.byte	0
 5089 0119 18       		.uleb128 0x18
 5090 011a 05       		.uleb128 0x5
 5091 011b 00       		.byte	0
 5092 011c 49       		.uleb128 0x49
 5093 011d 13       		.uleb128 0x13
 5094 011e 00       		.byte	0
 5095 011f 00       		.byte	0
 5096 0120 19       		.uleb128 0x19
 5097 0121 13       		.uleb128 0x13
 5098 0122 01       		.byte	0x1
 5099 0123 03       		.uleb128 0x3
 5100 0124 0E       		.uleb128 0xe
 5101 0125 0B       		.uleb128 0xb
 5102 0126 05       		.uleb128 0x5
 5103 0127 3A       		.uleb128 0x3a
ARM GAS  /tmp/cc1oZp4Q.s 			page 115


 5104 0128 0B       		.uleb128 0xb
 5105 0129 3B       		.uleb128 0x3b
 5106 012a 05       		.uleb128 0x5
 5107 012b 01       		.uleb128 0x1
 5108 012c 13       		.uleb128 0x13
 5109 012d 00       		.byte	0
 5110 012e 00       		.byte	0
 5111 012f 1A       		.uleb128 0x1a
 5112 0130 0D       		.uleb128 0xd
 5113 0131 00       		.byte	0
 5114 0132 03       		.uleb128 0x3
 5115 0133 0E       		.uleb128 0xe
 5116 0134 3A       		.uleb128 0x3a
 5117 0135 0B       		.uleb128 0xb
 5118 0136 3B       		.uleb128 0x3b
 5119 0137 05       		.uleb128 0x5
 5120 0138 49       		.uleb128 0x49
 5121 0139 13       		.uleb128 0x13
 5122 013a 38       		.uleb128 0x38
 5123 013b 0B       		.uleb128 0xb
 5124 013c 00       		.byte	0
 5125 013d 00       		.byte	0
 5126 013e 1B       		.uleb128 0x1b
 5127 013f 0D       		.uleb128 0xd
 5128 0140 00       		.byte	0
 5129 0141 03       		.uleb128 0x3
 5130 0142 0E       		.uleb128 0xe
 5131 0143 3A       		.uleb128 0x3a
 5132 0144 0B       		.uleb128 0xb
 5133 0145 3B       		.uleb128 0x3b
 5134 0146 05       		.uleb128 0x5
 5135 0147 49       		.uleb128 0x49
 5136 0148 13       		.uleb128 0x13
 5137 0149 38       		.uleb128 0x38
 5138 014a 05       		.uleb128 0x5
 5139 014b 00       		.byte	0
 5140 014c 00       		.byte	0
 5141 014d 1C       		.uleb128 0x1c
 5142 014e 13       		.uleb128 0x13
 5143 014f 01       		.byte	0x1
 5144 0150 03       		.uleb128 0x3
 5145 0151 0E       		.uleb128 0xe
 5146 0152 0B       		.uleb128 0xb
 5147 0153 0B       		.uleb128 0xb
 5148 0154 3A       		.uleb128 0x3a
 5149 0155 0B       		.uleb128 0xb
 5150 0156 3B       		.uleb128 0x3b
 5151 0157 05       		.uleb128 0x5
 5152 0158 01       		.uleb128 0x1
 5153 0159 13       		.uleb128 0x13
 5154 015a 00       		.byte	0
 5155 015b 00       		.byte	0
 5156 015c 1D       		.uleb128 0x1d
 5157 015d 13       		.uleb128 0x13
 5158 015e 01       		.byte	0x1
 5159 015f 0B       		.uleb128 0xb
 5160 0160 0B       		.uleb128 0xb
ARM GAS  /tmp/cc1oZp4Q.s 			page 116


 5161 0161 3A       		.uleb128 0x3a
 5162 0162 0B       		.uleb128 0xb
 5163 0163 3B       		.uleb128 0x3b
 5164 0164 05       		.uleb128 0x5
 5165 0165 01       		.uleb128 0x1
 5166 0166 13       		.uleb128 0x13
 5167 0167 00       		.byte	0
 5168 0168 00       		.byte	0
 5169 0169 1E       		.uleb128 0x1e
 5170 016a 17       		.uleb128 0x17
 5171 016b 01       		.byte	0x1
 5172 016c 0B       		.uleb128 0xb
 5173 016d 0B       		.uleb128 0xb
 5174 016e 3A       		.uleb128 0x3a
 5175 016f 0B       		.uleb128 0xb
 5176 0170 3B       		.uleb128 0x3b
 5177 0171 05       		.uleb128 0x5
 5178 0172 01       		.uleb128 0x1
 5179 0173 13       		.uleb128 0x13
 5180 0174 00       		.byte	0
 5181 0175 00       		.byte	0
 5182 0176 1F       		.uleb128 0x1f
 5183 0177 0D       		.uleb128 0xd
 5184 0178 00       		.byte	0
 5185 0179 03       		.uleb128 0x3
 5186 017a 0E       		.uleb128 0xe
 5187 017b 3A       		.uleb128 0x3a
 5188 017c 0B       		.uleb128 0xb
 5189 017d 3B       		.uleb128 0x3b
 5190 017e 05       		.uleb128 0x5
 5191 017f 49       		.uleb128 0x49
 5192 0180 13       		.uleb128 0x13
 5193 0181 00       		.byte	0
 5194 0182 00       		.byte	0
 5195 0183 20       		.uleb128 0x20
 5196 0184 15       		.uleb128 0x15
 5197 0185 01       		.byte	0x1
 5198 0186 27       		.uleb128 0x27
 5199 0187 19       		.uleb128 0x19
 5200 0188 01       		.uleb128 0x1
 5201 0189 13       		.uleb128 0x13
 5202 018a 00       		.byte	0
 5203 018b 00       		.byte	0
 5204 018c 21       		.uleb128 0x21
 5205 018d 34       		.uleb128 0x34
 5206 018e 00       		.byte	0
 5207 018f 03       		.uleb128 0x3
 5208 0190 0E       		.uleb128 0xe
 5209 0191 3A       		.uleb128 0x3a
 5210 0192 0B       		.uleb128 0xb
 5211 0193 3B       		.uleb128 0x3b
 5212 0194 0B       		.uleb128 0xb
 5213 0195 49       		.uleb128 0x49
 5214 0196 13       		.uleb128 0x13
 5215 0197 02       		.uleb128 0x2
 5216 0198 18       		.uleb128 0x18
 5217 0199 00       		.byte	0
ARM GAS  /tmp/cc1oZp4Q.s 			page 117


 5218 019a 00       		.byte	0
 5219 019b 22       		.uleb128 0x22
 5220 019c 04       		.uleb128 0x4
 5221 019d 01       		.byte	0x1
 5222 019e 03       		.uleb128 0x3
 5223 019f 0E       		.uleb128 0xe
 5224 01a0 0B       		.uleb128 0xb
 5225 01a1 0B       		.uleb128 0xb
 5226 01a2 49       		.uleb128 0x49
 5227 01a3 13       		.uleb128 0x13
 5228 01a4 3A       		.uleb128 0x3a
 5229 01a5 0B       		.uleb128 0xb
 5230 01a6 3B       		.uleb128 0x3b
 5231 01a7 0B       		.uleb128 0xb
 5232 01a8 01       		.uleb128 0x1
 5233 01a9 13       		.uleb128 0x13
 5234 01aa 00       		.byte	0
 5235 01ab 00       		.byte	0
 5236 01ac 23       		.uleb128 0x23
 5237 01ad 28       		.uleb128 0x28
 5238 01ae 00       		.byte	0
 5239 01af 03       		.uleb128 0x3
 5240 01b0 0E       		.uleb128 0xe
 5241 01b1 1C       		.uleb128 0x1c
 5242 01b2 0B       		.uleb128 0xb
 5243 01b3 00       		.byte	0
 5244 01b4 00       		.byte	0
 5245 01b5 24       		.uleb128 0x24
 5246 01b6 04       		.uleb128 0x4
 5247 01b7 01       		.byte	0x1
 5248 01b8 03       		.uleb128 0x3
 5249 01b9 0E       		.uleb128 0xe
 5250 01ba 0B       		.uleb128 0xb
 5251 01bb 0B       		.uleb128 0xb
 5252 01bc 49       		.uleb128 0x49
 5253 01bd 13       		.uleb128 0x13
 5254 01be 3A       		.uleb128 0x3a
 5255 01bf 0B       		.uleb128 0xb
 5256 01c0 3B       		.uleb128 0x3b
 5257 01c1 05       		.uleb128 0x5
 5258 01c2 01       		.uleb128 0x1
 5259 01c3 13       		.uleb128 0x13
 5260 01c4 00       		.byte	0
 5261 01c5 00       		.byte	0
 5262 01c6 25       		.uleb128 0x25
 5263 01c7 28       		.uleb128 0x28
 5264 01c8 00       		.byte	0
 5265 01c9 03       		.uleb128 0x3
 5266 01ca 0E       		.uleb128 0xe
 5267 01cb 1C       		.uleb128 0x1c
 5268 01cc 05       		.uleb128 0x5
 5269 01cd 00       		.byte	0
 5270 01ce 00       		.byte	0
 5271 01cf 26       		.uleb128 0x26
 5272 01d0 15       		.uleb128 0x15
 5273 01d1 00       		.byte	0
 5274 01d2 27       		.uleb128 0x27
ARM GAS  /tmp/cc1oZp4Q.s 			page 118


 5275 01d3 19       		.uleb128 0x19
 5276 01d4 49       		.uleb128 0x49
 5277 01d5 13       		.uleb128 0x13
 5278 01d6 00       		.byte	0
 5279 01d7 00       		.byte	0
 5280 01d8 27       		.uleb128 0x27
 5281 01d9 2E       		.uleb128 0x2e
 5282 01da 01       		.byte	0x1
 5283 01db 3F       		.uleb128 0x3f
 5284 01dc 19       		.uleb128 0x19
 5285 01dd 03       		.uleb128 0x3
 5286 01de 0E       		.uleb128 0xe
 5287 01df 3A       		.uleb128 0x3a
 5288 01e0 0B       		.uleb128 0xb
 5289 01e1 3B       		.uleb128 0x3b
 5290 01e2 05       		.uleb128 0x5
 5291 01e3 27       		.uleb128 0x27
 5292 01e4 19       		.uleb128 0x19
 5293 01e5 49       		.uleb128 0x49
 5294 01e6 13       		.uleb128 0x13
 5295 01e7 11       		.uleb128 0x11
 5296 01e8 01       		.uleb128 0x1
 5297 01e9 12       		.uleb128 0x12
 5298 01ea 06       		.uleb128 0x6
 5299 01eb 40       		.uleb128 0x40
 5300 01ec 18       		.uleb128 0x18
 5301 01ed 9642     		.uleb128 0x2116
 5302 01ef 19       		.uleb128 0x19
 5303 01f0 01       		.uleb128 0x1
 5304 01f1 13       		.uleb128 0x13
 5305 01f2 00       		.byte	0
 5306 01f3 00       		.byte	0
 5307 01f4 28       		.uleb128 0x28
 5308 01f5 1D       		.uleb128 0x1d
 5309 01f6 01       		.byte	0x1
 5310 01f7 31       		.uleb128 0x31
 5311 01f8 13       		.uleb128 0x13
 5312 01f9 52       		.uleb128 0x52
 5313 01fa 01       		.uleb128 0x1
 5314 01fb 55       		.uleb128 0x55
 5315 01fc 17       		.uleb128 0x17
 5316 01fd 58       		.uleb128 0x58
 5317 01fe 0B       		.uleb128 0xb
 5318 01ff 59       		.uleb128 0x59
 5319 0200 05       		.uleb128 0x5
 5320 0201 01       		.uleb128 0x1
 5321 0202 13       		.uleb128 0x13
 5322 0203 00       		.byte	0
 5323 0204 00       		.byte	0
 5324 0205 29       		.uleb128 0x29
 5325 0206 1D       		.uleb128 0x1d
 5326 0207 01       		.byte	0x1
 5327 0208 31       		.uleb128 0x31
 5328 0209 13       		.uleb128 0x13
 5329 020a 11       		.uleb128 0x11
 5330 020b 01       		.uleb128 0x1
 5331 020c 12       		.uleb128 0x12
ARM GAS  /tmp/cc1oZp4Q.s 			page 119


 5332 020d 06       		.uleb128 0x6
 5333 020e 58       		.uleb128 0x58
 5334 020f 0B       		.uleb128 0xb
 5335 0210 59       		.uleb128 0x59
 5336 0211 05       		.uleb128 0x5
 5337 0212 01       		.uleb128 0x1
 5338 0213 13       		.uleb128 0x13
 5339 0214 00       		.byte	0
 5340 0215 00       		.byte	0
 5341 0216 2A       		.uleb128 0x2a
 5342 0217 898201   		.uleb128 0x4109
 5343 021a 01       		.byte	0x1
 5344 021b 11       		.uleb128 0x11
 5345 021c 01       		.uleb128 0x1
 5346 021d 31       		.uleb128 0x31
 5347 021e 13       		.uleb128 0x13
 5348 021f 00       		.byte	0
 5349 0220 00       		.byte	0
 5350 0221 2B       		.uleb128 0x2b
 5351 0222 8A8201   		.uleb128 0x410a
 5352 0225 00       		.byte	0
 5353 0226 02       		.uleb128 0x2
 5354 0227 18       		.uleb128 0x18
 5355 0228 9142     		.uleb128 0x2111
 5356 022a 18       		.uleb128 0x18
 5357 022b 00       		.byte	0
 5358 022c 00       		.byte	0
 5359 022d 2C       		.uleb128 0x2c
 5360 022e 898201   		.uleb128 0x4109
 5361 0231 00       		.byte	0
 5362 0232 11       		.uleb128 0x11
 5363 0233 01       		.uleb128 0x1
 5364 0234 31       		.uleb128 0x31
 5365 0235 13       		.uleb128 0x13
 5366 0236 00       		.byte	0
 5367 0237 00       		.byte	0
 5368 0238 2D       		.uleb128 0x2d
 5369 0239 0B       		.uleb128 0xb
 5370 023a 01       		.byte	0x1
 5371 023b 55       		.uleb128 0x55
 5372 023c 17       		.uleb128 0x17
 5373 023d 00       		.byte	0
 5374 023e 00       		.byte	0
 5375 023f 2E       		.uleb128 0x2e
 5376 0240 34       		.uleb128 0x34
 5377 0241 00       		.byte	0
 5378 0242 31       		.uleb128 0x31
 5379 0243 13       		.uleb128 0x13
 5380 0244 02       		.uleb128 0x2
 5381 0245 18       		.uleb128 0x18
 5382 0246 00       		.byte	0
 5383 0247 00       		.byte	0
 5384 0248 2F       		.uleb128 0x2f
 5385 0249 1D       		.uleb128 0x1d
 5386 024a 00       		.byte	0
 5387 024b 31       		.uleb128 0x31
 5388 024c 13       		.uleb128 0x13
ARM GAS  /tmp/cc1oZp4Q.s 			page 120


 5389 024d 52       		.uleb128 0x52
 5390 024e 01       		.uleb128 0x1
 5391 024f 55       		.uleb128 0x55
 5392 0250 17       		.uleb128 0x17
 5393 0251 58       		.uleb128 0x58
 5394 0252 0B       		.uleb128 0xb
 5395 0253 59       		.uleb128 0x59
 5396 0254 05       		.uleb128 0x5
 5397 0255 00       		.byte	0
 5398 0256 00       		.byte	0
 5399 0257 30       		.uleb128 0x30
 5400 0258 1D       		.uleb128 0x1d
 5401 0259 00       		.byte	0
 5402 025a 31       		.uleb128 0x31
 5403 025b 13       		.uleb128 0x13
 5404 025c 11       		.uleb128 0x11
 5405 025d 01       		.uleb128 0x1
 5406 025e 12       		.uleb128 0x12
 5407 025f 06       		.uleb128 0x6
 5408 0260 58       		.uleb128 0x58
 5409 0261 0B       		.uleb128 0xb
 5410 0262 59       		.uleb128 0x59
 5411 0263 05       		.uleb128 0x5
 5412 0264 00       		.byte	0
 5413 0265 00       		.byte	0
 5414 0266 31       		.uleb128 0x31
 5415 0267 34       		.uleb128 0x34
 5416 0268 00       		.byte	0
 5417 0269 31       		.uleb128 0x31
 5418 026a 13       		.uleb128 0x13
 5419 026b 02       		.uleb128 0x2
 5420 026c 17       		.uleb128 0x17
 5421 026d 00       		.byte	0
 5422 026e 00       		.byte	0
 5423 026f 32       		.uleb128 0x32
 5424 0270 0B       		.uleb128 0xb
 5425 0271 01       		.byte	0x1
 5426 0272 11       		.uleb128 0x11
 5427 0273 01       		.uleb128 0x1
 5428 0274 12       		.uleb128 0x12
 5429 0275 06       		.uleb128 0x6
 5430 0276 00       		.byte	0
 5431 0277 00       		.byte	0
 5432 0278 33       		.uleb128 0x33
 5433 0279 898201   		.uleb128 0x4109
 5434 027c 01       		.byte	0x1
 5435 027d 11       		.uleb128 0x11
 5436 027e 01       		.uleb128 0x1
 5437 027f 31       		.uleb128 0x31
 5438 0280 13       		.uleb128 0x13
 5439 0281 01       		.uleb128 0x1
 5440 0282 13       		.uleb128 0x13
 5441 0283 00       		.byte	0
 5442 0284 00       		.byte	0
 5443 0285 34       		.uleb128 0x34
 5444 0286 05       		.uleb128 0x5
 5445 0287 00       		.byte	0
ARM GAS  /tmp/cc1oZp4Q.s 			page 121


 5446 0288 31       		.uleb128 0x31
 5447 0289 13       		.uleb128 0x13
 5448 028a 02       		.uleb128 0x2
 5449 028b 17       		.uleb128 0x17
 5450 028c 00       		.byte	0
 5451 028d 00       		.byte	0
 5452 028e 35       		.uleb128 0x35
 5453 028f 34       		.uleb128 0x34
 5454 0290 00       		.byte	0
 5455 0291 31       		.uleb128 0x31
 5456 0292 13       		.uleb128 0x13
 5457 0293 00       		.byte	0
 5458 0294 00       		.byte	0
 5459 0295 36       		.uleb128 0x36
 5460 0296 1D       		.uleb128 0x1d
 5461 0297 01       		.byte	0x1
 5462 0298 31       		.uleb128 0x31
 5463 0299 13       		.uleb128 0x13
 5464 029a 52       		.uleb128 0x52
 5465 029b 01       		.uleb128 0x1
 5466 029c 55       		.uleb128 0x55
 5467 029d 17       		.uleb128 0x17
 5468 029e 58       		.uleb128 0x58
 5469 029f 0B       		.uleb128 0xb
 5470 02a0 59       		.uleb128 0x59
 5471 02a1 05       		.uleb128 0x5
 5472 02a2 00       		.byte	0
 5473 02a3 00       		.byte	0
 5474 02a4 37       		.uleb128 0x37
 5475 02a5 1D       		.uleb128 0x1d
 5476 02a6 01       		.byte	0x1
 5477 02a7 31       		.uleb128 0x31
 5478 02a8 13       		.uleb128 0x13
 5479 02a9 11       		.uleb128 0x11
 5480 02aa 01       		.uleb128 0x1
 5481 02ab 12       		.uleb128 0x12
 5482 02ac 06       		.uleb128 0x6
 5483 02ad 58       		.uleb128 0x58
 5484 02ae 0B       		.uleb128 0xb
 5485 02af 59       		.uleb128 0x59
 5486 02b0 05       		.uleb128 0x5
 5487 02b1 00       		.byte	0
 5488 02b2 00       		.byte	0
 5489 02b3 38       		.uleb128 0x38
 5490 02b4 2E       		.uleb128 0x2e
 5491 02b5 01       		.byte	0x1
 5492 02b6 03       		.uleb128 0x3
 5493 02b7 0E       		.uleb128 0xe
 5494 02b8 3A       		.uleb128 0x3a
 5495 02b9 0B       		.uleb128 0xb
 5496 02ba 3B       		.uleb128 0x3b
 5497 02bb 05       		.uleb128 0x5
 5498 02bc 27       		.uleb128 0x27
 5499 02bd 19       		.uleb128 0x19
 5500 02be 49       		.uleb128 0x49
 5501 02bf 13       		.uleb128 0x13
 5502 02c0 20       		.uleb128 0x20
ARM GAS  /tmp/cc1oZp4Q.s 			page 122


 5503 02c1 0B       		.uleb128 0xb
 5504 02c2 01       		.uleb128 0x1
 5505 02c3 13       		.uleb128 0x13
 5506 02c4 00       		.byte	0
 5507 02c5 00       		.byte	0
 5508 02c6 39       		.uleb128 0x39
 5509 02c7 34       		.uleb128 0x34
 5510 02c8 00       		.byte	0
 5511 02c9 03       		.uleb128 0x3
 5512 02ca 0E       		.uleb128 0xe
 5513 02cb 3A       		.uleb128 0x3a
 5514 02cc 0B       		.uleb128 0xb
 5515 02cd 3B       		.uleb128 0x3b
 5516 02ce 05       		.uleb128 0x5
 5517 02cf 49       		.uleb128 0x49
 5518 02d0 13       		.uleb128 0x13
 5519 02d1 00       		.byte	0
 5520 02d2 00       		.byte	0
 5521 02d3 3A       		.uleb128 0x3a
 5522 02d4 2E       		.uleb128 0x2e
 5523 02d5 00       		.byte	0
 5524 02d6 03       		.uleb128 0x3
 5525 02d7 0E       		.uleb128 0xe
 5526 02d8 3A       		.uleb128 0x3a
 5527 02d9 0B       		.uleb128 0xb
 5528 02da 3B       		.uleb128 0x3b
 5529 02db 05       		.uleb128 0x5
 5530 02dc 27       		.uleb128 0x27
 5531 02dd 19       		.uleb128 0x19
 5532 02de 49       		.uleb128 0x49
 5533 02df 13       		.uleb128 0x13
 5534 02e0 20       		.uleb128 0x20
 5535 02e1 0B       		.uleb128 0xb
 5536 02e2 00       		.byte	0
 5537 02e3 00       		.byte	0
 5538 02e4 3B       		.uleb128 0x3b
 5539 02e5 34       		.uleb128 0x34
 5540 02e6 00       		.byte	0
 5541 02e7 03       		.uleb128 0x3
 5542 02e8 08       		.uleb128 0x8
 5543 02e9 3A       		.uleb128 0x3a
 5544 02ea 0B       		.uleb128 0xb
 5545 02eb 3B       		.uleb128 0x3b
 5546 02ec 05       		.uleb128 0x5
 5547 02ed 49       		.uleb128 0x49
 5548 02ee 13       		.uleb128 0x13
 5549 02ef 00       		.byte	0
 5550 02f0 00       		.byte	0
 5551 02f1 3C       		.uleb128 0x3c
 5552 02f2 2E       		.uleb128 0x2e
 5553 02f3 01       		.byte	0x1
 5554 02f4 03       		.uleb128 0x3
 5555 02f5 0E       		.uleb128 0xe
 5556 02f6 3A       		.uleb128 0x3a
 5557 02f7 0B       		.uleb128 0xb
 5558 02f8 3B       		.uleb128 0x3b
 5559 02f9 05       		.uleb128 0x5
ARM GAS  /tmp/cc1oZp4Q.s 			page 123


 5560 02fa 27       		.uleb128 0x27
 5561 02fb 19       		.uleb128 0x19
 5562 02fc 11       		.uleb128 0x11
 5563 02fd 01       		.uleb128 0x1
 5564 02fe 12       		.uleb128 0x12
 5565 02ff 06       		.uleb128 0x6
 5566 0300 40       		.uleb128 0x40
 5567 0301 18       		.uleb128 0x18
 5568 0302 9742     		.uleb128 0x2117
 5569 0304 19       		.uleb128 0x19
 5570 0305 01       		.uleb128 0x1
 5571 0306 13       		.uleb128 0x13
 5572 0307 00       		.byte	0
 5573 0308 00       		.byte	0
 5574 0309 3D       		.uleb128 0x3d
 5575 030a 898201   		.uleb128 0x4109
 5576 030d 00       		.byte	0
 5577 030e 11       		.uleb128 0x11
 5578 030f 01       		.uleb128 0x1
 5579 0310 9542     		.uleb128 0x2115
 5580 0312 19       		.uleb128 0x19
 5581 0313 31       		.uleb128 0x31
 5582 0314 13       		.uleb128 0x13
 5583 0315 00       		.byte	0
 5584 0316 00       		.byte	0
 5585 0317 3E       		.uleb128 0x3e
 5586 0318 34       		.uleb128 0x34
 5587 0319 00       		.byte	0
 5588 031a 03       		.uleb128 0x3
 5589 031b 0E       		.uleb128 0xe
 5590 031c 3A       		.uleb128 0x3a
 5591 031d 0B       		.uleb128 0xb
 5592 031e 3B       		.uleb128 0x3b
 5593 031f 05       		.uleb128 0x5
 5594 0320 49       		.uleb128 0x49
 5595 0321 13       		.uleb128 0x13
 5596 0322 02       		.uleb128 0x2
 5597 0323 18       		.uleb128 0x18
 5598 0324 00       		.byte	0
 5599 0325 00       		.byte	0
 5600 0326 3F       		.uleb128 0x3f
 5601 0327 2E       		.uleb128 0x2e
 5602 0328 01       		.byte	0x1
 5603 0329 3F       		.uleb128 0x3f
 5604 032a 19       		.uleb128 0x19
 5605 032b 03       		.uleb128 0x3
 5606 032c 0E       		.uleb128 0xe
 5607 032d 3A       		.uleb128 0x3a
 5608 032e 0B       		.uleb128 0xb
 5609 032f 3B       		.uleb128 0x3b
 5610 0330 05       		.uleb128 0x5
 5611 0331 27       		.uleb128 0x27
 5612 0332 19       		.uleb128 0x19
 5613 0333 11       		.uleb128 0x11
 5614 0334 01       		.uleb128 0x1
 5615 0335 12       		.uleb128 0x12
 5616 0336 06       		.uleb128 0x6
ARM GAS  /tmp/cc1oZp4Q.s 			page 124


 5617 0337 40       		.uleb128 0x40
 5618 0338 18       		.uleb128 0x18
 5619 0339 9642     		.uleb128 0x2116
 5620 033b 19       		.uleb128 0x19
 5621 033c 01       		.uleb128 0x1
 5622 033d 13       		.uleb128 0x13
 5623 033e 00       		.byte	0
 5624 033f 00       		.byte	0
 5625 0340 40       		.uleb128 0x40
 5626 0341 34       		.uleb128 0x34
 5627 0342 00       		.byte	0
 5628 0343 03       		.uleb128 0x3
 5629 0344 0E       		.uleb128 0xe
 5630 0345 3A       		.uleb128 0x3a
 5631 0346 0B       		.uleb128 0xb
 5632 0347 3B       		.uleb128 0x3b
 5633 0348 05       		.uleb128 0x5
 5634 0349 49       		.uleb128 0x49
 5635 034a 13       		.uleb128 0x13
 5636 034b 02       		.uleb128 0x2
 5637 034c 17       		.uleb128 0x17
 5638 034d 00       		.byte	0
 5639 034e 00       		.byte	0
 5640 034f 41       		.uleb128 0x41
 5641 0350 2E       		.uleb128 0x2e
 5642 0351 01       		.byte	0x1
 5643 0352 3F       		.uleb128 0x3f
 5644 0353 19       		.uleb128 0x19
 5645 0354 03       		.uleb128 0x3
 5646 0355 0E       		.uleb128 0xe
 5647 0356 3A       		.uleb128 0x3a
 5648 0357 0B       		.uleb128 0xb
 5649 0358 3B       		.uleb128 0x3b
 5650 0359 05       		.uleb128 0x5
 5651 035a 27       		.uleb128 0x27
 5652 035b 19       		.uleb128 0x19
 5653 035c 11       		.uleb128 0x11
 5654 035d 01       		.uleb128 0x1
 5655 035e 12       		.uleb128 0x12
 5656 035f 06       		.uleb128 0x6
 5657 0360 40       		.uleb128 0x40
 5658 0361 18       		.uleb128 0x18
 5659 0362 9742     		.uleb128 0x2117
 5660 0364 19       		.uleb128 0x19
 5661 0365 01       		.uleb128 0x1
 5662 0366 13       		.uleb128 0x13
 5663 0367 00       		.byte	0
 5664 0368 00       		.byte	0
 5665 0369 42       		.uleb128 0x42
 5666 036a 05       		.uleb128 0x5
 5667 036b 00       		.byte	0
 5668 036c 03       		.uleb128 0x3
 5669 036d 0E       		.uleb128 0xe
 5670 036e 3A       		.uleb128 0x3a
 5671 036f 0B       		.uleb128 0xb
 5672 0370 3B       		.uleb128 0x3b
 5673 0371 05       		.uleb128 0x5
ARM GAS  /tmp/cc1oZp4Q.s 			page 125


 5674 0372 49       		.uleb128 0x49
 5675 0373 13       		.uleb128 0x13
 5676 0374 00       		.byte	0
 5677 0375 00       		.byte	0
 5678 0376 43       		.uleb128 0x43
 5679 0377 0B       		.uleb128 0xb
 5680 0378 01       		.byte	0x1
 5681 0379 00       		.byte	0
 5682 037a 00       		.byte	0
 5683 037b 44       		.uleb128 0x44
 5684 037c 2E       		.uleb128 0x2e
 5685 037d 01       		.byte	0x1
 5686 037e 03       		.uleb128 0x3
 5687 037f 0E       		.uleb128 0xe
 5688 0380 3A       		.uleb128 0x3a
 5689 0381 0B       		.uleb128 0xb
 5690 0382 3B       		.uleb128 0x3b
 5691 0383 0B       		.uleb128 0xb
 5692 0384 27       		.uleb128 0x27
 5693 0385 19       		.uleb128 0x19
 5694 0386 49       		.uleb128 0x49
 5695 0387 13       		.uleb128 0x13
 5696 0388 20       		.uleb128 0x20
 5697 0389 0B       		.uleb128 0xb
 5698 038a 01       		.uleb128 0x1
 5699 038b 13       		.uleb128 0x13
 5700 038c 00       		.byte	0
 5701 038d 00       		.byte	0
 5702 038e 45       		.uleb128 0x45
 5703 038f 05       		.uleb128 0x5
 5704 0390 00       		.byte	0
 5705 0391 03       		.uleb128 0x3
 5706 0392 0E       		.uleb128 0xe
 5707 0393 3A       		.uleb128 0x3a
 5708 0394 0B       		.uleb128 0xb
 5709 0395 3B       		.uleb128 0x3b
 5710 0396 0B       		.uleb128 0xb
 5711 0397 49       		.uleb128 0x49
 5712 0398 13       		.uleb128 0x13
 5713 0399 00       		.byte	0
 5714 039a 00       		.byte	0
 5715 039b 46       		.uleb128 0x46
 5716 039c 34       		.uleb128 0x34
 5717 039d 00       		.byte	0
 5718 039e 03       		.uleb128 0x3
 5719 039f 0E       		.uleb128 0xe
 5720 03a0 3A       		.uleb128 0x3a
 5721 03a1 0B       		.uleb128 0xb
 5722 03a2 3B       		.uleb128 0x3b
 5723 03a3 0B       		.uleb128 0xb
 5724 03a4 49       		.uleb128 0x49
 5725 03a5 13       		.uleb128 0x13
 5726 03a6 00       		.byte	0
 5727 03a7 00       		.byte	0
 5728 03a8 47       		.uleb128 0x47
 5729 03a9 2E       		.uleb128 0x2e
 5730 03aa 00       		.byte	0
ARM GAS  /tmp/cc1oZp4Q.s 			page 126


 5731 03ab 03       		.uleb128 0x3
 5732 03ac 0E       		.uleb128 0xe
 5733 03ad 3A       		.uleb128 0x3a
 5734 03ae 0B       		.uleb128 0xb
 5735 03af 3B       		.uleb128 0x3b
 5736 03b0 0B       		.uleb128 0xb
 5737 03b1 27       		.uleb128 0x27
 5738 03b2 19       		.uleb128 0x19
 5739 03b3 49       		.uleb128 0x49
 5740 03b4 13       		.uleb128 0x13
 5741 03b5 20       		.uleb128 0x20
 5742 03b6 0B       		.uleb128 0xb
 5743 03b7 00       		.byte	0
 5744 03b8 00       		.byte	0
 5745 03b9 48       		.uleb128 0x48
 5746 03ba 2E       		.uleb128 0x2e
 5747 03bb 00       		.byte	0
 5748 03bc 3F       		.uleb128 0x3f
 5749 03bd 19       		.uleb128 0x19
 5750 03be 03       		.uleb128 0x3
 5751 03bf 0E       		.uleb128 0xe
 5752 03c0 3A       		.uleb128 0x3a
 5753 03c1 0B       		.uleb128 0xb
 5754 03c2 3B       		.uleb128 0x3b
 5755 03c3 0B       		.uleb128 0xb
 5756 03c4 27       		.uleb128 0x27
 5757 03c5 19       		.uleb128 0x19
 5758 03c6 49       		.uleb128 0x49
 5759 03c7 13       		.uleb128 0x13
 5760 03c8 11       		.uleb128 0x11
 5761 03c9 01       		.uleb128 0x1
 5762 03ca 12       		.uleb128 0x12
 5763 03cb 06       		.uleb128 0x6
 5764 03cc 40       		.uleb128 0x40
 5765 03cd 18       		.uleb128 0x18
 5766 03ce 9742     		.uleb128 0x2117
 5767 03d0 19       		.uleb128 0x19
 5768 03d1 00       		.byte	0
 5769 03d2 00       		.byte	0
 5770 03d3 49       		.uleb128 0x49
 5771 03d4 2E       		.uleb128 0x2e
 5772 03d5 01       		.byte	0x1
 5773 03d6 31       		.uleb128 0x31
 5774 03d7 13       		.uleb128 0x13
 5775 03d8 11       		.uleb128 0x11
 5776 03d9 01       		.uleb128 0x1
 5777 03da 12       		.uleb128 0x12
 5778 03db 06       		.uleb128 0x6
 5779 03dc 40       		.uleb128 0x40
 5780 03dd 18       		.uleb128 0x18
 5781 03de 9742     		.uleb128 0x2117
 5782 03e0 19       		.uleb128 0x19
 5783 03e1 01       		.uleb128 0x1
 5784 03e2 13       		.uleb128 0x13
 5785 03e3 00       		.byte	0
 5786 03e4 00       		.byte	0
 5787 03e5 4A       		.uleb128 0x4a
ARM GAS  /tmp/cc1oZp4Q.s 			page 127


 5788 03e6 05       		.uleb128 0x5
 5789 03e7 00       		.byte	0
 5790 03e8 31       		.uleb128 0x31
 5791 03e9 13       		.uleb128 0x13
 5792 03ea 02       		.uleb128 0x2
 5793 03eb 18       		.uleb128 0x18
 5794 03ec 00       		.byte	0
 5795 03ed 00       		.byte	0
 5796 03ee 4B       		.uleb128 0x4b
 5797 03ef 1D       		.uleb128 0x1d
 5798 03f0 00       		.byte	0
 5799 03f1 31       		.uleb128 0x31
 5800 03f2 13       		.uleb128 0x13
 5801 03f3 11       		.uleb128 0x11
 5802 03f4 01       		.uleb128 0x1
 5803 03f5 12       		.uleb128 0x12
 5804 03f6 06       		.uleb128 0x6
 5805 03f7 58       		.uleb128 0x58
 5806 03f8 0B       		.uleb128 0xb
 5807 03f9 59       		.uleb128 0x59
 5808 03fa 0B       		.uleb128 0xb
 5809 03fb 00       		.byte	0
 5810 03fc 00       		.byte	0
 5811 03fd 4C       		.uleb128 0x4c
 5812 03fe 2E       		.uleb128 0x2e
 5813 03ff 01       		.byte	0x1
 5814 0400 31       		.uleb128 0x31
 5815 0401 13       		.uleb128 0x13
 5816 0402 11       		.uleb128 0x11
 5817 0403 01       		.uleb128 0x1
 5818 0404 12       		.uleb128 0x12
 5819 0405 06       		.uleb128 0x6
 5820 0406 40       		.uleb128 0x40
 5821 0407 18       		.uleb128 0x18
 5822 0408 9642     		.uleb128 0x2116
 5823 040a 19       		.uleb128 0x19
 5824 040b 01       		.uleb128 0x1
 5825 040c 13       		.uleb128 0x13
 5826 040d 00       		.byte	0
 5827 040e 00       		.byte	0
 5828 040f 4D       		.uleb128 0x4d
 5829 0410 1D       		.uleb128 0x1d
 5830 0411 00       		.byte	0
 5831 0412 31       		.uleb128 0x31
 5832 0413 13       		.uleb128 0x13
 5833 0414 52       		.uleb128 0x52
 5834 0415 01       		.uleb128 0x1
 5835 0416 55       		.uleb128 0x55
 5836 0417 17       		.uleb128 0x17
 5837 0418 58       		.uleb128 0x58
 5838 0419 0B       		.uleb128 0xb
 5839 041a 59       		.uleb128 0x59
 5840 041b 0B       		.uleb128 0xb
 5841 041c 00       		.byte	0
 5842 041d 00       		.byte	0
 5843 041e 4E       		.uleb128 0x4e
 5844 041f 2E       		.uleb128 0x2e
ARM GAS  /tmp/cc1oZp4Q.s 			page 128


 5845 0420 01       		.byte	0x1
 5846 0421 31       		.uleb128 0x31
 5847 0422 13       		.uleb128 0x13
 5848 0423 11       		.uleb128 0x11
 5849 0424 01       		.uleb128 0x1
 5850 0425 12       		.uleb128 0x12
 5851 0426 06       		.uleb128 0x6
 5852 0427 40       		.uleb128 0x40
 5853 0428 18       		.uleb128 0x18
 5854 0429 01       		.uleb128 0x1
 5855 042a 13       		.uleb128 0x13
 5856 042b 00       		.byte	0
 5857 042c 00       		.byte	0
 5858 042d 4F       		.uleb128 0x4f
 5859 042e 2E       		.uleb128 0x2e
 5860 042f 00       		.byte	0
 5861 0430 3F       		.uleb128 0x3f
 5862 0431 19       		.uleb128 0x19
 5863 0432 3C       		.uleb128 0x3c
 5864 0433 19       		.uleb128 0x19
 5865 0434 6E       		.uleb128 0x6e
 5866 0435 0E       		.uleb128 0xe
 5867 0436 03       		.uleb128 0x3
 5868 0437 0E       		.uleb128 0xe
 5869 0438 3A       		.uleb128 0x3a
 5870 0439 0B       		.uleb128 0xb
 5871 043a 3B       		.uleb128 0x3b
 5872 043b 0B       		.uleb128 0xb
 5873 043c 00       		.byte	0
 5874 043d 00       		.byte	0
 5875 043e 50       		.uleb128 0x50
 5876 043f 2E       		.uleb128 0x2e
 5877 0440 00       		.byte	0
 5878 0441 3F       		.uleb128 0x3f
 5879 0442 19       		.uleb128 0x19
 5880 0443 3C       		.uleb128 0x3c
 5881 0444 19       		.uleb128 0x19
 5882 0445 6E       		.uleb128 0x6e
 5883 0446 0E       		.uleb128 0xe
 5884 0447 03       		.uleb128 0x3
 5885 0448 0E       		.uleb128 0xe
 5886 0449 3A       		.uleb128 0x3a
 5887 044a 0B       		.uleb128 0xb
 5888 044b 3B       		.uleb128 0x3b
 5889 044c 05       		.uleb128 0x5
 5890 044d 00       		.byte	0
 5891 044e 00       		.byte	0
 5892 044f 00       		.byte	0
 5893              		.section	.debug_loc,"",%progbits
 5894              	.Ldebug_loc0:
 5895              	.LLST21:
 5896 0000 B2030000 		.4byte	.LVL114
 5897 0004 B8030000 		.4byte	.LVL115
 5898 0008 0200     		.2byte	0x2
 5899 000a 30       		.byte	0x30
 5900 000b 9F       		.byte	0x9f
 5901 000c B8030000 		.4byte	.LVL115
ARM GAS  /tmp/cc1oZp4Q.s 			page 129


 5902 0010 C2030000 		.4byte	.LVL117
 5903 0014 0100     		.2byte	0x1
 5904 0016 55       		.byte	0x55
 5905 0017 CC030000 		.4byte	.LVL118
 5906 001b D6030000 		.4byte	.LVL119
 5907 001f 0100     		.2byte	0x1
 5908 0021 55       		.byte	0x55
 5909 0022 00000000 		.4byte	0
 5910 0026 00000000 		.4byte	0
 5911              	.LLST22:
 5912 002a D2010000 		.4byte	.LVL78
 5913 002e EC010000 		.4byte	.LVL82
 5914 0032 0100     		.2byte	0x1
 5915 0034 55       		.byte	0x55
 5916 0035 00000000 		.4byte	0
 5917 0039 00000000 		.4byte	0
 5918              	.LLST23:
 5919 003d D4010000 		.4byte	.LVL79
 5920 0041 EC010000 		.4byte	.LVL82
 5921 0045 0100     		.2byte	0x1
 5922 0047 56       		.byte	0x56
 5923 0048 00000000 		.4byte	0
 5924 004c 00000000 		.4byte	0
 5925              	.LLST24:
 5926 0050 4E020000 		.4byte	.LVL90
 5927 0054 84020000 		.4byte	.LVL96
 5928 0058 0100     		.2byte	0x1
 5929 005a 58       		.byte	0x58
 5930 005b 00000000 		.4byte	0
 5931 005f 00000000 		.4byte	0
 5932              	.LLST25:
 5933 0063 6A020000 		.4byte	.LVL93
 5934 0067 75020000 		.4byte	.LVL94-1
 5935 006b 0B00     		.2byte	0xb
 5936 006d 78       		.byte	0x78
 5937 006e 00       		.sleb128 0
 5938 006f 08       		.byte	0x8
 5939 0070 FF       		.byte	0xff
 5940 0071 1A       		.byte	0x1a
 5941 0072 32       		.byte	0x32
 5942 0073 24       		.byte	0x24
 5943 0074 79       		.byte	0x79
 5944 0075 04       		.sleb128 4
 5945 0076 06       		.byte	0x6
 5946 0077 22       		.byte	0x22
 5947 0078 00000000 		.4byte	0
 5948 007c 00000000 		.4byte	0
 5949              	.LLST26:
 5950 0080 5E020000 		.4byte	.LVL91
 5951 0084 64020000 		.4byte	.LVL92
 5952 0088 0200     		.2byte	0x2
 5953 008a 30       		.byte	0x30
 5954 008b 9F       		.byte	0x9f
 5955 008c 00000000 		.4byte	0
 5956 0090 00000000 		.4byte	0
 5957              	.LLST27:
 5958 0094 5E020000 		.4byte	.LVL91
ARM GAS  /tmp/cc1oZp4Q.s 			page 130


 5959 0098 64020000 		.4byte	.LVL92
 5960 009c 0100     		.2byte	0x1
 5961 009e 58       		.byte	0x58
 5962 009f 00000000 		.4byte	0
 5963 00a3 00000000 		.4byte	0
 5964              	.LLST28:
 5965 00a7 BA020000 		.4byte	.LVL98
 5966 00ab 17030000 		.4byte	.LVL99-1
 5967 00af 0100     		.2byte	0x1
 5968 00b1 52       		.byte	0x52
 5969 00b2 24030000 		.4byte	.LVL100
 5970 00b6 34030000 		.4byte	.LVL101
 5971 00ba 0100     		.2byte	0x1
 5972 00bc 52       		.byte	0x52
 5973 00bd 34030000 		.4byte	.LVL101
 5974 00c1 5B030000 		.4byte	.LVL108-1
 5975 00c5 0200     		.2byte	0x2
 5976 00c7 74       		.byte	0x74
 5977 00c8 02       		.sleb128 2
 5978 00c9 5E030000 		.4byte	.LVL109
 5979 00cd 77030000 		.4byte	.LVL110-1
 5980 00d1 0100     		.2byte	0x1
 5981 00d3 52       		.byte	0x52
 5982 00d4 80030000 		.4byte	.LVL111
 5983 00d8 89030000 		.4byte	.LVL112-1
 5984 00dc 0100     		.2byte	0x1
 5985 00de 52       		.byte	0x52
 5986 00df D6030000 		.4byte	.LVL119
 5987 00e3 DD030000 		.4byte	.LVL120-1
 5988 00e7 0100     		.2byte	0x1
 5989 00e9 52       		.byte	0x52
 5990 00ea E0030000 		.4byte	.LVL121
 5991 00ee E2030000 		.4byte	.LVL122
 5992 00f2 0100     		.2byte	0x1
 5993 00f4 52       		.byte	0x52
 5994 00f5 E2030000 		.4byte	.LVL122
 5995 00f9 04040000 		.4byte	.LFE176
 5996 00fd 0200     		.2byte	0x2
 5997 00ff 74       		.byte	0x74
 5998 0100 02       		.sleb128 2
 5999 0101 00000000 		.4byte	0
 6000 0105 00000000 		.4byte	0
 6001              	.LLST29:
 6002 0109 36030000 		.4byte	.LVL102
 6003 010d 3E030000 		.4byte	.LVL104
 6004 0111 0200     		.2byte	0x2
 6005 0113 30       		.byte	0x30
 6006 0114 9F       		.byte	0x9f
 6007 0115 3E030000 		.4byte	.LVL104
 6008 0119 40030000 		.4byte	.LVL105
 6009 011d 0100     		.2byte	0x1
 6010 011f 53       		.byte	0x53
 6011 0120 46030000 		.4byte	.LVL106
 6012 0124 50030000 		.4byte	.LVL107
 6013 0128 0100     		.2byte	0x1
 6014 012a 53       		.byte	0x53
 6015 012b 00000000 		.4byte	0
ARM GAS  /tmp/cc1oZp4Q.s 			page 131


 6016 012f 00000000 		.4byte	0
 6017              	.LLST30:
 6018 0133 36030000 		.4byte	.LVL102
 6019 0137 3A030000 		.4byte	.LVL103
 6020 013b 0100     		.2byte	0x1
 6021 013d 51       		.byte	0x51
 6022 013e 3A030000 		.4byte	.LVL103
 6023 0142 3E030000 		.4byte	.LVL104
 6024 0146 0300     		.2byte	0x3
 6025 0148 71       		.byte	0x71
 6026 0149 01       		.sleb128 1
 6027 014a 9F       		.byte	0x9f
 6028 014b 00000000 		.4byte	0
 6029 014f 00000000 		.4byte	0
 6030              	.LLST31:
 6031 0153 24030000 		.4byte	.LVL100
 6032 0157 36030000 		.4byte	.LVL102
 6033 015b 0200     		.2byte	0x2
 6034 015d 30       		.byte	0x30
 6035 015e 9F       		.byte	0x9f
 6036 015f 36030000 		.4byte	.LVL102
 6037 0163 5B030000 		.4byte	.LVL108-1
 6038 0167 0100     		.2byte	0x1
 6039 0169 52       		.byte	0x52
 6040 016a D6030000 		.4byte	.LVL119
 6041 016e DE030000 		.4byte	.LVL120
 6042 0172 0200     		.2byte	0x2
 6043 0174 30       		.byte	0x30
 6044 0175 9F       		.byte	0x9f
 6045 0176 E0030000 		.4byte	.LVL121
 6046 017a 04040000 		.4byte	.LFE176
 6047 017e 0200     		.2byte	0x2
 6048 0180 30       		.byte	0x30
 6049 0181 9F       		.byte	0x9f
 6050 0182 00000000 		.4byte	0
 6051 0186 00000000 		.4byte	0
 6052              	.LLST32:
 6053 018a 6C000000 		.4byte	.LVL58
 6054 018e 7C000000 		.4byte	.LVL59
 6055 0192 0200     		.2byte	0x2
 6056 0194 30       		.byte	0x30
 6057 0195 9F       		.byte	0x9f
 6058 0196 7C000000 		.4byte	.LVL59
 6059 019a 88000000 		.4byte	.LVL61
 6060 019e 0100     		.2byte	0x1
 6061 01a0 54       		.byte	0x54
 6062 01a1 92000000 		.4byte	.LVL63
 6063 01a5 B0000000 		.4byte	.LVL68
 6064 01a9 0100     		.2byte	0x1
 6065 01ab 54       		.byte	0x54
 6066 01ac 00000000 		.4byte	0
 6067 01b0 00000000 		.4byte	0
 6068              	.LLST33:
 6069 01b4 7C000000 		.4byte	.LVL59
 6070 01b8 9A000000 		.4byte	.LVL64
 6071 01bc 0100     		.2byte	0x1
 6072 01be 55       		.byte	0x55
ARM GAS  /tmp/cc1oZp4Q.s 			page 132


 6073 01bf A0000000 		.4byte	.LVL65
 6074 01c3 B0000000 		.4byte	.LVL68
 6075 01c7 0100     		.2byte	0x1
 6076 01c9 55       		.byte	0x55
 6077 01ca 00000000 		.4byte	0
 6078 01ce 00000000 		.4byte	0
 6079              	.LLST34:
 6080 01d2 7C000000 		.4byte	.LVL59
 6081 01d6 80000000 		.4byte	.LVL60
 6082 01da 0100     		.2byte	0x1
 6083 01dc 51       		.byte	0x51
 6084 01dd A8000000 		.4byte	.LVL67
 6085 01e1 B0000000 		.4byte	.LVL68
 6086 01e5 0100     		.2byte	0x1
 6087 01e7 51       		.byte	0x51
 6088 01e8 00000000 		.4byte	0
 6089 01ec 00000000 		.4byte	0
 6090              	.LLST35:
 6091 01f0 7C000000 		.4byte	.LVL59
 6092 01f4 80000000 		.4byte	.LVL60
 6093 01f8 0100     		.2byte	0x1
 6094 01fa 54       		.byte	0x54
 6095 01fb A8000000 		.4byte	.LVL67
 6096 01ff B0000000 		.4byte	.LVL68
 6097 0203 0100     		.2byte	0x1
 6098 0205 54       		.byte	0x54
 6099 0206 00000000 		.4byte	0
 6100 020a 00000000 		.4byte	0
 6101              	.LLST36:
 6102 020e F6000000 		.4byte	.LVL69
 6103 0212 0A010000 		.4byte	.LVL72
 6104 0216 0100     		.2byte	0x1
 6105 0218 57       		.byte	0x57
 6106 0219 08020000 		.4byte	.LVL84
 6107 021d 2C020000 		.4byte	.LVL89
 6108 0221 0100     		.2byte	0x1
 6109 0223 57       		.byte	0x57
 6110 0224 00000000 		.4byte	0
 6111 0228 00000000 		.4byte	0
 6112              	.LLST37:
 6113 022c 0E020000 		.4byte	.LVL85
 6114 0230 2C020000 		.4byte	.LVL89
 6115 0234 0100     		.2byte	0x1
 6116 0236 55       		.byte	0x55
 6117 0237 00000000 		.4byte	0
 6118 023b 00000000 		.4byte	0
 6119              	.LLST38:
 6120 023f FE000000 		.4byte	.LVL70
 6121 0243 06010000 		.4byte	.LVL71
 6122 0247 0200     		.2byte	0x2
 6123 0249 30       		.byte	0x30
 6124 024a 9F       		.byte	0x9f
 6125 024b 00000000 		.4byte	0
 6126 024f 00000000 		.4byte	0
 6127              	.LLST39:
 6128 0253 FE000000 		.4byte	.LVL70
 6129 0257 06010000 		.4byte	.LVL71
ARM GAS  /tmp/cc1oZp4Q.s 			page 133


 6130 025b 0100     		.2byte	0x1
 6131 025d 57       		.byte	0x57
 6132 025e 00000000 		.4byte	0
 6133 0262 00000000 		.4byte	0
 6134              	.LLST40:
 6135 0266 12020000 		.4byte	.LVL86
 6136 026a 1E020000 		.4byte	.LVL87
 6137 026e 0100     		.2byte	0x1
 6138 0270 50       		.byte	0x50
 6139 0271 00000000 		.4byte	0
 6140 0275 00000000 		.4byte	0
 6141              	.LLST41:
 6142 0279 12020000 		.4byte	.LVL86
 6143 027d 22020000 		.4byte	.LVL88
 6144 0281 0100     		.2byte	0x1
 6145 0283 57       		.byte	0x57
 6146 0284 00000000 		.4byte	0
 6147 0288 00000000 		.4byte	0
 6148              	.LLST20:
 6149 028c 08000000 		.4byte	.LVL51
 6150 0290 14000000 		.4byte	.LVL52
 6151 0294 0200     		.2byte	0x2
 6152 0296 30       		.byte	0x30
 6153 0297 9F       		.byte	0x9f
 6154 0298 14000000 		.4byte	.LVL52
 6155 029c 24000000 		.4byte	.LVL54
 6156 02a0 0100     		.2byte	0x1
 6157 02a2 54       		.byte	0x54
 6158 02a3 28000000 		.4byte	.LVL55
 6159 02a7 2E000000 		.4byte	.LVL56
 6160 02ab 0100     		.2byte	0x1
 6161 02ad 54       		.byte	0x54
 6162 02ae 00000000 		.4byte	0
 6163 02b2 00000000 		.4byte	0
 6164              	.LLST19:
 6165 02b6 08000000 		.4byte	.LVL43
 6166 02ba 14000000 		.4byte	.LVL44
 6167 02be 0200     		.2byte	0x2
 6168 02c0 30       		.byte	0x30
 6169 02c1 9F       		.byte	0x9f
 6170 02c2 14000000 		.4byte	.LVL44
 6171 02c6 18000000 		.4byte	.LVL45
 6172 02ca 0100     		.2byte	0x1
 6173 02cc 54       		.byte	0x54
 6174 02cd 20000000 		.4byte	.LVL47
 6175 02d1 28000000 		.4byte	.LVL48
 6176 02d5 0100     		.2byte	0x1
 6177 02d7 54       		.byte	0x54
 6178 02d8 00000000 		.4byte	0
 6179 02dc 00000000 		.4byte	0
 6180              	.LLST0:
 6181 02e0 00000000 		.4byte	.LVL1
 6182 02e4 3E000000 		.4byte	.LVL2
 6183 02e8 0100     		.2byte	0x1
 6184 02ea 50       		.byte	0x50
 6185 02eb 3E000000 		.4byte	.LVL2
 6186 02ef 40000000 		.4byte	.LVL3
ARM GAS  /tmp/cc1oZp4Q.s 			page 134


 6187 02f3 0400     		.2byte	0x4
 6188 02f5 F3       		.byte	0xf3
 6189 02f6 01       		.uleb128 0x1
 6190 02f7 50       		.byte	0x50
 6191 02f8 9F       		.byte	0x9f
 6192 02f9 40000000 		.4byte	.LVL3
 6193 02fd 44000000 		.4byte	.LVL4
 6194 0301 0100     		.2byte	0x1
 6195 0303 50       		.byte	0x50
 6196 0304 44000000 		.4byte	.LVL4
 6197 0308 48000000 		.4byte	.LVL5
 6198 030c 0400     		.2byte	0x4
 6199 030e F3       		.byte	0xf3
 6200 030f 01       		.uleb128 0x1
 6201 0310 50       		.byte	0x50
 6202 0311 9F       		.byte	0x9f
 6203 0312 48000000 		.4byte	.LVL5
 6204 0316 4A000000 		.4byte	.LVL6
 6205 031a 0100     		.2byte	0x1
 6206 031c 50       		.byte	0x50
 6207 031d 4A000000 		.4byte	.LVL6
 6208 0321 4C000000 		.4byte	.LVL7
 6209 0325 0400     		.2byte	0x4
 6210 0327 F3       		.byte	0xf3
 6211 0328 01       		.uleb128 0x1
 6212 0329 50       		.byte	0x50
 6213 032a 9F       		.byte	0x9f
 6214 032b 4C000000 		.4byte	.LVL7
 6215 032f 58000000 		.4byte	.LFE177
 6216 0333 0100     		.2byte	0x1
 6217 0335 50       		.byte	0x50
 6218 0336 00000000 		.4byte	0
 6219 033a 00000000 		.4byte	0
 6220              	.LLST1:
 6221 033e 00000000 		.4byte	.LVL8
 6222 0342 08000000 		.4byte	.LVL10
 6223 0346 0100     		.2byte	0x1
 6224 0348 50       		.byte	0x50
 6225 0349 08000000 		.4byte	.LVL10
 6226 034d 0E000000 		.4byte	.LVL11
 6227 0351 0400     		.2byte	0x4
 6228 0353 F3       		.byte	0xf3
 6229 0354 01       		.uleb128 0x1
 6230 0355 50       		.byte	0x50
 6231 0356 9F       		.byte	0x9f
 6232 0357 0E000000 		.4byte	.LVL11
 6233 035b 15000000 		.4byte	.LVL12-1
 6234 035f 0100     		.2byte	0x1
 6235 0361 50       		.byte	0x50
 6236 0362 15000000 		.4byte	.LVL12-1
 6237 0366 80000000 		.4byte	.LFE153
 6238 036a 0400     		.2byte	0x4
 6239 036c F3       		.byte	0xf3
 6240 036d 01       		.uleb128 0x1
 6241 036e 50       		.byte	0x50
 6242 036f 9F       		.byte	0x9f
 6243 0370 00000000 		.4byte	0
ARM GAS  /tmp/cc1oZp4Q.s 			page 135


 6244 0374 00000000 		.4byte	0
 6245              	.LLST2:
 6246 0378 04000000 		.4byte	.LVL9
 6247 037c 08000000 		.4byte	.LVL10
 6248 0380 0200     		.2byte	0x2
 6249 0382 30       		.byte	0x30
 6250 0383 9F       		.byte	0x9f
 6251 0384 0E000000 		.4byte	.LVL11
 6252 0388 16000000 		.4byte	.LVL12
 6253 038c 0200     		.2byte	0x2
 6254 038e 30       		.byte	0x30
 6255 038f 9F       		.byte	0x9f
 6256 0390 00000000 		.4byte	0
 6257 0394 00000000 		.4byte	0
 6258              	.LLST3:
 6259 0398 04000000 		.4byte	.LVL9
 6260 039c 08000000 		.4byte	.LVL10
 6261 03a0 0100     		.2byte	0x1
 6262 03a2 50       		.byte	0x50
 6263 03a3 0E000000 		.4byte	.LVL11
 6264 03a7 15000000 		.4byte	.LVL12-1
 6265 03ab 0100     		.2byte	0x1
 6266 03ad 50       		.byte	0x50
 6267 03ae 15000000 		.4byte	.LVL12-1
 6268 03b2 16000000 		.4byte	.LVL12
 6269 03b6 0400     		.2byte	0x4
 6270 03b8 F3       		.byte	0xf3
 6271 03b9 01       		.uleb128 0x1
 6272 03ba 50       		.byte	0x50
 6273 03bb 9F       		.byte	0x9f
 6274 03bc 00000000 		.4byte	0
 6275 03c0 00000000 		.4byte	0
 6276              	.LLST4:
 6277 03c4 1A000000 		.4byte	.LVL13
 6278 03c8 38000000 		.4byte	.LVL18
 6279 03cc 0100     		.2byte	0x1
 6280 03ce 56       		.byte	0x56
 6281 03cf 00000000 		.4byte	0
 6282 03d3 00000000 		.4byte	0
 6283              	.LLST5:
 6284 03d7 28000000 		.4byte	.LVL15
 6285 03db 32000000 		.4byte	.LVL16
 6286 03df 0100     		.2byte	0x1
 6287 03e1 50       		.byte	0x50
 6288 03e2 00000000 		.4byte	0
 6289 03e6 00000000 		.4byte	0
 6290              	.LLST6:
 6291 03ea 28000000 		.4byte	.LVL15
 6292 03ee 36000000 		.4byte	.LVL17
 6293 03f2 0100     		.2byte	0x1
 6294 03f4 56       		.byte	0x56
 6295 03f5 00000000 		.4byte	0
 6296 03f9 00000000 		.4byte	0
 6297              	.LLST7:
 6298 03fd 40000000 		.4byte	.LVL19
 6299 0401 48000000 		.4byte	.LVL20
 6300 0405 0100     		.2byte	0x1
ARM GAS  /tmp/cc1oZp4Q.s 			page 136


 6301 0407 54       		.byte	0x54
 6302 0408 00000000 		.4byte	0
 6303 040c 00000000 		.4byte	0
 6304              	.LLST8:
 6305 0410 40000000 		.4byte	.LVL19
 6306 0414 64000000 		.4byte	.LVL23
 6307 0418 0200     		.2byte	0x2
 6308 041a 35       		.byte	0x35
 6309 041b 9F       		.byte	0x9f
 6310 041c 00000000 		.4byte	0
 6311 0420 00000000 		.4byte	0
 6312              	.LLST9:
 6313 0424 40000000 		.4byte	.LVL19
 6314 0428 48000000 		.4byte	.LVL20
 6315 042c 0100     		.2byte	0x1
 6316 042e 54       		.byte	0x54
 6317 042f 4C000000 		.4byte	.LVL21
 6318 0433 64000000 		.4byte	.LVL23
 6319 0437 0100     		.2byte	0x1
 6320 0439 54       		.byte	0x54
 6321 043a 00000000 		.4byte	0
 6322 043e 00000000 		.4byte	0
 6323              	.LLST10:
 6324 0442 00000000 		.4byte	.LVL27
 6325 0446 08000000 		.4byte	.LVL29
 6326 044a 0100     		.2byte	0x1
 6327 044c 50       		.byte	0x50
 6328 044d 08000000 		.4byte	.LVL29
 6329 0451 0A000000 		.4byte	.LVL30
 6330 0455 0400     		.2byte	0x4
 6331 0457 F3       		.byte	0xf3
 6332 0458 01       		.uleb128 0x1
 6333 0459 50       		.byte	0x50
 6334 045a 9F       		.byte	0x9f
 6335 045b 0A000000 		.4byte	.LVL30
 6336 045f 11000000 		.4byte	.LVL31-1
 6337 0463 0100     		.2byte	0x1
 6338 0465 50       		.byte	0x50
 6339 0466 11000000 		.4byte	.LVL31-1
 6340 046a 6C000000 		.4byte	.LFE154
 6341 046e 0400     		.2byte	0x4
 6342 0470 F3       		.byte	0xf3
 6343 0471 01       		.uleb128 0x1
 6344 0472 50       		.byte	0x50
 6345 0473 9F       		.byte	0x9f
 6346 0474 00000000 		.4byte	0
 6347 0478 00000000 		.4byte	0
 6348              	.LLST11:
 6349 047c 00000000 		.4byte	.LVL27
 6350 0480 1A000000 		.4byte	.LVL33
 6351 0484 0100     		.2byte	0x1
 6352 0486 51       		.byte	0x51
 6353 0487 1A000000 		.4byte	.LVL33
 6354 048b 6C000000 		.4byte	.LFE154
 6355 048f 0400     		.2byte	0x4
 6356 0491 F3       		.byte	0xf3
 6357 0492 01       		.uleb128 0x1
ARM GAS  /tmp/cc1oZp4Q.s 			page 137


 6358 0493 51       		.byte	0x51
 6359 0494 9F       		.byte	0x9f
 6360 0495 00000000 		.4byte	0
 6361 0499 00000000 		.4byte	0
 6362              	.LLST12:
 6363 049d 02000000 		.4byte	.LVL28
 6364 04a1 12000000 		.4byte	.LVL31
 6365 04a5 0100     		.2byte	0x1
 6366 04a7 51       		.byte	0x51
 6367 04a8 00000000 		.4byte	0
 6368 04ac 00000000 		.4byte	0
 6369              	.LLST13:
 6370 04b0 02000000 		.4byte	.LVL28
 6371 04b4 08000000 		.4byte	.LVL29
 6372 04b8 0100     		.2byte	0x1
 6373 04ba 50       		.byte	0x50
 6374 04bb 08000000 		.4byte	.LVL29
 6375 04bf 0A000000 		.4byte	.LVL30
 6376 04c3 0400     		.2byte	0x4
 6377 04c5 F3       		.byte	0xf3
 6378 04c6 01       		.uleb128 0x1
 6379 04c7 50       		.byte	0x50
 6380 04c8 9F       		.byte	0x9f
 6381 04c9 0A000000 		.4byte	.LVL30
 6382 04cd 11000000 		.4byte	.LVL31-1
 6383 04d1 0100     		.2byte	0x1
 6384 04d3 50       		.byte	0x50
 6385 04d4 11000000 		.4byte	.LVL31-1
 6386 04d8 12000000 		.4byte	.LVL31
 6387 04dc 0400     		.2byte	0x4
 6388 04de F3       		.byte	0xf3
 6389 04df 01       		.uleb128 0x1
 6390 04e0 50       		.byte	0x50
 6391 04e1 9F       		.byte	0x9f
 6392 04e2 00000000 		.4byte	0
 6393 04e6 00000000 		.4byte	0
 6394              	.LLST14:
 6395 04ea 14000000 		.4byte	.LVL32
 6396 04ee 1A000000 		.4byte	.LVL33
 6397 04f2 0100     		.2byte	0x1
 6398 04f4 51       		.byte	0x51
 6399 04f5 00000000 		.4byte	0
 6400 04f9 00000000 		.4byte	0
 6401              	.LLST15:
 6402 04fd 14000000 		.4byte	.LVL32
 6403 0501 48000000 		.4byte	.LVL38
 6404 0505 0100     		.2byte	0x1
 6405 0507 56       		.byte	0x56
 6406 0508 4C000000 		.4byte	.LVL39
 6407 050c 5A000000 		.4byte	.LVL41
 6408 0510 0100     		.2byte	0x1
 6409 0512 56       		.byte	0x56
 6410 0513 00000000 		.4byte	0
 6411 0517 00000000 		.4byte	0
 6412              	.LLST16:
 6413 051b 1A000000 		.4byte	.LVL33
 6414 051f 22000000 		.4byte	.LVL34
ARM GAS  /tmp/cc1oZp4Q.s 			page 138


 6415 0523 0100     		.2byte	0x1
 6416 0525 54       		.byte	0x54
 6417 0526 00000000 		.4byte	0
 6418 052a 00000000 		.4byte	0
 6419              	.LLST17:
 6420 052e 1A000000 		.4byte	.LVL33
 6421 0532 3E000000 		.4byte	.LVL37
 6422 0536 0200     		.2byte	0x2
 6423 0538 35       		.byte	0x35
 6424 0539 9F       		.byte	0x9f
 6425 053a 00000000 		.4byte	0
 6426 053e 00000000 		.4byte	0
 6427              	.LLST18:
 6428 0542 1A000000 		.4byte	.LVL33
 6429 0546 22000000 		.4byte	.LVL34
 6430 054a 0100     		.2byte	0x1
 6431 054c 54       		.byte	0x54
 6432 054d 26000000 		.4byte	.LVL35
 6433 0551 3E000000 		.4byte	.LVL37
 6434 0555 0100     		.2byte	0x1
 6435 0557 54       		.byte	0x54
 6436 0558 00000000 		.4byte	0
 6437 055c 00000000 		.4byte	0
 6438              		.section	.debug_aranges,"",%progbits
 6439 0000 64000000 		.4byte	0x64
 6440 0004 0200     		.2byte	0x2
 6441 0006 00000000 		.4byte	.Ldebug_info0
 6442 000a 04       		.byte	0x4
 6443 000b 00       		.byte	0
 6444 000c 0000     		.2byte	0
 6445 000e 0000     		.2byte	0
 6446 0010 00000000 		.4byte	.LFB165
 6447 0014 10000000 		.4byte	.LFE165-.LFB165
 6448 0018 00000000 		.4byte	.LFB177
 6449 001c 58000000 		.4byte	.LFE177-.LFB177
 6450 0020 00000000 		.4byte	.LFB153
 6451 0024 80000000 		.4byte	.LFE153-.LFB153
 6452 0028 00000000 		.4byte	.LFB154
 6453 002c 6C000000 		.4byte	.LFE154-.LFB154
 6454 0030 00000000 		.4byte	.LFB149
 6455 0034 0C000000 		.4byte	.LFE149-.LFB149
 6456 0038 00000000 		.4byte	.LFB155
 6457 003c 04000000 		.4byte	.LFE155-.LFB155
 6458 0040 00000000 		.4byte	.LFB157
 6459 0044 40000000 		.4byte	.LFE157-.LFB157
 6460 0048 00000000 		.4byte	.LFB156
 6461 004c 0E000000 		.4byte	.LFE156-.LFB156
 6462 0050 00000000 		.4byte	.LFB158
 6463 0054 38000000 		.4byte	.LFE158-.LFB158
 6464 0058 00000000 		.4byte	.LFB176
 6465 005c 04040000 		.4byte	.LFE176-.LFB176
 6466 0060 00000000 		.4byte	0
 6467 0064 00000000 		.4byte	0
 6468              		.section	.debug_ranges,"",%progbits
 6469              	.Ldebug_ranges0:
 6470 0000 02000000 		.4byte	.LBB71
 6471 0004 08000000 		.4byte	.LBE71
ARM GAS  /tmp/cc1oZp4Q.s 			page 139


 6472 0008 0E000000 		.4byte	.LBB74
 6473 000c 16000000 		.4byte	.LBE74
 6474 0010 00000000 		.4byte	0
 6475 0014 00000000 		.4byte	0
 6476 0018 1A000000 		.4byte	.LBB75
 6477 001c 68000000 		.4byte	.LBE75
 6478 0020 6C000000 		.4byte	.LBB90
 6479 0024 80000000 		.4byte	.LBE90
 6480 0028 00000000 		.4byte	0
 6481 002c 00000000 		.4byte	0
 6482 0030 3C000000 		.4byte	.LBB79
 6483 0034 64000000 		.4byte	.LBE79
 6484 0038 6C000000 		.4byte	.LBB88
 6485 003c 80000000 		.4byte	.LBE88
 6486 0040 00000000 		.4byte	0
 6487 0044 00000000 		.4byte	0
 6488 0048 40000000 		.4byte	.LBB82
 6489 004c 42000000 		.4byte	.LBE82
 6490 0050 44000000 		.4byte	.LBB86
 6491 0054 46000000 		.4byte	.LBE86
 6492 0058 48000000 		.4byte	.LBB87
 6493 005c 4C000000 		.4byte	.LBE87
 6494 0060 00000000 		.4byte	0
 6495 0064 00000000 		.4byte	0
 6496 0068 00000000 		.4byte	.LBB101
 6497 006c 06000000 		.4byte	.LBE101
 6498 0070 0E000000 		.4byte	.LBB104
 6499 0074 12000000 		.4byte	.LBE104
 6500 0078 00000000 		.4byte	0
 6501 007c 00000000 		.4byte	0
 6502 0080 14000000 		.4byte	.LBB105
 6503 0084 44000000 		.4byte	.LBE105
 6504 0088 48000000 		.4byte	.LBB116
 6505 008c 5A000000 		.4byte	.LBE116
 6506 0090 00000000 		.4byte	0
 6507 0094 00000000 		.4byte	0
 6508 0098 1A000000 		.4byte	.LBB109
 6509 009c 1C000000 		.4byte	.LBE109
 6510 00a0 1E000000 		.4byte	.LBB113
 6511 00a4 20000000 		.4byte	.LBE113
 6512 00a8 22000000 		.4byte	.LBB114
 6513 00ac 26000000 		.4byte	.LBE114
 6514 00b0 00000000 		.4byte	0
 6515 00b4 00000000 		.4byte	0
 6516 00b8 3A000000 		.4byte	.LBB155
 6517 00bc 60000000 		.4byte	.LBE155
 6518 00c0 B0000000 		.4byte	.LBB216
 6519 00c4 EC000000 		.4byte	.LBE216
 6520 00c8 12010000 		.4byte	.LBB224
 6521 00cc 3C010000 		.4byte	.LBE224
 6522 00d0 44010000 		.4byte	.LBB225
 6523 00d4 5A010000 		.4byte	.LBE225
 6524 00d8 5C010000 		.4byte	.LBB226
 6525 00dc 78010000 		.4byte	.LBE226
 6526 00e0 7A010000 		.4byte	.LBB227
 6527 00e4 E6010000 		.4byte	.LBE227
 6528 00e8 EC010000 		.4byte	.LBB228
ARM GAS  /tmp/cc1oZp4Q.s 			page 140


 6529 00ec 02020000 		.4byte	.LBE228
 6530 00f0 32020000 		.4byte	.LBB230
 6531 00f4 8E020000 		.4byte	.LBE230
 6532 00f8 90020000 		.4byte	.LBB231
 6533 00fc 3A030000 		.4byte	.LBE231
 6534 0100 3E030000 		.4byte	.LBB232
 6535 0104 04040000 		.4byte	.LBE232
 6536 0108 00000000 		.4byte	0
 6537 010c 00000000 		.4byte	0
 6538 0110 54010000 		.4byte	.LBB161
 6539 0114 5A010000 		.4byte	.LBE161
 6540 0118 5C010000 		.4byte	.LBB164
 6541 011c 6E010000 		.4byte	.LBE164
 6542 0120 00000000 		.4byte	0
 6543 0124 00000000 		.4byte	0
 6544 0128 6E010000 		.4byte	.LBB165
 6545 012c 78010000 		.4byte	.LBE165
 6546 0130 7A010000 		.4byte	.LBB168
 6547 0134 7E010000 		.4byte	.LBE168
 6548 0138 00000000 		.4byte	0
 6549 013c 00000000 		.4byte	0
 6550 0140 9A010000 		.4byte	.LBB171
 6551 0144 BA010000 		.4byte	.LBE171
 6552 0148 8C030000 		.4byte	.LBB197
 6553 014c D6030000 		.4byte	.LBE197
 6554 0150 00000000 		.4byte	0
 6555 0154 00000000 		.4byte	0
 6556 0158 84020000 		.4byte	.LBB182
 6557 015c 8E020000 		.4byte	.LBE182
 6558 0160 90020000 		.4byte	.LBB185
 6559 0164 B8020000 		.4byte	.LBE185
 6560 0168 00000000 		.4byte	0
 6561 016c 00000000 		.4byte	0
 6562 0170 B8020000 		.4byte	.LBB186
 6563 0174 3A030000 		.4byte	.LBE186
 6564 0178 3E030000 		.4byte	.LBB196
 6565 017c 8C030000 		.4byte	.LBE196
 6566 0180 D6030000 		.4byte	.LBB198
 6567 0184 04040000 		.4byte	.LBE198
 6568 0188 00000000 		.4byte	0
 6569 018c 00000000 		.4byte	0
 6570 0190 24030000 		.4byte	.LBB188
 6571 0194 3A030000 		.4byte	.LBE188
 6572 0198 3E030000 		.4byte	.LBB192
 6573 019c 5E030000 		.4byte	.LBE192
 6574 01a0 D6030000 		.4byte	.LBB193
 6575 01a4 04040000 		.4byte	.LBE193
 6576 01a8 00000000 		.4byte	0
 6577 01ac 00000000 		.4byte	0
 6578 01b0 7C000000 		.4byte	.LBB210
 6579 01b4 80000000 		.4byte	.LBE210
 6580 01b8 A4000000 		.4byte	.LBB214
 6581 01bc A6000000 		.4byte	.LBE214
 6582 01c0 A8000000 		.4byte	.LBB215
 6583 01c4 B0000000 		.4byte	.LBE215
 6584 01c8 00000000 		.4byte	0
 6585 01cc 00000000 		.4byte	0
ARM GAS  /tmp/cc1oZp4Q.s 			page 141


 6586 01d0 EC000000 		.4byte	.LBB217
 6587 01d4 12010000 		.4byte	.LBE217
 6588 01d8 08020000 		.4byte	.LBB229
 6589 01dc 2C020000 		.4byte	.LBE229
 6590 01e0 00000000 		.4byte	0
 6591 01e4 00000000 		.4byte	0
 6592 01e8 00000000 		.4byte	.LFB165
 6593 01ec 10000000 		.4byte	.LFE165
 6594 01f0 00000000 		.4byte	.LFB177
 6595 01f4 58000000 		.4byte	.LFE177
 6596 01f8 00000000 		.4byte	.LFB153
 6597 01fc 80000000 		.4byte	.LFE153
 6598 0200 00000000 		.4byte	.LFB154
 6599 0204 6C000000 		.4byte	.LFE154
 6600 0208 00000000 		.4byte	.LFB149
 6601 020c 0C000000 		.4byte	.LFE149
 6602 0210 00000000 		.4byte	.LFB155
 6603 0214 04000000 		.4byte	.LFE155
 6604 0218 00000000 		.4byte	.LFB157
 6605 021c 40000000 		.4byte	.LFE157
 6606 0220 00000000 		.4byte	.LFB156
 6607 0224 0E000000 		.4byte	.LFE156
 6608 0228 00000000 		.4byte	.LFB158
 6609 022c 38000000 		.4byte	.LFE158
 6610 0230 00000000 		.4byte	.LFB176
 6611 0234 04040000 		.4byte	.LFE176
 6612 0238 00000000 		.4byte	0
 6613 023c 00000000 		.4byte	0
 6614              		.section	.debug_line,"",%progbits
 6615              	.Ldebug_line0:
 6616 0000 58050000 		.section	.debug_str,"MS",%progbits,1
 6616      0200B502 
 6616      00000201 
 6616      FB0E0D00 
 6616      01010101 
 6617              	.LASF264:
 6618 0000 7564635F 		.ascii	"udc_req_std_dev_get_descriptor\000"
 6618      7265715F 
 6618      7374645F 
 6618      6465765F 
 6618      6765745F 
 6619              	.LASF190:
 6620 001f 624D6178 		.ascii	"bMaxPacketSize0\000"
 6620      5061636B 
 6620      65745369 
 6620      7A653000 
 6621              	.LASF29:
 6622 002f 5F666C6F 		.ascii	"_flock_t\000"
 6622      636B5F74 
 6622      00
 6623              	.LASF206:
 6624 0038 624D6178 		.ascii	"bMaxPower\000"
 6624      506F7765 
 6624      7200
 6625              	.LASF181:
 6626 0042 77496E64 		.ascii	"wIndex\000"
 6626      657800
ARM GAS  /tmp/cc1oZp4Q.s 			page 142


 6627              	.LASF250:
 6628 0049 7564635F 		.ascii	"udc_string_product_name\000"
 6628      73747269 
 6628      6E675F70 
 6628      726F6475 
 6628      63745F6E 
 6629              	.LASF273:
 6630 0061 7564635F 		.ascii	"udc_req_std_ep_get_status\000"
 6630      7265715F 
 6630      7374645F 
 6630      65705F67 
 6630      65745F73 
 6631              	.LASF19:
 6632 007b 53797374 		.ascii	"SystemCoreClock\000"
 6632      656D436F 
 6632      7265436C 
 6632      6F636B00 
 6633              	.LASF166:
 6634 008b 5553425F 		.ascii	"USB_DT_STRING\000"
 6634      44545F53 
 6634      5452494E 
 6634      4700
 6635              	.LASF46:
 6636 0099 5F6F6E5F 		.ascii	"_on_exit_args\000"
 6636      65786974 
 6636      5F617267 
 6636      7300
 6637              	.LASF253:
 6638 00a7 7564635F 		.ascii	"udc_string_desc\000"
 6638      73747269 
 6638      6E675F64 
 6638      65736300 
 6639              	.LASF175:
 6640 00b7 5553425F 		.ascii	"USB_DT_DEVICE_CAPABILITY\000"
 6640      44545F44 
 6640      45564943 
 6640      455F4341 
 6640      50414249 
 6641              	.LASF114:
 6642 00d0 5F776374 		.ascii	"_wctomb_state\000"
 6642      6F6D625F 
 6642      73746174 
 6642      6500
 6643              	.LASF98:
 6644 00de 5F676C75 		.ascii	"_glue\000"
 6644      6500
 6645              	.LASF164:
 6646 00e4 5553425F 		.ascii	"USB_DT_DEVICE\000"
 6646      44545F44 
 6646      45564943 
 6646      4500
 6647              	.LASF160:
 6648 00f2 5553425F 		.ascii	"USB_DEV_FEATURE_OTG_A_ALT_HNP_SUPPORT\000"
 6648      4445565F 
 6648      46454154 
 6648      5552455F 
 6648      4F54475F 
ARM GAS  /tmp/cc1oZp4Q.s 			page 143


 6649              	.LASF214:
 6650 0118 69496E74 		.ascii	"iInterface\000"
 6650      65726661 
 6650      636500
 6651              	.LASF111:
 6652 0123 5F723438 		.ascii	"_r48\000"
 6652      00
 6653              	.LASF269:
 6654 0128 7564635F 		.ascii	"udc_req_std_ep_set_feature\000"
 6654      7265715F 
 6654      7374645F 
 6654      65705F73 
 6654      65745F66 
 6655              	.LASF37:
 6656 0143 5F5F746D 		.ascii	"__tm_sec\000"
 6656      5F736563 
 6656      00
 6657              	.LASF116:
 6658 014c 5F736967 		.ascii	"_signal_buf\000"
 6658      6E616C5F 
 6658      62756600 
 6659              	.LASF0:
 6660 0158 756E7369 		.ascii	"unsigned int\000"
 6660      676E6564 
 6660      20696E74 
 6660      00
 6661              	.LASF176:
 6662 0165 7573625F 		.ascii	"usb_langid\000"
 6662      6C616E67 
 6662      696400
 6663              	.LASF286:
 6664 0170 64657363 		.ascii	"desc_id\000"
 6664      5F696400 
 6665              	.LASF305:
 6666 0178 7564635F 		.ascii	"udc_get_interface_desc\000"
 6666      6765745F 
 6666      696E7465 
 6666      72666163 
 6666      655F6465 
 6667              	.LASF60:
 6668 018f 5F6C6266 		.ascii	"_lbfsize\000"
 6668      73697A65 
 6668      00
 6669              	.LASF58:
 6670 0198 5F666C61 		.ascii	"_flags\000"
 6670      677300
 6671              	.LASF149:
 6672 019f 7573625F 		.ascii	"usb_device_status\000"
 6672      64657669 
 6672      63655F73 
 6672      74617475 
 6672      7300
 6673              	.LASF7:
 6674 01b1 5F5F696E 		.ascii	"__int32_t\000"
 6674      7433325F 
 6674      7400
 6675              	.LASF75:
ARM GAS  /tmp/cc1oZp4Q.s 			page 144


 6676 01bb 5F657272 		.ascii	"_errno\000"
 6676      6E6F00
 6677              	.LASF127:
 6678 01c2 5F696D70 		.ascii	"_impure_ptr\000"
 6678      7572655F 
 6678      70747200 
 6679              	.LASF271:
 6680 01ce 7564635F 		.ascii	"udc_req_std_ep_clear_feature\000"
 6680      7265715F 
 6680      7374645F 
 6680      65705F63 
 6680      6C656172 
 6681              	.LASF151:
 6682 01eb 5553425F 		.ascii	"USB_DEV_STATUS_SELF_POWERED\000"
 6682      4445565F 
 6682      53544154 
 6682      55535F53 
 6682      454C465F 
 6683              	.LASF263:
 6684 0207 7564635F 		.ascii	"udc_req_std_dev_get_configuration\000"
 6684      7265715F 
 6684      7374645F 
 6684      6465765F 
 6684      6765745F 
 6685              	.LASF137:
 6686 0229 5553425F 		.ascii	"USB_REQ_GET_STATUS\000"
 6686      5245515F 
 6686      4745545F 
 6686      53544154 
 6686      555300
 6687              	.LASF251:
 6688 023c 7564635F 		.ascii	"udc_string_desc_t\000"
 6688      73747269 
 6688      6E675F64 
 6688      6573635F 
 6688      7400
 6689              	.LASF217:
 6690 024e 774D6178 		.ascii	"wMaxPacketSize\000"
 6690      5061636B 
 6690      65745369 
 6690      7A6500
 6691              	.LASF3:
 6692 025d 73686F72 		.ascii	"short int\000"
 6692      7420696E 
 6692      7400
 6693              	.LASF171:
 6694 0267 5553425F 		.ascii	"USB_DT_INTERFACE_POWER\000"
 6694      44545F49 
 6694      4E544552 
 6694      46414345 
 6694      5F504F57 
 6695              	.LASF72:
 6696 027e 5F6D6273 		.ascii	"_mbstate\000"
 6696      74617465 
 6696      00
 6697              	.LASF218:
 6698 0287 62496E74 		.ascii	"bInterval\000"
ARM GAS  /tmp/cc1oZp4Q.s 			page 145


 6698      65727661 
 6698      6C00
 6699              	.LASF212:
 6700 0291 62496E74 		.ascii	"bInterfaceSubClass\000"
 6700      65726661 
 6700      63655375 
 6700      62436C61 
 6700      737300
 6701              	.LASF193:
 6702 02a4 62636444 		.ascii	"bcdDevice\000"
 6702      65766963 
 6702      6500
 6703              	.LASF30:
 6704 02ae 5F5F554C 		.ascii	"__ULong\000"
 6704      6F6E6700 
 6705              	.LASF192:
 6706 02b6 69645072 		.ascii	"idProduct\000"
 6706      6F647563 
 6706      7400
 6707              	.LASF297:
 6708 02c0 7564645F 		.ascii	"udd_enable\000"
 6708      656E6162 
 6708      6C6500
 6709              	.LASF200:
 6710 02cb 624E756D 		.ascii	"bNumDeviceCaps\000"
 6710      44657669 
 6710      63654361 
 6710      707300
 6711              	.LASF77:
 6712 02da 5F737464 		.ascii	"_stdout\000"
 6712      6F757400 
 6713              	.LASF194:
 6714 02e2 694D616E 		.ascii	"iManufacturer\000"
 6714      75666163 
 6714      74757265 
 6714      7200
 6715              	.LASF22:
 6716 02f0 5F66706F 		.ascii	"_fpos_t\000"
 6716      735F7400 
 6717              	.LASF180:
 6718 02f8 7756616C 		.ascii	"wValue\000"
 6718      756500
 6719              	.LASF293:
 6720 02ff 7564645F 		.ascii	"udd_getaddress\000"
 6720      67657461 
 6720      64647265 
 6720      737300
 6721              	.LASF53:
 6722 030e 5F666E73 		.ascii	"_fns\000"
 6722      00
 6723              	.LASF61:
 6724 0313 5F636F6F 		.ascii	"_cookie\000"
 6724      6B696500 
 6725              	.LASF261:
 6726 031b 7564635F 		.ascii	"udc_req_std_dev_set_configuration\000"
 6726      7265715F 
 6726      7374645F 
ARM GAS  /tmp/cc1oZp4Q.s 			page 146


 6726      6465765F 
 6726      7365745F 
 6727              	.LASF128:
 6728 033d 5F676C6F 		.ascii	"_global_impure_ptr\000"
 6728      62616C5F 
 6728      696D7075 
 6728      72655F70 
 6728      747200
 6729              	.LASF130:
 6730 0350 675F696E 		.ascii	"g_interrupt_enabled\000"
 6730      74657272 
 6730      7570745F 
 6730      656E6162 
 6730      6C656400 
 6731              	.LASF35:
 6732 0364 5F426967 		.ascii	"_Bigint\000"
 6732      696E7400 
 6733              	.LASF43:
 6734 036c 5F5F746D 		.ascii	"__tm_wday\000"
 6734      5F776461 
 6734      7900
 6735              	.LASF173:
 6736 0376 5553425F 		.ascii	"USB_DT_IAD\000"
 6736      44545F49 
 6736      414400
 6737              	.LASF85:
 6738 0381 5F726573 		.ascii	"_result\000"
 6738      756C7400 
 6739              	.LASF187:
 6740 0389 62446576 		.ascii	"bDeviceClass\000"
 6740      69636543 
 6740      6C617373 
 6740      00
 6741              	.LASF295:
 6742 0396 7564645F 		.ascii	"udd_set_address\000"
 6742      7365745F 
 6742      61646472 
 6742      65737300 
 6743              	.LASF16:
 6744 03a6 75696E74 		.ascii	"uint32_t\000"
 6744      33325F74 
 6744      00
 6745              	.LASF39:
 6746 03af 5F5F746D 		.ascii	"__tm_hour\000"
 6746      5F686F75 
 6746      7200
 6747              	.LASF299:
 6748 03b9 7564645F 		.ascii	"udd_ep_alloc\000"
 6748      65705F61 
 6748      6C6C6F63 
 6748      00
 6749              	.LASF80:
 6750 03c6 5F656D65 		.ascii	"_emergency\000"
 6750      7267656E 
 6750      637900
 6751              	.LASF195:
 6752 03d1 6950726F 		.ascii	"iProduct\000"
ARM GAS  /tmp/cc1oZp4Q.s 			page 147


 6752      64756374 
 6752      00
 6753              	.LASF241:
 6754 03da 7564645F 		.ascii	"udd_ctrl_request_t\000"
 6754      6374726C 
 6754      5F726571 
 6754      75657374 
 6754      5F7400
 6755              	.LASF186:
 6756 03ed 62636455 		.ascii	"bcdUSB\000"
 6756      534200
 6757              	.LASF26:
 6758 03f4 5F5F636F 		.ascii	"__count\000"
 6758      756E7400 
 6759              	.LASF135:
 6760 03fc 666C6F61 		.ascii	"float\000"
 6760      7400
 6761              	.LASF38:
 6762 0402 5F5F746D 		.ascii	"__tm_min\000"
 6762      5F6D696E 
 6762      00
 6763              	.LASF275:
 6764 040b 7564635F 		.ascii	"udc_req_std_dev_get_status\000"
 6764      7265715F 
 6764      7374645F 
 6764      6465765F 
 6764      6765745F 
 6765              	.LASF298:
 6766 0426 7564645F 		.ascii	"udd_ep_free\000"
 6766      65705F66 
 6766      72656500 
 6767              	.LASF124:
 6768 0432 5F6E6578 		.ascii	"_nextf\000"
 6768      746600
 6769              	.LASF304:
 6770 0439 7564635F 		.ascii	"udc_valid_address\000"
 6770      76616C69 
 6770      645F6164 
 6770      64726573 
 6770      7300
 6771              	.LASF291:
 6772 044b 7564645F 		.ascii	"udd_ep_set_halt\000"
 6772      65705F73 
 6772      65745F68 
 6772      616C7400 
 6773              	.LASF223:
 6774 045b 7573625F 		.ascii	"usb_str_lgid_desc_t\000"
 6774      7374725F 
 6774      6C676964 
 6774      5F646573 
 6774      635F7400 
 6775              	.LASF238:
 6776 046f 7061796C 		.ascii	"payload_size\000"
 6776      6F61645F 
 6776      73697A65 
 6776      00
 6777              	.LASF199:
ARM GAS  /tmp/cc1oZp4Q.s 			page 148


 6778 047c 77546F74 		.ascii	"wTotalLength\000"
 6778      616C4C65 
 6778      6E677468 
 6778      00
 6779              	.LASF120:
 6780 0489 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 6780      72746F77 
 6780      63735F73 
 6780      74617465 
 6780      00
 6781              	.LASF208:
 6782 049a 62496E74 		.ascii	"bInterfaceNumber\000"
 6782      65726661 
 6782      63654E75 
 6782      6D626572 
 6782      00
 6783              	.LASF278:
 6784 04ab 7564635F 		.ascii	"udc_stop\000"
 6784      73746F70 
 6784      00
 6785              	.LASF12:
 6786 04b4 6C6F6E67 		.ascii	"long long unsigned int\000"
 6786      206C6F6E 
 6786      6720756E 
 6786      7369676E 
 6786      65642069 
 6787              	.LASF107:
 6788 04cb 5F617363 		.ascii	"_asctime_buf\000"
 6788      74696D65 
 6788      5F627566 
 6788      00
 6789              	.LASF101:
 6790 04d8 5F72616E 		.ascii	"_rand48\000"
 6790      64343800 
 6791              	.LASF57:
 6792 04e0 5F5F7346 		.ascii	"__sFILE\000"
 6792      494C4500 
 6793              	.LASF34:
 6794 04e8 5F776473 		.ascii	"_wds\000"
 6794      00
 6795              	.LASF266:
 6796 04ed 7564635F 		.ascii	"udc_req_std_dev_get_str_desc\000"
 6796      7265715F 
 6796      7374645F 
 6796      6465765F 
 6796      6765745F 
 6797              	.LASF179:
 6798 050a 62526571 		.ascii	"bRequest\000"
 6798      75657374 
 6798      00
 6799              	.LASF280:
 6800 0513 7564635F 		.ascii	"udc_iface_enable\000"
 6800      69666163 
 6800      655F656E 
 6800      61626C65 
 6800      00
 6801              	.LASF5:
ARM GAS  /tmp/cc1oZp4Q.s 			page 149


 6802 0524 5F5F7569 		.ascii	"__uint16_t\000"
 6802      6E743136 
 6802      5F7400
 6803              	.LASF97:
 6804 052f 5F5F4649 		.ascii	"__FILE\000"
 6804      4C4500
 6805              	.LASF159:
 6806 0536 5553425F 		.ascii	"USB_DEV_FEATURE_OTG_A_HNP_SUPPORT\000"
 6806      4445565F 
 6806      46454154 
 6806      5552455F 
 6806      4F54475F 
 6807              	.LASF158:
 6808 0558 5553425F 		.ascii	"USB_DEV_FEATURE_OTG_B_HNP_ENABLE\000"
 6808      4445565F 
 6808      46454154 
 6808      5552455F 
 6808      4F54475F 
 6809              	.LASF69:
 6810 0579 5F6F6666 		.ascii	"_offset\000"
 6810      73657400 
 6811              	.LASF66:
 6812 0581 5F756275 		.ascii	"_ubuf\000"
 6812      6600
 6813              	.LASF163:
 6814 0587 7573625F 		.ascii	"usb_descriptor_type\000"
 6814      64657363 
 6814      72697074 
 6814      6F725F74 
 6814      79706500 
 6815              	.LASF224:
 6816 059b 656E6162 		.ascii	"enable\000"
 6816      6C6500
 6817              	.LASF188:
 6818 05a2 62446576 		.ascii	"bDeviceSubClass\000"
 6818      69636553 
 6818      7562436C 
 6818      61737300 
 6819              	.LASF301:
 6820 05b2 2E2E2F61 		.ascii	"../asf/common/services/usb/udc/udc.c\000"
 6820      73662F63 
 6820      6F6D6D6F 
 6820      6E2F7365 
 6820      72766963 
 6821              	.LASF152:
 6822 05d7 5553425F 		.ascii	"USB_DEV_STATUS_REMOTEWAKEUP\000"
 6822      4445565F 
 6822      53544154 
 6822      55535F52 
 6822      454D4F54 
 6823              	.LASF133:
 6824 05f3 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 6824      6972715F 
 6824      70726576 
 6824      5F696E74 
 6824      65727275 
 6825              	.LASF287:
ARM GAS  /tmp/cc1oZp4Q.s 			page 150


 6826 0610 7074725F 		.ascii	"ptr_eof_desc\000"
 6826      656F665F 
 6826      64657363 
 6826      00
 6827              	.LASF210:
 6828 061d 624E756D 		.ascii	"bNumEndpoints\000"
 6828      456E6470 
 6828      6F696E74 
 6828      7300
 6829              	.LASF237:
 6830 062b 7061796C 		.ascii	"payload\000"
 6830      6F616400 
 6831              	.LASF247:
 6832 0633 7564635F 		.ascii	"udc_ptr_iface\000"
 6832      7074725F 
 6832      69666163 
 6832      6500
 6833              	.LASF267:
 6834 0641 7374725F 		.ascii	"str_length\000"
 6834      6C656E67 
 6834      746800
 6835              	.LASF44:
 6836 064c 5F5F746D 		.ascii	"__tm_yday\000"
 6836      5F796461 
 6836      7900
 6837              	.LASF27:
 6838 0656 5F5F7661 		.ascii	"__value\000"
 6838      6C756500 
 6839              	.LASF79:
 6840 065e 5F696E63 		.ascii	"_inc\000"
 6840      00
 6841              	.LASF131:
 6842 0663 5F426F6F 		.ascii	"_Bool\000"
 6842      6C00
 6843              	.LASF174:
 6844 0669 5553425F 		.ascii	"USB_DT_BOS\000"
 6844      44545F42 
 6844      4F5300
 6845              	.LASF31:
 6846 0674 5F6E6578 		.ascii	"_next\000"
 6846      7400
 6847              	.LASF139:
 6848 067a 5553425F 		.ascii	"USB_REQ_SET_FEATURE\000"
 6848      5245515F 
 6848      5345545F 
 6848      46454154 
 6848      55524500 
 6849              	.LASF288:
 6850 068e 7564635F 		.ascii	"udc_get_eof_conf\000"
 6850      6765745F 
 6850      656F665F 
 6850      636F6E66 
 6850      00
 6851              	.LASF255:
 6852 069f 7564695F 		.ascii	"udi_api\000"
 6852      61706900 
 6853              	.LASF213:
ARM GAS  /tmp/cc1oZp4Q.s 			page 151


 6854 06a7 62496E74 		.ascii	"bInterfaceProtocol\000"
 6854      65726661 
 6854      63655072 
 6854      6F746F63 
 6854      6F6C00
 6855              	.LASF183:
 6856 06ba 7573625F 		.ascii	"usb_setup_req_t\000"
 6856      73657475 
 6856      705F7265 
 6856      715F7400 
 6857              	.LASF246:
 6858 06ca 7564635F 		.ascii	"udc_ptr_conf\000"
 6858      7074725F 
 6858      636F6E66 
 6858      00
 6859              	.LASF211:
 6860 06d7 62496E74 		.ascii	"bInterfaceClass\000"
 6860      65726661 
 6860      6365436C 
 6860      61737300 
 6861              	.LASF282:
 6862 06e7 7564635F 		.ascii	"udc_iface_disable\000"
 6862      69666163 
 6862      655F6469 
 6862      7361626C 
 6862      6500
 6863              	.LASF240:
 6864 06f9 6F766572 		.ascii	"over_under_run\000"
 6864      5F756E64 
 6864      65725F72 
 6864      756E00
 6865              	.LASF276:
 6866 0708 7564635F 		.ascii	"udc_sof_notify\000"
 6866      736F665F 
 6866      6E6F7469 
 6866      667900
 6867              	.LASF87:
 6868 0717 5F703573 		.ascii	"_p5s\000"
 6868      00
 6869              	.LASF234:
 6870 071c 636F6E66 		.ascii	"conf_bos\000"
 6870      5F626F73 
 6870      00
 6871              	.LASF122:
 6872 0725 5F776373 		.ascii	"_wcsrtombs_state\000"
 6872      72746F6D 
 6872      62735F73 
 6872      74617465 
 6872      00
 6873              	.LASF233:
 6874 0736 636F6E66 		.ascii	"conf_lsfs\000"
 6874      5F6C7366 
 6874      7300
 6875              	.LASF258:
 6876 0740 7564635F 		.ascii	"udc_req_std_iface_set_setting\000"
 6876      7265715F 
 6876      7374645F 
ARM GAS  /tmp/cc1oZp4Q.s 			page 152


 6876      69666163 
 6876      655F7365 
 6877              	.LASF96:
 6878 075e 63686172 		.ascii	"char\000"
 6878      00
 6879              	.LASF161:
 6880 0763 7573625F 		.ascii	"usb_endpoint_feature\000"
 6880      656E6470 
 6880      6F696E74 
 6880      5F666561 
 6880      74757265 
 6881              	.LASF40:
 6882 0778 5F5F746D 		.ascii	"__tm_mday\000"
 6882      5F6D6461 
 6882      7900
 6883              	.LASF93:
 6884 0782 5F736967 		.ascii	"_sig_func\000"
 6884      5F66756E 
 6884      6300
 6885              	.LASF119:
 6886 078c 5F6D6272 		.ascii	"_mbrtowc_state\000"
 6886      746F7763 
 6886      5F737461 
 6886      746500
 6887              	.LASF92:
 6888 079b 5F617465 		.ascii	"_atexit0\000"
 6888      78697430 
 6888      00
 6889              	.LASF254:
 6890 07a4 69666163 		.ascii	"iface_num\000"
 6890      655F6E75 
 6890      6D00
 6891              	.LASF302:
 6892 07ae 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70_RTOS"
 6892      652F746F 
 6892      72626A6F 
 6892      726E2F65 
 6892      636C6970 
 6893 07e1 00       		.ascii	"\000"
 6894              	.LASF222:
 6895 07e2 73747269 		.ascii	"string\000"
 6895      6E6700
 6896              	.LASF154:
 6897 07e9 5553425F 		.ascii	"USB_EP_STATUS_HALTED\000"
 6897      45505F53 
 6897      54415455 
 6897      535F4841 
 6897      4C544544 
 6898              	.LASF86:
 6899 07fe 5F726573 		.ascii	"_result_k\000"
 6899      756C745F 
 6899      6B00
 6900              	.LASF24:
 6901 0808 5F5F7763 		.ascii	"__wch\000"
 6901      6800
 6902              	.LASF100:
 6903 080e 5F696F62 		.ascii	"_iobs\000"
ARM GAS  /tmp/cc1oZp4Q.s 			page 153


 6903      7300
 6904              	.LASF13:
 6905 0814 75696E74 		.ascii	"uint8_t\000"
 6905      385F7400 
 6906              	.LASF242:
 6907 081c 7564645F 		.ascii	"udd_g_ctrlreq\000"
 6907      675F6374 
 6907      726C7265 
 6907      7100
 6908              	.LASF65:
 6909 082a 5F636C6F 		.ascii	"_close\000"
 6909      736500
 6910              	.LASF235:
 6911 0831 7564635F 		.ascii	"udc_config_t\000"
 6911      636F6E66 
 6911      69675F74 
 6911      00
 6912              	.LASF83:
 6913 083e 5F5F7364 		.ascii	"__sdidinit\000"
 6913      6964696E 
 6913      697400
 6914              	.LASF284:
 6915 0849 7074725F 		.ascii	"ptr_end_desc\000"
 6915      656E645F 
 6915      64657363 
 6915      00
 6916              	.LASF76:
 6917 0856 5F737464 		.ascii	"_stdin\000"
 6917      696E00
 6918              	.LASF109:
 6919 085d 5F67616D 		.ascii	"_gamma_signgam\000"
 6919      6D615F73 
 6919      69676E67 
 6919      616D00
 6920              	.LASF11:
 6921 086c 6C6F6E67 		.ascii	"long long int\000"
 6921      206C6F6E 
 6921      6720696E 
 6921      7400
 6922              	.LASF143:
 6923 087a 5553425F 		.ascii	"USB_REQ_GET_CONFIGURATION\000"
 6923      5245515F 
 6923      4745545F 
 6923      434F4E46 
 6923      49475552 
 6924              	.LASF227:
 6925 0894 67657473 		.ascii	"getsetting\000"
 6925      65747469 
 6925      6E6700
 6926              	.LASF55:
 6927 089f 5F626173 		.ascii	"_base\000"
 6927      6500
 6928              	.LASF88:
 6929 08a5 5F667265 		.ascii	"_freelist\000"
 6929      656C6973 
 6929      7400
 6930              	.LASF103:
ARM GAS  /tmp/cc1oZp4Q.s 			page 154


 6931 08af 5F6D756C 		.ascii	"_mult\000"
 6931      7400
 6932              	.LASF104:
 6933 08b5 5F616464 		.ascii	"_add\000"
 6933      00
 6934              	.LASF249:
 6935 08ba 7564635F 		.ascii	"udc_string_manufacturer_name\000"
 6935      73747269 
 6935      6E675F6D 
 6935      616E7566 
 6935      61637475 
 6936              	.LASF142:
 6937 08d7 5553425F 		.ascii	"USB_REQ_SET_DESCRIPTOR\000"
 6937      5245515F 
 6937      5345545F 
 6937      44455343 
 6937      52495054 
 6938              	.LASF121:
 6939 08ee 5F776372 		.ascii	"_wcrtomb_state\000"
 6939      746F6D62 
 6939      5F737461 
 6939      746500
 6940              	.LASF260:
 6941 08fd 7564635F 		.ascii	"udc_req_std_iface_get_setting\000"
 6941      7265715F 
 6941      7374645F 
 6941      69666163 
 6941      655F6765 
 6942              	.LASF177:
 6943 091b 5553425F 		.ascii	"USB_LANGID_EN_US\000"
 6943      4C414E47 
 6943      49445F45 
 6943      4E5F5553 
 6943      00
 6944              	.LASF140:
 6945 092c 5553425F 		.ascii	"USB_REQ_SET_ADDRESS\000"
 6945      5245515F 
 6945      5345545F 
 6945      41444452 
 6945      45535300 
 6946              	.LASF265:
 6947 0940 636F6E66 		.ascii	"conf_num\000"
 6947      5F6E756D 
 6947      00
 6948              	.LASF84:
 6949 0949 5F5F636C 		.ascii	"__cleanup\000"
 6949      65616E75 
 6949      7000
 6950              	.LASF112:
 6951 0953 5F6D626C 		.ascii	"_mblen_state\000"
 6951      656E5F73 
 6951      74617465 
 6951      00
 6952              	.LASF28:
 6953 0960 5F6D6273 		.ascii	"_mbstate_t\000"
 6953      74617465 
 6953      5F7400
ARM GAS  /tmp/cc1oZp4Q.s 			page 155


 6954              	.LASF20:
 6955 096b 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 6955      4B5F5245 
 6955      43555253 
 6955      4956455F 
 6955      5400
 6956              	.LASF245:
 6957 097d 7564635F 		.ascii	"udc_num_configuration\000"
 6957      6E756D5F 
 6957      636F6E66 
 6957      69677572 
 6957      6174696F 
 6958              	.LASF45:
 6959 0993 5F5F746D 		.ascii	"__tm_isdst\000"
 6959      5F697364 
 6959      737400
 6960              	.LASF252:
 6961 099e 68656164 		.ascii	"header\000"
 6961      657200
 6962              	.LASF10:
 6963 09a5 6C6F6E67 		.ascii	"long unsigned int\000"
 6963      20756E73 
 6963      69676E65 
 6963      6420696E 
 6963      7400
 6964              	.LASF279:
 6965 09b7 7564635F 		.ascii	"udc_start\000"
 6965      73746172 
 6965      7400
 6966              	.LASF52:
 6967 09c1 5F696E64 		.ascii	"_ind\000"
 6967      00
 6968              	.LASF201:
 6969 09c6 7573625F 		.ascii	"usb_dev_bos_desc_t\000"
 6969      6465765F 
 6969      626F735F 
 6969      64657363 
 6969      5F7400
 6970              	.LASF243:
 6971 09d9 7564635F 		.ascii	"udc_device_status\000"
 6971      64657669 
 6971      63655F73 
 6971      74617475 
 6971      7300
 6972              	.LASF41:
 6973 09eb 5F5F746D 		.ascii	"__tm_mon\000"
 6973      5F6D6F6E 
 6973      00
 6974              	.LASF189:
 6975 09f4 62446576 		.ascii	"bDeviceProtocol\000"
 6975      69636550 
 6975      726F746F 
 6975      636F6C00 
 6976              	.LASF14:
 6977 0a04 75696E74 		.ascii	"uint16_t\000"
 6977      31365F74 
 6977      00
ARM GAS  /tmp/cc1oZp4Q.s 			page 156


 6978              	.LASF63:
 6979 0a0d 5F777269 		.ascii	"_write\000"
 6979      746500
 6980              	.LASF191:
 6981 0a14 69645665 		.ascii	"idVendor\000"
 6981      6E646F72 
 6981      00
 6982              	.LASF9:
 6983 0a1d 5F5F7569 		.ascii	"__uint32_t\000"
 6983      6E743332 
 6983      5F7400
 6984              	.LASF123:
 6985 0a28 5F685F65 		.ascii	"_h_errno\000"
 6985      72726E6F 
 6985      00
 6986              	.LASF228:
 6987 0a31 736F665F 		.ascii	"sof_notify\000"
 6987      6E6F7469 
 6987      667900
 6988              	.LASF248:
 6989 0a3c 7564635F 		.ascii	"udc_string_desc_languageid\000"
 6989      73747269 
 6989      6E675F64 
 6989      6573635F 
 6989      6C616E67 
 6990              	.LASF51:
 6991 0a57 5F617465 		.ascii	"_atexit\000"
 6991      78697400 
 6992              	.LASF270:
 6993 0a5f 7564635F 		.ascii	"udc_req_std_dev_set_feature\000"
 6993      7265715F 
 6993      7374645F 
 6993      6465765F 
 6993      7365745F 
 6994              	.LASF231:
 6995 0a7b 7564635F 		.ascii	"udc_config_speed_t\000"
 6995      636F6E66 
 6995      69675F73 
 6995      70656564 
 6995      5F7400
 6996              	.LASF8:
 6997 0a8e 6C6F6E67 		.ascii	"long int\000"
 6997      20696E74 
 6997      00
 6998              	.LASF303:
 6999 0a97 7564635F 		.ascii	"udc_process_setup\000"
 6999      70726F63 
 6999      6573735F 
 6999      73657475 
 6999      7000
 7000              	.LASF202:
 7001 0aa9 624E756D 		.ascii	"bNumInterfaces\000"
 7001      496E7465 
 7001      72666163 
 7001      657300
 7002              	.LASF18:
 7003 0ab8 49544D5F 		.ascii	"ITM_RxBuffer\000"
ARM GAS  /tmp/cc1oZp4Q.s 			page 157


 7003      52784275 
 7003      66666572 
 7003      00
 7004              	.LASF134:
 7005 0ac5 6C653136 		.ascii	"le16_t\000"
 7005      5F7400
 7006              	.LASF182:
 7007 0acc 774C656E 		.ascii	"wLength\000"
 7007      67746800 
 7008              	.LASF95:
 7009 0ad4 5F5F7366 		.ascii	"__sf\000"
 7009      00
 7010              	.LASF33:
 7011 0ad9 5F736967 		.ascii	"_sign\000"
 7011      6E00
 7012              	.LASF144:
 7013 0adf 5553425F 		.ascii	"USB_REQ_SET_CONFIGURATION\000"
 7013      5245515F 
 7013      5345545F 
 7013      434F4E46 
 7013      49475552 
 7014              	.LASF277:
 7015 0af9 7564635F 		.ascii	"udc_reset\000"
 7015      72657365 
 7015      7400
 7016              	.LASF82:
 7017 0b03 5F637572 		.ascii	"_current_locale\000"
 7017      72656E74 
 7017      5F6C6F63 
 7017      616C6500 
 7018              	.LASF70:
 7019 0b13 5F646174 		.ascii	"_data\000"
 7019      6100
 7020              	.LASF25:
 7021 0b19 5F5F7763 		.ascii	"__wchb\000"
 7021      686200
 7022              	.LASF259:
 7023 0b20 73657474 		.ascii	"setting_num\000"
 7023      696E675F 
 7023      6E756D00 
 7024              	.LASF42:
 7025 0b2c 5F5F746D 		.ascii	"__tm_year\000"
 7025      5F796561 
 7025      7200
 7026              	.LASF216:
 7027 0b36 62456E64 		.ascii	"bEndpointAddress\000"
 7027      706F696E 
 7027      74416464 
 7027      72657373 
 7027      00
 7028              	.LASF59:
 7029 0b47 5F66696C 		.ascii	"_file\000"
 7029      6500
 7030              	.LASF204:
 7031 0b4d 69436F6E 		.ascii	"iConfiguration\000"
 7031      66696775 
 7031      72617469 
ARM GAS  /tmp/cc1oZp4Q.s 			page 158


 7031      6F6E00
 7032              	.LASF178:
 7033 0b5c 626D5265 		.ascii	"bmRequestType\000"
 7033      71756573 
 7033      74547970 
 7033      6500
 7034              	.LASF138:
 7035 0b6a 5553425F 		.ascii	"USB_REQ_CLEAR_FEATURE\000"
 7035      5245515F 
 7035      434C4541 
 7035      525F4645 
 7035      41545552 
 7036              	.LASF169:
 7037 0b80 5553425F 		.ascii	"USB_DT_DEVICE_QUALIFIER\000"
 7037      44545F44 
 7037      45564943 
 7037      455F5155 
 7037      414C4946 
 7038              	.LASF232:
 7039 0b98 636F6E66 		.ascii	"confdev_lsfs\000"
 7039      6465765F 
 7039      6C736673 
 7039      00
 7040              	.LASF108:
 7041 0ba5 5F6C6F63 		.ascii	"_localtime_buf\000"
 7041      616C7469 
 7041      6D655F62 
 7041      756600
 7042              	.LASF126:
 7043 0bb4 5F756E75 		.ascii	"_unused\000"
 7043      73656400 
 7044              	.LASF4:
 7045 0bbc 5F5F7569 		.ascii	"__uint8_t\000"
 7045      6E74385F 
 7045      7400
 7046              	.LASF141:
 7047 0bc6 5553425F 		.ascii	"USB_REQ_GET_DESCRIPTOR\000"
 7047      5245515F 
 7047      4745545F 
 7047      44455343 
 7047      52495054 
 7048              	.LASF91:
 7049 0bdd 5F6E6577 		.ascii	"_new\000"
 7049      00
 7050              	.LASF274:
 7051 0be2 7564635F 		.ascii	"udc_ep_status\000"
 7051      65705F73 
 7051      74617475 
 7051      7300
 7052              	.LASF89:
 7053 0bf0 5F637674 		.ascii	"_cvtlen\000"
 7053      6C656E00 
 7054              	.LASF32:
 7055 0bf8 5F6D6178 		.ascii	"_maxwds\000"
 7055      77647300 
 7056              	.LASF272:
 7057 0c00 7564635F 		.ascii	"udc_req_std_dev_clear_feature\000"
ARM GAS  /tmp/cc1oZp4Q.s 			page 159


 7057      7265715F 
 7057      7374645F 
 7057      6465765F 
 7057      636C6561 
 7058              	.LASF81:
 7059 0c1e 5F637572 		.ascii	"_current_category\000"
 7059      72656E74 
 7059      5F636174 
 7059      65676F72 
 7059      7900
 7060              	.LASF229:
 7061 0c30 7564695F 		.ascii	"udi_api_t\000"
 7061      6170695F 
 7061      7400
 7062              	.LASF296:
 7063 0c3a 7564645F 		.ascii	"udd_disable\000"
 7063      64697361 
 7063      626C6500 
 7064              	.LASF225:
 7065 0c46 64697361 		.ascii	"disable\000"
 7065      626C6500 
 7066              	.LASF294:
 7067 0c4e 7564645F 		.ascii	"udd_ep_clear_halt\000"
 7067      65705F63 
 7067      6C656172 
 7067      5F68616C 
 7067      7400
 7068              	.LASF68:
 7069 0c60 5F626C6B 		.ascii	"_blksize\000"
 7069      73697A65 
 7069      00
 7070              	.LASF165:
 7071 0c69 5553425F 		.ascii	"USB_DT_CONFIGURATION\000"
 7071      44545F43 
 7071      4F4E4649 
 7071      47555241 
 7071      54494F4E 
 7072              	.LASF36:
 7073 0c7e 5F5F746D 		.ascii	"__tm\000"
 7073      00
 7074              	.LASF71:
 7075 0c83 5F6C6F63 		.ascii	"_lock\000"
 7075      6B00
 7076              	.LASF146:
 7077 0c89 5553425F 		.ascii	"USB_REQ_SET_INTERFACE\000"
 7077      5245515F 
 7077      5345545F 
 7077      494E5445 
 7077      52464143 
 7078              	.LASF17:
 7079 0c9f 73697A65 		.ascii	"sizetype\000"
 7079      74797065 
 7079      00
 7080              	.LASF205:
 7081 0ca8 626D4174 		.ascii	"bmAttributes\000"
 7081      74726962 
 7081      75746573 
ARM GAS  /tmp/cc1oZp4Q.s 			page 160


 7081      00
 7082              	.LASF196:
 7083 0cb5 69536572 		.ascii	"iSerialNumber\000"
 7083      69616C4E 
 7083      756D6265 
 7083      7200
 7084              	.LASF132:
 7085 0cc3 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 7085      6972715F 
 7085      63726974 
 7085      6963616C 
 7085      5F736563 
 7086              	.LASF99:
 7087 0ce4 5F6E696F 		.ascii	"_niobs\000"
 7087      627300
 7088              	.LASF23:
 7089 0ceb 77696E74 		.ascii	"wint_t\000"
 7089      5F7400
 7090              	.LASF156:
 7091 0cf2 5553425F 		.ascii	"USB_DEV_FEATURE_REMOTE_WAKEUP\000"
 7091      4445565F 
 7091      46454154 
 7091      5552455F 
 7091      52454D4F 
 7092              	.LASF289:
 7093 0d10 7564645F 		.ascii	"udd_set_setup_payload\000"
 7093      7365745F 
 7093      73657475 
 7093      705F7061 
 7093      796C6F61 
 7094              	.LASF168:
 7095 0d26 5553425F 		.ascii	"USB_DT_ENDPOINT\000"
 7095      44545F45 
 7095      4E44504F 
 7095      494E5400 
 7096              	.LASF150:
 7097 0d36 5553425F 		.ascii	"USB_DEV_STATUS_BUS_POWERED\000"
 7097      4445565F 
 7097      53544154 
 7097      55535F42 
 7097      55535F50 
 7098              	.LASF15:
 7099 0d51 696E7433 		.ascii	"int32_t\000"
 7099      325F7400 
 7100              	.LASF203:
 7101 0d59 62436F6E 		.ascii	"bConfigurationValue\000"
 7101      66696775 
 7101      72617469 
 7101      6F6E5661 
 7101      6C756500 
 7102              	.LASF170:
 7103 0d6d 5553425F 		.ascii	"USB_DT_OTHER_SPEED_CONFIGURATION\000"
 7103      44545F4F 
 7103      54484552 
 7103      5F535045 
 7103      45445F43 
 7104              	.LASF48:
ARM GAS  /tmp/cc1oZp4Q.s 			page 161


 7105 0d8e 5F64736F 		.ascii	"_dso_handle\000"
 7105      5F68616E 
 7105      646C6500 
 7106              	.LASF167:
 7107 0d9a 5553425F 		.ascii	"USB_DT_INTERFACE\000"
 7107      44545F49 
 7107      4E544552 
 7107      46414345 
 7107      00
 7108              	.LASF172:
 7109 0dab 5553425F 		.ascii	"USB_DT_OTG\000"
 7109      44545F4F 
 7109      544700
 7110              	.LASF244:
 7111 0db6 7564635F 		.ascii	"udc_iface_setting\000"
 7111      69666163 
 7111      655F7365 
 7111      7474696E 
 7111      6700
 7112              	.LASF257:
 7113 0dc8 7564635F 		.ascii	"udc_req_iface\000"
 7113      7265715F 
 7113      69666163 
 7113      6500
 7114              	.LASF90:
 7115 0dd6 5F637674 		.ascii	"_cvtbuf\000"
 7115      62756600 
 7116              	.LASF2:
 7117 0dde 756E7369 		.ascii	"unsigned char\000"
 7117      676E6564 
 7117      20636861 
 7117      7200
 7118              	.LASF226:
 7119 0dec 73657475 		.ascii	"setup\000"
 7119      7000
 7120              	.LASF290:
 7121 0df2 7564645F 		.ascii	"udd_ep_abort\000"
 7121      65705F61 
 7121      626F7274 
 7121      00
 7122              	.LASF209:
 7123 0dff 62416C74 		.ascii	"bAlternateSetting\000"
 7123      65726E61 
 7123      74655365 
 7123      7474696E 
 7123      6700
 7124              	.LASF129:
 7125 0e11 7375626F 		.ascii	"suboptarg\000"
 7125      70746172 
 7125      6700
 7126              	.LASF145:
 7127 0e1b 5553425F 		.ascii	"USB_REQ_GET_INTERFACE\000"
 7127      5245515F 
 7127      4745545F 
 7127      494E5445 
 7127      52464143 
 7128              	.LASF268:
ARM GAS  /tmp/cc1oZp4Q.s 			page 162


 7129 0e31 7564635F 		.ascii	"udc_req_std_dev_set_address\000"
 7129      7265715F 
 7129      7374645F 
 7129      6465765F 
 7129      7365745F 
 7130              	.LASF62:
 7131 0e4d 5F726561 		.ascii	"_read\000"
 7131      6400
 7132              	.LASF118:
 7133 0e53 5F6D6272 		.ascii	"_mbrlen_state\000"
 7133      6C656E5F 
 7133      73746174 
 7133      6500
 7134              	.LASF292:
 7135 0e61 7564645F 		.ascii	"udd_ep_is_halted\000"
 7135      65705F69 
 7135      735F6861 
 7135      6C746564 
 7135      00
 7136              	.LASF155:
 7137 0e72 7573625F 		.ascii	"usb_device_feature\000"
 7137      64657669 
 7137      63655F66 
 7137      65617475 
 7137      726500
 7138              	.LASF300:
 7139 0e85 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 7139      43393920 
 7139      362E332E 
 7139      31203230 
 7139      31373036 
 7140 0eb8 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 7140      76352D64 
 7140      3136202D 
 7140      6D666C6F 
 7140      61742D61 
 7141 0eeb 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 7141      6E2D7365 
 7141      6374696F 
 7141      6E73202D 
 7141      66646174 
 7142 0f1e 6F6E7374 		.ascii	"onstant\000"
 7142      616E7400 
 7143              	.LASF185:
 7144 0f26 62446573 		.ascii	"bDescriptorType\000"
 7144      63726970 
 7144      746F7254 
 7144      79706500 
 7145              	.LASF54:
 7146 0f36 5F5F7362 		.ascii	"__sbuf\000"
 7146      756600
 7147              	.LASF148:
 7148 0f3d 7573625F 		.ascii	"usb_reqid\000"
 7148      72657169 
 7148      6400
 7149              	.LASF115:
 7150 0f47 5F6C3634 		.ascii	"_l64a_buf\000"
ARM GAS  /tmp/cc1oZp4Q.s 			page 163


 7150      615F6275 
 7150      6600
 7151              	.LASF239:
 7152 0f51 63616C6C 		.ascii	"callback\000"
 7152      6261636B 
 7152      00
 7153              	.LASF197:
 7154 0f5a 624E756D 		.ascii	"bNumConfigurations\000"
 7154      436F6E66 
 7154      69677572 
 7154      6174696F 
 7154      6E7300
 7155              	.LASF198:
 7156 0f6d 7573625F 		.ascii	"usb_dev_desc_t\000"
 7156      6465765F 
 7156      64657363 
 7156      5F7400
 7157              	.LASF262:
 7158 0f7c 7564635F 		.ascii	"udc_reqstd\000"
 7158      72657173 
 7158      746400
 7159              	.LASF94:
 7160 0f87 5F5F7367 		.ascii	"__sglue\000"
 7160      6C756500 
 7161              	.LASF117:
 7162 0f8f 5F676574 		.ascii	"_getdate_err\000"
 7162      64617465 
 7162      5F657272 
 7162      00
 7163              	.LASF106:
 7164 0f9c 5F737472 		.ascii	"_strtok_last\000"
 7164      746F6B5F 
 7164      6C617374 
 7164      00
 7165              	.LASF113:
 7166 0fa9 5F6D6274 		.ascii	"_mbtowc_state\000"
 7166      6F77635F 
 7166      73746174 
 7166      6500
 7167              	.LASF162:
 7168 0fb7 5553425F 		.ascii	"USB_EP_FEATURE_HALT\000"
 7168      45505F46 
 7168      45415455 
 7168      52455F48 
 7168      414C5400 
 7169              	.LASF47:
 7170 0fcb 5F666E61 		.ascii	"_fnargs\000"
 7170      72677300 
 7171              	.LASF1:
 7172 0fd3 7369676E 		.ascii	"signed char\000"
 7172      65642063 
 7172      68617200 
 7173              	.LASF74:
 7174 0fdf 5F726565 		.ascii	"_reent\000"
 7174      6E7400
 7175              	.LASF6:
 7176 0fe6 73686F72 		.ascii	"short unsigned int\000"
ARM GAS  /tmp/cc1oZp4Q.s 			page 164


 7176      7420756E 
 7176      7369676E 
 7176      65642069 
 7176      6E7400
 7177              	.LASF215:
 7178 0ff9 7573625F 		.ascii	"usb_iface_desc_t\000"
 7178      69666163 
 7178      655F6465 
 7178      73635F74 
 7178      00
 7179              	.LASF285:
 7180 100a 7564635F 		.ascii	"udc_next_desc_in_iface\000"
 7180      6E657874 
 7180      5F646573 
 7180      635F696E 
 7180      5F696661 
 7181              	.LASF236:
 7182 1021 7564635F 		.ascii	"udc_config\000"
 7182      636F6E66 
 7182      696700
 7183              	.LASF147:
 7184 102c 5553425F 		.ascii	"USB_REQ_SYNCH_FRAME\000"
 7184      5245515F 
 7184      53594E43 
 7184      485F4652 
 7184      414D4500 
 7185              	.LASF49:
 7186 1040 5F666E74 		.ascii	"_fntypes\000"
 7186      79706573 
 7186      00
 7187              	.LASF281:
 7188 1049 65705F64 		.ascii	"ep_desc\000"
 7188      65736300 
 7189              	.LASF56:
 7190 1051 5F73697A 		.ascii	"_size\000"
 7190      6500
 7191              	.LASF136:
 7192 1057 646F7562 		.ascii	"double\000"
 7192      6C6500
 7193              	.LASF157:
 7194 105e 5553425F 		.ascii	"USB_DEV_FEATURE_TEST_MODE\000"
 7194      4445565F 
 7194      46454154 
 7194      5552455F 
 7194      54455354 
 7195              	.LASF21:
 7196 1078 5F6F6666 		.ascii	"_off_t\000"
 7196      5F7400
 7197              	.LASF67:
 7198 107f 5F6E6275 		.ascii	"_nbuf\000"
 7198      6600
 7199              	.LASF105:
 7200 1085 5F756E75 		.ascii	"_unused_rand\000"
 7200      7365645F 
 7200      72616E64 
 7200      00
 7201              	.LASF207:
ARM GAS  /tmp/cc1oZp4Q.s 			page 165


 7202 1092 7573625F 		.ascii	"usb_conf_desc_t\000"
 7202      636F6E66 
 7202      5F646573 
 7202      635F7400 
 7203              	.LASF153:
 7204 10a2 7573625F 		.ascii	"usb_endpoint_status\000"
 7204      656E6470 
 7204      6F696E74 
 7204      5F737461 
 7204      74757300 
 7205              	.LASF184:
 7206 10b6 624C656E 		.ascii	"bLength\000"
 7206      67746800 
 7207              	.LASF220:
 7208 10be 7573625F 		.ascii	"usb_str_desc_t\000"
 7208      7374725F 
 7208      64657363 
 7208      5F7400
 7209              	.LASF221:
 7210 10cd 64657363 		.ascii	"desc\000"
 7210      00
 7211              	.LASF73:
 7212 10d2 5F666C61 		.ascii	"_flags2\000"
 7212      67733200 
 7213              	.LASF230:
 7214 10da 7564695F 		.ascii	"udi_apis\000"
 7214      61706973 
 7214      00
 7215              	.LASF50:
 7216 10e3 5F69735F 		.ascii	"_is_cxa\000"
 7216      63786100 
 7217              	.LASF283:
 7218 10eb 7564635F 		.ascii	"udc_update_iface_desc\000"
 7218      75706461 
 7218      74655F69 
 7218      66616365 
 7218      5F646573 
 7219              	.LASF102:
 7220 1101 5F736565 		.ascii	"_seed\000"
 7220      6400
 7221              	.LASF110:
 7222 1107 5F72616E 		.ascii	"_rand_next\000"
 7222      645F6E65 
 7222      787400
 7223              	.LASF219:
 7224 1112 7573625F 		.ascii	"usb_ep_desc_t\000"
 7224      65705F64 
 7224      6573635F 
 7224      7400
 7225              	.LASF64:
 7226 1120 5F736565 		.ascii	"_seek\000"
 7226      6B00
 7227              	.LASF256:
 7228 1126 7564635F 		.ascii	"udc_req_ep\000"
 7228      7265715F 
 7228      657000
 7229              	.LASF78:
ARM GAS  /tmp/cc1oZp4Q.s 			page 166


 7230 1131 5F737464 		.ascii	"_stderr\000"
 7230      65727200 
 7231              	.LASF125:
 7232 1139 5F6E6D61 		.ascii	"_nmalloc\000"
 7232      6C6C6F63 
 7232      00
 7233              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
