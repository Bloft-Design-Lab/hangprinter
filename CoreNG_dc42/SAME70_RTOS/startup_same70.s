ARM GAS  /tmp/ccNltSB9.s 			page 1


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
  12              		.file	"startup_same70.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.Dummy_Handler,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	Dummy_Handler
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	Dummy_Handler, %function
  25              	Dummy_Handler:
  26              	.LFB147:
  27              		.file 1 "../variants/same70/startup_same70.c"
   1:../variants/same70/startup_same70.c **** /**
   2:../variants/same70/startup_same70.c ****  * \file
   3:../variants/same70/startup_same70.c ****  *
   4:../variants/same70/startup_same70.c ****  * Copyright (c) 2015 Atmel Corporation. All rights reserved.
   5:../variants/same70/startup_same70.c ****  *
   6:../variants/same70/startup_same70.c ****  * \asf_license_start
   7:../variants/same70/startup_same70.c ****  *
   8:../variants/same70/startup_same70.c ****  * \page License
   9:../variants/same70/startup_same70.c ****  *
  10:../variants/same70/startup_same70.c ****  * Redistribution and use in source and binary forms, with or without
  11:../variants/same70/startup_same70.c ****  * modification, are permitted provided that the following conditions are met:
  12:../variants/same70/startup_same70.c ****  *
  13:../variants/same70/startup_same70.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  14:../variants/same70/startup_same70.c ****  *    this list of conditions and the following disclaimer.
  15:../variants/same70/startup_same70.c ****  *
  16:../variants/same70/startup_same70.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  17:../variants/same70/startup_same70.c ****  *    this list of conditions and the following disclaimer in the documentation
  18:../variants/same70/startup_same70.c ****  *    and/or other materials provided with the distribution.
  19:../variants/same70/startup_same70.c ****  *
  20:../variants/same70/startup_same70.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  21:../variants/same70/startup_same70.c ****  *    from this software without specific prior written permission.
  22:../variants/same70/startup_same70.c ****  *
  23:../variants/same70/startup_same70.c ****  * 4. This software may only be redistributed and used in connection with an
  24:../variants/same70/startup_same70.c ****  *    Atmel microcontroller product.
  25:../variants/same70/startup_same70.c ****  *
  26:../variants/same70/startup_same70.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  27:../variants/same70/startup_same70.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  28:../variants/same70/startup_same70.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
  29:../variants/same70/startup_same70.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  30:../variants/same70/startup_same70.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
ARM GAS  /tmp/ccNltSB9.s 			page 2


  31:../variants/same70/startup_same70.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  32:../variants/same70/startup_same70.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  33:../variants/same70/startup_same70.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  34:../variants/same70/startup_same70.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  35:../variants/same70/startup_same70.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  36:../variants/same70/startup_same70.c ****  * POSSIBILITY OF SUCH DAMAGE.
  37:../variants/same70/startup_same70.c ****  *
  38:../variants/same70/startup_same70.c ****  * \asf_license_stop
  39:../variants/same70/startup_same70.c ****  *
  40:../variants/same70/startup_same70.c ****  */
  41:../variants/same70/startup_same70.c **** /*
  42:../variants/same70/startup_same70.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  43:../variants/same70/startup_same70.c ****  */
  44:../variants/same70/startup_same70.c **** 
  45:../variants/same70/startup_same70.c **** #include "same70.h"
  46:../variants/same70/startup_same70.c **** #include "system_same70.h"
  47:../variants/same70/startup_same70.c **** #include "wdt/wdt.h"
  48:../variants/same70/startup_same70.c **** 
  49:../variants/same70/startup_same70.c **** #if __FPU_USED /* CMSIS defined value to indicate usage of FPU */
  50:../variants/same70/startup_same70.c **** #include "fpu/fpu.h"
  51:../variants/same70/startup_same70.c **** #endif
  52:../variants/same70/startup_same70.c **** 
  53:../variants/same70/startup_same70.c **** extern void __libc_init_array(void);
  54:../variants/same70/startup_same70.c **** extern void init(void);
  55:../variants/same70/startup_same70.c **** extern void UrgentInit(void);
  56:../variants/same70/startup_same70.c **** extern void AppMain();
  57:../variants/same70/startup_same70.c **** 
  58:../variants/same70/startup_same70.c **** /* Initialize segments */
  59:../variants/same70/startup_same70.c **** extern uint32_t _sfixed;
  60:../variants/same70/startup_same70.c **** //extern uint32_t _efixed;
  61:../variants/same70/startup_same70.c **** extern uint32_t _etext;
  62:../variants/same70/startup_same70.c **** extern uint32_t _srelocate;
  63:../variants/same70/startup_same70.c **** extern uint32_t _erelocate;
  64:../variants/same70/startup_same70.c **** extern uint32_t _szero;
  65:../variants/same70/startup_same70.c **** extern uint32_t _ezero;
  66:../variants/same70/startup_same70.c **** //extern uint32_t _sstack;
  67:../variants/same70/startup_same70.c **** extern uint32_t _estack;
  68:../variants/same70/startup_same70.c **** 
  69:../variants/same70/startup_same70.c **** /* Default empty handler */
  70:../variants/same70/startup_same70.c **** void Dummy_Handler(void);
  71:../variants/same70/startup_same70.c **** 
  72:../variants/same70/startup_same70.c **** /* Calls to the core */
  73:../variants/same70/startup_same70.c **** extern int sysTickHook(void);
  74:../variants/same70/startup_same70.c **** extern void TimeTick_Increment(void);
  75:../variants/same70/startup_same70.c **** 
  76:../variants/same70/startup_same70.c **** /* Cortex-M7 core handlers */
  77:../variants/same70/startup_same70.c **** void NMI_Handler        ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
  78:../variants/same70/startup_same70.c **** void HardFault_Handler  ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
  79:../variants/same70/startup_same70.c **** void MemManage_Handler  ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
  80:../variants/same70/startup_same70.c **** void BusFault_Handler   ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
  81:../variants/same70/startup_same70.c **** void UsageFault_Handler ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
  82:../variants/same70/startup_same70.c **** 
  83:../variants/same70/startup_same70.c **** #ifndef RTOS
  84:../variants/same70/startup_same70.c **** void SVC_Handler        ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
  85:../variants/same70/startup_same70.c **** void PendSV_Handler     ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
  86:../variants/same70/startup_same70.c **** #endif
  87:../variants/same70/startup_same70.c **** 
ARM GAS  /tmp/ccNltSB9.s 			page 3


  88:../variants/same70/startup_same70.c **** void DebugMon_Handler   ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
  89:../variants/same70/startup_same70.c **** 
  90:../variants/same70/startup_same70.c **** #ifdef RTOS
  91:../variants/same70/startup_same70.c **** void vApplicationTickHook(void)
  92:../variants/same70/startup_same70.c **** #else
  93:../variants/same70/startup_same70.c **** void SysTick_Handler(void)
  94:../variants/same70/startup_same70.c **** #endif
  95:../variants/same70/startup_same70.c **** {
  96:../variants/same70/startup_same70.c **** 	if (sysTickHook())
  97:../variants/same70/startup_same70.c **** 		return;
  98:../variants/same70/startup_same70.c **** 
  99:../variants/same70/startup_same70.c **** 	wdt_restart(WDT);							// kick the watchdog
 100:../variants/same70/startup_same70.c **** 	TimeTick_Increment();						// increment tick count each ms
 101:../variants/same70/startup_same70.c **** }
 102:../variants/same70/startup_same70.c **** 
 103:../variants/same70/startup_same70.c **** /* Peripherals handlers */
 104:../variants/same70/startup_same70.c **** void SUPC_Handler   ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 105:../variants/same70/startup_same70.c **** void RSTC_Handler   ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 106:../variants/same70/startup_same70.c **** void RTC_Handler    ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 107:../variants/same70/startup_same70.c **** void RTT_Handler    ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 108:../variants/same70/startup_same70.c **** void WDT_Handler    ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 109:../variants/same70/startup_same70.c **** void PMC_Handler    ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 110:../variants/same70/startup_same70.c **** void EFC_Handler    ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 111:../variants/same70/startup_same70.c **** void UART0_Handler  ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 112:../variants/same70/startup_same70.c **** void UART1_Handler  ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 113:../variants/same70/startup_same70.c **** void PIOA_Handler   ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 114:../variants/same70/startup_same70.c **** void PIOB_Handler   ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 115:../variants/same70/startup_same70.c **** #ifdef _SAME70_PIOC_INSTANCE_
 116:../variants/same70/startup_same70.c **** void PIOC_Handler   ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 117:../variants/same70/startup_same70.c **** #endif /* _SAME70_PIOC_INSTANCE_ */
 118:../variants/same70/startup_same70.c **** void USART0_Handler ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 119:../variants/same70/startup_same70.c **** void USART1_Handler ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 120:../variants/same70/startup_same70.c **** void USART2_Handler ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 121:../variants/same70/startup_same70.c **** void PIOD_Handler   ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 122:../variants/same70/startup_same70.c **** #ifdef _SAME70_PIOE_INSTANCE_
 123:../variants/same70/startup_same70.c **** void PIOE_Handler   ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 124:../variants/same70/startup_same70.c **** #endif /* _SAME70_PIOE_INSTANCE_ */
 125:../variants/same70/startup_same70.c **** #ifdef _SAME70_HSMCI_INSTANCE_
 126:../variants/same70/startup_same70.c **** void HSMCI_Handler  ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 127:../variants/same70/startup_same70.c **** #endif /* _SAME70_HSMCI_INSTANCE_ */
 128:../variants/same70/startup_same70.c **** void TWIHS0_Handler ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 129:../variants/same70/startup_same70.c **** void TWIHS1_Handler ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 130:../variants/same70/startup_same70.c **** void SPI0_Handler   ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 131:../variants/same70/startup_same70.c **** void SSC_Handler    ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 132:../variants/same70/startup_same70.c **** void TC0_Handler    ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 133:../variants/same70/startup_same70.c **** void TC1_Handler    ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 134:../variants/same70/startup_same70.c **** void TC2_Handler    ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 135:../variants/same70/startup_same70.c **** #ifdef _SAME70_TC1_INSTANCE_
 136:../variants/same70/startup_same70.c **** void TC3_Handler    ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 137:../variants/same70/startup_same70.c **** #endif /* _SAME70_TC1_INSTANCE_ */
 138:../variants/same70/startup_same70.c **** #ifdef _SAME70_TC1_INSTANCE_
 139:../variants/same70/startup_same70.c **** void TC4_Handler    ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 140:../variants/same70/startup_same70.c **** #endif /* _SAME70_TC1_INSTANCE_ */
 141:../variants/same70/startup_same70.c **** #ifdef _SAME70_TC1_INSTANCE_
 142:../variants/same70/startup_same70.c **** void TC5_Handler    ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 143:../variants/same70/startup_same70.c **** #endif /* _SAME70_TC1_INSTANCE_ */
 144:../variants/same70/startup_same70.c **** void AFEC0_Handler  ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
ARM GAS  /tmp/ccNltSB9.s 			page 4


 145:../variants/same70/startup_same70.c **** #ifdef _SAME70_DACC_INSTANCE_
 146:../variants/same70/startup_same70.c **** void DACC_Handler   ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 147:../variants/same70/startup_same70.c **** #endif /* _SAME70_DACC_INSTANCE_ */
 148:../variants/same70/startup_same70.c **** void PWM0_Handler   ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 149:../variants/same70/startup_same70.c **** void ICM_Handler    ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 150:../variants/same70/startup_same70.c **** void ACC_Handler    ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 151:../variants/same70/startup_same70.c **** void USBHS_Handler  ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 152:../variants/same70/startup_same70.c **** void MCAN0_Handler  ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 153:../variants/same70/startup_same70.c **** void MCAN1_Handler  ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 154:../variants/same70/startup_same70.c **** void GMAC_Handler   ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 155:../variants/same70/startup_same70.c **** void AFEC1_Handler  ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 156:../variants/same70/startup_same70.c **** #ifdef _SAME70_TWIHS2_INSTANCE_
 157:../variants/same70/startup_same70.c **** void TWIHS2_Handler ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 158:../variants/same70/startup_same70.c **** #endif /* _SAME70_TWIHS2_INSTANCE_ */
 159:../variants/same70/startup_same70.c **** void SPI1_Handler   ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 160:../variants/same70/startup_same70.c **** void QSPI_Handler   ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 161:../variants/same70/startup_same70.c **** void UART2_Handler  ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 162:../variants/same70/startup_same70.c **** void UART3_Handler  ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 163:../variants/same70/startup_same70.c **** void UART4_Handler  ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 164:../variants/same70/startup_same70.c **** #ifdef _SAME70_TC2_INSTANCE_
 165:../variants/same70/startup_same70.c **** void TC6_Handler    ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 166:../variants/same70/startup_same70.c **** #endif /* _SAME70_TC2_INSTANCE_ */
 167:../variants/same70/startup_same70.c **** #ifdef _SAME70_TC2_INSTANCE_
 168:../variants/same70/startup_same70.c **** void TC7_Handler    ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 169:../variants/same70/startup_same70.c **** #endif /* _SAME70_TC2_INSTANCE_ */
 170:../variants/same70/startup_same70.c **** #ifdef _SAME70_TC2_INSTANCE_
 171:../variants/same70/startup_same70.c **** void TC8_Handler    ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 172:../variants/same70/startup_same70.c **** #endif /* _SAME70_TC2_INSTANCE_ */
 173:../variants/same70/startup_same70.c **** void TC9_Handler    ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 174:../variants/same70/startup_same70.c **** void TC10_Handler   ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 175:../variants/same70/startup_same70.c **** void TC11_Handler   ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 176:../variants/same70/startup_same70.c **** void AES_Handler    ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 177:../variants/same70/startup_same70.c **** void TRNG_Handler   ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 178:../variants/same70/startup_same70.c **** void XDMAC_Handler  ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 179:../variants/same70/startup_same70.c **** void ISI_Handler    ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 180:../variants/same70/startup_same70.c **** void PWM1_Handler   ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 181:../variants/same70/startup_same70.c **** #ifdef _SAME70_SDRAMC_INSTANCE_
 182:../variants/same70/startup_same70.c **** void SDRAMC_Handler ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 183:../variants/same70/startup_same70.c **** #endif /* _SAME70_SDRAMC_INSTANCE_ */
 184:../variants/same70/startup_same70.c **** void RSWDT_Handler  ( void ) __attribute__ ((weak, alias("Dummy_Handler")));
 185:../variants/same70/startup_same70.c **** 
 186:../variants/same70/startup_same70.c **** /* Exception Table */
 187:../variants/same70/startup_same70.c **** __attribute__ ((section(".vectors")))
 188:../variants/same70/startup_same70.c **** const DeviceVectors exception_table = {
 189:../variants/same70/startup_same70.c **** 
 190:../variants/same70/startup_same70.c ****         /* Configure Initial Stack Pointer, using linker-generated symbols */
 191:../variants/same70/startup_same70.c ****         .pvStack = (void*) (&_estack),
 192:../variants/same70/startup_same70.c **** 
 193:../variants/same70/startup_same70.c ****         .pfnReset_Handler      = (void*) Reset_Handler,
 194:../variants/same70/startup_same70.c ****         .pfnNMI_Handler        = (void*) NMI_Handler,
 195:../variants/same70/startup_same70.c ****         .pfnHardFault_Handler  = (void*) HardFault_Handler,
 196:../variants/same70/startup_same70.c ****         .pfnMemManage_Handler  = (void*) MemManage_Handler,
 197:../variants/same70/startup_same70.c ****         .pfnBusFault_Handler   = (void*) BusFault_Handler,
 198:../variants/same70/startup_same70.c ****         .pfnUsageFault_Handler = (void*) UsageFault_Handler,
 199:../variants/same70/startup_same70.c ****         .pfnReserved1_Handler  = (void*) (0UL),          /* Reserved */
 200:../variants/same70/startup_same70.c ****         .pfnReserved2_Handler  = (void*) (0UL),          /* Reserved */
 201:../variants/same70/startup_same70.c ****         .pfnReserved3_Handler  = (void*) (0UL),          /* Reserved */
ARM GAS  /tmp/ccNltSB9.s 			page 5


 202:../variants/same70/startup_same70.c ****         .pfnReserved4_Handler  = (void*) (0UL),          /* Reserved */
 203:../variants/same70/startup_same70.c ****         .pfnSVC_Handler        = (void*) SVC_Handler,
 204:../variants/same70/startup_same70.c ****         .pfnDebugMon_Handler   = (void*) DebugMon_Handler,
 205:../variants/same70/startup_same70.c ****         .pfnReserved5_Handler  = (void*) (0UL),          /* Reserved */
 206:../variants/same70/startup_same70.c ****         .pfnPendSV_Handler     = (void*) PendSV_Handler,
 207:../variants/same70/startup_same70.c ****         .pfnSysTick_Handler    = (void*) SysTick_Handler,
 208:../variants/same70/startup_same70.c **** 
 209:../variants/same70/startup_same70.c ****         /* Configurable interrupts */
 210:../variants/same70/startup_same70.c ****         .pfnSUPC_Handler   = (void*) SUPC_Handler,   /* 0  Supply Controller */
 211:../variants/same70/startup_same70.c ****         .pfnRSTC_Handler   = (void*) RSTC_Handler,   /* 1  Reset Controller */
 212:../variants/same70/startup_same70.c ****         .pfnRTC_Handler    = (void*) RTC_Handler,    /* 2  Real Time Clock */
 213:../variants/same70/startup_same70.c ****         .pfnRTT_Handler    = (void*) RTT_Handler,    /* 3  Real Time Timer */
 214:../variants/same70/startup_same70.c ****         .pfnWDT_Handler    = (void*) WDT_Handler,    /* 4  Watchdog Timer */
 215:../variants/same70/startup_same70.c ****         .pfnPMC_Handler    = (void*) PMC_Handler,    /* 5  Power Management Controller */
 216:../variants/same70/startup_same70.c ****         .pfnEFC_Handler    = (void*) EFC_Handler,    /* 6  Enhanced Embedded Flash Controller */
 217:../variants/same70/startup_same70.c ****         .pfnUART0_Handler  = (void*) UART0_Handler,  /* 7  UART 0 */
 218:../variants/same70/startup_same70.c ****         .pfnUART1_Handler  = (void*) UART1_Handler,  /* 8  UART 1 */
 219:../variants/same70/startup_same70.c ****         .pvReserved9       = (void*) (0UL),          /* 9  Reserved */
 220:../variants/same70/startup_same70.c ****         .pfnPIOA_Handler   = (void*) PIOA_Handler,   /* 10 Parallel I/O Controller A */
 221:../variants/same70/startup_same70.c ****         .pfnPIOB_Handler   = (void*) PIOB_Handler,   /* 11 Parallel I/O Controller B */
 222:../variants/same70/startup_same70.c **** #ifdef _SAME70_PIOC_INSTANCE_
 223:../variants/same70/startup_same70.c ****         .pfnPIOC_Handler   = (void*) PIOC_Handler,   /* 12 Parallel I/O Controller C */
 224:../variants/same70/startup_same70.c **** #else
 225:../variants/same70/startup_same70.c ****         .pvReserved12      = (void*) (0UL),          /* 12 Reserved */
 226:../variants/same70/startup_same70.c **** #endif /* _SAME70_PIOC_INSTANCE_ */
 227:../variants/same70/startup_same70.c ****         .pfnUSART0_Handler = (void*) USART0_Handler, /* 13 USART 0 */
 228:../variants/same70/startup_same70.c ****         .pfnUSART1_Handler = (void*) USART1_Handler, /* 14 USART 1 */
 229:../variants/same70/startup_same70.c ****         .pfnUSART2_Handler = (void*) USART2_Handler, /* 15 USART 2 */
 230:../variants/same70/startup_same70.c ****         .pfnPIOD_Handler   = (void*) PIOD_Handler,   /* 16 Parallel I/O Controller D */
 231:../variants/same70/startup_same70.c **** #ifdef _SAME70_PIOE_INSTANCE_
 232:../variants/same70/startup_same70.c ****         .pfnPIOE_Handler   = (void*) PIOE_Handler,   /* 17 Parallel I/O Controller E */
 233:../variants/same70/startup_same70.c **** #else
 234:../variants/same70/startup_same70.c ****         .pvReserved17      = (void*) (0UL),          /* 17 Reserved */
 235:../variants/same70/startup_same70.c **** #endif /* _SAME70_PIOE_INSTANCE_ */
 236:../variants/same70/startup_same70.c **** #ifdef _SAME70_HSMCI_INSTANCE_
 237:../variants/same70/startup_same70.c ****         .pfnHSMCI_Handler  = (void*) HSMCI_Handler,  /* 18 Multimedia Card Interface */
 238:../variants/same70/startup_same70.c **** #else
 239:../variants/same70/startup_same70.c ****         .pvReserved18      = (void*) (0UL),          /* 18 Reserved */
 240:../variants/same70/startup_same70.c **** #endif /* _SAME70_HSMCI_INSTANCE_ */
 241:../variants/same70/startup_same70.c ****         .pfnTWIHS0_Handler = (void*) TWIHS0_Handler, /* 19 Two Wire Interface 0 HS */
 242:../variants/same70/startup_same70.c ****         .pfnTWIHS1_Handler = (void*) TWIHS1_Handler, /* 20 Two Wire Interface 1 HS */
 243:../variants/same70/startup_same70.c ****         .pfnSPI0_Handler   = (void*) SPI0_Handler,   /* 21 Serial Peripheral Interface 0 */
 244:../variants/same70/startup_same70.c ****         .pfnSSC_Handler    = (void*) SSC_Handler,    /* 22 Synchronous Serial Controller */
 245:../variants/same70/startup_same70.c ****         .pfnTC0_Handler    = (void*) TC0_Handler,    /* 23 Timer/Counter 0 */
 246:../variants/same70/startup_same70.c ****         .pfnTC1_Handler    = (void*) TC1_Handler,    /* 24 Timer/Counter 1 */
 247:../variants/same70/startup_same70.c ****         .pfnTC2_Handler    = (void*) TC2_Handler,    /* 25 Timer/Counter 2 */
 248:../variants/same70/startup_same70.c **** #ifdef _SAME70_TC1_INSTANCE_
 249:../variants/same70/startup_same70.c ****         .pfnTC3_Handler    = (void*) TC3_Handler,    /* 26 Timer/Counter 3 */
 250:../variants/same70/startup_same70.c **** #else
 251:../variants/same70/startup_same70.c ****         .pvReserved26      = (void*) (0UL),          /* 26 Reserved */
 252:../variants/same70/startup_same70.c **** #endif /* _SAME70_TC1_INSTANCE_ */
 253:../variants/same70/startup_same70.c **** #ifdef _SAME70_TC1_INSTANCE_
 254:../variants/same70/startup_same70.c ****         .pfnTC4_Handler    = (void*) TC4_Handler,    /* 27 Timer/Counter 4 */
 255:../variants/same70/startup_same70.c **** #else
 256:../variants/same70/startup_same70.c ****         .pvReserved27      = (void*) (0UL),          /* 27 Reserved */
 257:../variants/same70/startup_same70.c **** #endif /* _SAME70_TC1_INSTANCE_ */
 258:../variants/same70/startup_same70.c **** #ifdef _SAME70_TC1_INSTANCE_
ARM GAS  /tmp/ccNltSB9.s 			page 6


 259:../variants/same70/startup_same70.c ****         .pfnTC5_Handler    = (void*) TC5_Handler,    /* 28 Timer/Counter 5 */
 260:../variants/same70/startup_same70.c **** #else
 261:../variants/same70/startup_same70.c ****         .pvReserved28      = (void*) (0UL),          /* 28 Reserved */
 262:../variants/same70/startup_same70.c **** #endif /* _SAME70_TC1_INSTANCE_ */
 263:../variants/same70/startup_same70.c ****         .pfnAFEC0_Handler  = (void*) AFEC0_Handler,  /* 29 Analog Front End 0 */
 264:../variants/same70/startup_same70.c **** #ifdef _SAME70_DACC_INSTANCE_
 265:../variants/same70/startup_same70.c ****         .pfnDACC_Handler   = (void*) DACC_Handler,   /* 30 Digital To Analog Converter */
 266:../variants/same70/startup_same70.c **** #else
 267:../variants/same70/startup_same70.c ****         .pvReserved30      = (void*) (0UL),          /* 30 Reserved */
 268:../variants/same70/startup_same70.c **** #endif /* _SAME70_DACC_INSTANCE_ */
 269:../variants/same70/startup_same70.c ****         .pfnPWM0_Handler   = (void*) PWM0_Handler,   /* 31 Pulse Width Modulation 0 */
 270:../variants/same70/startup_same70.c ****         .pfnICM_Handler    = (void*) ICM_Handler,    /* 32 Integrity Check Monitor */
 271:../variants/same70/startup_same70.c ****         .pfnACC_Handler    = (void*) ACC_Handler,    /* 33 Analog Comparator */
 272:../variants/same70/startup_same70.c ****         .pfnUSBHS_Handler  = (void*) USBHS_Handler,  /* 34 USB Host / Device Controller */
 273:../variants/same70/startup_same70.c ****         .pfnMCAN0_Handler  = (void*) MCAN0_Handler,  /* 35 MCAN Controller 0 */
 274:../variants/same70/startup_same70.c ****         .pvReserved36      = (void*) (0UL),          /* 36 Reserved */
 275:../variants/same70/startup_same70.c ****         .pfnMCAN1_Handler  = (void*) MCAN1_Handler,  /* 37 MCAN Controller 1 */
 276:../variants/same70/startup_same70.c ****         .pvReserved38      = (void*) (0UL),          /* 38 Reserved */
 277:../variants/same70/startup_same70.c ****         .pfnGMAC_Handler   = (void*) GMAC_Handler,   /* 39 Ethernet MAC */
 278:../variants/same70/startup_same70.c ****         .pfnAFEC1_Handler  = (void*) AFEC1_Handler,  /* 40 Analog Front End 1 */
 279:../variants/same70/startup_same70.c **** #ifdef _SAME70_TWIHS2_INSTANCE_
 280:../variants/same70/startup_same70.c ****         .pfnTWIHS2_Handler = (void*) TWIHS2_Handler, /* 41 Two Wire Interface 2 HS */
 281:../variants/same70/startup_same70.c **** #else
 282:../variants/same70/startup_same70.c ****         .pvReserved41      = (void*) (0UL),          /* 41 Reserved */
 283:../variants/same70/startup_same70.c **** #endif /* _SAME70_TWIHS2_INSTANCE_ */
 284:../variants/same70/startup_same70.c ****         .pfnSPI1_Handler   = (void*) SPI1_Handler,   /* 42 Serial Peripheral Interface 1 */
 285:../variants/same70/startup_same70.c ****         .pfnQSPI_Handler   = (void*) QSPI_Handler,   /* 43 Quad I/O Serial Peripheral Interface */
 286:../variants/same70/startup_same70.c ****         .pfnUART2_Handler  = (void*) UART2_Handler,  /* 44 UART 2 */
 287:../variants/same70/startup_same70.c ****         .pfnUART3_Handler  = (void*) UART3_Handler,  /* 45 UART 3 */
 288:../variants/same70/startup_same70.c ****         .pfnUART4_Handler  = (void*) UART4_Handler,  /* 46 UART 4 */
 289:../variants/same70/startup_same70.c **** #ifdef _SAME70_TC2_INSTANCE_
 290:../variants/same70/startup_same70.c ****         .pfnTC6_Handler    = (void*) TC6_Handler,    /* 47 Timer/Counter 6 */
 291:../variants/same70/startup_same70.c **** #else
 292:../variants/same70/startup_same70.c ****         .pvReserved47      = (void*) (0UL),          /* 47 Reserved */
 293:../variants/same70/startup_same70.c **** #endif /* _SAME70_TC2_INSTANCE_ */
 294:../variants/same70/startup_same70.c **** #ifdef _SAME70_TC2_INSTANCE_
 295:../variants/same70/startup_same70.c ****         .pfnTC7_Handler    = (void*) TC7_Handler,    /* 48 Timer/Counter 7 */
 296:../variants/same70/startup_same70.c **** #else
 297:../variants/same70/startup_same70.c ****         .pvReserved48      = (void*) (0UL),          /* 48 Reserved */
 298:../variants/same70/startup_same70.c **** #endif /* _SAME70_TC2_INSTANCE_ */
 299:../variants/same70/startup_same70.c **** #ifdef _SAME70_TC2_INSTANCE_
 300:../variants/same70/startup_same70.c ****         .pfnTC8_Handler    = (void*) TC8_Handler,    /* 49 Timer/Counter 8 */
 301:../variants/same70/startup_same70.c **** #else
 302:../variants/same70/startup_same70.c ****         .pvReserved49      = (void*) (0UL),          /* 49 Reserved */
 303:../variants/same70/startup_same70.c **** #endif /* _SAME70_TC2_INSTANCE_ */
 304:../variants/same70/startup_same70.c ****         .pfnTC9_Handler    = (void*) TC9_Handler,    /* 50 Timer/Counter 9 */
 305:../variants/same70/startup_same70.c ****         .pfnTC10_Handler   = (void*) TC10_Handler,   /* 51 Timer/Counter 10 */
 306:../variants/same70/startup_same70.c ****         .pfnTC11_Handler   = (void*) TC11_Handler,   /* 52 Timer/Counter 11 */
 307:../variants/same70/startup_same70.c ****         .pvReserved53      = (void*) (0UL),          /* 53 Reserved */
 308:../variants/same70/startup_same70.c ****         .pvReserved54      = (void*) (0UL),          /* 54 Reserved */
 309:../variants/same70/startup_same70.c ****         .pvReserved55      = (void*) (0UL),          /* 55 Reserved */
 310:../variants/same70/startup_same70.c ****         .pfnAES_Handler    = (void*) AES_Handler,    /* 56 AES */
 311:../variants/same70/startup_same70.c ****         .pfnTRNG_Handler   = (void*) TRNG_Handler,   /* 57 True Random Generator */
 312:../variants/same70/startup_same70.c ****         .pfnXDMAC_Handler  = (void*) XDMAC_Handler,  /* 58 DMA */
 313:../variants/same70/startup_same70.c ****         .pfnISI_Handler    = (void*) ISI_Handler,    /* 59 Camera Interface */
 314:../variants/same70/startup_same70.c ****         .pfnPWM1_Handler   = (void*) PWM1_Handler,   /* 60 Pulse Width Modulation 1 */
 315:../variants/same70/startup_same70.c ****         .pvReserved61      = (void*) (0UL),          /* 61 Reserved */
ARM GAS  /tmp/ccNltSB9.s 			page 7


 316:../variants/same70/startup_same70.c **** #ifdef _SAME70_SDRAMC_INSTANCE_
 317:../variants/same70/startup_same70.c ****         .pfnSDRAMC_Handler = (void*) SDRAMC_Handler, /* 62 SDRAM Controller */
 318:../variants/same70/startup_same70.c **** #else
 319:../variants/same70/startup_same70.c ****         .pvReserved62      = (void*) (0UL),          /* 62 Reserved */
 320:../variants/same70/startup_same70.c **** #endif /* _SAME70_SDRAMC_INSTANCE_ */
 321:../variants/same70/startup_same70.c ****         .pfnRSWDT_Handler  = (void*) RSWDT_Handler   /* 63 Reinforced Secure Watchdog Timer */
 322:../variants/same70/startup_same70.c **** };
 323:../variants/same70/startup_same70.c **** 
 324:../variants/same70/startup_same70.c **** /**
 325:../variants/same70/startup_same70.c ****  * \brief This is the code that gets called on processor reset.
 326:../variants/same70/startup_same70.c ****  * To initialize the device, and call the main() routine.
 327:../variants/same70/startup_same70.c ****  */
 328:../variants/same70/startup_same70.c **** void Reset_Handler(void)
 329:../variants/same70/startup_same70.c **** {
 330:../variants/same70/startup_same70.c **** 	uint32_t *pSrc, *pDest;
 331:../variants/same70/startup_same70.c **** 
 332:../variants/same70/startup_same70.c **** 	/* Initialize the relocate segment */
 333:../variants/same70/startup_same70.c **** 	pSrc = &_etext;
 334:../variants/same70/startup_same70.c **** 	pDest = &_srelocate;
 335:../variants/same70/startup_same70.c **** 
 336:../variants/same70/startup_same70.c **** 	if (pSrc != pDest) {
 337:../variants/same70/startup_same70.c **** 		for (; pDest < &_erelocate;) {
 338:../variants/same70/startup_same70.c **** 			*pDest++ = *pSrc++;
 339:../variants/same70/startup_same70.c **** 		}
 340:../variants/same70/startup_same70.c **** 	}
 341:../variants/same70/startup_same70.c **** 
 342:../variants/same70/startup_same70.c **** 	/* Clear the zero segment */
 343:../variants/same70/startup_same70.c **** 	for (pDest = &_szero; pDest < &_ezero;) {
 344:../variants/same70/startup_same70.c **** 		*pDest++ = 0;
 345:../variants/same70/startup_same70.c **** 	}
 346:../variants/same70/startup_same70.c **** 
 347:../variants/same70/startup_same70.c **** 	/* Set the vector table base address */
 348:../variants/same70/startup_same70.c **** 	pSrc = (uint32_t *) & _sfixed;
 349:../variants/same70/startup_same70.c **** 	SCB->VTOR = ((uint32_t) pSrc & SCB_VTOR_TBLOFF_Msk);
 350:../variants/same70/startup_same70.c **** 
 351:../variants/same70/startup_same70.c **** #if __FPU_USED
 352:../variants/same70/startup_same70.c **** 	fpu_enable();
 353:../variants/same70/startup_same70.c **** #else
 354:../variants/same70/startup_same70.c **** # warning Compiling without FPU support
 355:../variants/same70/startup_same70.c **** #endif
 356:../variants/same70/startup_same70.c **** 
 357:../variants/same70/startup_same70.c **** 	SystemInit();			// set up the clock
 358:../variants/same70/startup_same70.c **** 	UrgentInit();			// initialise anything in the main application that can't wait
 359:../variants/same70/startup_same70.c **** 	__libc_init_array();	// initialize C library and call C++ constructors for static data
 360:../variants/same70/startup_same70.c **** 	init();					// initialise variant
 361:../variants/same70/startup_same70.c **** 
 362:../variants/same70/startup_same70.c **** #ifndef RTOS
 363:../variants/same70/startup_same70.c **** 	// Set Systick to 1ms interval, common to all SAME70 variants
 364:../variants/same70/startup_same70.c **** 	if (SysTick_Config(SystemCoreClock / 1000))
 365:../variants/same70/startup_same70.c **** 	{
 366:../variants/same70/startup_same70.c **** 		// Capture error
 367:../variants/same70/startup_same70.c **** 		while (true);
 368:../variants/same70/startup_same70.c **** 	}
 369:../variants/same70/startup_same70.c **** #endif
 370:../variants/same70/startup_same70.c **** 
 371:../variants/same70/startup_same70.c **** 	AppMain();
 372:../variants/same70/startup_same70.c **** }
