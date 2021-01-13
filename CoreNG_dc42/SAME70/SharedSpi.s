ARM GAS  /tmp/ccHBIC16.s 			page 1


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
  12              		.file	"SharedSpi.cpp"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.sspi_master_init,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	sspi_master_init
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	sspi_master_init, %function
  25              	sspi_master_init:
  26              	.LFB530:
  27              		.file 1 "../libraries/SharedSpi/SharedSpi.cpp"
   1:../libraries/SharedSpi/SharedSpi.cpp **** // ASF 3.27.0
   2:../libraries/SharedSpi/SharedSpi.cpp **** 
   3:../libraries/SharedSpi/SharedSpi.cpp **** /**
   4:../libraries/SharedSpi/SharedSpi.cpp ****  * \file
   5:../libraries/SharedSpi/SharedSpi.cpp ****  *
   6:../libraries/SharedSpi/SharedSpi.cpp ****  * \brief Shared SPI bus services for Duet and other Atmel SAM-based controller electronics
   7:../libraries/SharedSpi/SharedSpi.cpp ****  *
   8:../libraries/SharedSpi/SharedSpi.cpp ****  * This module provides access to the SPI bus used to access peripheral devices in RepRapFirmware, 
   9:../libraries/SharedSpi/SharedSpi.cpp ****  * Depending on the board, we may use either the main SPI channel or one of the USARTs in SPI mode.
  10:../libraries/SharedSpi/SharedSpi.cpp ****  *
  11:../libraries/SharedSpi/SharedSpi.cpp ****  */
  12:../libraries/SharedSpi/SharedSpi.cpp **** 
  13:../libraries/SharedSpi/SharedSpi.cpp **** #include "Core.h"
  14:../libraries/SharedSpi/SharedSpi.cpp **** #include "SharedSpi.h"
  15:../libraries/SharedSpi/SharedSpi.cpp **** #include "variant.h"
  16:../libraries/SharedSpi/SharedSpi.cpp **** 
  17:../libraries/SharedSpi/SharedSpi.cpp **** #if SAM4E
  18:../libraries/SharedSpi/SharedSpi.cpp **** 
  19:../libraries/SharedSpi/SharedSpi.cpp **** #define USART_SPI		1
  20:../libraries/SharedSpi/SharedSpi.cpp **** 
  21:../libraries/SharedSpi/SharedSpi.cpp **** # include "usart/usart.h"		// On Duet NG the general SPI channel is on USART 0
  22:../libraries/SharedSpi/SharedSpi.cpp **** 
  23:../libraries/SharedSpi/SharedSpi.cpp **** #  define USART_SSPI	USART0
  24:../libraries/SharedSpi/SharedSpi.cpp **** #  define ID_SSPI		ID_USART0
  25:../libraries/SharedSpi/SharedSpi.cpp **** 
  26:../libraries/SharedSpi/SharedSpi.cpp **** #elif SAM4S
  27:../libraries/SharedSpi/SharedSpi.cpp **** 
  28:../libraries/SharedSpi/SharedSpi.cpp **** #define USART_SPI		1
  29:../libraries/SharedSpi/SharedSpi.cpp **** 
  30:../libraries/SharedSpi/SharedSpi.cpp **** # include "usart/usart.h"		// On Duet Maestro the general SPI channel is on USART 0
ARM GAS  /tmp/ccHBIC16.s 			page 2


  31:../libraries/SharedSpi/SharedSpi.cpp **** 
  32:../libraries/SharedSpi/SharedSpi.cpp **** #  define USART_SSPI	USART0
  33:../libraries/SharedSpi/SharedSpi.cpp **** #  define ID_SSPI		ID_USART0
  34:../libraries/SharedSpi/SharedSpi.cpp **** 
  35:../libraries/SharedSpi/SharedSpi.cpp **** #else
  36:../libraries/SharedSpi/SharedSpi.cpp **** 
  37:../libraries/SharedSpi/SharedSpi.cpp **** #define USART_SPI		0
  38:../libraries/SharedSpi/SharedSpi.cpp **** 
  39:../libraries/SharedSpi/SharedSpi.cpp **** // We have to tell the processor which NPCS output we are using, even though we use other pins for 
  40:../libraries/SharedSpi/SharedSpi.cpp **** #if SAME70
  41:../libraries/SharedSpi/SharedSpi.cpp **** // We choose NPCS2 because on the SAME70, it is not physically connected
  42:../libraries/SharedSpi/SharedSpi.cpp **** # define PERIPHERAL_CHANNEL_ID		2
  43:../libraries/SharedSpi/SharedSpi.cpp **** # define PERIPHERAL_CHANNEL_CS_PIN	APIN_SPI_SS2
  44:../libraries/SharedSpi/SharedSpi.cpp **** #elif SAM3XA
  45:../libraries/SharedSpi/SharedSpi.cpp **** // We choose NPCS3 because on the SAM3X, it is not physically connected
  46:../libraries/SharedSpi/SharedSpi.cpp **** # define PERIPHERAL_CHANNEL_ID		3
  47:../libraries/SharedSpi/SharedSpi.cpp **** # define PERIPHERAL_CHANNEL_CS_PIN	APIN_SPI_SS3
  48:../libraries/SharedSpi/SharedSpi.cpp **** #endif
  49:../libraries/SharedSpi/SharedSpi.cpp **** 
  50:../libraries/SharedSpi/SharedSpi.cpp **** 
  51:../libraries/SharedSpi/SharedSpi.cpp **** /** Time-out value (number of attempts). */
  52:../libraries/SharedSpi/SharedSpi.cpp **** #define SPI_TIMEOUT       15000
  53:../libraries/SharedSpi/SharedSpi.cpp **** 
  54:../libraries/SharedSpi/SharedSpi.cpp **** // Which SPI channel we use
  55:../libraries/SharedSpi/SharedSpi.cpp **** # define SSPI		SPI0
  56:../libraries/SharedSpi/SharedSpi.cpp **** # define ID_SSPI	ID_SPI0
  57:../libraries/SharedSpi/SharedSpi.cpp **** 
  58:../libraries/SharedSpi/SharedSpi.cpp **** #endif
  59:../libraries/SharedSpi/SharedSpi.cpp **** 
  60:../libraries/SharedSpi/SharedSpi.cpp **** // Wait for transmitter ready returning true if timed out
  61:../libraries/SharedSpi/SharedSpi.cpp **** static inline bool waitForTxReady()
  62:../libraries/SharedSpi/SharedSpi.cpp **** {
  63:../libraries/SharedSpi/SharedSpi.cpp **** 	uint32_t timeout = SPI_TIMEOUT;
  64:../libraries/SharedSpi/SharedSpi.cpp **** #if USART_SPI
  65:../libraries/SharedSpi/SharedSpi.cpp **** 	while (!usart_is_tx_ready(USART_SSPI))
  66:../libraries/SharedSpi/SharedSpi.cpp **** #else
  67:../libraries/SharedSpi/SharedSpi.cpp **** 	while (!spi_is_tx_ready(SSPI))
  68:../libraries/SharedSpi/SharedSpi.cpp **** #endif
  69:../libraries/SharedSpi/SharedSpi.cpp **** 	{
  70:../libraries/SharedSpi/SharedSpi.cpp **** 		if (--timeout == 0)
  71:../libraries/SharedSpi/SharedSpi.cpp **** 		{
  72:../libraries/SharedSpi/SharedSpi.cpp **** 			return true;
  73:../libraries/SharedSpi/SharedSpi.cpp **** 		}
  74:../libraries/SharedSpi/SharedSpi.cpp **** 	}
  75:../libraries/SharedSpi/SharedSpi.cpp **** 	return false;
  76:../libraries/SharedSpi/SharedSpi.cpp **** }
  77:../libraries/SharedSpi/SharedSpi.cpp **** 
  78:../libraries/SharedSpi/SharedSpi.cpp **** // Wait for transmitter empty returning true if timed out
  79:../libraries/SharedSpi/SharedSpi.cpp **** static inline bool waitForTxEmpty()
  80:../libraries/SharedSpi/SharedSpi.cpp **** {
  81:../libraries/SharedSpi/SharedSpi.cpp **** 	uint32_t timeout = SPI_TIMEOUT;
  82:../libraries/SharedSpi/SharedSpi.cpp **** #if USART_SPI
  83:../libraries/SharedSpi/SharedSpi.cpp **** 	while (!usart_is_tx_empty(USART_SSPI))
  84:../libraries/SharedSpi/SharedSpi.cpp **** #else
  85:../libraries/SharedSpi/SharedSpi.cpp **** 		while (!spi_is_tx_empty(SSPI))
  86:../libraries/SharedSpi/SharedSpi.cpp **** #endif
  87:../libraries/SharedSpi/SharedSpi.cpp **** 	{
ARM GAS  /tmp/ccHBIC16.s 			page 3


  88:../libraries/SharedSpi/SharedSpi.cpp **** 		if (!timeout--)
  89:../libraries/SharedSpi/SharedSpi.cpp **** 		{
  90:../libraries/SharedSpi/SharedSpi.cpp **** 			return true;
  91:../libraries/SharedSpi/SharedSpi.cpp **** 		}
  92:../libraries/SharedSpi/SharedSpi.cpp **** 	}
  93:../libraries/SharedSpi/SharedSpi.cpp **** 	return false;
  94:../libraries/SharedSpi/SharedSpi.cpp **** }
  95:../libraries/SharedSpi/SharedSpi.cpp **** 
  96:../libraries/SharedSpi/SharedSpi.cpp **** // Wait for receive data available returning true if timed out
  97:../libraries/SharedSpi/SharedSpi.cpp **** static inline bool waitForRxReady()
  98:../libraries/SharedSpi/SharedSpi.cpp **** {
  99:../libraries/SharedSpi/SharedSpi.cpp **** 	uint32_t timeout = SPI_TIMEOUT;
 100:../libraries/SharedSpi/SharedSpi.cpp **** #if USART_SPI
 101:../libraries/SharedSpi/SharedSpi.cpp **** 	while (!usart_is_rx_ready(USART_SSPI))
 102:../libraries/SharedSpi/SharedSpi.cpp **** #else
 103:../libraries/SharedSpi/SharedSpi.cpp **** 	while (!spi_is_rx_ready(SSPI))
 104:../libraries/SharedSpi/SharedSpi.cpp **** #endif
 105:../libraries/SharedSpi/SharedSpi.cpp **** 	{
 106:../libraries/SharedSpi/SharedSpi.cpp **** 		if (--timeout == 0)
 107:../libraries/SharedSpi/SharedSpi.cpp **** 		{
 108:../libraries/SharedSpi/SharedSpi.cpp **** 			return true;
 109:../libraries/SharedSpi/SharedSpi.cpp **** 		}
 110:../libraries/SharedSpi/SharedSpi.cpp **** 	}
 111:../libraries/SharedSpi/SharedSpi.cpp **** 	return false;
 112:../libraries/SharedSpi/SharedSpi.cpp **** }
 113:../libraries/SharedSpi/SharedSpi.cpp **** 
 114:../libraries/SharedSpi/SharedSpi.cpp **** // Set up the Shared SPI subsystem
 115:../libraries/SharedSpi/SharedSpi.cpp **** void sspi_master_init(struct sspi_device *device, uint32_t bits)
 116:../libraries/SharedSpi/SharedSpi.cpp **** {
  28              		.loc 1 116 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              	.LVL0:
  33 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  34              		.cfi_def_cfa_offset 24
  35              		.cfi_offset 3, -24
  36              		.cfi_offset 4, -20
  37              		.cfi_offset 5, -16
  38              		.cfi_offset 6, -12
  39              		.cfi_offset 7, -8
  40              		.cfi_offset 14, -4
  41              	.LBB34:
  42              	.LBB35:
  43              		.file 2 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h"
   1:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** /*
   2:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****   Copyright (c) 2011 Arduino.  All right reserved.
   3:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 
   4:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****   This library is free software; you can redistribute it and/or
   5:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****   modify it under the terms of the GNU Lesser General Public
   6:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****   License as published by the Free Software Foundation; either
   7:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****   version 2.1 of the License, or (at your option) any later version.
   8:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 
   9:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****   This library is distributed in the hope that it will be useful,
  10:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****   but WITHOUT ANY WARRANTY; without even the implied warranty of
  11:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
  12:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****   See the GNU Lesser General Public License for more details.
ARM GAS  /tmp/ccHBIC16.s 			page 4


  13:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 
  14:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****   You should have received a copy of the GNU Lesser General Public
  15:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****   License along with this library; if not, write to the Free Software
  16:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****   Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
  17:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** */
  18:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 
  19:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** #ifndef _WIRING_DIGITAL_
  20:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** #define _WIRING_DIGITAL_
  21:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 
  22:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** #ifdef __cplusplus
  23:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** extern "C" {
  24:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** #endif
  25:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 
  26:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** // Pin mode enumeration. Would ideally be a C++ scoped enum, but we need to use it from C library f
  27:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** enum PinMode
  28:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** {
  29:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 	PIN_MODE_NOT_CONFIGURED = -1,	// used in Platform class to record that the mode for a pin has not 
  30:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 	INPUT = 0,						// pin is a digital input
  31:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 	INPUT_PULLUP,					// pin is a digital input with pullup enabled
  32:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** #if SAM4E || SAM4S || SAME70
  33:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 	INPUT_PULLDOWN,					// pin is a digital input with pulldown enabled
  34:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** #else
  35:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 	INPUT_PULLDOWN_NOT_AVAILABLE,
  36:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** #endif
  37:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 	OUTPUT_LOW,						// pin is an output with initial state LOW
  38:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 	OUTPUT_HIGH,					// pin is an output with initial state HIGH
  39:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 	AIN,							// pin is an analog input, digital input buffer is disabled if possible
  40:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 	SPECIAL,						// pin is used for the special function defined for it in the variant.cpp file
  41:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 	OUTPUT_PWM_LOW,					// PWM output mode, initially low
  42:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 	OUTPUT_PWM_HIGH,				// PWM output mode, initially high
  43:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 	OUTPUT_LOW_OPEN_DRAIN,			// used in SX1509B expansion driver to put the pin in open drain output m
  44:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 	OUTPUT_HIGH_OPEN_DRAIN,			// used in SX1509B expansion driver to put the pin in open drain output 
  45:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 	OUTPUT_PWM_OPEN_DRAIN			// used in SX1509B expansion driver to put the pin in PWM output mode
  46:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** };
  47:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 
  48:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** /**
  49:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****  * \brief Configures the specified pin to behave either as an input or an output. See the descripti
  50:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****  *
  51:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****  * \param ulPin The number of the pin whose mode you wish to set
  52:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****  * \param ulMode Either INPUT or OUTPUT
  53:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****  * \param debounceCutoff Debounce cutoff frequency (only one can be set per PIO)
  54:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h ****  */
  55:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** extern void pinModeDuet(Pin pin, enum PinMode dwMode, uint32_t debounceCutoff);
  56:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 
  57:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** inline void pinMode(Pin pin, enum PinMode dwMode)
  58:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** {
  59:/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring_digital.h **** 	pinModeDuet(pin, dwMode, 0);
  44              		.loc 2 59 0
  45 0002 0022     		movs	r2, #0
  46              	.LBE35:
  47              	.LBE34:
 117:../libraries/SharedSpi/SharedSpi.cpp **** 	static bool commsInitDone = false;
 118:../libraries/SharedSpi/SharedSpi.cpp **** 
 119:../libraries/SharedSpi/SharedSpi.cpp **** 	pinMode(device->csPin, (device->csPolarity) ? OUTPUT_LOW : OUTPUT_HIGH);
  48              		.loc 1 119 0
  49 0004 4378     		ldrb	r3, [r0, #1]	@ zero_extendqisi2
 120:../libraries/SharedSpi/SharedSpi.cpp **** 
ARM GAS  /tmp/ccHBIC16.s 			page 5


 121:../libraries/SharedSpi/SharedSpi.cpp **** 	if (!commsInitDone)
  50              		.loc 1 121 0
  51 0006 144D     		ldr	r5, .L11
 116:../libraries/SharedSpi/SharedSpi.cpp **** 	static bool commsInitDone = false;
  52              		.loc 1 116 0
  53 0008 0E46     		mov	r6, r1
 119:../libraries/SharedSpi/SharedSpi.cpp **** 
  54              		.loc 1 119 0
  55 000a 9342     		cmp	r3, r2
 116:../libraries/SharedSpi/SharedSpi.cpp **** 	static bool commsInitDone = false;
  56              		.loc 1 116 0
  57 000c 0446     		mov	r4, r0
  58              	.LVL1:
  59              	.LBB37:
  60              	.LBB36:
  61              		.loc 2 59 0
  62 000e 0078     		ldrb	r0, [r0]	@ zero_extendqisi2
  63              	.LVL2:
  64 0010 14BF     		ite	ne
  65 0012 0321     		movne	r1, #3
  66              	.LVL3:
  67 0014 0421     		moveq	r1, #4
  68 0016 FFF7FEFF 		bl	pinModeDuet
  69              	.LVL4:
  70              	.LBE36:
  71              	.LBE37:
  72              		.loc 1 121 0
  73 001a 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
  74 001c 2BB1     		cbz	r3, .L10
  75              	.L3:
 122:../libraries/SharedSpi/SharedSpi.cpp **** 	{
 123:../libraries/SharedSpi/SharedSpi.cpp **** #if USART_SPI
 124:../libraries/SharedSpi/SharedSpi.cpp **** 		ConfigurePin(g_APinDescription[APIN_USART0_SCK]);
 125:../libraries/SharedSpi/SharedSpi.cpp **** 		ConfigurePin(g_APinDescription[APIN_USART0_MOSI]);
 126:../libraries/SharedSpi/SharedSpi.cpp **** 		ConfigurePin(g_APinDescription[APIN_USART0_MISO]);
 127:../libraries/SharedSpi/SharedSpi.cpp **** 		pmc_enable_periph_clk(ID_SSPI);
 128:../libraries/SharedSpi/SharedSpi.cpp **** 
 129:../libraries/SharedSpi/SharedSpi.cpp **** 		// Set USART0 in SPI master mode
 130:../libraries/SharedSpi/SharedSpi.cpp **** 		USART_SSPI->US_IDR = ~0u;
 131:../libraries/SharedSpi/SharedSpi.cpp **** 		USART_SSPI->US_CR = US_CR_RSTRX | US_CR_RSTTX | US_CR_RXDIS | US_CR_TXDIS;
 132:../libraries/SharedSpi/SharedSpi.cpp **** 		USART_SSPI->US_MR = US_MR_USART_MODE_SPI_MASTER
 133:../libraries/SharedSpi/SharedSpi.cpp **** 						| US_MR_USCLKS_MCK
 134:../libraries/SharedSpi/SharedSpi.cpp **** 						| US_MR_CHRL_8_BIT
 135:../libraries/SharedSpi/SharedSpi.cpp **** 						| US_MR_CHMODE_NORMAL;
 136:../libraries/SharedSpi/SharedSpi.cpp **** 		USART_SSPI->US_BRGR = SystemCoreClock/1000000;			// 1MHz SPI clock for now
 137:../libraries/SharedSpi/SharedSpi.cpp **** 		USART_SSPI->US_CR = US_CR_RSTRX | US_CR_RSTTX | US_CR_RXDIS | US_CR_TXDIS | US_CR_RSTSTA;
 138:../libraries/SharedSpi/SharedSpi.cpp **** #else
 139:../libraries/SharedSpi/SharedSpi.cpp **** 		ConfigurePin(g_APinDescription[APIN_SPI_SCK]);
 140:../libraries/SharedSpi/SharedSpi.cpp **** 		ConfigurePin(g_APinDescription[APIN_SPI_MOSI]);
 141:../libraries/SharedSpi/SharedSpi.cpp **** 		ConfigurePin(g_APinDescription[APIN_SPI_MISO]);
 142:../libraries/SharedSpi/SharedSpi.cpp **** 
 143:../libraries/SharedSpi/SharedSpi.cpp **** 		pmc_enable_periph_clk(ID_SSPI);
 144:../libraries/SharedSpi/SharedSpi.cpp **** 
 145:../libraries/SharedSpi/SharedSpi.cpp **** 		SSPI->SPI_CR = SPI_CR_SPIDIS;
 146:../libraries/SharedSpi/SharedSpi.cpp **** 	    SSPI->SPI_CR = SPI_CR_SWRST;
 147:../libraries/SharedSpi/SharedSpi.cpp **** 	    SSPI->SPI_MR = SPI_MR_MSTR | SPI_MR_MODFDIS;
 148:../libraries/SharedSpi/SharedSpi.cpp **** 
ARM GAS  /tmp/ccHBIC16.s 			page 6


 149:../libraries/SharedSpi/SharedSpi.cpp **** # if defined(USE_SAM3X_DMAC)
 150:../libraries/SharedSpi/SharedSpi.cpp **** 		pmc_enable_periph_clk(ID_DMAC);
 151:../libraries/SharedSpi/SharedSpi.cpp **** 		dmac_disable(DMAC);
 152:../libraries/SharedSpi/SharedSpi.cpp **** 		dmac_set_priority_mode(DMAC, DMAC_GCFG_ARB_CFG_FIXED);
 153:../libraries/SharedSpi/SharedSpi.cpp **** 		dmac_enable(DMAC);
 154:../libraries/SharedSpi/SharedSpi.cpp **** # endif
 155:../libraries/SharedSpi/SharedSpi.cpp **** 
 156:../libraries/SharedSpi/SharedSpi.cpp **** #endif
 157:../libraries/SharedSpi/SharedSpi.cpp **** 		commsInitDone = true;
 158:../libraries/SharedSpi/SharedSpi.cpp **** 	}
 159:../libraries/SharedSpi/SharedSpi.cpp **** 
 160:../libraries/SharedSpi/SharedSpi.cpp **** #if USART_SPI
 161:../libraries/SharedSpi/SharedSpi.cpp **** 	// On USARTs we only support 8-bit transfers. 5, 6, 7 and 9 are also available.
 162:../libraries/SharedSpi/SharedSpi.cpp **** 	device->bitsPerTransferControl = US_MR_CHRL_8_BIT;
 163:../libraries/SharedSpi/SharedSpi.cpp **** #else
 164:../libraries/SharedSpi/SharedSpi.cpp **** 	// On SPI we only support 8 and 16 bit modes. 11-15 bit modes are also available.
 165:../libraries/SharedSpi/SharedSpi.cpp **** 	switch (bits)
  76              		.loc 1 165 0
  77 001e 102E     		cmp	r6, #16
 166:../libraries/SharedSpi/SharedSpi.cpp **** 	{
 167:../libraries/SharedSpi/SharedSpi.cpp **** 	case 8:
 168:../libraries/SharedSpi/SharedSpi.cpp **** 	default:
 169:../libraries/SharedSpi/SharedSpi.cpp **** 		device->bitsPerTransferControl = SPI_CSR_BITS_8_BIT;
  78              		.loc 1 169 0
  79 0020 14BF     		ite	ne
  80 0022 0023     		movne	r3, #0
 170:../libraries/SharedSpi/SharedSpi.cpp **** 		break;
 171:../libraries/SharedSpi/SharedSpi.cpp **** 	case 16:
 172:../libraries/SharedSpi/SharedSpi.cpp **** 		device->bitsPerTransferControl = SPI_CSR_BITS_16_BIT;
  81              		.loc 1 172 0
  82 0024 8023     		moveq	r3, #128
  83 0026 A370     		strb	r3, [r4, #2]
  84 0028 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  85              	.LVL5:
  86              	.L10:
 139:../libraries/SharedSpi/SharedSpi.cpp **** 		ConfigurePin(g_APinDescription[APIN_SPI_MOSI]);
  87              		.loc 1 139 0
  88 002a 0C48     		ldr	r0, .L11+4
 145:../libraries/SharedSpi/SharedSpi.cpp **** 	    SSPI->SPI_CR = SPI_CR_SWRST;
  89              		.loc 1 145 0
  90 002c 0227     		movs	r7, #2
 139:../libraries/SharedSpi/SharedSpi.cpp **** 		ConfigurePin(g_APinDescription[APIN_SPI_MOSI]);
  91              		.loc 1 139 0
  92 002e FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
  93              	.LVL6:
 140:../libraries/SharedSpi/SharedSpi.cpp **** 		ConfigurePin(g_APinDescription[APIN_SPI_MISO]);
  94              		.loc 1 140 0
  95 0032 0B48     		ldr	r0, .L11+8
  96 0034 FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
  97              	.LVL7:
 141:../libraries/SharedSpi/SharedSpi.cpp **** 
  98              		.loc 1 141 0
  99 0038 0A48     		ldr	r0, .L11+12
 100 003a FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 101              	.LVL8:
 143:../libraries/SharedSpi/SharedSpi.cpp **** 
 102              		.loc 1 143 0
ARM GAS  /tmp/ccHBIC16.s 			page 7


 103 003e 1520     		movs	r0, #21
 104 0040 FFF7FEFF 		bl	pmc_enable_periph_clk
 105              	.LVL9:
 145:../libraries/SharedSpi/SharedSpi.cpp **** 	    SSPI->SPI_CR = SPI_CR_SWRST;
 106              		.loc 1 145 0
 107 0044 084B     		ldr	r3, .L11+16
 146:../libraries/SharedSpi/SharedSpi.cpp **** 	    SSPI->SPI_MR = SPI_MR_MSTR | SPI_MR_MODFDIS;
 108              		.loc 1 146 0
 109 0046 8020     		movs	r0, #128
 147:../libraries/SharedSpi/SharedSpi.cpp **** 
 110              		.loc 1 147 0
 111 0048 1121     		movs	r1, #17
 157:../libraries/SharedSpi/SharedSpi.cpp **** 	}
 112              		.loc 1 157 0
 113 004a 0122     		movs	r2, #1
 145:../libraries/SharedSpi/SharedSpi.cpp **** 	    SSPI->SPI_CR = SPI_CR_SWRST;
 114              		.loc 1 145 0
 115 004c 1F60     		str	r7, [r3]
 146:../libraries/SharedSpi/SharedSpi.cpp **** 	    SSPI->SPI_MR = SPI_MR_MSTR | SPI_MR_MODFDIS;
 116              		.loc 1 146 0
 117 004e 1860     		str	r0, [r3]
 147:../libraries/SharedSpi/SharedSpi.cpp **** 
 118              		.loc 1 147 0
 119 0050 5960     		str	r1, [r3, #4]
 157:../libraries/SharedSpi/SharedSpi.cpp **** 	}
 120              		.loc 1 157 0
 121 0052 2A70     		strb	r2, [r5]
 122 0054 E3E7     		b	.L3
 123              	.L12:
 124 0056 00BF     		.align	2
 125              	.L11:
 126 0058 00000000 		.word	.LANCHOR0
 127 005c B4040000 		.word	g_APinDescription+1204
 128 0060 98040000 		.word	g_APinDescription+1176
 129 0064 7C040000 		.word	g_APinDescription+1148
 130 0068 00800040 		.word	1073774592
 131              		.cfi_endproc
 132              	.LFE530:
 133              		.size	sspi_master_init, .-sspi_master_init
 134              		.section	.text.sspi_master_setup_device,"ax",%progbits
 135              		.align	1
 136              		.p2align 2,,3
 137              		.global	sspi_master_setup_device
 138              		.syntax unified
 139              		.thumb
 140              		.thumb_func
 141              		.fpu fpv5-d16
 142              		.type	sspi_master_setup_device, %function
 143              	sspi_master_setup_device:
 144              	.LFB531:
 173:../libraries/SharedSpi/SharedSpi.cpp **** 		break;
 174:../libraries/SharedSpi/SharedSpi.cpp **** 	}
 175:../libraries/SharedSpi/SharedSpi.cpp **** #endif
 176:../libraries/SharedSpi/SharedSpi.cpp **** }
 177:../libraries/SharedSpi/SharedSpi.cpp **** 
 178:../libraries/SharedSpi/SharedSpi.cpp **** /**
 179:../libraries/SharedSpi/SharedSpi.cpp ****  * \brief Set up an SPI device.
ARM GAS  /tmp/ccHBIC16.s 			page 8


 180:../libraries/SharedSpi/SharedSpi.cpp ****  *
 181:../libraries/SharedSpi/SharedSpi.cpp ****  * The returned device descriptor structure must be passed to the driver
 182:../libraries/SharedSpi/SharedSpi.cpp ****  * whenever that device should be used as current slave device.
 183:../libraries/SharedSpi/SharedSpi.cpp ****  *
 184:../libraries/SharedSpi/SharedSpi.cpp ****  * \param device    Pointer to SPI device struct that should be initialized.
 185:../libraries/SharedSpi/SharedSpi.cpp ****  */
 186:../libraries/SharedSpi/SharedSpi.cpp **** void sspi_master_setup_device(const struct sspi_device *device)
 187:../libraries/SharedSpi/SharedSpi.cpp **** {
 145              		.loc 1 187 0
 146              		.cfi_startproc
 147              		@ args = 0, pretend = 0, frame = 0
 148              		@ frame_needed = 0, uses_anonymous_args = 0
 149              	.LVL10:
 150 0000 10B5     		push	{r4, lr}
 151              		.cfi_def_cfa_offset 8
 152              		.cfi_offset 4, -8
 153              		.cfi_offset 14, -4
 154              	.LBB38:
 155              	.LBB39:
 156              		.file 3 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h"
   1:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /**
   2:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \file
   3:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
   4:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \brief Serial Peripheral Interface (SPI) driver for SAM.
   5:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
   6:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * Copyright (c) 2011-2016 Atmel Corporation. All rights reserved.
   7:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
   8:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \asf_license_start
   9:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
  10:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \page License
  11:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
  12:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * Redistribution and use in source and binary forms, with or without
  13:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * modification, are permitted provided that the following conditions are met:
  14:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
  15:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *    this list of conditions and the following disclaimer.
  17:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
  18:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *    this list of conditions and the following disclaimer in the documentation
  20:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *    and/or other materials provided with the distribution.
  21:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
  22:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *    from this software without specific prior written permission.
  24:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
  25:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * 4. This software may only be redistributed and used in connection with an
  26:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *    Atmel microcontroller product.
  27:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
  28:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
  31:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
ARM GAS  /tmp/ccHBIC16.s 			page 9


  38:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * POSSIBILITY OF SUCH DAMAGE.
  39:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
  40:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \asf_license_stop
  41:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
  42:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  */
  43:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /*
  44:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  */
  46:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
  47:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** #ifndef SPI_H_INCLUDED
  48:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** #define SPI_H_INCLUDED
  49:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
  50:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** #include "compiler.h"
  51:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
  52:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /// @cond 0
  53:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /**INDENT-OFF**/
  54:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** #ifdef __cplusplus
  55:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** extern "C" {
  56:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** #endif
  57:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /**INDENT-ON**/
  58:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /// @endcond
  59:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
  60:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /** Time-out value (number of attempts). */
  61:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** #define SPI_TIMEOUT       15000
  62:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
  63:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /** Status codes used by the SPI driver. */
  64:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** typedef enum
  65:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** {
  66:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	SPI_ERROR = -1,
  67:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	SPI_OK = 0,
  68:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	SPI_ERROR_TIMEOUT = 1,
  69:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	SPI_ERROR_ARGUMENT,
  70:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	SPI_ERROR_OVERRUN,
  71:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	SPI_ERROR_MODE_FAULT,
  72:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	SPI_ERROR_OVERRUN_AND_MODE_FAULT
  73:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** } spi_status_t;
  74:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
  75:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /** SPI Chip Select behavior modes while transferring. */
  76:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** typedef enum spi_cs_behavior {
  77:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	/** CS does not rise until a new transfer is requested on different chip select. */
  78:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	SPI_CS_KEEP_LOW = SPI_CSR_CSAAT,
  79:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	/** CS rises if there is no more data to transfer. */
  80:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	SPI_CS_RISE_NO_TX = 0,
  81:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	/** CS is de-asserted systematically during a time DLYBCS. */
  82:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	SPI_CS_RISE_FORCED = SPI_CSR_CSNAAT
  83:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** } spi_cs_behavior_t;
  84:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
  85:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /**
  86:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \brief Generate Peripheral Chip Select Value from Chip Select ID
  87:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \note When chip select n is working, PCS bit n is set to low level.
  88:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
  89:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \param chip_sel_id The chip select number used
  90:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  */
  91:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** #define spi_get_pcs(chip_sel_id) ((~(1u<<(chip_sel_id)))&0xF)
  92:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
  93:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /**
  94:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \brief Reset SPI and set it to Slave mode.
ARM GAS  /tmp/ccHBIC16.s 			page 10


  95:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
  96:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
  97:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  */
  98:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** static inline void spi_reset(Spi *p_spi)
  99:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** {
 100:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	p_spi->SPI_CR = SPI_CR_SWRST;
 157              		.loc 3 100 0
 158 0002 0F4B     		ldr	r3, .L20
 159              	.LBE39:
 160              	.LBE38:
 161              		.loc 1 187 0
 162 0004 0446     		mov	r4, r0
 188:../libraries/SharedSpi/SharedSpi.cpp **** #if USART_SPI
 189:../libraries/SharedSpi/SharedSpi.cpp **** 	USART_SSPI->US_CR = US_CR_RXDIS | US_CR_TXDIS;			// disable transmitter and receiver
 190:../libraries/SharedSpi/SharedSpi.cpp **** 	USART_SSPI->US_BRGR = SystemCoreClock/device->clockFrequency;
 191:../libraries/SharedSpi/SharedSpi.cpp **** 	uint32_t mr = US_MR_USART_MODE_SPI_MASTER
 192:../libraries/SharedSpi/SharedSpi.cpp **** 					| US_MR_USCLKS_MCK
 193:../libraries/SharedSpi/SharedSpi.cpp **** 					| US_MR_CHRL_8_BIT
 194:../libraries/SharedSpi/SharedSpi.cpp **** 					| US_MR_CHMODE_NORMAL
 195:../libraries/SharedSpi/SharedSpi.cpp **** 					| US_MR_CLKO;
 196:../libraries/SharedSpi/SharedSpi.cpp **** 	if (device->spiMode & 2)
 197:../libraries/SharedSpi/SharedSpi.cpp **** 	{
 198:../libraries/SharedSpi/SharedSpi.cpp **** 		mr |= US_MR_CPOL;
 199:../libraries/SharedSpi/SharedSpi.cpp **** 	}
 200:../libraries/SharedSpi/SharedSpi.cpp **** 	if ((device->spiMode & 1) == 0)							// the bit is called CPHA but is actually NPCHA
 201:../libraries/SharedSpi/SharedSpi.cpp **** 	{
 202:../libraries/SharedSpi/SharedSpi.cpp **** 		mr |= US_MR_CPHA;
 203:../libraries/SharedSpi/SharedSpi.cpp **** 	}
 204:../libraries/SharedSpi/SharedSpi.cpp **** 	USART_SSPI->US_MR = mr;
 205:../libraries/SharedSpi/SharedSpi.cpp **** 	USART_SSPI->US_CR = US_CR_RSTRX | US_CR_RSTTX;			// reset transmitter and receiver (required - see
 206:../libraries/SharedSpi/SharedSpi.cpp **** 	USART_SSPI->US_CR = US_CR_RXEN | US_CR_TXEN;			// enable transmitter and receiver
 207:../libraries/SharedSpi/SharedSpi.cpp **** #else
 208:../libraries/SharedSpi/SharedSpi.cpp **** 	spi_reset(SSPI);
 209:../libraries/SharedSpi/SharedSpi.cpp ****     SSPI->SPI_MR = SPI_MR_MSTR | SPI_MR_MODFDIS;
 210:../libraries/SharedSpi/SharedSpi.cpp **** 
 211:../libraries/SharedSpi/SharedSpi.cpp **** 	// Set SPI mode, clock frequency, CS not active after transfer, delay between transfers
 212:../libraries/SharedSpi/SharedSpi.cpp **** 	uint16_t baud_div = (uint16_t)spi_calc_baudrate_div(device->clockFrequency, SystemCoreClock);
 163              		.loc 1 212 0
 164 0006 0F4A     		ldr	r2, .L20+4
 165              	.LBB42:
 166              	.LBB40:
 167              		.loc 3 100 0
 168 0008 8020     		movs	r0, #128
 169              	.LVL11:
 170              	.LBE40:
 171              	.LBE42:
 209:../libraries/SharedSpi/SharedSpi.cpp **** 
 172              		.loc 1 209 0
 173 000a 1121     		movs	r1, #17
 174              	.LBB43:
 175              	.LBB41:
 176              		.loc 3 100 0
 177 000c 1860     		str	r0, [r3]
 178              	.LVL12:
 179              	.LBE41:
 180              	.LBE43:
 209:../libraries/SharedSpi/SharedSpi.cpp **** 
ARM GAS  /tmp/ccHBIC16.s 			page 11


 181              		.loc 1 209 0
 182 000e 5960     		str	r1, [r3, #4]
 183              		.loc 1 212 0
 184 0010 1168     		ldr	r1, [r2]
 185 0012 6068     		ldr	r0, [r4, #4]
 186 0014 FFF7FEFF 		bl	spi_calc_baudrate_div
 187              	.LVL13:
 213:../libraries/SharedSpi/SharedSpi.cpp **** 	uint32_t csr = SPI_CSR_SCBR(baud_div)				// Baud rate
 214:../libraries/SharedSpi/SharedSpi.cpp **** 					| device->bitsPerTransferControl	// Transfer bit width
 188              		.loc 1 214 0
 189 0018 A278     		ldrb	r2, [r4, #2]	@ zero_extendqisi2
 213:../libraries/SharedSpi/SharedSpi.cpp **** 	uint32_t csr = SPI_CSR_SCBR(baud_div)				// Baud rate
 190              		.loc 1 213 0
 191 001a 0002     		lsls	r0, r0, #8
 192              	.LVL14:
 215:../libraries/SharedSpi/SharedSpi.cpp **** 					| SPI_CSR_DLYBCT(0);      			// Transfer delay
 216:../libraries/SharedSpi/SharedSpi.cpp **** 	if ((device->spiMode & 0x01) == 0)
 193              		.loc 1 216 0
 194 001c E378     		ldrb	r3, [r4, #3]	@ zero_extendqisi2
 213:../libraries/SharedSpi/SharedSpi.cpp **** 	uint32_t csr = SPI_CSR_SCBR(baud_div)				// Baud rate
 195              		.loc 1 213 0
 196 001e 00F47F40 		and	r0, r0, #65280
 215:../libraries/SharedSpi/SharedSpi.cpp **** 					| SPI_CSR_DLYBCT(0);      			// Transfer delay
 197              		.loc 1 215 0
 198 0022 1043     		orrs	r0, r0, r2
 199              	.LVL15:
 200              		.loc 1 216 0
 201 0024 DA07     		lsls	r2, r3, #31
 202              	.LBB44:
 203              	.LBB45:
 101:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** }
 102:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
 103:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /**
 104:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \brief Enable SPI.
 105:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 106:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 107:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  */
 108:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** static inline void spi_enable(Spi *p_spi)
 109:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** {
 110:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	p_spi->SPI_CR = SPI_CR_SPIEN;
 204              		.loc 3 110 0
 205 0026 4FF00102 		mov	r2, #1
 206              	.LBE45:
 207              	.LBE44:
 217:../libraries/SharedSpi/SharedSpi.cpp **** 	{
 218:../libraries/SharedSpi/SharedSpi.cpp **** 		csr |= SPI_CSR_NCPHA;
 208              		.loc 1 218 0
 209 002a 58BF     		it	pl
 210 002c 40F00200 		orrpl	r0, r0, #2
 211              	.LVL16:
 219:../libraries/SharedSpi/SharedSpi.cpp **** 	}
 220:../libraries/SharedSpi/SharedSpi.cpp **** 	if (device->spiMode & 0x02)
 212              		.loc 1 220 0
 213 0030 9B07     		lsls	r3, r3, #30
 221:../libraries/SharedSpi/SharedSpi.cpp **** 	{
 222:../libraries/SharedSpi/SharedSpi.cpp **** 		csr |= SPI_CSR_CPOL;
 223:../libraries/SharedSpi/SharedSpi.cpp **** 	}
ARM GAS  /tmp/ccHBIC16.s 			page 12


 224:../libraries/SharedSpi/SharedSpi.cpp **** 	SSPI->SPI_CSR[PERIPHERAL_CHANNEL_ID] = csr;
 214              		.loc 1 224 0
 215 0032 034B     		ldr	r3, .L20
 222:../libraries/SharedSpi/SharedSpi.cpp **** 	}
 216              		.loc 1 222 0
 217 0034 48BF     		it	mi
 218 0036 40F00100 		orrmi	r0, r0, #1
 219              	.LVL17:
 220              		.loc 1 224 0
 221 003a 9863     		str	r0, [r3, #56]
 222              	.LVL18:
 223              	.LBB47:
 224              	.LBB46:
 225              		.loc 3 110 0
 226 003c 1A60     		str	r2, [r3]
 227              	.LVL19:
 228 003e 10BD     		pop	{r4, pc}
 229              	.LVL20:
 230              	.L21:
 231              		.align	2
 232              	.L20:
 233 0040 00800040 		.word	1073774592
 234 0044 00000000 		.word	SystemCoreClock
 235              	.LBE46:
 236              	.LBE47:
 237              		.cfi_endproc
 238              	.LFE531:
 239              		.size	sspi_master_setup_device, .-sspi_master_setup_device
 240              		.section	.text.sspi_select_device,"ax",%progbits
 241              		.align	1
 242              		.p2align 2,,3
 243              		.global	sspi_select_device
 244              		.syntax unified
 245              		.thumb
 246              		.thumb_func
 247              		.fpu fpv5-d16
 248              		.type	sspi_select_device, %function
 249              	sspi_select_device:
 250              	.LFB532:
 225:../libraries/SharedSpi/SharedSpi.cpp **** 	spi_enable(SSPI);
 226:../libraries/SharedSpi/SharedSpi.cpp **** #endif
 227:../libraries/SharedSpi/SharedSpi.cpp **** }
 228:../libraries/SharedSpi/SharedSpi.cpp **** 
 229:../libraries/SharedSpi/SharedSpi.cpp **** /**
 230:../libraries/SharedSpi/SharedSpi.cpp ****  * \brief Select the given device on the SPI bus.
 231:../libraries/SharedSpi/SharedSpi.cpp ****  *
 232:../libraries/SharedSpi/SharedSpi.cpp ****  * Set device specific setting and call board chip select.
 233:../libraries/SharedSpi/SharedSpi.cpp ****  *
 234:../libraries/SharedSpi/SharedSpi.cpp ****  * \param device  SPI device.
 235:../libraries/SharedSpi/SharedSpi.cpp ****  *
 236:../libraries/SharedSpi/SharedSpi.cpp ****  */
 237:../libraries/SharedSpi/SharedSpi.cpp **** void sspi_select_device(const struct sspi_device *device)
 238:../libraries/SharedSpi/SharedSpi.cpp **** {
 251              		.loc 1 238 0
 252              		.cfi_startproc
 253              		@ args = 0, pretend = 0, frame = 0
 254              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccHBIC16.s 			page 13


 255              		@ link register save eliminated.
 256              	.LVL21:
 239:../libraries/SharedSpi/SharedSpi.cpp **** #if SAM3XA
 240:../libraries/SharedSpi/SharedSpi.cpp **** 	spi_set_peripheral_chip_select_value(SSPI, spi_get_pcs(PERIPHERAL_CHANNEL_ID));
 241:../libraries/SharedSpi/SharedSpi.cpp **** #endif
 242:../libraries/SharedSpi/SharedSpi.cpp **** 
 243:../libraries/SharedSpi/SharedSpi.cpp **** 	// Enable the CS line
 244:../libraries/SharedSpi/SharedSpi.cpp **** 	digitalWrite(device->csPin, device->csPolarity);
 257              		.loc 1 244 0
 258 0000 4178     		ldrb	r1, [r0, #1]	@ zero_extendqisi2
 259 0002 0078     		ldrb	r0, [r0]	@ zero_extendqisi2
 260              	.LVL22:
 261 0004 FFF7FEBF 		b	digitalWrite
 262              	.LVL23:
 263              		.cfi_endproc
 264              	.LFE532:
 265              		.size	sspi_select_device, .-sspi_select_device
 266              		.section	.text.sspi_deselect_device,"ax",%progbits
 267              		.align	1
 268              		.p2align 2,,3
 269              		.global	sspi_deselect_device
 270              		.syntax unified
 271              		.thumb
 272              		.thumb_func
 273              		.fpu fpv5-d16
 274              		.type	sspi_deselect_device, %function
 275              	sspi_deselect_device:
 276              	.LFB533:
 245:../libraries/SharedSpi/SharedSpi.cpp **** }
 246:../libraries/SharedSpi/SharedSpi.cpp **** 
 247:../libraries/SharedSpi/SharedSpi.cpp **** /**
 248:../libraries/SharedSpi/SharedSpi.cpp ****  * \brief Deselect the given device on the SPI bus.
 249:../libraries/SharedSpi/SharedSpi.cpp ****  *
 250:../libraries/SharedSpi/SharedSpi.cpp ****  * Call board chip deselect.
 251:../libraries/SharedSpi/SharedSpi.cpp ****  *
 252:../libraries/SharedSpi/SharedSpi.cpp ****  * \param device  SPI device.
 253:../libraries/SharedSpi/SharedSpi.cpp ****  *
 254:../libraries/SharedSpi/SharedSpi.cpp ****  * \pre SPI device must be selected with spi_select_device() first.
 255:../libraries/SharedSpi/SharedSpi.cpp ****  */
 256:../libraries/SharedSpi/SharedSpi.cpp **** void sspi_deselect_device(const struct sspi_device *device)
 257:../libraries/SharedSpi/SharedSpi.cpp **** {
 277              		.loc 1 257 0
 278              		.cfi_startproc
 279              		@ args = 0, pretend = 0, frame = 0
 280              		@ frame_needed = 0, uses_anonymous_args = 0
 281              		@ link register save eliminated.
 282              	.LVL24:
 283              		.loc 1 257 0
 284 0000 43F69923 		movw	r3, #15001
 285              	.LBB48:
 286              	.LBB49:
 287              	.LBB50:
 288              	.LBB51:
 111:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** }
 112:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
 113:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /**
 114:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \brief Disable SPI.
ARM GAS  /tmp/ccHBIC16.s 			page 14


 115:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 116:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \note CS is de-asserted, which indicates that the last data is done, and user
 117:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * should check TX_EMPTY before disabling SPI.
 118:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 119:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 120:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  */
 121:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** static inline void spi_disable(Spi *p_spi)
 122:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** {
 123:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	p_spi->SPI_CR = SPI_CR_SPIDIS;
 124:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** }
 125:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
 126:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /**
 127:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \brief Issue a LASTXFER command.
 128:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *  The next transfer is the last transfer and after that CS is de-asserted.
 129:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 130:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 131:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  */
 132:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** static inline void spi_set_lastxfer(Spi *p_spi)
 133:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** {
 134:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	p_spi->SPI_CR = SPI_CR_LASTXFER;
 135:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** }
 136:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
 137:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /**
 138:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \brief Set SPI to Master mode.
 139:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 140:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 141:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  */
 142:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** static inline void spi_set_master_mode(Spi *p_spi)
 143:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** {
 144:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	p_spi->SPI_MR |= SPI_MR_MSTR;
 145:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** }
 146:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
 147:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /**
 148:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \brief Set SPI to Slave mode.
 149:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 150:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 151:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  */
 152:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** static inline void spi_set_slave_mode(Spi *p_spi)
 153:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** {
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	p_spi->SPI_MR &= (~SPI_MR_MSTR);
 155:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** }
 156:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
 157:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /**
 158:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \brief Get SPI work mode.
 159:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 160:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 161:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 162:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \return 1 for master mode, 0 for slave mode.
 163:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  */
 164:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** static inline uint32_t spi_get_mode(Spi *p_spi)
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** {
 166:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	if (p_spi->SPI_MR & SPI_MR_MSTR) {
 167:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 		return 1;
 168:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	} else {
 169:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 		return 0;
 170:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	}
 171:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** }
ARM GAS  /tmp/ccHBIC16.s 			page 15


 172:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
 173:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /**
 174:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \brief Set Variable Peripheral Select.
 175:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * Peripheral Chip Select can be controlled by SPI_TDR.
 176:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 177:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 178:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  */
 179:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** static inline void spi_set_variable_peripheral_select(Spi *p_spi)
 180:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** {
 181:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	p_spi->SPI_MR |= SPI_MR_PS;
 182:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** }
 183:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
 184:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /**
 185:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \brief Set Fixed Peripheral Select.
 186:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *  Peripheral Chip Select is controlled by SPI_MR.
 187:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 188:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 189:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  */
 190:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** static inline void spi_set_fixed_peripheral_select(Spi *p_spi)
 191:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** {
 192:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	p_spi->SPI_MR &= (~SPI_MR_PS);
 193:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** }
 194:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
 195:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /**
 196:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \brief Get Peripheral Select mode.
 197:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 198:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 199:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 200:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \return 1 for Variable mode, 0 for fixed mode.
 201:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  */
 202:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** static inline uint32_t spi_get_peripheral_select_mode(Spi *p_spi)
 203:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** {
 204:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	if (p_spi->SPI_MR & SPI_MR_PS) {
 205:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 		return 1;
 206:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	} else {
 207:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 		return 0;
 208:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	}
 209:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** }
 210:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
 211:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /**
 212:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \brief Enable Peripheral Select Decode.
 213:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 214:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 215:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  */
 216:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** static inline void spi_enable_peripheral_select_decode(Spi *p_spi)
 217:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** {
 218:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	p_spi->SPI_MR |= SPI_MR_PCSDEC;
 219:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** }
 220:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
 221:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /**
 222:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \brief Disable Peripheral Select Decode.
 223:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 224:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 225:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  */
 226:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** static inline void spi_disable_peripheral_select_decode(Spi *p_spi)
 227:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** {
 228:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	p_spi->SPI_MR &= (~SPI_MR_PCSDEC);
ARM GAS  /tmp/ccHBIC16.s 			page 16


 229:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** }
 230:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
 231:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /**
 232:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \brief Get Peripheral Select Decode mode.
 233:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 234:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 235:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 236:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \return 1 for decode mode, 0 for direct mode.
 237:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  */
 238:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** static inline uint32_t spi_get_peripheral_select_decode_setting(Spi *p_spi)
 239:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** {
 240:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	if (p_spi->SPI_MR & SPI_MR_PCSDEC) {
 241:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 		return 1;
 242:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	} else {
 243:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 		return 0;
 244:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	}
 245:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** }
 246:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
 247:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /**
 248:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \brief Enable Mode Fault Detection.
 249:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 250:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 251:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  */
 252:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** static inline void spi_enable_mode_fault_detect(Spi *p_spi)
 253:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** {
 254:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	p_spi->SPI_MR &= (~SPI_MR_MODFDIS);
 255:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** }
 256:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
 257:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /**
 258:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \brief Disable Mode Fault Detection.
 259:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 260:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 261:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  */
 262:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** static inline void spi_disable_mode_fault_detect(Spi *p_spi)
 263:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** {
 264:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	p_spi->SPI_MR |= SPI_MR_MODFDIS;
 265:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** }
 266:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
 267:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /**
 268:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \brief Check if mode fault detection is enabled.
 269:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 270:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 271:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 272:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \return 1 for disabled, 0 for enabled.
 273:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  */
 274:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** static inline uint32_t spi_get_mode_fault_detect_setting(Spi *p_spi)
 275:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** {
 276:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	if (p_spi->SPI_MR & SPI_MR_MODFDIS) {
 277:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 		return 1;
 278:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	} else {
 279:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 		return 0;
 280:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	}
 281:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** }
 282:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
 283:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /**
 284:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \brief Enable waiting RX_EMPTY before transfer starts.
 285:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
ARM GAS  /tmp/ccHBIC16.s 			page 17


 286:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 287:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  */
 288:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** static inline void spi_enable_tx_on_rx_empty(Spi *p_spi)
 289:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** {
 290:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	p_spi->SPI_MR |= SPI_MR_WDRBT;
 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** }
 292:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
 293:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /**
 294:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \brief Disable waiting RX_EMPTY before transfer starts.
 295:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 296:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 297:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  */
 298:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** static inline void spi_disable_tx_on_rx_empty(Spi *p_spi)
 299:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** {
 300:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	p_spi->SPI_MR &= (~SPI_MR_WDRBT);
 301:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** }
 302:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
 303:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /**
 304:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \brief Check if SPI waits RX_EMPTY before transfer starts.
 305:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 306:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 307:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 308:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \return 1 for SPI waits, 0 for no wait.
 309:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  */
 310:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** static inline uint32_t spi_get_tx_on_rx_empty_setting(Spi *p_spi)
 311:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** {
 312:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	if (p_spi->SPI_MR & SPI_MR_WDRBT) {
 313:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 		return 1;
 314:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	} else {
 315:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 		return 0;
 316:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	}
 317:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** }
 318:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /**
 320:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \brief Enable loopback mode.
 321:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 322:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 323:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  */
 324:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** static inline void spi_enable_loopback(Spi *p_spi)
 325:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** {
 326:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	p_spi->SPI_MR |= SPI_MR_LLB;
 327:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** }
 328:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
 329:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /**
 330:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \brief Disable loopback mode.
 331:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 332:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 333:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  */
 334:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** static inline void spi_disable_loopback(Spi *p_spi)
 335:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** {
 336:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	p_spi->SPI_MR &= (~SPI_MR_LLB);
 337:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** }
 338:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
 339:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** void spi_enable_clock(Spi *p_spi);
 340:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** void spi_disable_clock(Spi *p_spi);
 341:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** void spi_set_peripheral_chip_select_value(Spi *p_spi, uint32_t ul_value);
 342:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** void spi_set_delay_between_chip_select(Spi *p_spi, uint32_t ul_delay);
ARM GAS  /tmp/ccHBIC16.s 			page 18


 343:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** spi_status_t spi_read(Spi *p_spi, uint16_t *us_data, uint8_t *p_pcs);
 344:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** spi_status_t spi_write(Spi *p_spi, uint16_t us_data, uint8_t uc_pcs,
 345:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 		uint8_t uc_last);
 346:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
 347:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /**
 348:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \brief Read status register.
 349:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 350:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 351:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 352:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \return SPI status register value.
 353:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  */
 354:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** static inline uint32_t spi_read_status(Spi *p_spi)
 355:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** {
 356:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	return p_spi->SPI_SR;
 357:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** }
 358:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
 359:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /**
 360:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \brief Test if the SPI is enabled.
 361:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 362:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 363:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 364:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \return 1 if the SPI is enabled, otherwise 0.
 365:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  */
 366:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** static inline uint32_t spi_is_enabled(Spi *p_spi)
 367:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** {
 368:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	if (p_spi->SPI_SR & SPI_SR_SPIENS) {
 369:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 		return 1;
 370:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	} else {
 371:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 		return 0;
 372:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	}
 373:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** }
 374:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
 375:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /**
 376:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \brief Put one data to a SPI peripheral.
 377:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 378:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \param p_spi Base address of the SPI instance.
 379:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \param data The data byte to be loaded
 380:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 381:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  */
 382:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** static inline void spi_put(Spi *p_spi, uint16_t data)
 383:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** {
 384:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	p_spi->SPI_TDR = SPI_TDR_TD(data);
 385:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** }
 386:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
 387:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /** \brief Get one data to a SPI peripheral.
 388:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 389:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \param p_spi Base address of the SPI instance.
 390:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \return The data byte
 391:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 392:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  */
 393:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** static inline uint16_t spi_get(Spi *p_spi)
 394:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** {
 395:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	return (p_spi->SPI_RDR & SPI_RDR_RD_Msk);
 396:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** }
 397:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
 398:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /**
 399:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \brief Check if all transmissions are complete.
ARM GAS  /tmp/ccHBIC16.s 			page 19


 400:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 401:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 402:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 403:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \retval 1 if transmissions are complete.
 404:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \retval 0 if transmissions are not complete.
 405:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  */
 406:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** static inline uint32_t spi_is_tx_empty(Spi *p_spi)
 407:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** {
 408:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	if (p_spi->SPI_SR & SPI_SR_TXEMPTY) {
 289              		.loc 3 408 0
 290 0004 0649     		ldr	r1, .L28
 291 0006 01E0     		b	.L25
 292              	.LVL25:
 293              	.L27:
 294              	.LBE51:
 295              	.LBE50:
  88:../libraries/SharedSpi/SharedSpi.cpp **** 		{
 296              		.loc 1 88 0
 297 0008 013B     		subs	r3, r3, #1
 298              	.LVL26:
 299 000a 02D0     		beq	.L24
 300              	.LVL27:
 301              	.L25:
 302              	.LBB53:
 303              	.LBB52:
 304              		.loc 3 408 0
 305 000c 0A69     		ldr	r2, [r1, #16]
 306 000e 9205     		lsls	r2, r2, #22
 307 0010 FAD5     		bpl	.L27
 308              	.LVL28:
 309              	.L24:
 310              	.LBE52:
 311              	.LBE53:
 312              	.LBE49:
 313              	.LBE48:
 258:../libraries/SharedSpi/SharedSpi.cpp **** 	waitForTxEmpty();
 259:../libraries/SharedSpi/SharedSpi.cpp **** 
 260:../libraries/SharedSpi/SharedSpi.cpp **** 	// Disable the CS line
 261:../libraries/SharedSpi/SharedSpi.cpp **** 	digitalWrite(device->csPin, !device->csPolarity);
 314              		.loc 1 261 0
 315 0012 4178     		ldrb	r1, [r0, #1]	@ zero_extendqisi2
 316 0014 0078     		ldrb	r0, [r0]	@ zero_extendqisi2
 317              	.LVL29:
 318 0016 81F00101 		eor	r1, r1, #1
 319 001a FFF7FEBF 		b	digitalWrite
 320              	.LVL30:
 321              	.L29:
 322 001e 00BF     		.align	2
 323              	.L28:
 324 0020 00800040 		.word	1073774592
 325              		.cfi_endproc
 326              	.LFE533:
 327              		.size	sspi_deselect_device, .-sspi_deselect_device
 328              		.section	.text.sspi_transceive_packet,"ax",%progbits
 329              		.align	1
 330              		.p2align 2,,3
 331              		.global	sspi_transceive_packet
ARM GAS  /tmp/ccHBIC16.s 			page 20


 332              		.syntax unified
 333              		.thumb
 334              		.thumb_func
 335              		.fpu fpv5-d16
 336              		.type	sspi_transceive_packet, %function
 337              	sspi_transceive_packet:
 338              	.LFB534:
 262:../libraries/SharedSpi/SharedSpi.cpp **** }
 263:../libraries/SharedSpi/SharedSpi.cpp **** 
 264:../libraries/SharedSpi/SharedSpi.cpp **** /**
 265:../libraries/SharedSpi/SharedSpi.cpp ****  * \brief Send and receive a sequence of bytes from an SPI device.
 266:../libraries/SharedSpi/SharedSpi.cpp ****  *
 267:../libraries/SharedSpi/SharedSpi.cpp ****  * \param tx_data   Data buffer to send.
 268:../libraries/SharedSpi/SharedSpi.cpp ****  * \param rx_data   Data buffer to read.
 269:../libraries/SharedSpi/SharedSpi.cpp ****  * \param len       Length of data to be read.
 270:../libraries/SharedSpi/SharedSpi.cpp ****  *
 271:../libraries/SharedSpi/SharedSpi.cpp ****  * \pre SPI device must be selected with spi_select_device() first.
 272:../libraries/SharedSpi/SharedSpi.cpp ****  */
 273:../libraries/SharedSpi/SharedSpi.cpp **** spi_status_t sspi_transceive_packet(const uint8_t *tx_data, uint8_t *rx_data, size_t len)
 274:../libraries/SharedSpi/SharedSpi.cpp **** {
 339              		.loc 1 274 0
 340              		.cfi_startproc
 341              		@ args = 0, pretend = 0, frame = 0
 342              		@ frame_needed = 0, uses_anonymous_args = 0
 343              	.LVL31:
 344              	.LBB54:
 275:../libraries/SharedSpi/SharedSpi.cpp **** 	for (uint32_t i = 0; i < len; ++i)
 345              		.loc 1 275 0
 346 0000 002A     		cmp	r2, #0
 347 0002 43D0     		beq	.L46
 348              	.LBE54:
 274:../libraries/SharedSpi/SharedSpi.cpp **** 	for (uint32_t i = 0; i < len; ++i)
 349              		.loc 1 274 0
 350 0004 F0B5     		push	{r4, r5, r6, r7, lr}
 351              		.cfi_def_cfa_offset 20
 352              		.cfi_offset 4, -20
 353              		.cfi_offset 5, -16
 354              		.cfi_offset 6, -12
 355              		.cfi_offset 7, -8
 356              		.cfi_offset 14, -4
 357 0006 9646     		mov	lr, r2
 358              	.LBB85:
 359              		.loc 1 275 0
 360 0008 0027     		movs	r7, #0
 361              	.LVL32:
 362              	.LBB55:
 363              	.LBB56:
 364              	.LBB57:
 365              	.LBB58:
 366              	.LBB59:
 409:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 		return 1;
 410:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	} else {
 411:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 		return 0;
 412:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	}
 413:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** }
 414:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
 415:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /**
ARM GAS  /tmp/ccHBIC16.s 			page 21


 416:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \brief Check if all transmissions are ready.
 417:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 418:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 419:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 420:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \retval 1 if transmissions are complete.
 421:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \retval 0 if transmissions are not complete.
 422:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  */
 423:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** static inline uint32_t spi_is_tx_ready(Spi *p_spi)
 424:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** {
 425:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	if (p_spi->SPI_SR & SPI_SR_TDRE) {
 367              		.loc 3 425 0
 368 000a 284D     		ldr	r5, .L81
 369              	.LBE59:
 370              	.LBE58:
 371              	.LBE57:
 372              	.LBE56:
 373              	.LBB63:
 374              	.LBB64:
 375              	.LBB65:
 376              	.LBB66:
 377              	.LBB67:
 378              	.LBB68:
 426:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 		return 1;
 427:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	} else {
 428:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 		return 0;
 429:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	}
 430:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** }
 431:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
 432:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /**
 433:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \brief Check if the SPI contains a received character.
 434:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 435:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 436:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 437:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \return 1 if the SPI Receive Holding Register is full, otherwise 0.
 438:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  */
 439:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** static inline uint32_t spi_is_rx_full(Spi *p_spi)
 440:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** {
 441:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	if (p_spi->SPI_SR & SPI_SR_RDRF) {
 442:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 		return 1;
 443:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	} else {
 444:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 		return 0;
 445:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	}
 446:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** }
 447:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 
 448:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** /**
 449:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \brief Check if all receptions are ready.
 450:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 451:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 452:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  *
 453:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  * \return 1 if the SPI Receiver is ready, otherwise 0.
 454:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h ****  */
 455:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** static inline uint32_t spi_is_rx_ready(Spi *p_spi)
 456:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** {
 457:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 	if ((p_spi->SPI_SR & (SPI_SR_RDRF | SPI_SR_TXEMPTY))
 379              		.loc 3 457 0
 380 000c 40F20126 		movw	r6, #513
 381              	.LBE68:
ARM GAS  /tmp/ccHBIC16.s 			page 22


 382              	.LBE67:
 383              	.LBE66:
 384              	.LBE65:
 385              	.LBE64:
 386              	.LBE63:
 276:../libraries/SharedSpi/SharedSpi.cpp **** 	{
 277:../libraries/SharedSpi/SharedSpi.cpp **** 		uint32_t dOut = (tx_data == nullptr) ? 0x000000FF : (uint32_t)*tx_data++;
 387              		.loc 1 277 0
 388 0010 00B3     		cbz	r0, .L47
 389              	.LVL33:
 390              	.L76:
 391              		.loc 1 277 0 is_stmt 0 discriminator 1
 392 0012 0278     		ldrb	r2, [r0]	@ zero_extendqisi2
 393 0014 0130     		adds	r0, r0, #1
 394              	.LVL34:
 395              	.L33:
 396              		.loc 1 277 0 discriminator 4
 397 0016 43F69823 		movw	r3, #15000
 398 001a 01E0     		b	.L35
 399              	.LVL35:
 400              	.L71:
 401              	.LBB75:
 402              	.LBB62:
  70:../libraries/SharedSpi/SharedSpi.cpp **** 		{
 403              		.loc 1 70 0 is_stmt 1
 404 001c 013B     		subs	r3, r3, #1
 405              	.LVL36:
 406 001e 1BD0     		beq	.L40
 407              	.LVL37:
 408              	.L35:
 409              	.LBB61:
 410              	.LBB60:
 425:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 		return 1;
 411              		.loc 3 425 0
 412 0020 2C69     		ldr	r4, [r5, #16]
 413 0022 A407     		lsls	r4, r4, #30
 414 0024 FAD5     		bpl	.L71
 415              	.LVL38:
 416              	.LBE60:
 417              	.LBE61:
 418              	.LBE62:
 419              	.LBE75:
 278:../libraries/SharedSpi/SharedSpi.cpp **** 		if (waitForTxReady())
 279:../libraries/SharedSpi/SharedSpi.cpp **** 		{
 280:../libraries/SharedSpi/SharedSpi.cpp **** 			return SPI_ERROR_TIMEOUT;
 281:../libraries/SharedSpi/SharedSpi.cpp **** 		}
 282:../libraries/SharedSpi/SharedSpi.cpp **** 
 283:../libraries/SharedSpi/SharedSpi.cpp **** 		// Write to transmit register
 284:../libraries/SharedSpi/SharedSpi.cpp **** #if USART_SPI
 285:../libraries/SharedSpi/SharedSpi.cpp **** 		USART_SSPI->US_THR = dOut;
 286:../libraries/SharedSpi/SharedSpi.cpp **** #else
 287:../libraries/SharedSpi/SharedSpi.cpp **** 		if (i + 1 == len)
 420              		.loc 1 287 0
 421 0026 0137     		adds	r7, r7, #1
 422              	.LVL39:
 423 0028 BE45     		cmp	lr, r7
 424 002a 1DD0     		beq	.L72
ARM GAS  /tmp/ccHBIC16.s 			page 23


 288:../libraries/SharedSpi/SharedSpi.cpp **** 		{
 289:../libraries/SharedSpi/SharedSpi.cpp **** 			dOut |= SPI_TDR_LASTXFER;
 290:../libraries/SharedSpi/SharedSpi.cpp **** 		}
 291:../libraries/SharedSpi/SharedSpi.cpp **** 		SSPI->SPI_TDR = dOut;
 425              		.loc 1 291 0
 426 002c EA60     		str	r2, [r5, #12]
 427              	.LBB76:
 292:../libraries/SharedSpi/SharedSpi.cpp **** #endif
 293:../libraries/SharedSpi/SharedSpi.cpp **** 
 294:../libraries/SharedSpi/SharedSpi.cpp **** 		// Some devices are transmit-only e.g. 12864 display, so don't wait for received data if we don't
 295:../libraries/SharedSpi/SharedSpi.cpp **** 		if (rx_data != nullptr)
 428              		.loc 1 295 0
 429 002e A9B1     		cbz	r1, .L73
 430              	.L45:
 431              	.LBE76:
 277:../libraries/SharedSpi/SharedSpi.cpp **** 		if (waitForTxReady())
 432              		.loc 1 277 0
 433 0030 43F69823 		movw	r3, #15000
 434 0034 01E0     		b	.L41
 435              	.LVL40:
 436              	.L74:
 437              	.LBB77:
 438              	.LBB73:
 439              	.LBB72:
 440              	.LBB71:
 106:../libraries/SharedSpi/SharedSpi.cpp **** 		{
 441              		.loc 1 106 0
 442 0036 013B     		subs	r3, r3, #1
 443              	.LVL41:
 444 0038 0ED0     		beq	.L40
 445              	.LVL42:
 446              	.L41:
 447              	.LBB70:
 448              	.LBB69:
 449              		.loc 3 457 0
 450 003a 2C69     		ldr	r4, [r5, #16]
 451 003c 36EA0402 		bics	r2, r6, r4
 452 0040 F9D1     		bne	.L74
 453              	.LVL43:
 454              	.LBE69:
 455              	.LBE70:
 456              	.LBE71:
 457              	.LBE72:
 296:../libraries/SharedSpi/SharedSpi.cpp **** 		{
 297:../libraries/SharedSpi/SharedSpi.cpp **** 			// Wait for receive register
 298:../libraries/SharedSpi/SharedSpi.cpp **** 			if (waitForRxReady())
 299:../libraries/SharedSpi/SharedSpi.cpp **** 			{
 300:../libraries/SharedSpi/SharedSpi.cpp **** 				return SPI_ERROR_TIMEOUT;
 301:../libraries/SharedSpi/SharedSpi.cpp **** 			}
 302:../libraries/SharedSpi/SharedSpi.cpp **** 
 303:../libraries/SharedSpi/SharedSpi.cpp **** 			// Get data from receive register
 304:../libraries/SharedSpi/SharedSpi.cpp **** 			const uint8_t dIn =
 305:../libraries/SharedSpi/SharedSpi.cpp **** #if USART_SPI
 306:../libraries/SharedSpi/SharedSpi.cpp **** 					(uint8_t)USART_SSPI->US_RHR;
 307:../libraries/SharedSpi/SharedSpi.cpp **** #else
 308:../libraries/SharedSpi/SharedSpi.cpp **** 					(uint8_t)SSPI->SPI_RDR;
 458              		.loc 1 308 0
ARM GAS  /tmp/ccHBIC16.s 			page 24


 459 0042 AA68     		ldr	r2, [r5, #8]
 460              	.LVL44:
 461              	.LBE73:
 462              	.LBE77:
 463              	.LBE55:
 275:../libraries/SharedSpi/SharedSpi.cpp **** 	{
 464              		.loc 1 275 0
 465 0044 BE45     		cmp	lr, r7
 466              	.LBB82:
 467              	.LBB78:
 468              	.LBB74:
 309:../libraries/SharedSpi/SharedSpi.cpp **** #endif
 310:../libraries/SharedSpi/SharedSpi.cpp **** 			*rx_data++ = dIn;
 469              		.loc 1 310 0
 470 0046 01F10103 		add	r3, r1, #1
 471              	.LVL45:
 308:../libraries/SharedSpi/SharedSpi.cpp **** #endif
 472              		.loc 1 308 0
 473 004a 0A70     		strb	r2, [r1]
 474              	.LVL46:
 475              	.LBE74:
 476              	.LBE78:
 477              	.LBE82:
 275:../libraries/SharedSpi/SharedSpi.cpp **** 	{
 478              		.loc 1 275 0
 479 004c 09D0     		beq	.L75
 480              	.LBB83:
 481              	.LBB79:
 295:../libraries/SharedSpi/SharedSpi.cpp **** 		{
 482              		.loc 1 295 0
 483 004e 1946     		mov	r1, r3
 484              	.LVL47:
 485              	.L77:
 486              	.LBE79:
 277:../libraries/SharedSpi/SharedSpi.cpp **** 		if (waitForTxReady())
 487              		.loc 1 277 0
 488 0050 0028     		cmp	r0, #0
 489 0052 DED1     		bne	.L76
 490              	.L47:
 491 0054 FF22     		movs	r2, #255
 492 0056 DEE7     		b	.L33
 493              	.LVL48:
 494              	.L40:
 280:../libraries/SharedSpi/SharedSpi.cpp **** 		}
 495              		.loc 1 280 0
 496 0058 0120     		movs	r0, #1
 497              	.LVL49:
 498 005a F0BD     		pop	{r4, r5, r6, r7, pc}
 499              	.LVL50:
 500              	.L73:
 501              	.LBB80:
 295:../libraries/SharedSpi/SharedSpi.cpp **** 		{
 502              		.loc 1 295 0
 503 005c 0B46     		mov	r3, r1
 504 005e 1946     		mov	r1, r3
 505 0060 F6E7     		b	.L77
 506              	.LVL51:
ARM GAS  /tmp/ccHBIC16.s 			page 25


 507              	.L75:
 508              	.LBE80:
 509              	.LBE83:
 510              	.LBE85:
 311:../libraries/SharedSpi/SharedSpi.cpp **** 		}
 312:../libraries/SharedSpi/SharedSpi.cpp **** 	}
 313:../libraries/SharedSpi/SharedSpi.cpp **** 
 314:../libraries/SharedSpi/SharedSpi.cpp **** 	// If we didn't wait to receive, then we need to wait for transmit to finish and clear the receive
 315:../libraries/SharedSpi/SharedSpi.cpp **** 	if (rx_data == nullptr)
 511              		.loc 1 315 0
 512 0062 33B1     		cbz	r3, .L38
 316:../libraries/SharedSpi/SharedSpi.cpp **** 	{
 317:../libraries/SharedSpi/SharedSpi.cpp **** 		waitForTxEmpty();
 318:../libraries/SharedSpi/SharedSpi.cpp **** #if USART_SPI
 319:../libraries/SharedSpi/SharedSpi.cpp **** 		(void)USART_SSPI->US_RHR;
 320:../libraries/SharedSpi/SharedSpi.cpp **** #else
 321:../libraries/SharedSpi/SharedSpi.cpp **** 		(void)SSPI->SPI_RDR;
 322:../libraries/SharedSpi/SharedSpi.cpp **** #endif
 323:../libraries/SharedSpi/SharedSpi.cpp **** 
 324:../libraries/SharedSpi/SharedSpi.cpp **** 	}
 325:../libraries/SharedSpi/SharedSpi.cpp **** 
 326:../libraries/SharedSpi/SharedSpi.cpp **** 	return SPI_OK;
 513              		.loc 1 326 0
 514 0064 0020     		movs	r0, #0
 515              	.LVL52:
 516 0066 F0BD     		pop	{r4, r5, r6, r7, pc}
 517              	.LVL53:
 518              	.L72:
 519              	.LBB86:
 520              	.LBB84:
 289:../libraries/SharedSpi/SharedSpi.cpp **** 		}
 521              		.loc 1 289 0
 522 0068 42F08072 		orr	r2, r2, #16777216
 523              	.LVL54:
 291:../libraries/SharedSpi/SharedSpi.cpp **** #endif
 524              		.loc 1 291 0
 525 006c EA60     		str	r2, [r5, #12]
 526              	.LBB81:
 295:../libraries/SharedSpi/SharedSpi.cpp **** 		{
 527              		.loc 1 295 0
 528 006e 0029     		cmp	r1, #0
 529 0070 DED1     		bne	.L45
 530              	.LVL55:
 531              	.L38:
 532              	.LBE81:
 533              	.LBE84:
 275:../libraries/SharedSpi/SharedSpi.cpp **** 	{
 534              		.loc 1 275 0
 535 0072 43F69923 		movw	r3, #15001
 536              	.LBE86:
 537              	.LBB87:
 538              	.LBB88:
 539              	.LBB89:
 540              	.LBB90:
 408:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 		return 1;
 541              		.loc 3 408 0
 542 0076 0D49     		ldr	r1, .L81
ARM GAS  /tmp/ccHBIC16.s 			page 26


 543 0078 01E0     		b	.L44
 544              	.LVL56:
 545              	.L78:
 546              	.LBE90:
 547              	.LBE89:
  88:../libraries/SharedSpi/SharedSpi.cpp **** 		{
 548              		.loc 1 88 0
 549 007a 013B     		subs	r3, r3, #1
 550              	.LVL57:
 551 007c 02D0     		beq	.L43
 552              	.LVL58:
 553              	.L44:
 554              	.LBB94:
 555              	.LBB91:
 408:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 		return 1;
 556              		.loc 3 408 0
 557 007e 0A69     		ldr	r2, [r1, #16]
 558 0080 9005     		lsls	r0, r2, #22
 559 0082 FAD5     		bpl	.L78
 560              	.LVL59:
 561              	.L43:
 562              	.LBE91:
 563              	.LBE94:
 564              	.LBE88:
 565              	.LBE87:
 321:../libraries/SharedSpi/SharedSpi.cpp **** #endif
 566              		.loc 1 321 0
 567 0084 094B     		ldr	r3, .L81
 568              		.loc 1 326 0
 569 0086 0020     		movs	r0, #0
 321:../libraries/SharedSpi/SharedSpi.cpp **** #endif
 570              		.loc 1 321 0
 571 0088 9B68     		ldr	r3, [r3, #8]
 572 008a F0BD     		pop	{r4, r5, r6, r7, pc}
 573              	.LVL60:
 574              	.L46:
 575              		.cfi_def_cfa_offset 0
 576              		.cfi_restore 4
 577              		.cfi_restore 5
 578              		.cfi_restore 6
 579              		.cfi_restore 7
 580              		.cfi_restore 14
 315:../libraries/SharedSpi/SharedSpi.cpp **** 	{
 581              		.loc 1 315 0
 582 008c 09B1     		cbz	r1, .L79
 583              		.loc 1 326 0
 584 008e 0020     		movs	r0, #0
 585              	.LVL61:
 327:../libraries/SharedSpi/SharedSpi.cpp **** }
 586              		.loc 1 327 0
 587 0090 7047     		bx	lr
 588              	.LVL62:
 589              	.L79:
 590              	.LBB98:
 275:../libraries/SharedSpi/SharedSpi.cpp **** 	{
 591              		.loc 1 275 0
 592 0092 43F69923 		movw	r3, #15001
ARM GAS  /tmp/ccHBIC16.s 			page 27


 593              	.LBE98:
 594              	.LBB99:
 595              	.LBB97:
 596              	.LBB95:
 597              	.LBB92:
 408:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 		return 1;
 598              		.loc 3 408 0
 599 0096 0549     		ldr	r1, .L81
 600              	.LVL63:
 601 0098 01E0     		b	.L63
 602              	.LVL64:
 603              	.L80:
 604              	.LBE92:
 605              	.LBE95:
  88:../libraries/SharedSpi/SharedSpi.cpp **** 		{
 606              		.loc 1 88 0
 607 009a 013B     		subs	r3, r3, #1
 608              	.LVL65:
 609 009c 02D0     		beq	.L64
 610              	.LVL66:
 611              	.L63:
 612              	.LBB96:
 613              	.LBB93:
 408:/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi/spi.h **** 		return 1;
 614              		.loc 3 408 0
 615 009e 0A69     		ldr	r2, [r1, #16]
 616 00a0 9205     		lsls	r2, r2, #22
 617 00a2 FAD5     		bpl	.L80
 618              	.LVL67:
 619              	.L64:
 620              	.LBE93:
 621              	.LBE96:
 622              	.LBE97:
 623              	.LBE99:
 321:../libraries/SharedSpi/SharedSpi.cpp **** #endif
 624              		.loc 1 321 0
 625 00a4 014B     		ldr	r3, .L81
 326:../libraries/SharedSpi/SharedSpi.cpp **** }
 626              		.loc 1 326 0
 627 00a6 0020     		movs	r0, #0
 628              	.LVL68:
 321:../libraries/SharedSpi/SharedSpi.cpp **** #endif
 629              		.loc 1 321 0
 630 00a8 9B68     		ldr	r3, [r3, #8]
 631 00aa 7047     		bx	lr
 632              	.L82:
 633              		.align	2
 634              	.L81:
 635 00ac 00800040 		.word	1073774592
 636              		.cfi_endproc
 637              	.LFE534:
 638              		.size	sspi_transceive_packet, .-sspi_transceive_packet
 639              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 640              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 641              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 642              	_ZL28cpu_irq_prev_interrupt_state:
 643 0000 00       		.space	1
ARM GAS  /tmp/ccHBIC16.s 			page 28


 644              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 645              		.align	2
 646              		.type	_ZL32cpu_irq_critical_section_counter, %object
 647              		.size	_ZL32cpu_irq_critical_section_counter, 4
 648              	_ZL32cpu_irq_critical_section_counter:
 649 0000 00000000 		.space	4
 650              		.section	.bss._ZZ16sspi_master_initE13commsInitDone,"aw",%nobits
 651              		.set	.LANCHOR0,. + 0
 652              		.type	_ZZ16sspi_master_initE13commsInitDone, %object
 653              		.size	_ZZ16sspi_master_initE13commsInitDone, 1
 654              	_ZZ16sspi_master_initE13commsInitDone:
 655 0000 00       		.space	1
 656              		.text
 657              	.Letext0:
 658              		.file 4 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 659              		.file 5 "/usr/include/newlib/machine/_default_types.h"
 660              		.file 6 "/usr/include/newlib/sys/_stdint.h"
 661              		.file 7 "/usr/include/newlib/stdint.h"
 662              		.file 8 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 663              		.file 9 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 664              		.file 10 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/pio
 665              		.file 11 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/spi
 666              		.file 12 "/usr/include/newlib/sys/lock.h"
 667              		.file 13 "/usr/include/newlib/sys/_types.h"
 668              		.file 14 "/usr/include/newlib/sys/reent.h"
 669              		.file 15 "/usr/include/newlib/c++/6.3.1/cstdlib"
 670              		.file 16 "/usr/include/newlib/c++/6.3.1/cmath"
 671              		.file 17 "/usr/include/newlib/c++/6.3.1/cstdint"
 672              		.file 18 "/usr/include/newlib/c++/6.3.1/cstddef"
 673              		.file 19 "/usr/include/newlib/c++/6.3.1/arm-none-eabi/thumb/v7e-m/fpv5/hard/bits/c++config.h"
 674              		.file 20 "/usr/include/newlib/stdlib.h"
 675              		.file 21 "/usr/include/newlib/c++/6.3.1/stdlib.h"
 676              		.file 22 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 677              		.file 23 "/usr/include/newlib/math.h"
 678              		.file 24 "/usr/include/newlib/c++/6.3.1/math.h"
 679              		.file 25 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/pio/pio.h"
 680              		.file 26 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/Core.h"
 681              		.file 27 "/usr/include/newlib/ctype.h"
 682              		.file 28 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/RingBuffer.h"
 683              		.file 29 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h"
 684              		.file 30 "/usr/include/newlib/time.h"
 685              		.file 31 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/variant.h"
 686              		.file 32 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/USB/USBSerial.h"
 687              		.file 33 "../libraries/SharedSpi/SharedSpi.h"
 688              		.file 34 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/Print.h"
 689              		.file 35 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/pmc/pmc.h"
 690              		.file 36 "<built-in>"
 691              		.section	.debug_info,"",%progbits
 692              	.Ldebug_info0:
 693 0000 3C200000 		.4byte	0x203c
 694 0004 0400     		.2byte	0x4
 695 0006 00000000 		.4byte	.Ldebug_abbrev0
 696 000a 04       		.byte	0x4
 697 000b 01       		.uleb128 0x1
 698 000c E20B0000 		.4byte	.LASF472
 699 0010 04       		.byte	0x4
 700 0011 2B0B0000 		.4byte	.LASF473
ARM GAS  /tmp/ccHBIC16.s 			page 29


 701 0015 EB130000 		.4byte	.LASF474
 702 0019 78010000 		.4byte	.Ldebug_ranges0+0x178
 703 001d 00000000 		.4byte	0
 704 0021 00000000 		.4byte	.Ldebug_line0
 705 0025 02       		.uleb128 0x2
 706 0026 04       		.byte	0x4
 707 0027 05       		.byte	0x5
 708 0028 696E7400 		.ascii	"int\000"
 709 002c 03       		.uleb128 0x3
 710 002d DF070000 		.4byte	.LASF5
 711 0031 04       		.byte	0x4
 712 0032 D8       		.byte	0xd8
 713 0033 3C000000 		.4byte	0x3c
 714 0037 04       		.uleb128 0x4
 715 0038 2C000000 		.4byte	0x2c
 716 003c 05       		.uleb128 0x5
 717 003d 04       		.byte	0x4
 718 003e 07       		.byte	0x7
 719 003f 7F140000 		.4byte	.LASF0
 720 0043 06       		.uleb128 0x6
 721 0044 10       		.byte	0x10
 722 0045 04       		.byte	0x4
 723 0046 AA01     		.2byte	0x1aa
 724 0048 34030000 		.4byte	.LASF475
 725 004c 6B000000 		.4byte	0x6b
 726 0050 07       		.uleb128 0x7
 727 0051 8A020000 		.4byte	.LASF1
 728 0055 04       		.byte	0x4
 729 0056 AB01     		.2byte	0x1ab
 730 0058 6B000000 		.4byte	0x6b
 731 005c 00       		.byte	0
 732 005d 07       		.uleb128 0x7
 733 005e 71020000 		.4byte	.LASF2
 734 0062 04       		.byte	0x4
 735 0063 AC01     		.2byte	0x1ac
 736 0065 72000000 		.4byte	0x72
 737 0069 08       		.byte	0x8
 738 006a 00       		.byte	0
 739 006b 05       		.uleb128 0x5
 740 006c 08       		.byte	0x8
 741 006d 05       		.byte	0x5
 742 006e F4120000 		.4byte	.LASF3
 743 0072 05       		.uleb128 0x5
 744 0073 08       		.byte	0x8
 745 0074 04       		.byte	0x4
 746 0075 CA0E0000 		.4byte	.LASF4
 747 0079 08       		.uleb128 0x8
 748 007a 8A0B0000 		.4byte	.LASF6
 749 007e 04       		.byte	0x4
 750 007f AD01     		.2byte	0x1ad
 751 0081 43000000 		.4byte	0x43
 752 0085 09       		.uleb128 0x9
 753 0086 D4090000 		.4byte	.LASF476
 754 008a 03       		.uleb128 0x3
 755 008b D0130000 		.4byte	.LASF7
 756 008f 05       		.byte	0x5
 757 0090 1B       		.byte	0x1b
ARM GAS  /tmp/ccHBIC16.s 			page 30


 758 0091 95000000 		.4byte	0x95
 759 0095 05       		.uleb128 0x5
 760 0096 01       		.byte	0x1
 761 0097 06       		.byte	0x6
 762 0098 BF0B0000 		.4byte	.LASF8
 763 009c 03       		.uleb128 0x3
 764 009d 53000000 		.4byte	.LASF9
 765 00a1 05       		.byte	0x5
 766 00a2 1D       		.byte	0x1d
 767 00a3 A7000000 		.4byte	0xa7
 768 00a7 05       		.uleb128 0x5
 769 00a8 01       		.byte	0x1
 770 00a9 08       		.byte	0x8
 771 00aa B0050000 		.4byte	.LASF10
 772 00ae 03       		.uleb128 0x3
 773 00af 9C040000 		.4byte	.LASF11
 774 00b3 05       		.byte	0x5
 775 00b4 29       		.byte	0x29
 776 00b5 B9000000 		.4byte	0xb9
 777 00b9 05       		.uleb128 0x5
 778 00ba 02       		.byte	0x2
 779 00bb 05       		.byte	0x5
 780 00bc C3140000 		.4byte	.LASF12
 781 00c0 03       		.uleb128 0x3
 782 00c1 A6040000 		.4byte	.LASF13
 783 00c5 05       		.byte	0x5
 784 00c6 2B       		.byte	0x2b
 785 00c7 CB000000 		.4byte	0xcb
 786 00cb 05       		.uleb128 0x5
 787 00cc 02       		.byte	0x2
 788 00cd 07       		.byte	0x7
 789 00ce AC0B0000 		.4byte	.LASF14
 790 00d2 03       		.uleb128 0x3
 791 00d3 EF100000 		.4byte	.LASF15
 792 00d7 05       		.byte	0x5
 793 00d8 3F       		.byte	0x3f
 794 00d9 DD000000 		.4byte	0xdd
 795 00dd 05       		.uleb128 0x5
 796 00de 04       		.byte	0x4
 797 00df 05       		.byte	0x5
 798 00e0 FC0D0000 		.4byte	.LASF16
 799 00e4 03       		.uleb128 0x3
 800 00e5 F9100000 		.4byte	.LASF17
 801 00e9 05       		.byte	0x5
 802 00ea 41       		.byte	0x41
 803 00eb EF000000 		.4byte	0xef
 804 00ef 05       		.uleb128 0x5
 805 00f0 04       		.byte	0x4
 806 00f1 07       		.byte	0x7
 807 00f2 EB0E0000 		.4byte	.LASF18
 808 00f6 03       		.uleb128 0x3
 809 00f7 31090000 		.4byte	.LASF19
 810 00fb 05       		.byte	0x5
 811 00fc 59       		.byte	0x59
 812 00fd 6B000000 		.4byte	0x6b
 813 0101 03       		.uleb128 0x3
 814 0102 3B090000 		.4byte	.LASF20
ARM GAS  /tmp/ccHBIC16.s 			page 31


 815 0106 05       		.byte	0x5
 816 0107 5B       		.byte	0x5b
 817 0108 0C010000 		.4byte	0x10c
 818 010c 05       		.uleb128 0x5
 819 010d 08       		.byte	0x8
 820 010e 07       		.byte	0x7
 821 010f 12120000 		.4byte	.LASF21
 822 0113 03       		.uleb128 0x3
 823 0114 25070000 		.4byte	.LASF22
 824 0118 05       		.byte	0x5
 825 0119 78       		.byte	0x78
 826 011a 95000000 		.4byte	0x95
 827 011e 03       		.uleb128 0x3
 828 011f 220E0000 		.4byte	.LASF23
 829 0123 05       		.byte	0x5
 830 0124 7A       		.byte	0x7a
 831 0125 A7000000 		.4byte	0xa7
 832 0129 03       		.uleb128 0x3
 833 012a 0A110000 		.4byte	.LASF24
 834 012e 05       		.byte	0x5
 835 012f 92       		.byte	0x92
 836 0130 B9000000 		.4byte	0xb9
 837 0134 03       		.uleb128 0x3
 838 0135 D60C0000 		.4byte	.LASF25
 839 0139 05       		.byte	0x5
 840 013a 94       		.byte	0x94
 841 013b CB000000 		.4byte	0xcb
 842 013f 03       		.uleb128 0x3
 843 0140 47080000 		.4byte	.LASF26
 844 0144 05       		.byte	0x5
 845 0145 A8       		.byte	0xa8
 846 0146 DD000000 		.4byte	0xdd
 847 014a 03       		.uleb128 0x3
 848 014b 42030000 		.4byte	.LASF27
 849 014f 05       		.byte	0x5
 850 0150 AA       		.byte	0xaa
 851 0151 EF000000 		.4byte	0xef
 852 0155 03       		.uleb128 0x3
 853 0156 13000000 		.4byte	.LASF28
 854 015a 05       		.byte	0x5
 855 015b BA       		.byte	0xba
 856 015c 6B000000 		.4byte	0x6b
 857 0160 03       		.uleb128 0x3
 858 0161 DE100000 		.4byte	.LASF29
 859 0165 05       		.byte	0x5
 860 0166 BC       		.byte	0xbc
 861 0167 0C010000 		.4byte	0x10c
 862 016b 03       		.uleb128 0x3
 863 016c FF040000 		.4byte	.LASF30
 864 0170 05       		.byte	0x5
 865 0171 C8       		.byte	0xc8
 866 0172 25000000 		.4byte	0x25
 867 0176 03       		.uleb128 0x3
 868 0177 670F0000 		.4byte	.LASF31
 869 017b 05       		.byte	0x5
 870 017c CA       		.byte	0xca
 871 017d 3C000000 		.4byte	0x3c
ARM GAS  /tmp/ccHBIC16.s 			page 32


 872 0181 03       		.uleb128 0x3
 873 0182 E60A0000 		.4byte	.LASF32
 874 0186 06       		.byte	0x6
 875 0187 14       		.byte	0x14
 876 0188 8A000000 		.4byte	0x8a
 877 018c 03       		.uleb128 0x3
 878 018d 06080000 		.4byte	.LASF33
 879 0191 06       		.byte	0x6
 880 0192 18       		.byte	0x18
 881 0193 9C000000 		.4byte	0x9c
 882 0197 04       		.uleb128 0x4
 883 0198 8C010000 		.4byte	0x18c
 884 019c 03       		.uleb128 0x3
 885 019d 9D0B0000 		.4byte	.LASF34
 886 01a1 06       		.byte	0x6
 887 01a2 20       		.byte	0x20
 888 01a3 AE000000 		.4byte	0xae
 889 01a7 03       		.uleb128 0x3
 890 01a8 24010000 		.4byte	.LASF35
 891 01ac 06       		.byte	0x6
 892 01ad 24       		.byte	0x24
 893 01ae C0000000 		.4byte	0xc0
 894 01b2 03       		.uleb128 0x3
 895 01b3 EB020000 		.4byte	.LASF36
 896 01b7 06       		.byte	0x6
 897 01b8 2C       		.byte	0x2c
 898 01b9 D2000000 		.4byte	0xd2
 899 01bd 0A       		.uleb128 0xa
 900 01be B2010000 		.4byte	0x1b2
 901 01c2 03       		.uleb128 0x3
 902 01c3 8A0E0000 		.4byte	.LASF37
 903 01c7 06       		.byte	0x6
 904 01c8 30       		.byte	0x30
 905 01c9 E4000000 		.4byte	0xe4
 906 01cd 0A       		.uleb128 0xa
 907 01ce C2010000 		.4byte	0x1c2
 908 01d2 04       		.uleb128 0x4
 909 01d3 C2010000 		.4byte	0x1c2
 910 01d7 03       		.uleb128 0x3
 911 01d8 49100000 		.4byte	.LASF38
 912 01dc 06       		.byte	0x6
 913 01dd 38       		.byte	0x38
 914 01de F6000000 		.4byte	0xf6
 915 01e2 03       		.uleb128 0x3
 916 01e3 5F060000 		.4byte	.LASF39
 917 01e7 06       		.byte	0x6
 918 01e8 3C       		.byte	0x3c
 919 01e9 01010000 		.4byte	0x101
 920 01ed 03       		.uleb128 0x3
 921 01ee 810E0000 		.4byte	.LASF40
 922 01f2 06       		.byte	0x6
 923 01f3 43       		.byte	0x43
 924 01f4 6B010000 		.4byte	0x16b
 925 01f8 03       		.uleb128 0x3
 926 01f9 B20E0000 		.4byte	.LASF41
 927 01fd 06       		.byte	0x6
 928 01fe 48       		.byte	0x48
ARM GAS  /tmp/ccHBIC16.s 			page 33


 929 01ff 76010000 		.4byte	0x176
 930 0203 03       		.uleb128 0x3
 931 0204 FD030000 		.4byte	.LASF42
 932 0208 07       		.byte	0x7
 933 0209 15       		.byte	0x15
 934 020a 13010000 		.4byte	0x113
 935 020e 03       		.uleb128 0x3
 936 020f 68100000 		.4byte	.LASF43
 937 0213 07       		.byte	0x7
 938 0214 16       		.byte	0x16
 939 0215 1E010000 		.4byte	0x11e
 940 0219 03       		.uleb128 0x3
 941 021a 34130000 		.4byte	.LASF44
 942 021e 07       		.byte	0x7
 943 021f 1B       		.byte	0x1b
 944 0220 29010000 		.4byte	0x129
 945 0224 03       		.uleb128 0x3
 946 0225 2B0F0000 		.4byte	.LASF45
 947 0229 07       		.byte	0x7
 948 022a 1C       		.byte	0x1c
 949 022b 34010000 		.4byte	0x134
 950 022f 03       		.uleb128 0x3
 951 0230 0C0B0000 		.4byte	.LASF46
 952 0234 07       		.byte	0x7
 953 0235 21       		.byte	0x21
 954 0236 3F010000 		.4byte	0x13f
 955 023a 03       		.uleb128 0x3
 956 023b 03060000 		.4byte	.LASF47
 957 023f 07       		.byte	0x7
 958 0240 22       		.byte	0x22
 959 0241 4A010000 		.4byte	0x14a
 960 0245 03       		.uleb128 0x3
 961 0246 6E030000 		.4byte	.LASF48
 962 024a 07       		.byte	0x7
 963 024b 27       		.byte	0x27
 964 024c 55010000 		.4byte	0x155
 965 0250 03       		.uleb128 0x3
 966 0251 85090000 		.4byte	.LASF49
 967 0255 07       		.byte	0x7
 968 0256 28       		.byte	0x28
 969 0257 60010000 		.4byte	0x160
 970 025b 03       		.uleb128 0x3
 971 025c A7120000 		.4byte	.LASF50
 972 0260 07       		.byte	0x7
 973 0261 33       		.byte	0x33
 974 0262 25000000 		.4byte	0x25
 975 0266 03       		.uleb128 0x3
 976 0267 B6140000 		.4byte	.LASF51
 977 026b 07       		.byte	0x7
 978 026c 34       		.byte	0x34
 979 026d 3C000000 		.4byte	0x3c
 980 0271 03       		.uleb128 0x3
 981 0272 910A0000 		.4byte	.LASF52
 982 0276 07       		.byte	0x7
 983 0277 3D       		.byte	0x3d
 984 0278 25000000 		.4byte	0x25
 985 027c 03       		.uleb128 0x3
ARM GAS  /tmp/ccHBIC16.s 			page 34


 986 027d FE0A0000 		.4byte	.LASF53
 987 0281 07       		.byte	0x7
 988 0282 3E       		.byte	0x3e
 989 0283 3C000000 		.4byte	0x3c
 990 0287 03       		.uleb128 0x3
 991 0288 EB000000 		.4byte	.LASF54
 992 028c 07       		.byte	0x7
 993 028d 47       		.byte	0x47
 994 028e 25000000 		.4byte	0x25
 995 0292 03       		.uleb128 0x3
 996 0293 D1010000 		.4byte	.LASF55
 997 0297 07       		.byte	0x7
 998 0298 48       		.byte	0x48
 999 0299 3C000000 		.4byte	0x3c
 1000 029d 03       		.uleb128 0x3
 1001 029e 5A0F0000 		.4byte	.LASF56
 1002 02a2 07       		.byte	0x7
 1003 02a3 51       		.byte	0x51
 1004 02a4 6B000000 		.4byte	0x6b
 1005 02a8 03       		.uleb128 0x3
 1006 02a9 B10F0000 		.4byte	.LASF57
 1007 02ad 07       		.byte	0x7
 1008 02ae 52       		.byte	0x52
 1009 02af 0C010000 		.4byte	0x10c
 1010 02b3 03       		.uleb128 0x3
 1011 02b4 F3020000 		.4byte	.LASF58
 1012 02b8 07       		.byte	0x7
 1013 02b9 82       		.byte	0x82
 1014 02ba 6B000000 		.4byte	0x6b
 1015 02be 03       		.uleb128 0x3
 1016 02bf 0E030000 		.4byte	.LASF59
 1017 02c3 07       		.byte	0x7
 1018 02c4 8B       		.byte	0x8b
 1019 02c5 0C010000 		.4byte	0x10c
 1020 02c9 0B       		.uleb128 0xb
 1021 02ca 04       		.byte	0x4
 1022 02cb 05       		.uleb128 0x5
 1023 02cc 04       		.byte	0x4
 1024 02cd 07       		.byte	0x7
 1025 02ce 660B0000 		.4byte	.LASF60
 1026 02d2 0C       		.uleb128 0xc
 1027 02d3 CD010000 		.4byte	0x1cd
 1028 02d7 E2020000 		.4byte	0x2e2
 1029 02db 0D       		.uleb128 0xd
 1030 02dc CB020000 		.4byte	0x2cb
 1031 02e0 01       		.byte	0x1
 1032 02e1 00       		.byte	0
 1033 02e2 0A       		.uleb128 0xa
 1034 02e3 D2020000 		.4byte	0x2d2
 1035 02e7 0C       		.uleb128 0xc
 1036 02e8 CD010000 		.4byte	0x1cd
 1037 02ec F7020000 		.4byte	0x2f7
 1038 02f0 0D       		.uleb128 0xd
 1039 02f1 CB020000 		.4byte	0x2cb
 1040 02f5 03       		.byte	0x3
 1041 02f6 00       		.byte	0
 1042 02f7 0A       		.uleb128 0xa
ARM GAS  /tmp/ccHBIC16.s 			page 35


 1043 02f8 E7020000 		.4byte	0x2e7
 1044 02fc 0C       		.uleb128 0xc
 1045 02fd CD010000 		.4byte	0x1cd
 1046 0301 0C030000 		.4byte	0x30c
 1047 0305 0D       		.uleb128 0xd
 1048 0306 CB020000 		.4byte	0x2cb
 1049 030a 04       		.byte	0x4
 1050 030b 00       		.byte	0
 1051 030c 0A       		.uleb128 0xa
 1052 030d FC020000 		.4byte	0x2fc
 1053 0311 0E       		.uleb128 0xe
 1054 0312 FA110000 		.4byte	.LASF61
 1055 0316 08       		.byte	0x8
 1056 0317 6508     		.2byte	0x865
 1057 0319 BD010000 		.4byte	0x1bd
 1058 031d 0F       		.uleb128 0xf
 1059 031e 0A0D0000 		.4byte	.LASF62
 1060 0322 09       		.byte	0x9
 1061 0323 3A       		.byte	0x3a
 1062 0324 C2010000 		.4byte	0x1c2
 1063 0328 0C       		.uleb128 0xc
 1064 0329 CD010000 		.4byte	0x1cd
 1065 032d 38030000 		.4byte	0x338
 1066 0331 0D       		.uleb128 0xd
 1067 0332 CB020000 		.4byte	0x2cb
 1068 0336 00       		.byte	0
 1069 0337 00       		.byte	0
 1070 0338 0A       		.uleb128 0xa
 1071 0339 28030000 		.4byte	0x328
 1072 033d 0C       		.uleb128 0xc
 1073 033e CD010000 		.4byte	0x1cd
 1074 0342 4D030000 		.4byte	0x34d
 1075 0346 0D       		.uleb128 0xd
 1076 0347 CB020000 		.4byte	0x2cb
 1077 034b 0C       		.byte	0xc
 1078 034c 00       		.byte	0
 1079 034d 0A       		.uleb128 0xa
 1080 034e 3D030000 		.4byte	0x33d
 1081 0352 10       		.uleb128 0x10
 1082 0353 6801     		.2byte	0x168
 1083 0355 0A       		.byte	0xa
 1084 0356 38       		.byte	0x38
 1085 0357 AB070000 		.4byte	.LASF477
 1086 035b 9A060000 		.4byte	0x69a
 1087 035f 11       		.uleb128 0x11
 1088 0360 E50F0000 		.4byte	.LASF63
 1089 0364 0A       		.byte	0xa
 1090 0365 39       		.byte	0x39
 1091 0366 CD010000 		.4byte	0x1cd
 1092 036a 00       		.byte	0
 1093 036b 11       		.uleb128 0x11
 1094 036c A10F0000 		.4byte	.LASF64
 1095 0370 0A       		.byte	0xa
 1096 0371 3A       		.byte	0x3a
 1097 0372 CD010000 		.4byte	0x1cd
 1098 0376 04       		.byte	0x4
 1099 0377 11       		.uleb128 0x11
ARM GAS  /tmp/ccHBIC16.s 			page 36


 1100 0378 91140000 		.4byte	.LASF65
 1101 037c 0A       		.byte	0xa
 1102 037d 3B       		.byte	0x3b
 1103 037e CD010000 		.4byte	0x1cd
 1104 0382 08       		.byte	0x8
 1105 0383 11       		.uleb128 0x11
 1106 0384 25140000 		.4byte	.LASF66
 1107 0388 0A       		.byte	0xa
 1108 0389 3C       		.byte	0x3c
 1109 038a 38030000 		.4byte	0x338
 1110 038e 0C       		.byte	0xc
 1111 038f 11       		.uleb128 0x11
 1112 0390 930E0000 		.4byte	.LASF67
 1113 0394 0A       		.byte	0xa
 1114 0395 3D       		.byte	0x3d
 1115 0396 CD010000 		.4byte	0x1cd
 1116 039a 10       		.byte	0x10
 1117 039b 11       		.uleb128 0x11
 1118 039c 420E0000 		.4byte	.LASF68
 1119 03a0 0A       		.byte	0xa
 1120 03a1 3E       		.byte	0x3e
 1121 03a2 CD010000 		.4byte	0x1cd
 1122 03a6 14       		.byte	0x14
 1123 03a7 11       		.uleb128 0x11
 1124 03a8 9F120000 		.4byte	.LASF69
 1125 03ac 0A       		.byte	0xa
 1126 03ad 3F       		.byte	0x3f
 1127 03ae CD010000 		.4byte	0x1cd
 1128 03b2 18       		.byte	0x18
 1129 03b3 11       		.uleb128 0x11
 1130 03b4 2F140000 		.4byte	.LASF70
 1131 03b8 0A       		.byte	0xa
 1132 03b9 40       		.byte	0x40
 1133 03ba 38030000 		.4byte	0x338
 1134 03be 1C       		.byte	0x1c
 1135 03bf 11       		.uleb128 0x11
 1136 03c0 CB0B0000 		.4byte	.LASF71
 1137 03c4 0A       		.byte	0xa
 1138 03c5 41       		.byte	0x41
 1139 03c6 CD010000 		.4byte	0x1cd
 1140 03ca 20       		.byte	0x20
 1141 03cb 11       		.uleb128 0x11
 1142 03cc 5D0B0000 		.4byte	.LASF72
 1143 03d0 0A       		.byte	0xa
 1144 03d1 42       		.byte	0x42
 1145 03d2 CD010000 		.4byte	0x1cd
 1146 03d6 24       		.byte	0x24
 1147 03d7 11       		.uleb128 0x11
 1148 03d8 A8100000 		.4byte	.LASF73
 1149 03dc 0A       		.byte	0xa
 1150 03dd 43       		.byte	0x43
 1151 03de CD010000 		.4byte	0x1cd
 1152 03e2 28       		.byte	0x28
 1153 03e3 11       		.uleb128 0x11
 1154 03e4 39140000 		.4byte	.LASF74
 1155 03e8 0A       		.byte	0xa
 1156 03e9 44       		.byte	0x44
ARM GAS  /tmp/ccHBIC16.s 			page 37


 1157 03ea 38030000 		.4byte	0x338
 1158 03ee 2C       		.byte	0x2c
 1159 03ef 11       		.uleb128 0x11
 1160 03f0 F6040000 		.4byte	.LASF75
 1161 03f4 0A       		.byte	0xa
 1162 03f5 45       		.byte	0x45
 1163 03f6 CD010000 		.4byte	0x1cd
 1164 03fa 30       		.byte	0x30
 1165 03fb 11       		.uleb128 0x11
 1166 03fc DD0A0000 		.4byte	.LASF76
 1167 0400 0A       		.byte	0xa
 1168 0401 46       		.byte	0x46
 1169 0402 CD010000 		.4byte	0x1cd
 1170 0406 34       		.byte	0x34
 1171 0407 11       		.uleb128 0x11
 1172 0408 820A0000 		.4byte	.LASF77
 1173 040c 0A       		.byte	0xa
 1174 040d 47       		.byte	0x47
 1175 040e CD010000 		.4byte	0x1cd
 1176 0412 38       		.byte	0x38
 1177 0413 11       		.uleb128 0x11
 1178 0414 D9130000 		.4byte	.LASF78
 1179 0418 0A       		.byte	0xa
 1180 0419 48       		.byte	0x48
 1181 041a CD010000 		.4byte	0x1cd
 1182 041e 3C       		.byte	0x3c
 1183 041f 11       		.uleb128 0x11
 1184 0420 0D010000 		.4byte	.LASF79
 1185 0424 0A       		.byte	0xa
 1186 0425 49       		.byte	0x49
 1187 0426 CD010000 		.4byte	0x1cd
 1188 042a 40       		.byte	0x40
 1189 042b 11       		.uleb128 0x11
 1190 042c B3000000 		.4byte	.LASF80
 1191 0430 0A       		.byte	0xa
 1192 0431 4A       		.byte	0x4a
 1193 0432 CD010000 		.4byte	0x1cd
 1194 0436 44       		.byte	0x44
 1195 0437 11       		.uleb128 0x11
 1196 0438 7D040000 		.4byte	.LASF81
 1197 043c 0A       		.byte	0xa
 1198 043d 4B       		.byte	0x4b
 1199 043e CD010000 		.4byte	0x1cd
 1200 0442 48       		.byte	0x48
 1201 0443 11       		.uleb128 0x11
 1202 0444 68060000 		.4byte	.LASF82
 1203 0448 0A       		.byte	0xa
 1204 0449 4C       		.byte	0x4c
 1205 044a CD010000 		.4byte	0x1cd
 1206 044e 4C       		.byte	0x4c
 1207 044f 11       		.uleb128 0x11
 1208 0450 40060000 		.4byte	.LASF83
 1209 0454 0A       		.byte	0xa
 1210 0455 4D       		.byte	0x4d
 1211 0456 CD010000 		.4byte	0x1cd
 1212 045a 50       		.byte	0x50
 1213 045b 11       		.uleb128 0x11
ARM GAS  /tmp/ccHBIC16.s 			page 38


 1214 045c FA050000 		.4byte	.LASF84
 1215 0460 0A       		.byte	0xa
 1216 0461 4E       		.byte	0x4e
 1217 0462 CD010000 		.4byte	0x1cd
 1218 0466 54       		.byte	0x54
 1219 0467 11       		.uleb128 0x11
 1220 0468 F50A0000 		.4byte	.LASF85
 1221 046c 0A       		.byte	0xa
 1222 046d 4F       		.byte	0x4f
 1223 046e CD010000 		.4byte	0x1cd
 1224 0472 58       		.byte	0x58
 1225 0473 11       		.uleb128 0x11
 1226 0474 43140000 		.4byte	.LASF86
 1227 0478 0A       		.byte	0xa
 1228 0479 50       		.byte	0x50
 1229 047a 38030000 		.4byte	0x338
 1230 047e 5C       		.byte	0x5c
 1231 047f 11       		.uleb128 0x11
 1232 0480 F5070000 		.4byte	.LASF87
 1233 0484 0A       		.byte	0xa
 1234 0485 51       		.byte	0x51
 1235 0486 CD010000 		.4byte	0x1cd
 1236 048a 60       		.byte	0x60
 1237 048b 11       		.uleb128 0x11
 1238 048c 57080000 		.4byte	.LASF88
 1239 0490 0A       		.byte	0xa
 1240 0491 52       		.byte	0x52
 1241 0492 CD010000 		.4byte	0x1cd
 1242 0496 64       		.byte	0x64
 1243 0497 11       		.uleb128 0x11
 1244 0498 AE0D0000 		.4byte	.LASF89
 1245 049c 0A       		.byte	0xa
 1246 049d 53       		.byte	0x53
 1247 049e CD010000 		.4byte	0x1cd
 1248 04a2 68       		.byte	0x68
 1249 04a3 11       		.uleb128 0x11
 1250 04a4 4D140000 		.4byte	.LASF90
 1251 04a8 0A       		.byte	0xa
 1252 04a9 54       		.byte	0x54
 1253 04aa 38030000 		.4byte	0x338
 1254 04ae 6C       		.byte	0x6c
 1255 04af 11       		.uleb128 0x11
 1256 04b0 10090000 		.4byte	.LASF91
 1257 04b4 0A       		.byte	0xa
 1258 04b5 55       		.byte	0x55
 1259 04b6 E2020000 		.4byte	0x2e2
 1260 04ba 70       		.byte	0x70
 1261 04bb 11       		.uleb128 0x11
 1262 04bc 57140000 		.4byte	.LASF92
 1263 04c0 0A       		.byte	0xa
 1264 04c1 56       		.byte	0x56
 1265 04c2 E2020000 		.4byte	0x2e2
 1266 04c6 78       		.byte	0x78
 1267 04c7 11       		.uleb128 0x11
 1268 04c8 34110000 		.4byte	.LASF93
 1269 04cc 0A       		.byte	0xa
 1270 04cd 57       		.byte	0x57
ARM GAS  /tmp/ccHBIC16.s 			page 39


 1271 04ce CD010000 		.4byte	0x1cd
 1272 04d2 80       		.byte	0x80
 1273 04d3 11       		.uleb128 0x11
 1274 04d4 9B110000 		.4byte	.LASF94
 1275 04d8 0A       		.byte	0xa
 1276 04d9 58       		.byte	0x58
 1277 04da CD010000 		.4byte	0x1cd
 1278 04de 84       		.byte	0x84
 1279 04df 11       		.uleb128 0x11
 1280 04e0 BB000000 		.4byte	.LASF95
 1281 04e4 0A       		.byte	0xa
 1282 04e5 59       		.byte	0x59
 1283 04e6 CD010000 		.4byte	0x1cd
 1284 04ea 88       		.byte	0x88
 1285 04eb 11       		.uleb128 0x11
 1286 04ec E2000000 		.4byte	.LASF96
 1287 04f0 0A       		.byte	0xa
 1288 04f1 5A       		.byte	0x5a
 1289 04f2 CD010000 		.4byte	0x1cd
 1290 04f6 8C       		.byte	0x8c
 1291 04f7 11       		.uleb128 0x11
 1292 04f8 EA140000 		.4byte	.LASF97
 1293 04fc 0A       		.byte	0xa
 1294 04fd 5B       		.byte	0x5b
 1295 04fe CD010000 		.4byte	0x1cd
 1296 0502 90       		.byte	0x90
 1297 0503 11       		.uleb128 0x11
 1298 0504 23000000 		.4byte	.LASF98
 1299 0508 0A       		.byte	0xa
 1300 0509 5C       		.byte	0x5c
 1301 050a CD010000 		.4byte	0x1cd
 1302 050e 94       		.byte	0x94
 1303 050f 11       		.uleb128 0x11
 1304 0510 BE050000 		.4byte	.LASF99
 1305 0514 0A       		.byte	0xa
 1306 0515 5D       		.byte	0x5d
 1307 0516 CD010000 		.4byte	0x1cd
 1308 051a 98       		.byte	0x98
 1309 051b 11       		.uleb128 0x11
 1310 051c 61140000 		.4byte	.LASF100
 1311 0520 0A       		.byte	0xa
 1312 0521 5E       		.byte	0x5e
 1313 0522 38030000 		.4byte	0x338
 1314 0526 9C       		.byte	0x9c
 1315 0527 11       		.uleb128 0x11
 1316 0528 AD010000 		.4byte	.LASF101
 1317 052c 0A       		.byte	0xa
 1318 052d 5F       		.byte	0x5f
 1319 052e CD010000 		.4byte	0x1cd
 1320 0532 A0       		.byte	0xa0
 1321 0533 11       		.uleb128 0x11
 1322 0534 2D010000 		.4byte	.LASF102
 1323 0538 0A       		.byte	0xa
 1324 0539 60       		.byte	0x60
 1325 053a CD010000 		.4byte	0x1cd
 1326 053e A4       		.byte	0xa4
 1327 053f 11       		.uleb128 0x11
ARM GAS  /tmp/ccHBIC16.s 			page 40


 1328 0540 EC060000 		.4byte	.LASF103
 1329 0544 0A       		.byte	0xa
 1330 0545 61       		.byte	0x61
 1331 0546 CD010000 		.4byte	0x1cd
 1332 054a A8       		.byte	0xa8
 1333 054b 11       		.uleb128 0x11
 1334 054c 6B140000 		.4byte	.LASF104
 1335 0550 0A       		.byte	0xa
 1336 0551 62       		.byte	0x62
 1337 0552 38030000 		.4byte	0x338
 1338 0556 AC       		.byte	0xac
 1339 0557 11       		.uleb128 0x11
 1340 0558 56110000 		.4byte	.LASF105
 1341 055c 0A       		.byte	0xa
 1342 055d 63       		.byte	0x63
 1343 055e CD010000 		.4byte	0x1cd
 1344 0562 B0       		.byte	0xb0
 1345 0563 11       		.uleb128 0x11
 1346 0564 1A110000 		.4byte	.LASF106
 1347 0568 0A       		.byte	0xa
 1348 0569 64       		.byte	0x64
 1349 056a CD010000 		.4byte	0x1cd
 1350 056e B4       		.byte	0xb4
 1351 056f 11       		.uleb128 0x11
 1352 0570 85130000 		.4byte	.LASF107
 1353 0574 0A       		.byte	0xa
 1354 0575 65       		.byte	0x65
 1355 0576 CD010000 		.4byte	0x1cd
 1356 057a B8       		.byte	0xb8
 1357 057b 11       		.uleb128 0x11
 1358 057c 75140000 		.4byte	.LASF108
 1359 0580 0A       		.byte	0xa
 1360 0581 66       		.byte	0x66
 1361 0582 38030000 		.4byte	0x338
 1362 0586 BC       		.byte	0xbc
 1363 0587 11       		.uleb128 0x11
 1364 0588 02130000 		.4byte	.LASF109
 1365 058c 0A       		.byte	0xa
 1366 058d 67       		.byte	0x67
 1367 058e CD010000 		.4byte	0x1cd
 1368 0592 C0       		.byte	0xc0
 1369 0593 11       		.uleb128 0x11
 1370 0594 4F0D0000 		.4byte	.LASF110
 1371 0598 0A       		.byte	0xa
 1372 0599 68       		.byte	0x68
 1373 059a CD010000 		.4byte	0x1cd
 1374 059e C4       		.byte	0xc4
 1375 059f 11       		.uleb128 0x11
 1376 05a0 28090000 		.4byte	.LASF111
 1377 05a4 0A       		.byte	0xa
 1378 05a5 69       		.byte	0x69
 1379 05a6 CD010000 		.4byte	0x1cd
 1380 05aa C8       		.byte	0xc8
 1381 05ab 11       		.uleb128 0x11
 1382 05ac 51040000 		.4byte	.LASF112
 1383 05b0 0A       		.byte	0xa
 1384 05b1 6A       		.byte	0x6a
ARM GAS  /tmp/ccHBIC16.s 			page 41


 1385 05b2 38030000 		.4byte	0x338
 1386 05b6 CC       		.byte	0xcc
 1387 05b7 11       		.uleb128 0x11
 1388 05b8 07120000 		.4byte	.LASF113
 1389 05bc 0A       		.byte	0xa
 1390 05bd 6B       		.byte	0x6b
 1391 05be CD010000 		.4byte	0x1cd
 1392 05c2 D0       		.byte	0xd0
 1393 05c3 11       		.uleb128 0x11
 1394 05c4 9E0A0000 		.4byte	.LASF114
 1395 05c8 0A       		.byte	0xa
 1396 05c9 6C       		.byte	0x6c
 1397 05ca CD010000 		.4byte	0x1cd
 1398 05ce D4       		.byte	0xd4
 1399 05cf 11       		.uleb128 0x11
 1400 05d0 1A140000 		.4byte	.LASF115
 1401 05d4 0A       		.byte	0xa
 1402 05d5 6D       		.byte	0x6d
 1403 05d6 CD010000 		.4byte	0x1cd
 1404 05da D8       		.byte	0xd8
 1405 05db 11       		.uleb128 0x11
 1406 05dc 5C040000 		.4byte	.LASF116
 1407 05e0 0A       		.byte	0xa
 1408 05e1 6E       		.byte	0x6e
 1409 05e2 38030000 		.4byte	0x338
 1410 05e6 DC       		.byte	0xdc
 1411 05e7 11       		.uleb128 0x11
 1412 05e8 40070000 		.4byte	.LASF117
 1413 05ec 0A       		.byte	0xa
 1414 05ed 6F       		.byte	0x6f
 1415 05ee CD010000 		.4byte	0x1cd
 1416 05f2 E0       		.byte	0xe0
 1417 05f3 11       		.uleb128 0x11
 1418 05f4 B0080000 		.4byte	.LASF118
 1419 05f8 0A       		.byte	0xa
 1420 05f9 70       		.byte	0x70
 1421 05fa CD010000 		.4byte	0x1cd
 1422 05fe E4       		.byte	0xe4
 1423 05ff 11       		.uleb128 0x11
 1424 0600 A90A0000 		.4byte	.LASF119
 1425 0604 0A       		.byte	0xa
 1426 0605 71       		.byte	0x71
 1427 0606 CD010000 		.4byte	0x1cd
 1428 060a E8       		.byte	0xe8
 1429 060b 11       		.uleb128 0x11
 1430 060c 67040000 		.4byte	.LASF120
 1431 0610 0A       		.byte	0xa
 1432 0611 72       		.byte	0x72
 1433 0612 0C030000 		.4byte	0x30c
 1434 0616 EC       		.byte	0xec
 1435 0617 12       		.uleb128 0x12
 1436 0618 71010000 		.4byte	.LASF121
 1437 061c 0A       		.byte	0xa
 1438 061d 73       		.byte	0x73
 1439 061e CD010000 		.4byte	0x1cd
 1440 0622 0001     		.2byte	0x100
 1441 0624 12       		.uleb128 0x12
ARM GAS  /tmp/ccHBIC16.s 			page 42


 1442 0625 72040000 		.4byte	.LASF122
 1443 0629 0A       		.byte	0xa
 1444 062a 74       		.byte	0x74
 1445 062b 0C030000 		.4byte	0x30c
 1446 062f 0401     		.2byte	0x104
 1447 0631 12       		.uleb128 0x12
 1448 0632 4A050000 		.4byte	.LASF123
 1449 0636 0A       		.byte	0xa
 1450 0637 75       		.byte	0x75
 1451 0638 CD010000 		.4byte	0x1cd
 1452 063c 1801     		.2byte	0x118
 1453 063e 12       		.uleb128 0x12
 1454 063f 200B0000 		.4byte	.LASF124
 1455 0643 0A       		.byte	0xa
 1456 0644 76       		.byte	0x76
 1457 0645 4D030000 		.4byte	0x34d
 1458 0649 1C01     		.2byte	0x11c
 1459 064b 12       		.uleb128 0x12
 1460 064c 51100000 		.4byte	.LASF125
 1461 0650 0A       		.byte	0xa
 1462 0651 77       		.byte	0x77
 1463 0652 CD010000 		.4byte	0x1cd
 1464 0656 5001     		.2byte	0x150
 1465 0658 12       		.uleb128 0x12
 1466 0659 40050000 		.4byte	.LASF126
 1467 065d 0A       		.byte	0xa
 1468 065e 78       		.byte	0x78
 1469 065f CD010000 		.4byte	0x1cd
 1470 0663 5401     		.2byte	0x154
 1471 0665 12       		.uleb128 0x12
 1472 0666 12130000 		.4byte	.LASF127
 1473 066a 0A       		.byte	0xa
 1474 066b 79       		.byte	0x79
 1475 066c CD010000 		.4byte	0x1cd
 1476 0670 5801     		.2byte	0x158
 1477 0672 12       		.uleb128 0x12
 1478 0673 13080000 		.4byte	.LASF128
 1479 0677 0A       		.byte	0xa
 1480 0678 7A       		.byte	0x7a
 1481 0679 CD010000 		.4byte	0x1cd
 1482 067d 5C01     		.2byte	0x15c
 1483 067f 12       		.uleb128 0x12
 1484 0680 FC090000 		.4byte	.LASF129
 1485 0684 0A       		.byte	0xa
 1486 0685 7B       		.byte	0x7b
 1487 0686 CD010000 		.4byte	0x1cd
 1488 068a 6001     		.2byte	0x160
 1489 068c 12       		.uleb128 0x12
 1490 068d 64030000 		.4byte	.LASF130
 1491 0691 0A       		.byte	0xa
 1492 0692 7C       		.byte	0x7c
 1493 0693 CD010000 		.4byte	0x1cd
 1494 0697 6401     		.2byte	0x164
 1495 0699 00       		.byte	0
 1496 069a 13       		.uleb128 0x13
 1497 069b 50696F00 		.ascii	"Pio\000"
 1498 069f 0A       		.byte	0xa
ARM GAS  /tmp/ccHBIC16.s 			page 43


 1499 06a0 7D       		.byte	0x7d
 1500 06a1 52030000 		.4byte	0x352
 1501 06a5 14       		.uleb128 0x14
 1502 06a6 EC       		.byte	0xec
 1503 06a7 0B       		.byte	0xb
 1504 06a8 38       		.byte	0x38
 1505 06a9 FA0F0000 		.4byte	.LASF146
 1506 06ad 4E070000 		.4byte	0x74e
 1507 06b1 11       		.uleb128 0x11
 1508 06b2 57130000 		.4byte	.LASF131
 1509 06b6 0B       		.byte	0xb
 1510 06b7 39       		.byte	0x39
 1511 06b8 CD010000 		.4byte	0x1cd
 1512 06bc 00       		.byte	0
 1513 06bd 11       		.uleb128 0x11
 1514 06be 62020000 		.4byte	.LASF132
 1515 06c2 0B       		.byte	0xb
 1516 06c3 3A       		.byte	0x3a
 1517 06c4 CD010000 		.4byte	0x1cd
 1518 06c8 04       		.byte	0x4
 1519 06c9 11       		.uleb128 0x11
 1520 06ca E6090000 		.4byte	.LASF133
 1521 06ce 0B       		.byte	0xb
 1522 06cf 3B       		.byte	0x3b
 1523 06d0 CD010000 		.4byte	0x1cd
 1524 06d4 08       		.byte	0x8
 1525 06d5 11       		.uleb128 0x11
 1526 06d6 9B0E0000 		.4byte	.LASF134
 1527 06da 0B       		.byte	0xb
 1528 06db 3C       		.byte	0x3c
 1529 06dc CD010000 		.4byte	0x1cd
 1530 06e0 0C       		.byte	0xc
 1531 06e1 11       		.uleb128 0x11
 1532 06e2 85040000 		.4byte	.LASF135
 1533 06e6 0B       		.byte	0xb
 1534 06e7 3D       		.byte	0x3d
 1535 06e8 CD010000 		.4byte	0x1cd
 1536 06ec 10       		.byte	0x10
 1537 06ed 11       		.uleb128 0x11
 1538 06ee 8B0D0000 		.4byte	.LASF136
 1539 06f2 0B       		.byte	0xb
 1540 06f3 3E       		.byte	0x3e
 1541 06f4 CD010000 		.4byte	0x1cd
 1542 06f8 14       		.byte	0x14
 1543 06f9 11       		.uleb128 0x11
 1544 06fa 470D0000 		.4byte	.LASF137
 1545 06fe 0B       		.byte	0xb
 1546 06ff 3F       		.byte	0x3f
 1547 0700 CD010000 		.4byte	0x1cd
 1548 0704 18       		.byte	0x18
 1549 0705 11       		.uleb128 0x11
 1550 0706 A90F0000 		.4byte	.LASF138
 1551 070a 0B       		.byte	0xb
 1552 070b 40       		.byte	0x40
 1553 070c CD010000 		.4byte	0x1cd
 1554 0710 1C       		.byte	0x1c
 1555 0711 11       		.uleb128 0x11
ARM GAS  /tmp/ccHBIC16.s 			page 44


 1556 0712 25140000 		.4byte	.LASF66
 1557 0716 0B       		.byte	0xb
 1558 0717 41       		.byte	0x41
 1559 0718 F7020000 		.4byte	0x2f7
 1560 071c 20       		.byte	0x20
 1561 071d 11       		.uleb128 0x11
 1562 071e C8050000 		.4byte	.LASF139
 1563 0722 0B       		.byte	0xb
 1564 0723 42       		.byte	0x42
 1565 0724 F7020000 		.4byte	0x2f7
 1566 0728 30       		.byte	0x30
 1567 0729 11       		.uleb128 0x11
 1568 072a 2F140000 		.4byte	.LASF70
 1569 072e 0B       		.byte	0xb
 1570 072f 43       		.byte	0x43
 1571 0730 5E070000 		.4byte	0x75e
 1572 0734 40       		.byte	0x40
 1573 0735 11       		.uleb128 0x11
 1574 0736 B70D0000 		.4byte	.LASF140
 1575 073a 0B       		.byte	0xb
 1576 073b 44       		.byte	0x44
 1577 073c CD010000 		.4byte	0x1cd
 1578 0740 E4       		.byte	0xe4
 1579 0741 11       		.uleb128 0x11
 1580 0742 510F0000 		.4byte	.LASF141
 1581 0746 0B       		.byte	0xb
 1582 0747 45       		.byte	0x45
 1583 0748 CD010000 		.4byte	0x1cd
 1584 074c E8       		.byte	0xe8
 1585 074d 00       		.byte	0
 1586 074e 0C       		.uleb128 0xc
 1587 074f CD010000 		.4byte	0x1cd
 1588 0753 5E070000 		.4byte	0x75e
 1589 0757 0D       		.uleb128 0xd
 1590 0758 CB020000 		.4byte	0x2cb
 1591 075c 28       		.byte	0x28
 1592 075d 00       		.byte	0
 1593 075e 0A       		.uleb128 0xa
 1594 075f 4E070000 		.4byte	0x74e
 1595 0763 13       		.uleb128 0x13
 1596 0764 53706900 		.ascii	"Spi\000"
 1597 0768 0B       		.byte	0xb
 1598 0769 46       		.byte	0x46
 1599 076a A5060000 		.4byte	0x6a5
 1600 076e 03       		.uleb128 0x3
 1601 076f C00D0000 		.4byte	.LASF142
 1602 0773 0C       		.byte	0xc
 1603 0774 07       		.byte	0x7
 1604 0775 25000000 		.4byte	0x25
 1605 0779 03       		.uleb128 0x3
 1606 077a CB070000 		.4byte	.LASF143
 1607 077e 0D       		.byte	0xd
 1608 077f 2C       		.byte	0x2c
 1609 0780 DD000000 		.4byte	0xdd
 1610 0784 03       		.uleb128 0x3
 1611 0785 5A100000 		.4byte	.LASF144
 1612 0789 0D       		.byte	0xd
ARM GAS  /tmp/ccHBIC16.s 			page 45


 1613 078a 72       		.byte	0x72
 1614 078b DD000000 		.4byte	0xdd
 1615 078f 08       		.uleb128 0x8
 1616 0790 C1080000 		.4byte	.LASF145
 1617 0794 04       		.byte	0x4
 1618 0795 6501     		.2byte	0x165
 1619 0797 3C000000 		.4byte	0x3c
 1620 079b 14       		.uleb128 0x14
 1621 079c 08       		.byte	0x8
 1622 079d 0D       		.byte	0xd
 1623 079e A4       		.byte	0xa4
 1624 079f 1B090000 		.4byte	.LASF147
 1625 07a3 DF070000 		.4byte	0x7df
 1626 07a7 15       		.uleb128 0x15
 1627 07a8 04       		.byte	0x4
 1628 07a9 0D       		.byte	0xd
 1629 07aa A7       		.byte	0xa7
 1630 07ab C6070000 		.4byte	0x7c6
 1631 07af 16       		.uleb128 0x16
 1632 07b0 850D0000 		.4byte	.LASF148
 1633 07b4 0D       		.byte	0xd
 1634 07b5 A8       		.byte	0xa8
 1635 07b6 8F070000 		.4byte	0x78f
 1636 07ba 16       		.uleb128 0x16
 1637 07bb 90080000 		.4byte	.LASF149
 1638 07bf 0D       		.byte	0xd
 1639 07c0 A9       		.byte	0xa9
 1640 07c1 DF070000 		.4byte	0x7df
 1641 07c5 00       		.byte	0
 1642 07c6 11       		.uleb128 0x11
 1643 07c7 FE070000 		.4byte	.LASF150
 1644 07cb 0D       		.byte	0xd
 1645 07cc A5       		.byte	0xa5
 1646 07cd 25000000 		.4byte	0x25
 1647 07d1 00       		.byte	0
 1648 07d2 11       		.uleb128 0x11
 1649 07d3 24110000 		.4byte	.LASF151
 1650 07d7 0D       		.byte	0xd
 1651 07d8 AA       		.byte	0xaa
 1652 07d9 A7070000 		.4byte	0x7a7
 1653 07dd 04       		.byte	0x4
 1654 07de 00       		.byte	0
 1655 07df 0C       		.uleb128 0xc
 1656 07e0 A7000000 		.4byte	0xa7
 1657 07e4 EF070000 		.4byte	0x7ef
 1658 07e8 0D       		.uleb128 0xd
 1659 07e9 CB020000 		.4byte	0x2cb
 1660 07ed 03       		.byte	0x3
 1661 07ee 00       		.byte	0
 1662 07ef 03       		.uleb128 0x3
 1663 07f0 B1100000 		.4byte	.LASF152
 1664 07f4 0D       		.byte	0xd
 1665 07f5 AB       		.byte	0xab
 1666 07f6 9B070000 		.4byte	0x79b
 1667 07fa 03       		.uleb128 0x3
 1668 07fb E1120000 		.4byte	.LASF153
 1669 07ff 0D       		.byte	0xd
ARM GAS  /tmp/ccHBIC16.s 			page 46


 1670 0800 AF       		.byte	0xaf
 1671 0801 6E070000 		.4byte	0x76e
 1672 0805 03       		.uleb128 0x3
 1673 0806 ED0A0000 		.4byte	.LASF154
 1674 080a 0E       		.byte	0xe
 1675 080b 16       		.byte	0x16
 1676 080c EF000000 		.4byte	0xef
 1677 0810 17       		.uleb128 0x17
 1678 0811 CF0F0000 		.4byte	.LASF159
 1679 0815 18       		.byte	0x18
 1680 0816 0E       		.byte	0xe
 1681 0817 2D       		.byte	0x2d
 1682 0818 63080000 		.4byte	0x863
 1683 081c 11       		.uleb128 0x11
 1684 081d 46090000 		.4byte	.LASF155
 1685 0821 0E       		.byte	0xe
 1686 0822 2F       		.byte	0x2f
 1687 0823 63080000 		.4byte	0x863
 1688 0827 00       		.byte	0
 1689 0828 18       		.uleb128 0x18
 1690 0829 5F6B00   		.ascii	"_k\000"
 1691 082c 0E       		.byte	0xe
 1692 082d 30       		.byte	0x30
 1693 082e 25000000 		.4byte	0x25
 1694 0832 04       		.byte	0x4
 1695 0833 11       		.uleb128 0x11
 1696 0834 A30E0000 		.4byte	.LASF156
 1697 0838 0E       		.byte	0xe
 1698 0839 30       		.byte	0x30
 1699 083a 25000000 		.4byte	0x25
 1700 083e 08       		.byte	0x8
 1701 083f 11       		.uleb128 0x11
 1702 0840 CA130000 		.4byte	.LASF157
 1703 0844 0E       		.byte	0xe
 1704 0845 30       		.byte	0x30
 1705 0846 25000000 		.4byte	0x25
 1706 084a 0C       		.byte	0xc
 1707 084b 11       		.uleb128 0x11
 1708 084c E9050000 		.4byte	.LASF158
 1709 0850 0E       		.byte	0xe
 1710 0851 30       		.byte	0x30
 1711 0852 25000000 		.4byte	0x25
 1712 0856 10       		.byte	0x10
 1713 0857 18       		.uleb128 0x18
 1714 0858 5F7800   		.ascii	"_x\000"
 1715 085b 0E       		.byte	0xe
 1716 085c 31       		.byte	0x31
 1717 085d 69080000 		.4byte	0x869
 1718 0861 14       		.byte	0x14
 1719 0862 00       		.byte	0
 1720 0863 19       		.uleb128 0x19
 1721 0864 04       		.byte	0x4
 1722 0865 10080000 		.4byte	0x810
 1723 0869 0C       		.uleb128 0xc
 1724 086a 05080000 		.4byte	0x805
 1725 086e 79080000 		.4byte	0x879
 1726 0872 0D       		.uleb128 0xd
ARM GAS  /tmp/ccHBIC16.s 			page 47


 1727 0873 CB020000 		.4byte	0x2cb
 1728 0877 00       		.byte	0
 1729 0878 00       		.byte	0
 1730 0879 17       		.uleb128 0x17
 1731 087a 42040000 		.4byte	.LASF160
 1732 087e 24       		.byte	0x24
 1733 087f 0E       		.byte	0xe
 1734 0880 35       		.byte	0x35
 1735 0881 F2080000 		.4byte	0x8f2
 1736 0885 11       		.uleb128 0x11
 1737 0886 3B0A0000 		.4byte	.LASF161
 1738 088a 0E       		.byte	0xe
 1739 088b 37       		.byte	0x37
 1740 088c 25000000 		.4byte	0x25
 1741 0890 00       		.byte	0
 1742 0891 11       		.uleb128 0x11
 1743 0892 E2130000 		.4byte	.LASF162
 1744 0896 0E       		.byte	0xe
 1745 0897 38       		.byte	0x38
 1746 0898 25000000 		.4byte	0x25
 1747 089c 04       		.byte	0x4
 1748 089d 11       		.uleb128 0x11
 1749 089e A6080000 		.4byte	.LASF163
 1750 08a2 0E       		.byte	0xe
 1751 08a3 39       		.byte	0x39
 1752 08a4 25000000 		.4byte	0x25
 1753 08a8 08       		.byte	0x8
 1754 08a9 11       		.uleb128 0x11
 1755 08aa FE080000 		.4byte	.LASF164
 1756 08ae 0E       		.byte	0xe
 1757 08af 3A       		.byte	0x3a
 1758 08b0 25000000 		.4byte	0x25
 1759 08b4 0C       		.byte	0xc
 1760 08b5 11       		.uleb128 0x11
 1761 08b6 C6000000 		.4byte	.LASF165
 1762 08ba 0E       		.byte	0xe
 1763 08bb 3B       		.byte	0x3b
 1764 08bc 25000000 		.4byte	0x25
 1765 08c0 10       		.byte	0x10
 1766 08c1 11       		.uleb128 0x11
 1767 08c2 9D060000 		.4byte	.LASF166
 1768 08c6 0E       		.byte	0xe
 1769 08c7 3C       		.byte	0x3c
 1770 08c8 25000000 		.4byte	0x25
 1771 08cc 14       		.byte	0x14
 1772 08cd 11       		.uleb128 0x11
 1773 08ce 61050000 		.4byte	.LASF167
 1774 08d2 0E       		.byte	0xe
 1775 08d3 3D       		.byte	0x3d
 1776 08d4 25000000 		.4byte	0x25
 1777 08d8 18       		.byte	0x18
 1778 08d9 11       		.uleb128 0x11
 1779 08da 92040000 		.4byte	.LASF168
 1780 08de 0E       		.byte	0xe
 1781 08df 3E       		.byte	0x3e
 1782 08e0 25000000 		.4byte	0x25
 1783 08e4 1C       		.byte	0x1c
ARM GAS  /tmp/ccHBIC16.s 			page 48


 1784 08e5 11       		.uleb128 0x11
 1785 08e6 7E050000 		.4byte	.LASF169
 1786 08ea 0E       		.byte	0xe
 1787 08eb 3F       		.byte	0x3f
 1788 08ec 25000000 		.4byte	0x25
 1789 08f0 20       		.byte	0x20
 1790 08f1 00       		.byte	0
 1791 08f2 1A       		.uleb128 0x1a
 1792 08f3 740A0000 		.4byte	.LASF170
 1793 08f7 0801     		.2byte	0x108
 1794 08f9 0E       		.byte	0xe
 1795 08fa 48       		.byte	0x48
 1796 08fb 32090000 		.4byte	0x932
 1797 08ff 11       		.uleb128 0x11
 1798 0900 08090000 		.4byte	.LASF171
 1799 0904 0E       		.byte	0xe
 1800 0905 49       		.byte	0x49
 1801 0906 32090000 		.4byte	0x932
 1802 090a 00       		.byte	0
 1803 090b 11       		.uleb128 0x11
 1804 090c 55050000 		.4byte	.LASF172
 1805 0910 0E       		.byte	0xe
 1806 0911 4A       		.byte	0x4a
 1807 0912 32090000 		.4byte	0x932
 1808 0916 80       		.byte	0x80
 1809 0917 12       		.uleb128 0x12
 1810 0918 CF000000 		.4byte	.LASF173
 1811 091c 0E       		.byte	0xe
 1812 091d 4C       		.byte	0x4c
 1813 091e 05080000 		.4byte	0x805
 1814 0922 0001     		.2byte	0x100
 1815 0924 12       		.uleb128 0x12
 1816 0925 2C110000 		.4byte	.LASF174
 1817 0929 0E       		.byte	0xe
 1818 092a 4F       		.byte	0x4f
 1819 092b 05080000 		.4byte	0x805
 1820 092f 0401     		.2byte	0x104
 1821 0931 00       		.byte	0
 1822 0932 0C       		.uleb128 0xc
 1823 0933 C9020000 		.4byte	0x2c9
 1824 0937 42090000 		.4byte	0x942
 1825 093b 0D       		.uleb128 0xd
 1826 093c CB020000 		.4byte	0x2cb
 1827 0940 1F       		.byte	0x1f
 1828 0941 00       		.byte	0
 1829 0942 1A       		.uleb128 0x1a
 1830 0943 8F000000 		.4byte	.LASF175
 1831 0947 9001     		.2byte	0x190
 1832 0949 0E       		.byte	0xe
 1833 094a 5B       		.byte	0x5b
 1834 094b 80090000 		.4byte	0x980
 1835 094f 11       		.uleb128 0x11
 1836 0950 46090000 		.4byte	.LASF155
 1837 0954 0E       		.byte	0xe
 1838 0955 5C       		.byte	0x5c
 1839 0956 80090000 		.4byte	0x980
 1840 095a 00       		.byte	0
ARM GAS  /tmp/ccHBIC16.s 			page 49


 1841 095b 11       		.uleb128 0x11
 1842 095c DD000000 		.4byte	.LASF176
 1843 0960 0E       		.byte	0xe
 1844 0961 5D       		.byte	0x5d
 1845 0962 25000000 		.4byte	0x25
 1846 0966 04       		.byte	0x4
 1847 0967 11       		.uleb128 0x11
 1848 0968 A3100000 		.4byte	.LASF177
 1849 096c 0E       		.byte	0xe
 1850 096d 5F       		.byte	0x5f
 1851 096e 86090000 		.4byte	0x986
 1852 0972 08       		.byte	0x8
 1853 0973 11       		.uleb128 0x11
 1854 0974 740A0000 		.4byte	.LASF170
 1855 0978 0E       		.byte	0xe
 1856 0979 60       		.byte	0x60
 1857 097a F2080000 		.4byte	0x8f2
 1858 097e 88       		.byte	0x88
 1859 097f 00       		.byte	0
 1860 0980 19       		.uleb128 0x19
 1861 0981 04       		.byte	0x4
 1862 0982 42090000 		.4byte	0x942
 1863 0986 0C       		.uleb128 0xc
 1864 0987 96090000 		.4byte	0x996
 1865 098b 96090000 		.4byte	0x996
 1866 098f 0D       		.uleb128 0xd
 1867 0990 CB020000 		.4byte	0x2cb
 1868 0994 1F       		.byte	0x1f
 1869 0995 00       		.byte	0
 1870 0996 19       		.uleb128 0x19
 1871 0997 04       		.byte	0x4
 1872 0998 9C090000 		.4byte	0x99c
 1873 099c 1B       		.uleb128 0x1b
 1874 099d 17       		.uleb128 0x17
 1875 099e 250D0000 		.4byte	.LASF178
 1876 09a2 08       		.byte	0x8
 1877 09a3 0E       		.byte	0xe
 1878 09a4 73       		.byte	0x73
 1879 09a5 C2090000 		.4byte	0x9c2
 1880 09a9 11       		.uleb128 0x11
 1881 09aa 8B0A0000 		.4byte	.LASF179
 1882 09ae 0E       		.byte	0xe
 1883 09af 74       		.byte	0x74
 1884 09b0 C2090000 		.4byte	0x9c2
 1885 09b4 00       		.byte	0
 1886 09b5 11       		.uleb128 0x11
 1887 09b6 F4050000 		.4byte	.LASF180
 1888 09ba 0E       		.byte	0xe
 1889 09bb 75       		.byte	0x75
 1890 09bc 25000000 		.4byte	0x25
 1891 09c0 04       		.byte	0x4
 1892 09c1 00       		.byte	0
 1893 09c2 19       		.uleb128 0x19
 1894 09c3 04       		.byte	0x4
 1895 09c4 A7000000 		.4byte	0xa7
 1896 09c8 17       		.uleb128 0x17
 1897 09c9 7B100000 		.4byte	.LASF181
ARM GAS  /tmp/ccHBIC16.s 			page 50


 1898 09cd 68       		.byte	0x68
 1899 09ce 0E       		.byte	0xe
 1900 09cf B3       		.byte	0xb3
 1901 09d0 F20A0000 		.4byte	0xaf2
 1902 09d4 18       		.uleb128 0x18
 1903 09d5 5F7000   		.ascii	"_p\000"
 1904 09d8 0E       		.byte	0xe
 1905 09d9 B4       		.byte	0xb4
 1906 09da C2090000 		.4byte	0x9c2
 1907 09de 00       		.byte	0
 1908 09df 18       		.uleb128 0x18
 1909 09e0 5F7200   		.ascii	"_r\000"
 1910 09e3 0E       		.byte	0xe
 1911 09e4 B5       		.byte	0xb5
 1912 09e5 25000000 		.4byte	0x25
 1913 09e9 04       		.byte	0x4
 1914 09ea 18       		.uleb128 0x18
 1915 09eb 5F7700   		.ascii	"_w\000"
 1916 09ee 0E       		.byte	0xe
 1917 09ef B6       		.byte	0xb6
 1918 09f0 25000000 		.4byte	0x25
 1919 09f4 08       		.byte	0x8
 1920 09f5 11       		.uleb128 0x11
 1921 09f6 51010000 		.4byte	.LASF182
 1922 09fa 0E       		.byte	0xe
 1923 09fb B7       		.byte	0xb7
 1924 09fc B9000000 		.4byte	0xb9
 1925 0a00 0C       		.byte	0xc
 1926 0a01 11       		.uleb128 0x11
 1927 0a02 62100000 		.4byte	.LASF183
 1928 0a06 0E       		.byte	0xe
 1929 0a07 B8       		.byte	0xb8
 1930 0a08 B9000000 		.4byte	0xb9
 1931 0a0c 0E       		.byte	0xe
 1932 0a0d 18       		.uleb128 0x18
 1933 0a0e 5F626600 		.ascii	"_bf\000"
 1934 0a12 0E       		.byte	0xe
 1935 0a13 B9       		.byte	0xb9
 1936 0a14 9D090000 		.4byte	0x99d
 1937 0a18 10       		.byte	0x10
 1938 0a19 11       		.uleb128 0x11
 1939 0a1a 53030000 		.4byte	.LASF184
 1940 0a1e 0E       		.byte	0xe
 1941 0a1f BA       		.byte	0xba
 1942 0a20 25000000 		.4byte	0x25
 1943 0a24 18       		.byte	0x18
 1944 0a25 11       		.uleb128 0x11
 1945 0a26 75090000 		.4byte	.LASF185
 1946 0a2a 0E       		.byte	0xe
 1947 0a2b C1       		.byte	0xc1
 1948 0a2c C9020000 		.4byte	0x2c9
 1949 0a30 1C       		.byte	0x1c
 1950 0a31 11       		.uleb128 0x11
 1951 0a32 CD140000 		.4byte	.LASF186
 1952 0a36 0E       		.byte	0xe
 1953 0a37 C3       		.byte	0xc3
 1954 0a38 A60D0000 		.4byte	0xda6
ARM GAS  /tmp/ccHBIC16.s 			page 51


 1955 0a3c 20       		.byte	0x20
 1956 0a3d 11       		.uleb128 0x11
 1957 0a3e 31060000 		.4byte	.LASF187
 1958 0a42 0E       		.byte	0xe
 1959 0a43 C5       		.byte	0xc5
 1960 0a44 D00D0000 		.4byte	0xdd0
 1961 0a48 24       		.byte	0x24
 1962 0a49 11       		.uleb128 0x11
 1963 0a4a 750B0000 		.4byte	.LASF188
 1964 0a4e 0E       		.byte	0xe
 1965 0a4f C8       		.byte	0xc8
 1966 0a50 F40D0000 		.4byte	0xdf4
 1967 0a54 28       		.byte	0x28
 1968 0a55 11       		.uleb128 0x11
 1969 0a56 190F0000 		.4byte	.LASF189
 1970 0a5a 0E       		.byte	0xe
 1971 0a5b C9       		.byte	0xc9
 1972 0a5c 0E0E0000 		.4byte	0xe0e
 1973 0a60 2C       		.byte	0x2c
 1974 0a61 18       		.uleb128 0x18
 1975 0a62 5F756200 		.ascii	"_ub\000"
 1976 0a66 0E       		.byte	0xe
 1977 0a67 CC       		.byte	0xcc
 1978 0a68 9D090000 		.4byte	0x99d
 1979 0a6c 30       		.byte	0x30
 1980 0a6d 18       		.uleb128 0x18
 1981 0a6e 5F757000 		.ascii	"_up\000"
 1982 0a72 0E       		.byte	0xe
 1983 0a73 CD       		.byte	0xcd
 1984 0a74 C2090000 		.4byte	0x9c2
 1985 0a78 38       		.byte	0x38
 1986 0a79 18       		.uleb128 0x18
 1987 0a7a 5F757200 		.ascii	"_ur\000"
 1988 0a7e 0E       		.byte	0xe
 1989 0a7f CE       		.byte	0xce
 1990 0a80 25000000 		.4byte	0x25
 1991 0a84 3C       		.byte	0x3c
 1992 0a85 11       		.uleb128 0x11
 1993 0a86 0E100000 		.4byte	.LASF190
 1994 0a8a 0E       		.byte	0xe
 1995 0a8b D1       		.byte	0xd1
 1996 0a8c 140E0000 		.4byte	0xe14
 1997 0a90 40       		.byte	0x40
 1998 0a91 11       		.uleb128 0x11
 1999 0a92 1E020000 		.4byte	.LASF191
 2000 0a96 0E       		.byte	0xe
 2001 0a97 D2       		.byte	0xd2
 2002 0a98 240E0000 		.4byte	0xe24
 2003 0a9c 43       		.byte	0x43
 2004 0a9d 18       		.uleb128 0x18
 2005 0a9e 5F6C6200 		.ascii	"_lb\000"
 2006 0aa2 0E       		.byte	0xe
 2007 0aa3 D5       		.byte	0xd5
 2008 0aa4 9D090000 		.4byte	0x99d
 2009 0aa8 44       		.byte	0x44
 2010 0aa9 11       		.uleb128 0x11
 2011 0aaa FF0F0000 		.4byte	.LASF192
ARM GAS  /tmp/ccHBIC16.s 			page 52


 2012 0aae 0E       		.byte	0xe
 2013 0aaf D8       		.byte	0xd8
 2014 0ab0 25000000 		.4byte	0x25
 2015 0ab4 4C       		.byte	0x4c
 2016 0ab5 11       		.uleb128 0x11
 2017 0ab6 020D0000 		.4byte	.LASF193
 2018 0aba 0E       		.byte	0xe
 2019 0abb D9       		.byte	0xd9
 2020 0abc 79070000 		.4byte	0x779
 2021 0ac0 50       		.byte	0x50
 2022 0ac1 11       		.uleb128 0x11
 2023 0ac2 9B030000 		.4byte	.LASF194
 2024 0ac6 0E       		.byte	0xe
 2025 0ac7 DC       		.byte	0xdc
 2026 0ac8 100B0000 		.4byte	0xb10
 2027 0acc 54       		.byte	0x54
 2028 0acd 11       		.uleb128 0x11
 2029 0ace 18020000 		.4byte	.LASF195
 2030 0ad2 0E       		.byte	0xe
 2031 0ad3 E0       		.byte	0xe0
 2032 0ad4 FA070000 		.4byte	0x7fa
 2033 0ad8 58       		.byte	0x58
 2034 0ad9 11       		.uleb128 0x11
 2035 0ada 86000000 		.4byte	.LASF196
 2036 0ade 0E       		.byte	0xe
 2037 0adf E2       		.byte	0xe2
 2038 0ae0 EF070000 		.4byte	0x7ef
 2039 0ae4 5C       		.byte	0x5c
 2040 0ae5 11       		.uleb128 0x11
 2041 0ae6 0A130000 		.4byte	.LASF197
 2042 0aea 0E       		.byte	0xe
 2043 0aeb E3       		.byte	0xe3
 2044 0aec 25000000 		.4byte	0x25
 2045 0af0 64       		.byte	0x64
 2046 0af1 00       		.byte	0
 2047 0af2 1C       		.uleb128 0x1c
 2048 0af3 25000000 		.4byte	0x25
 2049 0af7 100B0000 		.4byte	0xb10
 2050 0afb 1D       		.uleb128 0x1d
 2051 0afc 100B0000 		.4byte	0xb10
 2052 0b00 1D       		.uleb128 0x1d
 2053 0b01 C9020000 		.4byte	0x2c9
 2054 0b05 1D       		.uleb128 0x1d
 2055 0b06 940D0000 		.4byte	0xd94
 2056 0b0a 1D       		.uleb128 0x1d
 2057 0b0b 25000000 		.4byte	0x25
 2058 0b0f 00       		.byte	0
 2059 0b10 19       		.uleb128 0x19
 2060 0b11 04       		.byte	0x4
 2061 0b12 1B0B0000 		.4byte	0xb1b
 2062 0b16 04       		.uleb128 0x4
 2063 0b17 100B0000 		.4byte	0xb10
 2064 0b1b 1E       		.uleb128 0x1e
 2065 0b1c D2030000 		.4byte	.LASF198
 2066 0b20 2804     		.2byte	0x428
 2067 0b22 0E       		.byte	0xe
 2068 0b23 3802     		.2byte	0x238
ARM GAS  /tmp/ccHBIC16.s 			page 53


 2069 0b25 940D0000 		.4byte	0xd94
 2070 0b29 1F       		.uleb128 0x1f
 2071 0b2a F0       		.byte	0xf0
 2072 0b2b 0E       		.byte	0xe
 2073 0b2c 5602     		.2byte	0x256
 2074 0b2e 700C0000 		.4byte	0xc70
 2075 0b32 20       		.uleb128 0x20
 2076 0b33 D0       		.byte	0xd0
 2077 0b34 0E       		.byte	0xe
 2078 0b35 5802     		.2byte	0x258
 2079 0b37 330C0000 		.4byte	0xc33
 2080 0b3b 07       		.uleb128 0x7
 2081 0b3c C8040000 		.4byte	.LASF199
 2082 0b40 0E       		.byte	0xe
 2083 0b41 5902     		.2byte	0x259
 2084 0b43 3C000000 		.4byte	0x3c
 2085 0b47 00       		.byte	0
 2086 0b48 07       		.uleb128 0x7
 2087 0b49 500B0000 		.4byte	.LASF200
 2088 0b4d 0E       		.byte	0xe
 2089 0b4e 5A02     		.2byte	0x25a
 2090 0b50 940D0000 		.4byte	0xd94
 2091 0b54 04       		.byte	0x4
 2092 0b55 07       		.uleb128 0x7
 2093 0b56 780D0000 		.4byte	.LASF201
 2094 0b5a 0E       		.byte	0xe
 2095 0b5b 5B02     		.2byte	0x25b
 2096 0b5d C60E0000 		.4byte	0xec6
 2097 0b61 08       		.byte	0x8
 2098 0b62 07       		.uleb128 0x7
 2099 0b63 E6070000 		.4byte	.LASF202
 2100 0b67 0E       		.byte	0xe
 2101 0b68 5C02     		.2byte	0x25c
 2102 0b6a 79080000 		.4byte	0x879
 2103 0b6e 24       		.byte	0x24
 2104 0b6f 07       		.uleb128 0x7
 2105 0b70 37120000 		.4byte	.LASF203
 2106 0b74 0E       		.byte	0xe
 2107 0b75 5D02     		.2byte	0x25d
 2108 0b77 25000000 		.4byte	0x25
 2109 0b7b 48       		.byte	0x48
 2110 0b7c 07       		.uleb128 0x7
 2111 0b7d 760E0000 		.4byte	.LASF204
 2112 0b81 0E       		.byte	0xe
 2113 0b82 5E02     		.2byte	0x25e
 2114 0b84 0C010000 		.4byte	0x10c
 2115 0b88 50       		.byte	0x50
 2116 0b89 07       		.uleb128 0x7
 2117 0b8a 8C140000 		.4byte	.LASF205
 2118 0b8e 0E       		.byte	0xe
 2119 0b8f 5F02     		.2byte	0x25f
 2120 0b91 810E0000 		.4byte	0xe81
 2121 0b95 58       		.byte	0x58
 2122 0b96 07       		.uleb128 0x7
 2123 0b97 14100000 		.4byte	.LASF206
 2124 0b9b 0E       		.byte	0xe
 2125 0b9c 6002     		.2byte	0x260
ARM GAS  /tmp/ccHBIC16.s 			page 54


 2126 0b9e EF070000 		.4byte	0x7ef
 2127 0ba2 68       		.byte	0x68
 2128 0ba3 07       		.uleb128 0x7
 2129 0ba4 0A040000 		.4byte	.LASF207
 2130 0ba8 0E       		.byte	0xe
 2131 0ba9 6102     		.2byte	0x261
 2132 0bab EF070000 		.4byte	0x7ef
 2133 0baf 70       		.byte	0x70
 2134 0bb0 07       		.uleb128 0x7
 2135 0bb1 140E0000 		.4byte	.LASF208
 2136 0bb5 0E       		.byte	0xe
 2137 0bb6 6202     		.2byte	0x262
 2138 0bb8 EF070000 		.4byte	0x7ef
 2139 0bbc 78       		.byte	0x78
 2140 0bbd 07       		.uleb128 0x7
 2141 0bbe 3D0D0000 		.4byte	.LASF209
 2142 0bc2 0E       		.byte	0xe
 2143 0bc3 6302     		.2byte	0x263
 2144 0bc5 D60E0000 		.4byte	0xed6
 2145 0bc9 80       		.byte	0x80
 2146 0bca 07       		.uleb128 0x7
 2147 0bcb 4C090000 		.4byte	.LASF210
 2148 0bcf 0E       		.byte	0xe
 2149 0bd0 6402     		.2byte	0x264
 2150 0bd2 E60E0000 		.4byte	0xee6
 2151 0bd6 88       		.byte	0x88
 2152 0bd7 07       		.uleb128 0x7
 2153 0bd8 8E0F0000 		.4byte	.LASF211
 2154 0bdc 0E       		.byte	0xe
 2155 0bdd 6502     		.2byte	0x265
 2156 0bdf 25000000 		.4byte	0x25
 2157 0be3 A0       		.byte	0xa0
 2158 0be4 07       		.uleb128 0x7
 2159 0be5 5B0E0000 		.4byte	.LASF212
 2160 0be9 0E       		.byte	0xe
 2161 0bea 6602     		.2byte	0x266
 2162 0bec EF070000 		.4byte	0x7ef
 2163 0bf0 A4       		.byte	0xa4
 2164 0bf1 07       		.uleb128 0x7
 2165 0bf2 97080000 		.4byte	.LASF213
 2166 0bf6 0E       		.byte	0xe
 2167 0bf7 6702     		.2byte	0x267
 2168 0bf9 EF070000 		.4byte	0x7ef
 2169 0bfd AC       		.byte	0xac
 2170 0bfe 07       		.uleb128 0x7
 2171 0bff D8050000 		.4byte	.LASF214
 2172 0c03 0E       		.byte	0xe
 2173 0c04 6802     		.2byte	0x268
 2174 0c06 EF070000 		.4byte	0x7ef
 2175 0c0a B4       		.byte	0xb4
 2176 0c0b 07       		.uleb128 0x7
 2177 0c0c 8C110000 		.4byte	.LASF215
 2178 0c10 0E       		.byte	0xe
 2179 0c11 6902     		.2byte	0x269
 2180 0c13 EF070000 		.4byte	0x7ef
 2181 0c17 BC       		.byte	0xbc
 2182 0c18 07       		.uleb128 0x7
ARM GAS  /tmp/ccHBIC16.s 			page 55


 2183 0c19 9D0D0000 		.4byte	.LASF216
 2184 0c1d 0E       		.byte	0xe
 2185 0c1e 6A02     		.2byte	0x26a
 2186 0c20 EF070000 		.4byte	0x7ef
 2187 0c24 C4       		.byte	0xc4
 2188 0c25 07       		.uleb128 0x7
 2189 0c26 BC100000 		.4byte	.LASF217
 2190 0c2a 0E       		.byte	0xe
 2191 0c2b 6B02     		.2byte	0x26b
 2192 0c2d 25000000 		.4byte	0x25
 2193 0c31 CC       		.byte	0xcc
 2194 0c32 00       		.byte	0
 2195 0c33 20       		.uleb128 0x20
 2196 0c34 F0       		.byte	0xf0
 2197 0c35 0E       		.byte	0xe
 2198 0c36 7102     		.2byte	0x271
 2199 0c38 570C0000 		.4byte	0xc57
 2200 0c3c 07       		.uleb128 0x7
 2201 0c3d 690E0000 		.4byte	.LASF218
 2202 0c41 0E       		.byte	0xe
 2203 0c42 7302     		.2byte	0x273
 2204 0c44 F60E0000 		.4byte	0xef6
 2205 0c48 00       		.byte	0
 2206 0c49 07       		.uleb128 0x7
 2207 0c4a 52070000 		.4byte	.LASF219
 2208 0c4e 0E       		.byte	0xe
 2209 0c4f 7402     		.2byte	0x274
 2210 0c51 060F0000 		.4byte	0xf06
 2211 0c55 78       		.byte	0x78
 2212 0c56 00       		.byte	0
 2213 0c57 21       		.uleb128 0x21
 2214 0c58 D2030000 		.4byte	.LASF198
 2215 0c5c 0E       		.byte	0xe
 2216 0c5d 6C02     		.2byte	0x26c
 2217 0c5f 320B0000 		.4byte	0xb32
 2218 0c63 21       		.uleb128 0x21
 2219 0c64 24020000 		.4byte	.LASF220
 2220 0c68 0E       		.byte	0xe
 2221 0c69 7502     		.2byte	0x275
 2222 0c6b 330C0000 		.4byte	0xc33
 2223 0c6f 00       		.byte	0
 2224 0c70 07       		.uleb128 0x7
 2225 0c71 F7080000 		.4byte	.LASF221
 2226 0c75 0E       		.byte	0xe
 2227 0c76 3A02     		.2byte	0x23a
 2228 0c78 25000000 		.4byte	0x25
 2229 0c7c 00       		.byte	0
 2230 0c7d 07       		.uleb128 0x7
 2231 0c7e 4B070000 		.4byte	.LASF222
 2232 0c82 0E       		.byte	0xe
 2233 0c83 3F02     		.2byte	0x23f
 2234 0c85 7B0E0000 		.4byte	0xe7b
 2235 0c89 04       		.byte	0x4
 2236 0c8a 07       		.uleb128 0x7
 2237 0c8b 2D000000 		.4byte	.LASF223
 2238 0c8f 0E       		.byte	0xe
 2239 0c90 3F02     		.2byte	0x23f
ARM GAS  /tmp/ccHBIC16.s 			page 56


 2240 0c92 7B0E0000 		.4byte	0xe7b
 2241 0c96 08       		.byte	0x8
 2242 0c97 07       		.uleb128 0x7
 2243 0c98 30050000 		.4byte	.LASF224
 2244 0c9c 0E       		.byte	0xe
 2245 0c9d 3F02     		.2byte	0x23f
 2246 0c9f 7B0E0000 		.4byte	0xe7b
 2247 0ca3 0C       		.byte	0xc
 2248 0ca4 07       		.uleb128 0x7
 2249 0ca5 D8000000 		.4byte	.LASF225
 2250 0ca9 0E       		.byte	0xe
 2251 0caa 4102     		.2byte	0x241
 2252 0cac 25000000 		.4byte	0x25
 2253 0cb0 10       		.byte	0x10
 2254 0cb1 07       		.uleb128 0x7
 2255 0cb2 500E0000 		.4byte	.LASF226
 2256 0cb6 0E       		.byte	0xe
 2257 0cb7 4202     		.2byte	0x242
 2258 0cb9 160F0000 		.4byte	0xf16
 2259 0cbd 14       		.byte	0x14
 2260 0cbe 07       		.uleb128 0x7
 2261 0cbf 5E120000 		.4byte	.LASF227
 2262 0cc3 0E       		.byte	0xe
 2263 0cc4 4402     		.2byte	0x244
 2264 0cc6 25000000 		.4byte	0x25
 2265 0cca 30       		.byte	0x30
 2266 0ccb 07       		.uleb128 0x7
 2267 0ccc B9020000 		.4byte	.LASF228
 2268 0cd0 0E       		.byte	0xe
 2269 0cd1 4502     		.2byte	0x245
 2270 0cd3 CA0D0000 		.4byte	0xdca
 2271 0cd7 34       		.byte	0x34
 2272 0cd8 07       		.uleb128 0x7
 2273 0cd9 BA120000 		.4byte	.LASF229
 2274 0cdd 0E       		.byte	0xe
 2275 0cde 4702     		.2byte	0x247
 2276 0ce0 25000000 		.4byte	0x25
 2277 0ce4 38       		.byte	0x38
 2278 0ce5 07       		.uleb128 0x7
 2279 0ce6 3F100000 		.4byte	.LASF230
 2280 0cea 0E       		.byte	0xe
 2281 0ceb 4902     		.2byte	0x249
 2282 0ced 310F0000 		.4byte	0xf31
 2283 0cf1 3C       		.byte	0x3c
 2284 0cf2 07       		.uleb128 0x7
 2285 0cf3 38050000 		.4byte	.LASF231
 2286 0cf7 0E       		.byte	0xe
 2287 0cf8 4C02     		.2byte	0x24c
 2288 0cfa 63080000 		.4byte	0x863
 2289 0cfe 40       		.byte	0x40
 2290 0cff 07       		.uleb128 0x7
 2291 0d00 26050000 		.4byte	.LASF232
 2292 0d04 0E       		.byte	0xe
 2293 0d05 4D02     		.2byte	0x24d
 2294 0d07 25000000 		.4byte	0x25
 2295 0d0b 44       		.byte	0x44
 2296 0d0c 07       		.uleb128 0x7
ARM GAS  /tmp/ccHBIC16.s 			page 57


 2297 0d0d 3F110000 		.4byte	.LASF233
 2298 0d11 0E       		.byte	0xe
 2299 0d12 4E02     		.2byte	0x24e
 2300 0d14 63080000 		.4byte	0x863
 2301 0d18 48       		.byte	0x48
 2302 0d19 07       		.uleb128 0x7
 2303 0d1a CC0C0000 		.4byte	.LASF234
 2304 0d1e 0E       		.byte	0xe
 2305 0d1f 4F02     		.2byte	0x24f
 2306 0d21 370F0000 		.4byte	0xf37
 2307 0d25 4C       		.byte	0x4c
 2308 0d26 07       		.uleb128 0x7
 2309 0d27 7D010000 		.4byte	.LASF235
 2310 0d2b 0E       		.byte	0xe
 2311 0d2c 5202     		.2byte	0x252
 2312 0d2e 25000000 		.4byte	0x25
 2313 0d32 50       		.byte	0x50
 2314 0d33 07       		.uleb128 0x7
 2315 0d34 60080000 		.4byte	.LASF236
 2316 0d38 0E       		.byte	0xe
 2317 0d39 5302     		.2byte	0x253
 2318 0d3b 940D0000 		.4byte	0xd94
 2319 0d3f 54       		.byte	0x54
 2320 0d40 07       		.uleb128 0x7
 2321 0d41 CE080000 		.4byte	.LASF237
 2322 0d45 0E       		.byte	0xe
 2323 0d46 7602     		.2byte	0x276
 2324 0d48 290B0000 		.4byte	0xb29
 2325 0d4c 58       		.byte	0x58
 2326 0d4d 22       		.uleb128 0x22
 2327 0d4e 8F000000 		.4byte	.LASF175
 2328 0d52 0E       		.byte	0xe
 2329 0d53 7A02     		.2byte	0x27a
 2330 0d55 80090000 		.4byte	0x980
 2331 0d59 4801     		.2byte	0x148
 2332 0d5b 22       		.uleb128 0x22
 2333 0d5c 850F0000 		.4byte	.LASF238
 2334 0d60 0E       		.byte	0xe
 2335 0d61 7B02     		.2byte	0x27b
 2336 0d63 42090000 		.4byte	0x942
 2337 0d67 4C01     		.2byte	0x14c
 2338 0d69 22       		.uleb128 0x22
 2339 0d6a A3010000 		.4byte	.LASF239
 2340 0d6e 0E       		.byte	0xe
 2341 0d6f 7F02     		.2byte	0x27f
 2342 0d71 480F0000 		.4byte	0xf48
 2343 0d75 DC02     		.2byte	0x2dc
 2344 0d77 22       		.uleb128 0x22
 2345 0d78 21100000 		.4byte	.LASF240
 2346 0d7c 0E       		.byte	0xe
 2347 0d7d 8402     		.2byte	0x284
 2348 0d7f 400E0000 		.4byte	0xe40
 2349 0d83 E002     		.2byte	0x2e0
 2350 0d85 22       		.uleb128 0x22
 2351 0d86 F8030000 		.4byte	.LASF241
 2352 0d8a 0E       		.byte	0xe
 2353 0d8b 8502     		.2byte	0x285
ARM GAS  /tmp/ccHBIC16.s 			page 58


 2354 0d8d 540F0000 		.4byte	0xf54
 2355 0d91 EC02     		.2byte	0x2ec
 2356 0d93 00       		.byte	0
 2357 0d94 19       		.uleb128 0x19
 2358 0d95 04       		.byte	0x4
 2359 0d96 9A0D0000 		.4byte	0xd9a
 2360 0d9a 05       		.uleb128 0x5
 2361 0d9b 01       		.byte	0x1
 2362 0d9c 08       		.byte	0x8
 2363 0d9d 200F0000 		.4byte	.LASF242
 2364 0da1 04       		.uleb128 0x4
 2365 0da2 9A0D0000 		.4byte	0xd9a
 2366 0da6 19       		.uleb128 0x19
 2367 0da7 04       		.byte	0x4
 2368 0da8 F20A0000 		.4byte	0xaf2
 2369 0dac 1C       		.uleb128 0x1c
 2370 0dad 25000000 		.4byte	0x25
 2371 0db1 CA0D0000 		.4byte	0xdca
 2372 0db5 1D       		.uleb128 0x1d
 2373 0db6 100B0000 		.4byte	0xb10
 2374 0dba 1D       		.uleb128 0x1d
 2375 0dbb C9020000 		.4byte	0x2c9
 2376 0dbf 1D       		.uleb128 0x1d
 2377 0dc0 CA0D0000 		.4byte	0xdca
 2378 0dc4 1D       		.uleb128 0x1d
 2379 0dc5 25000000 		.4byte	0x25
 2380 0dc9 00       		.byte	0
 2381 0dca 19       		.uleb128 0x19
 2382 0dcb 04       		.byte	0x4
 2383 0dcc A10D0000 		.4byte	0xda1
 2384 0dd0 19       		.uleb128 0x19
 2385 0dd1 04       		.byte	0x4
 2386 0dd2 AC0D0000 		.4byte	0xdac
 2387 0dd6 1C       		.uleb128 0x1c
 2388 0dd7 84070000 		.4byte	0x784
 2389 0ddb F40D0000 		.4byte	0xdf4
 2390 0ddf 1D       		.uleb128 0x1d
 2391 0de0 100B0000 		.4byte	0xb10
 2392 0de4 1D       		.uleb128 0x1d
 2393 0de5 C9020000 		.4byte	0x2c9
 2394 0de9 1D       		.uleb128 0x1d
 2395 0dea 84070000 		.4byte	0x784
 2396 0dee 1D       		.uleb128 0x1d
 2397 0def 25000000 		.4byte	0x25
 2398 0df3 00       		.byte	0
 2399 0df4 19       		.uleb128 0x19
 2400 0df5 04       		.byte	0x4
 2401 0df6 D60D0000 		.4byte	0xdd6
 2402 0dfa 1C       		.uleb128 0x1c
 2403 0dfb 25000000 		.4byte	0x25
 2404 0dff 0E0E0000 		.4byte	0xe0e
 2405 0e03 1D       		.uleb128 0x1d
 2406 0e04 100B0000 		.4byte	0xb10
 2407 0e08 1D       		.uleb128 0x1d
 2408 0e09 C9020000 		.4byte	0x2c9
 2409 0e0d 00       		.byte	0
 2410 0e0e 19       		.uleb128 0x19
ARM GAS  /tmp/ccHBIC16.s 			page 59


 2411 0e0f 04       		.byte	0x4
 2412 0e10 FA0D0000 		.4byte	0xdfa
 2413 0e14 0C       		.uleb128 0xc
 2414 0e15 A7000000 		.4byte	0xa7
 2415 0e19 240E0000 		.4byte	0xe24
 2416 0e1d 0D       		.uleb128 0xd
 2417 0e1e CB020000 		.4byte	0x2cb
 2418 0e22 02       		.byte	0x2
 2419 0e23 00       		.byte	0
 2420 0e24 0C       		.uleb128 0xc
 2421 0e25 A7000000 		.4byte	0xa7
 2422 0e29 340E0000 		.4byte	0xe34
 2423 0e2d 0D       		.uleb128 0xd
 2424 0e2e CB020000 		.4byte	0x2cb
 2425 0e32 00       		.byte	0
 2426 0e33 00       		.byte	0
 2427 0e34 08       		.uleb128 0x8
 2428 0e35 99130000 		.4byte	.LASF243
 2429 0e39 0E       		.byte	0xe
 2430 0e3a 1D01     		.2byte	0x11d
 2431 0e3c C8090000 		.4byte	0x9c8
 2432 0e40 23       		.uleb128 0x23
 2433 0e41 250F0000 		.4byte	.LASF244
 2434 0e45 0C       		.byte	0xc
 2435 0e46 0E       		.byte	0xe
 2436 0e47 2101     		.2byte	0x121
 2437 0e49 750E0000 		.4byte	0xe75
 2438 0e4d 07       		.uleb128 0x7
 2439 0e4e 46090000 		.4byte	.LASF155
 2440 0e52 0E       		.byte	0xe
 2441 0e53 2301     		.2byte	0x123
 2442 0e55 750E0000 		.4byte	0xe75
 2443 0e59 00       		.byte	0
 2444 0e5a 07       		.uleb128 0x7
 2445 0e5b F0080000 		.4byte	.LASF245
 2446 0e5f 0E       		.byte	0xe
 2447 0e60 2401     		.2byte	0x124
 2448 0e62 25000000 		.4byte	0x25
 2449 0e66 04       		.byte	0x4
 2450 0e67 07       		.uleb128 0x7
 2451 0e68 4A0E0000 		.4byte	.LASF246
 2452 0e6c 0E       		.byte	0xe
 2453 0e6d 2501     		.2byte	0x125
 2454 0e6f 7B0E0000 		.4byte	0xe7b
 2455 0e73 08       		.byte	0x8
 2456 0e74 00       		.byte	0
 2457 0e75 19       		.uleb128 0x19
 2458 0e76 04       		.byte	0x4
 2459 0e77 400E0000 		.4byte	0xe40
 2460 0e7b 19       		.uleb128 0x19
 2461 0e7c 04       		.byte	0x4
 2462 0e7d 340E0000 		.4byte	0xe34
 2463 0e81 23       		.uleb128 0x23
 2464 0e82 D3140000 		.4byte	.LASF247
 2465 0e86 0E       		.byte	0xe
 2466 0e87 0E       		.byte	0xe
 2467 0e88 3D01     		.2byte	0x13d
ARM GAS  /tmp/ccHBIC16.s 			page 60


 2468 0e8a B60E0000 		.4byte	0xeb6
 2469 0e8e 07       		.uleb128 0x7
 2470 0e8f 6F0B0000 		.4byte	.LASF248
 2471 0e93 0E       		.byte	0xe
 2472 0e94 3E01     		.2byte	0x13e
 2473 0e96 B60E0000 		.4byte	0xeb6
 2474 0e9a 00       		.byte	0
 2475 0e9b 07       		.uleb128 0x7
 2476 0e9c C5060000 		.4byte	.LASF249
 2477 0ea0 0E       		.byte	0xe
 2478 0ea1 3F01     		.2byte	0x13f
 2479 0ea3 B60E0000 		.4byte	0xeb6
 2480 0ea7 06       		.byte	0x6
 2481 0ea8 07       		.uleb128 0x7
 2482 0ea9 09030000 		.4byte	.LASF250
 2483 0ead 0E       		.byte	0xe
 2484 0eae 4001     		.2byte	0x140
 2485 0eb0 CB000000 		.4byte	0xcb
 2486 0eb4 0C       		.byte	0xc
 2487 0eb5 00       		.byte	0
 2488 0eb6 0C       		.uleb128 0xc
 2489 0eb7 CB000000 		.4byte	0xcb
 2490 0ebb C60E0000 		.4byte	0xec6
 2491 0ebf 0D       		.uleb128 0xd
 2492 0ec0 CB020000 		.4byte	0x2cb
 2493 0ec4 02       		.byte	0x2
 2494 0ec5 00       		.byte	0
 2495 0ec6 0C       		.uleb128 0xc
 2496 0ec7 9A0D0000 		.4byte	0xd9a
 2497 0ecb D60E0000 		.4byte	0xed6
 2498 0ecf 0D       		.uleb128 0xd
 2499 0ed0 CB020000 		.4byte	0x2cb
 2500 0ed4 19       		.byte	0x19
 2501 0ed5 00       		.byte	0
 2502 0ed6 0C       		.uleb128 0xc
 2503 0ed7 9A0D0000 		.4byte	0xd9a
 2504 0edb E60E0000 		.4byte	0xee6
 2505 0edf 0D       		.uleb128 0xd
 2506 0ee0 CB020000 		.4byte	0x2cb
 2507 0ee4 07       		.byte	0x7
 2508 0ee5 00       		.byte	0
 2509 0ee6 0C       		.uleb128 0xc
 2510 0ee7 9A0D0000 		.4byte	0xd9a
 2511 0eeb F60E0000 		.4byte	0xef6
 2512 0eef 0D       		.uleb128 0xd
 2513 0ef0 CB020000 		.4byte	0x2cb
 2514 0ef4 17       		.byte	0x17
 2515 0ef5 00       		.byte	0
 2516 0ef6 0C       		.uleb128 0xc
 2517 0ef7 C2090000 		.4byte	0x9c2
 2518 0efb 060F0000 		.4byte	0xf06
 2519 0eff 0D       		.uleb128 0xd
 2520 0f00 CB020000 		.4byte	0x2cb
 2521 0f04 1D       		.byte	0x1d
 2522 0f05 00       		.byte	0
 2523 0f06 0C       		.uleb128 0xc
 2524 0f07 3C000000 		.4byte	0x3c
ARM GAS  /tmp/ccHBIC16.s 			page 61


 2525 0f0b 160F0000 		.4byte	0xf16
 2526 0f0f 0D       		.uleb128 0xd
 2527 0f10 CB020000 		.4byte	0x2cb
 2528 0f14 1D       		.byte	0x1d
 2529 0f15 00       		.byte	0
 2530 0f16 0C       		.uleb128 0xc
 2531 0f17 9A0D0000 		.4byte	0xd9a
 2532 0f1b 260F0000 		.4byte	0xf26
 2533 0f1f 0D       		.uleb128 0xd
 2534 0f20 CB020000 		.4byte	0x2cb
 2535 0f24 18       		.byte	0x18
 2536 0f25 00       		.byte	0
 2537 0f26 24       		.uleb128 0x24
 2538 0f27 310F0000 		.4byte	0xf31
 2539 0f2b 1D       		.uleb128 0x1d
 2540 0f2c 100B0000 		.4byte	0xb10
 2541 0f30 00       		.byte	0
 2542 0f31 19       		.uleb128 0x19
 2543 0f32 04       		.byte	0x4
 2544 0f33 260F0000 		.4byte	0xf26
 2545 0f37 19       		.uleb128 0x19
 2546 0f38 04       		.byte	0x4
 2547 0f39 63080000 		.4byte	0x863
 2548 0f3d 24       		.uleb128 0x24
 2549 0f3e 480F0000 		.4byte	0xf48
 2550 0f42 1D       		.uleb128 0x1d
 2551 0f43 25000000 		.4byte	0x25
 2552 0f47 00       		.byte	0
 2553 0f48 19       		.uleb128 0x19
 2554 0f49 04       		.byte	0x4
 2555 0f4a 4E0F0000 		.4byte	0xf4e
 2556 0f4e 19       		.uleb128 0x19
 2557 0f4f 04       		.byte	0x4
 2558 0f50 3D0F0000 		.4byte	0xf3d
 2559 0f54 0C       		.uleb128 0xc
 2560 0f55 340E0000 		.4byte	0xe34
 2561 0f59 640F0000 		.4byte	0xf64
 2562 0f5d 0D       		.uleb128 0xd
 2563 0f5e CB020000 		.4byte	0x2cb
 2564 0f62 02       		.byte	0x2
 2565 0f63 00       		.byte	0
 2566 0f64 0E       		.uleb128 0xe
 2567 0f65 65010000 		.4byte	.LASF251
 2568 0f69 0E       		.byte	0xe
 2569 0f6a FD02     		.2byte	0x2fd
 2570 0f6c 100B0000 		.4byte	0xb10
 2571 0f70 0E       		.uleb128 0xe
 2572 0f71 8C120000 		.4byte	.LASF252
 2573 0f75 0E       		.byte	0xe
 2574 0f76 FE02     		.2byte	0x2fe
 2575 0f78 160B0000 		.4byte	0xb16
 2576 0f7c 25       		.uleb128 0x25
 2577 0f7d 73746400 		.ascii	"std\000"
 2578 0f81 24       		.byte	0x24
 2579 0f82 00       		.byte	0
 2580 0f83 83110000 		.4byte	0x1183
 2581 0f87 26       		.uleb128 0x26
ARM GAS  /tmp/ccHBIC16.s 			page 62


 2582 0f88 AE140000 		.4byte	.LASF255
 2583 0f8c 13       		.byte	0x13
 2584 0f8d DF       		.byte	0xdf
 2585 0f8e 27       		.uleb128 0x27
 2586 0f8f 13       		.byte	0x13
 2587 0f90 DF       		.byte	0xdf
 2588 0f91 870F0000 		.4byte	0xf87
 2589 0f95 28       		.uleb128 0x28
 2590 0f96 0F       		.byte	0xf
 2591 0f97 7C       		.byte	0x7c
 2592 0f98 0D120000 		.4byte	0x120d
 2593 0f9c 28       		.uleb128 0x28
 2594 0f9d 0F       		.byte	0xf
 2595 0f9e 7D       		.byte	0x7d
 2596 0f9f 3D120000 		.4byte	0x123d
 2597 0fa3 28       		.uleb128 0x28
 2598 0fa4 0F       		.byte	0xf
 2599 0fa5 81       		.byte	0x81
 2600 0fa6 AF120000 		.4byte	0x12af
 2601 0faa 28       		.uleb128 0x28
 2602 0fab 0F       		.byte	0xf
 2603 0fac 87       		.byte	0x87
 2604 0fad C4120000 		.4byte	0x12c4
 2605 0fb1 28       		.uleb128 0x28
 2606 0fb2 0F       		.byte	0xf
 2607 0fb3 88       		.byte	0x88
 2608 0fb4 E0120000 		.4byte	0x12e0
 2609 0fb8 28       		.uleb128 0x28
 2610 0fb9 0F       		.byte	0xf
 2611 0fba 89       		.byte	0x89
 2612 0fbb F5120000 		.4byte	0x12f5
 2613 0fbf 28       		.uleb128 0x28
 2614 0fc0 0F       		.byte	0xf
 2615 0fc1 8A       		.byte	0x8a
 2616 0fc2 0A130000 		.4byte	0x130a
 2617 0fc6 28       		.uleb128 0x28
 2618 0fc7 0F       		.byte	0xf
 2619 0fc8 8C       		.byte	0x8c
 2620 0fc9 33130000 		.4byte	0x1333
 2621 0fcd 28       		.uleb128 0x28
 2622 0fce 0F       		.byte	0xf
 2623 0fcf 8F       		.byte	0x8f
 2624 0fd0 4D130000 		.4byte	0x134d
 2625 0fd4 28       		.uleb128 0x28
 2626 0fd5 0F       		.byte	0xf
 2627 0fd6 91       		.byte	0x91
 2628 0fd7 62130000 		.4byte	0x1362
 2629 0fdb 28       		.uleb128 0x28
 2630 0fdc 0F       		.byte	0xf
 2631 0fdd 94       		.byte	0x94
 2632 0fde 7C130000 		.4byte	0x137c
 2633 0fe2 28       		.uleb128 0x28
 2634 0fe3 0F       		.byte	0xf
 2635 0fe4 95       		.byte	0x95
 2636 0fe5 96130000 		.4byte	0x1396
 2637 0fe9 28       		.uleb128 0x28
 2638 0fea 0F       		.byte	0xf
ARM GAS  /tmp/ccHBIC16.s 			page 63


 2639 0feb 96       		.byte	0x96
 2640 0fec C7130000 		.4byte	0x13c7
 2641 0ff0 28       		.uleb128 0x28
 2642 0ff1 0F       		.byte	0xf
 2643 0ff2 98       		.byte	0x98
 2644 0ff3 E6130000 		.4byte	0x13e6
 2645 0ff7 28       		.uleb128 0x28
 2646 0ff8 0F       		.byte	0xf
 2647 0ff9 9E       		.byte	0x9e
 2648 0ffa 06140000 		.4byte	0x1406
 2649 0ffe 28       		.uleb128 0x28
 2650 0fff 0F       		.byte	0xf
 2651 1000 A0       		.byte	0xa0
 2652 1001 11140000 		.4byte	0x1411
 2653 1005 28       		.uleb128 0x28
 2654 1006 0F       		.byte	0xf
 2655 1007 A1       		.byte	0xa1
 2656 1008 22140000 		.4byte	0x1422
 2657 100c 28       		.uleb128 0x28
 2658 100d 0F       		.byte	0xf
 2659 100e A2       		.byte	0xa2
 2660 100f 42140000 		.4byte	0x1442
 2661 1013 28       		.uleb128 0x28
 2662 1014 0F       		.byte	0xf
 2663 1015 A3       		.byte	0xa3
 2664 1016 61140000 		.4byte	0x1461
 2665 101a 28       		.uleb128 0x28
 2666 101b 0F       		.byte	0xf
 2667 101c A4       		.byte	0xa4
 2668 101d 80140000 		.4byte	0x1480
 2669 1021 28       		.uleb128 0x28
 2670 1022 0F       		.byte	0xf
 2671 1023 A6       		.byte	0xa6
 2672 1024 95140000 		.4byte	0x1495
 2673 1028 28       		.uleb128 0x28
 2674 1029 0F       		.byte	0xf
 2675 102a A7       		.byte	0xa7
 2676 102b BA140000 		.4byte	0x14ba
 2677 102f 29       		.uleb128 0x29
 2678 1030 0F       		.byte	0xf
 2679 1031 0401     		.2byte	0x104
 2680 1033 6D120000 		.4byte	0x126d
 2681 1037 29       		.uleb128 0x29
 2682 1038 0F       		.byte	0xf
 2683 1039 0901     		.2byte	0x109
 2684 103b CD110000 		.4byte	0x11cd
 2685 103f 29       		.uleb128 0x29
 2686 1040 0F       		.byte	0xf
 2687 1041 0A01     		.2byte	0x10a
 2688 1043 D4140000 		.4byte	0x14d4
 2689 1047 29       		.uleb128 0x29
 2690 1048 0F       		.byte	0xf
 2691 1049 0C01     		.2byte	0x10c
 2692 104b EE140000 		.4byte	0x14ee
 2693 104f 29       		.uleb128 0x29
 2694 1050 0F       		.byte	0xf
 2695 1051 0D01     		.2byte	0x10d
ARM GAS  /tmp/ccHBIC16.s 			page 64


 2696 1053 41150000 		.4byte	0x1541
 2697 1057 29       		.uleb128 0x29
 2698 1058 0F       		.byte	0xf
 2699 1059 0E01     		.2byte	0x10e
 2700 105b 03150000 		.4byte	0x1503
 2701 105f 29       		.uleb128 0x29
 2702 1060 0F       		.byte	0xf
 2703 1061 0F01     		.2byte	0x10f
 2704 1063 22150000 		.4byte	0x1522
 2705 1067 29       		.uleb128 0x29
 2706 1068 0F       		.byte	0xf
 2707 1069 1001     		.2byte	0x110
 2708 106b 62150000 		.4byte	0x1562
 2709 106f 2A       		.uleb128 0x2a
 2710 1070 61627300 		.ascii	"abs\000"
 2711 1074 0F       		.byte	0xf
 2712 1075 B4       		.byte	0xb4
 2713 1076 89050000 		.4byte	.LASF478
 2714 107a 6B000000 		.4byte	0x6b
 2715 107e 88100000 		.4byte	0x1088
 2716 1082 1D       		.uleb128 0x1d
 2717 1083 6B000000 		.4byte	0x6b
 2718 1087 00       		.byte	0
 2719 1088 29       		.uleb128 0x29
 2720 1089 10       		.byte	0x10
 2721 108a 4D04     		.2byte	0x44d
 2722 108c 62160000 		.4byte	0x1662
 2723 1090 29       		.uleb128 0x29
 2724 1091 10       		.byte	0x10
 2725 1092 4E04     		.2byte	0x44e
 2726 1094 57160000 		.4byte	0x1657
 2727 1098 2B       		.uleb128 0x2b
 2728 1099 E0060000 		.4byte	.LASF253
 2729 109d 10       		.byte	0x10
 2730 109e 9301     		.2byte	0x193
 2731 10a0 51120000 		.4byte	.LASF479
 2732 10a4 72000000 		.4byte	0x72
 2733 10a8 B7100000 		.4byte	0x10b7
 2734 10ac 1D       		.uleb128 0x1d
 2735 10ad 72000000 		.4byte	0x72
 2736 10b1 1D       		.uleb128 0x1d
 2737 10b2 A3160000 		.4byte	0x16a3
 2738 10b6 00       		.byte	0
 2739 10b7 28       		.uleb128 0x28
 2740 10b8 11       		.byte	0x11
 2741 10b9 30       		.byte	0x30
 2742 10ba 81010000 		.4byte	0x181
 2743 10be 28       		.uleb128 0x28
 2744 10bf 11       		.byte	0x11
 2745 10c0 31       		.byte	0x31
 2746 10c1 9C010000 		.4byte	0x19c
 2747 10c5 28       		.uleb128 0x28
 2748 10c6 11       		.byte	0x11
 2749 10c7 32       		.byte	0x32
 2750 10c8 B2010000 		.4byte	0x1b2
 2751 10cc 28       		.uleb128 0x28
 2752 10cd 11       		.byte	0x11
ARM GAS  /tmp/ccHBIC16.s 			page 65


 2753 10ce 33       		.byte	0x33
 2754 10cf D7010000 		.4byte	0x1d7
 2755 10d3 28       		.uleb128 0x28
 2756 10d4 11       		.byte	0x11
 2757 10d5 35       		.byte	0x35
 2758 10d6 5B020000 		.4byte	0x25b
 2759 10da 28       		.uleb128 0x28
 2760 10db 11       		.byte	0x11
 2761 10dc 36       		.byte	0x36
 2762 10dd 71020000 		.4byte	0x271
 2763 10e1 28       		.uleb128 0x28
 2764 10e2 11       		.byte	0x11
 2765 10e3 37       		.byte	0x37
 2766 10e4 87020000 		.4byte	0x287
 2767 10e8 28       		.uleb128 0x28
 2768 10e9 11       		.byte	0x11
 2769 10ea 38       		.byte	0x38
 2770 10eb 9D020000 		.4byte	0x29d
 2771 10ef 28       		.uleb128 0x28
 2772 10f0 11       		.byte	0x11
 2773 10f1 3A       		.byte	0x3a
 2774 10f2 03020000 		.4byte	0x203
 2775 10f6 28       		.uleb128 0x28
 2776 10f7 11       		.byte	0x11
 2777 10f8 3B       		.byte	0x3b
 2778 10f9 19020000 		.4byte	0x219
 2779 10fd 28       		.uleb128 0x28
 2780 10fe 11       		.byte	0x11
 2781 10ff 3C       		.byte	0x3c
 2782 1100 2F020000 		.4byte	0x22f
 2783 1104 28       		.uleb128 0x28
 2784 1105 11       		.byte	0x11
 2785 1106 3D       		.byte	0x3d
 2786 1107 45020000 		.4byte	0x245
 2787 110b 28       		.uleb128 0x28
 2788 110c 11       		.byte	0x11
 2789 110d 3F       		.byte	0x3f
 2790 110e B3020000 		.4byte	0x2b3
 2791 1112 28       		.uleb128 0x28
 2792 1113 11       		.byte	0x11
 2793 1114 40       		.byte	0x40
 2794 1115 ED010000 		.4byte	0x1ed
 2795 1119 28       		.uleb128 0x28
 2796 111a 11       		.byte	0x11
 2797 111b 42       		.byte	0x42
 2798 111c 8C010000 		.4byte	0x18c
 2799 1120 28       		.uleb128 0x28
 2800 1121 11       		.byte	0x11
 2801 1122 43       		.byte	0x43
 2802 1123 A7010000 		.4byte	0x1a7
 2803 1127 28       		.uleb128 0x28
 2804 1128 11       		.byte	0x11
 2805 1129 44       		.byte	0x44
 2806 112a C2010000 		.4byte	0x1c2
 2807 112e 28       		.uleb128 0x28
 2808 112f 11       		.byte	0x11
 2809 1130 45       		.byte	0x45
ARM GAS  /tmp/ccHBIC16.s 			page 66


 2810 1131 E2010000 		.4byte	0x1e2
 2811 1135 28       		.uleb128 0x28
 2812 1136 11       		.byte	0x11
 2813 1137 47       		.byte	0x47
 2814 1138 66020000 		.4byte	0x266
 2815 113c 28       		.uleb128 0x28
 2816 113d 11       		.byte	0x11
 2817 113e 48       		.byte	0x48
 2818 113f 7C020000 		.4byte	0x27c
 2819 1143 28       		.uleb128 0x28
 2820 1144 11       		.byte	0x11
 2821 1145 49       		.byte	0x49
 2822 1146 92020000 		.4byte	0x292
 2823 114a 28       		.uleb128 0x28
 2824 114b 11       		.byte	0x11
 2825 114c 4A       		.byte	0x4a
 2826 114d A8020000 		.4byte	0x2a8
 2827 1151 28       		.uleb128 0x28
 2828 1152 11       		.byte	0x11
 2829 1153 4C       		.byte	0x4c
 2830 1154 0E020000 		.4byte	0x20e
 2831 1158 28       		.uleb128 0x28
 2832 1159 11       		.byte	0x11
 2833 115a 4D       		.byte	0x4d
 2834 115b 24020000 		.4byte	0x224
 2835 115f 28       		.uleb128 0x28
 2836 1160 11       		.byte	0x11
 2837 1161 4E       		.byte	0x4e
 2838 1162 3A020000 		.4byte	0x23a
 2839 1166 28       		.uleb128 0x28
 2840 1167 11       		.byte	0x11
 2841 1168 4F       		.byte	0x4f
 2842 1169 50020000 		.4byte	0x250
 2843 116d 28       		.uleb128 0x28
 2844 116e 11       		.byte	0x11
 2845 116f 51       		.byte	0x51
 2846 1170 BE020000 		.4byte	0x2be
 2847 1174 28       		.uleb128 0x28
 2848 1175 11       		.byte	0x11
 2849 1176 52       		.byte	0x52
 2850 1177 F8010000 		.4byte	0x1f8
 2851 117b 28       		.uleb128 0x28
 2852 117c 12       		.byte	0x12
 2853 117d 38       		.byte	0x38
 2854 117e 79000000 		.4byte	0x79
 2855 1182 00       		.byte	0
 2856 1183 2C       		.uleb128 0x2c
 2857 1184 27040000 		.4byte	.LASF254
 2858 1188 13       		.byte	0x13
 2859 1189 E1       		.byte	0xe1
 2860 118a E8110000 		.4byte	0x11e8
 2861 118e 26       		.uleb128 0x26
 2862 118f AE140000 		.4byte	.LASF255
 2863 1193 13       		.byte	0x13
 2864 1194 E3       		.byte	0xe3
 2865 1195 27       		.uleb128 0x27
 2866 1196 13       		.byte	0x13
ARM GAS  /tmp/ccHBIC16.s 			page 67


 2867 1197 E3       		.byte	0xe3
 2868 1198 8E110000 		.4byte	0x118e
 2869 119c 28       		.uleb128 0x28
 2870 119d 0F       		.byte	0xf
 2871 119e DC       		.byte	0xdc
 2872 119f 6D120000 		.4byte	0x126d
 2873 11a3 28       		.uleb128 0x28
 2874 11a4 0F       		.byte	0xf
 2875 11a5 EC       		.byte	0xec
 2876 11a6 D4140000 		.4byte	0x14d4
 2877 11aa 28       		.uleb128 0x28
 2878 11ab 0F       		.byte	0xf
 2879 11ac F7       		.byte	0xf7
 2880 11ad EE140000 		.4byte	0x14ee
 2881 11b1 28       		.uleb128 0x28
 2882 11b2 0F       		.byte	0xf
 2883 11b3 F8       		.byte	0xf8
 2884 11b4 03150000 		.4byte	0x1503
 2885 11b8 28       		.uleb128 0x28
 2886 11b9 0F       		.byte	0xf
 2887 11ba F9       		.byte	0xf9
 2888 11bb 22150000 		.4byte	0x1522
 2889 11bf 28       		.uleb128 0x28
 2890 11c0 0F       		.byte	0xf
 2891 11c1 FB       		.byte	0xfb
 2892 11c2 41150000 		.4byte	0x1541
 2893 11c6 28       		.uleb128 0x28
 2894 11c7 0F       		.byte	0xf
 2895 11c8 FC       		.byte	0xfc
 2896 11c9 62150000 		.4byte	0x1562
 2897 11cd 2D       		.uleb128 0x2d
 2898 11ce 64697600 		.ascii	"div\000"
 2899 11d2 0F       		.byte	0xf
 2900 11d3 E9       		.byte	0xe9
 2901 11d4 42130000 		.4byte	.LASF480
 2902 11d8 6D120000 		.4byte	0x126d
 2903 11dc 1D       		.uleb128 0x1d
 2904 11dd 6B000000 		.4byte	0x6b
 2905 11e1 1D       		.uleb128 0x1d
 2906 11e2 6B000000 		.4byte	0x6b
 2907 11e6 00       		.byte	0
 2908 11e7 00       		.byte	0
 2909 11e8 14       		.uleb128 0x14
 2910 11e9 08       		.byte	0x8
 2911 11ea 14       		.byte	0x14
 2912 11eb 20       		.byte	0x20
 2913 11ec C9110000 		.4byte	.LASF256
 2914 11f0 0D120000 		.4byte	0x120d
 2915 11f4 11       		.uleb128 0x11
 2916 11f5 0E080000 		.4byte	.LASF257
 2917 11f9 14       		.byte	0x14
 2918 11fa 21       		.byte	0x21
 2919 11fb 25000000 		.4byte	0x25
 2920 11ff 00       		.byte	0
 2921 1200 18       		.uleb128 0x18
 2922 1201 72656D00 		.ascii	"rem\000"
 2923 1205 14       		.byte	0x14
ARM GAS  /tmp/ccHBIC16.s 			page 68


 2924 1206 22       		.byte	0x22
 2925 1207 25000000 		.4byte	0x25
 2926 120b 04       		.byte	0x4
 2927 120c 00       		.byte	0
 2928 120d 03       		.uleb128 0x3
 2929 120e DE110000 		.4byte	.LASF258
 2930 1212 14       		.byte	0x14
 2931 1213 23       		.byte	0x23
 2932 1214 E8110000 		.4byte	0x11e8
 2933 1218 14       		.uleb128 0x14
 2934 1219 08       		.byte	0x8
 2935 121a 14       		.byte	0x14
 2936 121b 26       		.byte	0x26
 2937 121c 5C030000 		.4byte	.LASF259
 2938 1220 3D120000 		.4byte	0x123d
 2939 1224 11       		.uleb128 0x11
 2940 1225 0E080000 		.4byte	.LASF257
 2941 1229 14       		.byte	0x14
 2942 122a 27       		.byte	0x27
 2943 122b DD000000 		.4byte	0xdd
 2944 122f 00       		.byte	0
 2945 1230 18       		.uleb128 0x18
 2946 1231 72656D00 		.ascii	"rem\000"
 2947 1235 14       		.byte	0x14
 2948 1236 28       		.byte	0x28
 2949 1237 DD000000 		.4byte	0xdd
 2950 123b 04       		.byte	0x4
 2951 123c 00       		.byte	0
 2952 123d 03       		.uleb128 0x3
 2953 123e 060A0000 		.4byte	.LASF260
 2954 1242 14       		.byte	0x14
 2955 1243 29       		.byte	0x29
 2956 1244 18120000 		.4byte	0x1218
 2957 1248 14       		.uleb128 0x14
 2958 1249 10       		.byte	0x10
 2959 124a 14       		.byte	0x14
 2960 124b 2D       		.byte	0x2d
 2961 124c 6E000000 		.4byte	.LASF261
 2962 1250 6D120000 		.4byte	0x126d
 2963 1254 11       		.uleb128 0x11
 2964 1255 0E080000 		.4byte	.LASF257
 2965 1259 14       		.byte	0x14
 2966 125a 2E       		.byte	0x2e
 2967 125b 6B000000 		.4byte	0x6b
 2968 125f 00       		.byte	0
 2969 1260 18       		.uleb128 0x18
 2970 1261 72656D00 		.ascii	"rem\000"
 2971 1265 14       		.byte	0x14
 2972 1266 2F       		.byte	0x2f
 2973 1267 6B000000 		.4byte	0x6b
 2974 126b 08       		.byte	0x8
 2975 126c 00       		.byte	0
 2976 126d 03       		.uleb128 0x3
 2977 126e B9080000 		.4byte	.LASF262
 2978 1272 14       		.byte	0x14
 2979 1273 30       		.byte	0x30
 2980 1274 48120000 		.4byte	0x1248
ARM GAS  /tmp/ccHBIC16.s 			page 69


 2981 1278 03       		.uleb128 0x3
 2982 1279 29120000 		.4byte	.LASF263
 2983 127d 14       		.byte	0x14
 2984 127e 35       		.byte	0x35
 2985 127f 83120000 		.4byte	0x1283
 2986 1283 19       		.uleb128 0x19
 2987 1284 04       		.byte	0x4
 2988 1285 89120000 		.4byte	0x1289
 2989 1289 1C       		.uleb128 0x1c
 2990 128a 25000000 		.4byte	0x25
 2991 128e 9D120000 		.4byte	0x129d
 2992 1292 1D       		.uleb128 0x1d
 2993 1293 9D120000 		.4byte	0x129d
 2994 1297 1D       		.uleb128 0x1d
 2995 1298 9D120000 		.4byte	0x129d
 2996 129c 00       		.byte	0
 2997 129d 19       		.uleb128 0x19
 2998 129e 04       		.byte	0x4
 2999 129f A3120000 		.4byte	0x12a3
 3000 12a3 2E       		.uleb128 0x2e
 3001 12a4 0F       		.uleb128 0xf
 3002 12a5 D60E0000 		.4byte	.LASF264
 3003 12a9 14       		.byte	0x14
 3004 12aa 5F       		.byte	0x5f
 3005 12ab 940D0000 		.4byte	0xd94
 3006 12af 2F       		.uleb128 0x2f
 3007 12b0 E5060000 		.4byte	.LASF265
 3008 12b4 14       		.byte	0x14
 3009 12b5 48       		.byte	0x48
 3010 12b6 25000000 		.4byte	0x25
 3011 12ba C4120000 		.4byte	0x12c4
 3012 12be 1D       		.uleb128 0x1d
 3013 12bf 96090000 		.4byte	0x996
 3014 12c3 00       		.byte	0
 3015 12c4 2F       		.uleb128 0x2f
 3016 12c5 80020000 		.4byte	.LASF266
 3017 12c9 14       		.byte	0x14
 3018 12ca 49       		.byte	0x49
 3019 12cb D9120000 		.4byte	0x12d9
 3020 12cf D9120000 		.4byte	0x12d9
 3021 12d3 1D       		.uleb128 0x1d
 3022 12d4 CA0D0000 		.4byte	0xdca
 3023 12d8 00       		.byte	0
 3024 12d9 05       		.uleb128 0x5
 3025 12da 08       		.byte	0x8
 3026 12db 04       		.byte	0x4
 3027 12dc 9C100000 		.4byte	.LASF267
 3028 12e0 2F       		.uleb128 0x2f
 3029 12e1 85020000 		.4byte	.LASF268
 3030 12e5 14       		.byte	0x14
 3031 12e6 4D       		.byte	0x4d
 3032 12e7 25000000 		.4byte	0x25
 3033 12eb F5120000 		.4byte	0x12f5
 3034 12ef 1D       		.uleb128 0x1d
 3035 12f0 CA0D0000 		.4byte	0xdca
 3036 12f4 00       		.byte	0
 3037 12f5 2F       		.uleb128 0x2f
ARM GAS  /tmp/ccHBIC16.s 			page 70


 3038 12f6 99020000 		.4byte	.LASF269
 3039 12fa 14       		.byte	0x14
 3040 12fb 4F       		.byte	0x4f
 3041 12fc DD000000 		.4byte	0xdd
 3042 1300 0A130000 		.4byte	0x130a
 3043 1304 1D       		.uleb128 0x1d
 3044 1305 CA0D0000 		.4byte	0xdca
 3045 1309 00       		.byte	0
 3046 130a 2F       		.uleb128 0x2f
 3047 130b C70F0000 		.4byte	.LASF270
 3048 130f 14       		.byte	0x14
 3049 1310 51       		.byte	0x51
 3050 1311 C9020000 		.4byte	0x2c9
 3051 1315 33130000 		.4byte	0x1333
 3052 1319 1D       		.uleb128 0x1d
 3053 131a 9D120000 		.4byte	0x129d
 3054 131e 1D       		.uleb128 0x1d
 3055 131f 9D120000 		.4byte	0x129d
 3056 1323 1D       		.uleb128 0x1d
 3057 1324 2C000000 		.4byte	0x2c
 3058 1328 1D       		.uleb128 0x1d
 3059 1329 2C000000 		.4byte	0x2c
 3060 132d 1D       		.uleb128 0x1d
 3061 132e 78120000 		.4byte	0x1278
 3062 1332 00       		.byte	0
 3063 1333 30       		.uleb128 0x30
 3064 1334 64697600 		.ascii	"div\000"
 3065 1338 14       		.byte	0x14
 3066 1339 57       		.byte	0x57
 3067 133a 0D120000 		.4byte	0x120d
 3068 133e 4D130000 		.4byte	0x134d
 3069 1342 1D       		.uleb128 0x1d
 3070 1343 25000000 		.4byte	0x25
 3071 1347 1D       		.uleb128 0x1d
 3072 1348 25000000 		.4byte	0x25
 3073 134c 00       		.byte	0
 3074 134d 2F       		.uleb128 0x2f
 3075 134e B3120000 		.4byte	.LASF271
 3076 1352 14       		.byte	0x14
 3077 1353 5A       		.byte	0x5a
 3078 1354 940D0000 		.4byte	0xd94
 3079 1358 62130000 		.4byte	0x1362
 3080 135c 1D       		.uleb128 0x1d
 3081 135d CA0D0000 		.4byte	0xdca
 3082 1361 00       		.byte	0
 3083 1362 2F       		.uleb128 0x2f
 3084 1363 76100000 		.4byte	.LASF272
 3085 1367 14       		.byte	0x14
 3086 1368 63       		.byte	0x63
 3087 1369 3D120000 		.4byte	0x123d
 3088 136d 7C130000 		.4byte	0x137c
 3089 1371 1D       		.uleb128 0x1d
 3090 1372 DD000000 		.4byte	0xdd
 3091 1376 1D       		.uleb128 0x1d
 3092 1377 DD000000 		.4byte	0xdd
 3093 137b 00       		.byte	0
 3094 137c 2F       		.uleb128 0x2f
ARM GAS  /tmp/ccHBIC16.s 			page 71


 3095 137d C8080000 		.4byte	.LASF273
 3096 1381 14       		.byte	0x14
 3097 1382 65       		.byte	0x65
 3098 1383 25000000 		.4byte	0x25
 3099 1387 96130000 		.4byte	0x1396
 3100 138b 1D       		.uleb128 0x1d
 3101 138c CA0D0000 		.4byte	0xdca
 3102 1390 1D       		.uleb128 0x1d
 3103 1391 2C000000 		.4byte	0x2c
 3104 1395 00       		.byte	0
 3105 1396 2F       		.uleb128 0x2f
 3106 1397 2C0D0000 		.4byte	.LASF274
 3107 139b 14       		.byte	0x14
 3108 139c 6B       		.byte	0x6b
 3109 139d 2C000000 		.4byte	0x2c
 3110 13a1 B5130000 		.4byte	0x13b5
 3111 13a5 1D       		.uleb128 0x1d
 3112 13a6 B5130000 		.4byte	0x13b5
 3113 13aa 1D       		.uleb128 0x1d
 3114 13ab CA0D0000 		.4byte	0xdca
 3115 13af 1D       		.uleb128 0x1d
 3116 13b0 2C000000 		.4byte	0x2c
 3117 13b4 00       		.byte	0
 3118 13b5 19       		.uleb128 0x19
 3119 13b6 04       		.byte	0x4
 3120 13b7 BB130000 		.4byte	0x13bb
 3121 13bb 05       		.uleb128 0x5
 3122 13bc 04       		.byte	0x4
 3123 13bd 07       		.byte	0x7
 3124 13be E70C0000 		.4byte	.LASF275
 3125 13c2 04       		.uleb128 0x4
 3126 13c3 BB130000 		.4byte	0x13bb
 3127 13c7 2F       		.uleb128 0x2f
 3128 13c8 E4110000 		.4byte	.LASF276
 3129 13cc 14       		.byte	0x14
 3130 13cd 67       		.byte	0x67
 3131 13ce 25000000 		.4byte	0x25
 3132 13d2 E6130000 		.4byte	0x13e6
 3133 13d6 1D       		.uleb128 0x1d
 3134 13d7 B5130000 		.4byte	0x13b5
 3135 13db 1D       		.uleb128 0x1d
 3136 13dc CA0D0000 		.4byte	0xdca
 3137 13e0 1D       		.uleb128 0x1d
 3138 13e1 2C000000 		.4byte	0x2c
 3139 13e5 00       		.byte	0
 3140 13e6 31       		.uleb128 0x31
 3141 13e7 04110000 		.4byte	.LASF277
 3142 13eb 14       		.byte	0x14
 3143 13ec 87       		.byte	0x87
 3144 13ed 06140000 		.4byte	0x1406
 3145 13f1 1D       		.uleb128 0x1d
 3146 13f2 C9020000 		.4byte	0x2c9
 3147 13f6 1D       		.uleb128 0x1d
 3148 13f7 2C000000 		.4byte	0x2c
 3149 13fb 1D       		.uleb128 0x1d
 3150 13fc 2C000000 		.4byte	0x2c
 3151 1400 1D       		.uleb128 0x1d
ARM GAS  /tmp/ccHBIC16.s 			page 72


 3152 1401 78120000 		.4byte	0x1278
 3153 1405 00       		.byte	0
 3154 1406 32       		.uleb128 0x32
 3155 1407 DC120000 		.4byte	.LASF481
 3156 140b 14       		.byte	0x14
 3157 140c 88       		.byte	0x88
 3158 140d 25000000 		.4byte	0x25
 3159 1411 31       		.uleb128 0x31
 3160 1412 1A0B0000 		.4byte	.LASF278
 3161 1416 14       		.byte	0x14
 3162 1417 93       		.byte	0x93
 3163 1418 22140000 		.4byte	0x1422
 3164 141c 1D       		.uleb128 0x1d
 3165 141d 3C000000 		.4byte	0x3c
 3166 1421 00       		.byte	0
 3167 1422 2F       		.uleb128 0x2f
 3168 1423 AB0E0000 		.4byte	.LASF279
 3169 1427 14       		.byte	0x14
 3170 1428 94       		.byte	0x94
 3171 1429 D9120000 		.4byte	0x12d9
 3172 142d 3C140000 		.4byte	0x143c
 3173 1431 1D       		.uleb128 0x1d
 3174 1432 CA0D0000 		.4byte	0xdca
 3175 1436 1D       		.uleb128 0x1d
 3176 1437 3C140000 		.4byte	0x143c
 3177 143b 00       		.byte	0
 3178 143c 19       		.uleb128 0x19
 3179 143d 04       		.byte	0x4
 3180 143e 940D0000 		.4byte	0xd94
 3181 1442 2F       		.uleb128 0x2f
 3182 1443 C30E0000 		.4byte	.LASF280
 3183 1447 14       		.byte	0x14
 3184 1448 9F       		.byte	0x9f
 3185 1449 DD000000 		.4byte	0xdd
 3186 144d 61140000 		.4byte	0x1461
 3187 1451 1D       		.uleb128 0x1d
 3188 1452 CA0D0000 		.4byte	0xdca
 3189 1456 1D       		.uleb128 0x1d
 3190 1457 3C140000 		.4byte	0x143c
 3191 145b 1D       		.uleb128 0x1d
 3192 145c 25000000 		.4byte	0x25
 3193 1460 00       		.byte	0
 3194 1461 2F       		.uleb128 0x2f
 3195 1462 EE090000 		.4byte	.LASF281
 3196 1466 14       		.byte	0x14
 3197 1467 A1       		.byte	0xa1
 3198 1468 EF000000 		.4byte	0xef
 3199 146c 80140000 		.4byte	0x1480
 3200 1470 1D       		.uleb128 0x1d
 3201 1471 CA0D0000 		.4byte	0xdca
 3202 1475 1D       		.uleb128 0x1d
 3203 1476 3C140000 		.4byte	0x143c
 3204 147a 1D       		.uleb128 0x1d
 3205 147b 25000000 		.4byte	0x25
 3206 147f 00       		.byte	0
 3207 1480 2F       		.uleb128 0x2f
 3208 1481 960B0000 		.4byte	.LASF282
ARM GAS  /tmp/ccHBIC16.s 			page 73


 3209 1485 14       		.byte	0x14
 3210 1486 A4       		.byte	0xa4
 3211 1487 25000000 		.4byte	0x25
 3212 148b 95140000 		.4byte	0x1495
 3213 148f 1D       		.uleb128 0x1d
 3214 1490 CA0D0000 		.4byte	0xdca
 3215 1494 00       		.byte	0
 3216 1495 2F       		.uleb128 0x2f
 3217 1496 5E0A0000 		.4byte	.LASF283
 3218 149a 14       		.byte	0x14
 3219 149b 6D       		.byte	0x6d
 3220 149c 2C000000 		.4byte	0x2c
 3221 14a0 B4140000 		.4byte	0x14b4
 3222 14a4 1D       		.uleb128 0x1d
 3223 14a5 940D0000 		.4byte	0xd94
 3224 14a9 1D       		.uleb128 0x1d
 3225 14aa B4140000 		.4byte	0x14b4
 3226 14ae 1D       		.uleb128 0x1d
 3227 14af 2C000000 		.4byte	0x2c
 3228 14b3 00       		.byte	0
 3229 14b4 19       		.uleb128 0x19
 3230 14b5 04       		.byte	0x4
 3231 14b6 C2130000 		.4byte	0x13c2
 3232 14ba 2F       		.uleb128 0x2f
 3233 14bb 7C030000 		.4byte	.LASF284
 3234 14bf 14       		.byte	0x14
 3235 14c0 69       		.byte	0x69
 3236 14c1 25000000 		.4byte	0x25
 3237 14c5 D4140000 		.4byte	0x14d4
 3238 14c9 1D       		.uleb128 0x1d
 3239 14ca 940D0000 		.4byte	0xd94
 3240 14ce 1D       		.uleb128 0x1d
 3241 14cf BB130000 		.4byte	0x13bb
 3242 14d3 00       		.byte	0
 3243 14d4 2F       		.uleb128 0x2f
 3244 14d5 8C040000 		.4byte	.LASF285
 3245 14d9 14       		.byte	0x14
 3246 14da F1       		.byte	0xf1
 3247 14db 6D120000 		.4byte	0x126d
 3248 14df EE140000 		.4byte	0x14ee
 3249 14e3 1D       		.uleb128 0x1d
 3250 14e4 6B000000 		.4byte	0x6b
 3251 14e8 1D       		.uleb128 0x1d
 3252 14e9 6B000000 		.4byte	0x6b
 3253 14ed 00       		.byte	0
 3254 14ee 2F       		.uleb128 0x2f
 3255 14ef 9B0F0000 		.4byte	.LASF286
 3256 14f3 14       		.byte	0x14
 3257 14f4 EC       		.byte	0xec
 3258 14f5 6B000000 		.4byte	0x6b
 3259 14f9 03150000 		.4byte	0x1503
 3260 14fd 1D       		.uleb128 0x1d
 3261 14fe CA0D0000 		.4byte	0xdca
 3262 1502 00       		.byte	0
 3263 1503 2F       		.uleb128 0x2f
 3264 1504 CB060000 		.4byte	.LASF287
 3265 1508 14       		.byte	0x14
ARM GAS  /tmp/ccHBIC16.s 			page 74


 3266 1509 F2       		.byte	0xf2
 3267 150a 6B000000 		.4byte	0x6b
 3268 150e 22150000 		.4byte	0x1522
 3269 1512 1D       		.uleb128 0x1d
 3270 1513 CA0D0000 		.4byte	0xdca
 3271 1517 1D       		.uleb128 0x1d
 3272 1518 3C140000 		.4byte	0x143c
 3273 151c 1D       		.uleb128 0x1d
 3274 151d 25000000 		.4byte	0x25
 3275 1521 00       		.byte	0
 3276 1522 2F       		.uleb128 0x2f
 3277 1523 AC130000 		.4byte	.LASF288
 3278 1527 14       		.byte	0x14
 3279 1528 F6       		.byte	0xf6
 3280 1529 0C010000 		.4byte	0x10c
 3281 152d 41150000 		.4byte	0x1541
 3282 1531 1D       		.uleb128 0x1d
 3283 1532 CA0D0000 		.4byte	0xdca
 3284 1536 1D       		.uleb128 0x1d
 3285 1537 3C140000 		.4byte	0x143c
 3286 153b 1D       		.uleb128 0x1d
 3287 153c 25000000 		.4byte	0x25
 3288 1540 00       		.byte	0
 3289 1541 2F       		.uleb128 0x2f
 3290 1542 8E010000 		.4byte	.LASF289
 3291 1546 14       		.byte	0x14
 3292 1547 97       		.byte	0x97
 3293 1548 5B150000 		.4byte	0x155b
 3294 154c 5B150000 		.4byte	0x155b
 3295 1550 1D       		.uleb128 0x1d
 3296 1551 CA0D0000 		.4byte	0xdca
 3297 1555 1D       		.uleb128 0x1d
 3298 1556 3C140000 		.4byte	0x143c
 3299 155a 00       		.byte	0
 3300 155b 05       		.uleb128 0x5
 3301 155c 04       		.byte	0x4
 3302 155d 04       		.byte	0x4
 3303 155e EE050000 		.4byte	.LASF290
 3304 1562 33       		.uleb128 0x33
 3305 1563 BD060000 		.4byte	.LASF291
 3306 1567 14       		.byte	0x14
 3307 1568 2801     		.2byte	0x128
 3308 156a 72000000 		.4byte	0x72
 3309 156e 7D150000 		.4byte	0x157d
 3310 1572 1D       		.uleb128 0x1d
 3311 1573 CA0D0000 		.4byte	0xdca
 3312 1577 1D       		.uleb128 0x1d
 3313 1578 3C140000 		.4byte	0x143c
 3314 157c 00       		.byte	0
 3315 157d 28       		.uleb128 0x28
 3316 157e 15       		.byte	0x15
 3317 157f 27       		.byte	0x27
 3318 1580 AF120000 		.4byte	0x12af
 3319 1584 28       		.uleb128 0x28
 3320 1585 15       		.byte	0x15
 3321 1586 33       		.byte	0x33
 3322 1587 0D120000 		.4byte	0x120d
ARM GAS  /tmp/ccHBIC16.s 			page 75


 3323 158b 28       		.uleb128 0x28
 3324 158c 15       		.byte	0x15
 3325 158d 34       		.byte	0x34
 3326 158e 3D120000 		.4byte	0x123d
 3327 1592 28       		.uleb128 0x28
 3328 1593 15       		.byte	0x15
 3329 1594 36       		.byte	0x36
 3330 1595 6F100000 		.4byte	0x106f
 3331 1599 28       		.uleb128 0x28
 3332 159a 15       		.byte	0x15
 3333 159b 37       		.byte	0x37
 3334 159c C4120000 		.4byte	0x12c4
 3335 15a0 28       		.uleb128 0x28
 3336 15a1 15       		.byte	0x15
 3337 15a2 38       		.byte	0x38
 3338 15a3 E0120000 		.4byte	0x12e0
 3339 15a7 28       		.uleb128 0x28
 3340 15a8 15       		.byte	0x15
 3341 15a9 39       		.byte	0x39
 3342 15aa F5120000 		.4byte	0x12f5
 3343 15ae 28       		.uleb128 0x28
 3344 15af 15       		.byte	0x15
 3345 15b0 3A       		.byte	0x3a
 3346 15b1 0A130000 		.4byte	0x130a
 3347 15b5 28       		.uleb128 0x28
 3348 15b6 15       		.byte	0x15
 3349 15b7 3C       		.byte	0x3c
 3350 15b8 CD110000 		.4byte	0x11cd
 3351 15bc 28       		.uleb128 0x28
 3352 15bd 15       		.byte	0x15
 3353 15be 3E       		.byte	0x3e
 3354 15bf 4D130000 		.4byte	0x134d
 3355 15c3 28       		.uleb128 0x28
 3356 15c4 15       		.byte	0x15
 3357 15c5 40       		.byte	0x40
 3358 15c6 62130000 		.4byte	0x1362
 3359 15ca 28       		.uleb128 0x28
 3360 15cb 15       		.byte	0x15
 3361 15cc 43       		.byte	0x43
 3362 15cd 7C130000 		.4byte	0x137c
 3363 15d1 28       		.uleb128 0x28
 3364 15d2 15       		.byte	0x15
 3365 15d3 44       		.byte	0x44
 3366 15d4 96130000 		.4byte	0x1396
 3367 15d8 28       		.uleb128 0x28
 3368 15d9 15       		.byte	0x15
 3369 15da 45       		.byte	0x45
 3370 15db C7130000 		.4byte	0x13c7
 3371 15df 28       		.uleb128 0x28
 3372 15e0 15       		.byte	0x15
 3373 15e1 47       		.byte	0x47
 3374 15e2 E6130000 		.4byte	0x13e6
 3375 15e6 28       		.uleb128 0x28
 3376 15e7 15       		.byte	0x15
 3377 15e8 48       		.byte	0x48
 3378 15e9 06140000 		.4byte	0x1406
 3379 15ed 28       		.uleb128 0x28
ARM GAS  /tmp/ccHBIC16.s 			page 76


 3380 15ee 15       		.byte	0x15
 3381 15ef 4A       		.byte	0x4a
 3382 15f0 11140000 		.4byte	0x1411
 3383 15f4 28       		.uleb128 0x28
 3384 15f5 15       		.byte	0x15
 3385 15f6 4B       		.byte	0x4b
 3386 15f7 22140000 		.4byte	0x1422
 3387 15fb 28       		.uleb128 0x28
 3388 15fc 15       		.byte	0x15
 3389 15fd 4C       		.byte	0x4c
 3390 15fe 42140000 		.4byte	0x1442
 3391 1602 28       		.uleb128 0x28
 3392 1603 15       		.byte	0x15
 3393 1604 4D       		.byte	0x4d
 3394 1605 61140000 		.4byte	0x1461
 3395 1609 28       		.uleb128 0x28
 3396 160a 15       		.byte	0x15
 3397 160b 4E       		.byte	0x4e
 3398 160c 80140000 		.4byte	0x1480
 3399 1610 28       		.uleb128 0x28
 3400 1611 15       		.byte	0x15
 3401 1612 50       		.byte	0x50
 3402 1613 95140000 		.4byte	0x1495
 3403 1617 28       		.uleb128 0x28
 3404 1618 15       		.byte	0x15
 3405 1619 51       		.byte	0x51
 3406 161a BA140000 		.4byte	0x14ba
 3407 161e 0F       		.uleb128 0xf
 3408 161f 5B070000 		.4byte	.LASF292
 3409 1623 16       		.byte	0x16
 3410 1624 8F       		.byte	0x8f
 3411 1625 30160000 		.4byte	0x1630
 3412 1629 05       		.uleb128 0x5
 3413 162a 01       		.byte	0x1
 3414 162b 02       		.byte	0x2
 3415 162c FD0E0000 		.4byte	.LASF293
 3416 1630 0A       		.uleb128 0xa
 3417 1631 29160000 		.4byte	0x1629
 3418 1635 34       		.uleb128 0x34
 3419 1636 A1030000 		.4byte	.LASF294
 3420 163a 16       		.byte	0x16
 3421 163b 94       		.byte	0x94
 3422 163c CD010000 		.4byte	0x1cd
 3423 1640 05       		.uleb128 0x5
 3424 1641 03       		.byte	0x3
 3425 1642 00000000 		.4byte	_ZL32cpu_irq_critical_section_counter
 3426 1646 34       		.uleb128 0x34
 3427 1647 5E130000 		.4byte	.LASF295
 3428 164b 16       		.byte	0x16
 3429 164c 95       		.byte	0x95
 3430 164d 30160000 		.4byte	0x1630
 3431 1651 05       		.uleb128 0x5
 3432 1652 03       		.byte	0x3
 3433 1653 00000000 		.4byte	_ZL28cpu_irq_prev_interrupt_state
 3434 1657 03       		.uleb128 0x3
 3435 1658 5D010000 		.4byte	.LASF296
 3436 165c 17       		.byte	0x17
ARM GAS  /tmp/ccHBIC16.s 			page 77


 3437 165d AD       		.byte	0xad
 3438 165e 5B150000 		.4byte	0x155b
 3439 1662 03       		.uleb128 0x3
 3440 1663 0A050000 		.4byte	.LASF297
 3441 1667 17       		.byte	0x17
 3442 1668 AE       		.byte	0xae
 3443 1669 D9120000 		.4byte	0x12d9
 3444 166d 35       		.uleb128 0x35
 3445 166e D20D0000 		.4byte	.LASF303
 3446 1672 01       		.byte	0x1
 3447 1673 95000000 		.4byte	0x95
 3448 1677 17       		.byte	0x17
 3449 1678 9902     		.2byte	0x299
 3450 167a 97160000 		.4byte	0x1697
 3451 167e 36       		.uleb128 0x36
 3452 167f D40B0000 		.4byte	.LASF298
 3453 1683 7F       		.sleb128 -1
 3454 1684 37       		.uleb128 0x37
 3455 1685 95010000 		.4byte	.LASF299
 3456 1689 00       		.byte	0
 3457 168a 37       		.uleb128 0x37
 3458 168b 44000000 		.4byte	.LASF300
 3459 168f 01       		.byte	0x1
 3460 1690 37       		.uleb128 0x37
 3461 1691 C5120000 		.4byte	.LASF301
 3462 1695 02       		.byte	0x2
 3463 1696 00       		.byte	0
 3464 1697 0E       		.uleb128 0xe
 3465 1698 93050000 		.4byte	.LASF302
 3466 169c 17       		.byte	0x17
 3467 169d A402     		.2byte	0x2a4
 3468 169f 6D160000 		.4byte	0x166d
 3469 16a3 19       		.uleb128 0x19
 3470 16a4 04       		.byte	0x4
 3471 16a5 72000000 		.4byte	0x72
 3472 16a9 28       		.uleb128 0x28
 3473 16aa 18       		.byte	0x18
 3474 16ab 36       		.byte	0x36
 3475 16ac 98100000 		.4byte	0x1098
 3476 16b0 38       		.uleb128 0x38
 3477 16b1 8F130000 		.4byte	.LASF304
 3478 16b5 04       		.byte	0x4
 3479 16b6 3C000000 		.4byte	0x3c
 3480 16ba 19       		.byte	0x19
 3481 16bb 50       		.byte	0x50
 3482 16bc 06170000 		.4byte	0x1706
 3483 16c0 37       		.uleb128 0x37
 3484 16c1 2D0A0000 		.4byte	.LASF305
 3485 16c5 00       		.byte	0
 3486 16c6 39       		.uleb128 0x39
 3487 16c7 440A0000 		.4byte	.LASF306
 3488 16cb 00000008 		.4byte	0x8000000
 3489 16cf 39       		.uleb128 0x39
 3490 16d0 510A0000 		.4byte	.LASF307
 3491 16d4 00000010 		.4byte	0x10000000
 3492 16d8 39       		.uleb128 0x39
 3493 16d9 ED0F0000 		.4byte	.LASF308
ARM GAS  /tmp/ccHBIC16.s 			page 78


 3494 16dd 00000018 		.4byte	0x18000000
 3495 16e1 39       		.uleb128 0x39
 3496 16e2 670A0000 		.4byte	.LASF309
 3497 16e6 00000020 		.4byte	0x20000000
 3498 16ea 39       		.uleb128 0x39
 3499 16eb 55060000 		.4byte	.LASF310
 3500 16ef 00000028 		.4byte	0x28000000
 3501 16f3 39       		.uleb128 0x39
 3502 16f4 0D0A0000 		.4byte	.LASF311
 3503 16f8 00000030 		.4byte	0x30000000
 3504 16fc 39       		.uleb128 0x39
 3505 16fd 1A0A0000 		.4byte	.LASF312
 3506 1701 00000038 		.4byte	0x38000000
 3507 1705 00       		.byte	0
 3508 1706 03       		.uleb128 0x3
 3509 1707 08000000 		.4byte	.LASF313
 3510 170b 19       		.byte	0x19
 3511 170c 5B       		.byte	0x5b
 3512 170d B0160000 		.4byte	0x16b0
 3513 1711 3A       		.uleb128 0x3a
 3514 1712 01       		.byte	0x1
 3515 1713 95000000 		.4byte	0x95
 3516 1717 03       		.byte	0x3
 3517 1718 41       		.byte	0x41
 3518 1719 77000000 		.4byte	.LASF482
 3519 171d 4C170000 		.4byte	0x174c
 3520 1721 36       		.uleb128 0x36
 3521 1722 7B130000 		.4byte	.LASF314
 3522 1726 7F       		.sleb128 -1
 3523 1727 37       		.uleb128 0x37
 3524 1728 2D030000 		.4byte	.LASF315
 3525 172c 00       		.byte	0
 3526 172d 37       		.uleb128 0x37
 3527 172e 070F0000 		.4byte	.LASF316
 3528 1732 01       		.byte	0x1
 3529 1733 37       		.uleb128 0x37
 3530 1734 6B050000 		.4byte	.LASF317
 3531 1738 02       		.byte	0x2
 3532 1739 37       		.uleb128 0x37
 3533 173a D5040000 		.4byte	.LASF318
 3534 173e 03       		.byte	0x3
 3535 173f 37       		.uleb128 0x37
 3536 1740 18030000 		.4byte	.LASF319
 3537 1744 04       		.byte	0x4
 3538 1745 37       		.uleb128 0x37
 3539 1746 570D0000 		.4byte	.LASF320
 3540 174a 05       		.byte	0x5
 3541 174b 00       		.byte	0
 3542 174c 03       		.uleb128 0x3
 3543 174d FC020000 		.4byte	.LASF321
 3544 1751 03       		.byte	0x3
 3545 1752 49       		.byte	0x49
 3546 1753 11170000 		.4byte	0x1711
 3547 1757 13       		.uleb128 0x13
 3548 1758 50696E00 		.ascii	"Pin\000"
 3549 175c 1A       		.byte	0x1a
 3550 175d 38       		.byte	0x38
ARM GAS  /tmp/ccHBIC16.s 			page 79


 3551 175e 8C010000 		.4byte	0x18c
 3552 1762 04       		.uleb128 0x4
 3553 1763 57170000 		.4byte	0x1757
 3554 1767 3B       		.uleb128 0x3b
 3555 1768 F5060000 		.4byte	.LASF322
 3556 176c 1A       		.byte	0x1a
 3557 176d 39       		.byte	0x39
 3558 176e 62170000 		.4byte	0x1762
 3559 1772 7F       		.sleb128 -1
 3560 1773 38       		.uleb128 0x38
 3561 1774 1D080000 		.4byte	.LASF323
 3562 1778 01       		.byte	0x1
 3563 1779 95000000 		.4byte	0x95
 3564 177d 1A       		.byte	0x1a
 3565 177e 4E       		.byte	0x4e
 3566 177f BA170000 		.4byte	0x17ba
 3567 1783 36       		.uleb128 0x36
 3568 1784 E00E0000 		.4byte	.LASF324
 3569 1788 7F       		.sleb128 -1
 3570 1789 37       		.uleb128 0x37
 3571 178a 94090000 		.4byte	.LASF325
 3572 178e 00       		.byte	0
 3573 178f 37       		.uleb128 0x37
 3574 1790 9C090000 		.4byte	.LASF326
 3575 1794 01       		.byte	0x1
 3576 1795 37       		.uleb128 0x37
 3577 1796 A4090000 		.4byte	.LASF327
 3578 179a 02       		.byte	0x2
 3579 179b 37       		.uleb128 0x37
 3580 179c AC090000 		.4byte	.LASF328
 3581 17a0 03       		.byte	0x3
 3582 17a1 37       		.uleb128 0x37
 3583 17a2 B4090000 		.4byte	.LASF329
 3584 17a6 04       		.byte	0x4
 3585 17a7 37       		.uleb128 0x37
 3586 17a8 BC090000 		.4byte	.LASF330
 3587 17ac 05       		.byte	0x5
 3588 17ad 37       		.uleb128 0x37
 3589 17ae C4090000 		.4byte	.LASF331
 3590 17b2 06       		.byte	0x6
 3591 17b3 37       		.uleb128 0x37
 3592 17b4 CC090000 		.4byte	.LASF332
 3593 17b8 07       		.byte	0x7
 3594 17b9 00       		.byte	0
 3595 17ba 03       		.uleb128 0x3
 3596 17bb A0130000 		.4byte	.LASF333
 3597 17bf 1A       		.byte	0x1a
 3598 17c0 59       		.byte	0x59
 3599 17c1 73170000 		.4byte	0x1773
 3600 17c5 38       		.uleb128 0x38
 3601 17c6 49060000 		.4byte	.LASF334
 3602 17ca 01       		.byte	0x1
 3603 17cb 95000000 		.4byte	0x95
 3604 17cf 1A       		.byte	0x1a
 3605 17d0 5C       		.byte	0x5c
 3606 17d1 48180000 		.4byte	0x1848
 3607 17d5 36       		.uleb128 0x36
ARM GAS  /tmp/ccHBIC16.s 			page 80


 3608 17d6 3A080000 		.4byte	.LASF335
 3609 17da 7F       		.sleb128 -1
 3610 17db 37       		.uleb128 0x37
 3611 17dc 2C020000 		.4byte	.LASF336
 3612 17e0 00       		.byte	0
 3613 17e1 37       		.uleb128 0x37
 3614 17e2 C9020000 		.4byte	.LASF337
 3615 17e6 01       		.byte	0x1
 3616 17e7 37       		.uleb128 0x37
 3617 17e8 35020000 		.4byte	.LASF338
 3618 17ec 02       		.byte	0x2
 3619 17ed 37       		.uleb128 0x37
 3620 17ee D2020000 		.4byte	.LASF339
 3621 17f2 03       		.byte	0x3
 3622 17f3 37       		.uleb128 0x37
 3623 17f4 3E020000 		.4byte	.LASF340
 3624 17f8 04       		.byte	0x4
 3625 17f9 37       		.uleb128 0x37
 3626 17fa DB020000 		.4byte	.LASF341
 3627 17fe 05       		.byte	0x5
 3628 17ff 37       		.uleb128 0x37
 3629 1800 85010000 		.4byte	.LASF342
 3630 1804 06       		.byte	0x6
 3631 1805 37       		.uleb128 0x37
 3632 1806 47020000 		.4byte	.LASF343
 3633 180a 07       		.byte	0x7
 3634 180b 37       		.uleb128 0x37
 3635 180c 44110000 		.4byte	.LASF344
 3636 1810 08       		.byte	0x8
 3637 1811 37       		.uleb128 0x37
 3638 1812 50020000 		.4byte	.LASF345
 3639 1816 09       		.byte	0x9
 3640 1817 37       		.uleb128 0x37
 3641 1818 4D110000 		.4byte	.LASF346
 3642 181c 0A       		.byte	0xa
 3643 181d 37       		.uleb128 0x37
 3644 181e 59020000 		.4byte	.LASF347
 3645 1822 0B       		.byte	0xb
 3646 1823 37       		.uleb128 0x37
 3647 1824 36010000 		.4byte	.LASF348
 3648 1828 0C       		.byte	0xc
 3649 1829 37       		.uleb128 0x37
 3650 182a B6010000 		.4byte	.LASF349
 3651 182e 0D       		.byte	0xd
 3652 182f 37       		.uleb128 0x37
 3653 1830 3F010000 		.4byte	.LASF350
 3654 1834 0E       		.byte	0xe
 3655 1835 37       		.uleb128 0x37
 3656 1836 BF010000 		.4byte	.LASF351
 3657 183a 0F       		.byte	0xf
 3658 183b 37       		.uleb128 0x37
 3659 183c 48010000 		.4byte	.LASF352
 3660 1840 10       		.byte	0x10
 3661 1841 37       		.uleb128 0x37
 3662 1842 C8010000 		.4byte	.LASF353
 3663 1846 11       		.byte	0x11
 3664 1847 00       		.byte	0
ARM GAS  /tmp/ccHBIC16.s 			page 81


 3665 1848 03       		.uleb128 0x3
 3666 1849 46120000 		.4byte	.LASF354
 3667 184d 1A       		.byte	0x1a
 3668 184e 71       		.byte	0x71
 3669 184f C5170000 		.4byte	0x17c5
 3670 1853 38       		.uleb128 0x38
 3671 1854 04020000 		.4byte	.LASF355
 3672 1858 01       		.byte	0x1
 3673 1859 95000000 		.4byte	0x95
 3674 185d 1A       		.byte	0x1a
 3675 185e 7E       		.byte	0x7e
 3676 185f 36190000 		.4byte	0x1936
 3677 1863 36       		.uleb128 0x36
 3678 1864 A50B0000 		.4byte	.LASF356
 3679 1868 7F       		.sleb128 -1
 3680 1869 37       		.uleb128 0x37
 3681 186a EB110000 		.4byte	.LASF357
 3682 186e 00       		.byte	0
 3683 186f 37       		.uleb128 0x37
 3684 1870 70060000 		.4byte	.LASF358
 3685 1874 01       		.byte	0x1
 3686 1875 37       		.uleb128 0x37
 3687 1876 75060000 		.4byte	.LASF359
 3688 187a 02       		.byte	0x2
 3689 187b 37       		.uleb128 0x37
 3690 187c 7A060000 		.4byte	.LASF360
 3691 1880 03       		.byte	0x3
 3692 1881 37       		.uleb128 0x37
 3693 1882 7F060000 		.4byte	.LASF361
 3694 1886 04       		.byte	0x4
 3695 1887 37       		.uleb128 0x37
 3696 1888 84060000 		.4byte	.LASF362
 3697 188c 05       		.byte	0x5
 3698 188d 37       		.uleb128 0x37
 3699 188e 89060000 		.4byte	.LASF363
 3700 1892 06       		.byte	0x6
 3701 1893 37       		.uleb128 0x37
 3702 1894 8E060000 		.4byte	.LASF364
 3703 1898 07       		.byte	0x7
 3704 1899 37       		.uleb128 0x37
 3705 189a 93060000 		.4byte	.LASF365
 3706 189e 08       		.byte	0x8
 3707 189f 37       		.uleb128 0x37
 3708 18a0 98060000 		.4byte	.LASF366
 3709 18a4 09       		.byte	0x9
 3710 18a5 37       		.uleb128 0x37
 3711 18a6 FB060000 		.4byte	.LASF367
 3712 18aa 0A       		.byte	0xa
 3713 18ab 37       		.uleb128 0x37
 3714 18ac 01070000 		.4byte	.LASF368
 3715 18b0 0B       		.byte	0xb
 3716 18b1 37       		.uleb128 0x37
 3717 18b2 07070000 		.4byte	.LASF369
 3718 18b6 0C       		.byte	0xc
 3719 18b7 37       		.uleb128 0x37
 3720 18b8 0D070000 		.4byte	.LASF370
 3721 18bc 0D       		.byte	0xd
ARM GAS  /tmp/ccHBIC16.s 			page 82


 3722 18bd 37       		.uleb128 0x37
 3723 18be 13070000 		.4byte	.LASF371
 3724 18c2 0E       		.byte	0xe
 3725 18c3 37       		.uleb128 0x37
 3726 18c4 19070000 		.4byte	.LASF372
 3727 18c8 0F       		.byte	0xf
 3728 18c9 37       		.uleb128 0x37
 3729 18ca 1F070000 		.4byte	.LASF373
 3730 18ce 10       		.byte	0x10
 3731 18cf 37       		.uleb128 0x37
 3732 18d0 F6090000 		.4byte	.LASF374
 3733 18d4 11       		.byte	0x11
 3734 18d5 37       		.uleb128 0x37
 3735 18d6 34070000 		.4byte	.LASF375
 3736 18da 12       		.byte	0x12
 3737 18db 37       		.uleb128 0x37
 3738 18dc 3A070000 		.4byte	.LASF376
 3739 18e0 13       		.byte	0x13
 3740 18e1 37       		.uleb128 0x37
 3741 18e2 6F070000 		.4byte	.LASF377
 3742 18e6 14       		.byte	0x14
 3743 18e7 37       		.uleb128 0x37
 3744 18e8 75070000 		.4byte	.LASF378
 3745 18ec 15       		.byte	0x15
 3746 18ed 37       		.uleb128 0x37
 3747 18ee 7B070000 		.4byte	.LASF379
 3748 18f2 16       		.byte	0x16
 3749 18f3 37       		.uleb128 0x37
 3750 18f4 81070000 		.4byte	.LASF380
 3751 18f8 17       		.byte	0x17
 3752 18f9 37       		.uleb128 0x37
 3753 18fa 87070000 		.4byte	.LASF381
 3754 18fe 18       		.byte	0x18
 3755 18ff 37       		.uleb128 0x37
 3756 1900 8D070000 		.4byte	.LASF382
 3757 1904 19       		.byte	0x19
 3758 1905 37       		.uleb128 0x37
 3759 1906 93070000 		.4byte	.LASF383
 3760 190a 1A       		.byte	0x1a
 3761 190b 37       		.uleb128 0x37
 3762 190c 99070000 		.4byte	.LASF384
 3763 1910 1B       		.byte	0x1b
 3764 1911 37       		.uleb128 0x37
 3765 1912 9F070000 		.4byte	.LASF385
 3766 1916 1C       		.byte	0x1c
 3767 1917 37       		.uleb128 0x37
 3768 1918 A5070000 		.4byte	.LASF386
 3769 191c 1D       		.byte	0x1d
 3770 191d 37       		.uleb128 0x37
 3771 191e BF070000 		.4byte	.LASF387
 3772 1922 1E       		.byte	0x1e
 3773 1923 37       		.uleb128 0x37
 3774 1924 C5070000 		.4byte	.LASF388
 3775 1928 1F       		.byte	0x1f
 3776 1929 3C       		.uleb128 0x3c
 3777 192a 44413000 		.ascii	"DA0\000"
 3778 192e 20       		.byte	0x20
ARM GAS  /tmp/ccHBIC16.s 			page 83


 3779 192f 3C       		.uleb128 0x3c
 3780 1930 44413100 		.ascii	"DA1\000"
 3781 1934 21       		.byte	0x21
 3782 1935 00       		.byte	0
 3783 1936 17       		.uleb128 0x17
 3784 1937 D9030000 		.4byte	.LASF389
 3785 193b 1C       		.byte	0x1c
 3786 193c 1A       		.byte	0x1a
 3787 193d AF       		.byte	0xaf
 3788 193e AF190000 		.4byte	0x19af
 3789 1942 11       		.uleb128 0x11
 3790 1943 C2030000 		.4byte	.LASF390
 3791 1947 1A       		.byte	0x1a
 3792 1948 B1       		.byte	0xb1
 3793 1949 B4190000 		.4byte	0x19b4
 3794 194d 00       		.byte	0
 3795 194e 11       		.uleb128 0x11
 3796 194f 270A0000 		.4byte	.LASF391
 3797 1953 1A       		.byte	0x1a
 3798 1954 B2       		.byte	0xb2
 3799 1955 C2010000 		.4byte	0x1c2
 3800 1959 04       		.byte	0x4
 3801 195a 11       		.uleb128 0x11
 3802 195b A4000000 		.4byte	.LASF392
 3803 195f 1A       		.byte	0x1a
 3804 1960 B3       		.byte	0xb3
 3805 1961 C2010000 		.4byte	0x1c2
 3806 1965 08       		.byte	0x8
 3807 1966 11       		.uleb128 0x11
 3808 1967 47040000 		.4byte	.LASF393
 3809 196b 1A       		.byte	0x1a
 3810 196c B4       		.byte	0xb4
 3811 196d 06170000 		.4byte	0x1706
 3812 1971 0C       		.byte	0xc
 3813 1972 11       		.uleb128 0x11
 3814 1973 B90C0000 		.4byte	.LASF394
 3815 1977 1A       		.byte	0x1a
 3816 1978 B5       		.byte	0xb5
 3817 1979 C2010000 		.4byte	0x1c2
 3818 197d 10       		.byte	0x10
 3819 197e 11       		.uleb128 0x11
 3820 197f 29100000 		.4byte	.LASF395
 3821 1983 1A       		.byte	0x1a
 3822 1984 B6       		.byte	0xb6
 3823 1985 C2010000 		.4byte	0x1c2
 3824 1989 14       		.byte	0x14
 3825 198a 11       		.uleb128 0x11
 3826 198b 13050000 		.4byte	.LASF396
 3827 198f 1A       		.byte	0x1a
 3828 1990 B7       		.byte	0xb7
 3829 1991 53180000 		.4byte	0x1853
 3830 1995 18       		.byte	0x18
 3831 1996 11       		.uleb128 0x11
 3832 1997 A1140000 		.4byte	.LASF397
 3833 199b 1A       		.byte	0x1a
 3834 199c B8       		.byte	0xb8
 3835 199d BA170000 		.4byte	0x17ba
ARM GAS  /tmp/ccHBIC16.s 			page 84


 3836 19a1 19       		.byte	0x19
 3837 19a2 11       		.uleb128 0x11
 3838 19a3 83100000 		.4byte	.LASF398
 3839 19a7 1A       		.byte	0x1a
 3840 19a8 B9       		.byte	0xb9
 3841 19a9 48180000 		.4byte	0x1848
 3842 19ad 1A       		.byte	0x1a
 3843 19ae 00       		.byte	0
 3844 19af 04       		.uleb128 0x4
 3845 19b0 36190000 		.4byte	0x1936
 3846 19b4 19       		.uleb128 0x19
 3847 19b5 04       		.byte	0x4
 3848 19b6 9A060000 		.4byte	0x69a
 3849 19ba 0C       		.uleb128 0xc
 3850 19bb AF190000 		.4byte	0x19af
 3851 19bf C5190000 		.4byte	0x19c5
 3852 19c3 3D       		.uleb128 0x3d
 3853 19c4 00       		.byte	0
 3854 19c5 0F       		.uleb128 0xf
 3855 19c6 730F0000 		.4byte	.LASF399
 3856 19ca 1A       		.byte	0x1a
 3857 19cb BD       		.byte	0xbd
 3858 19cc BA190000 		.4byte	0x19ba
 3859 19d0 0F       		.uleb128 0xf
 3860 19d1 D70F0000 		.4byte	.LASF400
 3861 19d5 1B       		.byte	0x1b
 3862 19d6 2E       		.byte	0x2e
 3863 19d7 CA0D0000 		.4byte	0xdca
 3864 19db 0C       		.uleb128 0xc
 3865 19dc A10D0000 		.4byte	0xda1
 3866 19e0 E6190000 		.4byte	0x19e6
 3867 19e4 3D       		.uleb128 0x3d
 3868 19e5 00       		.byte	0
 3869 19e6 0F       		.uleb128 0xf
 3870 19e7 D0050000 		.4byte	.LASF401
 3871 19eb 1B       		.byte	0x1b
 3872 19ec 6E       		.byte	0x6e
 3873 19ed DB190000 		.4byte	0x19db
 3874 19f1 3E       		.uleb128 0x3e
 3875 19f2 8A080000 		.4byte	.LASF403
 3876 19f6 1F1A0000 		.4byte	0x1a1f
 3877 19fa 3F       		.uleb128 0x3f
 3878 19fb 700E0000 		.4byte	.LASF447
 3879 19ff 22       		.byte	0x22
 3880 1a00 3B       		.byte	0x3b
 3881 1a01 B5130000 		.4byte	.LASF483
 3882 1a05 2C000000 		.4byte	0x2c
 3883 1a09 01       		.byte	0x1
 3884 1a0a 0E1A0000 		.4byte	0x1a0e
 3885 1a0e 40       		.uleb128 0x40
 3886 1a0f 1F1A0000 		.4byte	0x1a1f
 3887 1a13 1D       		.uleb128 0x1d
 3888 1a14 CA0D0000 		.4byte	0xdca
 3889 1a18 1D       		.uleb128 0x1d
 3890 1a19 2C000000 		.4byte	0x2c
 3891 1a1d 00       		.byte	0
 3892 1a1e 00       		.byte	0
ARM GAS  /tmp/ccHBIC16.s 			page 85


 3893 1a1f 19       		.uleb128 0x19
 3894 1a20 04       		.byte	0x4
 3895 1a21 F1190000 		.4byte	0x19f1
 3896 1a25 41       		.uleb128 0x41
 3897 1a26 D3080000 		.4byte	.LASF402
 3898 1a2a 1C       		.byte	0x1c
 3899 1a2b 1D       		.byte	0x1d
 3900 1a2c 37000000 		.4byte	0x37
 3901 1a30 0002     		.2byte	0x200
 3902 1a32 19       		.uleb128 0x19
 3903 1a33 04       		.byte	0x4
 3904 1a34 97010000 		.4byte	0x197
 3905 1a38 3E       		.uleb128 0x3e
 3906 1a39 EA120000 		.4byte	.LASF404
 3907 1a3d 491A0000 		.4byte	0x1a49
 3908 1a41 28       		.uleb128 0x28
 3909 1a42 1D       		.byte	0x1d
 3910 1a43 26       		.byte	0x26
 3911 1a44 FA190000 		.4byte	0x19fa
 3912 1a48 00       		.byte	0
 3913 1a49 0F       		.uleb128 0xf
 3914 1a4a F0110000 		.4byte	.LASF405
 3915 1a4e 1E       		.byte	0x1e
 3916 1a4f 8B       		.byte	0x8b
 3917 1a50 DD000000 		.4byte	0xdd
 3918 1a54 0F       		.uleb128 0xf
 3919 1a55 C8030000 		.4byte	.LASF406
 3920 1a59 1E       		.byte	0x1e
 3921 1a5a 8C       		.byte	0x8c
 3922 1a5b 25000000 		.4byte	0x25
 3923 1a5f 0C       		.uleb128 0xc
 3924 1a60 940D0000 		.4byte	0xd94
 3925 1a64 6F1A0000 		.4byte	0x1a6f
 3926 1a68 0D       		.uleb128 0xd
 3927 1a69 CB020000 		.4byte	0x2cb
 3928 1a6d 01       		.byte	0x1
 3929 1a6e 00       		.byte	0
 3930 1a6f 0F       		.uleb128 0xf
 3931 1a70 7D090000 		.4byte	.LASF407
 3932 1a74 1E       		.byte	0x1e
 3933 1a75 8F       		.byte	0x8f
 3934 1a76 5F1A0000 		.4byte	0x1a5f
 3935 1a7a 42       		.uleb128 0x42
 3936 1a7b 1C130000 		.4byte	.LASF408
 3937 1a7f 1F       		.byte	0x1f
 3938 1a80 5C       		.byte	0x5c
 3939 1a81 97010000 		.4byte	0x197
 3940 1a85 38       		.byte	0x38
 3941 1a86 42       		.uleb128 0x42
 3942 1a87 35000000 		.4byte	.LASF409
 3943 1a8b 1F       		.byte	0x1f
 3944 1a8c 5D       		.byte	0x5d
 3945 1a8d 97010000 		.4byte	0x197
 3946 1a91 05       		.byte	0x5
 3947 1a92 42       		.uleb128 0x42
 3948 1a93 E7040000 		.4byte	.LASF410
 3949 1a97 1F       		.byte	0x1f
ARM GAS  /tmp/ccHBIC16.s 			page 86


 3950 1a98 5E       		.byte	0x5e
 3951 1a99 97010000 		.4byte	0x197
 3952 1a9d 06       		.byte	0x6
 3953 1a9e 42       		.uleb128 0x42
 3954 1a9f 28130000 		.4byte	.LASF411
 3955 1aa3 1F       		.byte	0x1f
 3956 1aa4 60       		.byte	0x60
 3957 1aa5 97010000 		.4byte	0x197
 3958 1aa9 39       		.byte	0x39
 3959 1aaa 42       		.uleb128 0x42
 3960 1aab B0070000 		.4byte	.LASF412
 3961 1aaf 1F       		.byte	0x1f
 3962 1ab0 61       		.byte	0x61
 3963 1ab1 97010000 		.4byte	0x197
 3964 1ab5 03       		.byte	0x3
 3965 1ab6 42       		.uleb128 0x42
 3966 1ab7 7B0B0000 		.4byte	.LASF413
 3967 1abb 1F       		.byte	0x1f
 3968 1abc 62       		.byte	0x62
 3969 1abd 97010000 		.4byte	0x197
 3970 1ac1 04       		.byte	0x4
 3971 1ac2 42       		.uleb128 0x42
 3972 1ac3 5D000000 		.4byte	.LASF414
 3973 1ac7 1F       		.byte	0x1f
 3974 1ac8 69       		.byte	0x69
 3975 1ac9 97010000 		.4byte	0x197
 3976 1acd 33       		.byte	0x33
 3977 1ace 42       		.uleb128 0x42
 3978 1acf E8030000 		.4byte	.LASF415
 3979 1ad3 1F       		.byte	0x1f
 3980 1ad4 6A       		.byte	0x6a
 3981 1ad5 97010000 		.4byte	0x197
 3982 1ad9 34       		.byte	0x34
 3983 1ada 42       		.uleb128 0x42
 3984 1adb DF010000 		.4byte	.LASF416
 3985 1adf 1F       		.byte	0x1f
 3986 1ae0 6D       		.byte	0x6d
 3987 1ae1 97010000 		.4byte	0x197
 3988 1ae5 35       		.byte	0x35
 3989 1ae6 42       		.uleb128 0x42
 3990 1ae7 1D060000 		.4byte	.LASF417
 3991 1aeb 1F       		.byte	0x1f
 3992 1aec 6E       		.byte	0x6e
 3993 1aed 97010000 		.4byte	0x197
 3994 1af1 36       		.byte	0x36
 3995 1af2 42       		.uleb128 0x42
 3996 1af3 DB140000 		.4byte	.LASF418
 3997 1af7 1F       		.byte	0x1f
 3998 1af8 6F       		.byte	0x6f
 3999 1af9 97010000 		.4byte	0x197
 4000 1afd 37       		.byte	0x37
 4001 1afe 42       		.uleb128 0x42
 4002 1aff 8F100000 		.4byte	.LASF419
 4003 1b03 1F       		.byte	0x1f
 4004 1b04 71       		.byte	0x71
 4005 1b05 D2010000 		.4byte	0x1d2
 4006 1b09 32       		.byte	0x32
ARM GAS  /tmp/ccHBIC16.s 			page 87


 4007 1b0a 43       		.uleb128 0x43
 4008 1b0b F7010000 		.4byte	.LASF420
 4009 1b0f 1F       		.byte	0x1f
 4010 1b10 73       		.byte	0x73
 4011 1b11 D2010000 		.4byte	0x1d2
 4012 1b15 58466100 		.4byte	0x614658
 4013 1b19 41       		.uleb128 0x41
 4014 1b1a D2070000 		.4byte	.LASF421
 4015 1b1e 1F       		.byte	0x1f
 4016 1b1f 74       		.byte	0x74
 4017 1b20 D2010000 		.4byte	0x1d2
 4018 1b24 4661     		.2byte	0x6146
 4019 1b26 0F       		.uleb128 0xf
 4020 1b27 38100000 		.4byte	.LASF422
 4021 1b2b 1F       		.byte	0x1f
 4022 1b2c 80       		.byte	0x80
 4023 1b2d 381A0000 		.4byte	0x1a38
 4024 1b31 0F       		.uleb128 0xf
 4025 1b32 99140000 		.4byte	.LASF423
 4026 1b36 1F       		.byte	0x1f
 4027 1b37 81       		.byte	0x81
 4028 1b38 381A0000 		.4byte	0x1a38
 4029 1b3c 38       		.uleb128 0x38
 4030 1b3d 3A040000 		.4byte	.LASF424
 4031 1b41 01       		.byte	0x1
 4032 1b42 95000000 		.4byte	0x95
 4033 1b46 02       		.byte	0x2
 4034 1b47 1B       		.byte	0x1b
 4035 1b48 9B1B0000 		.4byte	0x1b9b
 4036 1b4c 36       		.uleb128 0x36
 4037 1b4d 83030000 		.4byte	.LASF425
 4038 1b51 7F       		.sleb128 -1
 4039 1b52 37       		.uleb128 0x37
 4040 1b53 C10A0000 		.4byte	.LASF426
 4041 1b57 00       		.byte	0
 4042 1b58 37       		.uleb128 0x37
 4043 1b59 D3060000 		.4byte	.LASF427
 4044 1b5d 01       		.byte	0x1
 4045 1b5e 37       		.uleb128 0x37
 4046 1b5f B20A0000 		.4byte	.LASF428
 4047 1b63 02       		.byte	0x2
 4048 1b64 37       		.uleb128 0x37
 4049 1b65 68080000 		.4byte	.LASF429
 4050 1b69 03       		.byte	0x3
 4051 1b6a 37       		.uleb128 0x37
 4052 1b6b 9E020000 		.4byte	.LASF430
 4053 1b6f 04       		.byte	0x4
 4054 1b70 3C       		.uleb128 0x3c
 4055 1b71 41494E00 		.ascii	"AIN\000"
 4056 1b75 05       		.byte	0x5
 4057 1b76 37       		.uleb128 0x37
 4058 1b77 69020000 		.4byte	.LASF431
 4059 1b7b 06       		.byte	0x6
 4060 1b7c 37       		.uleb128 0x37
 4061 1b7d 050E0000 		.4byte	.LASF432
 4062 1b81 07       		.byte	0x7
 4063 1b82 37       		.uleb128 0x37
ARM GAS  /tmp/ccHBIC16.s 			page 88


 4064 1b83 320E0000 		.4byte	.LASF433
 4065 1b87 08       		.byte	0x8
 4066 1b88 37       		.uleb128 0x37
 4067 1b89 C70A0000 		.4byte	.LASF434
 4068 1b8d 09       		.byte	0x9
 4069 1b8e 37       		.uleb128 0x37
 4070 1b8f 3A0F0000 		.4byte	.LASF435
 4071 1b93 0A       		.byte	0xa
 4072 1b94 37       		.uleb128 0x37
 4073 1b95 F4140000 		.4byte	.LASF436
 4074 1b99 0B       		.byte	0xb
 4075 1b9a 00       		.byte	0
 4076 1b9b 44       		.uleb128 0x44
 4077 1b9c F20D0000 		.4byte	.LASF484
 4078 1ba0 0F       		.uleb128 0xf
 4079 1ba1 930D0000 		.4byte	.LASF437
 4080 1ba5 20       		.byte	0x20
 4081 1ba6 30       		.byte	0x30
 4082 1ba7 9B1B0000 		.4byte	0x1b9b
 4083 1bab 17       		.uleb128 0x17
 4084 1bac 69090000 		.4byte	.LASF438
 4085 1bb0 08       		.byte	0x8
 4086 1bb1 21       		.byte	0x21
 4087 1bb2 39       		.byte	0x39
 4088 1bb3 F41B0000 		.4byte	0x1bf4
 4089 1bb7 11       		.uleb128 0x11
 4090 1bb8 86110000 		.4byte	.LASF439
 4091 1bbc 21       		.byte	0x21
 4092 1bbd 3A       		.byte	0x3a
 4093 1bbe 57170000 		.4byte	0x1757
 4094 1bc2 00       		.byte	0
 4095 1bc3 11       		.uleb128 0x11
 4096 1bc4 1A0D0000 		.4byte	.LASF440
 4097 1bc8 21       		.byte	0x21
 4098 1bc9 3B       		.byte	0x3b
 4099 1bca 29160000 		.4byte	0x1629
 4100 1bce 01       		.byte	0x1
 4101 1bcf 11       		.uleb128 0x11
 4102 1bd0 73080000 		.4byte	.LASF441
 4103 1bd4 21       		.byte	0x21
 4104 1bd5 3C       		.byte	0x3c
 4105 1bd6 8C010000 		.4byte	0x18c
 4106 1bda 02       		.byte	0x2
 4107 1bdb 11       		.uleb128 0x11
 4108 1bdc BF0F0000 		.4byte	.LASF442
 4109 1be0 21       		.byte	0x21
 4110 1be1 3D       		.byte	0x3d
 4111 1be2 8C010000 		.4byte	0x18c
 4112 1be6 03       		.byte	0x3
 4113 1be7 11       		.uleb128 0x11
 4114 1be8 15010000 		.4byte	.LASF443
 4115 1bec 21       		.byte	0x21
 4116 1bed 3E       		.byte	0x3e
 4117 1bee C2010000 		.4byte	0x1c2
 4118 1bf2 04       		.byte	0x4
 4119 1bf3 00       		.byte	0
 4120 1bf4 04       		.uleb128 0x4
ARM GAS  /tmp/ccHBIC16.s 			page 89


 4121 1bf5 AB1B0000 		.4byte	0x1bab
 4122 1bf9 45       		.uleb128 0x45
 4123 1bfa B1040000 		.4byte	.LASF485
 4124 1bfe 01       		.byte	0x1
 4125 1bff 1101     		.2byte	0x111
 4126 1c01 4C170000 		.4byte	0x174c
 4127 1c05 00000000 		.4byte	.LFB534
 4128 1c09 B0000000 		.4byte	.LFE534-.LFB534
 4129 1c0d 01       		.uleb128 0x1
 4130 1c0e 9C       		.byte	0x9c
 4131 1c0f 2B1D0000 		.4byte	0x1d2b
 4132 1c13 46       		.uleb128 0x46
 4133 1c14 00000000 		.4byte	.LASF444
 4134 1c18 01       		.byte	0x1
 4135 1c19 1101     		.2byte	0x111
 4136 1c1b 321A0000 		.4byte	0x1a32
 4137 1c1f 00000000 		.4byte	.LLST10
 4138 1c23 46       		.uleb128 0x46
 4139 1c24 350D0000 		.4byte	.LASF445
 4140 1c28 01       		.byte	0x1
 4141 1c29 1101     		.2byte	0x111
 4142 1c2b 2B1D0000 		.4byte	0x1d2b
 4143 1c2f 73000000 		.4byte	.LLST11
 4144 1c33 47       		.uleb128 0x47
 4145 1c34 6C656E00 		.ascii	"len\000"
 4146 1c38 01       		.byte	0x1
 4147 1c39 1101     		.2byte	0x111
 4148 1c3b 2C000000 		.4byte	0x2c
 4149 1c3f CB000000 		.4byte	.LLST12
 4150 1c43 48       		.uleb128 0x48
 4151 1c44 68000000 		.4byte	.Ldebug_ranges0+0x68
 4152 1c48 F51C0000 		.4byte	0x1cf5
 4153 1c4c 49       		.uleb128 0x49
 4154 1c4d 6900     		.ascii	"i\000"
 4155 1c4f 01       		.byte	0x1
 4156 1c50 1301     		.2byte	0x113
 4157 1c52 C2010000 		.4byte	0x1c2
 4158 1c56 02010000 		.4byte	.LLST13
 4159 1c5a 4A       		.uleb128 0x4a
 4160 1c5b 90000000 		.4byte	.Ldebug_ranges0+0x90
 4161 1c5f 4B       		.uleb128 0x4b
 4162 1c60 58010000 		.4byte	.LASF446
 4163 1c64 01       		.byte	0x1
 4164 1c65 1501     		.2byte	0x115
 4165 1c67 C2010000 		.4byte	0x1c2
 4166 1c6b 6A010000 		.4byte	.LLST14
 4167 1c6f 48       		.uleb128 0x48
 4168 1c70 E8000000 		.4byte	.Ldebug_ranges0+0xe8
 4169 1c74 BE1C0000 		.4byte	0x1cbe
 4170 1c78 49       		.uleb128 0x49
 4171 1c79 64496E00 		.ascii	"dIn\000"
 4172 1c7d 01       		.byte	0x1
 4173 1c7e 3001     		.2byte	0x130
 4174 1c80 97010000 		.4byte	0x197
 4175 1c84 93010000 		.4byte	.LLST16
 4176 1c88 4C       		.uleb128 0x4c
 4177 1c89 FC1E0000 		.4byte	0x1efc
ARM GAS  /tmp/ccHBIC16.s 			page 90


 4178 1c8d 0C000000 		.4byte	.LBB65
 4179 1c91 08010000 		.4byte	.Ldebug_ranges0+0x108
 4180 1c95 01       		.byte	0x1
 4181 1c96 2A01     		.2byte	0x12a
 4182 1c98 4A       		.uleb128 0x4a
 4183 1c99 08010000 		.4byte	.Ldebug_ranges0+0x108
 4184 1c9d 4D       		.uleb128 0x4d
 4185 1c9e 0C1F0000 		.4byte	0x1f0c
 4186 1ca2 B1010000 		.4byte	.LLST17
 4187 1ca6 4E       		.uleb128 0x4e
 4188 1ca7 731F0000 		.4byte	0x1f73
 4189 1cab 0C000000 		.4byte	.LBB67
 4190 1caf 20010000 		.4byte	.Ldebug_ranges0+0x120
 4191 1cb3 01       		.byte	0x1
 4192 1cb4 67       		.byte	0x67
 4193 1cb5 4F       		.uleb128 0x4f
 4194 1cb6 841F0000 		.4byte	0x1f84
 4195 1cba 00       		.byte	0
 4196 1cbb 00       		.byte	0
 4197 1cbc 00       		.byte	0
 4198 1cbd 00       		.byte	0
 4199 1cbe 4C       		.uleb128 0x4c
 4200 1cbf 341F0000 		.4byte	0x1f34
 4201 1cc3 0A000000 		.4byte	.LBB56
 4202 1cc7 B8000000 		.4byte	.Ldebug_ranges0+0xb8
 4203 1ccb 01       		.byte	0x1
 4204 1ccc 1601     		.2byte	0x116
 4205 1cce 4A       		.uleb128 0x4a
 4206 1ccf B8000000 		.4byte	.Ldebug_ranges0+0xb8
 4207 1cd3 4D       		.uleb128 0x4d
 4208 1cd4 441F0000 		.4byte	0x1f44
 4209 1cd8 DE010000 		.4byte	.LLST15
 4210 1cdc 4E       		.uleb128 0x4e
 4211 1cdd 971F0000 		.4byte	0x1f97
 4212 1ce1 0A000000 		.4byte	.LBB58
 4213 1ce5 D0000000 		.4byte	.Ldebug_ranges0+0xd0
 4214 1ce9 01       		.byte	0x1
 4215 1cea 43       		.byte	0x43
 4216 1ceb 4F       		.uleb128 0x4f
 4217 1cec A81F0000 		.4byte	0x1fa8
 4218 1cf0 00       		.byte	0
 4219 1cf1 00       		.byte	0
 4220 1cf2 00       		.byte	0
 4221 1cf3 00       		.byte	0
 4222 1cf4 00       		.byte	0
 4223 1cf5 4C       		.uleb128 0x4c
 4224 1cf6 181F0000 		.4byte	0x1f18
 4225 1cfa 76000000 		.4byte	.LBB87
 4226 1cfe 38010000 		.4byte	.Ldebug_ranges0+0x138
 4227 1d02 01       		.byte	0x1
 4228 1d03 3D01     		.2byte	0x13d
 4229 1d05 4A       		.uleb128 0x4a
 4230 1d06 38010000 		.4byte	.Ldebug_ranges0+0x138
 4231 1d0a 4D       		.uleb128 0x4d
 4232 1d0b 281F0000 		.4byte	0x1f28
 4233 1d0f 19020000 		.4byte	.LLST18
 4234 1d13 4E       		.uleb128 0x4e
ARM GAS  /tmp/ccHBIC16.s 			page 91


 4235 1d14 B51F0000 		.4byte	0x1fb5
 4236 1d18 76000000 		.4byte	.LBB89
 4237 1d1c 50010000 		.4byte	.Ldebug_ranges0+0x150
 4238 1d20 01       		.byte	0x1
 4239 1d21 55       		.byte	0x55
 4240 1d22 4F       		.uleb128 0x4f
 4241 1d23 C61F0000 		.4byte	0x1fc6
 4242 1d27 00       		.byte	0
 4243 1d28 00       		.byte	0
 4244 1d29 00       		.byte	0
 4245 1d2a 00       		.byte	0
 4246 1d2b 19       		.uleb128 0x19
 4247 1d2c 04       		.byte	0x4
 4248 1d2d 8C010000 		.4byte	0x18c
 4249 1d31 50       		.uleb128 0x50
 4250 1d32 F8000000 		.4byte	.LASF448
 4251 1d36 01       		.byte	0x1
 4252 1d37 0001     		.2byte	0x100
 4253 1d39 00000000 		.4byte	.LFB533
 4254 1d3d 24000000 		.4byte	.LFE533-.LFB533
 4255 1d41 01       		.uleb128 0x1
 4256 1d42 9C       		.byte	0x9c
 4257 1d43 9E1D0000 		.4byte	0x1d9e
 4258 1d47 46       		.uleb128 0x46
 4259 1d48 BC0E0000 		.4byte	.LASF449
 4260 1d4c 01       		.byte	0x1
 4261 1d4d 0001     		.2byte	0x100
 4262 1d4f 9E1D0000 		.4byte	0x1d9e
 4263 1d53 6F020000 		.4byte	.LLST8
 4264 1d57 51       		.uleb128 0x51
 4265 1d58 181F0000 		.4byte	0x1f18
 4266 1d5c 04000000 		.4byte	.LBB48
 4267 1d60 0E000000 		.4byte	.LBE48-.LBB48
 4268 1d64 01       		.byte	0x1
 4269 1d65 0201     		.2byte	0x102
 4270 1d67 941D0000 		.4byte	0x1d94
 4271 1d6b 52       		.uleb128 0x52
 4272 1d6c 04000000 		.4byte	.LBB49
 4273 1d70 0E000000 		.4byte	.LBE49-.LBB49
 4274 1d74 4D       		.uleb128 0x4d
 4275 1d75 281F0000 		.4byte	0x1f28
 4276 1d79 90020000 		.4byte	.LLST9
 4277 1d7d 4E       		.uleb128 0x4e
 4278 1d7e B51F0000 		.4byte	0x1fb5
 4279 1d82 04000000 		.4byte	.LBB50
 4280 1d86 50000000 		.4byte	.Ldebug_ranges0+0x50
 4281 1d8a 01       		.byte	0x1
 4282 1d8b 55       		.byte	0x55
 4283 1d8c 4F       		.uleb128 0x4f
 4284 1d8d C61F0000 		.4byte	0x1fc6
 4285 1d91 00       		.byte	0
 4286 1d92 00       		.byte	0
 4287 1d93 00       		.byte	0
 4288 1d94 53       		.uleb128 0x53
 4289 1d95 1E000000 		.4byte	.LVL30
 4290 1d99 03200000 		.4byte	0x2003
 4291 1d9d 00       		.byte	0
ARM GAS  /tmp/ccHBIC16.s 			page 92


 4292 1d9e 19       		.uleb128 0x19
 4293 1d9f 04       		.byte	0x4
 4294 1da0 F41B0000 		.4byte	0x1bf4
 4295 1da4 54       		.uleb128 0x54
 4296 1da5 EF0C0000 		.4byte	.LASF450
 4297 1da9 01       		.byte	0x1
 4298 1daa ED       		.byte	0xed
 4299 1dab 00000000 		.4byte	.LFB532
 4300 1daf 08000000 		.4byte	.LFE532-.LFB532
 4301 1db3 01       		.uleb128 0x1
 4302 1db4 9C       		.byte	0x9c
 4303 1db5 D21D0000 		.4byte	0x1dd2
 4304 1db9 55       		.uleb128 0x55
 4305 1dba BC0E0000 		.4byte	.LASF449
 4306 1dbe 01       		.byte	0x1
 4307 1dbf ED       		.byte	0xed
 4308 1dc0 9E1D0000 		.4byte	0x1d9e
 4309 1dc4 CD020000 		.4byte	.LLST7
 4310 1dc8 53       		.uleb128 0x53
 4311 1dc9 08000000 		.4byte	.LVL23
 4312 1dcd 03200000 		.4byte	0x2003
 4313 1dd1 00       		.byte	0
 4314 1dd2 54       		.uleb128 0x54
 4315 1dd3 C5100000 		.4byte	.LASF451
 4316 1dd7 01       		.byte	0x1
 4317 1dd8 BA       		.byte	0xba
 4318 1dd9 00000000 		.4byte	.LFB531
 4319 1ddd 48000000 		.4byte	.LFE531-.LFB531
 4320 1de1 01       		.uleb128 0x1
 4321 1de2 9C       		.byte	0x9c
 4322 1de3 561E0000 		.4byte	0x1e56
 4323 1de7 55       		.uleb128 0x55
 4324 1de8 BC0E0000 		.4byte	.LASF449
 4325 1dec 01       		.byte	0x1
 4326 1ded BA       		.byte	0xba
 4327 1dee 9E1D0000 		.4byte	0x1d9e
 4328 1df2 EE020000 		.4byte	.LLST3
 4329 1df6 56       		.uleb128 0x56
 4330 1df7 31040000 		.4byte	.LASF452
 4331 1dfb 01       		.byte	0x1
 4332 1dfc D4       		.byte	0xd4
 4333 1dfd A7010000 		.4byte	0x1a7
 4334 1e01 1A030000 		.4byte	.LLST4
 4335 1e05 57       		.uleb128 0x57
 4336 1e06 63737200 		.ascii	"csr\000"
 4337 1e0a 01       		.byte	0x1
 4338 1e0b D5       		.byte	0xd5
 4339 1e0c C2010000 		.4byte	0x1c2
 4340 1e10 01       		.uleb128 0x1
 4341 1e11 50       		.byte	0x50
 4342 1e12 58       		.uleb128 0x58
 4343 1e13 EB1F0000 		.4byte	0x1feb
 4344 1e17 02000000 		.4byte	.LBB38
 4345 1e1b 18000000 		.4byte	.Ldebug_ranges0+0x18
 4346 1e1f 01       		.byte	0x1
 4347 1e20 D0       		.byte	0xd0
 4348 1e21 2F1E0000 		.4byte	0x1e2f
ARM GAS  /tmp/ccHBIC16.s 			page 93


 4349 1e25 59       		.uleb128 0x59
 4350 1e26 F71F0000 		.4byte	0x1ff7
 4351 1e2a 2D030000 		.4byte	.LLST5
 4352 1e2e 00       		.byte	0
 4353 1e2f 58       		.uleb128 0x58
 4354 1e30 D31F0000 		.4byte	0x1fd3
 4355 1e34 26000000 		.4byte	.LBB44
 4356 1e38 38000000 		.4byte	.Ldebug_ranges0+0x38
 4357 1e3c 01       		.byte	0x1
 4358 1e3d E1       		.byte	0xe1
 4359 1e3e 4C1E0000 		.4byte	0x1e4c
 4360 1e42 59       		.uleb128 0x59
 4361 1e43 DF1F0000 		.4byte	0x1fdf
 4362 1e47 45030000 		.4byte	.LLST6
 4363 1e4b 00       		.byte	0
 4364 1e4c 5A       		.uleb128 0x5a
 4365 1e4d 18000000 		.4byte	.LVL13
 4366 1e51 0E200000 		.4byte	0x200e
 4367 1e55 00       		.byte	0
 4368 1e56 54       		.uleb128 0x54
 4369 1e57 58090000 		.4byte	.LASF453
 4370 1e5b 01       		.byte	0x1
 4371 1e5c 73       		.byte	0x73
 4372 1e5d 00000000 		.4byte	.LFB530
 4373 1e61 6C000000 		.4byte	.LFE530-.LFB530
 4374 1e65 01       		.uleb128 0x1
 4375 1e66 9C       		.byte	0x9c
 4376 1e67 F61E0000 		.4byte	0x1ef6
 4377 1e6b 55       		.uleb128 0x55
 4378 1e6c BC0E0000 		.4byte	.LASF449
 4379 1e70 01       		.byte	0x1
 4380 1e71 73       		.byte	0x73
 4381 1e72 F61E0000 		.4byte	0x1ef6
 4382 1e76 5D030000 		.4byte	.LLST0
 4383 1e7a 55       		.uleb128 0x55
 4384 1e7b 020F0000 		.4byte	.LASF454
 4385 1e7f 01       		.byte	0x1
 4386 1e80 73       		.byte	0x73
 4387 1e81 C2010000 		.4byte	0x1c2
 4388 1e85 7B030000 		.4byte	.LLST1
 4389 1e89 34       		.uleb128 0x34
 4390 1e8a D0110000 		.4byte	.LASF455
 4391 1e8e 01       		.byte	0x1
 4392 1e8f 75       		.byte	0x75
 4393 1e90 29160000 		.4byte	0x1629
 4394 1e94 05       		.uleb128 0x5
 4395 1e95 03       		.byte	0x3
 4396 1e96 00000000 		.4byte	_ZZ16sspi_master_initE13commsInitDone
 4397 1e9a 58       		.uleb128 0x58
 4398 1e9b 501F0000 		.4byte	0x1f50
 4399 1e9f 02000000 		.4byte	.LBB34
 4400 1ea3 00000000 		.4byte	.Ldebug_ranges0+0
 4401 1ea7 01       		.byte	0x1
 4402 1ea8 77       		.byte	0x77
 4403 1ea9 CB1E0000 		.4byte	0x1ecb
 4404 1ead 4F       		.uleb128 0x4f
 4405 1eae 671F0000 		.4byte	0x1f67
ARM GAS  /tmp/ccHBIC16.s 			page 94


 4406 1eb2 59       		.uleb128 0x59
 4407 1eb3 5C1F0000 		.4byte	0x1f5c
 4408 1eb7 99030000 		.4byte	.LLST2
 4409 1ebb 5B       		.uleb128 0x5b
 4410 1ebc 1A000000 		.4byte	.LVL4
 4411 1ec0 1A200000 		.4byte	0x201a
 4412 1ec4 5C       		.uleb128 0x5c
 4413 1ec5 01       		.uleb128 0x1
 4414 1ec6 52       		.byte	0x52
 4415 1ec7 01       		.uleb128 0x1
 4416 1ec8 30       		.byte	0x30
 4417 1ec9 00       		.byte	0
 4418 1eca 00       		.byte	0
 4419 1ecb 5A       		.uleb128 0x5a
 4420 1ecc 32000000 		.4byte	.LVL6
 4421 1ed0 25200000 		.4byte	0x2025
 4422 1ed4 5A       		.uleb128 0x5a
 4423 1ed5 38000000 		.4byte	.LVL7
 4424 1ed9 25200000 		.4byte	0x2025
 4425 1edd 5A       		.uleb128 0x5a
 4426 1ede 3E000000 		.4byte	.LVL8
 4427 1ee2 25200000 		.4byte	0x2025
 4428 1ee6 5B       		.uleb128 0x5b
 4429 1ee7 44000000 		.4byte	.LVL9
 4430 1eeb 34200000 		.4byte	0x2034
 4431 1eef 5C       		.uleb128 0x5c
 4432 1ef0 01       		.uleb128 0x1
 4433 1ef1 50       		.byte	0x50
 4434 1ef2 01       		.uleb128 0x1
 4435 1ef3 45       		.byte	0x45
 4436 1ef4 00       		.byte	0
 4437 1ef5 00       		.byte	0
 4438 1ef6 19       		.uleb128 0x19
 4439 1ef7 04       		.byte	0x4
 4440 1ef8 AB1B0000 		.4byte	0x1bab
 4441 1efc 5D       		.uleb128 0x5d
 4442 1efd 18040000 		.4byte	.LASF456
 4443 1f01 01       		.byte	0x1
 4444 1f02 61       		.byte	0x61
 4445 1f03 29160000 		.4byte	0x1629
 4446 1f07 03       		.byte	0x3
 4447 1f08 181F0000 		.4byte	0x1f18
 4448 1f0c 5E       		.uleb128 0x5e
 4449 1f0d 38060000 		.4byte	.LASF458
 4450 1f11 01       		.byte	0x1
 4451 1f12 63       		.byte	0x63
 4452 1f13 C2010000 		.4byte	0x1c2
 4453 1f17 00       		.byte	0
 4454 1f18 5D       		.uleb128 0x5d
 4455 1f19 AA020000 		.4byte	.LASF457
 4456 1f1d 01       		.byte	0x1
 4457 1f1e 4F       		.byte	0x4f
 4458 1f1f 29160000 		.4byte	0x1629
 4459 1f23 03       		.byte	0x3
 4460 1f24 341F0000 		.4byte	0x1f34
 4461 1f28 5E       		.uleb128 0x5e
 4462 1f29 38060000 		.4byte	.LASF458
ARM GAS  /tmp/ccHBIC16.s 			page 95


 4463 1f2d 01       		.byte	0x1
 4464 1f2e 51       		.byte	0x51
 4465 1f2f C2010000 		.4byte	0x1c2
 4466 1f33 00       		.byte	0
 4467 1f34 5D       		.uleb128 0x5d
 4468 1f35 E30D0000 		.4byte	.LASF459
 4469 1f39 01       		.byte	0x1
 4470 1f3a 3D       		.byte	0x3d
 4471 1f3b 29160000 		.4byte	0x1629
 4472 1f3f 03       		.byte	0x3
 4473 1f40 501F0000 		.4byte	0x1f50
 4474 1f44 5E       		.uleb128 0x5e
 4475 1f45 38060000 		.4byte	.LASF458
 4476 1f49 01       		.byte	0x1
 4477 1f4a 3F       		.byte	0x3f
 4478 1f4b C2010000 		.4byte	0x1c2
 4479 1f4f 00       		.byte	0
 4480 1f50 5F       		.uleb128 0x5f
 4481 1f51 D4120000 		.4byte	.LASF460
 4482 1f55 02       		.byte	0x2
 4483 1f56 39       		.byte	0x39
 4484 1f57 03       		.byte	0x3
 4485 1f58 731F0000 		.4byte	0x1f73
 4486 1f5c 60       		.uleb128 0x60
 4487 1f5d 70696E00 		.ascii	"pin\000"
 4488 1f61 02       		.byte	0x2
 4489 1f62 39       		.byte	0x39
 4490 1f63 57170000 		.4byte	0x1757
 4491 1f67 61       		.uleb128 0x61
 4492 1f68 E4020000 		.4byte	.LASF461
 4493 1f6c 02       		.byte	0x2
 4494 1f6d 39       		.byte	0x39
 4495 1f6e 3C1B0000 		.4byte	0x1b3c
 4496 1f72 00       		.byte	0
 4497 1f73 62       		.uleb128 0x62
 4498 1f74 76110000 		.4byte	.LASF462
 4499 1f78 03       		.byte	0x3
 4500 1f79 C701     		.2byte	0x1c7
 4501 1f7b C2010000 		.4byte	0x1c2
 4502 1f7f 03       		.byte	0x3
 4503 1f80 911F0000 		.4byte	0x1f91
 4504 1f84 63       		.uleb128 0x63
 4505 1f85 08100000 		.4byte	.LASF463
 4506 1f89 03       		.byte	0x3
 4507 1f8a C701     		.2byte	0x1c7
 4508 1f8c 911F0000 		.4byte	0x1f91
 4509 1f90 00       		.byte	0
 4510 1f91 19       		.uleb128 0x19
 4511 1f92 04       		.byte	0x4
 4512 1f93 63070000 		.4byte	0x763
 4513 1f97 62       		.uleb128 0x62
 4514 1f98 7C120000 		.4byte	.LASF464
 4515 1f9c 03       		.byte	0x3
 4516 1f9d A701     		.2byte	0x1a7
 4517 1f9f C2010000 		.4byte	0x1c2
 4518 1fa3 03       		.byte	0x3
 4519 1fa4 B51F0000 		.4byte	0x1fb5
ARM GAS  /tmp/ccHBIC16.s 			page 96


 4520 1fa8 63       		.uleb128 0x63
 4521 1fa9 08100000 		.4byte	.LASF463
 4522 1fad 03       		.byte	0x3
 4523 1fae A701     		.2byte	0x1a7
 4524 1fb0 911F0000 		.4byte	0x1f91
 4525 1fb4 00       		.byte	0
 4526 1fb5 62       		.uleb128 0x62
 4527 1fb6 2A080000 		.4byte	.LASF465
 4528 1fba 03       		.byte	0x3
 4529 1fbb 9601     		.2byte	0x196
 4530 1fbd C2010000 		.4byte	0x1c2
 4531 1fc1 03       		.byte	0x3
 4532 1fc2 D31F0000 		.4byte	0x1fd3
 4533 1fc6 63       		.uleb128 0x63
 4534 1fc7 08100000 		.4byte	.LASF463
 4535 1fcb 03       		.byte	0x3
 4536 1fcc 9601     		.2byte	0x196
 4537 1fce 911F0000 		.4byte	0x1f91
 4538 1fd2 00       		.byte	0
 4539 1fd3 64       		.uleb128 0x64
 4540 1fd4 12060000 		.4byte	.LASF466
 4541 1fd8 03       		.byte	0x3
 4542 1fd9 6C       		.byte	0x6c
 4543 1fda 03       		.byte	0x3
 4544 1fdb EB1F0000 		.4byte	0x1feb
 4545 1fdf 61       		.uleb128 0x61
 4546 1fe0 08100000 		.4byte	.LASF463
 4547 1fe4 03       		.byte	0x3
 4548 1fe5 6C       		.byte	0x6c
 4549 1fe6 911F0000 		.4byte	0x1f91
 4550 1fea 00       		.byte	0
 4551 1feb 64       		.uleb128 0x64
 4552 1fec E6080000 		.4byte	.LASF467
 4553 1ff0 03       		.byte	0x3
 4554 1ff1 62       		.byte	0x62
 4555 1ff2 03       		.byte	0x3
 4556 1ff3 03200000 		.4byte	0x2003
 4557 1ff7 61       		.uleb128 0x61
 4558 1ff8 08100000 		.4byte	.LASF463
 4559 1ffc 03       		.byte	0x3
 4560 1ffd 62       		.byte	0x62
 4561 1ffe 911F0000 		.4byte	0x1f91
 4562 2002 00       		.byte	0
 4563 2003 65       		.uleb128 0x65
 4564 2004 97000000 		.4byte	.LASF468
 4565 2008 97000000 		.4byte	.LASF468
 4566 200c 02       		.byte	0x2
 4567 200d 47       		.byte	0x47
 4568 200e 66       		.uleb128 0x66
 4569 200f 60110000 		.4byte	.LASF469
 4570 2013 60110000 		.4byte	.LASF469
 4571 2017 03       		.byte	0x3
 4572 2018 F901     		.2byte	0x1f9
 4573 201a 65       		.uleb128 0x65
 4574 201b 70120000 		.4byte	.LASF470
 4575 201f 70120000 		.4byte	.LASF470
 4576 2023 02       		.byte	0x2
ARM GAS  /tmp/ccHBIC16.s 			page 97


 4577 2024 37       		.byte	0x37
 4578 2025 67       		.uleb128 0x67
 4579 2026 A6110000 		.4byte	.LASF486
 4580 202a A3050000 		.4byte	.LASF487
 4581 202e 1F       		.byte	0x1f
 4582 202f 83       		.byte	0x83
 4583 2030 A6110000 		.4byte	.LASF486
 4584 2034 65       		.uleb128 0x65
 4585 2035 A7060000 		.4byte	.LASF471
 4586 2039 A7060000 		.4byte	.LASF471
 4587 203d 23       		.byte	0x23
 4588 203e DB       		.byte	0xdb
 4589 203f 00       		.byte	0
 4590              		.section	.debug_abbrev,"",%progbits
 4591              	.Ldebug_abbrev0:
 4592 0000 01       		.uleb128 0x1
 4593 0001 11       		.uleb128 0x11
 4594 0002 01       		.byte	0x1
 4595 0003 25       		.uleb128 0x25
 4596 0004 0E       		.uleb128 0xe
 4597 0005 13       		.uleb128 0x13
 4598 0006 0B       		.uleb128 0xb
 4599 0007 03       		.uleb128 0x3
 4600 0008 0E       		.uleb128 0xe
 4601 0009 1B       		.uleb128 0x1b
 4602 000a 0E       		.uleb128 0xe
 4603 000b 55       		.uleb128 0x55
 4604 000c 17       		.uleb128 0x17
 4605 000d 11       		.uleb128 0x11
 4606 000e 01       		.uleb128 0x1
 4607 000f 10       		.uleb128 0x10
 4608 0010 17       		.uleb128 0x17
 4609 0011 00       		.byte	0
 4610 0012 00       		.byte	0
 4611 0013 02       		.uleb128 0x2
 4612 0014 24       		.uleb128 0x24
 4613 0015 00       		.byte	0
 4614 0016 0B       		.uleb128 0xb
 4615 0017 0B       		.uleb128 0xb
 4616 0018 3E       		.uleb128 0x3e
 4617 0019 0B       		.uleb128 0xb
 4618 001a 03       		.uleb128 0x3
 4619 001b 08       		.uleb128 0x8
 4620 001c 00       		.byte	0
 4621 001d 00       		.byte	0
 4622 001e 03       		.uleb128 0x3
 4623 001f 16       		.uleb128 0x16
 4624 0020 00       		.byte	0
 4625 0021 03       		.uleb128 0x3
 4626 0022 0E       		.uleb128 0xe
 4627 0023 3A       		.uleb128 0x3a
 4628 0024 0B       		.uleb128 0xb
 4629 0025 3B       		.uleb128 0x3b
 4630 0026 0B       		.uleb128 0xb
 4631 0027 49       		.uleb128 0x49
 4632 0028 13       		.uleb128 0x13
 4633 0029 00       		.byte	0
ARM GAS  /tmp/ccHBIC16.s 			page 98


 4634 002a 00       		.byte	0
 4635 002b 04       		.uleb128 0x4
 4636 002c 26       		.uleb128 0x26
 4637 002d 00       		.byte	0
 4638 002e 49       		.uleb128 0x49
 4639 002f 13       		.uleb128 0x13
 4640 0030 00       		.byte	0
 4641 0031 00       		.byte	0
 4642 0032 05       		.uleb128 0x5
 4643 0033 24       		.uleb128 0x24
 4644 0034 00       		.byte	0
 4645 0035 0B       		.uleb128 0xb
 4646 0036 0B       		.uleb128 0xb
 4647 0037 3E       		.uleb128 0x3e
 4648 0038 0B       		.uleb128 0xb
 4649 0039 03       		.uleb128 0x3
 4650 003a 0E       		.uleb128 0xe
 4651 003b 00       		.byte	0
 4652 003c 00       		.byte	0
 4653 003d 06       		.uleb128 0x6
 4654 003e 13       		.uleb128 0x13
 4655 003f 01       		.byte	0x1
 4656 0040 0B       		.uleb128 0xb
 4657 0041 0B       		.uleb128 0xb
 4658 0042 3A       		.uleb128 0x3a
 4659 0043 0B       		.uleb128 0xb
 4660 0044 3B       		.uleb128 0x3b
 4661 0045 05       		.uleb128 0x5
 4662 0046 6E       		.uleb128 0x6e
 4663 0047 0E       		.uleb128 0xe
 4664 0048 01       		.uleb128 0x1
 4665 0049 13       		.uleb128 0x13
 4666 004a 00       		.byte	0
 4667 004b 00       		.byte	0
 4668 004c 07       		.uleb128 0x7
 4669 004d 0D       		.uleb128 0xd
 4670 004e 00       		.byte	0
 4671 004f 03       		.uleb128 0x3
 4672 0050 0E       		.uleb128 0xe
 4673 0051 3A       		.uleb128 0x3a
 4674 0052 0B       		.uleb128 0xb
 4675 0053 3B       		.uleb128 0x3b
 4676 0054 05       		.uleb128 0x5
 4677 0055 49       		.uleb128 0x49
 4678 0056 13       		.uleb128 0x13
 4679 0057 38       		.uleb128 0x38
 4680 0058 0B       		.uleb128 0xb
 4681 0059 00       		.byte	0
 4682 005a 00       		.byte	0
 4683 005b 08       		.uleb128 0x8
 4684 005c 16       		.uleb128 0x16
 4685 005d 00       		.byte	0
 4686 005e 03       		.uleb128 0x3
 4687 005f 0E       		.uleb128 0xe
 4688 0060 3A       		.uleb128 0x3a
 4689 0061 0B       		.uleb128 0xb
 4690 0062 3B       		.uleb128 0x3b
ARM GAS  /tmp/ccHBIC16.s 			page 99


 4691 0063 05       		.uleb128 0x5
 4692 0064 49       		.uleb128 0x49
 4693 0065 13       		.uleb128 0x13
 4694 0066 00       		.byte	0
 4695 0067 00       		.byte	0
 4696 0068 09       		.uleb128 0x9
 4697 0069 3B       		.uleb128 0x3b
 4698 006a 00       		.byte	0
 4699 006b 03       		.uleb128 0x3
 4700 006c 0E       		.uleb128 0xe
 4701 006d 00       		.byte	0
 4702 006e 00       		.byte	0
 4703 006f 0A       		.uleb128 0xa
 4704 0070 35       		.uleb128 0x35
 4705 0071 00       		.byte	0
 4706 0072 49       		.uleb128 0x49
 4707 0073 13       		.uleb128 0x13
 4708 0074 00       		.byte	0
 4709 0075 00       		.byte	0
 4710 0076 0B       		.uleb128 0xb
 4711 0077 0F       		.uleb128 0xf
 4712 0078 00       		.byte	0
 4713 0079 0B       		.uleb128 0xb
 4714 007a 0B       		.uleb128 0xb
 4715 007b 00       		.byte	0
 4716 007c 00       		.byte	0
 4717 007d 0C       		.uleb128 0xc
 4718 007e 01       		.uleb128 0x1
 4719 007f 01       		.byte	0x1
 4720 0080 49       		.uleb128 0x49
 4721 0081 13       		.uleb128 0x13
 4722 0082 01       		.uleb128 0x1
 4723 0083 13       		.uleb128 0x13
 4724 0084 00       		.byte	0
 4725 0085 00       		.byte	0
 4726 0086 0D       		.uleb128 0xd
 4727 0087 21       		.uleb128 0x21
 4728 0088 00       		.byte	0
 4729 0089 49       		.uleb128 0x49
 4730 008a 13       		.uleb128 0x13
 4731 008b 2F       		.uleb128 0x2f
 4732 008c 0B       		.uleb128 0xb
 4733 008d 00       		.byte	0
 4734 008e 00       		.byte	0
 4735 008f 0E       		.uleb128 0xe
 4736 0090 34       		.uleb128 0x34
 4737 0091 00       		.byte	0
 4738 0092 03       		.uleb128 0x3
 4739 0093 0E       		.uleb128 0xe
 4740 0094 3A       		.uleb128 0x3a
 4741 0095 0B       		.uleb128 0xb
 4742 0096 3B       		.uleb128 0x3b
 4743 0097 05       		.uleb128 0x5
 4744 0098 49       		.uleb128 0x49
 4745 0099 13       		.uleb128 0x13
 4746 009a 3F       		.uleb128 0x3f
 4747 009b 19       		.uleb128 0x19
ARM GAS  /tmp/ccHBIC16.s 			page 100


 4748 009c 3C       		.uleb128 0x3c
 4749 009d 19       		.uleb128 0x19
 4750 009e 00       		.byte	0
 4751 009f 00       		.byte	0
 4752 00a0 0F       		.uleb128 0xf
 4753 00a1 34       		.uleb128 0x34
 4754 00a2 00       		.byte	0
 4755 00a3 03       		.uleb128 0x3
 4756 00a4 0E       		.uleb128 0xe
 4757 00a5 3A       		.uleb128 0x3a
 4758 00a6 0B       		.uleb128 0xb
 4759 00a7 3B       		.uleb128 0x3b
 4760 00a8 0B       		.uleb128 0xb
 4761 00a9 49       		.uleb128 0x49
 4762 00aa 13       		.uleb128 0x13
 4763 00ab 3F       		.uleb128 0x3f
 4764 00ac 19       		.uleb128 0x19
 4765 00ad 3C       		.uleb128 0x3c
 4766 00ae 19       		.uleb128 0x19
 4767 00af 00       		.byte	0
 4768 00b0 00       		.byte	0
 4769 00b1 10       		.uleb128 0x10
 4770 00b2 13       		.uleb128 0x13
 4771 00b3 01       		.byte	0x1
 4772 00b4 0B       		.uleb128 0xb
 4773 00b5 05       		.uleb128 0x5
 4774 00b6 3A       		.uleb128 0x3a
 4775 00b7 0B       		.uleb128 0xb
 4776 00b8 3B       		.uleb128 0x3b
 4777 00b9 0B       		.uleb128 0xb
 4778 00ba 6E       		.uleb128 0x6e
 4779 00bb 0E       		.uleb128 0xe
 4780 00bc 01       		.uleb128 0x1
 4781 00bd 13       		.uleb128 0x13
 4782 00be 00       		.byte	0
 4783 00bf 00       		.byte	0
 4784 00c0 11       		.uleb128 0x11
 4785 00c1 0D       		.uleb128 0xd
 4786 00c2 00       		.byte	0
 4787 00c3 03       		.uleb128 0x3
 4788 00c4 0E       		.uleb128 0xe
 4789 00c5 3A       		.uleb128 0x3a
 4790 00c6 0B       		.uleb128 0xb
 4791 00c7 3B       		.uleb128 0x3b
 4792 00c8 0B       		.uleb128 0xb
 4793 00c9 49       		.uleb128 0x49
 4794 00ca 13       		.uleb128 0x13
 4795 00cb 38       		.uleb128 0x38
 4796 00cc 0B       		.uleb128 0xb
 4797 00cd 00       		.byte	0
 4798 00ce 00       		.byte	0
 4799 00cf 12       		.uleb128 0x12
 4800 00d0 0D       		.uleb128 0xd
 4801 00d1 00       		.byte	0
 4802 00d2 03       		.uleb128 0x3
 4803 00d3 0E       		.uleb128 0xe
 4804 00d4 3A       		.uleb128 0x3a
ARM GAS  /tmp/ccHBIC16.s 			page 101


 4805 00d5 0B       		.uleb128 0xb
 4806 00d6 3B       		.uleb128 0x3b
 4807 00d7 0B       		.uleb128 0xb
 4808 00d8 49       		.uleb128 0x49
 4809 00d9 13       		.uleb128 0x13
 4810 00da 38       		.uleb128 0x38
 4811 00db 05       		.uleb128 0x5
 4812 00dc 00       		.byte	0
 4813 00dd 00       		.byte	0
 4814 00de 13       		.uleb128 0x13
 4815 00df 16       		.uleb128 0x16
 4816 00e0 00       		.byte	0
 4817 00e1 03       		.uleb128 0x3
 4818 00e2 08       		.uleb128 0x8
 4819 00e3 3A       		.uleb128 0x3a
 4820 00e4 0B       		.uleb128 0xb
 4821 00e5 3B       		.uleb128 0x3b
 4822 00e6 0B       		.uleb128 0xb
 4823 00e7 49       		.uleb128 0x49
 4824 00e8 13       		.uleb128 0x13
 4825 00e9 00       		.byte	0
 4826 00ea 00       		.byte	0
 4827 00eb 14       		.uleb128 0x14
 4828 00ec 13       		.uleb128 0x13
 4829 00ed 01       		.byte	0x1
 4830 00ee 0B       		.uleb128 0xb
 4831 00ef 0B       		.uleb128 0xb
 4832 00f0 3A       		.uleb128 0x3a
 4833 00f1 0B       		.uleb128 0xb
 4834 00f2 3B       		.uleb128 0x3b
 4835 00f3 0B       		.uleb128 0xb
 4836 00f4 6E       		.uleb128 0x6e
 4837 00f5 0E       		.uleb128 0xe
 4838 00f6 01       		.uleb128 0x1
 4839 00f7 13       		.uleb128 0x13
 4840 00f8 00       		.byte	0
 4841 00f9 00       		.byte	0
 4842 00fa 15       		.uleb128 0x15
 4843 00fb 17       		.uleb128 0x17
 4844 00fc 01       		.byte	0x1
 4845 00fd 0B       		.uleb128 0xb
 4846 00fe 0B       		.uleb128 0xb
 4847 00ff 3A       		.uleb128 0x3a
 4848 0100 0B       		.uleb128 0xb
 4849 0101 3B       		.uleb128 0x3b
 4850 0102 0B       		.uleb128 0xb
 4851 0103 01       		.uleb128 0x1
 4852 0104 13       		.uleb128 0x13
 4853 0105 00       		.byte	0
 4854 0106 00       		.byte	0
 4855 0107 16       		.uleb128 0x16
 4856 0108 0D       		.uleb128 0xd
 4857 0109 00       		.byte	0
 4858 010a 03       		.uleb128 0x3
 4859 010b 0E       		.uleb128 0xe
 4860 010c 3A       		.uleb128 0x3a
 4861 010d 0B       		.uleb128 0xb
ARM GAS  /tmp/ccHBIC16.s 			page 102


 4862 010e 3B       		.uleb128 0x3b
 4863 010f 0B       		.uleb128 0xb
 4864 0110 49       		.uleb128 0x49
 4865 0111 13       		.uleb128 0x13
 4866 0112 00       		.byte	0
 4867 0113 00       		.byte	0
 4868 0114 17       		.uleb128 0x17
 4869 0115 13       		.uleb128 0x13
 4870 0116 01       		.byte	0x1
 4871 0117 03       		.uleb128 0x3
 4872 0118 0E       		.uleb128 0xe
 4873 0119 0B       		.uleb128 0xb
 4874 011a 0B       		.uleb128 0xb
 4875 011b 3A       		.uleb128 0x3a
 4876 011c 0B       		.uleb128 0xb
 4877 011d 3B       		.uleb128 0x3b
 4878 011e 0B       		.uleb128 0xb
 4879 011f 01       		.uleb128 0x1
 4880 0120 13       		.uleb128 0x13
 4881 0121 00       		.byte	0
 4882 0122 00       		.byte	0
 4883 0123 18       		.uleb128 0x18
 4884 0124 0D       		.uleb128 0xd
 4885 0125 00       		.byte	0
 4886 0126 03       		.uleb128 0x3
 4887 0127 08       		.uleb128 0x8
 4888 0128 3A       		.uleb128 0x3a
 4889 0129 0B       		.uleb128 0xb
 4890 012a 3B       		.uleb128 0x3b
 4891 012b 0B       		.uleb128 0xb
 4892 012c 49       		.uleb128 0x49
 4893 012d 13       		.uleb128 0x13
 4894 012e 38       		.uleb128 0x38
 4895 012f 0B       		.uleb128 0xb
 4896 0130 00       		.byte	0
 4897 0131 00       		.byte	0
 4898 0132 19       		.uleb128 0x19
 4899 0133 0F       		.uleb128 0xf
 4900 0134 00       		.byte	0
 4901 0135 0B       		.uleb128 0xb
 4902 0136 0B       		.uleb128 0xb
 4903 0137 49       		.uleb128 0x49
 4904 0138 13       		.uleb128 0x13
 4905 0139 00       		.byte	0
 4906 013a 00       		.byte	0
 4907 013b 1A       		.uleb128 0x1a
 4908 013c 13       		.uleb128 0x13
 4909 013d 01       		.byte	0x1
 4910 013e 03       		.uleb128 0x3
 4911 013f 0E       		.uleb128 0xe
 4912 0140 0B       		.uleb128 0xb
 4913 0141 05       		.uleb128 0x5
 4914 0142 3A       		.uleb128 0x3a
 4915 0143 0B       		.uleb128 0xb
 4916 0144 3B       		.uleb128 0x3b
 4917 0145 0B       		.uleb128 0xb
 4918 0146 01       		.uleb128 0x1
ARM GAS  /tmp/ccHBIC16.s 			page 103


 4919 0147 13       		.uleb128 0x13
 4920 0148 00       		.byte	0
 4921 0149 00       		.byte	0
 4922 014a 1B       		.uleb128 0x1b
 4923 014b 15       		.uleb128 0x15
 4924 014c 00       		.byte	0
 4925 014d 00       		.byte	0
 4926 014e 00       		.byte	0
 4927 014f 1C       		.uleb128 0x1c
 4928 0150 15       		.uleb128 0x15
 4929 0151 01       		.byte	0x1
 4930 0152 49       		.uleb128 0x49
 4931 0153 13       		.uleb128 0x13
 4932 0154 01       		.uleb128 0x1
 4933 0155 13       		.uleb128 0x13
 4934 0156 00       		.byte	0
 4935 0157 00       		.byte	0
 4936 0158 1D       		.uleb128 0x1d
 4937 0159 05       		.uleb128 0x5
 4938 015a 00       		.byte	0
 4939 015b 49       		.uleb128 0x49
 4940 015c 13       		.uleb128 0x13
 4941 015d 00       		.byte	0
 4942 015e 00       		.byte	0
 4943 015f 1E       		.uleb128 0x1e
 4944 0160 13       		.uleb128 0x13
 4945 0161 01       		.byte	0x1
 4946 0162 03       		.uleb128 0x3
 4947 0163 0E       		.uleb128 0xe
 4948 0164 0B       		.uleb128 0xb
 4949 0165 05       		.uleb128 0x5
 4950 0166 3A       		.uleb128 0x3a
 4951 0167 0B       		.uleb128 0xb
 4952 0168 3B       		.uleb128 0x3b
 4953 0169 05       		.uleb128 0x5
 4954 016a 01       		.uleb128 0x1
 4955 016b 13       		.uleb128 0x13
 4956 016c 00       		.byte	0
 4957 016d 00       		.byte	0
 4958 016e 1F       		.uleb128 0x1f
 4959 016f 17       		.uleb128 0x17
 4960 0170 01       		.byte	0x1
 4961 0171 0B       		.uleb128 0xb
 4962 0172 0B       		.uleb128 0xb
 4963 0173 3A       		.uleb128 0x3a
 4964 0174 0B       		.uleb128 0xb
 4965 0175 3B       		.uleb128 0x3b
 4966 0176 05       		.uleb128 0x5
 4967 0177 01       		.uleb128 0x1
 4968 0178 13       		.uleb128 0x13
 4969 0179 00       		.byte	0
 4970 017a 00       		.byte	0
 4971 017b 20       		.uleb128 0x20
 4972 017c 13       		.uleb128 0x13
 4973 017d 01       		.byte	0x1
 4974 017e 0B       		.uleb128 0xb
 4975 017f 0B       		.uleb128 0xb
ARM GAS  /tmp/ccHBIC16.s 			page 104


 4976 0180 3A       		.uleb128 0x3a
 4977 0181 0B       		.uleb128 0xb
 4978 0182 3B       		.uleb128 0x3b
 4979 0183 05       		.uleb128 0x5
 4980 0184 01       		.uleb128 0x1
 4981 0185 13       		.uleb128 0x13
 4982 0186 00       		.byte	0
 4983 0187 00       		.byte	0
 4984 0188 21       		.uleb128 0x21
 4985 0189 0D       		.uleb128 0xd
 4986 018a 00       		.byte	0
 4987 018b 03       		.uleb128 0x3
 4988 018c 0E       		.uleb128 0xe
 4989 018d 3A       		.uleb128 0x3a
 4990 018e 0B       		.uleb128 0xb
 4991 018f 3B       		.uleb128 0x3b
 4992 0190 05       		.uleb128 0x5
 4993 0191 49       		.uleb128 0x49
 4994 0192 13       		.uleb128 0x13
 4995 0193 00       		.byte	0
 4996 0194 00       		.byte	0
 4997 0195 22       		.uleb128 0x22
 4998 0196 0D       		.uleb128 0xd
 4999 0197 00       		.byte	0
 5000 0198 03       		.uleb128 0x3
 5001 0199 0E       		.uleb128 0xe
 5002 019a 3A       		.uleb128 0x3a
 5003 019b 0B       		.uleb128 0xb
 5004 019c 3B       		.uleb128 0x3b
 5005 019d 05       		.uleb128 0x5
 5006 019e 49       		.uleb128 0x49
 5007 019f 13       		.uleb128 0x13
 5008 01a0 38       		.uleb128 0x38
 5009 01a1 05       		.uleb128 0x5
 5010 01a2 00       		.byte	0
 5011 01a3 00       		.byte	0
 5012 01a4 23       		.uleb128 0x23
 5013 01a5 13       		.uleb128 0x13
 5014 01a6 01       		.byte	0x1
 5015 01a7 03       		.uleb128 0x3
 5016 01a8 0E       		.uleb128 0xe
 5017 01a9 0B       		.uleb128 0xb
 5018 01aa 0B       		.uleb128 0xb
 5019 01ab 3A       		.uleb128 0x3a
 5020 01ac 0B       		.uleb128 0xb
 5021 01ad 3B       		.uleb128 0x3b
 5022 01ae 05       		.uleb128 0x5
 5023 01af 01       		.uleb128 0x1
 5024 01b0 13       		.uleb128 0x13
 5025 01b1 00       		.byte	0
 5026 01b2 00       		.byte	0
 5027 01b3 24       		.uleb128 0x24
 5028 01b4 15       		.uleb128 0x15
 5029 01b5 01       		.byte	0x1
 5030 01b6 01       		.uleb128 0x1
 5031 01b7 13       		.uleb128 0x13
 5032 01b8 00       		.byte	0
ARM GAS  /tmp/ccHBIC16.s 			page 105


 5033 01b9 00       		.byte	0
 5034 01ba 25       		.uleb128 0x25
 5035 01bb 39       		.uleb128 0x39
 5036 01bc 01       		.byte	0x1
 5037 01bd 03       		.uleb128 0x3
 5038 01be 08       		.uleb128 0x8
 5039 01bf 3A       		.uleb128 0x3a
 5040 01c0 0B       		.uleb128 0xb
 5041 01c1 3B       		.uleb128 0x3b
 5042 01c2 0B       		.uleb128 0xb
 5043 01c3 01       		.uleb128 0x1
 5044 01c4 13       		.uleb128 0x13
 5045 01c5 00       		.byte	0
 5046 01c6 00       		.byte	0
 5047 01c7 26       		.uleb128 0x26
 5048 01c8 39       		.uleb128 0x39
 5049 01c9 00       		.byte	0
 5050 01ca 03       		.uleb128 0x3
 5051 01cb 0E       		.uleb128 0xe
 5052 01cc 3A       		.uleb128 0x3a
 5053 01cd 0B       		.uleb128 0xb
 5054 01ce 3B       		.uleb128 0x3b
 5055 01cf 0B       		.uleb128 0xb
 5056 01d0 00       		.byte	0
 5057 01d1 00       		.byte	0
 5058 01d2 27       		.uleb128 0x27
 5059 01d3 3A       		.uleb128 0x3a
 5060 01d4 00       		.byte	0
 5061 01d5 3A       		.uleb128 0x3a
 5062 01d6 0B       		.uleb128 0xb
 5063 01d7 3B       		.uleb128 0x3b
 5064 01d8 0B       		.uleb128 0xb
 5065 01d9 18       		.uleb128 0x18
 5066 01da 13       		.uleb128 0x13
 5067 01db 00       		.byte	0
 5068 01dc 00       		.byte	0
 5069 01dd 28       		.uleb128 0x28
 5070 01de 08       		.uleb128 0x8
 5071 01df 00       		.byte	0
 5072 01e0 3A       		.uleb128 0x3a
 5073 01e1 0B       		.uleb128 0xb
 5074 01e2 3B       		.uleb128 0x3b
 5075 01e3 0B       		.uleb128 0xb
 5076 01e4 18       		.uleb128 0x18
 5077 01e5 13       		.uleb128 0x13
 5078 01e6 00       		.byte	0
 5079 01e7 00       		.byte	0
 5080 01e8 29       		.uleb128 0x29
 5081 01e9 08       		.uleb128 0x8
 5082 01ea 00       		.byte	0
 5083 01eb 3A       		.uleb128 0x3a
 5084 01ec 0B       		.uleb128 0xb
 5085 01ed 3B       		.uleb128 0x3b
 5086 01ee 05       		.uleb128 0x5
 5087 01ef 18       		.uleb128 0x18
 5088 01f0 13       		.uleb128 0x13
 5089 01f1 00       		.byte	0
ARM GAS  /tmp/ccHBIC16.s 			page 106


 5090 01f2 00       		.byte	0
 5091 01f3 2A       		.uleb128 0x2a
 5092 01f4 2E       		.uleb128 0x2e
 5093 01f5 01       		.byte	0x1
 5094 01f6 3F       		.uleb128 0x3f
 5095 01f7 19       		.uleb128 0x19
 5096 01f8 03       		.uleb128 0x3
 5097 01f9 08       		.uleb128 0x8
 5098 01fa 3A       		.uleb128 0x3a
 5099 01fb 0B       		.uleb128 0xb
 5100 01fc 3B       		.uleb128 0x3b
 5101 01fd 0B       		.uleb128 0xb
 5102 01fe 6E       		.uleb128 0x6e
 5103 01ff 0E       		.uleb128 0xe
 5104 0200 49       		.uleb128 0x49
 5105 0201 13       		.uleb128 0x13
 5106 0202 3C       		.uleb128 0x3c
 5107 0203 19       		.uleb128 0x19
 5108 0204 01       		.uleb128 0x1
 5109 0205 13       		.uleb128 0x13
 5110 0206 00       		.byte	0
 5111 0207 00       		.byte	0
 5112 0208 2B       		.uleb128 0x2b
 5113 0209 2E       		.uleb128 0x2e
 5114 020a 01       		.byte	0x1
 5115 020b 3F       		.uleb128 0x3f
 5116 020c 19       		.uleb128 0x19
 5117 020d 03       		.uleb128 0x3
 5118 020e 0E       		.uleb128 0xe
 5119 020f 3A       		.uleb128 0x3a
 5120 0210 0B       		.uleb128 0xb
 5121 0211 3B       		.uleb128 0x3b
 5122 0212 05       		.uleb128 0x5
 5123 0213 6E       		.uleb128 0x6e
 5124 0214 0E       		.uleb128 0xe
 5125 0215 49       		.uleb128 0x49
 5126 0216 13       		.uleb128 0x13
 5127 0217 3C       		.uleb128 0x3c
 5128 0218 19       		.uleb128 0x19
 5129 0219 01       		.uleb128 0x1
 5130 021a 13       		.uleb128 0x13
 5131 021b 00       		.byte	0
 5132 021c 00       		.byte	0
 5133 021d 2C       		.uleb128 0x2c
 5134 021e 39       		.uleb128 0x39
 5135 021f 01       		.byte	0x1
 5136 0220 03       		.uleb128 0x3
 5137 0221 0E       		.uleb128 0xe
 5138 0222 3A       		.uleb128 0x3a
 5139 0223 0B       		.uleb128 0xb
 5140 0224 3B       		.uleb128 0x3b
 5141 0225 0B       		.uleb128 0xb
 5142 0226 01       		.uleb128 0x1
 5143 0227 13       		.uleb128 0x13
 5144 0228 00       		.byte	0
 5145 0229 00       		.byte	0
 5146 022a 2D       		.uleb128 0x2d
ARM GAS  /tmp/ccHBIC16.s 			page 107


 5147 022b 2E       		.uleb128 0x2e
 5148 022c 01       		.byte	0x1
 5149 022d 3F       		.uleb128 0x3f
 5150 022e 19       		.uleb128 0x19
 5151 022f 03       		.uleb128 0x3
 5152 0230 08       		.uleb128 0x8
 5153 0231 3A       		.uleb128 0x3a
 5154 0232 0B       		.uleb128 0xb
 5155 0233 3B       		.uleb128 0x3b
 5156 0234 0B       		.uleb128 0xb
 5157 0235 6E       		.uleb128 0x6e
 5158 0236 0E       		.uleb128 0xe
 5159 0237 49       		.uleb128 0x49
 5160 0238 13       		.uleb128 0x13
 5161 0239 3C       		.uleb128 0x3c
 5162 023a 19       		.uleb128 0x19
 5163 023b 00       		.byte	0
 5164 023c 00       		.byte	0
 5165 023d 2E       		.uleb128 0x2e
 5166 023e 26       		.uleb128 0x26
 5167 023f 00       		.byte	0
 5168 0240 00       		.byte	0
 5169 0241 00       		.byte	0
 5170 0242 2F       		.uleb128 0x2f
 5171 0243 2E       		.uleb128 0x2e
 5172 0244 01       		.byte	0x1
 5173 0245 3F       		.uleb128 0x3f
 5174 0246 19       		.uleb128 0x19
 5175 0247 03       		.uleb128 0x3
 5176 0248 0E       		.uleb128 0xe
 5177 0249 3A       		.uleb128 0x3a
 5178 024a 0B       		.uleb128 0xb
 5179 024b 3B       		.uleb128 0x3b
 5180 024c 0B       		.uleb128 0xb
 5181 024d 49       		.uleb128 0x49
 5182 024e 13       		.uleb128 0x13
 5183 024f 3C       		.uleb128 0x3c
 5184 0250 19       		.uleb128 0x19
 5185 0251 01       		.uleb128 0x1
 5186 0252 13       		.uleb128 0x13
 5187 0253 00       		.byte	0
 5188 0254 00       		.byte	0
 5189 0255 30       		.uleb128 0x30
 5190 0256 2E       		.uleb128 0x2e
 5191 0257 01       		.byte	0x1
 5192 0258 3F       		.uleb128 0x3f
 5193 0259 19       		.uleb128 0x19
 5194 025a 03       		.uleb128 0x3
 5195 025b 08       		.uleb128 0x8
 5196 025c 3A       		.uleb128 0x3a
 5197 025d 0B       		.uleb128 0xb
 5198 025e 3B       		.uleb128 0x3b
 5199 025f 0B       		.uleb128 0xb
 5200 0260 49       		.uleb128 0x49
 5201 0261 13       		.uleb128 0x13
 5202 0262 3C       		.uleb128 0x3c
 5203 0263 19       		.uleb128 0x19
ARM GAS  /tmp/ccHBIC16.s 			page 108


 5204 0264 01       		.uleb128 0x1
 5205 0265 13       		.uleb128 0x13
 5206 0266 00       		.byte	0
 5207 0267 00       		.byte	0
 5208 0268 31       		.uleb128 0x31
 5209 0269 2E       		.uleb128 0x2e
 5210 026a 01       		.byte	0x1
 5211 026b 3F       		.uleb128 0x3f
 5212 026c 19       		.uleb128 0x19
 5213 026d 03       		.uleb128 0x3
 5214 026e 0E       		.uleb128 0xe
 5215 026f 3A       		.uleb128 0x3a
 5216 0270 0B       		.uleb128 0xb
 5217 0271 3B       		.uleb128 0x3b
 5218 0272 0B       		.uleb128 0xb
 5219 0273 3C       		.uleb128 0x3c
 5220 0274 19       		.uleb128 0x19
 5221 0275 01       		.uleb128 0x1
 5222 0276 13       		.uleb128 0x13
 5223 0277 00       		.byte	0
 5224 0278 00       		.byte	0
 5225 0279 32       		.uleb128 0x32
 5226 027a 2E       		.uleb128 0x2e
 5227 027b 00       		.byte	0
 5228 027c 3F       		.uleb128 0x3f
 5229 027d 19       		.uleb128 0x19
 5230 027e 03       		.uleb128 0x3
 5231 027f 0E       		.uleb128 0xe
 5232 0280 3A       		.uleb128 0x3a
 5233 0281 0B       		.uleb128 0xb
 5234 0282 3B       		.uleb128 0x3b
 5235 0283 0B       		.uleb128 0xb
 5236 0284 49       		.uleb128 0x49
 5237 0285 13       		.uleb128 0x13
 5238 0286 3C       		.uleb128 0x3c
 5239 0287 19       		.uleb128 0x19
 5240 0288 00       		.byte	0
 5241 0289 00       		.byte	0
 5242 028a 33       		.uleb128 0x33
 5243 028b 2E       		.uleb128 0x2e
 5244 028c 01       		.byte	0x1
 5245 028d 3F       		.uleb128 0x3f
 5246 028e 19       		.uleb128 0x19
 5247 028f 03       		.uleb128 0x3
 5248 0290 0E       		.uleb128 0xe
 5249 0291 3A       		.uleb128 0x3a
 5250 0292 0B       		.uleb128 0xb
 5251 0293 3B       		.uleb128 0x3b
 5252 0294 05       		.uleb128 0x5
 5253 0295 49       		.uleb128 0x49
 5254 0296 13       		.uleb128 0x13
 5255 0297 3C       		.uleb128 0x3c
 5256 0298 19       		.uleb128 0x19
 5257 0299 01       		.uleb128 0x1
 5258 029a 13       		.uleb128 0x13
 5259 029b 00       		.byte	0
 5260 029c 00       		.byte	0
ARM GAS  /tmp/ccHBIC16.s 			page 109


 5261 029d 34       		.uleb128 0x34
 5262 029e 34       		.uleb128 0x34
 5263 029f 00       		.byte	0
 5264 02a0 03       		.uleb128 0x3
 5265 02a1 0E       		.uleb128 0xe
 5266 02a2 3A       		.uleb128 0x3a
 5267 02a3 0B       		.uleb128 0xb
 5268 02a4 3B       		.uleb128 0x3b
 5269 02a5 0B       		.uleb128 0xb
 5270 02a6 49       		.uleb128 0x49
 5271 02a7 13       		.uleb128 0x13
 5272 02a8 02       		.uleb128 0x2
 5273 02a9 18       		.uleb128 0x18
 5274 02aa 00       		.byte	0
 5275 02ab 00       		.byte	0
 5276 02ac 35       		.uleb128 0x35
 5277 02ad 04       		.uleb128 0x4
 5278 02ae 01       		.byte	0x1
 5279 02af 03       		.uleb128 0x3
 5280 02b0 0E       		.uleb128 0xe
 5281 02b1 0B       		.uleb128 0xb
 5282 02b2 0B       		.uleb128 0xb
 5283 02b3 49       		.uleb128 0x49
 5284 02b4 13       		.uleb128 0x13
 5285 02b5 3A       		.uleb128 0x3a
 5286 02b6 0B       		.uleb128 0xb
 5287 02b7 3B       		.uleb128 0x3b
 5288 02b8 05       		.uleb128 0x5
 5289 02b9 01       		.uleb128 0x1
 5290 02ba 13       		.uleb128 0x13
 5291 02bb 00       		.byte	0
 5292 02bc 00       		.byte	0
 5293 02bd 36       		.uleb128 0x36
 5294 02be 28       		.uleb128 0x28
 5295 02bf 00       		.byte	0
 5296 02c0 03       		.uleb128 0x3
 5297 02c1 0E       		.uleb128 0xe
 5298 02c2 1C       		.uleb128 0x1c
 5299 02c3 0D       		.uleb128 0xd
 5300 02c4 00       		.byte	0
 5301 02c5 00       		.byte	0
 5302 02c6 37       		.uleb128 0x37
 5303 02c7 28       		.uleb128 0x28
 5304 02c8 00       		.byte	0
 5305 02c9 03       		.uleb128 0x3
 5306 02ca 0E       		.uleb128 0xe
 5307 02cb 1C       		.uleb128 0x1c
 5308 02cc 0B       		.uleb128 0xb
 5309 02cd 00       		.byte	0
 5310 02ce 00       		.byte	0
 5311 02cf 38       		.uleb128 0x38
 5312 02d0 04       		.uleb128 0x4
 5313 02d1 01       		.byte	0x1
 5314 02d2 03       		.uleb128 0x3
 5315 02d3 0E       		.uleb128 0xe
 5316 02d4 0B       		.uleb128 0xb
 5317 02d5 0B       		.uleb128 0xb
ARM GAS  /tmp/ccHBIC16.s 			page 110


 5318 02d6 49       		.uleb128 0x49
 5319 02d7 13       		.uleb128 0x13
 5320 02d8 3A       		.uleb128 0x3a
 5321 02d9 0B       		.uleb128 0xb
 5322 02da 3B       		.uleb128 0x3b
 5323 02db 0B       		.uleb128 0xb
 5324 02dc 01       		.uleb128 0x1
 5325 02dd 13       		.uleb128 0x13
 5326 02de 00       		.byte	0
 5327 02df 00       		.byte	0
 5328 02e0 39       		.uleb128 0x39
 5329 02e1 28       		.uleb128 0x28
 5330 02e2 00       		.byte	0
 5331 02e3 03       		.uleb128 0x3
 5332 02e4 0E       		.uleb128 0xe
 5333 02e5 1C       		.uleb128 0x1c
 5334 02e6 06       		.uleb128 0x6
 5335 02e7 00       		.byte	0
 5336 02e8 00       		.byte	0
 5337 02e9 3A       		.uleb128 0x3a
 5338 02ea 04       		.uleb128 0x4
 5339 02eb 01       		.byte	0x1
 5340 02ec 0B       		.uleb128 0xb
 5341 02ed 0B       		.uleb128 0xb
 5342 02ee 49       		.uleb128 0x49
 5343 02ef 13       		.uleb128 0x13
 5344 02f0 3A       		.uleb128 0x3a
 5345 02f1 0B       		.uleb128 0xb
 5346 02f2 3B       		.uleb128 0x3b
 5347 02f3 0B       		.uleb128 0xb
 5348 02f4 6E       		.uleb128 0x6e
 5349 02f5 0E       		.uleb128 0xe
 5350 02f6 01       		.uleb128 0x1
 5351 02f7 13       		.uleb128 0x13
 5352 02f8 00       		.byte	0
 5353 02f9 00       		.byte	0
 5354 02fa 3B       		.uleb128 0x3b
 5355 02fb 34       		.uleb128 0x34
 5356 02fc 00       		.byte	0
 5357 02fd 03       		.uleb128 0x3
 5358 02fe 0E       		.uleb128 0xe
 5359 02ff 3A       		.uleb128 0x3a
 5360 0300 0B       		.uleb128 0xb
 5361 0301 3B       		.uleb128 0x3b
 5362 0302 0B       		.uleb128 0xb
 5363 0303 49       		.uleb128 0x49
 5364 0304 13       		.uleb128 0x13
 5365 0305 1C       		.uleb128 0x1c
 5366 0306 0D       		.uleb128 0xd
 5367 0307 00       		.byte	0
 5368 0308 00       		.byte	0
 5369 0309 3C       		.uleb128 0x3c
 5370 030a 28       		.uleb128 0x28
 5371 030b 00       		.byte	0
 5372 030c 03       		.uleb128 0x3
 5373 030d 08       		.uleb128 0x8
 5374 030e 1C       		.uleb128 0x1c
ARM GAS  /tmp/ccHBIC16.s 			page 111


 5375 030f 0B       		.uleb128 0xb
 5376 0310 00       		.byte	0
 5377 0311 00       		.byte	0
 5378 0312 3D       		.uleb128 0x3d
 5379 0313 21       		.uleb128 0x21
 5380 0314 00       		.byte	0
 5381 0315 00       		.byte	0
 5382 0316 00       		.byte	0
 5383 0317 3E       		.uleb128 0x3e
 5384 0318 02       		.uleb128 0x2
 5385 0319 01       		.byte	0x1
 5386 031a 03       		.uleb128 0x3
 5387 031b 0E       		.uleb128 0xe
 5388 031c 3C       		.uleb128 0x3c
 5389 031d 19       		.uleb128 0x19
 5390 031e 01       		.uleb128 0x1
 5391 031f 13       		.uleb128 0x13
 5392 0320 00       		.byte	0
 5393 0321 00       		.byte	0
 5394 0322 3F       		.uleb128 0x3f
 5395 0323 2E       		.uleb128 0x2e
 5396 0324 01       		.byte	0x1
 5397 0325 3F       		.uleb128 0x3f
 5398 0326 19       		.uleb128 0x19
 5399 0327 03       		.uleb128 0x3
 5400 0328 0E       		.uleb128 0xe
 5401 0329 3A       		.uleb128 0x3a
 5402 032a 0B       		.uleb128 0xb
 5403 032b 3B       		.uleb128 0x3b
 5404 032c 0B       		.uleb128 0xb
 5405 032d 6E       		.uleb128 0x6e
 5406 032e 0E       		.uleb128 0xe
 5407 032f 49       		.uleb128 0x49
 5408 0330 13       		.uleb128 0x13
 5409 0331 32       		.uleb128 0x32
 5410 0332 0B       		.uleb128 0xb
 5411 0333 3C       		.uleb128 0x3c
 5412 0334 19       		.uleb128 0x19
 5413 0335 64       		.uleb128 0x64
 5414 0336 13       		.uleb128 0x13
 5415 0337 00       		.byte	0
 5416 0338 00       		.byte	0
 5417 0339 40       		.uleb128 0x40
 5418 033a 05       		.uleb128 0x5
 5419 033b 00       		.byte	0
 5420 033c 49       		.uleb128 0x49
 5421 033d 13       		.uleb128 0x13
 5422 033e 34       		.uleb128 0x34
 5423 033f 19       		.uleb128 0x19
 5424 0340 00       		.byte	0
 5425 0341 00       		.byte	0
 5426 0342 41       		.uleb128 0x41
 5427 0343 34       		.uleb128 0x34
 5428 0344 00       		.byte	0
 5429 0345 03       		.uleb128 0x3
 5430 0346 0E       		.uleb128 0xe
 5431 0347 3A       		.uleb128 0x3a
ARM GAS  /tmp/ccHBIC16.s 			page 112


 5432 0348 0B       		.uleb128 0xb
 5433 0349 3B       		.uleb128 0x3b
 5434 034a 0B       		.uleb128 0xb
 5435 034b 49       		.uleb128 0x49
 5436 034c 13       		.uleb128 0x13
 5437 034d 1C       		.uleb128 0x1c
 5438 034e 05       		.uleb128 0x5
 5439 034f 00       		.byte	0
 5440 0350 00       		.byte	0
 5441 0351 42       		.uleb128 0x42
 5442 0352 34       		.uleb128 0x34
 5443 0353 00       		.byte	0
 5444 0354 03       		.uleb128 0x3
 5445 0355 0E       		.uleb128 0xe
 5446 0356 3A       		.uleb128 0x3a
 5447 0357 0B       		.uleb128 0xb
 5448 0358 3B       		.uleb128 0x3b
 5449 0359 0B       		.uleb128 0xb
 5450 035a 49       		.uleb128 0x49
 5451 035b 13       		.uleb128 0x13
 5452 035c 1C       		.uleb128 0x1c
 5453 035d 0B       		.uleb128 0xb
 5454 035e 00       		.byte	0
 5455 035f 00       		.byte	0
 5456 0360 43       		.uleb128 0x43
 5457 0361 34       		.uleb128 0x34
 5458 0362 00       		.byte	0
 5459 0363 03       		.uleb128 0x3
 5460 0364 0E       		.uleb128 0xe
 5461 0365 3A       		.uleb128 0x3a
 5462 0366 0B       		.uleb128 0xb
 5463 0367 3B       		.uleb128 0x3b
 5464 0368 0B       		.uleb128 0xb
 5465 0369 49       		.uleb128 0x49
 5466 036a 13       		.uleb128 0x13
 5467 036b 1C       		.uleb128 0x1c
 5468 036c 06       		.uleb128 0x6
 5469 036d 00       		.byte	0
 5470 036e 00       		.byte	0
 5471 036f 44       		.uleb128 0x44
 5472 0370 02       		.uleb128 0x2
 5473 0371 00       		.byte	0
 5474 0372 03       		.uleb128 0x3
 5475 0373 0E       		.uleb128 0xe
 5476 0374 3C       		.uleb128 0x3c
 5477 0375 19       		.uleb128 0x19
 5478 0376 00       		.byte	0
 5479 0377 00       		.byte	0
 5480 0378 45       		.uleb128 0x45
 5481 0379 2E       		.uleb128 0x2e
 5482 037a 01       		.byte	0x1
 5483 037b 3F       		.uleb128 0x3f
 5484 037c 19       		.uleb128 0x19
 5485 037d 03       		.uleb128 0x3
 5486 037e 0E       		.uleb128 0xe
 5487 037f 3A       		.uleb128 0x3a
 5488 0380 0B       		.uleb128 0xb
ARM GAS  /tmp/ccHBIC16.s 			page 113


 5489 0381 3B       		.uleb128 0x3b
 5490 0382 05       		.uleb128 0x5
 5491 0383 49       		.uleb128 0x49
 5492 0384 13       		.uleb128 0x13
 5493 0385 11       		.uleb128 0x11
 5494 0386 01       		.uleb128 0x1
 5495 0387 12       		.uleb128 0x12
 5496 0388 06       		.uleb128 0x6
 5497 0389 40       		.uleb128 0x40
 5498 038a 18       		.uleb128 0x18
 5499 038b 9742     		.uleb128 0x2117
 5500 038d 19       		.uleb128 0x19
 5501 038e 01       		.uleb128 0x1
 5502 038f 13       		.uleb128 0x13
 5503 0390 00       		.byte	0
 5504 0391 00       		.byte	0
 5505 0392 46       		.uleb128 0x46
 5506 0393 05       		.uleb128 0x5
 5507 0394 00       		.byte	0
 5508 0395 03       		.uleb128 0x3
 5509 0396 0E       		.uleb128 0xe
 5510 0397 3A       		.uleb128 0x3a
 5511 0398 0B       		.uleb128 0xb
 5512 0399 3B       		.uleb128 0x3b
 5513 039a 05       		.uleb128 0x5
 5514 039b 49       		.uleb128 0x49
 5515 039c 13       		.uleb128 0x13
 5516 039d 02       		.uleb128 0x2
 5517 039e 17       		.uleb128 0x17
 5518 039f 00       		.byte	0
 5519 03a0 00       		.byte	0
 5520 03a1 47       		.uleb128 0x47
 5521 03a2 05       		.uleb128 0x5
 5522 03a3 00       		.byte	0
 5523 03a4 03       		.uleb128 0x3
 5524 03a5 08       		.uleb128 0x8
 5525 03a6 3A       		.uleb128 0x3a
 5526 03a7 0B       		.uleb128 0xb
 5527 03a8 3B       		.uleb128 0x3b
 5528 03a9 05       		.uleb128 0x5
 5529 03aa 49       		.uleb128 0x49
 5530 03ab 13       		.uleb128 0x13
 5531 03ac 02       		.uleb128 0x2
 5532 03ad 17       		.uleb128 0x17
 5533 03ae 00       		.byte	0
 5534 03af 00       		.byte	0
 5535 03b0 48       		.uleb128 0x48
 5536 03b1 0B       		.uleb128 0xb
 5537 03b2 01       		.byte	0x1
 5538 03b3 55       		.uleb128 0x55
 5539 03b4 17       		.uleb128 0x17
 5540 03b5 01       		.uleb128 0x1
 5541 03b6 13       		.uleb128 0x13
 5542 03b7 00       		.byte	0
 5543 03b8 00       		.byte	0
 5544 03b9 49       		.uleb128 0x49
 5545 03ba 34       		.uleb128 0x34
ARM GAS  /tmp/ccHBIC16.s 			page 114


 5546 03bb 00       		.byte	0
 5547 03bc 03       		.uleb128 0x3
 5548 03bd 08       		.uleb128 0x8
 5549 03be 3A       		.uleb128 0x3a
 5550 03bf 0B       		.uleb128 0xb
 5551 03c0 3B       		.uleb128 0x3b
 5552 03c1 05       		.uleb128 0x5
 5553 03c2 49       		.uleb128 0x49
 5554 03c3 13       		.uleb128 0x13
 5555 03c4 02       		.uleb128 0x2
 5556 03c5 17       		.uleb128 0x17
 5557 03c6 00       		.byte	0
 5558 03c7 00       		.byte	0
 5559 03c8 4A       		.uleb128 0x4a
 5560 03c9 0B       		.uleb128 0xb
 5561 03ca 01       		.byte	0x1
 5562 03cb 55       		.uleb128 0x55
 5563 03cc 17       		.uleb128 0x17
 5564 03cd 00       		.byte	0
 5565 03ce 00       		.byte	0
 5566 03cf 4B       		.uleb128 0x4b
 5567 03d0 34       		.uleb128 0x34
 5568 03d1 00       		.byte	0
 5569 03d2 03       		.uleb128 0x3
 5570 03d3 0E       		.uleb128 0xe
 5571 03d4 3A       		.uleb128 0x3a
 5572 03d5 0B       		.uleb128 0xb
 5573 03d6 3B       		.uleb128 0x3b
 5574 03d7 05       		.uleb128 0x5
 5575 03d8 49       		.uleb128 0x49
 5576 03d9 13       		.uleb128 0x13
 5577 03da 02       		.uleb128 0x2
 5578 03db 17       		.uleb128 0x17
 5579 03dc 00       		.byte	0
 5580 03dd 00       		.byte	0
 5581 03de 4C       		.uleb128 0x4c
 5582 03df 1D       		.uleb128 0x1d
 5583 03e0 01       		.byte	0x1
 5584 03e1 31       		.uleb128 0x31
 5585 03e2 13       		.uleb128 0x13
 5586 03e3 52       		.uleb128 0x52
 5587 03e4 01       		.uleb128 0x1
 5588 03e5 55       		.uleb128 0x55
 5589 03e6 17       		.uleb128 0x17
 5590 03e7 58       		.uleb128 0x58
 5591 03e8 0B       		.uleb128 0xb
 5592 03e9 59       		.uleb128 0x59
 5593 03ea 05       		.uleb128 0x5
 5594 03eb 00       		.byte	0
 5595 03ec 00       		.byte	0
 5596 03ed 4D       		.uleb128 0x4d
 5597 03ee 34       		.uleb128 0x34
 5598 03ef 00       		.byte	0
 5599 03f0 31       		.uleb128 0x31
 5600 03f1 13       		.uleb128 0x13
 5601 03f2 02       		.uleb128 0x2
 5602 03f3 17       		.uleb128 0x17
ARM GAS  /tmp/ccHBIC16.s 			page 115


 5603 03f4 00       		.byte	0
 5604 03f5 00       		.byte	0
 5605 03f6 4E       		.uleb128 0x4e
 5606 03f7 1D       		.uleb128 0x1d
 5607 03f8 01       		.byte	0x1
 5608 03f9 31       		.uleb128 0x31
 5609 03fa 13       		.uleb128 0x13
 5610 03fb 52       		.uleb128 0x52
 5611 03fc 01       		.uleb128 0x1
 5612 03fd 55       		.uleb128 0x55
 5613 03fe 17       		.uleb128 0x17
 5614 03ff 58       		.uleb128 0x58
 5615 0400 0B       		.uleb128 0xb
 5616 0401 59       		.uleb128 0x59
 5617 0402 0B       		.uleb128 0xb
 5618 0403 00       		.byte	0
 5619 0404 00       		.byte	0
 5620 0405 4F       		.uleb128 0x4f
 5621 0406 05       		.uleb128 0x5
 5622 0407 00       		.byte	0
 5623 0408 31       		.uleb128 0x31
 5624 0409 13       		.uleb128 0x13
 5625 040a 00       		.byte	0
 5626 040b 00       		.byte	0
 5627 040c 50       		.uleb128 0x50
 5628 040d 2E       		.uleb128 0x2e
 5629 040e 01       		.byte	0x1
 5630 040f 3F       		.uleb128 0x3f
 5631 0410 19       		.uleb128 0x19
 5632 0411 03       		.uleb128 0x3
 5633 0412 0E       		.uleb128 0xe
 5634 0413 3A       		.uleb128 0x3a
 5635 0414 0B       		.uleb128 0xb
 5636 0415 3B       		.uleb128 0x3b
 5637 0416 05       		.uleb128 0x5
 5638 0417 11       		.uleb128 0x11
 5639 0418 01       		.uleb128 0x1
 5640 0419 12       		.uleb128 0x12
 5641 041a 06       		.uleb128 0x6
 5642 041b 40       		.uleb128 0x40
 5643 041c 18       		.uleb128 0x18
 5644 041d 9742     		.uleb128 0x2117
 5645 041f 19       		.uleb128 0x19
 5646 0420 01       		.uleb128 0x1
 5647 0421 13       		.uleb128 0x13
 5648 0422 00       		.byte	0
 5649 0423 00       		.byte	0
 5650 0424 51       		.uleb128 0x51
 5651 0425 1D       		.uleb128 0x1d
 5652 0426 01       		.byte	0x1
 5653 0427 31       		.uleb128 0x31
 5654 0428 13       		.uleb128 0x13
 5655 0429 11       		.uleb128 0x11
 5656 042a 01       		.uleb128 0x1
 5657 042b 12       		.uleb128 0x12
 5658 042c 06       		.uleb128 0x6
 5659 042d 58       		.uleb128 0x58
ARM GAS  /tmp/ccHBIC16.s 			page 116


 5660 042e 0B       		.uleb128 0xb
 5661 042f 59       		.uleb128 0x59
 5662 0430 05       		.uleb128 0x5
 5663 0431 01       		.uleb128 0x1
 5664 0432 13       		.uleb128 0x13
 5665 0433 00       		.byte	0
 5666 0434 00       		.byte	0
 5667 0435 52       		.uleb128 0x52
 5668 0436 0B       		.uleb128 0xb
 5669 0437 01       		.byte	0x1
 5670 0438 11       		.uleb128 0x11
 5671 0439 01       		.uleb128 0x1
 5672 043a 12       		.uleb128 0x12
 5673 043b 06       		.uleb128 0x6
 5674 043c 00       		.byte	0
 5675 043d 00       		.byte	0
 5676 043e 53       		.uleb128 0x53
 5677 043f 898201   		.uleb128 0x4109
 5678 0442 00       		.byte	0
 5679 0443 11       		.uleb128 0x11
 5680 0444 01       		.uleb128 0x1
 5681 0445 9542     		.uleb128 0x2115
 5682 0447 19       		.uleb128 0x19
 5683 0448 31       		.uleb128 0x31
 5684 0449 13       		.uleb128 0x13
 5685 044a 00       		.byte	0
 5686 044b 00       		.byte	0
 5687 044c 54       		.uleb128 0x54
 5688 044d 2E       		.uleb128 0x2e
 5689 044e 01       		.byte	0x1
 5690 044f 3F       		.uleb128 0x3f
 5691 0450 19       		.uleb128 0x19
 5692 0451 03       		.uleb128 0x3
 5693 0452 0E       		.uleb128 0xe
 5694 0453 3A       		.uleb128 0x3a
 5695 0454 0B       		.uleb128 0xb
 5696 0455 3B       		.uleb128 0x3b
 5697 0456 0B       		.uleb128 0xb
 5698 0457 11       		.uleb128 0x11
 5699 0458 01       		.uleb128 0x1
 5700 0459 12       		.uleb128 0x12
 5701 045a 06       		.uleb128 0x6
 5702 045b 40       		.uleb128 0x40
 5703 045c 18       		.uleb128 0x18
 5704 045d 9742     		.uleb128 0x2117
 5705 045f 19       		.uleb128 0x19
 5706 0460 01       		.uleb128 0x1
 5707 0461 13       		.uleb128 0x13
 5708 0462 00       		.byte	0
 5709 0463 00       		.byte	0
 5710 0464 55       		.uleb128 0x55
 5711 0465 05       		.uleb128 0x5
 5712 0466 00       		.byte	0
 5713 0467 03       		.uleb128 0x3
 5714 0468 0E       		.uleb128 0xe
 5715 0469 3A       		.uleb128 0x3a
 5716 046a 0B       		.uleb128 0xb
ARM GAS  /tmp/ccHBIC16.s 			page 117


 5717 046b 3B       		.uleb128 0x3b
 5718 046c 0B       		.uleb128 0xb
 5719 046d 49       		.uleb128 0x49
 5720 046e 13       		.uleb128 0x13
 5721 046f 02       		.uleb128 0x2
 5722 0470 17       		.uleb128 0x17
 5723 0471 00       		.byte	0
 5724 0472 00       		.byte	0
 5725 0473 56       		.uleb128 0x56
 5726 0474 34       		.uleb128 0x34
 5727 0475 00       		.byte	0
 5728 0476 03       		.uleb128 0x3
 5729 0477 0E       		.uleb128 0xe
 5730 0478 3A       		.uleb128 0x3a
 5731 0479 0B       		.uleb128 0xb
 5732 047a 3B       		.uleb128 0x3b
 5733 047b 0B       		.uleb128 0xb
 5734 047c 49       		.uleb128 0x49
 5735 047d 13       		.uleb128 0x13
 5736 047e 02       		.uleb128 0x2
 5737 047f 17       		.uleb128 0x17
 5738 0480 00       		.byte	0
 5739 0481 00       		.byte	0
 5740 0482 57       		.uleb128 0x57
 5741 0483 34       		.uleb128 0x34
 5742 0484 00       		.byte	0
 5743 0485 03       		.uleb128 0x3
 5744 0486 08       		.uleb128 0x8
 5745 0487 3A       		.uleb128 0x3a
 5746 0488 0B       		.uleb128 0xb
 5747 0489 3B       		.uleb128 0x3b
 5748 048a 0B       		.uleb128 0xb
 5749 048b 49       		.uleb128 0x49
 5750 048c 13       		.uleb128 0x13
 5751 048d 02       		.uleb128 0x2
 5752 048e 18       		.uleb128 0x18
 5753 048f 00       		.byte	0
 5754 0490 00       		.byte	0
 5755 0491 58       		.uleb128 0x58
 5756 0492 1D       		.uleb128 0x1d
 5757 0493 01       		.byte	0x1
 5758 0494 31       		.uleb128 0x31
 5759 0495 13       		.uleb128 0x13
 5760 0496 52       		.uleb128 0x52
 5761 0497 01       		.uleb128 0x1
 5762 0498 55       		.uleb128 0x55
 5763 0499 17       		.uleb128 0x17
 5764 049a 58       		.uleb128 0x58
 5765 049b 0B       		.uleb128 0xb
 5766 049c 59       		.uleb128 0x59
 5767 049d 0B       		.uleb128 0xb
 5768 049e 01       		.uleb128 0x1
 5769 049f 13       		.uleb128 0x13
 5770 04a0 00       		.byte	0
 5771 04a1 00       		.byte	0
 5772 04a2 59       		.uleb128 0x59
 5773 04a3 05       		.uleb128 0x5
ARM GAS  /tmp/ccHBIC16.s 			page 118


 5774 04a4 00       		.byte	0
 5775 04a5 31       		.uleb128 0x31
 5776 04a6 13       		.uleb128 0x13
 5777 04a7 02       		.uleb128 0x2
 5778 04a8 17       		.uleb128 0x17
 5779 04a9 00       		.byte	0
 5780 04aa 00       		.byte	0
 5781 04ab 5A       		.uleb128 0x5a
 5782 04ac 898201   		.uleb128 0x4109
 5783 04af 00       		.byte	0
 5784 04b0 11       		.uleb128 0x11
 5785 04b1 01       		.uleb128 0x1
 5786 04b2 31       		.uleb128 0x31
 5787 04b3 13       		.uleb128 0x13
 5788 04b4 00       		.byte	0
 5789 04b5 00       		.byte	0
 5790 04b6 5B       		.uleb128 0x5b
 5791 04b7 898201   		.uleb128 0x4109
 5792 04ba 01       		.byte	0x1
 5793 04bb 11       		.uleb128 0x11
 5794 04bc 01       		.uleb128 0x1
 5795 04bd 31       		.uleb128 0x31
 5796 04be 13       		.uleb128 0x13
 5797 04bf 00       		.byte	0
 5798 04c0 00       		.byte	0
 5799 04c1 5C       		.uleb128 0x5c
 5800 04c2 8A8201   		.uleb128 0x410a
 5801 04c5 00       		.byte	0
 5802 04c6 02       		.uleb128 0x2
 5803 04c7 18       		.uleb128 0x18
 5804 04c8 9142     		.uleb128 0x2111
 5805 04ca 18       		.uleb128 0x18
 5806 04cb 00       		.byte	0
 5807 04cc 00       		.byte	0
 5808 04cd 5D       		.uleb128 0x5d
 5809 04ce 2E       		.uleb128 0x2e
 5810 04cf 01       		.byte	0x1
 5811 04d0 03       		.uleb128 0x3
 5812 04d1 0E       		.uleb128 0xe
 5813 04d2 3A       		.uleb128 0x3a
 5814 04d3 0B       		.uleb128 0xb
 5815 04d4 3B       		.uleb128 0x3b
 5816 04d5 0B       		.uleb128 0xb
 5817 04d6 49       		.uleb128 0x49
 5818 04d7 13       		.uleb128 0x13
 5819 04d8 20       		.uleb128 0x20
 5820 04d9 0B       		.uleb128 0xb
 5821 04da 01       		.uleb128 0x1
 5822 04db 13       		.uleb128 0x13
 5823 04dc 00       		.byte	0
 5824 04dd 00       		.byte	0
 5825 04de 5E       		.uleb128 0x5e
 5826 04df 34       		.uleb128 0x34
 5827 04e0 00       		.byte	0
 5828 04e1 03       		.uleb128 0x3
 5829 04e2 0E       		.uleb128 0xe
 5830 04e3 3A       		.uleb128 0x3a
ARM GAS  /tmp/ccHBIC16.s 			page 119


 5831 04e4 0B       		.uleb128 0xb
 5832 04e5 3B       		.uleb128 0x3b
 5833 04e6 0B       		.uleb128 0xb
 5834 04e7 49       		.uleb128 0x49
 5835 04e8 13       		.uleb128 0x13
 5836 04e9 00       		.byte	0
 5837 04ea 00       		.byte	0
 5838 04eb 5F       		.uleb128 0x5f
 5839 04ec 2E       		.uleb128 0x2e
 5840 04ed 01       		.byte	0x1
 5841 04ee 3F       		.uleb128 0x3f
 5842 04ef 19       		.uleb128 0x19
 5843 04f0 03       		.uleb128 0x3
 5844 04f1 0E       		.uleb128 0xe
 5845 04f2 3A       		.uleb128 0x3a
 5846 04f3 0B       		.uleb128 0xb
 5847 04f4 3B       		.uleb128 0x3b
 5848 04f5 0B       		.uleb128 0xb
 5849 04f6 20       		.uleb128 0x20
 5850 04f7 0B       		.uleb128 0xb
 5851 04f8 01       		.uleb128 0x1
 5852 04f9 13       		.uleb128 0x13
 5853 04fa 00       		.byte	0
 5854 04fb 00       		.byte	0
 5855 04fc 60       		.uleb128 0x60
 5856 04fd 05       		.uleb128 0x5
 5857 04fe 00       		.byte	0
 5858 04ff 03       		.uleb128 0x3
 5859 0500 08       		.uleb128 0x8
 5860 0501 3A       		.uleb128 0x3a
 5861 0502 0B       		.uleb128 0xb
 5862 0503 3B       		.uleb128 0x3b
 5863 0504 0B       		.uleb128 0xb
 5864 0505 49       		.uleb128 0x49
 5865 0506 13       		.uleb128 0x13
 5866 0507 00       		.byte	0
 5867 0508 00       		.byte	0
 5868 0509 61       		.uleb128 0x61
 5869 050a 05       		.uleb128 0x5
 5870 050b 00       		.byte	0
 5871 050c 03       		.uleb128 0x3
 5872 050d 0E       		.uleb128 0xe
 5873 050e 3A       		.uleb128 0x3a
 5874 050f 0B       		.uleb128 0xb
 5875 0510 3B       		.uleb128 0x3b
 5876 0511 0B       		.uleb128 0xb
 5877 0512 49       		.uleb128 0x49
 5878 0513 13       		.uleb128 0x13
 5879 0514 00       		.byte	0
 5880 0515 00       		.byte	0
 5881 0516 62       		.uleb128 0x62
 5882 0517 2E       		.uleb128 0x2e
 5883 0518 01       		.byte	0x1
 5884 0519 03       		.uleb128 0x3
 5885 051a 0E       		.uleb128 0xe
 5886 051b 3A       		.uleb128 0x3a
 5887 051c 0B       		.uleb128 0xb
ARM GAS  /tmp/ccHBIC16.s 			page 120


 5888 051d 3B       		.uleb128 0x3b
 5889 051e 05       		.uleb128 0x5
 5890 051f 49       		.uleb128 0x49
 5891 0520 13       		.uleb128 0x13
 5892 0521 20       		.uleb128 0x20
 5893 0522 0B       		.uleb128 0xb
 5894 0523 01       		.uleb128 0x1
 5895 0524 13       		.uleb128 0x13
 5896 0525 00       		.byte	0
 5897 0526 00       		.byte	0
 5898 0527 63       		.uleb128 0x63
 5899 0528 05       		.uleb128 0x5
 5900 0529 00       		.byte	0
 5901 052a 03       		.uleb128 0x3
 5902 052b 0E       		.uleb128 0xe
 5903 052c 3A       		.uleb128 0x3a
 5904 052d 0B       		.uleb128 0xb
 5905 052e 3B       		.uleb128 0x3b
 5906 052f 05       		.uleb128 0x5
 5907 0530 49       		.uleb128 0x49
 5908 0531 13       		.uleb128 0x13
 5909 0532 00       		.byte	0
 5910 0533 00       		.byte	0
 5911 0534 64       		.uleb128 0x64
 5912 0535 2E       		.uleb128 0x2e
 5913 0536 01       		.byte	0x1
 5914 0537 03       		.uleb128 0x3
 5915 0538 0E       		.uleb128 0xe
 5916 0539 3A       		.uleb128 0x3a
 5917 053a 0B       		.uleb128 0xb
 5918 053b 3B       		.uleb128 0x3b
 5919 053c 0B       		.uleb128 0xb
 5920 053d 20       		.uleb128 0x20
 5921 053e 0B       		.uleb128 0xb
 5922 053f 01       		.uleb128 0x1
 5923 0540 13       		.uleb128 0x13
 5924 0541 00       		.byte	0
 5925 0542 00       		.byte	0
 5926 0543 65       		.uleb128 0x65
 5927 0544 2E       		.uleb128 0x2e
 5928 0545 00       		.byte	0
 5929 0546 3F       		.uleb128 0x3f
 5930 0547 19       		.uleb128 0x19
 5931 0548 3C       		.uleb128 0x3c
 5932 0549 19       		.uleb128 0x19
 5933 054a 6E       		.uleb128 0x6e
 5934 054b 0E       		.uleb128 0xe
 5935 054c 03       		.uleb128 0x3
 5936 054d 0E       		.uleb128 0xe
 5937 054e 3A       		.uleb128 0x3a
 5938 054f 0B       		.uleb128 0xb
 5939 0550 3B       		.uleb128 0x3b
 5940 0551 0B       		.uleb128 0xb
 5941 0552 00       		.byte	0
 5942 0553 00       		.byte	0
 5943 0554 66       		.uleb128 0x66
 5944 0555 2E       		.uleb128 0x2e
ARM GAS  /tmp/ccHBIC16.s 			page 121


 5945 0556 00       		.byte	0
 5946 0557 3F       		.uleb128 0x3f
 5947 0558 19       		.uleb128 0x19
 5948 0559 3C       		.uleb128 0x3c
 5949 055a 19       		.uleb128 0x19
 5950 055b 6E       		.uleb128 0x6e
 5951 055c 0E       		.uleb128 0xe
 5952 055d 03       		.uleb128 0x3
 5953 055e 0E       		.uleb128 0xe
 5954 055f 3A       		.uleb128 0x3a
 5955 0560 0B       		.uleb128 0xb
 5956 0561 3B       		.uleb128 0x3b
 5957 0562 05       		.uleb128 0x5
 5958 0563 00       		.byte	0
 5959 0564 00       		.byte	0
 5960 0565 67       		.uleb128 0x67
 5961 0566 2E       		.uleb128 0x2e
 5962 0567 00       		.byte	0
 5963 0568 3F       		.uleb128 0x3f
 5964 0569 19       		.uleb128 0x19
 5965 056a 3C       		.uleb128 0x3c
 5966 056b 19       		.uleb128 0x19
 5967 056c 6E       		.uleb128 0x6e
 5968 056d 0E       		.uleb128 0xe
 5969 056e 03       		.uleb128 0x3
 5970 056f 0E       		.uleb128 0xe
 5971 0570 3A       		.uleb128 0x3a
 5972 0571 0B       		.uleb128 0xb
 5973 0572 3B       		.uleb128 0x3b
 5974 0573 0B       		.uleb128 0xb
 5975 0574 6E       		.uleb128 0x6e
 5976 0575 0E       		.uleb128 0xe
 5977 0576 00       		.byte	0
 5978 0577 00       		.byte	0
 5979 0578 00       		.byte	0
 5980              		.section	.debug_loc,"",%progbits
 5981              	.Ldebug_loc0:
 5982              	.LLST10:
 5983 0000 00000000 		.4byte	.LVL31
 5984 0004 12000000 		.4byte	.LVL33
 5985 0008 0100     		.2byte	0x1
 5986 000a 50       		.byte	0x50
 5987 000b 12000000 		.4byte	.LVL33
 5988 000f 16000000 		.4byte	.LVL34
 5989 0013 0300     		.2byte	0x3
 5990 0015 70       		.byte	0x70
 5991 0016 01       		.sleb128 1
 5992 0017 9F       		.byte	0x9f
 5993 0018 16000000 		.4byte	.LVL34
 5994 001c 5A000000 		.4byte	.LVL49
 5995 0020 0100     		.2byte	0x1
 5996 0022 50       		.byte	0x50
 5997 0023 5C000000 		.4byte	.LVL50
 5998 0027 66000000 		.4byte	.LVL52
 5999 002b 0100     		.2byte	0x1
 6000 002d 50       		.byte	0x50
 6001 002e 68000000 		.4byte	.LVL53
ARM GAS  /tmp/ccHBIC16.s 			page 122


 6002 0032 7A000000 		.4byte	.LVL56
 6003 0036 0100     		.2byte	0x1
 6004 0038 50       		.byte	0x50
 6005 0039 8C000000 		.4byte	.LVL60
 6006 003d 90000000 		.4byte	.LVL61
 6007 0041 0100     		.2byte	0x1
 6008 0043 50       		.byte	0x50
 6009 0044 90000000 		.4byte	.LVL61
 6010 0048 92000000 		.4byte	.LVL62
 6011 004c 0400     		.2byte	0x4
 6012 004e F3       		.byte	0xf3
 6013 004f 01       		.uleb128 0x1
 6014 0050 50       		.byte	0x50
 6015 0051 9F       		.byte	0x9f
 6016 0052 92000000 		.4byte	.LVL62
 6017 0056 A8000000 		.4byte	.LVL68
 6018 005a 0100     		.2byte	0x1
 6019 005c 50       		.byte	0x50
 6020 005d A8000000 		.4byte	.LVL68
 6021 0061 B0000000 		.4byte	.LFE534
 6022 0065 0400     		.2byte	0x4
 6023 0067 F3       		.byte	0xf3
 6024 0068 01       		.uleb128 0x1
 6025 0069 50       		.byte	0x50
 6026 006a 9F       		.byte	0x9f
 6027 006b 00000000 		.4byte	0
 6028 006f 00000000 		.4byte	0
 6029              	.LLST11:
 6030 0073 00000000 		.4byte	.LVL31
 6031 0077 4A000000 		.4byte	.LVL45
 6032 007b 0100     		.2byte	0x1
 6033 007d 51       		.byte	0x51
 6034 007e 4A000000 		.4byte	.LVL45
 6035 0082 50000000 		.4byte	.LVL47
 6036 0086 0100     		.2byte	0x1
 6037 0088 53       		.byte	0x53
 6038 0089 50000000 		.4byte	.LVL47
 6039 008d 62000000 		.4byte	.LVL51
 6040 0091 0100     		.2byte	0x1
 6041 0093 51       		.byte	0x51
 6042 0094 62000000 		.4byte	.LVL51
 6043 0098 68000000 		.4byte	.LVL53
 6044 009c 0100     		.2byte	0x1
 6045 009e 53       		.byte	0x53
 6046 009f 68000000 		.4byte	.LVL53
 6047 00a3 72000000 		.4byte	.LVL55
 6048 00a7 0100     		.2byte	0x1
 6049 00a9 51       		.byte	0x51
 6050 00aa 8C000000 		.4byte	.LVL60
 6051 00ae 98000000 		.4byte	.LVL63
 6052 00b2 0100     		.2byte	0x1
 6053 00b4 51       		.byte	0x51
 6054 00b5 98000000 		.4byte	.LVL63
 6055 00b9 B0000000 		.4byte	.LFE534
 6056 00bd 0400     		.2byte	0x4
 6057 00bf F3       		.byte	0xf3
 6058 00c0 01       		.uleb128 0x1
ARM GAS  /tmp/ccHBIC16.s 			page 123


 6059 00c1 51       		.byte	0x51
 6060 00c2 9F       		.byte	0x9f
 6061 00c3 00000000 		.4byte	0
 6062 00c7 00000000 		.4byte	0
 6063              	.LLST12:
 6064 00cb 00000000 		.4byte	.LVL31
 6065 00cf 12000000 		.4byte	.LVL33
 6066 00d3 0100     		.2byte	0x1
 6067 00d5 52       		.byte	0x52
 6068 00d6 12000000 		.4byte	.LVL33
 6069 00da 8C000000 		.4byte	.LVL60
 6070 00de 0100     		.2byte	0x1
 6071 00e0 5E       		.byte	0x5e
 6072 00e1 8C000000 		.4byte	.LVL60
 6073 00e5 9A000000 		.4byte	.LVL64
 6074 00e9 0100     		.2byte	0x1
 6075 00eb 52       		.byte	0x52
 6076 00ec 9A000000 		.4byte	.LVL64
 6077 00f0 B0000000 		.4byte	.LFE534
 6078 00f4 0400     		.2byte	0x4
 6079 00f6 F3       		.byte	0xf3
 6080 00f7 01       		.uleb128 0x1
 6081 00f8 52       		.byte	0x52
 6082 00f9 9F       		.byte	0x9f
 6083 00fa 00000000 		.4byte	0
 6084 00fe 00000000 		.4byte	0
 6085              	.LLST13:
 6086 0102 00000000 		.4byte	.LVL31
 6087 0106 0A000000 		.4byte	.LVL32
 6088 010a 0200     		.2byte	0x2
 6089 010c 30       		.byte	0x30
 6090 010d 9F       		.byte	0x9f
 6091 010e 0A000000 		.4byte	.LVL32
 6092 0112 28000000 		.4byte	.LVL39
 6093 0116 0100     		.2byte	0x1
 6094 0118 57       		.byte	0x57
 6095 0119 28000000 		.4byte	.LVL39
 6096 011d 4C000000 		.4byte	.LVL46
 6097 0121 0300     		.2byte	0x3
 6098 0123 77       		.byte	0x77
 6099 0124 7F       		.sleb128 -1
 6100 0125 9F       		.byte	0x9f
 6101 0126 4C000000 		.4byte	.LVL46
 6102 012a 58000000 		.4byte	.LVL48
 6103 012e 0100     		.2byte	0x1
 6104 0130 57       		.byte	0x57
 6105 0131 5C000000 		.4byte	.LVL50
 6106 0135 62000000 		.4byte	.LVL51
 6107 0139 0300     		.2byte	0x3
 6108 013b 77       		.byte	0x77
 6109 013c 7F       		.sleb128 -1
 6110 013d 9F       		.byte	0x9f
 6111 013e 62000000 		.4byte	.LVL51
 6112 0142 68000000 		.4byte	.LVL53
 6113 0146 0100     		.2byte	0x1
 6114 0148 57       		.byte	0x57
 6115 0149 68000000 		.4byte	.LVL53
ARM GAS  /tmp/ccHBIC16.s 			page 124


 6116 014d 72000000 		.4byte	.LVL55
 6117 0151 0300     		.2byte	0x3
 6118 0153 77       		.byte	0x77
 6119 0154 7F       		.sleb128 -1
 6120 0155 9F       		.byte	0x9f
 6121 0156 8C000000 		.4byte	.LVL60
 6122 015a B0000000 		.4byte	.LFE534
 6123 015e 0200     		.2byte	0x2
 6124 0160 30       		.byte	0x30
 6125 0161 9F       		.byte	0x9f
 6126 0162 00000000 		.4byte	0
 6127 0166 00000000 		.4byte	0
 6128              	.LLST14:
 6129 016a 16000000 		.4byte	.LVL34
 6130 016e 36000000 		.4byte	.LVL40
 6131 0172 0100     		.2byte	0x1
 6132 0174 52       		.byte	0x52
 6133 0175 5C000000 		.4byte	.LVL50
 6134 0179 62000000 		.4byte	.LVL51
 6135 017d 0100     		.2byte	0x1
 6136 017f 52       		.byte	0x52
 6137 0180 68000000 		.4byte	.LVL53
 6138 0184 72000000 		.4byte	.LVL55
 6139 0188 0100     		.2byte	0x1
 6140 018a 52       		.byte	0x52
 6141 018b 00000000 		.4byte	0
 6142 018f 00000000 		.4byte	0
 6143              	.LLST16:
 6144 0193 44000000 		.4byte	.LVL44
 6145 0197 50000000 		.4byte	.LVL47
 6146 019b 0100     		.2byte	0x1
 6147 019d 52       		.byte	0x52
 6148 019e 62000000 		.4byte	.LVL51
 6149 01a2 68000000 		.4byte	.LVL53
 6150 01a6 0100     		.2byte	0x1
 6151 01a8 52       		.byte	0x52
 6152 01a9 00000000 		.4byte	0
 6153 01ad 00000000 		.4byte	0
 6154              	.LLST17:
 6155 01b1 36000000 		.4byte	.LVL40
 6156 01b5 38000000 		.4byte	.LVL41
 6157 01b9 0300     		.2byte	0x3
 6158 01bb 73       		.byte	0x73
 6159 01bc 7F       		.sleb128 -1
 6160 01bd 9F       		.byte	0x9f
 6161 01be 38000000 		.4byte	.LVL41
 6162 01c2 3A000000 		.4byte	.LVL42
 6163 01c6 0100     		.2byte	0x1
 6164 01c8 53       		.byte	0x53
 6165 01c9 3A000000 		.4byte	.LVL42
 6166 01cd 42000000 		.4byte	.LVL43
 6167 01d1 0300     		.2byte	0x3
 6168 01d3 73       		.byte	0x73
 6169 01d4 7F       		.sleb128 -1
 6170 01d5 9F       		.byte	0x9f
 6171 01d6 00000000 		.4byte	0
 6172 01da 00000000 		.4byte	0
ARM GAS  /tmp/ccHBIC16.s 			page 125


 6173              	.LLST15:
 6174 01de 16000000 		.4byte	.LVL34
 6175 01e2 1C000000 		.4byte	.LVL35
 6176 01e6 0400     		.2byte	0x4
 6177 01e8 0A       		.byte	0xa
 6178 01e9 983A     		.2byte	0x3a98
 6179 01eb 9F       		.byte	0x9f
 6180 01ec 1C000000 		.4byte	.LVL35
 6181 01f0 1E000000 		.4byte	.LVL36
 6182 01f4 0300     		.2byte	0x3
 6183 01f6 73       		.byte	0x73
 6184 01f7 7F       		.sleb128 -1
 6185 01f8 9F       		.byte	0x9f
 6186 01f9 1E000000 		.4byte	.LVL36
 6187 01fd 20000000 		.4byte	.LVL37
 6188 0201 0100     		.2byte	0x1
 6189 0203 53       		.byte	0x53
 6190 0204 20000000 		.4byte	.LVL37
 6191 0208 26000000 		.4byte	.LVL38
 6192 020c 0300     		.2byte	0x3
 6193 020e 73       		.byte	0x73
 6194 020f 7F       		.sleb128 -1
 6195 0210 9F       		.byte	0x9f
 6196 0211 00000000 		.4byte	0
 6197 0215 00000000 		.4byte	0
 6198              	.LLST18:
 6199 0219 7A000000 		.4byte	.LVL56
 6200 021d 7C000000 		.4byte	.LVL57
 6201 0221 0300     		.2byte	0x3
 6202 0223 73       		.byte	0x73
 6203 0224 7E       		.sleb128 -2
 6204 0225 9F       		.byte	0x9f
 6205 0226 7C000000 		.4byte	.LVL57
 6206 022a 7E000000 		.4byte	.LVL58
 6207 022e 0300     		.2byte	0x3
 6208 0230 73       		.byte	0x73
 6209 0231 7F       		.sleb128 -1
 6210 0232 9F       		.byte	0x9f
 6211 0233 7E000000 		.4byte	.LVL58
 6212 0237 84000000 		.4byte	.LVL59
 6213 023b 0300     		.2byte	0x3
 6214 023d 73       		.byte	0x73
 6215 023e 7E       		.sleb128 -2
 6216 023f 9F       		.byte	0x9f
 6217 0240 9A000000 		.4byte	.LVL64
 6218 0244 9C000000 		.4byte	.LVL65
 6219 0248 0300     		.2byte	0x3
 6220 024a 73       		.byte	0x73
 6221 024b 7E       		.sleb128 -2
 6222 024c 9F       		.byte	0x9f
 6223 024d 9C000000 		.4byte	.LVL65
 6224 0251 9E000000 		.4byte	.LVL66
 6225 0255 0300     		.2byte	0x3
 6226 0257 73       		.byte	0x73
 6227 0258 7F       		.sleb128 -1
 6228 0259 9F       		.byte	0x9f
 6229 025a 9E000000 		.4byte	.LVL66
ARM GAS  /tmp/ccHBIC16.s 			page 126


 6230 025e A4000000 		.4byte	.LVL67
 6231 0262 0300     		.2byte	0x3
 6232 0264 73       		.byte	0x73
 6233 0265 7E       		.sleb128 -2
 6234 0266 9F       		.byte	0x9f
 6235 0267 00000000 		.4byte	0
 6236 026b 00000000 		.4byte	0
 6237              	.LLST8:
 6238 026f 00000000 		.4byte	.LVL24
 6239 0273 16000000 		.4byte	.LVL29
 6240 0277 0100     		.2byte	0x1
 6241 0279 50       		.byte	0x50
 6242 027a 16000000 		.4byte	.LVL29
 6243 027e 24000000 		.4byte	.LFE533
 6244 0282 0400     		.2byte	0x4
 6245 0284 F3       		.byte	0xf3
 6246 0285 01       		.uleb128 0x1
 6247 0286 50       		.byte	0x50
 6248 0287 9F       		.byte	0x9f
 6249 0288 00000000 		.4byte	0
 6250 028c 00000000 		.4byte	0
 6251              	.LLST9:
 6252 0290 00000000 		.4byte	.LVL24
 6253 0294 08000000 		.4byte	.LVL25
 6254 0298 0400     		.2byte	0x4
 6255 029a 0A       		.byte	0xa
 6256 029b 983A     		.2byte	0x3a98
 6257 029d 9F       		.byte	0x9f
 6258 029e 08000000 		.4byte	.LVL25
 6259 02a2 0A000000 		.4byte	.LVL26
 6260 02a6 0300     		.2byte	0x3
 6261 02a8 73       		.byte	0x73
 6262 02a9 7E       		.sleb128 -2
 6263 02aa 9F       		.byte	0x9f
 6264 02ab 0A000000 		.4byte	.LVL26
 6265 02af 0C000000 		.4byte	.LVL27
 6266 02b3 0300     		.2byte	0x3
 6267 02b5 73       		.byte	0x73
 6268 02b6 7F       		.sleb128 -1
 6269 02b7 9F       		.byte	0x9f
 6270 02b8 0C000000 		.4byte	.LVL27
 6271 02bc 12000000 		.4byte	.LVL28
 6272 02c0 0300     		.2byte	0x3
 6273 02c2 73       		.byte	0x73
 6274 02c3 7E       		.sleb128 -2
 6275 02c4 9F       		.byte	0x9f
 6276 02c5 00000000 		.4byte	0
 6277 02c9 00000000 		.4byte	0
 6278              	.LLST7:
 6279 02cd 00000000 		.4byte	.LVL21
 6280 02d1 04000000 		.4byte	.LVL22
 6281 02d5 0100     		.2byte	0x1
 6282 02d7 50       		.byte	0x50
 6283 02d8 04000000 		.4byte	.LVL22
 6284 02dc 08000000 		.4byte	.LFE532
 6285 02e0 0400     		.2byte	0x4
 6286 02e2 F3       		.byte	0xf3
ARM GAS  /tmp/ccHBIC16.s 			page 127


 6287 02e3 01       		.uleb128 0x1
 6288 02e4 50       		.byte	0x50
 6289 02e5 9F       		.byte	0x9f
 6290 02e6 00000000 		.4byte	0
 6291 02ea 00000000 		.4byte	0
 6292              	.LLST3:
 6293 02ee 00000000 		.4byte	.LVL10
 6294 02f2 0A000000 		.4byte	.LVL11
 6295 02f6 0100     		.2byte	0x1
 6296 02f8 50       		.byte	0x50
 6297 02f9 0A000000 		.4byte	.LVL11
 6298 02fd 40000000 		.4byte	.LVL20
 6299 0301 0100     		.2byte	0x1
 6300 0303 54       		.byte	0x54
 6301 0304 40000000 		.4byte	.LVL20
 6302 0308 48000000 		.4byte	.LFE531
 6303 030c 0400     		.2byte	0x4
 6304 030e F3       		.byte	0xf3
 6305 030f 01       		.uleb128 0x1
 6306 0310 50       		.byte	0x50
 6307 0311 9F       		.byte	0x9f
 6308 0312 00000000 		.4byte	0
 6309 0316 00000000 		.4byte	0
 6310              	.LLST4:
 6311 031a 18000000 		.4byte	.LVL13
 6312 031e 1C000000 		.4byte	.LVL14
 6313 0322 0100     		.2byte	0x1
 6314 0324 50       		.byte	0x50
 6315 0325 00000000 		.4byte	0
 6316 0329 00000000 		.4byte	0
 6317              	.LLST5:
 6318 032d 00000000 		.4byte	.LVL10
 6319 0331 0E000000 		.4byte	.LVL12
 6320 0335 0600     		.2byte	0x6
 6321 0337 0C       		.byte	0xc
 6322 0338 00800040 		.4byte	0x40008000
 6323 033c 9F       		.byte	0x9f
 6324 033d 00000000 		.4byte	0
 6325 0341 00000000 		.4byte	0
 6326              	.LLST6:
 6327 0345 3C000000 		.4byte	.LVL18
 6328 0349 3E000000 		.4byte	.LVL19
 6329 034d 0600     		.2byte	0x6
 6330 034f 0C       		.byte	0xc
 6331 0350 00800040 		.4byte	0x40008000
 6332 0354 9F       		.byte	0x9f
 6333 0355 00000000 		.4byte	0
 6334 0359 00000000 		.4byte	0
 6335              	.LLST0:
 6336 035d 00000000 		.4byte	.LVL0
 6337 0361 10000000 		.4byte	.LVL2
 6338 0365 0100     		.2byte	0x1
 6339 0367 50       		.byte	0x50
 6340 0368 10000000 		.4byte	.LVL2
 6341 036c 6C000000 		.4byte	.LFE530
 6342 0370 0100     		.2byte	0x1
 6343 0372 54       		.byte	0x54
ARM GAS  /tmp/ccHBIC16.s 			page 128


 6344 0373 00000000 		.4byte	0
 6345 0377 00000000 		.4byte	0
 6346              	.LLST1:
 6347 037b 00000000 		.4byte	.LVL0
 6348 037f 14000000 		.4byte	.LVL3
 6349 0383 0100     		.2byte	0x1
 6350 0385 51       		.byte	0x51
 6351 0386 14000000 		.4byte	.LVL3
 6352 038a 6C000000 		.4byte	.LFE530
 6353 038e 0100     		.2byte	0x1
 6354 0390 56       		.byte	0x56
 6355 0391 00000000 		.4byte	0
 6356 0395 00000000 		.4byte	0
 6357              	.LLST2:
 6358 0399 0E000000 		.4byte	.LVL1
 6359 039d 10000000 		.4byte	.LVL2
 6360 03a1 0200     		.2byte	0x2
 6361 03a3 70       		.byte	0x70
 6362 03a4 00       		.sleb128 0
 6363 03a5 10000000 		.4byte	.LVL2
 6364 03a9 19000000 		.4byte	.LVL4-1
 6365 03ad 0200     		.2byte	0x2
 6366 03af 74       		.byte	0x74
 6367 03b0 00       		.sleb128 0
 6368 03b1 00000000 		.4byte	0
 6369 03b5 00000000 		.4byte	0
 6370              		.section	.debug_aranges,"",%progbits
 6371 0000 3C000000 		.4byte	0x3c
 6372 0004 0200     		.2byte	0x2
 6373 0006 00000000 		.4byte	.Ldebug_info0
 6374 000a 04       		.byte	0x4
 6375 000b 00       		.byte	0
 6376 000c 0000     		.2byte	0
 6377 000e 0000     		.2byte	0
 6378 0010 00000000 		.4byte	.LFB530
 6379 0014 6C000000 		.4byte	.LFE530-.LFB530
 6380 0018 00000000 		.4byte	.LFB531
 6381 001c 48000000 		.4byte	.LFE531-.LFB531
 6382 0020 00000000 		.4byte	.LFB532
 6383 0024 08000000 		.4byte	.LFE532-.LFB532
 6384 0028 00000000 		.4byte	.LFB533
 6385 002c 24000000 		.4byte	.LFE533-.LFB533
 6386 0030 00000000 		.4byte	.LFB534
 6387 0034 B0000000 		.4byte	.LFE534-.LFB534
 6388 0038 00000000 		.4byte	0
 6389 003c 00000000 		.4byte	0
 6390              		.section	.debug_ranges,"",%progbits
 6391              	.Ldebug_ranges0:
 6392 0000 02000000 		.4byte	.LBB34
 6393 0004 04000000 		.4byte	.LBE34
 6394 0008 0E000000 		.4byte	.LBB37
 6395 000c 1A000000 		.4byte	.LBE37
 6396 0010 00000000 		.4byte	0
 6397 0014 00000000 		.4byte	0
 6398 0018 02000000 		.4byte	.LBB38
 6399 001c 04000000 		.4byte	.LBE38
 6400 0020 08000000 		.4byte	.LBB42
ARM GAS  /tmp/ccHBIC16.s 			page 129


 6401 0024 0A000000 		.4byte	.LBE42
 6402 0028 0C000000 		.4byte	.LBB43
 6403 002c 0E000000 		.4byte	.LBE43
 6404 0030 00000000 		.4byte	0
 6405 0034 00000000 		.4byte	0
 6406 0038 26000000 		.4byte	.LBB44
 6407 003c 2A000000 		.4byte	.LBE44
 6408 0040 3C000000 		.4byte	.LBB47
 6409 0044 48000000 		.4byte	.LBE47
 6410 0048 00000000 		.4byte	0
 6411 004c 00000000 		.4byte	0
 6412 0050 04000000 		.4byte	.LBB50
 6413 0054 08000000 		.4byte	.LBE50
 6414 0058 0C000000 		.4byte	.LBB53
 6415 005c 12000000 		.4byte	.LBE53
 6416 0060 00000000 		.4byte	0
 6417 0064 00000000 		.4byte	0
 6418 0068 00000000 		.4byte	.LBB54
 6419 006c 04000000 		.4byte	.LBE54
 6420 0070 08000000 		.4byte	.LBB85
 6421 0074 62000000 		.4byte	.LBE85
 6422 0078 68000000 		.4byte	.LBB86
 6423 007c 76000000 		.4byte	.LBE86
 6424 0080 92000000 		.4byte	.LBB98
 6425 0084 96000000 		.4byte	.LBE98
 6426 0088 00000000 		.4byte	0
 6427 008c 00000000 		.4byte	0
 6428 0090 0A000000 		.4byte	.LBB55
 6429 0094 44000000 		.4byte	.LBE55
 6430 0098 46000000 		.4byte	.LBB82
 6431 009c 4C000000 		.4byte	.LBE82
 6432 00a0 4E000000 		.4byte	.LBB83
 6433 00a4 62000000 		.4byte	.LBE83
 6434 00a8 68000000 		.4byte	.LBB84
 6435 00ac 72000000 		.4byte	.LBE84
 6436 00b0 00000000 		.4byte	0
 6437 00b4 00000000 		.4byte	0
 6438 00b8 0A000000 		.4byte	.LBB56
 6439 00bc 0C000000 		.4byte	.LBE56
 6440 00c0 1C000000 		.4byte	.LBB75
 6441 00c4 26000000 		.4byte	.LBE75
 6442 00c8 00000000 		.4byte	0
 6443 00cc 00000000 		.4byte	0
 6444 00d0 0A000000 		.4byte	.LBB58
 6445 00d4 0C000000 		.4byte	.LBE58
 6446 00d8 20000000 		.4byte	.LBB61
 6447 00dc 26000000 		.4byte	.LBE61
 6448 00e0 00000000 		.4byte	0
 6449 00e4 00000000 		.4byte	0
 6450 00e8 0C000000 		.4byte	.LBB64
 6451 00ec 10000000 		.4byte	.LBE64
 6452 00f0 36000000 		.4byte	.LBB73
 6453 00f4 44000000 		.4byte	.LBE73
 6454 00f8 46000000 		.4byte	.LBB74
 6455 00fc 4C000000 		.4byte	.LBE74
 6456 0100 00000000 		.4byte	0
 6457 0104 00000000 		.4byte	0
ARM GAS  /tmp/ccHBIC16.s 			page 130


 6458 0108 0C000000 		.4byte	.LBB65
 6459 010c 10000000 		.4byte	.LBE65
 6460 0110 36000000 		.4byte	.LBB72
 6461 0114 42000000 		.4byte	.LBE72
 6462 0118 00000000 		.4byte	0
 6463 011c 00000000 		.4byte	0
 6464 0120 0C000000 		.4byte	.LBB67
 6465 0124 10000000 		.4byte	.LBE67
 6466 0128 3A000000 		.4byte	.LBB70
 6467 012c 42000000 		.4byte	.LBE70
 6468 0130 00000000 		.4byte	0
 6469 0134 00000000 		.4byte	0
 6470 0138 76000000 		.4byte	.LBB87
 6471 013c 84000000 		.4byte	.LBE87
 6472 0140 96000000 		.4byte	.LBB99
 6473 0144 A4000000 		.4byte	.LBE99
 6474 0148 00000000 		.4byte	0
 6475 014c 00000000 		.4byte	0
 6476 0150 76000000 		.4byte	.LBB89
 6477 0154 7A000000 		.4byte	.LBE89
 6478 0158 7E000000 		.4byte	.LBB94
 6479 015c 84000000 		.4byte	.LBE94
 6480 0160 96000000 		.4byte	.LBB95
 6481 0164 9A000000 		.4byte	.LBE95
 6482 0168 9E000000 		.4byte	.LBB96
 6483 016c A4000000 		.4byte	.LBE96
 6484 0170 00000000 		.4byte	0
 6485 0174 00000000 		.4byte	0
 6486 0178 00000000 		.4byte	.LFB530
 6487 017c 6C000000 		.4byte	.LFE530
 6488 0180 00000000 		.4byte	.LFB531
 6489 0184 48000000 		.4byte	.LFE531
 6490 0188 00000000 		.4byte	.LFB532
 6491 018c 08000000 		.4byte	.LFE532
 6492 0190 00000000 		.4byte	.LFB533
 6493 0194 24000000 		.4byte	.LFE533
 6494 0198 00000000 		.4byte	.LFB534
 6495 019c B0000000 		.4byte	.LFE534
 6496 01a0 00000000 		.4byte	0
 6497 01a4 00000000 		.4byte	0
 6498              		.section	.debug_line,"",%progbits
 6499              	.Ldebug_line0:
 6500 0000 91060000 		.section	.debug_str,"MS",%progbits,1
 6500      02000505 
 6500      00000201 
 6500      FB0E0D00 
 6500      01010101 
 6501              	.LASF444:
 6502 0000 74785F64 		.ascii	"tx_data\000"
 6502      61746100 
 6503              	.LASF313:
 6504 0008 70696F5F 		.ascii	"pio_type_t\000"
 6504      74797065 
 6504      5F7400
 6505              	.LASF28:
 6506 0013 5F5F696E 		.ascii	"__int_least64_t\000"
 6506      745F6C65 
ARM GAS  /tmp/ccHBIC16.s 			page 131


 6506      61737436 
 6506      345F7400 
 6507              	.LASF98:
 6508 0023 50494F5F 		.ascii	"PIO_PPDER\000"
 6508      50504445 
 6508      5200
 6509              	.LASF223:
 6510 002d 5F737464 		.ascii	"_stdout\000"
 6510      6F757400 
 6511              	.LASF409:
 6512 0035 4150494E 		.ascii	"APIN_UART0_RXD\000"
 6512      5F554152 
 6512      54305F52 
 6512      584400
 6513              	.LASF300:
 6514 0044 5F5F6664 		.ascii	"__fdlibm_xopen\000"
 6514      6C69626D 
 6514      5F786F70 
 6514      656E00
 6515              	.LASF9:
 6516 0053 5F5F7569 		.ascii	"__uint8_t\000"
 6516      6E74385F 
 6516      7400
 6517              	.LASF414:
 6518 005d 4150494E 		.ascii	"APIN_HSMCI_CLOCK\000"
 6518      5F48534D 
 6518      43495F43 
 6518      4C4F434B 
 6518      00
 6519              	.LASF261:
 6520 006e 376C6C64 		.ascii	"7lldiv_t\000"
 6520      69765F74 
 6520      00
 6521              	.LASF482:
 6522 0077 31327370 		.ascii	"12spi_status_t\000"
 6522      695F7374 
 6522      61747573 
 6522      5F7400
 6523              	.LASF196:
 6524 0086 5F6D6273 		.ascii	"_mbstate\000"
 6524      74617465 
 6524      00
 6525              	.LASF175:
 6526 008f 5F617465 		.ascii	"_atexit\000"
 6526      78697400 
 6527              	.LASF468:
 6528 0097 64696769 		.ascii	"digitalWrite\000"
 6528      74616C57 
 6528      72697465 
 6528      00
 6529              	.LASF392:
 6530 00a4 756C5065 		.ascii	"ulPeripheralId\000"
 6530      72697068 
 6530      6572616C 
 6530      496400
 6531              	.LASF80:
 6532 00b3 50494F5F 		.ascii	"PIO_IDR\000"
ARM GAS  /tmp/ccHBIC16.s 			page 132


 6532      49445200 
 6533              	.LASF95:
 6534 00bb 50494F5F 		.ascii	"PIO_IFSCSR\000"
 6534      49465343 
 6534      535200
 6535              	.LASF165:
 6536 00c6 5F5F746D 		.ascii	"__tm_mon\000"
 6536      5F6D6F6E 
 6536      00
 6537              	.LASF173:
 6538 00cf 5F666E74 		.ascii	"_fntypes\000"
 6538      79706573 
 6538      00
 6539              	.LASF225:
 6540 00d8 5F696E63 		.ascii	"_inc\000"
 6540      00
 6541              	.LASF176:
 6542 00dd 5F696E64 		.ascii	"_ind\000"
 6542      00
 6543              	.LASF96:
 6544 00e2 50494F5F 		.ascii	"PIO_SCDR\000"
 6544      53434452 
 6544      00
 6545              	.LASF54:
 6546 00eb 696E745F 		.ascii	"int_fast32_t\000"
 6546      66617374 
 6546      33325F74 
 6546      00
 6547              	.LASF448:
 6548 00f8 73737069 		.ascii	"sspi_deselect_device\000"
 6548      5F646573 
 6548      656C6563 
 6548      745F6465 
 6548      76696365 
 6549              	.LASF79:
 6550 010d 50494F5F 		.ascii	"PIO_IER\000"
 6550      49455200 
 6551              	.LASF443:
 6552 0115 636C6F63 		.ascii	"clockFrequency\000"
 6552      6B467265 
 6552      7175656E 
 6552      637900
 6553              	.LASF35:
 6554 0124 75696E74 		.ascii	"uint16_t\000"
 6554      31365F74 
 6554      00
 6555              	.LASF102:
 6556 012d 50494F5F 		.ascii	"PIO_OWDR\000"
 6556      4F574452 
 6556      00
 6557              	.LASF348:
 6558 0136 5443325F 		.ascii	"TC2_CHA6\000"
 6558      43484136 
 6558      00
 6559              	.LASF350:
 6560 013f 5443325F 		.ascii	"TC2_CHA7\000"
 6560      43484137 
ARM GAS  /tmp/ccHBIC16.s 			page 133


 6560      00
 6561              	.LASF352:
 6562 0148 5443325F 		.ascii	"TC2_CHA8\000"
 6562      43484138 
 6562      00
 6563              	.LASF182:
 6564 0151 5F666C61 		.ascii	"_flags\000"
 6564      677300
 6565              	.LASF446:
 6566 0158 644F7574 		.ascii	"dOut\000"
 6566      00
 6567              	.LASF296:
 6568 015d 666C6F61 		.ascii	"float_t\000"
 6568      745F7400 
 6569              	.LASF251:
 6570 0165 5F696D70 		.ascii	"_impure_ptr\000"
 6570      7572655F 
 6570      70747200 
 6571              	.LASF121:
 6572 0171 50494F5F 		.ascii	"PIO_SCHMITT\000"
 6572      5343484D 
 6572      49545400 
 6573              	.LASF235:
 6574 017d 5F637674 		.ascii	"_cvtlen\000"
 6574      6C656E00 
 6575              	.LASF342:
 6576 0185 5443315F 		.ascii	"TC1_CHA3\000"
 6576      43484133 
 6576      00
 6577              	.LASF289:
 6578 018e 73747274 		.ascii	"strtof\000"
 6578      6F6600
 6579              	.LASF299:
 6580 0195 5F5F6664 		.ascii	"__fdlibm_svid\000"
 6580      6C69626D 
 6580      5F737669 
 6580      6400
 6581              	.LASF239:
 6582 01a3 5F736967 		.ascii	"_sig_func\000"
 6582      5F66756E 
 6582      6300
 6583              	.LASF101:
 6584 01ad 50494F5F 		.ascii	"PIO_OWER\000"
 6584      4F574552 
 6584      00
 6585              	.LASF349:
 6586 01b6 5443325F 		.ascii	"TC2_CHB6\000"
 6586      43484236 
 6586      00
 6587              	.LASF351:
 6588 01bf 5443325F 		.ascii	"TC2_CHB7\000"
 6588      43484237 
 6588      00
 6589              	.LASF353:
 6590 01c8 5443325F 		.ascii	"TC2_CHB8\000"
 6590      43484238 
 6590      00
ARM GAS  /tmp/ccHBIC16.s 			page 134


 6591              	.LASF55:
 6592 01d1 75696E74 		.ascii	"uint_fast32_t\000"
 6592      5F666173 
 6592      7433325F 
 6592      7400
 6593              	.LASF416:
 6594 01df 4150494E 		.ascii	"APIN_GMAC_PHY_INTERRUPT\000"
 6594      5F474D41 
 6594      435F5048 
 6594      595F494E 
 6594      54455252 
 6595              	.LASF420:
 6596 01f7 50776D46 		.ascii	"PwmFastClock\000"
 6596      61737443 
 6596      6C6F636B 
 6596      00
 6597              	.LASF355:
 6598 0204 416E616C 		.ascii	"AnalogChannelNumber\000"
 6598      6F674368 
 6598      616E6E65 
 6598      6C4E756D 
 6598      62657200 
 6599              	.LASF195:
 6600 0218 5F6C6F63 		.ascii	"_lock\000"
 6600      6B00
 6601              	.LASF191:
 6602 021e 5F6E6275 		.ascii	"_nbuf\000"
 6602      6600
 6603              	.LASF220:
 6604 0224 5F756E75 		.ascii	"_unused\000"
 6604      73656400 
 6605              	.LASF336:
 6606 022c 5443305F 		.ascii	"TC0_CHA0\000"
 6606      43484130 
 6606      00
 6607              	.LASF338:
 6608 0235 5443305F 		.ascii	"TC0_CHA1\000"
 6608      43484131 
 6608      00
 6609              	.LASF340:
 6610 023e 5443305F 		.ascii	"TC0_CHA2\000"
 6610      43484132 
 6610      00
 6611              	.LASF343:
 6612 0247 5443315F 		.ascii	"TC1_CHB3\000"
 6612      43484233 
 6612      00
 6613              	.LASF345:
 6614 0250 5443315F 		.ascii	"TC1_CHB4\000"
 6614      43484234 
 6614      00
 6615              	.LASF347:
 6616 0259 5443315F 		.ascii	"TC1_CHB5\000"
 6616      43484235 
 6616      00
 6617              	.LASF132:
 6618 0262 5350495F 		.ascii	"SPI_MR\000"
ARM GAS  /tmp/ccHBIC16.s 			page 135


 6618      4D5200
 6619              	.LASF431:
 6620 0269 53504543 		.ascii	"SPECIAL\000"
 6620      49414C00 
 6621              	.LASF2:
 6622 0271 5F5F6D61 		.ascii	"__max_align_ld\000"
 6622      785F616C 
 6622      69676E5F 
 6622      6C6400
 6623              	.LASF266:
 6624 0280 61746F66 		.ascii	"atof\000"
 6624      00
 6625              	.LASF268:
 6626 0285 61746F69 		.ascii	"atoi\000"
 6626      00
 6627              	.LASF1:
 6628 028a 5F5F6D61 		.ascii	"__max_align_ll\000"
 6628      785F616C 
 6628      69676E5F 
 6628      6C6C00
 6629              	.LASF269:
 6630 0299 61746F6C 		.ascii	"atol\000"
 6630      00
 6631              	.LASF430:
 6632 029e 4F555450 		.ascii	"OUTPUT_HIGH\000"
 6632      55545F48 
 6632      49474800 
 6633              	.LASF457:
 6634 02aa 77616974 		.ascii	"waitForTxEmpty\000"
 6634      466F7254 
 6634      78456D70 
 6634      747900
 6635              	.LASF228:
 6636 02b9 5F637572 		.ascii	"_current_locale\000"
 6636      72656E74 
 6636      5F6C6F63 
 6636      616C6500 
 6637              	.LASF337:
 6638 02c9 5443305F 		.ascii	"TC0_CHB0\000"
 6638      43484230 
 6638      00
 6639              	.LASF339:
 6640 02d2 5443305F 		.ascii	"TC0_CHB1\000"
 6640      43484231 
 6640      00
 6641              	.LASF341:
 6642 02db 5443305F 		.ascii	"TC0_CHB2\000"
 6642      43484232 
 6642      00
 6643              	.LASF461:
 6644 02e4 64774D6F 		.ascii	"dwMode\000"
 6644      646500
 6645              	.LASF36:
 6646 02eb 696E7433 		.ascii	"int32_t\000"
 6646      325F7400 
 6647              	.LASF58:
 6648 02f3 696E746D 		.ascii	"intmax_t\000"
ARM GAS  /tmp/ccHBIC16.s 			page 136


 6648      61785F74 
 6648      00
 6649              	.LASF321:
 6650 02fc 7370695F 		.ascii	"spi_status_t\000"
 6650      73746174 
 6650      75735F74 
 6650      00
 6651              	.LASF250:
 6652 0309 5F616464 		.ascii	"_add\000"
 6652      00
 6653              	.LASF59:
 6654 030e 75696E74 		.ascii	"uintmax_t\000"
 6654      6D61785F 
 6654      7400
 6655              	.LASF319:
 6656 0318 5350495F 		.ascii	"SPI_ERROR_MODE_FAULT\000"
 6656      4552524F 
 6656      525F4D4F 
 6656      44455F46 
 6656      41554C54 
 6657              	.LASF315:
 6658 032d 5350495F 		.ascii	"SPI_OK\000"
 6658      4F4B00
 6659              	.LASF475:
 6660 0334 31316D61 		.ascii	"11max_align_t\000"
 6660      785F616C 
 6660      69676E5F 
 6660      7400
 6661              	.LASF27:
 6662 0342 5F5F7569 		.ascii	"__uint_least32_t\000"
 6662      6E745F6C 
 6662      65617374 
 6662      33325F74 
 6662      00
 6663              	.LASF184:
 6664 0353 5F6C6266 		.ascii	"_lbfsize\000"
 6664      73697A65 
 6664      00
 6665              	.LASF259:
 6666 035c 366C6469 		.ascii	"6ldiv_t\000"
 6666      765F7400 
 6667              	.LASF130:
 6668 0364 50494F5F 		.ascii	"PIO_PCRHR\000"
 6668      50435248 
 6668      5200
 6669              	.LASF48:
 6670 036e 696E745F 		.ascii	"int_least64_t\000"
 6670      6C656173 
 6670      7436345F 
 6670      7400
 6671              	.LASF284:
 6672 037c 7763746F 		.ascii	"wctomb\000"
 6672      6D6200
 6673              	.LASF425:
 6674 0383 50494E5F 		.ascii	"PIN_MODE_NOT_CONFIGURED\000"
 6674      4D4F4445 
 6674      5F4E4F54 
ARM GAS  /tmp/ccHBIC16.s 			page 137


 6674      5F434F4E 
 6674      46494755 
 6675              	.LASF194:
 6676 039b 5F646174 		.ascii	"_data\000"
 6676      6100
 6677              	.LASF294:
 6678 03a1 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 6678      6972715F 
 6678      63726974 
 6678      6963616C 
 6678      5F736563 
 6679              	.LASF390:
 6680 03c2 70506F72 		.ascii	"pPort\000"
 6680      7400
 6681              	.LASF406:
 6682 03c8 5F646179 		.ascii	"_daylight\000"
 6682      6C696768 
 6682      7400
 6683              	.LASF198:
 6684 03d2 5F726565 		.ascii	"_reent\000"
 6684      6E7400
 6685              	.LASF389:
 6686 03d9 50696E44 		.ascii	"PinDescription\000"
 6686      65736372 
 6686      69707469 
 6686      6F6E00
 6687              	.LASF415:
 6688 03e8 4150494E 		.ascii	"APIN_HSMCI_DATA\000"
 6688      5F48534D 
 6688      43495F44 
 6688      41544100 
 6689              	.LASF241:
 6690 03f8 5F5F7366 		.ascii	"__sf\000"
 6690      00
 6691              	.LASF42:
 6692 03fd 696E745F 		.ascii	"int_least8_t\000"
 6692      6C656173 
 6692      74385F74 
 6692      00
 6693              	.LASF207:
 6694 040a 5F6D6274 		.ascii	"_mbtowc_state\000"
 6694      6F77635F 
 6694      73746174 
 6694      6500
 6695              	.LASF456:
 6696 0418 77616974 		.ascii	"waitForRxReady\000"
 6696      466F7252 
 6696      78526561 
 6696      647900
 6697              	.LASF254:
 6698 0427 5F5F676E 		.ascii	"__gnu_cxx\000"
 6698      755F6378 
 6698      7800
 6699              	.LASF452:
 6700 0431 62617564 		.ascii	"baud_div\000"
 6700      5F646976 
 6700      00
ARM GAS  /tmp/ccHBIC16.s 			page 138


 6701              	.LASF424:
 6702 043a 50696E4D 		.ascii	"PinMode\000"
 6702      6F646500 
 6703              	.LASF160:
 6704 0442 5F5F746D 		.ascii	"__tm\000"
 6704      00
 6705              	.LASF393:
 6706 0447 756C5069 		.ascii	"ulPinType\000"
 6706      6E547970 
 6706      6500
 6707              	.LASF112:
 6708 0451 52657365 		.ascii	"Reserved10\000"
 6708      72766564 
 6708      313000
 6709              	.LASF116:
 6710 045c 52657365 		.ascii	"Reserved11\000"
 6710      72766564 
 6710      313100
 6711              	.LASF120:
 6712 0467 52657365 		.ascii	"Reserved12\000"
 6712      72766564 
 6712      313200
 6713              	.LASF122:
 6714 0472 52657365 		.ascii	"Reserved13\000"
 6714      72766564 
 6714      313300
 6715              	.LASF81:
 6716 047d 50494F5F 		.ascii	"PIO_IMR\000"
 6716      494D5200 
 6717              	.LASF135:
 6718 0485 5350495F 		.ascii	"SPI_SR\000"
 6718      535200
 6719              	.LASF285:
 6720 048c 6C6C6469 		.ascii	"lldiv\000"
 6720      7600
 6721              	.LASF168:
 6722 0492 5F5F746D 		.ascii	"__tm_yday\000"
 6722      5F796461 
 6722      7900
 6723              	.LASF11:
 6724 049c 5F5F696E 		.ascii	"__int16_t\000"
 6724      7431365F 
 6724      7400
 6725              	.LASF13:
 6726 04a6 5F5F7569 		.ascii	"__uint16_t\000"
 6726      6E743136 
 6726      5F7400
 6727              	.LASF485:
 6728 04b1 73737069 		.ascii	"sspi_transceive_packet\000"
 6728      5F747261 
 6728      6E736365 
 6728      6976655F 
 6728      7061636B 
 6729              	.LASF199:
 6730 04c8 5F756E75 		.ascii	"_unused_rand\000"
 6730      7365645F 
 6730      72616E64 
ARM GAS  /tmp/ccHBIC16.s 			page 139


 6730      00
 6731              	.LASF318:
 6732 04d5 5350495F 		.ascii	"SPI_ERROR_OVERRUN\000"
 6732      4552524F 
 6732      525F4F56 
 6732      45525255 
 6732      4E00
 6733              	.LASF410:
 6734 04e7 4150494E 		.ascii	"APIN_UART0_TXD\000"
 6734      5F554152 
 6734      54305F54 
 6734      584400
 6735              	.LASF75:
 6736 04f6 50494F5F 		.ascii	"PIO_SODR\000"
 6736      534F4452 
 6736      00
 6737              	.LASF30:
 6738 04ff 5F5F696E 		.ascii	"__intptr_t\000"
 6738      74707472 
 6738      5F7400
 6739              	.LASF297:
 6740 050a 646F7562 		.ascii	"double_t\000"
 6740      6C655F74 
 6740      00
 6741              	.LASF396:
 6742 0513 756C4144 		.ascii	"ulADCChannelNumber\000"
 6742      43436861 
 6742      6E6E656C 
 6742      4E756D62 
 6742      657200
 6743              	.LASF232:
 6744 0526 5F726573 		.ascii	"_result_k\000"
 6744      756C745F 
 6744      6B00
 6745              	.LASF224:
 6746 0530 5F737464 		.ascii	"_stderr\000"
 6746      65727200 
 6747              	.LASF231:
 6748 0538 5F726573 		.ascii	"_result\000"
 6748      756C7400 
 6749              	.LASF126:
 6750 0540 50494F5F 		.ascii	"PIO_PCIER\000"
 6750      50434945 
 6750      5200
 6751              	.LASF123:
 6752 054a 50494F5F 		.ascii	"PIO_DRIVER\000"
 6752      44524956 
 6752      455200
 6753              	.LASF172:
 6754 0555 5F64736F 		.ascii	"_dso_handle\000"
 6754      5F68616E 
 6754      646C6500 
 6755              	.LASF167:
 6756 0561 5F5F746D 		.ascii	"__tm_wday\000"
 6756      5F776461 
 6756      7900
 6757              	.LASF317:
ARM GAS  /tmp/ccHBIC16.s 			page 140


 6758 056b 5350495F 		.ascii	"SPI_ERROR_ARGUMENT\000"
 6758      4552524F 
 6758      525F4152 
 6758      47554D45 
 6758      4E5400
 6759              	.LASF169:
 6760 057e 5F5F746D 		.ascii	"__tm_isdst\000"
 6760      5F697364 
 6760      737400
 6761              	.LASF478:
 6762 0589 5F5A5374 		.ascii	"_ZSt3absx\000"
 6762      33616273 
 6762      7800
 6763              	.LASF302:
 6764 0593 5F5F6664 		.ascii	"__fdlib_version\000"
 6764      6C69625F 
 6764      76657273 
 6764      696F6E00 
 6765              	.LASF487:
 6766 05a3 436F6E66 		.ascii	"ConfigurePin\000"
 6766      69677572 
 6766      6550696E 
 6766      00
 6767              	.LASF10:
 6768 05b0 756E7369 		.ascii	"unsigned char\000"
 6768      676E6564 
 6768      20636861 
 6768      7200
 6769              	.LASF99:
 6770 05be 50494F5F 		.ascii	"PIO_PPDSR\000"
 6770      50504453 
 6770      5200
 6771              	.LASF139:
 6772 05c8 5350495F 		.ascii	"SPI_CSR\000"
 6772      43535200 
 6773              	.LASF401:
 6774 05d0 5F637479 		.ascii	"_ctype_\000"
 6774      70655F00 
 6775              	.LASF214:
 6776 05d8 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 6776      72746F77 
 6776      63735F73 
 6776      74617465 
 6776      00
 6777              	.LASF158:
 6778 05e9 5F776473 		.ascii	"_wds\000"
 6778      00
 6779              	.LASF290:
 6780 05ee 666C6F61 		.ascii	"float\000"
 6780      7400
 6781              	.LASF180:
 6782 05f4 5F73697A 		.ascii	"_size\000"
 6782      6500
 6783              	.LASF84:
 6784 05fa 50494F5F 		.ascii	"PIO_MDDR\000"
 6784      4D444452 
 6784      00
ARM GAS  /tmp/ccHBIC16.s 			page 141


 6785              	.LASF47:
 6786 0603 75696E74 		.ascii	"uint_least32_t\000"
 6786      5F6C6561 
 6786      73743332 
 6786      5F7400
 6787              	.LASF466:
 6788 0612 7370695F 		.ascii	"spi_enable\000"
 6788      656E6162 
 6788      6C6500
 6789              	.LASF417:
 6790 061d 4150494E 		.ascii	"APIN_GMAC_PHY_RESET\000"
 6790      5F474D41 
 6790      435F5048 
 6790      595F5245 
 6790      53455400 
 6791              	.LASF187:
 6792 0631 5F777269 		.ascii	"_write\000"
 6792      746500
 6793              	.LASF458:
 6794 0638 74696D65 		.ascii	"timeout\000"
 6794      6F757400 
 6795              	.LASF83:
 6796 0640 50494F5F 		.ascii	"PIO_MDER\000"
 6796      4D444552 
 6796      00
 6797              	.LASF334:
 6798 0649 5F455443 		.ascii	"_ETCChannel\000"
 6798      4368616E 
 6798      6E656C00 
 6799              	.LASF310:
 6800 0655 50494F5F 		.ascii	"PIO_INPUT\000"
 6800      494E5055 
 6800      5400
 6801              	.LASF39:
 6802 065f 75696E74 		.ascii	"uint64_t\000"
 6802      36345F74 
 6802      00
 6803              	.LASF82:
 6804 0668 50494F5F 		.ascii	"PIO_ISR\000"
 6804      49535200 
 6805              	.LASF358:
 6806 0670 41444331 		.ascii	"ADC1\000"
 6806      00
 6807              	.LASF359:
 6808 0675 41444332 		.ascii	"ADC2\000"
 6808      00
 6809              	.LASF360:
 6810 067a 41444333 		.ascii	"ADC3\000"
 6810      00
 6811              	.LASF361:
 6812 067f 41444334 		.ascii	"ADC4\000"
 6812      00
 6813              	.LASF362:
 6814 0684 41444335 		.ascii	"ADC5\000"
 6814      00
 6815              	.LASF363:
 6816 0689 41444336 		.ascii	"ADC6\000"
ARM GAS  /tmp/ccHBIC16.s 			page 142


 6816      00
 6817              	.LASF364:
 6818 068e 41444337 		.ascii	"ADC7\000"
 6818      00
 6819              	.LASF365:
 6820 0693 41444338 		.ascii	"ADC8\000"
 6820      00
 6821              	.LASF366:
 6822 0698 41444339 		.ascii	"ADC9\000"
 6822      00
 6823              	.LASF166:
 6824 069d 5F5F746D 		.ascii	"__tm_year\000"
 6824      5F796561 
 6824      7200
 6825              	.LASF471:
 6826 06a7 706D635F 		.ascii	"pmc_enable_periph_clk\000"
 6826      656E6162 
 6826      6C655F70 
 6826      65726970 
 6826      685F636C 
 6827              	.LASF291:
 6828 06bd 73747274 		.ascii	"strtold\000"
 6828      6F6C6400 
 6829              	.LASF249:
 6830 06c5 5F6D756C 		.ascii	"_mult\000"
 6830      7400
 6831              	.LASF287:
 6832 06cb 73747274 		.ascii	"strtoll\000"
 6832      6F6C6C00 
 6833              	.LASF427:
 6834 06d3 494E5055 		.ascii	"INPUT_PULLUP\000"
 6834      545F5055 
 6834      4C4C5550 
 6834      00
 6835              	.LASF253:
 6836 06e0 6D6F6466 		.ascii	"modf\000"
 6836      00
 6837              	.LASF265:
 6838 06e5 61746578 		.ascii	"atexit\000"
 6838      697400
 6839              	.LASF103:
 6840 06ec 50494F5F 		.ascii	"PIO_OWSR\000"
 6840      4F575352 
 6840      00
 6841              	.LASF322:
 6842 06f5 4E6F5069 		.ascii	"NoPin\000"
 6842      6E00
 6843              	.LASF367:
 6844 06fb 41444331 		.ascii	"ADC10\000"
 6844      3000
 6845              	.LASF368:
 6846 0701 41444331 		.ascii	"ADC11\000"
 6846      3100
 6847              	.LASF369:
 6848 0707 41444331 		.ascii	"ADC12\000"
 6848      3200
 6849              	.LASF370:
ARM GAS  /tmp/ccHBIC16.s 			page 143


 6850 070d 41444331 		.ascii	"ADC13\000"
 6850      3300
 6851              	.LASF371:
 6852 0713 41444331 		.ascii	"ADC14\000"
 6852      3400
 6853              	.LASF372:
 6854 0719 41444331 		.ascii	"ADC15\000"
 6854      3500
 6855              	.LASF373:
 6856 071f 41444331 		.ascii	"ADC16\000"
 6856      3600
 6857              	.LASF22:
 6858 0725 5F5F696E 		.ascii	"__int_least8_t\000"
 6858      745F6C65 
 6858      61737438 
 6858      5F7400
 6859              	.LASF375:
 6860 0734 41444331 		.ascii	"ADC18\000"
 6860      3800
 6861              	.LASF376:
 6862 073a 41444331 		.ascii	"ADC19\000"
 6862      3900
 6863              	.LASF117:
 6864 0740 50494F5F 		.ascii	"PIO_LOCKSR\000"
 6864      4C4F434B 
 6864      535200
 6865              	.LASF222:
 6866 074b 5F737464 		.ascii	"_stdin\000"
 6866      696E00
 6867              	.LASF219:
 6868 0752 5F6E6D61 		.ascii	"_nmalloc\000"
 6868      6C6C6F63 
 6868      00
 6869              	.LASF292:
 6870 075b 675F696E 		.ascii	"g_interrupt_enabled\000"
 6870      74657272 
 6870      7570745F 
 6870      656E6162 
 6870      6C656400 
 6871              	.LASF377:
 6872 076f 41444332 		.ascii	"ADC20\000"
 6872      3000
 6873              	.LASF378:
 6874 0775 41444332 		.ascii	"ADC21\000"
 6874      3100
 6875              	.LASF379:
 6876 077b 41444332 		.ascii	"ADC22\000"
 6876      3200
 6877              	.LASF380:
 6878 0781 41444332 		.ascii	"ADC23\000"
 6878      3300
 6879              	.LASF381:
 6880 0787 41444332 		.ascii	"ADC24\000"
 6880      3400
 6881              	.LASF382:
 6882 078d 41444332 		.ascii	"ADC25\000"
 6882      3500
ARM GAS  /tmp/ccHBIC16.s 			page 144


 6883              	.LASF383:
 6884 0793 41444332 		.ascii	"ADC26\000"
 6884      3600
 6885              	.LASF384:
 6886 0799 41444332 		.ascii	"ADC27\000"
 6886      3700
 6887              	.LASF385:
 6888 079f 41444332 		.ascii	"ADC28\000"
 6888      3800
 6889              	.LASF386:
 6890 07a5 41444332 		.ascii	"ADC29\000"
 6890      3900
 6891              	.LASF477:
 6892 07ab 3350696F 		.ascii	"3Pio\000"
 6892      00
 6893              	.LASF412:
 6894 07b0 4150494E 		.ascii	"APIN_UART1_RXD\000"
 6894      5F554152 
 6894      54315F52 
 6894      584400
 6895              	.LASF387:
 6896 07bf 41444333 		.ascii	"ADC30\000"
 6896      3000
 6897              	.LASF388:
 6898 07c5 41444333 		.ascii	"ADC31\000"
 6898      3100
 6899              	.LASF143:
 6900 07cb 5F6F6666 		.ascii	"_off_t\000"
 6900      5F7400
 6901              	.LASF421:
 6902 07d2 50776D53 		.ascii	"PwmSlowClock\000"
 6902      6C6F7743 
 6902      6C6F636B 
 6902      00
 6903              	.LASF5:
 6904 07df 73697A65 		.ascii	"size_t\000"
 6904      5F7400
 6905              	.LASF202:
 6906 07e6 5F6C6F63 		.ascii	"_localtime_buf\000"
 6906      616C7469 
 6906      6D655F62 
 6906      756600
 6907              	.LASF87:
 6908 07f5 50494F5F 		.ascii	"PIO_PUDR\000"
 6908      50554452 
 6908      00
 6909              	.LASF150:
 6910 07fe 5F5F636F 		.ascii	"__count\000"
 6910      756E7400 
 6911              	.LASF33:
 6912 0806 75696E74 		.ascii	"uint8_t\000"
 6912      385F7400 
 6913              	.LASF257:
 6914 080e 71756F74 		.ascii	"quot\000"
 6914      00
 6915              	.LASF128:
 6916 0813 50494F5F 		.ascii	"PIO_PCIMR\000"
ARM GAS  /tmp/ccHBIC16.s 			page 145


 6916      5043494D 
 6916      5200
 6917              	.LASF323:
 6918 081d 5F455057 		.ascii	"_EPWMChannel\000"
 6918      4D436861 
 6918      6E6E656C 
 6918      00
 6919              	.LASF465:
 6920 082a 7370695F 		.ascii	"spi_is_tx_empty\000"
 6920      69735F74 
 6920      785F656D 
 6920      70747900 
 6921              	.LASF335:
 6922 083a 4E4F545F 		.ascii	"NOT_ON_TIMER\000"
 6922      4F4E5F54 
 6922      494D4552 
 6922      00
 6923              	.LASF26:
 6924 0847 5F5F696E 		.ascii	"__int_least32_t\000"
 6924      745F6C65 
 6924      61737433 
 6924      325F7400 
 6925              	.LASF88:
 6926 0857 50494F5F 		.ascii	"PIO_PUER\000"
 6926      50554552 
 6926      00
 6927              	.LASF236:
 6928 0860 5F637674 		.ascii	"_cvtbuf\000"
 6928      62756600 
 6929              	.LASF429:
 6930 0868 4F555450 		.ascii	"OUTPUT_LOW\000"
 6930      55545F4C 
 6930      4F5700
 6931              	.LASF441:
 6932 0873 62697473 		.ascii	"bitsPerTransferControl\000"
 6932      50657254 
 6932      72616E73 
 6932      66657243 
 6932      6F6E7472 
 6933              	.LASF403:
 6934 088a 5072696E 		.ascii	"Print\000"
 6934      7400
 6935              	.LASF149:
 6936 0890 5F5F7763 		.ascii	"__wchb\000"
 6936      686200
 6937              	.LASF213:
 6938 0897 5F6D6272 		.ascii	"_mbrtowc_state\000"
 6938      746F7763 
 6938      5F737461 
 6938      746500
 6939              	.LASF163:
 6940 08a6 5F5F746D 		.ascii	"__tm_hour\000"
 6940      5F686F75 
 6940      7200
 6941              	.LASF118:
 6942 08b0 50494F5F 		.ascii	"PIO_WPMR\000"
 6942      57504D52 
ARM GAS  /tmp/ccHBIC16.s 			page 146


 6942      00
 6943              	.LASF262:
 6944 08b9 6C6C6469 		.ascii	"lldiv_t\000"
 6944      765F7400 
 6945              	.LASF145:
 6946 08c1 77696E74 		.ascii	"wint_t\000"
 6946      5F7400
 6947              	.LASF273:
 6948 08c8 6D626C65 		.ascii	"mblen\000"
 6948      6E00
 6949              	.LASF237:
 6950 08ce 5F6E6577 		.ascii	"_new\000"
 6950      00
 6951              	.LASF402:
 6952 08d3 53455249 		.ascii	"SERIAL_BUFFER_SIZE\000"
 6952      414C5F42 
 6952      55464645 
 6952      525F5349 
 6952      5A4500
 6953              	.LASF467:
 6954 08e6 7370695F 		.ascii	"spi_reset\000"
 6954      72657365 
 6954      7400
 6955              	.LASF245:
 6956 08f0 5F6E696F 		.ascii	"_niobs\000"
 6956      627300
 6957              	.LASF221:
 6958 08f7 5F657272 		.ascii	"_errno\000"
 6958      6E6F00
 6959              	.LASF164:
 6960 08fe 5F5F746D 		.ascii	"__tm_mday\000"
 6960      5F6D6461 
 6960      7900
 6961              	.LASF171:
 6962 0908 5F666E61 		.ascii	"_fnargs\000"
 6962      72677300 
 6963              	.LASF91:
 6964 0910 50494F5F 		.ascii	"PIO_ABCDSR\000"
 6964      41424344 
 6964      535200
 6965              	.LASF147:
 6966 091b 31305F6D 		.ascii	"10_mbstate_t\000"
 6966      62737461 
 6966      74655F74 
 6966      00
 6967              	.LASF111:
 6968 0928 50494F5F 		.ascii	"PIO_ELSR\000"
 6968      454C5352 
 6968      00
 6969              	.LASF19:
 6970 0931 5F5F696E 		.ascii	"__int64_t\000"
 6970      7436345F 
 6970      7400
 6971              	.LASF20:
 6972 093b 5F5F7569 		.ascii	"__uint64_t\000"
 6972      6E743634 
 6972      5F7400
ARM GAS  /tmp/ccHBIC16.s 			page 147


 6973              	.LASF155:
 6974 0946 5F6E6578 		.ascii	"_next\000"
 6974      7400
 6975              	.LASF210:
 6976 094c 5F736967 		.ascii	"_signal_buf\000"
 6976      6E616C5F 
 6976      62756600 
 6977              	.LASF453:
 6978 0958 73737069 		.ascii	"sspi_master_init\000"
 6978      5F6D6173 
 6978      7465725F 
 6978      696E6974 
 6978      00
 6979              	.LASF438:
 6980 0969 73737069 		.ascii	"sspi_device\000"
 6980      5F646576 
 6980      69636500 
 6981              	.LASF185:
 6982 0975 5F636F6F 		.ascii	"_cookie\000"
 6982      6B696500 
 6983              	.LASF407:
 6984 097d 5F747A6E 		.ascii	"_tzname\000"
 6984      616D6500 
 6985              	.LASF49:
 6986 0985 75696E74 		.ascii	"uint_least64_t\000"
 6986      5F6C6561 
 6986      73743634 
 6986      5F7400
 6987              	.LASF325:
 6988 0994 50574D5F 		.ascii	"PWM_CH0\000"
 6988      43483000 
 6989              	.LASF326:
 6990 099c 50574D5F 		.ascii	"PWM_CH1\000"
 6990      43483100 
 6991              	.LASF327:
 6992 09a4 50574D5F 		.ascii	"PWM_CH2\000"
 6992      43483200 
 6993              	.LASF328:
 6994 09ac 50574D5F 		.ascii	"PWM_CH3\000"
 6994      43483300 
 6995              	.LASF329:
 6996 09b4 50574D5F 		.ascii	"PWM_CH4\000"
 6996      43483400 
 6997              	.LASF330:
 6998 09bc 50574D5F 		.ascii	"PWM_CH5\000"
 6998      43483500 
 6999              	.LASF331:
 7000 09c4 50574D5F 		.ascii	"PWM_CH6\000"
 7000      43483600 
 7001              	.LASF332:
 7002 09cc 50574D5F 		.ascii	"PWM_CH7\000"
 7002      43483700 
 7003              	.LASF476:
 7004 09d4 6465636C 		.ascii	"decltype(nullptr)\000"
 7004      74797065 
 7004      286E756C 
 7004      6C707472 
ARM GAS  /tmp/ccHBIC16.s 			page 148


 7004      2900
 7005              	.LASF133:
 7006 09e6 5350495F 		.ascii	"SPI_RDR\000"
 7006      52445200 
 7007              	.LASF281:
 7008 09ee 73747274 		.ascii	"strtoul\000"
 7008      6F756C00 
 7009              	.LASF374:
 7010 09f6 41444331 		.ascii	"ADC17\000"
 7010      3700
 7011              	.LASF129:
 7012 09fc 50494F5F 		.ascii	"PIO_PCISR\000"
 7012      50434953 
 7012      5200
 7013              	.LASF260:
 7014 0a06 6C646976 		.ascii	"ldiv_t\000"
 7014      5F7400
 7015              	.LASF311:
 7016 0a0d 50494F5F 		.ascii	"PIO_OUTPUT_0\000"
 7016      4F555450 
 7016      55545F30 
 7016      00
 7017              	.LASF312:
 7018 0a1a 50494F5F 		.ascii	"PIO_OUTPUT_1\000"
 7018      4F555450 
 7018      55545F31 
 7018      00
 7019              	.LASF391:
 7020 0a27 756C5069 		.ascii	"ulPin\000"
 7020      6E00
 7021              	.LASF305:
 7022 0a2d 50494F5F 		.ascii	"PIO_NOT_A_PIN\000"
 7022      4E4F545F 
 7022      415F5049 
 7022      4E00
 7023              	.LASF161:
 7024 0a3b 5F5F746D 		.ascii	"__tm_sec\000"
 7024      5F736563 
 7024      00
 7025              	.LASF306:
 7026 0a44 50494F5F 		.ascii	"PIO_PERIPH_A\000"
 7026      50455249 
 7026      50485F41 
 7026      00
 7027              	.LASF307:
 7028 0a51 50494F5F 		.ascii	"PIO_PERIPH_B\000"
 7028      50455249 
 7028      50485F42 
 7028      00
 7029              	.LASF283:
 7030 0a5e 77637374 		.ascii	"wcstombs\000"
 7030      6F6D6273 
 7030      00
 7031              	.LASF309:
 7032 0a67 50494F5F 		.ascii	"PIO_PERIPH_D\000"
 7032      50455249 
 7032      50485F44 
ARM GAS  /tmp/ccHBIC16.s 			page 149


 7032      00
 7033              	.LASF170:
 7034 0a74 5F6F6E5F 		.ascii	"_on_exit_args\000"
 7034      65786974 
 7034      5F617267 
 7034      7300
 7035              	.LASF77:
 7036 0a82 50494F5F 		.ascii	"PIO_ODSR\000"
 7036      4F445352 
 7036      00
 7037              	.LASF179:
 7038 0a8b 5F626173 		.ascii	"_base\000"
 7038      6500
 7039              	.LASF52:
 7040 0a91 696E745F 		.ascii	"int_fast16_t\000"
 7040      66617374 
 7040      31365F74 
 7040      00
 7041              	.LASF114:
 7042 0a9e 50494F5F 		.ascii	"PIO_REHLSR\000"
 7042      5245484C 
 7042      535200
 7043              	.LASF119:
 7044 0aa9 50494F5F 		.ascii	"PIO_WPSR\000"
 7044      57505352 
 7044      00
 7045              	.LASF428:
 7046 0ab2 494E5055 		.ascii	"INPUT_PULLDOWN\000"
 7046      545F5055 
 7046      4C4C444F 
 7046      574E00
 7047              	.LASF426:
 7048 0ac1 494E5055 		.ascii	"INPUT\000"
 7048      5400
 7049              	.LASF434:
 7050 0ac7 4F555450 		.ascii	"OUTPUT_LOW_OPEN_DRAIN\000"
 7050      55545F4C 
 7050      4F575F4F 
 7050      50454E5F 
 7050      44524149 
 7051              	.LASF76:
 7052 0add 50494F5F 		.ascii	"PIO_CODR\000"
 7052      434F4452 
 7052      00
 7053              	.LASF32:
 7054 0ae6 696E7438 		.ascii	"int8_t\000"
 7054      5F7400
 7055              	.LASF154:
 7056 0aed 5F5F554C 		.ascii	"__ULong\000"
 7056      6F6E6700 
 7057              	.LASF85:
 7058 0af5 50494F5F 		.ascii	"PIO_MDSR\000"
 7058      4D445352 
 7058      00
 7059              	.LASF53:
 7060 0afe 75696E74 		.ascii	"uint_fast16_t\000"
 7060      5F666173 
ARM GAS  /tmp/ccHBIC16.s 			page 150


 7060      7431365F 
 7060      7400
 7061              	.LASF46:
 7062 0b0c 696E745F 		.ascii	"int_least32_t\000"
 7062      6C656173 
 7062      7433325F 
 7062      7400
 7063              	.LASF278:
 7064 0b1a 7372616E 		.ascii	"srand\000"
 7064      6400
 7065              	.LASF124:
 7066 0b20 52657365 		.ascii	"Reserved14\000"
 7066      72766564 
 7066      313400
 7067              	.LASF473:
 7068 0b2b 2E2E2F6C 		.ascii	"../libraries/SharedSpi/SharedSpi.cpp\000"
 7068      69627261 
 7068      72696573 
 7068      2F536861 
 7068      72656453 
 7069              	.LASF200:
 7070 0b50 5F737472 		.ascii	"_strtok_last\000"
 7070      746F6B5F 
 7070      6C617374 
 7070      00
 7071              	.LASF72:
 7072 0b5d 50494F5F 		.ascii	"PIO_IFDR\000"
 7072      49464452 
 7072      00
 7073              	.LASF60:
 7074 0b66 73697A65 		.ascii	"sizetype\000"
 7074      74797065 
 7074      00
 7075              	.LASF248:
 7076 0b6f 5F736565 		.ascii	"_seed\000"
 7076      6400
 7077              	.LASF188:
 7078 0b75 5F736565 		.ascii	"_seek\000"
 7078      6B00
 7079              	.LASF413:
 7080 0b7b 4150494E 		.ascii	"APIN_UART1_TXD\000"
 7080      5F554152 
 7080      54315F54 
 7080      584400
 7081              	.LASF6:
 7082 0b8a 6D61785F 		.ascii	"max_align_t\000"
 7082      616C6967 
 7082      6E5F7400 
 7083              	.LASF282:
 7084 0b96 73797374 		.ascii	"system\000"
 7084      656D00
 7085              	.LASF34:
 7086 0b9d 696E7431 		.ascii	"int16_t\000"
 7086      365F7400 
 7087              	.LASF356:
 7088 0ba5 4E4F5F41 		.ascii	"NO_ADC\000"
 7088      444300
ARM GAS  /tmp/ccHBIC16.s 			page 151


 7089              	.LASF14:
 7090 0bac 73686F72 		.ascii	"short unsigned int\000"
 7090      7420756E 
 7090      7369676E 
 7090      65642069 
 7090      6E7400
 7091              	.LASF8:
 7092 0bbf 7369676E 		.ascii	"signed char\000"
 7092      65642063 
 7092      68617200 
 7093              	.LASF71:
 7094 0bcb 50494F5F 		.ascii	"PIO_IFER\000"
 7094      49464552 
 7094      00
 7095              	.LASF298:
 7096 0bd4 5F5F6664 		.ascii	"__fdlibm_ieee\000"
 7096      6C69626D 
 7096      5F696565 
 7096      6500
 7097              	.LASF472:
 7098 0be2 474E5520 		.ascii	"GNU C++14 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -m"
 7098      432B2B31 
 7098      3420362E 
 7098      332E3120 
 7098      32303137 
 7099 0c15 6670753D 		.ascii	"fpu=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu++14 -"
 7099      66707635 
 7099      2D643136 
 7099      202D6D66 
 7099      6C6F6174 
 7100 0c48 6666756E 		.ascii	"ffunction-sections -fdata-sections -fno-threadsafe-"
 7100      6374696F 
 7100      6E2D7365 
 7100      6374696F 
 7100      6E73202D 
 7101 0c7b 73746174 		.ascii	"statics -fno-rtti -fno-exceptions -fsingle-precisio"
 7101      69637320 
 7101      2D666E6F 
 7101      2D727474 
 7101      69202D66 
 7102 0cae 6E2D636F 		.ascii	"n-constant\000"
 7102      6E737461 
 7102      6E7400
 7103              	.LASF394:
 7104 0cb9 756C5069 		.ascii	"ulPinConfiguration\000"
 7104      6E436F6E 
 7104      66696775 
 7104      72617469 
 7104      6F6E00
 7105              	.LASF234:
 7106 0ccc 5F667265 		.ascii	"_freelist\000"
 7106      656C6973 
 7106      7400
 7107              	.LASF25:
 7108 0cd6 5F5F7569 		.ascii	"__uint_least16_t\000"
 7108      6E745F6C 
 7108      65617374 
ARM GAS  /tmp/ccHBIC16.s 			page 152


 7108      31365F74 
 7108      00
 7109              	.LASF275:
 7110 0ce7 77636861 		.ascii	"wchar_t\000"
 7110      725F7400 
 7111              	.LASF450:
 7112 0cef 73737069 		.ascii	"sspi_select_device\000"
 7112      5F73656C 
 7112      6563745F 
 7112      64657669 
 7112      636500
 7113              	.LASF193:
 7114 0d02 5F6F6666 		.ascii	"_offset\000"
 7114      73657400 
 7115              	.LASF62:
 7116 0d0a 53797374 		.ascii	"SystemCoreClock\000"
 7116      656D436F 
 7116      7265436C 
 7116      6F636B00 
 7117              	.LASF440:
 7118 0d1a 6373506F 		.ascii	"csPolarity\000"
 7118      6C617269 
 7118      747900
 7119              	.LASF178:
 7120 0d25 5F5F7362 		.ascii	"__sbuf\000"
 7120      756600
 7121              	.LASF274:
 7122 0d2c 6D627374 		.ascii	"mbstowcs\000"
 7122      6F776373 
 7122      00
 7123              	.LASF445:
 7124 0d35 72785F64 		.ascii	"rx_data\000"
 7124      61746100 
 7125              	.LASF209:
 7126 0d3d 5F6C3634 		.ascii	"_l64a_buf\000"
 7126      615F6275 
 7126      6600
 7127              	.LASF137:
 7128 0d47 5350495F 		.ascii	"SPI_IDR\000"
 7128      49445200 
 7129              	.LASF110:
 7130 0d4f 50494F5F 		.ascii	"PIO_LSR\000"
 7130      4C535200 
 7131              	.LASF320:
 7132 0d57 5350495F 		.ascii	"SPI_ERROR_OVERRUN_AND_MODE_FAULT\000"
 7132      4552524F 
 7132      525F4F56 
 7132      45525255 
 7132      4E5F414E 
 7133              	.LASF201:
 7134 0d78 5F617363 		.ascii	"_asctime_buf\000"
 7134      74696D65 
 7134      5F627566 
 7134      00
 7135              	.LASF148:
 7136 0d85 5F5F7763 		.ascii	"__wch\000"
 7136      6800
ARM GAS  /tmp/ccHBIC16.s 			page 153


 7137              	.LASF136:
 7138 0d8b 5350495F 		.ascii	"SPI_IER\000"
 7138      49455200 
 7139              	.LASF437:
 7140 0d93 53657269 		.ascii	"SerialUSB\000"
 7140      616C5553 
 7140      4200
 7141              	.LASF216:
 7142 0d9d 5F776373 		.ascii	"_wcsrtombs_state\000"
 7142      72746F6D 
 7142      62735F73 
 7142      74617465 
 7142      00
 7143              	.LASF89:
 7144 0dae 50494F5F 		.ascii	"PIO_PUSR\000"
 7144      50555352 
 7144      00
 7145              	.LASF140:
 7146 0db7 5350495F 		.ascii	"SPI_WPMR\000"
 7146      57504D52 
 7146      00
 7147              	.LASF142:
 7148 0dc0 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 7148      4B5F5245 
 7148      43555253 
 7148      4956455F 
 7148      5400
 7149              	.LASF303:
 7150 0dd2 5F5F6664 		.ascii	"__fdlibm_version\000"
 7150      6C69626D 
 7150      5F766572 
 7150      73696F6E 
 7150      00
 7151              	.LASF459:
 7152 0de3 77616974 		.ascii	"waitForTxReady\000"
 7152      466F7254 
 7152      78526561 
 7152      647900
 7153              	.LASF484:
 7154 0df2 53657269 		.ascii	"SerialCDC\000"
 7154      616C4344 
 7154      4300
 7155              	.LASF16:
 7156 0dfc 6C6F6E67 		.ascii	"long int\000"
 7156      20696E74 
 7156      00
 7157              	.LASF432:
 7158 0e05 4F555450 		.ascii	"OUTPUT_PWM_LOW\000"
 7158      55545F50 
 7158      574D5F4C 
 7158      4F5700
 7159              	.LASF208:
 7160 0e14 5F776374 		.ascii	"_wctomb_state\000"
 7160      6F6D625F 
 7160      73746174 
 7160      6500
 7161              	.LASF23:
ARM GAS  /tmp/ccHBIC16.s 			page 154


 7162 0e22 5F5F7569 		.ascii	"__uint_least8_t\000"
 7162      6E745F6C 
 7162      65617374 
 7162      385F7400 
 7163              	.LASF433:
 7164 0e32 4F555450 		.ascii	"OUTPUT_PWM_HIGH\000"
 7164      55545F50 
 7164      574D5F48 
 7164      49474800 
 7165              	.LASF68:
 7166 0e42 50494F5F 		.ascii	"PIO_ODR\000"
 7166      4F445200 
 7167              	.LASF246:
 7168 0e4a 5F696F62 		.ascii	"_iobs\000"
 7168      7300
 7169              	.LASF226:
 7170 0e50 5F656D65 		.ascii	"_emergency\000"
 7170      7267656E 
 7170      637900
 7171              	.LASF212:
 7172 0e5b 5F6D6272 		.ascii	"_mbrlen_state\000"
 7172      6C656E5F 
 7172      73746174 
 7172      6500
 7173              	.LASF218:
 7174 0e69 5F6E6578 		.ascii	"_nextf\000"
 7174      746600
 7175              	.LASF447:
 7176 0e70 77726974 		.ascii	"write\000"
 7176      6500
 7177              	.LASF204:
 7178 0e76 5F72616E 		.ascii	"_rand_next\000"
 7178      645F6E65 
 7178      787400
 7179              	.LASF40:
 7180 0e81 696E7470 		.ascii	"intptr_t\000"
 7180      74725F74 
 7180      00
 7181              	.LASF37:
 7182 0e8a 75696E74 		.ascii	"uint32_t\000"
 7182      33325F74 
 7182      00
 7183              	.LASF67:
 7184 0e93 50494F5F 		.ascii	"PIO_OER\000"
 7184      4F455200 
 7185              	.LASF134:
 7186 0e9b 5350495F 		.ascii	"SPI_TDR\000"
 7186      54445200 
 7187              	.LASF156:
 7188 0ea3 5F6D6178 		.ascii	"_maxwds\000"
 7188      77647300 
 7189              	.LASF279:
 7190 0eab 73747274 		.ascii	"strtod\000"
 7190      6F6400
 7191              	.LASF41:
 7192 0eb2 75696E74 		.ascii	"uintptr_t\000"
 7192      7074725F 
ARM GAS  /tmp/ccHBIC16.s 			page 155


 7192      7400
 7193              	.LASF449:
 7194 0ebc 64657669 		.ascii	"device\000"
 7194      636500
 7195              	.LASF280:
 7196 0ec3 73747274 		.ascii	"strtol\000"
 7196      6F6C00
 7197              	.LASF4:
 7198 0eca 6C6F6E67 		.ascii	"long double\000"
 7198      20646F75 
 7198      626C6500 
 7199              	.LASF264:
 7200 0ed6 7375626F 		.ascii	"suboptarg\000"
 7200      70746172 
 7200      6700
 7201              	.LASF324:
 7202 0ee0 4E4F545F 		.ascii	"NOT_ON_PWM\000"
 7202      4F4E5F50 
 7202      574D00
 7203              	.LASF18:
 7204 0eeb 6C6F6E67 		.ascii	"long unsigned int\000"
 7204      20756E73 
 7204      69676E65 
 7204      6420696E 
 7204      7400
 7205              	.LASF293:
 7206 0efd 626F6F6C 		.ascii	"bool\000"
 7206      00
 7207              	.LASF454:
 7208 0f02 62697473 		.ascii	"bits\000"
 7208      00
 7209              	.LASF316:
 7210 0f07 5350495F 		.ascii	"SPI_ERROR_TIMEOUT\000"
 7210      4552524F 
 7210      525F5449 
 7210      4D454F55 
 7210      5400
 7211              	.LASF189:
 7212 0f19 5F636C6F 		.ascii	"_close\000"
 7212      736500
 7213              	.LASF242:
 7214 0f20 63686172 		.ascii	"char\000"
 7214      00
 7215              	.LASF244:
 7216 0f25 5F676C75 		.ascii	"_glue\000"
 7216      6500
 7217              	.LASF45:
 7218 0f2b 75696E74 		.ascii	"uint_least16_t\000"
 7218      5F6C6561 
 7218      73743136 
 7218      5F7400
 7219              	.LASF435:
 7220 0f3a 4F555450 		.ascii	"OUTPUT_HIGH_OPEN_DRAIN\000"
 7220      55545F48 
 7220      4947485F 
 7220      4F50454E 
 7220      5F445241 
ARM GAS  /tmp/ccHBIC16.s 			page 156


 7221              	.LASF141:
 7222 0f51 5350495F 		.ascii	"SPI_WPSR\000"
 7222      57505352 
 7222      00
 7223              	.LASF56:
 7224 0f5a 696E745F 		.ascii	"int_fast64_t\000"
 7224      66617374 
 7224      36345F74 
 7224      00
 7225              	.LASF31:
 7226 0f67 5F5F7569 		.ascii	"__uintptr_t\000"
 7226      6E747074 
 7226      725F7400 
 7227              	.LASF399:
 7228 0f73 675F4150 		.ascii	"g_APinDescription\000"
 7228      696E4465 
 7228      73637269 
 7228      7074696F 
 7228      6E00
 7229              	.LASF238:
 7230 0f85 5F617465 		.ascii	"_atexit0\000"
 7230      78697430 
 7230      00
 7231              	.LASF211:
 7232 0f8e 5F676574 		.ascii	"_getdate_err\000"
 7232      64617465 
 7232      5F657272 
 7232      00
 7233              	.LASF286:
 7234 0f9b 61746F6C 		.ascii	"atoll\000"
 7234      6C00
 7235              	.LASF64:
 7236 0fa1 50494F5F 		.ascii	"PIO_PDR\000"
 7236      50445200 
 7237              	.LASF138:
 7238 0fa9 5350495F 		.ascii	"SPI_IMR\000"
 7238      494D5200 
 7239              	.LASF57:
 7240 0fb1 75696E74 		.ascii	"uint_fast64_t\000"
 7240      5F666173 
 7240      7436345F 
 7240      7400
 7241              	.LASF442:
 7242 0fbf 7370694D 		.ascii	"spiMode\000"
 7242      6F646500 
 7243              	.LASF270:
 7244 0fc7 62736561 		.ascii	"bsearch\000"
 7244      72636800 
 7245              	.LASF159:
 7246 0fcf 5F426967 		.ascii	"_Bigint\000"
 7246      696E7400 
 7247              	.LASF400:
 7248 0fd7 5F5F6374 		.ascii	"__ctype_ptr__\000"
 7248      7970655F 
 7248      7074725F 
 7248      5F00
 7249              	.LASF63:
ARM GAS  /tmp/ccHBIC16.s 			page 157


 7250 0fe5 50494F5F 		.ascii	"PIO_PER\000"
 7250      50455200 
 7251              	.LASF308:
 7252 0fed 50494F5F 		.ascii	"PIO_PERIPH_C\000"
 7252      50455249 
 7252      50485F43 
 7252      00
 7253              	.LASF146:
 7254 0ffa 33537069 		.ascii	"3Spi\000"
 7254      00
 7255              	.LASF192:
 7256 0fff 5F626C6B 		.ascii	"_blksize\000"
 7256      73697A65 
 7256      00
 7257              	.LASF463:
 7258 1008 705F7370 		.ascii	"p_spi\000"
 7258      6900
 7259              	.LASF190:
 7260 100e 5F756275 		.ascii	"_ubuf\000"
 7260      6600
 7261              	.LASF206:
 7262 1014 5F6D626C 		.ascii	"_mblen_state\000"
 7262      656E5F73 
 7262      74617465 
 7262      00
 7263              	.LASF240:
 7264 1021 5F5F7367 		.ascii	"__sglue\000"
 7264      6C756500 
 7265              	.LASF395:
 7266 1029 756C5069 		.ascii	"ulPinAttribute\000"
 7266      6E417474 
 7266      72696275 
 7266      746500
 7267              	.LASF422:
 7268 1038 53657269 		.ascii	"Serial\000"
 7268      616C00
 7269              	.LASF230:
 7270 103f 5F5F636C 		.ascii	"__cleanup\000"
 7270      65616E75 
 7270      7000
 7271              	.LASF38:
 7272 1049 696E7436 		.ascii	"int64_t\000"
 7272      345F7400 
 7273              	.LASF125:
 7274 1051 50494F5F 		.ascii	"PIO_PCMR\000"
 7274      50434D52 
 7274      00
 7275              	.LASF144:
 7276 105a 5F66706F 		.ascii	"_fpos_t\000"
 7276      735F7400 
 7277              	.LASF183:
 7278 1062 5F66696C 		.ascii	"_file\000"
 7278      6500
 7279              	.LASF43:
 7280 1068 75696E74 		.ascii	"uint_least8_t\000"
 7280      5F6C6561 
 7280      7374385F 
ARM GAS  /tmp/ccHBIC16.s 			page 158


 7280      7400
 7281              	.LASF272:
 7282 1076 6C646976 		.ascii	"ldiv\000"
 7282      00
 7283              	.LASF181:
 7284 107b 5F5F7346 		.ascii	"__sFILE\000"
 7284      494C4500 
 7285              	.LASF398:
 7286 1083 756C5443 		.ascii	"ulTCChannel\000"
 7286      4368616E 
 7286      6E656C00 
 7287              	.LASF419:
 7288 108f 4D617850 		.ascii	"MaxPinNumber\000"
 7288      696E4E75 
 7288      6D626572 
 7288      00
 7289              	.LASF267:
 7290 109c 646F7562 		.ascii	"double\000"
 7290      6C6500
 7291              	.LASF177:
 7292 10a3 5F666E73 		.ascii	"_fns\000"
 7292      00
 7293              	.LASF73:
 7294 10a8 50494F5F 		.ascii	"PIO_IFSR\000"
 7294      49465352 
 7294      00
 7295              	.LASF152:
 7296 10b1 5F6D6273 		.ascii	"_mbstate_t\000"
 7296      74617465 
 7296      5F7400
 7297              	.LASF217:
 7298 10bc 5F685F65 		.ascii	"_h_errno\000"
 7298      72726E6F 
 7298      00
 7299              	.LASF451:
 7300 10c5 73737069 		.ascii	"sspi_master_setup_device\000"
 7300      5F6D6173 
 7300      7465725F 
 7300      73657475 
 7300      705F6465 
 7301              	.LASF29:
 7302 10de 5F5F7569 		.ascii	"__uint_least64_t\000"
 7302      6E745F6C 
 7302      65617374 
 7302      36345F74 
 7302      00
 7303              	.LASF15:
 7304 10ef 5F5F696E 		.ascii	"__int32_t\000"
 7304      7433325F 
 7304      7400
 7305              	.LASF17:
 7306 10f9 5F5F7569 		.ascii	"__uint32_t\000"
 7306      6E743332 
 7306      5F7400
 7307              	.LASF277:
 7308 1104 71736F72 		.ascii	"qsort\000"
 7308      7400
ARM GAS  /tmp/ccHBIC16.s 			page 159


 7309              	.LASF24:
 7310 110a 5F5F696E 		.ascii	"__int_least16_t\000"
 7310      745F6C65 
 7310      61737431 
 7310      365F7400 
 7311              	.LASF106:
 7312 111a 50494F5F 		.ascii	"PIO_AIMDR\000"
 7312      41494D44 
 7312      5200
 7313              	.LASF151:
 7314 1124 5F5F7661 		.ascii	"__value\000"
 7314      6C756500 
 7315              	.LASF174:
 7316 112c 5F69735F 		.ascii	"_is_cxa\000"
 7316      63786100 
 7317              	.LASF93:
 7318 1134 50494F5F 		.ascii	"PIO_IFSCDR\000"
 7318      49465343 
 7318      445200
 7319              	.LASF233:
 7320 113f 5F703573 		.ascii	"_p5s\000"
 7320      00
 7321              	.LASF344:
 7322 1144 5443315F 		.ascii	"TC1_CHA4\000"
 7322      43484134 
 7322      00
 7323              	.LASF346:
 7324 114d 5443315F 		.ascii	"TC1_CHA5\000"
 7324      43484135 
 7324      00
 7325              	.LASF105:
 7326 1156 50494F5F 		.ascii	"PIO_AIMER\000"
 7326      41494D45 
 7326      5200
 7327              	.LASF469:
 7328 1160 7370695F 		.ascii	"spi_calc_baudrate_div\000"
 7328      63616C63 
 7328      5F626175 
 7328      64726174 
 7328      655F6469 
 7329              	.LASF462:
 7330 1176 7370695F 		.ascii	"spi_is_rx_ready\000"
 7330      69735F72 
 7330      785F7265 
 7330      61647900 
 7331              	.LASF439:
 7332 1186 63735069 		.ascii	"csPin\000"
 7332      6E00
 7333              	.LASF215:
 7334 118c 5F776372 		.ascii	"_wcrtomb_state\000"
 7334      746F6D62 
 7334      5F737461 
 7334      746500
 7335              	.LASF94:
 7336 119b 50494F5F 		.ascii	"PIO_IFSCER\000"
 7336      49465343 
 7336      455200
ARM GAS  /tmp/ccHBIC16.s 			page 160


 7337              	.LASF486:
 7338 11a6 5F5A3132 		.ascii	"_Z12ConfigurePinRK14PinDescription\000"
 7338      436F6E66 
 7338      69677572 
 7338      6550696E 
 7338      524B3134 
 7339              	.LASF256:
 7340 11c9 35646976 		.ascii	"5div_t\000"
 7340      5F7400
 7341              	.LASF455:
 7342 11d0 636F6D6D 		.ascii	"commsInitDone\000"
 7342      73496E69 
 7342      74446F6E 
 7342      6500
 7343              	.LASF258:
 7344 11de 6469765F 		.ascii	"div_t\000"
 7344      7400
 7345              	.LASF276:
 7346 11e4 6D62746F 		.ascii	"mbtowc\000"
 7346      776300
 7347              	.LASF357:
 7348 11eb 41444330 		.ascii	"ADC0\000"
 7348      00
 7349              	.LASF405:
 7350 11f0 5F74696D 		.ascii	"_timezone\000"
 7350      657A6F6E 
 7350      6500
 7351              	.LASF61:
 7352 11fa 49544D5F 		.ascii	"ITM_RxBuffer\000"
 7352      52784275 
 7352      66666572 
 7352      00
 7353              	.LASF113:
 7354 1207 50494F5F 		.ascii	"PIO_FELLSR\000"
 7354      46454C4C 
 7354      535200
 7355              	.LASF21:
 7356 1212 6C6F6E67 		.ascii	"long long unsigned int\000"
 7356      206C6F6E 
 7356      6720756E 
 7356      7369676E 
 7356      65642069 
 7357              	.LASF263:
 7358 1229 5F5F636F 		.ascii	"__compar_fn_t\000"
 7358      6D706172 
 7358      5F666E5F 
 7358      7400
 7359              	.LASF203:
 7360 1237 5F67616D 		.ascii	"_gamma_signgam\000"
 7360      6D615F73 
 7360      69676E67 
 7360      616D00
 7361              	.LASF354:
 7362 1246 45544343 		.ascii	"ETCChannel\000"
 7362      68616E6E 
 7362      656C00
 7363              	.LASF479:
ARM GAS  /tmp/ccHBIC16.s 			page 161


 7364 1251 5F5A5374 		.ascii	"_ZSt4modfePe\000"
 7364      346D6F64 
 7364      66655065 
 7364      00
 7365              	.LASF227:
 7366 125e 5F637572 		.ascii	"_current_category\000"
 7366      72656E74 
 7366      5F636174 
 7366      65676F72 
 7366      7900
 7367              	.LASF470:
 7368 1270 70696E4D 		.ascii	"pinModeDuet\000"
 7368      6F646544 
 7368      75657400 
 7369              	.LASF464:
 7370 127c 7370695F 		.ascii	"spi_is_tx_ready\000"
 7370      69735F74 
 7370      785F7265 
 7370      61647900 
 7371              	.LASF252:
 7372 128c 5F676C6F 		.ascii	"_global_impure_ptr\000"
 7372      62616C5F 
 7372      696D7075 
 7372      72655F70 
 7372      747200
 7373              	.LASF69:
 7374 129f 50494F5F 		.ascii	"PIO_OSR\000"
 7374      4F535200 
 7375              	.LASF50:
 7376 12a7 696E745F 		.ascii	"int_fast8_t\000"
 7376      66617374 
 7376      385F7400 
 7377              	.LASF271:
 7378 12b3 67657465 		.ascii	"getenv\000"
 7378      6E7600
 7379              	.LASF229:
 7380 12ba 5F5F7364 		.ascii	"__sdidinit\000"
 7380      6964696E 
 7380      697400
 7381              	.LASF301:
 7382 12c5 5F5F6664 		.ascii	"__fdlibm_posix\000"
 7382      6C69626D 
 7382      5F706F73 
 7382      697800
 7383              	.LASF460:
 7384 12d4 70696E4D 		.ascii	"pinMode\000"
 7384      6F646500 
 7385              	.LASF481:
 7386 12dc 72616E64 		.ascii	"rand\000"
 7386      00
 7387              	.LASF153:
 7388 12e1 5F666C6F 		.ascii	"_flock_t\000"
 7388      636B5F74 
 7388      00
 7389              	.LASF404:
 7390 12ea 55415254 		.ascii	"UARTClass\000"
 7390      436C6173 
ARM GAS  /tmp/ccHBIC16.s 			page 162


 7390      7300
 7391              	.LASF3:
 7392 12f4 6C6F6E67 		.ascii	"long long int\000"
 7392      206C6F6E 
 7392      6720696E 
 7392      7400
 7393              	.LASF109:
 7394 1302 50494F5F 		.ascii	"PIO_ESR\000"
 7394      45535200 
 7395              	.LASF197:
 7396 130a 5F666C61 		.ascii	"_flags2\000"
 7396      67733200 
 7397              	.LASF127:
 7398 1312 50494F5F 		.ascii	"PIO_PCIDR\000"
 7398      50434944 
 7398      5200
 7399              	.LASF408:
 7400 131c 4150494E 		.ascii	"APINS_UART0\000"
 7400      535F5541 
 7400      52543000 
 7401              	.LASF411:
 7402 1328 4150494E 		.ascii	"APINS_UART1\000"
 7402      535F5541 
 7402      52543100 
 7403              	.LASF44:
 7404 1334 696E745F 		.ascii	"int_least16_t\000"
 7404      6C656173 
 7404      7431365F 
 7404      7400
 7405              	.LASF480:
 7406 1342 5F5A4E39 		.ascii	"_ZN9__gnu_cxx3divExx\000"
 7406      5F5F676E 
 7406      755F6378 
 7406      78336469 
 7406      76457878 
 7407              	.LASF131:
 7408 1357 5350495F 		.ascii	"SPI_CR\000"
 7408      435200
 7409              	.LASF295:
 7410 135e 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 7410      6972715F 
 7410      70726576 
 7410      5F696E74 
 7410      65727275 
 7411              	.LASF314:
 7412 137b 5350495F 		.ascii	"SPI_ERROR\000"
 7412      4552524F 
 7412      5200
 7413              	.LASF107:
 7414 1385 50494F5F 		.ascii	"PIO_AIMMR\000"
 7414      41494D4D 
 7414      5200
 7415              	.LASF304:
 7416 138f 5F70696F 		.ascii	"_pio_type\000"
 7416      5F747970 
 7416      6500
 7417              	.LASF243:
ARM GAS  /tmp/ccHBIC16.s 			page 163


 7418 1399 5F5F4649 		.ascii	"__FILE\000"
 7418      4C4500
 7419              	.LASF333:
 7420 13a0 4550574D 		.ascii	"EPWMChannel\000"
 7420      4368616E 
 7420      6E656C00 
 7421              	.LASF288:
 7422 13ac 73747274 		.ascii	"strtoull\000"
 7422      6F756C6C 
 7422      00
 7423              	.LASF483:
 7424 13b5 5F5A4E35 		.ascii	"_ZN5Print5writeEPKcj\000"
 7424      5072696E 
 7424      74357772 
 7424      69746545 
 7424      504B636A 
 7425              	.LASF157:
 7426 13ca 5F736967 		.ascii	"_sign\000"
 7426      6E00
 7427              	.LASF7:
 7428 13d0 5F5F696E 		.ascii	"__int8_t\000"
 7428      74385F74 
 7428      00
 7429              	.LASF78:
 7430 13d9 50494F5F 		.ascii	"PIO_PDSR\000"
 7430      50445352 
 7430      00
 7431              	.LASF162:
 7432 13e2 5F5F746D 		.ascii	"__tm_min\000"
 7432      5F6D696E 
 7432      00
 7433              	.LASF474:
 7434 13eb 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70\000"
 7434      652F746F 
 7434      72626A6F 
 7434      726E2F65 
 7434      636C6970 
 7435              	.LASF115:
 7436 141a 50494F5F 		.ascii	"PIO_FRLHSR\000"
 7436      46524C48 
 7436      535200
 7437              	.LASF66:
 7438 1425 52657365 		.ascii	"Reserved1\000"
 7438      72766564 
 7438      3100
 7439              	.LASF70:
 7440 142f 52657365 		.ascii	"Reserved2\000"
 7440      72766564 
 7440      3200
 7441              	.LASF74:
 7442 1439 52657365 		.ascii	"Reserved3\000"
 7442      72766564 
 7442      3300
 7443              	.LASF86:
 7444 1443 52657365 		.ascii	"Reserved4\000"
 7444      72766564 
 7444      3400
ARM GAS  /tmp/ccHBIC16.s 			page 164


 7445              	.LASF90:
 7446 144d 52657365 		.ascii	"Reserved5\000"
 7446      72766564 
 7446      3500
 7447              	.LASF92:
 7448 1457 52657365 		.ascii	"Reserved6\000"
 7448      72766564 
 7448      3600
 7449              	.LASF100:
 7450 1461 52657365 		.ascii	"Reserved7\000"
 7450      72766564 
 7450      3700
 7451              	.LASF104:
 7452 146b 52657365 		.ascii	"Reserved8\000"
 7452      72766564 
 7452      3800
 7453              	.LASF108:
 7454 1475 52657365 		.ascii	"Reserved9\000"
 7454      72766564 
 7454      3900
 7455              	.LASF0:
 7456 147f 756E7369 		.ascii	"unsigned int\000"
 7456      676E6564 
 7456      20696E74 
 7456      00
 7457              	.LASF205:
 7458 148c 5F723438 		.ascii	"_r48\000"
 7458      00
 7459              	.LASF65:
 7460 1491 50494F5F 		.ascii	"PIO_PSR\000"
 7460      50535200 
 7461              	.LASF423:
 7462 1499 53657269 		.ascii	"Serial1\000"
 7462      616C3100 
 7463              	.LASF397:
 7464 14a1 756C5057 		.ascii	"ulPWMChannel\000"
 7464      4D436861 
 7464      6E6E656C 
 7464      00
 7465              	.LASF255:
 7466 14ae 5F5F6378 		.ascii	"__cxx11\000"
 7466      78313100 
 7467              	.LASF51:
 7468 14b6 75696E74 		.ascii	"uint_fast8_t\000"
 7468      5F666173 
 7468      74385F74 
 7468      00
 7469              	.LASF12:
 7470 14c3 73686F72 		.ascii	"short int\000"
 7470      7420696E 
 7470      7400
 7471              	.LASF186:
 7472 14cd 5F726561 		.ascii	"_read\000"
 7472      6400
 7473              	.LASF247:
 7474 14d3 5F72616E 		.ascii	"_rand48\000"
 7474      64343800 
ARM GAS  /tmp/ccHBIC16.s 			page 165


 7475              	.LASF418:
 7476 14db 4150494E 		.ascii	"APINS_GMAC_PHY\000"
 7476      535F474D 
 7476      41435F50 
 7476      485900
 7477              	.LASF97:
 7478 14ea 50494F5F 		.ascii	"PIO_PPDDR\000"
 7478      50504444 
 7478      5200
 7479              	.LASF436:
 7480 14f4 4F555450 		.ascii	"OUTPUT_PWM_OPEN_DRAIN\000"
 7480      55545F50 
 7480      574D5F4F 
 7480      50454E5F 
 7480      44524149 
 7481              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
