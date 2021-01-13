ARM GAS  /tmp/ccfM1LZ3.s 			page 1


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
  12              		.file	"flash_efc.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.flash_init,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	flash_init
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	flash_init, %function
  25              	flash_init:
  26              	.LFB165:
  27              		.file 1 "../asf/sam/services/flash_efc/flash_efc.c"
   1:../asf/sam/services/flash_efc/flash_efc.c **** /**
   2:../asf/sam/services/flash_efc/flash_efc.c ****  * \file
   3:../asf/sam/services/flash_efc/flash_efc.c ****  *
   4:../asf/sam/services/flash_efc/flash_efc.c ****  * \brief Embedded Flash service for SAM.
   5:../asf/sam/services/flash_efc/flash_efc.c ****  *
   6:../asf/sam/services/flash_efc/flash_efc.c ****  * Copyright (c) 2011-2016 Atmel Corporation. All rights reserved.
   7:../asf/sam/services/flash_efc/flash_efc.c ****  *
   8:../asf/sam/services/flash_efc/flash_efc.c ****  * \asf_license_start
   9:../asf/sam/services/flash_efc/flash_efc.c ****  *
  10:../asf/sam/services/flash_efc/flash_efc.c ****  * \page License
  11:../asf/sam/services/flash_efc/flash_efc.c ****  *
  12:../asf/sam/services/flash_efc/flash_efc.c ****  * Redistribution and use in source and binary forms, with or without
  13:../asf/sam/services/flash_efc/flash_efc.c ****  * modification, are permitted provided that the following conditions are met:
  14:../asf/sam/services/flash_efc/flash_efc.c ****  *
  15:../asf/sam/services/flash_efc/flash_efc.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../asf/sam/services/flash_efc/flash_efc.c ****  *    this list of conditions and the following disclaimer.
  17:../asf/sam/services/flash_efc/flash_efc.c ****  *
  18:../asf/sam/services/flash_efc/flash_efc.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../asf/sam/services/flash_efc/flash_efc.c ****  *    this list of conditions and the following disclaimer in the documentation
  20:../asf/sam/services/flash_efc/flash_efc.c ****  *    and/or other materials provided with the distribution.
  21:../asf/sam/services/flash_efc/flash_efc.c ****  *
  22:../asf/sam/services/flash_efc/flash_efc.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../asf/sam/services/flash_efc/flash_efc.c ****  *    from this software without specific prior written permission.
  24:../asf/sam/services/flash_efc/flash_efc.c ****  *
  25:../asf/sam/services/flash_efc/flash_efc.c ****  * 4. This software may only be redistributed and used in connection with an
  26:../asf/sam/services/flash_efc/flash_efc.c ****  *    Atmel microcontroller product.
  27:../asf/sam/services/flash_efc/flash_efc.c ****  *
  28:../asf/sam/services/flash_efc/flash_efc.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../asf/sam/services/flash_efc/flash_efc.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../asf/sam/services/flash_efc/flash_efc.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
ARM GAS  /tmp/ccfM1LZ3.s 			page 2


  31:../asf/sam/services/flash_efc/flash_efc.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:../asf/sam/services/flash_efc/flash_efc.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../asf/sam/services/flash_efc/flash_efc.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../asf/sam/services/flash_efc/flash_efc.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../asf/sam/services/flash_efc/flash_efc.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../asf/sam/services/flash_efc/flash_efc.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../asf/sam/services/flash_efc/flash_efc.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../asf/sam/services/flash_efc/flash_efc.c ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../asf/sam/services/flash_efc/flash_efc.c ****  *
  40:../asf/sam/services/flash_efc/flash_efc.c ****  * \asf_license_stop
  41:../asf/sam/services/flash_efc/flash_efc.c ****  *
  42:../asf/sam/services/flash_efc/flash_efc.c ****  */
  43:../asf/sam/services/flash_efc/flash_efc.c **** /*
  44:../asf/sam/services/flash_efc/flash_efc.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../asf/sam/services/flash_efc/flash_efc.c ****  */
  46:../asf/sam/services/flash_efc/flash_efc.c **** 
  47:../asf/sam/services/flash_efc/flash_efc.c **** #include <string.h>
  48:../asf/sam/services/flash_efc/flash_efc.c **** #include <assert.h>
  49:../asf/sam/services/flash_efc/flash_efc.c **** #include "flash_efc.h"
  50:../asf/sam/services/flash_efc/flash_efc.c **** #include "sysclk.h"
  51:../asf/sam/services/flash_efc/flash_efc.c **** 
  52:../asf/sam/services/flash_efc/flash_efc.c **** /// @cond 0
  53:../asf/sam/services/flash_efc/flash_efc.c **** /**INDENT-OFF**/
  54:../asf/sam/services/flash_efc/flash_efc.c **** #ifdef __cplusplus
  55:../asf/sam/services/flash_efc/flash_efc.c **** extern "C" {
  56:../asf/sam/services/flash_efc/flash_efc.c **** #endif
  57:../asf/sam/services/flash_efc/flash_efc.c **** /**INDENT-ON**/
  58:../asf/sam/services/flash_efc/flash_efc.c **** /// @endcond
  59:../asf/sam/services/flash_efc/flash_efc.c **** 
  60:../asf/sam/services/flash_efc/flash_efc.c **** /**
  61:../asf/sam/services/flash_efc/flash_efc.c ****  * \defgroup sam_services_flash_efc_group Embedded Flash Service
  62:../asf/sam/services/flash_efc/flash_efc.c ****  *
  63:../asf/sam/services/flash_efc/flash_efc.c ****  * The Embedded Flash service provides functions for internal flash operations.
  64:../asf/sam/services/flash_efc/flash_efc.c ****  *
  65:../asf/sam/services/flash_efc/flash_efc.c ****  * @{
  66:../asf/sam/services/flash_efc/flash_efc.c ****  */
  67:../asf/sam/services/flash_efc/flash_efc.c **** 
  68:../asf/sam/services/flash_efc/flash_efc.c **** #if (SAM4E || SAM4N || SAM4S || SAM4C || SAMG || SAM4CP || SAM4CM || \
  69:../asf/sam/services/flash_efc/flash_efc.c **** 	 SAMV71 || SAMV70 || SAMS70 || SAME70)
  70:../asf/sam/services/flash_efc/flash_efc.c **** /* User signature size */
  71:../asf/sam/services/flash_efc/flash_efc.c **** # define FLASH_USER_SIG_SIZE   (512)
  72:../asf/sam/services/flash_efc/flash_efc.c **** #endif
  73:../asf/sam/services/flash_efc/flash_efc.c **** 
  74:../asf/sam/services/flash_efc/flash_efc.c **** #if SAM4S
  75:../asf/sam/services/flash_efc/flash_efc.c **** /* Internal Flash Controller 0. */
  76:../asf/sam/services/flash_efc/flash_efc.c **** # define EFC     EFC0
  77:../asf/sam/services/flash_efc/flash_efc.c **** #if (SAM4SD16 || SAM4SD32)
  78:../asf/sam/services/flash_efc/flash_efc.c **** /* The max GPNVM number. */
  79:../asf/sam/services/flash_efc/flash_efc.c **** # define GPNVM_NUM_MAX        3
  80:../asf/sam/services/flash_efc/flash_efc.c **** #else
  81:../asf/sam/services/flash_efc/flash_efc.c **** /* The max GPNVM number. */
  82:../asf/sam/services/flash_efc/flash_efc.c **** # define GPNVM_NUM_MAX        2
  83:../asf/sam/services/flash_efc/flash_efc.c **** #endif
  84:../asf/sam/services/flash_efc/flash_efc.c **** /* Internal Flash 0 base address. */
  85:../asf/sam/services/flash_efc/flash_efc.c **** # define IFLASH_ADDR     IFLASH0_ADDR
  86:../asf/sam/services/flash_efc/flash_efc.c **** /* Internal flash page size. */
  87:../asf/sam/services/flash_efc/flash_efc.c **** # define IFLASH_PAGE_SIZE     IFLASH0_PAGE_SIZE
ARM GAS  /tmp/ccfM1LZ3.s 			page 3


  88:../asf/sam/services/flash_efc/flash_efc.c **** /* Internal flash lock region size. */
  89:../asf/sam/services/flash_efc/flash_efc.c **** # define IFLASH_LOCK_REGION_SIZE     IFLASH0_LOCK_REGION_SIZE
  90:../asf/sam/services/flash_efc/flash_efc.c **** #elif (SAM3XA || SAM3U4)
  91:../asf/sam/services/flash_efc/flash_efc.c **** /* Internal Flash Controller 0. */
  92:../asf/sam/services/flash_efc/flash_efc.c **** # define EFC     EFC0
  93:../asf/sam/services/flash_efc/flash_efc.c **** /* The max GPNVM number. */
  94:../asf/sam/services/flash_efc/flash_efc.c **** # define GPNVM_NUM_MAX        3
  95:../asf/sam/services/flash_efc/flash_efc.c **** /* Internal Flash 0 base address. */
  96:../asf/sam/services/flash_efc/flash_efc.c **** # define IFLASH_ADDR     IFLASH0_ADDR
  97:../asf/sam/services/flash_efc/flash_efc.c **** /* Internal flash page size. */
  98:../asf/sam/services/flash_efc/flash_efc.c **** # define IFLASH_PAGE_SIZE     IFLASH0_PAGE_SIZE
  99:../asf/sam/services/flash_efc/flash_efc.c **** /* Internal flash lock region size. */
 100:../asf/sam/services/flash_efc/flash_efc.c **** # define IFLASH_LOCK_REGION_SIZE     IFLASH0_LOCK_REGION_SIZE
 101:../asf/sam/services/flash_efc/flash_efc.c **** #elif (SAM3U)
 102:../asf/sam/services/flash_efc/flash_efc.c **** /* There is no EFC1 for SAM3U except for SAM3U4 */
 103:../asf/sam/services/flash_efc/flash_efc.c **** # undef EFC1
 104:../asf/sam/services/flash_efc/flash_efc.c **** /* Internal Flash Controller 0. */
 105:../asf/sam/services/flash_efc/flash_efc.c **** # define EFC     EFC0
 106:../asf/sam/services/flash_efc/flash_efc.c **** /* The max GPNVM number. */
 107:../asf/sam/services/flash_efc/flash_efc.c **** # define GPNVM_NUM_MAX        2
 108:../asf/sam/services/flash_efc/flash_efc.c **** /* Internal Flash 0 base address. */
 109:../asf/sam/services/flash_efc/flash_efc.c **** # define IFLASH_ADDR     IFLASH0_ADDR
 110:../asf/sam/services/flash_efc/flash_efc.c **** /* Internal flash page size. */
 111:../asf/sam/services/flash_efc/flash_efc.c **** # define IFLASH_PAGE_SIZE     IFLASH0_PAGE_SIZE
 112:../asf/sam/services/flash_efc/flash_efc.c **** /* Internal flash lock region size. */
 113:../asf/sam/services/flash_efc/flash_efc.c **** # define IFLASH_LOCK_REGION_SIZE     IFLASH0_LOCK_REGION_SIZE
 114:../asf/sam/services/flash_efc/flash_efc.c **** #elif (SAM3S8 || SAM3SD8)
 115:../asf/sam/services/flash_efc/flash_efc.c **** /* The max GPNVM number. */
 116:../asf/sam/services/flash_efc/flash_efc.c **** # define GPNVM_NUM_MAX        3
 117:../asf/sam/services/flash_efc/flash_efc.c **** /* Internal flash page size. */
 118:../asf/sam/services/flash_efc/flash_efc.c **** # define IFLASH_PAGE_SIZE     IFLASH0_PAGE_SIZE
 119:../asf/sam/services/flash_efc/flash_efc.c **** /* Internal flash lock region size. */
 120:../asf/sam/services/flash_efc/flash_efc.c **** # define IFLASH_LOCK_REGION_SIZE     IFLASH0_LOCK_REGION_SIZE
 121:../asf/sam/services/flash_efc/flash_efc.c **** #elif (SAM4C32 || SAM4CMP32 || SAM4CMS32)
 122:../asf/sam/services/flash_efc/flash_efc.c **** /* The max GPNVM number SAM4C(M)32. */
 123:../asf/sam/services/flash_efc/flash_efc.c **** # define GPNVM_NUM_MAX        3
 124:../asf/sam/services/flash_efc/flash_efc.c **** #elif (SAMG)
 125:../asf/sam/services/flash_efc/flash_efc.c **** /* The max GPNVM number SAMG. */
 126:../asf/sam/services/flash_efc/flash_efc.c **** # define GPNVM_NUM_MAX        8
 127:../asf/sam/services/flash_efc/flash_efc.c **** #elif (SAMV71 || SAMV70 || SAMS70 || SAME70)
 128:../asf/sam/services/flash_efc/flash_efc.c **** /* The max GPNVM number SAMV/S/E. */
 129:../asf/sam/services/flash_efc/flash_efc.c **** # define GPNVM_NUM_MAX        9
 130:../asf/sam/services/flash_efc/flash_efc.c **** #else
 131:../asf/sam/services/flash_efc/flash_efc.c **** /* The max GPNVM number. */
 132:../asf/sam/services/flash_efc/flash_efc.c **** # define GPNVM_NUM_MAX        2
 133:../asf/sam/services/flash_efc/flash_efc.c **** #endif
 134:../asf/sam/services/flash_efc/flash_efc.c **** 
 135:../asf/sam/services/flash_efc/flash_efc.c **** #if (SAM4C || SAM4CP || SAM4CM)
 136:../asf/sam/services/flash_efc/flash_efc.c **** #if (SAM4C32 || SAM4CMP32 || SAM4CMS32)
 137:../asf/sam/services/flash_efc/flash_efc.c **** # define EFC     EFC0
 138:../asf/sam/services/flash_efc/flash_efc.c **** /* Internal Flash 0 base address. */
 139:../asf/sam/services/flash_efc/flash_efc.c **** # define IFLASH0_ADDR    IFLASH0_CNC_ADDR
 140:../asf/sam/services/flash_efc/flash_efc.c **** # define IFLASH1_ADDR    IFLASH1_CNC_ADDR
 141:../asf/sam/services/flash_efc/flash_efc.c **** # define IFLASH_ADDR     IFLASH0_ADDR
 142:../asf/sam/services/flash_efc/flash_efc.c **** /* Internal flash page size. */
 143:../asf/sam/services/flash_efc/flash_efc.c **** # define IFLASH_PAGE_SIZE     IFLASH0_PAGE_SIZE
 144:../asf/sam/services/flash_efc/flash_efc.c **** /* Internal flash lock region size. */
ARM GAS  /tmp/ccfM1LZ3.s 			page 4


 145:../asf/sam/services/flash_efc/flash_efc.c **** # define IFLASH_LOCK_REGION_SIZE     IFLASH0_LOCK_REGION_SIZE
 146:../asf/sam/services/flash_efc/flash_efc.c **** #else
 147:../asf/sam/services/flash_efc/flash_efc.c **** #define IFLASH_ADDR  IFLASH_CNC_ADDR
 148:../asf/sam/services/flash_efc/flash_efc.c **** #endif
 149:../asf/sam/services/flash_efc/flash_efc.c **** #endif
 150:../asf/sam/services/flash_efc/flash_efc.c **** 
 151:../asf/sam/services/flash_efc/flash_efc.c **** /* Flash page buffer for alignment */
 152:../asf/sam/services/flash_efc/flash_efc.c **** static uint32_t gs_ul_page_buffer[IFLASH_PAGE_SIZE / sizeof(uint32_t)];
 153:../asf/sam/services/flash_efc/flash_efc.c **** 
 154:../asf/sam/services/flash_efc/flash_efc.c **** /**
 155:../asf/sam/services/flash_efc/flash_efc.c ****  * \brief Translate the given flash address to page and offset values.
 156:../asf/sam/services/flash_efc/flash_efc.c ****  * \note pus_page and pus_offset must not be null in order to store the
 157:../asf/sam/services/flash_efc/flash_efc.c ****  * corresponding values.
 158:../asf/sam/services/flash_efc/flash_efc.c ****  *
 159:../asf/sam/services/flash_efc/flash_efc.c ****  * \param pp_efc Pointer to an EFC pointer.
 160:../asf/sam/services/flash_efc/flash_efc.c ****  * \param ul_addr Address to translate.
 161:../asf/sam/services/flash_efc/flash_efc.c ****  * \param pus_page The first page accessed.
 162:../asf/sam/services/flash_efc/flash_efc.c ****  * \param pus_offset Byte offset in the first page.
 163:../asf/sam/services/flash_efc/flash_efc.c ****  */
 164:../asf/sam/services/flash_efc/flash_efc.c **** static void translate_address(Efc **pp_efc, uint32_t ul_addr,
 165:../asf/sam/services/flash_efc/flash_efc.c **** 		uint16_t *pus_page, uint16_t *pus_offset)
 166:../asf/sam/services/flash_efc/flash_efc.c **** {
 167:../asf/sam/services/flash_efc/flash_efc.c **** 	Efc *p_efc;
 168:../asf/sam/services/flash_efc/flash_efc.c **** 	uint16_t us_page;
 169:../asf/sam/services/flash_efc/flash_efc.c **** 	uint16_t us_offset;
 170:../asf/sam/services/flash_efc/flash_efc.c **** 
 171:../asf/sam/services/flash_efc/flash_efc.c **** #if (SAM3XA || SAM3U4)
 172:../asf/sam/services/flash_efc/flash_efc.c **** 	if (ul_addr >= IFLASH1_ADDR) {
 173:../asf/sam/services/flash_efc/flash_efc.c **** 		p_efc = EFC1;
 174:../asf/sam/services/flash_efc/flash_efc.c **** 		us_page = (ul_addr - IFLASH1_ADDR) / IFLASH1_PAGE_SIZE;
 175:../asf/sam/services/flash_efc/flash_efc.c **** 		us_offset = (ul_addr - IFLASH1_ADDR) % IFLASH1_PAGE_SIZE;
 176:../asf/sam/services/flash_efc/flash_efc.c **** 	} else {
 177:../asf/sam/services/flash_efc/flash_efc.c **** 		p_efc = EFC0;
 178:../asf/sam/services/flash_efc/flash_efc.c **** 		us_page = (ul_addr - IFLASH0_ADDR) / IFLASH0_PAGE_SIZE;
 179:../asf/sam/services/flash_efc/flash_efc.c **** 		us_offset = (ul_addr - IFLASH0_ADDR) % IFLASH0_PAGE_SIZE;
 180:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 181:../asf/sam/services/flash_efc/flash_efc.c **** #elif (SAM4SD16 || SAM4SD32 || SAM4C32 || SAM4CMP32 || SAM4CMS32)
 182:../asf/sam/services/flash_efc/flash_efc.c **** 	uint32_t uc_gpnvm2;
 183:../asf/sam/services/flash_efc/flash_efc.c **** 	uc_gpnvm2 = flash_is_gpnvm_set(2);
 184:../asf/sam/services/flash_efc/flash_efc.c **** 	if (ul_addr >= IFLASH1_ADDR) {
 185:../asf/sam/services/flash_efc/flash_efc.c **** 		if(uc_gpnvm2 == FLASH_RC_YES) {
 186:../asf/sam/services/flash_efc/flash_efc.c **** 			p_efc = EFC0;
 187:../asf/sam/services/flash_efc/flash_efc.c **** 		} else {
 188:../asf/sam/services/flash_efc/flash_efc.c **** 			p_efc = EFC1;
 189:../asf/sam/services/flash_efc/flash_efc.c **** 		}
 190:../asf/sam/services/flash_efc/flash_efc.c **** 		us_page = (ul_addr - IFLASH1_ADDR) / IFLASH1_PAGE_SIZE;
 191:../asf/sam/services/flash_efc/flash_efc.c **** 		us_offset = (ul_addr - IFLASH1_ADDR) % IFLASH1_PAGE_SIZE;
 192:../asf/sam/services/flash_efc/flash_efc.c **** 	} else {
 193:../asf/sam/services/flash_efc/flash_efc.c **** 		if(uc_gpnvm2 == FLASH_RC_YES) {
 194:../asf/sam/services/flash_efc/flash_efc.c **** 			p_efc = EFC1;
 195:../asf/sam/services/flash_efc/flash_efc.c **** 		} else {
 196:../asf/sam/services/flash_efc/flash_efc.c **** 			p_efc = EFC0;
 197:../asf/sam/services/flash_efc/flash_efc.c **** 		}
 198:../asf/sam/services/flash_efc/flash_efc.c **** 		us_page = (ul_addr - IFLASH0_ADDR) / IFLASH0_PAGE_SIZE;
 199:../asf/sam/services/flash_efc/flash_efc.c **** 		us_offset = (ul_addr - IFLASH0_ADDR) % IFLASH0_PAGE_SIZE;
 200:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 201:../asf/sam/services/flash_efc/flash_efc.c **** #elif (SAM3S8 || SAM3SD8)
ARM GAS  /tmp/ccfM1LZ3.s 			page 5


 202:../asf/sam/services/flash_efc/flash_efc.c **** 	p_efc = EFC;
 203:../asf/sam/services/flash_efc/flash_efc.c **** 	us_page = (ul_addr - IFLASH0_ADDR) / IFLASH0_PAGE_SIZE;
 204:../asf/sam/services/flash_efc/flash_efc.c **** 	us_offset = (ul_addr - IFLASH0_ADDR) % IFLASH0_PAGE_SIZE;
 205:../asf/sam/services/flash_efc/flash_efc.c **** #else
 206:../asf/sam/services/flash_efc/flash_efc.c **** 	Assert(ul_addr >= IFLASH_ADDR);
 207:../asf/sam/services/flash_efc/flash_efc.c **** 	Assert(ul_addr <= (IFLASH_ADDR + IFLASH_SIZE));
 208:../asf/sam/services/flash_efc/flash_efc.c **** 
 209:../asf/sam/services/flash_efc/flash_efc.c **** 	p_efc = EFC;
 210:../asf/sam/services/flash_efc/flash_efc.c **** 	us_page = (ul_addr - IFLASH_ADDR) / IFLASH_PAGE_SIZE;
 211:../asf/sam/services/flash_efc/flash_efc.c **** 	us_offset = (ul_addr - IFLASH_ADDR) % IFLASH_PAGE_SIZE;
 212:../asf/sam/services/flash_efc/flash_efc.c **** #endif
 213:../asf/sam/services/flash_efc/flash_efc.c **** 
 214:../asf/sam/services/flash_efc/flash_efc.c **** 	/* Store values */
 215:../asf/sam/services/flash_efc/flash_efc.c **** 	if (pp_efc) {
 216:../asf/sam/services/flash_efc/flash_efc.c **** 		*pp_efc = p_efc;
 217:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 218:../asf/sam/services/flash_efc/flash_efc.c **** 
 219:../asf/sam/services/flash_efc/flash_efc.c **** 	if (pus_page) {
 220:../asf/sam/services/flash_efc/flash_efc.c **** 		*pus_page = us_page;
 221:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 222:../asf/sam/services/flash_efc/flash_efc.c **** 
 223:../asf/sam/services/flash_efc/flash_efc.c **** 	if (pus_offset) {
 224:../asf/sam/services/flash_efc/flash_efc.c **** 		*pus_offset = us_offset;
 225:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 226:../asf/sam/services/flash_efc/flash_efc.c **** }
 227:../asf/sam/services/flash_efc/flash_efc.c **** 
 228:../asf/sam/services/flash_efc/flash_efc.c **** /**
 229:../asf/sam/services/flash_efc/flash_efc.c ****  * \brief Compute the address of a flash by the given page and offset.
 230:../asf/sam/services/flash_efc/flash_efc.c ****  *
 231:../asf/sam/services/flash_efc/flash_efc.c ****  * \param p_efc Pointer to an EFC instance.
 232:../asf/sam/services/flash_efc/flash_efc.c ****  * \param us_page Page number.
 233:../asf/sam/services/flash_efc/flash_efc.c ****  * \param us_offset Byte offset inside page.
 234:../asf/sam/services/flash_efc/flash_efc.c ****  * \param pul_addr Computed address (optional).
 235:../asf/sam/services/flash_efc/flash_efc.c ****  */
 236:../asf/sam/services/flash_efc/flash_efc.c **** static void compute_address(Efc *p_efc, uint16_t us_page, uint16_t us_offset,
 237:../asf/sam/services/flash_efc/flash_efc.c **** 		uint32_t *pul_addr)
 238:../asf/sam/services/flash_efc/flash_efc.c **** {
 239:../asf/sam/services/flash_efc/flash_efc.c **** 	uint32_t ul_addr;
 240:../asf/sam/services/flash_efc/flash_efc.c **** 
 241:../asf/sam/services/flash_efc/flash_efc.c **** /* Dual bank flash */
 242:../asf/sam/services/flash_efc/flash_efc.c **** #ifdef EFC1
 243:../asf/sam/services/flash_efc/flash_efc.c **** 	/* Compute address */
 244:../asf/sam/services/flash_efc/flash_efc.c **** #if (SAM4SD16 || SAM4SD32 || SAM4C32 || SAM4CMP32 || SAM4CMS32)
 245:../asf/sam/services/flash_efc/flash_efc.c **** 	uint32_t uc_gpnvm2;
 246:../asf/sam/services/flash_efc/flash_efc.c **** 	uc_gpnvm2 = flash_is_gpnvm_set(2);
 247:../asf/sam/services/flash_efc/flash_efc.c **** 	if (p_efc == EFC0) {
 248:../asf/sam/services/flash_efc/flash_efc.c **** 		if(uc_gpnvm2 == FLASH_RC_YES) {
 249:../asf/sam/services/flash_efc/flash_efc.c **** 			ul_addr = IFLASH1_ADDR + us_page * IFLASH_PAGE_SIZE + us_offset;
 250:../asf/sam/services/flash_efc/flash_efc.c **** 		} else {
 251:../asf/sam/services/flash_efc/flash_efc.c **** 			ul_addr = IFLASH0_ADDR + us_page * IFLASH_PAGE_SIZE + us_offset;
 252:../asf/sam/services/flash_efc/flash_efc.c **** 		}
 253:../asf/sam/services/flash_efc/flash_efc.c **** 	} else {
 254:../asf/sam/services/flash_efc/flash_efc.c **** 		if(uc_gpnvm2 == FLASH_RC_YES) {
 255:../asf/sam/services/flash_efc/flash_efc.c **** 			ul_addr = IFLASH0_ADDR + us_page * IFLASH_PAGE_SIZE + us_offset;
 256:../asf/sam/services/flash_efc/flash_efc.c **** 		} else {
 257:../asf/sam/services/flash_efc/flash_efc.c **** 			ul_addr = IFLASH1_ADDR + us_page * IFLASH_PAGE_SIZE + us_offset;
 258:../asf/sam/services/flash_efc/flash_efc.c **** 		}
ARM GAS  /tmp/ccfM1LZ3.s 			page 6


 259:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 260:../asf/sam/services/flash_efc/flash_efc.c **** #else
 261:../asf/sam/services/flash_efc/flash_efc.c **** 	ul_addr = (p_efc == EFC0) ?
 262:../asf/sam/services/flash_efc/flash_efc.c **** 			IFLASH0_ADDR + us_page * IFLASH_PAGE_SIZE + us_offset :
 263:../asf/sam/services/flash_efc/flash_efc.c **** 			IFLASH1_ADDR + us_page * IFLASH_PAGE_SIZE + us_offset;
 264:../asf/sam/services/flash_efc/flash_efc.c **** #endif
 265:../asf/sam/services/flash_efc/flash_efc.c **** /* One bank flash */
 266:../asf/sam/services/flash_efc/flash_efc.c **** #else
 267:../asf/sam/services/flash_efc/flash_efc.c **** 	/* avoid Cppcheck Warning */
 268:../asf/sam/services/flash_efc/flash_efc.c **** 	UNUSED(p_efc);
 269:../asf/sam/services/flash_efc/flash_efc.c **** 	/* Compute address */
 270:../asf/sam/services/flash_efc/flash_efc.c **** 	ul_addr = IFLASH_ADDR + us_page * IFLASH_PAGE_SIZE + us_offset;
 271:../asf/sam/services/flash_efc/flash_efc.c **** #endif
 272:../asf/sam/services/flash_efc/flash_efc.c **** 
 273:../asf/sam/services/flash_efc/flash_efc.c **** 	/* Store result */
 274:../asf/sam/services/flash_efc/flash_efc.c **** 	if (pul_addr != NULL) {
 275:../asf/sam/services/flash_efc/flash_efc.c **** 		*pul_addr = ul_addr;
 276:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 277:../asf/sam/services/flash_efc/flash_efc.c **** }
 278:../asf/sam/services/flash_efc/flash_efc.c **** 
 279:../asf/sam/services/flash_efc/flash_efc.c **** /**
 280:../asf/sam/services/flash_efc/flash_efc.c ****  * \brief Compute the lock range associated with the given address range.
 281:../asf/sam/services/flash_efc/flash_efc.c ****  *
 282:../asf/sam/services/flash_efc/flash_efc.c ****  * \param ul_start Start address of lock range.
 283:../asf/sam/services/flash_efc/flash_efc.c ****  * \param ul_end End address of lock range.
 284:../asf/sam/services/flash_efc/flash_efc.c ****  * \param pul_actual_start Actual start address of lock range.
 285:../asf/sam/services/flash_efc/flash_efc.c ****  * \param pul_actual_end Actual end address of lock range.
 286:../asf/sam/services/flash_efc/flash_efc.c ****  */
 287:../asf/sam/services/flash_efc/flash_efc.c **** static void compute_lock_range(uint32_t ul_start, uint32_t ul_end,
 288:../asf/sam/services/flash_efc/flash_efc.c **** 		uint32_t *pul_actual_start, uint32_t *pul_actual_end)
 289:../asf/sam/services/flash_efc/flash_efc.c **** {
 290:../asf/sam/services/flash_efc/flash_efc.c **** 	uint32_t ul_actual_start, ul_actual_end;
 291:../asf/sam/services/flash_efc/flash_efc.c **** 
 292:../asf/sam/services/flash_efc/flash_efc.c **** 	ul_actual_start = ul_start - (ul_start % IFLASH_LOCK_REGION_SIZE);
 293:../asf/sam/services/flash_efc/flash_efc.c **** 	ul_actual_end = ul_end - (ul_end % IFLASH_LOCK_REGION_SIZE) +
 294:../asf/sam/services/flash_efc/flash_efc.c **** 			IFLASH_LOCK_REGION_SIZE - 1;
 295:../asf/sam/services/flash_efc/flash_efc.c **** 
 296:../asf/sam/services/flash_efc/flash_efc.c **** 	if (pul_actual_start) {
 297:../asf/sam/services/flash_efc/flash_efc.c **** 		*pul_actual_start = ul_actual_start;
 298:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 299:../asf/sam/services/flash_efc/flash_efc.c **** 
 300:../asf/sam/services/flash_efc/flash_efc.c **** 	if (pul_actual_end) {
 301:../asf/sam/services/flash_efc/flash_efc.c **** 		*pul_actual_end = ul_actual_end;
 302:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 303:../asf/sam/services/flash_efc/flash_efc.c **** }
 304:../asf/sam/services/flash_efc/flash_efc.c **** 
 305:../asf/sam/services/flash_efc/flash_efc.c **** /**
 306:../asf/sam/services/flash_efc/flash_efc.c ****  * \brief Initialize the flash service.
 307:../asf/sam/services/flash_efc/flash_efc.c ****  *
 308:../asf/sam/services/flash_efc/flash_efc.c ****  * \param ul_mode FLASH_ACCESS_MODE_128 or FLASH_ACCESS_MODE_64.
 309:../asf/sam/services/flash_efc/flash_efc.c ****  * \param ul_fws The number of wait states in cycle (no shift).
 310:../asf/sam/services/flash_efc/flash_efc.c ****  *
 311:../asf/sam/services/flash_efc/flash_efc.c ****  * \return 0 if successful; otherwise returns an error code.
 312:../asf/sam/services/flash_efc/flash_efc.c ****  */
 313:../asf/sam/services/flash_efc/flash_efc.c **** uint32_t flash_init(uint32_t ul_mode, uint32_t ul_fws)
 314:../asf/sam/services/flash_efc/flash_efc.c **** {
  28              		.loc 1 314 0
ARM GAS  /tmp/ccfM1LZ3.s 			page 7


  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              	.LVL0:
 315:../asf/sam/services/flash_efc/flash_efc.c **** 	efc_init(EFC, ul_mode, ul_fws);
  33              		.loc 1 315 0
  34 0000 0A46     		mov	r2, r1
  35 0002 0146     		mov	r1, r0
  36              	.LVL1:
  37 0004 0248     		ldr	r0, .L3
  38              	.LVL2:
 314:../asf/sam/services/flash_efc/flash_efc.c **** 	efc_init(EFC, ul_mode, ul_fws);
  39              		.loc 1 314 0
  40 0006 08B5     		push	{r3, lr}
  41              		.cfi_def_cfa_offset 8
  42              		.cfi_offset 3, -8
  43              		.cfi_offset 14, -4
  44              		.loc 1 315 0
  45 0008 FFF7FEFF 		bl	efc_init
  46              	.LVL3:
 316:../asf/sam/services/flash_efc/flash_efc.c **** 
 317:../asf/sam/services/flash_efc/flash_efc.c **** #ifdef EFC1
 318:../asf/sam/services/flash_efc/flash_efc.c **** 	efc_init(EFC1, ul_mode, ul_fws);
 319:../asf/sam/services/flash_efc/flash_efc.c **** #endif
 320:../asf/sam/services/flash_efc/flash_efc.c **** 
 321:../asf/sam/services/flash_efc/flash_efc.c **** 	return FLASH_RC_OK;
 322:../asf/sam/services/flash_efc/flash_efc.c **** }
  47              		.loc 1 322 0
  48 000c 0020     		movs	r0, #0
  49 000e 08BD     		pop	{r3, pc}
  50              	.L4:
  51              		.align	2
  52              	.L3:
  53 0010 000C0E40 		.word	1074662400
  54              		.cfi_endproc
  55              	.LFE165:
  56              		.size	flash_init, .-flash_init
  57              		.section	.text.flash_set_wait_state,"ax",%progbits
  58              		.align	1
  59              		.p2align 2,,3
  60              		.global	flash_set_wait_state
  61              		.syntax unified
  62              		.thumb
  63              		.thumb_func
  64              		.fpu fpv5-d16
  65              		.type	flash_set_wait_state, %function
  66              	flash_set_wait_state:
  67              	.LFB166:
 323:../asf/sam/services/flash_efc/flash_efc.c **** 
 324:../asf/sam/services/flash_efc/flash_efc.c **** /**
 325:../asf/sam/services/flash_efc/flash_efc.c ****  * \brief Set flash wait state.
 326:../asf/sam/services/flash_efc/flash_efc.c ****  *
 327:../asf/sam/services/flash_efc/flash_efc.c ****  * \param ul_address Flash bank start address.
 328:../asf/sam/services/flash_efc/flash_efc.c ****  * \param ul_fws The number of wait states in cycle (no shift).
 329:../asf/sam/services/flash_efc/flash_efc.c ****  *
 330:../asf/sam/services/flash_efc/flash_efc.c ****  * \return 0 if successful; otherwise returns an error code.
 331:../asf/sam/services/flash_efc/flash_efc.c ****  */
ARM GAS  /tmp/ccfM1LZ3.s 			page 8


 332:../asf/sam/services/flash_efc/flash_efc.c **** uint32_t flash_set_wait_state(uint32_t ul_address, uint32_t ul_fws)
 333:../asf/sam/services/flash_efc/flash_efc.c **** {
  68              		.loc 1 333 0
  69              		.cfi_startproc
  70              		@ args = 0, pretend = 0, frame = 0
  71              		@ frame_needed = 0, uses_anonymous_args = 0
  72              	.LVL4:
  73 0000 08B5     		push	{r3, lr}
  74              		.cfi_def_cfa_offset 8
  75              		.cfi_offset 3, -8
  76              		.cfi_offset 14, -4
 334:../asf/sam/services/flash_efc/flash_efc.c **** 	Efc *p_efc;
 335:../asf/sam/services/flash_efc/flash_efc.c **** 
 336:../asf/sam/services/flash_efc/flash_efc.c **** 	translate_address(&p_efc, ul_address, NULL, NULL);
 337:../asf/sam/services/flash_efc/flash_efc.c **** 	efc_set_wait_state(p_efc, ul_fws);
  77              		.loc 1 337 0
  78 0002 0248     		ldr	r0, .L7
  79              	.LVL5:
  80 0004 FFF7FEFF 		bl	efc_set_wait_state
  81              	.LVL6:
 338:../asf/sam/services/flash_efc/flash_efc.c **** 
 339:../asf/sam/services/flash_efc/flash_efc.c **** 	return FLASH_RC_OK;
 340:../asf/sam/services/flash_efc/flash_efc.c **** }
  82              		.loc 1 340 0
  83 0008 0020     		movs	r0, #0
  84 000a 08BD     		pop	{r3, pc}
  85              	.L8:
  86              		.align	2
  87              	.L7:
  88 000c 000C0E40 		.word	1074662400
  89              		.cfi_endproc
  90              	.LFE166:
  91              		.size	flash_set_wait_state, .-flash_set_wait_state
  92              		.section	.text.flash_set_wait_state_adaptively,"ax",%progbits
  93              		.align	1
  94              		.p2align 2,,3
  95              		.global	flash_set_wait_state_adaptively
  96              		.syntax unified
  97              		.thumb
  98              		.thumb_func
  99              		.fpu fpv5-d16
 100              		.type	flash_set_wait_state_adaptively, %function
 101              	flash_set_wait_state_adaptively:
 102              	.LFB167:
 341:../asf/sam/services/flash_efc/flash_efc.c **** 
 342:../asf/sam/services/flash_efc/flash_efc.c **** /**
 343:../asf/sam/services/flash_efc/flash_efc.c ****  * \brief Set flash wait state.
 344:../asf/sam/services/flash_efc/flash_efc.c ****  *
 345:../asf/sam/services/flash_efc/flash_efc.c ****  * \param ul_address Flash bank start address.
 346:../asf/sam/services/flash_efc/flash_efc.c ****  * \param ul_fws The number of wait states in cycle (no shift).
 347:../asf/sam/services/flash_efc/flash_efc.c ****  *
 348:../asf/sam/services/flash_efc/flash_efc.c ****  * \return 0 if successful; otherwise returns an error code.
 349:../asf/sam/services/flash_efc/flash_efc.c ****  */
 350:../asf/sam/services/flash_efc/flash_efc.c **** uint32_t flash_set_wait_state_adaptively(uint32_t ul_address)
 351:../asf/sam/services/flash_efc/flash_efc.c **** {
 103              		.loc 1 351 0
 104              		.cfi_startproc
ARM GAS  /tmp/ccfM1LZ3.s 			page 9


 105              		@ args = 0, pretend = 0, frame = 0
 106              		@ frame_needed = 0, uses_anonymous_args = 0
 107              	.LVL7:
 108 0000 08B5     		push	{r3, lr}
 109              		.cfi_def_cfa_offset 8
 110              		.cfi_offset 3, -8
 111              		.cfi_offset 14, -4
 352:../asf/sam/services/flash_efc/flash_efc.c **** 	Efc *p_efc;
 353:../asf/sam/services/flash_efc/flash_efc.c **** 	uint32_t clock = sysclk_get_cpu_hz();
 354:../asf/sam/services/flash_efc/flash_efc.c **** 
 355:../asf/sam/services/flash_efc/flash_efc.c **** 	translate_address(&p_efc, ul_address, NULL, NULL);
 356:../asf/sam/services/flash_efc/flash_efc.c **** 
 357:../asf/sam/services/flash_efc/flash_efc.c **** 	/* Set FWS for embedded Flash access according to operating frequency */
 358:../asf/sam/services/flash_efc/flash_efc.c **** 	if (clock < CHIP_FREQ_FWS_0) {
 359:../asf/sam/services/flash_efc/flash_efc.c **** 		efc_set_wait_state(p_efc, 0);
 360:../asf/sam/services/flash_efc/flash_efc.c **** 	} else if (clock < CHIP_FREQ_FWS_1) {
 361:../asf/sam/services/flash_efc/flash_efc.c **** 		efc_set_wait_state(p_efc, 1);
 362:../asf/sam/services/flash_efc/flash_efc.c **** 	} else if (clock < CHIP_FREQ_FWS_2) {
 363:../asf/sam/services/flash_efc/flash_efc.c **** 		efc_set_wait_state(p_efc, 2);
 364:../asf/sam/services/flash_efc/flash_efc.c **** #if (SAM3XA || SAM3U)
 365:../asf/sam/services/flash_efc/flash_efc.c **** 	} else if (clock < CHIP_FREQ_FWS_3) {
 366:../asf/sam/services/flash_efc/flash_efc.c **** 		efc_set_wait_state(p_efc, 3);
 367:../asf/sam/services/flash_efc/flash_efc.c **** 	} else {
 368:../asf/sam/services/flash_efc/flash_efc.c **** 		efc_set_wait_state(p_efc, 4);
 369:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 370:../asf/sam/services/flash_efc/flash_efc.c **** #elif (SAM4S || SAM4E || SAM4N || SAM4C || SAM4CP || SAM4CM || \
 371:../asf/sam/services/flash_efc/flash_efc.c **** 	 SAMV71 || SAMV70 || SAMS70 || SAME70)
 372:../asf/sam/services/flash_efc/flash_efc.c **** 	} else if (clock < CHIP_FREQ_FWS_3) {
 373:../asf/sam/services/flash_efc/flash_efc.c **** 		efc_set_wait_state(p_efc, 3);
 374:../asf/sam/services/flash_efc/flash_efc.c **** 	} else if (clock < CHIP_FREQ_FWS_4) {
 375:../asf/sam/services/flash_efc/flash_efc.c **** 		efc_set_wait_state(p_efc, 4);
 376:../asf/sam/services/flash_efc/flash_efc.c **** 	} else {
 377:../asf/sam/services/flash_efc/flash_efc.c **** 		efc_set_wait_state(p_efc, 5);
 112              		.loc 1 377 0
 113 0002 0521     		movs	r1, #5
 114 0004 0248     		ldr	r0, .L11
 115              	.LVL8:
 116 0006 FFF7FEFF 		bl	efc_set_wait_state
 117              	.LVL9:
 378:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 379:../asf/sam/services/flash_efc/flash_efc.c **** #else
 380:../asf/sam/services/flash_efc/flash_efc.c **** 	} else {
 381:../asf/sam/services/flash_efc/flash_efc.c **** 		efc_set_wait_state(p_efc, 3);
 382:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 383:../asf/sam/services/flash_efc/flash_efc.c **** #endif
 384:../asf/sam/services/flash_efc/flash_efc.c **** 
 385:../asf/sam/services/flash_efc/flash_efc.c **** 	return FLASH_RC_OK;
 386:../asf/sam/services/flash_efc/flash_efc.c **** }
 118              		.loc 1 386 0
 119 000a 0020     		movs	r0, #0
 120 000c 08BD     		pop	{r3, pc}
 121              	.L12:
 122 000e 00BF     		.align	2
 123              	.L11:
 124 0010 000C0E40 		.word	1074662400
 125              		.cfi_endproc
 126              	.LFE167:
ARM GAS  /tmp/ccfM1LZ3.s 			page 10


 127              		.size	flash_set_wait_state_adaptively, .-flash_set_wait_state_adaptively
 128              		.section	.text.flash_get_wait_state,"ax",%progbits
 129              		.align	1
 130              		.p2align 2,,3
 131              		.global	flash_get_wait_state
 132              		.syntax unified
 133              		.thumb
 134              		.thumb_func
 135              		.fpu fpv5-d16
 136              		.type	flash_get_wait_state, %function
 137              	flash_get_wait_state:
 138              	.LFB168:
 387:../asf/sam/services/flash_efc/flash_efc.c **** 
 388:../asf/sam/services/flash_efc/flash_efc.c **** /**
 389:../asf/sam/services/flash_efc/flash_efc.c ****  * \brief Get flash wait state.
 390:../asf/sam/services/flash_efc/flash_efc.c ****  *
 391:../asf/sam/services/flash_efc/flash_efc.c ****  * \param ul_address Flash bank start address.
 392:../asf/sam/services/flash_efc/flash_efc.c ****  *
 393:../asf/sam/services/flash_efc/flash_efc.c ****  * \return The number of wait states in cycle (no shift).
 394:../asf/sam/services/flash_efc/flash_efc.c ****  */
 395:../asf/sam/services/flash_efc/flash_efc.c **** uint32_t flash_get_wait_state(uint32_t ul_address)
 396:../asf/sam/services/flash_efc/flash_efc.c **** {
 139              		.loc 1 396 0
 140              		.cfi_startproc
 141              		@ args = 0, pretend = 0, frame = 0
 142              		@ frame_needed = 0, uses_anonymous_args = 0
 143              		@ link register save eliminated.
 144              	.LVL10:
 397:../asf/sam/services/flash_efc/flash_efc.c **** 	Efc *p_efc;
 398:../asf/sam/services/flash_efc/flash_efc.c **** 
 399:../asf/sam/services/flash_efc/flash_efc.c **** 	translate_address(&p_efc, ul_address, NULL, NULL);
 400:../asf/sam/services/flash_efc/flash_efc.c **** 	return efc_get_wait_state(p_efc);
 145              		.loc 1 400 0
 146 0000 0148     		ldr	r0, .L14
 147              	.LVL11:
 148 0002 FFF7FEBF 		b	efc_get_wait_state
 149              	.LVL12:
 150              	.L15:
 151 0006 00BF     		.align	2
 152              	.L14:
 153 0008 000C0E40 		.word	1074662400
 154              		.cfi_endproc
 155              	.LFE168:
 156              		.size	flash_get_wait_state, .-flash_get_wait_state
 157              		.section	.text.flash_get_descriptor,"ax",%progbits
 158              		.align	1
 159              		.p2align 2,,3
 160              		.global	flash_get_descriptor
 161              		.syntax unified
 162              		.thumb
 163              		.thumb_func
 164              		.fpu fpv5-d16
 165              		.type	flash_get_descriptor, %function
 166              	flash_get_descriptor:
 167              	.LFB169:
 401:../asf/sam/services/flash_efc/flash_efc.c **** }
 402:../asf/sam/services/flash_efc/flash_efc.c **** 
ARM GAS  /tmp/ccfM1LZ3.s 			page 11


 403:../asf/sam/services/flash_efc/flash_efc.c **** /**
 404:../asf/sam/services/flash_efc/flash_efc.c ****  * \brief Get flash descriptor.
 405:../asf/sam/services/flash_efc/flash_efc.c ****  *
 406:../asf/sam/services/flash_efc/flash_efc.c ****  * \param ul_address Flash bank start address.
 407:../asf/sam/services/flash_efc/flash_efc.c ****  * \param pul_flash_descriptor Pointer to a data buffer to store flash descriptor.
 408:../asf/sam/services/flash_efc/flash_efc.c ****  * \param ul_size Data buffer size in DWORD.
 409:../asf/sam/services/flash_efc/flash_efc.c ****  *
 410:../asf/sam/services/flash_efc/flash_efc.c ****  * \return The actual descriptor length.
 411:../asf/sam/services/flash_efc/flash_efc.c ****  */
 412:../asf/sam/services/flash_efc/flash_efc.c **** uint32_t flash_get_descriptor(uint32_t ul_address,
 413:../asf/sam/services/flash_efc/flash_efc.c **** 		uint32_t *pul_flash_descriptor, uint32_t ul_size)
 414:../asf/sam/services/flash_efc/flash_efc.c **** {
 168              		.loc 1 414 0
 169              		.cfi_startproc
 170              		@ args = 0, pretend = 0, frame = 0
 171              		@ frame_needed = 0, uses_anonymous_args = 0
 172              	.LVL13:
 173 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 174              		.cfi_def_cfa_offset 24
 175              		.cfi_offset 3, -24
 176              		.cfi_offset 4, -20
 177              		.cfi_offset 5, -16
 178              		.cfi_offset 6, -12
 179              		.cfi_offset 7, -8
 180              		.cfi_offset 14, -4
 181              		.loc 1 414 0
 182 0002 1646     		mov	r6, r2
 415:../asf/sam/services/flash_efc/flash_efc.c **** 	Efc *p_efc;
 416:../asf/sam/services/flash_efc/flash_efc.c **** 	uint32_t ul_tmp;
 417:../asf/sam/services/flash_efc/flash_efc.c **** 	uint32_t ul_cnt;
 418:../asf/sam/services/flash_efc/flash_efc.c **** 
 419:../asf/sam/services/flash_efc/flash_efc.c **** 	translate_address(&p_efc, ul_address, NULL, NULL);
 420:../asf/sam/services/flash_efc/flash_efc.c **** 
 421:../asf/sam/services/flash_efc/flash_efc.c **** 	/* Command fails */
 422:../asf/sam/services/flash_efc/flash_efc.c **** 	if (FLASH_RC_OK != efc_perform_command(p_efc, EFC_FCMD_GETD, 0)) {
 183              		.loc 1 422 0
 184 0004 0022     		movs	r2, #0
 185              	.LVL14:
 414:../asf/sam/services/flash_efc/flash_efc.c **** 	Efc *p_efc;
 186              		.loc 1 414 0
 187 0006 0D46     		mov	r5, r1
 188              		.loc 1 422 0
 189 0008 0A48     		ldr	r0, .L29
 190              	.LVL15:
 191 000a 1146     		mov	r1, r2
 192              	.LVL16:
 193 000c FFF7FEFF 		bl	efc_perform_command
 194              	.LVL17:
 195 0010 68B9     		cbnz	r0, .L19
 196 0012 0446     		mov	r4, r0
 423:../asf/sam/services/flash_efc/flash_efc.c **** 		return 0;
 424:../asf/sam/services/flash_efc/flash_efc.c **** 	} else {
 425:../asf/sam/services/flash_efc/flash_efc.c **** 		/* Read until no result */
 426:../asf/sam/services/flash_efc/flash_efc.c **** 		for (ul_cnt = 0;; ul_cnt++) {
 427:../asf/sam/services/flash_efc/flash_efc.c **** 			ul_tmp = efc_get_result(p_efc);
 197              		.loc 1 427 0
 198 0014 074F     		ldr	r7, .L29
ARM GAS  /tmp/ccfM1LZ3.s 			page 12


 199 0016 03E0     		b	.L18
 200              	.LVL18:
 201              	.L28:
 428:../asf/sam/services/flash_efc/flash_efc.c **** 			if ((ul_size > ul_cnt) && (ul_tmp != 0)) {
 202              		.loc 1 428 0
 203 0018 38B1     		cbz	r0, .L16
 426:../asf/sam/services/flash_efc/flash_efc.c **** 			ul_tmp = efc_get_result(p_efc);
 204              		.loc 1 426 0
 205 001a 0134     		adds	r4, r4, #1
 206              	.LVL19:
 429:../asf/sam/services/flash_efc/flash_efc.c **** 				*pul_flash_descriptor++ = ul_tmp;
 207              		.loc 1 429 0
 208 001c 45F8040B 		str	r0, [r5], #4
 209              	.LVL20:
 210              	.L18:
 427:../asf/sam/services/flash_efc/flash_efc.c **** 			if ((ul_size > ul_cnt) && (ul_tmp != 0)) {
 211              		.loc 1 427 0
 212 0020 3846     		mov	r0, r7
 213 0022 FFF7FEFF 		bl	efc_get_result
 214              	.LVL21:
 428:../asf/sam/services/flash_efc/flash_efc.c **** 				*pul_flash_descriptor++ = ul_tmp;
 215              		.loc 1 428 0
 216 0026 B442     		cmp	r4, r6
 217 0028 F6D3     		bcc	.L28
 218              	.L16:
 430:../asf/sam/services/flash_efc/flash_efc.c **** 			} else {
 431:../asf/sam/services/flash_efc/flash_efc.c **** 				break;
 432:../asf/sam/services/flash_efc/flash_efc.c **** 			}
 433:../asf/sam/services/flash_efc/flash_efc.c **** 		}
 434:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 435:../asf/sam/services/flash_efc/flash_efc.c **** 
 436:../asf/sam/services/flash_efc/flash_efc.c **** 	return ul_cnt;
 437:../asf/sam/services/flash_efc/flash_efc.c **** }
 219              		.loc 1 437 0
 220 002a 2046     		mov	r0, r4
 221              	.LVL22:
 222 002c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 223              	.LVL23:
 224              	.L19:
 423:../asf/sam/services/flash_efc/flash_efc.c **** 	} else {
 225              		.loc 1 423 0
 226 002e 0024     		movs	r4, #0
 227              	.LVL24:
 228              		.loc 1 437 0
 229 0030 2046     		mov	r0, r4
 230 0032 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 231              	.LVL25:
 232              	.L30:
 233              		.align	2
 234              	.L29:
 235 0034 000C0E40 		.word	1074662400
 236              		.cfi_endproc
 237              	.LFE169:
 238              		.size	flash_get_descriptor, .-flash_get_descriptor
 239              		.section	.text.flash_get_page_count,"ax",%progbits
 240              		.align	1
 241              		.p2align 2,,3
ARM GAS  /tmp/ccfM1LZ3.s 			page 13


 242              		.global	flash_get_page_count
 243              		.syntax unified
 244              		.thumb
 245              		.thumb_func
 246              		.fpu fpv5-d16
 247              		.type	flash_get_page_count, %function
 248              	flash_get_page_count:
 249              	.LFB170:
 438:../asf/sam/services/flash_efc/flash_efc.c **** 
 439:../asf/sam/services/flash_efc/flash_efc.c **** /**
 440:../asf/sam/services/flash_efc/flash_efc.c ****  * \brief Get flash total page count for the specified bank.
 441:../asf/sam/services/flash_efc/flash_efc.c ****  *
 442:../asf/sam/services/flash_efc/flash_efc.c ****  * \note The flash descriptor must be fetched from flash_get_descriptor
 443:../asf/sam/services/flash_efc/flash_efc.c ****  * function first.
 444:../asf/sam/services/flash_efc/flash_efc.c ****  *
 445:../asf/sam/services/flash_efc/flash_efc.c ****  * \param pul_flash_descriptor Pointer to a flash descriptor.
 446:../asf/sam/services/flash_efc/flash_efc.c ****  *
 447:../asf/sam/services/flash_efc/flash_efc.c ****  * \return The flash total page count.
 448:../asf/sam/services/flash_efc/flash_efc.c ****  */
 449:../asf/sam/services/flash_efc/flash_efc.c **** uint32_t flash_get_page_count(const uint32_t *pul_flash_descriptor)
 450:../asf/sam/services/flash_efc/flash_efc.c **** {
 250              		.loc 1 450 0
 251              		.cfi_startproc
 252              		@ args = 0, pretend = 0, frame = 0
 253              		@ frame_needed = 0, uses_anonymous_args = 0
 254              		@ link register save eliminated.
 255              	.LVL26:
 451:../asf/sam/services/flash_efc/flash_efc.c **** 	return (pul_flash_descriptor[1] / pul_flash_descriptor[2]);
 256              		.loc 1 451 0
 257 0000 4268     		ldr	r2, [r0, #4]
 258 0002 8068     		ldr	r0, [r0, #8]
 259              	.LVL27:
 452:../asf/sam/services/flash_efc/flash_efc.c **** }
 260              		.loc 1 452 0
 261 0004 B2FBF0F0 		udiv	r0, r2, r0
 262 0008 7047     		bx	lr
 263              		.cfi_endproc
 264              	.LFE170:
 265              		.size	flash_get_page_count, .-flash_get_page_count
 266 000a 00BF     		.section	.text.flash_get_page_count_per_region,"ax",%progbits
 267              		.align	1
 268              		.p2align 2,,3
 269              		.global	flash_get_page_count_per_region
 270              		.syntax unified
 271              		.thumb
 272              		.thumb_func
 273              		.fpu fpv5-d16
 274              		.type	flash_get_page_count_per_region, %function
 275              	flash_get_page_count_per_region:
 276              	.LFB171:
 453:../asf/sam/services/flash_efc/flash_efc.c **** 
 454:../asf/sam/services/flash_efc/flash_efc.c **** /**
 455:../asf/sam/services/flash_efc/flash_efc.c ****  * \brief Get flash page count per region (plane) for the specified bank.
 456:../asf/sam/services/flash_efc/flash_efc.c ****  *
 457:../asf/sam/services/flash_efc/flash_efc.c ****  * \note The flash descriptor must be fetched from flash_get_descriptor
 458:../asf/sam/services/flash_efc/flash_efc.c ****  * function first.
 459:../asf/sam/services/flash_efc/flash_efc.c ****  *
ARM GAS  /tmp/ccfM1LZ3.s 			page 14


 460:../asf/sam/services/flash_efc/flash_efc.c ****  * \param pul_flash_descriptor Pointer to a flash descriptor.
 461:../asf/sam/services/flash_efc/flash_efc.c ****  *
 462:../asf/sam/services/flash_efc/flash_efc.c ****  * \return The flash page count per region (plane).
 463:../asf/sam/services/flash_efc/flash_efc.c ****  */
 464:../asf/sam/services/flash_efc/flash_efc.c **** uint32_t flash_get_page_count_per_region(const uint32_t *pul_flash_descriptor)
 465:../asf/sam/services/flash_efc/flash_efc.c **** {
 277              		.loc 1 465 0
 278              		.cfi_startproc
 279              		@ args = 0, pretend = 0, frame = 0
 280              		@ frame_needed = 0, uses_anonymous_args = 0
 281              		@ link register save eliminated.
 282              	.LVL28:
 466:../asf/sam/services/flash_efc/flash_efc.c **** 	return (pul_flash_descriptor[4] / pul_flash_descriptor[2]);
 283              		.loc 1 466 0
 284 0000 0269     		ldr	r2, [r0, #16]
 285 0002 8068     		ldr	r0, [r0, #8]
 286              	.LVL29:
 467:../asf/sam/services/flash_efc/flash_efc.c **** }
 287              		.loc 1 467 0
 288 0004 B2FBF0F0 		udiv	r0, r2, r0
 289 0008 7047     		bx	lr
 290              		.cfi_endproc
 291              	.LFE171:
 292              		.size	flash_get_page_count_per_region, .-flash_get_page_count_per_region
 293 000a 00BF     		.section	.text.flash_get_region_count,"ax",%progbits
 294              		.align	1
 295              		.p2align 2,,3
 296              		.global	flash_get_region_count
 297              		.syntax unified
 298              		.thumb
 299              		.thumb_func
 300              		.fpu fpv5-d16
 301              		.type	flash_get_region_count, %function
 302              	flash_get_region_count:
 303              	.LFB172:
 468:../asf/sam/services/flash_efc/flash_efc.c **** 
 469:../asf/sam/services/flash_efc/flash_efc.c **** /**
 470:../asf/sam/services/flash_efc/flash_efc.c ****  * \brief Get flash region (plane) count for the specified bank.
 471:../asf/sam/services/flash_efc/flash_efc.c ****  *
 472:../asf/sam/services/flash_efc/flash_efc.c ****  * \note The flash descriptor must be fetched from flash_get_descriptor
 473:../asf/sam/services/flash_efc/flash_efc.c ****  * function first.
 474:../asf/sam/services/flash_efc/flash_efc.c ****  *
 475:../asf/sam/services/flash_efc/flash_efc.c ****  * \param pul_flash_descriptor Pointer to a flash descriptor.
 476:../asf/sam/services/flash_efc/flash_efc.c ****  *
 477:../asf/sam/services/flash_efc/flash_efc.c ****  * \return The flash region (plane) count.
 478:../asf/sam/services/flash_efc/flash_efc.c ****  */
 479:../asf/sam/services/flash_efc/flash_efc.c **** uint32_t flash_get_region_count(const uint32_t *pul_flash_descriptor)
 480:../asf/sam/services/flash_efc/flash_efc.c **** {
 304              		.loc 1 480 0
 305              		.cfi_startproc
 306              		@ args = 0, pretend = 0, frame = 0
 307              		@ frame_needed = 0, uses_anonymous_args = 0
 308              		@ link register save eliminated.
 309              	.LVL30:
 481:../asf/sam/services/flash_efc/flash_efc.c **** 	return (pul_flash_descriptor[3]);
 482:../asf/sam/services/flash_efc/flash_efc.c **** }
 310              		.loc 1 482 0
ARM GAS  /tmp/ccfM1LZ3.s 			page 15


 311 0000 C068     		ldr	r0, [r0, #12]
 312              	.LVL31:
 313 0002 7047     		bx	lr
 314              		.cfi_endproc
 315              	.LFE172:
 316              		.size	flash_get_region_count, .-flash_get_region_count
 317              		.section	.text.flash_erase_all,"ax",%progbits
 318              		.align	1
 319              		.p2align 2,,3
 320              		.global	flash_erase_all
 321              		.syntax unified
 322              		.thumb
 323              		.thumb_func
 324              		.fpu fpv5-d16
 325              		.type	flash_erase_all, %function
 326              	flash_erase_all:
 327              	.LFB173:
 483:../asf/sam/services/flash_efc/flash_efc.c **** 
 484:../asf/sam/services/flash_efc/flash_efc.c **** /**
 485:../asf/sam/services/flash_efc/flash_efc.c ****  * \brief Erase the entire flash.
 486:../asf/sam/services/flash_efc/flash_efc.c ****  *
 487:../asf/sam/services/flash_efc/flash_efc.c ****  * \note Only the flash bank including ul_address will be erased. If there are
 488:../asf/sam/services/flash_efc/flash_efc.c ****  * two flash banks, we need to call this function twice with each bank start
 489:../asf/sam/services/flash_efc/flash_efc.c ****  * address.
 490:../asf/sam/services/flash_efc/flash_efc.c ****  *
 491:../asf/sam/services/flash_efc/flash_efc.c ****  * \param ul_address  Flash bank start address.
 492:../asf/sam/services/flash_efc/flash_efc.c ****  *
 493:../asf/sam/services/flash_efc/flash_efc.c ****  * \return 0 if successful; otherwise returns an error code.
 494:../asf/sam/services/flash_efc/flash_efc.c ****  */
 495:../asf/sam/services/flash_efc/flash_efc.c **** uint32_t flash_erase_all(uint32_t ul_address)
 496:../asf/sam/services/flash_efc/flash_efc.c **** {
 328              		.loc 1 496 0
 329              		.cfi_startproc
 330              		@ args = 0, pretend = 0, frame = 0
 331              		@ frame_needed = 0, uses_anonymous_args = 0
 332              	.LVL32:
 333 0000 08B5     		push	{r3, lr}
 334              		.cfi_def_cfa_offset 8
 335              		.cfi_offset 3, -8
 336              		.cfi_offset 14, -4
 497:../asf/sam/services/flash_efc/flash_efc.c **** 	Efc *p_efc;
 498:../asf/sam/services/flash_efc/flash_efc.c **** 
 499:../asf/sam/services/flash_efc/flash_efc.c **** 	translate_address(&p_efc, ul_address, NULL, NULL);
 500:../asf/sam/services/flash_efc/flash_efc.c **** 
 501:../asf/sam/services/flash_efc/flash_efc.c **** 	if (EFC_RC_OK != efc_perform_command(p_efc, EFC_FCMD_EA, 0)) {
 337              		.loc 1 501 0
 338 0002 0022     		movs	r2, #0
 339 0004 0521     		movs	r1, #5
 340 0006 0448     		ldr	r0, .L38
 341              	.LVL33:
 342 0008 FFF7FEFF 		bl	efc_perform_command
 343              	.LVL34:
 502:../asf/sam/services/flash_efc/flash_efc.c **** 		return FLASH_RC_ERROR;
 503:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 504:../asf/sam/services/flash_efc/flash_efc.c **** 
 505:../asf/sam/services/flash_efc/flash_efc.c **** 	return FLASH_RC_OK;
 506:../asf/sam/services/flash_efc/flash_efc.c **** }
ARM GAS  /tmp/ccfM1LZ3.s 			page 16


 344              		.loc 1 506 0
 345 000c 0028     		cmp	r0, #0
 346 000e 14BF     		ite	ne
 347 0010 1020     		movne	r0, #16
 348 0012 0020     		moveq	r0, #0
 349 0014 08BD     		pop	{r3, pc}
 350              	.L39:
 351 0016 00BF     		.align	2
 352              	.L38:
 353 0018 000C0E40 		.word	1074662400
 354              		.cfi_endproc
 355              	.LFE173:
 356              		.size	flash_erase_all, .-flash_erase_all
 357              		.section	.text.flash_erase_page,"ax",%progbits
 358              		.align	1
 359              		.p2align 2,,3
 360              		.global	flash_erase_page
 361              		.syntax unified
 362              		.thumb
 363              		.thumb_func
 364              		.fpu fpv5-d16
 365              		.type	flash_erase_page, %function
 366              	flash_erase_page:
 367              	.LFB174:
 507:../asf/sam/services/flash_efc/flash_efc.c **** 
 508:../asf/sam/services/flash_efc/flash_efc.c **** #if (SAM3S8 || SAM3SD8)
 509:../asf/sam/services/flash_efc/flash_efc.c **** /**
 510:../asf/sam/services/flash_efc/flash_efc.c ****  * \brief Erase the flash by plane.
 511:../asf/sam/services/flash_efc/flash_efc.c ****  *
 512:../asf/sam/services/flash_efc/flash_efc.c ****  * \param ul_address Flash plane start address.
 513:../asf/sam/services/flash_efc/flash_efc.c ****  *
 514:../asf/sam/services/flash_efc/flash_efc.c ****  * \note Erase plane command needs a page number parameter which belongs to
 515:../asf/sam/services/flash_efc/flash_efc.c ****  * the plane to be erased.
 516:../asf/sam/services/flash_efc/flash_efc.c ****  *
 517:../asf/sam/services/flash_efc/flash_efc.c ****  * \return 0 if successful; otherwise returns an error code.
 518:../asf/sam/services/flash_efc/flash_efc.c ****  */
 519:../asf/sam/services/flash_efc/flash_efc.c **** uint32_t flash_erase_plane(uint32_t ul_address)
 520:../asf/sam/services/flash_efc/flash_efc.c **** {
 521:../asf/sam/services/flash_efc/flash_efc.c **** 	Efc *p_efc;
 522:../asf/sam/services/flash_efc/flash_efc.c **** 	uint16_t us_page;
 523:../asf/sam/services/flash_efc/flash_efc.c **** 
 524:../asf/sam/services/flash_efc/flash_efc.c **** 	translate_address(&p_efc, ul_address, &us_page, NULL);
 525:../asf/sam/services/flash_efc/flash_efc.c **** 
 526:../asf/sam/services/flash_efc/flash_efc.c **** 	if (EFC_RC_OK != efc_perform_command(p_efc, EFC_FCMD_EPL, us_page)) {
 527:../asf/sam/services/flash_efc/flash_efc.c **** 		return FLASH_RC_ERROR;
 528:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 529:../asf/sam/services/flash_efc/flash_efc.c **** 
 530:../asf/sam/services/flash_efc/flash_efc.c **** 	return FLASH_RC_OK;
 531:../asf/sam/services/flash_efc/flash_efc.c **** }
 532:../asf/sam/services/flash_efc/flash_efc.c **** #endif
 533:../asf/sam/services/flash_efc/flash_efc.c **** 
 534:../asf/sam/services/flash_efc/flash_efc.c **** #if (SAM4S || SAM4E || SAM4N || SAM4C || SAMG || SAM4CP || SAM4CM || \
 535:../asf/sam/services/flash_efc/flash_efc.c **** 	 SAMV71 || SAMV70 || SAMS70 || SAME70)
 536:../asf/sam/services/flash_efc/flash_efc.c **** /**
 537:../asf/sam/services/flash_efc/flash_efc.c ****  * \brief Erase the specified pages of flash.
 538:../asf/sam/services/flash_efc/flash_efc.c ****  *
 539:../asf/sam/services/flash_efc/flash_efc.c ****  * \param ul_address Flash bank start address.
ARM GAS  /tmp/ccfM1LZ3.s 			page 17


 540:../asf/sam/services/flash_efc/flash_efc.c ****  *
 541:../asf/sam/services/flash_efc/flash_efc.c ****  * \return 0 if successful; otherwise returns an error code.
 542:../asf/sam/services/flash_efc/flash_efc.c ****  */
 543:../asf/sam/services/flash_efc/flash_efc.c **** uint32_t flash_erase_page(uint32_t ul_address, uint8_t uc_page_num)
 544:../asf/sam/services/flash_efc/flash_efc.c **** {
 368              		.loc 1 544 0
 369              		.cfi_startproc
 370              		@ args = 0, pretend = 0, frame = 0
 371              		@ frame_needed = 0, uses_anonymous_args = 0
 372              	.LVL35:
 545:../asf/sam/services/flash_efc/flash_efc.c **** 	Efc *p_efc;
 546:../asf/sam/services/flash_efc/flash_efc.c **** 	uint16_t us_page;
 547:../asf/sam/services/flash_efc/flash_efc.c **** 
 548:../asf/sam/services/flash_efc/flash_efc.c **** 	if (uc_page_num >= IFLASH_ERASE_PAGES_INVALID) {
 373              		.loc 1 548 0
 374 0000 0329     		cmp	r1, #3
 375 0002 01D9     		bls	.L49
 549:../asf/sam/services/flash_efc/flash_efc.c **** 		return FLASH_RC_INVALID;
 376              		.loc 1 549 0
 377 0004 1120     		movs	r0, #17
 378              	.LVL36:
 379 0006 7047     		bx	lr
 380              	.LVL37:
 381              	.L49:
 544:../asf/sam/services/flash_efc/flash_efc.c **** 	Efc *p_efc;
 382              		.loc 1 544 0
 383 0008 08B5     		push	{r3, lr}
 384              		.cfi_def_cfa_offset 8
 385              		.cfi_offset 3, -8
 386              		.cfi_offset 14, -4
 550:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 551:../asf/sam/services/flash_efc/flash_efc.c **** 
 552:../asf/sam/services/flash_efc/flash_efc.c **** 	if (ul_address & (IFLASH_PAGE_SIZE - 1)) {
 387              		.loc 1 552 0
 388 000a C0F30803 		ubfx	r3, r0, #0, #9
 389 000e 0BB1     		cbz	r3, .L50
 549:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 390              		.loc 1 549 0
 391 0010 1120     		movs	r0, #17
 392              	.LVL38:
 553:../asf/sam/services/flash_efc/flash_efc.c **** 		return FLASH_RC_INVALID;
 554:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 555:../asf/sam/services/flash_efc/flash_efc.c **** 
 556:../asf/sam/services/flash_efc/flash_efc.c **** 	translate_address(&p_efc, ul_address, &us_page, NULL);
 557:../asf/sam/services/flash_efc/flash_efc.c **** 
 558:../asf/sam/services/flash_efc/flash_efc.c **** 	if (EFC_RC_OK != efc_perform_command(p_efc, EFC_FCMD_EPA,
 559:../asf/sam/services/flash_efc/flash_efc.c **** 					(us_page | uc_page_num))) {
 560:../asf/sam/services/flash_efc/flash_efc.c **** 		return FLASH_RC_ERROR;
 561:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 562:../asf/sam/services/flash_efc/flash_efc.c **** 
 563:../asf/sam/services/flash_efc/flash_efc.c **** 	return FLASH_RC_OK;
 564:../asf/sam/services/flash_efc/flash_efc.c **** }
 393              		.loc 1 564 0
 394 0012 08BD     		pop	{r3, pc}
 395              	.LVL39:
 396              	.L50:
 397              	.LBB42:
ARM GAS  /tmp/ccfM1LZ3.s 			page 18


 398              	.LBB43:
 210:../asf/sam/services/flash_efc/flash_efc.c **** 	us_offset = (ul_addr - IFLASH_ADDR) % IFLASH_PAGE_SIZE;
 399              		.loc 1 210 0
 400 0014 A0F58003 		sub	r3, r0, #4194304
 401 0018 0A46     		mov	r2, r1
 402              	.LBE43:
 403              	.LBE42:
 558:../asf/sam/services/flash_efc/flash_efc.c **** 					(us_page | uc_page_num))) {
 404              		.loc 1 558 0
 405 001a 0648     		ldr	r0, .L51
 406              	.LVL40:
 407 001c 0721     		movs	r1, #7
 408              	.LVL41:
 559:../asf/sam/services/flash_efc/flash_efc.c **** 		return FLASH_RC_ERROR;
 409              		.loc 1 559 0
 410 001e C3F34F23 		ubfx	r3, r3, #9, #16
 411              	.LVL42:
 558:../asf/sam/services/flash_efc/flash_efc.c **** 					(us_page | uc_page_num))) {
 412              		.loc 1 558 0
 413 0022 1A43     		orrs	r2, r2, r3
 414 0024 FFF7FEFF 		bl	efc_perform_command
 415              	.LVL43:
 560:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 416              		.loc 1 560 0
 417 0028 0028     		cmp	r0, #0
 418 002a 14BF     		ite	ne
 419 002c 1020     		movne	r0, #16
 420 002e 0020     		moveq	r0, #0
 421 0030 08BD     		pop	{r3, pc}
 422              	.L52:
 423 0032 00BF     		.align	2
 424              	.L51:
 425 0034 000C0E40 		.word	1074662400
 426              		.cfi_endproc
 427              	.LFE174:
 428              		.size	flash_erase_page, .-flash_erase_page
 429              		.section	.text.flash_erase_sector,"ax",%progbits
 430              		.align	1
 431              		.p2align 2,,3
 432              		.global	flash_erase_sector
 433              		.syntax unified
 434              		.thumb
 435              		.thumb_func
 436              		.fpu fpv5-d16
 437              		.type	flash_erase_sector, %function
 438              	flash_erase_sector:
 439              	.LFB175:
 565:../asf/sam/services/flash_efc/flash_efc.c **** 
 566:../asf/sam/services/flash_efc/flash_efc.c **** /**
 567:../asf/sam/services/flash_efc/flash_efc.c ****  * \brief Erase the flash sector.
 568:../asf/sam/services/flash_efc/flash_efc.c ****  *
 569:../asf/sam/services/flash_efc/flash_efc.c ****  * \note Erase sector command needs a page number parameter which belongs to
 570:../asf/sam/services/flash_efc/flash_efc.c ****  * the sector to be erased.
 571:../asf/sam/services/flash_efc/flash_efc.c ****  *
 572:../asf/sam/services/flash_efc/flash_efc.c ****  * \param ul_address Flash sector start address.
 573:../asf/sam/services/flash_efc/flash_efc.c ****  *
 574:../asf/sam/services/flash_efc/flash_efc.c ****  * \return 0 if successful; otherwise returns an error code.
ARM GAS  /tmp/ccfM1LZ3.s 			page 19


 575:../asf/sam/services/flash_efc/flash_efc.c ****  */
 576:../asf/sam/services/flash_efc/flash_efc.c **** uint32_t flash_erase_sector(uint32_t ul_address)
 577:../asf/sam/services/flash_efc/flash_efc.c **** {
 440              		.loc 1 577 0
 441              		.cfi_startproc
 442              		@ args = 0, pretend = 0, frame = 0
 443              		@ frame_needed = 0, uses_anonymous_args = 0
 444              	.LVL44:
 445              	.LBB44:
 446              	.LBB45:
 210:../asf/sam/services/flash_efc/flash_efc.c **** 	us_offset = (ul_addr - IFLASH_ADDR) % IFLASH_PAGE_SIZE;
 447              		.loc 1 210 0
 448 0000 A0F58002 		sub	r2, r0, #4194304
 449              	.LBE45:
 450              	.LBE44:
 578:../asf/sam/services/flash_efc/flash_efc.c **** 	Efc *p_efc;
 579:../asf/sam/services/flash_efc/flash_efc.c **** 	uint16_t us_page;
 580:../asf/sam/services/flash_efc/flash_efc.c **** 
 581:../asf/sam/services/flash_efc/flash_efc.c **** 	translate_address(&p_efc, ul_address, &us_page, NULL);
 582:../asf/sam/services/flash_efc/flash_efc.c **** 
 583:../asf/sam/services/flash_efc/flash_efc.c **** 	if (EFC_RC_OK != efc_perform_command(p_efc, EFC_FCMD_ES, us_page)) {
 451              		.loc 1 583 0
 452 0004 1121     		movs	r1, #17
 453 0006 0548     		ldr	r0, .L57
 454              	.LVL45:
 455 0008 C2F34F22 		ubfx	r2, r2, #9, #16
 456              	.LVL46:
 577:../asf/sam/services/flash_efc/flash_efc.c **** 	Efc *p_efc;
 457              		.loc 1 577 0
 458 000c 08B5     		push	{r3, lr}
 459              		.cfi_def_cfa_offset 8
 460              		.cfi_offset 3, -8
 461              		.cfi_offset 14, -4
 462              		.loc 1 583 0
 463 000e FFF7FEFF 		bl	efc_perform_command
 464              	.LVL47:
 584:../asf/sam/services/flash_efc/flash_efc.c **** 		return FLASH_RC_ERROR;
 585:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 586:../asf/sam/services/flash_efc/flash_efc.c **** 
 587:../asf/sam/services/flash_efc/flash_efc.c **** 	return FLASH_RC_OK;
 588:../asf/sam/services/flash_efc/flash_efc.c **** }
 465              		.loc 1 588 0
 466 0012 0028     		cmp	r0, #0
 467 0014 14BF     		ite	ne
 468 0016 1020     		movne	r0, #16
 469 0018 0020     		moveq	r0, #0
 470 001a 08BD     		pop	{r3, pc}
 471              	.L58:
 472              		.align	2
 473              	.L57:
 474 001c 000C0E40 		.word	1074662400
 475              		.cfi_endproc
 476              	.LFE175:
 477              		.size	flash_erase_sector, .-flash_erase_sector
 478              		.section	.text.flash_write,"ax",%progbits
 479              		.align	1
 480              		.p2align 2,,3
ARM GAS  /tmp/ccfM1LZ3.s 			page 20


 481              		.global	flash_write
 482              		.syntax unified
 483              		.thumb
 484              		.thumb_func
 485              		.fpu fpv5-d16
 486              		.type	flash_write, %function
 487              	flash_write:
 488              	.LFB176:
 589:../asf/sam/services/flash_efc/flash_efc.c **** #endif
 590:../asf/sam/services/flash_efc/flash_efc.c **** 
 591:../asf/sam/services/flash_efc/flash_efc.c **** /**
 592:../asf/sam/services/flash_efc/flash_efc.c ****  * \brief Write a data buffer on flash.
 593:../asf/sam/services/flash_efc/flash_efc.c ****  *
 594:../asf/sam/services/flash_efc/flash_efc.c ****  * \note This function works in polling mode, and thus only returns when the
 595:../asf/sam/services/flash_efc/flash_efc.c ****  * data has been effectively written.
 596:../asf/sam/services/flash_efc/flash_efc.c ****  * \note For dual bank flash, this function doesn't support cross write from
 597:../asf/sam/services/flash_efc/flash_efc.c ****  * bank 0 to bank 1. In this case, flash_write must be called twice (ie for
 598:../asf/sam/services/flash_efc/flash_efc.c ****  * each bank).
 599:../asf/sam/services/flash_efc/flash_efc.c ****  *
 600:../asf/sam/services/flash_efc/flash_efc.c ****  * \param ul_address Write address.
 601:../asf/sam/services/flash_efc/flash_efc.c ****  * \param p_buffer Data buffer.
 602:../asf/sam/services/flash_efc/flash_efc.c ****  * \param ul_size Size of data buffer in bytes.
 603:../asf/sam/services/flash_efc/flash_efc.c ****  * \param ul_erase_flag Flag to set if erase first.
 604:../asf/sam/services/flash_efc/flash_efc.c ****  *
 605:../asf/sam/services/flash_efc/flash_efc.c ****  * \return 0 if successful, otherwise returns an error code.
 606:../asf/sam/services/flash_efc/flash_efc.c ****  */
 607:../asf/sam/services/flash_efc/flash_efc.c **** uint32_t flash_write(uint32_t ul_address, const void *p_buffer,
 608:../asf/sam/services/flash_efc/flash_efc.c **** 		uint32_t ul_size, uint32_t ul_erase_flag)
 609:../asf/sam/services/flash_efc/flash_efc.c **** {
 489              		.loc 1 609 0
 490              		.cfi_startproc
 491              		@ args = 0, pretend = 0, frame = 8
 492              		@ frame_needed = 0, uses_anonymous_args = 0
 493              	.LVL48:
 494 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 495              		.cfi_def_cfa_offset 36
 496              		.cfi_offset 4, -36
 497              		.cfi_offset 5, -32
 498              		.cfi_offset 6, -28
 499              		.cfi_offset 7, -24
 500              		.cfi_offset 8, -20
 501              		.cfi_offset 9, -16
 502              		.cfi_offset 10, -12
 503              		.cfi_offset 11, -8
 504              		.cfi_offset 14, -4
 505              	.LBB46:
 506              	.LBB47:
 210:../asf/sam/services/flash_efc/flash_efc.c **** 	us_offset = (ul_addr - IFLASH_ADDR) % IFLASH_PAGE_SIZE;
 507              		.loc 1 210 0
 508 0004 A0F58008 		sub	r8, r0, #4194304
 509              	.LBE47:
 510              	.LBE46:
 511              		.loc 1 609 0
 512 0008 83B0     		sub	sp, sp, #12
 513              		.cfi_def_cfa_offset 48
 514              	.LBB50:
 515              	.LBB48:
ARM GAS  /tmp/ccfM1LZ3.s 			page 21


 211:../asf/sam/services/flash_efc/flash_efc.c **** #endif
 516              		.loc 1 211 0
 517 000a C0F30806 		ubfx	r6, r0, #0, #9
 518              	.LBE48:
 519              	.LBE50:
 520              		.loc 1 609 0
 521 000e 0193     		str	r3, [sp, #4]
 522              	.LBB51:
 523              	.LBB49:
 210:../asf/sam/services/flash_efc/flash_efc.c **** 	us_offset = (ul_addr - IFLASH_ADDR) % IFLASH_PAGE_SIZE;
 524              		.loc 1 210 0
 525 0010 C8F34F28 		ubfx	r8, r8, #9, #16
 526              	.LVL49:
 527              	.LBE49:
 528              	.LBE51:
 610:../asf/sam/services/flash_efc/flash_efc.c **** 	Efc *p_efc;
 611:../asf/sam/services/flash_efc/flash_efc.c **** 	uint32_t ul_fws_temp;
 612:../asf/sam/services/flash_efc/flash_efc.c **** 	uint16_t us_page;
 613:../asf/sam/services/flash_efc/flash_efc.c **** 	uint16_t us_offset;
 614:../asf/sam/services/flash_efc/flash_efc.c **** 	uint32_t writeSize;
 615:../asf/sam/services/flash_efc/flash_efc.c **** 	uint32_t ul_page_addr;
 616:../asf/sam/services/flash_efc/flash_efc.c **** 	uint16_t us_padding;
 617:../asf/sam/services/flash_efc/flash_efc.c **** 	uint32_t ul_error;
 618:../asf/sam/services/flash_efc/flash_efc.c **** 	uint32_t ul_idx;
 619:../asf/sam/services/flash_efc/flash_efc.c **** 	uint32_t *p_aligned_dest;
 620:../asf/sam/services/flash_efc/flash_efc.c **** 	uint8_t *puc_page_buffer = (uint8_t *) gs_ul_page_buffer;
 621:../asf/sam/services/flash_efc/flash_efc.c **** 
 622:../asf/sam/services/flash_efc/flash_efc.c **** 	translate_address(&p_efc, ul_address, &us_page, &us_offset);
 623:../asf/sam/services/flash_efc/flash_efc.c **** 
 624:../asf/sam/services/flash_efc/flash_efc.c **** #if SAM3S || SAM3N || SAM3XA || SAM3U
 625:../asf/sam/services/flash_efc/flash_efc.c **** 	/* According to the errata, set the wait state value to 6. */
 626:../asf/sam/services/flash_efc/flash_efc.c **** 	ul_fws_temp = efc_get_wait_state(p_efc);
 627:../asf/sam/services/flash_efc/flash_efc.c **** 	efc_set_wait_state(p_efc, 6);
 628:../asf/sam/services/flash_efc/flash_efc.c **** #else
 629:../asf/sam/services/flash_efc/flash_efc.c **** 	UNUSED(ul_fws_temp);
 630:../asf/sam/services/flash_efc/flash_efc.c **** #endif
 631:../asf/sam/services/flash_efc/flash_efc.c **** 
 632:../asf/sam/services/flash_efc/flash_efc.c **** 	/* Write all pages */
 633:../asf/sam/services/flash_efc/flash_efc.c **** 	while (ul_size > 0) {
 529              		.loc 1 633 0
 530 0014 002A     		cmp	r2, #0
 531 0016 3DD0     		beq	.L66
 532 0018 DFF88CB0 		ldr	fp, .L71
 533 001c 8A46     		mov	r10, r1
 534 001e 9146     		mov	r9, r2
 535 0020 0BF5FE75 		add	r5, fp, #508
 536              	.LVL50:
 537              	.L65:
 634:../asf/sam/services/flash_efc/flash_efc.c **** 		/* Copy data in temporary buffer to avoid alignment problems. */
 635:../asf/sam/services/flash_efc/flash_efc.c **** 		writeSize = Min((uint32_t) IFLASH_PAGE_SIZE - us_offset,
 538              		.loc 1 635 0
 539 0024 C6F50073 		rsb	r3, r6, #512
 540              	.LBB52:
 541              	.LBB53:
 270:../asf/sam/services/flash_efc/flash_efc.c **** #endif
 542              		.loc 1 270 0
 543 0028 08F50054 		add	r4, r8, #8192
ARM GAS  /tmp/ccfM1LZ3.s 			page 22


 544              	.LBE53:
 545              	.LBE52:
 636:../asf/sam/services/flash_efc/flash_efc.c **** 				ul_size);
 637:../asf/sam/services/flash_efc/flash_efc.c **** 		compute_address(p_efc, us_page, 0, &ul_page_addr);
 638:../asf/sam/services/flash_efc/flash_efc.c **** 		us_padding = IFLASH_PAGE_SIZE - us_offset - writeSize;
 639:../asf/sam/services/flash_efc/flash_efc.c **** 
 640:../asf/sam/services/flash_efc/flash_efc.c **** 		/* Pre-buffer data */
 641:../asf/sam/services/flash_efc/flash_efc.c **** 		memcpy(puc_page_buffer, (void *)ul_page_addr, us_offset);
 546              		.loc 1 641 0
 547 002c 3246     		mov	r2, r6
 548 002e 1E48     		ldr	r0, .L71
 635:../asf/sam/services/flash_efc/flash_efc.c **** 				ul_size);
 549              		.loc 1 635 0
 550 0030 4B45     		cmp	r3, r9
 551              	.LBB55:
 552              	.LBB54:
 270:../asf/sam/services/flash_efc/flash_efc.c **** #endif
 553              		.loc 1 270 0
 554 0032 4FEA4424 		lsl	r4, r4, #9
 555              	.LBE54:
 556              	.LBE55:
 635:../asf/sam/services/flash_efc/flash_efc.c **** 				ul_size);
 557              		.loc 1 635 0
 558 0036 1F46     		mov	r7, r3
 559 0038 0093     		str	r3, [sp]
 560 003a 28BF     		it	cs
 561 003c 4F46     		movcs	r7, r9
 562              	.LVL51:
 563              		.loc 1 641 0
 564 003e 2146     		mov	r1, r4
 565 0040 FFF7FEFF 		bl	memcpy
 566              	.LVL52:
 642:../asf/sam/services/flash_efc/flash_efc.c **** 
 643:../asf/sam/services/flash_efc/flash_efc.c **** 		/* Buffer data */
 644:../asf/sam/services/flash_efc/flash_efc.c **** 		memcpy(puc_page_buffer + us_offset, p_buffer, writeSize);
 567              		.loc 1 644 0
 568 0044 5146     		mov	r1, r10
 569 0046 3A46     		mov	r2, r7
 570 0048 0BEB0600 		add	r0, fp, r6
 571 004c FFF7FEFF 		bl	memcpy
 572              	.LVL53:
 638:../asf/sam/services/flash_efc/flash_efc.c **** 
 573              		.loc 1 638 0
 574 0050 009B     		ldr	r3, [sp]
 645:../asf/sam/services/flash_efc/flash_efc.c **** 
 646:../asf/sam/services/flash_efc/flash_efc.c **** 		/* Post-buffer data */
 647:../asf/sam/services/flash_efc/flash_efc.c **** 		memcpy(puc_page_buffer + us_offset + writeSize,
 648:../asf/sam/services/flash_efc/flash_efc.c **** 				(void *)(ul_page_addr + us_offset + writeSize),
 575              		.loc 1 648 0
 576 0052 3919     		adds	r1, r7, r4
 647:../asf/sam/services/flash_efc/flash_efc.c **** 				(void *)(ul_page_addr + us_offset + writeSize),
 577              		.loc 1 647 0
 578 0054 F019     		adds	r0, r6, r7
 638:../asf/sam/services/flash_efc/flash_efc.c **** 
 579              		.loc 1 638 0
 580 0056 DB1B     		subs	r3, r3, r7
 581 0058 043C     		subs	r4, r4, #4
ARM GAS  /tmp/ccfM1LZ3.s 			page 23


 647:../asf/sam/services/flash_efc/flash_efc.c **** 				(void *)(ul_page_addr + us_offset + writeSize),
 582              		.loc 1 647 0
 583 005a 5844     		add	r0, r0, fp
 584 005c 3144     		add	r1, r1, r6
 585 005e 9AB2     		uxth	r2, r3
 586 0060 FFF7FEFF 		bl	memcpy
 587              	.LVL54:
 588 0064 114B     		ldr	r3, .L71+4
 589              	.LVL55:
 590              	.L62:
 649:../asf/sam/services/flash_efc/flash_efc.c **** 				us_padding);
 650:../asf/sam/services/flash_efc/flash_efc.c **** 
 651:../asf/sam/services/flash_efc/flash_efc.c **** 		/* Write page.
 652:../asf/sam/services/flash_efc/flash_efc.c **** 		 * Writing 8-bit and 16-bit data is not allowed and may lead to
 653:../asf/sam/services/flash_efc/flash_efc.c **** 		 * unpredictable data corruption.
 654:../asf/sam/services/flash_efc/flash_efc.c **** 		 */
 655:../asf/sam/services/flash_efc/flash_efc.c **** 		p_aligned_dest = (uint32_t *) ul_page_addr;
 656:../asf/sam/services/flash_efc/flash_efc.c **** 		for (ul_idx = 0; ul_idx < (IFLASH_PAGE_SIZE / sizeof(uint32_t));
 657:../asf/sam/services/flash_efc/flash_efc.c **** 				++ul_idx) {
 658:../asf/sam/services/flash_efc/flash_efc.c **** 			*p_aligned_dest++ = gs_ul_page_buffer[ul_idx];
 591              		.loc 1 658 0
 592 0066 53F8042F 		ldr	r2, [r3, #4]!
 656:../asf/sam/services/flash_efc/flash_efc.c **** 				++ul_idx) {
 593              		.loc 1 656 0
 594 006a 9D42     		cmp	r5, r3
 595              		.loc 1 658 0
 596 006c 44F8042F 		str	r2, [r4, #4]!
 656:../asf/sam/services/flash_efc/flash_efc.c **** 				++ul_idx) {
 597              		.loc 1 656 0
 598 0070 F9D1     		bne	.L62
 659:../asf/sam/services/flash_efc/flash_efc.c **** 		}
 660:../asf/sam/services/flash_efc/flash_efc.c **** 
 661:../asf/sam/services/flash_efc/flash_efc.c **** 		if (ul_erase_flag) {
 599              		.loc 1 661 0
 600 0072 019B     		ldr	r3, [sp, #4]
 662:../asf/sam/services/flash_efc/flash_efc.c **** 			ul_error = efc_perform_command(p_efc, EFC_FCMD_EWP,
 601              		.loc 1 662 0
 602 0074 4246     		mov	r2, r8
 661:../asf/sam/services/flash_efc/flash_efc.c **** 			ul_error = efc_perform_command(p_efc, EFC_FCMD_EWP,
 603              		.loc 1 661 0
 604 0076 8BB1     		cbz	r3, .L63
 605              		.loc 1 662 0
 606 0078 0321     		movs	r1, #3
 607 007a 0D48     		ldr	r0, .L71+8
 608 007c FFF7FEFF 		bl	efc_perform_command
 609              	.LVL56:
 610              	.L64:
 663:../asf/sam/services/flash_efc/flash_efc.c **** 					us_page);
 664:../asf/sam/services/flash_efc/flash_efc.c **** 		} else {
 665:../asf/sam/services/flash_efc/flash_efc.c **** 			ul_error = efc_perform_command(p_efc, EFC_FCMD_WP,
 666:../asf/sam/services/flash_efc/flash_efc.c **** 					us_page);
 667:../asf/sam/services/flash_efc/flash_efc.c **** 		}
 668:../asf/sam/services/flash_efc/flash_efc.c **** 
 669:../asf/sam/services/flash_efc/flash_efc.c **** 		if (ul_error) {
 611              		.loc 1 669 0
 612 0080 48B9     		cbnz	r0, .L59
 670:../asf/sam/services/flash_efc/flash_efc.c **** 			return ul_error;
ARM GAS  /tmp/ccfM1LZ3.s 			page 24


 671:../asf/sam/services/flash_efc/flash_efc.c **** 		}
 672:../asf/sam/services/flash_efc/flash_efc.c **** 
 673:../asf/sam/services/flash_efc/flash_efc.c **** 		/* Progression */
 674:../asf/sam/services/flash_efc/flash_efc.c **** 		p_buffer = (void *)((uint32_t) p_buffer + writeSize);
 675:../asf/sam/services/flash_efc/flash_efc.c **** 		ul_size -= writeSize;
 676:../asf/sam/services/flash_efc/flash_efc.c **** 		us_page++;
 613              		.loc 1 676 0
 614 0082 08F10108 		add	r8, r8, #1
 615              	.LVL57:
 633:../asf/sam/services/flash_efc/flash_efc.c **** 		/* Copy data in temporary buffer to avoid alignment problems. */
 616              		.loc 1 633 0
 617 0086 B9EB0709 		subs	r9, r9, r7
 618              	.LVL58:
 674:../asf/sam/services/flash_efc/flash_efc.c **** 		ul_size -= writeSize;
 619              		.loc 1 674 0
 620 008a BA44     		add	r10, r10, r7
 621              	.LVL59:
 677:../asf/sam/services/flash_efc/flash_efc.c **** 		us_offset = 0;
 622              		.loc 1 677 0
 623 008c 0646     		mov	r6, r0
 624              	.LVL60:
 676:../asf/sam/services/flash_efc/flash_efc.c **** 		us_offset = 0;
 625              		.loc 1 676 0
 626 008e 1FFA88F8 		uxth	r8, r8
 627              	.LVL61:
 633:../asf/sam/services/flash_efc/flash_efc.c **** 		/* Copy data in temporary buffer to avoid alignment problems. */
 628              		.loc 1 633 0
 629 0092 C7D1     		bne	.L65
 630              	.LVL62:
 631              	.L66:
 678:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 679:../asf/sam/services/flash_efc/flash_efc.c **** 
 680:../asf/sam/services/flash_efc/flash_efc.c **** #if SAM3S || SAM3N || SAM3XA || SAM3U
 681:../asf/sam/services/flash_efc/flash_efc.c **** 	/* According to the errata, restore the wait state value. */
 682:../asf/sam/services/flash_efc/flash_efc.c **** 	efc_set_wait_state(p_efc, ul_fws_temp);
 683:../asf/sam/services/flash_efc/flash_efc.c **** #endif
 684:../asf/sam/services/flash_efc/flash_efc.c **** 
 685:../asf/sam/services/flash_efc/flash_efc.c **** 	return FLASH_RC_OK;
 632              		.loc 1 685 0
 633 0094 0020     		movs	r0, #0
 634              	.L59:
 686:../asf/sam/services/flash_efc/flash_efc.c **** }
 635              		.loc 1 686 0
 636 0096 03B0     		add	sp, sp, #12
 637              		.cfi_remember_state
 638              		.cfi_def_cfa_offset 36
 639              		@ sp needed
 640 0098 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 641              	.LVL63:
 642              	.L63:
 643              		.cfi_restore_state
 665:../asf/sam/services/flash_efc/flash_efc.c **** 					us_page);
 644              		.loc 1 665 0
 645 009c 0121     		movs	r1, #1
 646 009e 0448     		ldr	r0, .L71+8
 647 00a0 FFF7FEFF 		bl	efc_perform_command
 648              	.LVL64:
ARM GAS  /tmp/ccfM1LZ3.s 			page 25


 649 00a4 ECE7     		b	.L64
 650              	.L72:
 651 00a6 00BF     		.align	2
 652              	.L71:
 653 00a8 00000000 		.word	.LANCHOR0
 654 00ac FCFFFFFF 		.word	.LANCHOR0-4
 655 00b0 000C0E40 		.word	1074662400
 656              		.cfi_endproc
 657              	.LFE176:
 658              		.size	flash_write, .-flash_write
 659              		.section	.text.flash_lock,"ax",%progbits
 660              		.align	1
 661              		.p2align 2,,3
 662              		.global	flash_lock
 663              		.syntax unified
 664              		.thumb
 665              		.thumb_func
 666              		.fpu fpv5-d16
 667              		.type	flash_lock, %function
 668              	flash_lock:
 669              	.LFB177:
 687:../asf/sam/services/flash_efc/flash_efc.c **** 
 688:../asf/sam/services/flash_efc/flash_efc.c **** 
 689:../asf/sam/services/flash_efc/flash_efc.c **** /**
 690:../asf/sam/services/flash_efc/flash_efc.c ****  * \brief Lock all the regions in the given address range. The actual lock
 691:../asf/sam/services/flash_efc/flash_efc.c ****  * range is reported through two output parameters.
 692:../asf/sam/services/flash_efc/flash_efc.c ****  *
 693:../asf/sam/services/flash_efc/flash_efc.c ****  * \param ul_start Start address of lock range.
 694:../asf/sam/services/flash_efc/flash_efc.c ****  * \param ul_end End address of lock range.
 695:../asf/sam/services/flash_efc/flash_efc.c ****  * \param pul_actual_start Start address of the actual lock range (optional).
 696:../asf/sam/services/flash_efc/flash_efc.c ****  * \param pul_actual_end End address of the actual lock range (optional).
 697:../asf/sam/services/flash_efc/flash_efc.c ****  *
 698:../asf/sam/services/flash_efc/flash_efc.c ****  * \return 0 if successful, otherwise returns an error code.
 699:../asf/sam/services/flash_efc/flash_efc.c ****  */
 700:../asf/sam/services/flash_efc/flash_efc.c **** uint32_t flash_lock(uint32_t ul_start, uint32_t ul_end,
 701:../asf/sam/services/flash_efc/flash_efc.c **** 		uint32_t *pul_actual_start, uint32_t *pul_actual_end)
 702:../asf/sam/services/flash_efc/flash_efc.c **** {
 670              		.loc 1 702 0
 671              		.cfi_startproc
 672              		@ args = 0, pretend = 0, frame = 0
 673              		@ frame_needed = 0, uses_anonymous_args = 0
 674              	.LVL65:
 675 0000 70B5     		push	{r4, r5, r6, lr}
 676              		.cfi_def_cfa_offset 16
 677              		.cfi_offset 4, -16
 678              		.cfi_offset 5, -12
 679              		.cfi_offset 6, -8
 680              		.cfi_offset 14, -4
 681              	.LBB56:
 682              	.LBB57:
 292:../asf/sam/services/flash_efc/flash_efc.c **** 	ul_actual_end = ul_end - (ul_end % IFLASH_LOCK_REGION_SIZE) +
 683              		.loc 1 292 0
 684 0002 124C     		ldr	r4, .L89
 293:../asf/sam/services/flash_efc/flash_efc.c **** 			IFLASH_LOCK_REGION_SIZE - 1;
 685              		.loc 1 293 0
 686 0004 43F6FF75 		movw	r5, #16383
 687 0008 2140     		ands	r1, r1, r4
ARM GAS  /tmp/ccfM1LZ3.s 			page 26


 688              	.LVL66:
 292:../asf/sam/services/flash_efc/flash_efc.c **** 	ul_actual_end = ul_end - (ul_end % IFLASH_LOCK_REGION_SIZE) +
 689              		.loc 1 292 0
 690 000a 0440     		ands	r4, r4, r0
 691              	.LVL67:
 293:../asf/sam/services/flash_efc/flash_efc.c **** 			IFLASH_LOCK_REGION_SIZE - 1;
 692              		.loc 1 293 0
 693 000c 0D44     		add	r5, r5, r1
 694              	.LVL68:
 695              	.LBE57:
 696              	.LBE56:
 703:../asf/sam/services/flash_efc/flash_efc.c **** 	Efc *p_efc;
 704:../asf/sam/services/flash_efc/flash_efc.c **** 	uint32_t ul_actual_start, ul_actual_end;
 705:../asf/sam/services/flash_efc/flash_efc.c **** 	uint16_t us_start_page, us_end_page;
 706:../asf/sam/services/flash_efc/flash_efc.c **** 	uint32_t ul_error;
 707:../asf/sam/services/flash_efc/flash_efc.c **** 	uint16_t us_num_pages_in_region =
 708:../asf/sam/services/flash_efc/flash_efc.c **** 			IFLASH_LOCK_REGION_SIZE / IFLASH_PAGE_SIZE;
 709:../asf/sam/services/flash_efc/flash_efc.c **** 
 710:../asf/sam/services/flash_efc/flash_efc.c **** 	/* Compute actual lock range and store it */
 711:../asf/sam/services/flash_efc/flash_efc.c **** 	compute_lock_range(ul_start, ul_end, &ul_actual_start, &ul_actual_end);
 712:../asf/sam/services/flash_efc/flash_efc.c **** 
 713:../asf/sam/services/flash_efc/flash_efc.c **** 	if (pul_actual_start != NULL) {
 697              		.loc 1 713 0
 698 000e 02B1     		cbz	r2, .L74
 714:../asf/sam/services/flash_efc/flash_efc.c **** 		*pul_actual_start = ul_actual_start;
 699              		.loc 1 714 0
 700 0010 1460     		str	r4, [r2]
 701              	.L74:
 715:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 716:../asf/sam/services/flash_efc/flash_efc.c **** 
 717:../asf/sam/services/flash_efc/flash_efc.c **** 	if (pul_actual_end != NULL) {
 702              		.loc 1 717 0
 703 0012 03B1     		cbz	r3, .L75
 718:../asf/sam/services/flash_efc/flash_efc.c **** 		*pul_actual_end = ul_actual_end;
 704              		.loc 1 718 0
 705 0014 1D60     		str	r5, [r3]
 706              	.L75:
 707              	.LVL69:
 708              	.LBB58:
 709              	.LBB59:
 210:../asf/sam/services/flash_efc/flash_efc.c **** 	us_offset = (ul_addr - IFLASH_ADDR) % IFLASH_PAGE_SIZE;
 710              		.loc 1 210 0
 711 0016 A4F58004 		sub	r4, r4, #4194304
 712              	.LVL70:
 713              	.LBE59:
 714              	.LBE58:
 715              	.LBB62:
 716              	.LBB63:
 717 001a 6FF47F15 		mvn	r5, #4177920
 718              	.LVL71:
 719              	.LBE63:
 720              	.LBE62:
 721              	.LBB66:
 722              	.LBB60:
 723 001e 640A     		lsrs	r4, r4, #9
 724              	.LVL72:
 725              	.LBE60:
ARM GAS  /tmp/ccfM1LZ3.s 			page 27


 726              	.LBE66:
 727              	.LBB67:
 728              	.LBB64:
 729 0020 0D44     		add	r5, r5, r1
 730              	.LBE64:
 731              	.LBE67:
 732              	.LBB68:
 733              	.LBB61:
 734 0022 A4B2     		uxth	r4, r4
 735              	.LVL73:
 736              	.LBE61:
 737              	.LBE68:
 738              	.LBB69:
 739              	.LBB65:
 740 0024 C5F34F25 		ubfx	r5, r5, #9, #16
 741              	.LVL74:
 742              	.LBE65:
 743              	.LBE69:
 719:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 720:../asf/sam/services/flash_efc/flash_efc.c **** 
 721:../asf/sam/services/flash_efc/flash_efc.c **** 	/* Compute page numbers */
 722:../asf/sam/services/flash_efc/flash_efc.c **** 	translate_address(&p_efc, ul_actual_start, &us_start_page, 0);
 723:../asf/sam/services/flash_efc/flash_efc.c **** 	translate_address(0, ul_actual_end, &us_end_page, 0);
 724:../asf/sam/services/flash_efc/flash_efc.c **** 
 725:../asf/sam/services/flash_efc/flash_efc.c **** 	/* Lock all pages */
 726:../asf/sam/services/flash_efc/flash_efc.c **** 	while (us_start_page < us_end_page) {
 744              		.loc 1 726 0
 745 0028 A542     		cmp	r5, r4
 746 002a 0DD9     		bls	.L79
 727:../asf/sam/services/flash_efc/flash_efc.c **** 		ul_error = efc_perform_command(p_efc, EFC_FCMD_SLB, us_start_page);
 747              		.loc 1 727 0
 748 002c 084E     		ldr	r6, .L89+4
 749 002e 02E0     		b	.L78
 750              	.LVL75:
 751              	.L88:
 728:../asf/sam/services/flash_efc/flash_efc.c **** 
 729:../asf/sam/services/flash_efc/flash_efc.c **** 		if (ul_error) {
 730:../asf/sam/services/flash_efc/flash_efc.c **** 			return ul_error;
 731:../asf/sam/services/flash_efc/flash_efc.c **** 		}
 732:../asf/sam/services/flash_efc/flash_efc.c **** 		us_start_page += us_num_pages_in_region;
 752              		.loc 1 732 0
 753 0030 A4B2     		uxth	r4, r4
 754              	.LVL76:
 726:../asf/sam/services/flash_efc/flash_efc.c **** 		ul_error = efc_perform_command(p_efc, EFC_FCMD_SLB, us_start_page);
 755              		.loc 1 726 0
 756 0032 AC42     		cmp	r4, r5
 757 0034 08D2     		bcs	.L79
 758              	.LVL77:
 759              	.L78:
 727:../asf/sam/services/flash_efc/flash_efc.c **** 		ul_error = efc_perform_command(p_efc, EFC_FCMD_SLB, us_start_page);
 760              		.loc 1 727 0
 761 0036 2246     		mov	r2, r4
 762 0038 0821     		movs	r1, #8
 763 003a 3046     		mov	r0, r6
 764              		.loc 1 732 0
 765 003c 2034     		adds	r4, r4, #32
 766              	.LVL78:
ARM GAS  /tmp/ccfM1LZ3.s 			page 28


 727:../asf/sam/services/flash_efc/flash_efc.c **** 		ul_error = efc_perform_command(p_efc, EFC_FCMD_SLB, us_start_page);
 767              		.loc 1 727 0
 768 003e FFF7FEFF 		bl	efc_perform_command
 769              	.LVL79:
 729:../asf/sam/services/flash_efc/flash_efc.c **** 			return ul_error;
 770              		.loc 1 729 0
 771 0042 0028     		cmp	r0, #0
 772 0044 F4D0     		beq	.L88
 733:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 734:../asf/sam/services/flash_efc/flash_efc.c **** 
 735:../asf/sam/services/flash_efc/flash_efc.c **** 	return FLASH_RC_OK;
 736:../asf/sam/services/flash_efc/flash_efc.c **** }
 773              		.loc 1 736 0
 774 0046 70BD     		pop	{r4, r5, r6, pc}
 775              	.LVL80:
 776              	.L79:
 735:../asf/sam/services/flash_efc/flash_efc.c **** }
 777              		.loc 1 735 0
 778 0048 0020     		movs	r0, #0
 779 004a 70BD     		pop	{r4, r5, r6, pc}
 780              	.LVL81:
 781              	.L90:
 782              		.align	2
 783              	.L89:
 784 004c 00C0FFFF 		.word	-16384
 785 0050 000C0E40 		.word	1074662400
 786              		.cfi_endproc
 787              	.LFE177:
 788              		.size	flash_lock, .-flash_lock
 789              		.section	.text.flash_unlock,"ax",%progbits
 790              		.align	1
 791              		.p2align 2,,3
 792              		.global	flash_unlock
 793              		.syntax unified
 794              		.thumb
 795              		.thumb_func
 796              		.fpu fpv5-d16
 797              		.type	flash_unlock, %function
 798              	flash_unlock:
 799              	.LFB178:
 737:../asf/sam/services/flash_efc/flash_efc.c **** 
 738:../asf/sam/services/flash_efc/flash_efc.c **** /**
 739:../asf/sam/services/flash_efc/flash_efc.c ****  * \brief Unlock all the regions in the given address range. The actual unlock
 740:../asf/sam/services/flash_efc/flash_efc.c ****  * range is reported through two output parameters.
 741:../asf/sam/services/flash_efc/flash_efc.c ****  *
 742:../asf/sam/services/flash_efc/flash_efc.c ****  * \param ul_start Start address of unlock range.
 743:../asf/sam/services/flash_efc/flash_efc.c ****  * \param ul_end End address of unlock range.
 744:../asf/sam/services/flash_efc/flash_efc.c ****  * \param pul_actual_start Start address of the actual unlock range (optional).
 745:../asf/sam/services/flash_efc/flash_efc.c ****  * \param pul_actual_end End address of the actual unlock range (optional).
 746:../asf/sam/services/flash_efc/flash_efc.c ****  *
 747:../asf/sam/services/flash_efc/flash_efc.c ****  * \return 0 if successful, otherwise returns an error code.
 748:../asf/sam/services/flash_efc/flash_efc.c ****  */
 749:../asf/sam/services/flash_efc/flash_efc.c **** uint32_t flash_unlock(uint32_t ul_start, uint32_t ul_end,
 750:../asf/sam/services/flash_efc/flash_efc.c **** 		uint32_t *pul_actual_start, uint32_t *pul_actual_end)
 751:../asf/sam/services/flash_efc/flash_efc.c **** {
 800              		.loc 1 751 0
 801              		.cfi_startproc
ARM GAS  /tmp/ccfM1LZ3.s 			page 29


 802              		@ args = 0, pretend = 0, frame = 0
 803              		@ frame_needed = 0, uses_anonymous_args = 0
 804              	.LVL82:
 805 0000 70B5     		push	{r4, r5, r6, lr}
 806              		.cfi_def_cfa_offset 16
 807              		.cfi_offset 4, -16
 808              		.cfi_offset 5, -12
 809              		.cfi_offset 6, -8
 810              		.cfi_offset 14, -4
 811              	.LBB70:
 812              	.LBB71:
 292:../asf/sam/services/flash_efc/flash_efc.c **** 	ul_actual_end = ul_end - (ul_end % IFLASH_LOCK_REGION_SIZE) +
 813              		.loc 1 292 0
 814 0002 124C     		ldr	r4, .L107
 293:../asf/sam/services/flash_efc/flash_efc.c **** 			IFLASH_LOCK_REGION_SIZE - 1;
 815              		.loc 1 293 0
 816 0004 43F6FF75 		movw	r5, #16383
 817 0008 2140     		ands	r1, r1, r4
 818              	.LVL83:
 292:../asf/sam/services/flash_efc/flash_efc.c **** 	ul_actual_end = ul_end - (ul_end % IFLASH_LOCK_REGION_SIZE) +
 819              		.loc 1 292 0
 820 000a 0440     		ands	r4, r4, r0
 821              	.LVL84:
 293:../asf/sam/services/flash_efc/flash_efc.c **** 			IFLASH_LOCK_REGION_SIZE - 1;
 822              		.loc 1 293 0
 823 000c 0D44     		add	r5, r5, r1
 824              	.LVL85:
 825              	.LBE71:
 826              	.LBE70:
 752:../asf/sam/services/flash_efc/flash_efc.c **** 	Efc *p_efc;
 753:../asf/sam/services/flash_efc/flash_efc.c **** 	uint32_t ul_actual_start, ul_actual_end;
 754:../asf/sam/services/flash_efc/flash_efc.c **** 	uint16_t us_start_page, us_end_page;
 755:../asf/sam/services/flash_efc/flash_efc.c **** 	uint32_t ul_error;
 756:../asf/sam/services/flash_efc/flash_efc.c **** 	uint16_t us_num_pages_in_region =
 757:../asf/sam/services/flash_efc/flash_efc.c **** 			IFLASH_LOCK_REGION_SIZE / IFLASH_PAGE_SIZE;
 758:../asf/sam/services/flash_efc/flash_efc.c **** 
 759:../asf/sam/services/flash_efc/flash_efc.c **** 	/* Compute actual unlock range and store it */
 760:../asf/sam/services/flash_efc/flash_efc.c **** 	compute_lock_range(ul_start, ul_end, &ul_actual_start, &ul_actual_end);
 761:../asf/sam/services/flash_efc/flash_efc.c **** 	if (pul_actual_start != NULL) {
 827              		.loc 1 761 0
 828 000e 02B1     		cbz	r2, .L92
 762:../asf/sam/services/flash_efc/flash_efc.c **** 		*pul_actual_start = ul_actual_start;
 829              		.loc 1 762 0
 830 0010 1460     		str	r4, [r2]
 831              	.L92:
 763:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 764:../asf/sam/services/flash_efc/flash_efc.c **** 	if (pul_actual_end != NULL) {
 832              		.loc 1 764 0
 833 0012 03B1     		cbz	r3, .L93
 765:../asf/sam/services/flash_efc/flash_efc.c **** 		*pul_actual_end = ul_actual_end;
 834              		.loc 1 765 0
 835 0014 1D60     		str	r5, [r3]
 836              	.L93:
 837              	.LVL86:
 838              	.LBB72:
 839              	.LBB73:
 210:../asf/sam/services/flash_efc/flash_efc.c **** 	us_offset = (ul_addr - IFLASH_ADDR) % IFLASH_PAGE_SIZE;
ARM GAS  /tmp/ccfM1LZ3.s 			page 30


 840              		.loc 1 210 0
 841 0016 A4F58004 		sub	r4, r4, #4194304
 842              	.LVL87:
 843              	.LBE73:
 844              	.LBE72:
 845              	.LBB76:
 846              	.LBB77:
 847 001a 6FF47F15 		mvn	r5, #4177920
 848              	.LVL88:
 849              	.LBE77:
 850              	.LBE76:
 851              	.LBB80:
 852              	.LBB74:
 853 001e 640A     		lsrs	r4, r4, #9
 854              	.LBE74:
 855              	.LBE80:
 856              	.LBB81:
 857              	.LBB78:
 858 0020 0D44     		add	r5, r5, r1
 859              	.LBE78:
 860              	.LBE81:
 861              	.LBB82:
 862              	.LBB75:
 863 0022 A4B2     		uxth	r4, r4
 864              	.LVL89:
 865              	.LBE75:
 866              	.LBE82:
 867              	.LBB83:
 868              	.LBB79:
 869 0024 C5F34F25 		ubfx	r5, r5, #9, #16
 870              	.LVL90:
 871              	.LBE79:
 872              	.LBE83:
 766:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 767:../asf/sam/services/flash_efc/flash_efc.c **** 
 768:../asf/sam/services/flash_efc/flash_efc.c **** 	/* Compute page numbers */
 769:../asf/sam/services/flash_efc/flash_efc.c **** 	translate_address(&p_efc, ul_actual_start, &us_start_page, 0);
 770:../asf/sam/services/flash_efc/flash_efc.c **** 	translate_address(0, ul_actual_end, &us_end_page, 0);
 771:../asf/sam/services/flash_efc/flash_efc.c **** 
 772:../asf/sam/services/flash_efc/flash_efc.c **** 	/* Unlock all pages */
 773:../asf/sam/services/flash_efc/flash_efc.c **** 	while (us_start_page < us_end_page) {
 873              		.loc 1 773 0
 874 0028 A542     		cmp	r5, r4
 875 002a 0DD9     		bls	.L97
 774:../asf/sam/services/flash_efc/flash_efc.c **** 		ul_error = efc_perform_command(p_efc, EFC_FCMD_CLB,
 876              		.loc 1 774 0
 877 002c 084E     		ldr	r6, .L107+4
 878 002e 02E0     		b	.L96
 879              	.LVL91:
 880              	.L106:
 775:../asf/sam/services/flash_efc/flash_efc.c **** 				us_start_page);
 776:../asf/sam/services/flash_efc/flash_efc.c **** 		if (ul_error) {
 777:../asf/sam/services/flash_efc/flash_efc.c **** 			return ul_error;
 778:../asf/sam/services/flash_efc/flash_efc.c **** 		}
 779:../asf/sam/services/flash_efc/flash_efc.c **** 		us_start_page += us_num_pages_in_region;
 881              		.loc 1 779 0
 882 0030 A4B2     		uxth	r4, r4
ARM GAS  /tmp/ccfM1LZ3.s 			page 31


 883              	.LVL92:
 773:../asf/sam/services/flash_efc/flash_efc.c **** 		ul_error = efc_perform_command(p_efc, EFC_FCMD_CLB,
 884              		.loc 1 773 0
 885 0032 AC42     		cmp	r4, r5
 886 0034 08D2     		bcs	.L97
 887              	.LVL93:
 888              	.L96:
 774:../asf/sam/services/flash_efc/flash_efc.c **** 		ul_error = efc_perform_command(p_efc, EFC_FCMD_CLB,
 889              		.loc 1 774 0
 890 0036 2246     		mov	r2, r4
 891 0038 0921     		movs	r1, #9
 892 003a 3046     		mov	r0, r6
 893              		.loc 1 779 0
 894 003c 2034     		adds	r4, r4, #32
 895              	.LVL94:
 774:../asf/sam/services/flash_efc/flash_efc.c **** 		ul_error = efc_perform_command(p_efc, EFC_FCMD_CLB,
 896              		.loc 1 774 0
 897 003e FFF7FEFF 		bl	efc_perform_command
 898              	.LVL95:
 776:../asf/sam/services/flash_efc/flash_efc.c **** 			return ul_error;
 899              		.loc 1 776 0
 900 0042 0028     		cmp	r0, #0
 901 0044 F4D0     		beq	.L106
 780:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 781:../asf/sam/services/flash_efc/flash_efc.c **** 
 782:../asf/sam/services/flash_efc/flash_efc.c **** 	return FLASH_RC_OK;
 783:../asf/sam/services/flash_efc/flash_efc.c **** }
 902              		.loc 1 783 0
 903 0046 70BD     		pop	{r4, r5, r6, pc}
 904              	.LVL96:
 905              	.L97:
 782:../asf/sam/services/flash_efc/flash_efc.c **** }
 906              		.loc 1 782 0
 907 0048 0020     		movs	r0, #0
 908 004a 70BD     		pop	{r4, r5, r6, pc}
 909              	.LVL97:
 910              	.L108:
 911              		.align	2
 912              	.L107:
 913 004c 00C0FFFF 		.word	-16384
 914 0050 000C0E40 		.word	1074662400
 915              		.cfi_endproc
 916              	.LFE178:
 917              		.size	flash_unlock, .-flash_unlock
 918              		.section	.text.flash_is_locked,"ax",%progbits
 919              		.align	1
 920              		.p2align 2,,3
 921              		.global	flash_is_locked
 922              		.syntax unified
 923              		.thumb
 924              		.thumb_func
 925              		.fpu fpv5-d16
 926              		.type	flash_is_locked, %function
 927              	flash_is_locked:
 928              	.LFB179:
 784:../asf/sam/services/flash_efc/flash_efc.c **** 
 785:../asf/sam/services/flash_efc/flash_efc.c **** /**
ARM GAS  /tmp/ccfM1LZ3.s 			page 32


 786:../asf/sam/services/flash_efc/flash_efc.c ****  * \brief Get the number of locked regions inside the given address range.
 787:../asf/sam/services/flash_efc/flash_efc.c ****  *
 788:../asf/sam/services/flash_efc/flash_efc.c ****  * \param ul_start Start address of range
 789:../asf/sam/services/flash_efc/flash_efc.c ****  * \param ul_end End address of range.
 790:../asf/sam/services/flash_efc/flash_efc.c ****  *
 791:../asf/sam/services/flash_efc/flash_efc.c ****  * \return The number of locked regions inside the given address range.
 792:../asf/sam/services/flash_efc/flash_efc.c ****  */
 793:../asf/sam/services/flash_efc/flash_efc.c **** uint32_t flash_is_locked(uint32_t ul_start, uint32_t ul_end)
 794:../asf/sam/services/flash_efc/flash_efc.c **** {
 929              		.loc 1 794 0
 930              		.cfi_startproc
 931              		@ args = 0, pretend = 0, frame = 0
 932              		@ frame_needed = 0, uses_anonymous_args = 0
 933              	.LVL98:
 934 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 935              		.cfi_def_cfa_offset 24
 936              		.cfi_offset 4, -24
 937              		.cfi_offset 5, -20
 938              		.cfi_offset 6, -16
 939              		.cfi_offset 7, -12
 940              		.cfi_offset 8, -8
 941              		.cfi_offset 14, -4
 795:../asf/sam/services/flash_efc/flash_efc.c **** 	Efc *p_efc;
 796:../asf/sam/services/flash_efc/flash_efc.c **** 	uint16_t us_start_page, us_end_page;
 797:../asf/sam/services/flash_efc/flash_efc.c **** 	uint8_t uc_start_region, uc_end_region;
 798:../asf/sam/services/flash_efc/flash_efc.c **** 	uint16_t us_num_pages_in_region;
 799:../asf/sam/services/flash_efc/flash_efc.c **** 	uint32_t ul_status;
 800:../asf/sam/services/flash_efc/flash_efc.c **** 	uint32_t ul_error;
 801:../asf/sam/services/flash_efc/flash_efc.c **** 	uint32_t ul_num_locked_regions = 0;
 802:../asf/sam/services/flash_efc/flash_efc.c **** 	uint32_t ul_count = 0;
 803:../asf/sam/services/flash_efc/flash_efc.c **** 	uint32_t ul_bit = 0;
 804:../asf/sam/services/flash_efc/flash_efc.c **** 
 805:../asf/sam/services/flash_efc/flash_efc.c **** 	Assert(ul_end >= ul_start);
 806:../asf/sam/services/flash_efc/flash_efc.c **** 
 807:../asf/sam/services/flash_efc/flash_efc.c **** #ifdef EFC1
 808:../asf/sam/services/flash_efc/flash_efc.c **** 	Assert(((ul_start >= IFLASH0_ADDR)
 809:../asf/sam/services/flash_efc/flash_efc.c **** 				&& (ul_end <= IFLASH0_ADDR + IFLASH0_SIZE))
 810:../asf/sam/services/flash_efc/flash_efc.c **** 				|| ((ul_start >= IFLASH1_ADDR)
 811:../asf/sam/services/flash_efc/flash_efc.c **** 					&& (ul_end <= IFLASH1_ADDR + IFLASH1_SIZE)));
 812:../asf/sam/services/flash_efc/flash_efc.c **** #else
 813:../asf/sam/services/flash_efc/flash_efc.c **** 	Assert((ul_start >= IFLASH_ADDR)
 814:../asf/sam/services/flash_efc/flash_efc.c **** 				&& (ul_end <= IFLASH_ADDR + IFLASH_SIZE));
 815:../asf/sam/services/flash_efc/flash_efc.c **** #endif
 816:../asf/sam/services/flash_efc/flash_efc.c **** 
 817:../asf/sam/services/flash_efc/flash_efc.c **** 	/* Compute page numbers */
 818:../asf/sam/services/flash_efc/flash_efc.c **** 	translate_address(&p_efc, ul_start, &us_start_page, 0);
 819:../asf/sam/services/flash_efc/flash_efc.c **** 	translate_address(0, ul_end, &us_end_page, 0);
 820:../asf/sam/services/flash_efc/flash_efc.c **** 
 821:../asf/sam/services/flash_efc/flash_efc.c **** 	/* Compute region numbers */
 822:../asf/sam/services/flash_efc/flash_efc.c **** 	us_num_pages_in_region = IFLASH_LOCK_REGION_SIZE / IFLASH_PAGE_SIZE;
 823:../asf/sam/services/flash_efc/flash_efc.c **** 	uc_start_region = us_start_page / us_num_pages_in_region;
 824:../asf/sam/services/flash_efc/flash_efc.c **** 	uc_end_region = us_end_page / us_num_pages_in_region;
 825:../asf/sam/services/flash_efc/flash_efc.c **** 
 826:../asf/sam/services/flash_efc/flash_efc.c **** 	/* Retrieve lock status */
 827:../asf/sam/services/flash_efc/flash_efc.c **** 	ul_error = efc_perform_command(p_efc, EFC_FCMD_GLB, 0);
 942              		.loc 1 827 0
 943 0004 0022     		movs	r2, #0
ARM GAS  /tmp/ccfM1LZ3.s 			page 33


 794:../asf/sam/services/flash_efc/flash_efc.c **** 	Efc *p_efc;
 944              		.loc 1 794 0
 945 0006 0746     		mov	r7, r0
 946              	.LVL99:
 947 0008 0E46     		mov	r6, r1
 948              	.LVL100:
 949              		.loc 1 827 0
 950 000a 1E48     		ldr	r0, .L124
 951              	.LVL101:
 952 000c 0A21     		movs	r1, #10
 953              	.LVL102:
 954 000e FFF7FEFF 		bl	efc_perform_command
 955              	.LVL103:
 828:../asf/sam/services/flash_efc/flash_efc.c **** 	if (ul_error) {
 956              		.loc 1 828 0
 957 0012 0446     		mov	r4, r0
 958 0014 10B1     		cbz	r0, .L122
 959              	.LVL104:
 960              	.L109:
 829:../asf/sam/services/flash_efc/flash_efc.c **** 		return ul_error;
 830:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 831:../asf/sam/services/flash_efc/flash_efc.c ****     UNUSED(ul_error);
 832:../asf/sam/services/flash_efc/flash_efc.c **** 
 833:../asf/sam/services/flash_efc/flash_efc.c **** 	/* Skip unrequested regions (if necessary) */
 834:../asf/sam/services/flash_efc/flash_efc.c **** 	ul_status = efc_get_result(p_efc);
 835:../asf/sam/services/flash_efc/flash_efc.c **** 	while (!(ul_count <= uc_start_region &&
 836:../asf/sam/services/flash_efc/flash_efc.c **** 			uc_start_region < (ul_count + 32))) {
 837:../asf/sam/services/flash_efc/flash_efc.c **** 		ul_status = efc_get_result(p_efc);
 838:../asf/sam/services/flash_efc/flash_efc.c **** 		ul_count += 32;
 839:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 840:../asf/sam/services/flash_efc/flash_efc.c **** 
 841:../asf/sam/services/flash_efc/flash_efc.c **** 	/* Check status of each involved region */
 842:../asf/sam/services/flash_efc/flash_efc.c **** 	ul_bit = uc_start_region - ul_count;
 843:../asf/sam/services/flash_efc/flash_efc.c **** 
 844:../asf/sam/services/flash_efc/flash_efc.c **** 	/* Number of region to check (must be > 0) */
 845:../asf/sam/services/flash_efc/flash_efc.c **** 	ul_count = uc_end_region - uc_start_region + 1;
 846:../asf/sam/services/flash_efc/flash_efc.c **** 
 847:../asf/sam/services/flash_efc/flash_efc.c **** 	while (ul_count > 0) {
 848:../asf/sam/services/flash_efc/flash_efc.c **** 		if (ul_status & (1 << (ul_bit))) {
 849:../asf/sam/services/flash_efc/flash_efc.c **** 			ul_num_locked_regions++;
 850:../asf/sam/services/flash_efc/flash_efc.c **** 		}
 851:../asf/sam/services/flash_efc/flash_efc.c **** 
 852:../asf/sam/services/flash_efc/flash_efc.c **** 		ul_count -= 1;
 853:../asf/sam/services/flash_efc/flash_efc.c **** 		ul_bit += 1;
 854:../asf/sam/services/flash_efc/flash_efc.c **** 		if (ul_bit == 32) {
 855:../asf/sam/services/flash_efc/flash_efc.c **** 			ul_status = efc_get_result(p_efc);
 856:../asf/sam/services/flash_efc/flash_efc.c **** 			ul_bit = 0;
 857:../asf/sam/services/flash_efc/flash_efc.c **** 		}
 858:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 859:../asf/sam/services/flash_efc/flash_efc.c **** 
 860:../asf/sam/services/flash_efc/flash_efc.c **** 	return ul_num_locked_regions;
 861:../asf/sam/services/flash_efc/flash_efc.c **** }
 961              		.loc 1 861 0
 962 0016 2046     		mov	r0, r4
 963 0018 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 964              	.LVL105:
 965              	.L122:
ARM GAS  /tmp/ccfM1LZ3.s 			page 34


 834:../asf/sam/services/flash_efc/flash_efc.c **** 	while (!(ul_count <= uc_start_region &&
 966              		.loc 1 834 0
 967 001c 1948     		ldr	r0, .L124
 968              	.LVL106:
 823:../asf/sam/services/flash_efc/flash_efc.c **** 	uc_end_region = us_end_page / us_num_pages_in_region;
 969              		.loc 1 823 0
 970 001e C7F38737 		ubfx	r7, r7, #14, #8
 971              	.LVL107:
 834:../asf/sam/services/flash_efc/flash_efc.c **** 	while (!(ul_count <= uc_start_region &&
 972              		.loc 1 834 0
 973 0022 FFF7FEFF 		bl	efc_get_result
 974              	.LVL108:
 835:../asf/sam/services/flash_efc/flash_efc.c **** 			uc_start_region < (ul_count + 32))) {
 975              		.loc 1 835 0
 976 0026 2025     		movs	r5, #32
 834:../asf/sam/services/flash_efc/flash_efc.c **** 	while (!(ul_count <= uc_start_region &&
 977              		.loc 1 834 0
 978 0028 0146     		mov	r1, r0
 979              	.LVL109:
 837:../asf/sam/services/flash_efc/flash_efc.c **** 		ul_count += 32;
 980              		.loc 1 837 0
 981 002a DFF85880 		ldr	r8, .L124
 835:../asf/sam/services/flash_efc/flash_efc.c **** 			uc_start_region < (ul_count + 32))) {
 982              		.loc 1 835 0
 983 002e 04E0     		b	.L111
 984              	.LVL110:
 985              	.L112:
 837:../asf/sam/services/flash_efc/flash_efc.c **** 		ul_count += 32;
 986              		.loc 1 837 0
 987 0030 FFF7FEFF 		bl	efc_get_result
 988              	.LVL111:
 989 0034 2034     		adds	r4, r4, #32
 990              	.LVL112:
 991 0036 0146     		mov	r1, r0
 992              	.LVL113:
 993 0038 2035     		adds	r5, r5, #32
 994              	.L111:
 995              	.LVL114:
 835:../asf/sam/services/flash_efc/flash_efc.c **** 			uc_start_region < (ul_count + 32))) {
 996              		.loc 1 835 0
 997 003a A742     		cmp	r7, r4
 837:../asf/sam/services/flash_efc/flash_efc.c **** 		ul_count += 32;
 998              		.loc 1 837 0
 999 003c 4046     		mov	r0, r8
 835:../asf/sam/services/flash_efc/flash_efc.c **** 			uc_start_region < (ul_count + 32))) {
 1000              		.loc 1 835 0
 1001 003e F7D3     		bcc	.L112
 835:../asf/sam/services/flash_efc/flash_efc.c **** 			uc_start_region < (ul_count + 32))) {
 1002              		.loc 1 835 0 is_stmt 0 discriminator 1
 1003 0040 AF42     		cmp	r7, r5
 1004 0042 F5D2     		bcs	.L112
 845:../asf/sam/services/flash_efc/flash_efc.c **** 
 1005              		.loc 1 845 0 is_stmt 1
 1006 0044 C6F38736 		ubfx	r6, r6, #14, #8
 1007              	.LVL115:
 842:../asf/sam/services/flash_efc/flash_efc.c **** 
 1008              		.loc 1 842 0
ARM GAS  /tmp/ccfM1LZ3.s 			page 35


 1009 0048 3B1B     		subs	r3, r7, r4
 1010              	.LVL116:
 845:../asf/sam/services/flash_efc/flash_efc.c **** 
 1011              		.loc 1 845 0
 1012 004a F41B     		subs	r4, r6, r7
 1013              	.LVL117:
 847:../asf/sam/services/flash_efc/flash_efc.c **** 		if (ul_status & (1 << (ul_bit))) {
 1014              		.loc 1 847 0
 1015 004c 651C     		adds	r5, r4, #1
 1016              	.LVL118:
 1017 004e 16D0     		beq	.L116
 1018 0050 0024     		movs	r4, #0
 848:../asf/sam/services/flash_efc/flash_efc.c **** 			ul_num_locked_regions++;
 1019              		.loc 1 848 0
 1020 0052 0126     		movs	r6, #1
 855:../asf/sam/services/flash_efc/flash_efc.c **** 			ul_bit = 0;
 1021              		.loc 1 855 0
 1022 0054 0B4F     		ldr	r7, .L124
 1023              	.LVL119:
 1024              	.L115:
 848:../asf/sam/services/flash_efc/flash_efc.c **** 			ul_num_locked_regions++;
 1025              		.loc 1 848 0
 1026 0056 06FA03F2 		lsl	r2, r6, r3
 1027 005a 0133     		adds	r3, r3, #1
 1028              	.LVL120:
 852:../asf/sam/services/flash_efc/flash_efc.c **** 		ul_bit += 1;
 1029              		.loc 1 852 0
 1030 005c 013D     		subs	r5, r5, #1
 1031              	.LVL121:
 848:../asf/sam/services/flash_efc/flash_efc.c **** 			ul_num_locked_regions++;
 1032              		.loc 1 848 0
 1033 005e 0A42     		tst	r2, r1
 849:../asf/sam/services/flash_efc/flash_efc.c **** 		}
 1034              		.loc 1 849 0
 1035 0060 18BF     		it	ne
 1036 0062 0134     		addne	r4, r4, #1
 1037              	.LVL122:
 854:../asf/sam/services/flash_efc/flash_efc.c **** 			ul_status = efc_get_result(p_efc);
 1038              		.loc 1 854 0
 1039 0064 202B     		cmp	r3, #32
 1040 0066 02D0     		beq	.L123
 847:../asf/sam/services/flash_efc/flash_efc.c **** 		if (ul_status & (1 << (ul_bit))) {
 1041              		.loc 1 847 0
 1042 0068 002D     		cmp	r5, #0
 1043 006a F4D1     		bne	.L115
 1044 006c D3E7     		b	.L109
 1045              	.L123:
 855:../asf/sam/services/flash_efc/flash_efc.c **** 			ul_bit = 0;
 1046              		.loc 1 855 0
 1047 006e 3846     		mov	r0, r7
 1048 0070 FFF7FEFF 		bl	efc_get_result
 1049              	.LVL123:
 856:../asf/sam/services/flash_efc/flash_efc.c **** 		}
 1050              		.loc 1 856 0
 1051 0074 0023     		movs	r3, #0
 855:../asf/sam/services/flash_efc/flash_efc.c **** 			ul_bit = 0;
 1052              		.loc 1 855 0
ARM GAS  /tmp/ccfM1LZ3.s 			page 36


 1053 0076 0146     		mov	r1, r0
 1054              	.LVL124:
 847:../asf/sam/services/flash_efc/flash_efc.c **** 		if (ul_status & (1 << (ul_bit))) {
 1055              		.loc 1 847 0
 1056 0078 002D     		cmp	r5, #0
 1057 007a ECD1     		bne	.L115
 1058 007c CBE7     		b	.L109
 1059              	.LVL125:
 1060              	.L116:
 801:../asf/sam/services/flash_efc/flash_efc.c **** 	uint32_t ul_count = 0;
 1061              		.loc 1 801 0
 1062 007e 2C46     		mov	r4, r5
 1063              	.LVL126:
 1064 0080 C9E7     		b	.L109
 1065              	.L125:
 1066 0082 00BF     		.align	2
 1067              	.L124:
 1068 0084 000C0E40 		.word	1074662400
 1069              		.cfi_endproc
 1070              	.LFE179:
 1071              		.size	flash_is_locked, .-flash_is_locked
 1072              		.section	.text.flash_is_gpnvm_set,"ax",%progbits
 1073              		.align	1
 1074              		.p2align 2,,3
 1075              		.global	flash_is_gpnvm_set
 1076              		.syntax unified
 1077              		.thumb
 1078              		.thumb_func
 1079              		.fpu fpv5-d16
 1080              		.type	flash_is_gpnvm_set, %function
 1081              	flash_is_gpnvm_set:
 1082              	.LFB182:
 862:../asf/sam/services/flash_efc/flash_efc.c **** 
 863:../asf/sam/services/flash_efc/flash_efc.c **** /**
 864:../asf/sam/services/flash_efc/flash_efc.c ****  * \brief Set the given GPNVM bit.
 865:../asf/sam/services/flash_efc/flash_efc.c ****  *
 866:../asf/sam/services/flash_efc/flash_efc.c ****  * \param ul_gpnvm GPNVM bit index.
 867:../asf/sam/services/flash_efc/flash_efc.c ****  *
 868:../asf/sam/services/flash_efc/flash_efc.c ****  * \return 0 if successful; otherwise returns an error code.
 869:../asf/sam/services/flash_efc/flash_efc.c ****  */
 870:../asf/sam/services/flash_efc/flash_efc.c **** uint32_t flash_set_gpnvm(uint32_t ul_gpnvm)
 871:../asf/sam/services/flash_efc/flash_efc.c **** {
 872:../asf/sam/services/flash_efc/flash_efc.c **** 	if (ul_gpnvm >= GPNVM_NUM_MAX) {
 873:../asf/sam/services/flash_efc/flash_efc.c **** 		return FLASH_RC_INVALID;
 874:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 875:../asf/sam/services/flash_efc/flash_efc.c **** 
 876:../asf/sam/services/flash_efc/flash_efc.c **** 	if (FLASH_RC_YES == flash_is_gpnvm_set(ul_gpnvm)) {
 877:../asf/sam/services/flash_efc/flash_efc.c **** 		return FLASH_RC_OK;
 878:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 879:../asf/sam/services/flash_efc/flash_efc.c **** 
 880:../asf/sam/services/flash_efc/flash_efc.c **** 	if (EFC_RC_OK == efc_perform_command(EFC, EFC_FCMD_SGPB, ul_gpnvm)) {
 881:../asf/sam/services/flash_efc/flash_efc.c **** 		return FLASH_RC_OK;
 882:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 883:../asf/sam/services/flash_efc/flash_efc.c **** 
 884:../asf/sam/services/flash_efc/flash_efc.c **** 	return FLASH_RC_ERROR;
 885:../asf/sam/services/flash_efc/flash_efc.c **** }
 886:../asf/sam/services/flash_efc/flash_efc.c **** 
ARM GAS  /tmp/ccfM1LZ3.s 			page 37


 887:../asf/sam/services/flash_efc/flash_efc.c **** /**
 888:../asf/sam/services/flash_efc/flash_efc.c ****  * \brief Clear the given GPNVM bit.
 889:../asf/sam/services/flash_efc/flash_efc.c ****  *
 890:../asf/sam/services/flash_efc/flash_efc.c ****  * \param ul_gpnvm GPNVM bit index.
 891:../asf/sam/services/flash_efc/flash_efc.c ****  *
 892:../asf/sam/services/flash_efc/flash_efc.c ****  * \return 0 if successful; otherwise returns an error code.
 893:../asf/sam/services/flash_efc/flash_efc.c ****  */
 894:../asf/sam/services/flash_efc/flash_efc.c **** uint32_t flash_clear_gpnvm(uint32_t ul_gpnvm)
 895:../asf/sam/services/flash_efc/flash_efc.c **** {
 896:../asf/sam/services/flash_efc/flash_efc.c **** 	if (ul_gpnvm >= GPNVM_NUM_MAX) {
 897:../asf/sam/services/flash_efc/flash_efc.c **** 		return FLASH_RC_INVALID;
 898:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 899:../asf/sam/services/flash_efc/flash_efc.c **** 
 900:../asf/sam/services/flash_efc/flash_efc.c **** 	if (FLASH_RC_NO == flash_is_gpnvm_set(ul_gpnvm)) {
 901:../asf/sam/services/flash_efc/flash_efc.c **** 		return FLASH_RC_OK;
 902:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 903:../asf/sam/services/flash_efc/flash_efc.c **** 
 904:../asf/sam/services/flash_efc/flash_efc.c **** 	if (EFC_RC_OK == efc_perform_command(EFC, EFC_FCMD_CGPB, ul_gpnvm)) {
 905:../asf/sam/services/flash_efc/flash_efc.c **** 		return FLASH_RC_OK;
 906:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 907:../asf/sam/services/flash_efc/flash_efc.c **** 
 908:../asf/sam/services/flash_efc/flash_efc.c **** 	return FLASH_RC_ERROR;
 909:../asf/sam/services/flash_efc/flash_efc.c **** }
 910:../asf/sam/services/flash_efc/flash_efc.c **** 
 911:../asf/sam/services/flash_efc/flash_efc.c **** /**
 912:../asf/sam/services/flash_efc/flash_efc.c ****  * \brief Check if the given GPNVM bit is set or not.
 913:../asf/sam/services/flash_efc/flash_efc.c ****  *
 914:../asf/sam/services/flash_efc/flash_efc.c ****  * \param ul_gpnvm GPNVM bit index.
 915:../asf/sam/services/flash_efc/flash_efc.c ****  *
 916:../asf/sam/services/flash_efc/flash_efc.c ****  * \retval 1 If the given GPNVM bit is currently set.
 917:../asf/sam/services/flash_efc/flash_efc.c ****  * \retval 0 If the given GPNVM bit is currently cleared.
 918:../asf/sam/services/flash_efc/flash_efc.c ****  * otherwise returns an error code.
 919:../asf/sam/services/flash_efc/flash_efc.c ****  */
 920:../asf/sam/services/flash_efc/flash_efc.c **** uint32_t flash_is_gpnvm_set(uint32_t ul_gpnvm)
 921:../asf/sam/services/flash_efc/flash_efc.c **** {
 1083              		.loc 1 921 0
 1084              		.cfi_startproc
 1085              		@ args = 0, pretend = 0, frame = 0
 1086              		@ frame_needed = 0, uses_anonymous_args = 0
 1087              	.LVL127:
 922:../asf/sam/services/flash_efc/flash_efc.c **** 	uint32_t ul_gpnvm_bits;
 923:../asf/sam/services/flash_efc/flash_efc.c **** 
 924:../asf/sam/services/flash_efc/flash_efc.c **** 	if (ul_gpnvm >= GPNVM_NUM_MAX) {
 1088              		.loc 1 924 0
 1089 0000 0828     		cmp	r0, #8
 1090 0002 01D9     		bls	.L134
 925:../asf/sam/services/flash_efc/flash_efc.c **** 		return FLASH_RC_INVALID;
 1091              		.loc 1 925 0
 1092 0004 1120     		movs	r0, #17
 1093              	.LVL128:
 1094 0006 7047     		bx	lr
 1095              	.LVL129:
 1096              	.L134:
 921:../asf/sam/services/flash_efc/flash_efc.c **** 	uint32_t ul_gpnvm_bits;
 1097              		.loc 1 921 0
 1098 0008 10B5     		push	{r4, lr}
 1099              		.cfi_def_cfa_offset 8
ARM GAS  /tmp/ccfM1LZ3.s 			page 38


 1100              		.cfi_offset 4, -8
 1101              		.cfi_offset 14, -4
 926:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 927:../asf/sam/services/flash_efc/flash_efc.c **** 
 928:../asf/sam/services/flash_efc/flash_efc.c **** 	if (EFC_RC_OK != efc_perform_command(EFC, EFC_FCMD_GGPB, 0)) {
 1102              		.loc 1 928 0
 1103 000a 0022     		movs	r2, #0
 1104 000c 0446     		mov	r4, r0
 1105 000e 0D21     		movs	r1, #13
 1106 0010 0848     		ldr	r0, .L136
 1107              	.LVL130:
 1108 0012 FFF7FEFF 		bl	efc_perform_command
 1109              	.LVL131:
 1110 0016 08B1     		cbz	r0, .L135
 929:../asf/sam/services/flash_efc/flash_efc.c **** 		return FLASH_RC_ERROR;
 1111              		.loc 1 929 0
 1112 0018 1020     		movs	r0, #16
 930:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 931:../asf/sam/services/flash_efc/flash_efc.c **** 
 932:../asf/sam/services/flash_efc/flash_efc.c **** 	ul_gpnvm_bits = efc_get_result(EFC);
 933:../asf/sam/services/flash_efc/flash_efc.c **** 	if (ul_gpnvm_bits & (1 << ul_gpnvm)) {
 934:../asf/sam/services/flash_efc/flash_efc.c **** 		return FLASH_RC_YES;
 935:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 936:../asf/sam/services/flash_efc/flash_efc.c **** 
 937:../asf/sam/services/flash_efc/flash_efc.c **** 	return FLASH_RC_NO;
 938:../asf/sam/services/flash_efc/flash_efc.c **** }
 1113              		.loc 1 938 0
 1114 001a 10BD     		pop	{r4, pc}
 1115              	.LVL132:
 1116              	.L135:
 1117              	.LBB86:
 1118              	.LBB87:
 932:../asf/sam/services/flash_efc/flash_efc.c **** 	if (ul_gpnvm_bits & (1 << ul_gpnvm)) {
 1119              		.loc 1 932 0
 1120 001c 0548     		ldr	r0, .L136
 1121 001e FFF7FEFF 		bl	efc_get_result
 1122              	.LVL133:
 933:../asf/sam/services/flash_efc/flash_efc.c **** 		return FLASH_RC_YES;
 1123              		.loc 1 933 0
 1124 0022 0123     		movs	r3, #1
 1125 0024 03FA04F4 		lsl	r4, r3, r4
 1126              	.LVL134:
 1127 0028 0442     		tst	r4, r0
 1128 002a 14BF     		ite	ne
 1129 002c 1846     		movne	r0, r3
 1130              	.LVL135:
 1131 002e 0020     		moveq	r0, #0
 1132 0030 10BD     		pop	{r4, pc}
 1133              	.L137:
 1134 0032 00BF     		.align	2
 1135              	.L136:
 1136 0034 000C0E40 		.word	1074662400
 1137              	.LBE87:
 1138              	.LBE86:
 1139              		.cfi_endproc
 1140              	.LFE182:
 1141              		.size	flash_is_gpnvm_set, .-flash_is_gpnvm_set
ARM GAS  /tmp/ccfM1LZ3.s 			page 39


 1142              		.section	.text.flash_set_gpnvm,"ax",%progbits
 1143              		.align	1
 1144              		.p2align 2,,3
 1145              		.global	flash_set_gpnvm
 1146              		.syntax unified
 1147              		.thumb
 1148              		.thumb_func
 1149              		.fpu fpv5-d16
 1150              		.type	flash_set_gpnvm, %function
 1151              	flash_set_gpnvm:
 1152              	.LFB180:
 871:../asf/sam/services/flash_efc/flash_efc.c **** 	if (ul_gpnvm >= GPNVM_NUM_MAX) {
 1153              		.loc 1 871 0
 1154              		.cfi_startproc
 1155              		@ args = 0, pretend = 0, frame = 0
 1156              		@ frame_needed = 0, uses_anonymous_args = 0
 1157              	.LVL136:
 872:../asf/sam/services/flash_efc/flash_efc.c **** 		return FLASH_RC_INVALID;
 1158              		.loc 1 872 0
 1159 0000 0828     		cmp	r0, #8
 1160 0002 01D9     		bls	.L150
 873:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 1161              		.loc 1 873 0
 1162 0004 1120     		movs	r0, #17
 1163              	.LVL137:
 1164 0006 7047     		bx	lr
 1165              	.LVL138:
 1166              	.L150:
 871:../asf/sam/services/flash_efc/flash_efc.c **** 	if (ul_gpnvm >= GPNVM_NUM_MAX) {
 1167              		.loc 1 871 0
 1168 0008 10B5     		push	{r4, lr}
 1169              		.cfi_def_cfa_offset 8
 1170              		.cfi_offset 4, -8
 1171              		.cfi_offset 14, -4
 1172 000a 0446     		mov	r4, r0
 876:../asf/sam/services/flash_efc/flash_efc.c **** 		return FLASH_RC_OK;
 1173              		.loc 1 876 0
 1174 000c FFF7FEFF 		bl	flash_is_gpnvm_set
 1175              	.LVL139:
 1176 0010 0128     		cmp	r0, #1
 1177 0012 07D0     		beq	.L141
 1178              	.LVL140:
 1179              	.LBB90:
 1180              	.LBB91:
 880:../asf/sam/services/flash_efc/flash_efc.c **** 		return FLASH_RC_OK;
 1181              		.loc 1 880 0
 1182 0014 2246     		mov	r2, r4
 1183 0016 0B21     		movs	r1, #11
 1184 0018 0348     		ldr	r0, .L151
 1185 001a FFF7FEFF 		bl	efc_perform_command
 1186              	.LVL141:
 1187 001e 08B1     		cbz	r0, .L141
 884:../asf/sam/services/flash_efc/flash_efc.c **** }
 1188              		.loc 1 884 0
 1189 0020 1020     		movs	r0, #16
 1190 0022 10BD     		pop	{r4, pc}
 1191              	.LVL142:
ARM GAS  /tmp/ccfM1LZ3.s 			page 40


 1192              	.L141:
 1193              	.LBE91:
 1194              	.LBE90:
 877:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 1195              		.loc 1 877 0
 1196 0024 0020     		movs	r0, #0
 1197 0026 10BD     		pop	{r4, pc}
 1198              	.LVL143:
 1199              	.L152:
 1200              		.align	2
 1201              	.L151:
 1202 0028 000C0E40 		.word	1074662400
 1203              		.cfi_endproc
 1204              	.LFE180:
 1205              		.size	flash_set_gpnvm, .-flash_set_gpnvm
 1206              		.section	.text.flash_clear_gpnvm,"ax",%progbits
 1207              		.align	1
 1208              		.p2align 2,,3
 1209              		.global	flash_clear_gpnvm
 1210              		.syntax unified
 1211              		.thumb
 1212              		.thumb_func
 1213              		.fpu fpv5-d16
 1214              		.type	flash_clear_gpnvm, %function
 1215              	flash_clear_gpnvm:
 1216              	.LFB181:
 895:../asf/sam/services/flash_efc/flash_efc.c **** 	if (ul_gpnvm >= GPNVM_NUM_MAX) {
 1217              		.loc 1 895 0
 1218              		.cfi_startproc
 1219              		@ args = 0, pretend = 0, frame = 0
 1220              		@ frame_needed = 0, uses_anonymous_args = 0
 1221              	.LVL144:
 896:../asf/sam/services/flash_efc/flash_efc.c **** 		return FLASH_RC_INVALID;
 1222              		.loc 1 896 0
 1223 0000 0828     		cmp	r0, #8
 1224 0002 01D9     		bls	.L165
 897:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 1225              		.loc 1 897 0
 1226 0004 1120     		movs	r0, #17
 1227              	.LVL145:
 1228 0006 7047     		bx	lr
 1229              	.LVL146:
 1230              	.L165:
 895:../asf/sam/services/flash_efc/flash_efc.c **** 	if (ul_gpnvm >= GPNVM_NUM_MAX) {
 1231              		.loc 1 895 0
 1232 0008 10B5     		push	{r4, lr}
 1233              		.cfi_def_cfa_offset 8
 1234              		.cfi_offset 4, -8
 1235              		.cfi_offset 14, -4
 1236 000a 0446     		mov	r4, r0
 900:../asf/sam/services/flash_efc/flash_efc.c **** 		return FLASH_RC_OK;
 1237              		.loc 1 900 0
 1238 000c FFF7FEFF 		bl	flash_is_gpnvm_set
 1239              	.LVL147:
 1240 0010 08B9     		cbnz	r0, .L155
 1241              	.L156:
 901:../asf/sam/services/flash_efc/flash_efc.c **** 	}
ARM GAS  /tmp/ccfM1LZ3.s 			page 41


 1242              		.loc 1 901 0
 1243 0012 0020     		movs	r0, #0
 1244 0014 10BD     		pop	{r4, pc}
 1245              	.LVL148:
 1246              	.L155:
 904:../asf/sam/services/flash_efc/flash_efc.c **** 		return FLASH_RC_OK;
 1247              		.loc 1 904 0
 1248 0016 2246     		mov	r2, r4
 1249 0018 0C21     		movs	r1, #12
 1250 001a 0348     		ldr	r0, .L166
 1251 001c FFF7FEFF 		bl	efc_perform_command
 1252              	.LVL149:
 1253 0020 0028     		cmp	r0, #0
 1254 0022 F6D0     		beq	.L156
 908:../asf/sam/services/flash_efc/flash_efc.c **** }
 1255              		.loc 1 908 0
 1256 0024 1020     		movs	r0, #16
 1257 0026 10BD     		pop	{r4, pc}
 1258              	.LVL150:
 1259              	.L167:
 1260              		.align	2
 1261              	.L166:
 1262 0028 000C0E40 		.word	1074662400
 1263              		.cfi_endproc
 1264              	.LFE181:
 1265              		.size	flash_clear_gpnvm, .-flash_clear_gpnvm
 1266              		.section	.text.flash_enable_security_bit,"ax",%progbits
 1267              		.align	1
 1268              		.p2align 2,,3
 1269              		.global	flash_enable_security_bit
 1270              		.syntax unified
 1271              		.thumb
 1272              		.thumb_func
 1273              		.fpu fpv5-d16
 1274              		.type	flash_enable_security_bit, %function
 1275              	flash_enable_security_bit:
 1276              	.LFB183:
 939:../asf/sam/services/flash_efc/flash_efc.c **** 
 940:../asf/sam/services/flash_efc/flash_efc.c **** /**
 941:../asf/sam/services/flash_efc/flash_efc.c ****  * \brief Set security bit.
 942:../asf/sam/services/flash_efc/flash_efc.c ****  *
 943:../asf/sam/services/flash_efc/flash_efc.c ****  * \return 0 if successful; otherwise returns an error code.
 944:../asf/sam/services/flash_efc/flash_efc.c ****  */
 945:../asf/sam/services/flash_efc/flash_efc.c **** uint32_t flash_enable_security_bit(void)
 946:../asf/sam/services/flash_efc/flash_efc.c **** {
 1277              		.loc 1 946 0
 1278              		.cfi_startproc
 1279              		@ args = 0, pretend = 0, frame = 0
 1280              		@ frame_needed = 0, uses_anonymous_args = 0
 1281              		@ link register save eliminated.
 947:../asf/sam/services/flash_efc/flash_efc.c **** 	return flash_set_gpnvm(0);
 1282              		.loc 1 947 0
 1283 0000 0020     		movs	r0, #0
 1284 0002 FFF7FEBF 		b	flash_set_gpnvm
 1285              	.LVL151:
 1286              		.cfi_endproc
 1287              	.LFE183:
ARM GAS  /tmp/ccfM1LZ3.s 			page 42


 1288              		.size	flash_enable_security_bit, .-flash_enable_security_bit
 1289 0006 00BF     		.section	.text.flash_is_security_bit_enabled,"ax",%progbits
 1290              		.align	1
 1291              		.p2align 2,,3
 1292              		.global	flash_is_security_bit_enabled
 1293              		.syntax unified
 1294              		.thumb
 1295              		.thumb_func
 1296              		.fpu fpv5-d16
 1297              		.type	flash_is_security_bit_enabled, %function
 1298              	flash_is_security_bit_enabled:
 1299              	.LFB184:
 948:../asf/sam/services/flash_efc/flash_efc.c **** }
 949:../asf/sam/services/flash_efc/flash_efc.c **** 
 950:../asf/sam/services/flash_efc/flash_efc.c **** /**
 951:../asf/sam/services/flash_efc/flash_efc.c ****  * \brief Check if the security bit is set or not.
 952:../asf/sam/services/flash_efc/flash_efc.c ****  *
 953:../asf/sam/services/flash_efc/flash_efc.c ****  * \retval 1 If the security bit is currently set.
 954:../asf/sam/services/flash_efc/flash_efc.c ****  * \retval 0 If the security bit is currently cleared.
 955:../asf/sam/services/flash_efc/flash_efc.c ****  * otherwise returns an error code.
 956:../asf/sam/services/flash_efc/flash_efc.c ****  */
 957:../asf/sam/services/flash_efc/flash_efc.c **** uint32_t flash_is_security_bit_enabled(void)
 958:../asf/sam/services/flash_efc/flash_efc.c **** {
 1300              		.loc 1 958 0
 1301              		.cfi_startproc
 1302              		@ args = 0, pretend = 0, frame = 0
 1303              		@ frame_needed = 0, uses_anonymous_args = 0
 1304              		@ link register save eliminated.
 959:../asf/sam/services/flash_efc/flash_efc.c **** 	return flash_is_gpnvm_set(0);
 1305              		.loc 1 959 0
 1306 0000 0020     		movs	r0, #0
 1307 0002 FFF7FEBF 		b	flash_is_gpnvm_set
 1308              	.LVL152:
 1309              		.cfi_endproc
 1310              	.LFE184:
 1311              		.size	flash_is_security_bit_enabled, .-flash_is_security_bit_enabled
 1312 0006 00BF     		.section	.text.flash_read_unique_id,"ax",%progbits
 1313              		.align	1
 1314              		.p2align 2,,3
 1315              		.global	flash_read_unique_id
 1316              		.syntax unified
 1317              		.thumb
 1318              		.thumb_func
 1319              		.fpu fpv5-d16
 1320              		.type	flash_read_unique_id, %function
 1321              	flash_read_unique_id:
 1322              	.LFB185:
 960:../asf/sam/services/flash_efc/flash_efc.c **** }
 961:../asf/sam/services/flash_efc/flash_efc.c **** 
 962:../asf/sam/services/flash_efc/flash_efc.c **** /**
 963:../asf/sam/services/flash_efc/flash_efc.c ****  * \brief Read the flash unique ID.
 964:../asf/sam/services/flash_efc/flash_efc.c ****  *
 965:../asf/sam/services/flash_efc/flash_efc.c ****  * \param pul_data Pointer to a data buffer to store 128-bit unique ID.
 966:../asf/sam/services/flash_efc/flash_efc.c ****  * \param ul_size Data buffer size in DWORD.
 967:../asf/sam/services/flash_efc/flash_efc.c ****  *
 968:../asf/sam/services/flash_efc/flash_efc.c ****  * \return 0 if successful; otherwise returns an error code.
 969:../asf/sam/services/flash_efc/flash_efc.c ****  */
ARM GAS  /tmp/ccfM1LZ3.s 			page 43


 970:../asf/sam/services/flash_efc/flash_efc.c **** uint32_t flash_read_unique_id(uint32_t *pul_data, uint32_t ul_size)
 971:../asf/sam/services/flash_efc/flash_efc.c **** {
 1323              		.loc 1 971 0
 1324              		.cfi_startproc
 1325              		@ args = 0, pretend = 0, frame = 16
 1326              		@ frame_needed = 0, uses_anonymous_args = 0
 1327              	.LVL153:
 1328 0000 30B5     		push	{r4, r5, lr}
 1329              		.cfi_def_cfa_offset 12
 1330              		.cfi_offset 4, -12
 1331              		.cfi_offset 5, -8
 1332              		.cfi_offset 14, -4
 972:../asf/sam/services/flash_efc/flash_efc.c **** 	uint32_t uid_buf[4];
 973:../asf/sam/services/flash_efc/flash_efc.c **** 	uint32_t ul_idx;
 974:../asf/sam/services/flash_efc/flash_efc.c **** 
 975:../asf/sam/services/flash_efc/flash_efc.c **** 	if (FLASH_RC_OK != efc_perform_read_sequence(EFC, EFC_FCMD_STUI,
 1333              		.loc 1 975 0
 1334 0002 0422     		movs	r2, #4
 971:../asf/sam/services/flash_efc/flash_efc.c **** 	uint32_t uid_buf[4];
 1335              		.loc 1 971 0
 1336 0004 87B0     		sub	sp, sp, #28
 1337              		.cfi_def_cfa_offset 40
 971:../asf/sam/services/flash_efc/flash_efc.c **** 	uint32_t uid_buf[4];
 1338              		.loc 1 971 0
 1339 0006 0446     		mov	r4, r0
 1340 0008 0D46     		mov	r5, r1
 1341              		.loc 1 975 0
 1342 000a 0092     		str	r2, [sp]
 1343 000c 02AB     		add	r3, sp, #8
 1344 000e 0F22     		movs	r2, #15
 1345 0010 0E21     		movs	r1, #14
 1346              	.LVL154:
 1347 0012 0C48     		ldr	r0, .L179
 1348              	.LVL155:
 1349 0014 FFF7FEFF 		bl	efc_perform_read_sequence
 1350              	.LVL156:
 1351 0018 10B1     		cbz	r0, .L178
 976:../asf/sam/services/flash_efc/flash_efc.c **** 			EFC_FCMD_SPUI, uid_buf, 4)) {
 977:../asf/sam/services/flash_efc/flash_efc.c **** 		return FLASH_RC_ERROR;
 1352              		.loc 1 977 0
 1353 001a 1020     		movs	r0, #16
 1354              	.L170:
 978:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 979:../asf/sam/services/flash_efc/flash_efc.c **** 
 980:../asf/sam/services/flash_efc/flash_efc.c **** 	if (ul_size > 4) {
 981:../asf/sam/services/flash_efc/flash_efc.c **** 		/* Only 4 dword to store unique ID */
 982:../asf/sam/services/flash_efc/flash_efc.c **** 		ul_size = 4;
 983:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 984:../asf/sam/services/flash_efc/flash_efc.c **** 
 985:../asf/sam/services/flash_efc/flash_efc.c **** 	for (ul_idx = 0; ul_idx < ul_size; ul_idx++) {
 986:../asf/sam/services/flash_efc/flash_efc.c **** 		pul_data[ul_idx] = uid_buf[ul_idx];
 987:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 988:../asf/sam/services/flash_efc/flash_efc.c **** 
 989:../asf/sam/services/flash_efc/flash_efc.c **** 	return FLASH_RC_OK;
 990:../asf/sam/services/flash_efc/flash_efc.c **** }
 1355              		.loc 1 990 0
 1356 001c 07B0     		add	sp, sp, #28
ARM GAS  /tmp/ccfM1LZ3.s 			page 44


 1357              		.cfi_remember_state
 1358              		.cfi_def_cfa_offset 12
 1359              		@ sp needed
 1360 001e 30BD     		pop	{r4, r5, pc}
 1361              	.LVL157:
 1362              	.L178:
 1363              		.cfi_restore_state
 1364 0020 042D     		cmp	r5, #4
 1365 0022 28BF     		it	cs
 1366 0024 0425     		movcs	r5, #4
 1367              	.LVL158:
 985:../asf/sam/services/flash_efc/flash_efc.c **** 		pul_data[ul_idx] = uid_buf[ul_idx];
 1368              		.loc 1 985 0
 1369 0026 002D     		cmp	r5, #0
 1370 0028 F8D0     		beq	.L170
 1371 002a 2346     		mov	r3, r4
 1372 002c 02AA     		add	r2, sp, #8
 1373 002e 04EB8501 		add	r1, r4, r5, lsl #2
 1374              	.LVL159:
 1375              	.L173:
 986:../asf/sam/services/flash_efc/flash_efc.c **** 	}
 1376              		.loc 1 986 0 discriminator 3
 1377 0032 52F8044B 		ldr	r4, [r2], #4
 1378 0036 43F8044B 		str	r4, [r3], #4
 985:../asf/sam/services/flash_efc/flash_efc.c **** 		pul_data[ul_idx] = uid_buf[ul_idx];
 1379              		.loc 1 985 0 discriminator 3
 1380 003a 8B42     		cmp	r3, r1
 1381 003c F9D1     		bne	.L173
 1382              		.loc 1 990 0
 1383 003e 07B0     		add	sp, sp, #28
 1384              		.cfi_def_cfa_offset 12
 1385              		@ sp needed
 1386 0040 30BD     		pop	{r4, r5, pc}
 1387              	.LVL160:
 1388              	.L180:
 1389 0042 00BF     		.align	2
 1390              	.L179:
 1391 0044 000C0E40 		.word	1074662400
 1392              		.cfi_endproc
 1393              	.LFE185:
 1394              		.size	flash_read_unique_id, .-flash_read_unique_id
 1395              		.section	.text.flash_read_user_signature,"ax",%progbits
 1396              		.align	1
 1397              		.p2align 2,,3
 1398              		.global	flash_read_user_signature
 1399              		.syntax unified
 1400              		.thumb
 1401              		.thumb_func
 1402              		.fpu fpv5-d16
 1403              		.type	flash_read_user_signature, %function
 1404              	flash_read_user_signature:
 1405              	.LFB186:
 991:../asf/sam/services/flash_efc/flash_efc.c **** 
 992:../asf/sam/services/flash_efc/flash_efc.c **** #if (SAM4S || SAM4E || SAM4N || SAM4C || SAMG || SAM4CP || SAM4CM || \
 993:../asf/sam/services/flash_efc/flash_efc.c **** 	 SAMV71 || SAMV70 || SAMS70 || SAME70)
 994:../asf/sam/services/flash_efc/flash_efc.c **** /**
 995:../asf/sam/services/flash_efc/flash_efc.c ****  * \brief Read the flash user signature.
ARM GAS  /tmp/ccfM1LZ3.s 			page 45


 996:../asf/sam/services/flash_efc/flash_efc.c ****  *
 997:../asf/sam/services/flash_efc/flash_efc.c ****  * \param p_data Pointer to a data buffer to store 512 bytes of user signature.
 998:../asf/sam/services/flash_efc/flash_efc.c ****  * \param ul_size Data buffer size in 32 bit words.
 999:../asf/sam/services/flash_efc/flash_efc.c ****  *
1000:../asf/sam/services/flash_efc/flash_efc.c ****  * \return 0 if successful; otherwise returns an error code.
1001:../asf/sam/services/flash_efc/flash_efc.c ****  */
1002:../asf/sam/services/flash_efc/flash_efc.c **** uint32_t flash_read_user_signature(uint32_t *p_data, uint32_t ul_size)
1003:../asf/sam/services/flash_efc/flash_efc.c **** {
 1406              		.loc 1 1003 0
 1407              		.cfi_startproc
 1408              		@ args = 0, pretend = 0, frame = 0
 1409              		@ frame_needed = 0, uses_anonymous_args = 0
 1410              	.LVL161:
1004:../asf/sam/services/flash_efc/flash_efc.c **** 	if (ul_size > (FLASH_USER_SIG_SIZE / sizeof(uint32_t))) {
1005:../asf/sam/services/flash_efc/flash_efc.c **** 		/* Only 512 byte to store user signature */
1006:../asf/sam/services/flash_efc/flash_efc.c **** 		ul_size = FLASH_USER_SIG_SIZE / sizeof(uint32_t);
1007:../asf/sam/services/flash_efc/flash_efc.c **** 	}
1008:../asf/sam/services/flash_efc/flash_efc.c **** 
1009:../asf/sam/services/flash_efc/flash_efc.c **** 	/* Send the read user signature commands */
1010:../asf/sam/services/flash_efc/flash_efc.c **** 	if (FLASH_RC_OK != efc_perform_read_sequence(EFC, EFC_FCMD_STUS,
 1411              		.loc 1 1010 0
 1412 0000 8029     		cmp	r1, #128
 1413 0002 0346     		mov	r3, r0
 1414 0004 4FF01502 		mov	r2, #21
 1415 0008 0748     		ldr	r0, .L185
 1416              	.LVL162:
 1417 000a 28BF     		it	cs
 1418 000c 8021     		movcs	r1, #128
 1419              	.LVL163:
1003:../asf/sam/services/flash_efc/flash_efc.c **** 	if (ul_size > (FLASH_USER_SIG_SIZE / sizeof(uint32_t))) {
 1420              		.loc 1 1003 0
 1421 000e 10B5     		push	{r4, lr}
 1422              		.cfi_def_cfa_offset 8
 1423              		.cfi_offset 4, -8
 1424              		.cfi_offset 14, -4
 1425              		.loc 1 1010 0
 1426 0010 0C46     		mov	r4, r1
1003:../asf/sam/services/flash_efc/flash_efc.c **** 	if (ul_size > (FLASH_USER_SIG_SIZE / sizeof(uint32_t))) {
 1427              		.loc 1 1003 0
 1428 0012 82B0     		sub	sp, sp, #8
 1429              		.cfi_def_cfa_offset 16
 1430              		.loc 1 1010 0
 1431 0014 1421     		movs	r1, #20
 1432 0016 0094     		str	r4, [sp]
 1433 0018 FFF7FEFF 		bl	efc_perform_read_sequence
 1434              	.LVL164:
1011:../asf/sam/services/flash_efc/flash_efc.c **** 			EFC_FCMD_SPUS, p_data, ul_size)) {
1012:../asf/sam/services/flash_efc/flash_efc.c **** 		return FLASH_RC_ERROR;
1013:../asf/sam/services/flash_efc/flash_efc.c **** 	}
1014:../asf/sam/services/flash_efc/flash_efc.c **** 
1015:../asf/sam/services/flash_efc/flash_efc.c **** 	return FLASH_RC_OK;
1016:../asf/sam/services/flash_efc/flash_efc.c **** }
 1435              		.loc 1 1016 0
 1436 001c 0028     		cmp	r0, #0
 1437 001e 14BF     		ite	ne
 1438 0020 1020     		movne	r0, #16
 1439 0022 0020     		moveq	r0, #0
ARM GAS  /tmp/ccfM1LZ3.s 			page 46


 1440 0024 02B0     		add	sp, sp, #8
 1441              		.cfi_def_cfa_offset 8
 1442              		@ sp needed
 1443 0026 10BD     		pop	{r4, pc}
 1444              	.L186:
 1445              		.align	2
 1446              	.L185:
 1447 0028 000C0E40 		.word	1074662400
 1448              		.cfi_endproc
 1449              	.LFE186:
 1450              		.size	flash_read_user_signature, .-flash_read_user_signature
 1451              		.section	.text.flash_write_user_signature,"ax",%progbits
 1452              		.align	1
 1453              		.p2align 2,,3
 1454              		.global	flash_write_user_signature
 1455              		.syntax unified
 1456              		.thumb
 1457              		.thumb_func
 1458              		.fpu fpv5-d16
 1459              		.type	flash_write_user_signature, %function
 1460              	flash_write_user_signature:
 1461              	.LFB187:
1017:../asf/sam/services/flash_efc/flash_efc.c **** 
1018:../asf/sam/services/flash_efc/flash_efc.c **** /**
1019:../asf/sam/services/flash_efc/flash_efc.c ****  * \brief Write the flash user signature.
1020:../asf/sam/services/flash_efc/flash_efc.c ****  *
1021:../asf/sam/services/flash_efc/flash_efc.c ****  * \param p_data Pointer to a data buffer to store info for the user signature.
1022:../asf/sam/services/flash_efc/flash_efc.c ****  * \param ul_size Data buffer size in 32 bit words.
1023:../asf/sam/services/flash_efc/flash_efc.c ****  *
1024:../asf/sam/services/flash_efc/flash_efc.c ****  * \return 0 if successful; otherwise returns an error code.
1025:../asf/sam/services/flash_efc/flash_efc.c ****  */
1026:../asf/sam/services/flash_efc/flash_efc.c **** uint32_t flash_write_user_signature(const void *p_buffer, uint32_t ul_size)
1027:../asf/sam/services/flash_efc/flash_efc.c **** {
 1462              		.loc 1 1027 0
 1463              		.cfi_startproc
 1464              		@ args = 0, pretend = 0, frame = 0
 1465              		@ frame_needed = 0, uses_anonymous_args = 0
 1466              	.LVL165:
1028:../asf/sam/services/flash_efc/flash_efc.c **** 	uint32_t ul_idx;
1029:../asf/sam/services/flash_efc/flash_efc.c **** 	uint32_t *p_dest;
1030:../asf/sam/services/flash_efc/flash_efc.c **** 
1031:../asf/sam/services/flash_efc/flash_efc.c **** 	/* The user signature should be no longer than 512 bytes */
1032:../asf/sam/services/flash_efc/flash_efc.c **** 	if (ul_size > (IFLASH_PAGE_SIZE / sizeof(uint32_t))) {
 1467              		.loc 1 1032 0
 1468 0000 8029     		cmp	r1, #128
 1469 0002 01D9     		bls	.L197
1033:../asf/sam/services/flash_efc/flash_efc.c **** 		return FLASH_RC_INVALID;
 1470              		.loc 1 1033 0
 1471 0004 1120     		movs	r0, #17
 1472              	.LVL166:
 1473 0006 7047     		bx	lr
 1474              	.LVL167:
 1475              	.L197:
1034:../asf/sam/services/flash_efc/flash_efc.c **** 	}
1035:../asf/sam/services/flash_efc/flash_efc.c **** 
1036:../asf/sam/services/flash_efc/flash_efc.c **** 	/* Copy Buffer data */
1037:../asf/sam/services/flash_efc/flash_efc.c **** 	memcpy((uint8_t *) gs_ul_page_buffer, p_buffer, 
ARM GAS  /tmp/ccfM1LZ3.s 			page 47


 1476              		.loc 1 1037 0
 1477 0008 8A00     		lsls	r2, r1, #2
 1478 000a 0146     		mov	r1, r0
 1479              	.LVL168:
 1480 000c 0B48     		ldr	r0, .L198
 1481              	.LVL169:
1027:../asf/sam/services/flash_efc/flash_efc.c **** 	uint32_t ul_idx;
 1482              		.loc 1 1027 0
 1483 000e 08B5     		push	{r3, lr}
 1484              		.cfi_def_cfa_offset 8
 1485              		.cfi_offset 3, -8
 1486              		.cfi_offset 14, -4
 1487              		.loc 1 1037 0
 1488 0010 FFF7FEFF 		bl	memcpy
 1489              	.LVL170:
 1490 0014 0A4B     		ldr	r3, .L198+4
 1491 0016 0B4A     		ldr	r2, .L198+8
 1492 0018 03F50070 		add	r0, r3, #512
 1493              	.LVL171:
 1494              	.L189:
1038:../asf/sam/services/flash_efc/flash_efc.c **** 			ul_size * sizeof(uint32_t));
1039:../asf/sam/services/flash_efc/flash_efc.c **** 
1040:../asf/sam/services/flash_efc/flash_efc.c **** 	/* Write page buffer.
1041:../asf/sam/services/flash_efc/flash_efc.c **** 	* Writing 8-bit and 16-bit data is not allowed and may lead to
1042:../asf/sam/services/flash_efc/flash_efc.c **** 	* unpredictable data corruption.
1043:../asf/sam/services/flash_efc/flash_efc.c **** 	*/
1044:../asf/sam/services/flash_efc/flash_efc.c **** 	p_dest = (uint32_t *)IFLASH_ADDR;
1045:../asf/sam/services/flash_efc/flash_efc.c **** 	for (ul_idx = 0; ul_idx < (IFLASH_PAGE_SIZE / sizeof(uint32_t)); 
1046:../asf/sam/services/flash_efc/flash_efc.c **** 			ul_idx++) {
1047:../asf/sam/services/flash_efc/flash_efc.c **** 		*p_dest++ = gs_ul_page_buffer[ul_idx];
 1495              		.loc 1 1047 0
 1496 001c 53F8041F 		ldr	r1, [r3, #4]!
1045:../asf/sam/services/flash_efc/flash_efc.c **** 			ul_idx++) {
 1497              		.loc 1 1045 0
 1498 0020 8342     		cmp	r3, r0
 1499              		.loc 1 1047 0
 1500 0022 42F8041F 		str	r1, [r2, #4]!
 1501              	.LVL172:
1045:../asf/sam/services/flash_efc/flash_efc.c **** 			ul_idx++) {
 1502              		.loc 1 1045 0
 1503 0026 F9D1     		bne	.L189
1048:../asf/sam/services/flash_efc/flash_efc.c **** 	}
1049:../asf/sam/services/flash_efc/flash_efc.c **** 
1050:../asf/sam/services/flash_efc/flash_efc.c **** 	/* Send the write signature command */
1051:../asf/sam/services/flash_efc/flash_efc.c **** 	if (FLASH_RC_OK != efc_perform_command(EFC, EFC_FCMD_WUS, 0)) {
 1504              		.loc 1 1051 0
 1505 0028 0022     		movs	r2, #0
 1506              	.LVL173:
 1507 002a 1221     		movs	r1, #18
 1508 002c 0648     		ldr	r0, .L198+12
 1509 002e FFF7FEFF 		bl	efc_perform_command
 1510              	.LVL174:
1052:../asf/sam/services/flash_efc/flash_efc.c **** 		return FLASH_RC_ERROR;
 1511              		.loc 1 1052 0
 1512 0032 0028     		cmp	r0, #0
 1513 0034 14BF     		ite	ne
 1514 0036 1020     		movne	r0, #16
ARM GAS  /tmp/ccfM1LZ3.s 			page 48


 1515 0038 0020     		moveq	r0, #0
 1516 003a 08BD     		pop	{r3, pc}
 1517              	.L199:
 1518              		.align	2
 1519              	.L198:
 1520 003c 00000000 		.word	.LANCHOR0
 1521 0040 FCFFFFFF 		.word	.LANCHOR0-4
 1522 0044 FCFF3F00 		.word	4194300
 1523 0048 000C0E40 		.word	1074662400
 1524              		.cfi_endproc
 1525              	.LFE187:
 1526              		.size	flash_write_user_signature, .-flash_write_user_signature
 1527              		.section	.text.flash_erase_user_signature,"ax",%progbits
 1528              		.align	1
 1529              		.p2align 2,,3
 1530              		.global	flash_erase_user_signature
 1531              		.syntax unified
 1532              		.thumb
 1533              		.thumb_func
 1534              		.fpu fpv5-d16
 1535              		.type	flash_erase_user_signature, %function
 1536              	flash_erase_user_signature:
 1537              	.LFB188:
1053:../asf/sam/services/flash_efc/flash_efc.c **** 	}
1054:../asf/sam/services/flash_efc/flash_efc.c **** 
1055:../asf/sam/services/flash_efc/flash_efc.c **** 	return FLASH_RC_OK;
1056:../asf/sam/services/flash_efc/flash_efc.c **** }
1057:../asf/sam/services/flash_efc/flash_efc.c **** 
1058:../asf/sam/services/flash_efc/flash_efc.c **** /**
1059:../asf/sam/services/flash_efc/flash_efc.c ****  * \brief Erase the flash user signature.
1060:../asf/sam/services/flash_efc/flash_efc.c ****  *
1061:../asf/sam/services/flash_efc/flash_efc.c ****  * \return 0 if successful; otherwise returns an error code.
1062:../asf/sam/services/flash_efc/flash_efc.c ****  */
1063:../asf/sam/services/flash_efc/flash_efc.c **** uint32_t flash_erase_user_signature(void)
1064:../asf/sam/services/flash_efc/flash_efc.c **** {
 1538              		.loc 1 1064 0
 1539              		.cfi_startproc
 1540              		@ args = 0, pretend = 0, frame = 0
 1541              		@ frame_needed = 0, uses_anonymous_args = 0
 1542              		@ link register save eliminated.
1065:../asf/sam/services/flash_efc/flash_efc.c **** 	/* Perform the erase user signature command */
1066:../asf/sam/services/flash_efc/flash_efc.c **** 	return efc_perform_command(EFC, EFC_FCMD_EUS, 0);
 1543              		.loc 1 1066 0
 1544 0000 0022     		movs	r2, #0
 1545 0002 1321     		movs	r1, #19
 1546 0004 0148     		ldr	r0, .L201
 1547 0006 FFF7FEBF 		b	efc_perform_command
 1548              	.LVL175:
 1549              	.L202:
 1550 000a 00BF     		.align	2
 1551              	.L201:
 1552 000c 000C0E40 		.word	1074662400
 1553              		.cfi_endproc
 1554              	.LFE188:
 1555              		.size	flash_erase_user_signature, .-flash_erase_user_signature
 1556              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 1557              		.align	2
ARM GAS  /tmp/ccfM1LZ3.s 			page 49


 1558              		.type	cpu_irq_critical_section_counter, %object
 1559              		.size	cpu_irq_critical_section_counter, 4
 1560              	cpu_irq_critical_section_counter:
 1561 0000 00000000 		.space	4
 1562              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 1563              		.type	cpu_irq_prev_interrupt_state, %object
 1564              		.size	cpu_irq_prev_interrupt_state, 1
 1565              	cpu_irq_prev_interrupt_state:
 1566 0000 00       		.space	1
 1567              		.section	.bss.gs_ul_page_buffer,"aw",%nobits
 1568              		.align	2
 1569              		.set	.LANCHOR0,. + 0
 1570              		.type	gs_ul_page_buffer, %object
 1571              		.size	gs_ul_page_buffer, 512
 1572              	gs_ul_page_buffer:
 1573 0000 00000000 		.space	512
 1573      00000000 
 1573      00000000 
 1573      00000000 
 1573      00000000 
 1574              		.text
 1575              	.Letext0:
 1576              		.file 2 "/usr/include/newlib/machine/_default_types.h"
 1577              		.file 3 "/usr/include/newlib/sys/lock.h"
 1578              		.file 4 "/usr/include/newlib/sys/_types.h"
 1579              		.file 5 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 1580              		.file 6 "/usr/include/newlib/sys/reent.h"
 1581              		.file 7 "/usr/include/newlib/sys/_stdint.h"
 1582              		.file 8 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 1583              		.file 9 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 1584              		.file 10 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/efc
 1585              		.file 11 "/usr/include/newlib/stdlib.h"
 1586              		.file 12 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 1587              		.file 13 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/efc/efc.h"
 1588              		.file 14 "../asf/sam/services/flash_efc/flash_efc.h"
 1589              		.file 15 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h"
 1590              		.file 16 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h"
 1591              		.file 17 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h"
 1592              		.section	.debug_info,"",%progbits
 1593              	.Ldebug_info0:
 1594 0000 E11B0000 		.4byte	0x1be1
 1595 0004 0400     		.2byte	0x4
 1596 0006 00000000 		.4byte	.Ldebug_abbrev0
 1597 000a 04       		.byte	0x4
 1598 000b 01       		.uleb128 0x1
 1599 000c DE0A0000 		.4byte	.LASF256
 1600 0010 0C       		.byte	0xc
 1601 0011 9D000000 		.4byte	.LASF257
 1602 0015 990B0000 		.4byte	.LASF258
 1603 0019 B8000000 		.4byte	.Ldebug_ranges0+0xb8
 1604 001d 00000000 		.4byte	0
 1605 0021 00000000 		.4byte	.Ldebug_line0
 1606 0025 02       		.uleb128 0x2
 1607 0026 04       		.byte	0x4
 1608 0027 05       		.byte	0x5
 1609 0028 696E7400 		.ascii	"int\000"
 1610 002c 03       		.uleb128 0x3
ARM GAS  /tmp/ccfM1LZ3.s 			page 50


 1611 002d 04       		.byte	0x4
 1612 002e 07       		.byte	0x7
 1613 002f 8C090000 		.4byte	.LASF0
 1614 0033 03       		.uleb128 0x3
 1615 0034 01       		.byte	0x1
 1616 0035 06       		.byte	0x6
 1617 0036 480C0000 		.4byte	.LASF1
 1618 003a 04       		.uleb128 0x4
 1619 003b 51090000 		.4byte	.LASF4
 1620 003f 02       		.byte	0x2
 1621 0040 1D       		.byte	0x1d
 1622 0041 45000000 		.4byte	0x45
 1623 0045 03       		.uleb128 0x3
 1624 0046 01       		.byte	0x1
 1625 0047 08       		.byte	0x8
 1626 0048 6F0A0000 		.4byte	.LASF2
 1627 004c 03       		.uleb128 0x3
 1628 004d 02       		.byte	0x2
 1629 004e 05       		.byte	0x5
 1630 004f 2D080000 		.4byte	.LASF3
 1631 0053 04       		.uleb128 0x4
 1632 0054 FD030000 		.4byte	.LASF5
 1633 0058 02       		.byte	0x2
 1634 0059 2B       		.byte	0x2b
 1635 005a 5E000000 		.4byte	0x5e
 1636 005e 03       		.uleb128 0x3
 1637 005f 02       		.byte	0x2
 1638 0060 07       		.byte	0x7
 1639 0061 BA070000 		.4byte	.LASF6
 1640 0065 04       		.uleb128 0x4
 1641 0066 59010000 		.4byte	.LASF7
 1642 006a 02       		.byte	0x2
 1643 006b 3F       		.byte	0x3f
 1644 006c 70000000 		.4byte	0x70
 1645 0070 03       		.uleb128 0x3
 1646 0071 04       		.byte	0x4
 1647 0072 05       		.byte	0x5
 1648 0073 61080000 		.4byte	.LASF8
 1649 0077 04       		.uleb128 0x4
 1650 0078 7D0A0000 		.4byte	.LASF9
 1651 007c 02       		.byte	0x2
 1652 007d 41       		.byte	0x41
 1653 007e 82000000 		.4byte	0x82
 1654 0082 03       		.uleb128 0x3
 1655 0083 04       		.byte	0x4
 1656 0084 07       		.byte	0x7
 1657 0085 F7090000 		.4byte	.LASF10
 1658 0089 03       		.uleb128 0x3
 1659 008a 08       		.byte	0x8
 1660 008b 05       		.byte	0x5
 1661 008c 3F060000 		.4byte	.LASF11
 1662 0090 03       		.uleb128 0x3
 1663 0091 08       		.byte	0x8
 1664 0092 07       		.byte	0x7
 1665 0093 74030000 		.4byte	.LASF12
 1666 0097 04       		.uleb128 0x4
 1667 0098 9F0A0000 		.4byte	.LASF13
ARM GAS  /tmp/ccfM1LZ3.s 			page 51


 1668 009c 03       		.byte	0x3
 1669 009d 07       		.byte	0x7
 1670 009e 25000000 		.4byte	0x25
 1671 00a2 04       		.uleb128 0x4
 1672 00a3 B50C0000 		.4byte	.LASF14
 1673 00a7 04       		.byte	0x4
 1674 00a8 2C       		.byte	0x2c
 1675 00a9 70000000 		.4byte	0x70
 1676 00ad 04       		.uleb128 0x4
 1677 00ae E4010000 		.4byte	.LASF15
 1678 00b2 04       		.byte	0x4
 1679 00b3 72       		.byte	0x72
 1680 00b4 70000000 		.4byte	0x70
 1681 00b8 05       		.uleb128 0x5
 1682 00b9 380A0000 		.4byte	.LASF16
 1683 00bd 05       		.byte	0x5
 1684 00be 6501     		.2byte	0x165
 1685 00c0 2C000000 		.4byte	0x2c
 1686 00c4 06       		.uleb128 0x6
 1687 00c5 04       		.byte	0x4
 1688 00c6 04       		.byte	0x4
 1689 00c7 A6       		.byte	0xa6
 1690 00c8 E3000000 		.4byte	0xe3
 1691 00cc 07       		.uleb128 0x7
 1692 00cd D80A0000 		.4byte	.LASF17
 1693 00d1 04       		.byte	0x4
 1694 00d2 A8       		.byte	0xa8
 1695 00d3 B8000000 		.4byte	0xb8
 1696 00d7 07       		.uleb128 0x7
 1697 00d8 CF080000 		.4byte	.LASF18
 1698 00dc 04       		.byte	0x4
 1699 00dd A9       		.byte	0xa9
 1700 00de E3000000 		.4byte	0xe3
 1701 00e2 00       		.byte	0
 1702 00e3 08       		.uleb128 0x8
 1703 00e4 45000000 		.4byte	0x45
 1704 00e8 F3000000 		.4byte	0xf3
 1705 00ec 09       		.uleb128 0x9
 1706 00ed F3000000 		.4byte	0xf3
 1707 00f1 03       		.byte	0x3
 1708 00f2 00       		.byte	0
 1709 00f3 03       		.uleb128 0x3
 1710 00f4 04       		.byte	0x4
 1711 00f5 07       		.byte	0x7
 1712 00f6 E4090000 		.4byte	.LASF19
 1713 00fa 0A       		.uleb128 0xa
 1714 00fb 08       		.byte	0x8
 1715 00fc 04       		.byte	0x4
 1716 00fd A3       		.byte	0xa3
 1717 00fe 1B010000 		.4byte	0x11b
 1718 0102 0B       		.uleb128 0xb
 1719 0103 E6020000 		.4byte	.LASF20
 1720 0107 04       		.byte	0x4
 1721 0108 A5       		.byte	0xa5
 1722 0109 25000000 		.4byte	0x25
 1723 010d 00       		.byte	0
 1724 010e 0B       		.uleb128 0xb
ARM GAS  /tmp/ccfM1LZ3.s 			page 52


 1725 010f B4040000 		.4byte	.LASF21
 1726 0113 04       		.byte	0x4
 1727 0114 AA       		.byte	0xaa
 1728 0115 C4000000 		.4byte	0xc4
 1729 0119 04       		.byte	0x4
 1730 011a 00       		.byte	0
 1731 011b 04       		.uleb128 0x4
 1732 011c FF060000 		.4byte	.LASF22
 1733 0120 04       		.byte	0x4
 1734 0121 AB       		.byte	0xab
 1735 0122 FA000000 		.4byte	0xfa
 1736 0126 04       		.uleb128 0x4
 1737 0127 00000000 		.4byte	.LASF23
 1738 012b 04       		.byte	0x4
 1739 012c AF       		.byte	0xaf
 1740 012d 97000000 		.4byte	0x97
 1741 0131 0C       		.uleb128 0xc
 1742 0132 04       		.byte	0x4
 1743 0133 0D       		.uleb128 0xd
 1744 0134 04       		.byte	0x4
 1745 0135 39010000 		.4byte	0x139
 1746 0139 03       		.uleb128 0x3
 1747 013a 01       		.byte	0x1
 1748 013b 08       		.byte	0x8
 1749 013c 41000000 		.4byte	.LASF24
 1750 0140 0E       		.uleb128 0xe
 1751 0141 39010000 		.4byte	0x139
 1752 0145 04       		.uleb128 0x4
 1753 0146 AD010000 		.4byte	.LASF25
 1754 014a 06       		.byte	0x6
 1755 014b 16       		.byte	0x16
 1756 014c 82000000 		.4byte	0x82
 1757 0150 0F       		.uleb128 0xf
 1758 0151 5C020000 		.4byte	.LASF30
 1759 0155 18       		.byte	0x18
 1760 0156 06       		.byte	0x6
 1761 0157 2D       		.byte	0x2d
 1762 0158 A3010000 		.4byte	0x1a3
 1763 015c 0B       		.uleb128 0xb
 1764 015d E3040000 		.4byte	.LASF26
 1765 0161 06       		.byte	0x6
 1766 0162 2F       		.byte	0x2f
 1767 0163 A3010000 		.4byte	0x1a3
 1768 0167 00       		.byte	0
 1769 0168 10       		.uleb128 0x10
 1770 0169 5F6B00   		.ascii	"_k\000"
 1771 016c 06       		.byte	0x6
 1772 016d 30       		.byte	0x30
 1773 016e 25000000 		.4byte	0x25
 1774 0172 04       		.byte	0x4
 1775 0173 0B       		.uleb128 0xb
 1776 0174 68090000 		.4byte	.LASF27
 1777 0178 06       		.byte	0x6
 1778 0179 30       		.byte	0x30
 1779 017a 25000000 		.4byte	0x25
 1780 017e 08       		.byte	0x8
 1781 017f 0B       		.uleb128 0xb
ARM GAS  /tmp/ccfM1LZ3.s 			page 53


 1782 0180 98080000 		.4byte	.LASF28
 1783 0184 06       		.byte	0x6
 1784 0185 30       		.byte	0x30
 1785 0186 25000000 		.4byte	0x25
 1786 018a 0C       		.byte	0xc
 1787 018b 0B       		.uleb128 0xb
 1788 018c A8030000 		.4byte	.LASF29
 1789 0190 06       		.byte	0x6
 1790 0191 30       		.byte	0x30
 1791 0192 25000000 		.4byte	0x25
 1792 0196 10       		.byte	0x10
 1793 0197 10       		.uleb128 0x10
 1794 0198 5F7800   		.ascii	"_x\000"
 1795 019b 06       		.byte	0x6
 1796 019c 31       		.byte	0x31
 1797 019d A9010000 		.4byte	0x1a9
 1798 01a1 14       		.byte	0x14
 1799 01a2 00       		.byte	0
 1800 01a3 0D       		.uleb128 0xd
 1801 01a4 04       		.byte	0x4
 1802 01a5 50010000 		.4byte	0x150
 1803 01a9 08       		.uleb128 0x8
 1804 01aa 45010000 		.4byte	0x145
 1805 01ae B9010000 		.4byte	0x1b9
 1806 01b2 09       		.uleb128 0x9
 1807 01b3 F3000000 		.4byte	0xf3
 1808 01b7 00       		.byte	0
 1809 01b8 00       		.byte	0
 1810 01b9 0F       		.uleb128 0xf
 1811 01ba CF090000 		.4byte	.LASF31
 1812 01be 24       		.byte	0x24
 1813 01bf 06       		.byte	0x6
 1814 01c0 35       		.byte	0x35
 1815 01c1 32020000 		.4byte	0x232
 1816 01c5 0B       		.uleb128 0xb
 1817 01c6 7B040000 		.4byte	.LASF32
 1818 01ca 06       		.byte	0x6
 1819 01cb 37       		.byte	0x37
 1820 01cc 25000000 		.4byte	0x25
 1821 01d0 00       		.byte	0
 1822 01d1 0B       		.uleb128 0xb
 1823 01d2 470A0000 		.4byte	.LASF33
 1824 01d6 06       		.byte	0x6
 1825 01d7 38       		.byte	0x38
 1826 01d8 25000000 		.4byte	0x25
 1827 01dc 04       		.byte	0x4
 1828 01dd 0B       		.uleb128 0xb
 1829 01de BB020000 		.4byte	.LASF34
 1830 01e2 06       		.byte	0x6
 1831 01e3 39       		.byte	0x39
 1832 01e4 25000000 		.4byte	0x25
 1833 01e8 08       		.byte	0x8
 1834 01e9 0B       		.uleb128 0xb
 1835 01ea 5D050000 		.4byte	.LASF35
 1836 01ee 06       		.byte	0x6
 1837 01ef 3A       		.byte	0x3a
 1838 01f0 25000000 		.4byte	0x25
ARM GAS  /tmp/ccfM1LZ3.s 			page 54


 1839 01f4 0C       		.byte	0xc
 1840 01f5 0B       		.uleb128 0xb
 1841 01f6 AA070000 		.4byte	.LASF36
 1842 01fa 06       		.byte	0x6
 1843 01fb 3B       		.byte	0x3b
 1844 01fc 25000000 		.4byte	0x25
 1845 0200 10       		.byte	0x10
 1846 0201 0B       		.uleb128 0xb
 1847 0202 0B090000 		.4byte	.LASF37
 1848 0206 06       		.byte	0x6
 1849 0207 3C       		.byte	0x3c
 1850 0208 25000000 		.4byte	0x25
 1851 020c 14       		.byte	0x14
 1852 020d 0B       		.uleb128 0xb
 1853 020e 64020000 		.4byte	.LASF38
 1854 0212 06       		.byte	0x6
 1855 0213 3D       		.byte	0x3d
 1856 0214 25000000 		.4byte	0x25
 1857 0218 18       		.byte	0x18
 1858 0219 0B       		.uleb128 0xb
 1859 021a AA040000 		.4byte	.LASF39
 1860 021e 06       		.byte	0x6
 1861 021f 3E       		.byte	0x3e
 1862 0220 25000000 		.4byte	0x25
 1863 0224 1C       		.byte	0x1c
 1864 0225 0B       		.uleb128 0xb
 1865 0226 2A070000 		.4byte	.LASF40
 1866 022a 06       		.byte	0x6
 1867 022b 3F       		.byte	0x3f
 1868 022c 25000000 		.4byte	0x25
 1869 0230 20       		.byte	0x20
 1870 0231 00       		.byte	0
 1871 0232 11       		.uleb128 0x11
 1872 0233 46000000 		.4byte	.LASF41
 1873 0237 0801     		.2byte	0x108
 1874 0239 06       		.byte	0x6
 1875 023a 48       		.byte	0x48
 1876 023b 72020000 		.4byte	0x272
 1877 023f 0B       		.uleb128 0xb
 1878 0240 400C0000 		.4byte	.LASF42
 1879 0244 06       		.byte	0x6
 1880 0245 49       		.byte	0x49
 1881 0246 72020000 		.4byte	0x272
 1882 024a 00       		.byte	0
 1883 024b 0B       		.uleb128 0xb
 1884 024c 500A0000 		.4byte	.LASF43
 1885 0250 06       		.byte	0x6
 1886 0251 4A       		.byte	0x4a
 1887 0252 72020000 		.4byte	0x272
 1888 0256 80       		.byte	0x80
 1889 0257 12       		.uleb128 0x12
 1890 0258 6A0C0000 		.4byte	.LASF44
 1891 025c 06       		.byte	0x6
 1892 025d 4C       		.byte	0x4c
 1893 025e 45010000 		.4byte	0x145
 1894 0262 0001     		.2byte	0x100
 1895 0264 12       		.uleb128 0x12
ARM GAS  /tmp/ccfM1LZ3.s 			page 55


 1896 0265 C80B0000 		.4byte	.LASF45
 1897 0269 06       		.byte	0x6
 1898 026a 4F       		.byte	0x4f
 1899 026b 45010000 		.4byte	0x145
 1900 026f 0401     		.2byte	0x104
 1901 0271 00       		.byte	0
 1902 0272 08       		.uleb128 0x8
 1903 0273 31010000 		.4byte	0x131
 1904 0277 82020000 		.4byte	0x282
 1905 027b 09       		.uleb128 0x9
 1906 027c F3000000 		.4byte	0xf3
 1907 0280 1F       		.byte	0x1f
 1908 0281 00       		.byte	0
 1909 0282 11       		.uleb128 0x11
 1910 0283 10080000 		.4byte	.LASF46
 1911 0287 9001     		.2byte	0x190
 1912 0289 06       		.byte	0x6
 1913 028a 5B       		.byte	0x5b
 1914 028b C0020000 		.4byte	0x2c0
 1915 028f 0B       		.uleb128 0xb
 1916 0290 E3040000 		.4byte	.LASF26
 1917 0294 06       		.byte	0x6
 1918 0295 5C       		.byte	0x5c
 1919 0296 C0020000 		.4byte	0x2c0
 1920 029a 00       		.byte	0
 1921 029b 0B       		.uleb128 0xb
 1922 029c 82070000 		.4byte	.LASF47
 1923 02a0 06       		.byte	0x6
 1924 02a1 5D       		.byte	0x5d
 1925 02a2 25000000 		.4byte	0x25
 1926 02a6 04       		.byte	0x4
 1927 02a7 0B       		.uleb128 0xb
 1928 02a8 F7010000 		.4byte	.LASF48
 1929 02ac 06       		.byte	0x6
 1930 02ad 5F       		.byte	0x5f
 1931 02ae C6020000 		.4byte	0x2c6
 1932 02b2 08       		.byte	0x8
 1933 02b3 0B       		.uleb128 0xb
 1934 02b4 46000000 		.4byte	.LASF41
 1935 02b8 06       		.byte	0x6
 1936 02b9 60       		.byte	0x60
 1937 02ba 32020000 		.4byte	0x232
 1938 02be 88       		.byte	0x88
 1939 02bf 00       		.byte	0
 1940 02c0 0D       		.uleb128 0xd
 1941 02c1 04       		.byte	0x4
 1942 02c2 82020000 		.4byte	0x282
 1943 02c6 08       		.uleb128 0x8
 1944 02c7 D6020000 		.4byte	0x2d6
 1945 02cb D6020000 		.4byte	0x2d6
 1946 02cf 09       		.uleb128 0x9
 1947 02d0 F3000000 		.4byte	0xf3
 1948 02d4 1F       		.byte	0x1f
 1949 02d5 00       		.byte	0
 1950 02d6 0D       		.uleb128 0xd
 1951 02d7 04       		.byte	0x4
 1952 02d8 DC020000 		.4byte	0x2dc
ARM GAS  /tmp/ccfM1LZ3.s 			page 56


 1953 02dc 13       		.uleb128 0x13
 1954 02dd 0F       		.uleb128 0xf
 1955 02de E9070000 		.4byte	.LASF49
 1956 02e2 08       		.byte	0x8
 1957 02e3 06       		.byte	0x6
 1958 02e4 73       		.byte	0x73
 1959 02e5 02030000 		.4byte	0x302
 1960 02e9 0B       		.uleb128 0xb
 1961 02ea 70060000 		.4byte	.LASF50
 1962 02ee 06       		.byte	0x6
 1963 02ef 74       		.byte	0x74
 1964 02f0 02030000 		.4byte	0x302
 1965 02f4 00       		.byte	0
 1966 02f5 0B       		.uleb128 0xb
 1967 02f6 850C0000 		.4byte	.LASF51
 1968 02fa 06       		.byte	0x6
 1969 02fb 75       		.byte	0x75
 1970 02fc 25000000 		.4byte	0x25
 1971 0300 04       		.byte	0x4
 1972 0301 00       		.byte	0
 1973 0302 0D       		.uleb128 0xd
 1974 0303 04       		.byte	0x4
 1975 0304 45000000 		.4byte	0x45
 1976 0308 0F       		.uleb128 0xf
 1977 0309 A0030000 		.4byte	.LASF52
 1978 030d 68       		.byte	0x68
 1979 030e 06       		.byte	0x6
 1980 030f B3       		.byte	0xb3
 1981 0310 32040000 		.4byte	0x432
 1982 0314 10       		.uleb128 0x10
 1983 0315 5F7000   		.ascii	"_p\000"
 1984 0318 06       		.byte	0x6
 1985 0319 B4       		.byte	0xb4
 1986 031a 02030000 		.4byte	0x302
 1987 031e 00       		.byte	0
 1988 031f 10       		.uleb128 0x10
 1989 0320 5F7200   		.ascii	"_r\000"
 1990 0323 06       		.byte	0x6
 1991 0324 B5       		.byte	0xb5
 1992 0325 25000000 		.4byte	0x25
 1993 0329 04       		.byte	0x4
 1994 032a 10       		.uleb128 0x10
 1995 032b 5F7700   		.ascii	"_w\000"
 1996 032e 06       		.byte	0x6
 1997 032f B6       		.byte	0xb6
 1998 0330 25000000 		.4byte	0x25
 1999 0334 08       		.byte	0x8
 2000 0335 0B       		.uleb128 0xb
 2001 0336 49010000 		.4byte	.LASF53
 2002 033a 06       		.byte	0x6
 2003 033b B7       		.byte	0xb7
 2004 033c 4C000000 		.4byte	0x4c
 2005 0340 0C       		.byte	0xc
 2006 0341 0B       		.uleb128 0xb
 2007 0342 BE060000 		.4byte	.LASF54
 2008 0346 06       		.byte	0x6
 2009 0347 B8       		.byte	0xb8
ARM GAS  /tmp/ccfM1LZ3.s 			page 57


 2010 0348 4C000000 		.4byte	0x4c
 2011 034c 0E       		.byte	0xe
 2012 034d 10       		.uleb128 0x10
 2013 034e 5F626600 		.ascii	"_bf\000"
 2014 0352 06       		.byte	0x6
 2015 0353 B9       		.byte	0xb9
 2016 0354 DD020000 		.4byte	0x2dd
 2017 0358 10       		.byte	0x10
 2018 0359 0B       		.uleb128 0xb
 2019 035a 40010000 		.4byte	.LASF55
 2020 035e 06       		.byte	0x6
 2021 035f BA       		.byte	0xba
 2022 0360 25000000 		.4byte	0x25
 2023 0364 18       		.byte	0x18
 2024 0365 0B       		.uleb128 0xb
 2025 0366 0F020000 		.4byte	.LASF56
 2026 036a 06       		.byte	0x6
 2027 036b C1       		.byte	0xc1
 2028 036c 31010000 		.4byte	0x131
 2029 0370 1C       		.byte	0x1c
 2030 0371 0B       		.uleb128 0xb
 2031 0372 A7010000 		.4byte	.LASF57
 2032 0376 06       		.byte	0x6
 2033 0377 C3       		.byte	0xc3
 2034 0378 8D050000 		.4byte	0x58d
 2035 037c 20       		.byte	0x20
 2036 037d 0B       		.uleb128 0xb
 2037 037e F9070000 		.4byte	.LASF58
 2038 0382 06       		.byte	0x6
 2039 0383 C5       		.byte	0xc5
 2040 0384 B7050000 		.4byte	0x5b7
 2041 0388 24       		.byte	0x24
 2042 0389 0B       		.uleb128 0xb
 2043 038a 100D0000 		.4byte	.LASF59
 2044 038e 06       		.byte	0x6
 2045 038f C8       		.byte	0xc8
 2046 0390 DB050000 		.4byte	0x5db
 2047 0394 28       		.byte	0x28
 2048 0395 0B       		.uleb128 0xb
 2049 0396 08060000 		.4byte	.LASF60
 2050 039a 06       		.byte	0x6
 2051 039b C9       		.byte	0xc9
 2052 039c F5050000 		.4byte	0x5f5
 2053 03a0 2C       		.byte	0x2c
 2054 03a1 10       		.uleb128 0x10
 2055 03a2 5F756200 		.ascii	"_ub\000"
 2056 03a6 06       		.byte	0x6
 2057 03a7 CC       		.byte	0xcc
 2058 03a8 DD020000 		.4byte	0x2dd
 2059 03ac 30       		.byte	0x30
 2060 03ad 10       		.uleb128 0x10
 2061 03ae 5F757000 		.ascii	"_up\000"
 2062 03b2 06       		.byte	0x6
 2063 03b3 CD       		.byte	0xcd
 2064 03b4 02030000 		.4byte	0x302
 2065 03b8 38       		.byte	0x38
 2066 03b9 10       		.uleb128 0x10
ARM GAS  /tmp/ccfM1LZ3.s 			page 58


 2067 03ba 5F757200 		.ascii	"_ur\000"
 2068 03be 06       		.byte	0x6
 2069 03bf CE       		.byte	0xce
 2070 03c0 25000000 		.4byte	0x25
 2071 03c4 3C       		.byte	0x3c
 2072 03c5 0B       		.uleb128 0xb
 2073 03c6 2B040000 		.4byte	.LASF61
 2074 03ca 06       		.byte	0x6
 2075 03cb D1       		.byte	0xd1
 2076 03cc FB050000 		.4byte	0x5fb
 2077 03d0 40       		.byte	0x40
 2078 03d1 0B       		.uleb128 0xb
 2079 03d2 BC0C0000 		.4byte	.LASF62
 2080 03d6 06       		.byte	0x6
 2081 03d7 D2       		.byte	0xd2
 2082 03d8 0B060000 		.4byte	0x60b
 2083 03dc 43       		.byte	0x43
 2084 03dd 10       		.uleb128 0x10
 2085 03de 5F6C6200 		.ascii	"_lb\000"
 2086 03e2 06       		.byte	0x6
 2087 03e3 D5       		.byte	0xd5
 2088 03e4 DD020000 		.4byte	0x2dd
 2089 03e8 44       		.byte	0x44
 2090 03e9 0B       		.uleb128 0xb
 2091 03ea C6090000 		.4byte	.LASF63
 2092 03ee 06       		.byte	0x6
 2093 03ef D8       		.byte	0xd8
 2094 03f0 25000000 		.4byte	0x25
 2095 03f4 4C       		.byte	0x4c
 2096 03f5 0B       		.uleb128 0xb
 2097 03f6 23040000 		.4byte	.LASF64
 2098 03fa 06       		.byte	0x6
 2099 03fb D9       		.byte	0xd9
 2100 03fc A2000000 		.4byte	0xa2
 2101 0400 50       		.byte	0x50
 2102 0401 0B       		.uleb128 0xb
 2103 0402 C9080000 		.4byte	.LASF65
 2104 0406 06       		.byte	0x6
 2105 0407 DC       		.byte	0xdc
 2106 0408 50040000 		.4byte	0x450
 2107 040c 54       		.byte	0x54
 2108 040d 0B       		.uleb128 0xb
 2109 040e D4090000 		.4byte	.LASF66
 2110 0412 06       		.byte	0x6
 2111 0413 E0       		.byte	0xe0
 2112 0414 26010000 		.4byte	0x126
 2113 0418 58       		.byte	0x58
 2114 0419 0B       		.uleb128 0xb
 2115 041a 9E010000 		.4byte	.LASF67
 2116 041e 06       		.byte	0x6
 2117 041f E2       		.byte	0xe2
 2118 0420 1B010000 		.4byte	0x11b
 2119 0424 5C       		.byte	0x5c
 2120 0425 0B       		.uleb128 0xb
 2121 0426 E50C0000 		.4byte	.LASF68
 2122 042a 06       		.byte	0x6
 2123 042b E3       		.byte	0xe3
ARM GAS  /tmp/ccfM1LZ3.s 			page 59


 2124 042c 25000000 		.4byte	0x25
 2125 0430 64       		.byte	0x64
 2126 0431 00       		.byte	0
 2127 0432 14       		.uleb128 0x14
 2128 0433 25000000 		.4byte	0x25
 2129 0437 50040000 		.4byte	0x450
 2130 043b 15       		.uleb128 0x15
 2131 043c 50040000 		.4byte	0x450
 2132 0440 15       		.uleb128 0x15
 2133 0441 31010000 		.4byte	0x131
 2134 0445 15       		.uleb128 0x15
 2135 0446 33010000 		.4byte	0x133
 2136 044a 15       		.uleb128 0x15
 2137 044b 25000000 		.4byte	0x25
 2138 044f 00       		.byte	0
 2139 0450 0D       		.uleb128 0xd
 2140 0451 04       		.byte	0x4
 2141 0452 5B040000 		.4byte	0x45b
 2142 0456 0E       		.uleb128 0xe
 2143 0457 50040000 		.4byte	0x450
 2144 045b 16       		.uleb128 0x16
 2145 045c 540C0000 		.4byte	.LASF69
 2146 0460 2804     		.2byte	0x428
 2147 0462 06       		.byte	0x6
 2148 0463 3802     		.2byte	0x238
 2149 0465 8D050000 		.4byte	0x58d
 2150 0469 17       		.uleb128 0x17
 2151 046a 63010000 		.4byte	.LASF70
 2152 046e 06       		.byte	0x6
 2153 046f 3A02     		.2byte	0x23a
 2154 0471 25000000 		.4byte	0x25
 2155 0475 00       		.byte	0
 2156 0476 17       		.uleb128 0x17
 2157 0477 29060000 		.4byte	.LASF71
 2158 047b 06       		.byte	0x6
 2159 047c 3F02     		.2byte	0x23f
 2160 047e 62060000 		.4byte	0x662
 2161 0482 04       		.byte	0x4
 2162 0483 17       		.uleb128 0x17
 2163 0484 DC010000 		.4byte	.LASF72
 2164 0488 06       		.byte	0x6
 2165 0489 3F02     		.2byte	0x23f
 2166 048b 62060000 		.4byte	0x662
 2167 048f 08       		.byte	0x8
 2168 0490 17       		.uleb128 0x17
 2169 0491 260D0000 		.4byte	.LASF73
 2170 0495 06       		.byte	0x6
 2171 0496 3F02     		.2byte	0x23f
 2172 0498 62060000 		.4byte	0x662
 2173 049c 0C       		.byte	0xc
 2174 049d 17       		.uleb128 0x17
 2175 049e BC040000 		.4byte	.LASF74
 2176 04a2 06       		.byte	0x6
 2177 04a3 4102     		.2byte	0x241
 2178 04a5 25000000 		.4byte	0x25
 2179 04a9 10       		.byte	0x10
 2180 04aa 17       		.uleb128 0x17
ARM GAS  /tmp/ccfM1LZ3.s 			page 60


 2181 04ab C5020000 		.4byte	.LASF75
 2182 04af 06       		.byte	0x6
 2183 04b0 4202     		.2byte	0x242
 2184 04b2 44080000 		.4byte	0x844
 2185 04b6 14       		.byte	0x14
 2186 04b7 17       		.uleb128 0x17
 2187 04b8 7A090000 		.4byte	.LASF76
 2188 04bc 06       		.byte	0x6
 2189 04bd 4402     		.2byte	0x244
 2190 04bf 25000000 		.4byte	0x25
 2191 04c3 30       		.byte	0x30
 2192 04c4 17       		.uleb128 0x17
 2193 04c5 A9080000 		.4byte	.LASF77
 2194 04c9 06       		.byte	0x6
 2195 04ca 4502     		.2byte	0x245
 2196 04cc B1050000 		.4byte	0x5b1
 2197 04d0 34       		.byte	0x34
 2198 04d1 17       		.uleb128 0x17
 2199 04d2 1E060000 		.4byte	.LASF78
 2200 04d6 06       		.byte	0x6
 2201 04d7 4702     		.2byte	0x247
 2202 04d9 25000000 		.4byte	0x25
 2203 04dd 38       		.byte	0x38
 2204 04de 17       		.uleb128 0x17
 2205 04df E9060000 		.4byte	.LASF79
 2206 04e3 06       		.byte	0x6
 2207 04e4 4902     		.2byte	0x249
 2208 04e6 5F080000 		.4byte	0x85f
 2209 04ea 3C       		.byte	0x3c
 2210 04eb 17       		.uleb128 0x17
 2211 04ec 83020000 		.4byte	.LASF80
 2212 04f0 06       		.byte	0x6
 2213 04f1 4C02     		.2byte	0x24c
 2214 04f3 A3010000 		.4byte	0x1a3
 2215 04f7 40       		.byte	0x40
 2216 04f8 17       		.uleb128 0x17
 2217 04f9 9E050000 		.4byte	.LASF81
 2218 04fd 06       		.byte	0x6
 2219 04fe 4D02     		.2byte	0x24d
 2220 0500 25000000 		.4byte	0x25
 2221 0504 44       		.byte	0x44
 2222 0505 17       		.uleb128 0x17
 2223 0506 16050000 		.4byte	.LASF82
 2224 050a 06       		.byte	0x6
 2225 050b 4E02     		.2byte	0x24e
 2226 050d A3010000 		.4byte	0x1a3
 2227 0511 48       		.byte	0x48
 2228 0512 17       		.uleb128 0x17
 2229 0513 76060000 		.4byte	.LASF83
 2230 0517 06       		.byte	0x6
 2231 0518 4F02     		.2byte	0x24f
 2232 051a 65080000 		.4byte	0x865
 2233 051e 4C       		.byte	0x4c
 2234 051f 17       		.uleb128 0x17
 2235 0520 60090000 		.4byte	.LASF84
 2236 0524 06       		.byte	0x6
 2237 0525 5202     		.2byte	0x252
ARM GAS  /tmp/ccfM1LZ3.s 			page 61


 2238 0527 25000000 		.4byte	0x25
 2239 052b 50       		.byte	0x50
 2240 052c 17       		.uleb128 0x17
 2241 052d 670A0000 		.4byte	.LASF85
 2242 0531 06       		.byte	0x6
 2243 0532 5302     		.2byte	0x253
 2244 0534 33010000 		.4byte	0x133
 2245 0538 54       		.byte	0x54
 2246 0539 17       		.uleb128 0x17
 2247 053a 5B090000 		.4byte	.LASF86
 2248 053e 06       		.byte	0x6
 2249 053f 7602     		.2byte	0x276
 2250 0541 22080000 		.4byte	0x822
 2251 0545 58       		.byte	0x58
 2252 0546 18       		.uleb128 0x18
 2253 0547 10080000 		.4byte	.LASF46
 2254 054b 06       		.byte	0x6
 2255 054c 7A02     		.2byte	0x27a
 2256 054e C0020000 		.4byte	0x2c0
 2257 0552 4801     		.2byte	0x148
 2258 0554 18       		.uleb128 0x18
 2259 0555 80050000 		.4byte	.LASF87
 2260 0559 06       		.byte	0x6
 2261 055a 7B02     		.2byte	0x27b
 2262 055c 82020000 		.4byte	0x282
 2263 0560 4C01     		.2byte	0x14c
 2264 0562 18       		.uleb128 0x18
 2265 0563 67050000 		.4byte	.LASF88
 2266 0567 06       		.byte	0x6
 2267 0568 7F02     		.2byte	0x27f
 2268 056a 76080000 		.4byte	0x876
 2269 056e DC02     		.2byte	0x2dc
 2270 0570 18       		.uleb128 0x18
 2271 0571 D00B0000 		.4byte	.LASF89
 2272 0575 06       		.byte	0x6
 2273 0576 8402     		.2byte	0x284
 2274 0578 27060000 		.4byte	0x627
 2275 057c E002     		.2byte	0x2e0
 2276 057e 18       		.uleb128 0x18
 2277 057f 93080000 		.4byte	.LASF90
 2278 0583 06       		.byte	0x6
 2279 0584 8502     		.2byte	0x285
 2280 0586 82080000 		.4byte	0x882
 2281 058a EC02     		.2byte	0x2ec
 2282 058c 00       		.byte	0
 2283 058d 0D       		.uleb128 0xd
 2284 058e 04       		.byte	0x4
 2285 058f 32040000 		.4byte	0x432
 2286 0593 14       		.uleb128 0x14
 2287 0594 25000000 		.4byte	0x25
 2288 0598 B1050000 		.4byte	0x5b1
 2289 059c 15       		.uleb128 0x15
 2290 059d 50040000 		.4byte	0x450
 2291 05a1 15       		.uleb128 0x15
 2292 05a2 31010000 		.4byte	0x131
 2293 05a6 15       		.uleb128 0x15
 2294 05a7 B1050000 		.4byte	0x5b1
ARM GAS  /tmp/ccfM1LZ3.s 			page 62


 2295 05ab 15       		.uleb128 0x15
 2296 05ac 25000000 		.4byte	0x25
 2297 05b0 00       		.byte	0
 2298 05b1 0D       		.uleb128 0xd
 2299 05b2 04       		.byte	0x4
 2300 05b3 40010000 		.4byte	0x140
 2301 05b7 0D       		.uleb128 0xd
 2302 05b8 04       		.byte	0x4
 2303 05b9 93050000 		.4byte	0x593
 2304 05bd 14       		.uleb128 0x14
 2305 05be AD000000 		.4byte	0xad
 2306 05c2 DB050000 		.4byte	0x5db
 2307 05c6 15       		.uleb128 0x15
 2308 05c7 50040000 		.4byte	0x450
 2309 05cb 15       		.uleb128 0x15
 2310 05cc 31010000 		.4byte	0x131
 2311 05d0 15       		.uleb128 0x15
 2312 05d1 AD000000 		.4byte	0xad
 2313 05d5 15       		.uleb128 0x15
 2314 05d6 25000000 		.4byte	0x25
 2315 05da 00       		.byte	0
 2316 05db 0D       		.uleb128 0xd
 2317 05dc 04       		.byte	0x4
 2318 05dd BD050000 		.4byte	0x5bd
 2319 05e1 14       		.uleb128 0x14
 2320 05e2 25000000 		.4byte	0x25
 2321 05e6 F5050000 		.4byte	0x5f5
 2322 05ea 15       		.uleb128 0x15
 2323 05eb 50040000 		.4byte	0x450
 2324 05ef 15       		.uleb128 0x15
 2325 05f0 31010000 		.4byte	0x131
 2326 05f4 00       		.byte	0
 2327 05f5 0D       		.uleb128 0xd
 2328 05f6 04       		.byte	0x4
 2329 05f7 E1050000 		.4byte	0x5e1
 2330 05fb 08       		.uleb128 0x8
 2331 05fc 45000000 		.4byte	0x45
 2332 0600 0B060000 		.4byte	0x60b
 2333 0604 09       		.uleb128 0x9
 2334 0605 F3000000 		.4byte	0xf3
 2335 0609 02       		.byte	0x2
 2336 060a 00       		.byte	0
 2337 060b 08       		.uleb128 0x8
 2338 060c 45000000 		.4byte	0x45
 2339 0610 1B060000 		.4byte	0x61b
 2340 0614 09       		.uleb128 0x9
 2341 0615 F3000000 		.4byte	0xf3
 2342 0619 00       		.byte	0
 2343 061a 00       		.byte	0
 2344 061b 05       		.uleb128 0x5
 2345 061c 08040000 		.4byte	.LASF91
 2346 0620 06       		.byte	0x6
 2347 0621 1D01     		.2byte	0x11d
 2348 0623 08030000 		.4byte	0x308
 2349 0627 19       		.uleb128 0x19
 2350 0628 930B0000 		.4byte	.LASF92
 2351 062c 0C       		.byte	0xc
ARM GAS  /tmp/ccfM1LZ3.s 			page 63


 2352 062d 06       		.byte	0x6
 2353 062e 2101     		.2byte	0x121
 2354 0630 5C060000 		.4byte	0x65c
 2355 0634 17       		.uleb128 0x17
 2356 0635 E3040000 		.4byte	.LASF26
 2357 0639 06       		.byte	0x6
 2358 063a 2301     		.2byte	0x123
 2359 063c 5C060000 		.4byte	0x65c
 2360 0640 00       		.byte	0
 2361 0641 17       		.uleb128 0x17
 2362 0642 310A0000 		.4byte	.LASF93
 2363 0646 06       		.byte	0x6
 2364 0647 2401     		.2byte	0x124
 2365 0649 25000000 		.4byte	0x25
 2366 064d 04       		.byte	0x4
 2367 064e 17       		.uleb128 0x17
 2368 064f 370D0000 		.4byte	.LASF94
 2369 0653 06       		.byte	0x6
 2370 0654 2501     		.2byte	0x125
 2371 0656 62060000 		.4byte	0x662
 2372 065a 08       		.byte	0x8
 2373 065b 00       		.byte	0
 2374 065c 0D       		.uleb128 0xd
 2375 065d 04       		.byte	0x4
 2376 065e 27060000 		.4byte	0x627
 2377 0662 0D       		.uleb128 0xd
 2378 0663 04       		.byte	0x4
 2379 0664 1B060000 		.4byte	0x61b
 2380 0668 19       		.uleb128 0x19
 2381 0669 98030000 		.4byte	.LASF95
 2382 066d 0E       		.byte	0xe
 2383 066e 06       		.byte	0x6
 2384 066f 3D01     		.2byte	0x13d
 2385 0671 9D060000 		.4byte	0x69d
 2386 0675 17       		.uleb128 0x17
 2387 0676 FF0C0000 		.4byte	.LASF96
 2388 067a 06       		.byte	0x6
 2389 067b 3E01     		.2byte	0x13e
 2390 067d 9D060000 		.4byte	0x69d
 2391 0681 00       		.byte	0
 2392 0682 17       		.uleb128 0x17
 2393 0683 80060000 		.4byte	.LASF97
 2394 0687 06       		.byte	0x6
 2395 0688 3F01     		.2byte	0x13f
 2396 068a 9D060000 		.4byte	0x69d
 2397 068e 06       		.byte	0x6
 2398 068f 17       		.uleb128 0x17
 2399 0690 86060000 		.4byte	.LASF98
 2400 0694 06       		.byte	0x6
 2401 0695 4001     		.2byte	0x140
 2402 0697 5E000000 		.4byte	0x5e
 2403 069b 0C       		.byte	0xc
 2404 069c 00       		.byte	0
 2405 069d 08       		.uleb128 0x8
 2406 069e 5E000000 		.4byte	0x5e
 2407 06a2 AD060000 		.4byte	0x6ad
 2408 06a6 09       		.uleb128 0x9
ARM GAS  /tmp/ccfM1LZ3.s 			page 64


 2409 06a7 F3000000 		.4byte	0xf3
 2410 06ab 02       		.byte	0x2
 2411 06ac 00       		.byte	0
 2412 06ad 1A       		.uleb128 0x1a
 2413 06ae D0       		.byte	0xd0
 2414 06af 06       		.byte	0x6
 2415 06b0 5702     		.2byte	0x257
 2416 06b2 AE070000 		.4byte	0x7ae
 2417 06b6 17       		.uleb128 0x17
 2418 06b7 C20C0000 		.4byte	.LASF99
 2419 06bb 06       		.byte	0x6
 2420 06bc 5902     		.2byte	0x259
 2421 06be 2C000000 		.4byte	0x2c
 2422 06c2 00       		.byte	0
 2423 06c3 17       		.uleb128 0x17
 2424 06c4 F50B0000 		.4byte	.LASF100
 2425 06c8 06       		.byte	0x6
 2426 06c9 5A02     		.2byte	0x25a
 2427 06cb 33010000 		.4byte	0x133
 2428 06cf 04       		.byte	0x4
 2429 06d0 17       		.uleb128 0x17
 2430 06d1 8B030000 		.4byte	.LASF101
 2431 06d5 06       		.byte	0x6
 2432 06d6 5B02     		.2byte	0x25b
 2433 06d8 AE070000 		.4byte	0x7ae
 2434 06dc 08       		.byte	0x8
 2435 06dd 17       		.uleb128 0x17
 2436 06de 31090000 		.4byte	.LASF102
 2437 06e2 06       		.byte	0x6
 2438 06e3 5C02     		.2byte	0x25c
 2439 06e5 B9010000 		.4byte	0x1b9
 2440 06e9 24       		.byte	0x24
 2441 06ea 17       		.uleb128 0x17
 2442 06eb 30060000 		.4byte	.LASF103
 2443 06ef 06       		.byte	0x6
 2444 06f0 5D02     		.2byte	0x25d
 2445 06f2 25000000 		.4byte	0x25
 2446 06f6 48       		.byte	0x48
 2447 06f7 17       		.uleb128 0x17
 2448 06f8 050D0000 		.4byte	.LASF104
 2449 06fc 06       		.byte	0x6
 2450 06fd 5E02     		.2byte	0x25e
 2451 06ff 90000000 		.4byte	0x90
 2452 0703 50       		.byte	0x50
 2453 0704 17       		.uleb128 0x17
 2454 0705 7E000000 		.4byte	.LASF105
 2455 0709 06       		.byte	0x6
 2456 070a 5F02     		.2byte	0x25f
 2457 070c 68060000 		.4byte	0x668
 2458 0710 58       		.byte	0x58
 2459 0711 17       		.uleb128 0x17
 2460 0712 2C050000 		.4byte	.LASF106
 2461 0716 06       		.byte	0x6
 2462 0717 6002     		.2byte	0x260
 2463 0719 1B010000 		.4byte	0x11b
 2464 071d 68       		.byte	0x68
 2465 071e 17       		.uleb128 0x17
ARM GAS  /tmp/ccfM1LZ3.s 			page 65


 2466 071f 020C0000 		.4byte	.LASF107
 2467 0723 06       		.byte	0x6
 2468 0724 6102     		.2byte	0x261
 2469 0726 1B010000 		.4byte	0x11b
 2470 072a 70       		.byte	0x70
 2471 072b 17       		.uleb128 0x17
 2472 072c 63000000 		.4byte	.LASF108
 2473 0730 06       		.byte	0x6
 2474 0731 6202     		.2byte	0x262
 2475 0733 1B010000 		.4byte	0x11b
 2476 0737 78       		.byte	0x78
 2477 0738 17       		.uleb128 0x17
 2478 0739 70090000 		.4byte	.LASF109
 2479 073d 06       		.byte	0x6
 2480 073e 6302     		.2byte	0x263
 2481 0740 BE070000 		.4byte	0x7be
 2482 0744 80       		.byte	0x80
 2483 0745 17       		.uleb128 0x17
 2484 0746 C7000000 		.4byte	.LASF110
 2485 074a 06       		.byte	0x6
 2486 074b 6402     		.2byte	0x264
 2487 074d CE070000 		.4byte	0x7ce
 2488 0751 88       		.byte	0x88
 2489 0752 17       		.uleb128 0x17
 2490 0753 D80B0000 		.4byte	.LASF111
 2491 0757 06       		.byte	0x6
 2492 0758 6502     		.2byte	0x265
 2493 075a 25000000 		.4byte	0x25
 2494 075e A0       		.byte	0xa0
 2495 075f 17       		.uleb128 0x17
 2496 0760 B5010000 		.4byte	.LASF112
 2497 0764 06       		.byte	0x6
 2498 0765 6602     		.2byte	0x266
 2499 0767 1B010000 		.4byte	0x11b
 2500 076b A4       		.byte	0xa4
 2501 076c 17       		.uleb128 0x17
 2502 076d 71050000 		.4byte	.LASF113
 2503 0771 06       		.byte	0x6
 2504 0772 6702     		.2byte	0x267
 2505 0774 1B010000 		.4byte	0x11b
 2506 0778 AC       		.byte	0xac
 2507 0779 17       		.uleb128 0x17
 2508 077a 43030000 		.4byte	.LASF114
 2509 077e 06       		.byte	0x6
 2510 077f 6802     		.2byte	0x268
 2511 0781 1B010000 		.4byte	0x11b
 2512 0785 B4       		.byte	0xb4
 2513 0786 17       		.uleb128 0x17
 2514 0787 94060000 		.4byte	.LASF115
 2515 078b 06       		.byte	0x6
 2516 078c 6902     		.2byte	0x269
 2517 078e 1B010000 		.4byte	0x11b
 2518 0792 BC       		.byte	0xbc
 2519 0793 17       		.uleb128 0x17
 2520 0794 1B050000 		.4byte	.LASF116
 2521 0798 06       		.byte	0x6
 2522 0799 6A02     		.2byte	0x26a
ARM GAS  /tmp/ccfM1LZ3.s 			page 66


 2523 079b 1B010000 		.4byte	0x11b
 2524 079f C4       		.byte	0xc4
 2525 07a0 17       		.uleb128 0x17
 2526 07a1 0F040000 		.4byte	.LASF117
 2527 07a5 06       		.byte	0x6
 2528 07a6 6B02     		.2byte	0x26b
 2529 07a8 25000000 		.4byte	0x25
 2530 07ac CC       		.byte	0xcc
 2531 07ad 00       		.byte	0
 2532 07ae 08       		.uleb128 0x8
 2533 07af 39010000 		.4byte	0x139
 2534 07b3 BE070000 		.4byte	0x7be
 2535 07b7 09       		.uleb128 0x9
 2536 07b8 F3000000 		.4byte	0xf3
 2537 07bc 19       		.byte	0x19
 2538 07bd 00       		.byte	0
 2539 07be 08       		.uleb128 0x8
 2540 07bf 39010000 		.4byte	0x139
 2541 07c3 CE070000 		.4byte	0x7ce
 2542 07c7 09       		.uleb128 0x9
 2543 07c8 F3000000 		.4byte	0xf3
 2544 07cc 07       		.byte	0x7
 2545 07cd 00       		.byte	0
 2546 07ce 08       		.uleb128 0x8
 2547 07cf 39010000 		.4byte	0x139
 2548 07d3 DE070000 		.4byte	0x7de
 2549 07d7 09       		.uleb128 0x9
 2550 07d8 F3000000 		.4byte	0xf3
 2551 07dc 17       		.byte	0x17
 2552 07dd 00       		.byte	0
 2553 07de 1A       		.uleb128 0x1a
 2554 07df F0       		.byte	0xf0
 2555 07e0 06       		.byte	0x6
 2556 07e1 7002     		.2byte	0x270
 2557 07e3 02080000 		.4byte	0x802
 2558 07e7 17       		.uleb128 0x17
 2559 07e8 1E030000 		.4byte	.LASF118
 2560 07ec 06       		.byte	0x6
 2561 07ed 7302     		.2byte	0x273
 2562 07ef 02080000 		.4byte	0x802
 2563 07f3 00       		.byte	0
 2564 07f4 17       		.uleb128 0x17
 2565 07f5 2E0D0000 		.4byte	.LASF119
 2566 07f9 06       		.byte	0x6
 2567 07fa 7402     		.2byte	0x274
 2568 07fc 12080000 		.4byte	0x812
 2569 0800 78       		.byte	0x78
 2570 0801 00       		.byte	0
 2571 0802 08       		.uleb128 0x8
 2572 0803 02030000 		.4byte	0x302
 2573 0807 12080000 		.4byte	0x812
 2574 080b 09       		.uleb128 0x9
 2575 080c F3000000 		.4byte	0xf3
 2576 0810 1D       		.byte	0x1d
 2577 0811 00       		.byte	0
 2578 0812 08       		.uleb128 0x8
 2579 0813 2C000000 		.4byte	0x2c
ARM GAS  /tmp/ccfM1LZ3.s 			page 67


 2580 0817 22080000 		.4byte	0x822
 2581 081b 09       		.uleb128 0x9
 2582 081c F3000000 		.4byte	0xf3
 2583 0820 1D       		.byte	0x1d
 2584 0821 00       		.byte	0
 2585 0822 1B       		.uleb128 0x1b
 2586 0823 F0       		.byte	0xf0
 2587 0824 06       		.byte	0x6
 2588 0825 5502     		.2byte	0x255
 2589 0827 44080000 		.4byte	0x844
 2590 082b 1C       		.uleb128 0x1c
 2591 082c 540C0000 		.4byte	.LASF69
 2592 0830 06       		.byte	0x6
 2593 0831 6C02     		.2byte	0x26c
 2594 0833 AD060000 		.4byte	0x6ad
 2595 0837 1C       		.uleb128 0x1c
 2596 0838 49090000 		.4byte	.LASF120
 2597 083c 06       		.byte	0x6
 2598 083d 7502     		.2byte	0x275
 2599 083f DE070000 		.4byte	0x7de
 2600 0843 00       		.byte	0
 2601 0844 08       		.uleb128 0x8
 2602 0845 39010000 		.4byte	0x139
 2603 0849 54080000 		.4byte	0x854
 2604 084d 09       		.uleb128 0x9
 2605 084e F3000000 		.4byte	0xf3
 2606 0852 18       		.byte	0x18
 2607 0853 00       		.byte	0
 2608 0854 1D       		.uleb128 0x1d
 2609 0855 5F080000 		.4byte	0x85f
 2610 0859 15       		.uleb128 0x15
 2611 085a 50040000 		.4byte	0x450
 2612 085e 00       		.byte	0
 2613 085f 0D       		.uleb128 0xd
 2614 0860 04       		.byte	0x4
 2615 0861 54080000 		.4byte	0x854
 2616 0865 0D       		.uleb128 0xd
 2617 0866 04       		.byte	0x4
 2618 0867 A3010000 		.4byte	0x1a3
 2619 086b 1D       		.uleb128 0x1d
 2620 086c 76080000 		.4byte	0x876
 2621 0870 15       		.uleb128 0x15
 2622 0871 25000000 		.4byte	0x25
 2623 0875 00       		.byte	0
 2624 0876 0D       		.uleb128 0xd
 2625 0877 04       		.byte	0x4
 2626 0878 7C080000 		.4byte	0x87c
 2627 087c 0D       		.uleb128 0xd
 2628 087d 04       		.byte	0x4
 2629 087e 6B080000 		.4byte	0x86b
 2630 0882 08       		.uleb128 0x8
 2631 0883 1B060000 		.4byte	0x61b
 2632 0887 92080000 		.4byte	0x892
 2633 088b 09       		.uleb128 0x9
 2634 088c F3000000 		.4byte	0xf3
 2635 0890 02       		.byte	0x2
 2636 0891 00       		.byte	0
ARM GAS  /tmp/ccfM1LZ3.s 			page 68


 2637 0892 1E       		.uleb128 0x1e
 2638 0893 12030000 		.4byte	.LASF121
 2639 0897 06       		.byte	0x6
 2640 0898 FD02     		.2byte	0x2fd
 2641 089a 50040000 		.4byte	0x450
 2642 089e 1E       		.uleb128 0x1e
 2643 089f D6080000 		.4byte	.LASF122
 2644 08a3 06       		.byte	0x6
 2645 08a4 FE02     		.2byte	0x2fe
 2646 08a6 56040000 		.4byte	0x456
 2647 08aa 04       		.uleb128 0x4
 2648 08ab E1050000 		.4byte	.LASF123
 2649 08af 07       		.byte	0x7
 2650 08b0 18       		.byte	0x18
 2651 08b1 3A000000 		.4byte	0x3a
 2652 08b5 04       		.uleb128 0x4
 2653 08b6 E0070000 		.4byte	.LASF124
 2654 08ba 07       		.byte	0x7
 2655 08bb 24       		.byte	0x24
 2656 08bc 53000000 		.4byte	0x53
 2657 08c0 04       		.uleb128 0x4
 2658 08c1 3F0A0000 		.4byte	.LASF125
 2659 08c5 07       		.byte	0x7
 2660 08c6 2C       		.byte	0x2c
 2661 08c7 65000000 		.4byte	0x65
 2662 08cb 1F       		.uleb128 0x1f
 2663 08cc C0080000 		.4byte	0x8c0
 2664 08d0 04       		.uleb128 0x4
 2665 08d1 B2020000 		.4byte	.LASF126
 2666 08d5 07       		.byte	0x7
 2667 08d6 30       		.byte	0x30
 2668 08d7 77000000 		.4byte	0x77
 2669 08db 1F       		.uleb128 0x1f
 2670 08dc D0080000 		.4byte	0x8d0
 2671 08e0 0E       		.uleb128 0xe
 2672 08e1 DB080000 		.4byte	0x8db
 2673 08e5 0E       		.uleb128 0xe
 2674 08e6 D0080000 		.4byte	0x8d0
 2675 08ea 1E       		.uleb128 0x1e
 2676 08eb 6A080000 		.4byte	.LASF127
 2677 08ef 08       		.byte	0x8
 2678 08f0 6508     		.2byte	0x865
 2679 08f2 CB080000 		.4byte	0x8cb
 2680 08f6 20       		.uleb128 0x20
 2681 08f7 24000000 		.4byte	.LASF128
 2682 08fb 09       		.byte	0x9
 2683 08fc 3A       		.byte	0x3a
 2684 08fd D0080000 		.4byte	0x8d0
 2685 0901 08       		.uleb128 0x8
 2686 0902 E0080000 		.4byte	0x8e0
 2687 0906 11090000 		.4byte	0x911
 2688 090a 09       		.uleb128 0x9
 2689 090b F3000000 		.4byte	0xf3
 2690 090f 00       		.byte	0
 2691 0910 00       		.byte	0
 2692 0911 0E       		.uleb128 0xe
 2693 0912 01090000 		.4byte	0x901
ARM GAS  /tmp/ccfM1LZ3.s 			page 69


 2694 0916 1F       		.uleb128 0x1f
 2695 0917 11090000 		.4byte	0x911
 2696 091b 0A       		.uleb128 0xa
 2697 091c E8       		.byte	0xe8
 2698 091d 0A       		.byte	0xa
 2699 091e 38       		.byte	0x38
 2700 091f 84090000 		.4byte	0x984
 2701 0923 0B       		.uleb128 0xb
 2702 0924 40090000 		.4byte	.LASF129
 2703 0928 0A       		.byte	0xa
 2704 0929 39       		.byte	0x39
 2705 092a DB080000 		.4byte	0x8db
 2706 092e 00       		.byte	0
 2707 092f 0B       		.uleb128 0xb
 2708 0930 7E010000 		.4byte	.LASF130
 2709 0934 0A       		.byte	0xa
 2710 0935 3A       		.byte	0x3a
 2711 0936 DB080000 		.4byte	0x8db
 2712 093a 04       		.byte	0x4
 2713 093b 0B       		.uleb128 0xb
 2714 093c 09030000 		.4byte	.LASF131
 2715 0940 0A       		.byte	0xa
 2716 0941 3B       		.byte	0x3b
 2717 0942 E0080000 		.4byte	0x8e0
 2718 0946 08       		.byte	0x8
 2719 0947 0B       		.uleb128 0xb
 2720 0948 50010000 		.4byte	.LASF132
 2721 094c 0A       		.byte	0xa
 2722 094d 3C       		.byte	0x3c
 2723 094e E0080000 		.4byte	0x8e0
 2724 0952 0C       		.byte	0xc
 2725 0953 0B       		.uleb128 0xb
 2726 0954 0A070000 		.4byte	.LASF133
 2727 0958 0A       		.byte	0xa
 2728 0959 3D       		.byte	0x3d
 2729 095a 16090000 		.4byte	0x916
 2730 095e 10       		.byte	0x10
 2731 095f 0B       		.uleb128 0xb
 2732 0960 71000000 		.4byte	.LASF134
 2733 0964 0A       		.byte	0xa
 2734 0965 3E       		.byte	0x3e
 2735 0966 E0080000 		.4byte	0x8e0
 2736 096a 14       		.byte	0x14
 2737 096b 0B       		.uleb128 0xb
 2738 096c 14070000 		.4byte	.LASF135
 2739 0970 0A       		.byte	0xa
 2740 0971 3F       		.byte	0x3f
 2741 0972 99090000 		.4byte	0x999
 2742 0976 18       		.byte	0x18
 2743 0977 0B       		.uleb128 0xb
 2744 0978 E9050000 		.4byte	.LASF136
 2745 097c 0A       		.byte	0xa
 2746 097d 40       		.byte	0x40
 2747 097e DB080000 		.4byte	0x8db
 2748 0982 E4       		.byte	0xe4
 2749 0983 00       		.byte	0
 2750 0984 08       		.uleb128 0x8
ARM GAS  /tmp/ccfM1LZ3.s 			page 70


 2751 0985 E0080000 		.4byte	0x8e0
 2752 0989 94090000 		.4byte	0x994
 2753 098d 09       		.uleb128 0x9
 2754 098e F3000000 		.4byte	0xf3
 2755 0992 32       		.byte	0x32
 2756 0993 00       		.byte	0
 2757 0994 0E       		.uleb128 0xe
 2758 0995 84090000 		.4byte	0x984
 2759 0999 1F       		.uleb128 0x1f
 2760 099a 94090000 		.4byte	0x994
 2761 099e 21       		.uleb128 0x21
 2762 099f 45666300 		.ascii	"Efc\000"
 2763 09a3 0A       		.byte	0xa
 2764 09a4 41       		.byte	0x41
 2765 09a5 1B090000 		.4byte	0x91b
 2766 09a9 0D       		.uleb128 0xd
 2767 09aa 04       		.byte	0x4
 2768 09ab AF090000 		.4byte	0x9af
 2769 09af 22       		.uleb128 0x22
 2770 09b0 20       		.uleb128 0x20
 2771 09b1 D9040000 		.4byte	.LASF137
 2772 09b5 0B       		.byte	0xb
 2773 09b6 5F       		.byte	0x5f
 2774 09b7 33010000 		.4byte	0x133
 2775 09bb 20       		.uleb128 0x20
 2776 09bc 3E020000 		.4byte	.LASF138
 2777 09c0 0C       		.byte	0xc
 2778 09c1 8F       		.byte	0x8f
 2779 09c2 CD090000 		.4byte	0x9cd
 2780 09c6 03       		.uleb128 0x3
 2781 09c7 01       		.byte	0x1
 2782 09c8 02       		.byte	0x2
 2783 09c9 C1040000 		.4byte	.LASF139
 2784 09cd 1F       		.uleb128 0x1f
 2785 09ce C6090000 		.4byte	0x9c6
 2786 09d2 23       		.uleb128 0x23
 2787 09d3 100A0000 		.4byte	.LASF140
 2788 09d7 0C       		.byte	0xc
 2789 09d8 94       		.byte	0x94
 2790 09d9 DB080000 		.4byte	0x8db
 2791 09dd 05       		.uleb128 0x5
 2792 09de 03       		.byte	0x3
 2793 09df 00000000 		.4byte	cpu_irq_critical_section_counter
 2794 09e3 23       		.uleb128 0x23
 2795 09e4 5E040000 		.4byte	.LASF141
 2796 09e8 0C       		.byte	0xc
 2797 09e9 95       		.byte	0x95
 2798 09ea CD090000 		.4byte	0x9cd
 2799 09ee 05       		.uleb128 0x5
 2800 09ef 03       		.byte	0x3
 2801 09f0 00000000 		.4byte	cpu_irq_prev_interrupt_state
 2802 09f4 03       		.uleb128 0x3
 2803 09f5 04       		.byte	0x4
 2804 09f6 04       		.byte	0x4
 2805 09f7 EE020000 		.4byte	.LASF142
 2806 09fb 03       		.uleb128 0x3
 2807 09fc 08       		.byte	0x8
ARM GAS  /tmp/ccfM1LZ3.s 			page 71


 2808 09fd 04       		.byte	0x4
 2809 09fe 8B0C0000 		.4byte	.LASF143
 2810 0a02 24       		.uleb128 0x24
 2811 0a03 97050000 		.4byte	.LASF150
 2812 0a07 04       		.byte	0x4
 2813 0a08 2C000000 		.4byte	0x2c
 2814 0a0c 0D       		.byte	0xd
 2815 0a0d 3E       		.byte	0x3e
 2816 0a0e 3A0A0000 		.4byte	0xa3a
 2817 0a12 25       		.uleb128 0x25
 2818 0a13 C3010000 		.4byte	.LASF144
 2819 0a17 00       		.byte	0
 2820 0a18 25       		.uleb128 0x25
 2821 0a19 18040000 		.4byte	.LASF145
 2822 0a1d 00       		.byte	0
 2823 0a1e 25       		.uleb128 0x25
 2824 0a1f 0B010000 		.4byte	.LASF146
 2825 0a23 01       		.byte	0x1
 2826 0a24 25       		.uleb128 0x25
 2827 0a25 17020000 		.4byte	.LASF147
 2828 0a29 01       		.byte	0x1
 2829 0a2a 25       		.uleb128 0x25
 2830 0a2b 4E050000 		.4byte	.LASF148
 2831 0a2f 02       		.byte	0x2
 2832 0a30 26       		.uleb128 0x26
 2833 0a31 87070000 		.4byte	.LASF149
 2834 0a35 FFFFFFFF 		.4byte	0xffffffff
 2835 0a39 00       		.byte	0
 2836 0a3a 24       		.uleb128 0x24
 2837 0a3b 9A070000 		.4byte	.LASF151
 2838 0a3f 04       		.byte	0x4
 2839 0a40 2C000000 		.4byte	0x2c
 2840 0a44 0E       		.byte	0xe
 2841 0a45 3F       		.byte	0x3f
 2842 0a46 720A0000 		.4byte	0xa72
 2843 0a4a 25       		.uleb128 0x25
 2844 0a4b 4A040000 		.4byte	.LASF152
 2845 0a4f 00       		.byte	0
 2846 0a50 25       		.uleb128 0x25
 2847 0a51 34000000 		.4byte	.LASF153
 2848 0a55 01       		.byte	0x1
 2849 0a56 25       		.uleb128 0x25
 2850 0a57 6A010000 		.4byte	.LASF154
 2851 0a5b 00       		.byte	0
 2852 0a5c 25       		.uleb128 0x25
 2853 0a5d CD010000 		.4byte	.LASF155
 2854 0a61 10       		.byte	0x10
 2855 0a62 25       		.uleb128 0x25
 2856 0a63 99040000 		.4byte	.LASF156
 2857 0a67 11       		.byte	0x11
 2858 0a68 26       		.uleb128 0x26
 2859 0a69 9D020000 		.4byte	.LASF157
 2860 0a6d FFFFFFFF 		.4byte	0xffffffff
 2861 0a71 00       		.byte	0
 2862 0a72 24       		.uleb128 0x24
 2863 0a73 4D080000 		.4byte	.LASF158
 2864 0a77 01       		.byte	0x1
ARM GAS  /tmp/ccfM1LZ3.s 			page 72


 2865 0a78 45000000 		.4byte	0x45
 2866 0a7c 0E       		.byte	0xe
 2867 0a7d 4D       		.byte	0x4d
 2868 0a7e A10A0000 		.4byte	0xaa1
 2869 0a82 25       		.uleb128 0x25
 2870 0a83 2B0C0000 		.4byte	.LASF159
 2871 0a87 00       		.byte	0
 2872 0a88 25       		.uleb128 0x25
 2873 0a89 84040000 		.4byte	.LASF160
 2874 0a8d 01       		.byte	0x1
 2875 0a8e 25       		.uleb128 0x25
 2876 0a8f CF0C0000 		.4byte	.LASF161
 2877 0a93 02       		.byte	0x2
 2878 0a94 25       		.uleb128 0x25
 2879 0a95 15010000 		.4byte	.LASF162
 2880 0a99 03       		.byte	0x3
 2881 0a9a 25       		.uleb128 0x25
 2882 0a9b 09000000 		.4byte	.LASF163
 2883 0a9f 04       		.byte	0x4
 2884 0aa0 00       		.byte	0
 2885 0aa1 24       		.uleb128 0x24
 2886 0aa2 EC010000 		.4byte	.LASF164
 2887 0aa6 01       		.byte	0x1
 2888 0aa7 45000000 		.4byte	0x45
 2889 0aab 0F       		.byte	0xf
 2890 0aac 4F       		.byte	0x4f
 2891 0aad D60A0000 		.4byte	0xad6
 2892 0ab1 25       		.uleb128 0x25
 2893 0ab2 3E070000 		.4byte	.LASF165
 2894 0ab6 03       		.byte	0x3
 2895 0ab7 25       		.uleb128 0x25
 2896 0ab8 6E020000 		.4byte	.LASF166
 2897 0abc 04       		.byte	0x4
 2898 0abd 25       		.uleb128 0x25
 2899 0abe 37080000 		.4byte	.LASF167
 2900 0ac2 05       		.byte	0x5
 2901 0ac3 25       		.uleb128 0x25
 2902 0ac4 7F0B0000 		.4byte	.LASF168
 2903 0ac8 06       		.byte	0x6
 2904 0ac9 25       		.uleb128 0x25
 2905 0aca D0020000 		.4byte	.LASF169
 2906 0ace 07       		.byte	0x7
 2907 0acf 25       		.uleb128 0x25
 2908 0ad0 DF030000 		.4byte	.LASF170
 2909 0ad4 08       		.byte	0x8
 2910 0ad5 00       		.byte	0
 2911 0ad6 08       		.uleb128 0x8
 2912 0ad7 D0080000 		.4byte	0x8d0
 2913 0adb E60A0000 		.4byte	0xae6
 2914 0adf 09       		.uleb128 0x9
 2915 0ae0 F3000000 		.4byte	0xf3
 2916 0ae4 7F       		.byte	0x7f
 2917 0ae5 00       		.byte	0
 2918 0ae6 23       		.uleb128 0x23
 2919 0ae7 C7040000 		.4byte	.LASF171
 2920 0aeb 01       		.byte	0x1
 2921 0aec 98       		.byte	0x98
ARM GAS  /tmp/ccfM1LZ3.s 			page 73


 2922 0aed D60A0000 		.4byte	0xad6
 2923 0af1 05       		.uleb128 0x5
 2924 0af2 03       		.byte	0x3
 2925 0af3 00000000 		.4byte	gs_ul_page_buffer
 2926 0af7 27       		.uleb128 0x27
 2927 0af8 A3060000 		.4byte	.LASF172
 2928 0afc 01       		.byte	0x1
 2929 0afd 2704     		.2byte	0x427
 2930 0aff D0080000 		.4byte	0x8d0
 2931 0b03 00000000 		.4byte	.LFB188
 2932 0b07 10000000 		.4byte	.LFE188-.LFB188
 2933 0b0b 01       		.uleb128 0x1
 2934 0b0c 9C       		.byte	0x9c
 2935 0b0d 2F0B0000 		.4byte	0xb2f
 2936 0b11 28       		.uleb128 0x28
 2937 0b12 0A000000 		.4byte	.LVL175
 2938 0b16 991B0000 		.4byte	0x1b99
 2939 0b1a 29       		.uleb128 0x29
 2940 0b1b 01       		.uleb128 0x1
 2941 0b1c 50       		.byte	0x50
 2942 0b1d 05       		.uleb128 0x5
 2943 0b1e 0C       		.byte	0xc
 2944 0b1f 000C0E40 		.4byte	0x400e0c00
 2945 0b23 29       		.uleb128 0x29
 2946 0b24 01       		.uleb128 0x1
 2947 0b25 51       		.byte	0x51
 2948 0b26 01       		.uleb128 0x1
 2949 0b27 43       		.byte	0x43
 2950 0b28 29       		.uleb128 0x29
 2951 0b29 01       		.uleb128 0x1
 2952 0b2a 52       		.byte	0x52
 2953 0b2b 01       		.uleb128 0x1
 2954 0b2c 30       		.byte	0x30
 2955 0b2d 00       		.byte	0
 2956 0b2e 00       		.byte	0
 2957 0b2f 27       		.uleb128 0x27
 2958 0b30 100C0000 		.4byte	.LASF173
 2959 0b34 01       		.byte	0x1
 2960 0b35 0204     		.2byte	0x402
 2961 0b37 D0080000 		.4byte	0x8d0
 2962 0b3b 00000000 		.4byte	.LFB187
 2963 0b3f 4C000000 		.4byte	.LFE187-.LFB187
 2964 0b43 01       		.uleb128 0x1
 2965 0b44 9C       		.byte	0x9c
 2966 0b45 CE0B0000 		.4byte	0xbce
 2967 0b49 2A       		.uleb128 0x2a
 2968 0b4a F0070000 		.4byte	.LASF174
 2969 0b4e 01       		.byte	0x1
 2970 0b4f 0204     		.2byte	0x402
 2971 0b51 A9090000 		.4byte	0x9a9
 2972 0b55 00000000 		.4byte	.LLST100
 2973 0b59 2A       		.uleb128 0x2a
 2974 0b5a 76010000 		.4byte	.LASF175
 2975 0b5e 01       		.byte	0x1
 2976 0b5f 0204     		.2byte	0x402
 2977 0b61 D0080000 		.4byte	0x8d0
 2978 0b65 45000000 		.4byte	.LLST101
ARM GAS  /tmp/ccfM1LZ3.s 			page 74


 2979 0b69 2B       		.uleb128 0x2b
 2980 0b6a 090A0000 		.4byte	.LASF176
 2981 0b6e 01       		.byte	0x1
 2982 0b6f 0404     		.2byte	0x404
 2983 0b71 D0080000 		.4byte	0x8d0
 2984 0b75 66000000 		.4byte	.LLST102
 2985 0b79 2B       		.uleb128 0x2b
 2986 0b7a B3070000 		.4byte	.LASF177
 2987 0b7e 01       		.byte	0x1
 2988 0b7f 0504     		.2byte	0x405
 2989 0b81 CE0B0000 		.4byte	0xbce
 2990 0b85 7A000000 		.4byte	.LLST103
 2991 0b89 2C       		.uleb128 0x2c
 2992 0b8a 14000000 		.4byte	.LVL170
 2993 0b8e A41B0000 		.4byte	0x1ba4
 2994 0b92 B00B0000 		.4byte	0xbb0
 2995 0b96 29       		.uleb128 0x29
 2996 0b97 01       		.uleb128 0x1
 2997 0b98 50       		.byte	0x50
 2998 0b99 05       		.uleb128 0x5
 2999 0b9a 03       		.byte	0x3
 3000 0b9b 00000000 		.4byte	.LANCHOR0
 3001 0b9f 29       		.uleb128 0x29
 3002 0ba0 01       		.uleb128 0x1
 3003 0ba1 51       		.byte	0x51
 3004 0ba2 03       		.uleb128 0x3
 3005 0ba3 F3       		.byte	0xf3
 3006 0ba4 01       		.uleb128 0x1
 3007 0ba5 50       		.byte	0x50
 3008 0ba6 29       		.uleb128 0x29
 3009 0ba7 01       		.uleb128 0x1
 3010 0ba8 52       		.byte	0x52
 3011 0ba9 05       		.uleb128 0x5
 3012 0baa F3       		.byte	0xf3
 3013 0bab 01       		.uleb128 0x1
 3014 0bac 51       		.byte	0x51
 3015 0bad 32       		.byte	0x32
 3016 0bae 24       		.byte	0x24
 3017 0baf 00       		.byte	0
 3018 0bb0 2D       		.uleb128 0x2d
 3019 0bb1 32000000 		.4byte	.LVL174
 3020 0bb5 991B0000 		.4byte	0x1b99
 3021 0bb9 29       		.uleb128 0x29
 3022 0bba 01       		.uleb128 0x1
 3023 0bbb 50       		.byte	0x50
 3024 0bbc 05       		.uleb128 0x5
 3025 0bbd 0C       		.byte	0xc
 3026 0bbe 000C0E40 		.4byte	0x400e0c00
 3027 0bc2 29       		.uleb128 0x29
 3028 0bc3 01       		.uleb128 0x1
 3029 0bc4 51       		.byte	0x51
 3030 0bc5 01       		.uleb128 0x1
 3031 0bc6 42       		.byte	0x42
 3032 0bc7 29       		.uleb128 0x29
 3033 0bc8 01       		.uleb128 0x1
 3034 0bc9 52       		.byte	0x52
 3035 0bca 01       		.uleb128 0x1
ARM GAS  /tmp/ccfM1LZ3.s 			page 75


 3036 0bcb 30       		.byte	0x30
 3037 0bcc 00       		.byte	0
 3038 0bcd 00       		.byte	0
 3039 0bce 0D       		.uleb128 0xd
 3040 0bcf 04       		.byte	0x4
 3041 0bd0 D0080000 		.4byte	0x8d0
 3042 0bd4 27       		.uleb128 0x27
 3043 0bd5 24020000 		.4byte	.LASF178
 3044 0bd9 01       		.byte	0x1
 3045 0bda EA03     		.2byte	0x3ea
 3046 0bdc D0080000 		.4byte	0x8d0
 3047 0be0 00000000 		.4byte	.LFB186
 3048 0be4 2C000000 		.4byte	.LFE186-.LFB186
 3049 0be8 01       		.uleb128 0x1
 3050 0be9 9C       		.byte	0x9c
 3051 0bea 3A0C0000 		.4byte	0xc3a
 3052 0bee 2A       		.uleb128 0x2a
 3053 0bef 04010000 		.4byte	.LASF179
 3054 0bf3 01       		.byte	0x1
 3055 0bf4 EA03     		.2byte	0x3ea
 3056 0bf6 CE0B0000 		.4byte	0xbce
 3057 0bfa AA000000 		.4byte	.LLST98
 3058 0bfe 2A       		.uleb128 0x2a
 3059 0bff 76010000 		.4byte	.LASF175
 3060 0c03 01       		.byte	0x1
 3061 0c04 EA03     		.2byte	0x3ea
 3062 0c06 D0080000 		.4byte	0x8d0
 3063 0c0a D6000000 		.4byte	.LLST99
 3064 0c0e 2D       		.uleb128 0x2d
 3065 0c0f 1C000000 		.4byte	.LVL164
 3066 0c13 AD1B0000 		.4byte	0x1bad
 3067 0c17 29       		.uleb128 0x29
 3068 0c18 01       		.uleb128 0x1
 3069 0c19 50       		.byte	0x50
 3070 0c1a 05       		.uleb128 0x5
 3071 0c1b 0C       		.byte	0xc
 3072 0c1c 000C0E40 		.4byte	0x400e0c00
 3073 0c20 29       		.uleb128 0x29
 3074 0c21 01       		.uleb128 0x1
 3075 0c22 51       		.byte	0x51
 3076 0c23 01       		.uleb128 0x1
 3077 0c24 44       		.byte	0x44
 3078 0c25 29       		.uleb128 0x29
 3079 0c26 01       		.uleb128 0x1
 3080 0c27 52       		.byte	0x52
 3081 0c28 01       		.uleb128 0x1
 3082 0c29 45       		.byte	0x45
 3083 0c2a 29       		.uleb128 0x29
 3084 0c2b 01       		.uleb128 0x1
 3085 0c2c 53       		.byte	0x53
 3086 0c2d 03       		.uleb128 0x3
 3087 0c2e F3       		.byte	0xf3
 3088 0c2f 01       		.uleb128 0x1
 3089 0c30 50       		.byte	0x50
 3090 0c31 29       		.uleb128 0x29
 3091 0c32 02       		.uleb128 0x2
 3092 0c33 7D       		.byte	0x7d
ARM GAS  /tmp/ccfM1LZ3.s 			page 76


 3093 0c34 00       		.sleb128 0
 3094 0c35 02       		.uleb128 0x2
 3095 0c36 74       		.byte	0x74
 3096 0c37 00       		.sleb128 0
 3097 0c38 00       		.byte	0
 3098 0c39 00       		.byte	0
 3099 0c3a 27       		.uleb128 0x27
 3100 0c3b F3050000 		.4byte	.LASF180
 3101 0c3f 01       		.byte	0x1
 3102 0c40 CA03     		.2byte	0x3ca
 3103 0c42 D0080000 		.4byte	0x8d0
 3104 0c46 00000000 		.4byte	.LFB185
 3105 0c4a 48000000 		.4byte	.LFE185-.LFB185
 3106 0c4e 01       		.uleb128 0x1
 3107 0c4f 9C       		.byte	0x9c
 3108 0c50 BD0C0000 		.4byte	0xcbd
 3109 0c54 2A       		.uleb128 0x2a
 3110 0c55 8B060000 		.4byte	.LASF181
 3111 0c59 01       		.byte	0x1
 3112 0c5a CA03     		.2byte	0x3ca
 3113 0c5c CE0B0000 		.4byte	0xbce
 3114 0c60 2A010000 		.4byte	.LLST95
 3115 0c64 2A       		.uleb128 0x2a
 3116 0c65 76010000 		.4byte	.LASF175
 3117 0c69 01       		.byte	0x1
 3118 0c6a CA03     		.2byte	0x3ca
 3119 0c6c D0080000 		.4byte	0x8d0
 3120 0c70 56010000 		.4byte	.LLST96
 3121 0c74 2E       		.uleb128 0x2e
 3122 0c75 5B0C0000 		.4byte	.LASF182
 3123 0c79 01       		.byte	0x1
 3124 0c7a CC03     		.2byte	0x3cc
 3125 0c7c BD0C0000 		.4byte	0xcbd
 3126 0c80 02       		.uleb128 0x2
 3127 0c81 91       		.byte	0x91
 3128 0c82 60       		.sleb128 -32
 3129 0c83 2B       		.uleb128 0x2b
 3130 0c84 090A0000 		.4byte	.LASF176
 3131 0c88 01       		.byte	0x1
 3132 0c89 CD03     		.2byte	0x3cd
 3133 0c8b D0080000 		.4byte	0x8d0
 3134 0c8f 95010000 		.4byte	.LLST97
 3135 0c93 2D       		.uleb128 0x2d
 3136 0c94 18000000 		.4byte	.LVL156
 3137 0c98 AD1B0000 		.4byte	0x1bad
 3138 0c9c 29       		.uleb128 0x29
 3139 0c9d 01       		.uleb128 0x1
 3140 0c9e 50       		.byte	0x50
 3141 0c9f 05       		.uleb128 0x5
 3142 0ca0 0C       		.byte	0xc
 3143 0ca1 000C0E40 		.4byte	0x400e0c00
 3144 0ca5 29       		.uleb128 0x29
 3145 0ca6 01       		.uleb128 0x1
 3146 0ca7 51       		.byte	0x51
 3147 0ca8 01       		.uleb128 0x1
 3148 0ca9 3E       		.byte	0x3e
 3149 0caa 29       		.uleb128 0x29
ARM GAS  /tmp/ccfM1LZ3.s 			page 77


 3150 0cab 01       		.uleb128 0x1
 3151 0cac 52       		.byte	0x52
 3152 0cad 01       		.uleb128 0x1
 3153 0cae 3F       		.byte	0x3f
 3154 0caf 29       		.uleb128 0x29
 3155 0cb0 01       		.uleb128 0x1
 3156 0cb1 53       		.byte	0x53
 3157 0cb2 02       		.uleb128 0x2
 3158 0cb3 91       		.byte	0x91
 3159 0cb4 60       		.sleb128 -32
 3160 0cb5 29       		.uleb128 0x29
 3161 0cb6 02       		.uleb128 0x2
 3162 0cb7 7D       		.byte	0x7d
 3163 0cb8 00       		.sleb128 0
 3164 0cb9 01       		.uleb128 0x1
 3165 0cba 34       		.byte	0x34
 3166 0cbb 00       		.byte	0
 3167 0cbc 00       		.byte	0
 3168 0cbd 08       		.uleb128 0x8
 3169 0cbe D0080000 		.4byte	0x8d0
 3170 0cc2 CD0C0000 		.4byte	0xccd
 3171 0cc6 09       		.uleb128 0x9
 3172 0cc7 F3000000 		.4byte	0xf3
 3173 0ccb 03       		.byte	0x3
 3174 0ccc 00       		.byte	0
 3175 0ccd 27       		.uleb128 0x27
 3176 0cce 25030000 		.4byte	.LASF183
 3177 0cd2 01       		.byte	0x1
 3178 0cd3 BD03     		.2byte	0x3bd
 3179 0cd5 D0080000 		.4byte	0x8d0
 3180 0cd9 00000000 		.4byte	.LFB184
 3181 0cdd 06000000 		.4byte	.LFE184-.LFB184
 3182 0ce1 01       		.uleb128 0x1
 3183 0ce2 9C       		.byte	0x9c
 3184 0ce3 F70C0000 		.4byte	0xcf7
 3185 0ce7 28       		.uleb128 0x28
 3186 0ce8 06000000 		.4byte	.LVL152
 3187 0cec 210D0000 		.4byte	0xd21
 3188 0cf0 29       		.uleb128 0x29
 3189 0cf1 01       		.uleb128 0x1
 3190 0cf2 50       		.byte	0x50
 3191 0cf3 01       		.uleb128 0x1
 3192 0cf4 30       		.byte	0x30
 3193 0cf5 00       		.byte	0
 3194 0cf6 00       		.byte	0
 3195 0cf7 27       		.uleb128 0x27
 3196 0cf8 60070000 		.4byte	.LASF184
 3197 0cfc 01       		.byte	0x1
 3198 0cfd B103     		.2byte	0x3b1
 3199 0cff D0080000 		.4byte	0x8d0
 3200 0d03 00000000 		.4byte	.LFB183
 3201 0d07 06000000 		.4byte	.LFE183-.LFB183
 3202 0d0b 01       		.uleb128 0x1
 3203 0d0c 9C       		.byte	0x9c
 3204 0d0d 210D0000 		.4byte	0xd21
 3205 0d11 28       		.uleb128 0x28
 3206 0d12 06000000 		.4byte	.LVL151
ARM GAS  /tmp/ccfM1LZ3.s 			page 78


 3207 0d16 A80D0000 		.4byte	0xda8
 3208 0d1a 29       		.uleb128 0x29
 3209 0d1b 01       		.uleb128 0x1
 3210 0d1c 50       		.byte	0x50
 3211 0d1d 01       		.uleb128 0x1
 3212 0d1e 30       		.byte	0x30
 3213 0d1f 00       		.byte	0
 3214 0d20 00       		.byte	0
 3215 0d21 2F       		.uleb128 0x2f
 3216 0d22 920C0000 		.4byte	.LASF187
 3217 0d26 01       		.byte	0x1
 3218 0d27 9803     		.2byte	0x398
 3219 0d29 D0080000 		.4byte	0x8d0
 3220 0d2d 01       		.byte	0x1
 3221 0d2e 4B0D0000 		.4byte	0xd4b
 3222 0d32 30       		.uleb128 0x30
 3223 0d33 CF0A0000 		.4byte	.LASF186
 3224 0d37 01       		.byte	0x1
 3225 0d38 9803     		.2byte	0x398
 3226 0d3a D0080000 		.4byte	0x8d0
 3227 0d3e 31       		.uleb128 0x31
 3228 0d3f 1F080000 		.4byte	.LASF212
 3229 0d43 01       		.byte	0x1
 3230 0d44 9A03     		.2byte	0x39a
 3231 0d46 D0080000 		.4byte	0x8d0
 3232 0d4a 00       		.byte	0
 3233 0d4b 27       		.uleb128 0x27
 3234 0d4c 8B020000 		.4byte	.LASF185
 3235 0d50 01       		.byte	0x1
 3236 0d51 7E03     		.2byte	0x37e
 3237 0d53 D0080000 		.4byte	0x8d0
 3238 0d57 00000000 		.4byte	.LFB181
 3239 0d5b 2C000000 		.4byte	.LFE181-.LFB181
 3240 0d5f 01       		.uleb128 0x1
 3241 0d60 9C       		.byte	0x9c
 3242 0d61 A80D0000 		.4byte	0xda8
 3243 0d65 2A       		.uleb128 0x2a
 3244 0d66 CF0A0000 		.4byte	.LASF186
 3245 0d6a 01       		.byte	0x1
 3246 0d6b 7E03     		.2byte	0x37e
 3247 0d6d D0080000 		.4byte	0x8d0
 3248 0d71 A9010000 		.4byte	.LLST94
 3249 0d75 2C       		.uleb128 0x2c
 3250 0d76 10000000 		.4byte	.LVL147
 3251 0d7a 210D0000 		.4byte	0xd21
 3252 0d7e 890D0000 		.4byte	0xd89
 3253 0d82 29       		.uleb128 0x29
 3254 0d83 01       		.uleb128 0x1
 3255 0d84 50       		.byte	0x50
 3256 0d85 02       		.uleb128 0x2
 3257 0d86 74       		.byte	0x74
 3258 0d87 00       		.sleb128 0
 3259 0d88 00       		.byte	0
 3260 0d89 2D       		.uleb128 0x2d
 3261 0d8a 20000000 		.4byte	.LVL149
 3262 0d8e 991B0000 		.4byte	0x1b99
 3263 0d92 29       		.uleb128 0x29
ARM GAS  /tmp/ccfM1LZ3.s 			page 79


 3264 0d93 01       		.uleb128 0x1
 3265 0d94 50       		.byte	0x50
 3266 0d95 05       		.uleb128 0x5
 3267 0d96 0C       		.byte	0xc
 3268 0d97 000C0E40 		.4byte	0x400e0c00
 3269 0d9b 29       		.uleb128 0x29
 3270 0d9c 01       		.uleb128 0x1
 3271 0d9d 51       		.byte	0x51
 3272 0d9e 01       		.uleb128 0x1
 3273 0d9f 3C       		.byte	0x3c
 3274 0da0 29       		.uleb128 0x29
 3275 0da1 01       		.uleb128 0x1
 3276 0da2 52       		.byte	0x52
 3277 0da3 02       		.uleb128 0x2
 3278 0da4 74       		.byte	0x74
 3279 0da5 00       		.sleb128 0
 3280 0da6 00       		.byte	0
 3281 0da7 00       		.byte	0
 3282 0da8 2F       		.uleb128 0x2f
 3283 0da9 E50B0000 		.4byte	.LASF188
 3284 0dad 01       		.byte	0x1
 3285 0dae 6603     		.2byte	0x366
 3286 0db0 D0080000 		.4byte	0x8d0
 3287 0db4 01       		.byte	0x1
 3288 0db5 C60D0000 		.4byte	0xdc6
 3289 0db9 30       		.uleb128 0x30
 3290 0dba CF0A0000 		.4byte	.LASF186
 3291 0dbe 01       		.byte	0x1
 3292 0dbf 6603     		.2byte	0x366
 3293 0dc1 D0080000 		.4byte	0x8d0
 3294 0dc5 00       		.byte	0
 3295 0dc6 27       		.uleb128 0x27
 3296 0dc7 B9080000 		.4byte	.LASF189
 3297 0dcb 01       		.byte	0x1
 3298 0dcc 1903     		.2byte	0x319
 3299 0dce D0080000 		.4byte	0x8d0
 3300 0dd2 00000000 		.4byte	.LFB179
 3301 0dd6 88000000 		.4byte	.LFE179-.LFB179
 3302 0dda 01       		.uleb128 0x1
 3303 0ddb 9C       		.byte	0x9c
 3304 0ddc FF0E0000 		.4byte	0xeff
 3305 0de0 2A       		.uleb128 0x2a
 3306 0de1 35070000 		.4byte	.LASF190
 3307 0de5 01       		.byte	0x1
 3308 0de6 1903     		.2byte	0x319
 3309 0de8 D0080000 		.4byte	0x8d0
 3310 0dec EE010000 		.4byte	.LLST77
 3311 0df0 2A       		.uleb128 0x2a
 3312 0df1 880A0000 		.4byte	.LASF191
 3313 0df5 01       		.byte	0x1
 3314 0df6 1903     		.2byte	0x319
 3315 0df8 D0080000 		.4byte	0x8d0
 3316 0dfc 33020000 		.4byte	.LLST78
 3317 0e00 2B       		.uleb128 0x2b
 3318 0e01 31040000 		.4byte	.LASF192
 3319 0e05 01       		.byte	0x1
 3320 0e06 1B03     		.2byte	0x31b
ARM GAS  /tmp/ccfM1LZ3.s 			page 80


 3321 0e08 FF0E0000 		.4byte	0xeff
 3322 0e0c 78020000 		.4byte	.LLST79
 3323 0e10 2B       		.uleb128 0x2b
 3324 0e11 89050000 		.4byte	.LASF193
 3325 0e15 01       		.byte	0x1
 3326 0e16 1C03     		.2byte	0x31c
 3327 0e18 B5080000 		.4byte	0x8b5
 3328 0e1c A0020000 		.4byte	.LLST80
 3329 0e20 2B       		.uleb128 0x2b
 3330 0e21 A8050000 		.4byte	.LASF194
 3331 0e25 01       		.byte	0x1
 3332 0e26 1C03     		.2byte	0x31c
 3333 0e28 B5080000 		.4byte	0x8b5
 3334 0e2c F2020000 		.4byte	.LLST81
 3335 0e30 2B       		.uleb128 0x2b
 3336 0e31 00080000 		.4byte	.LASF195
 3337 0e35 01       		.byte	0x1
 3338 0e36 1D03     		.2byte	0x31d
 3339 0e38 AA080000 		.4byte	0x8aa
 3340 0e3c 44030000 		.4byte	.LLST82
 3341 0e40 2B       		.uleb128 0x2b
 3342 0e41 4D060000 		.4byte	.LASF196
 3343 0e45 01       		.byte	0x1
 3344 0e46 1D03     		.2byte	0x31d
 3345 0e48 AA080000 		.4byte	0x8aa
 3346 0e4c B4030000 		.4byte	.LLST83
 3347 0e50 32       		.uleb128 0x32
 3348 0e51 87010000 		.4byte	.LASF197
 3349 0e55 01       		.byte	0x1
 3350 0e56 1E03     		.2byte	0x31e
 3351 0e58 B5080000 		.4byte	0x8b5
 3352 0e5c 20       		.byte	0x20
 3353 0e5d 2B       		.uleb128 0x2b
 3354 0e5e ED090000 		.4byte	.LASF198
 3355 0e62 01       		.byte	0x1
 3356 0e63 1F03     		.2byte	0x31f
 3357 0e65 D0080000 		.4byte	0x8d0
 3358 0e69 24040000 		.4byte	.LLST84
 3359 0e6d 2B       		.uleb128 0x2b
 3360 0e6e B10A0000 		.4byte	.LASF199
 3361 0e72 01       		.byte	0x1
 3362 0e73 2003     		.2byte	0x320
 3363 0e75 D0080000 		.4byte	0x8d0
 3364 0e79 63040000 		.4byte	.LLST85
 3365 0e7d 2B       		.uleb128 0x2b
 3366 0e7e B4050000 		.4byte	.LASF200
 3367 0e82 01       		.byte	0x1
 3368 0e83 2103     		.2byte	0x321
 3369 0e85 D0080000 		.4byte	0x8d0
 3370 0e89 8C040000 		.4byte	.LLST86
 3371 0e8d 2B       		.uleb128 0x2b
 3372 0e8e 7C0C0000 		.4byte	.LASF201
 3373 0e92 01       		.byte	0x1
 3374 0e93 2203     		.2byte	0x322
 3375 0e95 D0080000 		.4byte	0x8d0
 3376 0e99 C3040000 		.4byte	.LLST87
 3377 0e9d 2B       		.uleb128 0x2b
ARM GAS  /tmp/ccfM1LZ3.s 			page 81


 3378 0e9e 18080000 		.4byte	.LASF202
 3379 0ea2 01       		.byte	0x1
 3380 0ea3 2303     		.2byte	0x323
 3381 0ea5 D0080000 		.4byte	0x8d0
 3382 0ea9 36050000 		.4byte	.LLST88
 3383 0ead 2C       		.uleb128 0x2c
 3384 0eae 12000000 		.4byte	.LVL103
 3385 0eb2 991B0000 		.4byte	0x1b99
 3386 0eb6 CE0E0000 		.4byte	0xece
 3387 0eba 29       		.uleb128 0x29
 3388 0ebb 01       		.uleb128 0x1
 3389 0ebc 50       		.byte	0x50
 3390 0ebd 05       		.uleb128 0x5
 3391 0ebe 0C       		.byte	0xc
 3392 0ebf 000C0E40 		.4byte	0x400e0c00
 3393 0ec3 29       		.uleb128 0x29
 3394 0ec4 01       		.uleb128 0x1
 3395 0ec5 51       		.byte	0x51
 3396 0ec6 01       		.uleb128 0x1
 3397 0ec7 3A       		.byte	0x3a
 3398 0ec8 29       		.uleb128 0x29
 3399 0ec9 01       		.uleb128 0x1
 3400 0eca 52       		.byte	0x52
 3401 0ecb 01       		.uleb128 0x1
 3402 0ecc 30       		.byte	0x30
 3403 0ecd 00       		.byte	0
 3404 0ece 2C       		.uleb128 0x2c
 3405 0ecf 26000000 		.4byte	.LVL108
 3406 0ed3 B81B0000 		.4byte	0x1bb8
 3407 0ed7 E50E0000 		.4byte	0xee5
 3408 0edb 29       		.uleb128 0x29
 3409 0edc 01       		.uleb128 0x1
 3410 0edd 50       		.byte	0x50
 3411 0ede 05       		.uleb128 0x5
 3412 0edf 0C       		.byte	0xc
 3413 0ee0 000C0E40 		.4byte	0x400e0c00
 3414 0ee4 00       		.byte	0
 3415 0ee5 33       		.uleb128 0x33
 3416 0ee6 34000000 		.4byte	.LVL111
 3417 0eea B81B0000 		.4byte	0x1bb8
 3418 0eee 2D       		.uleb128 0x2d
 3419 0eef 74000000 		.4byte	.LVL123
 3420 0ef3 B81B0000 		.4byte	0x1bb8
 3421 0ef7 29       		.uleb128 0x29
 3422 0ef8 01       		.uleb128 0x1
 3423 0ef9 50       		.byte	0x50
 3424 0efa 02       		.uleb128 0x2
 3425 0efb 77       		.byte	0x77
 3426 0efc 00       		.sleb128 0
 3427 0efd 00       		.byte	0
 3428 0efe 00       		.byte	0
 3429 0eff 0D       		.uleb128 0xd
 3430 0f00 04       		.byte	0x4
 3431 0f01 9E090000 		.4byte	0x99e
 3432 0f05 27       		.uleb128 0x27
 3433 0f06 53070000 		.4byte	.LASF203
 3434 0f0a 01       		.byte	0x1
ARM GAS  /tmp/ccfM1LZ3.s 			page 82


 3435 0f0b ED02     		.2byte	0x2ed
 3436 0f0d D0080000 		.4byte	0x8d0
 3437 0f11 00000000 		.4byte	.LFB178
 3438 0f15 54000000 		.4byte	.LFE178-.LFB178
 3439 0f19 01       		.uleb128 0x1
 3440 0f1a 9C       		.byte	0x9c
 3441 0f1b E4100000 		.4byte	0x10e4
 3442 0f1f 2A       		.uleb128 0x2a
 3443 0f20 35070000 		.4byte	.LASF190
 3444 0f24 01       		.byte	0x1
 3445 0f25 ED02     		.2byte	0x2ed
 3446 0f27 D0080000 		.4byte	0x8d0
 3447 0f2b 84050000 		.4byte	.LLST57
 3448 0f2f 2A       		.uleb128 0x2a
 3449 0f30 880A0000 		.4byte	.LASF191
 3450 0f34 01       		.byte	0x1
 3451 0f35 ED02     		.2byte	0x2ed
 3452 0f37 D0080000 		.4byte	0x8d0
 3453 0f3b A5050000 		.4byte	.LLST58
 3454 0f3f 2A       		.uleb128 0x2a
 3455 0f40 99090000 		.4byte	.LASF204
 3456 0f44 01       		.byte	0x1
 3457 0f45 EE02     		.2byte	0x2ee
 3458 0f47 CE0B0000 		.4byte	0xbce
 3459 0f4b C6050000 		.4byte	.LLST59
 3460 0f4f 2A       		.uleb128 0x2a
 3461 0f50 77080000 		.4byte	.LASF205
 3462 0f54 01       		.byte	0x1
 3463 0f55 EE02     		.2byte	0x2ee
 3464 0f57 CE0B0000 		.4byte	0xbce
 3465 0f5b E7050000 		.4byte	.LLST60
 3466 0f5f 34       		.uleb128 0x34
 3467 0f60 31040000 		.4byte	.LASF192
 3468 0f64 01       		.byte	0x1
 3469 0f65 F002     		.2byte	0x2f0
 3470 0f67 FF0E0000 		.4byte	0xeff
 3471 0f6b 000C0E40 		.4byte	0x400e0c00
 3472 0f6f 2B       		.uleb128 0x2b
 3473 0f70 A50C0000 		.4byte	.LASF206
 3474 0f74 01       		.byte	0x1
 3475 0f75 F102     		.2byte	0x2f1
 3476 0f77 D0080000 		.4byte	0x8d0
 3477 0f7b 08060000 		.4byte	.LLST61
 3478 0f7f 2B       		.uleb128 0x2b
 3479 0f80 AA090000 		.4byte	.LASF207
 3480 0f84 01       		.byte	0x1
 3481 0f85 F102     		.2byte	0x2f1
 3482 0f87 D0080000 		.4byte	0x8d0
 3483 0f8b 3E060000 		.4byte	.LLST62
 3484 0f8f 2B       		.uleb128 0x2b
 3485 0f90 89050000 		.4byte	.LASF193
 3486 0f94 01       		.byte	0x1
 3487 0f95 F202     		.2byte	0x2f2
 3488 0f97 B5080000 		.4byte	0x8b5
 3489 0f9b 75060000 		.4byte	.LLST63
 3490 0f9f 2B       		.uleb128 0x2b
 3491 0fa0 A8050000 		.4byte	.LASF194
ARM GAS  /tmp/ccfM1LZ3.s 			page 83


 3492 0fa4 01       		.byte	0x1
 3493 0fa5 F202     		.2byte	0x2f2
 3494 0fa7 B5080000 		.4byte	0x8b5
 3495 0fab 9E060000 		.4byte	.LLST64
 3496 0faf 2B       		.uleb128 0x2b
 3497 0fb0 B10A0000 		.4byte	.LASF199
 3498 0fb4 01       		.byte	0x1
 3499 0fb5 F302     		.2byte	0x2f3
 3500 0fb7 D0080000 		.4byte	0x8d0
 3501 0fbb CF060000 		.4byte	.LLST65
 3502 0fbf 32       		.uleb128 0x32
 3503 0fc0 87010000 		.4byte	.LASF197
 3504 0fc4 01       		.byte	0x1
 3505 0fc5 F402     		.2byte	0x2f4
 3506 0fc7 B5080000 		.4byte	0x8b5
 3507 0fcb 20       		.byte	0x20
 3508 0fcc 35       		.uleb128 0x35
 3509 0fcd 85190000 		.4byte	0x1985
 3510 0fd1 02000000 		.4byte	.LBB70
 3511 0fd5 0C000000 		.4byte	.LBE70-.LBB70
 3512 0fd9 01       		.byte	0x1
 3513 0fda F802     		.2byte	0x2f8
 3514 0fdc 1F100000 		.4byte	0x101f
 3515 0fe0 36       		.uleb128 0x36
 3516 0fe1 B6190000 		.4byte	0x19b6
 3517 0fe5 ED060000 		.4byte	.LLST66
 3518 0fe9 36       		.uleb128 0x36
 3519 0fea AA190000 		.4byte	0x19aa
 3520 0fee 05070000 		.4byte	.LLST67
 3521 0ff2 36       		.uleb128 0x36
 3522 0ff3 9E190000 		.4byte	0x199e
 3523 0ff7 1D070000 		.4byte	.LLST68
 3524 0ffb 36       		.uleb128 0x36
 3525 0ffc 92190000 		.4byte	0x1992
 3526 1000 3E070000 		.4byte	.LLST69
 3527 1004 37       		.uleb128 0x37
 3528 1005 02000000 		.4byte	.LBB71
 3529 1009 0C000000 		.4byte	.LBE71-.LBB71
 3530 100d 38       		.uleb128 0x38
 3531 100e C2190000 		.4byte	0x19c2
 3532 1012 51070000 		.4byte	.LLST70
 3533 1016 39       		.uleb128 0x39
 3534 1017 CE190000 		.4byte	0x19ce
 3535 101b 01       		.uleb128 0x1
 3536 101c 55       		.byte	0x55
 3537 101d 00       		.byte	0
 3538 101e 00       		.byte	0
 3539 101f 3A       		.uleb128 0x3a
 3540 1020 1F1A0000 		.4byte	0x1a1f
 3541 1024 16000000 		.4byte	.LBB72
 3542 1028 78000000 		.4byte	.Ldebug_ranges0+0x78
 3543 102c 01       		.byte	0x1
 3544 102d 0103     		.2byte	0x301
 3545 102f 73100000 		.4byte	0x1073
 3546 1033 36       		.uleb128 0x36
 3547 1034 4C1A0000 		.4byte	0x1a4c
 3548 1038 64070000 		.4byte	.LLST71
ARM GAS  /tmp/ccfM1LZ3.s 			page 84


 3549 103c 36       		.uleb128 0x36
 3550 103d 411A0000 		.4byte	0x1a41
 3551 1041 78070000 		.4byte	.LLST72
 3552 1045 36       		.uleb128 0x36
 3553 1046 361A0000 		.4byte	0x1a36
 3554 104a 90070000 		.4byte	.LLST73
 3555 104e 36       		.uleb128 0x36
 3556 104f 2B1A0000 		.4byte	0x1a2b
 3557 1053 B4070000 		.4byte	.LLST74
 3558 1057 3B       		.uleb128 0x3b
 3559 1058 78000000 		.4byte	.Ldebug_ranges0+0x78
 3560 105c 3C       		.uleb128 0x3c
 3561 105d 571A0000 		.4byte	0x1a57
 3562 1061 000C0E40 		.4byte	0x400e0c00
 3563 1065 39       		.uleb128 0x39
 3564 1066 621A0000 		.4byte	0x1a62
 3565 106a 01       		.uleb128 0x1
 3566 106b 54       		.byte	0x54
 3567 106c 3D       		.uleb128 0x3d
 3568 106d 6D1A0000 		.4byte	0x1a6d
 3569 1071 00       		.byte	0
 3570 1072 00       		.byte	0
 3571 1073 3A       		.uleb128 0x3a
 3572 1074 1F1A0000 		.4byte	0x1a1f
 3573 1078 1A000000 		.4byte	.LBB76
 3574 107c 98000000 		.4byte	.Ldebug_ranges0+0x98
 3575 1080 01       		.byte	0x1
 3576 1081 0203     		.2byte	0x302
 3577 1083 C8100000 		.4byte	0x10c8
 3578 1087 3E       		.uleb128 0x3e
 3579 1088 4C1A0000 		.4byte	0x1a4c
 3580 108c 00       		.byte	0
 3581 108d 3F       		.uleb128 0x3f
 3582 108e 411A0000 		.4byte	0x1a41
 3583 1092 06       		.uleb128 0x6
 3584 1093 F2       		.byte	0xf2
 3585 1094 9F0F0000 		.4byte	.Ldebug_info0+3999
 3586 1098 00       		.sleb128 0
 3587 1099 36       		.uleb128 0x36
 3588 109a 361A0000 		.4byte	0x1a36
 3589 109e CC070000 		.4byte	.LLST75
 3590 10a2 3E       		.uleb128 0x3e
 3591 10a3 2B1A0000 		.4byte	0x1a2b
 3592 10a7 00       		.byte	0
 3593 10a8 3B       		.uleb128 0x3b
 3594 10a9 98000000 		.4byte	.Ldebug_ranges0+0x98
 3595 10ad 3C       		.uleb128 0x3c
 3596 10ae 571A0000 		.4byte	0x1a57
 3597 10b2 000C0E40 		.4byte	0x400e0c00
 3598 10b6 38       		.uleb128 0x38
 3599 10b7 621A0000 		.4byte	0x1a62
 3600 10bb F8070000 		.4byte	.LLST76
 3601 10bf 40       		.uleb128 0x40
 3602 10c0 6D1A0000 		.4byte	0x1a6d
 3603 10c4 FF01     		.2byte	0x1ff
 3604 10c6 00       		.byte	0
 3605 10c7 00       		.byte	0
ARM GAS  /tmp/ccfM1LZ3.s 			page 85


 3606 10c8 2D       		.uleb128 0x2d
 3607 10c9 42000000 		.4byte	.LVL95
 3608 10cd 991B0000 		.4byte	0x1b99
 3609 10d1 29       		.uleb128 0x29
 3610 10d2 01       		.uleb128 0x1
 3611 10d3 50       		.byte	0x50
 3612 10d4 02       		.uleb128 0x2
 3613 10d5 76       		.byte	0x76
 3614 10d6 00       		.sleb128 0
 3615 10d7 29       		.uleb128 0x29
 3616 10d8 01       		.uleb128 0x1
 3617 10d9 51       		.byte	0x51
 3618 10da 01       		.uleb128 0x1
 3619 10db 39       		.byte	0x39
 3620 10dc 29       		.uleb128 0x29
 3621 10dd 01       		.uleb128 0x1
 3622 10de 52       		.byte	0x52
 3623 10df 02       		.uleb128 0x2
 3624 10e0 74       		.byte	0x74
 3625 10e1 60       		.sleb128 -32
 3626 10e2 00       		.byte	0
 3627 10e3 00       		.byte	0
 3628 10e4 27       		.uleb128 0x27
 3629 10e5 DE060000 		.4byte	.LASF208
 3630 10e9 01       		.byte	0x1
 3631 10ea BC02     		.2byte	0x2bc
 3632 10ec D0080000 		.4byte	0x8d0
 3633 10f0 00000000 		.4byte	.LFB177
 3634 10f4 54000000 		.4byte	.LFE177-.LFB177
 3635 10f8 01       		.uleb128 0x1
 3636 10f9 9C       		.byte	0x9c
 3637 10fa C3120000 		.4byte	0x12c3
 3638 10fe 2A       		.uleb128 0x2a
 3639 10ff 35070000 		.4byte	.LASF190
 3640 1103 01       		.byte	0x1
 3641 1104 BC02     		.2byte	0x2bc
 3642 1106 D0080000 		.4byte	0x8d0
 3643 110a 29080000 		.4byte	.LLST37
 3644 110e 2A       		.uleb128 0x2a
 3645 110f 880A0000 		.4byte	.LASF191
 3646 1113 01       		.byte	0x1
 3647 1114 BC02     		.2byte	0x2bc
 3648 1116 D0080000 		.4byte	0x8d0
 3649 111a 4A080000 		.4byte	.LLST38
 3650 111e 2A       		.uleb128 0x2a
 3651 111f 99090000 		.4byte	.LASF204
 3652 1123 01       		.byte	0x1
 3653 1124 BD02     		.2byte	0x2bd
 3654 1126 CE0B0000 		.4byte	0xbce
 3655 112a 6B080000 		.4byte	.LLST39
 3656 112e 2A       		.uleb128 0x2a
 3657 112f 77080000 		.4byte	.LASF205
 3658 1133 01       		.byte	0x1
 3659 1134 BD02     		.2byte	0x2bd
 3660 1136 CE0B0000 		.4byte	0xbce
 3661 113a 8C080000 		.4byte	.LLST40
 3662 113e 34       		.uleb128 0x34
ARM GAS  /tmp/ccfM1LZ3.s 			page 86


 3663 113f 31040000 		.4byte	.LASF192
 3664 1143 01       		.byte	0x1
 3665 1144 BF02     		.2byte	0x2bf
 3666 1146 FF0E0000 		.4byte	0xeff
 3667 114a 000C0E40 		.4byte	0x400e0c00
 3668 114e 2B       		.uleb128 0x2b
 3669 114f A50C0000 		.4byte	.LASF206
 3670 1153 01       		.byte	0x1
 3671 1154 C002     		.2byte	0x2c0
 3672 1156 D0080000 		.4byte	0x8d0
 3673 115a AD080000 		.4byte	.LLST41
 3674 115e 2B       		.uleb128 0x2b
 3675 115f AA090000 		.4byte	.LASF207
 3676 1163 01       		.byte	0x1
 3677 1164 C002     		.2byte	0x2c0
 3678 1166 D0080000 		.4byte	0x8d0
 3679 116a F3080000 		.4byte	.LLST42
 3680 116e 2B       		.uleb128 0x2b
 3681 116f 89050000 		.4byte	.LASF193
 3682 1173 01       		.byte	0x1
 3683 1174 C102     		.2byte	0x2c1
 3684 1176 B5080000 		.4byte	0x8b5
 3685 117a 2A090000 		.4byte	.LLST43
 3686 117e 2B       		.uleb128 0x2b
 3687 117f A8050000 		.4byte	.LASF194
 3688 1183 01       		.byte	0x1
 3689 1184 C102     		.2byte	0x2c1
 3690 1186 B5080000 		.4byte	0x8b5
 3691 118a 53090000 		.4byte	.LLST44
 3692 118e 2B       		.uleb128 0x2b
 3693 118f B10A0000 		.4byte	.LASF199
 3694 1193 01       		.byte	0x1
 3695 1194 C202     		.2byte	0x2c2
 3696 1196 D0080000 		.4byte	0x8d0
 3697 119a 84090000 		.4byte	.LLST45
 3698 119e 32       		.uleb128 0x32
 3699 119f 87010000 		.4byte	.LASF197
 3700 11a3 01       		.byte	0x1
 3701 11a4 C302     		.2byte	0x2c3
 3702 11a6 B5080000 		.4byte	0x8b5
 3703 11aa 20       		.byte	0x20
 3704 11ab 35       		.uleb128 0x35
 3705 11ac 85190000 		.4byte	0x1985
 3706 11b0 02000000 		.4byte	.LBB56
 3707 11b4 0C000000 		.4byte	.LBE56-.LBB56
 3708 11b8 01       		.byte	0x1
 3709 11b9 C702     		.2byte	0x2c7
 3710 11bb FE110000 		.4byte	0x11fe
 3711 11bf 36       		.uleb128 0x36
 3712 11c0 B6190000 		.4byte	0x19b6
 3713 11c4 A2090000 		.4byte	.LLST46
 3714 11c8 36       		.uleb128 0x36
 3715 11c9 AA190000 		.4byte	0x19aa
 3716 11cd BA090000 		.4byte	.LLST47
 3717 11d1 36       		.uleb128 0x36
 3718 11d2 9E190000 		.4byte	0x199e
 3719 11d6 D2090000 		.4byte	.LLST48
ARM GAS  /tmp/ccfM1LZ3.s 			page 87


 3720 11da 36       		.uleb128 0x36
 3721 11db 92190000 		.4byte	0x1992
 3722 11df F3090000 		.4byte	.LLST49
 3723 11e3 37       		.uleb128 0x37
 3724 11e4 02000000 		.4byte	.LBB57
 3725 11e8 0C000000 		.4byte	.LBE57-.LBB57
 3726 11ec 38       		.uleb128 0x38
 3727 11ed C2190000 		.4byte	0x19c2
 3728 11f1 060A0000 		.4byte	.LLST50
 3729 11f5 39       		.uleb128 0x39
 3730 11f6 CE190000 		.4byte	0x19ce
 3731 11fa 01       		.uleb128 0x1
 3732 11fb 55       		.byte	0x55
 3733 11fc 00       		.byte	0
 3734 11fd 00       		.byte	0
 3735 11fe 3A       		.uleb128 0x3a
 3736 11ff 1F1A0000 		.4byte	0x1a1f
 3737 1203 16000000 		.4byte	.LBB58
 3738 1207 38000000 		.4byte	.Ldebug_ranges0+0x38
 3739 120b 01       		.byte	0x1
 3740 120c D202     		.2byte	0x2d2
 3741 120e 52120000 		.4byte	0x1252
 3742 1212 36       		.uleb128 0x36
 3743 1213 4C1A0000 		.4byte	0x1a4c
 3744 1217 190A0000 		.4byte	.LLST51
 3745 121b 36       		.uleb128 0x36
 3746 121c 411A0000 		.4byte	0x1a41
 3747 1220 2D0A0000 		.4byte	.LLST52
 3748 1224 36       		.uleb128 0x36
 3749 1225 361A0000 		.4byte	0x1a36
 3750 1229 450A0000 		.4byte	.LLST53
 3751 122d 36       		.uleb128 0x36
 3752 122e 2B1A0000 		.4byte	0x1a2b
 3753 1232 790A0000 		.4byte	.LLST54
 3754 1236 3B       		.uleb128 0x3b
 3755 1237 38000000 		.4byte	.Ldebug_ranges0+0x38
 3756 123b 3C       		.uleb128 0x3c
 3757 123c 571A0000 		.4byte	0x1a57
 3758 1240 000C0E40 		.4byte	0x400e0c00
 3759 1244 39       		.uleb128 0x39
 3760 1245 621A0000 		.4byte	0x1a62
 3761 1249 01       		.uleb128 0x1
 3762 124a 54       		.byte	0x54
 3763 124b 3D       		.uleb128 0x3d
 3764 124c 6D1A0000 		.4byte	0x1a6d
 3765 1250 00       		.byte	0
 3766 1251 00       		.byte	0
 3767 1252 3A       		.uleb128 0x3a
 3768 1253 1F1A0000 		.4byte	0x1a1f
 3769 1257 1A000000 		.4byte	.LBB62
 3770 125b 58000000 		.4byte	.Ldebug_ranges0+0x58
 3771 125f 01       		.byte	0x1
 3772 1260 D302     		.2byte	0x2d3
 3773 1262 A7120000 		.4byte	0x12a7
 3774 1266 3E       		.uleb128 0x3e
 3775 1267 4C1A0000 		.4byte	0x1a4c
 3776 126b 00       		.byte	0
ARM GAS  /tmp/ccfM1LZ3.s 			page 88


 3777 126c 3F       		.uleb128 0x3f
 3778 126d 411A0000 		.4byte	0x1a41
 3779 1271 06       		.uleb128 0x6
 3780 1272 F2       		.byte	0xf2
 3781 1273 7E110000 		.4byte	.Ldebug_info0+4478
 3782 1277 00       		.sleb128 0
 3783 1278 36       		.uleb128 0x36
 3784 1279 361A0000 		.4byte	0x1a36
 3785 127d 910A0000 		.4byte	.LLST55
 3786 1281 3E       		.uleb128 0x3e
 3787 1282 2B1A0000 		.4byte	0x1a2b
 3788 1286 00       		.byte	0
 3789 1287 3B       		.uleb128 0x3b
 3790 1288 58000000 		.4byte	.Ldebug_ranges0+0x58
 3791 128c 3C       		.uleb128 0x3c
 3792 128d 571A0000 		.4byte	0x1a57
 3793 1291 000C0E40 		.4byte	0x400e0c00
 3794 1295 38       		.uleb128 0x38
 3795 1296 621A0000 		.4byte	0x1a62
 3796 129a BD0A0000 		.4byte	.LLST56
 3797 129e 40       		.uleb128 0x40
 3798 129f 6D1A0000 		.4byte	0x1a6d
 3799 12a3 FF01     		.2byte	0x1ff
 3800 12a5 00       		.byte	0
 3801 12a6 00       		.byte	0
 3802 12a7 2D       		.uleb128 0x2d
 3803 12a8 42000000 		.4byte	.LVL79
 3804 12ac 991B0000 		.4byte	0x1b99
 3805 12b0 29       		.uleb128 0x29
 3806 12b1 01       		.uleb128 0x1
 3807 12b2 50       		.byte	0x50
 3808 12b3 02       		.uleb128 0x2
 3809 12b4 76       		.byte	0x76
 3810 12b5 00       		.sleb128 0
 3811 12b6 29       		.uleb128 0x29
 3812 12b7 01       		.uleb128 0x1
 3813 12b8 51       		.byte	0x51
 3814 12b9 01       		.uleb128 0x1
 3815 12ba 38       		.byte	0x38
 3816 12bb 29       		.uleb128 0x29
 3817 12bc 01       		.uleb128 0x1
 3818 12bd 52       		.byte	0x52
 3819 12be 02       		.uleb128 0x2
 3820 12bf 74       		.byte	0x74
 3821 12c0 60       		.sleb128 -32
 3822 12c1 00       		.byte	0
 3823 12c2 00       		.byte	0
 3824 12c3 27       		.uleb128 0x27
 3825 12c4 D5050000 		.4byte	.LASF209
 3826 12c8 01       		.byte	0x1
 3827 12c9 5F02     		.2byte	0x25f
 3828 12cb D0080000 		.4byte	0x8d0
 3829 12cf 00000000 		.4byte	.LFB176
 3830 12d3 B4000000 		.4byte	.LFE176-.LFB176
 3831 12d7 01       		.uleb128 0x1
 3832 12d8 9C       		.byte	0x9c
 3833 12d9 13150000 		.4byte	0x1513
ARM GAS  /tmp/ccfM1LZ3.s 			page 89


 3834 12dd 2A       		.uleb128 0x2a
 3835 12de 00090000 		.4byte	.LASF210
 3836 12e2 01       		.byte	0x1
 3837 12e3 5F02     		.2byte	0x25f
 3838 12e5 D0080000 		.4byte	0x8d0
 3839 12e9 EE0A0000 		.4byte	.LLST23
 3840 12ed 2A       		.uleb128 0x2a
 3841 12ee F0070000 		.4byte	.LASF174
 3842 12f2 01       		.byte	0x1
 3843 12f3 5F02     		.2byte	0x25f
 3844 12f5 A9090000 		.4byte	0x9a9
 3845 12f9 0F0B0000 		.4byte	.LLST24
 3846 12fd 2A       		.uleb128 0x2a
 3847 12fe 76010000 		.4byte	.LASF175
 3848 1302 01       		.byte	0x1
 3849 1303 6002     		.2byte	0x260
 3850 1305 D0080000 		.4byte	0x8d0
 3851 1309 380B0000 		.4byte	.LLST25
 3852 130d 2A       		.uleb128 0x2a
 3853 130e B8090000 		.4byte	.LASF211
 3854 1312 01       		.byte	0x1
 3855 1313 6002     		.2byte	0x260
 3856 1315 D0080000 		.4byte	0x8d0
 3857 1319 610B0000 		.4byte	.LLST26
 3858 131d 34       		.uleb128 0x34
 3859 131e 31040000 		.4byte	.LASF192
 3860 1322 01       		.byte	0x1
 3861 1323 6202     		.2byte	0x262
 3862 1325 FF0E0000 		.4byte	0xeff
 3863 1329 000C0E40 		.4byte	0x400e0c00
 3864 132d 31       		.uleb128 0x31
 3865 132e F3060000 		.4byte	.LASF213
 3866 1332 01       		.byte	0x1
 3867 1333 6302     		.2byte	0x263
 3868 1335 D0080000 		.4byte	0x8d0
 3869 1339 2B       		.uleb128 0x2b
 3870 133a F4020000 		.4byte	.LASF214
 3871 133e 01       		.byte	0x1
 3872 133f 6402     		.2byte	0x264
 3873 1341 B5080000 		.4byte	0x8b5
 3874 1345 800B0000 		.4byte	.LLST27
 3875 1349 2B       		.uleb128 0x2b
 3876 134a 52020000 		.4byte	.LASF215
 3877 134e 01       		.byte	0x1
 3878 134f 6502     		.2byte	0x265
 3879 1351 B5080000 		.4byte	0x8b5
 3880 1355 9E0B0000 		.4byte	.LLST28
 3881 1359 2B       		.uleb128 0x2b
 3882 135a DA090000 		.4byte	.LASF216
 3883 135e 01       		.byte	0x1
 3884 135f 6602     		.2byte	0x266
 3885 1361 D0080000 		.4byte	0x8d0
 3886 1365 C80B0000 		.4byte	.LLST29
 3887 1369 31       		.uleb128 0x31
 3888 136a FC020000 		.4byte	.LASF217
 3889 136e 01       		.byte	0x1
 3890 136f 6702     		.2byte	0x267
ARM GAS  /tmp/ccfM1LZ3.s 			page 90


 3891 1371 D0080000 		.4byte	0x8d0
 3892 1375 2B       		.uleb128 0x2b
 3893 1376 CA050000 		.4byte	.LASF218
 3894 137a 01       		.byte	0x1
 3895 137b 6802     		.2byte	0x268
 3896 137d B5080000 		.4byte	0x8b5
 3897 1381 E60B0000 		.4byte	.LLST30
 3898 1385 2B       		.uleb128 0x2b
 3899 1386 B10A0000 		.4byte	.LASF199
 3900 138a 01       		.byte	0x1
 3901 138b 6902     		.2byte	0x269
 3902 138d D0080000 		.4byte	0x8d0
 3903 1391 160C0000 		.4byte	.LLST31
 3904 1395 2B       		.uleb128 0x2b
 3905 1396 090A0000 		.4byte	.LASF176
 3906 139a 01       		.byte	0x1
 3907 139b 6A02     		.2byte	0x26a
 3908 139d D0080000 		.4byte	0x8d0
 3909 13a1 340C0000 		.4byte	.LLST32
 3910 13a5 31       		.uleb128 0x31
 3911 13a6 EE030000 		.4byte	.LASF219
 3912 13aa 01       		.byte	0x1
 3913 13ab 6B02     		.2byte	0x26b
 3914 13ad CE0B0000 		.4byte	0xbce
 3915 13b1 2E       		.uleb128 0x2e
 3916 13b2 160D0000 		.4byte	.LASF220
 3917 13b6 01       		.byte	0x1
 3918 13b7 6C02     		.2byte	0x26c
 3919 13b9 13150000 		.4byte	0x1513
 3920 13bd 06       		.uleb128 0x6
 3921 13be 03       		.byte	0x3
 3922 13bf 00000000 		.4byte	gs_ul_page_buffer
 3923 13c3 9F       		.byte	0x9f
 3924 13c4 3A       		.uleb128 0x3a
 3925 13c5 1F1A0000 		.4byte	0x1a1f
 3926 13c9 04000000 		.4byte	.LBB46
 3927 13cd 00000000 		.4byte	.Ldebug_ranges0+0
 3928 13d1 01       		.byte	0x1
 3929 13d2 6E02     		.2byte	0x26e
 3930 13d4 27140000 		.4byte	0x1427
 3931 13d8 3F       		.uleb128 0x3f
 3932 13d9 4C1A0000 		.4byte	0x1a4c
 3933 13dd 06       		.uleb128 0x6
 3934 13de F2       		.byte	0xf2
 3935 13df 49130000 		.4byte	.Ldebug_info0+4937
 3936 13e3 00       		.sleb128 0
 3937 13e4 3F       		.uleb128 0x3f
 3938 13e5 411A0000 		.4byte	0x1a41
 3939 13e9 06       		.uleb128 0x6
 3940 13ea F2       		.byte	0xf2
 3941 13eb 39130000 		.4byte	.Ldebug_info0+4921
 3942 13ef 00       		.sleb128 0
 3943 13f0 36       		.uleb128 0x36
 3944 13f1 361A0000 		.4byte	0x1a36
 3945 13f5 480C0000 		.4byte	.LLST33
 3946 13f9 3F       		.uleb128 0x3f
 3947 13fa 2B1A0000 		.4byte	0x1a2b
ARM GAS  /tmp/ccfM1LZ3.s 			page 91


 3948 13fe 06       		.uleb128 0x6
 3949 13ff F2       		.byte	0xf2
 3950 1400 1D130000 		.4byte	.Ldebug_info0+4893
 3951 1404 00       		.sleb128 0
 3952 1405 3B       		.uleb128 0x3b
 3953 1406 00000000 		.4byte	.Ldebug_ranges0+0
 3954 140a 3C       		.uleb128 0x3c
 3955 140b 571A0000 		.4byte	0x1a57
 3956 140f 000C0E40 		.4byte	0x400e0c00
 3957 1413 38       		.uleb128 0x38
 3958 1414 621A0000 		.4byte	0x1a62
 3959 1418 690C0000 		.4byte	.LLST34
 3960 141c 38       		.uleb128 0x38
 3961 141d 6D1A0000 		.4byte	0x1a6d
 3962 1421 940C0000 		.4byte	.LLST35
 3963 1425 00       		.byte	0
 3964 1426 00       		.byte	0
 3965 1427 3A       		.uleb128 0x3a
 3966 1428 DB190000 		.4byte	0x19db
 3967 142c 28000000 		.4byte	.LBB52
 3968 1430 20000000 		.4byte	.Ldebug_ranges0+0x20
 3969 1434 01       		.byte	0x1
 3970 1435 7D02     		.2byte	0x27d
 3971 1437 5F140000 		.4byte	0x145f
 3972 143b 36       		.uleb128 0x36
 3973 143c E7190000 		.4byte	0x19e7
 3974 1440 BB0C0000 		.4byte	.LLST36
 3975 1444 41       		.uleb128 0x41
 3976 1445 081A0000 		.4byte	0x1a08
 3977 1449 41       		.uleb128 0x41
 3978 144a FD190000 		.4byte	0x19fd
 3979 144e 41       		.uleb128 0x41
 3980 144f F2190000 		.4byte	0x19f2
 3981 1453 3B       		.uleb128 0x3b
 3982 1454 20000000 		.4byte	.Ldebug_ranges0+0x20
 3983 1458 3D       		.uleb128 0x3d
 3984 1459 131A0000 		.4byte	0x1a13
 3985 145d 00       		.byte	0
 3986 145e 00       		.byte	0
 3987 145f 2C       		.uleb128 0x2c
 3988 1460 44000000 		.4byte	.LVL52
 3989 1464 A41B0000 		.4byte	0x1ba4
 3990 1468 7F140000 		.4byte	0x147f
 3991 146c 29       		.uleb128 0x29
 3992 146d 01       		.uleb128 0x1
 3993 146e 50       		.byte	0x50
 3994 146f 02       		.uleb128 0x2
 3995 1470 7B       		.byte	0x7b
 3996 1471 00       		.sleb128 0
 3997 1472 29       		.uleb128 0x29
 3998 1473 01       		.uleb128 0x1
 3999 1474 51       		.byte	0x51
 4000 1475 02       		.uleb128 0x2
 4001 1476 74       		.byte	0x74
 4002 1477 00       		.sleb128 0
 4003 1478 29       		.uleb128 0x29
 4004 1479 01       		.uleb128 0x1
ARM GAS  /tmp/ccfM1LZ3.s 			page 92


 4005 147a 52       		.byte	0x52
 4006 147b 02       		.uleb128 0x2
 4007 147c 76       		.byte	0x76
 4008 147d 00       		.sleb128 0
 4009 147e 00       		.byte	0
 4010 147f 2C       		.uleb128 0x2c
 4011 1480 50000000 		.4byte	.LVL53
 4012 1484 A41B0000 		.4byte	0x1ba4
 4013 1488 A2140000 		.4byte	0x14a2
 4014 148c 29       		.uleb128 0x29
 4015 148d 01       		.uleb128 0x1
 4016 148e 50       		.byte	0x50
 4017 148f 05       		.uleb128 0x5
 4018 1490 7B       		.byte	0x7b
 4019 1491 00       		.sleb128 0
 4020 1492 76       		.byte	0x76
 4021 1493 00       		.sleb128 0
 4022 1494 22       		.byte	0x22
 4023 1495 29       		.uleb128 0x29
 4024 1496 01       		.uleb128 0x1
 4025 1497 51       		.byte	0x51
 4026 1498 02       		.uleb128 0x2
 4027 1499 7A       		.byte	0x7a
 4028 149a 00       		.sleb128 0
 4029 149b 29       		.uleb128 0x29
 4030 149c 01       		.uleb128 0x1
 4031 149d 52       		.byte	0x52
 4032 149e 02       		.uleb128 0x2
 4033 149f 77       		.byte	0x77
 4034 14a0 00       		.sleb128 0
 4035 14a1 00       		.byte	0
 4036 14a2 2C       		.uleb128 0x2c
 4037 14a3 64000000 		.4byte	.LVL54
 4038 14a7 A41B0000 		.4byte	0x1ba4
 4039 14ab D8140000 		.4byte	0x14d8
 4040 14af 29       		.uleb128 0x29
 4041 14b0 01       		.uleb128 0x1
 4042 14b1 50       		.byte	0x50
 4043 14b2 08       		.uleb128 0x8
 4044 14b3 7B       		.byte	0x7b
 4045 14b4 00       		.sleb128 0
 4046 14b5 76       		.byte	0x76
 4047 14b6 00       		.sleb128 0
 4048 14b7 22       		.byte	0x22
 4049 14b8 77       		.byte	0x77
 4050 14b9 00       		.sleb128 0
 4051 14ba 22       		.byte	0x22
 4052 14bb 29       		.uleb128 0x29
 4053 14bc 01       		.uleb128 0x1
 4054 14bd 51       		.byte	0x51
 4055 14be 0A       		.uleb128 0xa
 4056 14bf 74       		.byte	0x74
 4057 14c0 00       		.sleb128 0
 4058 14c1 76       		.byte	0x76
 4059 14c2 00       		.sleb128 0
 4060 14c3 22       		.byte	0x22
 4061 14c4 77       		.byte	0x77
ARM GAS  /tmp/ccfM1LZ3.s 			page 93


 4062 14c5 00       		.sleb128 0
 4063 14c6 22       		.byte	0x22
 4064 14c7 23       		.byte	0x23
 4065 14c8 04       		.uleb128 0x4
 4066 14c9 29       		.uleb128 0x29
 4067 14ca 01       		.uleb128 0x1
 4068 14cb 52       		.byte	0x52
 4069 14cc 0A       		.uleb128 0xa
 4070 14cd 7D       		.byte	0x7d
 4071 14ce 00       		.sleb128 0
 4072 14cf 06       		.byte	0x6
 4073 14d0 77       		.byte	0x77
 4074 14d1 00       		.sleb128 0
 4075 14d2 1C       		.byte	0x1c
 4076 14d3 0A       		.byte	0xa
 4077 14d4 FFFF     		.2byte	0xffff
 4078 14d6 1A       		.byte	0x1a
 4079 14d7 00       		.byte	0
 4080 14d8 2C       		.uleb128 0x2c
 4081 14d9 80000000 		.4byte	.LVL56
 4082 14dd 991B0000 		.4byte	0x1b99
 4083 14e1 FA140000 		.4byte	0x14fa
 4084 14e5 29       		.uleb128 0x29
 4085 14e6 01       		.uleb128 0x1
 4086 14e7 50       		.byte	0x50
 4087 14e8 05       		.uleb128 0x5
 4088 14e9 0C       		.byte	0xc
 4089 14ea 000C0E40 		.4byte	0x400e0c00
 4090 14ee 29       		.uleb128 0x29
 4091 14ef 01       		.uleb128 0x1
 4092 14f0 51       		.byte	0x51
 4093 14f1 01       		.uleb128 0x1
 4094 14f2 33       		.byte	0x33
 4095 14f3 29       		.uleb128 0x29
 4096 14f4 01       		.uleb128 0x1
 4097 14f5 52       		.byte	0x52
 4098 14f6 02       		.uleb128 0x2
 4099 14f7 78       		.byte	0x78
 4100 14f8 00       		.sleb128 0
 4101 14f9 00       		.byte	0
 4102 14fa 2D       		.uleb128 0x2d
 4103 14fb A4000000 		.4byte	.LVL64
 4104 14ff 991B0000 		.4byte	0x1b99
 4105 1503 29       		.uleb128 0x29
 4106 1504 01       		.uleb128 0x1
 4107 1505 50       		.byte	0x50
 4108 1506 05       		.uleb128 0x5
 4109 1507 0C       		.byte	0xc
 4110 1508 000C0E40 		.4byte	0x400e0c00
 4111 150c 29       		.uleb128 0x29
 4112 150d 01       		.uleb128 0x1
 4113 150e 51       		.byte	0x51
 4114 150f 01       		.uleb128 0x1
 4115 1510 31       		.byte	0x31
 4116 1511 00       		.byte	0
 4117 1512 00       		.byte	0
 4118 1513 0D       		.uleb128 0xd
ARM GAS  /tmp/ccfM1LZ3.s 			page 94


 4119 1514 04       		.byte	0x4
 4120 1515 AA080000 		.4byte	0x8aa
 4121 1519 27       		.uleb128 0x27
 4122 151a CD070000 		.4byte	.LASF221
 4123 151e 01       		.byte	0x1
 4124 151f 4002     		.2byte	0x240
 4125 1521 D0080000 		.4byte	0x8d0
 4126 1525 00000000 		.4byte	.LFB175
 4127 1529 20000000 		.4byte	.LFE175-.LFB175
 4128 152d 01       		.uleb128 0x1
 4129 152e 9C       		.byte	0x9c
 4130 152f D3150000 		.4byte	0x15d3
 4131 1533 2A       		.uleb128 0x2a
 4132 1534 00090000 		.4byte	.LASF210
 4133 1538 01       		.byte	0x1
 4134 1539 4002     		.2byte	0x240
 4135 153b D0080000 		.4byte	0x8d0
 4136 153f E30C0000 		.4byte	.LLST21
 4137 1543 34       		.uleb128 0x34
 4138 1544 31040000 		.4byte	.LASF192
 4139 1548 01       		.byte	0x1
 4140 1549 4202     		.2byte	0x242
 4141 154b FF0E0000 		.4byte	0xeff
 4142 154f 000C0E40 		.4byte	0x400e0c00
 4143 1553 2B       		.uleb128 0x2b
 4144 1554 F4020000 		.4byte	.LASF214
 4145 1558 01       		.byte	0x1
 4146 1559 4302     		.2byte	0x243
 4147 155b B5080000 		.4byte	0x8b5
 4148 155f 140D0000 		.4byte	.LLST22
 4149 1563 35       		.uleb128 0x35
 4150 1564 1F1A0000 		.4byte	0x1a1f
 4151 1568 00000000 		.4byte	.LBB44
 4152 156c 04000000 		.4byte	.LBE44-.LBB44
 4153 1570 01       		.byte	0x1
 4154 1571 4502     		.2byte	0x245
 4155 1573 A9150000 		.4byte	0x15a9
 4156 1577 41       		.uleb128 0x41
 4157 1578 4C1A0000 		.4byte	0x1a4c
 4158 157c 41       		.uleb128 0x41
 4159 157d 411A0000 		.4byte	0x1a41
 4160 1581 41       		.uleb128 0x41
 4161 1582 361A0000 		.4byte	0x1a36
 4162 1586 41       		.uleb128 0x41
 4163 1587 2B1A0000 		.4byte	0x1a2b
 4164 158b 37       		.uleb128 0x37
 4165 158c 00000000 		.4byte	.LBB45
 4166 1590 04000000 		.4byte	.LBE45-.LBB45
 4167 1594 3C       		.uleb128 0x3c
 4168 1595 571A0000 		.4byte	0x1a57
 4169 1599 000C0E40 		.4byte	0x400e0c00
 4170 159d 3D       		.uleb128 0x3d
 4171 159e 621A0000 		.4byte	0x1a62
 4172 15a2 3D       		.uleb128 0x3d
 4173 15a3 6D1A0000 		.4byte	0x1a6d
 4174 15a7 00       		.byte	0
 4175 15a8 00       		.byte	0
ARM GAS  /tmp/ccfM1LZ3.s 			page 95


 4176 15a9 2D       		.uleb128 0x2d
 4177 15aa 12000000 		.4byte	.LVL47
 4178 15ae 991B0000 		.4byte	0x1b99
 4179 15b2 29       		.uleb128 0x29
 4180 15b3 01       		.uleb128 0x1
 4181 15b4 50       		.byte	0x50
 4182 15b5 05       		.uleb128 0x5
 4183 15b6 0C       		.byte	0xc
 4184 15b7 000C0E40 		.4byte	0x400e0c00
 4185 15bb 29       		.uleb128 0x29
 4186 15bc 01       		.uleb128 0x1
 4187 15bd 51       		.byte	0x51
 4188 15be 01       		.uleb128 0x1
 4189 15bf 41       		.byte	0x41
 4190 15c0 29       		.uleb128 0x29
 4191 15c1 01       		.uleb128 0x1
 4192 15c2 52       		.byte	0x52
 4193 15c3 0D       		.uleb128 0xd
 4194 15c4 F3       		.byte	0xf3
 4195 15c5 01       		.uleb128 0x1
 4196 15c6 50       		.byte	0x50
 4197 15c7 40       		.byte	0x40
 4198 15c8 42       		.byte	0x42
 4199 15c9 24       		.byte	0x24
 4200 15ca 1C       		.byte	0x1c
 4201 15cb 09       		.byte	0x9
 4202 15cc EB       		.byte	0xeb
 4203 15cd 24       		.byte	0x24
 4204 15ce 09       		.byte	0x9
 4205 15cf F4       		.byte	0xf4
 4206 15d0 25       		.byte	0x25
 4207 15d1 00       		.byte	0
 4208 15d2 00       		.byte	0
 4209 15d3 27       		.uleb128 0x27
 4210 15d4 D3000000 		.4byte	.LASF222
 4211 15d8 01       		.byte	0x1
 4212 15d9 1F02     		.2byte	0x21f
 4213 15db D0080000 		.4byte	0x8d0
 4214 15df 00000000 		.4byte	.LFB174
 4215 15e3 38000000 		.4byte	.LFE174-.LFB174
 4216 15e7 01       		.uleb128 0x1
 4217 15e8 9C       		.byte	0x9c
 4218 15e9 8C160000 		.4byte	0x168c
 4219 15ed 2A       		.uleb128 0x2a
 4220 15ee 00090000 		.4byte	.LASF210
 4221 15f2 01       		.byte	0x1
 4222 15f3 1F02     		.2byte	0x21f
 4223 15f5 D0080000 		.4byte	0x8d0
 4224 15f9 510D0000 		.4byte	.LLST18
 4225 15fd 2A       		.uleb128 0x2a
 4226 15fe 1E070000 		.4byte	.LASF223
 4227 1602 01       		.byte	0x1
 4228 1603 1F02     		.2byte	0x21f
 4229 1605 AA080000 		.4byte	0x8aa
 4230 1609 B40D0000 		.4byte	.LLST19
 4231 160d 34       		.uleb128 0x34
 4232 160e 31040000 		.4byte	.LASF192
ARM GAS  /tmp/ccfM1LZ3.s 			page 96


 4233 1612 01       		.byte	0x1
 4234 1613 2102     		.2byte	0x221
 4235 1615 FF0E0000 		.4byte	0xeff
 4236 1619 000C0E40 		.4byte	0x400e0c00
 4237 161d 2B       		.uleb128 0x2b
 4238 161e F4020000 		.4byte	.LASF214
 4239 1622 01       		.byte	0x1
 4240 1623 2202     		.2byte	0x222
 4241 1625 B5080000 		.4byte	0x8b5
 4242 1629 D50D0000 		.4byte	.LLST20
 4243 162d 35       		.uleb128 0x35
 4244 162e 1F1A0000 		.4byte	0x1a1f
 4245 1632 14000000 		.4byte	.LBB42
 4246 1636 06000000 		.4byte	.LBE42-.LBB42
 4247 163a 01       		.byte	0x1
 4248 163b 2C02     		.2byte	0x22c
 4249 163d 73160000 		.4byte	0x1673
 4250 1641 41       		.uleb128 0x41
 4251 1642 4C1A0000 		.4byte	0x1a4c
 4252 1646 41       		.uleb128 0x41
 4253 1647 411A0000 		.4byte	0x1a41
 4254 164b 41       		.uleb128 0x41
 4255 164c 361A0000 		.4byte	0x1a36
 4256 1650 41       		.uleb128 0x41
 4257 1651 2B1A0000 		.4byte	0x1a2b
 4258 1655 37       		.uleb128 0x37
 4259 1656 14000000 		.4byte	.LBB43
 4260 165a 06000000 		.4byte	.LBE43-.LBB43
 4261 165e 3C       		.uleb128 0x3c
 4262 165f 571A0000 		.4byte	0x1a57
 4263 1663 000C0E40 		.4byte	0x400e0c00
 4264 1667 3D       		.uleb128 0x3d
 4265 1668 621A0000 		.4byte	0x1a62
 4266 166c 3D       		.uleb128 0x3d
 4267 166d 6D1A0000 		.4byte	0x1a6d
 4268 1671 00       		.byte	0
 4269 1672 00       		.byte	0
 4270 1673 2D       		.uleb128 0x2d
 4271 1674 28000000 		.4byte	.LVL43
 4272 1678 991B0000 		.4byte	0x1b99
 4273 167c 29       		.uleb128 0x29
 4274 167d 01       		.uleb128 0x1
 4275 167e 50       		.byte	0x50
 4276 167f 05       		.uleb128 0x5
 4277 1680 0C       		.byte	0xc
 4278 1681 000C0E40 		.4byte	0x400e0c00
 4279 1685 29       		.uleb128 0x29
 4280 1686 01       		.uleb128 0x1
 4281 1687 51       		.byte	0x51
 4282 1688 01       		.uleb128 0x1
 4283 1689 37       		.byte	0x37
 4284 168a 00       		.byte	0
 4285 168b 00       		.byte	0
 4286 168c 27       		.uleb128 0x27
 4287 168d CF030000 		.4byte	.LASF224
 4288 1691 01       		.byte	0x1
 4289 1692 EF01     		.2byte	0x1ef
ARM GAS  /tmp/ccfM1LZ3.s 			page 97


 4290 1694 D0080000 		.4byte	0x8d0
 4291 1698 00000000 		.4byte	.LFB173
 4292 169c 1C000000 		.4byte	.LFE173-.LFB173
 4293 16a0 01       		.uleb128 0x1
 4294 16a1 9C       		.byte	0x9c
 4295 16a2 E4160000 		.4byte	0x16e4
 4296 16a6 2A       		.uleb128 0x2a
 4297 16a7 00090000 		.4byte	.LASF210
 4298 16ab 01       		.byte	0x1
 4299 16ac EF01     		.2byte	0x1ef
 4300 16ae D0080000 		.4byte	0x8d0
 4301 16b2 120E0000 		.4byte	.LLST17
 4302 16b6 34       		.uleb128 0x34
 4303 16b7 31040000 		.4byte	.LASF192
 4304 16bb 01       		.byte	0x1
 4305 16bc F101     		.2byte	0x1f1
 4306 16be FF0E0000 		.4byte	0xeff
 4307 16c2 000C0E40 		.4byte	0x400e0c00
 4308 16c6 2D       		.uleb128 0x2d
 4309 16c7 0C000000 		.4byte	.LVL34
 4310 16cb 991B0000 		.4byte	0x1b99
 4311 16cf 29       		.uleb128 0x29
 4312 16d0 01       		.uleb128 0x1
 4313 16d1 50       		.byte	0x50
 4314 16d2 05       		.uleb128 0x5
 4315 16d3 0C       		.byte	0xc
 4316 16d4 000C0E40 		.4byte	0x400e0c00
 4317 16d8 29       		.uleb128 0x29
 4318 16d9 01       		.uleb128 0x1
 4319 16da 51       		.byte	0x51
 4320 16db 01       		.uleb128 0x1
 4321 16dc 35       		.byte	0x35
 4322 16dd 29       		.uleb128 0x29
 4323 16de 01       		.uleb128 0x1
 4324 16df 52       		.byte	0x52
 4325 16e0 01       		.uleb128 0x1
 4326 16e1 30       		.byte	0x30
 4327 16e2 00       		.byte	0
 4328 16e3 00       		.byte	0
 4329 16e4 27       		.uleb128 0x27
 4330 16e5 E9080000 		.4byte	.LASF225
 4331 16e9 01       		.byte	0x1
 4332 16ea DF01     		.2byte	0x1df
 4333 16ec D0080000 		.4byte	0x8d0
 4334 16f0 00000000 		.4byte	.LFB172
 4335 16f4 04000000 		.4byte	.LFE172-.LFB172
 4336 16f8 01       		.uleb128 0x1
 4337 16f9 9C       		.byte	0x9c
 4338 16fa 0F170000 		.4byte	0x170f
 4339 16fe 2A       		.uleb128 0x2a
 4340 16ff 15090000 		.4byte	.LASF226
 4341 1703 01       		.byte	0x1
 4342 1704 DF01     		.2byte	0x1df
 4343 1706 0F170000 		.4byte	0x170f
 4344 170a 330E0000 		.4byte	.LLST16
 4345 170e 00       		.byte	0
 4346 170f 0D       		.uleb128 0xd
ARM GAS  /tmp/ccfM1LZ3.s 			page 98


 4347 1710 04       		.byte	0x4
 4348 1711 E5080000 		.4byte	0x8e5
 4349 1715 27       		.uleb128 0x27
 4350 1716 E4000000 		.4byte	.LASF227
 4351 171a 01       		.byte	0x1
 4352 171b D001     		.2byte	0x1d0
 4353 171d D0080000 		.4byte	0x8d0
 4354 1721 00000000 		.4byte	.LFB171
 4355 1725 0A000000 		.4byte	.LFE171-.LFB171
 4356 1729 01       		.uleb128 0x1
 4357 172a 9C       		.byte	0x9c
 4358 172b 40170000 		.4byte	0x1740
 4359 172f 2A       		.uleb128 0x2a
 4360 1730 15090000 		.4byte	.LASF226
 4361 1734 01       		.byte	0x1
 4362 1735 D001     		.2byte	0x1d0
 4363 1737 0F170000 		.4byte	0x170f
 4364 173b 540E0000 		.4byte	.LLST15
 4365 173f 00       		.byte	0
 4366 1740 27       		.uleb128 0x27
 4367 1741 BA0A0000 		.4byte	.LASF228
 4368 1745 01       		.byte	0x1
 4369 1746 C101     		.2byte	0x1c1
 4370 1748 D0080000 		.4byte	0x8d0
 4371 174c 00000000 		.4byte	.LFB170
 4372 1750 0A000000 		.4byte	.LFE170-.LFB170
 4373 1754 01       		.uleb128 0x1
 4374 1755 9C       		.byte	0x9c
 4375 1756 6B170000 		.4byte	0x176b
 4376 175a 2A       		.uleb128 0x2a
 4377 175b 15090000 		.4byte	.LASF226
 4378 175f 01       		.byte	0x1
 4379 1760 C101     		.2byte	0x1c1
 4380 1762 0F170000 		.4byte	0x170f
 4381 1766 750E0000 		.4byte	.LLST14
 4382 176a 00       		.byte	0
 4383 176b 27       		.uleb128 0x27
 4384 176c 2B010000 		.4byte	.LASF229
 4385 1770 01       		.byte	0x1
 4386 1771 9C01     		.2byte	0x19c
 4387 1773 D0080000 		.4byte	0x8d0
 4388 1777 00000000 		.4byte	.LFB169
 4389 177b 38000000 		.4byte	.LFE169-.LFB169
 4390 177f 01       		.uleb128 0x1
 4391 1780 9C       		.byte	0x9c
 4392 1781 17180000 		.4byte	0x1817
 4393 1785 2A       		.uleb128 0x2a
 4394 1786 00090000 		.4byte	.LASF210
 4395 178a 01       		.byte	0x1
 4396 178b 9C01     		.2byte	0x19c
 4397 178d D0080000 		.4byte	0x8d0
 4398 1791 960E0000 		.4byte	.LLST8
 4399 1795 2A       		.uleb128 0x2a
 4400 1796 15090000 		.4byte	.LASF226
 4401 179a 01       		.byte	0x1
 4402 179b 9D01     		.2byte	0x19d
 4403 179d CE0B0000 		.4byte	0xbce
ARM GAS  /tmp/ccfM1LZ3.s 			page 99


 4404 17a1 B70E0000 		.4byte	.LLST9
 4405 17a5 2A       		.uleb128 0x2a
 4406 17a6 76010000 		.4byte	.LASF175
 4407 17aa 01       		.byte	0x1
 4408 17ab 9D01     		.2byte	0x19d
 4409 17ad D0080000 		.4byte	0x8d0
 4410 17b1 E30E0000 		.4byte	.LLST10
 4411 17b5 2B       		.uleb128 0x2b
 4412 17b6 31040000 		.4byte	.LASF192
 4413 17ba 01       		.byte	0x1
 4414 17bb 9F01     		.2byte	0x19f
 4415 17bd FF0E0000 		.4byte	0xeff
 4416 17c1 0F0F0000 		.4byte	.LLST11
 4417 17c5 2B       		.uleb128 0x2b
 4418 17c6 2A090000 		.4byte	.LASF230
 4419 17ca 01       		.byte	0x1
 4420 17cb A001     		.2byte	0x1a0
 4421 17cd D0080000 		.4byte	0x8d0
 4422 17d1 270F0000 		.4byte	.LLST12
 4423 17d5 2B       		.uleb128 0x2b
 4424 17d6 83000000 		.4byte	.LASF231
 4425 17da 01       		.byte	0x1
 4426 17db A101     		.2byte	0x1a1
 4427 17dd D0080000 		.4byte	0x8d0
 4428 17e1 450F0000 		.4byte	.LLST13
 4429 17e5 2C       		.uleb128 0x2c
 4430 17e6 10000000 		.4byte	.LVL17
 4431 17ea 991B0000 		.4byte	0x1b99
 4432 17ee 06180000 		.4byte	0x1806
 4433 17f2 29       		.uleb128 0x29
 4434 17f3 01       		.uleb128 0x1
 4435 17f4 50       		.byte	0x50
 4436 17f5 05       		.uleb128 0x5
 4437 17f6 0C       		.byte	0xc
 4438 17f7 000C0E40 		.4byte	0x400e0c00
 4439 17fb 29       		.uleb128 0x29
 4440 17fc 01       		.uleb128 0x1
 4441 17fd 51       		.byte	0x51
 4442 17fe 01       		.uleb128 0x1
 4443 17ff 30       		.byte	0x30
 4444 1800 29       		.uleb128 0x29
 4445 1801 01       		.uleb128 0x1
 4446 1802 52       		.byte	0x52
 4447 1803 01       		.uleb128 0x1
 4448 1804 30       		.byte	0x30
 4449 1805 00       		.byte	0
 4450 1806 2D       		.uleb128 0x2d
 4451 1807 26000000 		.4byte	.LVL21
 4452 180b B81B0000 		.4byte	0x1bb8
 4453 180f 29       		.uleb128 0x29
 4454 1810 01       		.uleb128 0x1
 4455 1811 50       		.byte	0x50
 4456 1812 02       		.uleb128 0x2
 4457 1813 77       		.byte	0x77
 4458 1814 00       		.sleb128 0
 4459 1815 00       		.byte	0
 4460 1816 00       		.byte	0
ARM GAS  /tmp/ccfM1LZ3.s 			page 100


 4461 1817 27       		.uleb128 0x27
 4462 1818 39050000 		.4byte	.LASF232
 4463 181c 01       		.byte	0x1
 4464 181d 8B01     		.2byte	0x18b
 4465 181f D0080000 		.4byte	0x8d0
 4466 1823 00000000 		.4byte	.LFB168
 4467 1827 0C000000 		.4byte	.LFE168-.LFB168
 4468 182b 01       		.uleb128 0x1
 4469 182c 9C       		.byte	0x9c
 4470 182d 65180000 		.4byte	0x1865
 4471 1831 2A       		.uleb128 0x2a
 4472 1832 00090000 		.4byte	.LASF210
 4473 1836 01       		.byte	0x1
 4474 1837 8B01     		.2byte	0x18b
 4475 1839 D0080000 		.4byte	0x8d0
 4476 183d 580F0000 		.4byte	.LLST7
 4477 1841 34       		.uleb128 0x34
 4478 1842 31040000 		.4byte	.LASF192
 4479 1846 01       		.byte	0x1
 4480 1847 8D01     		.2byte	0x18d
 4481 1849 FF0E0000 		.4byte	0xeff
 4482 184d 000C0E40 		.4byte	0x400e0c00
 4483 1851 28       		.uleb128 0x28
 4484 1852 06000000 		.4byte	.LVL12
 4485 1856 C31B0000 		.4byte	0x1bc3
 4486 185a 29       		.uleb128 0x29
 4487 185b 01       		.uleb128 0x1
 4488 185c 50       		.byte	0x50
 4489 185d 05       		.uleb128 0x5
 4490 185e 0C       		.byte	0xc
 4491 185f 000C0E40 		.4byte	0x400e0c00
 4492 1863 00       		.byte	0
 4493 1864 00       		.byte	0
 4494 1865 27       		.uleb128 0x27
 4495 1866 54030000 		.4byte	.LASF233
 4496 186a 01       		.byte	0x1
 4497 186b 5E01     		.2byte	0x15e
 4498 186d D0080000 		.4byte	0x8d0
 4499 1871 00000000 		.4byte	.LFB167
 4500 1875 14000000 		.4byte	.LFE167-.LFB167
 4501 1879 01       		.uleb128 0x1
 4502 187a 9C       		.byte	0x9c
 4503 187b C4180000 		.4byte	0x18c4
 4504 187f 2A       		.uleb128 0x2a
 4505 1880 00090000 		.4byte	.LASF210
 4506 1884 01       		.byte	0x1
 4507 1885 5E01     		.2byte	0x15e
 4508 1887 D0080000 		.4byte	0x8d0
 4509 188b 790F0000 		.4byte	.LLST5
 4510 188f 2B       		.uleb128 0x2b
 4511 1890 31040000 		.4byte	.LASF192
 4512 1894 01       		.byte	0x1
 4513 1895 6001     		.2byte	0x160
 4514 1897 FF0E0000 		.4byte	0xeff
 4515 189b 9A0F0000 		.4byte	.LLST6
 4516 189f 31       		.uleb128 0x31
 4517 18a0 10050000 		.4byte	.LASF234
ARM GAS  /tmp/ccfM1LZ3.s 			page 101


 4518 18a4 01       		.byte	0x1
 4519 18a5 6101     		.2byte	0x161
 4520 18a7 D0080000 		.4byte	0x8d0
 4521 18ab 2D       		.uleb128 0x2d
 4522 18ac 0A000000 		.4byte	.LVL9
 4523 18b0 CE1B0000 		.4byte	0x1bce
 4524 18b4 29       		.uleb128 0x29
 4525 18b5 01       		.uleb128 0x1
 4526 18b6 50       		.byte	0x50
 4527 18b7 05       		.uleb128 0x5
 4528 18b8 0C       		.byte	0xc
 4529 18b9 000C0E40 		.4byte	0x400e0c00
 4530 18bd 29       		.uleb128 0x29
 4531 18be 01       		.uleb128 0x1
 4532 18bf 51       		.byte	0x51
 4533 18c0 01       		.uleb128 0x1
 4534 18c1 35       		.byte	0x35
 4535 18c2 00       		.byte	0
 4536 18c3 00       		.byte	0
 4537 18c4 27       		.uleb128 0x27
 4538 18c5 5B060000 		.4byte	.LASF235
 4539 18c9 01       		.byte	0x1
 4540 18ca 4C01     		.2byte	0x14c
 4541 18cc D0080000 		.4byte	0x8d0
 4542 18d0 00000000 		.4byte	.LFB166
 4543 18d4 10000000 		.4byte	.LFE166-.LFB166
 4544 18d8 01       		.uleb128 0x1
 4545 18d9 9C       		.byte	0x9c
 4546 18da 29190000 		.4byte	0x1929
 4547 18de 2A       		.uleb128 0x2a
 4548 18df 00090000 		.4byte	.LASF210
 4549 18e3 01       		.byte	0x1
 4550 18e4 4C01     		.2byte	0x14c
 4551 18e6 D0080000 		.4byte	0x8d0
 4552 18ea B20F0000 		.4byte	.LLST2
 4553 18ee 2A       		.uleb128 0x2a
 4554 18ef 8F0A0000 		.4byte	.LASF236
 4555 18f3 01       		.byte	0x1
 4556 18f4 4C01     		.2byte	0x14c
 4557 18f6 D0080000 		.4byte	0x8d0
 4558 18fa D30F0000 		.4byte	.LLST3
 4559 18fe 2B       		.uleb128 0x2b
 4560 18ff 31040000 		.4byte	.LASF192
 4561 1903 01       		.byte	0x1
 4562 1904 4E01     		.2byte	0x14e
 4563 1906 FF0E0000 		.4byte	0xeff
 4564 190a F40F0000 		.4byte	.LLST4
 4565 190e 2D       		.uleb128 0x2d
 4566 190f 08000000 		.4byte	.LVL6
 4567 1913 CE1B0000 		.4byte	0x1bce
 4568 1917 29       		.uleb128 0x29
 4569 1918 01       		.uleb128 0x1
 4570 1919 50       		.byte	0x50
 4571 191a 05       		.uleb128 0x5
 4572 191b 0C       		.byte	0xc
 4573 191c 000C0E40 		.4byte	0x400e0c00
 4574 1920 29       		.uleb128 0x29
ARM GAS  /tmp/ccfM1LZ3.s 			page 102


 4575 1921 01       		.uleb128 0x1
 4576 1922 51       		.byte	0x51
 4577 1923 03       		.uleb128 0x3
 4578 1924 F3       		.byte	0xf3
 4579 1925 01       		.uleb128 0x1
 4580 1926 51       		.byte	0x51
 4581 1927 00       		.byte	0
 4582 1928 00       		.byte	0
 4583 1929 27       		.uleb128 0x27
 4584 192a 5C0A0000 		.4byte	.LASF237
 4585 192e 01       		.byte	0x1
 4586 192f 3901     		.2byte	0x139
 4587 1931 D0080000 		.4byte	0x8d0
 4588 1935 00000000 		.4byte	.LFB165
 4589 1939 14000000 		.4byte	.LFE165-.LFB165
 4590 193d 01       		.uleb128 0x1
 4591 193e 9C       		.byte	0x9c
 4592 193f 85190000 		.4byte	0x1985
 4593 1943 2A       		.uleb128 0x2a
 4594 1944 7A070000 		.4byte	.LASF238
 4595 1948 01       		.byte	0x1
 4596 1949 3901     		.2byte	0x139
 4597 194b D0080000 		.4byte	0x8d0
 4598 194f 0C100000 		.4byte	.LLST0
 4599 1953 2A       		.uleb128 0x2a
 4600 1954 8F0A0000 		.4byte	.LASF236
 4601 1958 01       		.byte	0x1
 4602 1959 3901     		.2byte	0x139
 4603 195b D0080000 		.4byte	0x8d0
 4604 195f 38100000 		.4byte	.LLST1
 4605 1963 2D       		.uleb128 0x2d
 4606 1964 0C000000 		.4byte	.LVL3
 4607 1968 D91B0000 		.4byte	0x1bd9
 4608 196c 29       		.uleb128 0x29
 4609 196d 01       		.uleb128 0x1
 4610 196e 50       		.byte	0x50
 4611 196f 05       		.uleb128 0x5
 4612 1970 0C       		.byte	0xc
 4613 1971 000C0E40 		.4byte	0x400e0c00
 4614 1975 29       		.uleb128 0x29
 4615 1976 01       		.uleb128 0x1
 4616 1977 51       		.byte	0x51
 4617 1978 03       		.uleb128 0x3
 4618 1979 F3       		.byte	0xf3
 4619 197a 01       		.uleb128 0x1
 4620 197b 50       		.byte	0x50
 4621 197c 29       		.uleb128 0x29
 4622 197d 01       		.uleb128 0x1
 4623 197e 52       		.byte	0x52
 4624 197f 03       		.uleb128 0x3
 4625 1980 F3       		.byte	0xf3
 4626 1981 01       		.uleb128 0x1
 4627 1982 51       		.byte	0x51
 4628 1983 00       		.byte	0
 4629 1984 00       		.byte	0
 4630 1985 42       		.uleb128 0x42
 4631 1986 FC010000 		.4byte	.LASF239
ARM GAS  /tmp/ccfM1LZ3.s 			page 103


 4632 198a 01       		.byte	0x1
 4633 198b 1F01     		.2byte	0x11f
 4634 198d 01       		.byte	0x1
 4635 198e DB190000 		.4byte	0x19db
 4636 1992 30       		.uleb128 0x30
 4637 1993 35070000 		.4byte	.LASF190
 4638 1997 01       		.byte	0x1
 4639 1998 1F01     		.2byte	0x11f
 4640 199a D0080000 		.4byte	0x8d0
 4641 199e 30       		.uleb128 0x30
 4642 199f 880A0000 		.4byte	.LASF191
 4643 19a3 01       		.byte	0x1
 4644 19a4 1F01     		.2byte	0x11f
 4645 19a6 D0080000 		.4byte	0x8d0
 4646 19aa 30       		.uleb128 0x30
 4647 19ab 99090000 		.4byte	.LASF204
 4648 19af 01       		.byte	0x1
 4649 19b0 2001     		.2byte	0x120
 4650 19b2 CE0B0000 		.4byte	0xbce
 4651 19b6 30       		.uleb128 0x30
 4652 19b7 77080000 		.4byte	.LASF205
 4653 19bb 01       		.byte	0x1
 4654 19bc 2001     		.2byte	0x120
 4655 19be CE0B0000 		.4byte	0xbce
 4656 19c2 31       		.uleb128 0x31
 4657 19c3 A50C0000 		.4byte	.LASF206
 4658 19c7 01       		.byte	0x1
 4659 19c8 2201     		.2byte	0x122
 4660 19ca D0080000 		.4byte	0x8d0
 4661 19ce 31       		.uleb128 0x31
 4662 19cf AA090000 		.4byte	.LASF207
 4663 19d3 01       		.byte	0x1
 4664 19d4 2201     		.2byte	0x122
 4665 19d6 D0080000 		.4byte	0x8d0
 4666 19da 00       		.byte	0
 4667 19db 43       		.uleb128 0x43
 4668 19dc BF030000 		.4byte	.LASF240
 4669 19e0 01       		.byte	0x1
 4670 19e1 EC       		.byte	0xec
 4671 19e2 01       		.byte	0x1
 4672 19e3 1F1A0000 		.4byte	0x1a1f
 4673 19e7 44       		.uleb128 0x44
 4674 19e8 31040000 		.4byte	.LASF192
 4675 19ec 01       		.byte	0x1
 4676 19ed EC       		.byte	0xec
 4677 19ee FF0E0000 		.4byte	0xeff
 4678 19f2 44       		.uleb128 0x44
 4679 19f3 F4020000 		.4byte	.LASF214
 4680 19f7 01       		.byte	0x1
 4681 19f8 EC       		.byte	0xec
 4682 19f9 B5080000 		.4byte	0x8b5
 4683 19fd 44       		.uleb128 0x44
 4684 19fe 52020000 		.4byte	.LASF215
 4685 1a02 01       		.byte	0x1
 4686 1a03 EC       		.byte	0xec
 4687 1a04 B5080000 		.4byte	0x8b5
 4688 1a08 44       		.uleb128 0x44
ARM GAS  /tmp/ccfM1LZ3.s 			page 104


 4689 1a09 730C0000 		.4byte	.LASF241
 4690 1a0d 01       		.byte	0x1
 4691 1a0e ED       		.byte	0xed
 4692 1a0f CE0B0000 		.4byte	0xbce
 4693 1a13 45       		.uleb128 0x45
 4694 1a14 56040000 		.4byte	.LASF242
 4695 1a18 01       		.byte	0x1
 4696 1a19 EF       		.byte	0xef
 4697 1a1a D0080000 		.4byte	0x8d0
 4698 1a1e 00       		.byte	0
 4699 1a1f 43       		.uleb128 0x43
 4700 1a20 ED0C0000 		.4byte	.LASF243
 4701 1a24 01       		.byte	0x1
 4702 1a25 A4       		.byte	0xa4
 4703 1a26 01       		.byte	0x1
 4704 1a27 791A0000 		.4byte	0x1a79
 4705 1a2b 44       		.uleb128 0x44
 4706 1a2c A3070000 		.4byte	.LASF244
 4707 1a30 01       		.byte	0x1
 4708 1a31 A4       		.byte	0xa4
 4709 1a32 791A0000 		.4byte	0x1a79
 4710 1a36 44       		.uleb128 0x44
 4711 1a37 56040000 		.4byte	.LASF242
 4712 1a3b 01       		.byte	0x1
 4713 1a3c A4       		.byte	0xa4
 4714 1a3d D0080000 		.4byte	0x8d0
 4715 1a41 44       		.uleb128 0x44
 4716 1a42 960A0000 		.4byte	.LASF245
 4717 1a46 01       		.byte	0x1
 4718 1a47 A5       		.byte	0xa5
 4719 1a48 7F1A0000 		.4byte	0x1a7f
 4720 1a4c 44       		.uleb128 0x44
 4721 1a4d 9E080000 		.4byte	.LASF246
 4722 1a51 01       		.byte	0x1
 4723 1a52 A5       		.byte	0xa5
 4724 1a53 7F1A0000 		.4byte	0x1a7f
 4725 1a57 45       		.uleb128 0x45
 4726 1a58 31040000 		.4byte	.LASF192
 4727 1a5c 01       		.byte	0x1
 4728 1a5d A7       		.byte	0xa7
 4729 1a5e FF0E0000 		.4byte	0xeff
 4730 1a62 45       		.uleb128 0x45
 4731 1a63 F4020000 		.4byte	.LASF214
 4732 1a67 01       		.byte	0x1
 4733 1a68 A8       		.byte	0xa8
 4734 1a69 B5080000 		.4byte	0x8b5
 4735 1a6d 45       		.uleb128 0x45
 4736 1a6e 52020000 		.4byte	.LASF215
 4737 1a72 01       		.byte	0x1
 4738 1a73 A9       		.byte	0xa9
 4739 1a74 B5080000 		.4byte	0x8b5
 4740 1a78 00       		.byte	0
 4741 1a79 0D       		.uleb128 0xd
 4742 1a7a 04       		.byte	0x4
 4743 1a7b FF0E0000 		.4byte	0xeff
 4744 1a7f 0D       		.uleb128 0xd
 4745 1a80 04       		.byte	0x4
ARM GAS  /tmp/ccfM1LZ3.s 			page 105


 4746 1a81 B5080000 		.4byte	0x8b5
 4747 1a85 46       		.uleb128 0x46
 4748 1a86 AD030000 		.4byte	.LASF247
 4749 1a8a 10       		.byte	0x10
 4750 1a8b 8401     		.2byte	0x184
 4751 1a8d D0080000 		.4byte	0x8d0
 4752 1a91 03       		.byte	0x3
 4753 1a92 46       		.uleb128 0x46
 4754 1a93 FD040000 		.4byte	.LASF248
 4755 1a97 10       		.byte	0x10
 4756 1a98 4E01     		.2byte	0x14e
 4757 1a9a D0080000 		.4byte	0x8d0
 4758 1a9e 03       		.byte	0x3
 4759 1a9f 47       		.uleb128 0x47
 4760 1aa0 86080000 		.4byte	.LASF259
 4761 1aa4 11       		.byte	0x11
 4762 1aa5 CE       		.byte	0xce
 4763 1aa6 D0080000 		.4byte	0x8d0
 4764 1aaa 03       		.byte	0x3
 4765 1aab BB1A0000 		.4byte	0x1abb
 4766 1aaf 44       		.uleb128 0x44
 4767 1ab0 5D000000 		.4byte	.LASF249
 4768 1ab4 11       		.byte	0x11
 4769 1ab5 CE       		.byte	0xce
 4770 1ab6 D0080000 		.4byte	0x8d0
 4771 1aba 00       		.byte	0
 4772 1abb 48       		.uleb128 0x48
 4773 1abc 210D0000 		.4byte	0xd21
 4774 1ac0 00000000 		.4byte	.LFB182
 4775 1ac4 38000000 		.4byte	.LFE182-.LFB182
 4776 1ac8 01       		.uleb128 0x1
 4777 1ac9 9C       		.byte	0x9c
 4778 1aca 371B0000 		.4byte	0x1b37
 4779 1ace 36       		.uleb128 0x36
 4780 1acf 320D0000 		.4byte	0xd32
 4781 1ad3 64100000 		.4byte	.LLST89
 4782 1ad7 3D       		.uleb128 0x3d
 4783 1ad8 3E0D0000 		.4byte	0xd3e
 4784 1adc 49       		.uleb128 0x49
 4785 1add 1C000000 		.4byte	.LBB86
 4786 1ae1 1C000000 		.4byte	.LBE86-.LBB86
 4787 1ae5 191B0000 		.4byte	0x1b19
 4788 1ae9 36       		.uleb128 0x36
 4789 1aea 320D0000 		.4byte	0xd32
 4790 1aee A9100000 		.4byte	.LLST90
 4791 1af2 37       		.uleb128 0x37
 4792 1af3 1C000000 		.4byte	.LBB87
 4793 1af7 1C000000 		.4byte	.LBE87-.LBB87
 4794 1afb 38       		.uleb128 0x38
 4795 1afc D71A0000 		.4byte	0x1ad7
 4796 1b00 CA100000 		.4byte	.LLST91
 4797 1b04 2D       		.uleb128 0x2d
 4798 1b05 22000000 		.4byte	.LVL133
 4799 1b09 B81B0000 		.4byte	0x1bb8
 4800 1b0d 29       		.uleb128 0x29
 4801 1b0e 01       		.uleb128 0x1
 4802 1b0f 50       		.byte	0x50
ARM GAS  /tmp/ccfM1LZ3.s 			page 106


 4803 1b10 05       		.uleb128 0x5
 4804 1b11 0C       		.byte	0xc
 4805 1b12 000C0E40 		.4byte	0x400e0c00
 4806 1b16 00       		.byte	0
 4807 1b17 00       		.byte	0
 4808 1b18 00       		.byte	0
 4809 1b19 2D       		.uleb128 0x2d
 4810 1b1a 16000000 		.4byte	.LVL131
 4811 1b1e 991B0000 		.4byte	0x1b99
 4812 1b22 29       		.uleb128 0x29
 4813 1b23 01       		.uleb128 0x1
 4814 1b24 50       		.byte	0x50
 4815 1b25 05       		.uleb128 0x5
 4816 1b26 0C       		.byte	0xc
 4817 1b27 000C0E40 		.4byte	0x400e0c00
 4818 1b2b 29       		.uleb128 0x29
 4819 1b2c 01       		.uleb128 0x1
 4820 1b2d 51       		.byte	0x51
 4821 1b2e 01       		.uleb128 0x1
 4822 1b2f 3D       		.byte	0x3d
 4823 1b30 29       		.uleb128 0x29
 4824 1b31 01       		.uleb128 0x1
 4825 1b32 52       		.byte	0x52
 4826 1b33 01       		.uleb128 0x1
 4827 1b34 30       		.byte	0x30
 4828 1b35 00       		.byte	0
 4829 1b36 00       		.byte	0
 4830 1b37 48       		.uleb128 0x48
 4831 1b38 A80D0000 		.4byte	0xda8
 4832 1b3c 00000000 		.4byte	.LFB180
 4833 1b40 2C000000 		.4byte	.LFE180-.LFB180
 4834 1b44 01       		.uleb128 0x1
 4835 1b45 9C       		.byte	0x9c
 4836 1b46 991B0000 		.4byte	0x1b99
 4837 1b4a 36       		.uleb128 0x36
 4838 1b4b B90D0000 		.4byte	0xdb9
 4839 1b4f DD100000 		.4byte	.LLST92
 4840 1b53 49       		.uleb128 0x49
 4841 1b54 14000000 		.4byte	.LBB90
 4842 1b58 10000000 		.4byte	.LBE90-.LBB90
 4843 1b5c 881B0000 		.4byte	0x1b88
 4844 1b60 36       		.uleb128 0x36
 4845 1b61 B90D0000 		.4byte	0xdb9
 4846 1b65 22110000 		.4byte	.LLST93
 4847 1b69 2D       		.uleb128 0x2d
 4848 1b6a 1E000000 		.4byte	.LVL141
 4849 1b6e 991B0000 		.4byte	0x1b99
 4850 1b72 29       		.uleb128 0x29
 4851 1b73 01       		.uleb128 0x1
 4852 1b74 50       		.byte	0x50
 4853 1b75 05       		.uleb128 0x5
 4854 1b76 0C       		.byte	0xc
 4855 1b77 000C0E40 		.4byte	0x400e0c00
 4856 1b7b 29       		.uleb128 0x29
 4857 1b7c 01       		.uleb128 0x1
 4858 1b7d 51       		.byte	0x51
 4859 1b7e 01       		.uleb128 0x1
ARM GAS  /tmp/ccfM1LZ3.s 			page 107


 4860 1b7f 3B       		.byte	0x3b
 4861 1b80 29       		.uleb128 0x29
 4862 1b81 01       		.uleb128 0x1
 4863 1b82 52       		.byte	0x52
 4864 1b83 02       		.uleb128 0x2
 4865 1b84 74       		.byte	0x74
 4866 1b85 00       		.sleb128 0
 4867 1b86 00       		.byte	0
 4868 1b87 00       		.byte	0
 4869 1b88 2D       		.uleb128 0x2d
 4870 1b89 10000000 		.4byte	.LVL139
 4871 1b8d 210D0000 		.4byte	0xd21
 4872 1b91 29       		.uleb128 0x29
 4873 1b92 01       		.uleb128 0x1
 4874 1b93 50       		.byte	0x50
 4875 1b94 02       		.uleb128 0x2
 4876 1b95 74       		.byte	0x74
 4877 1b96 00       		.sleb128 0
 4878 1b97 00       		.byte	0
 4879 1b98 00       		.byte	0
 4880 1b99 4A       		.uleb128 0x4a
 4881 1b9a E9040000 		.4byte	.LASF250
 4882 1b9e E9040000 		.4byte	.LASF250
 4883 1ba2 0D       		.byte	0xd
 4884 1ba3 86       		.byte	0x86
 4885 1ba4 4B       		.uleb128 0x4b
 4886 1ba5 630C0000 		.4byte	.LASF260
 4887 1ba9 630C0000 		.4byte	.LASF260
 4888 1bad 4A       		.uleb128 0x4a
 4889 1bae C4060000 		.4byte	.LASF251
 4890 1bb2 C4060000 		.4byte	.LASF251
 4891 1bb6 0D       		.byte	0xd
 4892 1bb7 8A       		.byte	0x8a
 4893 1bb8 4A       		.uleb128 0x4a
 4894 1bb9 0F060000 		.4byte	.LASF252
 4895 1bbd 0F060000 		.4byte	.LASF252
 4896 1bc1 0D       		.byte	0xd
 4897 1bc2 89       		.byte	0x89
 4898 1bc3 4A       		.uleb128 0x4a
 4899 1bc4 37040000 		.4byte	.LASF253
 4900 1bc8 37040000 		.4byte	.LASF253
 4901 1bcc 0D       		.byte	0xd
 4902 1bcd 85       		.byte	0x85
 4903 1bce 4A       		.uleb128 0x4a
 4904 1bcf 8A000000 		.4byte	.LASF254
 4905 1bd3 8A000000 		.4byte	.LASF254
 4906 1bd7 0D       		.byte	0xd
 4907 1bd8 84       		.byte	0x84
 4908 1bd9 4A       		.uleb128 0x4a
 4909 1bda 54000000 		.4byte	.LASF255
 4910 1bde 54000000 		.4byte	.LASF255
 4911 1be2 0D       		.byte	0xd
 4912 1be3 75       		.byte	0x75
 4913 1be4 00       		.byte	0
 4914              		.section	.debug_abbrev,"",%progbits
 4915              	.Ldebug_abbrev0:
 4916 0000 01       		.uleb128 0x1
ARM GAS  /tmp/ccfM1LZ3.s 			page 108


 4917 0001 11       		.uleb128 0x11
 4918 0002 01       		.byte	0x1
 4919 0003 25       		.uleb128 0x25
 4920 0004 0E       		.uleb128 0xe
 4921 0005 13       		.uleb128 0x13
 4922 0006 0B       		.uleb128 0xb
 4923 0007 03       		.uleb128 0x3
 4924 0008 0E       		.uleb128 0xe
 4925 0009 1B       		.uleb128 0x1b
 4926 000a 0E       		.uleb128 0xe
 4927 000b 55       		.uleb128 0x55
 4928 000c 17       		.uleb128 0x17
 4929 000d 11       		.uleb128 0x11
 4930 000e 01       		.uleb128 0x1
 4931 000f 10       		.uleb128 0x10
 4932 0010 17       		.uleb128 0x17
 4933 0011 00       		.byte	0
 4934 0012 00       		.byte	0
 4935 0013 02       		.uleb128 0x2
 4936 0014 24       		.uleb128 0x24
 4937 0015 00       		.byte	0
 4938 0016 0B       		.uleb128 0xb
 4939 0017 0B       		.uleb128 0xb
 4940 0018 3E       		.uleb128 0x3e
 4941 0019 0B       		.uleb128 0xb
 4942 001a 03       		.uleb128 0x3
 4943 001b 08       		.uleb128 0x8
 4944 001c 00       		.byte	0
 4945 001d 00       		.byte	0
 4946 001e 03       		.uleb128 0x3
 4947 001f 24       		.uleb128 0x24
 4948 0020 00       		.byte	0
 4949 0021 0B       		.uleb128 0xb
 4950 0022 0B       		.uleb128 0xb
 4951 0023 3E       		.uleb128 0x3e
 4952 0024 0B       		.uleb128 0xb
 4953 0025 03       		.uleb128 0x3
 4954 0026 0E       		.uleb128 0xe
 4955 0027 00       		.byte	0
 4956 0028 00       		.byte	0
 4957 0029 04       		.uleb128 0x4
 4958 002a 16       		.uleb128 0x16
 4959 002b 00       		.byte	0
 4960 002c 03       		.uleb128 0x3
 4961 002d 0E       		.uleb128 0xe
 4962 002e 3A       		.uleb128 0x3a
 4963 002f 0B       		.uleb128 0xb
 4964 0030 3B       		.uleb128 0x3b
 4965 0031 0B       		.uleb128 0xb
 4966 0032 49       		.uleb128 0x49
 4967 0033 13       		.uleb128 0x13
 4968 0034 00       		.byte	0
 4969 0035 00       		.byte	0
 4970 0036 05       		.uleb128 0x5
 4971 0037 16       		.uleb128 0x16
 4972 0038 00       		.byte	0
 4973 0039 03       		.uleb128 0x3
ARM GAS  /tmp/ccfM1LZ3.s 			page 109


 4974 003a 0E       		.uleb128 0xe
 4975 003b 3A       		.uleb128 0x3a
 4976 003c 0B       		.uleb128 0xb
 4977 003d 3B       		.uleb128 0x3b
 4978 003e 05       		.uleb128 0x5
 4979 003f 49       		.uleb128 0x49
 4980 0040 13       		.uleb128 0x13
 4981 0041 00       		.byte	0
 4982 0042 00       		.byte	0
 4983 0043 06       		.uleb128 0x6
 4984 0044 17       		.uleb128 0x17
 4985 0045 01       		.byte	0x1
 4986 0046 0B       		.uleb128 0xb
 4987 0047 0B       		.uleb128 0xb
 4988 0048 3A       		.uleb128 0x3a
 4989 0049 0B       		.uleb128 0xb
 4990 004a 3B       		.uleb128 0x3b
 4991 004b 0B       		.uleb128 0xb
 4992 004c 01       		.uleb128 0x1
 4993 004d 13       		.uleb128 0x13
 4994 004e 00       		.byte	0
 4995 004f 00       		.byte	0
 4996 0050 07       		.uleb128 0x7
 4997 0051 0D       		.uleb128 0xd
 4998 0052 00       		.byte	0
 4999 0053 03       		.uleb128 0x3
 5000 0054 0E       		.uleb128 0xe
 5001 0055 3A       		.uleb128 0x3a
 5002 0056 0B       		.uleb128 0xb
 5003 0057 3B       		.uleb128 0x3b
 5004 0058 0B       		.uleb128 0xb
 5005 0059 49       		.uleb128 0x49
 5006 005a 13       		.uleb128 0x13
 5007 005b 00       		.byte	0
 5008 005c 00       		.byte	0
 5009 005d 08       		.uleb128 0x8
 5010 005e 01       		.uleb128 0x1
 5011 005f 01       		.byte	0x1
 5012 0060 49       		.uleb128 0x49
 5013 0061 13       		.uleb128 0x13
 5014 0062 01       		.uleb128 0x1
 5015 0063 13       		.uleb128 0x13
 5016 0064 00       		.byte	0
 5017 0065 00       		.byte	0
 5018 0066 09       		.uleb128 0x9
 5019 0067 21       		.uleb128 0x21
 5020 0068 00       		.byte	0
 5021 0069 49       		.uleb128 0x49
 5022 006a 13       		.uleb128 0x13
 5023 006b 2F       		.uleb128 0x2f
 5024 006c 0B       		.uleb128 0xb
 5025 006d 00       		.byte	0
 5026 006e 00       		.byte	0
 5027 006f 0A       		.uleb128 0xa
 5028 0070 13       		.uleb128 0x13
 5029 0071 01       		.byte	0x1
 5030 0072 0B       		.uleb128 0xb
ARM GAS  /tmp/ccfM1LZ3.s 			page 110


 5031 0073 0B       		.uleb128 0xb
 5032 0074 3A       		.uleb128 0x3a
 5033 0075 0B       		.uleb128 0xb
 5034 0076 3B       		.uleb128 0x3b
 5035 0077 0B       		.uleb128 0xb
 5036 0078 01       		.uleb128 0x1
 5037 0079 13       		.uleb128 0x13
 5038 007a 00       		.byte	0
 5039 007b 00       		.byte	0
 5040 007c 0B       		.uleb128 0xb
 5041 007d 0D       		.uleb128 0xd
 5042 007e 00       		.byte	0
 5043 007f 03       		.uleb128 0x3
 5044 0080 0E       		.uleb128 0xe
 5045 0081 3A       		.uleb128 0x3a
 5046 0082 0B       		.uleb128 0xb
 5047 0083 3B       		.uleb128 0x3b
 5048 0084 0B       		.uleb128 0xb
 5049 0085 49       		.uleb128 0x49
 5050 0086 13       		.uleb128 0x13
 5051 0087 38       		.uleb128 0x38
 5052 0088 0B       		.uleb128 0xb
 5053 0089 00       		.byte	0
 5054 008a 00       		.byte	0
 5055 008b 0C       		.uleb128 0xc
 5056 008c 0F       		.uleb128 0xf
 5057 008d 00       		.byte	0
 5058 008e 0B       		.uleb128 0xb
 5059 008f 0B       		.uleb128 0xb
 5060 0090 00       		.byte	0
 5061 0091 00       		.byte	0
 5062 0092 0D       		.uleb128 0xd
 5063 0093 0F       		.uleb128 0xf
 5064 0094 00       		.byte	0
 5065 0095 0B       		.uleb128 0xb
 5066 0096 0B       		.uleb128 0xb
 5067 0097 49       		.uleb128 0x49
 5068 0098 13       		.uleb128 0x13
 5069 0099 00       		.byte	0
 5070 009a 00       		.byte	0
 5071 009b 0E       		.uleb128 0xe
 5072 009c 26       		.uleb128 0x26
 5073 009d 00       		.byte	0
 5074 009e 49       		.uleb128 0x49
 5075 009f 13       		.uleb128 0x13
 5076 00a0 00       		.byte	0
 5077 00a1 00       		.byte	0
 5078 00a2 0F       		.uleb128 0xf
 5079 00a3 13       		.uleb128 0x13
 5080 00a4 01       		.byte	0x1
 5081 00a5 03       		.uleb128 0x3
 5082 00a6 0E       		.uleb128 0xe
 5083 00a7 0B       		.uleb128 0xb
 5084 00a8 0B       		.uleb128 0xb
 5085 00a9 3A       		.uleb128 0x3a
 5086 00aa 0B       		.uleb128 0xb
 5087 00ab 3B       		.uleb128 0x3b
ARM GAS  /tmp/ccfM1LZ3.s 			page 111


 5088 00ac 0B       		.uleb128 0xb
 5089 00ad 01       		.uleb128 0x1
 5090 00ae 13       		.uleb128 0x13
 5091 00af 00       		.byte	0
 5092 00b0 00       		.byte	0
 5093 00b1 10       		.uleb128 0x10
 5094 00b2 0D       		.uleb128 0xd
 5095 00b3 00       		.byte	0
 5096 00b4 03       		.uleb128 0x3
 5097 00b5 08       		.uleb128 0x8
 5098 00b6 3A       		.uleb128 0x3a
 5099 00b7 0B       		.uleb128 0xb
 5100 00b8 3B       		.uleb128 0x3b
 5101 00b9 0B       		.uleb128 0xb
 5102 00ba 49       		.uleb128 0x49
 5103 00bb 13       		.uleb128 0x13
 5104 00bc 38       		.uleb128 0x38
 5105 00bd 0B       		.uleb128 0xb
 5106 00be 00       		.byte	0
 5107 00bf 00       		.byte	0
 5108 00c0 11       		.uleb128 0x11
 5109 00c1 13       		.uleb128 0x13
 5110 00c2 01       		.byte	0x1
 5111 00c3 03       		.uleb128 0x3
 5112 00c4 0E       		.uleb128 0xe
 5113 00c5 0B       		.uleb128 0xb
 5114 00c6 05       		.uleb128 0x5
 5115 00c7 3A       		.uleb128 0x3a
 5116 00c8 0B       		.uleb128 0xb
 5117 00c9 3B       		.uleb128 0x3b
 5118 00ca 0B       		.uleb128 0xb
 5119 00cb 01       		.uleb128 0x1
 5120 00cc 13       		.uleb128 0x13
 5121 00cd 00       		.byte	0
 5122 00ce 00       		.byte	0
 5123 00cf 12       		.uleb128 0x12
 5124 00d0 0D       		.uleb128 0xd
 5125 00d1 00       		.byte	0
 5126 00d2 03       		.uleb128 0x3
 5127 00d3 0E       		.uleb128 0xe
 5128 00d4 3A       		.uleb128 0x3a
 5129 00d5 0B       		.uleb128 0xb
 5130 00d6 3B       		.uleb128 0x3b
 5131 00d7 0B       		.uleb128 0xb
 5132 00d8 49       		.uleb128 0x49
 5133 00d9 13       		.uleb128 0x13
 5134 00da 38       		.uleb128 0x38
 5135 00db 05       		.uleb128 0x5
 5136 00dc 00       		.byte	0
 5137 00dd 00       		.byte	0
 5138 00de 13       		.uleb128 0x13
 5139 00df 15       		.uleb128 0x15
 5140 00e0 00       		.byte	0
 5141 00e1 27       		.uleb128 0x27
 5142 00e2 19       		.uleb128 0x19
 5143 00e3 00       		.byte	0
 5144 00e4 00       		.byte	0
ARM GAS  /tmp/ccfM1LZ3.s 			page 112


 5145 00e5 14       		.uleb128 0x14
 5146 00e6 15       		.uleb128 0x15
 5147 00e7 01       		.byte	0x1
 5148 00e8 27       		.uleb128 0x27
 5149 00e9 19       		.uleb128 0x19
 5150 00ea 49       		.uleb128 0x49
 5151 00eb 13       		.uleb128 0x13
 5152 00ec 01       		.uleb128 0x1
 5153 00ed 13       		.uleb128 0x13
 5154 00ee 00       		.byte	0
 5155 00ef 00       		.byte	0
 5156 00f0 15       		.uleb128 0x15
 5157 00f1 05       		.uleb128 0x5
 5158 00f2 00       		.byte	0
 5159 00f3 49       		.uleb128 0x49
 5160 00f4 13       		.uleb128 0x13
 5161 00f5 00       		.byte	0
 5162 00f6 00       		.byte	0
 5163 00f7 16       		.uleb128 0x16
 5164 00f8 13       		.uleb128 0x13
 5165 00f9 01       		.byte	0x1
 5166 00fa 03       		.uleb128 0x3
 5167 00fb 0E       		.uleb128 0xe
 5168 00fc 0B       		.uleb128 0xb
 5169 00fd 05       		.uleb128 0x5
 5170 00fe 3A       		.uleb128 0x3a
 5171 00ff 0B       		.uleb128 0xb
 5172 0100 3B       		.uleb128 0x3b
 5173 0101 05       		.uleb128 0x5
 5174 0102 01       		.uleb128 0x1
 5175 0103 13       		.uleb128 0x13
 5176 0104 00       		.byte	0
 5177 0105 00       		.byte	0
 5178 0106 17       		.uleb128 0x17
 5179 0107 0D       		.uleb128 0xd
 5180 0108 00       		.byte	0
 5181 0109 03       		.uleb128 0x3
 5182 010a 0E       		.uleb128 0xe
 5183 010b 3A       		.uleb128 0x3a
 5184 010c 0B       		.uleb128 0xb
 5185 010d 3B       		.uleb128 0x3b
 5186 010e 05       		.uleb128 0x5
 5187 010f 49       		.uleb128 0x49
 5188 0110 13       		.uleb128 0x13
 5189 0111 38       		.uleb128 0x38
 5190 0112 0B       		.uleb128 0xb
 5191 0113 00       		.byte	0
 5192 0114 00       		.byte	0
 5193 0115 18       		.uleb128 0x18
 5194 0116 0D       		.uleb128 0xd
 5195 0117 00       		.byte	0
 5196 0118 03       		.uleb128 0x3
 5197 0119 0E       		.uleb128 0xe
 5198 011a 3A       		.uleb128 0x3a
 5199 011b 0B       		.uleb128 0xb
 5200 011c 3B       		.uleb128 0x3b
 5201 011d 05       		.uleb128 0x5
ARM GAS  /tmp/ccfM1LZ3.s 			page 113


 5202 011e 49       		.uleb128 0x49
 5203 011f 13       		.uleb128 0x13
 5204 0120 38       		.uleb128 0x38
 5205 0121 05       		.uleb128 0x5
 5206 0122 00       		.byte	0
 5207 0123 00       		.byte	0
 5208 0124 19       		.uleb128 0x19
 5209 0125 13       		.uleb128 0x13
 5210 0126 01       		.byte	0x1
 5211 0127 03       		.uleb128 0x3
 5212 0128 0E       		.uleb128 0xe
 5213 0129 0B       		.uleb128 0xb
 5214 012a 0B       		.uleb128 0xb
 5215 012b 3A       		.uleb128 0x3a
 5216 012c 0B       		.uleb128 0xb
 5217 012d 3B       		.uleb128 0x3b
 5218 012e 05       		.uleb128 0x5
 5219 012f 01       		.uleb128 0x1
 5220 0130 13       		.uleb128 0x13
 5221 0131 00       		.byte	0
 5222 0132 00       		.byte	0
 5223 0133 1A       		.uleb128 0x1a
 5224 0134 13       		.uleb128 0x13
 5225 0135 01       		.byte	0x1
 5226 0136 0B       		.uleb128 0xb
 5227 0137 0B       		.uleb128 0xb
 5228 0138 3A       		.uleb128 0x3a
 5229 0139 0B       		.uleb128 0xb
 5230 013a 3B       		.uleb128 0x3b
 5231 013b 05       		.uleb128 0x5
 5232 013c 01       		.uleb128 0x1
 5233 013d 13       		.uleb128 0x13
 5234 013e 00       		.byte	0
 5235 013f 00       		.byte	0
 5236 0140 1B       		.uleb128 0x1b
 5237 0141 17       		.uleb128 0x17
 5238 0142 01       		.byte	0x1
 5239 0143 0B       		.uleb128 0xb
 5240 0144 0B       		.uleb128 0xb
 5241 0145 3A       		.uleb128 0x3a
 5242 0146 0B       		.uleb128 0xb
 5243 0147 3B       		.uleb128 0x3b
 5244 0148 05       		.uleb128 0x5
 5245 0149 01       		.uleb128 0x1
 5246 014a 13       		.uleb128 0x13
 5247 014b 00       		.byte	0
 5248 014c 00       		.byte	0
 5249 014d 1C       		.uleb128 0x1c
 5250 014e 0D       		.uleb128 0xd
 5251 014f 00       		.byte	0
 5252 0150 03       		.uleb128 0x3
 5253 0151 0E       		.uleb128 0xe
 5254 0152 3A       		.uleb128 0x3a
 5255 0153 0B       		.uleb128 0xb
 5256 0154 3B       		.uleb128 0x3b
 5257 0155 05       		.uleb128 0x5
 5258 0156 49       		.uleb128 0x49
ARM GAS  /tmp/ccfM1LZ3.s 			page 114


 5259 0157 13       		.uleb128 0x13
 5260 0158 00       		.byte	0
 5261 0159 00       		.byte	0
 5262 015a 1D       		.uleb128 0x1d
 5263 015b 15       		.uleb128 0x15
 5264 015c 01       		.byte	0x1
 5265 015d 27       		.uleb128 0x27
 5266 015e 19       		.uleb128 0x19
 5267 015f 01       		.uleb128 0x1
 5268 0160 13       		.uleb128 0x13
 5269 0161 00       		.byte	0
 5270 0162 00       		.byte	0
 5271 0163 1E       		.uleb128 0x1e
 5272 0164 34       		.uleb128 0x34
 5273 0165 00       		.byte	0
 5274 0166 03       		.uleb128 0x3
 5275 0167 0E       		.uleb128 0xe
 5276 0168 3A       		.uleb128 0x3a
 5277 0169 0B       		.uleb128 0xb
 5278 016a 3B       		.uleb128 0x3b
 5279 016b 05       		.uleb128 0x5
 5280 016c 49       		.uleb128 0x49
 5281 016d 13       		.uleb128 0x13
 5282 016e 3F       		.uleb128 0x3f
 5283 016f 19       		.uleb128 0x19
 5284 0170 3C       		.uleb128 0x3c
 5285 0171 19       		.uleb128 0x19
 5286 0172 00       		.byte	0
 5287 0173 00       		.byte	0
 5288 0174 1F       		.uleb128 0x1f
 5289 0175 35       		.uleb128 0x35
 5290 0176 00       		.byte	0
 5291 0177 49       		.uleb128 0x49
 5292 0178 13       		.uleb128 0x13
 5293 0179 00       		.byte	0
 5294 017a 00       		.byte	0
 5295 017b 20       		.uleb128 0x20
 5296 017c 34       		.uleb128 0x34
 5297 017d 00       		.byte	0
 5298 017e 03       		.uleb128 0x3
 5299 017f 0E       		.uleb128 0xe
 5300 0180 3A       		.uleb128 0x3a
 5301 0181 0B       		.uleb128 0xb
 5302 0182 3B       		.uleb128 0x3b
 5303 0183 0B       		.uleb128 0xb
 5304 0184 49       		.uleb128 0x49
 5305 0185 13       		.uleb128 0x13
 5306 0186 3F       		.uleb128 0x3f
 5307 0187 19       		.uleb128 0x19
 5308 0188 3C       		.uleb128 0x3c
 5309 0189 19       		.uleb128 0x19
 5310 018a 00       		.byte	0
 5311 018b 00       		.byte	0
 5312 018c 21       		.uleb128 0x21
 5313 018d 16       		.uleb128 0x16
 5314 018e 00       		.byte	0
 5315 018f 03       		.uleb128 0x3
ARM GAS  /tmp/ccfM1LZ3.s 			page 115


 5316 0190 08       		.uleb128 0x8
 5317 0191 3A       		.uleb128 0x3a
 5318 0192 0B       		.uleb128 0xb
 5319 0193 3B       		.uleb128 0x3b
 5320 0194 0B       		.uleb128 0xb
 5321 0195 49       		.uleb128 0x49
 5322 0196 13       		.uleb128 0x13
 5323 0197 00       		.byte	0
 5324 0198 00       		.byte	0
 5325 0199 22       		.uleb128 0x22
 5326 019a 26       		.uleb128 0x26
 5327 019b 00       		.byte	0
 5328 019c 00       		.byte	0
 5329 019d 00       		.byte	0
 5330 019e 23       		.uleb128 0x23
 5331 019f 34       		.uleb128 0x34
 5332 01a0 00       		.byte	0
 5333 01a1 03       		.uleb128 0x3
 5334 01a2 0E       		.uleb128 0xe
 5335 01a3 3A       		.uleb128 0x3a
 5336 01a4 0B       		.uleb128 0xb
 5337 01a5 3B       		.uleb128 0x3b
 5338 01a6 0B       		.uleb128 0xb
 5339 01a7 49       		.uleb128 0x49
 5340 01a8 13       		.uleb128 0x13
 5341 01a9 02       		.uleb128 0x2
 5342 01aa 18       		.uleb128 0x18
 5343 01ab 00       		.byte	0
 5344 01ac 00       		.byte	0
 5345 01ad 24       		.uleb128 0x24
 5346 01ae 04       		.uleb128 0x4
 5347 01af 01       		.byte	0x1
 5348 01b0 03       		.uleb128 0x3
 5349 01b1 0E       		.uleb128 0xe
 5350 01b2 0B       		.uleb128 0xb
 5351 01b3 0B       		.uleb128 0xb
 5352 01b4 49       		.uleb128 0x49
 5353 01b5 13       		.uleb128 0x13
 5354 01b6 3A       		.uleb128 0x3a
 5355 01b7 0B       		.uleb128 0xb
 5356 01b8 3B       		.uleb128 0x3b
 5357 01b9 0B       		.uleb128 0xb
 5358 01ba 01       		.uleb128 0x1
 5359 01bb 13       		.uleb128 0x13
 5360 01bc 00       		.byte	0
 5361 01bd 00       		.byte	0
 5362 01be 25       		.uleb128 0x25
 5363 01bf 28       		.uleb128 0x28
 5364 01c0 00       		.byte	0
 5365 01c1 03       		.uleb128 0x3
 5366 01c2 0E       		.uleb128 0xe
 5367 01c3 1C       		.uleb128 0x1c
 5368 01c4 0B       		.uleb128 0xb
 5369 01c5 00       		.byte	0
 5370 01c6 00       		.byte	0
 5371 01c7 26       		.uleb128 0x26
 5372 01c8 28       		.uleb128 0x28
ARM GAS  /tmp/ccfM1LZ3.s 			page 116


 5373 01c9 00       		.byte	0
 5374 01ca 03       		.uleb128 0x3
 5375 01cb 0E       		.uleb128 0xe
 5376 01cc 1C       		.uleb128 0x1c
 5377 01cd 06       		.uleb128 0x6
 5378 01ce 00       		.byte	0
 5379 01cf 00       		.byte	0
 5380 01d0 27       		.uleb128 0x27
 5381 01d1 2E       		.uleb128 0x2e
 5382 01d2 01       		.byte	0x1
 5383 01d3 3F       		.uleb128 0x3f
 5384 01d4 19       		.uleb128 0x19
 5385 01d5 03       		.uleb128 0x3
 5386 01d6 0E       		.uleb128 0xe
 5387 01d7 3A       		.uleb128 0x3a
 5388 01d8 0B       		.uleb128 0xb
 5389 01d9 3B       		.uleb128 0x3b
 5390 01da 05       		.uleb128 0x5
 5391 01db 27       		.uleb128 0x27
 5392 01dc 19       		.uleb128 0x19
 5393 01dd 49       		.uleb128 0x49
 5394 01de 13       		.uleb128 0x13
 5395 01df 11       		.uleb128 0x11
 5396 01e0 01       		.uleb128 0x1
 5397 01e1 12       		.uleb128 0x12
 5398 01e2 06       		.uleb128 0x6
 5399 01e3 40       		.uleb128 0x40
 5400 01e4 18       		.uleb128 0x18
 5401 01e5 9742     		.uleb128 0x2117
 5402 01e7 19       		.uleb128 0x19
 5403 01e8 01       		.uleb128 0x1
 5404 01e9 13       		.uleb128 0x13
 5405 01ea 00       		.byte	0
 5406 01eb 00       		.byte	0
 5407 01ec 28       		.uleb128 0x28
 5408 01ed 898201   		.uleb128 0x4109
 5409 01f0 01       		.byte	0x1
 5410 01f1 11       		.uleb128 0x11
 5411 01f2 01       		.uleb128 0x1
 5412 01f3 9542     		.uleb128 0x2115
 5413 01f5 19       		.uleb128 0x19
 5414 01f6 31       		.uleb128 0x31
 5415 01f7 13       		.uleb128 0x13
 5416 01f8 00       		.byte	0
 5417 01f9 00       		.byte	0
 5418 01fa 29       		.uleb128 0x29
 5419 01fb 8A8201   		.uleb128 0x410a
 5420 01fe 00       		.byte	0
 5421 01ff 02       		.uleb128 0x2
 5422 0200 18       		.uleb128 0x18
 5423 0201 9142     		.uleb128 0x2111
 5424 0203 18       		.uleb128 0x18
 5425 0204 00       		.byte	0
 5426 0205 00       		.byte	0
 5427 0206 2A       		.uleb128 0x2a
 5428 0207 05       		.uleb128 0x5
 5429 0208 00       		.byte	0
ARM GAS  /tmp/ccfM1LZ3.s 			page 117


 5430 0209 03       		.uleb128 0x3
 5431 020a 0E       		.uleb128 0xe
 5432 020b 3A       		.uleb128 0x3a
 5433 020c 0B       		.uleb128 0xb
 5434 020d 3B       		.uleb128 0x3b
 5435 020e 05       		.uleb128 0x5
 5436 020f 49       		.uleb128 0x49
 5437 0210 13       		.uleb128 0x13
 5438 0211 02       		.uleb128 0x2
 5439 0212 17       		.uleb128 0x17
 5440 0213 00       		.byte	0
 5441 0214 00       		.byte	0
 5442 0215 2B       		.uleb128 0x2b
 5443 0216 34       		.uleb128 0x34
 5444 0217 00       		.byte	0
 5445 0218 03       		.uleb128 0x3
 5446 0219 0E       		.uleb128 0xe
 5447 021a 3A       		.uleb128 0x3a
 5448 021b 0B       		.uleb128 0xb
 5449 021c 3B       		.uleb128 0x3b
 5450 021d 05       		.uleb128 0x5
 5451 021e 49       		.uleb128 0x49
 5452 021f 13       		.uleb128 0x13
 5453 0220 02       		.uleb128 0x2
 5454 0221 17       		.uleb128 0x17
 5455 0222 00       		.byte	0
 5456 0223 00       		.byte	0
 5457 0224 2C       		.uleb128 0x2c
 5458 0225 898201   		.uleb128 0x4109
 5459 0228 01       		.byte	0x1
 5460 0229 11       		.uleb128 0x11
 5461 022a 01       		.uleb128 0x1
 5462 022b 31       		.uleb128 0x31
 5463 022c 13       		.uleb128 0x13
 5464 022d 01       		.uleb128 0x1
 5465 022e 13       		.uleb128 0x13
 5466 022f 00       		.byte	0
 5467 0230 00       		.byte	0
 5468 0231 2D       		.uleb128 0x2d
 5469 0232 898201   		.uleb128 0x4109
 5470 0235 01       		.byte	0x1
 5471 0236 11       		.uleb128 0x11
 5472 0237 01       		.uleb128 0x1
 5473 0238 31       		.uleb128 0x31
 5474 0239 13       		.uleb128 0x13
 5475 023a 00       		.byte	0
 5476 023b 00       		.byte	0
 5477 023c 2E       		.uleb128 0x2e
 5478 023d 34       		.uleb128 0x34
 5479 023e 00       		.byte	0
 5480 023f 03       		.uleb128 0x3
 5481 0240 0E       		.uleb128 0xe
 5482 0241 3A       		.uleb128 0x3a
 5483 0242 0B       		.uleb128 0xb
 5484 0243 3B       		.uleb128 0x3b
 5485 0244 05       		.uleb128 0x5
 5486 0245 49       		.uleb128 0x49
ARM GAS  /tmp/ccfM1LZ3.s 			page 118


 5487 0246 13       		.uleb128 0x13
 5488 0247 02       		.uleb128 0x2
 5489 0248 18       		.uleb128 0x18
 5490 0249 00       		.byte	0
 5491 024a 00       		.byte	0
 5492 024b 2F       		.uleb128 0x2f
 5493 024c 2E       		.uleb128 0x2e
 5494 024d 01       		.byte	0x1
 5495 024e 3F       		.uleb128 0x3f
 5496 024f 19       		.uleb128 0x19
 5497 0250 03       		.uleb128 0x3
 5498 0251 0E       		.uleb128 0xe
 5499 0252 3A       		.uleb128 0x3a
 5500 0253 0B       		.uleb128 0xb
 5501 0254 3B       		.uleb128 0x3b
 5502 0255 05       		.uleb128 0x5
 5503 0256 27       		.uleb128 0x27
 5504 0257 19       		.uleb128 0x19
 5505 0258 49       		.uleb128 0x49
 5506 0259 13       		.uleb128 0x13
 5507 025a 20       		.uleb128 0x20
 5508 025b 0B       		.uleb128 0xb
 5509 025c 01       		.uleb128 0x1
 5510 025d 13       		.uleb128 0x13
 5511 025e 00       		.byte	0
 5512 025f 00       		.byte	0
 5513 0260 30       		.uleb128 0x30
 5514 0261 05       		.uleb128 0x5
 5515 0262 00       		.byte	0
 5516 0263 03       		.uleb128 0x3
 5517 0264 0E       		.uleb128 0xe
 5518 0265 3A       		.uleb128 0x3a
 5519 0266 0B       		.uleb128 0xb
 5520 0267 3B       		.uleb128 0x3b
 5521 0268 05       		.uleb128 0x5
 5522 0269 49       		.uleb128 0x49
 5523 026a 13       		.uleb128 0x13
 5524 026b 00       		.byte	0
 5525 026c 00       		.byte	0
 5526 026d 31       		.uleb128 0x31
 5527 026e 34       		.uleb128 0x34
 5528 026f 00       		.byte	0
 5529 0270 03       		.uleb128 0x3
 5530 0271 0E       		.uleb128 0xe
 5531 0272 3A       		.uleb128 0x3a
 5532 0273 0B       		.uleb128 0xb
 5533 0274 3B       		.uleb128 0x3b
 5534 0275 05       		.uleb128 0x5
 5535 0276 49       		.uleb128 0x49
 5536 0277 13       		.uleb128 0x13
 5537 0278 00       		.byte	0
 5538 0279 00       		.byte	0
 5539 027a 32       		.uleb128 0x32
 5540 027b 34       		.uleb128 0x34
 5541 027c 00       		.byte	0
 5542 027d 03       		.uleb128 0x3
 5543 027e 0E       		.uleb128 0xe
ARM GAS  /tmp/ccfM1LZ3.s 			page 119


 5544 027f 3A       		.uleb128 0x3a
 5545 0280 0B       		.uleb128 0xb
 5546 0281 3B       		.uleb128 0x3b
 5547 0282 05       		.uleb128 0x5
 5548 0283 49       		.uleb128 0x49
 5549 0284 13       		.uleb128 0x13
 5550 0285 1C       		.uleb128 0x1c
 5551 0286 0B       		.uleb128 0xb
 5552 0287 00       		.byte	0
 5553 0288 00       		.byte	0
 5554 0289 33       		.uleb128 0x33
 5555 028a 898201   		.uleb128 0x4109
 5556 028d 00       		.byte	0
 5557 028e 11       		.uleb128 0x11
 5558 028f 01       		.uleb128 0x1
 5559 0290 31       		.uleb128 0x31
 5560 0291 13       		.uleb128 0x13
 5561 0292 00       		.byte	0
 5562 0293 00       		.byte	0
 5563 0294 34       		.uleb128 0x34
 5564 0295 34       		.uleb128 0x34
 5565 0296 00       		.byte	0
 5566 0297 03       		.uleb128 0x3
 5567 0298 0E       		.uleb128 0xe
 5568 0299 3A       		.uleb128 0x3a
 5569 029a 0B       		.uleb128 0xb
 5570 029b 3B       		.uleb128 0x3b
 5571 029c 05       		.uleb128 0x5
 5572 029d 49       		.uleb128 0x49
 5573 029e 13       		.uleb128 0x13
 5574 029f 1C       		.uleb128 0x1c
 5575 02a0 06       		.uleb128 0x6
 5576 02a1 00       		.byte	0
 5577 02a2 00       		.byte	0
 5578 02a3 35       		.uleb128 0x35
 5579 02a4 1D       		.uleb128 0x1d
 5580 02a5 01       		.byte	0x1
 5581 02a6 31       		.uleb128 0x31
 5582 02a7 13       		.uleb128 0x13
 5583 02a8 11       		.uleb128 0x11
 5584 02a9 01       		.uleb128 0x1
 5585 02aa 12       		.uleb128 0x12
 5586 02ab 06       		.uleb128 0x6
 5587 02ac 58       		.uleb128 0x58
 5588 02ad 0B       		.uleb128 0xb
 5589 02ae 59       		.uleb128 0x59
 5590 02af 05       		.uleb128 0x5
 5591 02b0 01       		.uleb128 0x1
 5592 02b1 13       		.uleb128 0x13
 5593 02b2 00       		.byte	0
 5594 02b3 00       		.byte	0
 5595 02b4 36       		.uleb128 0x36
 5596 02b5 05       		.uleb128 0x5
 5597 02b6 00       		.byte	0
 5598 02b7 31       		.uleb128 0x31
 5599 02b8 13       		.uleb128 0x13
 5600 02b9 02       		.uleb128 0x2
ARM GAS  /tmp/ccfM1LZ3.s 			page 120


 5601 02ba 17       		.uleb128 0x17
 5602 02bb 00       		.byte	0
 5603 02bc 00       		.byte	0
 5604 02bd 37       		.uleb128 0x37
 5605 02be 0B       		.uleb128 0xb
 5606 02bf 01       		.byte	0x1
 5607 02c0 11       		.uleb128 0x11
 5608 02c1 01       		.uleb128 0x1
 5609 02c2 12       		.uleb128 0x12
 5610 02c3 06       		.uleb128 0x6
 5611 02c4 00       		.byte	0
 5612 02c5 00       		.byte	0
 5613 02c6 38       		.uleb128 0x38
 5614 02c7 34       		.uleb128 0x34
 5615 02c8 00       		.byte	0
 5616 02c9 31       		.uleb128 0x31
 5617 02ca 13       		.uleb128 0x13
 5618 02cb 02       		.uleb128 0x2
 5619 02cc 17       		.uleb128 0x17
 5620 02cd 00       		.byte	0
 5621 02ce 00       		.byte	0
 5622 02cf 39       		.uleb128 0x39
 5623 02d0 34       		.uleb128 0x34
 5624 02d1 00       		.byte	0
 5625 02d2 31       		.uleb128 0x31
 5626 02d3 13       		.uleb128 0x13
 5627 02d4 02       		.uleb128 0x2
 5628 02d5 18       		.uleb128 0x18
 5629 02d6 00       		.byte	0
 5630 02d7 00       		.byte	0
 5631 02d8 3A       		.uleb128 0x3a
 5632 02d9 1D       		.uleb128 0x1d
 5633 02da 01       		.byte	0x1
 5634 02db 31       		.uleb128 0x31
 5635 02dc 13       		.uleb128 0x13
 5636 02dd 52       		.uleb128 0x52
 5637 02de 01       		.uleb128 0x1
 5638 02df 55       		.uleb128 0x55
 5639 02e0 17       		.uleb128 0x17
 5640 02e1 58       		.uleb128 0x58
 5641 02e2 0B       		.uleb128 0xb
 5642 02e3 59       		.uleb128 0x59
 5643 02e4 05       		.uleb128 0x5
 5644 02e5 01       		.uleb128 0x1
 5645 02e6 13       		.uleb128 0x13
 5646 02e7 00       		.byte	0
 5647 02e8 00       		.byte	0
 5648 02e9 3B       		.uleb128 0x3b
 5649 02ea 0B       		.uleb128 0xb
 5650 02eb 01       		.byte	0x1
 5651 02ec 55       		.uleb128 0x55
 5652 02ed 17       		.uleb128 0x17
 5653 02ee 00       		.byte	0
 5654 02ef 00       		.byte	0
 5655 02f0 3C       		.uleb128 0x3c
 5656 02f1 34       		.uleb128 0x34
 5657 02f2 00       		.byte	0
ARM GAS  /tmp/ccfM1LZ3.s 			page 121


 5658 02f3 31       		.uleb128 0x31
 5659 02f4 13       		.uleb128 0x13
 5660 02f5 1C       		.uleb128 0x1c
 5661 02f6 06       		.uleb128 0x6
 5662 02f7 00       		.byte	0
 5663 02f8 00       		.byte	0
 5664 02f9 3D       		.uleb128 0x3d
 5665 02fa 34       		.uleb128 0x34
 5666 02fb 00       		.byte	0
 5667 02fc 31       		.uleb128 0x31
 5668 02fd 13       		.uleb128 0x13
 5669 02fe 00       		.byte	0
 5670 02ff 00       		.byte	0
 5671 0300 3E       		.uleb128 0x3e
 5672 0301 05       		.uleb128 0x5
 5673 0302 00       		.byte	0
 5674 0303 31       		.uleb128 0x31
 5675 0304 13       		.uleb128 0x13
 5676 0305 1C       		.uleb128 0x1c
 5677 0306 0B       		.uleb128 0xb
 5678 0307 00       		.byte	0
 5679 0308 00       		.byte	0
 5680 0309 3F       		.uleb128 0x3f
 5681 030a 05       		.uleb128 0x5
 5682 030b 00       		.byte	0
 5683 030c 31       		.uleb128 0x31
 5684 030d 13       		.uleb128 0x13
 5685 030e 02       		.uleb128 0x2
 5686 030f 18       		.uleb128 0x18
 5687 0310 00       		.byte	0
 5688 0311 00       		.byte	0
 5689 0312 40       		.uleb128 0x40
 5690 0313 34       		.uleb128 0x34
 5691 0314 00       		.byte	0
 5692 0315 31       		.uleb128 0x31
 5693 0316 13       		.uleb128 0x13
 5694 0317 1C       		.uleb128 0x1c
 5695 0318 05       		.uleb128 0x5
 5696 0319 00       		.byte	0
 5697 031a 00       		.byte	0
 5698 031b 41       		.uleb128 0x41
 5699 031c 05       		.uleb128 0x5
 5700 031d 00       		.byte	0
 5701 031e 31       		.uleb128 0x31
 5702 031f 13       		.uleb128 0x13
 5703 0320 00       		.byte	0
 5704 0321 00       		.byte	0
 5705 0322 42       		.uleb128 0x42
 5706 0323 2E       		.uleb128 0x2e
 5707 0324 01       		.byte	0x1
 5708 0325 03       		.uleb128 0x3
 5709 0326 0E       		.uleb128 0xe
 5710 0327 3A       		.uleb128 0x3a
 5711 0328 0B       		.uleb128 0xb
 5712 0329 3B       		.uleb128 0x3b
 5713 032a 05       		.uleb128 0x5
 5714 032b 27       		.uleb128 0x27
ARM GAS  /tmp/ccfM1LZ3.s 			page 122


 5715 032c 19       		.uleb128 0x19
 5716 032d 20       		.uleb128 0x20
 5717 032e 0B       		.uleb128 0xb
 5718 032f 01       		.uleb128 0x1
 5719 0330 13       		.uleb128 0x13
 5720 0331 00       		.byte	0
 5721 0332 00       		.byte	0
 5722 0333 43       		.uleb128 0x43
 5723 0334 2E       		.uleb128 0x2e
 5724 0335 01       		.byte	0x1
 5725 0336 03       		.uleb128 0x3
 5726 0337 0E       		.uleb128 0xe
 5727 0338 3A       		.uleb128 0x3a
 5728 0339 0B       		.uleb128 0xb
 5729 033a 3B       		.uleb128 0x3b
 5730 033b 0B       		.uleb128 0xb
 5731 033c 27       		.uleb128 0x27
 5732 033d 19       		.uleb128 0x19
 5733 033e 20       		.uleb128 0x20
 5734 033f 0B       		.uleb128 0xb
 5735 0340 01       		.uleb128 0x1
 5736 0341 13       		.uleb128 0x13
 5737 0342 00       		.byte	0
 5738 0343 00       		.byte	0
 5739 0344 44       		.uleb128 0x44
 5740 0345 05       		.uleb128 0x5
 5741 0346 00       		.byte	0
 5742 0347 03       		.uleb128 0x3
 5743 0348 0E       		.uleb128 0xe
 5744 0349 3A       		.uleb128 0x3a
 5745 034a 0B       		.uleb128 0xb
 5746 034b 3B       		.uleb128 0x3b
 5747 034c 0B       		.uleb128 0xb
 5748 034d 49       		.uleb128 0x49
 5749 034e 13       		.uleb128 0x13
 5750 034f 00       		.byte	0
 5751 0350 00       		.byte	0
 5752 0351 45       		.uleb128 0x45
 5753 0352 34       		.uleb128 0x34
 5754 0353 00       		.byte	0
 5755 0354 03       		.uleb128 0x3
 5756 0355 0E       		.uleb128 0xe
 5757 0356 3A       		.uleb128 0x3a
 5758 0357 0B       		.uleb128 0xb
 5759 0358 3B       		.uleb128 0x3b
 5760 0359 0B       		.uleb128 0xb
 5761 035a 49       		.uleb128 0x49
 5762 035b 13       		.uleb128 0x13
 5763 035c 00       		.byte	0
 5764 035d 00       		.byte	0
 5765 035e 46       		.uleb128 0x46
 5766 035f 2E       		.uleb128 0x2e
 5767 0360 00       		.byte	0
 5768 0361 03       		.uleb128 0x3
 5769 0362 0E       		.uleb128 0xe
 5770 0363 3A       		.uleb128 0x3a
 5771 0364 0B       		.uleb128 0xb
ARM GAS  /tmp/ccfM1LZ3.s 			page 123


 5772 0365 3B       		.uleb128 0x3b
 5773 0366 05       		.uleb128 0x5
 5774 0367 27       		.uleb128 0x27
 5775 0368 19       		.uleb128 0x19
 5776 0369 49       		.uleb128 0x49
 5777 036a 13       		.uleb128 0x13
 5778 036b 20       		.uleb128 0x20
 5779 036c 0B       		.uleb128 0xb
 5780 036d 00       		.byte	0
 5781 036e 00       		.byte	0
 5782 036f 47       		.uleb128 0x47
 5783 0370 2E       		.uleb128 0x2e
 5784 0371 01       		.byte	0x1
 5785 0372 03       		.uleb128 0x3
 5786 0373 0E       		.uleb128 0xe
 5787 0374 3A       		.uleb128 0x3a
 5788 0375 0B       		.uleb128 0xb
 5789 0376 3B       		.uleb128 0x3b
 5790 0377 0B       		.uleb128 0xb
 5791 0378 27       		.uleb128 0x27
 5792 0379 19       		.uleb128 0x19
 5793 037a 49       		.uleb128 0x49
 5794 037b 13       		.uleb128 0x13
 5795 037c 20       		.uleb128 0x20
 5796 037d 0B       		.uleb128 0xb
 5797 037e 01       		.uleb128 0x1
 5798 037f 13       		.uleb128 0x13
 5799 0380 00       		.byte	0
 5800 0381 00       		.byte	0
 5801 0382 48       		.uleb128 0x48
 5802 0383 2E       		.uleb128 0x2e
 5803 0384 01       		.byte	0x1
 5804 0385 31       		.uleb128 0x31
 5805 0386 13       		.uleb128 0x13
 5806 0387 11       		.uleb128 0x11
 5807 0388 01       		.uleb128 0x1
 5808 0389 12       		.uleb128 0x12
 5809 038a 06       		.uleb128 0x6
 5810 038b 40       		.uleb128 0x40
 5811 038c 18       		.uleb128 0x18
 5812 038d 9742     		.uleb128 0x2117
 5813 038f 19       		.uleb128 0x19
 5814 0390 01       		.uleb128 0x1
 5815 0391 13       		.uleb128 0x13
 5816 0392 00       		.byte	0
 5817 0393 00       		.byte	0
 5818 0394 49       		.uleb128 0x49
 5819 0395 0B       		.uleb128 0xb
 5820 0396 01       		.byte	0x1
 5821 0397 11       		.uleb128 0x11
 5822 0398 01       		.uleb128 0x1
 5823 0399 12       		.uleb128 0x12
 5824 039a 06       		.uleb128 0x6
 5825 039b 01       		.uleb128 0x1
 5826 039c 13       		.uleb128 0x13
 5827 039d 00       		.byte	0
 5828 039e 00       		.byte	0
ARM GAS  /tmp/ccfM1LZ3.s 			page 124


 5829 039f 4A       		.uleb128 0x4a
 5830 03a0 2E       		.uleb128 0x2e
 5831 03a1 00       		.byte	0
 5832 03a2 3F       		.uleb128 0x3f
 5833 03a3 19       		.uleb128 0x19
 5834 03a4 3C       		.uleb128 0x3c
 5835 03a5 19       		.uleb128 0x19
 5836 03a6 6E       		.uleb128 0x6e
 5837 03a7 0E       		.uleb128 0xe
 5838 03a8 03       		.uleb128 0x3
 5839 03a9 0E       		.uleb128 0xe
 5840 03aa 3A       		.uleb128 0x3a
 5841 03ab 0B       		.uleb128 0xb
 5842 03ac 3B       		.uleb128 0x3b
 5843 03ad 0B       		.uleb128 0xb
 5844 03ae 00       		.byte	0
 5845 03af 00       		.byte	0
 5846 03b0 4B       		.uleb128 0x4b
 5847 03b1 2E       		.uleb128 0x2e
 5848 03b2 00       		.byte	0
 5849 03b3 3F       		.uleb128 0x3f
 5850 03b4 19       		.uleb128 0x19
 5851 03b5 3C       		.uleb128 0x3c
 5852 03b6 19       		.uleb128 0x19
 5853 03b7 6E       		.uleb128 0x6e
 5854 03b8 0E       		.uleb128 0xe
 5855 03b9 03       		.uleb128 0x3
 5856 03ba 0E       		.uleb128 0xe
 5857 03bb 00       		.byte	0
 5858 03bc 00       		.byte	0
 5859 03bd 00       		.byte	0
 5860              		.section	.debug_loc,"",%progbits
 5861              	.Ldebug_loc0:
 5862              	.LLST100:
 5863 0000 00000000 		.4byte	.LVL165
 5864 0004 06000000 		.4byte	.LVL166
 5865 0008 0100     		.2byte	0x1
 5866 000a 50       		.byte	0x50
 5867 000b 06000000 		.4byte	.LVL166
 5868 000f 08000000 		.4byte	.LVL167
 5869 0013 0400     		.2byte	0x4
 5870 0015 F3       		.byte	0xf3
 5871 0016 01       		.uleb128 0x1
 5872 0017 50       		.byte	0x50
 5873 0018 9F       		.byte	0x9f
 5874 0019 08000000 		.4byte	.LVL167
 5875 001d 0E000000 		.4byte	.LVL169
 5876 0021 0100     		.2byte	0x1
 5877 0023 50       		.byte	0x50
 5878 0024 0E000000 		.4byte	.LVL169
 5879 0028 13000000 		.4byte	.LVL170-1
 5880 002c 0100     		.2byte	0x1
 5881 002e 51       		.byte	0x51
 5882 002f 13000000 		.4byte	.LVL170-1
 5883 0033 4C000000 		.4byte	.LFE187
 5884 0037 0400     		.2byte	0x4
 5885 0039 F3       		.byte	0xf3
ARM GAS  /tmp/ccfM1LZ3.s 			page 125


 5886 003a 01       		.uleb128 0x1
 5887 003b 50       		.byte	0x50
 5888 003c 9F       		.byte	0x9f
 5889 003d 00000000 		.4byte	0
 5890 0041 00000000 		.4byte	0
 5891              	.LLST101:
 5892 0045 00000000 		.4byte	.LVL165
 5893 0049 0C000000 		.4byte	.LVL168
 5894 004d 0100     		.2byte	0x1
 5895 004f 51       		.byte	0x51
 5896 0050 0C000000 		.4byte	.LVL168
 5897 0054 4C000000 		.4byte	.LFE187
 5898 0058 0400     		.2byte	0x4
 5899 005a F3       		.byte	0xf3
 5900 005b 01       		.uleb128 0x1
 5901 005c 51       		.byte	0x51
 5902 005d 9F       		.byte	0x9f
 5903 005e 00000000 		.4byte	0
 5904 0062 00000000 		.4byte	0
 5905              	.LLST102:
 5906 0066 14000000 		.4byte	.LVL170
 5907 006a 1C000000 		.4byte	.LVL171
 5908 006e 0200     		.2byte	0x2
 5909 0070 30       		.byte	0x30
 5910 0071 9F       		.byte	0x9f
 5911 0072 00000000 		.4byte	0
 5912 0076 00000000 		.4byte	0
 5913              	.LLST103:
 5914 007a 14000000 		.4byte	.LVL170
 5915 007e 1C000000 		.4byte	.LVL171
 5916 0082 0400     		.2byte	0x4
 5917 0084 40       		.byte	0x40
 5918 0085 42       		.byte	0x42
 5919 0086 24       		.byte	0x24
 5920 0087 9F       		.byte	0x9f
 5921 0088 1C000000 		.4byte	.LVL171
 5922 008c 26000000 		.4byte	.LVL172
 5923 0090 0300     		.2byte	0x3
 5924 0092 72       		.byte	0x72
 5925 0093 08       		.sleb128 8
 5926 0094 9F       		.byte	0x9f
 5927 0095 26000000 		.4byte	.LVL172
 5928 0099 2A000000 		.4byte	.LVL173
 5929 009d 0300     		.2byte	0x3
 5930 009f 72       		.byte	0x72
 5931 00a0 04       		.sleb128 4
 5932 00a1 9F       		.byte	0x9f
 5933 00a2 00000000 		.4byte	0
 5934 00a6 00000000 		.4byte	0
 5935              	.LLST98:
 5936 00aa 00000000 		.4byte	.LVL161
 5937 00ae 0A000000 		.4byte	.LVL162
 5938 00b2 0100     		.2byte	0x1
 5939 00b4 50       		.byte	0x50
 5940 00b5 0A000000 		.4byte	.LVL162
 5941 00b9 1B000000 		.4byte	.LVL164-1
 5942 00bd 0100     		.2byte	0x1
ARM GAS  /tmp/ccfM1LZ3.s 			page 126


 5943 00bf 53       		.byte	0x53
 5944 00c0 1B000000 		.4byte	.LVL164-1
 5945 00c4 2C000000 		.4byte	.LFE186
 5946 00c8 0400     		.2byte	0x4
 5947 00ca F3       		.byte	0xf3
 5948 00cb 01       		.uleb128 0x1
 5949 00cc 50       		.byte	0x50
 5950 00cd 9F       		.byte	0x9f
 5951 00ce 00000000 		.4byte	0
 5952 00d2 00000000 		.4byte	0
 5953              	.LLST99:
 5954 00d6 00000000 		.4byte	.LVL161
 5955 00da 00000000 		.4byte	.LVL161
 5956 00de 0100     		.2byte	0x1
 5957 00e0 51       		.byte	0x51
 5958 00e1 00000000 		.4byte	.LVL161
 5959 00e5 0E000000 		.4byte	.LVL163
 5960 00e9 1600     		.2byte	0x16
 5961 00eb 71       		.byte	0x71
 5962 00ec 00       		.sleb128 0
 5963 00ed 12       		.byte	0x12
 5964 00ee 40       		.byte	0x40
 5965 00ef 4B       		.byte	0x4b
 5966 00f0 24       		.byte	0x24
 5967 00f1 22       		.byte	0x22
 5968 00f2 08       		.byte	0x8
 5969 00f3 80       		.byte	0x80
 5970 00f4 16       		.byte	0x16
 5971 00f5 14       		.byte	0x14
 5972 00f6 40       		.byte	0x40
 5973 00f7 4B       		.byte	0x4b
 5974 00f8 24       		.byte	0x24
 5975 00f9 22       		.byte	0x22
 5976 00fa 2D       		.byte	0x2d
 5977 00fb 28       		.byte	0x28
 5978 00fc 0100     		.2byte	0x1
 5979 00fe 16       		.byte	0x16
 5980 00ff 13       		.byte	0x13
 5981 0100 9F       		.byte	0x9f
 5982 0101 0E000000 		.4byte	.LVL163
 5983 0105 2C000000 		.4byte	.LFE186
 5984 0109 1700     		.2byte	0x17
 5985 010b F3       		.byte	0xf3
 5986 010c 01       		.uleb128 0x1
 5987 010d 51       		.byte	0x51
 5988 010e 12       		.byte	0x12
 5989 010f 40       		.byte	0x40
 5990 0110 4B       		.byte	0x4b
 5991 0111 24       		.byte	0x24
 5992 0112 22       		.byte	0x22
 5993 0113 08       		.byte	0x8
 5994 0114 80       		.byte	0x80
 5995 0115 16       		.byte	0x16
 5996 0116 14       		.byte	0x14
 5997 0117 40       		.byte	0x40
 5998 0118 4B       		.byte	0x4b
 5999 0119 24       		.byte	0x24
ARM GAS  /tmp/ccfM1LZ3.s 			page 127


 6000 011a 22       		.byte	0x22
 6001 011b 2D       		.byte	0x2d
 6002 011c 28       		.byte	0x28
 6003 011d 0100     		.2byte	0x1
 6004 011f 16       		.byte	0x16
 6005 0120 13       		.byte	0x13
 6006 0121 9F       		.byte	0x9f
 6007 0122 00000000 		.4byte	0
 6008 0126 00000000 		.4byte	0
 6009              	.LLST95:
 6010 012a 00000000 		.4byte	.LVL153
 6011 012e 14000000 		.4byte	.LVL155
 6012 0132 0100     		.2byte	0x1
 6013 0134 50       		.byte	0x50
 6014 0135 14000000 		.4byte	.LVL155
 6015 0139 32000000 		.4byte	.LVL159
 6016 013d 0100     		.2byte	0x1
 6017 013f 54       		.byte	0x54
 6018 0140 32000000 		.4byte	.LVL159
 6019 0144 48000000 		.4byte	.LFE185
 6020 0148 0400     		.2byte	0x4
 6021 014a F3       		.byte	0xf3
 6022 014b 01       		.uleb128 0x1
 6023 014c 50       		.byte	0x50
 6024 014d 9F       		.byte	0x9f
 6025 014e 00000000 		.4byte	0
 6026 0152 00000000 		.4byte	0
 6027              	.LLST96:
 6028 0156 00000000 		.4byte	.LVL153
 6029 015a 12000000 		.4byte	.LVL154
 6030 015e 0100     		.2byte	0x1
 6031 0160 51       		.byte	0x51
 6032 0161 12000000 		.4byte	.LVL154
 6033 0165 42000000 		.4byte	.LVL160
 6034 0169 0100     		.2byte	0x1
 6035 016b 55       		.byte	0x55
 6036 016c 42000000 		.4byte	.LVL160
 6037 0170 48000000 		.4byte	.LFE185
 6038 0174 1700     		.2byte	0x17
 6039 0176 34       		.byte	0x34
 6040 0177 F3       		.byte	0xf3
 6041 0178 01       		.uleb128 0x1
 6042 0179 51       		.byte	0x51
 6043 017a F3       		.byte	0xf3
 6044 017b 01       		.uleb128 0x1
 6045 017c 51       		.byte	0x51
 6046 017d 40       		.byte	0x40
 6047 017e 4B       		.byte	0x4b
 6048 017f 24       		.byte	0x24
 6049 0180 22       		.byte	0x22
 6050 0181 0C       		.byte	0xc
 6051 0182 04000080 		.4byte	0x80000004
 6052 0186 2A       		.byte	0x2a
 6053 0187 28       		.byte	0x28
 6054 0188 0100     		.2byte	0x1
 6055 018a 16       		.byte	0x16
 6056 018b 13       		.byte	0x13
ARM GAS  /tmp/ccfM1LZ3.s 			page 128


 6057 018c 9F       		.byte	0x9f
 6058 018d 00000000 		.4byte	0
 6059 0191 00000000 		.4byte	0
 6060              	.LLST97:
 6061 0195 26000000 		.4byte	.LVL158
 6062 0199 32000000 		.4byte	.LVL159
 6063 019d 0200     		.2byte	0x2
 6064 019f 30       		.byte	0x30
 6065 01a0 9F       		.byte	0x9f
 6066 01a1 00000000 		.4byte	0
 6067 01a5 00000000 		.4byte	0
 6068              	.LLST94:
 6069 01a9 00000000 		.4byte	.LVL144
 6070 01ad 06000000 		.4byte	.LVL145
 6071 01b1 0100     		.2byte	0x1
 6072 01b3 50       		.byte	0x50
 6073 01b4 06000000 		.4byte	.LVL145
 6074 01b8 08000000 		.4byte	.LVL146
 6075 01bc 0400     		.2byte	0x4
 6076 01be F3       		.byte	0xf3
 6077 01bf 01       		.uleb128 0x1
 6078 01c0 50       		.byte	0x50
 6079 01c1 9F       		.byte	0x9f
 6080 01c2 08000000 		.4byte	.LVL146
 6081 01c6 0F000000 		.4byte	.LVL147-1
 6082 01ca 0100     		.2byte	0x1
 6083 01cc 50       		.byte	0x50
 6084 01cd 0F000000 		.4byte	.LVL147-1
 6085 01d1 28000000 		.4byte	.LVL150
 6086 01d5 0100     		.2byte	0x1
 6087 01d7 54       		.byte	0x54
 6088 01d8 28000000 		.4byte	.LVL150
 6089 01dc 2C000000 		.4byte	.LFE181
 6090 01e0 0400     		.2byte	0x4
 6091 01e2 F3       		.byte	0xf3
 6092 01e3 01       		.uleb128 0x1
 6093 01e4 50       		.byte	0x50
 6094 01e5 9F       		.byte	0x9f
 6095 01e6 00000000 		.4byte	0
 6096 01ea 00000000 		.4byte	0
 6097              	.LLST77:
 6098 01ee 00000000 		.4byte	.LVL98
 6099 01f2 0C000000 		.4byte	.LVL101
 6100 01f6 0100     		.2byte	0x1
 6101 01f8 50       		.byte	0x50
 6102 01f9 0C000000 		.4byte	.LVL101
 6103 01fd 16000000 		.4byte	.LVL104
 6104 0201 0100     		.2byte	0x1
 6105 0203 57       		.byte	0x57
 6106 0204 16000000 		.4byte	.LVL104
 6107 0208 1C000000 		.4byte	.LVL105
 6108 020c 0400     		.2byte	0x4
 6109 020e F3       		.byte	0xf3
 6110 020f 01       		.uleb128 0x1
 6111 0210 50       		.byte	0x50
 6112 0211 9F       		.byte	0x9f
 6113 0212 1C000000 		.4byte	.LVL105
ARM GAS  /tmp/ccfM1LZ3.s 			page 129


 6114 0216 22000000 		.4byte	.LVL107
 6115 021a 0100     		.2byte	0x1
 6116 021c 57       		.byte	0x57
 6117 021d 22000000 		.4byte	.LVL107
 6118 0221 88000000 		.4byte	.LFE179
 6119 0225 0400     		.2byte	0x4
 6120 0227 F3       		.byte	0xf3
 6121 0228 01       		.uleb128 0x1
 6122 0229 50       		.byte	0x50
 6123 022a 9F       		.byte	0x9f
 6124 022b 00000000 		.4byte	0
 6125 022f 00000000 		.4byte	0
 6126              	.LLST78:
 6127 0233 00000000 		.4byte	.LVL98
 6128 0237 0E000000 		.4byte	.LVL102
 6129 023b 0100     		.2byte	0x1
 6130 023d 51       		.byte	0x51
 6131 023e 0E000000 		.4byte	.LVL102
 6132 0242 16000000 		.4byte	.LVL104
 6133 0246 0100     		.2byte	0x1
 6134 0248 56       		.byte	0x56
 6135 0249 16000000 		.4byte	.LVL104
 6136 024d 1C000000 		.4byte	.LVL105
 6137 0251 0400     		.2byte	0x4
 6138 0253 F3       		.byte	0xf3
 6139 0254 01       		.uleb128 0x1
 6140 0255 51       		.byte	0x51
 6141 0256 9F       		.byte	0x9f
 6142 0257 1C000000 		.4byte	.LVL105
 6143 025b 48000000 		.4byte	.LVL115
 6144 025f 0100     		.2byte	0x1
 6145 0261 56       		.byte	0x56
 6146 0262 48000000 		.4byte	.LVL115
 6147 0266 88000000 		.4byte	.LFE179
 6148 026a 0400     		.2byte	0x4
 6149 026c F3       		.byte	0xf3
 6150 026d 01       		.uleb128 0x1
 6151 026e 51       		.byte	0x51
 6152 026f 9F       		.byte	0x9f
 6153 0270 00000000 		.4byte	0
 6154 0274 00000000 		.4byte	0
 6155              	.LLST79:
 6156 0278 08000000 		.4byte	.LVL99
 6157 027c 16000000 		.4byte	.LVL104
 6158 0280 0600     		.2byte	0x6
 6159 0282 0C       		.byte	0xc
 6160 0283 000C0E40 		.4byte	0x400e0c00
 6161 0287 9F       		.byte	0x9f
 6162 0288 1C000000 		.4byte	.LVL105
 6163 028c 80000000 		.4byte	.LVL126
 6164 0290 0600     		.2byte	0x6
 6165 0292 0C       		.byte	0xc
 6166 0293 000C0E40 		.4byte	0x400e0c00
 6167 0297 9F       		.byte	0x9f
 6168 0298 00000000 		.4byte	0
 6169 029c 00000000 		.4byte	0
 6170              	.LLST80:
ARM GAS  /tmp/ccfM1LZ3.s 			page 130


 6171 02a0 08000000 		.4byte	.LVL99
 6172 02a4 0C000000 		.4byte	.LVL101
 6173 02a8 0800     		.2byte	0x8
 6174 02aa 70       		.byte	0x70
 6175 02ab 8080807E 		.sleb128 -4194304
 6176 02af 39       		.byte	0x39
 6177 02b0 25       		.byte	0x25
 6178 02b1 9F       		.byte	0x9f
 6179 02b2 0C000000 		.4byte	.LVL101
 6180 02b6 16000000 		.4byte	.LVL104
 6181 02ba 0800     		.2byte	0x8
 6182 02bc 77       		.byte	0x77
 6183 02bd 8080807E 		.sleb128 -4194304
 6184 02c1 39       		.byte	0x39
 6185 02c2 25       		.byte	0x25
 6186 02c3 9F       		.byte	0x9f
 6187 02c4 1C000000 		.4byte	.LVL105
 6188 02c8 22000000 		.4byte	.LVL107
 6189 02cc 0800     		.2byte	0x8
 6190 02ce 77       		.byte	0x77
 6191 02cf 8080807E 		.sleb128 -4194304
 6192 02d3 39       		.byte	0x39
 6193 02d4 25       		.byte	0x25
 6194 02d5 9F       		.byte	0x9f
 6195 02d6 22000000 		.4byte	.LVL107
 6196 02da 80000000 		.4byte	.LVL126
 6197 02de 0A00     		.2byte	0xa
 6198 02e0 F3       		.byte	0xf3
 6199 02e1 01       		.uleb128 0x1
 6200 02e2 50       		.byte	0x50
 6201 02e3 40       		.byte	0x40
 6202 02e4 42       		.byte	0x42
 6203 02e5 24       		.byte	0x24
 6204 02e6 1C       		.byte	0x1c
 6205 02e7 39       		.byte	0x39
 6206 02e8 25       		.byte	0x25
 6207 02e9 9F       		.byte	0x9f
 6208 02ea 00000000 		.4byte	0
 6209 02ee 00000000 		.4byte	0
 6210              	.LLST81:
 6211 02f2 0A000000 		.4byte	.LVL100
 6212 02f6 0E000000 		.4byte	.LVL102
 6213 02fa 0800     		.2byte	0x8
 6214 02fc 71       		.byte	0x71
 6215 02fd 8080807E 		.sleb128 -4194304
 6216 0301 39       		.byte	0x39
 6217 0302 25       		.byte	0x25
 6218 0303 9F       		.byte	0x9f
 6219 0304 0E000000 		.4byte	.LVL102
 6220 0308 16000000 		.4byte	.LVL104
 6221 030c 0800     		.2byte	0x8
 6222 030e 76       		.byte	0x76
 6223 030f 8080807E 		.sleb128 -4194304
 6224 0313 39       		.byte	0x39
 6225 0314 25       		.byte	0x25
 6226 0315 9F       		.byte	0x9f
 6227 0316 1C000000 		.4byte	.LVL105
ARM GAS  /tmp/ccfM1LZ3.s 			page 131


 6228 031a 48000000 		.4byte	.LVL115
 6229 031e 0800     		.2byte	0x8
 6230 0320 76       		.byte	0x76
 6231 0321 8080807E 		.sleb128 -4194304
 6232 0325 39       		.byte	0x39
 6233 0326 25       		.byte	0x25
 6234 0327 9F       		.byte	0x9f
 6235 0328 48000000 		.4byte	.LVL115
 6236 032c 80000000 		.4byte	.LVL126
 6237 0330 0A00     		.2byte	0xa
 6238 0332 F3       		.byte	0xf3
 6239 0333 01       		.uleb128 0x1
 6240 0334 51       		.byte	0x51
 6241 0335 40       		.byte	0x40
 6242 0336 42       		.byte	0x42
 6243 0337 24       		.byte	0x24
 6244 0338 1C       		.byte	0x1c
 6245 0339 39       		.byte	0x39
 6246 033a 25       		.byte	0x25
 6247 033b 9F       		.byte	0x9f
 6248 033c 00000000 		.4byte	0
 6249 0340 00000000 		.4byte	0
 6250              	.LLST82:
 6251 0344 0A000000 		.4byte	.LVL100
 6252 0348 0C000000 		.4byte	.LVL101
 6253 034c 0A00     		.2byte	0xa
 6254 034e 70       		.byte	0x70
 6255 034f 8080807E 		.sleb128 -4194304
 6256 0353 39       		.byte	0x39
 6257 0354 25       		.byte	0x25
 6258 0355 35       		.byte	0x35
 6259 0356 25       		.byte	0x25
 6260 0357 9F       		.byte	0x9f
 6261 0358 0C000000 		.4byte	.LVL101
 6262 035c 16000000 		.4byte	.LVL104
 6263 0360 0A00     		.2byte	0xa
 6264 0362 77       		.byte	0x77
 6265 0363 8080807E 		.sleb128 -4194304
 6266 0367 39       		.byte	0x39
 6267 0368 25       		.byte	0x25
 6268 0369 35       		.byte	0x35
 6269 036a 25       		.byte	0x25
 6270 036b 9F       		.byte	0x9f
 6271 036c 16000000 		.4byte	.LVL104
 6272 0370 1C000000 		.4byte	.LVL105
 6273 0374 0C00     		.2byte	0xc
 6274 0376 F3       		.byte	0xf3
 6275 0377 01       		.uleb128 0x1
 6276 0378 50       		.byte	0x50
 6277 0379 40       		.byte	0x40
 6278 037a 42       		.byte	0x42
 6279 037b 24       		.byte	0x24
 6280 037c 1C       		.byte	0x1c
 6281 037d 39       		.byte	0x39
 6282 037e 25       		.byte	0x25
 6283 037f 35       		.byte	0x35
 6284 0380 25       		.byte	0x25
ARM GAS  /tmp/ccfM1LZ3.s 			page 132


 6285 0381 9F       		.byte	0x9f
 6286 0382 1C000000 		.4byte	.LVL105
 6287 0386 22000000 		.4byte	.LVL107
 6288 038a 0A00     		.2byte	0xa
 6289 038c 77       		.byte	0x77
 6290 038d 8080807E 		.sleb128 -4194304
 6291 0391 39       		.byte	0x39
 6292 0392 25       		.byte	0x25
 6293 0393 35       		.byte	0x35
 6294 0394 25       		.byte	0x25
 6295 0395 9F       		.byte	0x9f
 6296 0396 22000000 		.4byte	.LVL107
 6297 039a 88000000 		.4byte	.LFE179
 6298 039e 0C00     		.2byte	0xc
 6299 03a0 F3       		.byte	0xf3
 6300 03a1 01       		.uleb128 0x1
 6301 03a2 50       		.byte	0x50
 6302 03a3 40       		.byte	0x40
 6303 03a4 42       		.byte	0x42
 6304 03a5 24       		.byte	0x24
 6305 03a6 1C       		.byte	0x1c
 6306 03a7 39       		.byte	0x39
 6307 03a8 25       		.byte	0x25
 6308 03a9 35       		.byte	0x35
 6309 03aa 25       		.byte	0x25
 6310 03ab 9F       		.byte	0x9f
 6311 03ac 00000000 		.4byte	0
 6312 03b0 00000000 		.4byte	0
 6313              	.LLST83:
 6314 03b4 0A000000 		.4byte	.LVL100
 6315 03b8 0E000000 		.4byte	.LVL102
 6316 03bc 0A00     		.2byte	0xa
 6317 03be 71       		.byte	0x71
 6318 03bf 8080807E 		.sleb128 -4194304
 6319 03c3 39       		.byte	0x39
 6320 03c4 25       		.byte	0x25
 6321 03c5 35       		.byte	0x35
 6322 03c6 25       		.byte	0x25
 6323 03c7 9F       		.byte	0x9f
 6324 03c8 0E000000 		.4byte	.LVL102
 6325 03cc 16000000 		.4byte	.LVL104
 6326 03d0 0A00     		.2byte	0xa
 6327 03d2 76       		.byte	0x76
 6328 03d3 8080807E 		.sleb128 -4194304
 6329 03d7 39       		.byte	0x39
 6330 03d8 25       		.byte	0x25
 6331 03d9 35       		.byte	0x35
 6332 03da 25       		.byte	0x25
 6333 03db 9F       		.byte	0x9f
 6334 03dc 16000000 		.4byte	.LVL104
 6335 03e0 1C000000 		.4byte	.LVL105
 6336 03e4 0C00     		.2byte	0xc
 6337 03e6 F3       		.byte	0xf3
 6338 03e7 01       		.uleb128 0x1
 6339 03e8 51       		.byte	0x51
 6340 03e9 40       		.byte	0x40
 6341 03ea 42       		.byte	0x42
ARM GAS  /tmp/ccfM1LZ3.s 			page 133


 6342 03eb 24       		.byte	0x24
 6343 03ec 1C       		.byte	0x1c
 6344 03ed 39       		.byte	0x39
 6345 03ee 25       		.byte	0x25
 6346 03ef 35       		.byte	0x35
 6347 03f0 25       		.byte	0x25
 6348 03f1 9F       		.byte	0x9f
 6349 03f2 1C000000 		.4byte	.LVL105
 6350 03f6 48000000 		.4byte	.LVL115
 6351 03fa 0A00     		.2byte	0xa
 6352 03fc 76       		.byte	0x76
 6353 03fd 8080807E 		.sleb128 -4194304
 6354 0401 39       		.byte	0x39
 6355 0402 25       		.byte	0x25
 6356 0403 35       		.byte	0x35
 6357 0404 25       		.byte	0x25
 6358 0405 9F       		.byte	0x9f
 6359 0406 48000000 		.4byte	.LVL115
 6360 040a 88000000 		.4byte	.LFE179
 6361 040e 0C00     		.2byte	0xc
 6362 0410 F3       		.byte	0xf3
 6363 0411 01       		.uleb128 0x1
 6364 0412 51       		.byte	0x51
 6365 0413 40       		.byte	0x40
 6366 0414 42       		.byte	0x42
 6367 0415 24       		.byte	0x24
 6368 0416 1C       		.byte	0x1c
 6369 0417 39       		.byte	0x39
 6370 0418 25       		.byte	0x25
 6371 0419 35       		.byte	0x35
 6372 041a 25       		.byte	0x25
 6373 041b 9F       		.byte	0x9f
 6374 041c 00000000 		.4byte	0
 6375 0420 00000000 		.4byte	0
 6376              	.LLST84:
 6377 0424 2A000000 		.4byte	.LVL109
 6378 0428 30000000 		.4byte	.LVL110
 6379 042c 0100     		.2byte	0x1
 6380 042e 50       		.byte	0x50
 6381 042f 38000000 		.4byte	.LVL113
 6382 0433 3A000000 		.4byte	.LVL114
 6383 0437 0100     		.2byte	0x1
 6384 0439 50       		.byte	0x50
 6385 043a 4C000000 		.4byte	.LVL117
 6386 043e 73000000 		.4byte	.LVL123-1
 6387 0442 0100     		.2byte	0x1
 6388 0444 51       		.byte	0x51
 6389 0445 78000000 		.4byte	.LVL124
 6390 0449 7E000000 		.4byte	.LVL125
 6391 044d 0100     		.2byte	0x1
 6392 044f 50       		.byte	0x50
 6393 0450 7E000000 		.4byte	.LVL125
 6394 0454 88000000 		.4byte	.LFE179
 6395 0458 0100     		.2byte	0x1
 6396 045a 51       		.byte	0x51
 6397 045b 00000000 		.4byte	0
 6398 045f 00000000 		.4byte	0
ARM GAS  /tmp/ccfM1LZ3.s 			page 134


 6399              	.LLST85:
 6400 0463 12000000 		.4byte	.LVL103
 6401 0467 16000000 		.4byte	.LVL104
 6402 046b 0100     		.2byte	0x1
 6403 046d 50       		.byte	0x50
 6404 046e 1C000000 		.4byte	.LVL105
 6405 0472 1E000000 		.4byte	.LVL106
 6406 0476 0100     		.2byte	0x1
 6407 0478 50       		.byte	0x50
 6408 0479 1E000000 		.4byte	.LVL106
 6409 047d 30000000 		.4byte	.LVL110
 6410 0481 0100     		.2byte	0x1
 6411 0483 54       		.byte	0x54
 6412 0484 00000000 		.4byte	0
 6413 0488 00000000 		.4byte	0
 6414              	.LLST86:
 6415 048c 00000000 		.4byte	.LVL98
 6416 0490 16000000 		.4byte	.LVL104
 6417 0494 0200     		.2byte	0x2
 6418 0496 30       		.byte	0x30
 6419 0497 9F       		.byte	0x9f
 6420 0498 1C000000 		.4byte	.LVL105
 6421 049c 56000000 		.4byte	.LVL119
 6422 04a0 0200     		.2byte	0x2
 6423 04a2 30       		.byte	0x30
 6424 04a3 9F       		.byte	0x9f
 6425 04a4 56000000 		.4byte	.LVL119
 6426 04a8 7E000000 		.4byte	.LVL125
 6427 04ac 0100     		.2byte	0x1
 6428 04ae 54       		.byte	0x54
 6429 04af 7E000000 		.4byte	.LVL125
 6430 04b3 88000000 		.4byte	.LFE179
 6431 04b7 0200     		.2byte	0x2
 6432 04b9 30       		.byte	0x30
 6433 04ba 9F       		.byte	0x9f
 6434 04bb 00000000 		.4byte	0
 6435 04bf 00000000 		.4byte	0
 6436              	.LLST87:
 6437 04c3 00000000 		.4byte	.LVL98
 6438 04c7 16000000 		.4byte	.LVL104
 6439 04cb 0200     		.2byte	0x2
 6440 04cd 30       		.byte	0x30
 6441 04ce 9F       		.byte	0x9f
 6442 04cf 1C000000 		.4byte	.LVL105
 6443 04d3 30000000 		.4byte	.LVL110
 6444 04d7 0200     		.2byte	0x2
 6445 04d9 30       		.byte	0x30
 6446 04da 9F       		.byte	0x9f
 6447 04db 30000000 		.4byte	.LVL110
 6448 04df 36000000 		.4byte	.LVL112
 6449 04e3 0100     		.2byte	0x1
 6450 04e5 54       		.byte	0x54
 6451 04e6 36000000 		.4byte	.LVL112
 6452 04ea 38000000 		.4byte	.LVL113
 6453 04ee 0300     		.2byte	0x3
 6454 04f0 74       		.byte	0x74
 6455 04f1 60       		.sleb128 -32
ARM GAS  /tmp/ccfM1LZ3.s 			page 135


 6456 04f2 9F       		.byte	0x9f
 6457 04f3 3A000000 		.4byte	.LVL114
 6458 04f7 4C000000 		.4byte	.LVL117
 6459 04fb 0100     		.2byte	0x1
 6460 04fd 54       		.byte	0x54
 6461 04fe 4C000000 		.4byte	.LVL117
 6462 0502 4E000000 		.4byte	.LVL118
 6463 0506 0300     		.2byte	0x3
 6464 0508 74       		.byte	0x74
 6465 0509 01       		.sleb128 1
 6466 050a 9F       		.byte	0x9f
 6467 050b 4E000000 		.4byte	.LVL118
 6468 050f 5E000000 		.4byte	.LVL121
 6469 0513 0100     		.2byte	0x1
 6470 0515 55       		.byte	0x55
 6471 0516 5E000000 		.4byte	.LVL121
 6472 051a 64000000 		.4byte	.LVL122
 6473 051e 0300     		.2byte	0x3
 6474 0520 75       		.byte	0x75
 6475 0521 01       		.sleb128 1
 6476 0522 9F       		.byte	0x9f
 6477 0523 64000000 		.4byte	.LVL122
 6478 0527 88000000 		.4byte	.LFE179
 6479 052b 0100     		.2byte	0x1
 6480 052d 55       		.byte	0x55
 6481 052e 00000000 		.4byte	0
 6482 0532 00000000 		.4byte	0
 6483              	.LLST88:
 6484 0536 00000000 		.4byte	.LVL98
 6485 053a 16000000 		.4byte	.LVL104
 6486 053e 0200     		.2byte	0x2
 6487 0540 30       		.byte	0x30
 6488 0541 9F       		.byte	0x9f
 6489 0542 1C000000 		.4byte	.LVL105
 6490 0546 4A000000 		.4byte	.LVL116
 6491 054a 0200     		.2byte	0x2
 6492 054c 30       		.byte	0x30
 6493 054d 9F       		.byte	0x9f
 6494 054e 4A000000 		.4byte	.LVL116
 6495 0552 5C000000 		.4byte	.LVL120
 6496 0556 0100     		.2byte	0x1
 6497 0558 53       		.byte	0x53
 6498 0559 5C000000 		.4byte	.LVL120
 6499 055d 64000000 		.4byte	.LVL122
 6500 0561 0300     		.2byte	0x3
 6501 0563 73       		.byte	0x73
 6502 0564 7F       		.sleb128 -1
 6503 0565 9F       		.byte	0x9f
 6504 0566 64000000 		.4byte	.LVL122
 6505 056a 73000000 		.4byte	.LVL123-1
 6506 056e 0100     		.2byte	0x1
 6507 0570 53       		.byte	0x53
 6508 0571 78000000 		.4byte	.LVL124
 6509 0575 88000000 		.4byte	.LFE179
 6510 0579 0100     		.2byte	0x1
 6511 057b 53       		.byte	0x53
 6512 057c 00000000 		.4byte	0
ARM GAS  /tmp/ccfM1LZ3.s 			page 136


 6513 0580 00000000 		.4byte	0
 6514              	.LLST57:
 6515 0584 00000000 		.4byte	.LVL82
 6516 0588 30000000 		.4byte	.LVL91
 6517 058c 0100     		.2byte	0x1
 6518 058e 50       		.byte	0x50
 6519 058f 30000000 		.4byte	.LVL91
 6520 0593 54000000 		.4byte	.LFE178
 6521 0597 0400     		.2byte	0x4
 6522 0599 F3       		.byte	0xf3
 6523 059a 01       		.uleb128 0x1
 6524 059b 50       		.byte	0x50
 6525 059c 9F       		.byte	0x9f
 6526 059d 00000000 		.4byte	0
 6527 05a1 00000000 		.4byte	0
 6528              	.LLST58:
 6529 05a5 00000000 		.4byte	.LVL82
 6530 05a9 0A000000 		.4byte	.LVL83
 6531 05ad 0100     		.2byte	0x1
 6532 05af 51       		.byte	0x51
 6533 05b0 0A000000 		.4byte	.LVL83
 6534 05b4 54000000 		.4byte	.LFE178
 6535 05b8 0400     		.2byte	0x4
 6536 05ba F3       		.byte	0xf3
 6537 05bb 01       		.uleb128 0x1
 6538 05bc 51       		.byte	0x51
 6539 05bd 9F       		.byte	0x9f
 6540 05be 00000000 		.4byte	0
 6541 05c2 00000000 		.4byte	0
 6542              	.LLST59:
 6543 05c6 00000000 		.4byte	.LVL82
 6544 05ca 30000000 		.4byte	.LVL91
 6545 05ce 0100     		.2byte	0x1
 6546 05d0 52       		.byte	0x52
 6547 05d1 30000000 		.4byte	.LVL91
 6548 05d5 54000000 		.4byte	.LFE178
 6549 05d9 0400     		.2byte	0x4
 6550 05db F3       		.byte	0xf3
 6551 05dc 01       		.uleb128 0x1
 6552 05dd 52       		.byte	0x52
 6553 05de 9F       		.byte	0x9f
 6554 05df 00000000 		.4byte	0
 6555 05e3 00000000 		.4byte	0
 6556              	.LLST60:
 6557 05e7 00000000 		.4byte	.LVL82
 6558 05eb 30000000 		.4byte	.LVL91
 6559 05ef 0100     		.2byte	0x1
 6560 05f1 53       		.byte	0x53
 6561 05f2 30000000 		.4byte	.LVL91
 6562 05f6 54000000 		.4byte	.LFE178
 6563 05fa 0400     		.2byte	0x4
 6564 05fc F3       		.byte	0xf3
 6565 05fd 01       		.uleb128 0x1
 6566 05fe 53       		.byte	0x53
 6567 05ff 9F       		.byte	0x9f
 6568 0600 00000000 		.4byte	0
 6569 0604 00000000 		.4byte	0
ARM GAS  /tmp/ccfM1LZ3.s 			page 137


 6570              	.LLST61:
 6571 0608 0E000000 		.4byte	.LVL85
 6572 060c 1A000000 		.4byte	.LVL87
 6573 0610 0100     		.2byte	0x1
 6574 0612 54       		.byte	0x54
 6575 0613 1A000000 		.4byte	.LVL87
 6576 0617 30000000 		.4byte	.LVL91
 6577 061b 0700     		.2byte	0x7
 6578 061d 70       		.byte	0x70
 6579 061e 00       		.sleb128 0
 6580 061f 0B       		.byte	0xb
 6581 0620 00C0     		.2byte	0xc000
 6582 0622 1A       		.byte	0x1a
 6583 0623 9F       		.byte	0x9f
 6584 0624 30000000 		.4byte	.LVL91
 6585 0628 54000000 		.4byte	.LFE178
 6586 062c 0800     		.2byte	0x8
 6587 062e F3       		.byte	0xf3
 6588 062f 01       		.uleb128 0x1
 6589 0630 50       		.byte	0x50
 6590 0631 0B       		.byte	0xb
 6591 0632 00C0     		.2byte	0xc000
 6592 0634 1A       		.byte	0x1a
 6593 0635 9F       		.byte	0x9f
 6594 0636 00000000 		.4byte	0
 6595 063a 00000000 		.4byte	0
 6596              	.LLST62:
 6597 063e 0E000000 		.4byte	.LVL85
 6598 0642 1E000000 		.4byte	.LVL88
 6599 0646 0100     		.2byte	0x1
 6600 0648 55       		.byte	0x55
 6601 0649 1E000000 		.4byte	.LVL88
 6602 064d 30000000 		.4byte	.LVL91
 6603 0651 0500     		.2byte	0x5
 6604 0653 71       		.byte	0x71
 6605 0654 FFFF00   		.sleb128 16383
 6606 0657 9F       		.byte	0x9f
 6607 0658 30000000 		.4byte	.LVL91
 6608 065c 54000000 		.4byte	.LFE178
 6609 0660 0B00     		.2byte	0xb
 6610 0662 F3       		.byte	0xf3
 6611 0663 01       		.uleb128 0x1
 6612 0664 51       		.byte	0x51
 6613 0665 0B       		.byte	0xb
 6614 0666 00C0     		.2byte	0xc000
 6615 0668 1A       		.byte	0x1a
 6616 0669 23       		.byte	0x23
 6617 066a FF7F     		.uleb128 0x3fff
 6618 066c 9F       		.byte	0x9f
 6619 066d 00000000 		.4byte	0
 6620 0671 00000000 		.4byte	0
 6621              	.LLST63:
 6622 0675 24000000 		.4byte	.LVL89
 6623 0679 30000000 		.4byte	.LVL91
 6624 067d 0100     		.2byte	0x1
 6625 067f 54       		.byte	0x54
 6626 0680 32000000 		.4byte	.LVL92
ARM GAS  /tmp/ccfM1LZ3.s 			page 138


 6627 0684 3E000000 		.4byte	.LVL94
 6628 0688 0100     		.2byte	0x1
 6629 068a 54       		.byte	0x54
 6630 068b 48000000 		.4byte	.LVL96
 6631 068f 4C000000 		.4byte	.LVL97
 6632 0693 0100     		.2byte	0x1
 6633 0695 54       		.byte	0x54
 6634 0696 00000000 		.4byte	0
 6635 069a 00000000 		.4byte	0
 6636              	.LLST64:
 6637 069e 28000000 		.4byte	.LVL90
 6638 06a2 4C000000 		.4byte	.LVL97
 6639 06a6 0100     		.2byte	0x1
 6640 06a8 55       		.byte	0x55
 6641 06a9 4C000000 		.4byte	.LVL97
 6642 06ad 54000000 		.4byte	.LFE178
 6643 06b1 1400     		.2byte	0x14
 6644 06b3 F3       		.byte	0xf3
 6645 06b4 01       		.uleb128 0x1
 6646 06b5 51       		.byte	0x51
 6647 06b6 0B       		.byte	0xb
 6648 06b7 00C0     		.2byte	0xc000
 6649 06b9 1A       		.byte	0x1a
 6650 06ba 0C       		.byte	0xc
 6651 06bb 01C03F00 		.4byte	0x3fc001
 6652 06bf 1C       		.byte	0x1c
 6653 06c0 09       		.byte	0x9
 6654 06c1 EB       		.byte	0xeb
 6655 06c2 24       		.byte	0x24
 6656 06c3 09       		.byte	0x9
 6657 06c4 F4       		.byte	0xf4
 6658 06c5 25       		.byte	0x25
 6659 06c6 9F       		.byte	0x9f
 6660 06c7 00000000 		.4byte	0
 6661 06cb 00000000 		.4byte	0
 6662              	.LLST65:
 6663 06cf 30000000 		.4byte	.LVL91
 6664 06d3 36000000 		.4byte	.LVL93
 6665 06d7 0100     		.2byte	0x1
 6666 06d9 50       		.byte	0x50
 6667 06da 42000000 		.4byte	.LVL95
 6668 06de 48000000 		.4byte	.LVL96
 6669 06e2 0100     		.2byte	0x1
 6670 06e4 50       		.byte	0x50
 6671 06e5 00000000 		.4byte	0
 6672 06e9 00000000 		.4byte	0
 6673              	.LLST66:
 6674 06ed 00000000 		.4byte	.LVL82
 6675 06f1 0E000000 		.4byte	.LVL85
 6676 06f5 0600     		.2byte	0x6
 6677 06f7 F2       		.byte	0xf2
 6678 06f8 7F0F0000 		.4byte	.Ldebug_info0+3967
 6679 06fc 00       		.sleb128 0
 6680 06fd 00000000 		.4byte	0
 6681 0701 00000000 		.4byte	0
 6682              	.LLST67:
 6683 0705 00000000 		.4byte	.LVL82
ARM GAS  /tmp/ccfM1LZ3.s 			page 139


 6684 0709 0E000000 		.4byte	.LVL85
 6685 070d 0600     		.2byte	0x6
 6686 070f F2       		.byte	0xf2
 6687 0710 6F0F0000 		.4byte	.Ldebug_info0+3951
 6688 0714 00       		.sleb128 0
 6689 0715 00000000 		.4byte	0
 6690 0719 00000000 		.4byte	0
 6691              	.LLST68:
 6692 071d 00000000 		.4byte	.LVL82
 6693 0721 0A000000 		.4byte	.LVL83
 6694 0725 0100     		.2byte	0x1
 6695 0727 51       		.byte	0x51
 6696 0728 0A000000 		.4byte	.LVL83
 6697 072c 0E000000 		.4byte	.LVL85
 6698 0730 0400     		.2byte	0x4
 6699 0732 F3       		.byte	0xf3
 6700 0733 01       		.uleb128 0x1
 6701 0734 51       		.byte	0x51
 6702 0735 9F       		.byte	0x9f
 6703 0736 00000000 		.4byte	0
 6704 073a 00000000 		.4byte	0
 6705              	.LLST69:
 6706 073e 00000000 		.4byte	.LVL82
 6707 0742 0E000000 		.4byte	.LVL85
 6708 0746 0100     		.2byte	0x1
 6709 0748 50       		.byte	0x50
 6710 0749 00000000 		.4byte	0
 6711 074d 00000000 		.4byte	0
 6712              	.LLST70:
 6713 0751 0C000000 		.4byte	.LVL84
 6714 0755 0E000000 		.4byte	.LVL85
 6715 0759 0100     		.2byte	0x1
 6716 075b 54       		.byte	0x54
 6717 075c 00000000 		.4byte	0
 6718 0760 00000000 		.4byte	0
 6719              	.LLST71:
 6720 0764 16000000 		.4byte	.LVL86
 6721 0768 24000000 		.4byte	.LVL89
 6722 076c 0200     		.2byte	0x2
 6723 076e 30       		.byte	0x30
 6724 076f 9F       		.byte	0x9f
 6725 0770 00000000 		.4byte	0
 6726 0774 00000000 		.4byte	0
 6727              	.LLST72:
 6728 0778 16000000 		.4byte	.LVL86
 6729 077c 24000000 		.4byte	.LVL89
 6730 0780 0600     		.2byte	0x6
 6731 0782 F2       		.byte	0xf2
 6732 0783 8F0F0000 		.4byte	.Ldebug_info0+3983
 6733 0787 00       		.sleb128 0
 6734 0788 00000000 		.4byte	0
 6735 078c 00000000 		.4byte	0
 6736              	.LLST73:
 6737 0790 16000000 		.4byte	.LVL86
 6738 0794 1A000000 		.4byte	.LVL87
 6739 0798 0100     		.2byte	0x1
 6740 079a 54       		.byte	0x54
ARM GAS  /tmp/ccfM1LZ3.s 			page 140


 6741 079b 1A000000 		.4byte	.LVL87
 6742 079f 24000000 		.4byte	.LVL89
 6743 07a3 0700     		.2byte	0x7
 6744 07a5 70       		.byte	0x70
 6745 07a6 00       		.sleb128 0
 6746 07a7 0B       		.byte	0xb
 6747 07a8 00C0     		.2byte	0xc000
 6748 07aa 1A       		.byte	0x1a
 6749 07ab 9F       		.byte	0x9f
 6750 07ac 00000000 		.4byte	0
 6751 07b0 00000000 		.4byte	0
 6752              	.LLST74:
 6753 07b4 16000000 		.4byte	.LVL86
 6754 07b8 24000000 		.4byte	.LVL89
 6755 07bc 0600     		.2byte	0x6
 6756 07be F2       		.byte	0xf2
 6757 07bf 5F0F0000 		.4byte	.Ldebug_info0+3935
 6758 07c3 00       		.sleb128 0
 6759 07c4 00000000 		.4byte	0
 6760 07c8 00000000 		.4byte	0
 6761              	.LLST75:
 6762 07cc 24000000 		.4byte	.LVL89
 6763 07d0 30000000 		.4byte	.LVL91
 6764 07d4 0500     		.2byte	0x5
 6765 07d6 71       		.byte	0x71
 6766 07d7 FFFF00   		.sleb128 16383
 6767 07da 9F       		.byte	0x9f
 6768 07db 30000000 		.4byte	.LVL91
 6769 07df 54000000 		.4byte	.LFE178
 6770 07e3 0B00     		.2byte	0xb
 6771 07e5 F3       		.byte	0xf3
 6772 07e6 01       		.uleb128 0x1
 6773 07e7 51       		.byte	0x51
 6774 07e8 0B       		.byte	0xb
 6775 07e9 00C0     		.2byte	0xc000
 6776 07eb 1A       		.byte	0x1a
 6777 07ec 23       		.byte	0x23
 6778 07ed FF7F     		.uleb128 0x3fff
 6779 07ef 9F       		.byte	0x9f
 6780 07f0 00000000 		.4byte	0
 6781 07f4 00000000 		.4byte	0
 6782              	.LLST76:
 6783 07f8 28000000 		.4byte	.LVL90
 6784 07fc 4C000000 		.4byte	.LVL97
 6785 0800 0100     		.2byte	0x1
 6786 0802 55       		.byte	0x55
 6787 0803 4C000000 		.4byte	.LVL97
 6788 0807 54000000 		.4byte	.LFE178
 6789 080b 1400     		.2byte	0x14
 6790 080d F3       		.byte	0xf3
 6791 080e 01       		.uleb128 0x1
 6792 080f 51       		.byte	0x51
 6793 0810 0B       		.byte	0xb
 6794 0811 00C0     		.2byte	0xc000
 6795 0813 1A       		.byte	0x1a
 6796 0814 0C       		.byte	0xc
 6797 0815 01C03F00 		.4byte	0x3fc001
ARM GAS  /tmp/ccfM1LZ3.s 			page 141


 6798 0819 1C       		.byte	0x1c
 6799 081a 09       		.byte	0x9
 6800 081b EB       		.byte	0xeb
 6801 081c 24       		.byte	0x24
 6802 081d 09       		.byte	0x9
 6803 081e F4       		.byte	0xf4
 6804 081f 25       		.byte	0x25
 6805 0820 9F       		.byte	0x9f
 6806 0821 00000000 		.4byte	0
 6807 0825 00000000 		.4byte	0
 6808              	.LLST37:
 6809 0829 00000000 		.4byte	.LVL65
 6810 082d 30000000 		.4byte	.LVL75
 6811 0831 0100     		.2byte	0x1
 6812 0833 50       		.byte	0x50
 6813 0834 30000000 		.4byte	.LVL75
 6814 0838 54000000 		.4byte	.LFE177
 6815 083c 0400     		.2byte	0x4
 6816 083e F3       		.byte	0xf3
 6817 083f 01       		.uleb128 0x1
 6818 0840 50       		.byte	0x50
 6819 0841 9F       		.byte	0x9f
 6820 0842 00000000 		.4byte	0
 6821 0846 00000000 		.4byte	0
 6822              	.LLST38:
 6823 084a 00000000 		.4byte	.LVL65
 6824 084e 0A000000 		.4byte	.LVL66
 6825 0852 0100     		.2byte	0x1
 6826 0854 51       		.byte	0x51
 6827 0855 0A000000 		.4byte	.LVL66
 6828 0859 54000000 		.4byte	.LFE177
 6829 085d 0400     		.2byte	0x4
 6830 085f F3       		.byte	0xf3
 6831 0860 01       		.uleb128 0x1
 6832 0861 51       		.byte	0x51
 6833 0862 9F       		.byte	0x9f
 6834 0863 00000000 		.4byte	0
 6835 0867 00000000 		.4byte	0
 6836              	.LLST39:
 6837 086b 00000000 		.4byte	.LVL65
 6838 086f 30000000 		.4byte	.LVL75
 6839 0873 0100     		.2byte	0x1
 6840 0875 52       		.byte	0x52
 6841 0876 30000000 		.4byte	.LVL75
 6842 087a 54000000 		.4byte	.LFE177
 6843 087e 0400     		.2byte	0x4
 6844 0880 F3       		.byte	0xf3
 6845 0881 01       		.uleb128 0x1
 6846 0882 52       		.byte	0x52
 6847 0883 9F       		.byte	0x9f
 6848 0884 00000000 		.4byte	0
 6849 0888 00000000 		.4byte	0
 6850              	.LLST40:
 6851 088c 00000000 		.4byte	.LVL65
 6852 0890 30000000 		.4byte	.LVL75
 6853 0894 0100     		.2byte	0x1
 6854 0896 53       		.byte	0x53
ARM GAS  /tmp/ccfM1LZ3.s 			page 142


 6855 0897 30000000 		.4byte	.LVL75
 6856 089b 54000000 		.4byte	.LFE177
 6857 089f 0400     		.2byte	0x4
 6858 08a1 F3       		.byte	0xf3
 6859 08a2 01       		.uleb128 0x1
 6860 08a3 53       		.byte	0x53
 6861 08a4 9F       		.byte	0x9f
 6862 08a5 00000000 		.4byte	0
 6863 08a9 00000000 		.4byte	0
 6864              	.LLST41:
 6865 08ad 0E000000 		.4byte	.LVL68
 6866 08b1 1A000000 		.4byte	.LVL70
 6867 08b5 0100     		.2byte	0x1
 6868 08b7 54       		.byte	0x54
 6869 08b8 1A000000 		.4byte	.LVL70
 6870 08bc 20000000 		.4byte	.LVL72
 6871 08c0 0600     		.2byte	0x6
 6872 08c2 74       		.byte	0x74
 6873 08c3 80808002 		.sleb128 4194304
 6874 08c7 9F       		.byte	0x9f
 6875 08c8 20000000 		.4byte	.LVL72
 6876 08cc 30000000 		.4byte	.LVL75
 6877 08d0 0700     		.2byte	0x7
 6878 08d2 70       		.byte	0x70
 6879 08d3 00       		.sleb128 0
 6880 08d4 0B       		.byte	0xb
 6881 08d5 00C0     		.2byte	0xc000
 6882 08d7 1A       		.byte	0x1a
 6883 08d8 9F       		.byte	0x9f
 6884 08d9 30000000 		.4byte	.LVL75
 6885 08dd 54000000 		.4byte	.LFE177
 6886 08e1 0800     		.2byte	0x8
 6887 08e3 F3       		.byte	0xf3
 6888 08e4 01       		.uleb128 0x1
 6889 08e5 50       		.byte	0x50
 6890 08e6 0B       		.byte	0xb
 6891 08e7 00C0     		.2byte	0xc000
 6892 08e9 1A       		.byte	0x1a
 6893 08ea 9F       		.byte	0x9f
 6894 08eb 00000000 		.4byte	0
 6895 08ef 00000000 		.4byte	0
 6896              	.LLST42:
 6897 08f3 0E000000 		.4byte	.LVL68
 6898 08f7 1E000000 		.4byte	.LVL71
 6899 08fb 0100     		.2byte	0x1
 6900 08fd 55       		.byte	0x55
 6901 08fe 1E000000 		.4byte	.LVL71
 6902 0902 30000000 		.4byte	.LVL75
 6903 0906 0500     		.2byte	0x5
 6904 0908 71       		.byte	0x71
 6905 0909 FFFF00   		.sleb128 16383
 6906 090c 9F       		.byte	0x9f
 6907 090d 30000000 		.4byte	.LVL75
 6908 0911 54000000 		.4byte	.LFE177
 6909 0915 0B00     		.2byte	0xb
 6910 0917 F3       		.byte	0xf3
 6911 0918 01       		.uleb128 0x1
ARM GAS  /tmp/ccfM1LZ3.s 			page 143


 6912 0919 51       		.byte	0x51
 6913 091a 0B       		.byte	0xb
 6914 091b 00C0     		.2byte	0xc000
 6915 091d 1A       		.byte	0x1a
 6916 091e 23       		.byte	0x23
 6917 091f FF7F     		.uleb128 0x3fff
 6918 0921 9F       		.byte	0x9f
 6919 0922 00000000 		.4byte	0
 6920 0926 00000000 		.4byte	0
 6921              	.LLST43:
 6922 092a 24000000 		.4byte	.LVL73
 6923 092e 30000000 		.4byte	.LVL75
 6924 0932 0100     		.2byte	0x1
 6925 0934 54       		.byte	0x54
 6926 0935 32000000 		.4byte	.LVL76
 6927 0939 3E000000 		.4byte	.LVL78
 6928 093d 0100     		.2byte	0x1
 6929 093f 54       		.byte	0x54
 6930 0940 48000000 		.4byte	.LVL80
 6931 0944 4C000000 		.4byte	.LVL81
 6932 0948 0100     		.2byte	0x1
 6933 094a 54       		.byte	0x54
 6934 094b 00000000 		.4byte	0
 6935 094f 00000000 		.4byte	0
 6936              	.LLST44:
 6937 0953 28000000 		.4byte	.LVL74
 6938 0957 4C000000 		.4byte	.LVL81
 6939 095b 0100     		.2byte	0x1
 6940 095d 55       		.byte	0x55
 6941 095e 4C000000 		.4byte	.LVL81
 6942 0962 54000000 		.4byte	.LFE177
 6943 0966 1400     		.2byte	0x14
 6944 0968 F3       		.byte	0xf3
 6945 0969 01       		.uleb128 0x1
 6946 096a 51       		.byte	0x51
 6947 096b 0B       		.byte	0xb
 6948 096c 00C0     		.2byte	0xc000
 6949 096e 1A       		.byte	0x1a
 6950 096f 0C       		.byte	0xc
 6951 0970 01C03F00 		.4byte	0x3fc001
 6952 0974 1C       		.byte	0x1c
 6953 0975 09       		.byte	0x9
 6954 0976 EB       		.byte	0xeb
 6955 0977 24       		.byte	0x24
 6956 0978 09       		.byte	0x9
 6957 0979 F4       		.byte	0xf4
 6958 097a 25       		.byte	0x25
 6959 097b 9F       		.byte	0x9f
 6960 097c 00000000 		.4byte	0
 6961 0980 00000000 		.4byte	0
 6962              	.LLST45:
 6963 0984 30000000 		.4byte	.LVL75
 6964 0988 36000000 		.4byte	.LVL77
 6965 098c 0100     		.2byte	0x1
 6966 098e 50       		.byte	0x50
 6967 098f 42000000 		.4byte	.LVL79
 6968 0993 48000000 		.4byte	.LVL80
ARM GAS  /tmp/ccfM1LZ3.s 			page 144


 6969 0997 0100     		.2byte	0x1
 6970 0999 50       		.byte	0x50
 6971 099a 00000000 		.4byte	0
 6972 099e 00000000 		.4byte	0
 6973              	.LLST46:
 6974 09a2 00000000 		.4byte	.LVL65
 6975 09a6 0E000000 		.4byte	.LVL68
 6976 09aa 0600     		.2byte	0x6
 6977 09ac F2       		.byte	0xf2
 6978 09ad 5E110000 		.4byte	.Ldebug_info0+4446
 6979 09b1 00       		.sleb128 0
 6980 09b2 00000000 		.4byte	0
 6981 09b6 00000000 		.4byte	0
 6982              	.LLST47:
 6983 09ba 00000000 		.4byte	.LVL65
 6984 09be 0E000000 		.4byte	.LVL68
 6985 09c2 0600     		.2byte	0x6
 6986 09c4 F2       		.byte	0xf2
 6987 09c5 4E110000 		.4byte	.Ldebug_info0+4430
 6988 09c9 00       		.sleb128 0
 6989 09ca 00000000 		.4byte	0
 6990 09ce 00000000 		.4byte	0
 6991              	.LLST48:
 6992 09d2 00000000 		.4byte	.LVL65
 6993 09d6 0A000000 		.4byte	.LVL66
 6994 09da 0100     		.2byte	0x1
 6995 09dc 51       		.byte	0x51
 6996 09dd 0A000000 		.4byte	.LVL66
 6997 09e1 0E000000 		.4byte	.LVL68
 6998 09e5 0400     		.2byte	0x4
 6999 09e7 F3       		.byte	0xf3
 7000 09e8 01       		.uleb128 0x1
 7001 09e9 51       		.byte	0x51
 7002 09ea 9F       		.byte	0x9f
 7003 09eb 00000000 		.4byte	0
 7004 09ef 00000000 		.4byte	0
 7005              	.LLST49:
 7006 09f3 00000000 		.4byte	.LVL65
 7007 09f7 0E000000 		.4byte	.LVL68
 7008 09fb 0100     		.2byte	0x1
 7009 09fd 50       		.byte	0x50
 7010 09fe 00000000 		.4byte	0
 7011 0a02 00000000 		.4byte	0
 7012              	.LLST50:
 7013 0a06 0C000000 		.4byte	.LVL67
 7014 0a0a 0E000000 		.4byte	.LVL68
 7015 0a0e 0100     		.2byte	0x1
 7016 0a10 54       		.byte	0x54
 7017 0a11 00000000 		.4byte	0
 7018 0a15 00000000 		.4byte	0
 7019              	.LLST51:
 7020 0a19 16000000 		.4byte	.LVL69
 7021 0a1d 24000000 		.4byte	.LVL73
 7022 0a21 0200     		.2byte	0x2
 7023 0a23 30       		.byte	0x30
 7024 0a24 9F       		.byte	0x9f
 7025 0a25 00000000 		.4byte	0
ARM GAS  /tmp/ccfM1LZ3.s 			page 145


 7026 0a29 00000000 		.4byte	0
 7027              	.LLST52:
 7028 0a2d 16000000 		.4byte	.LVL69
 7029 0a31 24000000 		.4byte	.LVL73
 7030 0a35 0600     		.2byte	0x6
 7031 0a37 F2       		.byte	0xf2
 7032 0a38 6E110000 		.4byte	.Ldebug_info0+4462
 7033 0a3c 00       		.sleb128 0
 7034 0a3d 00000000 		.4byte	0
 7035 0a41 00000000 		.4byte	0
 7036              	.LLST53:
 7037 0a45 16000000 		.4byte	.LVL69
 7038 0a49 1A000000 		.4byte	.LVL70
 7039 0a4d 0100     		.2byte	0x1
 7040 0a4f 54       		.byte	0x54
 7041 0a50 1A000000 		.4byte	.LVL70
 7042 0a54 20000000 		.4byte	.LVL72
 7043 0a58 0600     		.2byte	0x6
 7044 0a5a 74       		.byte	0x74
 7045 0a5b 80808002 		.sleb128 4194304
 7046 0a5f 9F       		.byte	0x9f
 7047 0a60 20000000 		.4byte	.LVL72
 7048 0a64 24000000 		.4byte	.LVL73
 7049 0a68 0700     		.2byte	0x7
 7050 0a6a 70       		.byte	0x70
 7051 0a6b 00       		.sleb128 0
 7052 0a6c 0B       		.byte	0xb
 7053 0a6d 00C0     		.2byte	0xc000
 7054 0a6f 1A       		.byte	0x1a
 7055 0a70 9F       		.byte	0x9f
 7056 0a71 00000000 		.4byte	0
 7057 0a75 00000000 		.4byte	0
 7058              	.LLST54:
 7059 0a79 16000000 		.4byte	.LVL69
 7060 0a7d 24000000 		.4byte	.LVL73
 7061 0a81 0600     		.2byte	0x6
 7062 0a83 F2       		.byte	0xf2
 7063 0a84 3E110000 		.4byte	.Ldebug_info0+4414
 7064 0a88 00       		.sleb128 0
 7065 0a89 00000000 		.4byte	0
 7066 0a8d 00000000 		.4byte	0
 7067              	.LLST55:
 7068 0a91 24000000 		.4byte	.LVL73
 7069 0a95 30000000 		.4byte	.LVL75
 7070 0a99 0500     		.2byte	0x5
 7071 0a9b 71       		.byte	0x71
 7072 0a9c FFFF00   		.sleb128 16383
 7073 0a9f 9F       		.byte	0x9f
 7074 0aa0 30000000 		.4byte	.LVL75
 7075 0aa4 54000000 		.4byte	.LFE177
 7076 0aa8 0B00     		.2byte	0xb
 7077 0aaa F3       		.byte	0xf3
 7078 0aab 01       		.uleb128 0x1
 7079 0aac 51       		.byte	0x51
 7080 0aad 0B       		.byte	0xb
 7081 0aae 00C0     		.2byte	0xc000
 7082 0ab0 1A       		.byte	0x1a
ARM GAS  /tmp/ccfM1LZ3.s 			page 146


 7083 0ab1 23       		.byte	0x23
 7084 0ab2 FF7F     		.uleb128 0x3fff
 7085 0ab4 9F       		.byte	0x9f
 7086 0ab5 00000000 		.4byte	0
 7087 0ab9 00000000 		.4byte	0
 7088              	.LLST56:
 7089 0abd 28000000 		.4byte	.LVL74
 7090 0ac1 4C000000 		.4byte	.LVL81
 7091 0ac5 0100     		.2byte	0x1
 7092 0ac7 55       		.byte	0x55
 7093 0ac8 4C000000 		.4byte	.LVL81
 7094 0acc 54000000 		.4byte	.LFE177
 7095 0ad0 1400     		.2byte	0x14
 7096 0ad2 F3       		.byte	0xf3
 7097 0ad3 01       		.uleb128 0x1
 7098 0ad4 51       		.byte	0x51
 7099 0ad5 0B       		.byte	0xb
 7100 0ad6 00C0     		.2byte	0xc000
 7101 0ad8 1A       		.byte	0x1a
 7102 0ad9 0C       		.byte	0xc
 7103 0ada 01C03F00 		.4byte	0x3fc001
 7104 0ade 1C       		.byte	0x1c
 7105 0adf 09       		.byte	0x9
 7106 0ae0 EB       		.byte	0xeb
 7107 0ae1 24       		.byte	0x24
 7108 0ae2 09       		.byte	0x9
 7109 0ae3 F4       		.byte	0xf4
 7110 0ae4 25       		.byte	0x25
 7111 0ae5 9F       		.byte	0x9f
 7112 0ae6 00000000 		.4byte	0
 7113 0aea 00000000 		.4byte	0
 7114              	.LLST23:
 7115 0aee 00000000 		.4byte	.LVL48
 7116 0af2 24000000 		.4byte	.LVL50
 7117 0af6 0100     		.2byte	0x1
 7118 0af8 50       		.byte	0x50
 7119 0af9 24000000 		.4byte	.LVL50
 7120 0afd B4000000 		.4byte	.LFE176
 7121 0b01 0400     		.2byte	0x4
 7122 0b03 F3       		.byte	0xf3
 7123 0b04 01       		.uleb128 0x1
 7124 0b05 50       		.byte	0x50
 7125 0b06 9F       		.byte	0x9f
 7126 0b07 00000000 		.4byte	0
 7127 0b0b 00000000 		.4byte	0
 7128              	.LLST24:
 7129 0b0f 00000000 		.4byte	.LVL48
 7130 0b13 24000000 		.4byte	.LVL50
 7131 0b17 0100     		.2byte	0x1
 7132 0b19 51       		.byte	0x51
 7133 0b1a 24000000 		.4byte	.LVL50
 7134 0b1e 94000000 		.4byte	.LVL62
 7135 0b22 0100     		.2byte	0x1
 7136 0b24 5A       		.byte	0x5a
 7137 0b25 9C000000 		.4byte	.LVL63
 7138 0b29 B4000000 		.4byte	.LFE176
 7139 0b2d 0100     		.2byte	0x1
ARM GAS  /tmp/ccfM1LZ3.s 			page 147


 7140 0b2f 5A       		.byte	0x5a
 7141 0b30 00000000 		.4byte	0
 7142 0b34 00000000 		.4byte	0
 7143              	.LLST25:
 7144 0b38 00000000 		.4byte	.LVL48
 7145 0b3c 24000000 		.4byte	.LVL50
 7146 0b40 0100     		.2byte	0x1
 7147 0b42 52       		.byte	0x52
 7148 0b43 24000000 		.4byte	.LVL50
 7149 0b47 8A000000 		.4byte	.LVL58
 7150 0b4b 0100     		.2byte	0x1
 7151 0b4d 59       		.byte	0x59
 7152 0b4e 9C000000 		.4byte	.LVL63
 7153 0b52 B4000000 		.4byte	.LFE176
 7154 0b56 0100     		.2byte	0x1
 7155 0b58 59       		.byte	0x59
 7156 0b59 00000000 		.4byte	0
 7157 0b5d 00000000 		.4byte	0
 7158              	.LLST26:
 7159 0b61 00000000 		.4byte	.LVL48
 7160 0b65 24000000 		.4byte	.LVL50
 7161 0b69 0100     		.2byte	0x1
 7162 0b6b 53       		.byte	0x53
 7163 0b6c 24000000 		.4byte	.LVL50
 7164 0b70 B4000000 		.4byte	.LFE176
 7165 0b74 0200     		.2byte	0x2
 7166 0b76 91       		.byte	0x91
 7167 0b77 54       		.sleb128 -44
 7168 0b78 00000000 		.4byte	0
 7169 0b7c 00000000 		.4byte	0
 7170              	.LLST27:
 7171 0b80 14000000 		.4byte	.LVL49
 7172 0b84 86000000 		.4byte	.LVL57
 7173 0b88 0100     		.2byte	0x1
 7174 0b8a 58       		.byte	0x58
 7175 0b8b 92000000 		.4byte	.LVL61
 7176 0b8f B4000000 		.4byte	.LFE176
 7177 0b93 0100     		.2byte	0x1
 7178 0b95 58       		.byte	0x58
 7179 0b96 00000000 		.4byte	0
 7180 0b9a 00000000 		.4byte	0
 7181              	.LLST28:
 7182 0b9e 14000000 		.4byte	.LVL49
 7183 0ba2 8E000000 		.4byte	.LVL60
 7184 0ba6 0100     		.2byte	0x1
 7185 0ba8 56       		.byte	0x56
 7186 0ba9 92000000 		.4byte	.LVL61
 7187 0bad 94000000 		.4byte	.LVL62
 7188 0bb1 0200     		.2byte	0x2
 7189 0bb3 30       		.byte	0x30
 7190 0bb4 9F       		.byte	0x9f
 7191 0bb5 9C000000 		.4byte	.LVL63
 7192 0bb9 B4000000 		.4byte	.LFE176
 7193 0bbd 0100     		.2byte	0x1
 7194 0bbf 56       		.byte	0x56
 7195 0bc0 00000000 		.4byte	0
 7196 0bc4 00000000 		.4byte	0
ARM GAS  /tmp/ccfM1LZ3.s 			page 148


 7197              	.LLST29:
 7198 0bc8 3E000000 		.4byte	.LVL51
 7199 0bcc 94000000 		.4byte	.LVL62
 7200 0bd0 0100     		.2byte	0x1
 7201 0bd2 57       		.byte	0x57
 7202 0bd3 9C000000 		.4byte	.LVL63
 7203 0bd7 B4000000 		.4byte	.LFE176
 7204 0bdb 0100     		.2byte	0x1
 7205 0bdd 57       		.byte	0x57
 7206 0bde 00000000 		.4byte	0
 7207 0be2 00000000 		.4byte	0
 7208              	.LLST30:
 7209 0be6 3E000000 		.4byte	.LVL51
 7210 0bea 8E000000 		.4byte	.LVL60
 7211 0bee 0A00     		.2byte	0xa
 7212 0bf0 0A       		.byte	0xa
 7213 0bf1 0002     		.2byte	0x200
 7214 0bf3 77       		.byte	0x77
 7215 0bf4 00       		.sleb128 0
 7216 0bf5 1C       		.byte	0x1c
 7217 0bf6 76       		.byte	0x76
 7218 0bf7 00       		.sleb128 0
 7219 0bf8 1C       		.byte	0x1c
 7220 0bf9 9F       		.byte	0x9f
 7221 0bfa 9C000000 		.4byte	.LVL63
 7222 0bfe B4000000 		.4byte	.LFE176
 7223 0c02 0A00     		.2byte	0xa
 7224 0c04 0A       		.byte	0xa
 7225 0c05 0002     		.2byte	0x200
 7226 0c07 77       		.byte	0x77
 7227 0c08 00       		.sleb128 0
 7228 0c09 1C       		.byte	0x1c
 7229 0c0a 76       		.byte	0x76
 7230 0c0b 00       		.sleb128 0
 7231 0c0c 1C       		.byte	0x1c
 7232 0c0d 9F       		.byte	0x9f
 7233 0c0e 00000000 		.4byte	0
 7234 0c12 00000000 		.4byte	0
 7235              	.LLST31:
 7236 0c16 80000000 		.4byte	.LVL56
 7237 0c1a 94000000 		.4byte	.LVL62
 7238 0c1e 0100     		.2byte	0x1
 7239 0c20 50       		.byte	0x50
 7240 0c21 A4000000 		.4byte	.LVL64
 7241 0c25 B4000000 		.4byte	.LFE176
 7242 0c29 0100     		.2byte	0x1
 7243 0c2b 50       		.byte	0x50
 7244 0c2c 00000000 		.4byte	0
 7245 0c30 00000000 		.4byte	0
 7246              	.LLST32:
 7247 0c34 64000000 		.4byte	.LVL54
 7248 0c38 66000000 		.4byte	.LVL55
 7249 0c3c 0200     		.2byte	0x2
 7250 0c3e 30       		.byte	0x30
 7251 0c3f 9F       		.byte	0x9f
 7252 0c40 00000000 		.4byte	0
 7253 0c44 00000000 		.4byte	0
ARM GAS  /tmp/ccfM1LZ3.s 			page 149


 7254              	.LLST33:
 7255 0c48 00000000 		.4byte	.LVL48
 7256 0c4c 24000000 		.4byte	.LVL50
 7257 0c50 0100     		.2byte	0x1
 7258 0c52 50       		.byte	0x50
 7259 0c53 24000000 		.4byte	.LVL50
 7260 0c57 B4000000 		.4byte	.LFE176
 7261 0c5b 0400     		.2byte	0x4
 7262 0c5d F3       		.byte	0xf3
 7263 0c5e 01       		.uleb128 0x1
 7264 0c5f 50       		.byte	0x50
 7265 0c60 9F       		.byte	0x9f
 7266 0c61 00000000 		.4byte	0
 7267 0c65 00000000 		.4byte	0
 7268              	.LLST34:
 7269 0c69 14000000 		.4byte	.LVL49
 7270 0c6d 24000000 		.4byte	.LVL50
 7271 0c71 0100     		.2byte	0x1
 7272 0c73 58       		.byte	0x58
 7273 0c74 24000000 		.4byte	.LVL50
 7274 0c78 B4000000 		.4byte	.LFE176
 7275 0c7c 0E00     		.2byte	0xe
 7276 0c7e F3       		.byte	0xf3
 7277 0c7f 01       		.uleb128 0x1
 7278 0c80 50       		.byte	0x50
 7279 0c81 40       		.byte	0x40
 7280 0c82 42       		.byte	0x42
 7281 0c83 24       		.byte	0x24
 7282 0c84 1C       		.byte	0x1c
 7283 0c85 09       		.byte	0x9
 7284 0c86 EB       		.byte	0xeb
 7285 0c87 24       		.byte	0x24
 7286 0c88 09       		.byte	0x9
 7287 0c89 F4       		.byte	0xf4
 7288 0c8a 25       		.byte	0x25
 7289 0c8b 9F       		.byte	0x9f
 7290 0c8c 00000000 		.4byte	0
 7291 0c90 00000000 		.4byte	0
 7292              	.LLST35:
 7293 0c94 14000000 		.4byte	.LVL49
 7294 0c98 24000000 		.4byte	.LVL50
 7295 0c9c 0100     		.2byte	0x1
 7296 0c9e 56       		.byte	0x56
 7297 0c9f 24000000 		.4byte	.LVL50
 7298 0ca3 B4000000 		.4byte	.LFE176
 7299 0ca7 0A00     		.2byte	0xa
 7300 0ca9 F3       		.byte	0xf3
 7301 0caa 01       		.uleb128 0x1
 7302 0cab 50       		.byte	0x50
 7303 0cac 09       		.byte	0x9
 7304 0cad FB       		.byte	0xfb
 7305 0cae 24       		.byte	0x24
 7306 0caf 09       		.byte	0x9
 7307 0cb0 FB       		.byte	0xfb
 7308 0cb1 25       		.byte	0x25
 7309 0cb2 9F       		.byte	0x9f
 7310 0cb3 00000000 		.4byte	0
ARM GAS  /tmp/ccfM1LZ3.s 			page 150


 7311 0cb7 00000000 		.4byte	0
 7312              	.LLST36:
 7313 0cbb 3E000000 		.4byte	.LVL51
 7314 0cbf 94000000 		.4byte	.LVL62
 7315 0cc3 0600     		.2byte	0x6
 7316 0cc5 0C       		.byte	0xc
 7317 0cc6 000C0E40 		.4byte	0x400e0c00
 7318 0cca 9F       		.byte	0x9f
 7319 0ccb 9C000000 		.4byte	.LVL63
 7320 0ccf B4000000 		.4byte	.LFE176
 7321 0cd3 0600     		.2byte	0x6
 7322 0cd5 0C       		.byte	0xc
 7323 0cd6 000C0E40 		.4byte	0x400e0c00
 7324 0cda 9F       		.byte	0x9f
 7325 0cdb 00000000 		.4byte	0
 7326 0cdf 00000000 		.4byte	0
 7327              	.LLST21:
 7328 0ce3 00000000 		.4byte	.LVL44
 7329 0ce7 08000000 		.4byte	.LVL45
 7330 0ceb 0100     		.2byte	0x1
 7331 0ced 50       		.byte	0x50
 7332 0cee 08000000 		.4byte	.LVL45
 7333 0cf2 0C000000 		.4byte	.LVL46
 7334 0cf6 0600     		.2byte	0x6
 7335 0cf8 72       		.byte	0x72
 7336 0cf9 80808002 		.sleb128 4194304
 7337 0cfd 9F       		.byte	0x9f
 7338 0cfe 0C000000 		.4byte	.LVL46
 7339 0d02 20000000 		.4byte	.LFE175
 7340 0d06 0400     		.2byte	0x4
 7341 0d08 F3       		.byte	0xf3
 7342 0d09 01       		.uleb128 0x1
 7343 0d0a 50       		.byte	0x50
 7344 0d0b 9F       		.byte	0x9f
 7345 0d0c 00000000 		.4byte	0
 7346 0d10 00000000 		.4byte	0
 7347              	.LLST22:
 7348 0d14 00000000 		.4byte	.LVL44
 7349 0d18 08000000 		.4byte	.LVL45
 7350 0d1c 0800     		.2byte	0x8
 7351 0d1e 70       		.byte	0x70
 7352 0d1f 8080807E 		.sleb128 -4194304
 7353 0d23 39       		.byte	0x39
 7354 0d24 25       		.byte	0x25
 7355 0d25 9F       		.byte	0x9f
 7356 0d26 08000000 		.4byte	.LVL45
 7357 0d2a 0C000000 		.4byte	.LVL46
 7358 0d2e 0500     		.2byte	0x5
 7359 0d30 72       		.byte	0x72
 7360 0d31 00       		.sleb128 0
 7361 0d32 39       		.byte	0x39
 7362 0d33 25       		.byte	0x25
 7363 0d34 9F       		.byte	0x9f
 7364 0d35 0C000000 		.4byte	.LVL46
 7365 0d39 20000000 		.4byte	.LFE175
 7366 0d3d 0A00     		.2byte	0xa
 7367 0d3f F3       		.byte	0xf3
ARM GAS  /tmp/ccfM1LZ3.s 			page 151


 7368 0d40 01       		.uleb128 0x1
 7369 0d41 50       		.byte	0x50
 7370 0d42 40       		.byte	0x40
 7371 0d43 42       		.byte	0x42
 7372 0d44 24       		.byte	0x24
 7373 0d45 1C       		.byte	0x1c
 7374 0d46 39       		.byte	0x39
 7375 0d47 25       		.byte	0x25
 7376 0d48 9F       		.byte	0x9f
 7377 0d49 00000000 		.4byte	0
 7378 0d4d 00000000 		.4byte	0
 7379              	.LLST18:
 7380 0d51 00000000 		.4byte	.LVL35
 7381 0d55 06000000 		.4byte	.LVL36
 7382 0d59 0100     		.2byte	0x1
 7383 0d5b 50       		.byte	0x50
 7384 0d5c 06000000 		.4byte	.LVL36
 7385 0d60 08000000 		.4byte	.LVL37
 7386 0d64 0400     		.2byte	0x4
 7387 0d66 F3       		.byte	0xf3
 7388 0d67 01       		.uleb128 0x1
 7389 0d68 50       		.byte	0x50
 7390 0d69 9F       		.byte	0x9f
 7391 0d6a 08000000 		.4byte	.LVL37
 7392 0d6e 12000000 		.4byte	.LVL38
 7393 0d72 0100     		.2byte	0x1
 7394 0d74 50       		.byte	0x50
 7395 0d75 12000000 		.4byte	.LVL38
 7396 0d79 14000000 		.4byte	.LVL39
 7397 0d7d 0400     		.2byte	0x4
 7398 0d7f F3       		.byte	0xf3
 7399 0d80 01       		.uleb128 0x1
 7400 0d81 50       		.byte	0x50
 7401 0d82 9F       		.byte	0x9f
 7402 0d83 14000000 		.4byte	.LVL39
 7403 0d87 1C000000 		.4byte	.LVL40
 7404 0d8b 0100     		.2byte	0x1
 7405 0d8d 50       		.byte	0x50
 7406 0d8e 1C000000 		.4byte	.LVL40
 7407 0d92 22000000 		.4byte	.LVL42
 7408 0d96 0600     		.2byte	0x6
 7409 0d98 73       		.byte	0x73
 7410 0d99 80808002 		.sleb128 4194304
 7411 0d9d 9F       		.byte	0x9f
 7412 0d9e 22000000 		.4byte	.LVL42
 7413 0da2 38000000 		.4byte	.LFE174
 7414 0da6 0400     		.2byte	0x4
 7415 0da8 F3       		.byte	0xf3
 7416 0da9 01       		.uleb128 0x1
 7417 0daa 50       		.byte	0x50
 7418 0dab 9F       		.byte	0x9f
 7419 0dac 00000000 		.4byte	0
 7420 0db0 00000000 		.4byte	0
 7421              	.LLST19:
 7422 0db4 00000000 		.4byte	.LVL35
 7423 0db8 1E000000 		.4byte	.LVL41
 7424 0dbc 0100     		.2byte	0x1
ARM GAS  /tmp/ccfM1LZ3.s 			page 152


 7425 0dbe 51       		.byte	0x51
 7426 0dbf 1E000000 		.4byte	.LVL41
 7427 0dc3 38000000 		.4byte	.LFE174
 7428 0dc7 0400     		.2byte	0x4
 7429 0dc9 F3       		.byte	0xf3
 7430 0dca 01       		.uleb128 0x1
 7431 0dcb 51       		.byte	0x51
 7432 0dcc 9F       		.byte	0x9f
 7433 0dcd 00000000 		.4byte	0
 7434 0dd1 00000000 		.4byte	0
 7435              	.LLST20:
 7436 0dd5 14000000 		.4byte	.LVL39
 7437 0dd9 1C000000 		.4byte	.LVL40
 7438 0ddd 0800     		.2byte	0x8
 7439 0ddf 70       		.byte	0x70
 7440 0de0 8080807E 		.sleb128 -4194304
 7441 0de4 39       		.byte	0x39
 7442 0de5 25       		.byte	0x25
 7443 0de6 9F       		.byte	0x9f
 7444 0de7 1C000000 		.4byte	.LVL40
 7445 0deb 22000000 		.4byte	.LVL42
 7446 0def 0500     		.2byte	0x5
 7447 0df1 73       		.byte	0x73
 7448 0df2 00       		.sleb128 0
 7449 0df3 39       		.byte	0x39
 7450 0df4 25       		.byte	0x25
 7451 0df5 9F       		.byte	0x9f
 7452 0df6 22000000 		.4byte	.LVL42
 7453 0dfa 38000000 		.4byte	.LFE174
 7454 0dfe 0A00     		.2byte	0xa
 7455 0e00 F3       		.byte	0xf3
 7456 0e01 01       		.uleb128 0x1
 7457 0e02 50       		.byte	0x50
 7458 0e03 40       		.byte	0x40
 7459 0e04 42       		.byte	0x42
 7460 0e05 24       		.byte	0x24
 7461 0e06 1C       		.byte	0x1c
 7462 0e07 39       		.byte	0x39
 7463 0e08 25       		.byte	0x25
 7464 0e09 9F       		.byte	0x9f
 7465 0e0a 00000000 		.4byte	0
 7466 0e0e 00000000 		.4byte	0
 7467              	.LLST17:
 7468 0e12 00000000 		.4byte	.LVL32
 7469 0e16 08000000 		.4byte	.LVL33
 7470 0e1a 0100     		.2byte	0x1
 7471 0e1c 50       		.byte	0x50
 7472 0e1d 08000000 		.4byte	.LVL33
 7473 0e21 1C000000 		.4byte	.LFE173
 7474 0e25 0400     		.2byte	0x4
 7475 0e27 F3       		.byte	0xf3
 7476 0e28 01       		.uleb128 0x1
 7477 0e29 50       		.byte	0x50
 7478 0e2a 9F       		.byte	0x9f
 7479 0e2b 00000000 		.4byte	0
 7480 0e2f 00000000 		.4byte	0
 7481              	.LLST16:
ARM GAS  /tmp/ccfM1LZ3.s 			page 153


 7482 0e33 00000000 		.4byte	.LVL30
 7483 0e37 02000000 		.4byte	.LVL31
 7484 0e3b 0100     		.2byte	0x1
 7485 0e3d 50       		.byte	0x50
 7486 0e3e 02000000 		.4byte	.LVL31
 7487 0e42 04000000 		.4byte	.LFE172
 7488 0e46 0400     		.2byte	0x4
 7489 0e48 F3       		.byte	0xf3
 7490 0e49 01       		.uleb128 0x1
 7491 0e4a 50       		.byte	0x50
 7492 0e4b 9F       		.byte	0x9f
 7493 0e4c 00000000 		.4byte	0
 7494 0e50 00000000 		.4byte	0
 7495              	.LLST15:
 7496 0e54 00000000 		.4byte	.LVL28
 7497 0e58 04000000 		.4byte	.LVL29
 7498 0e5c 0100     		.2byte	0x1
 7499 0e5e 50       		.byte	0x50
 7500 0e5f 04000000 		.4byte	.LVL29
 7501 0e63 0A000000 		.4byte	.LFE171
 7502 0e67 0400     		.2byte	0x4
 7503 0e69 F3       		.byte	0xf3
 7504 0e6a 01       		.uleb128 0x1
 7505 0e6b 50       		.byte	0x50
 7506 0e6c 9F       		.byte	0x9f
 7507 0e6d 00000000 		.4byte	0
 7508 0e71 00000000 		.4byte	0
 7509              	.LLST14:
 7510 0e75 00000000 		.4byte	.LVL26
 7511 0e79 04000000 		.4byte	.LVL27
 7512 0e7d 0100     		.2byte	0x1
 7513 0e7f 50       		.byte	0x50
 7514 0e80 04000000 		.4byte	.LVL27
 7515 0e84 0A000000 		.4byte	.LFE170
 7516 0e88 0400     		.2byte	0x4
 7517 0e8a F3       		.byte	0xf3
 7518 0e8b 01       		.uleb128 0x1
 7519 0e8c 50       		.byte	0x50
 7520 0e8d 9F       		.byte	0x9f
 7521 0e8e 00000000 		.4byte	0
 7522 0e92 00000000 		.4byte	0
 7523              	.LLST8:
 7524 0e96 00000000 		.4byte	.LVL13
 7525 0e9a 0A000000 		.4byte	.LVL15
 7526 0e9e 0100     		.2byte	0x1
 7527 0ea0 50       		.byte	0x50
 7528 0ea1 0A000000 		.4byte	.LVL15
 7529 0ea5 38000000 		.4byte	.LFE169
 7530 0ea9 0400     		.2byte	0x4
 7531 0eab F3       		.byte	0xf3
 7532 0eac 01       		.uleb128 0x1
 7533 0ead 50       		.byte	0x50
 7534 0eae 9F       		.byte	0x9f
 7535 0eaf 00000000 		.4byte	0
 7536 0eb3 00000000 		.4byte	0
 7537              	.LLST9:
 7538 0eb7 00000000 		.4byte	.LVL13
ARM GAS  /tmp/ccfM1LZ3.s 			page 154


 7539 0ebb 0C000000 		.4byte	.LVL16
 7540 0ebf 0100     		.2byte	0x1
 7541 0ec1 51       		.byte	0x51
 7542 0ec2 0C000000 		.4byte	.LVL16
 7543 0ec6 34000000 		.4byte	.LVL25
 7544 0eca 0100     		.2byte	0x1
 7545 0ecc 55       		.byte	0x55
 7546 0ecd 34000000 		.4byte	.LVL25
 7547 0ed1 38000000 		.4byte	.LFE169
 7548 0ed5 0400     		.2byte	0x4
 7549 0ed7 F3       		.byte	0xf3
 7550 0ed8 01       		.uleb128 0x1
 7551 0ed9 51       		.byte	0x51
 7552 0eda 9F       		.byte	0x9f
 7553 0edb 00000000 		.4byte	0
 7554 0edf 00000000 		.4byte	0
 7555              	.LLST10:
 7556 0ee3 00000000 		.4byte	.LVL13
 7557 0ee7 06000000 		.4byte	.LVL14
 7558 0eeb 0100     		.2byte	0x1
 7559 0eed 52       		.byte	0x52
 7560 0eee 06000000 		.4byte	.LVL14
 7561 0ef2 34000000 		.4byte	.LVL25
 7562 0ef6 0100     		.2byte	0x1
 7563 0ef8 56       		.byte	0x56
 7564 0ef9 34000000 		.4byte	.LVL25
 7565 0efd 38000000 		.4byte	.LFE169
 7566 0f01 0400     		.2byte	0x4
 7567 0f03 F3       		.byte	0xf3
 7568 0f04 01       		.uleb128 0x1
 7569 0f05 52       		.byte	0x52
 7570 0f06 9F       		.byte	0x9f
 7571 0f07 00000000 		.4byte	0
 7572 0f0b 00000000 		.4byte	0
 7573              	.LLST11:
 7574 0f0f 00000000 		.4byte	.LVL13
 7575 0f13 30000000 		.4byte	.LVL24
 7576 0f17 0600     		.2byte	0x6
 7577 0f19 0C       		.byte	0xc
 7578 0f1a 000C0E40 		.4byte	0x400e0c00
 7579 0f1e 9F       		.byte	0x9f
 7580 0f1f 00000000 		.4byte	0
 7581 0f23 00000000 		.4byte	0
 7582              	.LLST12:
 7583 0f27 18000000 		.4byte	.LVL18
 7584 0f2b 20000000 		.4byte	.LVL20
 7585 0f2f 0100     		.2byte	0x1
 7586 0f31 50       		.byte	0x50
 7587 0f32 26000000 		.4byte	.LVL21
 7588 0f36 2C000000 		.4byte	.LVL22
 7589 0f3a 0100     		.2byte	0x1
 7590 0f3c 50       		.byte	0x50
 7591 0f3d 00000000 		.4byte	0
 7592 0f41 00000000 		.4byte	0
 7593              	.LLST13:
 7594 0f45 18000000 		.4byte	.LVL18
 7595 0f49 2E000000 		.4byte	.LVL23
ARM GAS  /tmp/ccfM1LZ3.s 			page 155


 7596 0f4d 0100     		.2byte	0x1
 7597 0f4f 54       		.byte	0x54
 7598 0f50 00000000 		.4byte	0
 7599 0f54 00000000 		.4byte	0
 7600              	.LLST7:
 7601 0f58 00000000 		.4byte	.LVL10
 7602 0f5c 02000000 		.4byte	.LVL11
 7603 0f60 0100     		.2byte	0x1
 7604 0f62 50       		.byte	0x50
 7605 0f63 02000000 		.4byte	.LVL11
 7606 0f67 0C000000 		.4byte	.LFE168
 7607 0f6b 0400     		.2byte	0x4
 7608 0f6d F3       		.byte	0xf3
 7609 0f6e 01       		.uleb128 0x1
 7610 0f6f 50       		.byte	0x50
 7611 0f70 9F       		.byte	0x9f
 7612 0f71 00000000 		.4byte	0
 7613 0f75 00000000 		.4byte	0
 7614              	.LLST5:
 7615 0f79 00000000 		.4byte	.LVL7
 7616 0f7d 06000000 		.4byte	.LVL8
 7617 0f81 0100     		.2byte	0x1
 7618 0f83 50       		.byte	0x50
 7619 0f84 06000000 		.4byte	.LVL8
 7620 0f88 14000000 		.4byte	.LFE167
 7621 0f8c 0400     		.2byte	0x4
 7622 0f8e F3       		.byte	0xf3
 7623 0f8f 01       		.uleb128 0x1
 7624 0f90 50       		.byte	0x50
 7625 0f91 9F       		.byte	0x9f
 7626 0f92 00000000 		.4byte	0
 7627 0f96 00000000 		.4byte	0
 7628              	.LLST6:
 7629 0f9a 00000000 		.4byte	.LVL7
 7630 0f9e 0A000000 		.4byte	.LVL9
 7631 0fa2 0600     		.2byte	0x6
 7632 0fa4 0C       		.byte	0xc
 7633 0fa5 000C0E40 		.4byte	0x400e0c00
 7634 0fa9 9F       		.byte	0x9f
 7635 0faa 00000000 		.4byte	0
 7636 0fae 00000000 		.4byte	0
 7637              	.LLST2:
 7638 0fb2 00000000 		.4byte	.LVL4
 7639 0fb6 04000000 		.4byte	.LVL5
 7640 0fba 0100     		.2byte	0x1
 7641 0fbc 50       		.byte	0x50
 7642 0fbd 04000000 		.4byte	.LVL5
 7643 0fc1 10000000 		.4byte	.LFE166
 7644 0fc5 0400     		.2byte	0x4
 7645 0fc7 F3       		.byte	0xf3
 7646 0fc8 01       		.uleb128 0x1
 7647 0fc9 50       		.byte	0x50
 7648 0fca 9F       		.byte	0x9f
 7649 0fcb 00000000 		.4byte	0
 7650 0fcf 00000000 		.4byte	0
 7651              	.LLST3:
 7652 0fd3 00000000 		.4byte	.LVL4
ARM GAS  /tmp/ccfM1LZ3.s 			page 156


 7653 0fd7 07000000 		.4byte	.LVL6-1
 7654 0fdb 0100     		.2byte	0x1
 7655 0fdd 51       		.byte	0x51
 7656 0fde 07000000 		.4byte	.LVL6-1
 7657 0fe2 10000000 		.4byte	.LFE166
 7658 0fe6 0400     		.2byte	0x4
 7659 0fe8 F3       		.byte	0xf3
 7660 0fe9 01       		.uleb128 0x1
 7661 0fea 51       		.byte	0x51
 7662 0feb 9F       		.byte	0x9f
 7663 0fec 00000000 		.4byte	0
 7664 0ff0 00000000 		.4byte	0
 7665              	.LLST4:
 7666 0ff4 00000000 		.4byte	.LVL4
 7667 0ff8 08000000 		.4byte	.LVL6
 7668 0ffc 0600     		.2byte	0x6
 7669 0ffe 0C       		.byte	0xc
 7670 0fff 000C0E40 		.4byte	0x400e0c00
 7671 1003 9F       		.byte	0x9f
 7672 1004 00000000 		.4byte	0
 7673 1008 00000000 		.4byte	0
 7674              	.LLST0:
 7675 100c 00000000 		.4byte	.LVL0
 7676 1010 06000000 		.4byte	.LVL2
 7677 1014 0100     		.2byte	0x1
 7678 1016 50       		.byte	0x50
 7679 1017 06000000 		.4byte	.LVL2
 7680 101b 0B000000 		.4byte	.LVL3-1
 7681 101f 0100     		.2byte	0x1
 7682 1021 51       		.byte	0x51
 7683 1022 0B000000 		.4byte	.LVL3-1
 7684 1026 14000000 		.4byte	.LFE165
 7685 102a 0400     		.2byte	0x4
 7686 102c F3       		.byte	0xf3
 7687 102d 01       		.uleb128 0x1
 7688 102e 50       		.byte	0x50
 7689 102f 9F       		.byte	0x9f
 7690 1030 00000000 		.4byte	0
 7691 1034 00000000 		.4byte	0
 7692              	.LLST1:
 7693 1038 00000000 		.4byte	.LVL0
 7694 103c 04000000 		.4byte	.LVL1
 7695 1040 0100     		.2byte	0x1
 7696 1042 51       		.byte	0x51
 7697 1043 04000000 		.4byte	.LVL1
 7698 1047 0B000000 		.4byte	.LVL3-1
 7699 104b 0100     		.2byte	0x1
 7700 104d 52       		.byte	0x52
 7701 104e 0B000000 		.4byte	.LVL3-1
 7702 1052 14000000 		.4byte	.LFE165
 7703 1056 0400     		.2byte	0x4
 7704 1058 F3       		.byte	0xf3
 7705 1059 01       		.uleb128 0x1
 7706 105a 51       		.byte	0x51
 7707 105b 9F       		.byte	0x9f
 7708 105c 00000000 		.4byte	0
 7709 1060 00000000 		.4byte	0
ARM GAS  /tmp/ccfM1LZ3.s 			page 157


 7710              	.LLST89:
 7711 1064 00000000 		.4byte	.LVL127
 7712 1068 06000000 		.4byte	.LVL128
 7713 106c 0100     		.2byte	0x1
 7714 106e 50       		.byte	0x50
 7715 106f 06000000 		.4byte	.LVL128
 7716 1073 08000000 		.4byte	.LVL129
 7717 1077 0400     		.2byte	0x4
 7718 1079 F3       		.byte	0xf3
 7719 107a 01       		.uleb128 0x1
 7720 107b 50       		.byte	0x50
 7721 107c 9F       		.byte	0x9f
 7722 107d 08000000 		.4byte	.LVL129
 7723 1081 12000000 		.4byte	.LVL130
 7724 1085 0100     		.2byte	0x1
 7725 1087 50       		.byte	0x50
 7726 1088 12000000 		.4byte	.LVL130
 7727 108c 28000000 		.4byte	.LVL134
 7728 1090 0100     		.2byte	0x1
 7729 1092 54       		.byte	0x54
 7730 1093 28000000 		.4byte	.LVL134
 7731 1097 38000000 		.4byte	.LFE182
 7732 109b 0400     		.2byte	0x4
 7733 109d F3       		.byte	0xf3
 7734 109e 01       		.uleb128 0x1
 7735 109f 50       		.byte	0x50
 7736 10a0 9F       		.byte	0x9f
 7737 10a1 00000000 		.4byte	0
 7738 10a5 00000000 		.4byte	0
 7739              	.LLST90:
 7740 10a9 1C000000 		.4byte	.LVL132
 7741 10ad 28000000 		.4byte	.LVL134
 7742 10b1 0100     		.2byte	0x1
 7743 10b3 54       		.byte	0x54
 7744 10b4 28000000 		.4byte	.LVL134
 7745 10b8 38000000 		.4byte	.LFE182
 7746 10bc 0400     		.2byte	0x4
 7747 10be F3       		.byte	0xf3
 7748 10bf 01       		.uleb128 0x1
 7749 10c0 50       		.byte	0x50
 7750 10c1 9F       		.byte	0x9f
 7751 10c2 00000000 		.4byte	0
 7752 10c6 00000000 		.4byte	0
 7753              	.LLST91:
 7754 10ca 22000000 		.4byte	.LVL133
 7755 10ce 2E000000 		.4byte	.LVL135
 7756 10d2 0100     		.2byte	0x1
 7757 10d4 50       		.byte	0x50
 7758 10d5 00000000 		.4byte	0
 7759 10d9 00000000 		.4byte	0
 7760              	.LLST92:
 7761 10dd 00000000 		.4byte	.LVL136
 7762 10e1 06000000 		.4byte	.LVL137
 7763 10e5 0100     		.2byte	0x1
 7764 10e7 50       		.byte	0x50
 7765 10e8 06000000 		.4byte	.LVL137
 7766 10ec 08000000 		.4byte	.LVL138
ARM GAS  /tmp/ccfM1LZ3.s 			page 158


 7767 10f0 0400     		.2byte	0x4
 7768 10f2 F3       		.byte	0xf3
 7769 10f3 01       		.uleb128 0x1
 7770 10f4 50       		.byte	0x50
 7771 10f5 9F       		.byte	0x9f
 7772 10f6 08000000 		.4byte	.LVL138
 7773 10fa 0F000000 		.4byte	.LVL139-1
 7774 10fe 0100     		.2byte	0x1
 7775 1100 50       		.byte	0x50
 7776 1101 0F000000 		.4byte	.LVL139-1
 7777 1105 28000000 		.4byte	.LVL143
 7778 1109 0100     		.2byte	0x1
 7779 110b 54       		.byte	0x54
 7780 110c 28000000 		.4byte	.LVL143
 7781 1110 2C000000 		.4byte	.LFE180
 7782 1114 0400     		.2byte	0x4
 7783 1116 F3       		.byte	0xf3
 7784 1117 01       		.uleb128 0x1
 7785 1118 50       		.byte	0x50
 7786 1119 9F       		.byte	0x9f
 7787 111a 00000000 		.4byte	0
 7788 111e 00000000 		.4byte	0
 7789              	.LLST93:
 7790 1122 14000000 		.4byte	.LVL140
 7791 1126 24000000 		.4byte	.LVL142
 7792 112a 0100     		.2byte	0x1
 7793 112c 54       		.byte	0x54
 7794 112d 00000000 		.4byte	0
 7795 1131 00000000 		.4byte	0
 7796              		.section	.debug_aranges,"",%progbits
 7797 0000 D4000000 		.4byte	0xd4
 7798 0004 0200     		.2byte	0x2
 7799 0006 00000000 		.4byte	.Ldebug_info0
 7800 000a 04       		.byte	0x4
 7801 000b 00       		.byte	0
 7802 000c 0000     		.2byte	0
 7803 000e 0000     		.2byte	0
 7804 0010 00000000 		.4byte	.LFB165
 7805 0014 14000000 		.4byte	.LFE165-.LFB165
 7806 0018 00000000 		.4byte	.LFB166
 7807 001c 10000000 		.4byte	.LFE166-.LFB166
 7808 0020 00000000 		.4byte	.LFB167
 7809 0024 14000000 		.4byte	.LFE167-.LFB167
 7810 0028 00000000 		.4byte	.LFB168
 7811 002c 0C000000 		.4byte	.LFE168-.LFB168
 7812 0030 00000000 		.4byte	.LFB169
 7813 0034 38000000 		.4byte	.LFE169-.LFB169
 7814 0038 00000000 		.4byte	.LFB170
 7815 003c 0A000000 		.4byte	.LFE170-.LFB170
 7816 0040 00000000 		.4byte	.LFB171
 7817 0044 0A000000 		.4byte	.LFE171-.LFB171
 7818 0048 00000000 		.4byte	.LFB172
 7819 004c 04000000 		.4byte	.LFE172-.LFB172
 7820 0050 00000000 		.4byte	.LFB173
 7821 0054 1C000000 		.4byte	.LFE173-.LFB173
 7822 0058 00000000 		.4byte	.LFB174
 7823 005c 38000000 		.4byte	.LFE174-.LFB174
ARM GAS  /tmp/ccfM1LZ3.s 			page 159


 7824 0060 00000000 		.4byte	.LFB175
 7825 0064 20000000 		.4byte	.LFE175-.LFB175
 7826 0068 00000000 		.4byte	.LFB176
 7827 006c B4000000 		.4byte	.LFE176-.LFB176
 7828 0070 00000000 		.4byte	.LFB177
 7829 0074 54000000 		.4byte	.LFE177-.LFB177
 7830 0078 00000000 		.4byte	.LFB178
 7831 007c 54000000 		.4byte	.LFE178-.LFB178
 7832 0080 00000000 		.4byte	.LFB179
 7833 0084 88000000 		.4byte	.LFE179-.LFB179
 7834 0088 00000000 		.4byte	.LFB182
 7835 008c 38000000 		.4byte	.LFE182-.LFB182
 7836 0090 00000000 		.4byte	.LFB180
 7837 0094 2C000000 		.4byte	.LFE180-.LFB180
 7838 0098 00000000 		.4byte	.LFB181
 7839 009c 2C000000 		.4byte	.LFE181-.LFB181
 7840 00a0 00000000 		.4byte	.LFB183
 7841 00a4 06000000 		.4byte	.LFE183-.LFB183
 7842 00a8 00000000 		.4byte	.LFB184
 7843 00ac 06000000 		.4byte	.LFE184-.LFB184
 7844 00b0 00000000 		.4byte	.LFB185
 7845 00b4 48000000 		.4byte	.LFE185-.LFB185
 7846 00b8 00000000 		.4byte	.LFB186
 7847 00bc 2C000000 		.4byte	.LFE186-.LFB186
 7848 00c0 00000000 		.4byte	.LFB187
 7849 00c4 4C000000 		.4byte	.LFE187-.LFB187
 7850 00c8 00000000 		.4byte	.LFB188
 7851 00cc 10000000 		.4byte	.LFE188-.LFB188
 7852 00d0 00000000 		.4byte	0
 7853 00d4 00000000 		.4byte	0
 7854              		.section	.debug_ranges,"",%progbits
 7855              	.Ldebug_ranges0:
 7856 0000 04000000 		.4byte	.LBB46
 7857 0004 08000000 		.4byte	.LBE46
 7858 0008 0A000000 		.4byte	.LBB50
 7859 000c 0E000000 		.4byte	.LBE50
 7860 0010 10000000 		.4byte	.LBB51
 7861 0014 14000000 		.4byte	.LBE51
 7862 0018 00000000 		.4byte	0
 7863 001c 00000000 		.4byte	0
 7864 0020 28000000 		.4byte	.LBB52
 7865 0024 2C000000 		.4byte	.LBE52
 7866 0028 32000000 		.4byte	.LBB55
 7867 002c 36000000 		.4byte	.LBE55
 7868 0030 00000000 		.4byte	0
 7869 0034 00000000 		.4byte	0
 7870 0038 16000000 		.4byte	.LBB58
 7871 003c 1A000000 		.4byte	.LBE58
 7872 0040 1E000000 		.4byte	.LBB66
 7873 0044 20000000 		.4byte	.LBE66
 7874 0048 22000000 		.4byte	.LBB68
 7875 004c 24000000 		.4byte	.LBE68
 7876 0050 00000000 		.4byte	0
 7877 0054 00000000 		.4byte	0
 7878 0058 1A000000 		.4byte	.LBB62
 7879 005c 1E000000 		.4byte	.LBE62
 7880 0060 20000000 		.4byte	.LBB67
ARM GAS  /tmp/ccfM1LZ3.s 			page 160


 7881 0064 22000000 		.4byte	.LBE67
 7882 0068 24000000 		.4byte	.LBB69
 7883 006c 28000000 		.4byte	.LBE69
 7884 0070 00000000 		.4byte	0
 7885 0074 00000000 		.4byte	0
 7886 0078 16000000 		.4byte	.LBB72
 7887 007c 1A000000 		.4byte	.LBE72
 7888 0080 1E000000 		.4byte	.LBB80
 7889 0084 20000000 		.4byte	.LBE80
 7890 0088 22000000 		.4byte	.LBB82
 7891 008c 24000000 		.4byte	.LBE82
 7892 0090 00000000 		.4byte	0
 7893 0094 00000000 		.4byte	0
 7894 0098 1A000000 		.4byte	.LBB76
 7895 009c 1E000000 		.4byte	.LBE76
 7896 00a0 20000000 		.4byte	.LBB81
 7897 00a4 22000000 		.4byte	.LBE81
 7898 00a8 24000000 		.4byte	.LBB83
 7899 00ac 28000000 		.4byte	.LBE83
 7900 00b0 00000000 		.4byte	0
 7901 00b4 00000000 		.4byte	0
 7902 00b8 00000000 		.4byte	.LFB165
 7903 00bc 14000000 		.4byte	.LFE165
 7904 00c0 00000000 		.4byte	.LFB166
 7905 00c4 10000000 		.4byte	.LFE166
 7906 00c8 00000000 		.4byte	.LFB167
 7907 00cc 14000000 		.4byte	.LFE167
 7908 00d0 00000000 		.4byte	.LFB168
 7909 00d4 0C000000 		.4byte	.LFE168
 7910 00d8 00000000 		.4byte	.LFB169
 7911 00dc 38000000 		.4byte	.LFE169
 7912 00e0 00000000 		.4byte	.LFB170
 7913 00e4 0A000000 		.4byte	.LFE170
 7914 00e8 00000000 		.4byte	.LFB171
 7915 00ec 0A000000 		.4byte	.LFE171
 7916 00f0 00000000 		.4byte	.LFB172
 7917 00f4 04000000 		.4byte	.LFE172
 7918 00f8 00000000 		.4byte	.LFB173
 7919 00fc 1C000000 		.4byte	.LFE173
 7920 0100 00000000 		.4byte	.LFB174
 7921 0104 38000000 		.4byte	.LFE174
 7922 0108 00000000 		.4byte	.LFB175
 7923 010c 20000000 		.4byte	.LFE175
 7924 0110 00000000 		.4byte	.LFB176
 7925 0114 B4000000 		.4byte	.LFE176
 7926 0118 00000000 		.4byte	.LFB177
 7927 011c 54000000 		.4byte	.LFE177
 7928 0120 00000000 		.4byte	.LFB178
 7929 0124 54000000 		.4byte	.LFE178
 7930 0128 00000000 		.4byte	.LFB179
 7931 012c 88000000 		.4byte	.LFE179
 7932 0130 00000000 		.4byte	.LFB182
 7933 0134 38000000 		.4byte	.LFE182
 7934 0138 00000000 		.4byte	.LFB180
 7935 013c 2C000000 		.4byte	.LFE180
 7936 0140 00000000 		.4byte	.LFB181
 7937 0144 2C000000 		.4byte	.LFE181
ARM GAS  /tmp/ccfM1LZ3.s 			page 161


 7938 0148 00000000 		.4byte	.LFB183
 7939 014c 06000000 		.4byte	.LFE183
 7940 0150 00000000 		.4byte	.LFB184
 7941 0154 06000000 		.4byte	.LFE184
 7942 0158 00000000 		.4byte	.LFB185
 7943 015c 48000000 		.4byte	.LFE185
 7944 0160 00000000 		.4byte	.LFB186
 7945 0164 2C000000 		.4byte	.LFE186
 7946 0168 00000000 		.4byte	.LFB187
 7947 016c 4C000000 		.4byte	.LFE187
 7948 0170 00000000 		.4byte	.LFB188
 7949 0174 10000000 		.4byte	.LFE188
 7950 0178 00000000 		.4byte	0
 7951 017c 00000000 		.4byte	0
 7952              		.section	.debug_line,"",%progbits
 7953              	.Ldebug_line0:
 7954 0000 15060000 		.section	.debug_str,"MS",%progbits,1
 7954      02001D03 
 7954      00000201 
 7954      FB0E0D00 
 7954      01010101 
 7955              	.LASF23:
 7956 0000 5F666C6F 		.ascii	"_flock_t\000"
 7956      636B5F74 
 7956      00
 7957              	.LASF163:
 7958 0009 49464C41 		.ascii	"IFLASH_ERASE_PAGES_INVALID\000"
 7958      53485F45 
 7958      52415345 
 7958      5F504147 
 7958      45535F49 
 7959              	.LASF128:
 7960 0024 53797374 		.ascii	"SystemCoreClock\000"
 7960      656D436F 
 7960      7265436C 
 7960      6F636B00 
 7961              	.LASF153:
 7962 0034 464C4153 		.ascii	"FLASH_RC_YES\000"
 7962      485F5243 
 7962      5F594553 
 7962      00
 7963              	.LASF24:
 7964 0041 63686172 		.ascii	"char\000"
 7964      00
 7965              	.LASF41:
 7966 0046 5F6F6E5F 		.ascii	"_on_exit_args\000"
 7966      65786974 
 7966      5F617267 
 7966      7300
 7967              	.LASF255:
 7968 0054 6566635F 		.ascii	"efc_init\000"
 7968      696E6974 
 7968      00
 7969              	.LASF249:
 7970 005d 756C5F69 		.ascii	"ul_id\000"
 7970      6400
 7971              	.LASF108:
ARM GAS  /tmp/ccfM1LZ3.s 			page 162


 7972 0063 5F776374 		.ascii	"_wctomb_state\000"
 7972      6F6D625F 
 7972      73746174 
 7972      6500
 7973              	.LASF134:
 7974 0071 45454643 		.ascii	"EEFC_VERSION\000"
 7974      5F564552 
 7974      53494F4E 
 7974      00
 7975              	.LASF105:
 7976 007e 5F723438 		.ascii	"_r48\000"
 7976      00
 7977              	.LASF231:
 7978 0083 756C5F63 		.ascii	"ul_cnt\000"
 7978      6E7400
 7979              	.LASF254:
 7980 008a 6566635F 		.ascii	"efc_set_wait_state\000"
 7980      7365745F 
 7980      77616974 
 7980      5F737461 
 7980      746500
 7981              	.LASF257:
 7982 009d 2E2E2F61 		.ascii	"../asf/sam/services/flash_efc/flash_efc.c\000"
 7982      73662F73 
 7982      616D2F73 
 7982      65727669 
 7982      6365732F 
 7983              	.LASF110:
 7984 00c7 5F736967 		.ascii	"_signal_buf\000"
 7984      6E616C5F 
 7984      62756600 
 7985              	.LASF222:
 7986 00d3 666C6173 		.ascii	"flash_erase_page\000"
 7986      685F6572 
 7986      6173655F 
 7986      70616765 
 7986      00
 7987              	.LASF227:
 7988 00e4 666C6173 		.ascii	"flash_get_page_count_per_region\000"
 7988      685F6765 
 7988      745F7061 
 7988      67655F63 
 7988      6F756E74 
 7989              	.LASF179:
 7990 0104 705F6461 		.ascii	"p_data\000"
 7990      746100
 7991              	.LASF146:
 7992 010b 4546435F 		.ascii	"EFC_RC_NO\000"
 7992      52435F4E 
 7992      4F00
 7993              	.LASF162:
 7994 0115 49464C41 		.ascii	"IFLASH_ERASE_PAGES_32\000"
 7994      53485F45 
 7994      52415345 
 7994      5F504147 
 7994      45535F33 
 7995              	.LASF229:
ARM GAS  /tmp/ccfM1LZ3.s 			page 163


 7996 012b 666C6173 		.ascii	"flash_get_descriptor\000"
 7996      685F6765 
 7996      745F6465 
 7996      73637269 
 7996      70746F72 
 7997              	.LASF55:
 7998 0140 5F6C6266 		.ascii	"_lbfsize\000"
 7998      73697A65 
 7998      00
 7999              	.LASF53:
 8000 0149 5F666C61 		.ascii	"_flags\000"
 8000      677300
 8001              	.LASF132:
 8002 0150 45454643 		.ascii	"EEFC_FRR\000"
 8002      5F465252 
 8002      00
 8003              	.LASF7:
 8004 0159 5F5F696E 		.ascii	"__int32_t\000"
 8004      7433325F 
 8004      7400
 8005              	.LASF70:
 8006 0163 5F657272 		.ascii	"_errno\000"
 8006      6E6F00
 8007              	.LASF154:
 8008 016a 464C4153 		.ascii	"FLASH_RC_NO\000"
 8008      485F5243 
 8008      5F4E4F00 
 8009              	.LASF175:
 8010 0176 756C5F73 		.ascii	"ul_size\000"
 8010      697A6500 
 8011              	.LASF130:
 8012 017e 45454643 		.ascii	"EEFC_FCR\000"
 8012      5F464352 
 8012      00
 8013              	.LASF197:
 8014 0187 75735F6E 		.ascii	"us_num_pages_in_region\000"
 8014      756D5F70 
 8014      61676573 
 8014      5F696E5F 
 8014      72656769 
 8015              	.LASF67:
 8016 019e 5F6D6273 		.ascii	"_mbstate\000"
 8016      74617465 
 8016      00
 8017              	.LASF57:
 8018 01a7 5F726561 		.ascii	"_read\000"
 8018      6400
 8019              	.LASF25:
 8020 01ad 5F5F554C 		.ascii	"__ULong\000"
 8020      6F6E6700 
 8021              	.LASF112:
 8022 01b5 5F6D6272 		.ascii	"_mbrlen_state\000"
 8022      6C656E5F 
 8022      73746174 
 8022      6500
 8023              	.LASF144:
 8024 01c3 4546435F 		.ascii	"EFC_RC_OK\000"
ARM GAS  /tmp/ccfM1LZ3.s 			page 164


 8024      52435F4F 
 8024      4B00
 8025              	.LASF155:
 8026 01cd 464C4153 		.ascii	"FLASH_RC_ERROR\000"
 8026      485F5243 
 8026      5F455252 
 8026      4F5200
 8027              	.LASF72:
 8028 01dc 5F737464 		.ascii	"_stdout\000"
 8028      6F757400 
 8029              	.LASF15:
 8030 01e4 5F66706F 		.ascii	"_fpos_t\000"
 8030      735F7400 
 8031              	.LASF164:
 8032 01ec 706C6C5F 		.ascii	"pll_source\000"
 8032      736F7572 
 8032      636500
 8033              	.LASF48:
 8034 01f7 5F666E73 		.ascii	"_fns\000"
 8034      00
 8035              	.LASF239:
 8036 01fc 636F6D70 		.ascii	"compute_lock_range\000"
 8036      7574655F 
 8036      6C6F636B 
 8036      5F72616E 
 8036      676500
 8037              	.LASF56:
 8038 020f 5F636F6F 		.ascii	"_cookie\000"
 8038      6B696500 
 8039              	.LASF147:
 8040 0217 4546435F 		.ascii	"EFC_RC_ERROR\000"
 8040      52435F45 
 8040      52524F52 
 8040      00
 8041              	.LASF178:
 8042 0224 666C6173 		.ascii	"flash_read_user_signature\000"
 8042      685F7265 
 8042      61645F75 
 8042      7365725F 
 8042      7369676E 
 8043              	.LASF138:
 8044 023e 675F696E 		.ascii	"g_interrupt_enabled\000"
 8044      74657272 
 8044      7570745F 
 8044      656E6162 
 8044      6C656400 
 8045              	.LASF215:
 8046 0252 75735F6F 		.ascii	"us_offset\000"
 8046      66667365 
 8046      7400
 8047              	.LASF30:
 8048 025c 5F426967 		.ascii	"_Bigint\000"
 8048      696E7400 
 8049              	.LASF38:
 8050 0264 5F5F746D 		.ascii	"__tm_wday\000"
 8050      5F776461 
 8050      7900
ARM GAS  /tmp/ccfM1LZ3.s 			page 165


 8051              	.LASF166:
 8052 026e 504C4C5F 		.ascii	"PLL_SRC_MAINCK_8M_RC\000"
 8052      5352435F 
 8052      4D41494E 
 8052      434B5F38 
 8052      4D5F5243 
 8053              	.LASF80:
 8054 0283 5F726573 		.ascii	"_result\000"
 8054      756C7400 
 8055              	.LASF185:
 8056 028b 666C6173 		.ascii	"flash_clear_gpnvm\000"
 8056      685F636C 
 8056      6561725F 
 8056      67706E76 
 8056      6D00
 8057              	.LASF157:
 8058 029d 464C4153 		.ascii	"FLASH_RC_NOT_SUPPORT\000"
 8058      485F5243 
 8058      5F4E4F54 
 8058      5F535550 
 8058      504F5254 
 8059              	.LASF126:
 8060 02b2 75696E74 		.ascii	"uint32_t\000"
 8060      33325F74 
 8060      00
 8061              	.LASF34:
 8062 02bb 5F5F746D 		.ascii	"__tm_hour\000"
 8062      5F686F75 
 8062      7200
 8063              	.LASF75:
 8064 02c5 5F656D65 		.ascii	"_emergency\000"
 8064      7267656E 
 8064      637900
 8065              	.LASF169:
 8066 02d0 504C4C5F 		.ascii	"PLL_SRC_MAINCK_BYPASS\000"
 8066      5352435F 
 8066      4D41494E 
 8066      434B5F42 
 8066      59504153 
 8067              	.LASF20:
 8068 02e6 5F5F636F 		.ascii	"__count\000"
 8068      756E7400 
 8069              	.LASF142:
 8070 02ee 666C6F61 		.ascii	"float\000"
 8070      7400
 8071              	.LASF214:
 8072 02f4 75735F70 		.ascii	"us_page\000"
 8072      61676500 
 8073              	.LASF217:
 8074 02fc 756C5F70 		.ascii	"ul_page_addr\000"
 8074      6167655F 
 8074      61646472 
 8074      00
 8075              	.LASF131:
 8076 0309 45454643 		.ascii	"EEFC_FSR\000"
 8076      5F465352 
 8076      00
ARM GAS  /tmp/ccfM1LZ3.s 			page 166


 8077              	.LASF121:
 8078 0312 5F696D70 		.ascii	"_impure_ptr\000"
 8078      7572655F 
 8078      70747200 
 8079              	.LASF118:
 8080 031e 5F6E6578 		.ascii	"_nextf\000"
 8080      746600
 8081              	.LASF183:
 8082 0325 666C6173 		.ascii	"flash_is_security_bit_enabled\000"
 8082      685F6973 
 8082      5F736563 
 8082      75726974 
 8082      795F6269 
 8083              	.LASF114:
 8084 0343 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 8084      72746F77 
 8084      63735F73 
 8084      74617465 
 8084      00
 8085              	.LASF233:
 8086 0354 666C6173 		.ascii	"flash_set_wait_state_adaptively\000"
 8086      685F7365 
 8086      745F7761 
 8086      69745F73 
 8086      74617465 
 8087              	.LASF12:
 8088 0374 6C6F6E67 		.ascii	"long long unsigned int\000"
 8088      206C6F6E 
 8088      6720756E 
 8088      7369676E 
 8088      65642069 
 8089              	.LASF101:
 8090 038b 5F617363 		.ascii	"_asctime_buf\000"
 8090      74696D65 
 8090      5F627566 
 8090      00
 8091              	.LASF95:
 8092 0398 5F72616E 		.ascii	"_rand48\000"
 8092      64343800 
 8093              	.LASF52:
 8094 03a0 5F5F7346 		.ascii	"__sFILE\000"
 8094      494C4500 
 8095              	.LASF29:
 8096 03a8 5F776473 		.ascii	"_wds\000"
 8096      00
 8097              	.LASF247:
 8098 03ad 73797363 		.ascii	"sysclk_get_cpu_hz\000"
 8098      6C6B5F67 
 8098      65745F63 
 8098      70755F68 
 8098      7A00
 8099              	.LASF240:
 8100 03bf 636F6D70 		.ascii	"compute_address\000"
 8100      7574655F 
 8100      61646472 
 8100      65737300 
 8101              	.LASF224:
ARM GAS  /tmp/ccfM1LZ3.s 			page 167


 8102 03cf 666C6173 		.ascii	"flash_erase_all\000"
 8102      685F6572 
 8102      6173655F 
 8102      616C6C00 
 8103              	.LASF170:
 8104 03df 504C4C5F 		.ascii	"PLL_NR_SOURCES\000"
 8104      4E525F53 
 8104      4F555243 
 8104      455300
 8105              	.LASF219:
 8106 03ee 705F616C 		.ascii	"p_aligned_dest\000"
 8106      69676E65 
 8106      645F6465 
 8106      737400
 8107              	.LASF5:
 8108 03fd 5F5F7569 		.ascii	"__uint16_t\000"
 8108      6E743136 
 8108      5F7400
 8109              	.LASF91:
 8110 0408 5F5F4649 		.ascii	"__FILE\000"
 8110      4C4500
 8111              	.LASF117:
 8112 040f 5F685F65 		.ascii	"_h_errno\000"
 8112      72726E6F 
 8112      00
 8113              	.LASF145:
 8114 0418 4546435F 		.ascii	"EFC_RC_YES\000"
 8114      52435F59 
 8114      455300
 8115              	.LASF64:
 8116 0423 5F6F6666 		.ascii	"_offset\000"
 8116      73657400 
 8117              	.LASF61:
 8118 042b 5F756275 		.ascii	"_ubuf\000"
 8118      6600
 8119              	.LASF192:
 8120 0431 705F6566 		.ascii	"p_efc\000"
 8120      6300
 8121              	.LASF253:
 8122 0437 6566635F 		.ascii	"efc_get_wait_state\000"
 8122      6765745F 
 8122      77616974 
 8122      5F737461 
 8122      746500
 8123              	.LASF152:
 8124 044a 464C4153 		.ascii	"FLASH_RC_OK\000"
 8124      485F5243 
 8124      5F4F4B00 
 8125              	.LASF242:
 8126 0456 756C5F61 		.ascii	"ul_addr\000"
 8126      64647200 
 8127              	.LASF141:
 8128 045e 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 8128      6972715F 
 8128      70726576 
 8128      5F696E74 
 8128      65727275 
ARM GAS  /tmp/ccfM1LZ3.s 			page 168


 8129              	.LASF32:
 8130 047b 5F5F746D 		.ascii	"__tm_sec\000"
 8130      5F736563 
 8130      00
 8131              	.LASF160:
 8132 0484 49464C41 		.ascii	"IFLASH_ERASE_PAGES_8\000"
 8132      53485F45 
 8132      52415345 
 8132      5F504147 
 8132      45535F38 
 8133              	.LASF156:
 8134 0499 464C4153 		.ascii	"FLASH_RC_INVALID\000"
 8134      485F5243 
 8134      5F494E56 
 8134      414C4944 
 8134      00
 8135              	.LASF39:
 8136 04aa 5F5F746D 		.ascii	"__tm_yday\000"
 8136      5F796461 
 8136      7900
 8137              	.LASF21:
 8138 04b4 5F5F7661 		.ascii	"__value\000"
 8138      6C756500 
 8139              	.LASF74:
 8140 04bc 5F696E63 		.ascii	"_inc\000"
 8140      00
 8141              	.LASF139:
 8142 04c1 5F426F6F 		.ascii	"_Bool\000"
 8142      6C00
 8143              	.LASF171:
 8144 04c7 67735F75 		.ascii	"gs_ul_page_buffer\000"
 8144      6C5F7061 
 8144      67655F62 
 8144      75666665 
 8144      7200
 8145              	.LASF137:
 8146 04d9 7375626F 		.ascii	"suboptarg\000"
 8146      70746172 
 8146      6700
 8147              	.LASF26:
 8148 04e3 5F6E6578 		.ascii	"_next\000"
 8148      7400
 8149              	.LASF250:
 8150 04e9 6566635F 		.ascii	"efc_perform_command\000"
 8150      70657266 
 8150      6F726D5F 
 8150      636F6D6D 
 8150      616E6400 
 8151              	.LASF248:
 8152 04fd 73797363 		.ascii	"sysclk_get_main_hz\000"
 8152      6C6B5F67 
 8152      65745F6D 
 8152      61696E5F 
 8152      687A00
 8153              	.LASF234:
 8154 0510 636C6F63 		.ascii	"clock\000"
 8154      6B00
ARM GAS  /tmp/ccfM1LZ3.s 			page 169


 8155              	.LASF82:
 8156 0516 5F703573 		.ascii	"_p5s\000"
 8156      00
 8157              	.LASF116:
 8158 051b 5F776373 		.ascii	"_wcsrtombs_state\000"
 8158      72746F6D 
 8158      62735F73 
 8158      74617465 
 8158      00
 8159              	.LASF106:
 8160 052c 5F6D626C 		.ascii	"_mblen_state\000"
 8160      656E5F73 
 8160      74617465 
 8160      00
 8161              	.LASF232:
 8162 0539 666C6173 		.ascii	"flash_get_wait_state\000"
 8162      685F6765 
 8162      745F7761 
 8162      69745F73 
 8162      74617465 
 8163              	.LASF148:
 8164 054e 4546435F 		.ascii	"EFC_RC_INVALID\000"
 8164      52435F49 
 8164      4E56414C 
 8164      494400
 8165              	.LASF35:
 8166 055d 5F5F746D 		.ascii	"__tm_mday\000"
 8166      5F6D6461 
 8166      7900
 8167              	.LASF88:
 8168 0567 5F736967 		.ascii	"_sig_func\000"
 8168      5F66756E 
 8168      6300
 8169              	.LASF113:
 8170 0571 5F6D6272 		.ascii	"_mbrtowc_state\000"
 8170      746F7763 
 8170      5F737461 
 8170      746500
 8171              	.LASF87:
 8172 0580 5F617465 		.ascii	"_atexit0\000"
 8172      78697430 
 8172      00
 8173              	.LASF193:
 8174 0589 75735F73 		.ascii	"us_start_page\000"
 8174      74617274 
 8174      5F706167 
 8174      6500
 8175              	.LASF150:
 8176 0597 6566635F 		.ascii	"efc_rc\000"
 8176      726300
 8177              	.LASF81:
 8178 059e 5F726573 		.ascii	"_result_k\000"
 8178      756C745F 
 8178      6B00
 8179              	.LASF194:
 8180 05a8 75735F65 		.ascii	"us_end_page\000"
 8180      6E645F70 
ARM GAS  /tmp/ccfM1LZ3.s 			page 170


 8180      61676500 
 8181              	.LASF200:
 8182 05b4 756C5F6E 		.ascii	"ul_num_locked_regions\000"
 8182      756D5F6C 
 8182      6F636B65 
 8182      645F7265 
 8182      67696F6E 
 8183              	.LASF218:
 8184 05ca 75735F70 		.ascii	"us_padding\000"
 8184      61646469 
 8184      6E6700
 8185              	.LASF209:
 8186 05d5 666C6173 		.ascii	"flash_write\000"
 8186      685F7772 
 8186      69746500 
 8187              	.LASF123:
 8188 05e1 75696E74 		.ascii	"uint8_t\000"
 8188      385F7400 
 8189              	.LASF136:
 8190 05e9 45454643 		.ascii	"EEFC_WPMR\000"
 8190      5F57504D 
 8190      5200
 8191              	.LASF180:
 8192 05f3 666C6173 		.ascii	"flash_read_unique_id\000"
 8192      685F7265 
 8192      61645F75 
 8192      6E697175 
 8192      655F6964 
 8193              	.LASF60:
 8194 0608 5F636C6F 		.ascii	"_close\000"
 8194      736500
 8195              	.LASF252:
 8196 060f 6566635F 		.ascii	"efc_get_result\000"
 8196      6765745F 
 8196      72657375 
 8196      6C7400
 8197              	.LASF78:
 8198 061e 5F5F7364 		.ascii	"__sdidinit\000"
 8198      6964696E 
 8198      697400
 8199              	.LASF71:
 8200 0629 5F737464 		.ascii	"_stdin\000"
 8200      696E00
 8201              	.LASF103:
 8202 0630 5F67616D 		.ascii	"_gamma_signgam\000"
 8202      6D615F73 
 8202      69676E67 
 8202      616D00
 8203              	.LASF11:
 8204 063f 6C6F6E67 		.ascii	"long long int\000"
 8204      206C6F6E 
 8204      6720696E 
 8204      7400
 8205              	.LASF196:
 8206 064d 75635F65 		.ascii	"uc_end_region\000"
 8206      6E645F72 
 8206      6567696F 
ARM GAS  /tmp/ccfM1LZ3.s 			page 171


 8206      6E00
 8207              	.LASF235:
 8208 065b 666C6173 		.ascii	"flash_set_wait_state\000"
 8208      685F7365 
 8208      745F7761 
 8208      69745F73 
 8208      74617465 
 8209              	.LASF50:
 8210 0670 5F626173 		.ascii	"_base\000"
 8210      6500
 8211              	.LASF83:
 8212 0676 5F667265 		.ascii	"_freelist\000"
 8212      656C6973 
 8212      7400
 8213              	.LASF97:
 8214 0680 5F6D756C 		.ascii	"_mult\000"
 8214      7400
 8215              	.LASF98:
 8216 0686 5F616464 		.ascii	"_add\000"
 8216      00
 8217              	.LASF181:
 8218 068b 70756C5F 		.ascii	"pul_data\000"
 8218      64617461 
 8218      00
 8219              	.LASF115:
 8220 0694 5F776372 		.ascii	"_wcrtomb_state\000"
 8220      746F6D62 
 8220      5F737461 
 8220      746500
 8221              	.LASF172:
 8222 06a3 666C6173 		.ascii	"flash_erase_user_signature\000"
 8222      685F6572 
 8222      6173655F 
 8222      75736572 
 8222      5F736967 
 8223              	.LASF54:
 8224 06be 5F66696C 		.ascii	"_file\000"
 8224      6500
 8225              	.LASF251:
 8226 06c4 6566635F 		.ascii	"efc_perform_read_sequence\000"
 8226      70657266 
 8226      6F726D5F 
 8226      72656164 
 8226      5F736571 
 8227              	.LASF208:
 8228 06de 666C6173 		.ascii	"flash_lock\000"
 8228      685F6C6F 
 8228      636B00
 8229              	.LASF79:
 8230 06e9 5F5F636C 		.ascii	"__cleanup\000"
 8230      65616E75 
 8230      7000
 8231              	.LASF213:
 8232 06f3 756C5F66 		.ascii	"ul_fws_temp\000"
 8232      77735F74 
 8232      656D7000 
 8233              	.LASF22:
ARM GAS  /tmp/ccfM1LZ3.s 			page 172


 8234 06ff 5F6D6273 		.ascii	"_mbstate_t\000"
 8234      74617465 
 8234      5F7400
 8235              	.LASF133:
 8236 070a 52657365 		.ascii	"Reserved1\000"
 8236      72766564 
 8236      3100
 8237              	.LASF135:
 8238 0714 52657365 		.ascii	"Reserved2\000"
 8238      72766564 
 8238      3200
 8239              	.LASF223:
 8240 071e 75635F70 		.ascii	"uc_page_num\000"
 8240      6167655F 
 8240      6E756D00 
 8241              	.LASF40:
 8242 072a 5F5F746D 		.ascii	"__tm_isdst\000"
 8242      5F697364 
 8242      737400
 8243              	.LASF190:
 8244 0735 756C5F73 		.ascii	"ul_start\000"
 8244      74617274 
 8244      00
 8245              	.LASF165:
 8246 073e 504C4C5F 		.ascii	"PLL_SRC_MAINCK_4M_RC\000"
 8246      5352435F 
 8246      4D41494E 
 8246      434B5F34 
 8246      4D5F5243 
 8247              	.LASF203:
 8248 0753 666C6173 		.ascii	"flash_unlock\000"
 8248      685F756E 
 8248      6C6F636B 
 8248      00
 8249              	.LASF184:
 8250 0760 666C6173 		.ascii	"flash_enable_security_bit\000"
 8250      685F656E 
 8250      61626C65 
 8250      5F736563 
 8250      75726974 
 8251              	.LASF238:
 8252 077a 756C5F6D 		.ascii	"ul_mode\000"
 8252      6F646500 
 8253              	.LASF47:
 8254 0782 5F696E64 		.ascii	"_ind\000"
 8254      00
 8255              	.LASF149:
 8256 0787 4546435F 		.ascii	"EFC_RC_NOT_SUPPORT\000"
 8256      52435F4E 
 8256      4F545F53 
 8256      5550504F 
 8256      525400
 8257              	.LASF151:
 8258 079a 666C6173 		.ascii	"flash_rc\000"
 8258      685F7263 
 8258      00
 8259              	.LASF244:
ARM GAS  /tmp/ccfM1LZ3.s 			page 173


 8260 07a3 70705F65 		.ascii	"pp_efc\000"
 8260      666300
 8261              	.LASF36:
 8262 07aa 5F5F746D 		.ascii	"__tm_mon\000"
 8262      5F6D6F6E 
 8262      00
 8263              	.LASF177:
 8264 07b3 705F6465 		.ascii	"p_dest\000"
 8264      737400
 8265              	.LASF6:
 8266 07ba 73686F72 		.ascii	"short unsigned int\000"
 8266      7420756E 
 8266      7369676E 
 8266      65642069 
 8266      6E7400
 8267              	.LASF221:
 8268 07cd 666C6173 		.ascii	"flash_erase_sector\000"
 8268      685F6572 
 8268      6173655F 
 8268      73656374 
 8268      6F7200
 8269              	.LASF124:
 8270 07e0 75696E74 		.ascii	"uint16_t\000"
 8270      31365F74 
 8270      00
 8271              	.LASF49:
 8272 07e9 5F5F7362 		.ascii	"__sbuf\000"
 8272      756600
 8273              	.LASF174:
 8274 07f0 705F6275 		.ascii	"p_buffer\000"
 8274      66666572 
 8274      00
 8275              	.LASF58:
 8276 07f9 5F777269 		.ascii	"_write\000"
 8276      746500
 8277              	.LASF195:
 8278 0800 75635F73 		.ascii	"uc_start_region\000"
 8278      74617274 
 8278      5F726567 
 8278      696F6E00 
 8279              	.LASF46:
 8280 0810 5F617465 		.ascii	"_atexit\000"
 8280      78697400 
 8281              	.LASF202:
 8282 0818 756C5F62 		.ascii	"ul_bit\000"
 8282      697400
 8283              	.LASF212:
 8284 081f 756C5F67 		.ascii	"ul_gpnvm_bits\000"
 8284      706E766D 
 8284      5F626974 
 8284      7300
 8285              	.LASF3:
 8286 082d 73686F72 		.ascii	"short int\000"
 8286      7420696E 
 8286      7400
 8287              	.LASF167:
 8288 0837 504C4C5F 		.ascii	"PLL_SRC_MAINCK_12M_RC\000"
ARM GAS  /tmp/ccfM1LZ3.s 			page 174


 8288      5352435F 
 8288      4D41494E 
 8288      434B5F31 
 8288      324D5F52 
 8289              	.LASF158:
 8290 084d 666C6173 		.ascii	"flash_farg_page_num\000"
 8290      685F6661 
 8290      72675F70 
 8290      6167655F 
 8290      6E756D00 
 8291              	.LASF8:
 8292 0861 6C6F6E67 		.ascii	"long int\000"
 8292      20696E74 
 8292      00
 8293              	.LASF127:
 8294 086a 49544D5F 		.ascii	"ITM_RxBuffer\000"
 8294      52784275 
 8294      66666572 
 8294      00
 8295              	.LASF205:
 8296 0877 70756C5F 		.ascii	"pul_actual_end\000"
 8296      61637475 
 8296      616C5F65 
 8296      6E6400
 8297              	.LASF259:
 8298 0886 6F73635F 		.ascii	"osc_get_rate\000"
 8298      6765745F 
 8298      72617465 
 8298      00
 8299              	.LASF90:
 8300 0893 5F5F7366 		.ascii	"__sf\000"
 8300      00
 8301              	.LASF28:
 8302 0898 5F736967 		.ascii	"_sign\000"
 8302      6E00
 8303              	.LASF246:
 8304 089e 7075735F 		.ascii	"pus_offset\000"
 8304      6F666673 
 8304      657400
 8305              	.LASF77:
 8306 08a9 5F637572 		.ascii	"_current_locale\000"
 8306      72656E74 
 8306      5F6C6F63 
 8306      616C6500 
 8307              	.LASF189:
 8308 08b9 666C6173 		.ascii	"flash_is_locked\000"
 8308      685F6973 
 8308      5F6C6F63 
 8308      6B656400 
 8309              	.LASF65:
 8310 08c9 5F646174 		.ascii	"_data\000"
 8310      6100
 8311              	.LASF18:
 8312 08cf 5F5F7763 		.ascii	"__wchb\000"
 8312      686200
 8313              	.LASF122:
 8314 08d6 5F676C6F 		.ascii	"_global_impure_ptr\000"
ARM GAS  /tmp/ccfM1LZ3.s 			page 175


 8314      62616C5F 
 8314      696D7075 
 8314      72655F70 
 8314      747200
 8315              	.LASF225:
 8316 08e9 666C6173 		.ascii	"flash_get_region_count\000"
 8316      685F6765 
 8316      745F7265 
 8316      67696F6E 
 8316      5F636F75 
 8317              	.LASF210:
 8318 0900 756C5F61 		.ascii	"ul_address\000"
 8318      64647265 
 8318      737300
 8319              	.LASF37:
 8320 090b 5F5F746D 		.ascii	"__tm_year\000"
 8320      5F796561 
 8320      7200
 8321              	.LASF226:
 8322 0915 70756C5F 		.ascii	"pul_flash_descriptor\000"
 8322      666C6173 
 8322      685F6465 
 8322      73637269 
 8322      70746F72 
 8323              	.LASF230:
 8324 092a 756C5F74 		.ascii	"ul_tmp\000"
 8324      6D7000
 8325              	.LASF102:
 8326 0931 5F6C6F63 		.ascii	"_localtime_buf\000"
 8326      616C7469 
 8326      6D655F62 
 8326      756600
 8327              	.LASF129:
 8328 0940 45454643 		.ascii	"EEFC_FMR\000"
 8328      5F464D52 
 8328      00
 8329              	.LASF120:
 8330 0949 5F756E75 		.ascii	"_unused\000"
 8330      73656400 
 8331              	.LASF4:
 8332 0951 5F5F7569 		.ascii	"__uint8_t\000"
 8332      6E74385F 
 8332      7400
 8333              	.LASF86:
 8334 095b 5F6E6577 		.ascii	"_new\000"
 8334      00
 8335              	.LASF84:
 8336 0960 5F637674 		.ascii	"_cvtlen\000"
 8336      6C656E00 
 8337              	.LASF27:
 8338 0968 5F6D6178 		.ascii	"_maxwds\000"
 8338      77647300 
 8339              	.LASF109:
 8340 0970 5F6C3634 		.ascii	"_l64a_buf\000"
 8340      615F6275 
 8340      6600
 8341              	.LASF76:
ARM GAS  /tmp/ccfM1LZ3.s 			page 176


 8342 097a 5F637572 		.ascii	"_current_category\000"
 8342      72656E74 
 8342      5F636174 
 8342      65676F72 
 8342      7900
 8343              	.LASF0:
 8344 098c 756E7369 		.ascii	"unsigned int\000"
 8344      676E6564 
 8344      20696E74 
 8344      00
 8345              	.LASF204:
 8346 0999 70756C5F 		.ascii	"pul_actual_start\000"
 8346      61637475 
 8346      616C5F73 
 8346      74617274 
 8346      00
 8347              	.LASF207:
 8348 09aa 756C5F61 		.ascii	"ul_actual_end\000"
 8348      63747561 
 8348      6C5F656E 
 8348      6400
 8349              	.LASF211:
 8350 09b8 756C5F65 		.ascii	"ul_erase_flag\000"
 8350      72617365 
 8350      5F666C61 
 8350      6700
 8351              	.LASF63:
 8352 09c6 5F626C6B 		.ascii	"_blksize\000"
 8352      73697A65 
 8352      00
 8353              	.LASF31:
 8354 09cf 5F5F746D 		.ascii	"__tm\000"
 8354      00
 8355              	.LASF66:
 8356 09d4 5F6C6F63 		.ascii	"_lock\000"
 8356      6B00
 8357              	.LASF216:
 8358 09da 77726974 		.ascii	"writeSize\000"
 8358      6553697A 
 8358      6500
 8359              	.LASF19:
 8360 09e4 73697A65 		.ascii	"sizetype\000"
 8360      74797065 
 8360      00
 8361              	.LASF198:
 8362 09ed 756C5F73 		.ascii	"ul_status\000"
 8362      74617475 
 8362      7300
 8363              	.LASF10:
 8364 09f7 6C6F6E67 		.ascii	"long unsigned int\000"
 8364      20756E73 
 8364      69676E65 
 8364      6420696E 
 8364      7400
 8365              	.LASF176:
 8366 0a09 756C5F69 		.ascii	"ul_idx\000"
 8366      647800
ARM GAS  /tmp/ccfM1LZ3.s 			page 177


 8367              	.LASF140:
 8368 0a10 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 8368      6972715F 
 8368      63726974 
 8368      6963616C 
 8368      5F736563 
 8369              	.LASF93:
 8370 0a31 5F6E696F 		.ascii	"_niobs\000"
 8370      627300
 8371              	.LASF16:
 8372 0a38 77696E74 		.ascii	"wint_t\000"
 8372      5F7400
 8373              	.LASF125:
 8374 0a3f 696E7433 		.ascii	"int32_t\000"
 8374      325F7400 
 8375              	.LASF33:
 8376 0a47 5F5F746D 		.ascii	"__tm_min\000"
 8376      5F6D696E 
 8376      00
 8377              	.LASF43:
 8378 0a50 5F64736F 		.ascii	"_dso_handle\000"
 8378      5F68616E 
 8378      646C6500 
 8379              	.LASF237:
 8380 0a5c 666C6173 		.ascii	"flash_init\000"
 8380      685F696E 
 8380      697400
 8381              	.LASF85:
 8382 0a67 5F637674 		.ascii	"_cvtbuf\000"
 8382      62756600 
 8383              	.LASF2:
 8384 0a6f 756E7369 		.ascii	"unsigned char\000"
 8384      676E6564 
 8384      20636861 
 8384      7200
 8385              	.LASF9:
 8386 0a7d 5F5F7569 		.ascii	"__uint32_t\000"
 8386      6E743332 
 8386      5F7400
 8387              	.LASF191:
 8388 0a88 756C5F65 		.ascii	"ul_end\000"
 8388      6E6400
 8389              	.LASF236:
 8390 0a8f 756C5F66 		.ascii	"ul_fws\000"
 8390      777300
 8391              	.LASF245:
 8392 0a96 7075735F 		.ascii	"pus_page\000"
 8392      70616765 
 8392      00
 8393              	.LASF13:
 8394 0a9f 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 8394      4B5F5245 
 8394      43555253 
 8394      4956455F 
 8394      5400
 8395              	.LASF199:
 8396 0ab1 756C5F65 		.ascii	"ul_error\000"
ARM GAS  /tmp/ccfM1LZ3.s 			page 178


 8396      72726F72 
 8396      00
 8397              	.LASF228:
 8398 0aba 666C6173 		.ascii	"flash_get_page_count\000"
 8398      685F6765 
 8398      745F7061 
 8398      67655F63 
 8398      6F756E74 
 8399              	.LASF186:
 8400 0acf 756C5F67 		.ascii	"ul_gpnvm\000"
 8400      706E766D 
 8400      00
 8401              	.LASF17:
 8402 0ad8 5F5F7763 		.ascii	"__wch\000"
 8402      6800
 8403              	.LASF256:
 8404 0ade 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 8404      43393920 
 8404      362E332E 
 8404      31203230 
 8404      31373036 
 8405 0b11 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 8405      76352D64 
 8405      3136202D 
 8405      6D666C6F 
 8405      61742D61 
 8406 0b44 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 8406      6E2D7365 
 8406      6374696F 
 8406      6E73202D 
 8406      66646174 
 8407 0b77 6F6E7374 		.ascii	"onstant\000"
 8407      616E7400 
 8408              	.LASF168:
 8409 0b7f 504C4C5F 		.ascii	"PLL_SRC_MAINCK_XTAL\000"
 8409      5352435F 
 8409      4D41494E 
 8409      434B5F58 
 8409      54414C00 
 8410              	.LASF92:
 8411 0b93 5F676C75 		.ascii	"_glue\000"
 8411      6500
 8412              	.LASF258:
 8413 0b99 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70\000"
 8413      652F746F 
 8413      72626A6F 
 8413      726E2F65 
 8413      636C6970 
 8414              	.LASF45:
 8415 0bc8 5F69735F 		.ascii	"_is_cxa\000"
 8415      63786100 
 8416              	.LASF89:
 8417 0bd0 5F5F7367 		.ascii	"__sglue\000"
 8417      6C756500 
 8418              	.LASF111:
 8419 0bd8 5F676574 		.ascii	"_getdate_err\000"
 8419      64617465 
ARM GAS  /tmp/ccfM1LZ3.s 			page 179


 8419      5F657272 
 8419      00
 8420              	.LASF188:
 8421 0be5 666C6173 		.ascii	"flash_set_gpnvm\000"
 8421      685F7365 
 8421      745F6770 
 8421      6E766D00 
 8422              	.LASF100:
 8423 0bf5 5F737472 		.ascii	"_strtok_last\000"
 8423      746F6B5F 
 8423      6C617374 
 8423      00
 8424              	.LASF107:
 8425 0c02 5F6D6274 		.ascii	"_mbtowc_state\000"
 8425      6F77635F 
 8425      73746174 
 8425      6500
 8426              	.LASF173:
 8427 0c10 666C6173 		.ascii	"flash_write_user_signature\000"
 8427      685F7772 
 8427      6974655F 
 8427      75736572 
 8427      5F736967 
 8428              	.LASF159:
 8429 0c2b 49464C41 		.ascii	"IFLASH_ERASE_PAGES_4\000"
 8429      53485F45 
 8429      52415345 
 8429      5F504147 
 8429      45535F34 
 8430              	.LASF42:
 8431 0c40 5F666E61 		.ascii	"_fnargs\000"
 8431      72677300 
 8432              	.LASF1:
 8433 0c48 7369676E 		.ascii	"signed char\000"
 8433      65642063 
 8433      68617200 
 8434              	.LASF69:
 8435 0c54 5F726565 		.ascii	"_reent\000"
 8435      6E7400
 8436              	.LASF182:
 8437 0c5b 7569645F 		.ascii	"uid_buf\000"
 8437      62756600 
 8438              	.LASF260:
 8439 0c63 6D656D63 		.ascii	"memcpy\000"
 8439      707900
 8440              	.LASF44:
 8441 0c6a 5F666E74 		.ascii	"_fntypes\000"
 8441      79706573 
 8441      00
 8442              	.LASF241:
 8443 0c73 70756C5F 		.ascii	"pul_addr\000"
 8443      61646472 
 8443      00
 8444              	.LASF201:
 8445 0c7c 756C5F63 		.ascii	"ul_count\000"
 8445      6F756E74 
 8445      00
ARM GAS  /tmp/ccfM1LZ3.s 			page 180


 8446              	.LASF51:
 8447 0c85 5F73697A 		.ascii	"_size\000"
 8447      6500
 8448              	.LASF143:
 8449 0c8b 646F7562 		.ascii	"double\000"
 8449      6C6500
 8450              	.LASF187:
 8451 0c92 666C6173 		.ascii	"flash_is_gpnvm_set\000"
 8451      685F6973 
 8451      5F67706E 
 8451      766D5F73 
 8451      657400
 8452              	.LASF206:
 8453 0ca5 756C5F61 		.ascii	"ul_actual_start\000"
 8453      63747561 
 8453      6C5F7374 
 8453      61727400 
 8454              	.LASF14:
 8455 0cb5 5F6F6666 		.ascii	"_off_t\000"
 8455      5F7400
 8456              	.LASF62:
 8457 0cbc 5F6E6275 		.ascii	"_nbuf\000"
 8457      6600
 8458              	.LASF99:
 8459 0cc2 5F756E75 		.ascii	"_unused_rand\000"
 8459      7365645F 
 8459      72616E64 
 8459      00
 8460              	.LASF161:
 8461 0ccf 49464C41 		.ascii	"IFLASH_ERASE_PAGES_16\000"
 8461      53485F45 
 8461      52415345 
 8461      5F504147 
 8461      45535F31 
 8462              	.LASF68:
 8463 0ce5 5F666C61 		.ascii	"_flags2\000"
 8463      67733200 
 8464              	.LASF243:
 8465 0ced 7472616E 		.ascii	"translate_address\000"
 8465      736C6174 
 8465      655F6164 
 8465      64726573 
 8465      7300
 8466              	.LASF96:
 8467 0cff 5F736565 		.ascii	"_seed\000"
 8467      6400
 8468              	.LASF104:
 8469 0d05 5F72616E 		.ascii	"_rand_next\000"
 8469      645F6E65 
 8469      787400
 8470              	.LASF59:
 8471 0d10 5F736565 		.ascii	"_seek\000"
 8471      6B00
 8472              	.LASF220:
 8473 0d16 7075635F 		.ascii	"puc_page_buffer\000"
 8473      70616765 
 8473      5F627566 
ARM GAS  /tmp/ccfM1LZ3.s 			page 181


 8473      66657200 
 8474              	.LASF73:
 8475 0d26 5F737464 		.ascii	"_stderr\000"
 8475      65727200 
 8476              	.LASF119:
 8477 0d2e 5F6E6D61 		.ascii	"_nmalloc\000"
 8477      6C6C6F63 
 8477      00
 8478              	.LASF94:
 8479 0d37 5F696F62 		.ascii	"_iobs\000"
 8479      7300
 8480              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