ARM GAS  /tmp/ccNltSB9.s 			page 8


 373:../variants/same70/startup_same70.c **** 
 374:../variants/same70/startup_same70.c **** /**
 375:../variants/same70/startup_same70.c ****  * \brief Default interrupt handler for unused IRQs.
 376:../variants/same70/startup_same70.c ****  */
 377:../variants/same70/startup_same70.c **** void Dummy_Handler(void)
 378:../variants/same70/startup_same70.c **** {
  28              		.loc 1 378 0
  29              		.cfi_startproc
  30              		@ Volatile: function does not return.
  31              		@ args = 0, pretend = 0, frame = 0
  32              		@ frame_needed = 0, uses_anonymous_args = 0
  33              		@ link register save eliminated.
  34              	.L2:
  35 0000 FEE7     		b	.L2
  36              		.cfi_endproc
  37              	.LFE147:
  38              		.size	Dummy_Handler, .-Dummy_Handler
  39              		.weak	RSWDT_Handler
  40              		.thumb_set RSWDT_Handler,Dummy_Handler
  41              		.weak	SDRAMC_Handler
  42              		.thumb_set SDRAMC_Handler,Dummy_Handler
  43              		.weak	PWM1_Handler
  44              		.thumb_set PWM1_Handler,Dummy_Handler
  45              		.weak	ISI_Handler
  46              		.thumb_set ISI_Handler,Dummy_Handler
  47              		.weak	XDMAC_Handler
  48              		.thumb_set XDMAC_Handler,Dummy_Handler
  49              		.weak	TRNG_Handler
  50              		.thumb_set TRNG_Handler,Dummy_Handler
  51              		.weak	AES_Handler
  52              		.thumb_set AES_Handler,Dummy_Handler
  53              		.weak	TC11_Handler
  54              		.thumb_set TC11_Handler,Dummy_Handler
  55              		.weak	TC10_Handler
  56              		.thumb_set TC10_Handler,Dummy_Handler
  57              		.weak	TC9_Handler
  58              		.thumb_set TC9_Handler,Dummy_Handler
  59              		.weak	TC8_Handler
  60              		.thumb_set TC8_Handler,Dummy_Handler
  61              		.weak	TC7_Handler
  62              		.thumb_set TC7_Handler,Dummy_Handler
  63              		.weak	TC6_Handler
  64              		.thumb_set TC6_Handler,Dummy_Handler
  65              		.weak	UART4_Handler
  66              		.thumb_set UART4_Handler,Dummy_Handler
  67              		.weak	UART3_Handler
  68              		.thumb_set UART3_Handler,Dummy_Handler
  69              		.weak	UART2_Handler
  70              		.thumb_set UART2_Handler,Dummy_Handler
  71              		.weak	QSPI_Handler
  72              		.thumb_set QSPI_Handler,Dummy_Handler
  73              		.weak	SPI1_Handler
  74              		.thumb_set SPI1_Handler,Dummy_Handler
  75              		.weak	TWIHS2_Handler
  76              		.thumb_set TWIHS2_Handler,Dummy_Handler
  77              		.weak	AFEC1_Handler
  78              		.thumb_set AFEC1_Handler,Dummy_Handler
ARM GAS  /tmp/ccNltSB9.s 			page 9


  79              		.weak	GMAC_Handler
  80              		.thumb_set GMAC_Handler,Dummy_Handler
  81              		.weak	MCAN1_Handler
  82              		.thumb_set MCAN1_Handler,Dummy_Handler
  83              		.weak	MCAN0_Handler
  84              		.thumb_set MCAN0_Handler,Dummy_Handler
  85              		.weak	USBHS_Handler
  86              		.thumb_set USBHS_Handler,Dummy_Handler
  87              		.weak	ACC_Handler
  88              		.thumb_set ACC_Handler,Dummy_Handler
  89              		.weak	ICM_Handler
  90              		.thumb_set ICM_Handler,Dummy_Handler
  91              		.weak	PWM0_Handler
  92              		.thumb_set PWM0_Handler,Dummy_Handler
  93              		.weak	DACC_Handler
  94              		.thumb_set DACC_Handler,Dummy_Handler
  95              		.weak	AFEC0_Handler
  96              		.thumb_set AFEC0_Handler,Dummy_Handler
  97              		.weak	TC5_Handler
  98              		.thumb_set TC5_Handler,Dummy_Handler
  99              		.weak	TC4_Handler
 100              		.thumb_set TC4_Handler,Dummy_Handler
 101              		.weak	TC3_Handler
 102              		.thumb_set TC3_Handler,Dummy_Handler
 103              		.weak	TC2_Handler
 104              		.thumb_set TC2_Handler,Dummy_Handler
 105              		.weak	TC1_Handler
 106              		.thumb_set TC1_Handler,Dummy_Handler
 107              		.weak	TC0_Handler
 108              		.thumb_set TC0_Handler,Dummy_Handler
 109              		.weak	SSC_Handler
 110              		.thumb_set SSC_Handler,Dummy_Handler
 111              		.weak	SPI0_Handler
 112              		.thumb_set SPI0_Handler,Dummy_Handler
 113              		.weak	TWIHS1_Handler
 114              		.thumb_set TWIHS1_Handler,Dummy_Handler
 115              		.weak	TWIHS0_Handler
 116              		.thumb_set TWIHS0_Handler,Dummy_Handler
 117              		.weak	HSMCI_Handler
 118              		.thumb_set HSMCI_Handler,Dummy_Handler
 119              		.weak	PIOE_Handler
 120              		.thumb_set PIOE_Handler,Dummy_Handler
 121              		.weak	PIOD_Handler
 122              		.thumb_set PIOD_Handler,Dummy_Handler
 123              		.weak	USART2_Handler
 124              		.thumb_set USART2_Handler,Dummy_Handler
 125              		.weak	USART1_Handler
 126              		.thumb_set USART1_Handler,Dummy_Handler
 127              		.weak	USART0_Handler
 128              		.thumb_set USART0_Handler,Dummy_Handler
 129              		.weak	PIOC_Handler
 130              		.thumb_set PIOC_Handler,Dummy_Handler
 131              		.weak	PIOB_Handler
 132              		.thumb_set PIOB_Handler,Dummy_Handler
 133              		.weak	PIOA_Handler
 134              		.thumb_set PIOA_Handler,Dummy_Handler
 135              		.weak	UART1_Handler
ARM GAS  /tmp/ccNltSB9.s 			page 10


 136              		.thumb_set UART1_Handler,Dummy_Handler
 137              		.weak	UART0_Handler
 138              		.thumb_set UART0_Handler,Dummy_Handler
 139              		.weak	EFC_Handler
 140              		.thumb_set EFC_Handler,Dummy_Handler
 141              		.weak	PMC_Handler
 142              		.thumb_set PMC_Handler,Dummy_Handler
 143              		.weak	WDT_Handler
 144              		.thumb_set WDT_Handler,Dummy_Handler
 145              		.weak	RTT_Handler
 146              		.thumb_set RTT_Handler,Dummy_Handler
 147              		.weak	RTC_Handler
 148              		.thumb_set RTC_Handler,Dummy_Handler
 149              		.weak	RSTC_Handler
 150              		.thumb_set RSTC_Handler,Dummy_Handler
 151              		.weak	SUPC_Handler
 152              		.thumb_set SUPC_Handler,Dummy_Handler
 153              		.weak	DebugMon_Handler
 154              		.thumb_set DebugMon_Handler,Dummy_Handler
 155              		.weak	UsageFault_Handler
 156              		.thumb_set UsageFault_Handler,Dummy_Handler
 157              		.weak	BusFault_Handler
 158              		.thumb_set BusFault_Handler,Dummy_Handler
 159              		.weak	MemManage_Handler
 160              		.thumb_set MemManage_Handler,Dummy_Handler
 161              		.weak	HardFault_Handler
 162              		.thumb_set HardFault_Handler,Dummy_Handler
 163              		.weak	NMI_Handler
 164              		.thumb_set NMI_Handler,Dummy_Handler
 165 0002 00BF     		.section	.text.Reset_Handler,"ax",%progbits
 166              		.align	1
 167              		.p2align 2,,3
 168              		.global	Reset_Handler
 169              		.syntax unified
 170              		.thumb
 171              		.thumb_func
 172              		.fpu fpv5-d16
 173              		.type	Reset_Handler, %function
 174              	Reset_Handler:
 175              	.LFB146:
 329:../variants/same70/startup_same70.c **** 	uint32_t *pSrc, *pDest;
 176              		.loc 1 329 0
 177              		.cfi_startproc
 178              		@ args = 0, pretend = 0, frame = 0
 179              		@ frame_needed = 0, uses_anonymous_args = 0
 180              	.LVL0:
 329:../variants/same70/startup_same70.c **** 	uint32_t *pSrc, *pDest;
 181              		.loc 1 329 0
 182 0000 08B5     		push	{r3, lr}
 183              		.cfi_def_cfa_offset 8
 184              		.cfi_offset 3, -8
 185              		.cfi_offset 14, -4
 336:../variants/same70/startup_same70.c **** 		for (; pDest < &_erelocate;) {
 186              		.loc 1 336 0
 187 0002 254A     		ldr	r2, .L16
 188 0004 254B     		ldr	r3, .L16+4
 189 0006 9A42     		cmp	r2, r3
ARM GAS  /tmp/ccNltSB9.s 			page 11


 190 0008 0ED0     		beq	.L7
 337:../variants/same70/startup_same70.c **** 			*pDest++ = *pSrc++;
 191              		.loc 1 337 0
 192 000a 2549     		ldr	r1, .L16+8
 193 000c 8B42     		cmp	r3, r1
 194 000e 0BD2     		bcs	.L7
 195 0010 D843     		mvns	r0, r3
 196 0012 0844     		add	r0, r0, r1
 197 0014 20F00300 		bic	r0, r0, #3
 198 0018 0430     		adds	r0, r0, #4
 199 001a 1844     		add	r0, r0, r3
 200              	.LVL1:
 201              	.L8:
 338:../variants/same70/startup_same70.c **** 		}
 202              		.loc 1 338 0
 203 001c 52F8041B 		ldr	r1, [r2], #4
 204              	.LVL2:
 205 0020 43F8041B 		str	r1, [r3], #4
 206              	.LVL3:
 337:../variants/same70/startup_same70.c **** 			*pDest++ = *pSrc++;
 207              		.loc 1 337 0
 208 0024 8342     		cmp	r3, r0
 209 0026 F9D1     		bne	.L8
 210              	.LVL4:
 211              	.L7:
 343:../variants/same70/startup_same70.c **** 		*pDest++ = 0;
 212              		.loc 1 343 0
 213 0028 1E4B     		ldr	r3, .L16+12
 214 002a 1F48     		ldr	r0, .L16+16
 215 002c 8342     		cmp	r3, r0
 216 002e 0AD2     		bcs	.L6
 217 0030 DA43     		mvns	r2, r3
 344:../variants/same70/startup_same70.c **** 	}
 218              		.loc 1 344 0
 219 0032 0021     		movs	r1, #0
 220 0034 0244     		add	r2, r2, r0
 221 0036 22F00302 		bic	r2, r2, #3
 222 003a 0432     		adds	r2, r2, #4
 223 003c 1A44     		add	r2, r2, r3
 224              	.LVL5:
 225              	.L11:
 226 003e 43F8041B 		str	r1, [r3], #4
 227              	.LVL6:
 343:../variants/same70/startup_same70.c **** 		*pDest++ = 0;
 228              		.loc 1 343 0
 229 0042 9342     		cmp	r3, r2
 230 0044 FBD1     		bne	.L11
 231              	.LVL7:
 232              	.L6:
 349:../variants/same70/startup_same70.c **** 
 233              		.loc 1 349 0
 234 0046 194B     		ldr	r3, .L16+20
 235 0048 194A     		ldr	r2, .L16+24
 236 004a 23F07F03 		bic	r3, r3, #127
 237 004e 9360     		str	r3, [r2, #8]
 238              	.LBB48:
 239              	.LBB49:
ARM GAS  /tmp/ccNltSB9.s 			page 12


 240              	.LBB50:
 241              	.LBB51:
 242              	.LBB52:
 243              	.LBB53:
 244              		.file 2 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h"
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
  50:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  51:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #if (__ARMCC_VERSION < 400677)
  52:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   #error "Please use ARM Compiler Toolchain V4.0.677 or later!"
ARM GAS  /tmp/ccNltSB9.s 			page 13


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
 107:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 108:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 109:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
ARM GAS  /tmp/ccNltSB9.s 			page 14


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
 164:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function assigns the given value to the Main Stack Pointer (MSP).
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 166:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \param [in]    topOfMainStack  Main Stack Pointer value to set
ARM GAS  /tmp/ccNltSB9.s 			page 15


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
 221:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the current value of the Base Priority register.
 222:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 223:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               Base Priority register value
ARM GAS  /tmp/ccNltSB9.s 			page 16


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
 278:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 279:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               Floating Point Status/Control register value
 280:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
ARM GAS  /tmp/ccNltSB9.s 			page 17


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
ARM GAS  /tmp/ccNltSB9.s 			page 18


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
ARM GAS  /tmp/ccNltSB9.s 			page 19


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
ARM GAS  /tmp/ccNltSB9.s 			page 20


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
 462:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the current state of the priority mask bit from the Priority Mask Registe
 463:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 464:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               Priority Mask value
 465:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 466:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_PRIMASK(void)
 467:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 468:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   uint32_t result;
 469:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 470:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __ASM volatile ("MRS %0, primask" : "=r" (result) );
 245              		.loc 2 470 0
 246              		.syntax unified
 247              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 248 0050 EFF31083 		MRS r3, primask
 249              	@ 0 "" 2
 250              	.LVL8:
 251              		.thumb
 252              		.syntax unified
 253              	.LBE53:
 254              	.LBE52:
 255              	.LBB54:
 256              	.LBB55:
 330:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 257              		.loc 2 330 0
 258              		.syntax unified
 259              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 260 0054 72B6     		cpsid i
 261              	@ 0 "" 2
 262              		.thumb
 263              		.syntax unified
 264              	.LBE55:
 265              	.LBE54:
 266              	.LBB56:
 267              	.LBB57:
 268              		.file 3 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h"
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
ARM GAS  /tmp/ccNltSB9.s 			page 21


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
  62:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  63:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Wait For Interrupt
  64:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  65:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Wait For Interrupt is a hint instruction that suspends execution
  66:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     until one of a number of events occurs.
  67:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
  68:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __WFI                             __wfi
  69:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  70:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
ARM GAS  /tmp/ccNltSB9.s 			page 22


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
 119:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 120:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 121:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Reverse byte order (16 bit)
 122:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 123:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function reverses the byte order in two unsigned short values.
 124:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 125:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  Value to reverse
 126:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return               Reversed value
 127:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
ARM GAS  /tmp/ccNltSB9.s 			page 23


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
 176:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Reverse bit order of value
 177:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 178:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function reverses the bit order of the given value.
 179:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 180:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  Value to reverse
 181:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return               Reversed value
 182:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 183:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __RBIT                            __rbit
 184:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
ARM GAS  /tmp/ccNltSB9.s 			page 24


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
 233:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to location
 234:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return          0  Function succeeded
 235:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return          1  Function failed
 236:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 237:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __STREXH(value, ptr)              __strex(value, ptr)
 238:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 239:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 240:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  STR Exclusive (32 bit)
 241:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
ARM GAS  /tmp/ccNltSB9.s 			page 25


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
 290:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 292:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Rotate Right with Extend (32 bit)
 293:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 294:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function moves each bit of a bitstring right by one bit. The carry input is shifted in at 
 295:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 296:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  Value to rotate
 297:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return               Rotated value
 298:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
ARM GAS  /tmp/ccNltSB9.s 			page 26


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
 347:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 348:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  STRT Unprivileged (16 bit)
 349:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 350:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a Unprivileged STRT instruction for 16 bit values.
 351:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 352:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to store
 353:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to location
 354:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 355:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __STRHT(value, ptr)               __strt(value, ptr)
ARM GAS  /tmp/ccNltSB9.s 			page 27


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
 404:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 405:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Wait For Event
 406:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 407:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Wait For Event is a hint instruction that permits the processor to enter
 408:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     a low-power state until one of a number of events occurs.
 409:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 410:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __WFE(void)
 411:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 412:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   __ASM volatile ("wfe");
ARM GAS  /tmp/ccNltSB9.s 			page 28


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
 269              		.loc 3 456 0
 270              		.syntax unified
 271              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 272 0056 BFF35F8F 		dmb
 273              	@ 0 "" 2
 274              		.thumb
 275              		.syntax unified
 276              	.LBE57:
 277              	.LBE56:
 278              	.LBE51:
 279              	.LBE50:
 280              		.file 4 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h"
   1:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** /**
ARM GAS  /tmp/ccNltSB9.s 			page 29


   2:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  * \file
   3:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  *
   4:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  * \brief FPU support for SAM.
   5:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  *
   6:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  * Copyright (c) 2014-2015 Atmel Corporation. All rights reserved.
   7:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  *
   8:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  * \asf_license_start
   9:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  *
  10:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  * \page License
  11:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  *
  12:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  * Redistribution and use in source and binary forms, with or without
  13:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  * modification, are permitted provided that the following conditions are met:
  14:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  *
  15:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  *    this list of conditions and the following disclaimer.
  17:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  *
  18:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  *    this list of conditions and the following disclaimer in the documentation
  20:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  *    and/or other materials provided with the distribution.
  21:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  *
  22:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  *    from this software without specific prior written permission.
  24:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  *
  25:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  * 4. This software may only be redistributed and used in connection with an
  26:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  *    Atmel microcontroller product.
  27:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  *
  28:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
  31:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  * POSSIBILITY OF SUCH DAMAGE.
  39:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  *
  40:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  * \asf_license_stop
  41:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  *
  42:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  */
  43:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** /*
  44:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  */
  46:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** 
  47:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** #ifndef _FPU_H_INCLUDED_
  48:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** #define _FPU_H_INCLUDED_
  49:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** 
  50:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** #include <compiler.h>
  51:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** 
  52:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** /** Address for ARM CPACR */
  53:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** #define ADDR_CPACR 0xE000ED88
  54:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** 
  55:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** /** CPACR Register */
  56:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** #define REG_CPACR  (*((volatile uint32_t *)ADDR_CPACR))
  57:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** 
  58:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** /**
ARM GAS  /tmp/ccNltSB9.s 			page 30


  59:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  * \brief Enable FPU
  60:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  */
  61:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** __always_inline static void fpu_enable(void)
  62:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** {
  63:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** 	irqflags_t flags;
  64:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** 	flags = cpu_irq_save();
  65:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** 	REG_CPACR |=  (0xFu << 20);
 281              		.loc 4 65 0
 282 005a 1649     		ldr	r1, .L16+28
 283              	.LBB59:
 284              	.LBB58:
 285              		.file 5 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
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
ARM GAS  /tmp/ccNltSB9.s 			page 31


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
ARM GAS  /tmp/ccNltSB9.s 			page 32


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
 286              		.loc 5 154 0
 287 005c 0022     		movs	r2, #0
 288 005e 1648     		ldr	r0, .L16+32
 289 0060 0270     		strb	r2, [r0]
 290              	.LBE58:
ARM GAS  /tmp/ccNltSB9.s 			page 33


 291              	.LBE59:
 292              		.loc 4 65 0
 293 0062 0A68     		ldr	r2, [r1]
 294 0064 42F47002 		orr	r2, r2, #15728640
 295 0068 0A60     		str	r2, [r1]
 296              	.LBB60:
 297              	.LBB61:
 445:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 298              		.loc 3 445 0
 299              		.syntax unified
 300              	@ 445 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 301 006a BFF34F8F 		dsb
 302              	@ 0 "" 2
 303              		.thumb
 304              		.syntax unified
 305              	.LBE61:
 306              	.LBE60:
 307              	.LBB62:
 308              	.LBB63:
 434:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 309              		.loc 3 434 0
 310              		.syntax unified
 311              	@ 434 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 312 006e BFF36F8F 		isb
 313              	@ 0 "" 2
 314              		.thumb
 315              		.syntax unified
 316              	.LBE63:
 317              	.LBE62:
 318              	.LBB64:
 319              	.LBB65:
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
 320              		.loc 5 165 0
 321 0072 23B9     		cbnz	r3, .L10
 166:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 		cpu_irq_enable();
 322              		.loc 5 166 0
 323 0074 0123     		movs	r3, #1
 324 0076 0370     		strb	r3, [r0]
 325              	.LBB66:
 326              	.LBB67:
 327              		.loc 3 456 0
 328              		.syntax unified
 329              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 330 0078 BFF35F8F 		dmb
 331              	@ 0 "" 2
 332              		.thumb
 333              		.syntax unified
ARM GAS  /tmp/ccNltSB9.s 			page 34


 334              	.LBE67:
 335              	.LBE66:
 336              	.LBB68:
 337              	.LBB69:
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 338              		.loc 2 319 0
 339              		.syntax unified
 340              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 341 007c 62B6     		cpsie i
 342              	@ 0 "" 2
 343              		.thumb
 344              		.syntax unified
 345              	.L10:
 346              	.LBE69:
 347              	.LBE68:
 348              	.LBE65:
 349              	.LBE64:
 350              	.LBE49:
 351              	.LBE48:
 357:../variants/same70/startup_same70.c **** 	UrgentInit();			// initialise anything in the main application that can't wait
 352              		.loc 1 357 0
 353 007e FFF7FEFF 		bl	SystemInit
 354              	.LVL9:
 358:../variants/same70/startup_same70.c **** 	__libc_init_array();	// initialize C library and call C++ constructors for static data
 355              		.loc 1 358 0
 356 0082 FFF7FEFF 		bl	UrgentInit
 357              	.LVL10:
 359:../variants/same70/startup_same70.c **** 	init();					// initialise variant
 358              		.loc 1 359 0
 359 0086 FFF7FEFF 		bl	__libc_init_array
 360              	.LVL11:
 360:../variants/same70/startup_same70.c **** 
 361              		.loc 1 360 0
 362 008a FFF7FEFF 		bl	init
 363              	.LVL12:
 372:../variants/same70/startup_same70.c **** 
 364              		.loc 1 372 0
 365 008e BDE80840 		pop	{r3, lr}
 366              		.cfi_restore 14
 367              		.cfi_restore 3
 368              		.cfi_def_cfa_offset 0
 371:../variants/same70/startup_same70.c **** }
 369              		.loc 1 371 0
 370 0092 FFF7FEBF 		b	AppMain
 371              	.LVL13:
 372              	.L17:
 373 0096 00BF     		.align	2
 374              	.L16:
 375 0098 00000000 		.word	_etext
 376 009c 00000000 		.word	_srelocate
 377 00a0 00000000 		.word	_erelocate
 378 00a4 00000000 		.word	_szero
 379 00a8 00000000 		.word	_ezero
 380 00ac 00000000 		.word	_sfixed
 381 00b0 00ED00E0 		.word	-536810240
 382 00b4 88ED00E0 		.word	-536810104
 383 00b8 00000000 		.word	g_interrupt_enabled
ARM GAS  /tmp/ccNltSB9.s 			page 35


 384              		.cfi_endproc
 385              	.LFE146:
 386              		.size	Reset_Handler, .-Reset_Handler
 387              		.section	.text.vApplicationTickHook,"ax",%progbits
 388              		.align	1
 389              		.p2align 2,,3
 390              		.global	vApplicationTickHook
 391              		.syntax unified
 392              		.thumb
 393              		.thumb_func
 394              		.fpu fpv5-d16
 395              		.type	vApplicationTickHook, %function
 396              	vApplicationTickHook:
 397              	.LFB145:
  95:../variants/same70/startup_same70.c **** 	if (sysTickHook())
 398              		.loc 1 95 0
 399              		.cfi_startproc
 400              		@ args = 0, pretend = 0, frame = 0
 401              		@ frame_needed = 0, uses_anonymous_args = 0
 402 0000 08B5     		push	{r3, lr}
 403              		.cfi_def_cfa_offset 8
 404              		.cfi_offset 3, -8
 405              		.cfi_offset 14, -4
  96:../variants/same70/startup_same70.c **** 		return;
 406              		.loc 1 96 0
 407 0002 FFF7FEFF 		bl	sysTickHook
 408              	.LVL14:
 409 0006 00B1     		cbz	r0, .L21
 410 0008 08BD     		pop	{r3, pc}
 411              	.L21:
  99:../variants/same70/startup_same70.c **** 	TimeTick_Increment();						// increment tick count each ms
 412              		.loc 1 99 0
 413 000a 0348     		ldr	r0, .L22
 414 000c FFF7FEFF 		bl	wdt_restart
 415              	.LVL15:
 101:../variants/same70/startup_same70.c **** 
 416              		.loc 1 101 0
 417 0010 BDE80840 		pop	{r3, lr}
 418              		.cfi_restore 14
 419              		.cfi_restore 3
 420              		.cfi_def_cfa_offset 0
 100:../variants/same70/startup_same70.c **** }
 421              		.loc 1 100 0
 422 0014 FFF7FEBF 		b	TimeTick_Increment
 423              	.LVL16:
 424              	.L23:
 425              		.align	2
 426              	.L22:
 427 0018 50180E40 		.word	1074665552
 428              		.cfi_endproc
 429              	.LFE145:
 430              		.size	vApplicationTickHook, .-vApplicationTickHook
 431              		.global	exception_table
 432              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 433              		.align	2
 434              		.type	cpu_irq_critical_section_counter, %object
 435              		.size	cpu_irq_critical_section_counter, 4
ARM GAS  /tmp/ccNltSB9.s 			page 36


 436              	cpu_irq_critical_section_counter:
 437 0000 00000000 		.space	4
 438              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 439              		.type	cpu_irq_prev_interrupt_state, %object
 440              		.size	cpu_irq_prev_interrupt_state, 1
 441              	cpu_irq_prev_interrupt_state:
 442 0000 00       		.space	1
 443              		.section	.vectors,"a",%progbits
 444              		.align	2
 445              		.type	exception_table, %object
 446              		.size	exception_table, 320
 447              	exception_table:
 448 0000 00000000 		.word	_estack
 449 0004 00000000 		.word	Reset_Handler
 450 0008 00000000 		.word	NMI_Handler
 451 000c 00000000 		.word	HardFault_Handler
 452 0010 00000000 		.word	MemManage_Handler
 453 0014 00000000 		.word	BusFault_Handler
 454 0018 00000000 		.word	UsageFault_Handler
 455 001c 00000000 		.word	0
 456 0020 00000000 		.word	0
 457 0024 00000000 		.word	0
 458 0028 00000000 		.word	0
 459 002c 00000000 		.word	SVC_Handler
 460 0030 00000000 		.word	DebugMon_Handler
 461 0034 00000000 		.word	0
 462 0038 00000000 		.word	PendSV_Handler
 463 003c 00000000 		.word	SysTick_Handler
 464 0040 00000000 		.word	SUPC_Handler
 465 0044 00000000 		.word	RSTC_Handler
 466 0048 00000000 		.word	RTC_Handler
 467 004c 00000000 		.word	RTT_Handler
 468 0050 00000000 		.word	WDT_Handler
 469 0054 00000000 		.word	PMC_Handler
 470 0058 00000000 		.word	EFC_Handler
 471 005c 00000000 		.word	UART0_Handler
 472 0060 00000000 		.word	UART1_Handler
 473 0064 00000000 		.word	0
 474 0068 00000000 		.word	PIOA_Handler
 475 006c 00000000 		.word	PIOB_Handler
 476 0070 00000000 		.word	PIOC_Handler
 477 0074 00000000 		.word	USART0_Handler
 478 0078 00000000 		.word	USART1_Handler
 479 007c 00000000 		.word	USART2_Handler
 480 0080 00000000 		.word	PIOD_Handler
 481 0084 00000000 		.word	PIOE_Handler
 482 0088 00000000 		.word	HSMCI_Handler
 483 008c 00000000 		.word	TWIHS0_Handler
 484 0090 00000000 		.word	TWIHS1_Handler
 485 0094 00000000 		.word	SPI0_Handler
 486 0098 00000000 		.word	SSC_Handler
 487 009c 00000000 		.word	TC0_Handler
 488 00a0 00000000 		.word	TC1_Handler
 489 00a4 00000000 		.word	TC2_Handler
 490 00a8 00000000 		.word	TC3_Handler
 491 00ac 00000000 		.word	TC4_Handler
 492 00b0 00000000 		.word	TC5_Handler
ARM GAS  /tmp/ccNltSB9.s 			page 37


 493 00b4 00000000 		.word	AFEC0_Handler
 494 00b8 00000000 		.word	DACC_Handler
 495 00bc 00000000 		.word	PWM0_Handler
 496 00c0 00000000 		.word	ICM_Handler
 497 00c4 00000000 		.word	ACC_Handler
 498 00c8 00000000 		.word	USBHS_Handler
 499 00cc 00000000 		.word	MCAN0_Handler
 500 00d0 00000000 		.word	0
 501 00d4 00000000 		.word	MCAN1_Handler
 502 00d8 00000000 		.word	0
 503 00dc 00000000 		.word	GMAC_Handler
 504 00e0 00000000 		.word	AFEC1_Handler
 505 00e4 00000000 		.word	TWIHS2_Handler
 506 00e8 00000000 		.word	SPI1_Handler
 507 00ec 00000000 		.word	QSPI_Handler
 508 00f0 00000000 		.word	UART2_Handler
 509 00f4 00000000 		.word	UART3_Handler
 510 00f8 00000000 		.word	UART4_Handler
 511 00fc 00000000 		.word	TC6_Handler
 512 0100 00000000 		.word	TC7_Handler
 513 0104 00000000 		.word	TC8_Handler
 514 0108 00000000 		.word	TC9_Handler
 515 010c 00000000 		.word	TC10_Handler
 516 0110 00000000 		.word	TC11_Handler
 517 0114 00000000 		.word	0
 518 0118 00000000 		.word	0
 519 011c 00000000 		.word	0
 520 0120 00000000 		.word	AES_Handler
 521 0124 00000000 		.word	TRNG_Handler
 522 0128 00000000 		.word	XDMAC_Handler
 523 012c 00000000 		.word	ISI_Handler
 524 0130 00000000 		.word	PWM1_Handler
 525 0134 00000000 		.word	0
 526 0138 00000000 		.word	SDRAMC_Handler
 527 013c 00000000 		.word	RSWDT_Handler
 528              		.text
 529              	.Letext0:
 530              		.file 6 "/usr/include/newlib/machine/_default_types.h"
 531              		.file 7 "/usr/include/newlib/sys/_stdint.h"
 532              		.file 8 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/same70q21.h"
 533              		.file 9 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 534              		.file 10 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 535              		.file 11 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/wdt
 536              		.file 12 "/usr/include/newlib/sys/lock.h"
 537              		.file 13 "/usr/include/newlib/sys/_types.h"
 538              		.file 14 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 539              		.file 15 "/usr/include/newlib/sys/reent.h"
 540              		.file 16 "/usr/include/newlib/stdlib.h"
 541              		.file 17 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/wdt/wdt.h"
 542              		.section	.debug_info,"",%progbits
 543              	.Ldebug_info0:
 544 0000 C0130000 		.4byte	0x13c0
 545 0004 0400     		.2byte	0x4
 546 0006 00000000 		.4byte	.Ldebug_abbrev0
 547 000a 04       		.byte	0x4
 548 000b 01       		.uleb128 0x1
 549 000c BE0B0000 		.4byte	.LASF300
ARM GAS  /tmp/ccNltSB9.s 			page 38


 550 0010 0C       		.byte	0xc
 551 0011 C5000000 		.4byte	.LASF301
 552 0015 99050000 		.4byte	.LASF302
 553 0019 18000000 		.4byte	.Ldebug_ranges0+0x18
 554 001d 00000000 		.4byte	0
 555 0021 00000000 		.4byte	.Ldebug_line0
 556 0025 02       		.uleb128 0x2
 557 0026 01       		.byte	0x1
 558 0027 06       		.byte	0x6
 559 0028 DA0C0000 		.4byte	.LASF0
 560 002c 03       		.uleb128 0x3
 561 002d E6090000 		.4byte	.LASF4
 562 0031 06       		.byte	0x6
 563 0032 1D       		.byte	0x1d
 564 0033 37000000 		.4byte	0x37
 565 0037 02       		.uleb128 0x2
 566 0038 01       		.byte	0x1
 567 0039 08       		.byte	0x8
 568 003a 500B0000 		.4byte	.LASF1
 569 003e 02       		.uleb128 0x2
 570 003f 02       		.byte	0x2
 571 0040 05       		.byte	0x5
 572 0041 86010000 		.4byte	.LASF2
 573 0045 02       		.uleb128 0x2
 574 0046 02       		.byte	0x2
 575 0047 07       		.byte	0x7
 576 0048 ED0C0000 		.4byte	.LASF3
 577 004c 03       		.uleb128 0x3
 578 004d 56010000 		.4byte	.LASF5
 579 0051 06       		.byte	0x6
 580 0052 3F       		.byte	0x3f
 581 0053 57000000 		.4byte	0x57
 582 0057 02       		.uleb128 0x2
 583 0058 04       		.byte	0x4
 584 0059 05       		.byte	0x5
 585 005a E6080000 		.4byte	.LASF6
 586 005e 03       		.uleb128 0x3
 587 005f 40080000 		.4byte	.LASF7
 588 0063 06       		.byte	0x6
 589 0064 41       		.byte	0x41
 590 0065 69000000 		.4byte	0x69
 591 0069 02       		.uleb128 0x2
 592 006a 04       		.byte	0x4
 593 006b 07       		.byte	0x7
 594 006c B80A0000 		.4byte	.LASF8
 595 0070 02       		.uleb128 0x2
 596 0071 08       		.byte	0x8
 597 0072 05       		.byte	0x5
 598 0073 D1060000 		.4byte	.LASF9
 599 0077 02       		.uleb128 0x2
 600 0078 08       		.byte	0x8
 601 0079 07       		.byte	0x7
 602 007a 37030000 		.4byte	.LASF10
 603 007e 04       		.uleb128 0x4
 604 007f 04       		.byte	0x4
 605 0080 05       		.byte	0x5
 606 0081 696E7400 		.ascii	"int\000"
ARM GAS  /tmp/ccNltSB9.s 			page 39


 607 0085 02       		.uleb128 0x2
 608 0086 04       		.byte	0x4
 609 0087 07       		.byte	0x7
 610 0088 04010000 		.4byte	.LASF11
 611 008c 03       		.uleb128 0x3
 612 008d 35060000 		.4byte	.LASF12
 613 0091 07       		.byte	0x7
 614 0092 18       		.byte	0x18
 615 0093 2C000000 		.4byte	0x2c
 616 0097 05       		.uleb128 0x5
 617 0098 8C000000 		.4byte	0x8c
 618 009c 03       		.uleb128 0x3
 619 009d F90A0000 		.4byte	.LASF13
 620 00a1 07       		.byte	0x7
 621 00a2 2C       		.byte	0x2c
 622 00a3 4C000000 		.4byte	0x4c
 623 00a7 05       		.uleb128 0x5
 624 00a8 9C000000 		.4byte	0x9c
 625 00ac 03       		.uleb128 0x3
 626 00ad 18010000 		.4byte	.LASF14
 627 00b1 07       		.byte	0x7
 628 00b2 30       		.byte	0x30
 629 00b3 5E000000 		.4byte	0x5e
 630 00b7 05       		.uleb128 0x5
 631 00b8 AC000000 		.4byte	0xac
 632 00bc 06       		.uleb128 0x6
 633 00bd B7000000 		.4byte	0xb7
 634 00c1 07       		.uleb128 0x7
 635 00c2 50050000 		.4byte	.LASF161
 636 00c6 4001     		.2byte	0x140
 637 00c8 08       		.byte	0x8
 638 00c9 93       		.byte	0x93
 639 00ca 9F040000 		.4byte	0x49f
 640 00ce 08       		.uleb128 0x8
 641 00cf 0D060000 		.4byte	.LASF15
 642 00d3 08       		.byte	0x8
 643 00d4 96       		.byte	0x96
 644 00d5 9F040000 		.4byte	0x49f
 645 00d9 00       		.byte	0
 646 00da 08       		.uleb128 0x8
 647 00db FC050000 		.4byte	.LASF16
 648 00df 08       		.byte	0x8
 649 00e0 99       		.byte	0x99
 650 00e1 9F040000 		.4byte	0x49f
 651 00e5 04       		.byte	0x4
 652 00e6 08       		.uleb128 0x8
 653 00e7 0B050000 		.4byte	.LASF17
 654 00eb 08       		.byte	0x8
 655 00ec 9A       		.byte	0x9a
 656 00ed 9F040000 		.4byte	0x49f
 657 00f1 08       		.byte	0x8
 658 00f2 08       		.uleb128 0x8
 659 00f3 610A0000 		.4byte	.LASF18
 660 00f7 08       		.byte	0x8
 661 00f8 9B       		.byte	0x9b
 662 00f9 9F040000 		.4byte	0x49f
 663 00fd 0C       		.byte	0xc
