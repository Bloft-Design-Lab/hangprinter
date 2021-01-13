ARM GAS  /tmp/ccVHQYWs.s 			page 1


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
ARM GAS  /tmp/ccVHQYWs.s 			page 2


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
ARM GAS  /tmp/ccVHQYWs.s 			page 3


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
ARM GAS  /tmp/ccVHQYWs.s 			page 4


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
ARM GAS  /tmp/ccVHQYWs.s 			page 5


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
ARM GAS  /tmp/ccVHQYWs.s 			page 6


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
ARM GAS  /tmp/ccVHQYWs.s 			page 7


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
ARM GAS  /tmp/ccVHQYWs.s 			page 8


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
ARM GAS  /tmp/ccVHQYWs.s 			page 9


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
ARM GAS  /tmp/ccVHQYWs.s 			page 10


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
 155              		.weak	PendSV_Handler
 156              		.thumb_set PendSV_Handler,Dummy_Handler
 157              		.weak	SVC_Handler
 158              		.thumb_set SVC_Handler,Dummy_Handler
 159              		.weak	UsageFault_Handler
 160              		.thumb_set UsageFault_Handler,Dummy_Handler
 161              		.weak	BusFault_Handler
 162              		.thumb_set BusFault_Handler,Dummy_Handler
 163              		.weak	MemManage_Handler
 164              		.thumb_set MemManage_Handler,Dummy_Handler
 165              		.weak	HardFault_Handler
 166              		.thumb_set HardFault_Handler,Dummy_Handler
 167              		.weak	NMI_Handler
 168              		.thumb_set NMI_Handler,Dummy_Handler
 169 0002 00BF     		.section	.text.Reset_Handler,"ax",%progbits
 170              		.align	1
 171              		.p2align 2,,3
 172              		.global	Reset_Handler
 173              		.syntax unified
 174              		.thumb
 175              		.thumb_func
 176              		.fpu fpv5-d16
 177              		.type	Reset_Handler, %function
 178              	Reset_Handler:
 179              	.LFB146:
 329:../variants/same70/startup_same70.c **** 	uint32_t *pSrc, *pDest;
 180              		.loc 1 329 0
 181              		.cfi_startproc
 182              		@ args = 0, pretend = 0, frame = 0
 183              		@ frame_needed = 0, uses_anonymous_args = 0
 184              	.LVL0:
 336:../variants/same70/startup_same70.c **** 		for (; pDest < &_erelocate;) {
 185              		.loc 1 336 0
 186 0000 2F49     		ldr	r1, .L18
 187 0002 304A     		ldr	r2, .L18+4
 188 0004 9142     		cmp	r1, r2
 329:../variants/same70/startup_same70.c **** 	uint32_t *pSrc, *pDest;
 189              		.loc 1 329 0
ARM GAS  /tmp/ccVHQYWs.s 			page 11


 190 0006 38B5     		push	{r3, r4, r5, lr}
 191              		.cfi_def_cfa_offset 16
 192              		.cfi_offset 3, -16
 193              		.cfi_offset 4, -12
 194              		.cfi_offset 5, -8
 195              		.cfi_offset 14, -4
 336:../variants/same70/startup_same70.c **** 		for (; pDest < &_erelocate;) {
 196              		.loc 1 336 0
 197 0008 0ED0     		beq	.L7
 337:../variants/same70/startup_same70.c **** 			*pDest++ = *pSrc++;
 198              		.loc 1 337 0
 199 000a 2F48     		ldr	r0, .L18+8
 200 000c 8242     		cmp	r2, r0
 201 000e 0BD2     		bcs	.L7
 202 0010 D343     		mvns	r3, r2
 203 0012 0344     		add	r3, r3, r0
 204 0014 23F00303 		bic	r3, r3, #3
 205 0018 0433     		adds	r3, r3, #4
 206 001a 1344     		add	r3, r3, r2
 207              	.LVL1:
 208              	.L8:
 338:../variants/same70/startup_same70.c **** 		}
 209              		.loc 1 338 0
 210 001c 51F8040B 		ldr	r0, [r1], #4
 211              	.LVL2:
 212 0020 42F8040B 		str	r0, [r2], #4
 213              	.LVL3:
 337:../variants/same70/startup_same70.c **** 			*pDest++ = *pSrc++;
 214              		.loc 1 337 0
 215 0024 9A42     		cmp	r2, r3
 216 0026 F9D1     		bne	.L8
 217              	.LVL4:
 218              	.L7:
 343:../variants/same70/startup_same70.c **** 		*pDest++ = 0;
 219              		.loc 1 343 0
 220 0028 284A     		ldr	r2, .L18+12
 221 002a 2949     		ldr	r1, .L18+16
 222 002c 8A42     		cmp	r2, r1
 223 002e 0AD2     		bcs	.L6
 224 0030 D343     		mvns	r3, r2
 344:../variants/same70/startup_same70.c **** 	}
 225              		.loc 1 344 0
 226 0032 0020     		movs	r0, #0
 227 0034 0B44     		add	r3, r3, r1
 228 0036 23F00303 		bic	r3, r3, #3
 229 003a 0433     		adds	r3, r3, #4
 230 003c 1344     		add	r3, r3, r2
 231              	.LVL5:
 232              	.L11:
 233 003e 42F8040B 		str	r0, [r2], #4
 234              	.LVL6:
 343:../variants/same70/startup_same70.c **** 		*pDest++ = 0;
 235              		.loc 1 343 0
 236 0042 9A42     		cmp	r2, r3
 237 0044 FBD1     		bne	.L11
 238              	.LVL7:
 239              	.L6:
ARM GAS  /tmp/ccVHQYWs.s 			page 12


 349:../variants/same70/startup_same70.c **** 
 240              		.loc 1 349 0
 241 0046 234B     		ldr	r3, .L18+20
 242 0048 234A     		ldr	r2, .L18+24
 243 004a 23F07F03 		bic	r3, r3, #127
 244 004e 9360     		str	r3, [r2, #8]
 245              	.LBB54:
 246              	.LBB55:
 247              	.LBB56:
 248              	.LBB57:
 249              	.LBB58:
 250              	.LBB59:
 251              		.file 2 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h"
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
ARM GAS  /tmp/ccVHQYWs.s 			page 13


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
ARM GAS  /tmp/ccVHQYWs.s 			page 14


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
ARM GAS  /tmp/ccVHQYWs.s 			page 15


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
ARM GAS  /tmp/ccVHQYWs.s 			page 16


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
ARM GAS  /tmp/ccVHQYWs.s 			page 17


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
ARM GAS  /tmp/ccVHQYWs.s 			page 18


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
ARM GAS  /tmp/ccVHQYWs.s 			page 19


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
ARM GAS  /tmp/ccVHQYWs.s 			page 20


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
 462:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the current state of the priority mask bit from the Priority Mask Registe
 463:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 464:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               Priority Mask value
 465:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 466:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_PRIMASK(void)
 467:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 468:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   uint32_t result;
 469:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 470:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __ASM volatile ("MRS %0, primask" : "=r" (result) );
 252              		.loc 2 470 0
 253              		.syntax unified
 254              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 255 0050 EFF31083 		MRS r3, primask
 256              	@ 0 "" 2
 257              	.LVL8:
 258              		.thumb
 259              		.syntax unified
 260              	.LBE59:
 261              	.LBE58:
 262              	.LBB60:
 263              	.LBB61:
 330:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 264              		.loc 2 330 0
 265              		.syntax unified
 266              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 267 0054 72B6     		cpsid i
 268              	@ 0 "" 2
 269              		.thumb
 270              		.syntax unified
 271              	.LBE61:
 272              	.LBE60:
 273              	.LBB62:
 274              	.LBB63:
 275              		.file 3 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h"
   1:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /**************************************************************************//**
   2:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * @file     core_cmInstr.h
   3:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * @brief    CMSIS Cortex-M Core Instruction Access Header File
   4:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * @version  V4.00
   5:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * @date     28. August 2014
ARM GAS  /tmp/ccVHQYWs.s 			page 21


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
  62:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
ARM GAS  /tmp/ccVHQYWs.s 			page 22


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
 119:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
ARM GAS  /tmp/ccVHQYWs.s 			page 23


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
 176:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Reverse bit order of value
ARM GAS  /tmp/ccVHQYWs.s 			page 24


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
 233:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to location
ARM GAS  /tmp/ccVHQYWs.s 			page 25


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
 290:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
ARM GAS  /tmp/ccVHQYWs.s 			page 26


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
 347:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
ARM GAS  /tmp/ccVHQYWs.s 			page 27


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
 404:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
ARM GAS  /tmp/ccVHQYWs.s 			page 28


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
 276              		.loc 3 456 0
 277              		.syntax unified
 278              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 279 0056 BFF35F8F 		dmb
 280              	@ 0 "" 2
ARM GAS  /tmp/ccVHQYWs.s 			page 29


 281              		.thumb
 282              		.syntax unified
 283              	.LBE63:
 284              	.LBE62:
 285              	.LBE57:
 286              	.LBE56:
 287              		.file 4 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h"
   1:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** /**
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
ARM GAS  /tmp/ccVHQYWs.s 			page 30


  51:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** 
  52:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** /** Address for ARM CPACR */
  53:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** #define ADDR_CPACR 0xE000ED88
  54:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** 
  55:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** /** CPACR Register */
  56:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** #define REG_CPACR  (*((volatile uint32_t *)ADDR_CPACR))
  57:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** 
  58:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** /**
  59:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  * \brief Enable FPU
  60:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h ****  */
  61:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** __always_inline static void fpu_enable(void)
  62:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** {
  63:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** 	irqflags_t flags;
  64:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** 	flags = cpu_irq_save();
  65:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/fpu/fpu.h **** 	REG_CPACR |=  (0xFu << 20);
 288              		.loc 4 65 0
 289 005a 2048     		ldr	r0, .L18+28
 290              	.LBB65:
 291              	.LBB64:
 292              		.file 5 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
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
ARM GAS  /tmp/ccVHQYWs.s 			page 31


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
ARM GAS  /tmp/ccVHQYWs.s 			page 32


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
ARM GAS  /tmp/ccVHQYWs.s 			page 33


 152:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** {
 153:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	irqflags_t flags = cpu_irq_is_enabled();
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	cpu_irq_disable();
 293              		.loc 5 154 0
 294 005c 0022     		movs	r2, #0
 295 005e 2049     		ldr	r1, .L18+32
 296 0060 0A70     		strb	r2, [r1]
 297              	.LBE64:
 298              	.LBE65:
 299              		.loc 4 65 0
 300 0062 0268     		ldr	r2, [r0]
 301 0064 42F47002 		orr	r2, r2, #15728640
 302 0068 0260     		str	r2, [r0]
 303              	.LBB66:
 304              	.LBB67:
 445:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 305              		.loc 3 445 0
 306              		.syntax unified
 307              	@ 445 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 308 006a BFF34F8F 		dsb
 309              	@ 0 "" 2
 310              		.thumb
 311              		.syntax unified
 312              	.LBE67:
 313              	.LBE66:
 314              	.LBB68:
 315              	.LBB69:
 434:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 316              		.loc 3 434 0
 317              		.syntax unified
 318              	@ 434 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 319 006e BFF36F8F 		isb
 320              	@ 0 "" 2
 321              		.thumb
 322              		.syntax unified
 323              	.LBE69:
 324              	.LBE68:
 325              	.LBB70:
 326              	.LBB71:
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
 327              		.loc 5 165 0
 328 0072 23B9     		cbnz	r3, .L10
 166:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 		cpu_irq_enable();
 329              		.loc 5 166 0
 330 0074 0123     		movs	r3, #1
 331 0076 0B70     		strb	r3, [r1]
 332              	.LBB72:
ARM GAS  /tmp/ccVHQYWs.s 			page 34


 333              	.LBB73:
 334              		.loc 3 456 0
 335              		.syntax unified
 336              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 337 0078 BFF35F8F 		dmb
 338              	@ 0 "" 2
 339              		.thumb
 340              		.syntax unified
 341              	.LBE73:
 342              	.LBE72:
 343              	.LBB74:
 344              	.LBB75:
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 345              		.loc 2 319 0
 346              		.syntax unified
 347              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 348 007c 62B6     		cpsie i
 349              	@ 0 "" 2
 350              		.thumb
 351              		.syntax unified
 352              	.L10:
 353              	.LBE75:
 354              	.LBE74:
 355              	.LBE71:
 356              	.LBE70:
 357              	.LBE55:
 358              	.LBE54:
 357:../variants/same70/startup_same70.c **** 	UrgentInit();			// initialise anything in the main application that can't wait
 359              		.loc 1 357 0
 360 007e FFF7FEFF 		bl	SystemInit
 361              	.LVL9:
 358:../variants/same70/startup_same70.c **** 	__libc_init_array();	// initialize C library and call C++ constructors for static data
 362              		.loc 1 358 0
 363 0082 FFF7FEFF 		bl	UrgentInit
 364              	.LVL10:
 359:../variants/same70/startup_same70.c **** 	init();					// initialise variant
 365              		.loc 1 359 0
 366 0086 FFF7FEFF 		bl	__libc_init_array
 367              	.LVL11:
 360:../variants/same70/startup_same70.c **** 
 368              		.loc 1 360 0
 369 008a FFF7FEFF 		bl	init
 370              	.LVL12:
 364:../variants/same70/startup_same70.c **** 	{
 371              		.loc 1 364 0
 372 008e 154B     		ldr	r3, .L18+36
 373              	.LVL13:
 374 0090 154A     		ldr	r2, .L18+40
 375 0092 1B68     		ldr	r3, [r3]
 376              	.LVL14:
 377 0094 A2FB0323 		umull	r2, r3, r2, r3
 378              	.LVL15:
 379 0098 9B09     		lsrs	r3, r3, #6
 380              	.LBB76:
 381              	.LBB77:
 382              		.file 6 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
   1:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /**************************************************************************//**
ARM GAS  /tmp/ccVHQYWs.s 			page 35


   2:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  * @file     core_cm7.h
   3:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  * @brief    CMSIS Cortex-M7 Core Peripheral Access Layer Header File
   4:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  * @version  V4.00
   5:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  * @date     01. September 2014
   6:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  *
   7:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  * @note
   8:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  *
   9:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  ******************************************************************************/
  10:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Copyright (c) 2009 - 2014 ARM LIMITED
  11:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  12:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    All rights reserved.
  13:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    Redistribution and use in source and binary forms, with or without
  14:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    modification, are permitted provided that the following conditions are met:
  15:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    - Redistributions of source code must retain the above copyright
  16:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****      notice, this list of conditions and the following disclaimer.
  17:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    - Redistributions in binary form must reproduce the above copyright
  18:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****      notice, this list of conditions and the following disclaimer in the
  19:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****      documentation and/or other materials provided with the distribution.
  20:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    - Neither the name of ARM nor the names of its contributors may be used
  21:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****      to endorse or promote products derived from this software without
  22:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****      specific prior written permission.
  23:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    *
  24:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  25:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  26:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  27:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    ARE DISCLAIMED. IN NO EVENT SHALL COPYRIGHT HOLDERS AND CONTRIBUTORS BE
  28:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
  29:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
  30:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
  31:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
  32:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
  33:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  34:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    POSSIBILITY OF SUCH DAMAGE.
  35:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    ---------------------------------------------------------------------------*/
  36:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  37:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  38:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if defined ( __ICCARM__ )
  39:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  #pragma system_include  /* treat file as system include file for MISRA check */
  40:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
  41:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  42:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #ifndef __CORE_CM7_H_GENERIC
  43:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define __CORE_CM7_H_GENERIC
  44:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  45:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #ifdef __cplusplus
  46:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  extern "C" {
  47:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
  48:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  49:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \page CMSIS_MISRA_Exceptions  MISRA-C:2004 Compliance Exceptions
  50:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   CMSIS violates the following MISRA-C:2004 rules:
  51:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  52:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    \li Required Rule 8.5, object/function definition in header file.<br>
  53:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****      Function definitions in header files are used to allow 'inlining'.
  54:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  55:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    \li Required Rule 18.4, declaration of union type or object of union type: '{...}'.<br>
  56:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****      Unions are used for effective representation of core registers.
  57:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  58:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    \li Advisory Rule 19.7, Function-like macro defined.<br>
ARM GAS  /tmp/ccVHQYWs.s 			page 36


  59:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****      Function-like macros are used to allow more efficient code.
  60:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
  61:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  62:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  63:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*******************************************************************************
  64:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  *                 CMSIS definitions
  65:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  ******************************************************************************/
  66:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup Cortex_M7
  67:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
  68:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
  69:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  70:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*  CMSIS CM7 definitions */
  71:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define __CM7_CMSIS_VERSION_MAIN  (0x04)                                   /*!< [31:16] CMSIS HAL m
  72:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define __CM7_CMSIS_VERSION_SUB   (0x00)                                   /*!< [15:0]  CMSIS HAL s
  73:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define __CM7_CMSIS_VERSION       ((__CM7_CMSIS_VERSION_MAIN << 16) | \
  74:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****                                     __CM7_CMSIS_VERSION_SUB          )     /*!< CMSIS HAL version n
  75:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  76:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define __CORTEX_M                (0x07)                                   /*!< Cortex-M Core      
  77:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  78:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  79:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if   defined ( __CC_ARM )
  80:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __ASM            __asm                                      /*!< asm keyword for ARM Comp
  81:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __INLINE         __inline                                   /*!< inline keyword for ARM C
  82:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __STATIC_INLINE  static __inline
  83:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  84:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __GNUC__ )
  85:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __ASM            __asm                                      /*!< asm keyword for GNU Comp
  86:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __INLINE         inline                                     /*!< inline keyword for GNU C
  87:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __STATIC_INLINE  static inline
  88:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  89:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __ICCARM__ )
  90:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __ASM            __asm                                      /*!< asm keyword for IAR Comp
  91:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __INLINE         inline                                     /*!< inline keyword for IAR C
  92:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __STATIC_INLINE  static inline
  93:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  94:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __TMS470__ )
  95:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __ASM            __asm                                      /*!< asm keyword for TI CCS C
  96:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __STATIC_INLINE  static inline
  97:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  98:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __TASKING__ )
  99:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __ASM            __asm                                      /*!< asm keyword for TASKING 
 100:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __INLINE         inline                                     /*!< inline keyword for TASKI
 101:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __STATIC_INLINE  static inline
 102:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 103:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __CSMC__ )
 104:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __packed
 105:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __ASM            _asm                                      /*!< asm keyword for COSMIC Co
 106:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __INLINE         inline                                    /*use -pc99 on compile line !<
 107:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __STATIC_INLINE  static inline
 108:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 109:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
 110:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 111:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** __FPU_USED indicates whether an FPU is used or not.
 112:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     For this, __FPU_PRESENT has to be checked prior to making use of FPU specific registers and fun
 113:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** */
 114:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if defined ( __CC_ARM )
 115:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #if defined __TARGET_FPU_VFP
ARM GAS  /tmp/ccVHQYWs.s 			page 37


 116:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #if (__FPU_PRESENT == 1)
 117:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       1
 118:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #else
 119:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #warning "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESEN
 120:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       0
 121:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #endif
 122:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #else
 123:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __FPU_USED         0
 124:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 125:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 126:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __GNUC__ )
 127:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #if defined (__VFP_FP__) && !defined(__SOFTFP__)
 128:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #if (__FPU_PRESENT == 1)
 129:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       1
 130:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #else
 131:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #warning "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESEN
 132:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       0
 133:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #endif
 134:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #else
 135:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __FPU_USED         0
 136:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 137:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 138:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __ICCARM__ )
 139:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #if defined __ARMVFP__
 140:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #if (__FPU_PRESENT == 1)
 141:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       1
 142:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #else
 143:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #warning "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESEN
 144:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       0
 145:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #endif
 146:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #else
 147:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __FPU_USED         0
 148:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 149:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 150:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __TMS470__ )
 151:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #if defined __TI_VFP_SUPPORT__
 152:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #if (__FPU_PRESENT == 1)
 153:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       1
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #else
 155:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #warning "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESEN
 156:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       0
 157:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #endif
 158:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #else
 159:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __FPU_USED         0
 160:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 161:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 162:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __TASKING__ )
 163:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #if defined __FPU_VFP__
 164:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #if (__FPU_PRESENT == 1)
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       1
 166:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #else
 167:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #error "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESENT)
 168:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       0
 169:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #endif
 170:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #else
 171:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __FPU_USED         0
 172:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
ARM GAS  /tmp/ccVHQYWs.s 			page 38


 173:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 174:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __CSMC__ )		/* Cosmic */
 175:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #if ( __CSMC__ & 0x400)		// FPU present for parser
 176:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #if (__FPU_PRESENT == 1)
 177:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       1
 178:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #else
 179:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #error "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESENT)
 180:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       0
 181:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #endif
 182:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #else
 183:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __FPU_USED         0
 184:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 185:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
 186:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 187:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #include <stdint.h>                      /* standard types definitions                      */
 188:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #include <core_cmInstr.h>                /* Core Instruction Access                         */
 189:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #include <core_cmFunc.h>                 /* Core Function Access                            */
 190:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #include <core_cmSimd.h>                 /* Compiler specific SIMD Intrinsics               */
 191:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 192:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #ifdef __cplusplus
 193:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
 194:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
 195:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 196:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif /* __CORE_CM7_H_GENERIC */
 197:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 198:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #ifndef __CMSIS_GENERIC
 199:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 200:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #ifndef __CORE_CM7_H_DEPENDANT
 201:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define __CORE_CM7_H_DEPENDANT
 202:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 203:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #ifdef __cplusplus
 204:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  extern "C" {
 205:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
 206:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 207:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* check device defines and use defaults */
 208:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if defined __CHECK_DEVICE_DEFINES
 209:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #ifndef __CM7_REV
 210:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __CM7_REV               0x0000
 211:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #warning "__CM7_REV not defined in device header file; using default!"
 212:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 213:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 214:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #ifndef __FPU_PRESENT
 215:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __FPU_PRESENT             0
 216:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #warning "__FPU_PRESENT not defined in device header file; using default!"
 217:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 218:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 219:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #ifndef __MPU_PRESENT
 220:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __MPU_PRESENT             0
 221:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #warning "__MPU_PRESENT not defined in device header file; using default!"
 222:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 223:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 224:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #ifndef __ICACHE_PRESENT
 225:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __ICACHE_PRESENT          0
 226:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #warning "__ICACHE_PRESENT not defined in device header file; using default!"
 227:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 228:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 229:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #ifndef __DCACHE_PRESENT
ARM GAS  /tmp/ccVHQYWs.s 			page 39


 230:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __DCACHE_PRESENT          0
 231:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #warning "__DCACHE_PRESENT not defined in device header file; using default!"
 232:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 233:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 234:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #ifndef __DTCM_PRESENT
 235:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __DTCM_PRESENT            0
 236:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #warning "__DTCM_PRESENT        not defined in device header file; using default!"
 237:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 238:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 239:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #ifndef __NVIC_PRIO_BITS
 240:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __NVIC_PRIO_BITS          3
 241:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #warning "__NVIC_PRIO_BITS not defined in device header file; using default!"
 242:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 243:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 244:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #ifndef __Vendor_SysTickConfig
 245:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __Vendor_SysTickConfig    0
 246:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #warning "__Vendor_SysTickConfig not defined in device header file; using default!"
 247:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 248:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
 249:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 250:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* IO definitions (access restrictions to peripheral registers) */
 251:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /**
 252:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_glob_defs CMSIS Global Defines
 253:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 254:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     <strong>IO Type Qualifiers</strong> are used
 255:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \li to specify the access to peripheral variables.
 256:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \li for automatic generation of peripheral register debug information.
 257:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** */
 258:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #ifdef __cplusplus
 259:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define   __I     volatile             /*!< Defines 'read only' permissions                 */
 260:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #else
 261:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define   __I     volatile const       /*!< Defines 'read only' permissions                 */
 262:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
 263:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define     __O     volatile             /*!< Defines 'write only' permissions                */
 264:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define     __IO    volatile             /*!< Defines 'read / write' permissions              */
 265:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 266:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group Cortex_M7 */
 267:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 268:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 269:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 270:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*******************************************************************************
 271:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  *                 Register Abstraction
 272:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   Core Register contain:
 273:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core Register
 274:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core NVIC Register
 275:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core SCB Register
 276:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core SysTick Register
 277:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core Debug Register
 278:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core MPU Register
 279:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core FPU Register
 280:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  ******************************************************************************/
 281:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \defgroup CMSIS_core_register Defines and Type Definitions
 282:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief Type definitions and defines for Cortex-M processor based devices.
 283:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** */
 284:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 285:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup    CMSIS_core_register
 286:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup   CMSIS_CORE  Status and Control Registers
ARM GAS  /tmp/ccVHQYWs.s 			page 40


 287:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief  Core Register type definitions.
 288:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
 289:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 290:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Union type to access the Application Program Status Register (APSR).
 292:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 293:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef union
 294:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 295:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   struct
 296:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   {
 297:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if (__CORTEX_M != 0x07)
 298:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t _reserved0:27;              /*!< bit:  0..26  Reserved                           */
 299:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #else
 300:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t _reserved0:16;              /*!< bit:  0..15  Reserved                           */
 301:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t GE:4;                       /*!< bit: 16..19  Greater than or Equal flags        */
 302:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t _reserved1:7;               /*!< bit: 20..26  Reserved                           */
 303:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
 304:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t Q:1;                        /*!< bit:     27  Saturation condition flag          */
 305:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t V:1;                        /*!< bit:     28  Overflow condition code flag       */
 306:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t C:1;                        /*!< bit:     29  Carry condition code flag          */
 307:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t Z:1;                        /*!< bit:     30  Zero condition code flag           */
 308:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t N:1;                        /*!< bit:     31  Negative condition code flag       */
 309:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   } b;                                   /*!< Structure used for bit  access                  */
 310:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   uint32_t w;                            /*!< Type      used for word access                  */
 311:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } APSR_Type;
 312:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 313:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 314:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Union type to access the Interrupt Program Status Register (IPSR).
 315:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 316:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef union
 317:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 318:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   struct
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   {
 320:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t ISR:9;                      /*!< bit:  0.. 8  Exception number                   */
 321:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t _reserved0:23;              /*!< bit:  9..31  Reserved                           */
 322:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   } b;                                   /*!< Structure used for bit  access                  */
 323:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   uint32_t w;                            /*!< Type      used for word access                  */
 324:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } IPSR_Type;
 325:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 326:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 327:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Union type to access the Special-Purpose Program Status Registers (xPSR).
 328:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 329:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef union
 330:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 331:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   struct
 332:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   {
 333:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t ISR:9;                      /*!< bit:  0.. 8  Exception number                   */
 334:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if (__CORTEX_M != 0x07)
 335:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t _reserved0:15;              /*!< bit:  9..23  Reserved                           */
 336:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #else
 337:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t _reserved0:7;               /*!< bit:  9..15  Reserved                           */
 338:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t GE:4;                       /*!< bit: 16..19  Greater than or Equal flags        */
 339:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t _reserved1:4;               /*!< bit: 20..23  Reserved                           */
 340:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
 341:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t T:1;                        /*!< bit:     24  Thumb bit        (read 0)          */
 342:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t IT:2;                       /*!< bit: 25..26  saved IT state   (read 0)          */
 343:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t Q:1;                        /*!< bit:     27  Saturation condition flag          */
ARM GAS  /tmp/ccVHQYWs.s 			page 41


 344:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t V:1;                        /*!< bit:     28  Overflow condition code flag       */
 345:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t C:1;                        /*!< bit:     29  Carry condition code flag          */
 346:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t Z:1;                        /*!< bit:     30  Zero condition code flag           */
 347:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t N:1;                        /*!< bit:     31  Negative condition code flag       */
 348:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   } b;                                   /*!< Structure used for bit  access                  */
 349:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   uint32_t w;                            /*!< Type      used for word access                  */
 350:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } xPSR_Type;
 351:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 352:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 353:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Union type to access the Control Registers (CONTROL).
 354:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 355:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef union
 356:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 357:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   struct
 358:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   {
 359:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t nPRIV:1;                    /*!< bit:      0  Execution privilege in Thread mode */
 360:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t SPSEL:1;                    /*!< bit:      1  Stack to be used                   */
 361:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t FPCA:1;                     /*!< bit:      2  FP extension active flag           */
 362:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t _reserved0:29;              /*!< bit:  3..31  Reserved                           */
 363:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   } b;                                   /*!< Structure used for bit  access                  */
 364:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   uint32_t w;                            /*!< Type      used for word access                  */
 365:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } CONTROL_Type;
 366:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 367:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_CORE */
 368:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 369:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 370:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup    CMSIS_core_register
 371:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup   CMSIS_NVIC  Nested Vectored Interrupt Controller (NVIC)
 372:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the NVIC Registers
 373:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
 374:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 375:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 376:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the Nested Vectored Interrupt Controller (NVIC).
 377:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 378:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
 379:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 380:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ISER[8];                 /*!< Offset: 0x000 (R/W)  Interrupt Set Enable Register   
 381:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED0[24];
 382:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ICER[8];                 /*!< Offset: 0x080 (R/W)  Interrupt Clear Enable Register 
 383:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RSERVED1[24];
 384:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ISPR[8];                 /*!< Offset: 0x100 (R/W)  Interrupt Set Pending Register  
 385:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED2[24];
 386:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ICPR[8];                 /*!< Offset: 0x180 (R/W)  Interrupt Clear Pending Register
 387:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED3[24];
 388:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t IABR[8];                 /*!< Offset: 0x200 (R/W)  Interrupt Active bit Register   
 389:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED4[56];
 390:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint8_t  IP[240];                 /*!< Offset: 0x300 (R/W)  Interrupt Priority Register (8Bi
 391:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED5[644];
 392:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t STIR;                    /*!< Offset: 0xE00 ( /W)  Software Trigger Interrupt Regis
 393:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }  NVIC_Type;
 394:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 395:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Software Triggered Interrupt Register Definitions */
 396:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define NVIC_STIR_INTID_Pos                 0                                          /*!< STIR: I
 397:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define NVIC_STIR_INTID_Msk                (0x1FFUL << NVIC_STIR_INTID_Pos)            /*!< STIR: I
 398:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 399:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_NVIC */
 400:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/ccVHQYWs.s 			page 42


 401:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 402:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
 403:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_SCB     System Control Block (SCB)
 404:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the System Control Block Registers
 405:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
 406:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 407:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 408:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the System Control Block (SCB).
 409:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 410:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
 411:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 412:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CPUID;                   /*!< Offset: 0x000 (R/ )  CPUID Base Register             
 413:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ICSR;                    /*!< Offset: 0x004 (R/W)  Interrupt Control and State Regi
 414:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t VTOR;                    /*!< Offset: 0x008 (R/W)  Vector Table Offset Register    
 415:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t AIRCR;                   /*!< Offset: 0x00C (R/W)  Application Interrupt and Reset 
 416:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t SCR;                     /*!< Offset: 0x010 (R/W)  System Control Register         
 417:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CCR;                     /*!< Offset: 0x014 (R/W)  Configuration Control Register  
 418:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint8_t  SHPR[12];                /*!< Offset: 0x018 (R/W)  System Handlers Priority Registe
 419:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t SHCSR;                   /*!< Offset: 0x024 (R/W)  System Handler Control and State
 420:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CFSR;                    /*!< Offset: 0x028 (R/W)  Configurable Fault Status Regist
 421:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t HFSR;                    /*!< Offset: 0x02C (R/W)  HardFault Status Register       
 422:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t DFSR;                    /*!< Offset: 0x030 (R/W)  Debug Fault Status Register     
 423:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t MMFAR;                   /*!< Offset: 0x034 (R/W)  MemManage Fault Address Register
 424:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t BFAR;                    /*!< Offset: 0x038 (R/W)  BusFault Address Register       
 425:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t AFSR;                    /*!< Offset: 0x03C (R/W)  Auxiliary Fault Status Register 
 426:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t ID_PFR[2];               /*!< Offset: 0x040 (R/ )  Processor Feature Register      
 427:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t ID_DFR;                  /*!< Offset: 0x048 (R/ )  Debug Feature Register          
 428:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t ID_AFR;                  /*!< Offset: 0x04C (R/ )  Auxiliary Feature Register      
 429:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t ID_MFR[4];               /*!< Offset: 0x050 (R/ )  Memory Model Feature Register   
 430:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t ID_ISAR[5];              /*!< Offset: 0x060 (R/ )  Instruction Set Attributes Regis
 431:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED0[1];
 432:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CLIDR;                   /*!< Offset: 0x078 (R/ )  Cache Level ID register         
 433:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CTR;                     /*!< Offset: 0x07C (R/ )  Cache Type register             
 434:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CCSIDR;                  /*!< Offset: 0x080 (R/ )  Cache Size ID Register          
 435:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CSSELR;                  /*!< Offset: 0x084 (R/W)  Cache Size Selection Register   
 436:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CPACR;                   /*!< Offset: 0x088 (R/W)  Coprocessor Access Control Regis
 437:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED3[93];
 438:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t STIR;                    /*!< Offset: 0x200 ( /W)  Software Triggered Interrupt Reg
 439:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED4[15];
 440:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t MVFR0;                   /*!< Offset: 0x240 (R/ )  Media and VFP Feature Register 0
 441:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t MVFR1;                   /*!< Offset: 0x244 (R/ )  Media and VFP Feature Register 1
 442:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t MVFR2;                   /*!< Offset: 0x248 (R/ )  Media and VFP Feature Register 1
 443:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED5[1];
 444:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t ICIALLU;                 /*!< Offset: 0x250 ( /W)  I-Cache Invalidate All to PoU   
 445:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED6[1];
 446:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t ICIMVAU;                 /*!< Offset: 0x258 ( /W)  I-Cache Invalidate by MVA to PoU
 447:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t DCIMVAU;                 /*!< Offset: 0x25C ( /W)  D-Cache Invalidate by MVA to PoC
 448:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t DCISW;                   /*!< Offset: 0x260 ( /W)  D-Cache Invalidate by Set-way   
 449:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t DCCMVAU;                 /*!< Offset: 0x264 ( /W)  D-Cache Clean by MVA to PoU     
 450:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t DCCMVAC;                 /*!< Offset: 0x268 ( /W)  D-Cache Clean by MVA to PoC     
 451:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t DCCSW;                   /*!< Offset: 0x26C ( /W)  D-Cache Clean by Set-way        
 452:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t DCCIMVAC;                /*!< Offset: 0x270 ( /W)  D-Cache Clean and Invalidate by 
 453:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t DCCISW;                  /*!< Offset: 0x274 ( /W)  D-Cache Clean and Invalidate by 
 454:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED7[6];
 455:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ITCMCR;                  /*!< Offset: 0x290 (R/W)  Instruction Tightly-Coupled Memo
 456:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t DTCMCR;                  /*!< Offset: 0x294 (R/W)  Data Tightly-Coupled Memory Cont
 457:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t AHBPCR;                  /*!< Offset: 0x298 (R/W)  AHBP Control Register           
ARM GAS  /tmp/ccVHQYWs.s 			page 43


 458:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CACR;                    /*!< Offset: 0x29C (R/W)  L1 Cache Control Register       
 459:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t AHBSCR;                  /*!< Offset: 0x2A0 (R/W)  AHB Slave Control Register      
 460:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED8[1];
 461:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ABFSR;                   /*!< Offset: 0x2A8 (R/W)  Auxiliary Bus Fault Status Regis
 462:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } SCB_Type;
 463:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 464:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB CPUID Register Definitions */
 465:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_IMPLEMENTER_Pos          24                                             /*!< SCB 
 466:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_IMPLEMENTER_Msk          (0xFFUL << SCB_CPUID_IMPLEMENTER_Pos)          /*!< SCB 
 467:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 468:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_VARIANT_Pos              20                                             /*!< SCB 
 469:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_VARIANT_Msk              (0xFUL << SCB_CPUID_VARIANT_Pos)               /*!< SCB 
 470:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 471:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_ARCHITECTURE_Pos         16                                             /*!< SCB 
 472:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_ARCHITECTURE_Msk         (0xFUL << SCB_CPUID_ARCHITECTURE_Pos)          /*!< SCB 
 473:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 474:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_PARTNO_Pos                4                                             /*!< SCB 
 475:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_PARTNO_Msk               (0xFFFUL << SCB_CPUID_PARTNO_Pos)              /*!< SCB 
 476:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 477:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_REVISION_Pos              0                                             /*!< SCB 
 478:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_REVISION_Msk             (0xFUL << SCB_CPUID_REVISION_Pos)              /*!< SCB 
 479:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 480:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB Interrupt Control State Register Definitions */
 481:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_NMIPENDSET_Pos            31                                             /*!< SCB 
 482:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_NMIPENDSET_Msk            (1UL << SCB_ICSR_NMIPENDSET_Pos)               /*!< SCB 
 483:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 484:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSVSET_Pos             28                                             /*!< SCB 
 485:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSVSET_Msk             (1UL << SCB_ICSR_PENDSVSET_Pos)                /*!< SCB 
 486:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 487:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSVCLR_Pos             27                                             /*!< SCB 
 488:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSVCLR_Msk             (1UL << SCB_ICSR_PENDSVCLR_Pos)                /*!< SCB 
 489:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 490:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSTSET_Pos             26                                             /*!< SCB 
 491:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSTSET_Msk             (1UL << SCB_ICSR_PENDSTSET_Pos)                /*!< SCB 
 492:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 493:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSTCLR_Pos             25                                             /*!< SCB 
 494:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSTCLR_Msk             (1UL << SCB_ICSR_PENDSTCLR_Pos)                /*!< SCB 
 495:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 496:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_ISRPREEMPT_Pos            23                                             /*!< SCB 
 497:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_ISRPREEMPT_Msk            (1UL << SCB_ICSR_ISRPREEMPT_Pos)               /*!< SCB 
 498:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 499:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_ISRPENDING_Pos            22                                             /*!< SCB 
 500:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_ISRPENDING_Msk            (1UL << SCB_ICSR_ISRPENDING_Pos)               /*!< SCB 
 501:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 502:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_VECTPENDING_Pos           12                                             /*!< SCB 
 503:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_VECTPENDING_Msk           (0x1FFUL << SCB_ICSR_VECTPENDING_Pos)          /*!< SCB 
 504:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 505:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_RETTOBASE_Pos             11                                             /*!< SCB 
 506:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_RETTOBASE_Msk             (1UL << SCB_ICSR_RETTOBASE_Pos)                /*!< SCB 
 507:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 508:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_VECTACTIVE_Pos             0                                             /*!< SCB 
 509:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_VECTACTIVE_Msk            (0x1FFUL << SCB_ICSR_VECTACTIVE_Pos)           /*!< SCB 
 510:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 511:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB Vector Table Offset Register Definitions */
 512:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_VTOR_TBLOFF_Pos                 7                                             /*!< SCB 
 513:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_VTOR_TBLOFF_Msk                (0x1FFFFFFUL << SCB_VTOR_TBLOFF_Pos)           /*!< SCB 
 514:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/ccVHQYWs.s 			page 44


 515:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB Application Interrupt and Reset Control Register Definitions */
 516:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTKEY_Pos              16                                             /*!< SCB 
 517:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTKEY_Msk              (0xFFFFUL << SCB_AIRCR_VECTKEY_Pos)            /*!< SCB 
 518:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 519:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTKEYSTAT_Pos          16                                             /*!< SCB 
 520:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTKEYSTAT_Msk          (0xFFFFUL << SCB_AIRCR_VECTKEYSTAT_Pos)        /*!< SCB 
 521:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 522:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_ENDIANESS_Pos            15                                             /*!< SCB 
 523:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_ENDIANESS_Msk            (1UL << SCB_AIRCR_ENDIANESS_Pos)               /*!< SCB 
 524:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 525:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_PRIGROUP_Pos              8                                             /*!< SCB 
 526:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_PRIGROUP_Msk             (7UL << SCB_AIRCR_PRIGROUP_Pos)                /*!< SCB 
 527:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 528:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_SYSRESETREQ_Pos           2                                             /*!< SCB 
 529:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_SYSRESETREQ_Msk          (1UL << SCB_AIRCR_SYSRESETREQ_Pos)             /*!< SCB 
 530:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 531:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTCLRACTIVE_Pos         1                                             /*!< SCB 
 532:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTCLRACTIVE_Msk        (1UL << SCB_AIRCR_VECTCLRACTIVE_Pos)           /*!< SCB 
 533:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 534:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTRESET_Pos             0                                             /*!< SCB 
 535:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTRESET_Msk            (1UL << SCB_AIRCR_VECTRESET_Pos)               /*!< SCB 
 536:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 537:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB System Control Register Definitions */
 538:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SCR_SEVONPEND_Pos               4                                             /*!< SCB 
 539:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SCR_SEVONPEND_Msk              (1UL << SCB_SCR_SEVONPEND_Pos)                 /*!< SCB 
 540:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 541:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SCR_SLEEPDEEP_Pos               2                                             /*!< SCB 
 542:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SCR_SLEEPDEEP_Msk              (1UL << SCB_SCR_SLEEPDEEP_Pos)                 /*!< SCB 
 543:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 544:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SCR_SLEEPONEXIT_Pos             1                                             /*!< SCB 
 545:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SCR_SLEEPONEXIT_Msk            (1UL << SCB_SCR_SLEEPONEXIT_Pos)               /*!< SCB 
 546:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 547:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB Configuration Control Register Definitions */
 548:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_BP_Pos                      18                                            /*!< SCB 
 549:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_BP_Msk                     (1UL << SCB_CCR_BP_Pos)                        /*!< SCB 
 550:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 551:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_IC_Pos                      17                                            /*!< SCB 
 552:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_IC_Msk                     (1UL << SCB_CCR_IC_Pos)                        /*!< SCB 
 553:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 554:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_DC_Pos                      16                                            /*!< SCB 
 555:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_DC_Msk                     (1UL << SCB_CCR_DC_Pos)                        /*!< SCB 
 556:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 557:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_STKALIGN_Pos                9                                             /*!< SCB 
 558:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_STKALIGN_Msk               (1UL << SCB_CCR_STKALIGN_Pos)                  /*!< SCB 
 559:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 560:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_BFHFNMIGN_Pos               8                                             /*!< SCB 
 561:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_BFHFNMIGN_Msk              (1UL << SCB_CCR_BFHFNMIGN_Pos)                 /*!< SCB 
 562:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 563:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_DIV_0_TRP_Pos               4                                             /*!< SCB 
 564:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_DIV_0_TRP_Msk              (1UL << SCB_CCR_DIV_0_TRP_Pos)                 /*!< SCB 
 565:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 566:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_UNALIGN_TRP_Pos             3                                             /*!< SCB 
 567:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_UNALIGN_TRP_Msk            (1UL << SCB_CCR_UNALIGN_TRP_Pos)               /*!< SCB 
 568:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 569:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_USERSETMPEND_Pos            1                                             /*!< SCB 
 570:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_USERSETMPEND_Msk           (1UL << SCB_CCR_USERSETMPEND_Pos)              /*!< SCB 
 571:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/ccVHQYWs.s 			page 45


 572:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_NONBASETHRDENA_Pos          0                                             /*!< SCB 
 573:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_NONBASETHRDENA_Msk         (1UL << SCB_CCR_NONBASETHRDENA_Pos)            /*!< SCB 
 574:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 575:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB System Handler Control and State Register Definitions */
 576:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_USGFAULTENA_Pos          18                                             /*!< SCB 
 577:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_USGFAULTENA_Msk          (1UL << SCB_SHCSR_USGFAULTENA_Pos)             /*!< SCB 
 578:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 579:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_BUSFAULTENA_Pos          17                                             /*!< SCB 
 580:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_BUSFAULTENA_Msk          (1UL << SCB_SHCSR_BUSFAULTENA_Pos)             /*!< SCB 
 581:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 582:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MEMFAULTENA_Pos          16                                             /*!< SCB 
 583:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MEMFAULTENA_Msk          (1UL << SCB_SHCSR_MEMFAULTENA_Pos)             /*!< SCB 
 584:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 585:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_SVCALLPENDED_Pos         15                                             /*!< SCB 
 586:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_SVCALLPENDED_Msk         (1UL << SCB_SHCSR_SVCALLPENDED_Pos)            /*!< SCB 
 587:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 588:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_BUSFAULTPENDED_Pos       14                                             /*!< SCB 
 589:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_BUSFAULTPENDED_Msk       (1UL << SCB_SHCSR_BUSFAULTPENDED_Pos)          /*!< SCB 
 590:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 591:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MEMFAULTPENDED_Pos       13                                             /*!< SCB 
 592:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MEMFAULTPENDED_Msk       (1UL << SCB_SHCSR_MEMFAULTPENDED_Pos)          /*!< SCB 
 593:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 594:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_USGFAULTPENDED_Pos       12                                             /*!< SCB 
 595:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_USGFAULTPENDED_Msk       (1UL << SCB_SHCSR_USGFAULTPENDED_Pos)          /*!< SCB 
 596:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 597:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_SYSTICKACT_Pos           11                                             /*!< SCB 
 598:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_SYSTICKACT_Msk           (1UL << SCB_SHCSR_SYSTICKACT_Pos)              /*!< SCB 
 599:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 600:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_PENDSVACT_Pos            10                                             /*!< SCB 
 601:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_PENDSVACT_Msk            (1UL << SCB_SHCSR_PENDSVACT_Pos)               /*!< SCB 
 602:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 603:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MONITORACT_Pos            8                                             /*!< SCB 
 604:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MONITORACT_Msk           (1UL << SCB_SHCSR_MONITORACT_Pos)              /*!< SCB 
 605:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 606:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_SVCALLACT_Pos             7                                             /*!< SCB 
 607:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_SVCALLACT_Msk            (1UL << SCB_SHCSR_SVCALLACT_Pos)               /*!< SCB 
 608:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 609:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_USGFAULTACT_Pos           3                                             /*!< SCB 
 610:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_USGFAULTACT_Msk          (1UL << SCB_SHCSR_USGFAULTACT_Pos)             /*!< SCB 
 611:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 612:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_BUSFAULTACT_Pos           1                                             /*!< SCB 
 613:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_BUSFAULTACT_Msk          (1UL << SCB_SHCSR_BUSFAULTACT_Pos)             /*!< SCB 
 614:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 615:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MEMFAULTACT_Pos           0                                             /*!< SCB 
 616:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MEMFAULTACT_Msk          (1UL << SCB_SHCSR_MEMFAULTACT_Pos)             /*!< SCB 
 617:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 618:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB Configurable Fault Status Registers Definitions */
 619:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CFSR_USGFAULTSR_Pos            16                                             /*!< SCB 
 620:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CFSR_USGFAULTSR_Msk            (0xFFFFUL << SCB_CFSR_USGFAULTSR_Pos)          /*!< SCB 
 621:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 622:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CFSR_BUSFAULTSR_Pos             8                                             /*!< SCB 
 623:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CFSR_BUSFAULTSR_Msk            (0xFFUL << SCB_CFSR_BUSFAULTSR_Pos)            /*!< SCB 
 624:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 625:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CFSR_MEMFAULTSR_Pos             0                                             /*!< SCB 
 626:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CFSR_MEMFAULTSR_Msk            (0xFFUL << SCB_CFSR_MEMFAULTSR_Pos)            /*!< SCB 
 627:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 628:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB Hard Fault Status Registers Definitions */
ARM GAS  /tmp/ccVHQYWs.s 			page 46


 629:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_HFSR_DEBUGEVT_Pos              31                                             /*!< SCB 
 630:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_HFSR_DEBUGEVT_Msk              (1UL << SCB_HFSR_DEBUGEVT_Pos)                 /*!< SCB 
 631:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 632:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_HFSR_FORCED_Pos                30                                             /*!< SCB 
 633:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_HFSR_FORCED_Msk                (1UL << SCB_HFSR_FORCED_Pos)                   /*!< SCB 
 634:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 635:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_HFSR_VECTTBL_Pos                1                                             /*!< SCB 
 636:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_HFSR_VECTTBL_Msk               (1UL << SCB_HFSR_VECTTBL_Pos)                  /*!< SCB 
 637:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 638:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB Debug Fault Status Register Definitions */
 639:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_EXTERNAL_Pos               4                                             /*!< SCB 
 640:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_EXTERNAL_Msk              (1UL << SCB_DFSR_EXTERNAL_Pos)                 /*!< SCB 
 641:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 642:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_VCATCH_Pos                 3                                             /*!< SCB 
 643:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_VCATCH_Msk                (1UL << SCB_DFSR_VCATCH_Pos)                   /*!< SCB 
 644:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 645:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_DWTTRAP_Pos                2                                             /*!< SCB 
 646:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_DWTTRAP_Msk               (1UL << SCB_DFSR_DWTTRAP_Pos)                  /*!< SCB 
 647:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 648:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_BKPT_Pos                   1                                             /*!< SCB 
 649:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_BKPT_Msk                  (1UL << SCB_DFSR_BKPT_Pos)                     /*!< SCB 
 650:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 651:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_HALTED_Pos                 0                                             /*!< SCB 
 652:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_HALTED_Msk                (1UL << SCB_DFSR_HALTED_Pos)                   /*!< SCB 
 653:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 654:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Cache Level ID register */
 655:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CLIDR_LOUU_Pos                 27                                             /*!< SCB 
 656:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CLIDR_LOUU_Msk                 (7UL << SCB_CLIDR_LOUU_Pos)                    /*!< SCB 
 657:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 658:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CLIDR_LOC_Pos                  24                                             /*!< SCB 
 659:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CLIDR_LOC_Msk                  (7UL << SCB_CLIDR_FORMAT_Pos)                  /*!< SCB 
 660:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 661:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Cache Type register */
 662:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_FORMAT_Pos                 29                                             /*!< SCB 
 663:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_FORMAT_Msk                 (7UL << SCB_CTR_FORMAT_Pos)                    /*!< SCB 
 664:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 665:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_CWG_Pos                    24                                             /*!< SCB 
 666:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_CWG_Msk                    (0xFUL << SCB_CTR_CWG_Pos)                     /*!< SCB 
 667:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 668:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_ERG_Pos                    20                                             /*!< SCB 
 669:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_ERG_Msk                    (0xFUL << SCB_CTR_ERG_Pos)                     /*!< SCB 
 670:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 671:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_DMINLINE_Pos               16                                             /*!< SCB 
 672:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_DMINLINE_Msk               (0xFUL << SCB_CTR_DMINLINE_Pos)                /*!< SCB 
 673:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 674:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_IMINLINE_Pos                0                                             /*!< SCB 
 675:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_IMINLINE_Msk               (0xFUL << SCB_CTR_IMINLINE_Pos)                /*!< SCB 
 676:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 677:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Cache Size ID Register */
 678:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_WT_Pos                  31                                             /*!< SCB 
 679:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_WT_Msk                  (7UL << SCB_CCSIDR_WT_Pos)                     /*!< SCB 
 680:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 681:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_WB_Pos                  30                                             /*!< SCB 
 682:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_WB_Msk                  (7UL << SCB_CCSIDR_WB_Pos)                     /*!< SCB 
 683:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 684:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_RA_Pos                  29                                             /*!< SCB 
 685:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_RA_Msk                  (7UL << SCB_CCSIDR_RA_Pos)                     /*!< SCB 
ARM GAS  /tmp/ccVHQYWs.s 			page 47


 686:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 687:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_WA_Pos                  28                                             /*!< SCB 
 688:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_WA_Msk                  (7UL << SCB_CCSIDR_WA_Pos)                     /*!< SCB 
 689:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 690:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_NUMSETS_Pos             13                                             /*!< SCB 
 691:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_NUMSETS_Msk             (0x7FFFUL << SCB_CCSIDR_NUMSETS_Pos)           /*!< SCB 
 692:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 693:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_ASSOCIATIVITY_Pos        3                                             /*!< SCB 
 694:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_ASSOCIATIVITY_Msk       (0x3FFUL << SCB_CCSIDR_ASSOCIATIVITY_Pos)      /*!< SCB 
 695:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 696:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_LINESIZE_Pos             0                                             /*!< SCB 
 697:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_LINESIZE_Msk            (7UL << SCB_CCSIDR_LINESIZE_Pos)               /*!< SCB 
 698:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 699:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Cache Size Selection Register */
 700:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CSSELR_LEVEL_Pos                0                                             /*!< SCB 
 701:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CSSELR_LEVEL_Msk               (1UL << SCB_CSSELR_LEVEL_Pos)                    /*!< SC
 702:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 703:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CSSELR_IND_Pos                  0                                             /*!< SCB 
 704:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CSSELR_IND_Msk                 (1UL << SCB_CSSELR_IND_Pos)                    /*!< SCB 
 705:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 706:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB Software Triggered Interrupt Register */
 707:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_STIR_INTID_Pos                  0                                             /*!< SCB 
 708:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_STIR_INTID_Msk                 (0x1FFUL << SCB_STIR_INTID_Pos)                /*!< SCB 
 709:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 710:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Instruction Tightly-Coupled Memory Control Register*/
 711:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_SZ_Pos                   3                                             /*!< SCB 
 712:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_SZ_Msk                  (0xFUL << SCB_ITCMCR_SZ_Pos)                   /*!< SCB 
 713:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 714:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_RETEN_Pos                2                                             /*!< SCB 
 715:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_RETEN_Msk               (0x1UL << SCB_ITCMCR_RETEN_Pos)                /*!< SCB 
 716:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 717:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_RMW_Pos                  1                                             /*!< SCB 
 718:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_RMW_Msk                 (0x1UL << SCB_ITCMCR_RMW_Pos)                  /*!< SCB 
 719:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 720:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_EN_Pos                   0                                             /*!< SCB 
 721:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_EN_Msk                  (0x1UL << SCB_ITCMCR_EN_Pos)                   /*!< SCB 
 722:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 723:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Data Tightly-Coupled Memory Control Registers */
 724:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_SZ_Pos                   3                                             /*!< SCB 
 725:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_SZ_Msk                  (0xFUL << SCB_DTCMCR_SZ_Pos)                   /*!< SCB 
 726:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 727:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_RETEN_Pos                2                                             /*!< SCB 
 728:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_RETEN_Msk               (1UL << SCB_DTCMCR_RETEN_Pos)                   /*!< SCB
 729:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 730:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_RMW_Pos                  1                                             /*!< SCB 
 731:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_RMW_Msk                 (1UL << SCB_DTCMCR_RMW_Pos)                    /*!< SCB 
 732:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 733:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_EN_Pos                   0                                             /*!< SCB 
 734:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_EN_Msk                  (1UL << SCB_DTCMCR_EN_Pos)                     /*!< SCB 
 735:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 736:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* AHBP Control Register */
 737:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBPCR_SZ_Pos                   1                                             /*!< SCB 
 738:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBPCR_SZ_Msk                  (7UL << SCB_AHBPCR_SZ_Pos)                     /*!< SCB 
 739:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 740:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBPCR_EN_Pos                   0                                             /*!< SCB 
 741:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBPCR_EN_Msk                  (1UL << SCB_AHBPCR_EN_Pos)                     /*!< SCB 
 742:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/ccVHQYWs.s 			page 48


 743:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* L1 Cache Control Register */
 744:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CACR_FORCEWT_Pos                2                                             /*!< SCB 
 745:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CACR_FORCEWT_Msk               (1UL << SCB_CACR_FORCEWT_Pos)                  /*!< SCB 
 746:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 747:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CACR_ECCEN_Pos                  1                                             /*!< SCB 
 748:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CACR_ECCEN_Msk                 (1UL << SCB_CACR_ECCEN_Pos)                    /*!< SCB 
 749:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 750:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CACR_SIWT_Pos                   0                                             /*!< SCB 
 751:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CACR_SIWT_Msk                  (1UL << SCB_CACR_SIWT_Pos)                     /*!< SCB 
 752:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 753:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* AHBS control register */
 754:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBSCR_INITCOUNT_Pos           11                                             /*!< SCB 
 755:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBSCR_INITCOUNT_Msk           (0x1FUL << SCB_AHBPCR_INITCOUNT_Pos)           /*!< SCB 
 756:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 757:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBSCR_TPRI_Pos                 2                                             /*!< SCB 
 758:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBSCR_TPRI_Msk                (0x1FFUL << SCB_AHBPCR_TPRI_Pos)               /*!< SCB 
 759:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 760:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBSCR_CTL_Pos                  0                                             /*!< SCB 
 761:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBSCR_CTL_Msk                 (3UL << SCB_AHBPCR_CTL_Pos)                    /*!< SCB 
 762:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 763:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Auxiliary Bus Fault Status Register */
 764:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_AXIMTYPE_Pos              8                                             /*!< SCB 
 765:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_AXIMTYPE_Msk             (3UL << SCB_ABFSR_AXIMTYPE_Pos)                /*!< SCB 
 766:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 767:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_EPPB_Pos                  4                                             /*!< SCB 
 768:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_EPPB_Msk                 (1UL << SCB_ABFSR_EPPB_Pos)                    /*!< SCB 
 769:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 770:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_AXIM_Pos                  3                                             /*!< SCB 
 771:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_AXIM_Msk                 (1UL << SCB_ABFSR_AXIM_Pos)                    /*!< SCB 
 772:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 773:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_AHBP_Pos                  2                                             /*!< SCB 
 774:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_AHBP_Msk                 (1UL << SCB_ABFSR_AHBP_Pos)                    /*!< SCB 
 775:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 776:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_DTCM_Pos                  1                                             /*!< SCB 
 777:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_DTCM_Msk                 (1UL << SCB_ABFSR_DTCM_Pos)                    /*!< SCB 
 778:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 779:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_ITCM_Pos                  0                                             /*!< SCB 
 780:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_ITCM_Msk                 (1UL << SCB_ABFSR_ITCM_Pos)                    /*!< SCB 
 781:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 782:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_SCB */
 783:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 784:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 785:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
 786:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_SCnSCB System Controls not in SCB (SCnSCB)
 787:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the System Control and ID Register not in the SCB
 788:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
 789:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 790:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 791:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the System Control and ID Register not in the SCB.
 792:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 793:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
 794:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 795:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED0[1];
 796:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t ICTR;                    /*!< Offset: 0x004 (R/ )  Interrupt Controller Type Regist
 797:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ACTLR;                   /*!< Offset: 0x008 (R/W)  Auxiliary Control Register      
 798:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } SCnSCB_Type;
 799:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/ccVHQYWs.s 			page 49


 800:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Interrupt Controller Type Register Definitions */
 801:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ICTR_INTLINESNUM_Pos         0                                          /*!< ICTR: I
 802:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ICTR_INTLINESNUM_Msk        (0xFUL << SCnSCB_ICTR_INTLINESNUM_Pos)      /*!< ICTR: I
 803:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 804:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Auxiliary Control Register Definitions */
 805:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISITMATBFLUSH_Pos    12                                          /*!< ACTLR: 
 806:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISITMATBFLUSH_Msk    (1UL << SCnSCB_ACTLR_DISITMATBFLUSH_Pos)    /*!< ACTLR: 
 807:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 808:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISRAMODE_Pos         11                                          /*!< ACTLR: 
 809:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISRAMODE_Msk         (1UL << SCnSCB_ACTLR_DISRAMODE_Pos)         /*!< ACTLR: 
 810:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 811:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_FPEXCODIS_Pos         10                                          /*!< ACTLR: 
 812:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_FPEXCODIS_Msk         (1UL << SCnSCB_ACTLR_FPEXCODIS_Pos)         /*!< ACTLR: 
 813:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 814:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISFOLD_Pos            2                                          /*!< ACTLR: 
 815:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISFOLD_Msk           (1UL << SCnSCB_ACTLR_DISFOLD_Pos)           /*!< ACTLR: 
 816:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 817:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISMCYCINT_Pos         0                                          /*!< ACTLR: 
 818:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISMCYCINT_Msk        (1UL << SCnSCB_ACTLR_DISMCYCINT_Pos)        /*!< ACTLR: 
 819:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 820:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_SCnotSCB */
 821:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 822:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 823:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
 824:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_SysTick     System Tick Timer (SysTick)
 825:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the System Timer Registers.
 826:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
 827:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 828:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 829:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the System Timer (SysTick).
 830:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 831:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
 832:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 833:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CTRL;                    /*!< Offset: 0x000 (R/W)  SysTick Control and Status Regis
 834:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t LOAD;                    /*!< Offset: 0x004 (R/W)  SysTick Reload Value Register   
 835:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t VAL;                     /*!< Offset: 0x008 (R/W)  SysTick Current Value Register  
 836:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CALIB;                   /*!< Offset: 0x00C (R/ )  SysTick Calibration Register    
 837:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } SysTick_Type;
 838:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 839:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SysTick Control / Status Register Definitions */
 840:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_COUNTFLAG_Pos         16                                             /*!< SysT
 841:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_COUNTFLAG_Msk         (1UL << SysTick_CTRL_COUNTFLAG_Pos)            /*!< SysT
 842:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 843:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_CLKSOURCE_Pos          2                                             /*!< SysT
 844:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_CLKSOURCE_Msk         (1UL << SysTick_CTRL_CLKSOURCE_Pos)            /*!< SysT
 845:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 846:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_TICKINT_Pos            1                                             /*!< SysT
 847:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_TICKINT_Msk           (1UL << SysTick_CTRL_TICKINT_Pos)              /*!< SysT
 848:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 849:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_ENABLE_Pos             0                                             /*!< SysT
 850:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_ENABLE_Msk            (1UL << SysTick_CTRL_ENABLE_Pos)               /*!< SysT
 851:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 852:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SysTick Reload Register Definitions */
 853:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_LOAD_RELOAD_Pos             0                                             /*!< SysT
 854:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_LOAD_RELOAD_Msk            (0xFFFFFFUL << SysTick_LOAD_RELOAD_Pos)        /*!< SysT
 855:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 856:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SysTick Current Register Definitions */
ARM GAS  /tmp/ccVHQYWs.s 			page 50


 857:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_VAL_CURRENT_Pos             0                                             /*!< SysT
 858:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_VAL_CURRENT_Msk            (0xFFFFFFUL << SysTick_VAL_CURRENT_Pos)        /*!< SysT
 859:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 860:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SysTick Calibration Register Definitions */
 861:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CALIB_NOREF_Pos            31                                             /*!< SysT
 862:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CALIB_NOREF_Msk            (1UL << SysTick_CALIB_NOREF_Pos)               /*!< SysT
 863:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 864:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CALIB_SKEW_Pos             30                                             /*!< SysT
 865:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CALIB_SKEW_Msk             (1UL << SysTick_CALIB_SKEW_Pos)                /*!< SysT
 866:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 867:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CALIB_TENMS_Pos             0                                             /*!< SysT
 868:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CALIB_TENMS_Msk            (0xFFFFFFUL << SysTick_CALIB_TENMS_Pos)        /*!< SysT
 869:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 870:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_SysTick */
 871:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 872:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 873:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
 874:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_ITM     Instrumentation Trace Macrocell (ITM)
 875:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the Instrumentation Trace Macrocell (ITM)
 876:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
 877:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 878:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 879:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the Instrumentation Trace Macrocell Register (ITM).
 880:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 881:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
 882:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 883:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  union
 884:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   {
 885:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __O  uint8_t    u8;                  /*!< Offset: 0x000 ( /W)  ITM Stimulus Port 8-bit         
 886:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __O  uint16_t   u16;                 /*!< Offset: 0x000 ( /W)  ITM Stimulus Port 16-bit        
 887:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __O  uint32_t   u32;                 /*!< Offset: 0x000 ( /W)  ITM Stimulus Port 32-bit        
 888:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   }  PORT [32];                          /*!< Offset: 0x000 ( /W)  ITM Stimulus Port Registers     
 889:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED0[864];
 890:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t TER;                     /*!< Offset: 0xE00 (R/W)  ITM Trace Enable Register       
 891:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED1[15];
 892:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t TPR;                     /*!< Offset: 0xE40 (R/W)  ITM Trace Privilege Register    
 893:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED2[15];
 894:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t TCR;                     /*!< Offset: 0xE80 (R/W)  ITM Trace Control Register      
 895:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED3[29];
 896:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t IWR;                     /*!< Offset: 0xEF8 ( /W)  ITM Integration Write Register  
 897:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t IRR;                     /*!< Offset: 0xEFC (R/ )  ITM Integration Read Register   
 898:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t IMCR;                    /*!< Offset: 0xF00 (R/W)  ITM Integration Mode Control Reg
 899:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED4[43];
 900:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t LAR;                     /*!< Offset: 0xFB0 ( /W)  ITM Lock Access Register        
 901:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t LSR;                     /*!< Offset: 0xFB4 (R/ )  ITM Lock Status Register        
 902:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED5[6];
 903:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PID4;                    /*!< Offset: 0xFD0 (R/ )  ITM Peripheral Identification Re
 904:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PID5;                    /*!< Offset: 0xFD4 (R/ )  ITM Peripheral Identification Re
 905:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PID6;                    /*!< Offset: 0xFD8 (R/ )  ITM Peripheral Identification Re
 906:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PID7;                    /*!< Offset: 0xFDC (R/ )  ITM Peripheral Identification Re
 907:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PID0;                    /*!< Offset: 0xFE0 (R/ )  ITM Peripheral Identification Re
 908:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PID1;                    /*!< Offset: 0xFE4 (R/ )  ITM Peripheral Identification Re
 909:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PID2;                    /*!< Offset: 0xFE8 (R/ )  ITM Peripheral Identification Re
 910:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PID3;                    /*!< Offset: 0xFEC (R/ )  ITM Peripheral Identification Re
 911:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CID0;                    /*!< Offset: 0xFF0 (R/ )  ITM Component  Identification Re
 912:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CID1;                    /*!< Offset: 0xFF4 (R/ )  ITM Component  Identification Re
 913:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CID2;                    /*!< Offset: 0xFF8 (R/ )  ITM Component  Identification Re
ARM GAS  /tmp/ccVHQYWs.s 			page 51


 914:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CID3;                    /*!< Offset: 0xFFC (R/ )  ITM Component  Identification Re
 915:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } ITM_Type;
 916:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 917:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* ITM Trace Privilege Register Definitions */
 918:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TPR_PRIVMASK_Pos                0                                             /*!< ITM 
 919:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TPR_PRIVMASK_Msk               (0xFUL << ITM_TPR_PRIVMASK_Pos)                /*!< ITM 
 920:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 921:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* ITM Trace Control Register Definitions */
 922:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_BUSY_Pos                   23                                             /*!< ITM 
 923:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_BUSY_Msk                   (1UL << ITM_TCR_BUSY_Pos)                      /*!< ITM 
 924:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 925:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_TraceBusID_Pos             16                                             /*!< ITM 
 926:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_TraceBusID_Msk             (0x7FUL << ITM_TCR_TraceBusID_Pos)             /*!< ITM 
 927:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 928:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_GTSFREQ_Pos                10                                             /*!< ITM 
 929:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_GTSFREQ_Msk                (3UL << ITM_TCR_GTSFREQ_Pos)                   /*!< ITM 
 930:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 931:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_TSPrescale_Pos              8                                             /*!< ITM 
 932:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_TSPrescale_Msk             (3UL << ITM_TCR_TSPrescale_Pos)                /*!< ITM 
 933:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 934:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_SWOENA_Pos                  4                                             /*!< ITM 
 935:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_SWOENA_Msk                 (1UL << ITM_TCR_SWOENA_Pos)                    /*!< ITM 
 936:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 937:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_DWTENA_Pos                  3                                             /*!< ITM 
 938:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_DWTENA_Msk                 (1UL << ITM_TCR_DWTENA_Pos)                    /*!< ITM 
 939:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 940:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_SYNCENA_Pos                 2                                             /*!< ITM 
 941:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_SYNCENA_Msk                (1UL << ITM_TCR_SYNCENA_Pos)                   /*!< ITM 
 942:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 943:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_TSENA_Pos                   1                                             /*!< ITM 
 944:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_TSENA_Msk                  (1UL << ITM_TCR_TSENA_Pos)                     /*!< ITM 
 945:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 946:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_ITMENA_Pos                  0                                             /*!< ITM 
 947:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_ITMENA_Msk                 (1UL << ITM_TCR_ITMENA_Pos)                    /*!< ITM 
 948:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 949:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* ITM Integration Write Register Definitions */
 950:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_IWR_ATVALIDM_Pos                0                                             /*!< ITM 
 951:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_IWR_ATVALIDM_Msk               (1UL << ITM_IWR_ATVALIDM_Pos)                  /*!< ITM 
 952:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 953:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* ITM Integration Read Register Definitions */
 954:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_IRR_ATREADYM_Pos                0                                             /*!< ITM 
 955:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_IRR_ATREADYM_Msk               (1UL << ITM_IRR_ATREADYM_Pos)                  /*!< ITM 
 956:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 957:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* ITM Integration Mode Control Register Definitions */
 958:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_IMCR_INTEGRATION_Pos            0                                             /*!< ITM 
 959:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_IMCR_INTEGRATION_Msk           (1UL << ITM_IMCR_INTEGRATION_Pos)              /*!< ITM 
 960:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 961:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* ITM Lock Status Register Definitions */
 962:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_LSR_ByteAcc_Pos                 2                                             /*!< ITM 
 963:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_LSR_ByteAcc_Msk                (1UL << ITM_LSR_ByteAcc_Pos)                   /*!< ITM 
 964:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 965:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_LSR_Access_Pos                  1                                             /*!< ITM 
 966:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_LSR_Access_Msk                 (1UL << ITM_LSR_Access_Pos)                    /*!< ITM 
 967:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 968:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_LSR_Present_Pos                 0                                             /*!< ITM 
 969:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_LSR_Present_Msk                (1UL << ITM_LSR_Present_Pos)                   /*!< ITM 
 970:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/ccVHQYWs.s 			page 52


 971:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@}*/ /* end of group CMSIS_ITM */
 972:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 973:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 974:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
 975:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_DWT     Data Watchpoint and Trace (DWT)
 976:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the Data Watchpoint and Trace (DWT)
 977:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
 978:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 979:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 980:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the Data Watchpoint and Trace Register (DWT).
 981:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 982:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
 983:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 984:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CTRL;                    /*!< Offset: 0x000 (R/W)  Control Register                
 985:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CYCCNT;                  /*!< Offset: 0x004 (R/W)  Cycle Count Register            
 986:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CPICNT;                  /*!< Offset: 0x008 (R/W)  CPI Count Register              
 987:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t EXCCNT;                  /*!< Offset: 0x00C (R/W)  Exception Overhead Count Registe
 988:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t SLEEPCNT;                /*!< Offset: 0x010 (R/W)  Sleep Count Register            
 989:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t LSUCNT;                  /*!< Offset: 0x014 (R/W)  LSU Count Register              
 990:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FOLDCNT;                 /*!< Offset: 0x018 (R/W)  Folded-instruction Count Registe
 991:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PCSR;                    /*!< Offset: 0x01C (R/ )  Program Counter Sample Register 
 992:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t COMP0;                   /*!< Offset: 0x020 (R/W)  Comparator Register 0           
 993:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t MASK0;                   /*!< Offset: 0x024 (R/W)  Mask Register 0                 
 994:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FUNCTION0;               /*!< Offset: 0x028 (R/W)  Function Register 0             
 995:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED0[1];
 996:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t COMP1;                   /*!< Offset: 0x030 (R/W)  Comparator Register 1           
 997:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t MASK1;                   /*!< Offset: 0x034 (R/W)  Mask Register 1                 
 998:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FUNCTION1;               /*!< Offset: 0x038 (R/W)  Function Register 1             
 999:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED1[1];
1000:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t COMP2;                   /*!< Offset: 0x040 (R/W)  Comparator Register 2           
1001:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t MASK2;                   /*!< Offset: 0x044 (R/W)  Mask Register 2                 
1002:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FUNCTION2;               /*!< Offset: 0x048 (R/W)  Function Register 2             
1003:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED2[1];
1004:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t COMP3;                   /*!< Offset: 0x050 (R/W)  Comparator Register 3           
1005:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t MASK3;                   /*!< Offset: 0x054 (R/W)  Mask Register 3                 
1006:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FUNCTION3;               /*!< Offset: 0x058 (R/W)  Function Register 3             
1007:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED3[981];
1008:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t LAR;                     /*!< Offset: 0xFB0 (  W)  Lock Access Register            
1009:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t LSR;                     /*!< Offset: 0xFB4 (R  )  Lock Status Register            
1010:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } DWT_Type;
1011:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1012:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* DWT Control Register Definitions */
1013:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NUMCOMP_Pos               28                                          /*!< DWT CTR
1014:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NUMCOMP_Msk               (0xFUL << DWT_CTRL_NUMCOMP_Pos)             /*!< DWT CTR
1015:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1016:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOTRCPKT_Pos              27                                          /*!< DWT CTR
1017:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOTRCPKT_Msk              (0x1UL << DWT_CTRL_NOTRCPKT_Pos)            /*!< DWT CTR
1018:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1019:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOEXTTRIG_Pos             26                                          /*!< DWT CTR
1020:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOEXTTRIG_Msk             (0x1UL << DWT_CTRL_NOEXTTRIG_Pos)           /*!< DWT CTR
1021:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1022:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOCYCCNT_Pos              25                                          /*!< DWT CTR
1023:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOCYCCNT_Msk              (0x1UL << DWT_CTRL_NOCYCCNT_Pos)            /*!< DWT CTR
1024:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1025:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOPRFCNT_Pos              24                                          /*!< DWT CTR
1026:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOPRFCNT_Msk              (0x1UL << DWT_CTRL_NOPRFCNT_Pos)            /*!< DWT CTR
1027:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/ccVHQYWs.s 			page 53


1028:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CYCEVTENA_Pos             22                                          /*!< DWT CTR
1029:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CYCEVTENA_Msk             (0x1UL << DWT_CTRL_CYCEVTENA_Pos)           /*!< DWT CTR
1030:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1031:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_FOLDEVTENA_Pos            21                                          /*!< DWT CTR
1032:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_FOLDEVTENA_Msk            (0x1UL << DWT_CTRL_FOLDEVTENA_Pos)          /*!< DWT CTR
1033:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1034:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_LSUEVTENA_Pos             20                                          /*!< DWT CTR
1035:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_LSUEVTENA_Msk             (0x1UL << DWT_CTRL_LSUEVTENA_Pos)           /*!< DWT CTR
1036:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1037:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_SLEEPEVTENA_Pos           19                                          /*!< DWT CTR
1038:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_SLEEPEVTENA_Msk           (0x1UL << DWT_CTRL_SLEEPEVTENA_Pos)         /*!< DWT CTR
1039:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1040:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_EXCEVTENA_Pos             18                                          /*!< DWT CTR
1041:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_EXCEVTENA_Msk             (0x1UL << DWT_CTRL_EXCEVTENA_Pos)           /*!< DWT CTR
1042:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1043:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CPIEVTENA_Pos             17                                          /*!< DWT CTR
1044:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CPIEVTENA_Msk             (0x1UL << DWT_CTRL_CPIEVTENA_Pos)           /*!< DWT CTR
1045:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1046:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_EXCTRCENA_Pos             16                                          /*!< DWT CTR
1047:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_EXCTRCENA_Msk             (0x1UL << DWT_CTRL_EXCTRCENA_Pos)           /*!< DWT CTR
1048:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1049:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_PCSAMPLENA_Pos            12                                          /*!< DWT CTR
1050:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_PCSAMPLENA_Msk            (0x1UL << DWT_CTRL_PCSAMPLENA_Pos)          /*!< DWT CTR
1051:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1052:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_SYNCTAP_Pos               10                                          /*!< DWT CTR
1053:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_SYNCTAP_Msk               (0x3UL << DWT_CTRL_SYNCTAP_Pos)             /*!< DWT CTR
1054:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1055:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CYCTAP_Pos                 9                                          /*!< DWT CTR
1056:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CYCTAP_Msk                (0x1UL << DWT_CTRL_CYCTAP_Pos)              /*!< DWT CTR
1057:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1058:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_POSTINIT_Pos               5                                          /*!< DWT CTR
1059:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_POSTINIT_Msk              (0xFUL << DWT_CTRL_POSTINIT_Pos)            /*!< DWT CTR
1060:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1061:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_POSTPRESET_Pos             1                                          /*!< DWT CTR
1062:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_POSTPRESET_Msk            (0xFUL << DWT_CTRL_POSTPRESET_Pos)          /*!< DWT CTR
1063:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1064:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CYCCNTENA_Pos              0                                          /*!< DWT CTR
1065:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CYCCNTENA_Msk             (0x1UL << DWT_CTRL_CYCCNTENA_Pos)           /*!< DWT CTR
1066:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1067:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* DWT CPI Count Register Definitions */
1068:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CPICNT_CPICNT_Pos               0                                          /*!< DWT CPI
1069:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CPICNT_CPICNT_Msk              (0xFFUL << DWT_CPICNT_CPICNT_Pos)           /*!< DWT CPI
1070:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1071:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* DWT Exception Overhead Count Register Definitions */
1072:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_EXCCNT_EXCCNT_Pos               0                                          /*!< DWT EXC
1073:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_EXCCNT_EXCCNT_Msk              (0xFFUL << DWT_EXCCNT_EXCCNT_Pos)           /*!< DWT EXC
1074:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1075:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* DWT Sleep Count Register Definitions */
1076:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_SLEEPCNT_SLEEPCNT_Pos           0                                          /*!< DWT SLE
1077:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_SLEEPCNT_SLEEPCNT_Msk          (0xFFUL << DWT_SLEEPCNT_SLEEPCNT_Pos)       /*!< DWT SLE
1078:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1079:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* DWT LSU Count Register Definitions */
1080:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_LSUCNT_LSUCNT_Pos               0                                          /*!< DWT LSU
1081:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_LSUCNT_LSUCNT_Msk              (0xFFUL << DWT_LSUCNT_LSUCNT_Pos)           /*!< DWT LSU
1082:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1083:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* DWT Folded-instruction Count Register Definitions */
1084:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FOLDCNT_FOLDCNT_Pos             0                                          /*!< DWT FOL
ARM GAS  /tmp/ccVHQYWs.s 			page 54


1085:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FOLDCNT_FOLDCNT_Msk            (0xFFUL << DWT_FOLDCNT_FOLDCNT_Pos)         /*!< DWT FOL
1086:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1087:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* DWT Comparator Mask Register Definitions */
1088:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_MASK_MASK_Pos                   0                                          /*!< DWT MAS
1089:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_MASK_MASK_Msk                  (0x1FUL << DWT_MASK_MASK_Pos)               /*!< DWT MAS
1090:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1091:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* DWT Comparator Function Register Definitions */
1092:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_MATCHED_Pos           24                                          /*!< DWT FUN
1093:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_MATCHED_Msk           (0x1UL << DWT_FUNCTION_MATCHED_Pos)         /*!< DWT FUN
1094:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1095:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVADDR1_Pos        16                                          /*!< DWT FUN
1096:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVADDR1_Msk        (0xFUL << DWT_FUNCTION_DATAVADDR1_Pos)      /*!< DWT FUN
1097:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1098:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVADDR0_Pos        12                                          /*!< DWT FUN
1099:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVADDR0_Msk        (0xFUL << DWT_FUNCTION_DATAVADDR0_Pos)      /*!< DWT FUN
1100:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1101:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVSIZE_Pos         10                                          /*!< DWT FUN
1102:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVSIZE_Msk         (0x3UL << DWT_FUNCTION_DATAVSIZE_Pos)       /*!< DWT FUN
1103:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1104:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_LNK1ENA_Pos            9                                          /*!< DWT FUN
1105:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_LNK1ENA_Msk           (0x1UL << DWT_FUNCTION_LNK1ENA_Pos)         /*!< DWT FUN
1106:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1107:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVMATCH_Pos         8                                          /*!< DWT FUN
1108:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVMATCH_Msk        (0x1UL << DWT_FUNCTION_DATAVMATCH_Pos)      /*!< DWT FUN
1109:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1110:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_CYCMATCH_Pos           7                                          /*!< DWT FUN
1111:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_CYCMATCH_Msk          (0x1UL << DWT_FUNCTION_CYCMATCH_Pos)        /*!< DWT FUN
1112:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1113:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_EMITRANGE_Pos          5                                          /*!< DWT FUN
1114:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_EMITRANGE_Msk         (0x1UL << DWT_FUNCTION_EMITRANGE_Pos)       /*!< DWT FUN
1115:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1116:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_FUNCTION_Pos           0                                          /*!< DWT FUN
1117:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_FUNCTION_Msk          (0xFUL << DWT_FUNCTION_FUNCTION_Pos)        /*!< DWT FUN
1118:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1119:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@}*/ /* end of group CMSIS_DWT */
1120:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1121:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1122:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
1123:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_TPI     Trace Port Interface (TPI)
1124:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the Trace Port Interface (TPI)
1125:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
1126:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1127:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1128:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the Trace Port Interface Register (TPI).
1129:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1130:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
1131:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1132:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t SSPSR;                   /*!< Offset: 0x000 (R/ )  Supported Parallel Port Size Reg
1133:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CSPSR;                   /*!< Offset: 0x004 (R/W)  Current Parallel Port Size Regis
1134:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED0[2];
1135:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ACPR;                    /*!< Offset: 0x010 (R/W)  Asynchronous Clock Prescaler Reg
1136:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED1[55];
1137:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t SPPR;                    /*!< Offset: 0x0F0 (R/W)  Selected Pin Protocol Register *
1138:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED2[131];
1139:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t FFSR;                    /*!< Offset: 0x300 (R/ )  Formatter and Flush Status Regis
1140:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FFCR;                    /*!< Offset: 0x304 (R/W)  Formatter and Flush Control Regi
1141:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t FSCR;                    /*!< Offset: 0x308 (R/ )  Formatter Synchronization Counte
ARM GAS  /tmp/ccVHQYWs.s 			page 55


1142:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED3[759];
1143:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t TRIGGER;                 /*!< Offset: 0xEE8 (R/ )  TRIGGER */
1144:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t FIFO0;                   /*!< Offset: 0xEEC (R/ )  Integration ETM Data */
1145:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t ITATBCTR2;               /*!< Offset: 0xEF0 (R/ )  ITATBCTR2 */
1146:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED4[1];
1147:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t ITATBCTR0;               /*!< Offset: 0xEF8 (R/ )  ITATBCTR0 */
1148:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t FIFO1;                   /*!< Offset: 0xEFC (R/ )  Integration ITM Data */
1149:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ITCTRL;                  /*!< Offset: 0xF00 (R/W)  Integration Mode Control */
1150:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED5[39];
1151:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CLAIMSET;                /*!< Offset: 0xFA0 (R/W)  Claim tag set */
1152:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CLAIMCLR;                /*!< Offset: 0xFA4 (R/W)  Claim tag clear */
1153:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED7[8];
1154:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t DEVID;                   /*!< Offset: 0xFC8 (R/ )  TPIU_DEVID */
1155:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t DEVTYPE;                 /*!< Offset: 0xFCC (R/ )  TPIU_DEVTYPE */
1156:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } TPI_Type;
1157:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1158:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI Asynchronous Clock Prescaler Register Definitions */
1159:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_ACPR_PRESCALER_Pos              0                                          /*!< TPI ACP
1160:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_ACPR_PRESCALER_Msk             (0x1FFFUL << TPI_ACPR_PRESCALER_Pos)        /*!< TPI ACP
1161:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1162:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI Selected Pin Protocol Register Definitions */
1163:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_SPPR_TXMODE_Pos                 0                                          /*!< TPI SPP
1164:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_SPPR_TXMODE_Msk                (0x3UL << TPI_SPPR_TXMODE_Pos)              /*!< TPI SPP
1165:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1166:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI Formatter and Flush Status Register Definitions */
1167:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_FtNonStop_Pos              3                                          /*!< TPI FFS
1168:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_FtNonStop_Msk             (0x1UL << TPI_FFSR_FtNonStop_Pos)           /*!< TPI FFS
1169:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1170:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_TCPresent_Pos              2                                          /*!< TPI FFS
1171:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_TCPresent_Msk             (0x1UL << TPI_FFSR_TCPresent_Pos)           /*!< TPI FFS
1172:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1173:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_FtStopped_Pos              1                                          /*!< TPI FFS
1174:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_FtStopped_Msk             (0x1UL << TPI_FFSR_FtStopped_Pos)           /*!< TPI FFS
1175:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1176:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_FlInProg_Pos               0                                          /*!< TPI FFS
1177:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_FlInProg_Msk              (0x1UL << TPI_FFSR_FlInProg_Pos)            /*!< TPI FFS
1178:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1179:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI Formatter and Flush Control Register Definitions */
1180:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFCR_TrigIn_Pos                 8                                          /*!< TPI FFC
1181:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFCR_TrigIn_Msk                (0x1UL << TPI_FFCR_TrigIn_Pos)              /*!< TPI FFC
1182:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1183:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFCR_EnFCont_Pos                1                                          /*!< TPI FFC
1184:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFCR_EnFCont_Msk               (0x1UL << TPI_FFCR_EnFCont_Pos)             /*!< TPI FFC
1185:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1186:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI TRIGGER Register Definitions */
1187:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_TRIGGER_TRIGGER_Pos             0                                          /*!< TPI TRI
1188:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_TRIGGER_TRIGGER_Msk            (0x1UL << TPI_TRIGGER_TRIGGER_Pos)          /*!< TPI TRI
1189:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1190:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI Integration ETM Data Register Definitions (FIFO0) */
1191:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ITM_ATVALID_Pos          29                                          /*!< TPI FIF
1192:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ITM_ATVALID_Msk          (0x3UL << TPI_FIFO0_ITM_ATVALID_Pos)        /*!< TPI FIF
1193:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1194:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ITM_bytecount_Pos        27                                          /*!< TPI FIF
1195:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ITM_bytecount_Msk        (0x3UL << TPI_FIFO0_ITM_bytecount_Pos)      /*!< TPI FIF
1196:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1197:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM_ATVALID_Pos          26                                          /*!< TPI FIF
1198:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM_ATVALID_Msk          (0x3UL << TPI_FIFO0_ETM_ATVALID_Pos)        /*!< TPI FIF
ARM GAS  /tmp/ccVHQYWs.s 			page 56


1199:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1200:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM_bytecount_Pos        24                                          /*!< TPI FIF
1201:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM_bytecount_Msk        (0x3UL << TPI_FIFO0_ETM_bytecount_Pos)      /*!< TPI FIF
1202:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1203:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM2_Pos                 16                                          /*!< TPI FIF
1204:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM2_Msk                 (0xFFUL << TPI_FIFO0_ETM2_Pos)              /*!< TPI FIF
1205:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1206:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM1_Pos                  8                                          /*!< TPI FIF
1207:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM1_Msk                 (0xFFUL << TPI_FIFO0_ETM1_Pos)              /*!< TPI FIF
1208:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1209:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM0_Pos                  0                                          /*!< TPI FIF
1210:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM0_Msk                 (0xFFUL << TPI_FIFO0_ETM0_Pos)              /*!< TPI FIF
1211:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1212:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI ITATBCTR2 Register Definitions */
1213:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_ITATBCTR2_ATREADY_Pos           0                                          /*!< TPI ITA
1214:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_ITATBCTR2_ATREADY_Msk          (0x1UL << TPI_ITATBCTR2_ATREADY_Pos)        /*!< TPI ITA
1215:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1216:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI Integration ITM Data Register Definitions (FIFO1) */
1217:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM_ATVALID_Pos          29                                          /*!< TPI FIF
1218:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM_ATVALID_Msk          (0x3UL << TPI_FIFO1_ITM_ATVALID_Pos)        /*!< TPI FIF
1219:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1220:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM_bytecount_Pos        27                                          /*!< TPI FIF
1221:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM_bytecount_Msk        (0x3UL << TPI_FIFO1_ITM_bytecount_Pos)      /*!< TPI FIF
1222:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1223:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ETM_ATVALID_Pos          26                                          /*!< TPI FIF
1224:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ETM_ATVALID_Msk          (0x3UL << TPI_FIFO1_ETM_ATVALID_Pos)        /*!< TPI FIF
1225:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1226:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ETM_bytecount_Pos        24                                          /*!< TPI FIF
1227:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ETM_bytecount_Msk        (0x3UL << TPI_FIFO1_ETM_bytecount_Pos)      /*!< TPI FIF
1228:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1229:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM2_Pos                 16                                          /*!< TPI FIF
1230:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM2_Msk                 (0xFFUL << TPI_FIFO1_ITM2_Pos)              /*!< TPI FIF
1231:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1232:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM1_Pos                  8                                          /*!< TPI FIF
1233:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM1_Msk                 (0xFFUL << TPI_FIFO1_ITM1_Pos)              /*!< TPI FIF
1234:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1235:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM0_Pos                  0                                          /*!< TPI FIF
1236:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM0_Msk                 (0xFFUL << TPI_FIFO1_ITM0_Pos)              /*!< TPI FIF
1237:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1238:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI ITATBCTR0 Register Definitions */
1239:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_ITATBCTR0_ATREADY_Pos           0                                          /*!< TPI ITA
1240:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_ITATBCTR0_ATREADY_Msk          (0x1UL << TPI_ITATBCTR0_ATREADY_Pos)        /*!< TPI ITA
1241:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1242:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI Integration Mode Control Register Definitions */
1243:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_ITCTRL_Mode_Pos                 0                                          /*!< TPI ITC
1244:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_ITCTRL_Mode_Msk                (0x1UL << TPI_ITCTRL_Mode_Pos)              /*!< TPI ITC
1245:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1246:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI DEVID Register Definitions */
1247:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_NRZVALID_Pos             11                                          /*!< TPI DEV
1248:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_NRZVALID_Msk             (0x1UL << TPI_DEVID_NRZVALID_Pos)           /*!< TPI DEV
1249:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1250:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_MANCVALID_Pos            10                                          /*!< TPI DEV
1251:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_MANCVALID_Msk            (0x1UL << TPI_DEVID_MANCVALID_Pos)          /*!< TPI DEV
1252:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1253:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_PTINVALID_Pos             9                                          /*!< TPI DEV
1254:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_PTINVALID_Msk            (0x1UL << TPI_DEVID_PTINVALID_Pos)          /*!< TPI DEV
1255:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/ccVHQYWs.s 			page 57


1256:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_MinBufSz_Pos              6                                          /*!< TPI DEV
1257:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_MinBufSz_Msk             (0x7UL << TPI_DEVID_MinBufSz_Pos)           /*!< TPI DEV
1258:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1259:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_AsynClkIn_Pos             5                                          /*!< TPI DEV
1260:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_AsynClkIn_Msk            (0x1UL << TPI_DEVID_AsynClkIn_Pos)          /*!< TPI DEV
1261:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1262:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_NrTraceInput_Pos          0                                          /*!< TPI DEV
1263:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_NrTraceInput_Msk         (0x1FUL << TPI_DEVID_NrTraceInput_Pos)      /*!< TPI DEV
1264:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1265:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI DEVTYPE Register Definitions */
1266:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVTYPE_SubType_Pos             0                                          /*!< TPI DEV
1267:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVTYPE_SubType_Msk            (0xFUL << TPI_DEVTYPE_SubType_Pos)          /*!< TPI DEV
1268:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1269:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVTYPE_MajorType_Pos           4                                          /*!< TPI DEV
1270:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVTYPE_MajorType_Msk          (0xFUL << TPI_DEVTYPE_MajorType_Pos)        /*!< TPI DEV
1271:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1272:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@}*/ /* end of group CMSIS_TPI */
1273:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1274:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1275:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if (__MPU_PRESENT == 1)
1276:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
1277:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_MPU     Memory Protection Unit (MPU)
1278:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the Memory Protection Unit (MPU)
1279:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
1280:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1281:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1282:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the Memory Protection Unit (MPU).
1283:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1284:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
1285:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1286:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t TYPE;                    /*!< Offset: 0x000 (R/ )  MPU Type Register               
1287:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CTRL;                    /*!< Offset: 0x004 (R/W)  MPU Control Register            
1288:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RNR;                     /*!< Offset: 0x008 (R/W)  MPU Region RNRber Register      
1289:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RBAR;                    /*!< Offset: 0x00C (R/W)  MPU Region Base Address Register
1290:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RASR;                    /*!< Offset: 0x010 (R/W)  MPU Region Attribute and Size Re
1291:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RBAR_A1;                 /*!< Offset: 0x014 (R/W)  MPU Alias 1 Region Base Address 
1292:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RASR_A1;                 /*!< Offset: 0x018 (R/W)  MPU Alias 1 Region Attribute and
1293:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RBAR_A2;                 /*!< Offset: 0x01C (R/W)  MPU Alias 2 Region Base Address 
1294:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RASR_A2;                 /*!< Offset: 0x020 (R/W)  MPU Alias 2 Region Attribute and
1295:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RBAR_A3;                 /*!< Offset: 0x024 (R/W)  MPU Alias 3 Region Base Address 
1296:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RASR_A3;                 /*!< Offset: 0x028 (R/W)  MPU Alias 3 Region Attribute and
1297:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } MPU_Type;
1298:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1299:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* MPU Type Register */
1300:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_TYPE_IREGION_Pos               16                                             /*!< MPU 
1301:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_TYPE_IREGION_Msk               (0xFFUL << MPU_TYPE_IREGION_Pos)               /*!< MPU 
1302:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1303:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_TYPE_DREGION_Pos                8                                             /*!< MPU 
1304:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_TYPE_DREGION_Msk               (0xFFUL << MPU_TYPE_DREGION_Pos)               /*!< MPU 
1305:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1306:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_TYPE_SEPARATE_Pos               0                                             /*!< MPU 
1307:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_TYPE_SEPARATE_Msk              (1UL << MPU_TYPE_SEPARATE_Pos)                 /*!< MPU 
1308:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1309:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* MPU Control Register */
1310:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_CTRL_PRIVDEFENA_Pos             2                                             /*!< MPU 
1311:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_CTRL_PRIVDEFENA_Msk            (1UL << MPU_CTRL_PRIVDEFENA_Pos)               /*!< MPU 
1312:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/ccVHQYWs.s 			page 58


1313:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_CTRL_HFNMIENA_Pos               1                                             /*!< MPU 
1314:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_CTRL_HFNMIENA_Msk              (1UL << MPU_CTRL_HFNMIENA_Pos)                 /*!< MPU 
1315:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1316:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_CTRL_ENABLE_Pos                 0                                             /*!< MPU 
1317:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_CTRL_ENABLE_Msk                (1UL << MPU_CTRL_ENABLE_Pos)                   /*!< MPU 
1318:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* MPU Region Number Register */
1320:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RNR_REGION_Pos                  0                                             /*!< MPU 
1321:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RNR_REGION_Msk                 (0xFFUL << MPU_RNR_REGION_Pos)                 /*!< MPU 
1322:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1323:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* MPU Region Base Address Register */
1324:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RBAR_ADDR_Pos                   5                                             /*!< MPU 
1325:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RBAR_ADDR_Msk                  (0x7FFFFFFUL << MPU_RBAR_ADDR_Pos)             /*!< MPU 
1326:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1327:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RBAR_VALID_Pos                  4                                             /*!< MPU 
1328:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RBAR_VALID_Msk                 (1UL << MPU_RBAR_VALID_Pos)                    /*!< MPU 
1329:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1330:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RBAR_REGION_Pos                 0                                             /*!< MPU 
1331:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RBAR_REGION_Msk                (0xFUL << MPU_RBAR_REGION_Pos)                 /*!< MPU 
1332:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1333:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* MPU Region Attribute and Size Register */
1334:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_ATTRS_Pos                 16                                             /*!< MPU 
1335:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_ATTRS_Msk                 (0xFFFFUL << MPU_RASR_ATTRS_Pos)               /*!< MPU 
1336:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1337:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_XN_Pos                    28                                             /*!< MPU 
1338:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_XN_Msk                    (1UL << MPU_RASR_XN_Pos)                       /*!< MPU 
1339:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1340:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_AP_Pos                    24                                             /*!< MPU 
1341:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_AP_Msk                    (0x7UL << MPU_RASR_AP_Pos)                     /*!< MPU 
1342:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1343:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_TEX_Pos                   19                                             /*!< MPU 
1344:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_TEX_Msk                   (0x7UL << MPU_RASR_TEX_Pos)                    /*!< MPU 
1345:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1346:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_S_Pos                     18                                             /*!< MPU 
1347:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_S_Msk                     (1UL << MPU_RASR_S_Pos)                        /*!< MPU 
1348:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1349:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_C_Pos                     17                                             /*!< MPU 
1350:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_C_Msk                     (1UL << MPU_RASR_C_Pos)                        /*!< MPU 
1351:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1352:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_B_Pos                     16                                             /*!< MPU 
1353:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_B_Msk                     (1UL << MPU_RASR_B_Pos)                        /*!< MPU 
1354:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1355:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_SRD_Pos                    8                                             /*!< MPU 
1356:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_SRD_Msk                   (0xFFUL << MPU_RASR_SRD_Pos)                   /*!< MPU 
1357:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1358:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_SIZE_Pos                   1                                             /*!< MPU 
1359:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_SIZE_Msk                  (0x1FUL << MPU_RASR_SIZE_Pos)                  /*!< MPU 
1360:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1361:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_ENABLE_Pos                 0                                             /*!< MPU 
1362:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_ENABLE_Msk                (1UL << MPU_RASR_ENABLE_Pos)                   /*!< MPU 
1363:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1364:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_MPU */
1365:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
1366:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1367:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1368:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if (__FPU_PRESENT == 1)
1369:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
ARM GAS  /tmp/ccVHQYWs.s 			page 59


1370:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_FPU     Floating Point Unit (FPU)
1371:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the Floating Point Unit (FPU)
1372:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
1373:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1374:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1375:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the Floating Point Unit (FPU).
1376:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1377:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
1378:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1379:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED0[1];
1380:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FPCCR;                   /*!< Offset: 0x004 (R/W)  Floating-Point Context Control R
1381:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FPCAR;                   /*!< Offset: 0x008 (R/W)  Floating-Point Context Address R
1382:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FPDSCR;                  /*!< Offset: 0x00C (R/W)  Floating-Point Default Status Co
1383:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t MVFR0;                   /*!< Offset: 0x010 (R/ )  Media and FP Feature Register 0 
1384:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t MVFR1;                   /*!< Offset: 0x014 (R/ )  Media and FP Feature Register 1 
1385:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t MVFR2;                   /*!< Offset: 0x018 (R/ )  Media and FP Feature Register 2 
1386:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } FPU_Type;
1387:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1388:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Floating-Point Context Control Register */
1389:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_ASPEN_Pos                31                                             /*!< FPCC
1390:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_ASPEN_Msk                (1UL << FPU_FPCCR_ASPEN_Pos)                   /*!< FPCC
1391:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1392:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_LSPEN_Pos                30                                             /*!< FPCC
1393:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_LSPEN_Msk                (1UL << FPU_FPCCR_LSPEN_Pos)                   /*!< FPCC
1394:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1395:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_MONRDY_Pos                8                                             /*!< FPCC
1396:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_MONRDY_Msk               (1UL << FPU_FPCCR_MONRDY_Pos)                  /*!< FPCC
1397:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1398:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_BFRDY_Pos                 6                                             /*!< FPCC
1399:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_BFRDY_Msk                (1UL << FPU_FPCCR_BFRDY_Pos)                   /*!< FPCC
1400:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1401:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_MMRDY_Pos                 5                                             /*!< FPCC
1402:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_MMRDY_Msk                (1UL << FPU_FPCCR_MMRDY_Pos)                   /*!< FPCC
1403:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1404:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_HFRDY_Pos                 4                                             /*!< FPCC
1405:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_HFRDY_Msk                (1UL << FPU_FPCCR_HFRDY_Pos)                   /*!< FPCC
1406:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1407:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_THREAD_Pos                3                                             /*!< FPCC
1408:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_THREAD_Msk               (1UL << FPU_FPCCR_THREAD_Pos)                  /*!< FPCC
1409:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1410:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_USER_Pos                  1                                             /*!< FPCC
1411:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_USER_Msk                 (1UL << FPU_FPCCR_USER_Pos)                    /*!< FPCC
1412:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1413:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_LSPACT_Pos                0                                             /*!< FPCC
1414:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_LSPACT_Msk               (1UL << FPU_FPCCR_LSPACT_Pos)                  /*!< FPCC
1415:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1416:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Floating-Point Context Address Register */
1417:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCAR_ADDRESS_Pos               3                                             /*!< FPCA
1418:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCAR_ADDRESS_Msk              (0x1FFFFFFFUL << FPU_FPCAR_ADDRESS_Pos)        /*!< FPCA
1419:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1420:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Floating-Point Default Status Control Register */
1421:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_AHP_Pos                 26                                             /*!< FPDS
1422:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_AHP_Msk                 (1UL << FPU_FPDSCR_AHP_Pos)                    /*!< FPDS
1423:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1424:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_DN_Pos                  25                                             /*!< FPDS
1425:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_DN_Msk                  (1UL << FPU_FPDSCR_DN_Pos)                     /*!< FPDS
1426:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/ccVHQYWs.s 			page 60


1427:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_FZ_Pos                  24                                             /*!< FPDS
1428:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_FZ_Msk                  (1UL << FPU_FPDSCR_FZ_Pos)                     /*!< FPDS
1429:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1430:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_RMode_Pos               22                                             /*!< FPDS
1431:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_RMode_Msk               (3UL << FPU_FPDSCR_RMode_Pos)                  /*!< FPDS
1432:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1433:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Media and FP Feature Register 0 */
1434:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_FP_rounding_modes_Pos    28                                             /*!< MVFR
1435:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_FP_rounding_modes_Msk    (0xFUL << FPU_MVFR0_FP_rounding_modes_Pos)     /*!< MVFR
1436:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1437:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Short_vectors_Pos        24                                             /*!< MVFR
1438:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Short_vectors_Msk        (0xFUL << FPU_MVFR0_Short_vectors_Pos)         /*!< MVFR
1439:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1440:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Square_root_Pos          20                                             /*!< MVFR
1441:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Square_root_Msk          (0xFUL << FPU_MVFR0_Square_root_Pos)           /*!< MVFR
1442:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1443:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Divide_Pos               16                                             /*!< MVFR
1444:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Divide_Msk               (0xFUL << FPU_MVFR0_Divide_Pos)                /*!< MVFR
1445:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1446:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_FP_excep_trapping_Pos    12                                             /*!< MVFR
1447:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_FP_excep_trapping_Msk    (0xFUL << FPU_MVFR0_FP_excep_trapping_Pos)     /*!< MVFR
1448:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1449:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Double_precision_Pos      8                                             /*!< MVFR
1450:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Double_precision_Msk     (0xFUL << FPU_MVFR0_Double_precision_Pos)      /*!< MVFR
1451:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1452:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Single_precision_Pos      4                                             /*!< MVFR
1453:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Single_precision_Msk     (0xFUL << FPU_MVFR0_Single_precision_Pos)      /*!< MVFR
1454:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1455:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_A_SIMD_registers_Pos      0                                             /*!< MVFR
1456:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_A_SIMD_registers_Msk     (0xFUL << FPU_MVFR0_A_SIMD_registers_Pos)      /*!< MVFR
1457:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1458:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Media and FP Feature Register 1 */
1459:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_FP_fused_MAC_Pos         28                                             /*!< MVFR
1460:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_FP_fused_MAC_Msk         (0xFUL << FPU_MVFR1_FP_fused_MAC_Pos)          /*!< MVFR
1461:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1462:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_FP_HPFP_Pos              24                                             /*!< MVFR
1463:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_FP_HPFP_Msk              (0xFUL << FPU_MVFR1_FP_HPFP_Pos)               /*!< MVFR
1464:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1465:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_D_NaN_mode_Pos            4                                             /*!< MVFR
1466:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_D_NaN_mode_Msk           (0xFUL << FPU_MVFR1_D_NaN_mode_Pos)            /*!< MVFR
1467:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1468:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_FtZ_mode_Pos              0                                             /*!< MVFR
1469:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_FtZ_mode_Msk             (0xFUL << FPU_MVFR1_FtZ_mode_Pos)              /*!< MVFR
1470:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1471:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Media and FP Feature Register 2 */
1472:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1473:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_FPU */
1474:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
1475:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1476:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1477:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
1478:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_CoreDebug       Core Debug Registers (CoreDebug)
1479:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the Core Debug Registers
1480:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
1481:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1482:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1483:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the Core Debug Register (CoreDebug).
ARM GAS  /tmp/ccVHQYWs.s 			page 61


1484:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1485:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
1486:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1487:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t DHCSR;                   /*!< Offset: 0x000 (R/W)  Debug Halting Control and Status
1488:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t DCRSR;                   /*!< Offset: 0x004 ( /W)  Debug Core Register Selector Reg
1489:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t DCRDR;                   /*!< Offset: 0x008 (R/W)  Debug Core Register Data Registe
1490:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t DEMCR;                   /*!< Offset: 0x00C (R/W)  Debug Exception and Monitor Cont
1491:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } CoreDebug_Type;
1492:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1493:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Debug Halting Control and Status Register */
1494:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_DBGKEY_Pos         16                                             /*!< Core
1495:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_DBGKEY_Msk         (0xFFFFUL << CoreDebug_DHCSR_DBGKEY_Pos)       /*!< Core
1496:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1497:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_RESET_ST_Pos     25                                             /*!< Core
1498:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_RESET_ST_Msk     (1UL << CoreDebug_DHCSR_S_RESET_ST_Pos)        /*!< Core
1499:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1500:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_RETIRE_ST_Pos    24                                             /*!< Core
1501:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_RETIRE_ST_Msk    (1UL << CoreDebug_DHCSR_S_RETIRE_ST_Pos)       /*!< Core
1502:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1503:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_LOCKUP_Pos       19                                             /*!< Core
1504:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_LOCKUP_Msk       (1UL << CoreDebug_DHCSR_S_LOCKUP_Pos)          /*!< Core
1505:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1506:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_SLEEP_Pos        18                                             /*!< Core
1507:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_SLEEP_Msk        (1UL << CoreDebug_DHCSR_S_SLEEP_Pos)           /*!< Core
1508:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1509:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_HALT_Pos         17                                             /*!< Core
1510:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_HALT_Msk         (1UL << CoreDebug_DHCSR_S_HALT_Pos)            /*!< Core
1511:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1512:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_REGRDY_Pos       16                                             /*!< Core
1513:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_REGRDY_Msk       (1UL << CoreDebug_DHCSR_S_REGRDY_Pos)          /*!< Core
1514:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1515:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_SNAPSTALL_Pos     5                                             /*!< Core
1516:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_SNAPSTALL_Msk    (1UL << CoreDebug_DHCSR_C_SNAPSTALL_Pos)       /*!< Core
1517:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1518:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_MASKINTS_Pos      3                                             /*!< Core
1519:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_MASKINTS_Msk     (1UL << CoreDebug_DHCSR_C_MASKINTS_Pos)        /*!< Core
1520:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1521:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_STEP_Pos          2                                             /*!< Core
1522:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_STEP_Msk         (1UL << CoreDebug_DHCSR_C_STEP_Pos)            /*!< Core
1523:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1524:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_HALT_Pos          1                                             /*!< Core
1525:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_HALT_Msk         (1UL << CoreDebug_DHCSR_C_HALT_Pos)            /*!< Core
1526:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1527:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_DEBUGEN_Pos       0                                             /*!< Core
1528:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_DEBUGEN_Msk      (1UL << CoreDebug_DHCSR_C_DEBUGEN_Pos)         /*!< Core
1529:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1530:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Debug Core Register Selector Register */
1531:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DCRSR_REGWnR_Pos         16                                             /*!< Core
1532:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DCRSR_REGWnR_Msk         (1UL << CoreDebug_DCRSR_REGWnR_Pos)            /*!< Core
1533:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1534:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DCRSR_REGSEL_Pos          0                                             /*!< Core
1535:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DCRSR_REGSEL_Msk         (0x1FUL << CoreDebug_DCRSR_REGSEL_Pos)         /*!< Core
1536:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1537:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Debug Exception and Monitor Control Register */
1538:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_TRCENA_Pos         24                                             /*!< Core
1539:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_TRCENA_Msk         (1UL << CoreDebug_DEMCR_TRCENA_Pos)            /*!< Core
1540:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/ccVHQYWs.s 			page 62


1541:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_REQ_Pos        19                                             /*!< Core
1542:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_REQ_Msk        (1UL << CoreDebug_DEMCR_MON_REQ_Pos)           /*!< Core
1543:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1544:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_STEP_Pos       18                                             /*!< Core
1545:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_STEP_Msk       (1UL << CoreDebug_DEMCR_MON_STEP_Pos)          /*!< Core
1546:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1547:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_PEND_Pos       17                                             /*!< Core
1548:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_PEND_Msk       (1UL << CoreDebug_DEMCR_MON_PEND_Pos)          /*!< Core
1549:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1550:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_EN_Pos         16                                             /*!< Core
1551:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_EN_Msk         (1UL << CoreDebug_DEMCR_MON_EN_Pos)            /*!< Core
1552:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1553:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_HARDERR_Pos     10                                             /*!< Core
1554:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_HARDERR_Msk     (1UL << CoreDebug_DEMCR_VC_HARDERR_Pos)        /*!< Core
1555:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1556:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_INTERR_Pos       9                                             /*!< Core
1557:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_INTERR_Msk      (1UL << CoreDebug_DEMCR_VC_INTERR_Pos)         /*!< Core
1558:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1559:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_BUSERR_Pos       8                                             /*!< Core
1560:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_BUSERR_Msk      (1UL << CoreDebug_DEMCR_VC_BUSERR_Pos)         /*!< Core
1561:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1562:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_STATERR_Pos      7                                             /*!< Core
1563:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_STATERR_Msk     (1UL << CoreDebug_DEMCR_VC_STATERR_Pos)        /*!< Core
1564:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1565:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_CHKERR_Pos       6                                             /*!< Core
1566:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_CHKERR_Msk      (1UL << CoreDebug_DEMCR_VC_CHKERR_Pos)         /*!< Core
1567:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1568:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_NOCPERR_Pos      5                                             /*!< Core
1569:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_NOCPERR_Msk     (1UL << CoreDebug_DEMCR_VC_NOCPERR_Pos)        /*!< Core
1570:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1571:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_MMERR_Pos        4                                             /*!< Core
1572:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_MMERR_Msk       (1UL << CoreDebug_DEMCR_VC_MMERR_Pos)          /*!< Core
1573:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1574:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_CORERESET_Pos    0                                             /*!< Core
1575:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_CORERESET_Msk   (1UL << CoreDebug_DEMCR_VC_CORERESET_Pos)      /*!< Core
1576:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1577:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_CoreDebug */
1578:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1579:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1580:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup    CMSIS_core_register
1581:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup   CMSIS_core_base     Core Definitions
1582:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Definitions for base addresses, unions, and structures.
1583:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
1584:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1585:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1586:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Memory mapping of Cortex-M4 Hardware */
1587:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCS_BASE            (0xE000E000UL)                            /*!< System Control Space Bas
1588:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_BASE            (0xE0000000UL)                            /*!< ITM Base Address        
1589:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_BASE            (0xE0001000UL)                            /*!< DWT Base Address        
1590:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_BASE            (0xE0040000UL)                            /*!< TPI Base Address        
1591:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_BASE      (0xE000EDF0UL)                            /*!< Core Debug Base Address 
1592:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_BASE        (SCS_BASE +  0x0010UL)                    /*!< SysTick Base Address    
1593:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define NVIC_BASE           (SCS_BASE +  0x0100UL)                    /*!< NVIC Base Address       
1594:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_BASE            (SCS_BASE +  0x0D00UL)                    /*!< System Control Block Bas
1595:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1596:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB              ((SCnSCB_Type    *)     SCS_BASE      )   /*!< System control Register 
1597:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB                 ((SCB_Type       *)     SCB_BASE      )   /*!< SCB configuration struct
ARM GAS  /tmp/ccVHQYWs.s 			page 63


1598:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick             ((SysTick_Type   *)     SysTick_BASE  )   /*!< SysTick configuration st
1599:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define NVIC                ((NVIC_Type      *)     NVIC_BASE     )   /*!< NVIC configuration struc
1600:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM                 ((ITM_Type       *)     ITM_BASE      )   /*!< ITM configuration struct
1601:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT                 ((DWT_Type       *)     DWT_BASE      )   /*!< DWT configuration struct
1602:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI                 ((TPI_Type       *)     TPI_BASE      )   /*!< TPI configuration struct
1603:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug           ((CoreDebug_Type *)     CoreDebug_BASE)   /*!< Core Debug configuration
1604:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1605:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if (__MPU_PRESENT == 1)
1606:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define MPU_BASE          (SCS_BASE +  0x0D90UL)                    /*!< Memory Protection Unit  
1607:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define MPU               ((MPU_Type       *)     MPU_BASE      )   /*!< Memory Protection Unit  
1608:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
1609:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1610:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if (__FPU_PRESENT == 1)
1611:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define FPU_BASE          (SCS_BASE +  0x0F30UL)                    /*!< Floating Point Unit     
1612:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define FPU               ((FPU_Type       *)     FPU_BASE      )   /*!< Floating Point Unit     
1613:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
1614:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1615:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} */
1616:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1617:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1618:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1619:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*******************************************************************************
1620:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  *                Hardware Abstraction Layer
1621:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   Core Function Interface contains:
1622:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core NVIC Functions
1623:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core SysTick Functions
1624:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core Debug Functions
1625:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core Register Access Functions
1626:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  ******************************************************************************/
1627:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \defgroup CMSIS_Core_FunctionInterface Functions and Instructions Reference
1628:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** */
1629:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1630:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1631:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1632:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* ##########################   NVIC functions  #################################### */
1633:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_Core_FunctionInterface
1634:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_Core_NVICFunctions NVIC Functions
1635:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Functions that manage interrupts and exceptions via the NVIC.
1636:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     @{
1637:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1638:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1639:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Set Priority Grouping
1640:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1641:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   The function sets the priority grouping field using the required unlock sequence.
1642:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   The parameter PriorityGroup is assigned to the field SCB->AIRCR [10:8] PRIGROUP field.
1643:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   Only values from 0..7 are used.
1644:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   In case of a conflict between priority grouping and available
1645:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   priority bits (__NVIC_PRIO_BITS), the smallest possible priority group is set.
1646:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1647:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]      PriorityGroup  Priority grouping field.
1648:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1649:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
1650:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1651:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   uint32_t reg_value;
1652:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07);               /* only values 0..7 a
1653:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1654:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   reg_value  =  SCB->AIRCR;                                                   /* read old register 
ARM GAS  /tmp/ccVHQYWs.s 			page 64


1655:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   reg_value &= ~(SCB_AIRCR_VECTKEY_Msk | SCB_AIRCR_PRIGROUP_Msk);             /* clear bits to chan
1656:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   reg_value  =  (reg_value                                 |
1657:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****                 ((uint32_t)0x5FA << SCB_AIRCR_VECTKEY_Pos) |
1658:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****                 (PriorityGroupTmp << 8));                                     /* Insert write key a
1659:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   SCB->AIRCR =  reg_value;
1660:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1661:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1662:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1663:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Get Priority Grouping
1664:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1665:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   The function reads the priority grouping field from the NVIC Interrupt Controller.
1666:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1667:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \return                Priority grouping field (SCB->AIRCR [10:8] PRIGROUP field).
1668:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1669:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE uint32_t NVIC_GetPriorityGrouping(void)
1670:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1671:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   return ((SCB->AIRCR & SCB_AIRCR_PRIGROUP_Msk) >> SCB_AIRCR_PRIGROUP_Pos);   /* read priority grou
1672:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1673:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1674:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1675:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Enable External Interrupt
1676:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1677:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function enables a device-specific interrupt in the NVIC interrupt controller.
1678:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1679:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]      IRQn  External interrupt number. Value cannot be negative.
1680:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1681:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void NVIC_EnableIRQ(IRQn_Type IRQn)
1682:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1683:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*  NVIC->ISER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  enable interrupt */
1684:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   NVIC->ISER[(uint32_t)((int32_t)IRQn) >> 5] = (uint32_t)(1 << ((uint32_t)((int32_t)IRQn) & (uint32
1685:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1686:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1687:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1688:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Disable External Interrupt
1689:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1690:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function disables a device-specific interrupt in the NVIC interrupt controller.
1691:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1692:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]      IRQn  External interrupt number. Value cannot be negative.
1693:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1694:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void NVIC_DisableIRQ(IRQn_Type IRQn)
1695:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1696:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   NVIC->ICER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F)); /* disable interrupt */
1697:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1698:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1699:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1700:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Get Pending Interrupt
1701:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1702:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function reads the pending register in the NVIC and returns the pending bit
1703:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     for the specified interrupt.
1704:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1705:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]      IRQn  Interrupt number.
1706:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1707:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \return             0  Interrupt status is not pending.
1708:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \return             1  Interrupt status is pending.
1709:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1710:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
1711:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
ARM GAS  /tmp/ccVHQYWs.s 			page 65


1712:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   return((uint32_t) ((NVIC->ISPR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0)); 
1713:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1714:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1715:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1716:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Set Pending Interrupt
1717:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1718:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function sets the pending bit of an external interrupt.
1719:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1720:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]      IRQn  Interrupt number. Value cannot be negative.
1721:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1722:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void NVIC_SetPendingIRQ(IRQn_Type IRQn)
1723:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1724:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   NVIC->ISPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F)); /* set interrupt pending 
1725:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1726:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1727:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1728:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Clear Pending Interrupt
1729:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1730:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function clears the pending bit of an external interrupt.
1731:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1732:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]      IRQn  External interrupt number. Value cannot be negative.
1733:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1734:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
1735:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1736:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   NVIC->ICPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F)); /* Clear pending interrup
1737:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1738:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1739:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1740:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Get Active Interrupt
1741:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1742:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function reads the active register in NVIC and returns the active bit.
1743:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1744:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]      IRQn  Interrupt number.
1745:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1746:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \return             0  Interrupt status is not active.
1747:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \return             1  Interrupt status is active.
1748:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1749:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE uint32_t NVIC_GetActive(IRQn_Type IRQn)
1750:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1751:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   return((uint32_t)((NVIC->IABR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0)); /
1752:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1753:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1754:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1755:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Set Interrupt Priority
1756:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1757:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function sets the priority of an interrupt.
1758:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1759:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \note The priority cannot be set for every core interrupt.
1760:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1761:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]      IRQn  Interrupt number.
1762:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]  priority  Priority to set.
1763:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1764:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
1765:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1766:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   if(IRQn < 0) {
1767:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     SCB->SHPR[((uint32_t)(IRQn) & 0xF)-4] = ((priority << (8 - __NVIC_PRIO_BITS)) & 0xff); } /* set
1768:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   else {
ARM GAS  /tmp/ccVHQYWs.s 			page 66


1769:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     NVIC->IP[(uint32_t)(IRQn)]            = ((priority << (8 - __NVIC_PRIO_BITS)) & 0xff); } /* set
1770:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1771:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1772:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1773:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Get Interrupt Priority
1774:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1775:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function reads the priority of an interrupt. The interrupt
1776:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     number can be positive to specify an external (device specific)
1777:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     interrupt, or negative to specify an internal (core) interrupt.
1778:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1779:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1780:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]   IRQn  Interrupt number.
1781:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \return             Interrupt Priority. Value is aligned automatically to the implemented
1782:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****                         priority bits of the microcontroller.
1783:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1784:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE uint32_t NVIC_GetPriority(IRQn_Type IRQn)
1785:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1786:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1787:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   if(IRQn < 0) {
1788:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     return((uint32_t)(SCB->SHPR[((uint32_t)(IRQn) & 0xF)-4] >> (8 - __NVIC_PRIO_BITS)));  } /* get 
1789:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   else {
1790:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     return((uint32_t)(NVIC->IP[(uint32_t)(IRQn)]            >> (8 - __NVIC_PRIO_BITS)));  } /* get 
1791:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1792:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1793:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1794:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Encode Priority
1795:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1796:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function encodes the priority for an interrupt with the given priority group,
1797:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     preemptive priority value, and subpriority value.
1798:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     In case of a conflict between priority grouping and available
1799:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     priority bits (__NVIC_PRIO_BITS), the smallest possible priority group is set.
1800:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1801:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]     PriorityGroup  Used priority group.
1802:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]   PreemptPriority  Preemptive priority value (starting from 0).
1803:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]       SubPriority  Subpriority value (starting from 0).
1804:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \return                        Encoded priority. Value can be used in the function \ref NVIC_Se
1805:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1806:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uin
1807:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1808:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);          /* only values 0..7 are used        
1809:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   uint32_t PreemptPriorityBits;
1810:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   uint32_t SubPriorityBits;
1811:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1812:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   PreemptPriorityBits = ((7 - PriorityGroupTmp) > __NVIC_PRIO_BITS) ? __NVIC_PRIO_BITS : 7 - Priori
1813:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   SubPriorityBits     = ((PriorityGroupTmp + __NVIC_PRIO_BITS) < 7) ? 0 : PriorityGroupTmp - 7 + __
1814:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1815:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   return (
1816:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****            ((PreemptPriority & ((1 << (PreemptPriorityBits)) - 1)) << SubPriorityBits) |
1817:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****            ((SubPriority     & ((1 << (SubPriorityBits    )) - 1)))
1818:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****          );
1819:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1820:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1821:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1822:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Decode Priority
1823:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1824:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function decodes an interrupt priority value with a given priority group to
1825:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     preemptive priority value and subpriority value.
ARM GAS  /tmp/ccVHQYWs.s 			page 67


1826:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     In case of a conflict between priority grouping and available
1827:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     priority bits (__NVIC_PRIO_BITS) the smallest possible priority group is set.
1828:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1829:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]         Priority   Priority value, which can be retrieved with the function \ref NV
1830:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]     PriorityGroup  Used priority group.
1831:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [out] pPreemptPriority  Preemptive priority value (starting from 0).
1832:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [out]     pSubPriority  Subpriority value (starting from 0).
1833:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1834:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* pPre
1835:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1836:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);          /* only values 0..7 are used        
1837:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   uint32_t PreemptPriorityBits;
1838:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   uint32_t SubPriorityBits;
1839:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1840:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   PreemptPriorityBits = ((7 - PriorityGroupTmp) > __NVIC_PRIO_BITS) ? __NVIC_PRIO_BITS : 7 - Priori
1841:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   SubPriorityBits     = ((PriorityGroupTmp + __NVIC_PRIO_BITS) < 7) ? 0 : PriorityGroupTmp - 7 + __
1842:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1843:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   *pPreemptPriority = (Priority >> SubPriorityBits) & ((1 << (PreemptPriorityBits)) - 1);
1844:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   *pSubPriority     = (Priority                   ) & ((1 << (SubPriorityBits    )) - 1);
1845:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1846:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1847:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1848:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  System Reset
1849:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1850:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function initiates a system reset request to reset the MCU.
1851:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1852:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void NVIC_SystemReset(void)
1853:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1854:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __DSB();                                                     /* Ensure all outstanding memory acc
1855:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****                                                                   buffered write are completed befo
1856:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   SCB->AIRCR  = ((0x5FA << SCB_AIRCR_VECTKEY_Pos)      |
1857:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****                  (SCB->AIRCR & SCB_AIRCR_PRIGROUP_Msk) |
1858:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****                  SCB_AIRCR_SYSRESETREQ_Msk);                   /* Keep priority group unchanged */
1859:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __DSB();                                                     /* Ensure completion of memory acces
1860:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   while(1);                                                    /* wait until reset */
1861:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1862:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1863:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of CMSIS_Core_NVICFunctions */
1864:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1865:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1866:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* ##########################  Cache functions  #################################### */
1867:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_Core_FunctionInterface
1868:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_Core_CacheFunctions Cache Functions
1869:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Functions that configure Instruction and Data cache.
1870:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     @{
1871:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1872:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1873:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Cache Size ID Register Macros */
1874:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CCSIDR_WAYS(x)         (((x) & SCB_CCSIDR_ASSOCIATIVITY_Msk) >> SCB_CCSIDR_ASSOCIATIVITY_Po
1875:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CCSIDR_SETS(x)         (((x) & SCB_CCSIDR_NUMSETS_Msk      ) >> SCB_CCSIDR_NUMSETS_Pos     
1876:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CCSIDR_LSSHIFT(x)      (((x) & SCB_CCSIDR_LINESIZE_Msk     ) >> SCB_CCSIDR_LINESIZE_Pos    
1877:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1878:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1879:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief Enable I-Cache
1880:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1881:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function turns on I-Cache
1882:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   */
ARM GAS  /tmp/ccVHQYWs.s 			page 68


1883:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void SCB_EnableICache(void)
1884:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1885:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #if (__ICACHE_PRESENT == 1)
1886:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __DSB();
1887:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __ISB();
1888:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     SCB->ICIALLU = 0;                       // invalidate I-Cache
1889:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     SCB->CCR |=  SCB_CCR_IC_Msk;            // enable I-Cache
1890:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __DSB();
1891:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __ISB();
1892:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
1893:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1894:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1895:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1896:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief Disable I-Cache
1897:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1898:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function turns off I-Cache
1899:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   */
1900:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void SCB_DisableICache(void)
1901:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1902:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #if (__ICACHE_PRESENT == 1)
1903:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __DSB();
1904:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __ISB();
1905:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     SCB->CCR &= ~SCB_CCR_IC_Msk;            // disable I-Cache
1906:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     SCB->ICIALLU = 0;                       // invalidate I-Cache
1907:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __DSB();
1908:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __ISB();
1909:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
1910:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1911:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1912:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1913:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief Invalidate I-Cache
1914:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1915:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function invalidates I-Cache
1916:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   */
1917:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void SCB_InvalidateICache(void)
1918:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1919:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #if (__ICACHE_PRESENT == 1)
1920:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __DSB();
1921:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __ISB();
1922:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     SCB->ICIALLU = 0;
1923:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __DSB();
1924:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __ISB();
1925:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
1926:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1927:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1928:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1929:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief Enable D-Cache
1930:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1931:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function turns on D-Cache
1932:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   */
1933:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void SCB_EnableDCache(void)
1934:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1935:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #if (__DCACHE_PRESENT == 1)
1936:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t ccsidr, sshift, wshift, sw;
1937:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t sets, ways;
1938:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1939:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     ccsidr  = SCB->CCSIDR;
ARM GAS  /tmp/ccVHQYWs.s 			page 69


1940:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     sets    = CCSIDR_SETS(ccsidr);
1941:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     sshift  = CCSIDR_LSSHIFT(ccsidr) + 4;
1942:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     ways    = CCSIDR_WAYS(ccsidr);
1943:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     wshift  = __CLZ(ways) & 0x1f;
1944:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1945:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __DSB();
1946:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1947:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     do {                                    // invalidate D-Cache
1948:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****          int32_t tmpways = ways;
1949:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****          do {
1950:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****               sw = ((tmpways << wshift) | (sets << sshift));
1951:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****               SCB->DCISW = sw;
1952:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****             } while(tmpways--);
1953:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****         } while(sets--);
1954:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __DSB();
1955:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1956:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     SCB->CCR |=  SCB_CCR_DC_Msk;            // enable D-Cache
1957:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1958:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __DSB();
1959:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __ISB();
1960:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
1961:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1962:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1963:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1964:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief Disable D-Cache
1965:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1966:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function turns off D-Cache
1967:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   */
1968:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void SCB_DisableDCache(void)
1969:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1970:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #if (__DCACHE_PRESENT == 1)
1971:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t ccsidr, sshift, wshift, sw;
1972:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t sets, ways;
1973:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1974:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     ccsidr  = SCB->CCSIDR;
1975:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     sets    = CCSIDR_SETS(ccsidr);
1976:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     sshift  = CCSIDR_LSSHIFT(ccsidr) + 4;
1977:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     ways    = CCSIDR_WAYS(ccsidr);
1978:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     wshift  = __CLZ(ways) & 0x1f;
1979:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1980:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __DSB();
1981:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1982:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     SCB->CCR &= ~SCB_CCR_DC_Msk;            // disable D-Cache
1983:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1984:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     do {                                    // clean & invalidate D-Cache
1985:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****          int32_t tmpways = ways;
1986:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****          do {
1987:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****               sw = ((tmpways << wshift) | (sets << sshift));
1988:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****               SCB->DCCISW = sw;
1989:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****             } while(tmpways--);
1990:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****         } while(sets--);
1991:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1992:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1993:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __DSB();
1994:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __ISB();
1995:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  #endif
1996:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
ARM GAS  /tmp/ccVHQYWs.s 			page 70


1997:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1998:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1999:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief Invalidate D-Cache
2000:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
2001:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function invalidates D-Cache
2002:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   */
2003:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void SCB_InvalidateDCache(void)
2004:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
2005:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #if (__DCACHE_PRESENT == 1)
2006:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t ccsidr, sshift, wshift, sw;
2007:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t sets, ways;
2008:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
2009:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     ccsidr  = SCB->CCSIDR;
2010:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     sets    = CCSIDR_SETS(ccsidr);
2011:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     sshift  = CCSIDR_LSSHIFT(ccsidr) + 4;
2012:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     ways    = CCSIDR_WAYS(ccsidr);
2013:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     wshift  = __CLZ(ways) & 0x1f;
2014:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
2015:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __DSB();
2016:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
2017:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     do {                                    // invalidate D-Cache
2018:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****          int32_t tmpways = ways;
2019:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****          do {
2020:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****               sw = ((tmpways << wshift) | (sets << sshift));
2021:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****               SCB->DCISW = sw;
2022:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****             } while(tmpways--);
2023:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****         } while(sets--);
2024:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
2025:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __DSB();
2026:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __ISB();
2027:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  #endif
2028:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
2029:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
2030:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
2031:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief Clean D-Cache
2032:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
2033:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function cleans D-Cache
2034:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   */
2035:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void SCB_CleanDCache(void)
2036:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
2037:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #if (__DCACHE_PRESENT == 1)
2038:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t ccsidr, sshift, wshift, sw;
2039:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t sets, ways;
2040:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
2041:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     ccsidr  = SCB->CCSIDR;
2042:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     sets    = CCSIDR_SETS(ccsidr);
2043:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     sshift  = CCSIDR_LSSHIFT(ccsidr) + 4;
2044:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     ways    = CCSIDR_WAYS(ccsidr);
2045:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     wshift  = __CLZ(ways) & 0x1f;
2046:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
2047:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __DSB();
2048:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
2049:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     do {                                    // clean D-Cache
2050:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****          int32_t tmpways = ways;
2051:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****          do {
2052:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****               sw = ((tmpways << wshift) | (sets << sshift));
2053:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****               SCB->DCCSW = sw;
ARM GAS  /tmp/ccVHQYWs.s 			page 71


2054:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****             } while(tmpways--);
2055:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****         } while(sets--);
2056:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
2057:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __DSB();
2058:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __ISB();
2059:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  #endif
2060:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
2061:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
2062:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
2063:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief Clean & Invalidate D-Cache
2064:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
2065:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function cleans and Invalidates D-Cache
2066:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   */
2067:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void SCB_CleanInvalidateDCache(void)
2068:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
2069:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #if (__DCACHE_PRESENT == 1)
2070:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t ccsidr, sshift, wshift, sw;
2071:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t sets, ways;
2072:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
2073:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     ccsidr  = SCB->CCSIDR;
2074:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     sets    = CCSIDR_SETS(ccsidr);
2075:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     sshift  = CCSIDR_LSSHIFT(ccsidr) + 4;
2076:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     ways    = CCSIDR_WAYS(ccsidr);
2077:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     wshift  = __CLZ(ways) & 0x1f;
2078:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
2079:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __DSB();
2080:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
2081:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     do {                                    // clean & invalidate D-Cache
2082:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****          int32_t tmpways = ways;
2083:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****          do {
2084:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****               sw = ((tmpways << wshift) | (sets << sshift));
2085:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****               SCB->DCCISW = sw;
2086:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****             } while(tmpways--);
2087:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****         } while(sets--);
2088:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
2089:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __DSB();
2090:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __ISB();
2091:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  #endif
2092:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
2093:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
2094:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
2095:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of CMSIS_Core_CacheFunctions */
2096:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
2097:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
2098:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
2099:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* ##################################    SysTick function  ########################################
2100:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_Core_FunctionInterface
2101:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_Core_SysTickFunctions SysTick Functions
2102:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Functions that configure the System.
2103:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
2104:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
2105:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
2106:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if (__Vendor_SysTickConfig == 0)
2107:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
2108:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  System Tick Configuration
2109:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
2110:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function initializes the System Timer and its interrupt, and starts the System Tick Timer.
ARM GAS  /tmp/ccVHQYWs.s 			page 72


2111:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     Counter is in free running mode to generate periodic interrupts.
2112:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
2113:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]  ticks  Number of ticks between two interrupts.
2114:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
2115:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \return          0  Function succeeded.
2116:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \return          1  Function failed.
2117:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
2118:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \note     When the variable <b>__Vendor_SysTickConfig</b> is set to 1, then the
2119:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     function <b>SysTick_Config</b> is not included. In this case, the file <b><i>device</i>.h</b>
2120:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     must contain a vendor-specific implementation of this function.
2121:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
2122:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
2123:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE uint32_t SysTick_Config(uint32_t ticks)
2124:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
2125:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   if ((ticks - 1) > SysTick_LOAD_RELOAD_Msk)  return (1);      /* Reload value impossible */
 383              		.loc 6 2125 0
 384 009a 013B     		subs	r3, r3, #1
 385 009c B3F1807F 		cmp	r3, #16777216
 386 00a0 0DD2     		bcs	.L12
2126:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
2127:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   SysTick->LOAD  = ticks - 1;                                  /* set reload register */
 387              		.loc 6 2127 0
 388 00a2 124A     		ldr	r2, .L18+44
 389              	.LBB78:
 390              	.LBB79:
1767:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   else {
 391              		.loc 6 1767 0
 392 00a4 E025     		movs	r5, #224
 393 00a6 0C4C     		ldr	r4, .L18+24
 394              	.LBE79:
 395              	.LBE78:
2128:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   NVIC_SetPriority (SysTick_IRQn, (1<<__NVIC_PRIO_BITS) - 1);  /* set Priority for Systick Interrup
2129:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   SysTick->VAL   = 0;                                          /* Load the SysTick Counter Value */
 396              		.loc 6 2129 0
 397 00a8 0020     		movs	r0, #0
2130:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk |
 398              		.loc 6 2130 0
 399 00aa 0721     		movs	r1, #7
2127:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   NVIC_SetPriority (SysTick_IRQn, (1<<__NVIC_PRIO_BITS) - 1);  /* set Priority for Systick Interrup
 400              		.loc 6 2127 0
 401 00ac 5360     		str	r3, [r2, #4]
 402              	.LVL16:
 403              	.LBB81:
 404              	.LBB80:
1767:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   else {
 405              		.loc 6 1767 0
 406 00ae 84F82350 		strb	r5, [r4, #35]
 407              	.LVL17:
 408              	.LBE80:
 409              	.LBE81:
2129:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk |
 410              		.loc 6 2129 0
 411 00b2 9060     		str	r0, [r2, #8]
 412              		.loc 6 2130 0
 413 00b4 1160     		str	r1, [r2]
 414              	.LBE77:
 415              	.LBE76:
ARM GAS  /tmp/ccVHQYWs.s 			page 73


 372:../variants/same70/startup_same70.c **** 
 416              		.loc 1 372 0
 417 00b6 BDE83840 		pop	{r3, r4, r5, lr}
 418              		.cfi_remember_state
 419              		.cfi_restore 14
 420              		.cfi_restore 5
 421              		.cfi_restore 4
 422              		.cfi_restore 3
 423              		.cfi_def_cfa_offset 0
 371:../variants/same70/startup_same70.c **** }
 424              		.loc 1 371 0
 425 00ba FFF7FEBF 		b	AppMain
 426              	.LVL18:
 427              	.L12:
 428              		.cfi_restore_state
 429              	.L15:
 430 00be FEE7     		b	.L15
 431              	.L19:
 432              		.align	2
 433              	.L18:
 434 00c0 00000000 		.word	_etext
 435 00c4 00000000 		.word	_srelocate
 436 00c8 00000000 		.word	_erelocate
 437 00cc 00000000 		.word	_szero
 438 00d0 00000000 		.word	_ezero
 439 00d4 00000000 		.word	_sfixed
 440 00d8 00ED00E0 		.word	-536810240
 441 00dc 88ED00E0 		.word	-536810104
 442 00e0 00000000 		.word	g_interrupt_enabled
 443 00e4 00000000 		.word	SystemCoreClock
 444 00e8 D34D6210 		.word	274877907
 445 00ec 10E000E0 		.word	-536813552
 446              		.cfi_endproc
 447              	.LFE146:
 448              		.size	Reset_Handler, .-Reset_Handler
 449              		.section	.text.SysTick_Handler,"ax",%progbits
 450              		.align	1
 451              		.p2align 2,,3
 452              		.global	SysTick_Handler
 453              		.syntax unified
 454              		.thumb
 455              		.thumb_func
 456              		.fpu fpv5-d16
 457              		.type	SysTick_Handler, %function
 458              	SysTick_Handler:
 459              	.LFB145:
  95:../variants/same70/startup_same70.c **** 	if (sysTickHook())
 460              		.loc 1 95 0
 461              		.cfi_startproc
 462              		@ args = 0, pretend = 0, frame = 0
 463              		@ frame_needed = 0, uses_anonymous_args = 0
 464 0000 08B5     		push	{r3, lr}
 465              		.cfi_def_cfa_offset 8
 466              		.cfi_offset 3, -8
 467              		.cfi_offset 14, -4
  96:../variants/same70/startup_same70.c **** 		return;
 468              		.loc 1 96 0
ARM GAS  /tmp/ccVHQYWs.s 			page 74


 469 0002 FFF7FEFF 		bl	sysTickHook
 470              	.LVL19:
 471 0006 00B1     		cbz	r0, .L23
 472 0008 08BD     		pop	{r3, pc}
 473              	.L23:
 474              	.LBB84:
 475              	.LBB85:
  99:../variants/same70/startup_same70.c **** 	TimeTick_Increment();						// increment tick count each ms
 476              		.loc 1 99 0
 477 000a 0348     		ldr	r0, .L24
 478 000c FFF7FEFF 		bl	wdt_restart
 479              	.LVL20:
 480              	.LBE85:
 481              	.LBE84:
 101:../variants/same70/startup_same70.c **** 
 482              		.loc 1 101 0
 483 0010 BDE80840 		pop	{r3, lr}
 484              		.cfi_restore 14
 485              		.cfi_restore 3
 486              		.cfi_def_cfa_offset 0
 487              	.LBB87:
 488              	.LBB86:
 100:../variants/same70/startup_same70.c **** }
 489              		.loc 1 100 0
 490 0014 FFF7FEBF 		b	TimeTick_Increment
 491              	.LVL21:
 492              	.L25:
 493              		.align	2
 494              	.L24:
 495 0018 50180E40 		.word	1074665552
 496              	.LBE86:
 497              	.LBE87:
 498              		.cfi_endproc
 499              	.LFE145:
 500              		.size	SysTick_Handler, .-SysTick_Handler
 501              		.global	exception_table
 502              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 503              		.align	2
 504              		.type	cpu_irq_critical_section_counter, %object
 505              		.size	cpu_irq_critical_section_counter, 4
 506              	cpu_irq_critical_section_counter:
 507 0000 00000000 		.space	4
 508              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 509              		.type	cpu_irq_prev_interrupt_state, %object
 510              		.size	cpu_irq_prev_interrupt_state, 1
 511              	cpu_irq_prev_interrupt_state:
 512 0000 00       		.space	1
 513              		.section	.vectors,"a",%progbits
 514              		.align	2
 515              		.type	exception_table, %object
 516              		.size	exception_table, 320
 517              	exception_table:
 518 0000 00000000 		.word	_estack
 519 0004 00000000 		.word	Reset_Handler
 520 0008 00000000 		.word	NMI_Handler
 521 000c 00000000 		.word	HardFault_Handler
 522 0010 00000000 		.word	MemManage_Handler
ARM GAS  /tmp/ccVHQYWs.s 			page 75


 523 0014 00000000 		.word	BusFault_Handler
 524 0018 00000000 		.word	UsageFault_Handler
 525 001c 00000000 		.word	0
 526 0020 00000000 		.word	0
 527 0024 00000000 		.word	0
 528 0028 00000000 		.word	0
 529 002c 00000000 		.word	SVC_Handler
 530 0030 00000000 		.word	DebugMon_Handler
 531 0034 00000000 		.word	0
 532 0038 00000000 		.word	PendSV_Handler
 533 003c 00000000 		.word	SysTick_Handler
 534 0040 00000000 		.word	SUPC_Handler
 535 0044 00000000 		.word	RSTC_Handler
 536 0048 00000000 		.word	RTC_Handler
 537 004c 00000000 		.word	RTT_Handler
 538 0050 00000000 		.word	WDT_Handler
 539 0054 00000000 		.word	PMC_Handler
 540 0058 00000000 		.word	EFC_Handler
 541 005c 00000000 		.word	UART0_Handler
 542 0060 00000000 		.word	UART1_Handler
 543 0064 00000000 		.word	0
 544 0068 00000000 		.word	PIOA_Handler
 545 006c 00000000 		.word	PIOB_Handler
 546 0070 00000000 		.word	PIOC_Handler
 547 0074 00000000 		.word	USART0_Handler
 548 0078 00000000 		.word	USART1_Handler
 549 007c 00000000 		.word	USART2_Handler
 550 0080 00000000 		.word	PIOD_Handler
 551 0084 00000000 		.word	PIOE_Handler
 552 0088 00000000 		.word	HSMCI_Handler
 553 008c 00000000 		.word	TWIHS0_Handler
 554 0090 00000000 		.word	TWIHS1_Handler
 555 0094 00000000 		.word	SPI0_Handler
 556 0098 00000000 		.word	SSC_Handler
 557 009c 00000000 		.word	TC0_Handler
 558 00a0 00000000 		.word	TC1_Handler
 559 00a4 00000000 		.word	TC2_Handler
 560 00a8 00000000 		.word	TC3_Handler
 561 00ac 00000000 		.word	TC4_Handler
 562 00b0 00000000 		.word	TC5_Handler
 563 00b4 00000000 		.word	AFEC0_Handler
 564 00b8 00000000 		.word	DACC_Handler
 565 00bc 00000000 		.word	PWM0_Handler
 566 00c0 00000000 		.word	ICM_Handler
 567 00c4 00000000 		.word	ACC_Handler
 568 00c8 00000000 		.word	USBHS_Handler
 569 00cc 00000000 		.word	MCAN0_Handler
 570 00d0 00000000 		.word	0
 571 00d4 00000000 		.word	MCAN1_Handler
 572 00d8 00000000 		.word	0
 573 00dc 00000000 		.word	GMAC_Handler
 574 00e0 00000000 		.word	AFEC1_Handler
 575 00e4 00000000 		.word	TWIHS2_Handler
 576 00e8 00000000 		.word	SPI1_Handler
 577 00ec 00000000 		.word	QSPI_Handler
 578 00f0 00000000 		.word	UART2_Handler
 579 00f4 00000000 		.word	UART3_Handler
ARM GAS  /tmp/ccVHQYWs.s 			page 76


 580 00f8 00000000 		.word	UART4_Handler
 581 00fc 00000000 		.word	TC6_Handler
 582 0100 00000000 		.word	TC7_Handler
 583 0104 00000000 		.word	TC8_Handler
 584 0108 00000000 		.word	TC9_Handler
 585 010c 00000000 		.word	TC10_Handler
 586 0110 00000000 		.word	TC11_Handler
 587 0114 00000000 		.word	0
 588 0118 00000000 		.word	0
 589 011c 00000000 		.word	0
 590 0120 00000000 		.word	AES_Handler
 591 0124 00000000 		.word	TRNG_Handler
 592 0128 00000000 		.word	XDMAC_Handler
 593 012c 00000000 		.word	ISI_Handler
 594 0130 00000000 		.word	PWM1_Handler
 595 0134 00000000 		.word	0
 596 0138 00000000 		.word	SDRAMC_Handler
 597 013c 00000000 		.word	RSWDT_Handler
 598              		.text
 599              	.Letext0:
 600              		.file 7 "/usr/include/newlib/machine/_default_types.h"
 601              		.file 8 "/usr/include/newlib/sys/_stdint.h"
 602              		.file 9 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/same70q21.h"
 603              		.file 10 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 604              		.file 11 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/wdt
 605              		.file 12 "/usr/include/newlib/sys/lock.h"
 606              		.file 13 "/usr/include/newlib/sys/_types.h"
 607              		.file 14 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 608              		.file 15 "/usr/include/newlib/sys/reent.h"
 609              		.file 16 "/usr/include/newlib/stdlib.h"
 610              		.file 17 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/wdt/wdt.h"
 611              		.section	.debug_info,"",%progbits
 612              	.Ldebug_info0:
 613 0000 66170000 		.4byte	0x1766
 614 0004 0400     		.2byte	0x4
 615 0006 00000000 		.4byte	.Ldebug_abbrev0
 616 000a 04       		.byte	0x4
 617 000b 01       		.uleb128 0x1
 618 000c 730E0000 		.4byte	.LASF383
 619 0010 0C       		.byte	0xc
 620 0011 0D010000 		.4byte	.LASF384
 621 0015 450F0000 		.4byte	.LASF385
 622 0019 30000000 		.4byte	.Ldebug_ranges0+0x30
 623 001d 00000000 		.4byte	0
 624 0021 00000000 		.4byte	.Ldebug_line0
 625 0025 02       		.uleb128 0x2
 626 0026 04       		.byte	0x4
 627 0027 07       		.byte	0x7
 628 0028 43010000 		.4byte	.LASF0
 629 002c 02       		.uleb128 0x2
 630 002d 01       		.byte	0x1
 631 002e 06       		.byte	0x6
 632 002f E50F0000 		.4byte	.LASF1
 633 0033 03       		.uleb128 0x3
 634 0034 220C0000 		.4byte	.LASF5
 635 0038 07       		.byte	0x7
 636 0039 1D       		.byte	0x1d
ARM GAS  /tmp/ccVHQYWs.s 			page 77


 637 003a 3E000000 		.4byte	0x3e
 638 003e 02       		.uleb128 0x2
 639 003f 01       		.byte	0x1
 640 0040 08       		.byte	0x8
 641 0041 D90D0000 		.4byte	.LASF2
 642 0045 02       		.uleb128 0x2
 643 0046 02       		.byte	0x2
 644 0047 05       		.byte	0x5
 645 0048 F1010000 		.4byte	.LASF3
 646 004c 02       		.uleb128 0x2
 647 004d 02       		.byte	0x2
 648 004e 07       		.byte	0x7
 649 004f 03100000 		.4byte	.LASF4
 650 0053 03       		.uleb128 0x3
 651 0054 EB060000 		.4byte	.LASF6
 652 0058 07       		.byte	0x7
 653 0059 3F       		.byte	0x3f
 654 005a 5E000000 		.4byte	0x5e
 655 005e 02       		.uleb128 0x2
 656 005f 04       		.byte	0x4
 657 0060 05       		.byte	0x5
 658 0061 EA0A0000 		.4byte	.LASF7
 659 0065 03       		.uleb128 0x3
 660 0066 260A0000 		.4byte	.LASF8
 661 006a 07       		.byte	0x7
 662 006b 41       		.byte	0x41
 663 006c 70000000 		.4byte	0x70
 664 0070 02       		.uleb128 0x2
 665 0071 04       		.byte	0x4
 666 0072 07       		.byte	0x7
 667 0073 150D0000 		.4byte	.LASF9
 668 0077 02       		.uleb128 0x2
 669 0078 08       		.byte	0x8
 670 0079 05       		.byte	0x5
 671 007a F9070000 		.4byte	.LASF10
 672 007e 02       		.uleb128 0x2
 673 007f 08       		.byte	0x8
 674 0080 07       		.byte	0x7
 675 0081 1C040000 		.4byte	.LASF11
 676 0085 04       		.uleb128 0x4
 677 0086 04       		.byte	0x4
 678 0087 05       		.byte	0x5
 679 0088 696E7400 		.ascii	"int\000"
 680 008c 03       		.uleb128 0x3
 681 008d 68070000 		.4byte	.LASF12
 682 0091 08       		.byte	0x8
 683 0092 18       		.byte	0x18
 684 0093 33000000 		.4byte	0x33
 685 0097 05       		.uleb128 0x5
 686 0098 8C000000 		.4byte	0x8c
 687 009c 03       		.uleb128 0x3
 688 009d 560D0000 		.4byte	.LASF13
 689 00a1 08       		.byte	0x8
 690 00a2 2C       		.byte	0x2c
 691 00a3 53000000 		.4byte	0x53
 692 00a7 05       		.uleb128 0x5
 693 00a8 9C000000 		.4byte	0x9c
ARM GAS  /tmp/ccVHQYWs.s 			page 78


 694 00ac 03       		.uleb128 0x3
 695 00ad 5C010000 		.4byte	.LASF14
 696 00b1 08       		.byte	0x8
 697 00b2 30       		.byte	0x30
 698 00b3 65000000 		.4byte	0x65
 699 00b7 05       		.uleb128 0x5
 700 00b8 AC000000 		.4byte	0xac
 701 00bc 06       		.uleb128 0x6
 702 00bd B7000000 		.4byte	0xb7
 703 00c1 07       		.uleb128 0x7
 704 00c2 050A0000 		.4byte	.LASF366
 705 00c6 01       		.byte	0x1
 706 00c7 2C000000 		.4byte	0x2c
 707 00cb 09       		.byte	0x9
 708 00cc 48       		.byte	0x48
 709 00cd 64020000 		.4byte	0x264
 710 00d1 08       		.uleb128 0x8
 711 00d2 1E0B0000 		.4byte	.LASF15
 712 00d6 72       		.sleb128 -14
 713 00d7 08       		.uleb128 0x8
 714 00d8 41100000 		.4byte	.LASF16
 715 00dc 73       		.sleb128 -13
 716 00dd 08       		.uleb128 0x8
 717 00de 02030000 		.4byte	.LASF17
 718 00e2 74       		.sleb128 -12
 719 00e3 08       		.uleb128 0x8
 720 00e4 BA080000 		.4byte	.LASF18
 721 00e8 75       		.sleb128 -11
 722 00e9 08       		.uleb128 0x8
 723 00ea C10D0000 		.4byte	.LASF19
 724 00ee 76       		.sleb128 -10
 725 00ef 08       		.uleb128 0x8
 726 00f0 020E0000 		.4byte	.LASF20
 727 00f4 7B       		.sleb128 -5
 728 00f5 08       		.uleb128 0x8
 729 00f6 AF0D0000 		.4byte	.LASF21
 730 00fa 7C       		.sleb128 -4
 731 00fb 08       		.uleb128 0x8
 732 00fc 07090000 		.4byte	.LASF22
 733 0100 7E       		.sleb128 -2
 734 0101 08       		.uleb128 0x8
 735 0102 83010000 		.4byte	.LASF23
 736 0106 7F       		.sleb128 -1
 737 0107 09       		.uleb128 0x9
 738 0108 7A0D0000 		.4byte	.LASF24
 739 010c 00       		.byte	0
 740 010d 09       		.uleb128 0x9
 741 010e 3B000000 		.4byte	.LASF25
 742 0112 01       		.byte	0x1
 743 0113 09       		.uleb128 0x9
 744 0114 740A0000 		.4byte	.LASF26
 745 0118 02       		.byte	0x2
 746 0119 09       		.uleb128 0x9
 747 011a 360F0000 		.4byte	.LASF27
 748 011e 03       		.byte	0x3
 749 011f 09       		.uleb128 0x9
 750 0120 B1080000 		.4byte	.LASF28
ARM GAS  /tmp/ccVHQYWs.s 			page 79


 751 0124 04       		.byte	0x4
 752 0125 09       		.uleb128 0x9
 753 0126 EC100000 		.4byte	.LASF29
 754 012a 05       		.byte	0x5
 755 012b 09       		.uleb128 0x9
 756 012c A7010000 		.4byte	.LASF30
 757 0130 06       		.byte	0x6
 758 0131 09       		.uleb128 0x9
 759 0132 5E0B0000 		.4byte	.LASF31
 760 0136 07       		.byte	0x7
 761 0137 09       		.uleb128 0x9
 762 0138 88050000 		.4byte	.LASF32
 763 013c 08       		.byte	0x8
 764 013d 09       		.uleb128 0x9
 765 013e 2D090000 		.4byte	.LASF33
 766 0142 0A       		.byte	0xa
 767 0143 09       		.uleb128 0x9
 768 0144 70070000 		.4byte	.LASF34
 769 0148 0B       		.byte	0xb
 770 0149 09       		.uleb128 0x9
 771 014a B7010000 		.4byte	.LASF35
 772 014e 0C       		.byte	0xc
 773 014f 09       		.uleb128 0x9
 774 0150 4B020000 		.4byte	.LASF36
 775 0154 0D       		.byte	0xd
 776 0155 09       		.uleb128 0x9
 777 0156 F30A0000 		.4byte	.LASF37
 778 015a 0E       		.byte	0xe
 779 015b 09       		.uleb128 0x9
 780 015c 3B050000 		.4byte	.LASF38
 781 0160 0F       		.byte	0xf
 782 0161 09       		.uleb128 0x9
 783 0162 E90B0000 		.4byte	.LASF39
 784 0166 10       		.byte	0x10
 785 0167 09       		.uleb128 0x9
 786 0168 99040000 		.4byte	.LASF40
 787 016c 11       		.byte	0x11
 788 016d 09       		.uleb128 0x9
 789 016e CB0A0000 		.4byte	.LASF41
 790 0172 12       		.byte	0x12
 791 0173 09       		.uleb128 0x9
 792 0174 49060000 		.4byte	.LASF42
 793 0178 13       		.byte	0x13
 794 0179 09       		.uleb128 0x9
 795 017a 35100000 		.4byte	.LASF43
 796 017e 14       		.byte	0x14
 797 017f 09       		.uleb128 0x9
 798 0180 5B090000 		.4byte	.LASF44
 799 0184 15       		.byte	0x15
 800 0185 09       		.uleb128 0x9
 801 0186 0D060000 		.4byte	.LASF45
 802 018a 16       		.byte	0x16
 803 018b 09       		.uleb128 0x9
 804 018c 21050000 		.4byte	.LASF46
 805 0190 17       		.byte	0x17
 806 0191 09       		.uleb128 0x9
 807 0192 E3100000 		.4byte	.LASF47
ARM GAS  /tmp/ccVHQYWs.s 			page 80


 808 0196 18       		.byte	0x18
 809 0197 09       		.uleb128 0x9
 810 0198 74090000 		.4byte	.LASF48
 811 019c 19       		.byte	0x19
 812 019d 09       		.uleb128 0x9
 813 019e FB010000 		.4byte	.LASF49
 814 01a2 1A       		.byte	0x1a
 815 01a3 09       		.uleb128 0x9
 816 01a4 C50C0000 		.4byte	.LASF50
 817 01a8 1B       		.byte	0x1b
 818 01a9 09       		.uleb128 0x9
 819 01aa 9A060000 		.4byte	.LASF51
 820 01ae 1C       		.byte	0x1c
 821 01af 09       		.uleb128 0x9
 822 01b0 DD030000 		.4byte	.LASF52
 823 01b4 1D       		.byte	0x1d
 824 01b5 09       		.uleb128 0x9
 825 01b6 6A0A0000 		.4byte	.LASF53
 826 01ba 1E       		.byte	0x1e
 827 01bb 09       		.uleb128 0x9
 828 01bc 49080000 		.4byte	.LASF54
 829 01c0 1F       		.byte	0x1f
 830 01c1 09       		.uleb128 0x9
 831 01c2 69060000 		.4byte	.LASF55
 832 01c6 20       		.byte	0x20
 833 01c7 09       		.uleb128 0x9
 834 01c8 0F000000 		.4byte	.LASF56
 835 01cc 21       		.byte	0x21
 836 01cd 09       		.uleb128 0x9
 837 01ce 8C090000 		.4byte	.LASF57
 838 01d2 22       		.byte	0x22
 839 01d3 09       		.uleb128 0x9
 840 01d4 F10F0000 		.4byte	.LASF58
 841 01d8 23       		.byte	0x23
 842 01d9 09       		.uleb128 0x9
 843 01da 37090000 		.4byte	.LASF59
 844 01de 25       		.byte	0x25
 845 01df 09       		.uleb128 0x9
 846 01e0 E0010000 		.4byte	.LASF60
 847 01e4 27       		.byte	0x27
 848 01e5 09       		.uleb128 0x9
 849 01e6 1B0F0000 		.4byte	.LASF61
 850 01ea 28       		.byte	0x28
 851 01eb 09       		.uleb128 0x9
 852 01ec 25060000 		.4byte	.LASF62
 853 01f0 29       		.byte	0x29
 854 01f1 09       		.uleb128 0x9
 855 01f2 D3030000 		.4byte	.LASF63
 856 01f6 2A       		.byte	0x2a
 857 01f7 09       		.uleb128 0x9
 858 01f8 81030000 		.4byte	.LASF64
 859 01fc 2B       		.byte	0x2b
 860 01fd 09       		.uleb128 0x9
 861 01fe 2B0F0000 		.4byte	.LASF65
 862 0202 2C       		.byte	0x2c
 863 0203 09       		.uleb128 0x9
 864 0204 68080000 		.4byte	.LASF66
ARM GAS  /tmp/ccVHQYWs.s 			page 81


 865 0208 2D       		.byte	0x2d
 866 0209 09       		.uleb128 0x9
 867 020a 57020000 		.4byte	.LASF67
 868 020e 2E       		.byte	0x2e
 869 020f 09       		.uleb128 0x9
 870 0210 80100000 		.4byte	.LASF68
 871 0214 2F       		.byte	0x2f
 872 0215 09       		.uleb128 0x9
 873 0216 42090000 		.4byte	.LASF69
 874 021a 30       		.byte	0x30
 875 021b 09       		.uleb128 0x9
 876 021c 04010000 		.4byte	.LASF70
 877 0220 31       		.byte	0x31
 878 0221 09       		.uleb128 0x9
 879 0222 3D0C0000 		.4byte	.LASF71
 880 0226 32       		.byte	0x32
 881 0227 09       		.uleb128 0x9
 882 0228 EE0C0000 		.4byte	.LASF72
 883 022c 33       		.byte	0x33
 884 022d 09       		.uleb128 0x9
 885 022e 1E000000 		.4byte	.LASF73
 886 0232 34       		.byte	0x34
 887 0233 09       		.uleb128 0x9
 888 0234 D2080000 		.4byte	.LASF74
 889 0238 38       		.byte	0x38
 890 0239 09       		.uleb128 0x9
 891 023a 72060000 		.4byte	.LASF75
 892 023e 39       		.byte	0x39
 893 023f 09       		.uleb128 0x9
 894 0240 C1020000 		.4byte	.LASF76
 895 0244 3A       		.byte	0x3a
 896 0245 09       		.uleb128 0x9
 897 0246 4B070000 		.4byte	.LASF77
 898 024a 3B       		.byte	0x3b
 899 024b 09       		.uleb128 0x9
 900 024c 41020000 		.4byte	.LASF78
 901 0250 3C       		.byte	0x3c
 902 0251 09       		.uleb128 0x9
 903 0252 6A020000 		.4byte	.LASF79
 904 0256 3E       		.byte	0x3e
 905 0257 09       		.uleb128 0x9
 906 0258 630E0000 		.4byte	.LASF80
 907 025c 3F       		.byte	0x3f
 908 025d 09       		.uleb128 0x9
 909 025e BC0F0000 		.4byte	.LASF81
 910 0262 40       		.byte	0x40
 911 0263 00       		.byte	0
 912 0264 03       		.uleb128 0x3
 913 0265 E5040000 		.4byte	.LASF82
 914 0269 09       		.byte	0x9
 915 026a 91       		.byte	0x91
 916 026b C1000000 		.4byte	0xc1
 917 026f 0A       		.uleb128 0xa
 918 0270 B0060000 		.4byte	.LASF241
 919 0274 4001     		.2byte	0x140
 920 0276 09       		.byte	0x9
 921 0277 93       		.byte	0x93
ARM GAS  /tmp/ccVHQYWs.s 			page 82


 922 0278 4D060000 		.4byte	0x64d
 923 027c 0B       		.uleb128 0xb
 924 027d 43070000 		.4byte	.LASF83
 925 0281 09       		.byte	0x9
 926 0282 96       		.byte	0x96
 927 0283 4D060000 		.4byte	0x64d
 928 0287 00       		.byte	0
 929 0288 0B       		.uleb128 0xb
 930 0289 32070000 		.4byte	.LASF84
 931 028d 09       		.byte	0x9
 932 028e 99       		.byte	0x99
 933 028f 4D060000 		.4byte	0x64d
 934 0293 04       		.byte	0x4
 935 0294 0B       		.uleb128 0xb
 936 0295 55060000 		.4byte	.LASF85
 937 0299 09       		.byte	0x9
 938 029a 9A       		.byte	0x9a
 939 029b 4D060000 		.4byte	0x64d
 940 029f 08       		.byte	0x8
 941 02a0 0B       		.uleb128 0xb
 942 02a1 AB0C0000 		.4byte	.LASF86
 943 02a5 09       		.byte	0x9
 944 02a6 9B       		.byte	0x9b
 945 02a7 4D060000 		.4byte	0x64d
 946 02ab 0C       		.byte	0xc
 947 02ac 0B       		.uleb128 0xb
 948 02ad EF040000 		.4byte	.LASF87
 949 02b1 09       		.byte	0x9
 950 02b2 9C       		.byte	0x9c
 951 02b3 4D060000 		.4byte	0x64d
 952 02b7 10       		.byte	0x10
 953 02b8 0B       		.uleb128 0xb
 954 02b9 9B0D0000 		.4byte	.LASF88
 955 02bd 09       		.byte	0x9
 956 02be 9D       		.byte	0x9d
 957 02bf 4D060000 		.4byte	0x64d
 958 02c3 14       		.byte	0x14
 959 02c4 0B       		.uleb128 0xb
 960 02c5 12070000 		.4byte	.LASF89
 961 02c9 09       		.byte	0x9
 962 02ca 9E       		.byte	0x9e
 963 02cb 4D060000 		.4byte	0x64d
 964 02cf 18       		.byte	0x18
 965 02d0 0B       		.uleb128 0xb
 966 02d1 740F0000 		.4byte	.LASF90
 967 02d5 09       		.byte	0x9
 968 02d6 9F       		.byte	0x9f
 969 02d7 4D060000 		.4byte	0x64d
 970 02db 1C       		.byte	0x1c
 971 02dc 0B       		.uleb128 0xb
 972 02dd ED020000 		.4byte	.LASF91
 973 02e1 09       		.byte	0x9
 974 02e2 A0       		.byte	0xa0
 975 02e3 4D060000 		.4byte	0x64d
 976 02e7 20       		.byte	0x20
 977 02e8 0B       		.uleb128 0xb
 978 02e9 92070000 		.4byte	.LASF92
ARM GAS  /tmp/ccVHQYWs.s 			page 83


 979 02ed 09       		.byte	0x9
 980 02ee A1       		.byte	0xa1
 981 02ef 4D060000 		.4byte	0x64d
 982 02f3 24       		.byte	0x24
 983 02f4 0B       		.uleb128 0xb
 984 02f5 590C0000 		.4byte	.LASF93
 985 02f9 09       		.byte	0x9
 986 02fa A2       		.byte	0xa2
 987 02fb 4D060000 		.4byte	0x64d
 988 02ff 28       		.byte	0x28
 989 0300 0B       		.uleb128 0xb
 990 0301 D60F0000 		.4byte	.LASF94
 991 0305 09       		.byte	0x9
 992 0306 A3       		.byte	0xa3
 993 0307 4D060000 		.4byte	0x64d
 994 030b 2C       		.byte	0x2c
 995 030c 0B       		.uleb128 0xb
 996 030d A30B0000 		.4byte	.LASF95
 997 0311 09       		.byte	0x9
 998 0312 A4       		.byte	0xa4
 999 0313 4D060000 		.4byte	0x64d
 1000 0317 30       		.byte	0x30
 1001 0318 0B       		.uleb128 0xb
 1002 0319 A3050000 		.4byte	.LASF96
 1003 031d 09       		.byte	0x9
 1004 031e A5       		.byte	0xa5
 1005 031f 4D060000 		.4byte	0x64d
 1006 0323 34       		.byte	0x34
 1007 0324 0B       		.uleb128 0xb
 1008 0325 68000000 		.4byte	.LASF97
 1009 0329 09       		.byte	0x9
 1010 032a A6       		.byte	0xa6
 1011 032b 4D060000 		.4byte	0x64d
 1012 032f 38       		.byte	0x38
 1013 0330 0B       		.uleb128 0xb
 1014 0331 5A040000 		.4byte	.LASF98
 1015 0335 09       		.byte	0x9
 1016 0336 A7       		.byte	0xa7
 1017 0337 4D060000 		.4byte	0x64d
 1018 033b 3C       		.byte	0x3c
 1019 033c 0B       		.uleb128 0xb
 1020 033d F20D0000 		.4byte	.LASF99
 1021 0341 09       		.byte	0x9
 1022 0342 AA       		.byte	0xaa
 1023 0343 4D060000 		.4byte	0x64d
 1024 0347 40       		.byte	0x40
 1025 0348 0B       		.uleb128 0xb
 1026 0349 5E0D0000 		.4byte	.LASF100
 1027 034d 09       		.byte	0x9
 1028 034e AB       		.byte	0xab
 1029 034f 4D060000 		.4byte	0x64d
 1030 0353 44       		.byte	0x44
 1031 0354 0B       		.uleb128 0xb
 1032 0355 65090000 		.4byte	.LASF101
 1033 0359 09       		.byte	0x9
 1034 035a AC       		.byte	0xac
 1035 035b 4D060000 		.4byte	0x64d
ARM GAS  /tmp/ccVHQYWs.s 			page 84


 1036 035f 48       		.byte	0x48
 1037 0360 0B       		.uleb128 0xb
 1038 0361 BA070000 		.4byte	.LASF102
 1039 0365 09       		.byte	0x9
 1040 0366 AD       		.byte	0xad
 1041 0367 4D060000 		.4byte	0x64d
 1042 036b 4C       		.byte	0x4c
 1043 036c 0B       		.uleb128 0xb
 1044 036d 26100000 		.4byte	.LASF103
 1045 0371 09       		.byte	0x9
 1046 0372 AE       		.byte	0xae
 1047 0373 4D060000 		.4byte	0x64d
 1048 0377 50       		.byte	0x50
 1049 0378 0B       		.uleb128 0xb
 1050 0379 CB040000 		.4byte	.LASF104
 1051 037d 09       		.byte	0x9
 1052 037e AF       		.byte	0xaf
 1053 037f 4D060000 		.4byte	0x64d
 1054 0383 54       		.byte	0x54
 1055 0384 0B       		.uleb128 0xb
 1056 0385 13090000 		.4byte	.LASF105
 1057 0389 09       		.byte	0x9
 1058 038a B0       		.byte	0xb0
 1059 038b 4D060000 		.4byte	0x64d
 1060 038f 58       		.byte	0x58
 1061 0390 0B       		.uleb128 0xb
 1062 0391 7A070000 		.4byte	.LASF106
 1063 0395 09       		.byte	0x9
 1064 0396 B1       		.byte	0xb1
 1065 0397 4D060000 		.4byte	0x64d
 1066 039b 5C       		.byte	0x5c
 1067 039c 0B       		.uleb128 0xb
 1068 039d 2C0C0000 		.4byte	.LASF107
 1069 03a1 09       		.byte	0x9
 1070 03a2 B2       		.byte	0xb2
 1071 03a3 4D060000 		.4byte	0x64d
 1072 03a7 60       		.byte	0x60
 1073 03a8 0B       		.uleb128 0xb
 1074 03a9 2B0E0000 		.4byte	.LASF108
 1075 03ad 09       		.byte	0x9
 1076 03ae B3       		.byte	0xb3
 1077 03af 4D060000 		.4byte	0x64d
 1078 03b3 64       		.byte	0x64
 1079 03b4 0B       		.uleb128 0xb
 1080 03b5 D8000000 		.4byte	.LASF109
 1081 03b9 09       		.byte	0x9
 1082 03ba B4       		.byte	0xb4
 1083 03bb 4D060000 		.4byte	0x64d
 1084 03bf 68       		.byte	0x68
 1085 03c0 0B       		.uleb128 0xb
 1086 03c1 93050000 		.4byte	.LASF110
 1087 03c5 09       		.byte	0x9
 1088 03c6 B5       		.byte	0xb5
 1089 03c7 4D060000 		.4byte	0x64d
 1090 03cb 6C       		.byte	0x6c
 1091 03cc 0B       		.uleb128 0xb
 1092 03cd 0A0A0000 		.4byte	.LASF111
ARM GAS  /tmp/ccVHQYWs.s 			page 85


 1093 03d1 09       		.byte	0x9
 1094 03d2 B6       		.byte	0xb6
 1095 03d3 4D060000 		.4byte	0x64d
 1096 03d7 70       		.byte	0x70
 1097 03d8 0B       		.uleb128 0xb
 1098 03d9 FF0A0000 		.4byte	.LASF112
 1099 03dd 09       		.byte	0x9
 1100 03de B7       		.byte	0xb7
 1101 03df 4D060000 		.4byte	0x64d
 1102 03e3 74       		.byte	0x74
 1103 03e4 0B       		.uleb128 0xb
 1104 03e5 34110000 		.4byte	.LASF113
 1105 03e9 09       		.byte	0x9
 1106 03ea B8       		.byte	0xb8
 1107 03eb 4D060000 		.4byte	0x64d
 1108 03ef 78       		.byte	0x78
 1109 03f0 0B       		.uleb128 0xb
 1110 03f1 75040000 		.4byte	.LASF114
 1111 03f5 09       		.byte	0x9
 1112 03f6 B9       		.byte	0xb9
 1113 03f7 4D060000 		.4byte	0x64d
 1114 03fb 7C       		.byte	0x7c
 1115 03fc 0B       		.uleb128 0xb
 1116 03fd 16100000 		.4byte	.LASF115
 1117 0401 09       		.byte	0x9
 1118 0402 BA       		.byte	0xba
 1119 0403 4D060000 		.4byte	0x64d
 1120 0407 80       		.byte	0x80
 1121 0408 0B       		.uleb128 0xb
 1122 0409 64030000 		.4byte	.LASF116
 1123 040d 09       		.byte	0x9
 1124 040e BB       		.byte	0xbb
 1125 040f 4D060000 		.4byte	0x64d
 1126 0413 84       		.byte	0x84
 1127 0414 0B       		.uleb128 0xb
 1128 0415 ED050000 		.4byte	.LASF117
 1129 0419 09       		.byte	0x9
 1130 041a BC       		.byte	0xbc
 1131 041b 4D060000 		.4byte	0x64d
 1132 041f 88       		.byte	0x88
 1133 0420 0B       		.uleb128 0xb
 1134 0421 51110000 		.4byte	.LASF118
 1135 0425 09       		.byte	0x9
 1136 0426 BD       		.byte	0xbd
 1137 0427 4D060000 		.4byte	0x64d
 1138 042b 8C       		.byte	0x8c
 1139 042c 0B       		.uleb128 0xb
 1140 042d 87040000 		.4byte	.LASF119
 1141 0431 09       		.byte	0x9
 1142 0432 BE       		.byte	0xbe
 1143 0433 4D060000 		.4byte	0x64d
 1144 0437 90       		.byte	0x90
 1145 0438 0B       		.uleb128 0xb
 1146 0439 9D090000 		.4byte	.LASF120
 1147 043d 09       		.byte	0x9
 1148 043e BF       		.byte	0xbf
 1149 043f 4D060000 		.4byte	0x64d
ARM GAS  /tmp/ccVHQYWs.s 			page 86


 1150 0443 94       		.byte	0x94
 1151 0444 0B       		.uleb128 0xb
 1152 0445 BB030000 		.4byte	.LASF121
 1153 0449 09       		.byte	0x9
 1154 044a C0       		.byte	0xc0
 1155 044b 4D060000 		.4byte	0x64d
 1156 044f 98       		.byte	0x98
 1157 0450 0B       		.uleb128 0xb
 1158 0451 060D0000 		.4byte	.LASF122
 1159 0455 09       		.byte	0x9
 1160 0456 C1       		.byte	0xc1
 1161 0457 4D060000 		.4byte	0x64d
 1162 045b 9C       		.byte	0x9c
 1163 045c 0B       		.uleb128 0xb
 1164 045d A3100000 		.4byte	.LASF123
 1165 0461 09       		.byte	0x9
 1166 0462 C2       		.byte	0xc2
 1167 0463 4D060000 		.4byte	0x64d
 1168 0467 A0       		.byte	0xa0
 1169 0468 0B       		.uleb128 0xb
 1170 0469 FE050000 		.4byte	.LASF124
 1171 046d 09       		.byte	0x9
 1172 046e C3       		.byte	0xc3
 1173 046f 4D060000 		.4byte	0x64d
 1174 0473 A4       		.byte	0xa4
 1175 0474 0B       		.uleb128 0xb
 1176 0475 4D0A0000 		.4byte	.LASF125
 1177 0479 09       		.byte	0x9
 1178 047a C4       		.byte	0xc4
 1179 047b 4D060000 		.4byte	0x64d
 1180 047f A8       		.byte	0xa8
 1181 0480 0B       		.uleb128 0xb
 1182 0481 61100000 		.4byte	.LASF126
 1183 0485 09       		.byte	0x9
 1184 0486 C5       		.byte	0xc5
 1185 0487 4D060000 		.4byte	0x64d
 1186 048b AC       		.byte	0xac
 1187 048c 0B       		.uleb128 0xb
 1188 048d 91030000 		.4byte	.LASF127
 1189 0491 09       		.byte	0x9
 1190 0492 C6       		.byte	0xc6
 1191 0493 4D060000 		.4byte	0x64d
 1192 0497 B0       		.byte	0xb0
 1193 0498 0B       		.uleb128 0xb
 1194 0499 310A0000 		.4byte	.LASF128
 1195 049d 09       		.byte	0x9
 1196 049e C7       		.byte	0xc7
 1197 049f 4D060000 		.4byte	0x64d
 1198 04a3 B4       		.byte	0xb4
 1199 04a4 0B       		.uleb128 0xb
 1200 04a5 63110000 		.4byte	.LASF129
 1201 04a9 09       		.byte	0x9
 1202 04aa C8       		.byte	0xc8
 1203 04ab 4D060000 		.4byte	0x64d
 1204 04af B8       		.byte	0xb8
 1205 04b0 0B       		.uleb128 0xb
 1206 04b1 93020000 		.4byte	.LASF130
ARM GAS  /tmp/ccVHQYWs.s 			page 87


 1207 04b5 09       		.byte	0x9
 1208 04b6 C9       		.byte	0xc9
 1209 04b7 4D060000 		.4byte	0x64d
 1210 04bb BC       		.byte	0xbc
 1211 04bc 0B       		.uleb128 0xb
 1212 04bd DE050000 		.4byte	.LASF131
 1213 04c1 09       		.byte	0x9
 1214 04c2 CA       		.byte	0xca
 1215 04c3 4D060000 		.4byte	0x64d
 1216 04c7 C0       		.byte	0xc0
 1217 04c8 0B       		.uleb128 0xb
 1218 04c9 F8080000 		.4byte	.LASF132
 1219 04cd 09       		.byte	0x9
 1220 04ce CB       		.byte	0xcb
 1221 04cf 4D060000 		.4byte	0x64d
 1222 04d3 C4       		.byte	0xc4
 1223 04d4 0B       		.uleb128 0xb
 1224 04d5 3F0B0000 		.4byte	.LASF133
 1225 04d9 09       		.byte	0x9
 1226 04da CC       		.byte	0xcc
 1227 04db 4D060000 		.4byte	0x64d
 1228 04df C8       		.byte	0xc8
 1229 04e0 0B       		.uleb128 0xb
 1230 04e1 9A0C0000 		.4byte	.LASF134
 1231 04e5 09       		.byte	0x9
 1232 04e6 CD       		.byte	0xcd
 1233 04e7 4D060000 		.4byte	0x64d
 1234 04eb CC       		.byte	0xcc
 1235 04ec 0B       		.uleb128 0xb
 1236 04ed B70B0000 		.4byte	.LASF135
 1237 04f1 09       		.byte	0x9
 1238 04f2 CE       		.byte	0xce
 1239 04f3 4D060000 		.4byte	0x64d
 1240 04f7 D0       		.byte	0xd0
 1241 04f8 0B       		.uleb128 0xb
 1242 04f9 8C000000 		.4byte	.LASF136
 1243 04fd 09       		.byte	0x9
 1244 04fe CF       		.byte	0xcf
 1245 04ff 4D060000 		.4byte	0x64d
 1246 0503 D4       		.byte	0xd4
 1247 0504 0B       		.uleb128 0xb
 1248 0505 CE0B0000 		.4byte	.LASF137
 1249 0509 09       		.byte	0x9
 1250 050a D0       		.byte	0xd0
 1251 050b 4D060000 		.4byte	0x64d
 1252 050f D8       		.byte	0xd8
 1253 0510 0B       		.uleb128 0xb
 1254 0511 1C080000 		.4byte	.LASF138
 1255 0515 09       		.byte	0x9
 1256 0516 D1       		.byte	0xd1
 1257 0517 4D060000 		.4byte	0x64d
 1258 051b DC       		.byte	0xdc
 1259 051c 0B       		.uleb128 0xb
 1260 051d CD050000 		.4byte	.LASF139
 1261 0521 09       		.byte	0x9
 1262 0522 D2       		.byte	0xd2
 1263 0523 4D060000 		.4byte	0x64d
ARM GAS  /tmp/ccVHQYWs.s 			page 88


 1264 0527 E0       		.byte	0xe0
 1265 0528 0B       		.uleb128 0xb
 1266 0529 E6080000 		.4byte	.LASF140
 1267 052d 09       		.byte	0x9
 1268 052e D3       		.byte	0xd3
 1269 052f 4D060000 		.4byte	0x64d
 1270 0533 E4       		.byte	0xe4
 1271 0534 0B       		.uleb128 0xb
 1272 0535 910F0000 		.4byte	.LASF141
 1273 0539 09       		.byte	0x9
 1274 053a D4       		.byte	0xd4
 1275 053b 4D060000 		.4byte	0x64d
 1276 053f E8       		.byte	0xe8
 1277 0540 0B       		.uleb128 0xb
 1278 0541 22030000 		.4byte	.LASF142
 1279 0545 09       		.byte	0x9
 1280 0546 D5       		.byte	0xd5
 1281 0547 4D060000 		.4byte	0x64d
 1282 054b EC       		.byte	0xec
 1283 054c 0B       		.uleb128 0xb
 1284 054d 45000000 		.4byte	.LASF143
 1285 0551 09       		.byte	0x9
 1286 0552 D6       		.byte	0xd6
 1287 0553 4D060000 		.4byte	0x64d
 1288 0557 F0       		.byte	0xf0
 1289 0558 0B       		.uleb128 0xb
 1290 0559 2A050000 		.4byte	.LASF144
 1291 055d 09       		.byte	0x9
 1292 055e D7       		.byte	0xd7
 1293 055f 4D060000 		.4byte	0x64d
 1294 0563 F4       		.byte	0xf4
 1295 0564 0B       		.uleb128 0xb
 1296 0565 AD090000 		.4byte	.LASF145
 1297 0569 09       		.byte	0x9
 1298 056a D8       		.byte	0xd8
 1299 056b 4D060000 		.4byte	0x64d
 1300 056f F8       		.byte	0xf8
 1301 0570 0B       		.uleb128 0xb
 1302 0571 AB020000 		.4byte	.LASF146
 1303 0575 09       		.byte	0x9
 1304 0576 D9       		.byte	0xd9
 1305 0577 4D060000 		.4byte	0x64d
 1306 057b FC       		.byte	0xfc
 1307 057c 0C       		.uleb128 0xc
 1308 057d 54070000 		.4byte	.LASF147
 1309 0581 09       		.byte	0x9
 1310 0582 DA       		.byte	0xda
 1311 0583 4D060000 		.4byte	0x64d
 1312 0587 0001     		.2byte	0x100
 1313 0589 0C       		.uleb128 0xc
 1314 058a 65010000 		.4byte	.LASF148
 1315 058e 09       		.byte	0x9
 1316 058f DB       		.byte	0xdb
 1317 0590 4D060000 		.4byte	0x64d
 1318 0594 0401     		.2byte	0x104
 1319 0596 0C       		.uleb128 0xc
 1320 0597 16060000 		.4byte	.LASF149
ARM GAS  /tmp/ccVHQYWs.s 			page 89


 1321 059b 09       		.byte	0x9
 1322 059c DC       		.byte	0xdc
 1323 059d 4D060000 		.4byte	0x64d
 1324 05a1 0801     		.2byte	0x108
 1325 05a3 0C       		.uleb128 0xc
 1326 05a4 90080000 		.4byte	.LASF150
 1327 05a8 09       		.byte	0x9
 1328 05a9 DD       		.byte	0xdd
 1329 05aa 4D060000 		.4byte	0x64d
 1330 05ae 0C01     		.2byte	0x10c
 1331 05b0 0C       		.uleb128 0xc
 1332 05b1 840D0000 		.4byte	.LASF151
 1333 05b5 09       		.byte	0x9
 1334 05b6 DE       		.byte	0xde
 1335 05b7 4D060000 		.4byte	0x64d
 1336 05bb 1001     		.2byte	0x110
 1337 05bd 0C       		.uleb128 0xc
 1338 05be 370E0000 		.4byte	.LASF152
 1339 05c2 09       		.byte	0x9
 1340 05c3 DF       		.byte	0xdf
 1341 05c4 4D060000 		.4byte	0x64d
 1342 05c8 1401     		.2byte	0x114
 1343 05ca 0C       		.uleb128 0xc
 1344 05cb 440E0000 		.4byte	.LASF153
 1345 05cf 09       		.byte	0x9
 1346 05d0 E0       		.byte	0xe0
 1347 05d1 4D060000 		.4byte	0x64d
 1348 05d5 1801     		.2byte	0x118
 1349 05d7 0C       		.uleb128 0xc
 1350 05d8 510E0000 		.4byte	.LASF154
 1351 05dc 09       		.byte	0x9
 1352 05dd E1       		.byte	0xe1
 1353 05de 4D060000 		.4byte	0x64d
 1354 05e2 1C01     		.2byte	0x11c
 1355 05e4 0C       		.uleb128 0xc
 1356 05e5 7D090000 		.4byte	.LASF155
 1357 05e9 09       		.byte	0x9
 1358 05ea E2       		.byte	0xe2
 1359 05eb 4D060000 		.4byte	0x64d
 1360 05ef 2001     		.2byte	0x120
 1361 05f1 0C       		.uleb128 0xc
 1362 05f2 39060000 		.4byte	.LASF156
 1363 05f6 09       		.byte	0x9
 1364 05f7 E3       		.byte	0xe3
 1365 05f8 4D060000 		.4byte	0x64d
 1366 05fc 2401     		.2byte	0x124
 1367 05fe 0C       		.uleb128 0xc
 1368 05ff A0080000 		.4byte	.LASF157
 1369 0603 09       		.byte	0x9
 1370 0604 E4       		.byte	0xe4
 1371 0605 4D060000 		.4byte	0x64d
 1372 0609 2801     		.2byte	0x128
 1373 060b 0C       		.uleb128 0xc
 1374 060c D60A0000 		.4byte	.LASF158
 1375 0610 09       		.byte	0x9
 1376 0611 E5       		.byte	0xe5
 1377 0612 4D060000 		.4byte	0x64d
ARM GAS  /tmp/ccVHQYWs.s 			page 90


 1378 0616 2C01     		.2byte	0x12c
 1379 0618 0C       		.uleb128 0xc
 1380 0619 AB000000 		.4byte	.LASF159
 1381 061d 09       		.byte	0x9
 1382 061e E6       		.byte	0xe6
 1383 061f 4D060000 		.4byte	0x64d
 1384 0623 3001     		.2byte	0x130
 1385 0625 0C       		.uleb128 0xc
 1386 0626 FE0B0000 		.4byte	.LASF160
 1387 062a 09       		.byte	0x9
 1388 062b E7       		.byte	0xe7
 1389 062c 4D060000 		.4byte	0x64d
 1390 0630 3401     		.2byte	0x134
 1391 0632 0C       		.uleb128 0xc
 1392 0633 7A000000 		.4byte	.LASF161
 1393 0637 09       		.byte	0x9
 1394 0638 E8       		.byte	0xe8
 1395 0639 4D060000 		.4byte	0x64d
 1396 063d 3801     		.2byte	0x138
 1397 063f 0C       		.uleb128 0xc
 1398 0640 95110000 		.4byte	.LASF162
 1399 0644 09       		.byte	0x9
 1400 0645 E9       		.byte	0xe9
 1401 0646 4D060000 		.4byte	0x64d
 1402 064a 3C01     		.2byte	0x13c
 1403 064c 00       		.byte	0
 1404 064d 0D       		.uleb128 0xd
 1405 064e 04       		.byte	0x4
 1406 064f 03       		.uleb128 0x3
 1407 0650 E7090000 		.4byte	.LASF163
 1408 0654 09       		.byte	0x9
 1409 0655 EA       		.byte	0xea
 1410 0656 6F020000 		.4byte	0x26f
 1411 065a 06       		.uleb128 0x6
 1412 065b 4F060000 		.4byte	0x64f
 1413 065f 0E       		.uleb128 0xe
 1414 0660 040E     		.2byte	0xe04
 1415 0662 06       		.byte	0x6
 1416 0663 7A01     		.2byte	0x17a
 1417 0665 1B070000 		.4byte	0x71b
 1418 0669 0F       		.uleb128 0xf
 1419 066a 7C030000 		.4byte	.LASF164
 1420 066e 06       		.byte	0x6
 1421 066f 7C01     		.2byte	0x17c
 1422 0671 2B070000 		.4byte	0x72b
 1423 0675 00       		.byte	0
 1424 0676 0F       		.uleb128 0xf
 1425 0677 830A0000 		.4byte	.LASF165
 1426 067b 06       		.byte	0x6
 1427 067c 7D01     		.2byte	0x17d
 1428 067e 37070000 		.4byte	0x737
 1429 0682 20       		.byte	0x20
 1430 0683 0F       		.uleb128 0xf
 1431 0684 6E0E0000 		.4byte	.LASF166
 1432 0688 06       		.byte	0x6
 1433 0689 7E01     		.2byte	0x17e
 1434 068b 2B070000 		.4byte	0x72b
ARM GAS  /tmp/ccVHQYWs.s 			page 91


 1435 068f 80       		.byte	0x80
 1436 0690 0F       		.uleb128 0xf
 1437 0691 CA030000 		.4byte	.LASF167
 1438 0695 06       		.byte	0x6
 1439 0696 7F01     		.2byte	0x17f
 1440 0698 37070000 		.4byte	0x737
 1441 069c A0       		.byte	0xa0
 1442 069d 10       		.uleb128 0x10
 1443 069e 5E0E0000 		.4byte	.LASF168
 1444 06a2 06       		.byte	0x6
 1445 06a3 8001     		.2byte	0x180
 1446 06a5 2B070000 		.4byte	0x72b
 1447 06a9 0001     		.2byte	0x100
 1448 06ab 10       		.uleb128 0x10
 1449 06ac B8100000 		.4byte	.LASF169
 1450 06b0 06       		.byte	0x6
 1451 06b1 8101     		.2byte	0x181
 1452 06b3 37070000 		.4byte	0x737
 1453 06b7 2001     		.2byte	0x120
 1454 06b9 10       		.uleb128 0x10
 1455 06ba 50090000 		.4byte	.LASF170
 1456 06be 06       		.byte	0x6
 1457 06bf 8201     		.2byte	0x182
 1458 06c1 2B070000 		.4byte	0x72b
 1459 06c5 8001     		.2byte	0x180
 1460 06c7 10       		.uleb128 0x10
 1461 06c8 930A0000 		.4byte	.LASF171
 1462 06cc 06       		.byte	0x6
 1463 06cd 8301     		.2byte	0x183
 1464 06cf 37070000 		.4byte	0x737
 1465 06d3 A001     		.2byte	0x1a0
 1466 06d5 10       		.uleb128 0x10
 1467 06d6 260F0000 		.4byte	.LASF172
 1468 06da 06       		.byte	0x6
 1469 06db 8401     		.2byte	0x184
 1470 06dd 2B070000 		.4byte	0x72b
 1471 06e1 0002     		.2byte	0x200
 1472 06e3 10       		.uleb128 0x10
 1473 06e4 9D0A0000 		.4byte	.LASF173
 1474 06e8 06       		.byte	0x6
 1475 06e9 8501     		.2byte	0x185
 1476 06eb 47070000 		.4byte	0x747
 1477 06ef 2002     		.2byte	0x220
 1478 06f1 11       		.uleb128 0x11
 1479 06f2 495000   		.ascii	"IP\000"
 1480 06f5 06       		.byte	0x6
 1481 06f6 8601     		.2byte	0x186
 1482 06f8 67070000 		.4byte	0x767
 1483 06fc 0003     		.2byte	0x300
 1484 06fe 10       		.uleb128 0x10
 1485 06ff A70A0000 		.4byte	.LASF174
 1486 0703 06       		.byte	0x6
 1487 0704 8701     		.2byte	0x187
 1488 0706 6C070000 		.4byte	0x76c
 1489 070a F003     		.2byte	0x3f0
 1490 070c 10       		.uleb128 0x10
 1491 070d 210A0000 		.4byte	.LASF175
ARM GAS  /tmp/ccVHQYWs.s 			page 92


 1492 0711 06       		.byte	0x6
 1493 0712 8801     		.2byte	0x188
 1494 0714 B7000000 		.4byte	0xb7
 1495 0718 000E     		.2byte	0xe00
 1496 071a 00       		.byte	0
 1497 071b 12       		.uleb128 0x12
 1498 071c B7000000 		.4byte	0xb7
 1499 0720 2B070000 		.4byte	0x72b
 1500 0724 13       		.uleb128 0x13
 1501 0725 30070000 		.4byte	0x730
 1502 0729 07       		.byte	0x7
 1503 072a 00       		.byte	0
 1504 072b 05       		.uleb128 0x5
 1505 072c 1B070000 		.4byte	0x71b
 1506 0730 02       		.uleb128 0x2
 1507 0731 04       		.byte	0x4
 1508 0732 07       		.byte	0x7
 1509 0733 F80C0000 		.4byte	.LASF176
 1510 0737 12       		.uleb128 0x12
 1511 0738 AC000000 		.4byte	0xac
 1512 073c 47070000 		.4byte	0x747
 1513 0740 13       		.uleb128 0x13
 1514 0741 30070000 		.4byte	0x730
 1515 0745 17       		.byte	0x17
 1516 0746 00       		.byte	0
 1517 0747 12       		.uleb128 0x12
 1518 0748 AC000000 		.4byte	0xac
 1519 074c 57070000 		.4byte	0x757
 1520 0750 13       		.uleb128 0x13
 1521 0751 30070000 		.4byte	0x730
 1522 0755 37       		.byte	0x37
 1523 0756 00       		.byte	0
 1524 0757 12       		.uleb128 0x12
 1525 0758 97000000 		.4byte	0x97
 1526 075c 67070000 		.4byte	0x767
 1527 0760 13       		.uleb128 0x13
 1528 0761 30070000 		.4byte	0x730
 1529 0765 EF       		.byte	0xef
 1530 0766 00       		.byte	0
 1531 0767 05       		.uleb128 0x5
 1532 0768 57070000 		.4byte	0x757
 1533 076c 12       		.uleb128 0x12
 1534 076d AC000000 		.4byte	0xac
 1535 0771 7D070000 		.4byte	0x77d
 1536 0775 14       		.uleb128 0x14
 1537 0776 30070000 		.4byte	0x730
 1538 077a 8302     		.2byte	0x283
 1539 077c 00       		.byte	0
 1540 077d 15       		.uleb128 0x15
 1541 077e 460C0000 		.4byte	.LASF177
 1542 0782 06       		.byte	0x6
 1543 0783 8901     		.2byte	0x189
 1544 0785 5F060000 		.4byte	0x65f
 1545 0789 0E       		.uleb128 0xe
 1546 078a AC02     		.2byte	0x2ac
 1547 078c 06       		.byte	0x6
 1548 078d 9A01     		.2byte	0x19a
ARM GAS  /tmp/ccVHQYWs.s 			page 93


 1549 078f 360A0000 		.4byte	0xa36
 1550 0793 0F       		.uleb128 0xf
 1551 0794 5E050000 		.4byte	.LASF178
 1552 0798 06       		.byte	0x6
 1553 0799 9C01     		.2byte	0x19c
 1554 079b BC000000 		.4byte	0xbc
 1555 079f 00       		.byte	0
 1556 07a0 0F       		.uleb128 0xf
 1557 07a1 010D0000 		.4byte	.LASF179
 1558 07a5 06       		.byte	0x6
 1559 07a6 9D01     		.2byte	0x19d
 1560 07a8 B7000000 		.4byte	0xb7
 1561 07ac 04       		.byte	0x4
 1562 07ad 0F       		.uleb128 0xf
 1563 07ae C00C0000 		.4byte	.LASF180
 1564 07b2 06       		.byte	0x6
 1565 07b3 9E01     		.2byte	0x19e
 1566 07b5 B7000000 		.4byte	0xb7
 1567 07b9 08       		.byte	0x8
 1568 07ba 0F       		.uleb128 0xf
 1569 07bb F5060000 		.4byte	.LASF181
 1570 07bf 06       		.byte	0x6
 1571 07c0 9F01     		.2byte	0x19f
 1572 07c2 B7000000 		.4byte	0xb7
 1573 07c6 0C       		.byte	0xc
 1574 07c7 16       		.uleb128 0x16
 1575 07c8 53435200 		.ascii	"SCR\000"
 1576 07cc 06       		.byte	0x6
 1577 07cd A001     		.2byte	0x1a0
 1578 07cf B7000000 		.4byte	0xb7
 1579 07d3 10       		.byte	0x10
 1580 07d4 16       		.uleb128 0x16
 1581 07d5 43435200 		.ascii	"CCR\000"
 1582 07d9 06       		.byte	0x6
 1583 07da A101     		.2byte	0x1a1
 1584 07dc B7000000 		.4byte	0xb7
 1585 07e0 14       		.byte	0x14
 1586 07e1 0F       		.uleb128 0xf
 1587 07e2 83050000 		.4byte	.LASF182
 1588 07e6 06       		.byte	0x6
 1589 07e7 A201     		.2byte	0x1a2
 1590 07e9 460A0000 		.4byte	0xa46
 1591 07ed 18       		.byte	0x18
 1592 07ee 0F       		.uleb128 0xf
 1593 07ef 8D0A0000 		.4byte	.LASF183
 1594 07f3 06       		.byte	0x6
 1595 07f4 A301     		.2byte	0x1a3
 1596 07f6 B7000000 		.4byte	0xb7
 1597 07fa 24       		.byte	0x24
 1598 07fb 0F       		.uleb128 0xf
 1599 07fc 63080000 		.4byte	.LASF184
 1600 0800 06       		.byte	0x6
 1601 0801 A401     		.2byte	0x1a4
 1602 0803 B7000000 		.4byte	0xb7
 1603 0807 28       		.byte	0x28
 1604 0808 0F       		.uleb128 0xf
 1605 0809 64060000 		.4byte	.LASF185
ARM GAS  /tmp/ccVHQYWs.s 			page 94


 1606 080d 06       		.byte	0x6
 1607 080e A501     		.2byte	0x1a5
 1608 0810 B7000000 		.4byte	0xb7
 1609 0814 2C       		.byte	0x2c
 1610 0815 0F       		.uleb128 0xf
 1611 0816 CC020000 		.4byte	.LASF186
 1612 081a 06       		.byte	0x6
 1613 081b A601     		.2byte	0x1a6
 1614 081d B7000000 		.4byte	0xb7
 1615 0821 30       		.byte	0x30
 1616 0822 0F       		.uleb128 0xf
 1617 0823 5C0A0000 		.4byte	.LASF187
 1618 0827 06       		.byte	0x6
 1619 0828 A701     		.2byte	0x1a7
 1620 082a B7000000 		.4byte	0xb7
 1621 082e 34       		.byte	0x34
 1622 082f 0F       		.uleb128 0xf
 1623 0830 5C100000 		.4byte	.LASF188
 1624 0834 06       		.byte	0x6
 1625 0835 A801     		.2byte	0x1a8
 1626 0837 B7000000 		.4byte	0xb7
 1627 083b 38       		.byte	0x38
 1628 083c 0F       		.uleb128 0xf
 1629 083d 4C110000 		.4byte	.LASF189
 1630 0841 06       		.byte	0x6
 1631 0842 A901     		.2byte	0x1a9
 1632 0844 B7000000 		.4byte	0xb7
 1633 0848 3C       		.byte	0x3c
 1634 0849 0F       		.uleb128 0xf
 1635 084a 53030000 		.4byte	.LASF190
 1636 084e 06       		.byte	0x6
 1637 084f AA01     		.2byte	0x1aa
 1638 0851 600A0000 		.4byte	0xa60
 1639 0855 40       		.byte	0x40
 1640 0856 0F       		.uleb128 0xf
 1641 0857 0B070000 		.4byte	.LASF191
 1642 085b 06       		.byte	0x6
 1643 085c AB01     		.2byte	0x1ab
 1644 085e BC000000 		.4byte	0xbc
 1645 0862 48       		.byte	0x48
 1646 0863 0F       		.uleb128 0xf
 1647 0864 33040000 		.4byte	.LASF192
 1648 0868 06       		.byte	0x6
 1649 0869 AC01     		.2byte	0x1ac
 1650 086b BC000000 		.4byte	0xbc
 1651 086f 4C       		.byte	0x4c
 1652 0870 0F       		.uleb128 0xf
 1653 0871 CE070000 		.4byte	.LASF193
 1654 0875 06       		.byte	0x6
 1655 0876 AD01     		.2byte	0x1ad
 1656 0878 7A0A0000 		.4byte	0xa7a
 1657 087c 50       		.byte	0x50
 1658 087d 0F       		.uleb128 0xf
 1659 087e 08110000 		.4byte	.LASF194
 1660 0882 06       		.byte	0x6
 1661 0883 AE01     		.2byte	0x1ae
 1662 0885 940A0000 		.4byte	0xa94
ARM GAS  /tmp/ccVHQYWs.s 			page 95


 1663 0889 60       		.byte	0x60
 1664 088a 0F       		.uleb128 0xf
 1665 088b 830A0000 		.4byte	.LASF165
 1666 088f 06       		.byte	0x6
 1667 0890 AF01     		.2byte	0x1af
 1668 0892 990A0000 		.4byte	0xa99
 1669 0896 74       		.byte	0x74
 1670 0897 0F       		.uleb128 0xf
 1671 0898 B2100000 		.4byte	.LASF195
 1672 089c 06       		.byte	0x6
 1673 089d B001     		.2byte	0x1b0
 1674 089f BC000000 		.4byte	0xbc
 1675 08a3 78       		.byte	0x78
 1676 08a4 16       		.uleb128 0x16
 1677 08a5 43545200 		.ascii	"CTR\000"
 1678 08a9 06       		.byte	0x6
 1679 08aa B101     		.2byte	0x1b1
 1680 08ac BC000000 		.4byte	0xbc
 1681 08b0 7C       		.byte	0x7c
 1682 08b1 0F       		.uleb128 0xf
 1683 08b2 A0010000 		.4byte	.LASF196
 1684 08b6 06       		.byte	0x6
 1685 08b7 B201     		.2byte	0x1b2
 1686 08b9 BC000000 		.4byte	0xbc
 1687 08bd 80       		.byte	0x80
 1688 08be 0F       		.uleb128 0xf
 1689 08bf F2070000 		.4byte	.LASF197
 1690 08c3 06       		.byte	0x6
 1691 08c4 B301     		.2byte	0x1b3
 1692 08c6 B7000000 		.4byte	0xb7
 1693 08ca 84       		.byte	0x84
 1694 08cb 0F       		.uleb128 0xf
 1695 08cc 09000000 		.4byte	.LASF198
 1696 08d0 06       		.byte	0x6
 1697 08d1 B401     		.2byte	0x1b4
 1698 08d3 B7000000 		.4byte	0xb7
 1699 08d7 88       		.byte	0x88
 1700 08d8 0F       		.uleb128 0xf
 1701 08d9 930A0000 		.4byte	.LASF171
 1702 08dd 06       		.byte	0x6
 1703 08de B501     		.2byte	0x1b5
 1704 08e0 A90A0000 		.4byte	0xaa9
 1705 08e4 8C       		.byte	0x8c
 1706 08e5 10       		.uleb128 0x10
 1707 08e6 210A0000 		.4byte	.LASF175
 1708 08ea 06       		.byte	0x6
 1709 08eb B601     		.2byte	0x1b6
 1710 08ed B7000000 		.4byte	0xb7
 1711 08f1 0002     		.2byte	0x200
 1712 08f3 10       		.uleb128 0x10
 1713 08f4 9D0A0000 		.4byte	.LASF173
 1714 08f8 06       		.byte	0x6
 1715 08f9 B701     		.2byte	0x1b7
 1716 08fb B90A0000 		.4byte	0xab9
 1717 08ff 0402     		.2byte	0x204
 1718 0901 10       		.uleb128 0x10
 1719 0902 07080000 		.4byte	.LASF199
ARM GAS  /tmp/ccVHQYWs.s 			page 96


 1720 0906 06       		.byte	0x6
 1721 0907 B801     		.2byte	0x1b8
 1722 0909 BC000000 		.4byte	0xbc
 1723 090d 4002     		.2byte	0x240
 1724 090f 10       		.uleb128 0x10
 1725 0910 50100000 		.4byte	.LASF200
 1726 0914 06       		.byte	0x6
 1727 0915 B901     		.2byte	0x1b9
 1728 0917 BC000000 		.4byte	0xbc
 1729 091b 4402     		.2byte	0x244
 1730 091d 10       		.uleb128 0x10
 1731 091e 56100000 		.4byte	.LASF201
 1732 0922 06       		.byte	0x6
 1733 0923 BA01     		.2byte	0x1ba
 1734 0925 BC000000 		.4byte	0xbc
 1735 0929 4802     		.2byte	0x248
 1736 092b 10       		.uleb128 0x10
 1737 092c A70A0000 		.4byte	.LASF174
 1738 0930 06       		.byte	0x6
 1739 0931 BB01     		.2byte	0x1bb
 1740 0933 990A0000 		.4byte	0xa99
 1741 0937 4C02     		.2byte	0x24c
 1742 0939 10       		.uleb128 0x10
 1743 093a 7B010000 		.4byte	.LASF202
 1744 093e 06       		.byte	0x6
 1745 093f BC01     		.2byte	0x1bc
 1746 0941 B7000000 		.4byte	0xb7
 1747 0945 5002     		.2byte	0x250
 1748 0947 10       		.uleb128 0x10
 1749 0948 B10A0000 		.4byte	.LASF203
 1750 094c 06       		.byte	0x6
 1751 094d BD01     		.2byte	0x1bd
 1752 094f 990A0000 		.4byte	0xa99
 1753 0953 5402     		.2byte	0x254
 1754 0955 10       		.uleb128 0x10
 1755 0956 6D040000 		.4byte	.LASF204
 1756 095a 06       		.byte	0x6
 1757 095b BE01     		.2byte	0x1be
 1758 095d B7000000 		.4byte	0xb7
 1759 0961 5802     		.2byte	0x258
 1760 0963 10       		.uleb128 0x10
 1761 0964 03070000 		.4byte	.LASF205
 1762 0968 06       		.byte	0x6
 1763 0969 BF01     		.2byte	0x1bf
 1764 096b B7000000 		.4byte	0xb7
 1765 096f 5C02     		.2byte	0x25c
 1766 0971 10       		.uleb128 0x10
 1767 0972 D2000000 		.4byte	.LASF206
 1768 0976 06       		.byte	0x6
 1769 0977 C001     		.2byte	0x1c0
 1770 0979 B7000000 		.4byte	0xb7
 1771 097d 6002     		.2byte	0x260
 1772 097f 10       		.uleb128 0x10
 1773 0980 88080000 		.4byte	.LASF207
 1774 0984 06       		.byte	0x6
 1775 0985 C101     		.2byte	0x1c1
 1776 0987 B7000000 		.4byte	0xb7
ARM GAS  /tmp/ccVHQYWs.s 			page 97


 1777 098b 6402     		.2byte	0x264
 1778 098d 10       		.uleb128 0x10
 1779 098e 3C080000 		.4byte	.LASF208
 1780 0992 06       		.byte	0x6
 1781 0993 C201     		.2byte	0x1c2
 1782 0995 B7000000 		.4byte	0xb7
 1783 0999 6802     		.2byte	0x268
 1784 099b 10       		.uleb128 0x10
 1785 099c 18000000 		.4byte	.LASF209
 1786 09a0 06       		.byte	0x6
 1787 09a1 C301     		.2byte	0x1c3
 1788 09a3 B7000000 		.4byte	0xb7
 1789 09a7 6C02     		.2byte	0x26c
 1790 09a9 10       		.uleb128 0x10
 1791 09aa 0D080000 		.4byte	.LASF210
 1792 09ae 06       		.byte	0x6
 1793 09af C401     		.2byte	0x1c4
 1794 09b1 B7000000 		.4byte	0xb7
 1795 09b5 7002     		.2byte	0x270
 1796 09b7 10       		.uleb128 0x10
 1797 09b8 EB070000 		.4byte	.LASF211
 1798 09bc 06       		.byte	0x6
 1799 09bd C501     		.2byte	0x1c5
 1800 09bf B7000000 		.4byte	0xb7
 1801 09c3 7402     		.2byte	0x274
 1802 09c5 10       		.uleb128 0x10
 1803 09c6 FE100000 		.4byte	.LASF212
 1804 09ca 06       		.byte	0x6
 1805 09cb C601     		.2byte	0x1c6
 1806 09cd C90A0000 		.4byte	0xac9
 1807 09d1 7802     		.2byte	0x278
 1808 09d3 10       		.uleb128 0x10
 1809 09d4 50010000 		.4byte	.LASF213
 1810 09d8 06       		.byte	0x6
 1811 09d9 C701     		.2byte	0x1c7
 1812 09db B7000000 		.4byte	0xb7
 1813 09df 9002     		.2byte	0x290
 1814 09e1 10       		.uleb128 0x10
 1815 09e2 B0010000 		.4byte	.LASF214
 1816 09e6 06       		.byte	0x6
 1817 09e7 C801     		.2byte	0x1c8
 1818 09e9 B7000000 		.4byte	0xb7
 1819 09ed 9402     		.2byte	0x294
 1820 09ef 10       		.uleb128 0x10
 1821 09f0 74010000 		.4byte	.LASF215
 1822 09f4 06       		.byte	0x6
 1823 09f5 C901     		.2byte	0x1c9
 1824 09f7 B7000000 		.4byte	0xb7
 1825 09fb 9802     		.2byte	0x298
 1826 09fd 10       		.uleb128 0x10
 1827 09fe C9070000 		.4byte	.LASF216
 1828 0a02 06       		.byte	0x6
 1829 0a03 CA01     		.2byte	0x1ca
 1830 0a05 B7000000 		.4byte	0xb7
 1831 0a09 9C02     		.2byte	0x29c
 1832 0a0b 10       		.uleb128 0x10
 1833 0a0c AA040000 		.4byte	.LASF217
ARM GAS  /tmp/ccVHQYWs.s 			page 98


 1834 0a10 06       		.byte	0x6
 1835 0a11 CB01     		.2byte	0x1cb
 1836 0a13 B7000000 		.4byte	0xb7
 1837 0a17 A002     		.2byte	0x2a0
 1838 0a19 10       		.uleb128 0x10
 1839 0a1a C10A0000 		.4byte	.LASF218
 1840 0a1e 06       		.byte	0x6
 1841 0a1f CC01     		.2byte	0x1cc
 1842 0a21 990A0000 		.4byte	0xa99
 1843 0a25 A402     		.2byte	0x2a4
 1844 0a27 10       		.uleb128 0x10
 1845 0a28 BB0A0000 		.4byte	.LASF219
 1846 0a2c 06       		.byte	0x6
 1847 0a2d CD01     		.2byte	0x1cd
 1848 0a2f B7000000 		.4byte	0xb7
 1849 0a33 A802     		.2byte	0x2a8
 1850 0a35 00       		.byte	0
 1851 0a36 12       		.uleb128 0x12
 1852 0a37 97000000 		.4byte	0x97
 1853 0a3b 460A0000 		.4byte	0xa46
 1854 0a3f 13       		.uleb128 0x13
 1855 0a40 30070000 		.4byte	0x730
 1856 0a44 0B       		.byte	0xb
 1857 0a45 00       		.byte	0
 1858 0a46 05       		.uleb128 0x5
 1859 0a47 360A0000 		.4byte	0xa36
 1860 0a4b 12       		.uleb128 0x12
 1861 0a4c BC000000 		.4byte	0xbc
 1862 0a50 5B0A0000 		.4byte	0xa5b
 1863 0a54 13       		.uleb128 0x13
 1864 0a55 30070000 		.4byte	0x730
 1865 0a59 01       		.byte	0x1
 1866 0a5a 00       		.byte	0
 1867 0a5b 06       		.uleb128 0x6
 1868 0a5c 4B0A0000 		.4byte	0xa4b
 1869 0a60 05       		.uleb128 0x5
 1870 0a61 5B0A0000 		.4byte	0xa5b
 1871 0a65 12       		.uleb128 0x12
 1872 0a66 BC000000 		.4byte	0xbc
 1873 0a6a 750A0000 		.4byte	0xa75
 1874 0a6e 13       		.uleb128 0x13
 1875 0a6f 30070000 		.4byte	0x730
 1876 0a73 03       		.byte	0x3
 1877 0a74 00       		.byte	0
 1878 0a75 06       		.uleb128 0x6
 1879 0a76 650A0000 		.4byte	0xa65
 1880 0a7a 05       		.uleb128 0x5
 1881 0a7b 750A0000 		.4byte	0xa75
 1882 0a7f 12       		.uleb128 0x12
 1883 0a80 BC000000 		.4byte	0xbc
 1884 0a84 8F0A0000 		.4byte	0xa8f
 1885 0a88 13       		.uleb128 0x13
 1886 0a89 30070000 		.4byte	0x730
 1887 0a8d 04       		.byte	0x4
 1888 0a8e 00       		.byte	0
 1889 0a8f 06       		.uleb128 0x6
 1890 0a90 7F0A0000 		.4byte	0xa7f
ARM GAS  /tmp/ccVHQYWs.s 			page 99


 1891 0a94 05       		.uleb128 0x5
 1892 0a95 8F0A0000 		.4byte	0xa8f
 1893 0a99 12       		.uleb128 0x12
 1894 0a9a AC000000 		.4byte	0xac
 1895 0a9e A90A0000 		.4byte	0xaa9
 1896 0aa2 13       		.uleb128 0x13
 1897 0aa3 30070000 		.4byte	0x730
 1898 0aa7 00       		.byte	0
 1899 0aa8 00       		.byte	0
 1900 0aa9 12       		.uleb128 0x12
 1901 0aaa AC000000 		.4byte	0xac
 1902 0aae B90A0000 		.4byte	0xab9
 1903 0ab2 13       		.uleb128 0x13
 1904 0ab3 30070000 		.4byte	0x730
 1905 0ab7 5C       		.byte	0x5c
 1906 0ab8 00       		.byte	0
 1907 0ab9 12       		.uleb128 0x12
 1908 0aba AC000000 		.4byte	0xac
 1909 0abe C90A0000 		.4byte	0xac9
 1910 0ac2 13       		.uleb128 0x13
 1911 0ac3 30070000 		.4byte	0x730
 1912 0ac7 0E       		.byte	0xe
 1913 0ac8 00       		.byte	0
 1914 0ac9 12       		.uleb128 0x12
 1915 0aca AC000000 		.4byte	0xac
 1916 0ace D90A0000 		.4byte	0xad9
 1917 0ad2 13       		.uleb128 0x13
 1918 0ad3 30070000 		.4byte	0x730
 1919 0ad7 05       		.byte	0x5
 1920 0ad8 00       		.byte	0
 1921 0ad9 15       		.uleb128 0x15
 1922 0ada 500C0000 		.4byte	.LASF220
 1923 0ade 06       		.byte	0x6
 1924 0adf CE01     		.2byte	0x1ce
 1925 0ae1 89070000 		.4byte	0x789
 1926 0ae5 17       		.uleb128 0x17
 1927 0ae6 10       		.byte	0x10
 1928 0ae7 06       		.byte	0x6
 1929 0ae8 3F03     		.2byte	0x33f
 1930 0aea 230B0000 		.4byte	0xb23
 1931 0aee 0F       		.uleb128 0xf
 1932 0aef 90110000 		.4byte	.LASF221
 1933 0af3 06       		.byte	0x6
 1934 0af4 4103     		.2byte	0x341
 1935 0af6 B7000000 		.4byte	0xb7
 1936 0afa 00       		.byte	0
 1937 0afb 0F       		.uleb128 0xf
 1938 0afc 57010000 		.4byte	.LASF222
 1939 0b00 06       		.byte	0x6
 1940 0b01 4203     		.2byte	0x342
 1941 0b03 B7000000 		.4byte	0xb7
 1942 0b07 04       		.byte	0x4
 1943 0b08 16       		.uleb128 0x16
 1944 0b09 56414C00 		.ascii	"VAL\000"
 1945 0b0d 06       		.byte	0x6
 1946 0b0e 4303     		.2byte	0x343
 1947 0b10 B7000000 		.4byte	0xb7
ARM GAS  /tmp/ccVHQYWs.s 			page 100


 1948 0b14 08       		.byte	0x8
 1949 0b15 0F       		.uleb128 0xf
 1950 0b16 DA010000 		.4byte	.LASF223
 1951 0b1a 06       		.byte	0x6
 1952 0b1b 4403     		.2byte	0x344
 1953 0b1d BC000000 		.4byte	0xbc
 1954 0b21 0C       		.byte	0xc
 1955 0b22 00       		.byte	0
 1956 0b23 15       		.uleb128 0x15
 1957 0b24 C7090000 		.4byte	.LASF224
 1958 0b28 06       		.byte	0x6
 1959 0b29 4503     		.2byte	0x345
 1960 0b2b E50A0000 		.4byte	0xae5
 1961 0b2f 18       		.uleb128 0x18
 1962 0b30 110B0000 		.4byte	.LASF225
 1963 0b34 06       		.byte	0x6
 1964 0b35 6508     		.2byte	0x865
 1965 0b37 A7000000 		.4byte	0xa7
 1966 0b3b 19       		.uleb128 0x19
 1967 0b3c F5090000 		.4byte	.LASF226
 1968 0b40 0A       		.byte	0xa
 1969 0b41 3A       		.byte	0x3a
 1970 0b42 AC000000 		.4byte	0xac
 1971 0b46 1A       		.uleb128 0x1a
 1972 0b47 0C       		.byte	0xc
 1973 0b48 0B       		.byte	0xb
 1974 0b49 38       		.byte	0x38
 1975 0b4a 730B0000 		.4byte	0xb73
 1976 0b4e 0B       		.uleb128 0xb
 1977 0b4f EA010000 		.4byte	.LASF227
 1978 0b53 0B       		.byte	0xb
 1979 0b54 39       		.byte	0x39
 1980 0b55 B7000000 		.4byte	0xb7
 1981 0b59 00       		.byte	0
 1982 0b5a 0B       		.uleb128 0xb
 1983 0b5b DC0C0000 		.4byte	.LASF228
 1984 0b5f 0B       		.byte	0xb
 1985 0b60 3A       		.byte	0x3a
 1986 0b61 B7000000 		.4byte	0xb7
 1987 0b65 04       		.byte	0x4
 1988 0b66 0B       		.uleb128 0xb
 1989 0b67 BA020000 		.4byte	.LASF229
 1990 0b6b 0B       		.byte	0xb
 1991 0b6c 3B       		.byte	0x3b
 1992 0b6d BC000000 		.4byte	0xbc
 1993 0b71 08       		.byte	0x8
 1994 0b72 00       		.byte	0
 1995 0b73 1B       		.uleb128 0x1b
 1996 0b74 57647400 		.ascii	"Wdt\000"
 1997 0b78 0B       		.byte	0xb
 1998 0b79 3C       		.byte	0x3c
 1999 0b7a 460B0000 		.4byte	0xb46
 2000 0b7e 03       		.uleb128 0x3
 2001 0b7f 190E0000 		.4byte	.LASF230
 2002 0b83 0C       		.byte	0xc
 2003 0b84 07       		.byte	0x7
 2004 0b85 85000000 		.4byte	0x85
ARM GAS  /tmp/ccVHQYWs.s 			page 101


 2005 0b89 03       		.uleb128 0x3
 2006 0b8a C8010000 		.4byte	.LASF231
 2007 0b8e 0D       		.byte	0xd
 2008 0b8f 2C       		.byte	0x2c
 2009 0b90 5E000000 		.4byte	0x5e
 2010 0b94 03       		.uleb128 0x3
 2011 0b95 76020000 		.4byte	.LASF232
 2012 0b99 0D       		.byte	0xd
 2013 0b9a 72       		.byte	0x72
 2014 0b9b 5E000000 		.4byte	0x5e
 2015 0b9f 15       		.uleb128 0x15
 2016 0ba0 4F0D0000 		.4byte	.LASF233
 2017 0ba4 0E       		.byte	0xe
 2018 0ba5 6501     		.2byte	0x165
 2019 0ba7 25000000 		.4byte	0x25
 2020 0bab 1C       		.uleb128 0x1c
 2021 0bac 04       		.byte	0x4
 2022 0bad 0D       		.byte	0xd
 2023 0bae A6       		.byte	0xa6
 2024 0baf CA0B0000 		.4byte	0xbca
 2025 0bb3 1D       		.uleb128 0x1d
 2026 0bb4 3D010000 		.4byte	.LASF234
 2027 0bb8 0D       		.byte	0xd
 2028 0bb9 A8       		.byte	0xa8
 2029 0bba 9F0B0000 		.4byte	0xb9f
 2030 0bbe 1D       		.uleb128 0x1d
 2031 0bbf 9C0B0000 		.4byte	.LASF235
 2032 0bc3 0D       		.byte	0xd
 2033 0bc4 A9       		.byte	0xa9
 2034 0bc5 CA0B0000 		.4byte	0xbca
 2035 0bc9 00       		.byte	0
 2036 0bca 12       		.uleb128 0x12
 2037 0bcb 3E000000 		.4byte	0x3e
 2038 0bcf DA0B0000 		.4byte	0xbda
 2039 0bd3 13       		.uleb128 0x13
 2040 0bd4 30070000 		.4byte	0x730
 2041 0bd8 03       		.byte	0x3
 2042 0bd9 00       		.byte	0
 2043 0bda 1A       		.uleb128 0x1a
 2044 0bdb 08       		.byte	0x8
 2045 0bdc 0D       		.byte	0xd
 2046 0bdd A3       		.byte	0xa3
 2047 0bde FB0B0000 		.4byte	0xbfb
 2048 0be2 0B       		.uleb128 0xb
 2049 0be3 74030000 		.4byte	.LASF236
 2050 0be7 0D       		.byte	0xd
 2051 0be8 A5       		.byte	0xa5
 2052 0be9 85000000 		.4byte	0x85
 2053 0bed 00       		.byte	0
 2054 0bee 0B       		.uleb128 0xb
 2055 0bef 31060000 		.4byte	.LASF237
 2056 0bf3 0D       		.byte	0xd
 2057 0bf4 AA       		.byte	0xaa
 2058 0bf5 AB0B0000 		.4byte	0xbab
 2059 0bf9 04       		.byte	0x4
 2060 0bfa 00       		.byte	0
 2061 0bfb 03       		.uleb128 0x3
ARM GAS  /tmp/ccVHQYWs.s 			page 102


 2062 0bfc DB080000 		.4byte	.LASF238
 2063 0c00 0D       		.byte	0xd
 2064 0c01 AB       		.byte	0xab
 2065 0c02 DA0B0000 		.4byte	0xbda
 2066 0c06 03       		.uleb128 0x3
 2067 0c07 00000000 		.4byte	.LASF239
 2068 0c0b 0D       		.byte	0xd
 2069 0c0c AF       		.byte	0xaf
 2070 0c0d 7E0B0000 		.4byte	0xb7e
 2071 0c11 03       		.uleb128 0x3
 2072 0c12 2B020000 		.4byte	.LASF240
 2073 0c16 0F       		.byte	0xf
 2074 0c17 16       		.byte	0x16
 2075 0c18 70000000 		.4byte	0x70
 2076 0c1c 1E       		.uleb128 0x1e
 2077 0c1d E5020000 		.4byte	.LASF242
 2078 0c21 18       		.byte	0x18
 2079 0c22 0F       		.byte	0xf
 2080 0c23 2D       		.byte	0x2d
 2081 0c24 6F0C0000 		.4byte	0xc6f
 2082 0c28 0B       		.uleb128 0xb
 2083 0c29 B8050000 		.4byte	.LASF243
 2084 0c2d 0F       		.byte	0xf
 2085 0c2e 2F       		.byte	0x2f
 2086 0c2f 6F0C0000 		.4byte	0xc6f
 2087 0c33 00       		.byte	0
 2088 0c34 1F       		.uleb128 0x1f
 2089 0c35 5F6B00   		.ascii	"_k\000"
 2090 0c38 0F       		.byte	0xf
 2091 0c39 30       		.byte	0x30
 2092 0c3a 85000000 		.4byte	0x85
 2093 0c3e 04       		.byte	0x4
 2094 0c3f 0B       		.uleb128 0xb
 2095 0c40 760C0000 		.4byte	.LASF244
 2096 0c44 0F       		.byte	0xf
 2097 0c45 30       		.byte	0x30
 2098 0c46 85000000 		.4byte	0x85
 2099 0c4a 08       		.byte	0x8
 2100 0c4b 0B       		.uleb128 0xb
 2101 0c4c 97090000 		.4byte	.LASF245
 2102 0c50 0F       		.byte	0xf
 2103 0c51 30       		.byte	0x30
 2104 0c52 85000000 		.4byte	0x85
 2105 0c56 0C       		.byte	0xc
 2106 0c57 0B       		.uleb128 0xb
 2107 0c58 4F040000 		.4byte	.LASF246
 2108 0c5c 0F       		.byte	0xf
 2109 0c5d 30       		.byte	0x30
 2110 0c5e 85000000 		.4byte	0x85
 2111 0c62 10       		.byte	0x10
 2112 0c63 1F       		.uleb128 0x1f
 2113 0c64 5F7800   		.ascii	"_x\000"
 2114 0c67 0F       		.byte	0xf
 2115 0c68 31       		.byte	0x31
 2116 0c69 750C0000 		.4byte	0xc75
 2117 0c6d 14       		.byte	0x14
 2118 0c6e 00       		.byte	0
ARM GAS  /tmp/ccVHQYWs.s 			page 103


 2119 0c6f 20       		.uleb128 0x20
 2120 0c70 04       		.byte	0x4
 2121 0c71 1C0C0000 		.4byte	0xc1c
 2122 0c75 12       		.uleb128 0x12
 2123 0c76 110C0000 		.4byte	0xc11
 2124 0c7a 850C0000 		.4byte	0xc85
 2125 0c7e 13       		.uleb128 0x13
 2126 0c7f 30070000 		.4byte	0x730
 2127 0c83 00       		.byte	0
 2128 0c84 00       		.byte	0
 2129 0c85 1E       		.uleb128 0x1e
 2130 0c86 D70C0000 		.4byte	.LASF247
 2131 0c8a 24       		.byte	0x24
 2132 0c8b 0F       		.byte	0xf
 2133 0c8c 35       		.byte	0x35
 2134 0c8d FE0C0000 		.4byte	0xcfe
 2135 0c91 0B       		.uleb128 0xb
 2136 0c92 55050000 		.4byte	.LASF248
 2137 0c96 0F       		.byte	0xf
 2138 0c97 37       		.byte	0x37
 2139 0c98 85000000 		.4byte	0x85
 2140 0c9c 00       		.byte	0
 2141 0c9d 0B       		.uleb128 0xb
 2142 0c9e 2B110000 		.4byte	.LASF249
 2143 0ca2 0F       		.byte	0xf
 2144 0ca3 38       		.byte	0x38
 2145 0ca4 85000000 		.4byte	0x85
 2146 0ca8 04       		.byte	0x4
 2147 0ca9 0B       		.uleb128 0xb
 2148 0caa 5A030000 		.4byte	.LASF250
 2149 0cae 0F       		.byte	0xf
 2150 0caf 39       		.byte	0x39
 2151 0cb0 85000000 		.4byte	0x85
 2152 0cb4 08       		.byte	0x8
 2153 0cb5 0B       		.uleb128 0xb
 2154 0cb6 BF060000 		.4byte	.LASF251
 2155 0cba 0F       		.byte	0xf
 2156 0cbb 3A       		.byte	0x3a
 2157 0cbc 85000000 		.4byte	0x85
 2158 0cc0 0C       		.byte	0xc
 2159 0cc1 0B       		.uleb128 0xb
 2160 0cc2 BE090000 		.4byte	.LASF252
 2161 0cc6 0F       		.byte	0xf
 2162 0cc7 3B       		.byte	0x3b
 2163 0cc8 85000000 		.4byte	0x85
 2164 0ccc 10       		.byte	0x10
 2165 0ccd 0B       		.uleb128 0xb
 2166 0cce C40B0000 		.4byte	.LASF253
 2167 0cd2 0F       		.byte	0xf
 2168 0cd3 3C       		.byte	0x3c
 2169 0cd4 85000000 		.4byte	0x85
 2170 0cd8 14       		.byte	0x14
 2171 0cd9 0B       		.uleb128 0xb
 2172 0cda 18030000 		.4byte	.LASF254
 2173 0cde 0F       		.byte	0xf
 2174 0cdf 3D       		.byte	0x3d
 2175 0ce0 85000000 		.4byte	0x85
ARM GAS  /tmp/ccVHQYWs.s 			page 104


 2176 0ce4 18       		.byte	0x18
 2177 0ce5 0B       		.uleb128 0xb
 2178 0ce6 6E050000 		.4byte	.LASF255
 2179 0cea 0F       		.byte	0xf
 2180 0ceb 3E       		.byte	0x3e
 2181 0cec 85000000 		.4byte	0x85
 2182 0cf0 1C       		.byte	0x1c
 2183 0cf1 0B       		.uleb128 0xb
 2184 0cf2 22090000 		.4byte	.LASF256
 2185 0cf6 0F       		.byte	0xf
 2186 0cf7 3F       		.byte	0x3f
 2187 0cf8 85000000 		.4byte	0x85
 2188 0cfc 20       		.byte	0x20
 2189 0cfd 00       		.byte	0
 2190 0cfe 0A       		.uleb128 0xa
 2191 0cff DB0B0000 		.4byte	.LASF257
 2192 0d03 0801     		.2byte	0x108
 2193 0d05 0F       		.byte	0xf
 2194 0d06 48       		.byte	0x48
 2195 0d07 3E0D0000 		.4byte	0xd3e
 2196 0d0b 0B       		.uleb128 0xb
 2197 0d0c CE0F0000 		.4byte	.LASF258
 2198 0d10 0F       		.byte	0xf
 2199 0d11 49       		.byte	0x49
 2200 0d12 3E0D0000 		.4byte	0xd3e
 2201 0d16 00       		.byte	0
 2202 0d17 0B       		.uleb128 0xb
 2203 0d18 6E0D0000 		.4byte	.LASF259
 2204 0d1c 0F       		.byte	0xf
 2205 0d1d 4A       		.byte	0x4a
 2206 0d1e 3E0D0000 		.4byte	0xd3e
 2207 0d22 80       		.byte	0x80
 2208 0d23 0C       		.uleb128 0xc
 2209 0d24 70100000 		.4byte	.LASF260
 2210 0d28 0F       		.byte	0xf
 2211 0d29 4C       		.byte	0x4c
 2212 0d2a 110C0000 		.4byte	0xc11
 2213 0d2e 0001     		.2byte	0x100
 2214 0d30 0C       		.uleb128 0xc
 2215 0d31 18110000 		.4byte	.LASF261
 2216 0d35 0F       		.byte	0xf
 2217 0d36 4F       		.byte	0x4f
 2218 0d37 110C0000 		.4byte	0xc11
 2219 0d3b 0401     		.2byte	0x104
 2220 0d3d 00       		.byte	0
 2221 0d3e 12       		.uleb128 0x12
 2222 0d3f 4D060000 		.4byte	0x64d
 2223 0d43 4E0D0000 		.4byte	0xd4e
 2224 0d47 13       		.uleb128 0x13
 2225 0d48 30070000 		.4byte	0x730
 2226 0d4c 1F       		.byte	0x1f
 2227 0d4d 00       		.byte	0
 2228 0d4e 0A       		.uleb128 0xa
 2229 0d4f 620A0000 		.4byte	.LASF262
 2230 0d53 9001     		.2byte	0x190
 2231 0d55 0F       		.byte	0xf
 2232 0d56 5B       		.byte	0x5b
ARM GAS  /tmp/ccVHQYWs.s 			page 105


 2233 0d57 8C0D0000 		.4byte	0xd8c
 2234 0d5b 0B       		.uleb128 0xb
 2235 0d5c B8050000 		.4byte	.LASF243
 2236 0d60 0F       		.byte	0xf
 2237 0d61 5C       		.byte	0x5c
 2238 0d62 8C0D0000 		.4byte	0xd8c
 2239 0d66 00       		.byte	0
 2240 0d67 0B       		.uleb128 0xb
 2241 0d68 4B090000 		.4byte	.LASF263
 2242 0d6c 0F       		.byte	0xf
 2243 0d6d 5D       		.byte	0x5d
 2244 0d6e 85000000 		.4byte	0x85
 2245 0d72 04       		.byte	0x4
 2246 0d73 0B       		.uleb128 0xb
 2247 0d74 8E020000 		.4byte	.LASF264
 2248 0d78 0F       		.byte	0xf
 2249 0d79 5F       		.byte	0x5f
 2250 0d7a 920D0000 		.4byte	0xd92
 2251 0d7e 08       		.byte	0x8
 2252 0d7f 0B       		.uleb128 0xb
 2253 0d80 DB0B0000 		.4byte	.LASF257
 2254 0d84 0F       		.byte	0xf
 2255 0d85 60       		.byte	0x60
 2256 0d86 FE0C0000 		.4byte	0xcfe
 2257 0d8a 88       		.byte	0x88
 2258 0d8b 00       		.byte	0
 2259 0d8c 20       		.uleb128 0x20
 2260 0d8d 04       		.byte	0x4
 2261 0d8e 4E0D0000 		.4byte	0xd4e
 2262 0d92 12       		.uleb128 0x12
 2263 0d93 A20D0000 		.4byte	0xda2
 2264 0d97 A20D0000 		.4byte	0xda2
 2265 0d9b 13       		.uleb128 0x13
 2266 0d9c 30070000 		.4byte	0x730
 2267 0da0 1F       		.byte	0x1f
 2268 0da1 00       		.byte	0
 2269 0da2 20       		.uleb128 0x20
 2270 0da3 04       		.byte	0x4
 2271 0da4 A80D0000 		.4byte	0xda8
 2272 0da8 21       		.uleb128 0x21
 2273 0da9 1E       		.uleb128 0x1e
 2274 0daa 140F0000 		.4byte	.LASF265
 2275 0dae 08       		.byte	0x8
 2276 0daf 0F       		.byte	0xf
 2277 0db0 73       		.byte	0x73
 2278 0db1 CE0D0000 		.4byte	0xdce
 2279 0db5 0B       		.uleb128 0xb
 2280 0db6 16080000 		.4byte	.LASF266
 2281 0dba 0F       		.byte	0xf
 2282 0dbb 74       		.byte	0x74
 2283 0dbc CE0D0000 		.4byte	0xdce
 2284 0dc0 00       		.byte	0
 2285 0dc1 0B       		.uleb128 0xb
 2286 0dc2 96100000 		.4byte	.LASF267
 2287 0dc6 0F       		.byte	0xf
 2288 0dc7 75       		.byte	0x75
 2289 0dc8 85000000 		.4byte	0x85
ARM GAS  /tmp/ccVHQYWs.s 			page 106


 2290 0dcc 04       		.byte	0x4
 2291 0dcd 00       		.byte	0
 2292 0dce 20       		.uleb128 0x20
 2293 0dcf 04       		.byte	0x4
 2294 0dd0 3E000000 		.4byte	0x3e
 2295 0dd4 1E       		.uleb128 0x1e
 2296 0dd5 47040000 		.4byte	.LASF268
 2297 0dd9 68       		.byte	0x68
 2298 0dda 0F       		.byte	0xf
 2299 0ddb B3       		.byte	0xb3
 2300 0ddc FE0E0000 		.4byte	0xefe
 2301 0de0 1F       		.uleb128 0x1f
 2302 0de1 5F7000   		.ascii	"_p\000"
 2303 0de4 0F       		.byte	0xf
 2304 0de5 B4       		.byte	0xb4
 2305 0de6 CE0D0000 		.4byte	0xdce
 2306 0dea 00       		.byte	0
 2307 0deb 1F       		.uleb128 0x1f
 2308 0dec 5F7200   		.ascii	"_r\000"
 2309 0def 0F       		.byte	0xf
 2310 0df0 B5       		.byte	0xb5
 2311 0df1 85000000 		.4byte	0x85
 2312 0df5 04       		.byte	0x4
 2313 0df6 1F       		.uleb128 0x1f
 2314 0df7 5F7700   		.ascii	"_w\000"
 2315 0dfa 0F       		.byte	0xf
 2316 0dfb B6       		.byte	0xb6
 2317 0dfc 85000000 		.4byte	0x85
 2318 0e00 08       		.byte	0x8
 2319 0e01 0B       		.uleb128 0xb
 2320 0e02 99010000 		.4byte	.LASF269
 2321 0e06 0F       		.byte	0xf
 2322 0e07 B7       		.byte	0xb7
 2323 0e08 45000000 		.4byte	0x45
 2324 0e0c 0C       		.byte	0xc
 2325 0e0d 0B       		.uleb128 0xb
 2326 0e0e 82080000 		.4byte	.LASF270
 2327 0e12 0F       		.byte	0xf
 2328 0e13 B8       		.byte	0xb8
 2329 0e14 45000000 		.4byte	0x45
 2330 0e18 0E       		.byte	0xe
 2331 0e19 1F       		.uleb128 0x1f
 2332 0e1a 5F626600 		.ascii	"_bf\000"
 2333 0e1e 0F       		.byte	0xf
 2334 0e1f B9       		.byte	0xb9
 2335 0e20 A90D0000 		.4byte	0xda9
 2336 0e24 10       		.byte	0x10
 2337 0e25 0B       		.uleb128 0xb
 2338 0e26 90010000 		.4byte	.LASF271
 2339 0e2a 0F       		.byte	0xf
 2340 0e2b BA       		.byte	0xba
 2341 0e2c 85000000 		.4byte	0x85
 2342 0e30 18       		.byte	0x18
 2343 0e31 0B       		.uleb128 0xb
 2344 0e32 A3020000 		.4byte	.LASF272
 2345 0e36 0F       		.byte	0xf
 2346 0e37 C1       		.byte	0xc1
ARM GAS  /tmp/ccVHQYWs.s 			page 107


 2347 0e38 4D060000 		.4byte	0x64d
 2348 0e3c 1C       		.byte	0x1c
 2349 0e3d 0B       		.uleb128 0xb
 2350 0e3e 20020000 		.4byte	.LASF273
 2351 0e42 0F       		.byte	0xf
 2352 0e43 C3       		.byte	0xc3
 2353 0e44 6B100000 		.4byte	0x106b
 2354 0e48 20       		.byte	0x20
 2355 0e49 0B       		.uleb128 0xb
 2356 0e4a 1A0A0000 		.4byte	.LASF274
 2357 0e4e 0F       		.byte	0xf
 2358 0e4f C5       		.byte	0xc5
 2359 0e50 95100000 		.4byte	0x1095
 2360 0e54 24       		.byte	0x24
 2361 0e55 0B       		.uleb128 0xb
 2362 0e56 73110000 		.4byte	.LASF275
 2363 0e5a 0F       		.byte	0xf
 2364 0e5b C8       		.byte	0xc8
 2365 0e5c B9100000 		.4byte	0x10b9
 2366 0e60 28       		.byte	0x28
 2367 0e61 0B       		.uleb128 0xb
 2368 0e62 8B070000 		.4byte	.LASF276
 2369 0e66 0F       		.byte	0xf
 2370 0e67 C9       		.byte	0xc9
 2371 0e68 D3100000 		.4byte	0x10d3
 2372 0e6c 2C       		.byte	0x2c
 2373 0e6d 1F       		.uleb128 0x1f
 2374 0e6e 5F756200 		.ascii	"_ub\000"
 2375 0e72 0F       		.byte	0xf
 2376 0e73 CC       		.byte	0xcc
 2377 0e74 A90D0000 		.4byte	0xda9
 2378 0e78 30       		.byte	0x30
 2379 0e79 1F       		.uleb128 0x1f
 2380 0e7a 5F757000 		.ascii	"_up\000"
 2381 0e7e 0F       		.byte	0xf
 2382 0e7f CD       		.byte	0xcd
 2383 0e80 CE0D0000 		.4byte	0xdce
 2384 0e84 38       		.byte	0x38
 2385 0e85 1F       		.uleb128 0x1f
 2386 0e86 5F757200 		.ascii	"_ur\000"
 2387 0e8a 0F       		.byte	0xf
 2388 0e8b CE       		.byte	0xce
 2389 0e8c 85000000 		.4byte	0x85
 2390 0e90 3C       		.byte	0x3c
 2391 0e91 0B       		.uleb128 0xb
 2392 0e92 B9040000 		.4byte	.LASF277
 2393 0e96 0F       		.byte	0xf
 2394 0e97 D1       		.byte	0xd1
 2395 0e98 D9100000 		.4byte	0x10d9
 2396 0e9c 40       		.byte	0x40
 2397 0e9d 0B       		.uleb128 0xb
 2398 0e9e D0100000 		.4byte	.LASF278
 2399 0ea2 0F       		.byte	0xf
 2400 0ea3 D2       		.byte	0xd2
 2401 0ea4 E9100000 		.4byte	0x10e9
 2402 0ea8 43       		.byte	0x43
 2403 0ea9 1F       		.uleb128 0x1f
ARM GAS  /tmp/ccVHQYWs.s 			page 108


 2404 0eaa 5F6C6200 		.ascii	"_lb\000"
 2405 0eae 0F       		.byte	0xf
 2406 0eaf D5       		.byte	0xd5
 2407 0eb0 A90D0000 		.4byte	0xda9
 2408 0eb4 44       		.byte	0x44
 2409 0eb5 0B       		.uleb128 0xb
 2410 0eb6 CE0C0000 		.4byte	.LASF279
 2411 0eba 0F       		.byte	0xf
 2412 0ebb D8       		.byte	0xd8
 2413 0ebc 85000000 		.4byte	0x85
 2414 0ec0 4C       		.byte	0x4c
 2415 0ec1 0B       		.uleb128 0xb
 2416 0ec2 B1040000 		.4byte	.LASF280
 2417 0ec6 0F       		.byte	0xf
 2418 0ec7 D9       		.byte	0xd9
 2419 0ec8 890B0000 		.4byte	0xb89
 2420 0ecc 50       		.byte	0x50
 2421 0ecd 0B       		.uleb128 0xb
 2422 0ece 840B0000 		.4byte	.LASF281
 2423 0ed2 0F       		.byte	0xf
 2424 0ed3 DC       		.byte	0xdc
 2425 0ed4 1C0F0000 		.4byte	0xf1c
 2426 0ed8 54       		.byte	0x54
 2427 0ed9 0B       		.uleb128 0xb
 2428 0eda E80C0000 		.4byte	.LASF282
 2429 0ede 0F       		.byte	0xf
 2430 0edf E0       		.byte	0xe0
 2431 0ee0 060C0000 		.4byte	0xc06
 2432 0ee4 58       		.byte	0x58
 2433 0ee5 0B       		.uleb128 0xb
 2434 0ee6 04020000 		.4byte	.LASF283
 2435 0eea 0F       		.byte	0xf
 2436 0eeb E2       		.byte	0xe2
 2437 0eec FB0B0000 		.4byte	0xbfb
 2438 0ef0 5C       		.byte	0x5c
 2439 0ef1 0B       		.uleb128 0xb
 2440 0ef2 10110000 		.4byte	.LASF284
 2441 0ef6 0F       		.byte	0xf
 2442 0ef7 E3       		.byte	0xe3
 2443 0ef8 85000000 		.4byte	0x85
 2444 0efc 64       		.byte	0x64
 2445 0efd 00       		.byte	0
 2446 0efe 22       		.uleb128 0x22
 2447 0eff 85000000 		.4byte	0x85
 2448 0f03 1C0F0000 		.4byte	0xf1c
 2449 0f07 23       		.uleb128 0x23
 2450 0f08 1C0F0000 		.4byte	0xf1c
 2451 0f0c 23       		.uleb128 0x23
 2452 0f0d 4D060000 		.4byte	0x64d
 2453 0f11 23       		.uleb128 0x23
 2454 0f12 59100000 		.4byte	0x1059
 2455 0f16 23       		.uleb128 0x23
 2456 0f17 85000000 		.4byte	0x85
 2457 0f1b 00       		.byte	0
 2458 0f1c 20       		.uleb128 0x20
 2459 0f1d 04       		.byte	0x4
 2460 0f1e 270F0000 		.4byte	0xf27
ARM GAS  /tmp/ccVHQYWs.s 			page 109


 2461 0f22 06       		.uleb128 0x6
 2462 0f23 1C0F0000 		.4byte	0xf1c
 2463 0f27 24       		.uleb128 0x24
 2464 0f28 FC0F0000 		.4byte	.LASF285
 2465 0f2c 2804     		.2byte	0x428
 2466 0f2e 0F       		.byte	0xf
 2467 0f2f 3802     		.2byte	0x238
 2468 0f31 59100000 		.4byte	0x1059
 2469 0f35 0F       		.uleb128 0xf
 2470 0f36 C1010000 		.4byte	.LASF286
 2471 0f3a 0F       		.byte	0xf
 2472 0f3b 3A02     		.2byte	0x23a
 2473 0f3d 85000000 		.4byte	0x85
 2474 0f41 00       		.byte	0
 2475 0f42 0F       		.uleb128 0xf
 2476 0f43 D5070000 		.4byte	.LASF287
 2477 0f47 0F       		.byte	0xf
 2478 0f48 3F02     		.2byte	0x23f
 2479 0f4a 40110000 		.4byte	0x1140
 2480 0f4e 04       		.byte	0x4
 2481 0f4f 0F       		.uleb128 0xf
 2482 0f50 62020000 		.4byte	.LASF288
 2483 0f54 0F       		.byte	0xf
 2484 0f55 3F02     		.2byte	0x23f
 2485 0f57 40110000 		.4byte	0x1140
 2486 0f5b 08       		.byte	0x8
 2487 0f5c 0F       		.uleb128 0xf
 2488 0f5d 79110000 		.4byte	.LASF289
 2489 0f61 0F       		.byte	0xf
 2490 0f62 3F02     		.2byte	0x23f
 2491 0f64 40110000 		.4byte	0x1140
 2492 0f68 0C       		.byte	0xc
 2493 0f69 0F       		.uleb128 0xf
 2494 0f6a 78050000 		.4byte	.LASF290
 2495 0f6e 0F       		.byte	0xf
 2496 0f6f 4102     		.2byte	0x241
 2497 0f71 85000000 		.4byte	0x85
 2498 0f75 10       		.byte	0x10
 2499 0f76 0F       		.uleb128 0xf
 2500 0f77 DA040000 		.4byte	.LASF291
 2501 0f7b 0F       		.byte	0xf
 2502 0f7c 4202     		.2byte	0x242
 2503 0f7e 22130000 		.4byte	0x1322
 2504 0f82 14       		.byte	0x14
 2505 0f83 0F       		.uleb128 0xf
 2506 0f84 8A0B0000 		.4byte	.LASF292
 2507 0f88 0F       		.byte	0xf
 2508 0f89 4402     		.2byte	0x244
 2509 0f8b 85000000 		.4byte	0x85
 2510 0f8f 30       		.byte	0x30
 2511 0f90 0F       		.uleb128 0xf
 2512 0f91 740B0000 		.4byte	.LASF293
 2513 0f95 0F       		.byte	0xf
 2514 0f96 4502     		.2byte	0x245
 2515 0f98 8F100000 		.4byte	0x108f
 2516 0f9c 34       		.byte	0x34
 2517 0f9d 0F       		.uleb128 0xf
ARM GAS  /tmp/ccVHQYWs.s 			page 110


 2518 0f9e A7070000 		.4byte	.LASF294
 2519 0fa2 0F       		.byte	0xf
 2520 0fa3 4702     		.2byte	0x247
 2521 0fa5 85000000 		.4byte	0x85
 2522 0fa9 38       		.byte	0x38
 2523 0faa 0F       		.uleb128 0xf
 2524 0fab C8080000 		.4byte	.LASF295
 2525 0faf 0F       		.byte	0xf
 2526 0fb0 4902     		.2byte	0x249
 2527 0fb2 3D130000 		.4byte	0x133d
 2528 0fb6 3C       		.byte	0x3c
 2529 0fb7 0F       		.uleb128 0xf
 2530 0fb8 32030000 		.4byte	.LASF296
 2531 0fbc 0F       		.byte	0xf
 2532 0fbd 4C02     		.2byte	0x24c
 2533 0fbf 6F0C0000 		.4byte	0xc6f
 2534 0fc3 40       		.byte	0x40
 2535 0fc4 0F       		.uleb128 0xf
 2536 0fc5 28070000 		.4byte	.LASF297
 2537 0fc9 0F       		.byte	0xf
 2538 0fca 4D02     		.2byte	0x24d
 2539 0fcc 85000000 		.4byte	0x85
 2540 0fd0 44       		.byte	0x44
 2541 0fd1 0F       		.uleb128 0xf
 2542 0fd2 F90B0000 		.4byte	.LASF298
 2543 0fd6 0F       		.byte	0xf
 2544 0fd7 4E02     		.2byte	0x24e
 2545 0fd9 6F0C0000 		.4byte	0xc6f
 2546 0fdd 48       		.byte	0x48
 2547 0fde 0F       		.uleb128 0xf
 2548 0fdf 2C080000 		.4byte	.LASF299
 2549 0fe3 0F       		.byte	0xf
 2550 0fe4 4F02     		.2byte	0x24f
 2551 0fe6 43130000 		.4byte	0x1343
 2552 0fea 4C       		.byte	0x4c
 2553 0feb 0F       		.uleb128 0xf
 2554 0fec 6E0C0000 		.4byte	.LASF300
 2555 0ff0 0F       		.byte	0xf
 2556 0ff1 5202     		.2byte	0x252
 2557 0ff3 85000000 		.4byte	0x85
 2558 0ff7 50       		.byte	0x50
 2559 0ff8 0F       		.uleb128 0xf
 2560 0ff9 D10D0000 		.4byte	.LASF301
 2561 0ffd 0F       		.byte	0xf
 2562 0ffe 5302     		.2byte	0x253
 2563 1000 59100000 		.4byte	0x1059
 2564 1004 54       		.byte	0x54
 2565 1005 0F       		.uleb128 0xf
 2566 1006 63070000 		.4byte	.LASF302
 2567 100a 0F       		.byte	0xf
 2568 100b 7602     		.2byte	0x276
 2569 100d 00130000 		.4byte	0x1300
 2570 1011 58       		.byte	0x58
 2571 1012 10       		.uleb128 0x10
 2572 1013 620A0000 		.4byte	.LASF262
 2573 1017 0F       		.byte	0xf
 2574 1018 7A02     		.2byte	0x27a
ARM GAS  /tmp/ccVHQYWs.s 			page 111


 2575 101a 8C0D0000 		.4byte	0xd8c
 2576 101e 4801     		.2byte	0x148
 2577 1020 10       		.uleb128 0x10
 2578 1021 E2060000 		.4byte	.LASF303
 2579 1025 0F       		.byte	0xf
 2580 1026 7B02     		.2byte	0x27b
 2581 1028 4E0D0000 		.4byte	0xd4e
 2582 102c 4C01     		.2byte	0x14c
 2583 102e 10       		.uleb128 0x10
 2584 102f C9060000 		.4byte	.LASF304
 2585 1033 0F       		.byte	0xf
 2586 1034 7F02     		.2byte	0x27f
 2587 1036 54130000 		.4byte	0x1354
 2588 103a DC02     		.2byte	0x2dc
 2589 103c 10       		.uleb128 0x10
 2590 103d 890F0000 		.4byte	.LASF305
 2591 1041 0F       		.byte	0xf
 2592 1042 8402     		.2byte	0x284
 2593 1044 05110000 		.4byte	0x1105
 2594 1048 E002     		.2byte	0x2e0
 2595 104a 10       		.uleb128 0x10
 2596 104b 500B0000 		.4byte	.LASF306
 2597 104f 0F       		.byte	0xf
 2598 1050 8502     		.2byte	0x285
 2599 1052 60130000 		.4byte	0x1360
 2600 1056 EC02     		.2byte	0x2ec
 2601 1058 00       		.byte	0
 2602 1059 20       		.uleb128 0x20
 2603 105a 04       		.byte	0x4
 2604 105b 5F100000 		.4byte	0x105f
 2605 105f 02       		.uleb128 0x2
 2606 1060 01       		.byte	0x1
 2607 1061 08       		.byte	0x8
 2608 1062 A3060000 		.4byte	.LASF307
 2609 1066 06       		.uleb128 0x6
 2610 1067 5F100000 		.4byte	0x105f
 2611 106b 20       		.uleb128 0x20
 2612 106c 04       		.byte	0x4
 2613 106d FE0E0000 		.4byte	0xefe
 2614 1071 22       		.uleb128 0x22
 2615 1072 85000000 		.4byte	0x85
 2616 1076 8F100000 		.4byte	0x108f
 2617 107a 23       		.uleb128 0x23
 2618 107b 1C0F0000 		.4byte	0xf1c
 2619 107f 23       		.uleb128 0x23
 2620 1080 4D060000 		.4byte	0x64d
 2621 1084 23       		.uleb128 0x23
 2622 1085 8F100000 		.4byte	0x108f
 2623 1089 23       		.uleb128 0x23
 2624 108a 85000000 		.4byte	0x85
 2625 108e 00       		.byte	0
 2626 108f 20       		.uleb128 0x20
 2627 1090 04       		.byte	0x4
 2628 1091 66100000 		.4byte	0x1066
 2629 1095 20       		.uleb128 0x20
 2630 1096 04       		.byte	0x4
 2631 1097 71100000 		.4byte	0x1071
ARM GAS  /tmp/ccVHQYWs.s 			page 112


 2632 109b 22       		.uleb128 0x22
 2633 109c 940B0000 		.4byte	0xb94
 2634 10a0 B9100000 		.4byte	0x10b9
 2635 10a4 23       		.uleb128 0x23
 2636 10a5 1C0F0000 		.4byte	0xf1c
 2637 10a9 23       		.uleb128 0x23
 2638 10aa 4D060000 		.4byte	0x64d
 2639 10ae 23       		.uleb128 0x23
 2640 10af 940B0000 		.4byte	0xb94
 2641 10b3 23       		.uleb128 0x23
 2642 10b4 85000000 		.4byte	0x85
 2643 10b8 00       		.byte	0
 2644 10b9 20       		.uleb128 0x20
 2645 10ba 04       		.byte	0x4
 2646 10bb 9B100000 		.4byte	0x109b
 2647 10bf 22       		.uleb128 0x22
 2648 10c0 85000000 		.4byte	0x85
 2649 10c4 D3100000 		.4byte	0x10d3
 2650 10c8 23       		.uleb128 0x23
 2651 10c9 1C0F0000 		.4byte	0xf1c
 2652 10cd 23       		.uleb128 0x23
 2653 10ce 4D060000 		.4byte	0x64d
 2654 10d2 00       		.byte	0
 2655 10d3 20       		.uleb128 0x20
 2656 10d4 04       		.byte	0x4
 2657 10d5 BF100000 		.4byte	0x10bf
 2658 10d9 12       		.uleb128 0x12
 2659 10da 3E000000 		.4byte	0x3e
 2660 10de E9100000 		.4byte	0x10e9
 2661 10e2 13       		.uleb128 0x13
 2662 10e3 30070000 		.4byte	0x730
 2663 10e7 02       		.byte	0x2
 2664 10e8 00       		.byte	0
 2665 10e9 12       		.uleb128 0x12
 2666 10ea 3E000000 		.4byte	0x3e
 2667 10ee F9100000 		.4byte	0x10f9
 2668 10f2 13       		.uleb128 0x13
 2669 10f3 30070000 		.4byte	0x730
 2670 10f7 00       		.byte	0
 2671 10f8 00       		.byte	0
 2672 10f9 15       		.uleb128 0x15
 2673 10fa A3040000 		.4byte	.LASF308
 2674 10fe 0F       		.byte	0xf
 2675 10ff 1D01     		.2byte	0x11d
 2676 1101 D40D0000 		.4byte	0xdd4
 2677 1105 25       		.uleb128 0x25
 2678 1106 3F0F0000 		.4byte	.LASF309
 2679 110a 0C       		.byte	0xc
 2680 110b 0F       		.byte	0xf
 2681 110c 2101     		.2byte	0x121
 2682 110e 3A110000 		.4byte	0x113a
 2683 1112 0F       		.uleb128 0xf
 2684 1113 B8050000 		.4byte	.LASF243
 2685 1117 0F       		.byte	0xf
 2686 1118 2301     		.2byte	0x123
 2687 111a 3A110000 		.4byte	0x113a
 2688 111e 00       		.byte	0
ARM GAS  /tmp/ccVHQYWs.s 			page 113


 2689 111f 0F       		.uleb128 0xf
 2690 1120 480D0000 		.4byte	.LASF310
 2691 1124 0F       		.byte	0xf
 2692 1125 2401     		.2byte	0x124
 2693 1127 85000000 		.4byte	0x85
 2694 112b 04       		.byte	0x4
 2695 112c 0F       		.uleb128 0xf
 2696 112d 8A110000 		.4byte	.LASF311
 2697 1131 0F       		.byte	0xf
 2698 1132 2501     		.2byte	0x125
 2699 1134 40110000 		.4byte	0x1140
 2700 1138 08       		.byte	0x8
 2701 1139 00       		.byte	0
 2702 113a 20       		.uleb128 0x20
 2703 113b 04       		.byte	0x4
 2704 113c 05110000 		.4byte	0x1105
 2705 1140 20       		.uleb128 0x20
 2706 1141 04       		.byte	0x4
 2707 1142 F9100000 		.4byte	0x10f9
 2708 1146 25       		.uleb128 0x25
 2709 1147 A0030000 		.4byte	.LASF312
 2710 114b 0E       		.byte	0xe
 2711 114c 0F       		.byte	0xf
 2712 114d 3D01     		.2byte	0x13d
 2713 114f 7B110000 		.4byte	0x117b
 2714 1153 0F       		.uleb128 0xf
 2715 1154 46110000 		.4byte	.LASF313
 2716 1158 0F       		.byte	0xf
 2717 1159 3E01     		.2byte	0x13e
 2718 115b 7B110000 		.4byte	0x117b
 2719 115f 00       		.byte	0
 2720 1160 0F       		.uleb128 0xf
 2721 1161 36080000 		.4byte	.LASF314
 2722 1165 0F       		.byte	0xf
 2723 1166 3F01     		.2byte	0x13f
 2724 1168 7B110000 		.4byte	0x117b
 2725 116c 06       		.byte	0x6
 2726 116d 0F       		.uleb128 0xf
 2727 116e 44080000 		.4byte	.LASF315
 2728 1172 0F       		.byte	0xf
 2729 1173 4001     		.2byte	0x140
 2730 1175 4C000000 		.4byte	0x4c
 2731 1179 0C       		.byte	0xc
 2732 117a 00       		.byte	0
 2733 117b 12       		.uleb128 0x12
 2734 117c 4C000000 		.4byte	0x4c
 2735 1180 8B110000 		.4byte	0x118b
 2736 1184 13       		.uleb128 0x13
 2737 1185 30070000 		.4byte	0x730
 2738 1189 02       		.byte	0x2
 2739 118a 00       		.byte	0
 2740 118b 17       		.uleb128 0x17
 2741 118c D0       		.byte	0xd0
 2742 118d 0F       		.byte	0xf
 2743 118e 5702     		.2byte	0x257
 2744 1190 8C120000 		.4byte	0x128c
 2745 1194 0F       		.uleb128 0xf
ARM GAS  /tmp/ccVHQYWs.s 			page 114


 2746 1195 D6100000 		.4byte	.LASF316
 2747 1199 0F       		.byte	0xf
 2748 119a 5902     		.2byte	0x259
 2749 119c 25000000 		.4byte	0x25
 2750 11a0 00       		.byte	0
 2751 11a1 0F       		.uleb128 0xf
 2752 11a2 A10F0000 		.4byte	.LASF317
 2753 11a6 0F       		.byte	0xf
 2754 11a7 5A02     		.2byte	0x25a
 2755 11a9 59100000 		.4byte	0x1059
 2756 11ad 04       		.byte	0x4
 2757 11ae 0F       		.uleb128 0xf
 2758 11af 3A040000 		.4byte	.LASF318
 2759 11b3 0F       		.byte	0xf
 2760 11b4 5B02     		.2byte	0x25b
 2761 11b6 8C120000 		.4byte	0x128c
 2762 11ba 08       		.byte	0x8
 2763 11bb 0F       		.uleb128 0xf
 2764 11bc 0B0C0000 		.4byte	.LASF319
 2765 11c0 0F       		.byte	0xf
 2766 11c1 5C02     		.2byte	0x25c
 2767 11c3 850C0000 		.4byte	0xc85
 2768 11c7 24       		.byte	0x24
 2769 11c8 0F       		.uleb128 0xf
 2770 11c9 DC070000 		.4byte	.LASF320
 2771 11cd 0F       		.byte	0xf
 2772 11ce 5D02     		.2byte	0x25d
 2773 11d0 85000000 		.4byte	0x85
 2774 11d4 48       		.byte	0x48
 2775 11d5 0F       		.uleb128 0xf
 2776 11d6 420A0000 		.4byte	.LASF321
 2777 11da 0F       		.byte	0xf
 2778 11db 5E02     		.2byte	0x25e
 2779 11dd 7E000000 		.4byte	0x7e
 2780 11e1 50       		.byte	0x50
 2781 11e2 0F       		.uleb128 0xf
 2782 11e3 26020000 		.4byte	.LASF322
 2783 11e7 0F       		.byte	0xf
 2784 11e8 5F02     		.2byte	0x25f
 2785 11ea 46110000 		.4byte	0x1146
 2786 11ee 58       		.byte	0x58
 2787 11ef 0F       		.uleb128 0xf
 2788 11f0 8D060000 		.4byte	.LASF323
 2789 11f4 0F       		.byte	0xf
 2790 11f5 6002     		.2byte	0x260
 2791 11f7 FB0B0000 		.4byte	0xbfb
 2792 11fb 68       		.byte	0x68
 2793 11fc 0F       		.uleb128 0xf
 2794 11fd AE0F0000 		.4byte	.LASF324
 2795 1201 0F       		.byte	0xf
 2796 1202 6102     		.2byte	0x261
 2797 1204 FB0B0000 		.4byte	0xbfb
 2798 1208 70       		.byte	0x70
 2799 1209 0F       		.uleb128 0xf
 2800 120a 9D000000 		.4byte	.LASF325
 2801 120e 0F       		.byte	0xf
 2802 120f 6202     		.2byte	0x262
ARM GAS  /tmp/ccVHQYWs.s 			page 115


 2803 1211 FB0B0000 		.4byte	0xbfb
 2804 1215 78       		.byte	0x78
 2805 1216 0F       		.uleb128 0xf
 2806 1217 7E0C0000 		.4byte	.LASF326
 2807 121b 0F       		.byte	0xf
 2808 121c 6302     		.2byte	0x263
 2809 121e 9C120000 		.4byte	0x129c
 2810 1222 80       		.byte	0x80
 2811 1223 0F       		.uleb128 0xf
 2812 1224 31010000 		.4byte	.LASF327
 2813 1228 0F       		.byte	0xf
 2814 1229 6402     		.2byte	0x264
 2815 122b AC120000 		.4byte	0x12ac
 2816 122f 88       		.byte	0x88
 2817 1230 0F       		.uleb128 0xf
 2818 1231 89100000 		.4byte	.LASF328
 2819 1235 0F       		.byte	0xf
 2820 1236 6502     		.2byte	0x265
 2821 1238 85000000 		.4byte	0x85
 2822 123c A0       		.byte	0xa0
 2823 123d 0F       		.uleb128 0xf
 2824 123e 33020000 		.4byte	.LASF329
 2825 1242 0F       		.byte	0xf
 2826 1243 6602     		.2byte	0x266
 2827 1245 FB0B0000 		.4byte	0xbfb
 2828 1249 A4       		.byte	0xa4
 2829 124a 0F       		.uleb128 0xf
 2830 124b D3060000 		.4byte	.LASF330
 2831 124f 0F       		.byte	0xf
 2832 1250 6702     		.2byte	0x267
 2833 1252 FB0B0000 		.4byte	0xbfb
 2834 1256 AC       		.byte	0xac
 2835 1257 0F       		.uleb128 0xf
 2836 1258 E8030000 		.4byte	.LASF331
 2837 125c 0F       		.byte	0xf
 2838 125d 6802     		.2byte	0x268
 2839 125f FB0B0000 		.4byte	0xbfb
 2840 1263 B4       		.byte	0xb4
 2841 1264 0F       		.uleb128 0xf
 2842 1265 73080000 		.4byte	.LASF332
 2843 1269 0F       		.byte	0xf
 2844 126a 6902     		.2byte	0x269
 2845 126c FB0B0000 		.4byte	0xbfb
 2846 1270 BC       		.byte	0xbc
 2847 1271 0F       		.uleb128 0xf
 2848 1272 7C060000 		.4byte	.LASF333
 2849 1276 0F       		.byte	0xf
 2850 1277 6A02     		.2byte	0x26a
 2851 1279 FB0B0000 		.4byte	0xbfb
 2852 127d C4       		.byte	0xc4
 2853 127e 0F       		.uleb128 0xf
 2854 127f F5100000 		.4byte	.LASF334
 2855 1283 0F       		.byte	0xf
 2856 1284 6B02     		.2byte	0x26b
 2857 1286 85000000 		.4byte	0x85
 2858 128a CC       		.byte	0xcc
 2859 128b 00       		.byte	0
ARM GAS  /tmp/ccVHQYWs.s 			page 116


 2860 128c 12       		.uleb128 0x12
 2861 128d 5F100000 		.4byte	0x105f
 2862 1291 9C120000 		.4byte	0x129c
 2863 1295 13       		.uleb128 0x13
 2864 1296 30070000 		.4byte	0x730
 2865 129a 19       		.byte	0x19
 2866 129b 00       		.byte	0
 2867 129c 12       		.uleb128 0x12
 2868 129d 5F100000 		.4byte	0x105f
 2869 12a1 AC120000 		.4byte	0x12ac
 2870 12a5 13       		.uleb128 0x13
 2871 12a6 30070000 		.4byte	0x730
 2872 12aa 07       		.byte	0x7
 2873 12ab 00       		.byte	0
 2874 12ac 12       		.uleb128 0x12
 2875 12ad 5F100000 		.4byte	0x105f
 2876 12b1 BC120000 		.4byte	0x12bc
 2877 12b5 13       		.uleb128 0x13
 2878 12b6 30070000 		.4byte	0x730
 2879 12ba 17       		.byte	0x17
 2880 12bb 00       		.byte	0
 2881 12bc 17       		.uleb128 0x17
 2882 12bd F0       		.byte	0xf0
 2883 12be 0F       		.byte	0xf
 2884 12bf 7002     		.2byte	0x270
 2885 12c1 E0120000 		.4byte	0x12e0
 2886 12c5 0F       		.uleb128 0xf
 2887 12c6 B4030000 		.4byte	.LASF335
 2888 12ca 0F       		.byte	0xf
 2889 12cb 7302     		.2byte	0x273
 2890 12cd E0120000 		.4byte	0x12e0
 2891 12d1 00       		.byte	0
 2892 12d2 0F       		.uleb128 0xf
 2893 12d3 81110000 		.4byte	.LASF336
 2894 12d7 0F       		.byte	0xf
 2895 12d8 7402     		.2byte	0x274
 2896 12da F0120000 		.4byte	0x12f0
 2897 12de 78       		.byte	0x78
 2898 12df 00       		.byte	0
 2899 12e0 12       		.uleb128 0x12
 2900 12e1 CE0D0000 		.4byte	0xdce
 2901 12e5 F0120000 		.4byte	0x12f0
 2902 12e9 13       		.uleb128 0x13
 2903 12ea 30070000 		.4byte	0x730
 2904 12ee 1D       		.byte	0x1d
 2905 12ef 00       		.byte	0
 2906 12f0 12       		.uleb128 0x12
 2907 12f1 25000000 		.4byte	0x25
 2908 12f5 00130000 		.4byte	0x1300
 2909 12f9 13       		.uleb128 0x13
 2910 12fa 30070000 		.4byte	0x730
 2911 12fe 1D       		.byte	0x1d
 2912 12ff 00       		.byte	0
 2913 1300 26       		.uleb128 0x26
 2914 1301 F0       		.byte	0xf0
 2915 1302 0F       		.byte	0xf
 2916 1303 5502     		.2byte	0x255
ARM GAS  /tmp/ccVHQYWs.s 			page 117


 2917 1305 22130000 		.4byte	0x1322
 2918 1309 27       		.uleb128 0x27
 2919 130a FC0F0000 		.4byte	.LASF285
 2920 130e 0F       		.byte	0xf
 2921 130f 6C02     		.2byte	0x26c
 2922 1311 8B110000 		.4byte	0x118b
 2923 1315 27       		.uleb128 0x27
 2924 1316 1A0C0000 		.4byte	.LASF337
 2925 131a 0F       		.byte	0xf
 2926 131b 7502     		.2byte	0x275
 2927 131d BC120000 		.4byte	0x12bc
 2928 1321 00       		.byte	0
 2929 1322 12       		.uleb128 0x12
 2930 1323 5F100000 		.4byte	0x105f
 2931 1327 32130000 		.4byte	0x1332
 2932 132b 13       		.uleb128 0x13
 2933 132c 30070000 		.4byte	0x730
 2934 1330 18       		.byte	0x18
 2935 1331 00       		.byte	0
 2936 1332 28       		.uleb128 0x28
 2937 1333 3D130000 		.4byte	0x133d
 2938 1337 23       		.uleb128 0x23
 2939 1338 1C0F0000 		.4byte	0xf1c
 2940 133c 00       		.byte	0
 2941 133d 20       		.uleb128 0x20
 2942 133e 04       		.byte	0x4
 2943 133f 32130000 		.4byte	0x1332
 2944 1343 20       		.uleb128 0x20
 2945 1344 04       		.byte	0x4
 2946 1345 6F0C0000 		.4byte	0xc6f
 2947 1349 28       		.uleb128 0x28
 2948 134a 54130000 		.4byte	0x1354
 2949 134e 23       		.uleb128 0x23
 2950 134f 85000000 		.4byte	0x85
 2951 1353 00       		.byte	0
 2952 1354 20       		.uleb128 0x20
 2953 1355 04       		.byte	0x4
 2954 1356 5A130000 		.4byte	0x135a
 2955 135a 20       		.uleb128 0x20
 2956 135b 04       		.byte	0x4
 2957 135c 49130000 		.4byte	0x1349
 2958 1360 12       		.uleb128 0x12
 2959 1361 F9100000 		.4byte	0x10f9
 2960 1365 70130000 		.4byte	0x1370
 2961 1369 13       		.uleb128 0x13
 2962 136a 30070000 		.4byte	0x730
 2963 136e 02       		.byte	0x2
 2964 136f 00       		.byte	0
 2965 1370 18       		.uleb128 0x18
 2966 1371 A8030000 		.4byte	.LASF338
 2967 1375 0F       		.byte	0xf
 2968 1376 FD02     		.2byte	0x2fd
 2969 1378 1C0F0000 		.4byte	0xf1c
 2970 137c 18       		.uleb128 0x18
 2971 137d D4090000 		.4byte	.LASF339
 2972 1381 0F       		.byte	0xf
 2973 1382 FE02     		.2byte	0x2fe
ARM GAS  /tmp/ccVHQYWs.s 			page 118


 2974 1384 220F0000 		.4byte	0xf22
 2975 1388 19       		.uleb128 0x19
 2976 1389 64050000 		.4byte	.LASF340
 2977 138d 10       		.byte	0x10
 2978 138e 5F       		.byte	0x5f
 2979 138f 59100000 		.4byte	0x1059
 2980 1393 03       		.uleb128 0x3
 2981 1394 690B0000 		.4byte	.LASF341
 2982 1398 05       		.byte	0x5
 2983 1399 8C       		.byte	0x8c
 2984 139a AC000000 		.4byte	0xac
 2985 139e 19       		.uleb128 0x19
 2986 139f D1020000 		.4byte	.LASF342
 2987 13a3 05       		.byte	0x5
 2988 13a4 8F       		.byte	0x8f
 2989 13a5 B0130000 		.4byte	0x13b0
 2990 13a9 02       		.uleb128 0x2
 2991 13aa 01       		.byte	0x1
 2992 13ab 02       		.byte	0x2
 2993 13ac 7D050000 		.4byte	.LASF343
 2994 13b0 05       		.uleb128 0x5
 2995 13b1 A9130000 		.4byte	0x13a9
 2996 13b5 29       		.uleb128 0x29
 2997 13b6 270D0000 		.4byte	.LASF344
 2998 13ba 05       		.byte	0x5
 2999 13bb 94       		.byte	0x94
 3000 13bc B7000000 		.4byte	0xb7
 3001 13c0 05       		.uleb128 0x5
 3002 13c1 03       		.byte	0x3
 3003 13c2 00000000 		.4byte	cpu_irq_critical_section_counter
 3004 13c6 29       		.uleb128 0x29
 3005 13c7 04050000 		.4byte	.LASF345
 3006 13cb 05       		.byte	0x5
 3007 13cc 95       		.byte	0x95
 3008 13cd B0130000 		.4byte	0x13b0
 3009 13d1 05       		.uleb128 0x5
 3010 13d2 03       		.byte	0x3
 3011 13d3 00000000 		.4byte	cpu_irq_prev_interrupt_state
 3012 13d7 02       		.uleb128 0x2
 3013 13d8 04       		.byte	0x4
 3014 13d9 04       		.byte	0x4
 3015 13da 8B030000 		.4byte	.LASF346
 3016 13de 02       		.uleb128 0x2
 3017 13df 08       		.byte	0x8
 3018 13e0 04       		.byte	0x4
 3019 13e1 9C100000 		.4byte	.LASF347
 3020 13e5 19       		.uleb128 0x19
 3021 13e6 FB060000 		.4byte	.LASF348
 3022 13ea 01       		.byte	0x1
 3023 13eb 3B       		.byte	0x3b
 3024 13ec AC000000 		.4byte	0xac
 3025 13f0 19       		.uleb128 0x19
 3026 13f1 880C0000 		.4byte	.LASF349
 3027 13f5 01       		.byte	0x1
 3028 13f6 3D       		.byte	0x3d
 3029 13f7 AC000000 		.4byte	0xac
 3030 13fb 19       		.uleb128 0x19
ARM GAS  /tmp/ccVHQYWs.s 			page 119


 3031 13fc CF010000 		.4byte	.LASF350
 3032 1400 01       		.byte	0x1
 3033 1401 3E       		.byte	0x3e
 3034 1402 AC000000 		.4byte	0xac
 3035 1406 19       		.uleb128 0x19
 3036 1407 E70D0000 		.4byte	.LASF351
 3037 140b 01       		.byte	0x1
 3038 140c 3F       		.byte	0x3f
 3039 140d AC000000 		.4byte	0xac
 3040 1411 19       		.uleb128 0x19
 3041 1412 79100000 		.4byte	.LASF352
 3042 1416 01       		.byte	0x1
 3043 1417 40       		.byte	0x40
 3044 1418 AC000000 		.4byte	0xac
 3045 141c 19       		.uleb128 0x19
 3046 141d 940D0000 		.4byte	.LASF353
 3047 1421 01       		.byte	0x1
 3048 1422 41       		.byte	0x41
 3049 1423 AC000000 		.4byte	0xac
 3050 1427 19       		.uleb128 0x19
 3051 1428 B2070000 		.4byte	.LASF354
 3052 142c 01       		.byte	0x1
 3053 142d 43       		.byte	0x43
 3054 142e AC000000 		.4byte	0xac
 3055 1432 2A       		.uleb128 0x2a
 3056 1433 0C040000 		.4byte	.LASF355
 3057 1437 01       		.byte	0x1
 3058 1438 BC       		.byte	0xbc
 3059 1439 5A060000 		.4byte	0x65a
 3060 143d 05       		.uleb128 0x5
 3061 143e 03       		.byte	0x3
 3062 143f 00000000 		.4byte	exception_table
 3063 1443 2B       		.uleb128 0x2b
 3064 1444 F6000000 		.4byte	.LASF386
 3065 1448 01       		.byte	0x1
 3066 1449 7901     		.2byte	0x179
 3067 144b 00000000 		.4byte	.LFB147
 3068 144f 02000000 		.4byte	.LFE147-.LFB147
 3069 1453 01       		.uleb128 0x1
 3070 1454 9C       		.byte	0x9c
 3071 1455 2C       		.uleb128 0x2c
 3072 1456 C2100000 		.4byte	.LASF387
 3073 145a 01       		.byte	0x1
 3074 145b 4801     		.2byte	0x148
 3075 145d 00000000 		.4byte	.LFB146
 3076 1461 F0000000 		.4byte	.LFE146-.LFB146
 3077 1465 01       		.uleb128 0x1
 3078 1466 9C       		.byte	0x9c
 3079 1467 CF150000 		.4byte	0x15cf
 3080 146b 2D       		.uleb128 0x2d
 3081 146c E50A0000 		.4byte	.LASF356
 3082 1470 01       		.byte	0x1
 3083 1471 4A01     		.2byte	0x14a
 3084 1473 CF150000 		.4byte	0x15cf
 3085 1477 00000000 		.4byte	.LLST0
 3086 147b 2D       		.uleb128 0x2d
 3087 147c 7D0A0000 		.4byte	.LASF357
ARM GAS  /tmp/ccVHQYWs.s 			page 120


 3088 1480 01       		.byte	0x1
 3089 1481 4A01     		.2byte	0x14a
 3090 1483 CF150000 		.4byte	0x15cf
 3091 1487 2B000000 		.4byte	.LLST1
 3092 148b 2E       		.uleb128 0x2e
 3093 148c DD150000 		.4byte	0x15dd
 3094 1490 50000000 		.4byte	.LBB54
 3095 1494 2E000000 		.4byte	.LBE54-.LBB54
 3096 1498 01       		.byte	0x1
 3097 1499 6001     		.2byte	0x160
 3098 149b 60150000 		.4byte	0x1560
 3099 149f 2F       		.uleb128 0x2f
 3100 14a0 50000000 		.4byte	.LBB55
 3101 14a4 2E000000 		.4byte	.LBE55-.LBB55
 3102 14a8 30       		.uleb128 0x30
 3103 14a9 E9150000 		.4byte	0x15e9
 3104 14ad 31       		.uleb128 0x31
 3105 14ae 29160000 		.4byte	0x1629
 3106 14b2 50000000 		.4byte	.LBB56
 3107 14b6 00000000 		.4byte	.Ldebug_ranges0+0
 3108 14ba 04       		.byte	0x4
 3109 14bb 40       		.byte	0x40
 3110 14bc 0D150000 		.4byte	0x150d
 3111 14c0 32       		.uleb128 0x32
 3112 14c1 00000000 		.4byte	.Ldebug_ranges0+0
 3113 14c5 30       		.uleb128 0x30
 3114 14c6 39160000 		.4byte	0x1639
 3115 14ca 33       		.uleb128 0x33
 3116 14cb 89160000 		.4byte	0x1689
 3117 14cf 50000000 		.4byte	.LBB58
 3118 14d3 04000000 		.4byte	.LBE58-.LBB58
 3119 14d7 05       		.byte	0x5
 3120 14d8 99       		.byte	0x99
 3121 14d9 ED140000 		.4byte	0x14ed
 3122 14dd 2F       		.uleb128 0x2f
 3123 14de 50000000 		.4byte	.LBB59
 3124 14e2 04000000 		.4byte	.LBE59-.LBB59
 3125 14e6 30       		.uleb128 0x30
 3126 14e7 9A160000 		.4byte	0x169a
 3127 14eb 00       		.byte	0
 3128 14ec 00       		.byte	0
 3129 14ed 34       		.uleb128 0x34
 3130 14ee A7160000 		.4byte	0x16a7
 3131 14f2 54000000 		.4byte	.LBB60
 3132 14f6 02000000 		.4byte	.LBE60-.LBB60
 3133 14fa 05       		.byte	0x5
 3134 14fb 9A       		.byte	0x9a
 3135 14fc 34       		.uleb128 0x34
 3136 14fd B9160000 		.4byte	0x16b9
 3137 1501 56000000 		.4byte	.LBB62
 3138 1505 04000000 		.4byte	.LBE62-.LBB62
 3139 1509 05       		.byte	0x5
 3140 150a 9A       		.byte	0x9a
 3141 150b 00       		.byte	0
 3142 150c 00       		.byte	0
 3143 150d 34       		.uleb128 0x34
 3144 150e C2160000 		.4byte	0x16c2
ARM GAS  /tmp/ccVHQYWs.s 			page 121


 3145 1512 6A000000 		.4byte	.LBB66
 3146 1516 04000000 		.4byte	.LBE66-.LBB66
 3147 151a 04       		.byte	0x4
 3148 151b 42       		.byte	0x42
 3149 151c 34       		.uleb128 0x34
 3150 151d CB160000 		.4byte	0x16cb
 3151 1521 6E000000 		.4byte	.LBB68
 3152 1525 04000000 		.4byte	.LBE68-.LBB68
 3153 1529 04       		.byte	0x4
 3154 152a 43       		.byte	0x43
 3155 152b 35       		.uleb128 0x35
 3156 152c F5150000 		.4byte	0x15f5
 3157 1530 72000000 		.4byte	.LBB70
 3158 1534 0C000000 		.4byte	.LBE70-.LBB70
 3159 1538 04       		.byte	0x4
 3160 1539 44       		.byte	0x44
 3161 153a 36       		.uleb128 0x36
 3162 153b 01160000 		.4byte	0x1601
 3163 153f 34       		.uleb128 0x34
 3164 1540 B9160000 		.4byte	0x16b9
 3165 1544 78000000 		.4byte	.LBB72
 3166 1548 04000000 		.4byte	.LBE72-.LBB72
 3167 154c 05       		.byte	0x5
 3168 154d A6       		.byte	0xa6
 3169 154e 34       		.uleb128 0x34
 3170 154f B0160000 		.4byte	0x16b0
 3171 1553 7C000000 		.4byte	.LBB74
 3172 1557 02000000 		.4byte	.LBE74-.LBB74
 3173 155b 05       		.byte	0x5
 3174 155c A6       		.byte	0xa6
 3175 155d 00       		.byte	0
 3176 155e 00       		.byte	0
 3177 155f 00       		.byte	0
 3178 1560 2E       		.uleb128 0x2e
 3179 1561 45160000 		.4byte	0x1645
 3180 1565 9A000000 		.4byte	.LBB76
 3181 1569 1C000000 		.4byte	.LBE76-.LBB76
 3182 156d 01       		.byte	0x1
 3183 156e 6C01     		.2byte	0x16c
 3184 1570 A1150000 		.4byte	0x15a1
 3185 1574 37       		.uleb128 0x37
 3186 1575 56160000 		.4byte	0x1656
 3187 1579 4B000000 		.4byte	.LLST2
 3188 157d 38       		.uleb128 0x38
 3189 157e 63160000 		.4byte	0x1663
 3190 1582 A4000000 		.4byte	.LBB78
 3191 1586 18000000 		.4byte	.Ldebug_ranges0+0x18
 3192 158a 06       		.byte	0x6
 3193 158b 5008     		.2byte	0x850
 3194 158d 37       		.uleb128 0x37
 3195 158e 7C160000 		.4byte	0x167c
 3196 1592 82000000 		.4byte	.LLST3
 3197 1596 37       		.uleb128 0x37
 3198 1597 70160000 		.4byte	0x1670
 3199 159b 96000000 		.4byte	.LLST4
 3200 159f 00       		.byte	0
 3201 15a0 00       		.byte	0
ARM GAS  /tmp/ccVHQYWs.s 			page 122


 3202 15a1 39       		.uleb128 0x39
 3203 15a2 82000000 		.4byte	.LVL9
 3204 15a6 11170000 		.4byte	0x1711
 3205 15aa 39       		.uleb128 0x39
 3206 15ab 86000000 		.4byte	.LVL10
 3207 15af 1C170000 		.4byte	0x171c
 3208 15b3 39       		.uleb128 0x39
 3209 15b4 8A000000 		.4byte	.LVL11
 3210 15b8 27170000 		.4byte	0x1727
 3211 15bc 39       		.uleb128 0x39
 3212 15bd 8E000000 		.4byte	.LVL12
 3213 15c1 32170000 		.4byte	0x1732
 3214 15c5 3A       		.uleb128 0x3a
 3215 15c6 BE000000 		.4byte	.LVL18
 3216 15ca 3D170000 		.4byte	0x173d
 3217 15ce 00       		.byte	0
 3218 15cf 20       		.uleb128 0x20
 3219 15d0 04       		.byte	0x4
 3220 15d1 AC000000 		.4byte	0xac
 3221 15d5 3B       		.uleb128 0x3b
 3222 15d6 53080000 		.4byte	.LASF388
 3223 15da 01       		.byte	0x1
 3224 15db 5D       		.byte	0x5d
 3225 15dc 01       		.byte	0x1
 3226 15dd 3C       		.uleb128 0x3c
 3227 15de 0E0E0000 		.4byte	.LASF358
 3228 15e2 04       		.byte	0x4
 3229 15e3 3D       		.byte	0x3d
 3230 15e4 03       		.byte	0x3
 3231 15e5 F5150000 		.4byte	0x15f5
 3232 15e9 3D       		.uleb128 0x3d
 3233 15ea BB000000 		.4byte	.LASF360
 3234 15ee 04       		.byte	0x4
 3235 15ef 3F       		.byte	0x3f
 3236 15f0 93130000 		.4byte	0x1393
 3237 15f4 00       		.byte	0
 3238 15f5 3C       		.uleb128 0x3c
 3239 15f6 7E020000 		.4byte	.LASF359
 3240 15fa 05       		.byte	0x5
 3241 15fb A3       		.byte	0xa3
 3242 15fc 03       		.byte	0x3
 3243 15fd 0D160000 		.4byte	0x160d
 3244 1601 3E       		.uleb128 0x3e
 3245 1602 BB000000 		.4byte	.LASF360
 3246 1606 05       		.byte	0x5
 3247 1607 A3       		.byte	0xa3
 3248 1608 93130000 		.4byte	0x1393
 3249 160c 00       		.byte	0
 3250 160d 3F       		.uleb128 0x3f
 3251 160e 3A030000 		.4byte	.LASF361
 3252 1612 05       		.byte	0x5
 3253 1613 9E       		.byte	0x9e
 3254 1614 A9130000 		.4byte	0x13a9
 3255 1618 03       		.byte	0x3
 3256 1619 29160000 		.4byte	0x1629
 3257 161d 3E       		.uleb128 0x3e
 3258 161e BB000000 		.4byte	.LASF360
ARM GAS  /tmp/ccVHQYWs.s 			page 123


 3259 1622 05       		.byte	0x5
 3260 1623 9E       		.byte	0x9e
 3261 1624 93130000 		.4byte	0x1393
 3262 1628 00       		.byte	0
 3263 1629 3F       		.uleb128 0x3f
 3264 162a 13020000 		.4byte	.LASF362
 3265 162e 05       		.byte	0x5
 3266 162f 97       		.byte	0x97
 3267 1630 93130000 		.4byte	0x1393
 3268 1634 03       		.byte	0x3
 3269 1635 45160000 		.4byte	0x1645
 3270 1639 3D       		.uleb128 0x3d
 3271 163a BB000000 		.4byte	.LASF360
 3272 163e 05       		.byte	0x5
 3273 163f 99       		.byte	0x99
 3274 1640 93130000 		.4byte	0x1393
 3275 1644 00       		.byte	0
 3276 1645 40       		.uleb128 0x40
 3277 1646 BE050000 		.4byte	.LASF363
 3278 164a 06       		.byte	0x6
 3279 164b 4B08     		.2byte	0x84b
 3280 164d AC000000 		.4byte	0xac
 3281 1651 03       		.byte	0x3
 3282 1652 63160000 		.4byte	0x1663
 3283 1656 41       		.uleb128 0x41
 3284 1657 54040000 		.4byte	.LASF364
 3285 165b 06       		.byte	0x6
 3286 165c 4B08     		.2byte	0x84b
 3287 165e AC000000 		.4byte	0xac
 3288 1662 00       		.byte	0
 3289 1663 42       		.uleb128 0x42
 3290 1664 C1000000 		.4byte	.LASF365
 3291 1668 06       		.byte	0x6
 3292 1669 E406     		.2byte	0x6e4
 3293 166b 03       		.byte	0x3
 3294 166c 89160000 		.4byte	0x1689
 3295 1670 41       		.uleb128 0x41
 3296 1671 050A0000 		.4byte	.LASF366
 3297 1675 06       		.byte	0x6
 3298 1676 E406     		.2byte	0x6e4
 3299 1678 64020000 		.4byte	0x264
 3300 167c 41       		.uleb128 0x41
 3301 167d 550B0000 		.4byte	.LASF367
 3302 1681 06       		.byte	0x6
 3303 1682 E406     		.2byte	0x6e4
 3304 1684 AC000000 		.4byte	0xac
 3305 1688 00       		.byte	0
 3306 1689 40       		.uleb128 0x40
 3307 168a E8000000 		.4byte	.LASF368
 3308 168e 02       		.byte	0x2
 3309 168f D201     		.2byte	0x1d2
 3310 1691 AC000000 		.4byte	0xac
 3311 1695 03       		.byte	0x3
 3312 1696 A7160000 		.4byte	0x16a7
 3313 169a 43       		.uleb128 0x43
 3314 169b F9030000 		.4byte	.LASF369
 3315 169f 02       		.byte	0x2
ARM GAS  /tmp/ccVHQYWs.s 			page 124


 3316 16a0 D401     		.2byte	0x1d4
 3317 16a2 AC000000 		.4byte	0xac
 3318 16a6 00       		.byte	0
 3319 16a7 44       		.uleb128 0x44
 3320 16a8 47050000 		.4byte	.LASF370
 3321 16ac 02       		.byte	0x2
 3322 16ad 4801     		.2byte	0x148
 3323 16af 03       		.byte	0x3
 3324 16b0 44       		.uleb128 0x44
 3325 16b1 320B0000 		.4byte	.LASF371
 3326 16b5 02       		.byte	0x2
 3327 16b6 3D01     		.2byte	0x13d
 3328 16b8 03       		.byte	0x3
 3329 16b9 44       		.uleb128 0x44
 3330 16ba F30B0000 		.4byte	.LASF372
 3331 16be 03       		.byte	0x3
 3332 16bf C601     		.2byte	0x1c6
 3333 16c1 03       		.byte	0x3
 3334 16c2 44       		.uleb128 0x44
 3335 16c3 0D020000 		.4byte	.LASF373
 3336 16c7 03       		.byte	0x3
 3337 16c8 BB01     		.2byte	0x1bb
 3338 16ca 03       		.byte	0x3
 3339 16cb 44       		.uleb128 0x44
 3340 16cc 55090000 		.4byte	.LASF374
 3341 16d0 03       		.byte	0x3
 3342 16d1 B001     		.2byte	0x1b0
 3343 16d3 03       		.byte	0x3
 3344 16d4 45       		.uleb128 0x45
 3345 16d5 D5150000 		.4byte	0x15d5
 3346 16d9 00000000 		.4byte	.LFB145
 3347 16dd 1C000000 		.4byte	.LFE145-.LFB145
 3348 16e1 01       		.uleb128 0x1
 3349 16e2 9C       		.byte	0x9c
 3350 16e3 11170000 		.4byte	0x1711
 3351 16e7 39       		.uleb128 0x39
 3352 16e8 06000000 		.4byte	.LVL19
 3353 16ec 48170000 		.4byte	0x1748
 3354 16f0 46       		.uleb128 0x46
 3355 16f1 10000000 		.4byte	.LVL20
 3356 16f5 53170000 		.4byte	0x1753
 3357 16f9 07170000 		.4byte	0x1707
 3358 16fd 47       		.uleb128 0x47
 3359 16fe 01       		.uleb128 0x1
 3360 16ff 50       		.byte	0x50
 3361 1700 05       		.uleb128 0x5
 3362 1701 0C       		.byte	0xc
 3363 1702 50180E40 		.4byte	0x400e1850
 3364 1706 00       		.byte	0
 3365 1707 3A       		.uleb128 0x3a
 3366 1708 18000000 		.4byte	.LVL21
 3367 170c 5E170000 		.4byte	0x175e
 3368 1710 00       		.byte	0
 3369 1711 48       		.uleb128 0x48
 3370 1712 20110000 		.4byte	.LASF375
 3371 1716 20110000 		.4byte	.LASF375
 3372 171a 0A       		.byte	0xa
ARM GAS  /tmp/ccVHQYWs.s 			page 125


 3373 171b 40       		.byte	0x40
 3374 171c 48       		.uleb128 0x48
 3375 171d 8F0C0000 		.4byte	.LASF376
 3376 1721 8F0C0000 		.4byte	.LASF376
 3377 1725 01       		.byte	0x1
 3378 1726 37       		.byte	0x37
 3379 1727 48       		.uleb128 0x48
 3380 1728 56000000 		.4byte	.LASF377
 3381 172c 56000000 		.4byte	.LASF377
 3382 1730 01       		.byte	0x1
 3383 1731 35       		.byte	0x35
 3384 1732 48       		.uleb128 0x48
 3385 1733 E30C0000 		.4byte	.LASF378
 3386 1737 E30C0000 		.4byte	.LASF378
 3387 173b 01       		.byte	0x1
 3388 173c 36       		.byte	0x36
 3389 173d 48       		.uleb128 0x48
 3390 173e A8060000 		.4byte	.LASF379
 3391 1742 A8060000 		.4byte	.LASF379
 3392 1746 01       		.byte	0x1
 3393 1747 38       		.byte	0x38
 3394 1748 48       		.uleb128 0x48
 3395 1749 00040000 		.4byte	.LASF380
 3396 174d 00040000 		.4byte	.LASF380
 3397 1751 01       		.byte	0x1
 3398 1752 49       		.byte	0x49
 3399 1753 48       		.uleb128 0x48
 3400 1754 BF040000 		.4byte	.LASF381
 3401 1758 BF040000 		.4byte	.LASF381
 3402 175c 11       		.byte	0x11
 3403 175d 42       		.byte	0x42
 3404 175e 48       		.uleb128 0x48
 3405 175f 28000000 		.4byte	.LASF382
 3406 1763 28000000 		.4byte	.LASF382
 3407 1767 01       		.byte	0x1
 3408 1768 4A       		.byte	0x4a
 3409 1769 00       		.byte	0
 3410              		.section	.debug_abbrev,"",%progbits
 3411              	.Ldebug_abbrev0:
 3412 0000 01       		.uleb128 0x1
 3413 0001 11       		.uleb128 0x11
 3414 0002 01       		.byte	0x1
 3415 0003 25       		.uleb128 0x25
 3416 0004 0E       		.uleb128 0xe
 3417 0005 13       		.uleb128 0x13
 3418 0006 0B       		.uleb128 0xb
 3419 0007 03       		.uleb128 0x3
 3420 0008 0E       		.uleb128 0xe
 3421 0009 1B       		.uleb128 0x1b
 3422 000a 0E       		.uleb128 0xe
 3423 000b 55       		.uleb128 0x55
 3424 000c 17       		.uleb128 0x17
 3425 000d 11       		.uleb128 0x11
 3426 000e 01       		.uleb128 0x1
 3427 000f 10       		.uleb128 0x10
 3428 0010 17       		.uleb128 0x17
 3429 0011 00       		.byte	0
ARM GAS  /tmp/ccVHQYWs.s 			page 126


 3430 0012 00       		.byte	0
 3431 0013 02       		.uleb128 0x2
 3432 0014 24       		.uleb128 0x24
 3433 0015 00       		.byte	0
 3434 0016 0B       		.uleb128 0xb
 3435 0017 0B       		.uleb128 0xb
 3436 0018 3E       		.uleb128 0x3e
 3437 0019 0B       		.uleb128 0xb
 3438 001a 03       		.uleb128 0x3
 3439 001b 0E       		.uleb128 0xe
 3440 001c 00       		.byte	0
 3441 001d 00       		.byte	0
 3442 001e 03       		.uleb128 0x3
 3443 001f 16       		.uleb128 0x16
 3444 0020 00       		.byte	0
 3445 0021 03       		.uleb128 0x3
 3446 0022 0E       		.uleb128 0xe
 3447 0023 3A       		.uleb128 0x3a
 3448 0024 0B       		.uleb128 0xb
 3449 0025 3B       		.uleb128 0x3b
 3450 0026 0B       		.uleb128 0xb
 3451 0027 49       		.uleb128 0x49
 3452 0028 13       		.uleb128 0x13
 3453 0029 00       		.byte	0
 3454 002a 00       		.byte	0
 3455 002b 04       		.uleb128 0x4
 3456 002c 24       		.uleb128 0x24
 3457 002d 00       		.byte	0
 3458 002e 0B       		.uleb128 0xb
 3459 002f 0B       		.uleb128 0xb
 3460 0030 3E       		.uleb128 0x3e
 3461 0031 0B       		.uleb128 0xb
 3462 0032 03       		.uleb128 0x3
 3463 0033 08       		.uleb128 0x8
 3464 0034 00       		.byte	0
 3465 0035 00       		.byte	0
 3466 0036 05       		.uleb128 0x5
 3467 0037 35       		.uleb128 0x35
 3468 0038 00       		.byte	0
 3469 0039 49       		.uleb128 0x49
 3470 003a 13       		.uleb128 0x13
 3471 003b 00       		.byte	0
 3472 003c 00       		.byte	0
 3473 003d 06       		.uleb128 0x6
 3474 003e 26       		.uleb128 0x26
 3475 003f 00       		.byte	0
 3476 0040 49       		.uleb128 0x49
 3477 0041 13       		.uleb128 0x13
 3478 0042 00       		.byte	0
 3479 0043 00       		.byte	0
 3480 0044 07       		.uleb128 0x7
 3481 0045 04       		.uleb128 0x4
 3482 0046 01       		.byte	0x1
 3483 0047 03       		.uleb128 0x3
 3484 0048 0E       		.uleb128 0xe
 3485 0049 0B       		.uleb128 0xb
 3486 004a 0B       		.uleb128 0xb
ARM GAS  /tmp/ccVHQYWs.s 			page 127


 3487 004b 49       		.uleb128 0x49
 3488 004c 13       		.uleb128 0x13
 3489 004d 3A       		.uleb128 0x3a
 3490 004e 0B       		.uleb128 0xb
 3491 004f 3B       		.uleb128 0x3b
 3492 0050 0B       		.uleb128 0xb
 3493 0051 01       		.uleb128 0x1
 3494 0052 13       		.uleb128 0x13
 3495 0053 00       		.byte	0
 3496 0054 00       		.byte	0
 3497 0055 08       		.uleb128 0x8
 3498 0056 28       		.uleb128 0x28
 3499 0057 00       		.byte	0
 3500 0058 03       		.uleb128 0x3
 3501 0059 0E       		.uleb128 0xe
 3502 005a 1C       		.uleb128 0x1c
 3503 005b 0D       		.uleb128 0xd
 3504 005c 00       		.byte	0
 3505 005d 00       		.byte	0
 3506 005e 09       		.uleb128 0x9
 3507 005f 28       		.uleb128 0x28
 3508 0060 00       		.byte	0
 3509 0061 03       		.uleb128 0x3
 3510 0062 0E       		.uleb128 0xe
 3511 0063 1C       		.uleb128 0x1c
 3512 0064 0B       		.uleb128 0xb
 3513 0065 00       		.byte	0
 3514 0066 00       		.byte	0
 3515 0067 0A       		.uleb128 0xa
 3516 0068 13       		.uleb128 0x13
 3517 0069 01       		.byte	0x1
 3518 006a 03       		.uleb128 0x3
 3519 006b 0E       		.uleb128 0xe
 3520 006c 0B       		.uleb128 0xb
 3521 006d 05       		.uleb128 0x5
 3522 006e 3A       		.uleb128 0x3a
 3523 006f 0B       		.uleb128 0xb
 3524 0070 3B       		.uleb128 0x3b
 3525 0071 0B       		.uleb128 0xb
 3526 0072 01       		.uleb128 0x1
 3527 0073 13       		.uleb128 0x13
 3528 0074 00       		.byte	0
 3529 0075 00       		.byte	0
 3530 0076 0B       		.uleb128 0xb
 3531 0077 0D       		.uleb128 0xd
 3532 0078 00       		.byte	0
 3533 0079 03       		.uleb128 0x3
 3534 007a 0E       		.uleb128 0xe
 3535 007b 3A       		.uleb128 0x3a
 3536 007c 0B       		.uleb128 0xb
 3537 007d 3B       		.uleb128 0x3b
 3538 007e 0B       		.uleb128 0xb
 3539 007f 49       		.uleb128 0x49
 3540 0080 13       		.uleb128 0x13
 3541 0081 38       		.uleb128 0x38
 3542 0082 0B       		.uleb128 0xb
 3543 0083 00       		.byte	0
ARM GAS  /tmp/ccVHQYWs.s 			page 128


 3544 0084 00       		.byte	0
 3545 0085 0C       		.uleb128 0xc
 3546 0086 0D       		.uleb128 0xd
 3547 0087 00       		.byte	0
 3548 0088 03       		.uleb128 0x3
 3549 0089 0E       		.uleb128 0xe
 3550 008a 3A       		.uleb128 0x3a
 3551 008b 0B       		.uleb128 0xb
 3552 008c 3B       		.uleb128 0x3b
 3553 008d 0B       		.uleb128 0xb
 3554 008e 49       		.uleb128 0x49
 3555 008f 13       		.uleb128 0x13
 3556 0090 38       		.uleb128 0x38
 3557 0091 05       		.uleb128 0x5
 3558 0092 00       		.byte	0
 3559 0093 00       		.byte	0
 3560 0094 0D       		.uleb128 0xd
 3561 0095 0F       		.uleb128 0xf
 3562 0096 00       		.byte	0
 3563 0097 0B       		.uleb128 0xb
 3564 0098 0B       		.uleb128 0xb
 3565 0099 00       		.byte	0
 3566 009a 00       		.byte	0
 3567 009b 0E       		.uleb128 0xe
 3568 009c 13       		.uleb128 0x13
 3569 009d 01       		.byte	0x1
 3570 009e 0B       		.uleb128 0xb
 3571 009f 05       		.uleb128 0x5
 3572 00a0 3A       		.uleb128 0x3a
 3573 00a1 0B       		.uleb128 0xb
 3574 00a2 3B       		.uleb128 0x3b
 3575 00a3 05       		.uleb128 0x5
 3576 00a4 01       		.uleb128 0x1
 3577 00a5 13       		.uleb128 0x13
 3578 00a6 00       		.byte	0
 3579 00a7 00       		.byte	0
 3580 00a8 0F       		.uleb128 0xf
 3581 00a9 0D       		.uleb128 0xd
 3582 00aa 00       		.byte	0
 3583 00ab 03       		.uleb128 0x3
 3584 00ac 0E       		.uleb128 0xe
 3585 00ad 3A       		.uleb128 0x3a
 3586 00ae 0B       		.uleb128 0xb
 3587 00af 3B       		.uleb128 0x3b
 3588 00b0 05       		.uleb128 0x5
 3589 00b1 49       		.uleb128 0x49
 3590 00b2 13       		.uleb128 0x13
 3591 00b3 38       		.uleb128 0x38
 3592 00b4 0B       		.uleb128 0xb
 3593 00b5 00       		.byte	0
 3594 00b6 00       		.byte	0
 3595 00b7 10       		.uleb128 0x10
 3596 00b8 0D       		.uleb128 0xd
 3597 00b9 00       		.byte	0
 3598 00ba 03       		.uleb128 0x3
 3599 00bb 0E       		.uleb128 0xe
 3600 00bc 3A       		.uleb128 0x3a
ARM GAS  /tmp/ccVHQYWs.s 			page 129


 3601 00bd 0B       		.uleb128 0xb
 3602 00be 3B       		.uleb128 0x3b
 3603 00bf 05       		.uleb128 0x5
 3604 00c0 49       		.uleb128 0x49
 3605 00c1 13       		.uleb128 0x13
 3606 00c2 38       		.uleb128 0x38
 3607 00c3 05       		.uleb128 0x5
 3608 00c4 00       		.byte	0
 3609 00c5 00       		.byte	0
 3610 00c6 11       		.uleb128 0x11
 3611 00c7 0D       		.uleb128 0xd
 3612 00c8 00       		.byte	0
 3613 00c9 03       		.uleb128 0x3
 3614 00ca 08       		.uleb128 0x8
 3615 00cb 3A       		.uleb128 0x3a
 3616 00cc 0B       		.uleb128 0xb
 3617 00cd 3B       		.uleb128 0x3b
 3618 00ce 05       		.uleb128 0x5
 3619 00cf 49       		.uleb128 0x49
 3620 00d0 13       		.uleb128 0x13
 3621 00d1 38       		.uleb128 0x38
 3622 00d2 05       		.uleb128 0x5
 3623 00d3 00       		.byte	0
 3624 00d4 00       		.byte	0
 3625 00d5 12       		.uleb128 0x12
 3626 00d6 01       		.uleb128 0x1
 3627 00d7 01       		.byte	0x1
 3628 00d8 49       		.uleb128 0x49
 3629 00d9 13       		.uleb128 0x13
 3630 00da 01       		.uleb128 0x1
 3631 00db 13       		.uleb128 0x13
 3632 00dc 00       		.byte	0
 3633 00dd 00       		.byte	0
 3634 00de 13       		.uleb128 0x13
 3635 00df 21       		.uleb128 0x21
 3636 00e0 00       		.byte	0
 3637 00e1 49       		.uleb128 0x49
 3638 00e2 13       		.uleb128 0x13
 3639 00e3 2F       		.uleb128 0x2f
 3640 00e4 0B       		.uleb128 0xb
 3641 00e5 00       		.byte	0
 3642 00e6 00       		.byte	0
 3643 00e7 14       		.uleb128 0x14
 3644 00e8 21       		.uleb128 0x21
 3645 00e9 00       		.byte	0
 3646 00ea 49       		.uleb128 0x49
 3647 00eb 13       		.uleb128 0x13
 3648 00ec 2F       		.uleb128 0x2f
 3649 00ed 05       		.uleb128 0x5
 3650 00ee 00       		.byte	0
 3651 00ef 00       		.byte	0
 3652 00f0 15       		.uleb128 0x15
 3653 00f1 16       		.uleb128 0x16
 3654 00f2 00       		.byte	0
 3655 00f3 03       		.uleb128 0x3
 3656 00f4 0E       		.uleb128 0xe
 3657 00f5 3A       		.uleb128 0x3a
ARM GAS  /tmp/ccVHQYWs.s 			page 130


 3658 00f6 0B       		.uleb128 0xb
 3659 00f7 3B       		.uleb128 0x3b
 3660 00f8 05       		.uleb128 0x5
 3661 00f9 49       		.uleb128 0x49
 3662 00fa 13       		.uleb128 0x13
 3663 00fb 00       		.byte	0
 3664 00fc 00       		.byte	0
 3665 00fd 16       		.uleb128 0x16
 3666 00fe 0D       		.uleb128 0xd
 3667 00ff 00       		.byte	0
 3668 0100 03       		.uleb128 0x3
 3669 0101 08       		.uleb128 0x8
 3670 0102 3A       		.uleb128 0x3a
 3671 0103 0B       		.uleb128 0xb
 3672 0104 3B       		.uleb128 0x3b
 3673 0105 05       		.uleb128 0x5
 3674 0106 49       		.uleb128 0x49
 3675 0107 13       		.uleb128 0x13
 3676 0108 38       		.uleb128 0x38
 3677 0109 0B       		.uleb128 0xb
 3678 010a 00       		.byte	0
 3679 010b 00       		.byte	0
 3680 010c 17       		.uleb128 0x17
 3681 010d 13       		.uleb128 0x13
 3682 010e 01       		.byte	0x1
 3683 010f 0B       		.uleb128 0xb
 3684 0110 0B       		.uleb128 0xb
 3685 0111 3A       		.uleb128 0x3a
 3686 0112 0B       		.uleb128 0xb
 3687 0113 3B       		.uleb128 0x3b
 3688 0114 05       		.uleb128 0x5
 3689 0115 01       		.uleb128 0x1
 3690 0116 13       		.uleb128 0x13
 3691 0117 00       		.byte	0
 3692 0118 00       		.byte	0
 3693 0119 18       		.uleb128 0x18
 3694 011a 34       		.uleb128 0x34
 3695 011b 00       		.byte	0
 3696 011c 03       		.uleb128 0x3
 3697 011d 0E       		.uleb128 0xe
 3698 011e 3A       		.uleb128 0x3a
 3699 011f 0B       		.uleb128 0xb
 3700 0120 3B       		.uleb128 0x3b
 3701 0121 05       		.uleb128 0x5
 3702 0122 49       		.uleb128 0x49
 3703 0123 13       		.uleb128 0x13
 3704 0124 3F       		.uleb128 0x3f
 3705 0125 19       		.uleb128 0x19
 3706 0126 3C       		.uleb128 0x3c
 3707 0127 19       		.uleb128 0x19
 3708 0128 00       		.byte	0
 3709 0129 00       		.byte	0
 3710 012a 19       		.uleb128 0x19
 3711 012b 34       		.uleb128 0x34
 3712 012c 00       		.byte	0
 3713 012d 03       		.uleb128 0x3
 3714 012e 0E       		.uleb128 0xe
ARM GAS  /tmp/ccVHQYWs.s 			page 131


 3715 012f 3A       		.uleb128 0x3a
 3716 0130 0B       		.uleb128 0xb
 3717 0131 3B       		.uleb128 0x3b
 3718 0132 0B       		.uleb128 0xb
 3719 0133 49       		.uleb128 0x49
 3720 0134 13       		.uleb128 0x13
 3721 0135 3F       		.uleb128 0x3f
 3722 0136 19       		.uleb128 0x19
 3723 0137 3C       		.uleb128 0x3c
 3724 0138 19       		.uleb128 0x19
 3725 0139 00       		.byte	0
 3726 013a 00       		.byte	0
 3727 013b 1A       		.uleb128 0x1a
 3728 013c 13       		.uleb128 0x13
 3729 013d 01       		.byte	0x1
 3730 013e 0B       		.uleb128 0xb
 3731 013f 0B       		.uleb128 0xb
 3732 0140 3A       		.uleb128 0x3a
 3733 0141 0B       		.uleb128 0xb
 3734 0142 3B       		.uleb128 0x3b
 3735 0143 0B       		.uleb128 0xb
 3736 0144 01       		.uleb128 0x1
 3737 0145 13       		.uleb128 0x13
 3738 0146 00       		.byte	0
 3739 0147 00       		.byte	0
 3740 0148 1B       		.uleb128 0x1b
 3741 0149 16       		.uleb128 0x16
 3742 014a 00       		.byte	0
 3743 014b 03       		.uleb128 0x3
 3744 014c 08       		.uleb128 0x8
 3745 014d 3A       		.uleb128 0x3a
 3746 014e 0B       		.uleb128 0xb
 3747 014f 3B       		.uleb128 0x3b
 3748 0150 0B       		.uleb128 0xb
 3749 0151 49       		.uleb128 0x49
 3750 0152 13       		.uleb128 0x13
 3751 0153 00       		.byte	0
 3752 0154 00       		.byte	0
 3753 0155 1C       		.uleb128 0x1c
 3754 0156 17       		.uleb128 0x17
 3755 0157 01       		.byte	0x1
 3756 0158 0B       		.uleb128 0xb
 3757 0159 0B       		.uleb128 0xb
 3758 015a 3A       		.uleb128 0x3a
 3759 015b 0B       		.uleb128 0xb
 3760 015c 3B       		.uleb128 0x3b
 3761 015d 0B       		.uleb128 0xb
 3762 015e 01       		.uleb128 0x1
 3763 015f 13       		.uleb128 0x13
 3764 0160 00       		.byte	0
 3765 0161 00       		.byte	0
 3766 0162 1D       		.uleb128 0x1d
 3767 0163 0D       		.uleb128 0xd
 3768 0164 00       		.byte	0
 3769 0165 03       		.uleb128 0x3
 3770 0166 0E       		.uleb128 0xe
 3771 0167 3A       		.uleb128 0x3a
ARM GAS  /tmp/ccVHQYWs.s 			page 132


 3772 0168 0B       		.uleb128 0xb
 3773 0169 3B       		.uleb128 0x3b
 3774 016a 0B       		.uleb128 0xb
 3775 016b 49       		.uleb128 0x49
 3776 016c 13       		.uleb128 0x13
 3777 016d 00       		.byte	0
 3778 016e 00       		.byte	0
 3779 016f 1E       		.uleb128 0x1e
 3780 0170 13       		.uleb128 0x13
 3781 0171 01       		.byte	0x1
 3782 0172 03       		.uleb128 0x3
 3783 0173 0E       		.uleb128 0xe
 3784 0174 0B       		.uleb128 0xb
 3785 0175 0B       		.uleb128 0xb
 3786 0176 3A       		.uleb128 0x3a
 3787 0177 0B       		.uleb128 0xb
 3788 0178 3B       		.uleb128 0x3b
 3789 0179 0B       		.uleb128 0xb
 3790 017a 01       		.uleb128 0x1
 3791 017b 13       		.uleb128 0x13
 3792 017c 00       		.byte	0
 3793 017d 00       		.byte	0
 3794 017e 1F       		.uleb128 0x1f
 3795 017f 0D       		.uleb128 0xd
 3796 0180 00       		.byte	0
 3797 0181 03       		.uleb128 0x3
 3798 0182 08       		.uleb128 0x8
 3799 0183 3A       		.uleb128 0x3a
 3800 0184 0B       		.uleb128 0xb
 3801 0185 3B       		.uleb128 0x3b
 3802 0186 0B       		.uleb128 0xb
 3803 0187 49       		.uleb128 0x49
 3804 0188 13       		.uleb128 0x13
 3805 0189 38       		.uleb128 0x38
 3806 018a 0B       		.uleb128 0xb
 3807 018b 00       		.byte	0
 3808 018c 00       		.byte	0
 3809 018d 20       		.uleb128 0x20
 3810 018e 0F       		.uleb128 0xf
 3811 018f 00       		.byte	0
 3812 0190 0B       		.uleb128 0xb
 3813 0191 0B       		.uleb128 0xb
 3814 0192 49       		.uleb128 0x49
 3815 0193 13       		.uleb128 0x13
 3816 0194 00       		.byte	0
 3817 0195 00       		.byte	0
 3818 0196 21       		.uleb128 0x21
 3819 0197 15       		.uleb128 0x15
 3820 0198 00       		.byte	0
 3821 0199 27       		.uleb128 0x27
 3822 019a 19       		.uleb128 0x19
 3823 019b 00       		.byte	0
 3824 019c 00       		.byte	0
 3825 019d 22       		.uleb128 0x22
 3826 019e 15       		.uleb128 0x15
 3827 019f 01       		.byte	0x1
 3828 01a0 27       		.uleb128 0x27
ARM GAS  /tmp/ccVHQYWs.s 			page 133


 3829 01a1 19       		.uleb128 0x19
 3830 01a2 49       		.uleb128 0x49
 3831 01a3 13       		.uleb128 0x13
 3832 01a4 01       		.uleb128 0x1
 3833 01a5 13       		.uleb128 0x13
 3834 01a6 00       		.byte	0
 3835 01a7 00       		.byte	0
 3836 01a8 23       		.uleb128 0x23
 3837 01a9 05       		.uleb128 0x5
 3838 01aa 00       		.byte	0
 3839 01ab 49       		.uleb128 0x49
 3840 01ac 13       		.uleb128 0x13
 3841 01ad 00       		.byte	0
 3842 01ae 00       		.byte	0
 3843 01af 24       		.uleb128 0x24
 3844 01b0 13       		.uleb128 0x13
 3845 01b1 01       		.byte	0x1
 3846 01b2 03       		.uleb128 0x3
 3847 01b3 0E       		.uleb128 0xe
 3848 01b4 0B       		.uleb128 0xb
 3849 01b5 05       		.uleb128 0x5
 3850 01b6 3A       		.uleb128 0x3a
 3851 01b7 0B       		.uleb128 0xb
 3852 01b8 3B       		.uleb128 0x3b
 3853 01b9 05       		.uleb128 0x5
 3854 01ba 01       		.uleb128 0x1
 3855 01bb 13       		.uleb128 0x13
 3856 01bc 00       		.byte	0
 3857 01bd 00       		.byte	0
 3858 01be 25       		.uleb128 0x25
 3859 01bf 13       		.uleb128 0x13
 3860 01c0 01       		.byte	0x1
 3861 01c1 03       		.uleb128 0x3
 3862 01c2 0E       		.uleb128 0xe
 3863 01c3 0B       		.uleb128 0xb
 3864 01c4 0B       		.uleb128 0xb
 3865 01c5 3A       		.uleb128 0x3a
 3866 01c6 0B       		.uleb128 0xb
 3867 01c7 3B       		.uleb128 0x3b
 3868 01c8 05       		.uleb128 0x5
 3869 01c9 01       		.uleb128 0x1
 3870 01ca 13       		.uleb128 0x13
 3871 01cb 00       		.byte	0
 3872 01cc 00       		.byte	0
 3873 01cd 26       		.uleb128 0x26
 3874 01ce 17       		.uleb128 0x17
 3875 01cf 01       		.byte	0x1
 3876 01d0 0B       		.uleb128 0xb
 3877 01d1 0B       		.uleb128 0xb
 3878 01d2 3A       		.uleb128 0x3a
 3879 01d3 0B       		.uleb128 0xb
 3880 01d4 3B       		.uleb128 0x3b
 3881 01d5 05       		.uleb128 0x5
 3882 01d6 01       		.uleb128 0x1
 3883 01d7 13       		.uleb128 0x13
 3884 01d8 00       		.byte	0
 3885 01d9 00       		.byte	0
ARM GAS  /tmp/ccVHQYWs.s 			page 134


 3886 01da 27       		.uleb128 0x27
 3887 01db 0D       		.uleb128 0xd
 3888 01dc 00       		.byte	0
 3889 01dd 03       		.uleb128 0x3
 3890 01de 0E       		.uleb128 0xe
 3891 01df 3A       		.uleb128 0x3a
 3892 01e0 0B       		.uleb128 0xb
 3893 01e1 3B       		.uleb128 0x3b
 3894 01e2 05       		.uleb128 0x5
 3895 01e3 49       		.uleb128 0x49
 3896 01e4 13       		.uleb128 0x13
 3897 01e5 00       		.byte	0
 3898 01e6 00       		.byte	0
 3899 01e7 28       		.uleb128 0x28
 3900 01e8 15       		.uleb128 0x15
 3901 01e9 01       		.byte	0x1
 3902 01ea 27       		.uleb128 0x27
 3903 01eb 19       		.uleb128 0x19
 3904 01ec 01       		.uleb128 0x1
 3905 01ed 13       		.uleb128 0x13
 3906 01ee 00       		.byte	0
 3907 01ef 00       		.byte	0
 3908 01f0 29       		.uleb128 0x29
 3909 01f1 34       		.uleb128 0x34
 3910 01f2 00       		.byte	0
 3911 01f3 03       		.uleb128 0x3
 3912 01f4 0E       		.uleb128 0xe
 3913 01f5 3A       		.uleb128 0x3a
 3914 01f6 0B       		.uleb128 0xb
 3915 01f7 3B       		.uleb128 0x3b
 3916 01f8 0B       		.uleb128 0xb
 3917 01f9 49       		.uleb128 0x49
 3918 01fa 13       		.uleb128 0x13
 3919 01fb 02       		.uleb128 0x2
 3920 01fc 18       		.uleb128 0x18
 3921 01fd 00       		.byte	0
 3922 01fe 00       		.byte	0
 3923 01ff 2A       		.uleb128 0x2a
 3924 0200 34       		.uleb128 0x34
 3925 0201 00       		.byte	0
 3926 0202 03       		.uleb128 0x3
 3927 0203 0E       		.uleb128 0xe
 3928 0204 3A       		.uleb128 0x3a
 3929 0205 0B       		.uleb128 0xb
 3930 0206 3B       		.uleb128 0x3b
 3931 0207 0B       		.uleb128 0xb
 3932 0208 49       		.uleb128 0x49
 3933 0209 13       		.uleb128 0x13
 3934 020a 3F       		.uleb128 0x3f
 3935 020b 19       		.uleb128 0x19
 3936 020c 02       		.uleb128 0x2
 3937 020d 18       		.uleb128 0x18
 3938 020e 00       		.byte	0
 3939 020f 00       		.byte	0
 3940 0210 2B       		.uleb128 0x2b
 3941 0211 2E       		.uleb128 0x2e
 3942 0212 00       		.byte	0
ARM GAS  /tmp/ccVHQYWs.s 			page 135


 3943 0213 3F       		.uleb128 0x3f
 3944 0214 19       		.uleb128 0x19
 3945 0215 03       		.uleb128 0x3
 3946 0216 0E       		.uleb128 0xe
 3947 0217 3A       		.uleb128 0x3a
 3948 0218 0B       		.uleb128 0xb
 3949 0219 3B       		.uleb128 0x3b
 3950 021a 05       		.uleb128 0x5
 3951 021b 27       		.uleb128 0x27
 3952 021c 19       		.uleb128 0x19
 3953 021d 11       		.uleb128 0x11
 3954 021e 01       		.uleb128 0x1
 3955 021f 12       		.uleb128 0x12
 3956 0220 06       		.uleb128 0x6
 3957 0221 40       		.uleb128 0x40
 3958 0222 18       		.uleb128 0x18
 3959 0223 9742     		.uleb128 0x2117
 3960 0225 19       		.uleb128 0x19
 3961 0226 00       		.byte	0
 3962 0227 00       		.byte	0
 3963 0228 2C       		.uleb128 0x2c
 3964 0229 2E       		.uleb128 0x2e
 3965 022a 01       		.byte	0x1
 3966 022b 3F       		.uleb128 0x3f
 3967 022c 19       		.uleb128 0x19
 3968 022d 03       		.uleb128 0x3
 3969 022e 0E       		.uleb128 0xe
 3970 022f 3A       		.uleb128 0x3a
 3971 0230 0B       		.uleb128 0xb
 3972 0231 3B       		.uleb128 0x3b
 3973 0232 05       		.uleb128 0x5
 3974 0233 27       		.uleb128 0x27
 3975 0234 19       		.uleb128 0x19
 3976 0235 11       		.uleb128 0x11
 3977 0236 01       		.uleb128 0x1
 3978 0237 12       		.uleb128 0x12
 3979 0238 06       		.uleb128 0x6
 3980 0239 40       		.uleb128 0x40
 3981 023a 18       		.uleb128 0x18
 3982 023b 9742     		.uleb128 0x2117
 3983 023d 19       		.uleb128 0x19
 3984 023e 01       		.uleb128 0x1
 3985 023f 13       		.uleb128 0x13
 3986 0240 00       		.byte	0
 3987 0241 00       		.byte	0
 3988 0242 2D       		.uleb128 0x2d
 3989 0243 34       		.uleb128 0x34
 3990 0244 00       		.byte	0
 3991 0245 03       		.uleb128 0x3
 3992 0246 0E       		.uleb128 0xe
 3993 0247 3A       		.uleb128 0x3a
 3994 0248 0B       		.uleb128 0xb
 3995 0249 3B       		.uleb128 0x3b
 3996 024a 05       		.uleb128 0x5
 3997 024b 49       		.uleb128 0x49
 3998 024c 13       		.uleb128 0x13
 3999 024d 02       		.uleb128 0x2
ARM GAS  /tmp/ccVHQYWs.s 			page 136


 4000 024e 17       		.uleb128 0x17
 4001 024f 00       		.byte	0
 4002 0250 00       		.byte	0
 4003 0251 2E       		.uleb128 0x2e
 4004 0252 1D       		.uleb128 0x1d
 4005 0253 01       		.byte	0x1
 4006 0254 31       		.uleb128 0x31
 4007 0255 13       		.uleb128 0x13
 4008 0256 11       		.uleb128 0x11
 4009 0257 01       		.uleb128 0x1
 4010 0258 12       		.uleb128 0x12
 4011 0259 06       		.uleb128 0x6
 4012 025a 58       		.uleb128 0x58
 4013 025b 0B       		.uleb128 0xb
 4014 025c 59       		.uleb128 0x59
 4015 025d 05       		.uleb128 0x5
 4016 025e 01       		.uleb128 0x1
 4017 025f 13       		.uleb128 0x13
 4018 0260 00       		.byte	0
 4019 0261 00       		.byte	0
 4020 0262 2F       		.uleb128 0x2f
 4021 0263 0B       		.uleb128 0xb
 4022 0264 01       		.byte	0x1
 4023 0265 11       		.uleb128 0x11
 4024 0266 01       		.uleb128 0x1
 4025 0267 12       		.uleb128 0x12
 4026 0268 06       		.uleb128 0x6
 4027 0269 00       		.byte	0
 4028 026a 00       		.byte	0
 4029 026b 30       		.uleb128 0x30
 4030 026c 34       		.uleb128 0x34
 4031 026d 00       		.byte	0
 4032 026e 31       		.uleb128 0x31
 4033 026f 13       		.uleb128 0x13
 4034 0270 00       		.byte	0
 4035 0271 00       		.byte	0
 4036 0272 31       		.uleb128 0x31
 4037 0273 1D       		.uleb128 0x1d
 4038 0274 01       		.byte	0x1
 4039 0275 31       		.uleb128 0x31
 4040 0276 13       		.uleb128 0x13
 4041 0277 52       		.uleb128 0x52
 4042 0278 01       		.uleb128 0x1
 4043 0279 55       		.uleb128 0x55
 4044 027a 17       		.uleb128 0x17
 4045 027b 58       		.uleb128 0x58
 4046 027c 0B       		.uleb128 0xb
 4047 027d 59       		.uleb128 0x59
 4048 027e 0B       		.uleb128 0xb
 4049 027f 01       		.uleb128 0x1
 4050 0280 13       		.uleb128 0x13
 4051 0281 00       		.byte	0
 4052 0282 00       		.byte	0
 4053 0283 32       		.uleb128 0x32
 4054 0284 0B       		.uleb128 0xb
 4055 0285 01       		.byte	0x1
 4056 0286 55       		.uleb128 0x55
ARM GAS  /tmp/ccVHQYWs.s 			page 137


 4057 0287 17       		.uleb128 0x17
 4058 0288 00       		.byte	0
 4059 0289 00       		.byte	0
 4060 028a 33       		.uleb128 0x33
 4061 028b 1D       		.uleb128 0x1d
 4062 028c 01       		.byte	0x1
 4063 028d 31       		.uleb128 0x31
 4064 028e 13       		.uleb128 0x13
 4065 028f 11       		.uleb128 0x11
 4066 0290 01       		.uleb128 0x1
 4067 0291 12       		.uleb128 0x12
 4068 0292 06       		.uleb128 0x6
 4069 0293 58       		.uleb128 0x58
 4070 0294 0B       		.uleb128 0xb
 4071 0295 59       		.uleb128 0x59
 4072 0296 0B       		.uleb128 0xb
 4073 0297 01       		.uleb128 0x1
 4074 0298 13       		.uleb128 0x13
 4075 0299 00       		.byte	0
 4076 029a 00       		.byte	0
 4077 029b 34       		.uleb128 0x34
 4078 029c 1D       		.uleb128 0x1d
 4079 029d 00       		.byte	0
 4080 029e 31       		.uleb128 0x31
 4081 029f 13       		.uleb128 0x13
 4082 02a0 11       		.uleb128 0x11
 4083 02a1 01       		.uleb128 0x1
 4084 02a2 12       		.uleb128 0x12
 4085 02a3 06       		.uleb128 0x6
 4086 02a4 58       		.uleb128 0x58
 4087 02a5 0B       		.uleb128 0xb
 4088 02a6 59       		.uleb128 0x59
 4089 02a7 0B       		.uleb128 0xb
 4090 02a8 00       		.byte	0
 4091 02a9 00       		.byte	0
 4092 02aa 35       		.uleb128 0x35
 4093 02ab 1D       		.uleb128 0x1d
 4094 02ac 01       		.byte	0x1
 4095 02ad 31       		.uleb128 0x31
 4096 02ae 13       		.uleb128 0x13
 4097 02af 11       		.uleb128 0x11
 4098 02b0 01       		.uleb128 0x1
 4099 02b1 12       		.uleb128 0x12
 4100 02b2 06       		.uleb128 0x6
 4101 02b3 58       		.uleb128 0x58
 4102 02b4 0B       		.uleb128 0xb
 4103 02b5 59       		.uleb128 0x59
 4104 02b6 0B       		.uleb128 0xb
 4105 02b7 00       		.byte	0
 4106 02b8 00       		.byte	0
 4107 02b9 36       		.uleb128 0x36
 4108 02ba 05       		.uleb128 0x5
 4109 02bb 00       		.byte	0
 4110 02bc 31       		.uleb128 0x31
 4111 02bd 13       		.uleb128 0x13
 4112 02be 00       		.byte	0
 4113 02bf 00       		.byte	0
ARM GAS  /tmp/ccVHQYWs.s 			page 138


 4114 02c0 37       		.uleb128 0x37
 4115 02c1 05       		.uleb128 0x5
 4116 02c2 00       		.byte	0
 4117 02c3 31       		.uleb128 0x31
 4118 02c4 13       		.uleb128 0x13
 4119 02c5 02       		.uleb128 0x2
 4120 02c6 17       		.uleb128 0x17
 4121 02c7 00       		.byte	0
 4122 02c8 00       		.byte	0
 4123 02c9 38       		.uleb128 0x38
 4124 02ca 1D       		.uleb128 0x1d
 4125 02cb 01       		.byte	0x1
 4126 02cc 31       		.uleb128 0x31
 4127 02cd 13       		.uleb128 0x13
 4128 02ce 52       		.uleb128 0x52
 4129 02cf 01       		.uleb128 0x1
 4130 02d0 55       		.uleb128 0x55
 4131 02d1 17       		.uleb128 0x17
 4132 02d2 58       		.uleb128 0x58
 4133 02d3 0B       		.uleb128 0xb
 4134 02d4 59       		.uleb128 0x59
 4135 02d5 05       		.uleb128 0x5
 4136 02d6 00       		.byte	0
 4137 02d7 00       		.byte	0
 4138 02d8 39       		.uleb128 0x39
 4139 02d9 898201   		.uleb128 0x4109
 4140 02dc 00       		.byte	0
 4141 02dd 11       		.uleb128 0x11
 4142 02de 01       		.uleb128 0x1
 4143 02df 31       		.uleb128 0x31
 4144 02e0 13       		.uleb128 0x13
 4145 02e1 00       		.byte	0
 4146 02e2 00       		.byte	0
 4147 02e3 3A       		.uleb128 0x3a
 4148 02e4 898201   		.uleb128 0x4109
 4149 02e7 00       		.byte	0
 4150 02e8 11       		.uleb128 0x11
 4151 02e9 01       		.uleb128 0x1
 4152 02ea 9542     		.uleb128 0x2115
 4153 02ec 19       		.uleb128 0x19
 4154 02ed 31       		.uleb128 0x31
 4155 02ee 13       		.uleb128 0x13
 4156 02ef 00       		.byte	0
 4157 02f0 00       		.byte	0
 4158 02f1 3B       		.uleb128 0x3b
 4159 02f2 2E       		.uleb128 0x2e
 4160 02f3 00       		.byte	0
 4161 02f4 3F       		.uleb128 0x3f
 4162 02f5 19       		.uleb128 0x19
 4163 02f6 03       		.uleb128 0x3
 4164 02f7 0E       		.uleb128 0xe
 4165 02f8 3A       		.uleb128 0x3a
 4166 02f9 0B       		.uleb128 0xb
 4167 02fa 3B       		.uleb128 0x3b
 4168 02fb 0B       		.uleb128 0xb
 4169 02fc 27       		.uleb128 0x27
 4170 02fd 19       		.uleb128 0x19
ARM GAS  /tmp/ccVHQYWs.s 			page 139


 4171 02fe 20       		.uleb128 0x20
 4172 02ff 0B       		.uleb128 0xb
 4173 0300 00       		.byte	0
 4174 0301 00       		.byte	0
 4175 0302 3C       		.uleb128 0x3c
 4176 0303 2E       		.uleb128 0x2e
 4177 0304 01       		.byte	0x1
 4178 0305 03       		.uleb128 0x3
 4179 0306 0E       		.uleb128 0xe
 4180 0307 3A       		.uleb128 0x3a
 4181 0308 0B       		.uleb128 0xb
 4182 0309 3B       		.uleb128 0x3b
 4183 030a 0B       		.uleb128 0xb
 4184 030b 27       		.uleb128 0x27
 4185 030c 19       		.uleb128 0x19
 4186 030d 20       		.uleb128 0x20
 4187 030e 0B       		.uleb128 0xb
 4188 030f 01       		.uleb128 0x1
 4189 0310 13       		.uleb128 0x13
 4190 0311 00       		.byte	0
 4191 0312 00       		.byte	0
 4192 0313 3D       		.uleb128 0x3d
 4193 0314 34       		.uleb128 0x34
 4194 0315 00       		.byte	0
 4195 0316 03       		.uleb128 0x3
 4196 0317 0E       		.uleb128 0xe
 4197 0318 3A       		.uleb128 0x3a
 4198 0319 0B       		.uleb128 0xb
 4199 031a 3B       		.uleb128 0x3b
 4200 031b 0B       		.uleb128 0xb
 4201 031c 49       		.uleb128 0x49
 4202 031d 13       		.uleb128 0x13
 4203 031e 00       		.byte	0
 4204 031f 00       		.byte	0
 4205 0320 3E       		.uleb128 0x3e
 4206 0321 05       		.uleb128 0x5
 4207 0322 00       		.byte	0
 4208 0323 03       		.uleb128 0x3
 4209 0324 0E       		.uleb128 0xe
 4210 0325 3A       		.uleb128 0x3a
 4211 0326 0B       		.uleb128 0xb
 4212 0327 3B       		.uleb128 0x3b
 4213 0328 0B       		.uleb128 0xb
 4214 0329 49       		.uleb128 0x49
 4215 032a 13       		.uleb128 0x13
 4216 032b 00       		.byte	0
 4217 032c 00       		.byte	0
 4218 032d 3F       		.uleb128 0x3f
 4219 032e 2E       		.uleb128 0x2e
 4220 032f 01       		.byte	0x1
 4221 0330 03       		.uleb128 0x3
 4222 0331 0E       		.uleb128 0xe
 4223 0332 3A       		.uleb128 0x3a
 4224 0333 0B       		.uleb128 0xb
 4225 0334 3B       		.uleb128 0x3b
 4226 0335 0B       		.uleb128 0xb
 4227 0336 27       		.uleb128 0x27
ARM GAS  /tmp/ccVHQYWs.s 			page 140


 4228 0337 19       		.uleb128 0x19
 4229 0338 49       		.uleb128 0x49
 4230 0339 13       		.uleb128 0x13
 4231 033a 20       		.uleb128 0x20
 4232 033b 0B       		.uleb128 0xb
 4233 033c 01       		.uleb128 0x1
 4234 033d 13       		.uleb128 0x13
 4235 033e 00       		.byte	0
 4236 033f 00       		.byte	0
 4237 0340 40       		.uleb128 0x40
 4238 0341 2E       		.uleb128 0x2e
 4239 0342 01       		.byte	0x1
 4240 0343 03       		.uleb128 0x3
 4241 0344 0E       		.uleb128 0xe
 4242 0345 3A       		.uleb128 0x3a
 4243 0346 0B       		.uleb128 0xb
 4244 0347 3B       		.uleb128 0x3b
 4245 0348 05       		.uleb128 0x5
 4246 0349 27       		.uleb128 0x27
 4247 034a 19       		.uleb128 0x19
 4248 034b 49       		.uleb128 0x49
 4249 034c 13       		.uleb128 0x13
 4250 034d 20       		.uleb128 0x20
 4251 034e 0B       		.uleb128 0xb
 4252 034f 01       		.uleb128 0x1
 4253 0350 13       		.uleb128 0x13
 4254 0351 00       		.byte	0
 4255 0352 00       		.byte	0
 4256 0353 41       		.uleb128 0x41
 4257 0354 05       		.uleb128 0x5
 4258 0355 00       		.byte	0
 4259 0356 03       		.uleb128 0x3
 4260 0357 0E       		.uleb128 0xe
 4261 0358 3A       		.uleb128 0x3a
 4262 0359 0B       		.uleb128 0xb
 4263 035a 3B       		.uleb128 0x3b
 4264 035b 05       		.uleb128 0x5
 4265 035c 49       		.uleb128 0x49
 4266 035d 13       		.uleb128 0x13
 4267 035e 00       		.byte	0
 4268 035f 00       		.byte	0
 4269 0360 42       		.uleb128 0x42
 4270 0361 2E       		.uleb128 0x2e
 4271 0362 01       		.byte	0x1
 4272 0363 03       		.uleb128 0x3
 4273 0364 0E       		.uleb128 0xe
 4274 0365 3A       		.uleb128 0x3a
 4275 0366 0B       		.uleb128 0xb
 4276 0367 3B       		.uleb128 0x3b
 4277 0368 05       		.uleb128 0x5
 4278 0369 27       		.uleb128 0x27
 4279 036a 19       		.uleb128 0x19
 4280 036b 20       		.uleb128 0x20
 4281 036c 0B       		.uleb128 0xb
 4282 036d 01       		.uleb128 0x1
 4283 036e 13       		.uleb128 0x13
 4284 036f 00       		.byte	0
ARM GAS  /tmp/ccVHQYWs.s 			page 141


 4285 0370 00       		.byte	0
 4286 0371 43       		.uleb128 0x43
 4287 0372 34       		.uleb128 0x34
 4288 0373 00       		.byte	0
 4289 0374 03       		.uleb128 0x3
 4290 0375 0E       		.uleb128 0xe
 4291 0376 3A       		.uleb128 0x3a
 4292 0377 0B       		.uleb128 0xb
 4293 0378 3B       		.uleb128 0x3b
 4294 0379 05       		.uleb128 0x5
 4295 037a 49       		.uleb128 0x49
 4296 037b 13       		.uleb128 0x13
 4297 037c 00       		.byte	0
 4298 037d 00       		.byte	0
 4299 037e 44       		.uleb128 0x44
 4300 037f 2E       		.uleb128 0x2e
 4301 0380 00       		.byte	0
 4302 0381 03       		.uleb128 0x3
 4303 0382 0E       		.uleb128 0xe
 4304 0383 3A       		.uleb128 0x3a
 4305 0384 0B       		.uleb128 0xb
 4306 0385 3B       		.uleb128 0x3b
 4307 0386 05       		.uleb128 0x5
 4308 0387 27       		.uleb128 0x27
 4309 0388 19       		.uleb128 0x19
 4310 0389 20       		.uleb128 0x20
 4311 038a 0B       		.uleb128 0xb
 4312 038b 00       		.byte	0
 4313 038c 00       		.byte	0
 4314 038d 45       		.uleb128 0x45
 4315 038e 2E       		.uleb128 0x2e
 4316 038f 01       		.byte	0x1
 4317 0390 31       		.uleb128 0x31
 4318 0391 13       		.uleb128 0x13
 4319 0392 11       		.uleb128 0x11
 4320 0393 01       		.uleb128 0x1
 4321 0394 12       		.uleb128 0x12
 4322 0395 06       		.uleb128 0x6
 4323 0396 40       		.uleb128 0x40
 4324 0397 18       		.uleb128 0x18
 4325 0398 9742     		.uleb128 0x2117
 4326 039a 19       		.uleb128 0x19
 4327 039b 01       		.uleb128 0x1
 4328 039c 13       		.uleb128 0x13
 4329 039d 00       		.byte	0
 4330 039e 00       		.byte	0
 4331 039f 46       		.uleb128 0x46
 4332 03a0 898201   		.uleb128 0x4109
 4333 03a3 01       		.byte	0x1
 4334 03a4 11       		.uleb128 0x11
 4335 03a5 01       		.uleb128 0x1
 4336 03a6 31       		.uleb128 0x31
 4337 03a7 13       		.uleb128 0x13
 4338 03a8 01       		.uleb128 0x1
 4339 03a9 13       		.uleb128 0x13
 4340 03aa 00       		.byte	0
 4341 03ab 00       		.byte	0
ARM GAS  /tmp/ccVHQYWs.s 			page 142


 4342 03ac 47       		.uleb128 0x47
 4343 03ad 8A8201   		.uleb128 0x410a
 4344 03b0 00       		.byte	0
 4345 03b1 02       		.uleb128 0x2
 4346 03b2 18       		.uleb128 0x18
 4347 03b3 9142     		.uleb128 0x2111
 4348 03b5 18       		.uleb128 0x18
 4349 03b6 00       		.byte	0
 4350 03b7 00       		.byte	0
 4351 03b8 48       		.uleb128 0x48
 4352 03b9 2E       		.uleb128 0x2e
 4353 03ba 00       		.byte	0
 4354 03bb 3F       		.uleb128 0x3f
 4355 03bc 19       		.uleb128 0x19
 4356 03bd 3C       		.uleb128 0x3c
 4357 03be 19       		.uleb128 0x19
 4358 03bf 6E       		.uleb128 0x6e
 4359 03c0 0E       		.uleb128 0xe
 4360 03c1 03       		.uleb128 0x3
 4361 03c2 0E       		.uleb128 0xe
 4362 03c3 3A       		.uleb128 0x3a
 4363 03c4 0B       		.uleb128 0xb
 4364 03c5 3B       		.uleb128 0x3b
 4365 03c6 0B       		.uleb128 0xb
 4366 03c7 00       		.byte	0
 4367 03c8 00       		.byte	0
 4368 03c9 00       		.byte	0
 4369              		.section	.debug_loc,"",%progbits
 4370              	.Ldebug_loc0:
 4371              	.LLST0:
 4372 0000 1C000000 		.4byte	.LVL1
 4373 0004 20000000 		.4byte	.LVL2
 4374 0008 0100     		.2byte	0x1
 4375 000a 51       		.byte	0x51
 4376 000b 20000000 		.4byte	.LVL2
 4377 000f 24000000 		.4byte	.LVL3
 4378 0013 0300     		.2byte	0x3
 4379 0015 71       		.byte	0x71
 4380 0016 7C       		.sleb128 -4
 4381 0017 9F       		.byte	0x9f
 4382 0018 24000000 		.4byte	.LVL3
 4383 001c 28000000 		.4byte	.LVL4
 4384 0020 0100     		.2byte	0x1
 4385 0022 51       		.byte	0x51
 4386 0023 00000000 		.4byte	0
 4387 0027 00000000 		.4byte	0
 4388              	.LLST1:
 4389 002b 3E000000 		.4byte	.LVL5
 4390 002f 42000000 		.4byte	.LVL6
 4391 0033 0300     		.2byte	0x3
 4392 0035 72       		.byte	0x72
 4393 0036 04       		.sleb128 4
 4394 0037 9F       		.byte	0x9f
 4395 0038 42000000 		.4byte	.LVL6
 4396 003c 46000000 		.4byte	.LVL7
 4397 0040 0100     		.2byte	0x1
 4398 0042 52       		.byte	0x52
ARM GAS  /tmp/ccVHQYWs.s 			page 143


 4399 0043 00000000 		.4byte	0
 4400 0047 00000000 		.4byte	0
 4401              	.LLST2:
 4402 004b 90000000 		.4byte	.LVL13
 4403 004f 94000000 		.4byte	.LVL14
 4404 0053 0E00     		.2byte	0xe
 4405 0055 73       		.byte	0x73
 4406 0056 00       		.sleb128 0
 4407 0057 06       		.byte	0x6
 4408 0058 F7       		.byte	0xf7
 4409 0059 25       		.uleb128 0x25
 4410 005a 0A       		.byte	0xa
 4411 005b E803     		.2byte	0x3e8
 4412 005d F7       		.byte	0xf7
 4413 005e 25       		.uleb128 0x25
 4414 005f 1B       		.byte	0x1b
 4415 0060 F7       		.byte	0xf7
 4416 0061 00       		.uleb128 0
 4417 0062 9F       		.byte	0x9f
 4418 0063 94000000 		.4byte	.LVL14
 4419 0067 98000000 		.4byte	.LVL15
 4420 006b 0D00     		.2byte	0xd
 4421 006d 73       		.byte	0x73
 4422 006e 00       		.sleb128 0
 4423 006f F7       		.byte	0xf7
 4424 0070 25       		.uleb128 0x25
 4425 0071 0A       		.byte	0xa
 4426 0072 E803     		.2byte	0x3e8
 4427 0074 F7       		.byte	0xf7
 4428 0075 25       		.uleb128 0x25
 4429 0076 1B       		.byte	0x1b
 4430 0077 F7       		.byte	0xf7
 4431 0078 00       		.uleb128 0
 4432 0079 9F       		.byte	0x9f
 4433 007a 00000000 		.4byte	0
 4434 007e 00000000 		.4byte	0
 4435              	.LLST3:
 4436 0082 AE000000 		.4byte	.LVL16
 4437 0086 B2000000 		.4byte	.LVL17
 4438 008a 0200     		.2byte	0x2
 4439 008c 37       		.byte	0x37
 4440 008d 9F       		.byte	0x9f
 4441 008e 00000000 		.4byte	0
 4442 0092 00000000 		.4byte	0
 4443              	.LLST4:
 4444 0096 AE000000 		.4byte	.LVL16
 4445 009a B2000000 		.4byte	.LVL17
 4446 009e 0300     		.2byte	0x3
 4447 00a0 09       		.byte	0x9
 4448 00a1 FF       		.byte	0xff
 4449 00a2 9F       		.byte	0x9f
 4450 00a3 00000000 		.4byte	0
 4451 00a7 00000000 		.4byte	0
 4452              		.section	.debug_aranges,"",%progbits
 4453 0000 2C000000 		.4byte	0x2c
 4454 0004 0200     		.2byte	0x2
 4455 0006 00000000 		.4byte	.Ldebug_info0
ARM GAS  /tmp/ccVHQYWs.s 			page 144


 4456 000a 04       		.byte	0x4
 4457 000b 00       		.byte	0
 4458 000c 0000     		.2byte	0
 4459 000e 0000     		.2byte	0
 4460 0010 00000000 		.4byte	.LFB147
 4461 0014 02000000 		.4byte	.LFE147-.LFB147
 4462 0018 00000000 		.4byte	.LFB146
 4463 001c F0000000 		.4byte	.LFE146-.LFB146
 4464 0020 00000000 		.4byte	.LFB145
 4465 0024 1C000000 		.4byte	.LFE145-.LFB145
 4466 0028 00000000 		.4byte	0
 4467 002c 00000000 		.4byte	0
 4468              		.section	.debug_ranges,"",%progbits
 4469              	.Ldebug_ranges0:
 4470 0000 50000000 		.4byte	.LBB56
 4471 0004 5A000000 		.4byte	.LBE56
 4472 0008 5C000000 		.4byte	.LBB65
 4473 000c 62000000 		.4byte	.LBE65
 4474 0010 00000000 		.4byte	0
 4475 0014 00000000 		.4byte	0
 4476 0018 A4000000 		.4byte	.LBB78
 4477 001c A8000000 		.4byte	.LBE78
 4478 0020 AE000000 		.4byte	.LBB81
 4479 0024 B2000000 		.4byte	.LBE81
 4480 0028 00000000 		.4byte	0
 4481 002c 00000000 		.4byte	0
 4482 0030 00000000 		.4byte	.LFB147
 4483 0034 02000000 		.4byte	.LFE147
 4484 0038 00000000 		.4byte	.LFB146
 4485 003c F0000000 		.4byte	.LFE146
 4486 0040 00000000 		.4byte	.LFB145
 4487 0044 1C000000 		.4byte	.LFE145
 4488 0048 00000000 		.4byte	0
 4489 004c 00000000 		.4byte	0
 4490              		.section	.debug_line,"",%progbits
 4491              	.Ldebug_line0:
 4492 0000 0F040000 		.section	.debug_str,"MS",%progbits,1
 4492      02006103 
 4492      00000201 
 4492      FB0E0D00 
 4492      01010101 
 4493              	.LASF239:
 4494 0000 5F666C6F 		.ascii	"_flock_t\000"
 4494      636B5F74 
 4494      00
 4495              	.LASF198:
 4496 0009 43504143 		.ascii	"CPACR\000"
 4496      5200
 4497              	.LASF56:
 4498 000f 4143435F 		.ascii	"ACC_IRQn\000"
 4498      4952516E 
 4498      00
 4499              	.LASF209:
 4500 0018 44434353 		.ascii	"DCCSW\000"
 4500      5700
 4501              	.LASF73:
 4502 001e 54433131 		.ascii	"TC11_IRQn\000"
ARM GAS  /tmp/ccVHQYWs.s 			page 145


 4502      5F495251 
 4502      6E00
 4503              	.LASF382:
 4504 0028 54696D65 		.ascii	"TimeTick_Increment\000"
 4504      5469636B 
 4504      5F496E63 
 4504      72656D65 
 4504      6E7400
 4505              	.LASF25:
 4506 003b 52535443 		.ascii	"RSTC_IRQn\000"
 4506      5F495251 
 4506      6E00
 4507              	.LASF143:
 4508 0045 70666E55 		.ascii	"pfnUART2_Handler\000"
 4508      41525432 
 4508      5F48616E 
 4508      646C6572 
 4508      00
 4509              	.LASF377:
 4510 0056 5F5F6C69 		.ascii	"__libc_init_array\000"
 4510      62635F69 
 4510      6E69745F 
 4510      61727261 
 4510      7900
 4511              	.LASF97:
 4512 0068 70666E50 		.ascii	"pfnPendSV_Handler\000"
 4512      656E6453 
 4512      565F4861 
 4512      6E646C65 
 4512      7200
 4513              	.LASF161:
 4514 007a 70666E53 		.ascii	"pfnSDRAMC_Handler\000"
 4514      4452414D 
 4514      435F4861 
 4514      6E646C65 
 4514      7200
 4515              	.LASF136:
 4516 008c 70666E4D 		.ascii	"pfnMCAN1_Handler\000"
 4516      43414E31 
 4516      5F48616E 
 4516      646C6572 
 4516      00
 4517              	.LASF325:
 4518 009d 5F776374 		.ascii	"_wctomb_state\000"
 4518      6F6D625F 
 4518      73746174 
 4518      6500
 4519              	.LASF159:
 4520 00ab 70666E50 		.ascii	"pfnPWM1_Handler\000"
 4520      574D315F 
 4520      48616E64 
 4520      6C657200 
 4521              	.LASF360:
 4522 00bb 666C6167 		.ascii	"flags\000"
 4522      7300
 4523              	.LASF365:
 4524 00c1 4E564943 		.ascii	"NVIC_SetPriority\000"
ARM GAS  /tmp/ccVHQYWs.s 			page 146


 4524      5F536574 
 4524      5072696F 
 4524      72697479 
 4524      00
 4525              	.LASF206:
 4526 00d2 44434953 		.ascii	"DCISW\000"
 4526      5700
 4527              	.LASF109:
 4528 00d8 70666E50 		.ascii	"pfnPIOA_Handler\000"
 4528      494F415F 
 4528      48616E64 
 4528      6C657200 
 4529              	.LASF368:
 4530 00e8 5F5F6765 		.ascii	"__get_PRIMASK\000"
 4530      745F5052 
 4530      494D4153 
 4530      4B00
 4531              	.LASF386:
 4532 00f6 44756D6D 		.ascii	"Dummy_Handler\000"
 4532      795F4861 
 4532      6E646C65 
 4532      7200
 4533              	.LASF70:
 4534 0104 5443385F 		.ascii	"TC8_IRQn\000"
 4534      4952516E 
 4534      00
 4535              	.LASF384:
 4536 010d 2E2E2F76 		.ascii	"../variants/same70/startup_same70.c\000"
 4536      61726961 
 4536      6E74732F 
 4536      73616D65 
 4536      37302F73 
 4537              	.LASF327:
 4538 0131 5F736967 		.ascii	"_signal_buf\000"
 4538      6E616C5F 
 4538      62756600 
 4539              	.LASF234:
 4540 013d 5F5F7763 		.ascii	"__wch\000"
 4540      6800
 4541              	.LASF0:
 4542 0143 756E7369 		.ascii	"unsigned int\000"
 4542      676E6564 
 4542      20696E74 
 4542      00
 4543              	.LASF213:
 4544 0150 4954434D 		.ascii	"ITCMCR\000"
 4544      435200
 4545              	.LASF222:
 4546 0157 4C4F4144 		.ascii	"LOAD\000"
 4546      00
 4547              	.LASF14:
 4548 015c 75696E74 		.ascii	"uint32_t\000"
 4548      33325F74 
 4548      00
 4549              	.LASF148:
 4550 0165 70666E54 		.ascii	"pfnTC8_Handler\000"
 4550      43385F48 
ARM GAS  /tmp/ccVHQYWs.s 			page 147


 4550      616E646C 
 4550      657200
 4551              	.LASF215:
 4552 0174 41484250 		.ascii	"AHBPCR\000"
 4552      435200
 4553              	.LASF202:
 4554 017b 49434941 		.ascii	"ICIALLU\000"
 4554      4C4C5500 
 4555              	.LASF23:
 4556 0183 53797354 		.ascii	"SysTick_IRQn\000"
 4556      69636B5F 
 4556      4952516E 
 4556      00
 4557              	.LASF271:
 4558 0190 5F6C6266 		.ascii	"_lbfsize\000"
 4558      73697A65 
 4558      00
 4559              	.LASF269:
 4560 0199 5F666C61 		.ascii	"_flags\000"
 4560      677300
 4561              	.LASF196:
 4562 01a0 43435349 		.ascii	"CCSIDR\000"
 4562      445200
 4563              	.LASF30:
 4564 01a7 4546435F 		.ascii	"EFC_IRQn\000"
 4564      4952516E 
 4564      00
 4565              	.LASF214:
 4566 01b0 4454434D 		.ascii	"DTCMCR\000"
 4566      435200
 4567              	.LASF35:
 4568 01b7 50494F43 		.ascii	"PIOC_IRQn\000"
 4568      5F495251 
 4568      6E00
 4569              	.LASF286:
 4570 01c1 5F657272 		.ascii	"_errno\000"
 4570      6E6F00
 4571              	.LASF231:
 4572 01c8 5F6F6666 		.ascii	"_off_t\000"
 4572      5F7400
 4573              	.LASF350:
 4574 01cf 5F737265 		.ascii	"_srelocate\000"
 4574      6C6F6361 
 4574      746500
 4575              	.LASF223:
 4576 01da 43414C49 		.ascii	"CALIB\000"
 4576      4200
 4577              	.LASF60:
 4578 01e0 474D4143 		.ascii	"GMAC_IRQn\000"
 4578      5F495251 
 4578      6E00
 4579              	.LASF227:
 4580 01ea 5744545F 		.ascii	"WDT_CR\000"
 4580      435200
 4581              	.LASF3:
 4582 01f1 73686F72 		.ascii	"short int\000"
 4582      7420696E 
ARM GAS  /tmp/ccVHQYWs.s 			page 148


 4582      7400
 4583              	.LASF49:
 4584 01fb 5443335F 		.ascii	"TC3_IRQn\000"
 4584      4952516E 
 4584      00
 4585              	.LASF283:
 4586 0204 5F6D6273 		.ascii	"_mbstate\000"
 4586      74617465 
 4586      00
 4587              	.LASF373:
 4588 020d 5F5F4453 		.ascii	"__DSB\000"
 4588      4200
 4589              	.LASF362:
 4590 0213 6370755F 		.ascii	"cpu_irq_save\000"
 4590      6972715F 
 4590      73617665 
 4590      00
 4591              	.LASF273:
 4592 0220 5F726561 		.ascii	"_read\000"
 4592      6400
 4593              	.LASF322:
 4594 0226 5F723438 		.ascii	"_r48\000"
 4594      00
 4595              	.LASF240:
 4596 022b 5F5F554C 		.ascii	"__ULong\000"
 4596      6F6E6700 
 4597              	.LASF329:
 4598 0233 5F6D6272 		.ascii	"_mbrlen_state\000"
 4598      6C656E5F 
 4598      73746174 
 4598      6500
 4599              	.LASF78:
 4600 0241 50574D31 		.ascii	"PWM1_IRQn\000"
 4600      5F495251 
 4600      6E00
 4601              	.LASF36:
 4602 024b 55534152 		.ascii	"USART0_IRQn\000"
 4602      54305F49 
 4602      52516E00 
 4603              	.LASF67:
 4604 0257 55415254 		.ascii	"UART4_IRQn\000"
 4604      345F4952 
 4604      516E00
 4605              	.LASF288:
 4606 0262 5F737464 		.ascii	"_stdout\000"
 4606      6F757400 
 4607              	.LASF79:
 4608 026a 53445241 		.ascii	"SDRAMC_IRQn\000"
 4608      4D435F49 
 4608      52516E00 
 4609              	.LASF232:
 4610 0276 5F66706F 		.ascii	"_fpos_t\000"
 4610      735F7400 
 4611              	.LASF359:
 4612 027e 6370755F 		.ascii	"cpu_irq_restore\000"
 4612      6972715F 
 4612      72657374 
ARM GAS  /tmp/ccVHQYWs.s 			page 149


 4612      6F726500 
 4613              	.LASF264:
 4614 028e 5F666E73 		.ascii	"_fns\000"
 4614      00
 4615              	.LASF130:
 4616 0293 70666E50 		.ascii	"pfnPWM0_Handler\000"
 4616      574D305F 
 4616      48616E64 
 4616      6C657200 
 4617              	.LASF272:
 4618 02a3 5F636F6F 		.ascii	"_cookie\000"
 4618      6B696500 
 4619              	.LASF146:
 4620 02ab 70666E54 		.ascii	"pfnTC6_Handler\000"
 4620      43365F48 
 4620      616E646C 
 4620      657200
 4621              	.LASF229:
 4622 02ba 5744545F 		.ascii	"WDT_SR\000"
 4622      535200
 4623              	.LASF76:
 4624 02c1 58444D41 		.ascii	"XDMAC_IRQn\000"
 4624      435F4952 
 4624      516E00
 4625              	.LASF186:
 4626 02cc 44465352 		.ascii	"DFSR\000"
 4626      00
 4627              	.LASF342:
 4628 02d1 675F696E 		.ascii	"g_interrupt_enabled\000"
 4628      74657272 
 4628      7570745F 
 4628      656E6162 
 4628      6C656400 
 4629              	.LASF242:
 4630 02e5 5F426967 		.ascii	"_Bigint\000"
 4630      696E7400 
 4631              	.LASF91:
 4632 02ed 70666E52 		.ascii	"pfnReserved2_Handler\000"
 4632      65736572 
 4632      76656432 
 4632      5F48616E 
 4632      646C6572 
 4633              	.LASF17:
 4634 0302 4D656D6F 		.ascii	"MemoryManagement_IRQn\000"
 4634      72794D61 
 4634      6E616765 
 4634      6D656E74 
 4634      5F495251 
 4635              	.LASF254:
 4636 0318 5F5F746D 		.ascii	"__tm_wday\000"
 4636      5F776461 
 4636      7900
 4637              	.LASF142:
 4638 0322 70666E51 		.ascii	"pfnQSPI_Handler\000"
 4638      5350495F 
 4638      48616E64 
 4638      6C657200 
ARM GAS  /tmp/ccVHQYWs.s 			page 150


 4639              	.LASF296:
 4640 0332 5F726573 		.ascii	"_result\000"
 4640      756C7400 
 4641              	.LASF361:
 4642 033a 6370755F 		.ascii	"cpu_irq_is_enabled_flags\000"
 4642      6972715F 
 4642      69735F65 
 4642      6E61626C 
 4642      65645F66 
 4643              	.LASF190:
 4644 0353 49445F50 		.ascii	"ID_PFR\000"
 4644      465200
 4645              	.LASF250:
 4646 035a 5F5F746D 		.ascii	"__tm_hour\000"
 4646      5F686F75 
 4646      7200
 4647              	.LASF116:
 4648 0364 70666E50 		.ascii	"pfnPIOE_Handler\000"
 4648      494F455F 
 4648      48616E64 
 4648      6C657200 
 4649              	.LASF236:
 4650 0374 5F5F636F 		.ascii	"__count\000"
 4650      756E7400 
 4651              	.LASF164:
 4652 037c 49534552 		.ascii	"ISER\000"
 4652      00
 4653              	.LASF64:
 4654 0381 51535049 		.ascii	"QSPI_IRQn\000"
 4654      5F495251 
 4654      6E00
 4655              	.LASF346:
 4656 038b 666C6F61 		.ascii	"float\000"
 4656      7400
 4657              	.LASF127:
 4658 0391 70666E54 		.ascii	"pfnTC5_Handler\000"
 4658      43355F48 
 4658      616E646C 
 4658      657200
 4659              	.LASF312:
 4660 03a0 5F72616E 		.ascii	"_rand48\000"
 4660      64343800 
 4661              	.LASF338:
 4662 03a8 5F696D70 		.ascii	"_impure_ptr\000"
 4662      7572655F 
 4662      70747200 
 4663              	.LASF335:
 4664 03b4 5F6E6578 		.ascii	"_nextf\000"
 4664      746600
 4665              	.LASF121:
 4666 03bb 70666E53 		.ascii	"pfnSSC_Handler\000"
 4666      53435F48 
 4666      616E646C 
 4666      657200
 4667              	.LASF167:
 4668 03ca 52534552 		.ascii	"RSERVED1\000"
 4668      56454431 
ARM GAS  /tmp/ccVHQYWs.s 			page 151


 4668      00
 4669              	.LASF63:
 4670 03d3 53504931 		.ascii	"SPI1_IRQn\000"
 4670      5F495251 
 4670      6E00
 4671              	.LASF52:
 4672 03dd 41464543 		.ascii	"AFEC0_IRQn\000"
 4672      305F4952 
 4672      516E00
 4673              	.LASF331:
 4674 03e8 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 4674      72746F77 
 4674      63735F73 
 4674      74617465 
 4674      00
 4675              	.LASF369:
 4676 03f9 72657375 		.ascii	"result\000"
 4676      6C7400
 4677              	.LASF380:
 4678 0400 73797354 		.ascii	"sysTickHook\000"
 4678      69636B48 
 4678      6F6F6B00 
 4679              	.LASF355:
 4680 040c 65786365 		.ascii	"exception_table\000"
 4680      7074696F 
 4680      6E5F7461 
 4680      626C6500 
 4681              	.LASF11:
 4682 041c 6C6F6E67 		.ascii	"long long unsigned int\000"
 4682      206C6F6E 
 4682      6720756E 
 4682      7369676E 
 4682      65642069 
 4683              	.LASF192:
 4684 0433 49445F41 		.ascii	"ID_AFR\000"
 4684      465200
 4685              	.LASF318:
 4686 043a 5F617363 		.ascii	"_asctime_buf\000"
 4686      74696D65 
 4686      5F627566 
 4686      00
 4687              	.LASF268:
 4688 0447 5F5F7346 		.ascii	"__sFILE\000"
 4688      494C4500 
 4689              	.LASF246:
 4690 044f 5F776473 		.ascii	"_wds\000"
 4690      00
 4691              	.LASF364:
 4692 0454 7469636B 		.ascii	"ticks\000"
 4692      7300
 4693              	.LASF98:
 4694 045a 70666E53 		.ascii	"pfnSysTick_Handler\000"
 4694      79735469 
 4694      636B5F48 
 4694      616E646C 
 4694      657200
 4695              	.LASF204:
ARM GAS  /tmp/ccVHQYWs.s 			page 152


 4696 046d 4943494D 		.ascii	"ICIMVAU\000"
 4696      56415500 
 4697              	.LASF114:
 4698 0475 70666E55 		.ascii	"pfnUSART2_Handler\000"
 4698      53415254 
 4698      325F4861 
 4698      6E646C65 
 4698      7200
 4699              	.LASF119:
 4700 0487 70666E54 		.ascii	"pfnTWIHS1_Handler\000"
 4700      57494853 
 4700      315F4861 
 4700      6E646C65 
 4700      7200
 4701              	.LASF40:
 4702 0499 50494F45 		.ascii	"PIOE_IRQn\000"
 4702      5F495251 
 4702      6E00
 4703              	.LASF308:
 4704 04a3 5F5F4649 		.ascii	"__FILE\000"
 4704      4C4500
 4705              	.LASF217:
 4706 04aa 41484253 		.ascii	"AHBSCR\000"
 4706      435200
 4707              	.LASF280:
 4708 04b1 5F6F6666 		.ascii	"_offset\000"
 4708      73657400 
 4709              	.LASF277:
 4710 04b9 5F756275 		.ascii	"_ubuf\000"
 4710      6600
 4711              	.LASF381:
 4712 04bf 7764745F 		.ascii	"wdt_restart\000"
 4712      72657374 
 4712      61727400 
 4713              	.LASF104:
 4714 04cb 70666E50 		.ascii	"pfnPMC_Handler\000"
 4714      4D435F48 
 4714      616E646C 
 4714      657200
 4715              	.LASF291:
 4716 04da 5F656D65 		.ascii	"_emergency\000"
 4716      7267656E 
 4716      637900
 4717              	.LASF82:
 4718 04e5 4952516E 		.ascii	"IRQn_Type\000"
 4718      5F547970 
 4718      6500
 4719              	.LASF87:
 4720 04ef 70666E4D 		.ascii	"pfnMemManage_Handler\000"
 4720      656D4D61 
 4720      6E616765 
 4720      5F48616E 
 4720      646C6572 
 4721              	.LASF345:
 4722 0504 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 4722      6972715F 
 4722      70726576 
ARM GAS  /tmp/ccVHQYWs.s 			page 153


 4722      5F696E74 
 4722      65727275 
 4723              	.LASF46:
 4724 0521 5443305F 		.ascii	"TC0_IRQn\000"
 4724      4952516E 
 4724      00
 4725              	.LASF144:
 4726 052a 70666E55 		.ascii	"pfnUART3_Handler\000"
 4726      41525433 
 4726      5F48616E 
 4726      646C6572 
 4726      00
 4727              	.LASF38:
 4728 053b 55534152 		.ascii	"USART2_IRQn\000"
 4728      54325F49 
 4728      52516E00 
 4729              	.LASF370:
 4730 0547 5F5F6469 		.ascii	"__disable_irq\000"
 4730      7361626C 
 4730      655F6972 
 4730      7100
 4731              	.LASF248:
 4732 0555 5F5F746D 		.ascii	"__tm_sec\000"
 4732      5F736563 
 4732      00
 4733              	.LASF178:
 4734 055e 43505549 		.ascii	"CPUID\000"
 4734      4400
 4735              	.LASF340:
 4736 0564 7375626F 		.ascii	"suboptarg\000"
 4736      70746172 
 4736      6700
 4737              	.LASF255:
 4738 056e 5F5F746D 		.ascii	"__tm_yday\000"
 4738      5F796461 
 4738      7900
 4739              	.LASF290:
 4740 0578 5F696E63 		.ascii	"_inc\000"
 4740      00
 4741              	.LASF343:
 4742 057d 5F426F6F 		.ascii	"_Bool\000"
 4742      6C00
 4743              	.LASF182:
 4744 0583 53485052 		.ascii	"SHPR\000"
 4744      00
 4745              	.LASF32:
 4746 0588 55415254 		.ascii	"UART1_IRQn\000"
 4746      315F4952 
 4746      516E00
 4747              	.LASF110:
 4748 0593 70666E50 		.ascii	"pfnPIOB_Handler\000"
 4748      494F425F 
 4748      48616E64 
 4748      6C657200 
 4749              	.LASF96:
 4750 05a3 70666E52 		.ascii	"pfnReserved5_Handler\000"
 4750      65736572 
ARM GAS  /tmp/ccVHQYWs.s 			page 154


 4750      76656435 
 4750      5F48616E 
 4750      646C6572 
 4751              	.LASF243:
 4752 05b8 5F6E6578 		.ascii	"_next\000"
 4752      7400
 4753              	.LASF363:
 4754 05be 53797354 		.ascii	"SysTick_Config\000"
 4754      69636B5F 
 4754      436F6E66 
 4754      696700
 4755              	.LASF139:
 4756 05cd 70666E41 		.ascii	"pfnAFEC1_Handler\000"
 4756      46454331 
 4756      5F48616E 
 4756      646C6572 
 4756      00
 4757              	.LASF131:
 4758 05de 70666E49 		.ascii	"pfnICM_Handler\000"
 4758      434D5F48 
 4758      616E646C 
 4758      657200
 4759              	.LASF117:
 4760 05ed 70666E48 		.ascii	"pfnHSMCI_Handler\000"
 4760      534D4349 
 4760      5F48616E 
 4760      646C6572 
 4760      00
 4761              	.LASF124:
 4762 05fe 70666E54 		.ascii	"pfnTC2_Handler\000"
 4762      43325F48 
 4762      616E646C 
 4762      657200
 4763              	.LASF45:
 4764 060d 5353435F 		.ascii	"SSC_IRQn\000"
 4764      4952516E 
 4764      00
 4765              	.LASF149:
 4766 0616 70666E54 		.ascii	"pfnTC9_Handler\000"
 4766      43395F48 
 4766      616E646C 
 4766      657200
 4767              	.LASF62:
 4768 0625 54574948 		.ascii	"TWIHS2_IRQn\000"
 4768      53325F49 
 4768      52516E00 
 4769              	.LASF237:
 4770 0631 5F5F7661 		.ascii	"__value\000"
 4770      6C756500 
 4771              	.LASF156:
 4772 0639 70666E54 		.ascii	"pfnTRNG_Handler\000"
 4772      524E475F 
 4772      48616E64 
 4772      6C657200 
 4773              	.LASF42:
 4774 0649 54574948 		.ascii	"TWIHS0_IRQn\000"
 4774      53305F49 
ARM GAS  /tmp/ccVHQYWs.s 			page 155


 4774      52516E00 
 4775              	.LASF85:
 4776 0655 70666E4E 		.ascii	"pfnNMI_Handler\000"
 4776      4D495F48 
 4776      616E646C 
 4776      657200
 4777              	.LASF185:
 4778 0664 48465352 		.ascii	"HFSR\000"
 4778      00
 4779              	.LASF55:
 4780 0669 49434D5F 		.ascii	"ICM_IRQn\000"
 4780      4952516E 
 4780      00
 4781              	.LASF75:
 4782 0672 54524E47 		.ascii	"TRNG_IRQn\000"
 4782      5F495251 
 4782      6E00
 4783              	.LASF333:
 4784 067c 5F776373 		.ascii	"_wcsrtombs_state\000"
 4784      72746F6D 
 4784      62735F73 
 4784      74617465 
 4784      00
 4785              	.LASF323:
 4786 068d 5F6D626C 		.ascii	"_mblen_state\000"
 4786      656E5F73 
 4786      74617465 
 4786      00
 4787              	.LASF51:
 4788 069a 5443355F 		.ascii	"TC5_IRQn\000"
 4788      4952516E 
 4788      00
 4789              	.LASF307:
 4790 06a3 63686172 		.ascii	"char\000"
 4790      00
 4791              	.LASF379:
 4792 06a8 4170704D 		.ascii	"AppMain\000"
 4792      61696E00 
 4793              	.LASF241:
 4794 06b0 5F446576 		.ascii	"_DeviceVectors\000"
 4794      69636556 
 4794      6563746F 
 4794      727300
 4795              	.LASF251:
 4796 06bf 5F5F746D 		.ascii	"__tm_mday\000"
 4796      5F6D6461 
 4796      7900
 4797              	.LASF304:
 4798 06c9 5F736967 		.ascii	"_sig_func\000"
 4798      5F66756E 
 4798      6300
 4799              	.LASF330:
 4800 06d3 5F6D6272 		.ascii	"_mbrtowc_state\000"
 4800      746F7763 
 4800      5F737461 
 4800      746500
 4801              	.LASF303:
ARM GAS  /tmp/ccVHQYWs.s 			page 156


 4802 06e2 5F617465 		.ascii	"_atexit0\000"
 4802      78697430 
 4802      00
 4803              	.LASF6:
 4804 06eb 5F5F696E 		.ascii	"__int32_t\000"
 4804      7433325F 
 4804      7400
 4805              	.LASF181:
 4806 06f5 41495243 		.ascii	"AIRCR\000"
 4806      5200
 4807              	.LASF348:
 4808 06fb 5F736669 		.ascii	"_sfixed\000"
 4808      78656400 
 4809              	.LASF205:
 4810 0703 4443494D 		.ascii	"DCIMVAU\000"
 4810      56415500 
 4811              	.LASF191:
 4812 070b 49445F44 		.ascii	"ID_DFR\000"
 4812      465200
 4813              	.LASF89:
 4814 0712 70666E55 		.ascii	"pfnUsageFault_Handler\000"
 4814      73616765 
 4814      4661756C 
 4814      745F4861 
 4814      6E646C65 
 4815              	.LASF297:
 4816 0728 5F726573 		.ascii	"_result_k\000"
 4816      756C745F 
 4816      6B00
 4817              	.LASF84:
 4818 0732 70666E52 		.ascii	"pfnReset_Handler\000"
 4818      65736574 
 4818      5F48616E 
 4818      646C6572 
 4818      00
 4819              	.LASF83:
 4820 0743 70765374 		.ascii	"pvStack\000"
 4820      61636B00 
 4821              	.LASF77:
 4822 074b 4953495F 		.ascii	"ISI_IRQn\000"
 4822      4952516E 
 4822      00
 4823              	.LASF147:
 4824 0754 70666E54 		.ascii	"pfnTC7_Handler\000"
 4824      43375F48 
 4824      616E646C 
 4824      657200
 4825              	.LASF302:
 4826 0763 5F6E6577 		.ascii	"_new\000"
 4826      00
 4827              	.LASF12:
 4828 0768 75696E74 		.ascii	"uint8_t\000"
 4828      385F7400 
 4829              	.LASF34:
 4830 0770 50494F42 		.ascii	"PIOB_IRQn\000"
 4830      5F495251 
 4830      6E00
ARM GAS  /tmp/ccVHQYWs.s 			page 157


 4831              	.LASF106:
 4832 077a 70666E55 		.ascii	"pfnUART0_Handler\000"
 4832      41525430 
 4832      5F48616E 
 4832      646C6572 
 4832      00
 4833              	.LASF276:
 4834 078b 5F636C6F 		.ascii	"_close\000"
 4834      736500
 4835              	.LASF92:
 4836 0792 70666E52 		.ascii	"pfnReserved3_Handler\000"
 4836      65736572 
 4836      76656433 
 4836      5F48616E 
 4836      646C6572 
 4837              	.LASF294:
 4838 07a7 5F5F7364 		.ascii	"__sdidinit\000"
 4838      6964696E 
 4838      697400
 4839              	.LASF354:
 4840 07b2 5F657374 		.ascii	"_estack\000"
 4840      61636B00 
 4841              	.LASF102:
 4842 07ba 70666E52 		.ascii	"pfnRTT_Handler\000"
 4842      54545F48 
 4842      616E646C 
 4842      657200
 4843              	.LASF216:
 4844 07c9 43414352 		.ascii	"CACR\000"
 4844      00
 4845              	.LASF193:
 4846 07ce 49445F4D 		.ascii	"ID_MFR\000"
 4846      465200
 4847              	.LASF287:
 4848 07d5 5F737464 		.ascii	"_stdin\000"
 4848      696E00
 4849              	.LASF320:
 4850 07dc 5F67616D 		.ascii	"_gamma_signgam\000"
 4850      6D615F73 
 4850      69676E67 
 4850      616D00
 4851              	.LASF211:
 4852 07eb 44434349 		.ascii	"DCCISW\000"
 4852      535700
 4853              	.LASF197:
 4854 07f2 43535345 		.ascii	"CSSELR\000"
 4854      4C5200
 4855              	.LASF10:
 4856 07f9 6C6F6E67 		.ascii	"long long int\000"
 4856      206C6F6E 
 4856      6720696E 
 4856      7400
 4857              	.LASF199:
 4858 0807 4D564652 		.ascii	"MVFR0\000"
 4858      3000
 4859              	.LASF210:
 4860 080d 44434349 		.ascii	"DCCIMVAC\000"
ARM GAS  /tmp/ccVHQYWs.s 			page 158


 4860      4D564143 
 4860      00
 4861              	.LASF266:
 4862 0816 5F626173 		.ascii	"_base\000"
 4862      6500
 4863              	.LASF138:
 4864 081c 70666E47 		.ascii	"pfnGMAC_Handler\000"
 4864      4D41435F 
 4864      48616E64 
 4864      6C657200 
 4865              	.LASF299:
 4866 082c 5F667265 		.ascii	"_freelist\000"
 4866      656C6973 
 4866      7400
 4867              	.LASF314:
 4868 0836 5F6D756C 		.ascii	"_mult\000"
 4868      7400
 4869              	.LASF208:
 4870 083c 4443434D 		.ascii	"DCCMVAC\000"
 4870      56414300 
 4871              	.LASF315:
 4872 0844 5F616464 		.ascii	"_add\000"
 4872      00
 4873              	.LASF54:
 4874 0849 50574D30 		.ascii	"PWM0_IRQn\000"
 4874      5F495251 
 4874      6E00
 4875              	.LASF388:
 4876 0853 53797354 		.ascii	"SysTick_Handler\000"
 4876      69636B5F 
 4876      48616E64 
 4876      6C657200 
 4877              	.LASF184:
 4878 0863 43465352 		.ascii	"CFSR\000"
 4878      00
 4879              	.LASF66:
 4880 0868 55415254 		.ascii	"UART3_IRQn\000"
 4880      335F4952 
 4880      516E00
 4881              	.LASF332:
 4882 0873 5F776372 		.ascii	"_wcrtomb_state\000"
 4882      746F6D62 
 4882      5F737461 
 4882      746500
 4883              	.LASF270:
 4884 0882 5F66696C 		.ascii	"_file\000"
 4884      6500
 4885              	.LASF207:
 4886 0888 4443434D 		.ascii	"DCCMVAU\000"
 4886      56415500 
 4887              	.LASF150:
 4888 0890 70666E54 		.ascii	"pfnTC10_Handler\000"
 4888      4331305F 
 4888      48616E64 
 4888      6C657200 
 4889              	.LASF157:
 4890 08a0 70666E58 		.ascii	"pfnXDMAC_Handler\000"
ARM GAS  /tmp/ccVHQYWs.s 			page 159


 4890      444D4143 
 4890      5F48616E 
 4890      646C6572 
 4890      00
 4891              	.LASF28:
 4892 08b1 5744545F 		.ascii	"WDT_IRQn\000"
 4892      4952516E 
 4892      00
 4893              	.LASF18:
 4894 08ba 42757346 		.ascii	"BusFault_IRQn\000"
 4894      61756C74 
 4894      5F495251 
 4894      6E00
 4895              	.LASF295:
 4896 08c8 5F5F636C 		.ascii	"__cleanup\000"
 4896      65616E75 
 4896      7000
 4897              	.LASF74:
 4898 08d2 4145535F 		.ascii	"AES_IRQn\000"
 4898      4952516E 
 4898      00
 4899              	.LASF238:
 4900 08db 5F6D6273 		.ascii	"_mbstate_t\000"
 4900      74617465 
 4900      5F7400
 4901              	.LASF140:
 4902 08e6 70666E54 		.ascii	"pfnTWIHS2_Handler\000"
 4902      57494853 
 4902      325F4861 
 4902      6E646C65 
 4902      7200
 4903              	.LASF132:
 4904 08f8 70666E41 		.ascii	"pfnACC_Handler\000"
 4904      43435F48 
 4904      616E646C 
 4904      657200
 4905              	.LASF22:
 4906 0907 50656E64 		.ascii	"PendSV_IRQn\000"
 4906      53565F49 
 4906      52516E00 
 4907              	.LASF105:
 4908 0913 70666E45 		.ascii	"pfnEFC_Handler\000"
 4908      46435F48 
 4908      616E646C 
 4908      657200
 4909              	.LASF256:
 4910 0922 5F5F746D 		.ascii	"__tm_isdst\000"
 4910      5F697364 
 4910      737400
 4911              	.LASF33:
 4912 092d 50494F41 		.ascii	"PIOA_IRQn\000"
 4912      5F495251 
 4912      6E00
 4913              	.LASF59:
 4914 0937 4D43414E 		.ascii	"MCAN1_IRQn\000"
 4914      315F4952 
 4914      516E00
ARM GAS  /tmp/ccVHQYWs.s 			page 160


 4915              	.LASF69:
 4916 0942 5443375F 		.ascii	"TC7_IRQn\000"
 4916      4952516E 
 4916      00
 4917              	.LASF263:
 4918 094b 5F696E64 		.ascii	"_ind\000"
 4918      00
 4919              	.LASF170:
 4920 0950 49435052 		.ascii	"ICPR\000"
 4920      00
 4921              	.LASF374:
 4922 0955 5F5F4953 		.ascii	"__ISB\000"
 4922      4200
 4923              	.LASF44:
 4924 095b 53504930 		.ascii	"SPI0_IRQn\000"
 4924      5F495251 
 4924      6E00
 4925              	.LASF101:
 4926 0965 70666E52 		.ascii	"pfnRTC_Handler\000"
 4926      54435F48 
 4926      616E646C 
 4926      657200
 4927              	.LASF48:
 4928 0974 5443325F 		.ascii	"TC2_IRQn\000"
 4928      4952516E 
 4928      00
 4929              	.LASF155:
 4930 097d 70666E41 		.ascii	"pfnAES_Handler\000"
 4930      45535F48 
 4930      616E646C 
 4930      657200
 4931              	.LASF57:
 4932 098c 55534248 		.ascii	"USBHS_IRQn\000"
 4932      535F4952 
 4932      516E00
 4933              	.LASF245:
 4934 0997 5F736967 		.ascii	"_sign\000"
 4934      6E00
 4935              	.LASF120:
 4936 099d 70666E53 		.ascii	"pfnSPI0_Handler\000"
 4936      5049305F 
 4936      48616E64 
 4936      6C657200 
 4937              	.LASF145:
 4938 09ad 70666E55 		.ascii	"pfnUART4_Handler\000"
 4938      41525434 
 4938      5F48616E 
 4938      646C6572 
 4938      00
 4939              	.LASF252:
 4940 09be 5F5F746D 		.ascii	"__tm_mon\000"
 4940      5F6D6F6E 
 4940      00
 4941              	.LASF224:
 4942 09c7 53797354 		.ascii	"SysTick_Type\000"
 4942      69636B5F 
 4942      54797065 
ARM GAS  /tmp/ccVHQYWs.s 			page 161


 4942      00
 4943              	.LASF339:
 4944 09d4 5F676C6F 		.ascii	"_global_impure_ptr\000"
 4944      62616C5F 
 4944      696D7075 
 4944      72655F70 
 4944      747200
 4945              	.LASF163:
 4946 09e7 44657669 		.ascii	"DeviceVectors\000"
 4946      63655665 
 4946      63746F72 
 4946      7300
 4947              	.LASF226:
 4948 09f5 53797374 		.ascii	"SystemCoreClock\000"
 4948      656D436F 
 4948      7265436C 
 4948      6F636B00 
 4949              	.LASF366:
 4950 0a05 4952516E 		.ascii	"IRQn\000"
 4950      00
 4951              	.LASF111:
 4952 0a0a 70666E50 		.ascii	"pfnPIOC_Handler\000"
 4952      494F435F 
 4952      48616E64 
 4952      6C657200 
 4953              	.LASF274:
 4954 0a1a 5F777269 		.ascii	"_write\000"
 4954      746500
 4955              	.LASF175:
 4956 0a21 53544952 		.ascii	"STIR\000"
 4956      00
 4957              	.LASF8:
 4958 0a26 5F5F7569 		.ascii	"__uint32_t\000"
 4958      6E743332 
 4958      5F7400
 4959              	.LASF128:
 4960 0a31 70666E41 		.ascii	"pfnAFEC0_Handler\000"
 4960      46454330 
 4960      5F48616E 
 4960      646C6572 
 4960      00
 4961              	.LASF321:
 4962 0a42 5F72616E 		.ascii	"_rand_next\000"
 4962      645F6E65 
 4962      787400
 4963              	.LASF125:
 4964 0a4d 70666E54 		.ascii	"pfnTC3_Handler\000"
 4964      43335F48 
 4964      616E646C 
 4964      657200
 4965              	.LASF187:
 4966 0a5c 4D4D4641 		.ascii	"MMFAR\000"
 4966      5200
 4967              	.LASF262:
 4968 0a62 5F617465 		.ascii	"_atexit\000"
 4968      78697400 
 4969              	.LASF53:
ARM GAS  /tmp/ccVHQYWs.s 			page 162


 4970 0a6a 44414343 		.ascii	"DACC_IRQn\000"
 4970      5F495251 
 4970      6E00
 4971              	.LASF26:
 4972 0a74 5254435F 		.ascii	"RTC_IRQn\000"
 4972      4952516E 
 4972      00
 4973              	.LASF357:
 4974 0a7d 70446573 		.ascii	"pDest\000"
 4974      7400
 4975              	.LASF165:
 4976 0a83 52455345 		.ascii	"RESERVED0\000"
 4976      52564544 
 4976      3000
 4977              	.LASF183:
 4978 0a8d 53484353 		.ascii	"SHCSR\000"
 4978      5200
 4979              	.LASF171:
 4980 0a93 52455345 		.ascii	"RESERVED3\000"
 4980      52564544 
 4980      3300
 4981              	.LASF173:
 4982 0a9d 52455345 		.ascii	"RESERVED4\000"
 4982      52564544 
 4982      3400
 4983              	.LASF174:
 4984 0aa7 52455345 		.ascii	"RESERVED5\000"
 4984      52564544 
 4984      3500
 4985              	.LASF203:
 4986 0ab1 52455345 		.ascii	"RESERVED6\000"
 4986      52564544 
 4986      3600
 4987              	.LASF219:
 4988 0abb 41424653 		.ascii	"ABFSR\000"
 4988      5200
 4989              	.LASF218:
 4990 0ac1 52455345 		.ascii	"RESERVED8\000"
 4990      52564544 
 4990      3800
 4991              	.LASF41:
 4992 0acb 48534D43 		.ascii	"HSMCI_IRQn\000"
 4992      495F4952 
 4992      516E00
 4993              	.LASF158:
 4994 0ad6 70666E49 		.ascii	"pfnISI_Handler\000"
 4994      53495F48 
 4994      616E646C 
 4994      657200
 4995              	.LASF356:
 4996 0ae5 70537263 		.ascii	"pSrc\000"
 4996      00
 4997              	.LASF7:
 4998 0aea 6C6F6E67 		.ascii	"long int\000"
 4998      20696E74 
 4998      00
 4999              	.LASF37:
ARM GAS  /tmp/ccVHQYWs.s 			page 163


 5000 0af3 55534152 		.ascii	"USART1_IRQn\000"
 5000      54315F49 
 5000      52516E00 
 5001              	.LASF112:
 5002 0aff 70666E55 		.ascii	"pfnUSART0_Handler\000"
 5002      53415254 
 5002      305F4861 
 5002      6E646C65 
 5002      7200
 5003              	.LASF225:
 5004 0b11 49544D5F 		.ascii	"ITM_RxBuffer\000"
 5004      52784275 
 5004      66666572 
 5004      00
 5005              	.LASF15:
 5006 0b1e 4E6F6E4D 		.ascii	"NonMaskableInt_IRQn\000"
 5006      61736B61 
 5006      626C6549 
 5006      6E745F49 
 5006      52516E00 
 5007              	.LASF371:
 5008 0b32 5F5F656E 		.ascii	"__enable_irq\000"
 5008      61626C65 
 5008      5F697271 
 5008      00
 5009              	.LASF133:
 5010 0b3f 70666E55 		.ascii	"pfnUSBHS_Handler\000"
 5010      53424853 
 5010      5F48616E 
 5010      646C6572 
 5010      00
 5011              	.LASF306:
 5012 0b50 5F5F7366 		.ascii	"__sf\000"
 5012      00
 5013              	.LASF367:
 5014 0b55 7072696F 		.ascii	"priority\000"
 5014      72697479 
 5014      00
 5015              	.LASF31:
 5016 0b5e 55415254 		.ascii	"UART0_IRQn\000"
 5016      305F4952 
 5016      516E00
 5017              	.LASF341:
 5018 0b69 69727166 		.ascii	"irqflags_t\000"
 5018      6C616773 
 5018      5F7400
 5019              	.LASF293:
 5020 0b74 5F637572 		.ascii	"_current_locale\000"
 5020      72656E74 
 5020      5F6C6F63 
 5020      616C6500 
 5021              	.LASF281:
 5022 0b84 5F646174 		.ascii	"_data\000"
 5022      6100
 5023              	.LASF292:
 5024 0b8a 5F637572 		.ascii	"_current_category\000"
 5024      72656E74 
ARM GAS  /tmp/ccVHQYWs.s 			page 164


 5024      5F636174 
 5024      65676F72 
 5024      7900
 5025              	.LASF235:
 5026 0b9c 5F5F7763 		.ascii	"__wchb\000"
 5026      686200
 5027              	.LASF95:
 5028 0ba3 70666E44 		.ascii	"pfnDebugMon_Handler\000"
 5028      65627567 
 5028      4D6F6E5F 
 5028      48616E64 
 5028      6C657200 
 5029              	.LASF135:
 5030 0bb7 70765265 		.ascii	"pvReserved36\000"
 5030      73657276 
 5030      65643336 
 5030      00
 5031              	.LASF253:
 5032 0bc4 5F5F746D 		.ascii	"__tm_year\000"
 5032      5F796561 
 5032      7200
 5033              	.LASF137:
 5034 0bce 70765265 		.ascii	"pvReserved38\000"
 5034      73657276 
 5034      65643338 
 5034      00
 5035              	.LASF257:
 5036 0bdb 5F6F6E5F 		.ascii	"_on_exit_args\000"
 5036      65786974 
 5036      5F617267 
 5036      7300
 5037              	.LASF39:
 5038 0be9 50494F44 		.ascii	"PIOD_IRQn\000"
 5038      5F495251 
 5038      6E00
 5039              	.LASF372:
 5040 0bf3 5F5F444D 		.ascii	"__DMB\000"
 5040      4200
 5041              	.LASF298:
 5042 0bf9 5F703573 		.ascii	"_p5s\000"
 5042      00
 5043              	.LASF160:
 5044 0bfe 70765265 		.ascii	"pvReserved61\000"
 5044      73657276 
 5044      65643631 
 5044      00
 5045              	.LASF319:
 5046 0c0b 5F6C6F63 		.ascii	"_localtime_buf\000"
 5046      616C7469 
 5046      6D655F62 
 5046      756600
 5047              	.LASF337:
 5048 0c1a 5F756E75 		.ascii	"_unused\000"
 5048      73656400 
 5049              	.LASF5:
 5050 0c22 5F5F7569 		.ascii	"__uint8_t\000"
 5050      6E74385F 
ARM GAS  /tmp/ccVHQYWs.s 			page 165


 5050      7400
 5051              	.LASF107:
 5052 0c2c 70666E55 		.ascii	"pfnUART1_Handler\000"
 5052      41525431 
 5052      5F48616E 
 5052      646C6572 
 5052      00
 5053              	.LASF71:
 5054 0c3d 5443395F 		.ascii	"TC9_IRQn\000"
 5054      4952516E 
 5054      00
 5055              	.LASF177:
 5056 0c46 4E564943 		.ascii	"NVIC_Type\000"
 5056      5F547970 
 5056      6500
 5057              	.LASF220:
 5058 0c50 5343425F 		.ascii	"SCB_Type\000"
 5058      54797065 
 5058      00
 5059              	.LASF93:
 5060 0c59 70666E52 		.ascii	"pfnReserved4_Handler\000"
 5060      65736572 
 5060      76656434 
 5060      5F48616E 
 5060      646C6572 
 5061              	.LASF300:
 5062 0c6e 5F637674 		.ascii	"_cvtlen\000"
 5062      6C656E00 
 5063              	.LASF244:
 5064 0c76 5F6D6178 		.ascii	"_maxwds\000"
 5064      77647300 
 5065              	.LASF326:
 5066 0c7e 5F6C3634 		.ascii	"_l64a_buf\000"
 5066      615F6275 
 5066      6600
 5067              	.LASF349:
 5068 0c88 5F657465 		.ascii	"_etext\000"
 5068      787400
 5069              	.LASF376:
 5070 0c8f 55726765 		.ascii	"UrgentInit\000"
 5070      6E74496E 
 5070      697400
 5071              	.LASF134:
 5072 0c9a 70666E4D 		.ascii	"pfnMCAN0_Handler\000"
 5072      43414E30 
 5072      5F48616E 
 5072      646C6572 
 5072      00
 5073              	.LASF86:
 5074 0cab 70666E48 		.ascii	"pfnHardFault_Handler\000"
 5074      61726446 
 5074      61756C74 
 5074      5F48616E 
 5074      646C6572 
 5075              	.LASF180:
 5076 0cc0 56544F52 		.ascii	"VTOR\000"
 5076      00
ARM GAS  /tmp/ccVHQYWs.s 			page 166


 5077              	.LASF50:
 5078 0cc5 5443345F 		.ascii	"TC4_IRQn\000"
 5078      4952516E 
 5078      00
 5079              	.LASF279:
 5080 0cce 5F626C6B 		.ascii	"_blksize\000"
 5080      73697A65 
 5080      00
 5081              	.LASF247:
 5082 0cd7 5F5F746D 		.ascii	"__tm\000"
 5082      00
 5083              	.LASF228:
 5084 0cdc 5744545F 		.ascii	"WDT_MR\000"
 5084      4D5200
 5085              	.LASF378:
 5086 0ce3 696E6974 		.ascii	"init\000"
 5086      00
 5087              	.LASF282:
 5088 0ce8 5F6C6F63 		.ascii	"_lock\000"
 5088      6B00
 5089              	.LASF72:
 5090 0cee 54433130 		.ascii	"TC10_IRQn\000"
 5090      5F495251 
 5090      6E00
 5091              	.LASF176:
 5092 0cf8 73697A65 		.ascii	"sizetype\000"
 5092      74797065 
 5092      00
 5093              	.LASF179:
 5094 0d01 49435352 		.ascii	"ICSR\000"
 5094      00
 5095              	.LASF122:
 5096 0d06 70666E54 		.ascii	"pfnTC0_Handler\000"
 5096      43305F48 
 5096      616E646C 
 5096      657200
 5097              	.LASF9:
 5098 0d15 6C6F6E67 		.ascii	"long unsigned int\000"
 5098      20756E73 
 5098      69676E65 
 5098      6420696E 
 5098      7400
 5099              	.LASF344:
 5100 0d27 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 5100      6972715F 
 5100      63726974 
 5100      6963616C 
 5100      5F736563 
 5101              	.LASF310:
 5102 0d48 5F6E696F 		.ascii	"_niobs\000"
 5102      627300
 5103              	.LASF233:
 5104 0d4f 77696E74 		.ascii	"wint_t\000"
 5104      5F7400
 5105              	.LASF13:
 5106 0d56 696E7433 		.ascii	"int32_t\000"
 5106      325F7400 
ARM GAS  /tmp/ccVHQYWs.s 			page 167


 5107              	.LASF100:
 5108 0d5e 70666E52 		.ascii	"pfnRSTC_Handler\000"
 5108      5354435F 
 5108      48616E64 
 5108      6C657200 
 5109              	.LASF259:
 5110 0d6e 5F64736F 		.ascii	"_dso_handle\000"
 5110      5F68616E 
 5110      646C6500 
 5111              	.LASF24:
 5112 0d7a 53555043 		.ascii	"SUPC_IRQn\000"
 5112      5F495251 
 5112      6E00
 5113              	.LASF151:
 5114 0d84 70666E54 		.ascii	"pfnTC11_Handler\000"
 5114      4331315F 
 5114      48616E64 
 5114      6C657200 
 5115              	.LASF353:
 5116 0d94 5F657A65 		.ascii	"_ezero\000"
 5116      726F00
 5117              	.LASF88:
 5118 0d9b 70666E42 		.ascii	"pfnBusFault_Handler\000"
 5118      75734661 
 5118      756C745F 
 5118      48616E64 
 5118      6C657200 
 5119              	.LASF21:
 5120 0daf 44656275 		.ascii	"DebugMonitor_IRQn\000"
 5120      674D6F6E 
 5120      69746F72 
 5120      5F495251 
 5120      6E00
 5121              	.LASF19:
 5122 0dc1 55736167 		.ascii	"UsageFault_IRQn\000"
 5122      65466175 
 5122      6C745F49 
 5122      52516E00 
 5123              	.LASF301:
 5124 0dd1 5F637674 		.ascii	"_cvtbuf\000"
 5124      62756600 
 5125              	.LASF2:
 5126 0dd9 756E7369 		.ascii	"unsigned char\000"
 5126      676E6564 
 5126      20636861 
 5126      7200
 5127              	.LASF351:
 5128 0de7 5F657265 		.ascii	"_erelocate\000"
 5128      6C6F6361 
 5128      746500
 5129              	.LASF99:
 5130 0df2 70666E53 		.ascii	"pfnSUPC_Handler\000"
 5130      5550435F 
 5130      48616E64 
 5130      6C657200 
 5131              	.LASF20:
 5132 0e02 53564361 		.ascii	"SVCall_IRQn\000"
ARM GAS  /tmp/ccVHQYWs.s 			page 168


 5132      6C6C5F49 
 5132      52516E00 
 5133              	.LASF358:
 5134 0e0e 6670755F 		.ascii	"fpu_enable\000"
 5134      656E6162 
 5134      6C6500
 5135              	.LASF230:
 5136 0e19 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 5136      4B5F5245 
 5136      43555253 
 5136      4956455F 
 5136      5400
 5137              	.LASF108:
 5138 0e2b 70765265 		.ascii	"pvReserved9\000"
 5138      73657276 
 5138      65643900 
 5139              	.LASF152:
 5140 0e37 70765265 		.ascii	"pvReserved53\000"
 5140      73657276 
 5140      65643533 
 5140      00
 5141              	.LASF153:
 5142 0e44 70765265 		.ascii	"pvReserved54\000"
 5142      73657276 
 5142      65643534 
 5142      00
 5143              	.LASF154:
 5144 0e51 70765265 		.ascii	"pvReserved55\000"
 5144      73657276 
 5144      65643535 
 5144      00
 5145              	.LASF168:
 5146 0e5e 49535052 		.ascii	"ISPR\000"
 5146      00
 5147              	.LASF80:
 5148 0e63 52535744 		.ascii	"RSWDT_IRQn\000"
 5148      545F4952 
 5148      516E00
 5149              	.LASF166:
 5150 0e6e 49434552 		.ascii	"ICER\000"
 5150      00
 5151              	.LASF383:
 5152 0e73 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 5152      43393920 
 5152      362E332E 
 5152      31203230 
 5152      31373036 
 5153 0ea6 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 5153      76352D64 
 5153      3136202D 
 5153      6D666C6F 
 5153      61742D61 
 5154 0ed9 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 5154      6E2D7365 
 5154      6374696F 
 5154      6E73202D 
 5154      66646174 
ARM GAS  /tmp/ccVHQYWs.s 			page 169


 5155 0f0c 6F6E7374 		.ascii	"onstant\000"
 5155      616E7400 
 5156              	.LASF265:
 5157 0f14 5F5F7362 		.ascii	"__sbuf\000"
 5157      756600
 5158              	.LASF61:
 5159 0f1b 41464543 		.ascii	"AFEC1_IRQn\000"
 5159      315F4952 
 5159      516E00
 5160              	.LASF172:
 5161 0f26 49414252 		.ascii	"IABR\000"
 5161      00
 5162              	.LASF65:
 5163 0f2b 55415254 		.ascii	"UART2_IRQn\000"
 5163      325F4952 
 5163      516E00
 5164              	.LASF27:
 5165 0f36 5254545F 		.ascii	"RTT_IRQn\000"
 5165      4952516E 
 5165      00
 5166              	.LASF309:
 5167 0f3f 5F676C75 		.ascii	"_glue\000"
 5167      6500
 5168              	.LASF385:
 5169 0f45 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70\000"
 5169      652F746F 
 5169      72626A6F 
 5169      726E2F65 
 5169      636C6970 
 5170              	.LASF90:
 5171 0f74 70666E52 		.ascii	"pfnReserved1_Handler\000"
 5171      65736572 
 5171      76656431 
 5171      5F48616E 
 5171      646C6572 
 5172              	.LASF305:
 5173 0f89 5F5F7367 		.ascii	"__sglue\000"
 5173      6C756500 
 5174              	.LASF141:
 5175 0f91 70666E53 		.ascii	"pfnSPI1_Handler\000"
 5175      5049315F 
 5175      48616E64 
 5175      6C657200 
 5176              	.LASF317:
 5177 0fa1 5F737472 		.ascii	"_strtok_last\000"
 5177      746F6B5F 
 5177      6C617374 
 5177      00
 5178              	.LASF324:
 5179 0fae 5F6D6274 		.ascii	"_mbtowc_state\000"
 5179      6F77635F 
 5179      73746174 
 5179      6500
 5180              	.LASF81:
 5181 0fbc 50455249 		.ascii	"PERIPH_COUNT_IRQn\000"
 5181      50485F43 
 5181      4F554E54 
ARM GAS  /tmp/ccVHQYWs.s 			page 170


 5181      5F495251 
 5181      6E00
 5182              	.LASF258:
 5183 0fce 5F666E61 		.ascii	"_fnargs\000"
 5183      72677300 
 5184              	.LASF94:
 5185 0fd6 70666E53 		.ascii	"pfnSVC_Handler\000"
 5185      56435F48 
 5185      616E646C 
 5185      657200
 5186              	.LASF1:
 5187 0fe5 7369676E 		.ascii	"signed char\000"
 5187      65642063 
 5187      68617200 
 5188              	.LASF58:
 5189 0ff1 4D43414E 		.ascii	"MCAN0_IRQn\000"
 5189      305F4952 
 5189      516E00
 5190              	.LASF285:
 5191 0ffc 5F726565 		.ascii	"_reent\000"
 5191      6E7400
 5192              	.LASF4:
 5193 1003 73686F72 		.ascii	"short unsigned int\000"
 5193      7420756E 
 5193      7369676E 
 5193      65642069 
 5193      6E7400
 5194              	.LASF115:
 5195 1016 70666E50 		.ascii	"pfnPIOD_Handler\000"
 5195      494F445F 
 5195      48616E64 
 5195      6C657200 
 5196              	.LASF103:
 5197 1026 70666E57 		.ascii	"pfnWDT_Handler\000"
 5197      44545F48 
 5197      616E646C 
 5197      657200
 5198              	.LASF43:
 5199 1035 54574948 		.ascii	"TWIHS1_IRQn\000"
 5199      53315F49 
 5199      52516E00 
 5200              	.LASF16:
 5201 1041 48617264 		.ascii	"HardFault_IRQn\000"
 5201      4661756C 
 5201      745F4952 
 5201      516E00
 5202              	.LASF200:
 5203 1050 4D564652 		.ascii	"MVFR1\000"
 5203      3100
 5204              	.LASF201:
 5205 1056 4D564652 		.ascii	"MVFR2\000"
 5205      3200
 5206              	.LASF188:
 5207 105c 42464152 		.ascii	"BFAR\000"
 5207      00
 5208              	.LASF126:
 5209 1061 70666E54 		.ascii	"pfnTC4_Handler\000"
ARM GAS  /tmp/ccVHQYWs.s 			page 171


 5209      43345F48 
 5209      616E646C 
 5209      657200
 5210              	.LASF260:
 5211 1070 5F666E74 		.ascii	"_fntypes\000"
 5211      79706573 
 5211      00
 5212              	.LASF352:
 5213 1079 5F737A65 		.ascii	"_szero\000"
 5213      726F00
 5214              	.LASF68:
 5215 1080 5443365F 		.ascii	"TC6_IRQn\000"
 5215      4952516E 
 5215      00
 5216              	.LASF328:
 5217 1089 5F676574 		.ascii	"_getdate_err\000"
 5217      64617465 
 5217      5F657272 
 5217      00
 5218              	.LASF267:
 5219 1096 5F73697A 		.ascii	"_size\000"
 5219      6500
 5220              	.LASF347:
 5221 109c 646F7562 		.ascii	"double\000"
 5221      6C6500
 5222              	.LASF123:
 5223 10a3 70666E54 		.ascii	"pfnTC1_Handler\000"
 5223      43315F48 
 5223      616E646C 
 5223      657200
 5224              	.LASF195:
 5225 10b2 434C4944 		.ascii	"CLIDR\000"
 5225      5200
 5226              	.LASF169:
 5227 10b8 52455345 		.ascii	"RESERVED2\000"
 5227      52564544 
 5227      3200
 5228              	.LASF387:
 5229 10c2 52657365 		.ascii	"Reset_Handler\000"
 5229      745F4861 
 5229      6E646C65 
 5229      7200
 5230              	.LASF278:
 5231 10d0 5F6E6275 		.ascii	"_nbuf\000"
 5231      6600
 5232              	.LASF316:
 5233 10d6 5F756E75 		.ascii	"_unused_rand\000"
 5233      7365645F 
 5233      72616E64 
 5233      00
 5234              	.LASF47:
 5235 10e3 5443315F 		.ascii	"TC1_IRQn\000"
 5235      4952516E 
 5235      00
 5236              	.LASF29:
 5237 10ec 504D435F 		.ascii	"PMC_IRQn\000"
 5237      4952516E 
ARM GAS  /tmp/ccVHQYWs.s 			page 172


 5237      00
 5238              	.LASF334:
 5239 10f5 5F685F65 		.ascii	"_h_errno\000"
 5239      72726E6F 
 5239      00
 5240              	.LASF212:
 5241 10fe 52455345 		.ascii	"RESERVED7\000"
 5241      52564544 
 5241      3700
 5242              	.LASF194:
 5243 1108 49445F49 		.ascii	"ID_ISAR\000"
 5243      53415200 
 5244              	.LASF284:
 5245 1110 5F666C61 		.ascii	"_flags2\000"
 5245      67733200 
 5246              	.LASF261:
 5247 1118 5F69735F 		.ascii	"_is_cxa\000"
 5247      63786100 
 5248              	.LASF375:
 5249 1120 53797374 		.ascii	"SystemInit\000"
 5249      656D496E 
 5249      697400
 5250              	.LASF249:
 5251 112b 5F5F746D 		.ascii	"__tm_min\000"
 5251      5F6D696E 
 5251      00
 5252              	.LASF113:
 5253 1134 70666E55 		.ascii	"pfnUSART1_Handler\000"
 5253      53415254 
 5253      315F4861 
 5253      6E646C65 
 5253      7200
 5254              	.LASF313:
 5255 1146 5F736565 		.ascii	"_seed\000"
 5255      6400
 5256              	.LASF189:
 5257 114c 41465352 		.ascii	"AFSR\000"
 5257      00
 5258              	.LASF118:
 5259 1151 70666E54 		.ascii	"pfnTWIHS0_Handler\000"
 5259      57494853 
 5259      305F4861 
 5259      6E646C65 
 5259      7200
 5260              	.LASF129:
 5261 1163 70666E44 		.ascii	"pfnDACC_Handler\000"
 5261      4143435F 
 5261      48616E64 
 5261      6C657200 
 5262              	.LASF275:
 5263 1173 5F736565 		.ascii	"_seek\000"
 5263      6B00
 5264              	.LASF289:
 5265 1179 5F737464 		.ascii	"_stderr\000"
 5265      65727200 
 5266              	.LASF336:
 5267 1181 5F6E6D61 		.ascii	"_nmalloc\000"
ARM GAS  /tmp/ccVHQYWs.s 			page 173


 5267      6C6C6F63 
 5267      00
 5268              	.LASF311:
 5269 118a 5F696F62 		.ascii	"_iobs\000"
 5269      7300
 5270              	.LASF221:
 5271 1190 4354524C 		.ascii	"CTRL\000"
 5271      00
 5272              	.LASF162:
 5273 1195 70666E52 		.ascii	"pfnRSWDT_Handler\000"
 5273      53574454 
 5273      5F48616E 
 5273      646C6572 
 5273      00
 5274              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
