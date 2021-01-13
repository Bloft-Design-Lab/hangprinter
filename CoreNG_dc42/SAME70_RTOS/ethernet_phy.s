ARM GAS  /tmp/ccPmdm0I.s 			page 1


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
  12              		.file	"ethernet_phy.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.ethernet_phy_set_link,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	ethernet_phy_set_link
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	ethernet_phy_set_link, %function
  25              	ethernet_phy_set_link:
  26              	.LFB220:
  27              		.file 1 "../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c"
   1:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  /**
   2:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * \file
   3:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  *
   4:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * \brief API driver for KSZ8081RNA PHY component.
   5:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  *
   6:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * Copyright (c) 2015 Atmel Corporation. All rights reserved.
   7:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  *
   8:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * \asf_license_start
   9:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  *
  10:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * \page License
  11:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  *
  12:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * Redistribution and use in source and binary forms, with or without
  13:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * modification, are permitted provided that the following conditions are met:
  14:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  *
  15:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  *    this list of conditions and the following disclaimer.
  17:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  *
  18:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  *    this list of conditions and the following disclaimer in the documentation
  20:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  *    and/or other materials provided with the distribution.
  21:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  *
  22:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  *    from this software without specific prior written permission.
  24:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  *
  25:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * 4. This software may only be redistributed and used in connection with an
  26:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  *    Atmel microcontroller product.
  27:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  *
  28:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
ARM GAS  /tmp/ccPmdm0I.s 			page 2


  31:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  *
  40:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * \asf_license_stop
  41:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  *
  42:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  */
  43:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** /*
  44:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  */
  46:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
  47:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** #include "ethernet_phy.h"
  48:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** #include "pio.h"
  49:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** #include "gmac.h"
  50:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** #include "conf_eth.h"
  51:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** #include "board.h"
  52:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
  53:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** /// @cond 0
  54:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** /**INDENT-OFF**/
  55:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** #ifdef __cplusplus
  56:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** extern "C" {
  57:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** #endif
  58:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** /**INDENT-ON**/
  59:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** /// @endcond
  60:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
  61:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** /**
  62:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * \defgroup ksz8081rna_ethernet_phy_group PHY component (KSZ8081RNA)
  63:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  *
  64:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * Driver for the ksz8081rna component. This driver provides access to the main
  65:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * features of the PHY.
  66:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  *
  67:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * \section dependencies Dependencies
  68:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * This driver depends on the following modules:
  69:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * - \ref gmac_group Ethernet Media Access Controller (GMAC) module.
  70:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  *
  71:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * @{
  72:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  */
  73:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
  74:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** /* Max PHY number */
  75:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** #define ETH_PHY_MAX_ADDR   31
  76:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
  77:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** #if 0	// chrishamm
  78:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** /* Ethernet PHY operation max retry count */
  79:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** #define ETH_PHY_RETRY_MAX 1000000
  80:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** #endif
  81:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
  82:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** /* Ethernet PHY operation timeout */
  83:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** #define ETH_PHY_TIMEOUT 10
  84:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
  85:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** /**
  86:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * \brief Find a valid PHY Address ( from addrStart to 31 ).
  87:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  *
ARM GAS  /tmp/ccPmdm0I.s 			page 3


  88:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * \param p_gmac   Pointer to the GMAC instance.
  89:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * \param uc_phy_addr PHY address.
  90:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * \param uc_start_addr Start address of the PHY to be searched.
  91:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  *
  92:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * \return 0xFF when no valid PHY address is found.
  93:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  */
  94:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** static uint8_t ethernet_phy_find_valid(Gmac *p_gmac, uint8_t uc_phy_addr,
  95:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uint8_t uc_start_addr)
  96:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** {
  97:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uint32_t ul_value = 0;
  98:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uint8_t uc_rc = 0;
  99:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uint8_t uc_cnt;
 100:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uint8_t uc_phy_address = uc_phy_addr;
 101:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 102:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	gmac_enable_management(p_gmac, true);
 103:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****     uc_rc = uc_phy_address;
 104:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	/* Check the current PHY address */
 105:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	gmac_phy_read(p_gmac, uc_phy_addr, GMII_PHYID1, &ul_value);
 106:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 107:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	/* Find another one */
 108:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	if (ul_value != GMII_OUI_MSB) {
 109:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_rc = 0xFF;
 110:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		for (uc_cnt = uc_start_addr; uc_cnt <= ETH_PHY_MAX_ADDR; uc_cnt++) {
 111:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 			uc_phy_address = (uc_phy_address + 1) & 0x1F;
 112:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 			gmac_phy_read(p_gmac, uc_phy_address, GMII_PHYID1, &ul_value);
 113:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 			if (ul_value == GMII_OUI_MSB) {
 114:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 				uc_rc = uc_phy_address;
 115:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 				break;
 116:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 			}
 117:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		}
 118:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	}
 119:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 120:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	gmac_enable_management(p_gmac, false);
 121:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 122:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	if (uc_rc != 0xFF) {
 123:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		gmac_phy_read(p_gmac, uc_phy_address, GMII_BMSR, &ul_value);
 124:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	}
 125:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	return uc_rc;
 126:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** }
 127:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 128:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 129:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** /**
 130:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * \brief Perform a HW initialization to the PHY and set up clocks.
 131:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  *
 132:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * This should be called only once to initialize the PHY pre-settings.
 133:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * The PHY address is the reset status of CRS, RXD[3:0] (the emacPins' pullups).
 134:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * The COL pin is used to select MII mode on reset (pulled up for Reduced MII).
 135:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * The RXDV pin is used to select test mode on reset (pulled up for test mode).
 136:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * The above pins should be predefined for corresponding settings in resetPins.
 137:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * The GMAC peripheral pins are configured after the reset is done.
 138:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  *
 139:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * \param p_gmac   Pointer to the GMAC instance.
 140:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * \param uc_phy_addr PHY address.
 141:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * \param ul_mck GMAC MCK.
 142:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  *
 143:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * Return GMAC_OK if successfully, GMAC_TIMEOUT if timeout.
 144:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  */
ARM GAS  /tmp/ccPmdm0I.s 			page 4


 145:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** uint8_t ethernet_phy_init(Gmac *p_gmac, uint8_t uc_phy_addr, uint32_t mck)
 146:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** {
 147:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uint8_t uc_rc;
 148:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uint8_t uc_phy;
 149:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 150:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** #if 0	// chrishamm
 151:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	pio_set_output(PIN_GMAC_RESET_PIO, PIN_GMAC_RESET_MASK, 1,  false, true);
 152:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	pio_set_input(PIN_GMAC_INT_PIO, PIN_GMAC_INT_MASK, PIO_PULLUP);
 153:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	pio_set_peripheral(PIN_GMAC_PIO, PIN_GMAC_PERIPH, PIN_GMAC_MASK);
 154:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** #endif
 155:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 156:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	ethernet_phy_reset(GMAC,uc_phy_addr);
 157:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 158:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	/* Configure GMAC runtime clock */
 159:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uc_rc = gmac_set_mdc_clock(p_gmac, mck);
 160:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	if (uc_rc != GMAC_OK) {
 161:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		return 0;
 162:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	}
 163:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 164:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	/* Check PHY Address */
 165:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uc_phy = ethernet_phy_find_valid(p_gmac, uc_phy_addr, 0);
 166:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	if (uc_phy == 0xFF) {
 167:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		return 0;
 168:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	}
 169:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	if (uc_phy != uc_phy_addr) {
 170:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		ethernet_phy_reset(p_gmac, uc_phy_addr);
 171:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	}
 172:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 173:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	return uc_rc;
 174:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** }
 175:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 176:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 177:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** /**
 178:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * \brief Get the Link & speed settings, and automatically set up the GMAC with the
 179:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * settings.
 180:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  *
 181:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * \param p_gmac   Pointer to the GMAC instance.
 182:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * \param uc_phy_addr PHY address.
 183:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * \param uc_apply_setting_flag Set to 0 to not apply the PHY configurations, else to apply.
 184:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  *
 185:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * Return GMAC_OK if successfully, GMAC_TIMEOUT if timeout.
 186:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  */
 187:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** uint8_t ethernet_phy_set_link(Gmac *p_gmac, uint8_t uc_phy_addr,
 188:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uint8_t uc_apply_setting_flag)
 189:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** {
  28              		.loc 1 189 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 8
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              	.LVL0:
  33 0000 F0B5     		push	{r4, r5, r6, r7, lr}
  34              		.cfi_def_cfa_offset 20
  35              		.cfi_offset 4, -20
  36              		.cfi_offset 5, -16
  37              		.cfi_offset 6, -12
  38              		.cfi_offset 7, -8
  39              		.cfi_offset 14, -4
ARM GAS  /tmp/ccPmdm0I.s 			page 5


  40              	.LBB64:
  41              	.LBB65:
  42              		.file 2 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h"
   1:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  /**
   2:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \file
   3:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
   4:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief GMAC (Ethernet MAC) driver for SAM.
   5:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
   6:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * Copyright (c) 2013-2016 Atmel Corporation. All rights reserved.
   7:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
   8:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \asf_license_start
   9:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
  10:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \page License
  11:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
  12:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * Redistribution and use in source and binary forms, with or without
  13:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * modification, are permitted provided that the following conditions are met:
  14:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
  15:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *    this list of conditions and the following disclaimer.
  17:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
  18:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *    this list of conditions and the following disclaimer in the documentation
  20:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *    and/or other materials provided with the distribution.
  21:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
  22:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *    from this software without specific prior written permission.
  24:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
  25:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * 4. This software may only be redistributed and used in connection with an
  26:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *    Atmel microcontroller product.
  27:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
  28:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
  31:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * POSSIBILITY OF SUCH DAMAGE.
  39:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
  40:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \asf_license_stop
  41:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
  42:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
  43:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /*
  44:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
  46:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
  47:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #ifndef GMAC_H_INCLUDED
  48:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_H_INCLUDED
  49:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
  50:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #include "compiler.h"
  51:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
  52:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /// @cond 0
  53:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**INDENT-OFF**/
  54:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #ifdef __cplusplus
ARM GAS  /tmp/ccPmdm0I.s 			page 6


  55:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** extern "C" {
  56:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #endif
  57:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**INDENT-ON**/
  58:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /// @endcond
  59:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
  60:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /** The buffer addresses written into the descriptors must be aligned, so the
  61:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****     last few bits are zero.  These bits have special meaning for the GMAC
  62:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****     peripheral and cannot be used as part of the address. */
  63:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_ADDR_MASK      0xFFFFFFFC
  64:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_WRAP           (1ul << 1)  /**< Wrap bit */
  65:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_OWNERSHIP      (1ul << 0)  /**< Ownership bit */
  66:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
  67:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_BROADCAST      (1ul << 31) /**< Broadcast detected */
  68:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_MULTIHASH      (1ul << 30) /**< Multicast hash match */
  69:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_UNIHASH        (1ul << 29) /**< Unicast hash match */
  70:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_ADDR_FOUND     (1ul << 27) /**< Specific address match found */
  71:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_ADDR           (3ul << 25) /**< Address match */
  72:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_RXCOEN         (1ul << 24) /**< RXCOEN related function */
  73:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_TYPE           (3ul << 22) /**< Type ID match */
  74:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_VLAN           (1ul << 21) /**< VLAN tag detected */
  75:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_PRIORITY       (1ul << 20) /**< Priority tag detected */
  76:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_PRIORITY_MASK  (3ul << 17) /**< VLAN priority */
  77:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_CFI            (1ul << 16) /**< Concatenation Format Indicator only if bit 21 is s
  78:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_EOF            (1ul << 15) /**< End of frame */
  79:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_SOF            (1ul << 14) /**< Start of frame */
  80:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_FCS            (1ul << 13) /**< Frame check sequence */
  81:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_OFFSET_MASK                /**< Receive buffer offset */
  82:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_LEN_MASK       (0xFFF)     /**< Length of frame including FCS (if selected) */
  83:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_LENJUMBO_MASK  (0x3FFF)    /**< Jumbo frame length */
  84:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
  85:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_TXD_USED           (1ul << 31) /**< Frame is transmitted */
  86:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_TXD_WRAP           (1ul << 30) /**< Last descriptor */
  87:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_TXD_ERROR          (1ul << 29) /**< Retry limit exceeded, error */
  88:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_TXD_UNDERRUN       (1ul << 28) /**< Transmit underrun */
  89:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_TXD_EXHAUSTED      (1ul << 27) /**< Buffer exhausted */
  90:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_TXD_LATE           (1ul << 26) /**< Late collision,transmit  error  */
  91:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_TXD_CHECKSUM_ERROR (7ul << 20) /**< Checksum error */
  92:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_TXD_NOCRC          (1ul << 16) /**< No CRC */
  93:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_TXD_LAST           (1ul << 15) /**< Last buffer in frame */
  94:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_TXD_LEN_MASK       (0x1FFF)     /**< Length of buffer */
  95:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
  96:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /** The MAC can support frame lengths up to 1536 bytes */
  97:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_FRAME_LENTGH_MAX   1536
  98:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
  99:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_RX_UNITSIZE        128     /**< Fixed size for RX buffer  */
 100:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_TX_UNITSIZE        1518    /**< Size for ETH frame length */
 101:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 102:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /** GMAC clock speed */
 103:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_MCK_SPEED_240MHZ   (240*1000*1000)
 104:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_MCK_SPEED_160MHZ   (160*1000*1000)
 105:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_MCK_SPEED_120MHZ   (120*1000*1000)
 106:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_MCK_SPEED_80MHZ    (80*1000*1000)
 107:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_MCK_SPEED_40MHZ    (40*1000*1000)
 108:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_MCK_SPEED_20MHZ    (20*1000*1000)
 109:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 110:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /** GMAC maintain code default value*/
 111:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_MAN_CODE_VALUE     10
ARM GAS  /tmp/ccPmdm0I.s 			page 7


 112:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 113:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /** GMAC maintain start of frame default value*/
 114:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_MAN_SOF_VALUE      1
 115:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 116:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /** GMAC maintain read/write*/
 117:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_MAN_RW_TYPE        2
 118:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 119:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /** GMAC maintain read only*/
 120:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_MAN_READ_ONLY      1
 121:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 122:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /** GMAC address length */
 123:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_ADDR_LENGTH        6
 124:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 125:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 126:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_DUPLEX_HALF        0
 127:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_DUPLEX_FULL        1
 128:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 129:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_SPEED_10M          0
 130:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #define GMAC_SPEED_100M         1
 131:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 132:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 133:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Return codes for GMAC APIs.
 134:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 135:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** typedef enum {
 136:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	GMAC_OK = 0,         /** Operation OK */
 137:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	GMAC_TIMEOUT = 1,    /** GMAC operation timeout */
 138:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	GMAC_TX_BUSY,        /** TX in progress */
 139:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	GMAC_RX_ERROR,       /** RX error */
 140:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	GMAC_RX_NO_DATA,        /** No data received */
 141:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	GMAC_SIZE_TOO_SMALL, /** Buffer size not enough */
 142:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	GMAC_PARAM,          /** Parameter error, TX packet invalid or RX size too small */
 143:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	GMAC_INVALID = 0xFF, /* Invalid */
 144:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** } gmac_status_t;
 145:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 146:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 147:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Media Independent Interface (MII) type.
 148:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 149:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** typedef enum {
 150:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	GMAC_PHY_MII = 0,         /** MII mode */
 151:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	GMAC_PHY_RMII = 1,    /** Reduced MII mode */
 152:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	GMAC_PHY_INVALID = 0xFF, /* Invalid mode*/
 153:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** } gmac_mii_mode_t;
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 155:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /* This is the list of GMAC priority queue */
 156:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** typedef enum  {
 157:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	GMAC_QUE_0 = 0,
 158:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #if !(SAM4E)
 159:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	GMAC_QUE_1 = 1,
 160:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	GMAC_QUE_2 = 2,
 161:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #endif
 162:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #  if !defined(__DOXYGEN__)
 163:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	GMAC_QUE_N,
 164:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #  endif
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 166:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }gmac_quelist_t;
 167:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 168:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /** Receive buffer descriptor struct */
ARM GAS  /tmp/ccPmdm0I.s 			page 8


 169:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** COMPILER_PACK_SET(8)
 170:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** typedef struct gmac_rx_descriptor {
 171:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	union gmac_rx_addr {
 172:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		uint32_t val;
 173:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		struct gmac_rx_addr_bm {
 174:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			uint32_t b_ownership:1, /**< User clear, GMAC sets this to 1 once it has successfully written a 
 175:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			b_wrap:1,   /**< Marks last descriptor in receive buffer */
 176:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			addr_dw:30; /**< Address in number of DW */
 177:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		} bm;
 178:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} addr; /**< Address, Wrap & Ownership */
 179:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	union gmac_rx_status {
 180:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		uint32_t val;
 181:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		struct gmac_rx_status_bm {
 182:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			uint32_t b_len:13,     /** Length of frame including FCS */
 183:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			b_fcs:1,               /** Receive buffer offset, bits 13:12 of frame length for jumbo frame */
 184:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			b_sof:1,               /** Start of frame */
 185:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			b_eof:1,               /** End of frame */
 186:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			b_cfi:1,               /** Concatenation Format Indicator */
 187:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			b_vlan_priority:3,     /** VLAN priority (if VLAN detected) */
 188:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			b_priority_detected:1, /** Priority tag detected */
 189:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			b_vlan_detected:1,     /**< VLAN tag detected */
 190:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			b_type_id_match:2,     /**< Type ID match */
 191:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			b_checksumoffload:1,   /**< Checksum offload specific function */
 192:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			b_addrmatch:2,         /**< Address register match */
 193:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			b_ext_addr_match:1,    /**< External address match found */
 194:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			reserved:1,
 195:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			b_uni_hash_match:1,    /**< Unicast hash match */
 196:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			b_multi_hash_match:1,  /**< Multicast hash match */
 197:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			b_boardcast_detect:1;  /**< Global broadcast address detected */
 198:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		} bm;
 199:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} status;
 200:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** } gmac_rx_descriptor_t;
 201:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 202:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /** Transmit buffer descriptor struct */
 203:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** COMPILER_PACK_SET(8)
 204:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** typedef struct gmac_tx_descriptor {
 205:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	uint32_t addr;
 206:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	union gmac_tx_status {
 207:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		uint32_t val;
 208:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		struct gmac_tx_status_bm {
 209:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			uint32_t b_len:14, /**< Length of buffer */
 210:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			reserved:1,
 211:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			b_last_buffer:1, /**< Last buffer (in the current frame) */
 212:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			b_no_crc:1,      /**< No CRC */
 213:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			reserved1:3,
 214:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			b_checksumoffload:3,    /**< Transmit checksum generation offload errors */
 215:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			reserved2:3,
 216:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			b_lco:1,         /**< Late collision, transmit error detected */
 217:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			b_exhausted:1,   /**< Buffer exhausted in mid frame */
 218:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			b_underrun:1,    /**< Transmit underrun */
 219:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			b_error:1,       /**< Retry limit exceeded, error detected */
 220:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			b_wrap:1,        /**< Marks last descriptor in TD list */
 221:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			b_used:1;        /**< User clear, GMAC sets this to 1 once a frame has been successfully transmi
 222:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		} bm;
 223:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} status;
 224:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** } gmac_tx_descriptor_t;
 225:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
ARM GAS  /tmp/ccPmdm0I.s 			page 9


 226:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** COMPILER_PACK_RESET()
 227:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 228:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 229:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Write network control value.
 230:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 231:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 232:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param ul_ncr   Network control value.
 233:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 234:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_network_control(Gmac* p_gmac, uint32_t ul_ncr)
 235:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 236:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_NCR = ul_ncr;
 237:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 238:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 239:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 240:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Get network control value.
 241:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 242:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 243:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 244:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 245:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline uint32_t gmac_get_network_control(Gmac* p_gmac)
 246:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 247:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	return p_gmac->GMAC_NCR;
 248:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 249:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 250:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 251:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Enable/Disable GMAC receive.
 252:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 253:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 254:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to disable GMAC receiver, else to enable it.
 255:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 256:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_receive(Gmac* p_gmac, uint8_t uc_enable)
 257:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 258:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 259:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCR |= GMAC_NCR_RXEN;
 260:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 261:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCR &= ~GMAC_NCR_RXEN;
 262:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 263:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 264:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 265:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 266:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Enable/Disable GMAC transmit.
 267:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 268:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 269:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to disable GMAC transmit, else to enable it.
 270:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 271:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_transmit(Gmac* p_gmac, uint8_t uc_enable)
 272:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 273:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 274:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCR |= GMAC_NCR_TXEN;
 275:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 276:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCR &= ~GMAC_NCR_TXEN;
 277:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 278:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 279:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 280:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 281:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Enable/Disable GMAC management.
 282:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
ARM GAS  /tmp/ccPmdm0I.s 			page 10


 283:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 284:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to disable GMAC management, else to enable it.
 285:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 286:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_management(Gmac* p_gmac, uint8_t uc_enable)
 287:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 288:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 289:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCR |= GMAC_NCR_MPE;
  43              		.loc 2 289 0
  44 0002 0568     		ldr	r5, [r0]
  45              	.LBE65:
  46              	.LBE64:
  47              		.loc 1 189 0
  48 0004 83B0     		sub	sp, sp, #12
  49              		.cfi_def_cfa_offset 32
  50              		.loc 1 189 0
  51 0006 1646     		mov	r6, r2
 190:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uint32_t ul_stat1;
 191:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uint32_t ul_stat2;
 192:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uint8_t uc_phy_address, uc_speed, uc_fd;
 193:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uint8_t uc_rc;
 194:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 195:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	gmac_enable_management(p_gmac, true);
 196:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 197:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uc_phy_address = uc_phy_addr;
 198:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 199:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uc_rc = gmac_phy_read(p_gmac, uc_phy_address, GMII_BMSR, &ul_stat1);
  52              		.loc 1 199 0
  53 0008 0122     		movs	r2, #1
  54              	.LVL1:
  55              	.LBB68:
  56              	.LBB66:
  57              		.loc 2 289 0
  58 000a 45F01005 		orr	r5, r5, #16
  59              	.LBE66:
  60              	.LBE68:
  61              		.loc 1 199 0
  62 000e 6B46     		mov	r3, sp
 189:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uint32_t ul_stat1;
  63              		.loc 1 189 0
  64 0010 0446     		mov	r4, r0
  65              	.LVL2:
  66 0012 0F46     		mov	r7, r1
  67              	.LBB69:
  68              	.LBB67:
  69              		.loc 2 289 0
  70 0014 0560     		str	r5, [r0]
  71              	.LVL3:
  72              	.LBE67:
  73              	.LBE69:
  74              		.loc 1 199 0
  75 0016 FFF7FEFF 		bl	gmac_phy_read
  76              	.LVL4:
 200:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	if (uc_rc != GMAC_OK) {
  77              		.loc 1 200 0
  78 001a 0028     		cmp	r0, #0
  79 001c 2FD1     		bne	.L14
 201:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		/* Disable PHY management and start the GMAC transfer */
ARM GAS  /tmp/ccPmdm0I.s 			page 11


 202:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		gmac_enable_management(p_gmac, false);
 203:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 204:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		return uc_rc;
 205:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	}
 206:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 207:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	if ((ul_stat1 & GMII_LINK_STATUS) == 0) {
  80              		.loc 1 207 0
  81 001e 009B     		ldr	r3, [sp]
  82 0020 5B07     		lsls	r3, r3, #29
  83 0022 06D4     		bmi	.L4
  84              	.LVL5:
  85              	.LBB70:
  86              	.LBB71:
 290:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCR &= ~GMAC_NCR_MPE;
  87              		.loc 2 291 0
  88 0024 2368     		ldr	r3, [r4]
  89              	.LBE71:
  90              	.LBE70:
 208:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		/* Disable PHY management and start the GMAC transfer */
 209:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		gmac_enable_management(p_gmac, false);
 210:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 211:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		return GMAC_INVALID;
  91              		.loc 1 211 0
  92 0026 FF20     		movs	r0, #255
  93              	.LVL6:
  94              	.LBB73:
  95              	.LBB72:
  96              		.loc 2 291 0
  97 0028 23F01003 		bic	r3, r3, #16
  98 002c 2360     		str	r3, [r4]
  99              	.LVL7:
 100              	.LBE72:
 101              	.LBE73:
 212:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	}
 213:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 214:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	if (uc_apply_setting_flag == 0) {
 215:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		/* Disable PHY management and start the GMAC transfer */
 216:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		gmac_enable_management(p_gmac, false);
 217:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 218:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		return uc_rc;
 219:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	}
 220:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 221:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	/* Read advertisement */
 222:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uc_rc = gmac_phy_read(p_gmac, uc_phy_address, GMII_PCR1, &ul_stat2);
 223:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	if (uc_rc != GMAC_OK) {
 224:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		/* Disable PHY management and start the GMAC transfer */
 225:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		gmac_enable_management(p_gmac, false);
 226:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 227:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		return uc_rc;
 228:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	}
 229:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 230:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	if ((ul_stat1 & GMII_100BASE_TX_FD) && (ul_stat2 & GMII_OMI_100BASE_TX_FD)) {
 231:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		/* Set GMAC for 100BaseTX and Full Duplex */
 232:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_speed = true;
 233:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_fd = true;
 234:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	}
ARM GAS  /tmp/ccPmdm0I.s 			page 12


 235:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 236:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	if ((ul_stat1 & GMII_10BASE_T_FD) && (ul_stat2 & GMII_OMI_10BASE_T_FD)) {
 237:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		/* Set MII for 10BaseT and Full Duplex */
 238:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_speed = false;
 239:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_fd = true;
 240:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	}
 241:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 242:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	if ((ul_stat1 & GMII_100BASE_TX_HD) && (ul_stat2 & GMII_OMI_100BASE_TX_HD)) {
 243:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		/* Set MII for 100BaseTX and Half Duplex */
 244:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_speed = true;
 245:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_fd = false;
 246:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	}
 247:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 248:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	if ((ul_stat1 & GMII_10BASE_T_HD) && (ul_stat2 & GMII_OMI_10BASE_T_HD)) {
 249:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		/* Set MII for 10BaseT and Half Duplex */
 250:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_speed = false;
 251:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_fd = false;
 252:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	}
 253:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 254:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	gmac_set_speed(p_gmac, uc_speed);
 255:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	gmac_enable_full_duplex(p_gmac, uc_fd);
 256:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 257:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	/* Start the GMAC transfers */
 258:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	gmac_enable_management(p_gmac, false);
 259:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	return uc_rc;
 260:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** }
 102              		.loc 1 260 0
 103 002e 03B0     		add	sp, sp, #12
 104              		.cfi_remember_state
 105              		.cfi_def_cfa_offset 20
 106              		@ sp needed
 107 0030 F0BD     		pop	{r4, r5, r6, r7, pc}
 108              	.LVL8:
 109              	.L4:
 110              		.cfi_restore_state
 214:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		/* Disable PHY management and start the GMAC transfer */
 111              		.loc 1 214 0
 112 0032 26B3     		cbz	r6, .L14
 222:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	if (uc_rc != GMAC_OK) {
 113              		.loc 1 222 0
 114 0034 3946     		mov	r1, r7
 115 0036 01AB     		add	r3, sp, #4
 116 0038 1E22     		movs	r2, #30
 117 003a 2046     		mov	r0, r4
 118              	.LVL9:
 119 003c FFF7FEFF 		bl	gmac_phy_read
 120              	.LVL10:
 223:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		/* Disable PHY management and start the GMAC transfer */
 121              		.loc 1 223 0
 122 0040 E8B9     		cbnz	r0, .L14
 230:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		/* Set GMAC for 100BaseTX and Full Duplex */
 123              		.loc 1 230 0
 124 0042 009B     		ldr	r3, [sp]
 125              	.LVL11:
 236:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		/* Set MII for 10BaseT and Full Duplex */
 126              		.loc 1 236 0
 127 0044 DF04     		lsls	r7, r3, #19
ARM GAS  /tmp/ccPmdm0I.s 			page 13


 128              	.LVL12:
 129 0046 2DD5     		bpl	.L16
 236:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		/* Set MII for 10BaseT and Full Duplex */
 130              		.loc 1 236 0 is_stmt 0 discriminator 1
 131 0048 019A     		ldr	r2, [sp, #4]
 132 004a 12F0050F 		tst	r2, #5
 133 004e 0CBF     		ite	eq
 134 0050 0122     		moveq	r2, #1
 135 0052 0022     		movne	r2, #0
 136              	.L7:
 137              	.LVL13:
 242:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		/* Set MII for 100BaseTX and Half Duplex */
 138              		.loc 1 242 0 is_stmt 1
 139 0054 9E04     		lsls	r6, r3, #18
 140 0056 18D5     		bpl	.L8
 242:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		/* Set MII for 100BaseTX and Half Duplex */
 141              		.loc 1 242 0 is_stmt 0 discriminator 1
 142 0058 0199     		ldr	r1, [sp, #4]
 143 005a 8D07     		lsls	r5, r1, #30
 144 005c 15D5     		bpl	.L8
 145              	.LVL14:
 248:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		/* Set MII for 10BaseT and Half Duplex */
 146              		.loc 1 248 0 is_stmt 1
 147 005e 13F40063 		ands	r3, r3, #2048
 148 0062 1AD0     		beq	.L15
 149 0064 11F00103 		ands	r3, r1, #1
 150 0068 17D0     		beq	.L15
 151              	.LVL15:
 152              	.L20:
 251:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	}
 153              		.loc 1 251 0
 154 006a 0023     		movs	r3, #0
 155              	.L11:
 156              	.LVL16:
 157              	.LBB74:
 158              	.LBB75:
 292:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 293:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 294:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 295:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 296:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Clear all statistics registers.
 297:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 298:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 299:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 300:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_clear_statistics(Gmac* p_gmac)
 301:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 302:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_NCR |= GMAC_NCR_CLRSTAT;
 303:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 304:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 305:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 306:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Increase all statistics registers.
 307:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 308:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 309:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 310:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_increase_statistics(Gmac* p_gmac)
 311:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 312:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_NCR |= GMAC_NCR_INCSTAT;
ARM GAS  /tmp/ccPmdm0I.s 			page 14


 313:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 314:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 315:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 316:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Enable/Disable statistics registers writing.
 317:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 318:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to disable the statistics registers writing, else to enable it.
 320:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 321:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_statistics_write(Gmac* p_gmac,
 322:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		uint8_t uc_enable)
 323:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 324:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 325:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCR |= GMAC_NCR_WESTAT;
 326:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 327:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCR &= ~GMAC_NCR_WESTAT;
 328:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 329:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 330:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 331:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 332:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief In half-duplex mode, forces collisions on all received frames.
 333:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 334:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 335:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to disable the back pressure, else to enable it.
 336:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 337:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_back_pressure(Gmac* p_gmac, uint8_t uc_enable)
 338:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 339:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 340:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCR |= GMAC_NCR_BP;
 341:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 342:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCR &= ~GMAC_NCR_BP;
 343:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 344:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 345:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 346:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 347:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Start transmission.
 348:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 349:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 350:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 351:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_start_transmission(Gmac* p_gmac)
 352:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 353:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	__DSB();
 354:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_NCR |= GMAC_NCR_TSTART;
 355:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 356:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 357:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 358:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Halt transmission.
 359:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 360:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 361:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 362:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_halt_transmission(Gmac* p_gmac)
 363:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 364:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_NCR |= GMAC_NCR_THALT;
 365:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 366:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 367:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 368:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Transmit pause frame.
 369:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
ARM GAS  /tmp/ccPmdm0I.s 			page 15


 370:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 371:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 372:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_tx_pause_frame(Gmac* p_gmac)
 373:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 374:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_NCR |= GMAC_NCR_TXPF;
 375:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 376:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 377:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 378:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Transmit zero quantum pause frame.
 379:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 380:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 381:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 382:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_tx_pause_zero_quantum_frame(Gmac* p_gmac)
 383:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 384:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_NCR |= GMAC_NCR_TXZQPF;
 385:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 386:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 387:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 388:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Store receivetime stamp to memory.
 389:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 390:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 391:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to normal operation, else to enable the store.
 392:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 393:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_store_rx_time_stamp(Gmac* p_gmac, uint8_t uc_enable)
 394:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 395:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 396:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCR |= GMAC_NCR_SRTSM;
 397:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 398:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCR &= ~GMAC_NCR_SRTSM;
 399:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 400:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 401:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 402:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 403:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Enable PFC priority-based pause reception.
 404:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 405:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 406:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   1 to set the reception, 0 to disable.
 407:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 408:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_pfc_pause_frame(Gmac* p_gmac, uint8_t uc_enable)
 409:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 410:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 411:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCR |= GMAC_NCR_ENPBPR;
 412:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 413:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCR &= ~GMAC_NCR_ENPBPR;
 414:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 415:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 416:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 417:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 418:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Transmit PFC priority-based pause reception.
 419:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 420:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 421:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 422:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_transmit_pfc_pause_frame(Gmac* p_gmac)
 423:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 424:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCR |= GMAC_NCR_TXPBPF;
 425:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 426:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
ARM GAS  /tmp/ccPmdm0I.s 			page 16


 427:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 428:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Flush next packet.
 429:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 430:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 431:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 432:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_flush_next_packet(Gmac* p_gmac)
 433:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 434:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCR |= GMAC_NCR_FNP;
 435:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 436:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 437:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 438:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Set up network configuration register.
 439:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 440:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 441:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****   * \param ul_cfg   Network configuration value.
 442:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 443:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_set_config(Gmac* p_gmac, uint32_t ul_cfg)
 444:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 445:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_NCFGR = ul_cfg;
 446:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 447:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 448:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 449:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Get network configuration.
 450:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 451:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 452:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 453:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \return Network configuration.
 454:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 455:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline uint32_t gmac_get_config(Gmac* p_gmac)
 456:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 457:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	return p_gmac->GMAC_NCFGR;
 458:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 459:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 460:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 461:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Set speed.
 462:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 463:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 464:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param uc_speed 1 to indicate 100Mbps, 0 to 10Mbps.
 465:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 466:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_set_speed(Gmac* p_gmac, uint8_t uc_speed)
 467:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 468:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	if (uc_speed) {
 469:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR |= GMAC_NCFGR_SPD;
 470:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 471:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR &= ~GMAC_NCFGR_SPD;
 159              		.loc 2 471 0
 160 006c 6268     		ldr	r2, [r4, #4]
 161 006e 22F00102 		bic	r2, r2, #1
 162 0072 6260     		str	r2, [r4, #4]
 163              	.L12:
 164              	.LVL17:
 165              	.LBE75:
 166              	.LBE74:
 167              	.LBB77:
 168              	.LBB78:
 472:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 473:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
ARM GAS  /tmp/ccPmdm0I.s 			page 17


 474:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 475:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 476:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Enable/Disable Full-Duplex mode.
 477:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 478:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 479:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to disable the Full-Duplex mode, else to enable it.
 480:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 481:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_full_duplex(Gmac* p_gmac, uint8_t uc_enable)
 482:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 483:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 169              		.loc 2 483 0
 170 0074 C3B1     		cbz	r3, .L13
 484:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR |= GMAC_NCFGR_FD;
 171              		.loc 2 484 0
 172 0076 6368     		ldr	r3, [r4, #4]
 173              	.LVL18:
 174 0078 43F00203 		orr	r3, r3, #2
 175 007c 6360     		str	r3, [r4, #4]
 176              	.LVL19:
 177              	.L14:
 178              	.LBE78:
 179              	.LBE77:
 180              	.LBB80:
 181              	.LBB81:
 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 182              		.loc 2 291 0
 183 007e 2368     		ldr	r3, [r4]
 184 0080 23F01003 		bic	r3, r3, #16
 185 0084 2360     		str	r3, [r4]
 186              	.LVL20:
 187              	.LBE81:
 188              	.LBE80:
 189              		.loc 1 260 0
 190 0086 03B0     		add	sp, sp, #12
 191              		.cfi_remember_state
 192              		.cfi_def_cfa_offset 20
 193              		@ sp needed
 194 0088 F0BD     		pop	{r4, r5, r6, r7, pc}
 195              	.LVL21:
 196              	.L8:
 197              		.cfi_restore_state
 248:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		/* Set MII for 10BaseT and Half Duplex */
 198              		.loc 1 248 0
 199 008a 1905     		lsls	r1, r3, #20
 200 008c 02D5     		bpl	.L10
 248:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		/* Set MII for 10BaseT and Half Duplex */
 201              		.loc 1 248 0 is_stmt 0 discriminator 1
 202 008e 019B     		ldr	r3, [sp, #4]
 203 0090 DB07     		lsls	r3, r3, #31
 204 0092 EAD4     		bmi	.L20
 205              	.L10:
 206              	.LVL22:
 207              	.LBB82:
 208              	.LBB76:
 468:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR |= GMAC_NCFGR_SPD;
 209              		.loc 2 468 0 is_stmt 1
 210 0094 0123     		movs	r3, #1
ARM GAS  /tmp/ccPmdm0I.s 			page 18


 211 0096 002A     		cmp	r2, #0
 212 0098 E8D0     		beq	.L11
 213              	.LVL23:
 214              	.L15:
 469:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 215              		.loc 2 469 0
 216 009a 6268     		ldr	r2, [r4, #4]
 217 009c 42F00102 		orr	r2, r2, #1
 218 00a0 6260     		str	r2, [r4, #4]
 219 00a2 E7E7     		b	.L12
 220              	.LVL24:
 221              	.L16:
 222              	.LBE76:
 223              	.LBE82:
 224 00a4 0122     		movs	r2, #1
 225 00a6 D5E7     		b	.L7
 226              	.LVL25:
 227              	.L13:
 228              	.LBB83:
 229              	.LBB79:
 485:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 486:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR &= ~GMAC_NCFGR_FD;
 230              		.loc 2 486 0
 231 00a8 6368     		ldr	r3, [r4, #4]
 232              	.LVL26:
 233 00aa 23F00203 		bic	r3, r3, #2
 234 00ae 6360     		str	r3, [r4, #4]
 235 00b0 E5E7     		b	.L14
 236              	.LBE79:
 237              	.LBE83:
 238              		.cfi_endproc
 239              	.LFE220:
 240              		.size	ethernet_phy_set_link, .-ethernet_phy_set_link
 241 00b2 00BF     		.section	.text.ethernet_phy_auto_negotiate,"ax",%progbits
 242              		.align	1
 243              		.p2align 2,,3
 244              		.global	ethernet_phy_auto_negotiate
 245              		.syntax unified
 246              		.thumb
 247              		.thumb_func
 248              		.fpu fpv5-d16
 249              		.type	ethernet_phy_auto_negotiate, %function
 250              	ethernet_phy_auto_negotiate:
 251              	.LFB221:
 261:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 262:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 263:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** /**
 264:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * \brief Issue an auto negotiation of the PHY.
 265:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  *
 266:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * \param p_gmac   Pointer to the GMAC instance.
 267:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * \param uc_phy_addr PHY address.
 268:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  *
 269:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * Return GMAC_OK if successfully, GMAC_TIMEOUT if timeout.
 270:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  */
 271:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** static bool phyInitialized = false;
 272:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** uint8_t ethernet_phy_auto_negotiate(Gmac *p_gmac, uint8_t uc_phy_addr)
 273:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** {
ARM GAS  /tmp/ccPmdm0I.s 			page 19


 252              		.loc 1 273 0
 253              		.cfi_startproc
 254              		@ args = 0, pretend = 0, frame = 8
 255              		@ frame_needed = 0, uses_anonymous_args = 0
 256              	.LVL27:
 257 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 258              		.cfi_def_cfa_offset 20
 259              		.cfi_offset 4, -20
 260              		.cfi_offset 5, -16
 261              		.cfi_offset 6, -12
 262              		.cfi_offset 7, -8
 263              		.cfi_offset 14, -4
 264              	.LBB84:
 265              	.LBB85:
 289:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 266              		.loc 2 289 0
 267 0002 0368     		ldr	r3, [r0]
 268              	.LBE85:
 269              	.LBE84:
 270              		.loc 1 273 0
 271 0004 83B0     		sub	sp, sp, #12
 272              		.cfi_def_cfa_offset 32
 274:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** #if 0	// chrishamm
 275:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uint32_t ul_retry_max = ETH_PHY_RETRY_MAX;
 276:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uint32_t ul_retry_count = 0;
 277:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** #endif
 278:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uint32_t ul_value;
 279:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uint32_t ul_phy_anar;
 280:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uint32_t ul_phy_analpar;
 281:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uint8_t uc_speed = 0;
 282:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uint8_t uc_fd=0;
 283:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uint8_t uc_rc;
 284:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 285:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	gmac_enable_management(p_gmac, true);
 286:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 287:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	if (!phyInitialized)
 273              		.loc 1 287 0
 274 0006 4E4D     		ldr	r5, .L56
 273:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** #if 0	// chrishamm
 275              		.loc 1 273 0
 276 0008 0446     		mov	r4, r0
 277              	.LVL28:
 278              	.LBB88:
 279              	.LBB86:
 289:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 280              		.loc 2 289 0
 281 000a 43F01003 		orr	r3, r3, #16
 282              	.LBE86:
 283              	.LBE88:
 273:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** #if 0	// chrishamm
 284              		.loc 1 273 0
 285 000e 0E46     		mov	r6, r1
 286              		.loc 1 287 0
 287 0010 2A78     		ldrb	r2, [r5]	@ zero_extendqisi2
 288:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	{
 289:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		/* Set up control register */
 290:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_rc = gmac_phy_read(p_gmac, uc_phy_addr, GMII_BMCR, &ul_value);
ARM GAS  /tmp/ccPmdm0I.s 			page 20


 288              		.loc 1 290 0
 289 0012 6F46     		mov	r7, sp
 290              	.LBB89:
 291              	.LBB87:
 289:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 292              		.loc 2 289 0
 293 0014 0360     		str	r3, [r0]
 294              	.LVL29:
 295              	.LBE87:
 296              	.LBE89:
 287:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	{
 297              		.loc 1 287 0
 298 0016 002A     		cmp	r2, #0
 299 0018 47D1     		bne	.L31
 300              		.loc 1 290 0
 301 001a 6B46     		mov	r3, sp
 302 001c FFF7FEFF 		bl	gmac_phy_read
 303              	.LVL30:
 291:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		if (uc_rc != GMAC_OK) {
 304              		.loc 1 291 0
 305 0020 28B1     		cbz	r0, .L55
 306              	.L54:
 307              	.LVL31:
 308              	.LBB90:
 309              	.LBB91:
 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 310              		.loc 2 291 0
 311 0022 2368     		ldr	r3, [r4]
 312 0024 23F01003 		bic	r3, r3, #16
 313 0028 2360     		str	r3, [r4]
 314              	.LVL32:
 315              	.L52:
 316              	.LBE91:
 317              	.LBE90:
 292:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 			gmac_enable_management(p_gmac, false);
 293:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 			return uc_rc;
 294:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		}
 295:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 296:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		ul_value &= ~(uint32_t)GMII_AUTONEG; /* Remove auto-negotiation enable */
 297:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		ul_value &= ~(uint32_t)(GMII_LOOPBACK | GMII_POWER_DOWN);
 298:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		ul_value |= (uint32_t)GMII_ISOLATE; /* Electrically isolate PHY */
 299:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_rc = gmac_phy_write(p_gmac, uc_phy_addr, GMII_BMCR, ul_value);
 300:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		if (uc_rc != GMAC_OK) {
 301:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 			gmac_enable_management(p_gmac, false);
 302:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 			return uc_rc;
 303:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		}
 304:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 305:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		/*
 306:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		 * Set the Auto_negotiation Advertisement Register.
 307:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		 * MII advertising for Next page.
 308:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		 * 100BaseTxFD and HD, 10BaseTFD and HD, IEEE 802.3.
 309:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		 */
 310:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		ul_phy_anar = GMII_100TX_FDX | GMII_100TX_HDX | GMII_10_FDX | GMII_10_HDX |
 311:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 				GMII_AN_IEEE_802_3;
 312:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_rc = gmac_phy_write(p_gmac, uc_phy_addr, GMII_ANAR, ul_phy_anar);
 313:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		if (uc_rc != GMAC_OK) {
 314:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 			gmac_enable_management(p_gmac, false);
ARM GAS  /tmp/ccPmdm0I.s 			page 21


 315:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 			return uc_rc;
 316:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		}
 317:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 318:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		/* Read & modify control register */
 319:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_rc = gmac_phy_read(p_gmac, uc_phy_addr, GMII_BMCR, &ul_value);
 320:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		if (uc_rc != GMAC_OK) {
 321:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 			gmac_enable_management(p_gmac, false);
 322:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 			return uc_rc;
 323:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		}
 324:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 325:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		ul_value |= GMII_SPEED_SELECT | GMII_AUTONEG | GMII_DUPLEX_MODE;
 326:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_rc = gmac_phy_write(p_gmac, uc_phy_addr, GMII_BMCR, ul_value);
 327:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		if (uc_rc != GMAC_OK) {
 328:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 			gmac_enable_management(p_gmac, false);
 329:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 			return uc_rc;
 330:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		}
 331:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 332:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		/* Restart auto negotiation */
 333:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		ul_value |= (uint32_t)GMII_RESTART_AUTONEG;
 334:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		ul_value &= ~(uint32_t)GMII_ISOLATE;
 335:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_rc = gmac_phy_write(p_gmac, uc_phy_addr, GMII_BMCR, ul_value);
 336:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		if (uc_rc != GMAC_OK) {
 337:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 			gmac_enable_management(p_gmac, false);
 338:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 			return uc_rc;
 339:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		}
 340:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 341:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		phyInitialized = true;
 342:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	}
 343:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 344:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	/* Check if auto negotiation is completed */
 345:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** #if 1	// chrishamm
 346:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uc_rc = gmac_phy_read(p_gmac, uc_phy_addr, GMII_BMSR, &ul_value);
 347:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	if (uc_rc != GMAC_OK)
 348:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	{
 349:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		gmac_enable_management(p_gmac, false);
 350:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		return uc_rc;
 351:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	}
 352:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 353:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	if ((ul_value & GMII_AUTONEG_COMP) == 0)
 354:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	{
 355:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		gmac_enable_management(p_gmac, false);
 356:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		return GMAC_TIMEOUT;
 357:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	}
 358:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** #else
 359:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	while (1) {
 360:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_rc = gmac_phy_read(p_gmac, uc_phy_addr, GMII_BMSR, &ul_value);
 361:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		if (uc_rc != GMAC_OK) {
 362:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 			gmac_enable_management(p_gmac, false);
 363:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 			return uc_rc;
 364:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		}
 365:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		/* Done successfully */
 366:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		if (ul_value & GMII_AUTONEG_COMP) {
 367:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 			break;
 368:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		}
 369:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 370:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		/* Timeout check */
 371:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		if (ul_retry_max) {
ARM GAS  /tmp/ccPmdm0I.s 			page 22


 372:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 			if (++ul_retry_count >= ul_retry_max) {
 373:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 				gmac_enable_management(p_gmac, false);
 374:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 				return GMAC_TIMEOUT;
 375:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 			}
 376:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		}
 377:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	}
 378:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** #endif
 379:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 380:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	/* Get the auto negotiate link partner base page */
 381:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uc_rc = gmac_phy_read(p_gmac, uc_phy_addr, GMII_ANLPAR, &ul_phy_analpar);
 382:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	if (uc_rc != GMAC_OK) {
 383:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		gmac_enable_management(p_gmac, false);
 384:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		return uc_rc;
 385:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	}
 386:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 387:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 388:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	/* Set up the GMAC link speed */
 389:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	if ((ul_phy_anar & ul_phy_analpar) & GMII_100TX_FDX) {
 390:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		/* Set MII for 100BaseTX and Full Duplex */
 391:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_speed = true;
 392:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_fd = true;
 393:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	} else if ((ul_phy_anar & ul_phy_analpar) & GMII_10_FDX) {
 394:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		/* Set MII for 10BaseT and Full Duplex */
 395:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_speed = false;
 396:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_fd = true;
 397:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	} else if ((ul_phy_anar & ul_phy_analpar) & GMII_100TX_HDX) {
 398:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		/* Set MII for 100BaseTX and half Duplex */
 399:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_speed = true;
 400:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_fd = false;
 401:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	} else if ((ul_phy_anar & ul_phy_analpar) & GMII_10_HDX) {
 402:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		/* Set MII for 10BaseT and half Duplex */
 403:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_speed = false;
 404:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_fd = false;
 405:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	}
 406:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 407:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	gmac_set_speed(p_gmac, uc_speed);
 408:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	gmac_enable_full_duplex(p_gmac, uc_fd);
 409:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 410:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	/* Select Media Independent Interface type */
 411:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	gmac_select_mii_mode(p_gmac, ETH_PHY_MODE);
 412:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 413:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	gmac_enable_transmit(GMAC, true);
 414:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	gmac_enable_receive(GMAC, true);
 415:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 416:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	phyInitialized = false;		// in case the board loses link and needs to run this function again
 417:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	gmac_enable_management(p_gmac, false);
 418:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	return uc_rc;
 419:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** }
 318              		.loc 1 419 0
 319 002a 03B0     		add	sp, sp, #12
 320              		.cfi_remember_state
 321              		.cfi_def_cfa_offset 20
 322              		@ sp needed
 323 002c F0BD     		pop	{r4, r5, r6, r7, pc}
 324              	.LVL33:
 325              	.L55:
 326              		.cfi_restore_state
ARM GAS  /tmp/ccPmdm0I.s 			page 23


 297:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		ul_value |= (uint32_t)GMII_ISOLATE; /* Electrically isolate PHY */
 327              		.loc 1 297 0
 328 002e 009B     		ldr	r3, [sp]
 299:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		if (uc_rc != GMAC_OK) {
 329              		.loc 1 299 0
 330 0030 0246     		mov	r2, r0
 331 0032 3146     		mov	r1, r6
 332 0034 2046     		mov	r0, r4
 333              	.LVL34:
 297:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		ul_value |= (uint32_t)GMII_ISOLATE; /* Electrically isolate PHY */
 334              		.loc 1 297 0
 335 0036 23F4B043 		bic	r3, r3, #22528
 298:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_rc = gmac_phy_write(p_gmac, uc_phy_addr, GMII_BMCR, ul_value);
 336              		.loc 1 298 0
 337 003a 43F4806E 		orr	lr, r3, #1024
 299:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		if (uc_rc != GMAC_OK) {
 338              		.loc 1 299 0
 339 003e 7346     		mov	r3, lr
 298:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_rc = gmac_phy_write(p_gmac, uc_phy_addr, GMII_BMCR, ul_value);
 340              		.loc 1 298 0
 341 0040 CDF800E0 		str	lr, [sp]
 299:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		if (uc_rc != GMAC_OK) {
 342              		.loc 1 299 0
 343 0044 FFF7FEFF 		bl	gmac_phy_write
 344              	.LVL35:
 300:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 			gmac_enable_management(p_gmac, false);
 345              		.loc 1 300 0
 346 0048 0028     		cmp	r0, #0
 347 004a EAD1     		bne	.L54
 348              	.LVL36:
 312:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		if (uc_rc != GMAC_OK) {
 349              		.loc 1 312 0
 350 004c 40F2E113 		movw	r3, #481
 351 0050 0422     		movs	r2, #4
 352 0052 3146     		mov	r1, r6
 353 0054 2046     		mov	r0, r4
 354              	.LVL37:
 355 0056 FFF7FEFF 		bl	gmac_phy_write
 356              	.LVL38:
 313:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 			gmac_enable_management(p_gmac, false);
 357              		.loc 1 313 0
 358 005a 0028     		cmp	r0, #0
 359 005c E1D1     		bne	.L54
 319:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		if (uc_rc != GMAC_OK) {
 360              		.loc 1 319 0
 361 005e 0246     		mov	r2, r0
 362 0060 6B46     		mov	r3, sp
 363 0062 3146     		mov	r1, r6
 364 0064 2046     		mov	r0, r4
 365              	.LVL39:
 366 0066 FFF7FEFF 		bl	gmac_phy_read
 367              	.LVL40:
 320:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 			gmac_enable_management(p_gmac, false);
 368              		.loc 1 320 0
 369 006a 0028     		cmp	r0, #0
 370 006c D9D1     		bne	.L54
 325:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_rc = gmac_phy_write(p_gmac, uc_phy_addr, GMII_BMCR, ul_value);
ARM GAS  /tmp/ccPmdm0I.s 			page 24


 371              		.loc 1 325 0
 372 006e 009B     		ldr	r3, [sp]
 326:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		if (uc_rc != GMAC_OK) {
 373              		.loc 1 326 0
 374 0070 0246     		mov	r2, r0
 375 0072 3146     		mov	r1, r6
 376 0074 2046     		mov	r0, r4
 377              	.LVL41:
 325:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_rc = gmac_phy_write(p_gmac, uc_phy_addr, GMII_BMCR, ul_value);
 378              		.loc 1 325 0
 379 0076 43F4445E 		orr	lr, r3, #12544
 326:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		if (uc_rc != GMAC_OK) {
 380              		.loc 1 326 0
 381 007a 7346     		mov	r3, lr
 325:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_rc = gmac_phy_write(p_gmac, uc_phy_addr, GMII_BMCR, ul_value);
 382              		.loc 1 325 0
 383 007c CDF800E0 		str	lr, [sp]
 326:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		if (uc_rc != GMAC_OK) {
 384              		.loc 1 326 0
 385 0080 FFF7FEFF 		bl	gmac_phy_write
 386              	.LVL42:
 327:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 			gmac_enable_management(p_gmac, false);
 387              		.loc 1 327 0
 388 0084 0028     		cmp	r0, #0
 389 0086 CCD1     		bne	.L54
 334:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_rc = gmac_phy_write(p_gmac, uc_phy_addr, GMII_BMCR, ul_value);
 390              		.loc 1 334 0
 391 0088 009B     		ldr	r3, [sp]
 335:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		if (uc_rc != GMAC_OK) {
 392              		.loc 1 335 0
 393 008a 0246     		mov	r2, r0
 394 008c 3146     		mov	r1, r6
 395 008e 2046     		mov	r0, r4
 396              	.LVL43:
 334:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_rc = gmac_phy_write(p_gmac, uc_phy_addr, GMII_BMCR, ul_value);
 397              		.loc 1 334 0
 398 0090 23F48063 		bic	r3, r3, #1024
 399 0094 43F4007E 		orr	lr, r3, #512
 335:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		if (uc_rc != GMAC_OK) {
 400              		.loc 1 335 0
 401 0098 7346     		mov	r3, lr
 334:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_rc = gmac_phy_write(p_gmac, uc_phy_addr, GMII_BMCR, ul_value);
 402              		.loc 1 334 0
 403 009a CDF800E0 		str	lr, [sp]
 335:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		if (uc_rc != GMAC_OK) {
 404              		.loc 1 335 0
 405 009e FFF7FEFF 		bl	gmac_phy_write
 406              	.LVL44:
 336:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 			gmac_enable_management(p_gmac, false);
 407              		.loc 1 336 0
 408 00a2 0028     		cmp	r0, #0
 409 00a4 BDD1     		bne	.L54
 341:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	}
 410              		.loc 1 341 0
 411 00a6 0123     		movs	r3, #1
 412 00a8 2B70     		strb	r3, [r5]
 413              	.LVL45:
ARM GAS  /tmp/ccPmdm0I.s 			page 25


 414              	.L31:
 346:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	if (uc_rc != GMAC_OK)
 415              		.loc 1 346 0
 416 00aa 3B46     		mov	r3, r7
 417 00ac 0122     		movs	r2, #1
 418 00ae 3146     		mov	r1, r6
 419 00b0 2046     		mov	r0, r4
 420 00b2 FFF7FEFF 		bl	gmac_phy_read
 421              	.LVL46:
 347:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	{
 422              		.loc 1 347 0
 423 00b6 0028     		cmp	r0, #0
 424 00b8 B3D1     		bne	.L54
 353:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	{
 425              		.loc 1 353 0
 426 00ba 009B     		ldr	r3, [sp]
 427 00bc 9806     		lsls	r0, r3, #26
 428              	.LVL47:
 429 00be 06D4     		bmi	.L40
 430              	.LVL48:
 431              	.LBB92:
 432              	.LBB93:
 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 433              		.loc 2 291 0
 434 00c0 2368     		ldr	r3, [r4]
 435              	.LBE93:
 436              	.LBE92:
 356:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	}
 437              		.loc 1 356 0
 438 00c2 0120     		movs	r0, #1
 439              	.LBB95:
 440              	.LBB94:
 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 441              		.loc 2 291 0
 442 00c4 23F01003 		bic	r3, r3, #16
 443 00c8 2360     		str	r3, [r4]
 444              	.LVL49:
 445              	.LBE94:
 446              	.LBE95:
 447              		.loc 1 419 0
 448 00ca 03B0     		add	sp, sp, #12
 449              		.cfi_remember_state
 450              		.cfi_def_cfa_offset 20
 451              		@ sp needed
 452 00cc F0BD     		pop	{r4, r5, r6, r7, pc}
 453              	.LVL50:
 454              	.L40:
 455              		.cfi_restore_state
 381:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	if (uc_rc != GMAC_OK) {
 456              		.loc 1 381 0
 457 00ce 3146     		mov	r1, r6
 458 00d0 01AB     		add	r3, sp, #4
 459 00d2 0522     		movs	r2, #5
 460 00d4 2046     		mov	r0, r4
 461 00d6 FFF7FEFF 		bl	gmac_phy_read
 462              	.LVL51:
 382:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		gmac_enable_management(p_gmac, false);
ARM GAS  /tmp/ccPmdm0I.s 			page 26


 463              		.loc 1 382 0
 464 00da 0028     		cmp	r0, #0
 465 00dc A1D1     		bne	.L54
 389:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		/* Set MII for 100BaseTX and Full Duplex */
 466              		.loc 1 389 0
 467 00de 019B     		ldr	r3, [sp, #4]
 468 00e0 D905     		lsls	r1, r3, #23
 469 00e2 21D4     		bmi	.L47
 393:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		/* Set MII for 10BaseT and Full Duplex */
 470              		.loc 1 393 0
 471 00e4 5A06     		lsls	r2, r3, #25
 472 00e6 29D4     		bmi	.L48
 397:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		/* Set MII for 100BaseTX and half Duplex */
 473              		.loc 1 397 0
 474 00e8 1B06     		lsls	r3, r3, #24
 400:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	} else if ((ul_phy_anar & ul_phy_analpar) & GMII_10_HDX) {
 475              		.loc 1 400 0
 476 00ea 0246     		mov	r2, r0
 397:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		/* Set MII for 100BaseTX and half Duplex */
 477              		.loc 1 397 0
 478 00ec 1DD4     		bmi	.L42
 479              	.L43:
 480              	.LVL52:
 481              	.LBB96:
 482              	.LBB97:
 471:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 483              		.loc 2 471 0
 484 00ee 6368     		ldr	r3, [r4, #4]
 485 00f0 23F00103 		bic	r3, r3, #1
 486 00f4 6360     		str	r3, [r4, #4]
 487              	.LVL53:
 488              	.L46:
 489              	.LBE97:
 490              	.LBE96:
 491              	.LBB99:
 492              	.LBB100:
 484:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 493              		.loc 2 484 0
 494 00f6 6368     		ldr	r3, [r4, #4]
 483:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR |= GMAC_NCFGR_FD;
 495              		.loc 2 483 0
 496 00f8 E2B1     		cbz	r2, .L44
 484:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 497              		.loc 2 484 0
 498 00fa 43F00203 		orr	r3, r3, #2
 499 00fe 6360     		str	r3, [r4, #4]
 500              	.L45:
 501              	.LVL54:
 502              	.LBE100:
 503              	.LBE99:
 504              	.LBB102:
 505              	.LBB103:
 487:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 488:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 489:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 490:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 491:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Enable/Disable Copy(Receive) All Valid Frames.
ARM GAS  /tmp/ccPmdm0I.s 			page 27


 492:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 493:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 494:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to disable copying all valid frames, else to enable it.
 495:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 496:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_copy_all(Gmac* p_gmac, uint8_t uc_enable)
 497:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 498:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 499:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR |= GMAC_NCFGR_CAF;
 500:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 501:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR &= ~GMAC_NCFGR_CAF;
 502:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 503:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 504:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 505:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 506:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Enable/Disable jumbo frames (up to 10240 bytes).
 507:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 508:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 509:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to disable the jumbo frames, else to enable it.
 510:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 511:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_jumbo_frames(Gmac* p_gmac, uint8_t uc_enable)
 512:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 513:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 514:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR |= GMAC_NCFGR_JFRAME;
 515:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 516:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR &= ~GMAC_NCFGR_JFRAME;
 517:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 518:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 519:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 520:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 521:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Disable/Enable broadcast receiving.
 522:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 523:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 524:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   1 to disable the broadcast, else to enable it.
 525:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 526:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_disable_broadcast(Gmac* p_gmac, uint8_t uc_enable)
 527:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 528:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 529:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR |= GMAC_NCFGR_NBC;
 530:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 531:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR &= ~GMAC_NCFGR_NBC;
 532:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 533:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 534:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 535:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 536:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Enable/Disable multicast hash.
 537:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 538:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 539:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to disable the multicast hash, else to enable it.
 540:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 541:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_multicast_hash(Gmac* p_gmac, uint8_t uc_enable)
 542:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 543:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 544:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR |= GMAC_NCFGR_UNIHEN;
 545:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 546:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR &= ~GMAC_NCFGR_UNIHEN;
 547:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 548:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
ARM GAS  /tmp/ccPmdm0I.s 			page 28


 549:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 550:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 551:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Enable/Disable big frames (over 1518, up to 1536).
 552:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 553:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 554:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to disable big frames else to enable it.
 555:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 556:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_big_frame(Gmac* p_gmac, uint8_t uc_enable)
 557:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 558:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 559:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR |= GMAC_NCFGR_MAXFS;
 560:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 561:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR &= ~GMAC_NCFGR_MAXFS;
 562:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 563:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 564:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 565:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 566:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Set MDC clock divider.
 567:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 568:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 569:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param ul_mck   GMAC MCK.
 570:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 571:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \return GMAC_OK if successfully.
 572:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 573:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline uint8_t gmac_set_mdc_clock(Gmac* p_gmac, uint32_t ul_mck)
 574:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 575:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	uint32_t ul_clk;
 576:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 577:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	if (ul_mck > GMAC_MCK_SPEED_240MHZ) {
 578:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		return GMAC_INVALID;
 579:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else if (ul_mck > GMAC_MCK_SPEED_160MHZ) {
 580:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		ul_clk = GMAC_NCFGR_CLK_MCK_96;
 581:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else if (ul_mck > GMAC_MCK_SPEED_120MHZ) {
 582:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		ul_clk = GMAC_NCFGR_CLK_MCK_64;
 583:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else if (ul_mck > GMAC_MCK_SPEED_80MHZ) {
 584:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		ul_clk = GMAC_NCFGR_CLK_MCK_48;
 585:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else if (ul_mck > GMAC_MCK_SPEED_40MHZ) {
 586:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		ul_clk = GMAC_NCFGR_CLK_MCK_32;
 587:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else if (ul_mck > GMAC_MCK_SPEED_20MHZ) {
 588:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		ul_clk = GMAC_NCFGR_CLK_MCK_16;
 589:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 590:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		ul_clk = GMAC_NCFGR_CLK_MCK_8;
 591:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 592:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_NCFGR &= ~GMAC_NCFGR_CLK_Msk;
 593:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_NCFGR |= ul_clk;
 594:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	return GMAC_OK;
 595:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 596:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 597:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 598:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Enable/Disable retry test.
 599:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 600:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 601:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to disable the GMAC receiver, else to enable it.
 602:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 603:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_retry_test(Gmac* p_gmac, uint8_t uc_enable)
 604:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 605:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
ARM GAS  /tmp/ccPmdm0I.s 			page 29


 606:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR |= GMAC_NCFGR_RTY;
 607:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 608:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR &= ~GMAC_NCFGR_RTY;
 609:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 610:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 611:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 612:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 613:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Enable/Disable pause (when a valid pause frame is received).
 614:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 615:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 616:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to disable pause frame, else to enable it.
 617:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 618:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_pause_frame(Gmac* p_gmac, uint8_t uc_enable)
 619:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 620:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 621:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR |= GMAC_NCFGR_PEN;
 622:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 623:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR &= ~GMAC_NCFGR_PEN;
 624:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 625:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 626:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 627:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 628:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Set receive buffer offset to 0 ~ 3.
 629:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 630:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 631:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 632:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_set_rx_buffer_offset(Gmac* p_gmac, uint8_t uc_offset)
 633:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 634:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_NCFGR &= ~GMAC_NCFGR_RXBUFO_Msk;
 635:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_NCFGR |= GMAC_NCFGR_RXBUFO(uc_offset);
 636:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 637:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 638:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 639:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Enable/Disable receive length field checking.
 640:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 641:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 642:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to disable receive length field checking, else to enable it.
 643:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 644:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_rx_length_check(Gmac* p_gmac, uint8_t uc_enable)
 645:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 646:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 647:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR |= GMAC_NCFGR_LFERD;
 648:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 649:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR &= ~GMAC_NCFGR_LFERD;
 650:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 651:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 652:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 653:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 654:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Enable/Disable discarding FCS field of received frames.
 655:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 656:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 657:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to disable discarding FCS field of received frames, else to enable it.
 658:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 659:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_discard_fcs(Gmac* p_gmac, uint8_t uc_enable)
 660:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 661:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 662:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR |= GMAC_NCFGR_RFCS;
ARM GAS  /tmp/ccPmdm0I.s 			page 30


 663:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 664:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR &= ~GMAC_NCFGR_RFCS;
 665:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 666:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 667:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 668:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 669:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 670:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Enable/Disable frames to be received in half-duplex mode
 671:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * while transmitting.
 672:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 673:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 674:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to disable the received in half-duplex mode, else to enable it.
 675:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 676:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_efrhd(Gmac* p_gmac, uint8_t uc_enable)
 677:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 678:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 679:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR |= GMAC_NCFGR_EFRHD;
 680:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 681:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR &= ~GMAC_NCFGR_EFRHD;
 682:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 683:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 684:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 685:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 686:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Enable/Disable ignore RX FCS.
 687:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 688:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 689:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to disable ignore RX FCS, else to enable it.
 690:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 691:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_ignore_rx_fcs(Gmac* p_gmac, uint8_t uc_enable)
 692:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 693:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 694:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR |= GMAC_NCFGR_IRXFCS;
 695:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 696:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR &= ~GMAC_NCFGR_IRXFCS;
 697:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 698:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 699:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 700:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 701:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Get Network Status.
 702:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 703:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 704:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 705:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \return Network status.
 706:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 707:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline uint32_t gmac_get_status(Gmac* p_gmac)
 708:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 709:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	return p_gmac->GMAC_NSR;
 710:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 711:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 712:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 713:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Get MDIO IN pin status.
 714:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 715:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 716:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 717:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \return MDIO IN pin status.
 718:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 719:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline uint8_t gmac_get_MDIO(Gmac* p_gmac)
ARM GAS  /tmp/ccPmdm0I.s 			page 31


 720:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 721:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	return ((p_gmac->GMAC_NSR & GMAC_NSR_MDIO) > 0);
 722:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 723:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 724:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 725:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Check if PHY is idle.
 726:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 727:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 728:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 729:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \return  1 if PHY is idle.
 730:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 731:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline uint8_t gmac_is_phy_idle(Gmac* p_gmac)
 732:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 733:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	return ((p_gmac->GMAC_NSR & GMAC_NSR_IDLE) > 0);
 734:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 735:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 736:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 737:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Return transmit status.
 738:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 739:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 740:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 741:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \return  Transmit status.
 742:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 743:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline uint32_t gmac_get_tx_status(Gmac* p_gmac)
 744:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 745:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	return p_gmac->GMAC_TSR;
 746:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 747:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 748:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 749:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Clear transmit status.
 750:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 751:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 752:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param ul_status   Transmit status.
 753:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 754:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_clear_tx_status(Gmac* p_gmac, uint32_t ul_status)
 755:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 756:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_TSR = ul_status;
 757:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 758:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 759:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 760:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Return receive status.
 761:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 762:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 763:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 764:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline uint32_t gmac_get_rx_status(Gmac* p_gmac)
 765:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 766:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	return p_gmac->GMAC_RSR;
 767:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 768:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 769:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 770:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Clear receive status.
 771:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 772:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 773:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param ul_status   Receive status.
 774:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 775:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_clear_rx_status(Gmac* p_gmac, uint32_t ul_status)
 776:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
ARM GAS  /tmp/ccPmdm0I.s 			page 32


 777:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_RSR = ul_status;
 778:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 779:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 780:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 781:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Set Rx Queue.
 782:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 783:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 784:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param ul_addr   Rx queue address.
 785:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 786:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_set_rx_queue(Gmac* p_gmac, uint32_t ul_addr)
 787:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 788:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_RBQB = GMAC_RBQB_ADDR_Msk & ul_addr;
 789:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 790:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 791:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 792:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Set Rx buffer size.
 793:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 794:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 795:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param ul_addr   Rx buffer.
 796:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 797:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_set_rx_bufsize(Gmac* p_gmac, uint32_t ul_code)
 798:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 799:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_DCFGR = (p_gmac->GMAC_DCFGR & ~GMAC_DCFGR_DRBS_Msk)
 800:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			| GMAC_DCFGR_DRBS(ul_code);
 801:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 802:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 803:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 804:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Get Rx Queue Address.
 805:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 806:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 807:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 808:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \return  Rx queue address.
 809:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 810:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline uint32_t gmac_get_rx_queue(Gmac* p_gmac)
 811:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 812:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	return p_gmac->GMAC_RBQB;
 813:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 814:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 815:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 816:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Set Tx Queue.
 817:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 818:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 819:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param ul_addr  Tx queue address.
 820:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 821:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_set_tx_queue(Gmac* p_gmac, uint32_t ul_addr)
 822:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 823:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_TBQB = GMAC_TBQB_ADDR_Msk & ul_addr;
 824:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 825:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 826:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 827:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Get Tx Queue.
 828:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 829:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 830:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 831:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \return  Rx queue address.
 832:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 833:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline uint32_t gmac_get_tx_queue(Gmac* p_gmac)
ARM GAS  /tmp/ccPmdm0I.s 			page 33


 834:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 835:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	return p_gmac->GMAC_TBQB;
 836:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 837:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 838:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 839:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Enable interrupt(s).
 840:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 841:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 842:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param ul_source   Interrupt source(s) to be enabled.
 843:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 844:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_interrupt(Gmac* p_gmac, uint32_t ul_source)
 845:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 846:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_IER = ul_source;
 847:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 848:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 849:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 850:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Disable interrupt(s).
 851:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 852:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 853:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param ul_source   Interrupt source(s) to be disabled.
 854:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 855:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_disable_interrupt(Gmac* p_gmac, uint32_t ul_source)
 856:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 857:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_IDR = ul_source;
 858:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 859:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 860:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 861:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Return interrupt status.
 862:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 863:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 864:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 865:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \return Interrupt status.
 866:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 867:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline uint32_t gmac_get_interrupt_status(Gmac* p_gmac)
 868:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 869:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	return p_gmac->GMAC_ISR;
 870:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 871:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 872:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 873:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Return interrupt mask.
 874:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 875:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 876:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 877:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \return Interrupt mask.
 878:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 879:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline uint32_t gmac_get_interrupt_mask(Gmac* p_gmac)
 880:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 881:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	return p_gmac->GMAC_IMR;
 882:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 883:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 884:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 885:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Execute PHY maintenance command.
 886:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 887:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 888:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param uc_phy_addr   PHY address.
 889:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param uc_reg_addr   Register address.
 890:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param uc_rw   1 to Read, 0 to write.
ARM GAS  /tmp/ccPmdm0I.s 			page 34


 891:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param us_data   Data to be performed, write only.
 892:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 893:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_maintain_phy(Gmac* p_gmac,
 894:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		uint8_t uc_phy_addr, uint8_t uc_reg_addr, uint8_t uc_rw,
 895:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		uint16_t us_data)
 896:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 897:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	/* Wait until bus idle */
 898:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	while ((p_gmac->GMAC_NSR & GMAC_NSR_IDLE) == 0);
 899:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	/* Write maintain register */
 900:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_MAN = GMAC_MAN_WTN(GMAC_MAN_CODE_VALUE)
 901:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			| GMAC_MAN_CLTTO
 902:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			| GMAC_MAN_PHYA(uc_phy_addr)
 903:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			| GMAC_MAN_REGA(uc_reg_addr)
 904:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			| GMAC_MAN_OP((uc_rw ? GMAC_MAN_RW_TYPE : GMAC_MAN_READ_ONLY))
 905:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			| GMAC_MAN_DATA(us_data);
 906:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 907:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 908:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 909:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Get PHY maintenance data returned.
 910:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 911:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 912:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 913:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \return Get PHY data.
 914:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 915:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline uint16_t gmac_get_phy_data(Gmac* p_gmac)
 916:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 917:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	/* Wait until bus idle */
 918:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	while ((p_gmac->GMAC_NSR & GMAC_NSR_IDLE) == 0);
 919:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	/* Return data */
 920:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	return (uint16_t) (p_gmac->GMAC_MAN & GMAC_MAN_DATA_Msk);
 921:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 922:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 923:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 924:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Set Hash.
 925:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 926:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 927:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param ul_hash_top   Hash top.
 928:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param ul_hash_bottom   Hash bottom.
 929:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 930:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_set_hash(Gmac* p_gmac, uint32_t ul_hash_top,
 931:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		uint32_t ul_hash_bottom)
 932:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 933:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_HRB = ul_hash_bottom;
 934:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_HRT = ul_hash_top;
 935:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 936:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 937:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 938:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Set 64 bits Hash.
 939:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 940:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 941:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param ull_hash   64 bits hash value.
 942:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 943:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_set_hash64(Gmac* p_gmac, uint64_t ull_hash)
 944:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 945:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_HRB = (uint32_t) ull_hash;
 946:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_HRT = (uint32_t) (ull_hash >> 32);
 947:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
ARM GAS  /tmp/ccPmdm0I.s 			page 35


 948:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 949:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 950:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Set MAC Address.
 951:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 952:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 953:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param uc_index  GMAC specific address register index.
 954:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_mac_addr  GMAC address.
 955:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 956:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_set_address(Gmac* p_gmac, uint8_t uc_index,
 957:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		uint8_t* p_mac_addr)
 958:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 959:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_SA[uc_index].GMAC_SAB = (p_mac_addr[3] << 24)
 960:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			| (p_mac_addr[2] << 16)
 961:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			| (p_mac_addr[1] << 8)
 962:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			| (p_mac_addr[0]);
 963:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_SA[uc_index].GMAC_SAT = (p_mac_addr[5] << 8)
 964:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			| (p_mac_addr[4]);
 965:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 966:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 967:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 968:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Set MAC Address via 2 dword.
 969:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****   *
 970:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 971:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param uc_index  GMAC specific address register index.
 972:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param ul_mac_top  GMAC top address.
 973:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param ul_mac_bottom  GMAC bottom address.
 974:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 975:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_set_address32(Gmac* p_gmac, uint8_t uc_index,
 976:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		uint32_t ul_mac_top, uint32_t ul_mac_bottom)
 977:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 978:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_SA[uc_index].GMAC_SAB = ul_mac_bottom;
 979:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_SA[uc_index].GMAC_SAT = ul_mac_top;
 980:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 981:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 982:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 983:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Set MAC Address via int64.
 984:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 985:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 986:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param uc_index  GMAC specific address register index.
 987:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param ull_mac  64-bit GMAC address.
 988:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
 989:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_set_address64(Gmac* p_gmac, uint8_t uc_index,
 990:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		uint64_t ull_mac)
 991:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
 992:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_SA[uc_index].GMAC_SAB = (uint32_t) ull_mac;
 993:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_SA[uc_index].GMAC_SAT = (uint32_t) (ull_mac >> 32);
 994:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
 995:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
 996:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** /**
 997:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \brief Select media independent interface mode.
 998:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  *
 999:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
1000:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  * \param mode   Media independent interface mode.
1001:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h ****  */
1002:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #if (SAM4E)
1003:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_select_mii_mode(Gmac* p_gmac, gmac_mii_mode_t mode)
1004:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
ARM GAS  /tmp/ccPmdm0I.s 			page 36


1005:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	switch (mode) {
1006:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		case GMAC_PHY_MII:
1007:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		case GMAC_PHY_RMII:
1008:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			p_gmac->GMAC_UR |= GMAC_UR_MII;
1009:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		break;
1010:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
1011:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		default:
1012:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			p_gmac->GMAC_UR &= ~GMAC_UR_MII;
1013:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		break;
1014:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
1015:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** }
1016:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** #else
1017:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** static inline void gmac_select_mii_mode(Gmac* p_gmac, gmac_mii_mode_t mode)
1018:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** {
1019:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	switch (mode) {
1020:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		case GMAC_PHY_MII:
1021:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			p_gmac->GMAC_UR |= GMAC_UR_RMII;
1022:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			break;
1023:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 
1024:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		case GMAC_PHY_RMII:
1025:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		default:
1026:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 			p_gmac->GMAC_UR &= ~GMAC_UR_RMII;
 506              		.loc 2 1026 0
 507 0100 E268     		ldr	r2, [r4, #12]
 508              	.LVL55:
 509              	.LBE103:
 510              	.LBE102:
 416:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	gmac_enable_management(p_gmac, false);
 511              		.loc 1 416 0
 512 0102 0021     		movs	r1, #0
 513              	.LBB105:
 514              	.LBB106:
 274:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 515              		.loc 2 274 0
 516 0104 0F4B     		ldr	r3, .L56+4
 517              	.LBE106:
 518              	.LBE105:
 519              	.LBB108:
 520              	.LBB104:
 521              		.loc 2 1026 0
 522 0106 22F00102 		bic	r2, r2, #1
 523 010a E260     		str	r2, [r4, #12]
 524              	.LVL56:
 525              	.LBE104:
 526              	.LBE108:
 527              	.LBB109:
 528              	.LBB107:
 274:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 529              		.loc 2 274 0
 530 010c 1A68     		ldr	r2, [r3]
 531 010e 42F00802 		orr	r2, r2, #8
 532 0112 1A60     		str	r2, [r3]
 533              	.LVL57:
 534              	.LBE107:
 535              	.LBE109:
 536              	.LBB110:
 537              	.LBB111:
ARM GAS  /tmp/ccPmdm0I.s 			page 37


 259:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 538              		.loc 2 259 0
 539 0114 1A68     		ldr	r2, [r3]
 540 0116 42F00402 		orr	r2, r2, #4
 541 011a 1A60     		str	r2, [r3]
 542              	.LVL58:
 543              	.LBE111:
 544              	.LBE110:
 545              	.LBB112:
 546              	.LBB113:
 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 547              		.loc 2 291 0
 548 011c 2368     		ldr	r3, [r4]
 549              	.LBE113:
 550              	.LBE112:
 416:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	gmac_enable_management(p_gmac, false);
 551              		.loc 1 416 0
 552 011e 2970     		strb	r1, [r5]
 553              	.LVL59:
 554              	.LBB115:
 555              	.LBB114:
 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 556              		.loc 2 291 0
 557 0120 23F01003 		bic	r3, r3, #16
 558 0124 2360     		str	r3, [r4]
 559              	.LVL60:
 560              	.LBE114:
 561              	.LBE115:
 418:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** }
 562              		.loc 1 418 0
 563 0126 80E7     		b	.L52
 564              	.LVL61:
 565              	.L47:
 392:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	} else if ((ul_phy_anar & ul_phy_analpar) & GMII_10_FDX) {
 566              		.loc 1 392 0
 567 0128 0122     		movs	r2, #1
 568              	.L42:
 569              	.LVL62:
 570              	.LBB116:
 571              	.LBB98:
 469:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 572              		.loc 2 469 0
 573 012a 6368     		ldr	r3, [r4, #4]
 574 012c 43F00103 		orr	r3, r3, #1
 575 0130 6360     		str	r3, [r4, #4]
 576 0132 E0E7     		b	.L46
 577              	.LVL63:
 578              	.L44:
 579              	.LBE98:
 580              	.LBE116:
 581              	.LBB117:
 582              	.LBB101:
 486:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 583              		.loc 2 486 0
 584 0134 23F00203 		bic	r3, r3, #2
 585 0138 6360     		str	r3, [r4, #4]
 586 013a E1E7     		b	.L45
ARM GAS  /tmp/ccPmdm0I.s 			page 38


 587              	.LVL64:
 588              	.L48:
 589              	.LBE101:
 590              	.LBE117:
 396:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	} else if ((ul_phy_anar & ul_phy_analpar) & GMII_100TX_HDX) {
 591              		.loc 1 396 0
 592 013c 0122     		movs	r2, #1
 593 013e D6E7     		b	.L43
 594              	.L57:
 595              		.align	2
 596              	.L56:
 597 0140 00000000 		.word	.LANCHOR0
 598 0144 00000540 		.word	1074069504
 599              		.cfi_endproc
 600              	.LFE221:
 601              		.size	ethernet_phy_auto_negotiate, .-ethernet_phy_auto_negotiate
 602              		.section	.text.ethernet_phy_reset,"ax",%progbits
 603              		.align	1
 604              		.p2align 2,,3
 605              		.global	ethernet_phy_reset
 606              		.syntax unified
 607              		.thumb
 608              		.thumb_func
 609              		.fpu fpv5-d16
 610              		.type	ethernet_phy_reset, %function
 611              	ethernet_phy_reset:
 612              	.LFB222:
 420:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 421:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** /**
 422:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * \brief Issue a SW reset to reset all registers of the PHY.
 423:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  *
 424:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * \param p_gmac   Pointer to the GMAC instance.
 425:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * \param uc_phy_addr PHY address.
 426:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  *
 427:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  * \Return GMAC_OK if successfully, GMAC_TIMEOUT if timeout.
 428:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c ****  */
 429:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** uint8_t ethernet_phy_reset(Gmac *p_gmac, uint8_t uc_phy_addr)
 430:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** {
 613              		.loc 1 430 0
 614              		.cfi_startproc
 615              		@ args = 0, pretend = 0, frame = 8
 616              		@ frame_needed = 0, uses_anonymous_args = 0
 617              	.LVL65:
 618 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 619              		.cfi_def_cfa_offset 20
 620              		.cfi_offset 4, -20
 621              		.cfi_offset 5, -16
 622              		.cfi_offset 6, -12
 623              		.cfi_offset 7, -8
 624              		.cfi_offset 14, -4
 625              	.LBB118:
 626              	.LBB119:
 289:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 627              		.loc 2 289 0
 628 0002 0768     		ldr	r7, [r0]
 629              	.LBE119:
 630              	.LBE118:
ARM GAS  /tmp/ccPmdm0I.s 			page 39


 631              		.loc 1 430 0
 632 0004 83B0     		sub	sp, sp, #12
 633              		.cfi_def_cfa_offset 32
 431:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uint32_t ul_bmcr;
 432:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uint8_t uc_phy_address = uc_phy_addr;
 433:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uint32_t ul_timeout = ETH_PHY_TIMEOUT;
 434:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uint8_t uc_rc = GMAC_TIMEOUT;
 435:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 436:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	gmac_enable_management(p_gmac, true);
 437:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 438:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	ul_bmcr = GMII_RESET;
 634              		.loc 1 438 0
 635 0006 4FF40043 		mov	r3, #32768
 439:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	gmac_phy_write(p_gmac, uc_phy_address, GMII_BMCR, ul_bmcr);
 636              		.loc 1 439 0
 637 000a 0022     		movs	r2, #0
 638              	.LBB122:
 639              	.LBB120:
 289:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 640              		.loc 2 289 0
 641 000c 47F0100E 		orr	lr, r7, #16
 642              	.LBE120:
 643              	.LBE122:
 438:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	gmac_phy_write(p_gmac, uc_phy_address, GMII_BMCR, ul_bmcr);
 644              		.loc 1 438 0
 645 0010 02AE     		add	r6, sp, #8
 430:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uint32_t ul_bmcr;
 646              		.loc 1 430 0
 647 0012 0546     		mov	r5, r0
 433:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uint8_t uc_rc = GMAC_TIMEOUT;
 648              		.loc 1 433 0
 649 0014 0A24     		movs	r4, #10
 650              	.LBB123:
 651              	.LBB121:
 289:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 652              		.loc 2 289 0
 653 0016 C0F800E0 		str	lr, [r0]
 654              	.LBE121:
 655              	.LBE123:
 430:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uint32_t ul_bmcr;
 656              		.loc 1 430 0
 657 001a 0F46     		mov	r7, r1
 658              	.LVL66:
 438:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	gmac_phy_write(p_gmac, uc_phy_address, GMII_BMCR, ul_bmcr);
 659              		.loc 1 438 0
 660 001c 46F8043D 		str	r3, [r6, #-4]!
 661              		.loc 1 439 0
 662 0020 FFF7FEFF 		bl	gmac_phy_write
 663              	.LVL67:
 664              	.L60:
 440:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 441:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	do {
 442:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		gmac_phy_read(p_gmac, uc_phy_address, GMII_BMCR, &ul_bmcr);
 665              		.loc 1 442 0 discriminator 2
 666 0024 3346     		mov	r3, r6
 667 0026 0022     		movs	r2, #0
 668 0028 3946     		mov	r1, r7
ARM GAS  /tmp/ccPmdm0I.s 			page 40


 669 002a 2846     		mov	r0, r5
 670 002c FFF7FEFF 		bl	gmac_phy_read
 671              	.LVL68:
 443:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		ul_timeout--;
 444:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	} while ((ul_bmcr & GMII_RESET) && ul_timeout);
 672              		.loc 1 444 0 discriminator 2
 673 0030 019B     		ldr	r3, [sp, #4]
 443:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		ul_timeout--;
 674              		.loc 1 443 0 discriminator 2
 675 0032 013C     		subs	r4, r4, #1
 676              	.LVL69:
 677              		.loc 1 444 0 discriminator 2
 678 0034 1B04     		lsls	r3, r3, #16
 679 0036 08D5     		bpl	.L59
 680              		.loc 1 444 0 is_stmt 0 discriminator 1
 681 0038 002C     		cmp	r4, #0
 682 003a F3D1     		bne	.L60
 683              	.LVL70:
 684              	.LBB124:
 685              	.LBB125:
 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 686              		.loc 2 291 0 is_stmt 1
 687 003c 2B68     		ldr	r3, [r5]
 688              	.LBE125:
 689              	.LBE124:
 434:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 690              		.loc 1 434 0
 691 003e 0120     		movs	r0, #1
 692              	.LBB130:
 693              	.LBB126:
 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 694              		.loc 2 291 0
 695 0040 23F01003 		bic	r3, r3, #16
 696 0044 2B60     		str	r3, [r5]
 697              	.LVL71:
 698              	.LBE126:
 699              	.LBE130:
 445:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 446:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	gmac_enable_management(p_gmac, false);
 447:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 448:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	if (ul_timeout) {
 449:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_rc = GMAC_OK;
 450:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	}
 451:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 452:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	return (uc_rc);
 453:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** }
 700              		.loc 1 453 0
 701 0046 03B0     		add	sp, sp, #12
 702              		.cfi_remember_state
 703              		.cfi_def_cfa_offset 20
 704              		@ sp needed
 705 0048 F0BD     		pop	{r4, r5, r6, r7, pc}
 706              	.LVL72:
 707              	.L59:
 708              		.cfi_restore_state
 709              	.LBB131:
 710              	.LBB127:
ARM GAS  /tmp/ccPmdm0I.s 			page 41


 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 711              		.loc 2 291 0
 712 004a 2B68     		ldr	r3, [r5]
 713              	.LBE127:
 714              	.LBE131:
 434:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 715              		.loc 1 434 0
 716 004c B4FA84F0 		clz	r0, r4
 717              	.LBB132:
 718              	.LBB128:
 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 719              		.loc 2 291 0
 720 0050 23F01003 		bic	r3, r3, #16
 721              	.LBE128:
 722              	.LBE132:
 434:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 723              		.loc 1 434 0
 724 0054 4009     		lsrs	r0, r0, #5
 725              	.LBB133:
 726              	.LBB129:
 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 727              		.loc 2 291 0
 728 0056 2B60     		str	r3, [r5]
 729              	.LVL73:
 730              	.LBE129:
 731              	.LBE133:
 732              		.loc 1 453 0
 733 0058 03B0     		add	sp, sp, #12
 734              		.cfi_def_cfa_offset 20
 735              		@ sp needed
 736 005a F0BD     		pop	{r4, r5, r6, r7, pc}
 737              		.cfi_endproc
 738              	.LFE222:
 739              		.size	ethernet_phy_reset, .-ethernet_phy_reset
 740              		.section	.text.ethernet_phy_init,"ax",%progbits
 741              		.align	1
 742              		.p2align 2,,3
 743              		.global	ethernet_phy_init
 744              		.syntax unified
 745              		.thumb
 746              		.thumb_func
 747              		.fpu fpv5-d16
 748              		.type	ethernet_phy_init, %function
 749              	ethernet_phy_init:
 750              	.LFB219:
 146:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uint8_t uc_rc;
 751              		.loc 1 146 0
 752              		.cfi_startproc
 753              		@ args = 0, pretend = 0, frame = 8
 754              		@ frame_needed = 0, uses_anonymous_args = 0
 755              	.LVL74:
 756 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 757              		.cfi_def_cfa_offset 24
 758              		.cfi_offset 4, -24
 759              		.cfi_offset 5, -20
 760              		.cfi_offset 6, -16
 761              		.cfi_offset 7, -12
ARM GAS  /tmp/ccPmdm0I.s 			page 42


 762              		.cfi_offset 8, -8
 763              		.cfi_offset 14, -4
 764 0004 0646     		mov	r6, r0
 765 0006 82B0     		sub	sp, sp, #8
 766              		.cfi_def_cfa_offset 32
 156:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 767              		.loc 1 156 0
 768 0008 3E48     		ldr	r0, .L92
 769              	.LVL75:
 146:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uint8_t uc_rc;
 770              		.loc 1 146 0
 771 000a 1446     		mov	r4, r2
 772 000c 8846     		mov	r8, r1
 156:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 773              		.loc 1 156 0
 774 000e FFF7FEFF 		bl	ethernet_phy_reset
 775              	.LVL76:
 776              	.LBB142:
 777              	.LBB143:
 577:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		return GMAC_INVALID;
 778              		.loc 2 577 0
 779 0012 3D4B     		ldr	r3, .L92+4
 780 0014 9C42     		cmp	r4, r3
 781 0016 32D8     		bhi	.L86
 579:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		ul_clk = GMAC_NCFGR_CLK_MCK_96;
 782              		.loc 2 579 0
 783 0018 3C4B     		ldr	r3, .L92+8
 784 001a 9C42     		cmp	r4, r3
 785 001c 33D9     		bls	.L90
 580:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else if (ul_mck > GMAC_MCK_SPEED_120MHZ) {
 786              		.loc 2 580 0
 787 001e 4FF4A014 		mov	r4, #1310720
 788              	.LVL77:
 789              	.L71:
 592:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_NCFGR |= ul_clk;
 790              		.loc 2 592 0
 791 0022 7368     		ldr	r3, [r6, #4]
 792              	.LBE143:
 793              	.LBE142:
 794              	.LBB150:
 795              	.LBB151:
  97:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uint8_t uc_rc = 0;
 796              		.loc 1 97 0
 797 0024 0020     		movs	r0, #0
 798 0026 02AF     		add	r7, sp, #8
 105:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 799              		.loc 1 105 0
 800 0028 0222     		movs	r2, #2
 801              	.LBE151:
 802              	.LBE150:
 803              	.LBB171:
 804              	.LBB144:
 592:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_NCFGR |= ul_clk;
 805              		.loc 2 592 0
 806 002a 23F4E013 		bic	r3, r3, #1835008
 807              	.LBE144:
 808              	.LBE171:
ARM GAS  /tmp/ccPmdm0I.s 			page 43


 809              	.LBB172:
 810              	.LBB166:
 105:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 811              		.loc 1 105 0
 812 002e 4146     		mov	r1, r8
  97:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	uint8_t uc_rc = 0;
 813              		.loc 1 97 0
 814 0030 47F8040D 		str	r0, [r7, #-4]!
 105:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 815              		.loc 1 105 0
 816 0034 3046     		mov	r0, r6
 817              	.LBE166:
 818              	.LBE172:
 819              	.LBB173:
 820              	.LBB145:
 592:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_NCFGR |= ul_clk;
 821              		.loc 2 592 0
 822 0036 7360     		str	r3, [r6, #4]
 823              	.LBE145:
 824              	.LBE173:
 825              	.LBB174:
 826              	.LBB167:
 105:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 827              		.loc 1 105 0
 828 0038 3B46     		mov	r3, r7
 829              	.LBE167:
 830              	.LBE174:
 831              	.LBB175:
 832              	.LBB146:
 593:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	return GMAC_OK;
 833              		.loc 2 593 0
 834 003a 7568     		ldr	r5, [r6, #4]
 835 003c 2C43     		orrs	r4, r4, r5
 836              	.LVL78:
 837 003e 7460     		str	r4, [r6, #4]
 838              	.LVL79:
 839              	.LBE146:
 840              	.LBE175:
 841              	.LBB176:
 842              	.LBB168:
 843              	.LBB152:
 844              	.LBB153:
 289:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else {
 845              		.loc 2 289 0
 846 0040 3468     		ldr	r4, [r6]
 847 0042 44F01004 		orr	r4, r4, #16
 848 0046 3460     		str	r4, [r6]
 849              	.LVL80:
 850              	.LBE153:
 851              	.LBE152:
 105:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 852              		.loc 1 105 0
 853 0048 FFF7FEFF 		bl	gmac_phy_read
 854              	.LVL81:
 108:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		uc_rc = 0xFF;
 855              		.loc 1 108 0
 856 004c 019B     		ldr	r3, [sp, #4]
ARM GAS  /tmp/ccPmdm0I.s 			page 44


 857 004e 222B     		cmp	r3, #34
 858 0050 3CD0     		beq	.L72
 859 0052 4446     		mov	r4, r8
 860 0054 2025     		movs	r5, #32
 861              	.LVL82:
 862              	.L74:
 111:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 			gmac_phy_read(p_gmac, uc_phy_address, GMII_PHYID1, &ul_value);
 863              		.loc 1 111 0
 864 0056 0134     		adds	r4, r4, #1
 865              	.LVL83:
 112:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 			if (ul_value == GMII_OUI_MSB) {
 866              		.loc 1 112 0
 867 0058 3B46     		mov	r3, r7
 868 005a 0222     		movs	r2, #2
 869 005c 3046     		mov	r0, r6
 111:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 			gmac_phy_read(p_gmac, uc_phy_address, GMII_PHYID1, &ul_value);
 870              		.loc 1 111 0
 871 005e 04F01F04 		and	r4, r4, #31
 872              	.LVL84:
 112:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 			if (ul_value == GMII_OUI_MSB) {
 873              		.loc 1 112 0
 874 0062 2146     		mov	r1, r4
 875 0064 FFF7FEFF 		bl	gmac_phy_read
 876              	.LVL85:
 113:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 				uc_rc = uc_phy_address;
 877              		.loc 1 113 0
 878 0068 019A     		ldr	r2, [sp, #4]
 879 006a 6B1E     		subs	r3, r5, #1
 880 006c 222A     		cmp	r2, #34
 881 006e 16D0     		beq	.L73
 110:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 			uc_phy_address = (uc_phy_address + 1) & 0x1F;
 882              		.loc 1 110 0
 883 0070 13F0FF05 		ands	r5, r3, #255
 884              	.LVL86:
 885 0074 EFD1     		bne	.L74
 886              	.LVL87:
 887              	.LBB154:
 888              	.LBB155:
 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 889              		.loc 2 291 0
 890 0076 3368     		ldr	r3, [r6]
 891 0078 23F01003 		bic	r3, r3, #16
 892 007c 3360     		str	r3, [r6]
 893              	.LVL88:
 894              	.L86:
 895              	.LBE155:
 896              	.LBE154:
 897              	.LBE168:
 898              	.LBE176:
 174:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 899              		.loc 1 174 0
 900 007e 0020     		movs	r0, #0
 901 0080 02B0     		add	sp, sp, #8
 902              		.cfi_remember_state
 903              		.cfi_def_cfa_offset 24
 904              		@ sp needed
 905 0082 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
ARM GAS  /tmp/ccPmdm0I.s 			page 45


 906              	.LVL89:
 907              	.L90:
 908              		.cfi_restore_state
 909              	.LBB177:
 910              	.LBB147:
 581:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		ul_clk = GMAC_NCFGR_CLK_MCK_64;
 911              		.loc 2 581 0
 912 0086 224B     		ldr	r3, .L92+12
 913 0088 9C42     		cmp	r4, r3
 914 008a 1CD8     		bhi	.L81
 583:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		ul_clk = GMAC_NCFGR_CLK_MCK_48;
 915              		.loc 2 583 0
 916 008c 214B     		ldr	r3, .L92+16
 917 008e 9C42     		cmp	r4, r3
 918 0090 2DD8     		bhi	.L82
 585:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		ul_clk = GMAC_NCFGR_CLK_MCK_32;
 919              		.loc 2 585 0
 920 0092 214B     		ldr	r3, .L92+20
 921 0094 9C42     		cmp	r4, r3
 922 0096 2DD9     		bls	.L91
 586:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else if (ul_mck > GMAC_MCK_SPEED_20MHZ) {
 923              		.loc 2 586 0
 924 0098 4FF40024 		mov	r4, #524288
 925              	.LVL90:
 926 009c C1E7     		b	.L71
 927              	.LVL91:
 928              	.L73:
 929              	.LBE147:
 930              	.LBE177:
 931              	.LBB178:
 932              	.LBB169:
 933              	.LBB161:
 934              	.LBB156:
 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 935              		.loc 2 291 0
 936 009e 3568     		ldr	r5, [r6]
 937              	.LVL92:
 938              	.LBE156:
 939              	.LBE161:
 123:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	}
 940              		.loc 1 123 0
 941 00a0 3B46     		mov	r3, r7
 942 00a2 0122     		movs	r2, #1
 943 00a4 2146     		mov	r1, r4
 944              	.LBB162:
 945              	.LBB157:
 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 946              		.loc 2 291 0
 947 00a6 25F01005 		bic	r5, r5, #16
 948              	.LBE157:
 949              	.LBE162:
 123:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	}
 950              		.loc 1 123 0
 951 00aa 3046     		mov	r0, r6
 952              	.LBB163:
 953              	.LBB158:
 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
ARM GAS  /tmp/ccPmdm0I.s 			page 46


 954              		.loc 2 291 0
 955 00ac 3560     		str	r5, [r6]
 956              	.LVL93:
 957              	.LBE158:
 958              	.LBE163:
 123:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	}
 959              		.loc 1 123 0
 960 00ae FFF7FEFF 		bl	gmac_phy_read
 961              	.LVL94:
 962              	.LBE169:
 963              	.LBE178:
 169:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		ethernet_phy_reset(p_gmac, uc_phy_addr);
 964              		.loc 1 169 0
 965 00b2 A045     		cmp	r8, r4
 966 00b4 E3D0     		beq	.L86
 170:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	}
 967              		.loc 1 170 0
 968 00b6 4146     		mov	r1, r8
 969 00b8 3046     		mov	r0, r6
 970 00ba FFF7FEFF 		bl	ethernet_phy_reset
 971              	.LVL95:
 174:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 972              		.loc 1 174 0
 973 00be 0020     		movs	r0, #0
 974 00c0 02B0     		add	sp, sp, #8
 975              		.cfi_remember_state
 976              		.cfi_def_cfa_offset 24
 977              		@ sp needed
 978 00c2 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 979              	.LVL96:
 980              	.L81:
 981              		.cfi_restore_state
 982              	.LBB179:
 983              	.LBB148:
 582:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else if (ul_mck > GMAC_MCK_SPEED_80MHZ) {
 984              		.loc 2 582 0
 985 00c6 4FF48014 		mov	r4, #1048576
 986              	.LVL97:
 987 00ca AAE7     		b	.L71
 988              	.LVL98:
 989              	.L72:
 990              	.LBE148:
 991              	.LBE179:
 992              	.LBB180:
 993              	.LBB170:
 994              	.LBB164:
 995              	.LBB159:
 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 996              		.loc 2 291 0
 997 00cc 3368     		ldr	r3, [r6]
 998              	.LBE159:
 999              	.LBE164:
 122:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		gmac_phy_read(p_gmac, uc_phy_address, GMII_BMSR, &ul_value);
 1000              		.loc 1 122 0
 1001 00ce B8F1FF0F 		cmp	r8, #255
 1002              	.LBB165:
 1003              	.LBB160:
ARM GAS  /tmp/ccPmdm0I.s 			page 47


 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 1004              		.loc 2 291 0
 1005 00d2 23F01003 		bic	r3, r3, #16
 1006 00d6 3360     		str	r3, [r6]
 1007              	.LVL99:
 1008              	.LBE160:
 1009              	.LBE165:
 122:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 		gmac_phy_read(p_gmac, uc_phy_address, GMII_BMSR, &ul_value);
 1010              		.loc 1 122 0
 1011 00d8 D1D0     		beq	.L86
 123:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 	}
 1012              		.loc 1 123 0
 1013 00da 3B46     		mov	r3, r7
 1014 00dc 4146     		mov	r1, r8
 1015 00de 3046     		mov	r0, r6
 1016 00e0 0122     		movs	r2, #1
 1017 00e2 FFF7FEFF 		bl	gmac_phy_read
 1018              	.LVL100:
 1019              	.LBE170:
 1020              	.LBE180:
 174:../asf/sam/components/ethernet_phy/ksz8081rna/ethernet_phy.c **** 
 1021              		.loc 1 174 0
 1022 00e6 0020     		movs	r0, #0
 1023 00e8 02B0     		add	sp, sp, #8
 1024              		.cfi_remember_state
 1025              		.cfi_def_cfa_offset 24
 1026              		@ sp needed
 1027 00ea BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1028              	.LVL101:
 1029              	.L82:
 1030              		.cfi_restore_state
 1031              	.LBB181:
 1032              	.LBB149:
 584:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	} else if (ul_mck > GMAC_MCK_SPEED_40MHZ) {
 1033              		.loc 2 584 0
 1034 00ee 4FF44024 		mov	r4, #786432
 1035              	.LVL102:
 1036 00f2 96E7     		b	.L71
 1037              	.LVL103:
 1038              	.L91:
 587:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 		ul_clk = GMAC_NCFGR_CLK_MCK_16;
 1039              		.loc 2 587 0
 1040 00f4 094B     		ldr	r3, .L92+24
 590:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac/gmac.h **** 	}
 1041              		.loc 2 590 0
 1042 00f6 9C42     		cmp	r4, r3
 1043 00f8 8CBF     		ite	hi
 1044 00fa 4FF48024 		movhi	r4, #262144
 1045 00fe 0024     		movls	r4, #0
 1046              	.LVL104:
 1047 0100 8FE7     		b	.L71
 1048              	.L93:
 1049 0102 00BF     		.align	2
 1050              	.L92:
 1051 0104 00000540 		.word	1074069504
 1052 0108 001C4E0E 		.word	240000000
 1053 010c 00688909 		.word	160000000
ARM GAS  /tmp/ccPmdm0I.s 			page 48


 1054 0110 000E2707 		.word	120000000
 1055 0114 00B4C404 		.word	80000000
 1056 0118 005A6202 		.word	40000000
 1057 011c 002D3101 		.word	20000000
 1058              	.LBE149:
 1059              	.LBE181:
 1060              		.cfi_endproc
 1061              	.LFE219:
 1062              		.size	ethernet_phy_init, .-ethernet_phy_init
 1063              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 1064              		.align	2
 1065              		.type	cpu_irq_critical_section_counter, %object
 1066              		.size	cpu_irq_critical_section_counter, 4
 1067              	cpu_irq_critical_section_counter:
 1068 0000 00000000 		.space	4
 1069              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 1070              		.type	cpu_irq_prev_interrupt_state, %object
 1071              		.size	cpu_irq_prev_interrupt_state, 1
 1072              	cpu_irq_prev_interrupt_state:
 1073 0000 00       		.space	1
 1074              		.section	.bss.phyInitialized,"aw",%nobits
 1075              		.set	.LANCHOR0,. + 0
 1076              		.type	phyInitialized, %object
 1077              		.size	phyInitialized, 1
 1078              	phyInitialized:
 1079 0000 00       		.space	1
 1080              		.text
 1081              	.Letext0:
 1082              		.file 3 "/usr/include/newlib/machine/_default_types.h"
 1083              		.file 4 "/usr/include/newlib/sys/_stdint.h"
 1084              		.file 5 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 1085              		.file 6 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 1086              		.file 7 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/gmac
 1087              		.file 8 "/usr/include/newlib/sys/lock.h"
 1088              		.file 9 "/usr/include/newlib/sys/_types.h"
 1089              		.file 10 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 1090              		.file 11 "/usr/include/newlib/sys/reent.h"
 1091              		.file 12 "/usr/include/newlib/stdlib.h"
 1092              		.file 13 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 1093              		.section	.debug_info,"",%progbits
 1094              	.Ldebug_info0:
 1095 0000 671D0000 		.4byte	0x1d67
 1096 0004 0400     		.2byte	0x4
 1097 0006 00000000 		.4byte	.Ldebug_abbrev0
 1098 000a 04       		.byte	0x4
 1099 000b 01       		.uleb128 0x1
 1100 000c 090E0000 		.4byte	.LASF363
 1101 0010 0C       		.byte	0xc
 1102 0011 3F050000 		.4byte	.LASF364
 1103 0015 38070000 		.4byte	.LASF365
 1104 0019 18020000 		.4byte	.Ldebug_ranges0+0x218
 1105 001d 00000000 		.4byte	0
 1106 0021 00000000 		.4byte	.Ldebug_line0
 1107 0025 02       		.uleb128 0x2
 1108 0026 04       		.byte	0x4
 1109 0027 05       		.byte	0x5
 1110 0028 696E7400 		.ascii	"int\000"
ARM GAS  /tmp/ccPmdm0I.s 			page 49


 1111 002c 03       		.uleb128 0x3
 1112 002d 04       		.byte	0x4
 1113 002e 07       		.byte	0x7
 1114 002f 9E070000 		.4byte	.LASF0
 1115 0033 03       		.uleb128 0x3
 1116 0034 01       		.byte	0x1
 1117 0035 06       		.byte	0x6
 1118 0036 380F0000 		.4byte	.LASF1
 1119 003a 04       		.uleb128 0x4
 1120 003b 8F0B0000 		.4byte	.LASF5
 1121 003f 03       		.byte	0x3
 1122 0040 1D       		.byte	0x1d
 1123 0041 45000000 		.4byte	0x45
 1124 0045 03       		.uleb128 0x3
 1125 0046 01       		.byte	0x1
 1126 0047 08       		.byte	0x8
 1127 0048 DB0C0000 		.4byte	.LASF2
 1128 004c 03       		.uleb128 0x3
 1129 004d 02       		.byte	0x2
 1130 004e 05       		.byte	0x5
 1131 004f 720A0000 		.4byte	.LASF3
 1132 0053 03       		.uleb128 0x3
 1133 0054 02       		.byte	0x2
 1134 0055 07       		.byte	0x7
 1135 0056 740F0000 		.4byte	.LASF4
 1136 005a 04       		.uleb128 0x4
 1137 005b 14070000 		.4byte	.LASF6
 1138 005f 03       		.byte	0x3
 1139 0060 3F       		.byte	0x3f
 1140 0061 65000000 		.4byte	0x65
 1141 0065 03       		.uleb128 0x3
 1142 0066 04       		.byte	0x4
 1143 0067 05       		.byte	0x5
 1144 0068 A80A0000 		.4byte	.LASF7
 1145 006c 04       		.uleb128 0x4
 1146 006d 280A0000 		.4byte	.LASF8
 1147 0071 03       		.byte	0x3
 1148 0072 41       		.byte	0x41
 1149 0073 77000000 		.4byte	0x77
 1150 0077 03       		.uleb128 0x3
 1151 0078 04       		.byte	0x4
 1152 0079 07       		.byte	0x7
 1153 007a 2A0C0000 		.4byte	.LASF9
 1154 007e 03       		.uleb128 0x3
 1155 007f 08       		.byte	0x8
 1156 0080 05       		.byte	0x5
 1157 0081 13080000 		.4byte	.LASF10
 1158 0085 03       		.uleb128 0x3
 1159 0086 08       		.byte	0x8
 1160 0087 07       		.byte	0x7
 1161 0088 3C040000 		.4byte	.LASF11
 1162 008c 04       		.uleb128 0x4
 1163 008d B1070000 		.4byte	.LASF12
 1164 0091 04       		.byte	0x4
 1165 0092 18       		.byte	0x18
 1166 0093 3A000000 		.4byte	0x3a
 1167 0097 04       		.uleb128 0x4
ARM GAS  /tmp/ccPmdm0I.s 			page 50


 1168 0098 880C0000 		.4byte	.LASF13
 1169 009c 04       		.byte	0x4
 1170 009d 2C       		.byte	0x2c
 1171 009e 5A000000 		.4byte	0x5a
 1172 00a2 05       		.uleb128 0x5
 1173 00a3 97000000 		.4byte	0x97
 1174 00a7 04       		.uleb128 0x4
 1175 00a8 68030000 		.4byte	.LASF14
 1176 00ac 04       		.byte	0x4
 1177 00ad 30       		.byte	0x30
 1178 00ae 6C000000 		.4byte	0x6c
 1179 00b2 05       		.uleb128 0x5
 1180 00b3 A7000000 		.4byte	0xa7
 1181 00b7 06       		.uleb128 0x6
 1182 00b8 B2000000 		.4byte	0xb2
 1183 00bc 07       		.uleb128 0x7
 1184 00bd 04       		.byte	0x4
 1185 00be 08       		.uleb128 0x8
 1186 00bf B2000000 		.4byte	0xb2
 1187 00c3 CE000000 		.4byte	0xce
 1188 00c7 09       		.uleb128 0x9
 1189 00c8 D3000000 		.4byte	0xd3
 1190 00cc 07       		.byte	0x7
 1191 00cd 00       		.byte	0
 1192 00ce 05       		.uleb128 0x5
 1193 00cf BE000000 		.4byte	0xbe
 1194 00d3 03       		.uleb128 0x3
 1195 00d4 04       		.byte	0x4
 1196 00d5 07       		.byte	0x7
 1197 00d6 210C0000 		.4byte	.LASF15
 1198 00da 08       		.uleb128 0x8
 1199 00db B7000000 		.4byte	0xb7
 1200 00df EA000000 		.4byte	0xea
 1201 00e3 09       		.uleb128 0x9
 1202 00e4 D3000000 		.4byte	0xd3
 1203 00e8 01       		.byte	0x1
 1204 00e9 00       		.byte	0
 1205 00ea 06       		.uleb128 0x6
 1206 00eb DA000000 		.4byte	0xda
 1207 00ef 05       		.uleb128 0x5
 1208 00f0 EA000000 		.4byte	0xea
 1209 00f4 05       		.uleb128 0x5
 1210 00f5 EA000000 		.4byte	0xea
 1211 00f9 08       		.uleb128 0x8
 1212 00fa B7000000 		.4byte	0xb7
 1213 00fe 09010000 		.4byte	0x109
 1214 0102 09       		.uleb128 0x9
 1215 0103 D3000000 		.4byte	0xd3
 1216 0107 03       		.byte	0x3
 1217 0108 00       		.byte	0
 1218 0109 06       		.uleb128 0x6
 1219 010a F9000000 		.4byte	0xf9
 1220 010e 05       		.uleb128 0x5
 1221 010f 09010000 		.4byte	0x109
 1222 0113 05       		.uleb128 0x5
 1223 0114 09010000 		.4byte	0x109
 1224 0118 08       		.uleb128 0x8
ARM GAS  /tmp/ccPmdm0I.s 			page 51


 1225 0119 B7000000 		.4byte	0xb7
 1226 011d 28010000 		.4byte	0x128
 1227 0121 09       		.uleb128 0x9
 1228 0122 D3000000 		.4byte	0xd3
 1229 0126 04       		.byte	0x4
 1230 0127 00       		.byte	0
 1231 0128 06       		.uleb128 0x6
 1232 0129 18010000 		.4byte	0x118
 1233 012d 05       		.uleb128 0x5
 1234 012e 28010000 		.4byte	0x128
 1235 0132 05       		.uleb128 0x5
 1236 0133 28010000 		.4byte	0x128
 1237 0137 05       		.uleb128 0x5
 1238 0138 28010000 		.4byte	0x128
 1239 013c 0A       		.uleb128 0xa
 1240 013d B10A0000 		.4byte	.LASF16
 1241 0141 05       		.byte	0x5
 1242 0142 6508     		.2byte	0x865
 1243 0144 A2000000 		.4byte	0xa2
 1244 0148 0B       		.uleb128 0xb
 1245 0149 EF090000 		.4byte	.LASF17
 1246 014d 06       		.byte	0x6
 1247 014e 3A       		.byte	0x3a
 1248 014f A7000000 		.4byte	0xa7
 1249 0153 08       		.uleb128 0x8
 1250 0154 B2000000 		.4byte	0xb2
 1251 0158 63010000 		.4byte	0x163
 1252 015c 09       		.uleb128 0x9
 1253 015d D3000000 		.4byte	0xd3
 1254 0161 03       		.byte	0x3
 1255 0162 00       		.byte	0
 1256 0163 05       		.uleb128 0x5
 1257 0164 53010000 		.4byte	0x153
 1258 0168 0C       		.uleb128 0xc
 1259 0169 08       		.byte	0x8
 1260 016a 07       		.byte	0x7
 1261 016b 38       		.byte	0x38
 1262 016c 89010000 		.4byte	0x189
 1263 0170 0D       		.uleb128 0xd
 1264 0171 04050000 		.4byte	.LASF18
 1265 0175 07       		.byte	0x7
 1266 0176 39       		.byte	0x39
 1267 0177 B2000000 		.4byte	0xb2
 1268 017b 00       		.byte	0
 1269 017c 0D       		.uleb128 0xd
 1270 017d 36050000 		.4byte	.LASF19
 1271 0181 07       		.byte	0x7
 1272 0182 3A       		.byte	0x3a
 1273 0183 B2000000 		.4byte	0xb2
 1274 0187 04       		.byte	0x4
 1275 0188 00       		.byte	0
 1276 0189 04       		.uleb128 0x4
 1277 018a 2F050000 		.4byte	.LASF20
 1278 018e 07       		.byte	0x7
 1279 018f 3B       		.byte	0x3b
 1280 0190 68010000 		.4byte	0x168
 1281 0194 0E       		.uleb128 0xe
ARM GAS  /tmp/ccPmdm0I.s 			page 52


 1282 0195 C007     		.2byte	0x7c0
 1283 0197 07       		.byte	0x7
 1284 0198 3E       		.byte	0x3e
 1285 0199 710A0000 		.4byte	0xa71
 1286 019d 0D       		.uleb128 0xd
 1287 019e 7E070000 		.4byte	.LASF21
 1288 01a2 07       		.byte	0x7
 1289 01a3 3F       		.byte	0x3f
 1290 01a4 B2000000 		.4byte	0xb2
 1291 01a8 00       		.byte	0
 1292 01a9 0D       		.uleb128 0xd
 1293 01aa EA000000 		.4byte	.LASF22
 1294 01ae 07       		.byte	0x7
 1295 01af 40       		.byte	0x40
 1296 01b0 B2000000 		.4byte	0xb2
 1297 01b4 04       		.byte	0x4
 1298 01b5 0D       		.uleb128 0xd
 1299 01b6 F5070000 		.4byte	.LASF23
 1300 01ba 07       		.byte	0x7
 1301 01bb 41       		.byte	0x41
 1302 01bc B7000000 		.4byte	0xb7
 1303 01c0 08       		.byte	0x8
 1304 01c1 0D       		.uleb128 0xd
 1305 01c2 D6010000 		.4byte	.LASF24
 1306 01c6 07       		.byte	0x7
 1307 01c7 42       		.byte	0x42
 1308 01c8 B2000000 		.4byte	0xb2
 1309 01cc 0C       		.byte	0xc
 1310 01cd 0D       		.uleb128 0xd
 1311 01ce 80020000 		.4byte	.LASF25
 1312 01d2 07       		.byte	0x7
 1313 01d3 43       		.byte	0x43
 1314 01d4 B2000000 		.4byte	0xb2
 1315 01d8 10       		.byte	0x10
 1316 01d9 0D       		.uleb128 0xd
 1317 01da 78090000 		.4byte	.LASF26
 1318 01de 07       		.byte	0x7
 1319 01df 44       		.byte	0x44
 1320 01e0 B2000000 		.4byte	0xb2
 1321 01e4 14       		.byte	0x14
 1322 01e5 0D       		.uleb128 0xd
 1323 01e6 14020000 		.4byte	.LASF27
 1324 01ea 07       		.byte	0x7
 1325 01eb 45       		.byte	0x45
 1326 01ec B2000000 		.4byte	0xb2
 1327 01f0 18       		.byte	0x18
 1328 01f1 0D       		.uleb128 0xd
 1329 01f2 38010000 		.4byte	.LASF28
 1330 01f6 07       		.byte	0x7
 1331 01f7 46       		.byte	0x46
 1332 01f8 B2000000 		.4byte	0xb2
 1333 01fc 1C       		.byte	0x1c
 1334 01fd 0D       		.uleb128 0xd
 1335 01fe 4F010000 		.4byte	.LASF29
 1336 0202 07       		.byte	0x7
 1337 0203 47       		.byte	0x47
 1338 0204 B2000000 		.4byte	0xb2
ARM GAS  /tmp/ccPmdm0I.s 			page 53


 1339 0208 20       		.byte	0x20
 1340 0209 0D       		.uleb128 0xd
 1341 020a 4B080000 		.4byte	.LASF30
 1342 020e 07       		.byte	0x7
 1343 020f 48       		.byte	0x48
 1344 0210 B7000000 		.4byte	0xb7
 1345 0214 24       		.byte	0x24
 1346 0215 0D       		.uleb128 0xd
 1347 0216 BF0F0000 		.4byte	.LASF31
 1348 021a 07       		.byte	0x7
 1349 021b 49       		.byte	0x49
 1350 021c B2000000 		.4byte	0xb2
 1351 0220 28       		.byte	0x28
 1352 0221 0D       		.uleb128 0xd
 1353 0222 81080000 		.4byte	.LASF32
 1354 0226 07       		.byte	0x7
 1355 0227 4A       		.byte	0x4a
 1356 0228 B2000000 		.4byte	0xb2
 1357 022c 2C       		.byte	0x2c
 1358 022d 0D       		.uleb128 0xd
 1359 022e ED010000 		.4byte	.LASF33
 1360 0232 07       		.byte	0x7
 1361 0233 4B       		.byte	0x4b
 1362 0234 B2000000 		.4byte	0xb2
 1363 0238 30       		.byte	0x30
 1364 0239 0D       		.uleb128 0xd
 1365 023a 270F0000 		.4byte	.LASF34
 1366 023e 07       		.byte	0x7
 1367 023f 4C       		.byte	0x4c
 1368 0240 B2000000 		.4byte	0xb2
 1369 0244 34       		.byte	0x34
 1370 0245 0D       		.uleb128 0xd
 1371 0246 CD0E0000 		.4byte	.LASF35
 1372 024a 07       		.byte	0x7
 1373 024b 4D       		.byte	0x4d
 1374 024c B7000000 		.4byte	0xb7
 1375 0250 38       		.byte	0x38
 1376 0251 0D       		.uleb128 0xd
 1377 0252 690A0000 		.4byte	.LASF36
 1378 0256 07       		.byte	0x7
 1379 0257 4E       		.byte	0x4e
 1380 0258 B2000000 		.4byte	0xb2
 1381 025c 3C       		.byte	0x3c
 1382 025d 0D       		.uleb128 0xd
 1383 025e E40B0000 		.4byte	.LASF37
 1384 0262 07       		.byte	0x7
 1385 0263 4F       		.byte	0x4f
 1386 0264 B2000000 		.4byte	0xb2
 1387 0268 40       		.byte	0x40
 1388 0269 0D       		.uleb128 0xd
 1389 026a CF090000 		.4byte	.LASF38
 1390 026e 07       		.byte	0x7
 1391 026f 50       		.byte	0x50
 1392 0270 B2000000 		.4byte	0xb2
 1393 0274 44       		.byte	0x44
 1394 0275 0D       		.uleb128 0xd
 1395 0276 C70A0000 		.4byte	.LASF39
ARM GAS  /tmp/ccPmdm0I.s 			page 54


 1396 027a 07       		.byte	0x7
 1397 027b 51       		.byte	0x51
 1398 027c B2000000 		.4byte	0xb2
 1399 0280 48       		.byte	0x48
 1400 0281 0D       		.uleb128 0xd
 1401 0282 04090000 		.4byte	.LASF40
 1402 0286 07       		.byte	0x7
 1403 0287 52       		.byte	0x52
 1404 0288 860A0000 		.4byte	0xa86
 1405 028c 4C       		.byte	0x4c
 1406 028d 0D       		.uleb128 0xd
 1407 028e BD000000 		.4byte	.LASF41
 1408 0292 07       		.byte	0x7
 1409 0293 53       		.byte	0x53
 1410 0294 B2000000 		.4byte	0xb2
 1411 0298 80       		.byte	0x80
 1412 0299 0D       		.uleb128 0xd
 1413 029a F5000000 		.4byte	.LASF42
 1414 029e 07       		.byte	0x7
 1415 029f 54       		.byte	0x54
 1416 02a0 B2000000 		.4byte	0xb2
 1417 02a4 84       		.byte	0x84
 1418 02a5 0D       		.uleb128 0xd
 1419 02a6 F40F0000 		.4byte	.LASF43
 1420 02aa 07       		.byte	0x7
 1421 02ab 55       		.byte	0x55
 1422 02ac 950A0000 		.4byte	0xa95
 1423 02b0 88       		.byte	0x88
 1424 02b1 0D       		.uleb128 0xd
 1425 02b2 95090000 		.4byte	.LASF44
 1426 02b6 07       		.byte	0x7
 1427 02b7 56       		.byte	0x56
 1428 02b8 B2000000 		.4byte	0xb2
 1429 02bc A8       		.byte	0xa8
 1430 02bd 0D       		.uleb128 0xd
 1431 02be A0090000 		.4byte	.LASF45
 1432 02c2 07       		.byte	0x7
 1433 02c3 57       		.byte	0x57
 1434 02c4 B2000000 		.4byte	0xb2
 1435 02c8 AC       		.byte	0xac
 1436 02c9 0D       		.uleb128 0xd
 1437 02ca 740C0000 		.4byte	.LASF46
 1438 02ce 07       		.byte	0x7
 1439 02cf 58       		.byte	0x58
 1440 02d0 B2000000 		.4byte	0xb2
 1441 02d4 B0       		.byte	0xb0
 1442 02d5 0D       		.uleb128 0xd
 1443 02d6 B7090000 		.4byte	.LASF47
 1444 02da 07       		.byte	0x7
 1445 02db 59       		.byte	0x59
 1446 02dc B2000000 		.4byte	0xb2
 1447 02e0 B4       		.byte	0xb4
 1448 02e1 0D       		.uleb128 0xd
 1449 02e2 3C0C0000 		.4byte	.LASF48
 1450 02e6 07       		.byte	0x7
 1451 02e7 5A       		.byte	0x5a
 1452 02e8 B2000000 		.4byte	0xb2
ARM GAS  /tmp/ccPmdm0I.s 			page 55


 1453 02ec B8       		.byte	0xb8
 1454 02ed 0D       		.uleb128 0xd
 1455 02ee 150A0000 		.4byte	.LASF49
 1456 02f2 07       		.byte	0x7
 1457 02f3 5B       		.byte	0x5b
 1458 02f4 B2000000 		.4byte	0xb2
 1459 02f8 BC       		.byte	0xbc
 1460 02f9 0D       		.uleb128 0xd
 1461 02fa DC020000 		.4byte	.LASF50
 1462 02fe 07       		.byte	0x7
 1463 02ff 5C       		.byte	0x5c
 1464 0300 B2000000 		.4byte	0xb2
 1465 0304 C0       		.byte	0xc0
 1466 0305 0D       		.uleb128 0xd
 1467 0306 900C0000 		.4byte	.LASF51
 1468 030a 07       		.byte	0x7
 1469 030b 5D       		.byte	0x5d
 1470 030c B2000000 		.4byte	0xb2
 1471 0310 C4       		.byte	0xc4
 1472 0311 0D       		.uleb128 0xd
 1473 0312 16030000 		.4byte	.LASF52
 1474 0316 07       		.byte	0x7
 1475 0317 5E       		.byte	0x5e
 1476 0318 B2000000 		.4byte	0xb2
 1477 031c C8       		.byte	0xc8
 1478 031d 0D       		.uleb128 0xd
 1479 031e 82060000 		.4byte	.LASF53
 1480 0322 07       		.byte	0x7
 1481 0323 5F       		.byte	0x5f
 1482 0324 B2000000 		.4byte	0xb2
 1483 0328 CC       		.byte	0xcc
 1484 0329 0D       		.uleb128 0xd
 1485 032a 0E090000 		.4byte	.LASF54
 1486 032e 07       		.byte	0x7
 1487 032f 60       		.byte	0x60
 1488 0330 BA0A0000 		.4byte	0xaba
 1489 0334 D0       		.byte	0xd0
 1490 0335 0D       		.uleb128 0xd
 1491 0336 E4070000 		.4byte	.LASF55
 1492 033a 07       		.byte	0x7
 1493 033b 61       		.byte	0x61
 1494 033c B2000000 		.4byte	0xb2
 1495 0340 DC       		.byte	0xdc
 1496 0341 0D       		.uleb128 0xd
 1497 0342 02070000 		.4byte	.LASF56
 1498 0346 07       		.byte	0x7
 1499 0347 62       		.byte	0x62
 1500 0348 B2000000 		.4byte	0xb2
 1501 034c E0       		.byte	0xe0
 1502 034d 0D       		.uleb128 0xd
 1503 034e E5060000 		.4byte	.LASF57
 1504 0352 07       		.byte	0x7
 1505 0353 63       		.byte	0x63
 1506 0354 B2000000 		.4byte	0xb2
 1507 0358 E4       		.byte	0xe4
 1508 0359 0D       		.uleb128 0xd
 1509 035a D20D0000 		.4byte	.LASF58
ARM GAS  /tmp/ccPmdm0I.s 			page 56


 1510 035e 07       		.byte	0x7
 1511 035f 64       		.byte	0x64
 1512 0360 B7000000 		.4byte	0xb7
 1513 0364 E8       		.byte	0xe8
 1514 0365 0D       		.uleb128 0xd
 1515 0366 22010000 		.4byte	.LASF59
 1516 036a 07       		.byte	0x7
 1517 036b 65       		.byte	0x65
 1518 036c B7000000 		.4byte	0xb7
 1519 0370 EC       		.byte	0xec
 1520 0371 0D       		.uleb128 0xd
 1521 0372 D8070000 		.4byte	.LASF60
 1522 0376 07       		.byte	0x7
 1523 0377 66       		.byte	0x66
 1524 0378 B7000000 		.4byte	0xb7
 1525 037c F0       		.byte	0xf0
 1526 037d 0D       		.uleb128 0xd
 1527 037e 7C0A0000 		.4byte	.LASF61
 1528 0382 07       		.byte	0x7
 1529 0383 67       		.byte	0x67
 1530 0384 B7000000 		.4byte	0xb7
 1531 0388 F4       		.byte	0xf4
 1532 0389 0D       		.uleb128 0xd
 1533 038a 18090000 		.4byte	.LASF62
 1534 038e 07       		.byte	0x7
 1535 038f 68       		.byte	0x68
 1536 0390 EF000000 		.4byte	0xef
 1537 0394 F8       		.byte	0xf8
 1538 0395 0F       		.uleb128 0xf
 1539 0396 5B000000 		.4byte	.LASF63
 1540 039a 07       		.byte	0x7
 1541 039b 69       		.byte	0x69
 1542 039c B7000000 		.4byte	0xb7
 1543 03a0 0001     		.2byte	0x100
 1544 03a2 0F       		.uleb128 0xf
 1545 03a3 7D0B0000 		.4byte	.LASF64
 1546 03a7 07       		.byte	0x7
 1547 03a8 6A       		.byte	0x6a
 1548 03a9 B7000000 		.4byte	0xb7
 1549 03ad 0401     		.2byte	0x104
 1550 03af 0F       		.uleb128 0xf
 1551 03b0 F6010000 		.4byte	.LASF65
 1552 03b4 07       		.byte	0x7
 1553 03b5 6B       		.byte	0x6b
 1554 03b6 B7000000 		.4byte	0xb7
 1555 03ba 0801     		.2byte	0x108
 1556 03bc 0F       		.uleb128 0xf
 1557 03bd 9F060000 		.4byte	.LASF66
 1558 03c1 07       		.byte	0x7
 1559 03c2 6C       		.byte	0x6c
 1560 03c3 B7000000 		.4byte	0xb7
 1561 03c7 0C01     		.2byte	0x10c
 1562 03c9 0F       		.uleb128 0xf
 1563 03ca 27040000 		.4byte	.LASF67
 1564 03ce 07       		.byte	0x7
 1565 03cf 6D       		.byte	0x6d
 1566 03d0 B7000000 		.4byte	0xb7
ARM GAS  /tmp/ccPmdm0I.s 			page 57


 1567 03d4 1001     		.2byte	0x110
 1568 03d6 0F       		.uleb128 0xf
 1569 03d7 75070000 		.4byte	.LASF68
 1570 03db 07       		.byte	0x7
 1571 03dc 6E       		.byte	0x6e
 1572 03dd B7000000 		.4byte	0xb7
 1573 03e1 1401     		.2byte	0x114
 1574 03e3 0F       		.uleb128 0xf
 1575 03e4 D20A0000 		.4byte	.LASF69
 1576 03e8 07       		.byte	0x7
 1577 03e9 6F       		.byte	0x6f
 1578 03ea B7000000 		.4byte	0xb7
 1579 03ee 1801     		.2byte	0x118
 1580 03f0 0F       		.uleb128 0xf
 1581 03f1 D9090000 		.4byte	.LASF70
 1582 03f5 07       		.byte	0x7
 1583 03f6 70       		.byte	0x70
 1584 03f7 B7000000 		.4byte	0xb7
 1585 03fb 1C01     		.2byte	0x11c
 1586 03fd 0F       		.uleb128 0xf
 1587 03fe C2020000 		.4byte	.LASF71
 1588 0402 07       		.byte	0x7
 1589 0403 71       		.byte	0x71
 1590 0404 B7000000 		.4byte	0xb7
 1591 0408 2001     		.2byte	0x120
 1592 040a 0F       		.uleb128 0xf
 1593 040b 1E020000 		.4byte	.LASF72
 1594 040f 07       		.byte	0x7
 1595 0410 72       		.byte	0x72
 1596 0411 B7000000 		.4byte	0xb7
 1597 0415 2401     		.2byte	0x124
 1598 0417 0F       		.uleb128 0xf
 1599 0418 B0080000 		.4byte	.LASF73
 1600 041c 07       		.byte	0x7
 1601 041d 73       		.byte	0x73
 1602 041e B7000000 		.4byte	0xb7
 1603 0422 2801     		.2byte	0x128
 1604 0424 0F       		.uleb128 0xf
 1605 0425 0D100000 		.4byte	.LASF74
 1606 0429 07       		.byte	0x7
 1607 042a 74       		.byte	0x74
 1608 042b B7000000 		.4byte	0xb7
 1609 042f 2C01     		.2byte	0x12c
 1610 0431 0F       		.uleb128 0xf
 1611 0432 15050000 		.4byte	.LASF75
 1612 0436 07       		.byte	0x7
 1613 0437 75       		.byte	0x75
 1614 0438 B7000000 		.4byte	0xb7
 1615 043c 3001     		.2byte	0x130
 1616 043e 0F       		.uleb128 0xf
 1617 043f 00000000 		.4byte	.LASF76
 1618 0443 07       		.byte	0x7
 1619 0444 76       		.byte	0x76
 1620 0445 B7000000 		.4byte	0xb7
 1621 0449 3401     		.2byte	0x134
 1622 044b 0F       		.uleb128 0xf
 1623 044c DC060000 		.4byte	.LASF77
ARM GAS  /tmp/ccPmdm0I.s 			page 58


 1624 0450 07       		.byte	0x7
 1625 0451 77       		.byte	0x77
 1626 0452 B7000000 		.4byte	0xb7
 1627 0456 3801     		.2byte	0x138
 1628 0458 0F       		.uleb128 0xf
 1629 0459 960D0000 		.4byte	.LASF78
 1630 045d 07       		.byte	0x7
 1631 045e 78       		.byte	0x78
 1632 045f B7000000 		.4byte	0xb7
 1633 0463 3C01     		.2byte	0x13c
 1634 0465 0F       		.uleb128 0xf
 1635 0466 C6000000 		.4byte	.LASF79
 1636 046a 07       		.byte	0x7
 1637 046b 79       		.byte	0x79
 1638 046c B7000000 		.4byte	0xb7
 1639 0470 4001     		.2byte	0x140
 1640 0472 0F       		.uleb128 0xf
 1641 0473 FE070000 		.4byte	.LASF80
 1642 0477 07       		.byte	0x7
 1643 0478 7A       		.byte	0x7a
 1644 0479 B7000000 		.4byte	0xb7
 1645 047d 4401     		.2byte	0x144
 1646 047f 0F       		.uleb128 0xf
 1647 0480 5B090000 		.4byte	.LASF81
 1648 0484 07       		.byte	0x7
 1649 0485 7B       		.byte	0x7b
 1650 0486 B7000000 		.4byte	0xb7
 1651 048a 4801     		.2byte	0x148
 1652 048c 0F       		.uleb128 0xf
 1653 048d 6A090000 		.4byte	.LASF82
 1654 0491 07       		.byte	0x7
 1655 0492 7C       		.byte	0x7c
 1656 0493 B7000000 		.4byte	0xb7
 1657 0497 4C01     		.2byte	0x14c
 1658 0499 0F       		.uleb128 0xf
 1659 049a C8030000 		.4byte	.LASF83
 1660 049e 07       		.byte	0x7
 1661 049f 7D       		.byte	0x7d
 1662 04a0 B7000000 		.4byte	0xb7
 1663 04a4 5001     		.2byte	0x150
 1664 04a6 0F       		.uleb128 0xf
 1665 04a7 03100000 		.4byte	.LASF84
 1666 04ab 07       		.byte	0x7
 1667 04ac 7E       		.byte	0x7e
 1668 04ad B7000000 		.4byte	0xb7
 1669 04b1 5401     		.2byte	0x154
 1670 04b3 0F       		.uleb128 0xf
 1671 04b4 E5010000 		.4byte	.LASF85
 1672 04b8 07       		.byte	0x7
 1673 04b9 7F       		.byte	0x7f
 1674 04ba B7000000 		.4byte	0xb7
 1675 04be 5801     		.2byte	0x158
 1676 04c0 0F       		.uleb128 0xf
 1677 04c1 95060000 		.4byte	.LASF86
 1678 04c5 07       		.byte	0x7
 1679 04c6 80       		.byte	0x80
 1680 04c7 B7000000 		.4byte	0xb7
ARM GAS  /tmp/ccPmdm0I.s 			page 59


 1681 04cb 5C01     		.2byte	0x15c
 1682 04cd 0F       		.uleb128 0xf
 1683 04ce 1E040000 		.4byte	.LASF87
 1684 04d2 07       		.byte	0x7
 1685 04d3 81       		.byte	0x81
 1686 04d4 B7000000 		.4byte	0xb7
 1687 04d8 6001     		.2byte	0x160
 1688 04da 0F       		.uleb128 0xf
 1689 04db 6C070000 		.4byte	.LASF88
 1690 04df 07       		.byte	0x7
 1691 04e0 82       		.byte	0x82
 1692 04e1 B7000000 		.4byte	0xb7
 1693 04e5 6401     		.2byte	0x164
 1694 04e7 0F       		.uleb128 0xf
 1695 04e8 95100000 		.4byte	.LASF89
 1696 04ec 07       		.byte	0x7
 1697 04ed 83       		.byte	0x83
 1698 04ee B7000000 		.4byte	0xb7
 1699 04f2 6801     		.2byte	0x168
 1700 04f4 0F       		.uleb128 0xf
 1701 04f5 B9070000 		.4byte	.LASF90
 1702 04f9 07       		.byte	0x7
 1703 04fa 84       		.byte	0x84
 1704 04fb B7000000 		.4byte	0xb7
 1705 04ff 6C01     		.2byte	0x16c
 1706 0501 0F       		.uleb128 0xf
 1707 0502 FE000000 		.4byte	.LASF91
 1708 0506 07       		.byte	0x7
 1709 0507 85       		.byte	0x85
 1710 0508 B7000000 		.4byte	0xb7
 1711 050c 7001     		.2byte	0x170
 1712 050e 0F       		.uleb128 0xf
 1713 050f 53100000 		.4byte	.LASF92
 1714 0513 07       		.byte	0x7
 1715 0514 86       		.byte	0x86
 1716 0515 B7000000 		.4byte	0xb7
 1717 0519 7401     		.2byte	0x174
 1718 051b 0F       		.uleb128 0xf
 1719 051c EE030000 		.4byte	.LASF93
 1720 0520 07       		.byte	0x7
 1721 0521 87       		.byte	0x87
 1722 0522 B7000000 		.4byte	0xb7
 1723 0526 7801     		.2byte	0x178
 1724 0528 0F       		.uleb128 0xf
 1725 0529 36060000 		.4byte	.LASF94
 1726 052d 07       		.byte	0x7
 1727 052e 88       		.byte	0x88
 1728 052f B7000000 		.4byte	0xb7
 1729 0533 7C01     		.2byte	0x17c
 1730 0535 0F       		.uleb128 0xf
 1731 0536 2C070000 		.4byte	.LASF95
 1732 053a 07       		.byte	0x7
 1733 053b 89       		.byte	0x89
 1734 053c B7000000 		.4byte	0xb7
 1735 0540 8001     		.2byte	0x180
 1736 0542 0F       		.uleb128 0xf
 1737 0543 BE0A0000 		.4byte	.LASF96
ARM GAS  /tmp/ccPmdm0I.s 			page 60


 1738 0547 07       		.byte	0x7
 1739 0548 8A       		.byte	0x8a
 1740 0549 B7000000 		.4byte	0xb7
 1741 054d 8401     		.2byte	0x184
 1742 054f 0F       		.uleb128 0xf
 1743 0550 D3000000 		.4byte	.LASF97
 1744 0554 07       		.byte	0x7
 1745 0555 8B       		.byte	0x8b
 1746 0556 B7000000 		.4byte	0xb7
 1747 055a 8801     		.2byte	0x188
 1748 055c 0F       		.uleb128 0xf
 1749 055d 8D060000 		.4byte	.LASF98
 1750 0561 07       		.byte	0x7
 1751 0562 8C       		.byte	0x8c
 1752 0563 B7000000 		.4byte	0xb7
 1753 0567 8C01     		.2byte	0x18c
 1754 0569 0F       		.uleb128 0xf
 1755 056a 95080000 		.4byte	.LASF99
 1756 056e 07       		.byte	0x7
 1757 056f 8D       		.byte	0x8d
 1758 0570 B7000000 		.4byte	0xb7
 1759 0574 9001     		.2byte	0x190
 1760 0576 0F       		.uleb128 0xf
 1761 0577 EF050000 		.4byte	.LASF100
 1762 057b 07       		.byte	0x7
 1763 057c 8E       		.byte	0x8e
 1764 057d B7000000 		.4byte	0xb7
 1765 0581 9401     		.2byte	0x194
 1766 0583 0F       		.uleb128 0xf
 1767 0584 19010000 		.4byte	.LASF101
 1768 0588 07       		.byte	0x7
 1769 0589 8F       		.byte	0x8f
 1770 058a B7000000 		.4byte	0xb7
 1771 058e 9801     		.2byte	0x198
 1772 0590 0F       		.uleb128 0xf
 1773 0591 EE0B0000 		.4byte	.LASF102
 1774 0595 07       		.byte	0x7
 1775 0596 90       		.byte	0x90
 1776 0597 B7000000 		.4byte	0xb7
 1777 059b 9C01     		.2byte	0x19c
 1778 059d 0F       		.uleb128 0xf
 1779 059e B7100000 		.4byte	.LASF103
 1780 05a2 07       		.byte	0x7
 1781 05a3 91       		.byte	0x91
 1782 05a4 B7000000 		.4byte	0xb7
 1783 05a8 A001     		.2byte	0x1a0
 1784 05aa 0F       		.uleb128 0xf
 1785 05ab 7F0C0000 		.4byte	.LASF104
 1786 05af 07       		.byte	0x7
 1787 05b0 92       		.byte	0x92
 1788 05b1 B7000000 		.4byte	0xb7
 1789 05b5 A401     		.2byte	0x1a4
 1790 05b7 0F       		.uleb128 0xf
 1791 05b8 42030000 		.4byte	.LASF105
 1792 05bc 07       		.byte	0x7
 1793 05bd 93       		.byte	0x93
 1794 05be B7000000 		.4byte	0xb7
ARM GAS  /tmp/ccPmdm0I.s 			page 61


 1795 05c2 A801     		.2byte	0x1a8
 1796 05c4 0F       		.uleb128 0xf
 1797 05c5 9B0C0000 		.4byte	.LASF106
 1798 05c9 07       		.byte	0x7
 1799 05ca 94       		.byte	0x94
 1800 05cb B7000000 		.4byte	0xb7
 1801 05cf AC01     		.2byte	0x1ac
 1802 05d1 0F       		.uleb128 0xf
 1803 05d2 89030000 		.4byte	.LASF107
 1804 05d6 07       		.byte	0x7
 1805 05d7 95       		.byte	0x95
 1806 05d8 B7000000 		.4byte	0xb7
 1807 05dc B001     		.2byte	0x1b0
 1808 05de 0F       		.uleb128 0xf
 1809 05df 22090000 		.4byte	.LASF108
 1810 05e3 07       		.byte	0x7
 1811 05e4 96       		.byte	0x96
 1812 05e5 F4000000 		.4byte	0xf4
 1813 05e9 B401     		.2byte	0x1b4
 1814 05eb 0F       		.uleb128 0xf
 1815 05ec 9D030000 		.4byte	.LASF109
 1816 05f0 07       		.byte	0x7
 1817 05f1 97       		.byte	0x97
 1818 05f2 B2000000 		.4byte	0xb2
 1819 05f6 BC01     		.2byte	0x1bc
 1820 05f8 0F       		.uleb128 0xf
 1821 05f9 BB0D0000 		.4byte	.LASF110
 1822 05fd 07       		.byte	0x7
 1823 05fe 98       		.byte	0x98
 1824 05ff B2000000 		.4byte	0xb2
 1825 0603 C001     		.2byte	0x1c0
 1826 0605 0F       		.uleb128 0xf
 1827 0606 2C090000 		.4byte	.LASF111
 1828 060a 07       		.byte	0x7
 1829 060b 99       		.byte	0x99
 1830 060c BF0A0000 		.4byte	0xabf
 1831 0610 C401     		.2byte	0x1c4
 1832 0612 0F       		.uleb128 0xf
 1833 0613 F50D0000 		.4byte	.LASF112
 1834 0617 07       		.byte	0x7
 1835 0618 9A       		.byte	0x9a
 1836 0619 B2000000 		.4byte	0xb2
 1837 061d D001     		.2byte	0x1d0
 1838 061f 0F       		.uleb128 0xf
 1839 0620 B5000000 		.4byte	.LASF113
 1840 0624 07       		.byte	0x7
 1841 0625 9B       		.byte	0x9b
 1842 0626 B2000000 		.4byte	0xb2
 1843 062a D401     		.2byte	0x1d4
 1844 062c 0F       		.uleb128 0xf
 1845 062d ED070000 		.4byte	.LASF114
 1846 0631 07       		.byte	0x7
 1847 0632 9C       		.byte	0x9c
 1848 0633 B2000000 		.4byte	0xb2
 1849 0637 D801     		.2byte	0x1d8
 1850 0639 0F       		.uleb128 0xf
 1851 063a A2000000 		.4byte	.LASF115
ARM GAS  /tmp/ccPmdm0I.s 			page 62


 1852 063e 07       		.byte	0x7
 1853 063f 9D       		.byte	0x9d
 1854 0640 B2000000 		.4byte	0xb2
 1855 0644 DC01     		.2byte	0x1dc
 1856 0646 0F       		.uleb128 0xf
 1857 0647 FE0D0000 		.4byte	.LASF116
 1858 064b 07       		.byte	0x7
 1859 064c 9E       		.byte	0x9e
 1860 064d B7000000 		.4byte	0xb7
 1861 0651 E001     		.2byte	0x1e0
 1862 0653 0F       		.uleb128 0xf
 1863 0654 B8030000 		.4byte	.LASF117
 1864 0658 07       		.byte	0x7
 1865 0659 9F       		.byte	0x9f
 1866 065a B7000000 		.4byte	0xb7
 1867 065e E401     		.2byte	0x1e4
 1868 0660 0F       		.uleb128 0xf
 1869 0661 2D010000 		.4byte	.LASF118
 1870 0665 07       		.byte	0x7
 1871 0666 A0       		.byte	0xa0
 1872 0667 B7000000 		.4byte	0xb7
 1873 066b E801     		.2byte	0x1e8
 1874 066d 0F       		.uleb128 0xf
 1875 066e BC010000 		.4byte	.LASF119
 1876 0672 07       		.byte	0x7
 1877 0673 A1       		.byte	0xa1
 1878 0674 B7000000 		.4byte	0xb7
 1879 0678 EC01     		.2byte	0x1ec
 1880 067a 0F       		.uleb128 0xf
 1881 067b 040C0000 		.4byte	.LASF120
 1882 067f 07       		.byte	0x7
 1883 0680 A2       		.byte	0xa2
 1884 0681 B7000000 		.4byte	0xb7
 1885 0685 F001     		.2byte	0x1f0
 1886 0687 0F       		.uleb128 0xf
 1887 0688 24050000 		.4byte	.LASF121
 1888 068c 07       		.byte	0x7
 1889 068d A3       		.byte	0xa3
 1890 068e B7000000 		.4byte	0xb7
 1891 0692 F401     		.2byte	0x1f4
 1892 0694 0F       		.uleb128 0xf
 1893 0695 9C0A0000 		.4byte	.LASF122
 1894 0699 07       		.byte	0x7
 1895 069a A4       		.byte	0xa4
 1896 069b B7000000 		.4byte	0xb7
 1897 069f F801     		.2byte	0x1f8
 1898 06a1 0F       		.uleb128 0xf
 1899 06a2 AA000000 		.4byte	.LASF123
 1900 06a6 07       		.byte	0x7
 1901 06a7 A5       		.byte	0xa5
 1902 06a8 B7000000 		.4byte	0xb7
 1903 06ac FC01     		.2byte	0x1fc
 1904 06ae 0F       		.uleb128 0xf
 1905 06af 36090000 		.4byte	.LASF124
 1906 06b3 07       		.byte	0x7
 1907 06b4 A6       		.byte	0xa6
 1908 06b5 DE0A0000 		.4byte	0xade
ARM GAS  /tmp/ccPmdm0I.s 			page 63


 1909 06b9 0002     		.2byte	0x200
 1910 06bb 0F       		.uleb128 0xf
 1911 06bc 8A100000 		.4byte	.LASF125
 1912 06c0 07       		.byte	0x7
 1913 06c1 A7       		.byte	0xa7
 1914 06c2 C40A0000 		.4byte	0xac4
 1915 06c6 0004     		.2byte	0x400
 1916 06c8 0F       		.uleb128 0xf
 1917 06c9 880A0000 		.4byte	.LASF126
 1918 06cd 07       		.byte	0x7
 1919 06ce A8       		.byte	0xa8
 1920 06cf 8B0A0000 		.4byte	0xa8b
 1921 06d3 0C04     		.2byte	0x40c
 1922 06d5 0F       		.uleb128 0xf
 1923 06d6 540B0000 		.4byte	.LASF127
 1924 06da 07       		.byte	0x7
 1925 06db A9       		.byte	0xa9
 1926 06dc F30A0000 		.4byte	0xaf3
 1927 06e0 4004     		.2byte	0x440
 1928 06e2 0F       		.uleb128 0xf
 1929 06e3 920A0000 		.4byte	.LASF128
 1930 06e7 07       		.byte	0x7
 1931 06e8 AA       		.byte	0xaa
 1932 06e9 900A0000 		.4byte	0xa90
 1933 06ed 4C04     		.2byte	0x44c
 1934 06ef 0F       		.uleb128 0xf
 1935 06f0 C2090000 		.4byte	.LASF129
 1936 06f4 07       		.byte	0x7
 1937 06f5 AB       		.byte	0xab
 1938 06f6 F30A0000 		.4byte	0xaf3
 1939 06fa 8004     		.2byte	0x480
 1940 06fc 0F       		.uleb128 0xf
 1941 06fd 51090000 		.4byte	.LASF130
 1942 0701 07       		.byte	0x7
 1943 0702 AC       		.byte	0xac
 1944 0703 2D010000 		.4byte	0x12d
 1945 0707 8C04     		.2byte	0x48c
 1946 0709 0F       		.uleb128 0xf
 1947 070a 5D0A0000 		.4byte	.LASF131
 1948 070e 07       		.byte	0x7
 1949 070f AD       		.byte	0xad
 1950 0710 F30A0000 		.4byte	0xaf3
 1951 0714 A004     		.2byte	0x4a0
 1952 0716 0F       		.uleb128 0xf
 1953 0717 E90C0000 		.4byte	.LASF132
 1954 071b 07       		.byte	0x7
 1955 071c AE       		.byte	0xae
 1956 071d 0E010000 		.4byte	0x10e
 1957 0721 AC04     		.2byte	0x4ac
 1958 0723 0F       		.uleb128 0xf
 1959 0724 B00C0000 		.4byte	.LASF133
 1960 0728 07       		.byte	0x7
 1961 0729 AF       		.byte	0xaf
 1962 072a B2000000 		.4byte	0xb2
 1963 072e BC04     		.2byte	0x4bc
 1964 0730 0F       		.uleb128 0xf
 1965 0731 21080000 		.4byte	.LASF134
ARM GAS  /tmp/ccPmdm0I.s 			page 64


 1966 0735 07       		.byte	0x7
 1967 0736 B0       		.byte	0xb0
 1968 0737 B2000000 		.4byte	0xb2
 1969 073b C004     		.2byte	0x4c0
 1970 073d 0F       		.uleb128 0xf
 1971 073e 2E080000 		.4byte	.LASF135
 1972 0742 07       		.byte	0x7
 1973 0743 B1       		.byte	0xb1
 1974 0744 B2000000 		.4byte	0xb2
 1975 0748 C404     		.2byte	0x4c4
 1976 074a 0F       		.uleb128 0xf
 1977 074b F40C0000 		.4byte	.LASF136
 1978 074f 07       		.byte	0x7
 1979 0750 B2       		.byte	0xb2
 1980 0751 0D0B0000 		.4byte	0xb0d
 1981 0755 C804     		.2byte	0x4c8
 1982 0757 0F       		.uleb128 0xf
 1983 0758 21100000 		.4byte	.LASF137
 1984 075c 07       		.byte	0x7
 1985 075d B3       		.byte	0xb3
 1986 075e 63010000 		.4byte	0x163
 1987 0762 0005     		.2byte	0x500
 1988 0764 0F       		.uleb128 0xf
 1989 0765 FF0C0000 		.4byte	.LASF138
 1990 0769 07       		.byte	0x7
 1991 076a B4       		.byte	0xb4
 1992 076b 270B0000 		.4byte	0xb27
 1993 076f 1005     		.2byte	0x510
 1994 0771 0F       		.uleb128 0xf
 1995 0772 A4080000 		.4byte	.LASF139
 1996 0776 07       		.byte	0x7
 1997 0777 B5       		.byte	0xb5
 1998 0778 CE000000 		.4byte	0xce
 1999 077c 4005     		.2byte	0x540
 2000 077e 0F       		.uleb128 0xf
 2001 077f 0A0D0000 		.4byte	.LASF140
 2002 0783 07       		.byte	0x7
 2003 0784 B6       		.byte	0xb6
 2004 0785 2C0B0000 		.4byte	0xb2c
 2005 0789 6005     		.2byte	0x560
 2006 078b 0F       		.uleb128 0xf
 2007 078c 150D0000 		.4byte	.LASF141
 2008 0790 07       		.byte	0x7
 2009 0791 B7       		.byte	0xb7
 2010 0792 460B0000 		.4byte	0xb46
 2011 0796 9005     		.2byte	0x590
 2012 0798 0F       		.uleb128 0xf
 2013 0799 A5050000 		.4byte	.LASF142
 2014 079d 07       		.byte	0x7
 2015 079e B8       		.byte	0xb8
 2016 079f F30A0000 		.4byte	0xaf3
 2017 07a3 0006     		.2byte	0x600
 2018 07a5 0F       		.uleb128 0xf
 2019 07a6 200D0000 		.4byte	.LASF143
 2020 07aa 07       		.byte	0x7
 2021 07ab B9       		.byte	0xb9
 2022 07ac 32010000 		.4byte	0x132
ARM GAS  /tmp/ccPmdm0I.s 			page 65


 2023 07b0 0C06     		.2byte	0x60c
 2024 07b2 0F       		.uleb128 0xf
 2025 07b3 02060000 		.4byte	.LASF144
 2026 07b7 07       		.byte	0x7
 2027 07b8 BA       		.byte	0xba
 2028 07b9 F30A0000 		.4byte	0xaf3
 2029 07bd 2006     		.2byte	0x620
 2030 07bf 0F       		.uleb128 0xf
 2031 07c0 2B0D0000 		.4byte	.LASF145
 2032 07c4 07       		.byte	0x7
 2033 07c5 BB       		.byte	0xbb
 2034 07c6 37010000 		.4byte	0x137
 2035 07ca 2C06     		.2byte	0x62c
 2036 07cc 0F       		.uleb128 0xf
 2037 07cd 8A080000 		.4byte	.LASF146
 2038 07d1 07       		.byte	0x7
 2039 07d2 BC       		.byte	0xbc
 2040 07d3 F30A0000 		.4byte	0xaf3
 2041 07d7 4006     		.2byte	0x640
 2042 07d9 0F       		.uleb128 0xf
 2043 07da 360D0000 		.4byte	.LASF147
 2044 07de 07       		.byte	0x7
 2045 07df BD       		.byte	0xbd
 2046 07e0 600B0000 		.4byte	0xb60
 2047 07e4 4C06     		.2byte	0x64c
 2048 07e6 0F       		.uleb128 0xf
 2049 07e7 3B0A0000 		.4byte	.LASF148
 2050 07eb 07       		.byte	0x7
 2051 07ec BE       		.byte	0xbe
 2052 07ed 63010000 		.4byte	0x163
 2053 07f1 E006     		.2byte	0x6e0
 2054 07f3 0F       		.uleb128 0xf
 2055 07f4 410D0000 		.4byte	.LASF149
 2056 07f8 07       		.byte	0x7
 2057 07f9 BF       		.byte	0xbf
 2058 07fa 13010000 		.4byte	0x113
 2059 07fe F006     		.2byte	0x6f0
 2060 0800 0F       		.uleb128 0xf
 2061 0801 06080000 		.4byte	.LASF150
 2062 0805 07       		.byte	0x7
 2063 0806 C0       		.byte	0xc0
 2064 0807 B2000000 		.4byte	0xb2
 2065 080b 0007     		.2byte	0x700
 2066 080d 0F       		.uleb128 0xf
 2067 080e 42010000 		.4byte	.LASF151
 2068 0812 07       		.byte	0x7
 2069 0813 C1       		.byte	0xc1
 2070 0814 B2000000 		.4byte	0xb2
 2071 0818 0407     		.2byte	0x704
 2072 081a 0F       		.uleb128 0xf
 2073 081b 34000000 		.4byte	.LASF152
 2074 081f 07       		.byte	0x7
 2075 0820 C2       		.byte	0xc2
 2076 0821 B2000000 		.4byte	0xb2
 2077 0825 0807     		.2byte	0x708
 2078 0827 0F       		.uleb128 0xf
 2079 0828 DC0E0000 		.4byte	.LASF153
ARM GAS  /tmp/ccPmdm0I.s 			page 66


 2080 082c 07       		.byte	0x7
 2081 082d C3       		.byte	0xc3
 2082 082e B2000000 		.4byte	0xb2
 2083 0832 0C07     		.2byte	0x70c
 2084 0834 0F       		.uleb128 0xf
 2085 0835 41000000 		.4byte	.LASF154
 2086 0839 07       		.byte	0x7
 2087 083a C4       		.byte	0xc4
 2088 083b B2000000 		.4byte	0xb2
 2089 083f 1007     		.2byte	0x710
 2090 0841 0F       		.uleb128 0xf
 2091 0842 58010000 		.4byte	.LASF155
 2092 0846 07       		.byte	0x7
 2093 0847 C5       		.byte	0xc5
 2094 0848 B2000000 		.4byte	0xb2
 2095 084c 1407     		.2byte	0x714
 2096 084e 0F       		.uleb128 0xf
 2097 084f 4E000000 		.4byte	.LASF156
 2098 0853 07       		.byte	0x7
 2099 0854 C6       		.byte	0xc6
 2100 0855 B2000000 		.4byte	0xb2
 2101 0859 1807     		.2byte	0x718
 2102 085b 0F       		.uleb128 0xf
 2103 085c 65010000 		.4byte	.LASF157
 2104 0860 07       		.byte	0x7
 2105 0861 C7       		.byte	0xc7
 2106 0862 B2000000 		.4byte	0xb2
 2107 0866 1C07     		.2byte	0x71c
 2108 0868 0F       		.uleb128 0xf
 2109 0869 CA0B0000 		.4byte	.LASF158
 2110 086d 07       		.byte	0x7
 2111 086e C8       		.byte	0xc8
 2112 086f B2000000 		.4byte	0xb2
 2113 0873 2007     		.2byte	0x720
 2114 0875 0F       		.uleb128 0xf
 2115 0876 72010000 		.4byte	.LASF159
 2116 087a 07       		.byte	0x7
 2117 087b C9       		.byte	0xc9
 2118 087c B2000000 		.4byte	0xb2
 2119 0880 2407     		.2byte	0x724
 2120 0882 0F       		.uleb128 0xf
 2121 0883 D70B0000 		.4byte	.LASF160
 2122 0887 07       		.byte	0x7
 2123 0888 CA       		.byte	0xca
 2124 0889 B2000000 		.4byte	0xb2
 2125 088d 2807     		.2byte	0x728
 2126 088f 0F       		.uleb128 0xf
 2127 0890 7F010000 		.4byte	.LASF161
 2128 0894 07       		.byte	0x7
 2129 0895 CB       		.byte	0xcb
 2130 0896 B2000000 		.4byte	0xb2
 2131 089a 2C07     		.2byte	0x72c
 2132 089c 0F       		.uleb128 0xf
 2133 089d 6E000000 		.4byte	.LASF162
 2134 08a1 07       		.byte	0x7
 2135 08a2 CC       		.byte	0xcc
 2136 08a3 B2000000 		.4byte	0xb2
ARM GAS  /tmp/ccPmdm0I.s 			page 67


 2137 08a7 3007     		.2byte	0x730
 2138 08a9 0F       		.uleb128 0xf
 2139 08aa 8C010000 		.4byte	.LASF163
 2140 08ae 07       		.byte	0x7
 2141 08af CD       		.byte	0xcd
 2142 08b0 B2000000 		.4byte	0xb2
 2143 08b4 3407     		.2byte	0x734
 2144 08b6 0F       		.uleb128 0xf
 2145 08b7 7B000000 		.4byte	.LASF164
 2146 08bb 07       		.byte	0x7
 2147 08bc CE       		.byte	0xce
 2148 08bd B2000000 		.4byte	0xb2
 2149 08c1 3807     		.2byte	0x738
 2150 08c3 0F       		.uleb128 0xf
 2151 08c4 99010000 		.4byte	.LASF165
 2152 08c8 07       		.byte	0x7
 2153 08c9 CF       		.byte	0xcf
 2154 08ca B2000000 		.4byte	0xb2
 2155 08ce 3C07     		.2byte	0x73c
 2156 08d0 0F       		.uleb128 0xf
 2157 08d1 88000000 		.4byte	.LASF166
 2158 08d5 07       		.byte	0x7
 2159 08d6 D0       		.byte	0xd0
 2160 08d7 B2000000 		.4byte	0xb2
 2161 08db 4007     		.2byte	0x740
 2162 08dd 0F       		.uleb128 0xf
 2163 08de 000B0000 		.4byte	.LASF167
 2164 08e2 07       		.byte	0x7
 2165 08e3 D1       		.byte	0xd1
 2166 08e4 B2000000 		.4byte	0xb2
 2167 08e8 4407     		.2byte	0x744
 2168 08ea 0F       		.uleb128 0xf
 2169 08eb 95000000 		.4byte	.LASF168
 2170 08ef 07       		.byte	0x7
 2171 08f0 D2       		.byte	0xd2
 2172 08f1 B2000000 		.4byte	0xb2
 2173 08f5 4807     		.2byte	0x748
 2174 08f7 0F       		.uleb128 0xf
 2175 08f8 1A0F0000 		.4byte	.LASF169
 2176 08fc 07       		.byte	0x7
 2177 08fd D3       		.byte	0xd3
 2178 08fe B2000000 		.4byte	0xb2
 2179 0902 4C07     		.2byte	0x74c
 2180 0904 0F       		.uleb128 0xf
 2181 0905 5E0D0000 		.4byte	.LASF170
 2182 0909 07       		.byte	0x7
 2183 090a D4       		.byte	0xd4
 2184 090b B2000000 		.4byte	0xb2
 2185 090f 5007     		.2byte	0x750
 2186 0911 0F       		.uleb128 0xf
 2187 0912 68040000 		.4byte	.LASF171
 2188 0916 07       		.byte	0x7
 2189 0917 D5       		.byte	0xd5
 2190 0918 B2000000 		.4byte	0xb2
 2191 091c 5407     		.2byte	0x754
 2192 091e 0F       		.uleb128 0xf
 2193 091f 6C0D0000 		.4byte	.LASF172
ARM GAS  /tmp/ccPmdm0I.s 			page 68


 2194 0923 07       		.byte	0x7
 2195 0924 D6       		.byte	0xd6
 2196 0925 B2000000 		.4byte	0xb2
 2197 0929 5807     		.2byte	0x758
 2198 092b 0F       		.uleb128 0xf
 2199 092c 76040000 		.4byte	.LASF173
 2200 0930 07       		.byte	0x7
 2201 0931 D7       		.byte	0xd7
 2202 0932 B2000000 		.4byte	0xb2
 2203 0936 5C07     		.2byte	0x75c
 2204 0938 0F       		.uleb128 0xf
 2205 0939 7A0D0000 		.4byte	.LASF174
 2206 093d 07       		.byte	0x7
 2207 093e D8       		.byte	0xd8
 2208 093f B2000000 		.4byte	0xb2
 2209 0943 6007     		.2byte	0x760
 2210 0945 0F       		.uleb128 0xf
 2211 0946 84040000 		.4byte	.LASF175
 2212 094a 07       		.byte	0x7
 2213 094b D9       		.byte	0xd9
 2214 094c B2000000 		.4byte	0xb2
 2215 0950 6407     		.2byte	0x764
 2216 0952 0F       		.uleb128 0xf
 2217 0953 880D0000 		.4byte	.LASF176
 2218 0957 07       		.byte	0x7
 2219 0958 DA       		.byte	0xda
 2220 0959 B2000000 		.4byte	0xb2
 2221 095d 6807     		.2byte	0x768
 2222 095f 0F       		.uleb128 0xf
 2223 0960 92040000 		.4byte	.LASF177
 2224 0964 07       		.byte	0x7
 2225 0965 DB       		.byte	0xdb
 2226 0966 B2000000 		.4byte	0xb2
 2227 096a 6C07     		.2byte	0x76c
 2228 096c 0F       		.uleb128 0xf
 2229 096d 43020000 		.4byte	.LASF178
 2230 0971 07       		.byte	0x7
 2231 0972 DC       		.byte	0xdc
 2232 0973 B2000000 		.4byte	0xb2
 2233 0977 7007     		.2byte	0x770
 2234 0979 0F       		.uleb128 0xf
 2235 097a A0040000 		.4byte	.LASF179
 2236 097e 07       		.byte	0x7
 2237 097f DD       		.byte	0xdd
 2238 0980 B2000000 		.4byte	0xb2
 2239 0984 7407     		.2byte	0x774
 2240 0986 0F       		.uleb128 0xf
 2241 0987 9F0D0000 		.4byte	.LASF180
 2242 098b 07       		.byte	0x7
 2243 098c DE       		.byte	0xde
 2244 098d B2000000 		.4byte	0xb2
 2245 0991 7807     		.2byte	0x778
 2246 0993 0F       		.uleb128 0xf
 2247 0994 AE040000 		.4byte	.LASF181
 2248 0998 07       		.byte	0x7
 2249 0999 DF       		.byte	0xdf
 2250 099a B2000000 		.4byte	0xb2
ARM GAS  /tmp/ccPmdm0I.s 			page 69


 2251 099e 7C07     		.2byte	0x77c
 2252 09a0 0F       		.uleb128 0xf
 2253 09a1 AD0D0000 		.4byte	.LASF182
 2254 09a5 07       		.byte	0x7
 2255 09a6 E0       		.byte	0xe0
 2256 09a7 B2000000 		.4byte	0xb2
 2257 09ab 8007     		.2byte	0x780
 2258 09ad 0F       		.uleb128 0xf
 2259 09ae BC040000 		.4byte	.LASF183
 2260 09b2 07       		.byte	0x7
 2261 09b3 E1       		.byte	0xe1
 2262 09b4 B2000000 		.4byte	0xb2
 2263 09b8 8407     		.2byte	0x784
 2264 09ba 0F       		.uleb128 0xf
 2265 09bb 1E070000 		.4byte	.LASF184
 2266 09bf 07       		.byte	0x7
 2267 09c0 E2       		.byte	0xe2
 2268 09c1 B2000000 		.4byte	0xb2
 2269 09c5 8807     		.2byte	0x788
 2270 09c7 0F       		.uleb128 0xf
 2271 09c8 CA040000 		.4byte	.LASF185
 2272 09cc 07       		.byte	0x7
 2273 09cd E3       		.byte	0xe3
 2274 09ce B2000000 		.4byte	0xb2
 2275 09d2 8C07     		.2byte	0x78c
 2276 09d4 0F       		.uleb128 0xf
 2277 09d5 C40D0000 		.4byte	.LASF186
 2278 09d9 07       		.byte	0x7
 2279 09da E4       		.byte	0xe4
 2280 09db B2000000 		.4byte	0xb2
 2281 09df 9007     		.2byte	0x790
 2282 09e1 0F       		.uleb128 0xf
 2283 09e2 D8040000 		.4byte	.LASF187
 2284 09e6 07       		.byte	0x7
 2285 09e7 E5       		.byte	0xe5
 2286 09e8 B2000000 		.4byte	0xb2
 2287 09ec 9407     		.2byte	0x794
 2288 09ee 0F       		.uleb128 0xf
 2289 09ef 72020000 		.4byte	.LASF188
 2290 09f3 07       		.byte	0x7
 2291 09f4 E6       		.byte	0xe6
 2292 09f5 B2000000 		.4byte	0xb2
 2293 09f9 9807     		.2byte	0x798
 2294 09fb 0F       		.uleb128 0xf
 2295 09fc E6040000 		.4byte	.LASF189
 2296 0a00 07       		.byte	0x7
 2297 0a01 E7       		.byte	0xe7
 2298 0a02 B2000000 		.4byte	0xb2
 2299 0a06 9C07     		.2byte	0x79c
 2300 0a08 0F       		.uleb128 0xf
 2301 0a09 870F0000 		.4byte	.LASF190
 2302 0a0d 07       		.byte	0x7
 2303 0a0e E8       		.byte	0xe8
 2304 0a0f B2000000 		.4byte	0xb2
 2305 0a13 A007     		.2byte	0x7a0
 2306 0a15 0F       		.uleb128 0xf
 2307 0a16 B0050000 		.4byte	.LASF191
ARM GAS  /tmp/ccPmdm0I.s 			page 70


 2308 0a1a 07       		.byte	0x7
 2309 0a1b E9       		.byte	0xe9
 2310 0a1c B2000000 		.4byte	0xb2
 2311 0a20 A407     		.2byte	0x7a4
 2312 0a22 0F       		.uleb128 0xf
 2313 0a23 950F0000 		.4byte	.LASF192
 2314 0a27 07       		.byte	0x7
 2315 0a28 EA       		.byte	0xea
 2316 0a29 B2000000 		.4byte	0xb2
 2317 0a2d A807     		.2byte	0x7a8
 2318 0a2f 0F       		.uleb128 0xf
 2319 0a30 BE050000 		.4byte	.LASF193
 2320 0a34 07       		.byte	0x7
 2321 0a35 EB       		.byte	0xeb
 2322 0a36 B2000000 		.4byte	0xb2
 2323 0a3a AC07     		.2byte	0x7ac
 2324 0a3c 0F       		.uleb128 0xf
 2325 0a3d A30F0000 		.4byte	.LASF194
 2326 0a41 07       		.byte	0x7
 2327 0a42 EC       		.byte	0xec
 2328 0a43 B2000000 		.4byte	0xb2
 2329 0a47 B007     		.2byte	0x7b0
 2330 0a49 0F       		.uleb128 0xf
 2331 0a4a CC050000 		.4byte	.LASF195
 2332 0a4e 07       		.byte	0x7
 2333 0a4f ED       		.byte	0xed
 2334 0a50 B2000000 		.4byte	0xb2
 2335 0a54 B407     		.2byte	0x7b4
 2336 0a56 0F       		.uleb128 0xf
 2337 0a57 B10F0000 		.4byte	.LASF196
 2338 0a5b 07       		.byte	0x7
 2339 0a5c EE       		.byte	0xee
 2340 0a5d B2000000 		.4byte	0xb2
 2341 0a61 B807     		.2byte	0x7b8
 2342 0a63 0F       		.uleb128 0xf
 2343 0a64 DA050000 		.4byte	.LASF197
 2344 0a68 07       		.byte	0x7
 2345 0a69 EF       		.byte	0xef
 2346 0a6a B2000000 		.4byte	0xb2
 2347 0a6e BC07     		.2byte	0x7bc
 2348 0a70 00       		.byte	0
 2349 0a71 08       		.uleb128 0x8
 2350 0a72 B7000000 		.4byte	0xb7
 2351 0a76 810A0000 		.4byte	0xa81
 2352 0a7a 09       		.uleb128 0x9
 2353 0a7b D3000000 		.4byte	0xd3
 2354 0a7f 0C       		.byte	0xc
 2355 0a80 00       		.byte	0
 2356 0a81 06       		.uleb128 0x6
 2357 0a82 710A0000 		.4byte	0xa71
 2358 0a86 05       		.uleb128 0x5
 2359 0a87 810A0000 		.4byte	0xa81
 2360 0a8b 05       		.uleb128 0x5
 2361 0a8c 810A0000 		.4byte	0xa81
 2362 0a90 05       		.uleb128 0x5
 2363 0a91 810A0000 		.4byte	0xa81
 2364 0a95 08       		.uleb128 0x8
ARM GAS  /tmp/ccPmdm0I.s 			page 71


 2365 0a96 89010000 		.4byte	0x189
 2366 0a9a A50A0000 		.4byte	0xaa5
 2367 0a9e 09       		.uleb128 0x9
 2368 0a9f D3000000 		.4byte	0xd3
 2369 0aa3 03       		.byte	0x3
 2370 0aa4 00       		.byte	0
 2371 0aa5 08       		.uleb128 0x8
 2372 0aa6 B7000000 		.4byte	0xb7
 2373 0aaa B50A0000 		.4byte	0xab5
 2374 0aae 09       		.uleb128 0x9
 2375 0aaf D3000000 		.4byte	0xd3
 2376 0ab3 02       		.byte	0x2
 2377 0ab4 00       		.byte	0
 2378 0ab5 06       		.uleb128 0x6
 2379 0ab6 A50A0000 		.4byte	0xaa5
 2380 0aba 05       		.uleb128 0x5
 2381 0abb B50A0000 		.4byte	0xab5
 2382 0abf 05       		.uleb128 0x5
 2383 0ac0 B50A0000 		.4byte	0xab5
 2384 0ac4 05       		.uleb128 0x5
 2385 0ac5 B50A0000 		.4byte	0xab5
 2386 0ac9 08       		.uleb128 0x8
 2387 0aca B7000000 		.4byte	0xb7
 2388 0ace D90A0000 		.4byte	0xad9
 2389 0ad2 09       		.uleb128 0x9
 2390 0ad3 D3000000 		.4byte	0xd3
 2391 0ad7 7F       		.byte	0x7f
 2392 0ad8 00       		.byte	0
 2393 0ad9 06       		.uleb128 0x6
 2394 0ada C90A0000 		.4byte	0xac9
 2395 0ade 05       		.uleb128 0x5
 2396 0adf D90A0000 		.4byte	0xad9
 2397 0ae3 08       		.uleb128 0x8
 2398 0ae4 B2000000 		.4byte	0xb2
 2399 0ae8 F30A0000 		.4byte	0xaf3
 2400 0aec 09       		.uleb128 0x9
 2401 0aed D3000000 		.4byte	0xd3
 2402 0af1 02       		.byte	0x2
 2403 0af2 00       		.byte	0
 2404 0af3 05       		.uleb128 0x5
 2405 0af4 E30A0000 		.4byte	0xae3
 2406 0af8 08       		.uleb128 0x8
 2407 0af9 B7000000 		.4byte	0xb7
 2408 0afd 080B0000 		.4byte	0xb08
 2409 0b01 09       		.uleb128 0x9
 2410 0b02 D3000000 		.4byte	0xd3
 2411 0b06 0D       		.byte	0xd
 2412 0b07 00       		.byte	0
 2413 0b08 06       		.uleb128 0x6
 2414 0b09 F80A0000 		.4byte	0xaf8
 2415 0b0d 05       		.uleb128 0x5
 2416 0b0e 080B0000 		.4byte	0xb08
 2417 0b12 08       		.uleb128 0x8
 2418 0b13 B7000000 		.4byte	0xb7
 2419 0b17 220B0000 		.4byte	0xb22
 2420 0b1b 09       		.uleb128 0x9
 2421 0b1c D3000000 		.4byte	0xd3
ARM GAS  /tmp/ccPmdm0I.s 			page 72


 2422 0b20 0B       		.byte	0xb
 2423 0b21 00       		.byte	0
 2424 0b22 06       		.uleb128 0x6
 2425 0b23 120B0000 		.4byte	0xb12
 2426 0b27 05       		.uleb128 0x5
 2427 0b28 220B0000 		.4byte	0xb22
 2428 0b2c 05       		.uleb128 0x5
 2429 0b2d 220B0000 		.4byte	0xb22
 2430 0b31 08       		.uleb128 0x8
 2431 0b32 B7000000 		.4byte	0xb7
 2432 0b36 410B0000 		.4byte	0xb41
 2433 0b3a 09       		.uleb128 0x9
 2434 0b3b D3000000 		.4byte	0xd3
 2435 0b3f 1B       		.byte	0x1b
 2436 0b40 00       		.byte	0
 2437 0b41 06       		.uleb128 0x6
 2438 0b42 310B0000 		.4byte	0xb31
 2439 0b46 05       		.uleb128 0x5
 2440 0b47 410B0000 		.4byte	0xb41
 2441 0b4b 08       		.uleb128 0x8
 2442 0b4c B7000000 		.4byte	0xb7
 2443 0b50 5B0B0000 		.4byte	0xb5b
 2444 0b54 09       		.uleb128 0x9
 2445 0b55 D3000000 		.4byte	0xd3
 2446 0b59 24       		.byte	0x24
 2447 0b5a 00       		.byte	0
 2448 0b5b 06       		.uleb128 0x6
 2449 0b5c 4B0B0000 		.4byte	0xb4b
 2450 0b60 05       		.uleb128 0x5
 2451 0b61 5B0B0000 		.4byte	0xb5b
 2452 0b65 04       		.uleb128 0x4
 2453 0b66 7C080000 		.4byte	.LASF198
 2454 0b6a 07       		.byte	0x7
 2455 0b6b F0       		.byte	0xf0
 2456 0b6c 94010000 		.4byte	0x194
 2457 0b70 04       		.uleb128 0x4
 2458 0b71 4C0D0000 		.4byte	.LASF199
 2459 0b75 08       		.byte	0x8
 2460 0b76 07       		.byte	0x7
 2461 0b77 25000000 		.4byte	0x25
 2462 0b7b 04       		.uleb128 0x4
 2463 0b7c FC0F0000 		.4byte	.LASF200
 2464 0b80 09       		.byte	0x9
 2465 0b81 2C       		.byte	0x2c
 2466 0b82 65000000 		.4byte	0x65
 2467 0b86 04       		.uleb128 0x4
 2468 0b87 CF020000 		.4byte	.LASF201
 2469 0b8b 09       		.byte	0x9
 2470 0b8c 72       		.byte	0x72
 2471 0b8d 65000000 		.4byte	0x65
 2472 0b91 10       		.uleb128 0x10
 2473 0b92 6D0C0000 		.4byte	.LASF202
 2474 0b96 0A       		.byte	0xa
 2475 0b97 6501     		.2byte	0x165
 2476 0b99 2C000000 		.4byte	0x2c
 2477 0b9d 11       		.uleb128 0x11
 2478 0b9e 04       		.byte	0x4
ARM GAS  /tmp/ccPmdm0I.s 			page 73


 2479 0b9f 09       		.byte	0x9
 2480 0ba0 A6       		.byte	0xa6
 2481 0ba1 BC0B0000 		.4byte	0xbbc
 2482 0ba5 12       		.uleb128 0x12
 2483 0ba6 AB070000 		.4byte	.LASF203
 2484 0baa 09       		.byte	0x9
 2485 0bab A8       		.byte	0xa8
 2486 0bac 910B0000 		.4byte	0xb91
 2487 0bb0 12       		.uleb128 0x12
 2488 0bb1 130B0000 		.4byte	.LASF204
 2489 0bb5 09       		.byte	0x9
 2490 0bb6 A9       		.byte	0xa9
 2491 0bb7 BC0B0000 		.4byte	0xbbc
 2492 0bbb 00       		.byte	0
 2493 0bbc 08       		.uleb128 0x8
 2494 0bbd 45000000 		.4byte	0x45
 2495 0bc1 CC0B0000 		.4byte	0xbcc
 2496 0bc5 09       		.uleb128 0x9
 2497 0bc6 D3000000 		.4byte	0xd3
 2498 0bca 03       		.byte	0x3
 2499 0bcb 00       		.byte	0
 2500 0bcc 0C       		.uleb128 0xc
 2501 0bcd 08       		.byte	0x8
 2502 0bce 09       		.byte	0x9
 2503 0bcf A3       		.byte	0xa3
 2504 0bd0 ED0B0000 		.4byte	0xbed
 2505 0bd4 0D       		.uleb128 0xd
 2506 0bd5 B0030000 		.4byte	.LASF205
 2507 0bd9 09       		.byte	0x9
 2508 0bda A5       		.byte	0xa5
 2509 0bdb 25000000 		.4byte	0x25
 2510 0bdf 00       		.byte	0
 2511 0be0 0D       		.uleb128 0xd
 2512 0be1 A9060000 		.4byte	.LASF206
 2513 0be5 09       		.byte	0x9
 2514 0be6 AA       		.byte	0xaa
 2515 0be7 9D0B0000 		.4byte	0xb9d
 2516 0beb 04       		.byte	0x4
 2517 0bec 00       		.byte	0
 2518 0bed 04       		.uleb128 0x4
 2519 0bee E7080000 		.4byte	.LASF207
 2520 0bf2 09       		.byte	0x9
 2521 0bf3 AB       		.byte	0xab
 2522 0bf4 CC0B0000 		.4byte	0xbcc
 2523 0bf8 04       		.uleb128 0x4
 2524 0bf9 16000000 		.4byte	.LASF208
 2525 0bfd 09       		.byte	0x9
 2526 0bfe AF       		.byte	0xaf
 2527 0bff 700B0000 		.4byte	0xb70
 2528 0c03 04       		.uleb128 0x4
 2529 0c04 57020000 		.4byte	.LASF209
 2530 0c08 0B       		.byte	0xb
 2531 0c09 16       		.byte	0x16
 2532 0c0a 77000000 		.4byte	0x77
 2533 0c0e 13       		.uleb128 0x13
 2534 0c0f 0E030000 		.4byte	.LASF214
 2535 0c13 18       		.byte	0x18
ARM GAS  /tmp/ccPmdm0I.s 			page 74


 2536 0c14 0B       		.byte	0xb
 2537 0c15 2D       		.byte	0x2d
 2538 0c16 610C0000 		.4byte	0xc61
 2539 0c1a 0D       		.uleb128 0xd
 2540 0c1b 61060000 		.4byte	.LASF210
 2541 0c1f 0B       		.byte	0xb
 2542 0c20 2F       		.byte	0x2f
 2543 0c21 610C0000 		.4byte	0xc61
 2544 0c25 00       		.byte	0
 2545 0c26 14       		.uleb128 0x14
 2546 0c27 5F6B00   		.ascii	"_k\000"
 2547 0c2a 0B       		.byte	0xb
 2548 0c2b 30       		.byte	0x30
 2549 0c2c 25000000 		.4byte	0x25
 2550 0c30 04       		.byte	0x4
 2551 0c31 0D       		.uleb128 0xd
 2552 0c32 A60B0000 		.4byte	.LASF211
 2553 0c36 0B       		.byte	0xb
 2554 0c37 30       		.byte	0x30
 2555 0c38 25000000 		.4byte	0x25
 2556 0c3c 08       		.byte	0x8
 2557 0c3d 0D       		.uleb128 0xd
 2558 0c3e EA0A0000 		.4byte	.LASF212
 2559 0c42 0B       		.byte	0xb
 2560 0c43 30       		.byte	0x30
 2561 0c44 25000000 		.4byte	0x25
 2562 0c48 0C       		.byte	0xc
 2563 0c49 0D       		.uleb128 0xd
 2564 0c4a 9F080000 		.4byte	.LASF213
 2565 0c4e 0B       		.byte	0xb
 2566 0c4f 30       		.byte	0x30
 2567 0c50 25000000 		.4byte	0x25
 2568 0c54 10       		.byte	0x10
 2569 0c55 14       		.uleb128 0x14
 2570 0c56 5F7800   		.ascii	"_x\000"
 2571 0c59 0B       		.byte	0xb
 2572 0c5a 31       		.byte	0x31
 2573 0c5b 670C0000 		.4byte	0xc67
 2574 0c5f 14       		.byte	0x14
 2575 0c60 00       		.byte	0
 2576 0c61 15       		.uleb128 0x15
 2577 0c62 04       		.byte	0x4
 2578 0c63 0E0C0000 		.4byte	0xc0e
 2579 0c67 08       		.uleb128 0x8
 2580 0c68 030C0000 		.4byte	0xc03
 2581 0c6c 770C0000 		.4byte	0xc77
 2582 0c70 09       		.uleb128 0x9
 2583 0c71 D3000000 		.4byte	0xd3
 2584 0c75 00       		.byte	0
 2585 0c76 00       		.byte	0
 2586 0c77 13       		.uleb128 0x13
 2587 0c78 FF0B0000 		.4byte	.LASF215
 2588 0c7c 24       		.byte	0x24
 2589 0c7d 0B       		.byte	0xb
 2590 0c7e 35       		.byte	0x35
 2591 0c7f F00C0000 		.4byte	0xcf0
 2592 0c83 0D       		.uleb128 0xd
ARM GAS  /tmp/ccPmdm0I.s 			page 75


 2593 0c84 F9050000 		.4byte	.LASF216
 2594 0c88 0B       		.byte	0xb
 2595 0c89 37       		.byte	0x37
 2596 0c8a 25000000 		.4byte	0x25
 2597 0c8e 00       		.byte	0
 2598 0c8f 0D       		.uleb128 0xd
 2599 0c90 D2030000 		.4byte	.LASF217
 2600 0c94 0B       		.byte	0xb
 2601 0c95 38       		.byte	0x38
 2602 0c96 25000000 		.4byte	0x25
 2603 0c9a 04       		.byte	0x4
 2604 0c9b 0D       		.uleb128 0xd
 2605 0c9c 71030000 		.4byte	.LASF218
 2606 0ca0 0B       		.byte	0xb
 2607 0ca1 39       		.byte	0x39
 2608 0ca2 25000000 		.4byte	0x25
 2609 0ca6 08       		.byte	0x8
 2610 0ca7 0D       		.uleb128 0xd
 2611 0ca8 EE060000 		.4byte	.LASF219
 2612 0cac 0B       		.byte	0xb
 2613 0cad 3A       		.byte	0x3a
 2614 0cae 25000000 		.4byte	0x25
 2615 0cb2 0C       		.byte	0xc
 2616 0cb3 0D       		.uleb128 0xd
 2617 0cb4 E6090000 		.4byte	.LASF220
 2618 0cb8 0B       		.byte	0xb
 2619 0cb9 3B       		.byte	0x3b
 2620 0cba 25000000 		.4byte	0x25
 2621 0cbe 10       		.byte	0x10
 2622 0cbf 0D       		.uleb128 0xd
 2623 0cc0 440B0000 		.4byte	.LASF221
 2624 0cc4 0B       		.byte	0xb
 2625 0cc5 3C       		.byte	0x3c
 2626 0cc6 25000000 		.4byte	0x25
 2627 0cca 14       		.byte	0x14
 2628 0ccb 0D       		.uleb128 0xd
 2629 0ccc 21030000 		.4byte	.LASF222
 2630 0cd0 0B       		.byte	0xb
 2631 0cd1 3D       		.byte	0x3d
 2632 0cd2 25000000 		.4byte	0x25
 2633 0cd6 18       		.byte	0x18
 2634 0cd7 0D       		.uleb128 0xd
 2635 0cd8 17060000 		.4byte	.LASF223
 2636 0cdc 0B       		.byte	0xb
 2637 0cdd 3E       		.byte	0x3e
 2638 0cde 25000000 		.4byte	0x25
 2639 0ce2 1C       		.byte	0x1c
 2640 0ce3 0D       		.uleb128 0xd
 2641 0ce4 40090000 		.4byte	.LASF224
 2642 0ce8 0B       		.byte	0xb
 2643 0ce9 3F       		.byte	0x3f
 2644 0cea 25000000 		.4byte	0x25
 2645 0cee 20       		.byte	0x20
 2646 0cef 00       		.byte	0
 2647 0cf0 16       		.uleb128 0x16
 2648 0cf1 DC000000 		.4byte	.LASF225
 2649 0cf5 0801     		.2byte	0x108
ARM GAS  /tmp/ccPmdm0I.s 			page 76


 2650 0cf7 0B       		.byte	0xb
 2651 0cf8 48       		.byte	0x48
 2652 0cf9 300D0000 		.4byte	0xd30
 2653 0cfd 0D       		.uleb128 0xd
 2654 0cfe 300F0000 		.4byte	.LASF226
 2655 0d02 0B       		.byte	0xb
 2656 0d03 49       		.byte	0x49
 2657 0d04 300D0000 		.4byte	0xd30
 2658 0d08 00       		.byte	0
 2659 0d09 0D       		.uleb128 0xd
 2660 0d0a A40C0000 		.4byte	.LASF227
 2661 0d0e 0B       		.byte	0xb
 2662 0d0f 4A       		.byte	0x4a
 2663 0d10 300D0000 		.4byte	0xd30
 2664 0d14 80       		.byte	0x80
 2665 0d15 0F       		.uleb128 0xf
 2666 0d16 C80F0000 		.4byte	.LASF228
 2667 0d1a 0B       		.byte	0xb
 2668 0d1b 4C       		.byte	0x4c
 2669 0d1c 030C0000 		.4byte	0xc03
 2670 0d20 0001     		.2byte	0x100
 2671 0d22 0F       		.uleb128 0xf
 2672 0d23 4B100000 		.4byte	.LASF229
 2673 0d27 0B       		.byte	0xb
 2674 0d28 4F       		.byte	0x4f
 2675 0d29 030C0000 		.4byte	0xc03
 2676 0d2d 0401     		.2byte	0x104
 2677 0d2f 00       		.byte	0
 2678 0d30 08       		.uleb128 0x8
 2679 0d31 BC000000 		.4byte	0xbc
 2680 0d35 400D0000 		.4byte	0xd40
 2681 0d39 09       		.uleb128 0x9
 2682 0d3a D3000000 		.4byte	0xd3
 2683 0d3e 1F       		.byte	0x1f
 2684 0d3f 00       		.byte	0
 2685 0d40 16       		.uleb128 0x16
 2686 0d41 330A0000 		.4byte	.LASF230
 2687 0d45 9001     		.2byte	0x190
 2688 0d47 0B       		.byte	0xb
 2689 0d48 5B       		.byte	0x5b
 2690 0d49 7E0D0000 		.4byte	0xd7e
 2691 0d4d 0D       		.uleb128 0xd
 2692 0d4e 61060000 		.4byte	.LASF210
 2693 0d52 0B       		.byte	0xb
 2694 0d53 5C       		.byte	0x5c
 2695 0d54 7E0D0000 		.4byte	0xd7e
 2696 0d58 00       		.byte	0
 2697 0d59 0D       		.uleb128 0xd
 2698 0d5a 73090000 		.4byte	.LASF231
 2699 0d5e 0B       		.byte	0xb
 2700 0d5f 5D       		.byte	0x5d
 2701 0d60 25000000 		.4byte	0x25
 2702 0d64 04       		.byte	0x4
 2703 0d65 0D       		.uleb128 0xd
 2704 0d66 D7020000 		.4byte	.LASF232
 2705 0d6a 0B       		.byte	0xb
 2706 0d6b 5F       		.byte	0x5f
ARM GAS  /tmp/ccPmdm0I.s 			page 77


 2707 0d6c 840D0000 		.4byte	0xd84
 2708 0d70 08       		.byte	0x8
 2709 0d71 0D       		.uleb128 0xd
 2710 0d72 DC000000 		.4byte	.LASF225
 2711 0d76 0B       		.byte	0xb
 2712 0d77 60       		.byte	0x60
 2713 0d78 F00C0000 		.4byte	0xcf0
 2714 0d7c 88       		.byte	0x88
 2715 0d7d 00       		.byte	0
 2716 0d7e 15       		.uleb128 0x15
 2717 0d7f 04       		.byte	0x4
 2718 0d80 400D0000 		.4byte	0xd40
 2719 0d84 08       		.uleb128 0x8
 2720 0d85 940D0000 		.4byte	0xd94
 2721 0d89 940D0000 		.4byte	0xd94
 2722 0d8d 09       		.uleb128 0x9
 2723 0d8e D3000000 		.4byte	0xd3
 2724 0d92 1F       		.byte	0x1f
 2725 0d93 00       		.byte	0
 2726 0d94 15       		.uleb128 0x15
 2727 0d95 04       		.byte	0x4
 2728 0d96 9A0D0000 		.4byte	0xd9a
 2729 0d9a 17       		.uleb128 0x17
 2730 0d9b 13       		.uleb128 0x13
 2731 0d9c BF0E0000 		.4byte	.LASF233
 2732 0da0 08       		.byte	0x8
 2733 0da1 0B       		.byte	0xb
 2734 0da2 73       		.byte	0x73
 2735 0da3 C00D0000 		.4byte	0xdc0
 2736 0da7 0D       		.uleb128 0xd
 2737 0da8 3B080000 		.4byte	.LASF234
 2738 0dac 0B       		.byte	0xb
 2739 0dad 74       		.byte	0x74
 2740 0dae C00D0000 		.4byte	0xdc0
 2741 0db2 00       		.byte	0
 2742 0db3 0D       		.uleb128 0xd
 2743 0db4 D90F0000 		.4byte	.LASF235
 2744 0db8 0B       		.byte	0xb
 2745 0db9 75       		.byte	0x75
 2746 0dba 25000000 		.4byte	0x25
 2747 0dbe 04       		.byte	0x4
 2748 0dbf 00       		.byte	0
 2749 0dc0 15       		.uleb128 0x15
 2750 0dc1 04       		.byte	0x4
 2751 0dc2 45000000 		.4byte	0x45
 2752 0dc6 13       		.uleb128 0x13
 2753 0dc7 D10F0000 		.4byte	.LASF236
 2754 0dcb 68       		.byte	0x68
 2755 0dcc 0B       		.byte	0xb
 2756 0dcd B3       		.byte	0xb3
 2757 0dce F00E0000 		.4byte	0xef0
 2758 0dd2 14       		.uleb128 0x14
 2759 0dd3 5F7000   		.ascii	"_p\000"
 2760 0dd6 0B       		.byte	0xb
 2761 0dd7 B4       		.byte	0xb4
 2762 0dd8 C00D0000 		.4byte	0xdc0
 2763 0ddc 00       		.byte	0
ARM GAS  /tmp/ccPmdm0I.s 			page 78


 2764 0ddd 14       		.uleb128 0x14
 2765 0dde 5F7200   		.ascii	"_r\000"
 2766 0de1 0B       		.byte	0xb
 2767 0de2 B5       		.byte	0xb5
 2768 0de3 25000000 		.4byte	0x25
 2769 0de7 04       		.byte	0x4
 2770 0de8 14       		.uleb128 0x14
 2771 0de9 5F7700   		.ascii	"_w\000"
 2772 0dec 0B       		.byte	0xb
 2773 0ded B6       		.byte	0xb6
 2774 0dee 25000000 		.4byte	0x25
 2775 0df2 08       		.byte	0x8
 2776 0df3 0D       		.uleb128 0xd
 2777 0df4 CF010000 		.4byte	.LASF237
 2778 0df8 0B       		.byte	0xb
 2779 0df9 B7       		.byte	0xb7
 2780 0dfa 4C000000 		.4byte	0x4c
 2781 0dfe 0C       		.byte	0xc
 2782 0dff 0D       		.uleb128 0xd
 2783 0e00 4E0B0000 		.4byte	.LASF238
 2784 0e04 0B       		.byte	0xb
 2785 0e05 B8       		.byte	0xb8
 2786 0e06 4C000000 		.4byte	0x4c
 2787 0e0a 0E       		.byte	0xe
 2788 0e0b 14       		.uleb128 0x14
 2789 0e0c 5F626600 		.ascii	"_bf\000"
 2790 0e10 0B       		.byte	0xb
 2791 0e11 B9       		.byte	0xb9
 2792 0e12 9B0D0000 		.4byte	0xd9b
 2793 0e16 10       		.byte	0x10
 2794 0e17 0D       		.uleb128 0xd
 2795 0e18 C6010000 		.4byte	.LASF239
 2796 0e1c 0B       		.byte	0xb
 2797 0e1d BA       		.byte	0xba
 2798 0e1e 25000000 		.4byte	0x25
 2799 0e22 18       		.byte	0x18
 2800 0e23 0D       		.uleb128 0xd
 2801 0e24 E7020000 		.4byte	.LASF240
 2802 0e28 0B       		.byte	0xb
 2803 0e29 C1       		.byte	0xc1
 2804 0e2a BC000000 		.4byte	0xbc
 2805 0e2e 1C       		.byte	0x1c
 2806 0e2f 0D       		.uleb128 0xd
 2807 0e30 51020000 		.4byte	.LASF241
 2808 0e34 0B       		.byte	0xb
 2809 0e35 C3       		.byte	0xc3
 2810 0e36 5D100000 		.4byte	0x105d
 2811 0e3a 20       		.byte	0x20
 2812 0e3b 0D       		.uleb128 0xd
 2813 0e3c FF090000 		.4byte	.LASF242
 2814 0e40 0B       		.byte	0xb
 2815 0e41 C5       		.byte	0xc5
 2816 0e42 87100000 		.4byte	0x1087
 2817 0e46 24       		.byte	0x24
 2818 0e47 0D       		.uleb128 0xd
 2819 0e48 84100000 		.4byte	.LASF243
 2820 0e4c 0B       		.byte	0xb
ARM GAS  /tmp/ccPmdm0I.s 			page 79


 2821 0e4d C8       		.byte	0xc8
 2822 0e4e AB100000 		.4byte	0x10ab
 2823 0e52 28       		.byte	0x28
 2824 0e53 0D       		.uleb128 0xd
 2825 0e54 C6070000 		.4byte	.LASF244
 2826 0e58 0B       		.byte	0xb
 2827 0e59 C9       		.byte	0xc9
 2828 0e5a C5100000 		.4byte	0x10c5
 2829 0e5e 2C       		.byte	0x2c
 2830 0e5f 14       		.uleb128 0x14
 2831 0e60 5F756200 		.ascii	"_ub\000"
 2832 0e64 0B       		.byte	0xb
 2833 0e65 CC       		.byte	0xcc
 2834 0e66 9B0D0000 		.4byte	0xd9b
 2835 0e6a 30       		.byte	0x30
 2836 0e6b 14       		.uleb128 0x14
 2837 0e6c 5F757000 		.ascii	"_up\000"
 2838 0e70 0B       		.byte	0xb
 2839 0e71 CD       		.byte	0xcd
 2840 0e72 C00D0000 		.4byte	0xdc0
 2841 0e76 38       		.byte	0x38
 2842 0e77 14       		.uleb128 0x14
 2843 0e78 5F757200 		.ascii	"_ur\000"
 2844 0e7c 0B       		.byte	0xb
 2845 0e7d CE       		.byte	0xce
 2846 0e7e 25000000 		.4byte	0x25
 2847 0e82 3C       		.byte	0x3c
 2848 0e83 0D       		.uleb128 0xd
 2849 0e84 4B090000 		.4byte	.LASF245
 2850 0e88 0B       		.byte	0xb
 2851 0e89 D1       		.byte	0xd1
 2852 0e8a CB100000 		.4byte	0x10cb
 2853 0e8e 40       		.byte	0x40
 2854 0e8f 0D       		.uleb128 0xd
 2855 0e90 1B100000 		.4byte	.LASF246
 2856 0e94 0B       		.byte	0xb
 2857 0e95 D2       		.byte	0xd2
 2858 0e96 DB100000 		.4byte	0x10db
 2859 0e9a 43       		.byte	0x43
 2860 0e9b 14       		.uleb128 0x14
 2861 0e9c 5F6C6200 		.ascii	"_lb\000"
 2862 0ea0 0B       		.byte	0xb
 2863 0ea1 D5       		.byte	0xd5
 2864 0ea2 9B0D0000 		.4byte	0xd9b
 2865 0ea6 44       		.byte	0x44
 2866 0ea7 0D       		.uleb128 0xd
 2867 0ea8 F60B0000 		.4byte	.LASF247
 2868 0eac 0B       		.byte	0xb
 2869 0ead D8       		.byte	0xd8
 2870 0eae 25000000 		.4byte	0x25
 2871 0eb2 4C       		.byte	0x4c
 2872 0eb3 0D       		.uleb128 0xd
 2873 0eb4 0D050000 		.4byte	.LASF248
 2874 0eb8 0B       		.byte	0xb
 2875 0eb9 D9       		.byte	0xd9
 2876 0eba 7B0B0000 		.4byte	0xb7b
 2877 0ebe 50       		.byte	0x50
ARM GAS  /tmp/ccPmdm0I.s 			page 80


 2878 0ebf 0D       		.uleb128 0xd
 2879 0ec0 0D0B0000 		.4byte	.LASF249
 2880 0ec4 0B       		.byte	0xb
 2881 0ec5 DC       		.byte	0xdc
 2882 0ec6 0E0F0000 		.4byte	0xf0e
 2883 0eca 54       		.byte	0x54
 2884 0ecb 0D       		.uleb128 0xd
 2885 0ecc 1B0C0000 		.4byte	.LASF250
 2886 0ed0 0B       		.byte	0xb
 2887 0ed1 E0       		.byte	0xe0
 2888 0ed2 F80B0000 		.4byte	0xbf8
 2889 0ed6 58       		.byte	0x58
 2890 0ed7 0D       		.uleb128 0xd
 2891 0ed8 2B020000 		.4byte	.LASF251
 2892 0edc 0B       		.byte	0xb
 2893 0edd E2       		.byte	0xe2
 2894 0ede ED0B0000 		.4byte	0xbed
 2895 0ee2 5C       		.byte	0x5c
 2896 0ee3 0D       		.uleb128 0xd
 2897 0ee4 3C100000 		.4byte	.LASF252
 2898 0ee8 0B       		.byte	0xb
 2899 0ee9 E3       		.byte	0xe3
 2900 0eea 25000000 		.4byte	0x25
 2901 0eee 64       		.byte	0x64
 2902 0eef 00       		.byte	0
 2903 0ef0 18       		.uleb128 0x18
 2904 0ef1 25000000 		.4byte	0x25
 2905 0ef5 0E0F0000 		.4byte	0xf0e
 2906 0ef9 19       		.uleb128 0x19
 2907 0efa 0E0F0000 		.4byte	0xf0e
 2908 0efe 19       		.uleb128 0x19
 2909 0eff BC000000 		.4byte	0xbc
 2910 0f03 19       		.uleb128 0x19
 2911 0f04 4B100000 		.4byte	0x104b
 2912 0f08 19       		.uleb128 0x19
 2913 0f09 25000000 		.4byte	0x25
 2914 0f0d 00       		.byte	0
 2915 0f0e 15       		.uleb128 0x15
 2916 0f0f 04       		.byte	0x4
 2917 0f10 190F0000 		.4byte	0xf19
 2918 0f14 06       		.uleb128 0x6
 2919 0f15 0E0F0000 		.4byte	0xf0e
 2920 0f19 1A       		.uleb128 0x1a
 2921 0f1a 6D0F0000 		.4byte	.LASF253
 2922 0f1e 2804     		.2byte	0x428
 2923 0f20 0B       		.byte	0xb
 2924 0f21 3802     		.2byte	0x238
 2925 0f23 4B100000 		.4byte	0x104b
 2926 0f27 1B       		.uleb128 0x1b
 2927 0f28 DE010000 		.4byte	.LASF254
 2928 0f2c 0B       		.byte	0xb
 2929 0f2d 3A02     		.2byte	0x23a
 2930 0f2f 25000000 		.4byte	0x25
 2931 0f33 00       		.byte	0
 2932 0f34 1B       		.uleb128 0x1b
 2933 0f35 A9030000 		.4byte	.LASF255
 2934 0f39 0B       		.byte	0xb
ARM GAS  /tmp/ccPmdm0I.s 			page 81


 2935 0f3a 3F02     		.2byte	0x23f
 2936 0f3c 32110000 		.4byte	0x1132
 2937 0f40 04       		.byte	0x4
 2938 0f41 1B       		.uleb128 0x1b
 2939 0f42 BA020000 		.4byte	.LASF256
 2940 0f46 0B       		.byte	0xb
 2941 0f47 3F02     		.2byte	0x23f
 2942 0f49 32110000 		.4byte	0x1132
 2943 0f4d 08       		.byte	0x8
 2944 0f4e 1B       		.uleb128 0x1b
 2945 0f4f A0100000 		.4byte	.LASF257
 2946 0f53 0B       		.byte	0xb
 2947 0f54 3F02     		.2byte	0x23f
 2948 0f56 32110000 		.4byte	0x1132
 2949 0f5a 0C       		.byte	0xc
 2950 0f5b 1B       		.uleb128 0x1b
 2951 0f5c 21060000 		.4byte	.LASF258
 2952 0f60 0B       		.byte	0xb
 2953 0f61 4102     		.2byte	0x241
 2954 0f63 25000000 		.4byte	0x25
 2955 0f67 10       		.byte	0x10
 2956 0f68 1B       		.uleb128 0x1b
 2957 0f69 92030000 		.4byte	.LASF259
 2958 0f6d 0B       		.byte	0xb
 2959 0f6e 4202     		.2byte	0x242
 2960 0f70 14130000 		.4byte	0x1314
 2961 0f74 14       		.byte	0x14
 2962 0f75 1B       		.uleb128 0x1b
 2963 0f76 B80B0000 		.4byte	.LASF260
 2964 0f7a 0B       		.byte	0xb
 2965 0f7b 4402     		.2byte	0x244
 2966 0f7d 25000000 		.4byte	0x25
 2967 0f81 30       		.byte	0x30
 2968 0f82 1B       		.uleb128 0x1b
 2969 0f83 F00A0000 		.4byte	.LASF261
 2970 0f87 0B       		.byte	0xb
 2971 0f88 4502     		.2byte	0x245
 2972 0f8a 81100000 		.4byte	0x1081
 2973 0f8e 34       		.byte	0x34
 2974 0f8f 1B       		.uleb128 0x1b
 2975 0f90 CD070000 		.4byte	.LASF262
 2976 0f94 0B       		.byte	0xb
 2977 0f95 4702     		.2byte	0x247
 2978 0f97 25000000 		.4byte	0x25
 2979 0f9b 38       		.byte	0x38
 2980 0f9c 1B       		.uleb128 0x1b
 2981 0f9d CD080000 		.4byte	.LASF263
 2982 0fa1 0B       		.byte	0xb
 2983 0fa2 4902     		.2byte	0x249
 2984 0fa4 2F130000 		.4byte	0x132f
 2985 0fa8 3C       		.byte	0x3c
 2986 0fa9 1B       		.uleb128 0x1b
 2987 0faa 3A030000 		.4byte	.LASF264
 2988 0fae 0B       		.byte	0xb
 2989 0faf 4C02     		.2byte	0x24c
 2990 0fb1 610C0000 		.4byte	0xc61
 2991 0fb5 40       		.byte	0x40
ARM GAS  /tmp/ccPmdm0I.s 			page 82


 2992 0fb6 1B       		.uleb128 0x1b
 2993 0fb7 87070000 		.4byte	.LASF265
 2994 0fbb 0B       		.byte	0xb
 2995 0fbc 4D02     		.2byte	0x24d
 2996 0fbe 25000000 		.4byte	0x25
 2997 0fc2 44       		.byte	0x44
 2998 0fc3 1B       		.uleb128 0x1b
 2999 0fc4 B1060000 		.4byte	.LASF266
 3000 0fc8 0B       		.byte	0xb
 3001 0fc9 4E02     		.2byte	0x24e
 3002 0fcb 610C0000 		.4byte	0xc61
 3003 0fcf 48       		.byte	0x48
 3004 0fd0 1B       		.uleb128 0x1b
 3005 0fd1 41080000 		.4byte	.LASF267
 3006 0fd5 0B       		.byte	0xb
 3007 0fd6 4F02     		.2byte	0x24f
 3008 0fd8 35130000 		.4byte	0x1335
 3009 0fdc 4C       		.byte	0x4c
 3010 0fdd 1B       		.uleb128 0x1b
 3011 0fde 9E0B0000 		.4byte	.LASF268
 3012 0fe2 0B       		.byte	0xb
 3013 0fe3 5202     		.2byte	0x252
 3014 0fe5 25000000 		.4byte	0x25
 3015 0fe9 50       		.byte	0x50
 3016 0fea 1B       		.uleb128 0x1b
 3017 0feb D30C0000 		.4byte	.LASF269
 3018 0fef 0B       		.byte	0xb
 3019 0ff0 5302     		.2byte	0x253
 3020 0ff2 4B100000 		.4byte	0x104b
 3021 0ff6 54       		.byte	0x54
 3022 0ff7 1B       		.uleb128 0x1b
 3023 0ff8 990B0000 		.4byte	.LASF270
 3024 0ffc 0B       		.byte	0xb
 3025 0ffd 7602     		.2byte	0x276
 3026 0fff F2120000 		.4byte	0x12f2
 3027 1003 58       		.byte	0x58
 3028 1004 1C       		.uleb128 0x1c
 3029 1005 330A0000 		.4byte	.LASF230
 3030 1009 0B       		.byte	0xb
 3031 100a 7A02     		.2byte	0x27a
 3032 100c 7E0D0000 		.4byte	0xd7e
 3033 1010 4801     		.2byte	0x148
 3034 1012 1C       		.uleb128 0x1c
 3035 1013 0B070000 		.4byte	.LASF271
 3036 1017 0B       		.byte	0xb
 3037 1018 7B02     		.2byte	0x27b
 3038 101a 400D0000 		.4byte	0xd40
 3039 101e 4C01     		.2byte	0x14c
 3040 1020 1C       		.uleb128 0x1c
 3041 1021 F8060000 		.4byte	.LASF272
 3042 1025 0B       		.byte	0xb
 3043 1026 7F02     		.2byte	0x27f
 3044 1028 46130000 		.4byte	0x1346
 3045 102c DC02     		.2byte	0x2dc
 3046 102e 1C       		.uleb128 0x1c
 3047 102f E90E0000 		.4byte	.LASF273
 3048 1033 0B       		.byte	0xb
ARM GAS  /tmp/ccPmdm0I.s 			page 83


 3049 1034 8402     		.2byte	0x284
 3050 1036 F7100000 		.4byte	0x10f7
 3051 103a E002     		.2byte	0x2e0
 3052 103c 1C       		.uleb128 0x1c
 3053 103d E50A0000 		.4byte	.LASF274
 3054 1041 0B       		.byte	0xb
 3055 1042 8502     		.2byte	0x285
 3056 1044 52130000 		.4byte	0x1352
 3057 1048 EC02     		.2byte	0x2ec
 3058 104a 00       		.byte	0
 3059 104b 15       		.uleb128 0x15
 3060 104c 04       		.byte	0x4
 3061 104d 51100000 		.4byte	0x1051
 3062 1051 03       		.uleb128 0x3
 3063 1052 01       		.byte	0x1
 3064 1053 08       		.byte	0x8
 3065 1054 CE000000 		.4byte	.LASF275
 3066 1058 06       		.uleb128 0x6
 3067 1059 51100000 		.4byte	0x1051
 3068 105d 15       		.uleb128 0x15
 3069 105e 04       		.byte	0x4
 3070 105f F00E0000 		.4byte	0xef0
 3071 1063 18       		.uleb128 0x18
 3072 1064 25000000 		.4byte	0x25
 3073 1068 81100000 		.4byte	0x1081
 3074 106c 19       		.uleb128 0x19
 3075 106d 0E0F0000 		.4byte	0xf0e
 3076 1071 19       		.uleb128 0x19
 3077 1072 BC000000 		.4byte	0xbc
 3078 1076 19       		.uleb128 0x19
 3079 1077 81100000 		.4byte	0x1081
 3080 107b 19       		.uleb128 0x19
 3081 107c 25000000 		.4byte	0x25
 3082 1080 00       		.byte	0
 3083 1081 15       		.uleb128 0x15
 3084 1082 04       		.byte	0x4
 3085 1083 58100000 		.4byte	0x1058
 3086 1087 15       		.uleb128 0x15
 3087 1088 04       		.byte	0x4
 3088 1089 63100000 		.4byte	0x1063
 3089 108d 18       		.uleb128 0x18
 3090 108e 860B0000 		.4byte	0xb86
 3091 1092 AB100000 		.4byte	0x10ab
 3092 1096 19       		.uleb128 0x19
 3093 1097 0E0F0000 		.4byte	0xf0e
 3094 109b 19       		.uleb128 0x19
 3095 109c BC000000 		.4byte	0xbc
 3096 10a0 19       		.uleb128 0x19
 3097 10a1 860B0000 		.4byte	0xb86
 3098 10a5 19       		.uleb128 0x19
 3099 10a6 25000000 		.4byte	0x25
 3100 10aa 00       		.byte	0
 3101 10ab 15       		.uleb128 0x15
 3102 10ac 04       		.byte	0x4
 3103 10ad 8D100000 		.4byte	0x108d
 3104 10b1 18       		.uleb128 0x18
 3105 10b2 25000000 		.4byte	0x25
ARM GAS  /tmp/ccPmdm0I.s 			page 84


 3106 10b6 C5100000 		.4byte	0x10c5
 3107 10ba 19       		.uleb128 0x19
 3108 10bb 0E0F0000 		.4byte	0xf0e
 3109 10bf 19       		.uleb128 0x19
 3110 10c0 BC000000 		.4byte	0xbc
 3111 10c4 00       		.byte	0
 3112 10c5 15       		.uleb128 0x15
 3113 10c6 04       		.byte	0x4
 3114 10c7 B1100000 		.4byte	0x10b1
 3115 10cb 08       		.uleb128 0x8
 3116 10cc 45000000 		.4byte	0x45
 3117 10d0 DB100000 		.4byte	0x10db
 3118 10d4 09       		.uleb128 0x9
 3119 10d5 D3000000 		.4byte	0xd3
 3120 10d9 02       		.byte	0x2
 3121 10da 00       		.byte	0
 3122 10db 08       		.uleb128 0x8
 3123 10dc 45000000 		.4byte	0x45
 3124 10e0 EB100000 		.4byte	0x10eb
 3125 10e4 09       		.uleb128 0x9
 3126 10e5 D3000000 		.4byte	0xd3
 3127 10e9 00       		.byte	0
 3128 10ea 00       		.byte	0
 3129 10eb 10       		.uleb128 0x10
 3130 10ec F4040000 		.4byte	.LASF276
 3131 10f0 0B       		.byte	0xb
 3132 10f1 1D01     		.2byte	0x11d
 3133 10f3 C60D0000 		.4byte	0xdc6
 3134 10f7 1D       		.uleb128 0x1d
 3135 10f8 D60E0000 		.4byte	.LASF277
 3136 10fc 0C       		.byte	0xc
 3137 10fd 0B       		.byte	0xb
 3138 10fe 2101     		.2byte	0x121
 3139 1100 2C110000 		.4byte	0x112c
 3140 1104 1B       		.uleb128 0x1b
 3141 1105 61060000 		.4byte	.LASF210
 3142 1109 0B       		.byte	0xb
 3143 110a 2301     		.2byte	0x123
 3144 110c 2C110000 		.4byte	0x112c
 3145 1110 00       		.byte	0
 3146 1111 1B       		.uleb128 0x1b
 3147 1112 660C0000 		.4byte	.LASF278
 3148 1116 0B       		.byte	0xb
 3149 1117 2401     		.2byte	0x124
 3150 1119 25000000 		.4byte	0x25
 3151 111d 04       		.byte	0x4
 3152 111e 1B       		.uleb128 0x1b
 3153 111f B1100000 		.4byte	.LASF279
 3154 1123 0B       		.byte	0xb
 3155 1124 2501     		.2byte	0x125
 3156 1126 32110000 		.4byte	0x1132
 3157 112a 08       		.byte	0x8
 3158 112b 00       		.byte	0
 3159 112c 15       		.uleb128 0x15
 3160 112d 04       		.byte	0x4
 3161 112e F7100000 		.4byte	0x10f7
 3162 1132 15       		.uleb128 0x15
ARM GAS  /tmp/ccPmdm0I.s 			page 85


 3163 1133 04       		.byte	0x4
 3164 1134 EB100000 		.4byte	0x10eb
 3165 1138 1D       		.uleb128 0x1d
 3166 1139 60040000 		.4byte	.LASF280
 3167 113d 0E       		.byte	0xe
 3168 113e 0B       		.byte	0xb
 3169 113f 3D01     		.2byte	0x13d
 3170 1141 6D110000 		.4byte	0x116d
 3171 1145 1B       		.uleb128 0x1b
 3172 1146 60100000 		.4byte	.LASF281
 3173 114a 0B       		.byte	0xb
 3174 114b 3E01     		.2byte	0x13e
 3175 114d 6D110000 		.4byte	0x116d
 3176 1151 00       		.byte	0
 3177 1152 1B       		.uleb128 0x1b
 3178 1153 54080000 		.4byte	.LASF282
 3179 1157 0B       		.byte	0xb
 3180 1158 3F01     		.2byte	0x13f
 3181 115a 6D110000 		.4byte	0x116d
 3182 115e 06       		.byte	0x6
 3183 115f 1B       		.uleb128 0x1b
 3184 1160 5A080000 		.4byte	.LASF283
 3185 1164 0B       		.byte	0xb
 3186 1165 4001     		.2byte	0x140
 3187 1167 53000000 		.4byte	0x53
 3188 116b 0C       		.byte	0xc
 3189 116c 00       		.byte	0
 3190 116d 08       		.uleb128 0x8
 3191 116e 53000000 		.4byte	0x53
 3192 1172 7D110000 		.4byte	0x117d
 3193 1176 09       		.uleb128 0x9
 3194 1177 D3000000 		.4byte	0xd3
 3195 117b 02       		.byte	0x2
 3196 117c 00       		.byte	0
 3197 117d 1E       		.uleb128 0x1e
 3198 117e D0       		.byte	0xd0
 3199 117f 0B       		.byte	0xb
 3200 1180 5702     		.2byte	0x257
 3201 1182 7E120000 		.4byte	0x127e
 3202 1186 1B       		.uleb128 0x1b
 3203 1187 8B020000 		.4byte	.LASF284
 3204 118b 0B       		.byte	0xb
 3205 118c 5902     		.2byte	0x259
 3206 118e 2C000000 		.4byte	0x2c
 3207 1192 00       		.byte	0
 3208 1193 1B       		.uleb128 0x1b
 3209 1194 610B0000 		.4byte	.LASF285
 3210 1198 0B       		.byte	0xb
 3211 1199 5A02     		.2byte	0x25a
 3212 119b 4B100000 		.4byte	0x104b
 3213 119f 04       		.byte	0x4
 3214 11a0 1B       		.uleb128 0x1b
 3215 11a1 53040000 		.4byte	.LASF286
 3216 11a5 0B       		.byte	0xb
 3217 11a6 5B02     		.2byte	0x25b
 3218 11a8 7E120000 		.4byte	0x127e
 3219 11ac 08       		.byte	0x8
ARM GAS  /tmp/ccPmdm0I.s 			page 86


 3220 11ad 1B       		.uleb128 0x1b
 3221 11ae 6E0B0000 		.4byte	.LASF287
 3222 11b2 0B       		.byte	0xb
 3223 11b3 5C02     		.2byte	0x25c
 3224 11b5 770C0000 		.4byte	0xc77
 3225 11b9 24       		.byte	0x24
 3226 11ba 1B       		.uleb128 0x1b
 3227 11bb 060A0000 		.4byte	.LASF288
 3228 11bf 0B       		.byte	0xb
 3229 11c0 5D02     		.2byte	0x25d
 3230 11c2 25000000 		.4byte	0x25
 3231 11c6 48       		.byte	0x48
 3232 11c7 1B       		.uleb128 0x1b
 3233 11c8 66100000 		.4byte	.LASF289
 3234 11cc 0B       		.byte	0xb
 3235 11cd 5E02     		.2byte	0x25e
 3236 11cf 85000000 		.4byte	0x85
 3237 11d3 50       		.byte	0x50
 3238 11d4 1B       		.uleb128 0x1b
 3239 11d5 14010000 		.4byte	.LASF290
 3240 11d9 0B       		.byte	0xb
 3241 11da 5F02     		.2byte	0x25f
 3242 11dc 38110000 		.4byte	0x1138
 3243 11e0 58       		.byte	0x58
 3244 11e1 1B       		.uleb128 0x1b
 3245 11e2 CF060000 		.4byte	.LASF291
 3246 11e6 0B       		.byte	0xb
 3247 11e7 6002     		.2byte	0x260
 3248 11e9 ED0B0000 		.4byte	0xbed
 3249 11ed 68       		.byte	0x68
 3250 11ee 1B       		.uleb128 0x1b
 3251 11ef 0C0F0000 		.4byte	.LASF292
 3252 11f3 0B       		.byte	0xb
 3253 11f4 6102     		.2byte	0x261
 3254 11f6 ED0B0000 		.4byte	0xbed
 3255 11fa 70       		.byte	0x70
 3256 11fb 1B       		.uleb128 0x1b
 3257 11fc E60F0000 		.4byte	.LASF293
 3258 1200 0B       		.byte	0xb
 3259 1201 6202     		.2byte	0x262
 3260 1203 ED0B0000 		.4byte	0xbed
 3261 1207 78       		.byte	0x78
 3262 1208 1B       		.uleb128 0x1b
 3263 1209 AE0B0000 		.4byte	.LASF294
 3264 120d 0B       		.byte	0xb
 3265 120e 6302     		.2byte	0x263
 3266 1210 8E120000 		.4byte	0x128e
 3267 1214 80       		.byte	0x80
 3268 1215 1B       		.uleb128 0x1b
 3269 1216 30040000 		.4byte	.LASF295
 3270 121a 0B       		.byte	0xb
 3271 121b 6402     		.2byte	0x264
 3272 121d 9E120000 		.4byte	0x129e
 3273 1221 88       		.byte	0x88
 3274 1222 1B       		.uleb128 0x1b
 3275 1223 F10E0000 		.4byte	.LASF296
 3276 1227 0B       		.byte	0xb
ARM GAS  /tmp/ccPmdm0I.s 			page 87


 3277 1228 6502     		.2byte	0x265
 3278 122a 25000000 		.4byte	0x25
 3279 122e A0       		.byte	0xa0
 3280 122f 1B       		.uleb128 0x1b
 3281 1230 64020000 		.4byte	.LASF297
 3282 1234 0B       		.byte	0xb
 3283 1235 6602     		.2byte	0x266
 3284 1237 ED0B0000 		.4byte	0xbed
 3285 123b A4       		.byte	0xa4
 3286 123c 1B       		.uleb128 0x1b
 3287 123d 34020000 		.4byte	.LASF298
 3288 1241 0B       		.byte	0xb
 3289 1242 6702     		.2byte	0x267
 3290 1244 ED0B0000 		.4byte	0xbed
 3291 1248 AC       		.byte	0xac
 3292 1249 1B       		.uleb128 0x1b
 3293 124a FC030000 		.4byte	.LASF299
 3294 124e 0B       		.byte	0xb
 3295 124f 6802     		.2byte	0x268
 3296 1251 ED0B0000 		.4byte	0xbed
 3297 1255 B4       		.byte	0xb4
 3298 1256 1B       		.uleb128 0x1b
 3299 1257 6D080000 		.4byte	.LASF300
 3300 125b 0B       		.byte	0xb
 3301 125c 6902     		.2byte	0x269
 3302 125e ED0B0000 		.4byte	0xbed
 3303 1262 BC       		.byte	0xbc
 3304 1263 1B       		.uleb128 0x1b
 3305 1264 BE060000 		.4byte	.LASF301
 3306 1268 0B       		.byte	0xb
 3307 1269 6A02     		.2byte	0x26a
 3308 126b ED0B0000 		.4byte	0xbed
 3309 126f C4       		.byte	0xc4
 3310 1270 1B       		.uleb128 0x1b
 3311 1271 FB040000 		.4byte	.LASF302
 3312 1275 0B       		.byte	0xb
 3313 1276 6B02     		.2byte	0x26b
 3314 1278 25000000 		.4byte	0x25
 3315 127c CC       		.byte	0xcc
 3316 127d 00       		.byte	0
 3317 127e 08       		.uleb128 0x8
 3318 127f 51100000 		.4byte	0x1051
 3319 1283 8E120000 		.4byte	0x128e
 3320 1287 09       		.uleb128 0x9
 3321 1288 D3000000 		.4byte	0xd3
 3322 128c 19       		.byte	0x19
 3323 128d 00       		.byte	0
 3324 128e 08       		.uleb128 0x8
 3325 128f 51100000 		.4byte	0x1051
 3326 1293 9E120000 		.4byte	0x129e
 3327 1297 09       		.uleb128 0x9
 3328 1298 D3000000 		.4byte	0xd3
 3329 129c 07       		.byte	0x7
 3330 129d 00       		.byte	0
 3331 129e 08       		.uleb128 0x8
 3332 129f 51100000 		.4byte	0x1051
 3333 12a3 AE120000 		.4byte	0x12ae
ARM GAS  /tmp/ccPmdm0I.s 			page 88


 3334 12a7 09       		.uleb128 0x9
 3335 12a8 D3000000 		.4byte	0xd3
 3336 12ac 17       		.byte	0x17
 3337 12ad 00       		.byte	0
 3338 12ae 1E       		.uleb128 0x1e
 3339 12af F0       		.byte	0xf0
 3340 12b0 0B       		.byte	0xb
 3341 12b1 7002     		.2byte	0x270
 3342 12b3 D2120000 		.4byte	0x12d2
 3343 12b7 1B       		.uleb128 0x1b
 3344 12b8 E7030000 		.4byte	.LASF303
 3345 12bc 0B       		.byte	0xb
 3346 12bd 7302     		.2byte	0x273
 3347 12bf D2120000 		.4byte	0x12d2
 3348 12c3 00       		.byte	0
 3349 12c4 1B       		.uleb128 0x1b
 3350 12c5 A8100000 		.4byte	.LASF304
 3351 12c9 0B       		.byte	0xb
 3352 12ca 7402     		.2byte	0x274
 3353 12cc E2120000 		.4byte	0x12e2
 3354 12d0 78       		.byte	0x78
 3355 12d1 00       		.byte	0
 3356 12d2 08       		.uleb128 0x8
 3357 12d3 C00D0000 		.4byte	0xdc0
 3358 12d7 E2120000 		.4byte	0x12e2
 3359 12db 09       		.uleb128 0x9
 3360 12dc D3000000 		.4byte	0xd3
 3361 12e0 1D       		.byte	0x1d
 3362 12e1 00       		.byte	0
 3363 12e2 08       		.uleb128 0x8
 3364 12e3 2C000000 		.4byte	0x2c
 3365 12e7 F2120000 		.4byte	0x12f2
 3366 12eb 09       		.uleb128 0x9
 3367 12ec D3000000 		.4byte	0xd3
 3368 12f0 1D       		.byte	0x1d
 3369 12f1 00       		.byte	0
 3370 12f2 1F       		.uleb128 0x1f
 3371 12f3 F0       		.byte	0xf0
 3372 12f4 0B       		.byte	0xb
 3373 12f5 5502     		.2byte	0x255
 3374 12f7 14130000 		.4byte	0x1314
 3375 12fb 20       		.uleb128 0x20
 3376 12fc 6D0F0000 		.4byte	.LASF253
 3377 1300 0B       		.byte	0xb
 3378 1301 6C02     		.2byte	0x26c
 3379 1303 7D110000 		.4byte	0x117d
 3380 1307 20       		.uleb128 0x20
 3381 1308 870B0000 		.4byte	.LASF305
 3382 130c 0B       		.byte	0xb
 3383 130d 7502     		.2byte	0x275
 3384 130f AE120000 		.4byte	0x12ae
 3385 1313 00       		.byte	0
 3386 1314 08       		.uleb128 0x8
 3387 1315 51100000 		.4byte	0x1051
 3388 1319 24130000 		.4byte	0x1324
 3389 131d 09       		.uleb128 0x9
 3390 131e D3000000 		.4byte	0xd3
ARM GAS  /tmp/ccPmdm0I.s 			page 89


 3391 1322 18       		.byte	0x18
 3392 1323 00       		.byte	0
 3393 1324 21       		.uleb128 0x21
 3394 1325 2F130000 		.4byte	0x132f
 3395 1329 19       		.uleb128 0x19
 3396 132a 0E0F0000 		.4byte	0xf0e
 3397 132e 00       		.byte	0
 3398 132f 15       		.uleb128 0x15
 3399 1330 04       		.byte	0x4
 3400 1331 24130000 		.4byte	0x1324
 3401 1335 15       		.uleb128 0x15
 3402 1336 04       		.byte	0x4
 3403 1337 610C0000 		.4byte	0xc61
 3404 133b 21       		.uleb128 0x21
 3405 133c 46130000 		.4byte	0x1346
 3406 1340 19       		.uleb128 0x19
 3407 1341 25000000 		.4byte	0x25
 3408 1345 00       		.byte	0
 3409 1346 15       		.uleb128 0x15
 3410 1347 04       		.byte	0x4
 3411 1348 4C130000 		.4byte	0x134c
 3412 134c 15       		.uleb128 0x15
 3413 134d 04       		.byte	0x4
 3414 134e 3B130000 		.4byte	0x133b
 3415 1352 08       		.uleb128 0x8
 3416 1353 EB100000 		.4byte	0x10eb
 3417 1357 62130000 		.4byte	0x1362
 3418 135b 09       		.uleb128 0x9
 3419 135c D3000000 		.4byte	0xd3
 3420 1360 02       		.byte	0x2
 3421 1361 00       		.byte	0
 3422 1362 0A       		.uleb128 0xa
 3423 1363 DB030000 		.4byte	.LASF306
 3424 1367 0B       		.byte	0xb
 3425 1368 FD02     		.2byte	0x2fd
 3426 136a 0E0F0000 		.4byte	0xf0e
 3427 136e 0A       		.uleb128 0xa
 3428 136f 1A0B0000 		.4byte	.LASF307
 3429 1373 0B       		.byte	0xb
 3430 1374 FE02     		.2byte	0x2fe
 3431 1376 140F0000 		.4byte	0xf14
 3432 137a 0B       		.uleb128 0xb
 3433 137b 0D060000 		.4byte	.LASF308
 3434 137f 0C       		.byte	0xc
 3435 1380 5F       		.byte	0x5f
 3436 1381 4B100000 		.4byte	0x104b
 3437 1385 0B       		.uleb128 0xb
 3438 1386 FA020000 		.4byte	.LASF309
 3439 138a 0D       		.byte	0xd
 3440 138b 8F       		.byte	0x8f
 3441 138c 97130000 		.4byte	0x1397
 3442 1390 03       		.uleb128 0x3
 3443 1391 01       		.byte	0x1
 3444 1392 02       		.byte	0x2
 3445 1393 26060000 		.4byte	.LASF310
 3446 1397 05       		.uleb128 0x5
 3447 1398 90130000 		.4byte	0x1390
ARM GAS  /tmp/ccPmdm0I.s 			page 90


 3448 139c 22       		.uleb128 0x22
 3449 139d 450C0000 		.4byte	.LASF311
 3450 13a1 0D       		.byte	0xd
 3451 13a2 94       		.byte	0x94
 3452 13a3 B2000000 		.4byte	0xb2
 3453 13a7 05       		.uleb128 0x5
 3454 13a8 03       		.byte	0x3
 3455 13a9 00000000 		.4byte	cpu_irq_critical_section_counter
 3456 13ad 22       		.uleb128 0x22
 3457 13ae 44060000 		.4byte	.LASF312
 3458 13b2 0D       		.byte	0xd
 3459 13b3 95       		.byte	0x95
 3460 13b4 97130000 		.4byte	0x1397
 3461 13b8 05       		.uleb128 0x5
 3462 13b9 03       		.byte	0x3
 3463 13ba 00000000 		.4byte	cpu_irq_prev_interrupt_state
 3464 13be 03       		.uleb128 0x3
 3465 13bf 04       		.byte	0x4
 3466 13c0 04       		.byte	0x4
 3467 13c1 C2030000 		.4byte	.LASF313
 3468 13c5 03       		.uleb128 0x3
 3469 13c6 08       		.byte	0x8
 3470 13c7 04       		.byte	0x4
 3471 13c8 DF0F0000 		.4byte	.LASF314
 3472 13cc 23       		.uleb128 0x23
 3473 13cd 01       		.byte	0x1
 3474 13ce 45000000 		.4byte	0x45
 3475 13d2 02       		.byte	0x2
 3476 13d3 87       		.byte	0x87
 3477 13d4 09140000 		.4byte	0x1409
 3478 13d8 24       		.uleb128 0x24
 3479 13d9 DD0A0000 		.4byte	.LASF315
 3480 13dd 00       		.byte	0
 3481 13de 24       		.uleb128 0x24
 3482 13df 09000000 		.4byte	.LASF316
 3483 13e3 01       		.byte	0x1
 3484 13e4 24       		.uleb128 0x24
 3485 13e5 83050000 		.4byte	.LASF317
 3486 13e9 02       		.byte	0x2
 3487 13ea 24       		.uleb128 0x24
 3488 13eb FE0E0000 		.4byte	.LASF318
 3489 13ef 03       		.byte	0x3
 3490 13f0 24       		.uleb128 0x24
 3491 13f1 D7080000 		.4byte	.LASF319
 3492 13f5 04       		.byte	0x4
 3493 13f6 24       		.uleb128 0x24
 3494 13f7 81090000 		.4byte	.LASF320
 3495 13fb 05       		.byte	0x5
 3496 13fc 24       		.uleb128 0x24
 3497 13fd EF020000 		.4byte	.LASF321
 3498 1401 06       		.byte	0x6
 3499 1402 24       		.uleb128 0x24
 3500 1403 91070000 		.4byte	.LASF322
 3501 1407 FF       		.byte	0xff
 3502 1408 00       		.byte	0
 3503 1409 23       		.uleb128 0x23
 3504 140a 01       		.byte	0x1
ARM GAS  /tmp/ccPmdm0I.s 			page 91


 3505 140b 45000000 		.4byte	0x45
 3506 140f 02       		.byte	0x2
 3507 1410 95       		.byte	0x95
 3508 1411 28140000 		.4byte	0x1428
 3509 1415 24       		.uleb128 0x24
 3510 1416 07020000 		.4byte	.LASF323
 3511 141a 00       		.byte	0
 3512 141b 24       		.uleb128 0x24
 3513 141c AC020000 		.4byte	.LASF324
 3514 1420 01       		.byte	0x1
 3515 1421 24       		.uleb128 0x24
 3516 1422 0D040000 		.4byte	.LASF325
 3517 1426 FF       		.byte	0xff
 3518 1427 00       		.byte	0
 3519 1428 04       		.uleb128 0x4
 3520 1429 460A0000 		.4byte	.LASF326
 3521 142d 02       		.byte	0x2
 3522 142e 99       		.byte	0x99
 3523 142f 09140000 		.4byte	0x1409
 3524 1433 25       		.uleb128 0x25
 3525 1434 2B030000 		.4byte	.LASF327
 3526 1438 01       		.byte	0x1
 3527 1439 0F01     		.2byte	0x10f
 3528 143b 90130000 		.4byte	0x1390
 3529 143f 05       		.uleb128 0x5
 3530 1440 03       		.byte	0x3
 3531 1441 00000000 		.4byte	phyInitialized
 3532 1445 26       		.uleb128 0x26
 3533 1446 71100000 		.4byte	.LASF334
 3534 144a 01       		.byte	0x1
 3535 144b AD01     		.2byte	0x1ad
 3536 144d 8C000000 		.4byte	0x8c
 3537 1451 00000000 		.4byte	.LFB222
 3538 1455 5C000000 		.4byte	.LFE222-.LFB222
 3539 1459 01       		.uleb128 0x1
 3540 145a 9C       		.byte	0x9c
 3541 145b 47150000 		.4byte	0x1547
 3542 145f 27       		.uleb128 0x27
 3543 1460 E8050000 		.4byte	.LASF328
 3544 1464 01       		.byte	0x1
 3545 1465 AD01     		.2byte	0x1ad
 3546 1467 47150000 		.4byte	0x1547
 3547 146b 00000000 		.4byte	.LLST40
 3548 146f 27       		.uleb128 0x27
 3549 1470 76060000 		.4byte	.LASF329
 3550 1474 01       		.byte	0x1
 3551 1475 AD01     		.2byte	0x1ad
 3552 1477 8C000000 		.4byte	0x8c
 3553 147b 1E000000 		.4byte	.LLST41
 3554 147f 25       		.uleb128 0x25
 3555 1480 B6060000 		.4byte	.LASF330
 3556 1484 01       		.byte	0x1
 3557 1485 AF01     		.2byte	0x1af
 3558 1487 A7000000 		.4byte	0xa7
 3559 148b 02       		.uleb128 0x2
 3560 148c 91       		.byte	0x91
 3561 148d 64       		.sleb128 -28
ARM GAS  /tmp/ccPmdm0I.s 			page 92


 3562 148e 25       		.uleb128 0x25
 3563 148f 25000000 		.4byte	.LASF331
 3564 1493 01       		.byte	0x1
 3565 1494 B001     		.2byte	0x1b0
 3566 1496 8C000000 		.4byte	0x8c
 3567 149a 01       		.uleb128 0x1
 3568 149b 57       		.byte	0x57
 3569 149c 28       		.uleb128 0x28
 3570 149d 100C0000 		.4byte	.LASF332
 3571 14a1 01       		.byte	0x1
 3572 14a2 B101     		.2byte	0x1b1
 3573 14a4 A7000000 		.4byte	0xa7
 3574 14a8 3F000000 		.4byte	.LLST42
 3575 14ac 29       		.uleb128 0x29
 3576 14ad 64090000 		.4byte	.LASF333
 3577 14b1 01       		.byte	0x1
 3578 14b2 B201     		.2byte	0x1b2
 3579 14b4 8C000000 		.4byte	0x8c
 3580 14b8 01       		.byte	0x1
 3581 14b9 2A       		.uleb128 0x2a
 3582 14ba E01C0000 		.4byte	0x1ce0
 3583 14be 02000000 		.4byte	.LBB118
 3584 14c2 18010000 		.4byte	.Ldebug_ranges0+0x118
 3585 14c6 01       		.byte	0x1
 3586 14c7 B401     		.2byte	0x1b4
 3587 14c9 D8140000 		.4byte	0x14d8
 3588 14cd 2B       		.uleb128 0x2b
 3589 14ce F91C0000 		.4byte	0x1cf9
 3590 14d2 2B       		.uleb128 0x2b
 3591 14d3 ED1C0000 		.4byte	0x1ced
 3592 14d7 00       		.byte	0
 3593 14d8 2A       		.uleb128 0x2a
 3594 14d9 E01C0000 		.4byte	0x1ce0
 3595 14dd 3C000000 		.4byte	.LBB124
 3596 14e1 38010000 		.4byte	.Ldebug_ranges0+0x138
 3597 14e5 01       		.byte	0x1
 3598 14e6 BE01     		.2byte	0x1be
 3599 14e8 FF140000 		.4byte	0x14ff
 3600 14ec 2C       		.uleb128 0x2c
 3601 14ed F91C0000 		.4byte	0x1cf9
 3602 14f1 5E000000 		.4byte	.LLST43
 3603 14f5 2C       		.uleb128 0x2c
 3604 14f6 ED1C0000 		.4byte	0x1ced
 3605 14fa 7E000000 		.4byte	.LLST44
 3606 14fe 00       		.byte	0
 3607 14ff 2D       		.uleb128 0x2d
 3608 1500 24000000 		.4byte	.LVL67
 3609 1504 521D0000 		.4byte	0x1d52
 3610 1508 25150000 		.4byte	0x1525
 3611 150c 2E       		.uleb128 0x2e
 3612 150d 01       		.uleb128 0x1
 3613 150e 50       		.byte	0x50
 3614 150f 02       		.uleb128 0x2
 3615 1510 75       		.byte	0x75
 3616 1511 00       		.sleb128 0
 3617 1512 2E       		.uleb128 0x2e
 3618 1513 01       		.uleb128 0x1
ARM GAS  /tmp/ccPmdm0I.s 			page 93


 3619 1514 51       		.byte	0x51
 3620 1515 02       		.uleb128 0x2
 3621 1516 77       		.byte	0x77
 3622 1517 00       		.sleb128 0
 3623 1518 2E       		.uleb128 0x2e
 3624 1519 01       		.uleb128 0x1
 3625 151a 52       		.byte	0x52
 3626 151b 01       		.uleb128 0x1
 3627 151c 30       		.byte	0x30
 3628 151d 2E       		.uleb128 0x2e
 3629 151e 01       		.uleb128 0x1
 3630 151f 53       		.byte	0x53
 3631 1520 03       		.uleb128 0x3
 3632 1521 0A       		.byte	0xa
 3633 1522 0080     		.2byte	0x8000
 3634 1524 00       		.byte	0
 3635 1525 2F       		.uleb128 0x2f
 3636 1526 30000000 		.4byte	.LVL68
 3637 152a 5E1D0000 		.4byte	0x1d5e
 3638 152e 2E       		.uleb128 0x2e
 3639 152f 01       		.uleb128 0x1
 3640 1530 50       		.byte	0x50
 3641 1531 02       		.uleb128 0x2
 3642 1532 75       		.byte	0x75
 3643 1533 00       		.sleb128 0
 3644 1534 2E       		.uleb128 0x2e
 3645 1535 01       		.uleb128 0x1
 3646 1536 51       		.byte	0x51
 3647 1537 02       		.uleb128 0x2
 3648 1538 77       		.byte	0x77
 3649 1539 00       		.sleb128 0
 3650 153a 2E       		.uleb128 0x2e
 3651 153b 01       		.uleb128 0x1
 3652 153c 52       		.byte	0x52
 3653 153d 01       		.uleb128 0x1
 3654 153e 30       		.byte	0x30
 3655 153f 2E       		.uleb128 0x2e
 3656 1540 01       		.uleb128 0x1
 3657 1541 53       		.byte	0x53
 3658 1542 02       		.uleb128 0x2
 3659 1543 76       		.byte	0x76
 3660 1544 00       		.sleb128 0
 3661 1545 00       		.byte	0
 3662 1546 00       		.byte	0
 3663 1547 15       		.uleb128 0x15
 3664 1548 04       		.byte	0x4
 3665 1549 650B0000 		.4byte	0xb65
 3666 154d 26       		.uleb128 0x26
 3667 154e 4C030000 		.4byte	.LASF335
 3668 1552 01       		.byte	0x1
 3669 1553 1001     		.2byte	0x110
 3670 1555 8C000000 		.4byte	0x8c
 3671 1559 00000000 		.4byte	.LFB221
 3672 155d 48010000 		.4byte	.LFE221-.LFB221
 3673 1561 01       		.uleb128 0x1
 3674 1562 9C       		.byte	0x9c
 3675 1563 3D180000 		.4byte	0x183d
ARM GAS  /tmp/ccPmdm0I.s 			page 94


 3676 1567 27       		.uleb128 0x27
 3677 1568 E8050000 		.4byte	.LASF328
 3678 156c 01       		.byte	0x1
 3679 156d 1001     		.2byte	0x110
 3680 156f 47150000 		.4byte	0x1547
 3681 1573 9C000000 		.4byte	.LLST17
 3682 1577 27       		.uleb128 0x27
 3683 1578 76060000 		.4byte	.LASF329
 3684 157c 01       		.byte	0x1
 3685 157d 1001     		.2byte	0x110
 3686 157f 8C000000 		.4byte	0x8c
 3687 1583 BA000000 		.4byte	.LLST18
 3688 1587 25       		.uleb128 0x25
 3689 1588 FE010000 		.4byte	.LASF336
 3690 158c 01       		.byte	0x1
 3691 158d 1601     		.2byte	0x116
 3692 158f A7000000 		.4byte	0xa7
 3693 1593 02       		.uleb128 0x2
 3694 1594 91       		.byte	0x91
 3695 1595 60       		.sleb128 -32
 3696 1596 30       		.uleb128 0x30
 3697 1597 AB090000 		.4byte	.LASF337
 3698 159b 01       		.byte	0x1
 3699 159c 1701     		.2byte	0x117
 3700 159e A7000000 		.4byte	0xa7
 3701 15a2 E101     		.2byte	0x1e1
 3702 15a4 25       		.uleb128 0x25
 3703 15a5 BE080000 		.4byte	.LASF338
 3704 15a9 01       		.byte	0x1
 3705 15aa 1801     		.2byte	0x118
 3706 15ac A7000000 		.4byte	0xa7
 3707 15b0 02       		.uleb128 0x2
 3708 15b1 91       		.byte	0x91
 3709 15b2 64       		.sleb128 -28
 3710 15b3 28       		.uleb128 0x28
 3711 15b4 65000000 		.4byte	.LASF339
 3712 15b8 01       		.byte	0x1
 3713 15b9 1901     		.2byte	0x119
 3714 15bb 8C000000 		.4byte	0x8c
 3715 15bf DB000000 		.4byte	.LLST19
 3716 15c3 28       		.uleb128 0x28
 3717 15c4 1F000000 		.4byte	.LASF340
 3718 15c8 01       		.byte	0x1
 3719 15c9 1A01     		.2byte	0x11a
 3720 15cb 8C000000 		.4byte	0x8c
 3721 15cf 1F010000 		.4byte	.LLST20
 3722 15d3 28       		.uleb128 0x28
 3723 15d4 64090000 		.4byte	.LASF333
 3724 15d8 01       		.byte	0x1
 3725 15d9 1B01     		.2byte	0x11b
 3726 15db 8C000000 		.4byte	0x8c
 3727 15df 6D010000 		.4byte	.LLST21
 3728 15e3 2A       		.uleb128 0x2a
 3729 15e4 E01C0000 		.4byte	0x1ce0
 3730 15e8 02000000 		.4byte	.LBB84
 3731 15ec 68000000 		.4byte	.Ldebug_ranges0+0x68
 3732 15f0 01       		.byte	0x1
ARM GAS  /tmp/ccPmdm0I.s 			page 95


 3733 15f1 1D01     		.2byte	0x11d
 3734 15f3 0A160000 		.4byte	0x160a
 3735 15f7 2C       		.uleb128 0x2c
 3736 15f8 F91C0000 		.4byte	0x1cf9
 3737 15fc CD010000 		.4byte	.LLST22
 3738 1600 2C       		.uleb128 0x2c
 3739 1601 ED1C0000 		.4byte	0x1ced
 3740 1605 E1010000 		.4byte	.LLST23
 3741 1609 00       		.byte	0
 3742 160a 31       		.uleb128 0x31
 3743 160b E01C0000 		.4byte	0x1ce0
 3744 160f 22000000 		.4byte	.LBB90
 3745 1613 08000000 		.4byte	.LBE90-.LBB90
 3746 1617 01       		.byte	0x1
 3747 1618 7F01     		.2byte	0x17f
 3748 161a 31160000 		.4byte	0x1631
 3749 161e 2C       		.uleb128 0x2c
 3750 161f F91C0000 		.4byte	0x1cf9
 3751 1623 F4010000 		.4byte	.LLST24
 3752 1627 2C       		.uleb128 0x2c
 3753 1628 ED1C0000 		.4byte	0x1ced
 3754 162c 08020000 		.4byte	.LLST25
 3755 1630 00       		.byte	0
 3756 1631 2A       		.uleb128 0x2a
 3757 1632 E01C0000 		.4byte	0x1ce0
 3758 1636 C0000000 		.4byte	.LBB92
 3759 163a 88000000 		.4byte	.Ldebug_ranges0+0x88
 3760 163e 01       		.byte	0x1
 3761 163f 6301     		.2byte	0x163
 3762 1641 58160000 		.4byte	0x1658
 3763 1645 2C       		.uleb128 0x2c
 3764 1646 F91C0000 		.4byte	0x1cf9
 3765 164a 1B020000 		.4byte	.LLST26
 3766 164e 2C       		.uleb128 0x2c
 3767 164f ED1C0000 		.4byte	0x1ced
 3768 1653 2F020000 		.4byte	.LLST27
 3769 1657 00       		.byte	0
 3770 1658 2A       		.uleb128 0x2a
 3771 1659 BA1C0000 		.4byte	0x1cba
 3772 165d EE000000 		.4byte	.LBB96
 3773 1661 A0000000 		.4byte	.Ldebug_ranges0+0xa0
 3774 1665 01       		.byte	0x1
 3775 1666 9701     		.2byte	0x197
 3776 1668 7F160000 		.4byte	0x167f
 3777 166c 2C       		.uleb128 0x2c
 3778 166d D31C0000 		.4byte	0x1cd3
 3779 1671 42020000 		.4byte	.LLST28
 3780 1675 2C       		.uleb128 0x2c
 3781 1676 C71C0000 		.4byte	0x1cc7
 3782 167a 62020000 		.4byte	.LLST29
 3783 167e 00       		.byte	0
 3784 167f 2A       		.uleb128 0x2a
 3785 1680 941C0000 		.4byte	0x1c94
 3786 1684 F6000000 		.4byte	.LBB99
 3787 1688 B8000000 		.4byte	.Ldebug_ranges0+0xb8
 3788 168c 01       		.byte	0x1
 3789 168d 9801     		.2byte	0x198
ARM GAS  /tmp/ccPmdm0I.s 			page 96


 3790 168f A6160000 		.4byte	0x16a6
 3791 1693 2C       		.uleb128 0x2c
 3792 1694 AD1C0000 		.4byte	0x1cad
 3793 1698 80020000 		.4byte	.LLST30
 3794 169c 2C       		.uleb128 0x2c
 3795 169d A11C0000 		.4byte	0x1ca1
 3796 16a1 9E020000 		.4byte	.LLST31
 3797 16a5 00       		.byte	0
 3798 16a6 2A       		.uleb128 0x2a
 3799 16a7 381C0000 		.4byte	0x1c38
 3800 16ab 00010000 		.4byte	.LBB102
 3801 16af D0000000 		.4byte	.Ldebug_ranges0+0xd0
 3802 16b3 01       		.byte	0x1
 3803 16b4 9B01     		.2byte	0x19b
 3804 16b6 CD160000 		.4byte	0x16cd
 3805 16ba 2C       		.uleb128 0x2c
 3806 16bb 511C0000 		.4byte	0x1c51
 3807 16bf BC020000 		.4byte	.LLST32
 3808 16c3 2C       		.uleb128 0x2c
 3809 16c4 451C0000 		.4byte	0x1c45
 3810 16c8 D0020000 		.4byte	.LLST33
 3811 16cc 00       		.byte	0
 3812 16cd 2A       		.uleb128 0x2a
 3813 16ce 061D0000 		.4byte	0x1d06
 3814 16d2 04010000 		.4byte	.LBB105
 3815 16d6 E8000000 		.4byte	.Ldebug_ranges0+0xe8
 3816 16da 01       		.byte	0x1
 3817 16db 9D01     		.2byte	0x19d
 3818 16dd F4160000 		.4byte	0x16f4
 3819 16e1 2C       		.uleb128 0x2c
 3820 16e2 1F1D0000 		.4byte	0x1d1f
 3821 16e6 E3020000 		.4byte	.LLST34
 3822 16ea 2C       		.uleb128 0x2c
 3823 16eb 131D0000 		.4byte	0x1d13
 3824 16ef F7020000 		.4byte	.LLST35
 3825 16f3 00       		.byte	0
 3826 16f4 31       		.uleb128 0x31
 3827 16f5 2C1D0000 		.4byte	0x1d2c
 3828 16f9 14010000 		.4byte	.LBB110
 3829 16fd 08000000 		.4byte	.LBE110-.LBB110
 3830 1701 01       		.byte	0x1
 3831 1702 9E01     		.2byte	0x19e
 3832 1704 1B170000 		.4byte	0x171b
 3833 1708 2C       		.uleb128 0x2c
 3834 1709 451D0000 		.4byte	0x1d45
 3835 170d 0F030000 		.4byte	.LLST36
 3836 1711 2C       		.uleb128 0x2c
 3837 1712 391D0000 		.4byte	0x1d39
 3838 1716 23030000 		.4byte	.LLST37
 3839 171a 00       		.byte	0
 3840 171b 2A       		.uleb128 0x2a
 3841 171c E01C0000 		.4byte	0x1ce0
 3842 1720 1C010000 		.4byte	.LBB112
 3843 1724 00010000 		.4byte	.Ldebug_ranges0+0x100
 3844 1728 01       		.byte	0x1
 3845 1729 A101     		.2byte	0x1a1
 3846 172b 42170000 		.4byte	0x1742
ARM GAS  /tmp/ccPmdm0I.s 			page 97


 3847 172f 2C       		.uleb128 0x2c
 3848 1730 F91C0000 		.4byte	0x1cf9
 3849 1734 3B030000 		.4byte	.LLST38
 3850 1738 2C       		.uleb128 0x2c
 3851 1739 ED1C0000 		.4byte	0x1ced
 3852 173d 4F030000 		.4byte	.LLST39
 3853 1741 00       		.byte	0
 3854 1742 2D       		.uleb128 0x2d
 3855 1743 20000000 		.4byte	.LVL30
 3856 1747 5E1D0000 		.4byte	0x1d5e
 3857 174b 62170000 		.4byte	0x1762
 3858 174f 2E       		.uleb128 0x2e
 3859 1750 01       		.uleb128 0x1
 3860 1751 50       		.byte	0x50
 3861 1752 02       		.uleb128 0x2
 3862 1753 74       		.byte	0x74
 3863 1754 00       		.sleb128 0
 3864 1755 2E       		.uleb128 0x2e
 3865 1756 01       		.uleb128 0x1
 3866 1757 51       		.byte	0x51
 3867 1758 02       		.uleb128 0x2
 3868 1759 76       		.byte	0x76
 3869 175a 00       		.sleb128 0
 3870 175b 2E       		.uleb128 0x2e
 3871 175c 01       		.uleb128 0x1
 3872 175d 53       		.byte	0x53
 3873 175e 02       		.uleb128 0x2
 3874 175f 77       		.byte	0x77
 3875 1760 00       		.sleb128 0
 3876 1761 00       		.byte	0
 3877 1762 2D       		.uleb128 0x2d
 3878 1763 48000000 		.4byte	.LVL35
 3879 1767 521D0000 		.4byte	0x1d52
 3880 176b 7C170000 		.4byte	0x177c
 3881 176f 2E       		.uleb128 0x2e
 3882 1770 01       		.uleb128 0x1
 3883 1771 50       		.byte	0x50
 3884 1772 02       		.uleb128 0x2
 3885 1773 74       		.byte	0x74
 3886 1774 00       		.sleb128 0
 3887 1775 2E       		.uleb128 0x2e
 3888 1776 01       		.uleb128 0x1
 3889 1777 51       		.byte	0x51
 3890 1778 02       		.uleb128 0x2
 3891 1779 76       		.byte	0x76
 3892 177a 00       		.sleb128 0
 3893 177b 00       		.byte	0
 3894 177c 2D       		.uleb128 0x2d
 3895 177d 5A000000 		.4byte	.LVL38
 3896 1781 521D0000 		.4byte	0x1d52
 3897 1785 A2170000 		.4byte	0x17a2
 3898 1789 2E       		.uleb128 0x2e
 3899 178a 01       		.uleb128 0x1
 3900 178b 50       		.byte	0x50
 3901 178c 02       		.uleb128 0x2
 3902 178d 74       		.byte	0x74
 3903 178e 00       		.sleb128 0
ARM GAS  /tmp/ccPmdm0I.s 			page 98


 3904 178f 2E       		.uleb128 0x2e
 3905 1790 01       		.uleb128 0x1
 3906 1791 51       		.byte	0x51
 3907 1792 02       		.uleb128 0x2
 3908 1793 76       		.byte	0x76
 3909 1794 00       		.sleb128 0
 3910 1795 2E       		.uleb128 0x2e
 3911 1796 01       		.uleb128 0x1
 3912 1797 52       		.byte	0x52
 3913 1798 01       		.uleb128 0x1
 3914 1799 34       		.byte	0x34
 3915 179a 2E       		.uleb128 0x2e
 3916 179b 01       		.uleb128 0x1
 3917 179c 53       		.byte	0x53
 3918 179d 03       		.uleb128 0x3
 3919 179e 0A       		.byte	0xa
 3920 179f E101     		.2byte	0x1e1
 3921 17a1 00       		.byte	0
 3922 17a2 2D       		.uleb128 0x2d
 3923 17a3 6A000000 		.4byte	.LVL40
 3924 17a7 5E1D0000 		.4byte	0x1d5e
 3925 17ab C2170000 		.4byte	0x17c2
 3926 17af 2E       		.uleb128 0x2e
 3927 17b0 01       		.uleb128 0x1
 3928 17b1 50       		.byte	0x50
 3929 17b2 02       		.uleb128 0x2
 3930 17b3 74       		.byte	0x74
 3931 17b4 00       		.sleb128 0
 3932 17b5 2E       		.uleb128 0x2e
 3933 17b6 01       		.uleb128 0x1
 3934 17b7 51       		.byte	0x51
 3935 17b8 02       		.uleb128 0x2
 3936 17b9 76       		.byte	0x76
 3937 17ba 00       		.sleb128 0
 3938 17bb 2E       		.uleb128 0x2e
 3939 17bc 01       		.uleb128 0x1
 3940 17bd 53       		.byte	0x53
 3941 17be 02       		.uleb128 0x2
 3942 17bf 77       		.byte	0x77
 3943 17c0 00       		.sleb128 0
 3944 17c1 00       		.byte	0
 3945 17c2 2D       		.uleb128 0x2d
 3946 17c3 84000000 		.4byte	.LVL42
 3947 17c7 521D0000 		.4byte	0x1d52
 3948 17cb DC170000 		.4byte	0x17dc
 3949 17cf 2E       		.uleb128 0x2e
 3950 17d0 01       		.uleb128 0x1
 3951 17d1 50       		.byte	0x50
 3952 17d2 02       		.uleb128 0x2
 3953 17d3 74       		.byte	0x74
 3954 17d4 00       		.sleb128 0
 3955 17d5 2E       		.uleb128 0x2e
 3956 17d6 01       		.uleb128 0x1
 3957 17d7 51       		.byte	0x51
 3958 17d8 02       		.uleb128 0x2
 3959 17d9 76       		.byte	0x76
 3960 17da 00       		.sleb128 0
ARM GAS  /tmp/ccPmdm0I.s 			page 99


 3961 17db 00       		.byte	0
 3962 17dc 2D       		.uleb128 0x2d
 3963 17dd A2000000 		.4byte	.LVL44
 3964 17e1 521D0000 		.4byte	0x1d52
 3965 17e5 F6170000 		.4byte	0x17f6
 3966 17e9 2E       		.uleb128 0x2e
 3967 17ea 01       		.uleb128 0x1
 3968 17eb 50       		.byte	0x50
 3969 17ec 02       		.uleb128 0x2
 3970 17ed 74       		.byte	0x74
 3971 17ee 00       		.sleb128 0
 3972 17ef 2E       		.uleb128 0x2e
 3973 17f0 01       		.uleb128 0x1
 3974 17f1 51       		.byte	0x51
 3975 17f2 02       		.uleb128 0x2
 3976 17f3 76       		.byte	0x76
 3977 17f4 00       		.sleb128 0
 3978 17f5 00       		.byte	0
 3979 17f6 2D       		.uleb128 0x2d
 3980 17f7 B6000000 		.4byte	.LVL46
 3981 17fb 5E1D0000 		.4byte	0x1d5e
 3982 17ff 1B180000 		.4byte	0x181b
 3983 1803 2E       		.uleb128 0x2e
 3984 1804 01       		.uleb128 0x1
 3985 1805 50       		.byte	0x50
 3986 1806 02       		.uleb128 0x2
 3987 1807 74       		.byte	0x74
 3988 1808 00       		.sleb128 0
 3989 1809 2E       		.uleb128 0x2e
 3990 180a 01       		.uleb128 0x1
 3991 180b 51       		.byte	0x51
 3992 180c 02       		.uleb128 0x2
 3993 180d 76       		.byte	0x76
 3994 180e 00       		.sleb128 0
 3995 180f 2E       		.uleb128 0x2e
 3996 1810 01       		.uleb128 0x1
 3997 1811 52       		.byte	0x52
 3998 1812 01       		.uleb128 0x1
 3999 1813 31       		.byte	0x31
 4000 1814 2E       		.uleb128 0x2e
 4001 1815 01       		.uleb128 0x1
 4002 1816 53       		.byte	0x53
 4003 1817 02       		.uleb128 0x2
 4004 1818 77       		.byte	0x77
 4005 1819 00       		.sleb128 0
 4006 181a 00       		.byte	0
 4007 181b 2F       		.uleb128 0x2f
 4008 181c DA000000 		.4byte	.LVL51
 4009 1820 5E1D0000 		.4byte	0x1d5e
 4010 1824 2E       		.uleb128 0x2e
 4011 1825 01       		.uleb128 0x1
 4012 1826 50       		.byte	0x50
 4013 1827 02       		.uleb128 0x2
 4014 1828 74       		.byte	0x74
 4015 1829 00       		.sleb128 0
 4016 182a 2E       		.uleb128 0x2e
 4017 182b 01       		.uleb128 0x1
ARM GAS  /tmp/ccPmdm0I.s 			page 100


 4018 182c 51       		.byte	0x51
 4019 182d 02       		.uleb128 0x2
 4020 182e 76       		.byte	0x76
 4021 182f 00       		.sleb128 0
 4022 1830 2E       		.uleb128 0x2e
 4023 1831 01       		.uleb128 0x1
 4024 1832 52       		.byte	0x52
 4025 1833 01       		.uleb128 0x1
 4026 1834 35       		.byte	0x35
 4027 1835 2E       		.uleb128 0x2e
 4028 1836 01       		.uleb128 0x1
 4029 1837 53       		.byte	0x53
 4030 1838 02       		.uleb128 0x2
 4031 1839 91       		.byte	0x91
 4032 183a 64       		.sleb128 -28
 4033 183b 00       		.byte	0
 4034 183c 00       		.byte	0
 4035 183d 32       		.uleb128 0x32
 4036 183e A6010000 		.4byte	.LASF341
 4037 1842 01       		.byte	0x1
 4038 1843 BB       		.byte	0xbb
 4039 1844 8C000000 		.4byte	0x8c
 4040 1848 00000000 		.4byte	.LFB220
 4041 184c B2000000 		.4byte	.LFE220-.LFB220
 4042 1850 01       		.uleb128 0x1
 4043 1851 9C       		.byte	0x9c
 4044 1852 E1190000 		.4byte	0x19e1
 4045 1856 33       		.uleb128 0x33
 4046 1857 E8050000 		.4byte	.LASF328
 4047 185b 01       		.byte	0x1
 4048 185c BB       		.byte	0xbb
 4049 185d 47150000 		.4byte	0x1547
 4050 1861 62030000 		.4byte	.LLST0
 4051 1865 33       		.uleb128 0x33
 4052 1866 76060000 		.4byte	.LASF329
 4053 186a 01       		.byte	0x1
 4054 186b BB       		.byte	0xbb
 4055 186c 8C000000 		.4byte	0x8c
 4056 1870 80030000 		.4byte	.LLST1
 4057 1874 33       		.uleb128 0x33
 4058 1875 440F0000 		.4byte	.LASF342
 4059 1879 01       		.byte	0x1
 4060 187a BC       		.byte	0xbc
 4061 187b 8C000000 		.4byte	0x8c
 4062 187f A1030000 		.4byte	.LLST2
 4063 1883 22       		.uleb128 0x22
 4064 1884 0B010000 		.4byte	.LASF343
 4065 1888 01       		.byte	0x1
 4066 1889 BE       		.byte	0xbe
 4067 188a A7000000 		.4byte	0xa7
 4068 188e 02       		.uleb128 0x2
 4069 188f 91       		.byte	0x91
 4070 1890 60       		.sleb128 -32
 4071 1891 22       		.uleb128 0x22
 4072 1892 1F0A0000 		.4byte	.LASF344
 4073 1896 01       		.byte	0x1
 4074 1897 BF       		.byte	0xbf
ARM GAS  /tmp/ccPmdm0I.s 			page 101


 4075 1898 A7000000 		.4byte	0xa7
 4076 189c 02       		.uleb128 0x2
 4077 189d 91       		.byte	0x91
 4078 189e 64       		.sleb128 -28
 4079 189f 34       		.uleb128 0x34
 4080 18a0 25000000 		.4byte	.LASF331
 4081 18a4 01       		.byte	0x1
 4082 18a5 C0       		.byte	0xc0
 4083 18a6 8C000000 		.4byte	0x8c
 4084 18aa C2030000 		.4byte	.LLST3
 4085 18ae 34       		.uleb128 0x34
 4086 18af 65000000 		.4byte	.LASF339
 4087 18b3 01       		.byte	0x1
 4088 18b4 C0       		.byte	0xc0
 4089 18b5 8C000000 		.4byte	0x8c
 4090 18b9 D5030000 		.4byte	.LLST4
 4091 18bd 34       		.uleb128 0x34
 4092 18be 1F000000 		.4byte	.LASF340
 4093 18c2 01       		.byte	0x1
 4094 18c3 C0       		.byte	0xc0
 4095 18c4 8C000000 		.4byte	0x8c
 4096 18c8 17040000 		.4byte	.LLST5
 4097 18cc 34       		.uleb128 0x34
 4098 18cd 64090000 		.4byte	.LASF333
 4099 18d1 01       		.byte	0x1
 4100 18d2 C1       		.byte	0xc1
 4101 18d3 8C000000 		.4byte	0x8c
 4102 18d7 70040000 		.4byte	.LLST6
 4103 18db 35       		.uleb128 0x35
 4104 18dc E01C0000 		.4byte	0x1ce0
 4105 18e0 02000000 		.4byte	.LBB64
 4106 18e4 00000000 		.4byte	.Ldebug_ranges0+0
 4107 18e8 01       		.byte	0x1
 4108 18e9 C3       		.byte	0xc3
 4109 18ea 01190000 		.4byte	0x1901
 4110 18ee 2C       		.uleb128 0x2c
 4111 18ef F91C0000 		.4byte	0x1cf9
 4112 18f3 99040000 		.4byte	.LLST7
 4113 18f7 2C       		.uleb128 0x2c
 4114 18f8 ED1C0000 		.4byte	0x1ced
 4115 18fc AD040000 		.4byte	.LLST8
 4116 1900 00       		.byte	0
 4117 1901 35       		.uleb128 0x35
 4118 1902 E01C0000 		.4byte	0x1ce0
 4119 1906 24000000 		.4byte	.LBB70
 4120 190a 20000000 		.4byte	.Ldebug_ranges0+0x20
 4121 190e 01       		.byte	0x1
 4122 190f D1       		.byte	0xd1
 4123 1910 27190000 		.4byte	0x1927
 4124 1914 2C       		.uleb128 0x2c
 4125 1915 F91C0000 		.4byte	0x1cf9
 4126 1919 C0040000 		.4byte	.LLST9
 4127 191d 2C       		.uleb128 0x2c
 4128 191e ED1C0000 		.4byte	0x1ced
 4129 1922 D4040000 		.4byte	.LLST10
 4130 1926 00       		.byte	0
 4131 1927 35       		.uleb128 0x35
ARM GAS  /tmp/ccPmdm0I.s 			page 102


 4132 1928 BA1C0000 		.4byte	0x1cba
 4133 192c 6C000000 		.4byte	.LBB74
 4134 1930 38000000 		.4byte	.Ldebug_ranges0+0x38
 4135 1934 01       		.byte	0x1
 4136 1935 FE       		.byte	0xfe
 4137 1936 4D190000 		.4byte	0x194d
 4138 193a 2C       		.uleb128 0x2c
 4139 193b D31C0000 		.4byte	0x1cd3
 4140 193f E7040000 		.4byte	.LLST11
 4141 1943 2C       		.uleb128 0x2c
 4142 1944 C71C0000 		.4byte	0x1cc7
 4143 1948 FA040000 		.4byte	.LLST12
 4144 194c 00       		.byte	0
 4145 194d 35       		.uleb128 0x35
 4146 194e 941C0000 		.4byte	0x1c94
 4147 1952 74000000 		.4byte	.LBB77
 4148 1956 50000000 		.4byte	.Ldebug_ranges0+0x50
 4149 195a 01       		.byte	0x1
 4150 195b FF       		.byte	0xff
 4151 195c 73190000 		.4byte	0x1973
 4152 1960 2C       		.uleb128 0x2c
 4153 1961 AD1C0000 		.4byte	0x1cad
 4154 1965 18050000 		.4byte	.LLST13
 4155 1969 2C       		.uleb128 0x2c
 4156 196a A11C0000 		.4byte	0x1ca1
 4157 196e 36050000 		.4byte	.LLST14
 4158 1972 00       		.byte	0
 4159 1973 31       		.uleb128 0x31
 4160 1974 E01C0000 		.4byte	0x1ce0
 4161 1978 7E000000 		.4byte	.LBB80
 4162 197c 08000000 		.4byte	.LBE80-.LBB80
 4163 1980 01       		.byte	0x1
 4164 1981 0201     		.2byte	0x102
 4165 1983 9A190000 		.4byte	0x199a
 4166 1987 2C       		.uleb128 0x2c
 4167 1988 F91C0000 		.4byte	0x1cf9
 4168 198c 54050000 		.4byte	.LLST15
 4169 1990 2C       		.uleb128 0x2c
 4170 1991 ED1C0000 		.4byte	0x1ced
 4171 1995 68050000 		.4byte	.LLST16
 4172 1999 00       		.byte	0
 4173 199a 2D       		.uleb128 0x2d
 4174 199b 1A000000 		.4byte	.LVL4
 4175 199f 5E1D0000 		.4byte	0x1d5e
 4176 19a3 BF190000 		.4byte	0x19bf
 4177 19a7 2E       		.uleb128 0x2e
 4178 19a8 01       		.uleb128 0x1
 4179 19a9 50       		.byte	0x50
 4180 19aa 02       		.uleb128 0x2
 4181 19ab 74       		.byte	0x74
 4182 19ac 00       		.sleb128 0
 4183 19ad 2E       		.uleb128 0x2e
 4184 19ae 01       		.uleb128 0x1
 4185 19af 51       		.byte	0x51
 4186 19b0 02       		.uleb128 0x2
 4187 19b1 77       		.byte	0x77
 4188 19b2 00       		.sleb128 0
ARM GAS  /tmp/ccPmdm0I.s 			page 103


 4189 19b3 2E       		.uleb128 0x2e
 4190 19b4 01       		.uleb128 0x1
 4191 19b5 52       		.byte	0x52
 4192 19b6 01       		.uleb128 0x1
 4193 19b7 31       		.byte	0x31
 4194 19b8 2E       		.uleb128 0x2e
 4195 19b9 01       		.uleb128 0x1
 4196 19ba 53       		.byte	0x53
 4197 19bb 02       		.uleb128 0x2
 4198 19bc 7D       		.byte	0x7d
 4199 19bd 00       		.sleb128 0
 4200 19be 00       		.byte	0
 4201 19bf 2F       		.uleb128 0x2f
 4202 19c0 40000000 		.4byte	.LVL10
 4203 19c4 5E1D0000 		.4byte	0x1d5e
 4204 19c8 2E       		.uleb128 0x2e
 4205 19c9 01       		.uleb128 0x1
 4206 19ca 50       		.byte	0x50
 4207 19cb 02       		.uleb128 0x2
 4208 19cc 74       		.byte	0x74
 4209 19cd 00       		.sleb128 0
 4210 19ce 2E       		.uleb128 0x2e
 4211 19cf 01       		.uleb128 0x1
 4212 19d0 51       		.byte	0x51
 4213 19d1 02       		.uleb128 0x2
 4214 19d2 77       		.byte	0x77
 4215 19d3 00       		.sleb128 0
 4216 19d4 2E       		.uleb128 0x2e
 4217 19d5 01       		.uleb128 0x1
 4218 19d6 52       		.byte	0x52
 4219 19d7 01       		.uleb128 0x1
 4220 19d8 4E       		.byte	0x4e
 4221 19d9 2E       		.uleb128 0x2e
 4222 19da 01       		.uleb128 0x1
 4223 19db 53       		.byte	0x53
 4224 19dc 02       		.uleb128 0x2
 4225 19dd 91       		.byte	0x91
 4226 19de 64       		.sleb128 -28
 4227 19df 00       		.byte	0
 4228 19e0 00       		.byte	0
 4229 19e1 32       		.uleb128 0x32
 4230 19e2 F2080000 		.4byte	.LASF345
 4231 19e6 01       		.byte	0x1
 4232 19e7 91       		.byte	0x91
 4233 19e8 8C000000 		.4byte	0x8c
 4234 19ec 00000000 		.4byte	.LFB219
 4235 19f0 20010000 		.4byte	.LFE219-.LFB219
 4236 19f4 01       		.uleb128 0x1
 4237 19f5 9C       		.byte	0x9c
 4238 19f6 DA1B0000 		.4byte	0x1bda
 4239 19fa 33       		.uleb128 0x33
 4240 19fb E8050000 		.4byte	.LASF328
 4241 19ff 01       		.byte	0x1
 4242 1a00 91       		.byte	0x91
 4243 1a01 47150000 		.4byte	0x1547
 4244 1a05 7B050000 		.4byte	.LLST45
 4245 1a09 33       		.uleb128 0x33
ARM GAS  /tmp/ccPmdm0I.s 			page 104


 4246 1a0a 76060000 		.4byte	.LASF329
 4247 1a0e 01       		.byte	0x1
 4248 1a0f 91       		.byte	0x91
 4249 1a10 8C000000 		.4byte	0x8c
 4250 1a14 99050000 		.4byte	.LLST46
 4251 1a18 36       		.uleb128 0x36
 4252 1a19 6D636B00 		.ascii	"mck\000"
 4253 1a1d 01       		.byte	0x1
 4254 1a1e 91       		.byte	0x91
 4255 1a1f A7000000 		.4byte	0xa7
 4256 1a23 BA050000 		.4byte	.LLST47
 4257 1a27 37       		.uleb128 0x37
 4258 1a28 64090000 		.4byte	.LASF333
 4259 1a2c 01       		.byte	0x1
 4260 1a2d 93       		.byte	0x93
 4261 1a2e 8C000000 		.4byte	0x8c
 4262 1a32 37       		.uleb128 0x37
 4263 1a33 44100000 		.4byte	.LASF346
 4264 1a37 01       		.byte	0x1
 4265 1a38 94       		.byte	0x94
 4266 1a39 8C000000 		.4byte	0x8c
 4267 1a3d 35       		.uleb128 0x35
 4268 1a3e 5E1C0000 		.4byte	0x1c5e
 4269 1a42 12000000 		.4byte	.LBB142
 4270 1a46 68010000 		.4byte	.Ldebug_ranges0+0x168
 4271 1a4a 01       		.byte	0x1
 4272 1a4b 9F       		.byte	0x9f
 4273 1a4c 721A0000 		.4byte	0x1a72
 4274 1a50 2C       		.uleb128 0x2c
 4275 1a51 7B1C0000 		.4byte	0x1c7b
 4276 1a55 4A060000 		.4byte	.LLST48
 4277 1a59 2C       		.uleb128 0x2c
 4278 1a5a 6F1C0000 		.4byte	0x1c6f
 4279 1a5e CF060000 		.4byte	.LLST49
 4280 1a62 38       		.uleb128 0x38
 4281 1a63 68010000 		.4byte	.Ldebug_ranges0+0x168
 4282 1a67 39       		.uleb128 0x39
 4283 1a68 871C0000 		.4byte	0x1c87
 4284 1a6c 03070000 		.4byte	.LLST50
 4285 1a70 00       		.byte	0
 4286 1a71 00       		.byte	0
 4287 1a72 35       		.uleb128 0x35
 4288 1a73 DA1B0000 		.4byte	0x1bda
 4289 1a77 24000000 		.4byte	.LBB150
 4290 1a7b A8010000 		.4byte	.Ldebug_ranges0+0x1a8
 4291 1a7f 01       		.byte	0x1
 4292 1a80 A5       		.byte	0xa5
 4293 1a81 A61B0000 		.4byte	0x1ba6
 4294 1a85 2C       		.uleb128 0x2c
 4295 1a86 001C0000 		.4byte	0x1c00
 4296 1a8a 16070000 		.4byte	.LLST51
 4297 1a8e 2C       		.uleb128 0x2c
 4298 1a8f F51B0000 		.4byte	0x1bf5
 4299 1a93 42070000 		.4byte	.LLST52
 4300 1a97 2C       		.uleb128 0x2c
 4301 1a98 EA1B0000 		.4byte	0x1bea
 4302 1a9c 6B070000 		.4byte	.LLST53
ARM GAS  /tmp/ccPmdm0I.s 			page 105


 4303 1aa0 38       		.uleb128 0x38
 4304 1aa1 A8010000 		.4byte	.Ldebug_ranges0+0x1a8
 4305 1aa5 3A       		.uleb128 0x3a
 4306 1aa6 0B1C0000 		.4byte	0x1c0b
 4307 1aaa 02       		.uleb128 0x2
 4308 1aab 91       		.byte	0x91
 4309 1aac 64       		.sleb128 -28
 4310 1aad 39       		.uleb128 0x39
 4311 1aae 161C0000 		.4byte	0x1c16
 4312 1ab2 9F070000 		.4byte	.LLST54
 4313 1ab6 39       		.uleb128 0x39
 4314 1ab7 211C0000 		.4byte	0x1c21
 4315 1abb E1070000 		.4byte	.LLST55
 4316 1abf 39       		.uleb128 0x39
 4317 1ac0 2C1C0000 		.4byte	0x1c2c
 4318 1ac4 19080000 		.4byte	.LLST56
 4319 1ac8 3B       		.uleb128 0x3b
 4320 1ac9 E01C0000 		.4byte	0x1ce0
 4321 1acd 40000000 		.4byte	.LBB152
 4322 1ad1 08000000 		.4byte	.LBE152-.LBB152
 4323 1ad5 01       		.byte	0x1
 4324 1ad6 66       		.byte	0x66
 4325 1ad7 EE1A0000 		.4byte	0x1aee
 4326 1adb 2C       		.uleb128 0x2c
 4327 1adc F91C0000 		.4byte	0x1cf9
 4328 1ae0 67080000 		.4byte	.LLST57
 4329 1ae4 2C       		.uleb128 0x2c
 4330 1ae5 ED1C0000 		.4byte	0x1ced
 4331 1ae9 7B080000 		.4byte	.LLST58
 4332 1aed 00       		.byte	0
 4333 1aee 35       		.uleb128 0x35
 4334 1aef E01C0000 		.4byte	0x1ce0
 4335 1af3 76000000 		.4byte	.LBB154
 4336 1af7 E0010000 		.4byte	.Ldebug_ranges0+0x1e0
 4337 1afb 01       		.byte	0x1
 4338 1afc 78       		.byte	0x78
 4339 1afd 141B0000 		.4byte	0x1b14
 4340 1b01 2C       		.uleb128 0x2c
 4341 1b02 F91C0000 		.4byte	0x1cf9
 4342 1b06 8E080000 		.4byte	.LLST59
 4343 1b0a 2C       		.uleb128 0x2c
 4344 1b0b ED1C0000 		.4byte	0x1ced
 4345 1b0f BA080000 		.4byte	.LLST60
 4346 1b13 00       		.byte	0
 4347 1b14 2D       		.uleb128 0x2d
 4348 1b15 4C000000 		.4byte	.LVL81
 4349 1b19 5E1D0000 		.4byte	0x1d5e
 4350 1b1d 391B0000 		.4byte	0x1b39
 4351 1b21 2E       		.uleb128 0x2e
 4352 1b22 01       		.uleb128 0x1
 4353 1b23 50       		.byte	0x50
 4354 1b24 02       		.uleb128 0x2
 4355 1b25 76       		.byte	0x76
 4356 1b26 00       		.sleb128 0
 4357 1b27 2E       		.uleb128 0x2e
 4358 1b28 01       		.uleb128 0x1
 4359 1b29 51       		.byte	0x51
ARM GAS  /tmp/ccPmdm0I.s 			page 106


 4360 1b2a 02       		.uleb128 0x2
 4361 1b2b 78       		.byte	0x78
 4362 1b2c 00       		.sleb128 0
 4363 1b2d 2E       		.uleb128 0x2e
 4364 1b2e 01       		.uleb128 0x1
 4365 1b2f 52       		.byte	0x52
 4366 1b30 01       		.uleb128 0x1
 4367 1b31 32       		.byte	0x32
 4368 1b32 2E       		.uleb128 0x2e
 4369 1b33 01       		.uleb128 0x1
 4370 1b34 53       		.byte	0x53
 4371 1b35 02       		.uleb128 0x2
 4372 1b36 77       		.byte	0x77
 4373 1b37 00       		.sleb128 0
 4374 1b38 00       		.byte	0
 4375 1b39 2D       		.uleb128 0x2d
 4376 1b3a 68000000 		.4byte	.LVL85
 4377 1b3e 5E1D0000 		.4byte	0x1d5e
 4378 1b42 5E1B0000 		.4byte	0x1b5e
 4379 1b46 2E       		.uleb128 0x2e
 4380 1b47 01       		.uleb128 0x1
 4381 1b48 50       		.byte	0x50
 4382 1b49 02       		.uleb128 0x2
 4383 1b4a 76       		.byte	0x76
 4384 1b4b 00       		.sleb128 0
 4385 1b4c 2E       		.uleb128 0x2e
 4386 1b4d 01       		.uleb128 0x1
 4387 1b4e 51       		.byte	0x51
 4388 1b4f 02       		.uleb128 0x2
 4389 1b50 74       		.byte	0x74
 4390 1b51 00       		.sleb128 0
 4391 1b52 2E       		.uleb128 0x2e
 4392 1b53 01       		.uleb128 0x1
 4393 1b54 52       		.byte	0x52
 4394 1b55 01       		.uleb128 0x1
 4395 1b56 32       		.byte	0x32
 4396 1b57 2E       		.uleb128 0x2e
 4397 1b58 01       		.uleb128 0x1
 4398 1b59 53       		.byte	0x53
 4399 1b5a 02       		.uleb128 0x2
 4400 1b5b 77       		.byte	0x77
 4401 1b5c 00       		.sleb128 0
 4402 1b5d 00       		.byte	0
 4403 1b5e 2D       		.uleb128 0x2d
 4404 1b5f B2000000 		.4byte	.LVL94
 4405 1b63 5E1D0000 		.4byte	0x1d5e
 4406 1b67 831B0000 		.4byte	0x1b83
 4407 1b6b 2E       		.uleb128 0x2e
 4408 1b6c 01       		.uleb128 0x1
 4409 1b6d 50       		.byte	0x50
 4410 1b6e 02       		.uleb128 0x2
 4411 1b6f 76       		.byte	0x76
 4412 1b70 00       		.sleb128 0
 4413 1b71 2E       		.uleb128 0x2e
 4414 1b72 01       		.uleb128 0x1
 4415 1b73 51       		.byte	0x51
 4416 1b74 02       		.uleb128 0x2
ARM GAS  /tmp/ccPmdm0I.s 			page 107


 4417 1b75 74       		.byte	0x74
 4418 1b76 00       		.sleb128 0
 4419 1b77 2E       		.uleb128 0x2e
 4420 1b78 01       		.uleb128 0x1
 4421 1b79 52       		.byte	0x52
 4422 1b7a 01       		.uleb128 0x1
 4423 1b7b 31       		.byte	0x31
 4424 1b7c 2E       		.uleb128 0x2e
 4425 1b7d 01       		.uleb128 0x1
 4426 1b7e 53       		.byte	0x53
 4427 1b7f 02       		.uleb128 0x2
 4428 1b80 77       		.byte	0x77
 4429 1b81 00       		.sleb128 0
 4430 1b82 00       		.byte	0
 4431 1b83 2F       		.uleb128 0x2f
 4432 1b84 E6000000 		.4byte	.LVL100
 4433 1b88 5E1D0000 		.4byte	0x1d5e
 4434 1b8c 2E       		.uleb128 0x2e
 4435 1b8d 01       		.uleb128 0x1
 4436 1b8e 50       		.byte	0x50
 4437 1b8f 02       		.uleb128 0x2
 4438 1b90 76       		.byte	0x76
 4439 1b91 00       		.sleb128 0
 4440 1b92 2E       		.uleb128 0x2e
 4441 1b93 01       		.uleb128 0x1
 4442 1b94 51       		.byte	0x51
 4443 1b95 02       		.uleb128 0x2
 4444 1b96 78       		.byte	0x78
 4445 1b97 00       		.sleb128 0
 4446 1b98 2E       		.uleb128 0x2e
 4447 1b99 01       		.uleb128 0x1
 4448 1b9a 52       		.byte	0x52
 4449 1b9b 01       		.uleb128 0x1
 4450 1b9c 31       		.byte	0x31
 4451 1b9d 2E       		.uleb128 0x2e
 4452 1b9e 01       		.uleb128 0x1
 4453 1b9f 53       		.byte	0x53
 4454 1ba0 02       		.uleb128 0x2
 4455 1ba1 77       		.byte	0x77
 4456 1ba2 00       		.sleb128 0
 4457 1ba3 00       		.byte	0
 4458 1ba4 00       		.byte	0
 4459 1ba5 00       		.byte	0
 4460 1ba6 2D       		.uleb128 0x2d
 4461 1ba7 12000000 		.4byte	.LVL76
 4462 1bab 45140000 		.4byte	0x1445
 4463 1baf C31B0000 		.4byte	0x1bc3
 4464 1bb3 2E       		.uleb128 0x2e
 4465 1bb4 01       		.uleb128 0x1
 4466 1bb5 50       		.byte	0x50
 4467 1bb6 05       		.uleb128 0x5
 4468 1bb7 0C       		.byte	0xc
 4469 1bb8 00000540 		.4byte	0x40050000
 4470 1bbc 2E       		.uleb128 0x2e
 4471 1bbd 01       		.uleb128 0x1
 4472 1bbe 51       		.byte	0x51
 4473 1bbf 02       		.uleb128 0x2
ARM GAS  /tmp/ccPmdm0I.s 			page 108


 4474 1bc0 78       		.byte	0x78
 4475 1bc1 00       		.sleb128 0
 4476 1bc2 00       		.byte	0
 4477 1bc3 2F       		.uleb128 0x2f
 4478 1bc4 BE000000 		.4byte	.LVL95
 4479 1bc8 45140000 		.4byte	0x1445
 4480 1bcc 2E       		.uleb128 0x2e
 4481 1bcd 01       		.uleb128 0x1
 4482 1bce 50       		.byte	0x50
 4483 1bcf 02       		.uleb128 0x2
 4484 1bd0 76       		.byte	0x76
 4485 1bd1 00       		.sleb128 0
 4486 1bd2 2E       		.uleb128 0x2e
 4487 1bd3 01       		.uleb128 0x1
 4488 1bd4 51       		.byte	0x51
 4489 1bd5 02       		.uleb128 0x2
 4490 1bd6 78       		.byte	0x78
 4491 1bd7 00       		.sleb128 0
 4492 1bd8 00       		.byte	0
 4493 1bd9 00       		.byte	0
 4494 1bda 3C       		.uleb128 0x3c
 4495 1bdb DD0D0000 		.4byte	.LASF350
 4496 1bdf 01       		.byte	0x1
 4497 1be0 5E       		.byte	0x5e
 4498 1be1 8C000000 		.4byte	0x8c
 4499 1be5 01       		.byte	0x1
 4500 1be6 381C0000 		.4byte	0x1c38
 4501 1bea 3D       		.uleb128 0x3d
 4502 1beb E8050000 		.4byte	.LASF328
 4503 1bef 01       		.byte	0x1
 4504 1bf0 5E       		.byte	0x5e
 4505 1bf1 47150000 		.4byte	0x1547
 4506 1bf5 3D       		.uleb128 0x3d
 4507 1bf6 76060000 		.4byte	.LASF329
 4508 1bfa 01       		.byte	0x1
 4509 1bfb 5E       		.byte	0x5e
 4510 1bfc 8C000000 		.4byte	0x8c
 4511 1c00 3D       		.uleb128 0x3d
 4512 1c01 7B030000 		.4byte	.LASF347
 4513 1c05 01       		.byte	0x1
 4514 1c06 5F       		.byte	0x5f
 4515 1c07 8C000000 		.4byte	0x8c
 4516 1c0b 37       		.uleb128 0x37
 4517 1c0c FE010000 		.4byte	.LASF336
 4518 1c10 01       		.byte	0x1
 4519 1c11 61       		.byte	0x61
 4520 1c12 A7000000 		.4byte	0xa7
 4521 1c16 37       		.uleb128 0x37
 4522 1c17 64090000 		.4byte	.LASF333
 4523 1c1b 01       		.byte	0x1
 4524 1c1c 62       		.byte	0x62
 4525 1c1d 8C000000 		.4byte	0x8c
 4526 1c21 37       		.uleb128 0x37
 4527 1c22 C60E0000 		.4byte	.LASF348
 4528 1c26 01       		.byte	0x1
 4529 1c27 63       		.byte	0x63
 4530 1c28 8C000000 		.4byte	0x8c
ARM GAS  /tmp/ccPmdm0I.s 			page 109


 4531 1c2c 37       		.uleb128 0x37
 4532 1c2d 25000000 		.4byte	.LASF331
 4533 1c31 01       		.byte	0x1
 4534 1c32 64       		.byte	0x64
 4535 1c33 8C000000 		.4byte	0x8c
 4536 1c37 00       		.byte	0
 4537 1c38 3E       		.uleb128 0x3e
 4538 1c39 90050000 		.4byte	.LASF354
 4539 1c3d 02       		.byte	0x2
 4540 1c3e F903     		.2byte	0x3f9
 4541 1c40 03       		.byte	0x3
 4542 1c41 5E1C0000 		.4byte	0x1c5e
 4543 1c45 3F       		.uleb128 0x3f
 4544 1c46 E8050000 		.4byte	.LASF328
 4545 1c4a 02       		.byte	0x2
 4546 1c4b F903     		.2byte	0x3f9
 4547 1c4d 47150000 		.4byte	0x1547
 4548 1c51 3F       		.uleb128 0x3f
 4549 1c52 5F020000 		.4byte	.LASF349
 4550 1c56 02       		.byte	0x2
 4551 1c57 F903     		.2byte	0x3f9
 4552 1c59 28140000 		.4byte	0x1428
 4553 1c5d 00       		.byte	0
 4554 1c5e 40       		.uleb128 0x40
 4555 1c5f 5A0F0000 		.4byte	.LASF351
 4556 1c63 02       		.byte	0x2
 4557 1c64 3D02     		.2byte	0x23d
 4558 1c66 8C000000 		.4byte	0x8c
 4559 1c6a 03       		.byte	0x3
 4560 1c6b 941C0000 		.4byte	0x1c94
 4561 1c6f 3F       		.uleb128 0x3f
 4562 1c70 E8050000 		.4byte	.LASF328
 4563 1c74 02       		.byte	0x2
 4564 1c75 3D02     		.2byte	0x23d
 4565 1c77 47150000 		.4byte	0x1547
 4566 1c7b 3F       		.uleb128 0x3f
 4567 1c7c 7C050000 		.4byte	.LASF352
 4568 1c80 02       		.byte	0x2
 4569 1c81 3D02     		.2byte	0x23d
 4570 1c83 A7000000 		.4byte	0xa7
 4571 1c87 41       		.uleb128 0x41
 4572 1c88 560A0000 		.4byte	.LASF353
 4573 1c8c 02       		.byte	0x2
 4574 1c8d 3F02     		.2byte	0x23f
 4575 1c8f A7000000 		.4byte	0xa7
 4576 1c93 00       		.byte	0
 4577 1c94 3E       		.uleb128 0x3e
 4578 1c95 BB0C0000 		.4byte	.LASF355
 4579 1c99 02       		.byte	0x2
 4580 1c9a E101     		.2byte	0x1e1
 4581 1c9c 03       		.byte	0x3
 4582 1c9d BA1C0000 		.4byte	0x1cba
 4583 1ca1 3F       		.uleb128 0x3f
 4584 1ca2 E8050000 		.4byte	.LASF328
 4585 1ca6 02       		.byte	0x2
 4586 1ca7 E101     		.2byte	0x1e1
 4587 1ca9 47150000 		.4byte	0x1547
ARM GAS  /tmp/ccPmdm0I.s 			page 110


 4588 1cad 3F       		.uleb128 0x3f
 4589 1cae 2C060000 		.4byte	.LASF356
 4590 1cb2 02       		.byte	0x2
 4591 1cb3 E101     		.2byte	0x1e1
 4592 1cb5 8C000000 		.4byte	0x8c
 4593 1cb9 00       		.byte	0
 4594 1cba 3E       		.uleb128 0x3e
 4595 1cbb 2D100000 		.4byte	.LASF357
 4596 1cbf 02       		.byte	0x2
 4597 1cc0 D201     		.2byte	0x1d2
 4598 1cc2 03       		.byte	0x3
 4599 1cc3 E01C0000 		.4byte	0x1ce0
 4600 1cc7 3F       		.uleb128 0x3f
 4601 1cc8 E8050000 		.4byte	.LASF328
 4602 1ccc 02       		.byte	0x2
 4603 1ccd D201     		.2byte	0x1d2
 4604 1ccf 47150000 		.4byte	0x1547
 4605 1cd3 3F       		.uleb128 0x3f
 4606 1cd4 65000000 		.4byte	.LASF339
 4607 1cd8 02       		.byte	0x2
 4608 1cd9 D201     		.2byte	0x1d2
 4609 1cdb 8C000000 		.4byte	0x8c
 4610 1cdf 00       		.byte	0
 4611 1ce0 3E       		.uleb128 0x3e
 4612 1ce1 2D0B0000 		.4byte	.LASF358
 4613 1ce5 02       		.byte	0x2
 4614 1ce6 1E01     		.2byte	0x11e
 4615 1ce8 03       		.byte	0x3
 4616 1ce9 061D0000 		.4byte	0x1d06
 4617 1ced 3F       		.uleb128 0x3f
 4618 1cee E8050000 		.4byte	.LASF328
 4619 1cf2 02       		.byte	0x2
 4620 1cf3 1E01     		.2byte	0x11e
 4621 1cf5 47150000 		.4byte	0x1547
 4622 1cf9 3F       		.uleb128 0x3f
 4623 1cfa 2C060000 		.4byte	.LASF356
 4624 1cfe 02       		.byte	0x2
 4625 1cff 1E01     		.2byte	0x11e
 4626 1d01 8C000000 		.4byte	0x8c
 4627 1d05 00       		.byte	0
 4628 1d06 3E       		.uleb128 0x3e
 4629 1d07 AA0E0000 		.4byte	.LASF359
 4630 1d0b 02       		.byte	0x2
 4631 1d0c 0F01     		.2byte	0x10f
 4632 1d0e 03       		.byte	0x3
 4633 1d0f 2C1D0000 		.4byte	0x1d2c
 4634 1d13 3F       		.uleb128 0x3f
 4635 1d14 E8050000 		.4byte	.LASF328
 4636 1d18 02       		.byte	0x2
 4637 1d19 0F01     		.2byte	0x10f
 4638 1d1b 47150000 		.4byte	0x1547
 4639 1d1f 3F       		.uleb128 0x3f
 4640 1d20 2C060000 		.4byte	.LASF356
 4641 1d24 02       		.byte	0x2
 4642 1d25 0F01     		.2byte	0x10f
 4643 1d27 8C000000 		.4byte	0x8c
 4644 1d2b 00       		.byte	0
ARM GAS  /tmp/ccPmdm0I.s 			page 111


 4645 1d2c 3E       		.uleb128 0x3e
 4646 1d2d 98020000 		.4byte	.LASF360
 4647 1d31 02       		.byte	0x2
 4648 1d32 0001     		.2byte	0x100
 4649 1d34 03       		.byte	0x3
 4650 1d35 521D0000 		.4byte	0x1d52
 4651 1d39 3F       		.uleb128 0x3f
 4652 1d3a E8050000 		.4byte	.LASF328
 4653 1d3e 02       		.byte	0x2
 4654 1d3f 0001     		.2byte	0x100
 4655 1d41 47150000 		.4byte	0x1547
 4656 1d45 3F       		.uleb128 0x3f
 4657 1d46 2C060000 		.4byte	.LASF356
 4658 1d4a 02       		.byte	0x2
 4659 1d4b 0001     		.2byte	0x100
 4660 1d4d 8C000000 		.4byte	0x8c
 4661 1d51 00       		.byte	0
 4662 1d52 42       		.uleb128 0x42
 4663 1d53 67060000 		.4byte	.LASF361
 4664 1d57 67060000 		.4byte	.LASF361
 4665 1d5b 02       		.byte	0x2
 4666 1d5c F904     		.2byte	0x4f9
 4667 1d5e 42       		.uleb128 0x42
 4668 1d5f 5F080000 		.4byte	.LASF362
 4669 1d63 5F080000 		.4byte	.LASF362
 4670 1d67 02       		.byte	0x2
 4671 1d68 F704     		.2byte	0x4f7
 4672 1d6a 00       		.byte	0
 4673              		.section	.debug_abbrev,"",%progbits
 4674              	.Ldebug_abbrev0:
 4675 0000 01       		.uleb128 0x1
 4676 0001 11       		.uleb128 0x11
 4677 0002 01       		.byte	0x1
 4678 0003 25       		.uleb128 0x25
 4679 0004 0E       		.uleb128 0xe
 4680 0005 13       		.uleb128 0x13
 4681 0006 0B       		.uleb128 0xb
 4682 0007 03       		.uleb128 0x3
 4683 0008 0E       		.uleb128 0xe
 4684 0009 1B       		.uleb128 0x1b
 4685 000a 0E       		.uleb128 0xe
 4686 000b 55       		.uleb128 0x55
 4687 000c 17       		.uleb128 0x17
 4688 000d 11       		.uleb128 0x11
 4689 000e 01       		.uleb128 0x1
 4690 000f 10       		.uleb128 0x10
 4691 0010 17       		.uleb128 0x17
 4692 0011 00       		.byte	0
 4693 0012 00       		.byte	0
 4694 0013 02       		.uleb128 0x2
 4695 0014 24       		.uleb128 0x24
 4696 0015 00       		.byte	0
 4697 0016 0B       		.uleb128 0xb
 4698 0017 0B       		.uleb128 0xb
 4699 0018 3E       		.uleb128 0x3e
 4700 0019 0B       		.uleb128 0xb
 4701 001a 03       		.uleb128 0x3
ARM GAS  /tmp/ccPmdm0I.s 			page 112


 4702 001b 08       		.uleb128 0x8
 4703 001c 00       		.byte	0
 4704 001d 00       		.byte	0
 4705 001e 03       		.uleb128 0x3
 4706 001f 24       		.uleb128 0x24
 4707 0020 00       		.byte	0
 4708 0021 0B       		.uleb128 0xb
 4709 0022 0B       		.uleb128 0xb
 4710 0023 3E       		.uleb128 0x3e
 4711 0024 0B       		.uleb128 0xb
 4712 0025 03       		.uleb128 0x3
 4713 0026 0E       		.uleb128 0xe
 4714 0027 00       		.byte	0
 4715 0028 00       		.byte	0
 4716 0029 04       		.uleb128 0x4
 4717 002a 16       		.uleb128 0x16
 4718 002b 00       		.byte	0
 4719 002c 03       		.uleb128 0x3
 4720 002d 0E       		.uleb128 0xe
 4721 002e 3A       		.uleb128 0x3a
 4722 002f 0B       		.uleb128 0xb
 4723 0030 3B       		.uleb128 0x3b
 4724 0031 0B       		.uleb128 0xb
 4725 0032 49       		.uleb128 0x49
 4726 0033 13       		.uleb128 0x13
 4727 0034 00       		.byte	0
 4728 0035 00       		.byte	0
 4729 0036 05       		.uleb128 0x5
 4730 0037 35       		.uleb128 0x35
 4731 0038 00       		.byte	0
 4732 0039 49       		.uleb128 0x49
 4733 003a 13       		.uleb128 0x13
 4734 003b 00       		.byte	0
 4735 003c 00       		.byte	0
 4736 003d 06       		.uleb128 0x6
 4737 003e 26       		.uleb128 0x26
 4738 003f 00       		.byte	0
 4739 0040 49       		.uleb128 0x49
 4740 0041 13       		.uleb128 0x13
 4741 0042 00       		.byte	0
 4742 0043 00       		.byte	0
 4743 0044 07       		.uleb128 0x7
 4744 0045 0F       		.uleb128 0xf
 4745 0046 00       		.byte	0
 4746 0047 0B       		.uleb128 0xb
 4747 0048 0B       		.uleb128 0xb
 4748 0049 00       		.byte	0
 4749 004a 00       		.byte	0
 4750 004b 08       		.uleb128 0x8
 4751 004c 01       		.uleb128 0x1
 4752 004d 01       		.byte	0x1
 4753 004e 49       		.uleb128 0x49
 4754 004f 13       		.uleb128 0x13
 4755 0050 01       		.uleb128 0x1
 4756 0051 13       		.uleb128 0x13
 4757 0052 00       		.byte	0
 4758 0053 00       		.byte	0
ARM GAS  /tmp/ccPmdm0I.s 			page 113


 4759 0054 09       		.uleb128 0x9
 4760 0055 21       		.uleb128 0x21
 4761 0056 00       		.byte	0
 4762 0057 49       		.uleb128 0x49
 4763 0058 13       		.uleb128 0x13
 4764 0059 2F       		.uleb128 0x2f
 4765 005a 0B       		.uleb128 0xb
 4766 005b 00       		.byte	0
 4767 005c 00       		.byte	0
 4768 005d 0A       		.uleb128 0xa
 4769 005e 34       		.uleb128 0x34
 4770 005f 00       		.byte	0
 4771 0060 03       		.uleb128 0x3
 4772 0061 0E       		.uleb128 0xe
 4773 0062 3A       		.uleb128 0x3a
 4774 0063 0B       		.uleb128 0xb
 4775 0064 3B       		.uleb128 0x3b
 4776 0065 05       		.uleb128 0x5
 4777 0066 49       		.uleb128 0x49
 4778 0067 13       		.uleb128 0x13
 4779 0068 3F       		.uleb128 0x3f
 4780 0069 19       		.uleb128 0x19
 4781 006a 3C       		.uleb128 0x3c
 4782 006b 19       		.uleb128 0x19
 4783 006c 00       		.byte	0
 4784 006d 00       		.byte	0
 4785 006e 0B       		.uleb128 0xb
 4786 006f 34       		.uleb128 0x34
 4787 0070 00       		.byte	0
 4788 0071 03       		.uleb128 0x3
 4789 0072 0E       		.uleb128 0xe
 4790 0073 3A       		.uleb128 0x3a
 4791 0074 0B       		.uleb128 0xb
 4792 0075 3B       		.uleb128 0x3b
 4793 0076 0B       		.uleb128 0xb
 4794 0077 49       		.uleb128 0x49
 4795 0078 13       		.uleb128 0x13
 4796 0079 3F       		.uleb128 0x3f
 4797 007a 19       		.uleb128 0x19
 4798 007b 3C       		.uleb128 0x3c
 4799 007c 19       		.uleb128 0x19
 4800 007d 00       		.byte	0
 4801 007e 00       		.byte	0
 4802 007f 0C       		.uleb128 0xc
 4803 0080 13       		.uleb128 0x13
 4804 0081 01       		.byte	0x1
 4805 0082 0B       		.uleb128 0xb
 4806 0083 0B       		.uleb128 0xb
 4807 0084 3A       		.uleb128 0x3a
 4808 0085 0B       		.uleb128 0xb
 4809 0086 3B       		.uleb128 0x3b
 4810 0087 0B       		.uleb128 0xb
 4811 0088 01       		.uleb128 0x1
 4812 0089 13       		.uleb128 0x13
 4813 008a 00       		.byte	0
 4814 008b 00       		.byte	0
 4815 008c 0D       		.uleb128 0xd
ARM GAS  /tmp/ccPmdm0I.s 			page 114


 4816 008d 0D       		.uleb128 0xd
 4817 008e 00       		.byte	0
 4818 008f 03       		.uleb128 0x3
 4819 0090 0E       		.uleb128 0xe
 4820 0091 3A       		.uleb128 0x3a
 4821 0092 0B       		.uleb128 0xb
 4822 0093 3B       		.uleb128 0x3b
 4823 0094 0B       		.uleb128 0xb
 4824 0095 49       		.uleb128 0x49
 4825 0096 13       		.uleb128 0x13
 4826 0097 38       		.uleb128 0x38
 4827 0098 0B       		.uleb128 0xb
 4828 0099 00       		.byte	0
 4829 009a 00       		.byte	0
 4830 009b 0E       		.uleb128 0xe
 4831 009c 13       		.uleb128 0x13
 4832 009d 01       		.byte	0x1
 4833 009e 0B       		.uleb128 0xb
 4834 009f 05       		.uleb128 0x5
 4835 00a0 3A       		.uleb128 0x3a
 4836 00a1 0B       		.uleb128 0xb
 4837 00a2 3B       		.uleb128 0x3b
 4838 00a3 0B       		.uleb128 0xb
 4839 00a4 01       		.uleb128 0x1
 4840 00a5 13       		.uleb128 0x13
 4841 00a6 00       		.byte	0
 4842 00a7 00       		.byte	0
 4843 00a8 0F       		.uleb128 0xf
 4844 00a9 0D       		.uleb128 0xd
 4845 00aa 00       		.byte	0
 4846 00ab 03       		.uleb128 0x3
 4847 00ac 0E       		.uleb128 0xe
 4848 00ad 3A       		.uleb128 0x3a
 4849 00ae 0B       		.uleb128 0xb
 4850 00af 3B       		.uleb128 0x3b
 4851 00b0 0B       		.uleb128 0xb
 4852 00b1 49       		.uleb128 0x49
 4853 00b2 13       		.uleb128 0x13
 4854 00b3 38       		.uleb128 0x38
 4855 00b4 05       		.uleb128 0x5
 4856 00b5 00       		.byte	0
 4857 00b6 00       		.byte	0
 4858 00b7 10       		.uleb128 0x10
 4859 00b8 16       		.uleb128 0x16
 4860 00b9 00       		.byte	0
 4861 00ba 03       		.uleb128 0x3
 4862 00bb 0E       		.uleb128 0xe
 4863 00bc 3A       		.uleb128 0x3a
 4864 00bd 0B       		.uleb128 0xb
 4865 00be 3B       		.uleb128 0x3b
 4866 00bf 05       		.uleb128 0x5
 4867 00c0 49       		.uleb128 0x49
 4868 00c1 13       		.uleb128 0x13
 4869 00c2 00       		.byte	0
 4870 00c3 00       		.byte	0
 4871 00c4 11       		.uleb128 0x11
 4872 00c5 17       		.uleb128 0x17
ARM GAS  /tmp/ccPmdm0I.s 			page 115


 4873 00c6 01       		.byte	0x1
 4874 00c7 0B       		.uleb128 0xb
 4875 00c8 0B       		.uleb128 0xb
 4876 00c9 3A       		.uleb128 0x3a
 4877 00ca 0B       		.uleb128 0xb
 4878 00cb 3B       		.uleb128 0x3b
 4879 00cc 0B       		.uleb128 0xb
 4880 00cd 01       		.uleb128 0x1
 4881 00ce 13       		.uleb128 0x13
 4882 00cf 00       		.byte	0
 4883 00d0 00       		.byte	0
 4884 00d1 12       		.uleb128 0x12
 4885 00d2 0D       		.uleb128 0xd
 4886 00d3 00       		.byte	0
 4887 00d4 03       		.uleb128 0x3
 4888 00d5 0E       		.uleb128 0xe
 4889 00d6 3A       		.uleb128 0x3a
 4890 00d7 0B       		.uleb128 0xb
 4891 00d8 3B       		.uleb128 0x3b
 4892 00d9 0B       		.uleb128 0xb
 4893 00da 49       		.uleb128 0x49
 4894 00db 13       		.uleb128 0x13
 4895 00dc 00       		.byte	0
 4896 00dd 00       		.byte	0
 4897 00de 13       		.uleb128 0x13
 4898 00df 13       		.uleb128 0x13
 4899 00e0 01       		.byte	0x1
 4900 00e1 03       		.uleb128 0x3
 4901 00e2 0E       		.uleb128 0xe
 4902 00e3 0B       		.uleb128 0xb
 4903 00e4 0B       		.uleb128 0xb
 4904 00e5 3A       		.uleb128 0x3a
 4905 00e6 0B       		.uleb128 0xb
 4906 00e7 3B       		.uleb128 0x3b
 4907 00e8 0B       		.uleb128 0xb
 4908 00e9 01       		.uleb128 0x1
 4909 00ea 13       		.uleb128 0x13
 4910 00eb 00       		.byte	0
 4911 00ec 00       		.byte	0
 4912 00ed 14       		.uleb128 0x14
 4913 00ee 0D       		.uleb128 0xd
 4914 00ef 00       		.byte	0
 4915 00f0 03       		.uleb128 0x3
 4916 00f1 08       		.uleb128 0x8
 4917 00f2 3A       		.uleb128 0x3a
 4918 00f3 0B       		.uleb128 0xb
 4919 00f4 3B       		.uleb128 0x3b
 4920 00f5 0B       		.uleb128 0xb
 4921 00f6 49       		.uleb128 0x49
 4922 00f7 13       		.uleb128 0x13
 4923 00f8 38       		.uleb128 0x38
 4924 00f9 0B       		.uleb128 0xb
 4925 00fa 00       		.byte	0
 4926 00fb 00       		.byte	0
 4927 00fc 15       		.uleb128 0x15
 4928 00fd 0F       		.uleb128 0xf
 4929 00fe 00       		.byte	0
ARM GAS  /tmp/ccPmdm0I.s 			page 116


 4930 00ff 0B       		.uleb128 0xb
 4931 0100 0B       		.uleb128 0xb
 4932 0101 49       		.uleb128 0x49
 4933 0102 13       		.uleb128 0x13
 4934 0103 00       		.byte	0
 4935 0104 00       		.byte	0
 4936 0105 16       		.uleb128 0x16
 4937 0106 13       		.uleb128 0x13
 4938 0107 01       		.byte	0x1
 4939 0108 03       		.uleb128 0x3
 4940 0109 0E       		.uleb128 0xe
 4941 010a 0B       		.uleb128 0xb
 4942 010b 05       		.uleb128 0x5
 4943 010c 3A       		.uleb128 0x3a
 4944 010d 0B       		.uleb128 0xb
 4945 010e 3B       		.uleb128 0x3b
 4946 010f 0B       		.uleb128 0xb
 4947 0110 01       		.uleb128 0x1
 4948 0111 13       		.uleb128 0x13
 4949 0112 00       		.byte	0
 4950 0113 00       		.byte	0
 4951 0114 17       		.uleb128 0x17
 4952 0115 15       		.uleb128 0x15
 4953 0116 00       		.byte	0
 4954 0117 27       		.uleb128 0x27
 4955 0118 19       		.uleb128 0x19
 4956 0119 00       		.byte	0
 4957 011a 00       		.byte	0
 4958 011b 18       		.uleb128 0x18
 4959 011c 15       		.uleb128 0x15
 4960 011d 01       		.byte	0x1
 4961 011e 27       		.uleb128 0x27
 4962 011f 19       		.uleb128 0x19
 4963 0120 49       		.uleb128 0x49
 4964 0121 13       		.uleb128 0x13
 4965 0122 01       		.uleb128 0x1
 4966 0123 13       		.uleb128 0x13
 4967 0124 00       		.byte	0
 4968 0125 00       		.byte	0
 4969 0126 19       		.uleb128 0x19
 4970 0127 05       		.uleb128 0x5
 4971 0128 00       		.byte	0
 4972 0129 49       		.uleb128 0x49
 4973 012a 13       		.uleb128 0x13
 4974 012b 00       		.byte	0
 4975 012c 00       		.byte	0
 4976 012d 1A       		.uleb128 0x1a
 4977 012e 13       		.uleb128 0x13
 4978 012f 01       		.byte	0x1
 4979 0130 03       		.uleb128 0x3
 4980 0131 0E       		.uleb128 0xe
 4981 0132 0B       		.uleb128 0xb
 4982 0133 05       		.uleb128 0x5
 4983 0134 3A       		.uleb128 0x3a
 4984 0135 0B       		.uleb128 0xb
 4985 0136 3B       		.uleb128 0x3b
 4986 0137 05       		.uleb128 0x5
ARM GAS  /tmp/ccPmdm0I.s 			page 117


 4987 0138 01       		.uleb128 0x1
 4988 0139 13       		.uleb128 0x13
 4989 013a 00       		.byte	0
 4990 013b 00       		.byte	0
 4991 013c 1B       		.uleb128 0x1b
 4992 013d 0D       		.uleb128 0xd
 4993 013e 00       		.byte	0
 4994 013f 03       		.uleb128 0x3
 4995 0140 0E       		.uleb128 0xe
 4996 0141 3A       		.uleb128 0x3a
 4997 0142 0B       		.uleb128 0xb
 4998 0143 3B       		.uleb128 0x3b
 4999 0144 05       		.uleb128 0x5
 5000 0145 49       		.uleb128 0x49
 5001 0146 13       		.uleb128 0x13
 5002 0147 38       		.uleb128 0x38
 5003 0148 0B       		.uleb128 0xb
 5004 0149 00       		.byte	0
 5005 014a 00       		.byte	0
 5006 014b 1C       		.uleb128 0x1c
 5007 014c 0D       		.uleb128 0xd
 5008 014d 00       		.byte	0
 5009 014e 03       		.uleb128 0x3
 5010 014f 0E       		.uleb128 0xe
 5011 0150 3A       		.uleb128 0x3a
 5012 0151 0B       		.uleb128 0xb
 5013 0152 3B       		.uleb128 0x3b
 5014 0153 05       		.uleb128 0x5
 5015 0154 49       		.uleb128 0x49
 5016 0155 13       		.uleb128 0x13
 5017 0156 38       		.uleb128 0x38
 5018 0157 05       		.uleb128 0x5
 5019 0158 00       		.byte	0
 5020 0159 00       		.byte	0
 5021 015a 1D       		.uleb128 0x1d
 5022 015b 13       		.uleb128 0x13
 5023 015c 01       		.byte	0x1
 5024 015d 03       		.uleb128 0x3
 5025 015e 0E       		.uleb128 0xe
 5026 015f 0B       		.uleb128 0xb
 5027 0160 0B       		.uleb128 0xb
 5028 0161 3A       		.uleb128 0x3a
 5029 0162 0B       		.uleb128 0xb
 5030 0163 3B       		.uleb128 0x3b
 5031 0164 05       		.uleb128 0x5
 5032 0165 01       		.uleb128 0x1
 5033 0166 13       		.uleb128 0x13
 5034 0167 00       		.byte	0
 5035 0168 00       		.byte	0
 5036 0169 1E       		.uleb128 0x1e
 5037 016a 13       		.uleb128 0x13
 5038 016b 01       		.byte	0x1
 5039 016c 0B       		.uleb128 0xb
 5040 016d 0B       		.uleb128 0xb
 5041 016e 3A       		.uleb128 0x3a
 5042 016f 0B       		.uleb128 0xb
 5043 0170 3B       		.uleb128 0x3b
ARM GAS  /tmp/ccPmdm0I.s 			page 118


 5044 0171 05       		.uleb128 0x5
 5045 0172 01       		.uleb128 0x1
 5046 0173 13       		.uleb128 0x13
 5047 0174 00       		.byte	0
 5048 0175 00       		.byte	0
 5049 0176 1F       		.uleb128 0x1f
 5050 0177 17       		.uleb128 0x17
 5051 0178 01       		.byte	0x1
 5052 0179 0B       		.uleb128 0xb
 5053 017a 0B       		.uleb128 0xb
 5054 017b 3A       		.uleb128 0x3a
 5055 017c 0B       		.uleb128 0xb
 5056 017d 3B       		.uleb128 0x3b
 5057 017e 05       		.uleb128 0x5
 5058 017f 01       		.uleb128 0x1
 5059 0180 13       		.uleb128 0x13
 5060 0181 00       		.byte	0
 5061 0182 00       		.byte	0
 5062 0183 20       		.uleb128 0x20
 5063 0184 0D       		.uleb128 0xd
 5064 0185 00       		.byte	0
 5065 0186 03       		.uleb128 0x3
 5066 0187 0E       		.uleb128 0xe
 5067 0188 3A       		.uleb128 0x3a
 5068 0189 0B       		.uleb128 0xb
 5069 018a 3B       		.uleb128 0x3b
 5070 018b 05       		.uleb128 0x5
 5071 018c 49       		.uleb128 0x49
 5072 018d 13       		.uleb128 0x13
 5073 018e 00       		.byte	0
 5074 018f 00       		.byte	0
 5075 0190 21       		.uleb128 0x21
 5076 0191 15       		.uleb128 0x15
 5077 0192 01       		.byte	0x1
 5078 0193 27       		.uleb128 0x27
 5079 0194 19       		.uleb128 0x19
 5080 0195 01       		.uleb128 0x1
 5081 0196 13       		.uleb128 0x13
 5082 0197 00       		.byte	0
 5083 0198 00       		.byte	0
 5084 0199 22       		.uleb128 0x22
 5085 019a 34       		.uleb128 0x34
 5086 019b 00       		.byte	0
 5087 019c 03       		.uleb128 0x3
 5088 019d 0E       		.uleb128 0xe
 5089 019e 3A       		.uleb128 0x3a
 5090 019f 0B       		.uleb128 0xb
 5091 01a0 3B       		.uleb128 0x3b
 5092 01a1 0B       		.uleb128 0xb
 5093 01a2 49       		.uleb128 0x49
 5094 01a3 13       		.uleb128 0x13
 5095 01a4 02       		.uleb128 0x2
 5096 01a5 18       		.uleb128 0x18
 5097 01a6 00       		.byte	0
 5098 01a7 00       		.byte	0
 5099 01a8 23       		.uleb128 0x23
 5100 01a9 04       		.uleb128 0x4
ARM GAS  /tmp/ccPmdm0I.s 			page 119


 5101 01aa 01       		.byte	0x1
 5102 01ab 0B       		.uleb128 0xb
 5103 01ac 0B       		.uleb128 0xb
 5104 01ad 49       		.uleb128 0x49
 5105 01ae 13       		.uleb128 0x13
 5106 01af 3A       		.uleb128 0x3a
 5107 01b0 0B       		.uleb128 0xb
 5108 01b1 3B       		.uleb128 0x3b
 5109 01b2 0B       		.uleb128 0xb
 5110 01b3 01       		.uleb128 0x1
 5111 01b4 13       		.uleb128 0x13
 5112 01b5 00       		.byte	0
 5113 01b6 00       		.byte	0
 5114 01b7 24       		.uleb128 0x24
 5115 01b8 28       		.uleb128 0x28
 5116 01b9 00       		.byte	0
 5117 01ba 03       		.uleb128 0x3
 5118 01bb 0E       		.uleb128 0xe
 5119 01bc 1C       		.uleb128 0x1c
 5120 01bd 0B       		.uleb128 0xb
 5121 01be 00       		.byte	0
 5122 01bf 00       		.byte	0
 5123 01c0 25       		.uleb128 0x25
 5124 01c1 34       		.uleb128 0x34
 5125 01c2 00       		.byte	0
 5126 01c3 03       		.uleb128 0x3
 5127 01c4 0E       		.uleb128 0xe
 5128 01c5 3A       		.uleb128 0x3a
 5129 01c6 0B       		.uleb128 0xb
 5130 01c7 3B       		.uleb128 0x3b
 5131 01c8 05       		.uleb128 0x5
 5132 01c9 49       		.uleb128 0x49
 5133 01ca 13       		.uleb128 0x13
 5134 01cb 02       		.uleb128 0x2
 5135 01cc 18       		.uleb128 0x18
 5136 01cd 00       		.byte	0
 5137 01ce 00       		.byte	0
 5138 01cf 26       		.uleb128 0x26
 5139 01d0 2E       		.uleb128 0x2e
 5140 01d1 01       		.byte	0x1
 5141 01d2 3F       		.uleb128 0x3f
 5142 01d3 19       		.uleb128 0x19
 5143 01d4 03       		.uleb128 0x3
 5144 01d5 0E       		.uleb128 0xe
 5145 01d6 3A       		.uleb128 0x3a
 5146 01d7 0B       		.uleb128 0xb
 5147 01d8 3B       		.uleb128 0x3b
 5148 01d9 05       		.uleb128 0x5
 5149 01da 27       		.uleb128 0x27
 5150 01db 19       		.uleb128 0x19
 5151 01dc 49       		.uleb128 0x49
 5152 01dd 13       		.uleb128 0x13
 5153 01de 11       		.uleb128 0x11
 5154 01df 01       		.uleb128 0x1
 5155 01e0 12       		.uleb128 0x12
 5156 01e1 06       		.uleb128 0x6
 5157 01e2 40       		.uleb128 0x40
ARM GAS  /tmp/ccPmdm0I.s 			page 120


 5158 01e3 18       		.uleb128 0x18
 5159 01e4 9742     		.uleb128 0x2117
 5160 01e6 19       		.uleb128 0x19
 5161 01e7 01       		.uleb128 0x1
 5162 01e8 13       		.uleb128 0x13
 5163 01e9 00       		.byte	0
 5164 01ea 00       		.byte	0
 5165 01eb 27       		.uleb128 0x27
 5166 01ec 05       		.uleb128 0x5
 5167 01ed 00       		.byte	0
 5168 01ee 03       		.uleb128 0x3
 5169 01ef 0E       		.uleb128 0xe
 5170 01f0 3A       		.uleb128 0x3a
 5171 01f1 0B       		.uleb128 0xb
 5172 01f2 3B       		.uleb128 0x3b
 5173 01f3 05       		.uleb128 0x5
 5174 01f4 49       		.uleb128 0x49
 5175 01f5 13       		.uleb128 0x13
 5176 01f6 02       		.uleb128 0x2
 5177 01f7 17       		.uleb128 0x17
 5178 01f8 00       		.byte	0
 5179 01f9 00       		.byte	0
 5180 01fa 28       		.uleb128 0x28
 5181 01fb 34       		.uleb128 0x34
 5182 01fc 00       		.byte	0
 5183 01fd 03       		.uleb128 0x3
 5184 01fe 0E       		.uleb128 0xe
 5185 01ff 3A       		.uleb128 0x3a
 5186 0200 0B       		.uleb128 0xb
 5187 0201 3B       		.uleb128 0x3b
 5188 0202 05       		.uleb128 0x5
 5189 0203 49       		.uleb128 0x49
 5190 0204 13       		.uleb128 0x13
 5191 0205 02       		.uleb128 0x2
 5192 0206 17       		.uleb128 0x17
 5193 0207 00       		.byte	0
 5194 0208 00       		.byte	0
 5195 0209 29       		.uleb128 0x29
 5196 020a 34       		.uleb128 0x34
 5197 020b 00       		.byte	0
 5198 020c 03       		.uleb128 0x3
 5199 020d 0E       		.uleb128 0xe
 5200 020e 3A       		.uleb128 0x3a
 5201 020f 0B       		.uleb128 0xb
 5202 0210 3B       		.uleb128 0x3b
 5203 0211 05       		.uleb128 0x5
 5204 0212 49       		.uleb128 0x49
 5205 0213 13       		.uleb128 0x13
 5206 0214 1C       		.uleb128 0x1c
 5207 0215 0B       		.uleb128 0xb
 5208 0216 00       		.byte	0
 5209 0217 00       		.byte	0
 5210 0218 2A       		.uleb128 0x2a
 5211 0219 1D       		.uleb128 0x1d
 5212 021a 01       		.byte	0x1
 5213 021b 31       		.uleb128 0x31
 5214 021c 13       		.uleb128 0x13
ARM GAS  /tmp/ccPmdm0I.s 			page 121


 5215 021d 52       		.uleb128 0x52
 5216 021e 01       		.uleb128 0x1
 5217 021f 55       		.uleb128 0x55
 5218 0220 17       		.uleb128 0x17
 5219 0221 58       		.uleb128 0x58
 5220 0222 0B       		.uleb128 0xb
 5221 0223 59       		.uleb128 0x59
 5222 0224 05       		.uleb128 0x5
 5223 0225 01       		.uleb128 0x1
 5224 0226 13       		.uleb128 0x13
 5225 0227 00       		.byte	0
 5226 0228 00       		.byte	0
 5227 0229 2B       		.uleb128 0x2b
 5228 022a 05       		.uleb128 0x5
 5229 022b 00       		.byte	0
 5230 022c 31       		.uleb128 0x31
 5231 022d 13       		.uleb128 0x13
 5232 022e 00       		.byte	0
 5233 022f 00       		.byte	0
 5234 0230 2C       		.uleb128 0x2c
 5235 0231 05       		.uleb128 0x5
 5236 0232 00       		.byte	0
 5237 0233 31       		.uleb128 0x31
 5238 0234 13       		.uleb128 0x13
 5239 0235 02       		.uleb128 0x2
 5240 0236 17       		.uleb128 0x17
 5241 0237 00       		.byte	0
 5242 0238 00       		.byte	0
 5243 0239 2D       		.uleb128 0x2d
 5244 023a 898201   		.uleb128 0x4109
 5245 023d 01       		.byte	0x1
 5246 023e 11       		.uleb128 0x11
 5247 023f 01       		.uleb128 0x1
 5248 0240 31       		.uleb128 0x31
 5249 0241 13       		.uleb128 0x13
 5250 0242 01       		.uleb128 0x1
 5251 0243 13       		.uleb128 0x13
 5252 0244 00       		.byte	0
 5253 0245 00       		.byte	0
 5254 0246 2E       		.uleb128 0x2e
 5255 0247 8A8201   		.uleb128 0x410a
 5256 024a 00       		.byte	0
 5257 024b 02       		.uleb128 0x2
 5258 024c 18       		.uleb128 0x18
 5259 024d 9142     		.uleb128 0x2111
 5260 024f 18       		.uleb128 0x18
 5261 0250 00       		.byte	0
 5262 0251 00       		.byte	0
 5263 0252 2F       		.uleb128 0x2f
 5264 0253 898201   		.uleb128 0x4109
 5265 0256 01       		.byte	0x1
 5266 0257 11       		.uleb128 0x11
 5267 0258 01       		.uleb128 0x1
 5268 0259 31       		.uleb128 0x31
 5269 025a 13       		.uleb128 0x13
 5270 025b 00       		.byte	0
 5271 025c 00       		.byte	0
ARM GAS  /tmp/ccPmdm0I.s 			page 122


 5272 025d 30       		.uleb128 0x30
 5273 025e 34       		.uleb128 0x34
 5274 025f 00       		.byte	0
 5275 0260 03       		.uleb128 0x3
 5276 0261 0E       		.uleb128 0xe
 5277 0262 3A       		.uleb128 0x3a
 5278 0263 0B       		.uleb128 0xb
 5279 0264 3B       		.uleb128 0x3b
 5280 0265 05       		.uleb128 0x5
 5281 0266 49       		.uleb128 0x49
 5282 0267 13       		.uleb128 0x13
 5283 0268 1C       		.uleb128 0x1c
 5284 0269 05       		.uleb128 0x5
 5285 026a 00       		.byte	0
 5286 026b 00       		.byte	0
 5287 026c 31       		.uleb128 0x31
 5288 026d 1D       		.uleb128 0x1d
 5289 026e 01       		.byte	0x1
 5290 026f 31       		.uleb128 0x31
 5291 0270 13       		.uleb128 0x13
 5292 0271 11       		.uleb128 0x11
 5293 0272 01       		.uleb128 0x1
 5294 0273 12       		.uleb128 0x12
 5295 0274 06       		.uleb128 0x6
 5296 0275 58       		.uleb128 0x58
 5297 0276 0B       		.uleb128 0xb
 5298 0277 59       		.uleb128 0x59
 5299 0278 05       		.uleb128 0x5
 5300 0279 01       		.uleb128 0x1
 5301 027a 13       		.uleb128 0x13
 5302 027b 00       		.byte	0
 5303 027c 00       		.byte	0
 5304 027d 32       		.uleb128 0x32
 5305 027e 2E       		.uleb128 0x2e
 5306 027f 01       		.byte	0x1
 5307 0280 3F       		.uleb128 0x3f
 5308 0281 19       		.uleb128 0x19
 5309 0282 03       		.uleb128 0x3
 5310 0283 0E       		.uleb128 0xe
 5311 0284 3A       		.uleb128 0x3a
 5312 0285 0B       		.uleb128 0xb
 5313 0286 3B       		.uleb128 0x3b
 5314 0287 0B       		.uleb128 0xb
 5315 0288 27       		.uleb128 0x27
 5316 0289 19       		.uleb128 0x19
 5317 028a 49       		.uleb128 0x49
 5318 028b 13       		.uleb128 0x13
 5319 028c 11       		.uleb128 0x11
 5320 028d 01       		.uleb128 0x1
 5321 028e 12       		.uleb128 0x12
 5322 028f 06       		.uleb128 0x6
 5323 0290 40       		.uleb128 0x40
 5324 0291 18       		.uleb128 0x18
 5325 0292 9742     		.uleb128 0x2117
 5326 0294 19       		.uleb128 0x19
 5327 0295 01       		.uleb128 0x1
 5328 0296 13       		.uleb128 0x13
ARM GAS  /tmp/ccPmdm0I.s 			page 123


 5329 0297 00       		.byte	0
 5330 0298 00       		.byte	0
 5331 0299 33       		.uleb128 0x33
 5332 029a 05       		.uleb128 0x5
 5333 029b 00       		.byte	0
 5334 029c 03       		.uleb128 0x3
 5335 029d 0E       		.uleb128 0xe
 5336 029e 3A       		.uleb128 0x3a
 5337 029f 0B       		.uleb128 0xb
 5338 02a0 3B       		.uleb128 0x3b
 5339 02a1 0B       		.uleb128 0xb
 5340 02a2 49       		.uleb128 0x49
 5341 02a3 13       		.uleb128 0x13
 5342 02a4 02       		.uleb128 0x2
 5343 02a5 17       		.uleb128 0x17
 5344 02a6 00       		.byte	0
 5345 02a7 00       		.byte	0
 5346 02a8 34       		.uleb128 0x34
 5347 02a9 34       		.uleb128 0x34
 5348 02aa 00       		.byte	0
 5349 02ab 03       		.uleb128 0x3
 5350 02ac 0E       		.uleb128 0xe
 5351 02ad 3A       		.uleb128 0x3a
 5352 02ae 0B       		.uleb128 0xb
 5353 02af 3B       		.uleb128 0x3b
 5354 02b0 0B       		.uleb128 0xb
 5355 02b1 49       		.uleb128 0x49
 5356 02b2 13       		.uleb128 0x13
 5357 02b3 02       		.uleb128 0x2
 5358 02b4 17       		.uleb128 0x17
 5359 02b5 00       		.byte	0
 5360 02b6 00       		.byte	0
 5361 02b7 35       		.uleb128 0x35
 5362 02b8 1D       		.uleb128 0x1d
 5363 02b9 01       		.byte	0x1
 5364 02ba 31       		.uleb128 0x31
 5365 02bb 13       		.uleb128 0x13
 5366 02bc 52       		.uleb128 0x52
 5367 02bd 01       		.uleb128 0x1
 5368 02be 55       		.uleb128 0x55
 5369 02bf 17       		.uleb128 0x17
 5370 02c0 58       		.uleb128 0x58
 5371 02c1 0B       		.uleb128 0xb
 5372 02c2 59       		.uleb128 0x59
 5373 02c3 0B       		.uleb128 0xb
 5374 02c4 01       		.uleb128 0x1
 5375 02c5 13       		.uleb128 0x13
 5376 02c6 00       		.byte	0
 5377 02c7 00       		.byte	0
 5378 02c8 36       		.uleb128 0x36
 5379 02c9 05       		.uleb128 0x5
 5380 02ca 00       		.byte	0
 5381 02cb 03       		.uleb128 0x3
 5382 02cc 08       		.uleb128 0x8
 5383 02cd 3A       		.uleb128 0x3a
 5384 02ce 0B       		.uleb128 0xb
 5385 02cf 3B       		.uleb128 0x3b
ARM GAS  /tmp/ccPmdm0I.s 			page 124


 5386 02d0 0B       		.uleb128 0xb
 5387 02d1 49       		.uleb128 0x49
 5388 02d2 13       		.uleb128 0x13
 5389 02d3 02       		.uleb128 0x2
 5390 02d4 17       		.uleb128 0x17
 5391 02d5 00       		.byte	0
 5392 02d6 00       		.byte	0
 5393 02d7 37       		.uleb128 0x37
 5394 02d8 34       		.uleb128 0x34
 5395 02d9 00       		.byte	0
 5396 02da 03       		.uleb128 0x3
 5397 02db 0E       		.uleb128 0xe
 5398 02dc 3A       		.uleb128 0x3a
 5399 02dd 0B       		.uleb128 0xb
 5400 02de 3B       		.uleb128 0x3b
 5401 02df 0B       		.uleb128 0xb
 5402 02e0 49       		.uleb128 0x49
 5403 02e1 13       		.uleb128 0x13
 5404 02e2 00       		.byte	0
 5405 02e3 00       		.byte	0
 5406 02e4 38       		.uleb128 0x38
 5407 02e5 0B       		.uleb128 0xb
 5408 02e6 01       		.byte	0x1
 5409 02e7 55       		.uleb128 0x55
 5410 02e8 17       		.uleb128 0x17
 5411 02e9 00       		.byte	0
 5412 02ea 00       		.byte	0
 5413 02eb 39       		.uleb128 0x39
 5414 02ec 34       		.uleb128 0x34
 5415 02ed 00       		.byte	0
 5416 02ee 31       		.uleb128 0x31
 5417 02ef 13       		.uleb128 0x13
 5418 02f0 02       		.uleb128 0x2
 5419 02f1 17       		.uleb128 0x17
 5420 02f2 00       		.byte	0
 5421 02f3 00       		.byte	0
 5422 02f4 3A       		.uleb128 0x3a
 5423 02f5 34       		.uleb128 0x34
 5424 02f6 00       		.byte	0
 5425 02f7 31       		.uleb128 0x31
 5426 02f8 13       		.uleb128 0x13
 5427 02f9 02       		.uleb128 0x2
 5428 02fa 18       		.uleb128 0x18
 5429 02fb 00       		.byte	0
 5430 02fc 00       		.byte	0
 5431 02fd 3B       		.uleb128 0x3b
 5432 02fe 1D       		.uleb128 0x1d
 5433 02ff 01       		.byte	0x1
 5434 0300 31       		.uleb128 0x31
 5435 0301 13       		.uleb128 0x13
 5436 0302 11       		.uleb128 0x11
 5437 0303 01       		.uleb128 0x1
 5438 0304 12       		.uleb128 0x12
 5439 0305 06       		.uleb128 0x6
 5440 0306 58       		.uleb128 0x58
 5441 0307 0B       		.uleb128 0xb
 5442 0308 59       		.uleb128 0x59
ARM GAS  /tmp/ccPmdm0I.s 			page 125


 5443 0309 0B       		.uleb128 0xb
 5444 030a 01       		.uleb128 0x1
 5445 030b 13       		.uleb128 0x13
 5446 030c 00       		.byte	0
 5447 030d 00       		.byte	0
 5448 030e 3C       		.uleb128 0x3c
 5449 030f 2E       		.uleb128 0x2e
 5450 0310 01       		.byte	0x1
 5451 0311 03       		.uleb128 0x3
 5452 0312 0E       		.uleb128 0xe
 5453 0313 3A       		.uleb128 0x3a
 5454 0314 0B       		.uleb128 0xb
 5455 0315 3B       		.uleb128 0x3b
 5456 0316 0B       		.uleb128 0xb
 5457 0317 27       		.uleb128 0x27
 5458 0318 19       		.uleb128 0x19
 5459 0319 49       		.uleb128 0x49
 5460 031a 13       		.uleb128 0x13
 5461 031b 20       		.uleb128 0x20
 5462 031c 0B       		.uleb128 0xb
 5463 031d 01       		.uleb128 0x1
 5464 031e 13       		.uleb128 0x13
 5465 031f 00       		.byte	0
 5466 0320 00       		.byte	0
 5467 0321 3D       		.uleb128 0x3d
 5468 0322 05       		.uleb128 0x5
 5469 0323 00       		.byte	0
 5470 0324 03       		.uleb128 0x3
 5471 0325 0E       		.uleb128 0xe
 5472 0326 3A       		.uleb128 0x3a
 5473 0327 0B       		.uleb128 0xb
 5474 0328 3B       		.uleb128 0x3b
 5475 0329 0B       		.uleb128 0xb
 5476 032a 49       		.uleb128 0x49
 5477 032b 13       		.uleb128 0x13
 5478 032c 00       		.byte	0
 5479 032d 00       		.byte	0
 5480 032e 3E       		.uleb128 0x3e
 5481 032f 2E       		.uleb128 0x2e
 5482 0330 01       		.byte	0x1
 5483 0331 03       		.uleb128 0x3
 5484 0332 0E       		.uleb128 0xe
 5485 0333 3A       		.uleb128 0x3a
 5486 0334 0B       		.uleb128 0xb
 5487 0335 3B       		.uleb128 0x3b
 5488 0336 05       		.uleb128 0x5
 5489 0337 27       		.uleb128 0x27
 5490 0338 19       		.uleb128 0x19
 5491 0339 20       		.uleb128 0x20
 5492 033a 0B       		.uleb128 0xb
 5493 033b 01       		.uleb128 0x1
 5494 033c 13       		.uleb128 0x13
 5495 033d 00       		.byte	0
 5496 033e 00       		.byte	0
 5497 033f 3F       		.uleb128 0x3f
 5498 0340 05       		.uleb128 0x5
 5499 0341 00       		.byte	0
ARM GAS  /tmp/ccPmdm0I.s 			page 126


 5500 0342 03       		.uleb128 0x3
 5501 0343 0E       		.uleb128 0xe
 5502 0344 3A       		.uleb128 0x3a
 5503 0345 0B       		.uleb128 0xb
 5504 0346 3B       		.uleb128 0x3b
 5505 0347 05       		.uleb128 0x5
 5506 0348 49       		.uleb128 0x49
 5507 0349 13       		.uleb128 0x13
 5508 034a 00       		.byte	0
 5509 034b 00       		.byte	0
 5510 034c 40       		.uleb128 0x40
 5511 034d 2E       		.uleb128 0x2e
 5512 034e 01       		.byte	0x1
 5513 034f 03       		.uleb128 0x3
 5514 0350 0E       		.uleb128 0xe
 5515 0351 3A       		.uleb128 0x3a
 5516 0352 0B       		.uleb128 0xb
 5517 0353 3B       		.uleb128 0x3b
 5518 0354 05       		.uleb128 0x5
 5519 0355 27       		.uleb128 0x27
 5520 0356 19       		.uleb128 0x19
 5521 0357 49       		.uleb128 0x49
 5522 0358 13       		.uleb128 0x13
 5523 0359 20       		.uleb128 0x20
 5524 035a 0B       		.uleb128 0xb
 5525 035b 01       		.uleb128 0x1
 5526 035c 13       		.uleb128 0x13
 5527 035d 00       		.byte	0
 5528 035e 00       		.byte	0
 5529 035f 41       		.uleb128 0x41
 5530 0360 34       		.uleb128 0x34
 5531 0361 00       		.byte	0
 5532 0362 03       		.uleb128 0x3
 5533 0363 0E       		.uleb128 0xe
 5534 0364 3A       		.uleb128 0x3a
 5535 0365 0B       		.uleb128 0xb
 5536 0366 3B       		.uleb128 0x3b
 5537 0367 05       		.uleb128 0x5
 5538 0368 49       		.uleb128 0x49
 5539 0369 13       		.uleb128 0x13
 5540 036a 00       		.byte	0
 5541 036b 00       		.byte	0
 5542 036c 42       		.uleb128 0x42
 5543 036d 2E       		.uleb128 0x2e
 5544 036e 00       		.byte	0
 5545 036f 3F       		.uleb128 0x3f
 5546 0370 19       		.uleb128 0x19
 5547 0371 3C       		.uleb128 0x3c
 5548 0372 19       		.uleb128 0x19
 5549 0373 6E       		.uleb128 0x6e
 5550 0374 0E       		.uleb128 0xe
 5551 0375 03       		.uleb128 0x3
 5552 0376 0E       		.uleb128 0xe
 5553 0377 3A       		.uleb128 0x3a
 5554 0378 0B       		.uleb128 0xb
 5555 0379 3B       		.uleb128 0x3b
 5556 037a 05       		.uleb128 0x5
ARM GAS  /tmp/ccPmdm0I.s 			page 127


 5557 037b 00       		.byte	0
 5558 037c 00       		.byte	0
 5559 037d 00       		.byte	0
 5560              		.section	.debug_loc,"",%progbits
 5561              	.Ldebug_loc0:
 5562              	.LLST40:
 5563 0000 00000000 		.4byte	.LVL65
 5564 0004 23000000 		.4byte	.LVL67-1
 5565 0008 0100     		.2byte	0x1
 5566 000a 50       		.byte	0x50
 5567 000b 23000000 		.4byte	.LVL67-1
 5568 000f 5C000000 		.4byte	.LFE222
 5569 0013 0100     		.2byte	0x1
 5570 0015 55       		.byte	0x55
 5571 0016 00000000 		.4byte	0
 5572 001a 00000000 		.4byte	0
 5573              	.LLST41:
 5574 001e 00000000 		.4byte	.LVL65
 5575 0022 23000000 		.4byte	.LVL67-1
 5576 0026 0100     		.2byte	0x1
 5577 0028 51       		.byte	0x51
 5578 0029 23000000 		.4byte	.LVL67-1
 5579 002d 5C000000 		.4byte	.LFE222
 5580 0031 0400     		.2byte	0x4
 5581 0033 F3       		.byte	0xf3
 5582 0034 01       		.uleb128 0x1
 5583 0035 51       		.byte	0x51
 5584 0036 9F       		.byte	0x9f
 5585 0037 00000000 		.4byte	0
 5586 003b 00000000 		.4byte	0
 5587              	.LLST42:
 5588 003f 1C000000 		.4byte	.LVL66
 5589 0043 24000000 		.4byte	.LVL67
 5590 0047 0200     		.2byte	0x2
 5591 0049 3A       		.byte	0x3a
 5592 004a 9F       		.byte	0x9f
 5593 004b 24000000 		.4byte	.LVL67
 5594 004f 5C000000 		.4byte	.LFE222
 5595 0053 0100     		.2byte	0x1
 5596 0055 54       		.byte	0x54
 5597 0056 00000000 		.4byte	0
 5598 005a 00000000 		.4byte	0
 5599              	.LLST43:
 5600 005e 3C000000 		.4byte	.LVL70
 5601 0062 46000000 		.4byte	.LVL71
 5602 0066 0200     		.2byte	0x2
 5603 0068 30       		.byte	0x30
 5604 0069 9F       		.byte	0x9f
 5605 006a 4A000000 		.4byte	.LVL72
 5606 006e 58000000 		.4byte	.LVL73
 5607 0072 0200     		.2byte	0x2
 5608 0074 30       		.byte	0x30
 5609 0075 9F       		.byte	0x9f
 5610 0076 00000000 		.4byte	0
 5611 007a 00000000 		.4byte	0
 5612              	.LLST44:
 5613 007e 3C000000 		.4byte	.LVL70
ARM GAS  /tmp/ccPmdm0I.s 			page 128


 5614 0082 46000000 		.4byte	.LVL71
 5615 0086 0100     		.2byte	0x1
 5616 0088 55       		.byte	0x55
 5617 0089 4A000000 		.4byte	.LVL72
 5618 008d 58000000 		.4byte	.LVL73
 5619 0091 0100     		.2byte	0x1
 5620 0093 55       		.byte	0x55
 5621 0094 00000000 		.4byte	0
 5622 0098 00000000 		.4byte	0
 5623              	.LLST17:
 5624 009c 00000000 		.4byte	.LVL27
 5625 00a0 1F000000 		.4byte	.LVL30-1
 5626 00a4 0100     		.2byte	0x1
 5627 00a6 50       		.byte	0x50
 5628 00a7 1F000000 		.4byte	.LVL30-1
 5629 00ab 48010000 		.4byte	.LFE221
 5630 00af 0100     		.2byte	0x1
 5631 00b1 54       		.byte	0x54
 5632 00b2 00000000 		.4byte	0
 5633 00b6 00000000 		.4byte	0
 5634              	.LLST18:
 5635 00ba 00000000 		.4byte	.LVL27
 5636 00be 1F000000 		.4byte	.LVL30-1
 5637 00c2 0100     		.2byte	0x1
 5638 00c4 51       		.byte	0x51
 5639 00c5 1F000000 		.4byte	.LVL30-1
 5640 00c9 48010000 		.4byte	.LFE221
 5641 00cd 0400     		.2byte	0x4
 5642 00cf F3       		.byte	0xf3
 5643 00d0 01       		.uleb128 0x1
 5644 00d1 51       		.byte	0x51
 5645 00d2 9F       		.byte	0x9f
 5646 00d3 00000000 		.4byte	0
 5647 00d7 00000000 		.4byte	0
 5648              	.LLST19:
 5649 00db 00000000 		.4byte	.LVL27
 5650 00df 2A000000 		.4byte	.LVL32
 5651 00e3 0200     		.2byte	0x2
 5652 00e5 30       		.byte	0x30
 5653 00e6 9F       		.byte	0x9f
 5654 00e7 2E000000 		.4byte	.LVL33
 5655 00eb F6000000 		.4byte	.LVL53
 5656 00ef 0200     		.2byte	0x2
 5657 00f1 30       		.byte	0x30
 5658 00f2 9F       		.byte	0x9f
 5659 00f3 28010000 		.4byte	.LVL61
 5660 00f7 2A010000 		.4byte	.LVL62
 5661 00fb 0200     		.2byte	0x2
 5662 00fd 30       		.byte	0x30
 5663 00fe 9F       		.byte	0x9f
 5664 00ff 2A010000 		.4byte	.LVL62
 5665 0103 34010000 		.4byte	.LVL63
 5666 0107 0200     		.2byte	0x2
 5667 0109 31       		.byte	0x31
 5668 010a 9F       		.byte	0x9f
 5669 010b 3C010000 		.4byte	.LVL64
 5670 010f 48010000 		.4byte	.LFE221
ARM GAS  /tmp/ccPmdm0I.s 			page 129


 5671 0113 0200     		.2byte	0x2
 5672 0115 30       		.byte	0x30
 5673 0116 9F       		.byte	0x9f
 5674 0117 00000000 		.4byte	0
 5675 011b 00000000 		.4byte	0
 5676              	.LLST20:
 5677 011f 00000000 		.4byte	.LVL27
 5678 0123 2A000000 		.4byte	.LVL32
 5679 0127 0200     		.2byte	0x2
 5680 0129 30       		.byte	0x30
 5681 012a 9F       		.byte	0x9f
 5682 012b 2E000000 		.4byte	.LVL33
 5683 012f EE000000 		.4byte	.LVL52
 5684 0133 0200     		.2byte	0x2
 5685 0135 30       		.byte	0x30
 5686 0136 9F       		.byte	0x9f
 5687 0137 EE000000 		.4byte	.LVL52
 5688 013b 02010000 		.4byte	.LVL55
 5689 013f 0100     		.2byte	0x1
 5690 0141 52       		.byte	0x52
 5691 0142 28010000 		.4byte	.LVL61
 5692 0146 2A010000 		.4byte	.LVL62
 5693 014a 0200     		.2byte	0x2
 5694 014c 30       		.byte	0x30
 5695 014d 9F       		.byte	0x9f
 5696 014e 2A010000 		.4byte	.LVL62
 5697 0152 3C010000 		.4byte	.LVL64
 5698 0156 0100     		.2byte	0x1
 5699 0158 52       		.byte	0x52
 5700 0159 3C010000 		.4byte	.LVL64
 5701 015d 48010000 		.4byte	.LFE221
 5702 0161 0200     		.2byte	0x2
 5703 0163 30       		.byte	0x30
 5704 0164 9F       		.byte	0x9f
 5705 0165 00000000 		.4byte	0
 5706 0169 00000000 		.4byte	0
 5707              	.LLST21:
 5708 016d 20000000 		.4byte	.LVL30
 5709 0171 36000000 		.4byte	.LVL34
 5710 0175 0100     		.2byte	0x1
 5711 0177 50       		.byte	0x50
 5712 0178 48000000 		.4byte	.LVL35
 5713 017c 56000000 		.4byte	.LVL37
 5714 0180 0100     		.2byte	0x1
 5715 0182 50       		.byte	0x50
 5716 0183 5A000000 		.4byte	.LVL38
 5717 0187 66000000 		.4byte	.LVL39
 5718 018b 0100     		.2byte	0x1
 5719 018d 50       		.byte	0x50
 5720 018e 6A000000 		.4byte	.LVL40
 5721 0192 76000000 		.4byte	.LVL41
 5722 0196 0100     		.2byte	0x1
 5723 0198 50       		.byte	0x50
 5724 0199 84000000 		.4byte	.LVL42
 5725 019d 90000000 		.4byte	.LVL43
 5726 01a1 0100     		.2byte	0x1
 5727 01a3 50       		.byte	0x50
ARM GAS  /tmp/ccPmdm0I.s 			page 130


 5728 01a4 A2000000 		.4byte	.LVL44
 5729 01a8 AA000000 		.4byte	.LVL45
 5730 01ac 0100     		.2byte	0x1
 5731 01ae 50       		.byte	0x50
 5732 01af B6000000 		.4byte	.LVL46
 5733 01b3 BE000000 		.4byte	.LVL47
 5734 01b7 0100     		.2byte	0x1
 5735 01b9 50       		.byte	0x50
 5736 01ba DA000000 		.4byte	.LVL51
 5737 01be 48010000 		.4byte	.LFE221
 5738 01c2 0100     		.2byte	0x1
 5739 01c4 50       		.byte	0x50
 5740 01c5 00000000 		.4byte	0
 5741 01c9 00000000 		.4byte	0
 5742              	.LLST22:
 5743 01cd 0A000000 		.4byte	.LVL28
 5744 01d1 16000000 		.4byte	.LVL29
 5745 01d5 0200     		.2byte	0x2
 5746 01d7 31       		.byte	0x31
 5747 01d8 9F       		.byte	0x9f
 5748 01d9 00000000 		.4byte	0
 5749 01dd 00000000 		.4byte	0
 5750              	.LLST23:
 5751 01e1 0A000000 		.4byte	.LVL28
 5752 01e5 16000000 		.4byte	.LVL29
 5753 01e9 0100     		.2byte	0x1
 5754 01eb 50       		.byte	0x50
 5755 01ec 00000000 		.4byte	0
 5756 01f0 00000000 		.4byte	0
 5757              	.LLST24:
 5758 01f4 22000000 		.4byte	.LVL31
 5759 01f8 2A000000 		.4byte	.LVL32
 5760 01fc 0200     		.2byte	0x2
 5761 01fe 30       		.byte	0x30
 5762 01ff 9F       		.byte	0x9f
 5763 0200 00000000 		.4byte	0
 5764 0204 00000000 		.4byte	0
 5765              	.LLST25:
 5766 0208 22000000 		.4byte	.LVL31
 5767 020c 2A000000 		.4byte	.LVL32
 5768 0210 0100     		.2byte	0x1
 5769 0212 54       		.byte	0x54
 5770 0213 00000000 		.4byte	0
 5771 0217 00000000 		.4byte	0
 5772              	.LLST26:
 5773 021b C0000000 		.4byte	.LVL48
 5774 021f CA000000 		.4byte	.LVL49
 5775 0223 0200     		.2byte	0x2
 5776 0225 30       		.byte	0x30
 5777 0226 9F       		.byte	0x9f
 5778 0227 00000000 		.4byte	0
 5779 022b 00000000 		.4byte	0
 5780              	.LLST27:
 5781 022f C0000000 		.4byte	.LVL48
 5782 0233 CA000000 		.4byte	.LVL49
 5783 0237 0100     		.2byte	0x1
 5784 0239 54       		.byte	0x54
ARM GAS  /tmp/ccPmdm0I.s 			page 131


 5785 023a 00000000 		.4byte	0
 5786 023e 00000000 		.4byte	0
 5787              	.LLST28:
 5788 0242 EE000000 		.4byte	.LVL52
 5789 0246 F6000000 		.4byte	.LVL53
 5790 024a 0200     		.2byte	0x2
 5791 024c 30       		.byte	0x30
 5792 024d 9F       		.byte	0x9f
 5793 024e 2A010000 		.4byte	.LVL62
 5794 0252 34010000 		.4byte	.LVL63
 5795 0256 0200     		.2byte	0x2
 5796 0258 31       		.byte	0x31
 5797 0259 9F       		.byte	0x9f
 5798 025a 00000000 		.4byte	0
 5799 025e 00000000 		.4byte	0
 5800              	.LLST29:
 5801 0262 EE000000 		.4byte	.LVL52
 5802 0266 F6000000 		.4byte	.LVL53
 5803 026a 0100     		.2byte	0x1
 5804 026c 54       		.byte	0x54
 5805 026d 2A010000 		.4byte	.LVL62
 5806 0271 34010000 		.4byte	.LVL63
 5807 0275 0100     		.2byte	0x1
 5808 0277 54       		.byte	0x54
 5809 0278 00000000 		.4byte	0
 5810 027c 00000000 		.4byte	0
 5811              	.LLST30:
 5812 0280 F6000000 		.4byte	.LVL53
 5813 0284 00010000 		.4byte	.LVL54
 5814 0288 0100     		.2byte	0x1
 5815 028a 52       		.byte	0x52
 5816 028b 34010000 		.4byte	.LVL63
 5817 028f 3C010000 		.4byte	.LVL64
 5818 0293 0100     		.2byte	0x1
 5819 0295 52       		.byte	0x52
 5820 0296 00000000 		.4byte	0
 5821 029a 00000000 		.4byte	0
 5822              	.LLST31:
 5823 029e F6000000 		.4byte	.LVL53
 5824 02a2 00010000 		.4byte	.LVL54
 5825 02a6 0100     		.2byte	0x1
 5826 02a8 54       		.byte	0x54
 5827 02a9 34010000 		.4byte	.LVL63
 5828 02ad 3C010000 		.4byte	.LVL64
 5829 02b1 0100     		.2byte	0x1
 5830 02b3 54       		.byte	0x54
 5831 02b4 00000000 		.4byte	0
 5832 02b8 00000000 		.4byte	0
 5833              	.LLST32:
 5834 02bc 00010000 		.4byte	.LVL54
 5835 02c0 0C010000 		.4byte	.LVL56
 5836 02c4 0200     		.2byte	0x2
 5837 02c6 31       		.byte	0x31
 5838 02c7 9F       		.byte	0x9f
 5839 02c8 00000000 		.4byte	0
 5840 02cc 00000000 		.4byte	0
 5841              	.LLST33:
ARM GAS  /tmp/ccPmdm0I.s 			page 132


 5842 02d0 00010000 		.4byte	.LVL54
 5843 02d4 0C010000 		.4byte	.LVL56
 5844 02d8 0100     		.2byte	0x1
 5845 02da 54       		.byte	0x54
 5846 02db 00000000 		.4byte	0
 5847 02df 00000000 		.4byte	0
 5848              	.LLST34:
 5849 02e3 0C010000 		.4byte	.LVL56
 5850 02e7 14010000 		.4byte	.LVL57
 5851 02eb 0200     		.2byte	0x2
 5852 02ed 31       		.byte	0x31
 5853 02ee 9F       		.byte	0x9f
 5854 02ef 00000000 		.4byte	0
 5855 02f3 00000000 		.4byte	0
 5856              	.LLST35:
 5857 02f7 0C010000 		.4byte	.LVL56
 5858 02fb 14010000 		.4byte	.LVL57
 5859 02ff 0600     		.2byte	0x6
 5860 0301 0C       		.byte	0xc
 5861 0302 00000540 		.4byte	0x40050000
 5862 0306 9F       		.byte	0x9f
 5863 0307 00000000 		.4byte	0
 5864 030b 00000000 		.4byte	0
 5865              	.LLST36:
 5866 030f 14010000 		.4byte	.LVL57
 5867 0313 1C010000 		.4byte	.LVL58
 5868 0317 0200     		.2byte	0x2
 5869 0319 31       		.byte	0x31
 5870 031a 9F       		.byte	0x9f
 5871 031b 00000000 		.4byte	0
 5872 031f 00000000 		.4byte	0
 5873              	.LLST37:
 5874 0323 14010000 		.4byte	.LVL57
 5875 0327 1C010000 		.4byte	.LVL58
 5876 032b 0600     		.2byte	0x6
 5877 032d 0C       		.byte	0xc
 5878 032e 00000540 		.4byte	0x40050000
 5879 0332 9F       		.byte	0x9f
 5880 0333 00000000 		.4byte	0
 5881 0337 00000000 		.4byte	0
 5882              	.LLST38:
 5883 033b 20010000 		.4byte	.LVL59
 5884 033f 26010000 		.4byte	.LVL60
 5885 0343 0200     		.2byte	0x2
 5886 0345 30       		.byte	0x30
 5887 0346 9F       		.byte	0x9f
 5888 0347 00000000 		.4byte	0
 5889 034b 00000000 		.4byte	0
 5890              	.LLST39:
 5891 034f 20010000 		.4byte	.LVL59
 5892 0353 26010000 		.4byte	.LVL60
 5893 0357 0100     		.2byte	0x1
 5894 0359 54       		.byte	0x54
 5895 035a 00000000 		.4byte	0
 5896 035e 00000000 		.4byte	0
 5897              	.LLST0:
 5898 0362 00000000 		.4byte	.LVL0
ARM GAS  /tmp/ccPmdm0I.s 			page 133


 5899 0366 19000000 		.4byte	.LVL4-1
 5900 036a 0100     		.2byte	0x1
 5901 036c 50       		.byte	0x50
 5902 036d 19000000 		.4byte	.LVL4-1
 5903 0371 B2000000 		.4byte	.LFE220
 5904 0375 0100     		.2byte	0x1
 5905 0377 54       		.byte	0x54
 5906 0378 00000000 		.4byte	0
 5907 037c 00000000 		.4byte	0
 5908              	.LLST1:
 5909 0380 00000000 		.4byte	.LVL0
 5910 0384 19000000 		.4byte	.LVL4-1
 5911 0388 0100     		.2byte	0x1
 5912 038a 51       		.byte	0x51
 5913 038b 19000000 		.4byte	.LVL4-1
 5914 038f B2000000 		.4byte	.LFE220
 5915 0393 0400     		.2byte	0x4
 5916 0395 F3       		.byte	0xf3
 5917 0396 01       		.uleb128 0x1
 5918 0397 51       		.byte	0x51
 5919 0398 9F       		.byte	0x9f
 5920 0399 00000000 		.4byte	0
 5921 039d 00000000 		.4byte	0
 5922              	.LLST2:
 5923 03a1 00000000 		.4byte	.LVL0
 5924 03a5 0A000000 		.4byte	.LVL1
 5925 03a9 0100     		.2byte	0x1
 5926 03ab 52       		.byte	0x52
 5927 03ac 0A000000 		.4byte	.LVL1
 5928 03b0 B2000000 		.4byte	.LFE220
 5929 03b4 0400     		.2byte	0x4
 5930 03b6 F3       		.byte	0xf3
 5931 03b7 01       		.uleb128 0x1
 5932 03b8 52       		.byte	0x52
 5933 03b9 9F       		.byte	0x9f
 5934 03ba 00000000 		.4byte	0
 5935 03be 00000000 		.4byte	0
 5936              	.LLST3:
 5937 03c2 16000000 		.4byte	.LVL3
 5938 03c6 46000000 		.4byte	.LVL12
 5939 03ca 0100     		.2byte	0x1
 5940 03cc 57       		.byte	0x57
 5941 03cd 00000000 		.4byte	0
 5942 03d1 00000000 		.4byte	0
 5943              	.LLST4:
 5944 03d5 44000000 		.4byte	.LVL11
 5945 03d9 54000000 		.4byte	.LVL13
 5946 03dd 0200     		.2byte	0x2
 5947 03df 31       		.byte	0x31
 5948 03e0 9F       		.byte	0x9f
 5949 03e1 54000000 		.4byte	.LVL13
 5950 03e5 5E000000 		.4byte	.LVL14
 5951 03e9 0100     		.2byte	0x1
 5952 03eb 52       		.byte	0x52
 5953 03ec 5E000000 		.4byte	.LVL14
 5954 03f0 6A000000 		.4byte	.LVL15
 5955 03f4 0200     		.2byte	0x2
ARM GAS  /tmp/ccPmdm0I.s 			page 134


 5956 03f6 31       		.byte	0x31
 5957 03f7 9F       		.byte	0x9f
 5958 03f8 8A000000 		.4byte	.LVL21
 5959 03fc 9A000000 		.4byte	.LVL23
 5960 0400 0100     		.2byte	0x1
 5961 0402 52       		.byte	0x52
 5962 0403 A4000000 		.4byte	.LVL24
 5963 0407 A8000000 		.4byte	.LVL25
 5964 040b 0200     		.2byte	0x2
 5965 040d 31       		.byte	0x31
 5966 040e 9F       		.byte	0x9f
 5967 040f 00000000 		.4byte	0
 5968 0413 00000000 		.4byte	0
 5969              	.LLST5:
 5970 0417 44000000 		.4byte	.LVL11
 5971 041b 5E000000 		.4byte	.LVL14
 5972 041f 0200     		.2byte	0x2
 5973 0421 31       		.byte	0x31
 5974 0422 9F       		.byte	0x9f
 5975 0423 5E000000 		.4byte	.LVL14
 5976 0427 6A000000 		.4byte	.LVL15
 5977 042b 0200     		.2byte	0x2
 5978 042d 30       		.byte	0x30
 5979 042e 9F       		.byte	0x9f
 5980 042f 6C000000 		.4byte	.LVL16
 5981 0433 78000000 		.4byte	.LVL18
 5982 0437 0100     		.2byte	0x1
 5983 0439 53       		.byte	0x53
 5984 043a 8A000000 		.4byte	.LVL21
 5985 043e 9A000000 		.4byte	.LVL23
 5986 0442 0200     		.2byte	0x2
 5987 0444 31       		.byte	0x31
 5988 0445 9F       		.byte	0x9f
 5989 0446 9A000000 		.4byte	.LVL23
 5990 044a A4000000 		.4byte	.LVL24
 5991 044e 0100     		.2byte	0x1
 5992 0450 53       		.byte	0x53
 5993 0451 A4000000 		.4byte	.LVL24
 5994 0455 A8000000 		.4byte	.LVL25
 5995 0459 0200     		.2byte	0x2
 5996 045b 31       		.byte	0x31
 5997 045c 9F       		.byte	0x9f
 5998 045d A8000000 		.4byte	.LVL25
 5999 0461 AA000000 		.4byte	.LVL26
 6000 0465 0100     		.2byte	0x1
 6001 0467 53       		.byte	0x53
 6002 0468 00000000 		.4byte	0
 6003 046c 00000000 		.4byte	0
 6004              	.LLST6:
 6005 0470 1A000000 		.4byte	.LVL4
 6006 0474 28000000 		.4byte	.LVL6
 6007 0478 0100     		.2byte	0x1
 6008 047a 50       		.byte	0x50
 6009 047b 32000000 		.4byte	.LVL8
 6010 047f 3C000000 		.4byte	.LVL9
 6011 0483 0100     		.2byte	0x1
 6012 0485 50       		.byte	0x50
ARM GAS  /tmp/ccPmdm0I.s 			page 135


 6013 0486 40000000 		.4byte	.LVL10
 6014 048a B2000000 		.4byte	.LFE220
 6015 048e 0100     		.2byte	0x1
 6016 0490 50       		.byte	0x50
 6017 0491 00000000 		.4byte	0
 6018 0495 00000000 		.4byte	0
 6019              	.LLST7:
 6020 0499 12000000 		.4byte	.LVL2
 6021 049d 16000000 		.4byte	.LVL3
 6022 04a1 0200     		.2byte	0x2
 6023 04a3 31       		.byte	0x31
 6024 04a4 9F       		.byte	0x9f
 6025 04a5 00000000 		.4byte	0
 6026 04a9 00000000 		.4byte	0
 6027              	.LLST8:
 6028 04ad 12000000 		.4byte	.LVL2
 6029 04b1 16000000 		.4byte	.LVL3
 6030 04b5 0100     		.2byte	0x1
 6031 04b7 50       		.byte	0x50
 6032 04b8 00000000 		.4byte	0
 6033 04bc 00000000 		.4byte	0
 6034              	.LLST9:
 6035 04c0 24000000 		.4byte	.LVL5
 6036 04c4 2E000000 		.4byte	.LVL7
 6037 04c8 0200     		.2byte	0x2
 6038 04ca 30       		.byte	0x30
 6039 04cb 9F       		.byte	0x9f
 6040 04cc 00000000 		.4byte	0
 6041 04d0 00000000 		.4byte	0
 6042              	.LLST10:
 6043 04d4 24000000 		.4byte	.LVL5
 6044 04d8 2E000000 		.4byte	.LVL7
 6045 04dc 0100     		.2byte	0x1
 6046 04de 54       		.byte	0x54
 6047 04df 00000000 		.4byte	0
 6048 04e3 00000000 		.4byte	0
 6049              	.LLST11:
 6050 04e7 94000000 		.4byte	.LVL22
 6051 04eb 9A000000 		.4byte	.LVL23
 6052 04ef 0100     		.2byte	0x1
 6053 04f1 52       		.byte	0x52
 6054 04f2 00000000 		.4byte	0
 6055 04f6 00000000 		.4byte	0
 6056              	.LLST12:
 6057 04fa 6C000000 		.4byte	.LVL16
 6058 04fe 74000000 		.4byte	.LVL17
 6059 0502 0100     		.2byte	0x1
 6060 0504 54       		.byte	0x54
 6061 0505 94000000 		.4byte	.LVL22
 6062 0509 A4000000 		.4byte	.LVL24
 6063 050d 0100     		.2byte	0x1
 6064 050f 54       		.byte	0x54
 6065 0510 00000000 		.4byte	0
 6066 0514 00000000 		.4byte	0
 6067              	.LLST13:
 6068 0518 74000000 		.4byte	.LVL17
 6069 051c 78000000 		.4byte	.LVL18
ARM GAS  /tmp/ccPmdm0I.s 			page 136


 6070 0520 0100     		.2byte	0x1
 6071 0522 53       		.byte	0x53
 6072 0523 A8000000 		.4byte	.LVL25
 6073 0527 AA000000 		.4byte	.LVL26
 6074 052b 0100     		.2byte	0x1
 6075 052d 53       		.byte	0x53
 6076 052e 00000000 		.4byte	0
 6077 0532 00000000 		.4byte	0
 6078              	.LLST14:
 6079 0536 74000000 		.4byte	.LVL17
 6080 053a 7E000000 		.4byte	.LVL19
 6081 053e 0100     		.2byte	0x1
 6082 0540 54       		.byte	0x54
 6083 0541 A8000000 		.4byte	.LVL25
 6084 0545 B2000000 		.4byte	.LFE220
 6085 0549 0100     		.2byte	0x1
 6086 054b 54       		.byte	0x54
 6087 054c 00000000 		.4byte	0
 6088 0550 00000000 		.4byte	0
 6089              	.LLST15:
 6090 0554 7E000000 		.4byte	.LVL19
 6091 0558 86000000 		.4byte	.LVL20
 6092 055c 0200     		.2byte	0x2
 6093 055e 30       		.byte	0x30
 6094 055f 9F       		.byte	0x9f
 6095 0560 00000000 		.4byte	0
 6096 0564 00000000 		.4byte	0
 6097              	.LLST16:
 6098 0568 7E000000 		.4byte	.LVL19
 6099 056c 86000000 		.4byte	.LVL20
 6100 0570 0100     		.2byte	0x1
 6101 0572 54       		.byte	0x54
 6102 0573 00000000 		.4byte	0
 6103 0577 00000000 		.4byte	0
 6104              	.LLST45:
 6105 057b 00000000 		.4byte	.LVL74
 6106 057f 0A000000 		.4byte	.LVL75
 6107 0583 0100     		.2byte	0x1
 6108 0585 50       		.byte	0x50
 6109 0586 0A000000 		.4byte	.LVL75
 6110 058a 20010000 		.4byte	.LFE219
 6111 058e 0100     		.2byte	0x1
 6112 0590 56       		.byte	0x56
 6113 0591 00000000 		.4byte	0
 6114 0595 00000000 		.4byte	0
 6115              	.LLST46:
 6116 0599 00000000 		.4byte	.LVL74
 6117 059d 11000000 		.4byte	.LVL76-1
 6118 05a1 0100     		.2byte	0x1
 6119 05a3 51       		.byte	0x51
 6120 05a4 11000000 		.4byte	.LVL76-1
 6121 05a8 20010000 		.4byte	.LFE219
 6122 05ac 0400     		.2byte	0x4
 6123 05ae F3       		.byte	0xf3
 6124 05af 01       		.uleb128 0x1
 6125 05b0 51       		.byte	0x51
 6126 05b1 9F       		.byte	0x9f
ARM GAS  /tmp/ccPmdm0I.s 			page 137


 6127 05b2 00000000 		.4byte	0
 6128 05b6 00000000 		.4byte	0
 6129              	.LLST47:
 6130 05ba 00000000 		.4byte	.LVL74
 6131 05be 11000000 		.4byte	.LVL76-1
 6132 05c2 0100     		.2byte	0x1
 6133 05c4 52       		.byte	0x52
 6134 05c5 11000000 		.4byte	.LVL76-1
 6135 05c9 22000000 		.4byte	.LVL77
 6136 05cd 0100     		.2byte	0x1
 6137 05cf 54       		.byte	0x54
 6138 05d0 22000000 		.4byte	.LVL77
 6139 05d4 86000000 		.4byte	.LVL89
 6140 05d8 0400     		.2byte	0x4
 6141 05da F3       		.byte	0xf3
 6142 05db 01       		.uleb128 0x1
 6143 05dc 52       		.byte	0x52
 6144 05dd 9F       		.byte	0x9f
 6145 05de 86000000 		.4byte	.LVL89
 6146 05e2 9C000000 		.4byte	.LVL90
 6147 05e6 0100     		.2byte	0x1
 6148 05e8 54       		.byte	0x54
 6149 05e9 9C000000 		.4byte	.LVL90
 6150 05ed C6000000 		.4byte	.LVL96
 6151 05f1 0400     		.2byte	0x4
 6152 05f3 F3       		.byte	0xf3
 6153 05f4 01       		.uleb128 0x1
 6154 05f5 52       		.byte	0x52
 6155 05f6 9F       		.byte	0x9f
 6156 05f7 C6000000 		.4byte	.LVL96
 6157 05fb CA000000 		.4byte	.LVL97
 6158 05ff 0100     		.2byte	0x1
 6159 0601 54       		.byte	0x54
 6160 0602 CA000000 		.4byte	.LVL97
 6161 0606 EE000000 		.4byte	.LVL101
 6162 060a 0400     		.2byte	0x4
 6163 060c F3       		.byte	0xf3
 6164 060d 01       		.uleb128 0x1
 6165 060e 52       		.byte	0x52
 6166 060f 9F       		.byte	0x9f
 6167 0610 EE000000 		.4byte	.LVL101
 6168 0614 F2000000 		.4byte	.LVL102
 6169 0618 0100     		.2byte	0x1
 6170 061a 54       		.byte	0x54
 6171 061b F2000000 		.4byte	.LVL102
 6172 061f F4000000 		.4byte	.LVL103
 6173 0623 0400     		.2byte	0x4
 6174 0625 F3       		.byte	0xf3
 6175 0626 01       		.uleb128 0x1
 6176 0627 52       		.byte	0x52
 6177 0628 9F       		.byte	0x9f
 6178 0629 F4000000 		.4byte	.LVL103
 6179 062d 00010000 		.4byte	.LVL104
 6180 0631 0100     		.2byte	0x1
 6181 0633 54       		.byte	0x54
 6182 0634 00010000 		.4byte	.LVL104
 6183 0638 20010000 		.4byte	.LFE219
ARM GAS  /tmp/ccPmdm0I.s 			page 138


 6184 063c 0400     		.2byte	0x4
 6185 063e F3       		.byte	0xf3
 6186 063f 01       		.uleb128 0x1
 6187 0640 52       		.byte	0x52
 6188 0641 9F       		.byte	0x9f
 6189 0642 00000000 		.4byte	0
 6190 0646 00000000 		.4byte	0
 6191              	.LLST48:
 6192 064a 12000000 		.4byte	.LVL76
 6193 064e 22000000 		.4byte	.LVL77
 6194 0652 0100     		.2byte	0x1
 6195 0654 54       		.byte	0x54
 6196 0655 22000000 		.4byte	.LVL77
 6197 0659 40000000 		.4byte	.LVL79
 6198 065d 0400     		.2byte	0x4
 6199 065f F3       		.byte	0xf3
 6200 0660 01       		.uleb128 0x1
 6201 0661 52       		.byte	0x52
 6202 0662 9F       		.byte	0x9f
 6203 0663 86000000 		.4byte	.LVL89
 6204 0667 9C000000 		.4byte	.LVL90
 6205 066b 0100     		.2byte	0x1
 6206 066d 54       		.byte	0x54
 6207 066e 9C000000 		.4byte	.LVL90
 6208 0672 9E000000 		.4byte	.LVL91
 6209 0676 0400     		.2byte	0x4
 6210 0678 F3       		.byte	0xf3
 6211 0679 01       		.uleb128 0x1
 6212 067a 52       		.byte	0x52
 6213 067b 9F       		.byte	0x9f
 6214 067c C6000000 		.4byte	.LVL96
 6215 0680 CA000000 		.4byte	.LVL97
 6216 0684 0100     		.2byte	0x1
 6217 0686 54       		.byte	0x54
 6218 0687 CA000000 		.4byte	.LVL97
 6219 068b CC000000 		.4byte	.LVL98
 6220 068f 0400     		.2byte	0x4
 6221 0691 F3       		.byte	0xf3
 6222 0692 01       		.uleb128 0x1
 6223 0693 52       		.byte	0x52
 6224 0694 9F       		.byte	0x9f
 6225 0695 EE000000 		.4byte	.LVL101
 6226 0699 F2000000 		.4byte	.LVL102
 6227 069d 0100     		.2byte	0x1
 6228 069f 54       		.byte	0x54
 6229 06a0 F2000000 		.4byte	.LVL102
 6230 06a4 F4000000 		.4byte	.LVL103
 6231 06a8 0400     		.2byte	0x4
 6232 06aa F3       		.byte	0xf3
 6233 06ab 01       		.uleb128 0x1
 6234 06ac 52       		.byte	0x52
 6235 06ad 9F       		.byte	0x9f
 6236 06ae F4000000 		.4byte	.LVL103
 6237 06b2 00010000 		.4byte	.LVL104
 6238 06b6 0100     		.2byte	0x1
 6239 06b8 54       		.byte	0x54
 6240 06b9 00010000 		.4byte	.LVL104
ARM GAS  /tmp/ccPmdm0I.s 			page 139


 6241 06bd 20010000 		.4byte	.LFE219
 6242 06c1 0400     		.2byte	0x4
 6243 06c3 F3       		.byte	0xf3
 6244 06c4 01       		.uleb128 0x1
 6245 06c5 52       		.byte	0x52
 6246 06c6 9F       		.byte	0x9f
 6247 06c7 00000000 		.4byte	0
 6248 06cb 00000000 		.4byte	0
 6249              	.LLST49:
 6250 06cf 12000000 		.4byte	.LVL76
 6251 06d3 40000000 		.4byte	.LVL79
 6252 06d7 0100     		.2byte	0x1
 6253 06d9 56       		.byte	0x56
 6254 06da 86000000 		.4byte	.LVL89
 6255 06de 9E000000 		.4byte	.LVL91
 6256 06e2 0100     		.2byte	0x1
 6257 06e4 56       		.byte	0x56
 6258 06e5 C6000000 		.4byte	.LVL96
 6259 06e9 CC000000 		.4byte	.LVL98
 6260 06ed 0100     		.2byte	0x1
 6261 06ef 56       		.byte	0x56
 6262 06f0 EE000000 		.4byte	.LVL101
 6263 06f4 20010000 		.4byte	.LFE219
 6264 06f8 0100     		.2byte	0x1
 6265 06fa 56       		.byte	0x56
 6266 06fb 00000000 		.4byte	0
 6267 06ff 00000000 		.4byte	0
 6268              	.LLST50:
 6269 0703 22000000 		.4byte	.LVL77
 6270 0707 3E000000 		.4byte	.LVL78
 6271 070b 0100     		.2byte	0x1
 6272 070d 54       		.byte	0x54
 6273 070e 00000000 		.4byte	0
 6274 0712 00000000 		.4byte	0
 6275              	.LLST51:
 6276 0716 40000000 		.4byte	.LVL79
 6277 071a 7E000000 		.4byte	.LVL88
 6278 071e 0200     		.2byte	0x2
 6279 0720 30       		.byte	0x30
 6280 0721 9F       		.byte	0x9f
 6281 0722 9E000000 		.4byte	.LVL91
 6282 0726 B2000000 		.4byte	.LVL94
 6283 072a 0200     		.2byte	0x2
 6284 072c 30       		.byte	0x30
 6285 072d 9F       		.byte	0x9f
 6286 072e CC000000 		.4byte	.LVL98
 6287 0732 E6000000 		.4byte	.LVL100
 6288 0736 0200     		.2byte	0x2
 6289 0738 30       		.byte	0x30
 6290 0739 9F       		.byte	0x9f
 6291 073a 00000000 		.4byte	0
 6292 073e 00000000 		.4byte	0
 6293              	.LLST52:
 6294 0742 40000000 		.4byte	.LVL79
 6295 0746 7E000000 		.4byte	.LVL88
 6296 074a 0100     		.2byte	0x1
 6297 074c 58       		.byte	0x58
ARM GAS  /tmp/ccPmdm0I.s 			page 140


 6298 074d 9E000000 		.4byte	.LVL91
 6299 0751 B2000000 		.4byte	.LVL94
 6300 0755 0100     		.2byte	0x1
 6301 0757 58       		.byte	0x58
 6302 0758 CC000000 		.4byte	.LVL98
 6303 075c E6000000 		.4byte	.LVL100
 6304 0760 0100     		.2byte	0x1
 6305 0762 58       		.byte	0x58
 6306 0763 00000000 		.4byte	0
 6307 0767 00000000 		.4byte	0
 6308              	.LLST53:
 6309 076b 40000000 		.4byte	.LVL79
 6310 076f 4B000000 		.4byte	.LVL81-1
 6311 0773 0100     		.2byte	0x1
 6312 0775 50       		.byte	0x50
 6313 0776 4B000000 		.4byte	.LVL81-1
 6314 077a 7E000000 		.4byte	.LVL88
 6315 077e 0100     		.2byte	0x1
 6316 0780 56       		.byte	0x56
 6317 0781 9E000000 		.4byte	.LVL91
 6318 0785 B2000000 		.4byte	.LVL94
 6319 0789 0100     		.2byte	0x1
 6320 078b 56       		.byte	0x56
 6321 078c CC000000 		.4byte	.LVL98
 6322 0790 E6000000 		.4byte	.LVL100
 6323 0794 0100     		.2byte	0x1
 6324 0796 56       		.byte	0x56
 6325 0797 00000000 		.4byte	0
 6326 079b 00000000 		.4byte	0
 6327              	.LLST54:
 6328 079f 40000000 		.4byte	.LVL79
 6329 07a3 48000000 		.4byte	.LVL80
 6330 07a7 0200     		.2byte	0x2
 6331 07a9 30       		.byte	0x30
 6332 07aa 9F       		.byte	0x9f
 6333 07ab 48000000 		.4byte	.LVL80
 6334 07af 76000000 		.4byte	.LVL87
 6335 07b3 0100     		.2byte	0x1
 6336 07b5 58       		.byte	0x58
 6337 07b6 76000000 		.4byte	.LVL87
 6338 07ba 7E000000 		.4byte	.LVL88
 6339 07be 0300     		.2byte	0x3
 6340 07c0 09       		.byte	0x9
 6341 07c1 FF       		.byte	0xff
 6342 07c2 9F       		.byte	0x9f
 6343 07c3 9E000000 		.4byte	.LVL91
 6344 07c7 B2000000 		.4byte	.LVL94
 6345 07cb 0100     		.2byte	0x1
 6346 07cd 54       		.byte	0x54
 6347 07ce CC000000 		.4byte	.LVL98
 6348 07d2 E6000000 		.4byte	.LVL100
 6349 07d6 0100     		.2byte	0x1
 6350 07d8 58       		.byte	0x58
 6351 07d9 00000000 		.4byte	0
 6352 07dd 00000000 		.4byte	0
 6353              	.LLST55:
 6354 07e1 56000000 		.4byte	.LVL82
ARM GAS  /tmp/ccPmdm0I.s 			page 141


 6355 07e5 68000000 		.4byte	.LVL85
 6356 07e9 0600     		.2byte	0x6
 6357 07eb 08       		.byte	0x8
 6358 07ec 20       		.byte	0x20
 6359 07ed 75       		.byte	0x75
 6360 07ee 00       		.sleb128 0
 6361 07ef 1C       		.byte	0x1c
 6362 07f0 9F       		.byte	0x9f
 6363 07f1 68000000 		.4byte	.LVL85
 6364 07f5 74000000 		.4byte	.LVL86
 6365 07f9 0600     		.2byte	0x6
 6366 07fb 08       		.byte	0x8
 6367 07fc 21       		.byte	0x21
 6368 07fd 75       		.byte	0x75
 6369 07fe 00       		.sleb128 0
 6370 07ff 1C       		.byte	0x1c
 6371 0800 9F       		.byte	0x9f
 6372 0801 9E000000 		.4byte	.LVL91
 6373 0805 A0000000 		.4byte	.LVL92
 6374 0809 0600     		.2byte	0x6
 6375 080b 08       		.byte	0x8
 6376 080c 21       		.byte	0x21
 6377 080d 75       		.byte	0x75
 6378 080e 00       		.sleb128 0
 6379 080f 1C       		.byte	0x1c
 6380 0810 9F       		.byte	0x9f
 6381 0811 00000000 		.4byte	0
 6382 0815 00000000 		.4byte	0
 6383              	.LLST56:
 6384 0819 40000000 		.4byte	.LVL79
 6385 081d 56000000 		.4byte	.LVL82
 6386 0821 0100     		.2byte	0x1
 6387 0823 58       		.byte	0x58
 6388 0824 56000000 		.4byte	.LVL82
 6389 0828 58000000 		.4byte	.LVL83
 6390 082c 0100     		.2byte	0x1
 6391 082e 54       		.byte	0x54
 6392 082f 58000000 		.4byte	.LVL83
 6393 0833 62000000 		.4byte	.LVL84
 6394 0837 0500     		.2byte	0x5
 6395 0839 74       		.byte	0x74
 6396 083a 00       		.sleb128 0
 6397 083b 4F       		.byte	0x4f
 6398 083c 1A       		.byte	0x1a
 6399 083d 9F       		.byte	0x9f
 6400 083e 62000000 		.4byte	.LVL84
 6401 0842 7E000000 		.4byte	.LVL88
 6402 0846 0100     		.2byte	0x1
 6403 0848 54       		.byte	0x54
 6404 0849 9E000000 		.4byte	.LVL91
 6405 084d B2000000 		.4byte	.LVL94
 6406 0851 0100     		.2byte	0x1
 6407 0853 54       		.byte	0x54
 6408 0854 CC000000 		.4byte	.LVL98
 6409 0858 E6000000 		.4byte	.LVL100
 6410 085c 0100     		.2byte	0x1
 6411 085e 58       		.byte	0x58
ARM GAS  /tmp/ccPmdm0I.s 			page 142


 6412 085f 00000000 		.4byte	0
 6413 0863 00000000 		.4byte	0
 6414              	.LLST57:
 6415 0867 40000000 		.4byte	.LVL79
 6416 086b 48000000 		.4byte	.LVL80
 6417 086f 0200     		.2byte	0x2
 6418 0871 31       		.byte	0x31
 6419 0872 9F       		.byte	0x9f
 6420 0873 00000000 		.4byte	0
 6421 0877 00000000 		.4byte	0
 6422              	.LLST58:
 6423 087b 40000000 		.4byte	.LVL79
 6424 087f 48000000 		.4byte	.LVL80
 6425 0883 0100     		.2byte	0x1
 6426 0885 50       		.byte	0x50
 6427 0886 00000000 		.4byte	0
 6428 088a 00000000 		.4byte	0
 6429              	.LLST59:
 6430 088e 76000000 		.4byte	.LVL87
 6431 0892 7E000000 		.4byte	.LVL88
 6432 0896 0200     		.2byte	0x2
 6433 0898 30       		.byte	0x30
 6434 0899 9F       		.byte	0x9f
 6435 089a 9E000000 		.4byte	.LVL91
 6436 089e AE000000 		.4byte	.LVL93
 6437 08a2 0200     		.2byte	0x2
 6438 08a4 30       		.byte	0x30
 6439 08a5 9F       		.byte	0x9f
 6440 08a6 CC000000 		.4byte	.LVL98
 6441 08aa D8000000 		.4byte	.LVL99
 6442 08ae 0200     		.2byte	0x2
 6443 08b0 30       		.byte	0x30
 6444 08b1 9F       		.byte	0x9f
 6445 08b2 00000000 		.4byte	0
 6446 08b6 00000000 		.4byte	0
 6447              	.LLST60:
 6448 08ba 76000000 		.4byte	.LVL87
 6449 08be 7E000000 		.4byte	.LVL88
 6450 08c2 0100     		.2byte	0x1
 6451 08c4 56       		.byte	0x56
 6452 08c5 9E000000 		.4byte	.LVL91
 6453 08c9 AE000000 		.4byte	.LVL93
 6454 08cd 0100     		.2byte	0x1
 6455 08cf 56       		.byte	0x56
 6456 08d0 CC000000 		.4byte	.LVL98
 6457 08d4 D8000000 		.4byte	.LVL99
 6458 08d8 0100     		.2byte	0x1
 6459 08da 56       		.byte	0x56
 6460 08db 00000000 		.4byte	0
 6461 08df 00000000 		.4byte	0
 6462              		.section	.debug_aranges,"",%progbits
 6463 0000 34000000 		.4byte	0x34
 6464 0004 0200     		.2byte	0x2
 6465 0006 00000000 		.4byte	.Ldebug_info0
 6466 000a 04       		.byte	0x4
 6467 000b 00       		.byte	0
 6468 000c 0000     		.2byte	0
ARM GAS  /tmp/ccPmdm0I.s 			page 143


 6469 000e 0000     		.2byte	0
 6470 0010 00000000 		.4byte	.LFB220
 6471 0014 B2000000 		.4byte	.LFE220-.LFB220
 6472 0018 00000000 		.4byte	.LFB221
 6473 001c 48010000 		.4byte	.LFE221-.LFB221
 6474 0020 00000000 		.4byte	.LFB222
 6475 0024 5C000000 		.4byte	.LFE222-.LFB222
 6476 0028 00000000 		.4byte	.LFB219
 6477 002c 20010000 		.4byte	.LFE219-.LFB219
 6478 0030 00000000 		.4byte	0
 6479 0034 00000000 		.4byte	0
 6480              		.section	.debug_ranges,"",%progbits
 6481              	.Ldebug_ranges0:
 6482 0000 02000000 		.4byte	.LBB64
 6483 0004 04000000 		.4byte	.LBE64
 6484 0008 0A000000 		.4byte	.LBB68
 6485 000c 0E000000 		.4byte	.LBE68
 6486 0010 14000000 		.4byte	.LBB69
 6487 0014 16000000 		.4byte	.LBE69
 6488 0018 00000000 		.4byte	0
 6489 001c 00000000 		.4byte	0
 6490 0020 24000000 		.4byte	.LBB70
 6491 0024 26000000 		.4byte	.LBE70
 6492 0028 28000000 		.4byte	.LBB73
 6493 002c 2E000000 		.4byte	.LBE73
 6494 0030 00000000 		.4byte	0
 6495 0034 00000000 		.4byte	0
 6496 0038 6C000000 		.4byte	.LBB74
 6497 003c 74000000 		.4byte	.LBE74
 6498 0040 94000000 		.4byte	.LBB82
 6499 0044 A4000000 		.4byte	.LBE82
 6500 0048 00000000 		.4byte	0
 6501 004c 00000000 		.4byte	0
 6502 0050 74000000 		.4byte	.LBB77
 6503 0054 7E000000 		.4byte	.LBE77
 6504 0058 A8000000 		.4byte	.LBB83
 6505 005c B2000000 		.4byte	.LBE83
 6506 0060 00000000 		.4byte	0
 6507 0064 00000000 		.4byte	0
 6508 0068 02000000 		.4byte	.LBB84
 6509 006c 04000000 		.4byte	.LBE84
 6510 0070 0A000000 		.4byte	.LBB88
 6511 0074 0E000000 		.4byte	.LBE88
 6512 0078 14000000 		.4byte	.LBB89
 6513 007c 16000000 		.4byte	.LBE89
 6514 0080 00000000 		.4byte	0
 6515 0084 00000000 		.4byte	0
 6516 0088 C0000000 		.4byte	.LBB92
 6517 008c C2000000 		.4byte	.LBE92
 6518 0090 C4000000 		.4byte	.LBB95
 6519 0094 CA000000 		.4byte	.LBE95
 6520 0098 00000000 		.4byte	0
 6521 009c 00000000 		.4byte	0
 6522 00a0 EE000000 		.4byte	.LBB96
 6523 00a4 F6000000 		.4byte	.LBE96
 6524 00a8 2A010000 		.4byte	.LBB116
 6525 00ac 34010000 		.4byte	.LBE116
ARM GAS  /tmp/ccPmdm0I.s 			page 144


 6526 00b0 00000000 		.4byte	0
 6527 00b4 00000000 		.4byte	0
 6528 00b8 F6000000 		.4byte	.LBB99
 6529 00bc 00010000 		.4byte	.LBE99
 6530 00c0 34010000 		.4byte	.LBB117
 6531 00c4 3C010000 		.4byte	.LBE117
 6532 00c8 00000000 		.4byte	0
 6533 00cc 00000000 		.4byte	0
 6534 00d0 00010000 		.4byte	.LBB102
 6535 00d4 02010000 		.4byte	.LBE102
 6536 00d8 06010000 		.4byte	.LBB108
 6537 00dc 0C010000 		.4byte	.LBE108
 6538 00e0 00000000 		.4byte	0
 6539 00e4 00000000 		.4byte	0
 6540 00e8 04010000 		.4byte	.LBB105
 6541 00ec 06010000 		.4byte	.LBE105
 6542 00f0 0C010000 		.4byte	.LBB109
 6543 00f4 14010000 		.4byte	.LBE109
 6544 00f8 00000000 		.4byte	0
 6545 00fc 00000000 		.4byte	0
 6546 0100 1C010000 		.4byte	.LBB112
 6547 0104 1E010000 		.4byte	.LBE112
 6548 0108 20010000 		.4byte	.LBB115
 6549 010c 26010000 		.4byte	.LBE115
 6550 0110 00000000 		.4byte	0
 6551 0114 00000000 		.4byte	0
 6552 0118 02000000 		.4byte	.LBB118
 6553 011c 04000000 		.4byte	.LBE118
 6554 0120 0C000000 		.4byte	.LBB122
 6555 0124 10000000 		.4byte	.LBE122
 6556 0128 16000000 		.4byte	.LBB123
 6557 012c 1A000000 		.4byte	.LBE123
 6558 0130 00000000 		.4byte	0
 6559 0134 00000000 		.4byte	0
 6560 0138 3C000000 		.4byte	.LBB124
 6561 013c 3E000000 		.4byte	.LBE124
 6562 0140 40000000 		.4byte	.LBB130
 6563 0144 46000000 		.4byte	.LBE130
 6564 0148 4A000000 		.4byte	.LBB131
 6565 014c 4C000000 		.4byte	.LBE131
 6566 0150 50000000 		.4byte	.LBB132
 6567 0154 54000000 		.4byte	.LBE132
 6568 0158 56000000 		.4byte	.LBB133
 6569 015c 58000000 		.4byte	.LBE133
 6570 0160 00000000 		.4byte	0
 6571 0164 00000000 		.4byte	0
 6572 0168 12000000 		.4byte	.LBB142
 6573 016c 24000000 		.4byte	.LBE142
 6574 0170 2A000000 		.4byte	.LBB171
 6575 0174 2E000000 		.4byte	.LBE171
 6576 0178 36000000 		.4byte	.LBB173
 6577 017c 38000000 		.4byte	.LBE173
 6578 0180 3A000000 		.4byte	.LBB175
 6579 0184 40000000 		.4byte	.LBE175
 6580 0188 86000000 		.4byte	.LBB177
 6581 018c 9E000000 		.4byte	.LBE177
 6582 0190 C6000000 		.4byte	.LBB179
ARM GAS  /tmp/ccPmdm0I.s 			page 145


 6583 0194 CC000000 		.4byte	.LBE179
 6584 0198 EE000000 		.4byte	.LBB181
 6585 019c 20010000 		.4byte	.LBE181
 6586 01a0 00000000 		.4byte	0
 6587 01a4 00000000 		.4byte	0
 6588 01a8 24000000 		.4byte	.LBB150
 6589 01ac 2A000000 		.4byte	.LBE150
 6590 01b0 2E000000 		.4byte	.LBB172
 6591 01b4 36000000 		.4byte	.LBE172
 6592 01b8 38000000 		.4byte	.LBB174
 6593 01bc 3A000000 		.4byte	.LBE174
 6594 01c0 40000000 		.4byte	.LBB176
 6595 01c4 7E000000 		.4byte	.LBE176
 6596 01c8 9E000000 		.4byte	.LBB178
 6597 01cc B2000000 		.4byte	.LBE178
 6598 01d0 CC000000 		.4byte	.LBB180
 6599 01d4 E6000000 		.4byte	.LBE180
 6600 01d8 00000000 		.4byte	0
 6601 01dc 00000000 		.4byte	0
 6602 01e0 76000000 		.4byte	.LBB154
 6603 01e4 7E000000 		.4byte	.LBE154
 6604 01e8 9E000000 		.4byte	.LBB161
 6605 01ec A0000000 		.4byte	.LBE161
 6606 01f0 A6000000 		.4byte	.LBB162
 6607 01f4 AA000000 		.4byte	.LBE162
 6608 01f8 AC000000 		.4byte	.LBB163
 6609 01fc AE000000 		.4byte	.LBE163
 6610 0200 CC000000 		.4byte	.LBB164
 6611 0204 CE000000 		.4byte	.LBE164
 6612 0208 D2000000 		.4byte	.LBB165
 6613 020c D8000000 		.4byte	.LBE165
 6614 0210 00000000 		.4byte	0
 6615 0214 00000000 		.4byte	0
 6616 0218 00000000 		.4byte	.LFB220
 6617 021c B2000000 		.4byte	.LFE220
 6618 0220 00000000 		.4byte	.LFB221
 6619 0224 48010000 		.4byte	.LFE221
 6620 0228 00000000 		.4byte	.LFB222
 6621 022c 5C000000 		.4byte	.LFE222
 6622 0230 00000000 		.4byte	.LFB219
 6623 0234 20010000 		.4byte	.LFE219
 6624 0238 00000000 		.4byte	0
 6625 023c 00000000 		.4byte	0
 6626              		.section	.debug_line,"",%progbits
 6627              	.Ldebug_line0:
 6628 0000 7A050000 		.section	.debug_str,"MS",%progbits,1
 6628      0200BD02 
 6628      00000201 
 6628      FB0E0D00 
 6628      01010101 
 6629              	.LASF76:
 6630 0000 474D4143 		.ascii	"GMAC_TUR\000"
 6630      5F545552 
 6630      00
 6631              	.LASF316:
 6632 0009 474D4143 		.ascii	"GMAC_TIMEOUT\000"
 6632      5F54494D 
ARM GAS  /tmp/ccPmdm0I.s 			page 146


 6632      454F5554 
 6632      00
 6633              	.LASF208:
 6634 0016 5F666C6F 		.ascii	"_flock_t\000"
 6634      636B5F74 
 6634      00
 6635              	.LASF340:
 6636 001f 75635F66 		.ascii	"uc_fd\000"
 6636      6400
 6637              	.LASF331:
 6638 0025 75635F70 		.ascii	"uc_phy_address\000"
 6638      68795F61 
 6638      64647265 
 6638      737300
 6639              	.LASF152:
 6640 0034 474D4143 		.ascii	"GMAC_ST2CW01\000"
 6640      5F535432 
 6640      43573031 
 6640      00
 6641              	.LASF154:
 6642 0041 474D4143 		.ascii	"GMAC_ST2CW02\000"
 6642      5F535432 
 6642      43573032 
 6642      00
 6643              	.LASF156:
 6644 004e 474D4143 		.ascii	"GMAC_ST2CW03\000"
 6644      5F535432 
 6644      43573033 
 6644      00
 6645              	.LASF63:
 6646 005b 474D4143 		.ascii	"GMAC_OTLO\000"
 6646      5F4F544C 
 6646      4F00
 6647              	.LASF339:
 6648 0065 75635F73 		.ascii	"uc_speed\000"
 6648      70656564 
 6648      00
 6649              	.LASF162:
 6650 006e 474D4143 		.ascii	"GMAC_ST2CW06\000"
 6650      5F535432 
 6650      43573036 
 6650      00
 6651              	.LASF164:
 6652 007b 474D4143 		.ascii	"GMAC_ST2CW07\000"
 6652      5F535432 
 6652      43573037 
 6652      00
 6653              	.LASF166:
 6654 0088 474D4143 		.ascii	"GMAC_ST2CW08\000"
 6654      5F535432 
 6654      43573038 
 6654      00
 6655              	.LASF168:
 6656 0095 474D4143 		.ascii	"GMAC_ST2CW09\000"
 6656      5F535432 
 6656      43573039 
 6656      00
ARM GAS  /tmp/ccPmdm0I.s 			page 147


 6657              	.LASF115:
 6658 00a2 474D4143 		.ascii	"GMAC_TI\000"
 6658      5F544900 
 6659              	.LASF123:
 6660 00aa 474D4143 		.ascii	"GMAC_PEFRN\000"
 6660      5F504546 
 6660      524E00
 6661              	.LASF113:
 6662 00b5 474D4143 		.ascii	"GMAC_TN\000"
 6662      5F544E00 
 6663              	.LASF41:
 6664 00bd 474D4143 		.ascii	"GMAC_HRB\000"
 6664      5F485242 
 6664      00
 6665              	.LASF79:
 6666 00c6 474D4143 		.ascii	"GMAC_EC\000"
 6666      5F454300 
 6667              	.LASF275:
 6668 00ce 63686172 		.ascii	"char\000"
 6668      00
 6669              	.LASF97:
 6670 00d3 474D4143 		.ascii	"GMAC_OFR\000"
 6670      5F4F4652 
 6670      00
 6671              	.LASF225:
 6672 00dc 5F6F6E5F 		.ascii	"_on_exit_args\000"
 6672      65786974 
 6672      5F617267 
 6672      7300
 6673              	.LASF22:
 6674 00ea 474D4143 		.ascii	"GMAC_NCFGR\000"
 6674      5F4E4346 
 6674      475200
 6675              	.LASF42:
 6676 00f5 474D4143 		.ascii	"GMAC_HRT\000"
 6676      5F485254 
 6676      00
 6677              	.LASF91:
 6678 00fe 474D4143 		.ascii	"GMAC_TBFR255\000"
 6678      5F544246 
 6678      52323535 
 6678      00
 6679              	.LASF343:
 6680 010b 756C5F73 		.ascii	"ul_stat1\000"
 6680      74617431 
 6680      00
 6681              	.LASF290:
 6682 0114 5F723438 		.ascii	"_r48\000"
 6682      00
 6683              	.LASF101:
 6684 0119 474D4143 		.ascii	"GMAC_RSE\000"
 6684      5F525345 
 6684      00
 6685              	.LASF59:
 6686 0122 474D4143 		.ascii	"GMAC_EFRSH\000"
 6686      5F454652 
 6686      534800
ARM GAS  /tmp/ccPmdm0I.s 			page 148


 6687              	.LASF118:
 6688 012d 474D4143 		.ascii	"GMAC_EFRSL\000"
 6688      5F454652 
 6688      534C00
 6689              	.LASF28:
 6690 0138 474D4143 		.ascii	"GMAC_TBQB\000"
 6690      5F544251 
 6690      4200
 6691              	.LASF151:
 6692 0142 474D4143 		.ascii	"GMAC_ST2CW10\000"
 6692      5F535432 
 6692      43573130 
 6692      00
 6693              	.LASF29:
 6694 014f 474D4143 		.ascii	"GMAC_RSR\000"
 6694      5F525352 
 6694      00
 6695              	.LASF155:
 6696 0158 474D4143 		.ascii	"GMAC_ST2CW12\000"
 6696      5F535432 
 6696      43573132 
 6696      00
 6697              	.LASF157:
 6698 0165 474D4143 		.ascii	"GMAC_ST2CW13\000"
 6698      5F535432 
 6698      43573133 
 6698      00
 6699              	.LASF159:
 6700 0172 474D4143 		.ascii	"GMAC_ST2CW14\000"
 6700      5F535432 
 6700      43573134 
 6700      00
 6701              	.LASF161:
 6702 017f 474D4143 		.ascii	"GMAC_ST2CW15\000"
 6702      5F535432 
 6702      43573135 
 6702      00
 6703              	.LASF163:
 6704 018c 474D4143 		.ascii	"GMAC_ST2CW16\000"
 6704      5F535432 
 6704      43573136 
 6704      00
 6705              	.LASF165:
 6706 0199 474D4143 		.ascii	"GMAC_ST2CW17\000"
 6706      5F535432 
 6706      43573137 
 6706      00
 6707              	.LASF341:
 6708 01a6 65746865 		.ascii	"ethernet_phy_set_link\000"
 6708      726E6574 
 6708      5F706879 
 6708      5F736574 
 6708      5F6C696E 
 6709              	.LASF119:
 6710 01bc 474D4143 		.ascii	"GMAC_EFRN\000"
 6710      5F454652 
 6710      4E00
ARM GAS  /tmp/ccPmdm0I.s 			page 149


 6711              	.LASF239:
 6712 01c6 5F6C6266 		.ascii	"_lbfsize\000"
 6712      73697A65 
 6712      00
 6713              	.LASF237:
 6714 01cf 5F666C61 		.ascii	"_flags\000"
 6714      677300
 6715              	.LASF24:
 6716 01d6 474D4143 		.ascii	"GMAC_UR\000"
 6716      5F555200 
 6717              	.LASF254:
 6718 01de 5F657272 		.ascii	"_errno\000"
 6718      6E6F00
 6719              	.LASF85:
 6720 01e5 474D4143 		.ascii	"GMAC_FR\000"
 6720      5F465200 
 6721              	.LASF33:
 6722 01ed 474D4143 		.ascii	"GMAC_IMR\000"
 6722      5F494D52 
 6722      00
 6723              	.LASF65:
 6724 01f6 474D4143 		.ascii	"GMAC_FT\000"
 6724      5F465400 
 6725              	.LASF336:
 6726 01fe 756C5F76 		.ascii	"ul_value\000"
 6726      616C7565 
 6726      00
 6727              	.LASF323:
 6728 0207 474D4143 		.ascii	"GMAC_PHY_MII\000"
 6728      5F504859 
 6728      5F4D4949 
 6728      00
 6729              	.LASF27:
 6730 0214 474D4143 		.ascii	"GMAC_RBQB\000"
 6730      5F524251 
 6730      4200
 6731              	.LASF72:
 6732 021e 474D4143 		.ascii	"GMAC_TBFT511\000"
 6732      5F544246 
 6732      54353131 
 6732      00
 6733              	.LASF251:
 6734 022b 5F6D6273 		.ascii	"_mbstate\000"
 6734      74617465 
 6734      00
 6735              	.LASF298:
 6736 0234 5F6D6272 		.ascii	"_mbrtowc_state\000"
 6736      746F7763 
 6736      5F737461 
 6736      746500
 6737              	.LASF178:
 6738 0243 474D4143 		.ascii	"GMAC_ST2CW014\000"
 6738      5F535432 
 6738      43573031 
 6738      3400
 6739              	.LASF241:
 6740 0251 5F726561 		.ascii	"_read\000"
ARM GAS  /tmp/ccPmdm0I.s 			page 150


 6740      6400
 6741              	.LASF209:
 6742 0257 5F5F554C 		.ascii	"__ULong\000"
 6742      6F6E6700 
 6743              	.LASF349:
 6744 025f 6D6F6465 		.ascii	"mode\000"
 6744      00
 6745              	.LASF297:
 6746 0264 5F6D6272 		.ascii	"_mbrlen_state\000"
 6746      6C656E5F 
 6746      73746174 
 6746      6500
 6747              	.LASF188:
 6748 0272 474D4143 		.ascii	"GMAC_ST2CW019\000"
 6748      5F535432 
 6748      43573031 
 6748      3900
 6749              	.LASF25:
 6750 0280 474D4143 		.ascii	"GMAC_DCFGR\000"
 6750      5F444346 
 6750      475200
 6751              	.LASF284:
 6752 028b 5F756E75 		.ascii	"_unused_rand\000"
 6752      7365645F 
 6752      72616E64 
 6752      00
 6753              	.LASF360:
 6754 0298 676D6163 		.ascii	"gmac_enable_receive\000"
 6754      5F656E61 
 6754      626C655F 
 6754      72656365 
 6754      69766500 
 6755              	.LASF324:
 6756 02ac 474D4143 		.ascii	"GMAC_PHY_RMII\000"
 6756      5F504859 
 6756      5F524D49 
 6756      4900
 6757              	.LASF256:
 6758 02ba 5F737464 		.ascii	"_stdout\000"
 6758      6F757400 
 6759              	.LASF71:
 6760 02c2 474D4143 		.ascii	"GMAC_TBFT255\000"
 6760      5F544246 
 6760      54323535 
 6760      00
 6761              	.LASF201:
 6762 02cf 5F66706F 		.ascii	"_fpos_t\000"
 6762      735F7400 
 6763              	.LASF232:
 6764 02d7 5F666E73 		.ascii	"_fns\000"
 6764      00
 6765              	.LASF50:
 6766 02dc 474D4143 		.ascii	"GMAC_SVLAN\000"
 6766      5F53564C 
 6766      414E00
 6767              	.LASF240:
 6768 02e7 5F636F6F 		.ascii	"_cookie\000"
ARM GAS  /tmp/ccPmdm0I.s 			page 151


 6768      6B696500 
 6769              	.LASF321:
 6770 02ef 474D4143 		.ascii	"GMAC_PARAM\000"
 6770      5F504152 
 6770      414D00
 6771              	.LASF309:
 6772 02fa 675F696E 		.ascii	"g_interrupt_enabled\000"
 6772      74657272 
 6772      7570745F 
 6772      656E6162 
 6772      6C656400 
 6773              	.LASF214:
 6774 030e 5F426967 		.ascii	"_Bigint\000"
 6774      696E7400 
 6775              	.LASF52:
 6776 0316 474D4143 		.ascii	"GMAC_SAMB1\000"
 6776      5F53414D 
 6776      423100
 6777              	.LASF222:
 6778 0321 5F5F746D 		.ascii	"__tm_wday\000"
 6778      5F776461 
 6778      7900
 6779              	.LASF327:
 6780 032b 70687949 		.ascii	"phyInitialized\000"
 6780      6E697469 
 6780      616C697A 
 6780      656400
 6781              	.LASF264:
 6782 033a 5F726573 		.ascii	"_result\000"
 6782      756C7400 
 6783              	.LASF105:
 6784 0342 474D4143 		.ascii	"GMAC_IHCE\000"
 6784      5F494843 
 6784      4500
 6785              	.LASF335:
 6786 034c 65746865 		.ascii	"ethernet_phy_auto_negotiate\000"
 6786      726E6574 
 6786      5F706879 
 6786      5F617574 
 6786      6F5F6E65 
 6787              	.LASF14:
 6788 0368 75696E74 		.ascii	"uint32_t\000"
 6788      33325F74 
 6788      00
 6789              	.LASF218:
 6790 0371 5F5F746D 		.ascii	"__tm_hour\000"
 6790      5F686F75 
 6790      7200
 6791              	.LASF347:
 6792 037b 75635F73 		.ascii	"uc_start_addr\000"
 6792      74617274 
 6792      5F616464 
 6792      7200
 6793              	.LASF107:
 6794 0389 474D4143 		.ascii	"GMAC_UCE\000"
 6794      5F554345 
 6794      00
ARM GAS  /tmp/ccPmdm0I.s 			page 152


 6795              	.LASF259:
 6796 0392 5F656D65 		.ascii	"_emergency\000"
 6796      7267656E 
 6796      637900
 6797              	.LASF109:
 6798 039d 474D4143 		.ascii	"GMAC_TISUBN\000"
 6798      5F544953 
 6798      55424E00 
 6799              	.LASF255:
 6800 03a9 5F737464 		.ascii	"_stdin\000"
 6800      696E00
 6801              	.LASF205:
 6802 03b0 5F5F636F 		.ascii	"__count\000"
 6802      756E7400 
 6803              	.LASF117:
 6804 03b8 474D4143 		.ascii	"GMAC_EFTN\000"
 6804      5F454654 
 6804      4E00
 6805              	.LASF313:
 6806 03c2 666C6F61 		.ascii	"float\000"
 6806      7400
 6807              	.LASF83:
 6808 03c8 474D4143 		.ascii	"GMAC_ORLO\000"
 6808      5F4F524C 
 6808      4F00
 6809              	.LASF217:
 6810 03d2 5F5F746D 		.ascii	"__tm_min\000"
 6810      5F6D696E 
 6810      00
 6811              	.LASF306:
 6812 03db 5F696D70 		.ascii	"_impure_ptr\000"
 6812      7572655F 
 6812      70747200 
 6813              	.LASF303:
 6814 03e7 5F6E6578 		.ascii	"_nextf\000"
 6814      746600
 6815              	.LASF93:
 6816 03ee 474D4143 		.ascii	"GMAC_TBFR1023\000"
 6816      5F544246 
 6816      52313032 
 6816      3300
 6817              	.LASF299:
 6818 03fc 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 6818      72746F77 
 6818      63735F73 
 6818      74617465 
 6818      00
 6819              	.LASF325:
 6820 040d 474D4143 		.ascii	"GMAC_PHY_INVALID\000"
 6820      5F504859 
 6820      5F494E56 
 6820      414C4944 
 6820      00
 6821              	.LASF87:
 6822 041e 474D4143 		.ascii	"GMAC_MFR\000"
 6822      5F4D4652 
 6822      00
ARM GAS  /tmp/ccPmdm0I.s 			page 153


 6823              	.LASF67:
 6824 0427 474D4143 		.ascii	"GMAC_MFT\000"
 6824      5F4D4654 
 6824      00
 6825              	.LASF295:
 6826 0430 5F736967 		.ascii	"_signal_buf\000"
 6826      6E616C5F 
 6826      62756600 
 6827              	.LASF11:
 6828 043c 6C6F6E67 		.ascii	"long long unsigned int\000"
 6828      206C6F6E 
 6828      6720756E 
 6828      7369676E 
 6828      65642069 
 6829              	.LASF286:
 6830 0453 5F617363 		.ascii	"_asctime_buf\000"
 6830      74696D65 
 6830      5F627566 
 6830      00
 6831              	.LASF280:
 6832 0460 5F72616E 		.ascii	"_rand48\000"
 6832      64343800 
 6833              	.LASF171:
 6834 0468 474D4143 		.ascii	"GMAC_ST2CW110\000"
 6834      5F535432 
 6834      43573131 
 6834      3000
 6835              	.LASF173:
 6836 0476 474D4143 		.ascii	"GMAC_ST2CW111\000"
 6836      5F535432 
 6836      43573131 
 6836      3100
 6837              	.LASF175:
 6838 0484 474D4143 		.ascii	"GMAC_ST2CW112\000"
 6838      5F535432 
 6838      43573131 
 6838      3200
 6839              	.LASF177:
 6840 0492 474D4143 		.ascii	"GMAC_ST2CW113\000"
 6840      5F535432 
 6840      43573131 
 6840      3300
 6841              	.LASF179:
 6842 04a0 474D4143 		.ascii	"GMAC_ST2CW114\000"
 6842      5F535432 
 6842      43573131 
 6842      3400
 6843              	.LASF181:
 6844 04ae 474D4143 		.ascii	"GMAC_ST2CW115\000"
 6844      5F535432 
 6844      43573131 
 6844      3500
 6845              	.LASF183:
 6846 04bc 474D4143 		.ascii	"GMAC_ST2CW116\000"
 6846      5F535432 
 6846      43573131 
 6846      3600
ARM GAS  /tmp/ccPmdm0I.s 			page 154


 6847              	.LASF185:
 6848 04ca 474D4143 		.ascii	"GMAC_ST2CW117\000"
 6848      5F535432 
 6848      43573131 
 6848      3700
 6849              	.LASF187:
 6850 04d8 474D4143 		.ascii	"GMAC_ST2CW118\000"
 6850      5F535432 
 6850      43573131 
 6850      3800
 6851              	.LASF189:
 6852 04e6 474D4143 		.ascii	"GMAC_ST2CW119\000"
 6852      5F535432 
 6852      43573131 
 6852      3900
 6853              	.LASF276:
 6854 04f4 5F5F4649 		.ascii	"__FILE\000"
 6854      4C4500
 6855              	.LASF302:
 6856 04fb 5F685F65 		.ascii	"_h_errno\000"
 6856      72726E6F 
 6856      00
 6857              	.LASF18:
 6858 0504 474D4143 		.ascii	"GMAC_SAB\000"
 6858      5F534142 
 6858      00
 6859              	.LASF248:
 6860 050d 5F6F6666 		.ascii	"_offset\000"
 6860      73657400 
 6861              	.LASF75:
 6862 0515 474D4143 		.ascii	"GMAC_GTBFT1518\000"
 6862      5F475442 
 6862      46543135 
 6862      313800
 6863              	.LASF121:
 6864 0524 474D4143 		.ascii	"GMAC_PEFTN\000"
 6864      5F504546 
 6864      544E00
 6865              	.LASF20:
 6866 052f 476D6163 		.ascii	"GmacSa\000"
 6866      536100
 6867              	.LASF19:
 6868 0536 474D4143 		.ascii	"GMAC_SAT\000"
 6868      5F534154 
 6868      00
 6869              	.LASF364:
 6870 053f 2E2E2F61 		.ascii	"../asf/sam/components/ethernet_phy/ksz8081rna/ether"
 6870      73662F73 
 6870      616D2F63 
 6870      6F6D706F 
 6870      6E656E74 
 6871 0572 6E65745F 		.ascii	"net_phy.c\000"
 6871      7068792E 
 6871      6300
 6872              	.LASF352:
 6873 057c 756C5F6D 		.ascii	"ul_mck\000"
 6873      636B00
ARM GAS  /tmp/ccPmdm0I.s 			page 155


 6874              	.LASF317:
 6875 0583 474D4143 		.ascii	"GMAC_TX_BUSY\000"
 6875      5F54585F 
 6875      42555359 
 6875      00
 6876              	.LASF354:
 6877 0590 676D6163 		.ascii	"gmac_select_mii_mode\000"
 6877      5F73656C 
 6877      6563745F 
 6877      6D69695F 
 6877      6D6F6465 
 6878              	.LASF142:
 6879 05a5 474D4143 		.ascii	"GMAC_IERPQ\000"
 6879      5F494552 
 6879      505100
 6880              	.LASF191:
 6881 05b0 474D4143 		.ascii	"GMAC_ST2CW120\000"
 6881      5F535432 
 6881      43573132 
 6881      3000
 6882              	.LASF193:
 6883 05be 474D4143 		.ascii	"GMAC_ST2CW121\000"
 6883      5F535432 
 6883      43573132 
 6883      3100
 6884              	.LASF195:
 6885 05cc 474D4143 		.ascii	"GMAC_ST2CW122\000"
 6885      5F535432 
 6885      43573132 
 6885      3200
 6886              	.LASF197:
 6887 05da 474D4143 		.ascii	"GMAC_ST2CW123\000"
 6887      5F535432 
 6887      43573132 
 6887      3300
 6888              	.LASF328:
 6889 05e8 705F676D 		.ascii	"p_gmac\000"
 6889      616300
 6890              	.LASF100:
 6891 05ef 474D4143 		.ascii	"GMAC_LFFE\000"
 6891      5F4C4646 
 6891      4500
 6892              	.LASF216:
 6893 05f9 5F5F746D 		.ascii	"__tm_sec\000"
 6893      5F736563 
 6893      00
 6894              	.LASF144:
 6895 0602 474D4143 		.ascii	"GMAC_IDRPQ\000"
 6895      5F494452 
 6895      505100
 6896              	.LASF308:
 6897 060d 7375626F 		.ascii	"suboptarg\000"
 6897      70746172 
 6897      6700
 6898              	.LASF223:
 6899 0617 5F5F746D 		.ascii	"__tm_yday\000"
 6899      5F796461 
ARM GAS  /tmp/ccPmdm0I.s 			page 156


 6899      7900
 6900              	.LASF258:
 6901 0621 5F696E63 		.ascii	"_inc\000"
 6901      00
 6902              	.LASF310:
 6903 0626 5F426F6F 		.ascii	"_Bool\000"
 6903      6C00
 6904              	.LASF356:
 6905 062c 75635F65 		.ascii	"uc_enable\000"
 6905      6E61626C 
 6905      6500
 6906              	.LASF94:
 6907 0636 474D4143 		.ascii	"GMAC_TBFR1518\000"
 6907      5F544246 
 6907      52313531 
 6907      3800
 6908              	.LASF312:
 6909 0644 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 6909      6972715F 
 6909      70726576 
 6909      5F696E74 
 6909      65727275 
 6910              	.LASF210:
 6911 0661 5F6E6578 		.ascii	"_next\000"
 6911      7400
 6912              	.LASF361:
 6913 0667 676D6163 		.ascii	"gmac_phy_write\000"
 6913      5F706879 
 6913      5F777269 
 6913      746500
 6914              	.LASF329:
 6915 0676 75635F70 		.ascii	"uc_phy_addr\000"
 6915      68795F61 
 6915      64647200 
 6916              	.LASF53:
 6917 0682 474D4143 		.ascii	"GMAC_SAMT1\000"
 6917      5F53414D 
 6917      543100
 6918              	.LASF98:
 6919 068d 474D4143 		.ascii	"GMAC_JR\000"
 6919      5F4A5200 
 6920              	.LASF86:
 6921 0695 474D4143 		.ascii	"GMAC_BCFR\000"
 6921      5F424346 
 6921      5200
 6922              	.LASF66:
 6923 069f 474D4143 		.ascii	"GMAC_BCFT\000"
 6923      5F424346 
 6923      5400
 6924              	.LASF206:
 6925 06a9 5F5F7661 		.ascii	"__value\000"
 6925      6C756500 
 6926              	.LASF266:
 6927 06b1 5F703573 		.ascii	"_p5s\000"
 6927      00
 6928              	.LASF330:
 6929 06b6 756C5F62 		.ascii	"ul_bmcr\000"
ARM GAS  /tmp/ccPmdm0I.s 			page 157


 6929      6D637200 
 6930              	.LASF301:
 6931 06be 5F776373 		.ascii	"_wcsrtombs_state\000"
 6931      72746F6D 
 6931      62735F73 
 6931      74617465 
 6931      00
 6932              	.LASF291:
 6933 06cf 5F6D626C 		.ascii	"_mblen_state\000"
 6933      656E5F73 
 6933      74617465 
 6933      00
 6934              	.LASF77:
 6935 06dc 474D4143 		.ascii	"GMAC_SCF\000"
 6935      5F534346 
 6935      00
 6936              	.LASF57:
 6937 06e5 474D4143 		.ascii	"GMAC_SCH\000"
 6937      5F534348 
 6937      00
 6938              	.LASF219:
 6939 06ee 5F5F746D 		.ascii	"__tm_mday\000"
 6939      5F6D6461 
 6939      7900
 6940              	.LASF272:
 6941 06f8 5F736967 		.ascii	"_sig_func\000"
 6941      5F66756E 
 6941      6300
 6942              	.LASF56:
 6943 0702 474D4143 		.ascii	"GMAC_SCL\000"
 6943      5F53434C 
 6943      00
 6944              	.LASF271:
 6945 070b 5F617465 		.ascii	"_atexit0\000"
 6945      78697430 
 6945      00
 6946              	.LASF6:
 6947 0714 5F5F696E 		.ascii	"__int32_t\000"
 6947      7433325F 
 6947      7400
 6948              	.LASF184:
 6949 071e 474D4143 		.ascii	"GMAC_ST2CW017\000"
 6949      5F535432 
 6949      43573031 
 6949      3700
 6950              	.LASF95:
 6951 072c 474D4143 		.ascii	"GMAC_TMXBFR\000"
 6951      5F544D58 
 6951      42465200 
 6952              	.LASF365:
 6953 0738 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70_RTOS"
 6953      652F746F 
 6953      72626A6F 
 6953      726E2F65 
 6953      636C6970 
 6954 076b 00       		.ascii	"\000"
 6955              	.LASF88:
ARM GAS  /tmp/ccPmdm0I.s 			page 158


 6956 076c 474D4143 		.ascii	"GMAC_PFR\000"
 6956      5F504652 
 6956      00
 6957              	.LASF68:
 6958 0775 474D4143 		.ascii	"GMAC_PFT\000"
 6958      5F504654 
 6958      00
 6959              	.LASF21:
 6960 077e 474D4143 		.ascii	"GMAC_NCR\000"
 6960      5F4E4352 
 6960      00
 6961              	.LASF265:
 6962 0787 5F726573 		.ascii	"_result_k\000"
 6962      756C745F 
 6962      6B00
 6963              	.LASF322:
 6964 0791 474D4143 		.ascii	"GMAC_INVALID\000"
 6964      5F494E56 
 6964      414C4944 
 6964      00
 6965              	.LASF0:
 6966 079e 756E7369 		.ascii	"unsigned int\000"
 6966      676E6564 
 6966      20696E74 
 6966      00
 6967              	.LASF203:
 6968 07ab 5F5F7763 		.ascii	"__wch\000"
 6968      6800
 6969              	.LASF12:
 6970 07b1 75696E74 		.ascii	"uint8_t\000"
 6970      385F7400 
 6971              	.LASF90:
 6972 07b9 474D4143 		.ascii	"GMAC_TBFR127\000"
 6972      5F544246 
 6972      52313237 
 6972      00
 6973              	.LASF244:
 6974 07c6 5F636C6F 		.ascii	"_close\000"
 6974      736500
 6975              	.LASF262:
 6976 07cd 5F5F7364 		.ascii	"__sdidinit\000"
 6976      6964696E 
 6976      697400
 6977              	.LASF60:
 6978 07d8 474D4143 		.ascii	"GMAC_PEFTSH\000"
 6978      5F504546 
 6978      54534800 
 6979              	.LASF55:
 6980 07e4 474D4143 		.ascii	"GMAC_NSC\000"
 6980      5F4E5343 
 6980      00
 6981              	.LASF114:
 6982 07ed 474D4143 		.ascii	"GMAC_TA\000"
 6982      5F544100 
 6983              	.LASF23:
 6984 07f5 474D4143 		.ascii	"GMAC_NSR\000"
 6984      5F4E5352 
ARM GAS  /tmp/ccPmdm0I.s 			page 159


 6984      00
 6985              	.LASF80:
 6986 07fe 474D4143 		.ascii	"GMAC_LC\000"
 6986      5F4C4300 
 6987              	.LASF150:
 6988 0806 474D4143 		.ascii	"GMAC_ST2CW00\000"
 6988      5F535432 
 6988      43573030 
 6988      00
 6989              	.LASF10:
 6990 0813 6C6F6E67 		.ascii	"long long int\000"
 6990      206C6F6E 
 6990      6720696E 
 6990      7400
 6991              	.LASF134:
 6992 0821 474D4143 		.ascii	"GMAC_CBSISQA\000"
 6992      5F434253 
 6992      49535141 
 6992      00
 6993              	.LASF135:
 6994 082e 474D4143 		.ascii	"GMAC_CBSISQB\000"
 6994      5F434253 
 6994      49535142 
 6994      00
 6995              	.LASF234:
 6996 083b 5F626173 		.ascii	"_base\000"
 6996      6500
 6997              	.LASF267:
 6998 0841 5F667265 		.ascii	"_freelist\000"
 6998      656C6973 
 6998      7400
 6999              	.LASF30:
 7000 084b 474D4143 		.ascii	"GMAC_ISR\000"
 7000      5F495352 
 7000      00
 7001              	.LASF282:
 7002 0854 5F6D756C 		.ascii	"_mult\000"
 7002      7400
 7003              	.LASF283:
 7004 085a 5F616464 		.ascii	"_add\000"
 7004      00
 7005              	.LASF362:
 7006 085f 676D6163 		.ascii	"gmac_phy_read\000"
 7006      5F706879 
 7006      5F726561 
 7006      6400
 7007              	.LASF300:
 7008 086d 5F776372 		.ascii	"_wcrtomb_state\000"
 7008      746F6D62 
 7008      5F737461 
 7008      746500
 7009              	.LASF198:
 7010 087c 476D6163 		.ascii	"Gmac\000"
 7010      00
 7011              	.LASF32:
 7012 0881 474D4143 		.ascii	"GMAC_IDR\000"
 7012      5F494452 
ARM GAS  /tmp/ccPmdm0I.s 			page 160


 7012      00
 7013              	.LASF146:
 7014 088a 474D4143 		.ascii	"GMAC_IMRPQ\000"
 7014      5F494D52 
 7014      505100
 7015              	.LASF99:
 7016 0895 474D4143 		.ascii	"GMAC_FCSE\000"
 7016      5F464353 
 7016      4500
 7017              	.LASF213:
 7018 089f 5F776473 		.ascii	"_wds\000"
 7018      00
 7019              	.LASF139:
 7020 08a4 474D4143 		.ascii	"GMAC_ST2RPQ\000"
 7020      5F535432 
 7020      52505100 
 7021              	.LASF73:
 7022 08b0 474D4143 		.ascii	"GMAC_TBFT1023\000"
 7022      5F544246 
 7022      54313032 
 7022      3300
 7023              	.LASF338:
 7024 08be 756C5F70 		.ascii	"ul_phy_analpar\000"
 7024      68795F61 
 7024      6E616C70 
 7024      617200
 7025              	.LASF263:
 7026 08cd 5F5F636C 		.ascii	"__cleanup\000"
 7026      65616E75 
 7026      7000
 7027              	.LASF319:
 7028 08d7 474D4143 		.ascii	"GMAC_RX_NO_DATA\000"
 7028      5F52585F 
 7028      4E4F5F44 
 7028      41544100 
 7029              	.LASF207:
 7030 08e7 5F6D6273 		.ascii	"_mbstate_t\000"
 7030      74617465 
 7030      5F7400
 7031              	.LASF345:
 7032 08f2 65746865 		.ascii	"ethernet_phy_init\000"
 7032      726E6574 
 7032      5F706879 
 7032      5F696E69 
 7032      7400
 7033              	.LASF40:
 7034 0904 52657365 		.ascii	"Reserved1\000"
 7034      72766564 
 7034      3100
 7035              	.LASF54:
 7036 090e 52657365 		.ascii	"Reserved2\000"
 7036      72766564 
 7036      3200
 7037              	.LASF62:
 7038 0918 52657365 		.ascii	"Reserved3\000"
 7038      72766564 
 7038      3300
ARM GAS  /tmp/ccPmdm0I.s 			page 161


 7039              	.LASF108:
 7040 0922 52657365 		.ascii	"Reserved4\000"
 7040      72766564 
 7040      3400
 7041              	.LASF111:
 7042 092c 52657365 		.ascii	"Reserved5\000"
 7042      72766564 
 7042      3500
 7043              	.LASF124:
 7044 0936 52657365 		.ascii	"Reserved6\000"
 7044      72766564 
 7044      3600
 7045              	.LASF224:
 7046 0940 5F5F746D 		.ascii	"__tm_isdst\000"
 7046      5F697364 
 7046      737400
 7047              	.LASF245:
 7048 094b 5F756275 		.ascii	"_ubuf\000"
 7048      6600
 7049              	.LASF130:
 7050 0951 52657365 		.ascii	"Reserved9\000"
 7050      72766564 
 7050      3900
 7051              	.LASF81:
 7052 095b 474D4143 		.ascii	"GMAC_DTF\000"
 7052      5F445446 
 7052      00
 7053              	.LASF333:
 7054 0964 75635F72 		.ascii	"uc_rc\000"
 7054      6300
 7055              	.LASF82:
 7056 096a 474D4143 		.ascii	"GMAC_CSE\000"
 7056      5F435345 
 7056      00
 7057              	.LASF231:
 7058 0973 5F696E64 		.ascii	"_ind\000"
 7058      00
 7059              	.LASF26:
 7060 0978 474D4143 		.ascii	"GMAC_TSR\000"
 7060      5F545352 
 7060      00
 7061              	.LASF320:
 7062 0981 474D4143 		.ascii	"GMAC_SIZE_TOO_SMALL\000"
 7062      5F53495A 
 7062      455F544F 
 7062      4F5F534D 
 7062      414C4C00 
 7063              	.LASF44:
 7064 0995 474D4143 		.ascii	"GMAC_TIDM1\000"
 7064      5F544944 
 7064      4D3100
 7065              	.LASF45:
 7066 09a0 474D4143 		.ascii	"GMAC_TIDM2\000"
 7066      5F544944 
 7066      4D3200
 7067              	.LASF337:
 7068 09ab 756C5F70 		.ascii	"ul_phy_anar\000"
ARM GAS  /tmp/ccPmdm0I.s 			page 162


 7068      68795F61 
 7068      6E617200 
 7069              	.LASF47:
 7070 09b7 474D4143 		.ascii	"GMAC_TIDM4\000"
 7070      5F544944 
 7070      4D3400
 7071              	.LASF129:
 7072 09c2 474D4143 		.ascii	"GMAC_RBQBAPQ\000"
 7072      5F524251 
 7072      42415051 
 7072      00
 7073              	.LASF38:
 7074 09cf 474D4143 		.ascii	"GMAC_RPSF\000"
 7074      5F525053 
 7074      4600
 7075              	.LASF70:
 7076 09d9 474D4143 		.ascii	"GMAC_TBFT127\000"
 7076      5F544246 
 7076      54313237 
 7076      00
 7077              	.LASF220:
 7078 09e6 5F5F746D 		.ascii	"__tm_mon\000"
 7078      5F6D6F6E 
 7078      00
 7079              	.LASF17:
 7080 09ef 53797374 		.ascii	"SystemCoreClock\000"
 7080      656D436F 
 7080      7265436C 
 7080      6F636B00 
 7081              	.LASF242:
 7082 09ff 5F777269 		.ascii	"_write\000"
 7082      746500
 7083              	.LASF288:
 7084 0a06 5F67616D 		.ascii	"_gamma_signgam\000"
 7084      6D615F73 
 7084      69676E67 
 7084      616D00
 7085              	.LASF49:
 7086 0a15 474D4143 		.ascii	"GMAC_IPGS\000"
 7086      5F495047 
 7086      5300
 7087              	.LASF344:
 7088 0a1f 756C5F73 		.ascii	"ul_stat2\000"
 7088      74617432 
 7088      00
 7089              	.LASF8:
 7090 0a28 5F5F7569 		.ascii	"__uint32_t\000"
 7090      6E743332 
 7090      5F7400
 7091              	.LASF230:
 7092 0a33 5F617465 		.ascii	"_atexit\000"
 7092      78697400 
 7093              	.LASF148:
 7094 0a3b 474D4143 		.ascii	"GMAC_ST2ER\000"
 7094      5F535432 
 7094      455200
 7095              	.LASF326:
ARM GAS  /tmp/ccPmdm0I.s 			page 163


 7096 0a46 676D6163 		.ascii	"gmac_mii_mode_t\000"
 7096      5F6D6969 
 7096      5F6D6F64 
 7096      655F7400 
 7097              	.LASF353:
 7098 0a56 756C5F63 		.ascii	"ul_clk\000"
 7098      6C6B00
 7099              	.LASF131:
 7100 0a5d 474D4143 		.ascii	"GMAC_RBSRPQ\000"
 7100      5F524253 
 7100      52505100 
 7101              	.LASF36:
 7102 0a69 474D4143 		.ascii	"GMAC_TPQ\000"
 7102      5F545051 
 7102      00
 7103              	.LASF3:
 7104 0a72 73686F72 		.ascii	"short int\000"
 7104      7420696E 
 7104      7400
 7105              	.LASF61:
 7106 0a7c 474D4143 		.ascii	"GMAC_PEFRSH\000"
 7106      5F504546 
 7106      52534800 
 7107              	.LASF126:
 7108 0a88 52657365 		.ascii	"Reserved7\000"
 7108      72766564 
 7108      3700
 7109              	.LASF128:
 7110 0a92 52657365 		.ascii	"Reserved8\000"
 7110      72766564 
 7110      3800
 7111              	.LASF122:
 7112 0a9c 474D4143 		.ascii	"GMAC_PEFRSL\000"
 7112      5F504546 
 7112      52534C00 
 7113              	.LASF7:
 7114 0aa8 6C6F6E67 		.ascii	"long int\000"
 7114      20696E74 
 7114      00
 7115              	.LASF16:
 7116 0ab1 49544D5F 		.ascii	"ITM_RxBuffer\000"
 7116      52784275 
 7116      66666572 
 7116      00
 7117              	.LASF96:
 7118 0abe 474D4143 		.ascii	"GMAC_UFR\000"
 7118      5F554652 
 7118      00
 7119              	.LASF39:
 7120 0ac7 474D4143 		.ascii	"GMAC_RJFML\000"
 7120      5F524A46 
 7120      4D4C00
 7121              	.LASF69:
 7122 0ad2 474D4143 		.ascii	"GMAC_BFT64\000"
 7122      5F424654 
 7122      363400
 7123              	.LASF315:
ARM GAS  /tmp/ccPmdm0I.s 			page 164


 7124 0add 474D4143 		.ascii	"GMAC_OK\000"
 7124      5F4F4B00 
 7125              	.LASF274:
 7126 0ae5 5F5F7366 		.ascii	"__sf\000"
 7126      00
 7127              	.LASF212:
 7128 0aea 5F736967 		.ascii	"_sign\000"
 7128      6E00
 7129              	.LASF261:
 7130 0af0 5F637572 		.ascii	"_current_locale\000"
 7130      72656E74 
 7130      5F6C6F63 
 7130      616C6500 
 7131              	.LASF167:
 7132 0b00 474D4143 		.ascii	"GMAC_ST2CW18\000"
 7132      5F535432 
 7132      43573138 
 7132      00
 7133              	.LASF249:
 7134 0b0d 5F646174 		.ascii	"_data\000"
 7134      6100
 7135              	.LASF204:
 7136 0b13 5F5F7763 		.ascii	"__wchb\000"
 7136      686200
 7137              	.LASF307:
 7138 0b1a 5F676C6F 		.ascii	"_global_impure_ptr\000"
 7138      62616C5F 
 7138      696D7075 
 7138      72655F70 
 7138      747200
 7139              	.LASF358:
 7140 0b2d 676D6163 		.ascii	"gmac_enable_management\000"
 7140      5F656E61 
 7140      626C655F 
 7140      6D616E61 
 7140      67656D65 
 7141              	.LASF221:
 7142 0b44 5F5F746D 		.ascii	"__tm_year\000"
 7142      5F796561 
 7142      7200
 7143              	.LASF238:
 7144 0b4e 5F66696C 		.ascii	"_file\000"
 7144      6500
 7145              	.LASF127:
 7146 0b54 474D4143 		.ascii	"GMAC_TBQBAPQ\000"
 7146      5F544251 
 7146      42415051 
 7146      00
 7147              	.LASF285:
 7148 0b61 5F737472 		.ascii	"_strtok_last\000"
 7148      746F6B5F 
 7148      6C617374 
 7148      00
 7149              	.LASF287:
 7150 0b6e 5F6C6F63 		.ascii	"_localtime_buf\000"
 7150      616C7469 
 7150      6D655F62 
ARM GAS  /tmp/ccPmdm0I.s 			page 165


 7150      756600
 7151              	.LASF64:
 7152 0b7d 474D4143 		.ascii	"GMAC_OTHI\000"
 7152      5F4F5448 
 7152      4900
 7153              	.LASF305:
 7154 0b87 5F756E75 		.ascii	"_unused\000"
 7154      73656400 
 7155              	.LASF5:
 7156 0b8f 5F5F7569 		.ascii	"__uint8_t\000"
 7156      6E74385F 
 7156      7400
 7157              	.LASF270:
 7158 0b99 5F6E6577 		.ascii	"_new\000"
 7158      00
 7159              	.LASF268:
 7160 0b9e 5F637674 		.ascii	"_cvtlen\000"
 7160      6C656E00 
 7161              	.LASF211:
 7162 0ba6 5F6D6178 		.ascii	"_maxwds\000"
 7162      77647300 
 7163              	.LASF294:
 7164 0bae 5F6C3634 		.ascii	"_l64a_buf\000"
 7164      615F6275 
 7164      6600
 7165              	.LASF260:
 7166 0bb8 5F637572 		.ascii	"_current_category\000"
 7166      72656E74 
 7166      5F636174 
 7166      65676F72 
 7166      7900
 7167              	.LASF158:
 7168 0bca 474D4143 		.ascii	"GMAC_ST2CW04\000"
 7168      5F535432 
 7168      43573034 
 7168      00
 7169              	.LASF160:
 7170 0bd7 474D4143 		.ascii	"GMAC_ST2CW05\000"
 7170      5F535432 
 7170      43573035 
 7170      00
 7171              	.LASF37:
 7172 0be4 474D4143 		.ascii	"GMAC_TPSF\000"
 7172      5F545053 
 7172      4600
 7173              	.LASF102:
 7174 0bee 474D4143 		.ascii	"GMAC_AE\000"
 7174      5F414500 
 7175              	.LASF247:
 7176 0bf6 5F626C6B 		.ascii	"_blksize\000"
 7176      73697A65 
 7176      00
 7177              	.LASF215:
 7178 0bff 5F5F746D 		.ascii	"__tm\000"
 7178      00
 7179              	.LASF120:
 7180 0c04 474D4143 		.ascii	"GMAC_PEFTSL\000"
ARM GAS  /tmp/ccPmdm0I.s 			page 166


 7180      5F504546 
 7180      54534C00 
 7181              	.LASF332:
 7182 0c10 756C5F74 		.ascii	"ul_timeout\000"
 7182      696D656F 
 7182      757400
 7183              	.LASF250:
 7184 0c1b 5F6C6F63 		.ascii	"_lock\000"
 7184      6B00
 7185              	.LASF15:
 7186 0c21 73697A65 		.ascii	"sizetype\000"
 7186      74797065 
 7186      00
 7187              	.LASF9:
 7188 0c2a 6C6F6E67 		.ascii	"long unsigned int\000"
 7188      20756E73 
 7188      69676E65 
 7188      6420696E 
 7188      7400
 7189              	.LASF48:
 7190 0c3c 474D4143 		.ascii	"GMAC_WOL\000"
 7190      5F574F4C 
 7190      00
 7191              	.LASF311:
 7192 0c45 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 7192      6972715F 
 7192      63726974 
 7192      6963616C 
 7192      5F736563 
 7193              	.LASF278:
 7194 0c66 5F6E696F 		.ascii	"_niobs\000"
 7194      627300
 7195              	.LASF202:
 7196 0c6d 77696E74 		.ascii	"wint_t\000"
 7196      5F7400
 7197              	.LASF46:
 7198 0c74 474D4143 		.ascii	"GMAC_TIDM3\000"
 7198      5F544944 
 7198      4D3300
 7199              	.LASF104:
 7200 0c7f 474D4143 		.ascii	"GMAC_ROE\000"
 7200      5F524F45 
 7200      00
 7201              	.LASF13:
 7202 0c88 696E7433 		.ascii	"int32_t\000"
 7202      325F7400 
 7203              	.LASF51:
 7204 0c90 474D4143 		.ascii	"GMAC_TPFCP\000"
 7204      5F545046 
 7204      435000
 7205              	.LASF106:
 7206 0c9b 474D4143 		.ascii	"GMAC_TCE\000"
 7206      5F544345 
 7206      00
 7207              	.LASF227:
 7208 0ca4 5F64736F 		.ascii	"_dso_handle\000"
 7208      5F68616E 
ARM GAS  /tmp/ccPmdm0I.s 			page 167


 7208      646C6500 
 7209              	.LASF133:
 7210 0cb0 474D4143 		.ascii	"GMAC_CBSCR\000"
 7210      5F434253 
 7210      435200
 7211              	.LASF355:
 7212 0cbb 676D6163 		.ascii	"gmac_enable_full_duplex\000"
 7212      5F656E61 
 7212      626C655F 
 7212      66756C6C 
 7212      5F647570 
 7213              	.LASF269:
 7214 0cd3 5F637674 		.ascii	"_cvtbuf\000"
 7214      62756600 
 7215              	.LASF2:
 7216 0cdb 756E7369 		.ascii	"unsigned char\000"
 7216      676E6564 
 7216      20636861 
 7216      7200
 7217              	.LASF132:
 7218 0ce9 52657365 		.ascii	"Reserved10\000"
 7218      72766564 
 7218      313000
 7219              	.LASF136:
 7220 0cf4 52657365 		.ascii	"Reserved11\000"
 7220      72766564 
 7220      313100
 7221              	.LASF138:
 7222 0cff 52657365 		.ascii	"Reserved12\000"
 7222      72766564 
 7222      313200
 7223              	.LASF140:
 7224 0d0a 52657365 		.ascii	"Reserved13\000"
 7224      72766564 
 7224      313300
 7225              	.LASF141:
 7226 0d15 52657365 		.ascii	"Reserved14\000"
 7226      72766564 
 7226      313400
 7227              	.LASF143:
 7228 0d20 52657365 		.ascii	"Reserved15\000"
 7228      72766564 
 7228      313500
 7229              	.LASF145:
 7230 0d2b 52657365 		.ascii	"Reserved16\000"
 7230      72766564 
 7230      313600
 7231              	.LASF147:
 7232 0d36 52657365 		.ascii	"Reserved17\000"
 7232      72766564 
 7232      313700
 7233              	.LASF149:
 7234 0d41 52657365 		.ascii	"Reserved18\000"
 7234      72766564 
 7234      313800
 7235              	.LASF199:
 7236 0d4c 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
ARM GAS  /tmp/ccPmdm0I.s 			page 168


 7236      4B5F5245 
 7236      43555253 
 7236      4956455F 
 7236      5400
 7237              	.LASF170:
 7238 0d5e 474D4143 		.ascii	"GMAC_ST2CW010\000"
 7238      5F535432 
 7238      43573031 
 7238      3000
 7239              	.LASF172:
 7240 0d6c 474D4143 		.ascii	"GMAC_ST2CW011\000"
 7240      5F535432 
 7240      43573031 
 7240      3100
 7241              	.LASF174:
 7242 0d7a 474D4143 		.ascii	"GMAC_ST2CW012\000"
 7242      5F535432 
 7242      43573031 
 7242      3200
 7243              	.LASF176:
 7244 0d88 474D4143 		.ascii	"GMAC_ST2CW013\000"
 7244      5F535432 
 7244      43573031 
 7244      3300
 7245              	.LASF78:
 7246 0d96 474D4143 		.ascii	"GMAC_MCF\000"
 7246      5F4D4346 
 7246      00
 7247              	.LASF180:
 7248 0d9f 474D4143 		.ascii	"GMAC_ST2CW015\000"
 7248      5F535432 
 7248      43573031 
 7248      3500
 7249              	.LASF182:
 7250 0dad 474D4143 		.ascii	"GMAC_ST2CW016\000"
 7250      5F535432 
 7250      43573031 
 7250      3600
 7251              	.LASF110:
 7252 0dbb 474D4143 		.ascii	"GMAC_TSH\000"
 7252      5F545348 
 7252      00
 7253              	.LASF186:
 7254 0dc4 474D4143 		.ascii	"GMAC_ST2CW018\000"
 7254      5F535432 
 7254      43573031 
 7254      3800
 7255              	.LASF58:
 7256 0dd2 474D4143 		.ascii	"GMAC_EFTSH\000"
 7256      5F454654 
 7256      534800
 7257              	.LASF350:
 7258 0ddd 65746865 		.ascii	"ethernet_phy_find_valid\000"
 7258      726E6574 
 7258      5F706879 
 7258      5F66696E 
 7258      645F7661 
ARM GAS  /tmp/ccPmdm0I.s 			page 169


 7259              	.LASF112:
 7260 0df5 474D4143 		.ascii	"GMAC_TSL\000"
 7260      5F54534C 
 7260      00
 7261              	.LASF116:
 7262 0dfe 474D4143 		.ascii	"GMAC_EFTSL\000"
 7262      5F454654 
 7262      534C00
 7263              	.LASF363:
 7264 0e09 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 7264      43393920 
 7264      362E332E 
 7264      31203230 
 7264      31373036 
 7265 0e3c 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 7265      76352D64 
 7265      3136202D 
 7265      6D666C6F 
 7265      61742D61 
 7266 0e6f 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 7266      6E2D7365 
 7266      6374696F 
 7266      6E73202D 
 7266      66646174 
 7267 0ea2 6F6E7374 		.ascii	"onstant\000"
 7267      616E7400 
 7268              	.LASF359:
 7269 0eaa 676D6163 		.ascii	"gmac_enable_transmit\000"
 7269      5F656E61 
 7269      626C655F 
 7269      7472616E 
 7269      736D6974 
 7270              	.LASF233:
 7271 0ebf 5F5F7362 		.ascii	"__sbuf\000"
 7271      756600
 7272              	.LASF348:
 7273 0ec6 75635F63 		.ascii	"uc_cnt\000"
 7273      6E7400
 7274              	.LASF35:
 7275 0ecd 474D4143 		.ascii	"GMAC_RPQ\000"
 7275      5F525051 
 7275      00
 7276              	.LASF277:
 7277 0ed6 5F676C75 		.ascii	"_glue\000"
 7277      6500
 7278              	.LASF153:
 7279 0edc 474D4143 		.ascii	"GMAC_ST2CW11\000"
 7279      5F535432 
 7279      43573131 
 7279      00
 7280              	.LASF273:
 7281 0ee9 5F5F7367 		.ascii	"__sglue\000"
 7281      6C756500 
 7282              	.LASF296:
 7283 0ef1 5F676574 		.ascii	"_getdate_err\000"
 7283      64617465 
 7283      5F657272 
ARM GAS  /tmp/ccPmdm0I.s 			page 170


 7283      00
 7284              	.LASF318:
 7285 0efe 474D4143 		.ascii	"GMAC_RX_ERROR\000"
 7285      5F52585F 
 7285      4552524F 
 7285      5200
 7286              	.LASF292:
 7287 0f0c 5F6D6274 		.ascii	"_mbtowc_state\000"
 7287      6F77635F 
 7287      73746174 
 7287      6500
 7288              	.LASF169:
 7289 0f1a 474D4143 		.ascii	"GMAC_ST2CW19\000"
 7289      5F535432 
 7289      43573139 
 7289      00
 7290              	.LASF34:
 7291 0f27 474D4143 		.ascii	"GMAC_MAN\000"
 7291      5F4D414E 
 7291      00
 7292              	.LASF226:
 7293 0f30 5F666E61 		.ascii	"_fnargs\000"
 7293      72677300 
 7294              	.LASF1:
 7295 0f38 7369676E 		.ascii	"signed char\000"
 7295      65642063 
 7295      68617200 
 7296              	.LASF342:
 7297 0f44 75635F61 		.ascii	"uc_apply_setting_flag\000"
 7297      70706C79 
 7297      5F736574 
 7297      74696E67 
 7297      5F666C61 
 7298              	.LASF351:
 7299 0f5a 676D6163 		.ascii	"gmac_set_mdc_clock\000"
 7299      5F736574 
 7299      5F6D6463 
 7299      5F636C6F 
 7299      636B00
 7300              	.LASF253:
 7301 0f6d 5F726565 		.ascii	"_reent\000"
 7301      6E7400
 7302              	.LASF4:
 7303 0f74 73686F72 		.ascii	"short unsigned int\000"
 7303      7420756E 
 7303      7369676E 
 7303      65642069 
 7303      6E7400
 7304              	.LASF190:
 7305 0f87 474D4143 		.ascii	"GMAC_ST2CW020\000"
 7305      5F535432 
 7305      43573032 
 7305      3000
 7306              	.LASF192:
 7307 0f95 474D4143 		.ascii	"GMAC_ST2CW021\000"
 7307      5F535432 
 7307      43573032 
ARM GAS  /tmp/ccPmdm0I.s 			page 171


 7307      3100
 7308              	.LASF194:
 7309 0fa3 474D4143 		.ascii	"GMAC_ST2CW022\000"
 7309      5F535432 
 7309      43573032 
 7309      3200
 7310              	.LASF196:
 7311 0fb1 474D4143 		.ascii	"GMAC_ST2CW023\000"
 7311      5F535432 
 7311      43573032 
 7311      3300
 7312              	.LASF31:
 7313 0fbf 474D4143 		.ascii	"GMAC_IER\000"
 7313      5F494552 
 7313      00
 7314              	.LASF228:
 7315 0fc8 5F666E74 		.ascii	"_fntypes\000"
 7315      79706573 
 7315      00
 7316              	.LASF236:
 7317 0fd1 5F5F7346 		.ascii	"__sFILE\000"
 7317      494C4500 
 7318              	.LASF235:
 7319 0fd9 5F73697A 		.ascii	"_size\000"
 7319      6500
 7320              	.LASF314:
 7321 0fdf 646F7562 		.ascii	"double\000"
 7321      6C6500
 7322              	.LASF293:
 7323 0fe6 5F776374 		.ascii	"_wctomb_state\000"
 7323      6F6D625F 
 7323      73746174 
 7323      6500
 7324              	.LASF43:
 7325 0ff4 474D4143 		.ascii	"GMAC_SA\000"
 7325      5F534100 
 7326              	.LASF200:
 7327 0ffc 5F6F6666 		.ascii	"_off_t\000"
 7327      5F7400
 7328              	.LASF84:
 7329 1003 474D4143 		.ascii	"GMAC_ORHI\000"
 7329      5F4F5248 
 7329      4900
 7330              	.LASF74:
 7331 100d 474D4143 		.ascii	"GMAC_TBFT1518\000"
 7331      5F544246 
 7331      54313531 
 7331      3800
 7332              	.LASF246:
 7333 101b 5F6E6275 		.ascii	"_nbuf\000"
 7333      6600
 7334              	.LASF137:
 7335 1021 474D4143 		.ascii	"GMAC_ST1RPQ\000"
 7335      5F535431 
 7335      52505100 
 7336              	.LASF357:
 7337 102d 676D6163 		.ascii	"gmac_set_speed\000"
ARM GAS  /tmp/ccPmdm0I.s 			page 172


 7337      5F736574 
 7337      5F737065 
 7337      656400
 7338              	.LASF252:
 7339 103c 5F666C61 		.ascii	"_flags2\000"
 7339      67733200 
 7340              	.LASF346:
 7341 1044 75635F70 		.ascii	"uc_phy\000"
 7341      687900
 7342              	.LASF229:
 7343 104b 5F69735F 		.ascii	"_is_cxa\000"
 7343      63786100 
 7344              	.LASF92:
 7345 1053 474D4143 		.ascii	"GMAC_TBFR511\000"
 7345      5F544246 
 7345      52353131 
 7345      00
 7346              	.LASF281:
 7347 1060 5F736565 		.ascii	"_seed\000"
 7347      6400
 7348              	.LASF289:
 7349 1066 5F72616E 		.ascii	"_rand_next\000"
 7349      645F6E65 
 7349      787400
 7350              	.LASF334:
 7351 1071 65746865 		.ascii	"ethernet_phy_reset\000"
 7351      726E6574 
 7351      5F706879 
 7351      5F726573 
 7351      657400
 7352              	.LASF243:
 7353 1084 5F736565 		.ascii	"_seek\000"
 7353      6B00
 7354              	.LASF125:
 7355 108a 474D4143 		.ascii	"GMAC_ISRPQ\000"
 7355      5F495352 
 7355      505100
 7356              	.LASF89:
 7357 1095 474D4143 		.ascii	"GMAC_BFR64\000"
 7357      5F424652 
 7357      363400
 7358              	.LASF257:
 7359 10a0 5F737464 		.ascii	"_stderr\000"
 7359      65727200 
 7360              	.LASF304:
 7361 10a8 5F6E6D61 		.ascii	"_nmalloc\000"
 7361      6C6C6F63 
 7361      00
 7362              	.LASF279:
 7363 10b1 5F696F62 		.ascii	"_iobs\000"
 7363      7300
 7364              	.LASF103:
 7365 10b7 474D4143 		.ascii	"GMAC_RRE\000"
 7365      5F525245 
 7365      00
 7366              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