ARM GAS  /tmp/ccNltSB9.s 			page 40


 664 00fe 08       		.uleb128 0x8
 665 00ff F0030000 		.4byte	.LASF19
 666 0103 08       		.byte	0x8
 667 0104 9C       		.byte	0x9c
 668 0105 9F040000 		.4byte	0x49f
 669 0109 10       		.byte	0x10
 670 010a 08       		.uleb128 0x8
 671 010b 340B0000 		.4byte	.LASF20
 672 010f 08       		.byte	0x8
 673 0110 9D       		.byte	0x9d
 674 0111 9F040000 		.4byte	0x49f
 675 0115 14       		.byte	0x14
 676 0116 08       		.uleb128 0x8
 677 0117 DC050000 		.4byte	.LASF21
 678 011b 08       		.byte	0x8
 679 011c 9E       		.byte	0x9e
 680 011d 9F040000 		.4byte	0x49f
 681 0121 18       		.byte	0x18
 682 0122 08       		.uleb128 0x8
 683 0123 6C0C0000 		.4byte	.LASF22
 684 0127 08       		.byte	0x8
 685 0128 9F       		.byte	0x9f
 686 0129 9F040000 		.4byte	0x49f
 687 012d 1C       		.byte	0x1c
 688 012e 08       		.uleb128 0x8
 689 012f 4B020000 		.4byte	.LASF23
 690 0133 08       		.byte	0x8
 691 0134 A0       		.byte	0xa0
 692 0135 9F040000 		.4byte	0x49f
 693 0139 20       		.byte	0x20
 694 013a 08       		.uleb128 0x8
 695 013b 55060000 		.4byte	.LASF24
 696 013f 08       		.byte	0x8
 697 0140 A1       		.byte	0xa1
 698 0141 9F040000 		.4byte	0x49f
 699 0145 24       		.byte	0x24
 700 0146 08       		.uleb128 0x8
 701 0147 0F0A0000 		.4byte	.LASF25
 702 014b 08       		.byte	0x8
 703 014c A2       		.byte	0xa2
 704 014d 9F040000 		.4byte	0x49f
 705 0151 28       		.byte	0x28
 706 0152 08       		.uleb128 0x8
 707 0153 CB0C0000 		.4byte	.LASF26
 708 0157 08       		.byte	0x8
 709 0158 A3       		.byte	0xa3
 710 0159 9F040000 		.4byte	0x49f
 711 015d 2C       		.byte	0x2c
 712 015e 08       		.uleb128 0x8
 713 015f 71090000 		.4byte	.LASF27
 714 0163 08       		.byte	0x8
 715 0164 A4       		.byte	0xa4
 716 0165 9F040000 		.4byte	0x49f
 717 0169 30       		.byte	0x30
 718 016a 08       		.uleb128 0x8
 719 016b 89040000 		.4byte	.LASF28
 720 016f 08       		.byte	0x8
ARM GAS  /tmp/ccNltSB9.s 			page 41


 721 0170 A5       		.byte	0xa5
 722 0171 9F040000 		.4byte	0x49f
 723 0175 34       		.byte	0x34
 724 0176 08       		.uleb128 0x8
 725 0177 4B000000 		.4byte	.LASF29
 726 017b 08       		.byte	0x8
 727 017c A6       		.byte	0xa6
 728 017d 9F040000 		.4byte	0x49f
 729 0181 38       		.byte	0x38
 730 0182 08       		.uleb128 0x8
 731 0183 6F030000 		.4byte	.LASF30
 732 0187 08       		.byte	0x8
 733 0188 A7       		.byte	0xa7
 734 0189 9F040000 		.4byte	0x49f
 735 018d 3C       		.byte	0x3c
 736 018e 08       		.uleb128 0x8
 737 018f 5E0B0000 		.4byte	.LASF31
 738 0193 08       		.byte	0x8
 739 0194 AA       		.byte	0xaa
 740 0195 9F040000 		.4byte	0x49f
 741 0199 40       		.byte	0x40
 742 019a 08       		.uleb128 0x8
 743 019b 010B0000 		.4byte	.LASF32
 744 019f 08       		.byte	0x8
 745 01a0 AB       		.byte	0xab
 746 01a1 9F040000 		.4byte	0x49f
 747 01a5 44       		.byte	0x44
 748 01a6 08       		.uleb128 0x8
 749 01a7 A3070000 		.4byte	.LASF33
 750 01ab 08       		.byte	0x8
 751 01ac AC       		.byte	0xac
 752 01ad 9F040000 		.4byte	0x49f
 753 01b1 48       		.byte	0x48
 754 01b2 08       		.uleb128 0x8
 755 01b3 92060000 		.4byte	.LASF34
 756 01b7 08       		.byte	0x8
 757 01b8 AD       		.byte	0xad
 758 01b9 9F040000 		.4byte	0x49f
 759 01bd 4C       		.byte	0x4c
 760 01be 08       		.uleb128 0x8
 761 01bf 100D0000 		.4byte	.LASF35
 762 01c3 08       		.byte	0x8
 763 01c4 AE       		.byte	0xae
 764 01c5 9F040000 		.4byte	0x49f
 765 01c9 50       		.byte	0x50
 766 01ca 08       		.uleb128 0x8
 767 01cb D6030000 		.4byte	.LASF36
 768 01cf 08       		.byte	0x8
 769 01d0 AF       		.byte	0xaf
 770 01d1 9F040000 		.4byte	0x49f
 771 01d5 54       		.byte	0x54
 772 01d6 08       		.uleb128 0x8
 773 01d7 84070000 		.4byte	.LASF37
 774 01db 08       		.byte	0x8
 775 01dc B0       		.byte	0xb0
 776 01dd 9F040000 		.4byte	0x49f
 777 01e1 58       		.byte	0x58
ARM GAS  /tmp/ccNltSB9.s 			page 42


 778 01e2 08       		.uleb128 0x8
 779 01e3 3D060000 		.4byte	.LASF38
 780 01e7 08       		.byte	0x8
 781 01e8 B1       		.byte	0xb1
 782 01e9 9F040000 		.4byte	0x49f
 783 01ed 5C       		.byte	0x5c
 784 01ee 08       		.uleb128 0x8
 785 01ef F0090000 		.4byte	.LASF39
 786 01f3 08       		.byte	0x8
 787 01f4 B2       		.byte	0xb2
 788 01f5 9F040000 		.4byte	0x49f
 789 01f9 60       		.byte	0x60
 790 01fa 08       		.uleb128 0x8
 791 01fb 8B0B0000 		.4byte	.LASF40
 792 01ff 08       		.byte	0x8
 793 0200 B3       		.byte	0xb3
 794 0201 9F040000 		.4byte	0x49f
 795 0205 64       		.byte	0x64
 796 0206 08       		.uleb128 0x8
 797 0207 FE070000 		.4byte	.LASF41
 798 020b 08       		.byte	0x8
 799 020c B4       		.byte	0xb4
 800 020d 9F040000 		.4byte	0x49f
 801 0211 68       		.byte	0x68
 802 0212 08       		.uleb128 0x8
 803 0213 79040000 		.4byte	.LASF42
 804 0217 08       		.byte	0x8
 805 0218 B5       		.byte	0xb5
 806 0219 9F040000 		.4byte	0x49f
 807 021d 6C       		.byte	0x6c
 808 021e 08       		.uleb128 0x8
 809 021f 24080000 		.4byte	.LASF43
 810 0223 08       		.byte	0x8
 811 0224 B6       		.byte	0xb6
 812 0225 9F040000 		.4byte	0x49f
 813 0229 70       		.byte	0x70
 814 022a 08       		.uleb128 0x8
 815 022b EF080000 		.4byte	.LASF44
 816 022f 08       		.byte	0x8
 817 0230 B7       		.byte	0xb7
 818 0231 9F040000 		.4byte	0x49f
 819 0235 74       		.byte	0x74
 820 0236 08       		.uleb128 0x8
 821 0237 D10D0000 		.4byte	.LASF45
 822 023b 08       		.byte	0x8
 823 023c B8       		.byte	0xb8
 824 023d 9F040000 		.4byte	0x49f
 825 0241 78       		.byte	0x78
 826 0242 08       		.uleb128 0x8
 827 0243 8A030000 		.4byte	.LASF46
 828 0247 08       		.byte	0x8
 829 0248 B9       		.byte	0xb9
 830 0249 9F040000 		.4byte	0x49f
 831 024d 7C       		.byte	0x7c
 832 024e 08       		.uleb128 0x8
 833 024f 000D0000 		.4byte	.LASF47
 834 0253 08       		.byte	0x8
ARM GAS  /tmp/ccNltSB9.s 			page 43


 835 0254 BA       		.byte	0xba
 836 0255 9F040000 		.4byte	0x49f
 837 0259 80       		.byte	0x80
 838 025a 08       		.uleb128 0x8
 839 025b AC020000 		.4byte	.LASF48
 840 025f 08       		.byte	0x8
 841 0260 BB       		.byte	0xbb
 842 0261 9F040000 		.4byte	0x49f
 843 0265 84       		.byte	0x84
 844 0266 08       		.uleb128 0x8
 845 0267 C4040000 		.4byte	.LASF49
 846 026b 08       		.byte	0x8
 847 026c BC       		.byte	0xbc
 848 026d 9F040000 		.4byte	0x49f
 849 0271 88       		.byte	0x88
 850 0272 08       		.uleb128 0x8
 851 0273 EE0D0000 		.4byte	.LASF50
 852 0277 08       		.byte	0x8
 853 0278 BD       		.byte	0xbd
 854 0279 9F040000 		.4byte	0x49f
 855 027d 8C       		.byte	0x8c
 856 027e 08       		.uleb128 0x8
 857 027f 9C030000 		.4byte	.LASF51
 858 0283 08       		.byte	0x8
 859 0284 BE       		.byte	0xbe
 860 0285 9F040000 		.4byte	0x49f
 861 0289 90       		.byte	0x90
 862 028a 08       		.uleb128 0x8
 863 028b C1070000 		.4byte	.LASF52
 864 028f 08       		.byte	0x8
 865 0290 BF       		.byte	0xbf
 866 0291 9F040000 		.4byte	0x49f
 867 0295 94       		.byte	0x94
 868 0296 08       		.uleb128 0x8
 869 0297 F4020000 		.4byte	.LASF53
 870 029b 08       		.byte	0x8
 871 029c C0       		.byte	0xc0
 872 029d 9F040000 		.4byte	0x49f
 873 02a1 98       		.byte	0x98
 874 02a2 08       		.uleb128 0x8
 875 02a3 A90A0000 		.4byte	.LASF54
 876 02a7 08       		.byte	0x8
 877 02a8 C1       		.byte	0xc1
 878 02a9 9F040000 		.4byte	0x49f
 879 02ad 9C       		.byte	0x9c
 880 02ae 08       		.uleb128 0x8
 881 02af F5000000 		.4byte	.LASF55
 882 02b3 08       		.byte	0x8
 883 02b4 C2       		.byte	0xc2
 884 02b5 9F040000 		.4byte	0x49f
 885 02b9 A0       		.byte	0xa0
 886 02ba 08       		.uleb128 0x8
 887 02bb D5040000 		.4byte	.LASF56
 888 02bf 08       		.byte	0x8
 889 02c0 C3       		.byte	0xc3
 890 02c1 9F040000 		.4byte	0x49f
 891 02c5 A4       		.byte	0xa4
ARM GAS  /tmp/ccNltSB9.s 			page 44


 892 02c6 08       		.uleb128 0x8
 893 02c7 67080000 		.4byte	.LASF57
 894 02cb 08       		.byte	0x8
 895 02cc C4       		.byte	0xc4
 896 02cd 9F040000 		.4byte	0x49f
 897 02d1 A8       		.byte	0xa8
 898 02d2 08       		.uleb128 0x8
 899 02d3 310D0000 		.4byte	.LASF58
 900 02d7 08       		.byte	0x8
 901 02d8 C5       		.byte	0xc5
 902 02d9 9F040000 		.4byte	0x49f
 903 02dd AC       		.byte	0xac
 904 02de 08       		.uleb128 0x8
 905 02df CA020000 		.4byte	.LASF59
 906 02e3 08       		.byte	0x8
 907 02e4 C6       		.byte	0xc6
 908 02e5 9F040000 		.4byte	0x49f
 909 02e9 B0       		.byte	0xb0
 910 02ea 08       		.uleb128 0x8
 911 02eb 4B080000 		.4byte	.LASF60
 912 02ef 08       		.byte	0x8
 913 02f0 C7       		.byte	0xc7
 914 02f1 9F040000 		.4byte	0x49f
 915 02f5 B4       		.byte	0xb4
 916 02f6 08       		.uleb128 0x8
 917 02f7 000E0000 		.4byte	.LASF61
 918 02fb 08       		.byte	0x8
 919 02fc C8       		.byte	0xc8
 920 02fd 9F040000 		.4byte	0x49f
 921 0301 B8       		.byte	0xb8
 922 0302 08       		.uleb128 0x8
 923 0303 74070000 		.4byte	.LASF62
 924 0307 08       		.byte	0x8
 925 0308 C9       		.byte	0xc9
 926 0309 9F040000 		.4byte	0x49f
 927 030d BC       		.byte	0xbc
 928 030e 08       		.uleb128 0x8
 929 030f B5040000 		.4byte	.LASF63
 930 0313 08       		.byte	0x8
 931 0314 CA       		.byte	0xca
 932 0315 9F040000 		.4byte	0x49f
 933 0319 C0       		.byte	0xc0
 934 031a 08       		.uleb128 0x8
 935 031b B40C0000 		.4byte	.LASF64
 936 031f 08       		.byte	0x8
 937 0320 CB       		.byte	0xcb
 938 0321 9F040000 		.4byte	0x49f
 939 0325 C4       		.byte	0xc4
 940 0326 08       		.uleb128 0x8
 941 0327 1B090000 		.4byte	.LASF65
 942 032b 08       		.byte	0x8
 943 032c CC       		.byte	0xcc
 944 032d 9F040000 		.4byte	0x49f
 945 0331 C8       		.byte	0xc8
 946 0332 08       		.uleb128 0x8
 947 0333 500A0000 		.4byte	.LASF66
 948 0337 08       		.byte	0x8
ARM GAS  /tmp/ccNltSB9.s 			page 45


 949 0338 CD       		.byte	0xcd
 950 0339 9F040000 		.4byte	0x49f
 951 033d CC       		.byte	0xcc
 952 033e 08       		.uleb128 0x8
 953 033f 85090000 		.4byte	.LASF67
 954 0343 08       		.byte	0x8
 955 0344 CE       		.byte	0xce
 956 0345 9F040000 		.4byte	0x49f
 957 0349 D0       		.byte	0xd0
 958 034a 08       		.uleb128 0x8
 959 034b 6F000000 		.4byte	.LASF68
 960 034f 08       		.byte	0x8
 961 0350 CF       		.byte	0xcf
 962 0351 9F040000 		.4byte	0x49f
 963 0355 D4       		.byte	0xd4
 964 0356 08       		.uleb128 0x8
 965 0357 9C090000 		.4byte	.LASF69
 966 035b 08       		.byte	0x8
 967 035c D0       		.byte	0xd0
 968 035d 9F040000 		.4byte	0x49f
 969 0361 D8       		.byte	0xd8
 970 0362 08       		.uleb128 0x8
 971 0363 EE060000 		.4byte	.LASF70
 972 0367 08       		.byte	0x8
 973 0368 D1       		.byte	0xd1
 974 0369 9F040000 		.4byte	0x49f
 975 036d DC       		.byte	0xdc
 976 036e 08       		.uleb128 0x8
 977 036f A4040000 		.4byte	.LASF71
 978 0373 08       		.byte	0x8
 979 0374 D2       		.byte	0xd2
 980 0375 9F040000 		.4byte	0x49f
 981 0379 E0       		.byte	0xe0
 982 037a 08       		.uleb128 0x8
 983 037b 62070000 		.4byte	.LASF72
 984 037f 08       		.byte	0x8
 985 0380 D3       		.byte	0xd3
 986 0381 9F040000 		.4byte	0x49f
 987 0385 E4       		.byte	0xe4
 988 0386 08       		.uleb128 0x8
 989 0387 890C0000 		.4byte	.LASF73
 990 038b 08       		.byte	0x8
 991 038c D4       		.byte	0xd4
 992 038d 9F040000 		.4byte	0x49f
 993 0391 E8       		.byte	0xe8
 994 0392 08       		.uleb128 0x8
 995 0393 6A020000 		.4byte	.LASF74
 996 0397 08       		.byte	0x8
 997 0398 D5       		.byte	0xd5
 998 0399 9F040000 		.4byte	0x49f
 999 039d EC       		.byte	0xec
 1000 039e 08       		.uleb128 0x8
 1001 039f 28000000 		.4byte	.LASF75
 1002 03a3 08       		.byte	0x8
 1003 03a4 D6       		.byte	0xd6
 1004 03a5 9F040000 		.4byte	0x49f
 1005 03a9 F0       		.byte	0xf0
ARM GAS  /tmp/ccNltSB9.s 			page 46


 1006 03aa 08       		.uleb128 0x8
 1007 03ab 22040000 		.4byte	.LASF76
 1008 03af 08       		.byte	0x8
 1009 03b0 D7       		.byte	0xd7
 1010 03b1 9F040000 		.4byte	0x49f
 1011 03b5 F4       		.byte	0xf4
 1012 03b6 08       		.uleb128 0x8
 1013 03b7 D1070000 		.4byte	.LASF77
 1014 03bb 08       		.byte	0x8
 1015 03bc D8       		.byte	0xd8
 1016 03bd 9F040000 		.4byte	0x49f
 1017 03c1 F8       		.byte	0xf8
 1018 03c2 08       		.uleb128 0x8
 1019 03c3 14020000 		.4byte	.LASF78
 1020 03c7 08       		.byte	0x8
 1021 03c8 D9       		.byte	0xd9
 1022 03c9 9F040000 		.4byte	0x49f
 1023 03cd FC       		.byte	0xfc
 1024 03ce 09       		.uleb128 0x9
 1025 03cf 20060000 		.4byte	.LASF79
 1026 03d3 08       		.byte	0x8
 1027 03d4 DA       		.byte	0xda
 1028 03d5 9F040000 		.4byte	0x49f
 1029 03d9 0001     		.2byte	0x100
 1030 03db 09       		.uleb128 0x9
 1031 03dc 21010000 		.4byte	.LASF80
 1032 03e0 08       		.byte	0x8
 1033 03e1 DB       		.byte	0xdb
 1034 03e2 9F040000 		.4byte	0x49f
 1035 03e6 0401     		.2byte	0x104
 1036 03e8 09       		.uleb128 0x9
 1037 03e9 E4040000 		.4byte	.LASF81
 1038 03ed 08       		.byte	0x8
 1039 03ee DC       		.byte	0xdc
 1040 03ef 9F040000 		.4byte	0x49f
 1041 03f3 0801     		.2byte	0x108
 1042 03f5 09       		.uleb128 0x9
 1043 03f6 3D070000 		.4byte	.LASF82
 1044 03fa 08       		.byte	0x8
 1045 03fb DD       		.byte	0xdd
 1046 03fc 9F040000 		.4byte	0x49f
 1047 0400 0C01     		.2byte	0x10c
 1048 0402 09       		.uleb128 0x9
 1049 0403 1D0B0000 		.4byte	.LASF83
 1050 0407 08       		.byte	0x8
 1051 0408 DE       		.byte	0xde
 1052 0409 9F040000 		.4byte	0x49f
 1053 040d 1001     		.2byte	0x110
 1054 040f 09       		.uleb128 0x9
 1055 0410 970B0000 		.4byte	.LASF84
 1056 0414 08       		.byte	0x8
 1057 0415 DF       		.byte	0xdf
 1058 0416 9F040000 		.4byte	0x49f
 1059 041a 1401     		.2byte	0x114
 1060 041c 09       		.uleb128 0x9
 1061 041d A40B0000 		.4byte	.LASF85
 1062 0421 08       		.byte	0x8
ARM GAS  /tmp/ccNltSB9.s 			page 47


 1063 0422 E0       		.byte	0xe0
 1064 0423 9F040000 		.4byte	0x49f
 1065 0427 1801     		.2byte	0x118
 1066 0429 09       		.uleb128 0x9
 1067 042a B10B0000 		.4byte	.LASF86
 1068 042e 08       		.byte	0x8
 1069 042f E1       		.byte	0xe1
 1070 0430 9F040000 		.4byte	0x49f
 1071 0434 1C01     		.2byte	0x11c
 1072 0436 09       		.uleb128 0x9
 1073 0437 B2070000 		.4byte	.LASF87
 1074 043b 08       		.byte	0x8
 1075 043c E2       		.byte	0xe2
 1076 043d 9F040000 		.4byte	0x49f
 1077 0441 2001     		.2byte	0x120
 1078 0443 09       		.uleb128 0x9
 1079 0444 FB040000 		.4byte	.LASF88
 1080 0448 08       		.byte	0x8
 1081 0449 E3       		.byte	0xe3
 1082 044a 9F040000 		.4byte	0x49f
 1083 044e 2401     		.2byte	0x124
 1084 0450 09       		.uleb128 0x9
 1085 0451 C8010000 		.4byte	.LASF89
 1086 0455 08       		.byte	0x8
 1087 0456 E4       		.byte	0xe4
 1088 0457 9F040000 		.4byte	0x49f
 1089 045b 2801     		.2byte	0x128
 1090 045d 09       		.uleb128 0x9
 1091 045e D2080000 		.4byte	.LASF90
 1092 0462 08       		.byte	0x8
 1093 0463 E5       		.byte	0xe5
 1094 0464 9F040000 		.4byte	0x49f
 1095 0468 2C01     		.2byte	0x12c
 1096 046a 09       		.uleb128 0x9
 1097 046b 8E000000 		.4byte	.LASF91
 1098 046f 08       		.byte	0x8
 1099 0470 E6       		.byte	0xe6
 1100 0471 9F040000 		.4byte	0x49f
 1101 0475 3001     		.2byte	0x130
 1102 0477 09       		.uleb128 0x9
 1103 0478 C2090000 		.4byte	.LASF92
 1104 047c 08       		.byte	0x8
 1105 047d E7       		.byte	0xe7
 1106 047e 9F040000 		.4byte	0x49f
 1107 0482 3401     		.2byte	0x134
 1108 0484 09       		.uleb128 0x9
 1109 0485 5D000000 		.4byte	.LASF93
 1110 0489 08       		.byte	0x8
 1111 048a E8       		.byte	0xe8
 1112 048b 9F040000 		.4byte	0x49f
 1113 048f 3801     		.2byte	0x138
 1114 0491 09       		.uleb128 0x9
 1115 0492 2D0E0000 		.4byte	.LASF94
 1116 0496 08       		.byte	0x8
 1117 0497 E9       		.byte	0xe9
 1118 0498 9F040000 		.4byte	0x49f
 1119 049c 3C01     		.2byte	0x13c
ARM GAS  /tmp/ccNltSB9.s 			page 48


 1120 049e 00       		.byte	0
 1121 049f 0A       		.uleb128 0xa
 1122 04a0 04       		.byte	0x4
 1123 04a1 03       		.uleb128 0x3
 1124 04a2 FE010000 		.4byte	.LASF95
 1125 04a6 08       		.byte	0x8
 1126 04a7 EA       		.byte	0xea
 1127 04a8 C1000000 		.4byte	0xc1
 1128 04ac 06       		.uleb128 0x6
 1129 04ad A1040000 		.4byte	0x4a1
 1130 04b1 02       		.uleb128 0x2
 1131 04b2 04       		.byte	0x4
 1132 04b3 07       		.byte	0x7
 1133 04b4 9B0A0000 		.4byte	.LASF96
 1134 04b8 0B       		.uleb128 0xb
 1135 04b9 AC02     		.2byte	0x2ac
 1136 04bb 09       		.byte	0x9
 1137 04bc 9A01     		.2byte	0x19a
 1138 04be 65070000 		.4byte	0x765
 1139 04c2 0C       		.uleb128 0xc
 1140 04c3 4A040000 		.4byte	.LASF97
 1141 04c7 09       		.byte	0x9
 1142 04c8 9C01     		.2byte	0x19c
 1143 04ca BC000000 		.4byte	0xbc
 1144 04ce 00       		.byte	0
 1145 04cf 0C       		.uleb128 0xc
 1146 04d0 A40A0000 		.4byte	.LASF98
 1147 04d4 09       		.byte	0x9
 1148 04d5 9D01     		.2byte	0x19d
 1149 04d7 B7000000 		.4byte	0xb7
 1150 04db 04       		.byte	0x4
 1151 04dc 0C       		.uleb128 0xc
 1152 04dd 760A0000 		.4byte	.LASF99
 1153 04e1 09       		.byte	0x9
 1154 04e2 9E01     		.2byte	0x19e
 1155 04e4 B7000000 		.4byte	0xb7
 1156 04e8 08       		.byte	0x8
 1157 04e9 0C       		.uleb128 0xc
 1158 04ea 8B050000 		.4byte	.LASF100
 1159 04ee 09       		.byte	0x9
 1160 04ef 9F01     		.2byte	0x19f
 1161 04f1 B7000000 		.4byte	0xb7
 1162 04f5 0C       		.byte	0xc
 1163 04f6 0D       		.uleb128 0xd
 1164 04f7 53435200 		.ascii	"SCR\000"
 1165 04fb 09       		.byte	0x9
 1166 04fc A001     		.2byte	0x1a0
 1167 04fe B7000000 		.4byte	0xb7
 1168 0502 10       		.byte	0x10
 1169 0503 0D       		.uleb128 0xd
 1170 0504 43435200 		.ascii	"CCR\000"
 1171 0508 09       		.byte	0x9
 1172 0509 A101     		.2byte	0x1a1
 1173 050b B7000000 		.4byte	0xb7
 1174 050f 14       		.byte	0x14
 1175 0510 0C       		.uleb128 0xc
 1176 0511 6F040000 		.4byte	.LASF101
ARM GAS  /tmp/ccNltSB9.s 			page 49


 1177 0515 09       		.byte	0x9
 1178 0516 A201     		.2byte	0x1a2
 1179 0518 75070000 		.4byte	0x775
 1180 051c 18       		.byte	0x18
 1181 051d 0C       		.uleb128 0xc
 1182 051e 94080000 		.4byte	.LASF102
 1183 0522 09       		.byte	0x9
 1184 0523 A301     		.2byte	0x1a3
 1185 0525 B7000000 		.4byte	0xb7
 1186 0529 24       		.byte	0x24
 1187 052a 0C       		.uleb128 0xc
 1188 052b 1B070000 		.4byte	.LASF103
 1189 052f 09       		.byte	0x9
 1190 0530 A401     		.2byte	0x1a4
 1191 0532 B7000000 		.4byte	0xb7
 1192 0536 28       		.byte	0x28
 1193 0537 0C       		.uleb128 0xc
 1194 0538 1A050000 		.4byte	.LASF104
 1195 053c 09       		.byte	0x9
 1196 053d A501     		.2byte	0x1a5
 1197 053f B7000000 		.4byte	0xb7
 1198 0543 2C       		.byte	0x2c
 1199 0544 0C       		.uleb128 0xc
 1200 0545 2A020000 		.4byte	.LASF105
 1201 0549 09       		.byte	0x9
 1202 054a A601     		.2byte	0x1a6
 1203 054c B7000000 		.4byte	0xb7
 1204 0550 30       		.byte	0x30
 1205 0551 0C       		.uleb128 0xc
 1206 0552 76080000 		.4byte	.LASF106
 1207 0556 09       		.byte	0x9
 1208 0557 A701     		.2byte	0x1a7
 1209 0559 B7000000 		.4byte	0xb7
 1210 055d 34       		.byte	0x34
 1211 055e 0C       		.uleb128 0xc
 1212 055f 74040000 		.4byte	.LASF107
 1213 0563 09       		.byte	0x9
 1214 0564 A801     		.2byte	0x1a8
 1215 0566 B7000000 		.4byte	0xb7
 1216 056a 38       		.byte	0x38
 1217 056b 0C       		.uleb128 0xc
 1218 056c E90D0000 		.4byte	.LASF108
 1219 0570 09       		.byte	0x9
 1220 0571 A901     		.2byte	0x1a9
 1221 0573 B7000000 		.4byte	0xb7
 1222 0577 3C       		.byte	0x3c
 1223 0578 0C       		.uleb128 0xc
 1224 0579 9B020000 		.4byte	.LASF109
 1225 057d 09       		.byte	0x9
 1226 057e AA01     		.2byte	0x1aa
 1227 0580 8F070000 		.4byte	0x78f
 1228 0584 40       		.byte	0x40
 1229 0585 0C       		.uleb128 0xc
 1230 0586 D5050000 		.4byte	.LASF110
 1231 058a 09       		.byte	0x9
 1232 058b AB01     		.2byte	0x1ab
 1233 058d BC000000 		.4byte	0xbc
ARM GAS  /tmp/ccNltSB9.s 			page 50


 1234 0591 48       		.byte	0x48
 1235 0592 0C       		.uleb128 0xc
 1236 0593 4E030000 		.4byte	.LASF111
 1237 0597 09       		.byte	0x9
 1238 0598 AC01     		.2byte	0x1ac
 1239 059a BC000000 		.4byte	0xbc
 1240 059e 4C       		.byte	0x4c
 1241 059f 0C       		.uleb128 0xc
 1242 05a0 A6060000 		.4byte	.LASF112
 1243 05a4 09       		.byte	0x9
 1244 05a5 AD01     		.2byte	0x1ad
 1245 05a7 A9070000 		.4byte	0x7a9
 1246 05ab 50       		.byte	0x50
 1247 05ac 0C       		.uleb128 0xc
 1248 05ad A50D0000 		.4byte	.LASF113
 1249 05b1 09       		.byte	0x9
 1250 05b2 AE01     		.2byte	0x1ae
 1251 05b4 C3070000 		.4byte	0x7c3
 1252 05b8 60       		.byte	0x60
 1253 05b9 0C       		.uleb128 0xc
 1254 05ba 8A080000 		.4byte	.LASF114
 1255 05be 09       		.byte	0x9
 1256 05bf AF01     		.2byte	0x1af
 1257 05c1 C8070000 		.4byte	0x7c8
 1258 05c5 74       		.byte	0x74
 1259 05c6 0C       		.uleb128 0xc
 1260 05c7 0E080000 		.4byte	.LASF115
 1261 05cb 09       		.byte	0x9
 1262 05cc B001     		.2byte	0x1b0
 1263 05ce BC000000 		.4byte	0xbc
 1264 05d2 78       		.byte	0x78
 1265 05d3 0D       		.uleb128 0xd
 1266 05d4 43545200 		.ascii	"CTR\000"
 1267 05d8 09       		.byte	0x9
 1268 05d9 B101     		.2byte	0x1b1
 1269 05db BC000000 		.4byte	0xbc
 1270 05df 7C       		.byte	0x7c
 1271 05e0 0C       		.uleb128 0xc
 1272 05e1 4F010000 		.4byte	.LASF116
 1273 05e5 09       		.byte	0x9
 1274 05e6 B201     		.2byte	0x1b2
 1275 05e8 BC000000 		.4byte	0xbc
 1276 05ec 80       		.byte	0x80
 1277 05ed 0C       		.uleb128 0xc
 1278 05ee CA060000 		.4byte	.LASF117
 1279 05f2 09       		.byte	0x9
 1280 05f3 B301     		.2byte	0x1b3
 1281 05f5 B7000000 		.4byte	0xb7
 1282 05f9 84       		.byte	0x84
 1283 05fa 0C       		.uleb128 0xc
 1284 05fb 09000000 		.4byte	.LASF118
 1285 05ff 09       		.byte	0x9
 1286 0600 B401     		.2byte	0x1b4
 1287 0602 B7000000 		.4byte	0xb7
 1288 0606 88       		.byte	0x88
 1289 0607 0C       		.uleb128 0xc
 1290 0608 9A080000 		.4byte	.LASF119
ARM GAS  /tmp/ccNltSB9.s 			page 51


 1291 060c 09       		.byte	0x9
 1292 060d B501     		.2byte	0x1b5
 1293 060f D8070000 		.4byte	0x7d8
 1294 0613 8C       		.byte	0x8c
 1295 0614 0E       		.uleb128 0xe
 1296 0615 3B080000 		.4byte	.LASF120
 1297 0619 09       		.byte	0x9
 1298 061a B601     		.2byte	0x1b6
 1299 061c B7000000 		.4byte	0xb7
 1300 0620 0002     		.2byte	0x200
 1301 0622 0E       		.uleb128 0xe
 1302 0623 A4080000 		.4byte	.LASF121
 1303 0627 09       		.byte	0x9
 1304 0628 B701     		.2byte	0x1b7
 1305 062a E8070000 		.4byte	0x7e8
 1306 062e 0402     		.2byte	0x204
 1307 0630 0E       		.uleb128 0xe
 1308 0631 1F0D0000 		.4byte	.LASF122
 1309 0635 09       		.byte	0x9
 1310 0636 B801     		.2byte	0x1b8
 1311 0638 BC000000 		.4byte	0xbc
 1312 063c 4002     		.2byte	0x240
 1313 063e 0E       		.uleb128 0xe
 1314 063f 250D0000 		.4byte	.LASF123
 1315 0643 09       		.byte	0x9
 1316 0644 B901     		.2byte	0x1b9
 1317 0646 BC000000 		.4byte	0xbc
 1318 064a 4402     		.2byte	0x244
 1319 064c 0E       		.uleb128 0xe
 1320 064d 2B0D0000 		.4byte	.LASF124
 1321 0651 09       		.byte	0x9
 1322 0652 BA01     		.2byte	0x1ba
 1323 0654 BC000000 		.4byte	0xbc
 1324 0658 4802     		.2byte	0x248
 1325 065a 0E       		.uleb128 0xe
 1326 065b AE080000 		.4byte	.LASF125
 1327 065f 09       		.byte	0x9
 1328 0660 BB01     		.2byte	0x1bb
 1329 0662 C8070000 		.4byte	0x7c8
 1330 0666 4C02     		.2byte	0x24c
 1331 0668 0E       		.uleb128 0xe
 1332 0669 37010000 		.4byte	.LASF126
 1333 066d 09       		.byte	0x9
 1334 066e BC01     		.2byte	0x1bc
 1335 0670 B7000000 		.4byte	0xb7
 1336 0674 5002     		.2byte	0x250
 1337 0676 0E       		.uleb128 0xe
 1338 0677 B8080000 		.4byte	.LASF127
 1339 067b 09       		.byte	0x9
 1340 067c BD01     		.2byte	0x1bd
 1341 067e C8070000 		.4byte	0x7c8
 1342 0682 5402     		.2byte	0x254
 1343 0684 0E       		.uleb128 0xe
 1344 0685 82030000 		.4byte	.LASF128
 1345 0689 09       		.byte	0x9
 1346 068a BE01     		.2byte	0x1be
 1347 068c B7000000 		.4byte	0xb7
