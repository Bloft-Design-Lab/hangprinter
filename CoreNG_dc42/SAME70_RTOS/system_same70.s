ARM GAS  /tmp/cczlRLZa.s 			page 1


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
  12              		.file	"system_same70.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.SystemInit,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	SystemInit
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	SystemInit, %function
  25              	SystemInit:
  26              	.LFB131:
  27              		.file 1 "../variants/same70/system_same70.c"
   1:../variants/same70/system_same70.c **** /**
   2:../variants/same70/system_same70.c ****  * \file
   3:../variants/same70/system_same70.c ****  *
   4:../variants/same70/system_same70.c ****  * Copyright (c) 2015 Atmel Corporation. All rights reserved.
   5:../variants/same70/system_same70.c ****  *
   6:../variants/same70/system_same70.c ****  * \asf_license_start
   7:../variants/same70/system_same70.c ****  *
   8:../variants/same70/system_same70.c ****  * \page License
   9:../variants/same70/system_same70.c ****  *
  10:../variants/same70/system_same70.c ****  * Redistribution and use in source and binary forms, with or without
  11:../variants/same70/system_same70.c ****  * modification, are permitted provided that the following conditions are met:
  12:../variants/same70/system_same70.c ****  *
  13:../variants/same70/system_same70.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  14:../variants/same70/system_same70.c ****  *    this list of conditions and the following disclaimer.
  15:../variants/same70/system_same70.c ****  *
  16:../variants/same70/system_same70.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  17:../variants/same70/system_same70.c ****  *    this list of conditions and the following disclaimer in the documentation
  18:../variants/same70/system_same70.c ****  *    and/or other materials provided with the distribution.
  19:../variants/same70/system_same70.c ****  *
  20:../variants/same70/system_same70.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  21:../variants/same70/system_same70.c ****  *    from this software without specific prior written permission.
  22:../variants/same70/system_same70.c ****  *
  23:../variants/same70/system_same70.c ****  * 4. This software may only be redistributed and used in connection with an
  24:../variants/same70/system_same70.c ****  *    Atmel microcontroller product.
  25:../variants/same70/system_same70.c ****  *
  26:../variants/same70/system_same70.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  27:../variants/same70/system_same70.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  28:../variants/same70/system_same70.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
  29:../variants/same70/system_same70.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  30:../variants/same70/system_same70.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
ARM GAS  /tmp/cczlRLZa.s 			page 2


  31:../variants/same70/system_same70.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  32:../variants/same70/system_same70.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  33:../variants/same70/system_same70.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  34:../variants/same70/system_same70.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  35:../variants/same70/system_same70.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  36:../variants/same70/system_same70.c ****  * POSSIBILITY OF SUCH DAMAGE.
  37:../variants/same70/system_same70.c ****  *
  38:../variants/same70/system_same70.c ****  * \asf_license_stop
  39:../variants/same70/system_same70.c ****  *
  40:../variants/same70/system_same70.c ****  */
  41:../variants/same70/system_same70.c **** /*
  42:../variants/same70/system_same70.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  43:../variants/same70/system_same70.c ****  */
  44:../variants/same70/system_same70.c **** 
  45:../variants/same70/system_same70.c **** #include "same70.h"
  46:../variants/same70/system_same70.c **** 
  47:../variants/same70/system_same70.c **** /* @cond 0 */
  48:../variants/same70/system_same70.c **** /**INDENT-OFF**/
  49:../variants/same70/system_same70.c **** #ifdef __cplusplus
  50:../variants/same70/system_same70.c **** extern "C" {
  51:../variants/same70/system_same70.c **** #endif
  52:../variants/same70/system_same70.c **** /**INDENT-ON**/
  53:../variants/same70/system_same70.c **** /* @endcond */
  54:../variants/same70/system_same70.c **** 
  55:../variants/same70/system_same70.c **** /* %ATMEL_SYSTEM% */
  56:../variants/same70/system_same70.c **** /* Clock Settings (600MHz PLL VDDIO 3.3V and VDDCORE 1.2V) */
  57:../variants/same70/system_same70.c **** /* Clock Settings (300MHz HCLK, 150MHz MCK)=> PRESC = 2, MDIV = 2 */
  58:../variants/same70/system_same70.c **** #define SYS_BOARD_OSCOUNT   (CKGR_MOR_MOSCXTST(0x8U))
  59:../variants/same70/system_same70.c **** #define SYS_BOARD_PLLAR     (CKGR_PLLAR_ONE | CKGR_PLLAR_MULA(0x31U) | \
  60:../variants/same70/system_same70.c ****                             CKGR_PLLAR_PLLACOUNT(0x3fU) | CKGR_PLLAR_DIVA(0x1U))
  61:../variants/same70/system_same70.c **** #define SYS_BOARD_MCKR      (PMC_MCKR_PRES_CLK_2 | PMC_MCKR_CSS_PLLA_CLK | (1<<8))
  62:../variants/same70/system_same70.c **** 
  63:../variants/same70/system_same70.c **** uint32_t SystemCoreClock = CHIP_FREQ_XTAL_12M;
  64:../variants/same70/system_same70.c **** 
  65:../variants/same70/system_same70.c **** /**
  66:../variants/same70/system_same70.c ****  * \brief Setup the microcontroller system.
  67:../variants/same70/system_same70.c ****  * Initialize the System and update the SystemFrequency variable.
  68:../variants/same70/system_same70.c ****  */
  69:../variants/same70/system_same70.c ****  void SystemInit( void )
  70:../variants/same70/system_same70.c **** {
  28              		.loc 1 70 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              		@ link register save eliminated.
  71:../variants/same70/system_same70.c ****   /* Set FWS according to SYS_BOARD_MCKR configuration */
  72:../variants/same70/system_same70.c ****   EFC->EEFC_FMR = EEFC_FMR_FWS(5);
  33              		.loc 1 72 0
  34 0000 1B4A     		ldr	r2, .L23
  35 0002 4FF4A061 		mov	r1, #1280
  73:../variants/same70/system_same70.c **** 
  74:../variants/same70/system_same70.c ****   /* Initialize main oscillator */
  75:../variants/same70/system_same70.c ****   if ( !(PMC->CKGR_MOR & CKGR_MOR_MOSCSEL) )
  36              		.loc 1 75 0
  37 0006 1B4B     		ldr	r3, .L23+4
  72:../variants/same70/system_same70.c **** 
  38              		.loc 1 72 0
ARM GAS  /tmp/cczlRLZa.s 			page 3


  39 0008 1160     		str	r1, [r2]
  40              		.loc 1 75 0
  41 000a 1A6A     		ldr	r2, [r3, #32]
  42 000c D201     		lsls	r2, r2, #7
  43 000e 05D4     		bmi	.L5
  76:../variants/same70/system_same70.c ****   {
  77:../variants/same70/system_same70.c ****     PMC->CKGR_MOR = CKGR_MOR_KEY_PASSWD | SYS_BOARD_OSCOUNT | CKGR_MOR_MOSCRCEN | CKGR_MOR_MOSCXTEN
  44              		.loc 1 77 0
  45 0010 1949     		ldr	r1, .L23+8
  78:../variants/same70/system_same70.c **** 
  79:../variants/same70/system_same70.c ****     while ( !(PMC->PMC_SR & PMC_SR_MOSCXTS) )
  46              		.loc 1 79 0
  47 0012 1A46     		mov	r2, r3
  77:../variants/same70/system_same70.c **** 
  48              		.loc 1 77 0
  49 0014 1962     		str	r1, [r3, #32]
  50              	.L4:
  51              		.loc 1 79 0 discriminator 1
  52 0016 936E     		ldr	r3, [r2, #104]
  53 0018 D807     		lsls	r0, r3, #31
  54 001a FCD5     		bpl	.L4
  55              	.L5:
  80:../variants/same70/system_same70.c ****     {
  81:../variants/same70/system_same70.c ****     }
  82:../variants/same70/system_same70.c ****   }
  83:../variants/same70/system_same70.c **** 
  84:../variants/same70/system_same70.c ****   /* Switch to 3-20MHz Xtal oscillator */
  85:../variants/same70/system_same70.c ****   PMC->CKGR_MOR = CKGR_MOR_KEY_PASSWD | SYS_BOARD_OSCOUNT | CKGR_MOR_MOSCRCEN | CKGR_MOR_MOSCXTEN |
  56              		.loc 1 85 0
  57 001c 154B     		ldr	r3, .L23+4
  58 001e 1749     		ldr	r1, .L23+12
  86:../variants/same70/system_same70.c **** 
  87:../variants/same70/system_same70.c ****   while ( !(PMC->PMC_SR & PMC_SR_MOSCSELS) )
  59              		.loc 1 87 0
  60 0020 1A46     		mov	r2, r3
  85:../variants/same70/system_same70.c **** 
  61              		.loc 1 85 0
  62 0022 1962     		str	r1, [r3, #32]
  63              	.L3:
  64              		.loc 1 87 0 discriminator 1
  65 0024 936E     		ldr	r3, [r2, #104]
  66 0026 D903     		lsls	r1, r3, #15
  67 0028 FCD5     		bpl	.L3
  88:../variants/same70/system_same70.c ****   {
  89:../variants/same70/system_same70.c ****   }
  90:../variants/same70/system_same70.c **** 
  91:../variants/same70/system_same70.c ****   PMC->PMC_MCKR = (PMC->PMC_MCKR & ~(uint32_t)PMC_MCKR_CSS_Msk) | PMC_MCKR_CSS_MAIN_CLK;
  68              		.loc 1 91 0
  69 002a 136B     		ldr	r3, [r2, #48]
  92:../variants/same70/system_same70.c **** 
  93:../variants/same70/system_same70.c ****   while ( !(PMC->PMC_SR & PMC_SR_MCKRDY) )
  70              		.loc 1 93 0
  71 002c 1148     		ldr	r0, .L23+4
  91:../variants/same70/system_same70.c **** 
  72              		.loc 1 91 0
  73 002e 23F00303 		bic	r3, r3, #3
  74 0032 43F00103 		orr	r3, r3, #1
ARM GAS  /tmp/cczlRLZa.s 			page 4


  75 0036 1363     		str	r3, [r2, #48]
  76              	.L6:
  77              		.loc 1 93 0 discriminator 1
  78 0038 836E     		ldr	r3, [r0, #104]
  79 003a 1B07     		lsls	r3, r3, #28
  80 003c FCD5     		bpl	.L6
  94:../variants/same70/system_same70.c ****   {
  95:../variants/same70/system_same70.c ****   }
  96:../variants/same70/system_same70.c **** 
  97:../variants/same70/system_same70.c ****   /* Initialize PLLA */
  98:../variants/same70/system_same70.c ****   PMC->CKGR_PLLAR = SYS_BOARD_PLLAR;
  81              		.loc 1 98 0
  82 003e 104B     		ldr	r3, .L23+16
  99:../variants/same70/system_same70.c ****   while ( !(PMC->PMC_SR & PMC_SR_LOCKA) )
  83              		.loc 1 99 0
  84 0040 0C49     		ldr	r1, .L23+4
  98:../variants/same70/system_same70.c ****   while ( !(PMC->PMC_SR & PMC_SR_LOCKA) )
  85              		.loc 1 98 0
  86 0042 8362     		str	r3, [r0, #40]
  87              	.L7:
  88              		.loc 1 99 0 discriminator 1
  89 0044 8B6E     		ldr	r3, [r1, #104]
  90 0046 9807     		lsls	r0, r3, #30
  91 0048 FCD5     		bpl	.L7
 100:../variants/same70/system_same70.c ****   {
 101:../variants/same70/system_same70.c ****   }
 102:../variants/same70/system_same70.c **** 
 103:../variants/same70/system_same70.c ****   /* Switch to main clock */
 104:../variants/same70/system_same70.c ****   PMC->PMC_MCKR = (SYS_BOARD_MCKR & ~PMC_MCKR_CSS_Msk) | PMC_MCKR_CSS_MAIN_CLK;
  92              		.loc 1 104 0
  93 004a 40F21113 		movw	r3, #273
 105:../variants/same70/system_same70.c ****   while ( !(PMC->PMC_SR & PMC_SR_MCKRDY) )
  94              		.loc 1 105 0
  95 004e 094A     		ldr	r2, .L23+4
 104:../variants/same70/system_same70.c ****   while ( !(PMC->PMC_SR & PMC_SR_MCKRDY) )
  96              		.loc 1 104 0
  97 0050 0B63     		str	r3, [r1, #48]
  98              	.L8:
  99              		.loc 1 105 0 discriminator 1
 100 0052 936E     		ldr	r3, [r2, #104]
 101 0054 1907     		lsls	r1, r3, #28
 102 0056 FCD5     		bpl	.L8
 106:../variants/same70/system_same70.c ****   {
 107:../variants/same70/system_same70.c ****   }
 108:../variants/same70/system_same70.c **** 
 109:../variants/same70/system_same70.c ****   /* Switch to PLLA */
 110:../variants/same70/system_same70.c ****   PMC->PMC_MCKR = SYS_BOARD_MCKR;
 103              		.loc 1 110 0
 104 0058 4FF48973 		mov	r3, #274
 111:../variants/same70/system_same70.c ****   while ( !(PMC->PMC_SR & PMC_SR_MCKRDY) )
 105              		.loc 1 111 0
 106 005c 0549     		ldr	r1, .L23+4
 110:../variants/same70/system_same70.c ****   while ( !(PMC->PMC_SR & PMC_SR_MCKRDY) )
 107              		.loc 1 110 0
 108 005e 1363     		str	r3, [r2, #48]
 109              	.L9:
 110              		.loc 1 111 0 discriminator 1
ARM GAS  /tmp/cczlRLZa.s 			page 5


 111 0060 8B6E     		ldr	r3, [r1, #104]
 112 0062 1B07     		lsls	r3, r3, #28
 113 0064 FCD5     		bpl	.L9
 112:../variants/same70/system_same70.c ****   {
 113:../variants/same70/system_same70.c ****   }
 114:../variants/same70/system_same70.c **** 
 115:../variants/same70/system_same70.c ****   SystemCoreClock = CHIP_FREQ_CPU_MAX;
 114              		.loc 1 115 0
 115 0066 074B     		ldr	r3, .L23+20
 116 0068 074A     		ldr	r2, .L23+24
 117 006a 1A60     		str	r2, [r3]
 118 006c 7047     		bx	lr
 119              	.L24:
 120 006e 00BF     		.align	2
 121              	.L23:
 122 0070 000C0E40 		.word	1074662400
 123 0074 00060E40 		.word	1074660864
 124 0078 09083700 		.word	3606537
 125 007c 09083701 		.word	20383753
 126 0080 013F3120 		.word	540098305
 127 0084 00000000 		.word	.LANCHOR0
 128 0088 00A3E111 		.word	300000000
 129              		.cfi_endproc
 130              	.LFE131:
 131              		.size	SystemInit, .-SystemInit
 132              		.section	.text.SystemCoreClockUpdate,"ax",%progbits
 133              		.align	1
 134              		.p2align 2,,3
 135              		.global	SystemCoreClockUpdate
 136              		.syntax unified
 137              		.thumb
 138              		.thumb_func
 139              		.fpu fpv5-d16
 140              		.type	SystemCoreClockUpdate, %function
 141              	SystemCoreClockUpdate:
 142              	.LFB132:
 116:../variants/same70/system_same70.c **** }
 117:../variants/same70/system_same70.c **** 
 118:../variants/same70/system_same70.c **** void SystemCoreClockUpdate( void )
 119:../variants/same70/system_same70.c **** {
 143              		.loc 1 119 0
 144              		.cfi_startproc
 145              		@ args = 0, pretend = 0, frame = 0
 146              		@ frame_needed = 0, uses_anonymous_args = 0
 147              		@ link register save eliminated.
 120:../variants/same70/system_same70.c ****   /* Determine clock frequency according to clock register values */
 121:../variants/same70/system_same70.c ****   switch (PMC->PMC_MCKR & (uint32_t) PMC_MCKR_CSS_Msk)
 148              		.loc 1 121 0
 149 0000 314A     		ldr	r2, .L47
 150 0002 136B     		ldr	r3, [r2, #48]
 151 0004 03F00303 		and	r3, r3, #3
 152 0008 012B     		cmp	r3, #1
 153 000a 3DD0     		beq	.L27
 154 000c 26D3     		bcc	.L28
 155 000e 022B     		cmp	r3, #2
 156 0010 0DD0     		beq	.L29
 157 0012 2E49     		ldr	r1, .L47+4
ARM GAS  /tmp/cczlRLZa.s 			page 6


 158 0014 0B68     		ldr	r3, [r1]
 159              	.L30:
 122:../variants/same70/system_same70.c ****   {
 123:../variants/same70/system_same70.c ****     case PMC_MCKR_CSS_SLOW_CLK: /* Slow clock */
 124:../variants/same70/system_same70.c ****       if ( SUPC->SUPC_SR & SUPC_SR_OSCSEL )
 125:../variants/same70/system_same70.c ****       {
 126:../variants/same70/system_same70.c ****         SystemCoreClock = CHIP_FREQ_XTAL_32K;
 127:../variants/same70/system_same70.c ****       }
 128:../variants/same70/system_same70.c ****       else
 129:../variants/same70/system_same70.c ****       {
 130:../variants/same70/system_same70.c ****         SystemCoreClock = CHIP_FREQ_SLCK_RC;
 131:../variants/same70/system_same70.c ****       }
 132:../variants/same70/system_same70.c ****     break;
 133:../variants/same70/system_same70.c **** 
 134:../variants/same70/system_same70.c ****     case PMC_MCKR_CSS_MAIN_CLK: /* Main clock */
 135:../variants/same70/system_same70.c ****       if ( PMC->CKGR_MOR & CKGR_MOR_MOSCSEL )
 136:../variants/same70/system_same70.c ****       {
 137:../variants/same70/system_same70.c ****         SystemCoreClock = CHIP_FREQ_XTAL_12M;
 138:../variants/same70/system_same70.c ****       }
 139:../variants/same70/system_same70.c ****       else
 140:../variants/same70/system_same70.c ****       {
 141:../variants/same70/system_same70.c ****         SystemCoreClock = CHIP_FREQ_MAINCK_RC_4MHZ;
 142:../variants/same70/system_same70.c **** 
 143:../variants/same70/system_same70.c ****         switch ( PMC->CKGR_MOR & CKGR_MOR_MOSCRCF_Msk )
 144:../variants/same70/system_same70.c ****         {
 145:../variants/same70/system_same70.c ****           case CKGR_MOR_MOSCRCF_4_MHz:
 146:../variants/same70/system_same70.c ****           break;
 147:../variants/same70/system_same70.c **** 
 148:../variants/same70/system_same70.c ****           case CKGR_MOR_MOSCRCF_8_MHz:
 149:../variants/same70/system_same70.c ****             SystemCoreClock *= 2U;
 150:../variants/same70/system_same70.c ****           break;
 151:../variants/same70/system_same70.c **** 
 152:../variants/same70/system_same70.c ****           case CKGR_MOR_MOSCRCF_12_MHz:
 153:../variants/same70/system_same70.c ****             SystemCoreClock *= 3U;
 154:../variants/same70/system_same70.c ****           break;
 155:../variants/same70/system_same70.c **** 
 156:../variants/same70/system_same70.c ****           default:
 157:../variants/same70/system_same70.c ****           break;
 158:../variants/same70/system_same70.c ****         }
 159:../variants/same70/system_same70.c ****       }
 160:../variants/same70/system_same70.c ****     break;
 161:../variants/same70/system_same70.c **** 
 162:../variants/same70/system_same70.c ****     case PMC_MCKR_CSS_PLLA_CLK:	/* PLLA clock */
 163:../variants/same70/system_same70.c ****       if ( PMC->CKGR_MOR & CKGR_MOR_MOSCSEL )
 164:../variants/same70/system_same70.c ****       {
 165:../variants/same70/system_same70.c ****         SystemCoreClock = CHIP_FREQ_XTAL_12M ;
 166:../variants/same70/system_same70.c ****       }
 167:../variants/same70/system_same70.c ****       else
 168:../variants/same70/system_same70.c ****       {
 169:../variants/same70/system_same70.c ****         SystemCoreClock = CHIP_FREQ_MAINCK_RC_4MHZ;
 170:../variants/same70/system_same70.c **** 
 171:../variants/same70/system_same70.c ****         switch ( PMC->CKGR_MOR & CKGR_MOR_MOSCRCF_Msk )
 172:../variants/same70/system_same70.c ****         {
 173:../variants/same70/system_same70.c ****           case CKGR_MOR_MOSCRCF_4_MHz:
 174:../variants/same70/system_same70.c ****           break;
 175:../variants/same70/system_same70.c **** 
 176:../variants/same70/system_same70.c ****           case CKGR_MOR_MOSCRCF_8_MHz:
ARM GAS  /tmp/cczlRLZa.s 			page 7


 177:../variants/same70/system_same70.c ****             SystemCoreClock *= 2U;
 178:../variants/same70/system_same70.c ****           break;
 179:../variants/same70/system_same70.c **** 
 180:../variants/same70/system_same70.c ****           case CKGR_MOR_MOSCRCF_12_MHz:
 181:../variants/same70/system_same70.c ****             SystemCoreClock *= 3U;
 182:../variants/same70/system_same70.c ****           break;
 183:../variants/same70/system_same70.c **** 
 184:../variants/same70/system_same70.c ****           default:
 185:../variants/same70/system_same70.c ****           break;
 186:../variants/same70/system_same70.c ****         }
 187:../variants/same70/system_same70.c ****       }
 188:../variants/same70/system_same70.c **** 
 189:../variants/same70/system_same70.c ****       if ( (uint32_t) (PMC->PMC_MCKR & (uint32_t) PMC_MCKR_CSS_Msk) == PMC_MCKR_CSS_PLLA_CLK )
 190:../variants/same70/system_same70.c ****       {
 191:../variants/same70/system_same70.c ****         SystemCoreClock *= ((((PMC->CKGR_PLLAR) & CKGR_PLLAR_MULA_Msk) >> CKGR_PLLAR_MULA_Pos) + 1U
 192:../variants/same70/system_same70.c ****         SystemCoreClock /= ((((PMC->CKGR_PLLAR) & CKGR_PLLAR_DIVA_Msk) >> CKGR_PLLAR_DIVA_Pos));
 193:../variants/same70/system_same70.c ****       }
 194:../variants/same70/system_same70.c ****     break;
 195:../variants/same70/system_same70.c **** 
 196:../variants/same70/system_same70.c ****     default:
 197:../variants/same70/system_same70.c ****     break;
 198:../variants/same70/system_same70.c ****   }
 199:../variants/same70/system_same70.c **** 
 200:../variants/same70/system_same70.c ****   if ( (PMC->PMC_MCKR & PMC_MCKR_PRES_Msk) == PMC_MCKR_PRES_CLK_3 )
 160              		.loc 1 200 0
 161 0016 2C48     		ldr	r0, .L47
 162 0018 026B     		ldr	r2, [r0, #48]
 163 001a 02F07002 		and	r2, r2, #112
 164 001e 702A     		cmp	r2, #112
 165 0020 2CD0     		beq	.L45
 166              	.L39:
 201:../variants/same70/system_same70.c ****   {
 202:../variants/same70/system_same70.c ****     SystemCoreClock /= 3U;
 203:../variants/same70/system_same70.c ****   }
 204:../variants/same70/system_same70.c ****   else
 205:../variants/same70/system_same70.c ****   {
 206:../variants/same70/system_same70.c ****     SystemCoreClock >>= ((PMC->PMC_MCKR & PMC_MCKR_PRES_Msk) >> PMC_MCKR_PRES_Pos);
 167              		.loc 1 206 0
 168 0022 026B     		ldr	r2, [r0, #48]
 169 0024 C2F30212 		ubfx	r2, r2, #4, #3
 170 0028 D340     		lsrs	r3, r3, r2
 171 002a 0B60     		str	r3, [r1]
 172 002c 7047     		bx	lr
 173              	.L29:
 163:../variants/same70/system_same70.c ****       {
 174              		.loc 1 163 0
 175 002e 136A     		ldr	r3, [r2, #32]
 165:../variants/same70/system_same70.c ****       }
 176              		.loc 1 165 0
 177 0030 2649     		ldr	r1, .L47+4
 163:../variants/same70/system_same70.c ****       {
 178              		.loc 1 163 0
 179 0032 DB01     		lsls	r3, r3, #7
 180 0034 38D5     		bpl	.L46
 181              	.L38:
 181:../variants/same70/system_same70.c ****           break;
 182              		.loc 1 181 0
ARM GAS  /tmp/cczlRLZa.s 			page 8


 183 0036 264B     		ldr	r3, .L47+8
 184 0038 0B60     		str	r3, [r1]
 185              	.L36:
 189:../variants/same70/system_same70.c ****       {
 186              		.loc 1 189 0
 187 003a 2348     		ldr	r0, .L47
 188 003c 026B     		ldr	r2, [r0, #48]
 189 003e 02F00302 		and	r2, r2, #3
 190 0042 022A     		cmp	r2, #2
 191 0044 E7D1     		bne	.L30
 191:../variants/same70/system_same70.c ****         SystemCoreClock /= ((((PMC->CKGR_PLLAR) & CKGR_PLLAR_DIVA_Msk) >> CKGR_PLLAR_DIVA_Pos));
 192              		.loc 1 191 0
 193 0046 826A     		ldr	r2, [r0, #40]
 192:../variants/same70/system_same70.c ****       }
 194              		.loc 1 192 0
 195 0048 806A     		ldr	r0, [r0, #40]
 191:../variants/same70/system_same70.c ****         SystemCoreClock /= ((((PMC->CKGR_PLLAR) & CKGR_PLLAR_DIVA_Msk) >> CKGR_PLLAR_DIVA_Pos));
 196              		.loc 1 191 0
 197 004a C2F30A42 		ubfx	r2, r2, #16, #11
 192:../variants/same70/system_same70.c ****       }
 198              		.loc 1 192 0
 199 004e C0B2     		uxtb	r0, r0
 191:../variants/same70/system_same70.c ****         SystemCoreClock /= ((((PMC->CKGR_PLLAR) & CKGR_PLLAR_DIVA_Msk) >> CKGR_PLLAR_DIVA_Pos));
 200              		.loc 1 191 0
 201 0050 02FB0333 		mla	r3, r2, r3, r3
 192:../variants/same70/system_same70.c ****       }
 202              		.loc 1 192 0
 203 0054 B3FBF0F3 		udiv	r3, r3, r0
 204 0058 0B60     		str	r3, [r1]
 205 005a DCE7     		b	.L30
 206              	.L28:
 124:../variants/same70/system_same70.c ****       {
 207              		.loc 1 124 0
 208 005c 1D4B     		ldr	r3, .L47+12
 126:../variants/same70/system_same70.c ****       }
 209              		.loc 1 126 0
 210 005e 1B49     		ldr	r1, .L47+4
 124:../variants/same70/system_same70.c ****       {
 211              		.loc 1 124 0
 212 0060 5B69     		ldr	r3, [r3, #20]
 200:../variants/same70/system_same70.c ****   {
 213              		.loc 1 200 0
 214 0062 1948     		ldr	r0, .L47
 124:../variants/same70/system_same70.c ****       {
 215              		.loc 1 124 0
 216 0064 1B06     		lsls	r3, r3, #24
 126:../variants/same70/system_same70.c ****       }
 217              		.loc 1 126 0
 218 0066 4CBF     		ite	mi
 219 0068 4FF40043 		movmi	r3, #32768
 130:../variants/same70/system_same70.c ****       }
 220              		.loc 1 130 0
 221 006c 4FF4FA43 		movpl	r3, #32000
 222 0070 0B60     		str	r3, [r1]
 200:../variants/same70/system_same70.c ****   {
 223              		.loc 1 200 0
 224 0072 026B     		ldr	r2, [r0, #48]
ARM GAS  /tmp/cczlRLZa.s 			page 9


 225 0074 02F07002 		and	r2, r2, #112
 226 0078 702A     		cmp	r2, #112
 227 007a D2D1     		bne	.L39
 228              	.L45:
 202:../variants/same70/system_same70.c ****   }
 229              		.loc 1 202 0
 230 007c 164A     		ldr	r2, .L47+16
 231 007e A2FB0323 		umull	r2, r3, r2, r3
 232 0082 5B08     		lsrs	r3, r3, #1
 233 0084 0B60     		str	r3, [r1]
 234 0086 7047     		bx	lr
 235              	.L27:
 135:../variants/same70/system_same70.c ****       {
 236              		.loc 1 135 0
 237 0088 136A     		ldr	r3, [r2, #32]
 137:../variants/same70/system_same70.c ****       }
 238              		.loc 1 137 0
 239 008a 1049     		ldr	r1, .L47+4
 135:../variants/same70/system_same70.c ****       {
 240              		.loc 1 135 0
 241 008c D801     		lsls	r0, r3, #7
 242 008e 08D4     		bmi	.L34
 141:../variants/same70/system_same70.c **** 
 243              		.loc 1 141 0
 244 0090 124B     		ldr	r3, .L47+20
 245 0092 0B60     		str	r3, [r1]
 143:../variants/same70/system_same70.c ****         {
 246              		.loc 1 143 0
 247 0094 126A     		ldr	r2, [r2, #32]
 248 0096 02F07002 		and	r2, r2, #112
 249 009a 102A     		cmp	r2, #16
 250 009c 11D0     		beq	.L33
 251 009e 202A     		cmp	r2, #32
 252 00a0 B9D1     		bne	.L30
 253              	.L34:
 153:../variants/same70/system_same70.c ****           break;
 254              		.loc 1 153 0
 255 00a2 0B4B     		ldr	r3, .L47+8
 256 00a4 0B60     		str	r3, [r1]
 154:../variants/same70/system_same70.c **** 
 257              		.loc 1 154 0
 258 00a6 B6E7     		b	.L30
 259              	.L46:
 169:../variants/same70/system_same70.c **** 
 260              		.loc 1 169 0
 261 00a8 0C4B     		ldr	r3, .L47+20
 262 00aa 0B60     		str	r3, [r1]
 171:../variants/same70/system_same70.c ****         {
 263              		.loc 1 171 0
 264 00ac 126A     		ldr	r2, [r2, #32]
 265 00ae 02F07002 		and	r2, r2, #112
 266 00b2 102A     		cmp	r2, #16
 267 00b4 02D0     		beq	.L37
 268 00b6 202A     		cmp	r2, #32
 269 00b8 BDD0     		beq	.L38
 270 00ba BEE7     		b	.L36
 271              	.L37:
ARM GAS  /tmp/cczlRLZa.s 			page 10


 177:../variants/same70/system_same70.c ****           break;
 272              		.loc 1 177 0
 273 00bc 084B     		ldr	r3, .L47+24
 274 00be 0B60     		str	r3, [r1]
 178:../variants/same70/system_same70.c **** 
 275              		.loc 1 178 0
 276 00c0 BBE7     		b	.L36
 277              	.L33:
 149:../variants/same70/system_same70.c ****           break;
 278              		.loc 1 149 0
 279 00c2 074B     		ldr	r3, .L47+24
 280 00c4 0B60     		str	r3, [r1]
 150:../variants/same70/system_same70.c **** 
 281              		.loc 1 150 0
 282 00c6 A6E7     		b	.L30
 283              	.L48:
 284              		.align	2
 285              	.L47:
 286 00c8 00060E40 		.word	1074660864
 287 00cc 00000000 		.word	.LANCHOR0
 288 00d0 001BB700 		.word	12000000
 289 00d4 10180E40 		.word	1074665488
 290 00d8 ABAAAAAA 		.word	-1431655765
 291 00dc 00093D00 		.word	4000000
 292 00e0 00127A00 		.word	8000000
 293              		.cfi_endproc
 294              	.LFE132:
 295              		.size	SystemCoreClockUpdate, .-SystemCoreClockUpdate
 296              		.section	.text.system_init_flash,"ax",%progbits
 297              		.align	1
 298              		.p2align 2,,3
 299              		.global	system_init_flash
 300              		.syntax unified
 301              		.thumb
 302              		.thumb_func
 303              		.fpu fpv5-d16
 304              		.type	system_init_flash, %function
 305              	system_init_flash:
 306              	.LFB133:
 207:../variants/same70/system_same70.c ****   }
 208:../variants/same70/system_same70.c **** }
 209:../variants/same70/system_same70.c **** /**
 210:../variants/same70/system_same70.c ****  * Initialize flash.
 211:../variants/same70/system_same70.c ****  */
 212:../variants/same70/system_same70.c **** void system_init_flash( uint32_t ul_clk )
 213:../variants/same70/system_same70.c **** {
 307              		.loc 1 213 0
 308              		.cfi_startproc
 309              		@ args = 0, pretend = 0, frame = 0
 310              		@ frame_needed = 0, uses_anonymous_args = 0
 311              		@ link register save eliminated.
 312              	.LVL0:
 214:../variants/same70/system_same70.c ****   /* Set FWS for embedded Flash access according to operating frequency */
 215:../variants/same70/system_same70.c ****   if ( ul_clk < CHIP_FREQ_FWS_0 )
 313              		.loc 1 215 0
 314 0000 124B     		ldr	r3, .L60
 315 0002 9842     		cmp	r0, r3
ARM GAS  /tmp/cczlRLZa.s 			page 11


 316 0004 15D9     		bls	.L56
 216:../variants/same70/system_same70.c ****   {
 217:../variants/same70/system_same70.c ****     EFC->EEFC_FMR = EEFC_FMR_FWS(0)|EEFC_FMR_CLOE;
 218:../variants/same70/system_same70.c ****   }
 219:../variants/same70/system_same70.c ****   else
 220:../variants/same70/system_same70.c ****   {
 221:../variants/same70/system_same70.c ****     if (ul_clk < CHIP_FREQ_FWS_1)
 317              		.loc 1 221 0
 318 0006 124B     		ldr	r3, .L60+4
 319 0008 9842     		cmp	r0, r3
 320 000a 0ED9     		bls	.L57
 222:../variants/same70/system_same70.c ****     {
 223:../variants/same70/system_same70.c ****       EFC->EEFC_FMR = EEFC_FMR_FWS(1)|EEFC_FMR_CLOE;
 224:../variants/same70/system_same70.c ****     }
 225:../variants/same70/system_same70.c ****     else
 226:../variants/same70/system_same70.c ****     {
 227:../variants/same70/system_same70.c ****       if (ul_clk < CHIP_FREQ_FWS_2)
 321              		.loc 1 227 0
 322 000c 114B     		ldr	r3, .L60+8
 323 000e 9842     		cmp	r0, r3
 324 0010 18D9     		bls	.L58
 228:../variants/same70/system_same70.c ****       {
 229:../variants/same70/system_same70.c ****         EFC->EEFC_FMR = EEFC_FMR_FWS(2)|EEFC_FMR_CLOE;
 230:../variants/same70/system_same70.c ****       }
 231:../variants/same70/system_same70.c ****       else
 232:../variants/same70/system_same70.c ****       {
 233:../variants/same70/system_same70.c ****         if ( ul_clk < CHIP_FREQ_FWS_3 )
 325              		.loc 1 233 0
 326 0012 114B     		ldr	r3, .L60+12
 327 0014 9842     		cmp	r0, r3
 328 0016 11D9     		bls	.L59
 234:../variants/same70/system_same70.c ****         {
 235:../variants/same70/system_same70.c ****           EFC->EEFC_FMR = EEFC_FMR_FWS(3)|EEFC_FMR_CLOE;
 236:../variants/same70/system_same70.c ****         }
 237:../variants/same70/system_same70.c ****         else
 238:../variants/same70/system_same70.c ****         {
 239:../variants/same70/system_same70.c ****           if ( ul_clk < CHIP_FREQ_FWS_4 )
 329              		.loc 1 239 0
 330 0018 104B     		ldr	r3, .L60+16
 331 001a 9842     		cmp	r0, r3
 240:../variants/same70/system_same70.c ****           {
 241:../variants/same70/system_same70.c ****             EFC->EEFC_FMR = EEFC_FMR_FWS(4)|EEFC_FMR_CLOE;
 332              		.loc 1 241 0
 333 001c 104B     		ldr	r3, .L60+20
 334 001e 94BF     		ite	ls
 335 0020 4FF00422 		movls	r2, #67109888
 242:../variants/same70/system_same70.c ****           }
 243:../variants/same70/system_same70.c ****           else
 244:../variants/same70/system_same70.c ****           {
 245:../variants/same70/system_same70.c ****             EFC->EEFC_FMR = EEFC_FMR_FWS(5)|EEFC_FMR_CLOE;
 336              		.loc 1 245 0
 337 0024 0F4A     		ldrhi	r2, .L60+24
 338 0026 1A60     		str	r2, [r3]
 339 0028 7047     		bx	lr
 340              	.L57:
 223:../variants/same70/system_same70.c ****     }
 341              		.loc 1 223 0
ARM GAS  /tmp/cczlRLZa.s 			page 12


 342 002a 0D4B     		ldr	r3, .L60+20
 343 002c 0E4A     		ldr	r2, .L60+28
 344 002e 1A60     		str	r2, [r3]
 345 0030 7047     		bx	lr
 346              	.L56:
 217:../variants/same70/system_same70.c ****   }
 347              		.loc 1 217 0
 348 0032 0B4B     		ldr	r3, .L60+20
 349 0034 4FF08062 		mov	r2, #67108864
 350 0038 1A60     		str	r2, [r3]
 351 003a 7047     		bx	lr
 352              	.L59:
 235:../variants/same70/system_same70.c ****         }
 353              		.loc 1 235 0
 354 003c 084B     		ldr	r3, .L60+20
 355 003e 0B4A     		ldr	r2, .L60+32
 356 0040 1A60     		str	r2, [r3]
 357 0042 7047     		bx	lr
 358              	.L58:
 229:../variants/same70/system_same70.c ****       }
 359              		.loc 1 229 0
 360 0044 064B     		ldr	r3, .L60+20
 361 0046 0A4A     		ldr	r2, .L60+36
 362 0048 1A60     		str	r2, [r3]
 363 004a 7047     		bx	lr
 364              	.L61:
 365              		.align	2
 366              	.L60:
 367 004c BFF35E01 		.word	22999999
 368 0050 7FE7BD02 		.word	45999999
 369 0054 3FDB1C04 		.word	68999999
 370 0058 FFCE7B05 		.word	91999999
 371 005c BFC2DA06 		.word	114999999
 372 0060 000C0E40 		.word	1074662400
 373 0064 00050004 		.word	67110144
 374 0068 00010004 		.word	67109120
 375 006c 00030004 		.word	67109632
 376 0070 00020004 		.word	67109376
 377              		.cfi_endproc
 378              	.LFE133:
 379              		.size	system_init_flash, .-system_init_flash
 380              		.global	SystemCoreClock
 381              		.section	.data.SystemCoreClock,"aw",%progbits
 382              		.align	2
 383              		.set	.LANCHOR0,. + 0
 384              		.type	SystemCoreClock, %object
 385              		.size	SystemCoreClock, 4
 386              	SystemCoreClock:
 387 0000 001BB700 		.word	12000000
 388              		.text
 389              	.Letext0:
 390              		.file 2 "/usr/include/newlib/machine/_default_types.h"
 391              		.file 3 "/usr/include/newlib/sys/_stdint.h"
 392              		.file 4 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 393              		.file 5 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 394              		.file 6 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/efc.
 395              		.file 7 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/pmc.
ARM GAS  /tmp/cczlRLZa.s 			page 13


 396              		.file 8 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/supc
 397              		.section	.debug_info,"",%progbits
 398              	.Ldebug_info0:
 399 0000 C7040000 		.4byte	0x4c7
 400 0004 0400     		.2byte	0x4
 401 0006 00000000 		.4byte	.Ldebug_abbrev0
 402 000a 04       		.byte	0x4
 403 000b 01       		.uleb128 0x1
 404 000c DB010000 		.4byte	.LASF75
 405 0010 0C       		.byte	0xc
 406 0011 E6030000 		.4byte	.LASF76
 407 0015 6C010000 		.4byte	.LASF77
 408 0019 00000000 		.4byte	.Ldebug_ranges0+0
 409 001d 00000000 		.4byte	0
 410 0021 00000000 		.4byte	.Ldebug_line0
 411 0025 02       		.uleb128 0x2
 412 0026 01       		.byte	0x1
 413 0027 06       		.byte	0x6
 414 0028 9B020000 		.4byte	.LASF0
 415 002c 02       		.uleb128 0x2
 416 002d 01       		.byte	0x1
 417 002e 08       		.byte	0x8
 418 002f 84020000 		.4byte	.LASF1
 419 0033 02       		.uleb128 0x2
 420 0034 02       		.byte	0x2
 421 0035 05       		.byte	0x5
 422 0036 53000000 		.4byte	.LASF2
 423 003a 02       		.uleb128 0x2
 424 003b 02       		.byte	0x2
 425 003c 07       		.byte	0x7
 426 003d 4A030000 		.4byte	.LASF3
 427 0041 03       		.uleb128 0x3
 428 0042 CB030000 		.4byte	.LASF5
 429 0046 02       		.byte	0x2
 430 0047 3F       		.byte	0x3f
 431 0048 4C000000 		.4byte	0x4c
 432 004c 02       		.uleb128 0x2
 433 004d 04       		.byte	0x4
 434 004e 05       		.byte	0x5
 435 004f C5010000 		.4byte	.LASF4
 436 0053 03       		.uleb128 0x3
 437 0054 AD030000 		.4byte	.LASF6
 438 0058 02       		.byte	0x2
 439 0059 41       		.byte	0x41
 440 005a 5E000000 		.4byte	0x5e
 441 005e 02       		.uleb128 0x2
 442 005f 04       		.byte	0x4
 443 0060 07       		.byte	0x7
 444 0061 78030000 		.4byte	.LASF7
 445 0065 02       		.uleb128 0x2
 446 0066 08       		.byte	0x8
 447 0067 05       		.byte	0x5
 448 0068 5E010000 		.4byte	.LASF8
 449 006c 02       		.uleb128 0x2
 450 006d 08       		.byte	0x8
 451 006e 07       		.byte	0x7
 452 006f A7020000 		.4byte	.LASF9
ARM GAS  /tmp/cczlRLZa.s 			page 14


 453 0073 04       		.uleb128 0x4
 454 0074 04       		.byte	0x4
 455 0075 05       		.byte	0x5
 456 0076 696E7400 		.ascii	"int\000"
 457 007a 02       		.uleb128 0x2
 458 007b 04       		.byte	0x4
 459 007c 07       		.byte	0x7
 460 007d C7020000 		.4byte	.LASF10
 461 0081 03       		.uleb128 0x3
 462 0082 42030000 		.4byte	.LASF11
 463 0086 03       		.byte	0x3
 464 0087 2C       		.byte	0x2c
 465 0088 41000000 		.4byte	0x41
 466 008c 05       		.uleb128 0x5
 467 008d 81000000 		.4byte	0x81
 468 0091 03       		.uleb128 0x3
 469 0092 BE020000 		.4byte	.LASF12
 470 0096 03       		.byte	0x3
 471 0097 30       		.byte	0x30
 472 0098 53000000 		.4byte	0x53
 473 009c 05       		.uleb128 0x5
 474 009d 91000000 		.4byte	0x91
 475 00a1 06       		.uleb128 0x6
 476 00a2 9C000000 		.4byte	0x9c
 477 00a6 02       		.uleb128 0x2
 478 00a7 04       		.byte	0x4
 479 00a8 07       		.byte	0x7
 480 00a9 67000000 		.4byte	.LASF13
 481 00ad 07       		.uleb128 0x7
 482 00ae A1000000 		.4byte	0xa1
 483 00b2 BD000000 		.4byte	0xbd
 484 00b6 08       		.uleb128 0x8
 485 00b7 A6000000 		.4byte	0xa6
 486 00bb 03       		.byte	0x3
 487 00bc 00       		.byte	0
 488 00bd 06       		.uleb128 0x6
 489 00be AD000000 		.4byte	0xad
 490 00c2 05       		.uleb128 0x5
 491 00c3 BD000000 		.4byte	0xbd
 492 00c7 07       		.uleb128 0x7
 493 00c8 A1000000 		.4byte	0xa1
 494 00cc D7000000 		.4byte	0xd7
 495 00d0 08       		.uleb128 0x8
 496 00d1 A6000000 		.4byte	0xa6
 497 00d5 04       		.byte	0x4
 498 00d6 00       		.byte	0
 499 00d7 06       		.uleb128 0x6
 500 00d8 C7000000 		.4byte	0xc7
 501 00dc 05       		.uleb128 0x5
 502 00dd D7000000 		.4byte	0xd7
 503 00e1 09       		.uleb128 0x9
 504 00e2 12040000 		.4byte	.LASF14
 505 00e6 04       		.byte	0x4
 506 00e7 6508     		.2byte	0x865
 507 00e9 8C000000 		.4byte	0x8c
 508 00ed 0A       		.uleb128 0xa
 509 00ee 5D030000 		.4byte	.LASF15
ARM GAS  /tmp/cczlRLZa.s 			page 15


 510 00f2 05       		.byte	0x5
 511 00f3 3A       		.byte	0x3a
 512 00f4 91000000 		.4byte	0x91
 513 00f8 07       		.uleb128 0x7
 514 00f9 A1000000 		.4byte	0xa1
 515 00fd 08010000 		.4byte	0x108
 516 0101 08       		.uleb128 0x8
 517 0102 A6000000 		.4byte	0xa6
 518 0106 00       		.byte	0
 519 0107 00       		.byte	0
 520 0108 06       		.uleb128 0x6
 521 0109 F8000000 		.4byte	0xf8
 522 010d 05       		.uleb128 0x5
 523 010e 08010000 		.4byte	0x108
 524 0112 05       		.uleb128 0x5
 525 0113 08010000 		.4byte	0x108
 526 0117 05       		.uleb128 0x5
 527 0118 08010000 		.4byte	0x108
 528 011c 05       		.uleb128 0x5
 529 011d 08010000 		.4byte	0x108
 530 0121 05       		.uleb128 0x5
 531 0122 08010000 		.4byte	0x108
 532 0126 05       		.uleb128 0x5
 533 0127 08010000 		.4byte	0x108
 534 012b 0B       		.uleb128 0xb
 535 012c E8       		.byte	0xe8
 536 012d 06       		.byte	0x6
 537 012e 38       		.byte	0x38
 538 012f 94010000 		.4byte	0x194
 539 0133 0C       		.uleb128 0xc
 540 0134 EF000000 		.4byte	.LASF16
 541 0138 06       		.byte	0x6
 542 0139 39       		.byte	0x39
 543 013a 9C000000 		.4byte	0x9c
 544 013e 00       		.byte	0
 545 013f 0C       		.uleb128 0xc
 546 0140 F2020000 		.4byte	.LASF17
 547 0144 06       		.byte	0x6
 548 0145 3A       		.byte	0x3a
 549 0146 9C000000 		.4byte	0x9c
 550 014a 04       		.byte	0x4
 551 014b 0C       		.uleb128 0xc
 552 014c D5030000 		.4byte	.LASF18
 553 0150 06       		.byte	0x6
 554 0151 3B       		.byte	0x3b
 555 0152 A1000000 		.4byte	0xa1
 556 0156 08       		.byte	0x8
 557 0157 0C       		.uleb128 0xc
 558 0158 C2030000 		.4byte	.LASF19
 559 015c 06       		.byte	0x6
 560 015d 3C       		.byte	0x3c
 561 015e A1000000 		.4byte	0xa1
 562 0162 0C       		.byte	0xc
 563 0163 0C       		.uleb128 0xc
 564 0164 D1000000 		.4byte	.LASF20
 565 0168 06       		.byte	0x6
 566 0169 3D       		.byte	0x3d
ARM GAS  /tmp/cczlRLZa.s 			page 16


 567 016a 0D010000 		.4byte	0x10d
 568 016e 10       		.byte	0x10
 569 016f 0C       		.uleb128 0xc
 570 0170 CE010000 		.4byte	.LASF21
 571 0174 06       		.byte	0x6
 572 0175 3E       		.byte	0x3e
 573 0176 A1000000 		.4byte	0xa1
 574 017a 14       		.byte	0x14
 575 017b 0C       		.uleb128 0xc
 576 017c DB000000 		.4byte	.LASF22
 577 0180 06       		.byte	0x6
 578 0181 3F       		.byte	0x3f
 579 0182 A9010000 		.4byte	0x1a9
 580 0186 18       		.byte	0x18
 581 0187 0C       		.uleb128 0xc
 582 0188 B8030000 		.4byte	.LASF23
 583 018c 06       		.byte	0x6
 584 018d 40       		.byte	0x40
 585 018e 9C000000 		.4byte	0x9c
 586 0192 E4       		.byte	0xe4
 587 0193 00       		.byte	0
 588 0194 07       		.uleb128 0x7
 589 0195 A1000000 		.4byte	0xa1
 590 0199 A4010000 		.4byte	0x1a4
 591 019d 08       		.uleb128 0x8
 592 019e A6000000 		.4byte	0xa6
 593 01a2 32       		.byte	0x32
 594 01a3 00       		.byte	0
 595 01a4 06       		.uleb128 0x6
 596 01a5 94010000 		.4byte	0x194
 597 01a9 05       		.uleb128 0x5
 598 01aa A4010000 		.4byte	0x1a4
 599 01ae 0D       		.uleb128 0xd
 600 01af 45666300 		.ascii	"Efc\000"
 601 01b3 06       		.byte	0x6
 602 01b4 41       		.byte	0x41
 603 01b5 2B010000 		.4byte	0x12b
 604 01b9 0E       		.uleb128 0xe
 605 01ba 4801     		.2byte	0x148
 606 01bc 07       		.byte	0x7
 607 01bd 38       		.byte	0x38
 608 01be E2030000 		.4byte	0x3e2
 609 01c2 0C       		.uleb128 0xc
 610 01c3 92020000 		.4byte	.LASF24
 611 01c7 07       		.byte	0x7
 612 01c8 39       		.byte	0x39
 613 01c9 9C000000 		.4byte	0x9c
 614 01cd 00       		.byte	0
 615 01ce 0C       		.uleb128 0xc
 616 01cf 09040000 		.4byte	.LASF25
 617 01d3 07       		.byte	0x7
 618 01d4 3A       		.byte	0x3a
 619 01d5 9C000000 		.4byte	0x9c
 620 01d9 04       		.byte	0x4
 621 01da 0C       		.uleb128 0xc
 622 01db 38000000 		.4byte	.LASF26
 623 01df 07       		.byte	0x7
ARM GAS  /tmp/cczlRLZa.s 			page 17


 624 01e0 3B       		.byte	0x3b
 625 01e1 A1000000 		.4byte	0xa1
 626 01e5 08       		.byte	0x8
 627 01e6 0C       		.uleb128 0xc
 628 01e7 D1000000 		.4byte	.LASF20
 629 01eb 07       		.byte	0x7
 630 01ec 3C       		.byte	0x3c
 631 01ed 26010000 		.4byte	0x126
 632 01f1 0C       		.byte	0xc
 633 01f2 0C       		.uleb128 0xc
 634 01f3 A2000000 		.4byte	.LASF27
 635 01f7 07       		.byte	0x7
 636 01f8 3D       		.byte	0x3d
 637 01f9 9C000000 		.4byte	0x9c
 638 01fd 10       		.byte	0x10
 639 01fe 0C       		.uleb128 0xc
 640 01ff D4020000 		.4byte	.LASF28
 641 0203 07       		.byte	0x7
 642 0204 3E       		.byte	0x3e
 643 0205 9C000000 		.4byte	0x9c
 644 0209 14       		.byte	0x14
 645 020a 0C       		.uleb128 0xc
 646 020b DE020000 		.4byte	.LASF29
 647 020f 07       		.byte	0x7
 648 0210 3F       		.byte	0x3f
 649 0211 A1000000 		.4byte	0xa1
 650 0215 18       		.byte	0x18
 651 0216 0C       		.uleb128 0xc
 652 0217 B6000000 		.4byte	.LASF30
 653 021b 07       		.byte	0x7
 654 021c 40       		.byte	0x40
 655 021d 9C000000 		.4byte	0x9c
 656 0221 1C       		.byte	0x1c
 657 0222 0C       		.uleb128 0xc
 658 0223 28010000 		.4byte	.LASF31
 659 0227 07       		.byte	0x7
 660 0228 41       		.byte	0x41
 661 0229 9C000000 		.4byte	0x9c
 662 022d 20       		.byte	0x20
 663 022e 0C       		.uleb128 0xc
 664 022f 4D010000 		.4byte	.LASF32
 665 0233 07       		.byte	0x7
 666 0234 42       		.byte	0x42
 667 0235 9C000000 		.4byte	0x9c
 668 0239 24       		.byte	0x24
 669 023a 0C       		.uleb128 0xc
 670 023b 6D030000 		.4byte	.LASF33
 671 023f 07       		.byte	0x7
 672 0240 43       		.byte	0x43
 673 0241 9C000000 		.4byte	0x9c
 674 0245 28       		.byte	0x28
 675 0246 0C       		.uleb128 0xc
 676 0247 DB000000 		.4byte	.LASF22
 677 024b 07       		.byte	0x7
 678 024c 44       		.byte	0x44
 679 024d 21010000 		.4byte	0x121
 680 0251 2C       		.byte	0x2c
ARM GAS  /tmp/cczlRLZa.s 			page 18


 681 0252 0C       		.uleb128 0xc
 682 0253 A0010000 		.4byte	.LASF34
 683 0257 07       		.byte	0x7
 684 0258 45       		.byte	0x45
 685 0259 9C000000 		.4byte	0x9c
 686 025d 30       		.byte	0x30
 687 025e 0C       		.uleb128 0xc
 688 025f E5000000 		.4byte	.LASF35
 689 0263 07       		.byte	0x7
 690 0264 46       		.byte	0x46
 691 0265 1C010000 		.4byte	0x11c
 692 0269 34       		.byte	0x34
 693 026a 0C       		.uleb128 0xc
 694 026b 04030000 		.4byte	.LASF36
 695 026f 07       		.byte	0x7
 696 0270 47       		.byte	0x47
 697 0271 9C000000 		.4byte	0x9c
 698 0275 38       		.byte	0x38
 699 0276 0C       		.uleb128 0xc
 700 0277 31010000 		.4byte	.LASF37
 701 027b 07       		.byte	0x7
 702 027c 48       		.byte	0x48
 703 027d 17010000 		.4byte	0x117
 704 0281 3C       		.byte	0x3c
 705 0282 0C       		.uleb128 0xc
 706 0283 1F040000 		.4byte	.LASF38
 707 0287 07       		.byte	0x7
 708 0288 49       		.byte	0x49
 709 0289 F2030000 		.4byte	0x3f2
 710 028d 40       		.byte	0x40
 711 028e 0C       		.uleb128 0xc
 712 028f 99030000 		.4byte	.LASF39
 713 0293 07       		.byte	0x7
 714 0294 4A       		.byte	0x4a
 715 0295 12010000 		.4byte	0x112
 716 0299 5C       		.byte	0x5c
 717 029a 0C       		.uleb128 0xc
 718 029b 45010000 		.4byte	.LASF40
 719 029f 07       		.byte	0x7
 720 02a0 4B       		.byte	0x4b
 721 02a1 9C000000 		.4byte	0x9c
 722 02a5 60       		.byte	0x60
 723 02a6 0C       		.uleb128 0xc
 724 02a7 30000000 		.4byte	.LASF41
 725 02ab 07       		.byte	0x7
 726 02ac 4C       		.byte	0x4c
 727 02ad 9C000000 		.4byte	0x9c
 728 02b1 64       		.byte	0x64
 729 02b2 0C       		.uleb128 0xc
 730 02b3 3B030000 		.4byte	.LASF42
 731 02b7 07       		.byte	0x7
 732 02b8 4D       		.byte	0x4d
 733 02b9 A1000000 		.4byte	0xa1
 734 02bd 68       		.byte	0x68
 735 02be 0C       		.uleb128 0xc
 736 02bf 7C020000 		.4byte	.LASF43
 737 02c3 07       		.byte	0x7
ARM GAS  /tmp/cczlRLZa.s 			page 19


 738 02c4 4E       		.byte	0x4e
 739 02c5 A1000000 		.4byte	0xa1
 740 02c9 6C       		.byte	0x6c
 741 02ca 0C       		.uleb128 0xc
 742 02cb C8000000 		.4byte	.LASF44
 743 02cf 07       		.byte	0x7
 744 02d0 4F       		.byte	0x4f
 745 02d1 9C000000 		.4byte	0x9c
 746 02d5 70       		.byte	0x70
 747 02d6 0C       		.uleb128 0xc
 748 02d7 27000000 		.4byte	.LASF45
 749 02db 07       		.byte	0x7
 750 02dc 50       		.byte	0x50
 751 02dd 9C000000 		.4byte	0x9c
 752 02e1 74       		.byte	0x74
 753 02e2 0C       		.uleb128 0xc
 754 02e3 1E000000 		.4byte	.LASF46
 755 02e7 07       		.byte	0x7
 756 02e8 51       		.byte	0x51
 757 02e9 9C000000 		.4byte	0x9c
 758 02ed 78       		.byte	0x78
 759 02ee 0C       		.uleb128 0xc
 760 02ef A3030000 		.4byte	.LASF47
 761 02f3 07       		.byte	0x7
 762 02f4 52       		.byte	0x52
 763 02f5 0C040000 		.4byte	0x40c
 764 02f9 7C       		.byte	0x7c
 765 02fa 0C       		.uleb128 0xc
 766 02fb 34040000 		.4byte	.LASF48
 767 02ff 07       		.byte	0x7
 768 0300 53       		.byte	0x53
 769 0301 9C000000 		.4byte	0x9c
 770 0305 E4       		.byte	0xe4
 771 0306 0C       		.uleb128 0xc
 772 0307 FB020000 		.4byte	.LASF49
 773 030b 07       		.byte	0x7
 774 030c 54       		.byte	0x54
 775 030d A1000000 		.4byte	0xa1
 776 0311 E8       		.byte	0xe8
 777 0312 0C       		.uleb128 0xc
 778 0313 14010000 		.4byte	.LASF50
 779 0317 07       		.byte	0x7
 780 0318 55       		.byte	0x55
 781 0319 DC000000 		.4byte	0xdc
 782 031d EC       		.byte	0xec
 783 031e 0F       		.uleb128 0xf
 784 031f AC000000 		.4byte	.LASF51
 785 0323 07       		.byte	0x7
 786 0324 56       		.byte	0x56
 787 0325 9C000000 		.4byte	0x9c
 788 0329 0001     		.2byte	0x100
 789 032b 0F       		.uleb128 0xf
 790 032c 3B010000 		.4byte	.LASF52
 791 0330 07       		.byte	0x7
 792 0331 57       		.byte	0x57
 793 0332 9C000000 		.4byte	0x9c
 794 0336 0401     		.2byte	0x104
ARM GAS  /tmp/cczlRLZa.s 			page 20


 795 0338 0F       		.uleb128 0xf
 796 0339 E8020000 		.4byte	.LASF53
 797 033d 07       		.byte	0x7
 798 033e 58       		.byte	0x58
 799 033f A1000000 		.4byte	0xa1
 800 0343 0801     		.2byte	0x108
 801 0345 0F       		.uleb128 0xf
 802 0346 2C040000 		.4byte	.LASF54
 803 034a 07       		.byte	0x7
 804 034b 59       		.byte	0x59
 805 034c 9C000000 		.4byte	0x9c
 806 0350 0C01     		.2byte	0x10c
 807 0352 0F       		.uleb128 0xf
 808 0353 4B000000 		.4byte	.LASF55
 809 0357 07       		.byte	0x7
 810 0358 5A       		.byte	0x5a
 811 0359 9C000000 		.4byte	0x9c
 812 035d 1001     		.2byte	0x110
 813 035f 0F       		.uleb128 0xf
 814 0360 F8000000 		.4byte	.LASF56
 815 0364 07       		.byte	0x7
 816 0365 5B       		.byte	0x5b
 817 0366 9C000000 		.4byte	0x9c
 818 036a 1401     		.2byte	0x114
 819 036c 0F       		.uleb128 0xf
 820 036d A9010000 		.4byte	.LASF57
 821 0371 07       		.byte	0x7
 822 0372 5C       		.byte	0x5c
 823 0373 9C000000 		.4byte	0x9c
 824 0377 1801     		.2byte	0x118
 825 0379 0F       		.uleb128 0xf
 826 037a 1F030000 		.4byte	.LASF58
 827 037e 07       		.byte	0x7
 828 037f 5D       		.byte	0x5d
 829 0380 A1000000 		.4byte	0xa1
 830 0384 1C01     		.2byte	0x11c
 831 0386 0F       		.uleb128 0xf
 832 0387 00000000 		.4byte	.LASF59
 833 038b 07       		.byte	0x7
 834 038c 5E       		.byte	0x5e
 835 038d A1000000 		.4byte	0xa1
 836 0391 2001     		.2byte	0x120
 837 0393 0F       		.uleb128 0xf
 838 0394 1E010000 		.4byte	.LASF60
 839 0398 07       		.byte	0x7
 840 0399 5F       		.byte	0x5f
 841 039a C2000000 		.4byte	0xc2
 842 039e 2401     		.2byte	0x124
 843 03a0 0F       		.uleb128 0xf
 844 03a1 06010000 		.4byte	.LASF61
 845 03a5 07       		.byte	0x7
 846 03a6 60       		.byte	0x60
 847 03a7 9C000000 		.4byte	0x9c
 848 03ab 3401     		.2byte	0x134
 849 03ad 0F       		.uleb128 0xf
 850 03ae B7010000 		.4byte	.LASF62
 851 03b2 07       		.byte	0x7
ARM GAS  /tmp/cczlRLZa.s 			page 21


 852 03b3 61       		.byte	0x61
 853 03b4 9C000000 		.4byte	0x9c
 854 03b8 3801     		.2byte	0x138
 855 03ba 0F       		.uleb128 0xf
 856 03bb 2D030000 		.4byte	.LASF63
 857 03bf 07       		.byte	0x7
 858 03c0 62       		.byte	0x62
 859 03c1 A1000000 		.4byte	0xa1
 860 03c5 3C01     		.2byte	0x13c
 861 03c7 0F       		.uleb128 0xf
 862 03c8 0F000000 		.4byte	.LASF64
 863 03cc 07       		.byte	0x7
 864 03cd 63       		.byte	0x63
 865 03ce A1000000 		.4byte	0xa1
 866 03d2 4001     		.2byte	0x140
 867 03d4 0F       		.uleb128 0xf
 868 03d5 8A030000 		.4byte	.LASF65
 869 03d9 07       		.byte	0x7
 870 03da 64       		.byte	0x64
 871 03db A1000000 		.4byte	0xa1
 872 03df 4401     		.2byte	0x144
 873 03e1 00       		.byte	0
 874 03e2 07       		.uleb128 0x7
 875 03e3 9C000000 		.4byte	0x9c
 876 03e7 F2030000 		.4byte	0x3f2
 877 03eb 08       		.uleb128 0x8
 878 03ec A6000000 		.4byte	0xa6
 879 03f0 06       		.byte	0x6
 880 03f1 00       		.byte	0
 881 03f2 05       		.uleb128 0x5
 882 03f3 E2030000 		.4byte	0x3e2
 883 03f7 07       		.uleb128 0x7
 884 03f8 A1000000 		.4byte	0xa1
 885 03fc 07040000 		.4byte	0x407
 886 0400 08       		.uleb128 0x8
 887 0401 A6000000 		.4byte	0xa6
 888 0405 19       		.byte	0x19
 889 0406 00       		.byte	0
 890 0407 06       		.uleb128 0x6
 891 0408 F7030000 		.4byte	0x3f7
 892 040c 05       		.uleb128 0x5
 893 040d 07040000 		.4byte	0x407
 894 0411 0D       		.uleb128 0xd
 895 0412 506D6300 		.ascii	"Pmc\000"
 896 0416 07       		.byte	0x7
 897 0417 65       		.byte	0x65
 898 0418 B9010000 		.4byte	0x1b9
 899 041c 0B       		.uleb128 0xb
 900 041d 18       		.byte	0x18
 901 041e 08       		.byte	0x8
 902 041f 37       		.byte	0x37
 903 0420 6D040000 		.4byte	0x46d
 904 0424 0C       		.uleb128 0xc
 905 0425 17030000 		.4byte	.LASF66
 906 0429 08       		.byte	0x8
 907 042a 38       		.byte	0x38
 908 042b 9C000000 		.4byte	0x9c
ARM GAS  /tmp/cczlRLZa.s 			page 22


 909 042f 00       		.byte	0
 910 0430 0C       		.uleb128 0xc
 911 0431 41000000 		.4byte	.LASF67
 912 0435 08       		.byte	0x8
 913 0436 39       		.byte	0x39
 914 0437 9C000000 		.4byte	0x9c
 915 043b 04       		.byte	0x4
 916 043c 0C       		.uleb128 0xc
 917 043d C0000000 		.4byte	.LASF68
 918 0441 08       		.byte	0x8
 919 0442 3A       		.byte	0x3a
 920 0443 9C000000 		.4byte	0x9c
 921 0447 08       		.byte	0x8
 922 0448 0C       		.uleb128 0xc
 923 0449 98000000 		.4byte	.LASF69
 924 044d 08       		.byte	0x8
 925 044e 3B       		.byte	0x3b
 926 044f 9C000000 		.4byte	0x9c
 927 0453 0C       		.byte	0xc
 928 0454 0C       		.uleb128 0xc
 929 0455 5D000000 		.4byte	.LASF70
 930 0459 08       		.byte	0x8
 931 045a 3C       		.byte	0x3c
 932 045b 9C000000 		.4byte	0x9c
 933 045f 10       		.byte	0x10
 934 0460 0C       		.uleb128 0xc
 935 0461 DE030000 		.4byte	.LASF71
 936 0465 08       		.byte	0x8
 937 0466 3D       		.byte	0x3d
 938 0467 A1000000 		.4byte	0xa1
 939 046b 14       		.byte	0x14
 940 046c 00       		.byte	0
 941 046d 03       		.uleb128 0x3
 942 046e 27040000 		.4byte	.LASF72
 943 0472 08       		.byte	0x8
 944 0473 3E       		.byte	0x3e
 945 0474 1C040000 		.4byte	0x41c
 946 0478 10       		.uleb128 0x10
 947 0479 ED000000 		.4byte	0xed
 948 047d 01       		.byte	0x1
 949 047e 3F       		.byte	0x3f
 950 047f 05       		.uleb128 0x5
 951 0480 03       		.byte	0x3
 952 0481 00000000 		.4byte	SystemCoreClock
 953 0485 11       		.uleb128 0x11
 954 0486 86000000 		.4byte	.LASF78
 955 048a 01       		.byte	0x1
 956 048b D4       		.byte	0xd4
 957 048c 00000000 		.4byte	.LFB133
 958 0490 74000000 		.4byte	.LFE133-.LFB133
 959 0494 01       		.uleb128 0x1
 960 0495 9C       		.byte	0x9c
 961 0496 A8040000 		.4byte	0x4a8
 962 049a 12       		.uleb128 0x12
 963 049b 57010000 		.4byte	.LASF79
 964 049f 01       		.byte	0x1
 965 04a0 D4       		.byte	0xd4
ARM GAS  /tmp/cczlRLZa.s 			page 23


 966 04a1 91000000 		.4byte	0x91
 967 04a5 01       		.uleb128 0x1
 968 04a6 50       		.byte	0x50
 969 04a7 00       		.byte	0
 970 04a8 13       		.uleb128 0x13
 971 04a9 70000000 		.4byte	.LASF73
 972 04ad 01       		.byte	0x1
 973 04ae 76       		.byte	0x76
 974 04af 00000000 		.4byte	.LFB132
 975 04b3 E4000000 		.4byte	.LFE132-.LFB132
 976 04b7 01       		.uleb128 0x1
 977 04b8 9C       		.byte	0x9c
 978 04b9 13       		.uleb128 0x13
 979 04ba 0C030000 		.4byte	.LASF74
 980 04be 01       		.byte	0x1
 981 04bf 45       		.byte	0x45
 982 04c0 00000000 		.4byte	.LFB131
 983 04c4 8C000000 		.4byte	.LFE131-.LFB131
 984 04c8 01       		.uleb128 0x1
 985 04c9 9C       		.byte	0x9c
 986 04ca 00       		.byte	0
 987              		.section	.debug_abbrev,"",%progbits
 988              	.Ldebug_abbrev0:
 989 0000 01       		.uleb128 0x1
 990 0001 11       		.uleb128 0x11
 991 0002 01       		.byte	0x1
 992 0003 25       		.uleb128 0x25
 993 0004 0E       		.uleb128 0xe
 994 0005 13       		.uleb128 0x13
 995 0006 0B       		.uleb128 0xb
 996 0007 03       		.uleb128 0x3
 997 0008 0E       		.uleb128 0xe
 998 0009 1B       		.uleb128 0x1b
 999 000a 0E       		.uleb128 0xe
 1000 000b 55       		.uleb128 0x55
 1001 000c 17       		.uleb128 0x17
 1002 000d 11       		.uleb128 0x11
 1003 000e 01       		.uleb128 0x1
 1004 000f 10       		.uleb128 0x10
 1005 0010 17       		.uleb128 0x17
 1006 0011 00       		.byte	0
 1007 0012 00       		.byte	0
 1008 0013 02       		.uleb128 0x2
 1009 0014 24       		.uleb128 0x24
 1010 0015 00       		.byte	0
 1011 0016 0B       		.uleb128 0xb
 1012 0017 0B       		.uleb128 0xb
 1013 0018 3E       		.uleb128 0x3e
 1014 0019 0B       		.uleb128 0xb
 1015 001a 03       		.uleb128 0x3
 1016 001b 0E       		.uleb128 0xe
 1017 001c 00       		.byte	0
 1018 001d 00       		.byte	0
 1019 001e 03       		.uleb128 0x3
 1020 001f 16       		.uleb128 0x16
 1021 0020 00       		.byte	0
 1022 0021 03       		.uleb128 0x3
ARM GAS  /tmp/cczlRLZa.s 			page 24


 1023 0022 0E       		.uleb128 0xe
 1024 0023 3A       		.uleb128 0x3a
 1025 0024 0B       		.uleb128 0xb
 1026 0025 3B       		.uleb128 0x3b
 1027 0026 0B       		.uleb128 0xb
 1028 0027 49       		.uleb128 0x49
 1029 0028 13       		.uleb128 0x13
 1030 0029 00       		.byte	0
 1031 002a 00       		.byte	0
 1032 002b 04       		.uleb128 0x4
 1033 002c 24       		.uleb128 0x24
 1034 002d 00       		.byte	0
 1035 002e 0B       		.uleb128 0xb
 1036 002f 0B       		.uleb128 0xb
 1037 0030 3E       		.uleb128 0x3e
 1038 0031 0B       		.uleb128 0xb
 1039 0032 03       		.uleb128 0x3
 1040 0033 08       		.uleb128 0x8
 1041 0034 00       		.byte	0
 1042 0035 00       		.byte	0
 1043 0036 05       		.uleb128 0x5
 1044 0037 35       		.uleb128 0x35
 1045 0038 00       		.byte	0
 1046 0039 49       		.uleb128 0x49
 1047 003a 13       		.uleb128 0x13
 1048 003b 00       		.byte	0
 1049 003c 00       		.byte	0
 1050 003d 06       		.uleb128 0x6
 1051 003e 26       		.uleb128 0x26
 1052 003f 00       		.byte	0
 1053 0040 49       		.uleb128 0x49
 1054 0041 13       		.uleb128 0x13
 1055 0042 00       		.byte	0
 1056 0043 00       		.byte	0
 1057 0044 07       		.uleb128 0x7
 1058 0045 01       		.uleb128 0x1
 1059 0046 01       		.byte	0x1
 1060 0047 49       		.uleb128 0x49
 1061 0048 13       		.uleb128 0x13
 1062 0049 01       		.uleb128 0x1
 1063 004a 13       		.uleb128 0x13
 1064 004b 00       		.byte	0
 1065 004c 00       		.byte	0
 1066 004d 08       		.uleb128 0x8
 1067 004e 21       		.uleb128 0x21
 1068 004f 00       		.byte	0
 1069 0050 49       		.uleb128 0x49
 1070 0051 13       		.uleb128 0x13
 1071 0052 2F       		.uleb128 0x2f
 1072 0053 0B       		.uleb128 0xb
 1073 0054 00       		.byte	0
 1074 0055 00       		.byte	0
 1075 0056 09       		.uleb128 0x9
 1076 0057 34       		.uleb128 0x34
 1077 0058 00       		.byte	0
 1078 0059 03       		.uleb128 0x3
 1079 005a 0E       		.uleb128 0xe
ARM GAS  /tmp/cczlRLZa.s 			page 25


 1080 005b 3A       		.uleb128 0x3a
 1081 005c 0B       		.uleb128 0xb
 1082 005d 3B       		.uleb128 0x3b
 1083 005e 05       		.uleb128 0x5
 1084 005f 49       		.uleb128 0x49
 1085 0060 13       		.uleb128 0x13
 1086 0061 3F       		.uleb128 0x3f
 1087 0062 19       		.uleb128 0x19
 1088 0063 3C       		.uleb128 0x3c
 1089 0064 19       		.uleb128 0x19
 1090 0065 00       		.byte	0
 1091 0066 00       		.byte	0
 1092 0067 0A       		.uleb128 0xa
 1093 0068 34       		.uleb128 0x34
 1094 0069 00       		.byte	0
 1095 006a 03       		.uleb128 0x3
 1096 006b 0E       		.uleb128 0xe
 1097 006c 3A       		.uleb128 0x3a
 1098 006d 0B       		.uleb128 0xb
 1099 006e 3B       		.uleb128 0x3b
 1100 006f 0B       		.uleb128 0xb
 1101 0070 49       		.uleb128 0x49
 1102 0071 13       		.uleb128 0x13
 1103 0072 3F       		.uleb128 0x3f
 1104 0073 19       		.uleb128 0x19
 1105 0074 3C       		.uleb128 0x3c
 1106 0075 19       		.uleb128 0x19
 1107 0076 00       		.byte	0
 1108 0077 00       		.byte	0
 1109 0078 0B       		.uleb128 0xb
 1110 0079 13       		.uleb128 0x13
 1111 007a 01       		.byte	0x1
 1112 007b 0B       		.uleb128 0xb
 1113 007c 0B       		.uleb128 0xb
 1114 007d 3A       		.uleb128 0x3a
 1115 007e 0B       		.uleb128 0xb
 1116 007f 3B       		.uleb128 0x3b
 1117 0080 0B       		.uleb128 0xb
 1118 0081 01       		.uleb128 0x1
 1119 0082 13       		.uleb128 0x13
 1120 0083 00       		.byte	0
 1121 0084 00       		.byte	0
 1122 0085 0C       		.uleb128 0xc
 1123 0086 0D       		.uleb128 0xd
 1124 0087 00       		.byte	0
 1125 0088 03       		.uleb128 0x3
 1126 0089 0E       		.uleb128 0xe
 1127 008a 3A       		.uleb128 0x3a
 1128 008b 0B       		.uleb128 0xb
 1129 008c 3B       		.uleb128 0x3b
 1130 008d 0B       		.uleb128 0xb
 1131 008e 49       		.uleb128 0x49
 1132 008f 13       		.uleb128 0x13
 1133 0090 38       		.uleb128 0x38
 1134 0091 0B       		.uleb128 0xb
 1135 0092 00       		.byte	0
 1136 0093 00       		.byte	0
ARM GAS  /tmp/cczlRLZa.s 			page 26


 1137 0094 0D       		.uleb128 0xd
 1138 0095 16       		.uleb128 0x16
 1139 0096 00       		.byte	0
 1140 0097 03       		.uleb128 0x3
 1141 0098 08       		.uleb128 0x8
 1142 0099 3A       		.uleb128 0x3a
 1143 009a 0B       		.uleb128 0xb
 1144 009b 3B       		.uleb128 0x3b
 1145 009c 0B       		.uleb128 0xb
 1146 009d 49       		.uleb128 0x49
 1147 009e 13       		.uleb128 0x13
 1148 009f 00       		.byte	0
 1149 00a0 00       		.byte	0
 1150 00a1 0E       		.uleb128 0xe
 1151 00a2 13       		.uleb128 0x13
 1152 00a3 01       		.byte	0x1
 1153 00a4 0B       		.uleb128 0xb
 1154 00a5 05       		.uleb128 0x5
 1155 00a6 3A       		.uleb128 0x3a
 1156 00a7 0B       		.uleb128 0xb
 1157 00a8 3B       		.uleb128 0x3b
 1158 00a9 0B       		.uleb128 0xb
 1159 00aa 01       		.uleb128 0x1
 1160 00ab 13       		.uleb128 0x13
 1161 00ac 00       		.byte	0
 1162 00ad 00       		.byte	0
 1163 00ae 0F       		.uleb128 0xf
 1164 00af 0D       		.uleb128 0xd
 1165 00b0 00       		.byte	0
 1166 00b1 03       		.uleb128 0x3
 1167 00b2 0E       		.uleb128 0xe
 1168 00b3 3A       		.uleb128 0x3a
 1169 00b4 0B       		.uleb128 0xb
 1170 00b5 3B       		.uleb128 0x3b
 1171 00b6 0B       		.uleb128 0xb
 1172 00b7 49       		.uleb128 0x49
 1173 00b8 13       		.uleb128 0x13
 1174 00b9 38       		.uleb128 0x38
 1175 00ba 05       		.uleb128 0x5
 1176 00bb 00       		.byte	0
 1177 00bc 00       		.byte	0
 1178 00bd 10       		.uleb128 0x10
 1179 00be 34       		.uleb128 0x34
 1180 00bf 00       		.byte	0
 1181 00c0 47       		.uleb128 0x47
 1182 00c1 13       		.uleb128 0x13
 1183 00c2 3A       		.uleb128 0x3a
 1184 00c3 0B       		.uleb128 0xb
 1185 00c4 3B       		.uleb128 0x3b
 1186 00c5 0B       		.uleb128 0xb
 1187 00c6 02       		.uleb128 0x2
 1188 00c7 18       		.uleb128 0x18
 1189 00c8 00       		.byte	0
 1190 00c9 00       		.byte	0
 1191 00ca 11       		.uleb128 0x11
 1192 00cb 2E       		.uleb128 0x2e
 1193 00cc 01       		.byte	0x1
ARM GAS  /tmp/cczlRLZa.s 			page 27


 1194 00cd 3F       		.uleb128 0x3f
 1195 00ce 19       		.uleb128 0x19
 1196 00cf 03       		.uleb128 0x3
 1197 00d0 0E       		.uleb128 0xe
 1198 00d1 3A       		.uleb128 0x3a
 1199 00d2 0B       		.uleb128 0xb
 1200 00d3 3B       		.uleb128 0x3b
 1201 00d4 0B       		.uleb128 0xb
 1202 00d5 27       		.uleb128 0x27
 1203 00d6 19       		.uleb128 0x19
 1204 00d7 11       		.uleb128 0x11
 1205 00d8 01       		.uleb128 0x1
 1206 00d9 12       		.uleb128 0x12
 1207 00da 06       		.uleb128 0x6
 1208 00db 40       		.uleb128 0x40
 1209 00dc 18       		.uleb128 0x18
 1210 00dd 9742     		.uleb128 0x2117
 1211 00df 19       		.uleb128 0x19
 1212 00e0 01       		.uleb128 0x1
 1213 00e1 13       		.uleb128 0x13
 1214 00e2 00       		.byte	0
 1215 00e3 00       		.byte	0
 1216 00e4 12       		.uleb128 0x12
 1217 00e5 05       		.uleb128 0x5
 1218 00e6 00       		.byte	0
 1219 00e7 03       		.uleb128 0x3
 1220 00e8 0E       		.uleb128 0xe
 1221 00e9 3A       		.uleb128 0x3a
 1222 00ea 0B       		.uleb128 0xb
 1223 00eb 3B       		.uleb128 0x3b
 1224 00ec 0B       		.uleb128 0xb
 1225 00ed 49       		.uleb128 0x49
 1226 00ee 13       		.uleb128 0x13
 1227 00ef 02       		.uleb128 0x2
 1228 00f0 18       		.uleb128 0x18
 1229 00f1 00       		.byte	0
 1230 00f2 00       		.byte	0
 1231 00f3 13       		.uleb128 0x13
 1232 00f4 2E       		.uleb128 0x2e
 1233 00f5 00       		.byte	0
 1234 00f6 3F       		.uleb128 0x3f
 1235 00f7 19       		.uleb128 0x19
 1236 00f8 03       		.uleb128 0x3
 1237 00f9 0E       		.uleb128 0xe
 1238 00fa 3A       		.uleb128 0x3a
 1239 00fb 0B       		.uleb128 0xb
 1240 00fc 3B       		.uleb128 0x3b
 1241 00fd 0B       		.uleb128 0xb
 1242 00fe 27       		.uleb128 0x27
 1243 00ff 19       		.uleb128 0x19
 1244 0100 11       		.uleb128 0x11
 1245 0101 01       		.uleb128 0x1
 1246 0102 12       		.uleb128 0x12
 1247 0103 06       		.uleb128 0x6
 1248 0104 40       		.uleb128 0x40
 1249 0105 18       		.uleb128 0x18
 1250 0106 9742     		.uleb128 0x2117
ARM GAS  /tmp/cczlRLZa.s 			page 28


 1251 0108 19       		.uleb128 0x19
 1252 0109 00       		.byte	0
 1253 010a 00       		.byte	0
 1254 010b 00       		.byte	0
 1255              		.section	.debug_aranges,"",%progbits
 1256 0000 2C000000 		.4byte	0x2c
 1257 0004 0200     		.2byte	0x2
 1258 0006 00000000 		.4byte	.Ldebug_info0
 1259 000a 04       		.byte	0x4
 1260 000b 00       		.byte	0
 1261 000c 0000     		.2byte	0
 1262 000e 0000     		.2byte	0
 1263 0010 00000000 		.4byte	.LFB131
 1264 0014 8C000000 		.4byte	.LFE131-.LFB131
 1265 0018 00000000 		.4byte	.LFB132
 1266 001c E4000000 		.4byte	.LFE132-.LFB132
 1267 0020 00000000 		.4byte	.LFB133
 1268 0024 74000000 		.4byte	.LFE133-.LFB133
 1269 0028 00000000 		.4byte	0
 1270 002c 00000000 		.4byte	0
 1271              		.section	.debug_ranges,"",%progbits
 1272              	.Ldebug_ranges0:
 1273 0000 00000000 		.4byte	.LFB131
 1274 0004 8C000000 		.4byte	.LFE131
 1275 0008 00000000 		.4byte	.LFB132
 1276 000c E4000000 		.4byte	.LFE132
 1277 0010 00000000 		.4byte	.LFB133
 1278 0014 74000000 		.4byte	.LFE133
 1279 0018 00000000 		.4byte	0
 1280 001c 00000000 		.4byte	0
 1281              		.section	.debug_line,"",%progbits
 1282              	.Ldebug_line0:
 1283 0000 5B020000 		.section	.debug_str,"MS",%progbits,1
 1283      02009D01 
 1283      00000201 
 1283      FB0E0D00 
 1283      01010101 
 1284              	.LASF59:
 1285 0000 504D435F 		.ascii	"PMC_SLPWK_ASR0\000"
 1285      534C5057 
 1285      4B5F4153 
 1285      523000
 1286              	.LASF64:
 1287 000f 504D435F 		.ascii	"PMC_SLPWK_ASR1\000"
 1287      534C5057 
 1287      4B5F4153 
 1287      523100
 1288              	.LASF46:
 1289 001e 504D435F 		.ascii	"PMC_FOCR\000"
 1289      464F4352 
 1289      00
 1290              	.LASF45:
 1291 0027 504D435F 		.ascii	"PMC_FSPR\000"
 1291      46535052 
 1291      00
 1292              	.LASF41:
 1293 0030 504D435F 		.ascii	"PMC_IDR\000"
ARM GAS  /tmp/cczlRLZa.s 			page 29


 1293      49445200 
 1294              	.LASF26:
 1295 0038 504D435F 		.ascii	"PMC_SCSR\000"
 1295      53435352 
 1295      00
 1296              	.LASF67:
 1297 0041 53555043 		.ascii	"SUPC_SMMR\000"
 1297      5F534D4D 
 1297      5200
 1298              	.LASF55:
 1299 004b 504D435F 		.ascii	"PMC_OCR\000"
 1299      4F435200 
 1300              	.LASF2:
 1301 0053 73686F72 		.ascii	"short int\000"
 1301      7420696E 
 1301      7400
 1302              	.LASF70:
 1303 005d 53555043 		.ascii	"SUPC_WUIR\000"
 1303      5F575549 
 1303      5200
 1304              	.LASF13:
 1305 0067 73697A65 		.ascii	"sizetype\000"
 1305      74797065 
 1305      00
 1306              	.LASF73:
 1307 0070 53797374 		.ascii	"SystemCoreClockUpdate\000"
 1307      656D436F 
 1307      7265436C 
 1307      6F636B55 
 1307      70646174 
 1308              	.LASF78:
 1309 0086 73797374 		.ascii	"system_init_flash\000"
 1309      656D5F69 
 1309      6E69745F 
 1309      666C6173 
 1309      6800
 1310              	.LASF69:
 1311 0098 53555043 		.ascii	"SUPC_WUMR\000"
 1311      5F57554D 
 1311      5200
 1312              	.LASF27:
 1313 00a2 504D435F 		.ascii	"PMC_PCER0\000"
 1313      50434552 
 1313      3000
 1314              	.LASF51:
 1315 00ac 504D435F 		.ascii	"PMC_PCER1\000"
 1315      50434552 
 1315      3100
 1316              	.LASF30:
 1317 00b6 434B4752 		.ascii	"CKGR_UCKR\000"
 1317      5F55434B 
 1317      5200
 1318              	.LASF68:
 1319 00c0 53555043 		.ascii	"SUPC_MR\000"
 1319      5F4D5200 
 1320              	.LASF44:
 1321 00c8 504D435F 		.ascii	"PMC_FSMR\000"
ARM GAS  /tmp/cczlRLZa.s 			page 30


 1321      46534D52 
 1321      00
 1322              	.LASF20:
 1323 00d1 52657365 		.ascii	"Reserved1\000"
 1323      72766564 
 1323      3100
 1324              	.LASF22:
 1325 00db 52657365 		.ascii	"Reserved2\000"
 1325      72766564 
 1325      3200
 1326              	.LASF35:
 1327 00e5 52657365 		.ascii	"Reserved3\000"
 1327      72766564 
 1327      3300
 1328              	.LASF16:
 1329 00ef 45454643 		.ascii	"EEFC_FMR\000"
 1329      5F464D52 
 1329      00
 1330              	.LASF56:
 1331 00f8 504D435F 		.ascii	"PMC_SLPWK_ER0\000"
 1331      534C5057 
 1331      4B5F4552 
 1331      3000
 1332              	.LASF61:
 1333 0106 504D435F 		.ascii	"PMC_SLPWK_ER1\000"
 1333      534C5057 
 1333      4B5F4552 
 1333      3100
 1334              	.LASF50:
 1335 0114 52657365 		.ascii	"Reserved7\000"
 1335      72766564 
 1335      3700
 1336              	.LASF60:
 1337 011e 52657365 		.ascii	"Reserved8\000"
 1337      72766564 
 1337      3800
 1338              	.LASF31:
 1339 0128 434B4752 		.ascii	"CKGR_MOR\000"
 1339      5F4D4F52 
 1339      00
 1340              	.LASF37:
 1341 0131 52657365 		.ascii	"Reserved4\000"
 1341      72766564 
 1341      3400
 1342              	.LASF52:
 1343 013b 504D435F 		.ascii	"PMC_PCDR1\000"
 1343      50434452 
 1343      3100
 1344              	.LASF40:
 1345 0145 504D435F 		.ascii	"PMC_IER\000"
 1345      49455200 
 1346              	.LASF32:
 1347 014d 434B4752 		.ascii	"CKGR_MCFR\000"
 1347      5F4D4346 
 1347      5200
 1348              	.LASF79:
 1349 0157 756C5F63 		.ascii	"ul_clk\000"
ARM GAS  /tmp/cczlRLZa.s 			page 31


 1349      6C6B00
 1350              	.LASF8:
 1351 015e 6C6F6E67 		.ascii	"long long int\000"
 1351      206C6F6E 
 1351      6720696E 
 1351      7400
 1352              	.LASF77:
 1353 016c 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70_RTOS"
 1353      652F746F 
 1353      72626A6F 
 1353      726E2F65 
 1353      636C6970 
 1354 019f 00       		.ascii	"\000"
 1355              	.LASF34:
 1356 01a0 504D435F 		.ascii	"PMC_MCKR\000"
 1356      4D434B52 
 1356      00
 1357              	.LASF57:
 1358 01a9 504D435F 		.ascii	"PMC_SLPWK_DR0\000"
 1358      534C5057 
 1358      4B5F4452 
 1358      3000
 1359              	.LASF62:
 1360 01b7 504D435F 		.ascii	"PMC_SLPWK_DR1\000"
 1360      534C5057 
 1360      4B5F4452 
 1360      3100
 1361              	.LASF4:
 1362 01c5 6C6F6E67 		.ascii	"long int\000"
 1362      20696E74 
 1362      00
 1363              	.LASF21:
 1364 01ce 45454643 		.ascii	"EEFC_VERSION\000"
 1364      5F564552 
 1364      53494F4E 
 1364      00
 1365              	.LASF75:
 1366 01db 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 1366      43393920 
 1366      362E332E 
 1366      31203230 
 1366      31373036 
 1367 020e 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 1367      76352D64 
 1367      3136202D 
 1367      6D666C6F 
 1367      61742D61 
 1368 0241 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 1368      6E2D7365 
 1368      6374696F 
 1368      6E73202D 
 1368      66646174 
 1369 0274 6F6E7374 		.ascii	"onstant\000"
 1369      616E7400 
 1370              	.LASF43:
 1371 027c 504D435F 		.ascii	"PMC_IMR\000"
 1371      494D5200 
ARM GAS  /tmp/cczlRLZa.s 			page 32


 1372              	.LASF1:
 1373 0284 756E7369 		.ascii	"unsigned char\000"
 1373      676E6564 
 1373      20636861 
 1373      7200
 1374              	.LASF24:
 1375 0292 504D435F 		.ascii	"PMC_SCER\000"
 1375      53434552 
 1375      00
 1376              	.LASF0:
 1377 029b 7369676E 		.ascii	"signed char\000"
 1377      65642063 
 1377      68617200 
 1378              	.LASF9:
 1379 02a7 6C6F6E67 		.ascii	"long long unsigned int\000"
 1379      206C6F6E 
 1379      6720756E 
 1379      7369676E 
 1379      65642069 
 1380              	.LASF12:
 1381 02be 75696E74 		.ascii	"uint32_t\000"
 1381      33325F74 
 1381      00
 1382              	.LASF10:
 1383 02c7 756E7369 		.ascii	"unsigned int\000"
 1383      676E6564 
 1383      20696E74 
 1383      00
 1384              	.LASF28:
 1385 02d4 504D435F 		.ascii	"PMC_PCDR0\000"
 1385      50434452 
 1385      3000
 1386              	.LASF29:
 1387 02de 504D435F 		.ascii	"PMC_PCSR0\000"
 1387      50435352 
 1387      3000
 1388              	.LASF53:
 1389 02e8 504D435F 		.ascii	"PMC_PCSR1\000"
 1389      50435352 
 1389      3100
 1390              	.LASF17:
 1391 02f2 45454643 		.ascii	"EEFC_FCR\000"
 1391      5F464352 
 1391      00
 1392              	.LASF49:
 1393 02fb 504D435F 		.ascii	"PMC_WPSR\000"
 1393      57505352 
 1393      00
 1394              	.LASF36:
 1395 0304 504D435F 		.ascii	"PMC_USB\000"
 1395      55534200 
 1396              	.LASF74:
 1397 030c 53797374 		.ascii	"SystemInit\000"
 1397      656D496E 
 1397      697400
 1398              	.LASF66:
 1399 0317 53555043 		.ascii	"SUPC_CR\000"
ARM GAS  /tmp/cczlRLZa.s 			page 33


 1399      5F435200 
 1400              	.LASF58:
 1401 031f 504D435F 		.ascii	"PMC_SLPWK_SR0\000"
 1401      534C5057 
 1401      4B5F5352 
 1401      3000
 1402              	.LASF63:
 1403 032d 504D435F 		.ascii	"PMC_SLPWK_SR1\000"
 1403      534C5057 
 1403      4B5F5352 
 1403      3100
 1404              	.LASF42:
 1405 033b 504D435F 		.ascii	"PMC_SR\000"
 1405      535200
 1406              	.LASF11:
 1407 0342 696E7433 		.ascii	"int32_t\000"
 1407      325F7400 
 1408              	.LASF3:
 1409 034a 73686F72 		.ascii	"short unsigned int\000"
 1409      7420756E 
 1409      7369676E 
 1409      65642069 
 1409      6E7400
 1410              	.LASF15:
 1411 035d 53797374 		.ascii	"SystemCoreClock\000"
 1411      656D436F 
 1411      7265436C 
 1411      6F636B00 
 1412              	.LASF33:
 1413 036d 434B4752 		.ascii	"CKGR_PLLAR\000"
 1413      5F504C4C 
 1413      415200
 1414              	.LASF7:
 1415 0378 6C6F6E67 		.ascii	"long unsigned int\000"
 1415      20756E73 
 1415      69676E65 
 1415      6420696E 
 1415      7400
 1416              	.LASF65:
 1417 038a 504D435F 		.ascii	"PMC_SLPWK_AIPR\000"
 1417      534C5057 
 1417      4B5F4149 
 1417      505200
 1418              	.LASF39:
 1419 0399 52657365 		.ascii	"Reserved5\000"
 1419      72766564 
 1419      3500
 1420              	.LASF47:
 1421 03a3 52657365 		.ascii	"Reserved6\000"
 1421      72766564 
 1421      3600
 1422              	.LASF6:
 1423 03ad 5F5F7569 		.ascii	"__uint32_t\000"
 1423      6E743332 
 1423      5F7400
 1424              	.LASF23:
 1425 03b8 45454643 		.ascii	"EEFC_WPMR\000"
ARM GAS  /tmp/cczlRLZa.s 			page 34


 1425      5F57504D 
 1425      5200
 1426              	.LASF19:
 1427 03c2 45454643 		.ascii	"EEFC_FRR\000"
 1427      5F465252 
 1427      00
 1428              	.LASF5:
 1429 03cb 5F5F696E 		.ascii	"__int32_t\000"
 1429      7433325F 
 1429      7400
 1430              	.LASF18:
 1431 03d5 45454643 		.ascii	"EEFC_FSR\000"
 1431      5F465352 
 1431      00
 1432              	.LASF71:
 1433 03de 53555043 		.ascii	"SUPC_SR\000"
 1433      5F535200 
 1434              	.LASF76:
 1435 03e6 2E2E2F76 		.ascii	"../variants/same70/system_same70.c\000"
 1435      61726961 
 1435      6E74732F 
 1435      73616D65 
 1435      37302F73 
 1436              	.LASF25:
 1437 0409 504D435F 		.ascii	"PMC_SCDR\000"
 1437      53434452 
 1437      00
 1438              	.LASF14:
 1439 0412 49544D5F 		.ascii	"ITM_RxBuffer\000"
 1439      52784275 
 1439      66666572 
 1439      00
 1440              	.LASF38:
 1441 041f 504D435F 		.ascii	"PMC_PCK\000"
 1441      50434B00 
 1442              	.LASF72:
 1443 0427 53757063 		.ascii	"Supc\000"
 1443      00
 1444              	.LASF54:
 1445 042c 504D435F 		.ascii	"PMC_PCR\000"
 1445      50435200 
 1446              	.LASF48:
 1447 0434 504D435F 		.ascii	"PMC_WPMR\000"
 1447      57504D52 
 1447      00
 1448              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
