ARM GAS  /tmp/cc2fwsRs.s 			page 1


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
  12              		.file	"gmac_phy.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.gmac_phy_read,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	gmac_phy_read
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	gmac_phy_read, %function
  25              	gmac_phy_read:
  26              	.LFB219:
  27              		.file 1 "../asf/sam/drivers/gmac/gmac_phy.c"
   1:../asf/sam/drivers/gmac/gmac_phy.c **** /**
   2:../asf/sam/drivers/gmac/gmac_phy.c ****  * \file
   3:../asf/sam/drivers/gmac/gmac_phy.c ****  *
   4:../asf/sam/drivers/gmac/gmac_phy.c ****  * \brief GMAC PHY (Ethernet MAC) driver for SAM.
   5:../asf/sam/drivers/gmac/gmac_phy.c ****  *
   6:../asf/sam/drivers/gmac/gmac_phy.c ****  * Copyright (c) 2013-2016 Atmel Corporation. All rights reserved.
   7:../asf/sam/drivers/gmac/gmac_phy.c ****  *
   8:../asf/sam/drivers/gmac/gmac_phy.c ****  * \asf_license_start
   9:../asf/sam/drivers/gmac/gmac_phy.c ****  *
  10:../asf/sam/drivers/gmac/gmac_phy.c ****  * \page License
  11:../asf/sam/drivers/gmac/gmac_phy.c ****  *
  12:../asf/sam/drivers/gmac/gmac_phy.c ****  * Redistribution and use in source and binary forms, with or without
  13:../asf/sam/drivers/gmac/gmac_phy.c ****  * modification, are permitted provided that the following conditions are met:
  14:../asf/sam/drivers/gmac/gmac_phy.c ****  *
  15:../asf/sam/drivers/gmac/gmac_phy.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../asf/sam/drivers/gmac/gmac_phy.c ****  *    this list of conditions and the following disclaimer.
  17:../asf/sam/drivers/gmac/gmac_phy.c ****  *
  18:../asf/sam/drivers/gmac/gmac_phy.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../asf/sam/drivers/gmac/gmac_phy.c ****  *    this list of conditions and the following disclaimer in the documentation
  20:../asf/sam/drivers/gmac/gmac_phy.c ****  *    and/or other materials provided with the distribution.
  21:../asf/sam/drivers/gmac/gmac_phy.c ****  *
  22:../asf/sam/drivers/gmac/gmac_phy.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../asf/sam/drivers/gmac/gmac_phy.c ****  *    from this software without specific prior written permission.
  24:../asf/sam/drivers/gmac/gmac_phy.c ****  *
  25:../asf/sam/drivers/gmac/gmac_phy.c ****  * 4. This software may only be redistributed and used in connection with an
  26:../asf/sam/drivers/gmac/gmac_phy.c ****  *    Atmel microcontroller product.
  27:../asf/sam/drivers/gmac/gmac_phy.c ****  *
  28:../asf/sam/drivers/gmac/gmac_phy.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../asf/sam/drivers/gmac/gmac_phy.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../asf/sam/drivers/gmac/gmac_phy.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
ARM GAS  /tmp/cc2fwsRs.s 			page 2


  31:../asf/sam/drivers/gmac/gmac_phy.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:../asf/sam/drivers/gmac/gmac_phy.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../asf/sam/drivers/gmac/gmac_phy.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../asf/sam/drivers/gmac/gmac_phy.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../asf/sam/drivers/gmac/gmac_phy.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../asf/sam/drivers/gmac/gmac_phy.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../asf/sam/drivers/gmac/gmac_phy.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../asf/sam/drivers/gmac/gmac_phy.c ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../asf/sam/drivers/gmac/gmac_phy.c ****  *
  40:../asf/sam/drivers/gmac/gmac_phy.c ****  * \asf_license_stop
  41:../asf/sam/drivers/gmac/gmac_phy.c ****  *
  42:../asf/sam/drivers/gmac/gmac_phy.c ****  */
  43:../asf/sam/drivers/gmac/gmac_phy.c **** /*
  44:../asf/sam/drivers/gmac/gmac_phy.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../asf/sam/drivers/gmac/gmac_phy.c ****  */
  46:../asf/sam/drivers/gmac/gmac_phy.c **** 
  47:../asf/sam/drivers/gmac/gmac_phy.c **** #include "compiler.h"
  48:../asf/sam/drivers/gmac/gmac_phy.c **** #include "gmac.h"
  49:../asf/sam/drivers/gmac/gmac_phy.c **** #include <string.h>
  50:../asf/sam/drivers/gmac/gmac_phy.c **** #include "conf_eth.h"
  51:../asf/sam/drivers/gmac/gmac_phy.c **** 
  52:../asf/sam/drivers/gmac/gmac_phy.c **** /// @cond 0
  53:../asf/sam/drivers/gmac/gmac_phy.c **** /**INDENT-OFF**/
  54:../asf/sam/drivers/gmac/gmac_phy.c **** #ifdef __cplusplus
  55:../asf/sam/drivers/gmac/gmac_phy.c **** extern "C" {
  56:../asf/sam/drivers/gmac/gmac_phy.c **** #endif
  57:../asf/sam/drivers/gmac/gmac_phy.c **** /**INDENT-ON**/
  58:../asf/sam/drivers/gmac/gmac_phy.c **** /// @endcond
  59:../asf/sam/drivers/gmac/gmac_phy.c **** 
  60:../asf/sam/drivers/gmac/gmac_phy.c **** /**
  61:../asf/sam/drivers/gmac/gmac_phy.c ****  * \defgroup gmac_group Ethernet PHY Media Access Controller
  62:../asf/sam/drivers/gmac/gmac_phy.c ****  *
  63:../asf/sam/drivers/gmac/gmac_phy.c ****  * See \ref gmac_quickstart.
  64:../asf/sam/drivers/gmac/gmac_phy.c ****  *
  65:../asf/sam/drivers/gmac/gmac_phy.c ****  * Driver for the GMAC PHY (Ethernet Media Access Controller).
  66:../asf/sam/drivers/gmac/gmac_phy.c ****  * This file contains basic functions for the GMAC PHY.
  67:../asf/sam/drivers/gmac/gmac_phy.c ****  *
  68:../asf/sam/drivers/gmac/gmac_phy.c ****  * \section dependencies Dependencies
  69:../asf/sam/drivers/gmac/gmac_phy.c ****  * This driver does not depend on other modules.
  70:../asf/sam/drivers/gmac/gmac_phy.c ****  *
  71:../asf/sam/drivers/gmac/gmac_phy.c ****  * @{
  72:../asf/sam/drivers/gmac/gmac_phy.c ****  */
  73:../asf/sam/drivers/gmac/gmac_phy.c **** 
  74:../asf/sam/drivers/gmac/gmac_phy.c **** /**
  75:../asf/sam/drivers/gmac/gmac_phy.c ****  * \brief Wait PHY operation to be completed.
  76:../asf/sam/drivers/gmac/gmac_phy.c ****  *
  77:../asf/sam/drivers/gmac/gmac_phy.c ****  * \param p_gmac HW controller address.
  78:../asf/sam/drivers/gmac/gmac_phy.c ****  * \param ul_retry The retry times.
  79:../asf/sam/drivers/gmac/gmac_phy.c ****  *
  80:../asf/sam/drivers/gmac/gmac_phy.c ****  * Return GMAC_OK if the operation is completed successfully.
  81:../asf/sam/drivers/gmac/gmac_phy.c ****  */
  82:../asf/sam/drivers/gmac/gmac_phy.c **** static uint8_t gmac_phy_wait(Gmac* p_gmac, const uint32_t ul_retry)
  83:../asf/sam/drivers/gmac/gmac_phy.c **** {
  84:../asf/sam/drivers/gmac/gmac_phy.c **** 	volatile uint32_t ul_retry_count = 0;
  85:../asf/sam/drivers/gmac/gmac_phy.c **** 
  86:../asf/sam/drivers/gmac/gmac_phy.c **** 	while (!gmac_is_phy_idle(p_gmac)) {
  87:../asf/sam/drivers/gmac/gmac_phy.c **** 		ul_retry_count++;
ARM GAS  /tmp/cc2fwsRs.s 			page 3


  88:../asf/sam/drivers/gmac/gmac_phy.c **** 
  89:../asf/sam/drivers/gmac/gmac_phy.c **** 		if (ul_retry_count >= ul_retry) {
  90:../asf/sam/drivers/gmac/gmac_phy.c **** 			return GMAC_TIMEOUT;
  91:../asf/sam/drivers/gmac/gmac_phy.c **** 		}
  92:../asf/sam/drivers/gmac/gmac_phy.c **** 	}
  93:../asf/sam/drivers/gmac/gmac_phy.c **** 	return GMAC_OK;
  94:../asf/sam/drivers/gmac/gmac_phy.c **** }
  95:../asf/sam/drivers/gmac/gmac_phy.c **** 
  96:../asf/sam/drivers/gmac/gmac_phy.c **** /**
  97:../asf/sam/drivers/gmac/gmac_phy.c ****  * \brief Read the PHY register.
  98:../asf/sam/drivers/gmac/gmac_phy.c ****  *
  99:../asf/sam/drivers/gmac/gmac_phy.c ****  * \param p_gmac   Pointer to the GMAC instance.
 100:../asf/sam/drivers/gmac/gmac_phy.c ****  * \param uc_phy_address PHY address.
 101:../asf/sam/drivers/gmac/gmac_phy.c ****  * \param uc_address Register address.
 102:../asf/sam/drivers/gmac/gmac_phy.c ****  * \param p_value Pointer to a 32-bit location to store read data.
 103:../asf/sam/drivers/gmac/gmac_phy.c ****  *
 104:../asf/sam/drivers/gmac/gmac_phy.c ****  * \Return GMAC_OK if successfully, GMAC_TIMEOUT if timeout.
 105:../asf/sam/drivers/gmac/gmac_phy.c ****  */
 106:../asf/sam/drivers/gmac/gmac_phy.c **** uint8_t gmac_phy_read(Gmac* p_gmac, uint8_t uc_phy_address, uint8_t uc_address,
 107:../asf/sam/drivers/gmac/gmac_phy.c **** 		uint32_t* p_value)
 108:../asf/sam/drivers/gmac/gmac_phy.c **** {
  28              		.loc 1 108 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 8
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              		@ link register save eliminated.
  33              	.LVL0:
  34 0000 70B4     		push	{r4, r5, r6}
  35              		.cfi_def_cfa_offset 12
  36              		.cfi_offset 4, -12
  37              		.cfi_offset 5, -8
  38              		.cfi_offset 6, -4
  39 0002 83B0     		sub	sp, sp, #12
  40              		.cfi_def_cfa_offset 24
  41              	.L2:
  42              	.LBB18:
  43              	.LBB19:
  44              		.file 2 "../asf/sam/drivers/gmac/gmac.h"
   1:../asf/sam/drivers/gmac/gmac.h ****  /**
   2:../asf/sam/drivers/gmac/gmac.h ****  * \file
   3:../asf/sam/drivers/gmac/gmac.h ****  *
   4:../asf/sam/drivers/gmac/gmac.h ****  * \brief GMAC (Ethernet MAC) driver for SAM.
   5:../asf/sam/drivers/gmac/gmac.h ****  *
   6:../asf/sam/drivers/gmac/gmac.h ****  * Copyright (c) 2013-2016 Atmel Corporation. All rights reserved.
   7:../asf/sam/drivers/gmac/gmac.h ****  *
   8:../asf/sam/drivers/gmac/gmac.h ****  * \asf_license_start
   9:../asf/sam/drivers/gmac/gmac.h ****  *
  10:../asf/sam/drivers/gmac/gmac.h ****  * \page License
  11:../asf/sam/drivers/gmac/gmac.h ****  *
  12:../asf/sam/drivers/gmac/gmac.h ****  * Redistribution and use in source and binary forms, with or without
  13:../asf/sam/drivers/gmac/gmac.h ****  * modification, are permitted provided that the following conditions are met:
  14:../asf/sam/drivers/gmac/gmac.h ****  *
  15:../asf/sam/drivers/gmac/gmac.h ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../asf/sam/drivers/gmac/gmac.h ****  *    this list of conditions and the following disclaimer.
  17:../asf/sam/drivers/gmac/gmac.h ****  *
  18:../asf/sam/drivers/gmac/gmac.h ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../asf/sam/drivers/gmac/gmac.h ****  *    this list of conditions and the following disclaimer in the documentation
ARM GAS  /tmp/cc2fwsRs.s 			page 4


  20:../asf/sam/drivers/gmac/gmac.h ****  *    and/or other materials provided with the distribution.
  21:../asf/sam/drivers/gmac/gmac.h ****  *
  22:../asf/sam/drivers/gmac/gmac.h ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../asf/sam/drivers/gmac/gmac.h ****  *    from this software without specific prior written permission.
  24:../asf/sam/drivers/gmac/gmac.h ****  *
  25:../asf/sam/drivers/gmac/gmac.h ****  * 4. This software may only be redistributed and used in connection with an
  26:../asf/sam/drivers/gmac/gmac.h ****  *    Atmel microcontroller product.
  27:../asf/sam/drivers/gmac/gmac.h ****  *
  28:../asf/sam/drivers/gmac/gmac.h ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../asf/sam/drivers/gmac/gmac.h ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../asf/sam/drivers/gmac/gmac.h ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
  31:../asf/sam/drivers/gmac/gmac.h ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:../asf/sam/drivers/gmac/gmac.h ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../asf/sam/drivers/gmac/gmac.h ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../asf/sam/drivers/gmac/gmac.h ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../asf/sam/drivers/gmac/gmac.h ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../asf/sam/drivers/gmac/gmac.h ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../asf/sam/drivers/gmac/gmac.h ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../asf/sam/drivers/gmac/gmac.h ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../asf/sam/drivers/gmac/gmac.h ****  *
  40:../asf/sam/drivers/gmac/gmac.h ****  * \asf_license_stop
  41:../asf/sam/drivers/gmac/gmac.h ****  *
  42:../asf/sam/drivers/gmac/gmac.h ****  */
  43:../asf/sam/drivers/gmac/gmac.h **** /*
  44:../asf/sam/drivers/gmac/gmac.h ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../asf/sam/drivers/gmac/gmac.h ****  */
  46:../asf/sam/drivers/gmac/gmac.h **** 
  47:../asf/sam/drivers/gmac/gmac.h **** #ifndef GMAC_H_INCLUDED
  48:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_H_INCLUDED
  49:../asf/sam/drivers/gmac/gmac.h **** 
  50:../asf/sam/drivers/gmac/gmac.h **** #include "compiler.h"
  51:../asf/sam/drivers/gmac/gmac.h **** 
  52:../asf/sam/drivers/gmac/gmac.h **** /// @cond 0
  53:../asf/sam/drivers/gmac/gmac.h **** /**INDENT-OFF**/
  54:../asf/sam/drivers/gmac/gmac.h **** #ifdef __cplusplus
  55:../asf/sam/drivers/gmac/gmac.h **** extern "C" {
  56:../asf/sam/drivers/gmac/gmac.h **** #endif
  57:../asf/sam/drivers/gmac/gmac.h **** /**INDENT-ON**/
  58:../asf/sam/drivers/gmac/gmac.h **** /// @endcond
  59:../asf/sam/drivers/gmac/gmac.h **** 
  60:../asf/sam/drivers/gmac/gmac.h **** /** The buffer addresses written into the descriptors must be aligned, so the
  61:../asf/sam/drivers/gmac/gmac.h ****     last few bits are zero.  These bits have special meaning for the GMAC
  62:../asf/sam/drivers/gmac/gmac.h ****     peripheral and cannot be used as part of the address. */
  63:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_ADDR_MASK      0xFFFFFFFC
  64:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_WRAP           (1ul << 1)  /**< Wrap bit */
  65:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_OWNERSHIP      (1ul << 0)  /**< Ownership bit */
  66:../asf/sam/drivers/gmac/gmac.h **** 
  67:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_BROADCAST      (1ul << 31) /**< Broadcast detected */
  68:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_MULTIHASH      (1ul << 30) /**< Multicast hash match */
  69:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_UNIHASH        (1ul << 29) /**< Unicast hash match */
  70:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_ADDR_FOUND     (1ul << 27) /**< Specific address match found */
  71:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_ADDR           (3ul << 25) /**< Address match */
  72:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_RXCOEN         (1ul << 24) /**< RXCOEN related function */
  73:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_TYPE           (3ul << 22) /**< Type ID match */
  74:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_VLAN           (1ul << 21) /**< VLAN tag detected */
  75:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_PRIORITY       (1ul << 20) /**< Priority tag detected */
  76:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_PRIORITY_MASK  (3ul << 17) /**< VLAN priority */
ARM GAS  /tmp/cc2fwsRs.s 			page 5


  77:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_CFI            (1ul << 16) /**< Concatenation Format Indicator only if bit 21 is s
  78:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_EOF            (1ul << 15) /**< End of frame */
  79:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_SOF            (1ul << 14) /**< Start of frame */
  80:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_FCS            (1ul << 13) /**< Frame check sequence */
  81:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_OFFSET_MASK                /**< Receive buffer offset */
  82:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_LEN_MASK       (0xFFF)     /**< Length of frame including FCS (if selected) */
  83:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_RXD_LENJUMBO_MASK  (0x3FFF)    /**< Jumbo frame length */
  84:../asf/sam/drivers/gmac/gmac.h **** 
  85:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_TXD_USED           (1ul << 31) /**< Frame is transmitted */
  86:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_TXD_WRAP           (1ul << 30) /**< Last descriptor */
  87:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_TXD_ERROR          (1ul << 29) /**< Retry limit exceeded, error */
  88:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_TXD_UNDERRUN       (1ul << 28) /**< Transmit underrun */
  89:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_TXD_EXHAUSTED      (1ul << 27) /**< Buffer exhausted */
  90:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_TXD_LATE           (1ul << 26) /**< Late collision,transmit  error  */
  91:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_TXD_CHECKSUM_ERROR (7ul << 20) /**< Checksum error */
  92:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_TXD_NOCRC          (1ul << 16) /**< No CRC */
  93:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_TXD_LAST           (1ul << 15) /**< Last buffer in frame */
  94:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_TXD_LEN_MASK       (0x1FFF)     /**< Length of buffer */
  95:../asf/sam/drivers/gmac/gmac.h **** 
  96:../asf/sam/drivers/gmac/gmac.h **** /** The MAC can support frame lengths up to 1536 bytes */
  97:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_FRAME_LENTGH_MAX   1536
  98:../asf/sam/drivers/gmac/gmac.h **** 
  99:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_RX_UNITSIZE        128     /**< Fixed size for RX buffer  */
 100:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_TX_UNITSIZE        1518    /**< Size for ETH frame length */
 101:../asf/sam/drivers/gmac/gmac.h **** 
 102:../asf/sam/drivers/gmac/gmac.h **** /** GMAC clock speed */
 103:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_MCK_SPEED_240MHZ   (240*1000*1000)
 104:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_MCK_SPEED_160MHZ   (160*1000*1000)
 105:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_MCK_SPEED_120MHZ   (120*1000*1000)
 106:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_MCK_SPEED_80MHZ    (80*1000*1000)
 107:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_MCK_SPEED_40MHZ    (40*1000*1000)
 108:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_MCK_SPEED_20MHZ    (20*1000*1000)
 109:../asf/sam/drivers/gmac/gmac.h **** 
 110:../asf/sam/drivers/gmac/gmac.h **** /** GMAC maintain code default value*/
 111:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_MAN_CODE_VALUE     10
 112:../asf/sam/drivers/gmac/gmac.h **** 
 113:../asf/sam/drivers/gmac/gmac.h **** /** GMAC maintain start of frame default value*/
 114:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_MAN_SOF_VALUE      1
 115:../asf/sam/drivers/gmac/gmac.h **** 
 116:../asf/sam/drivers/gmac/gmac.h **** /** GMAC maintain read/write*/
 117:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_MAN_RW_TYPE        2
 118:../asf/sam/drivers/gmac/gmac.h **** 
 119:../asf/sam/drivers/gmac/gmac.h **** /** GMAC maintain read only*/
 120:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_MAN_READ_ONLY      1
 121:../asf/sam/drivers/gmac/gmac.h **** 
 122:../asf/sam/drivers/gmac/gmac.h **** /** GMAC address length */
 123:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_ADDR_LENGTH        6
 124:../asf/sam/drivers/gmac/gmac.h **** 
 125:../asf/sam/drivers/gmac/gmac.h **** 
 126:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_DUPLEX_HALF        0
 127:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_DUPLEX_FULL        1
 128:../asf/sam/drivers/gmac/gmac.h **** 
 129:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_SPEED_10M          0
 130:../asf/sam/drivers/gmac/gmac.h **** #define GMAC_SPEED_100M         1
 131:../asf/sam/drivers/gmac/gmac.h **** 
 132:../asf/sam/drivers/gmac/gmac.h **** /**
 133:../asf/sam/drivers/gmac/gmac.h ****  * \brief Return codes for GMAC APIs.
ARM GAS  /tmp/cc2fwsRs.s 			page 6


 134:../asf/sam/drivers/gmac/gmac.h ****  */
 135:../asf/sam/drivers/gmac/gmac.h **** typedef enum {
 136:../asf/sam/drivers/gmac/gmac.h **** 	GMAC_OK = 0,         /** Operation OK */
 137:../asf/sam/drivers/gmac/gmac.h **** 	GMAC_TIMEOUT = 1,    /** GMAC operation timeout */
 138:../asf/sam/drivers/gmac/gmac.h **** 	GMAC_TX_BUSY,        /** TX in progress */
 139:../asf/sam/drivers/gmac/gmac.h **** 	GMAC_RX_ERROR,       /** RX error */
 140:../asf/sam/drivers/gmac/gmac.h **** 	GMAC_RX_NO_DATA,        /** No data received */
 141:../asf/sam/drivers/gmac/gmac.h **** 	GMAC_SIZE_TOO_SMALL, /** Buffer size not enough */
 142:../asf/sam/drivers/gmac/gmac.h **** 	GMAC_PARAM,          /** Parameter error, TX packet invalid or RX size too small */
 143:../asf/sam/drivers/gmac/gmac.h **** 	GMAC_INVALID = 0xFF, /* Invalid */
 144:../asf/sam/drivers/gmac/gmac.h **** } gmac_status_t;
 145:../asf/sam/drivers/gmac/gmac.h **** 
 146:../asf/sam/drivers/gmac/gmac.h **** /**
 147:../asf/sam/drivers/gmac/gmac.h ****  * \brief Media Independent Interface (MII) type.
 148:../asf/sam/drivers/gmac/gmac.h ****  */
 149:../asf/sam/drivers/gmac/gmac.h **** typedef enum {
 150:../asf/sam/drivers/gmac/gmac.h **** 	GMAC_PHY_MII = 0,         /** MII mode */
 151:../asf/sam/drivers/gmac/gmac.h **** 	GMAC_PHY_RMII = 1,    /** Reduced MII mode */
 152:../asf/sam/drivers/gmac/gmac.h **** 	GMAC_PHY_INVALID = 0xFF, /* Invalid mode*/
 153:../asf/sam/drivers/gmac/gmac.h **** } gmac_mii_mode_t;
 154:../asf/sam/drivers/gmac/gmac.h **** 
 155:../asf/sam/drivers/gmac/gmac.h **** /* This is the list of GMAC priority queue */
 156:../asf/sam/drivers/gmac/gmac.h **** typedef enum  {
 157:../asf/sam/drivers/gmac/gmac.h **** 	GMAC_QUE_0 = 0,
 158:../asf/sam/drivers/gmac/gmac.h **** #if !(SAM4E)
 159:../asf/sam/drivers/gmac/gmac.h **** 	GMAC_QUE_1 = 1,
 160:../asf/sam/drivers/gmac/gmac.h **** 	GMAC_QUE_2 = 2,
 161:../asf/sam/drivers/gmac/gmac.h **** #endif
 162:../asf/sam/drivers/gmac/gmac.h **** #  if !defined(__DOXYGEN__)
 163:../asf/sam/drivers/gmac/gmac.h **** 	GMAC_QUE_N,
 164:../asf/sam/drivers/gmac/gmac.h **** #  endif
 165:../asf/sam/drivers/gmac/gmac.h **** 
 166:../asf/sam/drivers/gmac/gmac.h **** }gmac_quelist_t;
 167:../asf/sam/drivers/gmac/gmac.h **** 
 168:../asf/sam/drivers/gmac/gmac.h **** /** Receive buffer descriptor struct */
 169:../asf/sam/drivers/gmac/gmac.h **** COMPILER_PACK_SET(8)
 170:../asf/sam/drivers/gmac/gmac.h **** typedef struct gmac_rx_descriptor {
 171:../asf/sam/drivers/gmac/gmac.h **** 	union gmac_rx_addr {
 172:../asf/sam/drivers/gmac/gmac.h **** 		uint32_t val;
 173:../asf/sam/drivers/gmac/gmac.h **** 		struct gmac_rx_addr_bm {
 174:../asf/sam/drivers/gmac/gmac.h **** 			uint32_t b_ownership:1, /**< User clear, GMAC sets this to 1 once it has successfully written a 
 175:../asf/sam/drivers/gmac/gmac.h **** 			b_wrap:1,   /**< Marks last descriptor in receive buffer */
 176:../asf/sam/drivers/gmac/gmac.h **** 			addr_dw:30; /**< Address in number of DW */
 177:../asf/sam/drivers/gmac/gmac.h **** 		} bm;
 178:../asf/sam/drivers/gmac/gmac.h **** 	} addr; /**< Address, Wrap & Ownership */
 179:../asf/sam/drivers/gmac/gmac.h **** 	union gmac_rx_status {
 180:../asf/sam/drivers/gmac/gmac.h **** 		uint32_t val;
 181:../asf/sam/drivers/gmac/gmac.h **** 		struct gmac_rx_status_bm {
 182:../asf/sam/drivers/gmac/gmac.h **** 			uint32_t b_len:13,     /** Length of frame including FCS */
 183:../asf/sam/drivers/gmac/gmac.h **** 			b_fcs:1,               /** Receive buffer offset, bits 13:12 of frame length for jumbo frame */
 184:../asf/sam/drivers/gmac/gmac.h **** 			b_sof:1,               /** Start of frame */
 185:../asf/sam/drivers/gmac/gmac.h **** 			b_eof:1,               /** End of frame */
 186:../asf/sam/drivers/gmac/gmac.h **** 			b_cfi:1,               /** Concatenation Format Indicator */
 187:../asf/sam/drivers/gmac/gmac.h **** 			b_vlan_priority:3,     /** VLAN priority (if VLAN detected) */
 188:../asf/sam/drivers/gmac/gmac.h **** 			b_priority_detected:1, /** Priority tag detected */
 189:../asf/sam/drivers/gmac/gmac.h **** 			b_vlan_detected:1,     /**< VLAN tag detected */
 190:../asf/sam/drivers/gmac/gmac.h **** 			b_type_id_match:2,     /**< Type ID match */
ARM GAS  /tmp/cc2fwsRs.s 			page 7


 191:../asf/sam/drivers/gmac/gmac.h **** 			b_checksumoffload:1,   /**< Checksum offload specific function */
 192:../asf/sam/drivers/gmac/gmac.h **** 			b_addrmatch:2,         /**< Address register match */
 193:../asf/sam/drivers/gmac/gmac.h **** 			b_ext_addr_match:1,    /**< External address match found */
 194:../asf/sam/drivers/gmac/gmac.h **** 			reserved:1,
 195:../asf/sam/drivers/gmac/gmac.h **** 			b_uni_hash_match:1,    /**< Unicast hash match */
 196:../asf/sam/drivers/gmac/gmac.h **** 			b_multi_hash_match:1,  /**< Multicast hash match */
 197:../asf/sam/drivers/gmac/gmac.h **** 			b_boardcast_detect:1;  /**< Global broadcast address detected */
 198:../asf/sam/drivers/gmac/gmac.h **** 		} bm;
 199:../asf/sam/drivers/gmac/gmac.h **** 	} status;
 200:../asf/sam/drivers/gmac/gmac.h **** } gmac_rx_descriptor_t;
 201:../asf/sam/drivers/gmac/gmac.h **** 
 202:../asf/sam/drivers/gmac/gmac.h **** /** Transmit buffer descriptor struct */
 203:../asf/sam/drivers/gmac/gmac.h **** COMPILER_PACK_SET(8)
 204:../asf/sam/drivers/gmac/gmac.h **** typedef struct gmac_tx_descriptor {
 205:../asf/sam/drivers/gmac/gmac.h **** 	uint32_t addr;
 206:../asf/sam/drivers/gmac/gmac.h **** 	union gmac_tx_status {
 207:../asf/sam/drivers/gmac/gmac.h **** 		uint32_t val;
 208:../asf/sam/drivers/gmac/gmac.h **** 		struct gmac_tx_status_bm {
 209:../asf/sam/drivers/gmac/gmac.h **** 			uint32_t b_len:14, /**< Length of buffer */
 210:../asf/sam/drivers/gmac/gmac.h **** 			reserved:1,
 211:../asf/sam/drivers/gmac/gmac.h **** 			b_last_buffer:1, /**< Last buffer (in the current frame) */
 212:../asf/sam/drivers/gmac/gmac.h **** 			b_no_crc:1,      /**< No CRC */
 213:../asf/sam/drivers/gmac/gmac.h **** 			reserved1:3,
 214:../asf/sam/drivers/gmac/gmac.h **** 			b_checksumoffload:3,    /**< Transmit checksum generation offload errors */
 215:../asf/sam/drivers/gmac/gmac.h **** 			reserved2:3,
 216:../asf/sam/drivers/gmac/gmac.h **** 			b_lco:1,         /**< Late collision, transmit error detected */
 217:../asf/sam/drivers/gmac/gmac.h **** 			b_exhausted:1,   /**< Buffer exhausted in mid frame */
 218:../asf/sam/drivers/gmac/gmac.h **** 			b_underrun:1,    /**< Transmit underrun */
 219:../asf/sam/drivers/gmac/gmac.h **** 			b_error:1,       /**< Retry limit exceeded, error detected */
 220:../asf/sam/drivers/gmac/gmac.h **** 			b_wrap:1,        /**< Marks last descriptor in TD list */
 221:../asf/sam/drivers/gmac/gmac.h **** 			b_used:1;        /**< User clear, GMAC sets this to 1 once a frame has been successfully transmi
 222:../asf/sam/drivers/gmac/gmac.h **** 		} bm;
 223:../asf/sam/drivers/gmac/gmac.h **** 	} status;
 224:../asf/sam/drivers/gmac/gmac.h **** } gmac_tx_descriptor_t;
 225:../asf/sam/drivers/gmac/gmac.h **** 
 226:../asf/sam/drivers/gmac/gmac.h **** COMPILER_PACK_RESET()
 227:../asf/sam/drivers/gmac/gmac.h **** 
 228:../asf/sam/drivers/gmac/gmac.h **** /**
 229:../asf/sam/drivers/gmac/gmac.h ****  * \brief Write network control value.
 230:../asf/sam/drivers/gmac/gmac.h ****  *
 231:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 232:../asf/sam/drivers/gmac/gmac.h ****  * \param ul_ncr   Network control value.
 233:../asf/sam/drivers/gmac/gmac.h ****  */
 234:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_network_control(Gmac* p_gmac, uint32_t ul_ncr)
 235:../asf/sam/drivers/gmac/gmac.h **** {
 236:../asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_NCR = ul_ncr;
 237:../asf/sam/drivers/gmac/gmac.h **** }
 238:../asf/sam/drivers/gmac/gmac.h **** 
 239:../asf/sam/drivers/gmac/gmac.h **** /**
 240:../asf/sam/drivers/gmac/gmac.h ****  * \brief Get network control value.
 241:../asf/sam/drivers/gmac/gmac.h ****  *
 242:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 243:../asf/sam/drivers/gmac/gmac.h ****  */
 244:../asf/sam/drivers/gmac/gmac.h **** 
 245:../asf/sam/drivers/gmac/gmac.h **** static inline uint32_t gmac_get_network_control(Gmac* p_gmac)
 246:../asf/sam/drivers/gmac/gmac.h **** {
 247:../asf/sam/drivers/gmac/gmac.h **** 	return p_gmac->GMAC_NCR;
ARM GAS  /tmp/cc2fwsRs.s 			page 8


 248:../asf/sam/drivers/gmac/gmac.h **** }
 249:../asf/sam/drivers/gmac/gmac.h **** 
 250:../asf/sam/drivers/gmac/gmac.h **** /**
 251:../asf/sam/drivers/gmac/gmac.h ****  * \brief Enable/Disable GMAC receive.
 252:../asf/sam/drivers/gmac/gmac.h ****  *
 253:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 254:../asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to disable GMAC receiver, else to enable it.
 255:../asf/sam/drivers/gmac/gmac.h ****  */
 256:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_receive(Gmac* p_gmac, uint8_t uc_enable)
 257:../asf/sam/drivers/gmac/gmac.h **** {
 258:../asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 259:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCR |= GMAC_NCR_RXEN;
 260:../asf/sam/drivers/gmac/gmac.h **** 	} else {
 261:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCR &= ~GMAC_NCR_RXEN;
 262:../asf/sam/drivers/gmac/gmac.h **** 	}
 263:../asf/sam/drivers/gmac/gmac.h **** }
 264:../asf/sam/drivers/gmac/gmac.h **** 
 265:../asf/sam/drivers/gmac/gmac.h **** /**
 266:../asf/sam/drivers/gmac/gmac.h ****  * \brief Enable/Disable GMAC transmit.
 267:../asf/sam/drivers/gmac/gmac.h ****  *
 268:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 269:../asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to disable GMAC transmit, else to enable it.
 270:../asf/sam/drivers/gmac/gmac.h ****  */
 271:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_transmit(Gmac* p_gmac, uint8_t uc_enable)
 272:../asf/sam/drivers/gmac/gmac.h **** {
 273:../asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 274:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCR |= GMAC_NCR_TXEN;
 275:../asf/sam/drivers/gmac/gmac.h **** 	} else {
 276:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCR &= ~GMAC_NCR_TXEN;
 277:../asf/sam/drivers/gmac/gmac.h **** 	}
 278:../asf/sam/drivers/gmac/gmac.h **** }
 279:../asf/sam/drivers/gmac/gmac.h **** 
 280:../asf/sam/drivers/gmac/gmac.h **** /**
 281:../asf/sam/drivers/gmac/gmac.h ****  * \brief Enable/Disable GMAC management.
 282:../asf/sam/drivers/gmac/gmac.h ****  *
 283:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 284:../asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to disable GMAC management, else to enable it.
 285:../asf/sam/drivers/gmac/gmac.h ****  */
 286:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_management(Gmac* p_gmac, uint8_t uc_enable)
 287:../asf/sam/drivers/gmac/gmac.h **** {
 288:../asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 289:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCR |= GMAC_NCR_MPE;
 290:../asf/sam/drivers/gmac/gmac.h **** 	} else {
 291:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCR &= ~GMAC_NCR_MPE;
 292:../asf/sam/drivers/gmac/gmac.h **** 	}
 293:../asf/sam/drivers/gmac/gmac.h **** }
 294:../asf/sam/drivers/gmac/gmac.h **** 
 295:../asf/sam/drivers/gmac/gmac.h **** /**
 296:../asf/sam/drivers/gmac/gmac.h ****  * \brief Clear all statistics registers.
 297:../asf/sam/drivers/gmac/gmac.h ****  *
 298:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 299:../asf/sam/drivers/gmac/gmac.h ****  */
 300:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_clear_statistics(Gmac* p_gmac)
 301:../asf/sam/drivers/gmac/gmac.h **** {
 302:../asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_NCR |= GMAC_NCR_CLRSTAT;
 303:../asf/sam/drivers/gmac/gmac.h **** }
 304:../asf/sam/drivers/gmac/gmac.h **** 
ARM GAS  /tmp/cc2fwsRs.s 			page 9


 305:../asf/sam/drivers/gmac/gmac.h **** /**
 306:../asf/sam/drivers/gmac/gmac.h ****  * \brief Increase all statistics registers.
 307:../asf/sam/drivers/gmac/gmac.h ****  *
 308:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 309:../asf/sam/drivers/gmac/gmac.h ****  */
 310:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_increase_statistics(Gmac* p_gmac)
 311:../asf/sam/drivers/gmac/gmac.h **** {
 312:../asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_NCR |= GMAC_NCR_INCSTAT;
 313:../asf/sam/drivers/gmac/gmac.h **** }
 314:../asf/sam/drivers/gmac/gmac.h **** 
 315:../asf/sam/drivers/gmac/gmac.h **** /**
 316:../asf/sam/drivers/gmac/gmac.h ****  * \brief Enable/Disable statistics registers writing.
 317:../asf/sam/drivers/gmac/gmac.h ****  *
 318:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 319:../asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to disable the statistics registers writing, else to enable it.
 320:../asf/sam/drivers/gmac/gmac.h ****  */
 321:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_statistics_write(Gmac* p_gmac,
 322:../asf/sam/drivers/gmac/gmac.h **** 		uint8_t uc_enable)
 323:../asf/sam/drivers/gmac/gmac.h **** {
 324:../asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 325:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCR |= GMAC_NCR_WESTAT;
 326:../asf/sam/drivers/gmac/gmac.h **** 	} else {
 327:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCR &= ~GMAC_NCR_WESTAT;
 328:../asf/sam/drivers/gmac/gmac.h **** 	}
 329:../asf/sam/drivers/gmac/gmac.h **** }
 330:../asf/sam/drivers/gmac/gmac.h **** 
 331:../asf/sam/drivers/gmac/gmac.h **** /**
 332:../asf/sam/drivers/gmac/gmac.h ****  * \brief In half-duplex mode, forces collisions on all received frames.
 333:../asf/sam/drivers/gmac/gmac.h ****  *
 334:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 335:../asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to disable the back pressure, else to enable it.
 336:../asf/sam/drivers/gmac/gmac.h ****  */
 337:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_back_pressure(Gmac* p_gmac, uint8_t uc_enable)
 338:../asf/sam/drivers/gmac/gmac.h **** {
 339:../asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 340:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCR |= GMAC_NCR_BP;
 341:../asf/sam/drivers/gmac/gmac.h **** 	} else {
 342:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCR &= ~GMAC_NCR_BP;
 343:../asf/sam/drivers/gmac/gmac.h **** 	}
 344:../asf/sam/drivers/gmac/gmac.h **** }
 345:../asf/sam/drivers/gmac/gmac.h **** 
 346:../asf/sam/drivers/gmac/gmac.h **** /**
 347:../asf/sam/drivers/gmac/gmac.h ****  * \brief Start transmission.
 348:../asf/sam/drivers/gmac/gmac.h ****  *
 349:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 350:../asf/sam/drivers/gmac/gmac.h ****  */
 351:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_start_transmission(Gmac* p_gmac)
 352:../asf/sam/drivers/gmac/gmac.h **** {
 353:../asf/sam/drivers/gmac/gmac.h **** 	__DSB();
 354:../asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_NCR |= GMAC_NCR_TSTART;
 355:../asf/sam/drivers/gmac/gmac.h **** }
 356:../asf/sam/drivers/gmac/gmac.h **** 
 357:../asf/sam/drivers/gmac/gmac.h **** /**
 358:../asf/sam/drivers/gmac/gmac.h ****  * \brief Halt transmission.
 359:../asf/sam/drivers/gmac/gmac.h ****  *
 360:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 361:../asf/sam/drivers/gmac/gmac.h ****  */
ARM GAS  /tmp/cc2fwsRs.s 			page 10


 362:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_halt_transmission(Gmac* p_gmac)
 363:../asf/sam/drivers/gmac/gmac.h **** {
 364:../asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_NCR |= GMAC_NCR_THALT;
 365:../asf/sam/drivers/gmac/gmac.h **** }
 366:../asf/sam/drivers/gmac/gmac.h **** 
 367:../asf/sam/drivers/gmac/gmac.h **** /**
 368:../asf/sam/drivers/gmac/gmac.h ****  * \brief Transmit pause frame.
 369:../asf/sam/drivers/gmac/gmac.h ****  *
 370:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 371:../asf/sam/drivers/gmac/gmac.h ****  */
 372:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_tx_pause_frame(Gmac* p_gmac)
 373:../asf/sam/drivers/gmac/gmac.h **** {
 374:../asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_NCR |= GMAC_NCR_TXPF;
 375:../asf/sam/drivers/gmac/gmac.h **** }
 376:../asf/sam/drivers/gmac/gmac.h **** 
 377:../asf/sam/drivers/gmac/gmac.h **** /**
 378:../asf/sam/drivers/gmac/gmac.h ****  * \brief Transmit zero quantum pause frame.
 379:../asf/sam/drivers/gmac/gmac.h ****  *
 380:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 381:../asf/sam/drivers/gmac/gmac.h ****  */
 382:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_tx_pause_zero_quantum_frame(Gmac* p_gmac)
 383:../asf/sam/drivers/gmac/gmac.h **** {
 384:../asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_NCR |= GMAC_NCR_TXZQPF;
 385:../asf/sam/drivers/gmac/gmac.h **** }
 386:../asf/sam/drivers/gmac/gmac.h **** 
 387:../asf/sam/drivers/gmac/gmac.h **** /**
 388:../asf/sam/drivers/gmac/gmac.h ****  * \brief Store receivetime stamp to memory.
 389:../asf/sam/drivers/gmac/gmac.h ****  *
 390:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 391:../asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to normal operation, else to enable the store.
 392:../asf/sam/drivers/gmac/gmac.h ****  */
 393:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_store_rx_time_stamp(Gmac* p_gmac, uint8_t uc_enable)
 394:../asf/sam/drivers/gmac/gmac.h **** {
 395:../asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 396:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCR |= GMAC_NCR_SRTSM;
 397:../asf/sam/drivers/gmac/gmac.h **** 	} else {
 398:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCR &= ~GMAC_NCR_SRTSM;
 399:../asf/sam/drivers/gmac/gmac.h **** 	}
 400:../asf/sam/drivers/gmac/gmac.h **** }
 401:../asf/sam/drivers/gmac/gmac.h **** 
 402:../asf/sam/drivers/gmac/gmac.h **** /**
 403:../asf/sam/drivers/gmac/gmac.h ****  * \brief Enable PFC priority-based pause reception.
 404:../asf/sam/drivers/gmac/gmac.h ****  *
 405:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 406:../asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   1 to set the reception, 0 to disable.
 407:../asf/sam/drivers/gmac/gmac.h ****  */
 408:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_pfc_pause_frame(Gmac* p_gmac, uint8_t uc_enable)
 409:../asf/sam/drivers/gmac/gmac.h **** {
 410:../asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 411:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCR |= GMAC_NCR_ENPBPR;
 412:../asf/sam/drivers/gmac/gmac.h **** 	} else {
 413:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCR &= ~GMAC_NCR_ENPBPR;
 414:../asf/sam/drivers/gmac/gmac.h **** 	}
 415:../asf/sam/drivers/gmac/gmac.h **** }
 416:../asf/sam/drivers/gmac/gmac.h **** 
 417:../asf/sam/drivers/gmac/gmac.h **** /**
 418:../asf/sam/drivers/gmac/gmac.h ****  * \brief Transmit PFC priority-based pause reception.
ARM GAS  /tmp/cc2fwsRs.s 			page 11


 419:../asf/sam/drivers/gmac/gmac.h ****  *
 420:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 421:../asf/sam/drivers/gmac/gmac.h ****  */
 422:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_transmit_pfc_pause_frame(Gmac* p_gmac)
 423:../asf/sam/drivers/gmac/gmac.h **** {
 424:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCR |= GMAC_NCR_TXPBPF;
 425:../asf/sam/drivers/gmac/gmac.h **** }
 426:../asf/sam/drivers/gmac/gmac.h **** 
 427:../asf/sam/drivers/gmac/gmac.h **** /**
 428:../asf/sam/drivers/gmac/gmac.h ****  * \brief Flush next packet.
 429:../asf/sam/drivers/gmac/gmac.h ****  *
 430:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 431:../asf/sam/drivers/gmac/gmac.h ****  */
 432:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_flush_next_packet(Gmac* p_gmac)
 433:../asf/sam/drivers/gmac/gmac.h **** {
 434:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCR |= GMAC_NCR_FNP;
 435:../asf/sam/drivers/gmac/gmac.h **** }
 436:../asf/sam/drivers/gmac/gmac.h **** 
 437:../asf/sam/drivers/gmac/gmac.h **** /**
 438:../asf/sam/drivers/gmac/gmac.h ****  * \brief Set up network configuration register.
 439:../asf/sam/drivers/gmac/gmac.h ****  *
 440:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 441:../asf/sam/drivers/gmac/gmac.h ****   * \param ul_cfg   Network configuration value.
 442:../asf/sam/drivers/gmac/gmac.h ****  */
 443:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_set_config(Gmac* p_gmac, uint32_t ul_cfg)
 444:../asf/sam/drivers/gmac/gmac.h **** {
 445:../asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_NCFGR = ul_cfg;
 446:../asf/sam/drivers/gmac/gmac.h **** }
 447:../asf/sam/drivers/gmac/gmac.h **** 
 448:../asf/sam/drivers/gmac/gmac.h **** /**
 449:../asf/sam/drivers/gmac/gmac.h ****  * \brief Get network configuration.
 450:../asf/sam/drivers/gmac/gmac.h ****  *
 451:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 452:../asf/sam/drivers/gmac/gmac.h ****  *
 453:../asf/sam/drivers/gmac/gmac.h ****  * \return Network configuration.
 454:../asf/sam/drivers/gmac/gmac.h ****  */
 455:../asf/sam/drivers/gmac/gmac.h **** static inline uint32_t gmac_get_config(Gmac* p_gmac)
 456:../asf/sam/drivers/gmac/gmac.h **** {
 457:../asf/sam/drivers/gmac/gmac.h **** 	return p_gmac->GMAC_NCFGR;
 458:../asf/sam/drivers/gmac/gmac.h **** }
 459:../asf/sam/drivers/gmac/gmac.h **** 
 460:../asf/sam/drivers/gmac/gmac.h **** /**
 461:../asf/sam/drivers/gmac/gmac.h ****  * \brief Set speed.
 462:../asf/sam/drivers/gmac/gmac.h ****  *
 463:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 464:../asf/sam/drivers/gmac/gmac.h ****  * \param uc_speed 1 to indicate 100Mbps, 0 to 10Mbps.
 465:../asf/sam/drivers/gmac/gmac.h ****  */
 466:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_set_speed(Gmac* p_gmac, uint8_t uc_speed)
 467:../asf/sam/drivers/gmac/gmac.h **** {
 468:../asf/sam/drivers/gmac/gmac.h **** 	if (uc_speed) {
 469:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR |= GMAC_NCFGR_SPD;
 470:../asf/sam/drivers/gmac/gmac.h **** 	} else {
 471:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR &= ~GMAC_NCFGR_SPD;
 472:../asf/sam/drivers/gmac/gmac.h **** 	}
 473:../asf/sam/drivers/gmac/gmac.h **** }
 474:../asf/sam/drivers/gmac/gmac.h **** 
 475:../asf/sam/drivers/gmac/gmac.h **** /**
ARM GAS  /tmp/cc2fwsRs.s 			page 12


 476:../asf/sam/drivers/gmac/gmac.h ****  * \brief Enable/Disable Full-Duplex mode.
 477:../asf/sam/drivers/gmac/gmac.h ****  *
 478:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 479:../asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to disable the Full-Duplex mode, else to enable it.
 480:../asf/sam/drivers/gmac/gmac.h ****  */
 481:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_full_duplex(Gmac* p_gmac, uint8_t uc_enable)
 482:../asf/sam/drivers/gmac/gmac.h **** {
 483:../asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 484:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR |= GMAC_NCFGR_FD;
 485:../asf/sam/drivers/gmac/gmac.h **** 	} else {
 486:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR &= ~GMAC_NCFGR_FD;
 487:../asf/sam/drivers/gmac/gmac.h **** 	}
 488:../asf/sam/drivers/gmac/gmac.h **** }
 489:../asf/sam/drivers/gmac/gmac.h **** 
 490:../asf/sam/drivers/gmac/gmac.h **** /**
 491:../asf/sam/drivers/gmac/gmac.h ****  * \brief Enable/Disable Copy(Receive) All Valid Frames.
 492:../asf/sam/drivers/gmac/gmac.h ****  *
 493:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 494:../asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to disable copying all valid frames, else to enable it.
 495:../asf/sam/drivers/gmac/gmac.h ****  */
 496:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_copy_all(Gmac* p_gmac, uint8_t uc_enable)
 497:../asf/sam/drivers/gmac/gmac.h **** {
 498:../asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 499:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR |= GMAC_NCFGR_CAF;
 500:../asf/sam/drivers/gmac/gmac.h **** 	} else {
 501:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR &= ~GMAC_NCFGR_CAF;
 502:../asf/sam/drivers/gmac/gmac.h **** 	}
 503:../asf/sam/drivers/gmac/gmac.h **** }
 504:../asf/sam/drivers/gmac/gmac.h **** 
 505:../asf/sam/drivers/gmac/gmac.h **** /**
 506:../asf/sam/drivers/gmac/gmac.h ****  * \brief Enable/Disable jumbo frames (up to 10240 bytes).
 507:../asf/sam/drivers/gmac/gmac.h ****  *
 508:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 509:../asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to disable the jumbo frames, else to enable it.
 510:../asf/sam/drivers/gmac/gmac.h ****  */
 511:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_jumbo_frames(Gmac* p_gmac, uint8_t uc_enable)
 512:../asf/sam/drivers/gmac/gmac.h **** {
 513:../asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 514:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR |= GMAC_NCFGR_JFRAME;
 515:../asf/sam/drivers/gmac/gmac.h **** 	} else {
 516:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR &= ~GMAC_NCFGR_JFRAME;
 517:../asf/sam/drivers/gmac/gmac.h **** 	}
 518:../asf/sam/drivers/gmac/gmac.h **** }
 519:../asf/sam/drivers/gmac/gmac.h **** 
 520:../asf/sam/drivers/gmac/gmac.h **** /**
 521:../asf/sam/drivers/gmac/gmac.h ****  * \brief Disable/Enable broadcast receiving.
 522:../asf/sam/drivers/gmac/gmac.h ****  *
 523:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 524:../asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   1 to disable the broadcast, else to enable it.
 525:../asf/sam/drivers/gmac/gmac.h ****  */
 526:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_disable_broadcast(Gmac* p_gmac, uint8_t uc_enable)
 527:../asf/sam/drivers/gmac/gmac.h **** {
 528:../asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 529:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR |= GMAC_NCFGR_NBC;
 530:../asf/sam/drivers/gmac/gmac.h **** 	} else {
 531:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR &= ~GMAC_NCFGR_NBC;
 532:../asf/sam/drivers/gmac/gmac.h **** 	}
ARM GAS  /tmp/cc2fwsRs.s 			page 13


 533:../asf/sam/drivers/gmac/gmac.h **** }
 534:../asf/sam/drivers/gmac/gmac.h **** 
 535:../asf/sam/drivers/gmac/gmac.h **** /**
 536:../asf/sam/drivers/gmac/gmac.h ****  * \brief Enable/Disable multicast hash.
 537:../asf/sam/drivers/gmac/gmac.h ****  *
 538:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 539:../asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to disable the multicast hash, else to enable it.
 540:../asf/sam/drivers/gmac/gmac.h ****  */
 541:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_multicast_hash(Gmac* p_gmac, uint8_t uc_enable)
 542:../asf/sam/drivers/gmac/gmac.h **** {
 543:../asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 544:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR |= GMAC_NCFGR_UNIHEN;
 545:../asf/sam/drivers/gmac/gmac.h **** 	} else {
 546:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR &= ~GMAC_NCFGR_UNIHEN;
 547:../asf/sam/drivers/gmac/gmac.h **** 	}
 548:../asf/sam/drivers/gmac/gmac.h **** }
 549:../asf/sam/drivers/gmac/gmac.h **** 
 550:../asf/sam/drivers/gmac/gmac.h **** /**
 551:../asf/sam/drivers/gmac/gmac.h ****  * \brief Enable/Disable big frames (over 1518, up to 1536).
 552:../asf/sam/drivers/gmac/gmac.h ****  *
 553:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 554:../asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to disable big frames else to enable it.
 555:../asf/sam/drivers/gmac/gmac.h ****  */
 556:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_big_frame(Gmac* p_gmac, uint8_t uc_enable)
 557:../asf/sam/drivers/gmac/gmac.h **** {
 558:../asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 559:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR |= GMAC_NCFGR_MAXFS;
 560:../asf/sam/drivers/gmac/gmac.h **** 	} else {
 561:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR &= ~GMAC_NCFGR_MAXFS;
 562:../asf/sam/drivers/gmac/gmac.h **** 	}
 563:../asf/sam/drivers/gmac/gmac.h **** }
 564:../asf/sam/drivers/gmac/gmac.h **** 
 565:../asf/sam/drivers/gmac/gmac.h **** /**
 566:../asf/sam/drivers/gmac/gmac.h ****  * \brief Set MDC clock divider.
 567:../asf/sam/drivers/gmac/gmac.h ****  *
 568:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 569:../asf/sam/drivers/gmac/gmac.h ****  * \param ul_mck   GMAC MCK.
 570:../asf/sam/drivers/gmac/gmac.h ****  *
 571:../asf/sam/drivers/gmac/gmac.h ****  * \return GMAC_OK if successfully.
 572:../asf/sam/drivers/gmac/gmac.h ****  */
 573:../asf/sam/drivers/gmac/gmac.h **** static inline uint8_t gmac_set_mdc_clock(Gmac* p_gmac, uint32_t ul_mck)
 574:../asf/sam/drivers/gmac/gmac.h **** {
 575:../asf/sam/drivers/gmac/gmac.h **** 	uint32_t ul_clk;
 576:../asf/sam/drivers/gmac/gmac.h **** 
 577:../asf/sam/drivers/gmac/gmac.h **** 	if (ul_mck > GMAC_MCK_SPEED_240MHZ) {
 578:../asf/sam/drivers/gmac/gmac.h **** 		return GMAC_INVALID;
 579:../asf/sam/drivers/gmac/gmac.h **** 	} else if (ul_mck > GMAC_MCK_SPEED_160MHZ) {
 580:../asf/sam/drivers/gmac/gmac.h **** 		ul_clk = GMAC_NCFGR_CLK_MCK_96;
 581:../asf/sam/drivers/gmac/gmac.h **** 	} else if (ul_mck > GMAC_MCK_SPEED_120MHZ) {
 582:../asf/sam/drivers/gmac/gmac.h **** 		ul_clk = GMAC_NCFGR_CLK_MCK_64;
 583:../asf/sam/drivers/gmac/gmac.h **** 	} else if (ul_mck > GMAC_MCK_SPEED_80MHZ) {
 584:../asf/sam/drivers/gmac/gmac.h **** 		ul_clk = GMAC_NCFGR_CLK_MCK_48;
 585:../asf/sam/drivers/gmac/gmac.h **** 	} else if (ul_mck > GMAC_MCK_SPEED_40MHZ) {
 586:../asf/sam/drivers/gmac/gmac.h **** 		ul_clk = GMAC_NCFGR_CLK_MCK_32;
 587:../asf/sam/drivers/gmac/gmac.h **** 	} else if (ul_mck > GMAC_MCK_SPEED_20MHZ) {
 588:../asf/sam/drivers/gmac/gmac.h **** 		ul_clk = GMAC_NCFGR_CLK_MCK_16;
 589:../asf/sam/drivers/gmac/gmac.h **** 	} else {
ARM GAS  /tmp/cc2fwsRs.s 			page 14


 590:../asf/sam/drivers/gmac/gmac.h **** 		ul_clk = GMAC_NCFGR_CLK_MCK_8;
 591:../asf/sam/drivers/gmac/gmac.h **** 	}
 592:../asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_NCFGR &= ~GMAC_NCFGR_CLK_Msk;
 593:../asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_NCFGR |= ul_clk;
 594:../asf/sam/drivers/gmac/gmac.h **** 	return GMAC_OK;
 595:../asf/sam/drivers/gmac/gmac.h **** }
 596:../asf/sam/drivers/gmac/gmac.h **** 
 597:../asf/sam/drivers/gmac/gmac.h **** /**
 598:../asf/sam/drivers/gmac/gmac.h ****  * \brief Enable/Disable retry test.
 599:../asf/sam/drivers/gmac/gmac.h ****  *
 600:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 601:../asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to disable the GMAC receiver, else to enable it.
 602:../asf/sam/drivers/gmac/gmac.h ****  */
 603:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_retry_test(Gmac* p_gmac, uint8_t uc_enable)
 604:../asf/sam/drivers/gmac/gmac.h **** {
 605:../asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 606:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR |= GMAC_NCFGR_RTY;
 607:../asf/sam/drivers/gmac/gmac.h **** 	} else {
 608:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR &= ~GMAC_NCFGR_RTY;
 609:../asf/sam/drivers/gmac/gmac.h **** 	}
 610:../asf/sam/drivers/gmac/gmac.h **** }
 611:../asf/sam/drivers/gmac/gmac.h **** 
 612:../asf/sam/drivers/gmac/gmac.h **** /**
 613:../asf/sam/drivers/gmac/gmac.h ****  * \brief Enable/Disable pause (when a valid pause frame is received).
 614:../asf/sam/drivers/gmac/gmac.h ****  *
 615:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 616:../asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to disable pause frame, else to enable it.
 617:../asf/sam/drivers/gmac/gmac.h ****  */
 618:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_pause_frame(Gmac* p_gmac, uint8_t uc_enable)
 619:../asf/sam/drivers/gmac/gmac.h **** {
 620:../asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 621:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR |= GMAC_NCFGR_PEN;
 622:../asf/sam/drivers/gmac/gmac.h **** 	} else {
 623:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR &= ~GMAC_NCFGR_PEN;
 624:../asf/sam/drivers/gmac/gmac.h **** 	}
 625:../asf/sam/drivers/gmac/gmac.h **** }
 626:../asf/sam/drivers/gmac/gmac.h **** 
 627:../asf/sam/drivers/gmac/gmac.h **** /**
 628:../asf/sam/drivers/gmac/gmac.h ****  * \brief Set receive buffer offset to 0 ~ 3.
 629:../asf/sam/drivers/gmac/gmac.h ****  *
 630:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 631:../asf/sam/drivers/gmac/gmac.h ****  */
 632:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_set_rx_buffer_offset(Gmac* p_gmac, uint8_t uc_offset)
 633:../asf/sam/drivers/gmac/gmac.h **** {
 634:../asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_NCFGR &= ~GMAC_NCFGR_RXBUFO_Msk;
 635:../asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_NCFGR |= GMAC_NCFGR_RXBUFO(uc_offset);
 636:../asf/sam/drivers/gmac/gmac.h **** }
 637:../asf/sam/drivers/gmac/gmac.h **** 
 638:../asf/sam/drivers/gmac/gmac.h **** /**
 639:../asf/sam/drivers/gmac/gmac.h ****  * \brief Enable/Disable receive length field checking.
 640:../asf/sam/drivers/gmac/gmac.h ****  *
 641:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 642:../asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to disable receive length field checking, else to enable it.
 643:../asf/sam/drivers/gmac/gmac.h ****  */
 644:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_rx_length_check(Gmac* p_gmac, uint8_t uc_enable)
 645:../asf/sam/drivers/gmac/gmac.h **** {
 646:../asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
ARM GAS  /tmp/cc2fwsRs.s 			page 15


 647:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR |= GMAC_NCFGR_LFERD;
 648:../asf/sam/drivers/gmac/gmac.h **** 	} else {
 649:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR &= ~GMAC_NCFGR_LFERD;
 650:../asf/sam/drivers/gmac/gmac.h **** 	}
 651:../asf/sam/drivers/gmac/gmac.h **** }
 652:../asf/sam/drivers/gmac/gmac.h **** 
 653:../asf/sam/drivers/gmac/gmac.h **** /**
 654:../asf/sam/drivers/gmac/gmac.h ****  * \brief Enable/Disable discarding FCS field of received frames.
 655:../asf/sam/drivers/gmac/gmac.h ****  *
 656:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 657:../asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to disable discarding FCS field of received frames, else to enable it.
 658:../asf/sam/drivers/gmac/gmac.h ****  */
 659:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_discard_fcs(Gmac* p_gmac, uint8_t uc_enable)
 660:../asf/sam/drivers/gmac/gmac.h **** {
 661:../asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 662:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR |= GMAC_NCFGR_RFCS;
 663:../asf/sam/drivers/gmac/gmac.h **** 	} else {
 664:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR &= ~GMAC_NCFGR_RFCS;
 665:../asf/sam/drivers/gmac/gmac.h **** 	}
 666:../asf/sam/drivers/gmac/gmac.h **** }
 667:../asf/sam/drivers/gmac/gmac.h **** 
 668:../asf/sam/drivers/gmac/gmac.h **** 
 669:../asf/sam/drivers/gmac/gmac.h **** /**
 670:../asf/sam/drivers/gmac/gmac.h ****  * \brief Enable/Disable frames to be received in half-duplex mode
 671:../asf/sam/drivers/gmac/gmac.h ****  * while transmitting.
 672:../asf/sam/drivers/gmac/gmac.h ****  *
 673:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 674:../asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to disable the received in half-duplex mode, else to enable it.
 675:../asf/sam/drivers/gmac/gmac.h ****  */
 676:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_efrhd(Gmac* p_gmac, uint8_t uc_enable)
 677:../asf/sam/drivers/gmac/gmac.h **** {
 678:../asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 679:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR |= GMAC_NCFGR_EFRHD;
 680:../asf/sam/drivers/gmac/gmac.h **** 	} else {
 681:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR &= ~GMAC_NCFGR_EFRHD;
 682:../asf/sam/drivers/gmac/gmac.h **** 	}
 683:../asf/sam/drivers/gmac/gmac.h **** }
 684:../asf/sam/drivers/gmac/gmac.h **** 
 685:../asf/sam/drivers/gmac/gmac.h **** /**
 686:../asf/sam/drivers/gmac/gmac.h ****  * \brief Enable/Disable ignore RX FCS.
 687:../asf/sam/drivers/gmac/gmac.h ****  *
 688:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 689:../asf/sam/drivers/gmac/gmac.h ****  * \param uc_enable   0 to disable ignore RX FCS, else to enable it.
 690:../asf/sam/drivers/gmac/gmac.h ****  */
 691:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_ignore_rx_fcs(Gmac* p_gmac, uint8_t uc_enable)
 692:../asf/sam/drivers/gmac/gmac.h **** {
 693:../asf/sam/drivers/gmac/gmac.h **** 	if (uc_enable) {
 694:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR |= GMAC_NCFGR_IRXFCS;
 695:../asf/sam/drivers/gmac/gmac.h **** 	} else {
 696:../asf/sam/drivers/gmac/gmac.h **** 		p_gmac->GMAC_NCFGR &= ~GMAC_NCFGR_IRXFCS;
 697:../asf/sam/drivers/gmac/gmac.h **** 	}
 698:../asf/sam/drivers/gmac/gmac.h **** }
 699:../asf/sam/drivers/gmac/gmac.h **** 
 700:../asf/sam/drivers/gmac/gmac.h **** /**
 701:../asf/sam/drivers/gmac/gmac.h ****  * \brief Get Network Status.
 702:../asf/sam/drivers/gmac/gmac.h ****  *
 703:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
ARM GAS  /tmp/cc2fwsRs.s 			page 16


 704:../asf/sam/drivers/gmac/gmac.h ****  *
 705:../asf/sam/drivers/gmac/gmac.h ****  * \return Network status.
 706:../asf/sam/drivers/gmac/gmac.h ****  */
 707:../asf/sam/drivers/gmac/gmac.h **** static inline uint32_t gmac_get_status(Gmac* p_gmac)
 708:../asf/sam/drivers/gmac/gmac.h **** {
 709:../asf/sam/drivers/gmac/gmac.h **** 	return p_gmac->GMAC_NSR;
 710:../asf/sam/drivers/gmac/gmac.h **** }
 711:../asf/sam/drivers/gmac/gmac.h **** 
 712:../asf/sam/drivers/gmac/gmac.h **** /**
 713:../asf/sam/drivers/gmac/gmac.h ****  * \brief Get MDIO IN pin status.
 714:../asf/sam/drivers/gmac/gmac.h ****  *
 715:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 716:../asf/sam/drivers/gmac/gmac.h ****  *
 717:../asf/sam/drivers/gmac/gmac.h ****  * \return MDIO IN pin status.
 718:../asf/sam/drivers/gmac/gmac.h ****  */
 719:../asf/sam/drivers/gmac/gmac.h **** static inline uint8_t gmac_get_MDIO(Gmac* p_gmac)
 720:../asf/sam/drivers/gmac/gmac.h **** {
 721:../asf/sam/drivers/gmac/gmac.h **** 	return ((p_gmac->GMAC_NSR & GMAC_NSR_MDIO) > 0);
 722:../asf/sam/drivers/gmac/gmac.h **** }
 723:../asf/sam/drivers/gmac/gmac.h **** 
 724:../asf/sam/drivers/gmac/gmac.h **** /**
 725:../asf/sam/drivers/gmac/gmac.h ****  * \brief Check if PHY is idle.
 726:../asf/sam/drivers/gmac/gmac.h ****  *
 727:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 728:../asf/sam/drivers/gmac/gmac.h ****  *
 729:../asf/sam/drivers/gmac/gmac.h ****  * \return  1 if PHY is idle.
 730:../asf/sam/drivers/gmac/gmac.h ****  */
 731:../asf/sam/drivers/gmac/gmac.h **** static inline uint8_t gmac_is_phy_idle(Gmac* p_gmac)
 732:../asf/sam/drivers/gmac/gmac.h **** {
 733:../asf/sam/drivers/gmac/gmac.h **** 	return ((p_gmac->GMAC_NSR & GMAC_NSR_IDLE) > 0);
 734:../asf/sam/drivers/gmac/gmac.h **** }
 735:../asf/sam/drivers/gmac/gmac.h **** 
 736:../asf/sam/drivers/gmac/gmac.h **** /**
 737:../asf/sam/drivers/gmac/gmac.h ****  * \brief Return transmit status.
 738:../asf/sam/drivers/gmac/gmac.h ****  *
 739:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 740:../asf/sam/drivers/gmac/gmac.h ****  *
 741:../asf/sam/drivers/gmac/gmac.h ****  * \return  Transmit status.
 742:../asf/sam/drivers/gmac/gmac.h ****  */
 743:../asf/sam/drivers/gmac/gmac.h **** static inline uint32_t gmac_get_tx_status(Gmac* p_gmac)
 744:../asf/sam/drivers/gmac/gmac.h **** {
 745:../asf/sam/drivers/gmac/gmac.h **** 	return p_gmac->GMAC_TSR;
 746:../asf/sam/drivers/gmac/gmac.h **** }
 747:../asf/sam/drivers/gmac/gmac.h **** 
 748:../asf/sam/drivers/gmac/gmac.h **** /**
 749:../asf/sam/drivers/gmac/gmac.h ****  * \brief Clear transmit status.
 750:../asf/sam/drivers/gmac/gmac.h ****  *
 751:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 752:../asf/sam/drivers/gmac/gmac.h ****  * \param ul_status   Transmit status.
 753:../asf/sam/drivers/gmac/gmac.h ****  */
 754:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_clear_tx_status(Gmac* p_gmac, uint32_t ul_status)
 755:../asf/sam/drivers/gmac/gmac.h **** {
 756:../asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_TSR = ul_status;
 757:../asf/sam/drivers/gmac/gmac.h **** }
 758:../asf/sam/drivers/gmac/gmac.h **** 
 759:../asf/sam/drivers/gmac/gmac.h **** /**
 760:../asf/sam/drivers/gmac/gmac.h ****  * \brief Return receive status.
ARM GAS  /tmp/cc2fwsRs.s 			page 17


 761:../asf/sam/drivers/gmac/gmac.h ****  *
 762:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 763:../asf/sam/drivers/gmac/gmac.h ****  */
 764:../asf/sam/drivers/gmac/gmac.h **** static inline uint32_t gmac_get_rx_status(Gmac* p_gmac)
 765:../asf/sam/drivers/gmac/gmac.h **** {
 766:../asf/sam/drivers/gmac/gmac.h **** 	return p_gmac->GMAC_RSR;
 767:../asf/sam/drivers/gmac/gmac.h **** }
 768:../asf/sam/drivers/gmac/gmac.h **** 
 769:../asf/sam/drivers/gmac/gmac.h **** /**
 770:../asf/sam/drivers/gmac/gmac.h ****  * \brief Clear receive status.
 771:../asf/sam/drivers/gmac/gmac.h ****  *
 772:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 773:../asf/sam/drivers/gmac/gmac.h ****  * \param ul_status   Receive status.
 774:../asf/sam/drivers/gmac/gmac.h ****  */
 775:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_clear_rx_status(Gmac* p_gmac, uint32_t ul_status)
 776:../asf/sam/drivers/gmac/gmac.h **** {
 777:../asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_RSR = ul_status;
 778:../asf/sam/drivers/gmac/gmac.h **** }
 779:../asf/sam/drivers/gmac/gmac.h **** 
 780:../asf/sam/drivers/gmac/gmac.h **** /**
 781:../asf/sam/drivers/gmac/gmac.h ****  * \brief Set Rx Queue.
 782:../asf/sam/drivers/gmac/gmac.h ****  *
 783:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 784:../asf/sam/drivers/gmac/gmac.h ****  * \param ul_addr   Rx queue address.
 785:../asf/sam/drivers/gmac/gmac.h ****  */
 786:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_set_rx_queue(Gmac* p_gmac, uint32_t ul_addr)
 787:../asf/sam/drivers/gmac/gmac.h **** {
 788:../asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_RBQB = GMAC_RBQB_ADDR_Msk & ul_addr;
 789:../asf/sam/drivers/gmac/gmac.h **** }
 790:../asf/sam/drivers/gmac/gmac.h **** 
 791:../asf/sam/drivers/gmac/gmac.h **** /**
 792:../asf/sam/drivers/gmac/gmac.h ****  * \brief Set Rx buffer size.
 793:../asf/sam/drivers/gmac/gmac.h ****  *
 794:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 795:../asf/sam/drivers/gmac/gmac.h ****  * \param ul_addr   Rx buffer.
 796:../asf/sam/drivers/gmac/gmac.h ****  */
 797:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_set_rx_bufsize(Gmac* p_gmac, uint32_t ul_code)
 798:../asf/sam/drivers/gmac/gmac.h **** {
 799:../asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_DCFGR = (p_gmac->GMAC_DCFGR & ~GMAC_DCFGR_DRBS_Msk)
 800:../asf/sam/drivers/gmac/gmac.h **** 			| GMAC_DCFGR_DRBS(ul_code);
 801:../asf/sam/drivers/gmac/gmac.h **** }
 802:../asf/sam/drivers/gmac/gmac.h **** 
 803:../asf/sam/drivers/gmac/gmac.h **** /**
 804:../asf/sam/drivers/gmac/gmac.h ****  * \brief Get Rx Queue Address.
 805:../asf/sam/drivers/gmac/gmac.h ****  *
 806:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 807:../asf/sam/drivers/gmac/gmac.h ****  *
 808:../asf/sam/drivers/gmac/gmac.h ****  * \return  Rx queue address.
 809:../asf/sam/drivers/gmac/gmac.h ****  */
 810:../asf/sam/drivers/gmac/gmac.h **** static inline uint32_t gmac_get_rx_queue(Gmac* p_gmac)
 811:../asf/sam/drivers/gmac/gmac.h **** {
 812:../asf/sam/drivers/gmac/gmac.h **** 	return p_gmac->GMAC_RBQB;
 813:../asf/sam/drivers/gmac/gmac.h **** }
 814:../asf/sam/drivers/gmac/gmac.h **** 
 815:../asf/sam/drivers/gmac/gmac.h **** /**
 816:../asf/sam/drivers/gmac/gmac.h ****  * \brief Set Tx Queue.
 817:../asf/sam/drivers/gmac/gmac.h ****  *
ARM GAS  /tmp/cc2fwsRs.s 			page 18


 818:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 819:../asf/sam/drivers/gmac/gmac.h ****  * \param ul_addr  Tx queue address.
 820:../asf/sam/drivers/gmac/gmac.h ****  */
 821:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_set_tx_queue(Gmac* p_gmac, uint32_t ul_addr)
 822:../asf/sam/drivers/gmac/gmac.h **** {
 823:../asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_TBQB = GMAC_TBQB_ADDR_Msk & ul_addr;
 824:../asf/sam/drivers/gmac/gmac.h **** }
 825:../asf/sam/drivers/gmac/gmac.h **** 
 826:../asf/sam/drivers/gmac/gmac.h **** /**
 827:../asf/sam/drivers/gmac/gmac.h ****  * \brief Get Tx Queue.
 828:../asf/sam/drivers/gmac/gmac.h ****  *
 829:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 830:../asf/sam/drivers/gmac/gmac.h ****  *
 831:../asf/sam/drivers/gmac/gmac.h ****  * \return  Rx queue address.
 832:../asf/sam/drivers/gmac/gmac.h ****  */
 833:../asf/sam/drivers/gmac/gmac.h **** static inline uint32_t gmac_get_tx_queue(Gmac* p_gmac)
 834:../asf/sam/drivers/gmac/gmac.h **** {
 835:../asf/sam/drivers/gmac/gmac.h **** 	return p_gmac->GMAC_TBQB;
 836:../asf/sam/drivers/gmac/gmac.h **** }
 837:../asf/sam/drivers/gmac/gmac.h **** 
 838:../asf/sam/drivers/gmac/gmac.h **** /**
 839:../asf/sam/drivers/gmac/gmac.h ****  * \brief Enable interrupt(s).
 840:../asf/sam/drivers/gmac/gmac.h ****  *
 841:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 842:../asf/sam/drivers/gmac/gmac.h ****  * \param ul_source   Interrupt source(s) to be enabled.
 843:../asf/sam/drivers/gmac/gmac.h ****  */
 844:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_enable_interrupt(Gmac* p_gmac, uint32_t ul_source)
 845:../asf/sam/drivers/gmac/gmac.h **** {
 846:../asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_IER = ul_source;
 847:../asf/sam/drivers/gmac/gmac.h **** }
 848:../asf/sam/drivers/gmac/gmac.h **** 
 849:../asf/sam/drivers/gmac/gmac.h **** /**
 850:../asf/sam/drivers/gmac/gmac.h ****  * \brief Disable interrupt(s).
 851:../asf/sam/drivers/gmac/gmac.h ****  *
 852:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 853:../asf/sam/drivers/gmac/gmac.h ****  * \param ul_source   Interrupt source(s) to be disabled.
 854:../asf/sam/drivers/gmac/gmac.h ****  */
 855:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_disable_interrupt(Gmac* p_gmac, uint32_t ul_source)
 856:../asf/sam/drivers/gmac/gmac.h **** {
 857:../asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_IDR = ul_source;
 858:../asf/sam/drivers/gmac/gmac.h **** }
 859:../asf/sam/drivers/gmac/gmac.h **** 
 860:../asf/sam/drivers/gmac/gmac.h **** /**
 861:../asf/sam/drivers/gmac/gmac.h ****  * \brief Return interrupt status.
 862:../asf/sam/drivers/gmac/gmac.h ****  *
 863:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 864:../asf/sam/drivers/gmac/gmac.h ****  *
 865:../asf/sam/drivers/gmac/gmac.h ****  * \return Interrupt status.
 866:../asf/sam/drivers/gmac/gmac.h ****  */
 867:../asf/sam/drivers/gmac/gmac.h **** static inline uint32_t gmac_get_interrupt_status(Gmac* p_gmac)
 868:../asf/sam/drivers/gmac/gmac.h **** {
 869:../asf/sam/drivers/gmac/gmac.h **** 	return p_gmac->GMAC_ISR;
 870:../asf/sam/drivers/gmac/gmac.h **** }
 871:../asf/sam/drivers/gmac/gmac.h **** 
 872:../asf/sam/drivers/gmac/gmac.h **** /**
 873:../asf/sam/drivers/gmac/gmac.h ****  * \brief Return interrupt mask.
 874:../asf/sam/drivers/gmac/gmac.h ****  *
ARM GAS  /tmp/cc2fwsRs.s 			page 19


 875:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 876:../asf/sam/drivers/gmac/gmac.h ****  *
 877:../asf/sam/drivers/gmac/gmac.h ****  * \return Interrupt mask.
 878:../asf/sam/drivers/gmac/gmac.h ****  */
 879:../asf/sam/drivers/gmac/gmac.h **** static inline uint32_t gmac_get_interrupt_mask(Gmac* p_gmac)
 880:../asf/sam/drivers/gmac/gmac.h **** {
 881:../asf/sam/drivers/gmac/gmac.h **** 	return p_gmac->GMAC_IMR;
 882:../asf/sam/drivers/gmac/gmac.h **** }
 883:../asf/sam/drivers/gmac/gmac.h **** 
 884:../asf/sam/drivers/gmac/gmac.h **** /**
 885:../asf/sam/drivers/gmac/gmac.h ****  * \brief Execute PHY maintenance command.
 886:../asf/sam/drivers/gmac/gmac.h ****  *
 887:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 888:../asf/sam/drivers/gmac/gmac.h ****  * \param uc_phy_addr   PHY address.
 889:../asf/sam/drivers/gmac/gmac.h ****  * \param uc_reg_addr   Register address.
 890:../asf/sam/drivers/gmac/gmac.h ****  * \param uc_rw   1 to Read, 0 to write.
 891:../asf/sam/drivers/gmac/gmac.h ****  * \param us_data   Data to be performed, write only.
 892:../asf/sam/drivers/gmac/gmac.h ****  */
 893:../asf/sam/drivers/gmac/gmac.h **** static inline void gmac_maintain_phy(Gmac* p_gmac,
 894:../asf/sam/drivers/gmac/gmac.h **** 		uint8_t uc_phy_addr, uint8_t uc_reg_addr, uint8_t uc_rw,
 895:../asf/sam/drivers/gmac/gmac.h **** 		uint16_t us_data)
 896:../asf/sam/drivers/gmac/gmac.h **** {
 897:../asf/sam/drivers/gmac/gmac.h **** 	/* Wait until bus idle */
 898:../asf/sam/drivers/gmac/gmac.h **** 	while ((p_gmac->GMAC_NSR & GMAC_NSR_IDLE) == 0);
  45              		.loc 2 898 0
  46 0004 8468     		ldr	r4, [r0, #8]
  47 0006 6407     		lsls	r4, r4, #29
  48 0008 FCD5     		bpl	.L2
 899:../asf/sam/drivers/gmac/gmac.h **** 	/* Write maintain register */
 900:../asf/sam/drivers/gmac/gmac.h **** 	p_gmac->GMAC_MAN = GMAC_MAN_WTN(GMAC_MAN_CODE_VALUE)
 901:../asf/sam/drivers/gmac/gmac.h **** 			| GMAC_MAN_CLTTO
 902:../asf/sam/drivers/gmac/gmac.h **** 			| GMAC_MAN_PHYA(uc_phy_addr)
 903:../asf/sam/drivers/gmac/gmac.h **** 			| GMAC_MAN_REGA(uc_reg_addr)
  49              		.loc 2 903 0
  50 000a 9204     		lsls	r2, r2, #18
  51              	.LVL1:
 904:../asf/sam/drivers/gmac/gmac.h **** 			| GMAC_MAN_OP((uc_rw ? GMAC_MAN_RW_TYPE : GMAC_MAN_READ_ONLY))
 905:../asf/sam/drivers/gmac/gmac.h **** 			| GMAC_MAN_DATA(us_data);
  52              		.loc 2 905 0
  53 000c 114D     		ldr	r5, .L15
 902:../asf/sam/drivers/gmac/gmac.h **** 			| GMAC_MAN_REGA(uc_reg_addr)
  54              		.loc 2 902 0
  55 000e C905     		lsls	r1, r1, #23
  56              	.LVL2:
  57              	.LBE19:
  58              	.LBE18:
  59              	.LBB22:
  60              	.LBB23:
  84:../asf/sam/drivers/gmac/gmac_phy.c **** 
  61              		.loc 1 84 0
  62 0010 0026     		movs	r6, #0
  63              	.LBE23:
  64              	.LBE22:
  65              	.LBB28:
  66              	.LBB20:
 903:../asf/sam/drivers/gmac/gmac.h **** 			| GMAC_MAN_OP((uc_rw ? GMAC_MAN_RW_TYPE : GMAC_MAN_READ_ONLY))
  67              		.loc 2 903 0
ARM GAS  /tmp/cc2fwsRs.s 			page 20


  68 0012 02F4F802 		and	r2, r2, #8126464
  69              	.LBE20:
  70              	.LBE28:
  71              	.LBB29:
  72              	.LBB26:
  89:../asf/sam/drivers/gmac/gmac_phy.c **** 			return GMAC_TIMEOUT;
  73              		.loc 1 89 0
  74 0016 104C     		ldr	r4, .L15+4
  75              	.LBE26:
  76              	.LBE29:
  77              	.LBB30:
  78              	.LBB21:
 902:../asf/sam/drivers/gmac/gmac.h **** 			| GMAC_MAN_REGA(uc_reg_addr)
  79              		.loc 2 902 0
  80 0018 01F07861 		and	r1, r1, #260046848
  81              		.loc 2 905 0
  82 001c 1543     		orrs	r5, r5, r2
  83 001e 0D43     		orrs	r5, r5, r1
 900:../asf/sam/drivers/gmac/gmac.h **** 			| GMAC_MAN_CLTTO
  84              		.loc 2 900 0
  85 0020 4563     		str	r5, [r0, #52]
  86              	.LVL3:
  87              	.LBE21:
  88              	.LBE30:
  89              	.LBB31:
  90              	.LBB27:
  84:../asf/sam/drivers/gmac/gmac_phy.c **** 
  91              		.loc 1 84 0
  92 0022 0196     		str	r6, [sp, #4]
  93 0024 05E0     		b	.L3
  94              	.L5:
  87:../asf/sam/drivers/gmac/gmac_phy.c **** 
  95              		.loc 1 87 0
  96 0026 019A     		ldr	r2, [sp, #4]
  97 0028 0132     		adds	r2, r2, #1
  98 002a 0192     		str	r2, [sp, #4]
  89:../asf/sam/drivers/gmac/gmac_phy.c **** 			return GMAC_TIMEOUT;
  99              		.loc 1 89 0
 100 002c 019A     		ldr	r2, [sp, #4]
 101 002e A242     		cmp	r2, r4
 102 0030 0CD8     		bhi	.L7
 103              	.L3:
 104              	.LVL4:
 105              	.LBB24:
 106              	.LBB25:
 733:../asf/sam/drivers/gmac/gmac.h **** }
 107              		.loc 2 733 0
 108 0032 8268     		ldr	r2, [r0, #8]
 109              	.LVL5:
 110              	.LBE25:
 111              	.LBE24:
  86:../asf/sam/drivers/gmac/gmac_phy.c **** 		ul_retry_count++;
 112              		.loc 1 86 0
 113 0034 5107     		lsls	r1, r2, #29
 114 0036 F6D5     		bpl	.L5
 115              	.L10:
 116              	.LBE27:
ARM GAS  /tmp/cc2fwsRs.s 			page 21


 117              	.LBE31:
 118              	.LBB32:
 119              	.LBB33:
 906:../asf/sam/drivers/gmac/gmac.h **** }
 907:../asf/sam/drivers/gmac/gmac.h **** 
 908:../asf/sam/drivers/gmac/gmac.h **** /**
 909:../asf/sam/drivers/gmac/gmac.h ****  * \brief Get PHY maintenance data returned.
 910:../asf/sam/drivers/gmac/gmac.h ****  *
 911:../asf/sam/drivers/gmac/gmac.h ****  * \param p_gmac   Pointer to the GMAC instance.
 912:../asf/sam/drivers/gmac/gmac.h ****  *
 913:../asf/sam/drivers/gmac/gmac.h ****  * \return Get PHY data.
 914:../asf/sam/drivers/gmac/gmac.h ****  */
 915:../asf/sam/drivers/gmac/gmac.h **** static inline uint16_t gmac_get_phy_data(Gmac* p_gmac)
 916:../asf/sam/drivers/gmac/gmac.h **** {
 917:../asf/sam/drivers/gmac/gmac.h **** 	/* Wait until bus idle */
 918:../asf/sam/drivers/gmac/gmac.h **** 	while ((p_gmac->GMAC_NSR & GMAC_NSR_IDLE) == 0);
 120              		.loc 2 918 0
 121 0038 8268     		ldr	r2, [r0, #8]
 122 003a 5207     		lsls	r2, r2, #29
 123 003c FCD5     		bpl	.L10
 919:../asf/sam/drivers/gmac/gmac.h **** 	/* Return data */
 920:../asf/sam/drivers/gmac/gmac.h **** 	return (uint16_t) (p_gmac->GMAC_MAN & GMAC_MAN_DATA_Msk);
 124              		.loc 2 920 0
 125 003e 426B     		ldr	r2, [r0, #52]
 126              	.LBE33:
 127              	.LBE32:
 109:../asf/sam/drivers/gmac/gmac_phy.c **** 	gmac_maintain_phy(p_gmac, uc_phy_address, uc_address, 1, 0);
 110:../asf/sam/drivers/gmac/gmac_phy.c **** 
 111:../asf/sam/drivers/gmac/gmac_phy.c **** 	if (gmac_phy_wait(p_gmac, MAC_PHY_RETRY_MAX) == GMAC_TIMEOUT) {
 112:../asf/sam/drivers/gmac/gmac_phy.c **** 		return GMAC_TIMEOUT;
 113:../asf/sam/drivers/gmac/gmac_phy.c **** 	}
 114:../asf/sam/drivers/gmac/gmac_phy.c **** 	*p_value = gmac_get_phy_data(p_gmac);
 115:../asf/sam/drivers/gmac/gmac_phy.c **** 	return GMAC_OK;
 128              		.loc 1 115 0
 129 0040 0020     		movs	r0, #0
 130              	.LVL6:
 114:../asf/sam/drivers/gmac/gmac_phy.c **** 	return GMAC_OK;
 131              		.loc 1 114 0
 132 0042 92B2     		uxth	r2, r2
 133 0044 1A60     		str	r2, [r3]
 116:../asf/sam/drivers/gmac/gmac_phy.c **** }
 134              		.loc 1 116 0
 135 0046 03B0     		add	sp, sp, #12
 136              		.cfi_remember_state
 137              		.cfi_def_cfa_offset 12
 138              		@ sp needed
 139 0048 70BC     		pop	{r4, r5, r6}
 140              		.cfi_restore 6
 141              		.cfi_restore 5
 142              		.cfi_restore 4
 143              		.cfi_def_cfa_offset 0
 144 004a 7047     		bx	lr
 145              	.LVL7:
 146              	.L7:
 147              		.cfi_restore_state
 112:../asf/sam/drivers/gmac/gmac_phy.c **** 	}
 148              		.loc 1 112 0
ARM GAS  /tmp/cc2fwsRs.s 			page 22


 149 004c 0120     		movs	r0, #1
 150              	.LVL8:
 151              		.loc 1 116 0
 152 004e 03B0     		add	sp, sp, #12
 153              		.cfi_def_cfa_offset 12
 154              		@ sp needed
 155 0050 70BC     		pop	{r4, r5, r6}
 156              		.cfi_restore 4
 157              		.cfi_restore 5
 158              		.cfi_restore 6
 159              		.cfi_def_cfa_offset 0
 160 0052 7047     		bx	lr
 161              	.L16:
 162              		.align	2
 163              	.L15:
 164 0054 00000260 		.word	1610743808
 165 0058 3F420F00 		.word	999999
 166              		.cfi_endproc
 167              	.LFE219:
 168              		.size	gmac_phy_read, .-gmac_phy_read
 169              		.section	.text.gmac_phy_write,"ax",%progbits
 170              		.align	1
 171              		.p2align 2,,3
 172              		.global	gmac_phy_write
 173              		.syntax unified
 174              		.thumb
 175              		.thumb_func
 176              		.fpu fpv5-d16
 177              		.type	gmac_phy_write, %function
 178              	gmac_phy_write:
 179              	.LFB220:
 117:../asf/sam/drivers/gmac/gmac_phy.c **** 
 118:../asf/sam/drivers/gmac/gmac_phy.c **** /**
 119:../asf/sam/drivers/gmac/gmac_phy.c ****  * \brief Write the PHY register.
 120:../asf/sam/drivers/gmac/gmac_phy.c ****  *
 121:../asf/sam/drivers/gmac/gmac_phy.c ****  * \param p_gmac   Pointer to the GMAC instance.
 122:../asf/sam/drivers/gmac/gmac_phy.c ****  * \param uc_phy_address PHY Address.
 123:../asf/sam/drivers/gmac/gmac_phy.c ****  * \param uc_address Register Address.
 124:../asf/sam/drivers/gmac/gmac_phy.c ****  * \param ul_value Data to write, actually 16-bit data.
 125:../asf/sam/drivers/gmac/gmac_phy.c ****  *
 126:../asf/sam/drivers/gmac/gmac_phy.c ****  * \Return GMAC_OK if successfully, GMAC_TIMEOUT if timeout.
 127:../asf/sam/drivers/gmac/gmac_phy.c ****  */
 128:../asf/sam/drivers/gmac/gmac_phy.c **** uint8_t gmac_phy_write(Gmac* p_gmac, uint8_t uc_phy_address,
 129:../asf/sam/drivers/gmac/gmac_phy.c **** 		uint8_t uc_address, uint32_t ul_value)
 130:../asf/sam/drivers/gmac/gmac_phy.c **** {
 180              		.loc 1 130 0
 181              		.cfi_startproc
 182              		@ args = 0, pretend = 0, frame = 8
 183              		@ frame_needed = 0, uses_anonymous_args = 0
 184              		@ link register save eliminated.
 185              	.LVL9:
 186 0000 70B4     		push	{r4, r5, r6}
 187              		.cfi_def_cfa_offset 12
 188              		.cfi_offset 4, -12
 189              		.cfi_offset 5, -8
 190              		.cfi_offset 6, -4
 191 0002 83B0     		sub	sp, sp, #12
ARM GAS  /tmp/cc2fwsRs.s 			page 23


 192              		.cfi_def_cfa_offset 24
 193              	.L18:
 194              	.LBB34:
 195              	.LBB35:
 898:../asf/sam/drivers/gmac/gmac.h **** 	/* Write maintain register */
 196              		.loc 2 898 0
 197 0004 8468     		ldr	r4, [r0, #8]
 198 0006 6407     		lsls	r4, r4, #29
 199 0008 FCD5     		bpl	.L18
 903:../asf/sam/drivers/gmac/gmac.h **** 			| GMAC_MAN_OP((uc_rw ? GMAC_MAN_RW_TYPE : GMAC_MAN_READ_ONLY))
 200              		.loc 2 903 0
 201 000a 9204     		lsls	r2, r2, #18
 202              	.LVL10:
 905:../asf/sam/drivers/gmac/gmac.h **** }
 203              		.loc 2 905 0
 204 000c 0F4C     		ldr	r4, .L26
 902:../asf/sam/drivers/gmac/gmac.h **** 			| GMAC_MAN_REGA(uc_reg_addr)
 205              		.loc 2 902 0
 206 000e C905     		lsls	r1, r1, #23
 207              	.LVL11:
 208              	.LBE35:
 209              	.LBE34:
 210              	.LBB38:
 211              	.LBB39:
  84:../asf/sam/drivers/gmac/gmac_phy.c **** 
 212              		.loc 1 84 0
 213 0010 0026     		movs	r6, #0
 214              	.LBE39:
 215              	.LBE38:
 216              	.LBB44:
 217              	.LBB36:
 903:../asf/sam/drivers/gmac/gmac.h **** 			| GMAC_MAN_OP((uc_rw ? GMAC_MAN_RW_TYPE : GMAC_MAN_READ_ONLY))
 218              		.loc 2 903 0
 219 0012 02F4F805 		and	r5, r2, #8126464
 905:../asf/sam/drivers/gmac/gmac.h **** }
 220              		.loc 2 905 0
 221 0016 9BB2     		uxth	r3, r3
 222              	.LVL12:
 902:../asf/sam/drivers/gmac/gmac.h **** 			| GMAC_MAN_REGA(uc_reg_addr)
 223              		.loc 2 902 0
 224 0018 01F07861 		and	r1, r1, #260046848
 225              	.LBE36:
 226              	.LBE44:
 227              	.LBB45:
 228              	.LBB42:
  89:../asf/sam/drivers/gmac/gmac_phy.c **** 			return GMAC_TIMEOUT;
 229              		.loc 1 89 0
 230 001c 0C4A     		ldr	r2, .L26+4
 231              	.LBE42:
 232              	.LBE45:
 233              	.LBB46:
 234              	.LBB37:
 905:../asf/sam/drivers/gmac/gmac.h **** }
 235              		.loc 2 905 0
 236 001e 2C43     		orrs	r4, r4, r5
 237 0020 0C43     		orrs	r4, r4, r1
 238 0022 1C43     		orrs	r4, r4, r3
ARM GAS  /tmp/cc2fwsRs.s 			page 24


 900:../asf/sam/drivers/gmac/gmac.h **** 			| GMAC_MAN_CLTTO
 239              		.loc 2 900 0
 240 0024 4463     		str	r4, [r0, #52]
 241              	.LVL13:
 242              	.LBE37:
 243              	.LBE46:
 244              	.LBB47:
 245              	.LBB43:
  84:../asf/sam/drivers/gmac/gmac_phy.c **** 
 246              		.loc 1 84 0
 247 0026 0196     		str	r6, [sp, #4]
 248 0028 05E0     		b	.L19
 249              	.L21:
  87:../asf/sam/drivers/gmac/gmac_phy.c **** 
 250              		.loc 1 87 0
 251 002a 019B     		ldr	r3, [sp, #4]
 252 002c 0133     		adds	r3, r3, #1
 253 002e 0193     		str	r3, [sp, #4]
  89:../asf/sam/drivers/gmac/gmac_phy.c **** 			return GMAC_TIMEOUT;
 254              		.loc 1 89 0
 255 0030 019B     		ldr	r3, [sp, #4]
 256 0032 9342     		cmp	r3, r2
 257 0034 06D8     		bhi	.L22
 258              	.L19:
 259              	.LVL14:
 260              	.LBB40:
 261              	.LBB41:
 733:../asf/sam/drivers/gmac/gmac.h **** }
 262              		.loc 2 733 0
 263 0036 8368     		ldr	r3, [r0, #8]
 264              	.LVL15:
 265              	.LBE41:
 266              	.LBE40:
  86:../asf/sam/drivers/gmac/gmac_phy.c **** 		ul_retry_count++;
 267              		.loc 1 86 0
 268 0038 5B07     		lsls	r3, r3, #29
 269 003a F6D5     		bpl	.L21
 270              	.LBE43:
 271              	.LBE47:
 131:../asf/sam/drivers/gmac/gmac_phy.c **** 	gmac_maintain_phy(p_gmac, uc_phy_address, uc_address, 0, ul_value);
 132:../asf/sam/drivers/gmac/gmac_phy.c **** 
 133:../asf/sam/drivers/gmac/gmac_phy.c **** 	if (gmac_phy_wait(p_gmac, MAC_PHY_RETRY_MAX) == GMAC_TIMEOUT) {
 134:../asf/sam/drivers/gmac/gmac_phy.c **** 		return GMAC_TIMEOUT;
 135:../asf/sam/drivers/gmac/gmac_phy.c **** 	}
 136:../asf/sam/drivers/gmac/gmac_phy.c **** 	return GMAC_OK;
 272              		.loc 1 136 0
 273 003c 0020     		movs	r0, #0
 274              	.LVL16:
 137:../asf/sam/drivers/gmac/gmac_phy.c **** }
 275              		.loc 1 137 0
 276 003e 03B0     		add	sp, sp, #12
 277              		.cfi_remember_state
 278              		.cfi_def_cfa_offset 12
 279              		@ sp needed
 280 0040 70BC     		pop	{r4, r5, r6}
 281              		.cfi_restore 6
 282              		.cfi_restore 5
ARM GAS  /tmp/cc2fwsRs.s 			page 25


 283              		.cfi_restore 4
 284              		.cfi_def_cfa_offset 0
 285 0042 7047     		bx	lr
 286              	.LVL17:
 287              	.L22:
 288              		.cfi_restore_state
 134:../asf/sam/drivers/gmac/gmac_phy.c **** 	}
 289              		.loc 1 134 0
 290 0044 0120     		movs	r0, #1
 291              	.LVL18:
 292              		.loc 1 137 0
 293 0046 03B0     		add	sp, sp, #12
 294              		.cfi_def_cfa_offset 12
 295              		@ sp needed
 296 0048 70BC     		pop	{r4, r5, r6}
 297              		.cfi_restore 4
 298              		.cfi_restore 5
 299              		.cfi_restore 6
 300              		.cfi_def_cfa_offset 0
 301 004a 7047     		bx	lr
 302              	.L27:
 303              		.align	2
 304              	.L26:
 305 004c 00000250 		.word	1342308352
 306 0050 3F420F00 		.word	999999
 307              		.cfi_endproc
 308              	.LFE220:
 309              		.size	gmac_phy_write, .-gmac_phy_write
 310              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 311              		.align	2
 312              		.type	cpu_irq_critical_section_counter, %object
 313              		.size	cpu_irq_critical_section_counter, 4
 314              	cpu_irq_critical_section_counter:
 315 0000 00000000 		.space	4
 316              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 317              		.type	cpu_irq_prev_interrupt_state, %object
 318              		.size	cpu_irq_prev_interrupt_state, 1
 319              	cpu_irq_prev_interrupt_state:
 320 0000 00       		.space	1
 321              		.text
 322              	.Letext0:
 323              		.file 3 "/usr/include/newlib/machine/_default_types.h"
 324              		.file 4 "/usr/include/newlib/sys/_stdint.h"
 325              		.file 5 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 326              		.file 6 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 327              		.file 7 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/gmac
 328              		.file 8 "/usr/include/newlib/sys/lock.h"
 329              		.file 9 "/usr/include/newlib/sys/_types.h"
 330              		.file 10 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 331              		.file 11 "/usr/include/newlib/sys/reent.h"
 332              		.file 12 "/usr/include/newlib/stdlib.h"
 333              		.file 13 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 334              		.section	.debug_info,"",%progbits
 335              	.Ldebug_info0:
 336 0000 90160000 		.4byte	0x1690
 337 0004 0400     		.2byte	0x4
 338 0006 00000000 		.4byte	.Ldebug_abbrev0
ARM GAS  /tmp/cc2fwsRs.s 			page 26


 339 000a 04       		.byte	0x4
 340 000b 01       		.uleb128 0x1
 341 000c F90C0000 		.4byte	.LASF341
 342 0010 0C       		.byte	0xc
 343 0011 29060000 		.4byte	.LASF342
 344 0015 A8060000 		.4byte	.LASF343
 345 0019 80000000 		.4byte	.Ldebug_ranges0+0x80
 346 001d 00000000 		.4byte	0
 347 0021 00000000 		.4byte	.Ldebug_line0
 348 0025 02       		.uleb128 0x2
 349 0026 04       		.byte	0x4
 350 0027 05       		.byte	0x5
 351 0028 696E7400 		.ascii	"int\000"
 352 002c 03       		.uleb128 0x3
 353 002d 04       		.byte	0x4
 354 002e 07       		.byte	0x7
 355 002f F70A0000 		.4byte	.LASF0
 356 0033 03       		.uleb128 0x3
 357 0034 01       		.byte	0x1
 358 0035 06       		.byte	0x6
 359 0036 140E0000 		.4byte	.LASF1
 360 003a 04       		.uleb128 0x4
 361 003b AF0A0000 		.4byte	.LASF4
 362 003f 03       		.byte	0x3
 363 0040 1D       		.byte	0x1d
 364 0041 45000000 		.4byte	0x45
 365 0045 03       		.uleb128 0x3
 366 0046 01       		.byte	0x1
 367 0047 08       		.byte	0x8
 368 0048 E30B0000 		.4byte	.LASF2
 369 004c 03       		.uleb128 0x3
 370 004d 02       		.byte	0x2
 371 004e 05       		.byte	0x5
 372 004f 9F090000 		.4byte	.LASF3
 373 0053 04       		.uleb128 0x4
 374 0054 8D040000 		.4byte	.LASF5
 375 0058 03       		.byte	0x3
 376 0059 2B       		.byte	0x2b
 377 005a 5E000000 		.4byte	0x5e
 378 005e 03       		.uleb128 0x3
 379 005f 02       		.byte	0x2
 380 0060 07       		.byte	0x7
 381 0061 270E0000 		.4byte	.LASF6
 382 0065 04       		.uleb128 0x4
 383 0066 84060000 		.4byte	.LASF7
 384 006a 03       		.byte	0x3
 385 006b 3F       		.byte	0x3f
 386 006c 70000000 		.4byte	0x70
 387 0070 03       		.uleb128 0x3
 388 0071 04       		.byte	0x4
 389 0072 05       		.byte	0x5
 390 0073 DE090000 		.4byte	.LASF8
 391 0077 04       		.uleb128 0x4
 392 0078 61090000 		.4byte	.LASF9
 393 007c 03       		.byte	0x3
 394 007d 41       		.byte	0x41
 395 007e 82000000 		.4byte	0x82
ARM GAS  /tmp/cc2fwsRs.s 			page 27


 396 0082 03       		.uleb128 0x3
 397 0083 04       		.byte	0x4
 398 0084 07       		.byte	0x7
 399 0085 4C0B0000 		.4byte	.LASF10
 400 0089 03       		.uleb128 0x3
 401 008a 08       		.byte	0x8
 402 008b 05       		.byte	0x5
 403 008c 85070000 		.4byte	.LASF11
 404 0090 03       		.uleb128 0x3
 405 0091 08       		.byte	0x8
 406 0092 07       		.byte	0x7
 407 0093 D5030000 		.4byte	.LASF12
 408 0097 04       		.uleb128 0x4
 409 0098 1D070000 		.4byte	.LASF13
 410 009c 04       		.byte	0x4
 411 009d 18       		.byte	0x18
 412 009e 3A000000 		.4byte	0x3a
 413 00a2 04       		.uleb128 0x4
 414 00a3 38090000 		.4byte	.LASF14
 415 00a7 04       		.byte	0x4
 416 00a8 24       		.byte	0x24
 417 00a9 53000000 		.4byte	0x53
 418 00ad 04       		.uleb128 0x4
 419 00ae 9F0B0000 		.4byte	.LASF15
 420 00b2 04       		.byte	0x4
 421 00b3 2C       		.byte	0x2c
 422 00b4 65000000 		.4byte	0x65
 423 00b8 05       		.uleb128 0x5
 424 00b9 AD000000 		.4byte	0xad
 425 00bd 04       		.uleb128 0x4
 426 00be 20030000 		.4byte	.LASF16
 427 00c2 04       		.byte	0x4
 428 00c3 30       		.byte	0x30
 429 00c4 77000000 		.4byte	0x77
 430 00c8 05       		.uleb128 0x5
 431 00c9 BD000000 		.4byte	0xbd
 432 00cd 06       		.uleb128 0x6
 433 00ce C8000000 		.4byte	0xc8
 434 00d2 06       		.uleb128 0x6
 435 00d3 BD000000 		.4byte	0xbd
 436 00d7 07       		.uleb128 0x7
 437 00d8 04       		.byte	0x4
 438 00d9 08       		.uleb128 0x8
 439 00da C8000000 		.4byte	0xc8
 440 00de E9000000 		.4byte	0xe9
 441 00e2 09       		.uleb128 0x9
 442 00e3 EE000000 		.4byte	0xee
 443 00e7 07       		.byte	0x7
 444 00e8 00       		.byte	0
 445 00e9 05       		.uleb128 0x5
 446 00ea D9000000 		.4byte	0xd9
 447 00ee 03       		.uleb128 0x3
 448 00ef 04       		.byte	0x4
 449 00f0 07       		.byte	0x7
 450 00f1 430B0000 		.4byte	.LASF17
 451 00f5 08       		.uleb128 0x8
 452 00f6 CD000000 		.4byte	0xcd
ARM GAS  /tmp/cc2fwsRs.s 			page 28


 453 00fa 05010000 		.4byte	0x105
 454 00fe 09       		.uleb128 0x9
 455 00ff EE000000 		.4byte	0xee
 456 0103 01       		.byte	0x1
 457 0104 00       		.byte	0
 458 0105 06       		.uleb128 0x6
 459 0106 F5000000 		.4byte	0xf5
 460 010a 05       		.uleb128 0x5
 461 010b 05010000 		.4byte	0x105
 462 010f 05       		.uleb128 0x5
 463 0110 05010000 		.4byte	0x105
 464 0114 08       		.uleb128 0x8
 465 0115 CD000000 		.4byte	0xcd
 466 0119 24010000 		.4byte	0x124
 467 011d 09       		.uleb128 0x9
 468 011e EE000000 		.4byte	0xee
 469 0122 03       		.byte	0x3
 470 0123 00       		.byte	0
 471 0124 06       		.uleb128 0x6
 472 0125 14010000 		.4byte	0x114
 473 0129 05       		.uleb128 0x5
 474 012a 24010000 		.4byte	0x124
 475 012e 05       		.uleb128 0x5
 476 012f 24010000 		.4byte	0x124
 477 0133 08       		.uleb128 0x8
 478 0134 CD000000 		.4byte	0xcd
 479 0138 43010000 		.4byte	0x143
 480 013c 09       		.uleb128 0x9
 481 013d EE000000 		.4byte	0xee
 482 0141 04       		.byte	0x4
 483 0142 00       		.byte	0
 484 0143 06       		.uleb128 0x6
 485 0144 33010000 		.4byte	0x133
 486 0148 05       		.uleb128 0x5
 487 0149 43010000 		.4byte	0x143
 488 014d 05       		.uleb128 0x5
 489 014e 43010000 		.4byte	0x143
 490 0152 05       		.uleb128 0x5
 491 0153 43010000 		.4byte	0x143
 492 0157 0A       		.uleb128 0xa
 493 0158 E7090000 		.4byte	.LASF18
 494 015c 05       		.byte	0x5
 495 015d 6508     		.2byte	0x865
 496 015f B8000000 		.4byte	0xb8
 497 0163 0B       		.uleb128 0xb
 498 0164 A0000000 		.4byte	.LASF19
 499 0168 06       		.byte	0x6
 500 0169 3A       		.byte	0x3a
 501 016a BD000000 		.4byte	0xbd
 502 016e 08       		.uleb128 0x8
 503 016f C8000000 		.4byte	0xc8
 504 0173 7E010000 		.4byte	0x17e
 505 0177 09       		.uleb128 0x9
 506 0178 EE000000 		.4byte	0xee
 507 017c 03       		.byte	0x3
 508 017d 00       		.byte	0
 509 017e 05       		.uleb128 0x5
ARM GAS  /tmp/cc2fwsRs.s 			page 29


 510 017f 6E010000 		.4byte	0x16e
 511 0183 0C       		.uleb128 0xc
 512 0184 08       		.byte	0x8
 513 0185 07       		.byte	0x7
 514 0186 38       		.byte	0x38
 515 0187 A4010000 		.4byte	0x1a4
 516 018b 0D       		.uleb128 0xd
 517 018c B9040000 		.4byte	.LASF20
 518 0190 07       		.byte	0x7
 519 0191 39       		.byte	0x39
 520 0192 C8000000 		.4byte	0xc8
 521 0196 00       		.byte	0
 522 0197 0D       		.uleb128 0xd
 523 0198 E0040000 		.4byte	.LASF21
 524 019c 07       		.byte	0x7
 525 019d 3A       		.byte	0x3a
 526 019e C8000000 		.4byte	0xc8
 527 01a2 04       		.byte	0x4
 528 01a3 00       		.byte	0
 529 01a4 04       		.uleb128 0x4
 530 01a5 D9040000 		.4byte	.LASF22
 531 01a9 07       		.byte	0x7
 532 01aa 3B       		.byte	0x3b
 533 01ab 83010000 		.4byte	0x183
 534 01af 0E       		.uleb128 0xe
 535 01b0 C007     		.2byte	0x7c0
 536 01b2 07       		.byte	0x7
 537 01b3 3E       		.byte	0x3e
 538 01b4 8C0A0000 		.4byte	0xa8c
 539 01b8 0D       		.uleb128 0xd
 540 01b9 D5090000 		.4byte	.LASF23
 541 01bd 07       		.byte	0x7
 542 01be 3F       		.byte	0x3f
 543 01bf C8000000 		.4byte	0xc8
 544 01c3 00       		.byte	0
 545 01c4 0D       		.uleb128 0xd
 546 01c5 7F090000 		.4byte	.LASF24
 547 01c9 07       		.byte	0x7
 548 01ca 40       		.byte	0x40
 549 01cb C8000000 		.4byte	0xc8
 550 01cf 04       		.byte	0x4
 551 01d0 0D       		.uleb128 0xd
 552 01d1 67070000 		.4byte	.LASF25
 553 01d5 07       		.byte	0x7
 554 01d6 41       		.byte	0x41
 555 01d7 CD000000 		.4byte	0xcd
 556 01db 08       		.byte	0x8
 557 01dc 0D       		.uleb128 0xd
 558 01dd D9010000 		.4byte	.LASF26
 559 01e1 07       		.byte	0x7
 560 01e2 42       		.byte	0x42
 561 01e3 C8000000 		.4byte	0xc8
 562 01e7 0C       		.byte	0xc
 563 01e8 0D       		.uleb128 0xd
 564 01e9 85020000 		.4byte	.LASF27
 565 01ed 07       		.byte	0x7
 566 01ee 43       		.byte	0x43
ARM GAS  /tmp/cc2fwsRs.s 			page 30


 567 01ef C8000000 		.4byte	0xc8
 568 01f3 10       		.byte	0x10
 569 01f4 0D       		.uleb128 0xd
 570 01f5 C2080000 		.4byte	.LASF28
 571 01f9 07       		.byte	0x7
 572 01fa 44       		.byte	0x44
 573 01fb C8000000 		.4byte	0xc8
 574 01ff 14       		.byte	0x14
 575 0200 0D       		.uleb128 0xd
 576 0201 19020000 		.4byte	.LASF29
 577 0205 07       		.byte	0x7
 578 0206 45       		.byte	0x45
 579 0207 C8000000 		.4byte	0xc8
 580 020b 18       		.byte	0x18
 581 020c 0D       		.uleb128 0xd
 582 020d 44010000 		.4byte	.LASF30
 583 0211 07       		.byte	0x7
 584 0212 46       		.byte	0x46
 585 0213 C8000000 		.4byte	0xc8
 586 0217 1C       		.byte	0x1c
 587 0218 0D       		.uleb128 0xd
 588 0219 5B010000 		.4byte	.LASF31
 589 021d 07       		.byte	0x7
 590 021e 47       		.byte	0x47
 591 021f C8000000 		.4byte	0xc8
 592 0223 20       		.byte	0x20
 593 0224 0D       		.uleb128 0xd
 594 0225 B0070000 		.4byte	.LASF32
 595 0229 07       		.byte	0x7
 596 022a 48       		.byte	0x48
 597 022b CD000000 		.4byte	0xcd
 598 022f 24       		.byte	0x24
 599 0230 0D       		.uleb128 0xd
 600 0231 720E0000 		.4byte	.LASF33
 601 0235 07       		.byte	0x7
 602 0236 49       		.byte	0x49
 603 0237 C8000000 		.4byte	0xc8
 604 023b 28       		.byte	0x28
 605 023c 0D       		.uleb128 0xd
 606 023d E6070000 		.4byte	.LASF34
 607 0241 07       		.byte	0x7
 608 0242 4A       		.byte	0x4a
 609 0243 C8000000 		.4byte	0xc8
 610 0247 2C       		.byte	0x2c
 611 0248 0D       		.uleb128 0xd
 612 0249 FF010000 		.4byte	.LASF35
 613 024d 07       		.byte	0x7
 614 024e 4B       		.byte	0x4b
 615 024f C8000000 		.4byte	0xc8
 616 0253 30       		.byte	0x30
 617 0254 0D       		.uleb128 0xd
 618 0255 030E0000 		.4byte	.LASF36
 619 0259 07       		.byte	0x7
 620 025a 4C       		.byte	0x4c
 621 025b C8000000 		.4byte	0xc8
 622 025f 34       		.byte	0x34
 623 0260 0D       		.uleb128 0xd
ARM GAS  /tmp/cc2fwsRs.s 			page 31


 624 0261 A90D0000 		.4byte	.LASF37
 625 0265 07       		.byte	0x7
 626 0266 4D       		.byte	0x4d
 627 0267 CD000000 		.4byte	0xcd
 628 026b 38       		.byte	0x38
 629 026c 0D       		.uleb128 0xd
 630 026d 96090000 		.4byte	.LASF38
 631 0271 07       		.byte	0x7
 632 0272 4E       		.byte	0x4e
 633 0273 C8000000 		.4byte	0xc8
 634 0277 3C       		.byte	0x3c
 635 0278 0D       		.uleb128 0xd
 636 0279 040B0000 		.4byte	.LASF39
 637 027d 07       		.byte	0x7
 638 027e 4F       		.byte	0x4f
 639 027f C8000000 		.4byte	0xc8
 640 0283 40       		.byte	0x40
 641 0284 0D       		.uleb128 0xd
 642 0285 18090000 		.4byte	.LASF40
 643 0289 07       		.byte	0x7
 644 028a 50       		.byte	0x50
 645 028b C8000000 		.4byte	0xc8
 646 028f 44       		.byte	0x44
 647 0290 0D       		.uleb128 0xd
 648 0291 FD090000 		.4byte	.LASF41
 649 0295 07       		.byte	0x7
 650 0296 51       		.byte	0x51
 651 0297 C8000000 		.4byte	0xc8
 652 029b 48       		.byte	0x48
 653 029c 0D       		.uleb128 0xd
 654 029d 54080000 		.4byte	.LASF42
 655 02a1 07       		.byte	0x7
 656 02a2 52       		.byte	0x52
 657 02a3 A10A0000 		.4byte	0xaa1
 658 02a7 4C       		.byte	0x4c
 659 02a8 0D       		.uleb128 0xd
 660 02a9 CB000000 		.4byte	.LASF43
 661 02ad 07       		.byte	0x7
 662 02ae 53       		.byte	0x53
 663 02af C8000000 		.4byte	0xc8
 664 02b3 80       		.byte	0x80
 665 02b4 0D       		.uleb128 0xd
 666 02b5 F8000000 		.4byte	.LASF44
 667 02b9 07       		.byte	0x7
 668 02ba 54       		.byte	0x54
 669 02bb C8000000 		.4byte	0xc8
 670 02bf 84       		.byte	0x84
 671 02c0 0D       		.uleb128 0xd
 672 02c1 A70E0000 		.4byte	.LASF45
 673 02c5 07       		.byte	0x7
 674 02c6 55       		.byte	0x55
 675 02c7 B00A0000 		.4byte	0xab0
 676 02cb 88       		.byte	0x88
 677 02cc 0D       		.uleb128 0xd
 678 02cd DF080000 		.4byte	.LASF46
 679 02d1 07       		.byte	0x7
 680 02d2 56       		.byte	0x56
ARM GAS  /tmp/cc2fwsRs.s 			page 32


 681 02d3 C8000000 		.4byte	0xc8
 682 02d7 A8       		.byte	0xa8
 683 02d8 0D       		.uleb128 0xd
 684 02d9 EA080000 		.4byte	.LASF47
 685 02dd 07       		.byte	0x7
 686 02de 57       		.byte	0x57
 687 02df C8000000 		.4byte	0xc8
 688 02e3 AC       		.byte	0xac
 689 02e4 0D       		.uleb128 0xd
 690 02e5 F5080000 		.4byte	.LASF48
 691 02e9 07       		.byte	0x7
 692 02ea 58       		.byte	0x58
 693 02eb C8000000 		.4byte	0xc8
 694 02ef B0       		.byte	0xb0
 695 02f0 0D       		.uleb128 0xd
 696 02f1 00090000 		.4byte	.LASF49
 697 02f5 07       		.byte	0x7
 698 02f6 59       		.byte	0x59
 699 02f7 C8000000 		.4byte	0xc8
 700 02fb B4       		.byte	0xb4
 701 02fc 0D       		.uleb128 0xd
 702 02fd 5E0B0000 		.4byte	.LASF50
 703 0301 07       		.byte	0x7
 704 0302 5A       		.byte	0x5a
 705 0303 C8000000 		.4byte	0xc8
 706 0307 B8       		.byte	0xb8
 707 0308 0D       		.uleb128 0xd
 708 0309 57090000 		.4byte	.LASF51
 709 030d 07       		.byte	0x7
 710 030e 5B       		.byte	0x5b
 711 030f C8000000 		.4byte	0xc8
 712 0313 BC       		.byte	0xbc
 713 0314 0D       		.uleb128 0xd
 714 0315 BF020000 		.4byte	.LASF52
 715 0319 07       		.byte	0x7
 716 031a 5C       		.byte	0x5c
 717 031b C8000000 		.4byte	0xc8
 718 031f C0       		.byte	0xc0
 719 0320 0D       		.uleb128 0xd
 720 0321 A70B0000 		.4byte	.LASF53
 721 0325 07       		.byte	0x7
 722 0326 5D       		.byte	0x5d
 723 0327 C8000000 		.4byte	0xc8
 724 032b C4       		.byte	0xc4
 725 032c 0D       		.uleb128 0xd
 726 032d F9020000 		.4byte	.LASF54
 727 0331 07       		.byte	0x7
 728 0332 5E       		.byte	0x5e
 729 0333 C8000000 		.4byte	0xc8
 730 0337 C8       		.byte	0xc8
 731 0338 0D       		.uleb128 0xd
 732 0339 D7050000 		.4byte	.LASF55
 733 033d 07       		.byte	0x7
 734 033e 5F       		.byte	0x5f
 735 033f C8000000 		.4byte	0xc8
 736 0343 CC       		.byte	0xcc
 737 0344 0D       		.uleb128 0xd
ARM GAS  /tmp/cc2fwsRs.s 			page 33


 738 0345 5E080000 		.4byte	.LASF56
 739 0349 07       		.byte	0x7
 740 034a 60       		.byte	0x60
 741 034b D50A0000 		.4byte	0xad5
 742 034f D0       		.byte	0xd0
 743 0350 0D       		.uleb128 0xd
 744 0351 56070000 		.4byte	.LASF57
 745 0355 07       		.byte	0x7
 746 0356 61       		.byte	0x61
 747 0357 C8000000 		.4byte	0xc8
 748 035b DC       		.byte	0xdc
 749 035c 0D       		.uleb128 0xd
 750 035d 72060000 		.4byte	.LASF58
 751 0361 07       		.byte	0x7
 752 0362 62       		.byte	0x62
 753 0363 C8000000 		.4byte	0xc8
 754 0367 E0       		.byte	0xe0
 755 0368 0D       		.uleb128 0xd
 756 0369 55060000 		.4byte	.LASF59
 757 036d 07       		.byte	0x7
 758 036e 63       		.byte	0x63
 759 036f C8000000 		.4byte	0xc8
 760 0373 E4       		.byte	0xe4
 761 0374 0D       		.uleb128 0xd
 762 0375 DA0C0000 		.4byte	.LASF60
 763 0379 07       		.byte	0x7
 764 037a 64       		.byte	0x64
 765 037b CD000000 		.4byte	0xcd
 766 037f E8       		.byte	0xe8
 767 0380 0D       		.uleb128 0xd
 768 0381 2E010000 		.4byte	.LASF61
 769 0385 07       		.byte	0x7
 770 0386 65       		.byte	0x65
 771 0387 CD000000 		.4byte	0xcd
 772 038b EC       		.byte	0xec
 773 038c 0D       		.uleb128 0xd
 774 038d 4A070000 		.4byte	.LASF62
 775 0391 07       		.byte	0x7
 776 0392 66       		.byte	0x66
 777 0393 CD000000 		.4byte	0xcd
 778 0397 F0       		.byte	0xf0
 779 0398 0D       		.uleb128 0xd
 780 0399 A9090000 		.4byte	.LASF63
 781 039d 07       		.byte	0x7
 782 039e 67       		.byte	0x67
 783 039f CD000000 		.4byte	0xcd
 784 03a3 F4       		.byte	0xf4
 785 03a4 0D       		.uleb128 0xd
 786 03a5 68080000 		.4byte	.LASF64
 787 03a9 07       		.byte	0x7
 788 03aa 68       		.byte	0x68
 789 03ab 0A010000 		.4byte	0x10a
 790 03af F8       		.byte	0xf8
 791 03b0 0F       		.uleb128 0xf
 792 03b1 55000000 		.4byte	.LASF65
 793 03b5 07       		.byte	0x7
 794 03b6 69       		.byte	0x69
ARM GAS  /tmp/cc2fwsRs.s 			page 34


 795 03b7 CD000000 		.4byte	0xcd
 796 03bb 0001     		.2byte	0x100
 797 03bd 0F       		.uleb128 0xf
 798 03be 9D0A0000 		.4byte	.LASF66
 799 03c2 07       		.byte	0x7
 800 03c3 6A       		.byte	0x6a
 801 03c4 CD000000 		.4byte	0xcd
 802 03c8 0401     		.2byte	0x104
 803 03ca 0F       		.uleb128 0xf
 804 03cb 08020000 		.4byte	.LASF67
 805 03cf 07       		.byte	0x7
 806 03d0 6B       		.byte	0x6b
 807 03d1 CD000000 		.4byte	0xcd
 808 03d5 0801     		.2byte	0x108
 809 03d7 0F       		.uleb128 0xf
 810 03d8 F4050000 		.4byte	.LASF68
 811 03dc 07       		.byte	0x7
 812 03dd 6C       		.byte	0x6c
 813 03de CD000000 		.4byte	0xcd
 814 03e2 0C01     		.2byte	0x10c
 815 03e4 0F       		.uleb128 0xf
 816 03e5 C0030000 		.4byte	.LASF69
 817 03e9 07       		.byte	0x7
 818 03ea 6D       		.byte	0x6d
 819 03eb CD000000 		.4byte	0xcd
 820 03ef 1001     		.2byte	0x110
 821 03f1 0F       		.uleb128 0xf
 822 03f2 E5060000 		.4byte	.LASF70
 823 03f6 07       		.byte	0x7
 824 03f7 6E       		.byte	0x6e
 825 03f8 CD000000 		.4byte	0xcd
 826 03fc 1401     		.2byte	0x114
 827 03fe 0F       		.uleb128 0xf
 828 03ff 080A0000 		.4byte	.LASF71
 829 0403 07       		.byte	0x7
 830 0404 6F       		.byte	0x6f
 831 0405 CD000000 		.4byte	0xcd
 832 0409 1801     		.2byte	0x118
 833 040b 0F       		.uleb128 0xf
 834 040c 22090000 		.4byte	.LASF72
 835 0410 07       		.byte	0x7
 836 0411 70       		.byte	0x70
 837 0412 CD000000 		.4byte	0xcd
 838 0416 1C01     		.2byte	0x11c
 839 0418 0F       		.uleb128 0xf
 840 0419 A5020000 		.4byte	.LASF73
 841 041d 07       		.byte	0x7
 842 041e 71       		.byte	0x71
 843 041f CD000000 		.4byte	0xcd
 844 0423 2001     		.2byte	0x120
 845 0425 0F       		.uleb128 0xf
 846 0426 23020000 		.4byte	.LASF74
 847 042a 07       		.byte	0x7
 848 042b 72       		.byte	0x72
 849 042c CD000000 		.4byte	0xcd
 850 0430 2401     		.2byte	0x124
 851 0432 0F       		.uleb128 0xf
ARM GAS  /tmp/cc2fwsRs.s 			page 35


 852 0433 15080000 		.4byte	.LASF75
 853 0437 07       		.byte	0x7
 854 0438 73       		.byte	0x73
 855 0439 CD000000 		.4byte	0xcd
 856 043d 2801     		.2byte	0x128
 857 043f 0F       		.uleb128 0xf
 858 0440 C00E0000 		.4byte	.LASF76
 859 0444 07       		.byte	0x7
 860 0445 74       		.byte	0x74
 861 0446 CD000000 		.4byte	0xcd
 862 044a 2C01     		.2byte	0x12c
 863 044c 0F       		.uleb128 0xf
 864 044d CA040000 		.4byte	.LASF77
 865 0451 07       		.byte	0x7
 866 0452 75       		.byte	0x75
 867 0453 CD000000 		.4byte	0xcd
 868 0457 3001     		.2byte	0x130
 869 0459 0F       		.uleb128 0xf
 870 045a 00000000 		.4byte	.LASF78
 871 045e 07       		.byte	0x7
 872 045f 76       		.byte	0x76
 873 0460 CD000000 		.4byte	0xcd
 874 0464 3401     		.2byte	0x134
 875 0466 0F       		.uleb128 0xf
 876 0467 4C060000 		.4byte	.LASF79
 877 046b 07       		.byte	0x7
 878 046c 77       		.byte	0x77
 879 046d CD000000 		.4byte	0xcd
 880 0471 3801     		.2byte	0x138
 881 0473 0F       		.uleb128 0xf
 882 0474 9E0C0000 		.4byte	.LASF80
 883 0478 07       		.byte	0x7
 884 0479 78       		.byte	0x78
 885 047a CD000000 		.4byte	0xcd
 886 047e 3C01     		.2byte	0x13c
 887 0480 0F       		.uleb128 0xf
 888 0481 D4000000 		.4byte	.LASF81
 889 0485 07       		.byte	0x7
 890 0486 79       		.byte	0x79
 891 0487 CD000000 		.4byte	0xcd
 892 048b 4001     		.2byte	0x140
 893 048d 0F       		.uleb128 0xf
 894 048e 70070000 		.4byte	.LASF82
 895 0492 07       		.byte	0x7
 896 0493 7A       		.byte	0x7a
 897 0494 CD000000 		.4byte	0xcd
 898 0498 4401     		.2byte	0x144
 899 049a 0F       		.uleb128 0xf
 900 049b AB080000 		.4byte	.LASF83
 901 049f 07       		.byte	0x7
 902 04a0 7B       		.byte	0x7b
 903 04a1 CD000000 		.4byte	0xcd
 904 04a5 4801     		.2byte	0x148
 905 04a7 0F       		.uleb128 0xf
 906 04a8 B4080000 		.4byte	.LASF84
 907 04ac 07       		.byte	0x7
 908 04ad 7C       		.byte	0x7c
ARM GAS  /tmp/cc2fwsRs.s 			page 36


 909 04ae CD000000 		.4byte	0xcd
 910 04b2 4C01     		.2byte	0x14c
 911 04b4 0F       		.uleb128 0xf
 912 04b5 72030000 		.4byte	.LASF85
 913 04b9 07       		.byte	0x7
 914 04ba 7D       		.byte	0x7d
 915 04bb CD000000 		.4byte	0xcd
 916 04bf 5001     		.2byte	0x150
 917 04c1 0F       		.uleb128 0xf
 918 04c2 B60E0000 		.4byte	.LASF86
 919 04c6 07       		.byte	0x7
 920 04c7 7E       		.byte	0x7e
 921 04c8 CD000000 		.4byte	0xcd
 922 04cc 5401     		.2byte	0x154
 923 04ce 0F       		.uleb128 0xf
 924 04cf F7010000 		.4byte	.LASF87
 925 04d3 07       		.byte	0x7
 926 04d4 7F       		.byte	0x7f
 927 04d5 CD000000 		.4byte	0xcd
 928 04d9 5801     		.2byte	0x158
 929 04db 0F       		.uleb128 0xf
 930 04dc EA050000 		.4byte	.LASF88
 931 04e0 07       		.byte	0x7
 932 04e1 80       		.byte	0x80
 933 04e2 CD000000 		.4byte	0xcd
 934 04e6 5C01     		.2byte	0x15c
 935 04e8 0F       		.uleb128 0xf
 936 04e9 B7030000 		.4byte	.LASF89
 937 04ed 07       		.byte	0x7
 938 04ee 81       		.byte	0x81
 939 04ef CD000000 		.4byte	0xcd
 940 04f3 6001     		.2byte	0x160
 941 04f5 0F       		.uleb128 0xf
 942 04f6 DC060000 		.4byte	.LASF90
 943 04fa 07       		.byte	0x7
 944 04fb 82       		.byte	0x82
 945 04fc CD000000 		.4byte	0xcd
 946 0500 6401     		.2byte	0x164
 947 0502 0F       		.uleb128 0xf
 948 0503 2A0F0000 		.4byte	.LASF91
 949 0507 07       		.byte	0x7
 950 0508 83       		.byte	0x83
 951 0509 CD000000 		.4byte	0xcd
 952 050d 6801     		.2byte	0x168
 953 050f 0F       		.uleb128 0xf
 954 0510 25070000 		.4byte	.LASF92
 955 0514 07       		.byte	0x7
 956 0515 84       		.byte	0x84
 957 0516 CD000000 		.4byte	0xcd
 958 051a 6C01     		.2byte	0x16c
 959 051c 0F       		.uleb128 0xf
 960 051d 01010000 		.4byte	.LASF93
 961 0521 07       		.byte	0x7
 962 0522 85       		.byte	0x85
 963 0523 CD000000 		.4byte	0xcd
 964 0527 7001     		.2byte	0x170
 965 0529 0F       		.uleb128 0xf
ARM GAS  /tmp/cc2fwsRs.s 			page 37


 966 052a FB0E0000 		.4byte	.LASF94
 967 052e 07       		.byte	0x7
 968 052f 86       		.byte	0x86
 969 0530 CD000000 		.4byte	0xcd
 970 0534 7401     		.2byte	0x174
 971 0536 0F       		.uleb128 0xf
 972 0537 98030000 		.4byte	.LASF95
 973 053b 07       		.byte	0x7
 974 053c 87       		.byte	0x87
 975 053d CD000000 		.4byte	0xcd
 976 0541 7801     		.2byte	0x178
 977 0543 0F       		.uleb128 0xf
 978 0544 8B050000 		.4byte	.LASF96
 979 0548 07       		.byte	0x7
 980 0549 88       		.byte	0x88
 981 054a CD000000 		.4byte	0xcd
 982 054e 7C01     		.2byte	0x17c
 983 0550 0F       		.uleb128 0xf
 984 0551 9C060000 		.4byte	.LASF97
 985 0555 07       		.byte	0x7
 986 0556 89       		.byte	0x89
 987 0557 CD000000 		.4byte	0xcd
 988 055b 8001     		.2byte	0x180
 989 055d 0F       		.uleb128 0xf
 990 055e F4090000 		.4byte	.LASF98
 991 0562 07       		.byte	0x7
 992 0563 8A       		.byte	0x8a
 993 0564 CD000000 		.4byte	0xcd
 994 0568 8401     		.2byte	0x184
 995 056a 0F       		.uleb128 0xf
 996 056b E1000000 		.4byte	.LASF99
 997 056f 07       		.byte	0x7
 998 0570 8B       		.byte	0x8b
 999 0571 CD000000 		.4byte	0xcd
 1000 0575 8801     		.2byte	0x188
 1001 0577 0F       		.uleb128 0xf
 1002 0578 E2050000 		.4byte	.LASF100
 1003 057c 07       		.byte	0x7
 1004 057d 8C       		.byte	0x8c
 1005 057e CD000000 		.4byte	0xcd
 1006 0582 8C01     		.2byte	0x18c
 1007 0584 0F       		.uleb128 0xf
 1008 0585 FA070000 		.4byte	.LASF101
 1009 0589 07       		.byte	0x7
 1010 058a 8D       		.byte	0x8d
 1011 058b CD000000 		.4byte	0xcd
 1012 058f 9001     		.2byte	0x190
 1013 0591 0F       		.uleb128 0xf
 1014 0592 40050000 		.4byte	.LASF102
 1015 0596 07       		.byte	0x7
 1016 0597 8E       		.byte	0x8e
 1017 0598 CD000000 		.4byte	0xcd
 1018 059c 9401     		.2byte	0x194
 1019 059e 0F       		.uleb128 0xf
 1020 059f 25010000 		.4byte	.LASF103
 1021 05a3 07       		.byte	0x7
 1022 05a4 8F       		.byte	0x8f
ARM GAS  /tmp/cc2fwsRs.s 			page 38


 1023 05a5 CD000000 		.4byte	0xcd
 1024 05a9 9801     		.2byte	0x198
 1025 05ab 0F       		.uleb128 0xf
 1026 05ac 0E0B0000 		.4byte	.LASF104
 1027 05b0 07       		.byte	0x7
 1028 05b1 90       		.byte	0x90
 1029 05b2 CD000000 		.4byte	0xcd
 1030 05b6 9C01     		.2byte	0x19c
 1031 05b8 0F       		.uleb128 0xf
 1032 05b9 4C0F0000 		.4byte	.LASF105
 1033 05bd 07       		.byte	0x7
 1034 05be 91       		.byte	0x91
 1035 05bf CD000000 		.4byte	0xcd
 1036 05c3 A001     		.2byte	0x1a0
 1037 05c5 0F       		.uleb128 0xf
 1038 05c6 960B0000 		.4byte	.LASF106
 1039 05ca 07       		.byte	0x7
 1040 05cb 92       		.byte	0x92
 1041 05cc CD000000 		.4byte	0xcd
 1042 05d0 A401     		.2byte	0x1a4
 1043 05d2 0F       		.uleb128 0xf
 1044 05d3 16030000 		.4byte	.LASF107
 1045 05d7 07       		.byte	0x7
 1046 05d8 93       		.byte	0x93
 1047 05d9 CD000000 		.4byte	0xcd
 1048 05dd A801     		.2byte	0x1a8
 1049 05df 0F       		.uleb128 0xf
 1050 05e0 B20B0000 		.4byte	.LASF108
 1051 05e4 07       		.byte	0x7
 1052 05e5 94       		.byte	0x94
 1053 05e6 CD000000 		.4byte	0xcd
 1054 05ea AC01     		.2byte	0x1ac
 1055 05ec 0F       		.uleb128 0xf
 1056 05ed 33030000 		.4byte	.LASF109
 1057 05f1 07       		.byte	0x7
 1058 05f2 95       		.byte	0x95
 1059 05f3 CD000000 		.4byte	0xcd
 1060 05f7 B001     		.2byte	0x1b0
 1061 05f9 0F       		.uleb128 0xf
 1062 05fa 72080000 		.4byte	.LASF110
 1063 05fe 07       		.byte	0x7
 1064 05ff 96       		.byte	0x96
 1065 0600 0F010000 		.4byte	0x10f
 1066 0604 B401     		.2byte	0x1b4
 1067 0606 0F       		.uleb128 0xf
 1068 0607 47030000 		.4byte	.LASF111
 1069 060b 07       		.byte	0x7
 1070 060c 97       		.byte	0x97
 1071 060d C8000000 		.4byte	0xc8
 1072 0611 BC01     		.2byte	0x1bc
 1073 0613 0F       		.uleb128 0xf
 1074 0614 C30C0000 		.4byte	.LASF112
 1075 0618 07       		.byte	0x7
 1076 0619 98       		.byte	0x98
 1077 061a C8000000 		.4byte	0xc8
 1078 061e C001     		.2byte	0x1c0
 1079 0620 0F       		.uleb128 0xf
ARM GAS  /tmp/cc2fwsRs.s 			page 39


 1080 0621 7C080000 		.4byte	.LASF113
 1081 0625 07       		.byte	0x7
 1082 0626 99       		.byte	0x99
 1083 0627 DA0A0000 		.4byte	0xada
 1084 062b C401     		.2byte	0x1c4
 1085 062d 0F       		.uleb128 0xf
 1086 062e E50C0000 		.4byte	.LASF114
 1087 0632 07       		.byte	0x7
 1088 0633 9A       		.byte	0x9a
 1089 0634 C8000000 		.4byte	0xc8
 1090 0638 D001     		.2byte	0x1d0
 1091 063a 0F       		.uleb128 0xf
 1092 063b C3000000 		.4byte	.LASF115
 1093 063f 07       		.byte	0x7
 1094 0640 9B       		.byte	0x9b
 1095 0641 C8000000 		.4byte	0xc8
 1096 0645 D401     		.2byte	0x1d4
 1097 0647 0F       		.uleb128 0xf
 1098 0648 5F070000 		.4byte	.LASF116
 1099 064c 07       		.byte	0x7
 1100 064d 9C       		.byte	0x9c
 1101 064e C8000000 		.4byte	0xc8
 1102 0652 D801     		.2byte	0x1d8
 1103 0654 0F       		.uleb128 0xf
 1104 0655 B0000000 		.4byte	.LASF117
 1105 0659 07       		.byte	0x7
 1106 065a 9D       		.byte	0x9d
 1107 065b C8000000 		.4byte	0xc8
 1108 065f DC01     		.2byte	0x1dc
 1109 0661 0F       		.uleb128 0xf
 1110 0662 EE0C0000 		.4byte	.LASF118
 1111 0666 07       		.byte	0x7
 1112 0667 9E       		.byte	0x9e
 1113 0668 CD000000 		.4byte	0xcd
 1114 066c E001     		.2byte	0x1e0
 1115 066e 0F       		.uleb128 0xf
 1116 066f 62030000 		.4byte	.LASF119
 1117 0673 07       		.byte	0x7
 1118 0674 9F       		.byte	0x9f
 1119 0675 CD000000 		.4byte	0xcd
 1120 0679 E401     		.2byte	0x1e4
 1121 067b 0F       		.uleb128 0xf
 1122 067c 39010000 		.4byte	.LASF120
 1123 0680 07       		.byte	0x7
 1124 0681 A0       		.byte	0xa0
 1125 0682 CD000000 		.4byte	0xcd
 1126 0686 E801     		.2byte	0x1e8
 1127 0688 0F       		.uleb128 0xf
 1128 0689 BF010000 		.4byte	.LASF121
 1129 068d 07       		.byte	0x7
 1130 068e A1       		.byte	0xa1
 1131 068f CD000000 		.4byte	0xcd
 1132 0693 EC01     		.2byte	0x1ec
 1133 0695 0F       		.uleb128 0xf
 1134 0696 240B0000 		.4byte	.LASF122
 1135 069a 07       		.byte	0x7
 1136 069b A2       		.byte	0xa2
ARM GAS  /tmp/cc2fwsRs.s 			page 40


 1137 069c CD000000 		.4byte	0xcd
 1138 06a0 F001     		.2byte	0x1f0
 1139 06a2 0F       		.uleb128 0xf
 1140 06a3 E80E0000 		.4byte	.LASF123
 1141 06a7 07       		.byte	0x7
 1142 06a8 A3       		.byte	0xa3
 1143 06a9 CD000000 		.4byte	0xcd
 1144 06ad F401     		.2byte	0x1f4
 1145 06af 0F       		.uleb128 0xf
 1146 06b0 C9090000 		.4byte	.LASF124
 1147 06b4 07       		.byte	0x7
 1148 06b5 A4       		.byte	0xa4
 1149 06b6 CD000000 		.4byte	0xcd
 1150 06ba F801     		.2byte	0x1f8
 1151 06bc 0F       		.uleb128 0xf
 1152 06bd B8000000 		.4byte	.LASF125
 1153 06c1 07       		.byte	0x7
 1154 06c2 A5       		.byte	0xa5
 1155 06c3 CD000000 		.4byte	0xcd
 1156 06c7 FC01     		.2byte	0x1fc
 1157 06c9 0F       		.uleb128 0xf
 1158 06ca 86080000 		.4byte	.LASF126
 1159 06ce 07       		.byte	0x7
 1160 06cf A6       		.byte	0xa6
 1161 06d0 F90A0000 		.4byte	0xaf9
 1162 06d4 0002     		.2byte	0x200
 1163 06d6 0F       		.uleb128 0xf
 1164 06d7 1F0F0000 		.4byte	.LASF127
 1165 06db 07       		.byte	0x7
 1166 06dc A7       		.byte	0xa7
 1167 06dd DF0A0000 		.4byte	0xadf
 1168 06e1 0004     		.2byte	0x400
 1169 06e3 0F       		.uleb128 0xf
 1170 06e4 B5090000 		.4byte	.LASF128
 1171 06e8 07       		.byte	0x7
 1172 06e9 A8       		.byte	0xa8
 1173 06ea A60A0000 		.4byte	0xaa6
 1174 06ee 0C04     		.2byte	0x40c
 1175 06f0 0F       		.uleb128 0xf
 1176 06f1 740A0000 		.4byte	.LASF129
 1177 06f5 07       		.byte	0x7
 1178 06f6 A9       		.byte	0xa9
 1179 06f7 0E0B0000 		.4byte	0xb0e
 1180 06fb 4004     		.2byte	0x440
 1181 06fd 0F       		.uleb128 0xf
 1182 06fe BF090000 		.4byte	.LASF130
 1183 0702 07       		.byte	0x7
 1184 0703 AA       		.byte	0xaa
 1185 0704 AB0A0000 		.4byte	0xaab
 1186 0708 4C04     		.2byte	0x44c
 1187 070a 0F       		.uleb128 0xf
 1188 070b 0B090000 		.4byte	.LASF131
 1189 070f 07       		.byte	0x7
 1190 0710 AB       		.byte	0xab
 1191 0711 0E0B0000 		.4byte	0xb0e
 1192 0715 8004     		.2byte	0x480
 1193 0717 0F       		.uleb128 0xf
ARM GAS  /tmp/cc2fwsRs.s 			page 41


 1194 0718 A1080000 		.4byte	.LASF132
 1195 071c 07       		.byte	0x7
 1196 071d AC       		.byte	0xac
 1197 071e 48010000 		.4byte	0x148
 1198 0722 8C04     		.2byte	0x48c
 1199 0724 0F       		.uleb128 0xf
 1200 0725 8A090000 		.4byte	.LASF133
 1201 0729 07       		.byte	0x7
 1202 072a AD       		.byte	0xad
 1203 072b 0E0B0000 		.4byte	0xb0e
 1204 072f A004     		.2byte	0x4a0
 1205 0731 0F       		.uleb128 0xf
 1206 0732 F10B0000 		.4byte	.LASF134
 1207 0736 07       		.byte	0x7
 1208 0737 AE       		.byte	0xae
 1209 0738 29010000 		.4byte	0x129
 1210 073c AC04     		.2byte	0x4ac
 1211 073e 0F       		.uleb128 0xf
 1212 073f D00B0000 		.4byte	.LASF135
 1213 0743 07       		.byte	0x7
 1214 0744 AF       		.byte	0xaf
 1215 0745 C8000000 		.4byte	0xc8
 1216 0749 BC04     		.2byte	0x4bc
 1217 074b 0F       		.uleb128 0xf
 1218 074c 300B0000 		.4byte	.LASF136
 1219 0750 07       		.byte	0x7
 1220 0751 B0       		.byte	0xb0
 1221 0752 C8000000 		.4byte	0xc8
 1222 0756 C004     		.2byte	0x4c0
 1223 0758 0F       		.uleb128 0xf
 1224 0759 93070000 		.4byte	.LASF137
 1225 075d 07       		.byte	0x7
 1226 075e B1       		.byte	0xb1
 1227 075f C8000000 		.4byte	0xc8
 1228 0763 C404     		.2byte	0x4c4
 1229 0765 0F       		.uleb128 0xf
 1230 0766 FC0B0000 		.4byte	.LASF138
 1231 076a 07       		.byte	0x7
 1232 076b B2       		.byte	0xb2
 1233 076c 280B0000 		.4byte	0xb28
 1234 0770 C804     		.2byte	0x4c8
 1235 0772 0F       		.uleb128 0xf
 1236 0773 D40E0000 		.4byte	.LASF139
 1237 0777 07       		.byte	0x7
 1238 0778 B3       		.byte	0xb3
 1239 0779 7E010000 		.4byte	0x17e
 1240 077d 0005     		.2byte	0x500
 1241 077f 0F       		.uleb128 0xf
 1242 0780 070C0000 		.4byte	.LASF140
 1243 0784 07       		.byte	0x7
 1244 0785 B4       		.byte	0xb4
 1245 0786 420B0000 		.4byte	0xb42
 1246 078a 1005     		.2byte	0x510
 1247 078c 0F       		.uleb128 0xf
 1248 078d 09080000 		.4byte	.LASF141
 1249 0791 07       		.byte	0x7
 1250 0792 B5       		.byte	0xb5
ARM GAS  /tmp/cc2fwsRs.s 			page 42


 1251 0793 E9000000 		.4byte	0xe9
 1252 0797 4005     		.2byte	0x540
 1253 0799 0F       		.uleb128 0xf
 1254 079a 120C0000 		.4byte	.LASF142
 1255 079e 07       		.byte	0x7
 1256 079f B6       		.byte	0xb6
 1257 07a0 470B0000 		.4byte	0xb47
 1258 07a4 6005     		.2byte	0x560
 1259 07a6 0F       		.uleb128 0xf
 1260 07a7 1D0C0000 		.4byte	.LASF143
 1261 07ab 07       		.byte	0x7
 1262 07ac B7       		.byte	0xb7
 1263 07ad 610B0000 		.4byte	0xb61
 1264 07b1 9005     		.2byte	0x590
 1265 07b3 0F       		.uleb128 0xf
 1266 07b4 F6040000 		.4byte	.LASF144
 1267 07b8 07       		.byte	0x7
 1268 07b9 B8       		.byte	0xb8
 1269 07ba 0E0B0000 		.4byte	0xb0e
 1270 07be 0006     		.2byte	0x600
 1271 07c0 0F       		.uleb128 0xf
 1272 07c1 280C0000 		.4byte	.LASF145
 1273 07c5 07       		.byte	0x7
 1274 07c6 B9       		.byte	0xb9
 1275 07c7 4D010000 		.4byte	0x14d
 1276 07cb 0C06     		.2byte	0x60c
 1277 07cd 0F       		.uleb128 0xf
 1278 07ce 53050000 		.4byte	.LASF146
 1279 07d2 07       		.byte	0x7
 1280 07d3 BA       		.byte	0xba
 1281 07d4 0E0B0000 		.4byte	0xb0e
 1282 07d8 2006     		.2byte	0x620
 1283 07da 0F       		.uleb128 0xf
 1284 07db 330C0000 		.4byte	.LASF147
 1285 07df 07       		.byte	0x7
 1286 07e0 BB       		.byte	0xbb
 1287 07e1 52010000 		.4byte	0x152
 1288 07e5 2C06     		.2byte	0x62c
 1289 07e7 0F       		.uleb128 0xf
 1290 07e8 EF070000 		.4byte	.LASF148
 1291 07ec 07       		.byte	0x7
 1292 07ed BC       		.byte	0xbc
 1293 07ee 0E0B0000 		.4byte	0xb0e
 1294 07f2 4006     		.2byte	0x640
 1295 07f4 0F       		.uleb128 0xf
 1296 07f5 3E0C0000 		.4byte	.LASF149
 1297 07f9 07       		.byte	0x7
 1298 07fa BD       		.byte	0xbd
 1299 07fb 7B0B0000 		.4byte	0xb7b
 1300 07ff 4C06     		.2byte	0x64c
 1301 0801 0F       		.uleb128 0xf
 1302 0802 74090000 		.4byte	.LASF150
 1303 0806 07       		.byte	0x7
 1304 0807 BE       		.byte	0xbe
 1305 0808 7E010000 		.4byte	0x17e
 1306 080c E006     		.2byte	0x6e0
 1307 080e 0F       		.uleb128 0xf
ARM GAS  /tmp/cc2fwsRs.s 			page 43


 1308 080f 490C0000 		.4byte	.LASF151
 1309 0813 07       		.byte	0x7
 1310 0814 BF       		.byte	0xbf
 1311 0815 2E010000 		.4byte	0x12e
 1312 0819 F006     		.2byte	0x6f0
 1313 081b 0F       		.uleb128 0xf
 1314 081c 78070000 		.4byte	.LASF152
 1315 0820 07       		.byte	0x7
 1316 0821 C0       		.byte	0xc0
 1317 0822 C8000000 		.4byte	0xc8
 1318 0826 0007     		.2byte	0x700
 1319 0828 0F       		.uleb128 0xf
 1320 0829 4E010000 		.4byte	.LASF153
 1321 082d 07       		.byte	0x7
 1322 082e C1       		.byte	0xc1
 1323 082f C8000000 		.4byte	0xc8
 1324 0833 0407     		.2byte	0x704
 1325 0835 0F       		.uleb128 0xf
 1326 0836 2E000000 		.4byte	.LASF154
 1327 083a 07       		.byte	0x7
 1328 083b C2       		.byte	0xc2
 1329 083c C8000000 		.4byte	0xc8
 1330 0840 0807     		.2byte	0x708
 1331 0842 0F       		.uleb128 0xf
 1332 0843 B80D0000 		.4byte	.LASF155
 1333 0847 07       		.byte	0x7
 1334 0848 C3       		.byte	0xc3
 1335 0849 C8000000 		.4byte	0xc8
 1336 084d 0C07     		.2byte	0x70c
 1337 084f 0F       		.uleb128 0xf
 1338 0850 3B000000 		.4byte	.LASF156
 1339 0854 07       		.byte	0x7
 1340 0855 C4       		.byte	0xc4
 1341 0856 C8000000 		.4byte	0xc8
 1342 085a 1007     		.2byte	0x710
 1343 085c 0F       		.uleb128 0xf
 1344 085d 64010000 		.4byte	.LASF157
 1345 0861 07       		.byte	0x7
 1346 0862 C5       		.byte	0xc5
 1347 0863 C8000000 		.4byte	0xc8
 1348 0867 1407     		.2byte	0x714
 1349 0869 0F       		.uleb128 0xf
 1350 086a 48000000 		.4byte	.LASF158
 1351 086e 07       		.byte	0x7
 1352 086f C6       		.byte	0xc6
 1353 0870 C8000000 		.4byte	0xc8
 1354 0874 1807     		.2byte	0x718
 1355 0876 0F       		.uleb128 0xf
 1356 0877 71010000 		.4byte	.LASF159
 1357 087b 07       		.byte	0x7
 1358 087c C7       		.byte	0xc7
 1359 087d C8000000 		.4byte	0xc8
 1360 0881 1C07     		.2byte	0x71c
 1361 0883 0F       		.uleb128 0xf
 1362 0884 EA0A0000 		.4byte	.LASF160
 1363 0888 07       		.byte	0x7
 1364 0889 C8       		.byte	0xc8
ARM GAS  /tmp/cc2fwsRs.s 			page 44


 1365 088a C8000000 		.4byte	0xc8
 1366 088e 2007     		.2byte	0x720
 1367 0890 0F       		.uleb128 0xf
 1368 0891 7E010000 		.4byte	.LASF161
 1369 0895 07       		.byte	0x7
 1370 0896 C9       		.byte	0xc9
 1371 0897 C8000000 		.4byte	0xc8
 1372 089b 2407     		.2byte	0x724
 1373 089d 0F       		.uleb128 0xf
 1374 089e 5F000000 		.4byte	.LASF162
 1375 08a2 07       		.byte	0x7
 1376 08a3 CA       		.byte	0xca
 1377 08a4 C8000000 		.4byte	0xc8
 1378 08a8 2807     		.2byte	0x728
 1379 08aa 0F       		.uleb128 0xf
 1380 08ab 8B010000 		.4byte	.LASF163
 1381 08af 07       		.byte	0x7
 1382 08b0 CB       		.byte	0xcb
 1383 08b1 C8000000 		.4byte	0xc8
 1384 08b5 2C07     		.2byte	0x72c
 1385 08b7 0F       		.uleb128 0xf
 1386 08b8 6C000000 		.4byte	.LASF164
 1387 08bc 07       		.byte	0x7
 1388 08bd CC       		.byte	0xcc
 1389 08be C8000000 		.4byte	0xc8
 1390 08c2 3007     		.2byte	0x730
 1391 08c4 0F       		.uleb128 0xf
 1392 08c5 98010000 		.4byte	.LASF165
 1393 08c9 07       		.byte	0x7
 1394 08ca CD       		.byte	0xcd
 1395 08cb C8000000 		.4byte	0xc8
 1396 08cf 3407     		.2byte	0x734
 1397 08d1 0F       		.uleb128 0xf
 1398 08d2 79000000 		.4byte	.LASF166
 1399 08d6 07       		.byte	0x7
 1400 08d7 CE       		.byte	0xce
 1401 08d8 C8000000 		.4byte	0xc8
 1402 08dc 3807     		.2byte	0x738
 1403 08de 0F       		.uleb128 0xf
 1404 08df A5010000 		.4byte	.LASF167
 1405 08e3 07       		.byte	0x7
 1406 08e4 CF       		.byte	0xcf
 1407 08e5 C8000000 		.4byte	0xc8
 1408 08e9 3C07     		.2byte	0x73c
 1409 08eb 0F       		.uleb128 0xf
 1410 08ec 86000000 		.4byte	.LASF168
 1411 08f0 07       		.byte	0x7
 1412 08f1 D0       		.byte	0xd0
 1413 08f2 C8000000 		.4byte	0xc8
 1414 08f6 4007     		.2byte	0x740
 1415 08f8 0F       		.uleb128 0xf
 1416 08f9 B2010000 		.4byte	.LASF169
 1417 08fd 07       		.byte	0x7
 1418 08fe D1       		.byte	0xd1
 1419 08ff C8000000 		.4byte	0xc8
 1420 0903 4407     		.2byte	0x744
 1421 0905 0F       		.uleb128 0xf
ARM GAS  /tmp/cc2fwsRs.s 			page 45


 1422 0906 93000000 		.4byte	.LASF170
 1423 090a 07       		.byte	0x7
 1424 090b D2       		.byte	0xd2
 1425 090c C8000000 		.4byte	0xc8
 1426 0910 4807     		.2byte	0x748
 1427 0912 0F       		.uleb128 0xf
 1428 0913 F60D0000 		.4byte	.LASF171
 1429 0917 07       		.byte	0x7
 1430 0918 D3       		.byte	0xd3
 1431 0919 C8000000 		.4byte	0xc8
 1432 091d 4C07     		.2byte	0x74c
 1433 091f 0F       		.uleb128 0xf
 1434 0920 660C0000 		.4byte	.LASF172
 1435 0924 07       		.byte	0x7
 1436 0925 D4       		.byte	0xd4
 1437 0926 C8000000 		.4byte	0xc8
 1438 092a 5007     		.2byte	0x750
 1439 092c 0F       		.uleb128 0xf
 1440 092d 01040000 		.4byte	.LASF173
 1441 0931 07       		.byte	0x7
 1442 0932 D5       		.byte	0xd5
 1443 0933 C8000000 		.4byte	0xc8
 1444 0937 5407     		.2byte	0x754
 1445 0939 0F       		.uleb128 0xf
 1446 093a 740C0000 		.4byte	.LASF174
 1447 093e 07       		.byte	0x7
 1448 093f D6       		.byte	0xd6
 1449 0940 C8000000 		.4byte	0xc8
 1450 0944 5807     		.2byte	0x758
 1451 0946 0F       		.uleb128 0xf
 1452 0947 0F040000 		.4byte	.LASF175
 1453 094b 07       		.byte	0x7
 1454 094c D7       		.byte	0xd7
 1455 094d C8000000 		.4byte	0xc8
 1456 0951 5C07     		.2byte	0x75c
 1457 0953 0F       		.uleb128 0xf
 1458 0954 820C0000 		.4byte	.LASF176
 1459 0958 07       		.byte	0x7
 1460 0959 D8       		.byte	0xd8
 1461 095a C8000000 		.4byte	0xc8
 1462 095e 6007     		.2byte	0x760
 1463 0960 0F       		.uleb128 0xf
 1464 0961 1D040000 		.4byte	.LASF177
 1465 0965 07       		.byte	0x7
 1466 0966 D9       		.byte	0xd9
 1467 0967 C8000000 		.4byte	0xc8
 1468 096b 6407     		.2byte	0x764
 1469 096d 0F       		.uleb128 0xf
 1470 096e 900C0000 		.4byte	.LASF178
 1471 0972 07       		.byte	0x7
 1472 0973 DA       		.byte	0xda
 1473 0974 C8000000 		.4byte	0xc8
 1474 0978 6807     		.2byte	0x768
 1475 097a 0F       		.uleb128 0xf
 1476 097b 2B040000 		.4byte	.LASF179
 1477 097f 07       		.byte	0x7
 1478 0980 DB       		.byte	0xdb
ARM GAS  /tmp/cc2fwsRs.s 			page 46


 1479 0981 C8000000 		.4byte	0xc8
 1480 0985 6C07     		.2byte	0x76c
 1481 0987 0F       		.uleb128 0xf
 1482 0988 48020000 		.4byte	.LASF180
 1483 098c 07       		.byte	0x7
 1484 098d DC       		.byte	0xdc
 1485 098e C8000000 		.4byte	0xc8
 1486 0992 7007     		.2byte	0x770
 1487 0994 0F       		.uleb128 0xf
 1488 0995 39040000 		.4byte	.LASF181
 1489 0999 07       		.byte	0x7
 1490 099a DD       		.byte	0xdd
 1491 099b C8000000 		.4byte	0xc8
 1492 099f 7407     		.2byte	0x774
 1493 09a1 0F       		.uleb128 0xf
 1494 09a2 A70C0000 		.4byte	.LASF182
 1495 09a6 07       		.byte	0x7
 1496 09a7 DE       		.byte	0xde
 1497 09a8 C8000000 		.4byte	0xc8
 1498 09ac 7807     		.2byte	0x778
 1499 09ae 0F       		.uleb128 0xf
 1500 09af 47040000 		.4byte	.LASF183
 1501 09b3 07       		.byte	0x7
 1502 09b4 DF       		.byte	0xdf
 1503 09b5 C8000000 		.4byte	0xc8
 1504 09b9 7C07     		.2byte	0x77c
 1505 09bb 0F       		.uleb128 0xf
 1506 09bc B50C0000 		.4byte	.LASF184
 1507 09c0 07       		.byte	0x7
 1508 09c1 E0       		.byte	0xe0
 1509 09c2 C8000000 		.4byte	0xc8
 1510 09c6 8007     		.2byte	0x780
 1511 09c8 0F       		.uleb128 0xf
 1512 09c9 55040000 		.4byte	.LASF185
 1513 09cd 07       		.byte	0x7
 1514 09ce E1       		.byte	0xe1
 1515 09cf C8000000 		.4byte	0xc8
 1516 09d3 8407     		.2byte	0x784
 1517 09d5 0F       		.uleb128 0xf
 1518 09d6 8E060000 		.4byte	.LASF186
 1519 09da 07       		.byte	0x7
 1520 09db E2       		.byte	0xe2
 1521 09dc C8000000 		.4byte	0xc8
 1522 09e0 8807     		.2byte	0x788
 1523 09e2 0F       		.uleb128 0xf
 1524 09e3 63040000 		.4byte	.LASF187
 1525 09e7 07       		.byte	0x7
 1526 09e8 E3       		.byte	0xe3
 1527 09e9 C8000000 		.4byte	0xc8
 1528 09ed 8C07     		.2byte	0x78c
 1529 09ef 0F       		.uleb128 0xf
 1530 09f0 CC0C0000 		.4byte	.LASF188
 1531 09f4 07       		.byte	0x7
 1532 09f5 E4       		.byte	0xe4
 1533 09f6 C8000000 		.4byte	0xc8
 1534 09fa 9007     		.2byte	0x790
 1535 09fc 0F       		.uleb128 0xf
ARM GAS  /tmp/cc2fwsRs.s 			page 47


 1536 09fd 71040000 		.4byte	.LASF189
 1537 0a01 07       		.byte	0x7
 1538 0a02 E5       		.byte	0xe5
 1539 0a03 C8000000 		.4byte	0xc8
 1540 0a07 9407     		.2byte	0x794
 1541 0a09 0F       		.uleb128 0xf
 1542 0a0a 360A0000 		.4byte	.LASF190
 1543 0a0e 07       		.byte	0x7
 1544 0a0f E6       		.byte	0xe6
 1545 0a10 C8000000 		.4byte	0xc8
 1546 0a14 9807     		.2byte	0x798
 1547 0a16 0F       		.uleb128 0xf
 1548 0a17 7F040000 		.4byte	.LASF191
 1549 0a1b 07       		.byte	0x7
 1550 0a1c E7       		.byte	0xe7
 1551 0a1d C8000000 		.4byte	0xc8
 1552 0a21 9C07     		.2byte	0x79c
 1553 0a23 0F       		.uleb128 0xf
 1554 0a24 3A0E0000 		.4byte	.LASF192
 1555 0a28 07       		.byte	0x7
 1556 0a29 E8       		.byte	0xe8
 1557 0a2a C8000000 		.4byte	0xc8
 1558 0a2e A007     		.2byte	0x7a0
 1559 0a30 0F       		.uleb128 0xf
 1560 0a31 01050000 		.4byte	.LASF193
 1561 0a35 07       		.byte	0x7
 1562 0a36 E9       		.byte	0xe9
 1563 0a37 C8000000 		.4byte	0xc8
 1564 0a3b A407     		.2byte	0x7a4
 1565 0a3d 0F       		.uleb128 0xf
 1566 0a3e 480E0000 		.4byte	.LASF194
 1567 0a42 07       		.byte	0x7
 1568 0a43 EA       		.byte	0xea
 1569 0a44 C8000000 		.4byte	0xc8
 1570 0a48 A807     		.2byte	0x7a8
 1571 0a4a 0F       		.uleb128 0xf
 1572 0a4b 0F050000 		.4byte	.LASF195
 1573 0a4f 07       		.byte	0x7
 1574 0a50 EB       		.byte	0xeb
 1575 0a51 C8000000 		.4byte	0xc8
 1576 0a55 AC07     		.2byte	0x7ac
 1577 0a57 0F       		.uleb128 0xf
 1578 0a58 560E0000 		.4byte	.LASF196
 1579 0a5c 07       		.byte	0x7
 1580 0a5d EC       		.byte	0xec
 1581 0a5e C8000000 		.4byte	0xc8
 1582 0a62 B007     		.2byte	0x7b0
 1583 0a64 0F       		.uleb128 0xf
 1584 0a65 1D050000 		.4byte	.LASF197
 1585 0a69 07       		.byte	0x7
 1586 0a6a ED       		.byte	0xed
 1587 0a6b C8000000 		.4byte	0xc8
 1588 0a6f B407     		.2byte	0x7b4
 1589 0a71 0F       		.uleb128 0xf
 1590 0a72 640E0000 		.4byte	.LASF198
 1591 0a76 07       		.byte	0x7
 1592 0a77 EE       		.byte	0xee
ARM GAS  /tmp/cc2fwsRs.s 			page 48


 1593 0a78 C8000000 		.4byte	0xc8
 1594 0a7c B807     		.2byte	0x7b8
 1595 0a7e 0F       		.uleb128 0xf
 1596 0a7f 2B050000 		.4byte	.LASF199
 1597 0a83 07       		.byte	0x7
 1598 0a84 EF       		.byte	0xef
 1599 0a85 C8000000 		.4byte	0xc8
 1600 0a89 BC07     		.2byte	0x7bc
 1601 0a8b 00       		.byte	0
 1602 0a8c 08       		.uleb128 0x8
 1603 0a8d CD000000 		.4byte	0xcd
 1604 0a91 9C0A0000 		.4byte	0xa9c
 1605 0a95 09       		.uleb128 0x9
 1606 0a96 EE000000 		.4byte	0xee
 1607 0a9a 0C       		.byte	0xc
 1608 0a9b 00       		.byte	0
 1609 0a9c 06       		.uleb128 0x6
 1610 0a9d 8C0A0000 		.4byte	0xa8c
 1611 0aa1 05       		.uleb128 0x5
 1612 0aa2 9C0A0000 		.4byte	0xa9c
 1613 0aa6 05       		.uleb128 0x5
 1614 0aa7 9C0A0000 		.4byte	0xa9c
 1615 0aab 05       		.uleb128 0x5
 1616 0aac 9C0A0000 		.4byte	0xa9c
 1617 0ab0 08       		.uleb128 0x8
 1618 0ab1 A4010000 		.4byte	0x1a4
 1619 0ab5 C00A0000 		.4byte	0xac0
 1620 0ab9 09       		.uleb128 0x9
 1621 0aba EE000000 		.4byte	0xee
 1622 0abe 03       		.byte	0x3
 1623 0abf 00       		.byte	0
 1624 0ac0 08       		.uleb128 0x8
 1625 0ac1 CD000000 		.4byte	0xcd
 1626 0ac5 D00A0000 		.4byte	0xad0
 1627 0ac9 09       		.uleb128 0x9
 1628 0aca EE000000 		.4byte	0xee
 1629 0ace 02       		.byte	0x2
 1630 0acf 00       		.byte	0
 1631 0ad0 06       		.uleb128 0x6
 1632 0ad1 C00A0000 		.4byte	0xac0
 1633 0ad5 05       		.uleb128 0x5
 1634 0ad6 D00A0000 		.4byte	0xad0
 1635 0ada 05       		.uleb128 0x5
 1636 0adb D00A0000 		.4byte	0xad0
 1637 0adf 05       		.uleb128 0x5
 1638 0ae0 D00A0000 		.4byte	0xad0
 1639 0ae4 08       		.uleb128 0x8
 1640 0ae5 CD000000 		.4byte	0xcd
 1641 0ae9 F40A0000 		.4byte	0xaf4
 1642 0aed 09       		.uleb128 0x9
 1643 0aee EE000000 		.4byte	0xee
 1644 0af2 7F       		.byte	0x7f
 1645 0af3 00       		.byte	0
 1646 0af4 06       		.uleb128 0x6
 1647 0af5 E40A0000 		.4byte	0xae4
 1648 0af9 05       		.uleb128 0x5
 1649 0afa F40A0000 		.4byte	0xaf4
ARM GAS  /tmp/cc2fwsRs.s 			page 49


 1650 0afe 08       		.uleb128 0x8
 1651 0aff C8000000 		.4byte	0xc8
 1652 0b03 0E0B0000 		.4byte	0xb0e
 1653 0b07 09       		.uleb128 0x9
 1654 0b08 EE000000 		.4byte	0xee
 1655 0b0c 02       		.byte	0x2
 1656 0b0d 00       		.byte	0
 1657 0b0e 05       		.uleb128 0x5
 1658 0b0f FE0A0000 		.4byte	0xafe
 1659 0b13 08       		.uleb128 0x8
 1660 0b14 CD000000 		.4byte	0xcd
 1661 0b18 230B0000 		.4byte	0xb23
 1662 0b1c 09       		.uleb128 0x9
 1663 0b1d EE000000 		.4byte	0xee
 1664 0b21 0D       		.byte	0xd
 1665 0b22 00       		.byte	0
 1666 0b23 06       		.uleb128 0x6
 1667 0b24 130B0000 		.4byte	0xb13
 1668 0b28 05       		.uleb128 0x5
 1669 0b29 230B0000 		.4byte	0xb23
 1670 0b2d 08       		.uleb128 0x8
 1671 0b2e CD000000 		.4byte	0xcd
 1672 0b32 3D0B0000 		.4byte	0xb3d
 1673 0b36 09       		.uleb128 0x9
 1674 0b37 EE000000 		.4byte	0xee
 1675 0b3b 0B       		.byte	0xb
 1676 0b3c 00       		.byte	0
 1677 0b3d 06       		.uleb128 0x6
 1678 0b3e 2D0B0000 		.4byte	0xb2d
 1679 0b42 05       		.uleb128 0x5
 1680 0b43 3D0B0000 		.4byte	0xb3d
 1681 0b47 05       		.uleb128 0x5
 1682 0b48 3D0B0000 		.4byte	0xb3d
 1683 0b4c 08       		.uleb128 0x8
 1684 0b4d CD000000 		.4byte	0xcd
 1685 0b51 5C0B0000 		.4byte	0xb5c
 1686 0b55 09       		.uleb128 0x9
 1687 0b56 EE000000 		.4byte	0xee
 1688 0b5a 1B       		.byte	0x1b
 1689 0b5b 00       		.byte	0
 1690 0b5c 06       		.uleb128 0x6
 1691 0b5d 4C0B0000 		.4byte	0xb4c
 1692 0b61 05       		.uleb128 0x5
 1693 0b62 5C0B0000 		.4byte	0xb5c
 1694 0b66 08       		.uleb128 0x8
 1695 0b67 CD000000 		.4byte	0xcd
 1696 0b6b 760B0000 		.4byte	0xb76
 1697 0b6f 09       		.uleb128 0x9
 1698 0b70 EE000000 		.4byte	0xee
 1699 0b74 24       		.byte	0x24
 1700 0b75 00       		.byte	0
 1701 0b76 06       		.uleb128 0x6
 1702 0b77 660B0000 		.4byte	0xb66
 1703 0b7b 05       		.uleb128 0x5
 1704 0b7c 760B0000 		.4byte	0xb76
 1705 0b80 04       		.uleb128 0x4
 1706 0b81 E1070000 		.4byte	.LASF200
ARM GAS  /tmp/cc2fwsRs.s 			page 50


 1707 0b85 07       		.byte	0x7
 1708 0b86 F0       		.byte	0xf0
 1709 0b87 AF010000 		.4byte	0x1af
 1710 0b8b 04       		.uleb128 0x4
 1711 0b8c 540C0000 		.4byte	.LASF201
 1712 0b90 08       		.byte	0x8
 1713 0b91 07       		.byte	0x7
 1714 0b92 25000000 		.4byte	0x25
 1715 0b96 04       		.uleb128 0x4
 1716 0b97 AF0E0000 		.4byte	.LASF202
 1717 0b9b 09       		.byte	0x9
 1718 0b9c 2C       		.byte	0x2c
 1719 0b9d 70000000 		.4byte	0x70
 1720 0ba1 04       		.uleb128 0x4
 1721 0ba2 B2020000 		.4byte	.LASF203
 1722 0ba6 09       		.byte	0x9
 1723 0ba7 72       		.byte	0x72
 1724 0ba8 70000000 		.4byte	0x70
 1725 0bac 10       		.uleb128 0x10
 1726 0bad 8F0B0000 		.4byte	.LASF204
 1727 0bb1 0A       		.byte	0xa
 1728 0bb2 6501     		.2byte	0x165
 1729 0bb4 2C000000 		.4byte	0x2c
 1730 0bb8 11       		.uleb128 0x11
 1731 0bb9 04       		.byte	0x4
 1732 0bba 09       		.byte	0x9
 1733 0bbb A6       		.byte	0xa6
 1734 0bbc D70B0000 		.4byte	0xbd7
 1735 0bc0 12       		.uleb128 0x12
 1736 0bc1 17070000 		.4byte	.LASF205
 1737 0bc5 09       		.byte	0x9
 1738 0bc6 A8       		.byte	0xa8
 1739 0bc7 AC0B0000 		.4byte	0xbac
 1740 0bcb 12       		.uleb128 0x12
 1741 0bcc 4A0A0000 		.4byte	.LASF206
 1742 0bd0 09       		.byte	0x9
 1743 0bd1 A9       		.byte	0xa9
 1744 0bd2 D70B0000 		.4byte	0xbd7
 1745 0bd6 00       		.byte	0
 1746 0bd7 08       		.uleb128 0x8
 1747 0bd8 45000000 		.4byte	0x45
 1748 0bdc E70B0000 		.4byte	0xbe7
 1749 0be0 09       		.uleb128 0x9
 1750 0be1 EE000000 		.4byte	0xee
 1751 0be5 03       		.byte	0x3
 1752 0be6 00       		.byte	0
 1753 0be7 0C       		.uleb128 0xc
 1754 0be8 08       		.byte	0x8
 1755 0be9 09       		.byte	0x9
 1756 0bea A3       		.byte	0xa3
 1757 0beb 080C0000 		.4byte	0xc08
 1758 0bef 0D       		.uleb128 0xd
 1759 0bf0 5A030000 		.4byte	.LASF207
 1760 0bf4 09       		.byte	0x9
 1761 0bf5 A5       		.byte	0xa5
 1762 0bf6 25000000 		.4byte	0x25
 1763 0bfa 00       		.byte	0
ARM GAS  /tmp/cc2fwsRs.s 			page 51


 1764 0bfb 0D       		.uleb128 0xd
 1765 0bfc FE050000 		.4byte	.LASF208
 1766 0c00 09       		.byte	0x9
 1767 0c01 AA       		.byte	0xaa
 1768 0c02 B80B0000 		.4byte	0xbb8
 1769 0c06 04       		.byte	0x4
 1770 0c07 00       		.byte	0
 1771 0c08 04       		.uleb128 0x4
 1772 0c09 3D080000 		.4byte	.LASF209
 1773 0c0d 09       		.byte	0x9
 1774 0c0e AB       		.byte	0xab
 1775 0c0f E70B0000 		.4byte	0xbe7
 1776 0c13 04       		.uleb128 0x4
 1777 0c14 16000000 		.4byte	.LASF210
 1778 0c18 09       		.byte	0x9
 1779 0c19 AF       		.byte	0xaf
 1780 0c1a 8B0B0000 		.4byte	0xb8b
 1781 0c1e 04       		.uleb128 0x4
 1782 0c1f 5C020000 		.4byte	.LASF211
 1783 0c23 0B       		.byte	0xb
 1784 0c24 16       		.byte	0x16
 1785 0c25 82000000 		.4byte	0x82
 1786 0c29 13       		.uleb128 0x13
 1787 0c2a F1020000 		.4byte	.LASF216
 1788 0c2e 18       		.byte	0x18
 1789 0c2f 0B       		.byte	0xb
 1790 0c30 2D       		.byte	0x2d
 1791 0c31 7C0C0000 		.4byte	0xc7c
 1792 0c35 0D       		.uleb128 0xd
 1793 0c36 B6050000 		.4byte	.LASF212
 1794 0c3a 0B       		.byte	0xb
 1795 0c3b 2F       		.byte	0x2f
 1796 0c3c 7C0C0000 		.4byte	0xc7c
 1797 0c40 00       		.byte	0
 1798 0c41 14       		.uleb128 0x14
 1799 0c42 5F6B00   		.ascii	"_k\000"
 1800 0c45 0B       		.byte	0xb
 1801 0c46 30       		.byte	0x30
 1802 0c47 25000000 		.4byte	0x25
 1803 0c4b 04       		.byte	0x4
 1804 0c4c 0D       		.uleb128 0xd
 1805 0c4d C60A0000 		.4byte	.LASF213
 1806 0c51 0B       		.byte	0xb
 1807 0c52 30       		.byte	0x30
 1808 0c53 25000000 		.4byte	0x25
 1809 0c57 08       		.byte	0x8
 1810 0c58 0D       		.uleb128 0xd
 1811 0c59 200A0000 		.4byte	.LASF214
 1812 0c5d 0B       		.byte	0xb
 1813 0c5e 30       		.byte	0x30
 1814 0c5f 25000000 		.4byte	0x25
 1815 0c63 0C       		.byte	0xc
 1816 0c64 0D       		.uleb128 0xd
 1817 0c65 04080000 		.4byte	.LASF215
 1818 0c69 0B       		.byte	0xb
 1819 0c6a 30       		.byte	0x30
 1820 0c6b 25000000 		.4byte	0x25
ARM GAS  /tmp/cc2fwsRs.s 			page 52


 1821 0c6f 10       		.byte	0x10
 1822 0c70 14       		.uleb128 0x14
 1823 0c71 5F7800   		.ascii	"_x\000"
 1824 0c74 0B       		.byte	0xb
 1825 0c75 31       		.byte	0x31
 1826 0c76 820C0000 		.4byte	0xc82
 1827 0c7a 14       		.byte	0x14
 1828 0c7b 00       		.byte	0
 1829 0c7c 15       		.uleb128 0x15
 1830 0c7d 04       		.byte	0x4
 1831 0c7e 290C0000 		.4byte	0xc29
 1832 0c82 08       		.uleb128 0x8
 1833 0c83 1E0C0000 		.4byte	0xc1e
 1834 0c87 920C0000 		.4byte	0xc92
 1835 0c8b 09       		.uleb128 0x9
 1836 0c8c EE000000 		.4byte	0xee
 1837 0c90 00       		.byte	0
 1838 0c91 00       		.byte	0
 1839 0c92 13       		.uleb128 0x13
 1840 0c93 1F0B0000 		.4byte	.LASF217
 1841 0c97 24       		.byte	0x24
 1842 0c98 0B       		.byte	0xb
 1843 0c99 35       		.byte	0x35
 1844 0c9a 0B0D0000 		.4byte	0xd0b
 1845 0c9e 0D       		.uleb128 0xd
 1846 0c9f 4A050000 		.4byte	.LASF218
 1847 0ca3 0B       		.byte	0xb
 1848 0ca4 37       		.byte	0x37
 1849 0ca5 25000000 		.4byte	0x25
 1850 0ca9 00       		.byte	0
 1851 0caa 0D       		.uleb128 0xd
 1852 0cab 7C030000 		.4byte	.LASF219
 1853 0caf 0B       		.byte	0xb
 1854 0cb0 38       		.byte	0x38
 1855 0cb1 25000000 		.4byte	0x25
 1856 0cb5 04       		.byte	0x4
 1857 0cb6 0D       		.uleb128 0xd
 1858 0cb7 29030000 		.4byte	.LASF220
 1859 0cbb 0B       		.byte	0xb
 1860 0cbc 39       		.byte	0x39
 1861 0cbd 25000000 		.4byte	0x25
 1862 0cc1 08       		.byte	0x8
 1863 0cc2 0D       		.uleb128 0xd
 1864 0cc3 5E060000 		.4byte	.LASF221
 1865 0cc7 0B       		.byte	0xb
 1866 0cc8 3A       		.byte	0x3a
 1867 0cc9 25000000 		.4byte	0x25
 1868 0ccd 0C       		.byte	0xc
 1869 0cce 0D       		.uleb128 0xd
 1870 0ccf 2F090000 		.4byte	.LASF222
 1871 0cd3 0B       		.byte	0xb
 1872 0cd4 3B       		.byte	0x3b
 1873 0cd5 25000000 		.4byte	0x25
 1874 0cd9 10       		.byte	0x10
 1875 0cda 0D       		.uleb128 0xd
 1876 0cdb 640A0000 		.4byte	.LASF223
 1877 0cdf 0B       		.byte	0xb
ARM GAS  /tmp/cc2fwsRs.s 			page 53


 1878 0ce0 3C       		.byte	0x3c
 1879 0ce1 25000000 		.4byte	0x25
 1880 0ce5 14       		.byte	0x14
 1881 0ce6 0D       		.uleb128 0xd
 1882 0ce7 04030000 		.4byte	.LASF224
 1883 0ceb 0B       		.byte	0xb
 1884 0cec 3D       		.byte	0x3d
 1885 0ced 25000000 		.4byte	0x25
 1886 0cf1 18       		.byte	0x18
 1887 0cf2 0D       		.uleb128 0xd
 1888 0cf3 68050000 		.4byte	.LASF225
 1889 0cf7 0B       		.byte	0xb
 1890 0cf8 3E       		.byte	0x3e
 1891 0cf9 25000000 		.4byte	0x25
 1892 0cfd 1C       		.byte	0x1c
 1893 0cfe 0D       		.uleb128 0xd
 1894 0cff 90080000 		.4byte	.LASF226
 1895 0d03 0B       		.byte	0xb
 1896 0d04 3F       		.byte	0x3f
 1897 0d05 25000000 		.4byte	0x25
 1898 0d09 20       		.byte	0x20
 1899 0d0a 00       		.byte	0
 1900 0d0b 16       		.uleb128 0x16
 1901 0d0c EA000000 		.4byte	.LASF227
 1902 0d10 0801     		.2byte	0x108
 1903 0d12 0B       		.byte	0xb
 1904 0d13 48       		.byte	0x48
 1905 0d14 4B0D0000 		.4byte	0xd4b
 1906 0d18 0D       		.uleb128 0xd
 1907 0d19 0C0E0000 		.4byte	.LASF228
 1908 0d1d 0B       		.byte	0xb
 1909 0d1e 49       		.byte	0x49
 1910 0d1f 4B0D0000 		.4byte	0xd4b
 1911 0d23 00       		.byte	0
 1912 0d24 0D       		.uleb128 0xd
 1913 0d25 BB0B0000 		.4byte	.LASF229
 1914 0d29 0B       		.byte	0xb
 1915 0d2a 4A       		.byte	0x4a
 1916 0d2b 4B0D0000 		.4byte	0xd4b
 1917 0d2f 80       		.byte	0x80
 1918 0d30 0F       		.uleb128 0xf
 1919 0d31 7B0E0000 		.4byte	.LASF230
 1920 0d35 0B       		.byte	0xb
 1921 0d36 4C       		.byte	0x4c
 1922 0d37 1E0C0000 		.4byte	0xc1e
 1923 0d3b 0001     		.2byte	0x100
 1924 0d3d 0F       		.uleb128 0xf
 1925 0d3e F30E0000 		.4byte	.LASF231
 1926 0d42 0B       		.byte	0xb
 1927 0d43 4F       		.byte	0x4f
 1928 0d44 1E0C0000 		.4byte	0xc1e
 1929 0d48 0401     		.2byte	0x104
 1930 0d4a 00       		.byte	0
 1931 0d4b 08       		.uleb128 0x8
 1932 0d4c D7000000 		.4byte	0xd7
 1933 0d50 5B0D0000 		.4byte	0xd5b
 1934 0d54 09       		.uleb128 0x9
ARM GAS  /tmp/cc2fwsRs.s 			page 54


 1935 0d55 EE000000 		.4byte	0xee
 1936 0d59 1F       		.byte	0x1f
 1937 0d5a 00       		.byte	0
 1938 0d5b 16       		.uleb128 0x16
 1939 0d5c 6C090000 		.4byte	.LASF232
 1940 0d60 9001     		.2byte	0x190
 1941 0d62 0B       		.byte	0xb
 1942 0d63 5B       		.byte	0x5b
 1943 0d64 990D0000 		.4byte	0xd99
 1944 0d68 0D       		.uleb128 0xd
 1945 0d69 B6050000 		.4byte	.LASF212
 1946 0d6d 0B       		.byte	0xb
 1947 0d6e 5C       		.byte	0x5c
 1948 0d6f 990D0000 		.4byte	0xd99
 1949 0d73 00       		.byte	0
 1950 0d74 0D       		.uleb128 0xd
 1951 0d75 BD080000 		.4byte	.LASF233
 1952 0d79 0B       		.byte	0xb
 1953 0d7a 5D       		.byte	0x5d
 1954 0d7b 25000000 		.4byte	0x25
 1955 0d7f 04       		.byte	0x4
 1956 0d80 0D       		.uleb128 0xd
 1957 0d81 BA020000 		.4byte	.LASF234
 1958 0d85 0B       		.byte	0xb
 1959 0d86 5F       		.byte	0x5f
 1960 0d87 9F0D0000 		.4byte	0xd9f
 1961 0d8b 08       		.byte	0x8
 1962 0d8c 0D       		.uleb128 0xd
 1963 0d8d EA000000 		.4byte	.LASF227
 1964 0d91 0B       		.byte	0xb
 1965 0d92 60       		.byte	0x60
 1966 0d93 0B0D0000 		.4byte	0xd0b
 1967 0d97 88       		.byte	0x88
 1968 0d98 00       		.byte	0
 1969 0d99 15       		.uleb128 0x15
 1970 0d9a 04       		.byte	0x4
 1971 0d9b 5B0D0000 		.4byte	0xd5b
 1972 0d9f 08       		.uleb128 0x8
 1973 0da0 AF0D0000 		.4byte	0xdaf
 1974 0da4 AF0D0000 		.4byte	0xdaf
 1975 0da8 09       		.uleb128 0x9
 1976 0da9 EE000000 		.4byte	0xee
 1977 0dad 1F       		.byte	0x1f
 1978 0dae 00       		.byte	0
 1979 0daf 15       		.uleb128 0x15
 1980 0db0 04       		.byte	0x4
 1981 0db1 B50D0000 		.4byte	0xdb5
 1982 0db5 17       		.uleb128 0x17
 1983 0db6 13       		.uleb128 0x13
 1984 0db7 A20D0000 		.4byte	.LASF235
 1985 0dbb 08       		.byte	0x8
 1986 0dbc 0B       		.byte	0xb
 1987 0dbd 73       		.byte	0x73
 1988 0dbe DB0D0000 		.4byte	0xddb
 1989 0dc2 0D       		.uleb128 0xd
 1990 0dc3 A0070000 		.4byte	.LASF236
 1991 0dc7 0B       		.byte	0xb
ARM GAS  /tmp/cc2fwsRs.s 			page 55


 1992 0dc8 74       		.byte	0x74
 1993 0dc9 DB0D0000 		.4byte	0xddb
 1994 0dcd 00       		.byte	0
 1995 0dce 0D       		.uleb128 0xd
 1996 0dcf 8C0E0000 		.4byte	.LASF237
 1997 0dd3 0B       		.byte	0xb
 1998 0dd4 75       		.byte	0x75
 1999 0dd5 25000000 		.4byte	0x25
 2000 0dd9 04       		.byte	0x4
 2001 0dda 00       		.byte	0
 2002 0ddb 15       		.uleb128 0x15
 2003 0ddc 04       		.byte	0x4
 2004 0ddd 45000000 		.4byte	0x45
 2005 0de1 13       		.uleb128 0x13
 2006 0de2 840E0000 		.4byte	.LASF238
 2007 0de6 68       		.byte	0x68
 2008 0de7 0B       		.byte	0xb
 2009 0de8 B3       		.byte	0xb3
 2010 0de9 0B0F0000 		.4byte	0xf0b
 2011 0ded 14       		.uleb128 0x14
 2012 0dee 5F7000   		.ascii	"_p\000"
 2013 0df1 0B       		.byte	0xb
 2014 0df2 B4       		.byte	0xb4
 2015 0df3 DB0D0000 		.4byte	0xddb
 2016 0df7 00       		.byte	0
 2017 0df8 14       		.uleb128 0x14
 2018 0df9 5F7200   		.ascii	"_r\000"
 2019 0dfc 0B       		.byte	0xb
 2020 0dfd B5       		.byte	0xb5
 2021 0dfe 25000000 		.4byte	0x25
 2022 0e02 04       		.byte	0x4
 2023 0e03 14       		.uleb128 0x14
 2024 0e04 5F7700   		.ascii	"_w\000"
 2025 0e07 0B       		.byte	0xb
 2026 0e08 B6       		.byte	0xb6
 2027 0e09 25000000 		.4byte	0x25
 2028 0e0d 08       		.byte	0x8
 2029 0e0e 0D       		.uleb128 0xd
 2030 0e0f D2010000 		.4byte	.LASF239
 2031 0e13 0B       		.byte	0xb
 2032 0e14 B7       		.byte	0xb7
 2033 0e15 4C000000 		.4byte	0x4c
 2034 0e19 0C       		.byte	0xc
 2035 0e1a 0D       		.uleb128 0xd
 2036 0e1b 6E0A0000 		.4byte	.LASF240
 2037 0e1f 0B       		.byte	0xb
 2038 0e20 B8       		.byte	0xb8
 2039 0e21 4C000000 		.4byte	0x4c
 2040 0e25 0E       		.byte	0xe
 2041 0e26 14       		.uleb128 0x14
 2042 0e27 5F626600 		.ascii	"_bf\000"
 2043 0e2b 0B       		.byte	0xb
 2044 0e2c B9       		.byte	0xb9
 2045 0e2d B60D0000 		.4byte	0xdb6
 2046 0e31 10       		.byte	0x10
 2047 0e32 0D       		.uleb128 0xd
 2048 0e33 C9010000 		.4byte	.LASF241
ARM GAS  /tmp/cc2fwsRs.s 			page 56


 2049 0e37 0B       		.byte	0xb
 2050 0e38 BA       		.byte	0xba
 2051 0e39 25000000 		.4byte	0x25
 2052 0e3d 18       		.byte	0x18
 2053 0e3e 0D       		.uleb128 0xd
 2054 0e3f CA020000 		.4byte	.LASF242
 2055 0e43 0B       		.byte	0xb
 2056 0e44 C1       		.byte	0xc1
 2057 0e45 D7000000 		.4byte	0xd7
 2058 0e49 1C       		.byte	0x1c
 2059 0e4a 0D       		.uleb128 0xd
 2060 0e4b 56020000 		.4byte	.LASF243
 2061 0e4f 0B       		.byte	0xb
 2062 0e50 C3       		.byte	0xc3
 2063 0e51 78100000 		.4byte	0x1078
 2064 0e55 20       		.byte	0x20
 2065 0e56 0D       		.uleb128 0xd
 2066 0e57 41090000 		.4byte	.LASF244
 2067 0e5b 0B       		.byte	0xb
 2068 0e5c C5       		.byte	0xc5
 2069 0e5d A2100000 		.4byte	0x10a2
 2070 0e61 24       		.byte	0x24
 2071 0e62 0D       		.uleb128 0xd
 2072 0e63 190F0000 		.4byte	.LASF245
 2073 0e67 0B       		.byte	0xb
 2074 0e68 C8       		.byte	0xc8
 2075 0e69 C6100000 		.4byte	0x10c6
 2076 0e6d 28       		.byte	0x28
 2077 0e6e 0D       		.uleb128 0xd
 2078 0e6f 38070000 		.4byte	.LASF246
 2079 0e73 0B       		.byte	0xb
 2080 0e74 C9       		.byte	0xc9
 2081 0e75 E0100000 		.4byte	0x10e0
 2082 0e79 2C       		.byte	0x2c
 2083 0e7a 14       		.uleb128 0x14
 2084 0e7b 5F756200 		.ascii	"_ub\000"
 2085 0e7f 0B       		.byte	0xb
 2086 0e80 CC       		.byte	0xcc
 2087 0e81 B60D0000 		.4byte	0xdb6
 2088 0e85 30       		.byte	0x30
 2089 0e86 14       		.uleb128 0x14
 2090 0e87 5F757000 		.ascii	"_up\000"
 2091 0e8b 0B       		.byte	0xb
 2092 0e8c CD       		.byte	0xcd
 2093 0e8d DB0D0000 		.4byte	0xddb
 2094 0e91 38       		.byte	0x38
 2095 0e92 14       		.uleb128 0x14
 2096 0e93 5F757200 		.ascii	"_ur\000"
 2097 0e97 0B       		.byte	0xb
 2098 0e98 CE       		.byte	0xce
 2099 0e99 25000000 		.4byte	0x25
 2100 0e9d 3C       		.byte	0x3c
 2101 0e9e 0D       		.uleb128 0xd
 2102 0e9f 9B080000 		.4byte	.LASF247
 2103 0ea3 0B       		.byte	0xb
 2104 0ea4 D1       		.byte	0xd1
 2105 0ea5 E6100000 		.4byte	0x10e6
ARM GAS  /tmp/cc2fwsRs.s 			page 57


 2106 0ea9 40       		.byte	0x40
 2107 0eaa 0D       		.uleb128 0xd
 2108 0eab CE0E0000 		.4byte	.LASF248
 2109 0eaf 0B       		.byte	0xb
 2110 0eb0 D2       		.byte	0xd2
 2111 0eb1 F6100000 		.4byte	0x10f6
 2112 0eb5 43       		.byte	0x43
 2113 0eb6 14       		.uleb128 0x14
 2114 0eb7 5F6C6200 		.ascii	"_lb\000"
 2115 0ebb 0B       		.byte	0xb
 2116 0ebc D5       		.byte	0xd5
 2117 0ebd B60D0000 		.4byte	0xdb6
 2118 0ec1 44       		.byte	0x44
 2119 0ec2 0D       		.uleb128 0xd
 2120 0ec3 160B0000 		.4byte	.LASF249
 2121 0ec7 0B       		.byte	0xb
 2122 0ec8 D8       		.byte	0xd8
 2123 0ec9 25000000 		.4byte	0x25
 2124 0ecd 4C       		.byte	0x4c
 2125 0ece 0D       		.uleb128 0xd
 2126 0ecf C2040000 		.4byte	.LASF250
 2127 0ed3 0B       		.byte	0xb
 2128 0ed4 D9       		.byte	0xd9
 2129 0ed5 960B0000 		.4byte	0xb96
 2130 0ed9 50       		.byte	0x50
 2131 0eda 0D       		.uleb128 0xd
 2132 0edb 440A0000 		.4byte	.LASF251
 2133 0edf 0B       		.byte	0xb
 2134 0ee0 DC       		.byte	0xdc
 2135 0ee1 290F0000 		.4byte	0xf29
 2136 0ee5 54       		.byte	0x54
 2137 0ee6 0D       		.uleb128 0xd
 2138 0ee7 3D0B0000 		.4byte	.LASF252
 2139 0eeb 0B       		.byte	0xb
 2140 0eec E0       		.byte	0xe0
 2141 0eed 130C0000 		.4byte	0xc13
 2142 0ef1 58       		.byte	0x58
 2143 0ef2 0D       		.uleb128 0xd
 2144 0ef3 30020000 		.4byte	.LASF253
 2145 0ef7 0B       		.byte	0xb
 2146 0ef8 E2       		.byte	0xe2
 2147 0ef9 080C0000 		.4byte	0xc08
 2148 0efd 5C       		.byte	0x5c
 2149 0efe 0D       		.uleb128 0xd
 2150 0eff E00E0000 		.4byte	.LASF254
 2151 0f03 0B       		.byte	0xb
 2152 0f04 E3       		.byte	0xe3
 2153 0f05 25000000 		.4byte	0x25
 2154 0f09 64       		.byte	0x64
 2155 0f0a 00       		.byte	0
 2156 0f0b 18       		.uleb128 0x18
 2157 0f0c 25000000 		.4byte	0x25
 2158 0f10 290F0000 		.4byte	0xf29
 2159 0f14 19       		.uleb128 0x19
 2160 0f15 290F0000 		.4byte	0xf29
 2161 0f19 19       		.uleb128 0x19
 2162 0f1a D7000000 		.4byte	0xd7
ARM GAS  /tmp/cc2fwsRs.s 			page 58


 2163 0f1e 19       		.uleb128 0x19
 2164 0f1f 66100000 		.4byte	0x1066
 2165 0f23 19       		.uleb128 0x19
 2166 0f24 25000000 		.4byte	0x25
 2167 0f28 00       		.byte	0
 2168 0f29 15       		.uleb128 0x15
 2169 0f2a 04       		.byte	0x4
 2170 0f2b 340F0000 		.4byte	0xf34
 2171 0f2f 06       		.uleb128 0x6
 2172 0f30 290F0000 		.4byte	0xf29
 2173 0f34 1A       		.uleb128 0x1a
 2174 0f35 200E0000 		.4byte	.LASF255
 2175 0f39 2804     		.2byte	0x428
 2176 0f3b 0B       		.byte	0xb
 2177 0f3c 3802     		.2byte	0x238
 2178 0f3e 66100000 		.4byte	0x1066
 2179 0f42 1B       		.uleb128 0x1b
 2180 0f43 E1010000 		.4byte	.LASF256
 2181 0f47 0B       		.byte	0xb
 2182 0f48 3A02     		.2byte	0x23a
 2183 0f4a 25000000 		.4byte	0x25
 2184 0f4e 00       		.byte	0
 2185 0f4f 1B       		.uleb128 0x1b
 2186 0f50 53030000 		.4byte	.LASF257
 2187 0f54 0B       		.byte	0xb
 2188 0f55 3F02     		.2byte	0x23f
 2189 0f57 4D110000 		.4byte	0x114d
 2190 0f5b 04       		.byte	0x4
 2191 0f5c 1B       		.uleb128 0x1b
 2192 0f5d 9D020000 		.4byte	.LASF258
 2193 0f61 0B       		.byte	0xb
 2194 0f62 3F02     		.2byte	0x23f
 2195 0f64 4D110000 		.4byte	0x114d
 2196 0f68 08       		.byte	0x8
 2197 0f69 1B       		.uleb128 0x1b
 2198 0f6a 350F0000 		.4byte	.LASF259
 2199 0f6e 0B       		.byte	0xb
 2200 0f6f 3F02     		.2byte	0x23f
 2201 0f71 4D110000 		.4byte	0x114d
 2202 0f75 0C       		.byte	0xc
 2203 0f76 1B       		.uleb128 0x1b
 2204 0f77 72050000 		.4byte	.LASF260
 2205 0f7b 0B       		.byte	0xb
 2206 0f7c 4102     		.2byte	0x241
 2207 0f7e 25000000 		.4byte	0x25
 2208 0f82 10       		.byte	0x10
 2209 0f83 1B       		.uleb128 0x1b
 2210 0f84 3C030000 		.4byte	.LASF261
 2211 0f88 0B       		.byte	0xb
 2212 0f89 4202     		.2byte	0x242
 2213 0f8b 2F130000 		.4byte	0x132f
 2214 0f8f 14       		.byte	0x14
 2215 0f90 1B       		.uleb128 0x1b
 2216 0f91 D80A0000 		.4byte	.LASF262
 2217 0f95 0B       		.byte	0xb
 2218 0f96 4402     		.2byte	0x244
 2219 0f98 25000000 		.4byte	0x25
ARM GAS  /tmp/cc2fwsRs.s 			page 59


 2220 0f9c 30       		.byte	0x30
 2221 0f9d 1B       		.uleb128 0x1b
 2222 0f9e 260A0000 		.4byte	.LASF263
 2223 0fa2 0B       		.byte	0xb
 2224 0fa3 4502     		.2byte	0x245
 2225 0fa5 9C100000 		.4byte	0x109c
 2226 0fa9 34       		.byte	0x34
 2227 0faa 1B       		.uleb128 0x1b
 2228 0fab 3F070000 		.4byte	.LASF264
 2229 0faf 0B       		.byte	0xb
 2230 0fb0 4702     		.2byte	0x247
 2231 0fb2 25000000 		.4byte	0x25
 2232 0fb6 38       		.byte	0x38
 2233 0fb7 1B       		.uleb128 0x1b
 2234 0fb8 23080000 		.4byte	.LASF265
 2235 0fbc 0B       		.byte	0xb
 2236 0fbd 4902     		.2byte	0x249
 2237 0fbf 4A130000 		.4byte	0x134a
 2238 0fc3 3C       		.byte	0x3c
 2239 0fc4 1B       		.uleb128 0x1b
 2240 0fc5 0E030000 		.4byte	.LASF266
 2241 0fc9 0B       		.byte	0xb
 2242 0fca 4C02     		.2byte	0x24c
 2243 0fcc 7C0C0000 		.4byte	0xc7c
 2244 0fd0 40       		.byte	0x40
 2245 0fd1 1B       		.uleb128 0x1b
 2246 0fd2 00070000 		.4byte	.LASF267
 2247 0fd6 0B       		.byte	0xb
 2248 0fd7 4D02     		.2byte	0x24d
 2249 0fd9 25000000 		.4byte	0x25
 2250 0fdd 44       		.byte	0x44
 2251 0fde 1B       		.uleb128 0x1b
 2252 0fdf 06060000 		.4byte	.LASF268
 2253 0fe3 0B       		.byte	0xb
 2254 0fe4 4E02     		.2byte	0x24e
 2255 0fe6 7C0C0000 		.4byte	0xc7c
 2256 0fea 48       		.byte	0x48
 2257 0feb 1B       		.uleb128 0x1b
 2258 0fec A6070000 		.4byte	.LASF269
 2259 0ff0 0B       		.byte	0xb
 2260 0ff1 4F02     		.2byte	0x24f
 2261 0ff3 50130000 		.4byte	0x1350
 2262 0ff7 4C       		.byte	0x4c
 2263 0ff8 1B       		.uleb128 0x1b
 2264 0ff9 BE0A0000 		.4byte	.LASF270
 2265 0ffd 0B       		.byte	0xb
 2266 0ffe 5202     		.2byte	0x252
 2267 1000 25000000 		.4byte	0x25
 2268 1004 50       		.byte	0x50
 2269 1005 1B       		.uleb128 0x1b
 2270 1006 DB0B0000 		.4byte	.LASF271
 2271 100a 0B       		.byte	0xb
 2272 100b 5302     		.2byte	0x253
 2273 100d 66100000 		.4byte	0x1066
 2274 1011 54       		.byte	0x54
 2275 1012 1B       		.uleb128 0x1b
 2276 1013 B90A0000 		.4byte	.LASF272
ARM GAS  /tmp/cc2fwsRs.s 			page 60


 2277 1017 0B       		.byte	0xb
 2278 1018 7602     		.2byte	0x276
 2279 101a 0D130000 		.4byte	0x130d
 2280 101e 58       		.byte	0x58
 2281 101f 1C       		.uleb128 0x1c
 2282 1020 6C090000 		.4byte	.LASF232
 2283 1024 0B       		.byte	0xb
 2284 1025 7A02     		.2byte	0x27a
 2285 1027 990D0000 		.4byte	0xd99
 2286 102b 4801     		.2byte	0x148
 2287 102d 1C       		.uleb128 0x1c
 2288 102e 7B060000 		.4byte	.LASF273
 2289 1032 0B       		.byte	0xb
 2290 1033 7B02     		.2byte	0x27b
 2291 1035 5B0D0000 		.4byte	0xd5b
 2292 1039 4C01     		.2byte	0x14c
 2293 103b 1C       		.uleb128 0x1c
 2294 103c 68060000 		.4byte	.LASF274
 2295 1040 0B       		.byte	0xb
 2296 1041 7F02     		.2byte	0x27f
 2297 1043 61130000 		.4byte	0x1361
 2298 1047 DC02     		.2byte	0x2dc
 2299 1049 1C       		.uleb128 0x1c
 2300 104a C50D0000 		.4byte	.LASF275
 2301 104e 0B       		.byte	0xb
 2302 104f 8402     		.2byte	0x284
 2303 1051 12110000 		.4byte	0x1112
 2304 1055 E002     		.2byte	0x2e0
 2305 1057 1C       		.uleb128 0x1c
 2306 1058 1B0A0000 		.4byte	.LASF276
 2307 105c 0B       		.byte	0xb
 2308 105d 8502     		.2byte	0x285
 2309 105f 6D130000 		.4byte	0x136d
 2310 1063 EC02     		.2byte	0x2ec
 2311 1065 00       		.byte	0
 2312 1066 15       		.uleb128 0x15
 2313 1067 04       		.byte	0x4
 2314 1068 6C100000 		.4byte	0x106c
 2315 106c 03       		.uleb128 0x3
 2316 106d 01       		.byte	0x1
 2317 106e 08       		.byte	0x8
 2318 106f DC000000 		.4byte	.LASF277
 2319 1073 06       		.uleb128 0x6
 2320 1074 6C100000 		.4byte	0x106c
 2321 1078 15       		.uleb128 0x15
 2322 1079 04       		.byte	0x4
 2323 107a 0B0F0000 		.4byte	0xf0b
 2324 107e 18       		.uleb128 0x18
 2325 107f 25000000 		.4byte	0x25
 2326 1083 9C100000 		.4byte	0x109c
 2327 1087 19       		.uleb128 0x19
 2328 1088 290F0000 		.4byte	0xf29
 2329 108c 19       		.uleb128 0x19
 2330 108d D7000000 		.4byte	0xd7
 2331 1091 19       		.uleb128 0x19
 2332 1092 9C100000 		.4byte	0x109c
 2333 1096 19       		.uleb128 0x19
ARM GAS  /tmp/cc2fwsRs.s 			page 61


 2334 1097 25000000 		.4byte	0x25
 2335 109b 00       		.byte	0
 2336 109c 15       		.uleb128 0x15
 2337 109d 04       		.byte	0x4
 2338 109e 73100000 		.4byte	0x1073
 2339 10a2 15       		.uleb128 0x15
 2340 10a3 04       		.byte	0x4
 2341 10a4 7E100000 		.4byte	0x107e
 2342 10a8 18       		.uleb128 0x18
 2343 10a9 A10B0000 		.4byte	0xba1
 2344 10ad C6100000 		.4byte	0x10c6
 2345 10b1 19       		.uleb128 0x19
 2346 10b2 290F0000 		.4byte	0xf29
 2347 10b6 19       		.uleb128 0x19
 2348 10b7 D7000000 		.4byte	0xd7
 2349 10bb 19       		.uleb128 0x19
 2350 10bc A10B0000 		.4byte	0xba1
 2351 10c0 19       		.uleb128 0x19
 2352 10c1 25000000 		.4byte	0x25
 2353 10c5 00       		.byte	0
 2354 10c6 15       		.uleb128 0x15
 2355 10c7 04       		.byte	0x4
 2356 10c8 A8100000 		.4byte	0x10a8
 2357 10cc 18       		.uleb128 0x18
 2358 10cd 25000000 		.4byte	0x25
 2359 10d1 E0100000 		.4byte	0x10e0
 2360 10d5 19       		.uleb128 0x19
 2361 10d6 290F0000 		.4byte	0xf29
 2362 10da 19       		.uleb128 0x19
 2363 10db D7000000 		.4byte	0xd7
 2364 10df 00       		.byte	0
 2365 10e0 15       		.uleb128 0x15
 2366 10e1 04       		.byte	0x4
 2367 10e2 CC100000 		.4byte	0x10cc
 2368 10e6 08       		.uleb128 0x8
 2369 10e7 45000000 		.4byte	0x45
 2370 10eb F6100000 		.4byte	0x10f6
 2371 10ef 09       		.uleb128 0x9
 2372 10f0 EE000000 		.4byte	0xee
 2373 10f4 02       		.byte	0x2
 2374 10f5 00       		.byte	0
 2375 10f6 08       		.uleb128 0x8
 2376 10f7 45000000 		.4byte	0x45
 2377 10fb 06110000 		.4byte	0x1106
 2378 10ff 09       		.uleb128 0x9
 2379 1100 EE000000 		.4byte	0xee
 2380 1104 00       		.byte	0
 2381 1105 00       		.byte	0
 2382 1106 10       		.uleb128 0x10
 2383 1107 A9040000 		.4byte	.LASF278
 2384 110b 0B       		.byte	0xb
 2385 110c 1D01     		.2byte	0x11d
 2386 110e E10D0000 		.4byte	0xde1
 2387 1112 1D       		.uleb128 0x1d
 2388 1113 B20D0000 		.4byte	.LASF279
 2389 1117 0C       		.byte	0xc
 2390 1118 0B       		.byte	0xb
ARM GAS  /tmp/cc2fwsRs.s 			page 62


 2391 1119 2101     		.2byte	0x121
 2392 111b 47110000 		.4byte	0x1147
 2393 111f 1B       		.uleb128 0x1b
 2394 1120 B6050000 		.4byte	.LASF212
 2395 1124 0B       		.byte	0xb
 2396 1125 2301     		.2byte	0x123
 2397 1127 47110000 		.4byte	0x1147
 2398 112b 00       		.byte	0
 2399 112c 1B       		.uleb128 0x1b
 2400 112d 880B0000 		.4byte	.LASF280
 2401 1131 0B       		.byte	0xb
 2402 1132 2401     		.2byte	0x124
 2403 1134 25000000 		.4byte	0x25
 2404 1138 04       		.byte	0x4
 2405 1139 1B       		.uleb128 0x1b
 2406 113a 460F0000 		.4byte	.LASF281
 2407 113e 0B       		.byte	0xb
 2408 113f 2501     		.2byte	0x125
 2409 1141 4D110000 		.4byte	0x114d
 2410 1145 08       		.byte	0x8
 2411 1146 00       		.byte	0
 2412 1147 15       		.uleb128 0x15
 2413 1148 04       		.byte	0x4
 2414 1149 12110000 		.4byte	0x1112
 2415 114d 15       		.uleb128 0x15
 2416 114e 04       		.byte	0x4
 2417 114f 06110000 		.4byte	0x1106
 2418 1153 1D       		.uleb128 0x1d
 2419 1154 F9030000 		.4byte	.LASF282
 2420 1158 0E       		.byte	0xe
 2421 1159 0B       		.byte	0xb
 2422 115a 3D01     		.2byte	0x13d
 2423 115c 88110000 		.4byte	0x1188
 2424 1160 1B       		.uleb128 0x1b
 2425 1161 080F0000 		.4byte	.LASF283
 2426 1165 0B       		.byte	0xb
 2427 1166 3E01     		.2byte	0x13e
 2428 1168 88110000 		.4byte	0x1188
 2429 116c 00       		.byte	0
 2430 116d 1B       		.uleb128 0x1b
 2431 116e B9070000 		.4byte	.LASF284
 2432 1172 0B       		.byte	0xb
 2433 1173 3F01     		.2byte	0x13f
 2434 1175 88110000 		.4byte	0x1188
 2435 1179 06       		.byte	0x6
 2436 117a 1B       		.uleb128 0x1b
 2437 117b BF070000 		.4byte	.LASF285
 2438 117f 0B       		.byte	0xb
 2439 1180 4001     		.2byte	0x140
 2440 1182 5E000000 		.4byte	0x5e
 2441 1186 0C       		.byte	0xc
 2442 1187 00       		.byte	0
 2443 1188 08       		.uleb128 0x8
 2444 1189 5E000000 		.4byte	0x5e
 2445 118d 98110000 		.4byte	0x1198
 2446 1191 09       		.uleb128 0x9
 2447 1192 EE000000 		.4byte	0xee
ARM GAS  /tmp/cc2fwsRs.s 			page 63


 2448 1196 02       		.byte	0x2
 2449 1197 00       		.byte	0
 2450 1198 1E       		.uleb128 0x1e
 2451 1199 D0       		.byte	0xd0
 2452 119a 0B       		.byte	0xb
 2453 119b 5702     		.2byte	0x257
 2454 119d 99120000 		.4byte	0x1299
 2455 11a1 1B       		.uleb128 0x1b
 2456 11a2 90020000 		.4byte	.LASF286
 2457 11a6 0B       		.byte	0xb
 2458 11a7 5902     		.2byte	0x259
 2459 11a9 2C000000 		.4byte	0x2c
 2460 11ad 00       		.byte	0
 2461 11ae 1B       		.uleb128 0x1b
 2462 11af 810A0000 		.4byte	.LASF287
 2463 11b3 0B       		.byte	0xb
 2464 11b4 5A02     		.2byte	0x25a
 2465 11b6 66100000 		.4byte	0x1066
 2466 11ba 04       		.byte	0x4
 2467 11bb 1B       		.uleb128 0x1b
 2468 11bc EC030000 		.4byte	.LASF288
 2469 11c0 0B       		.byte	0xb
 2470 11c1 5B02     		.2byte	0x25b
 2471 11c3 99120000 		.4byte	0x1299
 2472 11c7 08       		.byte	0x8
 2473 11c8 1B       		.uleb128 0x1b
 2474 11c9 8E0A0000 		.4byte	.LASF289
 2475 11cd 0B       		.byte	0xb
 2476 11ce 5C02     		.2byte	0x25c
 2477 11d0 920C0000 		.4byte	0xc92
 2478 11d4 24       		.byte	0x24
 2479 11d5 1B       		.uleb128 0x1b
 2480 11d6 48090000 		.4byte	.LASF290
 2481 11da 0B       		.byte	0xb
 2482 11db 5D02     		.2byte	0x25d
 2483 11dd 25000000 		.4byte	0x25
 2484 11e1 48       		.byte	0x48
 2485 11e2 1B       		.uleb128 0x1b
 2486 11e3 0E0F0000 		.4byte	.LASF291
 2487 11e7 0B       		.byte	0xb
 2488 11e8 5E02     		.2byte	0x25e
 2489 11ea 90000000 		.4byte	0x90
 2490 11ee 50       		.byte	0x50
 2491 11ef 1B       		.uleb128 0x1b
 2492 11f0 20010000 		.4byte	.LASF292
 2493 11f4 0B       		.byte	0xb
 2494 11f5 5F02     		.2byte	0x25f
 2495 11f7 53110000 		.4byte	0x1153
 2496 11fb 58       		.byte	0x58
 2497 11fc 1B       		.uleb128 0x1b
 2498 11fd 1C060000 		.4byte	.LASF293
 2499 1201 0B       		.byte	0xb
 2500 1202 6002     		.2byte	0x260
 2501 1204 080C0000 		.4byte	0xc08
 2502 1208 68       		.byte	0x68
 2503 1209 1B       		.uleb128 0x1b
 2504 120a E80D0000 		.4byte	.LASF294
ARM GAS  /tmp/cc2fwsRs.s 			page 64


 2505 120e 0B       		.byte	0xb
 2506 120f 6102     		.2byte	0x261
 2507 1211 080C0000 		.4byte	0xc08
 2508 1215 70       		.byte	0x70
 2509 1216 1B       		.uleb128 0x1b
 2510 1217 990E0000 		.4byte	.LASF295
 2511 121b 0B       		.byte	0xb
 2512 121c 6202     		.2byte	0x262
 2513 121e 080C0000 		.4byte	0xc08
 2514 1222 78       		.byte	0x78
 2515 1223 1B       		.uleb128 0x1b
 2516 1224 CE0A0000 		.4byte	.LASF296
 2517 1228 0B       		.byte	0xb
 2518 1229 6302     		.2byte	0x263
 2519 122b A9120000 		.4byte	0x12a9
 2520 122f 80       		.byte	0x80
 2521 1230 1B       		.uleb128 0x1b
 2522 1231 C9030000 		.4byte	.LASF297
 2523 1235 0B       		.byte	0xb
 2524 1236 6402     		.2byte	0x264
 2525 1238 B9120000 		.4byte	0x12b9
 2526 123c 88       		.byte	0x88
 2527 123d 1B       		.uleb128 0x1b
 2528 123e CD0D0000 		.4byte	.LASF298
 2529 1242 0B       		.byte	0xb
 2530 1243 6502     		.2byte	0x265
 2531 1245 25000000 		.4byte	0x25
 2532 1249 A0       		.byte	0xa0
 2533 124a 1B       		.uleb128 0x1b
 2534 124b 6F020000 		.4byte	.LASF299
 2535 124f 0B       		.byte	0xb
 2536 1250 6602     		.2byte	0x266
 2537 1252 080C0000 		.4byte	0xc08
 2538 1256 A4       		.byte	0xa4
 2539 1257 1B       		.uleb128 0x1b
 2540 1258 39020000 		.4byte	.LASF300
 2541 125c 0B       		.byte	0xb
 2542 125d 6702     		.2byte	0x267
 2543 125f 080C0000 		.4byte	0xc08
 2544 1263 AC       		.byte	0xac
 2545 1264 1B       		.uleb128 0x1b
 2546 1265 A6030000 		.4byte	.LASF301
 2547 1269 0B       		.byte	0xb
 2548 126a 6802     		.2byte	0x268
 2549 126c 080C0000 		.4byte	0xc08
 2550 1270 B4       		.byte	0xb4
 2551 1271 1B       		.uleb128 0x1b
 2552 1272 D2070000 		.4byte	.LASF302
 2553 1276 0B       		.byte	0xb
 2554 1277 6902     		.2byte	0x269
 2555 1279 080C0000 		.4byte	0xc08
 2556 127d BC       		.byte	0xbc
 2557 127e 1B       		.uleb128 0x1b
 2558 127f 0B060000 		.4byte	.LASF303
 2559 1283 0B       		.byte	0xb
 2560 1284 6A02     		.2byte	0x26a
 2561 1286 080C0000 		.4byte	0xc08
ARM GAS  /tmp/cc2fwsRs.s 			page 65


 2562 128a C4       		.byte	0xc4
 2563 128b 1B       		.uleb128 0x1b
 2564 128c B0040000 		.4byte	.LASF304
 2565 1290 0B       		.byte	0xb
 2566 1291 6B02     		.2byte	0x26b
 2567 1293 25000000 		.4byte	0x25
 2568 1297 CC       		.byte	0xcc
 2569 1298 00       		.byte	0
 2570 1299 08       		.uleb128 0x8
 2571 129a 6C100000 		.4byte	0x106c
 2572 129e A9120000 		.4byte	0x12a9
 2573 12a2 09       		.uleb128 0x9
 2574 12a3 EE000000 		.4byte	0xee
 2575 12a7 19       		.byte	0x19
 2576 12a8 00       		.byte	0
 2577 12a9 08       		.uleb128 0x8
 2578 12aa 6C100000 		.4byte	0x106c
 2579 12ae B9120000 		.4byte	0x12b9
 2580 12b2 09       		.uleb128 0x9
 2581 12b3 EE000000 		.4byte	0xee
 2582 12b7 07       		.byte	0x7
 2583 12b8 00       		.byte	0
 2584 12b9 08       		.uleb128 0x8
 2585 12ba 6C100000 		.4byte	0x106c
 2586 12be C9120000 		.4byte	0x12c9
 2587 12c2 09       		.uleb128 0x9
 2588 12c3 EE000000 		.4byte	0xee
 2589 12c7 17       		.byte	0x17
 2590 12c8 00       		.byte	0
 2591 12c9 1E       		.uleb128 0x1e
 2592 12ca F0       		.byte	0xf0
 2593 12cb 0B       		.byte	0xb
 2594 12cc 7002     		.2byte	0x270
 2595 12ce ED120000 		.4byte	0x12ed
 2596 12d2 1B       		.uleb128 0x1b
 2597 12d3 91030000 		.4byte	.LASF305
 2598 12d7 0B       		.byte	0xb
 2599 12d8 7302     		.2byte	0x273
 2600 12da ED120000 		.4byte	0x12ed
 2601 12de 00       		.byte	0
 2602 12df 1B       		.uleb128 0x1b
 2603 12e0 3D0F0000 		.4byte	.LASF306
 2604 12e4 0B       		.byte	0xb
 2605 12e5 7402     		.2byte	0x274
 2606 12e7 FD120000 		.4byte	0x12fd
 2607 12eb 78       		.byte	0x78
 2608 12ec 00       		.byte	0
 2609 12ed 08       		.uleb128 0x8
 2610 12ee DB0D0000 		.4byte	0xddb
 2611 12f2 FD120000 		.4byte	0x12fd
 2612 12f6 09       		.uleb128 0x9
 2613 12f7 EE000000 		.4byte	0xee
 2614 12fb 1D       		.byte	0x1d
 2615 12fc 00       		.byte	0
 2616 12fd 08       		.uleb128 0x8
 2617 12fe 2C000000 		.4byte	0x2c
 2618 1302 0D130000 		.4byte	0x130d
ARM GAS  /tmp/cc2fwsRs.s 			page 66


 2619 1306 09       		.uleb128 0x9
 2620 1307 EE000000 		.4byte	0xee
 2621 130b 1D       		.byte	0x1d
 2622 130c 00       		.byte	0
 2623 130d 1F       		.uleb128 0x1f
 2624 130e F0       		.byte	0xf0
 2625 130f 0B       		.byte	0xb
 2626 1310 5502     		.2byte	0x255
 2627 1312 2F130000 		.4byte	0x132f
 2628 1316 20       		.uleb128 0x20
 2629 1317 200E0000 		.4byte	.LASF255
 2630 131b 0B       		.byte	0xb
 2631 131c 6C02     		.2byte	0x26c
 2632 131e 98110000 		.4byte	0x1198
 2633 1322 20       		.uleb128 0x20
 2634 1323 A70A0000 		.4byte	.LASF307
 2635 1327 0B       		.byte	0xb
 2636 1328 7502     		.2byte	0x275
 2637 132a C9120000 		.4byte	0x12c9
 2638 132e 00       		.byte	0
 2639 132f 08       		.uleb128 0x8
 2640 1330 6C100000 		.4byte	0x106c
 2641 1334 3F130000 		.4byte	0x133f
 2642 1338 09       		.uleb128 0x9
 2643 1339 EE000000 		.4byte	0xee
 2644 133d 18       		.byte	0x18
 2645 133e 00       		.byte	0
 2646 133f 21       		.uleb128 0x21
 2647 1340 4A130000 		.4byte	0x134a
 2648 1344 19       		.uleb128 0x19
 2649 1345 290F0000 		.4byte	0xf29
 2650 1349 00       		.byte	0
 2651 134a 15       		.uleb128 0x15
 2652 134b 04       		.byte	0x4
 2653 134c 3F130000 		.4byte	0x133f
 2654 1350 15       		.uleb128 0x15
 2655 1351 04       		.byte	0x4
 2656 1352 7C0C0000 		.4byte	0xc7c
 2657 1356 21       		.uleb128 0x21
 2658 1357 61130000 		.4byte	0x1361
 2659 135b 19       		.uleb128 0x19
 2660 135c 25000000 		.4byte	0x25
 2661 1360 00       		.byte	0
 2662 1361 15       		.uleb128 0x15
 2663 1362 04       		.byte	0x4
 2664 1363 67130000 		.4byte	0x1367
 2665 1367 15       		.uleb128 0x15
 2666 1368 04       		.byte	0x4
 2667 1369 56130000 		.4byte	0x1356
 2668 136d 08       		.uleb128 0x8
 2669 136e 06110000 		.4byte	0x1106
 2670 1372 7D130000 		.4byte	0x137d
 2671 1376 09       		.uleb128 0x9
 2672 1377 EE000000 		.4byte	0xee
 2673 137b 02       		.byte	0x2
 2674 137c 00       		.byte	0
 2675 137d 0A       		.uleb128 0xa
ARM GAS  /tmp/cc2fwsRs.s 			page 67


 2676 137e 85030000 		.4byte	.LASF308
 2677 1382 0B       		.byte	0xb
 2678 1383 FD02     		.2byte	0x2fd
 2679 1385 290F0000 		.4byte	0xf29
 2680 1389 0A       		.uleb128 0xa
 2681 138a 510A0000 		.4byte	.LASF309
 2682 138e 0B       		.byte	0xb
 2683 138f FE02     		.2byte	0x2fe
 2684 1391 2F0F0000 		.4byte	0xf2f
 2685 1395 0B       		.uleb128 0xb
 2686 1396 5E050000 		.4byte	.LASF310
 2687 139a 0C       		.byte	0xc
 2688 139b 5F       		.byte	0x5f
 2689 139c 66100000 		.4byte	0x1066
 2690 13a0 0B       		.uleb128 0xb
 2691 13a1 DD020000 		.4byte	.LASF311
 2692 13a5 0D       		.byte	0xd
 2693 13a6 8F       		.byte	0x8f
 2694 13a7 B2130000 		.4byte	0x13b2
 2695 13ab 03       		.uleb128 0x3
 2696 13ac 01       		.byte	0x1
 2697 13ad 02       		.byte	0x2
 2698 13ae 77050000 		.4byte	.LASF312
 2699 13b2 05       		.uleb128 0x5
 2700 13b3 AB130000 		.4byte	0x13ab
 2701 13b7 22       		.uleb128 0x22
 2702 13b8 670B0000 		.4byte	.LASF313
 2703 13bc 0D       		.byte	0xd
 2704 13bd 94       		.byte	0x94
 2705 13be C8000000 		.4byte	0xc8
 2706 13c2 05       		.uleb128 0x5
 2707 13c3 03       		.byte	0x3
 2708 13c4 00000000 		.4byte	cpu_irq_critical_section_counter
 2709 13c8 22       		.uleb128 0x22
 2710 13c9 99050000 		.4byte	.LASF314
 2711 13cd 0D       		.byte	0xd
 2712 13ce 95       		.byte	0x95
 2713 13cf B2130000 		.4byte	0x13b2
 2714 13d3 05       		.uleb128 0x5
 2715 13d4 03       		.byte	0x3
 2716 13d5 00000000 		.4byte	cpu_irq_prev_interrupt_state
 2717 13d9 03       		.uleb128 0x3
 2718 13da 04       		.byte	0x4
 2719 13db 04       		.byte	0x4
 2720 13dc 6C030000 		.4byte	.LASF315
 2721 13e0 03       		.uleb128 0x3
 2722 13e1 08       		.byte	0x8
 2723 13e2 04       		.byte	0x4
 2724 13e3 920E0000 		.4byte	.LASF316
 2725 13e7 23       		.uleb128 0x23
 2726 13e8 01       		.byte	0x1
 2727 13e9 45000000 		.4byte	0x45
 2728 13ed 02       		.byte	0x2
 2729 13ee 87       		.byte	0x87
 2730 13ef 24140000 		.4byte	0x1424
 2731 13f3 24       		.uleb128 0x24
 2732 13f4 130A0000 		.4byte	.LASF317
ARM GAS  /tmp/cc2fwsRs.s 			page 68


 2733 13f8 00       		.byte	0
 2734 13f9 24       		.uleb128 0x24
 2735 13fa 09000000 		.4byte	.LASF318
 2736 13fe 01       		.byte	0x1
 2737 13ff 24       		.uleb128 0x24
 2738 1400 E9040000 		.4byte	.LASF319
 2739 1404 02       		.byte	0x2
 2740 1405 24       		.uleb128 0x24
 2741 1406 DA0D0000 		.4byte	.LASF320
 2742 140a 03       		.byte	0x3
 2743 140b 24       		.uleb128 0x24
 2744 140c 2D080000 		.4byte	.LASF321
 2745 1410 04       		.byte	0x4
 2746 1411 24       		.uleb128 0x24
 2747 1412 CB080000 		.4byte	.LASF322
 2748 1416 05       		.byte	0x5
 2749 1417 24       		.uleb128 0x24
 2750 1418 D2020000 		.4byte	.LASF323
 2751 141c 06       		.byte	0x6
 2752 141d 24       		.uleb128 0x24
 2753 141e 0A070000 		.4byte	.LASF324
 2754 1422 FF       		.byte	0xff
 2755 1423 00       		.byte	0
 2756 1424 25       		.uleb128 0x25
 2757 1425 BC050000 		.4byte	.LASF329
 2758 1429 01       		.byte	0x1
 2759 142a 80       		.byte	0x80
 2760 142b 97000000 		.4byte	0x97
 2761 142f 00000000 		.4byte	.LFB220
 2762 1433 54000000 		.4byte	.LFE220-.LFB220
 2763 1437 01       		.uleb128 0x1
 2764 1438 9C       		.byte	0x9c
 2765 1439 F0140000 		.4byte	0x14f0
 2766 143d 26       		.uleb128 0x26
 2767 143e 39050000 		.4byte	.LASF325
 2768 1442 01       		.byte	0x1
 2769 1443 80       		.byte	0x80
 2770 1444 F0140000 		.4byte	0x14f0
 2771 1448 00000000 		.4byte	.LLST5
 2772 144c 26       		.uleb128 0x26
 2773 144d 1F000000 		.4byte	.LASF326
 2774 1451 01       		.byte	0x1
 2775 1452 80       		.byte	0x80
 2776 1453 97000000 		.4byte	0x97
 2777 1457 3A000000 		.4byte	.LLST6
 2778 145b 26       		.uleb128 0x26
 2779 145c 64020000 		.4byte	.LASF327
 2780 1460 01       		.byte	0x1
 2781 1461 81       		.byte	0x81
 2782 1462 97000000 		.4byte	0x97
 2783 1466 5B000000 		.4byte	.LLST7
 2784 146a 26       		.uleb128 0x26
 2785 146b 10020000 		.4byte	.LASF328
 2786 146f 01       		.byte	0x1
 2787 1470 81       		.byte	0x81
 2788 1471 BD000000 		.4byte	0xbd
 2789 1475 7C000000 		.4byte	.LLST8
ARM GAS  /tmp/cc2fwsRs.s 			page 69


 2790 1479 27       		.uleb128 0x27
 2791 147a 2F160000 		.4byte	0x162f
 2792 147e 04000000 		.4byte	.LBB34
 2793 1482 40000000 		.4byte	.Ldebug_ranges0+0x40
 2794 1486 01       		.byte	0x1
 2795 1487 83       		.byte	0x83
 2796 1488 A6140000 		.4byte	0x14a6
 2797 148c 28       		.uleb128 0x28
 2798 148d 6C160000 		.4byte	0x166c
 2799 1491 28       		.uleb128 0x28
 2800 1492 60160000 		.4byte	0x1660
 2801 1496 28       		.uleb128 0x28
 2802 1497 54160000 		.4byte	0x1654
 2803 149b 28       		.uleb128 0x28
 2804 149c 48160000 		.4byte	0x1648
 2805 14a0 28       		.uleb128 0x28
 2806 14a1 3C160000 		.4byte	0x163c
 2807 14a5 00       		.byte	0
 2808 14a6 29       		.uleb128 0x29
 2809 14a7 DF150000 		.4byte	0x15df
 2810 14ab 10000000 		.4byte	.LBB38
 2811 14af 60000000 		.4byte	.Ldebug_ranges0+0x60
 2812 14b3 01       		.byte	0x1
 2813 14b4 85       		.byte	0x85
 2814 14b5 2A       		.uleb128 0x2a
 2815 14b6 FA150000 		.4byte	0x15fa
 2816 14ba 40420F00 		.4byte	0xf4240
 2817 14be 2B       		.uleb128 0x2b
 2818 14bf EF150000 		.4byte	0x15ef
 2819 14c3 9D000000 		.4byte	.LLST9
 2820 14c7 2C       		.uleb128 0x2c
 2821 14c8 60000000 		.4byte	.Ldebug_ranges0+0x60
 2822 14cc 2D       		.uleb128 0x2d
 2823 14cd 05160000 		.4byte	0x1605
 2824 14d1 02       		.uleb128 0x2
 2825 14d2 91       		.byte	0x91
 2826 14d3 6C       		.sleb128 -20
 2827 14d4 2E       		.uleb128 0x2e
 2828 14d5 79160000 		.4byte	0x1679
 2829 14d9 36000000 		.4byte	.LBB40
 2830 14dd 02000000 		.4byte	.LBE40-.LBB40
 2831 14e1 01       		.byte	0x1
 2832 14e2 56       		.byte	0x56
 2833 14e3 2B       		.uleb128 0x2b
 2834 14e4 86160000 		.4byte	0x1686
 2835 14e8 D7000000 		.4byte	.LLST10
 2836 14ec 00       		.byte	0
 2837 14ed 00       		.byte	0
 2838 14ee 00       		.byte	0
 2839 14ef 00       		.byte	0
 2840 14f0 15       		.uleb128 0x15
 2841 14f1 04       		.byte	0x4
 2842 14f2 800B0000 		.4byte	0xb80
 2843 14f6 25       		.uleb128 0x25
 2844 14f7 C4070000 		.4byte	.LASF330
 2845 14fb 01       		.byte	0x1
 2846 14fc 6A       		.byte	0x6a
ARM GAS  /tmp/cc2fwsRs.s 			page 70


 2847 14fd 97000000 		.4byte	0x97
 2848 1501 00000000 		.4byte	.LFB219
 2849 1505 5C000000 		.4byte	.LFE219-.LFB219
 2850 1509 01       		.uleb128 0x1
 2851 150a 9C       		.byte	0x9c
 2852 150b D9150000 		.4byte	0x15d9
 2853 150f 26       		.uleb128 0x26
 2854 1510 39050000 		.4byte	.LASF325
 2855 1514 01       		.byte	0x1
 2856 1515 6A       		.byte	0x6a
 2857 1516 F0140000 		.4byte	0x14f0
 2858 151a EA000000 		.4byte	.LLST0
 2859 151e 26       		.uleb128 0x26
 2860 151f 1F000000 		.4byte	.LASF326
 2861 1523 01       		.byte	0x1
 2862 1524 6A       		.byte	0x6a
 2863 1525 97000000 		.4byte	0x97
 2864 1529 24010000 		.4byte	.LLST1
 2865 152d 26       		.uleb128 0x26
 2866 152e 64020000 		.4byte	.LASF327
 2867 1532 01       		.byte	0x1
 2868 1533 6A       		.byte	0x6a
 2869 1534 97000000 		.4byte	0x97
 2870 1538 45010000 		.4byte	.LLST2
 2871 153c 2F       		.uleb128 0x2f
 2872 153d 9A0D0000 		.4byte	.LASF331
 2873 1541 01       		.byte	0x1
 2874 1542 6B       		.byte	0x6b
 2875 1543 D9150000 		.4byte	0x15d9
 2876 1547 01       		.uleb128 0x1
 2877 1548 53       		.byte	0x53
 2878 1549 27       		.uleb128 0x27
 2879 154a 2F160000 		.4byte	0x162f
 2880 154e 04000000 		.4byte	.LBB18
 2881 1552 00000000 		.4byte	.Ldebug_ranges0+0
 2882 1556 01       		.byte	0x1
 2883 1557 6D       		.byte	0x6d
 2884 1558 76150000 		.4byte	0x1576
 2885 155c 28       		.uleb128 0x28
 2886 155d 6C160000 		.4byte	0x166c
 2887 1561 28       		.uleb128 0x28
 2888 1562 60160000 		.4byte	0x1660
 2889 1566 28       		.uleb128 0x28
 2890 1567 54160000 		.4byte	0x1654
 2891 156b 28       		.uleb128 0x28
 2892 156c 48160000 		.4byte	0x1648
 2893 1570 28       		.uleb128 0x28
 2894 1571 3C160000 		.4byte	0x163c
 2895 1575 00       		.byte	0
 2896 1576 27       		.uleb128 0x27
 2897 1577 DF150000 		.4byte	0x15df
 2898 157b 10000000 		.4byte	.LBB22
 2899 157f 20000000 		.4byte	.Ldebug_ranges0+0x20
 2900 1583 01       		.byte	0x1
 2901 1584 6F       		.byte	0x6f
 2902 1585 C3150000 		.4byte	0x15c3
 2903 1589 2A       		.uleb128 0x2a
ARM GAS  /tmp/cc2fwsRs.s 			page 71


 2904 158a FA150000 		.4byte	0x15fa
 2905 158e 40420F00 		.4byte	0xf4240
 2906 1592 2B       		.uleb128 0x2b
 2907 1593 EF150000 		.4byte	0x15ef
 2908 1597 66010000 		.4byte	.LLST3
 2909 159b 2C       		.uleb128 0x2c
 2910 159c 20000000 		.4byte	.Ldebug_ranges0+0x20
 2911 15a0 2D       		.uleb128 0x2d
 2912 15a1 05160000 		.4byte	0x1605
 2913 15a5 02       		.uleb128 0x2
 2914 15a6 91       		.byte	0x91
 2915 15a7 6C       		.sleb128 -20
 2916 15a8 2E       		.uleb128 0x2e
 2917 15a9 79160000 		.4byte	0x1679
 2918 15ad 32000000 		.4byte	.LBB24
 2919 15b1 02000000 		.4byte	.LBE24-.LBB24
 2920 15b5 01       		.byte	0x1
 2921 15b6 56       		.byte	0x56
 2922 15b7 2B       		.uleb128 0x2b
 2923 15b8 86160000 		.4byte	0x1686
 2924 15bc A0010000 		.4byte	.LLST4
 2925 15c0 00       		.byte	0
 2926 15c1 00       		.byte	0
 2927 15c2 00       		.byte	0
 2928 15c3 2E       		.uleb128 0x2e
 2929 15c4 11160000 		.4byte	0x1611
 2930 15c8 38000000 		.4byte	.LBB32
 2931 15cc 08000000 		.4byte	.LBE32-.LBB32
 2932 15d0 01       		.byte	0x1
 2933 15d1 72       		.byte	0x72
 2934 15d2 28       		.uleb128 0x28
 2935 15d3 22160000 		.4byte	0x1622
 2936 15d7 00       		.byte	0
 2937 15d8 00       		.byte	0
 2938 15d9 15       		.uleb128 0x15
 2939 15da 04       		.byte	0x4
 2940 15db BD000000 		.4byte	0xbd
 2941 15df 30       		.uleb128 0x30
 2942 15e0 7D050000 		.4byte	.LASF333
 2943 15e4 01       		.byte	0x1
 2944 15e5 52       		.byte	0x52
 2945 15e6 97000000 		.4byte	0x97
 2946 15ea 01       		.byte	0x1
 2947 15eb 11160000 		.4byte	0x1611
 2948 15ef 31       		.uleb128 0x31
 2949 15f0 39050000 		.4byte	.LASF325
 2950 15f4 01       		.byte	0x1
 2951 15f5 52       		.byte	0x52
 2952 15f6 F0140000 		.4byte	0x14f0
 2953 15fa 31       		.uleb128 0x31
 2954 15fb C70B0000 		.4byte	.LASF332
 2955 15ff 01       		.byte	0x1
 2956 1600 52       		.byte	0x52
 2957 1601 D2000000 		.4byte	0xd2
 2958 1605 32       		.uleb128 0x32
 2959 1606 E8010000 		.4byte	.LASF344
 2960 160a 01       		.byte	0x1
ARM GAS  /tmp/cc2fwsRs.s 			page 72


 2961 160b 54       		.byte	0x54
 2962 160c C8000000 		.4byte	0xc8
 2963 1610 00       		.byte	0
 2964 1611 33       		.uleb128 0x33
 2965 1612 0E010000 		.4byte	.LASF334
 2966 1616 02       		.byte	0x2
 2967 1617 9303     		.2byte	0x393
 2968 1619 A2000000 		.4byte	0xa2
 2969 161d 03       		.byte	0x3
 2970 161e 2F160000 		.4byte	0x162f
 2971 1622 34       		.uleb128 0x34
 2972 1623 39050000 		.4byte	.LASF325
 2973 1627 02       		.byte	0x2
 2974 1628 9303     		.2byte	0x393
 2975 162a F0140000 		.4byte	0x14f0
 2976 162e 00       		.byte	0
 2977 162f 35       		.uleb128 0x35
 2978 1630 EE060000 		.4byte	.LASF339
 2979 1634 02       		.byte	0x2
 2980 1635 7D03     		.2byte	0x37d
 2981 1637 03       		.byte	0x3
 2982 1638 79160000 		.4byte	0x1679
 2983 163c 34       		.uleb128 0x34
 2984 163d 39050000 		.4byte	.LASF325
 2985 1641 02       		.byte	0x2
 2986 1642 7D03     		.2byte	0x37d
 2987 1644 F0140000 		.4byte	0x14f0
 2988 1648 34       		.uleb128 0x34
 2989 1649 CB050000 		.4byte	.LASF335
 2990 164d 02       		.byte	0x2
 2991 164e 7E03     		.2byte	0x37e
 2992 1650 97000000 		.4byte	0x97
 2993 1654 34       		.uleb128 0x34
 2994 1655 48080000 		.4byte	.LASF336
 2995 1659 02       		.byte	0x2
 2996 165a 7E03     		.2byte	0x37e
 2997 165c 97000000 		.4byte	0x97
 2998 1660 34       		.uleb128 0x34
 2999 1661 32070000 		.4byte	.LASF337
 3000 1665 02       		.byte	0x2
 3001 1666 7E03     		.2byte	0x37e
 3002 1668 97000000 		.4byte	0x97
 3003 166c 34       		.uleb128 0x34
 3004 166d 7D020000 		.4byte	.LASF338
 3005 1671 02       		.byte	0x2
 3006 1672 7F03     		.2byte	0x37f
 3007 1674 A2000000 		.4byte	0xa2
 3008 1678 00       		.byte	0
 3009 1679 36       		.uleb128 0x36
 3010 167a 98040000 		.4byte	.LASF340
 3011 167e 02       		.byte	0x2
 3012 167f DB02     		.2byte	0x2db
 3013 1681 97000000 		.4byte	0x97
 3014 1685 03       		.byte	0x3
 3015 1686 34       		.uleb128 0x34
 3016 1687 39050000 		.4byte	.LASF325
 3017 168b 02       		.byte	0x2
ARM GAS  /tmp/cc2fwsRs.s 			page 73


 3018 168c DB02     		.2byte	0x2db
 3019 168e F0140000 		.4byte	0x14f0
 3020 1692 00       		.byte	0
 3021 1693 00       		.byte	0
 3022              		.section	.debug_abbrev,"",%progbits
 3023              	.Ldebug_abbrev0:
 3024 0000 01       		.uleb128 0x1
 3025 0001 11       		.uleb128 0x11
 3026 0002 01       		.byte	0x1
 3027 0003 25       		.uleb128 0x25
 3028 0004 0E       		.uleb128 0xe
 3029 0005 13       		.uleb128 0x13
 3030 0006 0B       		.uleb128 0xb
 3031 0007 03       		.uleb128 0x3
 3032 0008 0E       		.uleb128 0xe
 3033 0009 1B       		.uleb128 0x1b
 3034 000a 0E       		.uleb128 0xe
 3035 000b 55       		.uleb128 0x55
 3036 000c 17       		.uleb128 0x17
 3037 000d 11       		.uleb128 0x11
 3038 000e 01       		.uleb128 0x1
 3039 000f 10       		.uleb128 0x10
 3040 0010 17       		.uleb128 0x17
 3041 0011 00       		.byte	0
 3042 0012 00       		.byte	0
 3043 0013 02       		.uleb128 0x2
 3044 0014 24       		.uleb128 0x24
 3045 0015 00       		.byte	0
 3046 0016 0B       		.uleb128 0xb
 3047 0017 0B       		.uleb128 0xb
 3048 0018 3E       		.uleb128 0x3e
 3049 0019 0B       		.uleb128 0xb
 3050 001a 03       		.uleb128 0x3
 3051 001b 08       		.uleb128 0x8
 3052 001c 00       		.byte	0
 3053 001d 00       		.byte	0
 3054 001e 03       		.uleb128 0x3
 3055 001f 24       		.uleb128 0x24
 3056 0020 00       		.byte	0
 3057 0021 0B       		.uleb128 0xb
 3058 0022 0B       		.uleb128 0xb
 3059 0023 3E       		.uleb128 0x3e
 3060 0024 0B       		.uleb128 0xb
 3061 0025 03       		.uleb128 0x3
 3062 0026 0E       		.uleb128 0xe
 3063 0027 00       		.byte	0
 3064 0028 00       		.byte	0
 3065 0029 04       		.uleb128 0x4
 3066 002a 16       		.uleb128 0x16
 3067 002b 00       		.byte	0
 3068 002c 03       		.uleb128 0x3
 3069 002d 0E       		.uleb128 0xe
 3070 002e 3A       		.uleb128 0x3a
 3071 002f 0B       		.uleb128 0xb
 3072 0030 3B       		.uleb128 0x3b
 3073 0031 0B       		.uleb128 0xb
 3074 0032 49       		.uleb128 0x49
ARM GAS  /tmp/cc2fwsRs.s 			page 74


 3075 0033 13       		.uleb128 0x13
 3076 0034 00       		.byte	0
 3077 0035 00       		.byte	0
 3078 0036 05       		.uleb128 0x5
 3079 0037 35       		.uleb128 0x35
 3080 0038 00       		.byte	0
 3081 0039 49       		.uleb128 0x49
 3082 003a 13       		.uleb128 0x13
 3083 003b 00       		.byte	0
 3084 003c 00       		.byte	0
 3085 003d 06       		.uleb128 0x6
 3086 003e 26       		.uleb128 0x26
 3087 003f 00       		.byte	0
 3088 0040 49       		.uleb128 0x49
 3089 0041 13       		.uleb128 0x13
 3090 0042 00       		.byte	0
 3091 0043 00       		.byte	0
 3092 0044 07       		.uleb128 0x7
 3093 0045 0F       		.uleb128 0xf
 3094 0046 00       		.byte	0
 3095 0047 0B       		.uleb128 0xb
 3096 0048 0B       		.uleb128 0xb
 3097 0049 00       		.byte	0
 3098 004a 00       		.byte	0
 3099 004b 08       		.uleb128 0x8
 3100 004c 01       		.uleb128 0x1
 3101 004d 01       		.byte	0x1
 3102 004e 49       		.uleb128 0x49
 3103 004f 13       		.uleb128 0x13
 3104 0050 01       		.uleb128 0x1
 3105 0051 13       		.uleb128 0x13
 3106 0052 00       		.byte	0
 3107 0053 00       		.byte	0
 3108 0054 09       		.uleb128 0x9
 3109 0055 21       		.uleb128 0x21
 3110 0056 00       		.byte	0
 3111 0057 49       		.uleb128 0x49
 3112 0058 13       		.uleb128 0x13
 3113 0059 2F       		.uleb128 0x2f
 3114 005a 0B       		.uleb128 0xb
 3115 005b 00       		.byte	0
 3116 005c 00       		.byte	0
 3117 005d 0A       		.uleb128 0xa
 3118 005e 34       		.uleb128 0x34
 3119 005f 00       		.byte	0
 3120 0060 03       		.uleb128 0x3
 3121 0061 0E       		.uleb128 0xe
 3122 0062 3A       		.uleb128 0x3a
 3123 0063 0B       		.uleb128 0xb
 3124 0064 3B       		.uleb128 0x3b
 3125 0065 05       		.uleb128 0x5
 3126 0066 49       		.uleb128 0x49
 3127 0067 13       		.uleb128 0x13
 3128 0068 3F       		.uleb128 0x3f
 3129 0069 19       		.uleb128 0x19
 3130 006a 3C       		.uleb128 0x3c
 3131 006b 19       		.uleb128 0x19
ARM GAS  /tmp/cc2fwsRs.s 			page 75


 3132 006c 00       		.byte	0
 3133 006d 00       		.byte	0
 3134 006e 0B       		.uleb128 0xb
 3135 006f 34       		.uleb128 0x34
 3136 0070 00       		.byte	0
 3137 0071 03       		.uleb128 0x3
 3138 0072 0E       		.uleb128 0xe
 3139 0073 3A       		.uleb128 0x3a
 3140 0074 0B       		.uleb128 0xb
 3141 0075 3B       		.uleb128 0x3b
 3142 0076 0B       		.uleb128 0xb
 3143 0077 49       		.uleb128 0x49
 3144 0078 13       		.uleb128 0x13
 3145 0079 3F       		.uleb128 0x3f
 3146 007a 19       		.uleb128 0x19
 3147 007b 3C       		.uleb128 0x3c
 3148 007c 19       		.uleb128 0x19
 3149 007d 00       		.byte	0
 3150 007e 00       		.byte	0
 3151 007f 0C       		.uleb128 0xc
 3152 0080 13       		.uleb128 0x13
 3153 0081 01       		.byte	0x1
 3154 0082 0B       		.uleb128 0xb
 3155 0083 0B       		.uleb128 0xb
 3156 0084 3A       		.uleb128 0x3a
 3157 0085 0B       		.uleb128 0xb
 3158 0086 3B       		.uleb128 0x3b
 3159 0087 0B       		.uleb128 0xb
 3160 0088 01       		.uleb128 0x1
 3161 0089 13       		.uleb128 0x13
 3162 008a 00       		.byte	0
 3163 008b 00       		.byte	0
 3164 008c 0D       		.uleb128 0xd
 3165 008d 0D       		.uleb128 0xd
 3166 008e 00       		.byte	0
 3167 008f 03       		.uleb128 0x3
 3168 0090 0E       		.uleb128 0xe
 3169 0091 3A       		.uleb128 0x3a
 3170 0092 0B       		.uleb128 0xb
 3171 0093 3B       		.uleb128 0x3b
 3172 0094 0B       		.uleb128 0xb
 3173 0095 49       		.uleb128 0x49
 3174 0096 13       		.uleb128 0x13
 3175 0097 38       		.uleb128 0x38
 3176 0098 0B       		.uleb128 0xb
 3177 0099 00       		.byte	0
 3178 009a 00       		.byte	0
 3179 009b 0E       		.uleb128 0xe
 3180 009c 13       		.uleb128 0x13
 3181 009d 01       		.byte	0x1
 3182 009e 0B       		.uleb128 0xb
 3183 009f 05       		.uleb128 0x5
 3184 00a0 3A       		.uleb128 0x3a
 3185 00a1 0B       		.uleb128 0xb
 3186 00a2 3B       		.uleb128 0x3b
 3187 00a3 0B       		.uleb128 0xb
 3188 00a4 01       		.uleb128 0x1
ARM GAS  /tmp/cc2fwsRs.s 			page 76


 3189 00a5 13       		.uleb128 0x13
 3190 00a6 00       		.byte	0
 3191 00a7 00       		.byte	0
 3192 00a8 0F       		.uleb128 0xf
 3193 00a9 0D       		.uleb128 0xd
 3194 00aa 00       		.byte	0
 3195 00ab 03       		.uleb128 0x3
 3196 00ac 0E       		.uleb128 0xe
 3197 00ad 3A       		.uleb128 0x3a
 3198 00ae 0B       		.uleb128 0xb
 3199 00af 3B       		.uleb128 0x3b
 3200 00b0 0B       		.uleb128 0xb
 3201 00b1 49       		.uleb128 0x49
 3202 00b2 13       		.uleb128 0x13
 3203 00b3 38       		.uleb128 0x38
 3204 00b4 05       		.uleb128 0x5
 3205 00b5 00       		.byte	0
 3206 00b6 00       		.byte	0
 3207 00b7 10       		.uleb128 0x10
 3208 00b8 16       		.uleb128 0x16
 3209 00b9 00       		.byte	0
 3210 00ba 03       		.uleb128 0x3
 3211 00bb 0E       		.uleb128 0xe
 3212 00bc 3A       		.uleb128 0x3a
 3213 00bd 0B       		.uleb128 0xb
 3214 00be 3B       		.uleb128 0x3b
 3215 00bf 05       		.uleb128 0x5
 3216 00c0 49       		.uleb128 0x49
 3217 00c1 13       		.uleb128 0x13
 3218 00c2 00       		.byte	0
 3219 00c3 00       		.byte	0
 3220 00c4 11       		.uleb128 0x11
 3221 00c5 17       		.uleb128 0x17
 3222 00c6 01       		.byte	0x1
 3223 00c7 0B       		.uleb128 0xb
 3224 00c8 0B       		.uleb128 0xb
 3225 00c9 3A       		.uleb128 0x3a
 3226 00ca 0B       		.uleb128 0xb
 3227 00cb 3B       		.uleb128 0x3b
 3228 00cc 0B       		.uleb128 0xb
 3229 00cd 01       		.uleb128 0x1
 3230 00ce 13       		.uleb128 0x13
 3231 00cf 00       		.byte	0
 3232 00d0 00       		.byte	0
 3233 00d1 12       		.uleb128 0x12
 3234 00d2 0D       		.uleb128 0xd
 3235 00d3 00       		.byte	0
 3236 00d4 03       		.uleb128 0x3
 3237 00d5 0E       		.uleb128 0xe
 3238 00d6 3A       		.uleb128 0x3a
 3239 00d7 0B       		.uleb128 0xb
 3240 00d8 3B       		.uleb128 0x3b
 3241 00d9 0B       		.uleb128 0xb
 3242 00da 49       		.uleb128 0x49
 3243 00db 13       		.uleb128 0x13
 3244 00dc 00       		.byte	0
 3245 00dd 00       		.byte	0
ARM GAS  /tmp/cc2fwsRs.s 			page 77


 3246 00de 13       		.uleb128 0x13
 3247 00df 13       		.uleb128 0x13
 3248 00e0 01       		.byte	0x1
 3249 00e1 03       		.uleb128 0x3
 3250 00e2 0E       		.uleb128 0xe
 3251 00e3 0B       		.uleb128 0xb
 3252 00e4 0B       		.uleb128 0xb
 3253 00e5 3A       		.uleb128 0x3a
 3254 00e6 0B       		.uleb128 0xb
 3255 00e7 3B       		.uleb128 0x3b
 3256 00e8 0B       		.uleb128 0xb
 3257 00e9 01       		.uleb128 0x1
 3258 00ea 13       		.uleb128 0x13
 3259 00eb 00       		.byte	0
 3260 00ec 00       		.byte	0
 3261 00ed 14       		.uleb128 0x14
 3262 00ee 0D       		.uleb128 0xd
 3263 00ef 00       		.byte	0
 3264 00f0 03       		.uleb128 0x3
 3265 00f1 08       		.uleb128 0x8
 3266 00f2 3A       		.uleb128 0x3a
 3267 00f3 0B       		.uleb128 0xb
 3268 00f4 3B       		.uleb128 0x3b
 3269 00f5 0B       		.uleb128 0xb
 3270 00f6 49       		.uleb128 0x49
 3271 00f7 13       		.uleb128 0x13
 3272 00f8 38       		.uleb128 0x38
 3273 00f9 0B       		.uleb128 0xb
 3274 00fa 00       		.byte	0
 3275 00fb 00       		.byte	0
 3276 00fc 15       		.uleb128 0x15
 3277 00fd 0F       		.uleb128 0xf
 3278 00fe 00       		.byte	0
 3279 00ff 0B       		.uleb128 0xb
 3280 0100 0B       		.uleb128 0xb
 3281 0101 49       		.uleb128 0x49
 3282 0102 13       		.uleb128 0x13
 3283 0103 00       		.byte	0
 3284 0104 00       		.byte	0
 3285 0105 16       		.uleb128 0x16
 3286 0106 13       		.uleb128 0x13
 3287 0107 01       		.byte	0x1
 3288 0108 03       		.uleb128 0x3
 3289 0109 0E       		.uleb128 0xe
 3290 010a 0B       		.uleb128 0xb
 3291 010b 05       		.uleb128 0x5
 3292 010c 3A       		.uleb128 0x3a
 3293 010d 0B       		.uleb128 0xb
 3294 010e 3B       		.uleb128 0x3b
 3295 010f 0B       		.uleb128 0xb
 3296 0110 01       		.uleb128 0x1
 3297 0111 13       		.uleb128 0x13
 3298 0112 00       		.byte	0
 3299 0113 00       		.byte	0
 3300 0114 17       		.uleb128 0x17
 3301 0115 15       		.uleb128 0x15
 3302 0116 00       		.byte	0
ARM GAS  /tmp/cc2fwsRs.s 			page 78


 3303 0117 27       		.uleb128 0x27
 3304 0118 19       		.uleb128 0x19
 3305 0119 00       		.byte	0
 3306 011a 00       		.byte	0
 3307 011b 18       		.uleb128 0x18
 3308 011c 15       		.uleb128 0x15
 3309 011d 01       		.byte	0x1
 3310 011e 27       		.uleb128 0x27
 3311 011f 19       		.uleb128 0x19
 3312 0120 49       		.uleb128 0x49
 3313 0121 13       		.uleb128 0x13
 3314 0122 01       		.uleb128 0x1
 3315 0123 13       		.uleb128 0x13
 3316 0124 00       		.byte	0
 3317 0125 00       		.byte	0
 3318 0126 19       		.uleb128 0x19
 3319 0127 05       		.uleb128 0x5
 3320 0128 00       		.byte	0
 3321 0129 49       		.uleb128 0x49
 3322 012a 13       		.uleb128 0x13
 3323 012b 00       		.byte	0
 3324 012c 00       		.byte	0
 3325 012d 1A       		.uleb128 0x1a
 3326 012e 13       		.uleb128 0x13
 3327 012f 01       		.byte	0x1
 3328 0130 03       		.uleb128 0x3
 3329 0131 0E       		.uleb128 0xe
 3330 0132 0B       		.uleb128 0xb
 3331 0133 05       		.uleb128 0x5
 3332 0134 3A       		.uleb128 0x3a
 3333 0135 0B       		.uleb128 0xb
 3334 0136 3B       		.uleb128 0x3b
 3335 0137 05       		.uleb128 0x5
 3336 0138 01       		.uleb128 0x1
 3337 0139 13       		.uleb128 0x13
 3338 013a 00       		.byte	0
 3339 013b 00       		.byte	0
 3340 013c 1B       		.uleb128 0x1b
 3341 013d 0D       		.uleb128 0xd
 3342 013e 00       		.byte	0
 3343 013f 03       		.uleb128 0x3
 3344 0140 0E       		.uleb128 0xe
 3345 0141 3A       		.uleb128 0x3a
 3346 0142 0B       		.uleb128 0xb
 3347 0143 3B       		.uleb128 0x3b
 3348 0144 05       		.uleb128 0x5
 3349 0145 49       		.uleb128 0x49
 3350 0146 13       		.uleb128 0x13
 3351 0147 38       		.uleb128 0x38
 3352 0148 0B       		.uleb128 0xb
 3353 0149 00       		.byte	0
 3354 014a 00       		.byte	0
 3355 014b 1C       		.uleb128 0x1c
 3356 014c 0D       		.uleb128 0xd
 3357 014d 00       		.byte	0
 3358 014e 03       		.uleb128 0x3
 3359 014f 0E       		.uleb128 0xe
ARM GAS  /tmp/cc2fwsRs.s 			page 79


 3360 0150 3A       		.uleb128 0x3a
 3361 0151 0B       		.uleb128 0xb
 3362 0152 3B       		.uleb128 0x3b
 3363 0153 05       		.uleb128 0x5
 3364 0154 49       		.uleb128 0x49
 3365 0155 13       		.uleb128 0x13
 3366 0156 38       		.uleb128 0x38
 3367 0157 05       		.uleb128 0x5
 3368 0158 00       		.byte	0
 3369 0159 00       		.byte	0
 3370 015a 1D       		.uleb128 0x1d
 3371 015b 13       		.uleb128 0x13
 3372 015c 01       		.byte	0x1
 3373 015d 03       		.uleb128 0x3
 3374 015e 0E       		.uleb128 0xe
 3375 015f 0B       		.uleb128 0xb
 3376 0160 0B       		.uleb128 0xb
 3377 0161 3A       		.uleb128 0x3a
 3378 0162 0B       		.uleb128 0xb
 3379 0163 3B       		.uleb128 0x3b
 3380 0164 05       		.uleb128 0x5
 3381 0165 01       		.uleb128 0x1
 3382 0166 13       		.uleb128 0x13
 3383 0167 00       		.byte	0
 3384 0168 00       		.byte	0
 3385 0169 1E       		.uleb128 0x1e
 3386 016a 13       		.uleb128 0x13
 3387 016b 01       		.byte	0x1
 3388 016c 0B       		.uleb128 0xb
 3389 016d 0B       		.uleb128 0xb
 3390 016e 3A       		.uleb128 0x3a
 3391 016f 0B       		.uleb128 0xb
 3392 0170 3B       		.uleb128 0x3b
 3393 0171 05       		.uleb128 0x5
 3394 0172 01       		.uleb128 0x1
 3395 0173 13       		.uleb128 0x13
 3396 0174 00       		.byte	0
 3397 0175 00       		.byte	0
 3398 0176 1F       		.uleb128 0x1f
 3399 0177 17       		.uleb128 0x17
 3400 0178 01       		.byte	0x1
 3401 0179 0B       		.uleb128 0xb
 3402 017a 0B       		.uleb128 0xb
 3403 017b 3A       		.uleb128 0x3a
 3404 017c 0B       		.uleb128 0xb
 3405 017d 3B       		.uleb128 0x3b
 3406 017e 05       		.uleb128 0x5
 3407 017f 01       		.uleb128 0x1
 3408 0180 13       		.uleb128 0x13
 3409 0181 00       		.byte	0
 3410 0182 00       		.byte	0
 3411 0183 20       		.uleb128 0x20
 3412 0184 0D       		.uleb128 0xd
 3413 0185 00       		.byte	0
 3414 0186 03       		.uleb128 0x3
 3415 0187 0E       		.uleb128 0xe
 3416 0188 3A       		.uleb128 0x3a
ARM GAS  /tmp/cc2fwsRs.s 			page 80


 3417 0189 0B       		.uleb128 0xb
 3418 018a 3B       		.uleb128 0x3b
 3419 018b 05       		.uleb128 0x5
 3420 018c 49       		.uleb128 0x49
 3421 018d 13       		.uleb128 0x13
 3422 018e 00       		.byte	0
 3423 018f 00       		.byte	0
 3424 0190 21       		.uleb128 0x21
 3425 0191 15       		.uleb128 0x15
 3426 0192 01       		.byte	0x1
 3427 0193 27       		.uleb128 0x27
 3428 0194 19       		.uleb128 0x19
 3429 0195 01       		.uleb128 0x1
 3430 0196 13       		.uleb128 0x13
 3431 0197 00       		.byte	0
 3432 0198 00       		.byte	0
 3433 0199 22       		.uleb128 0x22
 3434 019a 34       		.uleb128 0x34
 3435 019b 00       		.byte	0
 3436 019c 03       		.uleb128 0x3
 3437 019d 0E       		.uleb128 0xe
 3438 019e 3A       		.uleb128 0x3a
 3439 019f 0B       		.uleb128 0xb
 3440 01a0 3B       		.uleb128 0x3b
 3441 01a1 0B       		.uleb128 0xb
 3442 01a2 49       		.uleb128 0x49
 3443 01a3 13       		.uleb128 0x13
 3444 01a4 02       		.uleb128 0x2
 3445 01a5 18       		.uleb128 0x18
 3446 01a6 00       		.byte	0
 3447 01a7 00       		.byte	0
 3448 01a8 23       		.uleb128 0x23
 3449 01a9 04       		.uleb128 0x4
 3450 01aa 01       		.byte	0x1
 3451 01ab 0B       		.uleb128 0xb
 3452 01ac 0B       		.uleb128 0xb
 3453 01ad 49       		.uleb128 0x49
 3454 01ae 13       		.uleb128 0x13
 3455 01af 3A       		.uleb128 0x3a
 3456 01b0 0B       		.uleb128 0xb
 3457 01b1 3B       		.uleb128 0x3b
 3458 01b2 0B       		.uleb128 0xb
 3459 01b3 01       		.uleb128 0x1
 3460 01b4 13       		.uleb128 0x13
 3461 01b5 00       		.byte	0
 3462 01b6 00       		.byte	0
 3463 01b7 24       		.uleb128 0x24
 3464 01b8 28       		.uleb128 0x28
 3465 01b9 00       		.byte	0
 3466 01ba 03       		.uleb128 0x3
 3467 01bb 0E       		.uleb128 0xe
 3468 01bc 1C       		.uleb128 0x1c
 3469 01bd 0B       		.uleb128 0xb
 3470 01be 00       		.byte	0
 3471 01bf 00       		.byte	0
 3472 01c0 25       		.uleb128 0x25
 3473 01c1 2E       		.uleb128 0x2e
ARM GAS  /tmp/cc2fwsRs.s 			page 81


 3474 01c2 01       		.byte	0x1
 3475 01c3 3F       		.uleb128 0x3f
 3476 01c4 19       		.uleb128 0x19
 3477 01c5 03       		.uleb128 0x3
 3478 01c6 0E       		.uleb128 0xe
 3479 01c7 3A       		.uleb128 0x3a
 3480 01c8 0B       		.uleb128 0xb
 3481 01c9 3B       		.uleb128 0x3b
 3482 01ca 0B       		.uleb128 0xb
 3483 01cb 27       		.uleb128 0x27
 3484 01cc 19       		.uleb128 0x19
 3485 01cd 49       		.uleb128 0x49
 3486 01ce 13       		.uleb128 0x13
 3487 01cf 11       		.uleb128 0x11
 3488 01d0 01       		.uleb128 0x1
 3489 01d1 12       		.uleb128 0x12
 3490 01d2 06       		.uleb128 0x6
 3491 01d3 40       		.uleb128 0x40
 3492 01d4 18       		.uleb128 0x18
 3493 01d5 9742     		.uleb128 0x2117
 3494 01d7 19       		.uleb128 0x19
 3495 01d8 01       		.uleb128 0x1
 3496 01d9 13       		.uleb128 0x13
 3497 01da 00       		.byte	0
 3498 01db 00       		.byte	0
 3499 01dc 26       		.uleb128 0x26
 3500 01dd 05       		.uleb128 0x5
 3501 01de 00       		.byte	0
 3502 01df 03       		.uleb128 0x3
 3503 01e0 0E       		.uleb128 0xe
 3504 01e1 3A       		.uleb128 0x3a
 3505 01e2 0B       		.uleb128 0xb
 3506 01e3 3B       		.uleb128 0x3b
 3507 01e4 0B       		.uleb128 0xb
 3508 01e5 49       		.uleb128 0x49
 3509 01e6 13       		.uleb128 0x13
 3510 01e7 02       		.uleb128 0x2
 3511 01e8 17       		.uleb128 0x17
 3512 01e9 00       		.byte	0
 3513 01ea 00       		.byte	0
 3514 01eb 27       		.uleb128 0x27
 3515 01ec 1D       		.uleb128 0x1d
 3516 01ed 01       		.byte	0x1
 3517 01ee 31       		.uleb128 0x31
 3518 01ef 13       		.uleb128 0x13
 3519 01f0 52       		.uleb128 0x52
 3520 01f1 01       		.uleb128 0x1
 3521 01f2 55       		.uleb128 0x55
 3522 01f3 17       		.uleb128 0x17
 3523 01f4 58       		.uleb128 0x58
 3524 01f5 0B       		.uleb128 0xb
 3525 01f6 59       		.uleb128 0x59
 3526 01f7 0B       		.uleb128 0xb
 3527 01f8 01       		.uleb128 0x1
 3528 01f9 13       		.uleb128 0x13
 3529 01fa 00       		.byte	0
 3530 01fb 00       		.byte	0
ARM GAS  /tmp/cc2fwsRs.s 			page 82


 3531 01fc 28       		.uleb128 0x28
 3532 01fd 05       		.uleb128 0x5
 3533 01fe 00       		.byte	0
 3534 01ff 31       		.uleb128 0x31
 3535 0200 13       		.uleb128 0x13
 3536 0201 00       		.byte	0
 3537 0202 00       		.byte	0
 3538 0203 29       		.uleb128 0x29
 3539 0204 1D       		.uleb128 0x1d
 3540 0205 01       		.byte	0x1
 3541 0206 31       		.uleb128 0x31
 3542 0207 13       		.uleb128 0x13
 3543 0208 52       		.uleb128 0x52
 3544 0209 01       		.uleb128 0x1
 3545 020a 55       		.uleb128 0x55
 3546 020b 17       		.uleb128 0x17
 3547 020c 58       		.uleb128 0x58
 3548 020d 0B       		.uleb128 0xb
 3549 020e 59       		.uleb128 0x59
 3550 020f 0B       		.uleb128 0xb
 3551 0210 00       		.byte	0
 3552 0211 00       		.byte	0
 3553 0212 2A       		.uleb128 0x2a
 3554 0213 05       		.uleb128 0x5
 3555 0214 00       		.byte	0
 3556 0215 31       		.uleb128 0x31
 3557 0216 13       		.uleb128 0x13
 3558 0217 1C       		.uleb128 0x1c
 3559 0218 06       		.uleb128 0x6
 3560 0219 00       		.byte	0
 3561 021a 00       		.byte	0
 3562 021b 2B       		.uleb128 0x2b
 3563 021c 05       		.uleb128 0x5
 3564 021d 00       		.byte	0
 3565 021e 31       		.uleb128 0x31
 3566 021f 13       		.uleb128 0x13
 3567 0220 02       		.uleb128 0x2
 3568 0221 17       		.uleb128 0x17
 3569 0222 00       		.byte	0
 3570 0223 00       		.byte	0
 3571 0224 2C       		.uleb128 0x2c
 3572 0225 0B       		.uleb128 0xb
 3573 0226 01       		.byte	0x1
 3574 0227 55       		.uleb128 0x55
 3575 0228 17       		.uleb128 0x17
 3576 0229 00       		.byte	0
 3577 022a 00       		.byte	0
 3578 022b 2D       		.uleb128 0x2d
 3579 022c 34       		.uleb128 0x34
 3580 022d 00       		.byte	0
 3581 022e 31       		.uleb128 0x31
 3582 022f 13       		.uleb128 0x13
 3583 0230 02       		.uleb128 0x2
 3584 0231 18       		.uleb128 0x18
 3585 0232 00       		.byte	0
 3586 0233 00       		.byte	0
 3587 0234 2E       		.uleb128 0x2e
ARM GAS  /tmp/cc2fwsRs.s 			page 83


 3588 0235 1D       		.uleb128 0x1d
 3589 0236 01       		.byte	0x1
 3590 0237 31       		.uleb128 0x31
 3591 0238 13       		.uleb128 0x13
 3592 0239 11       		.uleb128 0x11
 3593 023a 01       		.uleb128 0x1
 3594 023b 12       		.uleb128 0x12
 3595 023c 06       		.uleb128 0x6
 3596 023d 58       		.uleb128 0x58
 3597 023e 0B       		.uleb128 0xb
 3598 023f 59       		.uleb128 0x59
 3599 0240 0B       		.uleb128 0xb
 3600 0241 00       		.byte	0
 3601 0242 00       		.byte	0
 3602 0243 2F       		.uleb128 0x2f
 3603 0244 05       		.uleb128 0x5
 3604 0245 00       		.byte	0
 3605 0246 03       		.uleb128 0x3
 3606 0247 0E       		.uleb128 0xe
 3607 0248 3A       		.uleb128 0x3a
 3608 0249 0B       		.uleb128 0xb
 3609 024a 3B       		.uleb128 0x3b
 3610 024b 0B       		.uleb128 0xb
 3611 024c 49       		.uleb128 0x49
 3612 024d 13       		.uleb128 0x13
 3613 024e 02       		.uleb128 0x2
 3614 024f 18       		.uleb128 0x18
 3615 0250 00       		.byte	0
 3616 0251 00       		.byte	0
 3617 0252 30       		.uleb128 0x30
 3618 0253 2E       		.uleb128 0x2e
 3619 0254 01       		.byte	0x1
 3620 0255 03       		.uleb128 0x3
 3621 0256 0E       		.uleb128 0xe
 3622 0257 3A       		.uleb128 0x3a
 3623 0258 0B       		.uleb128 0xb
 3624 0259 3B       		.uleb128 0x3b
 3625 025a 0B       		.uleb128 0xb
 3626 025b 27       		.uleb128 0x27
 3627 025c 19       		.uleb128 0x19
 3628 025d 49       		.uleb128 0x49
 3629 025e 13       		.uleb128 0x13
 3630 025f 20       		.uleb128 0x20
 3631 0260 0B       		.uleb128 0xb
 3632 0261 01       		.uleb128 0x1
 3633 0262 13       		.uleb128 0x13
 3634 0263 00       		.byte	0
 3635 0264 00       		.byte	0
 3636 0265 31       		.uleb128 0x31
 3637 0266 05       		.uleb128 0x5
 3638 0267 00       		.byte	0
 3639 0268 03       		.uleb128 0x3
 3640 0269 0E       		.uleb128 0xe
 3641 026a 3A       		.uleb128 0x3a
 3642 026b 0B       		.uleb128 0xb
 3643 026c 3B       		.uleb128 0x3b
 3644 026d 0B       		.uleb128 0xb
ARM GAS  /tmp/cc2fwsRs.s 			page 84


 3645 026e 49       		.uleb128 0x49
 3646 026f 13       		.uleb128 0x13
 3647 0270 00       		.byte	0
 3648 0271 00       		.byte	0
 3649 0272 32       		.uleb128 0x32
 3650 0273 34       		.uleb128 0x34
 3651 0274 00       		.byte	0
 3652 0275 03       		.uleb128 0x3
 3653 0276 0E       		.uleb128 0xe
 3654 0277 3A       		.uleb128 0x3a
 3655 0278 0B       		.uleb128 0xb
 3656 0279 3B       		.uleb128 0x3b
 3657 027a 0B       		.uleb128 0xb
 3658 027b 49       		.uleb128 0x49
 3659 027c 13       		.uleb128 0x13
 3660 027d 00       		.byte	0
 3661 027e 00       		.byte	0
 3662 027f 33       		.uleb128 0x33
 3663 0280 2E       		.uleb128 0x2e
 3664 0281 01       		.byte	0x1
 3665 0282 03       		.uleb128 0x3
 3666 0283 0E       		.uleb128 0xe
 3667 0284 3A       		.uleb128 0x3a
 3668 0285 0B       		.uleb128 0xb
 3669 0286 3B       		.uleb128 0x3b
 3670 0287 05       		.uleb128 0x5
 3671 0288 27       		.uleb128 0x27
 3672 0289 19       		.uleb128 0x19
 3673 028a 49       		.uleb128 0x49
 3674 028b 13       		.uleb128 0x13
 3675 028c 20       		.uleb128 0x20
 3676 028d 0B       		.uleb128 0xb
 3677 028e 01       		.uleb128 0x1
 3678 028f 13       		.uleb128 0x13
 3679 0290 00       		.byte	0
 3680 0291 00       		.byte	0
 3681 0292 34       		.uleb128 0x34
 3682 0293 05       		.uleb128 0x5
 3683 0294 00       		.byte	0
 3684 0295 03       		.uleb128 0x3
 3685 0296 0E       		.uleb128 0xe
 3686 0297 3A       		.uleb128 0x3a
 3687 0298 0B       		.uleb128 0xb
 3688 0299 3B       		.uleb128 0x3b
 3689 029a 05       		.uleb128 0x5
 3690 029b 49       		.uleb128 0x49
 3691 029c 13       		.uleb128 0x13
 3692 029d 00       		.byte	0
 3693 029e 00       		.byte	0
 3694 029f 35       		.uleb128 0x35
 3695 02a0 2E       		.uleb128 0x2e
 3696 02a1 01       		.byte	0x1
 3697 02a2 03       		.uleb128 0x3
 3698 02a3 0E       		.uleb128 0xe
 3699 02a4 3A       		.uleb128 0x3a
 3700 02a5 0B       		.uleb128 0xb
 3701 02a6 3B       		.uleb128 0x3b
ARM GAS  /tmp/cc2fwsRs.s 			page 85


 3702 02a7 05       		.uleb128 0x5
 3703 02a8 27       		.uleb128 0x27
 3704 02a9 19       		.uleb128 0x19
 3705 02aa 20       		.uleb128 0x20
 3706 02ab 0B       		.uleb128 0xb
 3707 02ac 01       		.uleb128 0x1
 3708 02ad 13       		.uleb128 0x13
 3709 02ae 00       		.byte	0
 3710 02af 00       		.byte	0
 3711 02b0 36       		.uleb128 0x36
 3712 02b1 2E       		.uleb128 0x2e
 3713 02b2 01       		.byte	0x1
 3714 02b3 03       		.uleb128 0x3
 3715 02b4 0E       		.uleb128 0xe
 3716 02b5 3A       		.uleb128 0x3a
 3717 02b6 0B       		.uleb128 0xb
 3718 02b7 3B       		.uleb128 0x3b
 3719 02b8 05       		.uleb128 0x5
 3720 02b9 27       		.uleb128 0x27
 3721 02ba 19       		.uleb128 0x19
 3722 02bb 49       		.uleb128 0x49
 3723 02bc 13       		.uleb128 0x13
 3724 02bd 20       		.uleb128 0x20
 3725 02be 0B       		.uleb128 0xb
 3726 02bf 00       		.byte	0
 3727 02c0 00       		.byte	0
 3728 02c1 00       		.byte	0
 3729              		.section	.debug_loc,"",%progbits
 3730              	.Ldebug_loc0:
 3731              	.LLST5:
 3732 0000 00000000 		.4byte	.LVL9
 3733 0004 3E000000 		.4byte	.LVL16
 3734 0008 0100     		.2byte	0x1
 3735 000a 50       		.byte	0x50
 3736 000b 3E000000 		.4byte	.LVL16
 3737 000f 44000000 		.4byte	.LVL17
 3738 0013 0400     		.2byte	0x4
 3739 0015 F3       		.byte	0xf3
 3740 0016 01       		.uleb128 0x1
 3741 0017 50       		.byte	0x50
 3742 0018 9F       		.byte	0x9f
 3743 0019 44000000 		.4byte	.LVL17
 3744 001d 46000000 		.4byte	.LVL18
 3745 0021 0100     		.2byte	0x1
 3746 0023 50       		.byte	0x50
 3747 0024 46000000 		.4byte	.LVL18
 3748 0028 54000000 		.4byte	.LFE220
 3749 002c 0400     		.2byte	0x4
 3750 002e F3       		.byte	0xf3
 3751 002f 01       		.uleb128 0x1
 3752 0030 50       		.byte	0x50
 3753 0031 9F       		.byte	0x9f
 3754 0032 00000000 		.4byte	0
 3755 0036 00000000 		.4byte	0
 3756              	.LLST6:
 3757 003a 00000000 		.4byte	.LVL9
 3758 003e 10000000 		.4byte	.LVL11
ARM GAS  /tmp/cc2fwsRs.s 			page 86


 3759 0042 0100     		.2byte	0x1
 3760 0044 51       		.byte	0x51
 3761 0045 10000000 		.4byte	.LVL11
 3762 0049 54000000 		.4byte	.LFE220
 3763 004d 0400     		.2byte	0x4
 3764 004f F3       		.byte	0xf3
 3765 0050 01       		.uleb128 0x1
 3766 0051 51       		.byte	0x51
 3767 0052 9F       		.byte	0x9f
 3768 0053 00000000 		.4byte	0
 3769 0057 00000000 		.4byte	0
 3770              	.LLST7:
 3771 005b 00000000 		.4byte	.LVL9
 3772 005f 0C000000 		.4byte	.LVL10
 3773 0063 0100     		.2byte	0x1
 3774 0065 52       		.byte	0x52
 3775 0066 0C000000 		.4byte	.LVL10
 3776 006a 54000000 		.4byte	.LFE220
 3777 006e 0400     		.2byte	0x4
 3778 0070 F3       		.byte	0xf3
 3779 0071 01       		.uleb128 0x1
 3780 0072 52       		.byte	0x52
 3781 0073 9F       		.byte	0x9f
 3782 0074 00000000 		.4byte	0
 3783 0078 00000000 		.4byte	0
 3784              	.LLST8:
 3785 007c 00000000 		.4byte	.LVL9
 3786 0080 18000000 		.4byte	.LVL12
 3787 0084 0100     		.2byte	0x1
 3788 0086 53       		.byte	0x53
 3789 0087 18000000 		.4byte	.LVL12
 3790 008b 54000000 		.4byte	.LFE220
 3791 008f 0400     		.2byte	0x4
 3792 0091 F3       		.byte	0xf3
 3793 0092 01       		.uleb128 0x1
 3794 0093 53       		.byte	0x53
 3795 0094 9F       		.byte	0x9f
 3796 0095 00000000 		.4byte	0
 3797 0099 00000000 		.4byte	0
 3798              	.LLST9:
 3799 009d 26000000 		.4byte	.LVL13
 3800 00a1 3E000000 		.4byte	.LVL16
 3801 00a5 0100     		.2byte	0x1
 3802 00a7 50       		.byte	0x50
 3803 00a8 3E000000 		.4byte	.LVL16
 3804 00ac 44000000 		.4byte	.LVL17
 3805 00b0 0400     		.2byte	0x4
 3806 00b2 F3       		.byte	0xf3
 3807 00b3 01       		.uleb128 0x1
 3808 00b4 50       		.byte	0x50
 3809 00b5 9F       		.byte	0x9f
 3810 00b6 44000000 		.4byte	.LVL17
 3811 00ba 46000000 		.4byte	.LVL18
 3812 00be 0100     		.2byte	0x1
 3813 00c0 50       		.byte	0x50
 3814 00c1 46000000 		.4byte	.LVL18
 3815 00c5 54000000 		.4byte	.LFE220
ARM GAS  /tmp/cc2fwsRs.s 			page 87


 3816 00c9 0400     		.2byte	0x4
 3817 00cb F3       		.byte	0xf3
 3818 00cc 01       		.uleb128 0x1
 3819 00cd 50       		.byte	0x50
 3820 00ce 9F       		.byte	0x9f
 3821 00cf 00000000 		.4byte	0
 3822 00d3 00000000 		.4byte	0
 3823              	.LLST10:
 3824 00d7 36000000 		.4byte	.LVL14
 3825 00db 38000000 		.4byte	.LVL15
 3826 00df 0100     		.2byte	0x1
 3827 00e1 50       		.byte	0x50
 3828 00e2 00000000 		.4byte	0
 3829 00e6 00000000 		.4byte	0
 3830              	.LLST0:
 3831 00ea 00000000 		.4byte	.LVL0
 3832 00ee 42000000 		.4byte	.LVL6
 3833 00f2 0100     		.2byte	0x1
 3834 00f4 50       		.byte	0x50
 3835 00f5 42000000 		.4byte	.LVL6
 3836 00f9 4C000000 		.4byte	.LVL7
 3837 00fd 0400     		.2byte	0x4
 3838 00ff F3       		.byte	0xf3
 3839 0100 01       		.uleb128 0x1
 3840 0101 50       		.byte	0x50
 3841 0102 9F       		.byte	0x9f
 3842 0103 4C000000 		.4byte	.LVL7
 3843 0107 4E000000 		.4byte	.LVL8
 3844 010b 0100     		.2byte	0x1
 3845 010d 50       		.byte	0x50
 3846 010e 4E000000 		.4byte	.LVL8
 3847 0112 5C000000 		.4byte	.LFE219
 3848 0116 0400     		.2byte	0x4
 3849 0118 F3       		.byte	0xf3
 3850 0119 01       		.uleb128 0x1
 3851 011a 50       		.byte	0x50
 3852 011b 9F       		.byte	0x9f
 3853 011c 00000000 		.4byte	0
 3854 0120 00000000 		.4byte	0
 3855              	.LLST1:
 3856 0124 00000000 		.4byte	.LVL0
 3857 0128 10000000 		.4byte	.LVL2
 3858 012c 0100     		.2byte	0x1
 3859 012e 51       		.byte	0x51
 3860 012f 10000000 		.4byte	.LVL2
 3861 0133 5C000000 		.4byte	.LFE219
 3862 0137 0400     		.2byte	0x4
 3863 0139 F3       		.byte	0xf3
 3864 013a 01       		.uleb128 0x1
 3865 013b 51       		.byte	0x51
 3866 013c 9F       		.byte	0x9f
 3867 013d 00000000 		.4byte	0
 3868 0141 00000000 		.4byte	0
 3869              	.LLST2:
 3870 0145 00000000 		.4byte	.LVL0
 3871 0149 0C000000 		.4byte	.LVL1
 3872 014d 0100     		.2byte	0x1
ARM GAS  /tmp/cc2fwsRs.s 			page 88


 3873 014f 52       		.byte	0x52
 3874 0150 0C000000 		.4byte	.LVL1
 3875 0154 5C000000 		.4byte	.LFE219
 3876 0158 0400     		.2byte	0x4
 3877 015a F3       		.byte	0xf3
 3878 015b 01       		.uleb128 0x1
 3879 015c 52       		.byte	0x52
 3880 015d 9F       		.byte	0x9f
 3881 015e 00000000 		.4byte	0
 3882 0162 00000000 		.4byte	0
 3883              	.LLST3:
 3884 0166 22000000 		.4byte	.LVL3
 3885 016a 42000000 		.4byte	.LVL6
 3886 016e 0100     		.2byte	0x1
 3887 0170 50       		.byte	0x50
 3888 0171 42000000 		.4byte	.LVL6
 3889 0175 4C000000 		.4byte	.LVL7
 3890 0179 0400     		.2byte	0x4
 3891 017b F3       		.byte	0xf3
 3892 017c 01       		.uleb128 0x1
 3893 017d 50       		.byte	0x50
 3894 017e 9F       		.byte	0x9f
 3895 017f 4C000000 		.4byte	.LVL7
 3896 0183 4E000000 		.4byte	.LVL8
 3897 0187 0100     		.2byte	0x1
 3898 0189 50       		.byte	0x50
 3899 018a 4E000000 		.4byte	.LVL8
 3900 018e 5C000000 		.4byte	.LFE219
 3901 0192 0400     		.2byte	0x4
 3902 0194 F3       		.byte	0xf3
 3903 0195 01       		.uleb128 0x1
 3904 0196 50       		.byte	0x50
 3905 0197 9F       		.byte	0x9f
 3906 0198 00000000 		.4byte	0
 3907 019c 00000000 		.4byte	0
 3908              	.LLST4:
 3909 01a0 32000000 		.4byte	.LVL4
 3910 01a4 34000000 		.4byte	.LVL5
 3911 01a8 0100     		.2byte	0x1
 3912 01aa 50       		.byte	0x50
 3913 01ab 00000000 		.4byte	0
 3914 01af 00000000 		.4byte	0
 3915              		.section	.debug_aranges,"",%progbits
 3916 0000 24000000 		.4byte	0x24
 3917 0004 0200     		.2byte	0x2
 3918 0006 00000000 		.4byte	.Ldebug_info0
 3919 000a 04       		.byte	0x4
 3920 000b 00       		.byte	0
 3921 000c 0000     		.2byte	0
 3922 000e 0000     		.2byte	0
 3923 0010 00000000 		.4byte	.LFB219
 3924 0014 5C000000 		.4byte	.LFE219-.LFB219
 3925 0018 00000000 		.4byte	.LFB220
 3926 001c 54000000 		.4byte	.LFE220-.LFB220
 3927 0020 00000000 		.4byte	0
 3928 0024 00000000 		.4byte	0
 3929              		.section	.debug_ranges,"",%progbits
ARM GAS  /tmp/cc2fwsRs.s 			page 89


 3930              	.Ldebug_ranges0:
 3931 0000 04000000 		.4byte	.LBB18
 3932 0004 10000000 		.4byte	.LBE18
 3933 0008 12000000 		.4byte	.LBB28
 3934 000c 16000000 		.4byte	.LBE28
 3935 0010 18000000 		.4byte	.LBB30
 3936 0014 22000000 		.4byte	.LBE30
 3937 0018 00000000 		.4byte	0
 3938 001c 00000000 		.4byte	0
 3939 0020 10000000 		.4byte	.LBB22
 3940 0024 12000000 		.4byte	.LBE22
 3941 0028 16000000 		.4byte	.LBB29
 3942 002c 18000000 		.4byte	.LBE29
 3943 0030 22000000 		.4byte	.LBB31
 3944 0034 38000000 		.4byte	.LBE31
 3945 0038 00000000 		.4byte	0
 3946 003c 00000000 		.4byte	0
 3947 0040 04000000 		.4byte	.LBB34
 3948 0044 10000000 		.4byte	.LBE34
 3949 0048 12000000 		.4byte	.LBB44
 3950 004c 1C000000 		.4byte	.LBE44
 3951 0050 1E000000 		.4byte	.LBB46
 3952 0054 26000000 		.4byte	.LBE46
 3953 0058 00000000 		.4byte	0
 3954 005c 00000000 		.4byte	0
 3955 0060 10000000 		.4byte	.LBB38
 3956 0064 12000000 		.4byte	.LBE38
 3957 0068 1C000000 		.4byte	.LBB45
 3958 006c 1E000000 		.4byte	.LBE45
 3959 0070 26000000 		.4byte	.LBB47
 3960 0074 3C000000 		.4byte	.LBE47
 3961 0078 00000000 		.4byte	0
 3962 007c 00000000 		.4byte	0
 3963 0080 00000000 		.4byte	.LFB219
 3964 0084 5C000000 		.4byte	.LFE219
 3965 0088 00000000 		.4byte	.LFB220
 3966 008c 54000000 		.4byte	.LFE220
 3967 0090 00000000 		.4byte	0
 3968 0094 00000000 		.4byte	0
 3969              		.section	.debug_line,"",%progbits
 3970              	.Ldebug_line0:
 3971 0000 12030000 		.section	.debug_str,"MS",%progbits,1
 3971      02006602 
 3971      00000201 
 3971      FB0E0D00 
 3971      01010101 
 3972              	.LASF78:
 3973 0000 474D4143 		.ascii	"GMAC_TUR\000"
 3973      5F545552 
 3973      00
 3974              	.LASF318:
 3975 0009 474D4143 		.ascii	"GMAC_TIMEOUT\000"
 3975      5F54494D 
 3975      454F5554 
 3975      00
 3976              	.LASF210:
 3977 0016 5F666C6F 		.ascii	"_flock_t\000"
ARM GAS  /tmp/cc2fwsRs.s 			page 90


 3977      636B5F74 
 3977      00
 3978              	.LASF326:
 3979 001f 75635F70 		.ascii	"uc_phy_address\000"
 3979      68795F61 
 3979      64647265 
 3979      737300
 3980              	.LASF154:
 3981 002e 474D4143 		.ascii	"GMAC_ST2CW01\000"
 3981      5F535432 
 3981      43573031 
 3981      00
 3982              	.LASF156:
 3983 003b 474D4143 		.ascii	"GMAC_ST2CW02\000"
 3983      5F535432 
 3983      43573032 
 3983      00
 3984              	.LASF158:
 3985 0048 474D4143 		.ascii	"GMAC_ST2CW03\000"
 3985      5F535432 
 3985      43573033 
 3985      00
 3986              	.LASF65:
 3987 0055 474D4143 		.ascii	"GMAC_OTLO\000"
 3987      5F4F544C 
 3987      4F00
 3988              	.LASF162:
 3989 005f 474D4143 		.ascii	"GMAC_ST2CW05\000"
 3989      5F535432 
 3989      43573035 
 3989      00
 3990              	.LASF164:
 3991 006c 474D4143 		.ascii	"GMAC_ST2CW06\000"
 3991      5F535432 
 3991      43573036 
 3991      00
 3992              	.LASF166:
 3993 0079 474D4143 		.ascii	"GMAC_ST2CW07\000"
 3993      5F535432 
 3993      43573037 
 3993      00
 3994              	.LASF168:
 3995 0086 474D4143 		.ascii	"GMAC_ST2CW08\000"
 3995      5F535432 
 3995      43573038 
 3995      00
 3996              	.LASF170:
 3997 0093 474D4143 		.ascii	"GMAC_ST2CW09\000"
 3997      5F535432 
 3997      43573039 
 3997      00
 3998              	.LASF19:
 3999 00a0 53797374 		.ascii	"SystemCoreClock\000"
 3999      656D436F 
 3999      7265436C 
 3999      6F636B00 
 4000              	.LASF117:
ARM GAS  /tmp/cc2fwsRs.s 			page 91


 4001 00b0 474D4143 		.ascii	"GMAC_TI\000"
 4001      5F544900 
 4002              	.LASF125:
 4003 00b8 474D4143 		.ascii	"GMAC_PEFRN\000"
 4003      5F504546 
 4003      524E00
 4004              	.LASF115:
 4005 00c3 474D4143 		.ascii	"GMAC_TN\000"
 4005      5F544E00 
 4006              	.LASF43:
 4007 00cb 474D4143 		.ascii	"GMAC_HRB\000"
 4007      5F485242 
 4007      00
 4008              	.LASF81:
 4009 00d4 474D4143 		.ascii	"GMAC_EC\000"
 4009      5F454300 
 4010              	.LASF277:
 4011 00dc 63686172 		.ascii	"char\000"
 4011      00
 4012              	.LASF99:
 4013 00e1 474D4143 		.ascii	"GMAC_OFR\000"
 4013      5F4F4652 
 4013      00
 4014              	.LASF227:
 4015 00ea 5F6F6E5F 		.ascii	"_on_exit_args\000"
 4015      65786974 
 4015      5F617267 
 4015      7300
 4016              	.LASF44:
 4017 00f8 474D4143 		.ascii	"GMAC_HRT\000"
 4017      5F485254 
 4017      00
 4018              	.LASF93:
 4019 0101 474D4143 		.ascii	"GMAC_TBFR255\000"
 4019      5F544246 
 4019      52323535 
 4019      00
 4020              	.LASF334:
 4021 010e 676D6163 		.ascii	"gmac_get_phy_data\000"
 4021      5F676574 
 4021      5F706879 
 4021      5F646174 
 4021      6100
 4022              	.LASF292:
 4023 0120 5F723438 		.ascii	"_r48\000"
 4023      00
 4024              	.LASF103:
 4025 0125 474D4143 		.ascii	"GMAC_RSE\000"
 4025      5F525345 
 4025      00
 4026              	.LASF61:
 4027 012e 474D4143 		.ascii	"GMAC_EFRSH\000"
 4027      5F454652 
 4027      534800
 4028              	.LASF120:
 4029 0139 474D4143 		.ascii	"GMAC_EFRSL\000"
 4029      5F454652 
ARM GAS  /tmp/cc2fwsRs.s 			page 92


 4029      534C00
 4030              	.LASF30:
 4031 0144 474D4143 		.ascii	"GMAC_TBQB\000"
 4031      5F544251 
 4031      4200
 4032              	.LASF153:
 4033 014e 474D4143 		.ascii	"GMAC_ST2CW10\000"
 4033      5F535432 
 4033      43573130 
 4033      00
 4034              	.LASF31:
 4035 015b 474D4143 		.ascii	"GMAC_RSR\000"
 4035      5F525352 
 4035      00
 4036              	.LASF157:
 4037 0164 474D4143 		.ascii	"GMAC_ST2CW12\000"
 4037      5F535432 
 4037      43573132 
 4037      00
 4038              	.LASF159:
 4039 0171 474D4143 		.ascii	"GMAC_ST2CW13\000"
 4039      5F535432 
 4039      43573133 
 4039      00
 4040              	.LASF161:
 4041 017e 474D4143 		.ascii	"GMAC_ST2CW14\000"
 4041      5F535432 
 4041      43573134 
 4041      00
 4042              	.LASF163:
 4043 018b 474D4143 		.ascii	"GMAC_ST2CW15\000"
 4043      5F535432 
 4043      43573135 
 4043      00
 4044              	.LASF165:
 4045 0198 474D4143 		.ascii	"GMAC_ST2CW16\000"
 4045      5F535432 
 4045      43573136 
 4045      00
 4046              	.LASF167:
 4047 01a5 474D4143 		.ascii	"GMAC_ST2CW17\000"
 4047      5F535432 
 4047      43573137 
 4047      00
 4048              	.LASF169:
 4049 01b2 474D4143 		.ascii	"GMAC_ST2CW18\000"
 4049      5F535432 
 4049      43573138 
 4049      00
 4050              	.LASF121:
 4051 01bf 474D4143 		.ascii	"GMAC_EFRN\000"
 4051      5F454652 
 4051      4E00
 4052              	.LASF241:
 4053 01c9 5F6C6266 		.ascii	"_lbfsize\000"
 4053      73697A65 
 4053      00
ARM GAS  /tmp/cc2fwsRs.s 			page 93


 4054              	.LASF239:
 4055 01d2 5F666C61 		.ascii	"_flags\000"
 4055      677300
 4056              	.LASF26:
 4057 01d9 474D4143 		.ascii	"GMAC_UR\000"
 4057      5F555200 
 4058              	.LASF256:
 4059 01e1 5F657272 		.ascii	"_errno\000"
 4059      6E6F00
 4060              	.LASF344:
 4061 01e8 756C5F72 		.ascii	"ul_retry_count\000"
 4061      65747279 
 4061      5F636F75 
 4061      6E7400
 4062              	.LASF87:
 4063 01f7 474D4143 		.ascii	"GMAC_FR\000"
 4063      5F465200 
 4064              	.LASF35:
 4065 01ff 474D4143 		.ascii	"GMAC_IMR\000"
 4065      5F494D52 
 4065      00
 4066              	.LASF67:
 4067 0208 474D4143 		.ascii	"GMAC_FT\000"
 4067      5F465400 
 4068              	.LASF328:
 4069 0210 756C5F76 		.ascii	"ul_value\000"
 4069      616C7565 
 4069      00
 4070              	.LASF29:
 4071 0219 474D4143 		.ascii	"GMAC_RBQB\000"
 4071      5F524251 
 4071      4200
 4072              	.LASF74:
 4073 0223 474D4143 		.ascii	"GMAC_TBFT511\000"
 4073      5F544246 
 4073      54353131 
 4073      00
 4074              	.LASF253:
 4075 0230 5F6D6273 		.ascii	"_mbstate\000"
 4075      74617465 
 4075      00
 4076              	.LASF300:
 4077 0239 5F6D6272 		.ascii	"_mbrtowc_state\000"
 4077      746F7763 
 4077      5F737461 
 4077      746500
 4078              	.LASF180:
 4079 0248 474D4143 		.ascii	"GMAC_ST2CW014\000"
 4079      5F535432 
 4079      43573031 
 4079      3400
 4080              	.LASF243:
 4081 0256 5F726561 		.ascii	"_read\000"
 4081      6400
 4082              	.LASF211:
 4083 025c 5F5F554C 		.ascii	"__ULong\000"
 4083      6F6E6700 
ARM GAS  /tmp/cc2fwsRs.s 			page 94


 4084              	.LASF327:
 4085 0264 75635F61 		.ascii	"uc_address\000"
 4085      64647265 
 4085      737300
 4086              	.LASF299:
 4087 026f 5F6D6272 		.ascii	"_mbrlen_state\000"
 4087      6C656E5F 
 4087      73746174 
 4087      6500
 4088              	.LASF338:
 4089 027d 75735F64 		.ascii	"us_data\000"
 4089      61746100 
 4090              	.LASF27:
 4091 0285 474D4143 		.ascii	"GMAC_DCFGR\000"
 4091      5F444346 
 4091      475200
 4092              	.LASF286:
 4093 0290 5F756E75 		.ascii	"_unused_rand\000"
 4093      7365645F 
 4093      72616E64 
 4093      00
 4094              	.LASF258:
 4095 029d 5F737464 		.ascii	"_stdout\000"
 4095      6F757400 
 4096              	.LASF73:
 4097 02a5 474D4143 		.ascii	"GMAC_TBFT255\000"
 4097      5F544246 
 4097      54323535 
 4097      00
 4098              	.LASF203:
 4099 02b2 5F66706F 		.ascii	"_fpos_t\000"
 4099      735F7400 
 4100              	.LASF234:
 4101 02ba 5F666E73 		.ascii	"_fns\000"
 4101      00
 4102              	.LASF52:
 4103 02bf 474D4143 		.ascii	"GMAC_SVLAN\000"
 4103      5F53564C 
 4103      414E00
 4104              	.LASF242:
 4105 02ca 5F636F6F 		.ascii	"_cookie\000"
 4105      6B696500 
 4106              	.LASF323:
 4107 02d2 474D4143 		.ascii	"GMAC_PARAM\000"
 4107      5F504152 
 4107      414D00
 4108              	.LASF311:
 4109 02dd 675F696E 		.ascii	"g_interrupt_enabled\000"
 4109      74657272 
 4109      7570745F 
 4109      656E6162 
 4109      6C656400 
 4110              	.LASF216:
 4111 02f1 5F426967 		.ascii	"_Bigint\000"
 4111      696E7400 
 4112              	.LASF54:
 4113 02f9 474D4143 		.ascii	"GMAC_SAMB1\000"
ARM GAS  /tmp/cc2fwsRs.s 			page 95


 4113      5F53414D 
 4113      423100
 4114              	.LASF224:
 4115 0304 5F5F746D 		.ascii	"__tm_wday\000"
 4115      5F776461 
 4115      7900
 4116              	.LASF266:
 4117 030e 5F726573 		.ascii	"_result\000"
 4117      756C7400 
 4118              	.LASF107:
 4119 0316 474D4143 		.ascii	"GMAC_IHCE\000"
 4119      5F494843 
 4119      4500
 4120              	.LASF16:
 4121 0320 75696E74 		.ascii	"uint32_t\000"
 4121      33325F74 
 4121      00
 4122              	.LASF220:
 4123 0329 5F5F746D 		.ascii	"__tm_hour\000"
 4123      5F686F75 
 4123      7200
 4124              	.LASF109:
 4125 0333 474D4143 		.ascii	"GMAC_UCE\000"
 4125      5F554345 
 4125      00
 4126              	.LASF261:
 4127 033c 5F656D65 		.ascii	"_emergency\000"
 4127      7267656E 
 4127      637900
 4128              	.LASF111:
 4129 0347 474D4143 		.ascii	"GMAC_TISUBN\000"
 4129      5F544953 
 4129      55424E00 
 4130              	.LASF257:
 4131 0353 5F737464 		.ascii	"_stdin\000"
 4131      696E00
 4132              	.LASF207:
 4133 035a 5F5F636F 		.ascii	"__count\000"
 4133      756E7400 
 4134              	.LASF119:
 4135 0362 474D4143 		.ascii	"GMAC_EFTN\000"
 4135      5F454654 
 4135      4E00
 4136              	.LASF315:
 4137 036c 666C6F61 		.ascii	"float\000"
 4137      7400
 4138              	.LASF85:
 4139 0372 474D4143 		.ascii	"GMAC_ORLO\000"
 4139      5F4F524C 
 4139      4F00
 4140              	.LASF219:
 4141 037c 5F5F746D 		.ascii	"__tm_min\000"
 4141      5F6D696E 
 4141      00
 4142              	.LASF308:
 4143 0385 5F696D70 		.ascii	"_impure_ptr\000"
 4143      7572655F 
ARM GAS  /tmp/cc2fwsRs.s 			page 96


 4143      70747200 
 4144              	.LASF305:
 4145 0391 5F6E6578 		.ascii	"_nextf\000"
 4145      746600
 4146              	.LASF95:
 4147 0398 474D4143 		.ascii	"GMAC_TBFR1023\000"
 4147      5F544246 
 4147      52313032 
 4147      3300
 4148              	.LASF301:
 4149 03a6 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 4149      72746F77 
 4149      63735F73 
 4149      74617465 
 4149      00
 4150              	.LASF89:
 4151 03b7 474D4143 		.ascii	"GMAC_MFR\000"
 4151      5F4D4652 
 4151      00
 4152              	.LASF69:
 4153 03c0 474D4143 		.ascii	"GMAC_MFT\000"
 4153      5F4D4654 
 4153      00
 4154              	.LASF297:
 4155 03c9 5F736967 		.ascii	"_signal_buf\000"
 4155      6E616C5F 
 4155      62756600 
 4156              	.LASF12:
 4157 03d5 6C6F6E67 		.ascii	"long long unsigned int\000"
 4157      206C6F6E 
 4157      6720756E 
 4157      7369676E 
 4157      65642069 
 4158              	.LASF288:
 4159 03ec 5F617363 		.ascii	"_asctime_buf\000"
 4159      74696D65 
 4159      5F627566 
 4159      00
 4160              	.LASF282:
 4161 03f9 5F72616E 		.ascii	"_rand48\000"
 4161      64343800 
 4162              	.LASF173:
 4163 0401 474D4143 		.ascii	"GMAC_ST2CW110\000"
 4163      5F535432 
 4163      43573131 
 4163      3000
 4164              	.LASF175:
 4165 040f 474D4143 		.ascii	"GMAC_ST2CW111\000"
 4165      5F535432 
 4165      43573131 
 4165      3100
 4166              	.LASF177:
 4167 041d 474D4143 		.ascii	"GMAC_ST2CW112\000"
 4167      5F535432 
 4167      43573131 
 4167      3200
 4168              	.LASF179:
ARM GAS  /tmp/cc2fwsRs.s 			page 97


 4169 042b 474D4143 		.ascii	"GMAC_ST2CW113\000"
 4169      5F535432 
 4169      43573131 
 4169      3300
 4170              	.LASF181:
 4171 0439 474D4143 		.ascii	"GMAC_ST2CW114\000"
 4171      5F535432 
 4171      43573131 
 4171      3400
 4172              	.LASF183:
 4173 0447 474D4143 		.ascii	"GMAC_ST2CW115\000"
 4173      5F535432 
 4173      43573131 
 4173      3500
 4174              	.LASF185:
 4175 0455 474D4143 		.ascii	"GMAC_ST2CW116\000"
 4175      5F535432 
 4175      43573131 
 4175      3600
 4176              	.LASF187:
 4177 0463 474D4143 		.ascii	"GMAC_ST2CW117\000"
 4177      5F535432 
 4177      43573131 
 4177      3700
 4178              	.LASF189:
 4179 0471 474D4143 		.ascii	"GMAC_ST2CW118\000"
 4179      5F535432 
 4179      43573131 
 4179      3800
 4180              	.LASF191:
 4181 047f 474D4143 		.ascii	"GMAC_ST2CW119\000"
 4181      5F535432 
 4181      43573131 
 4181      3900
 4182              	.LASF5:
 4183 048d 5F5F7569 		.ascii	"__uint16_t\000"
 4183      6E743136 
 4183      5F7400
 4184              	.LASF340:
 4185 0498 676D6163 		.ascii	"gmac_is_phy_idle\000"
 4185      5F69735F 
 4185      7068795F 
 4185      69646C65 
 4185      00
 4186              	.LASF278:
 4187 04a9 5F5F4649 		.ascii	"__FILE\000"
 4187      4C4500
 4188              	.LASF304:
 4189 04b0 5F685F65 		.ascii	"_h_errno\000"
 4189      72726E6F 
 4189      00
 4190              	.LASF20:
 4191 04b9 474D4143 		.ascii	"GMAC_SAB\000"
 4191      5F534142 
 4191      00
 4192              	.LASF250:
 4193 04c2 5F6F6666 		.ascii	"_offset\000"
ARM GAS  /tmp/cc2fwsRs.s 			page 98


 4193      73657400 
 4194              	.LASF77:
 4195 04ca 474D4143 		.ascii	"GMAC_GTBFT1518\000"
 4195      5F475442 
 4195      46543135 
 4195      313800
 4196              	.LASF22:
 4197 04d9 476D6163 		.ascii	"GmacSa\000"
 4197      536100
 4198              	.LASF21:
 4199 04e0 474D4143 		.ascii	"GMAC_SAT\000"
 4199      5F534154 
 4199      00
 4200              	.LASF319:
 4201 04e9 474D4143 		.ascii	"GMAC_TX_BUSY\000"
 4201      5F54585F 
 4201      42555359 
 4201      00
 4202              	.LASF144:
 4203 04f6 474D4143 		.ascii	"GMAC_IERPQ\000"
 4203      5F494552 
 4203      505100
 4204              	.LASF193:
 4205 0501 474D4143 		.ascii	"GMAC_ST2CW120\000"
 4205      5F535432 
 4205      43573132 
 4205      3000
 4206              	.LASF195:
 4207 050f 474D4143 		.ascii	"GMAC_ST2CW121\000"
 4207      5F535432 
 4207      43573132 
 4207      3100
 4208              	.LASF197:
 4209 051d 474D4143 		.ascii	"GMAC_ST2CW122\000"
 4209      5F535432 
 4209      43573132 
 4209      3200
 4210              	.LASF199:
 4211 052b 474D4143 		.ascii	"GMAC_ST2CW123\000"
 4211      5F535432 
 4211      43573132 
 4211      3300
 4212              	.LASF325:
 4213 0539 705F676D 		.ascii	"p_gmac\000"
 4213      616300
 4214              	.LASF102:
 4215 0540 474D4143 		.ascii	"GMAC_LFFE\000"
 4215      5F4C4646 
 4215      4500
 4216              	.LASF218:
 4217 054a 5F5F746D 		.ascii	"__tm_sec\000"
 4217      5F736563 
 4217      00
 4218              	.LASF146:
 4219 0553 474D4143 		.ascii	"GMAC_IDRPQ\000"
 4219      5F494452 
 4219      505100
ARM GAS  /tmp/cc2fwsRs.s 			page 99


 4220              	.LASF310:
 4221 055e 7375626F 		.ascii	"suboptarg\000"
 4221      70746172 
 4221      6700
 4222              	.LASF225:
 4223 0568 5F5F746D 		.ascii	"__tm_yday\000"
 4223      5F796461 
 4223      7900
 4224              	.LASF260:
 4225 0572 5F696E63 		.ascii	"_inc\000"
 4225      00
 4226              	.LASF312:
 4227 0577 5F426F6F 		.ascii	"_Bool\000"
 4227      6C00
 4228              	.LASF333:
 4229 057d 676D6163 		.ascii	"gmac_phy_wait\000"
 4229      5F706879 
 4229      5F776169 
 4229      7400
 4230              	.LASF96:
 4231 058b 474D4143 		.ascii	"GMAC_TBFR1518\000"
 4231      5F544246 
 4231      52313531 
 4231      3800
 4232              	.LASF314:
 4233 0599 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 4233      6972715F 
 4233      70726576 
 4233      5F696E74 
 4233      65727275 
 4234              	.LASF212:
 4235 05b6 5F6E6578 		.ascii	"_next\000"
 4235      7400
 4236              	.LASF329:
 4237 05bc 676D6163 		.ascii	"gmac_phy_write\000"
 4237      5F706879 
 4237      5F777269 
 4237      746500
 4238              	.LASF335:
 4239 05cb 75635F70 		.ascii	"uc_phy_addr\000"
 4239      68795F61 
 4239      64647200 
 4240              	.LASF55:
 4241 05d7 474D4143 		.ascii	"GMAC_SAMT1\000"
 4241      5F53414D 
 4241      543100
 4242              	.LASF100:
 4243 05e2 474D4143 		.ascii	"GMAC_JR\000"
 4243      5F4A5200 
 4244              	.LASF88:
 4245 05ea 474D4143 		.ascii	"GMAC_BCFR\000"
 4245      5F424346 
 4245      5200
 4246              	.LASF68:
 4247 05f4 474D4143 		.ascii	"GMAC_BCFT\000"
 4247      5F424346 
 4247      5400
ARM GAS  /tmp/cc2fwsRs.s 			page 100


 4248              	.LASF208:
 4249 05fe 5F5F7661 		.ascii	"__value\000"
 4249      6C756500 
 4250              	.LASF268:
 4251 0606 5F703573 		.ascii	"_p5s\000"
 4251      00
 4252              	.LASF303:
 4253 060b 5F776373 		.ascii	"_wcsrtombs_state\000"
 4253      72746F6D 
 4253      62735F73 
 4253      74617465 
 4253      00
 4254              	.LASF293:
 4255 061c 5F6D626C 		.ascii	"_mblen_state\000"
 4255      656E5F73 
 4255      74617465 
 4255      00
 4256              	.LASF342:
 4257 0629 2E2E2F61 		.ascii	"../asf/sam/drivers/gmac/gmac_phy.c\000"
 4257      73662F73 
 4257      616D2F64 
 4257      72697665 
 4257      72732F67 
 4258              	.LASF79:
 4259 064c 474D4143 		.ascii	"GMAC_SCF\000"
 4259      5F534346 
 4259      00
 4260              	.LASF59:
 4261 0655 474D4143 		.ascii	"GMAC_SCH\000"
 4261      5F534348 
 4261      00
 4262              	.LASF221:
 4263 065e 5F5F746D 		.ascii	"__tm_mday\000"
 4263      5F6D6461 
 4263      7900
 4264              	.LASF274:
 4265 0668 5F736967 		.ascii	"_sig_func\000"
 4265      5F66756E 
 4265      6300
 4266              	.LASF58:
 4267 0672 474D4143 		.ascii	"GMAC_SCL\000"
 4267      5F53434C 
 4267      00
 4268              	.LASF273:
 4269 067b 5F617465 		.ascii	"_atexit0\000"
 4269      78697430 
 4269      00
 4270              	.LASF7:
 4271 0684 5F5F696E 		.ascii	"__int32_t\000"
 4271      7433325F 
 4271      7400
 4272              	.LASF186:
 4273 068e 474D4143 		.ascii	"GMAC_ST2CW017\000"
 4273      5F535432 
 4273      43573031 
 4273      3700
 4274              	.LASF97:
ARM GAS  /tmp/cc2fwsRs.s 			page 101


 4275 069c 474D4143 		.ascii	"GMAC_TMXBFR\000"
 4275      5F544D58 
 4275      42465200 
 4276              	.LASF343:
 4277 06a8 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70_RTOS"
 4277      652F746F 
 4277      72626A6F 
 4277      726E2F65 
 4277      636C6970 
 4278 06db 00       		.ascii	"\000"
 4279              	.LASF90:
 4280 06dc 474D4143 		.ascii	"GMAC_PFR\000"
 4280      5F504652 
 4280      00
 4281              	.LASF70:
 4282 06e5 474D4143 		.ascii	"GMAC_PFT\000"
 4282      5F504654 
 4282      00
 4283              	.LASF339:
 4284 06ee 676D6163 		.ascii	"gmac_maintain_phy\000"
 4284      5F6D6169 
 4284      6E746169 
 4284      6E5F7068 
 4284      7900
 4285              	.LASF267:
 4286 0700 5F726573 		.ascii	"_result_k\000"
 4286      756C745F 
 4286      6B00
 4287              	.LASF324:
 4288 070a 474D4143 		.ascii	"GMAC_INVALID\000"
 4288      5F494E56 
 4288      414C4944 
 4288      00
 4289              	.LASF205:
 4290 0717 5F5F7763 		.ascii	"__wch\000"
 4290      6800
 4291              	.LASF13:
 4292 071d 75696E74 		.ascii	"uint8_t\000"
 4292      385F7400 
 4293              	.LASF92:
 4294 0725 474D4143 		.ascii	"GMAC_TBFR127\000"
 4294      5F544246 
 4294      52313237 
 4294      00
 4295              	.LASF337:
 4296 0732 75635F72 		.ascii	"uc_rw\000"
 4296      7700
 4297              	.LASF246:
 4298 0738 5F636C6F 		.ascii	"_close\000"
 4298      736500
 4299              	.LASF264:
 4300 073f 5F5F7364 		.ascii	"__sdidinit\000"
 4300      6964696E 
 4300      697400
 4301              	.LASF62:
 4302 074a 474D4143 		.ascii	"GMAC_PEFTSH\000"
 4302      5F504546 
ARM GAS  /tmp/cc2fwsRs.s 			page 102


 4302      54534800 
 4303              	.LASF57:
 4304 0756 474D4143 		.ascii	"GMAC_NSC\000"
 4304      5F4E5343 
 4304      00
 4305              	.LASF116:
 4306 075f 474D4143 		.ascii	"GMAC_TA\000"
 4306      5F544100 
 4307              	.LASF25:
 4308 0767 474D4143 		.ascii	"GMAC_NSR\000"
 4308      5F4E5352 
 4308      00
 4309              	.LASF82:
 4310 0770 474D4143 		.ascii	"GMAC_LC\000"
 4310      5F4C4300 
 4311              	.LASF152:
 4312 0778 474D4143 		.ascii	"GMAC_ST2CW00\000"
 4312      5F535432 
 4312      43573030 
 4312      00
 4313              	.LASF11:
 4314 0785 6C6F6E67 		.ascii	"long long int\000"
 4314      206C6F6E 
 4314      6720696E 
 4314      7400
 4315              	.LASF137:
 4316 0793 474D4143 		.ascii	"GMAC_CBSISQB\000"
 4316      5F434253 
 4316      49535142 
 4316      00
 4317              	.LASF236:
 4318 07a0 5F626173 		.ascii	"_base\000"
 4318      6500
 4319              	.LASF269:
 4320 07a6 5F667265 		.ascii	"_freelist\000"
 4320      656C6973 
 4320      7400
 4321              	.LASF32:
 4322 07b0 474D4143 		.ascii	"GMAC_ISR\000"
 4322      5F495352 
 4322      00
 4323              	.LASF284:
 4324 07b9 5F6D756C 		.ascii	"_mult\000"
 4324      7400
 4325              	.LASF285:
 4326 07bf 5F616464 		.ascii	"_add\000"
 4326      00
 4327              	.LASF330:
 4328 07c4 676D6163 		.ascii	"gmac_phy_read\000"
 4328      5F706879 
 4328      5F726561 
 4328      6400
 4329              	.LASF302:
 4330 07d2 5F776372 		.ascii	"_wcrtomb_state\000"
 4330      746F6D62 
 4330      5F737461 
 4330      746500
ARM GAS  /tmp/cc2fwsRs.s 			page 103


 4331              	.LASF200:
 4332 07e1 476D6163 		.ascii	"Gmac\000"
 4332      00
 4333              	.LASF34:
 4334 07e6 474D4143 		.ascii	"GMAC_IDR\000"
 4334      5F494452 
 4334      00
 4335              	.LASF148:
 4336 07ef 474D4143 		.ascii	"GMAC_IMRPQ\000"
 4336      5F494D52 
 4336      505100
 4337              	.LASF101:
 4338 07fa 474D4143 		.ascii	"GMAC_FCSE\000"
 4338      5F464353 
 4338      4500
 4339              	.LASF215:
 4340 0804 5F776473 		.ascii	"_wds\000"
 4340      00
 4341              	.LASF141:
 4342 0809 474D4143 		.ascii	"GMAC_ST2RPQ\000"
 4342      5F535432 
 4342      52505100 
 4343              	.LASF75:
 4344 0815 474D4143 		.ascii	"GMAC_TBFT1023\000"
 4344      5F544246 
 4344      54313032 
 4344      3300
 4345              	.LASF265:
 4346 0823 5F5F636C 		.ascii	"__cleanup\000"
 4346      65616E75 
 4346      7000
 4347              	.LASF321:
 4348 082d 474D4143 		.ascii	"GMAC_RX_NO_DATA\000"
 4348      5F52585F 
 4348      4E4F5F44 
 4348      41544100 
 4349              	.LASF209:
 4350 083d 5F6D6273 		.ascii	"_mbstate_t\000"
 4350      74617465 
 4350      5F7400
 4351              	.LASF336:
 4352 0848 75635F72 		.ascii	"uc_reg_addr\000"
 4352      65675F61 
 4352      64647200 
 4353              	.LASF42:
 4354 0854 52657365 		.ascii	"Reserved1\000"
 4354      72766564 
 4354      3100
 4355              	.LASF56:
 4356 085e 52657365 		.ascii	"Reserved2\000"
 4356      72766564 
 4356      3200
 4357              	.LASF64:
 4358 0868 52657365 		.ascii	"Reserved3\000"
 4358      72766564 
 4358      3300
 4359              	.LASF110:
ARM GAS  /tmp/cc2fwsRs.s 			page 104


 4360 0872 52657365 		.ascii	"Reserved4\000"
 4360      72766564 
 4360      3400
 4361              	.LASF113:
 4362 087c 52657365 		.ascii	"Reserved5\000"
 4362      72766564 
 4362      3500
 4363              	.LASF126:
 4364 0886 52657365 		.ascii	"Reserved6\000"
 4364      72766564 
 4364      3600
 4365              	.LASF226:
 4366 0890 5F5F746D 		.ascii	"__tm_isdst\000"
 4366      5F697364 
 4366      737400
 4367              	.LASF247:
 4368 089b 5F756275 		.ascii	"_ubuf\000"
 4368      6600
 4369              	.LASF132:
 4370 08a1 52657365 		.ascii	"Reserved9\000"
 4370      72766564 
 4370      3900
 4371              	.LASF83:
 4372 08ab 474D4143 		.ascii	"GMAC_DTF\000"
 4372      5F445446 
 4372      00
 4373              	.LASF84:
 4374 08b4 474D4143 		.ascii	"GMAC_CSE\000"
 4374      5F435345 
 4374      00
 4375              	.LASF233:
 4376 08bd 5F696E64 		.ascii	"_ind\000"
 4376      00
 4377              	.LASF28:
 4378 08c2 474D4143 		.ascii	"GMAC_TSR\000"
 4378      5F545352 
 4378      00
 4379              	.LASF322:
 4380 08cb 474D4143 		.ascii	"GMAC_SIZE_TOO_SMALL\000"
 4380      5F53495A 
 4380      455F544F 
 4380      4F5F534D 
 4380      414C4C00 
 4381              	.LASF46:
 4382 08df 474D4143 		.ascii	"GMAC_TIDM1\000"
 4382      5F544944 
 4382      4D3100
 4383              	.LASF47:
 4384 08ea 474D4143 		.ascii	"GMAC_TIDM2\000"
 4384      5F544944 
 4384      4D3200
 4385              	.LASF48:
 4386 08f5 474D4143 		.ascii	"GMAC_TIDM3\000"
 4386      5F544944 
 4386      4D3300
 4387              	.LASF49:
 4388 0900 474D4143 		.ascii	"GMAC_TIDM4\000"
ARM GAS  /tmp/cc2fwsRs.s 			page 105


 4388      5F544944 
 4388      4D3400
 4389              	.LASF131:
 4390 090b 474D4143 		.ascii	"GMAC_RBQBAPQ\000"
 4390      5F524251 
 4390      42415051 
 4390      00
 4391              	.LASF40:
 4392 0918 474D4143 		.ascii	"GMAC_RPSF\000"
 4392      5F525053 
 4392      4600
 4393              	.LASF72:
 4394 0922 474D4143 		.ascii	"GMAC_TBFT127\000"
 4394      5F544246 
 4394      54313237 
 4394      00
 4395              	.LASF222:
 4396 092f 5F5F746D 		.ascii	"__tm_mon\000"
 4396      5F6D6F6E 
 4396      00
 4397              	.LASF14:
 4398 0938 75696E74 		.ascii	"uint16_t\000"
 4398      31365F74 
 4398      00
 4399              	.LASF244:
 4400 0941 5F777269 		.ascii	"_write\000"
 4400      746500
 4401              	.LASF290:
 4402 0948 5F67616D 		.ascii	"_gamma_signgam\000"
 4402      6D615F73 
 4402      69676E67 
 4402      616D00
 4403              	.LASF51:
 4404 0957 474D4143 		.ascii	"GMAC_IPGS\000"
 4404      5F495047 
 4404      5300
 4405              	.LASF9:
 4406 0961 5F5F7569 		.ascii	"__uint32_t\000"
 4406      6E743332 
 4406      5F7400
 4407              	.LASF232:
 4408 096c 5F617465 		.ascii	"_atexit\000"
 4408      78697400 
 4409              	.LASF150:
 4410 0974 474D4143 		.ascii	"GMAC_ST2ER\000"
 4410      5F535432 
 4410      455200
 4411              	.LASF24:
 4412 097f 474D4143 		.ascii	"GMAC_NCFGR\000"
 4412      5F4E4346 
 4412      475200
 4413              	.LASF133:
 4414 098a 474D4143 		.ascii	"GMAC_RBSRPQ\000"
 4414      5F524253 
 4414      52505100 
 4415              	.LASF38:
 4416 0996 474D4143 		.ascii	"GMAC_TPQ\000"
ARM GAS  /tmp/cc2fwsRs.s 			page 106


 4416      5F545051 
 4416      00
 4417              	.LASF3:
 4418 099f 73686F72 		.ascii	"short int\000"
 4418      7420696E 
 4418      7400
 4419              	.LASF63:
 4420 09a9 474D4143 		.ascii	"GMAC_PEFRSH\000"
 4420      5F504546 
 4420      52534800 
 4421              	.LASF128:
 4422 09b5 52657365 		.ascii	"Reserved7\000"
 4422      72766564 
 4422      3700
 4423              	.LASF130:
 4424 09bf 52657365 		.ascii	"Reserved8\000"
 4424      72766564 
 4424      3800
 4425              	.LASF124:
 4426 09c9 474D4143 		.ascii	"GMAC_PEFRSL\000"
 4426      5F504546 
 4426      52534C00 
 4427              	.LASF23:
 4428 09d5 474D4143 		.ascii	"GMAC_NCR\000"
 4428      5F4E4352 
 4428      00
 4429              	.LASF8:
 4430 09de 6C6F6E67 		.ascii	"long int\000"
 4430      20696E74 
 4430      00
 4431              	.LASF18:
 4432 09e7 49544D5F 		.ascii	"ITM_RxBuffer\000"
 4432      52784275 
 4432      66666572 
 4432      00
 4433              	.LASF98:
 4434 09f4 474D4143 		.ascii	"GMAC_UFR\000"
 4434      5F554652 
 4434      00
 4435              	.LASF41:
 4436 09fd 474D4143 		.ascii	"GMAC_RJFML\000"
 4436      5F524A46 
 4436      4D4C00
 4437              	.LASF71:
 4438 0a08 474D4143 		.ascii	"GMAC_BFT64\000"
 4438      5F424654 
 4438      363400
 4439              	.LASF317:
 4440 0a13 474D4143 		.ascii	"GMAC_OK\000"
 4440      5F4F4B00 
 4441              	.LASF276:
 4442 0a1b 5F5F7366 		.ascii	"__sf\000"
 4442      00
 4443              	.LASF214:
 4444 0a20 5F736967 		.ascii	"_sign\000"
 4444      6E00
 4445              	.LASF263:
ARM GAS  /tmp/cc2fwsRs.s 			page 107


 4446 0a26 5F637572 		.ascii	"_current_locale\000"
 4446      72656E74 
 4446      5F6C6F63 
 4446      616C6500 
 4447              	.LASF190:
 4448 0a36 474D4143 		.ascii	"GMAC_ST2CW019\000"
 4448      5F535432 
 4448      43573031 
 4448      3900
 4449              	.LASF251:
 4450 0a44 5F646174 		.ascii	"_data\000"
 4450      6100
 4451              	.LASF206:
 4452 0a4a 5F5F7763 		.ascii	"__wchb\000"
 4452      686200
 4453              	.LASF309:
 4454 0a51 5F676C6F 		.ascii	"_global_impure_ptr\000"
 4454      62616C5F 
 4454      696D7075 
 4454      72655F70 
 4454      747200
 4455              	.LASF223:
 4456 0a64 5F5F746D 		.ascii	"__tm_year\000"
 4456      5F796561 
 4456      7200
 4457              	.LASF240:
 4458 0a6e 5F66696C 		.ascii	"_file\000"
 4458      6500
 4459              	.LASF129:
 4460 0a74 474D4143 		.ascii	"GMAC_TBQBAPQ\000"
 4460      5F544251 
 4460      42415051 
 4460      00
 4461              	.LASF287:
 4462 0a81 5F737472 		.ascii	"_strtok_last\000"
 4462      746F6B5F 
 4462      6C617374 
 4462      00
 4463              	.LASF289:
 4464 0a8e 5F6C6F63 		.ascii	"_localtime_buf\000"
 4464      616C7469 
 4464      6D655F62 
 4464      756600
 4465              	.LASF66:
 4466 0a9d 474D4143 		.ascii	"GMAC_OTHI\000"
 4466      5F4F5448 
 4466      4900
 4467              	.LASF307:
 4468 0aa7 5F756E75 		.ascii	"_unused\000"
 4468      73656400 
 4469              	.LASF4:
 4470 0aaf 5F5F7569 		.ascii	"__uint8_t\000"
 4470      6E74385F 
 4470      7400
 4471              	.LASF272:
 4472 0ab9 5F6E6577 		.ascii	"_new\000"
 4472      00
ARM GAS  /tmp/cc2fwsRs.s 			page 108


 4473              	.LASF270:
 4474 0abe 5F637674 		.ascii	"_cvtlen\000"
 4474      6C656E00 
 4475              	.LASF213:
 4476 0ac6 5F6D6178 		.ascii	"_maxwds\000"
 4476      77647300 
 4477              	.LASF296:
 4478 0ace 5F6C3634 		.ascii	"_l64a_buf\000"
 4478      615F6275 
 4478      6600
 4479              	.LASF262:
 4480 0ad8 5F637572 		.ascii	"_current_category\000"
 4480      72656E74 
 4480      5F636174 
 4480      65676F72 
 4480      7900
 4481              	.LASF160:
 4482 0aea 474D4143 		.ascii	"GMAC_ST2CW04\000"
 4482      5F535432 
 4482      43573034 
 4482      00
 4483              	.LASF0:
 4484 0af7 756E7369 		.ascii	"unsigned int\000"
 4484      676E6564 
 4484      20696E74 
 4484      00
 4485              	.LASF39:
 4486 0b04 474D4143 		.ascii	"GMAC_TPSF\000"
 4486      5F545053 
 4486      4600
 4487              	.LASF104:
 4488 0b0e 474D4143 		.ascii	"GMAC_AE\000"
 4488      5F414500 
 4489              	.LASF249:
 4490 0b16 5F626C6B 		.ascii	"_blksize\000"
 4490      73697A65 
 4490      00
 4491              	.LASF217:
 4492 0b1f 5F5F746D 		.ascii	"__tm\000"
 4492      00
 4493              	.LASF122:
 4494 0b24 474D4143 		.ascii	"GMAC_PEFTSL\000"
 4494      5F504546 
 4494      54534C00 
 4495              	.LASF136:
 4496 0b30 474D4143 		.ascii	"GMAC_CBSISQA\000"
 4496      5F434253 
 4496      49535141 
 4496      00
 4497              	.LASF252:
 4498 0b3d 5F6C6F63 		.ascii	"_lock\000"
 4498      6B00
 4499              	.LASF17:
 4500 0b43 73697A65 		.ascii	"sizetype\000"
 4500      74797065 
 4500      00
 4501              	.LASF10:
ARM GAS  /tmp/cc2fwsRs.s 			page 109


 4502 0b4c 6C6F6E67 		.ascii	"long unsigned int\000"
 4502      20756E73 
 4502      69676E65 
 4502      6420696E 
 4502      7400
 4503              	.LASF50:
 4504 0b5e 474D4143 		.ascii	"GMAC_WOL\000"
 4504      5F574F4C 
 4504      00
 4505              	.LASF313:
 4506 0b67 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 4506      6972715F 
 4506      63726974 
 4506      6963616C 
 4506      5F736563 
 4507              	.LASF280:
 4508 0b88 5F6E696F 		.ascii	"_niobs\000"
 4508      627300
 4509              	.LASF204:
 4510 0b8f 77696E74 		.ascii	"wint_t\000"
 4510      5F7400
 4511              	.LASF106:
 4512 0b96 474D4143 		.ascii	"GMAC_ROE\000"
 4512      5F524F45 
 4512      00
 4513              	.LASF15:
 4514 0b9f 696E7433 		.ascii	"int32_t\000"
 4514      325F7400 
 4515              	.LASF53:
 4516 0ba7 474D4143 		.ascii	"GMAC_TPFCP\000"
 4516      5F545046 
 4516      435000
 4517              	.LASF108:
 4518 0bb2 474D4143 		.ascii	"GMAC_TCE\000"
 4518      5F544345 
 4518      00
 4519              	.LASF229:
 4520 0bbb 5F64736F 		.ascii	"_dso_handle\000"
 4520      5F68616E 
 4520      646C6500 
 4521              	.LASF332:
 4522 0bc7 756C5F72 		.ascii	"ul_retry\000"
 4522      65747279 
 4522      00
 4523              	.LASF135:
 4524 0bd0 474D4143 		.ascii	"GMAC_CBSCR\000"
 4524      5F434253 
 4524      435200
 4525              	.LASF271:
 4526 0bdb 5F637674 		.ascii	"_cvtbuf\000"
 4526      62756600 
 4527              	.LASF2:
 4528 0be3 756E7369 		.ascii	"unsigned char\000"
 4528      676E6564 
 4528      20636861 
 4528      7200
 4529              	.LASF134:
ARM GAS  /tmp/cc2fwsRs.s 			page 110


 4530 0bf1 52657365 		.ascii	"Reserved10\000"
 4530      72766564 
 4530      313000
 4531              	.LASF138:
 4532 0bfc 52657365 		.ascii	"Reserved11\000"
 4532      72766564 
 4532      313100
 4533              	.LASF140:
 4534 0c07 52657365 		.ascii	"Reserved12\000"
 4534      72766564 
 4534      313200
 4535              	.LASF142:
 4536 0c12 52657365 		.ascii	"Reserved13\000"
 4536      72766564 
 4536      313300
 4537              	.LASF143:
 4538 0c1d 52657365 		.ascii	"Reserved14\000"
 4538      72766564 
 4538      313400
 4539              	.LASF145:
 4540 0c28 52657365 		.ascii	"Reserved15\000"
 4540      72766564 
 4540      313500
 4541              	.LASF147:
 4542 0c33 52657365 		.ascii	"Reserved16\000"
 4542      72766564 
 4542      313600
 4543              	.LASF149:
 4544 0c3e 52657365 		.ascii	"Reserved17\000"
 4544      72766564 
 4544      313700
 4545              	.LASF151:
 4546 0c49 52657365 		.ascii	"Reserved18\000"
 4546      72766564 
 4546      313800
 4547              	.LASF201:
 4548 0c54 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 4548      4B5F5245 
 4548      43555253 
 4548      4956455F 
 4548      5400
 4549              	.LASF172:
 4550 0c66 474D4143 		.ascii	"GMAC_ST2CW010\000"
 4550      5F535432 
 4550      43573031 
 4550      3000
 4551              	.LASF174:
 4552 0c74 474D4143 		.ascii	"GMAC_ST2CW011\000"
 4552      5F535432 
 4552      43573031 
 4552      3100
 4553              	.LASF176:
 4554 0c82 474D4143 		.ascii	"GMAC_ST2CW012\000"
 4554      5F535432 
 4554      43573031 
 4554      3200
 4555              	.LASF178:
ARM GAS  /tmp/cc2fwsRs.s 			page 111


 4556 0c90 474D4143 		.ascii	"GMAC_ST2CW013\000"
 4556      5F535432 
 4556      43573031 
 4556      3300
 4557              	.LASF80:
 4558 0c9e 474D4143 		.ascii	"GMAC_MCF\000"
 4558      5F4D4346 
 4558      00
 4559              	.LASF182:
 4560 0ca7 474D4143 		.ascii	"GMAC_ST2CW015\000"
 4560      5F535432 
 4560      43573031 
 4560      3500
 4561              	.LASF184:
 4562 0cb5 474D4143 		.ascii	"GMAC_ST2CW016\000"
 4562      5F535432 
 4562      43573031 
 4562      3600
 4563              	.LASF112:
 4564 0cc3 474D4143 		.ascii	"GMAC_TSH\000"
 4564      5F545348 
 4564      00
 4565              	.LASF188:
 4566 0ccc 474D4143 		.ascii	"GMAC_ST2CW018\000"
 4566      5F535432 
 4566      43573031 
 4566      3800
 4567              	.LASF60:
 4568 0cda 474D4143 		.ascii	"GMAC_EFTSH\000"
 4568      5F454654 
 4568      534800
 4569              	.LASF114:
 4570 0ce5 474D4143 		.ascii	"GMAC_TSL\000"
 4570      5F54534C 
 4570      00
 4571              	.LASF118:
 4572 0cee 474D4143 		.ascii	"GMAC_EFTSL\000"
 4572      5F454654 
 4572      534C00
 4573              	.LASF341:
 4574 0cf9 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 4574      43393920 
 4574      362E332E 
 4574      31203230 
 4574      31373036 
 4575 0d2c 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 4575      76352D64 
 4575      3136202D 
 4575      6D666C6F 
 4575      61742D61 
 4576 0d5f 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 4576      6E2D7365 
 4576      6374696F 
 4576      6E73202D 
 4576      66646174 
 4577 0d92 6F6E7374 		.ascii	"onstant\000"
 4577      616E7400 
ARM GAS  /tmp/cc2fwsRs.s 			page 112


 4578              	.LASF331:
 4579 0d9a 705F7661 		.ascii	"p_value\000"
 4579      6C756500 
 4580              	.LASF235:
 4581 0da2 5F5F7362 		.ascii	"__sbuf\000"
 4581      756600
 4582              	.LASF37:
 4583 0da9 474D4143 		.ascii	"GMAC_RPQ\000"
 4583      5F525051 
 4583      00
 4584              	.LASF279:
 4585 0db2 5F676C75 		.ascii	"_glue\000"
 4585      6500
 4586              	.LASF155:
 4587 0db8 474D4143 		.ascii	"GMAC_ST2CW11\000"
 4587      5F535432 
 4587      43573131 
 4587      00
 4588              	.LASF275:
 4589 0dc5 5F5F7367 		.ascii	"__sglue\000"
 4589      6C756500 
 4590              	.LASF298:
 4591 0dcd 5F676574 		.ascii	"_getdate_err\000"
 4591      64617465 
 4591      5F657272 
 4591      00
 4592              	.LASF320:
 4593 0dda 474D4143 		.ascii	"GMAC_RX_ERROR\000"
 4593      5F52585F 
 4593      4552524F 
 4593      5200
 4594              	.LASF294:
 4595 0de8 5F6D6274 		.ascii	"_mbtowc_state\000"
 4595      6F77635F 
 4595      73746174 
 4595      6500
 4596              	.LASF171:
 4597 0df6 474D4143 		.ascii	"GMAC_ST2CW19\000"
 4597      5F535432 
 4597      43573139 
 4597      00
 4598              	.LASF36:
 4599 0e03 474D4143 		.ascii	"GMAC_MAN\000"
 4599      5F4D414E 
 4599      00
 4600              	.LASF228:
 4601 0e0c 5F666E61 		.ascii	"_fnargs\000"
 4601      72677300 
 4602              	.LASF1:
 4603 0e14 7369676E 		.ascii	"signed char\000"
 4603      65642063 
 4603      68617200 
 4604              	.LASF255:
 4605 0e20 5F726565 		.ascii	"_reent\000"
 4605      6E7400
 4606              	.LASF6:
 4607 0e27 73686F72 		.ascii	"short unsigned int\000"
ARM GAS  /tmp/cc2fwsRs.s 			page 113


 4607      7420756E 
 4607      7369676E 
 4607      65642069 
 4607      6E7400
 4608              	.LASF192:
 4609 0e3a 474D4143 		.ascii	"GMAC_ST2CW020\000"
 4609      5F535432 
 4609      43573032 
 4609      3000
 4610              	.LASF194:
 4611 0e48 474D4143 		.ascii	"GMAC_ST2CW021\000"
 4611      5F535432 
 4611      43573032 
 4611      3100
 4612              	.LASF196:
 4613 0e56 474D4143 		.ascii	"GMAC_ST2CW022\000"
 4613      5F535432 
 4613      43573032 
 4613      3200
 4614              	.LASF198:
 4615 0e64 474D4143 		.ascii	"GMAC_ST2CW023\000"
 4615      5F535432 
 4615      43573032 
 4615      3300
 4616              	.LASF33:
 4617 0e72 474D4143 		.ascii	"GMAC_IER\000"
 4617      5F494552 
 4617      00
 4618              	.LASF230:
 4619 0e7b 5F666E74 		.ascii	"_fntypes\000"
 4619      79706573 
 4619      00
 4620              	.LASF238:
 4621 0e84 5F5F7346 		.ascii	"__sFILE\000"
 4621      494C4500 
 4622              	.LASF237:
 4623 0e8c 5F73697A 		.ascii	"_size\000"
 4623      6500
 4624              	.LASF316:
 4625 0e92 646F7562 		.ascii	"double\000"
 4625      6C6500
 4626              	.LASF295:
 4627 0e99 5F776374 		.ascii	"_wctomb_state\000"
 4627      6F6D625F 
 4627      73746174 
 4627      6500
 4628              	.LASF45:
 4629 0ea7 474D4143 		.ascii	"GMAC_SA\000"
 4629      5F534100 
 4630              	.LASF202:
 4631 0eaf 5F6F6666 		.ascii	"_off_t\000"
 4631      5F7400
 4632              	.LASF86:
 4633 0eb6 474D4143 		.ascii	"GMAC_ORHI\000"
 4633      5F4F5248 
 4633      4900
 4634              	.LASF76:
ARM GAS  /tmp/cc2fwsRs.s 			page 114


 4635 0ec0 474D4143 		.ascii	"GMAC_TBFT1518\000"
 4635      5F544246 
 4635      54313531 
 4635      3800
 4636              	.LASF248:
 4637 0ece 5F6E6275 		.ascii	"_nbuf\000"
 4637      6600
 4638              	.LASF139:
 4639 0ed4 474D4143 		.ascii	"GMAC_ST1RPQ\000"
 4639      5F535431 
 4639      52505100 
 4640              	.LASF254:
 4641 0ee0 5F666C61 		.ascii	"_flags2\000"
 4641      67733200 
 4642              	.LASF123:
 4643 0ee8 474D4143 		.ascii	"GMAC_PEFTN\000"
 4643      5F504546 
 4643      544E00
 4644              	.LASF231:
 4645 0ef3 5F69735F 		.ascii	"_is_cxa\000"
 4645      63786100 
 4646              	.LASF94:
 4647 0efb 474D4143 		.ascii	"GMAC_TBFR511\000"
 4647      5F544246 
 4647      52353131 
 4647      00
 4648              	.LASF283:
 4649 0f08 5F736565 		.ascii	"_seed\000"
 4649      6400
 4650              	.LASF291:
 4651 0f0e 5F72616E 		.ascii	"_rand_next\000"
 4651      645F6E65 
 4651      787400
 4652              	.LASF245:
 4653 0f19 5F736565 		.ascii	"_seek\000"
 4653      6B00
 4654              	.LASF127:
 4655 0f1f 474D4143 		.ascii	"GMAC_ISRPQ\000"
 4655      5F495352 
 4655      505100
 4656              	.LASF91:
 4657 0f2a 474D4143 		.ascii	"GMAC_BFR64\000"
 4657      5F424652 
 4657      363400
 4658              	.LASF259:
 4659 0f35 5F737464 		.ascii	"_stderr\000"
 4659      65727200 
 4660              	.LASF306:
 4661 0f3d 5F6E6D61 		.ascii	"_nmalloc\000"
 4661      6C6C6F63 
 4661      00
 4662              	.LASF281:
 4663 0f46 5F696F62 		.ascii	"_iobs\000"
 4663      7300
 4664              	.LASF105:
 4665 0f4c 474D4143 		.ascii	"GMAC_RRE\000"
 4665      5F525245 
ARM GAS  /tmp/cc2fwsRs.s 			page 115


 4665      00
 4666              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