ARM GAS  /tmp/ccNltSB9.s 			page 52


 1348 0690 5802     		.2byte	0x258
 1349 0692 0E       		.uleb128 0xe
 1350 0693 CD050000 		.4byte	.LASF129
 1351 0697 09       		.byte	0x9
 1352 0698 BF01     		.2byte	0x1bf
 1353 069a B7000000 		.4byte	0xb7
 1354 069e 5C02     		.2byte	0x25c
 1355 06a0 0E       		.uleb128 0xe
 1356 06a1 1F050000 		.4byte	.LASF130
 1357 06a5 09       		.byte	0x9
 1358 06a6 C001     		.2byte	0x1c0
 1359 06a8 B7000000 		.4byte	0xb7
 1360 06ac 6002     		.2byte	0x260
 1361 06ae 0E       		.uleb128 0xe
 1362 06af 35070000 		.4byte	.LASF131
 1363 06b3 09       		.byte	0x9
 1364 06b4 C101     		.2byte	0x1c1
 1365 06b6 B7000000 		.4byte	0xb7
 1366 06ba 6402     		.2byte	0x264
 1367 06bc 0E       		.uleb128 0xe
 1368 06bd 0E070000 		.4byte	.LASF132
 1369 06c1 09       		.byte	0x9
 1370 06c2 C201     		.2byte	0x1c2
 1371 06c4 B7000000 		.4byte	0xb7
 1372 06c8 6802     		.2byte	0x268
 1373 06ca 0E       		.uleb128 0xe
 1374 06cb 0F000000 		.4byte	.LASF133
 1375 06cf 09       		.byte	0x9
 1376 06d0 C301     		.2byte	0x1c3
 1377 06d2 B7000000 		.4byte	0xb7
 1378 06d6 6C02     		.2byte	0x26c
 1379 06d8 0E       		.uleb128 0xe
 1380 06d9 DF060000 		.4byte	.LASF134
 1381 06dd 09       		.byte	0x9
 1382 06de C401     		.2byte	0x1c4
 1383 06e0 B7000000 		.4byte	0xb7
 1384 06e4 7002     		.2byte	0x270
 1385 06e6 0E       		.uleb128 0xe
 1386 06e7 C3060000 		.4byte	.LASF135
 1387 06eb 09       		.byte	0x9
 1388 06ec C501     		.2byte	0x1c5
 1389 06ee B7000000 		.4byte	0xb7
 1390 06f2 7402     		.2byte	0x274
 1391 06f4 0E       		.uleb128 0xe
 1392 06f5 9B0D0000 		.4byte	.LASF136
 1393 06f9 09       		.byte	0x9
 1394 06fa C601     		.2byte	0x1c6
 1395 06fc F8070000 		.4byte	0x7f8
 1396 0700 7802     		.2byte	0x278
 1397 0702 0E       		.uleb128 0xe
 1398 0703 11010000 		.4byte	.LASF137
 1399 0707 09       		.byte	0x9
 1400 0708 C701     		.2byte	0x1c7
 1401 070a B7000000 		.4byte	0xb7
 1402 070e 9002     		.2byte	0x290
 1403 0710 0E       		.uleb128 0xe
 1404 0711 60010000 		.4byte	.LASF138
ARM GAS  /tmp/ccNltSB9.s 			page 53


 1405 0715 09       		.byte	0x9
 1406 0716 C801     		.2byte	0x1c8
 1407 0718 B7000000 		.4byte	0xb7
 1408 071c 9402     		.2byte	0x294
 1409 071e 0E       		.uleb128 0xe
 1410 071f 30010000 		.4byte	.LASF139
 1411 0723 09       		.byte	0x9
 1412 0724 C901     		.2byte	0x1c9
 1413 0726 B7000000 		.4byte	0xb7
 1414 072a 9802     		.2byte	0x298
 1415 072c 0E       		.uleb128 0xe
 1416 072d A1060000 		.4byte	.LASF140
 1417 0731 09       		.byte	0x9
 1418 0732 CA01     		.2byte	0x1ca
 1419 0734 B7000000 		.4byte	0xb7
 1420 0738 9C02     		.2byte	0x29c
 1421 073a 0E       		.uleb128 0xe
 1422 073b B5030000 		.4byte	.LASF141
 1423 073f 09       		.byte	0x9
 1424 0740 CB01     		.2byte	0x1cb
 1425 0742 B7000000 		.4byte	0xb7
 1426 0746 A002     		.2byte	0x2a0
 1427 0748 0E       		.uleb128 0xe
 1428 0749 C8080000 		.4byte	.LASF142
 1429 074d 09       		.byte	0x9
 1430 074e CC01     		.2byte	0x1cc
 1431 0750 C8070000 		.4byte	0x7c8
 1432 0754 A402     		.2byte	0x2a4
 1433 0756 0E       		.uleb128 0xe
 1434 0757 C2080000 		.4byte	.LASF143
 1435 075b 09       		.byte	0x9
 1436 075c CD01     		.2byte	0x1cd
 1437 075e B7000000 		.4byte	0xb7
 1438 0762 A802     		.2byte	0x2a8
 1439 0764 00       		.byte	0
 1440 0765 0F       		.uleb128 0xf
 1441 0766 97000000 		.4byte	0x97
 1442 076a 75070000 		.4byte	0x775
 1443 076e 10       		.uleb128 0x10
 1444 076f B1040000 		.4byte	0x4b1
 1445 0773 0B       		.byte	0xb
 1446 0774 00       		.byte	0
 1447 0775 05       		.uleb128 0x5
 1448 0776 65070000 		.4byte	0x765
 1449 077a 0F       		.uleb128 0xf
 1450 077b BC000000 		.4byte	0xbc
 1451 077f 8A070000 		.4byte	0x78a
 1452 0783 10       		.uleb128 0x10
 1453 0784 B1040000 		.4byte	0x4b1
 1454 0788 01       		.byte	0x1
 1455 0789 00       		.byte	0
 1456 078a 06       		.uleb128 0x6
 1457 078b 7A070000 		.4byte	0x77a
 1458 078f 05       		.uleb128 0x5
 1459 0790 8A070000 		.4byte	0x78a
 1460 0794 0F       		.uleb128 0xf
 1461 0795 BC000000 		.4byte	0xbc
ARM GAS  /tmp/ccNltSB9.s 			page 54


 1462 0799 A4070000 		.4byte	0x7a4
 1463 079d 10       		.uleb128 0x10
 1464 079e B1040000 		.4byte	0x4b1
 1465 07a2 03       		.byte	0x3
 1466 07a3 00       		.byte	0
 1467 07a4 06       		.uleb128 0x6
 1468 07a5 94070000 		.4byte	0x794
 1469 07a9 05       		.uleb128 0x5
 1470 07aa A4070000 		.4byte	0x7a4
 1471 07ae 0F       		.uleb128 0xf
 1472 07af BC000000 		.4byte	0xbc
 1473 07b3 BE070000 		.4byte	0x7be
 1474 07b7 10       		.uleb128 0x10
 1475 07b8 B1040000 		.4byte	0x4b1
 1476 07bc 04       		.byte	0x4
 1477 07bd 00       		.byte	0
 1478 07be 06       		.uleb128 0x6
 1479 07bf AE070000 		.4byte	0x7ae
 1480 07c3 05       		.uleb128 0x5
 1481 07c4 BE070000 		.4byte	0x7be
 1482 07c8 0F       		.uleb128 0xf
 1483 07c9 AC000000 		.4byte	0xac
 1484 07cd D8070000 		.4byte	0x7d8
 1485 07d1 10       		.uleb128 0x10
 1486 07d2 B1040000 		.4byte	0x4b1
 1487 07d6 00       		.byte	0
 1488 07d7 00       		.byte	0
 1489 07d8 0F       		.uleb128 0xf
 1490 07d9 AC000000 		.4byte	0xac
 1491 07dd E8070000 		.4byte	0x7e8
 1492 07e1 10       		.uleb128 0x10
 1493 07e2 B1040000 		.4byte	0x4b1
 1494 07e6 5C       		.byte	0x5c
 1495 07e7 00       		.byte	0
 1496 07e8 0F       		.uleb128 0xf
 1497 07e9 AC000000 		.4byte	0xac
 1498 07ed F8070000 		.4byte	0x7f8
 1499 07f1 10       		.uleb128 0x10
 1500 07f2 B1040000 		.4byte	0x4b1
 1501 07f6 0E       		.byte	0xe
 1502 07f7 00       		.byte	0
 1503 07f8 0F       		.uleb128 0xf
 1504 07f9 AC000000 		.4byte	0xac
 1505 07fd 08080000 		.4byte	0x808
 1506 0801 10       		.uleb128 0x10
 1507 0802 B1040000 		.4byte	0x4b1
 1508 0806 05       		.byte	0x5
 1509 0807 00       		.byte	0
 1510 0808 11       		.uleb128 0x11
 1511 0809 060A0000 		.4byte	.LASF144
 1512 080d 09       		.byte	0x9
 1513 080e CE01     		.2byte	0x1ce
 1514 0810 B8040000 		.4byte	0x4b8
 1515 0814 12       		.uleb128 0x12
 1516 0815 01090000 		.4byte	.LASF145
 1517 0819 09       		.byte	0x9
 1518 081a 6508     		.2byte	0x865
ARM GAS  /tmp/ccNltSB9.s 			page 55


 1519 081c A7000000 		.4byte	0xa7
 1520 0820 13       		.uleb128 0x13
 1521 0821 14080000 		.4byte	.LASF146
 1522 0825 0A       		.byte	0xa
 1523 0826 3A       		.byte	0x3a
 1524 0827 AC000000 		.4byte	0xac
 1525 082b 14       		.uleb128 0x14
 1526 082c 0C       		.byte	0xc
 1527 082d 0B       		.byte	0xb
 1528 082e 38       		.byte	0x38
 1529 082f 58080000 		.4byte	0x858
 1530 0833 08       		.uleb128 0x8
 1531 0834 7F010000 		.4byte	.LASF147
 1532 0838 0B       		.byte	0xb
 1533 0839 39       		.byte	0x39
 1534 083a B7000000 		.4byte	0xb7
 1535 083e 00       		.byte	0
 1536 083f 08       		.uleb128 0x8
 1537 0840 890A0000 		.4byte	.LASF148
 1538 0844 0B       		.byte	0xb
 1539 0845 3A       		.byte	0x3a
 1540 0846 B7000000 		.4byte	0xb7
 1541 084a 04       		.byte	0x4
 1542 084b 08       		.uleb128 0x8
 1543 084c 23020000 		.4byte	.LASF149
 1544 0850 0B       		.byte	0xb
 1545 0851 3B       		.byte	0x3b
 1546 0852 BC000000 		.4byte	0xbc
 1547 0856 08       		.byte	0x8
 1548 0857 00       		.byte	0
 1549 0858 15       		.uleb128 0x15
 1550 0859 57647400 		.ascii	"Wdt\000"
 1551 085d 0B       		.byte	0xb
 1552 085e 3C       		.byte	0x3c
 1553 085f 2B080000 		.4byte	0x82b
 1554 0863 03       		.uleb128 0x3
 1555 0864 790B0000 		.4byte	.LASF150
 1556 0868 0C       		.byte	0xc
 1557 0869 07       		.byte	0x7
 1558 086a 7E000000 		.4byte	0x7e
 1559 086e 03       		.uleb128 0x3
 1560 086f 6A0D0000 		.4byte	.LASF151
 1561 0873 0D       		.byte	0xd
 1562 0874 2C       		.byte	0x2c
 1563 0875 57000000 		.4byte	0x57
 1564 0879 03       		.uleb128 0x3
 1565 087a E1010000 		.4byte	.LASF152
 1566 087e 0D       		.byte	0xd
 1567 087f 72       		.byte	0x72
 1568 0880 57000000 		.4byte	0x57
 1569 0884 11       		.uleb128 0x11
 1570 0885 F20A0000 		.4byte	.LASF153
 1571 0889 0E       		.byte	0xe
 1572 088a 6501     		.2byte	0x165
 1573 088c 85000000 		.4byte	0x85
 1574 0890 16       		.uleb128 0x16
 1575 0891 04       		.byte	0x4
ARM GAS  /tmp/ccNltSB9.s 			page 56


 1576 0892 0D       		.byte	0xd
 1577 0893 A6       		.byte	0xa6
 1578 0894 AF080000 		.4byte	0x8af
 1579 0898 17       		.uleb128 0x17
 1580 0899 2F060000 		.4byte	.LASF154
 1581 089d 0D       		.byte	0xd
 1582 089e A8       		.byte	0xa8
 1583 089f 84080000 		.4byte	0x884
 1584 08a3 17       		.uleb128 0x17
 1585 08a4 6A090000 		.4byte	.LASF155
 1586 08a8 0D       		.byte	0xd
 1587 08a9 A9       		.byte	0xa9
 1588 08aa AF080000 		.4byte	0x8af
 1589 08ae 00       		.byte	0
 1590 08af 0F       		.uleb128 0xf
 1591 08b0 37000000 		.4byte	0x37
 1592 08b4 BF080000 		.4byte	0x8bf
 1593 08b8 10       		.uleb128 0x10
 1594 08b9 B1040000 		.4byte	0x4b1
 1595 08bd 03       		.byte	0x3
 1596 08be 00       		.byte	0
 1597 08bf 14       		.uleb128 0x14
 1598 08c0 08       		.byte	0x8
 1599 08c1 0D       		.byte	0xd
 1600 08c2 A3       		.byte	0xa3
 1601 08c3 E0080000 		.4byte	0x8e0
 1602 08c7 08       		.uleb128 0x8
 1603 08c8 BC020000 		.4byte	.LASF156
 1604 08cc 0D       		.byte	0xd
 1605 08cd A5       		.byte	0xa5
 1606 08ce 7E000000 		.4byte	0x7e
 1607 08d2 00       		.byte	0
 1608 08d3 08       		.uleb128 0x8
 1609 08d4 F3040000 		.4byte	.LASF157
 1610 08d8 0D       		.byte	0xd
 1611 08d9 AA       		.byte	0xaa
 1612 08da 90080000 		.4byte	0x890
 1613 08de 04       		.byte	0x4
 1614 08df 00       		.byte	0
 1615 08e0 03       		.uleb128 0x3
 1616 08e1 57070000 		.4byte	.LASF158
 1617 08e5 0D       		.byte	0xd
 1618 08e6 AB       		.byte	0xab
 1619 08e7 BF080000 		.4byte	0x8bf
 1620 08eb 03       		.uleb128 0x3
 1621 08ec 00000000 		.4byte	.LASF159
 1622 08f0 0D       		.byte	0xd
 1623 08f1 AF       		.byte	0xaf
 1624 08f2 63080000 		.4byte	0x863
 1625 08f6 03       		.uleb128 0x3
 1626 08f7 B2010000 		.4byte	.LASF160
 1627 08fb 0F       		.byte	0xf
 1628 08fc 16       		.byte	0x16
 1629 08fd 69000000 		.4byte	0x69
 1630 0901 18       		.uleb128 0x18
 1631 0902 43020000 		.4byte	.LASF162
 1632 0906 18       		.byte	0x18
ARM GAS  /tmp/ccNltSB9.s 			page 57


 1633 0907 0F       		.byte	0xf
 1634 0908 2D       		.byte	0x2d
 1635 0909 54090000 		.4byte	0x954
 1636 090d 08       		.uleb128 0x8
 1637 090e 9E040000 		.4byte	.LASF163
 1638 0912 0F       		.byte	0xf
 1639 0913 2F       		.byte	0x2f
 1640 0914 54090000 		.4byte	0x954
 1641 0918 00       		.byte	0
 1642 0919 19       		.uleb128 0x19
 1643 091a 5F6B00   		.ascii	"_k\000"
 1644 091d 0F       		.byte	0xf
 1645 091e 30       		.byte	0x30
 1646 091f 7E000000 		.4byte	0x7e
 1647 0923 04       		.byte	0x4
 1648 0924 08       		.uleb128 0x8
 1649 0925 2C0A0000 		.4byte	.LASF164
 1650 0929 0F       		.byte	0xf
 1651 092a 30       		.byte	0x30
 1652 092b 7E000000 		.4byte	0x7e
 1653 092f 08       		.byte	0x8
 1654 0930 08       		.uleb128 0x8
 1655 0931 31090000 		.4byte	.LASF165
 1656 0935 0F       		.byte	0xf
 1657 0936 30       		.byte	0x30
 1658 0937 7E000000 		.4byte	0x7e
 1659 093b 0C       		.byte	0xc
 1660 093c 08       		.uleb128 0x8
 1661 093d 6A030000 		.4byte	.LASF166
 1662 0941 0F       		.byte	0xf
 1663 0942 30       		.byte	0x30
 1664 0943 7E000000 		.4byte	0x7e
 1665 0947 10       		.byte	0x10
 1666 0948 19       		.uleb128 0x19
 1667 0949 5F7800   		.ascii	"_x\000"
 1668 094c 0F       		.byte	0xf
 1669 094d 31       		.byte	0x31
 1670 094e 5A090000 		.4byte	0x95a
 1671 0952 14       		.byte	0x14
 1672 0953 00       		.byte	0
 1673 0954 1A       		.uleb128 0x1a
 1674 0955 04       		.byte	0x4
 1675 0956 01090000 		.4byte	0x901
 1676 095a 0F       		.uleb128 0xf
 1677 095b F6080000 		.4byte	0x8f6
 1678 095f 6A090000 		.4byte	0x96a
 1679 0963 10       		.uleb128 0x10
 1680 0964 B1040000 		.4byte	0x4b1
 1681 0968 00       		.byte	0
 1682 0969 00       		.byte	0
 1683 096a 18       		.uleb128 0x18
 1684 096b 840A0000 		.4byte	.LASF167
 1685 096f 24       		.byte	0x24
 1686 0970 0F       		.byte	0xf
 1687 0971 35       		.byte	0x35
 1688 0972 E3090000 		.4byte	0x9e3
 1689 0976 08       		.uleb128 0x8
ARM GAS  /tmp/ccNltSB9.s 			page 58


 1690 0977 41040000 		.4byte	.LASF168
 1691 097b 0F       		.byte	0xf
 1692 097c 37       		.byte	0x37
 1693 097d 7E000000 		.4byte	0x7e
 1694 0981 00       		.byte	0
 1695 0982 08       		.uleb128 0x8
 1696 0983 C80D0000 		.4byte	.LASF169
 1697 0987 0F       		.byte	0xf
 1698 0988 38       		.byte	0x38
 1699 0989 7E000000 		.4byte	0x7e
 1700 098d 04       		.byte	0x4
 1701 098e 08       		.uleb128 0x8
 1702 098f A2020000 		.4byte	.LASF170
 1703 0993 0F       		.byte	0xf
 1704 0994 39       		.byte	0x39
 1705 0995 7E000000 		.4byte	0x7e
 1706 0999 08       		.byte	0x8
 1707 099a 08       		.uleb128 0x8
 1708 099b 5F050000 		.4byte	.LASF171
 1709 099f 0F       		.byte	0xf
 1710 09a0 3A       		.byte	0x3a
 1711 09a1 7E000000 		.4byte	0x7e
 1712 09a5 0C       		.byte	0xc
 1713 09a6 08       		.uleb128 0x8
 1714 09a7 E2070000 		.4byte	.LASF172
 1715 09ab 0F       		.byte	0xf
 1716 09ac 3B       		.byte	0x3b
 1717 09ad 7E000000 		.4byte	0x7e
 1718 09b1 10       		.byte	0x10
 1719 09b2 08       		.uleb128 0x8
 1720 09b3 92090000 		.4byte	.LASF173
 1721 09b7 0F       		.byte	0xf
 1722 09b8 3C       		.byte	0x3c
 1723 09b9 7E000000 		.4byte	0x7e
 1724 09bd 14       		.byte	0x14
 1725 09be 08       		.uleb128 0x8
 1726 09bf 60020000 		.4byte	.LASF174
 1727 09c3 0F       		.byte	0xf
 1728 09c4 3D       		.byte	0x3d
 1729 09c5 7E000000 		.4byte	0x7e
 1730 09c9 18       		.byte	0x18
 1731 09ca 08       		.uleb128 0x8
 1732 09cb 5A040000 		.4byte	.LASF175
 1733 09cf 0F       		.byte	0xf
 1734 09d0 3E       		.byte	0x3e
 1735 09d1 7E000000 		.4byte	0x7e
 1736 09d5 1C       		.byte	0x1c
 1737 09d6 08       		.uleb128 0x8
 1738 09d7 93070000 		.4byte	.LASF176
 1739 09db 0F       		.byte	0xf
 1740 09dc 3F       		.byte	0x3f
 1741 09dd 7E000000 		.4byte	0x7e
 1742 09e1 20       		.byte	0x20
 1743 09e2 00       		.byte	0
 1744 09e3 07       		.uleb128 0x7
 1745 09e4 A9090000 		.4byte	.LASF177
 1746 09e8 0801     		.2byte	0x108
ARM GAS  /tmp/ccNltSB9.s 			page 59


 1747 09ea 0F       		.byte	0xf
 1748 09eb 48       		.byte	0x48
 1749 09ec 230A0000 		.4byte	0xa23
 1750 09f0 08       		.uleb128 0x8
 1751 09f1 C30C0000 		.4byte	.LASF178
 1752 09f5 0F       		.byte	0xf
 1753 09f6 49       		.byte	0x49
 1754 09f7 230A0000 		.4byte	0xa23
 1755 09fb 00       		.byte	0
 1756 09fc 08       		.uleb128 0x8
 1757 09fd 110B0000 		.4byte	.LASF179
 1758 0a01 0F       		.byte	0xf
 1759 0a02 4A       		.byte	0x4a
 1760 0a03 230A0000 		.4byte	0xa23
 1761 0a07 80       		.byte	0x80
 1762 0a08 09       		.uleb128 0x9
 1763 0a09 400D0000 		.4byte	.LASF180
 1764 0a0d 0F       		.byte	0xf
 1765 0a0e 4C       		.byte	0x4c
 1766 0a0f F6080000 		.4byte	0x8f6
 1767 0a13 0001     		.2byte	0x100
 1768 0a15 09       		.uleb128 0x9
 1769 0a16 B50D0000 		.4byte	.LASF181
 1770 0a1a 0F       		.byte	0xf
 1771 0a1b 4F       		.byte	0x4f
 1772 0a1c F6080000 		.4byte	0x8f6
 1773 0a20 0401     		.2byte	0x104
 1774 0a22 00       		.byte	0
 1775 0a23 0F       		.uleb128 0xf
 1776 0a24 9F040000 		.4byte	0x49f
 1777 0a28 330A0000 		.4byte	0xa33
 1778 0a2c 10       		.uleb128 0x10
 1779 0a2d B1040000 		.4byte	0x4b1
 1780 0a31 1F       		.byte	0x1f
 1781 0a32 00       		.byte	0
 1782 0a33 07       		.uleb128 0x7
 1783 0a34 7C080000 		.4byte	.LASF182
 1784 0a38 9001     		.2byte	0x190
 1785 0a3a 0F       		.byte	0xf
 1786 0a3b 5B       		.byte	0x5b
 1787 0a3c 710A0000 		.4byte	0xa71
 1788 0a40 08       		.uleb128 0x8
 1789 0a41 9E040000 		.4byte	.LASF163
 1790 0a45 0F       		.byte	0xf
 1791 0a46 5C       		.byte	0x5c
 1792 0a47 710A0000 		.4byte	0xa71
 1793 0a4b 00       		.byte	0
 1794 0a4c 08       		.uleb128 0x8
 1795 0a4d 9E070000 		.4byte	.LASF183
 1796 0a51 0F       		.byte	0xf
 1797 0a52 5D       		.byte	0x5d
 1798 0a53 7E000000 		.4byte	0x7e
 1799 0a57 04       		.byte	0x4
 1800 0a58 08       		.uleb128 0x8
 1801 0a59 F9010000 		.4byte	.LASF184
 1802 0a5d 0F       		.byte	0xf
 1803 0a5e 5F       		.byte	0x5f
ARM GAS  /tmp/ccNltSB9.s 			page 60


 1804 0a5f 770A0000 		.4byte	0xa77
 1805 0a63 08       		.byte	0x8
 1806 0a64 08       		.uleb128 0x8
 1807 0a65 A9090000 		.4byte	.LASF177
 1808 0a69 0F       		.byte	0xf
 1809 0a6a 60       		.byte	0x60
 1810 0a6b E3090000 		.4byte	0x9e3
 1811 0a6f 88       		.byte	0x88
 1812 0a70 00       		.byte	0
 1813 0a71 1A       		.uleb128 0x1a
 1814 0a72 04       		.byte	0x4
 1815 0a73 330A0000 		.4byte	0xa33
 1816 0a77 0F       		.uleb128 0xf
 1817 0a78 870A0000 		.4byte	0xa87
 1818 0a7c 870A0000 		.4byte	0xa87
 1819 0a80 10       		.uleb128 0x10
 1820 0a81 B1040000 		.4byte	0x4b1
 1821 0a85 1F       		.byte	0x1f
 1822 0a86 00       		.byte	0
 1823 0a87 1A       		.uleb128 0x1a
 1824 0a88 04       		.byte	0x4
 1825 0a89 8D0A0000 		.4byte	0xa8d
 1826 0a8d 1B       		.uleb128 0x1b
 1827 0a8e 18       		.uleb128 0x18
 1828 0a8f 5F0C0000 		.4byte	.LASF185
 1829 0a93 08       		.byte	0x8
 1830 0a94 0F       		.byte	0xf
 1831 0a95 73       		.byte	0x73
 1832 0a96 B30A0000 		.4byte	0xab3
 1833 0a9a 08       		.uleb128 0x8
 1834 0a9b E8060000 		.4byte	.LASF186
 1835 0a9f 0F       		.byte	0xf
 1836 0aa0 74       		.byte	0x74
 1837 0aa1 B30A0000 		.4byte	0xab3
 1838 0aa5 00       		.byte	0
 1839 0aa6 08       		.uleb128 0x8
 1840 0aa7 5D0D0000 		.4byte	.LASF187
 1841 0aab 0F       		.byte	0xf
 1842 0aac 75       		.byte	0x75
 1843 0aad 7E000000 		.4byte	0x7e
 1844 0ab1 04       		.byte	0x4
 1845 0ab2 00       		.byte	0
 1846 0ab3 1A       		.uleb128 0x1a
 1847 0ab4 04       		.byte	0x4
 1848 0ab5 37000000 		.4byte	0x37
 1849 0ab9 18       		.uleb128 0x18
 1850 0aba 62030000 		.4byte	.LASF188
 1851 0abe 68       		.byte	0x68
 1852 0abf 0F       		.byte	0xf
 1853 0ac0 B3       		.byte	0xb3
 1854 0ac1 E30B0000 		.4byte	0xbe3
 1855 0ac5 19       		.uleb128 0x19
 1856 0ac6 5F7000   		.ascii	"_p\000"
 1857 0ac9 0F       		.byte	0xf
 1858 0aca B4       		.byte	0xb4
 1859 0acb B30A0000 		.4byte	0xab3
 1860 0acf 00       		.byte	0
ARM GAS  /tmp/ccNltSB9.s 			page 61


 1861 0ad0 19       		.uleb128 0x19
 1862 0ad1 5F7200   		.ascii	"_r\000"
 1863 0ad4 0F       		.byte	0xf
 1864 0ad5 B5       		.byte	0xb5
 1865 0ad6 7E000000 		.4byte	0x7e
 1866 0ada 04       		.byte	0x4
 1867 0adb 19       		.uleb128 0x19
 1868 0adc 5F7700   		.ascii	"_w\000"
 1869 0adf 0F       		.byte	0xf
 1870 0ae0 B6       		.byte	0xb6
 1871 0ae1 7E000000 		.4byte	0x7e
 1872 0ae5 08       		.byte	0x8
 1873 0ae6 08       		.uleb128 0x8
 1874 0ae7 48010000 		.4byte	.LASF189
 1875 0aeb 0F       		.byte	0xf
 1876 0aec B7       		.byte	0xb7
 1877 0aed 3E000000 		.4byte	0x3e
 1878 0af1 0C       		.byte	0xc
 1879 0af2 08       		.uleb128 0x8
 1880 0af3 2F070000 		.4byte	.LASF190
 1881 0af7 0F       		.byte	0xf
 1882 0af8 B8       		.byte	0xb8
 1883 0af9 3E000000 		.4byte	0x3e
 1884 0afd 0E       		.byte	0xe
 1885 0afe 19       		.uleb128 0x19
 1886 0aff 5F626600 		.ascii	"_bf\000"
 1887 0b03 0F       		.byte	0xf
 1888 0b04 B9       		.byte	0xb9
 1889 0b05 8E0A0000 		.4byte	0xa8e
 1890 0b09 10       		.byte	0x10
 1891 0b0a 08       		.uleb128 0x8
 1892 0b0b 3F010000 		.4byte	.LASF191
 1893 0b0f 0F       		.byte	0xf
 1894 0b10 BA       		.byte	0xba
 1895 0b11 7E000000 		.4byte	0x7e
 1896 0b15 18       		.byte	0x18
 1897 0b16 08       		.uleb128 0x8
 1898 0b17 0C020000 		.4byte	.LASF192
 1899 0b1b 0F       		.byte	0xf
 1900 0b1c C1       		.byte	0xc1
 1901 0b1d 9F040000 		.4byte	0x49f
 1902 0b21 1C       		.byte	0x1c
 1903 0b22 08       		.uleb128 0x8
 1904 0b23 AC010000 		.4byte	.LASF193
 1905 0b27 0F       		.byte	0xf
 1906 0b28 C3       		.byte	0xc3
 1907 0b29 500D0000 		.4byte	0xd50
 1908 0b2d 20       		.byte	0x20
 1909 0b2e 08       		.uleb128 0x8
 1910 0b2f 34080000 		.4byte	.LASF194
 1911 0b33 0F       		.byte	0xf
 1912 0b34 C5       		.byte	0xc5
 1913 0b35 7A0D0000 		.4byte	0xd7a
 1914 0b39 24       		.byte	0x24
 1915 0b3a 08       		.uleb128 0x8
 1916 0b3b 100E0000 		.4byte	.LASF195
 1917 0b3f 0F       		.byte	0xf
ARM GAS  /tmp/ccNltSB9.s 			page 62


 1918 0b40 C8       		.byte	0xc8
 1919 0b41 9E0D0000 		.4byte	0xd9e
 1920 0b45 28       		.byte	0x28
 1921 0b46 08       		.uleb128 0x8
 1922 0b47 4E060000 		.4byte	.LASF196
 1923 0b4b 0F       		.byte	0xf
 1924 0b4c C9       		.byte	0xc9
 1925 0b4d B80D0000 		.4byte	0xdb8
 1926 0b51 2C       		.byte	0x2c
 1927 0b52 19       		.uleb128 0x19
 1928 0b53 5F756200 		.ascii	"_ub\000"
 1929 0b57 0F       		.byte	0xf
 1930 0b58 CC       		.byte	0xcc
 1931 0b59 8E0A0000 		.4byte	0xa8e
 1932 0b5d 30       		.byte	0x30
 1933 0b5e 19       		.uleb128 0x19
 1934 0b5f 5F757000 		.ascii	"_up\000"
 1935 0b63 0F       		.byte	0xf
 1936 0b64 CD       		.byte	0xcd
 1937 0b65 B30A0000 		.4byte	0xab3
 1938 0b69 38       		.byte	0x38
 1939 0b6a 19       		.uleb128 0x19
 1940 0b6b 5F757200 		.ascii	"_ur\000"
 1941 0b6f 0F       		.byte	0xf
 1942 0b70 CE       		.byte	0xce
 1943 0b71 7E000000 		.4byte	0x7e
 1944 0b75 3C       		.byte	0x3c
 1945 0b76 08       		.uleb128 0x8
 1946 0b77 C4030000 		.4byte	.LASF197
 1947 0b7b 0F       		.byte	0xf
 1948 0b7c D1       		.byte	0xd1
 1949 0b7d BE0D0000 		.4byte	0xdbe
 1950 0b81 40       		.byte	0x40
 1951 0b82 08       		.uleb128 0x8
 1952 0b83 7F0D0000 		.4byte	.LASF198
 1953 0b87 0F       		.byte	0xf
 1954 0b88 D2       		.byte	0xd2
 1955 0b89 CE0D0000 		.4byte	0xdce
 1956 0b8d 43       		.byte	0x43
 1957 0b8e 19       		.uleb128 0x19
 1958 0b8f 5F6C6200 		.ascii	"_lb\000"
 1959 0b93 0F       		.byte	0xf
 1960 0b94 D5       		.byte	0xd5
 1961 0b95 8E0A0000 		.4byte	0xa8e
 1962 0b99 44       		.byte	0x44
 1963 0b9a 08       		.uleb128 0x8
 1964 0b9b 7B0A0000 		.4byte	.LASF199
 1965 0b9f 0F       		.byte	0xf
 1966 0ba0 D8       		.byte	0xd8
 1967 0ba1 7E000000 		.4byte	0x7e
 1968 0ba5 4C       		.byte	0x4c
 1969 0ba6 08       		.uleb128 0x8
 1970 0ba7 BC030000 		.4byte	.LASF200
 1971 0bab 0F       		.byte	0xf
 1972 0bac D9       		.byte	0xd9
 1973 0bad 6E080000 		.4byte	0x86e
 1974 0bb1 50       		.byte	0x50
