ARM GAS  /tmp/ccRqcMej.s 			page 1


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
  12              		.file	"sleep.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.pmc_sleep,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	pmc_sleep
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	pmc_sleep, %function
  25              	pmc_sleep:
  26              	.LFB144:
  27              		.file 1 "../asf/sam/drivers/pmc/sleep.c"
   1:../asf/sam/drivers/pmc/sleep.c **** /**
   2:../asf/sam/drivers/pmc/sleep.c ****  * \file
   3:../asf/sam/drivers/pmc/sleep.c ****  *
   4:../asf/sam/drivers/pmc/sleep.c ****  * \brief Sleep mode access
   5:../asf/sam/drivers/pmc/sleep.c ****  *
   6:../asf/sam/drivers/pmc/sleep.c ****  * Copyright (c) 2012-2016 Atmel Corporation. All rights reserved.
   7:../asf/sam/drivers/pmc/sleep.c ****  *
   8:../asf/sam/drivers/pmc/sleep.c ****  * \asf_license_start
   9:../asf/sam/drivers/pmc/sleep.c ****  *
  10:../asf/sam/drivers/pmc/sleep.c ****  * \page License
  11:../asf/sam/drivers/pmc/sleep.c ****  *
  12:../asf/sam/drivers/pmc/sleep.c ****  * Redistribution and use in source and binary forms, with or without
  13:../asf/sam/drivers/pmc/sleep.c ****  * modification, are permitted provided that the following conditions are met:
  14:../asf/sam/drivers/pmc/sleep.c ****  *
  15:../asf/sam/drivers/pmc/sleep.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../asf/sam/drivers/pmc/sleep.c ****  *    this list of conditions and the following disclaimer.
  17:../asf/sam/drivers/pmc/sleep.c ****  *
  18:../asf/sam/drivers/pmc/sleep.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../asf/sam/drivers/pmc/sleep.c ****  *    this list of conditions and the following disclaimer in the documentation
  20:../asf/sam/drivers/pmc/sleep.c ****  *    and/or other materials provided with the distribution.
  21:../asf/sam/drivers/pmc/sleep.c ****  *
  22:../asf/sam/drivers/pmc/sleep.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../asf/sam/drivers/pmc/sleep.c ****  *    from this software without specific prior written permission.
  24:../asf/sam/drivers/pmc/sleep.c ****  *
  25:../asf/sam/drivers/pmc/sleep.c ****  * 4. This software may only be redistributed and used in connection with an
  26:../asf/sam/drivers/pmc/sleep.c ****  *    Atmel microcontroller product.
  27:../asf/sam/drivers/pmc/sleep.c ****  *
  28:../asf/sam/drivers/pmc/sleep.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../asf/sam/drivers/pmc/sleep.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../asf/sam/drivers/pmc/sleep.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
ARM GAS  /tmp/ccRqcMej.s 			page 2


  31:../asf/sam/drivers/pmc/sleep.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:../asf/sam/drivers/pmc/sleep.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../asf/sam/drivers/pmc/sleep.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../asf/sam/drivers/pmc/sleep.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../asf/sam/drivers/pmc/sleep.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../asf/sam/drivers/pmc/sleep.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../asf/sam/drivers/pmc/sleep.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../asf/sam/drivers/pmc/sleep.c ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../asf/sam/drivers/pmc/sleep.c ****  *
  40:../asf/sam/drivers/pmc/sleep.c ****  * \asf_license_stop
  41:../asf/sam/drivers/pmc/sleep.c ****  *
  42:../asf/sam/drivers/pmc/sleep.c ****  */
  43:../asf/sam/drivers/pmc/sleep.c **** /*
  44:../asf/sam/drivers/pmc/sleep.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../asf/sam/drivers/pmc/sleep.c ****  */
  46:../asf/sam/drivers/pmc/sleep.c **** 
  47:../asf/sam/drivers/pmc/sleep.c **** #include <compiler.h>
  48:../asf/sam/drivers/pmc/sleep.c **** #include "sleep.h"
  49:../asf/sam/drivers/pmc/sleep.c **** 
  50:../asf/sam/drivers/pmc/sleep.c **** /* SAM3,SAM4,SAMG,SAMV,SAMS and SAME series */
  51:../asf/sam/drivers/pmc/sleep.c **** #if (SAM3S || SAM3N || SAM3XA || SAM3U || SAM4S || SAM4E || SAM4N || SAM4C || \
  52:../asf/sam/drivers/pmc/sleep.c **** 		SAM4CM || SAMG || SAM4CP || SAMV71 || SAMV70 || SAMS70 || SAME70)
  53:../asf/sam/drivers/pmc/sleep.c **** # include "pmc.h"
  54:../asf/sam/drivers/pmc/sleep.c **** # include "board.h"
  55:../asf/sam/drivers/pmc/sleep.c **** 
  56:../asf/sam/drivers/pmc/sleep.c **** /* Checking board configuration of main clock xtal statup time */
  57:../asf/sam/drivers/pmc/sleep.c **** #if !defined(BOARD_OSC_STARTUP_US)
  58:../asf/sam/drivers/pmc/sleep.c **** # warning The board main clock xtal statup time has not been defined. Using default settings.
  59:../asf/sam/drivers/pmc/sleep.c **** # define BOARD_OSC_STARTUP_US    (15625UL)
  60:../asf/sam/drivers/pmc/sleep.c **** #endif
  61:../asf/sam/drivers/pmc/sleep.c **** 
  62:../asf/sam/drivers/pmc/sleep.c **** #if !defined(EFC0)
  63:../asf/sam/drivers/pmc/sleep.c **** # define EFC0 EFC
  64:../asf/sam/drivers/pmc/sleep.c **** #endif
  65:../asf/sam/drivers/pmc/sleep.c **** 
  66:../asf/sam/drivers/pmc/sleep.c **** /**
  67:../asf/sam/drivers/pmc/sleep.c ****  * Save clock settings and shutdown PLLs
  68:../asf/sam/drivers/pmc/sleep.c ****  */
  69:../asf/sam/drivers/pmc/sleep.c **** __always_inline static void pmc_save_clock_settings(
  70:../asf/sam/drivers/pmc/sleep.c **** 		uint32_t *p_osc_setting,
  71:../asf/sam/drivers/pmc/sleep.c **** 		uint32_t *p_pll0_setting,
  72:../asf/sam/drivers/pmc/sleep.c **** 		uint32_t *p_pll1_setting,
  73:../asf/sam/drivers/pmc/sleep.c **** 		uint32_t *p_mck_setting,
  74:../asf/sam/drivers/pmc/sleep.c **** 		uint32_t *p_fmr_setting,
  75:../asf/sam/drivers/pmc/sleep.c **** #if defined(EFC1)
  76:../asf/sam/drivers/pmc/sleep.c **** 		uint32_t *p_fmr_setting1,
  77:../asf/sam/drivers/pmc/sleep.c **** #endif
  78:../asf/sam/drivers/pmc/sleep.c **** 		const bool disable_xtal)
  79:../asf/sam/drivers/pmc/sleep.c **** {
  80:../asf/sam/drivers/pmc/sleep.c **** 	uint32_t mor  = PMC->CKGR_MOR;
  81:../asf/sam/drivers/pmc/sleep.c **** 	uint32_t mckr = PMC->PMC_MCKR;
  82:../asf/sam/drivers/pmc/sleep.c **** 	uint32_t fmr  = EFC0->EEFC_FMR;
  83:../asf/sam/drivers/pmc/sleep.c **** # if defined(EFC1)
  84:../asf/sam/drivers/pmc/sleep.c **** 	uint32_t fmr1 = EFC1->EEFC_FMR;
  85:../asf/sam/drivers/pmc/sleep.c **** # endif
  86:../asf/sam/drivers/pmc/sleep.c **** 
  87:../asf/sam/drivers/pmc/sleep.c **** 	if (p_osc_setting) {
ARM GAS  /tmp/ccRqcMej.s 			page 3


  88:../asf/sam/drivers/pmc/sleep.c **** 		*p_osc_setting = mor;
  89:../asf/sam/drivers/pmc/sleep.c **** 	}
  90:../asf/sam/drivers/pmc/sleep.c **** 	if (p_pll0_setting) {
  91:../asf/sam/drivers/pmc/sleep.c **** 		*p_pll0_setting = PMC->CKGR_PLLAR;
  92:../asf/sam/drivers/pmc/sleep.c **** 	}
  93:../asf/sam/drivers/pmc/sleep.c **** 	if (p_pll1_setting) {
  94:../asf/sam/drivers/pmc/sleep.c **** #if (SAM3S || SAM4S || SAM4C || SAM4CM || SAM4CP)
  95:../asf/sam/drivers/pmc/sleep.c **** 		*p_pll1_setting = PMC->CKGR_PLLBR;
  96:../asf/sam/drivers/pmc/sleep.c **** #elif (SAM3U || SAM3XA)
  97:../asf/sam/drivers/pmc/sleep.c **** 		*p_pll1_setting = PMC->CKGR_UCKR;
  98:../asf/sam/drivers/pmc/sleep.c **** #else
  99:../asf/sam/drivers/pmc/sleep.c **** 		*p_pll1_setting = 0;
 100:../asf/sam/drivers/pmc/sleep.c **** #endif
 101:../asf/sam/drivers/pmc/sleep.c **** 	}
 102:../asf/sam/drivers/pmc/sleep.c **** 	if (p_mck_setting) {
 103:../asf/sam/drivers/pmc/sleep.c **** 		*p_mck_setting  = mckr;
 104:../asf/sam/drivers/pmc/sleep.c **** 	}
 105:../asf/sam/drivers/pmc/sleep.c **** 	if (p_fmr_setting) {
 106:../asf/sam/drivers/pmc/sleep.c **** 		*p_fmr_setting  = fmr;
 107:../asf/sam/drivers/pmc/sleep.c **** 	}
 108:../asf/sam/drivers/pmc/sleep.c **** #if defined(EFC1)
 109:../asf/sam/drivers/pmc/sleep.c **** 	if (p_fmr_setting1) {
 110:../asf/sam/drivers/pmc/sleep.c **** 		*p_fmr_setting1 = fmr1;
 111:../asf/sam/drivers/pmc/sleep.c **** 	}
 112:../asf/sam/drivers/pmc/sleep.c **** #endif
 113:../asf/sam/drivers/pmc/sleep.c **** 
 114:../asf/sam/drivers/pmc/sleep.c **** 	/* Enable FAST RC */
 115:../asf/sam/drivers/pmc/sleep.c **** 	PMC->CKGR_MOR = CKGR_MOR_KEY_PASSWD | mor | CKGR_MOR_MOSCRCEN;
 116:../asf/sam/drivers/pmc/sleep.c **** 	/* if MCK source is PLL, switch to mainck */
 117:../asf/sam/drivers/pmc/sleep.c **** 	if ((mckr & PMC_MCKR_CSS_Msk) > PMC_MCKR_CSS_MAIN_CLK) {
 118:../asf/sam/drivers/pmc/sleep.c **** 		/* MCK -> MAINCK */
 119:../asf/sam/drivers/pmc/sleep.c **** 		mckr = (mckr & (~PMC_MCKR_CSS_Msk)) | PMC_MCKR_CSS_MAIN_CLK;
 120:../asf/sam/drivers/pmc/sleep.c **** 		PMC->PMC_MCKR = mckr;
 121:../asf/sam/drivers/pmc/sleep.c **** 		while(!(PMC->PMC_SR & PMC_SR_MCKRDY));
 122:../asf/sam/drivers/pmc/sleep.c **** 	}
 123:../asf/sam/drivers/pmc/sleep.c **** 	/* MCK prescale -> 1 */
 124:../asf/sam/drivers/pmc/sleep.c **** 	if (mckr & PMC_MCKR_PRES_Msk) {
 125:../asf/sam/drivers/pmc/sleep.c **** 		mckr = (mckr & (~PMC_MCKR_PRES_Msk));
 126:../asf/sam/drivers/pmc/sleep.c **** 		PMC->PMC_MCKR = mckr;
 127:../asf/sam/drivers/pmc/sleep.c **** 		while(!(PMC->PMC_SR & PMC_SR_MCKRDY));
 128:../asf/sam/drivers/pmc/sleep.c **** 	}
 129:../asf/sam/drivers/pmc/sleep.c **** 	/* Disable PLLs */
 130:../asf/sam/drivers/pmc/sleep.c **** 	pmc_disable_pllack();
 131:../asf/sam/drivers/pmc/sleep.c **** #if (SAM3S || SAM4S || SAM4C || SAM4CM || SAM4CP)
 132:../asf/sam/drivers/pmc/sleep.c **** 	pmc_disable_pllbck();
 133:../asf/sam/drivers/pmc/sleep.c **** #elif (SAM3U || SAM3XA)
 134:../asf/sam/drivers/pmc/sleep.c **** 	pmc_disable_upll_clock();
 135:../asf/sam/drivers/pmc/sleep.c **** #endif
 136:../asf/sam/drivers/pmc/sleep.c **** 
 137:../asf/sam/drivers/pmc/sleep.c **** 	/* Prepare for entering WAIT mode */
 138:../asf/sam/drivers/pmc/sleep.c **** 	/* Wait fast RC ready */
 139:../asf/sam/drivers/pmc/sleep.c **** 	while (!(PMC->PMC_SR & PMC_SR_MOSCRCS));
 140:../asf/sam/drivers/pmc/sleep.c **** 
 141:../asf/sam/drivers/pmc/sleep.c **** 	/* Switch mainck to FAST RC */
 142:../asf/sam/drivers/pmc/sleep.c **** #if SAMG
 143:../asf/sam/drivers/pmc/sleep.c **** 	/**
 144:../asf/sam/drivers/pmc/sleep.c **** 	 * For the sleepwalking feature, we need an accurate RC clock. Only 24M and
ARM GAS  /tmp/ccRqcMej.s 			page 4


 145:../asf/sam/drivers/pmc/sleep.c **** 	 * 16M are trimmed in production. Here we select the 24M.
 146:../asf/sam/drivers/pmc/sleep.c **** 	 * And so wait state need to be 1.
 147:../asf/sam/drivers/pmc/sleep.c **** 	 */
 148:../asf/sam/drivers/pmc/sleep.c **** 	EFC0->EEFC_FMR = (fmr & (~EEFC_FMR_FWS_Msk)) | EEFC_FMR_FWS(1);
 149:../asf/sam/drivers/pmc/sleep.c **** 
 150:../asf/sam/drivers/pmc/sleep.c **** 	PMC->CKGR_MOR = (PMC->CKGR_MOR & ~CKGR_MOR_MOSCSEL) | CKGR_MOR_MOSCRCF_24_MHz |
 151:../asf/sam/drivers/pmc/sleep.c **** 			CKGR_MOR_KEY_PASSWD;
 152:../asf/sam/drivers/pmc/sleep.c **** #else
 153:../asf/sam/drivers/pmc/sleep.c **** 	PMC->CKGR_MOR = (PMC->CKGR_MOR & ~CKGR_MOR_MOSCSEL) |
 154:../asf/sam/drivers/pmc/sleep.c **** 			CKGR_MOR_KEY_PASSWD;
 155:../asf/sam/drivers/pmc/sleep.c **** #endif
 156:../asf/sam/drivers/pmc/sleep.c **** 	while (!(PMC->PMC_SR & PMC_SR_MOSCSELS));
 157:../asf/sam/drivers/pmc/sleep.c **** 
 158:../asf/sam/drivers/pmc/sleep.c **** #if (!SAMG)
 159:../asf/sam/drivers/pmc/sleep.c **** 	/* FWS update */
 160:../asf/sam/drivers/pmc/sleep.c **** 	EFC0->EEFC_FMR = fmr & (~EEFC_FMR_FWS_Msk);
 161:../asf/sam/drivers/pmc/sleep.c **** #if defined(EFC1)
 162:../asf/sam/drivers/pmc/sleep.c **** 	EFC1->EEFC_FMR = fmr1 & (~EEFC_FMR_FWS_Msk);
 163:../asf/sam/drivers/pmc/sleep.c **** #endif
 164:../asf/sam/drivers/pmc/sleep.c **** #endif
 165:../asf/sam/drivers/pmc/sleep.c **** 
 166:../asf/sam/drivers/pmc/sleep.c **** 	/* Disable XTALs */
 167:../asf/sam/drivers/pmc/sleep.c **** 	if (disable_xtal) {
 168:../asf/sam/drivers/pmc/sleep.c **** 		PMC->CKGR_MOR = (PMC->CKGR_MOR & ~CKGR_MOR_MOSCXTEN) |
 169:../asf/sam/drivers/pmc/sleep.c **** 				CKGR_MOR_KEY_PASSWD;
 170:../asf/sam/drivers/pmc/sleep.c **** 	}
 171:../asf/sam/drivers/pmc/sleep.c **** }
 172:../asf/sam/drivers/pmc/sleep.c **** 
 173:../asf/sam/drivers/pmc/sleep.c **** /**
 174:../asf/sam/drivers/pmc/sleep.c ****  * Restore clock settings
 175:../asf/sam/drivers/pmc/sleep.c ****  */
 176:../asf/sam/drivers/pmc/sleep.c **** __always_inline static void pmc_restore_clock_setting(
 177:../asf/sam/drivers/pmc/sleep.c **** 		const uint32_t osc_setting,
 178:../asf/sam/drivers/pmc/sleep.c **** 		const uint32_t pll0_setting,
 179:../asf/sam/drivers/pmc/sleep.c **** 		const uint32_t pll1_setting,
 180:../asf/sam/drivers/pmc/sleep.c **** 		const uint32_t mck_setting,
 181:../asf/sam/drivers/pmc/sleep.c **** 		const uint32_t fmr_setting
 182:../asf/sam/drivers/pmc/sleep.c **** #if defined(EFC1)
 183:../asf/sam/drivers/pmc/sleep.c **** 		, const uint32_t fmr_setting1
 184:../asf/sam/drivers/pmc/sleep.c **** #endif
 185:../asf/sam/drivers/pmc/sleep.c **** 		)
 186:../asf/sam/drivers/pmc/sleep.c **** {
 187:../asf/sam/drivers/pmc/sleep.c **** 	uint32_t mckr;
 188:../asf/sam/drivers/pmc/sleep.c **** 	uint32_t pll_sr = 0;
 189:../asf/sam/drivers/pmc/sleep.c **** 
 190:../asf/sam/drivers/pmc/sleep.c **** 	/* Switch mainck to external xtal */
 191:../asf/sam/drivers/pmc/sleep.c **** 	if (CKGR_MOR_MOSCXTBY == (osc_setting & CKGR_MOR_MOSCXTBY)) {
 192:../asf/sam/drivers/pmc/sleep.c **** 		/* Bypass mode */
 193:../asf/sam/drivers/pmc/sleep.c **** 		PMC->CKGR_MOR = (PMC->CKGR_MOR & ~CKGR_MOR_MOSCXTEN) |
 194:../asf/sam/drivers/pmc/sleep.c **** 				CKGR_MOR_KEY_PASSWD | CKGR_MOR_MOSCXTBY |
 195:../asf/sam/drivers/pmc/sleep.c **** 				CKGR_MOR_MOSCSEL;
 196:../asf/sam/drivers/pmc/sleep.c **** 		PMC->CKGR_MOR = (PMC->CKGR_MOR & ~CKGR_MOR_MOSCRCEN &
 197:../asf/sam/drivers/pmc/sleep.c **** 					~CKGR_MOR_MOSCRCF_Msk)
 198:../asf/sam/drivers/pmc/sleep.c **** 				| CKGR_MOR_KEY_PASSWD;
 199:../asf/sam/drivers/pmc/sleep.c **** 	} else if (CKGR_MOR_MOSCXTEN == (osc_setting & CKGR_MOR_MOSCXTEN)) {
 200:../asf/sam/drivers/pmc/sleep.c **** 		/* Enable External XTAL */
 201:../asf/sam/drivers/pmc/sleep.c **** 		if (!(PMC->CKGR_MOR & CKGR_MOR_MOSCXTEN)) {
ARM GAS  /tmp/ccRqcMej.s 			page 5


 202:../asf/sam/drivers/pmc/sleep.c **** 			PMC->CKGR_MOR = (PMC->CKGR_MOR & ~CKGR_MOR_MOSCXTBY) |
 203:../asf/sam/drivers/pmc/sleep.c **** 					CKGR_MOR_KEY_PASSWD | CKGR_MOR_MOSCXTEN;
 204:../asf/sam/drivers/pmc/sleep.c **** 			/* Wait the Xtal to stabilize */
 205:../asf/sam/drivers/pmc/sleep.c **** 			while (!(PMC->PMC_SR & PMC_SR_MOSCXTS));
 206:../asf/sam/drivers/pmc/sleep.c **** 		}
 207:../asf/sam/drivers/pmc/sleep.c **** 		/* Select External XTAL */
 208:../asf/sam/drivers/pmc/sleep.c **** 		if (!(PMC->CKGR_MOR & CKGR_MOR_MOSCSEL)) {
 209:../asf/sam/drivers/pmc/sleep.c **** 			PMC->CKGR_MOR |= CKGR_MOR_KEY_PASSWD | CKGR_MOR_MOSCSEL;
 210:../asf/sam/drivers/pmc/sleep.c **** 			while (!(PMC->PMC_SR & PMC_SR_MOSCSELS));
 211:../asf/sam/drivers/pmc/sleep.c **** 		}
 212:../asf/sam/drivers/pmc/sleep.c **** 		/* Disable Fast RC */
 213:../asf/sam/drivers/pmc/sleep.c **** 		PMC->CKGR_MOR = (PMC->CKGR_MOR & ~CKGR_MOR_MOSCRCEN &
 214:../asf/sam/drivers/pmc/sleep.c **** 						~CKGR_MOR_MOSCRCF_Msk)
 215:../asf/sam/drivers/pmc/sleep.c **** 					| CKGR_MOR_KEY_PASSWD;
 216:../asf/sam/drivers/pmc/sleep.c **** 	}
 217:../asf/sam/drivers/pmc/sleep.c **** 
 218:../asf/sam/drivers/pmc/sleep.c **** 	if (pll0_setting & CKGR_PLLAR_MULA_Msk) {
 219:../asf/sam/drivers/pmc/sleep.c **** #if (SAM4C || SAM4CM || SAMG || SAM4CP)
 220:../asf/sam/drivers/pmc/sleep.c **** 		PMC->CKGR_PLLAR = pll0_setting;
 221:../asf/sam/drivers/pmc/sleep.c **** #else
 222:../asf/sam/drivers/pmc/sleep.c **** 		PMC->CKGR_PLLAR = CKGR_PLLAR_ONE | pll0_setting;
 223:../asf/sam/drivers/pmc/sleep.c **** #endif
 224:../asf/sam/drivers/pmc/sleep.c **** 		pll_sr |= PMC_SR_LOCKA;
 225:../asf/sam/drivers/pmc/sleep.c **** 	}
 226:../asf/sam/drivers/pmc/sleep.c **** #if (SAM3S || SAM4S || SAM4C || SAM4CM || SAM4CP)
 227:../asf/sam/drivers/pmc/sleep.c **** 	if (pll1_setting & CKGR_PLLBR_MULB_Msk) {
 228:../asf/sam/drivers/pmc/sleep.c **** 		PMC->CKGR_PLLBR = pll1_setting;
 229:../asf/sam/drivers/pmc/sleep.c **** 		pll_sr |= PMC_SR_LOCKB;
 230:../asf/sam/drivers/pmc/sleep.c **** 	}
 231:../asf/sam/drivers/pmc/sleep.c **** #elif (SAM3U || SAM3XA)
 232:../asf/sam/drivers/pmc/sleep.c **** 	if (pll1_setting & CKGR_UCKR_UPLLEN) {
 233:../asf/sam/drivers/pmc/sleep.c **** 		PMC->CKGR_UCKR = pll1_setting;
 234:../asf/sam/drivers/pmc/sleep.c **** 		pll_sr |= PMC_SR_LOCKU;
 235:../asf/sam/drivers/pmc/sleep.c **** 	}
 236:../asf/sam/drivers/pmc/sleep.c **** #else
 237:../asf/sam/drivers/pmc/sleep.c **** 	UNUSED(pll1_setting);
 238:../asf/sam/drivers/pmc/sleep.c **** #endif
 239:../asf/sam/drivers/pmc/sleep.c **** 	/* Wait MCK source ready */
 240:../asf/sam/drivers/pmc/sleep.c **** 	switch(mck_setting & PMC_MCKR_CSS_Msk) {
 241:../asf/sam/drivers/pmc/sleep.c **** 	case PMC_MCKR_CSS_PLLA_CLK:
 242:../asf/sam/drivers/pmc/sleep.c **** 		while (!(PMC->PMC_SR & PMC_SR_LOCKA));
 243:../asf/sam/drivers/pmc/sleep.c **** 		break;
 244:../asf/sam/drivers/pmc/sleep.c **** #if (SAM3S || SAM4S || SAM4C || SAM4CM || SAM4CP)
 245:../asf/sam/drivers/pmc/sleep.c **** 	case PMC_MCKR_CSS_PLLB_CLK:
 246:../asf/sam/drivers/pmc/sleep.c **** 		while (!(PMC->PMC_SR & PMC_SR_LOCKB));
 247:../asf/sam/drivers/pmc/sleep.c **** 		break;
 248:../asf/sam/drivers/pmc/sleep.c **** #elif (SAM3U || SAM3XA)
 249:../asf/sam/drivers/pmc/sleep.c **** 	case PMC_MCKR_CSS_UPLL_CLK:
 250:../asf/sam/drivers/pmc/sleep.c **** 		while (!(PMC->PMC_SR & PMC_SR_LOCKU));
 251:../asf/sam/drivers/pmc/sleep.c **** 		break;
 252:../asf/sam/drivers/pmc/sleep.c **** #endif
 253:../asf/sam/drivers/pmc/sleep.c **** 	}
 254:../asf/sam/drivers/pmc/sleep.c **** 
 255:../asf/sam/drivers/pmc/sleep.c **** 	/* Switch to faster clock */
 256:../asf/sam/drivers/pmc/sleep.c **** 	mckr = PMC->PMC_MCKR;
 257:../asf/sam/drivers/pmc/sleep.c **** 
 258:../asf/sam/drivers/pmc/sleep.c **** 	/* Set PRES */
ARM GAS  /tmp/ccRqcMej.s 			page 6


 259:../asf/sam/drivers/pmc/sleep.c **** 	PMC->PMC_MCKR = (mckr & ~PMC_MCKR_PRES_Msk)
 260:../asf/sam/drivers/pmc/sleep.c **** 		| (mck_setting & PMC_MCKR_PRES_Msk);
 261:../asf/sam/drivers/pmc/sleep.c **** 	while (!(PMC->PMC_SR & PMC_SR_MCKRDY));
 262:../asf/sam/drivers/pmc/sleep.c **** 
 263:../asf/sam/drivers/pmc/sleep.c **** 	/* Restore flash wait states */
 264:../asf/sam/drivers/pmc/sleep.c **** 	EFC0->EEFC_FMR = fmr_setting;
 265:../asf/sam/drivers/pmc/sleep.c **** #if defined(EFC1)
 266:../asf/sam/drivers/pmc/sleep.c **** 	EFC1->EEFC_FMR = fmr_setting1;
 267:../asf/sam/drivers/pmc/sleep.c **** #endif
 268:../asf/sam/drivers/pmc/sleep.c **** 
 269:../asf/sam/drivers/pmc/sleep.c **** 	/* Set CSS and others */
 270:../asf/sam/drivers/pmc/sleep.c **** 	PMC->PMC_MCKR = mck_setting;
 271:../asf/sam/drivers/pmc/sleep.c **** 	while (!(PMC->PMC_SR & PMC_SR_MCKRDY));
 272:../asf/sam/drivers/pmc/sleep.c **** 
 273:../asf/sam/drivers/pmc/sleep.c **** 	/* Waiting all restored PLLs ready */
 274:../asf/sam/drivers/pmc/sleep.c **** 	while (!(PMC->PMC_SR & pll_sr));
 275:../asf/sam/drivers/pmc/sleep.c **** }
 276:../asf/sam/drivers/pmc/sleep.c **** 
 277:../asf/sam/drivers/pmc/sleep.c **** /** If clocks are switched for some sleep mode */
 278:../asf/sam/drivers/pmc/sleep.c **** static volatile bool b_is_sleep_clock_used = false;
 279:../asf/sam/drivers/pmc/sleep.c **** /** Callback invoked once when clocks are restored */
 280:../asf/sam/drivers/pmc/sleep.c **** static pmc_callback_wakeup_clocks_restored_t callback_clocks_restored = NULL;
 281:../asf/sam/drivers/pmc/sleep.c **** 
 282:../asf/sam/drivers/pmc/sleep.c **** void pmc_sleep(int sleep_mode)
 283:../asf/sam/drivers/pmc/sleep.c **** {
  28              		.loc 1 283 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              	.LVL0:
  33 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
  34              		.cfi_def_cfa_offset 40
  35              		.cfi_offset 3, -40
  36              		.cfi_offset 4, -36
  37              		.cfi_offset 5, -32
  38              		.cfi_offset 6, -28
  39              		.cfi_offset 7, -24
  40              		.cfi_offset 8, -20
  41              		.cfi_offset 9, -16
  42              		.cfi_offset 10, -12
  43              		.cfi_offset 11, -8
  44              		.cfi_offset 14, -4
 284:../asf/sam/drivers/pmc/sleep.c **** 	switch (sleep_mode) {
  45              		.loc 1 284 0
  46 0004 431E     		subs	r3, r0, #1
  47 0006 042B     		cmp	r3, #4
  48 0008 13D8     		bhi	.L1
  49 000a DFE803F0 		tbb	[pc, r3]
  50              	.L4:
  51 000e B5       		.byte	(.L3-.L4)/2
  52 000f B5       		.byte	(.L3-.L4)/2
  53 0010 14       		.byte	(.L5-.L4)/2
  54 0011 14       		.byte	(.L5-.L4)/2
  55 0012 03       		.byte	(.L6-.L4)/2
  56 0013 00       		.p2align 1
  57              	.L6:
 285:../asf/sam/drivers/pmc/sleep.c **** 	case SAM_PM_SMODE_SLEEP_WFI:
ARM GAS  /tmp/ccRqcMej.s 			page 7


 286:../asf/sam/drivers/pmc/sleep.c **** 	case SAM_PM_SMODE_SLEEP_WFE:
 287:../asf/sam/drivers/pmc/sleep.c **** #if (SAM4S || SAM4E || SAM4N || SAM4C || SAM4CM || SAM4CP || SAMG || SAMV71 || SAMV70 || SAMS70 || 
 288:../asf/sam/drivers/pmc/sleep.c **** 		SCB->SCR &= (uint32_t)~SCR_SLEEPDEEP;
 289:../asf/sam/drivers/pmc/sleep.c **** 		cpu_irq_enable();
 290:../asf/sam/drivers/pmc/sleep.c **** 		__DSB();
 291:../asf/sam/drivers/pmc/sleep.c **** 		__WFI();
 292:../asf/sam/drivers/pmc/sleep.c **** 		break;
 293:../asf/sam/drivers/pmc/sleep.c **** #else
 294:../asf/sam/drivers/pmc/sleep.c **** 		PMC->PMC_FSMR &= (uint32_t)~PMC_FSMR_LPM;
 295:../asf/sam/drivers/pmc/sleep.c **** 		SCB->SCR &= (uint32_t)~SCR_SLEEPDEEP;
 296:../asf/sam/drivers/pmc/sleep.c **** 		cpu_irq_enable();
 297:../asf/sam/drivers/pmc/sleep.c **** 		if (sleep_mode == SAM_PM_SMODE_SLEEP_WFI) {
 298:../asf/sam/drivers/pmc/sleep.c **** 			__DSB();
 299:../asf/sam/drivers/pmc/sleep.c **** 			__WFI();
 300:../asf/sam/drivers/pmc/sleep.c **** 		} else {
 301:../asf/sam/drivers/pmc/sleep.c **** 			__DSB();
 302:../asf/sam/drivers/pmc/sleep.c **** 			__WFE();
 303:../asf/sam/drivers/pmc/sleep.c **** 		}
 304:../asf/sam/drivers/pmc/sleep.c **** 		break;
 305:../asf/sam/drivers/pmc/sleep.c **** #endif
 306:../asf/sam/drivers/pmc/sleep.c **** 
 307:../asf/sam/drivers/pmc/sleep.c **** 	case SAM_PM_SMODE_WAIT_FAST:
 308:../asf/sam/drivers/pmc/sleep.c **** 	case SAM_PM_SMODE_WAIT: {
 309:../asf/sam/drivers/pmc/sleep.c **** 		uint32_t mor, pllr0, pllr1, mckr;
 310:../asf/sam/drivers/pmc/sleep.c **** 		uint32_t fmr;
 311:../asf/sam/drivers/pmc/sleep.c **** #if defined(EFC1)
 312:../asf/sam/drivers/pmc/sleep.c **** 		uint32_t fmr1;
 313:../asf/sam/drivers/pmc/sleep.c **** #endif
 314:../asf/sam/drivers/pmc/sleep.c **** #if (SAM4S || SAM4E || SAM4N || SAM4C || SAM4CM || SAM4CP || SAMG || SAMV71 || SAMV70 || SAMS70 || 
 315:../asf/sam/drivers/pmc/sleep.c **** 		(sleep_mode == SAM_PM_SMODE_WAIT_FAST) ?
 316:../asf/sam/drivers/pmc/sleep.c **** 				pmc_set_flash_in_wait_mode(PMC_FSMR_FLPM_FLASH_STANDBY) :
 317:../asf/sam/drivers/pmc/sleep.c **** 				pmc_set_flash_in_wait_mode(PMC_FSMR_FLPM_FLASH_DEEP_POWERDOWN);
 318:../asf/sam/drivers/pmc/sleep.c **** #endif
 319:../asf/sam/drivers/pmc/sleep.c **** 		cpu_irq_disable();
 320:../asf/sam/drivers/pmc/sleep.c **** 		b_is_sleep_clock_used = true;
 321:../asf/sam/drivers/pmc/sleep.c **** 
 322:../asf/sam/drivers/pmc/sleep.c **** #if (SAM4C || SAM4CM || SAM4CP)
 323:../asf/sam/drivers/pmc/sleep.c **** 		/* Backup the sub-system 1 status and stop sub-system 1 */
 324:../asf/sam/drivers/pmc/sleep.c **** 		uint32_t cpclk_backup = PMC->PMC_SCSR &
 325:../asf/sam/drivers/pmc/sleep.c **** 				(PMC_SCSR_CPCK | PMC_SCSR_CPBMCK);
 326:../asf/sam/drivers/pmc/sleep.c **** 		PMC->PMC_SCDR = cpclk_backup | PMC_SCDR_CPKEY_PASSWD;
 327:../asf/sam/drivers/pmc/sleep.c **** #endif
 328:../asf/sam/drivers/pmc/sleep.c **** 		pmc_save_clock_settings(&mor, &pllr0, &pllr1, &mckr, &fmr,
 329:../asf/sam/drivers/pmc/sleep.c **** #if defined(EFC1)
 330:../asf/sam/drivers/pmc/sleep.c **** 				&fmr1,
 331:../asf/sam/drivers/pmc/sleep.c **** #endif
 332:../asf/sam/drivers/pmc/sleep.c **** 				(sleep_mode == SAM_PM_SMODE_WAIT));
 333:../asf/sam/drivers/pmc/sleep.c **** 
 334:../asf/sam/drivers/pmc/sleep.c **** 		/* Enter wait mode */
 335:../asf/sam/drivers/pmc/sleep.c **** 		cpu_irq_enable();
 336:../asf/sam/drivers/pmc/sleep.c **** 
 337:../asf/sam/drivers/pmc/sleep.c **** 		pmc_enable_waitmode();
 338:../asf/sam/drivers/pmc/sleep.c **** 
 339:../asf/sam/drivers/pmc/sleep.c **** 		cpu_irq_disable();
 340:../asf/sam/drivers/pmc/sleep.c **** 		pmc_restore_clock_setting(mor, pllr0, pllr1, mckr, fmr
 341:../asf/sam/drivers/pmc/sleep.c **** #if defined(EFC1)
 342:../asf/sam/drivers/pmc/sleep.c **** 				, fmr1
ARM GAS  /tmp/ccRqcMej.s 			page 8


 343:../asf/sam/drivers/pmc/sleep.c **** #endif
 344:../asf/sam/drivers/pmc/sleep.c **** 				);
 345:../asf/sam/drivers/pmc/sleep.c **** 
 346:../asf/sam/drivers/pmc/sleep.c **** #if (SAM4C || SAM4CM || SAM4CP)
 347:../asf/sam/drivers/pmc/sleep.c **** 		/* Restore the sub-system 1 */
 348:../asf/sam/drivers/pmc/sleep.c **** 		PMC->PMC_SCER = cpclk_backup | PMC_SCER_CPKEY_PASSWD;
 349:../asf/sam/drivers/pmc/sleep.c **** #endif
 350:../asf/sam/drivers/pmc/sleep.c **** 		b_is_sleep_clock_used = false;
 351:../asf/sam/drivers/pmc/sleep.c **** 		if (callback_clocks_restored) {
 352:../asf/sam/drivers/pmc/sleep.c **** 			callback_clocks_restored();
 353:../asf/sam/drivers/pmc/sleep.c **** 			callback_clocks_restored = NULL;
 354:../asf/sam/drivers/pmc/sleep.c **** 		}
 355:../asf/sam/drivers/pmc/sleep.c **** 		cpu_irq_enable();
 356:../asf/sam/drivers/pmc/sleep.c **** 
 357:../asf/sam/drivers/pmc/sleep.c **** 		break;
 358:../asf/sam/drivers/pmc/sleep.c **** 	}
 359:../asf/sam/drivers/pmc/sleep.c **** #if (!(SAMG51 || SAMG53 || SAMG54))
 360:../asf/sam/drivers/pmc/sleep.c **** 	case SAM_PM_SMODE_BACKUP:
 361:../asf/sam/drivers/pmc/sleep.c **** 		SCB->SCR |= SCR_SLEEPDEEP;
  58              		.loc 1 361 0
  59 0014 774A     		ldr	r2, .L65
 362:../asf/sam/drivers/pmc/sleep.c **** #if (SAM4S || SAM4E || SAM4N || SAM4C || SAM4CM || SAM4CP || SAMG55 || SAMV71 || SAMV70 || SAMS70 |
 363:../asf/sam/drivers/pmc/sleep.c **** 		SUPC->SUPC_CR = SUPC_CR_KEY_PASSWD | SUPC_CR_VROFF_STOP_VREG;
 364:../asf/sam/drivers/pmc/sleep.c **** 		cpu_irq_enable();
  60              		.loc 1 364 0
  61 0016 0120     		movs	r0, #1
  62              	.LVL1:
 363:../asf/sam/drivers/pmc/sleep.c **** 		cpu_irq_enable();
  63              		.loc 1 363 0
  64 0018 774C     		ldr	r4, .L65+4
 361:../asf/sam/drivers/pmc/sleep.c **** #if (SAM4S || SAM4E || SAM4N || SAM4C || SAM4CM || SAM4CP || SAMG55 || SAMV71 || SAMV70 || SAMS70 |
  65              		.loc 1 361 0
  66 001a 1369     		ldr	r3, [r2, #16]
  67              	.LVL2:
 363:../asf/sam/drivers/pmc/sleep.c **** 		cpu_irq_enable();
  68              		.loc 1 363 0
  69 001c 774D     		ldr	r5, .L65+8
 361:../asf/sam/drivers/pmc/sleep.c **** #if (SAM4S || SAM4E || SAM4N || SAM4C || SAM4CM || SAM4CP || SAMG55 || SAMV71 || SAMV70 || SAMS70 |
  70              		.loc 1 361 0
  71 001e 43F00403 		orr	r3, r3, #4
  72              		.loc 1 364 0
  73 0022 7749     		ldr	r1, .L65+12
 361:../asf/sam/drivers/pmc/sleep.c **** #if (SAM4S || SAM4E || SAM4N || SAM4C || SAM4CM || SAM4CP || SAMG55 || SAMV71 || SAMV70 || SAMS70 |
  74              		.loc 1 361 0
  75 0024 1361     		str	r3, [r2, #16]
 363:../asf/sam/drivers/pmc/sleep.c **** 		cpu_irq_enable();
  76              		.loc 1 363 0
  77 0026 2560     		str	r5, [r4]
  78              		.loc 1 364 0
  79 0028 0870     		strb	r0, [r1]
  80              	.LBB41:
  81              	.LBB42:
  82              		.file 2 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h"
   1:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /**************************************************************************//**
   2:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * @file     core_cmInstr.h
   3:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * @brief    CMSIS Cortex-M Core Instruction Access Header File
   4:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * @version  V4.00
ARM GAS  /tmp/ccRqcMej.s 			page 9


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
ARM GAS  /tmp/ccRqcMej.s 			page 10


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
ARM GAS  /tmp/ccRqcMej.s 			page 11


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
ARM GAS  /tmp/ccRqcMej.s 			page 12


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
ARM GAS  /tmp/ccRqcMej.s 			page 13


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
ARM GAS  /tmp/ccRqcMej.s 			page 14


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
ARM GAS  /tmp/ccRqcMej.s 			page 15


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
ARM GAS  /tmp/ccRqcMej.s 			page 16


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
  83              		.loc 2 456 0
  84              		.syntax unified
  85              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  86 002a BFF35F8F 		dmb
ARM GAS  /tmp/ccRqcMej.s 			page 17


  87              	@ 0 "" 2
  88              		.thumb
  89              		.syntax unified
  90              	.LBE42:
  91              	.LBE41:
  92              	.LBB43:
  93              	.LBB44:
  94              		.file 3 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h"
   1:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /**************************************************************************//**
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
ARM GAS  /tmp/ccRqcMej.s 			page 18


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
ARM GAS  /tmp/ccRqcMej.s 			page 19


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
ARM GAS  /tmp/ccRqcMej.s 			page 20


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
ARM GAS  /tmp/ccRqcMej.s 			page 21


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
ARM GAS  /tmp/ccRqcMej.s 			page 22


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
  95              		.loc 3 319 0
  96              		.syntax unified
  97              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  98 002e 62B6     		cpsie i
  99              	@ 0 "" 2
 100              		.thumb
 101              		.syntax unified
 102              	.LBE44:
 103              	.LBE43:
 104              	.LBB45:
 105              	.LBB46:
 401:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 106              		.loc 2 401 0
 107              		.syntax unified
 108              	@ 401 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
ARM GAS  /tmp/ccRqcMej.s 			page 23


 109 0030 30BF     		wfi
 110              	@ 0 "" 2
 111              		.thumb
 112              		.syntax unified
 113              	.L1:
 114 0032 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 115              	.LVL3:
 116              	.L5:
 117              	.LBE46:
 118              	.LBE45:
 119              	.LBB47:
 316:../asf/sam/drivers/pmc/sleep.c **** 				pmc_set_flash_in_wait_mode(PMC_FSMR_FLPM_FLASH_DEEP_POWERDOWN);
 120              		.loc 1 316 0
 121 0036 0328     		cmp	r0, #3
 122 0038 0446     		mov	r4, r0
 123 003a 0CBF     		ite	eq
 124 003c 0020     		moveq	r0, #0
 125              	.LVL4:
 317:../asf/sam/drivers/pmc/sleep.c **** #endif
 126              		.loc 1 317 0
 127 003e 4FF40010 		movne	r0, #2097152
 128 0042 FFF7FEFF 		bl	pmc_set_flash_in_wait_mode
 129              	.LVL5:
 130              	.LBB48:
 131              	.LBB49:
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
 132              		.loc 3 330 0
 133              		.syntax unified
 134              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 135 0046 72B6     		cpsid i
 136              	@ 0 "" 2
 137              		.thumb
 138              		.syntax unified
 139              	.LBE49:
 140              	.LBE48:
 141              	.LBB50:
 142              	.LBB51:
 143              		.loc 2 456 0
 144              		.syntax unified
 145              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 146 0048 BFF35F8F 		dmb
 147              	@ 0 "" 2
 148              		.thumb
 149              		.syntax unified
 150              	.LBE51:
 151              	.LBE50:
 152              	.LBB52:
ARM GAS  /tmp/ccRqcMej.s 			page 24


 153              	.LBB53:
  80:../asf/sam/drivers/pmc/sleep.c **** 	uint32_t mckr = PMC->PMC_MCKR;
 154              		.loc 1 80 0
 155 004c 6D4B     		ldr	r3, .L65+16
 156              	.LBE53:
 157              	.LBE52:
 319:../asf/sam/drivers/pmc/sleep.c **** 		b_is_sleep_clock_used = true;
 158              		.loc 1 319 0
 159 004e 0022     		movs	r2, #0
 320:../asf/sam/drivers/pmc/sleep.c **** 
 160              		.loc 1 320 0
 161 0050 0121     		movs	r1, #1
 319:../asf/sam/drivers/pmc/sleep.c **** 		b_is_sleep_clock_used = true;
 162              		.loc 1 319 0
 163 0052 6B4D     		ldr	r5, .L65+12
 320:../asf/sam/drivers/pmc/sleep.c **** 
 164              		.loc 1 320 0
 165 0054 6C4F     		ldr	r7, .L65+20
 319:../asf/sam/drivers/pmc/sleep.c **** 		b_is_sleep_clock_used = true;
 166              		.loc 1 319 0
 167 0056 2A70     		strb	r2, [r5]
 320:../asf/sam/drivers/pmc/sleep.c **** 
 168              		.loc 1 320 0
 169 0058 3970     		strb	r1, [r7]
 170              	.LVL6:
 171              	.LBB57:
 172              	.LBB54:
  80:../asf/sam/drivers/pmc/sleep.c **** 	uint32_t mckr = PMC->PMC_MCKR;
 173              		.loc 1 80 0
 174 005a D3F82080 		ldr	r8, [r3, #32]
 175              	.LVL7:
  81:../asf/sam/drivers/pmc/sleep.c **** 	uint32_t fmr  = EFC0->EEFC_FMR;
 176              		.loc 1 81 0
 177 005e D3F830B0 		ldr	fp, [r3, #48]
 178              	.LVL8:
 115:../asf/sam/drivers/pmc/sleep.c **** 	/* if MCK source is PLL, switch to mainck */
 179              		.loc 1 115 0
 180 0062 6A4A     		ldr	r2, .L65+24
 117:../asf/sam/drivers/pmc/sleep.c **** 		/* MCK -> MAINCK */
 181              		.loc 1 117 0
 182 0064 0BF0030A 		and	r10, fp, #3
  82:../asf/sam/drivers/pmc/sleep.c **** # if defined(EFC1)
 183              		.loc 1 82 0
 184 0068 6949     		ldr	r1, .L65+28
 115:../asf/sam/drivers/pmc/sleep.c **** 	/* if MCK source is PLL, switch to mainck */
 185              		.loc 1 115 0
 186 006a 48EA0202 		orr	r2, r8, r2
 117:../asf/sam/drivers/pmc/sleep.c **** 		/* MCK -> MAINCK */
 187              		.loc 1 117 0
 188 006e BAF1010F 		cmp	r10, #1
  82:../asf/sam/drivers/pmc/sleep.c **** # if defined(EFC1)
 189              		.loc 1 82 0
 190 0072 D1F80090 		ldr	r9, [r1]
 191              	.LVL9:
  91:../asf/sam/drivers/pmc/sleep.c **** 	}
 192              		.loc 1 91 0
 193 0076 9E6A     		ldr	r6, [r3, #40]
ARM GAS  /tmp/ccRqcMej.s 			page 25


 194              	.LVL10:
 115:../asf/sam/drivers/pmc/sleep.c **** 	/* if MCK source is PLL, switch to mainck */
 195              		.loc 1 115 0
 196 0078 1A62     		str	r2, [r3, #32]
 117:../asf/sam/drivers/pmc/sleep.c **** 		/* MCK -> MAINCK */
 197              		.loc 1 117 0
 198 007a 40F28D80 		bls	.L32
 119:../asf/sam/drivers/pmc/sleep.c **** 		PMC->PMC_MCKR = mckr;
 199              		.loc 1 119 0
 200 007e 2BF00301 		bic	r1, fp, #3
 121:../asf/sam/drivers/pmc/sleep.c **** 	}
 201              		.loc 1 121 0
 202 0082 1A46     		mov	r2, r3
 119:../asf/sam/drivers/pmc/sleep.c **** 		PMC->PMC_MCKR = mckr;
 203              		.loc 1 119 0
 204 0084 41F00101 		orr	r1, r1, #1
 205              	.LVL11:
 120:../asf/sam/drivers/pmc/sleep.c **** 		while(!(PMC->PMC_SR & PMC_SR_MCKRDY));
 206              		.loc 1 120 0
 207 0088 1963     		str	r1, [r3, #48]
 208              	.L10:
 121:../asf/sam/drivers/pmc/sleep.c **** 	}
 209              		.loc 1 121 0
 210 008a 936E     		ldr	r3, [r2, #104]
 211 008c 1B07     		lsls	r3, r3, #28
 212 008e FCD5     		bpl	.L10
 213              	.L9:
 124:../asf/sam/drivers/pmc/sleep.c **** 		mckr = (mckr & (~PMC_MCKR_PRES_Msk));
 214              		.loc 1 124 0
 215 0090 11F0700F 		tst	r1, #112
 216 0094 07D0     		beq	.L14
 126:../asf/sam/drivers/pmc/sleep.c **** 		while(!(PMC->PMC_SR & PMC_SR_MCKRDY));
 217              		.loc 1 126 0
 218 0096 5B4B     		ldr	r3, .L65+16
 125:../asf/sam/drivers/pmc/sleep.c **** 		PMC->PMC_MCKR = mckr;
 219              		.loc 1 125 0
 220 0098 21F07001 		bic	r1, r1, #112
 221              	.LVL12:
 127:../asf/sam/drivers/pmc/sleep.c **** 	}
 222              		.loc 1 127 0
 223 009c 1A46     		mov	r2, r3
 126:../asf/sam/drivers/pmc/sleep.c **** 		while(!(PMC->PMC_SR & PMC_SR_MCKRDY));
 224              		.loc 1 126 0
 225 009e 1963     		str	r1, [r3, #48]
 226              	.L13:
 127:../asf/sam/drivers/pmc/sleep.c **** 	}
 227              		.loc 1 127 0
 228 00a0 936E     		ldr	r3, [r2, #104]
 229 00a2 1807     		lsls	r0, r3, #28
 230 00a4 FCD5     		bpl	.L13
 231              	.L14:
 130:../asf/sam/drivers/pmc/sleep.c **** #if (SAM3S || SAM4S || SAM4C || SAM4CM || SAM4CP)
 232              		.loc 1 130 0
 233 00a6 FFF7FEFF 		bl	pmc_disable_pllack
 234              	.LVL13:
 139:../asf/sam/drivers/pmc/sleep.c **** 
 235              		.loc 1 139 0
ARM GAS  /tmp/ccRqcMej.s 			page 26


 236 00aa 564A     		ldr	r2, .L65+16
 237              	.L12:
 238 00ac 936E     		ldr	r3, [r2, #104]
 239 00ae 9903     		lsls	r1, r3, #14
 240 00b0 FCD5     		bpl	.L12
 153:../asf/sam/drivers/pmc/sleep.c **** 			CKGR_MOR_KEY_PASSWD;
 241              		.loc 1 153 0
 242 00b2 106A     		ldr	r0, [r2, #32]
 243 00b4 574B     		ldr	r3, .L65+32
 156:../asf/sam/drivers/pmc/sleep.c **** 
 244              		.loc 1 156 0
 245 00b6 5349     		ldr	r1, .L65+16
 153:../asf/sam/drivers/pmc/sleep.c **** 			CKGR_MOR_KEY_PASSWD;
 246              		.loc 1 153 0
 247 00b8 0340     		ands	r3, r3, r0
 248 00ba 43F45C13 		orr	r3, r3, #3604480
 249 00be 1362     		str	r3, [r2, #32]
 250              	.L15:
 156:../asf/sam/drivers/pmc/sleep.c **** 
 251              		.loc 1 156 0
 252 00c0 8B6E     		ldr	r3, [r1, #104]
 253 00c2 DB03     		lsls	r3, r3, #15
 254 00c4 FCD5     		bpl	.L15
 160:../asf/sam/drivers/pmc/sleep.c **** #if defined(EFC1)
 255              		.loc 1 160 0
 256 00c6 29F47063 		bic	r3, r9, #3840
 257 00ca 514A     		ldr	r2, .L65+28
 167:../asf/sam/drivers/pmc/sleep.c **** 		PMC->CKGR_MOR = (PMC->CKGR_MOR & ~CKGR_MOR_MOSCXTEN) |
 258              		.loc 1 167 0
 259 00cc 042C     		cmp	r4, #4
 160:../asf/sam/drivers/pmc/sleep.c **** #if defined(EFC1)
 260              		.loc 1 160 0
 261 00ce 1360     		str	r3, [r2]
 167:../asf/sam/drivers/pmc/sleep.c **** 		PMC->CKGR_MOR = (PMC->CKGR_MOR & ~CKGR_MOR_MOSCXTEN) |
 262              		.loc 1 167 0
 263 00d0 00F08980 		beq	.L64
 264              	.L16:
 265              	.LVL14:
 266              	.LBE54:
 267              	.LBE57:
 335:../asf/sam/drivers/pmc/sleep.c **** 
 268              		.loc 1 335 0
 269 00d4 0123     		movs	r3, #1
 270 00d6 2B70     		strb	r3, [r5]
 271              	.LBB58:
 272              	.LBB59:
 273              		.loc 2 456 0
 274              		.syntax unified
 275              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 276 00d8 BFF35F8F 		dmb
 277              	@ 0 "" 2
 278              		.thumb
 279              		.syntax unified
 280              	.LBE59:
 281              	.LBE58:
 282              	.LBB60:
 283              	.LBB61:
ARM GAS  /tmp/ccRqcMej.s 			page 27


 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 284              		.loc 3 319 0
 285              		.syntax unified
 286              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 287 00dc 62B6     		cpsie i
 288              	@ 0 "" 2
 289              		.thumb
 290              		.syntax unified
 291              	.LBE61:
 292              	.LBE60:
 337:../asf/sam/drivers/pmc/sleep.c **** 
 293              		.loc 1 337 0
 294 00de FFF7FEFF 		bl	pmc_enable_waitmode
 295              	.LVL15:
 296              	.LBB62:
 297              	.LBB63:
 298              		.loc 3 330 0
 299              		.syntax unified
 300              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 301 00e2 72B6     		cpsid i
 302              	@ 0 "" 2
 303              		.thumb
 304              		.syntax unified
 305              	.LBE63:
 306              	.LBE62:
 307              	.LBB64:
 308              	.LBB65:
 309              		.loc 2 456 0
 310              		.syntax unified
 311              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 312 00e4 BFF35F8F 		dmb
 313              	@ 0 "" 2
 314              		.thumb
 315              		.syntax unified
 316              	.LBE65:
 317              	.LBE64:
 339:../asf/sam/drivers/pmc/sleep.c **** 		pmc_restore_clock_setting(mor, pllr0, pllr1, mckr, fmr
 318              		.loc 1 339 0
 319 00e8 0023     		movs	r3, #0
 320              	.LBB66:
 321              	.LBB67:
 191:../asf/sam/drivers/pmc/sleep.c **** 		/* Bypass mode */
 322              		.loc 1 191 0
 323 00ea 18F0020F 		tst	r8, #2
 324              	.LBE67:
 325              	.LBE66:
 339:../asf/sam/drivers/pmc/sleep.c **** 		pmc_restore_clock_setting(mor, pllr0, pllr1, mckr, fmr
 326              		.loc 1 339 0
 327 00ee 2B70     		strb	r3, [r5]
 328              	.LVL16:
 329              	.LBB70:
 330              	.LBB68:
 191:../asf/sam/drivers/pmc/sleep.c **** 		/* Bypass mode */
 331              		.loc 1 191 0
 332 00f0 54D0     		beq	.L17
 193:../asf/sam/drivers/pmc/sleep.c **** 				CKGR_MOR_KEY_PASSWD | CKGR_MOR_MOSCXTBY |
 333              		.loc 1 193 0
ARM GAS  /tmp/ccRqcMej.s 			page 28


 334 00f2 444A     		ldr	r2, .L65+16
 194:../asf/sam/drivers/pmc/sleep.c **** 				CKGR_MOR_MOSCSEL;
 335              		.loc 1 194 0
 336 00f4 4848     		ldr	r0, .L65+36
 193:../asf/sam/drivers/pmc/sleep.c **** 				CKGR_MOR_KEY_PASSWD | CKGR_MOR_MOSCXTBY |
 337              		.loc 1 193 0
 338 00f6 136A     		ldr	r3, [r2, #32]
 194:../asf/sam/drivers/pmc/sleep.c **** 				CKGR_MOR_MOSCSEL;
 339              		.loc 1 194 0
 340 00f8 4849     		ldr	r1, .L65+40
 341 00fa 1840     		ands	r0, r0, r3
 198:../asf/sam/drivers/pmc/sleep.c **** 	} else if (CKGR_MOR_MOSCXTEN == (osc_setting & CKGR_MOR_MOSCXTEN)) {
 342              		.loc 1 198 0
 343 00fc 484B     		ldr	r3, .L65+44
 194:../asf/sam/drivers/pmc/sleep.c **** 				CKGR_MOR_MOSCSEL;
 344              		.loc 1 194 0
 345 00fe 0143     		orrs	r1, r1, r0
 193:../asf/sam/drivers/pmc/sleep.c **** 				CKGR_MOR_KEY_PASSWD | CKGR_MOR_MOSCXTBY |
 346              		.loc 1 193 0
 347 0100 1162     		str	r1, [r2, #32]
 196:../asf/sam/drivers/pmc/sleep.c **** 					~CKGR_MOR_MOSCRCF_Msk)
 348              		.loc 1 196 0
 349 0102 116A     		ldr	r1, [r2, #32]
 198:../asf/sam/drivers/pmc/sleep.c **** 	} else if (CKGR_MOR_MOSCXTEN == (osc_setting & CKGR_MOR_MOSCXTEN)) {
 350              		.loc 1 198 0
 351 0104 0B40     		ands	r3, r3, r1
 352 0106 43F45C13 		orr	r3, r3, #3604480
 196:../asf/sam/drivers/pmc/sleep.c **** 					~CKGR_MOR_MOSCRCF_Msk)
 353              		.loc 1 196 0
 354 010a 1362     		str	r3, [r2, #32]
 355              	.LVL17:
 356              	.L18:
 218:../asf/sam/drivers/pmc/sleep.c **** #if (SAM4C || SAM4CM || SAMG || SAM4CP)
 357              		.loc 1 218 0
 358 010c 454A     		ldr	r2, .L65+48
 359 010e 3240     		ands	r2, r2, r6
 360 0110 22B1     		cbz	r2, .L25
 222:../asf/sam/drivers/pmc/sleep.c **** #endif
 361              		.loc 1 222 0
 362 0112 46F00056 		orr	r6, r6, #536870912
 363              	.LVL18:
 364 0116 3B4B     		ldr	r3, .L65+16
 224:../asf/sam/drivers/pmc/sleep.c **** 	}
 365              		.loc 1 224 0
 366 0118 0222     		movs	r2, #2
 222:../asf/sam/drivers/pmc/sleep.c **** #endif
 367              		.loc 1 222 0
 368 011a 9E62     		str	r6, [r3, #40]
 369              	.LVL19:
 370              	.L25:
 240:../asf/sam/drivers/pmc/sleep.c **** 	case PMC_MCKR_CSS_PLLA_CLK:
 371              		.loc 1 240 0
 372 011c BAF1020F 		cmp	r10, #2
 373 0120 03D1     		bne	.L26
 242:../asf/sam/drivers/pmc/sleep.c **** 		break;
 374              		.loc 1 242 0
 375 0122 3849     		ldr	r1, .L65+16
ARM GAS  /tmp/ccRqcMej.s 			page 29


 376              	.L27:
 377 0124 8B6E     		ldr	r3, [r1, #104]
 378 0126 9C07     		lsls	r4, r3, #30
 379 0128 FCD5     		bpl	.L27
 380              	.L26:
 256:../asf/sam/drivers/pmc/sleep.c **** 
 381              		.loc 1 256 0
 382 012a 364C     		ldr	r4, .L65+16
 260:../asf/sam/drivers/pmc/sleep.c **** 	while (!(PMC->PMC_SR & PMC_SR_MCKRDY));
 383              		.loc 1 260 0
 384 012c 0BF07003 		and	r3, fp, #112
 256:../asf/sam/drivers/pmc/sleep.c **** 
 385              		.loc 1 256 0
 386 0130 206B     		ldr	r0, [r4, #48]
 387              	.LVL20:
 261:../asf/sam/drivers/pmc/sleep.c **** 
 388              		.loc 1 261 0
 389 0132 2146     		mov	r1, r4
 259:../asf/sam/drivers/pmc/sleep.c **** 		| (mck_setting & PMC_MCKR_PRES_Msk);
 390              		.loc 1 259 0
 391 0134 20F07000 		bic	r0, r0, #112
 392              	.LVL21:
 260:../asf/sam/drivers/pmc/sleep.c **** 	while (!(PMC->PMC_SR & PMC_SR_MCKRDY));
 393              		.loc 1 260 0
 394 0138 0343     		orrs	r3, r3, r0
 259:../asf/sam/drivers/pmc/sleep.c **** 		| (mck_setting & PMC_MCKR_PRES_Msk);
 395              		.loc 1 259 0
 396 013a 2363     		str	r3, [r4, #48]
 397              	.L28:
 261:../asf/sam/drivers/pmc/sleep.c **** 
 398              		.loc 1 261 0
 399 013c 8B6E     		ldr	r3, [r1, #104]
 400 013e 1807     		lsls	r0, r3, #28
 401 0140 FCD5     		bpl	.L28
 264:../asf/sam/drivers/pmc/sleep.c **** #if defined(EFC1)
 402              		.loc 1 264 0
 403 0142 334B     		ldr	r3, .L65+28
 271:../asf/sam/drivers/pmc/sleep.c **** 
 404              		.loc 1 271 0
 405 0144 2F48     		ldr	r0, .L65+16
 264:../asf/sam/drivers/pmc/sleep.c **** #if defined(EFC1)
 406              		.loc 1 264 0
 407 0146 C3F80090 		str	r9, [r3]
 270:../asf/sam/drivers/pmc/sleep.c **** 	while (!(PMC->PMC_SR & PMC_SR_MCKRDY));
 408              		.loc 1 270 0
 409 014a C1F830B0 		str	fp, [r1, #48]
 410              	.L29:
 271:../asf/sam/drivers/pmc/sleep.c **** 
 411              		.loc 1 271 0
 412 014e 836E     		ldr	r3, [r0, #104]
 413 0150 1B07     		lsls	r3, r3, #28
 414 0152 FCD5     		bpl	.L29
 274:../asf/sam/drivers/pmc/sleep.c **** }
 415              		.loc 1 274 0
 416 0154 2B49     		ldr	r1, .L65+16
 417              	.L49:
 418 0156 8B6E     		ldr	r3, [r1, #104]
ARM GAS  /tmp/ccRqcMej.s 			page 30


 419 0158 1342     		tst	r3, r2
 420 015a FCD0     		beq	.L49
 421              	.LVL22:
 422              	.LBE68:
 423              	.LBE70:
 351:../asf/sam/drivers/pmc/sleep.c **** 			callback_clocks_restored();
 424              		.loc 1 351 0
 425 015c 324C     		ldr	r4, .L65+52
 350:../asf/sam/drivers/pmc/sleep.c **** 		if (callback_clocks_restored) {
 426              		.loc 1 350 0
 427 015e 0026     		movs	r6, #0
 351:../asf/sam/drivers/pmc/sleep.c **** 			callback_clocks_restored();
 428              		.loc 1 351 0
 429 0160 2368     		ldr	r3, [r4]
 350:../asf/sam/drivers/pmc/sleep.c **** 		if (callback_clocks_restored) {
 430              		.loc 1 350 0
 431 0162 3E70     		strb	r6, [r7]
 351:../asf/sam/drivers/pmc/sleep.c **** 			callback_clocks_restored();
 432              		.loc 1 351 0
 433 0164 0BB1     		cbz	r3, .L31
 352:../asf/sam/drivers/pmc/sleep.c **** 			callback_clocks_restored = NULL;
 434              		.loc 1 352 0
 435 0166 9847     		blx	r3
 436              	.LVL23:
 353:../asf/sam/drivers/pmc/sleep.c **** 		}
 437              		.loc 1 353 0
 438 0168 2660     		str	r6, [r4]
 439              	.L31:
 355:../asf/sam/drivers/pmc/sleep.c **** 
 440              		.loc 1 355 0
 441 016a 0123     		movs	r3, #1
 442 016c 2B70     		strb	r3, [r5]
 443              	.LBB71:
 444              	.LBB72:
 445              		.loc 2 456 0
 446              		.syntax unified
 447              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 448 016e BFF35F8F 		dmb
 449              	@ 0 "" 2
 450              		.thumb
 451              		.syntax unified
 452              	.LBE72:
 453              	.LBE71:
 454              	.LBB73:
 455              	.LBB74:
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 456              		.loc 3 319 0
 457              		.syntax unified
 458              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 459 0172 62B6     		cpsie i
 460              	@ 0 "" 2
 461              	.LVL24:
 462              		.thumb
 463              		.syntax unified
 464 0174 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 465              	.LVL25:
 466              	.L3:
ARM GAS  /tmp/ccRqcMej.s 			page 31


 467              	.LBE74:
 468              	.LBE73:
 469              	.LBE47:
 288:../asf/sam/drivers/pmc/sleep.c **** 		cpu_irq_enable();
 470              		.loc 1 288 0
 471 0178 1E4A     		ldr	r2, .L65
 289:../asf/sam/drivers/pmc/sleep.c **** 		__DSB();
 472              		.loc 1 289 0
 473 017a 0120     		movs	r0, #1
 474              	.LVL26:
 475 017c 2049     		ldr	r1, .L65+12
 288:../asf/sam/drivers/pmc/sleep.c **** 		cpu_irq_enable();
 476              		.loc 1 288 0
 477 017e 1369     		ldr	r3, [r2, #16]
 478              	.LVL27:
 479 0180 23F00403 		bic	r3, r3, #4
 480 0184 1361     		str	r3, [r2, #16]
 289:../asf/sam/drivers/pmc/sleep.c **** 		__DSB();
 481              		.loc 1 289 0
 482 0186 0870     		strb	r0, [r1]
 483              	.LBB78:
 484              	.LBB79:
 485              		.loc 2 456 0
 486              		.syntax unified
 487              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 488 0188 BFF35F8F 		dmb
 489              	@ 0 "" 2
 490              		.thumb
 491              		.syntax unified
 492              	.LBE79:
 493              	.LBE78:
 494              	.LBB80:
 495              	.LBB81:
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 496              		.loc 3 319 0
 497              		.syntax unified
 498              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 499 018c 62B6     		cpsie i
 500              	@ 0 "" 2
 501              		.thumb
 502              		.syntax unified
 503              	.LBE81:
 504              	.LBE80:
 505              	.LBB82:
 506              	.LBB83:
 445:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 507              		.loc 2 445 0
 508              		.syntax unified
 509              	@ 445 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 510 018e BFF34F8F 		dsb
 511              	@ 0 "" 2
 512              		.thumb
 513              		.syntax unified
 514              	.LBE83:
 515              	.LBE82:
 516              	.LBB84:
 517              	.LBB85:
ARM GAS  /tmp/ccRqcMej.s 			page 32


 401:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 518              		.loc 2 401 0
 519              		.syntax unified
 520              	@ 401 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 521 0192 30BF     		wfi
 522              	@ 0 "" 2
 523              		.thumb
 524              		.syntax unified
 525 0194 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 526              	.LVL28:
 527              	.L32:
 528              	.LBE85:
 529              	.LBE84:
 530              	.LBB86:
 531              	.LBB75:
 532              	.LBB55:
 117:../asf/sam/drivers/pmc/sleep.c **** 		/* MCK -> MAINCK */
 533              		.loc 1 117 0
 534 0198 5946     		mov	r1, fp
 535 019a 79E7     		b	.L9
 536              	.LVL29:
 537              	.L17:
 538              	.LBE55:
 539              	.LBE75:
 540              	.LBB76:
 541              	.LBB69:
 199:../asf/sam/drivers/pmc/sleep.c **** 		/* Enable External XTAL */
 542              		.loc 1 199 0
 543 019c 18F0010F 		tst	r8, #1
 544 01a0 B4D0     		beq	.L18
 201:../asf/sam/drivers/pmc/sleep.c **** 			PMC->CKGR_MOR = (PMC->CKGR_MOR & ~CKGR_MOR_MOSCXTBY) |
 545              		.loc 1 201 0
 546 01a2 184B     		ldr	r3, .L65+16
 547 01a4 1A6A     		ldr	r2, [r3, #32]
 548 01a6 D407     		lsls	r4, r2, #31
 549              	.LVL30:
 550 01a8 09D4     		bmi	.L23
 202:../asf/sam/drivers/pmc/sleep.c **** 					CKGR_MOR_KEY_PASSWD | CKGR_MOR_MOSCXTEN;
 551              		.loc 1 202 0
 552 01aa 196A     		ldr	r1, [r3, #32]
 205:../asf/sam/drivers/pmc/sleep.c **** 		}
 553              		.loc 1 205 0
 554 01ac 1A46     		mov	r2, r3
 203:../asf/sam/drivers/pmc/sleep.c **** 			/* Wait the Xtal to stabilize */
 555              		.loc 1 203 0
 556 01ae 1F48     		ldr	r0, .L65+56
 557 01b0 0840     		ands	r0, r0, r1
 558 01b2 1F49     		ldr	r1, .L65+60
 559 01b4 0143     		orrs	r1, r1, r0
 202:../asf/sam/drivers/pmc/sleep.c **** 					CKGR_MOR_KEY_PASSWD | CKGR_MOR_MOSCXTEN;
 560              		.loc 1 202 0
 561 01b6 1962     		str	r1, [r3, #32]
 562              	.L22:
 205:../asf/sam/drivers/pmc/sleep.c **** 		}
 563              		.loc 1 205 0
 564 01b8 936E     		ldr	r3, [r2, #104]
 565 01ba D907     		lsls	r1, r3, #31
ARM GAS  /tmp/ccRqcMej.s 			page 33


 566 01bc FCD5     		bpl	.L22
 567              	.L23:
 208:../asf/sam/drivers/pmc/sleep.c **** 			PMC->CKGR_MOR |= CKGR_MOR_KEY_PASSWD | CKGR_MOR_MOSCSEL;
 568              		.loc 1 208 0
 569 01be 114B     		ldr	r3, .L65+16
 570 01c0 1A6A     		ldr	r2, [r3, #32]
 571 01c2 D001     		lsls	r0, r2, #7
 572 01c4 07D4     		bmi	.L21
 209:../asf/sam/drivers/pmc/sleep.c **** 			while (!(PMC->PMC_SR & PMC_SR_MOSCSELS));
 573              		.loc 1 209 0
 574 01c6 186A     		ldr	r0, [r3, #32]
 210:../asf/sam/drivers/pmc/sleep.c **** 		}
 575              		.loc 1 210 0
 576 01c8 1A46     		mov	r2, r3
 209:../asf/sam/drivers/pmc/sleep.c **** 			while (!(PMC->PMC_SR & PMC_SR_MOSCSELS));
 577              		.loc 1 209 0
 578 01ca 1A49     		ldr	r1, .L65+64
 579 01cc 0143     		orrs	r1, r1, r0
 580 01ce 1962     		str	r1, [r3, #32]
 581              	.L24:
 210:../asf/sam/drivers/pmc/sleep.c **** 		}
 582              		.loc 1 210 0
 583 01d0 936E     		ldr	r3, [r2, #104]
 584 01d2 DB03     		lsls	r3, r3, #15
 585 01d4 FCD5     		bpl	.L24
 586              	.L21:
 213:../asf/sam/drivers/pmc/sleep.c **** 						~CKGR_MOR_MOSCRCF_Msk)
 587              		.loc 1 213 0
 588 01d6 0B4A     		ldr	r2, .L65+16
 215:../asf/sam/drivers/pmc/sleep.c **** 	}
 589              		.loc 1 215 0
 590 01d8 114B     		ldr	r3, .L65+44
 213:../asf/sam/drivers/pmc/sleep.c **** 						~CKGR_MOR_MOSCRCF_Msk)
 591              		.loc 1 213 0
 592 01da 116A     		ldr	r1, [r2, #32]
 215:../asf/sam/drivers/pmc/sleep.c **** 	}
 593              		.loc 1 215 0
 594 01dc 0B40     		ands	r3, r3, r1
 595 01de 43F45C13 		orr	r3, r3, #3604480
 213:../asf/sam/drivers/pmc/sleep.c **** 						~CKGR_MOR_MOSCRCF_Msk)
 596              		.loc 1 213 0
 597 01e2 1362     		str	r3, [r2, #32]
 598 01e4 92E7     		b	.L18
 599              	.LVL31:
 600              	.L64:
 601              	.LBE69:
 602              	.LBE76:
 603              	.LBB77:
 604              	.LBB56:
 168:../asf/sam/drivers/pmc/sleep.c **** 				CKGR_MOR_KEY_PASSWD;
 605              		.loc 1 168 0
 606 01e6 0A6A     		ldr	r2, [r1, #32]
 607 01e8 134B     		ldr	r3, .L65+68
 608 01ea 1340     		ands	r3, r3, r2
 609 01ec 43F45C13 		orr	r3, r3, #3604480
 610 01f0 0B62     		str	r3, [r1, #32]
 611 01f2 6FE7     		b	.L16
ARM GAS  /tmp/ccRqcMej.s 			page 34


 612              	.L66:
 613              		.align	2
 614              	.L65:
 615 01f4 00ED00E0 		.word	-536810240
 616 01f8 10180E40 		.word	1074665488
 617 01fc 040000A5 		.word	-1526726652
 618 0200 00000000 		.word	g_interrupt_enabled
 619 0204 00060E40 		.word	1074660864
 620 0208 00000000 		.word	.LANCHOR0
 621 020c 08003700 		.word	3604488
 622 0210 000C0E40 		.word	1074662400
 623 0214 FFFFC8FE 		.word	-20381697
 624 0218 FCFFC8FE 		.word	-20381700
 625 021c 02003701 		.word	20381698
 626 0220 87FFC8FF 		.word	-3604601
 627 0224 0000FF07 		.word	134152192
 628 0228 00000000 		.word	.LANCHOR1
 629 022c FCFFC8FF 		.word	-3604484
 630 0230 01003700 		.word	3604481
 631 0234 00003701 		.word	20381696
 632 0238 FEFFC8FF 		.word	-3604482
 633              	.LBE56:
 634              	.LBE77:
 635              	.LBE86:
 636              		.cfi_endproc
 637              	.LFE144:
 638              		.size	pmc_sleep, .-pmc_sleep
 639              		.section	.text.pmc_is_wakeup_clocks_restored,"ax",%progbits
 640              		.align	1
 641              		.p2align 2,,3
 642              		.global	pmc_is_wakeup_clocks_restored
 643              		.syntax unified
 644              		.thumb
 645              		.thumb_func
 646              		.fpu fpv5-d16
 647              		.type	pmc_is_wakeup_clocks_restored, %function
 648              	pmc_is_wakeup_clocks_restored:
 649              	.LFB145:
 365:../asf/sam/drivers/pmc/sleep.c **** 		__WFI() ;
 366:../asf/sam/drivers/pmc/sleep.c **** #else
 367:../asf/sam/drivers/pmc/sleep.c **** 		cpu_irq_enable();
 368:../asf/sam/drivers/pmc/sleep.c **** 		__WFE() ;
 369:../asf/sam/drivers/pmc/sleep.c **** #endif
 370:../asf/sam/drivers/pmc/sleep.c **** 		break;
 371:../asf/sam/drivers/pmc/sleep.c **** #endif
 372:../asf/sam/drivers/pmc/sleep.c **** 	}
 373:../asf/sam/drivers/pmc/sleep.c **** }
 374:../asf/sam/drivers/pmc/sleep.c **** 
 375:../asf/sam/drivers/pmc/sleep.c **** bool pmc_is_wakeup_clocks_restored(void)
 376:../asf/sam/drivers/pmc/sleep.c **** {
 650              		.loc 1 376 0
 651              		.cfi_startproc
 652              		@ args = 0, pretend = 0, frame = 0
 653              		@ frame_needed = 0, uses_anonymous_args = 0
 654              		@ link register save eliminated.
 377:../asf/sam/drivers/pmc/sleep.c **** 	return !b_is_sleep_clock_used;
 655              		.loc 1 377 0
ARM GAS  /tmp/ccRqcMej.s 			page 35


 656 0000 024B     		ldr	r3, .L68
 657 0002 1878     		ldrb	r0, [r3]	@ zero_extendqisi2
 378:../asf/sam/drivers/pmc/sleep.c **** }
 658              		.loc 1 378 0
 659 0004 80F00100 		eor	r0, r0, #1
 660 0008 7047     		bx	lr
 661              	.L69:
 662 000a 00BF     		.align	2
 663              	.L68:
 664 000c 00000000 		.word	.LANCHOR0
 665              		.cfi_endproc
 666              	.LFE145:
 667              		.size	pmc_is_wakeup_clocks_restored, .-pmc_is_wakeup_clocks_restored
 668              		.section	.text.pmc_wait_wakeup_clocks_restore,"ax",%progbits
 669              		.align	1
 670              		.p2align 2,,3
 671              		.global	pmc_wait_wakeup_clocks_restore
 672              		.syntax unified
 673              		.thumb
 674              		.thumb_func
 675              		.fpu fpv5-d16
 676              		.type	pmc_wait_wakeup_clocks_restore, %function
 677              	pmc_wait_wakeup_clocks_restore:
 678              	.LFB146:
 379:../asf/sam/drivers/pmc/sleep.c **** 
 380:../asf/sam/drivers/pmc/sleep.c **** void pmc_wait_wakeup_clocks_restore(
 381:../asf/sam/drivers/pmc/sleep.c **** 		pmc_callback_wakeup_clocks_restored_t callback)
 382:../asf/sam/drivers/pmc/sleep.c **** {
 679              		.loc 1 382 0
 680              		.cfi_startproc
 681              		@ args = 0, pretend = 0, frame = 0
 682              		@ frame_needed = 0, uses_anonymous_args = 0
 683              		@ link register save eliminated.
 684              	.LVL32:
 383:../asf/sam/drivers/pmc/sleep.c **** 	if (b_is_sleep_clock_used) {
 685              		.loc 1 383 0
 686 0000 074B     		ldr	r3, .L77
 687 0002 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 688 0004 13B9     		cbnz	r3, .L76
 384:../asf/sam/drivers/pmc/sleep.c **** 		cpu_irq_disable();
 385:../asf/sam/drivers/pmc/sleep.c **** 		callback_clocks_restored = callback;
 386:../asf/sam/drivers/pmc/sleep.c **** 	} else if (callback) {
 689              		.loc 1 386 0
 690 0006 00B1     		cbz	r0, .L70
 387:../asf/sam/drivers/pmc/sleep.c **** 		callback();
 691              		.loc 1 387 0
 692 0008 0047     		bx	r0	@ indirect register sibling call
 693              	.LVL33:
 694              	.L70:
 695 000a 7047     		bx	lr
 696              	.L76:
 697              	.LBB87:
 698              	.LBB88:
 699              		.loc 3 330 0
 700              		.syntax unified
 701              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 702 000c 72B6     		cpsid i
ARM GAS  /tmp/ccRqcMej.s 			page 36


 703              	@ 0 "" 2
 704              		.thumb
 705              		.syntax unified
 706              	.LBE88:
 707              	.LBE87:
 708              	.LBB89:
 709              	.LBB90:
 710              		.loc 2 456 0
 711              		.syntax unified
 712              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 713 000e BFF35F8F 		dmb
 714              	@ 0 "" 2
 715              		.thumb
 716              		.syntax unified
 717              	.LBE90:
 718              	.LBE89:
 385:../asf/sam/drivers/pmc/sleep.c **** 	} else if (callback) {
 719              		.loc 1 385 0
 720 0012 0449     		ldr	r1, .L77+4
 384:../asf/sam/drivers/pmc/sleep.c **** 		cpu_irq_disable();
 721              		.loc 1 384 0
 722 0014 0022     		movs	r2, #0
 723 0016 044B     		ldr	r3, .L77+8
 385:../asf/sam/drivers/pmc/sleep.c **** 	} else if (callback) {
 724              		.loc 1 385 0
 725 0018 0860     		str	r0, [r1]
 384:../asf/sam/drivers/pmc/sleep.c **** 		cpu_irq_disable();
 726              		.loc 1 384 0
 727 001a 1A70     		strb	r2, [r3]
 728 001c 7047     		bx	lr
 729              	.L78:
 730 001e 00BF     		.align	2
 731              	.L77:
 732 0020 00000000 		.word	.LANCHOR0
 733 0024 00000000 		.word	.LANCHOR1
 734 0028 00000000 		.word	g_interrupt_enabled
 735              		.cfi_endproc
 736              	.LFE146:
 737              		.size	pmc_wait_wakeup_clocks_restore, .-pmc_wait_wakeup_clocks_restore
 738              		.section	.bss.b_is_sleep_clock_used,"aw",%nobits
 739              		.set	.LANCHOR0,. + 0
 740              		.type	b_is_sleep_clock_used, %object
 741              		.size	b_is_sleep_clock_used, 1
 742              	b_is_sleep_clock_used:
 743 0000 00       		.space	1
 744              		.section	.bss.callback_clocks_restored,"aw",%nobits
 745              		.align	2
 746              		.set	.LANCHOR1,. + 0
 747              		.type	callback_clocks_restored, %object
 748              		.size	callback_clocks_restored, 4
 749              	callback_clocks_restored:
 750 0000 00000000 		.space	4
 751              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 752              		.align	2
 753              		.type	cpu_irq_critical_section_counter, %object
 754              		.size	cpu_irq_critical_section_counter, 4
 755              	cpu_irq_critical_section_counter:
ARM GAS  /tmp/ccRqcMej.s 			page 37


 756 0000 00000000 		.space	4
 757              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 758              		.type	cpu_irq_prev_interrupt_state, %object
 759              		.size	cpu_irq_prev_interrupt_state, 1
 760              	cpu_irq_prev_interrupt_state:
 761 0000 00       		.space	1
 762              		.text
 763              	.Letext0:
 764              		.file 4 "/usr/include/newlib/machine/_default_types.h"
 765              		.file 5 "/usr/include/newlib/sys/_stdint.h"
 766              		.file 6 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 767              		.file 7 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 768              		.file 8 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/efc.
 769              		.file 9 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/pmc.
 770              		.file 10 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/sup
 771              		.file 11 "/usr/include/newlib/sys/lock.h"
 772              		.file 12 "/usr/include/newlib/sys/_types.h"
 773              		.file 13 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 774              		.file 14 "/usr/include/newlib/sys/reent.h"
 775              		.file 15 "/usr/include/newlib/stdlib.h"
 776              		.file 16 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 777              		.file 17 "../asf/sam/drivers/pmc/sleep.h"
 778              		.file 18 "../asf/sam/drivers/pmc/pmc.h"
 779              		.section	.debug_info,"",%progbits
 780              	.Ldebug_info0:
 781 0000 51140000 		.4byte	0x1451
 782 0004 0400     		.2byte	0x4
 783 0006 00000000 		.4byte	.Ldebug_abbrev0
 784 000a 04       		.byte	0x4
 785 000b 01       		.uleb128 0x1
 786 000c 6A090000 		.4byte	.LASF271
 787 0010 0C       		.byte	0xc
 788 0011 63050000 		.4byte	.LASF272
 789 0015 2A0A0000 		.4byte	.LASF273
 790 0019 60000000 		.4byte	.Ldebug_ranges0+0x60
 791 001d 00000000 		.4byte	0
 792 0021 00000000 		.4byte	.Ldebug_line0
 793 0025 02       		.uleb128 0x2
 794 0026 04       		.byte	0x4
 795 0027 05       		.byte	0x5
 796 0028 696E7400 		.ascii	"int\000"
 797 002c 03       		.uleb128 0x3
 798 002d 04       		.byte	0x4
 799 002e 07       		.byte	0x7
 800 002f 74000000 		.4byte	.LASF0
 801 0033 03       		.uleb128 0x3
 802 0034 01       		.byte	0x1
 803 0035 06       		.byte	0x6
 804 0036 A60A0000 		.4byte	.LASF1
 805 003a 04       		.uleb128 0x4
 806 003b 3B080000 		.4byte	.LASF5
 807 003f 04       		.byte	0x4
 808 0040 1D       		.byte	0x1d
 809 0041 45000000 		.4byte	0x45
 810 0045 03       		.uleb128 0x3
 811 0046 01       		.byte	0x1
 812 0047 08       		.byte	0x8
ARM GAS  /tmp/ccRqcMej.s 			page 38


 813 0048 34090000 		.4byte	.LASF2
 814 004c 03       		.uleb128 0x3
 815 004d 02       		.byte	0x2
 816 004e 05       		.byte	0x5
 817 004f FF000000 		.4byte	.LASF3
 818 0053 03       		.uleb128 0x3
 819 0054 02       		.byte	0x2
 820 0055 07       		.byte	0x7
 821 0056 85060000 		.4byte	.LASF4
 822 005a 04       		.uleb128 0x4
 823 005b DE000000 		.4byte	.LASF6
 824 005f 04       		.byte	0x4
 825 0060 3F       		.byte	0x3f
 826 0061 65000000 		.4byte	0x65
 827 0065 03       		.uleb128 0x3
 828 0066 04       		.byte	0x4
 829 0067 05       		.byte	0x5
 830 0068 70070000 		.4byte	.LASF7
 831 006c 04       		.uleb128 0x4
 832 006d D6060000 		.4byte	.LASF8
 833 0071 04       		.byte	0x4
 834 0072 41       		.byte	0x41
 835 0073 77000000 		.4byte	0x77
 836 0077 03       		.uleb128 0x3
 837 0078 04       		.byte	0x4
 838 0079 07       		.byte	0x7
 839 007a BD080000 		.4byte	.LASF9
 840 007e 03       		.uleb128 0x3
 841 007f 08       		.byte	0x8
 842 0080 05       		.byte	0x5
 843 0081 3C050000 		.4byte	.LASF10
 844 0085 03       		.uleb128 0x3
 845 0086 08       		.byte	0x8
 846 0087 07       		.byte	0x7
 847 0088 47020000 		.4byte	.LASF11
 848 008c 04       		.uleb128 0x4
 849 008d C5040000 		.4byte	.LASF12
 850 0091 05       		.byte	0x5
 851 0092 18       		.byte	0x18
 852 0093 3A000000 		.4byte	0x3a
 853 0097 05       		.uleb128 0x5
 854 0098 8C000000 		.4byte	0x8c
 855 009c 04       		.uleb128 0x4
 856 009d 09090000 		.4byte	.LASF13
 857 00a1 05       		.byte	0x5
 858 00a2 2C       		.byte	0x2c
 859 00a3 5A000000 		.4byte	0x5a
 860 00a7 05       		.uleb128 0x5
 861 00a8 9C000000 		.4byte	0x9c
 862 00ac 04       		.uleb128 0x4
 863 00ad 88000000 		.4byte	.LASF14
 864 00b1 05       		.byte	0x5
 865 00b2 30       		.byte	0x30
 866 00b3 6C000000 		.4byte	0x6c
 867 00b7 05       		.uleb128 0x5
 868 00b8 AC000000 		.4byte	0xac
 869 00bc 06       		.uleb128 0x6
ARM GAS  /tmp/ccRqcMej.s 			page 39


 870 00bd B7000000 		.4byte	0xb7
 871 00c1 06       		.uleb128 0x6
 872 00c2 AC000000 		.4byte	0xac
 873 00c6 07       		.uleb128 0x7
 874 00c7 04       		.byte	0x4
 875 00c8 03       		.uleb128 0x3
 876 00c9 04       		.byte	0x4
 877 00ca 07       		.byte	0x7
 878 00cb AF080000 		.4byte	.LASF15
 879 00cf 08       		.uleb128 0x8
 880 00d0 AC02     		.2byte	0x2ac
 881 00d2 06       		.byte	0x6
 882 00d3 9A01     		.2byte	0x19a
 883 00d5 7C030000 		.4byte	0x37c
 884 00d9 09       		.uleb128 0x9
 885 00da 86030000 		.4byte	.LASF16
 886 00de 06       		.byte	0x6
 887 00df 9C01     		.2byte	0x19c
 888 00e1 BC000000 		.4byte	0xbc
 889 00e5 00       		.byte	0
 890 00e6 09       		.uleb128 0x9
 891 00e7 B8080000 		.4byte	.LASF17
 892 00eb 06       		.byte	0x6
 893 00ec 9D01     		.2byte	0x19d
 894 00ee B7000000 		.4byte	0xb7
 895 00f2 04       		.byte	0x4
 896 00f3 09       		.uleb128 0x9
 897 00f4 7F080000 		.4byte	.LASF18
 898 00f8 06       		.byte	0x6
 899 00f9 9E01     		.2byte	0x19e
 900 00fb B7000000 		.4byte	0xb7
 901 00ff 08       		.byte	0x8
 902 0100 09       		.uleb128 0x9
 903 0101 87040000 		.4byte	.LASF19
 904 0105 06       		.byte	0x6
 905 0106 9F01     		.2byte	0x19f
 906 0108 B7000000 		.4byte	0xb7
 907 010c 0C       		.byte	0xc
 908 010d 0A       		.uleb128 0xa
 909 010e 53435200 		.ascii	"SCR\000"
 910 0112 06       		.byte	0x6
 911 0113 A001     		.2byte	0x1a0
 912 0115 B7000000 		.4byte	0xb7
 913 0119 10       		.byte	0x10
 914 011a 0A       		.uleb128 0xa
 915 011b 43435200 		.ascii	"CCR\000"
 916 011f 06       		.byte	0x6
 917 0120 A101     		.2byte	0x1a1
 918 0122 B7000000 		.4byte	0xb7
 919 0126 14       		.byte	0x14
 920 0127 09       		.uleb128 0x9
 921 0128 AA030000 		.4byte	.LASF20
 922 012c 06       		.byte	0x6
 923 012d A201     		.2byte	0x1a2
 924 012f 8C030000 		.4byte	0x38c
 925 0133 18       		.byte	0x18
 926 0134 09       		.uleb128 0x9
ARM GAS  /tmp/ccRqcMej.s 			page 40


 927 0135 20070000 		.4byte	.LASF21
 928 0139 06       		.byte	0x6
 929 013a A301     		.2byte	0x1a3
 930 013c B7000000 		.4byte	0xb7
 931 0140 24       		.byte	0x24
 932 0141 09       		.uleb128 0x9
 933 0142 95050000 		.4byte	.LASF22
 934 0146 06       		.byte	0x6
 935 0147 A401     		.2byte	0x1a4
 936 0149 B7000000 		.4byte	0xb7
 937 014d 28       		.byte	0x28
 938 014e 09       		.uleb128 0x9
 939 014f 25040000 		.4byte	.LASF23
 940 0153 06       		.byte	0x6
 941 0154 A501     		.2byte	0x1a5
 942 0156 B7000000 		.4byte	0xb7
 943 015a 2C       		.byte	0x2c
 944 015b 09       		.uleb128 0x9
 945 015c 7F010000 		.4byte	.LASF24
 946 0160 06       		.byte	0x6
 947 0161 A601     		.2byte	0x1a6
 948 0163 B7000000 		.4byte	0xb7
 949 0167 30       		.byte	0x30
 950 0168 09       		.uleb128 0x9
 951 0169 EC060000 		.4byte	.LASF25
 952 016d 06       		.byte	0x6
 953 016e A701     		.2byte	0x1a7
 954 0170 B7000000 		.4byte	0xb7
 955 0174 34       		.byte	0x34
 956 0175 09       		.uleb128 0x9
 957 0176 AF030000 		.4byte	.LASF26
 958 017a 06       		.byte	0x6
 959 017b A801     		.2byte	0x1a8
 960 017d B7000000 		.4byte	0xb7
 961 0181 38       		.byte	0x38
 962 0182 09       		.uleb128 0x9
 963 0183 E6030000 		.4byte	.LASF27
 964 0187 06       		.byte	0x6
 965 0188 A901     		.2byte	0x1a9
 966 018a B7000000 		.4byte	0xb7
 967 018e 3C       		.byte	0x3c
 968 018f 09       		.uleb128 0x9
 969 0190 C5010000 		.4byte	.LASF28
 970 0194 06       		.byte	0x6
 971 0195 AA01     		.2byte	0x1aa
 972 0197 A6030000 		.4byte	0x3a6
 973 019b 40       		.byte	0x40
 974 019c 09       		.uleb128 0x9
 975 019d A8040000 		.4byte	.LASF29
 976 01a1 06       		.byte	0x6
 977 01a2 AB01     		.2byte	0x1ab
 978 01a4 BC000000 		.4byte	0xbc
 979 01a8 48       		.byte	0x48
 980 01a9 09       		.uleb128 0x9
 981 01aa 5E020000 		.4byte	.LASF30
 982 01ae 06       		.byte	0x6
 983 01af AC01     		.2byte	0x1ac
ARM GAS  /tmp/ccRqcMej.s 			page 41


 984 01b1 BC000000 		.4byte	0xbc
 985 01b5 4C       		.byte	0x4c
 986 01b6 09       		.uleb128 0x9
 987 01b7 11050000 		.4byte	.LASF31
 988 01bb 06       		.byte	0x6
 989 01bc AD01     		.2byte	0x1ad
 990 01be C0030000 		.4byte	0x3c0
 991 01c2 50       		.byte	0x50
 992 01c3 09       		.uleb128 0x9
 993 01c4 340B0000 		.4byte	.LASF32
 994 01c8 06       		.byte	0x6
 995 01c9 AE01     		.2byte	0x1ae
 996 01cb DF030000 		.4byte	0x3df
 997 01cf 60       		.byte	0x60
 998 01d0 09       		.uleb128 0x9
 999 01d1 16070000 		.4byte	.LASF33
 1000 01d5 06       		.byte	0x6
 1001 01d6 AF01     		.2byte	0x1af
 1002 01d8 E9030000 		.4byte	0x3e9
 1003 01dc 74       		.byte	0x74
 1004 01dd 09       		.uleb128 0x9
 1005 01de A7060000 		.4byte	.LASF34
 1006 01e2 06       		.byte	0x6
 1007 01e3 B001     		.2byte	0x1b0
 1008 01e5 BC000000 		.4byte	0xbc
 1009 01e9 78       		.byte	0x78
 1010 01ea 0A       		.uleb128 0xa
 1011 01eb 43545200 		.ascii	"CTR\000"
 1012 01ef 06       		.byte	0x6
 1013 01f0 B101     		.2byte	0x1b1
 1014 01f2 BC000000 		.4byte	0xbc
 1015 01f6 7C       		.byte	0x7c
 1016 01f7 09       		.uleb128 0x9
 1017 01f8 D7000000 		.4byte	.LASF35
 1018 01fc 06       		.byte	0x6
 1019 01fd B201     		.2byte	0x1b2
 1020 01ff BC000000 		.4byte	0xbc
 1021 0203 80       		.byte	0x80
 1022 0204 09       		.uleb128 0x9
 1023 0205 35050000 		.4byte	.LASF36
 1024 0209 06       		.byte	0x6
 1025 020a B301     		.2byte	0x1b3
 1026 020c B7000000 		.4byte	0xb7
 1027 0210 84       		.byte	0x84
 1028 0211 09       		.uleb128 0x9
 1029 0212 09000000 		.4byte	.LASF37
 1030 0216 06       		.byte	0x6
 1031 0217 B401     		.2byte	0x1b4
 1032 0219 B7000000 		.4byte	0xb7
 1033 021d 88       		.byte	0x88
 1034 021e 09       		.uleb128 0x9
 1035 021f 26070000 		.4byte	.LASF38
 1036 0223 06       		.byte	0x6
 1037 0224 B501     		.2byte	0x1b5
 1038 0226 F9030000 		.4byte	0x3f9
 1039 022a 8C       		.byte	0x8c
 1040 022b 0B       		.uleb128 0xb
ARM GAS  /tmp/ccRqcMej.s 			page 42


 1041 022c D1060000 		.4byte	.LASF39
 1042 0230 06       		.byte	0x6
 1043 0231 B601     		.2byte	0x1b6
 1044 0233 B7000000 		.4byte	0xb7
 1045 0237 0002     		.2byte	0x200
 1046 0239 0B       		.uleb128 0xb
 1047 023a 30070000 		.4byte	.LASF40
 1048 023e 06       		.byte	0x6
 1049 023f B701     		.2byte	0x1b7
 1050 0241 09040000 		.4byte	0x409
 1051 0245 0402     		.2byte	0x204
 1052 0247 0B       		.uleb128 0xb
 1053 0248 C30A0000 		.4byte	.LASF41
 1054 024c 06       		.byte	0x6
 1055 024d B801     		.2byte	0x1b8
 1056 024f BC000000 		.4byte	0xbc
 1057 0253 4002     		.2byte	0x240
 1058 0255 0B       		.uleb128 0xb
 1059 0256 C90A0000 		.4byte	.LASF42
 1060 025a 06       		.byte	0x6
 1061 025b B901     		.2byte	0x1b9
 1062 025d BC000000 		.4byte	0xbc
 1063 0261 4402     		.2byte	0x244
 1064 0263 0B       		.uleb128 0xb
 1065 0264 CF0A0000 		.4byte	.LASF43
 1066 0268 06       		.byte	0x6
 1067 0269 BA01     		.2byte	0x1ba
 1068 026b BC000000 		.4byte	0xbc
 1069 026f 4802     		.2byte	0x248
 1070 0271 0B       		.uleb128 0xb
 1071 0272 3A070000 		.4byte	.LASF44
 1072 0276 06       		.byte	0x6
 1073 0277 BB01     		.2byte	0x1bb
 1074 0279 E9030000 		.4byte	0x3e9
 1075 027d 4C02     		.2byte	0x24c
 1076 027f 0B       		.uleb128 0xb
 1077 0280 98000000 		.4byte	.LASF45
 1078 0284 06       		.byte	0x6
 1079 0285 BC01     		.2byte	0x1bc
 1080 0287 B7000000 		.4byte	0xb7
 1081 028b 5002     		.2byte	0x250
 1082 028d 0B       		.uleb128 0xb
 1083 028e 44070000 		.4byte	.LASF46
 1084 0292 06       		.byte	0x6
 1085 0293 BD01     		.2byte	0x1bd
 1086 0295 E9030000 		.4byte	0x3e9
 1087 0299 5402     		.2byte	0x254
 1088 029b 0B       		.uleb128 0xb
 1089 029c 9E020000 		.4byte	.LASF47
 1090 02a0 06       		.byte	0x6
 1091 02a1 BE01     		.2byte	0x1be
 1092 02a3 B7000000 		.4byte	0xb7
 1093 02a7 5802     		.2byte	0x258
 1094 02a9 0B       		.uleb128 0xb
 1095 02aa A0040000 		.4byte	.LASF48
 1096 02ae 06       		.byte	0x6
 1097 02af BF01     		.2byte	0x1bf
ARM GAS  /tmp/ccRqcMej.s 			page 43


 1098 02b1 B7000000 		.4byte	0xb7
 1099 02b5 5C02     		.2byte	0x25c
 1100 02b7 0B       		.uleb128 0xb
 1101 02b8 2A040000 		.4byte	.LASF49
 1102 02bc 06       		.byte	0x6
 1103 02bd C001     		.2byte	0x1c0
 1104 02bf B7000000 		.4byte	0xb7
 1105 02c3 6002     		.2byte	0x260
 1106 02c5 0B       		.uleb128 0xb
 1107 02c6 AF050000 		.4byte	.LASF50
 1108 02ca 06       		.byte	0x6
 1109 02cb C101     		.2byte	0x1c1
 1110 02cd B7000000 		.4byte	0xb7
 1111 02d1 6402     		.2byte	0x264
 1112 02d3 0B       		.uleb128 0xb
 1113 02d4 88050000 		.4byte	.LASF51
 1114 02d8 06       		.byte	0x6
 1115 02d9 C201     		.2byte	0x1c2
 1116 02db B7000000 		.4byte	0xb7
 1117 02df 6802     		.2byte	0x268
 1118 02e1 0B       		.uleb128 0xb
 1119 02e2 0F000000 		.4byte	.LASF52
 1120 02e6 06       		.byte	0x6
 1121 02e7 C301     		.2byte	0x1c3
 1122 02e9 B7000000 		.4byte	0xb7
 1123 02ed 6C02     		.2byte	0x26c
 1124 02ef 0B       		.uleb128 0xb
 1125 02f0 4A050000 		.4byte	.LASF53
 1126 02f4 06       		.byte	0x6
 1127 02f5 C401     		.2byte	0x1c4
 1128 02f7 B7000000 		.4byte	0xb7
 1129 02fb 7002     		.2byte	0x270
 1130 02fd 0B       		.uleb128 0xb
 1131 02fe 2E050000 		.4byte	.LASF54
 1132 0302 06       		.byte	0x6
 1133 0303 C501     		.2byte	0x1c5
 1134 0305 B7000000 		.4byte	0xb7
 1135 0309 7402     		.2byte	0x274
 1136 030b 0B       		.uleb128 0xb
 1137 030c 210B0000 		.4byte	.LASF55
 1138 0310 06       		.byte	0x6
 1139 0311 C601     		.2byte	0x1c6
 1140 0313 19040000 		.4byte	0x419
 1141 0317 7802     		.2byte	0x278
 1142 0319 0B       		.uleb128 0xb
 1143 031a 81000000 		.4byte	.LASF56
 1144 031e 06       		.byte	0x6
 1145 031f C701     		.2byte	0x1c7
 1146 0321 B7000000 		.4byte	0xb7
 1147 0325 9002     		.2byte	0x290
 1148 0327 0B       		.uleb128 0xb
 1149 0328 E8000000 		.4byte	.LASF57
 1150 032c 06       		.byte	0x6
 1151 032d C801     		.2byte	0x1c8
 1152 032f B7000000 		.4byte	0xb7
 1153 0333 9402     		.2byte	0x294
 1154 0335 0B       		.uleb128 0xb
ARM GAS  /tmp/ccRqcMej.s 			page 44


 1155 0336 91000000 		.4byte	.LASF58
 1156 033a 06       		.byte	0x6
 1157 033b C901     		.2byte	0x1c9
 1158 033d B7000000 		.4byte	0xb7
 1159 0341 9802     		.2byte	0x298
 1160 0343 0B       		.uleb128 0xb
 1161 0344 0C050000 		.4byte	.LASF59
 1162 0348 06       		.byte	0x6
 1163 0349 CA01     		.2byte	0x1ca
 1164 034b B7000000 		.4byte	0xb7
 1165 034f 9C02     		.2byte	0x29c
 1166 0351 0B       		.uleb128 0xb
 1167 0352 C7020000 		.4byte	.LASF60
 1168 0356 06       		.byte	0x6
 1169 0357 CB01     		.2byte	0x1cb
 1170 0359 B7000000 		.4byte	0xb7
 1171 035d A002     		.2byte	0x2a0
 1172 035f 0B       		.uleb128 0xb
 1173 0360 54070000 		.4byte	.LASF61
 1174 0364 06       		.byte	0x6
 1175 0365 CC01     		.2byte	0x1cc
 1176 0367 E9030000 		.4byte	0x3e9
 1177 036b A402     		.2byte	0x2a4
 1178 036d 0B       		.uleb128 0xb
 1179 036e 4E070000 		.4byte	.LASF62
 1180 0372 06       		.byte	0x6
 1181 0373 CD01     		.2byte	0x1cd
 1182 0375 B7000000 		.4byte	0xb7
 1183 0379 A802     		.2byte	0x2a8
 1184 037b 00       		.byte	0
 1185 037c 0C       		.uleb128 0xc
 1186 037d 97000000 		.4byte	0x97
 1187 0381 8C030000 		.4byte	0x38c
 1188 0385 0D       		.uleb128 0xd
 1189 0386 C8000000 		.4byte	0xc8
 1190 038a 0B       		.byte	0xb
 1191 038b 00       		.byte	0
 1192 038c 05       		.uleb128 0x5
 1193 038d 7C030000 		.4byte	0x37c
 1194 0391 0C       		.uleb128 0xc
 1195 0392 BC000000 		.4byte	0xbc
 1196 0396 A1030000 		.4byte	0x3a1
 1197 039a 0D       		.uleb128 0xd
 1198 039b C8000000 		.4byte	0xc8
 1199 039f 01       		.byte	0x1
 1200 03a0 00       		.byte	0
 1201 03a1 06       		.uleb128 0x6
 1202 03a2 91030000 		.4byte	0x391
 1203 03a6 05       		.uleb128 0x5
 1204 03a7 A1030000 		.4byte	0x3a1
 1205 03ab 0C       		.uleb128 0xc
 1206 03ac BC000000 		.4byte	0xbc
 1207 03b0 BB030000 		.4byte	0x3bb
 1208 03b4 0D       		.uleb128 0xd
 1209 03b5 C8000000 		.4byte	0xc8
 1210 03b9 03       		.byte	0x3
 1211 03ba 00       		.byte	0
ARM GAS  /tmp/ccRqcMej.s 			page 45


 1212 03bb 06       		.uleb128 0x6
 1213 03bc AB030000 		.4byte	0x3ab
 1214 03c0 05       		.uleb128 0x5
 1215 03c1 BB030000 		.4byte	0x3bb
 1216 03c5 05       		.uleb128 0x5
 1217 03c6 BB030000 		.4byte	0x3bb
 1218 03ca 0C       		.uleb128 0xc
 1219 03cb BC000000 		.4byte	0xbc
 1220 03cf DA030000 		.4byte	0x3da
 1221 03d3 0D       		.uleb128 0xd
 1222 03d4 C8000000 		.4byte	0xc8
 1223 03d8 04       		.byte	0x4
 1224 03d9 00       		.byte	0
 1225 03da 06       		.uleb128 0x6
 1226 03db CA030000 		.4byte	0x3ca
 1227 03df 05       		.uleb128 0x5
 1228 03e0 DA030000 		.4byte	0x3da
 1229 03e4 05       		.uleb128 0x5
 1230 03e5 DA030000 		.4byte	0x3da
 1231 03e9 0C       		.uleb128 0xc
 1232 03ea AC000000 		.4byte	0xac
 1233 03ee F9030000 		.4byte	0x3f9
 1234 03f2 0D       		.uleb128 0xd
 1235 03f3 C8000000 		.4byte	0xc8
 1236 03f7 00       		.byte	0
 1237 03f8 00       		.byte	0
 1238 03f9 0C       		.uleb128 0xc
 1239 03fa AC000000 		.4byte	0xac
 1240 03fe 09040000 		.4byte	0x409
 1241 0402 0D       		.uleb128 0xd
 1242 0403 C8000000 		.4byte	0xc8
 1243 0407 5C       		.byte	0x5c
 1244 0408 00       		.byte	0
 1245 0409 0C       		.uleb128 0xc
 1246 040a AC000000 		.4byte	0xac
 1247 040e 19040000 		.4byte	0x419
 1248 0412 0D       		.uleb128 0xd
 1249 0413 C8000000 		.4byte	0xc8
 1250 0417 0E       		.byte	0xe
 1251 0418 00       		.byte	0
 1252 0419 0C       		.uleb128 0xc
 1253 041a AC000000 		.4byte	0xac
 1254 041e 29040000 		.4byte	0x429
 1255 0422 0D       		.uleb128 0xd
 1256 0423 C8000000 		.4byte	0xc8
 1257 0427 05       		.byte	0x5
 1258 0428 00       		.byte	0
 1259 0429 0E       		.uleb128 0xe
 1260 042a 4A080000 		.4byte	.LASF63
 1261 042e 06       		.byte	0x6
 1262 042f CE01     		.2byte	0x1ce
 1263 0431 CF000000 		.4byte	0xcf
 1264 0435 0F       		.uleb128 0xf
 1265 0436 86070000 		.4byte	.LASF64
 1266 043a 06       		.byte	0x6
 1267 043b 6508     		.2byte	0x865
 1268 043d A7000000 		.4byte	0xa7
ARM GAS  /tmp/ccRqcMej.s 			page 46


 1269 0441 10       		.uleb128 0x10
 1270 0442 AD060000 		.4byte	.LASF65
 1271 0446 07       		.byte	0x7
 1272 0447 3A       		.byte	0x3a
 1273 0448 AC000000 		.4byte	0xac
 1274 044c 0C       		.uleb128 0xc
 1275 044d BC000000 		.4byte	0xbc
 1276 0451 5C040000 		.4byte	0x45c
 1277 0455 0D       		.uleb128 0xd
 1278 0456 C8000000 		.4byte	0xc8
 1279 045a 00       		.byte	0
 1280 045b 00       		.byte	0
 1281 045c 06       		.uleb128 0x6
 1282 045d 4C040000 		.4byte	0x44c
 1283 0461 05       		.uleb128 0x5
 1284 0462 5C040000 		.4byte	0x45c
 1285 0466 05       		.uleb128 0x5
 1286 0467 5C040000 		.4byte	0x45c
 1287 046b 05       		.uleb128 0x5
 1288 046c 5C040000 		.4byte	0x45c
 1289 0470 05       		.uleb128 0x5
 1290 0471 5C040000 		.4byte	0x45c
 1291 0475 05       		.uleb128 0x5
 1292 0476 5C040000 		.4byte	0x45c
 1293 047a 05       		.uleb128 0x5
 1294 047b 5C040000 		.4byte	0x45c
 1295 047f 11       		.uleb128 0x11
 1296 0480 E8       		.byte	0xe8
 1297 0481 08       		.byte	0x8
 1298 0482 38       		.byte	0x38
 1299 0483 E8040000 		.4byte	0x4e8
 1300 0487 12       		.uleb128 0x12
 1301 0488 97040000 		.4byte	.LASF66
 1302 048c 08       		.byte	0x8
 1303 048d 39       		.byte	0x39
 1304 048e B7000000 		.4byte	0xb7
 1305 0492 00       		.byte	0
 1306 0493 12       		.uleb128 0x12
 1307 0494 F6000000 		.4byte	.LASF67
 1308 0498 08       		.byte	0x8
 1309 0499 3A       		.byte	0x3a
 1310 049a B7000000 		.4byte	0xb7
 1311 049e 04       		.byte	0x4
 1312 049f 12       		.uleb128 0x12
 1313 04a0 F3010000 		.4byte	.LASF68
 1314 04a4 08       		.byte	0x8
 1315 04a5 3B       		.byte	0x3b
 1316 04a6 BC000000 		.4byte	0xbc
 1317 04aa 08       		.byte	0x8
 1318 04ab 12       		.uleb128 0x12
 1319 04ac 6B000000 		.4byte	.LASF69
 1320 04b0 08       		.byte	0x8
 1321 04b1 3C       		.byte	0x3c
 1322 04b2 BC000000 		.4byte	0xbc
 1323 04b6 0C       		.byte	0xc
 1324 04b7 12       		.uleb128 0x12
 1325 04b8 E3050000 		.4byte	.LASF70
ARM GAS  /tmp/ccRqcMej.s 			page 47


 1326 04bc 08       		.byte	0x8
 1327 04bd 3D       		.byte	0x3d
 1328 04be 61040000 		.4byte	0x461
 1329 04c2 10       		.byte	0x10
 1330 04c3 12       		.uleb128 0x12
 1331 04c4 31000000 		.4byte	.LASF71
 1332 04c8 08       		.byte	0x8
 1333 04c9 3E       		.byte	0x3e
 1334 04ca BC000000 		.4byte	0xbc
 1335 04ce 14       		.byte	0x14
 1336 04cf 12       		.uleb128 0x12
 1337 04d0 ED050000 		.4byte	.LASF72
 1338 04d4 08       		.byte	0x8
 1339 04d5 3F       		.byte	0x3f
 1340 04d6 FD040000 		.4byte	0x4fd
 1341 04da 18       		.byte	0x18
 1342 04db 12       		.uleb128 0x12
 1343 04dc D5040000 		.4byte	.LASF73
 1344 04e0 08       		.byte	0x8
 1345 04e1 40       		.byte	0x40
 1346 04e2 B7000000 		.4byte	0xb7
 1347 04e6 E4       		.byte	0xe4
 1348 04e7 00       		.byte	0
 1349 04e8 0C       		.uleb128 0xc
 1350 04e9 BC000000 		.4byte	0xbc
 1351 04ed F8040000 		.4byte	0x4f8
 1352 04f1 0D       		.uleb128 0xd
 1353 04f2 C8000000 		.4byte	0xc8
 1354 04f6 32       		.byte	0x32
 1355 04f7 00       		.byte	0
 1356 04f8 06       		.uleb128 0x6
 1357 04f9 E8040000 		.4byte	0x4e8
 1358 04fd 05       		.uleb128 0x5
 1359 04fe F8040000 		.4byte	0x4f8
 1360 0502 13       		.uleb128 0x13
 1361 0503 45666300 		.ascii	"Efc\000"
 1362 0507 08       		.byte	0x8
 1363 0508 41       		.byte	0x41
 1364 0509 7F040000 		.4byte	0x47f
 1365 050d 14       		.uleb128 0x14
 1366 050e 4801     		.2byte	0x148
 1367 0510 09       		.byte	0x9
 1368 0511 38       		.byte	0x38
 1369 0512 36070000 		.4byte	0x736
 1370 0516 12       		.uleb128 0x12
 1371 0517 2B0B0000 		.4byte	.LASF74
 1372 051b 09       		.byte	0x9
 1373 051c 39       		.byte	0x39
 1374 051d B7000000 		.4byte	0xb7
 1375 0521 00       		.byte	0
 1376 0522 12       		.uleb128 0x12
 1377 0523 EB030000 		.4byte	.LASF75
 1378 0527 09       		.byte	0x9
 1379 0528 3A       		.byte	0x3a
 1380 0529 B7000000 		.4byte	0xb7
 1381 052d 04       		.byte	0x4
 1382 052e 12       		.uleb128 0x12
ARM GAS  /tmp/ccRqcMej.s 			page 48


 1383 052f 210A0000 		.4byte	.LASF76
 1384 0533 09       		.byte	0x9
 1385 0534 3B       		.byte	0x3b
 1386 0535 BC000000 		.4byte	0xbc
 1387 0539 08       		.byte	0x8
 1388 053a 12       		.uleb128 0x12
 1389 053b E3050000 		.4byte	.LASF70
 1390 053f 09       		.byte	0x9
 1391 0540 3C       		.byte	0x3c
 1392 0541 7A040000 		.4byte	0x47a
 1393 0545 0C       		.byte	0xc
 1394 0546 12       		.uleb128 0x12
 1395 0547 F4030000 		.4byte	.LASF77
 1396 054b 09       		.byte	0x9
 1397 054c 3D       		.byte	0x3d
 1398 054d B7000000 		.4byte	0xb7
 1399 0551 10       		.byte	0x10
 1400 0552 12       		.uleb128 0x12
 1401 0553 590B0000 		.4byte	.LASF78
 1402 0557 09       		.byte	0x9
 1403 0558 3E       		.byte	0x3e
 1404 0559 B7000000 		.4byte	0xb7
 1405 055d 14       		.byte	0x14
 1406 055e 12       		.uleb128 0x12
 1407 055f B90A0000 		.4byte	.LASF79
 1408 0563 09       		.byte	0x9
 1409 0564 3F       		.byte	0x3f
 1410 0565 BC000000 		.4byte	0xbc
 1411 0569 18       		.byte	0x18
 1412 056a 12       		.uleb128 0x12
 1413 056b D6010000 		.4byte	.LASF80
 1414 056f 09       		.byte	0x9
 1415 0570 40       		.byte	0x40
 1416 0571 B7000000 		.4byte	0xb7
 1417 0575 1C       		.byte	0x1c
 1418 0576 12       		.uleb128 0x12
 1419 0577 93070000 		.4byte	.LASF81
 1420 057b 09       		.byte	0x9
 1421 057c 41       		.byte	0x41
 1422 057d B7000000 		.4byte	0xb7
 1423 0581 20       		.byte	0x20
 1424 0582 12       		.uleb128 0x12
 1425 0583 AE020000 		.4byte	.LASF82
 1426 0587 09       		.byte	0x9
 1427 0588 42       		.byte	0x42
 1428 0589 B7000000 		.4byte	0xb7
 1429 058d 24       		.byte	0x24
 1430 058e 12       		.uleb128 0x12
 1431 058f 52010000 		.4byte	.LASF83
 1432 0593 09       		.byte	0x9
 1433 0594 43       		.byte	0x43
 1434 0595 B7000000 		.4byte	0xb7
 1435 0599 28       		.byte	0x28
 1436 059a 12       		.uleb128 0x12
 1437 059b ED050000 		.4byte	.LASF72
 1438 059f 09       		.byte	0x9
 1439 05a0 44       		.byte	0x44
ARM GAS  /tmp/ccRqcMej.s 			page 49


 1440 05a1 75040000 		.4byte	0x475
 1441 05a5 2C       		.byte	0x2c
 1442 05a6 12       		.uleb128 0x12
 1443 05a7 6E0A0000 		.4byte	.LASF84
 1444 05ab 09       		.byte	0x9
 1445 05ac 45       		.byte	0x45
 1446 05ad B7000000 		.4byte	0xb7
 1447 05b1 30       		.byte	0x30
 1448 05b2 12       		.uleb128 0x12
 1449 05b3 F7050000 		.4byte	.LASF85
 1450 05b7 09       		.byte	0x9
 1451 05b8 46       		.byte	0x46
 1452 05b9 70040000 		.4byte	0x470
 1453 05bd 34       		.byte	0x34
 1454 05be 12       		.uleb128 0x12
 1455 05bf 4E040000 		.4byte	.LASF86
 1456 05c3 09       		.byte	0x9
 1457 05c4 47       		.byte	0x47
 1458 05c5 B7000000 		.4byte	0xb7
 1459 05c9 38       		.byte	0x38
 1460 05ca 12       		.uleb128 0x12
 1461 05cb 01060000 		.4byte	.LASF87
 1462 05cf 09       		.byte	0x9
 1463 05d0 48       		.byte	0x48
 1464 05d1 6B040000 		.4byte	0x46b
 1465 05d5 3C       		.byte	0x3c
 1466 05d6 12       		.uleb128 0x12
 1467 05d7 08040000 		.4byte	.LASF88
 1468 05db 09       		.byte	0x9
 1469 05dc 49       		.byte	0x49
 1470 05dd 46070000 		.4byte	0x746
 1471 05e1 40       		.byte	0x40
 1472 05e2 12       		.uleb128 0x12
 1473 05e3 0B060000 		.4byte	.LASF89
 1474 05e7 09       		.byte	0x9
 1475 05e8 4A       		.byte	0x4a
 1476 05e9 66040000 		.4byte	0x466
 1477 05ed 5C       		.byte	0x5c
 1478 05ee 12       		.uleb128 0x12
 1479 05ef 2B080000 		.4byte	.LASF90
 1480 05f3 09       		.byte	0x9
 1481 05f4 4B       		.byte	0x4b
 1482 05f5 B7000000 		.4byte	0xb7
 1483 05f9 60       		.byte	0x60
 1484 05fa 12       		.uleb128 0x12
 1485 05fb 68070000 		.4byte	.LASF91
 1486 05ff 09       		.byte	0x9
 1487 0600 4C       		.byte	0x4c
 1488 0601 B7000000 		.4byte	0xb7
 1489 0605 64       		.byte	0x64
 1490 0606 12       		.uleb128 0x12
 1491 0607 440B0000 		.4byte	.LASF92
 1492 060b 09       		.byte	0x9
 1493 060c 4D       		.byte	0x4d
 1494 060d BC000000 		.4byte	0xbc
 1495 0611 68       		.byte	0x68
 1496 0612 12       		.uleb128 0x12
ARM GAS  /tmp/ccRqcMej.s 			page 50


 1497 0613 B8020000 		.4byte	.LASF93
 1498 0617 09       		.byte	0x9
 1499 0618 4E       		.byte	0x4e
 1500 0619 BC000000 		.4byte	0xbc
 1501 061d 6C       		.byte	0x6c
 1502 061e 12       		.uleb128 0x12
 1503 061f 8C030000 		.4byte	.LASF94
 1504 0623 09       		.byte	0x9
 1505 0624 4F       		.byte	0x4f
 1506 0625 B7000000 		.4byte	0xb7
 1507 0629 70       		.byte	0x70
 1508 062a 12       		.uleb128 0x12
 1509 062b B7050000 		.4byte	.LASF95
 1510 062f 09       		.byte	0x9
 1511 0630 50       		.byte	0x50
 1512 0631 B7000000 		.4byte	0xb7
 1513 0635 74       		.byte	0x74
 1514 0636 12       		.uleb128 0x12
 1515 0637 CE000000 		.4byte	.LASF96
 1516 063b 09       		.byte	0x9
 1517 063c 51       		.byte	0x51
 1518 063d B7000000 		.4byte	0xb7
 1519 0641 78       		.byte	0x78
 1520 0642 12       		.uleb128 0x12
 1521 0643 15060000 		.4byte	.LASF97
 1522 0647 09       		.byte	0x9
 1523 0648 52       		.byte	0x52
 1524 0649 60070000 		.4byte	0x760
 1525 064d 7C       		.byte	0x7c
 1526 064e 12       		.uleb128 0x12
 1527 064f FC0A0000 		.4byte	.LASF98
 1528 0653 09       		.byte	0x9
 1529 0654 53       		.byte	0x53
 1530 0655 B7000000 		.4byte	0xb7
 1531 0659 E4       		.byte	0xe4
 1532 065a 12       		.uleb128 0x12
 1533 065b C1030000 		.4byte	.LASF99
 1534 065f 09       		.byte	0x9
 1535 0660 54       		.byte	0x54
 1536 0661 BC000000 		.4byte	0xbc
 1537 0665 E8       		.byte	0xe8
 1538 0666 12       		.uleb128 0x12
 1539 0667 5E070000 		.4byte	.LASF100
 1540 066b 09       		.byte	0x9
 1541 066c 55       		.byte	0x55
 1542 066d E4030000 		.4byte	0x3e4
 1543 0671 EC       		.byte	0xec
 1544 0672 15       		.uleb128 0x15
 1545 0673 FE030000 		.4byte	.LASF101
 1546 0677 09       		.byte	0x9
 1547 0678 56       		.byte	0x56
 1548 0679 B7000000 		.4byte	0xb7
 1549 067d 0001     		.2byte	0x100
 1550 067f 15       		.uleb128 0x15
 1551 0680 630B0000 		.4byte	.LASF102
 1552 0684 09       		.byte	0x9
 1553 0685 57       		.byte	0x57
ARM GAS  /tmp/ccRqcMej.s 			page 51


 1554 0686 B7000000 		.4byte	0xb7
 1555 068a 0401     		.2byte	0x104
 1556 068c 15       		.uleb128 0x15
 1557 068d 73030000 		.4byte	.LASF103
 1558 0691 09       		.byte	0x9
 1559 0692 58       		.byte	0x58
 1560 0693 BC000000 		.4byte	0xbc
 1561 0697 0801     		.2byte	0x108
 1562 0699 15       		.uleb128 0x15
 1563 069a 1D040000 		.4byte	.LASF104
 1564 069e 09       		.byte	0x9
 1565 069f 59       		.byte	0x59
 1566 06a0 B7000000 		.4byte	0xb7
 1567 06a4 0C01     		.2byte	0x10c
 1568 06a6 15       		.uleb128 0x15
 1569 06a7 980B0000 		.4byte	.LASF105
 1570 06ab 09       		.byte	0x9
 1571 06ac 5A       		.byte	0x5a
 1572 06ad B7000000 		.4byte	0xb7
 1573 06b1 1001     		.2byte	0x110
 1574 06b3 15       		.uleb128 0x15
 1575 06b4 3E000000 		.4byte	.LASF106
 1576 06b8 09       		.byte	0x9
 1577 06b9 5B       		.byte	0x5b
 1578 06ba B7000000 		.4byte	0xb7
 1579 06be 1401     		.2byte	0x114
 1580 06c0 15       		.uleb128 0x15
 1581 06c1 FA060000 		.4byte	.LASF107
 1582 06c5 09       		.byte	0x9
 1583 06c6 5C       		.byte	0x5c
 1584 06c7 B7000000 		.4byte	0xb7
 1585 06cb 1801     		.2byte	0x118
 1586 06cd 15       		.uleb128 0x15
 1587 06ce 60060000 		.4byte	.LASF108
 1588 06d2 09       		.byte	0x9
 1589 06d3 5D       		.byte	0x5d
 1590 06d4 BC000000 		.4byte	0xbc
 1591 06d8 1C01     		.2byte	0x11c
 1592 06da 15       		.uleb128 0x15
 1593 06db 98060000 		.4byte	.LASF109
 1594 06df 09       		.byte	0x9
 1595 06e0 5E       		.byte	0x5e
 1596 06e1 BC000000 		.4byte	0xbc
 1597 06e5 2001     		.2byte	0x120
 1598 06e7 15       		.uleb128 0x15
 1599 06e8 2A060000 		.4byte	.LASF110
 1600 06ec 09       		.byte	0x9
 1601 06ed 5F       		.byte	0x5f
 1602 06ee C5030000 		.4byte	0x3c5
 1603 06f2 2401     		.2byte	0x124
 1604 06f4 15       		.uleb128 0x15
 1605 06f5 4C000000 		.4byte	.LASF111
 1606 06f9 09       		.byte	0x9
 1607 06fa 60       		.byte	0x60
 1608 06fb B7000000 		.4byte	0xb7
 1609 06ff 3401     		.2byte	0x134
 1610 0701 15       		.uleb128 0x15
ARM GAS  /tmp/ccRqcMej.s 			page 52


 1611 0702 08070000 		.4byte	.LASF112
 1612 0706 09       		.byte	0x9
 1613 0707 61       		.byte	0x61
 1614 0708 B7000000 		.4byte	0xb7
 1615 070c 3801     		.2byte	0x138
 1616 070e 15       		.uleb128 0x15
 1617 070f 6E060000 		.4byte	.LASF113
 1618 0713 09       		.byte	0x9
 1619 0714 62       		.byte	0x62
 1620 0715 BC000000 		.4byte	0xbc
 1621 0719 3C01     		.2byte	0x13c
 1622 071b 15       		.uleb128 0x15
 1623 071c 0D080000 		.4byte	.LASF114
 1624 0720 09       		.byte	0x9
 1625 0721 63       		.byte	0x63
 1626 0722 BC000000 		.4byte	0xbc
 1627 0726 4001     		.2byte	0x140
 1628 0728 15       		.uleb128 0x15
 1629 0729 27020000 		.4byte	.LASF115
 1630 072d 09       		.byte	0x9
 1631 072e 64       		.byte	0x64
 1632 072f BC000000 		.4byte	0xbc
 1633 0733 4401     		.2byte	0x144
 1634 0735 00       		.byte	0
 1635 0736 0C       		.uleb128 0xc
 1636 0737 B7000000 		.4byte	0xb7
 1637 073b 46070000 		.4byte	0x746
 1638 073f 0D       		.uleb128 0xd
 1639 0740 C8000000 		.4byte	0xc8
 1640 0744 06       		.byte	0x6
 1641 0745 00       		.byte	0
 1642 0746 05       		.uleb128 0x5
 1643 0747 36070000 		.4byte	0x736
 1644 074b 0C       		.uleb128 0xc
 1645 074c BC000000 		.4byte	0xbc
 1646 0750 5B070000 		.4byte	0x75b
 1647 0754 0D       		.uleb128 0xd
 1648 0755 C8000000 		.4byte	0xc8
 1649 0759 19       		.byte	0x19
 1650 075a 00       		.byte	0
 1651 075b 06       		.uleb128 0x6
 1652 075c 4B070000 		.4byte	0x74b
 1653 0760 05       		.uleb128 0x5
 1654 0761 5B070000 		.4byte	0x75b
 1655 0765 13       		.uleb128 0x13
 1656 0766 506D6300 		.ascii	"Pmc\000"
 1657 076a 09       		.byte	0x9
 1658 076b 65       		.byte	0x65
 1659 076c 0D050000 		.4byte	0x50d
 1660 0770 11       		.uleb128 0x11
 1661 0771 18       		.byte	0x18
 1662 0772 0A       		.byte	0xa
 1663 0773 37       		.byte	0x37
 1664 0774 C1070000 		.4byte	0x7c1
 1665 0778 12       		.uleb128 0x12
 1666 0779 2C010000 		.4byte	.LASF116
 1667 077d 0A       		.byte	0xa
ARM GAS  /tmp/ccRqcMej.s 			page 53


 1668 077e 38       		.byte	0x38
 1669 077f B7000000 		.4byte	0xb7
 1670 0783 00       		.byte	0
 1671 0784 12       		.uleb128 0x12
 1672 0785 2B030000 		.4byte	.LASF117
 1673 0789 0A       		.byte	0xa
 1674 078a 39       		.byte	0x39
 1675 078b B7000000 		.4byte	0xb7
 1676 078f 04       		.byte	0x4
 1677 0790 12       		.uleb128 0x12
 1678 0791 FA080000 		.4byte	.LASF118
 1679 0795 0A       		.byte	0xa
 1680 0796 3A       		.byte	0x3a
 1681 0797 B7000000 		.4byte	0xb7
 1682 079b 08       		.byte	0x8
 1683 079c 12       		.uleb128 0x12
 1684 079d CF080000 		.4byte	.LASF119
 1685 07a1 0A       		.byte	0xa
 1686 07a2 3B       		.byte	0x3b
 1687 07a3 B7000000 		.4byte	0xb7
 1688 07a7 0C       		.byte	0xc
 1689 07a8 12       		.uleb128 0x12
 1690 07a9 DE0A0000 		.4byte	.LASF120
 1691 07ad 0A       		.byte	0xa
 1692 07ae 3C       		.byte	0x3c
 1693 07af B7000000 		.4byte	0xb7
 1694 07b3 10       		.byte	0x10
 1695 07b4 12       		.uleb128 0x12
 1696 07b5 CD040000 		.4byte	.LASF121
 1697 07b9 0A       		.byte	0xa
 1698 07ba 3D       		.byte	0x3d
 1699 07bb BC000000 		.4byte	0xbc
 1700 07bf 14       		.byte	0x14
 1701 07c0 00       		.byte	0
 1702 07c1 04       		.uleb128 0x4
 1703 07c2 26030000 		.4byte	.LASF122
 1704 07c6 0A       		.byte	0xa
 1705 07c7 3E       		.byte	0x3e
 1706 07c8 70070000 		.4byte	0x770
 1707 07cc 04       		.uleb128 0x4
 1708 07cd 4C090000 		.4byte	.LASF123
 1709 07d1 0B       		.byte	0xb
 1710 07d2 07       		.byte	0x7
 1711 07d3 25000000 		.4byte	0x25
 1712 07d7 04       		.uleb128 0x4
 1713 07d8 F50A0000 		.4byte	.LASF124
 1714 07dc 0C       		.byte	0xc
 1715 07dd 2C       		.byte	0x2c
 1716 07de 65000000 		.4byte	0x65
 1717 07e2 04       		.uleb128 0x4
 1718 07e3 4A010000 		.4byte	.LASF125
 1719 07e7 0C       		.byte	0xc
 1720 07e8 72       		.byte	0x72
 1721 07e9 65000000 		.4byte	0x65
 1722 07ed 0E       		.uleb128 0xe
 1723 07ee 02090000 		.4byte	.LASF126
 1724 07f2 0D       		.byte	0xd
ARM GAS  /tmp/ccRqcMej.s 			page 54


 1725 07f3 6501     		.2byte	0x165
 1726 07f5 2C000000 		.4byte	0x2c
 1727 07f9 16       		.uleb128 0x16
 1728 07fa 04       		.byte	0x4
 1729 07fb 0C       		.byte	0xc
 1730 07fc A6       		.byte	0xa6
 1731 07fd 18080000 		.4byte	0x818
 1732 0801 17       		.uleb128 0x17
 1733 0802 B9040000 		.4byte	.LASF127
 1734 0806 0C       		.byte	0xc
 1735 0807 A8       		.byte	0xa8
 1736 0808 ED070000 		.4byte	0x7ed
 1737 080c 17       		.uleb128 0x17
 1738 080d D8070000 		.4byte	.LASF128
 1739 0811 0C       		.byte	0xc
 1740 0812 A9       		.byte	0xa9
 1741 0813 18080000 		.4byte	0x818
 1742 0817 00       		.byte	0
 1743 0818 0C       		.uleb128 0xc
 1744 0819 45000000 		.4byte	0x45
 1745 081d 28080000 		.4byte	0x828
 1746 0821 0D       		.uleb128 0xd
 1747 0822 C8000000 		.4byte	0xc8
 1748 0826 03       		.byte	0x3
 1749 0827 00       		.byte	0
 1750 0828 11       		.uleb128 0x11
 1751 0829 08       		.byte	0x8
 1752 082a 0C       		.byte	0xc
 1753 082b A3       		.byte	0xa3
 1754 082c 49080000 		.4byte	0x849
 1755 0830 12       		.uleb128 0x12
 1756 0831 E5010000 		.4byte	.LASF129
 1757 0835 0C       		.byte	0xc
 1758 0836 A5       		.byte	0xa5
 1759 0837 25000000 		.4byte	0x25
 1760 083b 00       		.byte	0
 1761 083c 12       		.uleb128 0x12
 1762 083d 10040000 		.4byte	.LASF130
 1763 0841 0C       		.byte	0xc
 1764 0842 AA       		.byte	0xaa
 1765 0843 F9070000 		.4byte	0x7f9
 1766 0847 04       		.byte	0x4
 1767 0848 00       		.byte	0
 1768 0849 04       		.uleb128 0x4
 1769 084a D8050000 		.4byte	.LASF131
 1770 084e 0C       		.byte	0xc
 1771 084f AB       		.byte	0xab
 1772 0850 28080000 		.4byte	0x828
 1773 0854 04       		.uleb128 0x4
 1774 0855 00000000 		.4byte	.LASF132
 1775 0859 0C       		.byte	0xc
 1776 085a AF       		.byte	0xaf
 1777 085b CC070000 		.4byte	0x7cc
 1778 085f 04       		.uleb128 0x4
 1779 0860 93080000 		.4byte	.LASF133
 1780 0864 0E       		.byte	0xe
 1781 0865 16       		.byte	0x16
ARM GAS  /tmp/ccRqcMej.s 			page 55


 1782 0866 77000000 		.4byte	0x77
 1783 086a 18       		.uleb128 0x18
 1784 086b 98010000 		.4byte	.LASF138
 1785 086f 18       		.byte	0x18
 1786 0870 0E       		.byte	0xe
 1787 0871 2D       		.byte	0x2d
 1788 0872 BD080000 		.4byte	0x8bd
 1789 0876 12       		.uleb128 0x12
 1790 0877 CA030000 		.4byte	.LASF134
 1791 087b 0E       		.byte	0xe
 1792 087c 2F       		.byte	0x2f
 1793 087d BD080000 		.4byte	0x8bd
 1794 0881 00       		.byte	0
 1795 0882 19       		.uleb128 0x19
 1796 0883 5F6B00   		.ascii	"_k\000"
 1797 0886 0E       		.byte	0xe
 1798 0887 30       		.byte	0x30
 1799 0888 25000000 		.4byte	0x25
 1800 088c 04       		.byte	0x4
 1801 088d 12       		.uleb128 0x12
 1802 088e 5B080000 		.4byte	.LASF135
 1803 0892 0E       		.byte	0xe
 1804 0893 30       		.byte	0x30
 1805 0894 25000000 		.4byte	0x25
 1806 0898 08       		.byte	0x8
 1807 0899 12       		.uleb128 0x12
 1808 089a AE070000 		.4byte	.LASF136
 1809 089e 0E       		.byte	0xe
 1810 089f 30       		.byte	0x30
 1811 08a0 25000000 		.4byte	0x25
 1812 08a4 0C       		.byte	0xc
 1813 08a5 12       		.uleb128 0x12
 1814 08a6 99020000 		.4byte	.LASF137
 1815 08aa 0E       		.byte	0xe
 1816 08ab 30       		.byte	0x30
 1817 08ac 25000000 		.4byte	0x25
 1818 08b0 10       		.byte	0x10
 1819 08b1 19       		.uleb128 0x19
 1820 08b2 5F7800   		.ascii	"_x\000"
 1821 08b5 0E       		.byte	0xe
 1822 08b6 31       		.byte	0x31
 1823 08b7 C3080000 		.4byte	0x8c3
 1824 08bb 14       		.byte	0x14
 1825 08bc 00       		.byte	0
 1826 08bd 1A       		.uleb128 0x1a
 1827 08be 04       		.byte	0x4
 1828 08bf 6A080000 		.4byte	0x86a
 1829 08c3 0C       		.uleb128 0xc
 1830 08c4 5F080000 		.4byte	0x85f
 1831 08c8 D3080000 		.4byte	0x8d3
 1832 08cc 0D       		.uleb128 0xd
 1833 08cd C8000000 		.4byte	0xc8
 1834 08d1 00       		.byte	0
 1835 08d2 00       		.byte	0
 1836 08d3 18       		.uleb128 0x18
 1837 08d4 A4080000 		.4byte	.LASF139
 1838 08d8 24       		.byte	0x24
ARM GAS  /tmp/ccRqcMej.s 			page 56


 1839 08d9 0E       		.byte	0xe
 1840 08da 35       		.byte	0x35
 1841 08db 4C090000 		.4byte	0x94c
 1842 08df 12       		.uleb128 0x12
 1843 08e0 7D030000 		.4byte	.LASF140
 1844 08e4 0E       		.byte	0xe
 1845 08e5 37       		.byte	0x37
 1846 08e6 25000000 		.4byte	0x25
 1847 08ea 00       		.byte	0
 1848 08eb 12       		.uleb128 0x12
 1849 08ec 11090000 		.4byte	.LASF141
 1850 08f0 0E       		.byte	0xe
 1851 08f1 38       		.byte	0x38
 1852 08f2 25000000 		.4byte	0x25
 1853 08f6 04       		.byte	0x4
 1854 08f7 12       		.uleb128 0x12
 1855 08f8 CC010000 		.4byte	.LASF142
 1856 08fc 0E       		.byte	0xe
 1857 08fd 39       		.byte	0x39
 1858 08fe 25000000 		.4byte	0x25
 1859 0902 08       		.byte	0x8
 1860 0903 12       		.uleb128 0x12
 1861 0904 5B040000 		.4byte	.LASF143
 1862 0908 0E       		.byte	0xe
 1863 0909 3A       		.byte	0x3a
 1864 090a 25000000 		.4byte	0x25
 1865 090e 0C       		.byte	0xc
 1866 090f 12       		.uleb128 0x12
 1867 0910 7C060000 		.4byte	.LASF144
 1868 0914 0E       		.byte	0xe
 1869 0915 3B       		.byte	0x3b
 1870 0916 25000000 		.4byte	0x25
 1871 091a 10       		.byte	0x10
 1872 091b 12       		.uleb128 0x12
 1873 091c F2070000 		.4byte	.LASF145
 1874 0920 0E       		.byte	0xe
 1875 0921 3C       		.byte	0x3c
 1876 0922 25000000 		.4byte	0x25
 1877 0926 14       		.byte	0x14
 1878 0927 12       		.uleb128 0x12
 1879 0928 B3010000 		.4byte	.LASF146
 1880 092c 0E       		.byte	0xe
 1881 092d 3D       		.byte	0x3d
 1882 092e 25000000 		.4byte	0x25
 1883 0932 18       		.byte	0x18
 1884 0933 12       		.uleb128 0x12
 1885 0934 95030000 		.4byte	.LASF147
 1886 0938 0E       		.byte	0xe
 1887 0939 3E       		.byte	0x3e
 1888 093a 25000000 		.4byte	0x25
 1889 093e 1C       		.byte	0x1c
 1890 093f 12       		.uleb128 0x12
 1891 0940 1F060000 		.4byte	.LASF148
 1892 0944 0E       		.byte	0xe
 1893 0945 3F       		.byte	0x3f
 1894 0946 25000000 		.4byte	0x25
 1895 094a 20       		.byte	0x20
ARM GAS  /tmp/ccRqcMej.s 			page 57


 1896 094b 00       		.byte	0
 1897 094c 1B       		.uleb128 0x1b
 1898 094d 15000000 		.4byte	.LASF149
 1899 0951 0801     		.2byte	0x108
 1900 0953 0E       		.byte	0xe
 1901 0954 48       		.byte	0x48
 1902 0955 8C090000 		.4byte	0x98c
 1903 0959 12       		.uleb128 0x12
 1904 095a 9E0A0000 		.4byte	.LASF150
 1905 095e 0E       		.byte	0xe
 1906 095f 49       		.byte	0x49
 1907 0960 8C090000 		.4byte	0x98c
 1908 0964 00       		.byte	0
 1909 0965 12       		.uleb128 0x12
 1910 0966 1A090000 		.4byte	.LASF151
 1911 096a 0E       		.byte	0xe
 1912 096b 4A       		.byte	0x4a
 1913 096c 8C090000 		.4byte	0x98c
 1914 0970 80       		.byte	0x80
 1915 0971 15       		.uleb128 0x15
 1916 0972 D50A0000 		.4byte	.LASF152
 1917 0976 0E       		.byte	0xe
 1918 0977 4C       		.byte	0x4c
 1919 0978 5F080000 		.4byte	0x85f
 1920 097c 0001     		.2byte	0x100
 1921 097e 15       		.uleb128 0x15
 1922 097f 4B0B0000 		.4byte	.LASF153
 1923 0983 0E       		.byte	0xe
 1924 0984 4F       		.byte	0x4f
 1925 0985 5F080000 		.4byte	0x85f
 1926 0989 0401     		.2byte	0x104
 1927 098b 00       		.byte	0
 1928 098c 0C       		.uleb128 0xc
 1929 098d C6000000 		.4byte	0xc6
 1930 0991 9C090000 		.4byte	0x99c
 1931 0995 0D       		.uleb128 0xd
 1932 0996 C8000000 		.4byte	0xc8
 1933 099a 1F       		.byte	0x1f
 1934 099b 00       		.byte	0
 1935 099c 1B       		.uleb128 0x1b
 1936 099d F2060000 		.4byte	.LASF154
 1937 09a1 9001     		.2byte	0x190
 1938 09a3 0E       		.byte	0xe
 1939 09a4 5B       		.byte	0x5b
 1940 09a5 DA090000 		.4byte	0x9da
 1941 09a9 12       		.uleb128 0x12
 1942 09aa CA030000 		.4byte	.LASF134
 1943 09ae 0E       		.byte	0xe
 1944 09af 5C       		.byte	0x5c
 1945 09b0 DA090000 		.4byte	0x9da
 1946 09b4 00       		.byte	0
 1947 09b5 12       		.uleb128 0x12
 1948 09b6 34060000 		.4byte	.LASF155
 1949 09ba 0E       		.byte	0xe
 1950 09bb 5D       		.byte	0x5d
 1951 09bc 25000000 		.4byte	0x25
 1952 09c0 04       		.byte	0x4
ARM GAS  /tmp/ccRqcMej.s 			page 58


 1953 09c1 12       		.uleb128 0x12
 1954 09c2 E0010000 		.4byte	.LASF156
 1955 09c6 0E       		.byte	0xe
 1956 09c7 5F       		.byte	0x5f
 1957 09c8 E0090000 		.4byte	0x9e0
 1958 09cc 08       		.byte	0x8
 1959 09cd 12       		.uleb128 0x12
 1960 09ce 15000000 		.4byte	.LASF149
 1961 09d2 0E       		.byte	0xe
 1962 09d3 60       		.byte	0x60
 1963 09d4 4C090000 		.4byte	0x94c
 1964 09d8 88       		.byte	0x88
 1965 09d9 00       		.byte	0
 1966 09da 1A       		.uleb128 0x1a
 1967 09db 04       		.byte	0x4
 1968 09dc 9C090000 		.4byte	0x99c
 1969 09e0 0C       		.uleb128 0xc
 1970 09e1 F0090000 		.4byte	0x9f0
 1971 09e5 F0090000 		.4byte	0x9f0
 1972 09e9 0D       		.uleb128 0xd
 1973 09ea C8000000 		.4byte	0xc8
 1974 09ee 1F       		.byte	0x1f
 1975 09ef 00       		.byte	0
 1976 09f0 1A       		.uleb128 0x1a
 1977 09f1 04       		.byte	0x4
 1978 09f2 F6090000 		.4byte	0x9f6
 1979 09f6 1C       		.uleb128 0x1c
 1980 09f7 18       		.uleb128 0x18
 1981 09f8 0B0A0000 		.4byte	.LASF157
 1982 09fc 08       		.byte	0x8
 1983 09fd 0E       		.byte	0xe
 1984 09fe 73       		.byte	0x73
 1985 09ff 1C0A0000 		.4byte	0xa1c
 1986 0a03 12       		.uleb128 0x12
 1987 0a04 53050000 		.4byte	.LASF158
 1988 0a08 0E       		.byte	0xe
 1989 0a09 74       		.byte	0x74
 1990 0a0a 1C0A0000 		.4byte	0xa1c
 1991 0a0e 00       		.byte	0
 1992 0a0f 12       		.uleb128 0x12
 1993 0a10 E80A0000 		.4byte	.LASF159
 1994 0a14 0E       		.byte	0xe
 1995 0a15 75       		.byte	0x75
 1996 0a16 25000000 		.4byte	0x25
 1997 0a1a 04       		.byte	0x4
 1998 0a1b 00       		.byte	0
 1999 0a1c 1A       		.uleb128 0x1a
 2000 0a1d 04       		.byte	0x4
 2001 0a1e 45000000 		.4byte	0x45
 2002 0a22 18       		.uleb128 0x18
 2003 0a23 91020000 		.4byte	.LASF160
 2004 0a27 68       		.byte	0x68
 2005 0a28 0E       		.byte	0xe
 2006 0a29 B3       		.byte	0xb3
 2007 0a2a 4C0B0000 		.4byte	0xb4c
 2008 0a2e 19       		.uleb128 0x19
 2009 0a2f 5F7000   		.ascii	"_p\000"
ARM GAS  /tmp/ccRqcMej.s 			page 59


 2010 0a32 0E       		.byte	0xe
 2011 0a33 B4       		.byte	0xb4
 2012 0a34 1C0A0000 		.4byte	0xa1c
 2013 0a38 00       		.byte	0
 2014 0a39 19       		.uleb128 0x19
 2015 0a3a 5F7200   		.ascii	"_r\000"
 2016 0a3d 0E       		.byte	0xe
 2017 0a3e B5       		.byte	0xb5
 2018 0a3f 25000000 		.4byte	0x25
 2019 0a43 04       		.byte	0x4
 2020 0a44 19       		.uleb128 0x19
 2021 0a45 5F7700   		.ascii	"_w\000"
 2022 0a48 0E       		.byte	0xe
 2023 0a49 B6       		.byte	0xb6
 2024 0a4a 25000000 		.4byte	0x25
 2025 0a4e 08       		.byte	0x8
 2026 0a4f 12       		.uleb128 0x12
 2027 0a50 C7000000 		.4byte	.LASF161
 2028 0a54 0E       		.byte	0xe
 2029 0a55 B7       		.byte	0xb7
 2030 0a56 4C000000 		.4byte	0x4c
 2031 0a5a 0C       		.byte	0xc
 2032 0a5b 12       		.uleb128 0x12
 2033 0a5c A9050000 		.4byte	.LASF162
 2034 0a60 0E       		.byte	0xe
 2035 0a61 B8       		.byte	0xb8
 2036 0a62 4C000000 		.4byte	0x4c
 2037 0a66 0E       		.byte	0xe
 2038 0a67 19       		.uleb128 0x19
 2039 0a68 5F626600 		.ascii	"_bf\000"
 2040 0a6c 0E       		.byte	0xe
 2041 0a6d B9       		.byte	0xb9
 2042 0a6e F7090000 		.4byte	0x9f7
 2043 0a72 10       		.byte	0x10
 2044 0a73 12       		.uleb128 0x12
 2045 0a74 BE000000 		.4byte	.LASF163
 2046 0a78 0E       		.byte	0xe
 2047 0a79 BA       		.byte	0xba
 2048 0a7a 25000000 		.4byte	0x25
 2049 0a7e 18       		.byte	0x18
 2050 0a7f 12       		.uleb128 0x12
 2051 0a80 77010000 		.4byte	.LASF164
 2052 0a84 0E       		.byte	0xe
 2053 0a85 C1       		.byte	0xc1
 2054 0a86 C6000000 		.4byte	0xc6
 2055 0a8a 1C       		.byte	0x1c
 2056 0a8b 12       		.uleb128 0x12
 2057 0a8c 26010000 		.4byte	.LASF165
 2058 0a90 0E       		.byte	0xe
 2059 0a91 C3       		.byte	0xc3
 2060 0a92 B90C0000 		.4byte	0xcb9
 2061 0a96 20       		.byte	0x20
 2062 0a97 12       		.uleb128 0x12
 2063 0a98 CA060000 		.4byte	.LASF166
 2064 0a9c 0E       		.byte	0xe
 2065 0a9d C5       		.byte	0xc5
 2066 0a9e E30C0000 		.4byte	0xce3
ARM GAS  /tmp/ccRqcMej.s 			page 60


 2067 0aa2 24       		.byte	0x24
 2068 0aa3 12       		.uleb128 0x12
 2069 0aa4 6D0B0000 		.4byte	.LASF167
 2070 0aa8 0E       		.byte	0xe
 2071 0aa9 C8       		.byte	0xc8
 2072 0aaa 070D0000 		.4byte	0xd07
 2073 0aae 28       		.byte	0x28
 2074 0aaf 12       		.uleb128 0x12
 2075 0ab0 DF040000 		.4byte	.LASF168
 2076 0ab4 0E       		.byte	0xe
 2077 0ab5 C9       		.byte	0xc9
 2078 0ab6 210D0000 		.4byte	0xd21
 2079 0aba 2C       		.byte	0x2c
 2080 0abb 19       		.uleb128 0x19
 2081 0abc 5F756200 		.ascii	"_ub\000"
 2082 0ac0 0E       		.byte	0xe
 2083 0ac1 CC       		.byte	0xcc
 2084 0ac2 F7090000 		.4byte	0x9f7
 2085 0ac6 30       		.byte	0x30
 2086 0ac7 19       		.uleb128 0x19
 2087 0ac8 5F757000 		.ascii	"_up\000"
 2088 0acc 0E       		.byte	0xe
 2089 0acd CD       		.byte	0xcd
 2090 0ace 1C0A0000 		.4byte	0xa1c
 2091 0ad2 38       		.byte	0x38
 2092 0ad3 19       		.uleb128 0x19
 2093 0ad4 5F757200 		.ascii	"_ur\000"
 2094 0ad8 0E       		.byte	0xe
 2095 0ad9 CE       		.byte	0xce
 2096 0ada 25000000 		.4byte	0x25
 2097 0ade 3C       		.byte	0x3c
 2098 0adf 12       		.uleb128 0x12
 2099 0ae0 D6020000 		.4byte	.LASF169
 2100 0ae4 0E       		.byte	0xe
 2101 0ae5 D1       		.byte	0xd1
 2102 0ae6 270D0000 		.4byte	0xd27
 2103 0aea 40       		.byte	0x40
 2104 0aeb 12       		.uleb128 0x12
 2105 0aec 050B0000 		.4byte	.LASF170
 2106 0af0 0E       		.byte	0xe
 2107 0af1 D2       		.byte	0xd2
 2108 0af2 370D0000 		.4byte	0xd37
 2109 0af6 43       		.byte	0x43
 2110 0af7 19       		.uleb128 0x19
 2111 0af8 5F6C6200 		.ascii	"_lb\000"
 2112 0afc 0E       		.byte	0xe
 2113 0afd D5       		.byte	0xd5
 2114 0afe F7090000 		.4byte	0x9f7
 2115 0b02 44       		.byte	0x44
 2116 0b03 12       		.uleb128 0x12
 2117 0b04 9B080000 		.4byte	.LASF171
 2118 0b08 0E       		.byte	0xe
 2119 0b09 D8       		.byte	0xd8
 2120 0b0a 25000000 		.4byte	0x25
 2121 0b0e 4C       		.byte	0x4c
 2122 0b0f 12       		.uleb128 0x12
 2123 0b10 CE020000 		.4byte	.LASF172
ARM GAS  /tmp/ccRqcMej.s 			page 61


 2124 0b14 0E       		.byte	0xe
 2125 0b15 D9       		.byte	0xd9
 2126 0b16 D7070000 		.4byte	0x7d7
 2127 0b1a 50       		.byte	0x50
 2128 0b1b 12       		.uleb128 0x12
 2129 0b1c D2070000 		.4byte	.LASF173
 2130 0b20 0E       		.byte	0xe
 2131 0b21 DC       		.byte	0xdc
 2132 0b22 6A0B0000 		.4byte	0xb6a
 2133 0b26 54       		.byte	0x54
 2134 0b27 12       		.uleb128 0x12
 2135 0b28 A9080000 		.4byte	.LASF174
 2136 0b2c 0E       		.byte	0xe
 2137 0b2d E0       		.byte	0xe0
 2138 0b2e 54080000 		.4byte	0x854
 2139 0b32 58       		.byte	0x58
 2140 0b33 12       		.uleb128 0x12
 2141 0b34 17010000 		.4byte	.LASF175
 2142 0b38 0E       		.byte	0xe
 2143 0b39 E2       		.byte	0xe2
 2144 0b3a 49080000 		.4byte	0x849
 2145 0b3e 5C       		.byte	0x5c
 2146 0b3f 12       		.uleb128 0x12
 2147 0b40 3C0B0000 		.4byte	.LASF176
 2148 0b44 0E       		.byte	0xe
 2149 0b45 E3       		.byte	0xe3
 2150 0b46 25000000 		.4byte	0x25
 2151 0b4a 64       		.byte	0x64
 2152 0b4b 00       		.byte	0
 2153 0b4c 1D       		.uleb128 0x1d
 2154 0b4d 25000000 		.4byte	0x25
 2155 0b51 6A0B0000 		.4byte	0xb6a
 2156 0b55 1E       		.uleb128 0x1e
 2157 0b56 6A0B0000 		.4byte	0xb6a
 2158 0b5a 1E       		.uleb128 0x1e
 2159 0b5b C6000000 		.4byte	0xc6
 2160 0b5f 1E       		.uleb128 0x1e
 2161 0b60 A70C0000 		.4byte	0xca7
 2162 0b64 1E       		.uleb128 0x1e
 2163 0b65 25000000 		.4byte	0x25
 2164 0b69 00       		.byte	0
 2165 0b6a 1A       		.uleb128 0x1a
 2166 0b6b 04       		.byte	0x4
 2167 0b6c 750B0000 		.4byte	0xb75
 2168 0b70 06       		.uleb128 0x6
 2169 0b71 6A0B0000 		.4byte	0xb6a
 2170 0b75 1F       		.uleb128 0x1f
 2171 0b76 B20A0000 		.4byte	.LASF177
 2172 0b7a 2804     		.2byte	0x428
 2173 0b7c 0E       		.byte	0xe
 2174 0b7d 3802     		.2byte	0x238
 2175 0b7f A70C0000 		.4byte	0xca7
 2176 0b83 09       		.uleb128 0x9
 2177 0b84 EF000000 		.4byte	.LASF178
 2178 0b88 0E       		.byte	0xe
 2179 0b89 3A02     		.2byte	0x23a
 2180 0b8b 25000000 		.4byte	0x25
ARM GAS  /tmp/ccRqcMej.s 			page 62


 2181 0b8f 00       		.byte	0
 2182 0b90 09       		.uleb128 0x9
 2183 0b91 18050000 		.4byte	.LASF179
 2184 0b95 0E       		.byte	0xe
 2185 0b96 3F02     		.2byte	0x23f
 2186 0b98 8E0D0000 		.4byte	0xd8e
 2187 0b9c 04       		.byte	0x4
 2188 0b9d 09       		.uleb128 0x9
 2189 0b9e 42010000 		.4byte	.LASF180
 2190 0ba2 0E       		.byte	0xe
 2191 0ba3 3F02     		.2byte	0x23f
 2192 0ba5 8E0D0000 		.4byte	0xd8e
 2193 0ba9 08       		.byte	0x8
 2194 0baa 09       		.uleb128 0x9
 2195 0bab 730B0000 		.4byte	.LASF181
 2196 0baf 0E       		.byte	0xe
 2197 0bb0 3F02     		.2byte	0x23f
 2198 0bb2 8E0D0000 		.4byte	0xd8e
 2199 0bb6 0C       		.byte	0xc
 2200 0bb7 09       		.uleb128 0x9
 2201 0bb8 9F030000 		.4byte	.LASF182
 2202 0bbc 0E       		.byte	0xe
 2203 0bbd 4102     		.2byte	0x241
 2204 0bbf 25000000 		.4byte	0x25
 2205 0bc3 10       		.byte	0x10
 2206 0bc4 09       		.uleb128 0x9
 2207 0bc5 02030000 		.4byte	.LASF183
 2208 0bc9 0E       		.byte	0xe
 2209 0bca 4202     		.2byte	0x242
 2210 0bcc 700F0000 		.4byte	0xf70
 2211 0bd0 14       		.byte	0x14
 2212 0bd1 09       		.uleb128 0x9
 2213 0bd2 6D080000 		.4byte	.LASF184
 2214 0bd6 0E       		.byte	0xe
 2215 0bd7 4402     		.2byte	0x244
 2216 0bd9 25000000 		.4byte	0x25
 2217 0bdd 30       		.byte	0x30
 2218 0bde 09       		.uleb128 0x9
 2219 0bdf C2070000 		.4byte	.LASF185
 2220 0be3 0E       		.byte	0xe
 2221 0be4 4502     		.2byte	0x245
 2222 0be6 DD0C0000 		.4byte	0xcdd
 2223 0bea 34       		.byte	0x34
 2224 0beb 09       		.uleb128 0x9
 2225 0bec E6040000 		.4byte	.LASF186
 2226 0bf0 0E       		.byte	0xe
 2227 0bf1 4702     		.2byte	0x247
 2228 0bf3 25000000 		.4byte	0x25
 2229 0bf7 38       		.byte	0x38
 2230 0bf8 09       		.uleb128 0x9
 2231 0bf9 CE050000 		.4byte	.LASF187
 2232 0bfd 0E       		.byte	0xe
 2233 0bfe 4902     		.2byte	0x249
 2234 0c00 8B0F0000 		.4byte	0xf8b
 2235 0c04 3C       		.byte	0x3c
 2236 0c05 09       		.uleb128 0x9
 2237 0c06 BD010000 		.4byte	.LASF188
ARM GAS  /tmp/ccRqcMej.s 			page 63


 2238 0c0a 0E       		.byte	0xe
 2239 0c0b 4C02     		.2byte	0x24c
 2240 0c0d BD080000 		.4byte	0x8bd
 2241 0c11 40       		.byte	0x40
 2242 0c12 09       		.uleb128 0x9
 2243 0c13 AF040000 		.4byte	.LASF189
 2244 0c17 0E       		.byte	0xe
 2245 0c18 4D02     		.2byte	0x24d
 2246 0c1a 25000000 		.4byte	0x25
 2247 0c1e 44       		.byte	0x44
 2248 0c1f 09       		.uleb128 0x9
 2249 0c20 18040000 		.4byte	.LASF190
 2250 0c24 0E       		.byte	0xe
 2251 0c25 4E02     		.2byte	0x24e
 2252 0c27 BD080000 		.4byte	0x8bd
 2253 0c2b 48       		.byte	0x48
 2254 0c2c 09       		.uleb128 0x9
 2255 0c2d 59050000 		.4byte	.LASF191
 2256 0c31 0E       		.byte	0xe
 2257 0c32 4F02     		.2byte	0x24f
 2258 0c34 910F0000 		.4byte	0xf91
 2259 0c38 4C       		.byte	0x4c
 2260 0c39 09       		.uleb128 0x9
 2261 0c3a 53080000 		.4byte	.LASF192
 2262 0c3e 0E       		.byte	0xe
 2263 0c3f 5202     		.2byte	0x252
 2264 0c41 25000000 		.4byte	0x25
 2265 0c45 50       		.byte	0x50
 2266 0c46 09       		.uleb128 0x9
 2267 0c47 2C090000 		.4byte	.LASF193
 2268 0c4b 0E       		.byte	0xe
 2269 0c4c 5302     		.2byte	0x253
 2270 0c4e A70C0000 		.4byte	0xca7
 2271 0c52 54       		.byte	0x54
 2272 0c53 09       		.uleb128 0x9
 2273 0c54 45080000 		.4byte	.LASF194
 2274 0c58 0E       		.byte	0xe
 2275 0c59 7602     		.2byte	0x276
 2276 0c5b 4E0F0000 		.4byte	0xf4e
 2277 0c5f 58       		.byte	0x58
 2278 0c60 0B       		.uleb128 0xb
 2279 0c61 F2060000 		.4byte	.LASF154
 2280 0c65 0E       		.byte	0xe
 2281 0c66 7A02     		.2byte	0x27a
 2282 0c68 DA090000 		.4byte	0x9da
 2283 0c6c 4801     		.2byte	0x148
 2284 0c6e 0B       		.uleb128 0xb
 2285 0c6f 7E040000 		.4byte	.LASF195
 2286 0c73 0E       		.byte	0xe
 2287 0c74 7B02     		.2byte	0x27b
 2288 0c76 9C090000 		.4byte	0x99c
 2289 0c7a 4C01     		.2byte	0x14c
 2290 0c7c 0B       		.uleb128 0xb
 2291 0c7d 65040000 		.4byte	.LASF196
 2292 0c81 0E       		.byte	0xe
 2293 0c82 7F02     		.2byte	0x27f
 2294 0c84 A20F0000 		.4byte	0xfa2
ARM GAS  /tmp/ccRqcMej.s 			page 64


 2295 0c88 DC02     		.2byte	0x2dc
 2296 0c8a 0B       		.uleb128 0xb
 2297 0c8b 590A0000 		.4byte	.LASF197
 2298 0c8f 0E       		.byte	0xe
 2299 0c90 8402     		.2byte	0x284
 2300 0c92 530D0000 		.4byte	0xd53
 2301 0c96 E002     		.2byte	0x2e0
 2302 0c98 0B       		.uleb128 0xb
 2303 0c99 A9070000 		.4byte	.LASF198
 2304 0c9d 0E       		.byte	0xe
 2305 0c9e 8502     		.2byte	0x285
 2306 0ca0 AE0F0000 		.4byte	0xfae
 2307 0ca4 EC02     		.2byte	0x2ec
 2308 0ca6 00       		.byte	0
 2309 0ca7 1A       		.uleb128 0x1a
 2310 0ca8 04       		.byte	0x4
 2311 0ca9 AD0C0000 		.4byte	0xcad
 2312 0cad 03       		.uleb128 0x3
 2313 0cae 01       		.byte	0x1
 2314 0caf 08       		.byte	0x8
 2315 0cb0 56040000 		.4byte	.LASF199
 2316 0cb4 06       		.uleb128 0x6
 2317 0cb5 AD0C0000 		.4byte	0xcad
 2318 0cb9 1A       		.uleb128 0x1a
 2319 0cba 04       		.byte	0x4
 2320 0cbb 4C0B0000 		.4byte	0xb4c
 2321 0cbf 1D       		.uleb128 0x1d
 2322 0cc0 25000000 		.4byte	0x25
 2323 0cc4 DD0C0000 		.4byte	0xcdd
 2324 0cc8 1E       		.uleb128 0x1e
 2325 0cc9 6A0B0000 		.4byte	0xb6a
 2326 0ccd 1E       		.uleb128 0x1e
 2327 0cce C6000000 		.4byte	0xc6
 2328 0cd2 1E       		.uleb128 0x1e
 2329 0cd3 DD0C0000 		.4byte	0xcdd
 2330 0cd7 1E       		.uleb128 0x1e
 2331 0cd8 25000000 		.4byte	0x25
 2332 0cdc 00       		.byte	0
 2333 0cdd 1A       		.uleb128 0x1a
 2334 0cde 04       		.byte	0x4
 2335 0cdf B40C0000 		.4byte	0xcb4
 2336 0ce3 1A       		.uleb128 0x1a
 2337 0ce4 04       		.byte	0x4
 2338 0ce5 BF0C0000 		.4byte	0xcbf
 2339 0ce9 1D       		.uleb128 0x1d
 2340 0cea E2070000 		.4byte	0x7e2
 2341 0cee 070D0000 		.4byte	0xd07
 2342 0cf2 1E       		.uleb128 0x1e
 2343 0cf3 6A0B0000 		.4byte	0xb6a
 2344 0cf7 1E       		.uleb128 0x1e
 2345 0cf8 C6000000 		.4byte	0xc6
 2346 0cfc 1E       		.uleb128 0x1e
 2347 0cfd E2070000 		.4byte	0x7e2
 2348 0d01 1E       		.uleb128 0x1e
 2349 0d02 25000000 		.4byte	0x25
 2350 0d06 00       		.byte	0
 2351 0d07 1A       		.uleb128 0x1a
ARM GAS  /tmp/ccRqcMej.s 			page 65


 2352 0d08 04       		.byte	0x4
 2353 0d09 E90C0000 		.4byte	0xce9
 2354 0d0d 1D       		.uleb128 0x1d
 2355 0d0e 25000000 		.4byte	0x25
 2356 0d12 210D0000 		.4byte	0xd21
 2357 0d16 1E       		.uleb128 0x1e
 2358 0d17 6A0B0000 		.4byte	0xb6a
 2359 0d1b 1E       		.uleb128 0x1e
 2360 0d1c C6000000 		.4byte	0xc6
 2361 0d20 00       		.byte	0
 2362 0d21 1A       		.uleb128 0x1a
 2363 0d22 04       		.byte	0x4
 2364 0d23 0D0D0000 		.4byte	0xd0d
 2365 0d27 0C       		.uleb128 0xc
 2366 0d28 45000000 		.4byte	0x45
 2367 0d2c 370D0000 		.4byte	0xd37
 2368 0d30 0D       		.uleb128 0xd
 2369 0d31 C8000000 		.4byte	0xc8
 2370 0d35 02       		.byte	0x2
 2371 0d36 00       		.byte	0
 2372 0d37 0C       		.uleb128 0xc
 2373 0d38 45000000 		.4byte	0x45
 2374 0d3c 470D0000 		.4byte	0xd47
 2375 0d40 0D       		.uleb128 0xd
 2376 0d41 C8000000 		.4byte	0xc8
 2377 0d45 00       		.byte	0
 2378 0d46 00       		.byte	0
 2379 0d47 0E       		.uleb128 0xe
 2380 0d48 C0020000 		.4byte	.LASF200
 2381 0d4c 0E       		.byte	0xe
 2382 0d4d 1D01     		.2byte	0x11d
 2383 0d4f 220A0000 		.4byte	0xa22
 2384 0d53 20       		.uleb128 0x20
 2385 0d54 1B0A0000 		.4byte	.LASF201
 2386 0d58 0C       		.byte	0xc
 2387 0d59 0E       		.byte	0xe
 2388 0d5a 2101     		.2byte	0x121
 2389 0d5c 880D0000 		.4byte	0xd88
 2390 0d60 09       		.uleb128 0x9
 2391 0d61 CA030000 		.4byte	.LASF134
 2392 0d65 0E       		.byte	0xe
 2393 0d66 2301     		.2byte	0x123
 2394 0d68 880D0000 		.4byte	0xd88
 2395 0d6c 00       		.byte	0
 2396 0d6d 09       		.uleb128 0x9
 2397 0d6e 63090000 		.4byte	.LASF202
 2398 0d72 0E       		.byte	0xe
 2399 0d73 2401     		.2byte	0x124
 2400 0d75 25000000 		.4byte	0x25
 2401 0d79 04       		.byte	0x4
 2402 0d7a 09       		.uleb128 0x9
 2403 0d7b BF040000 		.4byte	.LASF203
 2404 0d7f 0E       		.byte	0xe
 2405 0d80 2501     		.2byte	0x125
 2406 0d82 8E0D0000 		.4byte	0xd8e
 2407 0d86 08       		.byte	0x8
 2408 0d87 00       		.byte	0
ARM GAS  /tmp/ccRqcMej.s 			page 66


 2409 0d88 1A       		.uleb128 0x1a
 2410 0d89 04       		.byte	0x4
 2411 0d8a 530D0000 		.4byte	0xd53
 2412 0d8e 1A       		.uleb128 0x1a
 2413 0d8f 04       		.byte	0x4
 2414 0d90 470D0000 		.4byte	0xd47
 2415 0d94 20       		.uleb128 0x20
 2416 0d95 A6020000 		.4byte	.LASF204
 2417 0d99 0E       		.byte	0xe
 2418 0d9a 0E       		.byte	0xe
 2419 0d9b 3D01     		.2byte	0x13d
 2420 0d9d C90D0000 		.4byte	0xdc9
 2421 0da1 09       		.uleb128 0x9
 2422 0da2 530B0000 		.4byte	.LASF205
 2423 0da6 0E       		.byte	0xe
 2424 0da7 3E01     		.2byte	0x13e
 2425 0da9 C90D0000 		.4byte	0xdc9
 2426 0dad 00       		.byte	0
 2427 0dae 09       		.uleb128 0x9
 2428 0daf 82050000 		.4byte	.LASF206
 2429 0db3 0E       		.byte	0xe
 2430 0db4 3F01     		.2byte	0x13f
 2431 0db6 C90D0000 		.4byte	0xdc9
 2432 0dba 06       		.byte	0x6
 2433 0dbb 09       		.uleb128 0x9
 2434 0dbc 90050000 		.4byte	.LASF207
 2435 0dc0 0E       		.byte	0xe
 2436 0dc1 4001     		.2byte	0x140
 2437 0dc3 53000000 		.4byte	0x53
 2438 0dc7 0C       		.byte	0xc
 2439 0dc8 00       		.byte	0
 2440 0dc9 0C       		.uleb128 0xc
 2441 0dca 53000000 		.4byte	0x53
 2442 0dce D90D0000 		.4byte	0xdd9
 2443 0dd2 0D       		.uleb128 0xd
 2444 0dd3 C8000000 		.4byte	0xc8
 2445 0dd7 02       		.byte	0x2
 2446 0dd8 00       		.byte	0
 2447 0dd9 21       		.uleb128 0x21
 2448 0dda D0       		.byte	0xd0
 2449 0ddb 0E       		.byte	0xe
 2450 0ddc 5702     		.2byte	0x257
 2451 0dde DA0E0000 		.4byte	0xeda
 2452 0de2 09       		.uleb128 0x9
 2453 0de3 0B0B0000 		.4byte	.LASF208
 2454 0de7 0E       		.byte	0xe
 2455 0de8 5902     		.2byte	0x259
 2456 0dea 2C000000 		.4byte	0x2c
 2457 0dee 00       		.byte	0
 2458 0def 09       		.uleb128 0x9
 2459 0df0 770A0000 		.4byte	.LASF209
 2460 0df4 0E       		.byte	0xe
 2461 0df5 5A02     		.2byte	0x25a
 2462 0df7 A70C0000 		.4byte	0xca7
 2463 0dfb 04       		.byte	0x4
 2464 0dfc 09       		.uleb128 0x9
 2465 0dfd 65020000 		.4byte	.LASF210
ARM GAS  /tmp/ccRqcMej.s 			page 67


 2466 0e01 0E       		.byte	0xe
 2467 0e02 5B02     		.2byte	0x25b
 2468 0e04 DA0E0000 		.4byte	0xeda
 2469 0e08 08       		.byte	0x8
 2470 0e09 09       		.uleb128 0x9
 2471 0e0a 1C080000 		.4byte	.LASF211
 2472 0e0e 0E       		.byte	0xe
 2473 0e0f 5C02     		.2byte	0x25c
 2474 0e11 D3080000 		.4byte	0x8d3
 2475 0e15 24       		.byte	0x24
 2476 0e16 09       		.uleb128 0x9
 2477 0e17 1F050000 		.4byte	.LASF212
 2478 0e1b 0E       		.byte	0xe
 2479 0e1c 5D02     		.2byte	0x25d
 2480 0e1e 25000000 		.4byte	0x25
 2481 0e22 48       		.byte	0x48
 2482 0e23 09       		.uleb128 0x9
 2483 0e24 E1060000 		.4byte	.LASF213
 2484 0e28 0E       		.byte	0xe
 2485 0e29 5E02     		.2byte	0x25e
 2486 0e2b 85000000 		.4byte	0x85
 2487 0e2f 50       		.byte	0x50
 2488 0e30 09       		.uleb128 0x9
 2489 0e31 5A000000 		.4byte	.LASF214
 2490 0e35 0E       		.byte	0xe
 2491 0e36 5F02     		.2byte	0x25f
 2492 0e38 940D0000 		.4byte	0xd94
 2493 0e3c 58       		.byte	0x58
 2494 0e3d 09       		.uleb128 0x9
 2495 0e3e 41040000 		.4byte	.LASF215
 2496 0e42 0E       		.byte	0xe
 2497 0e43 6002     		.2byte	0x260
 2498 0e45 49080000 		.4byte	0x849
 2499 0e49 68       		.byte	0x68
 2500 0e4a 09       		.uleb128 0x9
 2501 0e4b 840A0000 		.4byte	.LASF216
 2502 0e4f 0E       		.byte	0xe
 2503 0e50 6102     		.2byte	0x261
 2504 0e52 49080000 		.4byte	0x849
 2505 0e56 70       		.byte	0x70
 2506 0e57 09       		.uleb128 0x9
 2507 0e58 23000000 		.4byte	.LASF217
 2508 0e5c 0E       		.byte	0xe
 2509 0e5d 6202     		.2byte	0x262
 2510 0e5f 49080000 		.4byte	0x849
 2511 0e63 78       		.byte	0x78
 2512 0e64 09       		.uleb128 0x9
 2513 0e65 63080000 		.4byte	.LASF218
 2514 0e69 0E       		.byte	0xe
 2515 0e6a 6302     		.2byte	0x263
 2516 0e6c EA0E0000 		.4byte	0xeea
 2517 0e70 80       		.byte	0x80
 2518 0e71 09       		.uleb128 0x9
 2519 0e72 5F000000 		.4byte	.LASF219
 2520 0e76 0E       		.byte	0xe
 2521 0e77 6402     		.2byte	0x264
 2522 0e79 FA0E0000 		.4byte	0xefa
ARM GAS  /tmp/ccRqcMej.s 			page 68


 2523 0e7d 88       		.byte	0x88
 2524 0e7e 09       		.uleb128 0x9
 2525 0e7f 610A0000 		.4byte	.LASF220
 2526 0e83 0E       		.byte	0xe
 2527 0e84 6502     		.2byte	0x265
 2528 0e86 25000000 		.4byte	0x25
 2529 0e8a A0       		.byte	0xa0
 2530 0e8b 09       		.uleb128 0x9
 2531 0e8c 34010000 		.4byte	.LASF221
 2532 0e90 0E       		.byte	0xe
 2533 0e91 6602     		.2byte	0x266
 2534 0e93 49080000 		.4byte	0x849
 2535 0e97 A4       		.byte	0xa4
 2536 0e98 09       		.uleb128 0x9
 2537 0e99 6F040000 		.4byte	.LASF222
 2538 0e9d 0E       		.byte	0xe
 2539 0e9e 6702     		.2byte	0x267
 2540 0ea0 49080000 		.4byte	0x849
 2541 0ea4 AC       		.byte	0xac
 2542 0ea5 09       		.uleb128 0x9
 2543 0ea6 36020000 		.4byte	.LASF223
 2544 0eaa 0E       		.byte	0xe
 2545 0eab 6802     		.2byte	0x268
 2546 0ead 49080000 		.4byte	0x849
 2547 0eb1 B4       		.byte	0xb4
 2548 0eb2 09       		.uleb128 0x9
 2549 0eb3 9A050000 		.4byte	.LASF224
 2550 0eb7 0E       		.byte	0xe
 2551 0eb8 6902     		.2byte	0x269
 2552 0eba 49080000 		.4byte	0x849
 2553 0ebe BC       		.byte	0xbc
 2554 0ebf 09       		.uleb128 0x9
 2555 0ec0 30040000 		.4byte	.LASF225
 2556 0ec4 0E       		.byte	0xe
 2557 0ec5 6A02     		.2byte	0x26a
 2558 0ec7 49080000 		.4byte	0x849
 2559 0ecb C4       		.byte	0xc4
 2560 0ecc 09       		.uleb128 0x9
 2561 0ecd 180B0000 		.4byte	.LASF226
 2562 0ed1 0E       		.byte	0xe
 2563 0ed2 6B02     		.2byte	0x26b
 2564 0ed4 25000000 		.4byte	0x25
 2565 0ed8 CC       		.byte	0xcc
 2566 0ed9 00       		.byte	0
 2567 0eda 0C       		.uleb128 0xc
 2568 0edb AD0C0000 		.4byte	0xcad
 2569 0edf EA0E0000 		.4byte	0xeea
 2570 0ee3 0D       		.uleb128 0xd
 2571 0ee4 C8000000 		.4byte	0xc8
 2572 0ee8 19       		.byte	0x19
 2573 0ee9 00       		.byte	0
 2574 0eea 0C       		.uleb128 0xc
 2575 0eeb AD0C0000 		.4byte	0xcad
 2576 0eef FA0E0000 		.4byte	0xefa
 2577 0ef3 0D       		.uleb128 0xd
 2578 0ef4 C8000000 		.4byte	0xc8
 2579 0ef8 07       		.byte	0x7
ARM GAS  /tmp/ccRqcMej.s 			page 69


 2580 0ef9 00       		.byte	0
 2581 0efa 0C       		.uleb128 0xc
 2582 0efb AD0C0000 		.4byte	0xcad
 2583 0eff 0A0F0000 		.4byte	0xf0a
 2584 0f03 0D       		.uleb128 0xd
 2585 0f04 C8000000 		.4byte	0xc8
 2586 0f08 17       		.byte	0x17
 2587 0f09 00       		.byte	0
 2588 0f0a 21       		.uleb128 0x21
 2589 0f0b F0       		.byte	0xf0
 2590 0f0c 0E       		.byte	0xe
 2591 0f0d 7002     		.2byte	0x270
 2592 0f0f 2E0F0000 		.4byte	0xf2e
 2593 0f13 09       		.uleb128 0x9
 2594 0f14 08020000 		.4byte	.LASF227
 2595 0f18 0E       		.byte	0xe
 2596 0f19 7302     		.2byte	0x273
 2597 0f1b 2E0F0000 		.4byte	0xf2e
 2598 0f1f 00       		.byte	0
 2599 0f20 09       		.uleb128 0x9
 2600 0f21 7B0B0000 		.4byte	.LASF228
 2601 0f25 0E       		.byte	0xe
 2602 0f26 7402     		.2byte	0x274
 2603 0f28 3E0F0000 		.4byte	0xf3e
 2604 0f2c 78       		.byte	0x78
 2605 0f2d 00       		.byte	0
 2606 0f2e 0C       		.uleb128 0xc
 2607 0f2f 1C0A0000 		.4byte	0xa1c
 2608 0f33 3E0F0000 		.4byte	0xf3e
 2609 0f37 0D       		.uleb128 0xd
 2610 0f38 C8000000 		.4byte	0xc8
 2611 0f3c 1D       		.byte	0x1d
 2612 0f3d 00       		.byte	0
 2613 0f3e 0C       		.uleb128 0xc
 2614 0f3f 2C000000 		.4byte	0x2c
 2615 0f43 4E0F0000 		.4byte	0xf4e
 2616 0f47 0D       		.uleb128 0xd
 2617 0f48 C8000000 		.4byte	0xc8
 2618 0f4c 1D       		.byte	0x1d
 2619 0f4d 00       		.byte	0
 2620 0f4e 22       		.uleb128 0x22
 2621 0f4f F0       		.byte	0xf0
 2622 0f50 0E       		.byte	0xe
 2623 0f51 5502     		.2byte	0x255
 2624 0f53 700F0000 		.4byte	0xf70
 2625 0f57 23       		.uleb128 0x23
 2626 0f58 B20A0000 		.4byte	.LASF177
 2627 0f5c 0E       		.byte	0xe
 2628 0f5d 6C02     		.2byte	0x26c
 2629 0f5f D90D0000 		.4byte	0xdd9
 2630 0f63 23       		.uleb128 0x23
 2631 0f64 33080000 		.4byte	.LASF229
 2632 0f68 0E       		.byte	0xe
 2633 0f69 7502     		.2byte	0x275
 2634 0f6b 0A0F0000 		.4byte	0xf0a
 2635 0f6f 00       		.byte	0
 2636 0f70 0C       		.uleb128 0xc
ARM GAS  /tmp/ccRqcMej.s 			page 70


 2637 0f71 AD0C0000 		.4byte	0xcad
 2638 0f75 800F0000 		.4byte	0xf80
 2639 0f79 0D       		.uleb128 0xd
 2640 0f7a C8000000 		.4byte	0xc8
 2641 0f7e 18       		.byte	0x18
 2642 0f7f 00       		.byte	0
 2643 0f80 24       		.uleb128 0x24
 2644 0f81 8B0F0000 		.4byte	0xf8b
 2645 0f85 1E       		.uleb128 0x1e
 2646 0f86 6A0B0000 		.4byte	0xb6a
 2647 0f8a 00       		.byte	0
 2648 0f8b 1A       		.uleb128 0x1a
 2649 0f8c 04       		.byte	0x4
 2650 0f8d 800F0000 		.4byte	0xf80
 2651 0f91 1A       		.uleb128 0x1a
 2652 0f92 04       		.byte	0x4
 2653 0f93 BD080000 		.4byte	0x8bd
 2654 0f97 24       		.uleb128 0x24
 2655 0f98 A20F0000 		.4byte	0xfa2
 2656 0f9c 1E       		.uleb128 0x1e
 2657 0f9d 25000000 		.4byte	0x25
 2658 0fa1 00       		.byte	0
 2659 0fa2 1A       		.uleb128 0x1a
 2660 0fa3 04       		.byte	0x4
 2661 0fa4 A80F0000 		.4byte	0xfa8
 2662 0fa8 1A       		.uleb128 0x1a
 2663 0fa9 04       		.byte	0x4
 2664 0faa 970F0000 		.4byte	0xf97
 2665 0fae 0C       		.uleb128 0xc
 2666 0faf 470D0000 		.4byte	0xd47
 2667 0fb3 BE0F0000 		.4byte	0xfbe
 2668 0fb7 0D       		.uleb128 0xd
 2669 0fb8 C8000000 		.4byte	0xc8
 2670 0fbc 02       		.byte	0x2
 2671 0fbd 00       		.byte	0
 2672 0fbe 0F       		.uleb128 0xf
 2673 0fbf FC010000 		.4byte	.LASF230
 2674 0fc3 0E       		.byte	0xe
 2675 0fc4 FD02     		.2byte	0x2fd
 2676 0fc6 6A0B0000 		.4byte	0xb6a
 2677 0fca 0F       		.uleb128 0xf
 2678 0fcb DF070000 		.4byte	.LASF231
 2679 0fcf 0E       		.byte	0xe
 2680 0fd0 FE02     		.2byte	0x2fe
 2681 0fd2 700B0000 		.4byte	0xb70
 2682 0fd6 10       		.uleb128 0x10
 2683 0fd7 42090000 		.4byte	.LASF232
 2684 0fdb 0F       		.byte	0xf
 2685 0fdc 5F       		.byte	0x5f
 2686 0fdd A70C0000 		.4byte	0xca7
 2687 0fe1 10       		.uleb128 0x10
 2688 0fe2 84010000 		.4byte	.LASF233
 2689 0fe6 10       		.byte	0x10
 2690 0fe7 8F       		.byte	0x8f
 2691 0fe8 F30F0000 		.4byte	0xff3
 2692 0fec 03       		.uleb128 0x3
 2693 0fed 01       		.byte	0x1
ARM GAS  /tmp/ccRqcMej.s 			page 71


 2694 0fee 02       		.byte	0x2
 2695 0fef A4030000 		.4byte	.LASF234
 2696 0ff3 05       		.uleb128 0x5
 2697 0ff4 EC0F0000 		.4byte	0xfec
 2698 0ff8 06       		.uleb128 0x6
 2699 0ff9 EC0F0000 		.4byte	0xfec
 2700 0ffd 25       		.uleb128 0x25
 2701 0ffe D9080000 		.4byte	.LASF235
 2702 1002 10       		.byte	0x10
 2703 1003 94       		.byte	0x94
 2704 1004 B7000000 		.4byte	0xb7
 2705 1008 05       		.uleb128 0x5
 2706 1009 03       		.byte	0x3
 2707 100a 00000000 		.4byte	cpu_irq_critical_section_counter
 2708 100e 25       		.uleb128 0x25
 2709 100f 41030000 		.4byte	.LASF236
 2710 1013 10       		.byte	0x10
 2711 1014 95       		.byte	0x95
 2712 1015 F30F0000 		.4byte	0xff3
 2713 1019 05       		.uleb128 0x5
 2714 101a 03       		.byte	0x3
 2715 101b 00000000 		.4byte	cpu_irq_prev_interrupt_state
 2716 101f 03       		.uleb128 0x3
 2717 1020 04       		.byte	0x4
 2718 1021 04       		.byte	0x4
 2719 1022 ED010000 		.4byte	.LASF237
 2720 1026 03       		.uleb128 0x3
 2721 1027 08       		.byte	0x8
 2722 1028 04       		.byte	0x4
 2723 1029 EE0A0000 		.4byte	.LASF238
 2724 102d 04       		.uleb128 0x4
 2725 102e DC020000 		.4byte	.LASF239
 2726 1032 11       		.byte	0x11
 2727 1033 61       		.byte	0x61
 2728 1034 F0090000 		.4byte	0x9f0
 2729 1038 26       		.uleb128 0x26
 2730 1039 D0030000 		.4byte	.LASF240
 2731 103d 01       		.byte	0x1
 2732 103e 1601     		.2byte	0x116
 2733 1040 F30F0000 		.4byte	0xff3
 2734 1044 05       		.uleb128 0x5
 2735 1045 03       		.byte	0x3
 2736 1046 00000000 		.4byte	b_is_sleep_clock_used
 2737 104a 26       		.uleb128 0x26
 2738 104b 0D030000 		.4byte	.LASF241
 2739 104f 01       		.byte	0x1
 2740 1050 1801     		.2byte	0x118
 2741 1052 2D100000 		.4byte	0x102d
 2742 1056 05       		.uleb128 0x5
 2743 1057 03       		.byte	0x3
 2744 1058 00000000 		.4byte	callback_clocks_restored
 2745 105c 27       		.uleb128 0x27
 2746 105d 72020000 		.4byte	.LASF242
 2747 1061 01       		.byte	0x1
 2748 1062 7C01     		.2byte	0x17c
 2749 1064 00000000 		.4byte	.LFB146
 2750 1068 2C000000 		.4byte	.LFE146-.LFB146
ARM GAS  /tmp/ccRqcMej.s 			page 72


 2751 106c 01       		.uleb128 0x1
 2752 106d 9C       		.byte	0x9c
 2753 106e AC100000 		.4byte	0x10ac
 2754 1072 28       		.uleb128 0x28
 2755 1073 120A0000 		.4byte	.LASF244
 2756 1077 01       		.byte	0x1
 2757 1078 7D01     		.2byte	0x17d
 2758 107a 2D100000 		.4byte	0x102d
 2759 107e 00000000 		.4byte	.LLST22
 2760 1082 29       		.uleb128 0x29
 2761 1083 05140000 		.4byte	0x1405
 2762 1087 0C000000 		.4byte	.LBB87
 2763 108b 02000000 		.4byte	.LBE87-.LBB87
 2764 108f 01       		.byte	0x1
 2765 1090 8001     		.2byte	0x180
 2766 1092 29       		.uleb128 0x29
 2767 1093 17140000 		.4byte	0x1417
 2768 1097 0E000000 		.4byte	.LBB89
 2769 109b 04000000 		.4byte	.LBE89-.LBB89
 2770 109f 01       		.byte	0x1
 2771 10a0 8001     		.2byte	0x180
 2772 10a2 2A       		.uleb128 0x2a
 2773 10a3 0A000000 		.4byte	.LVL33
 2774 10a7 03       		.uleb128 0x3
 2775 10a8 F3       		.byte	0xf3
 2776 10a9 01       		.uleb128 0x1
 2777 10aa 50       		.byte	0x50
 2778 10ab 00       		.byte	0
 2779 10ac 2B       		.uleb128 0x2b
 2780 10ad A0000000 		.4byte	.LASF274
 2781 10b1 01       		.byte	0x1
 2782 10b2 7701     		.2byte	0x177
 2783 10b4 EC0F0000 		.4byte	0xfec
 2784 10b8 00000000 		.4byte	.LFB145
 2785 10bc 10000000 		.4byte	.LFE145-.LFB145
 2786 10c0 01       		.uleb128 0x1
 2787 10c1 9C       		.byte	0x9c
 2788 10c2 2C       		.uleb128 0x2c
 2789 10c3 8D040000 		.4byte	.LASF243
 2790 10c7 01       		.byte	0x1
 2791 10c8 1A01     		.2byte	0x11a
 2792 10ca 00000000 		.4byte	.LFB144
 2793 10ce 3C020000 		.4byte	.LFE144-.LFB144
 2794 10d2 01       		.uleb128 0x1
 2795 10d3 9C       		.byte	0x9c
 2796 10d4 35130000 		.4byte	0x1335
 2797 10d8 28       		.uleb128 0x28
 2798 10d9 FC070000 		.4byte	.LASF245
 2799 10dd 01       		.byte	0x1
 2800 10de 1A01     		.2byte	0x11a
 2801 10e0 25000000 		.4byte	0x25
 2802 10e4 2C000000 		.4byte	.LLST0
 2803 10e8 2D       		.uleb128 0x2d
 2804 10e9 00000000 		.4byte	.Ldebug_ranges0+0
 2805 10ed C4120000 		.4byte	0x12c4
 2806 10f1 2E       		.uleb128 0x2e
 2807 10f2 6D6F7200 		.ascii	"mor\000"
ARM GAS  /tmp/ccRqcMej.s 			page 73


 2808 10f6 01       		.byte	0x1
 2809 10f7 3501     		.2byte	0x135
 2810 10f9 AC000000 		.4byte	0xac
 2811 10fd C8000000 		.4byte	.LLST1
 2812 1101 2F       		.uleb128 0x2f
 2813 1102 39060000 		.4byte	.LASF246
 2814 1106 01       		.byte	0x1
 2815 1107 3501     		.2byte	0x135
 2816 1109 AC000000 		.4byte	0xac
 2817 110d E6000000 		.4byte	.LLST2
 2818 1111 2F       		.uleb128 0x2f
 2819 1112 3F060000 		.4byte	.LASF247
 2820 1116 01       		.byte	0x1
 2821 1117 3501     		.2byte	0x135
 2822 1119 AC000000 		.4byte	0xac
 2823 111d 04010000 		.4byte	.LLST3
 2824 1121 2F       		.uleb128 0x2f
 2825 1122 5E090000 		.4byte	.LASF248
 2826 1126 01       		.byte	0x1
 2827 1127 3501     		.2byte	0x135
 2828 1129 AC000000 		.4byte	0xac
 2829 112d 24010000 		.4byte	.LLST4
 2830 1131 2E       		.uleb128 0x2e
 2831 1132 666D7200 		.ascii	"fmr\000"
 2832 1136 01       		.byte	0x1
 2833 1137 3601     		.2byte	0x136
 2834 1139 AC000000 		.4byte	0xac
 2835 113d 42010000 		.4byte	.LLST5
 2836 1141 29       		.uleb128 0x29
 2837 1142 05140000 		.4byte	0x1405
 2838 1146 46000000 		.4byte	.LBB48
 2839 114a 02000000 		.4byte	.LBE48-.LBB48
 2840 114e 01       		.byte	0x1
 2841 114f 3F01     		.2byte	0x13f
 2842 1151 29       		.uleb128 0x29
 2843 1152 17140000 		.4byte	0x1417
 2844 1156 48000000 		.4byte	.LBB50
 2845 115a 04000000 		.4byte	.LBE50-.LBB50
 2846 115e 01       		.byte	0x1
 2847 115f 3F01     		.2byte	0x13f
 2848 1161 30       		.uleb128 0x30
 2849 1162 8F130000 		.4byte	0x138f
 2850 1166 4C000000 		.4byte	.LBB52
 2851 116a 18000000 		.4byte	.Ldebug_ranges0+0x18
 2852 116e 01       		.byte	0x1
 2853 116f 4801     		.2byte	0x148
 2854 1171 D6110000 		.4byte	0x11d6
 2855 1175 31       		.uleb128 0x31
 2856 1176 D2130000 		.4byte	0x13d2
 2857 117a 60010000 		.4byte	.LLST6
 2858 117e 31       		.uleb128 0x31
 2859 117f C7130000 		.4byte	0x13c7
 2860 1183 95010000 		.4byte	.LLST7
 2861 1187 31       		.uleb128 0x31
 2862 1188 BC130000 		.4byte	0x13bc
 2863 118c CD010000 		.4byte	.LLST8
 2864 1190 31       		.uleb128 0x31
ARM GAS  /tmp/ccRqcMej.s 			page 74


 2865 1191 B1130000 		.4byte	0x13b1
 2866 1195 05020000 		.4byte	.LLST9
 2867 1199 31       		.uleb128 0x31
 2868 119a A6130000 		.4byte	0x13a6
 2869 119e 3D020000 		.4byte	.LLST10
 2870 11a2 31       		.uleb128 0x31
 2871 11a3 9B130000 		.4byte	0x139b
 2872 11a7 75020000 		.4byte	.LLST11
 2873 11ab 32       		.uleb128 0x32
 2874 11ac 18000000 		.4byte	.Ldebug_ranges0+0x18
 2875 11b0 33       		.uleb128 0x33
 2876 11b1 DD130000 		.4byte	0x13dd
 2877 11b5 AD020000 		.4byte	.LLST12
 2878 11b9 33       		.uleb128 0x33
 2879 11ba E8130000 		.4byte	0x13e8
 2880 11be D6020000 		.4byte	.LLST13
 2881 11c2 33       		.uleb128 0x33
 2882 11c3 F3130000 		.4byte	0x13f3
 2883 11c7 FF020000 		.4byte	.LLST14
 2884 11cb 34       		.uleb128 0x34
 2885 11cc AA000000 		.4byte	.LVL13
 2886 11d0 32140000 		.4byte	0x1432
 2887 11d4 00       		.byte	0
 2888 11d5 00       		.byte	0
 2889 11d6 29       		.uleb128 0x29
 2890 11d7 17140000 		.4byte	0x1417
 2891 11db D8000000 		.4byte	.LBB58
 2892 11df 04000000 		.4byte	.LBE58-.LBB58
 2893 11e3 01       		.byte	0x1
 2894 11e4 4F01     		.2byte	0x14f
 2895 11e6 29       		.uleb128 0x29
 2896 11e7 0E140000 		.4byte	0x140e
 2897 11eb DC000000 		.4byte	.LBB60
 2898 11ef 02000000 		.4byte	.LBE60-.LBB60
 2899 11f3 01       		.byte	0x1
 2900 11f4 4F01     		.2byte	0x14f
 2901 11f6 29       		.uleb128 0x29
 2902 11f7 05140000 		.4byte	0x1405
 2903 11fb E2000000 		.4byte	.LBB62
 2904 11ff 02000000 		.4byte	.LBE62-.LBB62
 2905 1203 01       		.byte	0x1
 2906 1204 5301     		.2byte	0x153
 2907 1206 29       		.uleb128 0x29
 2908 1207 17140000 		.4byte	0x1417
 2909 120b E4000000 		.4byte	.LBB64
 2910 120f 04000000 		.4byte	.LBE64-.LBB64
 2911 1213 01       		.byte	0x1
 2912 1214 5301     		.2byte	0x153
 2913 1216 30       		.uleb128 0x30
 2914 1217 35130000 		.4byte	0x1335
 2915 121b EA000000 		.4byte	.LBB66
 2916 121f 40000000 		.4byte	.Ldebug_ranges0+0x40
 2917 1223 01       		.byte	0x1
 2918 1224 5401     		.2byte	0x154
 2919 1226 70120000 		.4byte	0x1270
 2920 122a 31       		.uleb128 0x31
 2921 122b 6D130000 		.4byte	0x136d
ARM GAS  /tmp/ccRqcMej.s 			page 75


 2922 122f 28030000 		.4byte	.LLST15
 2923 1233 31       		.uleb128 0x31
 2924 1234 62130000 		.4byte	0x1362
 2925 1238 46030000 		.4byte	.LLST16
 2926 123c 31       		.uleb128 0x31
 2927 123d 57130000 		.4byte	0x1357
 2928 1241 64030000 		.4byte	.LLST17
 2929 1245 31       		.uleb128 0x31
 2930 1246 4C130000 		.4byte	0x134c
 2931 124a 84030000 		.4byte	.LLST18
 2932 124e 31       		.uleb128 0x31
 2933 124f 41130000 		.4byte	0x1341
 2934 1253 A2030000 		.4byte	.LLST19
 2935 1257 32       		.uleb128 0x32
 2936 1258 40000000 		.4byte	.Ldebug_ranges0+0x40
 2937 125c 33       		.uleb128 0x33
 2938 125d 78130000 		.4byte	0x1378
 2939 1261 C0030000 		.4byte	.LLST20
 2940 1265 33       		.uleb128 0x33
 2941 1266 83130000 		.4byte	0x1383
 2942 126a D3030000 		.4byte	.LLST21
 2943 126e 00       		.byte	0
 2944 126f 00       		.byte	0
 2945 1270 29       		.uleb128 0x29
 2946 1271 17140000 		.4byte	0x1417
 2947 1275 6E010000 		.4byte	.LBB71
 2948 1279 04000000 		.4byte	.LBE71-.LBB71
 2949 127d 01       		.byte	0x1
 2950 127e 6301     		.2byte	0x163
 2951 1280 29       		.uleb128 0x29
 2952 1281 0E140000 		.4byte	0x140e
 2953 1285 72010000 		.4byte	.LBB73
 2954 1289 06000000 		.4byte	.LBE73-.LBB73
 2955 128d 01       		.byte	0x1
 2956 128e 6301     		.2byte	0x163
 2957 1290 35       		.uleb128 0x35
 2958 1291 46000000 		.4byte	.LVL5
 2959 1295 3D140000 		.4byte	0x143d
 2960 1299 BA120000 		.4byte	0x12ba
 2961 129d 36       		.uleb128 0x36
 2962 129e 01       		.uleb128 0x1
 2963 129f 50       		.byte	0x50
 2964 12a0 18       		.uleb128 0x18
 2965 12a1 40       		.byte	0x40
 2966 12a2 41       		.byte	0x41
 2967 12a3 24       		.byte	0x24
 2968 12a4 30       		.byte	0x30
 2969 12a5 74       		.byte	0x74
 2970 12a6 00       		.sleb128 0
 2971 12a7 74       		.byte	0x74
 2972 12a8 00       		.sleb128 0
 2973 12a9 33       		.byte	0x33
 2974 12aa 29       		.byte	0x29
 2975 12ab 28       		.byte	0x28
 2976 12ac 0100     		.2byte	0x1
 2977 12ae 16       		.byte	0x16
 2978 12af 13       		.byte	0x13
ARM GAS  /tmp/ccRqcMej.s 			page 76


 2979 12b0 74       		.byte	0x74
 2980 12b1 00       		.sleb128 0
 2981 12b2 33       		.byte	0x33
 2982 12b3 2E       		.byte	0x2e
 2983 12b4 28       		.byte	0x28
 2984 12b5 0100     		.2byte	0x1
 2985 12b7 16       		.byte	0x16
 2986 12b8 13       		.byte	0x13
 2987 12b9 00       		.byte	0
 2988 12ba 34       		.uleb128 0x34
 2989 12bb E2000000 		.4byte	.LVL15
 2990 12bf 48140000 		.4byte	0x1448
 2991 12c3 00       		.byte	0
 2992 12c4 29       		.uleb128 0x29
 2993 12c5 17140000 		.4byte	0x1417
 2994 12c9 2A000000 		.4byte	.LBB41
 2995 12cd 04000000 		.4byte	.LBE41-.LBB41
 2996 12d1 01       		.byte	0x1
 2997 12d2 6C01     		.2byte	0x16c
 2998 12d4 29       		.uleb128 0x29
 2999 12d5 0E140000 		.4byte	0x140e
 3000 12d9 2E000000 		.4byte	.LBB43
 3001 12dd 02000000 		.4byte	.LBE43-.LBB43
 3002 12e1 01       		.byte	0x1
 3003 12e2 6C01     		.2byte	0x16c
 3004 12e4 29       		.uleb128 0x29
 3005 12e5 29140000 		.4byte	0x1429
 3006 12e9 30000000 		.4byte	.LBB45
 3007 12ed 06000000 		.4byte	.LBE45-.LBB45
 3008 12f1 01       		.byte	0x1
 3009 12f2 6D01     		.2byte	0x16d
 3010 12f4 29       		.uleb128 0x29
 3011 12f5 17140000 		.4byte	0x1417
 3012 12f9 88010000 		.4byte	.LBB78
 3013 12fd 04000000 		.4byte	.LBE78-.LBB78
 3014 1301 01       		.byte	0x1
 3015 1302 2101     		.2byte	0x121
 3016 1304 29       		.uleb128 0x29
 3017 1305 0E140000 		.4byte	0x140e
 3018 1309 8C010000 		.4byte	.LBB80
 3019 130d 02000000 		.4byte	.LBE80-.LBB80
 3020 1311 01       		.byte	0x1
 3021 1312 2101     		.2byte	0x121
 3022 1314 29       		.uleb128 0x29
 3023 1315 20140000 		.4byte	0x1420
 3024 1319 8E010000 		.4byte	.LBB82
 3025 131d 04000000 		.4byte	.LBE82-.LBB82
 3026 1321 01       		.byte	0x1
 3027 1322 2201     		.2byte	0x122
 3028 1324 29       		.uleb128 0x29
 3029 1325 29140000 		.4byte	0x1429
 3030 1329 92010000 		.4byte	.LBB84
 3031 132d 06000000 		.4byte	.LBE84-.LBB84
 3032 1331 01       		.byte	0x1
 3033 1332 2301     		.2byte	0x123
 3034 1334 00       		.byte	0
 3035 1335 37       		.uleb128 0x37
ARM GAS  /tmp/ccRqcMej.s 			page 77


 3036 1336 5D010000 		.4byte	.LASF255
 3037 133a 01       		.byte	0x1
 3038 133b B0       		.byte	0xb0
 3039 133c 03       		.byte	0x3
 3040 133d 8F130000 		.4byte	0x138f
 3041 1341 38       		.uleb128 0x38
 3042 1342 F1040000 		.4byte	.LASF249
 3043 1346 01       		.byte	0x1
 3044 1347 B1       		.byte	0xb1
 3045 1348 C1000000 		.4byte	0xc1
 3046 134c 38       		.uleb128 0x38
 3047 134d B4030000 		.4byte	.LASF250
 3048 1351 01       		.byte	0x1
 3049 1352 B2       		.byte	0xb2
 3050 1353 C1000000 		.4byte	0xc1
 3051 1357 38       		.uleb128 0x38
 3052 1358 BD060000 		.4byte	.LASF251
 3053 135c 01       		.byte	0x1
 3054 135d B3       		.byte	0xb3
 3055 135e C1000000 		.4byte	0xc1
 3056 1362 38       		.uleb128 0x38
 3057 1363 35030000 		.4byte	.LASF252
 3058 1367 01       		.byte	0x1
 3059 1368 B4       		.byte	0xb4
 3060 1369 C1000000 		.4byte	0xc1
 3061 136d 38       		.uleb128 0x38
 3062 136e 920A0000 		.4byte	.LASF253
 3063 1372 01       		.byte	0x1
 3064 1373 B5       		.byte	0xb5
 3065 1374 C1000000 		.4byte	0xc1
 3066 1378 39       		.uleb128 0x39
 3067 1379 5E090000 		.4byte	.LASF248
 3068 137d 01       		.byte	0x1
 3069 137e BB       		.byte	0xbb
 3070 137f AC000000 		.4byte	0xac
 3071 1383 39       		.uleb128 0x39
 3072 1384 5E030000 		.4byte	.LASF254
 3073 1388 01       		.byte	0x1
 3074 1389 BC       		.byte	0xbc
 3075 138a AC000000 		.4byte	0xac
 3076 138e 00       		.byte	0
 3077 138f 37       		.uleb128 0x37
 3078 1390 0F020000 		.4byte	.LASF256
 3079 1394 01       		.byte	0x1
 3080 1395 45       		.byte	0x45
 3081 1396 03       		.byte	0x3
 3082 1397 FF130000 		.4byte	0x13ff
 3083 139b 38       		.uleb128 0x38
 3084 139c B4070000 		.4byte	.LASF257
 3085 13a0 01       		.byte	0x1
 3086 13a1 46       		.byte	0x46
 3087 13a2 FF130000 		.4byte	0x13ff
 3088 13a6 38       		.uleb128 0x38
 3089 13a7 FD040000 		.4byte	.LASF258
 3090 13ab 01       		.byte	0x1
 3091 13ac 47       		.byte	0x47
 3092 13ad FF130000 		.4byte	0x13ff
ARM GAS  /tmp/ccRqcMej.s 			page 78


 3093 13b1 38       		.uleb128 0x38
 3094 13b2 84080000 		.4byte	.LASF259
 3095 13b6 01       		.byte	0x1
 3096 13b7 48       		.byte	0x48
 3097 13b8 FF130000 		.4byte	0x13ff
 3098 13bc 38       		.uleb128 0x38
 3099 13bd C0050000 		.4byte	.LASF260
 3100 13c1 01       		.byte	0x1
 3101 13c2 49       		.byte	0x49
 3102 13c3 FF130000 		.4byte	0x13ff
 3103 13c7 38       		.uleb128 0x38
 3104 13c8 09010000 		.4byte	.LASF261
 3105 13cc 01       		.byte	0x1
 3106 13cd 4A       		.byte	0x4a
 3107 13ce FF130000 		.4byte	0x13ff
 3108 13d2 38       		.uleb128 0x38
 3109 13d3 79070000 		.4byte	.LASF262
 3110 13d7 01       		.byte	0x1
 3111 13d8 4E       		.byte	0x4e
 3112 13d9 F80F0000 		.4byte	0xff8
 3113 13dd 3A       		.uleb128 0x3a
 3114 13de 6D6F7200 		.ascii	"mor\000"
 3115 13e2 01       		.byte	0x1
 3116 13e3 50       		.byte	0x50
 3117 13e4 AC000000 		.4byte	0xac
 3118 13e8 39       		.uleb128 0x39
 3119 13e9 5E090000 		.4byte	.LASF248
 3120 13ed 01       		.byte	0x1
 3121 13ee 51       		.byte	0x51
 3122 13ef AC000000 		.4byte	0xac
 3123 13f3 3A       		.uleb128 0x3a
 3124 13f4 666D7200 		.ascii	"fmr\000"
 3125 13f8 01       		.byte	0x1
 3126 13f9 52       		.byte	0x52
 3127 13fa AC000000 		.4byte	0xac
 3128 13fe 00       		.byte	0
 3129 13ff 1A       		.uleb128 0x1a
 3130 1400 04       		.byte	0x4
 3131 1401 AC000000 		.4byte	0xac
 3132 1405 3B       		.uleb128 0x3b
 3133 1406 65030000 		.4byte	.LASF263
 3134 140a 03       		.byte	0x3
 3135 140b 4801     		.2byte	0x148
 3136 140d 03       		.byte	0x3
 3137 140e 3B       		.uleb128 0x3b
 3138 140f 9C070000 		.4byte	.LASF264
 3139 1413 03       		.byte	0x3
 3140 1414 3D01     		.2byte	0x13d
 3141 1416 03       		.byte	0x3
 3142 1417 3B       		.uleb128 0x3b
 3143 1418 07080000 		.4byte	.LASF265
 3144 141c 02       		.byte	0x2
 3145 141d C601     		.2byte	0x1c6
 3146 141f 03       		.byte	0x3
 3147 1420 3B       		.uleb128 0x3b
 3148 1421 20010000 		.4byte	.LASF266
 3149 1425 02       		.byte	0x2
ARM GAS  /tmp/ccRqcMej.s 			page 79


 3150 1426 BB01     		.2byte	0x1bb
 3151 1428 03       		.byte	0x3
 3152 1429 3B       		.uleb128 0x3b
 3153 142a 26090000 		.4byte	.LASF267
 3154 142e 02       		.byte	0x2
 3155 142f 8F01     		.2byte	0x18f
 3156 1431 03       		.byte	0x3
 3157 1432 3C       		.uleb128 0x3c
 3158 1433 A0010000 		.4byte	.LASF268
 3159 1437 A0010000 		.4byte	.LASF268
 3160 143b 12       		.byte	0x12
 3161 143c C4       		.byte	0xc4
 3162 143d 3C       		.uleb128 0x3c
 3163 143e 45060000 		.4byte	.LASF269
 3164 1442 45060000 		.4byte	.LASF269
 3165 1446 12       		.byte	0x12
 3166 1447 95       		.byte	0x95
 3167 1448 3D       		.uleb128 0x3d
 3168 1449 840B0000 		.4byte	.LASF270
 3169 144d 840B0000 		.4byte	.LASF270
 3170 1451 12       		.byte	0x12
 3171 1452 4001     		.2byte	0x140
 3172 1454 00       		.byte	0
 3173              		.section	.debug_abbrev,"",%progbits
 3174              	.Ldebug_abbrev0:
 3175 0000 01       		.uleb128 0x1
 3176 0001 11       		.uleb128 0x11
 3177 0002 01       		.byte	0x1
 3178 0003 25       		.uleb128 0x25
 3179 0004 0E       		.uleb128 0xe
 3180 0005 13       		.uleb128 0x13
 3181 0006 0B       		.uleb128 0xb
 3182 0007 03       		.uleb128 0x3
 3183 0008 0E       		.uleb128 0xe
 3184 0009 1B       		.uleb128 0x1b
 3185 000a 0E       		.uleb128 0xe
 3186 000b 55       		.uleb128 0x55
 3187 000c 17       		.uleb128 0x17
 3188 000d 11       		.uleb128 0x11
 3189 000e 01       		.uleb128 0x1
 3190 000f 10       		.uleb128 0x10
 3191 0010 17       		.uleb128 0x17
 3192 0011 00       		.byte	0
 3193 0012 00       		.byte	0
 3194 0013 02       		.uleb128 0x2
 3195 0014 24       		.uleb128 0x24
 3196 0015 00       		.byte	0
 3197 0016 0B       		.uleb128 0xb
 3198 0017 0B       		.uleb128 0xb
 3199 0018 3E       		.uleb128 0x3e
 3200 0019 0B       		.uleb128 0xb
 3201 001a 03       		.uleb128 0x3
 3202 001b 08       		.uleb128 0x8
 3203 001c 00       		.byte	0
 3204 001d 00       		.byte	0
 3205 001e 03       		.uleb128 0x3
 3206 001f 24       		.uleb128 0x24
ARM GAS  /tmp/ccRqcMej.s 			page 80


 3207 0020 00       		.byte	0
 3208 0021 0B       		.uleb128 0xb
 3209 0022 0B       		.uleb128 0xb
 3210 0023 3E       		.uleb128 0x3e
 3211 0024 0B       		.uleb128 0xb
 3212 0025 03       		.uleb128 0x3
 3213 0026 0E       		.uleb128 0xe
 3214 0027 00       		.byte	0
 3215 0028 00       		.byte	0
 3216 0029 04       		.uleb128 0x4
 3217 002a 16       		.uleb128 0x16
 3218 002b 00       		.byte	0
 3219 002c 03       		.uleb128 0x3
 3220 002d 0E       		.uleb128 0xe
 3221 002e 3A       		.uleb128 0x3a
 3222 002f 0B       		.uleb128 0xb
 3223 0030 3B       		.uleb128 0x3b
 3224 0031 0B       		.uleb128 0xb
 3225 0032 49       		.uleb128 0x49
 3226 0033 13       		.uleb128 0x13
 3227 0034 00       		.byte	0
 3228 0035 00       		.byte	0
 3229 0036 05       		.uleb128 0x5
 3230 0037 35       		.uleb128 0x35
 3231 0038 00       		.byte	0
 3232 0039 49       		.uleb128 0x49
 3233 003a 13       		.uleb128 0x13
 3234 003b 00       		.byte	0
 3235 003c 00       		.byte	0
 3236 003d 06       		.uleb128 0x6
 3237 003e 26       		.uleb128 0x26
 3238 003f 00       		.byte	0
 3239 0040 49       		.uleb128 0x49
 3240 0041 13       		.uleb128 0x13
 3241 0042 00       		.byte	0
 3242 0043 00       		.byte	0
 3243 0044 07       		.uleb128 0x7
 3244 0045 0F       		.uleb128 0xf
 3245 0046 00       		.byte	0
 3246 0047 0B       		.uleb128 0xb
 3247 0048 0B       		.uleb128 0xb
 3248 0049 00       		.byte	0
 3249 004a 00       		.byte	0
 3250 004b 08       		.uleb128 0x8
 3251 004c 13       		.uleb128 0x13
 3252 004d 01       		.byte	0x1
 3253 004e 0B       		.uleb128 0xb
 3254 004f 05       		.uleb128 0x5
 3255 0050 3A       		.uleb128 0x3a
 3256 0051 0B       		.uleb128 0xb
 3257 0052 3B       		.uleb128 0x3b
 3258 0053 05       		.uleb128 0x5
 3259 0054 01       		.uleb128 0x1
 3260 0055 13       		.uleb128 0x13
 3261 0056 00       		.byte	0
 3262 0057 00       		.byte	0
 3263 0058 09       		.uleb128 0x9
ARM GAS  /tmp/ccRqcMej.s 			page 81


 3264 0059 0D       		.uleb128 0xd
 3265 005a 00       		.byte	0
 3266 005b 03       		.uleb128 0x3
 3267 005c 0E       		.uleb128 0xe
 3268 005d 3A       		.uleb128 0x3a
 3269 005e 0B       		.uleb128 0xb
 3270 005f 3B       		.uleb128 0x3b
 3271 0060 05       		.uleb128 0x5
 3272 0061 49       		.uleb128 0x49
 3273 0062 13       		.uleb128 0x13
 3274 0063 38       		.uleb128 0x38
 3275 0064 0B       		.uleb128 0xb
 3276 0065 00       		.byte	0
 3277 0066 00       		.byte	0
 3278 0067 0A       		.uleb128 0xa
 3279 0068 0D       		.uleb128 0xd
 3280 0069 00       		.byte	0
 3281 006a 03       		.uleb128 0x3
 3282 006b 08       		.uleb128 0x8
 3283 006c 3A       		.uleb128 0x3a
 3284 006d 0B       		.uleb128 0xb
 3285 006e 3B       		.uleb128 0x3b
 3286 006f 05       		.uleb128 0x5
 3287 0070 49       		.uleb128 0x49
 3288 0071 13       		.uleb128 0x13
 3289 0072 38       		.uleb128 0x38
 3290 0073 0B       		.uleb128 0xb
 3291 0074 00       		.byte	0
 3292 0075 00       		.byte	0
 3293 0076 0B       		.uleb128 0xb
 3294 0077 0D       		.uleb128 0xd
 3295 0078 00       		.byte	0
 3296 0079 03       		.uleb128 0x3
 3297 007a 0E       		.uleb128 0xe
 3298 007b 3A       		.uleb128 0x3a
 3299 007c 0B       		.uleb128 0xb
 3300 007d 3B       		.uleb128 0x3b
 3301 007e 05       		.uleb128 0x5
 3302 007f 49       		.uleb128 0x49
 3303 0080 13       		.uleb128 0x13
 3304 0081 38       		.uleb128 0x38
 3305 0082 05       		.uleb128 0x5
 3306 0083 00       		.byte	0
 3307 0084 00       		.byte	0
 3308 0085 0C       		.uleb128 0xc
 3309 0086 01       		.uleb128 0x1
 3310 0087 01       		.byte	0x1
 3311 0088 49       		.uleb128 0x49
 3312 0089 13       		.uleb128 0x13
 3313 008a 01       		.uleb128 0x1
 3314 008b 13       		.uleb128 0x13
 3315 008c 00       		.byte	0
 3316 008d 00       		.byte	0
 3317 008e 0D       		.uleb128 0xd
 3318 008f 21       		.uleb128 0x21
 3319 0090 00       		.byte	0
 3320 0091 49       		.uleb128 0x49
ARM GAS  /tmp/ccRqcMej.s 			page 82


 3321 0092 13       		.uleb128 0x13
 3322 0093 2F       		.uleb128 0x2f
 3323 0094 0B       		.uleb128 0xb
 3324 0095 00       		.byte	0
 3325 0096 00       		.byte	0
 3326 0097 0E       		.uleb128 0xe
 3327 0098 16       		.uleb128 0x16
 3328 0099 00       		.byte	0
 3329 009a 03       		.uleb128 0x3
 3330 009b 0E       		.uleb128 0xe
 3331 009c 3A       		.uleb128 0x3a
 3332 009d 0B       		.uleb128 0xb
 3333 009e 3B       		.uleb128 0x3b
 3334 009f 05       		.uleb128 0x5
 3335 00a0 49       		.uleb128 0x49
 3336 00a1 13       		.uleb128 0x13
 3337 00a2 00       		.byte	0
 3338 00a3 00       		.byte	0
 3339 00a4 0F       		.uleb128 0xf
 3340 00a5 34       		.uleb128 0x34
 3341 00a6 00       		.byte	0
 3342 00a7 03       		.uleb128 0x3
 3343 00a8 0E       		.uleb128 0xe
 3344 00a9 3A       		.uleb128 0x3a
 3345 00aa 0B       		.uleb128 0xb
 3346 00ab 3B       		.uleb128 0x3b
 3347 00ac 05       		.uleb128 0x5
 3348 00ad 49       		.uleb128 0x49
 3349 00ae 13       		.uleb128 0x13
 3350 00af 3F       		.uleb128 0x3f
 3351 00b0 19       		.uleb128 0x19
 3352 00b1 3C       		.uleb128 0x3c
 3353 00b2 19       		.uleb128 0x19
 3354 00b3 00       		.byte	0
 3355 00b4 00       		.byte	0
 3356 00b5 10       		.uleb128 0x10
 3357 00b6 34       		.uleb128 0x34
 3358 00b7 00       		.byte	0
 3359 00b8 03       		.uleb128 0x3
 3360 00b9 0E       		.uleb128 0xe
 3361 00ba 3A       		.uleb128 0x3a
 3362 00bb 0B       		.uleb128 0xb
 3363 00bc 3B       		.uleb128 0x3b
 3364 00bd 0B       		.uleb128 0xb
 3365 00be 49       		.uleb128 0x49
 3366 00bf 13       		.uleb128 0x13
 3367 00c0 3F       		.uleb128 0x3f
 3368 00c1 19       		.uleb128 0x19
 3369 00c2 3C       		.uleb128 0x3c
 3370 00c3 19       		.uleb128 0x19
 3371 00c4 00       		.byte	0
 3372 00c5 00       		.byte	0
 3373 00c6 11       		.uleb128 0x11
 3374 00c7 13       		.uleb128 0x13
 3375 00c8 01       		.byte	0x1
 3376 00c9 0B       		.uleb128 0xb
 3377 00ca 0B       		.uleb128 0xb
ARM GAS  /tmp/ccRqcMej.s 			page 83


 3378 00cb 3A       		.uleb128 0x3a
 3379 00cc 0B       		.uleb128 0xb
 3380 00cd 3B       		.uleb128 0x3b
 3381 00ce 0B       		.uleb128 0xb
 3382 00cf 01       		.uleb128 0x1
 3383 00d0 13       		.uleb128 0x13
 3384 00d1 00       		.byte	0
 3385 00d2 00       		.byte	0
 3386 00d3 12       		.uleb128 0x12
 3387 00d4 0D       		.uleb128 0xd
 3388 00d5 00       		.byte	0
 3389 00d6 03       		.uleb128 0x3
 3390 00d7 0E       		.uleb128 0xe
 3391 00d8 3A       		.uleb128 0x3a
 3392 00d9 0B       		.uleb128 0xb
 3393 00da 3B       		.uleb128 0x3b
 3394 00db 0B       		.uleb128 0xb
 3395 00dc 49       		.uleb128 0x49
 3396 00dd 13       		.uleb128 0x13
 3397 00de 38       		.uleb128 0x38
 3398 00df 0B       		.uleb128 0xb
 3399 00e0 00       		.byte	0
 3400 00e1 00       		.byte	0
 3401 00e2 13       		.uleb128 0x13
 3402 00e3 16       		.uleb128 0x16
 3403 00e4 00       		.byte	0
 3404 00e5 03       		.uleb128 0x3
 3405 00e6 08       		.uleb128 0x8
 3406 00e7 3A       		.uleb128 0x3a
 3407 00e8 0B       		.uleb128 0xb
 3408 00e9 3B       		.uleb128 0x3b
 3409 00ea 0B       		.uleb128 0xb
 3410 00eb 49       		.uleb128 0x49
 3411 00ec 13       		.uleb128 0x13
 3412 00ed 00       		.byte	0
 3413 00ee 00       		.byte	0
 3414 00ef 14       		.uleb128 0x14
 3415 00f0 13       		.uleb128 0x13
 3416 00f1 01       		.byte	0x1
 3417 00f2 0B       		.uleb128 0xb
 3418 00f3 05       		.uleb128 0x5
 3419 00f4 3A       		.uleb128 0x3a
 3420 00f5 0B       		.uleb128 0xb
 3421 00f6 3B       		.uleb128 0x3b
 3422 00f7 0B       		.uleb128 0xb
 3423 00f8 01       		.uleb128 0x1
 3424 00f9 13       		.uleb128 0x13
 3425 00fa 00       		.byte	0
 3426 00fb 00       		.byte	0
 3427 00fc 15       		.uleb128 0x15
 3428 00fd 0D       		.uleb128 0xd
 3429 00fe 00       		.byte	0
 3430 00ff 03       		.uleb128 0x3
 3431 0100 0E       		.uleb128 0xe
 3432 0101 3A       		.uleb128 0x3a
 3433 0102 0B       		.uleb128 0xb
 3434 0103 3B       		.uleb128 0x3b
ARM GAS  /tmp/ccRqcMej.s 			page 84


 3435 0104 0B       		.uleb128 0xb
 3436 0105 49       		.uleb128 0x49
 3437 0106 13       		.uleb128 0x13
 3438 0107 38       		.uleb128 0x38
 3439 0108 05       		.uleb128 0x5
 3440 0109 00       		.byte	0
 3441 010a 00       		.byte	0
 3442 010b 16       		.uleb128 0x16
 3443 010c 17       		.uleb128 0x17
 3444 010d 01       		.byte	0x1
 3445 010e 0B       		.uleb128 0xb
 3446 010f 0B       		.uleb128 0xb
 3447 0110 3A       		.uleb128 0x3a
 3448 0111 0B       		.uleb128 0xb
 3449 0112 3B       		.uleb128 0x3b
 3450 0113 0B       		.uleb128 0xb
 3451 0114 01       		.uleb128 0x1
 3452 0115 13       		.uleb128 0x13
 3453 0116 00       		.byte	0
 3454 0117 00       		.byte	0
 3455 0118 17       		.uleb128 0x17
 3456 0119 0D       		.uleb128 0xd
 3457 011a 00       		.byte	0
 3458 011b 03       		.uleb128 0x3
 3459 011c 0E       		.uleb128 0xe
 3460 011d 3A       		.uleb128 0x3a
 3461 011e 0B       		.uleb128 0xb
 3462 011f 3B       		.uleb128 0x3b
 3463 0120 0B       		.uleb128 0xb
 3464 0121 49       		.uleb128 0x49
 3465 0122 13       		.uleb128 0x13
 3466 0123 00       		.byte	0
 3467 0124 00       		.byte	0
 3468 0125 18       		.uleb128 0x18
 3469 0126 13       		.uleb128 0x13
 3470 0127 01       		.byte	0x1
 3471 0128 03       		.uleb128 0x3
 3472 0129 0E       		.uleb128 0xe
 3473 012a 0B       		.uleb128 0xb
 3474 012b 0B       		.uleb128 0xb
 3475 012c 3A       		.uleb128 0x3a
 3476 012d 0B       		.uleb128 0xb
 3477 012e 3B       		.uleb128 0x3b
 3478 012f 0B       		.uleb128 0xb
 3479 0130 01       		.uleb128 0x1
 3480 0131 13       		.uleb128 0x13
 3481 0132 00       		.byte	0
 3482 0133 00       		.byte	0
 3483 0134 19       		.uleb128 0x19
 3484 0135 0D       		.uleb128 0xd
 3485 0136 00       		.byte	0
 3486 0137 03       		.uleb128 0x3
 3487 0138 08       		.uleb128 0x8
 3488 0139 3A       		.uleb128 0x3a
 3489 013a 0B       		.uleb128 0xb
 3490 013b 3B       		.uleb128 0x3b
 3491 013c 0B       		.uleb128 0xb
ARM GAS  /tmp/ccRqcMej.s 			page 85


 3492 013d 49       		.uleb128 0x49
 3493 013e 13       		.uleb128 0x13
 3494 013f 38       		.uleb128 0x38
 3495 0140 0B       		.uleb128 0xb
 3496 0141 00       		.byte	0
 3497 0142 00       		.byte	0
 3498 0143 1A       		.uleb128 0x1a
 3499 0144 0F       		.uleb128 0xf
 3500 0145 00       		.byte	0
 3501 0146 0B       		.uleb128 0xb
 3502 0147 0B       		.uleb128 0xb
 3503 0148 49       		.uleb128 0x49
 3504 0149 13       		.uleb128 0x13
 3505 014a 00       		.byte	0
 3506 014b 00       		.byte	0
 3507 014c 1B       		.uleb128 0x1b
 3508 014d 13       		.uleb128 0x13
 3509 014e 01       		.byte	0x1
 3510 014f 03       		.uleb128 0x3
 3511 0150 0E       		.uleb128 0xe
 3512 0151 0B       		.uleb128 0xb
 3513 0152 05       		.uleb128 0x5
 3514 0153 3A       		.uleb128 0x3a
 3515 0154 0B       		.uleb128 0xb
 3516 0155 3B       		.uleb128 0x3b
 3517 0156 0B       		.uleb128 0xb
 3518 0157 01       		.uleb128 0x1
 3519 0158 13       		.uleb128 0x13
 3520 0159 00       		.byte	0
 3521 015a 00       		.byte	0
 3522 015b 1C       		.uleb128 0x1c
 3523 015c 15       		.uleb128 0x15
 3524 015d 00       		.byte	0
 3525 015e 27       		.uleb128 0x27
 3526 015f 19       		.uleb128 0x19
 3527 0160 00       		.byte	0
 3528 0161 00       		.byte	0
 3529 0162 1D       		.uleb128 0x1d
 3530 0163 15       		.uleb128 0x15
 3531 0164 01       		.byte	0x1
 3532 0165 27       		.uleb128 0x27
 3533 0166 19       		.uleb128 0x19
 3534 0167 49       		.uleb128 0x49
 3535 0168 13       		.uleb128 0x13
 3536 0169 01       		.uleb128 0x1
 3537 016a 13       		.uleb128 0x13
 3538 016b 00       		.byte	0
 3539 016c 00       		.byte	0
 3540 016d 1E       		.uleb128 0x1e
 3541 016e 05       		.uleb128 0x5
 3542 016f 00       		.byte	0
 3543 0170 49       		.uleb128 0x49
 3544 0171 13       		.uleb128 0x13
 3545 0172 00       		.byte	0
 3546 0173 00       		.byte	0
 3547 0174 1F       		.uleb128 0x1f
 3548 0175 13       		.uleb128 0x13
ARM GAS  /tmp/ccRqcMej.s 			page 86


 3549 0176 01       		.byte	0x1
 3550 0177 03       		.uleb128 0x3
 3551 0178 0E       		.uleb128 0xe
 3552 0179 0B       		.uleb128 0xb
 3553 017a 05       		.uleb128 0x5
 3554 017b 3A       		.uleb128 0x3a
 3555 017c 0B       		.uleb128 0xb
 3556 017d 3B       		.uleb128 0x3b
 3557 017e 05       		.uleb128 0x5
 3558 017f 01       		.uleb128 0x1
 3559 0180 13       		.uleb128 0x13
 3560 0181 00       		.byte	0
 3561 0182 00       		.byte	0
 3562 0183 20       		.uleb128 0x20
 3563 0184 13       		.uleb128 0x13
 3564 0185 01       		.byte	0x1
 3565 0186 03       		.uleb128 0x3
 3566 0187 0E       		.uleb128 0xe
 3567 0188 0B       		.uleb128 0xb
 3568 0189 0B       		.uleb128 0xb
 3569 018a 3A       		.uleb128 0x3a
 3570 018b 0B       		.uleb128 0xb
 3571 018c 3B       		.uleb128 0x3b
 3572 018d 05       		.uleb128 0x5
 3573 018e 01       		.uleb128 0x1
 3574 018f 13       		.uleb128 0x13
 3575 0190 00       		.byte	0
 3576 0191 00       		.byte	0
 3577 0192 21       		.uleb128 0x21
 3578 0193 13       		.uleb128 0x13
 3579 0194 01       		.byte	0x1
 3580 0195 0B       		.uleb128 0xb
 3581 0196 0B       		.uleb128 0xb
 3582 0197 3A       		.uleb128 0x3a
 3583 0198 0B       		.uleb128 0xb
 3584 0199 3B       		.uleb128 0x3b
 3585 019a 05       		.uleb128 0x5
 3586 019b 01       		.uleb128 0x1
 3587 019c 13       		.uleb128 0x13
 3588 019d 00       		.byte	0
 3589 019e 00       		.byte	0
 3590 019f 22       		.uleb128 0x22
 3591 01a0 17       		.uleb128 0x17
 3592 01a1 01       		.byte	0x1
 3593 01a2 0B       		.uleb128 0xb
 3594 01a3 0B       		.uleb128 0xb
 3595 01a4 3A       		.uleb128 0x3a
 3596 01a5 0B       		.uleb128 0xb
 3597 01a6 3B       		.uleb128 0x3b
 3598 01a7 05       		.uleb128 0x5
 3599 01a8 01       		.uleb128 0x1
 3600 01a9 13       		.uleb128 0x13
 3601 01aa 00       		.byte	0
 3602 01ab 00       		.byte	0
 3603 01ac 23       		.uleb128 0x23
 3604 01ad 0D       		.uleb128 0xd
 3605 01ae 00       		.byte	0
ARM GAS  /tmp/ccRqcMej.s 			page 87


 3606 01af 03       		.uleb128 0x3
 3607 01b0 0E       		.uleb128 0xe
 3608 01b1 3A       		.uleb128 0x3a
 3609 01b2 0B       		.uleb128 0xb
 3610 01b3 3B       		.uleb128 0x3b
 3611 01b4 05       		.uleb128 0x5
 3612 01b5 49       		.uleb128 0x49
 3613 01b6 13       		.uleb128 0x13
 3614 01b7 00       		.byte	0
 3615 01b8 00       		.byte	0
 3616 01b9 24       		.uleb128 0x24
 3617 01ba 15       		.uleb128 0x15
 3618 01bb 01       		.byte	0x1
 3619 01bc 27       		.uleb128 0x27
 3620 01bd 19       		.uleb128 0x19
 3621 01be 01       		.uleb128 0x1
 3622 01bf 13       		.uleb128 0x13
 3623 01c0 00       		.byte	0
 3624 01c1 00       		.byte	0
 3625 01c2 25       		.uleb128 0x25
 3626 01c3 34       		.uleb128 0x34
 3627 01c4 00       		.byte	0
 3628 01c5 03       		.uleb128 0x3
 3629 01c6 0E       		.uleb128 0xe
 3630 01c7 3A       		.uleb128 0x3a
 3631 01c8 0B       		.uleb128 0xb
 3632 01c9 3B       		.uleb128 0x3b
 3633 01ca 0B       		.uleb128 0xb
 3634 01cb 49       		.uleb128 0x49
 3635 01cc 13       		.uleb128 0x13
 3636 01cd 02       		.uleb128 0x2
 3637 01ce 18       		.uleb128 0x18
 3638 01cf 00       		.byte	0
 3639 01d0 00       		.byte	0
 3640 01d1 26       		.uleb128 0x26
 3641 01d2 34       		.uleb128 0x34
 3642 01d3 00       		.byte	0
 3643 01d4 03       		.uleb128 0x3
 3644 01d5 0E       		.uleb128 0xe
 3645 01d6 3A       		.uleb128 0x3a
 3646 01d7 0B       		.uleb128 0xb
 3647 01d8 3B       		.uleb128 0x3b
 3648 01d9 05       		.uleb128 0x5
 3649 01da 49       		.uleb128 0x49
 3650 01db 13       		.uleb128 0x13
 3651 01dc 02       		.uleb128 0x2
 3652 01dd 18       		.uleb128 0x18
 3653 01de 00       		.byte	0
 3654 01df 00       		.byte	0
 3655 01e0 27       		.uleb128 0x27
 3656 01e1 2E       		.uleb128 0x2e
 3657 01e2 01       		.byte	0x1
 3658 01e3 3F       		.uleb128 0x3f
 3659 01e4 19       		.uleb128 0x19
 3660 01e5 03       		.uleb128 0x3
 3661 01e6 0E       		.uleb128 0xe
 3662 01e7 3A       		.uleb128 0x3a
ARM GAS  /tmp/ccRqcMej.s 			page 88


 3663 01e8 0B       		.uleb128 0xb
 3664 01e9 3B       		.uleb128 0x3b
 3665 01ea 05       		.uleb128 0x5
 3666 01eb 27       		.uleb128 0x27
 3667 01ec 19       		.uleb128 0x19
 3668 01ed 11       		.uleb128 0x11
 3669 01ee 01       		.uleb128 0x1
 3670 01ef 12       		.uleb128 0x12
 3671 01f0 06       		.uleb128 0x6
 3672 01f1 40       		.uleb128 0x40
 3673 01f2 18       		.uleb128 0x18
 3674 01f3 9742     		.uleb128 0x2117
 3675 01f5 19       		.uleb128 0x19
 3676 01f6 01       		.uleb128 0x1
 3677 01f7 13       		.uleb128 0x13
 3678 01f8 00       		.byte	0
 3679 01f9 00       		.byte	0
 3680 01fa 28       		.uleb128 0x28
 3681 01fb 05       		.uleb128 0x5
 3682 01fc 00       		.byte	0
 3683 01fd 03       		.uleb128 0x3
 3684 01fe 0E       		.uleb128 0xe
 3685 01ff 3A       		.uleb128 0x3a
 3686 0200 0B       		.uleb128 0xb
 3687 0201 3B       		.uleb128 0x3b
 3688 0202 05       		.uleb128 0x5
 3689 0203 49       		.uleb128 0x49
 3690 0204 13       		.uleb128 0x13
 3691 0205 02       		.uleb128 0x2
 3692 0206 17       		.uleb128 0x17
 3693 0207 00       		.byte	0
 3694 0208 00       		.byte	0
 3695 0209 29       		.uleb128 0x29
 3696 020a 1D       		.uleb128 0x1d
 3697 020b 00       		.byte	0
 3698 020c 31       		.uleb128 0x31
 3699 020d 13       		.uleb128 0x13
 3700 020e 11       		.uleb128 0x11
 3701 020f 01       		.uleb128 0x1
 3702 0210 12       		.uleb128 0x12
 3703 0211 06       		.uleb128 0x6
 3704 0212 58       		.uleb128 0x58
 3705 0213 0B       		.uleb128 0xb
 3706 0214 59       		.uleb128 0x59
 3707 0215 05       		.uleb128 0x5
 3708 0216 00       		.byte	0
 3709 0217 00       		.byte	0
 3710 0218 2A       		.uleb128 0x2a
 3711 0219 898201   		.uleb128 0x4109
 3712 021c 00       		.byte	0
 3713 021d 11       		.uleb128 0x11
 3714 021e 01       		.uleb128 0x1
 3715 021f 9542     		.uleb128 0x2115
 3716 0221 19       		.uleb128 0x19
 3717 0222 9342     		.uleb128 0x2113
 3718 0224 18       		.uleb128 0x18
 3719 0225 00       		.byte	0
ARM GAS  /tmp/ccRqcMej.s 			page 89


 3720 0226 00       		.byte	0
 3721 0227 2B       		.uleb128 0x2b
 3722 0228 2E       		.uleb128 0x2e
 3723 0229 00       		.byte	0
 3724 022a 3F       		.uleb128 0x3f
 3725 022b 19       		.uleb128 0x19
 3726 022c 03       		.uleb128 0x3
 3727 022d 0E       		.uleb128 0xe
 3728 022e 3A       		.uleb128 0x3a
 3729 022f 0B       		.uleb128 0xb
 3730 0230 3B       		.uleb128 0x3b
 3731 0231 05       		.uleb128 0x5
 3732 0232 27       		.uleb128 0x27
 3733 0233 19       		.uleb128 0x19
 3734 0234 49       		.uleb128 0x49
 3735 0235 13       		.uleb128 0x13
 3736 0236 11       		.uleb128 0x11
 3737 0237 01       		.uleb128 0x1
 3738 0238 12       		.uleb128 0x12
 3739 0239 06       		.uleb128 0x6
 3740 023a 40       		.uleb128 0x40
 3741 023b 18       		.uleb128 0x18
 3742 023c 9742     		.uleb128 0x2117
 3743 023e 19       		.uleb128 0x19
 3744 023f 00       		.byte	0
 3745 0240 00       		.byte	0
 3746 0241 2C       		.uleb128 0x2c
 3747 0242 2E       		.uleb128 0x2e
 3748 0243 01       		.byte	0x1
 3749 0244 3F       		.uleb128 0x3f
 3750 0245 19       		.uleb128 0x19
 3751 0246 03       		.uleb128 0x3
 3752 0247 0E       		.uleb128 0xe
 3753 0248 3A       		.uleb128 0x3a
 3754 0249 0B       		.uleb128 0xb
 3755 024a 3B       		.uleb128 0x3b
 3756 024b 05       		.uleb128 0x5
 3757 024c 27       		.uleb128 0x27
 3758 024d 19       		.uleb128 0x19
 3759 024e 11       		.uleb128 0x11
 3760 024f 01       		.uleb128 0x1
 3761 0250 12       		.uleb128 0x12
 3762 0251 06       		.uleb128 0x6
 3763 0252 40       		.uleb128 0x40
 3764 0253 18       		.uleb128 0x18
 3765 0254 9642     		.uleb128 0x2116
 3766 0256 19       		.uleb128 0x19
 3767 0257 01       		.uleb128 0x1
 3768 0258 13       		.uleb128 0x13
 3769 0259 00       		.byte	0
 3770 025a 00       		.byte	0
 3771 025b 2D       		.uleb128 0x2d
 3772 025c 0B       		.uleb128 0xb
 3773 025d 01       		.byte	0x1
 3774 025e 55       		.uleb128 0x55
 3775 025f 17       		.uleb128 0x17
 3776 0260 01       		.uleb128 0x1
ARM GAS  /tmp/ccRqcMej.s 			page 90


 3777 0261 13       		.uleb128 0x13
 3778 0262 00       		.byte	0
 3779 0263 00       		.byte	0
 3780 0264 2E       		.uleb128 0x2e
 3781 0265 34       		.uleb128 0x34
 3782 0266 00       		.byte	0
 3783 0267 03       		.uleb128 0x3
 3784 0268 08       		.uleb128 0x8
 3785 0269 3A       		.uleb128 0x3a
 3786 026a 0B       		.uleb128 0xb
 3787 026b 3B       		.uleb128 0x3b
 3788 026c 05       		.uleb128 0x5
 3789 026d 49       		.uleb128 0x49
 3790 026e 13       		.uleb128 0x13
 3791 026f 02       		.uleb128 0x2
 3792 0270 17       		.uleb128 0x17
 3793 0271 00       		.byte	0
 3794 0272 00       		.byte	0
 3795 0273 2F       		.uleb128 0x2f
 3796 0274 34       		.uleb128 0x34
 3797 0275 00       		.byte	0
 3798 0276 03       		.uleb128 0x3
 3799 0277 0E       		.uleb128 0xe
 3800 0278 3A       		.uleb128 0x3a
 3801 0279 0B       		.uleb128 0xb
 3802 027a 3B       		.uleb128 0x3b
 3803 027b 05       		.uleb128 0x5
 3804 027c 49       		.uleb128 0x49
 3805 027d 13       		.uleb128 0x13
 3806 027e 02       		.uleb128 0x2
 3807 027f 17       		.uleb128 0x17
 3808 0280 00       		.byte	0
 3809 0281 00       		.byte	0
 3810 0282 30       		.uleb128 0x30
 3811 0283 1D       		.uleb128 0x1d
 3812 0284 01       		.byte	0x1
 3813 0285 31       		.uleb128 0x31
 3814 0286 13       		.uleb128 0x13
 3815 0287 52       		.uleb128 0x52
 3816 0288 01       		.uleb128 0x1
 3817 0289 55       		.uleb128 0x55
 3818 028a 17       		.uleb128 0x17
 3819 028b 58       		.uleb128 0x58
 3820 028c 0B       		.uleb128 0xb
 3821 028d 59       		.uleb128 0x59
 3822 028e 05       		.uleb128 0x5
 3823 028f 01       		.uleb128 0x1
 3824 0290 13       		.uleb128 0x13
 3825 0291 00       		.byte	0
 3826 0292 00       		.byte	0
 3827 0293 31       		.uleb128 0x31
 3828 0294 05       		.uleb128 0x5
 3829 0295 00       		.byte	0
 3830 0296 31       		.uleb128 0x31
 3831 0297 13       		.uleb128 0x13
 3832 0298 02       		.uleb128 0x2
 3833 0299 17       		.uleb128 0x17
ARM GAS  /tmp/ccRqcMej.s 			page 91


 3834 029a 00       		.byte	0
 3835 029b 00       		.byte	0
 3836 029c 32       		.uleb128 0x32
 3837 029d 0B       		.uleb128 0xb
 3838 029e 01       		.byte	0x1
 3839 029f 55       		.uleb128 0x55
 3840 02a0 17       		.uleb128 0x17
 3841 02a1 00       		.byte	0
 3842 02a2 00       		.byte	0
 3843 02a3 33       		.uleb128 0x33
 3844 02a4 34       		.uleb128 0x34
 3845 02a5 00       		.byte	0
 3846 02a6 31       		.uleb128 0x31
 3847 02a7 13       		.uleb128 0x13
 3848 02a8 02       		.uleb128 0x2
 3849 02a9 17       		.uleb128 0x17
 3850 02aa 00       		.byte	0
 3851 02ab 00       		.byte	0
 3852 02ac 34       		.uleb128 0x34
 3853 02ad 898201   		.uleb128 0x4109
 3854 02b0 00       		.byte	0
 3855 02b1 11       		.uleb128 0x11
 3856 02b2 01       		.uleb128 0x1
 3857 02b3 31       		.uleb128 0x31
 3858 02b4 13       		.uleb128 0x13
 3859 02b5 00       		.byte	0
 3860 02b6 00       		.byte	0
 3861 02b7 35       		.uleb128 0x35
 3862 02b8 898201   		.uleb128 0x4109
 3863 02bb 01       		.byte	0x1
 3864 02bc 11       		.uleb128 0x11
 3865 02bd 01       		.uleb128 0x1
 3866 02be 31       		.uleb128 0x31
 3867 02bf 13       		.uleb128 0x13
 3868 02c0 01       		.uleb128 0x1
 3869 02c1 13       		.uleb128 0x13
 3870 02c2 00       		.byte	0
 3871 02c3 00       		.byte	0
 3872 02c4 36       		.uleb128 0x36
 3873 02c5 8A8201   		.uleb128 0x410a
 3874 02c8 00       		.byte	0
 3875 02c9 02       		.uleb128 0x2
 3876 02ca 18       		.uleb128 0x18
 3877 02cb 9142     		.uleb128 0x2111
 3878 02cd 18       		.uleb128 0x18
 3879 02ce 00       		.byte	0
 3880 02cf 00       		.byte	0
 3881 02d0 37       		.uleb128 0x37
 3882 02d1 2E       		.uleb128 0x2e
 3883 02d2 01       		.byte	0x1
 3884 02d3 03       		.uleb128 0x3
 3885 02d4 0E       		.uleb128 0xe
 3886 02d5 3A       		.uleb128 0x3a
 3887 02d6 0B       		.uleb128 0xb
 3888 02d7 3B       		.uleb128 0x3b
 3889 02d8 0B       		.uleb128 0xb
 3890 02d9 27       		.uleb128 0x27
ARM GAS  /tmp/ccRqcMej.s 			page 92


 3891 02da 19       		.uleb128 0x19
 3892 02db 20       		.uleb128 0x20
 3893 02dc 0B       		.uleb128 0xb
 3894 02dd 01       		.uleb128 0x1
 3895 02de 13       		.uleb128 0x13
 3896 02df 00       		.byte	0
 3897 02e0 00       		.byte	0
 3898 02e1 38       		.uleb128 0x38
 3899 02e2 05       		.uleb128 0x5
 3900 02e3 00       		.byte	0
 3901 02e4 03       		.uleb128 0x3
 3902 02e5 0E       		.uleb128 0xe
 3903 02e6 3A       		.uleb128 0x3a
 3904 02e7 0B       		.uleb128 0xb
 3905 02e8 3B       		.uleb128 0x3b
 3906 02e9 0B       		.uleb128 0xb
 3907 02ea 49       		.uleb128 0x49
 3908 02eb 13       		.uleb128 0x13
 3909 02ec 00       		.byte	0
 3910 02ed 00       		.byte	0
 3911 02ee 39       		.uleb128 0x39
 3912 02ef 34       		.uleb128 0x34
 3913 02f0 00       		.byte	0
 3914 02f1 03       		.uleb128 0x3
 3915 02f2 0E       		.uleb128 0xe
 3916 02f3 3A       		.uleb128 0x3a
 3917 02f4 0B       		.uleb128 0xb
 3918 02f5 3B       		.uleb128 0x3b
 3919 02f6 0B       		.uleb128 0xb
 3920 02f7 49       		.uleb128 0x49
 3921 02f8 13       		.uleb128 0x13
 3922 02f9 00       		.byte	0
 3923 02fa 00       		.byte	0
 3924 02fb 3A       		.uleb128 0x3a
 3925 02fc 34       		.uleb128 0x34
 3926 02fd 00       		.byte	0
 3927 02fe 03       		.uleb128 0x3
 3928 02ff 08       		.uleb128 0x8
 3929 0300 3A       		.uleb128 0x3a
 3930 0301 0B       		.uleb128 0xb
 3931 0302 3B       		.uleb128 0x3b
 3932 0303 0B       		.uleb128 0xb
 3933 0304 49       		.uleb128 0x49
 3934 0305 13       		.uleb128 0x13
 3935 0306 00       		.byte	0
 3936 0307 00       		.byte	0
 3937 0308 3B       		.uleb128 0x3b
 3938 0309 2E       		.uleb128 0x2e
 3939 030a 00       		.byte	0
 3940 030b 03       		.uleb128 0x3
 3941 030c 0E       		.uleb128 0xe
 3942 030d 3A       		.uleb128 0x3a
 3943 030e 0B       		.uleb128 0xb
 3944 030f 3B       		.uleb128 0x3b
 3945 0310 05       		.uleb128 0x5
 3946 0311 27       		.uleb128 0x27
 3947 0312 19       		.uleb128 0x19
ARM GAS  /tmp/ccRqcMej.s 			page 93


 3948 0313 20       		.uleb128 0x20
 3949 0314 0B       		.uleb128 0xb
 3950 0315 00       		.byte	0
 3951 0316 00       		.byte	0
 3952 0317 3C       		.uleb128 0x3c
 3953 0318 2E       		.uleb128 0x2e
 3954 0319 00       		.byte	0
 3955 031a 3F       		.uleb128 0x3f
 3956 031b 19       		.uleb128 0x19
 3957 031c 3C       		.uleb128 0x3c
 3958 031d 19       		.uleb128 0x19
 3959 031e 6E       		.uleb128 0x6e
 3960 031f 0E       		.uleb128 0xe
 3961 0320 03       		.uleb128 0x3
 3962 0321 0E       		.uleb128 0xe
 3963 0322 3A       		.uleb128 0x3a
 3964 0323 0B       		.uleb128 0xb
 3965 0324 3B       		.uleb128 0x3b
 3966 0325 0B       		.uleb128 0xb
 3967 0326 00       		.byte	0
 3968 0327 00       		.byte	0
 3969 0328 3D       		.uleb128 0x3d
 3970 0329 2E       		.uleb128 0x2e
 3971 032a 00       		.byte	0
 3972 032b 3F       		.uleb128 0x3f
 3973 032c 19       		.uleb128 0x19
 3974 032d 3C       		.uleb128 0x3c
 3975 032e 19       		.uleb128 0x19
 3976 032f 6E       		.uleb128 0x6e
 3977 0330 0E       		.uleb128 0xe
 3978 0331 03       		.uleb128 0x3
 3979 0332 0E       		.uleb128 0xe
 3980 0333 3A       		.uleb128 0x3a
 3981 0334 0B       		.uleb128 0xb
 3982 0335 3B       		.uleb128 0x3b
 3983 0336 05       		.uleb128 0x5
 3984 0337 00       		.byte	0
 3985 0338 00       		.byte	0
 3986 0339 00       		.byte	0
 3987              		.section	.debug_loc,"",%progbits
 3988              	.Ldebug_loc0:
 3989              	.LLST22:
 3990 0000 00000000 		.4byte	.LVL32
 3991 0004 09000000 		.4byte	.LVL33-1
 3992 0008 0100     		.2byte	0x1
 3993 000a 50       		.byte	0x50
 3994 000b 09000000 		.4byte	.LVL33-1
 3995 000f 0A000000 		.4byte	.LVL33
 3996 0013 0400     		.2byte	0x4
 3997 0015 F3       		.byte	0xf3
 3998 0016 01       		.uleb128 0x1
 3999 0017 50       		.byte	0x50
 4000 0018 9F       		.byte	0x9f
 4001 0019 0A000000 		.4byte	.LVL33
 4002 001d 2C000000 		.4byte	.LFE146
 4003 0021 0100     		.2byte	0x1
 4004 0023 50       		.byte	0x50
ARM GAS  /tmp/ccRqcMej.s 			page 94


 4005 0024 00000000 		.4byte	0
 4006 0028 00000000 		.4byte	0
 4007              	.LLST0:
 4008 002c 00000000 		.4byte	.LVL0
 4009 0030 18000000 		.4byte	.LVL1
 4010 0034 0100     		.2byte	0x1
 4011 0036 50       		.byte	0x50
 4012 0037 18000000 		.4byte	.LVL1
 4013 003b 1C000000 		.4byte	.LVL2
 4014 003f 0300     		.2byte	0x3
 4015 0041 73       		.byte	0x73
 4016 0042 01       		.sleb128 1
 4017 0043 9F       		.byte	0x9f
 4018 0044 1C000000 		.4byte	.LVL2
 4019 0048 36000000 		.4byte	.LVL3
 4020 004c 0400     		.2byte	0x4
 4021 004e F3       		.byte	0xf3
 4022 004f 01       		.uleb128 0x1
 4023 0050 50       		.byte	0x50
 4024 0051 9F       		.byte	0x9f
 4025 0052 36000000 		.4byte	.LVL3
 4026 0056 3E000000 		.4byte	.LVL4
 4027 005a 0100     		.2byte	0x1
 4028 005c 50       		.byte	0x50
 4029 005d 3E000000 		.4byte	.LVL4
 4030 0061 0C010000 		.4byte	.LVL17
 4031 0065 0100     		.2byte	0x1
 4032 0067 54       		.byte	0x54
 4033 0068 0C010000 		.4byte	.LVL17
 4034 006c 78010000 		.4byte	.LVL25
 4035 0070 0400     		.2byte	0x4
 4036 0072 F3       		.byte	0xf3
 4037 0073 01       		.uleb128 0x1
 4038 0074 50       		.byte	0x50
 4039 0075 9F       		.byte	0x9f
 4040 0076 78010000 		.4byte	.LVL25
 4041 007a 7C010000 		.4byte	.LVL26
 4042 007e 0100     		.2byte	0x1
 4043 0080 50       		.byte	0x50
 4044 0081 7C010000 		.4byte	.LVL26
 4045 0085 80010000 		.4byte	.LVL27
 4046 0089 0300     		.2byte	0x3
 4047 008b 73       		.byte	0x73
 4048 008c 01       		.sleb128 1
 4049 008d 9F       		.byte	0x9f
 4050 008e 80010000 		.4byte	.LVL27
 4051 0092 98010000 		.4byte	.LVL28
 4052 0096 0400     		.2byte	0x4
 4053 0098 F3       		.byte	0xf3
 4054 0099 01       		.uleb128 0x1
 4055 009a 50       		.byte	0x50
 4056 009b 9F       		.byte	0x9f
 4057 009c 98010000 		.4byte	.LVL28
 4058 00a0 A8010000 		.4byte	.LVL30
 4059 00a4 0100     		.2byte	0x1
 4060 00a6 54       		.byte	0x54
 4061 00a7 A8010000 		.4byte	.LVL30
ARM GAS  /tmp/ccRqcMej.s 			page 95


 4062 00ab E6010000 		.4byte	.LVL31
 4063 00af 0400     		.2byte	0x4
 4064 00b1 F3       		.byte	0xf3
 4065 00b2 01       		.uleb128 0x1
 4066 00b3 50       		.byte	0x50
 4067 00b4 9F       		.byte	0x9f
 4068 00b5 E6010000 		.4byte	.LVL31
 4069 00b9 3C020000 		.4byte	.LFE144
 4070 00bd 0100     		.2byte	0x1
 4071 00bf 54       		.byte	0x54
 4072 00c0 00000000 		.4byte	0
 4073 00c4 00000000 		.4byte	0
 4074              	.LLST1:
 4075 00c8 76000000 		.4byte	.LVL9
 4076 00cc 74010000 		.4byte	.LVL24
 4077 00d0 0100     		.2byte	0x1
 4078 00d2 58       		.byte	0x58
 4079 00d3 98010000 		.4byte	.LVL28
 4080 00d7 3C020000 		.4byte	.LFE144
 4081 00db 0100     		.2byte	0x1
 4082 00dd 58       		.byte	0x58
 4083 00de 00000000 		.4byte	0
 4084 00e2 00000000 		.4byte	0
 4085              	.LLST2:
 4086 00e6 78000000 		.4byte	.LVL10
 4087 00ea 16010000 		.4byte	.LVL18
 4088 00ee 0100     		.2byte	0x1
 4089 00f0 56       		.byte	0x56
 4090 00f1 98010000 		.4byte	.LVL28
 4091 00f5 3C020000 		.4byte	.LFE144
 4092 00f9 0100     		.2byte	0x1
 4093 00fb 56       		.byte	0x56
 4094 00fc 00000000 		.4byte	0
 4095 0100 00000000 		.4byte	0
 4096              	.LLST3:
 4097 0104 78000000 		.4byte	.LVL10
 4098 0108 74010000 		.4byte	.LVL24
 4099 010c 0200     		.2byte	0x2
 4100 010e 30       		.byte	0x30
 4101 010f 9F       		.byte	0x9f
 4102 0110 98010000 		.4byte	.LVL28
 4103 0114 3C020000 		.4byte	.LFE144
 4104 0118 0200     		.2byte	0x2
 4105 011a 30       		.byte	0x30
 4106 011b 9F       		.byte	0x9f
 4107 011c 00000000 		.4byte	0
 4108 0120 00000000 		.4byte	0
 4109              	.LLST4:
 4110 0124 78000000 		.4byte	.LVL10
 4111 0128 74010000 		.4byte	.LVL24
 4112 012c 0100     		.2byte	0x1
 4113 012e 5B       		.byte	0x5b
 4114 012f 98010000 		.4byte	.LVL28
 4115 0133 3C020000 		.4byte	.LFE144
 4116 0137 0100     		.2byte	0x1
 4117 0139 5B       		.byte	0x5b
 4118 013a 00000000 		.4byte	0
ARM GAS  /tmp/ccRqcMej.s 			page 96


 4119 013e 00000000 		.4byte	0
 4120              	.LLST5:
 4121 0142 78000000 		.4byte	.LVL10
 4122 0146 74010000 		.4byte	.LVL24
 4123 014a 0100     		.2byte	0x1
 4124 014c 59       		.byte	0x59
 4125 014d 98010000 		.4byte	.LVL28
 4126 0151 3C020000 		.4byte	.LFE144
 4127 0155 0100     		.2byte	0x1
 4128 0157 59       		.byte	0x59
 4129 0158 00000000 		.4byte	0
 4130 015c 00000000 		.4byte	0
 4131              	.LLST6:
 4132 0160 5A000000 		.4byte	.LVL6
 4133 0164 D4000000 		.4byte	.LVL14
 4134 0168 0500     		.2byte	0x5
 4135 016a 74       		.byte	0x74
 4136 016b 00       		.sleb128 0
 4137 016c 34       		.byte	0x34
 4138 016d 29       		.byte	0x29
 4139 016e 9F       		.byte	0x9f
 4140 016f 98010000 		.4byte	.LVL28
 4141 0173 9C010000 		.4byte	.LVL29
 4142 0177 0500     		.2byte	0x5
 4143 0179 74       		.byte	0x74
 4144 017a 00       		.sleb128 0
 4145 017b 34       		.byte	0x34
 4146 017c 29       		.byte	0x29
 4147 017d 9F       		.byte	0x9f
 4148 017e E6010000 		.4byte	.LVL31
 4149 0182 3C020000 		.4byte	.LFE144
 4150 0186 0500     		.2byte	0x5
 4151 0188 74       		.byte	0x74
 4152 0189 00       		.sleb128 0
 4153 018a 34       		.byte	0x34
 4154 018b 29       		.byte	0x29
 4155 018c 9F       		.byte	0x9f
 4156 018d 00000000 		.4byte	0
 4157 0191 00000000 		.4byte	0
 4158              	.LLST7:
 4159 0195 5A000000 		.4byte	.LVL6
 4160 0199 D4000000 		.4byte	.LVL14
 4161 019d 0600     		.2byte	0x6
 4162 019f F2       		.byte	0xf2
 4163 01a0 31110000 		.4byte	.Ldebug_info0+4401
 4164 01a4 00       		.sleb128 0
 4165 01a5 98010000 		.4byte	.LVL28
 4166 01a9 9C010000 		.4byte	.LVL29
 4167 01ad 0600     		.2byte	0x6
 4168 01af F2       		.byte	0xf2
 4169 01b0 31110000 		.4byte	.Ldebug_info0+4401
 4170 01b4 00       		.sleb128 0
 4171 01b5 E6010000 		.4byte	.LVL31
 4172 01b9 3C020000 		.4byte	.LFE144
 4173 01bd 0600     		.2byte	0x6
 4174 01bf F2       		.byte	0xf2
 4175 01c0 31110000 		.4byte	.Ldebug_info0+4401
ARM GAS  /tmp/ccRqcMej.s 			page 97


 4176 01c4 00       		.sleb128 0
 4177 01c5 00000000 		.4byte	0
 4178 01c9 00000000 		.4byte	0
 4179              	.LLST8:
 4180 01cd 5A000000 		.4byte	.LVL6
 4181 01d1 D4000000 		.4byte	.LVL14
 4182 01d5 0600     		.2byte	0x6
 4183 01d7 F2       		.byte	0xf2
 4184 01d8 21110000 		.4byte	.Ldebug_info0+4385
 4185 01dc 00       		.sleb128 0
 4186 01dd 98010000 		.4byte	.LVL28
 4187 01e1 9C010000 		.4byte	.LVL29
 4188 01e5 0600     		.2byte	0x6
 4189 01e7 F2       		.byte	0xf2
 4190 01e8 21110000 		.4byte	.Ldebug_info0+4385
 4191 01ec 00       		.sleb128 0
 4192 01ed E6010000 		.4byte	.LVL31
 4193 01f1 3C020000 		.4byte	.LFE144
 4194 01f5 0600     		.2byte	0x6
 4195 01f7 F2       		.byte	0xf2
 4196 01f8 21110000 		.4byte	.Ldebug_info0+4385
 4197 01fc 00       		.sleb128 0
 4198 01fd 00000000 		.4byte	0
 4199 0201 00000000 		.4byte	0
 4200              	.LLST9:
 4201 0205 5A000000 		.4byte	.LVL6
 4202 0209 D4000000 		.4byte	.LVL14
 4203 020d 0600     		.2byte	0x6
 4204 020f F2       		.byte	0xf2
 4205 0210 11110000 		.4byte	.Ldebug_info0+4369
 4206 0214 00       		.sleb128 0
 4207 0215 98010000 		.4byte	.LVL28
 4208 0219 9C010000 		.4byte	.LVL29
 4209 021d 0600     		.2byte	0x6
 4210 021f F2       		.byte	0xf2
 4211 0220 11110000 		.4byte	.Ldebug_info0+4369
 4212 0224 00       		.sleb128 0
 4213 0225 E6010000 		.4byte	.LVL31
 4214 0229 3C020000 		.4byte	.LFE144
 4215 022d 0600     		.2byte	0x6
 4216 022f F2       		.byte	0xf2
 4217 0230 11110000 		.4byte	.Ldebug_info0+4369
 4218 0234 00       		.sleb128 0
 4219 0235 00000000 		.4byte	0
 4220 0239 00000000 		.4byte	0
 4221              	.LLST10:
 4222 023d 5A000000 		.4byte	.LVL6
 4223 0241 D4000000 		.4byte	.LVL14
 4224 0245 0600     		.2byte	0x6
 4225 0247 F2       		.byte	0xf2
 4226 0248 01110000 		.4byte	.Ldebug_info0+4353
 4227 024c 00       		.sleb128 0
 4228 024d 98010000 		.4byte	.LVL28
 4229 0251 9C010000 		.4byte	.LVL29
 4230 0255 0600     		.2byte	0x6
 4231 0257 F2       		.byte	0xf2
 4232 0258 01110000 		.4byte	.Ldebug_info0+4353
ARM GAS  /tmp/ccRqcMej.s 			page 98


 4233 025c 00       		.sleb128 0
 4234 025d E6010000 		.4byte	.LVL31
 4235 0261 3C020000 		.4byte	.LFE144
 4236 0265 0600     		.2byte	0x6
 4237 0267 F2       		.byte	0xf2
 4238 0268 01110000 		.4byte	.Ldebug_info0+4353
 4239 026c 00       		.sleb128 0
 4240 026d 00000000 		.4byte	0
 4241 0271 00000000 		.4byte	0
 4242              	.LLST11:
 4243 0275 5A000000 		.4byte	.LVL6
 4244 0279 D4000000 		.4byte	.LVL14
 4245 027d 0600     		.2byte	0x6
 4246 027f F2       		.byte	0xf2
 4247 0280 F1100000 		.4byte	.Ldebug_info0+4337
 4248 0284 00       		.sleb128 0
 4249 0285 98010000 		.4byte	.LVL28
 4250 0289 9C010000 		.4byte	.LVL29
 4251 028d 0600     		.2byte	0x6
 4252 028f F2       		.byte	0xf2
 4253 0290 F1100000 		.4byte	.Ldebug_info0+4337
 4254 0294 00       		.sleb128 0
 4255 0295 E6010000 		.4byte	.LVL31
 4256 0299 3C020000 		.4byte	.LFE144
 4257 029d 0600     		.2byte	0x6
 4258 029f F2       		.byte	0xf2
 4259 02a0 F1100000 		.4byte	.Ldebug_info0+4337
 4260 02a4 00       		.sleb128 0
 4261 02a5 00000000 		.4byte	0
 4262 02a9 00000000 		.4byte	0
 4263              	.LLST12:
 4264 02ad 5E000000 		.4byte	.LVL7
 4265 02b1 D4000000 		.4byte	.LVL14
 4266 02b5 0100     		.2byte	0x1
 4267 02b7 58       		.byte	0x58
 4268 02b8 98010000 		.4byte	.LVL28
 4269 02bc 9C010000 		.4byte	.LVL29
 4270 02c0 0100     		.2byte	0x1
 4271 02c2 58       		.byte	0x58
 4272 02c3 E6010000 		.4byte	.LVL31
 4273 02c7 3C020000 		.4byte	.LFE144
 4274 02cb 0100     		.2byte	0x1
 4275 02cd 58       		.byte	0x58
 4276 02ce 00000000 		.4byte	0
 4277 02d2 00000000 		.4byte	0
 4278              	.LLST13:
 4279 02d6 62000000 		.4byte	.LVL8
 4280 02da 88000000 		.4byte	.LVL11
 4281 02de 0100     		.2byte	0x1
 4282 02e0 5B       		.byte	0x5b
 4283 02e1 88000000 		.4byte	.LVL11
 4284 02e5 A9000000 		.4byte	.LVL13-1
 4285 02e9 0100     		.2byte	0x1
 4286 02eb 51       		.byte	0x51
 4287 02ec 98010000 		.4byte	.LVL28
 4288 02f0 9C010000 		.4byte	.LVL29
 4289 02f4 0100     		.2byte	0x1
ARM GAS  /tmp/ccRqcMej.s 			page 99


 4290 02f6 5B       		.byte	0x5b
 4291 02f7 00000000 		.4byte	0
 4292 02fb 00000000 		.4byte	0
 4293              	.LLST14:
 4294 02ff 76000000 		.4byte	.LVL9
 4295 0303 D4000000 		.4byte	.LVL14
 4296 0307 0100     		.2byte	0x1
 4297 0309 59       		.byte	0x59
 4298 030a 98010000 		.4byte	.LVL28
 4299 030e 9C010000 		.4byte	.LVL29
 4300 0312 0100     		.2byte	0x1
 4301 0314 59       		.byte	0x59
 4302 0315 E6010000 		.4byte	.LVL31
 4303 0319 3C020000 		.4byte	.LFE144
 4304 031d 0100     		.2byte	0x1
 4305 031f 59       		.byte	0x59
 4306 0320 00000000 		.4byte	0
 4307 0324 00000000 		.4byte	0
 4308              	.LLST15:
 4309 0328 F0000000 		.4byte	.LVL16
 4310 032c 5C010000 		.4byte	.LVL22
 4311 0330 0100     		.2byte	0x1
 4312 0332 59       		.byte	0x59
 4313 0333 9C010000 		.4byte	.LVL29
 4314 0337 E6010000 		.4byte	.LVL31
 4315 033b 0100     		.2byte	0x1
 4316 033d 59       		.byte	0x59
 4317 033e 00000000 		.4byte	0
 4318 0342 00000000 		.4byte	0
 4319              	.LLST16:
 4320 0346 F0000000 		.4byte	.LVL16
 4321 034a 5C010000 		.4byte	.LVL22
 4322 034e 0100     		.2byte	0x1
 4323 0350 5B       		.byte	0x5b
 4324 0351 9C010000 		.4byte	.LVL29
 4325 0355 E6010000 		.4byte	.LVL31
 4326 0359 0100     		.2byte	0x1
 4327 035b 5B       		.byte	0x5b
 4328 035c 00000000 		.4byte	0
 4329 0360 00000000 		.4byte	0
 4330              	.LLST17:
 4331 0364 F0000000 		.4byte	.LVL16
 4332 0368 5C010000 		.4byte	.LVL22
 4333 036c 0200     		.2byte	0x2
 4334 036e 30       		.byte	0x30
 4335 036f 9F       		.byte	0x9f
 4336 0370 9C010000 		.4byte	.LVL29
 4337 0374 E6010000 		.4byte	.LVL31
 4338 0378 0200     		.2byte	0x2
 4339 037a 30       		.byte	0x30
 4340 037b 9F       		.byte	0x9f
 4341 037c 00000000 		.4byte	0
 4342 0380 00000000 		.4byte	0
 4343              	.LLST18:
 4344 0384 F0000000 		.4byte	.LVL16
 4345 0388 16010000 		.4byte	.LVL18
 4346 038c 0100     		.2byte	0x1
ARM GAS  /tmp/ccRqcMej.s 			page 100


 4347 038e 56       		.byte	0x56
 4348 038f 9C010000 		.4byte	.LVL29
 4349 0393 E6010000 		.4byte	.LVL31
 4350 0397 0100     		.2byte	0x1
 4351 0399 56       		.byte	0x56
 4352 039a 00000000 		.4byte	0
 4353 039e 00000000 		.4byte	0
 4354              	.LLST19:
 4355 03a2 F0000000 		.4byte	.LVL16
 4356 03a6 5C010000 		.4byte	.LVL22
 4357 03aa 0100     		.2byte	0x1
 4358 03ac 58       		.byte	0x58
 4359 03ad 9C010000 		.4byte	.LVL29
 4360 03b1 E6010000 		.4byte	.LVL31
 4361 03b5 0100     		.2byte	0x1
 4362 03b7 58       		.byte	0x58
 4363 03b8 00000000 		.4byte	0
 4364 03bc 00000000 		.4byte	0
 4365              	.LLST20:
 4366 03c0 32010000 		.4byte	.LVL20
 4367 03c4 38010000 		.4byte	.LVL21
 4368 03c8 0100     		.2byte	0x1
 4369 03ca 50       		.byte	0x50
 4370 03cb 00000000 		.4byte	0
 4371 03cf 00000000 		.4byte	0
 4372              	.LLST21:
 4373 03d3 F0000000 		.4byte	.LVL16
 4374 03d7 1C010000 		.4byte	.LVL19
 4375 03db 0200     		.2byte	0x2
 4376 03dd 30       		.byte	0x30
 4377 03de 9F       		.byte	0x9f
 4378 03df 1C010000 		.4byte	.LVL19
 4379 03e3 5C010000 		.4byte	.LVL22
 4380 03e7 0100     		.2byte	0x1
 4381 03e9 52       		.byte	0x52
 4382 03ea 9C010000 		.4byte	.LVL29
 4383 03ee E6010000 		.4byte	.LVL31
 4384 03f2 0200     		.2byte	0x2
 4385 03f4 30       		.byte	0x30
 4386 03f5 9F       		.byte	0x9f
 4387 03f6 00000000 		.4byte	0
 4388 03fa 00000000 		.4byte	0
 4389              		.section	.debug_aranges,"",%progbits
 4390 0000 2C000000 		.4byte	0x2c
 4391 0004 0200     		.2byte	0x2
 4392 0006 00000000 		.4byte	.Ldebug_info0
 4393 000a 04       		.byte	0x4
 4394 000b 00       		.byte	0
 4395 000c 0000     		.2byte	0
 4396 000e 0000     		.2byte	0
 4397 0010 00000000 		.4byte	.LFB144
 4398 0014 3C020000 		.4byte	.LFE144-.LFB144
 4399 0018 00000000 		.4byte	.LFB145
 4400 001c 10000000 		.4byte	.LFE145-.LFB145
 4401 0020 00000000 		.4byte	.LFB146
 4402 0024 2C000000 		.4byte	.LFE146-.LFB146
 4403 0028 00000000 		.4byte	0
ARM GAS  /tmp/ccRqcMej.s 			page 101


 4404 002c 00000000 		.4byte	0
 4405              		.section	.debug_ranges,"",%progbits
 4406              	.Ldebug_ranges0:
 4407 0000 36000000 		.4byte	.LBB47
 4408 0004 78010000 		.4byte	.LBE47
 4409 0008 98010000 		.4byte	.LBB86
 4410 000c 3C020000 		.4byte	.LBE86
 4411 0010 00000000 		.4byte	0
 4412 0014 00000000 		.4byte	0
 4413 0018 4C000000 		.4byte	.LBB52
 4414 001c 4E000000 		.4byte	.LBE52
 4415 0020 5A000000 		.4byte	.LBB57
 4416 0024 D4000000 		.4byte	.LBE57
 4417 0028 98010000 		.4byte	.LBB75
 4418 002c 9C010000 		.4byte	.LBE75
 4419 0030 E6010000 		.4byte	.LBB77
 4420 0034 3C020000 		.4byte	.LBE77
 4421 0038 00000000 		.4byte	0
 4422 003c 00000000 		.4byte	0
 4423 0040 EA000000 		.4byte	.LBB66
 4424 0044 EE000000 		.4byte	.LBE66
 4425 0048 F0000000 		.4byte	.LBB70
 4426 004c 5C010000 		.4byte	.LBE70
 4427 0050 9C010000 		.4byte	.LBB76
 4428 0054 E6010000 		.4byte	.LBE76
 4429 0058 00000000 		.4byte	0
 4430 005c 00000000 		.4byte	0
 4431 0060 00000000 		.4byte	.LFB144
 4432 0064 3C020000 		.4byte	.LFE144
 4433 0068 00000000 		.4byte	.LFB145
 4434 006c 10000000 		.4byte	.LFE145
 4435 0070 00000000 		.4byte	.LFB146
 4436 0074 2C000000 		.4byte	.LFE146
 4437 0078 00000000 		.4byte	0
 4438 007c 00000000 		.4byte	0
 4439              		.section	.debug_line,"",%progbits
 4440              	.Ldebug_line0:
 4441 0000 0F040000 		.section	.debug_str,"MS",%progbits,1
 4441      0200A102 
 4441      00000201 
 4441      FB0E0D00 
 4441      01010101 
 4442              	.LASF132:
 4443 0000 5F666C6F 		.ascii	"_flock_t\000"
 4443      636B5F74 
 4443      00
 4444              	.LASF37:
 4445 0009 43504143 		.ascii	"CPACR\000"
 4445      5200
 4446              	.LASF52:
 4447 000f 44434353 		.ascii	"DCCSW\000"
 4447      5700
 4448              	.LASF149:
 4449 0015 5F6F6E5F 		.ascii	"_on_exit_args\000"
 4449      65786974 
 4449      5F617267 
 4449      7300
ARM GAS  /tmp/ccRqcMej.s 			page 102


 4450              	.LASF217:
 4451 0023 5F776374 		.ascii	"_wctomb_state\000"
 4451      6F6D625F 
 4451      73746174 
 4451      6500
 4452              	.LASF71:
 4453 0031 45454643 		.ascii	"EEFC_VERSION\000"
 4453      5F564552 
 4453      53494F4E 
 4453      00
 4454              	.LASF106:
 4455 003e 504D435F 		.ascii	"PMC_SLPWK_ER0\000"
 4455      534C5057 
 4455      4B5F4552 
 4455      3000
 4456              	.LASF111:
 4457 004c 504D435F 		.ascii	"PMC_SLPWK_ER1\000"
 4457      534C5057 
 4457      4B5F4552 
 4457      3100
 4458              	.LASF214:
 4459 005a 5F723438 		.ascii	"_r48\000"
 4459      00
 4460              	.LASF219:
 4461 005f 5F736967 		.ascii	"_signal_buf\000"
 4461      6E616C5F 
 4461      62756600 
 4462              	.LASF69:
 4463 006b 45454643 		.ascii	"EEFC_FRR\000"
 4463      5F465252 
 4463      00
 4464              	.LASF0:
 4465 0074 756E7369 		.ascii	"unsigned int\000"
 4465      676E6564 
 4465      20696E74 
 4465      00
 4466              	.LASF56:
 4467 0081 4954434D 		.ascii	"ITCMCR\000"
 4467      435200
 4468              	.LASF14:
 4469 0088 75696E74 		.ascii	"uint32_t\000"
 4469      33325F74 
 4469      00
 4470              	.LASF58:
 4471 0091 41484250 		.ascii	"AHBPCR\000"
 4471      435200
 4472              	.LASF45:
 4473 0098 49434941 		.ascii	"ICIALLU\000"
 4473      4C4C5500 
 4474              	.LASF274:
 4475 00a0 706D635F 		.ascii	"pmc_is_wakeup_clocks_restored\000"
 4475      69735F77 
 4475      616B6575 
 4475      705F636C 
 4475      6F636B73 
 4476              	.LASF163:
 4477 00be 5F6C6266 		.ascii	"_lbfsize\000"
ARM GAS  /tmp/ccRqcMej.s 			page 103


 4477      73697A65 
 4477      00
 4478              	.LASF161:
 4479 00c7 5F666C61 		.ascii	"_flags\000"
 4479      677300
 4480              	.LASF96:
 4481 00ce 504D435F 		.ascii	"PMC_FOCR\000"
 4481      464F4352 
 4481      00
 4482              	.LASF35:
 4483 00d7 43435349 		.ascii	"CCSIDR\000"
 4483      445200
 4484              	.LASF6:
 4485 00de 5F5F696E 		.ascii	"__int32_t\000"
 4485      7433325F 
 4485      7400
 4486              	.LASF57:
 4487 00e8 4454434D 		.ascii	"DTCMCR\000"
 4487      435200
 4488              	.LASF178:
 4489 00ef 5F657272 		.ascii	"_errno\000"
 4489      6E6F00
 4490              	.LASF67:
 4491 00f6 45454643 		.ascii	"EEFC_FCR\000"
 4491      5F464352 
 4491      00
 4492              	.LASF3:
 4493 00ff 73686F72 		.ascii	"short int\000"
 4493      7420696E 
 4493      7400
 4494              	.LASF261:
 4495 0109 705F666D 		.ascii	"p_fmr_setting\000"
 4495      725F7365 
 4495      7474696E 
 4495      6700
 4496              	.LASF175:
 4497 0117 5F6D6273 		.ascii	"_mbstate\000"
 4497      74617465 
 4497      00
 4498              	.LASF266:
 4499 0120 5F5F4453 		.ascii	"__DSB\000"
 4499      4200
 4500              	.LASF165:
 4501 0126 5F726561 		.ascii	"_read\000"
 4501      6400
 4502              	.LASF116:
 4503 012c 53555043 		.ascii	"SUPC_CR\000"
 4503      5F435200 
 4504              	.LASF221:
 4505 0134 5F6D6272 		.ascii	"_mbrlen_state\000"
 4505      6C656E5F 
 4505      73746174 
 4505      6500
 4506              	.LASF180:
 4507 0142 5F737464 		.ascii	"_stdout\000"
 4507      6F757400 
 4508              	.LASF125:
ARM GAS  /tmp/ccRqcMej.s 			page 104


 4509 014a 5F66706F 		.ascii	"_fpos_t\000"
 4509      735F7400 
 4510              	.LASF83:
 4511 0152 434B4752 		.ascii	"CKGR_PLLAR\000"
 4511      5F504C4C 
 4511      415200
 4512              	.LASF255:
 4513 015d 706D635F 		.ascii	"pmc_restore_clock_setting\000"
 4513      72657374 
 4513      6F72655F 
 4513      636C6F63 
 4513      6B5F7365 
 4514              	.LASF164:
 4515 0177 5F636F6F 		.ascii	"_cookie\000"
 4515      6B696500 
 4516              	.LASF24:
 4517 017f 44465352 		.ascii	"DFSR\000"
 4517      00
 4518              	.LASF233:
 4519 0184 675F696E 		.ascii	"g_interrupt_enabled\000"
 4519      74657272 
 4519      7570745F 
 4519      656E6162 
 4519      6C656400 
 4520              	.LASF138:
 4521 0198 5F426967 		.ascii	"_Bigint\000"
 4521      696E7400 
 4522              	.LASF268:
 4523 01a0 706D635F 		.ascii	"pmc_disable_pllack\000"
 4523      64697361 
 4523      626C655F 
 4523      706C6C61 
 4523      636B00
 4524              	.LASF146:
 4525 01b3 5F5F746D 		.ascii	"__tm_wday\000"
 4525      5F776461 
 4525      7900
 4526              	.LASF188:
 4527 01bd 5F726573 		.ascii	"_result\000"
 4527      756C7400 
 4528              	.LASF28:
 4529 01c5 49445F50 		.ascii	"ID_PFR\000"
 4529      465200
 4530              	.LASF142:
 4531 01cc 5F5F746D 		.ascii	"__tm_hour\000"
 4531      5F686F75 
 4531      7200
 4532              	.LASF80:
 4533 01d6 434B4752 		.ascii	"CKGR_UCKR\000"
 4533      5F55434B 
 4533      5200
 4534              	.LASF156:
 4535 01e0 5F666E73 		.ascii	"_fns\000"
 4535      00
 4536              	.LASF129:
 4537 01e5 5F5F636F 		.ascii	"__count\000"
 4537      756E7400 
ARM GAS  /tmp/ccRqcMej.s 			page 105


 4538              	.LASF237:
 4539 01ed 666C6F61 		.ascii	"float\000"
 4539      7400
 4540              	.LASF68:
 4541 01f3 45454643 		.ascii	"EEFC_FSR\000"
 4541      5F465352 
 4541      00
 4542              	.LASF230:
 4543 01fc 5F696D70 		.ascii	"_impure_ptr\000"
 4543      7572655F 
 4543      70747200 
 4544              	.LASF227:
 4545 0208 5F6E6578 		.ascii	"_nextf\000"
 4545      746600
 4546              	.LASF256:
 4547 020f 706D635F 		.ascii	"pmc_save_clock_settings\000"
 4547      73617665 
 4547      5F636C6F 
 4547      636B5F73 
 4547      65747469 
 4548              	.LASF115:
 4549 0227 504D435F 		.ascii	"PMC_SLPWK_AIPR\000"
 4549      534C5057 
 4549      4B5F4149 
 4549      505200
 4550              	.LASF223:
 4551 0236 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 4551      72746F77 
 4551      63735F73 
 4551      74617465 
 4551      00
 4552              	.LASF11:
 4553 0247 6C6F6E67 		.ascii	"long long unsigned int\000"
 4553      206C6F6E 
 4553      6720756E 
 4553      7369676E 
 4553      65642069 
 4554              	.LASF30:
 4555 025e 49445F41 		.ascii	"ID_AFR\000"
 4555      465200
 4556              	.LASF210:
 4557 0265 5F617363 		.ascii	"_asctime_buf\000"
 4557      74696D65 
 4557      5F627566 
 4557      00
 4558              	.LASF242:
 4559 0272 706D635F 		.ascii	"pmc_wait_wakeup_clocks_restore\000"
 4559      77616974 
 4559      5F77616B 
 4559      6575705F 
 4559      636C6F63 
 4560              	.LASF160:
 4561 0291 5F5F7346 		.ascii	"__sFILE\000"
 4561      494C4500 
 4562              	.LASF137:
 4563 0299 5F776473 		.ascii	"_wds\000"
 4563      00
ARM GAS  /tmp/ccRqcMej.s 			page 106


 4564              	.LASF47:
 4565 029e 4943494D 		.ascii	"ICIMVAU\000"
 4565      56415500 
 4566              	.LASF204:
 4567 02a6 5F72616E 		.ascii	"_rand48\000"
 4567      64343800 
 4568              	.LASF82:
 4569 02ae 434B4752 		.ascii	"CKGR_MCFR\000"
 4569      5F4D4346 
 4569      5200
 4570              	.LASF93:
 4571 02b8 504D435F 		.ascii	"PMC_IMR\000"
 4571      494D5200 
 4572              	.LASF200:
 4573 02c0 5F5F4649 		.ascii	"__FILE\000"
 4573      4C4500
 4574              	.LASF60:
 4575 02c7 41484253 		.ascii	"AHBSCR\000"
 4575      435200
 4576              	.LASF172:
 4577 02ce 5F6F6666 		.ascii	"_offset\000"
 4577      73657400 
 4578              	.LASF169:
 4579 02d6 5F756275 		.ascii	"_ubuf\000"
 4579      6600
 4580              	.LASF239:
 4581 02dc 706D635F 		.ascii	"pmc_callback_wakeup_clocks_restored_t\000"
 4581      63616C6C 
 4581      6261636B 
 4581      5F77616B 
 4581      6575705F 
 4582              	.LASF183:
 4583 0302 5F656D65 		.ascii	"_emergency\000"
 4583      7267656E 
 4583      637900
 4584              	.LASF241:
 4585 030d 63616C6C 		.ascii	"callback_clocks_restored\000"
 4585      6261636B 
 4585      5F636C6F 
 4585      636B735F 
 4585      72657374 
 4586              	.LASF122:
 4587 0326 53757063 		.ascii	"Supc\000"
 4587      00
 4588              	.LASF117:
 4589 032b 53555043 		.ascii	"SUPC_SMMR\000"
 4589      5F534D4D 
 4589      5200
 4590              	.LASF252:
 4591 0335 6D636B5F 		.ascii	"mck_setting\000"
 4591      73657474 
 4591      696E6700 
 4592              	.LASF236:
 4593 0341 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 4593      6972715F 
 4593      70726576 
 4593      5F696E74 
ARM GAS  /tmp/ccRqcMej.s 			page 107


 4593      65727275 
 4594              	.LASF254:
 4595 035e 706C6C5F 		.ascii	"pll_sr\000"
 4595      737200
 4596              	.LASF263:
 4597 0365 5F5F6469 		.ascii	"__disable_irq\000"
 4597      7361626C 
 4597      655F6972 
 4597      7100
 4598              	.LASF103:
 4599 0373 504D435F 		.ascii	"PMC_PCSR1\000"
 4599      50435352 
 4599      3100
 4600              	.LASF140:
 4601 037d 5F5F746D 		.ascii	"__tm_sec\000"
 4601      5F736563 
 4601      00
 4602              	.LASF16:
 4603 0386 43505549 		.ascii	"CPUID\000"
 4603      4400
 4604              	.LASF94:
 4605 038c 504D435F 		.ascii	"PMC_FSMR\000"
 4605      46534D52 
 4605      00
 4606              	.LASF147:
 4607 0395 5F5F746D 		.ascii	"__tm_yday\000"
 4607      5F796461 
 4607      7900
 4608              	.LASF182:
 4609 039f 5F696E63 		.ascii	"_inc\000"
 4609      00
 4610              	.LASF234:
 4611 03a4 5F426F6F 		.ascii	"_Bool\000"
 4611      6C00
 4612              	.LASF20:
 4613 03aa 53485052 		.ascii	"SHPR\000"
 4613      00
 4614              	.LASF26:
 4615 03af 42464152 		.ascii	"BFAR\000"
 4615      00
 4616              	.LASF250:
 4617 03b4 706C6C30 		.ascii	"pll0_setting\000"
 4617      5F736574 
 4617      74696E67 
 4617      00
 4618              	.LASF99:
 4619 03c1 504D435F 		.ascii	"PMC_WPSR\000"
 4619      57505352 
 4619      00
 4620              	.LASF134:
 4621 03ca 5F6E6578 		.ascii	"_next\000"
 4621      7400
 4622              	.LASF240:
 4623 03d0 625F6973 		.ascii	"b_is_sleep_clock_used\000"
 4623      5F736C65 
 4623      65705F63 
 4623      6C6F636B 
ARM GAS  /tmp/ccRqcMej.s 			page 108


 4623      5F757365 
 4624              	.LASF27:
 4625 03e6 41465352 		.ascii	"AFSR\000"
 4625      00
 4626              	.LASF75:
 4627 03eb 504D435F 		.ascii	"PMC_SCDR\000"
 4627      53434452 
 4627      00
 4628              	.LASF77:
 4629 03f4 504D435F 		.ascii	"PMC_PCER0\000"
 4629      50434552 
 4629      3000
 4630              	.LASF101:
 4631 03fe 504D435F 		.ascii	"PMC_PCER1\000"
 4631      50434552 
 4631      3100
 4632              	.LASF88:
 4633 0408 504D435F 		.ascii	"PMC_PCK\000"
 4633      50434B00 
 4634              	.LASF130:
 4635 0410 5F5F7661 		.ascii	"__value\000"
 4635      6C756500 
 4636              	.LASF190:
 4637 0418 5F703573 		.ascii	"_p5s\000"
 4637      00
 4638              	.LASF104:
 4639 041d 504D435F 		.ascii	"PMC_PCR\000"
 4639      50435200 
 4640              	.LASF23:
 4641 0425 48465352 		.ascii	"HFSR\000"
 4641      00
 4642              	.LASF49:
 4643 042a 44434953 		.ascii	"DCISW\000"
 4643      5700
 4644              	.LASF225:
 4645 0430 5F776373 		.ascii	"_wcsrtombs_state\000"
 4645      72746F6D 
 4645      62735F73 
 4645      74617465 
 4645      00
 4646              	.LASF215:
 4647 0441 5F6D626C 		.ascii	"_mblen_state\000"
 4647      656E5F73 
 4647      74617465 
 4647      00
 4648              	.LASF86:
 4649 044e 504D435F 		.ascii	"PMC_USB\000"
 4649      55534200 
 4650              	.LASF199:
 4651 0456 63686172 		.ascii	"char\000"
 4651      00
 4652              	.LASF143:
 4653 045b 5F5F746D 		.ascii	"__tm_mday\000"
 4653      5F6D6461 
 4653      7900
 4654              	.LASF196:
 4655 0465 5F736967 		.ascii	"_sig_func\000"
ARM GAS  /tmp/ccRqcMej.s 			page 109


 4655      5F66756E 
 4655      6300
 4656              	.LASF222:
 4657 046f 5F6D6272 		.ascii	"_mbrtowc_state\000"
 4657      746F7763 
 4657      5F737461 
 4657      746500
 4658              	.LASF195:
 4659 047e 5F617465 		.ascii	"_atexit0\000"
 4659      78697430 
 4659      00
 4660              	.LASF19:
 4661 0487 41495243 		.ascii	"AIRCR\000"
 4661      5200
 4662              	.LASF243:
 4663 048d 706D635F 		.ascii	"pmc_sleep\000"
 4663      736C6565 
 4663      7000
 4664              	.LASF66:
 4665 0497 45454643 		.ascii	"EEFC_FMR\000"
 4665      5F464D52 
 4665      00
 4666              	.LASF48:
 4667 04a0 4443494D 		.ascii	"DCIMVAU\000"
 4667      56415500 
 4668              	.LASF29:
 4669 04a8 49445F44 		.ascii	"ID_DFR\000"
 4669      465200
 4670              	.LASF189:
 4671 04af 5F726573 		.ascii	"_result_k\000"
 4671      756C745F 
 4671      6B00
 4672              	.LASF127:
 4673 04b9 5F5F7763 		.ascii	"__wch\000"
 4673      6800
 4674              	.LASF203:
 4675 04bf 5F696F62 		.ascii	"_iobs\000"
 4675      7300
 4676              	.LASF12:
 4677 04c5 75696E74 		.ascii	"uint8_t\000"
 4677      385F7400 
 4678              	.LASF121:
 4679 04cd 53555043 		.ascii	"SUPC_SR\000"
 4679      5F535200 
 4680              	.LASF73:
 4681 04d5 45454643 		.ascii	"EEFC_WPMR\000"
 4681      5F57504D 
 4681      5200
 4682              	.LASF168:
 4683 04df 5F636C6F 		.ascii	"_close\000"
 4683      736500
 4684              	.LASF186:
 4685 04e6 5F5F7364 		.ascii	"__sdidinit\000"
 4685      6964696E 
 4685      697400
 4686              	.LASF249:
 4687 04f1 6F73635F 		.ascii	"osc_setting\000"
ARM GAS  /tmp/ccRqcMej.s 			page 110


 4687      73657474 
 4687      696E6700 
 4688              	.LASF258:
 4689 04fd 705F706C 		.ascii	"p_pll0_setting\000"
 4689      6C305F73 
 4689      65747469 
 4689      6E6700
 4690              	.LASF59:
 4691 050c 43414352 		.ascii	"CACR\000"
 4691      00
 4692              	.LASF31:
 4693 0511 49445F4D 		.ascii	"ID_MFR\000"
 4693      465200
 4694              	.LASF179:
 4695 0518 5F737464 		.ascii	"_stdin\000"
 4695      696E00
 4696              	.LASF212:
 4697 051f 5F67616D 		.ascii	"_gamma_signgam\000"
 4697      6D615F73 
 4697      69676E67 
 4697      616D00
 4698              	.LASF54:
 4699 052e 44434349 		.ascii	"DCCISW\000"
 4699      535700
 4700              	.LASF36:
 4701 0535 43535345 		.ascii	"CSSELR\000"
 4701      4C5200
 4702              	.LASF10:
 4703 053c 6C6F6E67 		.ascii	"long long int\000"
 4703      206C6F6E 
 4703      6720696E 
 4703      7400
 4704              	.LASF53:
 4705 054a 44434349 		.ascii	"DCCIMVAC\000"
 4705      4D564143 
 4705      00
 4706              	.LASF158:
 4707 0553 5F626173 		.ascii	"_base\000"
 4707      6500
 4708              	.LASF191:
 4709 0559 5F667265 		.ascii	"_freelist\000"
 4709      656C6973 
 4709      7400
 4710              	.LASF272:
 4711 0563 2E2E2F61 		.ascii	"../asf/sam/drivers/pmc/sleep.c\000"
 4711      73662F73 
 4711      616D2F64 
 4711      72697665 
 4711      72732F70 
 4712              	.LASF206:
 4713 0582 5F6D756C 		.ascii	"_mult\000"
 4713      7400
 4714              	.LASF51:
 4715 0588 4443434D 		.ascii	"DCCMVAC\000"
 4715      56414300 
 4716              	.LASF207:
 4717 0590 5F616464 		.ascii	"_add\000"
ARM GAS  /tmp/ccRqcMej.s 			page 111


 4717      00
 4718              	.LASF22:
 4719 0595 43465352 		.ascii	"CFSR\000"
 4719      00
 4720              	.LASF224:
 4721 059a 5F776372 		.ascii	"_wcrtomb_state\000"
 4721      746F6D62 
 4721      5F737461 
 4721      746500
 4722              	.LASF162:
 4723 05a9 5F66696C 		.ascii	"_file\000"
 4723      6500
 4724              	.LASF50:
 4725 05af 4443434D 		.ascii	"DCCMVAU\000"
 4725      56415500 
 4726              	.LASF95:
 4727 05b7 504D435F 		.ascii	"PMC_FSPR\000"
 4727      46535052 
 4727      00
 4728              	.LASF260:
 4729 05c0 705F6D63 		.ascii	"p_mck_setting\000"
 4729      6B5F7365 
 4729      7474696E 
 4729      6700
 4730              	.LASF187:
 4731 05ce 5F5F636C 		.ascii	"__cleanup\000"
 4731      65616E75 
 4731      7000
 4732              	.LASF131:
 4733 05d8 5F6D6273 		.ascii	"_mbstate_t\000"
 4733      74617465 
 4733      5F7400
 4734              	.LASF70:
 4735 05e3 52657365 		.ascii	"Reserved1\000"
 4735      72766564 
 4735      3100
 4736              	.LASF72:
 4737 05ed 52657365 		.ascii	"Reserved2\000"
 4737      72766564 
 4737      3200
 4738              	.LASF85:
 4739 05f7 52657365 		.ascii	"Reserved3\000"
 4739      72766564 
 4739      3300
 4740              	.LASF87:
 4741 0601 52657365 		.ascii	"Reserved4\000"
 4741      72766564 
 4741      3400
 4742              	.LASF89:
 4743 060b 52657365 		.ascii	"Reserved5\000"
 4743      72766564 
 4743      3500
 4744              	.LASF97:
 4745 0615 52657365 		.ascii	"Reserved6\000"
 4745      72766564 
 4745      3600
 4746              	.LASF148:
ARM GAS  /tmp/ccRqcMej.s 			page 112


 4747 061f 5F5F746D 		.ascii	"__tm_isdst\000"
 4747      5F697364 
 4747      737400
 4748              	.LASF110:
 4749 062a 52657365 		.ascii	"Reserved8\000"
 4749      72766564 
 4749      3800
 4750              	.LASF155:
 4751 0634 5F696E64 		.ascii	"_ind\000"
 4751      00
 4752              	.LASF246:
 4753 0639 706C6C72 		.ascii	"pllr0\000"
 4753      3000
 4754              	.LASF247:
 4755 063f 706C6C72 		.ascii	"pllr1\000"
 4755      3100
 4756              	.LASF269:
 4757 0645 706D635F 		.ascii	"pmc_set_flash_in_wait_mode\000"
 4757      7365745F 
 4757      666C6173 
 4757      685F696E 
 4757      5F776169 
 4758              	.LASF108:
 4759 0660 504D435F 		.ascii	"PMC_SLPWK_SR0\000"
 4759      534C5057 
 4759      4B5F5352 
 4759      3000
 4760              	.LASF113:
 4761 066e 504D435F 		.ascii	"PMC_SLPWK_SR1\000"
 4761      534C5057 
 4761      4B5F5352 
 4761      3100
 4762              	.LASF144:
 4763 067c 5F5F746D 		.ascii	"__tm_mon\000"
 4763      5F6D6F6E 
 4763      00
 4764              	.LASF4:
 4765 0685 73686F72 		.ascii	"short unsigned int\000"
 4765      7420756E 
 4765      7369676E 
 4765      65642069 
 4765      6E7400
 4766              	.LASF109:
 4767 0698 504D435F 		.ascii	"PMC_SLPWK_ASR0\000"
 4767      534C5057 
 4767      4B5F4153 
 4767      523000
 4768              	.LASF34:
 4769 06a7 434C4944 		.ascii	"CLIDR\000"
 4769      5200
 4770              	.LASF65:
 4771 06ad 53797374 		.ascii	"SystemCoreClock\000"
 4771      656D436F 
 4771      7265436C 
 4771      6F636B00 
 4772              	.LASF251:
 4773 06bd 706C6C31 		.ascii	"pll1_setting\000"
ARM GAS  /tmp/ccRqcMej.s 			page 113


 4773      5F736574 
 4773      74696E67 
 4773      00
 4774              	.LASF166:
 4775 06ca 5F777269 		.ascii	"_write\000"
 4775      746500
 4776              	.LASF39:
 4777 06d1 53544952 		.ascii	"STIR\000"
 4777      00
 4778              	.LASF8:
 4779 06d6 5F5F7569 		.ascii	"__uint32_t\000"
 4779      6E743332 
 4779      5F7400
 4780              	.LASF213:
 4781 06e1 5F72616E 		.ascii	"_rand_next\000"
 4781      645F6E65 
 4781      787400
 4782              	.LASF25:
 4783 06ec 4D4D4641 		.ascii	"MMFAR\000"
 4783      5200
 4784              	.LASF154:
 4785 06f2 5F617465 		.ascii	"_atexit\000"
 4785      78697400 
 4786              	.LASF107:
 4787 06fa 504D435F 		.ascii	"PMC_SLPWK_DR0\000"
 4787      534C5057 
 4787      4B5F4452 
 4787      3000
 4788              	.LASF112:
 4789 0708 504D435F 		.ascii	"PMC_SLPWK_DR1\000"
 4789      534C5057 
 4789      4B5F4452 
 4789      3100
 4790              	.LASF33:
 4791 0716 52455345 		.ascii	"RESERVED0\000"
 4791      52564544 
 4791      3000
 4792              	.LASF21:
 4793 0720 53484353 		.ascii	"SHCSR\000"
 4793      5200
 4794              	.LASF38:
 4795 0726 52455345 		.ascii	"RESERVED3\000"
 4795      52564544 
 4795      3300
 4796              	.LASF40:
 4797 0730 52455345 		.ascii	"RESERVED4\000"
 4797      52564544 
 4797      3400
 4798              	.LASF44:
 4799 073a 52455345 		.ascii	"RESERVED5\000"
 4799      52564544 
 4799      3500
 4800              	.LASF46:
 4801 0744 52455345 		.ascii	"RESERVED6\000"
 4801      52564544 
 4801      3600
 4802              	.LASF62:
ARM GAS  /tmp/ccRqcMej.s 			page 114


 4803 074e 41424653 		.ascii	"ABFSR\000"
 4803      5200
 4804              	.LASF61:
 4805 0754 52455345 		.ascii	"RESERVED8\000"
 4805      52564544 
 4805      3800
 4806              	.LASF100:
 4807 075e 52657365 		.ascii	"Reserved7\000"
 4807      72766564 
 4807      3700
 4808              	.LASF91:
 4809 0768 504D435F 		.ascii	"PMC_IDR\000"
 4809      49445200 
 4810              	.LASF7:
 4811 0770 6C6F6E67 		.ascii	"long int\000"
 4811      20696E74 
 4811      00
 4812              	.LASF262:
 4813 0779 64697361 		.ascii	"disable_xtal\000"
 4813      626C655F 
 4813      7874616C 
 4813      00
 4814              	.LASF64:
 4815 0786 49544D5F 		.ascii	"ITM_RxBuffer\000"
 4815      52784275 
 4815      66666572 
 4815      00
 4816              	.LASF81:
 4817 0793 434B4752 		.ascii	"CKGR_MOR\000"
 4817      5F4D4F52 
 4817      00
 4818              	.LASF264:
 4819 079c 5F5F656E 		.ascii	"__enable_irq\000"
 4819      61626C65 
 4819      5F697271 
 4819      00
 4820              	.LASF198:
 4821 07a9 5F5F7366 		.ascii	"__sf\000"
 4821      00
 4822              	.LASF136:
 4823 07ae 5F736967 		.ascii	"_sign\000"
 4823      6E00
 4824              	.LASF257:
 4825 07b4 705F6F73 		.ascii	"p_osc_setting\000"
 4825      635F7365 
 4825      7474696E 
 4825      6700
 4826              	.LASF185:
 4827 07c2 5F637572 		.ascii	"_current_locale\000"
 4827      72656E74 
 4827      5F6C6F63 
 4827      616C6500 
 4828              	.LASF173:
 4829 07d2 5F646174 		.ascii	"_data\000"
 4829      6100
 4830              	.LASF128:
 4831 07d8 5F5F7763 		.ascii	"__wchb\000"
ARM GAS  /tmp/ccRqcMej.s 			page 115


 4831      686200
 4832              	.LASF231:
 4833 07df 5F676C6F 		.ascii	"_global_impure_ptr\000"
 4833      62616C5F 
 4833      696D7075 
 4833      72655F70 
 4833      747200
 4834              	.LASF145:
 4835 07f2 5F5F746D 		.ascii	"__tm_year\000"
 4835      5F796561 
 4835      7200
 4836              	.LASF245:
 4837 07fc 736C6565 		.ascii	"sleep_mode\000"
 4837      705F6D6F 
 4837      646500
 4838              	.LASF265:
 4839 0807 5F5F444D 		.ascii	"__DMB\000"
 4839      4200
 4840              	.LASF114:
 4841 080d 504D435F 		.ascii	"PMC_SLPWK_ASR1\000"
 4841      534C5057 
 4841      4B5F4153 
 4841      523100
 4842              	.LASF211:
 4843 081c 5F6C6F63 		.ascii	"_localtime_buf\000"
 4843      616C7469 
 4843      6D655F62 
 4843      756600
 4844              	.LASF90:
 4845 082b 504D435F 		.ascii	"PMC_IER\000"
 4845      49455200 
 4846              	.LASF229:
 4847 0833 5F756E75 		.ascii	"_unused\000"
 4847      73656400 
 4848              	.LASF5:
 4849 083b 5F5F7569 		.ascii	"__uint8_t\000"
 4849      6E74385F 
 4849      7400
 4850              	.LASF194:
 4851 0845 5F6E6577 		.ascii	"_new\000"
 4851      00
 4852              	.LASF63:
 4853 084a 5343425F 		.ascii	"SCB_Type\000"
 4853      54797065 
 4853      00
 4854              	.LASF192:
 4855 0853 5F637674 		.ascii	"_cvtlen\000"
 4855      6C656E00 
 4856              	.LASF135:
 4857 085b 5F6D6178 		.ascii	"_maxwds\000"
 4857      77647300 
 4858              	.LASF218:
 4859 0863 5F6C3634 		.ascii	"_l64a_buf\000"
 4859      615F6275 
 4859      6600
 4860              	.LASF184:
 4861 086d 5F637572 		.ascii	"_current_category\000"
ARM GAS  /tmp/ccRqcMej.s 			page 116


 4861      72656E74 
 4861      5F636174 
 4861      65676F72 
 4861      7900
 4862              	.LASF18:
 4863 087f 56544F52 		.ascii	"VTOR\000"
 4863      00
 4864              	.LASF259:
 4865 0884 705F706C 		.ascii	"p_pll1_setting\000"
 4865      6C315F73 
 4865      65747469 
 4865      6E6700
 4866              	.LASF133:
 4867 0893 5F5F554C 		.ascii	"__ULong\000"
 4867      6F6E6700 
 4868              	.LASF171:
 4869 089b 5F626C6B 		.ascii	"_blksize\000"
 4869      73697A65 
 4869      00
 4870              	.LASF139:
 4871 08a4 5F5F746D 		.ascii	"__tm\000"
 4871      00
 4872              	.LASF174:
 4873 08a9 5F6C6F63 		.ascii	"_lock\000"
 4873      6B00
 4874              	.LASF15:
 4875 08af 73697A65 		.ascii	"sizetype\000"
 4875      74797065 
 4875      00
 4876              	.LASF17:
 4877 08b8 49435352 		.ascii	"ICSR\000"
 4877      00
 4878              	.LASF9:
 4879 08bd 6C6F6E67 		.ascii	"long unsigned int\000"
 4879      20756E73 
 4879      69676E65 
 4879      6420696E 
 4879      7400
 4880              	.LASF119:
 4881 08cf 53555043 		.ascii	"SUPC_WUMR\000"
 4881      5F57554D 
 4881      5200
 4882              	.LASF235:
 4883 08d9 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 4883      6972715F 
 4883      63726974 
 4883      6963616C 
 4883      5F736563 
 4884              	.LASF118:
 4885 08fa 53555043 		.ascii	"SUPC_MR\000"
 4885      5F4D5200 
 4886              	.LASF126:
 4887 0902 77696E74 		.ascii	"wint_t\000"
 4887      5F7400
 4888              	.LASF13:
 4889 0909 696E7433 		.ascii	"int32_t\000"
 4889      325F7400 
ARM GAS  /tmp/ccRqcMej.s 			page 117


 4890              	.LASF141:
 4891 0911 5F5F746D 		.ascii	"__tm_min\000"
 4891      5F6D696E 
 4891      00
 4892              	.LASF151:
 4893 091a 5F64736F 		.ascii	"_dso_handle\000"
 4893      5F68616E 
 4893      646C6500 
 4894              	.LASF267:
 4895 0926 5F5F5746 		.ascii	"__WFI\000"
 4895      4900
 4896              	.LASF193:
 4897 092c 5F637674 		.ascii	"_cvtbuf\000"
 4897      62756600 
 4898              	.LASF2:
 4899 0934 756E7369 		.ascii	"unsigned char\000"
 4899      676E6564 
 4899      20636861 
 4899      7200
 4900              	.LASF232:
 4901 0942 7375626F 		.ascii	"suboptarg\000"
 4901      70746172 
 4901      6700
 4902              	.LASF123:
 4903 094c 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 4903      4B5F5245 
 4903      43555253 
 4903      4956455F 
 4903      5400
 4904              	.LASF248:
 4905 095e 6D636B72 		.ascii	"mckr\000"
 4905      00
 4906              	.LASF202:
 4907 0963 5F6E696F 		.ascii	"_niobs\000"
 4907      627300
 4908              	.LASF271:
 4909 096a 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 4909      43393920 
 4909      362E332E 
 4909      31203230 
 4909      31373036 
 4910 099d 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 4910      76352D64 
 4910      3136202D 
 4910      6D666C6F 
 4910      61742D61 
 4911 09d0 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 4911      6E2D7365 
 4911      6374696F 
 4911      6E73202D 
 4911      66646174 
 4912 0a03 6F6E7374 		.ascii	"onstant\000"
 4912      616E7400 
 4913              	.LASF157:
 4914 0a0b 5F5F7362 		.ascii	"__sbuf\000"
 4914      756600
 4915              	.LASF244:
ARM GAS  /tmp/ccRqcMej.s 			page 118


 4916 0a12 63616C6C 		.ascii	"callback\000"
 4916      6261636B 
 4916      00
 4917              	.LASF201:
 4918 0a1b 5F676C75 		.ascii	"_glue\000"
 4918      6500
 4919              	.LASF76:
 4920 0a21 504D435F 		.ascii	"PMC_SCSR\000"
 4920      53435352 
 4920      00
 4921              	.LASF273:
 4922 0a2a 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70\000"
 4922      652F746F 
 4922      72626A6F 
 4922      726E2F65 
 4922      636C6970 
 4923              	.LASF197:
 4924 0a59 5F5F7367 		.ascii	"__sglue\000"
 4924      6C756500 
 4925              	.LASF220:
 4926 0a61 5F676574 		.ascii	"_getdate_err\000"
 4926      64617465 
 4926      5F657272 
 4926      00
 4927              	.LASF84:
 4928 0a6e 504D435F 		.ascii	"PMC_MCKR\000"
 4928      4D434B52 
 4928      00
 4929              	.LASF209:
 4930 0a77 5F737472 		.ascii	"_strtok_last\000"
 4930      746F6B5F 
 4930      6C617374 
 4930      00
 4931              	.LASF216:
 4932 0a84 5F6D6274 		.ascii	"_mbtowc_state\000"
 4932      6F77635F 
 4932      73746174 
 4932      6500
 4933              	.LASF253:
 4934 0a92 666D725F 		.ascii	"fmr_setting\000"
 4934      73657474 
 4934      696E6700 
 4935              	.LASF150:
 4936 0a9e 5F666E61 		.ascii	"_fnargs\000"
 4936      72677300 
 4937              	.LASF1:
 4938 0aa6 7369676E 		.ascii	"signed char\000"
 4938      65642063 
 4938      68617200 
 4939              	.LASF177:
 4940 0ab2 5F726565 		.ascii	"_reent\000"
 4940      6E7400
 4941              	.LASF79:
 4942 0ab9 504D435F 		.ascii	"PMC_PCSR0\000"
 4942      50435352 
 4942      3000
 4943              	.LASF41:
ARM GAS  /tmp/ccRqcMej.s 			page 119


 4944 0ac3 4D564652 		.ascii	"MVFR0\000"
 4944      3000
 4945              	.LASF42:
 4946 0ac9 4D564652 		.ascii	"MVFR1\000"
 4946      3100
 4947              	.LASF43:
 4948 0acf 4D564652 		.ascii	"MVFR2\000"
 4948      3200
 4949              	.LASF152:
 4950 0ad5 5F666E74 		.ascii	"_fntypes\000"
 4950      79706573 
 4950      00
 4951              	.LASF120:
 4952 0ade 53555043 		.ascii	"SUPC_WUIR\000"
 4952      5F575549 
 4952      5200
 4953              	.LASF159:
 4954 0ae8 5F73697A 		.ascii	"_size\000"
 4954      6500
 4955              	.LASF238:
 4956 0aee 646F7562 		.ascii	"double\000"
 4956      6C6500
 4957              	.LASF124:
 4958 0af5 5F6F6666 		.ascii	"_off_t\000"
 4958      5F7400
 4959              	.LASF98:
 4960 0afc 504D435F 		.ascii	"PMC_WPMR\000"
 4960      57504D52 
 4960      00
 4961              	.LASF170:
 4962 0b05 5F6E6275 		.ascii	"_nbuf\000"
 4962      6600
 4963              	.LASF208:
 4964 0b0b 5F756E75 		.ascii	"_unused_rand\000"
 4964      7365645F 
 4964      72616E64 
 4964      00
 4965              	.LASF226:
 4966 0b18 5F685F65 		.ascii	"_h_errno\000"
 4966      72726E6F 
 4966      00
 4967              	.LASF55:
 4968 0b21 52455345 		.ascii	"RESERVED7\000"
 4968      52564544 
 4968      3700
 4969              	.LASF74:
 4970 0b2b 504D435F 		.ascii	"PMC_SCER\000"
 4970      53434552 
 4970      00
 4971              	.LASF32:
 4972 0b34 49445F49 		.ascii	"ID_ISAR\000"
 4972      53415200 
 4973              	.LASF176:
 4974 0b3c 5F666C61 		.ascii	"_flags2\000"
 4974      67733200 
 4975              	.LASF92:
 4976 0b44 504D435F 		.ascii	"PMC_SR\000"
ARM GAS  /tmp/ccRqcMej.s 			page 120


 4976      535200
 4977              	.LASF153:
 4978 0b4b 5F69735F 		.ascii	"_is_cxa\000"
 4978      63786100 
 4979              	.LASF205:
 4980 0b53 5F736565 		.ascii	"_seed\000"
 4980      6400
 4981              	.LASF78:
 4982 0b59 504D435F 		.ascii	"PMC_PCDR0\000"
 4982      50434452 
 4982      3000
 4983              	.LASF102:
 4984 0b63 504D435F 		.ascii	"PMC_PCDR1\000"
 4984      50434452 
 4984      3100
 4985              	.LASF167:
 4986 0b6d 5F736565 		.ascii	"_seek\000"
 4986      6B00
 4987              	.LASF181:
 4988 0b73 5F737464 		.ascii	"_stderr\000"
 4988      65727200 
 4989              	.LASF228:
 4990 0b7b 5F6E6D61 		.ascii	"_nmalloc\000"
 4990      6C6C6F63 
 4990      00
 4991              	.LASF270:
 4992 0b84 706D635F 		.ascii	"pmc_enable_waitmode\000"
 4992      656E6162 
 4992      6C655F77 
 4992      6169746D 
 4992      6F646500 
 4993              	.LASF105:
 4994 0b98 504D435F 		.ascii	"PMC_OCR\000"
 4994      4F435200 
 4995              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
