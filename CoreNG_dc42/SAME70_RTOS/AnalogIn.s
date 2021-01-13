ARM GAS  /tmp/ccqdRJW7.s 			page 1


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
  12              		.file	"AnalogIn.cpp"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text._Z12AnalogInInitv,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	_Z12AnalogInInitv
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	_Z12AnalogInInitv, %function
  25              	_Z12AnalogInInitv:
  26              	.LFB527:
  27              		.file 1 "../cores/arduino/AnalogIn.cpp"
   1:../cores/arduino/AnalogIn.cpp **** /*
   2:../cores/arduino/AnalogIn.cpp ****  * AnalogInput.cpp
   3:../cores/arduino/AnalogIn.cpp ****  *
   4:../cores/arduino/AnalogIn.cpp ****  *  Created on: 2 Apr 2016
   5:../cores/arduino/AnalogIn.cpp ****  *      Author: David
   6:../cores/arduino/AnalogIn.cpp ****  */
   7:../cores/arduino/AnalogIn.cpp **** 
   8:../cores/arduino/AnalogIn.cpp **** #include "Core.h"
   9:../cores/arduino/AnalogIn.cpp **** #include "AnalogIn.h"
  10:../cores/arduino/AnalogIn.cpp **** 
  11:../cores/arduino/AnalogIn.cpp **** #if SAM3XA || SAM4S
  12:../cores/arduino/AnalogIn.cpp **** # include "adc/adc.h"
  13:../cores/arduino/AnalogIn.cpp **** #elif SAM4E || SAME70
  14:../cores/arduino/AnalogIn.cpp **** # include "afec/afec.h"
  15:../cores/arduino/AnalogIn.cpp **** #else
  16:../cores/arduino/AnalogIn.cpp **** # error Analog input module not written for this processor
  17:../cores/arduino/AnalogIn.cpp **** #endif
  18:../cores/arduino/AnalogIn.cpp **** 
  19:../cores/arduino/AnalogIn.cpp **** #include "pmc/pmc.h"
  20:../cores/arduino/AnalogIn.cpp **** 
  21:../cores/arduino/AnalogIn.cpp **** #if SAM3XA || SAM4S
  22:../cores/arduino/AnalogIn.cpp **** constexpr unsigned int NumChannels = 16;
  23:../cores/arduino/AnalogIn.cpp **** #elif SAM4E
  24:../cores/arduino/AnalogIn.cpp **** constexpr unsigned int NumChannels = 31;
  25:../cores/arduino/AnalogIn.cpp **** constexpr uint32_t AfecLowChannelMask = 0x0000FFFF;
  26:../cores/arduino/AnalogIn.cpp **** constexpr uint32_t AfecHighChannelMask = 0x7FFF0000;
  27:../cores/arduino/AnalogIn.cpp **** #elif SAME70
  28:../cores/arduino/AnalogIn.cpp **** constexpr unsigned int NumChannels = 27;				// but channels 12-15 don't exist
  29:../cores/arduino/AnalogIn.cpp **** constexpr uint32_t AfecLowChannelMask = 0x00000FFF;
  30:../cores/arduino/AnalogIn.cpp **** constexpr uint32_t AfecHighChannelMask = 0x07FF0000;
ARM GAS  /tmp/ccqdRJW7.s 			page 2


  31:../cores/arduino/AnalogIn.cpp **** #endif
  32:../cores/arduino/AnalogIn.cpp **** 
  33:../cores/arduino/AnalogIn.cpp **** static uint32_t activeChannels = 0;
  34:../cores/arduino/AnalogIn.cpp **** 
  35:../cores/arduino/AnalogIn.cpp **** #if SAM3XA || SAM4S
  36:../cores/arduino/AnalogIn.cpp **** static inline adc_channel_num_t GetAdcChannel(AnalogChannelNumber channel)
  37:../cores/arduino/AnalogIn.cpp **** {
  38:../cores/arduino/AnalogIn.cpp **** 	return static_cast<adc_channel_num_t>((unsigned int)channel);
  39:../cores/arduino/AnalogIn.cpp **** }
  40:../cores/arduino/AnalogIn.cpp **** #endif
  41:../cores/arduino/AnalogIn.cpp **** 
  42:../cores/arduino/AnalogIn.cpp **** #if SAM4E || SAME70
  43:../cores/arduino/AnalogIn.cpp **** static inline Afec *GetAfec(AnalogChannelNumber channel)
  44:../cores/arduino/AnalogIn.cpp **** {
  45:../cores/arduino/AnalogIn.cpp **** 	return (channel >= 16) ? AFEC1 : AFEC0;
  46:../cores/arduino/AnalogIn.cpp **** }
  47:../cores/arduino/AnalogIn.cpp **** 
  48:../cores/arduino/AnalogIn.cpp **** static inline afec_channel_num GetAfecChannel(AnalogChannelNumber channel)
  49:../cores/arduino/AnalogIn.cpp **** {
  50:../cores/arduino/AnalogIn.cpp **** 	return static_cast<afec_channel_num>((unsigned int)channel & 15);
  51:../cores/arduino/AnalogIn.cpp **** }
  52:../cores/arduino/AnalogIn.cpp **** #endif
  53:../cores/arduino/AnalogIn.cpp **** 
  54:../cores/arduino/AnalogIn.cpp **** // Module initialisation
  55:../cores/arduino/AnalogIn.cpp **** void AnalogInInit()
  56:../cores/arduino/AnalogIn.cpp **** {
  28              		.loc 1 56 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 24
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32 0000 30B5     		push	{r4, r5, lr}
  33              		.cfi_def_cfa_offset 12
  34              		.cfi_offset 4, -12
  35              		.cfi_offset 5, -8
  36              		.cfi_offset 14, -4
  57:../cores/arduino/AnalogIn.cpp **** #if SAM3XA || SAM4S
  58:../cores/arduino/AnalogIn.cpp **** 	pmc_enable_periph_clk(ID_ADC);
  59:../cores/arduino/AnalogIn.cpp **** 	adc_init(ADC, SystemCoreClock, 2000000, ADC_STARTUP_TIME_12);	// 2MHz clock
  60:../cores/arduino/AnalogIn.cpp **** 	adc_configure_timing(ADC, 3, ADC_SETTLING_TIME_3, 1);			// Add transfer time
  61:../cores/arduino/AnalogIn.cpp **** 	adc_configure_trigger(ADC, ADC_TRIG_SW, 0);						// Disable hardware trigger
  62:../cores/arduino/AnalogIn.cpp **** 	adc_disable_interrupt(ADC, 0xFFFFFFFF);							// Disable all ADC interrupts
  63:../cores/arduino/AnalogIn.cpp **** 	adc_disable_all_channel(ADC);
  64:../cores/arduino/AnalogIn.cpp **** #elif SAM4E || SAME70
  65:../cores/arduino/AnalogIn.cpp **** 	afec_enable(AFEC0);
  37              		.loc 1 65 0
  38 0002 1748     		ldr	r0, .L10
  56:../cores/arduino/AnalogIn.cpp **** #if SAM3XA || SAM4S
  39              		.loc 1 56 0
  40 0004 87B0     		sub	sp, sp, #28
  41              		.cfi_def_cfa_offset 40
  42              		.loc 1 65 0
  43 0006 FFF7FEFF 		bl	afec_enable
  44              	.LVL0:
  66:../cores/arduino/AnalogIn.cpp **** 	afec_enable(AFEC1);
  45              		.loc 1 66 0
  46 000a 1648     		ldr	r0, .L10+4
  47 000c FFF7FEFF 		bl	afec_enable
ARM GAS  /tmp/ccqdRJW7.s 			page 3


  48              	.LVL1:
  67:../cores/arduino/AnalogIn.cpp **** 	afec_config cfg;
  68:../cores/arduino/AnalogIn.cpp **** 	afec_get_config_defaults(&cfg);
  49              		.loc 1 68 0
  50 0010 6846     		mov	r0, sp
  69:../cores/arduino/AnalogIn.cpp **** 
  70:../cores/arduino/AnalogIn.cpp **** #if 0	// these are not needed, the defaults should be OK
  71:../cores/arduino/AnalogIn.cpp **** 	cfg.afec_clock = 2000000UL;						// reduce clock frequency
  72:../cores/arduino/AnalogIn.cpp **** 	cfg.settling_time = AFEC_SETTLING_TIME_3;
  73:../cores/arduino/AnalogIn.cpp **** #endif
  74:../cores/arduino/AnalogIn.cpp **** 
  75:../cores/arduino/AnalogIn.cpp **** 	while (afec_init(AFEC0, &cfg) != STATUS_OK)
  51              		.loc 1 75 0
  52 0012 134C     		ldr	r4, .L10
  68:../cores/arduino/AnalogIn.cpp **** 
  53              		.loc 1 68 0
  54 0014 FFF7FEFF 		bl	afec_get_config_defaults
  55              	.LVL2:
  56 0018 00E0     		b	.L3
  57              	.LVL3:
  58              	.L6:
  59              	.LBB64:
  60              	.LBB65:
  61              		.file 2 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h"
   1:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /**
   2:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \file
   3:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
   4:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \brief Analog-Front-End Controller driver for SAM.
   5:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
   6:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * Copyright (c) 2013-2016 Atmel Corporation. All rights reserved.
   7:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
   8:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \asf_license_start
   9:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
  10:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \page License
  11:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
  12:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * Redistribution and use in source and binary forms, with or without
  13:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * modification, are permitted provided that the following conditions are met:
  14:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
  15:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *    this list of conditions and the following disclaimer.
  17:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
  18:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *    this list of conditions and the following disclaimer in the documentation
  20:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *    and/or other materials provided with the distribution.
  21:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
  22:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *    from this software without specific prior written permission.
  24:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
  25:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * 4. This software may only be redistributed and used in connection with an
  26:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *    Atmel microcontroller product.
  27:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
  28:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
  31:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
ARM GAS  /tmp/ccqdRJW7.s 			page 4


  34:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * POSSIBILITY OF SUCH DAMAGE.
  39:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
  40:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \asf_license_stop
  41:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
  42:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  */
  43:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /*
  44:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  */
  46:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
  47:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** #ifndef AFEC_H_INCLUDED
  48:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** #define AFEC_H_INCLUDED
  49:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
  50:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** #include "compiler.h"
  51:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** #include "status_codes.h"
  52:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
  53:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** #if (SAMV71 || SAMV70 || SAME70 || SAMS70)
  54:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /** Definitions for AFEC resolution */
  55:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** enum afec_resolution {
  56:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_12_BITS = AFEC_EMR_RES_NO_AVERAGE,    /* AFEC 12-bit resolution */
  57:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_13_BITS = AFEC_EMR_RES_OSR4,          /* AFEC 13-bit resolution */
  58:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_14_BITS = AFEC_EMR_RES_OSR16,         /* AFEC 14-bit resolution */
  59:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_15_BITS = AFEC_EMR_RES_OSR64,         /* AFEC 15-bit resolution */
  60:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_16_BITS = AFEC_EMR_RES_OSR256         /* AFEC 16-bit resolution */
  61:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** };
  62:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** #else
  63:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /** Definitions for AFEC resolution */
  64:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** enum afec_resolution {
  65:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_10_BITS = AFEC_EMR_RES_LOW_RES,       /* AFEC 10-bit resolution */
  66:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_12_BITS = AFEC_EMR_RES_NO_AVERAGE,    /* AFEC 12-bit resolution */
  67:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_13_BITS = AFEC_EMR_RES_OSR4,          /* AFEC 13-bit resolution */
  68:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_14_BITS = AFEC_EMR_RES_OSR16,         /* AFEC 14-bit resolution */
  69:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_15_BITS = AFEC_EMR_RES_OSR64,         /* AFEC 15-bit resolution */
  70:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_16_BITS = AFEC_EMR_RES_OSR256         /* AFEC 16-bit resolution */
  71:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** };
  72:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** #endif
  73:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /** Definitions for AFEC power mode */
  74:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** enum afec_power_mode {
  75:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	/* AFEC core on and reference voltage circuitry on */
  76:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_POWER_MODE_0 = 0,
  77:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	/* AFEC core off and reference voltage circuitry on */
  78:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_POWER_MODE_1,
  79:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	/* AFEC core off and reference voltage circuitry off */
  80:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_POWER_MODE_2
  81:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** };
  82:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
  83:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /** Definitions for AFEC trigger */
  84:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** enum afec_trigger {
  85:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	/* Starting a conversion is only possible by software. */
  86:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_TRIG_SW = AFEC_MR_TRGEN_DIS,
  87:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	/* External trigger */
  88:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_TRIG_EXT = AFEC_MR_TRGSEL_AFEC_TRIG0 | AFEC_MR_TRGEN,
  89:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	/* TIO Output of the Timer Counter Channel 0 */
  90:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_TRIG_TIO_CH_0 = AFEC_MR_TRGSEL_AFEC_TRIG1 | AFEC_MR_TRGEN,
ARM GAS  /tmp/ccqdRJW7.s 			page 5


  91:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	/* TIO Output of the Timer Counter Channel 1 */
  92:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_TRIG_TIO_CH_1 = AFEC_MR_TRGSEL_AFEC_TRIG2 | AFEC_MR_TRGEN,
  93:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	/* TIO Output of the Timer Counter Channel 2 */
  94:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_TRIG_TIO_CH_2 = AFEC_MR_TRGSEL_AFEC_TRIG3 | AFEC_MR_TRGEN,
  95:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	/* PWM Event Line 0 */
  96:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_TRIG_PWM_EVENT_LINE_0 = AFEC_MR_TRGSEL_AFEC_TRIG4 | AFEC_MR_TRGEN,
  97:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	/* PWM Event Line 1 */
  98:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_TRIG_PWM_EVENT_LINE_1 = AFEC_MR_TRGSEL_AFEC_TRIG5 | AFEC_MR_TRGEN,
  99:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** #if (SAMV71 || SAMV70 || SAME70 || SAMS70)
 100:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	/*Analog Comparator*/
 101:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_TRIG_ANALOG_COMPARATOR = AFEC_MR_TRGSEL_AFEC_TRIG6 | AFEC_MR_TRGEN,
 102:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** #endif	
 103:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	/* Freerun mode conversion. */
 104:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_TRIG_FREERUN = 0xFF,
 105:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** };
 106:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 107:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** #if defined __SAM4E8C__  || defined __SAM4E16C__ || defined __SAM4E8CB__  || defined __SAM4E16CB__
 108:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /** Definitions for AFEC channel number */
 109:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** enum afec_channel_num {
 110:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_0 = 0,
 111:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_1,
 112:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_2,
 113:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_3,
 114:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_4,
 115:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_5,
 116:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_TEMPERATURE_SENSOR = 15,
 117:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_ALL = 0x803F,
 118:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** } ;
 119:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** #elif defined __SAM4E8E__  || defined __SAM4E16E__
 120:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /** Definitions for AFEC channel number */
 121:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** enum afec_channel_num {
 122:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_0 = 0,
 123:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_1,
 124:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_2,
 125:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_3,
 126:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_4,
 127:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_5,
 128:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_6,
 129:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_7,
 130:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_8,
 131:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_9,
 132:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_10,
 133:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_11,
 134:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_12,
 135:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_13,
 136:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_14,
 137:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_TEMPERATURE_SENSOR,
 138:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_ALL = 0xFFFF,
 139:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** } ;
 140:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** #elif (SAMV71 || SAMV70 || SAME70 || SAMS70)
 141:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /** Definitions for AFEC channel number */
 142:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** enum afec_channel_num {
 143:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_0 = 0,
 144:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_1,
 145:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_2,
 146:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_3,
 147:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_4,
ARM GAS  /tmp/ccqdRJW7.s 			page 6


 148:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_5,
 149:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_6,
 150:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_7,
 151:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_8,
 152:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_9,
 153:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_10,
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_TEMPERATURE_SENSOR,
 155:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_ALL = 0x0FFF,
 156:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** } ;
 157:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 158:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** #define NB_CH_AFE0  (12UL)
 159:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** #define NB_CH_AFE1  (12UL)
 160:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** #endif
 161:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 162:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** #if (SAMV71 || SAMV70 || SAME70 || SAMS70)
 163:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** enum afec_sample_hold_mode {
 164:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	/*Single Sample-and-Hold mode*/
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_SAMPLE_HOLD_MODE_0,
 166:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	/*Dual Sample-and-Hold mode*/
 167:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_SAMPLE_HOLD_MODE_1,
 168:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** };
 169:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** #endif
 170:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 171:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /** Definitions for AFEC gain value */
 172:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** enum afec_gainvalue {
 173:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_GAINVALUE_0 = 0,
 174:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_GAINVALUE_1 = 1,
 175:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_GAINVALUE_2 = 2,
 176:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_GAINVALUE_3 = 3
 177:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** };
 178:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 179:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /** Definitions for AFEC Start Up Time */
 180:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** enum afec_startup_time {
 181:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_STARTUP_TIME_0 = AFEC_MR_STARTUP_SUT0,
 182:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_STARTUP_TIME_1 = AFEC_MR_STARTUP_SUT8,
 183:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_STARTUP_TIME_2 = AFEC_MR_STARTUP_SUT16,
 184:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_STARTUP_TIME_3 = AFEC_MR_STARTUP_SUT24,
 185:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_STARTUP_TIME_4 = AFEC_MR_STARTUP_SUT64,
 186:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_STARTUP_TIME_5 = AFEC_MR_STARTUP_SUT80,
 187:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_STARTUP_TIME_6 = AFEC_MR_STARTUP_SUT96,
 188:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_STARTUP_TIME_7 = AFEC_MR_STARTUP_SUT112,
 189:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_STARTUP_TIME_8 = AFEC_MR_STARTUP_SUT512,
 190:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_STARTUP_TIME_9 = AFEC_MR_STARTUP_SUT576,
 191:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_STARTUP_TIME_10 = AFEC_MR_STARTUP_SUT640,
 192:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_STARTUP_TIME_11 = AFEC_MR_STARTUP_SUT704,
 193:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_STARTUP_TIME_12 = AFEC_MR_STARTUP_SUT768,
 194:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_STARTUP_TIME_13 = AFEC_MR_STARTUP_SUT832,
 195:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_STARTUP_TIME_14 = AFEC_MR_STARTUP_SUT896,
 196:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_STARTUP_TIME_15 = AFEC_MR_STARTUP_SUT960
 197:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** };
 198:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 199:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** #if SAM4E
 200:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /** Definitions for AFEC analog settling time */
 201:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** enum afec_settling_time {
 202:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_SETTLING_TIME_0 = AFEC_MR_SETTLING_AST3,
 203:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_SETTLING_TIME_1 = AFEC_MR_SETTLING_AST5,
 204:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_SETTLING_TIME_2 = AFEC_MR_SETTLING_AST9,
ARM GAS  /tmp/ccqdRJW7.s 			page 7


 205:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_SETTLING_TIME_3 = AFEC_MR_SETTLING_AST17
 206:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** };
 207:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** #endif
 208:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 209:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /** Definitions for Comparison Mode */
 210:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** enum afec_cmp_mode {
 211:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CMP_MODE_0 = AFEC_EMR_CMPMODE_LOW,
 212:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CMP_MODE_1 = AFEC_EMR_CMPMODE_HIGH,
 213:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CMP_MODE_2 = AFEC_EMR_CMPMODE_IN,
 214:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_CMP_MODE_3 = AFEC_EMR_CMPMODE_OUT
 215:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** };
 216:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 217:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /** Definitions for Temperature Comparison Mode */
 218:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** enum afec_temp_cmp_mode {
 219:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_TEMP_CMP_MODE_0 = AFEC_TEMPMR_TEMPCMPMOD_LOW,
 220:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_TEMP_CMP_MODE_1 = AFEC_TEMPMR_TEMPCMPMOD_HIGH,
 221:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_TEMP_CMP_MODE_2 = AFEC_TEMPMR_TEMPCMPMOD_IN,
 222:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_TEMP_CMP_MODE_3 = AFEC_TEMPMR_TEMPCMPMOD_OUT
 223:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** };
 224:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 225:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /**
 226:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \brief Analog-Front-End Controller configuration structure.
 227:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
 228:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * Configuration structure for a Analog-Front-End Controller instance.
 229:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * This structure could be initialized by the \ref afec_get_config_defaults()
 230:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * function before being modified by the user application.
 231:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  */
 232:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** struct afec_config {
 233:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	/** Resolution */
 234:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	enum afec_resolution resolution;
 235:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	/** Master Clock */
 236:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	uint32_t mck;
 237:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	/** AFEC Clock */
 238:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	uint32_t afec_clock;
 239:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	/** Start Up Time */
 240:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	enum afec_startup_time startup_time;
 241:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	#if  SAM4E
 242:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		/** Analog Settling Time = (settling_time + 1) / AFEC clock */
 243:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		enum afec_settling_time settling_time;
 244:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	#endif
 245:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	/** Tracking Time = tracktim / AFEC clock */
 246:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	uint8_t tracktim;
 247:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	/** Transfer Period = (transfer * 2 + 3) / AFEC clock */
 248:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	uint8_t transfer;
 249:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	/** Analog Change */
 250:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	bool anach;
 251:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	/** Use Sequence Enable */
 252:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	bool useq;
 253:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	/** TAG of AFE_LDCR register */
 254:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	bool tag;
 255:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	/** Single Trigger Mode */
 256:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	bool stm;
 257:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	/** AFE Bias Current Control */
 258:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	uint8_t ibctl;
 259:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** };
 260:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 261:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /** AFEC channel configuration structure.*/
ARM GAS  /tmp/ccqdRJW7.s 			page 8


 262:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** struct afec_ch_config {
 263:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	/** Differential Mode */
 264:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	bool diff;
 265:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	/** Gain Value */
 266:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	enum afec_gainvalue gain;
 267:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** };
 268:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 269:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /** AFEC Temperature Sensor configuration structure.*/
 270:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** struct afec_temp_sensor_config {
 271:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	/** RTC Trigger mode */
 272:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	bool rctc;
 273:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	/** Temperature Comparison Mode */
 274:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	enum afec_temp_cmp_mode mode;
 275:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	/** Temperature Low Threshold */
 276:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	uint16_t low_threshold;
 277:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	/** Temperature High Threshold */
 278:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	uint16_t high_threshold;
 279:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** };
 280:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 281:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** #if defined __SAM4E8C__  || defined __SAM4E16C__ || defined __SAM4E8CB__  || defined __SAM4E16CB__
 282:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /** AFEC interrupt source type */
 283:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** enum afec_interrupt_source {
 284:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_0 = 0,
 285:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_1,
 286:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_2,
 287:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_3,
 288:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_4,
 289:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_5,
 290:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_15,
 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_DATA_READY,
 292:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_OVERRUN_ERROR,
 293:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_COMP_ERROR,
 294:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_END_RXBUF,
 295:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_RXBUF_FULL,
 296:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_TEMP_CHANGE,
 297:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_END_CAL,
 298:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	_AFEC_NUM_OF_INTERRUPT_SOURCE,
 299:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_ALL = 0xDF00803F,
 300:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** };
 301:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** #elif defined __SAM4E8E__  || defined __SAM4E16E__
 302:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /** AFEC interrupt source type */
 303:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** enum afec_interrupt_source {
 304:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_0 = 0,
 305:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_1,
 306:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_2,
 307:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_3,
 308:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_4,
 309:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_5,
 310:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_6,
 311:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_7,
 312:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_8,
 313:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_9,
 314:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_10,
 315:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_11,
 316:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_12,
 317:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_13,
 318:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_14,
ARM GAS  /tmp/ccqdRJW7.s 			page 9


 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_15,
 320:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_DATA_READY,
 321:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_OVERRUN_ERROR,
 322:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_COMP_ERROR,
 323:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_END_RXBUF,
 324:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_RXBUF_FULL,
 325:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_TEMP_CHANGE,
 326:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_END_CAL,
 327:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	_AFEC_NUM_OF_INTERRUPT_SOURCE,
 328:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_ALL = 0xDF00FFFF,
 329:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** };
 330:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** #elif (SAMV71 || SAMV70 || SAME70 || SAMS70)
 331:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /** AFEC interrupt source type */
 332:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** enum afec_interrupt_source {
 333:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_0 = 0,
 334:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_1,
 335:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_2,
 336:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_3,
 337:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_4,
 338:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_5,
 339:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_6,
 340:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_7,
 341:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_8,
 342:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_9,
 343:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_10,
 344:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_11,
 345:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_DATA_READY,
 346:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_OVERRUN_ERROR,
 347:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_COMP_ERROR,
 348:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_TEMP_CHANGE,
 349:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	_AFEC_NUM_OF_INTERRUPT_SOURCE,
 350:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_ALL = 0x47000FFF,
 351:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** };
 352:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** #endif
 353:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 354:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** typedef void (*afec_callback_t)(void);
 355:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 356:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** void afec_get_config_defaults(struct afec_config *const cfg);
 357:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** void afec_ch_get_config_defaults(struct afec_ch_config *const cfg);
 358:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** void afec_temp_sensor_get_config_defaults(
 359:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		struct afec_temp_sensor_config *const cfg);
 360:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** enum status_code afec_init(Afec *const afec, struct afec_config *const config);
 361:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** void afec_temp_sensor_set_config(Afec *const afec,
 362:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		struct afec_temp_sensor_config *config);
 363:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** void afec_ch_set_config(Afec *const afec, const enum afec_channel_num channel,
 364:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		struct afec_ch_config *config);
 365:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** void afec_configure_sequence(Afec *const afec,
 366:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		const enum afec_channel_num ch_list[], const uint8_t uc_num);
 367:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** void afec_enable(Afec *const afec);
 368:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** void afec_disable(Afec *const afec);
 369:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** void afec_set_callback(Afec *const afec, enum afec_interrupt_source source,
 370:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		afec_callback_t callback, uint8_t irq_level);
 371:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 372:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** #if (SAMV71 || SAMV70 || SAME70 || SAMS70)
 373:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** void afec_configure_auto_error_correction(Afec *const afec,
 374:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		const enum afec_channel_num channel,int16_t offsetcorr, uint16_t gaincorr);
 375:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
ARM GAS  /tmp/ccqdRJW7.s 			page 10


 376:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** uint32_t afec_get_correction_value(Afec *const afec,
 377:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	   const enum afec_channel_num afec_ch);
 378:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** void afec_set_sample_hold_mode(Afec *const afec,
 379:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		const enum afec_channel_num channel,const enum afec_sample_hold_mode mode);
 380:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 381:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** #endif
 382:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /**
 383:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \internal
 384:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \brief AFEC channel sanity check
 385:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
 386:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 387:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \param channel  AFEC channel number.
 388:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
 389:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  */
 390:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** static inline void afec_ch_sanity_check(Afec *const afec,
 391:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		const enum afec_channel_num channel)
 392:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** {
 393:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	if (afec == AFEC0) {
 394:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	#if defined __SAM4E8C__  || defined __SAM4E16C__ || defined __SAM4E8CB__  || defined __SAM4E16CB__
 395:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		Assert((channel < NB_CH_AFE0) || (channel == AFEC_TEMPERATURE_SENSOR));
 396:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	#elif defined __SAM4E8E__  || defined __SAM4E16E__
 397:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		Assert(channel < NB_CH_AFE0);
 398:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	#elif (SAMV71 || SAMV70 || SAME70 || SAMS70)
 399:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		Assert(channel < NB_CH_AFE0);
 400:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	#endif
 401:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	} else if (afec == AFEC1) {
 402:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		Assert(channel < NB_CH_AFE1);
 403:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	}
 404:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	UNUSED(channel);
 405:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** }
 406:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 407:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /**
 408:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \brief Configure conversion trigger and free run mode.
 409:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
 410:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 411:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \param trigger Conversion trigger.
 412:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
 413:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  */
 414:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** static inline void afec_set_trigger(Afec *const afec,
 415:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		const enum afec_trigger trigger)
 416:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** {
 417:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	uint32_t reg;
 418:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 419:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	reg = afec->AFEC_MR;
 420:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 421:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	if (trigger == AFEC_TRIG_FREERUN) {
 422:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		reg |= AFEC_MR_FREERUN_ON;
 423:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	} else {
 424:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		reg &= ~(AFEC_MR_TRGSEL_Msk | AFEC_MR_TRGEN | AFEC_MR_FREERUN_ON);
 425:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		reg |= trigger;
 426:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	}
 427:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 428:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	afec->AFEC_MR = reg;
 429:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** }
 430:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 431:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /**
 432:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \brief Configure conversion resolution.
ARM GAS  /tmp/ccqdRJW7.s 			page 11


 433:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
 434:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 435:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \param res Conversion resolution.
 436:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
 437:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  */
 438:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** static inline void afec_set_resolution(Afec *const afec,
 439:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		const enum afec_resolution res)
 440:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** {
 441:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	uint32_t reg;
 442:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 443:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	reg = afec->AFEC_EMR;
 444:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 445:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	reg &= ~AFEC_EMR_RES_Msk;
 446:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	reg |= res;
 447:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 448:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	afec->AFEC_EMR = reg;
 449:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** }
 450:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 451:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** void afec_set_comparison_mode(Afec *const afec,
 452:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		const enum afec_cmp_mode mode, const enum afec_channel_num channel,
 453:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		uint8_t cmp_filter);
 454:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 455:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /**
 456:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \brief Get comparison mode.
 457:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
 458:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 459:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
 460:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \retval Compare mode value.
 461:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  */
 462:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** static inline enum afec_cmp_mode afec_get_comparison_mode(Afec *const afec)
 463:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** {
 464:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	return (enum afec_cmp_mode)(afec->AFEC_EMR & AFEC_EMR_CMPMODE_Msk);
 465:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** }
 466:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 467:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /**
 468:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \brief Configure AFEC compare window.
 469:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
 470:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 471:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \param us_low_threshold Low threshold of compare window.
 472:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \param us_high_threshold High threshold of compare window.
 473:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  */
 474:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** static inline void afec_set_comparison_window(Afec *const afec,
 475:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		const uint16_t us_low_threshold, const uint16_t us_high_threshold)
 476:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** {
 477:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	afec->AFEC_CWR = AFEC_CWR_LOWTHRES(us_low_threshold) |
 478:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 			AFEC_CWR_HIGHTHRES(us_high_threshold);
 479:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** }
 480:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 481:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /**
 482:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \brief Enable or disable write protection of AFEC registers.
 483:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
 484:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 485:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \param is_enable 1 to enable, 0 to disable.
 486:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  */
 487:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** static inline void afec_set_writeprotect(Afec *const afec,
 488:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		const bool is_enable)
 489:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** {
ARM GAS  /tmp/ccqdRJW7.s 			page 12


 490:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	if (is_enable) {
 491:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		afec->AFEC_WPMR = AFEC_WPMR_WPEN | AFEC_WPMR_WPKEY_PASSWD;
 492:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	} else {
 493:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		afec->AFEC_WPMR = AFEC_WPMR_WPKEY_PASSWD;
 494:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	}
 495:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** }
 496:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 497:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /**
 498:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \brief Indicate write protect status.
 499:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
 500:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 501:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
 502:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \return 0 if no write protect violation occurred, or 16-bit write protect
 503:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * violation source.
 504:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  */
 505:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** static inline uint32_t afec_get_writeprotect_status(Afec *const afec)
 506:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** {
 507:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	uint32_t reg_value;
 508:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 509:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	reg_value = afec->AFEC_WPSR;
 510:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	if (reg_value & AFEC_WPSR_WPVS) {
 511:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		return (reg_value & AFEC_WPSR_WPVSRC_Msk) >> AFEC_WPSR_WPVSRC_Pos;
 512:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	} else {
 513:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		return 0;
 514:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	}
 515:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** }
 516:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 517:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /**
 518:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \brief Get AFEC overrun error status.
 519:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
 520:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 521:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
 522:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \return AFEC overrun error status.
 523:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  */
 524:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** static inline uint32_t afec_get_overrun_status(Afec *const afec)
 525:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** {
 526:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	return afec->AFEC_OVER;
 527:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** }
 528:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 529:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /**
 530:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \brief Start analog-to-digital conversion.
 531:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
 532:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \note If one of the hardware event is selected as AFEC trigger,
 533:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * this function can NOT start analog to digital conversion.
 534:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
 535:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 536:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  */
 537:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** static inline void afec_start_software_conversion(Afec *const afec)
 538:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** {
 539:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	afec->AFEC_CR = AFEC_CR_START;
 540:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** }
 541:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 542:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** void afec_set_power_mode(Afec *const afec,
 543:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		const enum afec_power_mode mode);
 544:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 545:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /**
 546:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \brief Enable the specified AFEC channel.
ARM GAS  /tmp/ccqdRJW7.s 			page 13


 547:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
 548:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 549:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \param afec_ch AFEC channel number.
 550:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  */
 551:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** static inline void afec_channel_enable(Afec *const afec,
 552:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		const enum afec_channel_num afec_ch)
 553:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** {
 554:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	if (afec_ch != AFEC_CHANNEL_ALL) {
 555:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		afec_ch_sanity_check(afec, afec_ch);
 556:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	}
 557:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 558:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	afec->AFEC_CHER = (afec_ch == AFEC_CHANNEL_ALL) ?
 559:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 			AFEC_CHANNEL_ALL : 1 << afec_ch;
 560:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** }
 561:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 562:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /**
 563:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \brief Disable the specified AFEC channel.
 564:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
 565:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 566:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \param afec_ch AFEC channel number.
 567:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  */
 568:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** static inline void afec_channel_disable(Afec *const afec,
 569:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		const enum afec_channel_num afec_ch)
 570:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** {
 571:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	if (afec_ch != AFEC_CHANNEL_ALL) {
 572:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		afec_ch_sanity_check(afec, afec_ch);
 573:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	}
 574:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 575:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	afec->AFEC_CHDR = (afec_ch == AFEC_CHANNEL_ALL) ?
 576:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 			AFEC_CHANNEL_ALL : 1 << afec_ch;
 577:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** }
 578:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 579:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /**
 580:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \brief Get the AFEC channel status.
 581:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
 582:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 583:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \param afec_ch AFEC channel number.
 584:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
 585:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \retval 1 if channel is enabled.
 586:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \retval 0 if channel is disabled.
 587:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  */
 588:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** static inline uint32_t afec_channel_get_status(Afec *const afec,
 589:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		const enum afec_channel_num afec_ch)
 590:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** {
 591:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	afec_ch_sanity_check(afec, afec_ch);
 592:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 593:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	return afec->AFEC_CHSR & (1 << afec_ch);
 594:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** }
 595:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 596:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /**
 597:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \brief Read the Converted Data of the selected channel.
 598:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
 599:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 600:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \param afec_ch AFEC channel number.
 601:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
 602:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \return AFEC converted value of the selected channel.
 603:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  */
ARM GAS  /tmp/ccqdRJW7.s 			page 14


 604:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** static inline uint32_t afec_channel_get_value(Afec *const afec,
 605:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		enum afec_channel_num afec_ch)
 606:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** {
 607:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	afec_ch_sanity_check(afec, afec_ch);
 608:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 609:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	afec->AFEC_CSELR = afec_ch;
 610:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	return afec->AFEC_CDR;
 611:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** }
 612:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 613:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /**
 614:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \brief Set analog offset to be used for channel CSEL.
 615:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
 616:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 617:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \param afec_ch AFEC channel number.
 618:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \param aoffset  Analog offset value.
 619:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  */
 620:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** static inline void afec_channel_set_analog_offset(Afec *const afec,
 621:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		enum afec_channel_num afec_ch, uint16_t aoffset)
 622:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** {
 623:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	afec_ch_sanity_check(afec, afec_ch);
 624:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 625:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	afec->AFEC_CSELR = afec_ch;
 626:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	afec->AFEC_COCR = (aoffset & AFEC_COCR_AOFF_Msk);
 627:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** }
 628:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 629:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /**
 630:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \brief Get the Last Data Converted.
 631:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
 632:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 633:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
 634:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \return AFEC latest converted value.
 635:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  */
 636:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** static inline uint32_t afec_get_latest_value(Afec *const afec)
 637:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** {
 638:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	return afec->AFEC_LCDR & AFEC_LCDR_LDATA_Msk;
  62              		.loc 2 638 0
  63 001a 236A     		ldr	r3, [r4, #32]
  64              	.LVL4:
  65              	.L3:
  66              	.LBE65:
  67              	.LBE64:
  68              		.loc 1 75 0
  69 001c 6946     		mov	r1, sp
  70 001e 1048     		ldr	r0, .L10
  71 0020 FFF7FEFF 		bl	afec_init
  72              	.LVL5:
  73 0024 0028     		cmp	r0, #0
  74 0026 F8D1     		bne	.L6
  76:../cores/arduino/AnalogIn.cpp **** 	{
  77:../cores/arduino/AnalogIn.cpp **** 		(void)afec_get_latest_value(AFEC0);
  78:../cores/arduino/AnalogIn.cpp **** 	}
  79:../cores/arduino/AnalogIn.cpp **** 	while (afec_init(AFEC1, &cfg) != STATUS_OK)
  75              		.loc 1 79 0
  76 0028 0E4C     		ldr	r4, .L10+4
  77 002a 00E0     		b	.L2
  78              	.LVL6:
  79              	.L9:
ARM GAS  /tmp/ccqdRJW7.s 			page 15


  80              	.LBB66:
  81              	.LBB67:
  82              		.loc 2 638 0
  83 002c 236A     		ldr	r3, [r4, #32]
  84              	.LVL7:
  85              	.L2:
  86              	.LBE67:
  87              	.LBE66:
  88              		.loc 1 79 0
  89 002e 6946     		mov	r1, sp
  90 0030 0C48     		ldr	r0, .L10+4
  91 0032 FFF7FEFF 		bl	afec_init
  92              	.LVL8:
  93 0036 0028     		cmp	r0, #0
  94 0038 F8D1     		bne	.L9
  80:../cores/arduino/AnalogIn.cpp **** 	{
  81:../cores/arduino/AnalogIn.cpp **** 		(void)afec_get_latest_value(AFEC1);
  82:../cores/arduino/AnalogIn.cpp **** 	}
  83:../cores/arduino/AnalogIn.cpp **** 	afec_disable_interrupt(AFEC0, AFEC_INTERRUPT_ALL);
  95              		.loc 1 83 0
  96 003a 094D     		ldr	r5, .L10
  97 003c 0A49     		ldr	r1, .L10+8
  98 003e 2846     		mov	r0, r5
  99 0040 FFF7FEFF 		bl	afec_disable_interrupt
 100              	.LVL9:
  84:../cores/arduino/AnalogIn.cpp **** 	afec_disable_interrupt(AFEC1, AFEC_INTERRUPT_ALL);
 101              		.loc 1 84 0
 102 0044 0849     		ldr	r1, .L10+8
 103 0046 0748     		ldr	r0, .L10+4
 104 0048 FFF7FEFF 		bl	afec_disable_interrupt
 105              	.LVL10:
 106              	.LBB68:
 107              	.LBB69:
 419:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 108              		.loc 2 419 0
 109 004c 6B68     		ldr	r3, [r5, #4]
 110              	.LVL11:
 424:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		reg |= trigger;
 111              		.loc 2 424 0
 112 004e 23F08F03 		bic	r3, r3, #143
 113              	.LVL12:
 428:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** }
 114              		.loc 2 428 0
 115 0052 6B60     		str	r3, [r5, #4]
 116              	.LVL13:
 117              	.LBE69:
 118              	.LBE68:
 119              	.LBB70:
 120              	.LBB71:
 419:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 121              		.loc 2 419 0
 122 0054 6368     		ldr	r3, [r4, #4]
 123              	.LVL14:
 424:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		reg |= trigger;
 124              		.loc 2 424 0
 125 0056 23F08F03 		bic	r3, r3, #143
 126              	.LVL15:
ARM GAS  /tmp/ccqdRJW7.s 			page 16


 428:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** }
 127              		.loc 2 428 0
 128 005a 6360     		str	r3, [r4, #4]
 129              	.LVL16:
 130              	.LBE71:
 131              	.LBE70:
  85:../cores/arduino/AnalogIn.cpp **** 	afec_set_trigger(AFEC0, AFEC_TRIG_SW);
  86:../cores/arduino/AnalogIn.cpp **** 	afec_set_trigger(AFEC1, AFEC_TRIG_SW);
  87:../cores/arduino/AnalogIn.cpp **** #endif
  88:../cores/arduino/AnalogIn.cpp **** }
 132              		.loc 1 88 0
 133 005c 07B0     		add	sp, sp, #28
 134              		.cfi_def_cfa_offset 12
 135              		@ sp needed
 136 005e 30BD     		pop	{r4, r5, pc}
 137              	.L11:
 138              		.align	2
 139              	.L10:
 140 0060 00C00340 		.word	1073987584
 141 0064 00400640 		.word	1074151424
 142 0068 FF0F0047 		.word	1191186431
 143              		.cfi_endproc
 144              	.LFE527:
 145              		.size	_Z12AnalogInInitv, .-_Z12AnalogInInitv
 146              		.section	.text._Z21AnalogInEnableChannel19AnalogChannelNumberb,"ax",%progbits
 147              		.align	1
 148              		.p2align 2,,3
 149              		.global	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 150              		.syntax unified
 151              		.thumb
 152              		.thumb_func
 153              		.fpu fpv5-d16
 154              		.type	_Z21AnalogInEnableChannel19AnalogChannelNumberb, %function
 155              	_Z21AnalogInEnableChannel19AnalogChannelNumberb:
 156              	.LFB528:
  89:../cores/arduino/AnalogIn.cpp **** 
  90:../cores/arduino/AnalogIn.cpp **** // Enable or disable a channel. Use AnalogCheckReady to make sure the ADC is ready before calling t
  91:../cores/arduino/AnalogIn.cpp **** void AnalogInEnableChannel(AnalogChannelNumber channel, bool enable)
  92:../cores/arduino/AnalogIn.cpp **** {
 157              		.loc 1 92 0
 158              		.cfi_startproc
 159              		@ args = 0, pretend = 0, frame = 8
 160              		@ frame_needed = 0, uses_anonymous_args = 0
 161              	.LVL17:
 162              	.LBB72:
  93:../cores/arduino/AnalogIn.cpp **** 	if ((unsigned int)channel < NumChannels)
 163              		.loc 1 93 0
 164 0000 1A28     		cmp	r0, #26
 165 0002 16D8     		bhi	.L20
 166              	.LBE72:
  92:../cores/arduino/AnalogIn.cpp **** 	if ((unsigned int)channel < NumChannels)
 167              		.loc 1 92 0
 168 0004 F0B5     		push	{r4, r5, r6, r7, lr}
 169              		.cfi_def_cfa_offset 20
 170              		.cfi_offset 4, -20
 171              		.cfi_offset 5, -16
 172              		.cfi_offset 6, -12
ARM GAS  /tmp/ccqdRJW7.s 			page 17


 173              		.cfi_offset 7, -8
 174              		.cfi_offset 14, -4
 175 0006 83B0     		sub	sp, sp, #12
 176              		.cfi_def_cfa_offset 32
 177              	.LBB100:
 178              	.LBB73:
  94:../cores/arduino/AnalogIn.cpp **** 	{
  95:../cores/arduino/AnalogIn.cpp **** 		if (enable)
 179              		.loc 1 95 0
 180 0008 A1B9     		cbnz	r1, .L23
  96:../cores/arduino/AnalogIn.cpp **** 		{
  97:../cores/arduino/AnalogIn.cpp **** 			activeChannels |= (1u << channel);
  98:../cores/arduino/AnalogIn.cpp **** #if SAM3XA || SAM4S
  99:../cores/arduino/AnalogIn.cpp **** 			adc_enable_channel(ADC, GetAdcChannel(channel));
 100:../cores/arduino/AnalogIn.cpp **** #if SAM4S
 101:../cores/arduino/AnalogIn.cpp **** 			adc_set_calibmode(ADC);										// auto calibrate at start of next sequence
 102:../cores/arduino/AnalogIn.cpp **** #endif
 103:../cores/arduino/AnalogIn.cpp **** 			if (GetAdcChannel(channel) == ADC_TEMPERATURE_SENSOR)
 104:../cores/arduino/AnalogIn.cpp **** 			{
 105:../cores/arduino/AnalogIn.cpp **** 				adc_enable_ts(ADC);
 106:../cores/arduino/AnalogIn.cpp **** 			}
 107:../cores/arduino/AnalogIn.cpp **** #elif SAM4E || SAME70
 108:../cores/arduino/AnalogIn.cpp **** 			afec_ch_config cfg;
 109:../cores/arduino/AnalogIn.cpp **** 			afec_ch_get_config_defaults(&cfg);
 110:../cores/arduino/AnalogIn.cpp **** 			afec_ch_set_config(GetAfec(channel), GetAfecChannel(channel), &cfg);
 111:../cores/arduino/AnalogIn.cpp **** 			afec_channel_set_analog_offset(GetAfec(channel), GetAfecChannel(channel), 2048);	// need this to
 112:../cores/arduino/AnalogIn.cpp **** 			afec_channel_enable(GetAfec(channel), GetAfecChannel(channel));
 113:../cores/arduino/AnalogIn.cpp **** #if SAM4E
 114:../cores/arduino/AnalogIn.cpp **** 			afec_start_calibration(GetAfec(channel));					// do automatic calibration
 115:../cores/arduino/AnalogIn.cpp **** #endif
 116:../cores/arduino/AnalogIn.cpp **** #endif
 117:../cores/arduino/AnalogIn.cpp **** 		}
 118:../cores/arduino/AnalogIn.cpp **** 		else
 119:../cores/arduino/AnalogIn.cpp **** 		{
 120:../cores/arduino/AnalogIn.cpp **** 			activeChannels &= ~(1u << channel);
 181              		.loc 1 120 0
 182 000a 1A4C     		ldr	r4, .L24
 183 000c 0123     		movs	r3, #1
 184              	.LBB74:
 185              	.LBB75:
 576:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** }
 186              		.loc 2 576 0
 187 000e 00F00F07 		and	r7, r0, #15
 188              	.LBE75:
 189              	.LBE74:
 190              	.LBB78:
 191              	.LBB79:
  45:../cores/arduino/AnalogIn.cpp **** }
 192              		.loc 1 45 0
 193 0012 194A     		ldr	r2, .L24+4
 194              	.LBE79:
 195              	.LBE78:
 196              		.loc 1 120 0
 197 0014 03FA00F6 		lsl	r6, r3, r0
 198 0018 2168     		ldr	r1, [r4]
 199              	.LVL18:
 200              	.LBB82:
ARM GAS  /tmp/ccqdRJW7.s 			page 18


 201              	.LBB80:
  45:../cores/arduino/AnalogIn.cpp **** }
 202              		.loc 1 45 0
 203 001a 184D     		ldr	r5, .L24+8
 204              	.LBE80:
 205              	.LBE82:
 206              	.LBB83:
 207              	.LBB76:
 576:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** }
 208              		.loc 2 576 0
 209 001c BB40     		lsls	r3, r3, r7
 210              	.LBE76:
 211              	.LBE83:
 212              		.loc 1 120 0
 213 001e 21EA0601 		bic	r1, r1, r6
 214              	.LBB84:
 215              	.LBB81:
  45:../cores/arduino/AnalogIn.cpp **** }
 216              		.loc 1 45 0
 217 0022 0F28     		cmp	r0, #15
 218 0024 CCBF     		ite	gt
 219 0026 1046     		movgt	r0, r2
 220 0028 2846     		movle	r0, r5
 221              	.LVL19:
 222              	.LBE81:
 223              	.LBE84:
 224              		.loc 1 120 0
 225 002a 2160     		str	r1, [r4]
 226              	.LBB85:
 227              	.LBB77:
 575:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 			AFEC_CHANNEL_ALL : 1 << afec_ch;
 228              		.loc 2 575 0
 229 002c 8361     		str	r3, [r0, #24]
 230              	.LBE77:
 231              	.LBE85:
 232              	.LBE73:
 233              	.LBE100:
 121:../cores/arduino/AnalogIn.cpp **** #if SAM3XA || SAM4S
 122:../cores/arduino/AnalogIn.cpp **** 			adc_disable_channel(ADC, GetAdcChannel(channel));
 123:../cores/arduino/AnalogIn.cpp **** 			if (GetAdcChannel(channel) == ADC_TEMPERATURE_SENSOR)
 124:../cores/arduino/AnalogIn.cpp **** 			{
 125:../cores/arduino/AnalogIn.cpp **** 				adc_disable_ts(ADC);
 126:../cores/arduino/AnalogIn.cpp **** 			}
 127:../cores/arduino/AnalogIn.cpp **** #elif SAM4E || SAME70
 128:../cores/arduino/AnalogIn.cpp **** 			afec_channel_disable(GetAfec(channel), GetAfecChannel(channel));
 129:../cores/arduino/AnalogIn.cpp **** #endif
 130:../cores/arduino/AnalogIn.cpp **** 		}
 131:../cores/arduino/AnalogIn.cpp **** 	}
 132:../cores/arduino/AnalogIn.cpp **** }
 234              		.loc 1 132 0
 235 002e 03B0     		add	sp, sp, #12
 236              		.cfi_def_cfa_offset 20
 237              		@ sp needed
 238 0030 F0BD     		pop	{r4, r5, r6, r7, pc}
 239              	.LVL20:
 240              	.L20:
 241              		.cfi_def_cfa_offset 0
ARM GAS  /tmp/ccqdRJW7.s 			page 19


 242              		.cfi_restore 4
 243              		.cfi_restore 5
 244              		.cfi_restore 6
 245              		.cfi_restore 7
 246              		.cfi_restore 14
 247 0032 7047     		bx	lr
 248              	.L23:
 249              		.cfi_def_cfa_offset 32
 250              		.cfi_offset 4, -20
 251              		.cfi_offset 5, -16
 252              		.cfi_offset 6, -12
 253              		.cfi_offset 7, -8
 254              		.cfi_offset 14, -4
 255              	.LBB101:
 256              	.LBB99:
 257              	.LBB86:
  97:../cores/arduino/AnalogIn.cpp **** #if SAM3XA || SAM4S
 258              		.loc 1 97 0
 259 0034 0F4A     		ldr	r2, .L24
 260 0036 0125     		movs	r5, #1
 261 0038 00F00F06 		and	r6, r0, #15
 262 003c 0446     		mov	r4, r0
 263 003e 1168     		ldr	r1, [r2]
 264              	.LVL21:
 265 0040 05FA00F3 		lsl	r3, r5, r0
 109:../cores/arduino/AnalogIn.cpp **** 			afec_ch_set_config(GetAfec(channel), GetAfecChannel(channel), &cfg);
 266              		.loc 1 109 0
 267 0044 01A8     		add	r0, sp, #4
 268              	.LVL22:
 269              	.LBB87:
 270              	.LBB88:
 559:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** }
 271              		.loc 2 559 0
 272 0046 B540     		lsls	r5, r5, r6
 273              	.LBE88:
 274              	.LBE87:
  97:../cores/arduino/AnalogIn.cpp **** #if SAM3XA || SAM4S
 275              		.loc 1 97 0
 276 0048 0B43     		orrs	r3, r3, r1
 277 004a 1360     		str	r3, [r2]
 109:../cores/arduino/AnalogIn.cpp **** 			afec_ch_set_config(GetAfec(channel), GetAfecChannel(channel), &cfg);
 278              		.loc 1 109 0
 279 004c FFF7FEFF 		bl	afec_ch_get_config_defaults
 280              	.LVL23:
 281              	.LBB90:
 282              	.LBB91:
  45:../cores/arduino/AnalogIn.cpp **** }
 283              		.loc 1 45 0
 284 0050 0A4B     		ldr	r3, .L24+8
 285              	.LBE91:
 286              	.LBE90:
 110:../cores/arduino/AnalogIn.cpp **** 			afec_channel_set_analog_offset(GetAfec(channel), GetAfecChannel(channel), 2048);	// need this to
 287              		.loc 1 110 0
 288 0052 01AA     		add	r2, sp, #4
 289              	.LBB94:
 290              	.LBB92:
  45:../cores/arduino/AnalogIn.cpp **** }
ARM GAS  /tmp/ccqdRJW7.s 			page 20


 291              		.loc 1 45 0
 292 0054 0848     		ldr	r0, .L24+4
 293              	.LBE92:
 294              	.LBE94:
 110:../cores/arduino/AnalogIn.cpp **** 			afec_channel_set_analog_offset(GetAfec(channel), GetAfecChannel(channel), 2048);	// need this to
 295              		.loc 1 110 0
 296 0056 3146     		mov	r1, r6
 297              	.LBB95:
 298              	.LBB93:
  45:../cores/arduino/AnalogIn.cpp **** }
 299              		.loc 1 45 0
 300 0058 0F2C     		cmp	r4, #15
 301 005a CCBF     		ite	gt
 302 005c 0446     		movgt	r4, r0
 303 005e 1C46     		movle	r4, r3
 304              	.LVL24:
 305              	.LBE93:
 306              	.LBE95:
 110:../cores/arduino/AnalogIn.cpp **** 			afec_channel_set_analog_offset(GetAfec(channel), GetAfecChannel(channel), 2048);	// need this to
 307              		.loc 1 110 0
 308 0060 2046     		mov	r0, r4
 309 0062 FFF7FEFF 		bl	afec_ch_set_config
 310              	.LVL25:
 311              	.LBB96:
 312              	.LBB97:
 626:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** }
 313              		.loc 2 626 0
 314 0066 4FF40063 		mov	r3, #2048
 625:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	afec->AFEC_COCR = (aoffset & AFEC_COCR_AOFF_Msk);
 315              		.loc 2 625 0
 316 006a 6666     		str	r6, [r4, #100]
 626:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** }
 317              		.loc 2 626 0
 318 006c E366     		str	r3, [r4, #108]
 319              	.LVL26:
 320              	.LBE97:
 321              	.LBE96:
 322              	.LBB98:
 323              	.LBB89:
 558:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 			AFEC_CHANNEL_ALL : 1 << afec_ch;
 324              		.loc 2 558 0
 325 006e 6561     		str	r5, [r4, #20]
 326              	.LBE89:
 327              	.LBE98:
 328              	.LBE86:
 329              	.LBE99:
 330              	.LBE101:
 331              		.loc 1 132 0
 332 0070 03B0     		add	sp, sp, #12
 333              		.cfi_def_cfa_offset 20
 334              		@ sp needed
 335 0072 F0BD     		pop	{r4, r5, r6, r7, pc}
 336              	.L25:
 337              		.align	2
 338              	.L24:
 339 0074 00000000 		.word	.LANCHOR0
 340 0078 00400640 		.word	1074151424
ARM GAS  /tmp/ccqdRJW7.s 			page 21


 341 007c 00C00340 		.word	1073987584
 342              		.cfi_endproc
 343              	.LFE528:
 344              		.size	_Z21AnalogInEnableChannel19AnalogChannelNumberb, .-_Z21AnalogInEnableChannel19AnalogChannelN
 345              		.section	.text._Z19AnalogInReadChannel19AnalogChannelNumber,"ax",%progbits
 346              		.align	1
 347              		.p2align 2,,3
 348              		.global	_Z19AnalogInReadChannel19AnalogChannelNumber
 349              		.syntax unified
 350              		.thumb
 351              		.thumb_func
 352              		.fpu fpv5-d16
 353              		.type	_Z19AnalogInReadChannel19AnalogChannelNumber, %function
 354              	_Z19AnalogInReadChannel19AnalogChannelNumber:
 355              	.LFB529:
 133:../cores/arduino/AnalogIn.cpp **** 
 134:../cores/arduino/AnalogIn.cpp **** // Read the most recent 12-bit result from a channel
 135:../cores/arduino/AnalogIn.cpp **** uint16_t AnalogInReadChannel(AnalogChannelNumber channel)
 136:../cores/arduino/AnalogIn.cpp **** {
 356              		.loc 1 136 0
 357              		.cfi_startproc
 358              		@ args = 0, pretend = 0, frame = 0
 359              		@ frame_needed = 0, uses_anonymous_args = 0
 360              		@ link register save eliminated.
 361              	.LVL27:
 362              	.LBB102:
 137:../cores/arduino/AnalogIn.cpp **** 	if ((unsigned int)channel < NumChannels)
 363              		.loc 1 137 0
 364 0000 1A28     		cmp	r0, #26
 365 0002 0BD8     		bhi	.L29
 366              	.LVL28:
 367              	.LBB103:
 368              	.LBB104:
 369              	.LBB105:
  45:../cores/arduino/AnalogIn.cpp **** }
 370              		.loc 1 45 0
 371 0004 064B     		ldr	r3, .L31
 372              	.LBE105:
 373              	.LBE104:
 138:../cores/arduino/AnalogIn.cpp **** 	{
 139:../cores/arduino/AnalogIn.cpp **** #if SAM3XA || SAM4S
 140:../cores/arduino/AnalogIn.cpp **** 		return *(ADC->ADC_CDR + GetAdcChannel(channel));
 141:../cores/arduino/AnalogIn.cpp **** #elif SAM4E || SAME70
 142:../cores/arduino/AnalogIn.cpp **** 		Afec * const afec = GetAfec(channel);
 143:../cores/arduino/AnalogIn.cpp **** 		afec->AFEC_CSELR = GetAfecChannel(channel);
 374              		.loc 1 143 0
 375 0006 00F00F02 		and	r2, r0, #15
 376              	.LBB107:
 377              	.LBB106:
  45:../cores/arduino/AnalogIn.cpp **** }
 378              		.loc 1 45 0
 379 000a 0649     		ldr	r1, .L31+4
 380 000c 0F28     		cmp	r0, #15
 381 000e CCBF     		ite	gt
 382 0010 1846     		movgt	r0, r3
 383 0012 0846     		movle	r0, r1
 384              	.LVL29:
ARM GAS  /tmp/ccqdRJW7.s 			page 22


 385              	.LBE106:
 386              	.LBE107:
 387              		.loc 1 143 0
 388 0014 4266     		str	r2, [r0, #100]
 144:../cores/arduino/AnalogIn.cpp **** 		return afec->AFEC_CDR;
 389              		.loc 1 144 0
 390 0016 806E     		ldr	r0, [r0, #104]
 391 0018 80B2     		uxth	r0, r0
 392 001a 7047     		bx	lr
 393              	.LVL30:
 394              	.L29:
 395              	.LBE103:
 396              	.LBE102:
 145:../cores/arduino/AnalogIn.cpp **** #endif
 146:../cores/arduino/AnalogIn.cpp **** 	}
 147:../cores/arduino/AnalogIn.cpp **** 	return 0;
 397              		.loc 1 147 0
 398 001c 0020     		movs	r0, #0
 399              	.LVL31:
 148:../cores/arduino/AnalogIn.cpp **** }
 400              		.loc 1 148 0
 401 001e 7047     		bx	lr
 402              	.L32:
 403              		.align	2
 404              	.L31:
 405 0020 00400640 		.word	1074151424
 406 0024 00C00340 		.word	1073987584
 407              		.cfi_endproc
 408              	.LFE529:
 409              		.size	_Z19AnalogInReadChannel19AnalogChannelNumber, .-_Z19AnalogInReadChannel19AnalogChannelNumber
 410              		.section	.text._Z23AnalogInStartConversionm,"ax",%progbits
 411              		.align	1
 412              		.p2align 2,,3
 413              		.global	_Z23AnalogInStartConversionm
 414              		.syntax unified
 415              		.thumb
 416              		.thumb_func
 417              		.fpu fpv5-d16
 418              		.type	_Z23AnalogInStartConversionm, %function
 419              	_Z23AnalogInStartConversionm:
 420              	.LFB531:
 149:../cores/arduino/AnalogIn.cpp **** 
 150:../cores/arduino/AnalogIn.cpp **** #if 0	// not currently used
 151:../cores/arduino/AnalogIn.cpp **** 
 152:../cores/arduino/AnalogIn.cpp **** static AnalogCallback_t callbackFn = nullptr;
 153:../cores/arduino/AnalogIn.cpp **** 
 154:../cores/arduino/AnalogIn.cpp **** // Set up a callback for when all conversions have been completed. Returns the previous callback po
 155:../cores/arduino/AnalogIn.cpp **** AnalogCallback_t AnalogInSetCallback(AnalogCallback_t fn)
 156:../cores/arduino/AnalogIn.cpp **** {
 157:../cores/arduino/AnalogIn.cpp **** 	AnalogCallback_t oldFn = fn;
 158:../cores/arduino/AnalogIn.cpp **** 	callbackFn = fn;
 159:../cores/arduino/AnalogIn.cpp **** 	if (fn == nullptr)
 160:../cores/arduino/AnalogIn.cpp **** 	{
 161:../cores/arduino/AnalogIn.cpp **** 		//TODO disable conversions complete interrupt
 162:../cores/arduino/AnalogIn.cpp **** 	}
 163:../cores/arduino/AnalogIn.cpp **** 	else
 164:../cores/arduino/AnalogIn.cpp **** 	{
ARM GAS  /tmp/ccqdRJW7.s 			page 23


 165:../cores/arduino/AnalogIn.cpp **** 		//TODO enable conversions complete interrupt
 166:../cores/arduino/AnalogIn.cpp **** 	}
 167:../cores/arduino/AnalogIn.cpp **** 	return oldFn;
 168:../cores/arduino/AnalogIn.cpp **** }
 169:../cores/arduino/AnalogIn.cpp **** 
 170:../cores/arduino/AnalogIn.cpp **** #endif
 171:../cores/arduino/AnalogIn.cpp **** 
 172:../cores/arduino/AnalogIn.cpp **** #if SAM4E || SAME70
 173:../cores/arduino/AnalogIn.cpp **** 
 174:../cores/arduino/AnalogIn.cpp **** static void StartConversion(Afec *afec)
 175:../cores/arduino/AnalogIn.cpp **** {
 176:../cores/arduino/AnalogIn.cpp **** 	// Clear out any existing conversion complete bits in the status register
 177:../cores/arduino/AnalogIn.cpp **** 	for (uint32_t chan = 0;
 178:../cores/arduino/AnalogIn.cpp **** #if SAM4E
 179:../cores/arduino/AnalogIn.cpp **** 		chan < 16;
 180:../cores/arduino/AnalogIn.cpp **** #elif SAME70
 181:../cores/arduino/AnalogIn.cpp **** 		chan < 12;
 182:../cores/arduino/AnalogIn.cpp **** #endif
 183:../cores/arduino/AnalogIn.cpp **** 			++chan)
 184:../cores/arduino/AnalogIn.cpp **** 	{
 185:../cores/arduino/AnalogIn.cpp **** 		afec->AFEC_CSELR = chan;
 186:../cores/arduino/AnalogIn.cpp **** 		(void) afec->AFEC_CDR;
 187:../cores/arduino/AnalogIn.cpp **** 	}
 188:../cores/arduino/AnalogIn.cpp **** 	afec_start_software_conversion(afec);
 189:../cores/arduino/AnalogIn.cpp **** }
 190:../cores/arduino/AnalogIn.cpp **** 
 191:../cores/arduino/AnalogIn.cpp **** #endif
 192:../cores/arduino/AnalogIn.cpp **** 
 193:../cores/arduino/AnalogIn.cpp **** // Start converting the enabled channels
 194:../cores/arduino/AnalogIn.cpp **** void AnalogInStartConversion(uint32_t channels)
 195:../cores/arduino/AnalogIn.cpp **** {
 421              		.loc 1 195 0
 422              		.cfi_startproc
 423              		@ args = 0, pretend = 0, frame = 0
 424              		@ frame_needed = 0, uses_anonymous_args = 0
 425              		@ link register save eliminated.
 426              	.LVL32:
 196:../cores/arduino/AnalogIn.cpp **** #if SAM3XA || SAM4S
 197:../cores/arduino/AnalogIn.cpp **** 	// Clear out any existing conversion complete bits in the status register
 198:../cores/arduino/AnalogIn.cpp **** 	for (uint32_t chan = 0; chan < 16; ++chan)
 199:../cores/arduino/AnalogIn.cpp **** 	{
 200:../cores/arduino/AnalogIn.cpp **** 		(void)(*(ADC->ADC_CDR + chan));
 201:../cores/arduino/AnalogIn.cpp **** 	}
 202:../cores/arduino/AnalogIn.cpp **** 	ADC->ADC_CR = ADC_CR_START;
 203:../cores/arduino/AnalogIn.cpp **** #elif SAM4E || SAME70
 204:../cores/arduino/AnalogIn.cpp **** 	channels &= activeChannels;
 427              		.loc 1 204 0
 428 0000 0D4B     		ldr	r3, .L46
 429 0002 1B68     		ldr	r3, [r3]
 430 0004 1840     		ands	r0, r0, r3
 431              	.LVL33:
 205:../cores/arduino/AnalogIn.cpp **** 	if ((channels & AfecLowChannelMask) != 0)
 432              		.loc 1 205 0
 433 0006 C0F30B03 		ubfx	r3, r0, #0, #12
 434 000a 43B1     		cbz	r3, .L34
 435 000c 0023     		movs	r3, #0
 436              	.LBB108:
ARM GAS  /tmp/ccqdRJW7.s 			page 24


 437              	.LBB109:
 185:../cores/arduino/AnalogIn.cpp **** 		(void) afec->AFEC_CDR;
 438              		.loc 1 185 0
 439 000e 0B4A     		ldr	r2, .L46+4
 440              	.L35:
 441              	.LVL34:
 442 0010 5366     		str	r3, [r2, #100]
 177:../cores/arduino/AnalogIn.cpp **** #if SAM4E
 443              		.loc 1 177 0
 444 0012 0133     		adds	r3, r3, #1
 445              	.LVL35:
 186:../cores/arduino/AnalogIn.cpp **** 	}
 446              		.loc 1 186 0
 447 0014 916E     		ldr	r1, [r2, #104]
 181:../cores/arduino/AnalogIn.cpp **** #endif
 448              		.loc 1 181 0
 449 0016 0C2B     		cmp	r3, #12
 450 0018 FAD1     		bne	.L35
 451              	.LVL36:
 452              	.LBE109:
 453              	.LBB110:
 454              	.LBB111:
 539:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** }
 455              		.loc 2 539 0
 456 001a 0223     		movs	r3, #2
 457              	.LVL37:
 458 001c 1360     		str	r3, [r2]
 459              	.LVL38:
 460              	.L34:
 461              	.LBE111:
 462              	.LBE110:
 463              	.LBE108:
 206:../cores/arduino/AnalogIn.cpp **** 	{
 207:../cores/arduino/AnalogIn.cpp **** 		StartConversion(AFEC0);
 208:../cores/arduino/AnalogIn.cpp **** 	}
 209:../cores/arduino/AnalogIn.cpp **** 	if ((channels & AfecHighChannelMask) != 0)
 464              		.loc 1 209 0
 465 001e 084B     		ldr	r3, .L46+8
 466 0020 0340     		ands	r3, r3, r0
 467 0022 43B1     		cbz	r3, .L33
 468 0024 0023     		movs	r3, #0
 469              	.LBB112:
 470              	.LBB113:
 185:../cores/arduino/AnalogIn.cpp **** 		(void) afec->AFEC_CDR;
 471              		.loc 1 185 0
 472 0026 074A     		ldr	r2, .L46+12
 473              	.L37:
 474              	.LVL39:
 475 0028 5366     		str	r3, [r2, #100]
 177:../cores/arduino/AnalogIn.cpp **** #if SAM4E
 476              		.loc 1 177 0
 477 002a 0133     		adds	r3, r3, #1
 478              	.LVL40:
 186:../cores/arduino/AnalogIn.cpp **** 	}
 479              		.loc 1 186 0
 480 002c 916E     		ldr	r1, [r2, #104]
 181:../cores/arduino/AnalogIn.cpp **** #endif
ARM GAS  /tmp/ccqdRJW7.s 			page 25


 481              		.loc 1 181 0
 482 002e 0C2B     		cmp	r3, #12
 483 0030 FAD1     		bne	.L37
 484              	.LVL41:
 485              	.LBE113:
 486              	.LBB114:
 487              	.LBB115:
 539:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** }
 488              		.loc 2 539 0
 489 0032 0223     		movs	r3, #2
 490              	.LVL42:
 491 0034 1360     		str	r3, [r2]
 492              	.LVL43:
 493              	.L33:
 494 0036 7047     		bx	lr
 495              	.L47:
 496              		.align	2
 497              	.L46:
 498 0038 00000000 		.word	.LANCHOR0
 499 003c 00C00340 		.word	1073987584
 500 0040 0000FF07 		.word	134152192
 501 0044 00400640 		.word	1074151424
 502              	.LBE115:
 503              	.LBE114:
 504              	.LBE112:
 505              		.cfi_endproc
 506              	.LFE531:
 507              		.size	_Z23AnalogInStartConversionm, .-_Z23AnalogInStartConversionm
 508              		.section	.text._Z18AnalogInCheckReadym,"ax",%progbits
 509              		.align	1
 510              		.p2align 2,,3
 511              		.global	_Z18AnalogInCheckReadym
 512              		.syntax unified
 513              		.thumb
 514              		.thumb_func
 515              		.fpu fpv5-d16
 516              		.type	_Z18AnalogInCheckReadym, %function
 517              	_Z18AnalogInCheckReadym:
 518              	.LFB532:
 210:../cores/arduino/AnalogIn.cpp **** 	{
 211:../cores/arduino/AnalogIn.cpp **** 		StartConversion(AFEC1);
 212:../cores/arduino/AnalogIn.cpp **** 	}
 213:../cores/arduino/AnalogIn.cpp **** #endif
 214:../cores/arduino/AnalogIn.cpp **** }
 215:../cores/arduino/AnalogIn.cpp **** 
 216:../cores/arduino/AnalogIn.cpp **** // Check whether all conversions have been completed since the last call to AnalogStartConversion
 217:../cores/arduino/AnalogIn.cpp **** bool AnalogInCheckReady(uint32_t channels)
 218:../cores/arduino/AnalogIn.cpp **** {
 519              		.loc 1 218 0
 520              		.cfi_startproc
 521              		@ args = 0, pretend = 0, frame = 0
 522              		@ frame_needed = 0, uses_anonymous_args = 0
 523              		@ link register save eliminated.
 524              	.LVL44:
 219:../cores/arduino/AnalogIn.cpp **** #if SAM3XA || SAM4S
 220:../cores/arduino/AnalogIn.cpp **** 	const uint32_t mask = channels & activeChannels;
 221:../cores/arduino/AnalogIn.cpp **** 	return (adc_get_status(ADC) & mask) == mask;
ARM GAS  /tmp/ccqdRJW7.s 			page 26


 222:../cores/arduino/AnalogIn.cpp **** #elif SAM4E || SAME70
 223:../cores/arduino/AnalogIn.cpp **** 	channels &= activeChannels;
 525              		.loc 1 223 0
 526 0000 0A4B     		ldr	r3, .L52
 527              	.LBB116:
 528              	.LBB117:
 639:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** }
 640:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 641:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /**
 642:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \brief Get the Last Converted Channel Number.
 643:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
 644:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 645:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
 646:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \return AFEC Last Converted Channel Number.
 647:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  */
 648:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** static inline uint32_t afec_get_latest_chan_num(Afec *const afec)
 649:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** {
 650:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	return (afec->AFEC_LCDR & AFEC_LCDR_CHNB_Msk) >> AFEC_LCDR_CHNB_Pos;
 651:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** }
 652:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 653:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** void afec_enable_interrupt(Afec *const afec,
 654:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		enum afec_interrupt_source interrupt_source);
 655:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 656:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** void afec_disable_interrupt(Afec *const afec,
 657:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 		enum afec_interrupt_source interrupt_source);
 658:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 
 659:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** /**
 660:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \brief Get AFEC interrupt status.
 661:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
 662:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 663:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  *
 664:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  * \return The interrupt status value.
 665:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h ****  */
 666:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** static inline uint32_t afec_get_interrupt_status(Afec *const afec)
 667:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** {
 668:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/afec/afec.h **** 	return afec->AFEC_ISR;
 529              		.loc 2 668 0
 530 0002 0B4A     		ldr	r2, .L52+4
 531              	.LBE117:
 532              	.LBE116:
 533              		.loc 1 223 0
 534 0004 1B68     		ldr	r3, [r3]
 535              	.LBB119:
 536              	.LBB118:
 537              		.loc 2 668 0
 538 0006 126B     		ldr	r2, [r2, #48]
 539              	.LBE118:
 540              	.LBE119:
 541              		.loc 1 223 0
 542 0008 1840     		ands	r0, r0, r3
 543              	.LVL45:
 224:../cores/arduino/AnalogIn.cpp **** 	const uint32_t afec0Mask = channels & AfecLowChannelMask;
 544              		.loc 1 224 0
 545 000a C0F30B03 		ubfx	r3, r0, #0, #12
 546              	.LVL46:
 225:../cores/arduino/AnalogIn.cpp **** 	const uint32_t afec1Mask = (channels & AfecHighChannelMask) >> 16;
 226:../cores/arduino/AnalogIn.cpp **** 	return (afec_get_interrupt_status(AFEC0) & afec0Mask) == afec0Mask
ARM GAS  /tmp/ccqdRJW7.s 			page 27


 227:../cores/arduino/AnalogIn.cpp **** 		&& (afec_get_interrupt_status(AFEC1) & afec1Mask) == afec1Mask;
 547              		.loc 1 227 0
 548 000e 9343     		bics	r3, r3, r2
 549              	.LVL47:
 550 0010 01D0     		beq	.L51
 551 0012 0020     		movs	r0, #0
 552              	.LVL48:
 228:../cores/arduino/AnalogIn.cpp **** #endif
 229:../cores/arduino/AnalogIn.cpp **** }
 553              		.loc 1 229 0
 554 0014 7047     		bx	lr
 555              	.LVL49:
 556              	.L51:
 557              	.LBB120:
 558              	.LBB121:
 559              		.loc 2 668 0
 560 0016 074B     		ldr	r3, .L52+8
 561              	.LBE121:
 562              	.LBE120:
 225:../cores/arduino/AnalogIn.cpp **** 	const uint32_t afec1Mask = (channels & AfecHighChannelMask) >> 16;
 563              		.loc 1 225 0
 564 0018 C0F30A40 		ubfx	r0, r0, #16, #11
 565              	.LVL50:
 566              	.LBB123:
 567              	.LBB122:
 568              		.loc 2 668 0
 569 001c 1B6B     		ldr	r3, [r3, #48]
 570              	.LVL51:
 571              	.LBE122:
 572              	.LBE123:
 227:../cores/arduino/AnalogIn.cpp **** #endif
 573              		.loc 1 227 0
 574 001e 30EA0303 		bics	r3, r0, r3
 575 0022 0CBF     		ite	eq
 576 0024 0120     		moveq	r0, #1
 577 0026 0020     		movne	r0, #0
 578 0028 7047     		bx	lr
 579              	.L53:
 580 002a 00BF     		.align	2
 581              	.L52:
 582 002c 00000000 		.word	.LANCHOR0
 583 0030 00C00340 		.word	1073987584
 584 0034 00400640 		.word	1074151424
 585              		.cfi_endproc
 586              	.LFE532:
 587              		.size	_Z18AnalogInCheckReadym, .-_Z18AnalogInCheckReadym
 588              		.section	.text._Z15PinToAdcChannelm,"ax",%progbits
 589              		.align	1
 590              		.p2align 2,,3
 591              		.global	_Z15PinToAdcChannelm
 592              		.syntax unified
 593              		.thumb
 594              		.thumb_func
 595              		.fpu fpv5-d16
 596              		.type	_Z15PinToAdcChannelm, %function
 597              	_Z15PinToAdcChannelm:
 598              	.LFB533:
ARM GAS  /tmp/ccqdRJW7.s 			page 28


 230:../cores/arduino/AnalogIn.cpp **** 
 231:../cores/arduino/AnalogIn.cpp **** // Convert an Arduino Due analog pin number to the corresponding ADC channel number
 232:../cores/arduino/AnalogIn.cpp **** AnalogChannelNumber PinToAdcChannel(uint32_t pin)
 233:../cores/arduino/AnalogIn.cpp **** {
 599              		.loc 1 233 0
 600              		.cfi_startproc
 601              		@ args = 0, pretend = 0, frame = 0
 602              		@ frame_needed = 0, uses_anonymous_args = 0
 603              		@ link register save eliminated.
 604              	.LVL52:
 234:../cores/arduino/AnalogIn.cpp **** #if SAM3XA
 235:../cores/arduino/AnalogIn.cpp **** 	// Arduino Due uses separate analog pin numbers
 236:../cores/arduino/AnalogIn.cpp **** 	if (pin < A0)
 237:../cores/arduino/AnalogIn.cpp **** 	{
 238:../cores/arduino/AnalogIn.cpp **** 		pin += A0;
 239:../cores/arduino/AnalogIn.cpp **** 	}
 240:../cores/arduino/AnalogIn.cpp **** #endif
 241:../cores/arduino/AnalogIn.cpp **** 	return g_APinDescription[pin].ulADCChannelNumber;
 605              		.loc 1 241 0
 606 0000 034B     		ldr	r3, .L55
 607 0002 C0EBC000 		rsb	r0, r0, r0, lsl #3
 608              	.LVL53:
 609 0006 03EB8000 		add	r0, r3, r0, lsl #2
 242:../cores/arduino/AnalogIn.cpp **** }
 610              		.loc 1 242 0
 611 000a 90F91800 		ldrsb	r0, [r0, #24]
 612 000e 7047     		bx	lr
 613              	.L56:
 614              		.align	2
 615              	.L55:
 616 0010 00000000 		.word	g_APinDescription
 617              		.cfi_endproc
 618              	.LFE533:
 619              		.size	_Z15PinToAdcChannelm, .-_Z15PinToAdcChannelm
 620              		.section	.text._Z24GetTemperatureAdcChannelv,"ax",%progbits
 621              		.align	1
 622              		.p2align 2,,3
 623              		.global	_Z24GetTemperatureAdcChannelv
 624              		.syntax unified
 625              		.thumb
 626              		.thumb_func
 627              		.fpu fpv5-d16
 628              		.type	_Z24GetTemperatureAdcChannelv, %function
 629              	_Z24GetTemperatureAdcChannelv:
 630              	.LFB534:
 243:../cores/arduino/AnalogIn.cpp **** 
 244:../cores/arduino/AnalogIn.cpp **** // Get the temperature measurement channel
 245:../cores/arduino/AnalogIn.cpp **** AnalogChannelNumber GetTemperatureAdcChannel()
 246:../cores/arduino/AnalogIn.cpp **** {
 631              		.loc 1 246 0
 632              		.cfi_startproc
 633              		@ args = 0, pretend = 0, frame = 0
 634              		@ frame_needed = 0, uses_anonymous_args = 0
 635              		@ link register save eliminated.
 247:../cores/arduino/AnalogIn.cpp **** #if SAM4E || SAME70
 248:../cores/arduino/AnalogIn.cpp **** 	return static_cast<AnalogChannelNumber>(AFEC_TEMPERATURE_SENSOR);		// AFEC0 channel 15 on SAM4E an
 249:../cores/arduino/AnalogIn.cpp **** #elif SAM3XA || SAM4S
ARM GAS  /tmp/ccqdRJW7.s 			page 29


 250:../cores/arduino/AnalogIn.cpp **** 	return static_cast<AnalogChannelNumber>(ADC_TEMPERATURE_SENSOR);
 251:../cores/arduino/AnalogIn.cpp **** #endif
 252:../cores/arduino/AnalogIn.cpp **** }
 636              		.loc 1 252 0
 637 0000 0B20     		movs	r0, #11
 638 0002 7047     		bx	lr
 639              		.cfi_endproc
 640              	.LFE534:
 641              		.size	_Z24GetTemperatureAdcChannelv, .-_Z24GetTemperatureAdcChannelv
 642              		.section	.bss._ZL14activeChannels,"aw",%nobits
 643              		.align	2
 644              		.set	.LANCHOR0,. + 0
 645              		.type	_ZL14activeChannels, %object
 646              		.size	_ZL14activeChannels, 4
 647              	_ZL14activeChannels:
 648 0000 00000000 		.space	4
 649              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 650              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 651              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 652              	_ZL28cpu_irq_prev_interrupt_state:
 653 0000 00       		.space	1
 654              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 655              		.align	2
 656              		.type	_ZL32cpu_irq_critical_section_counter, %object
 657              		.size	_ZL32cpu_irq_critical_section_counter, 4
 658              	_ZL32cpu_irq_critical_section_counter:
 659 0000 00000000 		.space	4
 660              		.text
 661              	.Letext0:
 662              		.file 3 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 663              		.file 4 "/usr/include/newlib/machine/_default_types.h"
 664              		.file 5 "/usr/include/newlib/sys/_stdint.h"
 665              		.file 6 "/usr/include/newlib/stdint.h"
 666              		.file 7 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 667              		.file 8 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 668              		.file 9 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/afec
 669              		.file 10 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/pio
 670              		.file 11 "/usr/include/newlib/sys/lock.h"
 671              		.file 12 "/usr/include/newlib/sys/_types.h"
 672              		.file 13 "/usr/include/newlib/sys/reent.h"
 673              		.file 14 "/usr/include/newlib/c++/6.3.1/cstdlib"
 674              		.file 15 "/usr/include/newlib/c++/6.3.1/cmath"
 675              		.file 16 "/usr/include/newlib/c++/6.3.1/cstdint"
 676              		.file 17 "/usr/include/newlib/c++/6.3.1/cstddef"
 677              		.file 18 "/usr/include/newlib/c++/6.3.1/arm-none-eabi/thumb/v7e-m/fpv5/hard/bits/c++config.h"
 678              		.file 19 "/usr/include/newlib/stdlib.h"
 679              		.file 20 "/usr/include/newlib/c++/6.3.1/stdlib.h"
 680              		.file 21 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 681              		.file 22 "/usr/include/newlib/math.h"
 682              		.file 23 "/usr/include/newlib/c++/6.3.1/math.h"
 683              		.file 24 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/status_codes.h"
 684              		.file 25 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/pio/pio.h"
 685              		.file 26 "../cores/arduino/Core.h"
 686              		.file 27 "/usr/include/newlib/ctype.h"
 687              		.file 28 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/RingBuffer.h"
 688              		.file 29 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h"
 689              		.file 30 "/usr/include/newlib/time.h"
ARM GAS  /tmp/ccqdRJW7.s 			page 30


 690              		.file 31 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/variant.h"
 691              		.file 32 "../cores/arduino/USB/USBSerial.h"
 692              		.file 33 "<built-in>"
 693              		.file 34 "../cores/arduino/Print.h"
 694              		.section	.debug_info,"",%progbits
 695              	.Ldebug_info0:
 696 0000 1B260000 		.4byte	0x261b
 697 0004 0400     		.2byte	0x4
 698 0006 00000000 		.4byte	.Ldebug_abbrev0
 699 000a 04       		.byte	0x4
 700 000b 01       		.uleb128 0x1
 701 000c F90D0000 		.4byte	.LASF583
 702 0010 04       		.byte	0x4
 703 0011 92150000 		.4byte	.LASF584
 704 0015 99040000 		.4byte	.LASF585
 705 0019 C0000000 		.4byte	.Ldebug_ranges0+0xc0
 706 001d 00000000 		.4byte	0
 707 0021 00000000 		.4byte	.Ldebug_line0
 708 0025 02       		.uleb128 0x2
 709 0026 04       		.byte	0x4
 710 0027 05       		.byte	0x5
 711 0028 696E7400 		.ascii	"int\000"
 712 002c 03       		.uleb128 0x3
 713 002d 11090000 		.4byte	.LASF5
 714 0031 03       		.byte	0x3
 715 0032 D8       		.byte	0xd8
 716 0033 3C000000 		.4byte	0x3c
 717 0037 04       		.uleb128 0x4
 718 0038 2C000000 		.4byte	0x2c
 719 003c 05       		.uleb128 0x5
 720 003d 04       		.byte	0x4
 721 003e 07       		.byte	0x7
 722 003f 011C0000 		.4byte	.LASF0
 723 0043 04       		.uleb128 0x4
 724 0044 3C000000 		.4byte	0x3c
 725 0048 06       		.uleb128 0x6
 726 0049 10       		.byte	0x10
 727 004a 03       		.byte	0x3
 728 004b AA01     		.2byte	0x1aa
 729 004d 75030000 		.4byte	.LASF586
 730 0051 70000000 		.4byte	0x70
 731 0055 07       		.uleb128 0x7
 732 0056 05030000 		.4byte	.LASF1
 733 005a 03       		.byte	0x3
 734 005b AB01     		.2byte	0x1ab
 735 005d 70000000 		.4byte	0x70
 736 0061 00       		.byte	0
 737 0062 07       		.uleb128 0x7
 738 0063 EC020000 		.4byte	.LASF2
 739 0067 03       		.byte	0x3
 740 0068 AC01     		.2byte	0x1ac
 741 006a 77000000 		.4byte	0x77
 742 006e 08       		.byte	0x8
 743 006f 00       		.byte	0
 744 0070 05       		.uleb128 0x5
 745 0071 08       		.byte	0x8
 746 0072 05       		.byte	0x5
ARM GAS  /tmp/ccqdRJW7.s 			page 31


 747 0073 80190000 		.4byte	.LASF3
 748 0077 05       		.uleb128 0x5
 749 0078 08       		.byte	0x8
 750 0079 04       		.byte	0x4
 751 007a CA110000 		.4byte	.LASF4
 752 007e 08       		.uleb128 0x8
 753 007f 6E0D0000 		.4byte	.LASF6
 754 0083 03       		.byte	0x3
 755 0084 AD01     		.2byte	0x1ad
 756 0086 48000000 		.4byte	0x48
 757 008a 09       		.uleb128 0x9
 758 008b 730B0000 		.4byte	.LASF587
 759 008f 03       		.uleb128 0x3
 760 0090 111B0000 		.4byte	.LASF7
 761 0094 04       		.byte	0x4
 762 0095 1B       		.byte	0x1b
 763 0096 9A000000 		.4byte	0x9a
 764 009a 05       		.uleb128 0x5
 765 009b 01       		.byte	0x1
 766 009c 06       		.byte	0x6
 767 009d D60D0000 		.4byte	.LASF8
 768 00a1 03       		.uleb128 0x3
 769 00a2 A4000000 		.4byte	.LASF9
 770 00a6 04       		.byte	0x4
 771 00a7 1D       		.byte	0x1d
 772 00a8 AC000000 		.4byte	0xac
 773 00ac 05       		.uleb128 0x5
 774 00ad 01       		.byte	0x1
 775 00ae 08       		.byte	0x8
 776 00af 55060000 		.4byte	.LASF10
 777 00b3 03       		.uleb128 0x3
 778 00b4 38050000 		.4byte	.LASF11
 779 00b8 04       		.byte	0x4
 780 00b9 29       		.byte	0x29
 781 00ba BE000000 		.4byte	0xbe
 782 00be 05       		.uleb128 0x5
 783 00bf 02       		.byte	0x2
 784 00c0 05       		.byte	0x5
 785 00c1 591C0000 		.4byte	.LASF12
 786 00c5 03       		.uleb128 0x3
 787 00c6 42050000 		.4byte	.LASF13
 788 00ca 04       		.byte	0x4
 789 00cb 2B       		.byte	0x2b
 790 00cc D0000000 		.4byte	0xd0
 791 00d0 05       		.uleb128 0x5
 792 00d1 02       		.byte	0x2
 793 00d2 07       		.byte	0x7
 794 00d3 C30D0000 		.4byte	.LASF14
 795 00d7 03       		.uleb128 0x3
 796 00d8 C4150000 		.4byte	.LASF15
 797 00dc 04       		.byte	0x4
 798 00dd 3F       		.byte	0x3f
 799 00de E2000000 		.4byte	0xe2
 800 00e2 05       		.uleb128 0x5
 801 00e3 04       		.byte	0x4
 802 00e4 05       		.byte	0x5
 803 00e5 49100000 		.4byte	.LASF16
ARM GAS  /tmp/ccqdRJW7.s 			page 32


 804 00e9 03       		.uleb128 0x3
 805 00ea CE150000 		.4byte	.LASF17
 806 00ee 04       		.byte	0x4
 807 00ef 41       		.byte	0x41
 808 00f0 F4000000 		.4byte	0xf4
 809 00f4 05       		.uleb128 0x5
 810 00f5 04       		.byte	0x4
 811 00f6 07       		.byte	0x7
 812 00f7 2E120000 		.4byte	.LASF18
 813 00fb 03       		.uleb128 0x3
 814 00fc ED0A0000 		.4byte	.LASF19
 815 0100 04       		.byte	0x4
 816 0101 59       		.byte	0x59
 817 0102 70000000 		.4byte	0x70
 818 0106 03       		.uleb128 0x3
 819 0107 F70A0000 		.4byte	.LASF20
 820 010b 04       		.byte	0x4
 821 010c 5B       		.byte	0x5b
 822 010d 11010000 		.4byte	0x111
 823 0111 05       		.uleb128 0x5
 824 0112 08       		.byte	0x8
 825 0113 07       		.byte	0x7
 826 0114 BE160000 		.4byte	.LASF21
 827 0118 03       		.uleb128 0x3
 828 0119 D6070000 		.4byte	.LASF22
 829 011d 04       		.byte	0x4
 830 011e 78       		.byte	0x78
 831 011f 9A000000 		.4byte	0x9a
 832 0123 03       		.uleb128 0x3
 833 0124 90100000 		.4byte	.LASF23
 834 0128 04       		.byte	0x4
 835 0129 7A       		.byte	0x7a
 836 012a AC000000 		.4byte	0xac
 837 012e 03       		.uleb128 0x3
 838 012f DF150000 		.4byte	.LASF24
 839 0133 04       		.byte	0x4
 840 0134 92       		.byte	0x92
 841 0135 BE000000 		.4byte	0xbe
 842 0139 03       		.uleb128 0x3
 843 013a 020F0000 		.4byte	.LASF25
 844 013e 04       		.byte	0x4
 845 013f 94       		.byte	0x94
 846 0140 D0000000 		.4byte	0xd0
 847 0144 03       		.uleb128 0x3
 848 0145 97090000 		.4byte	.LASF26
 849 0149 04       		.byte	0x4
 850 014a A8       		.byte	0xa8
 851 014b E2000000 		.4byte	0xe2
 852 014f 03       		.uleb128 0x3
 853 0150 9A030000 		.4byte	.LASF27
 854 0154 04       		.byte	0x4
 855 0155 AA       		.byte	0xaa
 856 0156 F4000000 		.4byte	0xf4
 857 015a 03       		.uleb128 0x3
 858 015b 31000000 		.4byte	.LASF28
 859 015f 04       		.byte	0x4
 860 0160 BA       		.byte	0xba
ARM GAS  /tmp/ccqdRJW7.s 			page 33


 861 0161 70000000 		.4byte	0x70
 862 0165 03       		.uleb128 0x3
 863 0166 15000000 		.4byte	.LASF29
 864 016a 04       		.byte	0x4
 865 016b BC       		.byte	0xbc
 866 016c 11010000 		.4byte	0x111
 867 0170 03       		.uleb128 0x3
 868 0171 8F050000 		.4byte	.LASF30
 869 0175 04       		.byte	0x4
 870 0176 C8       		.byte	0xc8
 871 0177 25000000 		.4byte	0x25
 872 017b 03       		.uleb128 0x3
 873 017c FB120000 		.4byte	.LASF31
 874 0180 04       		.byte	0x4
 875 0181 CA       		.byte	0xca
 876 0182 3C000000 		.4byte	0x3c
 877 0186 03       		.uleb128 0x3
 878 0187 DF0C0000 		.4byte	.LASF32
 879 018b 05       		.byte	0x5
 880 018c 14       		.byte	0x14
 881 018d 8F000000 		.4byte	0x8f
 882 0191 03       		.uleb128 0x3
 883 0192 41090000 		.4byte	.LASF33
 884 0196 05       		.byte	0x5
 885 0197 18       		.byte	0x18
 886 0198 A1000000 		.4byte	0xa1
 887 019c 04       		.uleb128 0x4
 888 019d 91010000 		.4byte	0x191
 889 01a1 03       		.uleb128 0x3
 890 01a2 B40D0000 		.4byte	.LASF34
 891 01a6 05       		.byte	0x5
 892 01a7 20       		.byte	0x20
 893 01a8 B3000000 		.4byte	0xb3
 894 01ac 03       		.uleb128 0x3
 895 01ad 80010000 		.4byte	.LASF35
 896 01b1 05       		.byte	0x5
 897 01b2 24       		.byte	0x24
 898 01b3 C5000000 		.4byte	0xc5
 899 01b7 03       		.uleb128 0x3
 900 01b8 4D030000 		.4byte	.LASF36
 901 01bc 05       		.byte	0x5
 902 01bd 2C       		.byte	0x2c
 903 01be D7000000 		.4byte	0xd7
 904 01c2 0A       		.uleb128 0xa
 905 01c3 B7010000 		.4byte	0x1b7
 906 01c7 03       		.uleb128 0x3
 907 01c8 0E110000 		.4byte	.LASF37
 908 01cc 05       		.byte	0x5
 909 01cd 30       		.byte	0x30
 910 01ce E9000000 		.4byte	0xe9
 911 01d2 0A       		.uleb128 0xa
 912 01d3 C7010000 		.4byte	0x1c7
 913 01d7 04       		.uleb128 0x4
 914 01d8 C7010000 		.4byte	0x1c7
 915 01dc 03       		.uleb128 0x3
 916 01dd CD140000 		.4byte	.LASF38
 917 01e1 05       		.byte	0x5
ARM GAS  /tmp/ccqdRJW7.s 			page 34


 918 01e2 38       		.byte	0x38
 919 01e3 FB000000 		.4byte	0xfb
 920 01e7 03       		.uleb128 0x3
 921 01e8 08070000 		.4byte	.LASF39
 922 01ec 05       		.byte	0x5
 923 01ed 3C       		.byte	0x3c
 924 01ee 06010000 		.4byte	0x106
 925 01f2 03       		.uleb128 0x3
 926 01f3 FC100000 		.4byte	.LASF40
 927 01f7 05       		.byte	0x5
 928 01f8 43       		.byte	0x43
 929 01f9 70010000 		.4byte	0x170
 930 01fd 03       		.uleb128 0x3
 931 01fe 50110000 		.4byte	.LASF41
 932 0202 05       		.byte	0x5
 933 0203 48       		.byte	0x48
 934 0204 7B010000 		.4byte	0x17b
 935 0208 03       		.uleb128 0x3
 936 0209 52040000 		.4byte	.LASF42
 937 020d 06       		.byte	0x6
 938 020e 15       		.byte	0x15
 939 020f 18010000 		.4byte	0x118
 940 0213 03       		.uleb128 0x3
 941 0214 02150000 		.4byte	.LASF43
 942 0218 06       		.byte	0x6
 943 0219 16       		.byte	0x16
 944 021a 23010000 		.4byte	0x123
 945 021e 03       		.uleb128 0x3
 946 021f F4190000 		.4byte	.LASF44
 947 0223 06       		.byte	0x6
 948 0224 1B       		.byte	0x1b
 949 0225 2E010000 		.4byte	0x12e
 950 0229 03       		.uleb128 0x3
 951 022a A7120000 		.4byte	.LASF45
 952 022e 06       		.byte	0x6
 953 022f 1C       		.byte	0x1c
 954 0230 39010000 		.4byte	0x139
 955 0234 03       		.uleb128 0x3
 956 0235 050D0000 		.4byte	.LASF46
 957 0239 06       		.byte	0x6
 958 023a 21       		.byte	0x21
 959 023b 44010000 		.4byte	0x144
 960 023f 03       		.uleb128 0x3
 961 0240 A0060000 		.4byte	.LASF47
 962 0244 06       		.byte	0x6
 963 0245 22       		.byte	0x22
 964 0246 4F010000 		.4byte	0x14f
 965 024a 03       		.uleb128 0x3
 966 024b C6030000 		.4byte	.LASF48
 967 024f 06       		.byte	0x6
 968 0250 27       		.byte	0x27
 969 0251 5A010000 		.4byte	0x15a
 970 0255 03       		.uleb128 0x3
 971 0256 240B0000 		.4byte	.LASF49
 972 025a 06       		.byte	0x6
 973 025b 28       		.byte	0x28
 974 025c 65010000 		.4byte	0x165
ARM GAS  /tmp/ccqdRJW7.s 			page 35


 975 0260 03       		.uleb128 0x3
 976 0261 16180000 		.4byte	.LASF50
 977 0265 06       		.byte	0x6
 978 0266 33       		.byte	0x33
 979 0267 25000000 		.4byte	0x25
 980 026b 03       		.uleb128 0x3
 981 026c 381C0000 		.4byte	.LASF51
 982 0270 06       		.byte	0x6
 983 0271 34       		.byte	0x34
 984 0272 3C000000 		.4byte	0x3c
 985 0276 03       		.uleb128 0x3
 986 0277 900C0000 		.4byte	.LASF52
 987 027b 06       		.byte	0x6
 988 027c 3D       		.byte	0x3d
 989 027d 25000000 		.4byte	0x25
 990 0281 03       		.uleb128 0x3
 991 0282 F70C0000 		.4byte	.LASF53
 992 0286 06       		.byte	0x6
 993 0287 3E       		.byte	0x3e
 994 0288 3C000000 		.4byte	0x3c
 995 028c 03       		.uleb128 0x3
 996 028d 66010000 		.4byte	.LASF54
 997 0291 06       		.byte	0x6
 998 0292 47       		.byte	0x47
 999 0293 25000000 		.4byte	0x25
 1000 0297 03       		.uleb128 0x3
 1001 0298 40020000 		.4byte	.LASF55
 1002 029c 06       		.byte	0x6
 1003 029d 48       		.byte	0x48
 1004 029e 3C000000 		.4byte	0x3c
 1005 02a2 03       		.uleb128 0x3
 1006 02a3 CA120000 		.4byte	.LASF56
 1007 02a7 06       		.byte	0x6
 1008 02a8 51       		.byte	0x51
 1009 02a9 70000000 		.4byte	0x70
 1010 02ad 03       		.uleb128 0x3
 1011 02ae 63130000 		.4byte	.LASF57
 1012 02b2 06       		.byte	0x6
 1013 02b3 52       		.byte	0x52
 1014 02b4 11010000 		.4byte	0x111
 1015 02b8 03       		.uleb128 0x3
 1016 02b9 55030000 		.4byte	.LASF58
 1017 02bd 06       		.byte	0x6
 1018 02be 82       		.byte	0x82
 1019 02bf 70000000 		.4byte	0x70
 1020 02c3 03       		.uleb128 0x3
 1021 02c4 63030000 		.4byte	.LASF59
 1022 02c8 06       		.byte	0x6
 1023 02c9 8B       		.byte	0x8b
 1024 02ca 11010000 		.4byte	0x111
 1025 02ce 0B       		.uleb128 0xb
 1026 02cf 04       		.byte	0x4
 1027 02d0 05       		.uleb128 0x5
 1028 02d1 04       		.byte	0x4
 1029 02d2 07       		.byte	0x7
 1030 02d3 400D0000 		.4byte	.LASF60
 1031 02d7 0C       		.uleb128 0xc
ARM GAS  /tmp/ccqdRJW7.s 			page 36


 1032 02d8 D2010000 		.4byte	0x1d2
 1033 02dc E7020000 		.4byte	0x2e7
 1034 02e0 0D       		.uleb128 0xd
 1035 02e1 D0020000 		.4byte	0x2d0
 1036 02e5 01       		.byte	0x1
 1037 02e6 00       		.byte	0
 1038 02e7 0A       		.uleb128 0xa
 1039 02e8 D7020000 		.4byte	0x2d7
 1040 02ec 0C       		.uleb128 0xc
 1041 02ed D2010000 		.4byte	0x1d2
 1042 02f1 FC020000 		.4byte	0x2fc
 1043 02f5 0D       		.uleb128 0xd
 1044 02f6 D0020000 		.4byte	0x2d0
 1045 02fa 04       		.byte	0x4
 1046 02fb 00       		.byte	0
 1047 02fc 0A       		.uleb128 0xa
 1048 02fd EC020000 		.4byte	0x2ec
 1049 0301 0E       		.uleb128 0xe
 1050 0302 99160000 		.4byte	.LASF61
 1051 0306 07       		.byte	0x7
 1052 0307 6508     		.2byte	0x865
 1053 0309 C2010000 		.4byte	0x1c2
 1054 030d 0F       		.uleb128 0xf
 1055 030e 230F0000 		.4byte	.LASF62
 1056 0312 08       		.byte	0x8
 1057 0313 3A       		.byte	0x3a
 1058 0314 C7010000 		.4byte	0x1c7
 1059 0318 0C       		.uleb128 0xc
 1060 0319 D2010000 		.4byte	0x1d2
 1061 031d 28030000 		.4byte	0x328
 1062 0321 0D       		.uleb128 0xd
 1063 0322 D0020000 		.4byte	0x2d0
 1064 0326 06       		.byte	0x6
 1065 0327 00       		.byte	0
 1066 0328 0A       		.uleb128 0xa
 1067 0329 18030000 		.4byte	0x318
 1068 032d 10       		.uleb128 0x10
 1069 032e EC       		.byte	0xec
 1070 032f 09       		.byte	0x9
 1071 0330 38       		.byte	0x38
 1072 0331 06010000 		.4byte	.LASF165
 1073 0335 DE040000 		.4byte	0x4de
 1074 0339 11       		.uleb128 0x11
 1075 033a CE0C0000 		.4byte	.LASF63
 1076 033e 09       		.byte	0x9
 1077 033f 39       		.byte	0x39
 1078 0340 D2010000 		.4byte	0x1d2
 1079 0344 00       		.byte	0
 1080 0345 11       		.uleb128 0x11
 1081 0346 26120000 		.4byte	.LASF64
 1082 034a 09       		.byte	0x9
 1083 034b 3A       		.byte	0x3a
 1084 034c D2010000 		.4byte	0x1d2
 1085 0350 04       		.byte	0x4
 1086 0351 11       		.uleb128 0x11
 1087 0352 650A0000 		.4byte	.LASF65
 1088 0356 09       		.byte	0x9
ARM GAS  /tmp/ccqdRJW7.s 			page 37


 1089 0357 3B       		.byte	0x3b
 1090 0358 D2010000 		.4byte	0x1d2
 1091 035c 08       		.byte	0x8
 1092 035d 11       		.uleb128 0x11
 1093 035e 460F0000 		.4byte	.LASF66
 1094 0362 09       		.byte	0x9
 1095 0363 3C       		.byte	0x3c
 1096 0364 D2010000 		.4byte	0x1d2
 1097 0368 0C       		.byte	0xc
 1098 0369 11       		.uleb128 0x11
 1099 036a 9E0F0000 		.4byte	.LASF67
 1100 036e 09       		.byte	0x9
 1101 036f 3D       		.byte	0x3d
 1102 0370 D2010000 		.4byte	0x1d2
 1103 0374 10       		.byte	0x10
 1104 0375 11       		.uleb128 0x11
 1105 0376 A0100000 		.4byte	.LASF68
 1106 037a 09       		.byte	0x9
 1107 037b 3E       		.byte	0x3e
 1108 037c D2010000 		.4byte	0x1d2
 1109 0380 14       		.byte	0x14
 1110 0381 11       		.uleb128 0x11
 1111 0382 35100000 		.4byte	.LASF69
 1112 0386 09       		.byte	0x9
 1113 0387 3F       		.byte	0x3f
 1114 0388 D2010000 		.4byte	0x1d2
 1115 038c 18       		.byte	0x18
 1116 038d 11       		.uleb128 0x11
 1117 038e F8160000 		.4byte	.LASF70
 1118 0392 09       		.byte	0x9
 1119 0393 40       		.byte	0x40
 1120 0394 D2010000 		.4byte	0x1d2
 1121 0398 1C       		.byte	0x1c
 1122 0399 11       		.uleb128 0x11
 1123 039a 120C0000 		.4byte	.LASF71
 1124 039e 09       		.byte	0x9
 1125 039f 41       		.byte	0x41
 1126 03a0 D2010000 		.4byte	0x1d2
 1127 03a4 20       		.byte	0x20
 1128 03a5 11       		.uleb128 0x11
 1129 03a6 E0110000 		.4byte	.LASF72
 1130 03aa 09       		.byte	0x9
 1131 03ab 42       		.byte	0x42
 1132 03ac D2010000 		.4byte	0x1d2
 1133 03b0 24       		.byte	0x24
 1134 03b1 11       		.uleb128 0x11
 1135 03b2 05110000 		.4byte	.LASF73
 1136 03b6 09       		.byte	0x9
 1137 03b7 43       		.byte	0x43
 1138 03b8 D2010000 		.4byte	0x1d2
 1139 03bc 28       		.byte	0x28
 1140 03bd 11       		.uleb128 0x11
 1141 03be BB150000 		.4byte	.LASF74
 1142 03c2 09       		.byte	0x9
 1143 03c3 44       		.byte	0x44
 1144 03c4 D2010000 		.4byte	0x1d2
 1145 03c8 2C       		.byte	0x2c
ARM GAS  /tmp/ccqdRJW7.s 			page 38


 1146 03c9 11       		.uleb128 0x11
 1147 03ca 66180000 		.4byte	.LASF75
 1148 03ce 09       		.byte	0x9
 1149 03cf 45       		.byte	0x45
 1150 03d0 D2010000 		.4byte	0x1d2
 1151 03d4 30       		.byte	0x30
 1152 03d5 11       		.uleb128 0x11
 1153 03d6 A71B0000 		.4byte	.LASF76
 1154 03da 09       		.byte	0x9
 1155 03db 46       		.byte	0x46
 1156 03dc EE040000 		.4byte	0x4ee
 1157 03e0 34       		.byte	0x34
 1158 03e1 11       		.uleb128 0x11
 1159 03e2 15150000 		.4byte	.LASF77
 1160 03e6 09       		.byte	0x9
 1161 03e7 47       		.byte	0x47
 1162 03e8 D2010000 		.4byte	0x1d2
 1163 03ec 4C       		.byte	0x4c
 1164 03ed 11       		.uleb128 0x11
 1165 03ee A7090000 		.4byte	.LASF78
 1166 03f2 09       		.byte	0x9
 1167 03f3 48       		.byte	0x48
 1168 03f4 D2010000 		.4byte	0x1d2
 1169 03f8 50       		.byte	0x50
 1170 03f9 11       		.uleb128 0x11
 1171 03fa 19030000 		.4byte	.LASF79
 1172 03fe 09       		.byte	0x9
 1173 03ff 49       		.byte	0x49
 1174 0400 D2010000 		.4byte	0x1d2
 1175 0404 54       		.byte	0x54
 1176 0405 11       		.uleb128 0x11
 1177 0406 B11B0000 		.4byte	.LASF80
 1178 040a 09       		.byte	0x9
 1179 040b 4A       		.byte	0x4a
 1180 040c E7020000 		.4byte	0x2e7
 1181 0410 58       		.byte	0x58
 1182 0411 11       		.uleb128 0x11
 1183 0412 35020000 		.4byte	.LASF81
 1184 0416 09       		.byte	0x9
 1185 0417 4B       		.byte	0x4b
 1186 0418 D2010000 		.4byte	0x1d2
 1187 041c 60       		.byte	0x60
 1188 041d 11       		.uleb128 0x11
 1189 041e C90F0000 		.4byte	.LASF82
 1190 0422 09       		.byte	0x9
 1191 0423 4C       		.byte	0x4c
 1192 0424 D2010000 		.4byte	0x1d2
 1193 0428 64       		.byte	0x64
 1194 0429 11       		.uleb128 0x11
 1195 042a 54010000 		.4byte	.LASF83
 1196 042e 09       		.byte	0x9
 1197 042f 4D       		.byte	0x4d
 1198 0430 D2010000 		.4byte	0x1d2
 1199 0434 68       		.byte	0x68
 1200 0435 11       		.uleb128 0x11
 1201 0436 AF060000 		.4byte	.LASF84
 1202 043a 09       		.byte	0x9
ARM GAS  /tmp/ccqdRJW7.s 			page 39


 1203 043b 4E       		.byte	0x4e
 1204 043c D2010000 		.4byte	0x1d2
 1205 0440 6C       		.byte	0x6c
 1206 0441 11       		.uleb128 0x11
 1207 0442 920F0000 		.4byte	.LASF85
 1208 0446 09       		.byte	0x9
 1209 0447 4F       		.byte	0x4f
 1210 0448 D2010000 		.4byte	0x1d2
 1211 044c 70       		.byte	0x70
 1212 044d 11       		.uleb128 0x11
 1213 044e 54180000 		.4byte	.LASF86
 1214 0452 09       		.byte	0x9
 1215 0453 50       		.byte	0x50
 1216 0454 D2010000 		.4byte	0x1d2
 1217 0458 74       		.byte	0x74
 1218 0459 11       		.uleb128 0x11
 1219 045a BB1B0000 		.4byte	.LASF87
 1220 045e 09       		.byte	0x9
 1221 045f 51       		.byte	0x51
 1222 0460 28030000 		.4byte	0x328
 1223 0464 78       		.byte	0x78
 1224 0465 11       		.uleb128 0x11
 1225 0466 EF160000 		.4byte	.LASF88
 1226 046a 09       		.byte	0x9
 1227 046b 52       		.byte	0x52
 1228 046c D2010000 		.4byte	0x1d2
 1229 0470 94       		.byte	0x94
 1230 0471 11       		.uleb128 0x11
 1231 0472 C51B0000 		.4byte	.LASF89
 1232 0476 09       		.byte	0x9
 1233 0477 53       		.byte	0x53
 1234 0478 E7020000 		.4byte	0x2e7
 1235 047c 98       		.byte	0x98
 1236 047d 11       		.uleb128 0x11
 1237 047e 770C0000 		.4byte	.LASF90
 1238 0482 09       		.byte	0x9
 1239 0483 54       		.byte	0x54
 1240 0484 D2010000 		.4byte	0x1d2
 1241 0488 A0       		.byte	0xa0
 1242 0489 11       		.uleb128 0x11
 1243 048a CF1B0000 		.4byte	.LASF91
 1244 048e 09       		.byte	0x9
 1245 048f 55       		.byte	0x55
 1246 0490 03050000 		.4byte	0x503
 1247 0494 A4       		.byte	0xa4
 1248 0495 11       		.uleb128 0x11
 1249 0496 4F0D0000 		.4byte	.LASF92
 1250 049a 09       		.byte	0x9
 1251 049b 56       		.byte	0x56
 1252 049c D2010000 		.4byte	0x1d2
 1253 04a0 D0       		.byte	0xd0
 1254 04a1 11       		.uleb128 0x11
 1255 04a2 27090000 		.4byte	.LASF93
 1256 04a6 09       		.byte	0x9
 1257 04a7 57       		.byte	0x57
 1258 04a8 D2010000 		.4byte	0x1d2
 1259 04ac D4       		.byte	0xd4
ARM GAS  /tmp/ccqdRJW7.s 			page 40


 1260 04ad 11       		.uleb128 0x11
 1261 04ae 5D070000 		.4byte	.LASF94
 1262 04b2 09       		.byte	0x9
 1263 04b3 58       		.byte	0x58
 1264 04b4 D2010000 		.4byte	0x1d2
 1265 04b8 D8       		.byte	0xd8
 1266 04b9 11       		.uleb128 0x11
 1267 04ba D91B0000 		.4byte	.LASF95
 1268 04be 09       		.byte	0x9
 1269 04bf 59       		.byte	0x59
 1270 04c0 E7020000 		.4byte	0x2e7
 1271 04c4 DC       		.byte	0xdc
 1272 04c5 11       		.uleb128 0x11
 1273 04c6 5F040000 		.4byte	.LASF96
 1274 04ca 09       		.byte	0x9
 1275 04cb 5A       		.byte	0x5a
 1276 04cc D2010000 		.4byte	0x1d2
 1277 04d0 E4       		.byte	0xe4
 1278 04d1 11       		.uleb128 0x11
 1279 04d2 D4060000 		.4byte	.LASF97
 1280 04d6 09       		.byte	0x9
 1281 04d7 5B       		.byte	0x5b
 1282 04d8 D2010000 		.4byte	0x1d2
 1283 04dc E8       		.byte	0xe8
 1284 04dd 00       		.byte	0
 1285 04de 0C       		.uleb128 0xc
 1286 04df D2010000 		.4byte	0x1d2
 1287 04e3 EE040000 		.4byte	0x4ee
 1288 04e7 0D       		.uleb128 0xd
 1289 04e8 D0020000 		.4byte	0x2d0
 1290 04ec 05       		.byte	0x5
 1291 04ed 00       		.byte	0
 1292 04ee 0A       		.uleb128 0xa
 1293 04ef DE040000 		.4byte	0x4de
 1294 04f3 0C       		.uleb128 0xc
 1295 04f4 D2010000 		.4byte	0x1d2
 1296 04f8 03050000 		.4byte	0x503
 1297 04fc 0D       		.uleb128 0xd
 1298 04fd D0020000 		.4byte	0x2d0
 1299 0501 0A       		.byte	0xa
 1300 0502 00       		.byte	0
 1301 0503 0A       		.uleb128 0xa
 1302 0504 F3040000 		.4byte	0x4f3
 1303 0508 03       		.uleb128 0x3
 1304 0509 D4030000 		.4byte	.LASF98
 1305 050d 09       		.byte	0x9
 1306 050e 5C       		.byte	0x5c
 1307 050f 2D030000 		.4byte	0x32d
 1308 0513 0C       		.uleb128 0xc
 1309 0514 D2010000 		.4byte	0x1d2
 1310 0518 23050000 		.4byte	0x523
 1311 051c 0D       		.uleb128 0xd
 1312 051d D0020000 		.4byte	0x2d0
 1313 0521 00       		.byte	0
 1314 0522 00       		.byte	0
 1315 0523 0A       		.uleb128 0xa
 1316 0524 13050000 		.4byte	0x513
ARM GAS  /tmp/ccqdRJW7.s 			page 41


 1317 0528 0C       		.uleb128 0xc
 1318 0529 D2010000 		.4byte	0x1d2
 1319 052d 38050000 		.4byte	0x538
 1320 0531 0D       		.uleb128 0xd
 1321 0532 D0020000 		.4byte	0x2d0
 1322 0536 0C       		.byte	0xc
 1323 0537 00       		.byte	0
 1324 0538 0A       		.uleb128 0xa
 1325 0539 28050000 		.4byte	0x528
 1326 053d 12       		.uleb128 0x12
 1327 053e 6801     		.2byte	0x168
 1328 0540 0A       		.byte	0xa
 1329 0541 38       		.byte	0x38
 1330 0542 67080000 		.4byte	.LASF588
 1331 0546 85080000 		.4byte	0x885
 1332 054a 11       		.uleb128 0x11
 1333 054b 68140000 		.4byte	.LASF99
 1334 054f 0A       		.byte	0xa
 1335 0550 39       		.byte	0x39
 1336 0551 D2010000 		.4byte	0x1d2
 1337 0555 00       		.byte	0
 1338 0556 11       		.uleb128 0x11
 1339 0557 4D130000 		.4byte	.LASF100
 1340 055b 0A       		.byte	0xa
 1341 055c 3A       		.byte	0x3a
 1342 055d D2010000 		.4byte	0x1d2
 1343 0561 04       		.byte	0x4
 1344 0562 11       		.uleb128 0x11
 1345 0563 131C0000 		.4byte	.LASF101
 1346 0567 0A       		.byte	0xa
 1347 0568 3B       		.byte	0x3b
 1348 0569 D2010000 		.4byte	0x1d2
 1349 056d 08       		.byte	0x8
 1350 056e 11       		.uleb128 0x11
 1351 056f A71B0000 		.4byte	.LASF76
 1352 0573 0A       		.byte	0xa
 1353 0574 3C       		.byte	0x3c
 1354 0575 23050000 		.4byte	0x523
 1355 0579 0C       		.byte	0xc
 1356 057a 11       		.uleb128 0x11
 1357 057b 2A110000 		.4byte	.LASF102
 1358 057f 0A       		.byte	0xa
 1359 0580 3D       		.byte	0x3d
 1360 0581 D2010000 		.4byte	0x1d2
 1361 0585 10       		.byte	0x10
 1362 0586 11       		.uleb128 0x11
 1363 0587 AA100000 		.4byte	.LASF103
 1364 058b 0A       		.byte	0xa
 1365 058c 3E       		.byte	0x3e
 1366 058d D2010000 		.4byte	0x1d2
 1367 0591 14       		.byte	0x14
 1368 0592 11       		.uleb128 0x11
 1369 0593 05180000 		.4byte	.LASF104
 1370 0597 0A       		.byte	0xa
 1371 0598 3F       		.byte	0x3f
 1372 0599 D2010000 		.4byte	0x1d2
 1373 059d 18       		.byte	0x18
ARM GAS  /tmp/ccqdRJW7.s 			page 42


 1374 059e 11       		.uleb128 0x11
 1375 059f B11B0000 		.4byte	.LASF80
 1376 05a3 0A       		.byte	0xa
 1377 05a4 40       		.byte	0x40
 1378 05a5 23050000 		.4byte	0x523
 1379 05a9 1C       		.byte	0x1c
 1380 05aa 11       		.uleb128 0x11
 1381 05ab E20D0000 		.4byte	.LASF105
 1382 05af 0A       		.byte	0xa
 1383 05b0 41       		.byte	0x41
 1384 05b1 D2010000 		.4byte	0x1d2
 1385 05b5 20       		.byte	0x20
 1386 05b6 11       		.uleb128 0x11
 1387 05b7 370D0000 		.4byte	.LASF106
 1388 05bb 0A       		.byte	0xa
 1389 05bc 42       		.byte	0x42
 1390 05bd D2010000 		.4byte	0x1d2
 1391 05c1 24       		.byte	0x24
 1392 05c2 11       		.uleb128 0x11
 1393 05c3 68150000 		.4byte	.LASF107
 1394 05c7 0A       		.byte	0xa
 1395 05c8 43       		.byte	0x43
 1396 05c9 D2010000 		.4byte	0x1d2
 1397 05cd 28       		.byte	0x28
 1398 05ce 11       		.uleb128 0x11
 1399 05cf BB1B0000 		.4byte	.LASF87
 1400 05d3 0A       		.byte	0xa
 1401 05d4 44       		.byte	0x44
 1402 05d5 23050000 		.4byte	0x523
 1403 05d9 2C       		.byte	0x2c
 1404 05da 11       		.uleb128 0x11
 1405 05db 86050000 		.4byte	.LASF108
 1406 05df 0A       		.byte	0xa
 1407 05e0 45       		.byte	0x45
 1408 05e1 D2010000 		.4byte	0x1d2
 1409 05e5 30       		.byte	0x30
 1410 05e6 11       		.uleb128 0x11
 1411 05e7 D60C0000 		.4byte	.LASF109
 1412 05eb 0A       		.byte	0xa
 1413 05ec 46       		.byte	0x46
 1414 05ed D2010000 		.4byte	0x1d2
 1415 05f1 34       		.byte	0x34
 1416 05f2 11       		.uleb128 0x11
 1417 05f3 810C0000 		.4byte	.LASF110
 1418 05f7 0A       		.byte	0xa
 1419 05f8 47       		.byte	0x47
 1420 05f9 D2010000 		.4byte	0x1d2
 1421 05fd 38       		.byte	0x38
 1422 05fe 11       		.uleb128 0x11
 1423 05ff 1A1B0000 		.4byte	.LASF111
 1424 0603 0A       		.byte	0xa
 1425 0604 48       		.byte	0x48
 1426 0605 D2010000 		.4byte	0x1d2
 1427 0609 3C       		.byte	0x3c
 1428 060a 11       		.uleb128 0x11
 1429 060b 78010000 		.4byte	.LASF112
 1430 060f 0A       		.byte	0xa
ARM GAS  /tmp/ccqdRJW7.s 			page 43


 1431 0610 49       		.byte	0x49
 1432 0611 D2010000 		.4byte	0x1d2
 1433 0615 40       		.byte	0x40
 1434 0616 11       		.uleb128 0x11
 1435 0617 1B010000 		.4byte	.LASF113
 1436 061b 0A       		.byte	0xa
 1437 061c 4A       		.byte	0x4a
 1438 061d D2010000 		.4byte	0x1d2
 1439 0621 44       		.byte	0x44
 1440 0622 11       		.uleb128 0x11
 1441 0623 08050000 		.4byte	.LASF114
 1442 0627 0A       		.byte	0xa
 1443 0628 4B       		.byte	0x4b
 1444 0629 D2010000 		.4byte	0x1d2
 1445 062d 48       		.byte	0x48
 1446 062e 11       		.uleb128 0x11
 1447 062f 11070000 		.4byte	.LASF115
 1448 0633 0A       		.byte	0xa
 1449 0634 4C       		.byte	0x4c
 1450 0635 D2010000 		.4byte	0x1d2
 1451 0639 4C       		.byte	0x4c
 1452 063a 11       		.uleb128 0x11
 1453 063b DE060000 		.4byte	.LASF116
 1454 063f 0A       		.byte	0xa
 1455 0640 4D       		.byte	0x4d
 1456 0641 D2010000 		.4byte	0x1d2
 1457 0645 50       		.byte	0x50
 1458 0646 11       		.uleb128 0x11
 1459 0647 97060000 		.4byte	.LASF117
 1460 064b 0A       		.byte	0xa
 1461 064c 4E       		.byte	0x4e
 1462 064d D2010000 		.4byte	0x1d2
 1463 0651 54       		.byte	0x54
 1464 0652 11       		.uleb128 0x11
 1465 0653 EE0C0000 		.4byte	.LASF118
 1466 0657 0A       		.byte	0xa
 1467 0658 4F       		.byte	0x4f
 1468 0659 D2010000 		.4byte	0x1d2
 1469 065d 58       		.byte	0x58
 1470 065e 11       		.uleb128 0x11
 1471 065f C51B0000 		.4byte	.LASF89
 1472 0663 0A       		.byte	0xa
 1473 0664 50       		.byte	0x50
 1474 0665 23050000 		.4byte	0x523
 1475 0669 5C       		.byte	0x5c
 1476 066a 11       		.uleb128 0x11
 1477 066b 30090000 		.4byte	.LASF119
 1478 066f 0A       		.byte	0xa
 1479 0670 51       		.byte	0x51
 1480 0671 D2010000 		.4byte	0x1d2
 1481 0675 60       		.byte	0x60
 1482 0676 11       		.uleb128 0x11
 1483 0677 B0090000 		.4byte	.LASF120
 1484 067b 0A       		.byte	0xa
 1485 067c 52       		.byte	0x52
 1486 067d D2010000 		.4byte	0x1d2
 1487 0681 64       		.byte	0x64
ARM GAS  /tmp/ccqdRJW7.s 			page 44


 1488 0682 11       		.uleb128 0x11
 1489 0683 FC0F0000 		.4byte	.LASF121
 1490 0687 0A       		.byte	0xa
 1491 0688 53       		.byte	0x53
 1492 0689 D2010000 		.4byte	0x1d2
 1493 068d 68       		.byte	0x68
 1494 068e 11       		.uleb128 0x11
 1495 068f CF1B0000 		.4byte	.LASF91
 1496 0693 0A       		.byte	0xa
 1497 0694 54       		.byte	0x54
 1498 0695 23050000 		.4byte	0x523
 1499 0699 6C       		.byte	0x6c
 1500 069a 11       		.uleb128 0x11
 1501 069b AF0A0000 		.4byte	.LASF122
 1502 069f 0A       		.byte	0xa
 1503 06a0 55       		.byte	0x55
 1504 06a1 E7020000 		.4byte	0x2e7
 1505 06a5 70       		.byte	0x70
 1506 06a6 11       		.uleb128 0x11
 1507 06a7 D91B0000 		.4byte	.LASF95
 1508 06ab 0A       		.byte	0xa
 1509 06ac 56       		.byte	0x56
 1510 06ad E7020000 		.4byte	0x2e7
 1511 06b1 78       		.byte	0x78
 1512 06b2 11       		.uleb128 0x11
 1513 06b3 09160000 		.4byte	.LASF123
 1514 06b7 0A       		.byte	0xa
 1515 06b8 57       		.byte	0x57
 1516 06b9 D2010000 		.4byte	0x1d2
 1517 06bd 80       		.byte	0x80
 1518 06be 11       		.uleb128 0x11
 1519 06bf 5F160000 		.4byte	.LASF124
 1520 06c3 0A       		.byte	0xa
 1521 06c4 58       		.byte	0x58
 1522 06c5 D2010000 		.4byte	0x1d2
 1523 06c9 84       		.byte	0x84
 1524 06ca 11       		.uleb128 0x11
 1525 06cb 23010000 		.4byte	.LASF125
 1526 06cf 0A       		.byte	0xa
 1527 06d0 59       		.byte	0x59
 1528 06d1 D2010000 		.4byte	0x1d2
 1529 06d5 88       		.byte	0x88
 1530 06d6 11       		.uleb128 0x11
 1531 06d7 5D010000 		.4byte	.LASF126
 1532 06db 0A       		.byte	0xa
 1533 06dc 5A       		.byte	0x5a
 1534 06dd D2010000 		.4byte	0x1d2
 1535 06e1 8C       		.byte	0x8c
 1536 06e2 11       		.uleb128 0x11
 1537 06e3 A61C0000 		.4byte	.LASF127
 1538 06e7 0A       		.byte	0xa
 1539 06e8 5B       		.byte	0x5b
 1540 06e9 D2010000 		.4byte	0x1d2
 1541 06ed 90       		.byte	0x90
 1542 06ee 11       		.uleb128 0x11
 1543 06ef 74000000 		.4byte	.LASF128
 1544 06f3 0A       		.byte	0xa
ARM GAS  /tmp/ccqdRJW7.s 			page 45


 1545 06f4 5C       		.byte	0x5c
 1546 06f5 D2010000 		.4byte	0x1d2
 1547 06f9 94       		.byte	0x94
 1548 06fa 11       		.uleb128 0x11
 1549 06fb 63060000 		.4byte	.LASF129
 1550 06ff 0A       		.byte	0xa
 1551 0700 5D       		.byte	0x5d
 1552 0701 D2010000 		.4byte	0x1d2
 1553 0705 98       		.byte	0x98
 1554 0706 11       		.uleb128 0x11
 1555 0707 E31B0000 		.4byte	.LASF130
 1556 070b 0A       		.byte	0xa
 1557 070c 5E       		.byte	0x5e
 1558 070d 23050000 		.4byte	0x523
 1559 0711 9C       		.byte	0x9c
 1560 0712 11       		.uleb128 0x11
 1561 0713 09020000 		.4byte	.LASF131
 1562 0717 0A       		.byte	0xa
 1563 0718 5F       		.byte	0x5f
 1564 0719 D2010000 		.4byte	0x1d2
 1565 071d A0       		.byte	0xa0
 1566 071e 11       		.uleb128 0x11
 1567 071f 89010000 		.4byte	.LASF132
 1568 0723 0A       		.byte	0xa
 1569 0724 60       		.byte	0x60
 1570 0725 D2010000 		.4byte	0x1d2
 1571 0729 A4       		.byte	0xa4
 1572 072a 11       		.uleb128 0x11
 1573 072b 9D070000 		.4byte	.LASF133
 1574 072f 0A       		.byte	0xa
 1575 0730 61       		.byte	0x61
 1576 0731 D2010000 		.4byte	0x1d2
 1577 0735 A8       		.byte	0xa8
 1578 0736 11       		.uleb128 0x11
 1579 0737 ED1B0000 		.4byte	.LASF134
 1580 073b 0A       		.byte	0xa
 1581 073c 62       		.byte	0x62
 1582 073d 23050000 		.4byte	0x523
 1583 0741 AC       		.byte	0xac
 1584 0742 11       		.uleb128 0x11
 1585 0743 2B160000 		.4byte	.LASF135
 1586 0747 0A       		.byte	0xa
 1587 0748 63       		.byte	0x63
 1588 0749 D2010000 		.4byte	0x1d2
 1589 074d B0       		.byte	0xb0
 1590 074e 11       		.uleb128 0x11
 1591 074f EF150000 		.4byte	.LASF136
 1592 0753 0A       		.byte	0xa
 1593 0754 64       		.byte	0x64
 1594 0755 D2010000 		.4byte	0x1d2
 1595 0759 B4       		.byte	0xb4
 1596 075a 11       		.uleb128 0x11
 1597 075b 8D1A0000 		.4byte	.LASF137
 1598 075f 0A       		.byte	0xa
 1599 0760 65       		.byte	0x65
 1600 0761 D2010000 		.4byte	0x1d2
 1601 0765 B8       		.byte	0xb8
ARM GAS  /tmp/ccqdRJW7.s 			page 46


 1602 0766 11       		.uleb128 0x11
 1603 0767 F71B0000 		.4byte	.LASF138
 1604 076b 0A       		.byte	0xa
 1605 076c 66       		.byte	0x66
 1606 076d 23050000 		.4byte	0x523
 1607 0771 BC       		.byte	0xbc
 1608 0772 11       		.uleb128 0x11
 1609 0773 8E190000 		.4byte	.LASF139
 1610 0777 0A       		.byte	0xa
 1611 0778 67       		.byte	0x67
 1612 0779 D2010000 		.4byte	0x1d2
 1613 077d C0       		.byte	0xc0
 1614 077e 11       		.uleb128 0x11
 1615 077f 6B0F0000 		.4byte	.LASF140
 1616 0783 0A       		.byte	0xa
 1617 0784 68       		.byte	0x68
 1618 0785 D2010000 		.4byte	0x1d2
 1619 0789 C4       		.byte	0xc4
 1620 078a 11       		.uleb128 0x11
 1621 078b C70A0000 		.4byte	.LASF141
 1622 078f 0A       		.byte	0xa
 1623 0790 69       		.byte	0x69
 1624 0791 D2010000 		.4byte	0x1d2
 1625 0795 C8       		.byte	0xc8
 1626 0796 11       		.uleb128 0x11
 1627 0797 DC040000 		.4byte	.LASF142
 1628 079b 0A       		.byte	0xa
 1629 079c 6A       		.byte	0x6a
 1630 079d 23050000 		.4byte	0x523
 1631 07a1 CC       		.byte	0xcc
 1632 07a2 11       		.uleb128 0x11
 1633 07a3 A6160000 		.4byte	.LASF143
 1634 07a7 0A       		.byte	0xa
 1635 07a8 6B       		.byte	0x6b
 1636 07a9 D2010000 		.4byte	0x1d2
 1637 07ad D0       		.byte	0xd0
 1638 07ae 11       		.uleb128 0x11
 1639 07af AD0C0000 		.4byte	.LASF144
 1640 07b3 0A       		.byte	0xa
 1641 07b4 6C       		.byte	0x6c
 1642 07b5 D2010000 		.4byte	0x1d2
 1643 07b9 D4       		.byte	0xd4
 1644 07ba 11       		.uleb128 0x11
 1645 07bb 9C1B0000 		.4byte	.LASF145
 1646 07bf 0A       		.byte	0xa
 1647 07c0 6D       		.byte	0x6d
 1648 07c1 D2010000 		.4byte	0x1d2
 1649 07c5 D8       		.byte	0xd8
 1650 07c6 11       		.uleb128 0x11
 1651 07c7 E7040000 		.4byte	.LASF146
 1652 07cb 0A       		.byte	0xa
 1653 07cc 6E       		.byte	0x6e
 1654 07cd 23050000 		.4byte	0x523
 1655 07d1 DC       		.byte	0xdc
 1656 07d2 11       		.uleb128 0x11
 1657 07d3 F1070000 		.4byte	.LASF147
 1658 07d7 0A       		.byte	0xa
ARM GAS  /tmp/ccqdRJW7.s 			page 47


 1659 07d8 6F       		.byte	0x6f
 1660 07d9 D2010000 		.4byte	0x1d2
 1661 07dd E0       		.byte	0xe0
 1662 07de 11       		.uleb128 0x11
 1663 07df 190A0000 		.4byte	.LASF148
 1664 07e3 0A       		.byte	0xa
 1665 07e4 70       		.byte	0x70
 1666 07e5 D2010000 		.4byte	0x1d2
 1667 07e9 E4       		.byte	0xe4
 1668 07ea 11       		.uleb128 0x11
 1669 07eb B80C0000 		.4byte	.LASF149
 1670 07ef 0A       		.byte	0xa
 1671 07f0 71       		.byte	0x71
 1672 07f1 D2010000 		.4byte	0x1d2
 1673 07f5 E8       		.byte	0xe8
 1674 07f6 11       		.uleb128 0x11
 1675 07f7 F2040000 		.4byte	.LASF150
 1676 07fb 0A       		.byte	0xa
 1677 07fc 72       		.byte	0x72
 1678 07fd FC020000 		.4byte	0x2fc
 1679 0801 EC       		.byte	0xec
 1680 0802 13       		.uleb128 0x13
 1681 0803 CD010000 		.4byte	.LASF151
 1682 0807 0A       		.byte	0xa
 1683 0808 73       		.byte	0x73
 1684 0809 D2010000 		.4byte	0x1d2
 1685 080d 0001     		.2byte	0x100
 1686 080f 13       		.uleb128 0x13
 1687 0810 FD040000 		.4byte	.LASF152
 1688 0814 0A       		.byte	0xa
 1689 0815 74       		.byte	0x74
 1690 0816 FC020000 		.4byte	0x2fc
 1691 081a 0401     		.2byte	0x104
 1692 081c 13       		.uleb128 0x13
 1693 081d F9050000 		.4byte	.LASF153
 1694 0821 0A       		.byte	0xa
 1695 0822 75       		.byte	0x75
 1696 0823 D2010000 		.4byte	0x1d2
 1697 0827 1801     		.2byte	0x118
 1698 0829 13       		.uleb128 0x13
 1699 082a 1F0D0000 		.4byte	.LASF154
 1700 082e 0A       		.byte	0xa
 1701 082f 76       		.byte	0x76
 1702 0830 38050000 		.4byte	0x538
 1703 0834 1C01     		.2byte	0x11c
 1704 0836 13       		.uleb128 0x13
 1705 0837 EB140000 		.4byte	.LASF155
 1706 083b 0A       		.byte	0xa
 1707 083c 77       		.byte	0x77
 1708 083d D2010000 		.4byte	0x1d2
 1709 0841 5001     		.2byte	0x150
 1710 0843 13       		.uleb128 0x13
 1711 0844 EF050000 		.4byte	.LASF156
 1712 0848 0A       		.byte	0xa
 1713 0849 78       		.byte	0x78
 1714 084a D2010000 		.4byte	0x1d2
 1715 084e 5401     		.2byte	0x154
ARM GAS  /tmp/ccqdRJW7.s 			page 48


 1716 0850 13       		.uleb128 0x13
 1717 0851 AA190000 		.4byte	.LASF157
 1718 0855 0A       		.byte	0xa
 1719 0856 79       		.byte	0x79
 1720 0857 D2010000 		.4byte	0x1d2
 1721 085b 5801     		.2byte	0x158
 1722 085d 13       		.uleb128 0x13
 1723 085e 4E090000 		.4byte	.LASF158
 1724 0862 0A       		.byte	0xa
 1725 0863 7A       		.byte	0x7a
 1726 0864 D2010000 		.4byte	0x1d2
 1727 0868 5C01     		.2byte	0x15c
 1728 086a 13       		.uleb128 0x13
 1729 086b CD0B0000 		.4byte	.LASF159
 1730 086f 0A       		.byte	0xa
 1731 0870 7B       		.byte	0x7b
 1732 0871 D2010000 		.4byte	0x1d2
 1733 0875 6001     		.2byte	0x160
 1734 0877 13       		.uleb128 0x13
 1735 0878 BC030000 		.4byte	.LASF160
 1736 087c 0A       		.byte	0xa
 1737 087d 7C       		.byte	0x7c
 1738 087e D2010000 		.4byte	0x1d2
 1739 0882 6401     		.2byte	0x164
 1740 0884 00       		.byte	0
 1741 0885 14       		.uleb128 0x14
 1742 0886 50696F00 		.ascii	"Pio\000"
 1743 088a 0A       		.byte	0xa
 1744 088b 7D       		.byte	0x7d
 1745 088c 3D050000 		.4byte	0x53d
 1746 0890 03       		.uleb128 0x3
 1747 0891 12100000 		.4byte	.LASF161
 1748 0895 0B       		.byte	0xb
 1749 0896 07       		.byte	0x7
 1750 0897 25000000 		.4byte	0x25
 1751 089b 03       		.uleb128 0x3
 1752 089c DF080000 		.4byte	.LASF162
 1753 08a0 0C       		.byte	0xc
 1754 08a1 2C       		.byte	0x2c
 1755 08a2 E2000000 		.4byte	0xe2
 1756 08a6 03       		.uleb128 0x3
 1757 08a7 F4140000 		.4byte	.LASF163
 1758 08ab 0C       		.byte	0xc
 1759 08ac 72       		.byte	0x72
 1760 08ad E2000000 		.4byte	0xe2
 1761 08b1 08       		.uleb128 0x8
 1762 08b2 400A0000 		.4byte	.LASF164
 1763 08b6 03       		.byte	0x3
 1764 08b7 6501     		.2byte	0x165
 1765 08b9 3C000000 		.4byte	0x3c
 1766 08bd 10       		.uleb128 0x10
 1767 08be 08       		.byte	0x8
 1768 08bf 0C       		.byte	0xc
 1769 08c0 A4       		.byte	0xa4
 1770 08c1 BA0A0000 		.4byte	.LASF166
 1771 08c5 01090000 		.4byte	0x901
 1772 08c9 15       		.uleb128 0x15
ARM GAS  /tmp/ccqdRJW7.s 			page 49


 1773 08ca 04       		.byte	0x4
 1774 08cb 0C       		.byte	0xc
 1775 08cc A7       		.byte	0xa7
 1776 08cd E8080000 		.4byte	0x8e8
 1777 08d1 16       		.uleb128 0x16
 1778 08d2 C30F0000 		.4byte	.LASF167
 1779 08d6 0C       		.byte	0xc
 1780 08d7 A8       		.byte	0xa8
 1781 08d8 B1080000 		.4byte	0x8b1
 1782 08dc 16       		.uleb128 0x16
 1783 08dd F9090000 		.4byte	.LASF168
 1784 08e1 0C       		.byte	0xc
 1785 08e2 A9       		.byte	0xa9
 1786 08e3 01090000 		.4byte	0x901
 1787 08e7 00       		.byte	0
 1788 08e8 11       		.uleb128 0x11
 1789 08e9 39090000 		.4byte	.LASF169
 1790 08ed 0C       		.byte	0xc
 1791 08ee A5       		.byte	0xa5
 1792 08ef 25000000 		.4byte	0x25
 1793 08f3 00       		.byte	0
 1794 08f4 11       		.uleb128 0x11
 1795 08f5 F9150000 		.4byte	.LASF170
 1796 08f9 0C       		.byte	0xc
 1797 08fa AA       		.byte	0xaa
 1798 08fb C9080000 		.4byte	0x8c9
 1799 08ff 04       		.byte	0x4
 1800 0900 00       		.byte	0
 1801 0901 0C       		.uleb128 0xc
 1802 0902 AC000000 		.4byte	0xac
 1803 0906 11090000 		.4byte	0x911
 1804 090a 0D       		.uleb128 0xd
 1805 090b D0020000 		.4byte	0x2d0
 1806 090f 03       		.byte	0x3
 1807 0910 00       		.byte	0
 1808 0911 03       		.uleb128 0x3
 1809 0912 7E150000 		.4byte	.LASF171
 1810 0916 0C       		.byte	0xc
 1811 0917 AB       		.byte	0xab
 1812 0918 BD080000 		.4byte	0x8bd
 1813 091c 03       		.uleb128 0x3
 1814 091d 6F180000 		.4byte	.LASF172
 1815 0921 0C       		.byte	0xc
 1816 0922 AF       		.byte	0xaf
 1817 0923 90080000 		.4byte	0x890
 1818 0927 03       		.uleb128 0x3
 1819 0928 E60C0000 		.4byte	.LASF173
 1820 092c 0D       		.byte	0xd
 1821 092d 16       		.byte	0x16
 1822 092e F4000000 		.4byte	0xf4
 1823 0932 17       		.uleb128 0x17
 1824 0933 C2120000 		.4byte	.LASF178
 1825 0937 18       		.byte	0x18
 1826 0938 0D       		.byte	0xd
 1827 0939 2D       		.byte	0x2d
 1828 093a 85090000 		.4byte	0x985
 1829 093e 11       		.uleb128 0x11
ARM GAS  /tmp/ccqdRJW7.s 			page 50


 1830 093f 020B0000 		.4byte	.LASF174
 1831 0943 0D       		.byte	0xd
 1832 0944 2F       		.byte	0x2f
 1833 0945 85090000 		.4byte	0x985
 1834 0949 00       		.byte	0
 1835 094a 18       		.uleb128 0x18
 1836 094b 5F6B00   		.ascii	"_k\000"
 1837 094e 0D       		.byte	0xd
 1838 094f 30       		.byte	0x30
 1839 0950 25000000 		.4byte	0x25
 1840 0954 04       		.byte	0x4
 1841 0955 11       		.uleb128 0x11
 1842 0956 32110000 		.4byte	.LASF175
 1843 095a 0D       		.byte	0xd
 1844 095b 30       		.byte	0x30
 1845 095c 25000000 		.4byte	0x25
 1846 0960 08       		.byte	0x8
 1847 0961 11       		.uleb128 0x11
 1848 0962 0B1B0000 		.4byte	.LASF176
 1849 0966 0D       		.byte	0xd
 1850 0967 30       		.byte	0x30
 1851 0968 25000000 		.4byte	0x25
 1852 096c 0C       		.byte	0xc
 1853 096d 11       		.uleb128 0x11
 1854 096e 86060000 		.4byte	.LASF177
 1855 0972 0D       		.byte	0xd
 1856 0973 30       		.byte	0x30
 1857 0974 25000000 		.4byte	0x25
 1858 0978 10       		.byte	0x10
 1859 0979 18       		.uleb128 0x18
 1860 097a 5F7800   		.ascii	"_x\000"
 1861 097d 0D       		.byte	0xd
 1862 097e 31       		.byte	0x31
 1863 097f 8B090000 		.4byte	0x98b
 1864 0983 14       		.byte	0x14
 1865 0984 00       		.byte	0
 1866 0985 19       		.uleb128 0x19
 1867 0986 04       		.byte	0x4
 1868 0987 32090000 		.4byte	0x932
 1869 098b 0C       		.uleb128 0xc
 1870 098c 27090000 		.4byte	0x927
 1871 0990 9B090000 		.4byte	0x99b
 1872 0994 0D       		.uleb128 0xd
 1873 0995 D0020000 		.4byte	0x2d0
 1874 0999 00       		.byte	0
 1875 099a 00       		.byte	0
 1876 099b 17       		.uleb128 0x17
 1877 099c CD040000 		.4byte	.LASF179
 1878 09a0 24       		.byte	0x24
 1879 09a1 0D       		.byte	0xd
 1880 09a2 35       		.byte	0x35
 1881 09a3 140A0000 		.4byte	0xa14
 1882 09a7 11       		.uleb128 0x11
 1883 09a8 300C0000 		.4byte	.LASF180
 1884 09ac 0D       		.byte	0xd
 1885 09ad 37       		.byte	0x37
 1886 09ae 25000000 		.4byte	0x25
ARM GAS  /tmp/ccqdRJW7.s 			page 51


 1887 09b2 00       		.byte	0
 1888 09b3 11       		.uleb128 0x11
 1889 09b4 231B0000 		.4byte	.LASF181
 1890 09b8 0D       		.byte	0xd
 1891 09b9 38       		.byte	0x38
 1892 09ba 25000000 		.4byte	0x25
 1893 09be 04       		.byte	0x4
 1894 09bf 11       		.uleb128 0x11
 1895 09c0 0F0A0000 		.4byte	.LASF182
 1896 09c4 0D       		.byte	0xd
 1897 09c5 39       		.byte	0x39
 1898 09c6 25000000 		.4byte	0x25
 1899 09ca 08       		.byte	0x8
 1900 09cb 11       		.uleb128 0x11
 1901 09cc 880A0000 		.4byte	.LASF183
 1902 09d0 0D       		.byte	0xd
 1903 09d1 3A       		.byte	0x3a
 1904 09d2 25000000 		.4byte	0x25
 1905 09d6 0C       		.byte	0xc
 1906 09d7 11       		.uleb128 0x11
 1907 09d8 2E010000 		.4byte	.LASF184
 1908 09dc 0D       		.byte	0xd
 1909 09dd 3B       		.byte	0x3b
 1910 09de 25000000 		.4byte	0x25
 1911 09e2 10       		.byte	0x10
 1912 09e3 11       		.uleb128 0x11
 1913 09e4 46070000 		.4byte	.LASF185
 1914 09e8 0D       		.byte	0xd
 1915 09e9 3C       		.byte	0x3c
 1916 09ea 25000000 		.4byte	0x25
 1917 09ee 14       		.byte	0x14
 1918 09ef 11       		.uleb128 0x11
 1919 09f0 17060000 		.4byte	.LASF186
 1920 09f4 0D       		.byte	0xd
 1921 09f5 3D       		.byte	0x3d
 1922 09f6 25000000 		.4byte	0x25
 1923 09fa 18       		.byte	0x18
 1924 09fb 11       		.uleb128 0x11
 1925 09fc 16050000 		.4byte	.LASF187
 1926 0a00 0D       		.byte	0xd
 1927 0a01 3E       		.byte	0x3e
 1928 0a02 25000000 		.4byte	0x25
 1929 0a06 1C       		.byte	0x1c
 1930 0a07 11       		.uleb128 0x11
 1931 0a08 30060000 		.4byte	.LASF188
 1932 0a0c 0D       		.byte	0xd
 1933 0a0d 3F       		.byte	0x3f
 1934 0a0e 25000000 		.4byte	0x25
 1935 0a12 20       		.byte	0x20
 1936 0a13 00       		.byte	0
 1937 0a14 1A       		.uleb128 0x1a
 1938 0a15 690C0000 		.4byte	.LASF189
 1939 0a19 0801     		.2byte	0x108
 1940 0a1b 0D       		.byte	0xd
 1941 0a1c 48       		.byte	0x48
 1942 0a1d 540A0000 		.4byte	0xa54
 1943 0a21 11       		.uleb128 0x11
ARM GAS  /tmp/ccqdRJW7.s 			page 52


 1944 0a22 A70A0000 		.4byte	.LASF190
 1945 0a26 0D       		.byte	0xd
 1946 0a27 49       		.byte	0x49
 1947 0a28 540A0000 		.4byte	0xa54
 1948 0a2c 00       		.byte	0
 1949 0a2d 11       		.uleb128 0x11
 1950 0a2e 04060000 		.4byte	.LASF191
 1951 0a32 0D       		.byte	0xd
 1952 0a33 4A       		.byte	0x4a
 1953 0a34 540A0000 		.4byte	0xa54
 1954 0a38 80       		.byte	0x80
 1955 0a39 13       		.uleb128 0x13
 1956 0a3a 37010000 		.4byte	.LASF192
 1957 0a3e 0D       		.byte	0xd
 1958 0a3f 4C       		.byte	0x4c
 1959 0a40 27090000 		.4byte	0x927
 1960 0a44 0001     		.2byte	0x100
 1961 0a46 13       		.uleb128 0x13
 1962 0a47 01160000 		.4byte	.LASF193
 1963 0a4b 0D       		.byte	0xd
 1964 0a4c 4F       		.byte	0x4f
 1965 0a4d 27090000 		.4byte	0x927
 1966 0a51 0401     		.2byte	0x104
 1967 0a53 00       		.byte	0
 1968 0a54 0C       		.uleb128 0xc
 1969 0a55 CE020000 		.4byte	0x2ce
 1970 0a59 640A0000 		.4byte	0xa64
 1971 0a5d 0D       		.uleb128 0xd
 1972 0a5e D0020000 		.4byte	0x2d0
 1973 0a62 1F       		.byte	0x1f
 1974 0a63 00       		.byte	0
 1975 0a64 1A       		.uleb128 0x1a
 1976 0a65 E5000000 		.4byte	.LASF194
 1977 0a69 9001     		.2byte	0x190
 1978 0a6b 0D       		.byte	0xd
 1979 0a6c 5B       		.byte	0x5b
 1980 0a6d A20A0000 		.4byte	0xaa2
 1981 0a71 11       		.uleb128 0x11
 1982 0a72 020B0000 		.4byte	.LASF174
 1983 0a76 0D       		.byte	0xd
 1984 0a77 5C       		.byte	0x5c
 1985 0a78 A20A0000 		.4byte	0xaa2
 1986 0a7c 00       		.byte	0
 1987 0a7d 11       		.uleb128 0x11
 1988 0a7e 45010000 		.4byte	.LASF195
 1989 0a82 0D       		.byte	0xd
 1990 0a83 5D       		.byte	0x5d
 1991 0a84 25000000 		.4byte	0x25
 1992 0a88 04       		.byte	0x4
 1993 0a89 11       		.uleb128 0x11
 1994 0a8a 63150000 		.4byte	.LASF196
 1995 0a8e 0D       		.byte	0xd
 1996 0a8f 5F       		.byte	0x5f
 1997 0a90 A80A0000 		.4byte	0xaa8
 1998 0a94 08       		.byte	0x8
 1999 0a95 11       		.uleb128 0x11
 2000 0a96 690C0000 		.4byte	.LASF189
ARM GAS  /tmp/ccqdRJW7.s 			page 53


 2001 0a9a 0D       		.byte	0xd
 2002 0a9b 60       		.byte	0x60
 2003 0a9c 140A0000 		.4byte	0xa14
 2004 0aa0 88       		.byte	0x88
 2005 0aa1 00       		.byte	0
 2006 0aa2 19       		.uleb128 0x19
 2007 0aa3 04       		.byte	0x4
 2008 0aa4 640A0000 		.4byte	0xa64
 2009 0aa8 0C       		.uleb128 0xc
 2010 0aa9 B80A0000 		.4byte	0xab8
 2011 0aad B80A0000 		.4byte	0xab8
 2012 0ab1 0D       		.uleb128 0xd
 2013 0ab2 D0020000 		.4byte	0x2d0
 2014 0ab6 1F       		.byte	0x1f
 2015 0ab7 00       		.byte	0
 2016 0ab8 19       		.uleb128 0x19
 2017 0ab9 04       		.byte	0x4
 2018 0aba BE0A0000 		.4byte	0xabe
 2019 0abe 1B       		.uleb128 0x1b
 2020 0abf 17       		.uleb128 0x17
 2021 0ac0 510F0000 		.4byte	.LASF197
 2022 0ac4 08       		.byte	0x8
 2023 0ac5 0D       		.byte	0xd
 2024 0ac6 73       		.byte	0x73
 2025 0ac7 E40A0000 		.4byte	0xae4
 2026 0acb 11       		.uleb128 0x11
 2027 0acc 8A0C0000 		.4byte	.LASF198
 2028 0ad0 0D       		.byte	0xd
 2029 0ad1 74       		.byte	0x74
 2030 0ad2 E40A0000 		.4byte	0xae4
 2031 0ad6 00       		.byte	0
 2032 0ad7 11       		.uleb128 0x11
 2033 0ad8 91060000 		.4byte	.LASF199
 2034 0adc 0D       		.byte	0xd
 2035 0add 75       		.byte	0x75
 2036 0ade 25000000 		.4byte	0x25
 2037 0ae2 04       		.byte	0x4
 2038 0ae3 00       		.byte	0
 2039 0ae4 19       		.uleb128 0x19
 2040 0ae5 04       		.byte	0x4
 2041 0ae6 AC000000 		.4byte	0xac
 2042 0aea 17       		.uleb128 0x17
 2043 0aeb 3B150000 		.4byte	.LASF200
 2044 0aef 68       		.byte	0x68
 2045 0af0 0D       		.byte	0xd
 2046 0af1 B3       		.byte	0xb3
 2047 0af2 140C0000 		.4byte	0xc14
 2048 0af6 18       		.uleb128 0x18
 2049 0af7 5F7000   		.ascii	"_p\000"
 2050 0afa 0D       		.byte	0xd
 2051 0afb B4       		.byte	0xb4
 2052 0afc E40A0000 		.4byte	0xae4
 2053 0b00 00       		.byte	0
 2054 0b01 18       		.uleb128 0x18
 2055 0b02 5F7200   		.ascii	"_r\000"
 2056 0b05 0D       		.byte	0xd
 2057 0b06 B5       		.byte	0xb5
ARM GAS  /tmp/ccqdRJW7.s 			page 54


 2058 0b07 25000000 		.4byte	0x25
 2059 0b0b 04       		.byte	0x4
 2060 0b0c 18       		.uleb128 0x18
 2061 0b0d 5F7700   		.ascii	"_w\000"
 2062 0b10 0D       		.byte	0xd
 2063 0b11 B6       		.byte	0xb6
 2064 0b12 25000000 		.4byte	0x25
 2065 0b16 08       		.byte	0x8
 2066 0b17 11       		.uleb128 0x11
 2067 0b18 AD010000 		.4byte	.LASF201
 2068 0b1c 0D       		.byte	0xd
 2069 0b1d B7       		.byte	0xb7
 2070 0b1e BE000000 		.4byte	0xbe
 2071 0b22 0C       		.byte	0xc
 2072 0b23 11       		.uleb128 0x11
 2073 0b24 FC140000 		.4byte	.LASF202
 2074 0b28 0D       		.byte	0xd
 2075 0b29 B8       		.byte	0xb8
 2076 0b2a BE000000 		.4byte	0xbe
 2077 0b2e 0E       		.byte	0xe
 2078 0b2f 18       		.uleb128 0x18
 2079 0b30 5F626600 		.ascii	"_bf\000"
 2080 0b34 0D       		.byte	0xd
 2081 0b35 B9       		.byte	0xb9
 2082 0b36 BF0A0000 		.4byte	0xabf
 2083 0b3a 10       		.byte	0x10
 2084 0b3b 11       		.uleb128 0x11
 2085 0b3c AB030000 		.4byte	.LASF203
 2086 0b40 0D       		.byte	0xd
 2087 0b41 BA       		.byte	0xba
 2088 0b42 25000000 		.4byte	0x25
 2089 0b46 18       		.byte	0x18
 2090 0b47 11       		.uleb128 0x11
 2091 0b48 140B0000 		.4byte	.LASF204
 2092 0b4c 0D       		.byte	0xd
 2093 0b4d C1       		.byte	0xc1
 2094 0b4e CE020000 		.4byte	0x2ce
 2095 0b52 1C       		.byte	0x1c
 2096 0b53 11       		.uleb128 0x11
 2097 0b54 811C0000 		.4byte	.LASF205
 2098 0b58 0D       		.byte	0xd
 2099 0b59 C3       		.byte	0xc3
 2100 0b5a C80E0000 		.4byte	0xec8
 2101 0b5e 20       		.byte	0x20
 2102 0b5f 11       		.uleb128 0x11
 2103 0b60 CD060000 		.4byte	.LASF206
 2104 0b64 0D       		.byte	0xd
 2105 0b65 C5       		.byte	0xc5
 2106 0b66 F20E0000 		.4byte	0xef2
 2107 0b6a 24       		.byte	0x24
 2108 0b6b 11       		.uleb128 0x11
 2109 0b6c 590D0000 		.4byte	.LASF207
 2110 0b70 0D       		.byte	0xd
 2111 0b71 C8       		.byte	0xc8
 2112 0b72 160F0000 		.4byte	0xf16
 2113 0b76 28       		.byte	0x28
 2114 0b77 11       		.uleb128 0x11
ARM GAS  /tmp/ccqdRJW7.s 			page 55


 2115 0b78 83120000 		.4byte	.LASF208
 2116 0b7c 0D       		.byte	0xd
 2117 0b7d C9       		.byte	0xc9
 2118 0b7e 300F0000 		.4byte	0xf30
 2119 0b82 2C       		.byte	0x2c
 2120 0b83 18       		.uleb128 0x18
 2121 0b84 5F756200 		.ascii	"_ub\000"
 2122 0b88 0D       		.byte	0xd
 2123 0b89 CC       		.byte	0xcc
 2124 0b8a BF0A0000 		.4byte	0xabf
 2125 0b8e 30       		.byte	0x30
 2126 0b8f 18       		.uleb128 0x18
 2127 0b90 5F757000 		.ascii	"_up\000"
 2128 0b94 0D       		.byte	0xd
 2129 0b95 CD       		.byte	0xcd
 2130 0b96 E40A0000 		.4byte	0xae4
 2131 0b9a 38       		.byte	0x38
 2132 0b9b 18       		.uleb128 0x18
 2133 0b9c 5F757200 		.ascii	"_ur\000"
 2134 0ba0 0D       		.byte	0xd
 2135 0ba1 CE       		.byte	0xce
 2136 0ba2 25000000 		.4byte	0x25
 2137 0ba6 3C       		.byte	0x3c
 2138 0ba7 11       		.uleb128 0x11
 2139 0ba8 92140000 		.4byte	.LASF209
 2140 0bac 0D       		.byte	0xd
 2141 0bad D1       		.byte	0xd1
 2142 0bae 360F0000 		.4byte	0xf36
 2143 0bb2 40       		.byte	0x40
 2144 0bb3 11       		.uleb128 0x11
 2145 0bb4 8D020000 		.4byte	.LASF210
 2146 0bb8 0D       		.byte	0xd
 2147 0bb9 D2       		.byte	0xd2
 2148 0bba 460F0000 		.4byte	0xf46
 2149 0bbe 43       		.byte	0x43
 2150 0bbf 18       		.uleb128 0x18
 2151 0bc0 5F6C6200 		.ascii	"_lb\000"
 2152 0bc4 0D       		.byte	0xd
 2153 0bc5 D5       		.byte	0xd5
 2154 0bc6 BF0A0000 		.4byte	0xabf
 2155 0bca 44       		.byte	0x44
 2156 0bcb 11       		.uleb128 0x11
 2157 0bcc 89140000 		.4byte	.LASF211
 2158 0bd0 0D       		.byte	0xd
 2159 0bd1 D8       		.byte	0xd8
 2160 0bd2 25000000 		.4byte	0x25
 2161 0bd6 4C       		.byte	0x4c
 2162 0bd7 11       		.uleb128 0x11
 2163 0bd8 1B0F0000 		.4byte	.LASF212
 2164 0bdc 0D       		.byte	0xd
 2165 0bdd D9       		.byte	0xd9
 2166 0bde 9B080000 		.4byte	0x89b
 2167 0be2 50       		.byte	0x50
 2168 0be3 11       		.uleb128 0x11
 2169 0be4 E0030000 		.4byte	.LASF213
 2170 0be8 0D       		.byte	0xd
 2171 0be9 DC       		.byte	0xdc
ARM GAS  /tmp/ccqdRJW7.s 			page 56


 2172 0bea 320C0000 		.4byte	0xc32
 2173 0bee 54       		.byte	0x54
 2174 0bef 11       		.uleb128 0x11
 2175 0bf0 87020000 		.4byte	.LASF214
 2176 0bf4 0D       		.byte	0xd
 2177 0bf5 E0       		.byte	0xe0
 2178 0bf6 1C090000 		.4byte	0x91c
 2179 0bfa 58       		.byte	0x58
 2180 0bfb 11       		.uleb128 0x11
 2181 0bfc DC000000 		.4byte	.LASF215
 2182 0c00 0D       		.byte	0xd
 2183 0c01 E2       		.byte	0xe2
 2184 0c02 11090000 		.4byte	0x911
 2185 0c06 5C       		.byte	0x5c
 2186 0c07 11       		.uleb128 0x11
 2187 0c08 96190000 		.4byte	.LASF216
 2188 0c0c 0D       		.byte	0xd
 2189 0c0d E3       		.byte	0xe3
 2190 0c0e 25000000 		.4byte	0x25
 2191 0c12 64       		.byte	0x64
 2192 0c13 00       		.byte	0
 2193 0c14 1C       		.uleb128 0x1c
 2194 0c15 25000000 		.4byte	0x25
 2195 0c19 320C0000 		.4byte	0xc32
 2196 0c1d 1D       		.uleb128 0x1d
 2197 0c1e 320C0000 		.4byte	0xc32
 2198 0c22 1D       		.uleb128 0x1d
 2199 0c23 CE020000 		.4byte	0x2ce
 2200 0c27 1D       		.uleb128 0x1d
 2201 0c28 B60E0000 		.4byte	0xeb6
 2202 0c2c 1D       		.uleb128 0x1d
 2203 0c2d 25000000 		.4byte	0x25
 2204 0c31 00       		.byte	0
 2205 0c32 19       		.uleb128 0x19
 2206 0c33 04       		.byte	0x4
 2207 0c34 3D0C0000 		.4byte	0xc3d
 2208 0c38 04       		.uleb128 0x4
 2209 0c39 320C0000 		.4byte	0xc32
 2210 0c3d 1E       		.uleb128 0x1e
 2211 0c3e 27040000 		.4byte	.LASF217
 2212 0c42 2804     		.2byte	0x428
 2213 0c44 0D       		.byte	0xd
 2214 0c45 3802     		.2byte	0x238
 2215 0c47 B60E0000 		.4byte	0xeb6
 2216 0c4b 1F       		.uleb128 0x1f
 2217 0c4c F0       		.byte	0xf0
 2218 0c4d 0D       		.byte	0xd
 2219 0c4e 5602     		.2byte	0x256
 2220 0c50 920D0000 		.4byte	0xd92
 2221 0c54 20       		.uleb128 0x20
 2222 0c55 D0       		.byte	0xd0
 2223 0c56 0D       		.byte	0xd
 2224 0c57 5802     		.2byte	0x258
 2225 0c59 550D0000 		.4byte	0xd55
 2226 0c5d 07       		.uleb128 0x7
 2227 0c5e 4D050000 		.4byte	.LASF218
 2228 0c62 0D       		.byte	0xd
ARM GAS  /tmp/ccqdRJW7.s 			page 57


 2229 0c63 5902     		.2byte	0x259
 2230 0c65 3C000000 		.4byte	0x3c
 2231 0c69 00       		.byte	0
 2232 0c6a 07       		.uleb128 0x7
 2233 0c6b 2A0D0000 		.4byte	.LASF219
 2234 0c6f 0D       		.byte	0xd
 2235 0c70 5A02     		.2byte	0x25a
 2236 0c72 B60E0000 		.4byte	0xeb6
 2237 0c76 04       		.byte	0x4
 2238 0c77 07       		.uleb128 0x7
 2239 0c78 B60F0000 		.4byte	.LASF220
 2240 0c7c 0D       		.byte	0xd
 2241 0c7d 5B02     		.2byte	0x25b
 2242 0c7f E80F0000 		.4byte	0xfe8
 2243 0c83 08       		.byte	0x8
 2244 0c84 07       		.uleb128 0x7
 2245 0c85 18090000 		.4byte	.LASF221
 2246 0c89 0D       		.byte	0xd
 2247 0c8a 5C02     		.2byte	0x25c
 2248 0c8c 9B090000 		.4byte	0x99b
 2249 0c90 24       		.byte	0x24
 2250 0c91 07       		.uleb128 0x7
 2251 0c92 7B090000 		.4byte	.LASF222
 2252 0c96 0D       		.byte	0xd
 2253 0c97 5D02     		.2byte	0x25d
 2254 0c99 25000000 		.4byte	0x25
 2255 0c9d 48       		.byte	0x48
 2256 0c9e 07       		.uleb128 0x7
 2257 0c9f F1100000 		.4byte	.LASF223
 2258 0ca3 0D       		.byte	0xd
 2259 0ca4 5E02     		.2byte	0x25e
 2260 0ca6 11010000 		.4byte	0x111
 2261 0caa 50       		.byte	0x50
 2262 0cab 07       		.uleb128 0x7
 2263 0cac 0E1C0000 		.4byte	.LASF224
 2264 0cb0 0D       		.byte	0xd
 2265 0cb1 5F02     		.2byte	0x25f
 2266 0cb3 A30F0000 		.4byte	0xfa3
 2267 0cb7 58       		.byte	0x58
 2268 0cb8 07       		.uleb128 0x7
 2269 0cb9 98140000 		.4byte	.LASF225
 2270 0cbd 0D       		.byte	0xd
 2271 0cbe 6002     		.2byte	0x260
 2272 0cc0 11090000 		.4byte	0x911
 2273 0cc4 68       		.byte	0x68
 2274 0cc5 07       		.uleb128 0x7
 2275 0cc6 69040000 		.4byte	.LASF226
 2276 0cca 0D       		.byte	0xd
 2277 0ccb 6102     		.2byte	0x261
 2278 0ccd 11090000 		.4byte	0x911
 2279 0cd1 70       		.byte	0x70
 2280 0cd2 07       		.uleb128 0x7
 2281 0cd3 75100000 		.4byte	.LASF227
 2282 0cd7 0D       		.byte	0xd
 2283 0cd8 6202     		.2byte	0x262
 2284 0cda 11090000 		.4byte	0x911
 2285 0cde 78       		.byte	0x78
ARM GAS  /tmp/ccqdRJW7.s 			page 58


 2286 0cdf 07       		.uleb128 0x7
 2287 0ce0 610F0000 		.4byte	.LASF228
 2288 0ce4 0D       		.byte	0xd
 2289 0ce5 6302     		.2byte	0x263
 2290 0ce7 F80F0000 		.4byte	0xff8
 2291 0ceb 80       		.byte	0x80
 2292 0cec 07       		.uleb128 0x7
 2293 0ced 080B0000 		.4byte	.LASF229
 2294 0cf1 0D       		.byte	0xd
 2295 0cf2 6402     		.2byte	0x264
 2296 0cf4 08100000 		.4byte	0x1008
 2297 0cf8 88       		.byte	0x88
 2298 0cf9 07       		.uleb128 0x7
 2299 0cfa 22130000 		.4byte	.LASF230
 2300 0cfe 0D       		.byte	0xd
 2301 0cff 6502     		.2byte	0x265
 2302 0d01 25000000 		.4byte	0x25
 2303 0d05 A0       		.byte	0xa0
 2304 0d06 07       		.uleb128 0x7
 2305 0d07 D6100000 		.4byte	.LASF231
 2306 0d0b 0D       		.byte	0xd
 2307 0d0c 6602     		.2byte	0x266
 2308 0d0e 11090000 		.4byte	0x911
 2309 0d12 A4       		.byte	0xa4
 2310 0d13 07       		.uleb128 0x7
 2311 0d14 000A0000 		.4byte	.LASF232
 2312 0d18 0D       		.byte	0xd
 2313 0d19 6702     		.2byte	0x267
 2314 0d1b 11090000 		.4byte	0x911
 2315 0d1f AC       		.byte	0xac
 2316 0d20 07       		.uleb128 0x7
 2317 0d21 75060000 		.4byte	.LASF233
 2318 0d25 0D       		.byte	0xd
 2319 0d26 6802     		.2byte	0x268
 2320 0d28 11090000 		.4byte	0x911
 2321 0d2c B4       		.byte	0xb4
 2322 0d2d 07       		.uleb128 0x7
 2323 0d2e 50160000 		.4byte	.LASF234
 2324 0d32 0D       		.byte	0xd
 2325 0d33 6902     		.2byte	0x269
 2326 0d35 11090000 		.4byte	0x911
 2327 0d39 BC       		.byte	0xbc
 2328 0d3a 07       		.uleb128 0x7
 2329 0d3b EB0F0000 		.4byte	.LASF235
 2330 0d3f 0D       		.byte	0xd
 2331 0d40 6A02     		.2byte	0x26a
 2332 0d42 11090000 		.4byte	0x911
 2333 0d46 C4       		.byte	0xc4
 2334 0d47 07       		.uleb128 0x7
 2335 0d48 89150000 		.4byte	.LASF236
 2336 0d4c 0D       		.byte	0xd
 2337 0d4d 6B02     		.2byte	0x26b
 2338 0d4f 25000000 		.4byte	0x25
 2339 0d53 CC       		.byte	0xcc
 2340 0d54 00       		.byte	0
 2341 0d55 20       		.uleb128 0x20
 2342 0d56 F0       		.byte	0xf0
ARM GAS  /tmp/ccqdRJW7.s 			page 59


 2343 0d57 0D       		.byte	0xd
 2344 0d58 7102     		.2byte	0x271
 2345 0d5a 790D0000 		.4byte	0xd79
 2346 0d5e 07       		.uleb128 0x7
 2347 0d5f E4100000 		.4byte	.LASF237
 2348 0d63 0D       		.byte	0xd
 2349 0d64 7302     		.2byte	0x273
 2350 0d66 18100000 		.4byte	0x1018
 2351 0d6a 00       		.byte	0
 2352 0d6b 07       		.uleb128 0x7
 2353 0d6c 03080000 		.4byte	.LASF238
 2354 0d70 0D       		.byte	0xd
 2355 0d71 7402     		.2byte	0x274
 2356 0d73 28100000 		.4byte	0x1028
 2357 0d77 78       		.byte	0x78
 2358 0d78 00       		.byte	0
 2359 0d79 21       		.uleb128 0x21
 2360 0d7a 27040000 		.4byte	.LASF217
 2361 0d7e 0D       		.byte	0xd
 2362 0d7f 6C02     		.2byte	0x26c
 2363 0d81 540C0000 		.4byte	0xc54
 2364 0d85 21       		.uleb128 0x21
 2365 0d86 9C020000 		.4byte	.LASF239
 2366 0d8a 0D       		.byte	0xd
 2367 0d8b 7502     		.2byte	0x275
 2368 0d8d 550D0000 		.4byte	0xd55
 2369 0d91 00       		.byte	0
 2370 0d92 07       		.uleb128 0x7
 2371 0d93 810A0000 		.4byte	.LASF240
 2372 0d97 0D       		.byte	0xd
 2373 0d98 3A02     		.2byte	0x23a
 2374 0d9a 25000000 		.4byte	0x25
 2375 0d9e 00       		.byte	0
 2376 0d9f 07       		.uleb128 0x7
 2377 0da0 FC070000 		.4byte	.LASF241
 2378 0da4 0D       		.byte	0xd
 2379 0da5 3F02     		.2byte	0x23f
 2380 0da7 9D0F0000 		.4byte	0xf9d
 2381 0dab 04       		.byte	0x4
 2382 0dac 07       		.uleb128 0x7
 2383 0dad 7E000000 		.4byte	.LASF242
 2384 0db1 0D       		.byte	0xd
 2385 0db2 3F02     		.2byte	0x23f
 2386 0db4 9D0F0000 		.4byte	0xf9d
 2387 0db8 08       		.byte	0x8
 2388 0db9 07       		.uleb128 0x7
 2389 0dba DF050000 		.4byte	.LASF243
 2390 0dbe 0D       		.byte	0xd
 2391 0dbf 3F02     		.2byte	0x23f
 2392 0dc1 9D0F0000 		.4byte	0xf9d
 2393 0dc5 0C       		.byte	0xc
 2394 0dc6 07       		.uleb128 0x7
 2395 0dc7 40010000 		.4byte	.LASF244
 2396 0dcb 0D       		.byte	0xd
 2397 0dcc 4102     		.2byte	0x241
 2398 0dce 25000000 		.4byte	0x25
 2399 0dd2 10       		.byte	0x10
ARM GAS  /tmp/ccqdRJW7.s 			page 60


 2400 0dd3 07       		.uleb128 0x7
 2401 0dd4 B8100000 		.4byte	.LASF245
 2402 0dd8 0D       		.byte	0xd
 2403 0dd9 4202     		.2byte	0x242
 2404 0ddb 38100000 		.4byte	0x1038
 2405 0ddf 14       		.byte	0x14
 2406 0de0 07       		.uleb128 0x7
 2407 0de1 45170000 		.4byte	.LASF246
 2408 0de5 0D       		.byte	0xd
 2409 0de6 4402     		.2byte	0x244
 2410 0de8 25000000 		.4byte	0x25
 2411 0dec 30       		.byte	0x30
 2412 0ded 07       		.uleb128 0x7
 2413 0dee 22030000 		.4byte	.LASF247
 2414 0df2 0D       		.byte	0xd
 2415 0df3 4502     		.2byte	0x245
 2416 0df5 EC0E0000 		.4byte	0xeec
 2417 0df9 34       		.byte	0x34
 2418 0dfa 07       		.uleb128 0x7
 2419 0dfb 29180000 		.4byte	.LASF248
 2420 0dff 0D       		.byte	0xd
 2421 0e00 4702     		.2byte	0x247
 2422 0e02 25000000 		.4byte	0x25
 2423 0e06 38       		.byte	0x38
 2424 0e07 07       		.uleb128 0x7
 2425 0e08 C3140000 		.4byte	.LASF249
 2426 0e0c 0D       		.byte	0xd
 2427 0e0d 4902     		.2byte	0x249
 2428 0e0f 53100000 		.4byte	0x1053
 2429 0e13 3C       		.byte	0x3c
 2430 0e14 07       		.uleb128 0x7
 2431 0e15 E7050000 		.4byte	.LASF250
 2432 0e19 0D       		.byte	0xd
 2433 0e1a 4C02     		.2byte	0x24c
 2434 0e1c 85090000 		.4byte	0x985
 2435 0e20 40       		.byte	0x40
 2436 0e21 07       		.uleb128 0x7
 2437 0e22 D5050000 		.4byte	.LASF251
 2438 0e26 0D       		.byte	0xd
 2439 0e27 4D02     		.2byte	0x24d
 2440 0e29 25000000 		.4byte	0x25
 2441 0e2d 44       		.byte	0x44
 2442 0e2e 07       		.uleb128 0x7
 2443 0e2f 14160000 		.4byte	.LASF252
 2444 0e33 0D       		.byte	0xd
 2445 0e34 4E02     		.2byte	0x24e
 2446 0e36 85090000 		.4byte	0x985
 2447 0e3a 48       		.byte	0x48
 2448 0e3b 07       		.uleb128 0x7
 2449 0e3c E30E0000 		.4byte	.LASF253
 2450 0e40 0D       		.byte	0xd
 2451 0e41 4F02     		.2byte	0x24f
 2452 0e43 59100000 		.4byte	0x1059
 2453 0e47 4C       		.byte	0x4c
 2454 0e48 07       		.uleb128 0x7
 2455 0e49 D9010000 		.4byte	.LASF254
 2456 0e4d 0D       		.byte	0xd
ARM GAS  /tmp/ccqdRJW7.s 			page 61


 2457 0e4e 5202     		.2byte	0x252
 2458 0e50 25000000 		.4byte	0x25
 2459 0e54 50       		.byte	0x50
 2460 0e55 07       		.uleb128 0x7
 2461 0e56 B9090000 		.4byte	.LASF255
 2462 0e5a 0D       		.byte	0xd
 2463 0e5b 5302     		.2byte	0x253
 2464 0e5d B60E0000 		.4byte	0xeb6
 2465 0e61 54       		.byte	0x54
 2466 0e62 07       		.uleb128 0x7
 2467 0e63 4D0A0000 		.4byte	.LASF256
 2468 0e67 0D       		.byte	0xd
 2469 0e68 7602     		.2byte	0x276
 2470 0e6a 4B0C0000 		.4byte	0xc4b
 2471 0e6e 58       		.byte	0x58
 2472 0e6f 22       		.uleb128 0x22
 2473 0e70 E5000000 		.4byte	.LASF194
 2474 0e74 0D       		.byte	0xd
 2475 0e75 7A02     		.2byte	0x27a
 2476 0e77 A20A0000 		.4byte	0xaa2
 2477 0e7b 4801     		.2byte	0x148
 2478 0e7d 22       		.uleb128 0x22
 2479 0e7e 19130000 		.4byte	.LASF257
 2480 0e82 0D       		.byte	0xd
 2481 0e83 7B02     		.2byte	0x27b
 2482 0e85 640A0000 		.4byte	0xa64
 2483 0e89 4C01     		.2byte	0x14c
 2484 0e8b 22       		.uleb128 0x22
 2485 0e8c FF010000 		.4byte	.LASF258
 2486 0e90 0D       		.byte	0xd
 2487 0e91 7F02     		.2byte	0x27f
 2488 0e93 6A100000 		.4byte	0x106a
 2489 0e97 DC02     		.2byte	0x2dc
 2490 0e99 22       		.uleb128 0x22
 2491 0e9a A5140000 		.4byte	.LASF259
 2492 0e9e 0D       		.byte	0xd
 2493 0e9f 8402     		.2byte	0x284
 2494 0ea1 620F0000 		.4byte	0xf62
 2495 0ea5 E002     		.2byte	0x2e0
 2496 0ea7 22       		.uleb128 0x22
 2497 0ea8 4D040000 		.4byte	.LASF260
 2498 0eac 0D       		.byte	0xd
 2499 0ead 8502     		.2byte	0x285
 2500 0eaf 76100000 		.4byte	0x1076
 2501 0eb3 EC02     		.2byte	0x2ec
 2502 0eb5 00       		.byte	0
 2503 0eb6 19       		.uleb128 0x19
 2504 0eb7 04       		.byte	0x4
 2505 0eb8 BC0E0000 		.4byte	0xebc
 2506 0ebc 05       		.uleb128 0x5
 2507 0ebd 01       		.byte	0x1
 2508 0ebe 08       		.byte	0x8
 2509 0ebf 9C120000 		.4byte	.LASF261
 2510 0ec3 04       		.uleb128 0x4
 2511 0ec4 BC0E0000 		.4byte	0xebc
 2512 0ec8 19       		.uleb128 0x19
 2513 0ec9 04       		.byte	0x4
ARM GAS  /tmp/ccqdRJW7.s 			page 62


 2514 0eca 140C0000 		.4byte	0xc14
 2515 0ece 1C       		.uleb128 0x1c
 2516 0ecf 25000000 		.4byte	0x25
 2517 0ed3 EC0E0000 		.4byte	0xeec
 2518 0ed7 1D       		.uleb128 0x1d
 2519 0ed8 320C0000 		.4byte	0xc32
 2520 0edc 1D       		.uleb128 0x1d
 2521 0edd CE020000 		.4byte	0x2ce
 2522 0ee1 1D       		.uleb128 0x1d
 2523 0ee2 EC0E0000 		.4byte	0xeec
 2524 0ee6 1D       		.uleb128 0x1d
 2525 0ee7 25000000 		.4byte	0x25
 2526 0eeb 00       		.byte	0
 2527 0eec 19       		.uleb128 0x19
 2528 0eed 04       		.byte	0x4
 2529 0eee C30E0000 		.4byte	0xec3
 2530 0ef2 19       		.uleb128 0x19
 2531 0ef3 04       		.byte	0x4
 2532 0ef4 CE0E0000 		.4byte	0xece
 2533 0ef8 1C       		.uleb128 0x1c
 2534 0ef9 A6080000 		.4byte	0x8a6
 2535 0efd 160F0000 		.4byte	0xf16
 2536 0f01 1D       		.uleb128 0x1d
 2537 0f02 320C0000 		.4byte	0xc32
 2538 0f06 1D       		.uleb128 0x1d
 2539 0f07 CE020000 		.4byte	0x2ce
 2540 0f0b 1D       		.uleb128 0x1d
 2541 0f0c A6080000 		.4byte	0x8a6
 2542 0f10 1D       		.uleb128 0x1d
 2543 0f11 25000000 		.4byte	0x25
 2544 0f15 00       		.byte	0
 2545 0f16 19       		.uleb128 0x19
 2546 0f17 04       		.byte	0x4
 2547 0f18 F80E0000 		.4byte	0xef8
 2548 0f1c 1C       		.uleb128 0x1c
 2549 0f1d 25000000 		.4byte	0x25
 2550 0f21 300F0000 		.4byte	0xf30
 2551 0f25 1D       		.uleb128 0x1d
 2552 0f26 320C0000 		.4byte	0xc32
 2553 0f2a 1D       		.uleb128 0x1d
 2554 0f2b CE020000 		.4byte	0x2ce
 2555 0f2f 00       		.byte	0
 2556 0f30 19       		.uleb128 0x19
 2557 0f31 04       		.byte	0x4
 2558 0f32 1C0F0000 		.4byte	0xf1c
 2559 0f36 0C       		.uleb128 0xc
 2560 0f37 AC000000 		.4byte	0xac
 2561 0f3b 460F0000 		.4byte	0xf46
 2562 0f3f 0D       		.uleb128 0xd
 2563 0f40 D0020000 		.4byte	0x2d0
 2564 0f44 02       		.byte	0x2
 2565 0f45 00       		.byte	0
 2566 0f46 0C       		.uleb128 0xc
 2567 0f47 AC000000 		.4byte	0xac
 2568 0f4b 560F0000 		.4byte	0xf56
 2569 0f4f 0D       		.uleb128 0xd
 2570 0f50 D0020000 		.4byte	0x2d0
ARM GAS  /tmp/ccqdRJW7.s 			page 63


 2571 0f54 00       		.byte	0
 2572 0f55 00       		.byte	0
 2573 0f56 08       		.uleb128 0x8
 2574 0f57 CC1A0000 		.4byte	.LASF262
 2575 0f5b 0D       		.byte	0xd
 2576 0f5c 1D01     		.2byte	0x11d
 2577 0f5e EA0A0000 		.4byte	0xaea
 2578 0f62 23       		.uleb128 0x23
 2579 0f63 A1120000 		.4byte	.LASF263
 2580 0f67 0C       		.byte	0xc
 2581 0f68 0D       		.byte	0xd
 2582 0f69 2101     		.2byte	0x121
 2583 0f6b 970F0000 		.4byte	0xf97
 2584 0f6f 07       		.uleb128 0x7
 2585 0f70 020B0000 		.4byte	.LASF174
 2586 0f74 0D       		.byte	0xd
 2587 0f75 2301     		.2byte	0x123
 2588 0f77 970F0000 		.4byte	0xf97
 2589 0f7b 00       		.byte	0
 2590 0f7c 07       		.uleb128 0x7
 2591 0f7d 6E0A0000 		.4byte	.LASF264
 2592 0f81 0D       		.byte	0xd
 2593 0f82 2401     		.2byte	0x124
 2594 0f84 25000000 		.4byte	0x25
 2595 0f88 04       		.byte	0x4
 2596 0f89 07       		.uleb128 0x7
 2597 0f8a B2100000 		.4byte	.LASF265
 2598 0f8e 0D       		.byte	0xd
 2599 0f8f 2501     		.2byte	0x125
 2600 0f91 9D0F0000 		.4byte	0xf9d
 2601 0f95 08       		.byte	0x8
 2602 0f96 00       		.byte	0
 2603 0f97 19       		.uleb128 0x19
 2604 0f98 04       		.byte	0x4
 2605 0f99 620F0000 		.4byte	0xf62
 2606 0f9d 19       		.uleb128 0x19
 2607 0f9e 04       		.byte	0x4
 2608 0f9f 560F0000 		.4byte	0xf56
 2609 0fa3 23       		.uleb128 0x23
 2610 0fa4 871C0000 		.4byte	.LASF266
 2611 0fa8 0E       		.byte	0xe
 2612 0fa9 0D       		.byte	0xd
 2613 0faa 3D01     		.2byte	0x13d
 2614 0fac D80F0000 		.4byte	0xfd8
 2615 0fb0 07       		.uleb128 0x7
 2616 0fb1 490D0000 		.4byte	.LASF267
 2617 0fb5 0D       		.byte	0xd
 2618 0fb6 3E01     		.2byte	0x13e
 2619 0fb8 D80F0000 		.4byte	0xfd8
 2620 0fbc 00       		.byte	0
 2621 0fbd 07       		.uleb128 0x7
 2622 0fbe 6F070000 		.4byte	.LASF268
 2623 0fc2 0D       		.byte	0xd
 2624 0fc3 3F01     		.2byte	0x13f
 2625 0fc5 D80F0000 		.4byte	0xfd8
 2626 0fc9 06       		.byte	0x6
 2627 0fca 07       		.uleb128 0x7
ARM GAS  /tmp/ccqdRJW7.s 			page 64


 2628 0fcb 5E030000 		.4byte	.LASF269
 2629 0fcf 0D       		.byte	0xd
 2630 0fd0 4001     		.2byte	0x140
 2631 0fd2 D0000000 		.4byte	0xd0
 2632 0fd6 0C       		.byte	0xc
 2633 0fd7 00       		.byte	0
 2634 0fd8 0C       		.uleb128 0xc
 2635 0fd9 D0000000 		.4byte	0xd0
 2636 0fdd E80F0000 		.4byte	0xfe8
 2637 0fe1 0D       		.uleb128 0xd
 2638 0fe2 D0020000 		.4byte	0x2d0
 2639 0fe6 02       		.byte	0x2
 2640 0fe7 00       		.byte	0
 2641 0fe8 0C       		.uleb128 0xc
 2642 0fe9 BC0E0000 		.4byte	0xebc
 2643 0fed F80F0000 		.4byte	0xff8
 2644 0ff1 0D       		.uleb128 0xd
 2645 0ff2 D0020000 		.4byte	0x2d0
 2646 0ff6 19       		.byte	0x19
 2647 0ff7 00       		.byte	0
 2648 0ff8 0C       		.uleb128 0xc
 2649 0ff9 BC0E0000 		.4byte	0xebc
 2650 0ffd 08100000 		.4byte	0x1008
 2651 1001 0D       		.uleb128 0xd
 2652 1002 D0020000 		.4byte	0x2d0
 2653 1006 07       		.byte	0x7
 2654 1007 00       		.byte	0
 2655 1008 0C       		.uleb128 0xc
 2656 1009 BC0E0000 		.4byte	0xebc
 2657 100d 18100000 		.4byte	0x1018
 2658 1011 0D       		.uleb128 0xd
 2659 1012 D0020000 		.4byte	0x2d0
 2660 1016 17       		.byte	0x17
 2661 1017 00       		.byte	0
 2662 1018 0C       		.uleb128 0xc
 2663 1019 E40A0000 		.4byte	0xae4
 2664 101d 28100000 		.4byte	0x1028
 2665 1021 0D       		.uleb128 0xd
 2666 1022 D0020000 		.4byte	0x2d0
 2667 1026 1D       		.byte	0x1d
 2668 1027 00       		.byte	0
 2669 1028 0C       		.uleb128 0xc
 2670 1029 3C000000 		.4byte	0x3c
 2671 102d 38100000 		.4byte	0x1038
 2672 1031 0D       		.uleb128 0xd
 2673 1032 D0020000 		.4byte	0x2d0
 2674 1036 1D       		.byte	0x1d
 2675 1037 00       		.byte	0
 2676 1038 0C       		.uleb128 0xc
 2677 1039 BC0E0000 		.4byte	0xebc
 2678 103d 48100000 		.4byte	0x1048
 2679 1041 0D       		.uleb128 0xd
 2680 1042 D0020000 		.4byte	0x2d0
 2681 1046 18       		.byte	0x18
 2682 1047 00       		.byte	0
 2683 1048 24       		.uleb128 0x24
 2684 1049 53100000 		.4byte	0x1053
ARM GAS  /tmp/ccqdRJW7.s 			page 65


 2685 104d 1D       		.uleb128 0x1d
 2686 104e 320C0000 		.4byte	0xc32
 2687 1052 00       		.byte	0
 2688 1053 19       		.uleb128 0x19
 2689 1054 04       		.byte	0x4
 2690 1055 48100000 		.4byte	0x1048
 2691 1059 19       		.uleb128 0x19
 2692 105a 04       		.byte	0x4
 2693 105b 85090000 		.4byte	0x985
 2694 105f 24       		.uleb128 0x24
 2695 1060 6A100000 		.4byte	0x106a
 2696 1064 1D       		.uleb128 0x1d
 2697 1065 25000000 		.4byte	0x25
 2698 1069 00       		.byte	0
 2699 106a 19       		.uleb128 0x19
 2700 106b 04       		.byte	0x4
 2701 106c 70100000 		.4byte	0x1070
 2702 1070 19       		.uleb128 0x19
 2703 1071 04       		.byte	0x4
 2704 1072 5F100000 		.4byte	0x105f
 2705 1076 0C       		.uleb128 0xc
 2706 1077 560F0000 		.4byte	0xf56
 2707 107b 86100000 		.4byte	0x1086
 2708 107f 0D       		.uleb128 0xd
 2709 1080 D0020000 		.4byte	0x2d0
 2710 1084 02       		.byte	0x2
 2711 1085 00       		.byte	0
 2712 1086 0E       		.uleb128 0xe
 2713 1087 7D140000 		.4byte	.LASF270
 2714 108b 0D       		.byte	0xd
 2715 108c FD02     		.2byte	0x2fd
 2716 108e 320C0000 		.4byte	0xc32
 2717 1092 0E       		.uleb128 0xe
 2718 1093 F2170000 		.4byte	.LASF271
 2719 1097 0D       		.byte	0xd
 2720 1098 FE02     		.2byte	0x2fe
 2721 109a 380C0000 		.4byte	0xc38
 2722 109e 25       		.uleb128 0x25
 2723 109f 73746400 		.ascii	"std\000"
 2724 10a3 21       		.byte	0x21
 2725 10a4 00       		.byte	0
 2726 10a5 A5120000 		.4byte	0x12a5
 2727 10a9 26       		.uleb128 0x26
 2728 10aa 301C0000 		.4byte	.LASF274
 2729 10ae 12       		.byte	0x12
 2730 10af DF       		.byte	0xdf
 2731 10b0 27       		.uleb128 0x27
 2732 10b1 12       		.byte	0x12
 2733 10b2 DF       		.byte	0xdf
 2734 10b3 A9100000 		.4byte	0x10a9
 2735 10b7 28       		.uleb128 0x28
 2736 10b8 0E       		.byte	0xe
 2737 10b9 7C       		.byte	0x7c
 2738 10ba 2F130000 		.4byte	0x132f
 2739 10be 28       		.uleb128 0x28
 2740 10bf 0E       		.byte	0xe
 2741 10c0 7D       		.byte	0x7d
ARM GAS  /tmp/ccqdRJW7.s 			page 66


 2742 10c1 5F130000 		.4byte	0x135f
 2743 10c5 28       		.uleb128 0x28
 2744 10c6 0E       		.byte	0xe
 2745 10c7 81       		.byte	0x81
 2746 10c8 D1130000 		.4byte	0x13d1
 2747 10cc 28       		.uleb128 0x28
 2748 10cd 0E       		.byte	0xe
 2749 10ce 87       		.byte	0x87
 2750 10cf E6130000 		.4byte	0x13e6
 2751 10d3 28       		.uleb128 0x28
 2752 10d4 0E       		.byte	0xe
 2753 10d5 88       		.byte	0x88
 2754 10d6 02140000 		.4byte	0x1402
 2755 10da 28       		.uleb128 0x28
 2756 10db 0E       		.byte	0xe
 2757 10dc 89       		.byte	0x89
 2758 10dd 17140000 		.4byte	0x1417
 2759 10e1 28       		.uleb128 0x28
 2760 10e2 0E       		.byte	0xe
 2761 10e3 8A       		.byte	0x8a
 2762 10e4 2C140000 		.4byte	0x142c
 2763 10e8 28       		.uleb128 0x28
 2764 10e9 0E       		.byte	0xe
 2765 10ea 8C       		.byte	0x8c
 2766 10eb 55140000 		.4byte	0x1455
 2767 10ef 28       		.uleb128 0x28
 2768 10f0 0E       		.byte	0xe
 2769 10f1 8F       		.byte	0x8f
 2770 10f2 6F140000 		.4byte	0x146f
 2771 10f6 28       		.uleb128 0x28
 2772 10f7 0E       		.byte	0xe
 2773 10f8 91       		.byte	0x91
 2774 10f9 84140000 		.4byte	0x1484
 2775 10fd 28       		.uleb128 0x28
 2776 10fe 0E       		.byte	0xe
 2777 10ff 94       		.byte	0x94
 2778 1100 9E140000 		.4byte	0x149e
 2779 1104 28       		.uleb128 0x28
 2780 1105 0E       		.byte	0xe
 2781 1106 95       		.byte	0x95
 2782 1107 B8140000 		.4byte	0x14b8
 2783 110b 28       		.uleb128 0x28
 2784 110c 0E       		.byte	0xe
 2785 110d 96       		.byte	0x96
 2786 110e E9140000 		.4byte	0x14e9
 2787 1112 28       		.uleb128 0x28
 2788 1113 0E       		.byte	0xe
 2789 1114 98       		.byte	0x98
 2790 1115 08150000 		.4byte	0x1508
 2791 1119 28       		.uleb128 0x28
 2792 111a 0E       		.byte	0xe
 2793 111b 9E       		.byte	0x9e
 2794 111c 28150000 		.4byte	0x1528
 2795 1120 28       		.uleb128 0x28
 2796 1121 0E       		.byte	0xe
 2797 1122 A0       		.byte	0xa0
 2798 1123 33150000 		.4byte	0x1533
ARM GAS  /tmp/ccqdRJW7.s 			page 67


 2799 1127 28       		.uleb128 0x28
 2800 1128 0E       		.byte	0xe
 2801 1129 A1       		.byte	0xa1
 2802 112a 44150000 		.4byte	0x1544
 2803 112e 28       		.uleb128 0x28
 2804 112f 0E       		.byte	0xe
 2805 1130 A2       		.byte	0xa2
 2806 1131 64150000 		.4byte	0x1564
 2807 1135 28       		.uleb128 0x28
 2808 1136 0E       		.byte	0xe
 2809 1137 A3       		.byte	0xa3
 2810 1138 83150000 		.4byte	0x1583
 2811 113c 28       		.uleb128 0x28
 2812 113d 0E       		.byte	0xe
 2813 113e A4       		.byte	0xa4
 2814 113f A2150000 		.4byte	0x15a2
 2815 1143 28       		.uleb128 0x28
 2816 1144 0E       		.byte	0xe
 2817 1145 A6       		.byte	0xa6
 2818 1146 B7150000 		.4byte	0x15b7
 2819 114a 28       		.uleb128 0x28
 2820 114b 0E       		.byte	0xe
 2821 114c A7       		.byte	0xa7
 2822 114d DC150000 		.4byte	0x15dc
 2823 1151 29       		.uleb128 0x29
 2824 1152 0E       		.byte	0xe
 2825 1153 0401     		.2byte	0x104
 2826 1155 8F130000 		.4byte	0x138f
 2827 1159 29       		.uleb128 0x29
 2828 115a 0E       		.byte	0xe
 2829 115b 0901     		.2byte	0x109
 2830 115d EF120000 		.4byte	0x12ef
 2831 1161 29       		.uleb128 0x29
 2832 1162 0E       		.byte	0xe
 2833 1163 0A01     		.2byte	0x10a
 2834 1165 F6150000 		.4byte	0x15f6
 2835 1169 29       		.uleb128 0x29
 2836 116a 0E       		.byte	0xe
 2837 116b 0C01     		.2byte	0x10c
 2838 116d 10160000 		.4byte	0x1610
 2839 1171 29       		.uleb128 0x29
 2840 1172 0E       		.byte	0xe
 2841 1173 0D01     		.2byte	0x10d
 2842 1175 63160000 		.4byte	0x1663
 2843 1179 29       		.uleb128 0x29
 2844 117a 0E       		.byte	0xe
 2845 117b 0E01     		.2byte	0x10e
 2846 117d 25160000 		.4byte	0x1625
 2847 1181 29       		.uleb128 0x29
 2848 1182 0E       		.byte	0xe
 2849 1183 0F01     		.2byte	0x10f
 2850 1185 44160000 		.4byte	0x1644
 2851 1189 29       		.uleb128 0x29
 2852 118a 0E       		.byte	0xe
 2853 118b 1001     		.2byte	0x110
 2854 118d 84160000 		.4byte	0x1684
 2855 1191 2A       		.uleb128 0x2a
ARM GAS  /tmp/ccqdRJW7.s 			page 68


 2856 1192 61627300 		.ascii	"abs\000"
 2857 1196 0E       		.byte	0xe
 2858 1197 B4       		.byte	0xb4
 2859 1198 3B060000 		.4byte	.LASF589
 2860 119c 70000000 		.4byte	0x70
 2861 11a0 AA110000 		.4byte	0x11aa
 2862 11a4 1D       		.uleb128 0x1d
 2863 11a5 70000000 		.4byte	0x70
 2864 11a9 00       		.byte	0
 2865 11aa 29       		.uleb128 0x29
 2866 11ab 0F       		.byte	0xf
 2867 11ac 4D04     		.2byte	0x44d
 2868 11ae 84170000 		.4byte	0x1784
 2869 11b2 29       		.uleb128 0x29
 2870 11b3 0F       		.byte	0xf
 2871 11b4 4E04     		.2byte	0x44e
 2872 11b6 79170000 		.4byte	0x1779
 2873 11ba 2B       		.uleb128 0x2b
 2874 11bb 91070000 		.4byte	.LASF272
 2875 11bf 0F       		.byte	0xf
 2876 11c0 9301     		.2byte	0x193
 2877 11c2 02170000 		.4byte	.LASF590
 2878 11c6 77000000 		.4byte	0x77
 2879 11ca D9110000 		.4byte	0x11d9
 2880 11ce 1D       		.uleb128 0x1d
 2881 11cf 77000000 		.4byte	0x77
 2882 11d3 1D       		.uleb128 0x1d
 2883 11d4 C5170000 		.4byte	0x17c5
 2884 11d8 00       		.byte	0
 2885 11d9 28       		.uleb128 0x28
 2886 11da 10       		.byte	0x10
 2887 11db 30       		.byte	0x30
 2888 11dc 86010000 		.4byte	0x186
 2889 11e0 28       		.uleb128 0x28
 2890 11e1 10       		.byte	0x10
 2891 11e2 31       		.byte	0x31
 2892 11e3 A1010000 		.4byte	0x1a1
 2893 11e7 28       		.uleb128 0x28
 2894 11e8 10       		.byte	0x10
 2895 11e9 32       		.byte	0x32
 2896 11ea B7010000 		.4byte	0x1b7
 2897 11ee 28       		.uleb128 0x28
 2898 11ef 10       		.byte	0x10
 2899 11f0 33       		.byte	0x33
 2900 11f1 DC010000 		.4byte	0x1dc
 2901 11f5 28       		.uleb128 0x28
 2902 11f6 10       		.byte	0x10
 2903 11f7 35       		.byte	0x35
 2904 11f8 60020000 		.4byte	0x260
 2905 11fc 28       		.uleb128 0x28
 2906 11fd 10       		.byte	0x10
 2907 11fe 36       		.byte	0x36
 2908 11ff 76020000 		.4byte	0x276
 2909 1203 28       		.uleb128 0x28
 2910 1204 10       		.byte	0x10
 2911 1205 37       		.byte	0x37
 2912 1206 8C020000 		.4byte	0x28c
ARM GAS  /tmp/ccqdRJW7.s 			page 69


 2913 120a 28       		.uleb128 0x28
 2914 120b 10       		.byte	0x10
 2915 120c 38       		.byte	0x38
 2916 120d A2020000 		.4byte	0x2a2
 2917 1211 28       		.uleb128 0x28
 2918 1212 10       		.byte	0x10
 2919 1213 3A       		.byte	0x3a
 2920 1214 08020000 		.4byte	0x208
 2921 1218 28       		.uleb128 0x28
 2922 1219 10       		.byte	0x10
 2923 121a 3B       		.byte	0x3b
 2924 121b 1E020000 		.4byte	0x21e
 2925 121f 28       		.uleb128 0x28
 2926 1220 10       		.byte	0x10
 2927 1221 3C       		.byte	0x3c
 2928 1222 34020000 		.4byte	0x234
 2929 1226 28       		.uleb128 0x28
 2930 1227 10       		.byte	0x10
 2931 1228 3D       		.byte	0x3d
 2932 1229 4A020000 		.4byte	0x24a
 2933 122d 28       		.uleb128 0x28
 2934 122e 10       		.byte	0x10
 2935 122f 3F       		.byte	0x3f
 2936 1230 B8020000 		.4byte	0x2b8
 2937 1234 28       		.uleb128 0x28
 2938 1235 10       		.byte	0x10
 2939 1236 40       		.byte	0x40
 2940 1237 F2010000 		.4byte	0x1f2
 2941 123b 28       		.uleb128 0x28
 2942 123c 10       		.byte	0x10
 2943 123d 42       		.byte	0x42
 2944 123e 91010000 		.4byte	0x191
 2945 1242 28       		.uleb128 0x28
 2946 1243 10       		.byte	0x10
 2947 1244 43       		.byte	0x43
 2948 1245 AC010000 		.4byte	0x1ac
 2949 1249 28       		.uleb128 0x28
 2950 124a 10       		.byte	0x10
 2951 124b 44       		.byte	0x44
 2952 124c C7010000 		.4byte	0x1c7
 2953 1250 28       		.uleb128 0x28
 2954 1251 10       		.byte	0x10
 2955 1252 45       		.byte	0x45
 2956 1253 E7010000 		.4byte	0x1e7
 2957 1257 28       		.uleb128 0x28
 2958 1258 10       		.byte	0x10
 2959 1259 47       		.byte	0x47
 2960 125a 6B020000 		.4byte	0x26b
 2961 125e 28       		.uleb128 0x28
 2962 125f 10       		.byte	0x10
 2963 1260 48       		.byte	0x48
 2964 1261 81020000 		.4byte	0x281
 2965 1265 28       		.uleb128 0x28
 2966 1266 10       		.byte	0x10
 2967 1267 49       		.byte	0x49
 2968 1268 97020000 		.4byte	0x297
 2969 126c 28       		.uleb128 0x28
ARM GAS  /tmp/ccqdRJW7.s 			page 70


 2970 126d 10       		.byte	0x10
 2971 126e 4A       		.byte	0x4a
 2972 126f AD020000 		.4byte	0x2ad
 2973 1273 28       		.uleb128 0x28
 2974 1274 10       		.byte	0x10
 2975 1275 4C       		.byte	0x4c
 2976 1276 13020000 		.4byte	0x213
 2977 127a 28       		.uleb128 0x28
 2978 127b 10       		.byte	0x10
 2979 127c 4D       		.byte	0x4d
 2980 127d 29020000 		.4byte	0x229
 2981 1281 28       		.uleb128 0x28
 2982 1282 10       		.byte	0x10
 2983 1283 4E       		.byte	0x4e
 2984 1284 3F020000 		.4byte	0x23f
 2985 1288 28       		.uleb128 0x28
 2986 1289 10       		.byte	0x10
 2987 128a 4F       		.byte	0x4f
 2988 128b 55020000 		.4byte	0x255
 2989 128f 28       		.uleb128 0x28
 2990 1290 10       		.byte	0x10
 2991 1291 51       		.byte	0x51
 2992 1292 C3020000 		.4byte	0x2c3
 2993 1296 28       		.uleb128 0x28
 2994 1297 10       		.byte	0x10
 2995 1298 52       		.byte	0x52
 2996 1299 FD010000 		.4byte	0x1fd
 2997 129d 28       		.uleb128 0x28
 2998 129e 11       		.byte	0x11
 2999 129f 38       		.byte	0x38
 3000 12a0 7E000000 		.4byte	0x7e
 3001 12a4 00       		.byte	0
 3002 12a5 2C       		.uleb128 0x2c
 3003 12a6 77040000 		.4byte	.LASF273
 3004 12aa 12       		.byte	0x12
 3005 12ab E1       		.byte	0xe1
 3006 12ac 0A130000 		.4byte	0x130a
 3007 12b0 26       		.uleb128 0x26
 3008 12b1 301C0000 		.4byte	.LASF274
 3009 12b5 12       		.byte	0x12
 3010 12b6 E3       		.byte	0xe3
 3011 12b7 27       		.uleb128 0x27
 3012 12b8 12       		.byte	0x12
 3013 12b9 E3       		.byte	0xe3
 3014 12ba B0120000 		.4byte	0x12b0
 3015 12be 28       		.uleb128 0x28
 3016 12bf 0E       		.byte	0xe
 3017 12c0 DC       		.byte	0xdc
 3018 12c1 8F130000 		.4byte	0x138f
 3019 12c5 28       		.uleb128 0x28
 3020 12c6 0E       		.byte	0xe
 3021 12c7 EC       		.byte	0xec
 3022 12c8 F6150000 		.4byte	0x15f6
 3023 12cc 28       		.uleb128 0x28
 3024 12cd 0E       		.byte	0xe
 3025 12ce F7       		.byte	0xf7
 3026 12cf 10160000 		.4byte	0x1610
ARM GAS  /tmp/ccqdRJW7.s 			page 71


 3027 12d3 28       		.uleb128 0x28
 3028 12d4 0E       		.byte	0xe
 3029 12d5 F8       		.byte	0xf8
 3030 12d6 25160000 		.4byte	0x1625
 3031 12da 28       		.uleb128 0x28
 3032 12db 0E       		.byte	0xe
 3033 12dc F9       		.byte	0xf9
 3034 12dd 44160000 		.4byte	0x1644
 3035 12e1 28       		.uleb128 0x28
 3036 12e2 0E       		.byte	0xe
 3037 12e3 FB       		.byte	0xfb
 3038 12e4 63160000 		.4byte	0x1663
 3039 12e8 28       		.uleb128 0x28
 3040 12e9 0E       		.byte	0xe
 3041 12ea FC       		.byte	0xfc
 3042 12eb 84160000 		.4byte	0x1684
 3043 12ef 2D       		.uleb128 0x2d
 3044 12f0 64697600 		.ascii	"div\000"
 3045 12f4 0E       		.byte	0xe
 3046 12f5 E9       		.byte	0xe9
 3047 12f6 021A0000 		.4byte	.LASF591
 3048 12fa 8F130000 		.4byte	0x138f
 3049 12fe 1D       		.uleb128 0x1d
 3050 12ff 70000000 		.4byte	0x70
 3051 1303 1D       		.uleb128 0x1d
 3052 1304 70000000 		.4byte	0x70
 3053 1308 00       		.byte	0
 3054 1309 00       		.byte	0
 3055 130a 10       		.uleb128 0x10
 3056 130b 08       		.byte	0x8
 3057 130c 13       		.byte	0x13
 3058 130d 20       		.byte	0x20
 3059 130e 6A160000 		.4byte	.LASF275
 3060 1312 2F130000 		.4byte	0x132f
 3061 1316 11       		.uleb128 0x11
 3062 1317 49090000 		.4byte	.LASF276
 3063 131b 13       		.byte	0x13
 3064 131c 21       		.byte	0x21
 3065 131d 25000000 		.4byte	0x25
 3066 1321 00       		.byte	0
 3067 1322 18       		.uleb128 0x18
 3068 1323 72656D00 		.ascii	"rem\000"
 3069 1327 13       		.byte	0x13
 3070 1328 22       		.byte	0x22
 3071 1329 25000000 		.4byte	0x25
 3072 132d 04       		.byte	0x4
 3073 132e 00       		.byte	0
 3074 132f 03       		.uleb128 0x3
 3075 1330 7D160000 		.4byte	.LASF277
 3076 1334 13       		.byte	0x13
 3077 1335 23       		.byte	0x23
 3078 1336 0A130000 		.4byte	0x130a
 3079 133a 10       		.uleb128 0x10
 3080 133b 08       		.byte	0x8
 3081 133c 13       		.byte	0x13
 3082 133d 26       		.byte	0x26
 3083 133e B4030000 		.4byte	.LASF278
ARM GAS  /tmp/ccqdRJW7.s 			page 72


 3084 1342 5F130000 		.4byte	0x135f
 3085 1346 11       		.uleb128 0x11
 3086 1347 49090000 		.4byte	.LASF276
 3087 134b 13       		.byte	0x13
 3088 134c 27       		.byte	0x27
 3089 134d E2000000 		.4byte	0xe2
 3090 1351 00       		.byte	0
 3091 1352 18       		.uleb128 0x18
 3092 1353 72656D00 		.ascii	"rem\000"
 3093 1357 13       		.byte	0x13
 3094 1358 28       		.byte	0x28
 3095 1359 E2000000 		.4byte	0xe2
 3096 135d 04       		.byte	0x4
 3097 135e 00       		.byte	0
 3098 135f 03       		.uleb128 0x3
 3099 1360 D70B0000 		.4byte	.LASF279
 3100 1364 13       		.byte	0x13
 3101 1365 29       		.byte	0x29
 3102 1366 3A130000 		.4byte	0x133a
 3103 136a 10       		.uleb128 0x10
 3104 136b 10       		.byte	0x10
 3105 136c 13       		.byte	0x13
 3106 136d 2D       		.byte	0x2d
 3107 136e D3000000 		.4byte	.LASF280
 3108 1372 8F130000 		.4byte	0x138f
 3109 1376 11       		.uleb128 0x11
 3110 1377 49090000 		.4byte	.LASF276
 3111 137b 13       		.byte	0x13
 3112 137c 2E       		.byte	0x2e
 3113 137d 70000000 		.4byte	0x70
 3114 1381 00       		.byte	0
 3115 1382 18       		.uleb128 0x18
 3116 1383 72656D00 		.ascii	"rem\000"
 3117 1387 13       		.byte	0x13
 3118 1388 2F       		.byte	0x2f
 3119 1389 70000000 		.4byte	0x70
 3120 138d 08       		.byte	0x8
 3121 138e 00       		.byte	0
 3122 138f 03       		.uleb128 0x3
 3123 1390 220A0000 		.4byte	.LASF281
 3124 1394 13       		.byte	0x13
 3125 1395 30       		.byte	0x30
 3126 1396 6A130000 		.4byte	0x136a
 3127 139a 03       		.uleb128 0x3
 3128 139b D5160000 		.4byte	.LASF282
 3129 139f 13       		.byte	0x13
 3130 13a0 35       		.byte	0x35
 3131 13a1 A5130000 		.4byte	0x13a5
 3132 13a5 19       		.uleb128 0x19
 3133 13a6 04       		.byte	0x4
 3134 13a7 AB130000 		.4byte	0x13ab
 3135 13ab 1C       		.uleb128 0x1c
 3136 13ac 25000000 		.4byte	0x25
 3137 13b0 BF130000 		.4byte	0x13bf
 3138 13b4 1D       		.uleb128 0x1d
 3139 13b5 BF130000 		.4byte	0x13bf
 3140 13b9 1D       		.uleb128 0x1d
ARM GAS  /tmp/ccqdRJW7.s 			page 73


 3141 13ba BF130000 		.4byte	0x13bf
 3142 13be 00       		.byte	0
 3143 13bf 19       		.uleb128 0x19
 3144 13c0 04       		.byte	0x4
 3145 13c1 C5130000 		.4byte	0x13c5
 3146 13c5 2E       		.uleb128 0x2e
 3147 13c6 0F       		.uleb128 0xf
 3148 13c7 D6110000 		.4byte	.LASF283
 3149 13cb 13       		.byte	0x13
 3150 13cc 5F       		.byte	0x5f
 3151 13cd B60E0000 		.4byte	0xeb6
 3152 13d1 2F       		.uleb128 0x2f
 3153 13d2 96070000 		.4byte	.LASF284
 3154 13d6 13       		.byte	0x13
 3155 13d7 48       		.byte	0x48
 3156 13d8 25000000 		.4byte	0x25
 3157 13dc E6130000 		.4byte	0x13e6
 3158 13e0 1D       		.uleb128 0x1d
 3159 13e1 B80A0000 		.4byte	0xab8
 3160 13e5 00       		.byte	0
 3161 13e6 2F       		.uleb128 0x2f
 3162 13e7 FB020000 		.4byte	.LASF285
 3163 13eb 13       		.byte	0x13
 3164 13ec 49       		.byte	0x49
 3165 13ed FB130000 		.4byte	0x13fb
 3166 13f1 FB130000 		.4byte	0x13fb
 3167 13f5 1D       		.uleb128 0x1d
 3168 13f6 EC0E0000 		.4byte	0xeec
 3169 13fa 00       		.byte	0
 3170 13fb 05       		.uleb128 0x5
 3171 13fc 08       		.byte	0x8
 3172 13fd 04       		.byte	0x4
 3173 13fe 5C150000 		.4byte	.LASF286
 3174 1402 2F       		.uleb128 0x2f
 3175 1403 00030000 		.4byte	.LASF287
 3176 1407 13       		.byte	0x13
 3177 1408 4D       		.byte	0x4d
 3178 1409 25000000 		.4byte	0x25
 3179 140d 17140000 		.4byte	0x1417
 3180 1411 1D       		.uleb128 0x1d
 3181 1412 EC0E0000 		.4byte	0xeec
 3182 1416 00       		.byte	0
 3183 1417 2F       		.uleb128 0x2f
 3184 1418 14030000 		.4byte	.LASF288
 3185 141c 13       		.byte	0x13
 3186 141d 4F       		.byte	0x4f
 3187 141e E2000000 		.4byte	0xe2
 3188 1422 2C140000 		.4byte	0x142c
 3189 1426 1D       		.uleb128 0x1d
 3190 1427 EC0E0000 		.4byte	0xeec
 3191 142b 00       		.byte	0
 3192 142c 2F       		.uleb128 0x2f
 3193 142d 43140000 		.4byte	.LASF289
 3194 1431 13       		.byte	0x13
 3195 1432 51       		.byte	0x51
 3196 1433 CE020000 		.4byte	0x2ce
 3197 1437 55140000 		.4byte	0x1455
ARM GAS  /tmp/ccqdRJW7.s 			page 74


 3198 143b 1D       		.uleb128 0x1d
 3199 143c BF130000 		.4byte	0x13bf
 3200 1440 1D       		.uleb128 0x1d
 3201 1441 BF130000 		.4byte	0x13bf
 3202 1445 1D       		.uleb128 0x1d
 3203 1446 2C000000 		.4byte	0x2c
 3204 144a 1D       		.uleb128 0x1d
 3205 144b 2C000000 		.4byte	0x2c
 3206 144f 1D       		.uleb128 0x1d
 3207 1450 9A130000 		.4byte	0x139a
 3208 1454 00       		.byte	0
 3209 1455 30       		.uleb128 0x30
 3210 1456 64697600 		.ascii	"div\000"
 3211 145a 13       		.byte	0x13
 3212 145b 57       		.byte	0x57
 3213 145c 2F130000 		.4byte	0x132f
 3214 1460 6F140000 		.4byte	0x146f
 3215 1464 1D       		.uleb128 0x1d
 3216 1465 25000000 		.4byte	0x25
 3217 1469 1D       		.uleb128 0x1d
 3218 146a 25000000 		.4byte	0x25
 3219 146e 00       		.byte	0
 3220 146f 2F       		.uleb128 0x2f
 3221 1470 22180000 		.4byte	.LASF290
 3222 1474 13       		.byte	0x13
 3223 1475 5A       		.byte	0x5a
 3224 1476 B60E0000 		.4byte	0xeb6
 3225 147a 84140000 		.4byte	0x1484
 3226 147e 1D       		.uleb128 0x1d
 3227 147f EC0E0000 		.4byte	0xeec
 3228 1483 00       		.byte	0
 3229 1484 2F       		.uleb128 0x2f
 3230 1485 10150000 		.4byte	.LASF291
 3231 1489 13       		.byte	0x13
 3232 148a 63       		.byte	0x63
 3233 148b 5F130000 		.4byte	0x135f
 3234 148f 9E140000 		.4byte	0x149e
 3235 1493 1D       		.uleb128 0x1d
 3236 1494 E2000000 		.4byte	0xe2
 3237 1498 1D       		.uleb128 0x1d
 3238 1499 E2000000 		.4byte	0xe2
 3239 149d 00       		.byte	0
 3240 149e 2F       		.uleb128 0x2f
 3241 149f 470A0000 		.4byte	.LASF292
 3242 14a3 13       		.byte	0x13
 3243 14a4 65       		.byte	0x65
 3244 14a5 25000000 		.4byte	0x25
 3245 14a9 B8140000 		.4byte	0x14b8
 3246 14ad 1D       		.uleb128 0x1d
 3247 14ae EC0E0000 		.4byte	0xeec
 3248 14b2 1D       		.uleb128 0x1d
 3249 14b3 2C000000 		.4byte	0x2c
 3250 14b7 00       		.byte	0
 3251 14b8 2F       		.uleb128 0x2f
 3252 14b9 580F0000 		.4byte	.LASF293
 3253 14bd 13       		.byte	0x13
 3254 14be 6B       		.byte	0x6b
ARM GAS  /tmp/ccqdRJW7.s 			page 75


 3255 14bf 2C000000 		.4byte	0x2c
 3256 14c3 D7140000 		.4byte	0x14d7
 3257 14c7 1D       		.uleb128 0x1d
 3258 14c8 D7140000 		.4byte	0x14d7
 3259 14cc 1D       		.uleb128 0x1d
 3260 14cd EC0E0000 		.4byte	0xeec
 3261 14d1 1D       		.uleb128 0x1d
 3262 14d2 2C000000 		.4byte	0x2c
 3263 14d6 00       		.byte	0
 3264 14d7 19       		.uleb128 0x19
 3265 14d8 04       		.byte	0x4
 3266 14d9 DD140000 		.4byte	0x14dd
 3267 14dd 05       		.uleb128 0x5
 3268 14de 04       		.byte	0x4
 3269 14df 07       		.byte	0x7
 3270 14e0 130F0000 		.4byte	.LASF294
 3271 14e4 04       		.uleb128 0x4
 3272 14e5 DD140000 		.4byte	0x14dd
 3273 14e9 2F       		.uleb128 0x2f
 3274 14ea 83160000 		.4byte	.LASF295
 3275 14ee 13       		.byte	0x13
 3276 14ef 67       		.byte	0x67
 3277 14f0 25000000 		.4byte	0x25
 3278 14f4 08150000 		.4byte	0x1508
 3279 14f8 1D       		.uleb128 0x1d
 3280 14f9 D7140000 		.4byte	0x14d7
 3281 14fd 1D       		.uleb128 0x1d
 3282 14fe EC0E0000 		.4byte	0xeec
 3283 1502 1D       		.uleb128 0x1d
 3284 1503 2C000000 		.4byte	0x2c
 3285 1507 00       		.byte	0
 3286 1508 31       		.uleb128 0x31
 3287 1509 D9150000 		.4byte	.LASF296
 3288 150d 13       		.byte	0x13
 3289 150e 87       		.byte	0x87
 3290 150f 28150000 		.4byte	0x1528
 3291 1513 1D       		.uleb128 0x1d
 3292 1514 CE020000 		.4byte	0x2ce
 3293 1518 1D       		.uleb128 0x1d
 3294 1519 2C000000 		.4byte	0x2c
 3295 151d 1D       		.uleb128 0x1d
 3296 151e 2C000000 		.4byte	0x2c
 3297 1522 1D       		.uleb128 0x1d
 3298 1523 9A130000 		.4byte	0x139a
 3299 1527 00       		.byte	0
 3300 1528 32       		.uleb128 0x32
 3301 1529 61180000 		.4byte	.LASF592
 3302 152d 13       		.byte	0x13
 3303 152e 88       		.byte	0x88
 3304 152f 25000000 		.4byte	0x25
 3305 1533 31       		.uleb128 0x31
 3306 1534 130D0000 		.4byte	.LASF297
 3307 1538 13       		.byte	0x13
 3308 1539 93       		.byte	0x93
 3309 153a 44150000 		.4byte	0x1544
 3310 153e 1D       		.uleb128 0x1d
 3311 153f 3C000000 		.4byte	0x3c
ARM GAS  /tmp/ccqdRJW7.s 			page 76


 3312 1543 00       		.byte	0
 3313 1544 2F       		.uleb128 0x2f
 3314 1545 3A110000 		.4byte	.LASF298
 3315 1549 13       		.byte	0x13
 3316 154a 94       		.byte	0x94
 3317 154b FB130000 		.4byte	0x13fb
 3318 154f 5E150000 		.4byte	0x155e
 3319 1553 1D       		.uleb128 0x1d
 3320 1554 EC0E0000 		.4byte	0xeec
 3321 1558 1D       		.uleb128 0x1d
 3322 1559 5E150000 		.4byte	0x155e
 3323 155d 00       		.byte	0
 3324 155e 19       		.uleb128 0x19
 3325 155f 04       		.byte	0x4
 3326 1560 B60E0000 		.4byte	0xeb6
 3327 1564 2F       		.uleb128 0x2f
 3328 1565 A5110000 		.4byte	.LASF299
 3329 1569 13       		.byte	0x13
 3330 156a 9F       		.byte	0x9f
 3331 156b E2000000 		.4byte	0xe2
 3332 156f 83150000 		.4byte	0x1583
 3333 1573 1D       		.uleb128 0x1d
 3334 1574 EC0E0000 		.4byte	0xeec
 3335 1578 1D       		.uleb128 0x1d
 3336 1579 5E150000 		.4byte	0x155e
 3337 157d 1D       		.uleb128 0x1d
 3338 157e 25000000 		.4byte	0x25
 3339 1582 00       		.byte	0
 3340 1583 2F       		.uleb128 0x2f
 3341 1584 9E0B0000 		.4byte	.LASF300
 3342 1588 13       		.byte	0x13
 3343 1589 A1       		.byte	0xa1
 3344 158a F4000000 		.4byte	0xf4
 3345 158e A2150000 		.4byte	0x15a2
 3346 1592 1D       		.uleb128 0x1d
 3347 1593 EC0E0000 		.4byte	0xeec
 3348 1597 1D       		.uleb128 0x1d
 3349 1598 5E150000 		.4byte	0x155e
 3350 159c 1D       		.uleb128 0x1d
 3351 159d 25000000 		.4byte	0x25
 3352 15a1 00       		.byte	0
 3353 15a2 2F       		.uleb128 0x2f
 3354 15a3 AD0D0000 		.4byte	.LASF301
 3355 15a7 13       		.byte	0x13
 3356 15a8 A4       		.byte	0xa4
 3357 15a9 25000000 		.4byte	0x25
 3358 15ad B7150000 		.4byte	0x15b7
 3359 15b1 1D       		.uleb128 0x1d
 3360 15b2 EC0E0000 		.4byte	0xeec
 3361 15b6 00       		.byte	0
 3362 15b7 2F       		.uleb128 0x2f
 3363 15b8 530C0000 		.4byte	.LASF302
 3364 15bc 13       		.byte	0x13
 3365 15bd 6D       		.byte	0x6d
 3366 15be 2C000000 		.4byte	0x2c
 3367 15c2 D6150000 		.4byte	0x15d6
 3368 15c6 1D       		.uleb128 0x1d
ARM GAS  /tmp/ccqdRJW7.s 			page 77


 3369 15c7 B60E0000 		.4byte	0xeb6
 3370 15cb 1D       		.uleb128 0x1d
 3371 15cc D6150000 		.4byte	0x15d6
 3372 15d0 1D       		.uleb128 0x1d
 3373 15d1 2C000000 		.4byte	0x2c
 3374 15d5 00       		.byte	0
 3375 15d6 19       		.uleb128 0x19
 3376 15d7 04       		.byte	0x4
 3377 15d8 E4140000 		.4byte	0x14e4
 3378 15dc 2F       		.uleb128 0x2f
 3379 15dd D9030000 		.4byte	.LASF303
 3380 15e1 13       		.byte	0x13
 3381 15e2 69       		.byte	0x69
 3382 15e3 25000000 		.4byte	0x25
 3383 15e7 F6150000 		.4byte	0x15f6
 3384 15eb 1D       		.uleb128 0x1d
 3385 15ec B60E0000 		.4byte	0xeb6
 3386 15f0 1D       		.uleb128 0x1d
 3387 15f1 DD140000 		.4byte	0x14dd
 3388 15f5 00       		.byte	0
 3389 15f6 2F       		.uleb128 0x2f
 3390 15f7 10050000 		.4byte	.LASF304
 3391 15fb 13       		.byte	0x13
 3392 15fc F1       		.byte	0xf1
 3393 15fd 8F130000 		.4byte	0x138f
 3394 1601 10160000 		.4byte	0x1610
 3395 1605 1D       		.uleb128 0x1d
 3396 1606 70000000 		.4byte	0x70
 3397 160a 1D       		.uleb128 0x1d
 3398 160b 70000000 		.4byte	0x70
 3399 160f 00       		.byte	0
 3400 1610 2F       		.uleb128 0x2f
 3401 1611 47130000 		.4byte	.LASF305
 3402 1615 13       		.byte	0x13
 3403 1616 EC       		.byte	0xec
 3404 1617 70000000 		.4byte	0x70
 3405 161b 25160000 		.4byte	0x1625
 3406 161f 1D       		.uleb128 0x1d
 3407 1620 EC0E0000 		.4byte	0xeec
 3408 1624 00       		.byte	0
 3409 1625 2F       		.uleb128 0x2f
 3410 1626 89070000 		.4byte	.LASF306
 3411 162a 13       		.byte	0x13
 3412 162b F2       		.byte	0xf2
 3413 162c 70000000 		.4byte	0x70
 3414 1630 44160000 		.4byte	0x1644
 3415 1634 1D       		.uleb128 0x1d
 3416 1635 EC0E0000 		.4byte	0xeec
 3417 1639 1D       		.uleb128 0x1d
 3418 163a 5E150000 		.4byte	0x155e
 3419 163e 1D       		.uleb128 0x1d
 3420 163f 25000000 		.4byte	0x25
 3421 1643 00       		.byte	0
 3422 1644 2F       		.uleb128 0x2f
 3423 1645 DF1A0000 		.4byte	.LASF307
 3424 1649 13       		.byte	0x13
 3425 164a F6       		.byte	0xf6
ARM GAS  /tmp/ccqdRJW7.s 			page 78


 3426 164b 11010000 		.4byte	0x111
 3427 164f 63160000 		.4byte	0x1663
 3428 1653 1D       		.uleb128 0x1d
 3429 1654 EC0E0000 		.4byte	0xeec
 3430 1658 1D       		.uleb128 0x1d
 3431 1659 5E150000 		.4byte	0x155e
 3432 165d 1D       		.uleb128 0x1d
 3433 165e 25000000 		.4byte	0x25
 3434 1662 00       		.byte	0
 3435 1663 2F       		.uleb128 0x2f
 3436 1664 EA010000 		.4byte	.LASF308
 3437 1668 13       		.byte	0x13
 3438 1669 97       		.byte	0x97
 3439 166a 7D160000 		.4byte	0x167d
 3440 166e 7D160000 		.4byte	0x167d
 3441 1672 1D       		.uleb128 0x1d
 3442 1673 EC0E0000 		.4byte	0xeec
 3443 1677 1D       		.uleb128 0x1d
 3444 1678 5E150000 		.4byte	0x155e
 3445 167c 00       		.byte	0
 3446 167d 05       		.uleb128 0x5
 3447 167e 04       		.byte	0x4
 3448 167f 04       		.byte	0x4
 3449 1680 8B060000 		.4byte	.LASF309
 3450 1684 33       		.uleb128 0x33
 3451 1685 67070000 		.4byte	.LASF310
 3452 1689 13       		.byte	0x13
 3453 168a 2801     		.2byte	0x128
 3454 168c 77000000 		.4byte	0x77
 3455 1690 9F160000 		.4byte	0x169f
 3456 1694 1D       		.uleb128 0x1d
 3457 1695 EC0E0000 		.4byte	0xeec
 3458 1699 1D       		.uleb128 0x1d
 3459 169a 5E150000 		.4byte	0x155e
 3460 169e 00       		.byte	0
 3461 169f 28       		.uleb128 0x28
 3462 16a0 14       		.byte	0x14
 3463 16a1 27       		.byte	0x27
 3464 16a2 D1130000 		.4byte	0x13d1
 3465 16a6 28       		.uleb128 0x28
 3466 16a7 14       		.byte	0x14
 3467 16a8 33       		.byte	0x33
 3468 16a9 2F130000 		.4byte	0x132f
 3469 16ad 28       		.uleb128 0x28
 3470 16ae 14       		.byte	0x14
 3471 16af 34       		.byte	0x34
 3472 16b0 5F130000 		.4byte	0x135f
 3473 16b4 28       		.uleb128 0x28
 3474 16b5 14       		.byte	0x14
 3475 16b6 36       		.byte	0x36
 3476 16b7 91110000 		.4byte	0x1191
 3477 16bb 28       		.uleb128 0x28
 3478 16bc 14       		.byte	0x14
 3479 16bd 37       		.byte	0x37
 3480 16be E6130000 		.4byte	0x13e6
 3481 16c2 28       		.uleb128 0x28
 3482 16c3 14       		.byte	0x14
ARM GAS  /tmp/ccqdRJW7.s 			page 79


 3483 16c4 38       		.byte	0x38
 3484 16c5 02140000 		.4byte	0x1402
 3485 16c9 28       		.uleb128 0x28
 3486 16ca 14       		.byte	0x14
 3487 16cb 39       		.byte	0x39
 3488 16cc 17140000 		.4byte	0x1417
 3489 16d0 28       		.uleb128 0x28
 3490 16d1 14       		.byte	0x14
 3491 16d2 3A       		.byte	0x3a
 3492 16d3 2C140000 		.4byte	0x142c
 3493 16d7 28       		.uleb128 0x28
 3494 16d8 14       		.byte	0x14
 3495 16d9 3C       		.byte	0x3c
 3496 16da EF120000 		.4byte	0x12ef
 3497 16de 28       		.uleb128 0x28
 3498 16df 14       		.byte	0x14
 3499 16e0 3E       		.byte	0x3e
 3500 16e1 6F140000 		.4byte	0x146f
 3501 16e5 28       		.uleb128 0x28
 3502 16e6 14       		.byte	0x14
 3503 16e7 40       		.byte	0x40
 3504 16e8 84140000 		.4byte	0x1484
 3505 16ec 28       		.uleb128 0x28
 3506 16ed 14       		.byte	0x14
 3507 16ee 43       		.byte	0x43
 3508 16ef 9E140000 		.4byte	0x149e
 3509 16f3 28       		.uleb128 0x28
 3510 16f4 14       		.byte	0x14
 3511 16f5 44       		.byte	0x44
 3512 16f6 B8140000 		.4byte	0x14b8
 3513 16fa 28       		.uleb128 0x28
 3514 16fb 14       		.byte	0x14
 3515 16fc 45       		.byte	0x45
 3516 16fd E9140000 		.4byte	0x14e9
 3517 1701 28       		.uleb128 0x28
 3518 1702 14       		.byte	0x14
 3519 1703 47       		.byte	0x47
 3520 1704 08150000 		.4byte	0x1508
 3521 1708 28       		.uleb128 0x28
 3522 1709 14       		.byte	0x14
 3523 170a 48       		.byte	0x48
 3524 170b 28150000 		.4byte	0x1528
 3525 170f 28       		.uleb128 0x28
 3526 1710 14       		.byte	0x14
 3527 1711 4A       		.byte	0x4a
 3528 1712 33150000 		.4byte	0x1533
 3529 1716 28       		.uleb128 0x28
 3530 1717 14       		.byte	0x14
 3531 1718 4B       		.byte	0x4b
 3532 1719 44150000 		.4byte	0x1544
 3533 171d 28       		.uleb128 0x28
 3534 171e 14       		.byte	0x14
 3535 171f 4C       		.byte	0x4c
 3536 1720 64150000 		.4byte	0x1564
 3537 1724 28       		.uleb128 0x28
 3538 1725 14       		.byte	0x14
 3539 1726 4D       		.byte	0x4d
ARM GAS  /tmp/ccqdRJW7.s 			page 80


 3540 1727 83150000 		.4byte	0x1583
 3541 172b 28       		.uleb128 0x28
 3542 172c 14       		.byte	0x14
 3543 172d 4E       		.byte	0x4e
 3544 172e A2150000 		.4byte	0x15a2
 3545 1732 28       		.uleb128 0x28
 3546 1733 14       		.byte	0x14
 3547 1734 50       		.byte	0x50
 3548 1735 B7150000 		.4byte	0x15b7
 3549 1739 28       		.uleb128 0x28
 3550 173a 14       		.byte	0x14
 3551 173b 51       		.byte	0x51
 3552 173c DC150000 		.4byte	0x15dc
 3553 1740 0F       		.uleb128 0xf
 3554 1741 12080000 		.4byte	.LASF311
 3555 1745 15       		.byte	0x15
 3556 1746 8F       		.byte	0x8f
 3557 1747 52170000 		.4byte	0x1752
 3558 174b 05       		.uleb128 0x5
 3559 174c 01       		.byte	0x1
 3560 174d 02       		.byte	0x2
 3561 174e 52120000 		.4byte	.LASF312
 3562 1752 0A       		.uleb128 0xa
 3563 1753 4B170000 		.4byte	0x174b
 3564 1757 34       		.uleb128 0x34
 3565 1758 F6030000 		.4byte	.LASF313
 3566 175c 15       		.byte	0x15
 3567 175d 94       		.byte	0x94
 3568 175e D2010000 		.4byte	0x1d2
 3569 1762 05       		.uleb128 0x5
 3570 1763 03       		.byte	0x3
 3571 1764 00000000 		.4byte	_ZL32cpu_irq_critical_section_counter
 3572 1768 34       		.uleb128 0x34
 3573 1769 261A0000 		.4byte	.LASF314
 3574 176d 15       		.byte	0x15
 3575 176e 95       		.byte	0x95
 3576 176f 52170000 		.4byte	0x1752
 3577 1773 05       		.uleb128 0x5
 3578 1774 03       		.byte	0x3
 3579 1775 00000000 		.4byte	_ZL28cpu_irq_prev_interrupt_state
 3580 1779 03       		.uleb128 0x3
 3581 177a C5010000 		.4byte	.LASF315
 3582 177e 16       		.byte	0x16
 3583 177f AD       		.byte	0xad
 3584 1780 7D160000 		.4byte	0x167d
 3585 1784 03       		.uleb128 0x3
 3586 1785 9A050000 		.4byte	.LASF316
 3587 1789 16       		.byte	0x16
 3588 178a AE       		.byte	0xae
 3589 178b FB130000 		.4byte	0x13fb
 3590 178f 35       		.uleb128 0x35
 3591 1790 24100000 		.4byte	.LASF322
 3592 1794 01       		.byte	0x1
 3593 1795 9A000000 		.4byte	0x9a
 3594 1799 16       		.byte	0x16
 3595 179a 9902     		.2byte	0x299
 3596 179c B9170000 		.4byte	0x17b9
ARM GAS  /tmp/ccqdRJW7.s 			page 81


 3597 17a0 36       		.uleb128 0x36
 3598 17a1 EB0D0000 		.4byte	.LASF317
 3599 17a5 7F       		.sleb128 -1
 3600 17a6 37       		.uleb128 0x37
 3601 17a7 F1010000 		.4byte	.LASF318
 3602 17ab 00       		.byte	0
 3603 17ac 37       		.uleb128 0x37
 3604 17ad 95000000 		.4byte	.LASF319
 3605 17b1 01       		.byte	0x1
 3606 17b2 37       		.uleb128 0x37
 3607 17b3 34180000 		.4byte	.LASF320
 3608 17b7 02       		.byte	0x2
 3609 17b8 00       		.byte	0
 3610 17b9 0E       		.uleb128 0xe
 3611 17ba 45060000 		.4byte	.LASF321
 3612 17be 16       		.byte	0x16
 3613 17bf A402     		.2byte	0x2a4
 3614 17c1 8F170000 		.4byte	0x178f
 3615 17c5 19       		.uleb128 0x19
 3616 17c6 04       		.byte	0x4
 3617 17c7 77000000 		.4byte	0x77
 3618 17cb 28       		.uleb128 0x28
 3619 17cc 17       		.byte	0x17
 3620 17cd 36       		.byte	0x36
 3621 17ce BA110000 		.4byte	0x11ba
 3622 17d2 38       		.uleb128 0x38
 3623 17d3 9E190000 		.4byte	.LASF323
 3624 17d7 01       		.byte	0x1
 3625 17d8 9A000000 		.4byte	0x9a
 3626 17dc 18       		.byte	0x18
 3627 17dd 4B       		.byte	0x4b
 3628 17de 5C180000 		.4byte	0x185c
 3629 17e2 37       		.uleb128 0x37
 3630 17e3 BD190000 		.4byte	.LASF324
 3631 17e7 00       		.byte	0
 3632 17e8 37       		.uleb128 0x37
 3633 17e9 52100000 		.4byte	.LASF325
 3634 17ed 19       		.byte	0x19
 3635 17ee 37       		.uleb128 0x37
 3636 17ef BF020000 		.4byte	.LASF326
 3637 17f3 1C       		.byte	0x1c
 3638 17f4 37       		.uleb128 0x37
 3639 17f5 62100000 		.4byte	.LASF327
 3640 17f9 12       		.byte	0x12
 3641 17fa 36       		.uleb128 0x36
 3642 17fb 05100000 		.4byte	.LASF328
 3643 17ff 7F       		.sleb128 -1
 3644 1800 36       		.uleb128 0x36
 3645 1801 B6120000 		.4byte	.LASF329
 3646 1805 7E       		.sleb128 -2
 3647 1806 36       		.uleb128 0x36
 3648 1807 750A0000 		.4byte	.LASF330
 3649 180b 7D       		.sleb128 -3
 3650 180c 36       		.uleb128 0x36
 3651 180d 50070000 		.4byte	.LASF331
 3652 1811 7C       		.sleb128 -4
 3653 1812 36       		.uleb128 0x36
ARM GAS  /tmp/ccqdRJW7.s 			page 82


 3654 1813 8F120000 		.4byte	.LASF332
 3655 1817 7B       		.sleb128 -5
 3656 1818 36       		.uleb128 0x36
 3657 1819 2C1B0000 		.4byte	.LASF333
 3658 181d 7A       		.sleb128 -6
 3659 181e 36       		.uleb128 0x36
 3660 181f E81A0000 		.4byte	.LASF334
 3661 1823 79       		.sleb128 -7
 3662 1824 36       		.uleb128 0x36
 3663 1825 DD0A0000 		.4byte	.LASF335
 3664 1829 78       		.sleb128 -8
 3665 182a 36       		.uleb128 0x36
 3666 182b 9D0C0000 		.4byte	.LASF336
 3667 182f 77       		.sleb128 -9
 3668 1830 36       		.uleb128 0x36
 3669 1831 B4190000 		.4byte	.LASF337
 3670 1835 76       		.sleb128 -10
 3671 1836 36       		.uleb128 0x36
 3672 1837 171A0000 		.4byte	.LASF338
 3673 183b 75       		.sleb128 -11
 3674 183c 36       		.uleb128 0x36
 3675 183d D00A0000 		.4byte	.LASF339
 3676 1841 74       		.sleb128 -12
 3677 1842 36       		.uleb128 0x36
 3678 1843 5C190000 		.4byte	.LASF340
 3679 1847 73       		.sleb128 -13
 3680 1848 36       		.uleb128 0x36
 3681 1849 65090000 		.4byte	.LASF341
 3682 184d 72       		.sleb128 -14
 3683 184e 36       		.uleb128 0x36
 3684 184f 71160000 		.4byte	.LASF342
 3685 1853 71       		.sleb128 -15
 3686 1854 36       		.uleb128 0x36
 3687 1855 DC170000 		.4byte	.LASF343
 3688 1859 807F     		.sleb128 -128
 3689 185b 00       		.byte	0
 3690 185c 38       		.uleb128 0x38
 3691 185d E6030000 		.4byte	.LASF344
 3692 1861 04       		.byte	0x4
 3693 1862 3C000000 		.4byte	0x3c
 3694 1866 02       		.byte	0x2
 3695 1867 37       		.byte	0x37
 3696 1868 97180000 		.4byte	0x1897
 3697 186c 37       		.uleb128 0x37
 3698 186d 83100000 		.4byte	.LASF345
 3699 1871 00       		.byte	0
 3700 1872 39       		.uleb128 0x39
 3701 1873 AE0B0000 		.4byte	.LASF346
 3702 1877 00000200 		.4byte	0x20000
 3703 187b 39       		.uleb128 0x39
 3704 187c A90F0000 		.4byte	.LASF347
 3705 1880 00000300 		.4byte	0x30000
 3706 1884 39       		.uleb128 0x39
 3707 1885 67000000 		.4byte	.LASF348
 3708 1889 00000400 		.4byte	0x40000
 3709 188d 39       		.uleb128 0x39
 3710 188e B01C0000 		.4byte	.LASF349
ARM GAS  /tmp/ccqdRJW7.s 			page 83


 3711 1892 00000500 		.4byte	0x50000
 3712 1896 00       		.byte	0
 3713 1897 38       		.uleb128 0x38
 3714 1898 B1160000 		.4byte	.LASF350
 3715 189c 01       		.byte	0x1
 3716 189d AC000000 		.4byte	0xac
 3717 18a1 02       		.byte	0x2
 3718 18a2 54       		.byte	0x54
 3719 18a3 DE180000 		.4byte	0x18de
 3720 18a7 37       		.uleb128 0x37
 3721 18a8 C10C0000 		.4byte	.LASF351
 3722 18ac 00       		.byte	0
 3723 18ad 37       		.uleb128 0x37
 3724 18ae 55130000 		.4byte	.LASF352
 3725 18b2 01       		.byte	0x1
 3726 18b3 37       		.uleb128 0x37
 3727 18b4 431A0000 		.4byte	.LASF353
 3728 18b8 03       		.byte	0x3
 3729 18b9 37       		.uleb128 0x37
 3730 18ba 561A0000 		.4byte	.LASF354
 3731 18be 05       		.byte	0x5
 3732 18bf 37       		.uleb128 0x37
 3733 18c0 691A0000 		.4byte	.LASF355
 3734 18c4 07       		.byte	0x7
 3735 18c5 37       		.uleb128 0x37
 3736 18c6 0F170000 		.4byte	.LASF356
 3737 18ca 09       		.byte	0x9
 3738 18cb 37       		.uleb128 0x37
 3739 18cc 2A170000 		.4byte	.LASF357
 3740 18d0 0B       		.byte	0xb
 3741 18d1 37       		.uleb128 0x37
 3742 18d2 78180000 		.4byte	.LASF358
 3743 18d6 0D       		.byte	0xd
 3744 18d7 37       		.uleb128 0x37
 3745 18d8 40120000 		.4byte	.LASF359
 3746 18dc FF       		.byte	0xff
 3747 18dd 00       		.byte	0
 3748 18de 04       		.uleb128 0x4
 3749 18df 97180000 		.4byte	0x1897
 3750 18e3 38       		.uleb128 0x38
 3751 18e4 B4010000 		.4byte	.LASF360
 3752 18e8 02       		.byte	0x2
 3753 18e9 D0000000 		.4byte	0xd0
 3754 18ed 02       		.byte	0x2
 3755 18ee 8E       		.byte	0x8e
 3756 18ef 43190000 		.4byte	0x1943
 3757 18f3 37       		.uleb128 0x37
 3758 18f4 41110000 		.4byte	.LASF361
 3759 18f8 00       		.byte	0
 3760 18f9 37       		.uleb128 0x37
 3761 18fa E6080000 		.4byte	.LASF362
 3762 18fe 01       		.byte	0x1
 3763 18ff 37       		.uleb128 0x37
 3764 1900 5A110000 		.4byte	.LASF363
 3765 1904 02       		.byte	0x2
 3766 1905 37       		.uleb128 0x37
 3767 1906 69110000 		.4byte	.LASF364
ARM GAS  /tmp/ccqdRJW7.s 			page 84


 3768 190a 03       		.byte	0x3
 3769 190b 37       		.uleb128 0x37
 3770 190c 78110000 		.4byte	.LASF365
 3771 1910 04       		.byte	0x4
 3772 1911 37       		.uleb128 0x37
 3773 1912 87110000 		.4byte	.LASF366
 3774 1916 05       		.byte	0x5
 3775 1917 37       		.uleb128 0x37
 3776 1918 96110000 		.4byte	.LASF367
 3777 191c 06       		.byte	0x6
 3778 191d 37       		.uleb128 0x37
 3779 191e 02090000 		.4byte	.LASF368
 3780 1922 07       		.byte	0x7
 3781 1923 37       		.uleb128 0x37
 3782 1924 AC110000 		.4byte	.LASF369
 3783 1928 08       		.byte	0x8
 3784 1929 37       		.uleb128 0x37
 3785 192a BB110000 		.4byte	.LASF370
 3786 192e 09       		.byte	0x9
 3787 192f 37       		.uleb128 0x37
 3788 1930 E3090000 		.4byte	.LASF371
 3789 1934 0A       		.byte	0xa
 3790 1935 37       		.uleb128 0x37
 3791 1936 2F130000 		.4byte	.LASF372
 3792 193a 0B       		.byte	0xb
 3793 193b 3A       		.uleb128 0x3a
 3794 193c 7C1A0000 		.4byte	.LASF373
 3795 1940 FF0F     		.2byte	0xfff
 3796 1942 00       		.byte	0
 3797 1943 04       		.uleb128 0x4
 3798 1944 E3180000 		.4byte	0x18e3
 3799 1948 38       		.uleb128 0x38
 3800 1949 F7000000 		.4byte	.LASF374
 3801 194d 01       		.byte	0x1
 3802 194e AC000000 		.4byte	0xac
 3803 1952 02       		.byte	0x2
 3804 1953 AC       		.byte	0xac
 3805 1954 71190000 		.4byte	0x1971
 3806 1958 37       		.uleb128 0x37
 3807 1959 7A0D0000 		.4byte	.LASF375
 3808 195d 00       		.byte	0
 3809 195e 37       		.uleb128 0x37
 3810 195f 8B0D0000 		.4byte	.LASF376
 3811 1963 01       		.byte	0x1
 3812 1964 37       		.uleb128 0x37
 3813 1965 9C0D0000 		.4byte	.LASF377
 3814 1969 02       		.byte	0x2
 3815 196a 37       		.uleb128 0x37
 3816 196b EA120000 		.4byte	.LASF378
 3817 196f 03       		.byte	0x3
 3818 1970 00       		.byte	0
 3819 1971 38       		.uleb128 0x38
 3820 1972 71120000 		.4byte	.LASF379
 3821 1976 04       		.byte	0x4
 3822 1977 3C000000 		.4byte	0x3c
 3823 197b 02       		.byte	0x2
 3824 197c B4       		.byte	0xb4
ARM GAS  /tmp/ccqdRJW7.s 			page 85


 3825 197d 0F1A0000 		.4byte	0x1a0f
 3826 1981 37       		.uleb128 0x37
 3827 1982 94180000 		.4byte	.LASF380
 3828 1986 00       		.byte	0
 3829 1987 39       		.uleb128 0x39
 3830 1988 A8180000 		.4byte	.LASF381
 3831 198c 00000100 		.4byte	0x10000
 3832 1990 39       		.uleb128 0x39
 3833 1991 BC180000 		.4byte	.LASF382
 3834 1995 00000200 		.4byte	0x20000
 3835 1999 39       		.uleb128 0x39
 3836 199a D0180000 		.4byte	.LASF383
 3837 199e 00000300 		.4byte	0x30000
 3838 19a2 39       		.uleb128 0x39
 3839 19a3 E4180000 		.4byte	.LASF384
 3840 19a7 00000400 		.4byte	0x40000
 3841 19ab 39       		.uleb128 0x39
 3842 19ac F8180000 		.4byte	.LASF385
 3843 19b0 00000500 		.4byte	0x50000
 3844 19b4 39       		.uleb128 0x39
 3845 19b5 0C190000 		.4byte	.LASF386
 3846 19b9 00000600 		.4byte	0x60000
 3847 19bd 39       		.uleb128 0x39
 3848 19be 20190000 		.4byte	.LASF387
 3849 19c2 00000700 		.4byte	0x70000
 3850 19c6 39       		.uleb128 0x39
 3851 19c7 34190000 		.4byte	.LASF388
 3852 19cb 00000800 		.4byte	0x80000
 3853 19cf 39       		.uleb128 0x39
 3854 19d0 48190000 		.4byte	.LASF389
 3855 19d4 00000900 		.4byte	0x90000
 3856 19d8 39       		.uleb128 0x39
 3857 19d9 BD1C0000 		.4byte	.LASF390
 3858 19dd 00000A00 		.4byte	0xa0000
 3859 19e1 39       		.uleb128 0x39
 3860 19e2 00000000 		.4byte	.LASF391
 3861 19e6 00000B00 		.4byte	0xb0000
 3862 19ea 39       		.uleb128 0x39
 3863 19eb 57170000 		.4byte	.LASF392
 3864 19ef 00000C00 		.4byte	0xc0000
 3865 19f3 39       		.uleb128 0x39
 3866 19f4 6C170000 		.4byte	.LASF393
 3867 19f8 00000D00 		.4byte	0xd0000
 3868 19fc 39       		.uleb128 0x39
 3869 19fd 81170000 		.4byte	.LASF394
 3870 1a01 00000E00 		.4byte	0xe0000
 3871 1a05 39       		.uleb128 0x39
 3872 1a06 96170000 		.4byte	.LASF395
 3873 1a0a 00000F00 		.4byte	0xf0000
 3874 1a0e 00       		.byte	0
 3875 1a0f 17       		.uleb128 0x17
 3876 1a10 C10B0000 		.4byte	.LASF396
 3877 1a14 18       		.byte	0x18
 3878 1a15 02       		.byte	0x2
 3879 1a16 E8       		.byte	0xe8
 3880 1a17 A21A0000 		.4byte	0x1aa2
 3881 1a1b 11       		.uleb128 0x11
ARM GAS  /tmp/ccqdRJW7.s 			page 86


 3882 1a1c B0150000 		.4byte	.LASF397
 3883 1a20 02       		.byte	0x2
 3884 1a21 EA       		.byte	0xea
 3885 1a22 5C180000 		.4byte	0x185c
 3886 1a26 00       		.byte	0
 3887 1a27 18       		.uleb128 0x18
 3888 1a28 6D636B00 		.ascii	"mck\000"
 3889 1a2c 02       		.byte	0x2
 3890 1a2d EC       		.byte	0xec
 3891 1a2e C7010000 		.4byte	0x1c7
 3892 1a32 04       		.byte	0x4
 3893 1a33 11       		.uleb128 0x11
 3894 1a34 45160000 		.4byte	.LASF398
 3895 1a38 02       		.byte	0x2
 3896 1a39 EE       		.byte	0xee
 3897 1a3a C7010000 		.4byte	0x1c7
 3898 1a3e 08       		.byte	0x8
 3899 1a3f 11       		.uleb128 0x11
 3900 1a40 71150000 		.4byte	.LASF399
 3901 1a44 02       		.byte	0x2
 3902 1a45 F0       		.byte	0xf0
 3903 1a46 71190000 		.4byte	0x1971
 3904 1a4a 0C       		.byte	0xc
 3905 1a4b 11       		.uleb128 0x11
 3906 1a4c 2F050000 		.4byte	.LASF400
 3907 1a50 02       		.byte	0x2
 3908 1a51 F6       		.byte	0xf6
 3909 1a52 91010000 		.4byte	0x191
 3910 1a56 10       		.byte	0x10
 3911 1a57 11       		.uleb128 0x11
 3912 1a58 93020000 		.4byte	.LASF401
 3913 1a5c 02       		.byte	0x2
 3914 1a5d F8       		.byte	0xf8
 3915 1a5e 91010000 		.4byte	0x191
 3916 1a62 11       		.byte	0x11
 3917 1a63 11       		.uleb128 0x11
 3918 1a64 0C080000 		.4byte	.LASF402
 3919 1a68 02       		.byte	0x2
 3920 1a69 FA       		.byte	0xfa
 3921 1a6a 4B170000 		.4byte	0x174b
 3922 1a6e 12       		.byte	0x12
 3923 1a6f 11       		.uleb128 0x11
 3924 1a70 C7190000 		.4byte	.LASF403
 3925 1a74 02       		.byte	0x2
 3926 1a75 FC       		.byte	0xfc
 3927 1a76 4B170000 		.4byte	0x174b
 3928 1a7a 13       		.byte	0x13
 3929 1a7b 18       		.uleb128 0x18
 3930 1a7c 74616700 		.ascii	"tag\000"
 3931 1a80 02       		.byte	0x2
 3932 1a81 FE       		.byte	0xfe
 3933 1a82 4B170000 		.4byte	0x174b
 3934 1a86 14       		.byte	0x14
 3935 1a87 3B       		.uleb128 0x3b
 3936 1a88 73746D00 		.ascii	"stm\000"
 3937 1a8c 02       		.byte	0x2
 3938 1a8d 0001     		.2byte	0x100
ARM GAS  /tmp/ccqdRJW7.s 			page 87


 3939 1a8f 4B170000 		.4byte	0x174b
 3940 1a93 15       		.byte	0x15
 3941 1a94 07       		.uleb128 0x7
 3942 1a95 190D0000 		.4byte	.LASF404
 3943 1a99 02       		.byte	0x2
 3944 1a9a 0201     		.2byte	0x102
 3945 1a9c 91010000 		.4byte	0x191
 3946 1aa0 16       		.byte	0x16
 3947 1aa1 00       		.byte	0
 3948 1aa2 23       		.uleb128 0x23
 3949 1aa3 20050000 		.4byte	.LASF405
 3950 1aa7 02       		.byte	0x2
 3951 1aa8 02       		.byte	0x2
 3952 1aa9 0601     		.2byte	0x106
 3953 1aab CA1A0000 		.4byte	0x1aca
 3954 1aaf 07       		.uleb128 0x7
 3955 1ab0 62080000 		.4byte	.LASF406
 3956 1ab4 02       		.byte	0x2
 3957 1ab5 0801     		.2byte	0x108
 3958 1ab7 4B170000 		.4byte	0x174b
 3959 1abb 00       		.byte	0
 3960 1abc 07       		.uleb128 0x7
 3961 1abd 73010000 		.4byte	.LASF407
 3962 1ac1 02       		.byte	0x2
 3963 1ac2 0A01     		.2byte	0x10a
 3964 1ac4 48190000 		.4byte	0x1948
 3965 1ac8 01       		.byte	0x1
 3966 1ac9 00       		.byte	0
 3967 1aca 35       		.uleb128 0x35
 3968 1acb C6170000 		.4byte	.LASF408
 3969 1acf 04       		.byte	0x4
 3970 1ad0 3C000000 		.4byte	0x3c
 3971 1ad4 02       		.byte	0x2
 3972 1ad5 4C01     		.2byte	0x14c
 3973 1ad7 4B1B0000 		.4byte	0x1b4b
 3974 1adb 37       		.uleb128 0x37
 3975 1adc 71130000 		.4byte	.LASF409
 3976 1ae0 00       		.byte	0
 3977 1ae1 37       		.uleb128 0x37
 3978 1ae2 86130000 		.4byte	.LASF410
 3979 1ae6 01       		.byte	0x1
 3980 1ae7 37       		.uleb128 0x37
 3981 1ae8 9B130000 		.4byte	.LASF411
 3982 1aec 02       		.byte	0x2
 3983 1aed 37       		.uleb128 0x37
 3984 1aee B0130000 		.4byte	.LASF412
 3985 1af2 03       		.byte	0x3
 3986 1af3 37       		.uleb128 0x37
 3987 1af4 C5130000 		.4byte	.LASF413
 3988 1af8 04       		.byte	0x4
 3989 1af9 37       		.uleb128 0x37
 3990 1afa DA130000 		.4byte	.LASF414
 3991 1afe 05       		.byte	0x5
 3992 1aff 37       		.uleb128 0x37
 3993 1b00 EF130000 		.4byte	.LASF415
 3994 1b04 06       		.byte	0x6
 3995 1b05 37       		.uleb128 0x37
ARM GAS  /tmp/ccqdRJW7.s 			page 88


 3996 1b06 04140000 		.4byte	.LASF416
 3997 1b0a 07       		.byte	0x7
 3998 1b0b 37       		.uleb128 0x37
 3999 1b0c 19140000 		.4byte	.LASF417
 4000 1b10 08       		.byte	0x8
 4001 1b11 37       		.uleb128 0x37
 4002 1b12 2E140000 		.4byte	.LASF418
 4003 1b16 09       		.byte	0x9
 4004 1b17 37       		.uleb128 0x37
 4005 1b18 701B0000 		.4byte	.LASF419
 4006 1b1c 0A       		.byte	0xa
 4007 1b1d 37       		.uleb128 0x37
 4008 1b1e 861B0000 		.4byte	.LASF420
 4009 1b22 0B       		.byte	0xb
 4010 1b23 37       		.uleb128 0x37
 4011 1b24 57120000 		.4byte	.LASF421
 4012 1b28 0C       		.byte	0xc
 4013 1b29 37       		.uleb128 0x37
 4014 1b2a E9110000 		.4byte	.LASF422
 4015 1b2e 0D       		.byte	0xd
 4016 1b2f 37       		.uleb128 0x37
 4017 1b30 780F0000 		.4byte	.LASF423
 4018 1b34 0E       		.byte	0xe
 4019 1b35 37       		.uleb128 0x37
 4020 1b36 AB170000 		.4byte	.LASF424
 4021 1b3a 0F       		.byte	0xf
 4022 1b3b 37       		.uleb128 0x37
 4023 1b3c 41000000 		.4byte	.LASF425
 4024 1b40 10       		.byte	0x10
 4025 1b41 39       		.uleb128 0x39
 4026 1b42 17110000 		.4byte	.LASF426
 4027 1b46 FF0F0047 		.4byte	0x47000fff
 4028 1b4a 00       		.byte	0
 4029 1b4b 38       		.uleb128 0x38
 4030 1b4c A31A0000 		.4byte	.LASF427
 4031 1b50 04       		.byte	0x4
 4032 1b51 3C000000 		.4byte	0x3c
 4033 1b55 19       		.byte	0x19
 4034 1b56 50       		.byte	0x50
 4035 1b57 A11B0000 		.4byte	0x1ba1
 4036 1b5b 37       		.uleb128 0x37
 4037 1b5c 220C0000 		.4byte	.LASF428
 4038 1b60 00       		.byte	0
 4039 1b61 39       		.uleb128 0x39
 4040 1b62 390C0000 		.4byte	.LASF429
 4041 1b66 00000008 		.4byte	0x8000000
 4042 1b6a 39       		.uleb128 0x39
 4043 1b6b 460C0000 		.4byte	.LASF430
 4044 1b6f 00000010 		.4byte	0x10000000
 4045 1b73 39       		.uleb128 0x39
 4046 1b74 70140000 		.4byte	.LASF431
 4047 1b78 00000018 		.4byte	0x18000000
 4048 1b7c 39       		.uleb128 0x39
 4049 1b7d 5C0C0000 		.4byte	.LASF432
 4050 1b81 00000020 		.4byte	0x20000000
 4051 1b85 39       		.uleb128 0x39
 4052 1b86 FE060000 		.4byte	.LASF433
ARM GAS  /tmp/ccqdRJW7.s 			page 89


 4053 1b8a 00000028 		.4byte	0x28000000
 4054 1b8e 39       		.uleb128 0x39
 4055 1b8f DE0B0000 		.4byte	.LASF434
 4056 1b93 00000030 		.4byte	0x30000000
 4057 1b97 39       		.uleb128 0x39
 4058 1b98 EB0B0000 		.4byte	.LASF435
 4059 1b9c 00000038 		.4byte	0x38000000
 4060 1ba0 00       		.byte	0
 4061 1ba1 03       		.uleb128 0x3
 4062 1ba2 26000000 		.4byte	.LASF436
 4063 1ba6 19       		.byte	0x19
 4064 1ba7 5B       		.byte	0x5b
 4065 1ba8 4B1B0000 		.4byte	0x1b4b
 4066 1bac 14       		.uleb128 0x14
 4067 1bad 50696E00 		.ascii	"Pin\000"
 4068 1bb1 1A       		.byte	0x1a
 4069 1bb2 38       		.byte	0x38
 4070 1bb3 91010000 		.4byte	0x191
 4071 1bb7 04       		.uleb128 0x4
 4072 1bb8 AC1B0000 		.4byte	0x1bac
 4073 1bbc 3C       		.uleb128 0x3c
 4074 1bbd A6070000 		.4byte	.LASF437
 4075 1bc1 1A       		.byte	0x1a
 4076 1bc2 39       		.byte	0x39
 4077 1bc3 B71B0000 		.4byte	0x1bb7
 4078 1bc7 7F       		.sleb128 -1
 4079 1bc8 38       		.uleb128 0x38
 4080 1bc9 58090000 		.4byte	.LASF438
 4081 1bcd 01       		.byte	0x1
 4082 1bce 9A000000 		.4byte	0x9a
 4083 1bd2 1A       		.byte	0x1a
 4084 1bd3 4E       		.byte	0x4e
 4085 1bd4 0F1C0000 		.4byte	0x1c0f
 4086 1bd8 36       		.uleb128 0x36
 4087 1bd9 1B120000 		.4byte	.LASF439
 4088 1bdd 7F       		.sleb128 -1
 4089 1bde 37       		.uleb128 0x37
 4090 1bdf 330B0000 		.4byte	.LASF440
 4091 1be3 00       		.byte	0
 4092 1be4 37       		.uleb128 0x37
 4093 1be5 3B0B0000 		.4byte	.LASF441
 4094 1be9 01       		.byte	0x1
 4095 1bea 37       		.uleb128 0x37
 4096 1beb 430B0000 		.4byte	.LASF442
 4097 1bef 02       		.byte	0x2
 4098 1bf0 37       		.uleb128 0x37
 4099 1bf1 4B0B0000 		.4byte	.LASF443
 4100 1bf5 03       		.byte	0x3
 4101 1bf6 37       		.uleb128 0x37
 4102 1bf7 530B0000 		.4byte	.LASF444
 4103 1bfb 04       		.byte	0x4
 4104 1bfc 37       		.uleb128 0x37
 4105 1bfd 5B0B0000 		.4byte	.LASF445
 4106 1c01 05       		.byte	0x5
 4107 1c02 37       		.uleb128 0x37
 4108 1c03 630B0000 		.4byte	.LASF446
 4109 1c07 06       		.byte	0x6
ARM GAS  /tmp/ccqdRJW7.s 			page 90


 4110 1c08 37       		.uleb128 0x37
 4111 1c09 6B0B0000 		.4byte	.LASF447
 4112 1c0d 07       		.byte	0x7
 4113 1c0e 00       		.byte	0
 4114 1c0f 03       		.uleb128 0x3
 4115 1c10 D31A0000 		.4byte	.LASF448
 4116 1c14 1A       		.byte	0x1a
 4117 1c15 59       		.byte	0x59
 4118 1c16 C81B0000 		.4byte	0x1bc8
 4119 1c1a 38       		.uleb128 0x38
 4120 1c1b E7060000 		.4byte	.LASF449
 4121 1c1f 01       		.byte	0x1
 4122 1c20 9A000000 		.4byte	0x9a
 4123 1c24 1A       		.byte	0x1a
 4124 1c25 5C       		.byte	0x5c
 4125 1c26 9D1C0000 		.4byte	0x1c9d
 4126 1c2a 36       		.uleb128 0x36
 4127 1c2b 8A090000 		.4byte	.LASF450
 4128 1c2f 7F       		.sleb128 -1
 4129 1c30 37       		.uleb128 0x37
 4130 1c31 A4020000 		.4byte	.LASF451
 4131 1c35 00       		.byte	0
 4132 1c36 37       		.uleb128 0x37
 4133 1c37 32030000 		.4byte	.LASF452
 4134 1c3b 01       		.byte	0x1
 4135 1c3c 37       		.uleb128 0x37
 4136 1c3d AD020000 		.4byte	.LASF453
 4137 1c41 02       		.byte	0x2
 4138 1c42 37       		.uleb128 0x37
 4139 1c43 3B030000 		.4byte	.LASF454
 4140 1c47 03       		.byte	0x3
 4141 1c48 37       		.uleb128 0x37
 4142 1c49 B6020000 		.4byte	.LASF455
 4143 1c4d 04       		.byte	0x4
 4144 1c4e 37       		.uleb128 0x37
 4145 1c4f 44030000 		.4byte	.LASF456
 4146 1c53 05       		.byte	0x5
 4147 1c54 37       		.uleb128 0x37
 4148 1c55 E1010000 		.4byte	.LASF457
 4149 1c59 06       		.byte	0x6
 4150 1c5a 37       		.uleb128 0x37
 4151 1c5b D1020000 		.4byte	.LASF458
 4152 1c5f 07       		.byte	0x7
 4153 1c60 37       		.uleb128 0x37
 4154 1c61 19160000 		.4byte	.LASF459
 4155 1c65 08       		.byte	0x8
 4156 1c66 37       		.uleb128 0x37
 4157 1c67 DA020000 		.4byte	.LASF460
 4158 1c6b 09       		.byte	0x9
 4159 1c6c 37       		.uleb128 0x37
 4160 1c6d 22160000 		.4byte	.LASF461
 4161 1c71 0A       		.byte	0xa
 4162 1c72 37       		.uleb128 0x37
 4163 1c73 E3020000 		.4byte	.LASF462
 4164 1c77 0B       		.byte	0xb
 4165 1c78 37       		.uleb128 0x37
 4166 1c79 92010000 		.4byte	.LASF463
ARM GAS  /tmp/ccqdRJW7.s 			page 91


 4167 1c7d 0C       		.byte	0xc
 4168 1c7e 37       		.uleb128 0x37
 4169 1c7f 1A020000 		.4byte	.LASF464
 4170 1c83 0D       		.byte	0xd
 4171 1c84 37       		.uleb128 0x37
 4172 1c85 9B010000 		.4byte	.LASF465
 4173 1c89 0E       		.byte	0xe
 4174 1c8a 37       		.uleb128 0x37
 4175 1c8b 23020000 		.4byte	.LASF466
 4176 1c8f 0F       		.byte	0xf
 4177 1c90 37       		.uleb128 0x37
 4178 1c91 A4010000 		.4byte	.LASF467
 4179 1c95 10       		.byte	0x10
 4180 1c96 37       		.uleb128 0x37
 4181 1c97 2C020000 		.4byte	.LASF468
 4182 1c9b 11       		.byte	0x11
 4183 1c9c 00       		.byte	0
 4184 1c9d 03       		.uleb128 0x3
 4185 1c9e F3060000 		.4byte	.LASF469
 4186 1ca2 1A       		.byte	0x1a
 4187 1ca3 71       		.byte	0x71
 4188 1ca4 1A1C0000 		.4byte	0x1c1a
 4189 1ca8 38       		.uleb128 0x38
 4190 1ca9 73020000 		.4byte	.LASF470
 4191 1cad 01       		.byte	0x1
 4192 1cae 9A000000 		.4byte	0x9a
 4193 1cb2 1A       		.byte	0x1a
 4194 1cb3 7E       		.byte	0x7e
 4195 1cb4 8B1D0000 		.4byte	0x1d8b
 4196 1cb8 36       		.uleb128 0x36
 4197 1cb9 BC0D0000 		.4byte	.LASF471
 4198 1cbd 7F       		.sleb128 -1
 4199 1cbe 37       		.uleb128 0x37
 4200 1cbf 8A160000 		.4byte	.LASF472
 4201 1cc3 00       		.byte	0
 4202 1cc4 37       		.uleb128 0x37
 4203 1cc5 19070000 		.4byte	.LASF473
 4204 1cc9 01       		.byte	0x1
 4205 1cca 37       		.uleb128 0x37
 4206 1ccb 1E070000 		.4byte	.LASF474
 4207 1ccf 02       		.byte	0x2
 4208 1cd0 37       		.uleb128 0x37
 4209 1cd1 23070000 		.4byte	.LASF475
 4210 1cd5 03       		.byte	0x3
 4211 1cd6 37       		.uleb128 0x37
 4212 1cd7 28070000 		.4byte	.LASF476
 4213 1cdb 04       		.byte	0x4
 4214 1cdc 37       		.uleb128 0x37
 4215 1cdd 2D070000 		.4byte	.LASF477
 4216 1ce1 05       		.byte	0x5
 4217 1ce2 37       		.uleb128 0x37
 4218 1ce3 32070000 		.4byte	.LASF478
 4219 1ce7 06       		.byte	0x6
 4220 1ce8 37       		.uleb128 0x37
 4221 1ce9 37070000 		.4byte	.LASF479
 4222 1ced 07       		.byte	0x7
 4223 1cee 37       		.uleb128 0x37
ARM GAS  /tmp/ccqdRJW7.s 			page 92


 4224 1cef 3C070000 		.4byte	.LASF480
 4225 1cf3 08       		.byte	0x8
 4226 1cf4 37       		.uleb128 0x37
 4227 1cf5 41070000 		.4byte	.LASF481
 4228 1cf9 09       		.byte	0x9
 4229 1cfa 37       		.uleb128 0x37
 4230 1cfb AC070000 		.4byte	.LASF482
 4231 1cff 0A       		.byte	0xa
 4232 1d00 37       		.uleb128 0x37
 4233 1d01 B2070000 		.4byte	.LASF483
 4234 1d05 0B       		.byte	0xb
 4235 1d06 37       		.uleb128 0x37
 4236 1d07 B8070000 		.4byte	.LASF484
 4237 1d0b 0C       		.byte	0xc
 4238 1d0c 37       		.uleb128 0x37
 4239 1d0d BE070000 		.4byte	.LASF485
 4240 1d11 0D       		.byte	0xd
 4241 1d12 37       		.uleb128 0x37
 4242 1d13 C4070000 		.4byte	.LASF486
 4243 1d17 0E       		.byte	0xe
 4244 1d18 37       		.uleb128 0x37
 4245 1d19 CA070000 		.4byte	.LASF487
 4246 1d1d 0F       		.byte	0xf
 4247 1d1e 37       		.uleb128 0x37
 4248 1d1f D0070000 		.4byte	.LASF488
 4249 1d23 10       		.byte	0x10
 4250 1d24 37       		.uleb128 0x37
 4251 1d25 BB0B0000 		.4byte	.LASF489
 4252 1d29 11       		.byte	0x11
 4253 1d2a 37       		.uleb128 0x37
 4254 1d2b E5070000 		.4byte	.LASF490
 4255 1d2f 12       		.byte	0x12
 4256 1d30 37       		.uleb128 0x37
 4257 1d31 EB070000 		.4byte	.LASF491
 4258 1d35 13       		.byte	0x13
 4259 1d36 37       		.uleb128 0x37
 4260 1d37 26080000 		.4byte	.LASF492
 4261 1d3b 14       		.byte	0x14
 4262 1d3c 37       		.uleb128 0x37
 4263 1d3d 2C080000 		.4byte	.LASF493
 4264 1d41 15       		.byte	0x15
 4265 1d42 37       		.uleb128 0x37
 4266 1d43 32080000 		.4byte	.LASF494
 4267 1d47 16       		.byte	0x16
 4268 1d48 37       		.uleb128 0x37
 4269 1d49 38080000 		.4byte	.LASF495
 4270 1d4d 17       		.byte	0x17
 4271 1d4e 37       		.uleb128 0x37
 4272 1d4f 3E080000 		.4byte	.LASF496
 4273 1d53 18       		.byte	0x18
 4274 1d54 37       		.uleb128 0x37
 4275 1d55 44080000 		.4byte	.LASF497
 4276 1d59 19       		.byte	0x19
 4277 1d5a 37       		.uleb128 0x37
 4278 1d5b 4A080000 		.4byte	.LASF498
 4279 1d5f 1A       		.byte	0x1a
 4280 1d60 37       		.uleb128 0x37
ARM GAS  /tmp/ccqdRJW7.s 			page 93


 4281 1d61 50080000 		.4byte	.LASF499
 4282 1d65 1B       		.byte	0x1b
 4283 1d66 37       		.uleb128 0x37
 4284 1d67 56080000 		.4byte	.LASF500
 4285 1d6b 1C       		.byte	0x1c
 4286 1d6c 37       		.uleb128 0x37
 4287 1d6d 5C080000 		.4byte	.LASF501
 4288 1d71 1D       		.byte	0x1d
 4289 1d72 37       		.uleb128 0x37
 4290 1d73 D3080000 		.4byte	.LASF502
 4291 1d77 1E       		.byte	0x1e
 4292 1d78 37       		.uleb128 0x37
 4293 1d79 D9080000 		.4byte	.LASF503
 4294 1d7d 1F       		.byte	0x1f
 4295 1d7e 3D       		.uleb128 0x3d
 4296 1d7f 44413000 		.ascii	"DA0\000"
 4297 1d83 20       		.byte	0x20
 4298 1d84 3D       		.uleb128 0x3d
 4299 1d85 44413100 		.ascii	"DA1\000"
 4300 1d89 21       		.byte	0x21
 4301 1d8a 00       		.byte	0
 4302 1d8b 17       		.uleb128 0x17
 4303 1d8c 2E040000 		.4byte	.LASF504
 4304 1d90 1C       		.byte	0x1c
 4305 1d91 1A       		.byte	0x1a
 4306 1d92 AF       		.byte	0xaf
 4307 1d93 041E0000 		.4byte	0x1e04
 4308 1d97 11       		.uleb128 0x11
 4309 1d98 17040000 		.4byte	.LASF505
 4310 1d9c 1A       		.byte	0x1a
 4311 1d9d B1       		.byte	0xb1
 4312 1d9e 091E0000 		.4byte	0x1e09
 4313 1da2 00       		.byte	0
 4314 1da3 11       		.uleb128 0x11
 4315 1da4 1C0C0000 		.4byte	.LASF506
 4316 1da8 1A       		.byte	0x1a
 4317 1da9 B2       		.byte	0xb2
 4318 1daa C7010000 		.4byte	0x1c7
 4319 1dae 04       		.byte	0x4
 4320 1daf 11       		.uleb128 0x11
 4321 1db0 0C010000 		.4byte	.LASF507
 4322 1db4 1A       		.byte	0x1a
 4323 1db5 B3       		.byte	0xb3
 4324 1db6 C7010000 		.4byte	0x1c7
 4325 1dba 08       		.byte	0x8
 4326 1dbb 11       		.uleb128 0x11
 4327 1dbc D2040000 		.4byte	.LASF508
 4328 1dc0 1A       		.byte	0x1a
 4329 1dc1 B4       		.byte	0xb4
 4330 1dc2 A11B0000 		.4byte	0x1ba1
 4331 1dc6 0C       		.byte	0xc
 4332 1dc7 11       		.uleb128 0x11
 4333 1dc8 D00E0000 		.4byte	.LASF509
 4334 1dcc 1A       		.byte	0x1a
 4335 1dcd B5       		.byte	0xb5
 4336 1dce C7010000 		.4byte	0x1c7
 4337 1dd2 10       		.byte	0x10
ARM GAS  /tmp/ccqdRJW7.s 			page 94


 4338 1dd3 11       		.uleb128 0x11
 4339 1dd4 AD140000 		.4byte	.LASF510
 4340 1dd8 1A       		.byte	0x1a
 4341 1dd9 B6       		.byte	0xb6
 4342 1dda C7010000 		.4byte	0x1c7
 4343 1dde 14       		.byte	0x14
 4344 1ddf 11       		.uleb128 0x11
 4345 1de0 C2050000 		.4byte	.LASF511
 4346 1de4 1A       		.byte	0x1a
 4347 1de5 B7       		.byte	0xb7
 4348 1de6 A81C0000 		.4byte	0x1ca8
 4349 1dea 18       		.byte	0x18
 4350 1deb 11       		.uleb128 0x11
 4351 1dec 231C0000 		.4byte	.LASF512
 4352 1df0 1A       		.byte	0x1a
 4353 1df1 B8       		.byte	0xb8
 4354 1df2 0F1C0000 		.4byte	0x1c0f
 4355 1df6 19       		.byte	0x19
 4356 1df7 11       		.uleb128 0x11
 4357 1df8 43150000 		.4byte	.LASF513
 4358 1dfc 1A       		.byte	0x1a
 4359 1dfd B9       		.byte	0xb9
 4360 1dfe 9D1C0000 		.4byte	0x1c9d
 4361 1e02 1A       		.byte	0x1a
 4362 1e03 00       		.byte	0
 4363 1e04 04       		.uleb128 0x4
 4364 1e05 8B1D0000 		.4byte	0x1d8b
 4365 1e09 19       		.uleb128 0x19
 4366 1e0a 04       		.byte	0x4
 4367 1e0b 85080000 		.4byte	0x885
 4368 1e0f 0C       		.uleb128 0xc
 4369 1e10 041E0000 		.4byte	0x1e04
 4370 1e14 1A1E0000 		.4byte	0x1e1a
 4371 1e18 3E       		.uleb128 0x3e
 4372 1e19 00       		.byte	0
 4373 1e1a 0F       		.uleb128 0xf
 4374 1e1b 07130000 		.4byte	.LASF514
 4375 1e1f 1A       		.byte	0x1a
 4376 1e20 BD       		.byte	0xbd
 4377 1e21 0F1E0000 		.4byte	0x1e0f
 4378 1e25 0F       		.uleb128 0xf
 4379 1e26 5A140000 		.4byte	.LASF515
 4380 1e2a 1B       		.byte	0x1b
 4381 1e2b 2E       		.byte	0x2e
 4382 1e2c EC0E0000 		.4byte	0xeec
 4383 1e30 0C       		.uleb128 0xc
 4384 1e31 C30E0000 		.4byte	0xec3
 4385 1e35 3B1E0000 		.4byte	0x1e3b
 4386 1e39 3E       		.uleb128 0x3e
 4387 1e3a 00       		.byte	0
 4388 1e3b 0F       		.uleb128 0xf
 4389 1e3c 6D060000 		.4byte	.LASF516
 4390 1e40 1B       		.byte	0x1b
 4391 1e41 6E       		.byte	0x6e
 4392 1e42 301E0000 		.4byte	0x1e30
 4393 1e46 3F       		.uleb128 0x3f
 4394 1e47 F3090000 		.4byte	.LASF518
ARM GAS  /tmp/ccqdRJW7.s 			page 95


 4395 1e4b 741E0000 		.4byte	0x1e74
 4396 1e4f 40       		.uleb128 0x40
 4397 1e50 EB100000 		.4byte	.LASF593
 4398 1e54 22       		.byte	0x22
 4399 1e55 3B       		.byte	0x3b
 4400 1e56 F61A0000 		.4byte	.LASF594
 4401 1e5a 2C000000 		.4byte	0x2c
 4402 1e5e 01       		.byte	0x1
 4403 1e5f 631E0000 		.4byte	0x1e63
 4404 1e63 41       		.uleb128 0x41
 4405 1e64 741E0000 		.4byte	0x1e74
 4406 1e68 1D       		.uleb128 0x1d
 4407 1e69 EC0E0000 		.4byte	0xeec
 4408 1e6d 1D       		.uleb128 0x1d
 4409 1e6e 2C000000 		.4byte	0x2c
 4410 1e72 00       		.byte	0
 4411 1e73 00       		.byte	0
 4412 1e74 19       		.uleb128 0x19
 4413 1e75 04       		.byte	0x4
 4414 1e76 461E0000 		.4byte	0x1e46
 4415 1e7a 42       		.uleb128 0x42
 4416 1e7b 520A0000 		.4byte	.LASF517
 4417 1e7f 1C       		.byte	0x1c
 4418 1e80 1D       		.byte	0x1d
 4419 1e81 37000000 		.4byte	0x37
 4420 1e85 0002     		.2byte	0x200
 4421 1e87 3F       		.uleb128 0x3f
 4422 1e88 76190000 		.4byte	.LASF519
 4423 1e8c 981E0000 		.4byte	0x1e98
 4424 1e90 28       		.uleb128 0x28
 4425 1e91 1D       		.byte	0x1d
 4426 1e92 26       		.byte	0x26
 4427 1e93 4F1E0000 		.4byte	0x1e4f
 4428 1e97 00       		.byte	0
 4429 1e98 0F       		.uleb128 0xf
 4430 1e99 8F160000 		.4byte	.LASF520
 4431 1e9d 1E       		.byte	0x1e
 4432 1e9e 8B       		.byte	0x8b
 4433 1e9f E2000000 		.4byte	0xe2
 4434 1ea3 0F       		.uleb128 0xf
 4435 1ea4 1D040000 		.4byte	.LASF521
 4436 1ea8 1E       		.byte	0x1e
 4437 1ea9 8C       		.byte	0x8c
 4438 1eaa 25000000 		.4byte	0x25
 4439 1eae 0C       		.uleb128 0xc
 4440 1eaf B60E0000 		.4byte	0xeb6
 4441 1eb3 BE1E0000 		.4byte	0x1ebe
 4442 1eb7 0D       		.uleb128 0xd
 4443 1eb8 D0020000 		.4byte	0x2d0
 4444 1ebc 01       		.byte	0x1
 4445 1ebd 00       		.byte	0
 4446 1ebe 0F       		.uleb128 0xf
 4447 1ebf 1C0B0000 		.4byte	.LASF522
 4448 1ec3 1E       		.byte	0x1e
 4449 1ec4 8F       		.byte	0x8f
 4450 1ec5 AE1E0000 		.4byte	0x1eae
 4451 1ec9 43       		.uleb128 0x43
ARM GAS  /tmp/ccqdRJW7.s 			page 96


 4452 1eca DC190000 		.4byte	.LASF523
 4453 1ece 1F       		.byte	0x1f
 4454 1ecf 5C       		.byte	0x5c
 4455 1ed0 9C010000 		.4byte	0x19c
 4456 1ed4 38       		.byte	0x38
 4457 1ed5 43       		.uleb128 0x43
 4458 1ed6 86000000 		.4byte	.LASF524
 4459 1eda 1F       		.byte	0x1f
 4460 1edb 5D       		.byte	0x5d
 4461 1edc 9C010000 		.4byte	0x19c
 4462 1ee0 05       		.byte	0x5
 4463 1ee1 43       		.uleb128 0x43
 4464 1ee2 77050000 		.4byte	.LASF525
 4465 1ee6 1F       		.byte	0x1f
 4466 1ee7 5E       		.byte	0x5e
 4467 1ee8 9C010000 		.4byte	0x19c
 4468 1eec 06       		.byte	0x6
 4469 1eed 43       		.uleb128 0x43
 4470 1eee E8190000 		.4byte	.LASF526
 4471 1ef2 1F       		.byte	0x1f
 4472 1ef3 60       		.byte	0x60
 4473 1ef4 9C010000 		.4byte	0x19c
 4474 1ef8 39       		.byte	0x39
 4475 1ef9 43       		.uleb128 0x43
 4476 1efa 6C080000 		.4byte	.LASF527
 4477 1efe 1F       		.byte	0x1f
 4478 1eff 61       		.byte	0x61
 4479 1f00 9C010000 		.4byte	0x19c
 4480 1f04 03       		.byte	0x3
 4481 1f05 43       		.uleb128 0x43
 4482 1f06 5F0D0000 		.4byte	.LASF528
 4483 1f0a 1F       		.byte	0x1f
 4484 1f0b 62       		.byte	0x62
 4485 1f0c 9C010000 		.4byte	0x19c
 4486 1f10 04       		.byte	0x4
 4487 1f11 43       		.uleb128 0x43
 4488 1f12 AE000000 		.4byte	.LASF529
 4489 1f16 1F       		.byte	0x1f
 4490 1f17 69       		.byte	0x69
 4491 1f18 9C010000 		.4byte	0x19c
 4492 1f1c 33       		.byte	0x33
 4493 1f1d 43       		.uleb128 0x43
 4494 1f1e 3D040000 		.4byte	.LASF530
 4495 1f22 1F       		.byte	0x1f
 4496 1f23 6A       		.byte	0x6a
 4497 1f24 9C010000 		.4byte	0x19c
 4498 1f28 34       		.byte	0x34
 4499 1f29 43       		.uleb128 0x43
 4500 1f2a 4E020000 		.4byte	.LASF531
 4501 1f2e 1F       		.byte	0x1f
 4502 1f2f 6D       		.byte	0x6d
 4503 1f30 9C010000 		.4byte	0x19c
 4504 1f34 35       		.byte	0x35
 4505 1f35 43       		.uleb128 0x43
 4506 1f36 B9060000 		.4byte	.LASF532
 4507 1f3a 1F       		.byte	0x1f
 4508 1f3b 6E       		.byte	0x6e
ARM GAS  /tmp/ccqdRJW7.s 			page 97


 4509 1f3c 9C010000 		.4byte	0x19c
 4510 1f40 36       		.byte	0x36
 4511 1f41 43       		.uleb128 0x43
 4512 1f42 8F1C0000 		.4byte	.LASF533
 4513 1f46 1F       		.byte	0x1f
 4514 1f47 6F       		.byte	0x6f
 4515 1f48 9C010000 		.4byte	0x19c
 4516 1f4c 37       		.byte	0x37
 4517 1f4d 43       		.uleb128 0x43
 4518 1f4e 4F150000 		.4byte	.LASF534
 4519 1f52 1F       		.byte	0x1f
 4520 1f53 71       		.byte	0x71
 4521 1f54 D7010000 		.4byte	0x1d7
 4522 1f58 32       		.byte	0x32
 4523 1f59 44       		.uleb128 0x44
 4524 1f5a 66020000 		.4byte	.LASF535
 4525 1f5e 1F       		.byte	0x1f
 4526 1f5f 73       		.byte	0x73
 4527 1f60 D7010000 		.4byte	0x1d7
 4528 1f64 58466100 		.4byte	0x614658
 4529 1f68 42       		.uleb128 0x42
 4530 1f69 F5080000 		.4byte	.LASF536
 4531 1f6d 1F       		.byte	0x1f
 4532 1f6e 74       		.byte	0x74
 4533 1f6f D7010000 		.4byte	0x1d7
 4534 1f73 4661     		.2byte	0x6146
 4535 1f75 0F       		.uleb128 0xf
 4536 1f76 BC140000 		.4byte	.LASF537
 4537 1f7a 1F       		.byte	0x1f
 4538 1f7b 80       		.byte	0x80
 4539 1f7c 871E0000 		.4byte	0x1e87
 4540 1f80 0F       		.uleb128 0xf
 4541 1f81 1B1C0000 		.4byte	.LASF538
 4542 1f85 1F       		.byte	0x1f
 4543 1f86 81       		.byte	0x81
 4544 1f87 871E0000 		.4byte	0x1e87
 4545 1f8b 45       		.uleb128 0x45
 4546 1f8c 3F100000 		.4byte	.LASF595
 4547 1f90 0F       		.uleb128 0xf
 4548 1f91 E10F0000 		.4byte	.LASF539
 4549 1f95 20       		.byte	0x20
 4550 1f96 30       		.byte	0x30
 4551 1f97 8B1F0000 		.4byte	0x1f8b
 4552 1f9b 43       		.uleb128 0x43
 4553 1f9c E3160000 		.4byte	.LASF540
 4554 1fa0 01       		.byte	0x1
 4555 1fa1 1C       		.byte	0x1c
 4556 1fa2 43000000 		.4byte	0x43
 4557 1fa6 1B       		.byte	0x1b
 4558 1fa7 42       		.uleb128 0x42
 4559 1fa8 D7120000 		.4byte	.LASF541
 4560 1fac 01       		.byte	0x1
 4561 1fad 1D       		.byte	0x1d
 4562 1fae D7010000 		.4byte	0x1d7
 4563 1fb2 FF0F     		.2byte	0xfff
 4564 1fb4 44       		.uleb128 0x44
 4565 1fb5 BF000000 		.4byte	.LASF542
ARM GAS  /tmp/ccqdRJW7.s 			page 98


 4566 1fb9 01       		.byte	0x1
 4567 1fba 1E       		.byte	0x1e
 4568 1fbb D7010000 		.4byte	0x1d7
 4569 1fbf 0000FF07 		.4byte	0x7ff0000
 4570 1fc3 34       		.uleb128 0x34
 4571 1fc4 21060000 		.4byte	.LASF543
 4572 1fc8 01       		.byte	0x1
 4573 1fc9 21       		.byte	0x21
 4574 1fca C7010000 		.4byte	0x1c7
 4575 1fce 05       		.uleb128 0x5
 4576 1fcf 03       		.byte	0x3
 4577 1fd0 00000000 		.4byte	_ZL14activeChannels
 4578 1fd4 46       		.uleb128 0x46
 4579 1fd5 850B0000 		.4byte	.LASF596
 4580 1fd9 01       		.byte	0x1
 4581 1fda F5       		.byte	0xf5
 4582 1fdb 631C0000 		.4byte	.LASF597
 4583 1fdf A81C0000 		.4byte	0x1ca8
 4584 1fe3 00000000 		.4byte	.LFB534
 4585 1fe7 04000000 		.4byte	.LFE534-.LFB534
 4586 1feb 01       		.uleb128 0x1
 4587 1fec 9C       		.byte	0x9c
 4588 1fed 47       		.uleb128 0x47
 4589 1fee CC190000 		.4byte	.LASF544
 4590 1ff2 01       		.byte	0x1
 4591 1ff3 E8       		.byte	0xe8
 4592 1ff4 06120000 		.4byte	.LASF546
 4593 1ff8 A81C0000 		.4byte	0x1ca8
 4594 1ffc 00000000 		.4byte	.LFB533
 4595 2000 14000000 		.4byte	.LFE533-.LFB533
 4596 2004 01       		.uleb128 0x1
 4597 2005 9C       		.byte	0x9c
 4598 2006 1A200000 		.4byte	0x201a
 4599 200a 48       		.uleb128 0x48
 4600 200b 70696E00 		.ascii	"pin\000"
 4601 200f 01       		.byte	0x1
 4602 2010 E8       		.byte	0xe8
 4603 2011 C7010000 		.4byte	0x1c7
 4604 2015 00000000 		.4byte	.LLST23
 4605 2019 00       		.byte	0
 4606 201a 47       		.uleb128 0x47
 4607 201b C3100000 		.4byte	.LASF545
 4608 201f 01       		.byte	0x1
 4609 2020 D9       		.byte	0xd9
 4610 2021 CB090000 		.4byte	.LASF547
 4611 2025 4B170000 		.4byte	0x174b
 4612 2029 00000000 		.4byte	.LFB532
 4613 202d 38000000 		.4byte	.LFE532-.LFB532
 4614 2031 01       		.uleb128 0x1
 4615 2032 9C       		.byte	0x9c
 4616 2033 97200000 		.4byte	0x2097
 4617 2037 49       		.uleb128 0x49
 4618 2038 0D180000 		.4byte	.LASF548
 4619 203c 01       		.byte	0x1
 4620 203d D9       		.byte	0xd9
 4621 203e C7010000 		.4byte	0x1c7
 4622 2042 21000000 		.4byte	.LLST19
ARM GAS  /tmp/ccqdRJW7.s 			page 99


 4623 2046 4A       		.uleb128 0x4a
 4624 2047 4A010000 		.4byte	.LASF549
 4625 204b 01       		.byte	0x1
 4626 204c E0       		.byte	0xe0
 4627 204d D7010000 		.4byte	0x1d7
 4628 2051 74000000 		.4byte	.LLST20
 4629 2055 4A       		.uleb128 0x4a
 4630 2056 C1090000 		.4byte	.LASF550
 4631 205a 01       		.byte	0x1
 4632 205b E1       		.byte	0xe1
 4633 205c D7010000 		.4byte	0x1d7
 4634 2060 E3000000 		.4byte	.LLST21
 4635 2064 4B       		.uleb128 0x4b
 4636 2065 AA240000 		.4byte	0x24aa
 4637 2069 02000000 		.4byte	.LBB116
 4638 206d 90000000 		.4byte	.Ldebug_ranges0+0x90
 4639 2071 01       		.byte	0x1
 4640 2072 E2       		.byte	0xe2
 4641 2073 7D200000 		.4byte	0x207d
 4642 2077 4C       		.uleb128 0x4c
 4643 2078 BB240000 		.4byte	0x24bb
 4644 207c 00       		.byte	0
 4645 207d 4D       		.uleb128 0x4d
 4646 207e AA240000 		.4byte	0x24aa
 4647 2082 16000000 		.4byte	.LBB120
 4648 2086 A8000000 		.4byte	.Ldebug_ranges0+0xa8
 4649 208a 01       		.byte	0x1
 4650 208b E3       		.byte	0xe3
 4651 208c 4E       		.uleb128 0x4e
 4652 208d BB240000 		.4byte	0x24bb
 4653 2091 47010000 		.4byte	.LLST22
 4654 2095 00       		.byte	0
 4655 2096 00       		.byte	0
 4656 2097 4F       		.uleb128 0x4f
 4657 2098 81040000 		.4byte	.LASF556
 4658 209c 01       		.byte	0x1
 4659 209d C2       		.byte	0xc2
 4660 209e 5A050000 		.4byte	.LASF558
 4661 20a2 00000000 		.4byte	.LFB531
 4662 20a6 48000000 		.4byte	.LFE531-.LFB531
 4663 20aa 01       		.uleb128 0x1
 4664 20ab 9C       		.byte	0x9c
 4665 20ac 4E210000 		.4byte	0x214e
 4666 20b0 49       		.uleb128 0x49
 4667 20b1 0D180000 		.4byte	.LASF548
 4668 20b5 01       		.byte	0x1
 4669 20b6 C2       		.byte	0xc2
 4670 20b7 C7010000 		.4byte	0x1c7
 4671 20bb 5F010000 		.4byte	.LLST14
 4672 20bf 50       		.uleb128 0x50
 4673 20c0 4E210000 		.4byte	0x214e
 4674 20c4 0E000000 		.4byte	.LBB108
 4675 20c8 10000000 		.4byte	.LBE108-.LBB108
 4676 20cc 01       		.byte	0x1
 4677 20cd CF       		.byte	0xcf
 4678 20ce 08210000 		.4byte	0x2108
 4679 20d2 4C       		.uleb128 0x4c
ARM GAS  /tmp/ccqdRJW7.s 			page 100


 4680 20d3 5A210000 		.4byte	0x215a
 4681 20d7 51       		.uleb128 0x51
 4682 20d8 0E000000 		.4byte	.LBB109
 4683 20dc 0C000000 		.4byte	.LBE109-.LBB109
 4684 20e0 EE200000 		.4byte	0x20ee
 4685 20e4 52       		.uleb128 0x52
 4686 20e5 66210000 		.4byte	0x2166
 4687 20e9 7D010000 		.4byte	.LLST15
 4688 20ed 00       		.byte	0
 4689 20ee 53       		.uleb128 0x53
 4690 20ef 64250000 		.4byte	0x2564
 4691 20f3 1A000000 		.4byte	.LBB110
 4692 20f7 04000000 		.4byte	.LBE110-.LBB110
 4693 20fb 01       		.byte	0x1
 4694 20fc BC       		.byte	0xbc
 4695 20fd 4E       		.uleb128 0x4e
 4696 20fe 71250000 		.4byte	0x2571
 4697 2102 A1010000 		.4byte	.LLST16
 4698 2106 00       		.byte	0
 4699 2107 00       		.byte	0
 4700 2108 53       		.uleb128 0x53
 4701 2109 4E210000 		.4byte	0x214e
 4702 210d 26000000 		.4byte	.LBB112
 4703 2111 22000000 		.4byte	.LBE112-.LBB112
 4704 2115 01       		.byte	0x1
 4705 2116 D3       		.byte	0xd3
 4706 2117 4C       		.uleb128 0x4c
 4707 2118 5A210000 		.4byte	0x215a
 4708 211c 51       		.uleb128 0x51
 4709 211d 26000000 		.4byte	.LBB113
 4710 2121 0C000000 		.4byte	.LBE113-.LBB113
 4711 2125 33210000 		.4byte	0x2133
 4712 2129 52       		.uleb128 0x52
 4713 212a 66210000 		.4byte	0x2166
 4714 212e B9010000 		.4byte	.LLST17
 4715 2132 00       		.byte	0
 4716 2133 53       		.uleb128 0x53
 4717 2134 64250000 		.4byte	0x2564
 4718 2138 32000000 		.4byte	.LBB114
 4719 213c 16000000 		.4byte	.LBE114-.LBB114
 4720 2140 01       		.byte	0x1
 4721 2141 BC       		.byte	0xbc
 4722 2142 4E       		.uleb128 0x4e
 4723 2143 71250000 		.4byte	0x2571
 4724 2147 DD010000 		.4byte	.LLST18
 4725 214b 00       		.byte	0
 4726 214c 00       		.byte	0
 4727 214d 00       		.byte	0
 4728 214e 54       		.uleb128 0x54
 4729 214f 35160000 		.4byte	.LASF567
 4730 2153 01       		.byte	0x1
 4731 2154 AE       		.byte	0xae
 4732 2155 01       		.byte	0x1
 4733 2156 73210000 		.4byte	0x2173
 4734 215a 55       		.uleb128 0x55
 4735 215b 730F0000 		.4byte	.LASF555
 4736 215f 01       		.byte	0x1
ARM GAS  /tmp/ccqdRJW7.s 			page 101


 4737 2160 AE       		.byte	0xae
 4738 2161 73210000 		.4byte	0x2173
 4739 2165 56       		.uleb128 0x56
 4740 2166 57       		.uleb128 0x57
 4741 2167 8A120000 		.4byte	.LASF554
 4742 216b 01       		.byte	0x1
 4743 216c B1       		.byte	0xb1
 4744 216d C7010000 		.4byte	0x1c7
 4745 2171 00       		.byte	0
 4746 2172 00       		.byte	0
 4747 2173 19       		.uleb128 0x19
 4748 2174 04       		.byte	0x4
 4749 2175 08050000 		.4byte	0x508
 4750 2179 04       		.uleb128 0x4
 4751 217a 73210000 		.4byte	0x2173
 4752 217e 47       		.uleb128 0x47
 4753 217f 75070000 		.4byte	.LASF551
 4754 2183 01       		.byte	0x1
 4755 2184 87       		.byte	0x87
 4756 2185 A6080000 		.4byte	.LASF552
 4757 2189 AC010000 		.4byte	0x1ac
 4758 218d 00000000 		.4byte	.LFB529
 4759 2191 28000000 		.4byte	.LFE529-.LFB529
 4760 2195 01       		.uleb128 0x1
 4761 2196 9C       		.byte	0x9c
 4762 2197 D9210000 		.4byte	0x21d9
 4763 219b 49       		.uleb128 0x49
 4764 219c A60B0000 		.4byte	.LASF553
 4765 21a0 01       		.byte	0x1
 4766 21a1 87       		.byte	0x87
 4767 21a2 A81C0000 		.4byte	0x1ca8
 4768 21a6 F5010000 		.4byte	.LLST12
 4769 21aa 58       		.uleb128 0x58
 4770 21ab 04000000 		.4byte	.LBB103
 4771 21af 18000000 		.4byte	.LBE103-.LBB103
 4772 21b3 57       		.uleb128 0x57
 4773 21b4 730F0000 		.4byte	.LASF555
 4774 21b8 01       		.byte	0x1
 4775 21b9 8E       		.byte	0x8e
 4776 21ba 79210000 		.4byte	0x2179
 4777 21be 4D       		.uleb128 0x4d
 4778 21bf 8E240000 		.4byte	0x248e
 4779 21c3 04000000 		.4byte	.LBB104
 4780 21c7 78000000 		.4byte	.Ldebug_ranges0+0x78
 4781 21cb 01       		.byte	0x1
 4782 21cc 8E       		.byte	0x8e
 4783 21cd 4E       		.uleb128 0x4e
 4784 21ce 9E240000 		.4byte	0x249e
 4785 21d2 2F020000 		.4byte	.LLST13
 4786 21d6 00       		.byte	0
 4787 21d7 00       		.byte	0
 4788 21d8 00       		.byte	0
 4789 21d9 4F       		.uleb128 0x4f
 4790 21da 2A0A0000 		.4byte	.LASF557
 4791 21de 01       		.byte	0x1
 4792 21df 5B       		.byte	0x5b
 4793 21e0 401B0000 		.4byte	.LASF559
ARM GAS  /tmp/ccqdRJW7.s 			page 102


 4794 21e4 00000000 		.4byte	.LFB528
 4795 21e8 80000000 		.4byte	.LFE528-.LFB528
 4796 21ec 01       		.uleb128 0x1
 4797 21ed 9C       		.byte	0x9c
 4798 21ee F2220000 		.4byte	0x22f2
 4799 21f2 49       		.uleb128 0x49
 4800 21f3 A60B0000 		.4byte	.LASF553
 4801 21f7 01       		.byte	0x1
 4802 21f8 5B       		.byte	0x5b
 4803 21f9 A81C0000 		.4byte	0x1ca8
 4804 21fd 42020000 		.4byte	.LLST8
 4805 2201 49       		.uleb128 0x49
 4806 2202 10060000 		.4byte	.LASF560
 4807 2206 01       		.byte	0x1
 4808 2207 5B       		.byte	0x5b
 4809 2208 4B170000 		.4byte	0x174b
 4810 220c 7C020000 		.4byte	.LLST9
 4811 2210 51       		.uleb128 0x51
 4812 2211 34000000 		.4byte	.LBB86
 4813 2215 3C000000 		.4byte	.LBE86-.LBB86
 4814 2219 BE220000 		.4byte	0x22be
 4815 221d 59       		.uleb128 0x59
 4816 221e 63666700 		.ascii	"cfg\000"
 4817 2222 01       		.byte	0x1
 4818 2223 6C       		.byte	0x6c
 4819 2224 A21A0000 		.4byte	0x1aa2
 4820 2228 02       		.uleb128 0x2
 4821 2229 91       		.byte	0x91
 4822 222a 64       		.sleb128 -28
 4823 222b 4B       		.uleb128 0x4b
 4824 222c 3E250000 		.4byte	0x253e
 4825 2230 46000000 		.4byte	.LBB87
 4826 2234 40000000 		.4byte	.Ldebug_ranges0+0x40
 4827 2238 01       		.byte	0x1
 4828 2239 70       		.byte	0x70
 4829 223a 49220000 		.4byte	0x2249
 4830 223e 4C       		.uleb128 0x4c
 4831 223f 57250000 		.4byte	0x2557
 4832 2243 4C       		.uleb128 0x4c
 4833 2244 4B250000 		.4byte	0x254b
 4834 2248 00       		.byte	0
 4835 2249 4B       		.uleb128 0x4b
 4836 224a 8E240000 		.4byte	0x248e
 4837 224e 50000000 		.4byte	.LBB90
 4838 2252 58000000 		.4byte	.Ldebug_ranges0+0x58
 4839 2256 01       		.byte	0x1
 4840 2257 6E       		.byte	0x6e
 4841 2258 66220000 		.4byte	0x2266
 4842 225c 4E       		.uleb128 0x4e
 4843 225d 9E240000 		.4byte	0x249e
 4844 2261 B6020000 		.4byte	.LLST10
 4845 2265 00       		.byte	0
 4846 2266 50       		.uleb128 0x50
 4847 2267 E6240000 		.4byte	0x24e6
 4848 226b 66000000 		.4byte	.LBB96
 4849 226f 08000000 		.4byte	.LBE96-.LBB96
 4850 2273 01       		.byte	0x1
ARM GAS  /tmp/ccqdRJW7.s 			page 103


 4851 2274 6F       		.byte	0x6f
 4852 2275 8D220000 		.4byte	0x228d
 4853 2279 4E       		.uleb128 0x4e
 4854 227a 0B250000 		.4byte	0x250b
 4855 227e C9020000 		.4byte	.LLST11
 4856 2282 4C       		.uleb128 0x4c
 4857 2283 FF240000 		.4byte	0x24ff
 4858 2287 4C       		.uleb128 0x4c
 4859 2288 F3240000 		.4byte	0x24f3
 4860 228c 00       		.byte	0
 4861 228d 5A       		.uleb128 0x5a
 4862 228e 50000000 		.4byte	.LVL23
 4863 2292 D6250000 		.4byte	0x25d6
 4864 2296 A1220000 		.4byte	0x22a1
 4865 229a 5B       		.uleb128 0x5b
 4866 229b 01       		.uleb128 0x1
 4867 229c 50       		.byte	0x50
 4868 229d 02       		.uleb128 0x2
 4869 229e 91       		.byte	0x91
 4870 229f 64       		.sleb128 -28
 4871 22a0 00       		.byte	0
 4872 22a1 5C       		.uleb128 0x5c
 4873 22a2 66000000 		.4byte	.LVL25
 4874 22a6 E2250000 		.4byte	0x25e2
 4875 22aa 5B       		.uleb128 0x5b
 4876 22ab 01       		.uleb128 0x1
 4877 22ac 50       		.byte	0x50
 4878 22ad 02       		.uleb128 0x2
 4879 22ae 74       		.byte	0x74
 4880 22af 00       		.sleb128 0
 4881 22b0 5B       		.uleb128 0x5b
 4882 22b1 01       		.uleb128 0x1
 4883 22b2 51       		.byte	0x51
 4884 22b3 02       		.uleb128 0x2
 4885 22b4 76       		.byte	0x76
 4886 22b5 00       		.sleb128 0
 4887 22b6 5B       		.uleb128 0x5b
 4888 22b7 01       		.uleb128 0x1
 4889 22b8 52       		.byte	0x52
 4890 22b9 02       		.uleb128 0x2
 4891 22ba 91       		.byte	0x91
 4892 22bb 64       		.sleb128 -28
 4893 22bc 00       		.byte	0
 4894 22bd 00       		.byte	0
 4895 22be 4B       		.uleb128 0x4b
 4896 22bf 18250000 		.4byte	0x2518
 4897 22c3 0E000000 		.4byte	.LBB74
 4898 22c7 00000000 		.4byte	.Ldebug_ranges0+0
 4899 22cb 01       		.byte	0x1
 4900 22cc 80       		.byte	0x80
 4901 22cd DC220000 		.4byte	0x22dc
 4902 22d1 4C       		.uleb128 0x4c
 4903 22d2 31250000 		.4byte	0x2531
 4904 22d6 4C       		.uleb128 0x4c
 4905 22d7 25250000 		.4byte	0x2525
 4906 22db 00       		.byte	0
 4907 22dc 4D       		.uleb128 0x4d
ARM GAS  /tmp/ccqdRJW7.s 			page 104


 4908 22dd 8E240000 		.4byte	0x248e
 4909 22e1 12000000 		.4byte	.LBB78
 4910 22e5 20000000 		.4byte	.Ldebug_ranges0+0x20
 4911 22e9 01       		.byte	0x1
 4912 22ea 80       		.byte	0x80
 4913 22eb 4C       		.uleb128 0x4c
 4914 22ec 9E240000 		.4byte	0x249e
 4915 22f0 00       		.byte	0
 4916 22f1 00       		.byte	0
 4917 22f2 4F       		.uleb128 0x4f
 4918 22f3 D40F0000 		.4byte	.LASF561
 4919 22f7 01       		.byte	0x1
 4920 22f8 37       		.byte	0x37
 4921 22f9 94080000 		.4byte	.LASF562
 4922 22fd 00000000 		.4byte	.LFB527
 4923 2301 6C000000 		.4byte	.LFE527-.LFB527
 4924 2305 01       		.uleb128 0x1
 4925 2306 9C       		.byte	0x9c
 4926 2307 72240000 		.4byte	0x2472
 4927 230b 59       		.uleb128 0x59
 4928 230c 63666700 		.ascii	"cfg\000"
 4929 2310 01       		.byte	0x1
 4930 2311 43       		.byte	0x43
 4931 2312 0F1A0000 		.4byte	0x1a0f
 4932 2316 02       		.uleb128 0x2
 4933 2317 91       		.byte	0x91
 4934 2318 58       		.sleb128 -40
 4935 2319 50       		.uleb128 0x50
 4936 231a C8240000 		.4byte	0x24c8
 4937 231e 1A000000 		.4byte	.LBB64
 4938 2322 02000000 		.4byte	.LBE64-.LBB64
 4939 2326 01       		.byte	0x1
 4940 2327 4D       		.byte	0x4d
 4941 2328 36230000 		.4byte	0x2336
 4942 232c 4E       		.uleb128 0x4e
 4943 232d D9240000 		.4byte	0x24d9
 4944 2331 DF020000 		.4byte	.LLST0
 4945 2335 00       		.byte	0
 4946 2336 50       		.uleb128 0x50
 4947 2337 C8240000 		.4byte	0x24c8
 4948 233b 2C000000 		.4byte	.LBB66
 4949 233f 02000000 		.4byte	.LBE66-.LBB66
 4950 2343 01       		.byte	0x1
 4951 2344 51       		.byte	0x51
 4952 2345 53230000 		.4byte	0x2353
 4953 2349 4E       		.uleb128 0x4e
 4954 234a D9240000 		.4byte	0x24d9
 4955 234e 07030000 		.4byte	.LLST1
 4956 2352 00       		.byte	0
 4957 2353 50       		.uleb128 0x50
 4958 2354 7E250000 		.4byte	0x257e
 4959 2358 4C000000 		.4byte	.LBB68
 4960 235c 08000000 		.4byte	.LBE68-.LBB68
 4961 2360 01       		.byte	0x1
 4962 2361 55       		.byte	0x55
 4963 2362 8C230000 		.4byte	0x238c
 4964 2366 4E       		.uleb128 0x4e
ARM GAS  /tmp/ccqdRJW7.s 			page 105


 4965 2367 97250000 		.4byte	0x2597
 4966 236b 2F030000 		.4byte	.LLST2
 4967 236f 4E       		.uleb128 0x4e
 4968 2370 8B250000 		.4byte	0x258b
 4969 2374 43030000 		.4byte	.LLST3
 4970 2378 58       		.uleb128 0x58
 4971 2379 4C000000 		.4byte	.LBB69
 4972 237d 08000000 		.4byte	.LBE69-.LBB69
 4973 2381 52       		.uleb128 0x52
 4974 2382 A3250000 		.4byte	0x25a3
 4975 2386 5B030000 		.4byte	.LLST4
 4976 238a 00       		.byte	0
 4977 238b 00       		.byte	0
 4978 238c 50       		.uleb128 0x50
 4979 238d 7E250000 		.4byte	0x257e
 4980 2391 54000000 		.4byte	.LBB70
 4981 2395 08000000 		.4byte	.LBE70-.LBB70
 4982 2399 01       		.byte	0x1
 4983 239a 56       		.byte	0x56
 4984 239b C5230000 		.4byte	0x23c5
 4985 239f 4E       		.uleb128 0x4e
 4986 23a0 97250000 		.4byte	0x2597
 4987 23a4 6E030000 		.4byte	.LLST5
 4988 23a8 4E       		.uleb128 0x4e
 4989 23a9 8B250000 		.4byte	0x258b
 4990 23ad 82030000 		.4byte	.LLST6
 4991 23b1 58       		.uleb128 0x58
 4992 23b2 54000000 		.4byte	.LBB71
 4993 23b6 08000000 		.4byte	.LBE71-.LBB71
 4994 23ba 52       		.uleb128 0x52
 4995 23bb A3250000 		.4byte	0x25a3
 4996 23bf 9A030000 		.4byte	.LLST7
 4997 23c3 00       		.byte	0
 4998 23c4 00       		.byte	0
 4999 23c5 5A       		.uleb128 0x5a
 5000 23c6 0A000000 		.4byte	.LVL0
 5001 23ca EE250000 		.4byte	0x25ee
 5002 23ce DC230000 		.4byte	0x23dc
 5003 23d2 5B       		.uleb128 0x5b
 5004 23d3 01       		.uleb128 0x1
 5005 23d4 50       		.byte	0x50
 5006 23d5 05       		.uleb128 0x5
 5007 23d6 0C       		.byte	0xc
 5008 23d7 00C00340 		.4byte	0x4003c000
 5009 23db 00       		.byte	0
 5010 23dc 5A       		.uleb128 0x5a
 5011 23dd 10000000 		.4byte	.LVL1
 5012 23e1 EE250000 		.4byte	0x25ee
 5013 23e5 F3230000 		.4byte	0x23f3
 5014 23e9 5B       		.uleb128 0x5b
 5015 23ea 01       		.uleb128 0x1
 5016 23eb 50       		.byte	0x50
 5017 23ec 05       		.uleb128 0x5
 5018 23ed 0C       		.byte	0xc
 5019 23ee 00400640 		.4byte	0x40064000
 5020 23f2 00       		.byte	0
 5021 23f3 5A       		.uleb128 0x5a
ARM GAS  /tmp/ccqdRJW7.s 			page 106


 5022 23f4 18000000 		.4byte	.LVL2
 5023 23f8 FA250000 		.4byte	0x25fa
 5024 23fc 07240000 		.4byte	0x2407
 5025 2400 5B       		.uleb128 0x5b
 5026 2401 01       		.uleb128 0x1
 5027 2402 50       		.byte	0x50
 5028 2403 02       		.uleb128 0x2
 5029 2404 7D       		.byte	0x7d
 5030 2405 00       		.sleb128 0
 5031 2406 00       		.byte	0
 5032 2407 5A       		.uleb128 0x5a
 5033 2408 24000000 		.4byte	.LVL5
 5034 240c 06260000 		.4byte	0x2606
 5035 2410 21240000 		.4byte	0x2421
 5036 2414 5B       		.uleb128 0x5b
 5037 2415 01       		.uleb128 0x1
 5038 2416 50       		.byte	0x50
 5039 2417 02       		.uleb128 0x2
 5040 2418 74       		.byte	0x74
 5041 2419 00       		.sleb128 0
 5042 241a 5B       		.uleb128 0x5b
 5043 241b 01       		.uleb128 0x1
 5044 241c 51       		.byte	0x51
 5045 241d 02       		.uleb128 0x2
 5046 241e 7D       		.byte	0x7d
 5047 241f 00       		.sleb128 0
 5048 2420 00       		.byte	0
 5049 2421 5A       		.uleb128 0x5a
 5050 2422 36000000 		.4byte	.LVL8
 5051 2426 06260000 		.4byte	0x2606
 5052 242a 3B240000 		.4byte	0x243b
 5053 242e 5B       		.uleb128 0x5b
 5054 242f 01       		.uleb128 0x1
 5055 2430 50       		.byte	0x50
 5056 2431 02       		.uleb128 0x2
 5057 2432 74       		.byte	0x74
 5058 2433 00       		.sleb128 0
 5059 2434 5B       		.uleb128 0x5b
 5060 2435 01       		.uleb128 0x1
 5061 2436 51       		.byte	0x51
 5062 2437 02       		.uleb128 0x2
 5063 2438 7D       		.byte	0x7d
 5064 2439 00       		.sleb128 0
 5065 243a 00       		.byte	0
 5066 243b 5A       		.uleb128 0x5a
 5067 243c 44000000 		.4byte	.LVL9
 5068 2440 12260000 		.4byte	0x2612
 5069 2444 58240000 		.4byte	0x2458
 5070 2448 5B       		.uleb128 0x5b
 5071 2449 01       		.uleb128 0x1
 5072 244a 50       		.byte	0x50
 5073 244b 02       		.uleb128 0x2
 5074 244c 75       		.byte	0x75
 5075 244d 00       		.sleb128 0
 5076 244e 5B       		.uleb128 0x5b
 5077 244f 01       		.uleb128 0x1
 5078 2450 51       		.byte	0x51
ARM GAS  /tmp/ccqdRJW7.s 			page 107


 5079 2451 05       		.uleb128 0x5
 5080 2452 0C       		.byte	0xc
 5081 2453 FF0F0047 		.4byte	0x47000fff
 5082 2457 00       		.byte	0
 5083 2458 5C       		.uleb128 0x5c
 5084 2459 4C000000 		.4byte	.LVL10
 5085 245d 12260000 		.4byte	0x2612
 5086 2461 5B       		.uleb128 0x5b
 5087 2462 01       		.uleb128 0x1
 5088 2463 50       		.byte	0x50
 5089 2464 02       		.uleb128 0x2
 5090 2465 74       		.byte	0x74
 5091 2466 00       		.sleb128 0
 5092 2467 5B       		.uleb128 0x5b
 5093 2468 01       		.uleb128 0x1
 5094 2469 51       		.byte	0x51
 5095 246a 05       		.uleb128 0x5
 5096 246b 0C       		.byte	0xc
 5097 246c FF0F0047 		.4byte	0x47000fff
 5098 2470 00       		.byte	0
 5099 2471 00       		.byte	0
 5100 2472 5D       		.uleb128 0x5d
 5101 2473 4B140000 		.4byte	.LASF563
 5102 2477 01       		.byte	0x1
 5103 2478 30       		.byte	0x30
 5104 2479 E3180000 		.4byte	0x18e3
 5105 247d 03       		.byte	0x3
 5106 247e 8E240000 		.4byte	0x248e
 5107 2482 55       		.uleb128 0x55
 5108 2483 A60B0000 		.4byte	.LASF553
 5109 2487 01       		.byte	0x1
 5110 2488 30       		.byte	0x30
 5111 2489 A81C0000 		.4byte	0x1ca8
 5112 248d 00       		.byte	0
 5113 248e 5D       		.uleb128 0x5d
 5114 248f 5F000000 		.4byte	.LASF564
 5115 2493 01       		.byte	0x1
 5116 2494 2B       		.byte	0x2b
 5117 2495 73210000 		.4byte	0x2173
 5118 2499 03       		.byte	0x3
 5119 249a AA240000 		.4byte	0x24aa
 5120 249e 55       		.uleb128 0x55
 5121 249f A60B0000 		.4byte	.LASF553
 5122 24a3 01       		.byte	0x1
 5123 24a4 2B       		.byte	0x2b
 5124 24a5 A81C0000 		.4byte	0x1ca8
 5125 24a9 00       		.byte	0
 5126 24aa 5E       		.uleb128 0x5e
 5127 24ab F80B0000 		.4byte	.LASF565
 5128 24af 02       		.byte	0x2
 5129 24b0 9A02     		.2byte	0x29a
 5130 24b2 C7010000 		.4byte	0x1c7
 5131 24b6 03       		.byte	0x3
 5132 24b7 C8240000 		.4byte	0x24c8
 5133 24bb 5F       		.uleb128 0x5f
 5134 24bc 730F0000 		.4byte	.LASF555
 5135 24c0 02       		.byte	0x2
ARM GAS  /tmp/ccqdRJW7.s 			page 108


 5136 24c1 9A02     		.2byte	0x29a
 5137 24c3 79210000 		.4byte	0x2179
 5138 24c7 00       		.byte	0
 5139 24c8 5E       		.uleb128 0x5e
 5140 24c9 D5140000 		.4byte	.LASF566
 5141 24cd 02       		.byte	0x2
 5142 24ce 7C02     		.2byte	0x27c
 5143 24d0 C7010000 		.4byte	0x1c7
 5144 24d4 03       		.byte	0x3
 5145 24d5 E6240000 		.4byte	0x24e6
 5146 24d9 5F       		.uleb128 0x5f
 5147 24da 730F0000 		.4byte	.LASF555
 5148 24de 02       		.byte	0x2
 5149 24df 7C02     		.2byte	0x27c
 5150 24e1 79210000 		.4byte	0x2179
 5151 24e5 00       		.byte	0
 5152 24e6 60       		.uleb128 0x60
 5153 24e7 A3050000 		.4byte	.LASF568
 5154 24eb 02       		.byte	0x2
 5155 24ec 6C02     		.2byte	0x26c
 5156 24ee 03       		.byte	0x3
 5157 24ef 18250000 		.4byte	0x2518
 5158 24f3 5F       		.uleb128 0x5f
 5159 24f4 730F0000 		.4byte	.LASF555
 5160 24f8 02       		.byte	0x2
 5161 24f9 6C02     		.2byte	0x26c
 5162 24fb 79210000 		.4byte	0x2179
 5163 24ff 5F       		.uleb128 0x5f
 5164 2500 12020000 		.4byte	.LASF569
 5165 2504 02       		.byte	0x2
 5166 2505 6D02     		.2byte	0x26d
 5167 2507 E3180000 		.4byte	0x18e3
 5168 250b 5F       		.uleb128 0x5f
 5169 250c 9E1C0000 		.4byte	.LASF570
 5170 2510 02       		.byte	0x2
 5171 2511 6D02     		.2byte	0x26d
 5172 2513 AC010000 		.4byte	0x1ac
 5173 2517 00       		.byte	0
 5174 2518 60       		.uleb128 0x60
 5175 2519 920A0000 		.4byte	.LASF571
 5176 251d 02       		.byte	0x2
 5177 251e 3802     		.2byte	0x238
 5178 2520 03       		.byte	0x3
 5179 2521 3E250000 		.4byte	0x253e
 5180 2525 5F       		.uleb128 0x5f
 5181 2526 730F0000 		.4byte	.LASF555
 5182 252a 02       		.byte	0x2
 5183 252b 3802     		.2byte	0x238
 5184 252d 79210000 		.4byte	0x2179
 5185 2531 5F       		.uleb128 0x5f
 5186 2532 12020000 		.4byte	.LASF569
 5187 2536 02       		.byte	0x2
 5188 2537 3902     		.2byte	0x239
 5189 2539 43190000 		.4byte	0x1943
 5190 253d 00       		.byte	0
 5191 253e 60       		.uleb128 0x60
 5192 253f 451C0000 		.4byte	.LASF572
ARM GAS  /tmp/ccqdRJW7.s 			page 109


 5193 2543 02       		.byte	0x2
 5194 2544 2702     		.2byte	0x227
 5195 2546 03       		.byte	0x3
 5196 2547 64250000 		.4byte	0x2564
 5197 254b 5F       		.uleb128 0x5f
 5198 254c 730F0000 		.4byte	.LASF555
 5199 2550 02       		.byte	0x2
 5200 2551 2702     		.2byte	0x227
 5201 2553 79210000 		.4byte	0x2179
 5202 2557 5F       		.uleb128 0x5f
 5203 2558 12020000 		.4byte	.LASF569
 5204 255c 02       		.byte	0x2
 5205 255d 2802     		.2byte	0x228
 5206 255f 43190000 		.4byte	0x1943
 5207 2563 00       		.byte	0
 5208 2564 60       		.uleb128 0x60
 5209 2565 AD1A0000 		.4byte	.LASF573
 5210 2569 02       		.byte	0x2
 5211 256a 1902     		.2byte	0x219
 5212 256c 03       		.byte	0x3
 5213 256d 7E250000 		.4byte	0x257e
 5214 2571 5F       		.uleb128 0x5f
 5215 2572 730F0000 		.4byte	.LASF555
 5216 2576 02       		.byte	0x2
 5217 2577 1902     		.2byte	0x219
 5218 2579 79210000 		.4byte	0x2179
 5219 257d 00       		.byte	0
 5220 257e 60       		.uleb128 0x60
 5221 257f 43180000 		.4byte	.LASF574
 5222 2583 02       		.byte	0x2
 5223 2584 9E01     		.2byte	0x19e
 5224 2586 03       		.byte	0x3
 5225 2587 B0250000 		.4byte	0x25b0
 5226 258b 5F       		.uleb128 0x5f
 5227 258c 730F0000 		.4byte	.LASF555
 5228 2590 02       		.byte	0x2
 5229 2591 9E01     		.2byte	0x19e
 5230 2593 79210000 		.4byte	0x2179
 5231 2597 5F       		.uleb128 0x5f
 5232 2598 6D030000 		.4byte	.LASF575
 5233 259c 02       		.byte	0x2
 5234 259d 9F01     		.2byte	0x19f
 5235 259f DE180000 		.4byte	0x18de
 5236 25a3 61       		.uleb128 0x61
 5237 25a4 72656700 		.ascii	"reg\000"
 5238 25a8 02       		.byte	0x2
 5239 25a9 A101     		.2byte	0x1a1
 5240 25ab C7010000 		.4byte	0x1c7
 5241 25af 00       		.byte	0
 5242 25b0 60       		.uleb128 0x60
 5243 25b1 ED0E0000 		.4byte	.LASF576
 5244 25b5 02       		.byte	0x2
 5245 25b6 8601     		.2byte	0x186
 5246 25b8 03       		.byte	0x3
 5247 25b9 D6250000 		.4byte	0x25d6
 5248 25bd 5F       		.uleb128 0x5f
 5249 25be 730F0000 		.4byte	.LASF555
ARM GAS  /tmp/ccqdRJW7.s 			page 110


 5250 25c2 02       		.byte	0x2
 5251 25c3 8601     		.2byte	0x186
 5252 25c5 79210000 		.4byte	0x2179
 5253 25c9 5F       		.uleb128 0x5f
 5254 25ca A60B0000 		.4byte	.LASF553
 5255 25ce 02       		.byte	0x2
 5256 25cf 8701     		.2byte	0x187
 5257 25d1 43190000 		.4byte	0x1943
 5258 25d5 00       		.byte	0
 5259 25d6 62       		.uleb128 0x62
 5260 25d7 1F150000 		.4byte	.LASF577
 5261 25db 1F150000 		.4byte	.LASF577
 5262 25df 02       		.byte	0x2
 5263 25e0 6501     		.2byte	0x165
 5264 25e2 62       		.uleb128 0x62
 5265 25e3 330F0000 		.4byte	.LASF578
 5266 25e7 330F0000 		.4byte	.LASF578
 5267 25eb 02       		.byte	0x2
 5268 25ec 6B01     		.2byte	0x16b
 5269 25ee 62       		.uleb128 0x62
 5270 25ef 971A0000 		.4byte	.LASF579
 5271 25f3 971A0000 		.4byte	.LASF579
 5272 25f7 02       		.byte	0x2
 5273 25f8 6F01     		.2byte	0x16f
 5274 25fa 62       		.uleb128 0x62
 5275 25fb 7B080000 		.4byte	.LASF580
 5276 25ff 7B080000 		.4byte	.LASF580
 5277 2603 02       		.byte	0x2
 5278 2604 6401     		.2byte	0x164
 5279 2606 62       		.uleb128 0x62
 5280 2607 ED000000 		.4byte	.LASF581
 5281 260b ED000000 		.4byte	.LASF581
 5282 260f 02       		.byte	0x2
 5283 2610 6801     		.2byte	0x168
 5284 2612 62       		.uleb128 0x62
 5285 2613 83030000 		.4byte	.LASF582
 5286 2617 83030000 		.4byte	.LASF582
 5287 261b 02       		.byte	0x2
 5288 261c 9002     		.2byte	0x290
 5289 261e 00       		.byte	0
 5290              		.section	.debug_abbrev,"",%progbits
 5291              	.Ldebug_abbrev0:
 5292 0000 01       		.uleb128 0x1
 5293 0001 11       		.uleb128 0x11
 5294 0002 01       		.byte	0x1
 5295 0003 25       		.uleb128 0x25
 5296 0004 0E       		.uleb128 0xe
 5297 0005 13       		.uleb128 0x13
 5298 0006 0B       		.uleb128 0xb
 5299 0007 03       		.uleb128 0x3
 5300 0008 0E       		.uleb128 0xe
 5301 0009 1B       		.uleb128 0x1b
 5302 000a 0E       		.uleb128 0xe
 5303 000b 55       		.uleb128 0x55
 5304 000c 17       		.uleb128 0x17
 5305 000d 11       		.uleb128 0x11
 5306 000e 01       		.uleb128 0x1
ARM GAS  /tmp/ccqdRJW7.s 			page 111


 5307 000f 10       		.uleb128 0x10
 5308 0010 17       		.uleb128 0x17
 5309 0011 00       		.byte	0
 5310 0012 00       		.byte	0
 5311 0013 02       		.uleb128 0x2
 5312 0014 24       		.uleb128 0x24
 5313 0015 00       		.byte	0
 5314 0016 0B       		.uleb128 0xb
 5315 0017 0B       		.uleb128 0xb
 5316 0018 3E       		.uleb128 0x3e
 5317 0019 0B       		.uleb128 0xb
 5318 001a 03       		.uleb128 0x3
 5319 001b 08       		.uleb128 0x8
 5320 001c 00       		.byte	0
 5321 001d 00       		.byte	0
 5322 001e 03       		.uleb128 0x3
 5323 001f 16       		.uleb128 0x16
 5324 0020 00       		.byte	0
 5325 0021 03       		.uleb128 0x3
 5326 0022 0E       		.uleb128 0xe
 5327 0023 3A       		.uleb128 0x3a
 5328 0024 0B       		.uleb128 0xb
 5329 0025 3B       		.uleb128 0x3b
 5330 0026 0B       		.uleb128 0xb
 5331 0027 49       		.uleb128 0x49
 5332 0028 13       		.uleb128 0x13
 5333 0029 00       		.byte	0
 5334 002a 00       		.byte	0
 5335 002b 04       		.uleb128 0x4
 5336 002c 26       		.uleb128 0x26
 5337 002d 00       		.byte	0
 5338 002e 49       		.uleb128 0x49
 5339 002f 13       		.uleb128 0x13
 5340 0030 00       		.byte	0
 5341 0031 00       		.byte	0
 5342 0032 05       		.uleb128 0x5
 5343 0033 24       		.uleb128 0x24
 5344 0034 00       		.byte	0
 5345 0035 0B       		.uleb128 0xb
 5346 0036 0B       		.uleb128 0xb
 5347 0037 3E       		.uleb128 0x3e
 5348 0038 0B       		.uleb128 0xb
 5349 0039 03       		.uleb128 0x3
 5350 003a 0E       		.uleb128 0xe
 5351 003b 00       		.byte	0
 5352 003c 00       		.byte	0
 5353 003d 06       		.uleb128 0x6
 5354 003e 13       		.uleb128 0x13
 5355 003f 01       		.byte	0x1
 5356 0040 0B       		.uleb128 0xb
 5357 0041 0B       		.uleb128 0xb
 5358 0042 3A       		.uleb128 0x3a
 5359 0043 0B       		.uleb128 0xb
 5360 0044 3B       		.uleb128 0x3b
 5361 0045 05       		.uleb128 0x5
 5362 0046 6E       		.uleb128 0x6e
 5363 0047 0E       		.uleb128 0xe
ARM GAS  /tmp/ccqdRJW7.s 			page 112


 5364 0048 01       		.uleb128 0x1
 5365 0049 13       		.uleb128 0x13
 5366 004a 00       		.byte	0
 5367 004b 00       		.byte	0
 5368 004c 07       		.uleb128 0x7
 5369 004d 0D       		.uleb128 0xd
 5370 004e 00       		.byte	0
 5371 004f 03       		.uleb128 0x3
 5372 0050 0E       		.uleb128 0xe
 5373 0051 3A       		.uleb128 0x3a
 5374 0052 0B       		.uleb128 0xb
 5375 0053 3B       		.uleb128 0x3b
 5376 0054 05       		.uleb128 0x5
 5377 0055 49       		.uleb128 0x49
 5378 0056 13       		.uleb128 0x13
 5379 0057 38       		.uleb128 0x38
 5380 0058 0B       		.uleb128 0xb
 5381 0059 00       		.byte	0
 5382 005a 00       		.byte	0
 5383 005b 08       		.uleb128 0x8
 5384 005c 16       		.uleb128 0x16
 5385 005d 00       		.byte	0
 5386 005e 03       		.uleb128 0x3
 5387 005f 0E       		.uleb128 0xe
 5388 0060 3A       		.uleb128 0x3a
 5389 0061 0B       		.uleb128 0xb
 5390 0062 3B       		.uleb128 0x3b
 5391 0063 05       		.uleb128 0x5
 5392 0064 49       		.uleb128 0x49
 5393 0065 13       		.uleb128 0x13
 5394 0066 00       		.byte	0
 5395 0067 00       		.byte	0
 5396 0068 09       		.uleb128 0x9
 5397 0069 3B       		.uleb128 0x3b
 5398 006a 00       		.byte	0
 5399 006b 03       		.uleb128 0x3
 5400 006c 0E       		.uleb128 0xe
 5401 006d 00       		.byte	0
 5402 006e 00       		.byte	0
 5403 006f 0A       		.uleb128 0xa
 5404 0070 35       		.uleb128 0x35
 5405 0071 00       		.byte	0
 5406 0072 49       		.uleb128 0x49
 5407 0073 13       		.uleb128 0x13
 5408 0074 00       		.byte	0
 5409 0075 00       		.byte	0
 5410 0076 0B       		.uleb128 0xb
 5411 0077 0F       		.uleb128 0xf
 5412 0078 00       		.byte	0
 5413 0079 0B       		.uleb128 0xb
 5414 007a 0B       		.uleb128 0xb
 5415 007b 00       		.byte	0
 5416 007c 00       		.byte	0
 5417 007d 0C       		.uleb128 0xc
 5418 007e 01       		.uleb128 0x1
 5419 007f 01       		.byte	0x1
 5420 0080 49       		.uleb128 0x49
ARM GAS  /tmp/ccqdRJW7.s 			page 113


 5421 0081 13       		.uleb128 0x13
 5422 0082 01       		.uleb128 0x1
 5423 0083 13       		.uleb128 0x13
 5424 0084 00       		.byte	0
 5425 0085 00       		.byte	0
 5426 0086 0D       		.uleb128 0xd
 5427 0087 21       		.uleb128 0x21
 5428 0088 00       		.byte	0
 5429 0089 49       		.uleb128 0x49
 5430 008a 13       		.uleb128 0x13
 5431 008b 2F       		.uleb128 0x2f
 5432 008c 0B       		.uleb128 0xb
 5433 008d 00       		.byte	0
 5434 008e 00       		.byte	0
 5435 008f 0E       		.uleb128 0xe
 5436 0090 34       		.uleb128 0x34
 5437 0091 00       		.byte	0
 5438 0092 03       		.uleb128 0x3
 5439 0093 0E       		.uleb128 0xe
 5440 0094 3A       		.uleb128 0x3a
 5441 0095 0B       		.uleb128 0xb
 5442 0096 3B       		.uleb128 0x3b
 5443 0097 05       		.uleb128 0x5
 5444 0098 49       		.uleb128 0x49
 5445 0099 13       		.uleb128 0x13
 5446 009a 3F       		.uleb128 0x3f
 5447 009b 19       		.uleb128 0x19
 5448 009c 3C       		.uleb128 0x3c
 5449 009d 19       		.uleb128 0x19
 5450 009e 00       		.byte	0
 5451 009f 00       		.byte	0
 5452 00a0 0F       		.uleb128 0xf
 5453 00a1 34       		.uleb128 0x34
 5454 00a2 00       		.byte	0
 5455 00a3 03       		.uleb128 0x3
 5456 00a4 0E       		.uleb128 0xe
 5457 00a5 3A       		.uleb128 0x3a
 5458 00a6 0B       		.uleb128 0xb
 5459 00a7 3B       		.uleb128 0x3b
 5460 00a8 0B       		.uleb128 0xb
 5461 00a9 49       		.uleb128 0x49
 5462 00aa 13       		.uleb128 0x13
 5463 00ab 3F       		.uleb128 0x3f
 5464 00ac 19       		.uleb128 0x19
 5465 00ad 3C       		.uleb128 0x3c
 5466 00ae 19       		.uleb128 0x19
 5467 00af 00       		.byte	0
 5468 00b0 00       		.byte	0
 5469 00b1 10       		.uleb128 0x10
 5470 00b2 13       		.uleb128 0x13
 5471 00b3 01       		.byte	0x1
 5472 00b4 0B       		.uleb128 0xb
 5473 00b5 0B       		.uleb128 0xb
 5474 00b6 3A       		.uleb128 0x3a
 5475 00b7 0B       		.uleb128 0xb
 5476 00b8 3B       		.uleb128 0x3b
 5477 00b9 0B       		.uleb128 0xb
ARM GAS  /tmp/ccqdRJW7.s 			page 114


 5478 00ba 6E       		.uleb128 0x6e
 5479 00bb 0E       		.uleb128 0xe
 5480 00bc 01       		.uleb128 0x1
 5481 00bd 13       		.uleb128 0x13
 5482 00be 00       		.byte	0
 5483 00bf 00       		.byte	0
 5484 00c0 11       		.uleb128 0x11
 5485 00c1 0D       		.uleb128 0xd
 5486 00c2 00       		.byte	0
 5487 00c3 03       		.uleb128 0x3
 5488 00c4 0E       		.uleb128 0xe
 5489 00c5 3A       		.uleb128 0x3a
 5490 00c6 0B       		.uleb128 0xb
 5491 00c7 3B       		.uleb128 0x3b
 5492 00c8 0B       		.uleb128 0xb
 5493 00c9 49       		.uleb128 0x49
 5494 00ca 13       		.uleb128 0x13
 5495 00cb 38       		.uleb128 0x38
 5496 00cc 0B       		.uleb128 0xb
 5497 00cd 00       		.byte	0
 5498 00ce 00       		.byte	0
 5499 00cf 12       		.uleb128 0x12
 5500 00d0 13       		.uleb128 0x13
 5501 00d1 01       		.byte	0x1
 5502 00d2 0B       		.uleb128 0xb
 5503 00d3 05       		.uleb128 0x5
 5504 00d4 3A       		.uleb128 0x3a
 5505 00d5 0B       		.uleb128 0xb
 5506 00d6 3B       		.uleb128 0x3b
 5507 00d7 0B       		.uleb128 0xb
 5508 00d8 6E       		.uleb128 0x6e
 5509 00d9 0E       		.uleb128 0xe
 5510 00da 01       		.uleb128 0x1
 5511 00db 13       		.uleb128 0x13
 5512 00dc 00       		.byte	0
 5513 00dd 00       		.byte	0
 5514 00de 13       		.uleb128 0x13
 5515 00df 0D       		.uleb128 0xd
 5516 00e0 00       		.byte	0
 5517 00e1 03       		.uleb128 0x3
 5518 00e2 0E       		.uleb128 0xe
 5519 00e3 3A       		.uleb128 0x3a
 5520 00e4 0B       		.uleb128 0xb
 5521 00e5 3B       		.uleb128 0x3b
 5522 00e6 0B       		.uleb128 0xb
 5523 00e7 49       		.uleb128 0x49
 5524 00e8 13       		.uleb128 0x13
 5525 00e9 38       		.uleb128 0x38
 5526 00ea 05       		.uleb128 0x5
 5527 00eb 00       		.byte	0
 5528 00ec 00       		.byte	0
 5529 00ed 14       		.uleb128 0x14
 5530 00ee 16       		.uleb128 0x16
 5531 00ef 00       		.byte	0
 5532 00f0 03       		.uleb128 0x3
 5533 00f1 08       		.uleb128 0x8
 5534 00f2 3A       		.uleb128 0x3a
ARM GAS  /tmp/ccqdRJW7.s 			page 115


 5535 00f3 0B       		.uleb128 0xb
 5536 00f4 3B       		.uleb128 0x3b
 5537 00f5 0B       		.uleb128 0xb
 5538 00f6 49       		.uleb128 0x49
 5539 00f7 13       		.uleb128 0x13
 5540 00f8 00       		.byte	0
 5541 00f9 00       		.byte	0
 5542 00fa 15       		.uleb128 0x15
 5543 00fb 17       		.uleb128 0x17
 5544 00fc 01       		.byte	0x1
 5545 00fd 0B       		.uleb128 0xb
 5546 00fe 0B       		.uleb128 0xb
 5547 00ff 3A       		.uleb128 0x3a
 5548 0100 0B       		.uleb128 0xb
 5549 0101 3B       		.uleb128 0x3b
 5550 0102 0B       		.uleb128 0xb
 5551 0103 01       		.uleb128 0x1
 5552 0104 13       		.uleb128 0x13
 5553 0105 00       		.byte	0
 5554 0106 00       		.byte	0
 5555 0107 16       		.uleb128 0x16
 5556 0108 0D       		.uleb128 0xd
 5557 0109 00       		.byte	0
 5558 010a 03       		.uleb128 0x3
 5559 010b 0E       		.uleb128 0xe
 5560 010c 3A       		.uleb128 0x3a
 5561 010d 0B       		.uleb128 0xb
 5562 010e 3B       		.uleb128 0x3b
 5563 010f 0B       		.uleb128 0xb
 5564 0110 49       		.uleb128 0x49
 5565 0111 13       		.uleb128 0x13
 5566 0112 00       		.byte	0
 5567 0113 00       		.byte	0
 5568 0114 17       		.uleb128 0x17
 5569 0115 13       		.uleb128 0x13
 5570 0116 01       		.byte	0x1
 5571 0117 03       		.uleb128 0x3
 5572 0118 0E       		.uleb128 0xe
 5573 0119 0B       		.uleb128 0xb
 5574 011a 0B       		.uleb128 0xb
 5575 011b 3A       		.uleb128 0x3a
 5576 011c 0B       		.uleb128 0xb
 5577 011d 3B       		.uleb128 0x3b
 5578 011e 0B       		.uleb128 0xb
 5579 011f 01       		.uleb128 0x1
 5580 0120 13       		.uleb128 0x13
 5581 0121 00       		.byte	0
 5582 0122 00       		.byte	0
 5583 0123 18       		.uleb128 0x18
 5584 0124 0D       		.uleb128 0xd
 5585 0125 00       		.byte	0
 5586 0126 03       		.uleb128 0x3
 5587 0127 08       		.uleb128 0x8
 5588 0128 3A       		.uleb128 0x3a
 5589 0129 0B       		.uleb128 0xb
 5590 012a 3B       		.uleb128 0x3b
 5591 012b 0B       		.uleb128 0xb
ARM GAS  /tmp/ccqdRJW7.s 			page 116


 5592 012c 49       		.uleb128 0x49
 5593 012d 13       		.uleb128 0x13
 5594 012e 38       		.uleb128 0x38
 5595 012f 0B       		.uleb128 0xb
 5596 0130 00       		.byte	0
 5597 0131 00       		.byte	0
 5598 0132 19       		.uleb128 0x19
 5599 0133 0F       		.uleb128 0xf
 5600 0134 00       		.byte	0
 5601 0135 0B       		.uleb128 0xb
 5602 0136 0B       		.uleb128 0xb
 5603 0137 49       		.uleb128 0x49
 5604 0138 13       		.uleb128 0x13
 5605 0139 00       		.byte	0
 5606 013a 00       		.byte	0
 5607 013b 1A       		.uleb128 0x1a
 5608 013c 13       		.uleb128 0x13
 5609 013d 01       		.byte	0x1
 5610 013e 03       		.uleb128 0x3
 5611 013f 0E       		.uleb128 0xe
 5612 0140 0B       		.uleb128 0xb
 5613 0141 05       		.uleb128 0x5
 5614 0142 3A       		.uleb128 0x3a
 5615 0143 0B       		.uleb128 0xb
 5616 0144 3B       		.uleb128 0x3b
 5617 0145 0B       		.uleb128 0xb
 5618 0146 01       		.uleb128 0x1
 5619 0147 13       		.uleb128 0x13
 5620 0148 00       		.byte	0
 5621 0149 00       		.byte	0
 5622 014a 1B       		.uleb128 0x1b
 5623 014b 15       		.uleb128 0x15
 5624 014c 00       		.byte	0
 5625 014d 00       		.byte	0
 5626 014e 00       		.byte	0
 5627 014f 1C       		.uleb128 0x1c
 5628 0150 15       		.uleb128 0x15
 5629 0151 01       		.byte	0x1
 5630 0152 49       		.uleb128 0x49
 5631 0153 13       		.uleb128 0x13
 5632 0154 01       		.uleb128 0x1
 5633 0155 13       		.uleb128 0x13
 5634 0156 00       		.byte	0
 5635 0157 00       		.byte	0
 5636 0158 1D       		.uleb128 0x1d
 5637 0159 05       		.uleb128 0x5
 5638 015a 00       		.byte	0
 5639 015b 49       		.uleb128 0x49
 5640 015c 13       		.uleb128 0x13
 5641 015d 00       		.byte	0
 5642 015e 00       		.byte	0
 5643 015f 1E       		.uleb128 0x1e
 5644 0160 13       		.uleb128 0x13
 5645 0161 01       		.byte	0x1
 5646 0162 03       		.uleb128 0x3
 5647 0163 0E       		.uleb128 0xe
 5648 0164 0B       		.uleb128 0xb
ARM GAS  /tmp/ccqdRJW7.s 			page 117


 5649 0165 05       		.uleb128 0x5
 5650 0166 3A       		.uleb128 0x3a
 5651 0167 0B       		.uleb128 0xb
 5652 0168 3B       		.uleb128 0x3b
 5653 0169 05       		.uleb128 0x5
 5654 016a 01       		.uleb128 0x1
 5655 016b 13       		.uleb128 0x13
 5656 016c 00       		.byte	0
 5657 016d 00       		.byte	0
 5658 016e 1F       		.uleb128 0x1f
 5659 016f 17       		.uleb128 0x17
 5660 0170 01       		.byte	0x1
 5661 0171 0B       		.uleb128 0xb
 5662 0172 0B       		.uleb128 0xb
 5663 0173 3A       		.uleb128 0x3a
 5664 0174 0B       		.uleb128 0xb
 5665 0175 3B       		.uleb128 0x3b
 5666 0176 05       		.uleb128 0x5
 5667 0177 01       		.uleb128 0x1
 5668 0178 13       		.uleb128 0x13
 5669 0179 00       		.byte	0
 5670 017a 00       		.byte	0
 5671 017b 20       		.uleb128 0x20
 5672 017c 13       		.uleb128 0x13
 5673 017d 01       		.byte	0x1
 5674 017e 0B       		.uleb128 0xb
 5675 017f 0B       		.uleb128 0xb
 5676 0180 3A       		.uleb128 0x3a
 5677 0181 0B       		.uleb128 0xb
 5678 0182 3B       		.uleb128 0x3b
 5679 0183 05       		.uleb128 0x5
 5680 0184 01       		.uleb128 0x1
 5681 0185 13       		.uleb128 0x13
 5682 0186 00       		.byte	0
 5683 0187 00       		.byte	0
 5684 0188 21       		.uleb128 0x21
 5685 0189 0D       		.uleb128 0xd
 5686 018a 00       		.byte	0
 5687 018b 03       		.uleb128 0x3
 5688 018c 0E       		.uleb128 0xe
 5689 018d 3A       		.uleb128 0x3a
 5690 018e 0B       		.uleb128 0xb
 5691 018f 3B       		.uleb128 0x3b
 5692 0190 05       		.uleb128 0x5
 5693 0191 49       		.uleb128 0x49
 5694 0192 13       		.uleb128 0x13
 5695 0193 00       		.byte	0
 5696 0194 00       		.byte	0
 5697 0195 22       		.uleb128 0x22
 5698 0196 0D       		.uleb128 0xd
 5699 0197 00       		.byte	0
 5700 0198 03       		.uleb128 0x3
 5701 0199 0E       		.uleb128 0xe
 5702 019a 3A       		.uleb128 0x3a
 5703 019b 0B       		.uleb128 0xb
 5704 019c 3B       		.uleb128 0x3b
 5705 019d 05       		.uleb128 0x5
ARM GAS  /tmp/ccqdRJW7.s 			page 118


 5706 019e 49       		.uleb128 0x49
 5707 019f 13       		.uleb128 0x13
 5708 01a0 38       		.uleb128 0x38
 5709 01a1 05       		.uleb128 0x5
 5710 01a2 00       		.byte	0
 5711 01a3 00       		.byte	0
 5712 01a4 23       		.uleb128 0x23
 5713 01a5 13       		.uleb128 0x13
 5714 01a6 01       		.byte	0x1
 5715 01a7 03       		.uleb128 0x3
 5716 01a8 0E       		.uleb128 0xe
 5717 01a9 0B       		.uleb128 0xb
 5718 01aa 0B       		.uleb128 0xb
 5719 01ab 3A       		.uleb128 0x3a
 5720 01ac 0B       		.uleb128 0xb
 5721 01ad 3B       		.uleb128 0x3b
 5722 01ae 05       		.uleb128 0x5
 5723 01af 01       		.uleb128 0x1
 5724 01b0 13       		.uleb128 0x13
 5725 01b1 00       		.byte	0
 5726 01b2 00       		.byte	0
 5727 01b3 24       		.uleb128 0x24
 5728 01b4 15       		.uleb128 0x15
 5729 01b5 01       		.byte	0x1
 5730 01b6 01       		.uleb128 0x1
 5731 01b7 13       		.uleb128 0x13
 5732 01b8 00       		.byte	0
 5733 01b9 00       		.byte	0
 5734 01ba 25       		.uleb128 0x25
 5735 01bb 39       		.uleb128 0x39
 5736 01bc 01       		.byte	0x1
 5737 01bd 03       		.uleb128 0x3
 5738 01be 08       		.uleb128 0x8
 5739 01bf 3A       		.uleb128 0x3a
 5740 01c0 0B       		.uleb128 0xb
 5741 01c1 3B       		.uleb128 0x3b
 5742 01c2 0B       		.uleb128 0xb
 5743 01c3 01       		.uleb128 0x1
 5744 01c4 13       		.uleb128 0x13
 5745 01c5 00       		.byte	0
 5746 01c6 00       		.byte	0
 5747 01c7 26       		.uleb128 0x26
 5748 01c8 39       		.uleb128 0x39
 5749 01c9 00       		.byte	0
 5750 01ca 03       		.uleb128 0x3
 5751 01cb 0E       		.uleb128 0xe
 5752 01cc 3A       		.uleb128 0x3a
 5753 01cd 0B       		.uleb128 0xb
 5754 01ce 3B       		.uleb128 0x3b
 5755 01cf 0B       		.uleb128 0xb
 5756 01d0 00       		.byte	0
 5757 01d1 00       		.byte	0
 5758 01d2 27       		.uleb128 0x27
 5759 01d3 3A       		.uleb128 0x3a
 5760 01d4 00       		.byte	0
 5761 01d5 3A       		.uleb128 0x3a
 5762 01d6 0B       		.uleb128 0xb
ARM GAS  /tmp/ccqdRJW7.s 			page 119


 5763 01d7 3B       		.uleb128 0x3b
 5764 01d8 0B       		.uleb128 0xb
 5765 01d9 18       		.uleb128 0x18
 5766 01da 13       		.uleb128 0x13
 5767 01db 00       		.byte	0
 5768 01dc 00       		.byte	0
 5769 01dd 28       		.uleb128 0x28
 5770 01de 08       		.uleb128 0x8
 5771 01df 00       		.byte	0
 5772 01e0 3A       		.uleb128 0x3a
 5773 01e1 0B       		.uleb128 0xb
 5774 01e2 3B       		.uleb128 0x3b
 5775 01e3 0B       		.uleb128 0xb
 5776 01e4 18       		.uleb128 0x18
 5777 01e5 13       		.uleb128 0x13
 5778 01e6 00       		.byte	0
 5779 01e7 00       		.byte	0
 5780 01e8 29       		.uleb128 0x29
 5781 01e9 08       		.uleb128 0x8
 5782 01ea 00       		.byte	0
 5783 01eb 3A       		.uleb128 0x3a
 5784 01ec 0B       		.uleb128 0xb
 5785 01ed 3B       		.uleb128 0x3b
 5786 01ee 05       		.uleb128 0x5
 5787 01ef 18       		.uleb128 0x18
 5788 01f0 13       		.uleb128 0x13
 5789 01f1 00       		.byte	0
 5790 01f2 00       		.byte	0
 5791 01f3 2A       		.uleb128 0x2a
 5792 01f4 2E       		.uleb128 0x2e
 5793 01f5 01       		.byte	0x1
 5794 01f6 3F       		.uleb128 0x3f
 5795 01f7 19       		.uleb128 0x19
 5796 01f8 03       		.uleb128 0x3
 5797 01f9 08       		.uleb128 0x8
 5798 01fa 3A       		.uleb128 0x3a
 5799 01fb 0B       		.uleb128 0xb
 5800 01fc 3B       		.uleb128 0x3b
 5801 01fd 0B       		.uleb128 0xb
 5802 01fe 6E       		.uleb128 0x6e
 5803 01ff 0E       		.uleb128 0xe
 5804 0200 49       		.uleb128 0x49
 5805 0201 13       		.uleb128 0x13
 5806 0202 3C       		.uleb128 0x3c
 5807 0203 19       		.uleb128 0x19
 5808 0204 01       		.uleb128 0x1
 5809 0205 13       		.uleb128 0x13
 5810 0206 00       		.byte	0
 5811 0207 00       		.byte	0
 5812 0208 2B       		.uleb128 0x2b
 5813 0209 2E       		.uleb128 0x2e
 5814 020a 01       		.byte	0x1
 5815 020b 3F       		.uleb128 0x3f
 5816 020c 19       		.uleb128 0x19
 5817 020d 03       		.uleb128 0x3
 5818 020e 0E       		.uleb128 0xe
 5819 020f 3A       		.uleb128 0x3a
ARM GAS  /tmp/ccqdRJW7.s 			page 120


 5820 0210 0B       		.uleb128 0xb
 5821 0211 3B       		.uleb128 0x3b
 5822 0212 05       		.uleb128 0x5
 5823 0213 6E       		.uleb128 0x6e
 5824 0214 0E       		.uleb128 0xe
 5825 0215 49       		.uleb128 0x49
 5826 0216 13       		.uleb128 0x13
 5827 0217 3C       		.uleb128 0x3c
 5828 0218 19       		.uleb128 0x19
 5829 0219 01       		.uleb128 0x1
 5830 021a 13       		.uleb128 0x13
 5831 021b 00       		.byte	0
 5832 021c 00       		.byte	0
 5833 021d 2C       		.uleb128 0x2c
 5834 021e 39       		.uleb128 0x39
 5835 021f 01       		.byte	0x1
 5836 0220 03       		.uleb128 0x3
 5837 0221 0E       		.uleb128 0xe
 5838 0222 3A       		.uleb128 0x3a
 5839 0223 0B       		.uleb128 0xb
 5840 0224 3B       		.uleb128 0x3b
 5841 0225 0B       		.uleb128 0xb
 5842 0226 01       		.uleb128 0x1
 5843 0227 13       		.uleb128 0x13
 5844 0228 00       		.byte	0
 5845 0229 00       		.byte	0
 5846 022a 2D       		.uleb128 0x2d
 5847 022b 2E       		.uleb128 0x2e
 5848 022c 01       		.byte	0x1
 5849 022d 3F       		.uleb128 0x3f
 5850 022e 19       		.uleb128 0x19
 5851 022f 03       		.uleb128 0x3
 5852 0230 08       		.uleb128 0x8
 5853 0231 3A       		.uleb128 0x3a
 5854 0232 0B       		.uleb128 0xb
 5855 0233 3B       		.uleb128 0x3b
 5856 0234 0B       		.uleb128 0xb
 5857 0235 6E       		.uleb128 0x6e
 5858 0236 0E       		.uleb128 0xe
 5859 0237 49       		.uleb128 0x49
 5860 0238 13       		.uleb128 0x13
 5861 0239 3C       		.uleb128 0x3c
 5862 023a 19       		.uleb128 0x19
 5863 023b 00       		.byte	0
 5864 023c 00       		.byte	0
 5865 023d 2E       		.uleb128 0x2e
 5866 023e 26       		.uleb128 0x26
 5867 023f 00       		.byte	0
 5868 0240 00       		.byte	0
 5869 0241 00       		.byte	0
 5870 0242 2F       		.uleb128 0x2f
 5871 0243 2E       		.uleb128 0x2e
 5872 0244 01       		.byte	0x1
 5873 0245 3F       		.uleb128 0x3f
 5874 0246 19       		.uleb128 0x19
 5875 0247 03       		.uleb128 0x3
 5876 0248 0E       		.uleb128 0xe
ARM GAS  /tmp/ccqdRJW7.s 			page 121


 5877 0249 3A       		.uleb128 0x3a
 5878 024a 0B       		.uleb128 0xb
 5879 024b 3B       		.uleb128 0x3b
 5880 024c 0B       		.uleb128 0xb
 5881 024d 49       		.uleb128 0x49
 5882 024e 13       		.uleb128 0x13
 5883 024f 3C       		.uleb128 0x3c
 5884 0250 19       		.uleb128 0x19
 5885 0251 01       		.uleb128 0x1
 5886 0252 13       		.uleb128 0x13
 5887 0253 00       		.byte	0
 5888 0254 00       		.byte	0
 5889 0255 30       		.uleb128 0x30
 5890 0256 2E       		.uleb128 0x2e
 5891 0257 01       		.byte	0x1
 5892 0258 3F       		.uleb128 0x3f
 5893 0259 19       		.uleb128 0x19
 5894 025a 03       		.uleb128 0x3
 5895 025b 08       		.uleb128 0x8
 5896 025c 3A       		.uleb128 0x3a
 5897 025d 0B       		.uleb128 0xb
 5898 025e 3B       		.uleb128 0x3b
 5899 025f 0B       		.uleb128 0xb
 5900 0260 49       		.uleb128 0x49
 5901 0261 13       		.uleb128 0x13
 5902 0262 3C       		.uleb128 0x3c
 5903 0263 19       		.uleb128 0x19
 5904 0264 01       		.uleb128 0x1
 5905 0265 13       		.uleb128 0x13
 5906 0266 00       		.byte	0
 5907 0267 00       		.byte	0
 5908 0268 31       		.uleb128 0x31
 5909 0269 2E       		.uleb128 0x2e
 5910 026a 01       		.byte	0x1
 5911 026b 3F       		.uleb128 0x3f
 5912 026c 19       		.uleb128 0x19
 5913 026d 03       		.uleb128 0x3
 5914 026e 0E       		.uleb128 0xe
 5915 026f 3A       		.uleb128 0x3a
 5916 0270 0B       		.uleb128 0xb
 5917 0271 3B       		.uleb128 0x3b
 5918 0272 0B       		.uleb128 0xb
 5919 0273 3C       		.uleb128 0x3c
 5920 0274 19       		.uleb128 0x19
 5921 0275 01       		.uleb128 0x1
 5922 0276 13       		.uleb128 0x13
 5923 0277 00       		.byte	0
 5924 0278 00       		.byte	0
 5925 0279 32       		.uleb128 0x32
 5926 027a 2E       		.uleb128 0x2e
 5927 027b 00       		.byte	0
 5928 027c 3F       		.uleb128 0x3f
 5929 027d 19       		.uleb128 0x19
 5930 027e 03       		.uleb128 0x3
 5931 027f 0E       		.uleb128 0xe
 5932 0280 3A       		.uleb128 0x3a
 5933 0281 0B       		.uleb128 0xb
ARM GAS  /tmp/ccqdRJW7.s 			page 122


 5934 0282 3B       		.uleb128 0x3b
 5935 0283 0B       		.uleb128 0xb
 5936 0284 49       		.uleb128 0x49
 5937 0285 13       		.uleb128 0x13
 5938 0286 3C       		.uleb128 0x3c
 5939 0287 19       		.uleb128 0x19
 5940 0288 00       		.byte	0
 5941 0289 00       		.byte	0
 5942 028a 33       		.uleb128 0x33
 5943 028b 2E       		.uleb128 0x2e
 5944 028c 01       		.byte	0x1
 5945 028d 3F       		.uleb128 0x3f
 5946 028e 19       		.uleb128 0x19
 5947 028f 03       		.uleb128 0x3
 5948 0290 0E       		.uleb128 0xe
 5949 0291 3A       		.uleb128 0x3a
 5950 0292 0B       		.uleb128 0xb
 5951 0293 3B       		.uleb128 0x3b
 5952 0294 05       		.uleb128 0x5
 5953 0295 49       		.uleb128 0x49
 5954 0296 13       		.uleb128 0x13
 5955 0297 3C       		.uleb128 0x3c
 5956 0298 19       		.uleb128 0x19
 5957 0299 01       		.uleb128 0x1
 5958 029a 13       		.uleb128 0x13
 5959 029b 00       		.byte	0
 5960 029c 00       		.byte	0
 5961 029d 34       		.uleb128 0x34
 5962 029e 34       		.uleb128 0x34
 5963 029f 00       		.byte	0
 5964 02a0 03       		.uleb128 0x3
 5965 02a1 0E       		.uleb128 0xe
 5966 02a2 3A       		.uleb128 0x3a
 5967 02a3 0B       		.uleb128 0xb
 5968 02a4 3B       		.uleb128 0x3b
 5969 02a5 0B       		.uleb128 0xb
 5970 02a6 49       		.uleb128 0x49
 5971 02a7 13       		.uleb128 0x13
 5972 02a8 02       		.uleb128 0x2
 5973 02a9 18       		.uleb128 0x18
 5974 02aa 00       		.byte	0
 5975 02ab 00       		.byte	0
 5976 02ac 35       		.uleb128 0x35
 5977 02ad 04       		.uleb128 0x4
 5978 02ae 01       		.byte	0x1
 5979 02af 03       		.uleb128 0x3
 5980 02b0 0E       		.uleb128 0xe
 5981 02b1 0B       		.uleb128 0xb
 5982 02b2 0B       		.uleb128 0xb
 5983 02b3 49       		.uleb128 0x49
 5984 02b4 13       		.uleb128 0x13
 5985 02b5 3A       		.uleb128 0x3a
 5986 02b6 0B       		.uleb128 0xb
 5987 02b7 3B       		.uleb128 0x3b
 5988 02b8 05       		.uleb128 0x5
 5989 02b9 01       		.uleb128 0x1
 5990 02ba 13       		.uleb128 0x13
ARM GAS  /tmp/ccqdRJW7.s 			page 123


 5991 02bb 00       		.byte	0
 5992 02bc 00       		.byte	0
 5993 02bd 36       		.uleb128 0x36
 5994 02be 28       		.uleb128 0x28
 5995 02bf 00       		.byte	0
 5996 02c0 03       		.uleb128 0x3
 5997 02c1 0E       		.uleb128 0xe
 5998 02c2 1C       		.uleb128 0x1c
 5999 02c3 0D       		.uleb128 0xd
 6000 02c4 00       		.byte	0
 6001 02c5 00       		.byte	0
 6002 02c6 37       		.uleb128 0x37
 6003 02c7 28       		.uleb128 0x28
 6004 02c8 00       		.byte	0
 6005 02c9 03       		.uleb128 0x3
 6006 02ca 0E       		.uleb128 0xe
 6007 02cb 1C       		.uleb128 0x1c
 6008 02cc 0B       		.uleb128 0xb
 6009 02cd 00       		.byte	0
 6010 02ce 00       		.byte	0
 6011 02cf 38       		.uleb128 0x38
 6012 02d0 04       		.uleb128 0x4
 6013 02d1 01       		.byte	0x1
 6014 02d2 03       		.uleb128 0x3
 6015 02d3 0E       		.uleb128 0xe
 6016 02d4 0B       		.uleb128 0xb
 6017 02d5 0B       		.uleb128 0xb
 6018 02d6 49       		.uleb128 0x49
 6019 02d7 13       		.uleb128 0x13
 6020 02d8 3A       		.uleb128 0x3a
 6021 02d9 0B       		.uleb128 0xb
 6022 02da 3B       		.uleb128 0x3b
 6023 02db 0B       		.uleb128 0xb
 6024 02dc 01       		.uleb128 0x1
 6025 02dd 13       		.uleb128 0x13
 6026 02de 00       		.byte	0
 6027 02df 00       		.byte	0
 6028 02e0 39       		.uleb128 0x39
 6029 02e1 28       		.uleb128 0x28
 6030 02e2 00       		.byte	0
 6031 02e3 03       		.uleb128 0x3
 6032 02e4 0E       		.uleb128 0xe
 6033 02e5 1C       		.uleb128 0x1c
 6034 02e6 06       		.uleb128 0x6
 6035 02e7 00       		.byte	0
 6036 02e8 00       		.byte	0
 6037 02e9 3A       		.uleb128 0x3a
 6038 02ea 28       		.uleb128 0x28
 6039 02eb 00       		.byte	0
 6040 02ec 03       		.uleb128 0x3
 6041 02ed 0E       		.uleb128 0xe
 6042 02ee 1C       		.uleb128 0x1c
 6043 02ef 05       		.uleb128 0x5
 6044 02f0 00       		.byte	0
 6045 02f1 00       		.byte	0
 6046 02f2 3B       		.uleb128 0x3b
 6047 02f3 0D       		.uleb128 0xd
ARM GAS  /tmp/ccqdRJW7.s 			page 124


 6048 02f4 00       		.byte	0
 6049 02f5 03       		.uleb128 0x3
 6050 02f6 08       		.uleb128 0x8
 6051 02f7 3A       		.uleb128 0x3a
 6052 02f8 0B       		.uleb128 0xb
 6053 02f9 3B       		.uleb128 0x3b
 6054 02fa 05       		.uleb128 0x5
 6055 02fb 49       		.uleb128 0x49
 6056 02fc 13       		.uleb128 0x13
 6057 02fd 38       		.uleb128 0x38
 6058 02fe 0B       		.uleb128 0xb
 6059 02ff 00       		.byte	0
 6060 0300 00       		.byte	0
 6061 0301 3C       		.uleb128 0x3c
 6062 0302 34       		.uleb128 0x34
 6063 0303 00       		.byte	0
 6064 0304 03       		.uleb128 0x3
 6065 0305 0E       		.uleb128 0xe
 6066 0306 3A       		.uleb128 0x3a
 6067 0307 0B       		.uleb128 0xb
 6068 0308 3B       		.uleb128 0x3b
 6069 0309 0B       		.uleb128 0xb
 6070 030a 49       		.uleb128 0x49
 6071 030b 13       		.uleb128 0x13
 6072 030c 1C       		.uleb128 0x1c
 6073 030d 0D       		.uleb128 0xd
 6074 030e 00       		.byte	0
 6075 030f 00       		.byte	0
 6076 0310 3D       		.uleb128 0x3d
 6077 0311 28       		.uleb128 0x28
 6078 0312 00       		.byte	0
 6079 0313 03       		.uleb128 0x3
 6080 0314 08       		.uleb128 0x8
 6081 0315 1C       		.uleb128 0x1c
 6082 0316 0B       		.uleb128 0xb
 6083 0317 00       		.byte	0
 6084 0318 00       		.byte	0
 6085 0319 3E       		.uleb128 0x3e
 6086 031a 21       		.uleb128 0x21
 6087 031b 00       		.byte	0
 6088 031c 00       		.byte	0
 6089 031d 00       		.byte	0
 6090 031e 3F       		.uleb128 0x3f
 6091 031f 02       		.uleb128 0x2
 6092 0320 01       		.byte	0x1
 6093 0321 03       		.uleb128 0x3
 6094 0322 0E       		.uleb128 0xe
 6095 0323 3C       		.uleb128 0x3c
 6096 0324 19       		.uleb128 0x19
 6097 0325 01       		.uleb128 0x1
 6098 0326 13       		.uleb128 0x13
 6099 0327 00       		.byte	0
 6100 0328 00       		.byte	0
 6101 0329 40       		.uleb128 0x40
 6102 032a 2E       		.uleb128 0x2e
 6103 032b 01       		.byte	0x1
 6104 032c 3F       		.uleb128 0x3f
ARM GAS  /tmp/ccqdRJW7.s 			page 125


 6105 032d 19       		.uleb128 0x19
 6106 032e 03       		.uleb128 0x3
 6107 032f 0E       		.uleb128 0xe
 6108 0330 3A       		.uleb128 0x3a
 6109 0331 0B       		.uleb128 0xb
 6110 0332 3B       		.uleb128 0x3b
 6111 0333 0B       		.uleb128 0xb
 6112 0334 6E       		.uleb128 0x6e
 6113 0335 0E       		.uleb128 0xe
 6114 0336 49       		.uleb128 0x49
 6115 0337 13       		.uleb128 0x13
 6116 0338 32       		.uleb128 0x32
 6117 0339 0B       		.uleb128 0xb
 6118 033a 3C       		.uleb128 0x3c
 6119 033b 19       		.uleb128 0x19
 6120 033c 64       		.uleb128 0x64
 6121 033d 13       		.uleb128 0x13
 6122 033e 00       		.byte	0
 6123 033f 00       		.byte	0
 6124 0340 41       		.uleb128 0x41
 6125 0341 05       		.uleb128 0x5
 6126 0342 00       		.byte	0
 6127 0343 49       		.uleb128 0x49
 6128 0344 13       		.uleb128 0x13
 6129 0345 34       		.uleb128 0x34
 6130 0346 19       		.uleb128 0x19
 6131 0347 00       		.byte	0
 6132 0348 00       		.byte	0
 6133 0349 42       		.uleb128 0x42
 6134 034a 34       		.uleb128 0x34
 6135 034b 00       		.byte	0
 6136 034c 03       		.uleb128 0x3
 6137 034d 0E       		.uleb128 0xe
 6138 034e 3A       		.uleb128 0x3a
 6139 034f 0B       		.uleb128 0xb
 6140 0350 3B       		.uleb128 0x3b
 6141 0351 0B       		.uleb128 0xb
 6142 0352 49       		.uleb128 0x49
 6143 0353 13       		.uleb128 0x13
 6144 0354 1C       		.uleb128 0x1c
 6145 0355 05       		.uleb128 0x5
 6146 0356 00       		.byte	0
 6147 0357 00       		.byte	0
 6148 0358 43       		.uleb128 0x43
 6149 0359 34       		.uleb128 0x34
 6150 035a 00       		.byte	0
 6151 035b 03       		.uleb128 0x3
 6152 035c 0E       		.uleb128 0xe
 6153 035d 3A       		.uleb128 0x3a
 6154 035e 0B       		.uleb128 0xb
 6155 035f 3B       		.uleb128 0x3b
 6156 0360 0B       		.uleb128 0xb
 6157 0361 49       		.uleb128 0x49
 6158 0362 13       		.uleb128 0x13
 6159 0363 1C       		.uleb128 0x1c
 6160 0364 0B       		.uleb128 0xb
 6161 0365 00       		.byte	0
ARM GAS  /tmp/ccqdRJW7.s 			page 126


 6162 0366 00       		.byte	0
 6163 0367 44       		.uleb128 0x44
 6164 0368 34       		.uleb128 0x34
 6165 0369 00       		.byte	0
 6166 036a 03       		.uleb128 0x3
 6167 036b 0E       		.uleb128 0xe
 6168 036c 3A       		.uleb128 0x3a
 6169 036d 0B       		.uleb128 0xb
 6170 036e 3B       		.uleb128 0x3b
 6171 036f 0B       		.uleb128 0xb
 6172 0370 49       		.uleb128 0x49
 6173 0371 13       		.uleb128 0x13
 6174 0372 1C       		.uleb128 0x1c
 6175 0373 06       		.uleb128 0x6
 6176 0374 00       		.byte	0
 6177 0375 00       		.byte	0
 6178 0376 45       		.uleb128 0x45
 6179 0377 02       		.uleb128 0x2
 6180 0378 00       		.byte	0
 6181 0379 03       		.uleb128 0x3
 6182 037a 0E       		.uleb128 0xe
 6183 037b 3C       		.uleb128 0x3c
 6184 037c 19       		.uleb128 0x19
 6185 037d 00       		.byte	0
 6186 037e 00       		.byte	0
 6187 037f 46       		.uleb128 0x46
 6188 0380 2E       		.uleb128 0x2e
 6189 0381 00       		.byte	0
 6190 0382 3F       		.uleb128 0x3f
 6191 0383 19       		.uleb128 0x19
 6192 0384 03       		.uleb128 0x3
 6193 0385 0E       		.uleb128 0xe
 6194 0386 3A       		.uleb128 0x3a
 6195 0387 0B       		.uleb128 0xb
 6196 0388 3B       		.uleb128 0x3b
 6197 0389 0B       		.uleb128 0xb
 6198 038a 6E       		.uleb128 0x6e
 6199 038b 0E       		.uleb128 0xe
 6200 038c 49       		.uleb128 0x49
 6201 038d 13       		.uleb128 0x13
 6202 038e 11       		.uleb128 0x11
 6203 038f 01       		.uleb128 0x1
 6204 0390 12       		.uleb128 0x12
 6205 0391 06       		.uleb128 0x6
 6206 0392 40       		.uleb128 0x40
 6207 0393 18       		.uleb128 0x18
 6208 0394 9742     		.uleb128 0x2117
 6209 0396 19       		.uleb128 0x19
 6210 0397 00       		.byte	0
 6211 0398 00       		.byte	0
 6212 0399 47       		.uleb128 0x47
 6213 039a 2E       		.uleb128 0x2e
 6214 039b 01       		.byte	0x1
 6215 039c 3F       		.uleb128 0x3f
 6216 039d 19       		.uleb128 0x19
 6217 039e 03       		.uleb128 0x3
 6218 039f 0E       		.uleb128 0xe
ARM GAS  /tmp/ccqdRJW7.s 			page 127


 6219 03a0 3A       		.uleb128 0x3a
 6220 03a1 0B       		.uleb128 0xb
 6221 03a2 3B       		.uleb128 0x3b
 6222 03a3 0B       		.uleb128 0xb
 6223 03a4 6E       		.uleb128 0x6e
 6224 03a5 0E       		.uleb128 0xe
 6225 03a6 49       		.uleb128 0x49
 6226 03a7 13       		.uleb128 0x13
 6227 03a8 11       		.uleb128 0x11
 6228 03a9 01       		.uleb128 0x1
 6229 03aa 12       		.uleb128 0x12
 6230 03ab 06       		.uleb128 0x6
 6231 03ac 40       		.uleb128 0x40
 6232 03ad 18       		.uleb128 0x18
 6233 03ae 9742     		.uleb128 0x2117
 6234 03b0 19       		.uleb128 0x19
 6235 03b1 01       		.uleb128 0x1
 6236 03b2 13       		.uleb128 0x13
 6237 03b3 00       		.byte	0
 6238 03b4 00       		.byte	0
 6239 03b5 48       		.uleb128 0x48
 6240 03b6 05       		.uleb128 0x5
 6241 03b7 00       		.byte	0
 6242 03b8 03       		.uleb128 0x3
 6243 03b9 08       		.uleb128 0x8
 6244 03ba 3A       		.uleb128 0x3a
 6245 03bb 0B       		.uleb128 0xb
 6246 03bc 3B       		.uleb128 0x3b
 6247 03bd 0B       		.uleb128 0xb
 6248 03be 49       		.uleb128 0x49
 6249 03bf 13       		.uleb128 0x13
 6250 03c0 02       		.uleb128 0x2
 6251 03c1 17       		.uleb128 0x17
 6252 03c2 00       		.byte	0
 6253 03c3 00       		.byte	0
 6254 03c4 49       		.uleb128 0x49
 6255 03c5 05       		.uleb128 0x5
 6256 03c6 00       		.byte	0
 6257 03c7 03       		.uleb128 0x3
 6258 03c8 0E       		.uleb128 0xe
 6259 03c9 3A       		.uleb128 0x3a
 6260 03ca 0B       		.uleb128 0xb
 6261 03cb 3B       		.uleb128 0x3b
 6262 03cc 0B       		.uleb128 0xb
 6263 03cd 49       		.uleb128 0x49
 6264 03ce 13       		.uleb128 0x13
 6265 03cf 02       		.uleb128 0x2
 6266 03d0 17       		.uleb128 0x17
 6267 03d1 00       		.byte	0
 6268 03d2 00       		.byte	0
 6269 03d3 4A       		.uleb128 0x4a
 6270 03d4 34       		.uleb128 0x34
 6271 03d5 00       		.byte	0
 6272 03d6 03       		.uleb128 0x3
 6273 03d7 0E       		.uleb128 0xe
 6274 03d8 3A       		.uleb128 0x3a
 6275 03d9 0B       		.uleb128 0xb
ARM GAS  /tmp/ccqdRJW7.s 			page 128


 6276 03da 3B       		.uleb128 0x3b
 6277 03db 0B       		.uleb128 0xb
 6278 03dc 49       		.uleb128 0x49
 6279 03dd 13       		.uleb128 0x13
 6280 03de 02       		.uleb128 0x2
 6281 03df 17       		.uleb128 0x17
 6282 03e0 00       		.byte	0
 6283 03e1 00       		.byte	0
 6284 03e2 4B       		.uleb128 0x4b
 6285 03e3 1D       		.uleb128 0x1d
 6286 03e4 01       		.byte	0x1
 6287 03e5 31       		.uleb128 0x31
 6288 03e6 13       		.uleb128 0x13
 6289 03e7 52       		.uleb128 0x52
 6290 03e8 01       		.uleb128 0x1
 6291 03e9 55       		.uleb128 0x55
 6292 03ea 17       		.uleb128 0x17
 6293 03eb 58       		.uleb128 0x58
 6294 03ec 0B       		.uleb128 0xb
 6295 03ed 59       		.uleb128 0x59
 6296 03ee 0B       		.uleb128 0xb
 6297 03ef 01       		.uleb128 0x1
 6298 03f0 13       		.uleb128 0x13
 6299 03f1 00       		.byte	0
 6300 03f2 00       		.byte	0
 6301 03f3 4C       		.uleb128 0x4c
 6302 03f4 05       		.uleb128 0x5
 6303 03f5 00       		.byte	0
 6304 03f6 31       		.uleb128 0x31
 6305 03f7 13       		.uleb128 0x13
 6306 03f8 00       		.byte	0
 6307 03f9 00       		.byte	0
 6308 03fa 4D       		.uleb128 0x4d
 6309 03fb 1D       		.uleb128 0x1d
 6310 03fc 01       		.byte	0x1
 6311 03fd 31       		.uleb128 0x31
 6312 03fe 13       		.uleb128 0x13
 6313 03ff 52       		.uleb128 0x52
 6314 0400 01       		.uleb128 0x1
 6315 0401 55       		.uleb128 0x55
 6316 0402 17       		.uleb128 0x17
 6317 0403 58       		.uleb128 0x58
 6318 0404 0B       		.uleb128 0xb
 6319 0405 59       		.uleb128 0x59
 6320 0406 0B       		.uleb128 0xb
 6321 0407 00       		.byte	0
 6322 0408 00       		.byte	0
 6323 0409 4E       		.uleb128 0x4e
 6324 040a 05       		.uleb128 0x5
 6325 040b 00       		.byte	0
 6326 040c 31       		.uleb128 0x31
 6327 040d 13       		.uleb128 0x13
 6328 040e 02       		.uleb128 0x2
 6329 040f 17       		.uleb128 0x17
 6330 0410 00       		.byte	0
 6331 0411 00       		.byte	0
 6332 0412 4F       		.uleb128 0x4f
ARM GAS  /tmp/ccqdRJW7.s 			page 129


 6333 0413 2E       		.uleb128 0x2e
 6334 0414 01       		.byte	0x1
 6335 0415 3F       		.uleb128 0x3f
 6336 0416 19       		.uleb128 0x19
 6337 0417 03       		.uleb128 0x3
 6338 0418 0E       		.uleb128 0xe
 6339 0419 3A       		.uleb128 0x3a
 6340 041a 0B       		.uleb128 0xb
 6341 041b 3B       		.uleb128 0x3b
 6342 041c 0B       		.uleb128 0xb
 6343 041d 6E       		.uleb128 0x6e
 6344 041e 0E       		.uleb128 0xe
 6345 041f 11       		.uleb128 0x11
 6346 0420 01       		.uleb128 0x1
 6347 0421 12       		.uleb128 0x12
 6348 0422 06       		.uleb128 0x6
 6349 0423 40       		.uleb128 0x40
 6350 0424 18       		.uleb128 0x18
 6351 0425 9742     		.uleb128 0x2117
 6352 0427 19       		.uleb128 0x19
 6353 0428 01       		.uleb128 0x1
 6354 0429 13       		.uleb128 0x13
 6355 042a 00       		.byte	0
 6356 042b 00       		.byte	0
 6357 042c 50       		.uleb128 0x50
 6358 042d 1D       		.uleb128 0x1d
 6359 042e 01       		.byte	0x1
 6360 042f 31       		.uleb128 0x31
 6361 0430 13       		.uleb128 0x13
 6362 0431 11       		.uleb128 0x11
 6363 0432 01       		.uleb128 0x1
 6364 0433 12       		.uleb128 0x12
 6365 0434 06       		.uleb128 0x6
 6366 0435 58       		.uleb128 0x58
 6367 0436 0B       		.uleb128 0xb
 6368 0437 59       		.uleb128 0x59
 6369 0438 0B       		.uleb128 0xb
 6370 0439 01       		.uleb128 0x1
 6371 043a 13       		.uleb128 0x13
 6372 043b 00       		.byte	0
 6373 043c 00       		.byte	0
 6374 043d 51       		.uleb128 0x51
 6375 043e 0B       		.uleb128 0xb
 6376 043f 01       		.byte	0x1
 6377 0440 11       		.uleb128 0x11
 6378 0441 01       		.uleb128 0x1
 6379 0442 12       		.uleb128 0x12
 6380 0443 06       		.uleb128 0x6
 6381 0444 01       		.uleb128 0x1
 6382 0445 13       		.uleb128 0x13
 6383 0446 00       		.byte	0
 6384 0447 00       		.byte	0
 6385 0448 52       		.uleb128 0x52
 6386 0449 34       		.uleb128 0x34
 6387 044a 00       		.byte	0
 6388 044b 31       		.uleb128 0x31
 6389 044c 13       		.uleb128 0x13
ARM GAS  /tmp/ccqdRJW7.s 			page 130


 6390 044d 02       		.uleb128 0x2
 6391 044e 17       		.uleb128 0x17
 6392 044f 00       		.byte	0
 6393 0450 00       		.byte	0
 6394 0451 53       		.uleb128 0x53
 6395 0452 1D       		.uleb128 0x1d
 6396 0453 01       		.byte	0x1
 6397 0454 31       		.uleb128 0x31
 6398 0455 13       		.uleb128 0x13
 6399 0456 11       		.uleb128 0x11
 6400 0457 01       		.uleb128 0x1
 6401 0458 12       		.uleb128 0x12
 6402 0459 06       		.uleb128 0x6
 6403 045a 58       		.uleb128 0x58
 6404 045b 0B       		.uleb128 0xb
 6405 045c 59       		.uleb128 0x59
 6406 045d 0B       		.uleb128 0xb
 6407 045e 00       		.byte	0
 6408 045f 00       		.byte	0
 6409 0460 54       		.uleb128 0x54
 6410 0461 2E       		.uleb128 0x2e
 6411 0462 01       		.byte	0x1
 6412 0463 03       		.uleb128 0x3
 6413 0464 0E       		.uleb128 0xe
 6414 0465 3A       		.uleb128 0x3a
 6415 0466 0B       		.uleb128 0xb
 6416 0467 3B       		.uleb128 0x3b
 6417 0468 0B       		.uleb128 0xb
 6418 0469 20       		.uleb128 0x20
 6419 046a 0B       		.uleb128 0xb
 6420 046b 01       		.uleb128 0x1
 6421 046c 13       		.uleb128 0x13
 6422 046d 00       		.byte	0
 6423 046e 00       		.byte	0
 6424 046f 55       		.uleb128 0x55
 6425 0470 05       		.uleb128 0x5
 6426 0471 00       		.byte	0
 6427 0472 03       		.uleb128 0x3
 6428 0473 0E       		.uleb128 0xe
 6429 0474 3A       		.uleb128 0x3a
 6430 0475 0B       		.uleb128 0xb
 6431 0476 3B       		.uleb128 0x3b
 6432 0477 0B       		.uleb128 0xb
 6433 0478 49       		.uleb128 0x49
 6434 0479 13       		.uleb128 0x13
 6435 047a 00       		.byte	0
 6436 047b 00       		.byte	0
 6437 047c 56       		.uleb128 0x56
 6438 047d 0B       		.uleb128 0xb
 6439 047e 01       		.byte	0x1
 6440 047f 00       		.byte	0
 6441 0480 00       		.byte	0
 6442 0481 57       		.uleb128 0x57
 6443 0482 34       		.uleb128 0x34
 6444 0483 00       		.byte	0
 6445 0484 03       		.uleb128 0x3
 6446 0485 0E       		.uleb128 0xe
ARM GAS  /tmp/ccqdRJW7.s 			page 131


 6447 0486 3A       		.uleb128 0x3a
 6448 0487 0B       		.uleb128 0xb
 6449 0488 3B       		.uleb128 0x3b
 6450 0489 0B       		.uleb128 0xb
 6451 048a 49       		.uleb128 0x49
 6452 048b 13       		.uleb128 0x13
 6453 048c 00       		.byte	0
 6454 048d 00       		.byte	0
 6455 048e 58       		.uleb128 0x58
 6456 048f 0B       		.uleb128 0xb
 6457 0490 01       		.byte	0x1
 6458 0491 11       		.uleb128 0x11
 6459 0492 01       		.uleb128 0x1
 6460 0493 12       		.uleb128 0x12
 6461 0494 06       		.uleb128 0x6
 6462 0495 00       		.byte	0
 6463 0496 00       		.byte	0
 6464 0497 59       		.uleb128 0x59
 6465 0498 34       		.uleb128 0x34
 6466 0499 00       		.byte	0
 6467 049a 03       		.uleb128 0x3
 6468 049b 08       		.uleb128 0x8
 6469 049c 3A       		.uleb128 0x3a
 6470 049d 0B       		.uleb128 0xb
 6471 049e 3B       		.uleb128 0x3b
 6472 049f 0B       		.uleb128 0xb
 6473 04a0 49       		.uleb128 0x49
 6474 04a1 13       		.uleb128 0x13
 6475 04a2 02       		.uleb128 0x2
 6476 04a3 18       		.uleb128 0x18
 6477 04a4 00       		.byte	0
 6478 04a5 00       		.byte	0
 6479 04a6 5A       		.uleb128 0x5a
 6480 04a7 898201   		.uleb128 0x4109
 6481 04aa 01       		.byte	0x1
 6482 04ab 11       		.uleb128 0x11
 6483 04ac 01       		.uleb128 0x1
 6484 04ad 31       		.uleb128 0x31
 6485 04ae 13       		.uleb128 0x13
 6486 04af 01       		.uleb128 0x1
 6487 04b0 13       		.uleb128 0x13
 6488 04b1 00       		.byte	0
 6489 04b2 00       		.byte	0
 6490 04b3 5B       		.uleb128 0x5b
 6491 04b4 8A8201   		.uleb128 0x410a
 6492 04b7 00       		.byte	0
 6493 04b8 02       		.uleb128 0x2
 6494 04b9 18       		.uleb128 0x18
 6495 04ba 9142     		.uleb128 0x2111
 6496 04bc 18       		.uleb128 0x18
 6497 04bd 00       		.byte	0
 6498 04be 00       		.byte	0
 6499 04bf 5C       		.uleb128 0x5c
 6500 04c0 898201   		.uleb128 0x4109
 6501 04c3 01       		.byte	0x1
 6502 04c4 11       		.uleb128 0x11
 6503 04c5 01       		.uleb128 0x1
ARM GAS  /tmp/ccqdRJW7.s 			page 132


 6504 04c6 31       		.uleb128 0x31
 6505 04c7 13       		.uleb128 0x13
 6506 04c8 00       		.byte	0
 6507 04c9 00       		.byte	0
 6508 04ca 5D       		.uleb128 0x5d
 6509 04cb 2E       		.uleb128 0x2e
 6510 04cc 01       		.byte	0x1
 6511 04cd 03       		.uleb128 0x3
 6512 04ce 0E       		.uleb128 0xe
 6513 04cf 3A       		.uleb128 0x3a
 6514 04d0 0B       		.uleb128 0xb
 6515 04d1 3B       		.uleb128 0x3b
 6516 04d2 0B       		.uleb128 0xb
 6517 04d3 49       		.uleb128 0x49
 6518 04d4 13       		.uleb128 0x13
 6519 04d5 20       		.uleb128 0x20
 6520 04d6 0B       		.uleb128 0xb
 6521 04d7 01       		.uleb128 0x1
 6522 04d8 13       		.uleb128 0x13
 6523 04d9 00       		.byte	0
 6524 04da 00       		.byte	0
 6525 04db 5E       		.uleb128 0x5e
 6526 04dc 2E       		.uleb128 0x2e
 6527 04dd 01       		.byte	0x1
 6528 04de 03       		.uleb128 0x3
 6529 04df 0E       		.uleb128 0xe
 6530 04e0 3A       		.uleb128 0x3a
 6531 04e1 0B       		.uleb128 0xb
 6532 04e2 3B       		.uleb128 0x3b
 6533 04e3 05       		.uleb128 0x5
 6534 04e4 49       		.uleb128 0x49
 6535 04e5 13       		.uleb128 0x13
 6536 04e6 20       		.uleb128 0x20
 6537 04e7 0B       		.uleb128 0xb
 6538 04e8 01       		.uleb128 0x1
 6539 04e9 13       		.uleb128 0x13
 6540 04ea 00       		.byte	0
 6541 04eb 00       		.byte	0
 6542 04ec 5F       		.uleb128 0x5f
 6543 04ed 05       		.uleb128 0x5
 6544 04ee 00       		.byte	0
 6545 04ef 03       		.uleb128 0x3
 6546 04f0 0E       		.uleb128 0xe
 6547 04f1 3A       		.uleb128 0x3a
 6548 04f2 0B       		.uleb128 0xb
 6549 04f3 3B       		.uleb128 0x3b
 6550 04f4 05       		.uleb128 0x5
 6551 04f5 49       		.uleb128 0x49
 6552 04f6 13       		.uleb128 0x13
 6553 04f7 00       		.byte	0
 6554 04f8 00       		.byte	0
 6555 04f9 60       		.uleb128 0x60
 6556 04fa 2E       		.uleb128 0x2e
 6557 04fb 01       		.byte	0x1
 6558 04fc 03       		.uleb128 0x3
 6559 04fd 0E       		.uleb128 0xe
 6560 04fe 3A       		.uleb128 0x3a
ARM GAS  /tmp/ccqdRJW7.s 			page 133


 6561 04ff 0B       		.uleb128 0xb
 6562 0500 3B       		.uleb128 0x3b
 6563 0501 05       		.uleb128 0x5
 6564 0502 20       		.uleb128 0x20
 6565 0503 0B       		.uleb128 0xb
 6566 0504 01       		.uleb128 0x1
 6567 0505 13       		.uleb128 0x13
 6568 0506 00       		.byte	0
 6569 0507 00       		.byte	0
 6570 0508 61       		.uleb128 0x61
 6571 0509 34       		.uleb128 0x34
 6572 050a 00       		.byte	0
 6573 050b 03       		.uleb128 0x3
 6574 050c 08       		.uleb128 0x8
 6575 050d 3A       		.uleb128 0x3a
 6576 050e 0B       		.uleb128 0xb
 6577 050f 3B       		.uleb128 0x3b
 6578 0510 05       		.uleb128 0x5
 6579 0511 49       		.uleb128 0x49
 6580 0512 13       		.uleb128 0x13
 6581 0513 00       		.byte	0
 6582 0514 00       		.byte	0
 6583 0515 62       		.uleb128 0x62
 6584 0516 2E       		.uleb128 0x2e
 6585 0517 00       		.byte	0
 6586 0518 3F       		.uleb128 0x3f
 6587 0519 19       		.uleb128 0x19
 6588 051a 3C       		.uleb128 0x3c
 6589 051b 19       		.uleb128 0x19
 6590 051c 6E       		.uleb128 0x6e
 6591 051d 0E       		.uleb128 0xe
 6592 051e 03       		.uleb128 0x3
 6593 051f 0E       		.uleb128 0xe
 6594 0520 3A       		.uleb128 0x3a
 6595 0521 0B       		.uleb128 0xb
 6596 0522 3B       		.uleb128 0x3b
 6597 0523 05       		.uleb128 0x5
 6598 0524 00       		.byte	0
 6599 0525 00       		.byte	0
 6600 0526 00       		.byte	0
 6601              		.section	.debug_loc,"",%progbits
 6602              	.Ldebug_loc0:
 6603              	.LLST23:
 6604 0000 00000000 		.4byte	.LVL52
 6605 0004 06000000 		.4byte	.LVL53
 6606 0008 0100     		.2byte	0x1
 6607 000a 50       		.byte	0x50
 6608 000b 06000000 		.4byte	.LVL53
 6609 000f 14000000 		.4byte	.LFE533
 6610 0013 0400     		.2byte	0x4
 6611 0015 F3       		.byte	0xf3
 6612 0016 01       		.uleb128 0x1
 6613 0017 50       		.byte	0x50
 6614 0018 9F       		.byte	0x9f
 6615 0019 00000000 		.4byte	0
 6616 001d 00000000 		.4byte	0
 6617              	.LLST19:
ARM GAS  /tmp/ccqdRJW7.s 			page 134


 6618 0021 00000000 		.4byte	.LVL44
 6619 0025 0A000000 		.4byte	.LVL45
 6620 0029 0100     		.2byte	0x1
 6621 002b 50       		.byte	0x50
 6622 002c 0A000000 		.4byte	.LVL45
 6623 0030 14000000 		.4byte	.LVL48
 6624 0034 0100     		.2byte	0x1
 6625 0036 50       		.byte	0x50
 6626 0037 14000000 		.4byte	.LVL48
 6627 003b 16000000 		.4byte	.LVL49
 6628 003f 0B00     		.2byte	0xb
 6629 0041 F3       		.byte	0xf3
 6630 0042 01       		.uleb128 0x1
 6631 0043 50       		.byte	0x50
 6632 0044 03       		.byte	0x3
 6633 0045 00000000 		.4byte	_ZL14activeChannels
 6634 0049 06       		.byte	0x6
 6635 004a 1A       		.byte	0x1a
 6636 004b 9F       		.byte	0x9f
 6637 004c 16000000 		.4byte	.LVL49
 6638 0050 1C000000 		.4byte	.LVL50
 6639 0054 0100     		.2byte	0x1
 6640 0056 50       		.byte	0x50
 6641 0057 1C000000 		.4byte	.LVL50
 6642 005b 38000000 		.4byte	.LFE532
 6643 005f 0B00     		.2byte	0xb
 6644 0061 F3       		.byte	0xf3
 6645 0062 01       		.uleb128 0x1
 6646 0063 50       		.byte	0x50
 6647 0064 03       		.byte	0x3
 6648 0065 00000000 		.4byte	_ZL14activeChannels
 6649 0069 06       		.byte	0x6
 6650 006a 1A       		.byte	0x1a
 6651 006b 9F       		.byte	0x9f
 6652 006c 00000000 		.4byte	0
 6653 0070 00000000 		.4byte	0
 6654              	.LLST20:
 6655 0074 0E000000 		.4byte	.LVL46
 6656 0078 10000000 		.4byte	.LVL47
 6657 007c 0100     		.2byte	0x1
 6658 007e 53       		.byte	0x53
 6659 007f 10000000 		.4byte	.LVL47
 6660 0083 14000000 		.4byte	.LVL48
 6661 0087 0900     		.2byte	0x9
 6662 0089 70       		.byte	0x70
 6663 008a 00       		.sleb128 0
 6664 008b 09       		.byte	0x9
 6665 008c F8       		.byte	0xf8
 6666 008d 24       		.byte	0x24
 6667 008e 09       		.byte	0x9
 6668 008f F8       		.byte	0xf8
 6669 0090 25       		.byte	0x25
 6670 0091 9F       		.byte	0x9f
 6671 0092 14000000 		.4byte	.LVL48
 6672 0096 16000000 		.4byte	.LVL49
 6673 009a 1100     		.2byte	0x11
 6674 009c F3       		.byte	0xf3
ARM GAS  /tmp/ccqdRJW7.s 			page 135


 6675 009d 01       		.uleb128 0x1
 6676 009e 50       		.byte	0x50
 6677 009f 03       		.byte	0x3
 6678 00a0 00000000 		.4byte	_ZL14activeChannels
 6679 00a4 06       		.byte	0x6
 6680 00a5 1A       		.byte	0x1a
 6681 00a6 09       		.byte	0x9
 6682 00a7 F8       		.byte	0xf8
 6683 00a8 24       		.byte	0x24
 6684 00a9 09       		.byte	0x9
 6685 00aa F8       		.byte	0xf8
 6686 00ab 25       		.byte	0x25
 6687 00ac 9F       		.byte	0x9f
 6688 00ad 16000000 		.4byte	.LVL49
 6689 00b1 1C000000 		.4byte	.LVL50
 6690 00b5 0900     		.2byte	0x9
 6691 00b7 70       		.byte	0x70
 6692 00b8 00       		.sleb128 0
 6693 00b9 09       		.byte	0x9
 6694 00ba F8       		.byte	0xf8
 6695 00bb 24       		.byte	0x24
 6696 00bc 09       		.byte	0x9
 6697 00bd F8       		.byte	0xf8
 6698 00be 25       		.byte	0x25
 6699 00bf 9F       		.byte	0x9f
 6700 00c0 1C000000 		.4byte	.LVL50
 6701 00c4 38000000 		.4byte	.LFE532
 6702 00c8 1100     		.2byte	0x11
 6703 00ca F3       		.byte	0xf3
 6704 00cb 01       		.uleb128 0x1
 6705 00cc 50       		.byte	0x50
 6706 00cd 03       		.byte	0x3
 6707 00ce 00000000 		.4byte	_ZL14activeChannels
 6708 00d2 06       		.byte	0x6
 6709 00d3 1A       		.byte	0x1a
 6710 00d4 09       		.byte	0x9
 6711 00d5 F8       		.byte	0xf8
 6712 00d6 24       		.byte	0x24
 6713 00d7 09       		.byte	0x9
 6714 00d8 F8       		.byte	0xf8
 6715 00d9 25       		.byte	0x25
 6716 00da 9F       		.byte	0x9f
 6717 00db 00000000 		.4byte	0
 6718 00df 00000000 		.4byte	0
 6719              	.LLST21:
 6720 00e3 0E000000 		.4byte	.LVL46
 6721 00e7 14000000 		.4byte	.LVL48
 6722 00eb 0900     		.2byte	0x9
 6723 00ed 70       		.byte	0x70
 6724 00ee 00       		.sleb128 0
 6725 00ef 40       		.byte	0x40
 6726 00f0 25       		.byte	0x25
 6727 00f1 0A       		.byte	0xa
 6728 00f2 FF07     		.2byte	0x7ff
 6729 00f4 1A       		.byte	0x1a
 6730 00f5 9F       		.byte	0x9f
 6731 00f6 14000000 		.4byte	.LVL48
ARM GAS  /tmp/ccqdRJW7.s 			page 136


 6732 00fa 16000000 		.4byte	.LVL49
 6733 00fe 1100     		.2byte	0x11
 6734 0100 F3       		.byte	0xf3
 6735 0101 01       		.uleb128 0x1
 6736 0102 50       		.byte	0x50
 6737 0103 03       		.byte	0x3
 6738 0104 00000000 		.4byte	_ZL14activeChannels
 6739 0108 06       		.byte	0x6
 6740 0109 1A       		.byte	0x1a
 6741 010a 40       		.byte	0x40
 6742 010b 25       		.byte	0x25
 6743 010c 0A       		.byte	0xa
 6744 010d FF07     		.2byte	0x7ff
 6745 010f 1A       		.byte	0x1a
 6746 0110 9F       		.byte	0x9f
 6747 0111 16000000 		.4byte	.LVL49
 6748 0115 1C000000 		.4byte	.LVL50
 6749 0119 0900     		.2byte	0x9
 6750 011b 70       		.byte	0x70
 6751 011c 00       		.sleb128 0
 6752 011d 40       		.byte	0x40
 6753 011e 25       		.byte	0x25
 6754 011f 0A       		.byte	0xa
 6755 0120 FF07     		.2byte	0x7ff
 6756 0122 1A       		.byte	0x1a
 6757 0123 9F       		.byte	0x9f
 6758 0124 1C000000 		.4byte	.LVL50
 6759 0128 38000000 		.4byte	.LFE532
 6760 012c 1100     		.2byte	0x11
 6761 012e F3       		.byte	0xf3
 6762 012f 01       		.uleb128 0x1
 6763 0130 50       		.byte	0x50
 6764 0131 03       		.byte	0x3
 6765 0132 00000000 		.4byte	_ZL14activeChannels
 6766 0136 06       		.byte	0x6
 6767 0137 1A       		.byte	0x1a
 6768 0138 40       		.byte	0x40
 6769 0139 25       		.byte	0x25
 6770 013a 0A       		.byte	0xa
 6771 013b FF07     		.2byte	0x7ff
 6772 013d 1A       		.byte	0x1a
 6773 013e 9F       		.byte	0x9f
 6774 013f 00000000 		.4byte	0
 6775 0143 00000000 		.4byte	0
 6776              	.LLST22:
 6777 0147 1C000000 		.4byte	.LVL50
 6778 014b 1E000000 		.4byte	.LVL51
 6779 014f 0600     		.2byte	0x6
 6780 0151 0C       		.byte	0xc
 6781 0152 00400640 		.4byte	0x40064000
 6782 0156 9F       		.byte	0x9f
 6783 0157 00000000 		.4byte	0
 6784 015b 00000000 		.4byte	0
 6785              	.LLST14:
 6786 015f 00000000 		.4byte	.LVL32
 6787 0163 06000000 		.4byte	.LVL33
 6788 0167 0100     		.2byte	0x1
ARM GAS  /tmp/ccqdRJW7.s 			page 137


 6789 0169 50       		.byte	0x50
 6790 016a 06000000 		.4byte	.LVL33
 6791 016e 48000000 		.4byte	.LFE531
 6792 0172 0100     		.2byte	0x1
 6793 0174 50       		.byte	0x50
 6794 0175 00000000 		.4byte	0
 6795 0179 00000000 		.4byte	0
 6796              	.LLST15:
 6797 017d 10000000 		.4byte	.LVL34
 6798 0181 1C000000 		.4byte	.LVL37
 6799 0185 0100     		.2byte	0x1
 6800 0187 53       		.byte	0x53
 6801 0188 1C000000 		.4byte	.LVL37
 6802 018c 1E000000 		.4byte	.LVL38
 6803 0190 0700     		.2byte	0x7
 6804 0192 72       		.byte	0x72
 6805 0193 E400     		.sleb128 100
 6806 0195 06       		.byte	0x6
 6807 0196 23       		.byte	0x23
 6808 0197 01       		.uleb128 0x1
 6809 0198 9F       		.byte	0x9f
 6810 0199 00000000 		.4byte	0
 6811 019d 00000000 		.4byte	0
 6812              	.LLST16:
 6813 01a1 1A000000 		.4byte	.LVL36
 6814 01a5 1E000000 		.4byte	.LVL38
 6815 01a9 0600     		.2byte	0x6
 6816 01ab 0C       		.byte	0xc
 6817 01ac 00C00340 		.4byte	0x4003c000
 6818 01b0 9F       		.byte	0x9f
 6819 01b1 00000000 		.4byte	0
 6820 01b5 00000000 		.4byte	0
 6821              	.LLST17:
 6822 01b9 28000000 		.4byte	.LVL39
 6823 01bd 34000000 		.4byte	.LVL42
 6824 01c1 0100     		.2byte	0x1
 6825 01c3 53       		.byte	0x53
 6826 01c4 34000000 		.4byte	.LVL42
 6827 01c8 36000000 		.4byte	.LVL43
 6828 01cc 0700     		.2byte	0x7
 6829 01ce 72       		.byte	0x72
 6830 01cf E400     		.sleb128 100
 6831 01d1 06       		.byte	0x6
 6832 01d2 23       		.byte	0x23
 6833 01d3 01       		.uleb128 0x1
 6834 01d4 9F       		.byte	0x9f
 6835 01d5 00000000 		.4byte	0
 6836 01d9 00000000 		.4byte	0
 6837              	.LLST18:
 6838 01dd 32000000 		.4byte	.LVL41
 6839 01e1 36000000 		.4byte	.LVL43
 6840 01e5 0600     		.2byte	0x6
 6841 01e7 0C       		.byte	0xc
 6842 01e8 00400640 		.4byte	0x40064000
 6843 01ec 9F       		.byte	0x9f
 6844 01ed 00000000 		.4byte	0
 6845 01f1 00000000 		.4byte	0
ARM GAS  /tmp/ccqdRJW7.s 			page 138


 6846              	.LLST12:
 6847 01f5 00000000 		.4byte	.LVL27
 6848 01f9 14000000 		.4byte	.LVL29
 6849 01fd 0100     		.2byte	0x1
 6850 01ff 50       		.byte	0x50
 6851 0200 14000000 		.4byte	.LVL29
 6852 0204 1C000000 		.4byte	.LVL30
 6853 0208 0400     		.2byte	0x4
 6854 020a F3       		.byte	0xf3
 6855 020b 01       		.uleb128 0x1
 6856 020c 50       		.byte	0x50
 6857 020d 9F       		.byte	0x9f
 6858 020e 1C000000 		.4byte	.LVL30
 6859 0212 1E000000 		.4byte	.LVL31
 6860 0216 0100     		.2byte	0x1
 6861 0218 50       		.byte	0x50
 6862 0219 1E000000 		.4byte	.LVL31
 6863 021d 28000000 		.4byte	.LFE529
 6864 0221 0400     		.2byte	0x4
 6865 0223 F3       		.byte	0xf3
 6866 0224 01       		.uleb128 0x1
 6867 0225 50       		.byte	0x50
 6868 0226 9F       		.byte	0x9f
 6869 0227 00000000 		.4byte	0
 6870 022b 00000000 		.4byte	0
 6871              	.LLST13:
 6872 022f 04000000 		.4byte	.LVL28
 6873 0233 14000000 		.4byte	.LVL29
 6874 0237 0100     		.2byte	0x1
 6875 0239 50       		.byte	0x50
 6876 023a 00000000 		.4byte	0
 6877 023e 00000000 		.4byte	0
 6878              	.LLST8:
 6879 0242 00000000 		.4byte	.LVL17
 6880 0246 2A000000 		.4byte	.LVL19
 6881 024a 0100     		.2byte	0x1
 6882 024c 50       		.byte	0x50
 6883 024d 2A000000 		.4byte	.LVL19
 6884 0251 32000000 		.4byte	.LVL20
 6885 0255 0400     		.2byte	0x4
 6886 0257 F3       		.byte	0xf3
 6887 0258 01       		.uleb128 0x1
 6888 0259 50       		.byte	0x50
 6889 025a 9F       		.byte	0x9f
 6890 025b 32000000 		.4byte	.LVL20
 6891 025f 46000000 		.4byte	.LVL22
 6892 0263 0100     		.2byte	0x1
 6893 0265 50       		.byte	0x50
 6894 0266 46000000 		.4byte	.LVL22
 6895 026a 80000000 		.4byte	.LFE528
 6896 026e 0400     		.2byte	0x4
 6897 0270 F3       		.byte	0xf3
 6898 0271 01       		.uleb128 0x1
 6899 0272 50       		.byte	0x50
 6900 0273 9F       		.byte	0x9f
 6901 0274 00000000 		.4byte	0
 6902 0278 00000000 		.4byte	0
ARM GAS  /tmp/ccqdRJW7.s 			page 139


 6903              	.LLST9:
 6904 027c 00000000 		.4byte	.LVL17
 6905 0280 1A000000 		.4byte	.LVL18
 6906 0284 0100     		.2byte	0x1
 6907 0286 51       		.byte	0x51
 6908 0287 1A000000 		.4byte	.LVL18
 6909 028b 32000000 		.4byte	.LVL20
 6910 028f 0400     		.2byte	0x4
 6911 0291 F3       		.byte	0xf3
 6912 0292 01       		.uleb128 0x1
 6913 0293 51       		.byte	0x51
 6914 0294 9F       		.byte	0x9f
 6915 0295 32000000 		.4byte	.LVL20
 6916 0299 40000000 		.4byte	.LVL21
 6917 029d 0100     		.2byte	0x1
 6918 029f 51       		.byte	0x51
 6919 02a0 40000000 		.4byte	.LVL21
 6920 02a4 80000000 		.4byte	.LFE528
 6921 02a8 0400     		.2byte	0x4
 6922 02aa F3       		.byte	0xf3
 6923 02ab 01       		.uleb128 0x1
 6924 02ac 51       		.byte	0x51
 6925 02ad 9F       		.byte	0x9f
 6926 02ae 00000000 		.4byte	0
 6927 02b2 00000000 		.4byte	0
 6928              	.LLST10:
 6929 02b6 50000000 		.4byte	.LVL23
 6930 02ba 60000000 		.4byte	.LVL24
 6931 02be 0100     		.2byte	0x1
 6932 02c0 54       		.byte	0x54
 6933 02c1 00000000 		.4byte	0
 6934 02c5 00000000 		.4byte	0
 6935              	.LLST11:
 6936 02c9 66000000 		.4byte	.LVL25
 6937 02cd 6E000000 		.4byte	.LVL26
 6938 02d1 0400     		.2byte	0x4
 6939 02d3 0A       		.byte	0xa
 6940 02d4 0008     		.2byte	0x800
 6941 02d6 9F       		.byte	0x9f
 6942 02d7 00000000 		.4byte	0
 6943 02db 00000000 		.4byte	0
 6944              	.LLST0:
 6945 02df 1A000000 		.4byte	.LVL3
 6946 02e3 1C000000 		.4byte	.LVL4
 6947 02e7 0600     		.2byte	0x6
 6948 02e9 0C       		.byte	0xc
 6949 02ea 00C00340 		.4byte	0x4003c000
 6950 02ee 9F       		.byte	0x9f
 6951 02ef 24000000 		.4byte	.LVL5
 6952 02f3 6C000000 		.4byte	.LFE527
 6953 02f7 0600     		.2byte	0x6
 6954 02f9 0C       		.byte	0xc
 6955 02fa 00C00340 		.4byte	0x4003c000
 6956 02fe 9F       		.byte	0x9f
 6957 02ff 00000000 		.4byte	0
 6958 0303 00000000 		.4byte	0
 6959              	.LLST1:
ARM GAS  /tmp/ccqdRJW7.s 			page 140


 6960 0307 2C000000 		.4byte	.LVL6
 6961 030b 2E000000 		.4byte	.LVL7
 6962 030f 0600     		.2byte	0x6
 6963 0311 0C       		.byte	0xc
 6964 0312 00400640 		.4byte	0x40064000
 6965 0316 9F       		.byte	0x9f
 6966 0317 36000000 		.4byte	.LVL8
 6967 031b 6C000000 		.4byte	.LFE527
 6968 031f 0600     		.2byte	0x6
 6969 0321 0C       		.byte	0xc
 6970 0322 00400640 		.4byte	0x40064000
 6971 0326 9F       		.byte	0x9f
 6972 0327 00000000 		.4byte	0
 6973 032b 00000000 		.4byte	0
 6974              	.LLST2:
 6975 032f 4C000000 		.4byte	.LVL10
 6976 0333 54000000 		.4byte	.LVL13
 6977 0337 0200     		.2byte	0x2
 6978 0339 30       		.byte	0x30
 6979 033a 9F       		.byte	0x9f
 6980 033b 00000000 		.4byte	0
 6981 033f 00000000 		.4byte	0
 6982              	.LLST3:
 6983 0343 4C000000 		.4byte	.LVL10
 6984 0347 54000000 		.4byte	.LVL13
 6985 034b 0600     		.2byte	0x6
 6986 034d 0C       		.byte	0xc
 6987 034e 00C00340 		.4byte	0x4003c000
 6988 0352 9F       		.byte	0x9f
 6989 0353 00000000 		.4byte	0
 6990 0357 00000000 		.4byte	0
 6991              	.LLST4:
 6992 035b 4E000000 		.4byte	.LVL11
 6993 035f 54000000 		.4byte	.LVL13
 6994 0363 0100     		.2byte	0x1
 6995 0365 53       		.byte	0x53
 6996 0366 00000000 		.4byte	0
 6997 036a 00000000 		.4byte	0
 6998              	.LLST5:
 6999 036e 54000000 		.4byte	.LVL13
 7000 0372 5C000000 		.4byte	.LVL16
 7001 0376 0200     		.2byte	0x2
 7002 0378 30       		.byte	0x30
 7003 0379 9F       		.byte	0x9f
 7004 037a 00000000 		.4byte	0
 7005 037e 00000000 		.4byte	0
 7006              	.LLST6:
 7007 0382 54000000 		.4byte	.LVL13
 7008 0386 5C000000 		.4byte	.LVL16
 7009 038a 0600     		.2byte	0x6
 7010 038c 0C       		.byte	0xc
 7011 038d 00400640 		.4byte	0x40064000
 7012 0391 9F       		.byte	0x9f
 7013 0392 00000000 		.4byte	0
 7014 0396 00000000 		.4byte	0
 7015              	.LLST7:
 7016 039a 56000000 		.4byte	.LVL14
ARM GAS  /tmp/ccqdRJW7.s 			page 141


 7017 039e 5C000000 		.4byte	.LVL16
 7018 03a2 0100     		.2byte	0x1
 7019 03a4 53       		.byte	0x53
 7020 03a5 00000000 		.4byte	0
 7021 03a9 00000000 		.4byte	0
 7022              		.section	.debug_aranges,"",%progbits
 7023 0000 4C000000 		.4byte	0x4c
 7024 0004 0200     		.2byte	0x2
 7025 0006 00000000 		.4byte	.Ldebug_info0
 7026 000a 04       		.byte	0x4
 7027 000b 00       		.byte	0
 7028 000c 0000     		.2byte	0
 7029 000e 0000     		.2byte	0
 7030 0010 00000000 		.4byte	.LFB527
 7031 0014 6C000000 		.4byte	.LFE527-.LFB527
 7032 0018 00000000 		.4byte	.LFB528
 7033 001c 80000000 		.4byte	.LFE528-.LFB528
 7034 0020 00000000 		.4byte	.LFB529
 7035 0024 28000000 		.4byte	.LFE529-.LFB529
 7036 0028 00000000 		.4byte	.LFB531
 7037 002c 48000000 		.4byte	.LFE531-.LFB531
 7038 0030 00000000 		.4byte	.LFB532
 7039 0034 38000000 		.4byte	.LFE532-.LFB532
 7040 0038 00000000 		.4byte	.LFB533
 7041 003c 14000000 		.4byte	.LFE533-.LFB533
 7042 0040 00000000 		.4byte	.LFB534
 7043 0044 04000000 		.4byte	.LFE534-.LFB534
 7044 0048 00000000 		.4byte	0
 7045 004c 00000000 		.4byte	0
 7046              		.section	.debug_ranges,"",%progbits
 7047              	.Ldebug_ranges0:
 7048 0000 0E000000 		.4byte	.LBB74
 7049 0004 12000000 		.4byte	.LBE74
 7050 0008 1C000000 		.4byte	.LBB83
 7051 000c 1E000000 		.4byte	.LBE83
 7052 0010 2C000000 		.4byte	.LBB85
 7053 0014 2E000000 		.4byte	.LBE85
 7054 0018 00000000 		.4byte	0
 7055 001c 00000000 		.4byte	0
 7056 0020 12000000 		.4byte	.LBB78
 7057 0024 14000000 		.4byte	.LBE78
 7058 0028 1A000000 		.4byte	.LBB82
 7059 002c 1C000000 		.4byte	.LBE82
 7060 0030 22000000 		.4byte	.LBB84
 7061 0034 2A000000 		.4byte	.LBE84
 7062 0038 00000000 		.4byte	0
 7063 003c 00000000 		.4byte	0
 7064 0040 46000000 		.4byte	.LBB87
 7065 0044 48000000 		.4byte	.LBE87
 7066 0048 6E000000 		.4byte	.LBB98
 7067 004c 70000000 		.4byte	.LBE98
 7068 0050 00000000 		.4byte	0
 7069 0054 00000000 		.4byte	0
 7070 0058 50000000 		.4byte	.LBB90
 7071 005c 52000000 		.4byte	.LBE90
 7072 0060 54000000 		.4byte	.LBB94
 7073 0064 56000000 		.4byte	.LBE94
ARM GAS  /tmp/ccqdRJW7.s 			page 142


 7074 0068 58000000 		.4byte	.LBB95
 7075 006c 60000000 		.4byte	.LBE95
 7076 0070 00000000 		.4byte	0
 7077 0074 00000000 		.4byte	0
 7078 0078 04000000 		.4byte	.LBB104
 7079 007c 06000000 		.4byte	.LBE104
 7080 0080 0A000000 		.4byte	.LBB107
 7081 0084 14000000 		.4byte	.LBE107
 7082 0088 00000000 		.4byte	0
 7083 008c 00000000 		.4byte	0
 7084 0090 02000000 		.4byte	.LBB116
 7085 0094 04000000 		.4byte	.LBE116
 7086 0098 06000000 		.4byte	.LBB119
 7087 009c 08000000 		.4byte	.LBE119
 7088 00a0 00000000 		.4byte	0
 7089 00a4 00000000 		.4byte	0
 7090 00a8 16000000 		.4byte	.LBB120
 7091 00ac 18000000 		.4byte	.LBE120
 7092 00b0 1C000000 		.4byte	.LBB123
 7093 00b4 1E000000 		.4byte	.LBE123
 7094 00b8 00000000 		.4byte	0
 7095 00bc 00000000 		.4byte	0
 7096 00c0 00000000 		.4byte	.LFB527
 7097 00c4 6C000000 		.4byte	.LFE527
 7098 00c8 00000000 		.4byte	.LFB528
 7099 00cc 80000000 		.4byte	.LFE528
 7100 00d0 00000000 		.4byte	.LFB529
 7101 00d4 28000000 		.4byte	.LFE529
 7102 00d8 00000000 		.4byte	.LFB531
 7103 00dc 48000000 		.4byte	.LFE531
 7104 00e0 00000000 		.4byte	.LFB532
 7105 00e4 38000000 		.4byte	.LFE532
 7106 00e8 00000000 		.4byte	.LFB533
 7107 00ec 14000000 		.4byte	.LFE533
 7108 00f0 00000000 		.4byte	.LFB534
 7109 00f4 04000000 		.4byte	.LFE534
 7110 00f8 00000000 		.4byte	0
 7111 00fc 00000000 		.4byte	0
 7112              		.section	.debug_line,"",%progbits
 7113              	.Ldebug_line0:
 7114 0000 5B060000 		.section	.debug_str,"MS",%progbits,1
 7114      0200BC04 
 7114      00000201 
 7114      FB0E0D00 
 7114      01010101 
 7115              	.LASF391:
 7116 0000 41464543 		.ascii	"AFEC_STARTUP_TIME_11\000"
 7116      5F535441 
 7116      52545550 
 7116      5F54494D 
 7116      455F3131 
 7117              	.LASF29:
 7118 0015 5F5F7569 		.ascii	"__uint_least64_t\000"
 7118      6E745F6C 
 7118      65617374 
 7118      36345F74 
 7118      00
ARM GAS  /tmp/ccqdRJW7.s 			page 143


 7119              	.LASF436:
 7120 0026 70696F5F 		.ascii	"pio_type_t\000"
 7120      74797065 
 7120      5F7400
 7121              	.LASF28:
 7122 0031 5F5F696E 		.ascii	"__int_least64_t\000"
 7122      745F6C65 
 7122      61737436 
 7122      345F7400 
 7123              	.LASF425:
 7124 0041 5F414645 		.ascii	"_AFEC_NUM_OF_INTERRUPT_SOURCE\000"
 7124      435F4E55 
 7124      4D5F4F46 
 7124      5F494E54 
 7124      45525255 
 7125              	.LASF564:
 7126 005f 47657441 		.ascii	"GetAfec\000"
 7126      66656300 
 7127              	.LASF348:
 7128 0067 41464543 		.ascii	"AFEC_15_BITS\000"
 7128      5F31355F 
 7128      42495453 
 7128      00
 7129              	.LASF128:
 7130 0074 50494F5F 		.ascii	"PIO_PPDER\000"
 7130      50504445 
 7130      5200
 7131              	.LASF242:
 7132 007e 5F737464 		.ascii	"_stdout\000"
 7132      6F757400 
 7133              	.LASF524:
 7134 0086 4150494E 		.ascii	"APIN_UART0_RXD\000"
 7134      5F554152 
 7134      54305F52 
 7134      584400
 7135              	.LASF319:
 7136 0095 5F5F6664 		.ascii	"__fdlibm_xopen\000"
 7136      6C69626D 
 7136      5F786F70 
 7136      656E00
 7137              	.LASF9:
 7138 00a4 5F5F7569 		.ascii	"__uint8_t\000"
 7138      6E74385F 
 7138      7400
 7139              	.LASF529:
 7140 00ae 4150494E 		.ascii	"APIN_HSMCI_CLOCK\000"
 7140      5F48534D 
 7140      43495F43 
 7140      4C4F434B 
 7140      00
 7141              	.LASF542:
 7142 00bf 41666563 		.ascii	"AfecHighChannelMask\000"
 7142      48696768 
 7142      4368616E 
 7142      6E656C4D 
 7142      61736B00 
 7143              	.LASF280:
ARM GAS  /tmp/ccqdRJW7.s 			page 144


 7144 00d3 376C6C64 		.ascii	"7lldiv_t\000"
 7144      69765F74 
 7144      00
 7145              	.LASF215:
 7146 00dc 5F6D6273 		.ascii	"_mbstate\000"
 7146      74617465 
 7146      00
 7147              	.LASF194:
 7148 00e5 5F617465 		.ascii	"_atexit\000"
 7148      78697400 
 7149              	.LASF581:
 7150 00ed 61666563 		.ascii	"afec_init\000"
 7150      5F696E69 
 7150      7400
 7151              	.LASF374:
 7152 00f7 61666563 		.ascii	"afec_gainvalue\000"
 7152      5F676169 
 7152      6E76616C 
 7152      756500
 7153              	.LASF165:
 7154 0106 34416665 		.ascii	"4Afec\000"
 7154      6300
 7155              	.LASF507:
 7156 010c 756C5065 		.ascii	"ulPeripheralId\000"
 7156      72697068 
 7156      6572616C 
 7156      496400
 7157              	.LASF113:
 7158 011b 50494F5F 		.ascii	"PIO_IDR\000"
 7158      49445200 
 7159              	.LASF125:
 7160 0123 50494F5F 		.ascii	"PIO_IFSCSR\000"
 7160      49465343 
 7160      535200
 7161              	.LASF184:
 7162 012e 5F5F746D 		.ascii	"__tm_mon\000"
 7162      5F6D6F6E 
 7162      00
 7163              	.LASF192:
 7164 0137 5F666E74 		.ascii	"_fntypes\000"
 7164      79706573 
 7164      00
 7165              	.LASF244:
 7166 0140 5F696E63 		.ascii	"_inc\000"
 7166      00
 7167              	.LASF195:
 7168 0145 5F696E64 		.ascii	"_ind\000"
 7168      00
 7169              	.LASF549:
 7170 014a 61666563 		.ascii	"afec0Mask\000"
 7170      304D6173 
 7170      6B00
 7171              	.LASF83:
 7172 0154 41464543 		.ascii	"AFEC_CDR\000"
 7172      5F434452 
 7172      00
 7173              	.LASF126:
ARM GAS  /tmp/ccqdRJW7.s 			page 145


 7174 015d 50494F5F 		.ascii	"PIO_SCDR\000"
 7174      53434452 
 7174      00
 7175              	.LASF54:
 7176 0166 696E745F 		.ascii	"int_fast32_t\000"
 7176      66617374 
 7176      33325F74 
 7176      00
 7177              	.LASF407:
 7178 0173 6761696E 		.ascii	"gain\000"
 7178      00
 7179              	.LASF112:
 7180 0178 50494F5F 		.ascii	"PIO_IER\000"
 7180      49455200 
 7181              	.LASF35:
 7182 0180 75696E74 		.ascii	"uint16_t\000"
 7182      31365F74 
 7182      00
 7183              	.LASF132:
 7184 0189 50494F5F 		.ascii	"PIO_OWDR\000"
 7184      4F574452 
 7184      00
 7185              	.LASF463:
 7186 0192 5443325F 		.ascii	"TC2_CHA6\000"
 7186      43484136 
 7186      00
 7187              	.LASF465:
 7188 019b 5443325F 		.ascii	"TC2_CHA7\000"
 7188      43484137 
 7188      00
 7189              	.LASF467:
 7190 01a4 5443325F 		.ascii	"TC2_CHA8\000"
 7190      43484138 
 7190      00
 7191              	.LASF201:
 7192 01ad 5F666C61 		.ascii	"_flags\000"
 7192      677300
 7193              	.LASF360:
 7194 01b4 61666563 		.ascii	"afec_channel_num\000"
 7194      5F636861 
 7194      6E6E656C 
 7194      5F6E756D 
 7194      00
 7195              	.LASF315:
 7196 01c5 666C6F61 		.ascii	"float_t\000"
 7196      745F7400 
 7197              	.LASF151:
 7198 01cd 50494F5F 		.ascii	"PIO_SCHMITT\000"
 7198      5343484D 
 7198      49545400 
 7199              	.LASF254:
 7200 01d9 5F637674 		.ascii	"_cvtlen\000"
 7200      6C656E00 
 7201              	.LASF457:
 7202 01e1 5443315F 		.ascii	"TC1_CHA3\000"
 7202      43484133 
 7202      00
ARM GAS  /tmp/ccqdRJW7.s 			page 146


 7203              	.LASF308:
 7204 01ea 73747274 		.ascii	"strtof\000"
 7204      6F6600
 7205              	.LASF318:
 7206 01f1 5F5F6664 		.ascii	"__fdlibm_svid\000"
 7206      6C69626D 
 7206      5F737669 
 7206      6400
 7207              	.LASF258:
 7208 01ff 5F736967 		.ascii	"_sig_func\000"
 7208      5F66756E 
 7208      6300
 7209              	.LASF131:
 7210 0209 50494F5F 		.ascii	"PIO_OWER\000"
 7210      4F574552 
 7210      00
 7211              	.LASF569:
 7212 0212 61666563 		.ascii	"afec_ch\000"
 7212      5F636800 
 7213              	.LASF464:
 7214 021a 5443325F 		.ascii	"TC2_CHB6\000"
 7214      43484236 
 7214      00
 7215              	.LASF466:
 7216 0223 5443325F 		.ascii	"TC2_CHB7\000"
 7216      43484237 
 7216      00
 7217              	.LASF468:
 7218 022c 5443325F 		.ascii	"TC2_CHB8\000"
 7218      43484238 
 7218      00
 7219              	.LASF81:
 7220 0235 41464543 		.ascii	"AFEC_DIFFR\000"
 7220      5F444946 
 7220      465200
 7221              	.LASF55:
 7222 0240 75696E74 		.ascii	"uint_fast32_t\000"
 7222      5F666173 
 7222      7433325F 
 7222      7400
 7223              	.LASF531:
 7224 024e 4150494E 		.ascii	"APIN_GMAC_PHY_INTERRUPT\000"
 7224      5F474D41 
 7224      435F5048 
 7224      595F494E 
 7224      54455252 
 7225              	.LASF535:
 7226 0266 50776D46 		.ascii	"PwmFastClock\000"
 7226      61737443 
 7226      6C6F636B 
 7226      00
 7227              	.LASF470:
 7228 0273 416E616C 		.ascii	"AnalogChannelNumber\000"
 7228      6F674368 
 7228      616E6E65 
 7228      6C4E756D 
 7228      62657200 
ARM GAS  /tmp/ccqdRJW7.s 			page 147


 7229              	.LASF214:
 7230 0287 5F6C6F63 		.ascii	"_lock\000"
 7230      6B00
 7231              	.LASF210:
 7232 028d 5F6E6275 		.ascii	"_nbuf\000"
 7232      6600
 7233              	.LASF401:
 7234 0293 7472616E 		.ascii	"transfer\000"
 7234      73666572 
 7234      00
 7235              	.LASF239:
 7236 029c 5F756E75 		.ascii	"_unused\000"
 7236      73656400 
 7237              	.LASF451:
 7238 02a4 5443305F 		.ascii	"TC0_CHA0\000"
 7238      43484130 
 7238      00
 7239              	.LASF453:
 7240 02ad 5443305F 		.ascii	"TC0_CHA1\000"
 7240      43484131 
 7240      00
 7241              	.LASF455:
 7242 02b6 5443305F 		.ascii	"TC0_CHA2\000"
 7242      43484132 
 7242      00
 7243              	.LASF326:
 7244 02bf 53544154 		.ascii	"STATUS_ERR_DENIED\000"
 7244      55535F45 
 7244      52525F44 
 7244      454E4945 
 7244      4400
 7245              	.LASF458:
 7246 02d1 5443315F 		.ascii	"TC1_CHB3\000"
 7246      43484233 
 7246      00
 7247              	.LASF460:
 7248 02da 5443315F 		.ascii	"TC1_CHB4\000"
 7248      43484234 
 7248      00
 7249              	.LASF462:
 7250 02e3 5443315F 		.ascii	"TC1_CHB5\000"
 7250      43484235 
 7250      00
 7251              	.LASF2:
 7252 02ec 5F5F6D61 		.ascii	"__max_align_ld\000"
 7252      785F616C 
 7252      69676E5F 
 7252      6C6400
 7253              	.LASF285:
 7254 02fb 61746F66 		.ascii	"atof\000"
 7254      00
 7255              	.LASF287:
 7256 0300 61746F69 		.ascii	"atoi\000"
 7256      00
 7257              	.LASF1:
 7258 0305 5F5F6D61 		.ascii	"__max_align_ll\000"
 7258      785F616C 
ARM GAS  /tmp/ccqdRJW7.s 			page 148


 7258      69676E5F 
 7258      6C6C00
 7259              	.LASF288:
 7260 0314 61746F6C 		.ascii	"atol\000"
 7260      00
 7261              	.LASF79:
 7262 0319 41464543 		.ascii	"AFEC_CGR\000"
 7262      5F434752 
 7262      00
 7263              	.LASF247:
 7264 0322 5F637572 		.ascii	"_current_locale\000"
 7264      72656E74 
 7264      5F6C6F63 
 7264      616C6500 
 7265              	.LASF452:
 7266 0332 5443305F 		.ascii	"TC0_CHB0\000"
 7266      43484230 
 7266      00
 7267              	.LASF454:
 7268 033b 5443305F 		.ascii	"TC0_CHB1\000"
 7268      43484231 
 7268      00
 7269              	.LASF456:
 7270 0344 5443305F 		.ascii	"TC0_CHB2\000"
 7270      43484232 
 7270      00
 7271              	.LASF36:
 7272 034d 696E7433 		.ascii	"int32_t\000"
 7272      325F7400 
 7273              	.LASF58:
 7274 0355 696E746D 		.ascii	"intmax_t\000"
 7274      61785F74 
 7274      00
 7275              	.LASF269:
 7276 035e 5F616464 		.ascii	"_add\000"
 7276      00
 7277              	.LASF59:
 7278 0363 75696E74 		.ascii	"uintmax_t\000"
 7278      6D61785F 
 7278      7400
 7279              	.LASF575:
 7280 036d 74726967 		.ascii	"trigger\000"
 7280      67657200 
 7281              	.LASF586:
 7282 0375 31316D61 		.ascii	"11max_align_t\000"
 7282      785F616C 
 7282      69676E5F 
 7282      7400
 7283              	.LASF582:
 7284 0383 61666563 		.ascii	"afec_disable_interrupt\000"
 7284      5F646973 
 7284      61626C65 
 7284      5F696E74 
 7284      65727275 
 7285              	.LASF27:
 7286 039a 5F5F7569 		.ascii	"__uint_least32_t\000"
 7286      6E745F6C 
ARM GAS  /tmp/ccqdRJW7.s 			page 149


 7286      65617374 
 7286      33325F74 
 7286      00
 7287              	.LASF203:
 7288 03ab 5F6C6266 		.ascii	"_lbfsize\000"
 7288      73697A65 
 7288      00
 7289              	.LASF278:
 7290 03b4 366C6469 		.ascii	"6ldiv_t\000"
 7290      765F7400 
 7291              	.LASF160:
 7292 03bc 50494F5F 		.ascii	"PIO_PCRHR\000"
 7292      50435248 
 7292      5200
 7293              	.LASF48:
 7294 03c6 696E745F 		.ascii	"int_least64_t\000"
 7294      6C656173 
 7294      7436345F 
 7294      7400
 7295              	.LASF98:
 7296 03d4 41666563 		.ascii	"Afec\000"
 7296      00
 7297              	.LASF303:
 7298 03d9 7763746F 		.ascii	"wctomb\000"
 7298      6D6200
 7299              	.LASF213:
 7300 03e0 5F646174 		.ascii	"_data\000"
 7300      6100
 7301              	.LASF344:
 7302 03e6 61666563 		.ascii	"afec_resolution\000"
 7302      5F726573 
 7302      6F6C7574 
 7302      696F6E00 
 7303              	.LASF313:
 7304 03f6 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 7304      6972715F 
 7304      63726974 
 7304      6963616C 
 7304      5F736563 
 7305              	.LASF505:
 7306 0417 70506F72 		.ascii	"pPort\000"
 7306      7400
 7307              	.LASF521:
 7308 041d 5F646179 		.ascii	"_daylight\000"
 7308      6C696768 
 7308      7400
 7309              	.LASF217:
 7310 0427 5F726565 		.ascii	"_reent\000"
 7310      6E7400
 7311              	.LASF504:
 7312 042e 50696E44 		.ascii	"PinDescription\000"
 7312      65736372 
 7312      69707469 
 7312      6F6E00
 7313              	.LASF530:
 7314 043d 4150494E 		.ascii	"APIN_HSMCI_DATA\000"
 7314      5F48534D 
ARM GAS  /tmp/ccqdRJW7.s 			page 150


 7314      43495F44 
 7314      41544100 
 7315              	.LASF260:
 7316 044d 5F5F7366 		.ascii	"__sf\000"
 7316      00
 7317              	.LASF42:
 7318 0452 696E745F 		.ascii	"int_least8_t\000"
 7318      6C656173 
 7318      74385F74 
 7318      00
 7319              	.LASF96:
 7320 045f 41464543 		.ascii	"AFEC_WPMR\000"
 7320      5F57504D 
 7320      5200
 7321              	.LASF226:
 7322 0469 5F6D6274 		.ascii	"_mbtowc_state\000"
 7322      6F77635F 
 7322      73746174 
 7322      6500
 7323              	.LASF273:
 7324 0477 5F5F676E 		.ascii	"__gnu_cxx\000"
 7324      755F6378 
 7324      7800
 7325              	.LASF556:
 7326 0481 416E616C 		.ascii	"AnalogInStartConversion\000"
 7326      6F67496E 
 7326      53746172 
 7326      74436F6E 
 7326      76657273 
 7327              	.LASF585:
 7328 0499 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70_RTOS"
 7328      652F746F 
 7328      72626A6F 
 7328      726E2F65 
 7328      636C6970 
 7329 04cc 00       		.ascii	"\000"
 7330              	.LASF179:
 7331 04cd 5F5F746D 		.ascii	"__tm\000"
 7331      00
 7332              	.LASF508:
 7333 04d2 756C5069 		.ascii	"ulPinType\000"
 7333      6E547970 
 7333      6500
 7334              	.LASF142:
 7335 04dc 52657365 		.ascii	"Reserved10\000"
 7335      72766564 
 7335      313000
 7336              	.LASF146:
 7337 04e7 52657365 		.ascii	"Reserved11\000"
 7337      72766564 
 7337      313100
 7338              	.LASF150:
 7339 04f2 52657365 		.ascii	"Reserved12\000"
 7339      72766564 
 7339      313200
 7340              	.LASF152:
 7341 04fd 52657365 		.ascii	"Reserved13\000"
ARM GAS  /tmp/ccqdRJW7.s 			page 151


 7341      72766564 
 7341      313300
 7342              	.LASF114:
 7343 0508 50494F5F 		.ascii	"PIO_IMR\000"
 7343      494D5200 
 7344              	.LASF304:
 7345 0510 6C6C6469 		.ascii	"lldiv\000"
 7345      7600
 7346              	.LASF187:
 7347 0516 5F5F746D 		.ascii	"__tm_yday\000"
 7347      5F796461 
 7347      7900
 7348              	.LASF405:
 7349 0520 61666563 		.ascii	"afec_ch_config\000"
 7349      5F63685F 
 7349      636F6E66 
 7349      696700
 7350              	.LASF400:
 7351 052f 74726163 		.ascii	"tracktim\000"
 7351      6B74696D 
 7351      00
 7352              	.LASF11:
 7353 0538 5F5F696E 		.ascii	"__int16_t\000"
 7353      7431365F 
 7353      7400
 7354              	.LASF13:
 7355 0542 5F5F7569 		.ascii	"__uint16_t\000"
 7355      6E743136 
 7355      5F7400
 7356              	.LASF218:
 7357 054d 5F756E75 		.ascii	"_unused_rand\000"
 7357      7365645F 
 7357      72616E64 
 7357      00
 7358              	.LASF558:
 7359 055a 5F5A3233 		.ascii	"_Z23AnalogInStartConversionm\000"
 7359      416E616C 
 7359      6F67496E 
 7359      53746172 
 7359      74436F6E 
 7360              	.LASF525:
 7361 0577 4150494E 		.ascii	"APIN_UART0_TXD\000"
 7361      5F554152 
 7361      54305F54 
 7361      584400
 7362              	.LASF108:
 7363 0586 50494F5F 		.ascii	"PIO_SODR\000"
 7363      534F4452 
 7363      00
 7364              	.LASF30:
 7365 058f 5F5F696E 		.ascii	"__intptr_t\000"
 7365      74707472 
 7365      5F7400
 7366              	.LASF316:
 7367 059a 646F7562 		.ascii	"double_t\000"
 7367      6C655F74 
 7367      00
ARM GAS  /tmp/ccqdRJW7.s 			page 152


 7368              	.LASF568:
 7369 05a3 61666563 		.ascii	"afec_channel_set_analog_offset\000"
 7369      5F636861 
 7369      6E6E656C 
 7369      5F736574 
 7369      5F616E61 
 7370              	.LASF511:
 7371 05c2 756C4144 		.ascii	"ulADCChannelNumber\000"
 7371      43436861 
 7371      6E6E656C 
 7371      4E756D62 
 7371      657200
 7372              	.LASF251:
 7373 05d5 5F726573 		.ascii	"_result_k\000"
 7373      756C745F 
 7373      6B00
 7374              	.LASF243:
 7375 05df 5F737464 		.ascii	"_stderr\000"
 7375      65727200 
 7376              	.LASF250:
 7377 05e7 5F726573 		.ascii	"_result\000"
 7377      756C7400 
 7378              	.LASF156:
 7379 05ef 50494F5F 		.ascii	"PIO_PCIER\000"
 7379      50434945 
 7379      5200
 7380              	.LASF153:
 7381 05f9 50494F5F 		.ascii	"PIO_DRIVER\000"
 7381      44524956 
 7381      455200
 7382              	.LASF191:
 7383 0604 5F64736F 		.ascii	"_dso_handle\000"
 7383      5F68616E 
 7383      646C6500 
 7384              	.LASF560:
 7385 0610 656E6162 		.ascii	"enable\000"
 7385      6C6500
 7386              	.LASF186:
 7387 0617 5F5F746D 		.ascii	"__tm_wday\000"
 7387      5F776461 
 7387      7900
 7388              	.LASF543:
 7389 0621 61637469 		.ascii	"activeChannels\000"
 7389      76654368 
 7389      616E6E65 
 7389      6C7300
 7390              	.LASF188:
 7391 0630 5F5F746D 		.ascii	"__tm_isdst\000"
 7391      5F697364 
 7391      737400
 7392              	.LASF589:
 7393 063b 5F5A5374 		.ascii	"_ZSt3absx\000"
 7393      33616273 
 7393      7800
 7394              	.LASF321:
 7395 0645 5F5F6664 		.ascii	"__fdlib_version\000"
 7395      6C69625F 
ARM GAS  /tmp/ccqdRJW7.s 			page 153


 7395      76657273 
 7395      696F6E00 
 7396              	.LASF10:
 7397 0655 756E7369 		.ascii	"unsigned char\000"
 7397      676E6564 
 7397      20636861 
 7397      7200
 7398              	.LASF129:
 7399 0663 50494F5F 		.ascii	"PIO_PPDSR\000"
 7399      50504453 
 7399      5200
 7400              	.LASF516:
 7401 066d 5F637479 		.ascii	"_ctype_\000"
 7401      70655F00 
 7402              	.LASF233:
 7403 0675 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 7403      72746F77 
 7403      63735F73 
 7403      74617465 
 7403      00
 7404              	.LASF177:
 7405 0686 5F776473 		.ascii	"_wds\000"
 7405      00
 7406              	.LASF309:
 7407 068b 666C6F61 		.ascii	"float\000"
 7407      7400
 7408              	.LASF199:
 7409 0691 5F73697A 		.ascii	"_size\000"
 7409      6500
 7410              	.LASF117:
 7411 0697 50494F5F 		.ascii	"PIO_MDDR\000"
 7411      4D444452 
 7411      00
 7412              	.LASF47:
 7413 06a0 75696E74 		.ascii	"uint_least32_t\000"
 7413      5F6C6561 
 7413      73743332 
 7413      5F7400
 7414              	.LASF84:
 7415 06af 41464543 		.ascii	"AFEC_COCR\000"
 7415      5F434F43 
 7415      5200
 7416              	.LASF532:
 7417 06b9 4150494E 		.ascii	"APIN_GMAC_PHY_RESET\000"
 7417      5F474D41 
 7417      435F5048 
 7417      595F5245 
 7417      53455400 
 7418              	.LASF206:
 7419 06cd 5F777269 		.ascii	"_write\000"
 7419      746500
 7420              	.LASF97:
 7421 06d4 41464543 		.ascii	"AFEC_WPSR\000"
 7421      5F575053 
 7421      5200
 7422              	.LASF116:
 7423 06de 50494F5F 		.ascii	"PIO_MDER\000"
ARM GAS  /tmp/ccqdRJW7.s 			page 154


 7423      4D444552 
 7423      00
 7424              	.LASF449:
 7425 06e7 5F455443 		.ascii	"_ETCChannel\000"
 7425      4368616E 
 7425      6E656C00 
 7426              	.LASF469:
 7427 06f3 45544343 		.ascii	"ETCChannel\000"
 7427      68616E6E 
 7427      656C00
 7428              	.LASF433:
 7429 06fe 50494F5F 		.ascii	"PIO_INPUT\000"
 7429      494E5055 
 7429      5400
 7430              	.LASF39:
 7431 0708 75696E74 		.ascii	"uint64_t\000"
 7431      36345F74 
 7431      00
 7432              	.LASF115:
 7433 0711 50494F5F 		.ascii	"PIO_ISR\000"
 7433      49535200 
 7434              	.LASF473:
 7435 0719 41444331 		.ascii	"ADC1\000"
 7435      00
 7436              	.LASF474:
 7437 071e 41444332 		.ascii	"ADC2\000"
 7437      00
 7438              	.LASF475:
 7439 0723 41444333 		.ascii	"ADC3\000"
 7439      00
 7440              	.LASF476:
 7441 0728 41444334 		.ascii	"ADC4\000"
 7441      00
 7442              	.LASF477:
 7443 072d 41444335 		.ascii	"ADC5\000"
 7443      00
 7444              	.LASF478:
 7445 0732 41444336 		.ascii	"ADC6\000"
 7445      00
 7446              	.LASF479:
 7447 0737 41444337 		.ascii	"ADC7\000"
 7447      00
 7448              	.LASF480:
 7449 073c 41444338 		.ascii	"ADC8\000"
 7449      00
 7450              	.LASF481:
 7451 0741 41444339 		.ascii	"ADC9\000"
 7451      00
 7452              	.LASF185:
 7453 0746 5F5F746D 		.ascii	"__tm_year\000"
 7453      5F796561 
 7453      7200
 7454              	.LASF331:
 7455 0750 4552525F 		.ascii	"ERR_BAD_DATA\000"
 7455      4241445F 
 7455      44415441 
 7455      00
ARM GAS  /tmp/ccqdRJW7.s 			page 155


 7456              	.LASF94:
 7457 075d 41464543 		.ascii	"AFEC_CECR\000"
 7457      5F434543 
 7457      5200
 7458              	.LASF310:
 7459 0767 73747274 		.ascii	"strtold\000"
 7459      6F6C6400 
 7460              	.LASF268:
 7461 076f 5F6D756C 		.ascii	"_mult\000"
 7461      7400
 7462              	.LASF551:
 7463 0775 416E616C 		.ascii	"AnalogInReadChannel\000"
 7463      6F67496E 
 7463      52656164 
 7463      4368616E 
 7463      6E656C00 
 7464              	.LASF306:
 7465 0789 73747274 		.ascii	"strtoll\000"
 7465      6F6C6C00 
 7466              	.LASF272:
 7467 0791 6D6F6466 		.ascii	"modf\000"
 7467      00
 7468              	.LASF284:
 7469 0796 61746578 		.ascii	"atexit\000"
 7469      697400
 7470              	.LASF133:
 7471 079d 50494F5F 		.ascii	"PIO_OWSR\000"
 7471      4F575352 
 7471      00
 7472              	.LASF437:
 7473 07a6 4E6F5069 		.ascii	"NoPin\000"
 7473      6E00
 7474              	.LASF482:
 7475 07ac 41444331 		.ascii	"ADC10\000"
 7475      3000
 7476              	.LASF483:
 7477 07b2 41444331 		.ascii	"ADC11\000"
 7477      3100
 7478              	.LASF484:
 7479 07b8 41444331 		.ascii	"ADC12\000"
 7479      3200
 7480              	.LASF485:
 7481 07be 41444331 		.ascii	"ADC13\000"
 7481      3300
 7482              	.LASF486:
 7483 07c4 41444331 		.ascii	"ADC14\000"
 7483      3400
 7484              	.LASF487:
 7485 07ca 41444331 		.ascii	"ADC15\000"
 7485      3500
 7486              	.LASF488:
 7487 07d0 41444331 		.ascii	"ADC16\000"
 7487      3600
 7488              	.LASF22:
 7489 07d6 5F5F696E 		.ascii	"__int_least8_t\000"
 7489      745F6C65 
 7489      61737438 
ARM GAS  /tmp/ccqdRJW7.s 			page 156


 7489      5F7400
 7490              	.LASF490:
 7491 07e5 41444331 		.ascii	"ADC18\000"
 7491      3800
 7492              	.LASF491:
 7493 07eb 41444331 		.ascii	"ADC19\000"
 7493      3900
 7494              	.LASF147:
 7495 07f1 50494F5F 		.ascii	"PIO_LOCKSR\000"
 7495      4C4F434B 
 7495      535200
 7496              	.LASF241:
 7497 07fc 5F737464 		.ascii	"_stdin\000"
 7497      696E00
 7498              	.LASF238:
 7499 0803 5F6E6D61 		.ascii	"_nmalloc\000"
 7499      6C6C6F63 
 7499      00
 7500              	.LASF402:
 7501 080c 616E6163 		.ascii	"anach\000"
 7501      6800
 7502              	.LASF311:
 7503 0812 675F696E 		.ascii	"g_interrupt_enabled\000"
 7503      74657272 
 7503      7570745F 
 7503      656E6162 
 7503      6C656400 
 7504              	.LASF492:
 7505 0826 41444332 		.ascii	"ADC20\000"
 7505      3000
 7506              	.LASF493:
 7507 082c 41444332 		.ascii	"ADC21\000"
 7507      3100
 7508              	.LASF494:
 7509 0832 41444332 		.ascii	"ADC22\000"
 7509      3200
 7510              	.LASF495:
 7511 0838 41444332 		.ascii	"ADC23\000"
 7511      3300
 7512              	.LASF496:
 7513 083e 41444332 		.ascii	"ADC24\000"
 7513      3400
 7514              	.LASF497:
 7515 0844 41444332 		.ascii	"ADC25\000"
 7515      3500
 7516              	.LASF498:
 7517 084a 41444332 		.ascii	"ADC26\000"
 7517      3600
 7518              	.LASF499:
 7519 0850 41444332 		.ascii	"ADC27\000"
 7519      3700
 7520              	.LASF500:
 7521 0856 41444332 		.ascii	"ADC28\000"
 7521      3800
 7522              	.LASF501:
 7523 085c 41444332 		.ascii	"ADC29\000"
 7523      3900
ARM GAS  /tmp/ccqdRJW7.s 			page 157


 7524              	.LASF406:
 7525 0862 64696666 		.ascii	"diff\000"
 7525      00
 7526              	.LASF588:
 7527 0867 3350696F 		.ascii	"3Pio\000"
 7527      00
 7528              	.LASF527:
 7529 086c 4150494E 		.ascii	"APIN_UART1_RXD\000"
 7529      5F554152 
 7529      54315F52 
 7529      584400
 7530              	.LASF580:
 7531 087b 61666563 		.ascii	"afec_get_config_defaults\000"
 7531      5F676574 
 7531      5F636F6E 
 7531      6669675F 
 7531      64656661 
 7532              	.LASF562:
 7533 0894 5F5A3132 		.ascii	"_Z12AnalogInInitv\000"
 7533      416E616C 
 7533      6F67496E 
 7533      496E6974 
 7533      7600
 7534              	.LASF552:
 7535 08a6 5F5A3139 		.ascii	"_Z19AnalogInReadChannel19AnalogChannelNumber\000"
 7535      416E616C 
 7535      6F67496E 
 7535      52656164 
 7535      4368616E 
 7536              	.LASF502:
 7537 08d3 41444333 		.ascii	"ADC30\000"
 7537      3000
 7538              	.LASF503:
 7539 08d9 41444333 		.ascii	"ADC31\000"
 7539      3100
 7540              	.LASF162:
 7541 08df 5F6F6666 		.ascii	"_off_t\000"
 7541      5F7400
 7542              	.LASF362:
 7543 08e6 41464543 		.ascii	"AFEC_CHANNEL_1\000"
 7543      5F434841 
 7543      4E4E454C 
 7543      5F3100
 7544              	.LASF536:
 7545 08f5 50776D53 		.ascii	"PwmSlowClock\000"
 7545      6C6F7743 
 7545      6C6F636B 
 7545      00
 7546              	.LASF368:
 7547 0902 41464543 		.ascii	"AFEC_CHANNEL_7\000"
 7547      5F434841 
 7547      4E4E454C 
 7547      5F3700
 7548              	.LASF5:
 7549 0911 73697A65 		.ascii	"size_t\000"
 7549      5F7400
 7550              	.LASF221:
ARM GAS  /tmp/ccqdRJW7.s 			page 158


 7551 0918 5F6C6F63 		.ascii	"_localtime_buf\000"
 7551      616C7469 
 7551      6D655F62 
 7551      756600
 7552              	.LASF93:
 7553 0927 41464543 		.ascii	"AFEC_CVR\000"
 7553      5F435652 
 7553      00
 7554              	.LASF119:
 7555 0930 50494F5F 		.ascii	"PIO_PUDR\000"
 7555      50554452 
 7555      00
 7556              	.LASF169:
 7557 0939 5F5F636F 		.ascii	"__count\000"
 7557      756E7400 
 7558              	.LASF33:
 7559 0941 75696E74 		.ascii	"uint8_t\000"
 7559      385F7400 
 7560              	.LASF276:
 7561 0949 71756F74 		.ascii	"quot\000"
 7561      00
 7562              	.LASF158:
 7563 094e 50494F5F 		.ascii	"PIO_PCIMR\000"
 7563      5043494D 
 7563      5200
 7564              	.LASF438:
 7565 0958 5F455057 		.ascii	"_EPWMChannel\000"
 7565      4D436861 
 7565      6E6E656C 
 7565      00
 7566              	.LASF341:
 7567 0965 4552525F 		.ascii	"ERR_TIMER_NOT_RUNNING\000"
 7567      54494D45 
 7567      525F4E4F 
 7567      545F5255 
 7567      4E4E494E 
 7568              	.LASF222:
 7569 097b 5F67616D 		.ascii	"_gamma_signgam\000"
 7569      6D615F73 
 7569      69676E67 
 7569      616D00
 7570              	.LASF450:
 7571 098a 4E4F545F 		.ascii	"NOT_ON_TIMER\000"
 7571      4F4E5F54 
 7571      494D4552 
 7571      00
 7572              	.LASF26:
 7573 0997 5F5F696E 		.ascii	"__int_least32_t\000"
 7573      745F6C65 
 7573      61737433 
 7573      325F7400 
 7574              	.LASF78:
 7575 09a7 41464543 		.ascii	"AFEC_CWR\000"
 7575      5F435752 
 7575      00
 7576              	.LASF120:
 7577 09b0 50494F5F 		.ascii	"PIO_PUER\000"
ARM GAS  /tmp/ccqdRJW7.s 			page 159


 7577      50554552 
 7577      00
 7578              	.LASF255:
 7579 09b9 5F637674 		.ascii	"_cvtbuf\000"
 7579      62756600 
 7580              	.LASF550:
 7581 09c1 61666563 		.ascii	"afec1Mask\000"
 7581      314D6173 
 7581      6B00
 7582              	.LASF547:
 7583 09cb 5F5A3138 		.ascii	"_Z18AnalogInCheckReadym\000"
 7583      416E616C 
 7583      6F67496E 
 7583      43686563 
 7583      6B526561 
 7584              	.LASF371:
 7585 09e3 41464543 		.ascii	"AFEC_CHANNEL_10\000"
 7585      5F434841 
 7585      4E4E454C 
 7585      5F313000 
 7586              	.LASF518:
 7587 09f3 5072696E 		.ascii	"Print\000"
 7587      7400
 7588              	.LASF168:
 7589 09f9 5F5F7763 		.ascii	"__wchb\000"
 7589      686200
 7590              	.LASF232:
 7591 0a00 5F6D6272 		.ascii	"_mbrtowc_state\000"
 7591      746F7763 
 7591      5F737461 
 7591      746500
 7592              	.LASF182:
 7593 0a0f 5F5F746D 		.ascii	"__tm_hour\000"
 7593      5F686F75 
 7593      7200
 7594              	.LASF148:
 7595 0a19 50494F5F 		.ascii	"PIO_WPMR\000"
 7595      57504D52 
 7595      00
 7596              	.LASF281:
 7597 0a22 6C6C6469 		.ascii	"lldiv_t\000"
 7597      765F7400 
 7598              	.LASF557:
 7599 0a2a 416E616C 		.ascii	"AnalogInEnableChannel\000"
 7599      6F67496E 
 7599      456E6162 
 7599      6C654368 
 7599      616E6E65 
 7600              	.LASF164:
 7601 0a40 77696E74 		.ascii	"wint_t\000"
 7601      5F7400
 7602              	.LASF292:
 7603 0a47 6D626C65 		.ascii	"mblen\000"
 7603      6E00
 7604              	.LASF256:
 7605 0a4d 5F6E6577 		.ascii	"_new\000"
 7605      00
ARM GAS  /tmp/ccqdRJW7.s 			page 160


 7606              	.LASF517:
 7607 0a52 53455249 		.ascii	"SERIAL_BUFFER_SIZE\000"
 7607      414C5F42 
 7607      55464645 
 7607      525F5349 
 7607      5A4500
 7608              	.LASF65:
 7609 0a65 41464543 		.ascii	"AFEC_EMR\000"
 7609      5F454D52 
 7609      00
 7610              	.LASF264:
 7611 0a6e 5F6E696F 		.ascii	"_niobs\000"
 7611      627300
 7612              	.LASF330:
 7613 0a75 4552525F 		.ascii	"ERR_TIMEOUT\000"
 7613      54494D45 
 7613      4F555400 
 7614              	.LASF240:
 7615 0a81 5F657272 		.ascii	"_errno\000"
 7615      6E6F00
 7616              	.LASF183:
 7617 0a88 5F5F746D 		.ascii	"__tm_mday\000"
 7617      5F6D6461 
 7617      7900
 7618              	.LASF571:
 7619 0a92 61666563 		.ascii	"afec_channel_disable\000"
 7619      5F636861 
 7619      6E6E656C 
 7619      5F646973 
 7619      61626C65 
 7620              	.LASF190:
 7621 0aa7 5F666E61 		.ascii	"_fnargs\000"
 7621      72677300 
 7622              	.LASF122:
 7623 0aaf 50494F5F 		.ascii	"PIO_ABCDSR\000"
 7623      41424344 
 7623      535200
 7624              	.LASF166:
 7625 0aba 31305F6D 		.ascii	"10_mbstate_t\000"
 7625      62737461 
 7625      74655F74 
 7625      00
 7626              	.LASF141:
 7627 0ac7 50494F5F 		.ascii	"PIO_ELSR\000"
 7627      454C5352 
 7627      00
 7628              	.LASF339:
 7629 0ad0 4552525F 		.ascii	"ERR_NO_TIMER\000"
 7629      4E4F5F54 
 7629      494D4552 
 7629      00
 7630              	.LASF335:
 7631 0add 4552525F 		.ascii	"ERR_INVALID_ARG\000"
 7631      494E5641 
 7631      4C49445F 
 7631      41524700 
 7632              	.LASF19:
ARM GAS  /tmp/ccqdRJW7.s 			page 161


 7633 0aed 5F5F696E 		.ascii	"__int64_t\000"
 7633      7436345F 
 7633      7400
 7634              	.LASF20:
 7635 0af7 5F5F7569 		.ascii	"__uint64_t\000"
 7635      6E743634 
 7635      5F7400
 7636              	.LASF174:
 7637 0b02 5F6E6578 		.ascii	"_next\000"
 7637      7400
 7638              	.LASF229:
 7639 0b08 5F736967 		.ascii	"_signal_buf\000"
 7639      6E616C5F 
 7639      62756600 
 7640              	.LASF204:
 7641 0b14 5F636F6F 		.ascii	"_cookie\000"
 7641      6B696500 
 7642              	.LASF522:
 7643 0b1c 5F747A6E 		.ascii	"_tzname\000"
 7643      616D6500 
 7644              	.LASF49:
 7645 0b24 75696E74 		.ascii	"uint_least64_t\000"
 7645      5F6C6561 
 7645      73743634 
 7645      5F7400
 7646              	.LASF440:
 7647 0b33 50574D5F 		.ascii	"PWM_CH0\000"
 7647      43483000 
 7648              	.LASF441:
 7649 0b3b 50574D5F 		.ascii	"PWM_CH1\000"
 7649      43483100 
 7650              	.LASF442:
 7651 0b43 50574D5F 		.ascii	"PWM_CH2\000"
 7651      43483200 
 7652              	.LASF443:
 7653 0b4b 50574D5F 		.ascii	"PWM_CH3\000"
 7653      43483300 
 7654              	.LASF444:
 7655 0b53 50574D5F 		.ascii	"PWM_CH4\000"
 7655      43483400 
 7656              	.LASF445:
 7657 0b5b 50574D5F 		.ascii	"PWM_CH5\000"
 7657      43483500 
 7658              	.LASF446:
 7659 0b63 50574D5F 		.ascii	"PWM_CH6\000"
 7659      43483600 
 7660              	.LASF447:
 7661 0b6b 50574D5F 		.ascii	"PWM_CH7\000"
 7661      43483700 
 7662              	.LASF587:
 7663 0b73 6465636C 		.ascii	"decltype(nullptr)\000"
 7663      74797065 
 7663      286E756C 
 7663      6C707472 
 7663      2900
 7664              	.LASF596:
 7665 0b85 47657454 		.ascii	"GetTemperatureAdcChannel\000"
ARM GAS  /tmp/ccqdRJW7.s 			page 162


 7665      656D7065 
 7665      72617475 
 7665      72654164 
 7665      63436861 
 7666              	.LASF300:
 7667 0b9e 73747274 		.ascii	"strtoul\000"
 7667      6F756C00 
 7668              	.LASF553:
 7669 0ba6 6368616E 		.ascii	"channel\000"
 7669      6E656C00 
 7670              	.LASF346:
 7671 0bae 41464543 		.ascii	"AFEC_13_BITS\000"
 7671      5F31335F 
 7671      42495453 
 7671      00
 7672              	.LASF489:
 7673 0bbb 41444331 		.ascii	"ADC17\000"
 7673      3700
 7674              	.LASF396:
 7675 0bc1 61666563 		.ascii	"afec_config\000"
 7675      5F636F6E 
 7675      66696700 
 7676              	.LASF159:
 7677 0bcd 50494F5F 		.ascii	"PIO_PCISR\000"
 7677      50434953 
 7677      5200
 7678              	.LASF279:
 7679 0bd7 6C646976 		.ascii	"ldiv_t\000"
 7679      5F7400
 7680              	.LASF434:
 7681 0bde 50494F5F 		.ascii	"PIO_OUTPUT_0\000"
 7681      4F555450 
 7681      55545F30 
 7681      00
 7682              	.LASF435:
 7683 0beb 50494F5F 		.ascii	"PIO_OUTPUT_1\000"
 7683      4F555450 
 7683      55545F31 
 7683      00
 7684              	.LASF565:
 7685 0bf8 61666563 		.ascii	"afec_get_interrupt_status\000"
 7685      5F676574 
 7685      5F696E74 
 7685      65727275 
 7685      70745F73 
 7686              	.LASF71:
 7687 0c12 41464543 		.ascii	"AFEC_LCDR\000"
 7687      5F4C4344 
 7687      5200
 7688              	.LASF506:
 7689 0c1c 756C5069 		.ascii	"ulPin\000"
 7689      6E00
 7690              	.LASF428:
 7691 0c22 50494F5F 		.ascii	"PIO_NOT_A_PIN\000"
 7691      4E4F545F 
 7691      415F5049 
 7691      4E00
ARM GAS  /tmp/ccqdRJW7.s 			page 163


 7692              	.LASF180:
 7693 0c30 5F5F746D 		.ascii	"__tm_sec\000"
 7693      5F736563 
 7693      00
 7694              	.LASF429:
 7695 0c39 50494F5F 		.ascii	"PIO_PERIPH_A\000"
 7695      50455249 
 7695      50485F41 
 7695      00
 7696              	.LASF430:
 7697 0c46 50494F5F 		.ascii	"PIO_PERIPH_B\000"
 7697      50455249 
 7697      50485F42 
 7697      00
 7698              	.LASF302:
 7699 0c53 77637374 		.ascii	"wcstombs\000"
 7699      6F6D6273 
 7699      00
 7700              	.LASF432:
 7701 0c5c 50494F5F 		.ascii	"PIO_PERIPH_D\000"
 7701      50455249 
 7701      50485F44 
 7701      00
 7702              	.LASF189:
 7703 0c69 5F6F6E5F 		.ascii	"_on_exit_args\000"
 7703      65786974 
 7703      5F617267 
 7703      7300
 7704              	.LASF90:
 7705 0c77 41464543 		.ascii	"AFEC_SHMR\000"
 7705      5F53484D 
 7705      5200
 7706              	.LASF110:
 7707 0c81 50494F5F 		.ascii	"PIO_ODSR\000"
 7707      4F445352 
 7707      00
 7708              	.LASF198:
 7709 0c8a 5F626173 		.ascii	"_base\000"
 7709      6500
 7710              	.LASF52:
 7711 0c90 696E745F 		.ascii	"int_fast16_t\000"
 7711      66617374 
 7711      31365F74 
 7711      00
 7712              	.LASF336:
 7713 0c9d 4552525F 		.ascii	"ERR_BAD_ADDRESS\000"
 7713      4241445F 
 7713      41444452 
 7713      45535300 
 7714              	.LASF144:
 7715 0cad 50494F5F 		.ascii	"PIO_REHLSR\000"
 7715      5245484C 
 7715      535200
 7716              	.LASF149:
 7717 0cb8 50494F5F 		.ascii	"PIO_WPSR\000"
 7717      57505352 
 7717      00
ARM GAS  /tmp/ccqdRJW7.s 			page 164


 7718              	.LASF351:
 7719 0cc1 41464543 		.ascii	"AFEC_TRIG_SW\000"
 7719      5F545249 
 7719      475F5357 
 7719      00
 7720              	.LASF63:
 7721 0cce 41464543 		.ascii	"AFEC_CR\000"
 7721      5F435200 
 7722              	.LASF109:
 7723 0cd6 50494F5F 		.ascii	"PIO_CODR\000"
 7723      434F4452 
 7723      00
 7724              	.LASF32:
 7725 0cdf 696E7438 		.ascii	"int8_t\000"
 7725      5F7400
 7726              	.LASF173:
 7727 0ce6 5F5F554C 		.ascii	"__ULong\000"
 7727      6F6E6700 
 7728              	.LASF118:
 7729 0cee 50494F5F 		.ascii	"PIO_MDSR\000"
 7729      4D445352 
 7729      00
 7730              	.LASF53:
 7731 0cf7 75696E74 		.ascii	"uint_fast16_t\000"
 7731      5F666173 
 7731      7431365F 
 7731      7400
 7732              	.LASF46:
 7733 0d05 696E745F 		.ascii	"int_least32_t\000"
 7733      6C656173 
 7733      7433325F 
 7733      7400
 7734              	.LASF297:
 7735 0d13 7372616E 		.ascii	"srand\000"
 7735      6400
 7736              	.LASF404:
 7737 0d19 69626374 		.ascii	"ibctl\000"
 7737      6C00
 7738              	.LASF154:
 7739 0d1f 52657365 		.ascii	"Reserved14\000"
 7739      72766564 
 7739      313400
 7740              	.LASF219:
 7741 0d2a 5F737472 		.ascii	"_strtok_last\000"
 7741      746F6B5F 
 7741      6C617374 
 7741      00
 7742              	.LASF106:
 7743 0d37 50494F5F 		.ascii	"PIO_IFDR\000"
 7743      49464452 
 7743      00
 7744              	.LASF60:
 7745 0d40 73697A65 		.ascii	"sizetype\000"
 7745      74797065 
 7745      00
 7746              	.LASF267:
 7747 0d49 5F736565 		.ascii	"_seed\000"
ARM GAS  /tmp/ccqdRJW7.s 			page 165


 7747      6400
 7748              	.LASF92:
 7749 0d4f 41464543 		.ascii	"AFEC_COSR\000"
 7749      5F434F53 
 7749      5200
 7750              	.LASF207:
 7751 0d59 5F736565 		.ascii	"_seek\000"
 7751      6B00
 7752              	.LASF528:
 7753 0d5f 4150494E 		.ascii	"APIN_UART1_TXD\000"
 7753      5F554152 
 7753      54315F54 
 7753      584400
 7754              	.LASF6:
 7755 0d6e 6D61785F 		.ascii	"max_align_t\000"
 7755      616C6967 
 7755      6E5F7400 
 7756              	.LASF375:
 7757 0d7a 41464543 		.ascii	"AFEC_GAINVALUE_0\000"
 7757      5F474149 
 7757      4E56414C 
 7757      55455F30 
 7757      00
 7758              	.LASF376:
 7759 0d8b 41464543 		.ascii	"AFEC_GAINVALUE_1\000"
 7759      5F474149 
 7759      4E56414C 
 7759      55455F31 
 7759      00
 7760              	.LASF377:
 7761 0d9c 41464543 		.ascii	"AFEC_GAINVALUE_2\000"
 7761      5F474149 
 7761      4E56414C 
 7761      55455F32 
 7761      00
 7762              	.LASF301:
 7763 0dad 73797374 		.ascii	"system\000"
 7763      656D00
 7764              	.LASF34:
 7765 0db4 696E7431 		.ascii	"int16_t\000"
 7765      365F7400 
 7766              	.LASF471:
 7767 0dbc 4E4F5F41 		.ascii	"NO_ADC\000"
 7767      444300
 7768              	.LASF14:
 7769 0dc3 73686F72 		.ascii	"short unsigned int\000"
 7769      7420756E 
 7769      7369676E 
 7769      65642069 
 7769      6E7400
 7770              	.LASF8:
 7771 0dd6 7369676E 		.ascii	"signed char\000"
 7771      65642063 
 7771      68617200 
 7772              	.LASF105:
 7773 0de2 50494F5F 		.ascii	"PIO_IFER\000"
 7773      49464552 
ARM GAS  /tmp/ccqdRJW7.s 			page 166


 7773      00
 7774              	.LASF317:
 7775 0deb 5F5F6664 		.ascii	"__fdlibm_ieee\000"
 7775      6C69626D 
 7775      5F696565 
 7775      6500
 7776              	.LASF583:
 7777 0df9 474E5520 		.ascii	"GNU C++14 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -m"
 7777      432B2B31 
 7777      3420362E 
 7777      332E3120 
 7777      32303137 
 7778 0e2c 6670753D 		.ascii	"fpu=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu++14 -"
 7778      66707635 
 7778      2D643136 
 7778      202D6D66 
 7778      6C6F6174 
 7779 0e5f 6666756E 		.ascii	"ffunction-sections -fdata-sections -fno-threadsafe-"
 7779      6374696F 
 7779      6E2D7365 
 7779      6374696F 
 7779      6E73202D 
 7780 0e92 73746174 		.ascii	"statics -fno-rtti -fno-exceptions -fsingle-precisio"
 7780      69637320 
 7780      2D666E6F 
 7780      2D727474 
 7780      69202D66 
 7781 0ec5 6E2D636F 		.ascii	"n-constant\000"
 7781      6E737461 
 7781      6E7400
 7782              	.LASF509:
 7783 0ed0 756C5069 		.ascii	"ulPinConfiguration\000"
 7783      6E436F6E 
 7783      66696775 
 7783      72617469 
 7783      6F6E00
 7784              	.LASF253:
 7785 0ee3 5F667265 		.ascii	"_freelist\000"
 7785      656C6973 
 7785      7400
 7786              	.LASF576:
 7787 0eed 61666563 		.ascii	"afec_ch_sanity_check\000"
 7787      5F63685F 
 7787      73616E69 
 7787      74795F63 
 7787      6865636B 
 7788              	.LASF25:
 7789 0f02 5F5F7569 		.ascii	"__uint_least16_t\000"
 7789      6E745F6C 
 7789      65617374 
 7789      31365F74 
 7789      00
 7790              	.LASF294:
 7791 0f13 77636861 		.ascii	"wchar_t\000"
 7791      725F7400 
 7792              	.LASF212:
 7793 0f1b 5F6F6666 		.ascii	"_offset\000"
ARM GAS  /tmp/ccqdRJW7.s 			page 167


 7793      73657400 
 7794              	.LASF62:
 7795 0f23 53797374 		.ascii	"SystemCoreClock\000"
 7795      656D436F 
 7795      7265436C 
 7795      6F636B00 
 7796              	.LASF578:
 7797 0f33 61666563 		.ascii	"afec_ch_set_config\000"
 7797      5F63685F 
 7797      7365745F 
 7797      636F6E66 
 7797      696700
 7798              	.LASF66:
 7799 0f46 41464543 		.ascii	"AFEC_SEQ1R\000"
 7799      5F534551 
 7799      315200
 7800              	.LASF197:
 7801 0f51 5F5F7362 		.ascii	"__sbuf\000"
 7801      756600
 7802              	.LASF293:
 7803 0f58 6D627374 		.ascii	"mbstowcs\000"
 7803      6F776373 
 7803      00
 7804              	.LASF228:
 7805 0f61 5F6C3634 		.ascii	"_l64a_buf\000"
 7805      615F6275 
 7805      6600
 7806              	.LASF140:
 7807 0f6b 50494F5F 		.ascii	"PIO_LSR\000"
 7807      4C535200 
 7808              	.LASF555:
 7809 0f73 61666563 		.ascii	"afec\000"
 7809      00
 7810              	.LASF423:
 7811 0f78 41464543 		.ascii	"AFEC_INTERRUPT_COMP_ERROR\000"
 7811      5F494E54 
 7811      45525255 
 7811      50545F43 
 7811      4F4D505F 
 7812              	.LASF85:
 7813 0f92 41464543 		.ascii	"AFEC_TEMPMR\000"
 7813      5F54454D 
 7813      504D5200 
 7814              	.LASF67:
 7815 0f9e 41464543 		.ascii	"AFEC_SEQ2R\000"
 7815      5F534551 
 7815      325200
 7816              	.LASF347:
 7817 0fa9 41464543 		.ascii	"AFEC_14_BITS\000"
 7817      5F31345F 
 7817      42495453 
 7817      00
 7818              	.LASF220:
 7819 0fb6 5F617363 		.ascii	"_asctime_buf\000"
 7819      74696D65 
 7819      5F627566 
 7819      00
ARM GAS  /tmp/ccqdRJW7.s 			page 168


 7820              	.LASF167:
 7821 0fc3 5F5F7763 		.ascii	"__wch\000"
 7821      6800
 7822              	.LASF82:
 7823 0fc9 41464543 		.ascii	"AFEC_CSELR\000"
 7823      5F435345 
 7823      4C5200
 7824              	.LASF561:
 7825 0fd4 416E616C 		.ascii	"AnalogInInit\000"
 7825      6F67496E 
 7825      496E6974 
 7825      00
 7826              	.LASF539:
 7827 0fe1 53657269 		.ascii	"SerialUSB\000"
 7827      616C5553 
 7827      4200
 7828              	.LASF235:
 7829 0feb 5F776373 		.ascii	"_wcsrtombs_state\000"
 7829      72746F6D 
 7829      62735F73 
 7829      74617465 
 7829      00
 7830              	.LASF121:
 7831 0ffc 50494F5F 		.ascii	"PIO_PUSR\000"
 7831      50555352 
 7831      00
 7832              	.LASF328:
 7833 1005 4552525F 		.ascii	"ERR_IO_ERROR\000"
 7833      494F5F45 
 7833      52524F52 
 7833      00
 7834              	.LASF161:
 7835 1012 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 7835      4B5F5245 
 7835      43555253 
 7835      4956455F 
 7835      5400
 7836              	.LASF322:
 7837 1024 5F5F6664 		.ascii	"__fdlibm_version\000"
 7837      6C69626D 
 7837      5F766572 
 7837      73696F6E 
 7837      00
 7838              	.LASF69:
 7839 1035 41464543 		.ascii	"AFEC_CHDR\000"
 7839      5F434844 
 7839      5200
 7840              	.LASF595:
 7841 103f 53657269 		.ascii	"SerialCDC\000"
 7841      616C4344 
 7841      4300
 7842              	.LASF16:
 7843 1049 6C6F6E67 		.ascii	"long int\000"
 7843      20696E74 
 7843      00
 7844              	.LASF325:
 7845 1052 53544154 		.ascii	"STATUS_ERR_BUSY\000"
ARM GAS  /tmp/ccqdRJW7.s 			page 169


 7845      55535F45 
 7845      52525F42 
 7845      55535900 
 7846              	.LASF327:
 7847 1062 53544154 		.ascii	"STATUS_ERR_TIMEOUT\000"
 7847      55535F45 
 7847      52525F54 
 7847      494D454F 
 7847      555400
 7848              	.LASF227:
 7849 1075 5F776374 		.ascii	"_wctomb_state\000"
 7849      6F6D625F 
 7849      73746174 
 7849      6500
 7850              	.LASF345:
 7851 1083 41464543 		.ascii	"AFEC_12_BITS\000"
 7851      5F31325F 
 7851      42495453 
 7851      00
 7852              	.LASF23:
 7853 1090 5F5F7569 		.ascii	"__uint_least8_t\000"
 7853      6E745F6C 
 7853      65617374 
 7853      385F7400 
 7854              	.LASF68:
 7855 10a0 41464543 		.ascii	"AFEC_CHER\000"
 7855      5F434845 
 7855      5200
 7856              	.LASF103:
 7857 10aa 50494F5F 		.ascii	"PIO_ODR\000"
 7857      4F445200 
 7858              	.LASF265:
 7859 10b2 5F696F62 		.ascii	"_iobs\000"
 7859      7300
 7860              	.LASF245:
 7861 10b8 5F656D65 		.ascii	"_emergency\000"
 7861      7267656E 
 7861      637900
 7862              	.LASF545:
 7863 10c3 416E616C 		.ascii	"AnalogInCheckReady\000"
 7863      6F67496E 
 7863      43686563 
 7863      6B526561 
 7863      647900
 7864              	.LASF231:
 7865 10d6 5F6D6272 		.ascii	"_mbrlen_state\000"
 7865      6C656E5F 
 7865      73746174 
 7865      6500
 7866              	.LASF237:
 7867 10e4 5F6E6578 		.ascii	"_nextf\000"
 7867      746600
 7868              	.LASF593:
 7869 10eb 77726974 		.ascii	"write\000"
 7869      6500
 7870              	.LASF223:
 7871 10f1 5F72616E 		.ascii	"_rand_next\000"
ARM GAS  /tmp/ccqdRJW7.s 			page 170


 7871      645F6E65 
 7871      787400
 7872              	.LASF40:
 7873 10fc 696E7470 		.ascii	"intptr_t\000"
 7873      74725F74 
 7873      00
 7874              	.LASF73:
 7875 1105 41464543 		.ascii	"AFEC_IDR\000"
 7875      5F494452 
 7875      00
 7876              	.LASF37:
 7877 110e 75696E74 		.ascii	"uint32_t\000"
 7877      33325F74 
 7877      00
 7878              	.LASF426:
 7879 1117 41464543 		.ascii	"AFEC_INTERRUPT_ALL\000"
 7879      5F494E54 
 7879      45525255 
 7879      50545F41 
 7879      4C4C00
 7880              	.LASF102:
 7881 112a 50494F5F 		.ascii	"PIO_OER\000"
 7881      4F455200 
 7882              	.LASF175:
 7883 1132 5F6D6178 		.ascii	"_maxwds\000"
 7883      77647300 
 7884              	.LASF298:
 7885 113a 73747274 		.ascii	"strtod\000"
 7885      6F6400
 7886              	.LASF361:
 7887 1141 41464543 		.ascii	"AFEC_CHANNEL_0\000"
 7887      5F434841 
 7887      4E4E454C 
 7887      5F3000
 7888              	.LASF41:
 7889 1150 75696E74 		.ascii	"uintptr_t\000"
 7889      7074725F 
 7889      7400
 7890              	.LASF363:
 7891 115a 41464543 		.ascii	"AFEC_CHANNEL_2\000"
 7891      5F434841 
 7891      4E4E454C 
 7891      5F3200
 7892              	.LASF364:
 7893 1169 41464543 		.ascii	"AFEC_CHANNEL_3\000"
 7893      5F434841 
 7893      4E4E454C 
 7893      5F3300
 7894              	.LASF365:
 7895 1178 41464543 		.ascii	"AFEC_CHANNEL_4\000"
 7895      5F434841 
 7895      4E4E454C 
 7895      5F3400
 7896              	.LASF366:
 7897 1187 41464543 		.ascii	"AFEC_CHANNEL_5\000"
 7897      5F434841 
 7897      4E4E454C 
ARM GAS  /tmp/ccqdRJW7.s 			page 171


 7897      5F3500
 7898              	.LASF367:
 7899 1196 41464543 		.ascii	"AFEC_CHANNEL_6\000"
 7899      5F434841 
 7899      4E4E454C 
 7899      5F3600
 7900              	.LASF299:
 7901 11a5 73747274 		.ascii	"strtol\000"
 7901      6F6C00
 7902              	.LASF369:
 7903 11ac 41464543 		.ascii	"AFEC_CHANNEL_8\000"
 7903      5F434841 
 7903      4E4E454C 
 7903      5F3800
 7904              	.LASF370:
 7905 11bb 41464543 		.ascii	"AFEC_CHANNEL_9\000"
 7905      5F434841 
 7905      4E4E454C 
 7905      5F3900
 7906              	.LASF4:
 7907 11ca 6C6F6E67 		.ascii	"long double\000"
 7907      20646F75 
 7907      626C6500 
 7908              	.LASF283:
 7909 11d6 7375626F 		.ascii	"suboptarg\000"
 7909      70746172 
 7909      6700
 7910              	.LASF72:
 7911 11e0 41464543 		.ascii	"AFEC_IER\000"
 7911      5F494552 
 7911      00
 7912              	.LASF422:
 7913 11e9 41464543 		.ascii	"AFEC_INTERRUPT_OVERRUN_ERROR\000"
 7913      5F494E54 
 7913      45525255 
 7913      50545F4F 
 7913      56455252 
 7914              	.LASF546:
 7915 1206 5F5A3135 		.ascii	"_Z15PinToAdcChannelm\000"
 7915      50696E54 
 7915      6F416463 
 7915      4368616E 
 7915      6E656C6D 
 7916              	.LASF439:
 7917 121b 4E4F545F 		.ascii	"NOT_ON_PWM\000"
 7917      4F4E5F50 
 7917      574D00
 7918              	.LASF64:
 7919 1226 41464543 		.ascii	"AFEC_MR\000"
 7919      5F4D5200 
 7920              	.LASF18:
 7921 122e 6C6F6E67 		.ascii	"long unsigned int\000"
 7921      20756E73 
 7921      69676E65 
 7921      6420696E 
 7921      7400
 7922              	.LASF359:
ARM GAS  /tmp/ccqdRJW7.s 			page 172


 7923 1240 41464543 		.ascii	"AFEC_TRIG_FREERUN\000"
 7923      5F545249 
 7923      475F4652 
 7923      45455255 
 7923      4E00
 7924              	.LASF312:
 7925 1252 626F6F6C 		.ascii	"bool\000"
 7925      00
 7926              	.LASF421:
 7927 1257 41464543 		.ascii	"AFEC_INTERRUPT_DATA_READY\000"
 7927      5F494E54 
 7927      45525255 
 7927      50545F44 
 7927      4154415F 
 7928              	.LASF379:
 7929 1271 61666563 		.ascii	"afec_startup_time\000"
 7929      5F737461 
 7929      72747570 
 7929      5F74696D 
 7929      6500
 7930              	.LASF208:
 7931 1283 5F636C6F 		.ascii	"_close\000"
 7931      736500
 7932              	.LASF554:
 7933 128a 6368616E 		.ascii	"chan\000"
 7933      00
 7934              	.LASF332:
 7935 128f 4552525F 		.ascii	"ERR_PROTOCOL\000"
 7935      50524F54 
 7935      4F434F4C 
 7935      00
 7936              	.LASF261:
 7937 129c 63686172 		.ascii	"char\000"
 7937      00
 7938              	.LASF263:
 7939 12a1 5F676C75 		.ascii	"_glue\000"
 7939      6500
 7940              	.LASF45:
 7941 12a7 75696E74 		.ascii	"uint_least16_t\000"
 7941      5F6C6561 
 7941      73743136 
 7941      5F7400
 7942              	.LASF329:
 7943 12b6 4552525F 		.ascii	"ERR_FLUSHED\000"
 7943      464C5553 
 7943      48454400 
 7944              	.LASF178:
 7945 12c2 5F426967 		.ascii	"_Bigint\000"
 7945      696E7400 
 7946              	.LASF56:
 7947 12ca 696E745F 		.ascii	"int_fast64_t\000"
 7947      66617374 
 7947      36345F74 
 7947      00
 7948              	.LASF541:
 7949 12d7 41666563 		.ascii	"AfecLowChannelMask\000"
 7949      4C6F7743 
ARM GAS  /tmp/ccqdRJW7.s 			page 173


 7949      68616E6E 
 7949      656C4D61 
 7949      736B00
 7950              	.LASF378:
 7951 12ea 41464543 		.ascii	"AFEC_GAINVALUE_3\000"
 7951      5F474149 
 7951      4E56414C 
 7951      55455F33 
 7951      00
 7952              	.LASF31:
 7953 12fb 5F5F7569 		.ascii	"__uintptr_t\000"
 7953      6E747074 
 7953      725F7400 
 7954              	.LASF514:
 7955 1307 675F4150 		.ascii	"g_APinDescription\000"
 7955      696E4465 
 7955      73637269 
 7955      7074696F 
 7955      6E00
 7956              	.LASF257:
 7957 1319 5F617465 		.ascii	"_atexit0\000"
 7957      78697430 
 7957      00
 7958              	.LASF230:
 7959 1322 5F676574 		.ascii	"_getdate_err\000"
 7959      64617465 
 7959      5F657272 
 7959      00
 7960              	.LASF372:
 7961 132f 41464543 		.ascii	"AFEC_TEMPERATURE_SENSOR\000"
 7961      5F54454D 
 7961      50455241 
 7961      54555245 
 7961      5F53454E 
 7962              	.LASF305:
 7963 1347 61746F6C 		.ascii	"atoll\000"
 7963      6C00
 7964              	.LASF100:
 7965 134d 50494F5F 		.ascii	"PIO_PDR\000"
 7965      50445200 
 7966              	.LASF352:
 7967 1355 41464543 		.ascii	"AFEC_TRIG_EXT\000"
 7967      5F545249 
 7967      475F4558 
 7967      5400
 7968              	.LASF57:
 7969 1363 75696E74 		.ascii	"uint_fast64_t\000"
 7969      5F666173 
 7969      7436345F 
 7969      7400
 7970              	.LASF409:
 7971 1371 41464543 		.ascii	"AFEC_INTERRUPT_EOC_0\000"
 7971      5F494E54 
 7971      45525255 
 7971      50545F45 
 7971      4F435F30 
 7972              	.LASF410:
ARM GAS  /tmp/ccqdRJW7.s 			page 174


 7973 1386 41464543 		.ascii	"AFEC_INTERRUPT_EOC_1\000"
 7973      5F494E54 
 7973      45525255 
 7973      50545F45 
 7973      4F435F31 
 7974              	.LASF411:
 7975 139b 41464543 		.ascii	"AFEC_INTERRUPT_EOC_2\000"
 7975      5F494E54 
 7975      45525255 
 7975      50545F45 
 7975      4F435F32 
 7976              	.LASF412:
 7977 13b0 41464543 		.ascii	"AFEC_INTERRUPT_EOC_3\000"
 7977      5F494E54 
 7977      45525255 
 7977      50545F45 
 7977      4F435F33 
 7978              	.LASF413:
 7979 13c5 41464543 		.ascii	"AFEC_INTERRUPT_EOC_4\000"
 7979      5F494E54 
 7979      45525255 
 7979      50545F45 
 7979      4F435F34 
 7980              	.LASF414:
 7981 13da 41464543 		.ascii	"AFEC_INTERRUPT_EOC_5\000"
 7981      5F494E54 
 7981      45525255 
 7981      50545F45 
 7981      4F435F35 
 7982              	.LASF415:
 7983 13ef 41464543 		.ascii	"AFEC_INTERRUPT_EOC_6\000"
 7983      5F494E54 
 7983      45525255 
 7983      50545F45 
 7983      4F435F36 
 7984              	.LASF416:
 7985 1404 41464543 		.ascii	"AFEC_INTERRUPT_EOC_7\000"
 7985      5F494E54 
 7985      45525255 
 7985      50545F45 
 7985      4F435F37 
 7986              	.LASF417:
 7987 1419 41464543 		.ascii	"AFEC_INTERRUPT_EOC_8\000"
 7987      5F494E54 
 7987      45525255 
 7987      50545F45 
 7987      4F435F38 
 7988              	.LASF418:
 7989 142e 41464543 		.ascii	"AFEC_INTERRUPT_EOC_9\000"
 7989      5F494E54 
 7989      45525255 
 7989      50545F45 
 7989      4F435F39 
 7990              	.LASF289:
 7991 1443 62736561 		.ascii	"bsearch\000"
 7991      72636800 
 7992              	.LASF563:
ARM GAS  /tmp/ccqdRJW7.s 			page 175


 7993 144b 47657441 		.ascii	"GetAfecChannel\000"
 7993      66656343 
 7993      68616E6E 
 7993      656C00
 7994              	.LASF515:
 7995 145a 5F5F6374 		.ascii	"__ctype_ptr__\000"
 7995      7970655F 
 7995      7074725F 
 7995      5F00
 7996              	.LASF99:
 7997 1468 50494F5F 		.ascii	"PIO_PER\000"
 7997      50455200 
 7998              	.LASF431:
 7999 1470 50494F5F 		.ascii	"PIO_PERIPH_C\000"
 7999      50455249 
 7999      50485F43 
 7999      00
 8000              	.LASF270:
 8001 147d 5F696D70 		.ascii	"_impure_ptr\000"
 8001      7572655F 
 8001      70747200 
 8002              	.LASF211:
 8003 1489 5F626C6B 		.ascii	"_blksize\000"
 8003      73697A65 
 8003      00
 8004              	.LASF209:
 8005 1492 5F756275 		.ascii	"_ubuf\000"
 8005      6600
 8006              	.LASF225:
 8007 1498 5F6D626C 		.ascii	"_mblen_state\000"
 8007      656E5F73 
 8007      74617465 
 8007      00
 8008              	.LASF259:
 8009 14a5 5F5F7367 		.ascii	"__sglue\000"
 8009      6C756500 
 8010              	.LASF510:
 8011 14ad 756C5069 		.ascii	"ulPinAttribute\000"
 8011      6E417474 
 8011      72696275 
 8011      746500
 8012              	.LASF537:
 8013 14bc 53657269 		.ascii	"Serial\000"
 8013      616C00
 8014              	.LASF249:
 8015 14c3 5F5F636C 		.ascii	"__cleanup\000"
 8015      65616E75 
 8015      7000
 8016              	.LASF38:
 8017 14cd 696E7436 		.ascii	"int64_t\000"
 8017      345F7400 
 8018              	.LASF566:
 8019 14d5 61666563 		.ascii	"afec_get_latest_value\000"
 8019      5F676574 
 8019      5F6C6174 
 8019      6573745F 
 8019      76616C75 
ARM GAS  /tmp/ccqdRJW7.s 			page 176


 8020              	.LASF155:
 8021 14eb 50494F5F 		.ascii	"PIO_PCMR\000"
 8021      50434D52 
 8021      00
 8022              	.LASF163:
 8023 14f4 5F66706F 		.ascii	"_fpos_t\000"
 8023      735F7400 
 8024              	.LASF202:
 8025 14fc 5F66696C 		.ascii	"_file\000"
 8025      6500
 8026              	.LASF43:
 8027 1502 75696E74 		.ascii	"uint_least8_t\000"
 8027      5F6C6561 
 8027      7374385F 
 8027      7400
 8028              	.LASF291:
 8029 1510 6C646976 		.ascii	"ldiv\000"
 8029      00
 8030              	.LASF77:
 8031 1515 41464543 		.ascii	"AFEC_OVER\000"
 8031      5F4F5645 
 8031      5200
 8032              	.LASF577:
 8033 151f 61666563 		.ascii	"afec_ch_get_config_defaults\000"
 8033      5F63685F 
 8033      6765745F 
 8033      636F6E66 
 8033      69675F64 
 8034              	.LASF200:
 8035 153b 5F5F7346 		.ascii	"__sFILE\000"
 8035      494C4500 
 8036              	.LASF513:
 8037 1543 756C5443 		.ascii	"ulTCChannel\000"
 8037      4368616E 
 8037      6E656C00 
 8038              	.LASF534:
 8039 154f 4D617850 		.ascii	"MaxPinNumber\000"
 8039      696E4E75 
 8039      6D626572 
 8039      00
 8040              	.LASF286:
 8041 155c 646F7562 		.ascii	"double\000"
 8041      6C6500
 8042              	.LASF196:
 8043 1563 5F666E73 		.ascii	"_fns\000"
 8043      00
 8044              	.LASF107:
 8045 1568 50494F5F 		.ascii	"PIO_IFSR\000"
 8045      49465352 
 8045      00
 8046              	.LASF399:
 8047 1571 73746172 		.ascii	"startup_time\000"
 8047      7475705F 
 8047      74696D65 
 8047      00
 8048              	.LASF171:
 8049 157e 5F6D6273 		.ascii	"_mbstate_t\000"
ARM GAS  /tmp/ccqdRJW7.s 			page 177


 8049      74617465 
 8049      5F7400
 8050              	.LASF236:
 8051 1589 5F685F65 		.ascii	"_h_errno\000"
 8051      72726E6F 
 8051      00
 8052              	.LASF584:
 8053 1592 2E2E2F63 		.ascii	"../cores/arduino/AnalogIn.cpp\000"
 8053      6F726573 
 8053      2F617264 
 8053      75696E6F 
 8053      2F416E61 
 8054              	.LASF397:
 8055 15b0 7265736F 		.ascii	"resolution\000"
 8055      6C757469 
 8055      6F6E00
 8056              	.LASF74:
 8057 15bb 41464543 		.ascii	"AFEC_IMR\000"
 8057      5F494D52 
 8057      00
 8058              	.LASF15:
 8059 15c4 5F5F696E 		.ascii	"__int32_t\000"
 8059      7433325F 
 8059      7400
 8060              	.LASF17:
 8061 15ce 5F5F7569 		.ascii	"__uint32_t\000"
 8061      6E743332 
 8061      5F7400
 8062              	.LASF296:
 8063 15d9 71736F72 		.ascii	"qsort\000"
 8063      7400
 8064              	.LASF24:
 8065 15df 5F5F696E 		.ascii	"__int_least16_t\000"
 8065      745F6C65 
 8065      61737431 
 8065      365F7400 
 8066              	.LASF136:
 8067 15ef 50494F5F 		.ascii	"PIO_AIMDR\000"
 8067      41494D44 
 8067      5200
 8068              	.LASF170:
 8069 15f9 5F5F7661 		.ascii	"__value\000"
 8069      6C756500 
 8070              	.LASF193:
 8071 1601 5F69735F 		.ascii	"_is_cxa\000"
 8071      63786100 
 8072              	.LASF123:
 8073 1609 50494F5F 		.ascii	"PIO_IFSCDR\000"
 8073      49465343 
 8073      445200
 8074              	.LASF252:
 8075 1614 5F703573 		.ascii	"_p5s\000"
 8075      00
 8076              	.LASF459:
 8077 1619 5443315F 		.ascii	"TC1_CHA4\000"
 8077      43484134 
 8077      00
ARM GAS  /tmp/ccqdRJW7.s 			page 178


 8078              	.LASF461:
 8079 1622 5443315F 		.ascii	"TC1_CHA5\000"
 8079      43484135 
 8079      00
 8080              	.LASF135:
 8081 162b 50494F5F 		.ascii	"PIO_AIMER\000"
 8081      41494D45 
 8081      5200
 8082              	.LASF567:
 8083 1635 53746172 		.ascii	"StartConversion\000"
 8083      74436F6E 
 8083      76657273 
 8083      696F6E00 
 8084              	.LASF398:
 8085 1645 61666563 		.ascii	"afec_clock\000"
 8085      5F636C6F 
 8085      636B00
 8086              	.LASF234:
 8087 1650 5F776372 		.ascii	"_wcrtomb_state\000"
 8087      746F6D62 
 8087      5F737461 
 8087      746500
 8088              	.LASF124:
 8089 165f 50494F5F 		.ascii	"PIO_IFSCER\000"
 8089      49465343 
 8089      455200
 8090              	.LASF275:
 8091 166a 35646976 		.ascii	"5div_t\000"
 8091      5F7400
 8092              	.LASF342:
 8093 1671 4552525F 		.ascii	"ERR_ABORTED\000"
 8093      41424F52 
 8093      54454400 
 8094              	.LASF277:
 8095 167d 6469765F 		.ascii	"div_t\000"
 8095      7400
 8096              	.LASF295:
 8097 1683 6D62746F 		.ascii	"mbtowc\000"
 8097      776300
 8098              	.LASF472:
 8099 168a 41444330 		.ascii	"ADC0\000"
 8099      00
 8100              	.LASF520:
 8101 168f 5F74696D 		.ascii	"_timezone\000"
 8101      657A6F6E 
 8101      6500
 8102              	.LASF61:
 8103 1699 49544D5F 		.ascii	"ITM_RxBuffer\000"
 8103      52784275 
 8103      66666572 
 8103      00
 8104              	.LASF143:
 8105 16a6 50494F5F 		.ascii	"PIO_FELLSR\000"
 8105      46454C4C 
 8105      535200
 8106              	.LASF350:
 8107 16b1 61666563 		.ascii	"afec_trigger\000"
ARM GAS  /tmp/ccqdRJW7.s 			page 179


 8107      5F747269 
 8107      67676572 
 8107      00
 8108              	.LASF21:
 8109 16be 6C6F6E67 		.ascii	"long long unsigned int\000"
 8109      206C6F6E 
 8109      6720756E 
 8109      7369676E 
 8109      65642069 
 8110              	.LASF282:
 8111 16d5 5F5F636F 		.ascii	"__compar_fn_t\000"
 8111      6D706172 
 8111      5F666E5F 
 8111      7400
 8112              	.LASF540:
 8113 16e3 4E756D43 		.ascii	"NumChannels\000"
 8113      68616E6E 
 8113      656C7300 
 8114              	.LASF88:
 8115 16ef 41464543 		.ascii	"AFEC_ACR\000"
 8115      5F414352 
 8115      00
 8116              	.LASF70:
 8117 16f8 41464543 		.ascii	"AFEC_CHSR\000"
 8117      5F434853 
 8117      5200
 8118              	.LASF590:
 8119 1702 5F5A5374 		.ascii	"_ZSt4modfePe\000"
 8119      346D6F64 
 8119      66655065 
 8119      00
 8120              	.LASF356:
 8121 170f 41464543 		.ascii	"AFEC_TRIG_PWM_EVENT_LINE_0\000"
 8121      5F545249 
 8121      475F5057 
 8121      4D5F4556 
 8121      454E545F 
 8122              	.LASF357:
 8123 172a 41464543 		.ascii	"AFEC_TRIG_PWM_EVENT_LINE_1\000"
 8123      5F545249 
 8123      475F5057 
 8123      4D5F4556 
 8123      454E545F 
 8124              	.LASF246:
 8125 1745 5F637572 		.ascii	"_current_category\000"
 8125      72656E74 
 8125      5F636174 
 8125      65676F72 
 8125      7900
 8126              	.LASF392:
 8127 1757 41464543 		.ascii	"AFEC_STARTUP_TIME_12\000"
 8127      5F535441 
 8127      52545550 
 8127      5F54494D 
 8127      455F3132 
 8128              	.LASF393:
 8129 176c 41464543 		.ascii	"AFEC_STARTUP_TIME_13\000"
ARM GAS  /tmp/ccqdRJW7.s 			page 180


 8129      5F535441 
 8129      52545550 
 8129      5F54494D 
 8129      455F3133 
 8130              	.LASF394:
 8131 1781 41464543 		.ascii	"AFEC_STARTUP_TIME_14\000"
 8131      5F535441 
 8131      52545550 
 8131      5F54494D 
 8131      455F3134 
 8132              	.LASF395:
 8133 1796 41464543 		.ascii	"AFEC_STARTUP_TIME_15\000"
 8133      5F535441 
 8133      52545550 
 8133      5F54494D 
 8133      455F3135 
 8134              	.LASF424:
 8135 17ab 41464543 		.ascii	"AFEC_INTERRUPT_TEMP_CHANGE\000"
 8135      5F494E54 
 8135      45525255 
 8135      50545F54 
 8135      454D505F 
 8136              	.LASF408:
 8137 17c6 61666563 		.ascii	"afec_interrupt_source\000"
 8137      5F696E74 
 8137      65727275 
 8137      70745F73 
 8137      6F757263 
 8138              	.LASF343:
 8139 17dc 4F504552 		.ascii	"OPERATION_IN_PROGRESS\000"
 8139      4154494F 
 8139      4E5F494E 
 8139      5F50524F 
 8139      47524553 
 8140              	.LASF271:
 8141 17f2 5F676C6F 		.ascii	"_global_impure_ptr\000"
 8141      62616C5F 
 8141      696D7075 
 8141      72655F70 
 8141      747200
 8142              	.LASF104:
 8143 1805 50494F5F 		.ascii	"PIO_OSR\000"
 8143      4F535200 
 8144              	.LASF548:
 8145 180d 6368616E 		.ascii	"channels\000"
 8145      6E656C73 
 8145      00
 8146              	.LASF50:
 8147 1816 696E745F 		.ascii	"int_fast8_t\000"
 8147      66617374 
 8147      385F7400 
 8148              	.LASF290:
 8149 1822 67657465 		.ascii	"getenv\000"
 8149      6E7600
 8150              	.LASF248:
 8151 1829 5F5F7364 		.ascii	"__sdidinit\000"
 8151      6964696E 
ARM GAS  /tmp/ccqdRJW7.s 			page 181


 8151      697400
 8152              	.LASF320:
 8153 1834 5F5F6664 		.ascii	"__fdlibm_posix\000"
 8153      6C69626D 
 8153      5F706F73 
 8153      697800
 8154              	.LASF574:
 8155 1843 61666563 		.ascii	"afec_set_trigger\000"
 8155      5F736574 
 8155      5F747269 
 8155      67676572 
 8155      00
 8156              	.LASF86:
 8157 1854 41464543 		.ascii	"AFEC_TEMPCWR\000"
 8157      5F54454D 
 8157      50435752 
 8157      00
 8158              	.LASF592:
 8159 1861 72616E64 		.ascii	"rand\000"
 8159      00
 8160              	.LASF75:
 8161 1866 41464543 		.ascii	"AFEC_ISR\000"
 8161      5F495352 
 8161      00
 8162              	.LASF172:
 8163 186f 5F666C6F 		.ascii	"_flock_t\000"
 8163      636B5F74 
 8163      00
 8164              	.LASF358:
 8165 1878 41464543 		.ascii	"AFEC_TRIG_ANALOG_COMPARATOR\000"
 8165      5F545249 
 8165      475F414E 
 8165      414C4F47 
 8165      5F434F4D 
 8166              	.LASF380:
 8167 1894 41464543 		.ascii	"AFEC_STARTUP_TIME_0\000"
 8167      5F535441 
 8167      52545550 
 8167      5F54494D 
 8167      455F3000 
 8168              	.LASF381:
 8169 18a8 41464543 		.ascii	"AFEC_STARTUP_TIME_1\000"
 8169      5F535441 
 8169      52545550 
 8169      5F54494D 
 8169      455F3100 
 8170              	.LASF382:
 8171 18bc 41464543 		.ascii	"AFEC_STARTUP_TIME_2\000"
 8171      5F535441 
 8171      52545550 
 8171      5F54494D 
 8171      455F3200 
 8172              	.LASF383:
 8173 18d0 41464543 		.ascii	"AFEC_STARTUP_TIME_3\000"
 8173      5F535441 
 8173      52545550 
 8173      5F54494D 
ARM GAS  /tmp/ccqdRJW7.s 			page 182


 8173      455F3300 
 8174              	.LASF384:
 8175 18e4 41464543 		.ascii	"AFEC_STARTUP_TIME_4\000"
 8175      5F535441 
 8175      52545550 
 8175      5F54494D 
 8175      455F3400 
 8176              	.LASF385:
 8177 18f8 41464543 		.ascii	"AFEC_STARTUP_TIME_5\000"
 8177      5F535441 
 8177      52545550 
 8177      5F54494D 
 8177      455F3500 
 8178              	.LASF386:
 8179 190c 41464543 		.ascii	"AFEC_STARTUP_TIME_6\000"
 8179      5F535441 
 8179      52545550 
 8179      5F54494D 
 8179      455F3600 
 8180              	.LASF387:
 8181 1920 41464543 		.ascii	"AFEC_STARTUP_TIME_7\000"
 8181      5F535441 
 8181      52545550 
 8181      5F54494D 
 8181      455F3700 
 8182              	.LASF388:
 8183 1934 41464543 		.ascii	"AFEC_STARTUP_TIME_8\000"
 8183      5F535441 
 8183      52545550 
 8183      5F54494D 
 8183      455F3800 
 8184              	.LASF389:
 8185 1948 41464543 		.ascii	"AFEC_STARTUP_TIME_9\000"
 8185      5F535441 
 8185      52545550 
 8185      5F54494D 
 8185      455F3900 
 8186              	.LASF340:
 8187 195c 4552525F 		.ascii	"ERR_TIMER_ALREADY_RUNNING\000"
 8187      54494D45 
 8187      525F414C 
 8187      52454144 
 8187      595F5255 
 8188              	.LASF519:
 8189 1976 55415254 		.ascii	"UARTClass\000"
 8189      436C6173 
 8189      7300
 8190              	.LASF3:
 8191 1980 6C6F6E67 		.ascii	"long long int\000"
 8191      206C6F6E 
 8191      6720696E 
 8191      7400
 8192              	.LASF139:
 8193 198e 50494F5F 		.ascii	"PIO_ESR\000"
 8193      45535200 
 8194              	.LASF216:
 8195 1996 5F666C61 		.ascii	"_flags2\000"
ARM GAS  /tmp/ccqdRJW7.s 			page 183


 8195      67733200 
 8196              	.LASF323:
 8197 199e 73746174 		.ascii	"status_code\000"
 8197      75735F63 
 8197      6F646500 
 8198              	.LASF157:
 8199 19aa 50494F5F 		.ascii	"PIO_PCIDR\000"
 8199      50434944 
 8199      5200
 8200              	.LASF337:
 8201 19b4 4552525F 		.ascii	"ERR_BUSY\000"
 8201      42555359 
 8201      00
 8202              	.LASF324:
 8203 19bd 53544154 		.ascii	"STATUS_OK\000"
 8203      55535F4F 
 8203      4B00
 8204              	.LASF403:
 8205 19c7 75736571 		.ascii	"useq\000"
 8205      00
 8206              	.LASF544:
 8207 19cc 50696E54 		.ascii	"PinToAdcChannel\000"
 8207      6F416463 
 8207      4368616E 
 8207      6E656C00 
 8208              	.LASF523:
 8209 19dc 4150494E 		.ascii	"APINS_UART0\000"
 8209      535F5541 
 8209      52543000 
 8210              	.LASF526:
 8211 19e8 4150494E 		.ascii	"APINS_UART1\000"
 8211      535F5541 
 8211      52543100 
 8212              	.LASF44:
 8213 19f4 696E745F 		.ascii	"int_least16_t\000"
 8213      6C656173 
 8213      7431365F 
 8213      7400
 8214              	.LASF591:
 8215 1a02 5F5A4E39 		.ascii	"_ZN9__gnu_cxx3divExx\000"
 8215      5F5F676E 
 8215      755F6378 
 8215      78336469 
 8215      76457878 
 8216              	.LASF338:
 8217 1a17 4552525F 		.ascii	"ERR_BAD_FORMAT\000"
 8217      4241445F 
 8217      464F524D 
 8217      415400
 8218              	.LASF314:
 8219 1a26 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 8219      6972715F 
 8219      70726576 
 8219      5F696E74 
 8219      65727275 
 8220              	.LASF353:
 8221 1a43 41464543 		.ascii	"AFEC_TRIG_TIO_CH_0\000"
ARM GAS  /tmp/ccqdRJW7.s 			page 184


 8221      5F545249 
 8221      475F5449 
 8221      4F5F4348 
 8221      5F3000
 8222              	.LASF354:
 8223 1a56 41464543 		.ascii	"AFEC_TRIG_TIO_CH_1\000"
 8223      5F545249 
 8223      475F5449 
 8223      4F5F4348 
 8223      5F3100
 8224              	.LASF355:
 8225 1a69 41464543 		.ascii	"AFEC_TRIG_TIO_CH_2\000"
 8225      5F545249 
 8225      475F5449 
 8225      4F5F4348 
 8225      5F3200
 8226              	.LASF373:
 8227 1a7c 41464543 		.ascii	"AFEC_CHANNEL_ALL\000"
 8227      5F434841 
 8227      4E4E454C 
 8227      5F414C4C 
 8227      00
 8228              	.LASF137:
 8229 1a8d 50494F5F 		.ascii	"PIO_AIMMR\000"
 8229      41494D4D 
 8229      5200
 8230              	.LASF579:
 8231 1a97 61666563 		.ascii	"afec_enable\000"
 8231      5F656E61 
 8231      626C6500 
 8232              	.LASF427:
 8233 1aa3 5F70696F 		.ascii	"_pio_type\000"
 8233      5F747970 
 8233      6500
 8234              	.LASF573:
 8235 1aad 61666563 		.ascii	"afec_start_software_conversion\000"
 8235      5F737461 
 8235      72745F73 
 8235      6F667477 
 8235      6172655F 
 8236              	.LASF262:
 8237 1acc 5F5F4649 		.ascii	"__FILE\000"
 8237      4C4500
 8238              	.LASF448:
 8239 1ad3 4550574D 		.ascii	"EPWMChannel\000"
 8239      4368616E 
 8239      6E656C00 
 8240              	.LASF307:
 8241 1adf 73747274 		.ascii	"strtoull\000"
 8241      6F756C6C 
 8241      00
 8242              	.LASF334:
 8243 1ae8 4552525F 		.ascii	"ERR_NO_MEMORY\000"
 8243      4E4F5F4D 
 8243      454D4F52 
 8243      5900
 8244              	.LASF594:
ARM GAS  /tmp/ccqdRJW7.s 			page 185


 8245 1af6 5F5A4E35 		.ascii	"_ZN5Print5writeEPKcj\000"
 8245      5072696E 
 8245      74357772 
 8245      69746545 
 8245      504B636A 
 8246              	.LASF176:
 8247 1b0b 5F736967 		.ascii	"_sign\000"
 8247      6E00
 8248              	.LASF7:
 8249 1b11 5F5F696E 		.ascii	"__int8_t\000"
 8249      74385F74 
 8249      00
 8250              	.LASF111:
 8251 1b1a 50494F5F 		.ascii	"PIO_PDSR\000"
 8251      50445352 
 8251      00
 8252              	.LASF181:
 8253 1b23 5F5F746D 		.ascii	"__tm_min\000"
 8253      5F6D696E 
 8253      00
 8254              	.LASF333:
 8255 1b2c 4552525F 		.ascii	"ERR_UNSUPPORTED_DEV\000"
 8255      554E5355 
 8255      50504F52 
 8255      5445445F 
 8255      44455600 
 8256              	.LASF559:
 8257 1b40 5F5A3231 		.ascii	"_Z21AnalogInEnableChannel19AnalogChannelNumberb\000"
 8257      416E616C 
 8257      6F67496E 
 8257      456E6162 
 8257      6C654368 
 8258              	.LASF419:
 8259 1b70 41464543 		.ascii	"AFEC_INTERRUPT_EOC_10\000"
 8259      5F494E54 
 8259      45525255 
 8259      50545F45 
 8259      4F435F31 
 8260              	.LASF420:
 8261 1b86 41464543 		.ascii	"AFEC_INTERRUPT_EOC_11\000"
 8261      5F494E54 
 8261      45525255 
 8261      50545F45 
 8261      4F435F31 
 8262              	.LASF145:
 8263 1b9c 50494F5F 		.ascii	"PIO_FRLHSR\000"
 8263      46524C48 
 8263      535200
 8264              	.LASF76:
 8265 1ba7 52657365 		.ascii	"Reserved1\000"
 8265      72766564 
 8265      3100
 8266              	.LASF80:
 8267 1bb1 52657365 		.ascii	"Reserved2\000"
 8267      72766564 
 8267      3200
 8268              	.LASF87:
ARM GAS  /tmp/ccqdRJW7.s 			page 186


 8269 1bbb 52657365 		.ascii	"Reserved3\000"
 8269      72766564 
 8269      3300
 8270              	.LASF89:
 8271 1bc5 52657365 		.ascii	"Reserved4\000"
 8271      72766564 
 8271      3400
 8272              	.LASF91:
 8273 1bcf 52657365 		.ascii	"Reserved5\000"
 8273      72766564 
 8273      3500
 8274              	.LASF95:
 8275 1bd9 52657365 		.ascii	"Reserved6\000"
 8275      72766564 
 8275      3600
 8276              	.LASF130:
 8277 1be3 52657365 		.ascii	"Reserved7\000"
 8277      72766564 
 8277      3700
 8278              	.LASF134:
 8279 1bed 52657365 		.ascii	"Reserved8\000"
 8279      72766564 
 8279      3800
 8280              	.LASF138:
 8281 1bf7 52657365 		.ascii	"Reserved9\000"
 8281      72766564 
 8281      3900
 8282              	.LASF0:
 8283 1c01 756E7369 		.ascii	"unsigned int\000"
 8283      676E6564 
 8283      20696E74 
 8283      00
 8284              	.LASF224:
 8285 1c0e 5F723438 		.ascii	"_r48\000"
 8285      00
 8286              	.LASF101:
 8287 1c13 50494F5F 		.ascii	"PIO_PSR\000"
 8287      50535200 
 8288              	.LASF538:
 8289 1c1b 53657269 		.ascii	"Serial1\000"
 8289      616C3100 
 8290              	.LASF512:
 8291 1c23 756C5057 		.ascii	"ulPWMChannel\000"
 8291      4D436861 
 8291      6E6E656C 
 8291      00
 8292              	.LASF274:
 8293 1c30 5F5F6378 		.ascii	"__cxx11\000"
 8293      78313100 
 8294              	.LASF51:
 8295 1c38 75696E74 		.ascii	"uint_fast8_t\000"
 8295      5F666173 
 8295      74385F74 
 8295      00
 8296              	.LASF572:
 8297 1c45 61666563 		.ascii	"afec_channel_enable\000"
 8297      5F636861 
ARM GAS  /tmp/ccqdRJW7.s 			page 187


 8297      6E6E656C 
 8297      5F656E61 
 8297      626C6500 
 8298              	.LASF12:
 8299 1c59 73686F72 		.ascii	"short int\000"
 8299      7420696E 
 8299      7400
 8300              	.LASF597:
 8301 1c63 5F5A3234 		.ascii	"_Z24GetTemperatureAdcChannelv\000"
 8301      47657454 
 8301      656D7065 
 8301      72617475 
 8301      72654164 
 8302              	.LASF205:
 8303 1c81 5F726561 		.ascii	"_read\000"
 8303      6400
 8304              	.LASF266:
 8305 1c87 5F72616E 		.ascii	"_rand48\000"
 8305      64343800 
 8306              	.LASF533:
 8307 1c8f 4150494E 		.ascii	"APINS_GMAC_PHY\000"
 8307      535F474D 
 8307      41435F50 
 8307      485900
 8308              	.LASF570:
 8309 1c9e 616F6666 		.ascii	"aoffset\000"
 8309      73657400 
 8310              	.LASF127:
 8311 1ca6 50494F5F 		.ascii	"PIO_PPDDR\000"
 8311      50504444 
 8311      5200
 8312              	.LASF349:
 8313 1cb0 41464543 		.ascii	"AFEC_16_BITS\000"
 8313      5F31365F 
 8313      42495453 
 8313      00
 8314              	.LASF390:
 8315 1cbd 41464543 		.ascii	"AFEC_STARTUP_TIME_10\000"
 8315      5F535441 
 8315      52545550 
 8315      5F54494D 
 8315      455F3130 
 8316              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