ARM GAS  /tmp/ccNltSB9.s 			page 63


 1975 0bb2 08       		.uleb128 0x8
 1976 0bb3 52090000 		.4byte	.LASF201
 1977 0bb7 0F       		.byte	0xf
 1978 0bb8 DC       		.byte	0xdc
 1979 0bb9 010C0000 		.4byte	0xc01
 1980 0bbd 54       		.byte	0x54
 1981 0bbe 08       		.uleb128 0x8
 1982 0bbf 950A0000 		.4byte	.LASF202
 1983 0bc3 0F       		.byte	0xf
 1984 0bc4 E0       		.byte	0xe0
 1985 0bc5 EB080000 		.4byte	0x8eb
 1986 0bc9 58       		.byte	0x58
 1987 0bca 08       		.uleb128 0x8
 1988 0bcb 90010000 		.4byte	.LASF203
 1989 0bcf 0F       		.byte	0xf
 1990 0bd0 E2       		.byte	0xe2
 1991 0bd1 E0080000 		.4byte	0x8e0
 1992 0bd5 5C       		.byte	0x5c
 1993 0bd6 08       		.uleb128 0x8
 1994 0bd7 AD0D0000 		.4byte	.LASF204
 1995 0bdb 0F       		.byte	0xf
 1996 0bdc E3       		.byte	0xe3
 1997 0bdd 7E000000 		.4byte	0x7e
 1998 0be1 64       		.byte	0x64
 1999 0be2 00       		.byte	0
 2000 0be3 1C       		.uleb128 0x1c
 2001 0be4 7E000000 		.4byte	0x7e
 2002 0be8 010C0000 		.4byte	0xc01
 2003 0bec 1D       		.uleb128 0x1d
 2004 0bed 010C0000 		.4byte	0xc01
 2005 0bf1 1D       		.uleb128 0x1d
 2006 0bf2 9F040000 		.4byte	0x49f
 2007 0bf6 1D       		.uleb128 0x1d
 2008 0bf7 3E0D0000 		.4byte	0xd3e
 2009 0bfb 1D       		.uleb128 0x1d
 2010 0bfc 7E000000 		.4byte	0x7e
 2011 0c00 00       		.byte	0
 2012 0c01 1A       		.uleb128 0x1a
 2013 0c02 04       		.byte	0x4
 2014 0c03 0C0C0000 		.4byte	0xc0c
 2015 0c07 06       		.uleb128 0x6
 2016 0c08 010C0000 		.4byte	0xc01
 2017 0c0c 1E       		.uleb128 0x1e
 2018 0c0d E60C0000 		.4byte	.LASF205
 2019 0c11 2804     		.2byte	0x428
 2020 0c13 0F       		.byte	0xf
 2021 0c14 3802     		.2byte	0x238
 2022 0c16 3E0D0000 		.4byte	0xd3e
 2023 0c1a 0C       		.uleb128 0xc
 2024 0c1b 67010000 		.4byte	.LASF206
 2025 0c1f 0F       		.byte	0xf
 2026 0c20 3A02     		.2byte	0x23a
 2027 0c22 7E000000 		.4byte	0x7e
 2028 0c26 00       		.byte	0
 2029 0c27 0C       		.uleb128 0xc
 2030 0c28 AD060000 		.4byte	.LASF207
 2031 0c2c 0F       		.byte	0xf
ARM GAS  /tmp/ccNltSB9.s 			page 64


 2032 0c2d 3F02     		.2byte	0x23f
 2033 0c2f 250E0000 		.4byte	0xe25
 2034 0c33 04       		.byte	0x4
 2035 0c34 0C       		.uleb128 0xc
 2036 0c35 D9010000 		.4byte	.LASF208
 2037 0c39 0F       		.byte	0xf
 2038 0c3a 3F02     		.2byte	0x23f
 2039 0c3c 250E0000 		.4byte	0xe25
 2040 0c40 08       		.byte	0x8
 2041 0c41 0C       		.uleb128 0xc
 2042 0c42 160E0000 		.4byte	.LASF209
 2043 0c46 0F       		.byte	0xf
 2044 0c47 3F02     		.2byte	0x23f
 2045 0c49 250E0000 		.4byte	0xe25
 2046 0c4d 0C       		.byte	0xc
 2047 0c4e 0C       		.uleb128 0xc
 2048 0c4f 64040000 		.4byte	.LASF210
 2049 0c53 0F       		.byte	0xf
 2050 0c54 4102     		.2byte	0x241
 2051 0c56 7E000000 		.4byte	0x7e
 2052 0c5a 10       		.byte	0x10
 2053 0c5b 0C       		.uleb128 0xc
 2054 0c5c E5030000 		.4byte	.LASF211
 2055 0c60 0F       		.byte	0xf
 2056 0c61 4202     		.2byte	0x242
 2057 0c63 07100000 		.4byte	0x1007
 2058 0c67 14       		.byte	0x14
 2059 0c68 0C       		.uleb128 0xc
 2060 0c69 58090000 		.4byte	.LASF212
 2061 0c6d 0F       		.byte	0xf
 2062 0c6e 4402     		.2byte	0x244
 2063 0c70 7E000000 		.4byte	0x7e
 2064 0c74 30       		.byte	0x30
 2065 0c75 0C       		.uleb128 0xc
 2066 0c76 42090000 		.4byte	.LASF213
 2067 0c7a 0F       		.byte	0xf
 2068 0c7b 4502     		.2byte	0x245
 2069 0c7d 740D0000 		.4byte	0xd74
 2070 0c81 34       		.byte	0x34
 2071 0c82 0C       		.uleb128 0xc
 2072 0c83 6A060000 		.4byte	.LASF214
 2073 0c87 0F       		.byte	0xf
 2074 0c88 4702     		.2byte	0x247
 2075 0c8a 7E000000 		.4byte	0x7e
 2076 0c8e 38       		.byte	0x38
 2077 0c8f 0C       		.uleb128 0xc
 2078 0c90 4D070000 		.4byte	.LASF215
 2079 0c94 0F       		.byte	0xf
 2080 0c95 4902     		.2byte	0x249
 2081 0c97 22100000 		.4byte	0x1022
 2082 0c9b 3C       		.byte	0x3c
 2083 0c9c 0C       		.uleb128 0xc
 2084 0c9d 7A020000 		.4byte	.LASF216
 2085 0ca1 0F       		.byte	0xf
 2086 0ca2 4C02     		.2byte	0x24c
 2087 0ca4 54090000 		.4byte	0x954
 2088 0ca8 40       		.byte	0x40
ARM GAS  /tmp/ccNltSB9.s 			page 65


 2089 0ca9 0C       		.uleb128 0xc
 2090 0caa F2050000 		.4byte	.LASF217
 2091 0cae 0F       		.byte	0xf
 2092 0caf 4D02     		.2byte	0x24d
 2093 0cb1 7E000000 		.4byte	0x7e
 2094 0cb5 44       		.byte	0x44
 2095 0cb6 0C       		.uleb128 0xc
 2096 0cb7 BD090000 		.4byte	.LASF218
 2097 0cbb 0F       		.byte	0xf
 2098 0cbc 4E02     		.2byte	0x24e
 2099 0cbe 54090000 		.4byte	0x954
 2100 0cc2 48       		.byte	0x48
 2101 0cc3 0C       		.uleb128 0xc
 2102 0cc4 FE060000 		.4byte	.LASF219
 2103 0cc8 0F       		.byte	0xf
 2104 0cc9 4F02     		.2byte	0x24f
 2105 0ccb 28100000 		.4byte	0x1028
 2106 0ccf 4C       		.byte	0x4c
 2107 0cd0 0C       		.uleb128 0xc
 2108 0cd1 240A0000 		.4byte	.LASF220
 2109 0cd5 0F       		.byte	0xf
 2110 0cd6 5202     		.2byte	0x252
 2111 0cd8 7E000000 		.4byte	0x7e
 2112 0cdc 50       		.byte	0x50
 2113 0cdd 0C       		.uleb128 0xc
 2114 0cde 480B0000 		.4byte	.LASF221
 2115 0ce2 0F       		.byte	0xf
 2116 0ce3 5302     		.2byte	0x253
 2117 0ce5 3E0D0000 		.4byte	0xd3e
 2118 0ce9 54       		.byte	0x54
 2119 0cea 0C       		.uleb128 0xc
 2120 0ceb 010A0000 		.4byte	.LASF222
 2121 0cef 0F       		.byte	0xf
 2122 0cf0 7602     		.2byte	0x276
 2123 0cf2 E50F0000 		.4byte	0xfe5
 2124 0cf6 58       		.byte	0x58
 2125 0cf7 0E       		.uleb128 0xe
 2126 0cf8 7C080000 		.4byte	.LASF182
 2127 0cfc 0F       		.byte	0xf
 2128 0cfd 7A02     		.2byte	0x27a
 2129 0cff 710A0000 		.4byte	0xa71
 2130 0d03 4801     		.2byte	0x148
 2131 0d05 0E       		.uleb128 0xe
 2132 0d06 82050000 		.4byte	.LASF223
 2133 0d0a 0F       		.byte	0xf
 2134 0d0b 7B02     		.2byte	0x27b
 2135 0d0d 330A0000 		.4byte	0xa33
 2136 0d11 4C01     		.2byte	0x14c
 2137 0d13 0E       		.uleb128 0xe
 2138 0d14 69050000 		.4byte	.LASF224
 2139 0d18 0F       		.byte	0xf
 2140 0d19 7F02     		.2byte	0x27f
 2141 0d1b 39100000 		.4byte	0x1039
 2142 0d1f DC02     		.2byte	0x2dc
 2143 0d21 0E       		.uleb128 0xe
 2144 0d22 810C0000 		.4byte	.LASF225
 2145 0d26 0F       		.byte	0xf
ARM GAS  /tmp/ccNltSB9.s 			page 66


 2146 0d27 8402     		.2byte	0x284
 2147 0d29 EA0D0000 		.4byte	0xdea
 2148 0d2d E002     		.2byte	0x2e0
 2149 0d2f 0E       		.uleb128 0xe
 2150 0d30 2C090000 		.4byte	.LASF226
 2151 0d34 0F       		.byte	0xf
 2152 0d35 8502     		.2byte	0x285
 2153 0d37 45100000 		.4byte	0x1045
 2154 0d3b EC02     		.2byte	0x2ec
 2155 0d3d 00       		.byte	0
 2156 0d3e 1A       		.uleb128 0x1a
 2157 0d3f 04       		.byte	0x4
 2158 0d40 440D0000 		.4byte	0xd44
 2159 0d44 02       		.uleb128 0x2
 2160 0d45 01       		.byte	0x1
 2161 0d46 08       		.byte	0x8
 2162 0d47 43050000 		.4byte	.LASF227
 2163 0d4b 06       		.uleb128 0x6
 2164 0d4c 440D0000 		.4byte	0xd44
 2165 0d50 1A       		.uleb128 0x1a
 2166 0d51 04       		.byte	0x4
 2167 0d52 E30B0000 		.4byte	0xbe3
 2168 0d56 1C       		.uleb128 0x1c
 2169 0d57 7E000000 		.4byte	0x7e
 2170 0d5b 740D0000 		.4byte	0xd74
 2171 0d5f 1D       		.uleb128 0x1d
 2172 0d60 010C0000 		.4byte	0xc01
 2173 0d64 1D       		.uleb128 0x1d
 2174 0d65 9F040000 		.4byte	0x49f
 2175 0d69 1D       		.uleb128 0x1d
 2176 0d6a 740D0000 		.4byte	0xd74
 2177 0d6e 1D       		.uleb128 0x1d
 2178 0d6f 7E000000 		.4byte	0x7e
 2179 0d73 00       		.byte	0
 2180 0d74 1A       		.uleb128 0x1a
 2181 0d75 04       		.byte	0x4
 2182 0d76 4B0D0000 		.4byte	0xd4b
 2183 0d7a 1A       		.uleb128 0x1a
 2184 0d7b 04       		.byte	0x4
 2185 0d7c 560D0000 		.4byte	0xd56
 2186 0d80 1C       		.uleb128 0x1c
 2187 0d81 79080000 		.4byte	0x879
 2188 0d85 9E0D0000 		.4byte	0xd9e
 2189 0d89 1D       		.uleb128 0x1d
 2190 0d8a 010C0000 		.4byte	0xc01
 2191 0d8e 1D       		.uleb128 0x1d
 2192 0d8f 9F040000 		.4byte	0x49f
 2193 0d93 1D       		.uleb128 0x1d
 2194 0d94 79080000 		.4byte	0x879
 2195 0d98 1D       		.uleb128 0x1d
 2196 0d99 7E000000 		.4byte	0x7e
 2197 0d9d 00       		.byte	0
 2198 0d9e 1A       		.uleb128 0x1a
 2199 0d9f 04       		.byte	0x4
 2200 0da0 800D0000 		.4byte	0xd80
 2201 0da4 1C       		.uleb128 0x1c
 2202 0da5 7E000000 		.4byte	0x7e
ARM GAS  /tmp/ccNltSB9.s 			page 67


 2203 0da9 B80D0000 		.4byte	0xdb8
 2204 0dad 1D       		.uleb128 0x1d
 2205 0dae 010C0000 		.4byte	0xc01
 2206 0db2 1D       		.uleb128 0x1d
 2207 0db3 9F040000 		.4byte	0x49f
 2208 0db7 00       		.byte	0
 2209 0db8 1A       		.uleb128 0x1a
 2210 0db9 04       		.byte	0x4
 2211 0dba A40D0000 		.4byte	0xda4
 2212 0dbe 0F       		.uleb128 0xf
 2213 0dbf 37000000 		.4byte	0x37
 2214 0dc3 CE0D0000 		.4byte	0xdce
 2215 0dc7 10       		.uleb128 0x10
 2216 0dc8 B1040000 		.4byte	0x4b1
 2217 0dcc 02       		.byte	0x2
 2218 0dcd 00       		.byte	0
 2219 0dce 0F       		.uleb128 0xf
 2220 0dcf 37000000 		.4byte	0x37
 2221 0dd3 DE0D0000 		.4byte	0xdde
 2222 0dd7 10       		.uleb128 0x10
 2223 0dd8 B1040000 		.4byte	0x4b1
 2224 0ddc 00       		.byte	0
 2225 0ddd 00       		.byte	0
 2226 0dde 11       		.uleb128 0x11
 2227 0ddf AE030000 		.4byte	.LASF228
 2228 0de3 0F       		.byte	0xf
 2229 0de4 1D01     		.2byte	0x11d
 2230 0de6 B90A0000 		.4byte	0xab9
 2231 0dea 1F       		.uleb128 0x1f
 2232 0deb 660C0000 		.4byte	.LASF229
 2233 0def 0C       		.byte	0xc
 2234 0df0 0F       		.byte	0xf
 2235 0df1 2101     		.2byte	0x121
 2236 0df3 1F0E0000 		.4byte	0xe1f
 2237 0df7 0C       		.uleb128 0xc
 2238 0df8 9E040000 		.4byte	.LASF163
 2239 0dfc 0F       		.byte	0xf
 2240 0dfd 2301     		.2byte	0x123
 2241 0dff 1F0E0000 		.4byte	0xe1f
 2242 0e03 00       		.byte	0
 2243 0e04 0C       		.uleb128 0xc
 2244 0e05 EB0A0000 		.4byte	.LASF230
 2245 0e09 0F       		.byte	0xf
 2246 0e0a 2401     		.2byte	0x124
 2247 0e0c 7E000000 		.4byte	0x7e
 2248 0e10 04       		.byte	0x4
 2249 0e11 0C       		.uleb128 0xc
 2250 0e12 270E0000 		.4byte	.LASF231
 2251 0e16 0F       		.byte	0xf
 2252 0e17 2501     		.2byte	0x125
 2253 0e19 250E0000 		.4byte	0xe25
 2254 0e1d 08       		.byte	0x8
 2255 0e1e 00       		.byte	0
 2256 0e1f 1A       		.uleb128 0x1a
 2257 0e20 04       		.byte	0x4
 2258 0e21 EA0D0000 		.4byte	0xdea
 2259 0e25 1A       		.uleb128 0x1a
ARM GAS  /tmp/ccNltSB9.s 			page 68


 2260 0e26 04       		.byte	0x4
 2261 0e27 DE0D0000 		.4byte	0xdde
 2262 0e2b 1F       		.uleb128 0x1f
 2263 0e2c D9020000 		.4byte	.LASF232
 2264 0e30 0E       		.byte	0xe
 2265 0e31 0F       		.byte	0xf
 2266 0e32 3D01     		.2byte	0x13d
 2267 0e34 600E0000 		.4byte	0xe60
 2268 0e38 0C       		.uleb128 0xc
 2269 0e39 E30D0000 		.4byte	.LASF233
 2270 0e3d 0F       		.byte	0xf
 2271 0e3e 3E01     		.2byte	0x13e
 2272 0e40 600E0000 		.4byte	0xe60
 2273 0e44 00       		.byte	0
 2274 0e45 0C       		.uleb128 0xc
 2275 0e46 08070000 		.4byte	.LASF234
 2276 0e4a 0F       		.byte	0xf
 2277 0e4b 3F01     		.2byte	0x13f
 2278 0e4d 600E0000 		.4byte	0xe60
 2279 0e51 06       		.byte	0x6
 2280 0e52 0C       		.uleb128 0xc
 2281 0e53 16070000 		.4byte	.LASF235
 2282 0e57 0F       		.byte	0xf
 2283 0e58 4001     		.2byte	0x140
 2284 0e5a 45000000 		.4byte	0x45
 2285 0e5e 0C       		.byte	0xc
 2286 0e5f 00       		.byte	0
 2287 0e60 0F       		.uleb128 0xf
 2288 0e61 45000000 		.4byte	0x45
 2289 0e65 700E0000 		.4byte	0xe70
 2290 0e69 10       		.uleb128 0x10
 2291 0e6a B1040000 		.4byte	0x4b1
 2292 0e6e 02       		.byte	0x2
 2293 0e6f 00       		.byte	0
 2294 0e70 20       		.uleb128 0x20
 2295 0e71 D0       		.byte	0xd0
 2296 0e72 0F       		.byte	0xf
 2297 0e73 5702     		.2byte	0x257
 2298 0e75 710F0000 		.4byte	0xf71
 2299 0e79 0C       		.uleb128 0xc
 2300 0e7a 850D0000 		.4byte	.LASF236
 2301 0e7e 0F       		.byte	0xf
 2302 0e7f 5902     		.2byte	0x259
 2303 0e81 85000000 		.4byte	0x85
 2304 0e85 00       		.byte	0
 2305 0e86 0C       		.uleb128 0xc
 2306 0e87 990C0000 		.4byte	.LASF237
 2307 0e8b 0F       		.byte	0xf
 2308 0e8c 5A02     		.2byte	0x25a
 2309 0e8e 3E0D0000 		.4byte	0xd3e
 2310 0e92 04       		.byte	0x4
 2311 0e93 0C       		.uleb128 0xc
 2312 0e94 55030000 		.4byte	.LASF238
 2313 0e98 0F       		.byte	0xf
 2314 0e99 5B02     		.2byte	0x25b
 2315 0e9b 710F0000 		.4byte	0xf71
 2316 0e9f 08       		.byte	0x8
ARM GAS  /tmp/ccNltSB9.s 			page 69


 2317 0ea0 0C       		.uleb128 0xc
 2318 0ea1 CF090000 		.4byte	.LASF239
 2319 0ea5 0F       		.byte	0xf
 2320 0ea6 5C02     		.2byte	0x25c
 2321 0ea8 6A090000 		.4byte	0x96a
 2322 0eac 24       		.byte	0x24
 2323 0ead 0C       		.uleb128 0xc
 2324 0eae B4060000 		.4byte	.LASF240
 2325 0eb2 0F       		.byte	0xf
 2326 0eb3 5D02     		.2byte	0x25d
 2327 0eb5 7E000000 		.4byte	0x7e
 2328 0eb9 48       		.byte	0x48
 2329 0eba 0C       		.uleb128 0xc
 2330 0ebb 5C080000 		.4byte	.LASF241
 2331 0ebf 0F       		.byte	0xf
 2332 0ec0 5E02     		.2byte	0x25e
 2333 0ec2 77000000 		.4byte	0x77
 2334 0ec6 50       		.byte	0x50
 2335 0ec7 0C       		.uleb128 0xc
 2336 0ec8 A4000000 		.4byte	.LASF242
 2337 0ecc 0F       		.byte	0xf
 2338 0ecd 5F02     		.2byte	0x25f
 2339 0ecf 2B0E0000 		.4byte	0xe2b
 2340 0ed3 58       		.byte	0x58
 2341 0ed4 0C       		.uleb128 0xc
 2342 0ed5 36050000 		.4byte	.LASF243
 2343 0ed9 0F       		.byte	0xf
 2344 0eda 6002     		.2byte	0x260
 2345 0edc E0080000 		.4byte	0x8e0
 2346 0ee0 68       		.byte	0x68
 2347 0ee1 0C       		.uleb128 0xc
 2348 0ee2 A60C0000 		.4byte	.LASF244
 2349 0ee6 0F       		.byte	0xf
 2350 0ee7 6102     		.2byte	0x261
 2351 0ee9 E0080000 		.4byte	0x8e0
 2352 0eed 70       		.byte	0x70
 2353 0eee 0C       		.uleb128 0xc
 2354 0eef 80000000 		.4byte	.LASF245
 2355 0ef3 0F       		.byte	0xf
 2356 0ef4 6202     		.2byte	0x262
 2357 0ef6 E0080000 		.4byte	0x8e0
 2358 0efa 78       		.byte	0x78
 2359 0efb 0C       		.uleb128 0xc
 2360 0efc 340A0000 		.4byte	.LASF246
 2361 0f00 0F       		.byte	0xf
 2362 0f01 6302     		.2byte	0x263
 2363 0f03 810F0000 		.4byte	0xf81
 2364 0f07 80       		.byte	0x80
 2365 0f08 0C       		.uleb128 0xc
 2366 0f09 E9000000 		.4byte	.LASF247
 2367 0f0d 0F       		.byte	0xf
 2368 0f0e 6402     		.2byte	0x264
 2369 0f10 910F0000 		.4byte	0xf91
 2370 0f14 88       		.byte	0x88
 2371 0f15 0C       		.uleb128 0xc
 2372 0f16 500D0000 		.4byte	.LASF248
 2373 0f1a 0F       		.byte	0xf
ARM GAS  /tmp/ccNltSB9.s 			page 70


 2374 0f1b 6502     		.2byte	0x265
 2375 0f1d 7E000000 		.4byte	0x7e
 2376 0f21 A0       		.byte	0xa0
 2377 0f22 0C       		.uleb128 0xc
 2378 0f23 BA010000 		.4byte	.LASF249
 2379 0f27 0F       		.byte	0xf
 2380 0f28 6602     		.2byte	0x266
 2381 0f2a E0080000 		.4byte	0x8e0
 2382 0f2e A4       		.byte	0xa4
 2383 0f2f 0C       		.uleb128 0xc
 2384 0f30 73050000 		.4byte	.LASF250
 2385 0f34 0F       		.byte	0xf
 2386 0f35 6702     		.2byte	0x267
 2387 0f37 E0080000 		.4byte	0x8e0
 2388 0f3b AC       		.byte	0xac
 2389 0f3c 0C       		.uleb128 0xc
 2390 0f3d 03030000 		.4byte	.LASF251
 2391 0f41 0F       		.byte	0xf
 2392 0f42 6802     		.2byte	0x268
 2393 0f44 E0080000 		.4byte	0x8e0
 2394 0f48 B4       		.byte	0xb4
 2395 0f49 0C       		.uleb128 0xc
 2396 0f4a 20070000 		.4byte	.LASF252
 2397 0f4e 0F       		.byte	0xf
 2398 0f4f 6902     		.2byte	0x269
 2399 0f51 E0080000 		.4byte	0x8e0
 2400 0f55 BC       		.byte	0xbc
 2401 0f56 0C       		.uleb128 0xc
 2402 0f57 25050000 		.4byte	.LASF253
 2403 0f5b 0F       		.byte	0xf
 2404 0f5c 6A02     		.2byte	0x26a
 2405 0f5e E0080000 		.4byte	0x8e0
 2406 0f62 C4       		.byte	0xc4
 2407 0f63 0C       		.uleb128 0xc
 2408 0f64 920D0000 		.4byte	.LASF254
 2409 0f68 0F       		.byte	0xf
 2410 0f69 6B02     		.2byte	0x26b
 2411 0f6b 7E000000 		.4byte	0x7e
 2412 0f6f CC       		.byte	0xcc
 2413 0f70 00       		.byte	0
 2414 0f71 0F       		.uleb128 0xf
 2415 0f72 440D0000 		.4byte	0xd44
 2416 0f76 810F0000 		.4byte	0xf81
 2417 0f7a 10       		.uleb128 0x10
 2418 0f7b B1040000 		.4byte	0x4b1
 2419 0f7f 19       		.byte	0x19
 2420 0f80 00       		.byte	0
 2421 0f81 0F       		.uleb128 0xf
 2422 0f82 440D0000 		.4byte	0xd44
 2423 0f86 910F0000 		.4byte	0xf91
 2424 0f8a 10       		.uleb128 0x10
 2425 0f8b B1040000 		.4byte	0x4b1
 2426 0f8f 07       		.byte	0x7
 2427 0f90 00       		.byte	0
 2428 0f91 0F       		.uleb128 0xf
 2429 0f92 440D0000 		.4byte	0xd44
 2430 0f96 A10F0000 		.4byte	0xfa1
ARM GAS  /tmp/ccNltSB9.s 			page 71


 2431 0f9a 10       		.uleb128 0x10
 2432 0f9b B1040000 		.4byte	0x4b1
 2433 0f9f 17       		.byte	0x17
 2434 0fa0 00       		.byte	0
 2435 0fa1 20       		.uleb128 0x20
 2436 0fa2 F0       		.byte	0xf0
 2437 0fa3 0F       		.byte	0xf
 2438 0fa4 7002     		.2byte	0x270
 2439 0fa6 C50F0000 		.4byte	0xfc5
 2440 0faa 0C       		.uleb128 0xc
 2441 0fab ED020000 		.4byte	.LASF255
 2442 0faf 0F       		.byte	0xf
 2443 0fb0 7302     		.2byte	0x273
 2444 0fb2 C50F0000 		.4byte	0xfc5
 2445 0fb6 00       		.byte	0
 2446 0fb7 0C       		.uleb128 0xc
 2447 0fb8 1E0E0000 		.4byte	.LASF256
 2448 0fbc 0F       		.byte	0xf
 2449 0fbd 7402     		.2byte	0x274
 2450 0fbf D50F0000 		.4byte	0xfd5
 2451 0fc3 78       		.byte	0x78
 2452 0fc4 00       		.byte	0
 2453 0fc5 0F       		.uleb128 0xf
 2454 0fc6 B30A0000 		.4byte	0xab3
 2455 0fca D50F0000 		.4byte	0xfd5
 2456 0fce 10       		.uleb128 0x10
 2457 0fcf B1040000 		.4byte	0x4b1
 2458 0fd3 1D       		.byte	0x1d
 2459 0fd4 00       		.byte	0
 2460 0fd5 0F       		.uleb128 0xf
 2461 0fd6 85000000 		.4byte	0x85
 2462 0fda E50F0000 		.4byte	0xfe5
 2463 0fde 10       		.uleb128 0x10
 2464 0fdf B1040000 		.4byte	0x4b1
 2465 0fe3 1D       		.byte	0x1d
 2466 0fe4 00       		.byte	0
 2467 0fe5 21       		.uleb128 0x21
 2468 0fe6 F0       		.byte	0xf0
 2469 0fe7 0F       		.byte	0xf
 2470 0fe8 5502     		.2byte	0x255
 2471 0fea 07100000 		.4byte	0x1007
 2472 0fee 22       		.uleb128 0x22
 2473 0fef E60C0000 		.4byte	.LASF205
 2474 0ff3 0F       		.byte	0xf
 2475 0ff4 6C02     		.2byte	0x26c
 2476 0ff6 700E0000 		.4byte	0xe70
 2477 0ffa 22       		.uleb128 0x22
 2478 0ffb DE090000 		.4byte	.LASF257
 2479 0fff 0F       		.byte	0xf
 2480 1000 7502     		.2byte	0x275
 2481 1002 A10F0000 		.4byte	0xfa1
 2482 1006 00       		.byte	0
 2483 1007 0F       		.uleb128 0xf
 2484 1008 440D0000 		.4byte	0xd44
 2485 100c 17100000 		.4byte	0x1017
 2486 1010 10       		.uleb128 0x10
 2487 1011 B1040000 		.4byte	0x4b1
ARM GAS  /tmp/ccNltSB9.s 			page 72


 2488 1015 18       		.byte	0x18
 2489 1016 00       		.byte	0
 2490 1017 23       		.uleb128 0x23
 2491 1018 22100000 		.4byte	0x1022
 2492 101c 1D       		.uleb128 0x1d
 2493 101d 010C0000 		.4byte	0xc01
 2494 1021 00       		.byte	0
 2495 1022 1A       		.uleb128 0x1a
 2496 1023 04       		.byte	0x4
 2497 1024 17100000 		.4byte	0x1017
 2498 1028 1A       		.uleb128 0x1a
 2499 1029 04       		.byte	0x4
 2500 102a 54090000 		.4byte	0x954
 2501 102e 23       		.uleb128 0x23
 2502 102f 39100000 		.4byte	0x1039
 2503 1033 1D       		.uleb128 0x1d
 2504 1034 7E000000 		.4byte	0x7e
 2505 1038 00       		.byte	0
 2506 1039 1A       		.uleb128 0x1a
 2507 103a 04       		.byte	0x4
 2508 103b 3F100000 		.4byte	0x103f
 2509 103f 1A       		.uleb128 0x1a
 2510 1040 04       		.byte	0x4
 2511 1041 2E100000 		.4byte	0x102e
 2512 1045 0F       		.uleb128 0xf
 2513 1046 DE0D0000 		.4byte	0xdde
 2514 104a 55100000 		.4byte	0x1055
 2515 104e 10       		.uleb128 0x10
 2516 104f B1040000 		.4byte	0x4b1
 2517 1053 02       		.byte	0x2
 2518 1054 00       		.byte	0
 2519 1055 12       		.uleb128 0x12
 2520 1056 E1020000 		.4byte	.LASF258
 2521 105a 0F       		.byte	0xf
 2522 105b FD02     		.2byte	0x2fd
 2523 105d 010C0000 		.4byte	0xc01
 2524 1061 12       		.uleb128 0x12
 2525 1062 EB070000 		.4byte	.LASF259
 2526 1066 0F       		.byte	0xf
 2527 1067 FE02     		.2byte	0x2fe
 2528 1069 070C0000 		.4byte	0xc07
 2529 106d 13       		.uleb128 0x13
 2530 106e 50040000 		.4byte	.LASF260
 2531 1072 10       		.byte	0x10
 2532 1073 5F       		.byte	0x5f
 2533 1074 3E0D0000 		.4byte	0xd3e
 2534 1078 03       		.uleb128 0x3
 2535 1079 37090000 		.4byte	.LASF261
 2536 107d 05       		.byte	0x5
 2537 107e 8C       		.byte	0x8c
 2538 107f AC000000 		.4byte	0xac
 2539 1083 13       		.uleb128 0x13
 2540 1084 2F020000 		.4byte	.LASF262
 2541 1088 05       		.byte	0x5
 2542 1089 8F       		.byte	0x8f
 2543 108a 95100000 		.4byte	0x1095
 2544 108e 02       		.uleb128 0x2
ARM GAS  /tmp/ccNltSB9.s 			page 73


 2545 108f 01       		.byte	0x1
 2546 1090 02       		.byte	0x2
 2547 1091 69040000 		.4byte	.LASF263
 2548 1095 05       		.uleb128 0x5
 2549 1096 8E100000 		.4byte	0x108e
 2550 109a 24       		.uleb128 0x24
 2551 109b CA0A0000 		.4byte	.LASF264
 2552 109f 05       		.byte	0x5
 2553 10a0 94       		.byte	0x94
 2554 10a1 B7000000 		.4byte	0xb7
 2555 10a5 05       		.uleb128 0x5
 2556 10a6 03       		.byte	0x3
 2557 10a7 00000000 		.4byte	cpu_irq_critical_section_counter
 2558 10ab 24       		.uleb128 0x24
 2559 10ac 05040000 		.4byte	.LASF265
 2560 10b0 05       		.byte	0x5
 2561 10b1 95       		.byte	0x95
 2562 10b2 95100000 		.4byte	0x1095
 2563 10b6 05       		.uleb128 0x5
 2564 10b7 03       		.byte	0x3
 2565 10b8 00000000 		.4byte	cpu_irq_prev_interrupt_state
 2566 10bc 02       		.uleb128 0x2
 2567 10bd 04       		.byte	0x4
 2568 10be 04       		.byte	0x4
 2569 10bf C4020000 		.4byte	.LASF266
 2570 10c3 02       		.uleb128 0x2
 2571 10c4 08       		.byte	0x8
 2572 10c5 04       		.byte	0x4
 2573 10c6 630D0000 		.4byte	.LASF267
 2574 10ca 13       		.uleb128 0x13
 2575 10cb 91050000 		.4byte	.LASF268
 2576 10cf 01       		.byte	0x1
 2577 10d0 3B       		.byte	0x3b
 2578 10d1 AC000000 		.4byte	0xac
 2579 10d5 13       		.uleb128 0x13
 2580 10d6 3E0A0000 		.4byte	.LASF269
 2581 10da 01       		.byte	0x1
 2582 10db 3D       		.byte	0x3d
 2583 10dc AC000000 		.4byte	0xac
 2584 10e0 13       		.uleb128 0x13
 2585 10e1 6E010000 		.4byte	.LASF270
 2586 10e5 01       		.byte	0x1
 2587 10e6 3E       		.byte	0x3e
 2588 10e7 AC000000 		.4byte	0xac
 2589 10eb 13       		.uleb128 0x13
 2590 10ec 15060000 		.4byte	.LASF271
 2591 10f0 01       		.byte	0x1
 2592 10f1 3F       		.byte	0x3f
 2593 10f2 AC000000 		.4byte	0xac
 2594 10f6 13       		.uleb128 0x13
 2595 10f7 490D0000 		.4byte	.LASF272
 2596 10fb 01       		.byte	0x1
 2597 10fc 40       		.byte	0x40
 2598 10fd AC000000 		.4byte	0xac
 2599 1101 13       		.uleb128 0x13
 2600 1102 2D0B0000 		.4byte	.LASF273
 2601 1106 01       		.byte	0x1
ARM GAS  /tmp/ccNltSB9.s 			page 74


 2602 1107 41       		.byte	0x41
 2603 1108 AC000000 		.4byte	0xac
 2604 110c 13       		.uleb128 0x13
 2605 110d 8A060000 		.4byte	.LASF274
 2606 1111 01       		.byte	0x1
 2607 1112 43       		.byte	0x43
 2608 1113 AC000000 		.4byte	0xac
 2609 1117 25       		.uleb128 0x25
 2610 1118 27030000 		.4byte	.LASF275
 2611 111c 01       		.byte	0x1
 2612 111d BC       		.byte	0xbc
 2613 111e AC040000 		.4byte	0x4ac
 2614 1122 05       		.uleb128 0x5
 2615 1123 03       		.byte	0x3
 2616 1124 00000000 		.4byte	exception_table
 2617 1128 26       		.uleb128 0x26
 2618 1129 B7000000 		.4byte	.LASF303
 2619 112d 01       		.byte	0x1
 2620 112e 7901     		.2byte	0x179
 2621 1130 00000000 		.4byte	.LFB147
 2622 1134 02000000 		.4byte	.LFE147-.LFB147
 2623 1138 01       		.uleb128 0x1
 2624 1139 9C       		.byte	0x9c
 2625 113a 27       		.uleb128 0x27
 2626 113b 710D0000 		.4byte	.LASF278
 2627 113f 01       		.byte	0x1
 2628 1140 4801     		.2byte	0x148
 2629 1142 00000000 		.4byte	.LFB146
 2630 1146 BC000000 		.4byte	.LFE146-.LFB146
 2631 114a 01       		.uleb128 0x1
 2632 114b 9C       		.byte	0x9c
 2633 114c 73120000 		.4byte	0x1273
 2634 1150 28       		.uleb128 0x28
 2635 1151 E1080000 		.4byte	.LASF276
 2636 1155 01       		.byte	0x1
 2637 1156 4A01     		.2byte	0x14a
 2638 1158 73120000 		.4byte	0x1273
 2639 115c 00000000 		.4byte	.LLST0
 2640 1160 28       		.uleb128 0x28
 2641 1161 84080000 		.4byte	.LASF277
 2642 1165 01       		.byte	0x1
 2643 1166 4A01     		.2byte	0x14a
 2644 1168 73120000 		.4byte	0x1273
 2645 116c 2B000000 		.4byte	.LLST1
 2646 1170 29       		.uleb128 0x29
 2647 1171 B8120000 		.4byte	0x12b8
 2648 1175 50000000 		.4byte	.LBB48
 2649 1179 2E000000 		.4byte	.LBE48-.LBB48
 2650 117d 01       		.byte	0x1
 2651 117e 6001     		.2byte	0x160
 2652 1180 45120000 		.4byte	0x1245
 2653 1184 2A       		.uleb128 0x2a
 2654 1185 50000000 		.4byte	.LBB49
 2655 1189 2E000000 		.4byte	.LBE49-.LBB49
 2656 118d 2B       		.uleb128 0x2b
 2657 118e C4120000 		.4byte	0x12c4
 2658 1192 2C       		.uleb128 0x2c
