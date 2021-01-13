ARM GAS  /tmp/ccLuO05w.s 			page 1


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
  12              		.file	"efc.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.efc_enable_write_protection,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	efc_enable_write_protection
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	efc_enable_write_protection, %function
  25              	efc_enable_write_protection:
  26              	.LFB147:
  27              		.file 1 "../asf/sam/drivers/efc/efc.c"
   1:../asf/sam/drivers/efc/efc.c **** /**
   2:../asf/sam/drivers/efc/efc.c ****  * \file
   3:../asf/sam/drivers/efc/efc.c ****  *
   4:../asf/sam/drivers/efc/efc.c ****  * \brief Enhanced Embedded Flash Controller (EEFC) driver for SAM.
   5:../asf/sam/drivers/efc/efc.c ****  *
   6:../asf/sam/drivers/efc/efc.c ****  * Copyright (c) 2011-2016 Atmel Corporation. All rights reserved.
   7:../asf/sam/drivers/efc/efc.c ****  *
   8:../asf/sam/drivers/efc/efc.c ****  * \asf_license_start
   9:../asf/sam/drivers/efc/efc.c ****  *
  10:../asf/sam/drivers/efc/efc.c ****  * \page License
  11:../asf/sam/drivers/efc/efc.c ****  *
  12:../asf/sam/drivers/efc/efc.c ****  * Redistribution and use in source and binary forms, with or without
  13:../asf/sam/drivers/efc/efc.c ****  * modification, are permitted provided that the following conditions are met:
  14:../asf/sam/drivers/efc/efc.c ****  *
  15:../asf/sam/drivers/efc/efc.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../asf/sam/drivers/efc/efc.c ****  *    this list of conditions and the following disclaimer.
  17:../asf/sam/drivers/efc/efc.c ****  *
  18:../asf/sam/drivers/efc/efc.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../asf/sam/drivers/efc/efc.c ****  *    this list of conditions and the following disclaimer in the documentation
  20:../asf/sam/drivers/efc/efc.c ****  *    and/or other materials provided with the distribution.
  21:../asf/sam/drivers/efc/efc.c ****  *
  22:../asf/sam/drivers/efc/efc.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../asf/sam/drivers/efc/efc.c ****  *    from this software without specific prior written permission.
  24:../asf/sam/drivers/efc/efc.c ****  *
  25:../asf/sam/drivers/efc/efc.c ****  * 4. This software may only be redistributed and used in connection with an
  26:../asf/sam/drivers/efc/efc.c ****  *    Atmel microcontroller product.
  27:../asf/sam/drivers/efc/efc.c ****  *
  28:../asf/sam/drivers/efc/efc.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../asf/sam/drivers/efc/efc.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../asf/sam/drivers/efc/efc.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
ARM GAS  /tmp/ccLuO05w.s 			page 2


  31:../asf/sam/drivers/efc/efc.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:../asf/sam/drivers/efc/efc.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../asf/sam/drivers/efc/efc.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../asf/sam/drivers/efc/efc.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../asf/sam/drivers/efc/efc.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../asf/sam/drivers/efc/efc.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../asf/sam/drivers/efc/efc.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../asf/sam/drivers/efc/efc.c ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../asf/sam/drivers/efc/efc.c ****  *
  40:../asf/sam/drivers/efc/efc.c ****  * \asf_license_stop
  41:../asf/sam/drivers/efc/efc.c ****  *
  42:../asf/sam/drivers/efc/efc.c ****  */
  43:../asf/sam/drivers/efc/efc.c **** /*
  44:../asf/sam/drivers/efc/efc.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../asf/sam/drivers/efc/efc.c ****  */
  46:../asf/sam/drivers/efc/efc.c **** 
  47:../asf/sam/drivers/efc/efc.c **** #include "efc.h"
  48:../asf/sam/drivers/efc/efc.c **** 
  49:../asf/sam/drivers/efc/efc.c **** /// @cond 0
  50:../asf/sam/drivers/efc/efc.c **** /**INDENT-OFF**/
  51:../asf/sam/drivers/efc/efc.c **** #ifdef __cplusplus
  52:../asf/sam/drivers/efc/efc.c **** extern "C" {
  53:../asf/sam/drivers/efc/efc.c **** #endif
  54:../asf/sam/drivers/efc/efc.c **** /**INDENT-ON**/
  55:../asf/sam/drivers/efc/efc.c **** /// @endcond
  56:../asf/sam/drivers/efc/efc.c **** 
  57:../asf/sam/drivers/efc/efc.c **** /**
  58:../asf/sam/drivers/efc/efc.c ****  * \defgroup sam_drivers_efc_group Enhanced Embedded Flash Controller (EEFC)
  59:../asf/sam/drivers/efc/efc.c ****  *
  60:../asf/sam/drivers/efc/efc.c ****  * The Enhanced Embedded Flash Controller ensures the interface of the Flash
  61:../asf/sam/drivers/efc/efc.c ****  * block with the 32-bit internal bus.
  62:../asf/sam/drivers/efc/efc.c ****  *
  63:../asf/sam/drivers/efc/efc.c ****  * @{
  64:../asf/sam/drivers/efc/efc.c ****  */
  65:../asf/sam/drivers/efc/efc.c **** 
  66:../asf/sam/drivers/efc/efc.c **** /* Address definition for read operation */
  67:../asf/sam/drivers/efc/efc.c **** #if (SAM3XA || SAM3U4 || SAM4SD16 || SAM4SD32)
  68:../asf/sam/drivers/efc/efc.c **** # define READ_BUFF_ADDR0    IFLASH0_ADDR
  69:../asf/sam/drivers/efc/efc.c **** # define READ_BUFF_ADDR1    IFLASH1_ADDR
  70:../asf/sam/drivers/efc/efc.c **** #elif (SAM3S || SAM3N || SAM4E || SAM4N || SAMG || SAMV71 || SAMV70 || SAMS70 || SAME70)
  71:../asf/sam/drivers/efc/efc.c **** # define READ_BUFF_ADDR     IFLASH_ADDR
  72:../asf/sam/drivers/efc/efc.c **** #elif (SAM4C || SAM4CP || SAM4CM)
  73:../asf/sam/drivers/efc/efc.c **** #if (SAM4C32 || SAM4CMS32 || SAM4CMP32)
  74:../asf/sam/drivers/efc/efc.c **** # define READ_BUFF_ADDR0    IFLASH0_CNC_ADDR
  75:../asf/sam/drivers/efc/efc.c **** # define READ_BUFF_ADDR1    IFLASH1_CNC_ADDR
  76:../asf/sam/drivers/efc/efc.c **** #else
  77:../asf/sam/drivers/efc/efc.c **** # define READ_BUFF_ADDR     IFLASH_CNC_ADDR
  78:../asf/sam/drivers/efc/efc.c **** #endif
  79:../asf/sam/drivers/efc/efc.c **** #elif (SAM3U || SAM4S)
  80:../asf/sam/drivers/efc/efc.c **** # define READ_BUFF_ADDR     IFLASH0_ADDR
  81:../asf/sam/drivers/efc/efc.c **** #else
  82:../asf/sam/drivers/efc/efc.c **** # warning Only reading unique ID for sam3/4 is implemented.
  83:../asf/sam/drivers/efc/efc.c **** #endif
  84:../asf/sam/drivers/efc/efc.c **** 
  85:../asf/sam/drivers/efc/efc.c **** /* Flash Writing Protection Key */
  86:../asf/sam/drivers/efc/efc.c **** #define FWP_KEY    0x5Au
  87:../asf/sam/drivers/efc/efc.c **** 
ARM GAS  /tmp/ccLuO05w.s 			page 3


  88:../asf/sam/drivers/efc/efc.c **** #if (SAM4S || SAM4E || SAM4N || SAM4C || SAMG || SAM4CP || SAM4CM)
  89:../asf/sam/drivers/efc/efc.c **** #define EEFC_FCR_FCMD(value) \
  90:../asf/sam/drivers/efc/efc.c **** 	((EEFC_FCR_FCMD_Msk & ((value) << EEFC_FCR_FCMD_Pos)))
  91:../asf/sam/drivers/efc/efc.c **** #define EEFC_ERROR_FLAGS  (EEFC_FSR_FLOCKE | EEFC_FSR_FCMDE | EEFC_FSR_FLERR)
  92:../asf/sam/drivers/efc/efc.c **** #elif (SAMV71 || SAMV70 || SAMS70 || SAME70)
  93:../asf/sam/drivers/efc/efc.c **** #define EEFC_ERROR_FLAGS  (EEFC_FSR_FLOCKE | EEFC_FSR_FCMDE | EEFC_FSR_FLERR \
  94:../asf/sam/drivers/efc/efc.c **** 	| EEFC_FSR_UECCELSB | EEFC_FSR_MECCELSB | EEFC_FSR_UECCEMSB | EEFC_FSR_MECCEMSB)
  95:../asf/sam/drivers/efc/efc.c **** #else
  96:../asf/sam/drivers/efc/efc.c **** #define EEFC_ERROR_FLAGS  (EEFC_FSR_FLOCKE | EEFC_FSR_FCMDE)
  97:../asf/sam/drivers/efc/efc.c **** #endif
  98:../asf/sam/drivers/efc/efc.c **** 
  99:../asf/sam/drivers/efc/efc.c **** #ifndef EEFC_FCR_FKEY_PASSWD
 100:../asf/sam/drivers/efc/efc.c **** #define EEFC_FCR_FKEY_PASSWD EEFC_FCR_FKEY(FWP_KEY)
 101:../asf/sam/drivers/efc/efc.c **** #endif
 102:../asf/sam/drivers/efc/efc.c **** 
 103:../asf/sam/drivers/efc/efc.c **** 
 104:../asf/sam/drivers/efc/efc.c **** /*
 105:../asf/sam/drivers/efc/efc.c ****  * Local function declaration.
 106:../asf/sam/drivers/efc/efc.c ****  * Because they are RAM functions, they need 'extern' declaration.
 107:../asf/sam/drivers/efc/efc.c ****  */
 108:../asf/sam/drivers/efc/efc.c **** extern void efc_write_fmr(Efc *p_efc, uint32_t ul_fmr);
 109:../asf/sam/drivers/efc/efc.c **** extern uint32_t efc_perform_fcr(Efc *p_efc, uint32_t ul_fcr);
 110:../asf/sam/drivers/efc/efc.c **** 
 111:../asf/sam/drivers/efc/efc.c **** /**
 112:../asf/sam/drivers/efc/efc.c ****  * \brief Initialize the EFC controller.
 113:../asf/sam/drivers/efc/efc.c ****  *
 114:../asf/sam/drivers/efc/efc.c ****  * \param ul_access_mode 0 for 128-bit, EEFC_FMR_FAM for 64-bit.
 115:../asf/sam/drivers/efc/efc.c ****  * \param ul_fws The number of wait states in cycle (no shift).
 116:../asf/sam/drivers/efc/efc.c ****  *
 117:../asf/sam/drivers/efc/efc.c ****  * \return 0 if successful.
 118:../asf/sam/drivers/efc/efc.c ****  */
 119:../asf/sam/drivers/efc/efc.c **** uint32_t efc_init(Efc *p_efc, uint32_t ul_access_mode, uint32_t ul_fws)
 120:../asf/sam/drivers/efc/efc.c **** {
 121:../asf/sam/drivers/efc/efc.c **** #if (SAM4S || SAM4E || SAM4N || SAM4C || SAMG || SAM4CP || SAM4CM || \
 122:../asf/sam/drivers/efc/efc.c **** 	 SAMV71 || SAMV70 || SAMS70 || SAME70)
 123:../asf/sam/drivers/efc/efc.c **** 	efc_write_fmr(p_efc, ul_access_mode | EEFC_FMR_FWS(ul_fws) | EEFC_FMR_CLOE);
 124:../asf/sam/drivers/efc/efc.c **** #else
 125:../asf/sam/drivers/efc/efc.c **** 	efc_write_fmr(p_efc, ul_access_mode | EEFC_FMR_FWS(ul_fws));
 126:../asf/sam/drivers/efc/efc.c **** #endif
 127:../asf/sam/drivers/efc/efc.c **** 	return EFC_RC_OK;
 128:../asf/sam/drivers/efc/efc.c **** }
 129:../asf/sam/drivers/efc/efc.c **** 
 130:../asf/sam/drivers/efc/efc.c **** #if (SAM4S || SAM4E || SAM4N || SAM4C || SAMG || SAM4CP || SAM4CM || \
 131:../asf/sam/drivers/efc/efc.c **** 	 SAMV71 || SAMV70 || SAMS70 || SAME70)
 132:../asf/sam/drivers/efc/efc.c **** /**
 133:../asf/sam/drivers/efc/efc.c ****  * \brief Enable code loop optimization.
 134:../asf/sam/drivers/efc/efc.c ****  *
 135:../asf/sam/drivers/efc/efc.c ****  * \param p_efc Pointer to an EFC instance.
 136:../asf/sam/drivers/efc/efc.c ****  */
 137:../asf/sam/drivers/efc/efc.c **** void efc_enable_cloe(Efc *p_efc)
 138:../asf/sam/drivers/efc/efc.c **** {
 139:../asf/sam/drivers/efc/efc.c **** 	uint32_t ul_fmr = p_efc->EEFC_FMR;
 140:../asf/sam/drivers/efc/efc.c **** 	efc_write_fmr(p_efc, ul_fmr | EEFC_FMR_CLOE);
 141:../asf/sam/drivers/efc/efc.c **** }
 142:../asf/sam/drivers/efc/efc.c **** 
 143:../asf/sam/drivers/efc/efc.c **** /**
 144:../asf/sam/drivers/efc/efc.c ****  * \brief Disable code loop optimization.
ARM GAS  /tmp/ccLuO05w.s 			page 4


 145:../asf/sam/drivers/efc/efc.c ****  *
 146:../asf/sam/drivers/efc/efc.c ****  * \param p_efc Pointer to an EFC instance.
 147:../asf/sam/drivers/efc/efc.c ****  */
 148:../asf/sam/drivers/efc/efc.c **** void efc_disable_cloe(Efc *p_efc)
 149:../asf/sam/drivers/efc/efc.c **** {
 150:../asf/sam/drivers/efc/efc.c **** 	uint32_t ul_fmr = p_efc->EEFC_FMR;
 151:../asf/sam/drivers/efc/efc.c **** 	efc_write_fmr(p_efc, ul_fmr & (~EEFC_FMR_CLOE));
 152:../asf/sam/drivers/efc/efc.c **** }
 153:../asf/sam/drivers/efc/efc.c **** #endif
 154:../asf/sam/drivers/efc/efc.c **** 
 155:../asf/sam/drivers/efc/efc.c **** 
 156:../asf/sam/drivers/efc/efc.c **** 
 157:../asf/sam/drivers/efc/efc.c **** /**
 158:../asf/sam/drivers/efc/efc.c ****  * \brief Enable the flash ready interrupt.
 159:../asf/sam/drivers/efc/efc.c ****  *
 160:../asf/sam/drivers/efc/efc.c ****  * \param p_efc Pointer to an EFC instance.
 161:../asf/sam/drivers/efc/efc.c ****  */
 162:../asf/sam/drivers/efc/efc.c **** void efc_enable_frdy_interrupt(Efc *p_efc)
 163:../asf/sam/drivers/efc/efc.c **** {
 164:../asf/sam/drivers/efc/efc.c **** 	uint32_t ul_fmr = p_efc->EEFC_FMR;
 165:../asf/sam/drivers/efc/efc.c **** 
 166:../asf/sam/drivers/efc/efc.c **** 	efc_write_fmr(p_efc, ul_fmr | EEFC_FMR_FRDY);
 167:../asf/sam/drivers/efc/efc.c **** }
 168:../asf/sam/drivers/efc/efc.c **** 
 169:../asf/sam/drivers/efc/efc.c **** /**
 170:../asf/sam/drivers/efc/efc.c ****  * \brief Disable the flash ready interrupt.
 171:../asf/sam/drivers/efc/efc.c ****  *
 172:../asf/sam/drivers/efc/efc.c ****  * \param p_efc Pointer to an EFC instance.
 173:../asf/sam/drivers/efc/efc.c ****  */
 174:../asf/sam/drivers/efc/efc.c **** void efc_disable_frdy_interrupt(Efc *p_efc)
 175:../asf/sam/drivers/efc/efc.c **** {
 176:../asf/sam/drivers/efc/efc.c **** 	uint32_t ul_fmr = p_efc->EEFC_FMR;
 177:../asf/sam/drivers/efc/efc.c **** 
 178:../asf/sam/drivers/efc/efc.c **** 	efc_write_fmr(p_efc, ul_fmr & (~EEFC_FMR_FRDY));
 179:../asf/sam/drivers/efc/efc.c **** }
 180:../asf/sam/drivers/efc/efc.c **** 
 181:../asf/sam/drivers/efc/efc.c **** #if (SAMV71 || SAMV70 || SAMS70 || SAME70)
 182:../asf/sam/drivers/efc/efc.c **** /**
 183:../asf/sam/drivers/efc/efc.c ****  * \brief Enable the write protection.
 184:../asf/sam/drivers/efc/efc.c ****  *
 185:../asf/sam/drivers/efc/efc.c ****  * \param p_efc Pointer to an EFC instance.
 186:../asf/sam/drivers/efc/efc.c ****  */
 187:../asf/sam/drivers/efc/efc.c **** void efc_enable_write_protection(Efc *p_efc)
 188:../asf/sam/drivers/efc/efc.c **** {
  28              		.loc 1 188 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              		@ link register save eliminated.
  33              	.LVL0:
 189:../asf/sam/drivers/efc/efc.c **** 	p_efc->EEFC_WPMR = EEFC_WPMR_WPKEY_PASSWD | EEFC_WPMR_WPEN;
  34              		.loc 1 189 0
  35 0000 014B     		ldr	r3, .L2
  36 0002 C0F8E430 		str	r3, [r0, #228]
  37 0006 7047     		bx	lr
  38              	.L3:
  39              		.align	2
ARM GAS  /tmp/ccLuO05w.s 			page 5


  40              	.L2:
  41 0008 01434645 		.word	1162232577
  42              		.cfi_endproc
  43              	.LFE147:
  44              		.size	efc_enable_write_protection, .-efc_enable_write_protection
  45              		.section	.text.efc_disable_write_protection,"ax",%progbits
  46              		.align	1
  47              		.p2align 2,,3
  48              		.global	efc_disable_write_protection
  49              		.syntax unified
  50              		.thumb
  51              		.thumb_func
  52              		.fpu fpv5-d16
  53              		.type	efc_disable_write_protection, %function
  54              	efc_disable_write_protection:
  55              	.LFB148:
 190:../asf/sam/drivers/efc/efc.c **** }
 191:../asf/sam/drivers/efc/efc.c **** 
 192:../asf/sam/drivers/efc/efc.c **** /**
 193:../asf/sam/drivers/efc/efc.c ****  * \brief Disable the write protection.
 194:../asf/sam/drivers/efc/efc.c ****  *
 195:../asf/sam/drivers/efc/efc.c ****  * \param p_efc Pointer to an EFC instance.
 196:../asf/sam/drivers/efc/efc.c ****  */
 197:../asf/sam/drivers/efc/efc.c **** void efc_disable_write_protection(Efc *p_efc)
 198:../asf/sam/drivers/efc/efc.c **** {
  56              		.loc 1 198 0
  57              		.cfi_startproc
  58              		@ args = 0, pretend = 0, frame = 0
  59              		@ frame_needed = 0, uses_anonymous_args = 0
  60              		@ link register save eliminated.
  61              	.LVL1:
 199:../asf/sam/drivers/efc/efc.c **** 	p_efc->EEFC_WPMR = EEFC_WPMR_WPKEY_PASSWD;
  62              		.loc 1 199 0
  63 0000 014B     		ldr	r3, .L5
  64 0002 C0F8E430 		str	r3, [r0, #228]
  65 0006 7047     		bx	lr
  66              	.L6:
  67              		.align	2
  68              	.L5:
  69 0008 00434645 		.word	1162232576
  70              		.cfi_endproc
  71              	.LFE148:
  72              		.size	efc_disable_write_protection, .-efc_disable_write_protection
  73              		.section	.text.efc_get_wait_state,"ax",%progbits
  74              		.align	1
  75              		.p2align 2,,3
  76              		.global	efc_get_wait_state
  77              		.syntax unified
  78              		.thumb
  79              		.thumb_func
  80              		.fpu fpv5-d16
  81              		.type	efc_get_wait_state, %function
  82              	efc_get_wait_state:
  83              	.LFB150:
 200:../asf/sam/drivers/efc/efc.c **** }
 201:../asf/sam/drivers/efc/efc.c **** #else
 202:../asf/sam/drivers/efc/efc.c **** /**
ARM GAS  /tmp/ccLuO05w.s 			page 6


 203:../asf/sam/drivers/efc/efc.c ****  * \brief Set flash access mode.
 204:../asf/sam/drivers/efc/efc.c ****  *
 205:../asf/sam/drivers/efc/efc.c ****  * \param p_efc Pointer to an EFC instance.
 206:../asf/sam/drivers/efc/efc.c ****  * \param ul_mode 0 for 128-bit, EEFC_FMR_FAM for 64-bit.
 207:../asf/sam/drivers/efc/efc.c ****  */
 208:../asf/sam/drivers/efc/efc.c **** void efc_set_flash_access_mode(Efc *p_efc, uint32_t ul_mode)
 209:../asf/sam/drivers/efc/efc.c **** {
 210:../asf/sam/drivers/efc/efc.c **** 	uint32_t ul_fmr = p_efc->EEFC_FMR & (~EEFC_FMR_FAM);
 211:../asf/sam/drivers/efc/efc.c **** 
 212:../asf/sam/drivers/efc/efc.c **** 	efc_write_fmr(p_efc, ul_fmr | ul_mode);
 213:../asf/sam/drivers/efc/efc.c **** }
 214:../asf/sam/drivers/efc/efc.c **** 
 215:../asf/sam/drivers/efc/efc.c **** /**
 216:../asf/sam/drivers/efc/efc.c ****  * \brief Get flash access mode.
 217:../asf/sam/drivers/efc/efc.c ****  *
 218:../asf/sam/drivers/efc/efc.c ****  * \param p_efc Pointer to an EFC instance.
 219:../asf/sam/drivers/efc/efc.c ****  *
 220:../asf/sam/drivers/efc/efc.c ****  * \return 0 for 128-bit or EEFC_FMR_FAM for 64-bit.
 221:../asf/sam/drivers/efc/efc.c ****  */
 222:../asf/sam/drivers/efc/efc.c **** uint32_t efc_get_flash_access_mode(Efc *p_efc)
 223:../asf/sam/drivers/efc/efc.c **** {
 224:../asf/sam/drivers/efc/efc.c **** 	return (p_efc->EEFC_FMR & EEFC_FMR_FAM);
 225:../asf/sam/drivers/efc/efc.c **** }
 226:../asf/sam/drivers/efc/efc.c **** #endif
 227:../asf/sam/drivers/efc/efc.c **** 
 228:../asf/sam/drivers/efc/efc.c **** /**
 229:../asf/sam/drivers/efc/efc.c ****  * \brief Set flash wait state.
 230:../asf/sam/drivers/efc/efc.c ****  *
 231:../asf/sam/drivers/efc/efc.c ****  * \param p_efc Pointer to an EFC instance.
 232:../asf/sam/drivers/efc/efc.c ****  * \param ul_fws The number of wait states in cycle (no shift).
 233:../asf/sam/drivers/efc/efc.c ****  */
 234:../asf/sam/drivers/efc/efc.c **** void efc_set_wait_state(Efc *p_efc, uint32_t ul_fws)
 235:../asf/sam/drivers/efc/efc.c **** {
 236:../asf/sam/drivers/efc/efc.c **** 	uint32_t ul_fmr = p_efc->EEFC_FMR & (~EEFC_FMR_FWS_Msk);
 237:../asf/sam/drivers/efc/efc.c **** 
 238:../asf/sam/drivers/efc/efc.c **** 	efc_write_fmr(p_efc, ul_fmr | EEFC_FMR_FWS(ul_fws));
 239:../asf/sam/drivers/efc/efc.c **** }
 240:../asf/sam/drivers/efc/efc.c **** 
 241:../asf/sam/drivers/efc/efc.c **** /**
 242:../asf/sam/drivers/efc/efc.c ****  * \brief Get flash wait state.
 243:../asf/sam/drivers/efc/efc.c ****  *
 244:../asf/sam/drivers/efc/efc.c ****  * \param p_efc Pointer to an EFC instance.
 245:../asf/sam/drivers/efc/efc.c ****  *
 246:../asf/sam/drivers/efc/efc.c ****  * \return The number of wait states in cycle (no shift).
 247:../asf/sam/drivers/efc/efc.c ****  */
 248:../asf/sam/drivers/efc/efc.c **** uint32_t efc_get_wait_state(Efc *p_efc)
 249:../asf/sam/drivers/efc/efc.c **** {
  84              		.loc 1 249 0
  85              		.cfi_startproc
  86              		@ args = 0, pretend = 0, frame = 0
  87              		@ frame_needed = 0, uses_anonymous_args = 0
  88              		@ link register save eliminated.
  89              	.LVL2:
 250:../asf/sam/drivers/efc/efc.c **** 	return ((p_efc->EEFC_FMR & EEFC_FMR_FWS_Msk) >> EEFC_FMR_FWS_Pos);
  90              		.loc 1 250 0
  91 0000 0068     		ldr	r0, [r0]
  92              	.LVL3:
ARM GAS  /tmp/ccLuO05w.s 			page 7


 251:../asf/sam/drivers/efc/efc.c **** }
  93              		.loc 1 251 0
  94 0002 C0F30320 		ubfx	r0, r0, #8, #4
  95 0006 7047     		bx	lr
  96              		.cfi_endproc
  97              	.LFE150:
  98              		.size	efc_get_wait_state, .-efc_get_wait_state
  99              		.section	.text.efc_get_status,"ax",%progbits
 100              		.align	1
 101              		.p2align 2,,3
 102              		.global	efc_get_status
 103              		.syntax unified
 104              		.thumb
 105              		.thumb_func
 106              		.fpu fpv5-d16
 107              		.type	efc_get_status, %function
 108              	efc_get_status:
 109              	.LFB152:
 252:../asf/sam/drivers/efc/efc.c **** 
 253:../asf/sam/drivers/efc/efc.c **** /**
 254:../asf/sam/drivers/efc/efc.c ****  * \brief Perform the given command and wait until its completion (or an error).
 255:../asf/sam/drivers/efc/efc.c ****  *
 256:../asf/sam/drivers/efc/efc.c ****  * \note Unique ID commands are not supported, use efc_perform_read_sequence.
 257:../asf/sam/drivers/efc/efc.c ****  *
 258:../asf/sam/drivers/efc/efc.c ****  * \param p_efc Pointer to an EFC instance.
 259:../asf/sam/drivers/efc/efc.c ****  * \param ul_command Command to perform.
 260:../asf/sam/drivers/efc/efc.c ****  * \param ul_argument Optional command argument.
 261:../asf/sam/drivers/efc/efc.c ****  *
 262:../asf/sam/drivers/efc/efc.c ****  * \note This function will automatically choose to use IAP function.
 263:../asf/sam/drivers/efc/efc.c ****  *
 264:../asf/sam/drivers/efc/efc.c ****  * \return 0 if successful, otherwise returns an error code.
 265:../asf/sam/drivers/efc/efc.c ****  */
 266:../asf/sam/drivers/efc/efc.c **** uint32_t efc_perform_command(Efc *p_efc, uint32_t ul_command,
 267:../asf/sam/drivers/efc/efc.c **** 		uint32_t ul_argument)
 268:../asf/sam/drivers/efc/efc.c **** {
 269:../asf/sam/drivers/efc/efc.c **** 	uint32_t result;
 270:../asf/sam/drivers/efc/efc.c **** 	irqflags_t flags;
 271:../asf/sam/drivers/efc/efc.c **** 
 272:../asf/sam/drivers/efc/efc.c **** 	/* Unique ID commands are not supported. */
 273:../asf/sam/drivers/efc/efc.c **** 	if (ul_command == EFC_FCMD_STUI || ul_command == EFC_FCMD_SPUI) {
 274:../asf/sam/drivers/efc/efc.c **** 		return EFC_RC_NOT_SUPPORT;
 275:../asf/sam/drivers/efc/efc.c **** 	}
 276:../asf/sam/drivers/efc/efc.c **** 
 277:../asf/sam/drivers/efc/efc.c **** 	flags = cpu_irq_save();
 278:../asf/sam/drivers/efc/efc.c **** 	/* Use RAM Function. */
 279:../asf/sam/drivers/efc/efc.c **** 	result = efc_perform_fcr(p_efc,
 280:../asf/sam/drivers/efc/efc.c **** 			EEFC_FCR_FKEY_PASSWD | EEFC_FCR_FARG(ul_argument) |
 281:../asf/sam/drivers/efc/efc.c **** 			EEFC_FCR_FCMD(ul_command));
 282:../asf/sam/drivers/efc/efc.c **** 	cpu_irq_restore(flags);
 283:../asf/sam/drivers/efc/efc.c **** 	return result;
 284:../asf/sam/drivers/efc/efc.c **** }
 285:../asf/sam/drivers/efc/efc.c **** 
 286:../asf/sam/drivers/efc/efc.c **** /**
 287:../asf/sam/drivers/efc/efc.c ****  * \brief Get the current status of the EEFC.
 288:../asf/sam/drivers/efc/efc.c ****  *
 289:../asf/sam/drivers/efc/efc.c ****  * \note This function clears the value of some status bits (FLOCKE, FCMDE).
 290:../asf/sam/drivers/efc/efc.c ****  *
ARM GAS  /tmp/ccLuO05w.s 			page 8


 291:../asf/sam/drivers/efc/efc.c ****  * \param p_efc Pointer to an EFC instance.
 292:../asf/sam/drivers/efc/efc.c ****  *
 293:../asf/sam/drivers/efc/efc.c ****  * \return The current status.
 294:../asf/sam/drivers/efc/efc.c ****  */
 295:../asf/sam/drivers/efc/efc.c **** uint32_t efc_get_status(Efc *p_efc)
 296:../asf/sam/drivers/efc/efc.c **** {
 110              		.loc 1 296 0
 111              		.cfi_startproc
 112              		@ args = 0, pretend = 0, frame = 0
 113              		@ frame_needed = 0, uses_anonymous_args = 0
 114              		@ link register save eliminated.
 115              	.LVL4:
 297:../asf/sam/drivers/efc/efc.c **** 	return p_efc->EEFC_FSR;
 116              		.loc 1 297 0
 117 0000 8068     		ldr	r0, [r0, #8]
 118              	.LVL5:
 298:../asf/sam/drivers/efc/efc.c **** }
 119              		.loc 1 298 0
 120 0002 7047     		bx	lr
 121              		.cfi_endproc
 122              	.LFE152:
 123              		.size	efc_get_status, .-efc_get_status
 124              		.section	.text.efc_get_result,"ax",%progbits
 125              		.align	1
 126              		.p2align 2,,3
 127              		.global	efc_get_result
 128              		.syntax unified
 129              		.thumb
 130              		.thumb_func
 131              		.fpu fpv5-d16
 132              		.type	efc_get_result, %function
 133              	efc_get_result:
 134              	.LFB153:
 299:../asf/sam/drivers/efc/efc.c **** 
 300:../asf/sam/drivers/efc/efc.c **** /**
 301:../asf/sam/drivers/efc/efc.c ****  * \brief Get the result of the last executed command.
 302:../asf/sam/drivers/efc/efc.c ****  *
 303:../asf/sam/drivers/efc/efc.c ****  * \param p_efc Pointer to an EFC instance.
 304:../asf/sam/drivers/efc/efc.c ****  *
 305:../asf/sam/drivers/efc/efc.c ****  * \return The result of the last executed command.
 306:../asf/sam/drivers/efc/efc.c ****  */
 307:../asf/sam/drivers/efc/efc.c **** uint32_t efc_get_result(Efc *p_efc)
 308:../asf/sam/drivers/efc/efc.c **** {
 135              		.loc 1 308 0
 136              		.cfi_startproc
 137              		@ args = 0, pretend = 0, frame = 0
 138              		@ frame_needed = 0, uses_anonymous_args = 0
 139              		@ link register save eliminated.
 140              	.LVL6:
 309:../asf/sam/drivers/efc/efc.c **** 	return p_efc->EEFC_FRR;
 141              		.loc 1 309 0
 142 0000 C068     		ldr	r0, [r0, #12]
 143              	.LVL7:
 310:../asf/sam/drivers/efc/efc.c **** }
 144              		.loc 1 310 0
 145 0002 7047     		bx	lr
 146              		.cfi_endproc
ARM GAS  /tmp/ccLuO05w.s 			page 9


 147              	.LFE153:
 148              		.size	efc_get_result, .-efc_get_result
 149              		.section	.ramfunc,"ax",%progbits
 150              		.align	1
 151              		.p2align 2,,3
 152              		.global	efc_perform_read_sequence
 153              		.syntax unified
 154              		.thumb
 155              		.thumb_func
 156              		.fpu fpv5-d16
 157              		.type	efc_perform_read_sequence, %function
 158              	efc_perform_read_sequence:
 159              	.LFB154:
 311:../asf/sam/drivers/efc/efc.c **** 
 312:../asf/sam/drivers/efc/efc.c **** /**
 313:../asf/sam/drivers/efc/efc.c ****  * \brief Perform read sequence. Supported sequences are read Unique ID and
 314:../asf/sam/drivers/efc/efc.c ****  * read User Signature
 315:../asf/sam/drivers/efc/efc.c ****  *
 316:../asf/sam/drivers/efc/efc.c ****  * \param p_efc Pointer to an EFC instance.
 317:../asf/sam/drivers/efc/efc.c ****  * \param ul_cmd_st Start command to perform.
 318:../asf/sam/drivers/efc/efc.c ****  * \param ul_cmd_sp Stop command to perform.
 319:../asf/sam/drivers/efc/efc.c ****  * \param p_ul_buf Pointer to an data buffer.
 320:../asf/sam/drivers/efc/efc.c ****  * \param ul_size Buffer size.
 321:../asf/sam/drivers/efc/efc.c ****  *
 322:../asf/sam/drivers/efc/efc.c ****  * \return 0 if successful, otherwise returns an error code.
 323:../asf/sam/drivers/efc/efc.c ****  */
 324:../asf/sam/drivers/efc/efc.c **** __no_inline
 325:../asf/sam/drivers/efc/efc.c **** RAMFUNC
 326:../asf/sam/drivers/efc/efc.c **** uint32_t efc_perform_read_sequence(Efc *p_efc,
 327:../asf/sam/drivers/efc/efc.c **** 		uint32_t ul_cmd_st, uint32_t ul_cmd_sp,
 328:../asf/sam/drivers/efc/efc.c **** 		uint32_t *p_ul_buf, uint32_t ul_size)
 329:../asf/sam/drivers/efc/efc.c **** {
 160              		.loc 1 329 0
 161              		.cfi_startproc
 162              		@ args = 4, pretend = 0, frame = 8
 163              		@ frame_needed = 0, uses_anonymous_args = 0
 164              		@ link register save eliminated.
 165              	.LVL8:
 166 0000 30B4     		push	{r4, r5}
 167              		.cfi_def_cfa_offset 8
 168              		.cfi_offset 4, -8
 169              		.cfi_offset 5, -4
 170 0002 82B0     		sub	sp, sp, #8
 171              		.cfi_def_cfa_offset 16
 172              		.loc 1 329 0
 173 0004 049D     		ldr	r5, [sp, #16]
 330:../asf/sam/drivers/efc/efc.c **** 	volatile uint32_t ul_status;
 331:../asf/sam/drivers/efc/efc.c **** 	uint32_t ul_cnt;
 332:../asf/sam/drivers/efc/efc.c **** 
 333:../asf/sam/drivers/efc/efc.c **** #if (SAM3U4 || SAM3XA || SAM4SD16 || SAM4SD32 || SAM4C32 || SAM4CMS32|| SAM4CMP32)
 334:../asf/sam/drivers/efc/efc.c **** 	uint32_t *p_ul_data =
 335:../asf/sam/drivers/efc/efc.c **** 			(uint32_t *) ((p_efc == EFC0) ?
 336:../asf/sam/drivers/efc/efc.c **** 			READ_BUFF_ADDR0 : READ_BUFF_ADDR1);
 337:../asf/sam/drivers/efc/efc.c **** #elif (SAM3S || SAM4S || SAM3N || SAM3U || SAM4E || SAM4N || SAM4C || SAMG || \
 338:../asf/sam/drivers/efc/efc.c **** 	   SAM4CP || SAM4CM || SAMV71 || SAMV70 || SAMS70 || SAME70)
 339:../asf/sam/drivers/efc/efc.c **** 	uint32_t *p_ul_data = (uint32_t *) READ_BUFF_ADDR;
 340:../asf/sam/drivers/efc/efc.c **** #else
ARM GAS  /tmp/ccLuO05w.s 			page 10


 341:../asf/sam/drivers/efc/efc.c **** 	return EFC_RC_NOT_SUPPORT;
 342:../asf/sam/drivers/efc/efc.c **** #endif
 343:../asf/sam/drivers/efc/efc.c **** 
 344:../asf/sam/drivers/efc/efc.c **** 	if (p_ul_buf == NULL) {
 174              		.loc 1 344 0
 175 0006 43B3     		cbz	r3, .L17
 345:../asf/sam/drivers/efc/efc.c **** 		return EFC_RC_INVALID;
 346:../asf/sam/drivers/efc/efc.c **** 	}
 347:../asf/sam/drivers/efc/efc.c **** 
 348:../asf/sam/drivers/efc/efc.c **** 	p_efc->EEFC_FMR |= (0x1u << 16);
 176              		.loc 1 348 0
 177 0008 0468     		ldr	r4, [r0]
 349:../asf/sam/drivers/efc/efc.c **** 
 350:../asf/sam/drivers/efc/efc.c **** 	/* Send the Start Read command */
 351:../asf/sam/drivers/efc/efc.c **** #if (SAM4S || SAM4E || SAM4N || SAM4C || SAMG || SAM4CP || SAM4CM || \
 352:../asf/sam/drivers/efc/efc.c **** 	 SAMV71 || SAMV70 || SAMS70 || SAME70)
 353:../asf/sam/drivers/efc/efc.c **** 	p_efc->EEFC_FCR = EEFC_FCR_FKEY_PASSWD | EEFC_FCR_FARG(0)
 354:../asf/sam/drivers/efc/efc.c **** 			| EEFC_FCR_FCMD(ul_cmd_st);
 178              		.loc 1 354 0
 179 000a C9B2     		uxtb	r1, r1
 180              	.LVL9:
 348:../asf/sam/drivers/efc/efc.c **** 
 181              		.loc 1 348 0
 182 000c 44F48034 		orr	r4, r4, #65536
 183              		.loc 1 354 0
 184 0010 41F0B441 		orr	r1, r1, #1509949440
 348:../asf/sam/drivers/efc/efc.c **** 
 185              		.loc 1 348 0
 186 0014 0460     		str	r4, [r0]
 353:../asf/sam/drivers/efc/efc.c **** 			| EEFC_FCR_FCMD(ul_cmd_st);
 187              		.loc 1 353 0
 188 0016 4160     		str	r1, [r0, #4]
 189              	.L12:
 355:../asf/sam/drivers/efc/efc.c **** #else
 356:../asf/sam/drivers/efc/efc.c **** 	p_efc->EEFC_FCR = EEFC_FCR_FKEY(FWP_KEY) | EEFC_FCR_FARG(0)
 357:../asf/sam/drivers/efc/efc.c **** 			| EEFC_FCR_FCMD(ul_cmd_st);
 358:../asf/sam/drivers/efc/efc.c **** #endif
 359:../asf/sam/drivers/efc/efc.c **** 	/* Wait for the FRDY bit in the Flash Programming Status Register
 360:../asf/sam/drivers/efc/efc.c **** 	 * (EEFC_FSR) falls.
 361:../asf/sam/drivers/efc/efc.c **** 	 */
 362:../asf/sam/drivers/efc/efc.c **** 	do {
 363:../asf/sam/drivers/efc/efc.c **** 		ul_status = p_efc->EEFC_FSR;
 190              		.loc 1 363 0 discriminator 1
 191 0018 8168     		ldr	r1, [r0, #8]
 192 001a 0191     		str	r1, [sp, #4]
 364:../asf/sam/drivers/efc/efc.c **** 	} while ((ul_status & EEFC_FSR_FRDY) == EEFC_FSR_FRDY);
 193              		.loc 1 364 0 discriminator 1
 194 001c 0199     		ldr	r1, [sp, #4]
 195 001e C907     		lsls	r1, r1, #31
 196 0020 FAD4     		bmi	.L12
 197              	.LVL10:
 365:../asf/sam/drivers/efc/efc.c **** 
 366:../asf/sam/drivers/efc/efc.c **** 	/* The data is located in the first address of the Flash
 367:../asf/sam/drivers/efc/efc.c **** 	 * memory mapping.
 368:../asf/sam/drivers/efc/efc.c **** 	 */
 369:../asf/sam/drivers/efc/efc.c **** 	for (ul_cnt = 0; ul_cnt < ul_size; ul_cnt++) {
 198              		.loc 1 369 0 discriminator 1
ARM GAS  /tmp/ccLuO05w.s 			page 11


 199 0022 45B1     		cbz	r5, .L16
 200              		.loc 1 369 0 is_stmt 0
 201 0024 0F49     		ldr	r1, .L24
 202 0026 03EB8505 		add	r5, r3, r5, lsl #2
 203              	.LVL11:
 204              	.L15:
 370:../asf/sam/drivers/efc/efc.c **** 		p_ul_buf[ul_cnt] = p_ul_data[ul_cnt];
 205              		.loc 1 370 0 is_stmt 1 discriminator 3
 206 002a 51F8044F 		ldr	r4, [r1, #4]!
 207 002e 43F8044B 		str	r4, [r3], #4
 369:../asf/sam/drivers/efc/efc.c **** 		p_ul_buf[ul_cnt] = p_ul_data[ul_cnt];
 208              		.loc 1 369 0 discriminator 3
 209 0032 AB42     		cmp	r3, r5
 210 0034 F9D1     		bne	.L15
 211              	.L16:
 371:../asf/sam/drivers/efc/efc.c **** 	}
 372:../asf/sam/drivers/efc/efc.c **** 
 373:../asf/sam/drivers/efc/efc.c **** 	/* To stop the read mode */
 374:../asf/sam/drivers/efc/efc.c **** 	p_efc->EEFC_FCR =
 375:../asf/sam/drivers/efc/efc.c **** #if (SAM4S || SAM4E || SAM4N || SAM4C || SAMG || SAM4CP || SAM4CM || \
 376:../asf/sam/drivers/efc/efc.c **** 	 SAMV71 || SAMV70 || SAMS70 || SAME70)
 377:../asf/sam/drivers/efc/efc.c **** 			EEFC_FCR_FKEY_PASSWD | EEFC_FCR_FARG(0) |
 378:../asf/sam/drivers/efc/efc.c **** 			EEFC_FCR_FCMD(ul_cmd_sp);
 212              		.loc 1 378 0
 213 0036 D2B2     		uxtb	r2, r2
 214              	.LVL12:
 377:../asf/sam/drivers/efc/efc.c **** 			EEFC_FCR_FCMD(ul_cmd_sp);
 215              		.loc 1 377 0
 216 0038 42F0B442 		orr	r2, r2, #1509949440
 374:../asf/sam/drivers/efc/efc.c **** #if (SAM4S || SAM4E || SAM4N || SAM4C || SAMG || SAM4CP || SAM4CM || \
 217              		.loc 1 374 0
 218 003c 4260     		str	r2, [r0, #4]
 219              	.L14:
 379:../asf/sam/drivers/efc/efc.c **** #else
 380:../asf/sam/drivers/efc/efc.c **** 			EEFC_FCR_FKEY(FWP_KEY) | EEFC_FCR_FARG(0) |
 381:../asf/sam/drivers/efc/efc.c **** 			EEFC_FCR_FCMD(ul_cmd_sp);
 382:../asf/sam/drivers/efc/efc.c **** #endif
 383:../asf/sam/drivers/efc/efc.c **** 	/* Wait for the FRDY bit in the Flash Programming Status Register (EEFC_FSR)
 384:../asf/sam/drivers/efc/efc.c **** 	 * rises.
 385:../asf/sam/drivers/efc/efc.c **** 	 */
 386:../asf/sam/drivers/efc/efc.c **** 	do {
 387:../asf/sam/drivers/efc/efc.c **** 		ul_status = p_efc->EEFC_FSR;
 220              		.loc 1 387 0 discriminator 1
 221 003e 8368     		ldr	r3, [r0, #8]
 222 0040 0193     		str	r3, [sp, #4]
 388:../asf/sam/drivers/efc/efc.c **** 	} while ((ul_status & EEFC_FSR_FRDY) != EEFC_FSR_FRDY);
 223              		.loc 1 388 0 discriminator 1
 224 0042 019B     		ldr	r3, [sp, #4]
 225 0044 DB07     		lsls	r3, r3, #31
 226 0046 FAD5     		bpl	.L14
 389:../asf/sam/drivers/efc/efc.c **** 
 390:../asf/sam/drivers/efc/efc.c **** 	p_efc->EEFC_FMR &= ~(0x1u << 16);
 227              		.loc 1 390 0
 228 0048 0368     		ldr	r3, [r0]
 391:../asf/sam/drivers/efc/efc.c **** 
 392:../asf/sam/drivers/efc/efc.c **** 	return EFC_RC_OK;
 229              		.loc 1 392 0
ARM GAS  /tmp/ccLuO05w.s 			page 12


 230 004a 0022     		movs	r2, #0
 390:../asf/sam/drivers/efc/efc.c **** 
 231              		.loc 1 390 0
 232 004c 23F48033 		bic	r3, r3, #65536
 233 0050 0360     		str	r3, [r0]
 393:../asf/sam/drivers/efc/efc.c **** }
 234              		.loc 1 393 0
 235 0052 1046     		mov	r0, r2
 236              	.LVL13:
 237 0054 02B0     		add	sp, sp, #8
 238              		.cfi_remember_state
 239              		.cfi_def_cfa_offset 8
 240              		@ sp needed
 241 0056 30BC     		pop	{r4, r5}
 242              		.cfi_restore 5
 243              		.cfi_restore 4
 244              		.cfi_def_cfa_offset 0
 245              	.LVL14:
 246 0058 7047     		bx	lr
 247              	.LVL15:
 248              	.L17:
 249              		.cfi_restore_state
 345:../asf/sam/drivers/efc/efc.c **** 	}
 250              		.loc 1 345 0
 251 005a 0222     		movs	r2, #2
 252              	.LVL16:
 253              		.loc 1 393 0
 254 005c 1046     		mov	r0, r2
 255              	.LVL17:
 256 005e 02B0     		add	sp, sp, #8
 257              		.cfi_def_cfa_offset 8
 258              		@ sp needed
 259 0060 30BC     		pop	{r4, r5}
 260              		.cfi_restore 4
 261              		.cfi_restore 5
 262              		.cfi_def_cfa_offset 0
 263              	.LVL18:
 264 0062 7047     		bx	lr
 265              	.L25:
 266              		.align	2
 267              	.L24:
 268 0064 FCFF3F00 		.word	4194300
 269              		.cfi_endproc
 270              	.LFE154:
 271              		.size	efc_perform_read_sequence, .-efc_perform_read_sequence
 272              		.align	1
 273              		.p2align 2,,3
 274              		.global	efc_write_fmr
 275              		.syntax unified
 276              		.thumb
 277              		.thumb_func
 278              		.fpu fpv5-d16
 279              		.type	efc_write_fmr, %function
 280              	efc_write_fmr:
 281              	.LFB155:
 394:../asf/sam/drivers/efc/efc.c **** 
 395:../asf/sam/drivers/efc/efc.c **** /**
ARM GAS  /tmp/ccLuO05w.s 			page 13


 396:../asf/sam/drivers/efc/efc.c ****  * \brief Set mode register.
 397:../asf/sam/drivers/efc/efc.c ****  *
 398:../asf/sam/drivers/efc/efc.c ****  * \param p_efc Pointer to an EFC instance.
 399:../asf/sam/drivers/efc/efc.c ****  * \param ul_fmr Value of mode register
 400:../asf/sam/drivers/efc/efc.c ****  */
 401:../asf/sam/drivers/efc/efc.c **** __no_inline
 402:../asf/sam/drivers/efc/efc.c **** RAMFUNC
 403:../asf/sam/drivers/efc/efc.c **** void efc_write_fmr(Efc *p_efc, uint32_t ul_fmr)
 404:../asf/sam/drivers/efc/efc.c **** {
 282              		.loc 1 404 0
 283              		.cfi_startproc
 284              		@ args = 0, pretend = 0, frame = 0
 285              		@ frame_needed = 0, uses_anonymous_args = 0
 286              		@ link register save eliminated.
 287              	.LVL19:
 405:../asf/sam/drivers/efc/efc.c **** 	p_efc->EEFC_FMR = ul_fmr;
 288              		.loc 1 405 0
 289 0068 0160     		str	r1, [r0]
 290 006a 7047     		bx	lr
 291              		.cfi_endproc
 292              	.LFE155:
 293              		.size	efc_write_fmr, .-efc_write_fmr
 294              		.section	.text.efc_init,"ax",%progbits
 295              		.align	1
 296              		.p2align 2,,3
 297              		.global	efc_init
 298              		.syntax unified
 299              		.thumb
 300              		.thumb_func
 301              		.fpu fpv5-d16
 302              		.type	efc_init, %function
 303              	efc_init:
 304              	.LFB142:
 120:../asf/sam/drivers/efc/efc.c **** #if (SAM4S || SAM4E || SAM4N || SAM4C || SAMG || SAM4CP || SAM4CM || \
 305              		.loc 1 120 0
 306              		.cfi_startproc
 307              		@ args = 0, pretend = 0, frame = 0
 308              		@ frame_needed = 0, uses_anonymous_args = 0
 309              	.LVL20:
 123:../asf/sam/drivers/efc/efc.c **** #else
 310              		.loc 1 123 0
 311 0000 1202     		lsls	r2, r2, #8
 312              	.LVL21:
 313 0002 41F08061 		orr	r1, r1, #67108864
 314              	.LVL22:
 315 0006 02F47062 		and	r2, r2, #3840
 120:../asf/sam/drivers/efc/efc.c **** #if (SAM4S || SAM4E || SAM4N || SAM4C || SAMG || SAM4CP || SAM4CM || \
 316              		.loc 1 120 0
 317 000a 08B5     		push	{r3, lr}
 318              		.cfi_def_cfa_offset 8
 319              		.cfi_offset 3, -8
 320              		.cfi_offset 14, -4
 123:../asf/sam/drivers/efc/efc.c **** #else
 321              		.loc 1 123 0
 322 000c 1143     		orrs	r1, r1, r2
 323 000e FFF7FEFF 		bl	efc_write_fmr
 324              	.LVL23:
ARM GAS  /tmp/ccLuO05w.s 			page 14


 128:../asf/sam/drivers/efc/efc.c **** 
 325              		.loc 1 128 0
 326 0012 0020     		movs	r0, #0
 327              	.LVL24:
 328 0014 08BD     		pop	{r3, pc}
 329              		.cfi_endproc
 330              	.LFE142:
 331              		.size	efc_init, .-efc_init
 332 0016 00BF     		.section	.text.efc_enable_cloe,"ax",%progbits
 333              		.align	1
 334              		.p2align 2,,3
 335              		.global	efc_enable_cloe
 336              		.syntax unified
 337              		.thumb
 338              		.thumb_func
 339              		.fpu fpv5-d16
 340              		.type	efc_enable_cloe, %function
 341              	efc_enable_cloe:
 342              	.LFB143:
 138:../asf/sam/drivers/efc/efc.c **** 	uint32_t ul_fmr = p_efc->EEFC_FMR;
 343              		.loc 1 138 0
 344              		.cfi_startproc
 345              		@ args = 0, pretend = 0, frame = 0
 346              		@ frame_needed = 0, uses_anonymous_args = 0
 347              		@ link register save eliminated.
 348              	.LVL25:
 139:../asf/sam/drivers/efc/efc.c **** 	efc_write_fmr(p_efc, ul_fmr | EEFC_FMR_CLOE);
 349              		.loc 1 139 0
 350 0000 0168     		ldr	r1, [r0]
 351              	.LVL26:
 140:../asf/sam/drivers/efc/efc.c **** }
 352              		.loc 1 140 0
 353 0002 41F08061 		orr	r1, r1, #67108864
 354              	.LVL27:
 355 0006 FFF7FEBF 		b	efc_write_fmr
 356              	.LVL28:
 357              		.cfi_endproc
 358              	.LFE143:
 359              		.size	efc_enable_cloe, .-efc_enable_cloe
 360 000a 00BF     		.section	.text.efc_disable_cloe,"ax",%progbits
 361              		.align	1
 362              		.p2align 2,,3
 363              		.global	efc_disable_cloe
 364              		.syntax unified
 365              		.thumb
 366              		.thumb_func
 367              		.fpu fpv5-d16
 368              		.type	efc_disable_cloe, %function
 369              	efc_disable_cloe:
 370              	.LFB144:
 149:../asf/sam/drivers/efc/efc.c **** 	uint32_t ul_fmr = p_efc->EEFC_FMR;
 371              		.loc 1 149 0
 372              		.cfi_startproc
 373              		@ args = 0, pretend = 0, frame = 0
 374              		@ frame_needed = 0, uses_anonymous_args = 0
 375              		@ link register save eliminated.
 376              	.LVL29:
ARM GAS  /tmp/ccLuO05w.s 			page 15


 150:../asf/sam/drivers/efc/efc.c **** 	efc_write_fmr(p_efc, ul_fmr & (~EEFC_FMR_CLOE));
 377              		.loc 1 150 0
 378 0000 0168     		ldr	r1, [r0]
 379              	.LVL30:
 151:../asf/sam/drivers/efc/efc.c **** }
 380              		.loc 1 151 0
 381 0002 21F08061 		bic	r1, r1, #67108864
 382              	.LVL31:
 383 0006 FFF7FEBF 		b	efc_write_fmr
 384              	.LVL32:
 385              		.cfi_endproc
 386              	.LFE144:
 387              		.size	efc_disable_cloe, .-efc_disable_cloe
 388 000a 00BF     		.section	.text.efc_enable_frdy_interrupt,"ax",%progbits
 389              		.align	1
 390              		.p2align 2,,3
 391              		.global	efc_enable_frdy_interrupt
 392              		.syntax unified
 393              		.thumb
 394              		.thumb_func
 395              		.fpu fpv5-d16
 396              		.type	efc_enable_frdy_interrupt, %function
 397              	efc_enable_frdy_interrupt:
 398              	.LFB145:
 163:../asf/sam/drivers/efc/efc.c **** 	uint32_t ul_fmr = p_efc->EEFC_FMR;
 399              		.loc 1 163 0
 400              		.cfi_startproc
 401              		@ args = 0, pretend = 0, frame = 0
 402              		@ frame_needed = 0, uses_anonymous_args = 0
 403              		@ link register save eliminated.
 404              	.LVL33:
 164:../asf/sam/drivers/efc/efc.c **** 
 405              		.loc 1 164 0
 406 0000 0168     		ldr	r1, [r0]
 407              	.LVL34:
 166:../asf/sam/drivers/efc/efc.c **** }
 408              		.loc 1 166 0
 409 0002 41F00101 		orr	r1, r1, #1
 410              	.LVL35:
 411 0006 FFF7FEBF 		b	efc_write_fmr
 412              	.LVL36:
 413              		.cfi_endproc
 414              	.LFE145:
 415              		.size	efc_enable_frdy_interrupt, .-efc_enable_frdy_interrupt
 416 000a 00BF     		.section	.text.efc_disable_frdy_interrupt,"ax",%progbits
 417              		.align	1
 418              		.p2align 2,,3
 419              		.global	efc_disable_frdy_interrupt
 420              		.syntax unified
 421              		.thumb
 422              		.thumb_func
 423              		.fpu fpv5-d16
 424              		.type	efc_disable_frdy_interrupt, %function
 425              	efc_disable_frdy_interrupt:
 426              	.LFB146:
 175:../asf/sam/drivers/efc/efc.c **** 	uint32_t ul_fmr = p_efc->EEFC_FMR;
 427              		.loc 1 175 0
ARM GAS  /tmp/ccLuO05w.s 			page 16


 428              		.cfi_startproc
 429              		@ args = 0, pretend = 0, frame = 0
 430              		@ frame_needed = 0, uses_anonymous_args = 0
 431              		@ link register save eliminated.
 432              	.LVL37:
 176:../asf/sam/drivers/efc/efc.c **** 
 433              		.loc 1 176 0
 434 0000 0168     		ldr	r1, [r0]
 435              	.LVL38:
 178:../asf/sam/drivers/efc/efc.c **** }
 436              		.loc 1 178 0
 437 0002 21F00101 		bic	r1, r1, #1
 438              	.LVL39:
 439 0006 FFF7FEBF 		b	efc_write_fmr
 440              	.LVL40:
 441              		.cfi_endproc
 442              	.LFE146:
 443              		.size	efc_disable_frdy_interrupt, .-efc_disable_frdy_interrupt
 444 000a 00BF     		.section	.text.efc_set_wait_state,"ax",%progbits
 445              		.align	1
 446              		.p2align 2,,3
 447              		.global	efc_set_wait_state
 448              		.syntax unified
 449              		.thumb
 450              		.thumb_func
 451              		.fpu fpv5-d16
 452              		.type	efc_set_wait_state, %function
 453              	efc_set_wait_state:
 454              	.LFB149:
 235:../asf/sam/drivers/efc/efc.c **** 	uint32_t ul_fmr = p_efc->EEFC_FMR & (~EEFC_FMR_FWS_Msk);
 455              		.loc 1 235 0
 456              		.cfi_startproc
 457              		@ args = 0, pretend = 0, frame = 0
 458              		@ frame_needed = 0, uses_anonymous_args = 0
 459              		@ link register save eliminated.
 460              	.LVL41:
 238:../asf/sam/drivers/efc/efc.c **** }
 461              		.loc 1 238 0
 462 0000 0902     		lsls	r1, r1, #8
 463              	.LVL42:
 236:../asf/sam/drivers/efc/efc.c **** 
 464              		.loc 1 236 0
 465 0002 0368     		ldr	r3, [r0]
 466              	.LVL43:
 238:../asf/sam/drivers/efc/efc.c **** }
 467              		.loc 1 238 0
 468 0004 01F47061 		and	r1, r1, #3840
 236:../asf/sam/drivers/efc/efc.c **** 
 469              		.loc 1 236 0
 470 0008 23F47063 		bic	r3, r3, #3840
 471              	.LVL44:
 238:../asf/sam/drivers/efc/efc.c **** }
 472              		.loc 1 238 0
 473 000c 1943     		orrs	r1, r1, r3
 474 000e FFF7FEBF 		b	efc_write_fmr
 475              	.LVL45:
 476              		.cfi_endproc
ARM GAS  /tmp/ccLuO05w.s 			page 17


 477              	.LFE149:
 478              		.size	efc_set_wait_state, .-efc_set_wait_state
 479 0012 00BF     		.section	.ramfunc
 480              		.align	1
 481              		.p2align 2,,3
 482              		.global	efc_perform_fcr
 483              		.syntax unified
 484              		.thumb
 485              		.thumb_func
 486              		.fpu fpv5-d16
 487              		.type	efc_perform_fcr, %function
 488              	efc_perform_fcr:
 489              	.LFB156:
 406:../asf/sam/drivers/efc/efc.c **** }
 407:../asf/sam/drivers/efc/efc.c **** 
 408:../asf/sam/drivers/efc/efc.c **** /**
 409:../asf/sam/drivers/efc/efc.c ****  * \brief Perform command.
 410:../asf/sam/drivers/efc/efc.c ****  *
 411:../asf/sam/drivers/efc/efc.c ****  * \param p_efc Pointer to an EFC instance.
 412:../asf/sam/drivers/efc/efc.c ****  * \param ul_fcr Flash command.
 413:../asf/sam/drivers/efc/efc.c ****  *
 414:../asf/sam/drivers/efc/efc.c ****  * \return The current status.
 415:../asf/sam/drivers/efc/efc.c ****  */
 416:../asf/sam/drivers/efc/efc.c **** __no_inline
 417:../asf/sam/drivers/efc/efc.c **** RAMFUNC
 418:../asf/sam/drivers/efc/efc.c **** uint32_t efc_perform_fcr(Efc *p_efc, uint32_t ul_fcr)
 419:../asf/sam/drivers/efc/efc.c **** {
 490              		.loc 1 419 0
 491              		.cfi_startproc
 492              		@ args = 0, pretend = 0, frame = 8
 493              		@ frame_needed = 0, uses_anonymous_args = 0
 494              		@ link register save eliminated.
 495              	.LVL46:
 496 006c 82B0     		sub	sp, sp, #8
 497              		.cfi_def_cfa_offset 8
 420:../asf/sam/drivers/efc/efc.c **** 	volatile uint32_t ul_status;
 421:../asf/sam/drivers/efc/efc.c **** 
 422:../asf/sam/drivers/efc/efc.c **** 	p_efc->EEFC_FCR = ul_fcr;
 498              		.loc 1 422 0
 499 006e 4160     		str	r1, [r0, #4]
 500              	.L35:
 423:../asf/sam/drivers/efc/efc.c **** 	do {
 424:../asf/sam/drivers/efc/efc.c **** 		ul_status = p_efc->EEFC_FSR;
 501              		.loc 1 424 0 discriminator 1
 502 0070 8368     		ldr	r3, [r0, #8]
 503 0072 0193     		str	r3, [sp, #4]
 425:../asf/sam/drivers/efc/efc.c **** 	} while ((ul_status & EEFC_FSR_FRDY) != EEFC_FSR_FRDY);
 504              		.loc 1 425 0 discriminator 1
 505 0074 019B     		ldr	r3, [sp, #4]
 506 0076 DB07     		lsls	r3, r3, #31
 507 0078 FAD5     		bpl	.L35
 426:../asf/sam/drivers/efc/efc.c **** 
 427:../asf/sam/drivers/efc/efc.c **** 	return (ul_status & EEFC_ERROR_FLAGS);
 508              		.loc 1 427 0
 509 007a 019B     		ldr	r3, [sp, #4]
 428:../asf/sam/drivers/efc/efc.c **** }
 510              		.loc 1 428 0
ARM GAS  /tmp/ccLuO05w.s 			page 18


 511 007c 0148     		ldr	r0, .L39
 512              	.LVL47:
 513 007e 1840     		ands	r0, r0, r3
 514 0080 02B0     		add	sp, sp, #8
 515              		.cfi_def_cfa_offset 0
 516              		@ sp needed
 517 0082 7047     		bx	lr
 518              	.L40:
 519              		.align	2
 520              	.L39:
 521 0084 0E000F00 		.word	983054
 522              		.cfi_endproc
 523              	.LFE156:
 524              		.size	efc_perform_fcr, .-efc_perform_fcr
 525              		.section	.text.efc_perform_command,"ax",%progbits
 526              		.align	1
 527              		.p2align 2,,3
 528              		.global	efc_perform_command
 529              		.syntax unified
 530              		.thumb
 531              		.thumb_func
 532              		.fpu fpv5-d16
 533              		.type	efc_perform_command, %function
 534              	efc_perform_command:
 535              	.LFB151:
 268:../asf/sam/drivers/efc/efc.c **** 	uint32_t result;
 536              		.loc 1 268 0
 537              		.cfi_startproc
 538              		@ args = 0, pretend = 0, frame = 0
 539              		@ frame_needed = 0, uses_anonymous_args = 0
 540              	.LVL48:
 273:../asf/sam/drivers/efc/efc.c **** 		return EFC_RC_NOT_SUPPORT;
 541              		.loc 1 273 0
 542 0000 A1F10E03 		sub	r3, r1, #14
 543 0004 012B     		cmp	r3, #1
 544 0006 02D8     		bhi	.L48
 274:../asf/sam/drivers/efc/efc.c **** 	}
 545              		.loc 1 274 0
 546 0008 4FF0FF30 		mov	r0, #-1
 547              	.LVL49:
 548 000c 7047     		bx	lr
 549              	.LVL50:
 550              	.L48:
 268:../asf/sam/drivers/efc/efc.c **** 	uint32_t result;
 551              		.loc 1 268 0
 552 000e 70B5     		push	{r4, r5, r6, lr}
 553              		.cfi_def_cfa_offset 16
 554              		.cfi_offset 4, -16
 555              		.cfi_offset 5, -12
 556              		.cfi_offset 6, -8
 557              		.cfi_offset 14, -4
 558              	.LBB32:
 559              	.LBB33:
 560              	.LBB34:
 561              	.LBB35:
 562              		.file 2 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h"
   1:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /**************************************************************************//**
ARM GAS  /tmp/ccLuO05w.s 			page 19


   2:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  * @file     core_cmFunc.h
   3:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  * @brief    CMSIS Cortex-M Core Function Access Header File
   4:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  * @version  V4.00
   5:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  * @date     28. August 2014
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
ARM GAS  /tmp/ccLuO05w.s 			page 20


  59:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  60:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the content of the Control Register.
  61:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  62:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               Control Register value
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
ARM GAS  /tmp/ccLuO05w.s 			page 21


 116:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE uint32_t __get_xPSR(void)
 117:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 118:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regXPSR          __ASM("xpsr");
 119:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(__regXPSR);
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
ARM GAS  /tmp/ccLuO05w.s 			page 22


 173:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 174:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 175:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get Priority Mask
 176:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
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
ARM GAS  /tmp/ccLuO05w.s 			page 23


 230:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 231:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 232:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Set Base Priority
 233:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
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
ARM GAS  /tmp/ccLuO05w.s 			page 24


 287:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    return(0);
 288:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #endif
 289:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 290:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
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
ARM GAS  /tmp/ccLuO05w.s 			page 25


 344:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __ASM volatile ("MRS %0, control" : "=r" (result) );
 345:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(result);
 346:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 347:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
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
ARM GAS  /tmp/ccLuO05w.s 			page 26


 401:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __ASM volatile ("MRS %0, xpsr" : "=r" (result) );
 402:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(result);
 403:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 404:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
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
ARM GAS  /tmp/ccLuO05w.s 			page 27


 458:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 459:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 460:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get Priority Mask
 461:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 462:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the current state of the priority mask bit from the Priority Mask Registe
 463:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 464:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               Priority Mask value
 465:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 466:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_PRIMASK(void)
 467:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 468:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   uint32_t result;
 469:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 470:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __ASM volatile ("MRS %0, primask" : "=r" (result) );
 563              		.loc 2 470 0
 564              		.syntax unified
 565              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 566 0010 EFF31084 		MRS r4, primask
 567              	@ 0 "" 2
 568              	.LVL51:
 569              		.thumb
 570              		.syntax unified
 571              	.LBE35:
 572              	.LBE34:
 573              	.LBB36:
 574              	.LBB37:
 330:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 575              		.loc 2 330 0
 576              		.syntax unified
 577              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 578 0014 72B6     		cpsid i
 579              	@ 0 "" 2
 580              		.thumb
 581              		.syntax unified
 582              	.LBE37:
 583              	.LBE36:
 584              	.LBB38:
 585              	.LBB39:
 586              		.file 3 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h"
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
ARM GAS  /tmp/ccLuO05w.s 			page 28


  20:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    - Neither the name of ARM nor the names of its contributors may be used
  21:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****      to endorse or promote products derived from this software without
  22:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****      specific prior written permission.
  23:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    *
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
ARM GAS  /tmp/ccLuO05w.s 			page 29


  77:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  78:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  79:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Send Event
  80:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
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
ARM GAS  /tmp/ccLuO05w.s 			page 30


 134:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #endif
 135:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 136:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Reverse byte order in signed short value
 137:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
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
ARM GAS  /tmp/ccLuO05w.s 			page 31


 191:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return             value of type uint8_t at (*ptr)
 192:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 193:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __LDREXB(ptr)                     ((uint8_t ) __ldrex(ptr))
 194:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
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
ARM GAS  /tmp/ccLuO05w.s 			page 32


 248:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 249:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __STREXW(value, ptr)              __strex(value, ptr)
 250:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 251:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
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
ARM GAS  /tmp/ccLuO05w.s 			page 33


 305:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #endif
 306:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 307:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 308:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  LDRT Unprivileged (8 bit)
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
ARM GAS  /tmp/ccLuO05w.s 			page 34


 362:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to store
 363:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to location
 364:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 365:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __STRT(value, ptr)                __strt(value, ptr)
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
ARM GAS  /tmp/ccLuO05w.s 			page 35


 419:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 420:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __SEV(void)
 421:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 422:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   __ASM volatile ("sev");
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
 587              		.loc 3 456 0
 588              		.syntax unified
 589              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 590 0016 BFF35F8F 		dmb
 591              	@ 0 "" 2
 592              		.thumb
 593              		.syntax unified
 594              	.LBE39:
 595              	.LBE38:
 596              	.LBE33:
 597              	.LBE32:
 280:../asf/sam/drivers/efc/efc.c **** 			EEFC_FCR_FCMD(ul_command));
 598              		.loc 1 280 0
 599 001a 0A4B     		ldr	r3, .L49
 281:../asf/sam/drivers/efc/efc.c **** 	cpu_irq_restore(flags);
 600              		.loc 1 281 0
 601 001c C9B2     		uxtb	r1, r1
 602              	.LVL52:
 603              	.LBB42:
ARM GAS  /tmp/ccLuO05w.s 			page 36


 604              	.LBB40:
 605              		.file 4 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
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
ARM GAS  /tmp/ccLuO05w.s 			page 37


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
ARM GAS  /tmp/ccLuO05w.s 			page 38


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
 606              		.loc 4 154 0
 607 001e 0A4D     		ldr	r5, .L49+4
 608 0020 0026     		movs	r6, #0
 609              	.LBE40:
 610              	.LBE42:
 280:../asf/sam/drivers/efc/efc.c **** 			EEFC_FCR_FCMD(ul_command));
 611              		.loc 1 280 0
 612 0022 03EA0222 		and	r2, r3, r2, lsl #8
 613              	.LVL53:
 614              	.LBB43:
 615              	.LBB41:
 616              		.loc 4 154 0
 617 0026 2E70     		strb	r6, [r5]
 618              	.LBE41:
 619              	.LBE43:
ARM GAS  /tmp/ccLuO05w.s 			page 39


 279:../asf/sam/drivers/efc/efc.c **** 			EEFC_FCR_FKEY_PASSWD | EEFC_FCR_FARG(ul_argument) |
 620              		.loc 1 279 0
 621 0028 42F0B442 		orr	r2, r2, #1509949440
 622 002c 1143     		orrs	r1, r1, r2
 623 002e FFF7FEFF 		bl	efc_perform_fcr
 624              	.LVL54:
 625              	.LBB44:
 626              	.LBB45:
 155:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	return flags;
 156:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** }
 157:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
 158:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** static inline bool cpu_irq_is_enabled_flags(irqflags_t flags)
 159:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** {
 160:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	return (flags);
 161:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** }
 162:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
 163:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** static inline void cpu_irq_restore(irqflags_t flags)
 164:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** {
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	if (cpu_irq_is_enabled_flags(flags))
 627              		.loc 4 165 0
 628 0032 2CB9     		cbnz	r4, .L41
 166:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 		cpu_irq_enable();
 629              		.loc 4 166 0
 630 0034 0123     		movs	r3, #1
 631 0036 2B70     		strb	r3, [r5]
 632              	.LBB46:
 633              	.LBB47:
 634              		.loc 3 456 0
 635              		.syntax unified
 636              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 637 0038 BFF35F8F 		dmb
 638              	@ 0 "" 2
 639              		.thumb
 640              		.syntax unified
 641              	.LBE47:
 642              	.LBE46:
 643              	.LBB48:
 644              	.LBB49:
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 645              		.loc 2 319 0
 646              		.syntax unified
 647              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 648 003c 62B6     		cpsie i
 649              	@ 0 "" 2
 650              		.thumb
 651              		.syntax unified
 652 003e 70BD     		pop	{r4, r5, r6, pc}
 653              	.L41:
 654              	.LBE49:
 655              	.LBE48:
 656              	.LBE45:
 657              	.LBE44:
 284:../asf/sam/drivers/efc/efc.c **** 
 658              		.loc 1 284 0
 659 0040 70BD     		pop	{r4, r5, r6, pc}
 660              	.L50:
 661 0042 00BF     		.align	2
ARM GAS  /tmp/ccLuO05w.s 			page 40


 662              	.L49:
 663 0044 00FFFF00 		.word	16776960
 664 0048 00000000 		.word	g_interrupt_enabled
 665              		.cfi_endproc
 666              	.LFE151:
 667              		.size	efc_perform_command, .-efc_perform_command
 668              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 669              		.align	2
 670              		.type	cpu_irq_critical_section_counter, %object
 671              		.size	cpu_irq_critical_section_counter, 4
 672              	cpu_irq_critical_section_counter:
 673 0000 00000000 		.space	4
 674              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 675              		.type	cpu_irq_prev_interrupt_state, %object
 676              		.size	cpu_irq_prev_interrupt_state, 1
 677              	cpu_irq_prev_interrupt_state:
 678 0000 00       		.space	1
 679              		.text
 680              	.Letext0:
 681              		.file 5 "/usr/include/newlib/machine/_default_types.h"
 682              		.file 6 "/usr/include/newlib/sys/_stdint.h"
 683              		.file 7 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 684              		.file 8 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 685              		.file 9 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/efc.
 686              		.file 10 "/usr/include/newlib/sys/lock.h"
 687              		.file 11 "/usr/include/newlib/sys/_types.h"
 688              		.file 12 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 689              		.file 13 "/usr/include/newlib/sys/reent.h"
 690              		.file 14 "/usr/include/newlib/stdlib.h"
 691              		.file 15 "../asf/sam/drivers/efc/efc.h"
 692              		.section	.debug_info,"",%progbits
 693              	.Ldebug_info0:
 694 0000 5B0F0000 		.4byte	0xf5b
 695 0004 0400     		.2byte	0x4
 696 0006 00000000 		.4byte	.Ldebug_abbrev0
 697 000a 04       		.byte	0x4
 698 000b 01       		.uleb128 0x1
 699 000c 32040000 		.4byte	.LASF184
 700 0010 0C       		.byte	0xc
 701 0011 F1030000 		.4byte	.LASF185
 702 0015 2C080000 		.4byte	.LASF186
 703 0019 20000000 		.4byte	.Ldebug_ranges0+0x20
 704 001d 00000000 		.4byte	0
 705 0021 00000000 		.4byte	.Ldebug_line0
 706 0025 02       		.uleb128 0x2
 707 0026 04       		.byte	0x4
 708 0027 05       		.byte	0x5
 709 0028 696E7400 		.ascii	"int\000"
 710 002c 03       		.uleb128 0x3
 711 002d 04       		.byte	0x4
 712 002e 07       		.byte	0x7
 713 002f B7060000 		.4byte	.LASF0
 714 0033 03       		.uleb128 0x3
 715 0034 01       		.byte	0x1
 716 0035 06       		.byte	0x6
 717 0036 05010000 		.4byte	.LASF1
 718 003a 03       		.uleb128 0x3
ARM GAS  /tmp/ccLuO05w.s 			page 41


 719 003b 01       		.byte	0x1
 720 003c 08       		.byte	0x8
 721 003d 20070000 		.4byte	.LASF2
 722 0041 03       		.uleb128 0x3
 723 0042 02       		.byte	0x2
 724 0043 05       		.byte	0x5
 725 0044 00000000 		.4byte	.LASF3
 726 0048 03       		.uleb128 0x3
 727 0049 02       		.byte	0x2
 728 004a 07       		.byte	0x7
 729 004b FD020000 		.4byte	.LASF4
 730 004f 04       		.uleb128 0x4
 731 0050 CB060000 		.4byte	.LASF6
 732 0054 05       		.byte	0x5
 733 0055 3F       		.byte	0x3f
 734 0056 5A000000 		.4byte	0x5a
 735 005a 03       		.uleb128 0x3
 736 005b 04       		.byte	0x4
 737 005c 05       		.byte	0x5
 738 005d 79010000 		.4byte	.LASF5
 739 0061 04       		.uleb128 0x4
 740 0062 1A020000 		.4byte	.LASF7
 741 0066 05       		.byte	0x5
 742 0067 41       		.byte	0x41
 743 0068 6C000000 		.4byte	0x6c
 744 006c 03       		.uleb128 0x3
 745 006d 04       		.byte	0x4
 746 006e 07       		.byte	0x7
 747 006f BB020000 		.4byte	.LASF8
 748 0073 03       		.uleb128 0x3
 749 0074 08       		.byte	0x8
 750 0075 05       		.byte	0x5
 751 0076 C8010000 		.4byte	.LASF9
 752 007a 03       		.uleb128 0x3
 753 007b 08       		.byte	0x8
 754 007c 07       		.byte	0x7
 755 007d E6020000 		.4byte	.LASF10
 756 0081 04       		.uleb128 0x4
 757 0082 8D050000 		.4byte	.LASF11
 758 0086 06       		.byte	0x6
 759 0087 2C       		.byte	0x2c
 760 0088 4F000000 		.4byte	0x4f
 761 008c 05       		.uleb128 0x5
 762 008d 81000000 		.4byte	0x81
 763 0091 04       		.uleb128 0x4
 764 0092 5B060000 		.4byte	.LASF12
 765 0096 06       		.byte	0x6
 766 0097 30       		.byte	0x30
 767 0098 61000000 		.4byte	0x61
 768 009c 05       		.uleb128 0x5
 769 009d 91000000 		.4byte	0x91
 770 00a1 06       		.uleb128 0x6
 771 00a2 9C000000 		.4byte	0x9c
 772 00a6 07       		.uleb128 0x7
 773 00a7 04       		.byte	0x4
 774 00a8 03       		.uleb128 0x3
 775 00a9 04       		.byte	0x4
ARM GAS  /tmp/ccLuO05w.s 			page 42


 776 00aa 07       		.byte	0x7
 777 00ab 0E040000 		.4byte	.LASF13
 778 00af 08       		.uleb128 0x8
 779 00b0 A8000000 		.4byte	.LASF14
 780 00b4 07       		.byte	0x7
 781 00b5 6508     		.2byte	0x865
 782 00b7 8C000000 		.4byte	0x8c
 783 00bb 09       		.uleb128 0x9
 784 00bc A3020000 		.4byte	.LASF15
 785 00c0 08       		.byte	0x8
 786 00c1 3A       		.byte	0x3a
 787 00c2 91000000 		.4byte	0x91
 788 00c6 0A       		.uleb128 0xa
 789 00c7 A1000000 		.4byte	0xa1
 790 00cb D6000000 		.4byte	0xd6
 791 00cf 0B       		.uleb128 0xb
 792 00d0 A8000000 		.4byte	0xa8
 793 00d4 00       		.byte	0
 794 00d5 00       		.byte	0
 795 00d6 06       		.uleb128 0x6
 796 00d7 C6000000 		.4byte	0xc6
 797 00db 05       		.uleb128 0x5
 798 00dc D6000000 		.4byte	0xd6
 799 00e0 0C       		.uleb128 0xc
 800 00e1 E8       		.byte	0xe8
 801 00e2 09       		.byte	0x9
 802 00e3 38       		.byte	0x38
 803 00e4 49010000 		.4byte	0x149
 804 00e8 0D       		.uleb128 0xd
 805 00e9 D5060000 		.4byte	.LASF16
 806 00ed 09       		.byte	0x9
 807 00ee 39       		.byte	0x39
 808 00ef 9C000000 		.4byte	0x9c
 809 00f3 00       		.byte	0
 810 00f4 0D       		.uleb128 0xd
 811 00f5 CB030000 		.4byte	.LASF17
 812 00f9 09       		.byte	0x9
 813 00fa 3A       		.byte	0x3a
 814 00fb 9C000000 		.4byte	0x9c
 815 00ff 04       		.byte	0x4
 816 0100 0D       		.uleb128 0xd
 817 0101 F6010000 		.4byte	.LASF18
 818 0105 09       		.byte	0x9
 819 0106 3B       		.byte	0x3b
 820 0107 A1000000 		.4byte	0xa1
 821 010b 08       		.byte	0x8
 822 010c 0D       		.uleb128 0xd
 823 010d 9A030000 		.4byte	.LASF19
 824 0111 09       		.byte	0x9
 825 0112 3C       		.byte	0x3c
 826 0113 A1000000 		.4byte	0xa1
 827 0117 0C       		.byte	0xc
 828 0118 0D       		.uleb128 0xd
 829 0119 39010000 		.4byte	.LASF20
 830 011d 09       		.byte	0x9
 831 011e 3D       		.byte	0x3d
 832 011f DB000000 		.4byte	0xdb
ARM GAS  /tmp/ccLuO05w.s 			page 43


 833 0123 10       		.byte	0x10
 834 0124 0D       		.uleb128 0xd
 835 0125 9B000000 		.4byte	.LASF21
 836 0129 09       		.byte	0x9
 837 012a 3E       		.byte	0x3e
 838 012b A1000000 		.4byte	0xa1
 839 012f 14       		.byte	0x14
 840 0130 0D       		.uleb128 0xd
 841 0131 43010000 		.4byte	.LASF22
 842 0135 09       		.byte	0x9
 843 0136 3F       		.byte	0x3f
 844 0137 5E010000 		.4byte	0x15e
 845 013b 18       		.byte	0x18
 846 013c 0D       		.uleb128 0xd
 847 013d 92060000 		.4byte	.LASF23
 848 0141 09       		.byte	0x9
 849 0142 40       		.byte	0x40
 850 0143 9C000000 		.4byte	0x9c
 851 0147 E4       		.byte	0xe4
 852 0148 00       		.byte	0
 853 0149 0A       		.uleb128 0xa
 854 014a A1000000 		.4byte	0xa1
 855 014e 59010000 		.4byte	0x159
 856 0152 0B       		.uleb128 0xb
 857 0153 A8000000 		.4byte	0xa8
 858 0157 32       		.byte	0x32
 859 0158 00       		.byte	0
 860 0159 06       		.uleb128 0x6
 861 015a 49010000 		.4byte	0x149
 862 015e 05       		.uleb128 0x5
 863 015f 59010000 		.4byte	0x159
 864 0163 0E       		.uleb128 0xe
 865 0164 45666300 		.ascii	"Efc\000"
 866 0168 09       		.byte	0x9
 867 0169 41       		.byte	0x41
 868 016a E0000000 		.4byte	0xe0
 869 016e 04       		.uleb128 0x4
 870 016f 60050000 		.4byte	.LASF24
 871 0173 0A       		.byte	0xa
 872 0174 07       		.byte	0x7
 873 0175 25000000 		.4byte	0x25
 874 0179 04       		.uleb128 0x4
 875 017a 02050000 		.4byte	.LASF25
 876 017e 0B       		.byte	0xb
 877 017f 2C       		.byte	0x2c
 878 0180 5A000000 		.4byte	0x5a
 879 0184 04       		.uleb128 0x4
 880 0185 7C060000 		.4byte	.LASF26
 881 0189 0B       		.byte	0xb
 882 018a 72       		.byte	0x72
 883 018b 5A000000 		.4byte	0x5a
 884 018f 0F       		.uleb128 0xf
 885 0190 58030000 		.4byte	.LASF27
 886 0194 0C       		.byte	0xc
 887 0195 6501     		.2byte	0x165
 888 0197 2C000000 		.4byte	0x2c
 889 019b 10       		.uleb128 0x10
ARM GAS  /tmp/ccLuO05w.s 			page 44


 890 019c 04       		.byte	0x4
 891 019d 0B       		.byte	0xb
 892 019e A6       		.byte	0xa6
 893 019f BA010000 		.4byte	0x1ba
 894 01a3 11       		.uleb128 0x11
 895 01a4 4B030000 		.4byte	.LASF28
 896 01a8 0B       		.byte	0xb
 897 01a9 A8       		.byte	0xa8
 898 01aa 8F010000 		.4byte	0x18f
 899 01ae 11       		.uleb128 0x11
 900 01af 9C020000 		.4byte	.LASF29
 901 01b3 0B       		.byte	0xb
 902 01b4 A9       		.byte	0xa9
 903 01b5 BA010000 		.4byte	0x1ba
 904 01b9 00       		.byte	0
 905 01ba 0A       		.uleb128 0xa
 906 01bb 3A000000 		.4byte	0x3a
 907 01bf CA010000 		.4byte	0x1ca
 908 01c3 0B       		.uleb128 0xb
 909 01c4 A8000000 		.4byte	0xa8
 910 01c8 03       		.byte	0x3
 911 01c9 00       		.byte	0
 912 01ca 0C       		.uleb128 0xc
 913 01cb 08       		.byte	0x8
 914 01cc 0B       		.byte	0xb
 915 01cd A3       		.byte	0xa3
 916 01ce EB010000 		.4byte	0x1eb
 917 01d2 0D       		.uleb128 0xd
 918 01d3 53060000 		.4byte	.LASF30
 919 01d7 0B       		.byte	0xb
 920 01d8 A5       		.byte	0xa5
 921 01d9 25000000 		.4byte	0x25
 922 01dd 00       		.byte	0
 923 01de 0D       		.uleb128 0xd
 924 01df A0080000 		.4byte	.LASF31
 925 01e3 0B       		.byte	0xb
 926 01e4 AA       		.byte	0xaa
 927 01e5 9B010000 		.4byte	0x19b
 928 01e9 04       		.byte	0x4
 929 01ea 00       		.byte	0
 930 01eb 04       		.uleb128 0x4
 931 01ec E3050000 		.4byte	.LASF32
 932 01f0 0B       		.byte	0xb
 933 01f1 AB       		.byte	0xab
 934 01f2 CA010000 		.4byte	0x1ca
 935 01f6 04       		.uleb128 0x4
 936 01f7 D3040000 		.4byte	.LASF33
 937 01fb 0B       		.byte	0xb
 938 01fc AF       		.byte	0xaf
 939 01fd 6E010000 		.4byte	0x16e
 940 0201 04       		.uleb128 0x4
 941 0202 3C070000 		.4byte	.LASF34
 942 0206 0D       		.byte	0xd
 943 0207 16       		.byte	0x16
 944 0208 6C000000 		.4byte	0x6c
 945 020c 12       		.uleb128 0x12
 946 020d 67020000 		.4byte	.LASF39
ARM GAS  /tmp/ccLuO05w.s 			page 45


 947 0211 18       		.byte	0x18
 948 0212 0D       		.byte	0xd
 949 0213 2D       		.byte	0x2d
 950 0214 5F020000 		.4byte	0x25f
 951 0218 0D       		.uleb128 0xd
 952 0219 DE060000 		.4byte	.LASF35
 953 021d 0D       		.byte	0xd
 954 021e 2F       		.byte	0x2f
 955 021f 5F020000 		.4byte	0x25f
 956 0223 00       		.byte	0
 957 0224 13       		.uleb128 0x13
 958 0225 5F6B00   		.ascii	"_k\000"
 959 0228 0D       		.byte	0xd
 960 0229 30       		.byte	0x30
 961 022a 25000000 		.4byte	0x25
 962 022e 04       		.byte	0x4
 963 022f 0D       		.uleb128 0xd
 964 0230 3E060000 		.4byte	.LASF36
 965 0234 0D       		.byte	0xd
 966 0235 30       		.byte	0x30
 967 0236 25000000 		.4byte	0x25
 968 023a 08       		.byte	0x8
 969 023b 0D       		.uleb128 0xd
 970 023c 25020000 		.4byte	.LASF37
 971 0240 0D       		.byte	0xd
 972 0241 30       		.byte	0x30
 973 0242 25000000 		.4byte	0x25
 974 0246 0C       		.byte	0xc
 975 0247 0D       		.uleb128 0xd
 976 0248 67070000 		.4byte	.LASF38
 977 024c 0D       		.byte	0xd
 978 024d 30       		.byte	0x30
 979 024e 25000000 		.4byte	0x25
 980 0252 10       		.byte	0x10
 981 0253 13       		.uleb128 0x13
 982 0254 5F7800   		.ascii	"_x\000"
 983 0257 0D       		.byte	0xd
 984 0258 31       		.byte	0x31
 985 0259 65020000 		.4byte	0x265
 986 025d 14       		.byte	0x14
 987 025e 00       		.byte	0
 988 025f 14       		.uleb128 0x14
 989 0260 04       		.byte	0x4
 990 0261 0C020000 		.4byte	0x20c
 991 0265 0A       		.uleb128 0xa
 992 0266 01020000 		.4byte	0x201
 993 026a 75020000 		.4byte	0x275
 994 026e 0B       		.uleb128 0xb
 995 026f A8000000 		.4byte	0xa8
 996 0273 00       		.byte	0
 997 0274 00       		.byte	0
 998 0275 12       		.uleb128 0x12
 999 0276 8E020000 		.4byte	.LASF40
 1000 027a 24       		.byte	0x24
 1001 027b 0D       		.byte	0xd
 1002 027c 35       		.byte	0x35
 1003 027d EE020000 		.4byte	0x2ee
ARM GAS  /tmp/ccLuO05w.s 			page 46


 1004 0281 0D       		.uleb128 0xd
 1005 0282 DC000000 		.4byte	.LASF41
 1006 0286 0D       		.byte	0xd
 1007 0287 37       		.byte	0x37
 1008 0288 25000000 		.4byte	0x25
 1009 028c 00       		.byte	0
 1010 028d 0D       		.uleb128 0xd
 1011 028e 2E070000 		.4byte	.LASF42
 1012 0292 0D       		.byte	0xd
 1013 0293 38       		.byte	0x38
 1014 0294 25000000 		.4byte	0x25
 1015 0298 04       		.byte	0x4
 1016 0299 0D       		.uleb128 0xd
 1017 029a 4D010000 		.4byte	.LASF43
 1018 029e 0D       		.byte	0xd
 1019 029f 39       		.byte	0x39
 1020 02a0 25000000 		.4byte	0x25
 1021 02a4 08       		.byte	0x8
 1022 02a5 0D       		.uleb128 0xd
 1023 02a6 BE080000 		.4byte	.LASF44
 1024 02aa 0D       		.byte	0xd
 1025 02ab 3A       		.byte	0x3a
 1026 02ac 25000000 		.4byte	0x25
 1027 02b0 0C       		.byte	0xc
 1028 02b1 0D       		.uleb128 0xd
 1029 02b2 DC040000 		.4byte	.LASF45
 1030 02b6 0D       		.byte	0xd
 1031 02b7 3B       		.byte	0x3b
 1032 02b8 25000000 		.4byte	0x25
 1033 02bc 10       		.byte	0x10
 1034 02bd 0D       		.uleb128 0xd
 1035 02be AA030000 		.4byte	.LASF46
 1036 02c2 0D       		.byte	0xd
 1037 02c3 3C       		.byte	0x3c
 1038 02c4 25000000 		.4byte	0x25
 1039 02c8 14       		.byte	0x14
 1040 02c9 0D       		.uleb128 0xd
 1041 02ca 8F070000 		.4byte	.LASF47
 1042 02ce 0D       		.byte	0xd
 1043 02cf 3D       		.byte	0x3d
 1044 02d0 25000000 		.4byte	0x25
 1045 02d4 18       		.byte	0x18
 1046 02d5 0D       		.uleb128 0xd
 1047 02d6 B9050000 		.4byte	.LASF48
 1048 02da 0D       		.byte	0xd
 1049 02db 3E       		.byte	0x3e
 1050 02dc 25000000 		.4byte	0x25
 1051 02e0 1C       		.byte	0x1c
 1052 02e1 0D       		.uleb128 0xd
 1053 02e2 60080000 		.4byte	.LASF49
 1054 02e6 0D       		.byte	0xd
 1055 02e7 3F       		.byte	0x3f
 1056 02e8 25000000 		.4byte	0x25
 1057 02ec 20       		.byte	0x20
 1058 02ed 00       		.byte	0
 1059 02ee 15       		.uleb128 0x15
 1060 02ef 84060000 		.4byte	.LASF50
ARM GAS  /tmp/ccLuO05w.s 			page 47


 1061 02f3 0801     		.2byte	0x108
 1062 02f5 0D       		.byte	0xd
 1063 02f6 48       		.byte	0x48
 1064 02f7 2E030000 		.4byte	0x32e
 1065 02fb 0D       		.uleb128 0xd
 1066 02fc 0D020000 		.4byte	.LASF51
 1067 0300 0D       		.byte	0xd
 1068 0301 49       		.byte	0x49
 1069 0302 2E030000 		.4byte	0x32e
 1070 0306 00       		.byte	0
 1071 0307 0D       		.uleb128 0xd
 1072 0308 95050000 		.4byte	.LASF52
 1073 030c 0D       		.byte	0xd
 1074 030d 4A       		.byte	0x4a
 1075 030e 2E030000 		.4byte	0x32e
 1076 0312 80       		.byte	0x80
 1077 0313 16       		.uleb128 0x16
 1078 0314 0E070000 		.4byte	.LASF53
 1079 0318 0D       		.byte	0xd
 1080 0319 4C       		.byte	0x4c
 1081 031a 01020000 		.4byte	0x201
 1082 031e 0001     		.2byte	0x100
 1083 0320 16       		.uleb128 0x16
 1084 0321 A2010000 		.4byte	.LASF54
 1085 0325 0D       		.byte	0xd
 1086 0326 4F       		.byte	0x4f
 1087 0327 01020000 		.4byte	0x201
 1088 032b 0401     		.2byte	0x104
 1089 032d 00       		.byte	0
 1090 032e 0A       		.uleb128 0xa
 1091 032f A6000000 		.4byte	0xa6
 1092 0333 3E030000 		.4byte	0x33e
 1093 0337 0B       		.uleb128 0xb
 1094 0338 A8000000 		.4byte	0xa8
 1095 033c 1F       		.byte	0x1f
 1096 033d 00       		.byte	0
 1097 033e 15       		.uleb128 0x15
 1098 033f E5040000 		.4byte	.LASF55
 1099 0343 9001     		.2byte	0x190
 1100 0345 0D       		.byte	0xd
 1101 0346 5B       		.byte	0x5b
 1102 0347 7C030000 		.4byte	0x37c
 1103 034b 0D       		.uleb128 0xd
 1104 034c DE060000 		.4byte	.LASF35
 1105 0350 0D       		.byte	0xd
 1106 0351 5C       		.byte	0x5c
 1107 0352 7C030000 		.4byte	0x37c
 1108 0356 00       		.byte	0
 1109 0357 0D       		.uleb128 0xd
 1110 0358 1F060000 		.4byte	.LASF56
 1111 035c 0D       		.byte	0xd
 1112 035d 5D       		.byte	0x5d
 1113 035e 25000000 		.4byte	0x25
 1114 0362 04       		.byte	0x4
 1115 0363 0D       		.uleb128 0xd
 1116 0364 15020000 		.4byte	.LASF57
 1117 0368 0D       		.byte	0xd
ARM GAS  /tmp/ccLuO05w.s 			page 48


 1118 0369 5F       		.byte	0x5f
 1119 036a 82030000 		.4byte	0x382
 1120 036e 08       		.byte	0x8
 1121 036f 0D       		.uleb128 0xd
 1122 0370 84060000 		.4byte	.LASF50
 1123 0374 0D       		.byte	0xd
 1124 0375 60       		.byte	0x60
 1125 0376 EE020000 		.4byte	0x2ee
 1126 037a 88       		.byte	0x88
 1127 037b 00       		.byte	0
 1128 037c 14       		.uleb128 0x14
 1129 037d 04       		.byte	0x4
 1130 037e 3E030000 		.4byte	0x33e
 1131 0382 0A       		.uleb128 0xa
 1132 0383 92030000 		.4byte	0x392
 1133 0387 92030000 		.4byte	0x392
 1134 038b 0B       		.uleb128 0xb
 1135 038c A8000000 		.4byte	0xa8
 1136 0390 1F       		.byte	0x1f
 1137 0391 00       		.byte	0
 1138 0392 14       		.uleb128 0x14
 1139 0393 04       		.byte	0x4
 1140 0394 98030000 		.4byte	0x398
 1141 0398 17       		.uleb128 0x17
 1142 0399 12       		.uleb128 0x12
 1143 039a C3050000 		.4byte	.LASF58
 1144 039e 08       		.byte	0x8
 1145 039f 0D       		.byte	0xd
 1146 03a0 73       		.byte	0x73
 1147 03a1 BE030000 		.4byte	0x3be
 1148 03a5 0D       		.uleb128 0xd
 1149 03a6 33010000 		.4byte	.LASF59
 1150 03aa 0D       		.byte	0xd
 1151 03ab 74       		.byte	0x74
 1152 03ac BE030000 		.4byte	0x3be
 1153 03b0 00       		.byte	0
 1154 03b1 0D       		.uleb128 0xd
 1155 03b2 B1060000 		.4byte	.LASF60
 1156 03b6 0D       		.byte	0xd
 1157 03b7 75       		.byte	0x75
 1158 03b8 25000000 		.4byte	0x25
 1159 03bc 04       		.byte	0x4
 1160 03bd 00       		.byte	0
 1161 03be 14       		.uleb128 0x14
 1162 03bf 04       		.byte	0x4
 1163 03c0 3A000000 		.4byte	0x3a
 1164 03c4 12       		.uleb128 0x12
 1165 03c5 EE050000 		.4byte	.LASF61
 1166 03c9 68       		.byte	0x68
 1167 03ca 0D       		.byte	0xd
 1168 03cb B3       		.byte	0xb3
 1169 03cc EE040000 		.4byte	0x4ee
 1170 03d0 13       		.uleb128 0x13
 1171 03d1 5F7000   		.ascii	"_p\000"
 1172 03d4 0D       		.byte	0xd
 1173 03d5 B4       		.byte	0xb4
 1174 03d6 BE030000 		.4byte	0x3be
ARM GAS  /tmp/ccLuO05w.s 			page 49


 1175 03da 00       		.byte	0
 1176 03db 13       		.uleb128 0x13
 1177 03dc 5F7200   		.ascii	"_r\000"
 1178 03df 0D       		.byte	0xd
 1179 03e0 B5       		.byte	0xb5
 1180 03e1 25000000 		.4byte	0x25
 1181 03e5 04       		.byte	0x4
 1182 03e6 13       		.uleb128 0x13
 1183 03e7 5F7700   		.ascii	"_w\000"
 1184 03ea 0D       		.byte	0xd
 1185 03eb B6       		.byte	0xb6
 1186 03ec 25000000 		.4byte	0x25
 1187 03f0 08       		.byte	0x8
 1188 03f1 0D       		.uleb128 0xd
 1189 03f2 9B010000 		.4byte	.LASF62
 1190 03f6 0D       		.byte	0xd
 1191 03f7 B7       		.byte	0xb7
 1192 03f8 41000000 		.4byte	0x41
 1193 03fc 0C       		.byte	0xc
 1194 03fd 0D       		.uleb128 0xd
 1195 03fe CD020000 		.4byte	.LASF63
 1196 0402 0D       		.byte	0xd
 1197 0403 B8       		.byte	0xb8
 1198 0404 41000000 		.4byte	0x41
 1199 0408 0E       		.byte	0xe
 1200 0409 13       		.uleb128 0x13
 1201 040a 5F626600 		.ascii	"_bf\000"
 1202 040e 0D       		.byte	0xd
 1203 040f B9       		.byte	0xb9
 1204 0410 99030000 		.4byte	0x399
 1205 0414 10       		.byte	0x10
 1206 0415 0D       		.uleb128 0xd
 1207 0416 8B000000 		.4byte	.LASF64
 1208 041a 0D       		.byte	0xd
 1209 041b BA       		.byte	0xba
 1210 041c 25000000 		.4byte	0x25
 1211 0420 18       		.byte	0x18
 1212 0421 0D       		.uleb128 0xd
 1213 0422 69010000 		.4byte	.LASF65
 1214 0426 0D       		.byte	0xd
 1215 0427 C1       		.byte	0xc1
 1216 0428 A6000000 		.4byte	0xa6
 1217 042c 1C       		.byte	0x1c
 1218 042d 0D       		.uleb128 0xd
 1219 042e 72050000 		.4byte	.LASF66
 1220 0432 0D       		.byte	0xd
 1221 0433 C3       		.byte	0xc3
 1222 0434 5B060000 		.4byte	0x65b
 1223 0438 20       		.byte	0x20
 1224 0439 0D       		.uleb128 0xd
 1225 043a A3030000 		.4byte	.LASF67
 1226 043e 0D       		.byte	0xd
 1227 043f C5       		.byte	0xc5
 1228 0440 85060000 		.4byte	0x685
 1229 0444 24       		.byte	0x24
 1230 0445 0D       		.uleb128 0xd
 1231 0446 64060000 		.4byte	.LASF68
ARM GAS  /tmp/ccLuO05w.s 			page 50


 1232 044a 0D       		.byte	0xd
 1233 044b C8       		.byte	0xc8
 1234 044c A9060000 		.4byte	0x6a9
 1235 0450 28       		.byte	0x28
 1236 0451 0D       		.uleb128 0xd
 1237 0452 7A080000 		.4byte	.LASF69
 1238 0456 0D       		.byte	0xd
 1239 0457 C9       		.byte	0xc9
 1240 0458 C3060000 		.4byte	0x6c3
 1241 045c 2C       		.byte	0x2c
 1242 045d 13       		.uleb128 0x13
 1243 045e 5F756200 		.ascii	"_ub\000"
 1244 0462 0D       		.byte	0xd
 1245 0463 CC       		.byte	0xcc
 1246 0464 99030000 		.4byte	0x399
 1247 0468 30       		.byte	0x30
 1248 0469 13       		.uleb128 0x13
 1249 046a 5F757000 		.ascii	"_up\000"
 1250 046e 0D       		.byte	0xd
 1251 046f CD       		.byte	0xcd
 1252 0470 BE030000 		.4byte	0x3be
 1253 0474 38       		.byte	0x38
 1254 0475 13       		.uleb128 0x13
 1255 0476 5F757200 		.ascii	"_ur\000"
 1256 047a 0D       		.byte	0xd
 1257 047b CE       		.byte	0xce
 1258 047c 25000000 		.4byte	0x25
 1259 0480 3C       		.byte	0x3c
 1260 0481 0D       		.uleb128 0xd
 1261 0482 2D010000 		.4byte	.LASF70
 1262 0486 0D       		.byte	0xd
 1263 0487 D1       		.byte	0xd1
 1264 0488 C9060000 		.4byte	0x6c9
 1265 048c 40       		.byte	0x40
 1266 048d 0D       		.uleb128 0xd
 1267 048e 0C080000 		.4byte	.LASF71
 1268 0492 0D       		.byte	0xd
 1269 0493 D2       		.byte	0xd2
 1270 0494 D9060000 		.4byte	0x6d9
 1271 0498 43       		.byte	0x43
 1272 0499 13       		.uleb128 0x13
 1273 049a 5F6C6200 		.ascii	"_lb\000"
 1274 049e 0D       		.byte	0xd
 1275 049f D5       		.byte	0xd5
 1276 04a0 99030000 		.4byte	0x399
 1277 04a4 44       		.byte	0x44
 1278 04a5 0D       		.uleb128 0xd
 1279 04a6 A8060000 		.4byte	.LASF72
 1280 04aa 0D       		.byte	0xd
 1281 04ab D8       		.byte	0xd8
 1282 04ac 25000000 		.4byte	0x25
 1283 04b0 4C       		.byte	0x4c
 1284 04b1 0D       		.uleb128 0xd
 1285 04b2 2A040000 		.4byte	.LASF73
 1286 04b6 0D       		.byte	0xd
 1287 04b7 D9       		.byte	0xd9
 1288 04b8 79010000 		.4byte	0x179
ARM GAS  /tmp/ccLuO05w.s 			page 51


 1289 04bc 50       		.byte	0x50
 1290 04bd 0D       		.uleb128 0xd
 1291 04be 53000000 		.4byte	.LASF74
 1292 04c2 0D       		.byte	0xd
 1293 04c3 DC       		.byte	0xdc
 1294 04c4 0C050000 		.4byte	0x50c
 1295 04c8 54       		.byte	0x54
 1296 04c9 0D       		.uleb128 0xd
 1297 04ca 5F030000 		.4byte	.LASF75
 1298 04ce 0D       		.byte	0xd
 1299 04cf E0       		.byte	0xe0
 1300 04d0 F6010000 		.4byte	0x1f6
 1301 04d4 58       		.byte	0x58
 1302 04d5 0D       		.uleb128 0xd
 1303 04d6 93020000 		.4byte	.LASF76
 1304 04da 0D       		.byte	0xd
 1305 04db E2       		.byte	0xe2
 1306 04dc EB010000 		.4byte	0x1eb
 1307 04e0 5C       		.byte	0x5c
 1308 04e1 0D       		.uleb128 0xd
 1309 04e2 CA050000 		.4byte	.LASF77
 1310 04e6 0D       		.byte	0xd
 1311 04e7 E3       		.byte	0xe3
 1312 04e8 25000000 		.4byte	0x25
 1313 04ec 64       		.byte	0x64
 1314 04ed 00       		.byte	0
 1315 04ee 18       		.uleb128 0x18
 1316 04ef 25000000 		.4byte	0x25
 1317 04f3 0C050000 		.4byte	0x50c
 1318 04f7 19       		.uleb128 0x19
 1319 04f8 0C050000 		.4byte	0x50c
 1320 04fc 19       		.uleb128 0x19
 1321 04fd A6000000 		.4byte	0xa6
 1322 0501 19       		.uleb128 0x19
 1323 0502 49060000 		.4byte	0x649
 1324 0506 19       		.uleb128 0x19
 1325 0507 25000000 		.4byte	0x25
 1326 050b 00       		.byte	0
 1327 050c 14       		.uleb128 0x14
 1328 050d 04       		.byte	0x4
 1329 050e 17050000 		.4byte	0x517
 1330 0512 06       		.uleb128 0x6
 1331 0513 0C050000 		.4byte	0x50c
 1332 0517 1A       		.uleb128 0x1a
 1333 0518 46060000 		.4byte	.LASF78
 1334 051c 2804     		.2byte	0x428
 1335 051e 0D       		.byte	0xd
 1336 051f 3802     		.2byte	0x238
 1337 0521 49060000 		.4byte	0x649
 1338 0525 1B       		.uleb128 0x1b
 1339 0526 9C060000 		.4byte	.LASF79
 1340 052a 0D       		.byte	0xd
 1341 052b 3A02     		.2byte	0x23a
 1342 052d 25000000 		.4byte	0x25
 1343 0531 00       		.byte	0
 1344 0532 1B       		.uleb128 0x1b
 1345 0533 9F070000 		.4byte	.LASF80
ARM GAS  /tmp/ccLuO05w.s 			page 52


 1346 0537 0D       		.byte	0xd
 1347 0538 3F02     		.2byte	0x23f
 1348 053a 30070000 		.4byte	0x730
 1349 053e 04       		.byte	0x4
 1350 053f 1B       		.uleb128 0x1b
 1351 0540 87070000 		.4byte	.LASF81
 1352 0544 0D       		.byte	0xd
 1353 0545 3F02     		.2byte	0x23f
 1354 0547 30070000 		.4byte	0x730
 1355 054b 08       		.byte	0x8
 1356 054c 1B       		.uleb128 0x1b
 1357 054d 5F020000 		.4byte	.LASF82
 1358 0551 0D       		.byte	0xd
 1359 0552 3F02     		.2byte	0x23f
 1360 0554 30070000 		.4byte	0x730
 1361 0558 0C       		.byte	0xc
 1362 0559 1B       		.uleb128 0x1b
 1363 055a 1A060000 		.4byte	.LASF83
 1364 055e 0D       		.byte	0xd
 1365 055f 4102     		.2byte	0x241
 1366 0561 25000000 		.4byte	0x25
 1367 0565 10       		.byte	0x10
 1368 0566 1B       		.uleb128 0x1b
 1369 0567 22000000 		.4byte	.LASF84
 1370 056b 0D       		.byte	0xd
 1371 056c 4202     		.2byte	0x242
 1372 056e 12090000 		.4byte	0x912
 1373 0572 14       		.byte	0x14
 1374 0573 1B       		.uleb128 0x1b
 1375 0574 1A080000 		.4byte	.LASF85
 1376 0578 0D       		.byte	0xd
 1377 0579 4402     		.2byte	0x244
 1378 057b 25000000 		.4byte	0x25
 1379 057f 30       		.byte	0x30
 1380 0580 1B       		.uleb128 0x1b
 1381 0581 24060000 		.4byte	.LASF86
 1382 0585 0D       		.byte	0xd
 1383 0586 4502     		.2byte	0x245
 1384 0588 7F060000 		.4byte	0x67f
 1385 058c 34       		.byte	0x34
 1386 058d 1B       		.uleb128 0x1b
 1387 058e F7040000 		.4byte	.LASF87
 1388 0592 0D       		.byte	0xd
 1389 0593 4702     		.2byte	0x247
 1390 0595 25000000 		.4byte	0x25
 1391 0599 38       		.byte	0x38
 1392 059a 1B       		.uleb128 0x1b
 1393 059b 34060000 		.4byte	.LASF88
 1394 059f 0D       		.byte	0xd
 1395 05a0 4902     		.2byte	0x249
 1396 05a2 2D090000 		.4byte	0x92d
 1397 05a6 3C       		.byte	0x3c
 1398 05a7 1B       		.uleb128 0x1b
 1399 05a8 43030000 		.4byte	.LASF89
 1400 05ac 0D       		.byte	0xd
 1401 05ad 4C02     		.2byte	0x24c
 1402 05af 5F020000 		.4byte	0x25f
ARM GAS  /tmp/ccLuO05w.s 			page 53


 1403 05b3 40       		.byte	0x40
 1404 05b4 1B       		.uleb128 0x1b
 1405 05b5 BE010000 		.4byte	.LASF90
 1406 05b9 0D       		.byte	0xd
 1407 05ba 4D02     		.2byte	0x24d
 1408 05bc 25000000 		.4byte	0x25
 1409 05c0 44       		.byte	0x44
 1410 05c1 1B       		.uleb128 0x1b
 1411 05c2 9B080000 		.4byte	.LASF91
 1412 05c6 0D       		.byte	0xd
 1413 05c7 4E02     		.2byte	0x24e
 1414 05c9 5F020000 		.4byte	0x25f
 1415 05cd 48       		.byte	0x48
 1416 05ce 1B       		.uleb128 0x1b
 1417 05cf D2050000 		.4byte	.LASF92
 1418 05d3 0D       		.byte	0xd
 1419 05d4 4F02     		.2byte	0x24f
 1420 05d6 33090000 		.4byte	0x933
 1421 05da 4C       		.byte	0x4c
 1422 05db 1B       		.uleb128 0x1b
 1423 05dc B3020000 		.4byte	.LASF93
 1424 05e0 0D       		.byte	0xd
 1425 05e1 5202     		.2byte	0x252
 1426 05e3 25000000 		.4byte	0x25
 1427 05e7 50       		.byte	0x50
 1428 05e8 1B       		.uleb128 0x1b
 1429 05e9 DD010000 		.4byte	.LASF94
 1430 05ed 0D       		.byte	0xd
 1431 05ee 5302     		.2byte	0x253
 1432 05f0 49060000 		.4byte	0x649
 1433 05f4 54       		.byte	0x54
 1434 05f5 1B       		.uleb128 0x1b
 1435 05f6 A1050000 		.4byte	.LASF95
 1436 05fa 0D       		.byte	0xd
 1437 05fb 7602     		.2byte	0x276
 1438 05fd F0080000 		.4byte	0x8f0
 1439 0601 58       		.byte	0x58
 1440 0602 1C       		.uleb128 0x1c
 1441 0603 E5040000 		.4byte	.LASF55
 1442 0607 0D       		.byte	0xd
 1443 0608 7A02     		.2byte	0x27a
 1444 060a 7C030000 		.4byte	0x37c
 1445 060e 4801     		.2byte	0x148
 1446 0610 1C       		.uleb128 0x1c
 1447 0611 10030000 		.4byte	.LASF96
 1448 0615 0D       		.byte	0xd
 1449 0616 7B02     		.2byte	0x27b
 1450 0618 3E030000 		.4byte	0x33e
 1451 061c 4C01     		.2byte	0x14c
 1452 061e 1C       		.uleb128 0x1c
 1453 061f D3070000 		.4byte	.LASF97
 1454 0623 0D       		.byte	0xd
 1455 0624 7F02     		.2byte	0x27f
 1456 0626 44090000 		.4byte	0x944
 1457 062a DC02     		.2byte	0x2dc
 1458 062c 1C       		.uleb128 0x1c
 1459 062d 71010000 		.4byte	.LASF98
ARM GAS  /tmp/ccLuO05w.s 			page 54


 1460 0631 0D       		.byte	0xd
 1461 0632 8402     		.2byte	0x284
 1462 0634 F5060000 		.4byte	0x6f5
 1463 0638 E002     		.2byte	0x2e0
 1464 063a 1C       		.uleb128 0x1c
 1465 063b 57010000 		.4byte	.LASF99
 1466 063f 0D       		.byte	0xd
 1467 0640 8502     		.2byte	0x285
 1468 0642 50090000 		.4byte	0x950
 1469 0646 EC02     		.2byte	0x2ec
 1470 0648 00       		.byte	0
 1471 0649 14       		.uleb128 0x14
 1472 064a 04       		.byte	0x4
 1473 064b 4F060000 		.4byte	0x64f
 1474 064f 03       		.uleb128 0x3
 1475 0650 01       		.byte	0x1
 1476 0651 08       		.byte	0x8
 1477 0652 A3060000 		.4byte	.LASF100
 1478 0656 06       		.uleb128 0x6
 1479 0657 4F060000 		.4byte	0x64f
 1480 065b 14       		.uleb128 0x14
 1481 065c 04       		.byte	0x4
 1482 065d EE040000 		.4byte	0x4ee
 1483 0661 18       		.uleb128 0x18
 1484 0662 25000000 		.4byte	0x25
 1485 0666 7F060000 		.4byte	0x67f
 1486 066a 19       		.uleb128 0x19
 1487 066b 0C050000 		.4byte	0x50c
 1488 066f 19       		.uleb128 0x19
 1489 0670 A6000000 		.4byte	0xa6
 1490 0674 19       		.uleb128 0x19
 1491 0675 7F060000 		.4byte	0x67f
 1492 0679 19       		.uleb128 0x19
 1493 067a 25000000 		.4byte	0x25
 1494 067e 00       		.byte	0
 1495 067f 14       		.uleb128 0x14
 1496 0680 04       		.byte	0x4
 1497 0681 56060000 		.4byte	0x656
 1498 0685 14       		.uleb128 0x14
 1499 0686 04       		.byte	0x4
 1500 0687 61060000 		.4byte	0x661
 1501 068b 18       		.uleb128 0x18
 1502 068c 84010000 		.4byte	0x184
 1503 0690 A9060000 		.4byte	0x6a9
 1504 0694 19       		.uleb128 0x19
 1505 0695 0C050000 		.4byte	0x50c
 1506 0699 19       		.uleb128 0x19
 1507 069a A6000000 		.4byte	0xa6
 1508 069e 19       		.uleb128 0x19
 1509 069f 84010000 		.4byte	0x184
 1510 06a3 19       		.uleb128 0x19
 1511 06a4 25000000 		.4byte	0x25
 1512 06a8 00       		.byte	0
 1513 06a9 14       		.uleb128 0x14
 1514 06aa 04       		.byte	0x4
 1515 06ab 8B060000 		.4byte	0x68b
 1516 06af 18       		.uleb128 0x18
ARM GAS  /tmp/ccLuO05w.s 			page 55


 1517 06b0 25000000 		.4byte	0x25
 1518 06b4 C3060000 		.4byte	0x6c3
 1519 06b8 19       		.uleb128 0x19
 1520 06b9 0C050000 		.4byte	0x50c
 1521 06bd 19       		.uleb128 0x19
 1522 06be A6000000 		.4byte	0xa6
 1523 06c2 00       		.byte	0
 1524 06c3 14       		.uleb128 0x14
 1525 06c4 04       		.byte	0x4
 1526 06c5 AF060000 		.4byte	0x6af
 1527 06c9 0A       		.uleb128 0xa
 1528 06ca 3A000000 		.4byte	0x3a
 1529 06ce D9060000 		.4byte	0x6d9
 1530 06d2 0B       		.uleb128 0xb
 1531 06d3 A8000000 		.4byte	0xa8
 1532 06d7 02       		.byte	0x2
 1533 06d8 00       		.byte	0
 1534 06d9 0A       		.uleb128 0xa
 1535 06da 3A000000 		.4byte	0x3a
 1536 06de E9060000 		.4byte	0x6e9
 1537 06e2 0B       		.uleb128 0xb
 1538 06e3 A8000000 		.4byte	0xa8
 1539 06e7 00       		.byte	0
 1540 06e8 00       		.byte	0
 1541 06e9 0F       		.uleb128 0xf
 1542 06ea DC050000 		.4byte	.LASF101
 1543 06ee 0D       		.byte	0xd
 1544 06ef 1D01     		.2byte	0x11d
 1545 06f1 C4030000 		.4byte	0x3c4
 1546 06f5 1D       		.uleb128 0x1d
 1547 06f6 99070000 		.4byte	.LASF102
 1548 06fa 0C       		.byte	0xc
 1549 06fb 0D       		.byte	0xd
 1550 06fc 2101     		.2byte	0x121
 1551 06fe 2A070000 		.4byte	0x72a
 1552 0702 1B       		.uleb128 0x1b
 1553 0703 DE060000 		.4byte	.LASF35
 1554 0707 0D       		.byte	0xd
 1555 0708 2301     		.2byte	0x123
 1556 070a 2A070000 		.4byte	0x72a
 1557 070e 00       		.byte	0
 1558 070f 1B       		.uleb128 0x1b
 1559 0710 94000000 		.4byte	.LASF103
 1560 0714 0D       		.byte	0xd
 1561 0715 2401     		.2byte	0x124
 1562 0717 25000000 		.4byte	0x25
 1563 071b 04       		.byte	0x4
 1564 071c 1B       		.uleb128 0x1b
 1565 071d 14060000 		.4byte	.LASF104
 1566 0721 0D       		.byte	0xd
 1567 0722 2501     		.2byte	0x125
 1568 0724 30070000 		.4byte	0x730
 1569 0728 08       		.byte	0x8
 1570 0729 00       		.byte	0
 1571 072a 14       		.uleb128 0x14
 1572 072b 04       		.byte	0x4
 1573 072c F5060000 		.4byte	0x6f5
ARM GAS  /tmp/ccLuO05w.s 			page 56


 1574 0730 14       		.uleb128 0x14
 1575 0731 04       		.byte	0x4
 1576 0732 E9060000 		.4byte	0x6e9
 1577 0736 1D       		.uleb128 0x1d
 1578 0737 1A000000 		.4byte	.LASF105
 1579 073b 0E       		.byte	0xe
 1580 073c 0D       		.byte	0xd
 1581 073d 3D01     		.2byte	0x13d
 1582 073f 6B070000 		.4byte	0x76b
 1583 0743 1B       		.uleb128 0x1b
 1584 0744 4D060000 		.4byte	.LASF106
 1585 0748 0D       		.byte	0xd
 1586 0749 3E01     		.2byte	0x13e
 1587 074b 6B070000 		.4byte	0x76b
 1588 074f 00       		.byte	0
 1589 0750 1B       		.uleb128 0x1b
 1590 0751 65030000 		.4byte	.LASF107
 1591 0755 0D       		.byte	0xd
 1592 0756 3F01     		.2byte	0x13f
 1593 0758 6B070000 		.4byte	0x76b
 1594 075c 06       		.byte	0x6
 1595 075d 1B       		.uleb128 0x1b
 1596 075e 37070000 		.4byte	.LASF108
 1597 0762 0D       		.byte	0xd
 1598 0763 4001     		.2byte	0x140
 1599 0765 48000000 		.4byte	0x48
 1600 0769 0C       		.byte	0xc
 1601 076a 00       		.byte	0
 1602 076b 0A       		.uleb128 0xa
 1603 076c 48000000 		.4byte	0x48
 1604 0770 7B070000 		.4byte	0x77b
 1605 0774 0B       		.uleb128 0xb
 1606 0775 A8000000 		.4byte	0xa8
 1607 0779 02       		.byte	0x2
 1608 077a 00       		.byte	0
 1609 077b 1E       		.uleb128 0x1e
 1610 077c D0       		.byte	0xd0
 1611 077d 0D       		.byte	0xd
 1612 077e 5702     		.2byte	0x257
 1613 0780 7C080000 		.4byte	0x87c
 1614 0784 1B       		.uleb128 0x1b
 1615 0785 B4030000 		.4byte	.LASF109
 1616 0789 0D       		.byte	0xd
 1617 078a 5902     		.2byte	0x259
 1618 078c 2C000000 		.4byte	0x2c
 1619 0790 00       		.byte	0
 1620 0791 1B       		.uleb128 0x1b
 1621 0792 E4060000 		.4byte	.LASF110
 1622 0796 0D       		.byte	0xd
 1623 0797 5A02     		.2byte	0x25a
 1624 0799 49060000 		.4byte	0x649
 1625 079d 04       		.byte	0x4
 1626 079e 1B       		.uleb128 0x1b
 1627 079f 2F030000 		.4byte	.LASF111
 1628 07a3 0D       		.byte	0xd
 1629 07a4 5B02     		.2byte	0x25b
 1630 07a6 7C080000 		.4byte	0x87c
ARM GAS  /tmp/ccLuO05w.s 			page 57


 1631 07aa 08       		.byte	0x8
 1632 07ab 1B       		.uleb128 0x1b
 1633 07ac 6B080000 		.4byte	.LASF112
 1634 07b0 0D       		.byte	0xd
 1635 07b1 5C02     		.2byte	0x25c
 1636 07b3 75020000 		.4byte	0x275
 1637 07b7 24       		.byte	0x24
 1638 07b8 1B       		.uleb128 0x1b
 1639 07b9 6F020000 		.4byte	.LASF113
 1640 07bd 0D       		.byte	0xd
 1641 07be 5D02     		.2byte	0x25d
 1642 07c0 25000000 		.4byte	0x25
 1643 07c4 48       		.byte	0x48
 1644 07c5 1B       		.uleb128 0x1b
 1645 07c6 F6050000 		.4byte	.LASF114
 1646 07ca 0D       		.byte	0xd
 1647 07cb 5E02     		.2byte	0x25e
 1648 07cd 7A000000 		.4byte	0x7a
 1649 07d1 50       		.byte	0x50
 1650 07d2 1B       		.uleb128 0x1b
 1651 07d3 81080000 		.4byte	.LASF115
 1652 07d7 0D       		.byte	0xd
 1653 07d8 5F02     		.2byte	0x25f
 1654 07da 36070000 		.4byte	0x736
 1655 07de 58       		.byte	0x58
 1656 07df 1B       		.uleb128 0x1b
 1657 07e0 AC050000 		.4byte	.LASF116
 1658 07e4 0D       		.byte	0xd
 1659 07e5 6002     		.2byte	0x260
 1660 07e7 EB010000 		.4byte	0x1eb
 1661 07eb 68       		.byte	0x68
 1662 07ec 1B       		.uleb128 0x1b
 1663 07ed 8D080000 		.4byte	.LASF117
 1664 07f1 0D       		.byte	0xd
 1665 07f2 6102     		.2byte	0x261
 1666 07f4 EB010000 		.4byte	0x1eb
 1667 07f8 70       		.byte	0x70
 1668 07f9 1B       		.uleb128 0x1b
 1669 07fa CE000000 		.4byte	.LASF118
 1670 07fe 0D       		.byte	0xd
 1671 07ff 6202     		.2byte	0x262
 1672 0801 EB010000 		.4byte	0x1eb
 1673 0805 78       		.byte	0x78
 1674 0806 1B       		.uleb128 0x1b
 1675 0807 BF070000 		.4byte	.LASF119
 1676 080b 0D       		.byte	0xd
 1677 080c 6302     		.2byte	0x263
 1678 080e 8C080000 		.4byte	0x88c
 1679 0812 80       		.byte	0x80
 1680 0813 1B       		.uleb128 0x1b
 1681 0814 23030000 		.4byte	.LASF120
 1682 0818 0D       		.byte	0xd
 1683 0819 6402     		.2byte	0x264
 1684 081b 9C080000 		.4byte	0x89c
 1685 081f 88       		.byte	0x88
 1686 0820 1B       		.uleb128 0x1b
 1687 0821 46000000 		.4byte	.LASF121
ARM GAS  /tmp/ccLuO05w.s 			page 58


 1688 0825 0D       		.byte	0xd
 1689 0826 6502     		.2byte	0x265
 1690 0828 25000000 		.4byte	0x25
 1691 082c A0       		.byte	0xa0
 1692 082d 1B       		.uleb128 0x1b
 1693 082e FF010000 		.4byte	.LASF122
 1694 0832 0D       		.byte	0xd
 1695 0833 6602     		.2byte	0x266
 1696 0835 EB010000 		.4byte	0x1eb
 1697 0839 A4       		.byte	0xa4
 1698 083a 1B       		.uleb128 0x1b
 1699 083b BF000000 		.4byte	.LASF123
 1700 083f 0D       		.byte	0xd
 1701 0840 6702     		.2byte	0x267
 1702 0842 EB010000 		.4byte	0x1eb
 1703 0846 AC       		.byte	0xac
 1704 0847 1B       		.uleb128 0x1b
 1705 0848 E5010000 		.4byte	.LASF124
 1706 084c 0D       		.byte	0xd
 1707 084d 6802     		.2byte	0x268
 1708 084f EB010000 		.4byte	0x1eb
 1709 0853 B4       		.byte	0xb4
 1710 0854 1B       		.uleb128 0x1b
 1711 0855 59000000 		.4byte	.LASF125
 1712 0859 0D       		.byte	0xd
 1713 085a 6902     		.2byte	0x269
 1714 085c EB010000 		.4byte	0x1eb
 1715 0860 BC       		.byte	0xbc
 1716 0861 1B       		.uleb128 0x1b
 1717 0862 73000000 		.4byte	.LASF126
 1718 0866 0D       		.byte	0xd
 1719 0867 6A02     		.2byte	0x26a
 1720 0869 EB010000 		.4byte	0x1eb
 1721 086d C4       		.byte	0xc4
 1722 086e 1B       		.uleb128 0x1b
 1723 086f 17070000 		.4byte	.LASF127
 1724 0873 0D       		.byte	0xd
 1725 0874 6B02     		.2byte	0x26b
 1726 0876 25000000 		.4byte	0x25
 1727 087a CC       		.byte	0xcc
 1728 087b 00       		.byte	0
 1729 087c 0A       		.uleb128 0xa
 1730 087d 4F060000 		.4byte	0x64f
 1731 0881 8C080000 		.4byte	0x88c
 1732 0885 0B       		.uleb128 0xb
 1733 0886 A8000000 		.4byte	0xa8
 1734 088a 19       		.byte	0x19
 1735 088b 00       		.byte	0
 1736 088c 0A       		.uleb128 0xa
 1737 088d 4F060000 		.4byte	0x64f
 1738 0891 9C080000 		.4byte	0x89c
 1739 0895 0B       		.uleb128 0xb
 1740 0896 A8000000 		.4byte	0xa8
 1741 089a 07       		.byte	0x7
 1742 089b 00       		.byte	0
 1743 089c 0A       		.uleb128 0xa
 1744 089d 4F060000 		.4byte	0x64f
ARM GAS  /tmp/ccLuO05w.s 			page 59


 1745 08a1 AC080000 		.4byte	0x8ac
 1746 08a5 0B       		.uleb128 0xb
 1747 08a6 A8000000 		.4byte	0xa8
 1748 08aa 17       		.byte	0x17
 1749 08ab 00       		.byte	0
 1750 08ac 1E       		.uleb128 0x1e
 1751 08ad F0       		.byte	0xf0
 1752 08ae 0D       		.byte	0xd
 1753 08af 7002     		.2byte	0x270
 1754 08b1 D0080000 		.4byte	0x8d0
 1755 08b5 1B       		.uleb128 0x1b
 1756 08b6 51030000 		.4byte	.LASF128
 1757 08ba 0D       		.byte	0xd
 1758 08bb 7302     		.2byte	0x273
 1759 08bd D0080000 		.4byte	0x8d0
 1760 08c1 00       		.byte	0
 1761 08c2 1B       		.uleb128 0x1b
 1762 08c3 7E020000 		.4byte	.LASF129
 1763 08c7 0D       		.byte	0xd
 1764 08c8 7402     		.2byte	0x274
 1765 08ca E0080000 		.4byte	0x8e0
 1766 08ce 78       		.byte	0x78
 1767 08cf 00       		.byte	0
 1768 08d0 0A       		.uleb128 0xa
 1769 08d1 BE030000 		.4byte	0x3be
 1770 08d5 E0080000 		.4byte	0x8e0
 1771 08d9 0B       		.uleb128 0xb
 1772 08da A8000000 		.4byte	0xa8
 1773 08de 1D       		.byte	0x1d
 1774 08df 00       		.byte	0
 1775 08e0 0A       		.uleb128 0xa
 1776 08e1 2C000000 		.4byte	0x2c
 1777 08e5 F0080000 		.4byte	0x8f0
 1778 08e9 0B       		.uleb128 0xb
 1779 08ea A8000000 		.4byte	0xa8
 1780 08ee 1D       		.byte	0x1d
 1781 08ef 00       		.byte	0
 1782 08f0 1F       		.uleb128 0x1f
 1783 08f1 F0       		.byte	0xf0
 1784 08f2 0D       		.byte	0xd
 1785 08f3 5502     		.2byte	0x255
 1786 08f5 12090000 		.4byte	0x912
 1787 08f9 20       		.uleb128 0x20
 1788 08fa 46060000 		.4byte	.LASF78
 1789 08fe 0D       		.byte	0xd
 1790 08ff 6C02     		.2byte	0x26c
 1791 0901 7B070000 		.4byte	0x77b
 1792 0905 20       		.uleb128 0x20
 1793 0906 12080000 		.4byte	.LASF130
 1794 090a 0D       		.byte	0xd
 1795 090b 7502     		.2byte	0x275
 1796 090d AC080000 		.4byte	0x8ac
 1797 0911 00       		.byte	0
 1798 0912 0A       		.uleb128 0xa
 1799 0913 4F060000 		.4byte	0x64f
 1800 0917 22090000 		.4byte	0x922
 1801 091b 0B       		.uleb128 0xb
ARM GAS  /tmp/ccLuO05w.s 			page 60


 1802 091c A8000000 		.4byte	0xa8
 1803 0920 18       		.byte	0x18
 1804 0921 00       		.byte	0
 1805 0922 21       		.uleb128 0x21
 1806 0923 2D090000 		.4byte	0x92d
 1807 0927 19       		.uleb128 0x19
 1808 0928 0C050000 		.4byte	0x50c
 1809 092c 00       		.byte	0
 1810 092d 14       		.uleb128 0x14
 1811 092e 04       		.byte	0x4
 1812 092f 22090000 		.4byte	0x922
 1813 0933 14       		.uleb128 0x14
 1814 0934 04       		.byte	0x4
 1815 0935 5F020000 		.4byte	0x25f
 1816 0939 21       		.uleb128 0x21
 1817 093a 44090000 		.4byte	0x944
 1818 093e 19       		.uleb128 0x19
 1819 093f 25000000 		.4byte	0x25
 1820 0943 00       		.byte	0
 1821 0944 14       		.uleb128 0x14
 1822 0945 04       		.byte	0x4
 1823 0946 4A090000 		.4byte	0x94a
 1824 094a 14       		.uleb128 0x14
 1825 094b 04       		.byte	0x4
 1826 094c 39090000 		.4byte	0x939
 1827 0950 0A       		.uleb128 0xa
 1828 0951 E9060000 		.4byte	0x6e9
 1829 0955 60090000 		.4byte	0x960
 1830 0959 0B       		.uleb128 0xb
 1831 095a A8000000 		.4byte	0xa8
 1832 095e 02       		.byte	0x2
 1833 095f 00       		.byte	0
 1834 0960 08       		.uleb128 0x8
 1835 0961 53020000 		.4byte	.LASF131
 1836 0965 0D       		.byte	0xd
 1837 0966 FD02     		.2byte	0x2fd
 1838 0968 0C050000 		.4byte	0x50c
 1839 096c 08       		.uleb128 0x8
 1840 096d 54070000 		.4byte	.LASF132
 1841 0971 0D       		.byte	0xd
 1842 0972 FE02     		.2byte	0x2fe
 1843 0974 12050000 		.4byte	0x512
 1844 0978 09       		.uleb128 0x9
 1845 0979 ED040000 		.4byte	.LASF133
 1846 097d 0E       		.byte	0xe
 1847 097e 5F       		.byte	0x5f
 1848 097f 49060000 		.4byte	0x649
 1849 0983 04       		.uleb128 0x4
 1850 0984 68000000 		.4byte	.LASF134
 1851 0988 04       		.byte	0x4
 1852 0989 8C       		.byte	0x8c
 1853 098a 91000000 		.4byte	0x91
 1854 098e 09       		.uleb128 0x9
 1855 098f 25050000 		.4byte	.LASF135
 1856 0993 04       		.byte	0x4
 1857 0994 8F       		.byte	0x8f
 1858 0995 A0090000 		.4byte	0x9a0
ARM GAS  /tmp/ccLuO05w.s 			page 61


 1859 0999 03       		.uleb128 0x3
 1860 099a 01       		.byte	0x1
 1861 099b 02       		.byte	0x2
 1862 099c 87050000 		.4byte	.LASF136
 1863 09a0 05       		.uleb128 0x5
 1864 09a1 99090000 		.4byte	0x999
 1865 09a5 22       		.uleb128 0x22
 1866 09a6 EB070000 		.4byte	.LASF137
 1867 09aa 04       		.byte	0x4
 1868 09ab 94       		.byte	0x94
 1869 09ac 9C000000 		.4byte	0x9c
 1870 09b0 05       		.uleb128 0x5
 1871 09b1 03       		.byte	0x3
 1872 09b2 00000000 		.4byte	cpu_irq_critical_section_counter
 1873 09b6 22       		.uleb128 0x22
 1874 09b7 D4030000 		.4byte	.LASF138
 1875 09bb 04       		.byte	0x4
 1876 09bc 95       		.byte	0x95
 1877 09bd A0090000 		.4byte	0x9a0
 1878 09c1 05       		.uleb128 0x5
 1879 09c2 03       		.byte	0x3
 1880 09c3 00000000 		.4byte	cpu_irq_prev_interrupt_state
 1881 09c7 03       		.uleb128 0x3
 1882 09c8 04       		.byte	0x4
 1883 09c9 04       		.byte	0x4
 1884 09ca 1F050000 		.4byte	.LASF139
 1885 09ce 03       		.uleb128 0x3
 1886 09cf 08       		.byte	0x8
 1887 09d0 04       		.byte	0x4
 1888 09d1 D6010000 		.4byte	.LASF140
 1889 09d5 23       		.uleb128 0x23
 1890 09d6 87020000 		.4byte	.LASF187
 1891 09da 04       		.byte	0x4
 1892 09db 2C000000 		.4byte	0x2c
 1893 09df 0F       		.byte	0xf
 1894 09e0 3E       		.byte	0x3e
 1895 09e1 0D0A0000 		.4byte	0xa0d
 1896 09e5 24       		.uleb128 0x24
 1897 09e6 56050000 		.4byte	.LASF141
 1898 09ea 00       		.byte	0
 1899 09eb 24       		.uleb128 0x24
 1900 09ec B4070000 		.4byte	.LASF142
 1901 09f0 00       		.byte	0
 1902 09f1 24       		.uleb128 0x24
 1903 09f2 C1030000 		.4byte	.LASF143
 1904 09f6 01       		.byte	0x1
 1905 09f7 24       		.uleb128 0x24
 1906 09f8 5C010000 		.4byte	.LASF144
 1907 09fc 01       		.byte	0x1
 1908 09fd 24       		.uleb128 0x24
 1909 09fe 78050000 		.4byte	.LASF145
 1910 0a02 02       		.byte	0x2
 1911 0a03 25       		.uleb128 0x25
 1912 0a04 01060000 		.4byte	.LASF146
 1913 0a08 FFFFFFFF 		.4byte	0xffffffff
 1914 0a0c 00       		.byte	0
 1915 0a0d 26       		.uleb128 0x26
ARM GAS  /tmp/ccLuO05w.s 			page 62


 1916 0a0e 44070000 		.4byte	.LASF151
 1917 0a12 01       		.byte	0x1
 1918 0a13 A201     		.2byte	0x1a2
 1919 0a15 91000000 		.4byte	0x91
 1920 0a19 6C000000 		.4byte	.LFB156
 1921 0a1d 1C000000 		.4byte	.LFE156-.LFB156
 1922 0a21 01       		.uleb128 0x1
 1923 0a22 9C       		.byte	0x9c
 1924 0a23 550A0000 		.4byte	0xa55
 1925 0a27 27       		.uleb128 0x27
 1926 0a28 6A060000 		.4byte	.LASF147
 1927 0a2c 01       		.byte	0x1
 1928 0a2d A201     		.2byte	0x1a2
 1929 0a2f 550A0000 		.4byte	0xa55
 1930 0a33 00000000 		.4byte	.LLST18
 1931 0a37 28       		.uleb128 0x28
 1932 0a38 C4060000 		.4byte	.LASF148
 1933 0a3c 01       		.byte	0x1
 1934 0a3d A201     		.2byte	0x1a2
 1935 0a3f 91000000 		.4byte	0x91
 1936 0a43 01       		.uleb128 0x1
 1937 0a44 51       		.byte	0x51
 1938 0a45 29       		.uleb128 0x29
 1939 0a46 B5000000 		.4byte	.LASF149
 1940 0a4a 01       		.byte	0x1
 1941 0a4b A401     		.2byte	0x1a4
 1942 0a4d 9C000000 		.4byte	0x9c
 1943 0a51 02       		.uleb128 0x2
 1944 0a52 91       		.byte	0x91
 1945 0a53 7C       		.sleb128 -4
 1946 0a54 00       		.byte	0
 1947 0a55 14       		.uleb128 0x14
 1948 0a56 04       		.byte	0x4
 1949 0a57 63010000 		.4byte	0x163
 1950 0a5b 2A       		.uleb128 0x2a
 1951 0a5c A6070000 		.4byte	.LASF166
 1952 0a60 01       		.byte	0x1
 1953 0a61 9301     		.2byte	0x193
 1954 0a63 68000000 		.4byte	.LFB155
 1955 0a67 04000000 		.4byte	.LFE155-.LFB155
 1956 0a6b 01       		.uleb128 0x1
 1957 0a6c 9C       		.byte	0x9c
 1958 0a6d 8E0A0000 		.4byte	0xa8e
 1959 0a71 28       		.uleb128 0x28
 1960 0a72 6A060000 		.4byte	.LASF147
 1961 0a76 01       		.byte	0x1
 1962 0a77 9301     		.2byte	0x193
 1963 0a79 550A0000 		.4byte	0xa55
 1964 0a7d 01       		.uleb128 0x1
 1965 0a7e 50       		.byte	0x50
 1966 0a7f 28       		.uleb128 0x28
 1967 0a80 84000000 		.4byte	.LASF150
 1968 0a84 01       		.byte	0x1
 1969 0a85 9301     		.2byte	0x193
 1970 0a87 91000000 		.4byte	0x91
 1971 0a8b 01       		.uleb128 0x1
 1972 0a8c 51       		.byte	0x51
ARM GAS  /tmp/ccLuO05w.s 			page 63


 1973 0a8d 00       		.byte	0
 1974 0a8e 26       		.uleb128 0x26
 1975 0a8f 6B030000 		.4byte	.LASF152
 1976 0a93 01       		.byte	0x1
 1977 0a94 4601     		.2byte	0x146
 1978 0a96 91000000 		.4byte	0x91
 1979 0a9a 00000000 		.4byte	.LFB154
 1980 0a9e 68000000 		.4byte	.LFE154-.LFB154
 1981 0aa2 01       		.uleb128 0x1
 1982 0aa3 9C       		.byte	0x9c
 1983 0aa4 280B0000 		.4byte	0xb28
 1984 0aa8 27       		.uleb128 0x27
 1985 0aa9 6A060000 		.4byte	.LASF147
 1986 0aad 01       		.byte	0x1
 1987 0aae 4601     		.2byte	0x146
 1988 0ab0 550A0000 		.4byte	0xa55
 1989 0ab4 21000000 		.4byte	.LLST3
 1990 0ab8 27       		.uleb128 0x27
 1991 0ab9 90030000 		.4byte	.LASF153
 1992 0abd 01       		.byte	0x1
 1993 0abe 4701     		.2byte	0x147
 1994 0ac0 91000000 		.4byte	0x91
 1995 0ac4 5B000000 		.4byte	.LLST4
 1996 0ac8 27       		.uleb128 0x27
 1997 0ac9 19030000 		.4byte	.LASF154
 1998 0acd 01       		.byte	0x1
 1999 0ace 4701     		.2byte	0x147
 2000 0ad0 91000000 		.4byte	0x91
 2001 0ad4 87000000 		.4byte	.LLST5
 2002 0ad8 27       		.uleb128 0x27
 2003 0ad9 16050000 		.4byte	.LASF155
 2004 0add 01       		.byte	0x1
 2005 0ade 4801     		.2byte	0x148
 2006 0ae0 280B0000 		.4byte	0xb28
 2007 0ae4 C1000000 		.4byte	.LLST6
 2008 0ae8 27       		.uleb128 0x27
 2009 0ae9 E3070000 		.4byte	.LASF156
 2010 0aed 01       		.byte	0x1
 2011 0aee 4801     		.2byte	0x148
 2012 0af0 91000000 		.4byte	0x91
 2013 0af4 ED000000 		.4byte	.LLST7
 2014 0af8 29       		.uleb128 0x29
 2015 0af9 B5000000 		.4byte	.LASF149
 2016 0afd 01       		.byte	0x1
 2017 0afe 4A01     		.2byte	0x14a
 2018 0b00 9C000000 		.4byte	0x9c
 2019 0b04 02       		.uleb128 0x2
 2020 0b05 91       		.byte	0x91
 2021 0b06 74       		.sleb128 -12
 2022 0b07 2B       		.uleb128 0x2b
 2023 0b08 86080000 		.4byte	.LASF157
 2024 0b0c 01       		.byte	0x1
 2025 0b0d 4B01     		.2byte	0x14b
 2026 0b0f 91000000 		.4byte	0x91
 2027 0b13 25010000 		.4byte	.LLST8
 2028 0b17 2C       		.uleb128 0x2c
 2029 0b18 C9070000 		.4byte	.LASF158
ARM GAS  /tmp/ccLuO05w.s 			page 64


 2030 0b1c 01       		.byte	0x1
 2031 0b1d 5301     		.2byte	0x153
 2032 0b1f 280B0000 		.4byte	0xb28
 2033 0b23 00004000 		.4byte	0x400000
 2034 0b27 00       		.byte	0
 2035 0b28 14       		.uleb128 0x14
 2036 0b29 04       		.byte	0x4
 2037 0b2a 91000000 		.4byte	0x91
 2038 0b2e 26       		.uleb128 0x26
 2039 0b2f F6000000 		.4byte	.LASF159
 2040 0b33 01       		.byte	0x1
 2041 0b34 3301     		.2byte	0x133
 2042 0b36 91000000 		.4byte	0x91
 2043 0b3a 00000000 		.4byte	.LFB153
 2044 0b3e 04000000 		.4byte	.LFE153-.LFB153
 2045 0b42 01       		.uleb128 0x1
 2046 0b43 9C       		.byte	0x9c
 2047 0b44 590B0000 		.4byte	0xb59
 2048 0b48 27       		.uleb128 0x27
 2049 0b49 6A060000 		.4byte	.LASF147
 2050 0b4d 01       		.byte	0x1
 2051 0b4e 3301     		.2byte	0x133
 2052 0b50 550A0000 		.4byte	0xa55
 2053 0b54 39010000 		.4byte	.LLST2
 2054 0b58 00       		.byte	0
 2055 0b59 26       		.uleb128 0x26
 2056 0b5a 39050000 		.4byte	.LASF160
 2057 0b5e 01       		.byte	0x1
 2058 0b5f 2701     		.2byte	0x127
 2059 0b61 91000000 		.4byte	0x91
 2060 0b65 00000000 		.4byte	.LFB152
 2061 0b69 04000000 		.4byte	.LFE152-.LFB152
 2062 0b6d 01       		.uleb128 0x1
 2063 0b6e 9C       		.byte	0x9c
 2064 0b6f 840B0000 		.4byte	0xb84
 2065 0b73 27       		.uleb128 0x27
 2066 0b74 6A060000 		.4byte	.LASF147
 2067 0b78 01       		.byte	0x1
 2068 0b79 2701     		.2byte	0x127
 2069 0b7b 550A0000 		.4byte	0xa55
 2070 0b7f 5A010000 		.4byte	.LLST1
 2071 0b83 00       		.byte	0
 2072 0b84 26       		.uleb128 0x26
 2073 0b85 AA010000 		.4byte	.LASF161
 2074 0b89 01       		.byte	0x1
 2075 0b8a 0A01     		.2byte	0x10a
 2076 0b8c 91000000 		.4byte	0x91
 2077 0b90 00000000 		.4byte	.LFB151
 2078 0b94 4C000000 		.4byte	.LFE151-.LFB151
 2079 0b98 01       		.uleb128 0x1
 2080 0b99 9C       		.byte	0x9c
 2081 0b9a 920C0000 		.4byte	0xc92
 2082 0b9e 27       		.uleb128 0x27
 2083 0b9f 6A060000 		.4byte	.LASF147
 2084 0ba3 01       		.byte	0x1
 2085 0ba4 0A01     		.2byte	0x10a
 2086 0ba6 550A0000 		.4byte	0xa55
ARM GAS  /tmp/ccLuO05w.s 			page 65


 2087 0baa 7B010000 		.4byte	.LLST19
 2088 0bae 27       		.uleb128 0x27
 2089 0baf 85030000 		.4byte	.LASF162
 2090 0bb3 01       		.byte	0x1
 2091 0bb4 0A01     		.2byte	0x10a
 2092 0bb6 91000000 		.4byte	0x91
 2093 0bba B5010000 		.4byte	.LLST20
 2094 0bbe 27       		.uleb128 0x27
 2095 0bbf 70060000 		.4byte	.LASF163
 2096 0bc3 01       		.byte	0x1
 2097 0bc4 0B01     		.2byte	0x10b
 2098 0bc6 91000000 		.4byte	0x91
 2099 0bca D6010000 		.4byte	.LLST21
 2100 0bce 29       		.uleb128 0x29
 2101 0bcf A8080000 		.4byte	.LASF164
 2102 0bd3 01       		.byte	0x1
 2103 0bd4 0D01     		.2byte	0x10d
 2104 0bd6 91000000 		.4byte	0x91
 2105 0bda 01       		.uleb128 0x1
 2106 0bdb 50       		.byte	0x50
 2107 0bdc 2D       		.uleb128 0x2d
 2108 0bdd DD070000 		.4byte	.LASF177
 2109 0be1 01       		.byte	0x1
 2110 0be2 0E01     		.2byte	0x10e
 2111 0be4 83090000 		.4byte	0x983
 2112 0be8 2E       		.uleb128 0x2e
 2113 0be9 090F0000 		.4byte	0xf09
 2114 0bed 10000000 		.4byte	.LBB32
 2115 0bf1 00000000 		.4byte	.Ldebug_ranges0+0
 2116 0bf5 01       		.byte	0x1
 2117 0bf6 1501     		.2byte	0x115
 2118 0bf8 490C0000 		.4byte	0xc49
 2119 0bfc 2F       		.uleb128 0x2f
 2120 0bfd 00000000 		.4byte	.Ldebug_ranges0+0
 2121 0c01 30       		.uleb128 0x30
 2122 0c02 190F0000 		.4byte	0xf19
 2123 0c06 31       		.uleb128 0x31
 2124 0c07 250F0000 		.4byte	0xf25
 2125 0c0b 10000000 		.4byte	.LBB34
 2126 0c0f 04000000 		.4byte	.LBE34-.LBB34
 2127 0c13 04       		.byte	0x4
 2128 0c14 99       		.byte	0x99
 2129 0c15 290C0000 		.4byte	0xc29
 2130 0c19 32       		.uleb128 0x32
 2131 0c1a 10000000 		.4byte	.LBB35
 2132 0c1e 04000000 		.4byte	.LBE35-.LBB35
 2133 0c22 30       		.uleb128 0x30
 2134 0c23 360F0000 		.4byte	0xf36
 2135 0c27 00       		.byte	0
 2136 0c28 00       		.byte	0
 2137 0c29 33       		.uleb128 0x33
 2138 0c2a 430F0000 		.4byte	0xf43
 2139 0c2e 14000000 		.4byte	.LBB36
 2140 0c32 02000000 		.4byte	.LBE36-.LBB36
 2141 0c36 04       		.byte	0x4
 2142 0c37 9A       		.byte	0x9a
 2143 0c38 33       		.uleb128 0x33
ARM GAS  /tmp/ccLuO05w.s 			page 66


 2144 0c39 550F0000 		.4byte	0xf55
 2145 0c3d 16000000 		.4byte	.LBB38
 2146 0c41 04000000 		.4byte	.LBE38-.LBB38
 2147 0c45 04       		.byte	0x4
 2148 0c46 9A       		.byte	0x9a
 2149 0c47 00       		.byte	0
 2150 0c48 00       		.byte	0
 2151 0c49 34       		.uleb128 0x34
 2152 0c4a D50E0000 		.4byte	0xed5
 2153 0c4e 32000000 		.4byte	.LBB44
 2154 0c52 0E000000 		.4byte	.LBE44-.LBB44
 2155 0c56 01       		.byte	0x1
 2156 0c57 1A01     		.2byte	0x11a
 2157 0c59 810C0000 		.4byte	0xc81
 2158 0c5d 35       		.uleb128 0x35
 2159 0c5e E10E0000 		.4byte	0xee1
 2160 0c62 33       		.uleb128 0x33
 2161 0c63 550F0000 		.4byte	0xf55
 2162 0c67 38000000 		.4byte	.LBB46
 2163 0c6b 04000000 		.4byte	.LBE46-.LBB46
 2164 0c6f 04       		.byte	0x4
 2165 0c70 A6       		.byte	0xa6
 2166 0c71 33       		.uleb128 0x33
 2167 0c72 4C0F0000 		.4byte	0xf4c
 2168 0c76 3C000000 		.4byte	.LBB48
 2169 0c7a 04000000 		.4byte	.LBE48-.LBB48
 2170 0c7e 04       		.byte	0x4
 2171 0c7f A6       		.byte	0xa6
 2172 0c80 00       		.byte	0
 2173 0c81 36       		.uleb128 0x36
 2174 0c82 32000000 		.4byte	.LVL54
 2175 0c86 0D0A0000 		.4byte	0xa0d
 2176 0c8a 37       		.uleb128 0x37
 2177 0c8b 01       		.uleb128 0x1
 2178 0c8c 51       		.byte	0x51
 2179 0c8d 02       		.uleb128 0x2
 2180 0c8e 71       		.byte	0x71
 2181 0c8f 00       		.sleb128 0
 2182 0c90 00       		.byte	0
 2183 0c91 00       		.byte	0
 2184 0c92 38       		.uleb128 0x38
 2185 0c93 D3020000 		.4byte	.LASF165
 2186 0c97 01       		.byte	0x1
 2187 0c98 F8       		.byte	0xf8
 2188 0c99 91000000 		.4byte	0x91
 2189 0c9d 00000000 		.4byte	.LFB150
 2190 0ca1 08000000 		.4byte	.LFE150-.LFB150
 2191 0ca5 01       		.uleb128 0x1
 2192 0ca6 9C       		.byte	0x9c
 2193 0ca7 BB0C0000 		.4byte	0xcbb
 2194 0cab 39       		.uleb128 0x39
 2195 0cac 6A060000 		.4byte	.LASF147
 2196 0cb0 01       		.byte	0x1
 2197 0cb1 F8       		.byte	0xf8
 2198 0cb2 550A0000 		.4byte	0xa55
 2199 0cb6 F7010000 		.4byte	.LLST0
 2200 0cba 00       		.byte	0
ARM GAS  /tmp/ccLuO05w.s 			page 67


 2201 0cbb 3A       		.uleb128 0x3a
 2202 0cbc 17040000 		.4byte	.LASF167
 2203 0cc0 01       		.byte	0x1
 2204 0cc1 EA       		.byte	0xea
 2205 0cc2 00000000 		.4byte	.LFB149
 2206 0cc6 12000000 		.4byte	.LFE149-.LFB149
 2207 0cca 01       		.uleb128 0x1
 2208 0ccb 9C       		.byte	0x9c
 2209 0ccc 120D0000 		.4byte	0xd12
 2210 0cd0 3B       		.uleb128 0x3b
 2211 0cd1 6A060000 		.4byte	.LASF147
 2212 0cd5 01       		.byte	0x1
 2213 0cd6 EA       		.byte	0xea
 2214 0cd7 550A0000 		.4byte	0xa55
 2215 0cdb 01       		.uleb128 0x1
 2216 0cdc 50       		.byte	0x50
 2217 0cdd 39       		.uleb128 0x39
 2218 0cde 3C030000 		.4byte	.LASF168
 2219 0ce2 01       		.byte	0x1
 2220 0ce3 EA       		.byte	0xea
 2221 0ce4 91000000 		.4byte	0x91
 2222 0ce8 18020000 		.4byte	.LLST16
 2223 0cec 3C       		.uleb128 0x3c
 2224 0ced 84000000 		.4byte	.LASF150
 2225 0cf1 01       		.byte	0x1
 2226 0cf2 EC       		.byte	0xec
 2227 0cf3 91000000 		.4byte	0x91
 2228 0cf7 39020000 		.4byte	.LLST17
 2229 0cfb 3D       		.uleb128 0x3d
 2230 0cfc 12000000 		.4byte	.LVL45
 2231 0d00 5B0A0000 		.4byte	0xa5b
 2232 0d04 37       		.uleb128 0x37
 2233 0d05 01       		.uleb128 0x1
 2234 0d06 50       		.byte	0x50
 2235 0d07 02       		.uleb128 0x2
 2236 0d08 70       		.byte	0x70
 2237 0d09 00       		.sleb128 0
 2238 0d0a 37       		.uleb128 0x37
 2239 0d0b 01       		.uleb128 0x1
 2240 0d0c 51       		.byte	0x51
 2241 0d0d 02       		.uleb128 0x2
 2242 0d0e 71       		.byte	0x71
 2243 0d0f 00       		.sleb128 0
 2244 0d10 00       		.byte	0
 2245 0d11 00       		.byte	0
 2246 0d12 3A       		.uleb128 0x3a
 2247 0d13 F1060000 		.4byte	.LASF169
 2248 0d17 01       		.byte	0x1
 2249 0d18 C5       		.byte	0xc5
 2250 0d19 00000000 		.4byte	.LFB148
 2251 0d1d 0C000000 		.4byte	.LFE148-.LFB148
 2252 0d21 01       		.uleb128 0x1
 2253 0d22 9C       		.byte	0x9c
 2254 0d23 350D0000 		.4byte	0xd35
 2255 0d27 3B       		.uleb128 0x3b
 2256 0d28 6A060000 		.4byte	.LASF147
 2257 0d2c 01       		.byte	0x1
ARM GAS  /tmp/ccLuO05w.s 			page 68


 2258 0d2d C5       		.byte	0xc5
 2259 0d2e 550A0000 		.4byte	0xa55
 2260 0d32 01       		.uleb128 0x1
 2261 0d33 50       		.byte	0x50
 2262 0d34 00       		.byte	0
 2263 0d35 3A       		.uleb128 0x3a
 2264 0d36 11010000 		.4byte	.LASF170
 2265 0d3a 01       		.byte	0x1
 2266 0d3b BB       		.byte	0xbb
 2267 0d3c 00000000 		.4byte	.LFB147
 2268 0d40 0C000000 		.4byte	.LFE147-.LFB147
 2269 0d44 01       		.uleb128 0x1
 2270 0d45 9C       		.byte	0x9c
 2271 0d46 580D0000 		.4byte	0xd58
 2272 0d4a 3B       		.uleb128 0x3b
 2273 0d4b 6A060000 		.4byte	.LASF147
 2274 0d4f 01       		.byte	0x1
 2275 0d50 BB       		.byte	0xbb
 2276 0d51 550A0000 		.4byte	0xa55
 2277 0d55 01       		.uleb128 0x1
 2278 0d56 50       		.byte	0x50
 2279 0d57 00       		.byte	0
 2280 0d58 3A       		.uleb128 0x3a
 2281 0d59 6C070000 		.4byte	.LASF171
 2282 0d5d 01       		.byte	0x1
 2283 0d5e AE       		.byte	0xae
 2284 0d5f 00000000 		.4byte	.LFB146
 2285 0d63 0A000000 		.4byte	.LFE146-.LFB146
 2286 0d67 01       		.uleb128 0x1
 2287 0d68 9C       		.byte	0x9c
 2288 0d69 A00D0000 		.4byte	0xda0
 2289 0d6d 3B       		.uleb128 0x3b
 2290 0d6e 6A060000 		.4byte	.LASF147
 2291 0d72 01       		.byte	0x1
 2292 0d73 AE       		.byte	0xae
 2293 0d74 550A0000 		.4byte	0xa55
 2294 0d78 01       		.uleb128 0x1
 2295 0d79 50       		.byte	0x50
 2296 0d7a 3C       		.uleb128 0x3c
 2297 0d7b 84000000 		.4byte	.LASF150
 2298 0d7f 01       		.byte	0x1
 2299 0d80 B0       		.byte	0xb0
 2300 0d81 91000000 		.4byte	0x91
 2301 0d85 5D020000 		.4byte	.LLST15
 2302 0d89 3D       		.uleb128 0x3d
 2303 0d8a 0A000000 		.4byte	.LVL40
 2304 0d8e 5B0A0000 		.4byte	0xa5b
 2305 0d92 37       		.uleb128 0x37
 2306 0d93 01       		.uleb128 0x1
 2307 0d94 50       		.byte	0x50
 2308 0d95 02       		.uleb128 0x2
 2309 0d96 70       		.byte	0x70
 2310 0d97 00       		.sleb128 0
 2311 0d98 37       		.uleb128 0x37
 2312 0d99 01       		.uleb128 0x1
 2313 0d9a 51       		.byte	0x51
 2314 0d9b 02       		.uleb128 0x2
ARM GAS  /tmp/ccLuO05w.s 			page 69


 2315 0d9c 71       		.byte	0x71
 2316 0d9d 00       		.sleb128 0
 2317 0d9e 00       		.byte	0
 2318 0d9f 00       		.byte	0
 2319 0da0 3A       		.uleb128 0x3a
 2320 0da1 2B020000 		.4byte	.LASF172
 2321 0da5 01       		.byte	0x1
 2322 0da6 A2       		.byte	0xa2
 2323 0da7 00000000 		.4byte	.LFB145
 2324 0dab 0A000000 		.4byte	.LFE145-.LFB145
 2325 0daf 01       		.uleb128 0x1
 2326 0db0 9C       		.byte	0x9c
 2327 0db1 E80D0000 		.4byte	0xde8
 2328 0db5 3B       		.uleb128 0x3b
 2329 0db6 6A060000 		.4byte	.LASF147
 2330 0dba 01       		.byte	0x1
 2331 0dbb A2       		.byte	0xa2
 2332 0dbc 550A0000 		.4byte	0xa55
 2333 0dc0 01       		.uleb128 0x1
 2334 0dc1 50       		.byte	0x50
 2335 0dc2 3C       		.uleb128 0x3c
 2336 0dc3 84000000 		.4byte	.LASF150
 2337 0dc7 01       		.byte	0x1
 2338 0dc8 A4       		.byte	0xa4
 2339 0dc9 91000000 		.4byte	0x91
 2340 0dcd 70020000 		.4byte	.LLST14
 2341 0dd1 3D       		.uleb128 0x3d
 2342 0dd2 0A000000 		.4byte	.LVL36
 2343 0dd6 5B0A0000 		.4byte	0xa5b
 2344 0dda 37       		.uleb128 0x37
 2345 0ddb 01       		.uleb128 0x1
 2346 0ddc 50       		.byte	0x50
 2347 0ddd 02       		.uleb128 0x2
 2348 0dde 70       		.byte	0x70
 2349 0ddf 00       		.sleb128 0
 2350 0de0 37       		.uleb128 0x37
 2351 0de1 01       		.uleb128 0x1
 2352 0de2 51       		.byte	0x51
 2353 0de3 02       		.uleb128 0x2
 2354 0de4 71       		.byte	0x71
 2355 0de5 00       		.sleb128 0
 2356 0de6 00       		.byte	0
 2357 0de7 00       		.byte	0
 2358 0de8 3A       		.uleb128 0x3a
 2359 0de9 E5000000 		.4byte	.LASF173
 2360 0ded 01       		.byte	0x1
 2361 0dee 94       		.byte	0x94
 2362 0def 00000000 		.4byte	.LFB144
 2363 0df3 0A000000 		.4byte	.LFE144-.LFB144
 2364 0df7 01       		.uleb128 0x1
 2365 0df8 9C       		.byte	0x9c
 2366 0df9 300E0000 		.4byte	0xe30
 2367 0dfd 3B       		.uleb128 0x3b
 2368 0dfe 6A060000 		.4byte	.LASF147
 2369 0e02 01       		.byte	0x1
 2370 0e03 94       		.byte	0x94
 2371 0e04 550A0000 		.4byte	0xa55
ARM GAS  /tmp/ccLuO05w.s 			page 70


 2372 0e08 01       		.uleb128 0x1
 2373 0e09 50       		.byte	0x50
 2374 0e0a 3C       		.uleb128 0x3c
 2375 0e0b 84000000 		.4byte	.LASF150
 2376 0e0f 01       		.byte	0x1
 2377 0e10 96       		.byte	0x96
 2378 0e11 91000000 		.4byte	0x91
 2379 0e15 83020000 		.4byte	.LLST13
 2380 0e19 3D       		.uleb128 0x3d
 2381 0e1a 0A000000 		.4byte	.LVL32
 2382 0e1e 5B0A0000 		.4byte	0xa5b
 2383 0e22 37       		.uleb128 0x37
 2384 0e23 01       		.uleb128 0x1
 2385 0e24 50       		.byte	0x50
 2386 0e25 02       		.uleb128 0x2
 2387 0e26 70       		.byte	0x70
 2388 0e27 00       		.sleb128 0
 2389 0e28 37       		.uleb128 0x37
 2390 0e29 01       		.uleb128 0x1
 2391 0e2a 51       		.byte	0x51
 2392 0e2b 02       		.uleb128 0x2
 2393 0e2c 71       		.byte	0x71
 2394 0e2d 00       		.sleb128 0
 2395 0e2e 00       		.byte	0
 2396 0e2f 00       		.byte	0
 2397 0e30 3A       		.uleb128 0x3a
 2398 0e31 0A000000 		.4byte	.LASF174
 2399 0e35 01       		.byte	0x1
 2400 0e36 89       		.byte	0x89
 2401 0e37 00000000 		.4byte	.LFB143
 2402 0e3b 0A000000 		.4byte	.LFE143-.LFB143
 2403 0e3f 01       		.uleb128 0x1
 2404 0e40 9C       		.byte	0x9c
 2405 0e41 780E0000 		.4byte	0xe78
 2406 0e45 3B       		.uleb128 0x3b
 2407 0e46 6A060000 		.4byte	.LASF147
 2408 0e4a 01       		.byte	0x1
 2409 0e4b 89       		.byte	0x89
 2410 0e4c 550A0000 		.4byte	0xa55
 2411 0e50 01       		.uleb128 0x1
 2412 0e51 50       		.byte	0x50
 2413 0e52 3C       		.uleb128 0x3c
 2414 0e53 84000000 		.4byte	.LASF150
 2415 0e57 01       		.byte	0x1
 2416 0e58 8B       		.byte	0x8b
 2417 0e59 91000000 		.4byte	0x91
 2418 0e5d 96020000 		.4byte	.LLST12
 2419 0e61 3D       		.uleb128 0x3d
 2420 0e62 0A000000 		.4byte	.LVL28
 2421 0e66 5B0A0000 		.4byte	0xa5b
 2422 0e6a 37       		.uleb128 0x37
 2423 0e6b 01       		.uleb128 0x1
 2424 0e6c 50       		.byte	0x50
 2425 0e6d 02       		.uleb128 0x2
 2426 0e6e 70       		.byte	0x70
 2427 0e6f 00       		.sleb128 0
 2428 0e70 37       		.uleb128 0x37
ARM GAS  /tmp/ccLuO05w.s 			page 71


 2429 0e71 01       		.uleb128 0x1
 2430 0e72 51       		.byte	0x51
 2431 0e73 02       		.uleb128 0x2
 2432 0e74 71       		.byte	0x71
 2433 0e75 00       		.sleb128 0
 2434 0e76 00       		.byte	0
 2435 0e77 00       		.byte	0
 2436 0e78 38       		.uleb128 0x38
 2437 0e79 92010000 		.4byte	.LASF175
 2438 0e7d 01       		.byte	0x1
 2439 0e7e 77       		.byte	0x77
 2440 0e7f 91000000 		.4byte	0x91
 2441 0e83 00000000 		.4byte	.LFB142
 2442 0e87 16000000 		.4byte	.LFE142-.LFB142
 2443 0e8b 01       		.uleb128 0x1
 2444 0e8c 9C       		.byte	0x9c
 2445 0e8d D50E0000 		.4byte	0xed5
 2446 0e91 39       		.uleb128 0x39
 2447 0e92 6A060000 		.4byte	.LASF147
 2448 0e96 01       		.byte	0x1
 2449 0e97 77       		.byte	0x77
 2450 0e98 550A0000 		.4byte	0xa55
 2451 0e9c A9020000 		.4byte	.LLST9
 2452 0ea0 39       		.uleb128 0x39
 2453 0ea1 AF080000 		.4byte	.LASF176
 2454 0ea5 01       		.byte	0x1
 2455 0ea6 77       		.byte	0x77
 2456 0ea7 91000000 		.4byte	0x91
 2457 0eab CA020000 		.4byte	.LLST10
 2458 0eaf 39       		.uleb128 0x39
 2459 0eb0 3C030000 		.4byte	.LASF168
 2460 0eb4 01       		.byte	0x1
 2461 0eb5 77       		.byte	0x77
 2462 0eb6 91000000 		.4byte	0x91
 2463 0eba EB020000 		.4byte	.LLST11
 2464 0ebe 36       		.uleb128 0x36
 2465 0ebf 12000000 		.4byte	.LVL23
 2466 0ec3 5B0A0000 		.4byte	0xa5b
 2467 0ec7 37       		.uleb128 0x37
 2468 0ec8 01       		.uleb128 0x1
 2469 0ec9 50       		.byte	0x50
 2470 0eca 02       		.uleb128 0x2
 2471 0ecb 70       		.byte	0x70
 2472 0ecc 00       		.sleb128 0
 2473 0ecd 37       		.uleb128 0x37
 2474 0ece 01       		.uleb128 0x1
 2475 0ecf 51       		.byte	0x51
 2476 0ed0 02       		.uleb128 0x2
 2477 0ed1 71       		.byte	0x71
 2478 0ed2 00       		.sleb128 0
 2479 0ed3 00       		.byte	0
 2480 0ed4 00       		.byte	0
 2481 0ed5 3E       		.uleb128 0x3e
 2482 0ed6 82010000 		.4byte	.LASF188
 2483 0eda 04       		.byte	0x4
 2484 0edb A3       		.byte	0xa3
 2485 0edc 03       		.byte	0x3
ARM GAS  /tmp/ccLuO05w.s 			page 72


 2486 0edd ED0E0000 		.4byte	0xeed
 2487 0ee1 3F       		.uleb128 0x3f
 2488 0ee2 DD070000 		.4byte	.LASF177
 2489 0ee6 04       		.byte	0x4
 2490 0ee7 A3       		.byte	0xa3
 2491 0ee8 83090000 		.4byte	0x983
 2492 0eec 00       		.byte	0
 2493 0eed 40       		.uleb128 0x40
 2494 0eee 2D000000 		.4byte	.LASF178
 2495 0ef2 04       		.byte	0x4
 2496 0ef3 9E       		.byte	0x9e
 2497 0ef4 99090000 		.4byte	0x999
 2498 0ef8 03       		.byte	0x3
 2499 0ef9 090F0000 		.4byte	0xf09
 2500 0efd 3F       		.uleb128 0x3f
 2501 0efe DD070000 		.4byte	.LASF177
 2502 0f02 04       		.byte	0x4
 2503 0f03 9E       		.byte	0x9e
 2504 0f04 83090000 		.4byte	0x983
 2505 0f08 00       		.byte	0
 2506 0f09 40       		.uleb128 0x40
 2507 0f0a C8080000 		.4byte	.LASF179
 2508 0f0e 04       		.byte	0x4
 2509 0f0f 97       		.byte	0x97
 2510 0f10 83090000 		.4byte	0x983
 2511 0f14 03       		.byte	0x3
 2512 0f15 250F0000 		.4byte	0xf25
 2513 0f19 41       		.uleb128 0x41
 2514 0f1a DD070000 		.4byte	.LASF177
 2515 0f1e 04       		.byte	0x4
 2516 0f1f 99       		.byte	0x99
 2517 0f20 83090000 		.4byte	0x983
 2518 0f24 00       		.byte	0
 2519 0f25 42       		.uleb128 0x42
 2520 0f26 45020000 		.4byte	.LASF180
 2521 0f2a 02       		.byte	0x2
 2522 0f2b D201     		.2byte	0x1d2
 2523 0f2d 91000000 		.4byte	0x91
 2524 0f31 03       		.byte	0x3
 2525 0f32 430F0000 		.4byte	0xf43
 2526 0f36 2D       		.uleb128 0x2d
 2527 0f37 A8080000 		.4byte	.LASF164
 2528 0f3b 02       		.byte	0x2
 2529 0f3c D401     		.2byte	0x1d4
 2530 0f3e 91000000 		.4byte	0x91
 2531 0f42 00       		.byte	0
 2532 0f43 43       		.uleb128 0x43
 2533 0f44 48050000 		.4byte	.LASF181
 2534 0f48 02       		.byte	0x2
 2535 0f49 4801     		.2byte	0x148
 2536 0f4b 03       		.byte	0x3
 2537 0f4c 43       		.uleb128 0x43
 2538 0f4d 09050000 		.4byte	.LASF182
 2539 0f51 02       		.byte	0x2
 2540 0f52 3D01     		.2byte	0x13d
 2541 0f54 03       		.byte	0x3
 2542 0f55 43       		.uleb128 0x43
ARM GAS  /tmp/ccLuO05w.s 			page 73


 2543 0f56 A6050000 		.4byte	.LASF183
 2544 0f5a 03       		.byte	0x3
 2545 0f5b C601     		.2byte	0x1c6
 2546 0f5d 03       		.byte	0x3
 2547 0f5e 00       		.byte	0
 2548              		.section	.debug_abbrev,"",%progbits
 2549              	.Ldebug_abbrev0:
 2550 0000 01       		.uleb128 0x1
 2551 0001 11       		.uleb128 0x11
 2552 0002 01       		.byte	0x1
 2553 0003 25       		.uleb128 0x25
 2554 0004 0E       		.uleb128 0xe
 2555 0005 13       		.uleb128 0x13
 2556 0006 0B       		.uleb128 0xb
 2557 0007 03       		.uleb128 0x3
 2558 0008 0E       		.uleb128 0xe
 2559 0009 1B       		.uleb128 0x1b
 2560 000a 0E       		.uleb128 0xe
 2561 000b 55       		.uleb128 0x55
 2562 000c 17       		.uleb128 0x17
 2563 000d 11       		.uleb128 0x11
 2564 000e 01       		.uleb128 0x1
 2565 000f 10       		.uleb128 0x10
 2566 0010 17       		.uleb128 0x17
 2567 0011 00       		.byte	0
 2568 0012 00       		.byte	0
 2569 0013 02       		.uleb128 0x2
 2570 0014 24       		.uleb128 0x24
 2571 0015 00       		.byte	0
 2572 0016 0B       		.uleb128 0xb
 2573 0017 0B       		.uleb128 0xb
 2574 0018 3E       		.uleb128 0x3e
 2575 0019 0B       		.uleb128 0xb
 2576 001a 03       		.uleb128 0x3
 2577 001b 08       		.uleb128 0x8
 2578 001c 00       		.byte	0
 2579 001d 00       		.byte	0
 2580 001e 03       		.uleb128 0x3
 2581 001f 24       		.uleb128 0x24
 2582 0020 00       		.byte	0
 2583 0021 0B       		.uleb128 0xb
 2584 0022 0B       		.uleb128 0xb
 2585 0023 3E       		.uleb128 0x3e
 2586 0024 0B       		.uleb128 0xb
 2587 0025 03       		.uleb128 0x3
 2588 0026 0E       		.uleb128 0xe
 2589 0027 00       		.byte	0
 2590 0028 00       		.byte	0
 2591 0029 04       		.uleb128 0x4
 2592 002a 16       		.uleb128 0x16
 2593 002b 00       		.byte	0
 2594 002c 03       		.uleb128 0x3
 2595 002d 0E       		.uleb128 0xe
 2596 002e 3A       		.uleb128 0x3a
 2597 002f 0B       		.uleb128 0xb
 2598 0030 3B       		.uleb128 0x3b
 2599 0031 0B       		.uleb128 0xb
ARM GAS  /tmp/ccLuO05w.s 			page 74


 2600 0032 49       		.uleb128 0x49
 2601 0033 13       		.uleb128 0x13
 2602 0034 00       		.byte	0
 2603 0035 00       		.byte	0
 2604 0036 05       		.uleb128 0x5
 2605 0037 35       		.uleb128 0x35
 2606 0038 00       		.byte	0
 2607 0039 49       		.uleb128 0x49
 2608 003a 13       		.uleb128 0x13
 2609 003b 00       		.byte	0
 2610 003c 00       		.byte	0
 2611 003d 06       		.uleb128 0x6
 2612 003e 26       		.uleb128 0x26
 2613 003f 00       		.byte	0
 2614 0040 49       		.uleb128 0x49
 2615 0041 13       		.uleb128 0x13
 2616 0042 00       		.byte	0
 2617 0043 00       		.byte	0
 2618 0044 07       		.uleb128 0x7
 2619 0045 0F       		.uleb128 0xf
 2620 0046 00       		.byte	0
 2621 0047 0B       		.uleb128 0xb
 2622 0048 0B       		.uleb128 0xb
 2623 0049 00       		.byte	0
 2624 004a 00       		.byte	0
 2625 004b 08       		.uleb128 0x8
 2626 004c 34       		.uleb128 0x34
 2627 004d 00       		.byte	0
 2628 004e 03       		.uleb128 0x3
 2629 004f 0E       		.uleb128 0xe
 2630 0050 3A       		.uleb128 0x3a
 2631 0051 0B       		.uleb128 0xb
 2632 0052 3B       		.uleb128 0x3b
 2633 0053 05       		.uleb128 0x5
 2634 0054 49       		.uleb128 0x49
 2635 0055 13       		.uleb128 0x13
 2636 0056 3F       		.uleb128 0x3f
 2637 0057 19       		.uleb128 0x19
 2638 0058 3C       		.uleb128 0x3c
 2639 0059 19       		.uleb128 0x19
 2640 005a 00       		.byte	0
 2641 005b 00       		.byte	0
 2642 005c 09       		.uleb128 0x9
 2643 005d 34       		.uleb128 0x34
 2644 005e 00       		.byte	0
 2645 005f 03       		.uleb128 0x3
 2646 0060 0E       		.uleb128 0xe
 2647 0061 3A       		.uleb128 0x3a
 2648 0062 0B       		.uleb128 0xb
 2649 0063 3B       		.uleb128 0x3b
 2650 0064 0B       		.uleb128 0xb
 2651 0065 49       		.uleb128 0x49
 2652 0066 13       		.uleb128 0x13
 2653 0067 3F       		.uleb128 0x3f
 2654 0068 19       		.uleb128 0x19
 2655 0069 3C       		.uleb128 0x3c
 2656 006a 19       		.uleb128 0x19
ARM GAS  /tmp/ccLuO05w.s 			page 75


 2657 006b 00       		.byte	0
 2658 006c 00       		.byte	0
 2659 006d 0A       		.uleb128 0xa
 2660 006e 01       		.uleb128 0x1
 2661 006f 01       		.byte	0x1
 2662 0070 49       		.uleb128 0x49
 2663 0071 13       		.uleb128 0x13
 2664 0072 01       		.uleb128 0x1
 2665 0073 13       		.uleb128 0x13
 2666 0074 00       		.byte	0
 2667 0075 00       		.byte	0
 2668 0076 0B       		.uleb128 0xb
 2669 0077 21       		.uleb128 0x21
 2670 0078 00       		.byte	0
 2671 0079 49       		.uleb128 0x49
 2672 007a 13       		.uleb128 0x13
 2673 007b 2F       		.uleb128 0x2f
 2674 007c 0B       		.uleb128 0xb
 2675 007d 00       		.byte	0
 2676 007e 00       		.byte	0
 2677 007f 0C       		.uleb128 0xc
 2678 0080 13       		.uleb128 0x13
 2679 0081 01       		.byte	0x1
 2680 0082 0B       		.uleb128 0xb
 2681 0083 0B       		.uleb128 0xb
 2682 0084 3A       		.uleb128 0x3a
 2683 0085 0B       		.uleb128 0xb
 2684 0086 3B       		.uleb128 0x3b
 2685 0087 0B       		.uleb128 0xb
 2686 0088 01       		.uleb128 0x1
 2687 0089 13       		.uleb128 0x13
 2688 008a 00       		.byte	0
 2689 008b 00       		.byte	0
 2690 008c 0D       		.uleb128 0xd
 2691 008d 0D       		.uleb128 0xd
 2692 008e 00       		.byte	0
 2693 008f 03       		.uleb128 0x3
 2694 0090 0E       		.uleb128 0xe
 2695 0091 3A       		.uleb128 0x3a
 2696 0092 0B       		.uleb128 0xb
 2697 0093 3B       		.uleb128 0x3b
 2698 0094 0B       		.uleb128 0xb
 2699 0095 49       		.uleb128 0x49
 2700 0096 13       		.uleb128 0x13
 2701 0097 38       		.uleb128 0x38
 2702 0098 0B       		.uleb128 0xb
 2703 0099 00       		.byte	0
 2704 009a 00       		.byte	0
 2705 009b 0E       		.uleb128 0xe
 2706 009c 16       		.uleb128 0x16
 2707 009d 00       		.byte	0
 2708 009e 03       		.uleb128 0x3
 2709 009f 08       		.uleb128 0x8
 2710 00a0 3A       		.uleb128 0x3a
 2711 00a1 0B       		.uleb128 0xb
 2712 00a2 3B       		.uleb128 0x3b
 2713 00a3 0B       		.uleb128 0xb
ARM GAS  /tmp/ccLuO05w.s 			page 76


 2714 00a4 49       		.uleb128 0x49
 2715 00a5 13       		.uleb128 0x13
 2716 00a6 00       		.byte	0
 2717 00a7 00       		.byte	0
 2718 00a8 0F       		.uleb128 0xf
 2719 00a9 16       		.uleb128 0x16
 2720 00aa 00       		.byte	0
 2721 00ab 03       		.uleb128 0x3
 2722 00ac 0E       		.uleb128 0xe
 2723 00ad 3A       		.uleb128 0x3a
 2724 00ae 0B       		.uleb128 0xb
 2725 00af 3B       		.uleb128 0x3b
 2726 00b0 05       		.uleb128 0x5
 2727 00b1 49       		.uleb128 0x49
 2728 00b2 13       		.uleb128 0x13
 2729 00b3 00       		.byte	0
 2730 00b4 00       		.byte	0
 2731 00b5 10       		.uleb128 0x10
 2732 00b6 17       		.uleb128 0x17
 2733 00b7 01       		.byte	0x1
 2734 00b8 0B       		.uleb128 0xb
 2735 00b9 0B       		.uleb128 0xb
 2736 00ba 3A       		.uleb128 0x3a
 2737 00bb 0B       		.uleb128 0xb
 2738 00bc 3B       		.uleb128 0x3b
 2739 00bd 0B       		.uleb128 0xb
 2740 00be 01       		.uleb128 0x1
 2741 00bf 13       		.uleb128 0x13
 2742 00c0 00       		.byte	0
 2743 00c1 00       		.byte	0
 2744 00c2 11       		.uleb128 0x11
 2745 00c3 0D       		.uleb128 0xd
 2746 00c4 00       		.byte	0
 2747 00c5 03       		.uleb128 0x3
 2748 00c6 0E       		.uleb128 0xe
 2749 00c7 3A       		.uleb128 0x3a
 2750 00c8 0B       		.uleb128 0xb
 2751 00c9 3B       		.uleb128 0x3b
 2752 00ca 0B       		.uleb128 0xb
 2753 00cb 49       		.uleb128 0x49
 2754 00cc 13       		.uleb128 0x13
 2755 00cd 00       		.byte	0
 2756 00ce 00       		.byte	0
 2757 00cf 12       		.uleb128 0x12
 2758 00d0 13       		.uleb128 0x13
 2759 00d1 01       		.byte	0x1
 2760 00d2 03       		.uleb128 0x3
 2761 00d3 0E       		.uleb128 0xe
 2762 00d4 0B       		.uleb128 0xb
 2763 00d5 0B       		.uleb128 0xb
 2764 00d6 3A       		.uleb128 0x3a
 2765 00d7 0B       		.uleb128 0xb
 2766 00d8 3B       		.uleb128 0x3b
 2767 00d9 0B       		.uleb128 0xb
 2768 00da 01       		.uleb128 0x1
 2769 00db 13       		.uleb128 0x13
 2770 00dc 00       		.byte	0
ARM GAS  /tmp/ccLuO05w.s 			page 77


 2771 00dd 00       		.byte	0
 2772 00de 13       		.uleb128 0x13
 2773 00df 0D       		.uleb128 0xd
 2774 00e0 00       		.byte	0
 2775 00e1 03       		.uleb128 0x3
 2776 00e2 08       		.uleb128 0x8
 2777 00e3 3A       		.uleb128 0x3a
 2778 00e4 0B       		.uleb128 0xb
 2779 00e5 3B       		.uleb128 0x3b
 2780 00e6 0B       		.uleb128 0xb
 2781 00e7 49       		.uleb128 0x49
 2782 00e8 13       		.uleb128 0x13
 2783 00e9 38       		.uleb128 0x38
 2784 00ea 0B       		.uleb128 0xb
 2785 00eb 00       		.byte	0
 2786 00ec 00       		.byte	0
 2787 00ed 14       		.uleb128 0x14
 2788 00ee 0F       		.uleb128 0xf
 2789 00ef 00       		.byte	0
 2790 00f0 0B       		.uleb128 0xb
 2791 00f1 0B       		.uleb128 0xb
 2792 00f2 49       		.uleb128 0x49
 2793 00f3 13       		.uleb128 0x13
 2794 00f4 00       		.byte	0
 2795 00f5 00       		.byte	0
 2796 00f6 15       		.uleb128 0x15
 2797 00f7 13       		.uleb128 0x13
 2798 00f8 01       		.byte	0x1
 2799 00f9 03       		.uleb128 0x3
 2800 00fa 0E       		.uleb128 0xe
 2801 00fb 0B       		.uleb128 0xb
 2802 00fc 05       		.uleb128 0x5
 2803 00fd 3A       		.uleb128 0x3a
 2804 00fe 0B       		.uleb128 0xb
 2805 00ff 3B       		.uleb128 0x3b
 2806 0100 0B       		.uleb128 0xb
 2807 0101 01       		.uleb128 0x1
 2808 0102 13       		.uleb128 0x13
 2809 0103 00       		.byte	0
 2810 0104 00       		.byte	0
 2811 0105 16       		.uleb128 0x16
 2812 0106 0D       		.uleb128 0xd
 2813 0107 00       		.byte	0
 2814 0108 03       		.uleb128 0x3
 2815 0109 0E       		.uleb128 0xe
 2816 010a 3A       		.uleb128 0x3a
 2817 010b 0B       		.uleb128 0xb
 2818 010c 3B       		.uleb128 0x3b
 2819 010d 0B       		.uleb128 0xb
 2820 010e 49       		.uleb128 0x49
 2821 010f 13       		.uleb128 0x13
 2822 0110 38       		.uleb128 0x38
 2823 0111 05       		.uleb128 0x5
 2824 0112 00       		.byte	0
 2825 0113 00       		.byte	0
 2826 0114 17       		.uleb128 0x17
 2827 0115 15       		.uleb128 0x15
ARM GAS  /tmp/ccLuO05w.s 			page 78


 2828 0116 00       		.byte	0
 2829 0117 27       		.uleb128 0x27
 2830 0118 19       		.uleb128 0x19
 2831 0119 00       		.byte	0
 2832 011a 00       		.byte	0
 2833 011b 18       		.uleb128 0x18
 2834 011c 15       		.uleb128 0x15
 2835 011d 01       		.byte	0x1
 2836 011e 27       		.uleb128 0x27
 2837 011f 19       		.uleb128 0x19
 2838 0120 49       		.uleb128 0x49
 2839 0121 13       		.uleb128 0x13
 2840 0122 01       		.uleb128 0x1
 2841 0123 13       		.uleb128 0x13
 2842 0124 00       		.byte	0
 2843 0125 00       		.byte	0
 2844 0126 19       		.uleb128 0x19
 2845 0127 05       		.uleb128 0x5
 2846 0128 00       		.byte	0
 2847 0129 49       		.uleb128 0x49
 2848 012a 13       		.uleb128 0x13
 2849 012b 00       		.byte	0
 2850 012c 00       		.byte	0
 2851 012d 1A       		.uleb128 0x1a
 2852 012e 13       		.uleb128 0x13
 2853 012f 01       		.byte	0x1
 2854 0130 03       		.uleb128 0x3
 2855 0131 0E       		.uleb128 0xe
 2856 0132 0B       		.uleb128 0xb
 2857 0133 05       		.uleb128 0x5
 2858 0134 3A       		.uleb128 0x3a
 2859 0135 0B       		.uleb128 0xb
 2860 0136 3B       		.uleb128 0x3b
 2861 0137 05       		.uleb128 0x5
 2862 0138 01       		.uleb128 0x1
 2863 0139 13       		.uleb128 0x13
 2864 013a 00       		.byte	0
 2865 013b 00       		.byte	0
 2866 013c 1B       		.uleb128 0x1b
 2867 013d 0D       		.uleb128 0xd
 2868 013e 00       		.byte	0
 2869 013f 03       		.uleb128 0x3
 2870 0140 0E       		.uleb128 0xe
 2871 0141 3A       		.uleb128 0x3a
 2872 0142 0B       		.uleb128 0xb
 2873 0143 3B       		.uleb128 0x3b
 2874 0144 05       		.uleb128 0x5
 2875 0145 49       		.uleb128 0x49
 2876 0146 13       		.uleb128 0x13
 2877 0147 38       		.uleb128 0x38
 2878 0148 0B       		.uleb128 0xb
 2879 0149 00       		.byte	0
 2880 014a 00       		.byte	0
 2881 014b 1C       		.uleb128 0x1c
 2882 014c 0D       		.uleb128 0xd
 2883 014d 00       		.byte	0
 2884 014e 03       		.uleb128 0x3
ARM GAS  /tmp/ccLuO05w.s 			page 79


 2885 014f 0E       		.uleb128 0xe
 2886 0150 3A       		.uleb128 0x3a
 2887 0151 0B       		.uleb128 0xb
 2888 0152 3B       		.uleb128 0x3b
 2889 0153 05       		.uleb128 0x5
 2890 0154 49       		.uleb128 0x49
 2891 0155 13       		.uleb128 0x13
 2892 0156 38       		.uleb128 0x38
 2893 0157 05       		.uleb128 0x5
 2894 0158 00       		.byte	0
 2895 0159 00       		.byte	0
 2896 015a 1D       		.uleb128 0x1d
 2897 015b 13       		.uleb128 0x13
 2898 015c 01       		.byte	0x1
 2899 015d 03       		.uleb128 0x3
 2900 015e 0E       		.uleb128 0xe
 2901 015f 0B       		.uleb128 0xb
 2902 0160 0B       		.uleb128 0xb
 2903 0161 3A       		.uleb128 0x3a
 2904 0162 0B       		.uleb128 0xb
 2905 0163 3B       		.uleb128 0x3b
 2906 0164 05       		.uleb128 0x5
 2907 0165 01       		.uleb128 0x1
 2908 0166 13       		.uleb128 0x13
 2909 0167 00       		.byte	0
 2910 0168 00       		.byte	0
 2911 0169 1E       		.uleb128 0x1e
 2912 016a 13       		.uleb128 0x13
 2913 016b 01       		.byte	0x1
 2914 016c 0B       		.uleb128 0xb
 2915 016d 0B       		.uleb128 0xb
 2916 016e 3A       		.uleb128 0x3a
 2917 016f 0B       		.uleb128 0xb
 2918 0170 3B       		.uleb128 0x3b
 2919 0171 05       		.uleb128 0x5
 2920 0172 01       		.uleb128 0x1
 2921 0173 13       		.uleb128 0x13
 2922 0174 00       		.byte	0
 2923 0175 00       		.byte	0
 2924 0176 1F       		.uleb128 0x1f
 2925 0177 17       		.uleb128 0x17
 2926 0178 01       		.byte	0x1
 2927 0179 0B       		.uleb128 0xb
 2928 017a 0B       		.uleb128 0xb
 2929 017b 3A       		.uleb128 0x3a
 2930 017c 0B       		.uleb128 0xb
 2931 017d 3B       		.uleb128 0x3b
 2932 017e 05       		.uleb128 0x5
 2933 017f 01       		.uleb128 0x1
 2934 0180 13       		.uleb128 0x13
 2935 0181 00       		.byte	0
 2936 0182 00       		.byte	0
 2937 0183 20       		.uleb128 0x20
 2938 0184 0D       		.uleb128 0xd
 2939 0185 00       		.byte	0
 2940 0186 03       		.uleb128 0x3
 2941 0187 0E       		.uleb128 0xe
ARM GAS  /tmp/ccLuO05w.s 			page 80


 2942 0188 3A       		.uleb128 0x3a
 2943 0189 0B       		.uleb128 0xb
 2944 018a 3B       		.uleb128 0x3b
 2945 018b 05       		.uleb128 0x5
 2946 018c 49       		.uleb128 0x49
 2947 018d 13       		.uleb128 0x13
 2948 018e 00       		.byte	0
 2949 018f 00       		.byte	0
 2950 0190 21       		.uleb128 0x21
 2951 0191 15       		.uleb128 0x15
 2952 0192 01       		.byte	0x1
 2953 0193 27       		.uleb128 0x27
 2954 0194 19       		.uleb128 0x19
 2955 0195 01       		.uleb128 0x1
 2956 0196 13       		.uleb128 0x13
 2957 0197 00       		.byte	0
 2958 0198 00       		.byte	0
 2959 0199 22       		.uleb128 0x22
 2960 019a 34       		.uleb128 0x34
 2961 019b 00       		.byte	0
 2962 019c 03       		.uleb128 0x3
 2963 019d 0E       		.uleb128 0xe
 2964 019e 3A       		.uleb128 0x3a
 2965 019f 0B       		.uleb128 0xb
 2966 01a0 3B       		.uleb128 0x3b
 2967 01a1 0B       		.uleb128 0xb
 2968 01a2 49       		.uleb128 0x49
 2969 01a3 13       		.uleb128 0x13
 2970 01a4 02       		.uleb128 0x2
 2971 01a5 18       		.uleb128 0x18
 2972 01a6 00       		.byte	0
 2973 01a7 00       		.byte	0
 2974 01a8 23       		.uleb128 0x23
 2975 01a9 04       		.uleb128 0x4
 2976 01aa 01       		.byte	0x1
 2977 01ab 03       		.uleb128 0x3
 2978 01ac 0E       		.uleb128 0xe
 2979 01ad 0B       		.uleb128 0xb
 2980 01ae 0B       		.uleb128 0xb
 2981 01af 49       		.uleb128 0x49
 2982 01b0 13       		.uleb128 0x13
 2983 01b1 3A       		.uleb128 0x3a
 2984 01b2 0B       		.uleb128 0xb
 2985 01b3 3B       		.uleb128 0x3b
 2986 01b4 0B       		.uleb128 0xb
 2987 01b5 01       		.uleb128 0x1
 2988 01b6 13       		.uleb128 0x13
 2989 01b7 00       		.byte	0
 2990 01b8 00       		.byte	0
 2991 01b9 24       		.uleb128 0x24
 2992 01ba 28       		.uleb128 0x28
 2993 01bb 00       		.byte	0
 2994 01bc 03       		.uleb128 0x3
 2995 01bd 0E       		.uleb128 0xe
 2996 01be 1C       		.uleb128 0x1c
 2997 01bf 0B       		.uleb128 0xb
 2998 01c0 00       		.byte	0
ARM GAS  /tmp/ccLuO05w.s 			page 81


 2999 01c1 00       		.byte	0
 3000 01c2 25       		.uleb128 0x25
 3001 01c3 28       		.uleb128 0x28
 3002 01c4 00       		.byte	0
 3003 01c5 03       		.uleb128 0x3
 3004 01c6 0E       		.uleb128 0xe
 3005 01c7 1C       		.uleb128 0x1c
 3006 01c8 06       		.uleb128 0x6
 3007 01c9 00       		.byte	0
 3008 01ca 00       		.byte	0
 3009 01cb 26       		.uleb128 0x26
 3010 01cc 2E       		.uleb128 0x2e
 3011 01cd 01       		.byte	0x1
 3012 01ce 3F       		.uleb128 0x3f
 3013 01cf 19       		.uleb128 0x19
 3014 01d0 03       		.uleb128 0x3
 3015 01d1 0E       		.uleb128 0xe
 3016 01d2 3A       		.uleb128 0x3a
 3017 01d3 0B       		.uleb128 0xb
 3018 01d4 3B       		.uleb128 0x3b
 3019 01d5 05       		.uleb128 0x5
 3020 01d6 27       		.uleb128 0x27
 3021 01d7 19       		.uleb128 0x19
 3022 01d8 49       		.uleb128 0x49
 3023 01d9 13       		.uleb128 0x13
 3024 01da 11       		.uleb128 0x11
 3025 01db 01       		.uleb128 0x1
 3026 01dc 12       		.uleb128 0x12
 3027 01dd 06       		.uleb128 0x6
 3028 01de 40       		.uleb128 0x40
 3029 01df 18       		.uleb128 0x18
 3030 01e0 9742     		.uleb128 0x2117
 3031 01e2 19       		.uleb128 0x19
 3032 01e3 01       		.uleb128 0x1
 3033 01e4 13       		.uleb128 0x13
 3034 01e5 00       		.byte	0
 3035 01e6 00       		.byte	0
 3036 01e7 27       		.uleb128 0x27
 3037 01e8 05       		.uleb128 0x5
 3038 01e9 00       		.byte	0
 3039 01ea 03       		.uleb128 0x3
 3040 01eb 0E       		.uleb128 0xe
 3041 01ec 3A       		.uleb128 0x3a
 3042 01ed 0B       		.uleb128 0xb
 3043 01ee 3B       		.uleb128 0x3b
 3044 01ef 05       		.uleb128 0x5
 3045 01f0 49       		.uleb128 0x49
 3046 01f1 13       		.uleb128 0x13
 3047 01f2 02       		.uleb128 0x2
 3048 01f3 17       		.uleb128 0x17
 3049 01f4 00       		.byte	0
 3050 01f5 00       		.byte	0
 3051 01f6 28       		.uleb128 0x28
 3052 01f7 05       		.uleb128 0x5
 3053 01f8 00       		.byte	0
 3054 01f9 03       		.uleb128 0x3
 3055 01fa 0E       		.uleb128 0xe
ARM GAS  /tmp/ccLuO05w.s 			page 82


 3056 01fb 3A       		.uleb128 0x3a
 3057 01fc 0B       		.uleb128 0xb
 3058 01fd 3B       		.uleb128 0x3b
 3059 01fe 05       		.uleb128 0x5
 3060 01ff 49       		.uleb128 0x49
 3061 0200 13       		.uleb128 0x13
 3062 0201 02       		.uleb128 0x2
 3063 0202 18       		.uleb128 0x18
 3064 0203 00       		.byte	0
 3065 0204 00       		.byte	0
 3066 0205 29       		.uleb128 0x29
 3067 0206 34       		.uleb128 0x34
 3068 0207 00       		.byte	0
 3069 0208 03       		.uleb128 0x3
 3070 0209 0E       		.uleb128 0xe
 3071 020a 3A       		.uleb128 0x3a
 3072 020b 0B       		.uleb128 0xb
 3073 020c 3B       		.uleb128 0x3b
 3074 020d 05       		.uleb128 0x5
 3075 020e 49       		.uleb128 0x49
 3076 020f 13       		.uleb128 0x13
 3077 0210 02       		.uleb128 0x2
 3078 0211 18       		.uleb128 0x18
 3079 0212 00       		.byte	0
 3080 0213 00       		.byte	0
 3081 0214 2A       		.uleb128 0x2a
 3082 0215 2E       		.uleb128 0x2e
 3083 0216 01       		.byte	0x1
 3084 0217 3F       		.uleb128 0x3f
 3085 0218 19       		.uleb128 0x19
 3086 0219 03       		.uleb128 0x3
 3087 021a 0E       		.uleb128 0xe
 3088 021b 3A       		.uleb128 0x3a
 3089 021c 0B       		.uleb128 0xb
 3090 021d 3B       		.uleb128 0x3b
 3091 021e 05       		.uleb128 0x5
 3092 021f 27       		.uleb128 0x27
 3093 0220 19       		.uleb128 0x19
 3094 0221 11       		.uleb128 0x11
 3095 0222 01       		.uleb128 0x1
 3096 0223 12       		.uleb128 0x12
 3097 0224 06       		.uleb128 0x6
 3098 0225 40       		.uleb128 0x40
 3099 0226 18       		.uleb128 0x18
 3100 0227 9742     		.uleb128 0x2117
 3101 0229 19       		.uleb128 0x19
 3102 022a 01       		.uleb128 0x1
 3103 022b 13       		.uleb128 0x13
 3104 022c 00       		.byte	0
 3105 022d 00       		.byte	0
 3106 022e 2B       		.uleb128 0x2b
 3107 022f 34       		.uleb128 0x34
 3108 0230 00       		.byte	0
 3109 0231 03       		.uleb128 0x3
 3110 0232 0E       		.uleb128 0xe
 3111 0233 3A       		.uleb128 0x3a
 3112 0234 0B       		.uleb128 0xb
ARM GAS  /tmp/ccLuO05w.s 			page 83


 3113 0235 3B       		.uleb128 0x3b
 3114 0236 05       		.uleb128 0x5
 3115 0237 49       		.uleb128 0x49
 3116 0238 13       		.uleb128 0x13
 3117 0239 02       		.uleb128 0x2
 3118 023a 17       		.uleb128 0x17
 3119 023b 00       		.byte	0
 3120 023c 00       		.byte	0
 3121 023d 2C       		.uleb128 0x2c
 3122 023e 34       		.uleb128 0x34
 3123 023f 00       		.byte	0
 3124 0240 03       		.uleb128 0x3
 3125 0241 0E       		.uleb128 0xe
 3126 0242 3A       		.uleb128 0x3a
 3127 0243 0B       		.uleb128 0xb
 3128 0244 3B       		.uleb128 0x3b
 3129 0245 05       		.uleb128 0x5
 3130 0246 49       		.uleb128 0x49
 3131 0247 13       		.uleb128 0x13
 3132 0248 1C       		.uleb128 0x1c
 3133 0249 06       		.uleb128 0x6
 3134 024a 00       		.byte	0
 3135 024b 00       		.byte	0
 3136 024c 2D       		.uleb128 0x2d
 3137 024d 34       		.uleb128 0x34
 3138 024e 00       		.byte	0
 3139 024f 03       		.uleb128 0x3
 3140 0250 0E       		.uleb128 0xe
 3141 0251 3A       		.uleb128 0x3a
 3142 0252 0B       		.uleb128 0xb
 3143 0253 3B       		.uleb128 0x3b
 3144 0254 05       		.uleb128 0x5
 3145 0255 49       		.uleb128 0x49
 3146 0256 13       		.uleb128 0x13
 3147 0257 00       		.byte	0
 3148 0258 00       		.byte	0
 3149 0259 2E       		.uleb128 0x2e
 3150 025a 1D       		.uleb128 0x1d
 3151 025b 01       		.byte	0x1
 3152 025c 31       		.uleb128 0x31
 3153 025d 13       		.uleb128 0x13
 3154 025e 52       		.uleb128 0x52
 3155 025f 01       		.uleb128 0x1
 3156 0260 55       		.uleb128 0x55
 3157 0261 17       		.uleb128 0x17
 3158 0262 58       		.uleb128 0x58
 3159 0263 0B       		.uleb128 0xb
 3160 0264 59       		.uleb128 0x59
 3161 0265 05       		.uleb128 0x5
 3162 0266 01       		.uleb128 0x1
 3163 0267 13       		.uleb128 0x13
 3164 0268 00       		.byte	0
 3165 0269 00       		.byte	0
 3166 026a 2F       		.uleb128 0x2f
 3167 026b 0B       		.uleb128 0xb
 3168 026c 01       		.byte	0x1
 3169 026d 55       		.uleb128 0x55
ARM GAS  /tmp/ccLuO05w.s 			page 84


 3170 026e 17       		.uleb128 0x17
 3171 026f 00       		.byte	0
 3172 0270 00       		.byte	0
 3173 0271 30       		.uleb128 0x30
 3174 0272 34       		.uleb128 0x34
 3175 0273 00       		.byte	0
 3176 0274 31       		.uleb128 0x31
 3177 0275 13       		.uleb128 0x13
 3178 0276 00       		.byte	0
 3179 0277 00       		.byte	0
 3180 0278 31       		.uleb128 0x31
 3181 0279 1D       		.uleb128 0x1d
 3182 027a 01       		.byte	0x1
 3183 027b 31       		.uleb128 0x31
 3184 027c 13       		.uleb128 0x13
 3185 027d 11       		.uleb128 0x11
 3186 027e 01       		.uleb128 0x1
 3187 027f 12       		.uleb128 0x12
 3188 0280 06       		.uleb128 0x6
 3189 0281 58       		.uleb128 0x58
 3190 0282 0B       		.uleb128 0xb
 3191 0283 59       		.uleb128 0x59
 3192 0284 0B       		.uleb128 0xb
 3193 0285 01       		.uleb128 0x1
 3194 0286 13       		.uleb128 0x13
 3195 0287 00       		.byte	0
 3196 0288 00       		.byte	0
 3197 0289 32       		.uleb128 0x32
 3198 028a 0B       		.uleb128 0xb
 3199 028b 01       		.byte	0x1
 3200 028c 11       		.uleb128 0x11
 3201 028d 01       		.uleb128 0x1
 3202 028e 12       		.uleb128 0x12
 3203 028f 06       		.uleb128 0x6
 3204 0290 00       		.byte	0
 3205 0291 00       		.byte	0
 3206 0292 33       		.uleb128 0x33
 3207 0293 1D       		.uleb128 0x1d
 3208 0294 00       		.byte	0
 3209 0295 31       		.uleb128 0x31
 3210 0296 13       		.uleb128 0x13
 3211 0297 11       		.uleb128 0x11
 3212 0298 01       		.uleb128 0x1
 3213 0299 12       		.uleb128 0x12
 3214 029a 06       		.uleb128 0x6
 3215 029b 58       		.uleb128 0x58
 3216 029c 0B       		.uleb128 0xb
 3217 029d 59       		.uleb128 0x59
 3218 029e 0B       		.uleb128 0xb
 3219 029f 00       		.byte	0
 3220 02a0 00       		.byte	0
 3221 02a1 34       		.uleb128 0x34
 3222 02a2 1D       		.uleb128 0x1d
 3223 02a3 01       		.byte	0x1
 3224 02a4 31       		.uleb128 0x31
 3225 02a5 13       		.uleb128 0x13
 3226 02a6 11       		.uleb128 0x11
ARM GAS  /tmp/ccLuO05w.s 			page 85


 3227 02a7 01       		.uleb128 0x1
 3228 02a8 12       		.uleb128 0x12
 3229 02a9 06       		.uleb128 0x6
 3230 02aa 58       		.uleb128 0x58
 3231 02ab 0B       		.uleb128 0xb
 3232 02ac 59       		.uleb128 0x59
 3233 02ad 05       		.uleb128 0x5
 3234 02ae 01       		.uleb128 0x1
 3235 02af 13       		.uleb128 0x13
 3236 02b0 00       		.byte	0
 3237 02b1 00       		.byte	0
 3238 02b2 35       		.uleb128 0x35
 3239 02b3 05       		.uleb128 0x5
 3240 02b4 00       		.byte	0
 3241 02b5 31       		.uleb128 0x31
 3242 02b6 13       		.uleb128 0x13
 3243 02b7 00       		.byte	0
 3244 02b8 00       		.byte	0
 3245 02b9 36       		.uleb128 0x36
 3246 02ba 898201   		.uleb128 0x4109
 3247 02bd 01       		.byte	0x1
 3248 02be 11       		.uleb128 0x11
 3249 02bf 01       		.uleb128 0x1
 3250 02c0 31       		.uleb128 0x31
 3251 02c1 13       		.uleb128 0x13
 3252 02c2 00       		.byte	0
 3253 02c3 00       		.byte	0
 3254 02c4 37       		.uleb128 0x37
 3255 02c5 8A8201   		.uleb128 0x410a
 3256 02c8 00       		.byte	0
 3257 02c9 02       		.uleb128 0x2
 3258 02ca 18       		.uleb128 0x18
 3259 02cb 9142     		.uleb128 0x2111
 3260 02cd 18       		.uleb128 0x18
 3261 02ce 00       		.byte	0
 3262 02cf 00       		.byte	0
 3263 02d0 38       		.uleb128 0x38
 3264 02d1 2E       		.uleb128 0x2e
 3265 02d2 01       		.byte	0x1
 3266 02d3 3F       		.uleb128 0x3f
 3267 02d4 19       		.uleb128 0x19
 3268 02d5 03       		.uleb128 0x3
 3269 02d6 0E       		.uleb128 0xe
 3270 02d7 3A       		.uleb128 0x3a
 3271 02d8 0B       		.uleb128 0xb
 3272 02d9 3B       		.uleb128 0x3b
 3273 02da 0B       		.uleb128 0xb
 3274 02db 27       		.uleb128 0x27
 3275 02dc 19       		.uleb128 0x19
 3276 02dd 49       		.uleb128 0x49
 3277 02de 13       		.uleb128 0x13
 3278 02df 11       		.uleb128 0x11
 3279 02e0 01       		.uleb128 0x1
 3280 02e1 12       		.uleb128 0x12
 3281 02e2 06       		.uleb128 0x6
 3282 02e3 40       		.uleb128 0x40
 3283 02e4 18       		.uleb128 0x18
ARM GAS  /tmp/ccLuO05w.s 			page 86


 3284 02e5 9742     		.uleb128 0x2117
 3285 02e7 19       		.uleb128 0x19
 3286 02e8 01       		.uleb128 0x1
 3287 02e9 13       		.uleb128 0x13
 3288 02ea 00       		.byte	0
 3289 02eb 00       		.byte	0
 3290 02ec 39       		.uleb128 0x39
 3291 02ed 05       		.uleb128 0x5
 3292 02ee 00       		.byte	0
 3293 02ef 03       		.uleb128 0x3
 3294 02f0 0E       		.uleb128 0xe
 3295 02f1 3A       		.uleb128 0x3a
 3296 02f2 0B       		.uleb128 0xb
 3297 02f3 3B       		.uleb128 0x3b
 3298 02f4 0B       		.uleb128 0xb
 3299 02f5 49       		.uleb128 0x49
 3300 02f6 13       		.uleb128 0x13
 3301 02f7 02       		.uleb128 0x2
 3302 02f8 17       		.uleb128 0x17
 3303 02f9 00       		.byte	0
 3304 02fa 00       		.byte	0
 3305 02fb 3A       		.uleb128 0x3a
 3306 02fc 2E       		.uleb128 0x2e
 3307 02fd 01       		.byte	0x1
 3308 02fe 3F       		.uleb128 0x3f
 3309 02ff 19       		.uleb128 0x19
 3310 0300 03       		.uleb128 0x3
 3311 0301 0E       		.uleb128 0xe
 3312 0302 3A       		.uleb128 0x3a
 3313 0303 0B       		.uleb128 0xb
 3314 0304 3B       		.uleb128 0x3b
 3315 0305 0B       		.uleb128 0xb
 3316 0306 27       		.uleb128 0x27
 3317 0307 19       		.uleb128 0x19
 3318 0308 11       		.uleb128 0x11
 3319 0309 01       		.uleb128 0x1
 3320 030a 12       		.uleb128 0x12
 3321 030b 06       		.uleb128 0x6
 3322 030c 40       		.uleb128 0x40
 3323 030d 18       		.uleb128 0x18
 3324 030e 9742     		.uleb128 0x2117
 3325 0310 19       		.uleb128 0x19
 3326 0311 01       		.uleb128 0x1
 3327 0312 13       		.uleb128 0x13
 3328 0313 00       		.byte	0
 3329 0314 00       		.byte	0
 3330 0315 3B       		.uleb128 0x3b
 3331 0316 05       		.uleb128 0x5
 3332 0317 00       		.byte	0
 3333 0318 03       		.uleb128 0x3
 3334 0319 0E       		.uleb128 0xe
 3335 031a 3A       		.uleb128 0x3a
 3336 031b 0B       		.uleb128 0xb
 3337 031c 3B       		.uleb128 0x3b
 3338 031d 0B       		.uleb128 0xb
 3339 031e 49       		.uleb128 0x49
 3340 031f 13       		.uleb128 0x13
ARM GAS  /tmp/ccLuO05w.s 			page 87


 3341 0320 02       		.uleb128 0x2
 3342 0321 18       		.uleb128 0x18
 3343 0322 00       		.byte	0
 3344 0323 00       		.byte	0
 3345 0324 3C       		.uleb128 0x3c
 3346 0325 34       		.uleb128 0x34
 3347 0326 00       		.byte	0
 3348 0327 03       		.uleb128 0x3
 3349 0328 0E       		.uleb128 0xe
 3350 0329 3A       		.uleb128 0x3a
 3351 032a 0B       		.uleb128 0xb
 3352 032b 3B       		.uleb128 0x3b
 3353 032c 0B       		.uleb128 0xb
 3354 032d 49       		.uleb128 0x49
 3355 032e 13       		.uleb128 0x13
 3356 032f 02       		.uleb128 0x2
 3357 0330 17       		.uleb128 0x17
 3358 0331 00       		.byte	0
 3359 0332 00       		.byte	0
 3360 0333 3D       		.uleb128 0x3d
 3361 0334 898201   		.uleb128 0x4109
 3362 0337 01       		.byte	0x1
 3363 0338 11       		.uleb128 0x11
 3364 0339 01       		.uleb128 0x1
 3365 033a 9542     		.uleb128 0x2115
 3366 033c 19       		.uleb128 0x19
 3367 033d 31       		.uleb128 0x31
 3368 033e 13       		.uleb128 0x13
 3369 033f 00       		.byte	0
 3370 0340 00       		.byte	0
 3371 0341 3E       		.uleb128 0x3e
 3372 0342 2E       		.uleb128 0x2e
 3373 0343 01       		.byte	0x1
 3374 0344 03       		.uleb128 0x3
 3375 0345 0E       		.uleb128 0xe
 3376 0346 3A       		.uleb128 0x3a
 3377 0347 0B       		.uleb128 0xb
 3378 0348 3B       		.uleb128 0x3b
 3379 0349 0B       		.uleb128 0xb
 3380 034a 27       		.uleb128 0x27
 3381 034b 19       		.uleb128 0x19
 3382 034c 20       		.uleb128 0x20
 3383 034d 0B       		.uleb128 0xb
 3384 034e 01       		.uleb128 0x1
 3385 034f 13       		.uleb128 0x13
 3386 0350 00       		.byte	0
 3387 0351 00       		.byte	0
 3388 0352 3F       		.uleb128 0x3f
 3389 0353 05       		.uleb128 0x5
 3390 0354 00       		.byte	0
 3391 0355 03       		.uleb128 0x3
 3392 0356 0E       		.uleb128 0xe
 3393 0357 3A       		.uleb128 0x3a
 3394 0358 0B       		.uleb128 0xb
 3395 0359 3B       		.uleb128 0x3b
 3396 035a 0B       		.uleb128 0xb
 3397 035b 49       		.uleb128 0x49
ARM GAS  /tmp/ccLuO05w.s 			page 88


 3398 035c 13       		.uleb128 0x13
 3399 035d 00       		.byte	0
 3400 035e 00       		.byte	0
 3401 035f 40       		.uleb128 0x40
 3402 0360 2E       		.uleb128 0x2e
 3403 0361 01       		.byte	0x1
 3404 0362 03       		.uleb128 0x3
 3405 0363 0E       		.uleb128 0xe
 3406 0364 3A       		.uleb128 0x3a
 3407 0365 0B       		.uleb128 0xb
 3408 0366 3B       		.uleb128 0x3b
 3409 0367 0B       		.uleb128 0xb
 3410 0368 27       		.uleb128 0x27
 3411 0369 19       		.uleb128 0x19
 3412 036a 49       		.uleb128 0x49
 3413 036b 13       		.uleb128 0x13
 3414 036c 20       		.uleb128 0x20
 3415 036d 0B       		.uleb128 0xb
 3416 036e 01       		.uleb128 0x1
 3417 036f 13       		.uleb128 0x13
 3418 0370 00       		.byte	0
 3419 0371 00       		.byte	0
 3420 0372 41       		.uleb128 0x41
 3421 0373 34       		.uleb128 0x34
 3422 0374 00       		.byte	0
 3423 0375 03       		.uleb128 0x3
 3424 0376 0E       		.uleb128 0xe
 3425 0377 3A       		.uleb128 0x3a
 3426 0378 0B       		.uleb128 0xb
 3427 0379 3B       		.uleb128 0x3b
 3428 037a 0B       		.uleb128 0xb
 3429 037b 49       		.uleb128 0x49
 3430 037c 13       		.uleb128 0x13
 3431 037d 00       		.byte	0
 3432 037e 00       		.byte	0
 3433 037f 42       		.uleb128 0x42
 3434 0380 2E       		.uleb128 0x2e
 3435 0381 01       		.byte	0x1
 3436 0382 03       		.uleb128 0x3
 3437 0383 0E       		.uleb128 0xe
 3438 0384 3A       		.uleb128 0x3a
 3439 0385 0B       		.uleb128 0xb
 3440 0386 3B       		.uleb128 0x3b
 3441 0387 05       		.uleb128 0x5
 3442 0388 27       		.uleb128 0x27
 3443 0389 19       		.uleb128 0x19
 3444 038a 49       		.uleb128 0x49
 3445 038b 13       		.uleb128 0x13
 3446 038c 20       		.uleb128 0x20
 3447 038d 0B       		.uleb128 0xb
 3448 038e 01       		.uleb128 0x1
 3449 038f 13       		.uleb128 0x13
 3450 0390 00       		.byte	0
 3451 0391 00       		.byte	0
 3452 0392 43       		.uleb128 0x43
 3453 0393 2E       		.uleb128 0x2e
 3454 0394 00       		.byte	0
ARM GAS  /tmp/ccLuO05w.s 			page 89


 3455 0395 03       		.uleb128 0x3
 3456 0396 0E       		.uleb128 0xe
 3457 0397 3A       		.uleb128 0x3a
 3458 0398 0B       		.uleb128 0xb
 3459 0399 3B       		.uleb128 0x3b
 3460 039a 05       		.uleb128 0x5
 3461 039b 27       		.uleb128 0x27
 3462 039c 19       		.uleb128 0x19
 3463 039d 20       		.uleb128 0x20
 3464 039e 0B       		.uleb128 0xb
 3465 039f 00       		.byte	0
 3466 03a0 00       		.byte	0
 3467 03a1 00       		.byte	0
 3468              		.section	.debug_loc,"",%progbits
 3469              	.Ldebug_loc0:
 3470              	.LLST18:
 3471 0000 6C000000 		.4byte	.LVL46
 3472 0004 7E000000 		.4byte	.LVL47
 3473 0008 0100     		.2byte	0x1
 3474 000a 50       		.byte	0x50
 3475 000b 7E000000 		.4byte	.LVL47
 3476 000f 88000000 		.4byte	.LFE156
 3477 0013 0400     		.2byte	0x4
 3478 0015 F3       		.byte	0xf3
 3479 0016 01       		.uleb128 0x1
 3480 0017 50       		.byte	0x50
 3481 0018 9F       		.byte	0x9f
 3482 0019 00000000 		.4byte	0
 3483 001d 00000000 		.4byte	0
 3484              	.LLST3:
 3485 0021 00000000 		.4byte	.LVL8
 3486 0025 54000000 		.4byte	.LVL13
 3487 0029 0100     		.2byte	0x1
 3488 002b 50       		.byte	0x50
 3489 002c 54000000 		.4byte	.LVL13
 3490 0030 5A000000 		.4byte	.LVL15
 3491 0034 0400     		.2byte	0x4
 3492 0036 F3       		.byte	0xf3
 3493 0037 01       		.uleb128 0x1
 3494 0038 50       		.byte	0x50
 3495 0039 9F       		.byte	0x9f
 3496 003a 5A000000 		.4byte	.LVL15
 3497 003e 5E000000 		.4byte	.LVL17
 3498 0042 0100     		.2byte	0x1
 3499 0044 50       		.byte	0x50
 3500 0045 5E000000 		.4byte	.LVL17
 3501 0049 68000000 		.4byte	.LFE154
 3502 004d 0400     		.2byte	0x4
 3503 004f F3       		.byte	0xf3
 3504 0050 01       		.uleb128 0x1
 3505 0051 50       		.byte	0x50
 3506 0052 9F       		.byte	0x9f
 3507 0053 00000000 		.4byte	0
 3508 0057 00000000 		.4byte	0
 3509              	.LLST4:
 3510 005b 00000000 		.4byte	.LVL8
 3511 005f 0C000000 		.4byte	.LVL9
ARM GAS  /tmp/ccLuO05w.s 			page 90


 3512 0063 0100     		.2byte	0x1
 3513 0065 51       		.byte	0x51
 3514 0066 0C000000 		.4byte	.LVL9
 3515 006a 5A000000 		.4byte	.LVL15
 3516 006e 0400     		.2byte	0x4
 3517 0070 F3       		.byte	0xf3
 3518 0071 01       		.uleb128 0x1
 3519 0072 51       		.byte	0x51
 3520 0073 9F       		.byte	0x9f
 3521 0074 5A000000 		.4byte	.LVL15
 3522 0078 68000000 		.4byte	.LFE154
 3523 007c 0100     		.2byte	0x1
 3524 007e 51       		.byte	0x51
 3525 007f 00000000 		.4byte	0
 3526 0083 00000000 		.4byte	0
 3527              	.LLST5:
 3528 0087 00000000 		.4byte	.LVL8
 3529 008b 38000000 		.4byte	.LVL12
 3530 008f 0100     		.2byte	0x1
 3531 0091 52       		.byte	0x52
 3532 0092 38000000 		.4byte	.LVL12
 3533 0096 5A000000 		.4byte	.LVL15
 3534 009a 0400     		.2byte	0x4
 3535 009c F3       		.byte	0xf3
 3536 009d 01       		.uleb128 0x1
 3537 009e 52       		.byte	0x52
 3538 009f 9F       		.byte	0x9f
 3539 00a0 5A000000 		.4byte	.LVL15
 3540 00a4 5C000000 		.4byte	.LVL16
 3541 00a8 0100     		.2byte	0x1
 3542 00aa 52       		.byte	0x52
 3543 00ab 5C000000 		.4byte	.LVL16
 3544 00af 68000000 		.4byte	.LFE154
 3545 00b3 0400     		.2byte	0x4
 3546 00b5 F3       		.byte	0xf3
 3547 00b6 01       		.uleb128 0x1
 3548 00b7 52       		.byte	0x52
 3549 00b8 9F       		.byte	0x9f
 3550 00b9 00000000 		.4byte	0
 3551 00bd 00000000 		.4byte	0
 3552              	.LLST6:
 3553 00c1 00000000 		.4byte	.LVL8
 3554 00c5 2A000000 		.4byte	.LVL11
 3555 00c9 0100     		.2byte	0x1
 3556 00cb 53       		.byte	0x53
 3557 00cc 2A000000 		.4byte	.LVL11
 3558 00d0 5A000000 		.4byte	.LVL15
 3559 00d4 0400     		.2byte	0x4
 3560 00d6 F3       		.byte	0xf3
 3561 00d7 01       		.uleb128 0x1
 3562 00d8 53       		.byte	0x53
 3563 00d9 9F       		.byte	0x9f
 3564 00da 5A000000 		.4byte	.LVL15
 3565 00de 68000000 		.4byte	.LFE154
 3566 00e2 0100     		.2byte	0x1
 3567 00e4 53       		.byte	0x53
 3568 00e5 00000000 		.4byte	0
ARM GAS  /tmp/ccLuO05w.s 			page 91


 3569 00e9 00000000 		.4byte	0
 3570              	.LLST7:
 3571 00ed 00000000 		.4byte	.LVL8
 3572 00f1 58000000 		.4byte	.LVL14
 3573 00f5 0200     		.2byte	0x2
 3574 00f7 91       		.byte	0x91
 3575 00f8 00       		.sleb128 0
 3576 00f9 58000000 		.4byte	.LVL14
 3577 00fd 5A000000 		.4byte	.LVL15
 3578 0101 0200     		.2byte	0x2
 3579 0103 7D       		.byte	0x7d
 3580 0104 00       		.sleb128 0
 3581 0105 5A000000 		.4byte	.LVL15
 3582 0109 62000000 		.4byte	.LVL18
 3583 010d 0200     		.2byte	0x2
 3584 010f 91       		.byte	0x91
 3585 0110 00       		.sleb128 0
 3586 0111 62000000 		.4byte	.LVL18
 3587 0115 68000000 		.4byte	.LFE154
 3588 0119 0200     		.2byte	0x2
 3589 011b 7D       		.byte	0x7d
 3590 011c 00       		.sleb128 0
 3591 011d 00000000 		.4byte	0
 3592 0121 00000000 		.4byte	0
 3593              	.LLST8:
 3594 0125 22000000 		.4byte	.LVL10
 3595 0129 2A000000 		.4byte	.LVL11
 3596 012d 0200     		.2byte	0x2
 3597 012f 30       		.byte	0x30
 3598 0130 9F       		.byte	0x9f
 3599 0131 00000000 		.4byte	0
 3600 0135 00000000 		.4byte	0
 3601              	.LLST2:
 3602 0139 00000000 		.4byte	.LVL6
 3603 013d 02000000 		.4byte	.LVL7
 3604 0141 0100     		.2byte	0x1
 3605 0143 50       		.byte	0x50
 3606 0144 02000000 		.4byte	.LVL7
 3607 0148 04000000 		.4byte	.LFE153
 3608 014c 0400     		.2byte	0x4
 3609 014e F3       		.byte	0xf3
 3610 014f 01       		.uleb128 0x1
 3611 0150 50       		.byte	0x50
 3612 0151 9F       		.byte	0x9f
 3613 0152 00000000 		.4byte	0
 3614 0156 00000000 		.4byte	0
 3615              	.LLST1:
 3616 015a 00000000 		.4byte	.LVL4
 3617 015e 02000000 		.4byte	.LVL5
 3618 0162 0100     		.2byte	0x1
 3619 0164 50       		.byte	0x50
 3620 0165 02000000 		.4byte	.LVL5
 3621 0169 04000000 		.4byte	.LFE152
 3622 016d 0400     		.2byte	0x4
 3623 016f F3       		.byte	0xf3
 3624 0170 01       		.uleb128 0x1
 3625 0171 50       		.byte	0x50
ARM GAS  /tmp/ccLuO05w.s 			page 92


 3626 0172 9F       		.byte	0x9f
 3627 0173 00000000 		.4byte	0
 3628 0177 00000000 		.4byte	0
 3629              	.LLST19:
 3630 017b 00000000 		.4byte	.LVL48
 3631 017f 0C000000 		.4byte	.LVL49
 3632 0183 0100     		.2byte	0x1
 3633 0185 50       		.byte	0x50
 3634 0186 0C000000 		.4byte	.LVL49
 3635 018a 0E000000 		.4byte	.LVL50
 3636 018e 0400     		.2byte	0x4
 3637 0190 F3       		.byte	0xf3
 3638 0191 01       		.uleb128 0x1
 3639 0192 50       		.byte	0x50
 3640 0193 9F       		.byte	0x9f
 3641 0194 0E000000 		.4byte	.LVL50
 3642 0198 31000000 		.4byte	.LVL54-1
 3643 019c 0100     		.2byte	0x1
 3644 019e 50       		.byte	0x50
 3645 019f 31000000 		.4byte	.LVL54-1
 3646 01a3 4C000000 		.4byte	.LFE151
 3647 01a7 0400     		.2byte	0x4
 3648 01a9 F3       		.byte	0xf3
 3649 01aa 01       		.uleb128 0x1
 3650 01ab 50       		.byte	0x50
 3651 01ac 9F       		.byte	0x9f
 3652 01ad 00000000 		.4byte	0
 3653 01b1 00000000 		.4byte	0
 3654              	.LLST20:
 3655 01b5 00000000 		.4byte	.LVL48
 3656 01b9 1E000000 		.4byte	.LVL52
 3657 01bd 0100     		.2byte	0x1
 3658 01bf 51       		.byte	0x51
 3659 01c0 1E000000 		.4byte	.LVL52
 3660 01c4 4C000000 		.4byte	.LFE151
 3661 01c8 0400     		.2byte	0x4
 3662 01ca F3       		.byte	0xf3
 3663 01cb 01       		.uleb128 0x1
 3664 01cc 51       		.byte	0x51
 3665 01cd 9F       		.byte	0x9f
 3666 01ce 00000000 		.4byte	0
 3667 01d2 00000000 		.4byte	0
 3668              	.LLST21:
 3669 01d6 00000000 		.4byte	.LVL48
 3670 01da 26000000 		.4byte	.LVL53
 3671 01de 0100     		.2byte	0x1
 3672 01e0 52       		.byte	0x52
 3673 01e1 26000000 		.4byte	.LVL53
 3674 01e5 4C000000 		.4byte	.LFE151
 3675 01e9 0400     		.2byte	0x4
 3676 01eb F3       		.byte	0xf3
 3677 01ec 01       		.uleb128 0x1
 3678 01ed 52       		.byte	0x52
 3679 01ee 9F       		.byte	0x9f
 3680 01ef 00000000 		.4byte	0
 3681 01f3 00000000 		.4byte	0
 3682              	.LLST0:
ARM GAS  /tmp/ccLuO05w.s 			page 93


 3683 01f7 00000000 		.4byte	.LVL2
 3684 01fb 02000000 		.4byte	.LVL3
 3685 01ff 0100     		.2byte	0x1
 3686 0201 50       		.byte	0x50
 3687 0202 02000000 		.4byte	.LVL3
 3688 0206 08000000 		.4byte	.LFE150
 3689 020a 0400     		.2byte	0x4
 3690 020c F3       		.byte	0xf3
 3691 020d 01       		.uleb128 0x1
 3692 020e 50       		.byte	0x50
 3693 020f 9F       		.byte	0x9f
 3694 0210 00000000 		.4byte	0
 3695 0214 00000000 		.4byte	0
 3696              	.LLST16:
 3697 0218 00000000 		.4byte	.LVL41
 3698 021c 02000000 		.4byte	.LVL42
 3699 0220 0100     		.2byte	0x1
 3700 0222 51       		.byte	0x51
 3701 0223 02000000 		.4byte	.LVL42
 3702 0227 12000000 		.4byte	.LFE149
 3703 022b 0400     		.2byte	0x4
 3704 022d F3       		.byte	0xf3
 3705 022e 01       		.uleb128 0x1
 3706 022f 51       		.byte	0x51
 3707 0230 9F       		.byte	0x9f
 3708 0231 00000000 		.4byte	0
 3709 0235 00000000 		.4byte	0
 3710              	.LLST17:
 3711 0239 04000000 		.4byte	.LVL43
 3712 023d 0C000000 		.4byte	.LVL44
 3713 0241 0700     		.2byte	0x7
 3714 0243 73       		.byte	0x73
 3715 0244 00       		.sleb128 0
 3716 0245 0B       		.byte	0xb
 3717 0246 FFF0     		.2byte	0xf0ff
 3718 0248 1A       		.byte	0x1a
 3719 0249 9F       		.byte	0x9f
 3720 024a 0C000000 		.4byte	.LVL44
 3721 024e 12000000 		.4byte	.LFE149
 3722 0252 0100     		.2byte	0x1
 3723 0254 53       		.byte	0x53
 3724 0255 00000000 		.4byte	0
 3725 0259 00000000 		.4byte	0
 3726              	.LLST15:
 3727 025d 02000000 		.4byte	.LVL38
 3728 0261 06000000 		.4byte	.LVL39
 3729 0265 0100     		.2byte	0x1
 3730 0267 51       		.byte	0x51
 3731 0268 00000000 		.4byte	0
 3732 026c 00000000 		.4byte	0
 3733              	.LLST14:
 3734 0270 02000000 		.4byte	.LVL34
 3735 0274 06000000 		.4byte	.LVL35
 3736 0278 0100     		.2byte	0x1
 3737 027a 51       		.byte	0x51
 3738 027b 00000000 		.4byte	0
 3739 027f 00000000 		.4byte	0
ARM GAS  /tmp/ccLuO05w.s 			page 94


 3740              	.LLST13:
 3741 0283 02000000 		.4byte	.LVL30
 3742 0287 06000000 		.4byte	.LVL31
 3743 028b 0100     		.2byte	0x1
 3744 028d 51       		.byte	0x51
 3745 028e 00000000 		.4byte	0
 3746 0292 00000000 		.4byte	0
 3747              	.LLST12:
 3748 0296 02000000 		.4byte	.LVL26
 3749 029a 06000000 		.4byte	.LVL27
 3750 029e 0100     		.2byte	0x1
 3751 02a0 51       		.byte	0x51
 3752 02a1 00000000 		.4byte	0
 3753 02a5 00000000 		.4byte	0
 3754              	.LLST9:
 3755 02a9 00000000 		.4byte	.LVL20
 3756 02ad 14000000 		.4byte	.LVL24
 3757 02b1 0100     		.2byte	0x1
 3758 02b3 50       		.byte	0x50
 3759 02b4 14000000 		.4byte	.LVL24
 3760 02b8 16000000 		.4byte	.LFE142
 3761 02bc 0400     		.2byte	0x4
 3762 02be F3       		.byte	0xf3
 3763 02bf 01       		.uleb128 0x1
 3764 02c0 50       		.byte	0x50
 3765 02c1 9F       		.byte	0x9f
 3766 02c2 00000000 		.4byte	0
 3767 02c6 00000000 		.4byte	0
 3768              	.LLST10:
 3769 02ca 00000000 		.4byte	.LVL20
 3770 02ce 06000000 		.4byte	.LVL22
 3771 02d2 0100     		.2byte	0x1
 3772 02d4 51       		.byte	0x51
 3773 02d5 06000000 		.4byte	.LVL22
 3774 02d9 16000000 		.4byte	.LFE142
 3775 02dd 0400     		.2byte	0x4
 3776 02df F3       		.byte	0xf3
 3777 02e0 01       		.uleb128 0x1
 3778 02e1 51       		.byte	0x51
 3779 02e2 9F       		.byte	0x9f
 3780 02e3 00000000 		.4byte	0
 3781 02e7 00000000 		.4byte	0
 3782              	.LLST11:
 3783 02eb 00000000 		.4byte	.LVL20
 3784 02ef 02000000 		.4byte	.LVL21
 3785 02f3 0100     		.2byte	0x1
 3786 02f5 52       		.byte	0x52
 3787 02f6 02000000 		.4byte	.LVL21
 3788 02fa 16000000 		.4byte	.LFE142
 3789 02fe 0400     		.2byte	0x4
 3790 0300 F3       		.byte	0xf3
 3791 0301 01       		.uleb128 0x1
 3792 0302 52       		.byte	0x52
 3793 0303 9F       		.byte	0x9f
 3794 0304 00000000 		.4byte	0
 3795 0308 00000000 		.4byte	0
 3796              		.section	.debug_aranges,"",%progbits
ARM GAS  /tmp/ccLuO05w.s 			page 95


 3797 0000 8C000000 		.4byte	0x8c
 3798 0004 0200     		.2byte	0x2
 3799 0006 00000000 		.4byte	.Ldebug_info0
 3800 000a 04       		.byte	0x4
 3801 000b 00       		.byte	0
 3802 000c 0000     		.2byte	0
 3803 000e 0000     		.2byte	0
 3804 0010 00000000 		.4byte	.LFB147
 3805 0014 0C000000 		.4byte	.LFE147-.LFB147
 3806 0018 00000000 		.4byte	.LFB148
 3807 001c 0C000000 		.4byte	.LFE148-.LFB148
 3808 0020 00000000 		.4byte	.LFB150
 3809 0024 08000000 		.4byte	.LFE150-.LFB150
 3810 0028 00000000 		.4byte	.LFB152
 3811 002c 04000000 		.4byte	.LFE152-.LFB152
 3812 0030 00000000 		.4byte	.LFB153
 3813 0034 04000000 		.4byte	.LFE153-.LFB153
 3814 0038 00000000 		.4byte	.LFB154
 3815 003c 68000000 		.4byte	.LFE154-.LFB154
 3816 0040 68000000 		.4byte	.LFB155
 3817 0044 04000000 		.4byte	.LFE155-.LFB155
 3818 0048 00000000 		.4byte	.LFB142
 3819 004c 16000000 		.4byte	.LFE142-.LFB142
 3820 0050 00000000 		.4byte	.LFB143
 3821 0054 0A000000 		.4byte	.LFE143-.LFB143
 3822 0058 00000000 		.4byte	.LFB144
 3823 005c 0A000000 		.4byte	.LFE144-.LFB144
 3824 0060 00000000 		.4byte	.LFB145
 3825 0064 0A000000 		.4byte	.LFE145-.LFB145
 3826 0068 00000000 		.4byte	.LFB146
 3827 006c 0A000000 		.4byte	.LFE146-.LFB146
 3828 0070 00000000 		.4byte	.LFB149
 3829 0074 12000000 		.4byte	.LFE149-.LFB149
 3830 0078 6C000000 		.4byte	.LFB156
 3831 007c 1C000000 		.4byte	.LFE156-.LFB156
 3832 0080 00000000 		.4byte	.LFB151
 3833 0084 4C000000 		.4byte	.LFE151-.LFB151
 3834 0088 00000000 		.4byte	0
 3835 008c 00000000 		.4byte	0
 3836              		.section	.debug_ranges,"",%progbits
 3837              	.Ldebug_ranges0:
 3838 0000 10000000 		.4byte	.LBB32
 3839 0004 1A000000 		.4byte	.LBE32
 3840 0008 1E000000 		.4byte	.LBB42
 3841 000c 22000000 		.4byte	.LBE42
 3842 0010 26000000 		.4byte	.LBB43
 3843 0014 28000000 		.4byte	.LBE43
 3844 0018 00000000 		.4byte	0
 3845 001c 00000000 		.4byte	0
 3846 0020 00000000 		.4byte	.LFB147
 3847 0024 0C000000 		.4byte	.LFE147
 3848 0028 00000000 		.4byte	.LFB148
 3849 002c 0C000000 		.4byte	.LFE148
 3850 0030 00000000 		.4byte	.LFB150
 3851 0034 08000000 		.4byte	.LFE150
 3852 0038 00000000 		.4byte	.LFB152
 3853 003c 04000000 		.4byte	.LFE152
ARM GAS  /tmp/ccLuO05w.s 			page 96


 3854 0040 00000000 		.4byte	.LFB153
 3855 0044 04000000 		.4byte	.LFE153
 3856 0048 00000000 		.4byte	.LFB154
 3857 004c 68000000 		.4byte	.LFE154
 3858 0050 68000000 		.4byte	.LFB155
 3859 0054 6C000000 		.4byte	.LFE155
 3860 0058 00000000 		.4byte	.LFB142
 3861 005c 16000000 		.4byte	.LFE142
 3862 0060 00000000 		.4byte	.LFB143
 3863 0064 0A000000 		.4byte	.LFE143
 3864 0068 00000000 		.4byte	.LFB144
 3865 006c 0A000000 		.4byte	.LFE144
 3866 0070 00000000 		.4byte	.LFB145
 3867 0074 0A000000 		.4byte	.LFE145
 3868 0078 00000000 		.4byte	.LFB146
 3869 007c 0A000000 		.4byte	.LFE146
 3870 0080 00000000 		.4byte	.LFB149
 3871 0084 12000000 		.4byte	.LFE149
 3872 0088 6C000000 		.4byte	.LFB156
 3873 008c 88000000 		.4byte	.LFE156
 3874 0090 00000000 		.4byte	.LFB151
 3875 0094 4C000000 		.4byte	.LFE151
 3876 0098 00000000 		.4byte	0
 3877 009c 00000000 		.4byte	0
 3878              		.section	.debug_line,"",%progbits
 3879              	.Ldebug_line0:
 3880 0000 17040000 		.section	.debug_str,"MS",%progbits,1
 3880      02008102 
 3880      00000201 
 3880      FB0E0D00 
 3880      01010101 
 3881              	.LASF3:
 3882 0000 73686F72 		.ascii	"short int\000"
 3882      7420696E 
 3882      7400
 3883              	.LASF174:
 3884 000a 6566635F 		.ascii	"efc_enable_cloe\000"
 3884      656E6162 
 3884      6C655F63 
 3884      6C6F6500 
 3885              	.LASF105:
 3886 001a 5F72616E 		.ascii	"_rand48\000"
 3886      64343800 
 3887              	.LASF84:
 3888 0022 5F656D65 		.ascii	"_emergency\000"
 3888      7267656E 
 3888      637900
 3889              	.LASF178:
 3890 002d 6370755F 		.ascii	"cpu_irq_is_enabled_flags\000"
 3890      6972715F 
 3890      69735F65 
 3890      6E61626C 
 3890      65645F66 
 3891              	.LASF121:
 3892 0046 5F676574 		.ascii	"_getdate_err\000"
 3892      64617465 
 3892      5F657272 
ARM GAS  /tmp/ccLuO05w.s 			page 97


 3892      00
 3893              	.LASF74:
 3894 0053 5F646174 		.ascii	"_data\000"
 3894      6100
 3895              	.LASF125:
 3896 0059 5F776372 		.ascii	"_wcrtomb_state\000"
 3896      746F6D62 
 3896      5F737461 
 3896      746500
 3897              	.LASF134:
 3898 0068 69727166 		.ascii	"irqflags_t\000"
 3898      6C616773 
 3898      5F7400
 3899              	.LASF126:
 3900 0073 5F776373 		.ascii	"_wcsrtombs_state\000"
 3900      72746F6D 
 3900      62735F73 
 3900      74617465 
 3900      00
 3901              	.LASF150:
 3902 0084 756C5F66 		.ascii	"ul_fmr\000"
 3902      6D7200
 3903              	.LASF64:
 3904 008b 5F6C6266 		.ascii	"_lbfsize\000"
 3904      73697A65 
 3904      00
 3905              	.LASF103:
 3906 0094 5F6E696F 		.ascii	"_niobs\000"
 3906      627300
 3907              	.LASF21:
 3908 009b 45454643 		.ascii	"EEFC_VERSION\000"
 3908      5F564552 
 3908      53494F4E 
 3908      00
 3909              	.LASF14:
 3910 00a8 49544D5F 		.ascii	"ITM_RxBuffer\000"
 3910      52784275 
 3910      66666572 
 3910      00
 3911              	.LASF149:
 3912 00b5 756C5F73 		.ascii	"ul_status\000"
 3912      74617475 
 3912      7300
 3913              	.LASF123:
 3914 00bf 5F6D6272 		.ascii	"_mbrtowc_state\000"
 3914      746F7763 
 3914      5F737461 
 3914      746500
 3915              	.LASF118:
 3916 00ce 5F776374 		.ascii	"_wctomb_state\000"
 3916      6F6D625F 
 3916      73746174 
 3916      6500
 3917              	.LASF41:
 3918 00dc 5F5F746D 		.ascii	"__tm_sec\000"
 3918      5F736563 
 3918      00
ARM GAS  /tmp/ccLuO05w.s 			page 98


 3919              	.LASF173:
 3920 00e5 6566635F 		.ascii	"efc_disable_cloe\000"
 3920      64697361 
 3920      626C655F 
 3920      636C6F65 
 3920      00
 3921              	.LASF159:
 3922 00f6 6566635F 		.ascii	"efc_get_result\000"
 3922      6765745F 
 3922      72657375 
 3922      6C7400
 3923              	.LASF1:
 3924 0105 7369676E 		.ascii	"signed char\000"
 3924      65642063 
 3924      68617200 
 3925              	.LASF170:
 3926 0111 6566635F 		.ascii	"efc_enable_write_protection\000"
 3926      656E6162 
 3926      6C655F77 
 3926      72697465 
 3926      5F70726F 
 3927              	.LASF70:
 3928 012d 5F756275 		.ascii	"_ubuf\000"
 3928      6600
 3929              	.LASF59:
 3930 0133 5F626173 		.ascii	"_base\000"
 3930      6500
 3931              	.LASF20:
 3932 0139 52657365 		.ascii	"Reserved1\000"
 3932      72766564 
 3932      3100
 3933              	.LASF22:
 3934 0143 52657365 		.ascii	"Reserved2\000"
 3934      72766564 
 3934      3200
 3935              	.LASF43:
 3936 014d 5F5F746D 		.ascii	"__tm_hour\000"
 3936      5F686F75 
 3936      7200
 3937              	.LASF99:
 3938 0157 5F5F7366 		.ascii	"__sf\000"
 3938      00
 3939              	.LASF144:
 3940 015c 4546435F 		.ascii	"EFC_RC_ERROR\000"
 3940      52435F45 
 3940      52524F52 
 3940      00
 3941              	.LASF65:
 3942 0169 5F636F6F 		.ascii	"_cookie\000"
 3942      6B696500 
 3943              	.LASF98:
 3944 0171 5F5F7367 		.ascii	"__sglue\000"
 3944      6C756500 
 3945              	.LASF5:
 3946 0179 6C6F6E67 		.ascii	"long int\000"
 3946      20696E74 
 3946      00
ARM GAS  /tmp/ccLuO05w.s 			page 99


 3947              	.LASF188:
 3948 0182 6370755F 		.ascii	"cpu_irq_restore\000"
 3948      6972715F 
 3948      72657374 
 3948      6F726500 
 3949              	.LASF175:
 3950 0192 6566635F 		.ascii	"efc_init\000"
 3950      696E6974 
 3950      00
 3951              	.LASF62:
 3952 019b 5F666C61 		.ascii	"_flags\000"
 3952      677300
 3953              	.LASF54:
 3954 01a2 5F69735F 		.ascii	"_is_cxa\000"
 3954      63786100 
 3955              	.LASF161:
 3956 01aa 6566635F 		.ascii	"efc_perform_command\000"
 3956      70657266 
 3956      6F726D5F 
 3956      636F6D6D 
 3956      616E6400 
 3957              	.LASF90:
 3958 01be 5F726573 		.ascii	"_result_k\000"
 3958      756C745F 
 3958      6B00
 3959              	.LASF9:
 3960 01c8 6C6F6E67 		.ascii	"long long int\000"
 3960      206C6F6E 
 3960      6720696E 
 3960      7400
 3961              	.LASF140:
 3962 01d6 646F7562 		.ascii	"double\000"
 3962      6C6500
 3963              	.LASF94:
 3964 01dd 5F637674 		.ascii	"_cvtbuf\000"
 3964      62756600 
 3965              	.LASF124:
 3966 01e5 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 3966      72746F77 
 3966      63735F73 
 3966      74617465 
 3966      00
 3967              	.LASF18:
 3968 01f6 45454643 		.ascii	"EEFC_FSR\000"
 3968      5F465352 
 3968      00
 3969              	.LASF122:
 3970 01ff 5F6D6272 		.ascii	"_mbrlen_state\000"
 3970      6C656E5F 
 3970      73746174 
 3970      6500
 3971              	.LASF51:
 3972 020d 5F666E61 		.ascii	"_fnargs\000"
 3972      72677300 
 3973              	.LASF57:
 3974 0215 5F666E73 		.ascii	"_fns\000"
 3974      00
ARM GAS  /tmp/ccLuO05w.s 			page 100


 3975              	.LASF7:
 3976 021a 5F5F7569 		.ascii	"__uint32_t\000"
 3976      6E743332 
 3976      5F7400
 3977              	.LASF37:
 3978 0225 5F736967 		.ascii	"_sign\000"
 3978      6E00
 3979              	.LASF172:
 3980 022b 6566635F 		.ascii	"efc_enable_frdy_interrupt\000"
 3980      656E6162 
 3980      6C655F66 
 3980      7264795F 
 3980      696E7465 
 3981              	.LASF180:
 3982 0245 5F5F6765 		.ascii	"__get_PRIMASK\000"
 3982      745F5052 
 3982      494D4153 
 3982      4B00
 3983              	.LASF131:
 3984 0253 5F696D70 		.ascii	"_impure_ptr\000"
 3984      7572655F 
 3984      70747200 
 3985              	.LASF82:
 3986 025f 5F737464 		.ascii	"_stderr\000"
 3986      65727200 
 3987              	.LASF39:
 3988 0267 5F426967 		.ascii	"_Bigint\000"
 3988      696E7400 
 3989              	.LASF113:
 3990 026f 5F67616D 		.ascii	"_gamma_signgam\000"
 3990      6D615F73 
 3990      69676E67 
 3990      616D00
 3991              	.LASF129:
 3992 027e 5F6E6D61 		.ascii	"_nmalloc\000"
 3992      6C6C6F63 
 3992      00
 3993              	.LASF187:
 3994 0287 6566635F 		.ascii	"efc_rc\000"
 3994      726300
 3995              	.LASF40:
 3996 028e 5F5F746D 		.ascii	"__tm\000"
 3996      00
 3997              	.LASF76:
 3998 0293 5F6D6273 		.ascii	"_mbstate\000"
 3998      74617465 
 3998      00
 3999              	.LASF29:
 4000 029c 5F5F7763 		.ascii	"__wchb\000"
 4000      686200
 4001              	.LASF15:
 4002 02a3 53797374 		.ascii	"SystemCoreClock\000"
 4002      656D436F 
 4002      7265436C 
 4002      6F636B00 
 4003              	.LASF93:
 4004 02b3 5F637674 		.ascii	"_cvtlen\000"
ARM GAS  /tmp/ccLuO05w.s 			page 101


 4004      6C656E00 
 4005              	.LASF8:
 4006 02bb 6C6F6E67 		.ascii	"long unsigned int\000"
 4006      20756E73 
 4006      69676E65 
 4006      6420696E 
 4006      7400
 4007              	.LASF63:
 4008 02cd 5F66696C 		.ascii	"_file\000"
 4008      6500
 4009              	.LASF165:
 4010 02d3 6566635F 		.ascii	"efc_get_wait_state\000"
 4010      6765745F 
 4010      77616974 
 4010      5F737461 
 4010      746500
 4011              	.LASF10:
 4012 02e6 6C6F6E67 		.ascii	"long long unsigned int\000"
 4012      206C6F6E 
 4012      6720756E 
 4012      7369676E 
 4012      65642069 
 4013              	.LASF4:
 4014 02fd 73686F72 		.ascii	"short unsigned int\000"
 4014      7420756E 
 4014      7369676E 
 4014      65642069 
 4014      6E7400
 4015              	.LASF96:
 4016 0310 5F617465 		.ascii	"_atexit0\000"
 4016      78697430 
 4016      00
 4017              	.LASF154:
 4018 0319 756C5F63 		.ascii	"ul_cmd_sp\000"
 4018      6D645F73 
 4018      7000
 4019              	.LASF120:
 4020 0323 5F736967 		.ascii	"_signal_buf\000"
 4020      6E616C5F 
 4020      62756600 
 4021              	.LASF111:
 4022 032f 5F617363 		.ascii	"_asctime_buf\000"
 4022      74696D65 
 4022      5F627566 
 4022      00
 4023              	.LASF168:
 4024 033c 756C5F66 		.ascii	"ul_fws\000"
 4024      777300
 4025              	.LASF89:
 4026 0343 5F726573 		.ascii	"_result\000"
 4026      756C7400 
 4027              	.LASF28:
 4028 034b 5F5F7763 		.ascii	"__wch\000"
 4028      6800
 4029              	.LASF128:
 4030 0351 5F6E6578 		.ascii	"_nextf\000"
 4030      746600
ARM GAS  /tmp/ccLuO05w.s 			page 102


 4031              	.LASF27:
 4032 0358 77696E74 		.ascii	"wint_t\000"
 4032      5F7400
 4033              	.LASF75:
 4034 035f 5F6C6F63 		.ascii	"_lock\000"
 4034      6B00
 4035              	.LASF107:
 4036 0365 5F6D756C 		.ascii	"_mult\000"
 4036      7400
 4037              	.LASF152:
 4038 036b 6566635F 		.ascii	"efc_perform_read_sequence\000"
 4038      70657266 
 4038      6F726D5F 
 4038      72656164 
 4038      5F736571 
 4039              	.LASF162:
 4040 0385 756C5F63 		.ascii	"ul_command\000"
 4040      6F6D6D61 
 4040      6E6400
 4041              	.LASF153:
 4042 0390 756C5F63 		.ascii	"ul_cmd_st\000"
 4042      6D645F73 
 4042      7400
 4043              	.LASF19:
 4044 039a 45454643 		.ascii	"EEFC_FRR\000"
 4044      5F465252 
 4044      00
 4045              	.LASF67:
 4046 03a3 5F777269 		.ascii	"_write\000"
 4046      746500
 4047              	.LASF46:
 4048 03aa 5F5F746D 		.ascii	"__tm_year\000"
 4048      5F796561 
 4048      7200
 4049              	.LASF109:
 4050 03b4 5F756E75 		.ascii	"_unused_rand\000"
 4050      7365645F 
 4050      72616E64 
 4050      00
 4051              	.LASF143:
 4052 03c1 4546435F 		.ascii	"EFC_RC_NO\000"
 4052      52435F4E 
 4052      4F00
 4053              	.LASF17:
 4054 03cb 45454643 		.ascii	"EEFC_FCR\000"
 4054      5F464352 
 4054      00
 4055              	.LASF138:
 4056 03d4 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 4056      6972715F 
 4056      70726576 
 4056      5F696E74 
 4056      65727275 
 4057              	.LASF185:
 4058 03f1 2E2E2F61 		.ascii	"../asf/sam/drivers/efc/efc.c\000"
 4058      73662F73 
 4058      616D2F64 
ARM GAS  /tmp/ccLuO05w.s 			page 103


 4058      72697665 
 4058      72732F65 
 4059              	.LASF13:
 4060 040e 73697A65 		.ascii	"sizetype\000"
 4060      74797065 
 4060      00
 4061              	.LASF167:
 4062 0417 6566635F 		.ascii	"efc_set_wait_state\000"
 4062      7365745F 
 4062      77616974 
 4062      5F737461 
 4062      746500
 4063              	.LASF73:
 4064 042a 5F6F6666 		.ascii	"_offset\000"
 4064      73657400 
 4065              	.LASF184:
 4066 0432 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 4066      43393920 
 4066      362E332E 
 4066      31203230 
 4066      31373036 
 4067 0465 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 4067      76352D64 
 4067      3136202D 
 4067      6D666C6F 
 4067      61742D61 
 4068 0498 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 4068      6E2D7365 
 4068      6374696F 
 4068      6E73202D 
 4068      66646174 
 4069 04cb 6F6E7374 		.ascii	"onstant\000"
 4069      616E7400 
 4070              	.LASF33:
 4071 04d3 5F666C6F 		.ascii	"_flock_t\000"
 4071      636B5F74 
 4071      00
 4072              	.LASF45:
 4073 04dc 5F5F746D 		.ascii	"__tm_mon\000"
 4073      5F6D6F6E 
 4073      00
 4074              	.LASF55:
 4075 04e5 5F617465 		.ascii	"_atexit\000"
 4075      78697400 
 4076              	.LASF133:
 4077 04ed 7375626F 		.ascii	"suboptarg\000"
 4077      70746172 
 4077      6700
 4078              	.LASF87:
 4079 04f7 5F5F7364 		.ascii	"__sdidinit\000"
 4079      6964696E 
 4079      697400
 4080              	.LASF25:
 4081 0502 5F6F6666 		.ascii	"_off_t\000"
 4081      5F7400
 4082              	.LASF182:
 4083 0509 5F5F656E 		.ascii	"__enable_irq\000"
ARM GAS  /tmp/ccLuO05w.s 			page 104


 4083      61626C65 
 4083      5F697271 
 4083      00
 4084              	.LASF155:
 4085 0516 705F756C 		.ascii	"p_ul_buf\000"
 4085      5F627566 
 4085      00
 4086              	.LASF139:
 4087 051f 666C6F61 		.ascii	"float\000"
 4087      7400
 4088              	.LASF135:
 4089 0525 675F696E 		.ascii	"g_interrupt_enabled\000"
 4089      74657272 
 4089      7570745F 
 4089      656E6162 
 4089      6C656400 
 4090              	.LASF160:
 4091 0539 6566635F 		.ascii	"efc_get_status\000"
 4091      6765745F 
 4091      73746174 
 4091      757300
 4092              	.LASF181:
 4093 0548 5F5F6469 		.ascii	"__disable_irq\000"
 4093      7361626C 
 4093      655F6972 
 4093      7100
 4094              	.LASF141:
 4095 0556 4546435F 		.ascii	"EFC_RC_OK\000"
 4095      52435F4F 
 4095      4B00
 4096              	.LASF24:
 4097 0560 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 4097      4B5F5245 
 4097      43555253 
 4097      4956455F 
 4097      5400
 4098              	.LASF66:
 4099 0572 5F726561 		.ascii	"_read\000"
 4099      6400
 4100              	.LASF145:
 4101 0578 4546435F 		.ascii	"EFC_RC_INVALID\000"
 4101      52435F49 
 4101      4E56414C 
 4101      494400
 4102              	.LASF136:
 4103 0587 5F426F6F 		.ascii	"_Bool\000"
 4103      6C00
 4104              	.LASF11:
 4105 058d 696E7433 		.ascii	"int32_t\000"
 4105      325F7400 
 4106              	.LASF52:
 4107 0595 5F64736F 		.ascii	"_dso_handle\000"
 4107      5F68616E 
 4107      646C6500 
 4108              	.LASF95:
 4109 05a1 5F6E6577 		.ascii	"_new\000"
 4109      00
ARM GAS  /tmp/ccLuO05w.s 			page 105


 4110              	.LASF183:
 4111 05a6 5F5F444D 		.ascii	"__DMB\000"
 4111      4200
 4112              	.LASF116:
 4113 05ac 5F6D626C 		.ascii	"_mblen_state\000"
 4113      656E5F73 
 4113      74617465 
 4113      00
 4114              	.LASF48:
 4115 05b9 5F5F746D 		.ascii	"__tm_yday\000"
 4115      5F796461 
 4115      7900
 4116              	.LASF58:
 4117 05c3 5F5F7362 		.ascii	"__sbuf\000"
 4117      756600
 4118              	.LASF77:
 4119 05ca 5F666C61 		.ascii	"_flags2\000"
 4119      67733200 
 4120              	.LASF92:
 4121 05d2 5F667265 		.ascii	"_freelist\000"
 4121      656C6973 
 4121      7400
 4122              	.LASF101:
 4123 05dc 5F5F4649 		.ascii	"__FILE\000"
 4123      4C4500
 4124              	.LASF32:
 4125 05e3 5F6D6273 		.ascii	"_mbstate_t\000"
 4125      74617465 
 4125      5F7400
 4126              	.LASF61:
 4127 05ee 5F5F7346 		.ascii	"__sFILE\000"
 4127      494C4500 
 4128              	.LASF114:
 4129 05f6 5F72616E 		.ascii	"_rand_next\000"
 4129      645F6E65 
 4129      787400
 4130              	.LASF146:
 4131 0601 4546435F 		.ascii	"EFC_RC_NOT_SUPPORT\000"
 4131      52435F4E 
 4131      4F545F53 
 4131      5550504F 
 4131      525400
 4132              	.LASF104:
 4133 0614 5F696F62 		.ascii	"_iobs\000"
 4133      7300
 4134              	.LASF83:
 4135 061a 5F696E63 		.ascii	"_inc\000"
 4135      00
 4136              	.LASF56:
 4137 061f 5F696E64 		.ascii	"_ind\000"
 4137      00
 4138              	.LASF86:
 4139 0624 5F637572 		.ascii	"_current_locale\000"
 4139      72656E74 
 4139      5F6C6F63 
 4139      616C6500 
 4140              	.LASF88:
ARM GAS  /tmp/ccLuO05w.s 			page 106


 4141 0634 5F5F636C 		.ascii	"__cleanup\000"
 4141      65616E75 
 4141      7000
 4142              	.LASF36:
 4143 063e 5F6D6178 		.ascii	"_maxwds\000"
 4143      77647300 
 4144              	.LASF78:
 4145 0646 5F726565 		.ascii	"_reent\000"
 4145      6E7400
 4146              	.LASF106:
 4147 064d 5F736565 		.ascii	"_seed\000"
 4147      6400
 4148              	.LASF30:
 4149 0653 5F5F636F 		.ascii	"__count\000"
 4149      756E7400 
 4150              	.LASF12:
 4151 065b 75696E74 		.ascii	"uint32_t\000"
 4151      33325F74 
 4151      00
 4152              	.LASF68:
 4153 0664 5F736565 		.ascii	"_seek\000"
 4153      6B00
 4154              	.LASF147:
 4155 066a 705F6566 		.ascii	"p_efc\000"
 4155      6300
 4156              	.LASF163:
 4157 0670 756C5F61 		.ascii	"ul_argument\000"
 4157      7267756D 
 4157      656E7400 
 4158              	.LASF26:
 4159 067c 5F66706F 		.ascii	"_fpos_t\000"
 4159      735F7400 
 4160              	.LASF50:
 4161 0684 5F6F6E5F 		.ascii	"_on_exit_args\000"
 4161      65786974 
 4161      5F617267 
 4161      7300
 4162              	.LASF23:
 4163 0692 45454643 		.ascii	"EEFC_WPMR\000"
 4163      5F57504D 
 4163      5200
 4164              	.LASF79:
 4165 069c 5F657272 		.ascii	"_errno\000"
 4165      6E6F00
 4166              	.LASF100:
 4167 06a3 63686172 		.ascii	"char\000"
 4167      00
 4168              	.LASF72:
 4169 06a8 5F626C6B 		.ascii	"_blksize\000"
 4169      73697A65 
 4169      00
 4170              	.LASF60:
 4171 06b1 5F73697A 		.ascii	"_size\000"
 4171      6500
 4172              	.LASF0:
 4173 06b7 756E7369 		.ascii	"unsigned int\000"
 4173      676E6564 
ARM GAS  /tmp/ccLuO05w.s 			page 107


 4173      20696E74 
 4173      00
 4174              	.LASF148:
 4175 06c4 756C5F66 		.ascii	"ul_fcr\000"
 4175      637200
 4176              	.LASF6:
 4177 06cb 5F5F696E 		.ascii	"__int32_t\000"
 4177      7433325F 
 4177      7400
 4178              	.LASF16:
 4179 06d5 45454643 		.ascii	"EEFC_FMR\000"
 4179      5F464D52 
 4179      00
 4180              	.LASF35:
 4181 06de 5F6E6578 		.ascii	"_next\000"
 4181      7400
 4182              	.LASF110:
 4183 06e4 5F737472 		.ascii	"_strtok_last\000"
 4183      746F6B5F 
 4183      6C617374 
 4183      00
 4184              	.LASF169:
 4185 06f1 6566635F 		.ascii	"efc_disable_write_protection\000"
 4185      64697361 
 4185      626C655F 
 4185      77726974 
 4185      655F7072 
 4186              	.LASF53:
 4187 070e 5F666E74 		.ascii	"_fntypes\000"
 4187      79706573 
 4187      00
 4188              	.LASF127:
 4189 0717 5F685F65 		.ascii	"_h_errno\000"
 4189      72726E6F 
 4189      00
 4190              	.LASF2:
 4191 0720 756E7369 		.ascii	"unsigned char\000"
 4191      676E6564 
 4191      20636861 
 4191      7200
 4192              	.LASF42:
 4193 072e 5F5F746D 		.ascii	"__tm_min\000"
 4193      5F6D696E 
 4193      00
 4194              	.LASF108:
 4195 0737 5F616464 		.ascii	"_add\000"
 4195      00
 4196              	.LASF34:
 4197 073c 5F5F554C 		.ascii	"__ULong\000"
 4197      6F6E6700 
 4198              	.LASF151:
 4199 0744 6566635F 		.ascii	"efc_perform_fcr\000"
 4199      70657266 
 4199      6F726D5F 
 4199      66637200 
 4200              	.LASF132:
 4201 0754 5F676C6F 		.ascii	"_global_impure_ptr\000"
ARM GAS  /tmp/ccLuO05w.s 			page 108


 4201      62616C5F 
 4201      696D7075 
 4201      72655F70 
 4201      747200
 4202              	.LASF38:
 4203 0767 5F776473 		.ascii	"_wds\000"
 4203      00
 4204              	.LASF171:
 4205 076c 6566635F 		.ascii	"efc_disable_frdy_interrupt\000"
 4205      64697361 
 4205      626C655F 
 4205      66726479 
 4205      5F696E74 
 4206              	.LASF81:
 4207 0787 5F737464 		.ascii	"_stdout\000"
 4207      6F757400 
 4208              	.LASF47:
 4209 078f 5F5F746D 		.ascii	"__tm_wday\000"
 4209      5F776461 
 4209      7900
 4210              	.LASF102:
 4211 0799 5F676C75 		.ascii	"_glue\000"
 4211      6500
 4212              	.LASF80:
 4213 079f 5F737464 		.ascii	"_stdin\000"
 4213      696E00
 4214              	.LASF166:
 4215 07a6 6566635F 		.ascii	"efc_write_fmr\000"
 4215      77726974 
 4215      655F666D 
 4215      7200
 4216              	.LASF142:
 4217 07b4 4546435F 		.ascii	"EFC_RC_YES\000"
 4217      52435F59 
 4217      455300
 4218              	.LASF119:
 4219 07bf 5F6C3634 		.ascii	"_l64a_buf\000"
 4219      615F6275 
 4219      6600
 4220              	.LASF158:
 4221 07c9 705F756C 		.ascii	"p_ul_data\000"
 4221      5F646174 
 4221      6100
 4222              	.LASF97:
 4223 07d3 5F736967 		.ascii	"_sig_func\000"
 4223      5F66756E 
 4223      6300
 4224              	.LASF177:
 4225 07dd 666C6167 		.ascii	"flags\000"
 4225      7300
 4226              	.LASF156:
 4227 07e3 756C5F73 		.ascii	"ul_size\000"
 4227      697A6500 
 4228              	.LASF137:
 4229 07eb 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 4229      6972715F 
 4229      63726974 
ARM GAS  /tmp/ccLuO05w.s 			page 109


 4229      6963616C 
 4229      5F736563 
 4230              	.LASF71:
 4231 080c 5F6E6275 		.ascii	"_nbuf\000"
 4231      6600
 4232              	.LASF130:
 4233 0812 5F756E75 		.ascii	"_unused\000"
 4233      73656400 
 4234              	.LASF85:
 4235 081a 5F637572 		.ascii	"_current_category\000"
 4235      72656E74 
 4235      5F636174 
 4235      65676F72 
 4235      7900
 4236              	.LASF186:
 4237 082c 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70_RTOS"
 4237      652F746F 
 4237      72626A6F 
 4237      726E2F65 
 4237      636C6970 
 4238 085f 00       		.ascii	"\000"
 4239              	.LASF49:
 4240 0860 5F5F746D 		.ascii	"__tm_isdst\000"
 4240      5F697364 
 4240      737400
 4241              	.LASF112:
 4242 086b 5F6C6F63 		.ascii	"_localtime_buf\000"
 4242      616C7469 
 4242      6D655F62 
 4242      756600
 4243              	.LASF69:
 4244 087a 5F636C6F 		.ascii	"_close\000"
 4244      736500
 4245              	.LASF115:
 4246 0881 5F723438 		.ascii	"_r48\000"
 4246      00
 4247              	.LASF157:
 4248 0886 756C5F63 		.ascii	"ul_cnt\000"
 4248      6E7400
 4249              	.LASF117:
 4250 088d 5F6D6274 		.ascii	"_mbtowc_state\000"
 4250      6F77635F 
 4250      73746174 
 4250      6500
 4251              	.LASF91:
 4252 089b 5F703573 		.ascii	"_p5s\000"
 4252      00
 4253              	.LASF31:
 4254 08a0 5F5F7661 		.ascii	"__value\000"
 4254      6C756500 
 4255              	.LASF164:
 4256 08a8 72657375 		.ascii	"result\000"
 4256      6C7400
 4257              	.LASF176:
 4258 08af 756C5F61 		.ascii	"ul_access_mode\000"
 4258      63636573 
 4258      735F6D6F 
ARM GAS  /tmp/ccLuO05w.s 			page 110


 4258      646500
 4259              	.LASF44:
 4260 08be 5F5F746D 		.ascii	"__tm_mday\000"
 4260      5F6D6461 
 4260      7900
 4261              	.LASF179:
 4262 08c8 6370755F 		.ascii	"cpu_irq_save\000"
 4262      6972715F 
 4262      73617665 
 4262      00
 4263              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