ARM GAS  /tmp/ccNltSB9.s 			page 75


 2659 1193 04130000 		.4byte	0x1304
 2660 1197 50000000 		.4byte	.LBB50
 2661 119b 00000000 		.4byte	.Ldebug_ranges0+0
 2662 119f 04       		.byte	0x4
 2663 11a0 40       		.byte	0x40
 2664 11a1 F2110000 		.4byte	0x11f2
 2665 11a5 2D       		.uleb128 0x2d
 2666 11a6 00000000 		.4byte	.Ldebug_ranges0+0
 2667 11aa 2B       		.uleb128 0x2b
 2668 11ab 14130000 		.4byte	0x1314
 2669 11af 2E       		.uleb128 0x2e
 2670 11b0 20130000 		.4byte	0x1320
 2671 11b4 50000000 		.4byte	.LBB52
 2672 11b8 04000000 		.4byte	.LBE52-.LBB52
 2673 11bc 05       		.byte	0x5
 2674 11bd 99       		.byte	0x99
 2675 11be D2110000 		.4byte	0x11d2
 2676 11c2 2A       		.uleb128 0x2a
 2677 11c3 50000000 		.4byte	.LBB53
 2678 11c7 04000000 		.4byte	.LBE53-.LBB53
 2679 11cb 2B       		.uleb128 0x2b
 2680 11cc 31130000 		.4byte	0x1331
 2681 11d0 00       		.byte	0
 2682 11d1 00       		.byte	0
 2683 11d2 2F       		.uleb128 0x2f
 2684 11d3 3E130000 		.4byte	0x133e
 2685 11d7 54000000 		.4byte	.LBB54
 2686 11db 02000000 		.4byte	.LBE54-.LBB54
 2687 11df 05       		.byte	0x5
 2688 11e0 9A       		.byte	0x9a
 2689 11e1 2F       		.uleb128 0x2f
 2690 11e2 50130000 		.4byte	0x1350
 2691 11e6 56000000 		.4byte	.LBB56
 2692 11ea 04000000 		.4byte	.LBE56-.LBB56
 2693 11ee 05       		.byte	0x5
 2694 11ef 9A       		.byte	0x9a
 2695 11f0 00       		.byte	0
 2696 11f1 00       		.byte	0
 2697 11f2 2F       		.uleb128 0x2f
 2698 11f3 59130000 		.4byte	0x1359
 2699 11f7 6A000000 		.4byte	.LBB60
 2700 11fb 04000000 		.4byte	.LBE60-.LBB60
 2701 11ff 04       		.byte	0x4
 2702 1200 42       		.byte	0x42
 2703 1201 2F       		.uleb128 0x2f
 2704 1202 62130000 		.4byte	0x1362
 2705 1206 6E000000 		.4byte	.LBB62
 2706 120a 04000000 		.4byte	.LBE62-.LBB62
 2707 120e 04       		.byte	0x4
 2708 120f 43       		.byte	0x43
 2709 1210 30       		.uleb128 0x30
 2710 1211 D0120000 		.4byte	0x12d0
 2711 1215 72000000 		.4byte	.LBB64
 2712 1219 0C000000 		.4byte	.LBE64-.LBB64
 2713 121d 04       		.byte	0x4
 2714 121e 44       		.byte	0x44
 2715 121f 31       		.uleb128 0x31
ARM GAS  /tmp/ccNltSB9.s 			page 76


 2716 1220 DC120000 		.4byte	0x12dc
 2717 1224 2F       		.uleb128 0x2f
 2718 1225 50130000 		.4byte	0x1350
 2719 1229 78000000 		.4byte	.LBB66
 2720 122d 04000000 		.4byte	.LBE66-.LBB66
 2721 1231 05       		.byte	0x5
 2722 1232 A6       		.byte	0xa6
 2723 1233 2F       		.uleb128 0x2f
 2724 1234 47130000 		.4byte	0x1347
 2725 1238 7C000000 		.4byte	.LBB68
 2726 123c 02000000 		.4byte	.LBE68-.LBB68
 2727 1240 05       		.byte	0x5
 2728 1241 A6       		.byte	0xa6
 2729 1242 00       		.byte	0
 2730 1243 00       		.byte	0
 2731 1244 00       		.byte	0
 2732 1245 32       		.uleb128 0x32
 2733 1246 82000000 		.4byte	.LVL9
 2734 124a 6B130000 		.4byte	0x136b
 2735 124e 32       		.uleb128 0x32
 2736 124f 86000000 		.4byte	.LVL10
 2737 1253 76130000 		.4byte	0x1376
 2738 1257 32       		.uleb128 0x32
 2739 1258 8A000000 		.4byte	.LVL11
 2740 125c 81130000 		.4byte	0x1381
 2741 1260 32       		.uleb128 0x32
 2742 1261 8E000000 		.4byte	.LVL12
 2743 1265 8C130000 		.4byte	0x138c
 2744 1269 33       		.uleb128 0x33
 2745 126a 96000000 		.4byte	.LVL13
 2746 126e 97130000 		.4byte	0x1397
 2747 1272 00       		.byte	0
 2748 1273 1A       		.uleb128 0x1a
 2749 1274 04       		.byte	0x4
 2750 1275 AC000000 		.4byte	0xac
 2751 1279 34       		.uleb128 0x34
 2752 127a 75060000 		.4byte	.LASF279
 2753 127e 01       		.byte	0x1
 2754 127f 5B       		.byte	0x5b
 2755 1280 00000000 		.4byte	.LFB145
 2756 1284 1C000000 		.4byte	.LFE145-.LFB145
 2757 1288 01       		.uleb128 0x1
 2758 1289 9C       		.byte	0x9c
 2759 128a B8120000 		.4byte	0x12b8
 2760 128e 32       		.uleb128 0x32
 2761 128f 06000000 		.4byte	.LVL14
 2762 1293 A2130000 		.4byte	0x13a2
 2763 1297 35       		.uleb128 0x35
 2764 1298 10000000 		.4byte	.LVL15
 2765 129c AD130000 		.4byte	0x13ad
 2766 12a0 AE120000 		.4byte	0x12ae
 2767 12a4 36       		.uleb128 0x36
 2768 12a5 01       		.uleb128 0x1
 2769 12a6 50       		.byte	0x50
 2770 12a7 05       		.uleb128 0x5
 2771 12a8 0C       		.byte	0xc
 2772 12a9 50180E40 		.4byte	0x400e1850
ARM GAS  /tmp/ccNltSB9.s 			page 77


 2773 12ad 00       		.byte	0
 2774 12ae 33       		.uleb128 0x33
 2775 12af 18000000 		.4byte	.LVL16
 2776 12b3 B8130000 		.4byte	0x13b8
 2777 12b7 00       		.byte	0
 2778 12b8 37       		.uleb128 0x37
 2779 12b9 6E0B0000 		.4byte	.LASF280
 2780 12bd 04       		.byte	0x4
 2781 12be 3D       		.byte	0x3d
 2782 12bf 03       		.byte	0x3
 2783 12c0 D0120000 		.4byte	0x12d0
 2784 12c4 38       		.uleb128 0x38
 2785 12c5 9E000000 		.4byte	.LASF282
 2786 12c9 04       		.byte	0x4
 2787 12ca 3F       		.byte	0x3f
 2788 12cb 78100000 		.4byte	0x1078
 2789 12cf 00       		.byte	0
 2790 12d0 37       		.uleb128 0x37
 2791 12d1 E9010000 		.4byte	.LASF281
 2792 12d5 05       		.byte	0x5
 2793 12d6 A3       		.byte	0xa3
 2794 12d7 03       		.byte	0x3
 2795 12d8 E8120000 		.4byte	0x12e8
 2796 12dc 39       		.uleb128 0x39
 2797 12dd 9E000000 		.4byte	.LASF282
 2798 12e1 05       		.byte	0x5
 2799 12e2 A3       		.byte	0xa3
 2800 12e3 78100000 		.4byte	0x1078
 2801 12e7 00       		.byte	0
 2802 12e8 3A       		.uleb128 0x3a
 2803 12e9 82020000 		.4byte	.LASF283
 2804 12ed 05       		.byte	0x5
 2805 12ee 9E       		.byte	0x9e
 2806 12ef 8E100000 		.4byte	0x108e
 2807 12f3 03       		.byte	0x3
 2808 12f4 04130000 		.4byte	0x1304
 2809 12f8 39       		.uleb128 0x39
 2810 12f9 9E000000 		.4byte	.LASF282
 2811 12fd 05       		.byte	0x5
 2812 12fe 9E       		.byte	0x9e
 2813 12ff 78100000 		.4byte	0x1078
 2814 1303 00       		.byte	0
 2815 1304 3A       		.uleb128 0x3a
 2816 1305 9F010000 		.4byte	.LASF284
 2817 1309 05       		.byte	0x5
 2818 130a 97       		.byte	0x97
 2819 130b 78100000 		.4byte	0x1078
 2820 130f 03       		.byte	0x3
 2821 1310 20130000 		.4byte	0x1320
 2822 1314 38       		.uleb128 0x38
 2823 1315 9E000000 		.4byte	.LASF282
 2824 1319 05       		.byte	0x5
 2825 131a 99       		.byte	0x99
 2826 131b 78100000 		.4byte	0x1078
 2827 131f 00       		.byte	0
 2828 1320 3B       		.uleb128 0x3b
 2829 1321 A9000000 		.4byte	.LASF285
ARM GAS  /tmp/ccNltSB9.s 			page 78


 2830 1325 02       		.byte	0x2
 2831 1326 D201     		.2byte	0x1d2
 2832 1328 AC000000 		.4byte	0xac
 2833 132c 03       		.byte	0x3
 2834 132d 3E130000 		.4byte	0x133e
 2835 1331 3C       		.uleb128 0x3c
 2836 1332 14030000 		.4byte	.LASF286
 2837 1336 02       		.byte	0x2
 2838 1337 D401     		.2byte	0x1d4
 2839 1339 AC000000 		.4byte	0xac
 2840 133d 00       		.byte	0
 2841 133e 3D       		.uleb128 0x3d
 2842 133f 33040000 		.4byte	.LASF287
 2843 1343 02       		.byte	0x2
 2844 1344 4801     		.2byte	0x148
 2845 1346 03       		.byte	0x3
 2846 1347 3D       		.uleb128 0x3d
 2847 1348 0E090000 		.4byte	.LASF288
 2848 134c 02       		.byte	0x2
 2849 134d 3D01     		.2byte	0x13d
 2850 134f 03       		.byte	0x3
 2851 1350 3D       		.uleb128 0x3d
 2852 1351 B7090000 		.4byte	.LASF289
 2853 1355 03       		.byte	0x3
 2854 1356 C601     		.2byte	0x1c6
 2855 1358 03       		.byte	0x3
 2856 1359 3D       		.uleb128 0x3d
 2857 135a 99010000 		.4byte	.LASF290
 2858 135e 03       		.byte	0x3
 2859 135f BB01     		.2byte	0x1bb
 2860 1361 03       		.byte	0x3
 2861 1362 3D       		.uleb128 0x3d
 2862 1363 79010000 		.4byte	.LASF291
 2863 1367 03       		.byte	0x3
 2864 1368 B001     		.2byte	0x1b0
 2865 136a 03       		.byte	0x3
 2866 136b 3E       		.uleb128 0x3e
 2867 136c BD0D0000 		.4byte	.LASF292
 2868 1370 BD0D0000 		.4byte	.LASF292
 2869 1374 0A       		.byte	0xa
 2870 1375 40       		.byte	0x40
 2871 1376 3E       		.uleb128 0x3e
 2872 1377 450A0000 		.4byte	.LASF293
 2873 137b 450A0000 		.4byte	.LASF293
 2874 137f 01       		.byte	0x1
 2875 1380 37       		.byte	0x37
 2876 1381 3E       		.uleb128 0x3e
 2877 1382 39000000 		.4byte	.LASF294
 2878 1386 39000000 		.4byte	.LASF294
 2879 138a 01       		.byte	0x1
 2880 138b 35       		.byte	0x35
 2881 138c 3E       		.uleb128 0x3e
 2882 138d 900A0000 		.4byte	.LASF295
 2883 1391 900A0000 		.4byte	.LASF295
 2884 1395 01       		.byte	0x1
 2885 1396 36       		.byte	0x36
 2886 1397 3E       		.uleb128 0x3e
ARM GAS  /tmp/ccNltSB9.s 			page 79


 2887 1398 48050000 		.4byte	.LASF296
 2888 139c 48050000 		.4byte	.LASF296
 2889 13a0 01       		.byte	0x1
 2890 13a1 38       		.byte	0x38
 2891 13a2 3E       		.uleb128 0x3e
 2892 13a3 1B030000 		.4byte	.LASF297
 2893 13a7 1B030000 		.4byte	.LASF297
 2894 13ab 01       		.byte	0x1
 2895 13ac 49       		.byte	0x49
 2896 13ad 3E       		.uleb128 0x3e
 2897 13ae CA030000 		.4byte	.LASF298
 2898 13b2 CA030000 		.4byte	.LASF298
 2899 13b6 11       		.byte	0x11
 2900 13b7 42       		.byte	0x42
 2901 13b8 3E       		.uleb128 0x3e
 2902 13b9 15000000 		.4byte	.LASF299
 2903 13bd 15000000 		.4byte	.LASF299
 2904 13c1 01       		.byte	0x1
 2905 13c2 4A       		.byte	0x4a
 2906 13c3 00       		.byte	0
 2907              		.section	.debug_abbrev,"",%progbits
 2908              	.Ldebug_abbrev0:
 2909 0000 01       		.uleb128 0x1
 2910 0001 11       		.uleb128 0x11
 2911 0002 01       		.byte	0x1
 2912 0003 25       		.uleb128 0x25
 2913 0004 0E       		.uleb128 0xe
 2914 0005 13       		.uleb128 0x13
 2915 0006 0B       		.uleb128 0xb
 2916 0007 03       		.uleb128 0x3
 2917 0008 0E       		.uleb128 0xe
 2918 0009 1B       		.uleb128 0x1b
 2919 000a 0E       		.uleb128 0xe
 2920 000b 55       		.uleb128 0x55
 2921 000c 17       		.uleb128 0x17
 2922 000d 11       		.uleb128 0x11
 2923 000e 01       		.uleb128 0x1
 2924 000f 10       		.uleb128 0x10
 2925 0010 17       		.uleb128 0x17
 2926 0011 00       		.byte	0
 2927 0012 00       		.byte	0
 2928 0013 02       		.uleb128 0x2
 2929 0014 24       		.uleb128 0x24
 2930 0015 00       		.byte	0
 2931 0016 0B       		.uleb128 0xb
 2932 0017 0B       		.uleb128 0xb
 2933 0018 3E       		.uleb128 0x3e
 2934 0019 0B       		.uleb128 0xb
 2935 001a 03       		.uleb128 0x3
 2936 001b 0E       		.uleb128 0xe
 2937 001c 00       		.byte	0
 2938 001d 00       		.byte	0
 2939 001e 03       		.uleb128 0x3
 2940 001f 16       		.uleb128 0x16
 2941 0020 00       		.byte	0
 2942 0021 03       		.uleb128 0x3
 2943 0022 0E       		.uleb128 0xe
ARM GAS  /tmp/ccNltSB9.s 			page 80


 2944 0023 3A       		.uleb128 0x3a
 2945 0024 0B       		.uleb128 0xb
 2946 0025 3B       		.uleb128 0x3b
 2947 0026 0B       		.uleb128 0xb
 2948 0027 49       		.uleb128 0x49
 2949 0028 13       		.uleb128 0x13
 2950 0029 00       		.byte	0
 2951 002a 00       		.byte	0
 2952 002b 04       		.uleb128 0x4
 2953 002c 24       		.uleb128 0x24
 2954 002d 00       		.byte	0
 2955 002e 0B       		.uleb128 0xb
 2956 002f 0B       		.uleb128 0xb
 2957 0030 3E       		.uleb128 0x3e
 2958 0031 0B       		.uleb128 0xb
 2959 0032 03       		.uleb128 0x3
 2960 0033 08       		.uleb128 0x8
 2961 0034 00       		.byte	0
 2962 0035 00       		.byte	0
 2963 0036 05       		.uleb128 0x5
 2964 0037 35       		.uleb128 0x35
 2965 0038 00       		.byte	0
 2966 0039 49       		.uleb128 0x49
 2967 003a 13       		.uleb128 0x13
 2968 003b 00       		.byte	0
 2969 003c 00       		.byte	0
 2970 003d 06       		.uleb128 0x6
 2971 003e 26       		.uleb128 0x26
 2972 003f 00       		.byte	0
 2973 0040 49       		.uleb128 0x49
 2974 0041 13       		.uleb128 0x13
 2975 0042 00       		.byte	0
 2976 0043 00       		.byte	0
 2977 0044 07       		.uleb128 0x7
 2978 0045 13       		.uleb128 0x13
 2979 0046 01       		.byte	0x1
 2980 0047 03       		.uleb128 0x3
 2981 0048 0E       		.uleb128 0xe
 2982 0049 0B       		.uleb128 0xb
 2983 004a 05       		.uleb128 0x5
 2984 004b 3A       		.uleb128 0x3a
 2985 004c 0B       		.uleb128 0xb
 2986 004d 3B       		.uleb128 0x3b
 2987 004e 0B       		.uleb128 0xb
 2988 004f 01       		.uleb128 0x1
 2989 0050 13       		.uleb128 0x13
 2990 0051 00       		.byte	0
 2991 0052 00       		.byte	0
 2992 0053 08       		.uleb128 0x8
 2993 0054 0D       		.uleb128 0xd
 2994 0055 00       		.byte	0
 2995 0056 03       		.uleb128 0x3
 2996 0057 0E       		.uleb128 0xe
 2997 0058 3A       		.uleb128 0x3a
 2998 0059 0B       		.uleb128 0xb
 2999 005a 3B       		.uleb128 0x3b
 3000 005b 0B       		.uleb128 0xb
ARM GAS  /tmp/ccNltSB9.s 			page 81


 3001 005c 49       		.uleb128 0x49
 3002 005d 13       		.uleb128 0x13
 3003 005e 38       		.uleb128 0x38
 3004 005f 0B       		.uleb128 0xb
 3005 0060 00       		.byte	0
 3006 0061 00       		.byte	0
 3007 0062 09       		.uleb128 0x9
 3008 0063 0D       		.uleb128 0xd
 3009 0064 00       		.byte	0
 3010 0065 03       		.uleb128 0x3
 3011 0066 0E       		.uleb128 0xe
 3012 0067 3A       		.uleb128 0x3a
 3013 0068 0B       		.uleb128 0xb
 3014 0069 3B       		.uleb128 0x3b
 3015 006a 0B       		.uleb128 0xb
 3016 006b 49       		.uleb128 0x49
 3017 006c 13       		.uleb128 0x13
 3018 006d 38       		.uleb128 0x38
 3019 006e 05       		.uleb128 0x5
 3020 006f 00       		.byte	0
 3021 0070 00       		.byte	0
 3022 0071 0A       		.uleb128 0xa
 3023 0072 0F       		.uleb128 0xf
 3024 0073 00       		.byte	0
 3025 0074 0B       		.uleb128 0xb
 3026 0075 0B       		.uleb128 0xb
 3027 0076 00       		.byte	0
 3028 0077 00       		.byte	0
 3029 0078 0B       		.uleb128 0xb
 3030 0079 13       		.uleb128 0x13
 3031 007a 01       		.byte	0x1
 3032 007b 0B       		.uleb128 0xb
 3033 007c 05       		.uleb128 0x5
 3034 007d 3A       		.uleb128 0x3a
 3035 007e 0B       		.uleb128 0xb
 3036 007f 3B       		.uleb128 0x3b
 3037 0080 05       		.uleb128 0x5
 3038 0081 01       		.uleb128 0x1
 3039 0082 13       		.uleb128 0x13
 3040 0083 00       		.byte	0
 3041 0084 00       		.byte	0
 3042 0085 0C       		.uleb128 0xc
 3043 0086 0D       		.uleb128 0xd
 3044 0087 00       		.byte	0
 3045 0088 03       		.uleb128 0x3
 3046 0089 0E       		.uleb128 0xe
 3047 008a 3A       		.uleb128 0x3a
 3048 008b 0B       		.uleb128 0xb
 3049 008c 3B       		.uleb128 0x3b
 3050 008d 05       		.uleb128 0x5
 3051 008e 49       		.uleb128 0x49
 3052 008f 13       		.uleb128 0x13
 3053 0090 38       		.uleb128 0x38
 3054 0091 0B       		.uleb128 0xb
 3055 0092 00       		.byte	0
 3056 0093 00       		.byte	0
 3057 0094 0D       		.uleb128 0xd
ARM GAS  /tmp/ccNltSB9.s 			page 82


 3058 0095 0D       		.uleb128 0xd
 3059 0096 00       		.byte	0
 3060 0097 03       		.uleb128 0x3
 3061 0098 08       		.uleb128 0x8
 3062 0099 3A       		.uleb128 0x3a
 3063 009a 0B       		.uleb128 0xb
 3064 009b 3B       		.uleb128 0x3b
 3065 009c 05       		.uleb128 0x5
 3066 009d 49       		.uleb128 0x49
 3067 009e 13       		.uleb128 0x13
 3068 009f 38       		.uleb128 0x38
 3069 00a0 0B       		.uleb128 0xb
 3070 00a1 00       		.byte	0
 3071 00a2 00       		.byte	0
 3072 00a3 0E       		.uleb128 0xe
 3073 00a4 0D       		.uleb128 0xd
 3074 00a5 00       		.byte	0
 3075 00a6 03       		.uleb128 0x3
 3076 00a7 0E       		.uleb128 0xe
 3077 00a8 3A       		.uleb128 0x3a
 3078 00a9 0B       		.uleb128 0xb
 3079 00aa 3B       		.uleb128 0x3b
 3080 00ab 05       		.uleb128 0x5
 3081 00ac 49       		.uleb128 0x49
 3082 00ad 13       		.uleb128 0x13
 3083 00ae 38       		.uleb128 0x38
 3084 00af 05       		.uleb128 0x5
 3085 00b0 00       		.byte	0
 3086 00b1 00       		.byte	0
 3087 00b2 0F       		.uleb128 0xf
 3088 00b3 01       		.uleb128 0x1
 3089 00b4 01       		.byte	0x1
 3090 00b5 49       		.uleb128 0x49
 3091 00b6 13       		.uleb128 0x13
 3092 00b7 01       		.uleb128 0x1
 3093 00b8 13       		.uleb128 0x13
 3094 00b9 00       		.byte	0
 3095 00ba 00       		.byte	0
 3096 00bb 10       		.uleb128 0x10
 3097 00bc 21       		.uleb128 0x21
 3098 00bd 00       		.byte	0
 3099 00be 49       		.uleb128 0x49
 3100 00bf 13       		.uleb128 0x13
 3101 00c0 2F       		.uleb128 0x2f
 3102 00c1 0B       		.uleb128 0xb
 3103 00c2 00       		.byte	0
 3104 00c3 00       		.byte	0
 3105 00c4 11       		.uleb128 0x11
 3106 00c5 16       		.uleb128 0x16
 3107 00c6 00       		.byte	0
 3108 00c7 03       		.uleb128 0x3
 3109 00c8 0E       		.uleb128 0xe
 3110 00c9 3A       		.uleb128 0x3a
 3111 00ca 0B       		.uleb128 0xb
 3112 00cb 3B       		.uleb128 0x3b
 3113 00cc 05       		.uleb128 0x5
 3114 00cd 49       		.uleb128 0x49
ARM GAS  /tmp/ccNltSB9.s 			page 83


 3115 00ce 13       		.uleb128 0x13
 3116 00cf 00       		.byte	0
 3117 00d0 00       		.byte	0
 3118 00d1 12       		.uleb128 0x12
 3119 00d2 34       		.uleb128 0x34
 3120 00d3 00       		.byte	0
 3121 00d4 03       		.uleb128 0x3
 3122 00d5 0E       		.uleb128 0xe
 3123 00d6 3A       		.uleb128 0x3a
 3124 00d7 0B       		.uleb128 0xb
 3125 00d8 3B       		.uleb128 0x3b
 3126 00d9 05       		.uleb128 0x5
 3127 00da 49       		.uleb128 0x49
 3128 00db 13       		.uleb128 0x13
 3129 00dc 3F       		.uleb128 0x3f
 3130 00dd 19       		.uleb128 0x19
 3131 00de 3C       		.uleb128 0x3c
 3132 00df 19       		.uleb128 0x19
 3133 00e0 00       		.byte	0
 3134 00e1 00       		.byte	0
 3135 00e2 13       		.uleb128 0x13
 3136 00e3 34       		.uleb128 0x34
 3137 00e4 00       		.byte	0
 3138 00e5 03       		.uleb128 0x3
 3139 00e6 0E       		.uleb128 0xe
 3140 00e7 3A       		.uleb128 0x3a
 3141 00e8 0B       		.uleb128 0xb
 3142 00e9 3B       		.uleb128 0x3b
 3143 00ea 0B       		.uleb128 0xb
 3144 00eb 49       		.uleb128 0x49
 3145 00ec 13       		.uleb128 0x13
 3146 00ed 3F       		.uleb128 0x3f
 3147 00ee 19       		.uleb128 0x19
 3148 00ef 3C       		.uleb128 0x3c
 3149 00f0 19       		.uleb128 0x19
 3150 00f1 00       		.byte	0
 3151 00f2 00       		.byte	0
 3152 00f3 14       		.uleb128 0x14
 3153 00f4 13       		.uleb128 0x13
 3154 00f5 01       		.byte	0x1
 3155 00f6 0B       		.uleb128 0xb
 3156 00f7 0B       		.uleb128 0xb
 3157 00f8 3A       		.uleb128 0x3a
 3158 00f9 0B       		.uleb128 0xb
 3159 00fa 3B       		.uleb128 0x3b
 3160 00fb 0B       		.uleb128 0xb
 3161 00fc 01       		.uleb128 0x1
 3162 00fd 13       		.uleb128 0x13
 3163 00fe 00       		.byte	0
 3164 00ff 00       		.byte	0
 3165 0100 15       		.uleb128 0x15
 3166 0101 16       		.uleb128 0x16
 3167 0102 00       		.byte	0
 3168 0103 03       		.uleb128 0x3
 3169 0104 08       		.uleb128 0x8
 3170 0105 3A       		.uleb128 0x3a
 3171 0106 0B       		.uleb128 0xb
ARM GAS  /tmp/ccNltSB9.s 			page 84


 3172 0107 3B       		.uleb128 0x3b
 3173 0108 0B       		.uleb128 0xb
 3174 0109 49       		.uleb128 0x49
 3175 010a 13       		.uleb128 0x13
 3176 010b 00       		.byte	0
 3177 010c 00       		.byte	0
 3178 010d 16       		.uleb128 0x16
 3179 010e 17       		.uleb128 0x17
 3180 010f 01       		.byte	0x1
 3181 0110 0B       		.uleb128 0xb
 3182 0111 0B       		.uleb128 0xb
 3183 0112 3A       		.uleb128 0x3a
 3184 0113 0B       		.uleb128 0xb
 3185 0114 3B       		.uleb128 0x3b
 3186 0115 0B       		.uleb128 0xb
 3187 0116 01       		.uleb128 0x1
 3188 0117 13       		.uleb128 0x13
 3189 0118 00       		.byte	0
 3190 0119 00       		.byte	0
 3191 011a 17       		.uleb128 0x17
 3192 011b 0D       		.uleb128 0xd
 3193 011c 00       		.byte	0
 3194 011d 03       		.uleb128 0x3
 3195 011e 0E       		.uleb128 0xe
 3196 011f 3A       		.uleb128 0x3a
 3197 0120 0B       		.uleb128 0xb
 3198 0121 3B       		.uleb128 0x3b
 3199 0122 0B       		.uleb128 0xb
 3200 0123 49       		.uleb128 0x49
 3201 0124 13       		.uleb128 0x13
 3202 0125 00       		.byte	0
 3203 0126 00       		.byte	0
 3204 0127 18       		.uleb128 0x18
 3205 0128 13       		.uleb128 0x13
 3206 0129 01       		.byte	0x1
 3207 012a 03       		.uleb128 0x3
 3208 012b 0E       		.uleb128 0xe
 3209 012c 0B       		.uleb128 0xb
 3210 012d 0B       		.uleb128 0xb
 3211 012e 3A       		.uleb128 0x3a
 3212 012f 0B       		.uleb128 0xb
 3213 0130 3B       		.uleb128 0x3b
 3214 0131 0B       		.uleb128 0xb
 3215 0132 01       		.uleb128 0x1
 3216 0133 13       		.uleb128 0x13
 3217 0134 00       		.byte	0
 3218 0135 00       		.byte	0
 3219 0136 19       		.uleb128 0x19
 3220 0137 0D       		.uleb128 0xd
 3221 0138 00       		.byte	0
 3222 0139 03       		.uleb128 0x3
 3223 013a 08       		.uleb128 0x8
 3224 013b 3A       		.uleb128 0x3a
 3225 013c 0B       		.uleb128 0xb
 3226 013d 3B       		.uleb128 0x3b
 3227 013e 0B       		.uleb128 0xb
 3228 013f 49       		.uleb128 0x49
ARM GAS  /tmp/ccNltSB9.s 			page 85


 3229 0140 13       		.uleb128 0x13
 3230 0141 38       		.uleb128 0x38
 3231 0142 0B       		.uleb128 0xb
 3232 0143 00       		.byte	0
 3233 0144 00       		.byte	0
 3234 0145 1A       		.uleb128 0x1a
 3235 0146 0F       		.uleb128 0xf
 3236 0147 00       		.byte	0
 3237 0148 0B       		.uleb128 0xb
 3238 0149 0B       		.uleb128 0xb
 3239 014a 49       		.uleb128 0x49
 3240 014b 13       		.uleb128 0x13
 3241 014c 00       		.byte	0
 3242 014d 00       		.byte	0
 3243 014e 1B       		.uleb128 0x1b
 3244 014f 15       		.uleb128 0x15
 3245 0150 00       		.byte	0
 3246 0151 27       		.uleb128 0x27
 3247 0152 19       		.uleb128 0x19
 3248 0153 00       		.byte	0
 3249 0154 00       		.byte	0
 3250 0155 1C       		.uleb128 0x1c
 3251 0156 15       		.uleb128 0x15
 3252 0157 01       		.byte	0x1
 3253 0158 27       		.uleb128 0x27
 3254 0159 19       		.uleb128 0x19
 3255 015a 49       		.uleb128 0x49
 3256 015b 13       		.uleb128 0x13
 3257 015c 01       		.uleb128 0x1
 3258 015d 13       		.uleb128 0x13
 3259 015e 00       		.byte	0
 3260 015f 00       		.byte	0
 3261 0160 1D       		.uleb128 0x1d
 3262 0161 05       		.uleb128 0x5
 3263 0162 00       		.byte	0
 3264 0163 49       		.uleb128 0x49
 3265 0164 13       		.uleb128 0x13
 3266 0165 00       		.byte	0
 3267 0166 00       		.byte	0
 3268 0167 1E       		.uleb128 0x1e
 3269 0168 13       		.uleb128 0x13
 3270 0169 01       		.byte	0x1
 3271 016a 03       		.uleb128 0x3
 3272 016b 0E       		.uleb128 0xe
 3273 016c 0B       		.uleb128 0xb
 3274 016d 05       		.uleb128 0x5
 3275 016e 3A       		.uleb128 0x3a
 3276 016f 0B       		.uleb128 0xb
 3277 0170 3B       		.uleb128 0x3b
 3278 0171 05       		.uleb128 0x5
 3279 0172 01       		.uleb128 0x1
 3280 0173 13       		.uleb128 0x13
 3281 0174 00       		.byte	0
 3282 0175 00       		.byte	0
 3283 0176 1F       		.uleb128 0x1f
 3284 0177 13       		.uleb128 0x13
 3285 0178 01       		.byte	0x1
ARM GAS  /tmp/ccNltSB9.s 			page 86


 3286 0179 03       		.uleb128 0x3
 3287 017a 0E       		.uleb128 0xe
 3288 017b 0B       		.uleb128 0xb
 3289 017c 0B       		.uleb128 0xb
 3290 017d 3A       		.uleb128 0x3a
 3291 017e 0B       		.uleb128 0xb
 3292 017f 3B       		.uleb128 0x3b
 3293 0180 05       		.uleb128 0x5
 3294 0181 01       		.uleb128 0x1
 3295 0182 13       		.uleb128 0x13
 3296 0183 00       		.byte	0
 3297 0184 00       		.byte	0
 3298 0185 20       		.uleb128 0x20
 3299 0186 13       		.uleb128 0x13
 3300 0187 01       		.byte	0x1
 3301 0188 0B       		.uleb128 0xb
 3302 0189 0B       		.uleb128 0xb
 3303 018a 3A       		.uleb128 0x3a
 3304 018b 0B       		.uleb128 0xb
 3305 018c 3B       		.uleb128 0x3b
 3306 018d 05       		.uleb128 0x5
 3307 018e 01       		.uleb128 0x1
 3308 018f 13       		.uleb128 0x13
 3309 0190 00       		.byte	0
 3310 0191 00       		.byte	0
 3311 0192 21       		.uleb128 0x21
 3312 0193 17       		.uleb128 0x17
 3313 0194 01       		.byte	0x1
 3314 0195 0B       		.uleb128 0xb
 3315 0196 0B       		.uleb128 0xb
 3316 0197 3A       		.uleb128 0x3a
 3317 0198 0B       		.uleb128 0xb
 3318 0199 3B       		.uleb128 0x3b
 3319 019a 05       		.uleb128 0x5
 3320 019b 01       		.uleb128 0x1
 3321 019c 13       		.uleb128 0x13
 3322 019d 00       		.byte	0
 3323 019e 00       		.byte	0
 3324 019f 22       		.uleb128 0x22
 3325 01a0 0D       		.uleb128 0xd
 3326 01a1 00       		.byte	0
 3327 01a2 03       		.uleb128 0x3
 3328 01a3 0E       		.uleb128 0xe
 3329 01a4 3A       		.uleb128 0x3a
 3330 01a5 0B       		.uleb128 0xb
 3331 01a6 3B       		.uleb128 0x3b
 3332 01a7 05       		.uleb128 0x5
 3333 01a8 49       		.uleb128 0x49
 3334 01a9 13       		.uleb128 0x13
 3335 01aa 00       		.byte	0
 3336 01ab 00       		.byte	0
 3337 01ac 23       		.uleb128 0x23
 3338 01ad 15       		.uleb128 0x15
 3339 01ae 01       		.byte	0x1
 3340 01af 27       		.uleb128 0x27
 3341 01b0 19       		.uleb128 0x19
 3342 01b1 01       		.uleb128 0x1
ARM GAS  /tmp/ccNltSB9.s 			page 87


 3343 01b2 13       		.uleb128 0x13
 3344 01b3 00       		.byte	0
 3345 01b4 00       		.byte	0
 3346 01b5 24       		.uleb128 0x24
 3347 01b6 34       		.uleb128 0x34
 3348 01b7 00       		.byte	0
 3349 01b8 03       		.uleb128 0x3
 3350 01b9 0E       		.uleb128 0xe
 3351 01ba 3A       		.uleb128 0x3a
 3352 01bb 0B       		.uleb128 0xb
 3353 01bc 3B       		.uleb128 0x3b
 3354 01bd 0B       		.uleb128 0xb
 3355 01be 49       		.uleb128 0x49
 3356 01bf 13       		.uleb128 0x13
 3357 01c0 02       		.uleb128 0x2
 3358 01c1 18       		.uleb128 0x18
 3359 01c2 00       		.byte	0
 3360 01c3 00       		.byte	0
 3361 01c4 25       		.uleb128 0x25
 3362 01c5 34       		.uleb128 0x34
 3363 01c6 00       		.byte	0
 3364 01c7 03       		.uleb128 0x3
 3365 01c8 0E       		.uleb128 0xe
 3366 01c9 3A       		.uleb128 0x3a
 3367 01ca 0B       		.uleb128 0xb
 3368 01cb 3B       		.uleb128 0x3b
 3369 01cc 0B       		.uleb128 0xb
 3370 01cd 49       		.uleb128 0x49
 3371 01ce 13       		.uleb128 0x13
 3372 01cf 3F       		.uleb128 0x3f
 3373 01d0 19       		.uleb128 0x19
 3374 01d1 02       		.uleb128 0x2
 3375 01d2 18       		.uleb128 0x18
 3376 01d3 00       		.byte	0
 3377 01d4 00       		.byte	0
 3378 01d5 26       		.uleb128 0x26
 3379 01d6 2E       		.uleb128 0x2e
 3380 01d7 00       		.byte	0
 3381 01d8 3F       		.uleb128 0x3f
 3382 01d9 19       		.uleb128 0x19
 3383 01da 03       		.uleb128 0x3
 3384 01db 0E       		.uleb128 0xe
 3385 01dc 3A       		.uleb128 0x3a
 3386 01dd 0B       		.uleb128 0xb
 3387 01de 3B       		.uleb128 0x3b
 3388 01df 05       		.uleb128 0x5
 3389 01e0 27       		.uleb128 0x27
 3390 01e1 19       		.uleb128 0x19
 3391 01e2 11       		.uleb128 0x11
 3392 01e3 01       		.uleb128 0x1
 3393 01e4 12       		.uleb128 0x12
 3394 01e5 06       		.uleb128 0x6
 3395 01e6 40       		.uleb128 0x40
 3396 01e7 18       		.uleb128 0x18
 3397 01e8 9742     		.uleb128 0x2117
 3398 01ea 19       		.uleb128 0x19
 3399 01eb 00       		.byte	0
ARM GAS  /tmp/ccNltSB9.s 			page 88


 3400 01ec 00       		.byte	0
 3401 01ed 27       		.uleb128 0x27
 3402 01ee 2E       		.uleb128 0x2e
 3403 01ef 01       		.byte	0x1
 3404 01f0 3F       		.uleb128 0x3f
 3405 01f1 19       		.uleb128 0x19
 3406 01f2 03       		.uleb128 0x3
 3407 01f3 0E       		.uleb128 0xe
 3408 01f4 3A       		.uleb128 0x3a
 3409 01f5 0B       		.uleb128 0xb
 3410 01f6 3B       		.uleb128 0x3b
 3411 01f7 05       		.uleb128 0x5
 3412 01f8 27       		.uleb128 0x27
 3413 01f9 19       		.uleb128 0x19
 3414 01fa 11       		.uleb128 0x11
 3415 01fb 01       		.uleb128 0x1
 3416 01fc 12       		.uleb128 0x12
 3417 01fd 06       		.uleb128 0x6
 3418 01fe 40       		.uleb128 0x40
 3419 01ff 18       		.uleb128 0x18
 3420 0200 9742     		.uleb128 0x2117
 3421 0202 19       		.uleb128 0x19
 3422 0203 01       		.uleb128 0x1
 3423 0204 13       		.uleb128 0x13
 3424 0205 00       		.byte	0
 3425 0206 00       		.byte	0
 3426 0207 28       		.uleb128 0x28
 3427 0208 34       		.uleb128 0x34
 3428 0209 00       		.byte	0
 3429 020a 03       		.uleb128 0x3
 3430 020b 0E       		.uleb128 0xe
 3431 020c 3A       		.uleb128 0x3a
 3432 020d 0B       		.uleb128 0xb
 3433 020e 3B       		.uleb128 0x3b
 3434 020f 05       		.uleb128 0x5
 3435 0210 49       		.uleb128 0x49
 3436 0211 13       		.uleb128 0x13
 3437 0212 02       		.uleb128 0x2
 3438 0213 17       		.uleb128 0x17
 3439 0214 00       		.byte	0
 3440 0215 00       		.byte	0
 3441 0216 29       		.uleb128 0x29
 3442 0217 1D       		.uleb128 0x1d
 3443 0218 01       		.byte	0x1
 3444 0219 31       		.uleb128 0x31
 3445 021a 13       		.uleb128 0x13
 3446 021b 11       		.uleb128 0x11
 3447 021c 01       		.uleb128 0x1
 3448 021d 12       		.uleb128 0x12
 3449 021e 06       		.uleb128 0x6
 3450 021f 58       		.uleb128 0x58
 3451 0220 0B       		.uleb128 0xb
 3452 0221 59       		.uleb128 0x59
 3453 0222 05       		.uleb128 0x5
 3454 0223 01       		.uleb128 0x1
 3455 0224 13       		.uleb128 0x13
 3456 0225 00       		.byte	0
ARM GAS  /tmp/ccNltSB9.s 			page 89


 3457 0226 00       		.byte	0
 3458 0227 2A       		.uleb128 0x2a
 3459 0228 0B       		.uleb128 0xb
 3460 0229 01       		.byte	0x1
 3461 022a 11       		.uleb128 0x11
 3462 022b 01       		.uleb128 0x1
 3463 022c 12       		.uleb128 0x12
 3464 022d 06       		.uleb128 0x6
 3465 022e 00       		.byte	0
 3466 022f 00       		.byte	0
 3467 0230 2B       		.uleb128 0x2b
 3468 0231 34       		.uleb128 0x34
 3469 0232 00       		.byte	0
 3470 0233 31       		.uleb128 0x31
 3471 0234 13       		.uleb128 0x13
 3472 0235 00       		.byte	0
 3473 0236 00       		.byte	0
 3474 0237 2C       		.uleb128 0x2c
 3475 0238 1D       		.uleb128 0x1d
 3476 0239 01       		.byte	0x1
 3477 023a 31       		.uleb128 0x31
 3478 023b 13       		.uleb128 0x13
 3479 023c 52       		.uleb128 0x52
 3480 023d 01       		.uleb128 0x1
 3481 023e 55       		.uleb128 0x55
 3482 023f 17       		.uleb128 0x17
 3483 0240 58       		.uleb128 0x58
 3484 0241 0B       		.uleb128 0xb
 3485 0242 59       		.uleb128 0x59
 3486 0243 0B       		.uleb128 0xb
 3487 0244 01       		.uleb128 0x1
 3488 0245 13       		.uleb128 0x13
 3489 0246 00       		.byte	0
 3490 0247 00       		.byte	0
 3491 0248 2D       		.uleb128 0x2d
 3492 0249 0B       		.uleb128 0xb
 3493 024a 01       		.byte	0x1
 3494 024b 55       		.uleb128 0x55
 3495 024c 17       		.uleb128 0x17
 3496 024d 00       		.byte	0
 3497 024e 00       		.byte	0
 3498 024f 2E       		.uleb128 0x2e
 3499 0250 1D       		.uleb128 0x1d
 3500 0251 01       		.byte	0x1
 3501 0252 31       		.uleb128 0x31
 3502 0253 13       		.uleb128 0x13
 3503 0254 11       		.uleb128 0x11
 3504 0255 01       		.uleb128 0x1
 3505 0256 12       		.uleb128 0x12
 3506 0257 06       		.uleb128 0x6
 3507 0258 58       		.uleb128 0x58
 3508 0259 0B       		.uleb128 0xb
 3509 025a 59       		.uleb128 0x59
 3510 025b 0B       		.uleb128 0xb
 3511 025c 01       		.uleb128 0x1
 3512 025d 13       		.uleb128 0x13
 3513 025e 00       		.byte	0
ARM GAS  /tmp/ccNltSB9.s 			page 90


 3514 025f 00       		.byte	0
 3515 0260 2F       		.uleb128 0x2f
 3516 0261 1D       		.uleb128 0x1d
 3517 0262 00       		.byte	0
 3518 0263 31       		.uleb128 0x31
 3519 0264 13       		.uleb128 0x13
 3520 0265 11       		.uleb128 0x11
 3521 0266 01       		.uleb128 0x1
 3522 0267 12       		.uleb128 0x12
 3523 0268 06       		.uleb128 0x6
 3524 0269 58       		.uleb128 0x58
 3525 026a 0B       		.uleb128 0xb
 3526 026b 59       		.uleb128 0x59
 3527 026c 0B       		.uleb128 0xb
 3528 026d 00       		.byte	0
 3529 026e 00       		.byte	0
 3530 026f 30       		.uleb128 0x30
 3531 0270 1D       		.uleb128 0x1d
 3532 0271 01       		.byte	0x1
 3533 0272 31       		.uleb128 0x31
 3534 0273 13       		.uleb128 0x13
 3535 0274 11       		.uleb128 0x11
 3536 0275 01       		.uleb128 0x1
 3537 0276 12       		.uleb128 0x12
 3538 0277 06       		.uleb128 0x6
 3539 0278 58       		.uleb128 0x58
 3540 0279 0B       		.uleb128 0xb
 3541 027a 59       		.uleb128 0x59
 3542 027b 0B       		.uleb128 0xb
 3543 027c 00       		.byte	0
 3544 027d 00       		.byte	0
 3545 027e 31       		.uleb128 0x31
 3546 027f 05       		.uleb128 0x5
 3547 0280 00       		.byte	0
 3548 0281 31       		.uleb128 0x31
 3549 0282 13       		.uleb128 0x13
 3550 0283 00       		.byte	0
 3551 0284 00       		.byte	0
 3552 0285 32       		.uleb128 0x32
 3553 0286 898201   		.uleb128 0x4109
 3554 0289 00       		.byte	0
 3555 028a 11       		.uleb128 0x11
 3556 028b 01       		.uleb128 0x1
 3557 028c 31       		.uleb128 0x31
 3558 028d 13       		.uleb128 0x13
 3559 028e 00       		.byte	0
 3560 028f 00       		.byte	0
 3561 0290 33       		.uleb128 0x33
 3562 0291 898201   		.uleb128 0x4109
 3563 0294 00       		.byte	0
 3564 0295 11       		.uleb128 0x11
 3565 0296 01       		.uleb128 0x1
 3566 0297 9542     		.uleb128 0x2115
 3567 0299 19       		.uleb128 0x19
 3568 029a 31       		.uleb128 0x31
 3569 029b 13       		.uleb128 0x13
 3570 029c 00       		.byte	0
ARM GAS  /tmp/ccNltSB9.s 			page 91


 3571 029d 00       		.byte	0
 3572 029e 34       		.uleb128 0x34
 3573 029f 2E       		.uleb128 0x2e
 3574 02a0 01       		.byte	0x1
 3575 02a1 3F       		.uleb128 0x3f
 3576 02a2 19       		.uleb128 0x19
 3577 02a3 03       		.uleb128 0x3
 3578 02a4 0E       		.uleb128 0xe
 3579 02a5 3A       		.uleb128 0x3a
 3580 02a6 0B       		.uleb128 0xb
 3581 02a7 3B       		.uleb128 0x3b
 3582 02a8 0B       		.uleb128 0xb
 3583 02a9 27       		.uleb128 0x27
 3584 02aa 19       		.uleb128 0x19
 3585 02ab 11       		.uleb128 0x11
 3586 02ac 01       		.uleb128 0x1
 3587 02ad 12       		.uleb128 0x12
 3588 02ae 06       		.uleb128 0x6
 3589 02af 40       		.uleb128 0x40
 3590 02b0 18       		.uleb128 0x18
 3591 02b1 9742     		.uleb128 0x2117
 3592 02b3 19       		.uleb128 0x19
 3593 02b4 01       		.uleb128 0x1
 3594 02b5 13       		.uleb128 0x13
 3595 02b6 00       		.byte	0
 3596 02b7 00       		.byte	0
 3597 02b8 35       		.uleb128 0x35
 3598 02b9 898201   		.uleb128 0x4109
 3599 02bc 01       		.byte	0x1
 3600 02bd 11       		.uleb128 0x11
 3601 02be 01       		.uleb128 0x1
 3602 02bf 31       		.uleb128 0x31
 3603 02c0 13       		.uleb128 0x13
 3604 02c1 01       		.uleb128 0x1
 3605 02c2 13       		.uleb128 0x13
 3606 02c3 00       		.byte	0
 3607 02c4 00       		.byte	0
 3608 02c5 36       		.uleb128 0x36
 3609 02c6 8A8201   		.uleb128 0x410a
 3610 02c9 00       		.byte	0
 3611 02ca 02       		.uleb128 0x2
 3612 02cb 18       		.uleb128 0x18
 3613 02cc 9142     		.uleb128 0x2111
 3614 02ce 18       		.uleb128 0x18
 3615 02cf 00       		.byte	0
 3616 02d0 00       		.byte	0
 3617 02d1 37       		.uleb128 0x37
 3618 02d2 2E       		.uleb128 0x2e
 3619 02d3 01       		.byte	0x1
 3620 02d4 03       		.uleb128 0x3
 3621 02d5 0E       		.uleb128 0xe
 3622 02d6 3A       		.uleb128 0x3a
 3623 02d7 0B       		.uleb128 0xb
 3624 02d8 3B       		.uleb128 0x3b
 3625 02d9 0B       		.uleb128 0xb
 3626 02da 27       		.uleb128 0x27
 3627 02db 19       		.uleb128 0x19
ARM GAS  /tmp/ccNltSB9.s 			page 92


 3628 02dc 20       		.uleb128 0x20
 3629 02dd 0B       		.uleb128 0xb
 3630 02de 01       		.uleb128 0x1
 3631 02df 13       		.uleb128 0x13
 3632 02e0 00       		.byte	0
 3633 02e1 00       		.byte	0
 3634 02e2 38       		.uleb128 0x38
 3635 02e3 34       		.uleb128 0x34
 3636 02e4 00       		.byte	0
 3637 02e5 03       		.uleb128 0x3
 3638 02e6 0E       		.uleb128 0xe
 3639 02e7 3A       		.uleb128 0x3a
 3640 02e8 0B       		.uleb128 0xb
 3641 02e9 3B       		.uleb128 0x3b
 3642 02ea 0B       		.uleb128 0xb
 3643 02eb 49       		.uleb128 0x49
 3644 02ec 13       		.uleb128 0x13
 3645 02ed 00       		.byte	0
 3646 02ee 00       		.byte	0
 3647 02ef 39       		.uleb128 0x39
 3648 02f0 05       		.uleb128 0x5
 3649 02f1 00       		.byte	0
 3650 02f2 03       		.uleb128 0x3
 3651 02f3 0E       		.uleb128 0xe
 3652 02f4 3A       		.uleb128 0x3a
 3653 02f5 0B       		.uleb128 0xb
 3654 02f6 3B       		.uleb128 0x3b
 3655 02f7 0B       		.uleb128 0xb
 3656 02f8 49       		.uleb128 0x49
 3657 02f9 13       		.uleb128 0x13
 3658 02fa 00       		.byte	0
 3659 02fb 00       		.byte	0
 3660 02fc 3A       		.uleb128 0x3a
 3661 02fd 2E       		.uleb128 0x2e
 3662 02fe 01       		.byte	0x1
 3663 02ff 03       		.uleb128 0x3
 3664 0300 0E       		.uleb128 0xe
 3665 0301 3A       		.uleb128 0x3a
 3666 0302 0B       		.uleb128 0xb
 3667 0303 3B       		.uleb128 0x3b
 3668 0304 0B       		.uleb128 0xb
 3669 0305 27       		.uleb128 0x27
 3670 0306 19       		.uleb128 0x19
 3671 0307 49       		.uleb128 0x49
 3672 0308 13       		.uleb128 0x13
 3673 0309 20       		.uleb128 0x20
 3674 030a 0B       		.uleb128 0xb
 3675 030b 01       		.uleb128 0x1
 3676 030c 13       		.uleb128 0x13
 3677 030d 00       		.byte	0
 3678 030e 00       		.byte	0
 3679 030f 3B       		.uleb128 0x3b
 3680 0310 2E       		.uleb128 0x2e
 3681 0311 01       		.byte	0x1
 3682 0312 03       		.uleb128 0x3
 3683 0313 0E       		.uleb128 0xe
 3684 0314 3A       		.uleb128 0x3a
ARM GAS  /tmp/ccNltSB9.s 			page 93


 3685 0315 0B       		.uleb128 0xb
 3686 0316 3B       		.uleb128 0x3b
 3687 0317 05       		.uleb128 0x5
 3688 0318 27       		.uleb128 0x27
 3689 0319 19       		.uleb128 0x19
 3690 031a 49       		.uleb128 0x49
 3691 031b 13       		.uleb128 0x13
 3692 031c 20       		.uleb128 0x20
 3693 031d 0B       		.uleb128 0xb
 3694 031e 01       		.uleb128 0x1
 3695 031f 13       		.uleb128 0x13
 3696 0320 00       		.byte	0
 3697 0321 00       		.byte	0
 3698 0322 3C       		.uleb128 0x3c
 3699 0323 34       		.uleb128 0x34
 3700 0324 00       		.byte	0
 3701 0325 03       		.uleb128 0x3
 3702 0326 0E       		.uleb128 0xe
 3703 0327 3A       		.uleb128 0x3a
 3704 0328 0B       		.uleb128 0xb
 3705 0329 3B       		.uleb128 0x3b
 3706 032a 05       		.uleb128 0x5
 3707 032b 49       		.uleb128 0x49
 3708 032c 13       		.uleb128 0x13
 3709 032d 00       		.byte	0
 3710 032e 00       		.byte	0
 3711 032f 3D       		.uleb128 0x3d
 3712 0330 2E       		.uleb128 0x2e
 3713 0331 00       		.byte	0
 3714 0332 03       		.uleb128 0x3
 3715 0333 0E       		.uleb128 0xe
 3716 0334 3A       		.uleb128 0x3a
 3717 0335 0B       		.uleb128 0xb
 3718 0336 3B       		.uleb128 0x3b
 3719 0337 05       		.uleb128 0x5
 3720 0338 27       		.uleb128 0x27
 3721 0339 19       		.uleb128 0x19
 3722 033a 20       		.uleb128 0x20
 3723 033b 0B       		.uleb128 0xb
 3724 033c 00       		.byte	0
 3725 033d 00       		.byte	0
 3726 033e 3E       		.uleb128 0x3e
 3727 033f 2E       		.uleb128 0x2e
 3728 0340 00       		.byte	0
 3729 0341 3F       		.uleb128 0x3f
 3730 0342 19       		.uleb128 0x19
 3731 0343 3C       		.uleb128 0x3c
 3732 0344 19       		.uleb128 0x19
 3733 0345 6E       		.uleb128 0x6e
 3734 0346 0E       		.uleb128 0xe
 3735 0347 03       		.uleb128 0x3
 3736 0348 0E       		.uleb128 0xe
 3737 0349 3A       		.uleb128 0x3a
 3738 034a 0B       		.uleb128 0xb
 3739 034b 3B       		.uleb128 0x3b
 3740 034c 0B       		.uleb128 0xb
 3741 034d 00       		.byte	0
ARM GAS  /tmp/ccNltSB9.s 			page 94


 3742 034e 00       		.byte	0
 3743 034f 00       		.byte	0
 3744              		.section	.debug_loc,"",%progbits
 3745              	.Ldebug_loc0:
 3746              	.LLST0:
 3747 0000 1C000000 		.4byte	.LVL1
 3748 0004 20000000 		.4byte	.LVL2
 3749 0008 0100     		.2byte	0x1
 3750 000a 52       		.byte	0x52
 3751 000b 20000000 		.4byte	.LVL2
 3752 000f 24000000 		.4byte	.LVL3
 3753 0013 0300     		.2byte	0x3
 3754 0015 72       		.byte	0x72
 3755 0016 7C       		.sleb128 -4
 3756 0017 9F       		.byte	0x9f
 3757 0018 24000000 		.4byte	.LVL3
 3758 001c 28000000 		.4byte	.LVL4
 3759 0020 0100     		.2byte	0x1
 3760 0022 52       		.byte	0x52
 3761 0023 00000000 		.4byte	0
 3762 0027 00000000 		.4byte	0
 3763              	.LLST1:
 3764 002b 3E000000 		.4byte	.LVL5
 3765 002f 42000000 		.4byte	.LVL6
 3766 0033 0300     		.2byte	0x3
 3767 0035 73       		.byte	0x73
 3768 0036 04       		.sleb128 4
 3769 0037 9F       		.byte	0x9f
 3770 0038 42000000 		.4byte	.LVL6
 3771 003c 46000000 		.4byte	.LVL7
 3772 0040 0100     		.2byte	0x1
 3773 0042 53       		.byte	0x53
 3774 0043 00000000 		.4byte	0
 3775 0047 00000000 		.4byte	0
 3776              		.section	.debug_aranges,"",%progbits
 3777 0000 2C000000 		.4byte	0x2c
 3778 0004 0200     		.2byte	0x2
 3779 0006 00000000 		.4byte	.Ldebug_info0
 3780 000a 04       		.byte	0x4
 3781 000b 00       		.byte	0
 3782 000c 0000     		.2byte	0
 3783 000e 0000     		.2byte	0
 3784 0010 00000000 		.4byte	.LFB147
 3785 0014 02000000 		.4byte	.LFE147-.LFB147
 3786 0018 00000000 		.4byte	.LFB146
 3787 001c BC000000 		.4byte	.LFE146-.LFB146
 3788 0020 00000000 		.4byte	.LFB145
 3789 0024 1C000000 		.4byte	.LFE145-.LFB145
 3790 0028 00000000 		.4byte	0
 3791 002c 00000000 		.4byte	0
 3792              		.section	.debug_ranges,"",%progbits
 3793              	.Ldebug_ranges0:
 3794 0000 50000000 		.4byte	.LBB50
 3795 0004 5A000000 		.4byte	.LBE50
 3796 0008 5C000000 		.4byte	.LBB59
 3797 000c 62000000 		.4byte	.LBE59
 3798 0010 00000000 		.4byte	0
ARM GAS  /tmp/ccNltSB9.s 			page 95


 3799 0014 00000000 		.4byte	0
 3800 0018 00000000 		.4byte	.LFB147
 3801 001c 02000000 		.4byte	.LFE147
 3802 0020 00000000 		.4byte	.LFB146
 3803 0024 BC000000 		.4byte	.LFE146
 3804 0028 00000000 		.4byte	.LFB145
 3805 002c 1C000000 		.4byte	.LFE145
 3806 0030 00000000 		.4byte	0
 3807 0034 00000000 		.4byte	0
 3808              		.section	.debug_line,"",%progbits
 3809              	.Ldebug_line0:
 3810 0000 EE030000 		.section	.debug_str,"MS",%progbits,1
 3810      02006103 
 3810      00000201 
 3810      FB0E0D00 
 3810      01010101 
 3811              	.LASF159:
 3812 0000 5F666C6F 		.ascii	"_flock_t\000"
 3812      636B5F74 
 3812      00
 3813              	.LASF118:
 3814 0009 43504143 		.ascii	"CPACR\000"
 3814      5200
 3815              	.LASF133:
 3816 000f 44434353 		.ascii	"DCCSW\000"
 3816      5700
 3817              	.LASF299:
 3818 0015 54696D65 		.ascii	"TimeTick_Increment\000"
 3818      5469636B 
 3818      5F496E63 
 3818      72656D65 
 3818      6E7400
 3819              	.LASF75:
 3820 0028 70666E55 		.ascii	"pfnUART2_Handler\000"
 3820      41525432 
 3820      5F48616E 
 3820      646C6572 
 3820      00
 3821              	.LASF294:
 3822 0039 5F5F6C69 		.ascii	"__libc_init_array\000"
 3822      62635F69 
 3822      6E69745F 
 3822      61727261 
 3822      7900
 3823              	.LASF29:
 3824 004b 70666E50 		.ascii	"pfnPendSV_Handler\000"
 3824      656E6453 
 3824      565F4861 
 3824      6E646C65 
 3824      7200
 3825              	.LASF93:
 3826 005d 70666E53 		.ascii	"pfnSDRAMC_Handler\000"
 3826      4452414D 
 3826      435F4861 
 3826      6E646C65 
 3826      7200
 3827              	.LASF68:
ARM GAS  /tmp/ccNltSB9.s 			page 96


 3828 006f 70666E4D 		.ascii	"pfnMCAN1_Handler\000"
 3828      43414E31 
 3828      5F48616E 
 3828      646C6572 
 3828      00
 3829              	.LASF245:
 3830 0080 5F776374 		.ascii	"_wctomb_state\000"
 3830      6F6D625F 
 3830      73746174 
 3830      6500
 3831              	.LASF91:
 3832 008e 70666E50 		.ascii	"pfnPWM1_Handler\000"
 3832      574D315F 
 3832      48616E64 
 3832      6C657200 
 3833              	.LASF282:
 3834 009e 666C6167 		.ascii	"flags\000"
 3834      7300
 3835              	.LASF242:
 3836 00a4 5F723438 		.ascii	"_r48\000"
 3836      00
 3837              	.LASF285:
 3838 00a9 5F5F6765 		.ascii	"__get_PRIMASK\000"
 3838      745F5052 
 3838      494D4153 
 3838      4B00
 3839              	.LASF303:
 3840 00b7 44756D6D 		.ascii	"Dummy_Handler\000"
 3840      795F4861 
 3840      6E646C65 
 3840      7200
 3841              	.LASF301:
 3842 00c5 2E2E2F76 		.ascii	"../variants/same70/startup_same70.c\000"
 3842      61726961 
 3842      6E74732F 
 3842      73616D65 
 3842      37302F73 
 3843              	.LASF247:
 3844 00e9 5F736967 		.ascii	"_signal_buf\000"
 3844      6E616C5F 
 3844      62756600 
 3845              	.LASF55:
 3846 00f5 70666E54 		.ascii	"pfnTC1_Handler\000"
 3846      43315F48 
 3846      616E646C 
 3846      657200
 3847              	.LASF11:
 3848 0104 756E7369 		.ascii	"unsigned int\000"
 3848      676E6564 
 3848      20696E74 
 3848      00
 3849              	.LASF137:
 3850 0111 4954434D 		.ascii	"ITCMCR\000"
 3850      435200
 3851              	.LASF14:
 3852 0118 75696E74 		.ascii	"uint32_t\000"
 3852      33325F74 
ARM GAS  /tmp/ccNltSB9.s 			page 97


 3852      00
 3853              	.LASF80:
 3854 0121 70666E54 		.ascii	"pfnTC8_Handler\000"
 3854      43385F48 
 3854      616E646C 
 3854      657200
 3855              	.LASF139:
 3856 0130 41484250 		.ascii	"AHBPCR\000"
 3856      435200
 3857              	.LASF126:
 3858 0137 49434941 		.ascii	"ICIALLU\000"
 3858      4C4C5500 
 3859              	.LASF191:
 3860 013f 5F6C6266 		.ascii	"_lbfsize\000"
 3860      73697A65 
 3860      00
 3861              	.LASF189:
 3862 0148 5F666C61 		.ascii	"_flags\000"
 3862      677300
 3863              	.LASF116:
 3864 014f 43435349 		.ascii	"CCSIDR\000"
 3864      445200
 3865              	.LASF5:
 3866 0156 5F5F696E 		.ascii	"__int32_t\000"
 3866      7433325F 
 3866      7400
 3867              	.LASF138:
 3868 0160 4454434D 		.ascii	"DTCMCR\000"
 3868      435200
 3869              	.LASF206:
 3870 0167 5F657272 		.ascii	"_errno\000"
 3870      6E6F00
 3871              	.LASF270:
 3872 016e 5F737265 		.ascii	"_srelocate\000"
 3872      6C6F6361 
 3872      746500
 3873              	.LASF291:
 3874 0179 5F5F4953 		.ascii	"__ISB\000"
 3874      4200
 3875              	.LASF147:
 3876 017f 5744545F 		.ascii	"WDT_CR\000"
 3876      435200
 3877              	.LASF2:
 3878 0186 73686F72 		.ascii	"short int\000"
 3878      7420696E 
 3878      7400
 3879              	.LASF203:
 3880 0190 5F6D6273 		.ascii	"_mbstate\000"
 3880      74617465 
 3880      00
 3881              	.LASF290:
 3882 0199 5F5F4453 		.ascii	"__DSB\000"
 3882      4200
 3883              	.LASF284:
 3884 019f 6370755F 		.ascii	"cpu_irq_save\000"
 3884      6972715F 
 3884      73617665 
ARM GAS  /tmp/ccNltSB9.s 			page 98


 3884      00
 3885              	.LASF193:
 3886 01ac 5F726561 		.ascii	"_read\000"
 3886      6400
 3887              	.LASF160:
 3888 01b2 5F5F554C 		.ascii	"__ULong\000"
 3888      6F6E6700 
 3889              	.LASF249:
 3890 01ba 5F6D6272 		.ascii	"_mbrlen_state\000"
 3890      6C656E5F 
 3890      73746174 
 3890      6500
 3891              	.LASF89:
 3892 01c8 70666E58 		.ascii	"pfnXDMAC_Handler\000"
 3892      444D4143 
 3892      5F48616E 
 3892      646C6572 
 3892      00
 3893              	.LASF208:
 3894 01d9 5F737464 		.ascii	"_stdout\000"
 3894      6F757400 
 3895              	.LASF152:
 3896 01e1 5F66706F 		.ascii	"_fpos_t\000"
 3896      735F7400 
 3897              	.LASF281:
 3898 01e9 6370755F 		.ascii	"cpu_irq_restore\000"
 3898      6972715F 
 3898      72657374 
 3898      6F726500 
 3899              	.LASF184:
 3900 01f9 5F666E73 		.ascii	"_fns\000"
 3900      00
 3901              	.LASF95:
 3902 01fe 44657669 		.ascii	"DeviceVectors\000"
 3902      63655665 
 3902      63746F72 
 3902      7300
 3903              	.LASF192:
 3904 020c 5F636F6F 		.ascii	"_cookie\000"
 3904      6B696500 
 3905              	.LASF78:
 3906 0214 70666E54 		.ascii	"pfnTC6_Handler\000"
 3906      43365F48 
 3906      616E646C 
 3906      657200
 3907              	.LASF149:
 3908 0223 5744545F 		.ascii	"WDT_SR\000"
 3908      535200
 3909              	.LASF105:
 3910 022a 44465352 		.ascii	"DFSR\000"
 3910      00
 3911              	.LASF262:
 3912 022f 675F696E 		.ascii	"g_interrupt_enabled\000"
 3912      74657272 
 3912      7570745F 
 3912      656E6162 
 3912      6C656400 
ARM GAS  /tmp/ccNltSB9.s 			page 99


 3913              	.LASF162:
 3914 0243 5F426967 		.ascii	"_Bigint\000"
 3914      696E7400 
 3915              	.LASF23:
 3916 024b 70666E52 		.ascii	"pfnReserved2_Handler\000"
 3916      65736572 
 3916      76656432 
 3916      5F48616E 
 3916      646C6572 
 3917              	.LASF174:
 3918 0260 5F5F746D 		.ascii	"__tm_wday\000"
 3918      5F776461 
 3918      7900
 3919              	.LASF74:
 3920 026a 70666E51 		.ascii	"pfnQSPI_Handler\000"
 3920      5350495F 
 3920      48616E64 
 3920      6C657200 
 3921              	.LASF216:
 3922 027a 5F726573 		.ascii	"_result\000"
 3922      756C7400 
 3923              	.LASF283:
 3924 0282 6370755F 		.ascii	"cpu_irq_is_enabled_flags\000"
 3924      6972715F 
 3924      69735F65 
 3924      6E61626C 
 3924      65645F66 
 3925              	.LASF109:
 3926 029b 49445F50 		.ascii	"ID_PFR\000"
 3926      465200
 3927              	.LASF170:
 3928 02a2 5F5F746D 		.ascii	"__tm_hour\000"
 3928      5F686F75 
 3928      7200
 3929              	.LASF48:
 3930 02ac 70666E50 		.ascii	"pfnPIOE_Handler\000"
 3930      494F455F 
 3930      48616E64 
 3930      6C657200 
 3931              	.LASF156:
 3932 02bc 5F5F636F 		.ascii	"__count\000"
 3932      756E7400 
 3933              	.LASF266:
 3934 02c4 666C6F61 		.ascii	"float\000"
 3934      7400
 3935              	.LASF59:
 3936 02ca 70666E54 		.ascii	"pfnTC5_Handler\000"
 3936      43355F48 
 3936      616E646C 
 3936      657200
 3937              	.LASF232:
 3938 02d9 5F72616E 		.ascii	"_rand48\000"
 3938      64343800 
 3939              	.LASF258:
 3940 02e1 5F696D70 		.ascii	"_impure_ptr\000"
 3940      7572655F 
 3940      70747200 
ARM GAS  /tmp/ccNltSB9.s 			page 100


 3941              	.LASF255:
 3942 02ed 5F6E6578 		.ascii	"_nextf\000"
 3942      746600
 3943              	.LASF53:
 3944 02f4 70666E53 		.ascii	"pfnSSC_Handler\000"
 3944      53435F48 
 3944      616E646C 
 3944      657200
 3945              	.LASF251:
 3946 0303 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 3946      72746F77 
 3946      63735F73 
 3946      74617465 
 3946      00
 3947              	.LASF286:
 3948 0314 72657375 		.ascii	"result\000"
 3948      6C7400
 3949              	.LASF297:
 3950 031b 73797354 		.ascii	"sysTickHook\000"
 3950      69636B48 
 3950      6F6F6B00 
 3951              	.LASF275:
 3952 0327 65786365 		.ascii	"exception_table\000"
 3952      7074696F 
 3952      6E5F7461 
 3952      626C6500 
 3953              	.LASF10:
 3954 0337 6C6F6E67 		.ascii	"long long unsigned int\000"
 3954      206C6F6E 
 3954      6720756E 
 3954      7369676E 
 3954      65642069 
 3955              	.LASF111:
 3956 034e 49445F41 		.ascii	"ID_AFR\000"
 3956      465200
 3957              	.LASF238:
 3958 0355 5F617363 		.ascii	"_asctime_buf\000"
 3958      74696D65 
 3958      5F627566 
 3958      00
 3959              	.LASF188:
 3960 0362 5F5F7346 		.ascii	"__sFILE\000"
 3960      494C4500 
 3961              	.LASF166:
 3962 036a 5F776473 		.ascii	"_wds\000"
 3962      00
 3963              	.LASF30:
 3964 036f 70666E53 		.ascii	"pfnSysTick_Handler\000"
 3964      79735469 
 3964      636B5F48 
 3964      616E646C 
 3964      657200
 3965              	.LASF128:
 3966 0382 4943494D 		.ascii	"ICIMVAU\000"
 3966      56415500 
 3967              	.LASF46:
 3968 038a 70666E55 		.ascii	"pfnUSART2_Handler\000"
ARM GAS  /tmp/ccNltSB9.s 			page 101


 3968      53415254 
 3968      325F4861 
 3968      6E646C65 
 3968      7200
 3969              	.LASF51:
 3970 039c 70666E54 		.ascii	"pfnTWIHS1_Handler\000"
 3970      57494853 
 3970      315F4861 
 3970      6E646C65 
 3970      7200
 3971              	.LASF228:
 3972 03ae 5F5F4649 		.ascii	"__FILE\000"
 3972      4C4500
 3973              	.LASF141:
 3974 03b5 41484253 		.ascii	"AHBSCR\000"
 3974      435200
 3975              	.LASF200:
 3976 03bc 5F6F6666 		.ascii	"_offset\000"
 3976      73657400 
 3977              	.LASF197:
 3978 03c4 5F756275 		.ascii	"_ubuf\000"
 3978      6600
 3979              	.LASF298:
 3980 03ca 7764745F 		.ascii	"wdt_restart\000"
 3980      72657374 
 3980      61727400 
 3981              	.LASF36:
 3982 03d6 70666E50 		.ascii	"pfnPMC_Handler\000"
 3982      4D435F48 
 3982      616E646C 
 3982      657200
 3983              	.LASF211:
 3984 03e5 5F656D65 		.ascii	"_emergency\000"
 3984      7267656E 
 3984      637900
 3985              	.LASF19:
 3986 03f0 70666E4D 		.ascii	"pfnMemManage_Handler\000"
 3986      656D4D61 
 3986      6E616765 
 3986      5F48616E 
 3986      646C6572 
 3987              	.LASF265:
 3988 0405 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 3988      6972715F 
 3988      70726576 
 3988      5F696E74 
 3988      65727275 
 3989              	.LASF76:
 3990 0422 70666E55 		.ascii	"pfnUART3_Handler\000"
 3990      41525433 
 3990      5F48616E 
 3990      646C6572 
 3990      00
 3991              	.LASF287:
 3992 0433 5F5F6469 		.ascii	"__disable_irq\000"
 3992      7361626C 
 3992      655F6972 
ARM GAS  /tmp/ccNltSB9.s 			page 102


 3992      7100
 3993              	.LASF168:
 3994 0441 5F5F746D 		.ascii	"__tm_sec\000"
 3994      5F736563 
 3994      00
 3995              	.LASF97:
 3996 044a 43505549 		.ascii	"CPUID\000"
 3996      4400
 3997              	.LASF260:
 3998 0450 7375626F 		.ascii	"suboptarg\000"
 3998      70746172 
 3998      6700
 3999              	.LASF175:
 4000 045a 5F5F746D 		.ascii	"__tm_yday\000"
 4000      5F796461 
 4000      7900
 4001              	.LASF210:
 4002 0464 5F696E63 		.ascii	"_inc\000"
 4002      00
 4003              	.LASF263:
 4004 0469 5F426F6F 		.ascii	"_Bool\000"
 4004      6C00
 4005              	.LASF101:
 4006 046f 53485052 		.ascii	"SHPR\000"
 4006      00
 4007              	.LASF107:
 4008 0474 42464152 		.ascii	"BFAR\000"
 4008      00
 4009              	.LASF42:
 4010 0479 70666E50 		.ascii	"pfnPIOB_Handler\000"
 4010      494F425F 
 4010      48616E64 
 4010      6C657200 
 4011              	.LASF28:
 4012 0489 70666E52 		.ascii	"pfnReserved5_Handler\000"
 4012      65736572 
 4012      76656435 
 4012      5F48616E 
 4012      646C6572 
 4013              	.LASF163:
 4014 049e 5F6E6578 		.ascii	"_next\000"
 4014      7400
 4015              	.LASF71:
 4016 04a4 70666E41 		.ascii	"pfnAFEC1_Handler\000"
 4016      46454331 
 4016      5F48616E 
 4016      646C6572 
 4016      00
 4017              	.LASF63:
 4018 04b5 70666E49 		.ascii	"pfnICM_Handler\000"
 4018      434D5F48 
 4018      616E646C 
 4018      657200
 4019              	.LASF49:
 4020 04c4 70666E48 		.ascii	"pfnHSMCI_Handler\000"
 4020      534D4349 
 4020      5F48616E 
ARM GAS  /tmp/ccNltSB9.s 			page 103


 4020      646C6572 
 4020      00
 4021              	.LASF56:
 4022 04d5 70666E54 		.ascii	"pfnTC2_Handler\000"
 4022      43325F48 
 4022      616E646C 
 4022      657200
 4023              	.LASF81:
 4024 04e4 70666E54 		.ascii	"pfnTC9_Handler\000"
 4024      43395F48 
 4024      616E646C 
 4024      657200
 4025              	.LASF157:
 4026 04f3 5F5F7661 		.ascii	"__value\000"
 4026      6C756500 
 4027              	.LASF88:
 4028 04fb 70666E54 		.ascii	"pfnTRNG_Handler\000"
 4028      524E475F 
 4028      48616E64 
 4028      6C657200 
 4029              	.LASF17:
 4030 050b 70666E4E 		.ascii	"pfnNMI_Handler\000"
 4030      4D495F48 
 4030      616E646C 
 4030      657200
 4031              	.LASF104:
 4032 051a 48465352 		.ascii	"HFSR\000"
 4032      00
 4033              	.LASF130:
 4034 051f 44434953 		.ascii	"DCISW\000"
 4034      5700
 4035              	.LASF253:
 4036 0525 5F776373 		.ascii	"_wcsrtombs_state\000"
 4036      72746F6D 
 4036      62735F73 
 4036      74617465 
 4036      00
 4037              	.LASF243:
 4038 0536 5F6D626C 		.ascii	"_mblen_state\000"
 4038      656E5F73 
 4038      74617465 
 4038      00
 4039              	.LASF227:
 4040 0543 63686172 		.ascii	"char\000"
 4040      00
 4041              	.LASF296:
 4042 0548 4170704D 		.ascii	"AppMain\000"
 4042      61696E00 
 4043              	.LASF161:
 4044 0550 5F446576 		.ascii	"_DeviceVectors\000"
 4044      69636556 
 4044      6563746F 
 4044      727300
 4045              	.LASF171:
 4046 055f 5F5F746D 		.ascii	"__tm_mday\000"
 4046      5F6D6461 
 4046      7900
ARM GAS  /tmp/ccNltSB9.s 			page 104


 4047              	.LASF224:
 4048 0569 5F736967 		.ascii	"_sig_func\000"
 4048      5F66756E 
 4048      6300
 4049              	.LASF250:
 4050 0573 5F6D6272 		.ascii	"_mbrtowc_state\000"
 4050      746F7763 
 4050      5F737461 
 4050      746500
 4051              	.LASF223:
 4052 0582 5F617465 		.ascii	"_atexit0\000"
 4052      78697430 
 4052      00
 4053              	.LASF100:
 4054 058b 41495243 		.ascii	"AIRCR\000"
 4054      5200
 4055              	.LASF268:
 4056 0591 5F736669 		.ascii	"_sfixed\000"
 4056      78656400 
 4057              	.LASF302:
 4058 0599 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70_RTOS"
 4058      652F746F 
 4058      72626A6F 
 4058      726E2F65 
 4058      636C6970 
 4059 05cc 00       		.ascii	"\000"
 4060              	.LASF129:
 4061 05cd 4443494D 		.ascii	"DCIMVAU\000"
 4061      56415500 
 4062              	.LASF110:
 4063 05d5 49445F44 		.ascii	"ID_DFR\000"
 4063      465200
 4064              	.LASF21:
 4065 05dc 70666E55 		.ascii	"pfnUsageFault_Handler\000"
 4065      73616765 
 4065      4661756C 
 4065      745F4861 
 4065      6E646C65 
 4066              	.LASF217:
 4067 05f2 5F726573 		.ascii	"_result_k\000"
 4067      756C745F 
 4067      6B00
 4068              	.LASF16:
 4069 05fc 70666E52 		.ascii	"pfnReset_Handler\000"
 4069      65736574 
 4069      5F48616E 
 4069      646C6572 
 4069      00
 4070              	.LASF15:
 4071 060d 70765374 		.ascii	"pvStack\000"
 4071      61636B00 
 4072              	.LASF271:
 4073 0615 5F657265 		.ascii	"_erelocate\000"
 4073      6C6F6361 
 4073      746500
 4074              	.LASF79:
 4075 0620 70666E54 		.ascii	"pfnTC7_Handler\000"
ARM GAS  /tmp/ccNltSB9.s 			page 105


 4075      43375F48 
 4075      616E646C 
 4075      657200
 4076              	.LASF154:
 4077 062f 5F5F7763 		.ascii	"__wch\000"
 4077      6800
 4078              	.LASF12:
 4079 0635 75696E74 		.ascii	"uint8_t\000"
 4079      385F7400 
 4080              	.LASF38:
 4081 063d 70666E55 		.ascii	"pfnUART0_Handler\000"
 4081      41525430 
 4081      5F48616E 
 4081      646C6572 
 4081      00
 4082              	.LASF196:
 4083 064e 5F636C6F 		.ascii	"_close\000"
 4083      736500
 4084              	.LASF24:
 4085 0655 70666E52 		.ascii	"pfnReserved3_Handler\000"
 4085      65736572 
 4085      76656433 
 4085      5F48616E 
 4085      646C6572 
 4086              	.LASF214:
 4087 066a 5F5F7364 		.ascii	"__sdidinit\000"
 4087      6964696E 
 4087      697400
 4088              	.LASF279:
 4089 0675 76417070 		.ascii	"vApplicationTickHook\000"
 4089      6C696361 
 4089      74696F6E 
 4089      5469636B 
 4089      486F6F6B 
 4090              	.LASF274:
 4091 068a 5F657374 		.ascii	"_estack\000"
 4091      61636B00 
 4092              	.LASF34:
 4093 0692 70666E52 		.ascii	"pfnRTT_Handler\000"
 4093      54545F48 
 4093      616E646C 
 4093      657200
 4094              	.LASF140:
 4095 06a1 43414352 		.ascii	"CACR\000"
 4095      00
 4096              	.LASF112:
 4097 06a6 49445F4D 		.ascii	"ID_MFR\000"
 4097      465200
 4098              	.LASF207:
 4099 06ad 5F737464 		.ascii	"_stdin\000"
 4099      696E00
 4100              	.LASF240:
 4101 06b4 5F67616D 		.ascii	"_gamma_signgam\000"
 4101      6D615F73 
 4101      69676E67 
 4101      616D00
 4102              	.LASF135:
ARM GAS  /tmp/ccNltSB9.s 			page 106


 4103 06c3 44434349 		.ascii	"DCCISW\000"
 4103      535700
 4104              	.LASF117:
 4105 06ca 43535345 		.ascii	"CSSELR\000"
 4105      4C5200
 4106              	.LASF9:
 4107 06d1 6C6F6E67 		.ascii	"long long int\000"
 4107      206C6F6E 
 4107      6720696E 
 4107      7400
 4108              	.LASF134:
 4109 06df 44434349 		.ascii	"DCCIMVAC\000"
 4109      4D564143 
 4109      00
 4110              	.LASF186:
 4111 06e8 5F626173 		.ascii	"_base\000"
 4111      6500
 4112              	.LASF70:
 4113 06ee 70666E47 		.ascii	"pfnGMAC_Handler\000"
 4113      4D41435F 
 4113      48616E64 
 4113      6C657200 
 4114              	.LASF219:
 4115 06fe 5F667265 		.ascii	"_freelist\000"
 4115      656C6973 
 4115      7400
 4116              	.LASF234:
 4117 0708 5F6D756C 		.ascii	"_mult\000"
 4117      7400
 4118              	.LASF132:
 4119 070e 4443434D 		.ascii	"DCCMVAC\000"
 4119      56414300 
 4120              	.LASF235:
 4121 0716 5F616464 		.ascii	"_add\000"
 4121      00
 4122              	.LASF103:
 4123 071b 43465352 		.ascii	"CFSR\000"
 4123      00
 4124              	.LASF252:
 4125 0720 5F776372 		.ascii	"_wcrtomb_state\000"
 4125      746F6D62 
 4125      5F737461 
 4125      746500
 4126              	.LASF190:
 4127 072f 5F66696C 		.ascii	"_file\000"
 4127      6500
 4128              	.LASF131:
 4129 0735 4443434D 		.ascii	"DCCMVAU\000"
 4129      56415500 
 4130              	.LASF82:
 4131 073d 70666E54 		.ascii	"pfnTC10_Handler\000"
 4131      4331305F 
 4131      48616E64 
 4131      6C657200 
 4132              	.LASF215:
 4133 074d 5F5F636C 		.ascii	"__cleanup\000"
 4133      65616E75 
ARM GAS  /tmp/ccNltSB9.s 			page 107


 4133      7000
 4134              	.LASF158:
 4135 0757 5F6D6273 		.ascii	"_mbstate_t\000"
 4135      74617465 
 4135      5F7400
 4136              	.LASF72:
 4137 0762 70666E54 		.ascii	"pfnTWIHS2_Handler\000"
 4137      57494853 
 4137      325F4861 
 4137      6E646C65 
 4137      7200
 4138              	.LASF62:
 4139 0774 70666E50 		.ascii	"pfnPWM0_Handler\000"
 4139      574D305F 
 4139      48616E64 
 4139      6C657200 
 4140              	.LASF37:
 4141 0784 70666E45 		.ascii	"pfnEFC_Handler\000"
 4141      46435F48 
 4141      616E646C 
 4141      657200
 4142              	.LASF176:
 4143 0793 5F5F746D 		.ascii	"__tm_isdst\000"
 4143      5F697364 
 4143      737400
 4144              	.LASF183:
 4145 079e 5F696E64 		.ascii	"_ind\000"
 4145      00
 4146              	.LASF33:
 4147 07a3 70666E52 		.ascii	"pfnRTC_Handler\000"
 4147      54435F48 
 4147      616E646C 
 4147      657200
 4148              	.LASF87:
 4149 07b2 70666E41 		.ascii	"pfnAES_Handler\000"
 4149      45535F48 
 4149      616E646C 
 4149      657200
 4150              	.LASF52:
 4151 07c1 70666E53 		.ascii	"pfnSPI0_Handler\000"
 4151      5049305F 
 4151      48616E64 
 4151      6C657200 
 4152              	.LASF77:
 4153 07d1 70666E55 		.ascii	"pfnUART4_Handler\000"
 4153      41525434 
 4153      5F48616E 
 4153      646C6572 
 4153      00
 4154              	.LASF172:
 4155 07e2 5F5F746D 		.ascii	"__tm_mon\000"
 4155      5F6D6F6E 
 4155      00
 4156              	.LASF259:
 4157 07eb 5F676C6F 		.ascii	"_global_impure_ptr\000"
 4157      62616C5F 
 4157      696D7075 
ARM GAS  /tmp/ccNltSB9.s 			page 108


 4157      72655F70 
 4157      747200
 4158              	.LASF41:
 4159 07fe 70666E50 		.ascii	"pfnPIOA_Handler\000"
 4159      494F415F 
 4159      48616E64 
 4159      6C657200 
 4160              	.LASF115:
 4161 080e 434C4944 		.ascii	"CLIDR\000"
 4161      5200
 4162              	.LASF146:
 4163 0814 53797374 		.ascii	"SystemCoreClock\000"
 4163      656D436F 
 4163      7265436C 
 4163      6F636B00 
 4164              	.LASF43:
 4165 0824 70666E50 		.ascii	"pfnPIOC_Handler\000"
 4165      494F435F 
 4165      48616E64 
 4165      6C657200 
 4166              	.LASF194:
 4167 0834 5F777269 		.ascii	"_write\000"
 4167      746500
 4168              	.LASF120:
 4169 083b 53544952 		.ascii	"STIR\000"
 4169      00
 4170              	.LASF7:
 4171 0840 5F5F7569 		.ascii	"__uint32_t\000"
 4171      6E743332 
 4171      5F7400
 4172              	.LASF60:
 4173 084b 70666E41 		.ascii	"pfnAFEC0_Handler\000"
 4173      46454330 
 4173      5F48616E 
 4173      646C6572 
 4173      00
 4174              	.LASF241:
 4175 085c 5F72616E 		.ascii	"_rand_next\000"
 4175      645F6E65 
 4175      787400
 4176              	.LASF57:
 4177 0867 70666E54 		.ascii	"pfnTC3_Handler\000"
 4177      43335F48 
 4177      616E646C 
 4177      657200
 4178              	.LASF106:
 4179 0876 4D4D4641 		.ascii	"MMFAR\000"
 4179      5200
 4180              	.LASF182:
 4181 087c 5F617465 		.ascii	"_atexit\000"
 4181      78697400 
 4182              	.LASF277:
 4183 0884 70446573 		.ascii	"pDest\000"
 4183      7400
 4184              	.LASF114:
 4185 088a 52455345 		.ascii	"RESERVED0\000"
 4185      52564544 
ARM GAS  /tmp/ccNltSB9.s 			page 109


 4185      3000
 4186              	.LASF102:
 4187 0894 53484353 		.ascii	"SHCSR\000"
 4187      5200
 4188              	.LASF119:
 4189 089a 52455345 		.ascii	"RESERVED3\000"
 4189      52564544 
 4189      3300
 4190              	.LASF121:
 4191 08a4 52455345 		.ascii	"RESERVED4\000"
 4191      52564544 
 4191      3400
 4192              	.LASF125:
 4193 08ae 52455345 		.ascii	"RESERVED5\000"
 4193      52564544 
 4193      3500
 4194              	.LASF127:
 4195 08b8 52455345 		.ascii	"RESERVED6\000"
 4195      52564544 
 4195      3600
 4196              	.LASF143:
 4197 08c2 41424653 		.ascii	"ABFSR\000"
 4197      5200
 4198              	.LASF142:
 4199 08c8 52455345 		.ascii	"RESERVED8\000"
 4199      52564544 
 4199      3800
 4200              	.LASF90:
 4201 08d2 70666E49 		.ascii	"pfnISI_Handler\000"
 4201      53495F48 
 4201      616E646C 
 4201      657200
 4202              	.LASF276:
 4203 08e1 70537263 		.ascii	"pSrc\000"
 4203      00
 4204              	.LASF6:
 4205 08e6 6C6F6E67 		.ascii	"long int\000"
 4205      20696E74 
 4205      00
 4206              	.LASF44:
 4207 08ef 70666E55 		.ascii	"pfnUSART0_Handler\000"
 4207      53415254 
 4207      305F4861 
 4207      6E646C65 
 4207      7200
 4208              	.LASF145:
 4209 0901 49544D5F 		.ascii	"ITM_RxBuffer\000"
 4209      52784275 
 4209      66666572 
 4209      00
 4210              	.LASF288:
 4211 090e 5F5F656E 		.ascii	"__enable_irq\000"
 4211      61626C65 
 4211      5F697271 
 4211      00
 4212              	.LASF65:
 4213 091b 70666E55 		.ascii	"pfnUSBHS_Handler\000"
ARM GAS  /tmp/ccNltSB9.s 			page 110


 4213      53424853 
 4213      5F48616E 
 4213      646C6572 
 4213      00
 4214              	.LASF226:
 4215 092c 5F5F7366 		.ascii	"__sf\000"
 4215      00
 4216              	.LASF165:
 4217 0931 5F736967 		.ascii	"_sign\000"
 4217      6E00
 4218              	.LASF261:
 4219 0937 69727166 		.ascii	"irqflags_t\000"
 4219      6C616773 
 4219      5F7400
 4220              	.LASF213:
 4221 0942 5F637572 		.ascii	"_current_locale\000"
 4221      72656E74 
 4221      5F6C6F63 
 4221      616C6500 
 4222              	.LASF201:
 4223 0952 5F646174 		.ascii	"_data\000"
 4223      6100
 4224              	.LASF212:
 4225 0958 5F637572 		.ascii	"_current_category\000"
 4225      72656E74 
 4225      5F636174 
 4225      65676F72 
 4225      7900
 4226              	.LASF155:
 4227 096a 5F5F7763 		.ascii	"__wchb\000"
 4227      686200
 4228              	.LASF27:
 4229 0971 70666E44 		.ascii	"pfnDebugMon_Handler\000"
 4229      65627567 
 4229      4D6F6E5F 
 4229      48616E64 
 4229      6C657200 
 4230              	.LASF67:
 4231 0985 70765265 		.ascii	"pvReserved36\000"
 4231      73657276 
 4231      65643336 
 4231      00
 4232              	.LASF173:
 4233 0992 5F5F746D 		.ascii	"__tm_year\000"
 4233      5F796561 
 4233      7200
 4234              	.LASF69:
 4235 099c 70765265 		.ascii	"pvReserved38\000"
 4235      73657276 
 4235      65643338 
 4235      00
 4236              	.LASF177:
 4237 09a9 5F6F6E5F 		.ascii	"_on_exit_args\000"
 4237      65786974 
 4237      5F617267 
 4237      7300
 4238              	.LASF289:
ARM GAS  /tmp/ccNltSB9.s 			page 111


 4239 09b7 5F5F444D 		.ascii	"__DMB\000"
 4239      4200
 4240              	.LASF218:
 4241 09bd 5F703573 		.ascii	"_p5s\000"
 4241      00
 4242              	.LASF92:
 4243 09c2 70765265 		.ascii	"pvReserved61\000"
 4243      73657276 
 4243      65643631 
 4243      00
 4244              	.LASF239:
 4245 09cf 5F6C6F63 		.ascii	"_localtime_buf\000"
 4245      616C7469 
 4245      6D655F62 
 4245      756600
 4246              	.LASF257:
 4247 09de 5F756E75 		.ascii	"_unused\000"
 4247      73656400 
 4248              	.LASF4:
 4249 09e6 5F5F7569 		.ascii	"__uint8_t\000"
 4249      6E74385F 
 4249      7400
 4250              	.LASF39:
 4251 09f0 70666E55 		.ascii	"pfnUART1_Handler\000"
 4251      41525431 
 4251      5F48616E 
 4251      646C6572 
 4251      00
 4252              	.LASF222:
 4253 0a01 5F6E6577 		.ascii	"_new\000"
 4253      00
 4254              	.LASF144:
 4255 0a06 5343425F 		.ascii	"SCB_Type\000"
 4255      54797065 
 4255      00
 4256              	.LASF25:
 4257 0a0f 70666E52 		.ascii	"pfnReserved4_Handler\000"
 4257      65736572 
 4257      76656434 
 4257      5F48616E 
 4257      646C6572 
 4258              	.LASF220:
 4259 0a24 5F637674 		.ascii	"_cvtlen\000"
 4259      6C656E00 
 4260              	.LASF164:
 4261 0a2c 5F6D6178 		.ascii	"_maxwds\000"
 4261      77647300 
 4262              	.LASF246:
 4263 0a34 5F6C3634 		.ascii	"_l64a_buf\000"
 4263      615F6275 
 4263      6600
 4264              	.LASF269:
 4265 0a3e 5F657465 		.ascii	"_etext\000"
 4265      787400
 4266              	.LASF293:
 4267 0a45 55726765 		.ascii	"UrgentInit\000"
 4267      6E74496E 
ARM GAS  /tmp/ccNltSB9.s 			page 112


 4267      697400
 4268              	.LASF66:
 4269 0a50 70666E4D 		.ascii	"pfnMCAN0_Handler\000"
 4269      43414E30 
 4269      5F48616E 
 4269      646C6572 
 4269      00
 4270              	.LASF18:
 4271 0a61 70666E48 		.ascii	"pfnHardFault_Handler\000"
 4271      61726446 
 4271      61756C74 
 4271      5F48616E 
 4271      646C6572 
 4272              	.LASF99:
 4273 0a76 56544F52 		.ascii	"VTOR\000"
 4273      00
 4274              	.LASF199:
 4275 0a7b 5F626C6B 		.ascii	"_blksize\000"
 4275      73697A65 
 4275      00
 4276              	.LASF167:
 4277 0a84 5F5F746D 		.ascii	"__tm\000"
 4277      00
 4278              	.LASF148:
 4279 0a89 5744545F 		.ascii	"WDT_MR\000"
 4279      4D5200
 4280              	.LASF295:
 4281 0a90 696E6974 		.ascii	"init\000"
 4281      00
 4282              	.LASF202:
 4283 0a95 5F6C6F63 		.ascii	"_lock\000"
 4283      6B00
 4284              	.LASF96:
 4285 0a9b 73697A65 		.ascii	"sizetype\000"
 4285      74797065 
 4285      00
 4286              	.LASF98:
 4287 0aa4 49435352 		.ascii	"ICSR\000"
 4287      00
 4288              	.LASF54:
 4289 0aa9 70666E54 		.ascii	"pfnTC0_Handler\000"
 4289      43305F48 
 4289      616E646C 
 4289      657200
 4290              	.LASF8:
 4291 0ab8 6C6F6E67 		.ascii	"long unsigned int\000"
 4291      20756E73 
 4291      69676E65 
 4291      6420696E 
 4291      7400
 4292              	.LASF264:
 4293 0aca 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 4293      6972715F 
 4293      63726974 
 4293      6963616C 
 4293      5F736563 
 4294              	.LASF230:
ARM GAS  /tmp/ccNltSB9.s 			page 113


 4295 0aeb 5F6E696F 		.ascii	"_niobs\000"
 4295      627300
 4296              	.LASF153:
 4297 0af2 77696E74 		.ascii	"wint_t\000"
 4297      5F7400
 4298              	.LASF13:
 4299 0af9 696E7433 		.ascii	"int32_t\000"
 4299      325F7400 
 4300              	.LASF32:
 4301 0b01 70666E52 		.ascii	"pfnRSTC_Handler\000"
 4301      5354435F 
 4301      48616E64 
 4301      6C657200 
 4302              	.LASF179:
 4303 0b11 5F64736F 		.ascii	"_dso_handle\000"
 4303      5F68616E 
 4303      646C6500 
 4304              	.LASF83:
 4305 0b1d 70666E54 		.ascii	"pfnTC11_Handler\000"
 4305      4331315F 
 4305      48616E64 
 4305      6C657200 
 4306              	.LASF273:
 4307 0b2d 5F657A65 		.ascii	"_ezero\000"
 4307      726F00
 4308              	.LASF20:
 4309 0b34 70666E42 		.ascii	"pfnBusFault_Handler\000"
 4309      75734661 
 4309      756C745F 
 4309      48616E64 
 4309      6C657200 
 4310              	.LASF221:
 4311 0b48 5F637674 		.ascii	"_cvtbuf\000"
 4311      62756600 
 4312              	.LASF1:
 4313 0b50 756E7369 		.ascii	"unsigned char\000"
 4313      676E6564 
 4313      20636861 
 4313      7200
 4314              	.LASF31:
 4315 0b5e 70666E53 		.ascii	"pfnSUPC_Handler\000"
 4315      5550435F 
 4315      48616E64 
 4315      6C657200 
 4316              	.LASF280:
 4317 0b6e 6670755F 		.ascii	"fpu_enable\000"
 4317      656E6162 
 4317      6C6500
 4318              	.LASF150:
 4319 0b79 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 4319      4B5F5245 
 4319      43555253 
 4319      4956455F 
 4319      5400
 4320              	.LASF40:
 4321 0b8b 70765265 		.ascii	"pvReserved9\000"
 4321      73657276 
ARM GAS  /tmp/ccNltSB9.s 			page 114


 4321      65643900 
 4322              	.LASF84:
 4323 0b97 70765265 		.ascii	"pvReserved53\000"
 4323      73657276 
 4323      65643533 
 4323      00
 4324              	.LASF85:
 4325 0ba4 70765265 		.ascii	"pvReserved54\000"
 4325      73657276 
 4325      65643534 
 4325      00
 4326              	.LASF86:
 4327 0bb1 70765265 		.ascii	"pvReserved55\000"
 4327      73657276 
 4327      65643535 
 4327      00
 4328              	.LASF300:
 4329 0bbe 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 4329      43393920 
 4329      362E332E 
 4329      31203230 
 4329      31373036 
 4330 0bf1 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 4330      76352D64 
 4330      3136202D 
 4330      6D666C6F 
 4330      61742D61 
 4331 0c24 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 4331      6E2D7365 
 4331      6374696F 
 4331      6E73202D 
 4331      66646174 
 4332 0c57 6F6E7374 		.ascii	"onstant\000"
 4332      616E7400 
 4333              	.LASF185:
 4334 0c5f 5F5F7362 		.ascii	"__sbuf\000"
 4334      756600
 4335              	.LASF229:
 4336 0c66 5F676C75 		.ascii	"_glue\000"
 4336      6500
 4337              	.LASF22:
 4338 0c6c 70666E52 		.ascii	"pfnReserved1_Handler\000"
 4338      65736572 
 4338      76656431 
 4338      5F48616E 
 4338      646C6572 
 4339              	.LASF225:
 4340 0c81 5F5F7367 		.ascii	"__sglue\000"
 4340      6C756500 
 4341              	.LASF73:
 4342 0c89 70666E53 		.ascii	"pfnSPI1_Handler\000"
 4342      5049315F 
 4342      48616E64 
 4342      6C657200 
 4343              	.LASF237:
 4344 0c99 5F737472 		.ascii	"_strtok_last\000"
 4344      746F6B5F 
ARM GAS  /tmp/ccNltSB9.s 			page 115


 4344      6C617374 
 4344      00
 4345              	.LASF244:
 4346 0ca6 5F6D6274 		.ascii	"_mbtowc_state\000"
 4346      6F77635F 
 4346      73746174 
 4346      6500
 4347              	.LASF64:
 4348 0cb4 70666E41 		.ascii	"pfnACC_Handler\000"
 4348      43435F48 
 4348      616E646C 
 4348      657200
 4349              	.LASF178:
 4350 0cc3 5F666E61 		.ascii	"_fnargs\000"
 4350      72677300 
 4351              	.LASF26:
 4352 0ccb 70666E53 		.ascii	"pfnSVC_Handler\000"
 4352      56435F48 
 4352      616E646C 
 4352      657200
 4353              	.LASF0:
 4354 0cda 7369676E 		.ascii	"signed char\000"
 4354      65642063 
 4354      68617200 
 4355              	.LASF205:
 4356 0ce6 5F726565 		.ascii	"_reent\000"
 4356      6E7400
 4357              	.LASF3:
 4358 0ced 73686F72 		.ascii	"short unsigned int\000"
 4358      7420756E 
 4358      7369676E 
 4358      65642069 
 4358      6E7400
 4359              	.LASF47:
 4360 0d00 70666E50 		.ascii	"pfnPIOD_Handler\000"
 4360      494F445F 
 4360      48616E64 
 4360      6C657200 
 4361              	.LASF35:
 4362 0d10 70666E57 		.ascii	"pfnWDT_Handler\000"
 4362      44545F48 
 4362      616E646C 
 4362      657200
 4363              	.LASF122:
 4364 0d1f 4D564652 		.ascii	"MVFR0\000"
 4364      3000
 4365              	.LASF123:
 4366 0d25 4D564652 		.ascii	"MVFR1\000"
 4366      3100
 4367              	.LASF124:
 4368 0d2b 4D564652 		.ascii	"MVFR2\000"
 4368      3200
 4369              	.LASF58:
 4370 0d31 70666E54 		.ascii	"pfnTC4_Handler\000"
 4370      43345F48 
 4370      616E646C 
 4370      657200
ARM GAS  /tmp/ccNltSB9.s 			page 116


 4371              	.LASF180:
 4372 0d40 5F666E74 		.ascii	"_fntypes\000"
 4372      79706573 
 4372      00
 4373              	.LASF272:
 4374 0d49 5F737A65 		.ascii	"_szero\000"
 4374      726F00
 4375              	.LASF248:
 4376 0d50 5F676574 		.ascii	"_getdate_err\000"
 4376      64617465 
 4376      5F657272 
 4376      00
 4377              	.LASF187:
 4378 0d5d 5F73697A 		.ascii	"_size\000"
 4378      6500
 4379              	.LASF267:
 4380 0d63 646F7562 		.ascii	"double\000"
 4380      6C6500
 4381              	.LASF151:
 4382 0d6a 5F6F6666 		.ascii	"_off_t\000"
 4382      5F7400
 4383              	.LASF278:
 4384 0d71 52657365 		.ascii	"Reset_Handler\000"
 4384      745F4861 
 4384      6E646C65 
 4384      7200
 4385              	.LASF198:
 4386 0d7f 5F6E6275 		.ascii	"_nbuf\000"
 4386      6600
 4387              	.LASF236:
 4388 0d85 5F756E75 		.ascii	"_unused_rand\000"
 4388      7365645F 
 4388      72616E64 
 4388      00
 4389              	.LASF254:
 4390 0d92 5F685F65 		.ascii	"_h_errno\000"
 4390      72726E6F 
 4390      00
 4391              	.LASF136:
 4392 0d9b 52455345 		.ascii	"RESERVED7\000"
 4392      52564544 
 4392      3700
 4393              	.LASF113:
 4394 0da5 49445F49 		.ascii	"ID_ISAR\000"
 4394      53415200 
 4395              	.LASF204:
 4396 0dad 5F666C61 		.ascii	"_flags2\000"
 4396      67733200 
 4397              	.LASF181:
 4398 0db5 5F69735F 		.ascii	"_is_cxa\000"
 4398      63786100 
 4399              	.LASF292:
 4400 0dbd 53797374 		.ascii	"SystemInit\000"
 4400      656D496E 
 4400      697400
 4401              	.LASF169:
 4402 0dc8 5F5F746D 		.ascii	"__tm_min\000"
ARM GAS  /tmp/ccNltSB9.s 			page 117


 4402      5F6D696E 
 4402      00
 4403              	.LASF45:
 4404 0dd1 70666E55 		.ascii	"pfnUSART1_Handler\000"
 4404      53415254 
 4404      315F4861 
 4404      6E646C65 
 4404      7200
 4405              	.LASF233:
 4406 0de3 5F736565 		.ascii	"_seed\000"
 4406      6400
 4407              	.LASF108:
 4408 0de9 41465352 		.ascii	"AFSR\000"
 4408      00
 4409              	.LASF50:
 4410 0dee 70666E54 		.ascii	"pfnTWIHS0_Handler\000"
 4410      57494853 
 4410      305F4861 
 4410      6E646C65 
 4410      7200
 4411              	.LASF61:
 4412 0e00 70666E44 		.ascii	"pfnDACC_Handler\000"
 4412      4143435F 
 4412      48616E64 
 4412      6C657200 
 4413              	.LASF195:
 4414 0e10 5F736565 		.ascii	"_seek\000"
 4414      6B00
 4415              	.LASF209:
 4416 0e16 5F737464 		.ascii	"_stderr\000"
 4416      65727200 
 4417              	.LASF256:
 4418 0e1e 5F6E6D61 		.ascii	"_nmalloc\000"
 4418      6C6C6F63 
 4418      00
 4419              	.LASF231:
 4420 0e27 5F696F62 		.ascii	"_iobs\000"
 4420      7300
 4421              	.LASF94:
 4422 0e2d 70666E52 		.ascii	"pfnRSWDT_Handler\000"
 4422      53574454 
 4422      5F48616E 
 4422      646C6572 
 4422      00
 4423              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
