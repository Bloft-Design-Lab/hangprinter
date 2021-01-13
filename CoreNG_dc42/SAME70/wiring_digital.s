ARM GAS  /tmp/ccxS4laR.s 			page 1


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
  12              		.file	"wiring_digital.cpp"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.pinModeDuet,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	pinModeDuet
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	pinModeDuet, %function
  25              	pinModeDuet:
  26              	.LFB525:
  27              		.file 1 "../cores/arduino/wiring_digital.cpp"
   1:../cores/arduino/wiring_digital.cpp **** /*
   2:../cores/arduino/wiring_digital.cpp ****   Copyright (c) 2011 Arduino.  All right reserved.
   3:../cores/arduino/wiring_digital.cpp **** 
   4:../cores/arduino/wiring_digital.cpp ****   This library is free software; you can redistribute it and/or
   5:../cores/arduino/wiring_digital.cpp ****   modify it under the terms of the GNU Lesser General Public
   6:../cores/arduino/wiring_digital.cpp ****   License as published by the Free Software Foundation; either
   7:../cores/arduino/wiring_digital.cpp ****   version 2.1 of the License, or (at your option) any later version.
   8:../cores/arduino/wiring_digital.cpp **** 
   9:../cores/arduino/wiring_digital.cpp ****   This library is distributed in the hope that it will be useful,
  10:../cores/arduino/wiring_digital.cpp ****   but WITHOUT ANY WARRANTY; without even the implied warranty of
  11:../cores/arduino/wiring_digital.cpp ****   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
  12:../cores/arduino/wiring_digital.cpp ****   See the GNU Lesser General Public License for more details.
  13:../cores/arduino/wiring_digital.cpp **** 
  14:../cores/arduino/wiring_digital.cpp ****   You should have received a copy of the GNU Lesser General Public
  15:../cores/arduino/wiring_digital.cpp ****   License along with this library; if not, write to the Free Software
  16:../cores/arduino/wiring_digital.cpp ****   Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
  17:../cores/arduino/wiring_digital.cpp **** */
  18:../cores/arduino/wiring_digital.cpp **** 
  19:../cores/arduino/wiring_digital.cpp **** #include "Core.h"
  20:../cores/arduino/wiring_digital.cpp **** 
  21:../cores/arduino/wiring_digital.cpp **** extern "C" void pinModeDuet(Pin pin, enum PinMode ulMode, uint32_t debounceCutoff)
  22:../cores/arduino/wiring_digital.cpp **** {
  28              		.loc 1 22 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              	.LVL0:
  23:../cores/arduino/wiring_digital.cpp **** 	if (pin > MaxPinNumber)
  33              		.loc 1 23 0
  34 0000 3228     		cmp	r0, #50
ARM GAS  /tmp/ccxS4laR.s 			page 2


  35 0002 14D8     		bhi	.L34
  36              	.LVL1:
  22:../cores/arduino/wiring_digital.cpp **** 	if (pin > MaxPinNumber)
  37              		.loc 1 22 0
  38 0004 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  39              		.cfi_def_cfa_offset 24
  40              		.cfi_offset 4, -24
  41              		.cfi_offset 5, -20
  42              		.cfi_offset 6, -16
  43              		.cfi_offset 7, -12
  44              		.cfi_offset 8, -8
  45              		.cfi_offset 14, -4
  24:../cores/arduino/wiring_digital.cpp **** 	{
  25:../cores/arduino/wiring_digital.cpp **** 		return;
  26:../cores/arduino/wiring_digital.cpp **** 	}
  27:../cores/arduino/wiring_digital.cpp **** 
  28:../cores/arduino/wiring_digital.cpp **** 	const PinDescription& pinDesc = g_APinDescription[pin];
  29:../cores/arduino/wiring_digital.cpp ****     if (pinDesc.ulPinType == PIO_NOT_A_PIN)
  46              		.loc 1 29 0
  47 0008 C400     		lsls	r4, r0, #3
  48 000a 584D     		ldr	r5, .L44
  49 000c 231A     		subs	r3, r4, r0
  50 000e 05EB8303 		add	r3, r5, r3, lsl #2
  51 0012 DB68     		ldr	r3, [r3, #12]
  52 0014 4BB1     		cbz	r3, .L1
  53 0016 1646     		mov	r6, r2
  30:../cores/arduino/wiring_digital.cpp ****     {
  31:../cores/arduino/wiring_digital.cpp ****         return;
  32:../cores/arduino/wiring_digital.cpp ****     }
  33:../cores/arduino/wiring_digital.cpp **** 
  34:../cores/arduino/wiring_digital.cpp **** 	switch (ulMode)
  54              		.loc 1 34 0
  55 0018 0829     		cmp	r1, #8
  56 001a 06D8     		bhi	.L1
  57 001c DFE801F0 		tbb	[pc, r1]
  58              	.L6:
  59 0020 16       		.byte	(.L5-.L6)/2
  60 0021 31       		.byte	(.L7-.L6)/2
  61 0022 47       		.byte	(.L8-.L6)/2
  62 0023 67       		.byte	(.L9-.L6)/2
  63 0024 7A       		.byte	(.L10-.L6)/2
  64 0025 7E       		.byte	(.L11-.L6)/2
  65 0026 8D       		.byte	(.L12-.L6)/2
  66 0027 95       		.byte	(.L13-.L6)/2
  67 0028 08       		.byte	(.L14-.L6)/2
  68              	.LVL2:
  69 0029 00       		.p2align 1
  70              	.L1:
  71 002a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  72              	.LVL3:
  73              	.L34:
  74              		.cfi_def_cfa_offset 0
  75              		.cfi_restore 4
  76              		.cfi_restore 5
  77              		.cfi_restore 6
  78              		.cfi_restore 7
  79              		.cfi_restore 8
ARM GAS  /tmp/ccxS4laR.s 			page 3


  80              		.cfi_restore 14
  81 002e 7047     		bx	lr
  82              	.LVL4:
  83              	.L14:
  84              		.cfi_def_cfa_offset 24
  85              		.cfi_offset 4, -24
  86              		.cfi_offset 5, -20
  87              		.cfi_offset 6, -16
  88              		.cfi_offset 7, -12
  89              		.cfi_offset 8, -8
  90              		.cfi_offset 14, -4
  35:../cores/arduino/wiring_digital.cpp **** 	{
  36:../cores/arduino/wiring_digital.cpp **** 		case INPUT:
  37:../cores/arduino/wiring_digital.cpp **** 			/* Enable peripheral for clocking input */
  38:../cores/arduino/wiring_digital.cpp **** 			pmc_enable_periph_clk(pinDesc.ulPeripheralId);
  39:../cores/arduino/wiring_digital.cpp **** 			pio_pull_up(pinDesc.pPort, pinDesc.ulPin, 0);		// turn off pullup
  40:../cores/arduino/wiring_digital.cpp **** #if SAM4E || SAM4S || SAME70
  41:../cores/arduino/wiring_digital.cpp **** 			pio_pull_down(pinDesc.pPort, pinDesc.ulPin, 0);		// turn off pulldown
  42:../cores/arduino/wiring_digital.cpp **** #endif
  43:../cores/arduino/wiring_digital.cpp **** 			pio_configure(
  44:../cores/arduino/wiring_digital.cpp **** 					pinDesc.pPort,
  45:../cores/arduino/wiring_digital.cpp **** 					PIO_INPUT,
  46:../cores/arduino/wiring_digital.cpp **** 					pinDesc.ulPin,
  47:../cores/arduino/wiring_digital.cpp **** 					(debounceCutoff == 0) ? 0 : PIO_DEBOUNCE);
  48:../cores/arduino/wiring_digital.cpp **** 			if (debounceCutoff != 0)
  49:../cores/arduino/wiring_digital.cpp **** 			{
  50:../cores/arduino/wiring_digital.cpp **** 				pio_set_debounce_filter(pinDesc.pPort, pinDesc.ulPin, debounceCutoff);	// enable debounce filte
  51:../cores/arduino/wiring_digital.cpp **** 			}
  52:../cores/arduino/wiring_digital.cpp **** 			break;
  53:../cores/arduino/wiring_digital.cpp **** 
  54:../cores/arduino/wiring_digital.cpp **** 		case INPUT_PULLUP:
  55:../cores/arduino/wiring_digital.cpp **** 			/* Enable peripheral for clocking input */
  56:../cores/arduino/wiring_digital.cpp **** 			pmc_enable_periph_clk(pinDesc.ulPeripheralId);
  57:../cores/arduino/wiring_digital.cpp **** #if SAM4E || SAM4S || SAME70
  58:../cores/arduino/wiring_digital.cpp **** 			pio_pull_down(pinDesc.pPort, pinDesc.ulPin, 0);		// turn off pulldown
  59:../cores/arduino/wiring_digital.cpp **** #endif
  60:../cores/arduino/wiring_digital.cpp **** 			pio_configure(
  61:../cores/arduino/wiring_digital.cpp **** 					pinDesc.pPort,
  62:../cores/arduino/wiring_digital.cpp **** 					PIO_INPUT,
  63:../cores/arduino/wiring_digital.cpp **** 					pinDesc.ulPin,
  64:../cores/arduino/wiring_digital.cpp **** 					(debounceCutoff == 0) ? PIO_PULLUP : PIO_PULLUP | PIO_DEBOUNCE);
  65:../cores/arduino/wiring_digital.cpp **** 			if (debounceCutoff != 0)
  66:../cores/arduino/wiring_digital.cpp **** 			{
  67:../cores/arduino/wiring_digital.cpp **** 				pio_set_debounce_filter(pinDesc.pPort, pinDesc.ulPin, debounceCutoff);	// enable debounce filte
  68:../cores/arduino/wiring_digital.cpp **** 			}
  69:../cores/arduino/wiring_digital.cpp **** 			break;
  70:../cores/arduino/wiring_digital.cpp **** 
  71:../cores/arduino/wiring_digital.cpp **** #if SAM4E || SAM4S || SAME70
  72:../cores/arduino/wiring_digital.cpp **** 		case INPUT_PULLDOWN:
  73:../cores/arduino/wiring_digital.cpp **** 			/* Enable peripheral for clocking input */
  74:../cores/arduino/wiring_digital.cpp **** 			pmc_enable_periph_clk(pinDesc.ulPeripheralId);
  75:../cores/arduino/wiring_digital.cpp **** 			pio_pull_up(pinDesc.pPort, pinDesc.ulPin, 0);
  76:../cores/arduino/wiring_digital.cpp **** 			pio_pull_down(pinDesc.pPort, pinDesc.ulPin, 1);
  77:../cores/arduino/wiring_digital.cpp **** 			pio_configure(
  78:../cores/arduino/wiring_digital.cpp **** 					pinDesc.pPort,
  79:../cores/arduino/wiring_digital.cpp **** 					PIO_INPUT,
  80:../cores/arduino/wiring_digital.cpp **** 					pinDesc.ulPin,
ARM GAS  /tmp/ccxS4laR.s 			page 4


  81:../cores/arduino/wiring_digital.cpp **** 					(debounceCutoff == 0) ? 0 : PIO_DEBOUNCE);
  82:../cores/arduino/wiring_digital.cpp **** 			if (debounceCutoff != 0)
  83:../cores/arduino/wiring_digital.cpp **** 			{
  84:../cores/arduino/wiring_digital.cpp **** 				pio_set_debounce_filter(pinDesc.pPort, pinDesc.ulPin, debounceCutoff);	// enable debounce filte
  85:../cores/arduino/wiring_digital.cpp **** 			}
  86:../cores/arduino/wiring_digital.cpp **** 			break;
  87:../cores/arduino/wiring_digital.cpp **** #endif
  88:../cores/arduino/wiring_digital.cpp **** 
  89:../cores/arduino/wiring_digital.cpp **** 		case OUTPUT_LOW:
  90:../cores/arduino/wiring_digital.cpp **** 			pio_configure(
  91:../cores/arduino/wiring_digital.cpp **** 					pinDesc.pPort,
  92:../cores/arduino/wiring_digital.cpp **** 					PIO_OUTPUT_0,
  93:../cores/arduino/wiring_digital.cpp **** 					pinDesc.ulPin,
  94:../cores/arduino/wiring_digital.cpp **** 					pinDesc.ulPinConfiguration);
  95:../cores/arduino/wiring_digital.cpp **** 
  96:../cores/arduino/wiring_digital.cpp **** 			/* if all pins are output, disable PIO Controller clocking, reduce power consumption */
  97:../cores/arduino/wiring_digital.cpp **** 			if (pinDesc.pPort->PIO_OSR == 0xffffffff)
  98:../cores/arduino/wiring_digital.cpp **** 			{
  99:../cores/arduino/wiring_digital.cpp **** 				pmc_disable_periph_clk(pinDesc.ulPeripheralId);
 100:../cores/arduino/wiring_digital.cpp **** 			}
 101:../cores/arduino/wiring_digital.cpp **** 			break;
 102:../cores/arduino/wiring_digital.cpp **** 
 103:../cores/arduino/wiring_digital.cpp **** 		case OUTPUT_HIGH:
 104:../cores/arduino/wiring_digital.cpp **** 			pio_configure(
 105:../cores/arduino/wiring_digital.cpp **** 					pinDesc.pPort,
 106:../cores/arduino/wiring_digital.cpp **** 					PIO_OUTPUT_1,
 107:../cores/arduino/wiring_digital.cpp **** 					pinDesc.ulPin,
 108:../cores/arduino/wiring_digital.cpp **** 					pinDesc.ulPinConfiguration);
 109:../cores/arduino/wiring_digital.cpp **** 
 110:../cores/arduino/wiring_digital.cpp **** 			/* if all pins are output, disable PIO Controller clocking, reduce power consumption */
 111:../cores/arduino/wiring_digital.cpp **** 			if (pinDesc.pPort->PIO_OSR == 0xffffffff)
 112:../cores/arduino/wiring_digital.cpp **** 			{
 113:../cores/arduino/wiring_digital.cpp **** 				pmc_disable_periph_clk(pinDesc.ulPeripheralId);
 114:../cores/arduino/wiring_digital.cpp **** 			}
 115:../cores/arduino/wiring_digital.cpp **** 			break;
 116:../cores/arduino/wiring_digital.cpp **** 
 117:../cores/arduino/wiring_digital.cpp **** 		case OUTPUT_PWM_LOW:
 118:../cores/arduino/wiring_digital.cpp **** 			if ((pinDesc.ulPinAttribute & (PIN_ATTR_PWM | PIN_ATTR_TIMER)) != 0)
 119:../cores/arduino/wiring_digital.cpp **** 			{
 120:../cores/arduino/wiring_digital.cpp **** 				AnalogOut(pin, 0.0, 0);							// set it to zero frequency to force re-initialisation on next An
 121:../cores/arduino/wiring_digital.cpp **** 			}
 122:../cores/arduino/wiring_digital.cpp **** 			break;
 123:../cores/arduino/wiring_digital.cpp **** 
 124:../cores/arduino/wiring_digital.cpp **** 		case OUTPUT_PWM_HIGH:
 125:../cores/arduino/wiring_digital.cpp **** 			if ((pinDesc.ulPinAttribute & (PIN_ATTR_PWM | PIN_ATTR_TIMER)) != 0)
  91              		.loc 1 125 0
  92 0030 241A     		subs	r4, r4, r0
  93 0032 05EB8405 		add	r5, r5, r4, lsl #2
  94 0036 6B69     		ldr	r3, [r5, #20]
  95 0038 13F0180F 		tst	r3, #24
  96 003c F5D0     		beq	.L1
 126:../cores/arduino/wiring_digital.cpp **** 			{
 127:../cores/arduino/wiring_digital.cpp **** 				AnalogOut(pin, 1.0, 0);							// set it to zero frequency to force re-initialisation on next An
  97              		.loc 1 127 0
  98 003e 0021     		movs	r1, #0
  99              	.LVL5:
 100 0040 B7EE000A 		vmov.f32	s0, #1.0e+0
ARM GAS  /tmp/ccxS4laR.s 			page 5


 128:../cores/arduino/wiring_digital.cpp **** 			}
 129:../cores/arduino/wiring_digital.cpp **** 			break;
 130:../cores/arduino/wiring_digital.cpp **** 
 131:../cores/arduino/wiring_digital.cpp **** 		case AIN:
 132:../cores/arduino/wiring_digital.cpp **** 			pio_pull_up(pinDesc.pPort, pinDesc.ulPin, 0);		// turn off pullup
 133:../cores/arduino/wiring_digital.cpp **** #if SAM4E || SAM4S || SAME70
 134:../cores/arduino/wiring_digital.cpp **** 			pio_pull_down(pinDesc.pPort, pinDesc.ulPin, 0);		// turn off pulldown
 135:../cores/arduino/wiring_digital.cpp **** #endif
 136:../cores/arduino/wiring_digital.cpp **** 			// Ideally we should record which pins are being used as analog inputs, then we can disable the 
 137:../cores/arduino/wiring_digital.cpp **** 			// on any PIO that is being used solely for outputs and ADC inputs. But for now we don't do that
 138:../cores/arduino/wiring_digital.cpp **** 			break;
 139:../cores/arduino/wiring_digital.cpp **** 
 140:../cores/arduino/wiring_digital.cpp **** 		case SPECIAL:
 141:../cores/arduino/wiring_digital.cpp **** 			ConfigurePin(pinDesc);
 142:../cores/arduino/wiring_digital.cpp **** 			break;
 143:../cores/arduino/wiring_digital.cpp **** 
 144:../cores/arduino/wiring_digital.cpp **** 		default:
 145:../cores/arduino/wiring_digital.cpp **** 			break;
 146:../cores/arduino/wiring_digital.cpp **** 	}
 147:../cores/arduino/wiring_digital.cpp **** }
 101              		.loc 1 147 0
 102 0044 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 103              		.cfi_remember_state
 104              		.cfi_restore 14
 105              		.cfi_restore 8
 106              		.cfi_restore 7
 107              		.cfi_restore 6
 108              		.cfi_restore 5
 109              		.cfi_restore 4
 110              		.cfi_def_cfa_offset 0
 127:../cores/arduino/wiring_digital.cpp **** 			}
 111              		.loc 1 127 0
 112 0048 FFF7FEBF 		b	_Z9AnalogOuthft
 113              	.LVL6:
 114              	.L5:
 115              		.cfi_restore_state
  38:../cores/arduino/wiring_digital.cpp **** 			pio_pull_up(pinDesc.pPort, pinDesc.ulPin, 0);		// turn off pullup
 116              		.loc 1 38 0
 117 004c 201A     		subs	r0, r4, r0
 118              	.LVL7:
 119 004e 8400     		lsls	r4, r0, #2
 120 0050 2F19     		adds	r7, r5, r4
 121 0052 B868     		ldr	r0, [r7, #8]
 122 0054 FFF7FEFF 		bl	pmc_enable_periph_clk
 123              	.LVL8:
  39:../cores/arduino/wiring_digital.cpp **** #if SAM4E || SAM4S || SAME70
 124              		.loc 1 39 0
 125 0058 7968     		ldr	r1, [r7, #4]
 126 005a 2859     		ldr	r0, [r5, r4]
 127 005c 0022     		movs	r2, #0
 128 005e FFF7FEFF 		bl	pio_pull_up
 129              	.LVL9:
  41:../cores/arduino/wiring_digital.cpp **** #endif
 130              		.loc 1 41 0
 131 0062 2859     		ldr	r0, [r5, r4]
 132 0064 0022     		movs	r2, #0
 133 0066 7968     		ldr	r1, [r7, #4]
ARM GAS  /tmp/ccxS4laR.s 			page 6


 134 0068 FFF7FEFF 		bl	pio_pull_down
 135              	.LVL10:
  46:../cores/arduino/wiring_digital.cpp **** 					(debounceCutoff == 0) ? 0 : PIO_DEBOUNCE);
 136              		.loc 1 46 0
 137 006c 7A68     		ldr	r2, [r7, #4]
  44:../cores/arduino/wiring_digital.cpp **** 					PIO_INPUT,
 138              		.loc 1 44 0
 139 006e 2859     		ldr	r0, [r5, r4]
  43:../cores/arduino/wiring_digital.cpp **** 					pinDesc.pPort,
 140              		.loc 1 43 0
 141 0070 002E     		cmp	r6, #0
 142 0072 30D1     		bne	.L32
 143              	.L19:
  81:../cores/arduino/wiring_digital.cpp **** 			if (debounceCutoff != 0)
 144              		.loc 1 81 0
 145 0074 3346     		mov	r3, r6
 146 0076 4FF02051 		mov	r1, #671088640
 147              		.loc 1 147 0
 148 007a BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 149              		.cfi_remember_state
 150              		.cfi_restore 14
 151              		.cfi_restore 8
 152              		.cfi_restore 7
 153              		.cfi_restore 6
 154              		.cfi_restore 5
 155              		.cfi_restore 4
 156              		.cfi_def_cfa_offset 0
 157              	.LVL11:
  81:../cores/arduino/wiring_digital.cpp **** 			if (debounceCutoff != 0)
 158              		.loc 1 81 0
 159 007e FFF7FEBF 		b	pio_configure
 160              	.LVL12:
 161              	.L7:
 162              		.cfi_restore_state
  56:../cores/arduino/wiring_digital.cpp **** #if SAM4E || SAM4S || SAME70
 163              		.loc 1 56 0
 164 0082 201A     		subs	r0, r4, r0
 165              	.LVL13:
 166 0084 8400     		lsls	r4, r0, #2
 167 0086 2F19     		adds	r7, r5, r4
 168 0088 B868     		ldr	r0, [r7, #8]
 169 008a FFF7FEFF 		bl	pmc_enable_periph_clk
 170              	.LVL14:
  58:../cores/arduino/wiring_digital.cpp **** #endif
 171              		.loc 1 58 0
 172 008e 2859     		ldr	r0, [r5, r4]
 173 0090 0022     		movs	r2, #0
 174 0092 7968     		ldr	r1, [r7, #4]
 175 0094 FFF7FEFF 		bl	pio_pull_down
 176              	.LVL15:
  63:../cores/arduino/wiring_digital.cpp **** 					(debounceCutoff == 0) ? PIO_PULLUP : PIO_PULLUP | PIO_DEBOUNCE);
 177              		.loc 1 63 0
 178 0098 7A68     		ldr	r2, [r7, #4]
  61:../cores/arduino/wiring_digital.cpp **** 					PIO_INPUT,
 179              		.loc 1 61 0
 180 009a 2859     		ldr	r0, [r5, r4]
  60:../cores/arduino/wiring_digital.cpp **** 					pinDesc.pPort,
ARM GAS  /tmp/ccxS4laR.s 			page 7


 181              		.loc 1 60 0
 182 009c 002E     		cmp	r6, #0
 183 009e 63D1     		bne	.L43
  64:../cores/arduino/wiring_digital.cpp **** 			if (debounceCutoff != 0)
 184              		.loc 1 64 0
 185 00a0 0123     		movs	r3, #1
 186 00a2 4FF02051 		mov	r1, #671088640
 187              		.loc 1 147 0
 188 00a6 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 189              		.cfi_remember_state
 190              		.cfi_restore 14
 191              		.cfi_restore 8
 192              		.cfi_restore 7
 193              		.cfi_restore 6
 194              		.cfi_restore 5
 195              		.cfi_restore 4
 196              		.cfi_def_cfa_offset 0
 197              	.LVL16:
  64:../cores/arduino/wiring_digital.cpp **** 			if (debounceCutoff != 0)
 198              		.loc 1 64 0
 199 00aa FFF7FEBF 		b	pio_configure
 200              	.LVL17:
 201              	.L8:
 202              		.cfi_restore_state
  74:../cores/arduino/wiring_digital.cpp **** 			pio_pull_up(pinDesc.pPort, pinDesc.ulPin, 0);
 203              		.loc 1 74 0
 204 00ae 201A     		subs	r0, r4, r0
 205              	.LVL18:
 206 00b0 8400     		lsls	r4, r0, #2
 207 00b2 2F19     		adds	r7, r5, r4
 208 00b4 B868     		ldr	r0, [r7, #8]
 209 00b6 FFF7FEFF 		bl	pmc_enable_periph_clk
 210              	.LVL19:
  75:../cores/arduino/wiring_digital.cpp **** 			pio_pull_down(pinDesc.pPort, pinDesc.ulPin, 1);
 211              		.loc 1 75 0
 212 00ba 7968     		ldr	r1, [r7, #4]
 213 00bc 2859     		ldr	r0, [r5, r4]
 214 00be 0022     		movs	r2, #0
 215 00c0 FFF7FEFF 		bl	pio_pull_up
 216              	.LVL20:
  76:../cores/arduino/wiring_digital.cpp **** 			pio_configure(
 217              		.loc 1 76 0
 218 00c4 2859     		ldr	r0, [r5, r4]
 219 00c6 0122     		movs	r2, #1
 220 00c8 7968     		ldr	r1, [r7, #4]
 221 00ca FFF7FEFF 		bl	pio_pull_down
 222              	.LVL21:
  80:../cores/arduino/wiring_digital.cpp **** 					(debounceCutoff == 0) ? 0 : PIO_DEBOUNCE);
 223              		.loc 1 80 0
 224 00ce 7A68     		ldr	r2, [r7, #4]
  78:../cores/arduino/wiring_digital.cpp **** 					PIO_INPUT,
 225              		.loc 1 78 0
 226 00d0 2859     		ldr	r0, [r5, r4]
  77:../cores/arduino/wiring_digital.cpp **** 					pinDesc.pPort,
 227              		.loc 1 77 0
 228 00d2 002E     		cmp	r6, #0
 229 00d4 CED0     		beq	.L19
ARM GAS  /tmp/ccxS4laR.s 			page 8


 230              	.L32:
  81:../cores/arduino/wiring_digital.cpp **** 			if (debounceCutoff != 0)
 231              		.loc 1 81 0
 232 00d6 0823     		movs	r3, #8
 233              	.L38:
  64:../cores/arduino/wiring_digital.cpp **** 			if (debounceCutoff != 0)
 234              		.loc 1 64 0
 235 00d8 4FF02051 		mov	r1, #671088640
 236 00dc FFF7FEFF 		bl	pio_configure
 237              	.LVL22:
  67:../cores/arduino/wiring_digital.cpp **** 			}
 238              		.loc 1 67 0
 239 00e0 3246     		mov	r2, r6
 240 00e2 7968     		ldr	r1, [r7, #4]
 241 00e4 2859     		ldr	r0, [r5, r4]
 242              		.loc 1 147 0
 243 00e6 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 244              		.cfi_remember_state
 245              		.cfi_restore 14
 246              		.cfi_restore 8
 247              		.cfi_restore 7
 248              		.cfi_restore 6
 249              		.cfi_restore 5
 250              		.cfi_restore 4
 251              		.cfi_def_cfa_offset 0
 252              	.LVL23:
  67:../cores/arduino/wiring_digital.cpp **** 			}
 253              		.loc 1 67 0
 254 00ea FFF7FEBF 		b	pio_set_debounce_filter
 255              	.LVL24:
 256              	.L9:
 257              		.cfi_restore_state
  94:../cores/arduino/wiring_digital.cpp **** 
 258              		.loc 1 94 0
 259 00ee 201A     		subs	r0, r4, r0
 260              	.LVL25:
 261 00f0 4FF04051 		mov	r1, #805306368
 262              	.LVL26:
 263              	.L40:
 108:../cores/arduino/wiring_digital.cpp **** 
 264              		.loc 1 108 0
 265 00f4 8400     		lsls	r4, r0, #2
 266 00f6 2E19     		adds	r6, r5, r4
 267 00f8 2859     		ldr	r0, [r5, r4]
 268 00fa 3369     		ldr	r3, [r6, #16]
 269 00fc 7268     		ldr	r2, [r6, #4]
 270              	.LVL27:
 271 00fe FFF7FEFF 		bl	pio_configure
 272              	.LVL28:
 111:../cores/arduino/wiring_digital.cpp **** 			{
 273              		.loc 1 111 0
 274 0102 2B59     		ldr	r3, [r5, r4]
 275 0104 9B69     		ldr	r3, [r3, #24]
 276 0106 0133     		adds	r3, r3, #1
 277 0108 8FD1     		bne	.L1
 113:../cores/arduino/wiring_digital.cpp **** 			}
 278              		.loc 1 113 0
ARM GAS  /tmp/ccxS4laR.s 			page 9


 279 010a B068     		ldr	r0, [r6, #8]
 280              		.loc 1 147 0
 281 010c BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 282              		.cfi_remember_state
 283              		.cfi_restore 14
 284              		.cfi_restore 8
 285              		.cfi_restore 7
 286              		.cfi_restore 6
 287              		.cfi_restore 5
 288              		.cfi_restore 4
 289              		.cfi_def_cfa_offset 0
 113:../cores/arduino/wiring_digital.cpp **** 			}
 290              		.loc 1 113 0
 291 0110 FFF7FEBF 		b	pmc_disable_periph_clk
 292              	.LVL29:
 293              	.L10:
 294              		.cfi_restore_state
 108:../cores/arduino/wiring_digital.cpp **** 
 295              		.loc 1 108 0
 296 0114 201A     		subs	r0, r4, r0
 297              	.LVL30:
 298 0116 4FF06051 		mov	r1, #939524096
 299              	.LVL31:
 300 011a EBE7     		b	.L40
 301              	.LVL32:
 302              	.L11:
 132:../cores/arduino/wiring_digital.cpp **** #if SAM4E || SAM4S || SAME70
 303              		.loc 1 132 0
 304 011c 201A     		subs	r0, r4, r0
 305              	.LVL33:
 306 011e 0022     		movs	r2, #0
 307              	.LVL34:
 308 0120 8400     		lsls	r4, r0, #2
 309 0122 2E19     		adds	r6, r5, r4
 310              	.LVL35:
 311 0124 2859     		ldr	r0, [r5, r4]
 312 0126 7168     		ldr	r1, [r6, #4]
 313              	.LVL36:
 314 0128 FFF7FEFF 		bl	pio_pull_up
 315              	.LVL37:
 134:../cores/arduino/wiring_digital.cpp **** #endif
 316              		.loc 1 134 0
 317 012c 7168     		ldr	r1, [r6, #4]
 318 012e 2859     		ldr	r0, [r5, r4]
 319 0130 0022     		movs	r2, #0
 320              		.loc 1 147 0
 321 0132 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 322              		.cfi_remember_state
 323              		.cfi_restore 14
 324              		.cfi_restore 8
 325              		.cfi_restore 7
 326              		.cfi_restore 6
 327              		.cfi_restore 5
 328              		.cfi_restore 4
 329              		.cfi_def_cfa_offset 0
 134:../cores/arduino/wiring_digital.cpp **** #endif
 330              		.loc 1 134 0
ARM GAS  /tmp/ccxS4laR.s 			page 10


 331 0136 FFF7FEBF 		b	pio_pull_down
 332              	.LVL38:
 333              	.L12:
 334              		.cfi_restore_state
  28:../cores/arduino/wiring_digital.cpp ****     if (pinDesc.ulPinType == PIO_NOT_A_PIN)
 335              		.loc 1 28 0
 336 013a C0EBC000 		rsb	r0, r0, r0, lsl #3
 337              	.LVL39:
 141:../cores/arduino/wiring_digital.cpp **** 			break;
 338              		.loc 1 141 0
 339 013e 05EB8000 		add	r0, r5, r0, lsl #2
 340              		.loc 1 147 0
 341 0142 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 342              		.cfi_remember_state
 343              		.cfi_restore 14
 344              		.cfi_restore 8
 345              		.cfi_restore 7
 346              		.cfi_restore 6
 347              		.cfi_restore 5
 348              		.cfi_restore 4
 349              		.cfi_def_cfa_offset 0
 141:../cores/arduino/wiring_digital.cpp **** 			break;
 350              		.loc 1 141 0
 351 0146 FFF7FEBF 		b	_Z12ConfigurePinRK14PinDescription
 352              	.LVL40:
 353              	.L13:
 354              		.cfi_restore_state
 118:../cores/arduino/wiring_digital.cpp **** 			{
 355              		.loc 1 118 0
 356 014a 241A     		subs	r4, r4, r0
 357 014c 05EB8405 		add	r5, r5, r4, lsl #2
 358 0150 6B69     		ldr	r3, [r5, #20]
 359 0152 13F0180F 		tst	r3, #24
 360 0156 3FF468AF 		beq	.L1
 120:../cores/arduino/wiring_digital.cpp **** 			}
 361              		.loc 1 120 0
 362 015a 0021     		movs	r1, #0
 363              	.LVL41:
 364 015c 9FED040A 		vldr.32	s0, .L44+4
 365              		.loc 1 147 0
 366 0160 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 367              		.cfi_remember_state
 368              		.cfi_restore 14
 369              		.cfi_restore 8
 370              		.cfi_restore 7
 371              		.cfi_restore 6
 372              		.cfi_restore 5
 373              		.cfi_restore 4
 374              		.cfi_def_cfa_offset 0
 120:../cores/arduino/wiring_digital.cpp **** 			}
 375              		.loc 1 120 0
 376 0164 FFF7FEBF 		b	_Z9AnalogOuthft
 377              	.LVL42:
 378              	.L43:
 379              		.cfi_restore_state
  64:../cores/arduino/wiring_digital.cpp **** 			if (debounceCutoff != 0)
 380              		.loc 1 64 0
ARM GAS  /tmp/ccxS4laR.s 			page 11


 381 0168 0923     		movs	r3, #9
 382 016a B5E7     		b	.L38
 383              	.L45:
 384              		.align	2
 385              	.L44:
 386 016c 00000000 		.word	g_APinDescription
 387 0170 00000000 		.word	0
 388              		.cfi_endproc
 389              	.LFE525:
 390              		.size	pinModeDuet, .-pinModeDuet
 391              		.section	.text.digitalWrite,"ax",%progbits
 392              		.align	1
 393              		.p2align 2,,3
 394              		.global	digitalWrite
 395              		.syntax unified
 396              		.thumb
 397              		.thumb_func
 398              		.fpu fpv5-d16
 399              		.type	digitalWrite, %function
 400              	digitalWrite:
 401              	.LFB526:
 148:../cores/arduino/wiring_digital.cpp **** 
 149:../cores/arduino/wiring_digital.cpp **** // This has now been optimised to speed it up, so it may no longer be used to enable the pullup res
 150:../cores/arduino/wiring_digital.cpp **** extern "C"  void digitalWrite(Pin pin, bool ulVal)
 151:../cores/arduino/wiring_digital.cpp **** {
 402              		.loc 1 151 0
 403              		.cfi_startproc
 404              		@ args = 0, pretend = 0, frame = 0
 405              		@ frame_needed = 0, uses_anonymous_args = 0
 406              		@ link register save eliminated.
 407              	.LVL43:
 408              	.LBB2:
 152:../cores/arduino/wiring_digital.cpp **** 	if (pin <= MaxPinNumber)
 409              		.loc 1 152 0
 410 0000 3228     		cmp	r0, #50
 411 0002 0DD8     		bhi	.L56
 412              	.LVL44:
 413              	.LBB3:
 153:../cores/arduino/wiring_digital.cpp **** 	{
 154:../cores/arduino/wiring_digital.cpp **** 		const PinDescription& pinDesc = g_APinDescription[pin];
 155:../cores/arduino/wiring_digital.cpp **** 		if (pinDesc.ulPinType != PIO_NOT_A_PIN)
 414              		.loc 1 155 0
 415 0004 C0EBC000 		rsb	r0, r0, r0, lsl #3
 416              	.LVL45:
 417 0008 074A     		ldr	r2, .L58
 418 000a 8000     		lsls	r0, r0, #2
 419 000c 1318     		adds	r3, r2, r0
 420              	.LBE3:
 421              	.LBE2:
 151:../cores/arduino/wiring_digital.cpp **** 	if (pin <= MaxPinNumber)
 422              		.loc 1 151 0
 423 000e 10B4     		push	{r4}
 424              		.cfi_def_cfa_offset 4
 425              		.cfi_offset 4, -4
 426              	.LBB6:
 427              	.LBB4:
 428              		.loc 1 155 0
ARM GAS  /tmp/ccxS4laR.s 			page 12


 429 0010 DC68     		ldr	r4, [r3, #12]
 430 0012 1CB1     		cbz	r4, .L46
 156:../cores/arduino/wiring_digital.cpp **** 		{
 157:../cores/arduino/wiring_digital.cpp **** 			if (ulVal)
 158:../cores/arduino/wiring_digital.cpp **** 			{
 159:../cores/arduino/wiring_digital.cpp **** 				pinDesc.pPort->PIO_SODR = pinDesc.ulPin;
 431              		.loc 1 159 0
 432 0014 1258     		ldr	r2, [r2, r0]
 433 0016 5B68     		ldr	r3, [r3, #4]
 157:../cores/arduino/wiring_digital.cpp **** 			{
 434              		.loc 1 157 0
 435 0018 19B9     		cbnz	r1, .L57
 160:../cores/arduino/wiring_digital.cpp **** 			}
 161:../cores/arduino/wiring_digital.cpp **** 			else
 162:../cores/arduino/wiring_digital.cpp **** 			{
 163:../cores/arduino/wiring_digital.cpp **** 				pinDesc.pPort->PIO_CODR = pinDesc.ulPin;
 436              		.loc 1 163 0
 437 001a 5363     		str	r3, [r2, #52]
 438              	.L46:
 439              	.LBE4:
 440              	.LBE6:
 164:../cores/arduino/wiring_digital.cpp **** 			}
 165:../cores/arduino/wiring_digital.cpp **** 		}
 166:../cores/arduino/wiring_digital.cpp **** 	}
 167:../cores/arduino/wiring_digital.cpp **** }
 441              		.loc 1 167 0
 442 001c 5DF8044B 		ldr	r4, [sp], #4
 443              		.cfi_restore 4
 444              		.cfi_def_cfa_offset 0
 445              	.L56:
 446 0020 7047     		bx	lr
 447              	.L57:
 448              		.cfi_def_cfa_offset 4
 449              		.cfi_offset 4, -4
 450              	.LBB7:
 451              	.LBB5:
 159:../cores/arduino/wiring_digital.cpp **** 			}
 452              		.loc 1 159 0
 453 0022 1363     		str	r3, [r2, #48]
 454 0024 FAE7     		b	.L46
 455              	.L59:
 456 0026 00BF     		.align	2
 457              	.L58:
 458 0028 00000000 		.word	g_APinDescription
 459              	.LBE5:
 460              	.LBE7:
 461              		.cfi_endproc
 462              	.LFE526:
 463              		.size	digitalWrite, .-digitalWrite
 464              		.section	.text.digitalRead,"ax",%progbits
 465              		.align	1
 466              		.p2align 2,,3
 467              		.global	digitalRead
 468              		.syntax unified
 469              		.thumb
 470              		.thumb_func
 471              		.fpu fpv5-d16
ARM GAS  /tmp/ccxS4laR.s 			page 13


 472              		.type	digitalRead, %function
 473              	digitalRead:
 474              	.LFB527:
 168:../cores/arduino/wiring_digital.cpp **** 
 169:../cores/arduino/wiring_digital.cpp **** extern "C" bool digitalRead(Pin pin)
 170:../cores/arduino/wiring_digital.cpp **** {
 475              		.loc 1 170 0
 476              		.cfi_startproc
 477              		@ args = 0, pretend = 0, frame = 0
 478              		@ frame_needed = 0, uses_anonymous_args = 0
 479              	.LVL46:
 171:../cores/arduino/wiring_digital.cpp **** 	if (pin > MaxPinNumber)
 480              		.loc 1 171 0
 481 0000 3228     		cmp	r0, #50
 482 0002 12D8     		bhi	.L62
 483              	.LVL47:
 172:../cores/arduino/wiring_digital.cpp **** 	{
 173:../cores/arduino/wiring_digital.cpp **** 		return false;
 174:../cores/arduino/wiring_digital.cpp **** 	}
 175:../cores/arduino/wiring_digital.cpp **** 
 176:../cores/arduino/wiring_digital.cpp **** 	const PinDescription& pinDesc = g_APinDescription[pin];
 177:../cores/arduino/wiring_digital.cpp **** 	if (pinDesc.ulPinType == PIO_NOT_A_PIN)
 484              		.loc 1 177 0
 485 0004 C0EBC000 		rsb	r0, r0, r0, lsl #3
 486              	.LVL48:
 170:../cores/arduino/wiring_digital.cpp **** 	if (pin > MaxPinNumber)
 487              		.loc 1 170 0
 488 0008 10B5     		push	{r4, lr}
 489              		.cfi_def_cfa_offset 8
 490              		.cfi_offset 4, -8
 491              		.cfi_offset 14, -4
 492              		.loc 1 177 0
 493 000a 8300     		lsls	r3, r0, #2
 494 000c 084C     		ldr	r4, .L69
 495 000e E218     		adds	r2, r4, r3
 496 0010 D068     		ldr	r0, [r2, #12]
 497 0012 00B9     		cbnz	r0, .L68
 178:../cores/arduino/wiring_digital.cpp ****     {
 179:../cores/arduino/wiring_digital.cpp ****         return false;
 180:../cores/arduino/wiring_digital.cpp ****     }
 181:../cores/arduino/wiring_digital.cpp **** 
 182:../cores/arduino/wiring_digital.cpp **** 	return (bool)pio_get(pinDesc.pPort, PIO_INPUT, pinDesc.ulPin);
 183:../cores/arduino/wiring_digital.cpp **** }
 498              		.loc 1 183 0
 499 0014 10BD     		pop	{r4, pc}
 500              	.L68:
 182:../cores/arduino/wiring_digital.cpp **** }
 501              		.loc 1 182 0
 502 0016 5268     		ldr	r2, [r2, #4]
 503 0018 4FF02051 		mov	r1, #671088640
 504 001c E058     		ldr	r0, [r4, r3]
 505 001e FFF7FEFF 		bl	pio_get
 506              	.LVL49:
 507 0022 0030     		adds	r0, r0, #0
 508 0024 18BF     		it	ne
 509 0026 0120     		movne	r0, #1
 510 0028 10BD     		pop	{r4, pc}
ARM GAS  /tmp/ccxS4laR.s 			page 14


 511              	.LVL50:
 512              	.L62:
 513              		.cfi_def_cfa_offset 0
 514              		.cfi_restore 4
 515              		.cfi_restore 14
 173:../cores/arduino/wiring_digital.cpp **** 	}
 516              		.loc 1 173 0
 517 002a 0020     		movs	r0, #0
 518              	.LVL51:
 519 002c 7047     		bx	lr
 520              	.L70:
 521 002e 00BF     		.align	2
 522              	.L69:
 523 0030 00000000 		.word	g_APinDescription
 524              		.cfi_endproc
 525              	.LFE527:
 526              		.size	digitalRead, .-digitalRead
 527              		.section	.text.setPullup,"ax",%progbits
 528              		.align	1
 529              		.p2align 2,,3
 530              		.global	setPullup
 531              		.syntax unified
 532              		.thumb
 533              		.thumb_func
 534              		.fpu fpv5-d16
 535              		.type	setPullup, %function
 536              	setPullup:
 537              	.LFB528:
 184:../cores/arduino/wiring_digital.cpp **** 
 185:../cores/arduino/wiring_digital.cpp **** extern "C" void setPullup(Pin pin, bool en)
 186:../cores/arduino/wiring_digital.cpp **** {
 538              		.loc 1 186 0
 539              		.cfi_startproc
 540              		@ args = 0, pretend = 0, frame = 0
 541              		@ frame_needed = 0, uses_anonymous_args = 0
 542              		@ link register save eliminated.
 543              	.LVL52:
 544              	.LBB8:
 187:../cores/arduino/wiring_digital.cpp **** 	if (pin <= MaxPinNumber)
 545              		.loc 1 187 0
 546 0000 3228     		cmp	r0, #50
 547 0002 09D8     		bhi	.L80
 548              	.LVL53:
 549              	.LBB9:
 188:../cores/arduino/wiring_digital.cpp **** 	{
 189:../cores/arduino/wiring_digital.cpp **** 		const PinDescription& pinDesc = g_APinDescription[pin];
 190:../cores/arduino/wiring_digital.cpp **** 		if (pinDesc.ulPinType != PIO_NOT_A_PIN)
 550              		.loc 1 190 0
 551 0004 C0EBC000 		rsb	r0, r0, r0, lsl #3
 552              	.LVL54:
 553 0008 074B     		ldr	r3, .L82
 554 000a 8000     		lsls	r0, r0, #2
 555              	.LBE9:
 556              	.LBE8:
 186:../cores/arduino/wiring_digital.cpp **** 	if (pin <= MaxPinNumber)
 557              		.loc 1 186 0
 558 000c 10B4     		push	{r4}
ARM GAS  /tmp/ccxS4laR.s 			page 15


 559              		.cfi_def_cfa_offset 4
 560              		.cfi_offset 4, -4
 561              	.LBB13:
 562              	.LBB10:
 563              		.loc 1 190 0
 564 000e 1C18     		adds	r4, r3, r0
 565 0010 E268     		ldr	r2, [r4, #12]
 566 0012 12B9     		cbnz	r2, .L81
 567              	.LBE10:
 568              	.LBE13:
 191:../cores/arduino/wiring_digital.cpp **** 		{
 192:../cores/arduino/wiring_digital.cpp **** 			pio_pull_up(pinDesc.pPort, pinDesc.ulPin, (uint32_t)en) ;
 193:../cores/arduino/wiring_digital.cpp **** 		}
 194:../cores/arduino/wiring_digital.cpp **** 	}
 195:../cores/arduino/wiring_digital.cpp **** }
 569              		.loc 1 195 0
 570 0014 5DF8044B 		ldr	r4, [sp], #4
 571              		.cfi_restore 4
 572              		.cfi_def_cfa_offset 0
 573              	.L80:
 574 0018 7047     		bx	lr
 575              	.L81:
 576              		.cfi_def_cfa_offset 4
 577              		.cfi_offset 4, -4
 578              	.LBB14:
 579              	.LBB11:
 192:../cores/arduino/wiring_digital.cpp **** 		}
 580              		.loc 1 192 0
 581 001a 0A46     		mov	r2, r1
 582 001c 1858     		ldr	r0, [r3, r0]
 583 001e 6168     		ldr	r1, [r4, #4]
 584              	.LVL55:
 585              	.LBE11:
 586              	.LBE14:
 587              		.loc 1 195 0
 588 0020 5DF8044B 		ldr	r4, [sp], #4
 589              		.cfi_restore 4
 590              		.cfi_def_cfa_offset 0
 591              	.LBB15:
 592              	.LBB12:
 192:../cores/arduino/wiring_digital.cpp **** 		}
 593              		.loc 1 192 0
 594 0024 FFF7FEBF 		b	pio_pull_up
 595              	.LVL56:
 596              	.L83:
 597              		.align	2
 598              	.L82:
 599 0028 00000000 		.word	g_APinDescription
 600              	.LBE12:
 601              	.LBE15:
 602              		.cfi_endproc
 603              	.LFE528:
 604              		.size	setPullup, .-setPullup
 605              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 606              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 607              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 608              	_ZL28cpu_irq_prev_interrupt_state:
ARM GAS  /tmp/ccxS4laR.s 			page 16


 609 0000 00       		.space	1
 610              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 611              		.align	2
 612              		.type	_ZL32cpu_irq_critical_section_counter, %object
 613              		.size	_ZL32cpu_irq_critical_section_counter, 4
 614              	_ZL32cpu_irq_critical_section_counter:
 615 0000 00000000 		.space	4
 616              		.text
 617              	.Letext0:
 618              		.file 2 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 619              		.file 3 "/usr/include/newlib/machine/_default_types.h"
 620              		.file 4 "/usr/include/newlib/sys/_stdint.h"
 621              		.file 5 "/usr/include/newlib/stdint.h"
 622              		.file 6 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 623              		.file 7 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 624              		.file 8 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/pio.
 625              		.file 9 "/usr/include/newlib/sys/lock.h"
 626              		.file 10 "/usr/include/newlib/sys/_types.h"
 627              		.file 11 "/usr/include/newlib/sys/reent.h"
 628              		.file 12 "/usr/include/newlib/c++/6.3.1/cstdlib"
 629              		.file 13 "/usr/include/newlib/c++/6.3.1/cmath"
 630              		.file 14 "/usr/include/newlib/c++/6.3.1/cstdint"
 631              		.file 15 "/usr/include/newlib/c++/6.3.1/cstddef"
 632              		.file 16 "/usr/include/newlib/c++/6.3.1/arm-none-eabi/thumb/v7e-m/fpv5/hard/bits/c++config.h"
 633              		.file 17 "/usr/include/newlib/stdlib.h"
 634              		.file 18 "/usr/include/newlib/c++/6.3.1/stdlib.h"
 635              		.file 19 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 636              		.file 20 "/usr/include/newlib/math.h"
 637              		.file 21 "/usr/include/newlib/c++/6.3.1/math.h"
 638              		.file 22 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/pio/pio.h"
 639              		.file 23 "../cores/arduino/Core.h"
 640              		.file 24 "/usr/include/newlib/ctype.h"
 641              		.file 25 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/RingBuffer.h"
 642              		.file 26 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h"
 643              		.file 27 "/usr/include/newlib/time.h"
 644              		.file 28 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/variant.h"
 645              		.file 29 "../cores/arduino/wiring_digital.h"
 646              		.file 30 "../cores/arduino/USB/USBSerial.h"
 647              		.file 31 "../cores/arduino/Print.h"
 648              		.file 32 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/pmc/pmc.h"
 649              		.file 33 "../cores/arduino/AnalogOut.h"
 650              		.file 34 "<built-in>"
 651              		.section	.debug_info,"",%progbits
 652              	.Ldebug_info0:
 653 0000 6C1D0000 		.4byte	0x1d6c
 654 0004 0400     		.2byte	0x4
 655 0006 00000000 		.4byte	.Ldebug_abbrev0
 656 000a 04       		.byte	0x4
 657 000b 01       		.uleb128 0x1
 658 000c E80D0000 		.4byte	.LASF437
 659 0010 04       		.byte	0x4
 660 0011 E8020000 		.4byte	.LASF438
 661 0015 27110000 		.4byte	.LASF439
 662 0019 48000000 		.4byte	.Ldebug_ranges0+0x48
 663 001d 00000000 		.4byte	0
 664 0021 00000000 		.4byte	.Ldebug_line0
 665 0025 02       		.uleb128 0x2
ARM GAS  /tmp/ccxS4laR.s 			page 17


 666 0026 04       		.byte	0x4
 667 0027 04       		.byte	0x4
 668 0028 920F0000 		.4byte	.LASF0
 669 002c 03       		.uleb128 0x3
 670 002d 04       		.byte	0x4
 671 002e 05       		.byte	0x5
 672 002f 696E7400 		.ascii	"int\000"
 673 0033 04       		.uleb128 0x4
 674 0034 FA050000 		.4byte	.LASF6
 675 0038 02       		.byte	0x2
 676 0039 D8       		.byte	0xd8
 677 003a 43000000 		.4byte	0x43
 678 003e 05       		.uleb128 0x5
 679 003f 33000000 		.4byte	0x33
 680 0043 02       		.uleb128 0x2
 681 0044 04       		.byte	0x4
 682 0045 07       		.byte	0x7
 683 0046 6F010000 		.4byte	.LASF1
 684 004a 06       		.uleb128 0x6
 685 004b 10       		.byte	0x10
 686 004c 02       		.byte	0x2
 687 004d AA01     		.2byte	0x1aa
 688 004f AB040000 		.4byte	.LASF440
 689 0053 72000000 		.4byte	0x72
 690 0057 07       		.uleb128 0x7
 691 0058 95040000 		.4byte	.LASF2
 692 005c 02       		.byte	0x2
 693 005d AB01     		.2byte	0x1ab
 694 005f 72000000 		.4byte	0x72
 695 0063 00       		.byte	0
 696 0064 07       		.uleb128 0x7
 697 0065 64040000 		.4byte	.LASF3
 698 0069 02       		.byte	0x2
 699 006a AC01     		.2byte	0x1ac
 700 006c 79000000 		.4byte	0x79
 701 0070 08       		.byte	0x8
 702 0071 00       		.byte	0
 703 0072 02       		.uleb128 0x2
 704 0073 08       		.byte	0x8
 705 0074 05       		.byte	0x5
 706 0075 5F090000 		.4byte	.LASF4
 707 0079 02       		.uleb128 0x2
 708 007a 08       		.byte	0x8
 709 007b 04       		.byte	0x4
 710 007c AF0B0000 		.4byte	.LASF5
 711 0080 08       		.uleb128 0x8
 712 0081 DC020000 		.4byte	.LASF7
 713 0085 02       		.byte	0x2
 714 0086 AD01     		.2byte	0x1ad
 715 0088 4A000000 		.4byte	0x4a
 716 008c 09       		.uleb128 0x9
 717 008d 56100000 		.4byte	.LASF441
 718 0091 04       		.uleb128 0x4
 719 0092 5B0B0000 		.4byte	.LASF8
 720 0096 03       		.byte	0x3
 721 0097 1B       		.byte	0x1b
 722 0098 9C000000 		.4byte	0x9c
ARM GAS  /tmp/ccxS4laR.s 			page 18


 723 009c 02       		.uleb128 0x2
 724 009d 01       		.byte	0x1
 725 009e 06       		.byte	0x6
 726 009f E1110000 		.4byte	.LASF9
 727 00a3 04       		.uleb128 0x4
 728 00a4 AF0D0000 		.4byte	.LASF10
 729 00a8 03       		.byte	0x3
 730 00a9 1D       		.byte	0x1d
 731 00aa AE000000 		.4byte	0xae
 732 00ae 02       		.uleb128 0x2
 733 00af 01       		.byte	0x1
 734 00b0 08       		.byte	0x8
 735 00b1 EC0F0000 		.4byte	.LASF11
 736 00b5 04       		.uleb128 0x4
 737 00b6 E8090000 		.4byte	.LASF12
 738 00ba 03       		.byte	0x3
 739 00bb 29       		.byte	0x29
 740 00bc C0000000 		.4byte	0xc0
 741 00c0 02       		.uleb128 0x2
 742 00c1 02       		.byte	0x2
 743 00c2 05       		.byte	0x5
 744 00c3 850C0000 		.4byte	.LASF13
 745 00c7 04       		.uleb128 0x4
 746 00c8 18070000 		.4byte	.LASF14
 747 00cc 03       		.byte	0x3
 748 00cd 2B       		.byte	0x2b
 749 00ce D2000000 		.4byte	0xd2
 750 00d2 02       		.uleb128 0x2
 751 00d3 02       		.byte	0x2
 752 00d4 07       		.byte	0x7
 753 00d5 12120000 		.4byte	.LASF15
 754 00d9 04       		.uleb128 0x4
 755 00da F4010000 		.4byte	.LASF16
 756 00de 03       		.byte	0x3
 757 00df 3F       		.byte	0x3f
 758 00e0 E4000000 		.4byte	0xe4
 759 00e4 02       		.uleb128 0x2
 760 00e5 04       		.byte	0x4
 761 00e6 05       		.byte	0x5
 762 00e7 21000000 		.4byte	.LASF17
 763 00eb 04       		.uleb128 0x4
 764 00ec 3B050000 		.4byte	.LASF18
 765 00f0 03       		.byte	0x3
 766 00f1 41       		.byte	0x41
 767 00f2 F6000000 		.4byte	0xf6
 768 00f6 02       		.uleb128 0x2
 769 00f7 04       		.byte	0x4
 770 00f8 07       		.byte	0x7
 771 00f9 FA0A0000 		.4byte	.LASF19
 772 00fd 04       		.uleb128 0x4
 773 00fe 9B0B0000 		.4byte	.LASF20
 774 0102 03       		.byte	0x3
 775 0103 59       		.byte	0x59
 776 0104 72000000 		.4byte	0x72
 777 0108 04       		.uleb128 0x4
 778 0109 BE060000 		.4byte	.LASF21
 779 010d 03       		.byte	0x3
ARM GAS  /tmp/ccxS4laR.s 			page 19


 780 010e 5B       		.byte	0x5b
 781 010f 13010000 		.4byte	0x113
 782 0113 02       		.uleb128 0x2
 783 0114 08       		.byte	0x8
 784 0115 07       		.byte	0x7
 785 0116 EE040000 		.4byte	.LASF22
 786 011a 04       		.uleb128 0x4
 787 011b DE0E0000 		.4byte	.LASF23
 788 011f 03       		.byte	0x3
 789 0120 78       		.byte	0x78
 790 0121 9C000000 		.4byte	0x9c
 791 0125 04       		.uleb128 0x4
 792 0126 400C0000 		.4byte	.LASF24
 793 012a 03       		.byte	0x3
 794 012b 7A       		.byte	0x7a
 795 012c AE000000 		.4byte	0xae
 796 0130 04       		.uleb128 0x4
 797 0131 6E0A0000 		.4byte	.LASF25
 798 0135 03       		.byte	0x3
 799 0136 92       		.byte	0x92
 800 0137 C0000000 		.4byte	0xc0
 801 013b 04       		.uleb128 0x4
 802 013c B9020000 		.4byte	.LASF26
 803 0140 03       		.byte	0x3
 804 0141 94       		.byte	0x94
 805 0142 D2000000 		.4byte	0xd2
 806 0146 04       		.uleb128 0x4
 807 0147 7F020000 		.4byte	.LASF27
 808 014b 03       		.byte	0x3
 809 014c A8       		.byte	0xa8
 810 014d E4000000 		.4byte	0xe4
 811 0151 04       		.uleb128 0x4
 812 0152 7E060000 		.4byte	.LASF28
 813 0156 03       		.byte	0x3
 814 0157 AA       		.byte	0xaa
 815 0158 F6000000 		.4byte	0xf6
 816 015c 04       		.uleb128 0x4
 817 015d 220C0000 		.4byte	.LASF29
 818 0161 03       		.byte	0x3
 819 0162 BA       		.byte	0xba
 820 0163 72000000 		.4byte	0x72
 821 0167 04       		.uleb128 0x4
 822 0168 34000000 		.4byte	.LASF30
 823 016c 03       		.byte	0x3
 824 016d BC       		.byte	0xbc
 825 016e 13010000 		.4byte	0x113
 826 0172 04       		.uleb128 0x4
 827 0173 23030000 		.4byte	.LASF31
 828 0177 03       		.byte	0x3
 829 0178 C8       		.byte	0xc8
 830 0179 2C000000 		.4byte	0x2c
 831 017d 04       		.uleb128 0x4
 832 017e 5D050000 		.4byte	.LASF32
 833 0182 03       		.byte	0x3
 834 0183 CA       		.byte	0xca
 835 0184 43000000 		.4byte	0x43
 836 0188 04       		.uleb128 0x4
ARM GAS  /tmp/ccxS4laR.s 			page 20


 837 0189 F30A0000 		.4byte	.LASF33
 838 018d 04       		.byte	0x4
 839 018e 14       		.byte	0x14
 840 018f 91000000 		.4byte	0x91
 841 0193 04       		.uleb128 0x4
 842 0194 8D080000 		.4byte	.LASF34
 843 0198 04       		.byte	0x4
 844 0199 18       		.byte	0x18
 845 019a A3000000 		.4byte	0xa3
 846 019e 05       		.uleb128 0x5
 847 019f 93010000 		.4byte	0x193
 848 01a3 04       		.uleb128 0x4
 849 01a4 DC0C0000 		.4byte	.LASF35
 850 01a8 04       		.byte	0x4
 851 01a9 20       		.byte	0x20
 852 01aa B5000000 		.4byte	0xb5
 853 01ae 04       		.uleb128 0x4
 854 01af C40B0000 		.4byte	.LASF36
 855 01b3 04       		.byte	0x4
 856 01b4 24       		.byte	0x24
 857 01b5 C7000000 		.4byte	0xc7
 858 01b9 04       		.uleb128 0x4
 859 01ba 980F0000 		.4byte	.LASF37
 860 01be 04       		.byte	0x4
 861 01bf 2C       		.byte	0x2c
 862 01c0 D9000000 		.4byte	0xd9
 863 01c4 0A       		.uleb128 0xa
 864 01c5 B9010000 		.4byte	0x1b9
 865 01c9 04       		.uleb128 0x4
 866 01ca FA030000 		.4byte	.LASF38
 867 01ce 04       		.byte	0x4
 868 01cf 30       		.byte	0x30
 869 01d0 EB000000 		.4byte	0xeb
 870 01d4 0A       		.uleb128 0xa
 871 01d5 C9010000 		.4byte	0x1c9
 872 01d9 05       		.uleb128 0x5
 873 01da C9010000 		.4byte	0x1c9
 874 01de 04       		.uleb128 0x4
 875 01df 15060000 		.4byte	.LASF39
 876 01e3 04       		.byte	0x4
 877 01e4 38       		.byte	0x38
 878 01e5 FD000000 		.4byte	0xfd
 879 01e9 04       		.uleb128 0x4
 880 01ea 1E110000 		.4byte	.LASF40
 881 01ee 04       		.byte	0x4
 882 01ef 3C       		.byte	0x3c
 883 01f0 08010000 		.4byte	0x108
 884 01f4 04       		.uleb128 0x4
 885 01f5 BB0B0000 		.4byte	.LASF41
 886 01f9 04       		.byte	0x4
 887 01fa 43       		.byte	0x43
 888 01fb 72010000 		.4byte	0x172
 889 01ff 04       		.uleb128 0x4
 890 0200 ED0E0000 		.4byte	.LASF42
 891 0204 04       		.byte	0x4
 892 0205 48       		.byte	0x48
 893 0206 7D010000 		.4byte	0x17d
ARM GAS  /tmp/ccxS4laR.s 			page 21


 894 020a 04       		.uleb128 0x4
 895 020b 08060000 		.4byte	.LASF43
 896 020f 05       		.byte	0x5
 897 0210 15       		.byte	0x15
 898 0211 1A010000 		.4byte	0x11a
 899 0215 04       		.uleb128 0x4
 900 0216 CD090000 		.4byte	.LASF44
 901 021a 05       		.byte	0x5
 902 021b 16       		.byte	0x16
 903 021c 25010000 		.4byte	0x125
 904 0220 04       		.uleb128 0x4
 905 0221 D6040000 		.4byte	.LASF45
 906 0225 05       		.byte	0x5
 907 0226 1B       		.byte	0x1b
 908 0227 30010000 		.4byte	0x130
 909 022b 04       		.uleb128 0x4
 910 022c 90120000 		.4byte	.LASF46
 911 0230 05       		.byte	0x5
 912 0231 1C       		.byte	0x1c
 913 0232 3B010000 		.4byte	0x13b
 914 0236 04       		.uleb128 0x4
 915 0237 A00F0000 		.4byte	.LASF47
 916 023b 05       		.byte	0x5
 917 023c 21       		.byte	0x21
 918 023d 46010000 		.4byte	0x146
 919 0241 04       		.uleb128 0x4
 920 0242 BF0E0000 		.4byte	.LASF48
 921 0246 05       		.byte	0x5
 922 0247 22       		.byte	0x22
 923 0248 51010000 		.4byte	0x151
 924 024c 04       		.uleb128 0x4
 925 024d 27060000 		.4byte	.LASF49
 926 0251 05       		.byte	0x5
 927 0252 27       		.byte	0x27
 928 0253 5C010000 		.4byte	0x15c
 929 0257 04       		.uleb128 0x4
 930 0258 A1050000 		.4byte	.LASF50
 931 025c 05       		.byte	0x5
 932 025d 28       		.byte	0x28
 933 025e 67010000 		.4byte	0x167
 934 0262 04       		.uleb128 0x4
 935 0263 160A0000 		.4byte	.LASF51
 936 0267 05       		.byte	0x5
 937 0268 33       		.byte	0x33
 938 0269 2C000000 		.4byte	0x2c
 939 026d 04       		.uleb128 0x4
 940 026e 6F100000 		.4byte	.LASF52
 941 0272 05       		.byte	0x5
 942 0273 34       		.byte	0x34
 943 0274 43000000 		.4byte	0x43
 944 0278 04       		.uleb128 0x4
 945 0279 E7010000 		.4byte	.LASF53
 946 027d 05       		.byte	0x5
 947 027e 3D       		.byte	0x3d
 948 027f 2C000000 		.4byte	0x2c
 949 0283 04       		.uleb128 0x4
 950 0284 13000000 		.4byte	.LASF54
ARM GAS  /tmp/ccxS4laR.s 			page 22


 951 0288 05       		.byte	0x5
 952 0289 3E       		.byte	0x3e
 953 028a 43000000 		.4byte	0x43
 954 028e 04       		.uleb128 0x4
 955 028f 500C0000 		.4byte	.LASF55
 956 0293 05       		.byte	0x5
 957 0294 47       		.byte	0x47
 958 0295 2C000000 		.4byte	0x2c
 959 0299 04       		.uleb128 0x4
 960 029a D20A0000 		.4byte	.LASF56
 961 029e 05       		.byte	0x5
 962 029f 48       		.byte	0x48
 963 02a0 43000000 		.4byte	0x43
 964 02a4 04       		.uleb128 0x4
 965 02a5 C1030000 		.4byte	.LASF57
 966 02a9 05       		.byte	0x5
 967 02aa 51       		.byte	0x51
 968 02ab 72000000 		.4byte	0x72
 969 02af 04       		.uleb128 0x4
 970 02b0 D9010000 		.4byte	.LASF58
 971 02b4 05       		.byte	0x5
 972 02b5 52       		.byte	0x52
 973 02b6 13010000 		.4byte	0x113
 974 02ba 04       		.uleb128 0x4
 975 02bb C6010000 		.4byte	.LASF59
 976 02bf 05       		.byte	0x5
 977 02c0 82       		.byte	0x82
 978 02c1 72000000 		.4byte	0x72
 979 02c5 04       		.uleb128 0x4
 980 02c6 E4040000 		.4byte	.LASF60
 981 02ca 05       		.byte	0x5
 982 02cb 8B       		.byte	0x8b
 983 02cc 13010000 		.4byte	0x113
 984 02d0 0B       		.uleb128 0xb
 985 02d1 04       		.byte	0x4
 986 02d2 02       		.uleb128 0x2
 987 02d3 04       		.byte	0x4
 988 02d4 07       		.byte	0x7
 989 02d5 0D0A0000 		.4byte	.LASF61
 990 02d9 0C       		.uleb128 0xc
 991 02da D4010000 		.4byte	0x1d4
 992 02de E9020000 		.4byte	0x2e9
 993 02e2 0D       		.uleb128 0xd
 994 02e3 D2020000 		.4byte	0x2d2
 995 02e7 01       		.byte	0x1
 996 02e8 00       		.byte	0
 997 02e9 0A       		.uleb128 0xa
 998 02ea D9020000 		.4byte	0x2d9
 999 02ee 0C       		.uleb128 0xc
 1000 02ef D4010000 		.4byte	0x1d4
 1001 02f3 FE020000 		.4byte	0x2fe
 1002 02f7 0D       		.uleb128 0xd
 1003 02f8 D2020000 		.4byte	0x2d2
 1004 02fc 04       		.byte	0x4
 1005 02fd 00       		.byte	0
 1006 02fe 0A       		.uleb128 0xa
 1007 02ff EE020000 		.4byte	0x2ee
ARM GAS  /tmp/ccxS4laR.s 			page 23


 1008 0303 0E       		.uleb128 0xe
 1009 0304 BF0C0000 		.4byte	.LASF62
 1010 0308 06       		.byte	0x6
 1011 0309 6508     		.2byte	0x865
 1012 030b C4010000 		.4byte	0x1c4
 1013 030f 0F       		.uleb128 0xf
 1014 0310 58000000 		.4byte	.LASF63
 1015 0314 07       		.byte	0x7
 1016 0315 3A       		.byte	0x3a
 1017 0316 C9010000 		.4byte	0x1c9
 1018 031a 0C       		.uleb128 0xc
 1019 031b D4010000 		.4byte	0x1d4
 1020 031f 2A030000 		.4byte	0x32a
 1021 0323 0D       		.uleb128 0xd
 1022 0324 D2020000 		.4byte	0x2d2
 1023 0328 00       		.byte	0
 1024 0329 00       		.byte	0
 1025 032a 0A       		.uleb128 0xa
 1026 032b 1A030000 		.4byte	0x31a
 1027 032f 0C       		.uleb128 0xc
 1028 0330 D4010000 		.4byte	0x1d4
 1029 0334 3F030000 		.4byte	0x33f
 1030 0338 0D       		.uleb128 0xd
 1031 0339 D2020000 		.4byte	0x2d2
 1032 033d 0C       		.byte	0xc
 1033 033e 00       		.byte	0
 1034 033f 0A       		.uleb128 0xa
 1035 0340 2F030000 		.4byte	0x32f
 1036 0344 10       		.uleb128 0x10
 1037 0345 6801     		.2byte	0x168
 1038 0347 08       		.byte	0x8
 1039 0348 38       		.byte	0x38
 1040 0349 320D0000 		.4byte	.LASF442
 1041 034d 8C060000 		.4byte	0x68c
 1042 0351 11       		.uleb128 0x11
 1043 0352 D7000000 		.4byte	.LASF64
 1044 0356 08       		.byte	0x8
 1045 0357 39       		.byte	0x39
 1046 0358 D4010000 		.4byte	0x1d4
 1047 035c 00       		.byte	0
 1048 035d 11       		.uleb128 0x11
 1049 035e F7110000 		.4byte	.LASF65
 1050 0362 08       		.byte	0x8
 1051 0363 3A       		.byte	0x3a
 1052 0364 D4010000 		.4byte	0x1d4
 1053 0368 04       		.byte	0x4
 1054 0369 11       		.uleb128 0x11
 1055 036a AE0F0000 		.4byte	.LASF66
 1056 036e 08       		.byte	0x8
 1057 036f 3B       		.byte	0x3b
 1058 0370 D4010000 		.4byte	0x1d4
 1059 0374 08       		.byte	0x8
 1060 0375 11       		.uleb128 0x11
 1061 0376 6A0C0000 		.4byte	.LASF67
 1062 037a 08       		.byte	0x8
 1063 037b 3C       		.byte	0x3c
 1064 037c 2A030000 		.4byte	0x32a
ARM GAS  /tmp/ccxS4laR.s 			page 24


 1065 0380 0C       		.byte	0xc
 1066 0381 11       		.uleb128 0x11
 1067 0382 57090000 		.4byte	.LASF68
 1068 0386 08       		.byte	0x8
 1069 0387 3D       		.byte	0x3d
 1070 0388 D4010000 		.4byte	0x1d4
 1071 038c 10       		.byte	0x10
 1072 038d 11       		.uleb128 0x11
 1073 038e 22020000 		.4byte	.LASF69
 1074 0392 08       		.byte	0x8
 1075 0393 3E       		.byte	0x3e
 1076 0394 D4010000 		.4byte	0x1d4
 1077 0398 14       		.byte	0x14
 1078 0399 11       		.uleb128 0x11
 1079 039a 96070000 		.4byte	.LASF70
 1080 039e 08       		.byte	0x8
 1081 039f 3F       		.byte	0x3f
 1082 03a0 D4010000 		.4byte	0x1d4
 1083 03a4 18       		.byte	0x18
 1084 03a5 11       		.uleb128 0x11
 1085 03a6 960A0000 		.4byte	.LASF71
 1086 03aa 08       		.byte	0x8
 1087 03ab 40       		.byte	0x40
 1088 03ac 2A030000 		.4byte	0x32a
 1089 03b0 1C       		.byte	0x1c
 1090 03b1 11       		.uleb128 0x11
 1091 03b2 E0080000 		.4byte	.LASF72
 1092 03b6 08       		.byte	0x8
 1093 03b7 41       		.byte	0x41
 1094 03b8 D4010000 		.4byte	0x1d4
 1095 03bc 20       		.byte	0x20
 1096 03bd 11       		.uleb128 0x11
 1097 03be 7E070000 		.4byte	.LASF73
 1098 03c2 08       		.byte	0x8
 1099 03c3 42       		.byte	0x42
 1100 03c4 D4010000 		.4byte	0x1d4
 1101 03c8 24       		.byte	0x24
 1102 03c9 11       		.uleb128 0x11
 1103 03ca 28070000 		.4byte	.LASF74
 1104 03ce 08       		.byte	0x8
 1105 03cf 43       		.byte	0x43
 1106 03d0 D4010000 		.4byte	0x1d4
 1107 03d4 28       		.byte	0x28
 1108 03d5 11       		.uleb128 0x11
 1109 03d6 A00A0000 		.4byte	.LASF75
 1110 03da 08       		.byte	0x8
 1111 03db 44       		.byte	0x44
 1112 03dc 2A030000 		.4byte	0x32a
 1113 03e0 2C       		.byte	0x2c
 1114 03e1 11       		.uleb128 0x11
 1115 03e2 7F050000 		.4byte	.LASF76
 1116 03e6 08       		.byte	0x8
 1117 03e7 45       		.byte	0x45
 1118 03e8 D4010000 		.4byte	0x1d4
 1119 03ec 30       		.byte	0x30
 1120 03ed 11       		.uleb128 0x11
 1121 03ee B9090000 		.4byte	.LASF77
ARM GAS  /tmp/ccxS4laR.s 			page 25


 1122 03f2 08       		.byte	0x8
 1123 03f3 46       		.byte	0x46
 1124 03f4 D4010000 		.4byte	0x1d4
 1125 03f8 34       		.byte	0x34
 1126 03f9 11       		.uleb128 0x11
 1127 03fa 09010000 		.4byte	.LASF78
 1128 03fe 08       		.byte	0x8
 1129 03ff 47       		.byte	0x47
 1130 0400 D4010000 		.4byte	0x1d4
 1131 0404 38       		.byte	0x38
 1132 0405 11       		.uleb128 0x11
 1133 0406 A8070000 		.4byte	.LASF79
 1134 040a 08       		.byte	0x8
 1135 040b 48       		.byte	0x48
 1136 040c D4010000 		.4byte	0x1d4
 1137 0410 3C       		.byte	0x3c
 1138 0411 11       		.uleb128 0x11
 1139 0412 3A020000 		.4byte	.LASF80
 1140 0416 08       		.byte	0x8
 1141 0417 49       		.byte	0x49
 1142 0418 D4010000 		.4byte	0x1d4
 1143 041c 40       		.byte	0x40
 1144 041d 11       		.uleb128 0x11
 1145 041e DF000000 		.4byte	.LASF81
 1146 0422 08       		.byte	0x8
 1147 0423 4A       		.byte	0x4a
 1148 0424 D4010000 		.4byte	0x1d4
 1149 0428 44       		.byte	0x44
 1150 0429 11       		.uleb128 0x11
 1151 042a D40B0000 		.4byte	.LASF82
 1152 042e 08       		.byte	0x8
 1153 042f 4B       		.byte	0x4b
 1154 0430 D4010000 		.4byte	0x1d4
 1155 0434 48       		.byte	0x48
 1156 0435 11       		.uleb128 0x11
 1157 0436 A8000000 		.4byte	.LASF83
 1158 043a 08       		.byte	0x8
 1159 043b 4C       		.byte	0x4c
 1160 043c D4010000 		.4byte	0x1d4
 1161 0440 4C       		.byte	0x4c
 1162 0441 11       		.uleb128 0x11
 1163 0442 0F130000 		.4byte	.LASF84
 1164 0446 08       		.byte	0x8
 1165 0447 4D       		.byte	0x4d
 1166 0448 D4010000 		.4byte	0x1d4
 1167 044c 50       		.byte	0x50
 1168 044d 11       		.uleb128 0x11
 1169 044e 2D120000 		.4byte	.LASF85
 1170 0452 08       		.byte	0x8
 1171 0453 4E       		.byte	0x4e
 1172 0454 D4010000 		.4byte	0x1d4
 1173 0458 54       		.byte	0x54
 1174 0459 11       		.uleb128 0x11
 1175 045a B0000000 		.4byte	.LASF86
 1176 045e 08       		.byte	0x8
 1177 045f 4F       		.byte	0x4f
 1178 0460 D4010000 		.4byte	0x1d4
ARM GAS  /tmp/ccxS4laR.s 			page 26


 1179 0464 58       		.byte	0x58
 1180 0465 11       		.uleb128 0x11
 1181 0466 7B0C0000 		.4byte	.LASF87
 1182 046a 08       		.byte	0x8
 1183 046b 50       		.byte	0x50
 1184 046c 2A030000 		.4byte	0x32a
 1185 0470 5C       		.byte	0x5c
 1186 0471 11       		.uleb128 0x11
 1187 0472 31070000 		.4byte	.LASF88
 1188 0476 08       		.byte	0x8
 1189 0477 51       		.byte	0x51
 1190 0478 D4010000 		.4byte	0x1d4
 1191 047c 60       		.byte	0x60
 1192 047d 11       		.uleb128 0x11
 1193 047e A9080000 		.4byte	.LASF89
 1194 0482 08       		.byte	0x8
 1195 0483 52       		.byte	0x52
 1196 0484 D4010000 		.4byte	0x1d4
 1197 0488 64       		.byte	0x64
 1198 0489 11       		.uleb128 0x11
 1199 048a AE100000 		.4byte	.LASF90
 1200 048e 08       		.byte	0x8
 1201 048f 53       		.byte	0x53
 1202 0490 D4010000 		.4byte	0x1d4
 1203 0494 68       		.byte	0x68
 1204 0495 11       		.uleb128 0x11
 1205 0496 B30A0000 		.4byte	.LASF91
 1206 049a 08       		.byte	0x8
 1207 049b 54       		.byte	0x54
 1208 049c 2A030000 		.4byte	0x32a
 1209 04a0 6C       		.byte	0x6c
 1210 04a1 11       		.uleb128 0x11
 1211 04a2 C9060000 		.4byte	.LASF92
 1212 04a6 08       		.byte	0x8
 1213 04a7 55       		.byte	0x55
 1214 04a8 E9020000 		.4byte	0x2e9
 1215 04ac 70       		.byte	0x70
 1216 04ad 11       		.uleb128 0x11
 1217 04ae BD0A0000 		.4byte	.LASF93
 1218 04b2 08       		.byte	0x8
 1219 04b3 56       		.byte	0x56
 1220 04b4 E9020000 		.4byte	0x2e9
 1221 04b8 78       		.byte	0x78
 1222 04b9 11       		.uleb128 0x11
 1223 04ba C2090000 		.4byte	.LASF94
 1224 04be 08       		.byte	0x8
 1225 04bf 57       		.byte	0x57
 1226 04c0 D4010000 		.4byte	0x1d4
 1227 04c4 80       		.byte	0x80
 1228 04c5 11       		.uleb128 0x11
 1229 04c6 090C0000 		.4byte	.LASF95
 1230 04ca 08       		.byte	0x8
 1231 04cb 58       		.byte	0x58
 1232 04cc D4010000 		.4byte	0x1d4
 1233 04d0 84       		.byte	0x84
 1234 04d1 11       		.uleb128 0x11
 1235 04d2 E90C0000 		.4byte	.LASF96
ARM GAS  /tmp/ccxS4laR.s 			page 27


 1236 04d6 08       		.byte	0x8
 1237 04d7 59       		.byte	0x59
 1238 04d8 D4010000 		.4byte	0x1d4
 1239 04dc 88       		.byte	0x88
 1240 04dd 11       		.uleb128 0x11
 1241 04de 06130000 		.4byte	.LASF97
 1242 04e2 08       		.byte	0x8
 1243 04e3 5A       		.byte	0x5a
 1244 04e4 D4010000 		.4byte	0x1d4
 1245 04e8 8C       		.byte	0x8c
 1246 04e9 11       		.uleb128 0x11
 1247 04ea 8A100000 		.4byte	.LASF98
 1248 04ee 08       		.byte	0x8
 1249 04ef 5B       		.byte	0x5b
 1250 04f0 D4010000 		.4byte	0x1d4
 1251 04f4 90       		.byte	0x90
 1252 04f5 11       		.uleb128 0x11
 1253 04f6 3B120000 		.4byte	.LASF99
 1254 04fa 08       		.byte	0x8
 1255 04fb 5C       		.byte	0x5c
 1256 04fc D4010000 		.4byte	0x1d4
 1257 0500 94       		.byte	0x94
 1258 0501 11       		.uleb128 0x11
 1259 0502 31100000 		.4byte	.LASF100
 1260 0506 08       		.byte	0x8
 1261 0507 5D       		.byte	0x5d
 1262 0508 D4010000 		.4byte	0x1d4
 1263 050c 98       		.byte	0x98
 1264 050d 11       		.uleb128 0x11
 1265 050e 2A000000 		.4byte	.LASF101
 1266 0512 08       		.byte	0x8
 1267 0513 5E       		.byte	0x5e
 1268 0514 2A030000 		.4byte	0x32a
 1269 0518 9C       		.byte	0x9c
 1270 0519 11       		.uleb128 0x11
 1271 051a 8F0C0000 		.4byte	.LASF102
 1272 051e 08       		.byte	0x8
 1273 051f 5F       		.byte	0x5f
 1274 0520 D4010000 		.4byte	0x1d4
 1275 0524 A0       		.byte	0xa0
 1276 0525 11       		.uleb128 0x11
 1277 0526 7E0B0000 		.4byte	.LASF103
 1278 052a 08       		.byte	0x8
 1279 052b 60       		.byte	0x60
 1280 052c D4010000 		.4byte	0x1d4
 1281 0530 A4       		.byte	0xa4
 1282 0531 11       		.uleb128 0x11
 1283 0532 440B0000 		.4byte	.LASF104
 1284 0536 08       		.byte	0x8
 1285 0537 61       		.byte	0x61
 1286 0538 D4010000 		.4byte	0x1d4
 1287 053c A8       		.byte	0xa8
 1288 053d 11       		.uleb128 0x11
 1289 053e 980C0000 		.4byte	.LASF105
 1290 0542 08       		.byte	0x8
 1291 0543 62       		.byte	0x62
 1292 0544 2A030000 		.4byte	0x32a
ARM GAS  /tmp/ccxS4laR.s 			page 28


 1293 0548 AC       		.byte	0xac
 1294 0549 11       		.uleb128 0x11
 1295 054a B50C0000 		.4byte	.LASF106
 1296 054e 08       		.byte	0x8
 1297 054f 63       		.byte	0x63
 1298 0550 D4010000 		.4byte	0x1d4
 1299 0554 B0       		.byte	0xb0
 1300 0555 11       		.uleb128 0x11
 1301 0556 A50B0000 		.4byte	.LASF107
 1302 055a 08       		.byte	0x8
 1303 055b 64       		.byte	0x64
 1304 055c D4010000 		.4byte	0x1d4
 1305 0560 B4       		.byte	0xb4
 1306 0561 11       		.uleb128 0x11
 1307 0562 DD120000 		.4byte	.LASF108
 1308 0566 08       		.byte	0x8
 1309 0567 65       		.byte	0x65
 1310 0568 D4010000 		.4byte	0x1d4
 1311 056c B8       		.byte	0xb8
 1312 056d 11       		.uleb128 0x11
 1313 056e E00A0000 		.4byte	.LASF109
 1314 0572 08       		.byte	0x8
 1315 0573 66       		.byte	0x66
 1316 0574 2A030000 		.4byte	0x32a
 1317 0578 BC       		.byte	0xbc
 1318 0579 11       		.uleb128 0x11
 1319 057a 12010000 		.4byte	.LASF110
 1320 057e 08       		.byte	0x8
 1321 057f 67       		.byte	0x67
 1322 0580 D4010000 		.4byte	0x1d4
 1323 0584 C0       		.byte	0xc0
 1324 0585 11       		.uleb128 0x11
 1325 0586 78040000 		.4byte	.LASF111
 1326 058a 08       		.byte	0x8
 1327 058b 68       		.byte	0x68
 1328 058c D4010000 		.4byte	0x1d4
 1329 0590 C4       		.byte	0xc4
 1330 0591 11       		.uleb128 0x11
 1331 0592 B9080000 		.4byte	.LASF112
 1332 0596 08       		.byte	0x8
 1333 0597 69       		.byte	0x69
 1334 0598 D4010000 		.4byte	0x1d4
 1335 059c C8       		.byte	0xc8
 1336 059d 11       		.uleb128 0x11
 1337 059e FA0F0000 		.4byte	.LASF113
 1338 05a2 08       		.byte	0x8
 1339 05a3 6A       		.byte	0x6a
 1340 05a4 2A030000 		.4byte	0x32a
 1341 05a8 CC       		.byte	0xcc
 1342 05a9 11       		.uleb128 0x11
 1343 05aa 72080000 		.4byte	.LASF114
 1344 05ae 08       		.byte	0x8
 1345 05af 6B       		.byte	0x6b
 1346 05b0 D4010000 		.4byte	0x1d4
 1347 05b4 D0       		.byte	0xd0
 1348 05b5 11       		.uleb128 0x11
 1349 05b6 F40C0000 		.4byte	.LASF115
ARM GAS  /tmp/ccxS4laR.s 			page 29


 1350 05ba 08       		.byte	0x8
 1351 05bb 6C       		.byte	0x6c
 1352 05bc D4010000 		.4byte	0x1d4
 1353 05c0 D4       		.byte	0xd4
 1354 05c1 11       		.uleb128 0x11
 1355 05c2 500A0000 		.4byte	.LASF116
 1356 05c6 08       		.byte	0x8
 1357 05c7 6D       		.byte	0x6d
 1358 05c8 D4010000 		.4byte	0x1d4
 1359 05cc D8       		.byte	0xd8
 1360 05cd 11       		.uleb128 0x11
 1361 05ce 05100000 		.4byte	.LASF117
 1362 05d2 08       		.byte	0x8
 1363 05d3 6E       		.byte	0x6e
 1364 05d4 2A030000 		.4byte	0x32a
 1365 05d8 DC       		.byte	0xdc
 1366 05d9 11       		.uleb128 0x11
 1367 05da EF050000 		.4byte	.LASF118
 1368 05de 08       		.byte	0x8
 1369 05df 6F       		.byte	0x6f
 1370 05e0 D4010000 		.4byte	0x1d4
 1371 05e4 E0       		.byte	0xe0
 1372 05e5 11       		.uleb128 0x11
 1373 05e6 CE000000 		.4byte	.LASF119
 1374 05ea 08       		.byte	0x8
 1375 05eb 70       		.byte	0x70
 1376 05ec D4010000 		.4byte	0x1d4
 1377 05f0 E4       		.byte	0xe4
 1378 05f1 11       		.uleb128 0x11
 1379 05f2 29080000 		.4byte	.LASF120
 1380 05f6 08       		.byte	0x8
 1381 05f7 71       		.byte	0x71
 1382 05f8 D4010000 		.4byte	0x1d4
 1383 05fc E8       		.byte	0xe8
 1384 05fd 11       		.uleb128 0x11
 1385 05fe 10100000 		.4byte	.LASF121
 1386 0602 08       		.byte	0x8
 1387 0603 72       		.byte	0x72
 1388 0604 FE020000 		.4byte	0x2fe
 1389 0608 EC       		.byte	0xec
 1390 0609 12       		.uleb128 0x12
 1391 060a CA040000 		.4byte	.LASF122
 1392 060e 08       		.byte	0x8
 1393 060f 73       		.byte	0x73
 1394 0610 D4010000 		.4byte	0x1d4
 1395 0614 0001     		.2byte	0x100
 1396 0616 12       		.uleb128 0x12
 1397 0617 1B100000 		.4byte	.LASF123
 1398 061b 08       		.byte	0x8
 1399 061c 74       		.byte	0x74
 1400 061d FE020000 		.4byte	0x2fe
 1401 0621 0401     		.2byte	0x104
 1402 0623 12       		.uleb128 0x12
 1403 0624 96050000 		.4byte	.LASF124
 1404 0628 08       		.byte	0x8
 1405 0629 75       		.byte	0x75
 1406 062a D4010000 		.4byte	0x1d4
ARM GAS  /tmp/ccxS4laR.s 			page 30


 1407 062e 1801     		.2byte	0x118
 1408 0630 12       		.uleb128 0x12
 1409 0631 26100000 		.4byte	.LASF125
 1410 0635 08       		.byte	0x8
 1411 0636 76       		.byte	0x76
 1412 0637 3F030000 		.4byte	0x33f
 1413 063b 1C01     		.2byte	0x11c
 1414 063d 12       		.uleb128 0x12
 1415 063e DC0B0000 		.4byte	.LASF126
 1416 0642 08       		.byte	0x8
 1417 0643 77       		.byte	0x77
 1418 0644 D4010000 		.4byte	0x1d4
 1419 0648 5001     		.2byte	0x150
 1420 064a 12       		.uleb128 0x12
 1421 064b 87070000 		.4byte	.LASF127
 1422 064f 08       		.byte	0x8
 1423 0650 78       		.byte	0x78
 1424 0651 D4010000 		.4byte	0x1d4
 1425 0655 5401     		.2byte	0x154
 1426 0657 12       		.uleb128 0x12
 1427 0658 ED110000 		.4byte	.LASF128
 1428 065c 08       		.byte	0x8
 1429 065d 79       		.byte	0x79
 1430 065e D4010000 		.4byte	0x1d4
 1431 0662 5801     		.2byte	0x158
 1432 0664 12       		.uleb128 0x12
 1433 0665 4F120000 		.4byte	.LASF129
 1434 0669 08       		.byte	0x8
 1435 066a 7A       		.byte	0x7a
 1436 066b D4010000 		.4byte	0x1d4
 1437 066f 5C01     		.2byte	0x15c
 1438 0671 12       		.uleb128 0x12
 1439 0672 1D060000 		.4byte	.LASF130
 1440 0676 08       		.byte	0x8
 1441 0677 7B       		.byte	0x7b
 1442 0678 D4010000 		.4byte	0x1d4
 1443 067c 6001     		.2byte	0x160
 1444 067e 12       		.uleb128 0x12
 1445 067f 80030000 		.4byte	.LASF131
 1446 0683 08       		.byte	0x8
 1447 0684 7C       		.byte	0x7c
 1448 0685 D4010000 		.4byte	0x1d4
 1449 0689 6401     		.2byte	0x164
 1450 068b 00       		.byte	0
 1451 068c 13       		.uleb128 0x13
 1452 068d 50696F00 		.ascii	"Pio\000"
 1453 0691 08       		.byte	0x8
 1454 0692 7D       		.byte	0x7d
 1455 0693 44030000 		.4byte	0x344
 1456 0697 04       		.uleb128 0x4
 1457 0698 840A0000 		.4byte	.LASF132
 1458 069c 09       		.byte	0x9
 1459 069d 07       		.byte	0x7
 1460 069e 2C000000 		.4byte	0x2c
 1461 06a2 04       		.uleb128 0x4
 1462 06a3 89120000 		.4byte	.LASF133
 1463 06a7 0A       		.byte	0xa
ARM GAS  /tmp/ccxS4laR.s 			page 31


 1464 06a8 2C       		.byte	0x2c
 1465 06a9 E4000000 		.4byte	0xe4
 1466 06ad 04       		.uleb128 0x4
 1467 06ae 2E030000 		.4byte	.LASF134
 1468 06b2 0A       		.byte	0xa
 1469 06b3 72       		.byte	0x72
 1470 06b4 E4000000 		.4byte	0xe4
 1471 06b8 08       		.uleb128 0x8
 1472 06b9 8B0F0000 		.4byte	.LASF135
 1473 06bd 02       		.byte	0x2
 1474 06be 6501     		.2byte	0x165
 1475 06c0 43000000 		.4byte	0x43
 1476 06c4 14       		.uleb128 0x14
 1477 06c5 08       		.byte	0x8
 1478 06c6 0A       		.byte	0xa
 1479 06c7 A4       		.byte	0xa4
 1480 06c8 3A070000 		.4byte	.LASF244
 1481 06cc 08070000 		.4byte	0x708
 1482 06d0 15       		.uleb128 0x15
 1483 06d1 04       		.byte	0x4
 1484 06d2 0A       		.byte	0xa
 1485 06d3 A7       		.byte	0xa7
 1486 06d4 EF060000 		.4byte	0x6ef
 1487 06d8 16       		.uleb128 0x16
 1488 06d9 3A0C0000 		.4byte	.LASF136
 1489 06dd 0A       		.byte	0xa
 1490 06de A8       		.byte	0xa8
 1491 06df B8060000 		.4byte	0x6b8
 1492 06e3 16       		.uleb128 0x16
 1493 06e4 210D0000 		.4byte	.LASF137
 1494 06e8 0A       		.byte	0xa
 1495 06e9 A9       		.byte	0xa9
 1496 06ea 08070000 		.4byte	0x708
 1497 06ee 00       		.byte	0
 1498 06ef 11       		.uleb128 0x11
 1499 06f0 3F040000 		.4byte	.LASF138
 1500 06f4 0A       		.byte	0xa
 1501 06f5 A5       		.byte	0xa5
 1502 06f6 2C000000 		.4byte	0x2c
 1503 06fa 00       		.byte	0
 1504 06fb 11       		.uleb128 0x11
 1505 06fc 10070000 		.4byte	.LASF139
 1506 0700 0A       		.byte	0xa
 1507 0701 AA       		.byte	0xaa
 1508 0702 D0060000 		.4byte	0x6d0
 1509 0706 04       		.byte	0x4
 1510 0707 00       		.byte	0
 1511 0708 0C       		.uleb128 0xc
 1512 0709 AE000000 		.4byte	0xae
 1513 070d 18070000 		.4byte	0x718
 1514 0711 0D       		.uleb128 0xd
 1515 0712 D2020000 		.4byte	0x2d2
 1516 0716 03       		.byte	0x3
 1517 0717 00       		.byte	0
 1518 0718 04       		.uleb128 0x4
 1519 0719 5B0A0000 		.4byte	.LASF140
 1520 071d 0A       		.byte	0xa
ARM GAS  /tmp/ccxS4laR.s 			page 32


 1521 071e AB       		.byte	0xab
 1522 071f C4060000 		.4byte	0x6c4
 1523 0723 04       		.uleb128 0x4
 1524 0724 AA0A0000 		.4byte	.LASF141
 1525 0728 0A       		.byte	0xa
 1526 0729 AF       		.byte	0xaf
 1527 072a 97060000 		.4byte	0x697
 1528 072e 04       		.uleb128 0x4
 1529 072f CF020000 		.4byte	.LASF142
 1530 0733 0B       		.byte	0xb
 1531 0734 16       		.byte	0x16
 1532 0735 F6000000 		.4byte	0xf6
 1533 0739 17       		.uleb128 0x17
 1534 073a 8A030000 		.4byte	.LASF147
 1535 073e 18       		.byte	0x18
 1536 073f 0B       		.byte	0xb
 1537 0740 2D       		.byte	0x2d
 1538 0741 8C070000 		.4byte	0x78c
 1539 0745 11       		.uleb128 0x11
 1540 0746 A6060000 		.4byte	.LASF143
 1541 074a 0B       		.byte	0xb
 1542 074b 2F       		.byte	0x2f
 1543 074c 8C070000 		.4byte	0x78c
 1544 0750 00       		.byte	0
 1545 0751 18       		.uleb128 0x18
 1546 0752 5F6B00   		.ascii	"_k\000"
 1547 0755 0B       		.byte	0xb
 1548 0756 30       		.byte	0x30
 1549 0757 2C000000 		.4byte	0x2c
 1550 075b 04       		.byte	0x4
 1551 075c 11       		.uleb128 0x11
 1552 075d C60D0000 		.4byte	.LASF144
 1553 0761 0B       		.byte	0xb
 1554 0762 30       		.byte	0x30
 1555 0763 2C000000 		.4byte	0x2c
 1556 0767 08       		.byte	0x8
 1557 0768 11       		.uleb128 0x11
 1558 0769 CC050000 		.4byte	.LASF145
 1559 076d 0B       		.byte	0xb
 1560 076e 30       		.byte	0x30
 1561 076f 2C000000 		.4byte	0x2c
 1562 0773 0C       		.byte	0xc
 1563 0774 11       		.uleb128 0x11
 1564 0775 29050000 		.4byte	.LASF146
 1565 0779 0B       		.byte	0xb
 1566 077a 30       		.byte	0x30
 1567 077b 2C000000 		.4byte	0x2c
 1568 077f 10       		.byte	0x10
 1569 0780 18       		.uleb128 0x18
 1570 0781 5F7800   		.ascii	"_x\000"
 1571 0784 0B       		.byte	0xb
 1572 0785 31       		.byte	0x31
 1573 0786 92070000 		.4byte	0x792
 1574 078a 14       		.byte	0x14
 1575 078b 00       		.byte	0
 1576 078c 19       		.uleb128 0x19
 1577 078d 04       		.byte	0x4
ARM GAS  /tmp/ccxS4laR.s 			page 33


 1578 078e 39070000 		.4byte	0x739
 1579 0792 0C       		.uleb128 0xc
 1580 0793 2E070000 		.4byte	0x72e
 1581 0797 A2070000 		.4byte	0x7a2
 1582 079b 0D       		.uleb128 0xd
 1583 079c D2020000 		.4byte	0x2d2
 1584 07a0 00       		.byte	0
 1585 07a1 00       		.byte	0
 1586 07a2 17       		.uleb128 0x17
 1587 07a3 F70E0000 		.4byte	.LASF148
 1588 07a7 24       		.byte	0x24
 1589 07a8 0B       		.byte	0xb
 1590 07a9 35       		.byte	0x35
 1591 07aa 1B080000 		.4byte	0x81b
 1592 07ae 11       		.uleb128 0x11
 1593 07af 4E010000 		.4byte	.LASF149
 1594 07b3 0B       		.byte	0xb
 1595 07b4 37       		.byte	0x37
 1596 07b5 2C000000 		.4byte	0x2c
 1597 07b9 00       		.byte	0
 1598 07ba 11       		.uleb128 0x11
 1599 07bb 80040000 		.4byte	.LASF150
 1600 07bf 0B       		.byte	0xb
 1601 07c0 38       		.byte	0x38
 1602 07c1 2C000000 		.4byte	0x2c
 1603 07c5 04       		.byte	0x4
 1604 07c6 11       		.uleb128 0x11
 1605 07c7 0D040000 		.4byte	.LASF151
 1606 07cb 0B       		.byte	0xb
 1607 07cc 39       		.byte	0x39
 1608 07cd 2C000000 		.4byte	0x2c
 1609 07d1 08       		.byte	0x8
 1610 07d2 11       		.uleb128 0x11
 1611 07d3 9E070000 		.4byte	.LASF152
 1612 07d7 0B       		.byte	0xb
 1613 07d8 3A       		.byte	0x3a
 1614 07d9 2C000000 		.4byte	0x2c
 1615 07dd 0C       		.byte	0xc
 1616 07de 11       		.uleb128 0x11
 1617 07df 920B0000 		.4byte	.LASF153
 1618 07e3 0B       		.byte	0xb
 1619 07e4 3B       		.byte	0x3b
 1620 07e5 2C000000 		.4byte	0x2c
 1621 07e9 10       		.byte	0x10
 1622 07ea 11       		.uleb128 0x11
 1623 07eb F40B0000 		.4byte	.LASF154
 1624 07ef 0B       		.byte	0xb
 1625 07f0 3C       		.byte	0x3c
 1626 07f1 2C000000 		.4byte	0x2c
 1627 07f5 14       		.byte	0x14
 1628 07f6 11       		.uleb128 0x11
 1629 07f7 B7030000 		.4byte	.LASF155
 1630 07fb 0B       		.byte	0xb
 1631 07fc 3D       		.byte	0x3d
 1632 07fd 2C000000 		.4byte	0x2c
 1633 0801 18       		.byte	0x18
 1634 0802 11       		.uleb128 0x11
ARM GAS  /tmp/ccxS4laR.s 			page 34


 1635 0803 59060000 		.4byte	.LASF156
 1636 0807 0B       		.byte	0xb
 1637 0808 3E       		.byte	0x3e
 1638 0809 2C000000 		.4byte	0x2c
 1639 080d 1C       		.byte	0x1c
 1640 080e 11       		.uleb128 0x11
 1641 080f C70A0000 		.4byte	.LASF157
 1642 0813 0B       		.byte	0xb
 1643 0814 3F       		.byte	0x3f
 1644 0815 2C000000 		.4byte	0x2c
 1645 0819 20       		.byte	0x20
 1646 081a 00       		.byte	0
 1647 081b 1A       		.uleb128 0x1a
 1648 081c B9000000 		.4byte	.LASF158
 1649 0820 0801     		.2byte	0x108
 1650 0822 0B       		.byte	0xb
 1651 0823 48       		.byte	0x48
 1652 0824 5B080000 		.4byte	0x85b
 1653 0828 11       		.uleb128 0x11
 1654 0829 660A0000 		.4byte	.LASF159
 1655 082d 0B       		.byte	0xb
 1656 082e 49       		.byte	0x49
 1657 082f 5B080000 		.4byte	0x85b
 1658 0833 00       		.byte	0
 1659 0834 11       		.uleb128 0x11
 1660 0835 B60F0000 		.4byte	.LASF160
 1661 0839 0B       		.byte	0xb
 1662 083a 4A       		.byte	0x4a
 1663 083b 5B080000 		.4byte	0x85b
 1664 083f 80       		.byte	0x80
 1665 0840 12       		.uleb128 0x12
 1666 0841 59120000 		.4byte	.LASF161
 1667 0845 0B       		.byte	0xb
 1668 0846 4C       		.byte	0x4c
 1669 0847 2E070000 		.4byte	0x72e
 1670 084b 0001     		.2byte	0x100
 1671 084d 12       		.uleb128 0x12
 1672 084e D5120000 		.4byte	.LASF162
 1673 0852 0B       		.byte	0xb
 1674 0853 4F       		.byte	0x4f
 1675 0854 2E070000 		.4byte	0x72e
 1676 0858 0401     		.2byte	0x104
 1677 085a 00       		.byte	0
 1678 085b 0C       		.uleb128 0xc
 1679 085c D0020000 		.4byte	0x2d0
 1680 0860 6B080000 		.4byte	0x86b
 1681 0864 0D       		.uleb128 0xd
 1682 0865 D2020000 		.4byte	0x2d2
 1683 0869 1F       		.byte	0x1f
 1684 086a 00       		.byte	0
 1685 086b 1A       		.uleb128 0x1a
 1686 086c 320C0000 		.4byte	.LASF163
 1687 0870 9001     		.2byte	0x190
 1688 0872 0B       		.byte	0xb
 1689 0873 5B       		.byte	0x5b
 1690 0874 A9080000 		.4byte	0x8a9
 1691 0878 11       		.uleb128 0x11
ARM GAS  /tmp/ccxS4laR.s 			page 35


 1692 0879 A6060000 		.4byte	.LASF143
 1693 087d 0B       		.byte	0xb
 1694 087e 5C       		.byte	0x5c
 1695 087f A9080000 		.4byte	0x8a9
 1696 0883 00       		.byte	0
 1697 0884 11       		.uleb128 0x11
 1698 0885 6F060000 		.4byte	.LASF164
 1699 0889 0B       		.byte	0xb
 1700 088a 5D       		.byte	0x5d
 1701 088b 2C000000 		.4byte	0x2c
 1702 088f 04       		.byte	0x4
 1703 0890 11       		.uleb128 0x11
 1704 0891 36030000 		.4byte	.LASF165
 1705 0895 0B       		.byte	0xb
 1706 0896 5F       		.byte	0x5f
 1707 0897 AF080000 		.4byte	0x8af
 1708 089b 08       		.byte	0x8
 1709 089c 11       		.uleb128 0x11
 1710 089d B9000000 		.4byte	.LASF158
 1711 08a1 0B       		.byte	0xb
 1712 08a2 60       		.byte	0x60
 1713 08a3 1B080000 		.4byte	0x81b
 1714 08a7 88       		.byte	0x88
 1715 08a8 00       		.byte	0
 1716 08a9 19       		.uleb128 0x19
 1717 08aa 04       		.byte	0x4
 1718 08ab 6B080000 		.4byte	0x86b
 1719 08af 0C       		.uleb128 0xc
 1720 08b0 BF080000 		.4byte	0x8bf
 1721 08b4 BF080000 		.4byte	0x8bf
 1722 08b8 0D       		.uleb128 0xd
 1723 08b9 D2020000 		.4byte	0x2d2
 1724 08bd 1F       		.byte	0x1f
 1725 08be 00       		.byte	0
 1726 08bf 19       		.uleb128 0x19
 1727 08c0 04       		.byte	0x4
 1728 08c1 C5080000 		.4byte	0x8c5
 1729 08c5 1B       		.uleb128 0x1b
 1730 08c6 17       		.uleb128 0x17
 1731 08c7 E9100000 		.4byte	.LASF166
 1732 08cb 08       		.byte	0x8
 1733 08cc 0B       		.byte	0xb
 1734 08cd 73       		.byte	0x73
 1735 08ce EB080000 		.4byte	0x8eb
 1736 08d2 11       		.uleb128 0x11
 1737 08d3 73090000 		.4byte	.LASF167
 1738 08d7 0B       		.byte	0xb
 1739 08d8 74       		.byte	0x74
 1740 08d9 EB080000 		.4byte	0x8eb
 1741 08dd 00       		.byte	0
 1742 08de 11       		.uleb128 0x11
 1743 08df 68120000 		.4byte	.LASF168
 1744 08e3 0B       		.byte	0xb
 1745 08e4 75       		.byte	0x75
 1746 08e5 2C000000 		.4byte	0x2c
 1747 08e9 04       		.byte	0x4
 1748 08ea 00       		.byte	0
ARM GAS  /tmp/ccxS4laR.s 			page 36


 1749 08eb 19       		.uleb128 0x19
 1750 08ec 04       		.byte	0x4
 1751 08ed AE000000 		.4byte	0xae
 1752 08f1 17       		.uleb128 0x17
 1753 08f2 21050000 		.4byte	.LASF169
 1754 08f6 68       		.byte	0x68
 1755 08f7 0B       		.byte	0xb
 1756 08f8 B3       		.byte	0xb3
 1757 08f9 1B0A0000 		.4byte	0xa1b
 1758 08fd 18       		.uleb128 0x18
 1759 08fe 5F7000   		.ascii	"_p\000"
 1760 0901 0B       		.byte	0xb
 1761 0902 B4       		.byte	0xb4
 1762 0903 EB080000 		.4byte	0x8eb
 1763 0907 00       		.byte	0
 1764 0908 18       		.uleb128 0x18
 1765 0909 5F7200   		.ascii	"_r\000"
 1766 090c 0B       		.byte	0xb
 1767 090d B5       		.byte	0xb5
 1768 090e 2C000000 		.4byte	0x2c
 1769 0912 04       		.byte	0x4
 1770 0913 18       		.uleb128 0x18
 1771 0914 5F7700   		.ascii	"_w\000"
 1772 0917 0B       		.byte	0xb
 1773 0918 B6       		.byte	0xb6
 1774 0919 2C000000 		.4byte	0x2c
 1775 091d 08       		.byte	0x8
 1776 091e 11       		.uleb128 0x11
 1777 091f BF010000 		.4byte	.LASF170
 1778 0923 0B       		.byte	0xb
 1779 0924 B7       		.byte	0xb7
 1780 0925 C0000000 		.4byte	0xc0
 1781 0929 0C       		.byte	0xc
 1782 092a 11       		.uleb128 0x11
 1783 092b 62120000 		.4byte	.LASF171
 1784 092f 0B       		.byte	0xb
 1785 0930 B8       		.byte	0xb8
 1786 0931 C0000000 		.4byte	0xc0
 1787 0935 0E       		.byte	0xe
 1788 0936 18       		.uleb128 0x18
 1789 0937 5F626600 		.ascii	"_bf\000"
 1790 093b 0B       		.byte	0xb
 1791 093c B9       		.byte	0xb9
 1792 093d C6080000 		.4byte	0x8c6
 1793 0941 10       		.byte	0x10
 1794 0942 11       		.uleb128 0x11
 1795 0943 B6010000 		.4byte	.LASF172
 1796 0947 0B       		.byte	0xb
 1797 0948 BA       		.byte	0xba
 1798 0949 2C000000 		.4byte	0x2c
 1799 094d 18       		.byte	0x18
 1800 094e 11       		.uleb128 0x11
 1801 094f 51030000 		.4byte	.LASF173
 1802 0953 0B       		.byte	0xb
 1803 0954 C1       		.byte	0xc1
 1804 0955 D0020000 		.4byte	0x2d0
 1805 0959 1C       		.byte	0x1c
ARM GAS  /tmp/ccxS4laR.s 			page 37


 1806 095a 11       		.uleb128 0x11
 1807 095b B3020000 		.4byte	.LASF174
 1808 095f 0B       		.byte	0xb
 1809 0960 C3       		.byte	0xc3
 1810 0961 CF0C0000 		.4byte	0xccf
 1811 0965 20       		.byte	0x20
 1812 0966 11       		.uleb128 0x11
 1813 0967 CD0B0000 		.4byte	.LASF175
 1814 096b 0B       		.byte	0xb
 1815 096c C5       		.byte	0xc5
 1816 096d F90C0000 		.4byte	0xcf9
 1817 0971 24       		.byte	0x24
 1818 0972 11       		.uleb128 0x11
 1819 0973 F6120000 		.4byte	.LASF176
 1820 0977 0B       		.byte	0xb
 1821 0978 C8       		.byte	0xc8
 1822 0979 1D0D0000 		.4byte	0xd1d
 1823 097d 28       		.byte	0x28
 1824 097e 11       		.uleb128 0x11
 1825 097f B2080000 		.4byte	.LASF177
 1826 0983 0B       		.byte	0xb
 1827 0984 C9       		.byte	0xc9
 1828 0985 370D0000 		.4byte	0xd37
 1829 0989 2C       		.byte	0x2c
 1830 098a 18       		.uleb128 0x18
 1831 098b 5F756200 		.ascii	"_ub\000"
 1832 098f 0B       		.byte	0xb
 1833 0990 CC       		.byte	0xcc
 1834 0991 C6080000 		.4byte	0x8c6
 1835 0995 30       		.byte	0x30
 1836 0996 18       		.uleb128 0x18
 1837 0997 5F757000 		.ascii	"_up\000"
 1838 099b 0B       		.byte	0xb
 1839 099c CD       		.byte	0xcd
 1840 099d EB080000 		.4byte	0x8eb
 1841 09a1 38       		.byte	0x38
 1842 09a2 18       		.uleb128 0x18
 1843 09a3 5F757200 		.ascii	"_ur\000"
 1844 09a7 0B       		.byte	0xb
 1845 09a8 CE       		.byte	0xce
 1846 09a9 2C000000 		.4byte	0x2c
 1847 09ad 3C       		.byte	0x3c
 1848 09ae 11       		.uleb128 0x11
 1849 09af 90050000 		.4byte	.LASF178
 1850 09b3 0B       		.byte	0xb
 1851 09b4 D1       		.byte	0xd1
 1852 09b5 3D0D0000 		.4byte	0xd3d
 1853 09b9 40       		.byte	0x40
 1854 09ba 11       		.uleb128 0x11
 1855 09bb 9F120000 		.4byte	.LASF179
 1856 09bf 0B       		.byte	0xb
 1857 09c0 D2       		.byte	0xd2
 1858 09c1 4D0D0000 		.4byte	0xd4d
 1859 09c5 43       		.byte	0x43
 1860 09c6 18       		.uleb128 0x18
 1861 09c7 5F6C6200 		.ascii	"_lb\000"
 1862 09cb 0B       		.byte	0xb
ARM GAS  /tmp/ccxS4laR.s 			page 38


 1863 09cc D5       		.byte	0xd5
 1864 09cd C6080000 		.4byte	0x8c6
 1865 09d1 44       		.byte	0x44
 1866 09d2 11       		.uleb128 0x11
 1867 09d3 20080000 		.4byte	.LASF180
 1868 09d7 0B       		.byte	0xb
 1869 09d8 D8       		.byte	0xd8
 1870 09d9 2C000000 		.4byte	0x2c
 1871 09dd 4C       		.byte	0x4c
 1872 09de 11       		.uleb128 0x11
 1873 09df 88050000 		.4byte	.LASF181
 1874 09e3 0B       		.byte	0xb
 1875 09e4 D9       		.byte	0xd9
 1876 09e5 A2060000 		.4byte	0x6a2
 1877 09e9 50       		.byte	0x50
 1878 09ea 11       		.uleb128 0x11
 1879 09eb 1B0D0000 		.4byte	.LASF182
 1880 09ef 0B       		.byte	0xb
 1881 09f0 DC       		.byte	0xdc
 1882 09f1 390A0000 		.4byte	0xa39
 1883 09f5 54       		.byte	0x54
 1884 09f6 11       		.uleb128 0x11
 1885 09f7 FC0E0000 		.4byte	.LASF183
 1886 09fb 0B       		.byte	0xb
 1887 09fc E0       		.byte	0xe0
 1888 09fd 23070000 		.4byte	0x723
 1889 0a01 58       		.byte	0x58
 1890 0a02 11       		.uleb128 0x11
 1891 0a03 98020000 		.4byte	.LASF184
 1892 0a07 0B       		.byte	0xb
 1893 0a08 E2       		.byte	0xe2
 1894 0a09 18070000 		.4byte	0x718
 1895 0a0d 5C       		.byte	0x5c
 1896 0a0e 11       		.uleb128 0x11
 1897 0a0f CD120000 		.4byte	.LASF185
 1898 0a13 0B       		.byte	0xb
 1899 0a14 E3       		.byte	0xe3
 1900 0a15 2C000000 		.4byte	0x2c
 1901 0a19 64       		.byte	0x64
 1902 0a1a 00       		.byte	0
 1903 0a1b 1C       		.uleb128 0x1c
 1904 0a1c 2C000000 		.4byte	0x2c
 1905 0a20 390A0000 		.4byte	0xa39
 1906 0a24 1D       		.uleb128 0x1d
 1907 0a25 390A0000 		.4byte	0xa39
 1908 0a29 1D       		.uleb128 0x1d
 1909 0a2a D0020000 		.4byte	0x2d0
 1910 0a2e 1D       		.uleb128 0x1d
 1911 0a2f BD0C0000 		.4byte	0xcbd
 1912 0a33 1D       		.uleb128 0x1d
 1913 0a34 2C000000 		.4byte	0x2c
 1914 0a38 00       		.byte	0
 1915 0a39 19       		.uleb128 0x19
 1916 0a3a 04       		.byte	0x4
 1917 0a3b 440A0000 		.4byte	0xa44
 1918 0a3f 05       		.uleb128 0x5
 1919 0a40 390A0000 		.4byte	0xa39
ARM GAS  /tmp/ccxS4laR.s 			page 39


 1920 0a44 1E       		.uleb128 0x1e
 1921 0a45 FF110000 		.4byte	.LASF186
 1922 0a49 2804     		.2byte	0x428
 1923 0a4b 0B       		.byte	0xb
 1924 0a4c 3802     		.2byte	0x238
 1925 0a4e BD0C0000 		.4byte	0xcbd
 1926 0a52 1F       		.uleb128 0x1f
 1927 0a53 F0       		.byte	0xf0
 1928 0a54 0B       		.byte	0xb
 1929 0a55 5602     		.2byte	0x256
 1930 0a57 990B0000 		.4byte	0xb99
 1931 0a5b 20       		.uleb128 0x20
 1932 0a5c D0       		.byte	0xd0
 1933 0a5d 0B       		.byte	0xb
 1934 0a5e 5802     		.2byte	0x258
 1935 0a60 5C0B0000 		.4byte	0xb5c
 1936 0a64 07       		.uleb128 0x7
 1937 0a65 A5120000 		.4byte	.LASF187
 1938 0a69 0B       		.byte	0xb
 1939 0a6a 5902     		.2byte	0x259
 1940 0a6c 43000000 		.4byte	0x43
 1941 0a70 00       		.byte	0
 1942 0a71 07       		.uleb128 0x7
 1943 0a72 78110000 		.4byte	.LASF188
 1944 0a76 0B       		.byte	0xb
 1945 0a77 5A02     		.2byte	0x25a
 1946 0a79 BD0C0000 		.4byte	0xcbd
 1947 0a7d 04       		.byte	0x4
 1948 0a7e 07       		.uleb128 0x7
 1949 0a7f 05050000 		.4byte	.LASF189
 1950 0a83 0B       		.byte	0xb
 1951 0a84 5B02     		.2byte	0x25b
 1952 0a86 EF0D0000 		.4byte	0xdef
 1953 0a8a 08       		.byte	0x8
 1954 0a8b 07       		.uleb128 0x7
 1955 0a8c 980D0000 		.4byte	.LASF190
 1956 0a90 0B       		.byte	0xb
 1957 0a91 5C02     		.2byte	0x25c
 1958 0a93 A2070000 		.4byte	0x7a2
 1959 0a97 24       		.byte	0x24
 1960 0a98 07       		.uleb128 0x7
 1961 0a99 E50B0000 		.4byte	.LASF191
 1962 0a9d 0B       		.byte	0xb
 1963 0a9e 5D02     		.2byte	0x25d
 1964 0aa0 2C000000 		.4byte	0x2c
 1965 0aa4 48       		.byte	0x48
 1966 0aa5 07       		.uleb128 0x7
 1967 0aa6 FE0B0000 		.4byte	.LASF192
 1968 0aaa 0B       		.byte	0xb
 1969 0aab 5E02     		.2byte	0x25e
 1970 0aad 13010000 		.4byte	0x113
 1971 0ab1 50       		.byte	0x50
 1972 0ab2 07       		.uleb128 0x7
 1973 0ab3 CA020000 		.4byte	.LASF193
 1974 0ab7 0B       		.byte	0xb
 1975 0ab8 5F02     		.2byte	0x25f
 1976 0aba AA0D0000 		.4byte	0xdaa
ARM GAS  /tmp/ccxS4laR.s 			page 40


 1977 0abe 58       		.byte	0x58
 1978 0abf 07       		.uleb128 0x7
 1979 0ac0 71070000 		.4byte	.LASF194
 1980 0ac4 0B       		.byte	0xb
 1981 0ac5 6002     		.2byte	0x260
 1982 0ac7 18070000 		.4byte	0x718
 1983 0acb 68       		.byte	0x68
 1984 0acc 07       		.uleb128 0x7
 1985 0acd 85110000 		.4byte	.LASF195
 1986 0ad1 0B       		.byte	0xb
 1987 0ad2 6102     		.2byte	0x261
 1988 0ad4 18070000 		.4byte	0x718
 1989 0ad8 70       		.byte	0x70
 1990 0ad9 07       		.uleb128 0x7
 1991 0ada E7000000 		.4byte	.LASF196
 1992 0ade 0B       		.byte	0xb
 1993 0adf 6202     		.2byte	0x262
 1994 0ae1 18070000 		.4byte	0x718
 1995 0ae5 78       		.byte	0x78
 1996 0ae6 07       		.uleb128 0x7
 1997 0ae7 F6100000 		.4byte	.LASF197
 1998 0aeb 0B       		.byte	0xb
 1999 0aec 6302     		.2byte	0x263
 2000 0aee FF0D0000 		.4byte	0xdff
 2001 0af2 80       		.byte	0x80
 2002 0af3 07       		.uleb128 0x7
 2003 0af4 57010000 		.4byte	.LASF198
 2004 0af8 0B       		.byte	0xb
 2005 0af9 6402     		.2byte	0x264
 2006 0afb 0F0E0000 		.4byte	0xe0f
 2007 0aff 88       		.byte	0x88
 2008 0b00 07       		.uleb128 0x7
 2009 0b01 6B110000 		.4byte	.LASF199
 2010 0b05 0B       		.byte	0xb
 2011 0b06 6502     		.2byte	0x265
 2012 0b08 2C000000 		.4byte	0x2c
 2013 0b0c A0       		.byte	0xa0
 2014 0b0d 07       		.uleb128 0x7
 2015 0b0e 7C100000 		.4byte	.LASF200
 2016 0b12 0B       		.byte	0xb
 2017 0b13 6602     		.2byte	0x266
 2018 0b15 18070000 		.4byte	0x718
 2019 0b19 A4       		.byte	0xa4
 2020 0b1a 07       		.uleb128 0x7
 2021 0b1b BB070000 		.4byte	.LASF201
 2022 0b1f 0B       		.byte	0xb
 2023 0b20 6702     		.2byte	0x267
 2024 0b22 18070000 		.4byte	0x718
 2025 0b26 AC       		.byte	0xac
 2026 0b27 07       		.uleb128 0x7
 2027 0b28 B9040000 		.4byte	.LASF202
 2028 0b2c 0B       		.byte	0xb
 2029 0b2d 6802     		.2byte	0x268
 2030 0b2f 18070000 		.4byte	0x718
 2031 0b33 B4       		.byte	0xb4
 2032 0b34 07       		.uleb128 0x7
 2033 0b35 0C030000 		.4byte	.LASF203
ARM GAS  /tmp/ccxS4laR.s 			page 41


 2034 0b39 0B       		.byte	0xb
 2035 0b3a 6902     		.2byte	0x269
 2036 0b3c 18070000 		.4byte	0x718
 2037 0b40 BC       		.byte	0xbc
 2038 0b41 07       		.uleb128 0x7
 2039 0b42 60070000 		.4byte	.LASF204
 2040 0b46 0B       		.byte	0xb
 2041 0b47 6A02     		.2byte	0x26a
 2042 0b49 18070000 		.4byte	0x718
 2043 0b4d C4       		.byte	0xc4
 2044 0b4e 07       		.uleb128 0x7
 2045 0b4f 0C0B0000 		.4byte	.LASF205
 2046 0b53 0B       		.byte	0xb
 2047 0b54 6B02     		.2byte	0x26b
 2048 0b56 2C000000 		.4byte	0x2c
 2049 0b5a CC       		.byte	0xcc
 2050 0b5b 00       		.byte	0
 2051 0b5c 20       		.uleb128 0x20
 2052 0b5d F0       		.byte	0xf0
 2053 0b5e 0B       		.byte	0xb
 2054 0b5f 7102     		.2byte	0x271
 2055 0b61 800B0000 		.4byte	0xb80
 2056 0b65 07       		.uleb128 0x7
 2057 0b66 A4040000 		.4byte	.LASF206
 2058 0b6a 0B       		.byte	0xb
 2059 0b6b 7302     		.2byte	0x273
 2060 0b6d 1F0E0000 		.4byte	0xe1f
 2061 0b71 00       		.byte	0
 2062 0b72 07       		.uleb128 0x7
 2063 0b73 20130000 		.4byte	.LASF207
 2064 0b77 0B       		.byte	0xb
 2065 0b78 7402     		.2byte	0x274
 2066 0b7a 2F0E0000 		.4byte	0xe2f
 2067 0b7e 78       		.byte	0x78
 2068 0b7f 00       		.byte	0
 2069 0b80 21       		.uleb128 0x21
 2070 0b81 FF110000 		.4byte	.LASF186
 2071 0b85 0B       		.byte	0xb
 2072 0b86 6C02     		.2byte	0x26c
 2073 0b88 5B0A0000 		.4byte	0xa5b
 2074 0b8c 21       		.uleb128 0x21
 2075 0b8d A70D0000 		.4byte	.LASF208
 2076 0b91 0B       		.byte	0xb
 2077 0b92 7502     		.2byte	0x275
 2078 0b94 5C0B0000 		.4byte	0xb5c
 2079 0b98 00       		.byte	0
 2080 0b99 07       		.uleb128 0x7
 2081 0b9a FE010000 		.4byte	.LASF209
 2082 0b9e 0B       		.byte	0xb
 2083 0b9f 3A02     		.2byte	0x23a
 2084 0ba1 2C000000 		.4byte	0x2c
 2085 0ba5 00       		.byte	0
 2086 0ba6 07       		.uleb128 0x7
 2087 0ba7 1E040000 		.4byte	.LASF210
 2088 0bab 0B       		.byte	0xb
 2089 0bac 3F02     		.2byte	0x23f
 2090 0bae A40D0000 		.4byte	0xda4
ARM GAS  /tmp/ccxS4laR.s 			page 42


 2091 0bb2 04       		.byte	0x4
 2092 0bb3 07       		.uleb128 0x7
 2093 0bb4 1B030000 		.4byte	.LASF211
 2094 0bb8 0B       		.byte	0xb
 2095 0bb9 3F02     		.2byte	0x23f
 2096 0bbb A40D0000 		.4byte	0xda4
 2097 0bbf 08       		.byte	0x8
 2098 0bc0 07       		.uleb128 0x7
 2099 0bc1 18130000 		.4byte	.LASF212
 2100 0bc5 0B       		.byte	0xb
 2101 0bc6 3F02     		.2byte	0x23f
 2102 0bc8 A40D0000 		.4byte	0xda4
 2103 0bcc 0C       		.byte	0xc
 2104 0bcd 07       		.uleb128 0x7
 2105 0bce 6A060000 		.4byte	.LASF213
 2106 0bd2 0B       		.byte	0xb
 2107 0bd3 4102     		.2byte	0x241
 2108 0bd5 2C000000 		.4byte	0x2c
 2109 0bd9 10       		.byte	0x10
 2110 0bda 07       		.uleb128 0x7
 2111 0bdb C1050000 		.4byte	.LASF214
 2112 0bdf 0B       		.byte	0xb
 2113 0be0 4202     		.2byte	0x242
 2114 0be2 3F0E0000 		.4byte	0xe3f
 2115 0be6 14       		.byte	0x14
 2116 0be7 07       		.uleb128 0x7
 2117 0be8 D60D0000 		.4byte	.LASF215
 2118 0bec 0B       		.byte	0xb
 2119 0bed 4402     		.2byte	0x244
 2120 0bef 2C000000 		.4byte	0x2c
 2121 0bf3 30       		.byte	0x30
 2122 0bf4 07       		.uleb128 0x7
 2123 0bf5 FF0C0000 		.4byte	.LASF216
 2124 0bf9 0B       		.byte	0xb
 2125 0bfa 4502     		.2byte	0x245
 2126 0bfc F30C0000 		.4byte	0xcf3
 2127 0c00 34       		.byte	0x34
 2128 0c01 07       		.uleb128 0x7
 2129 0c02 C8080000 		.4byte	.LASF217
 2130 0c06 0B       		.byte	0xb
 2131 0c07 4702     		.2byte	0x247
 2132 0c09 2C000000 		.4byte	0x2c
 2133 0c0d 38       		.byte	0x38
 2134 0c0e 07       		.uleb128 0x7
 2135 0c0f 270A0000 		.4byte	.LASF218
 2136 0c13 0B       		.byte	0xb
 2137 0c14 4902     		.2byte	0x249
 2138 0c16 5A0E0000 		.4byte	0xe5a
 2139 0c1a 3C       		.byte	0x3c
 2140 0c1b 07       		.uleb128 0x7
 2141 0c1c D6030000 		.4byte	.LASF219
 2142 0c20 0B       		.byte	0xb
 2143 0c21 4C02     		.2byte	0x24c
 2144 0c23 8C070000 		.4byte	0x78c
 2145 0c27 40       		.byte	0x40
 2146 0c28 07       		.uleb128 0x7
 2147 0c29 44080000 		.4byte	.LASF220
ARM GAS  /tmp/ccxS4laR.s 			page 43


 2148 0c2d 0B       		.byte	0xb
 2149 0c2e 4D02     		.2byte	0x24d
 2150 0c30 2C000000 		.4byte	0x2c
 2151 0c34 44       		.byte	0x44
 2152 0c35 07       		.uleb128 0x7
 2153 0c36 23070000 		.4byte	.LASF221
 2154 0c3a 0B       		.byte	0xb
 2155 0c3b 4E02     		.2byte	0x24e
 2156 0c3d 8C070000 		.4byte	0x78c
 2157 0c41 48       		.byte	0x48
 2158 0c42 07       		.uleb128 0x7
 2159 0c43 A20C0000 		.4byte	.LASF222
 2160 0c47 0B       		.byte	0xb
 2161 0c48 4F02     		.2byte	0x24f
 2162 0c4a 600E0000 		.4byte	0xe60
 2163 0c4e 4C       		.byte	0x4c
 2164 0c4f 07       		.uleb128 0x7
 2165 0c50 BE0D0000 		.4byte	.LASF223
 2166 0c54 0B       		.byte	0xb
 2167 0c55 5202     		.2byte	0x252
 2168 0c57 2C000000 		.4byte	0x2c
 2169 0c5b 50       		.byte	0x50
 2170 0c5c 07       		.uleb128 0x7
 2171 0c5d E40F0000 		.4byte	.LASF224
 2172 0c61 0B       		.byte	0xb
 2173 0c62 5302     		.2byte	0x253
 2174 0c64 BD0C0000 		.4byte	0xcbd
 2175 0c68 54       		.byte	0x54
 2176 0c69 07       		.uleb128 0x7
 2177 0c6a B90D0000 		.4byte	.LASF225
 2178 0c6e 0B       		.byte	0xb
 2179 0c6f 7602     		.2byte	0x276
 2180 0c71 520A0000 		.4byte	0xa52
 2181 0c75 58       		.byte	0x58
 2182 0c76 22       		.uleb128 0x22
 2183 0c77 320C0000 		.4byte	.LASF163
 2184 0c7b 0B       		.byte	0xb
 2185 0c7c 7A02     		.2byte	0x27a
 2186 0c7e A9080000 		.4byte	0x8a9
 2187 0c82 4801     		.2byte	0x148
 2188 0c84 22       		.uleb128 0x22
 2189 0c85 ED120000 		.4byte	.LASF226
 2190 0c89 0B       		.byte	0xb
 2191 0c8a 7B02     		.2byte	0x27b
 2192 0c8c 6B080000 		.4byte	0x86b
 2193 0c90 4C01     		.2byte	0x14c
 2194 0c92 22       		.uleb128 0x22
 2195 0c93 B1070000 		.4byte	.LASF227
 2196 0c97 0B       		.byte	0xb
 2197 0c98 7F02     		.2byte	0x27f
 2198 0c9a 710E0000 		.4byte	0xe71
 2199 0c9e DC02     		.2byte	0x2dc
 2200 0ca0 22       		.uleb128 0x22
 2201 0ca1 63110000 		.4byte	.LASF228
 2202 0ca5 0B       		.byte	0xb
 2203 0ca6 8402     		.2byte	0x284
 2204 0ca8 690D0000 		.4byte	0xd69
ARM GAS  /tmp/ccxS4laR.s 			page 44


 2205 0cac E002     		.2byte	0x2e0
 2206 0cae 22       		.uleb128 0x22
 2207 0caf E40C0000 		.4byte	.LASF229
 2208 0cb3 0B       		.byte	0xb
 2209 0cb4 8502     		.2byte	0x285
 2210 0cb6 7D0E0000 		.4byte	0xe7d
 2211 0cba EC02     		.2byte	0x2ec
 2212 0cbc 00       		.byte	0
 2213 0cbd 19       		.uleb128 0x19
 2214 0cbe 04       		.byte	0x4
 2215 0cbf C30C0000 		.4byte	0xcc3
 2216 0cc3 02       		.uleb128 0x2
 2217 0cc4 01       		.byte	0x1
 2218 0cc5 08       		.byte	0x8
 2219 0cc6 91070000 		.4byte	.LASF230
 2220 0cca 05       		.uleb128 0x5
 2221 0ccb C30C0000 		.4byte	0xcc3
 2222 0ccf 19       		.uleb128 0x19
 2223 0cd0 04       		.byte	0x4
 2224 0cd1 1B0A0000 		.4byte	0xa1b
 2225 0cd5 1C       		.uleb128 0x1c
 2226 0cd6 2C000000 		.4byte	0x2c
 2227 0cda F30C0000 		.4byte	0xcf3
 2228 0cde 1D       		.uleb128 0x1d
 2229 0cdf 390A0000 		.4byte	0xa39
 2230 0ce3 1D       		.uleb128 0x1d
 2231 0ce4 D0020000 		.4byte	0x2d0
 2232 0ce8 1D       		.uleb128 0x1d
 2233 0ce9 F30C0000 		.4byte	0xcf3
 2234 0ced 1D       		.uleb128 0x1d
 2235 0cee 2C000000 		.4byte	0x2c
 2236 0cf2 00       		.byte	0
 2237 0cf3 19       		.uleb128 0x19
 2238 0cf4 04       		.byte	0x4
 2239 0cf5 CA0C0000 		.4byte	0xcca
 2240 0cf9 19       		.uleb128 0x19
 2241 0cfa 04       		.byte	0x4
 2242 0cfb D50C0000 		.4byte	0xcd5
 2243 0cff 1C       		.uleb128 0x1c
 2244 0d00 AD060000 		.4byte	0x6ad
 2245 0d04 1D0D0000 		.4byte	0xd1d
 2246 0d08 1D       		.uleb128 0x1d
 2247 0d09 390A0000 		.4byte	0xa39
 2248 0d0d 1D       		.uleb128 0x1d
 2249 0d0e D0020000 		.4byte	0x2d0
 2250 0d12 1D       		.uleb128 0x1d
 2251 0d13 AD060000 		.4byte	0x6ad
 2252 0d17 1D       		.uleb128 0x1d
 2253 0d18 2C000000 		.4byte	0x2c
 2254 0d1c 00       		.byte	0
 2255 0d1d 19       		.uleb128 0x19
 2256 0d1e 04       		.byte	0x4
 2257 0d1f FF0C0000 		.4byte	0xcff
 2258 0d23 1C       		.uleb128 0x1c
 2259 0d24 2C000000 		.4byte	0x2c
 2260 0d28 370D0000 		.4byte	0xd37
 2261 0d2c 1D       		.uleb128 0x1d
ARM GAS  /tmp/ccxS4laR.s 			page 45


 2262 0d2d 390A0000 		.4byte	0xa39
 2263 0d31 1D       		.uleb128 0x1d
 2264 0d32 D0020000 		.4byte	0x2d0
 2265 0d36 00       		.byte	0
 2266 0d37 19       		.uleb128 0x19
 2267 0d38 04       		.byte	0x4
 2268 0d39 230D0000 		.4byte	0xd23
 2269 0d3d 0C       		.uleb128 0xc
 2270 0d3e AE000000 		.4byte	0xae
 2271 0d42 4D0D0000 		.4byte	0xd4d
 2272 0d46 0D       		.uleb128 0xd
 2273 0d47 D2020000 		.4byte	0x2d2
 2274 0d4b 02       		.byte	0x2
 2275 0d4c 00       		.byte	0
 2276 0d4d 0C       		.uleb128 0xc
 2277 0d4e AE000000 		.4byte	0xae
 2278 0d52 5D0D0000 		.4byte	0xd5d
 2279 0d56 0D       		.uleb128 0xd
 2280 0d57 D2020000 		.4byte	0x2d2
 2281 0d5b 00       		.byte	0
 2282 0d5c 00       		.byte	0
 2283 0d5d 08       		.uleb128 0x8
 2284 0d5e 69050000 		.4byte	.LASF231
 2285 0d62 0B       		.byte	0xb
 2286 0d63 1D01     		.2byte	0x11d
 2287 0d65 F1080000 		.4byte	0x8f1
 2288 0d69 23       		.uleb128 0x23
 2289 0d6a 18110000 		.4byte	.LASF232
 2290 0d6e 0C       		.byte	0xc
 2291 0d6f 0B       		.byte	0xb
 2292 0d70 2101     		.2byte	0x121
 2293 0d72 9E0D0000 		.4byte	0xd9e
 2294 0d76 07       		.uleb128 0x7
 2295 0d77 A6060000 		.4byte	.LASF143
 2296 0d7b 0B       		.byte	0xb
 2297 0d7c 2301     		.2byte	0x123
 2298 0d7e 9E0D0000 		.4byte	0xd9e
 2299 0d82 00       		.byte	0
 2300 0d83 07       		.uleb128 0x7
 2301 0d84 840F0000 		.4byte	.LASF233
 2302 0d88 0B       		.byte	0xb
 2303 0d89 2401     		.2byte	0x124
 2304 0d8b 2C000000 		.4byte	0x2c
 2305 0d8f 04       		.byte	0x4
 2306 0d90 07       		.uleb128 0x7
 2307 0d91 29130000 		.4byte	.LASF234
 2308 0d95 0B       		.byte	0xb
 2309 0d96 2501     		.2byte	0x125
 2310 0d98 A40D0000 		.4byte	0xda4
 2311 0d9c 08       		.byte	0x8
 2312 0d9d 00       		.byte	0
 2313 0d9e 19       		.uleb128 0x19
 2314 0d9f 04       		.byte	0x4
 2315 0da0 690D0000 		.4byte	0xd69
 2316 0da4 19       		.uleb128 0x19
 2317 0da5 04       		.byte	0x4
 2318 0da6 5D0D0000 		.4byte	0xd5d
ARM GAS  /tmp/ccxS4laR.s 			page 46


 2319 0daa 23       		.uleb128 0x23
 2320 0dab 46050000 		.4byte	.LASF235
 2321 0daf 0E       		.byte	0xe
 2322 0db0 0B       		.byte	0xb
 2323 0db1 3D01     		.2byte	0x13d
 2324 0db3 DF0D0000 		.4byte	0xddf
 2325 0db7 07       		.uleb128 0x7
 2326 0db8 E7120000 		.4byte	.LASF236
 2327 0dbc 0B       		.byte	0xb
 2328 0dbd 3E01     		.2byte	0x13e
 2329 0dbf DF0D0000 		.4byte	0xddf
 2330 0dc3 00       		.byte	0
 2331 0dc4 07       		.uleb128 0x7
 2332 0dc5 91090000 		.4byte	.LASF237
 2333 0dc9 0B       		.byte	0xb
 2334 0dca 3F01     		.2byte	0x13f
 2335 0dcc DF0D0000 		.4byte	0xddf
 2336 0dd0 06       		.byte	0x6
 2337 0dd1 07       		.uleb128 0x7
 2338 0dd2 97090000 		.4byte	.LASF238
 2339 0dd6 0B       		.byte	0xb
 2340 0dd7 4001     		.2byte	0x140
 2341 0dd9 D2000000 		.4byte	0xd2
 2342 0ddd 0C       		.byte	0xc
 2343 0dde 00       		.byte	0
 2344 0ddf 0C       		.uleb128 0xc
 2345 0de0 D2000000 		.4byte	0xd2
 2346 0de4 EF0D0000 		.4byte	0xdef
 2347 0de8 0D       		.uleb128 0xd
 2348 0de9 D2020000 		.4byte	0x2d2
 2349 0ded 02       		.byte	0x2
 2350 0dee 00       		.byte	0
 2351 0def 0C       		.uleb128 0xc
 2352 0df0 C30C0000 		.4byte	0xcc3
 2353 0df4 FF0D0000 		.4byte	0xdff
 2354 0df8 0D       		.uleb128 0xd
 2355 0df9 D2020000 		.4byte	0x2d2
 2356 0dfd 19       		.byte	0x19
 2357 0dfe 00       		.byte	0
 2358 0dff 0C       		.uleb128 0xc
 2359 0e00 C30C0000 		.4byte	0xcc3
 2360 0e04 0F0E0000 		.4byte	0xe0f
 2361 0e08 0D       		.uleb128 0xd
 2362 0e09 D2020000 		.4byte	0x2d2
 2363 0e0d 07       		.byte	0x7
 2364 0e0e 00       		.byte	0
 2365 0e0f 0C       		.uleb128 0xc
 2366 0e10 C30C0000 		.4byte	0xcc3
 2367 0e14 1F0E0000 		.4byte	0xe1f
 2368 0e18 0D       		.uleb128 0xd
 2369 0e19 D2020000 		.4byte	0x2d2
 2370 0e1d 17       		.byte	0x17
 2371 0e1e 00       		.byte	0
 2372 0e1f 0C       		.uleb128 0xc
 2373 0e20 EB080000 		.4byte	0x8eb
 2374 0e24 2F0E0000 		.4byte	0xe2f
 2375 0e28 0D       		.uleb128 0xd
ARM GAS  /tmp/ccxS4laR.s 			page 47


 2376 0e29 D2020000 		.4byte	0x2d2
 2377 0e2d 1D       		.byte	0x1d
 2378 0e2e 00       		.byte	0
 2379 0e2f 0C       		.uleb128 0xc
 2380 0e30 43000000 		.4byte	0x43
 2381 0e34 3F0E0000 		.4byte	0xe3f
 2382 0e38 0D       		.uleb128 0xd
 2383 0e39 D2020000 		.4byte	0x2d2
 2384 0e3d 1D       		.byte	0x1d
 2385 0e3e 00       		.byte	0
 2386 0e3f 0C       		.uleb128 0xc
 2387 0e40 C30C0000 		.4byte	0xcc3
 2388 0e44 4F0E0000 		.4byte	0xe4f
 2389 0e48 0D       		.uleb128 0xd
 2390 0e49 D2020000 		.4byte	0x2d2
 2391 0e4d 18       		.byte	0x18
 2392 0e4e 00       		.byte	0
 2393 0e4f 24       		.uleb128 0x24
 2394 0e50 5A0E0000 		.4byte	0xe5a
 2395 0e54 1D       		.uleb128 0x1d
 2396 0e55 390A0000 		.4byte	0xa39
 2397 0e59 00       		.byte	0
 2398 0e5a 19       		.uleb128 0x19
 2399 0e5b 04       		.byte	0x4
 2400 0e5c 4F0E0000 		.4byte	0xe4f
 2401 0e60 19       		.uleb128 0x19
 2402 0e61 04       		.byte	0x4
 2403 0e62 8C070000 		.4byte	0x78c
 2404 0e66 24       		.uleb128 0x24
 2405 0e67 710E0000 		.4byte	0xe71
 2406 0e6b 1D       		.uleb128 0x1d
 2407 0e6c 2C000000 		.4byte	0x2c
 2408 0e70 00       		.byte	0
 2409 0e71 19       		.uleb128 0x19
 2410 0e72 04       		.byte	0x4
 2411 0e73 770E0000 		.4byte	0xe77
 2412 0e77 19       		.uleb128 0x19
 2413 0e78 04       		.byte	0x4
 2414 0e79 660E0000 		.4byte	0xe66
 2415 0e7d 0C       		.uleb128 0xc
 2416 0e7e 5D0D0000 		.4byte	0xd5d
 2417 0e82 8D0E0000 		.4byte	0xe8d
 2418 0e86 0D       		.uleb128 0xd
 2419 0e87 D2020000 		.4byte	0x2d2
 2420 0e8b 02       		.byte	0x2
 2421 0e8c 00       		.byte	0
 2422 0e8d 0E       		.uleb128 0xe
 2423 0e8e 89040000 		.4byte	.LASF239
 2424 0e92 0B       		.byte	0xb
 2425 0e93 FD02     		.2byte	0x2fd
 2426 0e95 390A0000 		.4byte	0xa39
 2427 0e99 0E       		.uleb128 0xe
 2428 0e9a 59030000 		.4byte	.LASF240
 2429 0e9e 0B       		.byte	0xb
 2430 0e9f FE02     		.2byte	0x2fe
 2431 0ea1 3F0A0000 		.4byte	0xa3f
 2432 0ea5 25       		.uleb128 0x25
ARM GAS  /tmp/ccxS4laR.s 			page 48


 2433 0ea6 73746400 		.ascii	"std\000"
 2434 0eaa 22       		.byte	0x22
 2435 0eab 00       		.byte	0
 2436 0eac AC100000 		.4byte	0x10ac
 2437 0eb0 26       		.uleb128 0x26
 2438 0eb1 E0090000 		.4byte	.LASF243
 2439 0eb5 10       		.byte	0x10
 2440 0eb6 DF       		.byte	0xdf
 2441 0eb7 27       		.uleb128 0x27
 2442 0eb8 10       		.byte	0x10
 2443 0eb9 DF       		.byte	0xdf
 2444 0eba B00E0000 		.4byte	0xeb0
 2445 0ebe 28       		.uleb128 0x28
 2446 0ebf 0C       		.byte	0xc
 2447 0ec0 7C       		.byte	0x7c
 2448 0ec1 36110000 		.4byte	0x1136
 2449 0ec5 28       		.uleb128 0x28
 2450 0ec6 0C       		.byte	0xc
 2451 0ec7 7D       		.byte	0x7d
 2452 0ec8 66110000 		.4byte	0x1166
 2453 0ecc 28       		.uleb128 0x28
 2454 0ecd 0C       		.byte	0xc
 2455 0ece 81       		.byte	0x81
 2456 0ecf D8110000 		.4byte	0x11d8
 2457 0ed3 28       		.uleb128 0x28
 2458 0ed4 0C       		.byte	0xc
 2459 0ed5 87       		.byte	0x87
 2460 0ed6 ED110000 		.4byte	0x11ed
 2461 0eda 28       		.uleb128 0x28
 2462 0edb 0C       		.byte	0xc
 2463 0edc 88       		.byte	0x88
 2464 0edd 09120000 		.4byte	0x1209
 2465 0ee1 28       		.uleb128 0x28
 2466 0ee2 0C       		.byte	0xc
 2467 0ee3 89       		.byte	0x89
 2468 0ee4 1E120000 		.4byte	0x121e
 2469 0ee8 28       		.uleb128 0x28
 2470 0ee9 0C       		.byte	0xc
 2471 0eea 8A       		.byte	0x8a
 2472 0eeb 33120000 		.4byte	0x1233
 2473 0eef 28       		.uleb128 0x28
 2474 0ef0 0C       		.byte	0xc
 2475 0ef1 8C       		.byte	0x8c
 2476 0ef2 5C120000 		.4byte	0x125c
 2477 0ef6 28       		.uleb128 0x28
 2478 0ef7 0C       		.byte	0xc
 2479 0ef8 8F       		.byte	0x8f
 2480 0ef9 76120000 		.4byte	0x1276
 2481 0efd 28       		.uleb128 0x28
 2482 0efe 0C       		.byte	0xc
 2483 0eff 91       		.byte	0x91
 2484 0f00 8B120000 		.4byte	0x128b
 2485 0f04 28       		.uleb128 0x28
 2486 0f05 0C       		.byte	0xc
 2487 0f06 94       		.byte	0x94
 2488 0f07 A5120000 		.4byte	0x12a5
 2489 0f0b 28       		.uleb128 0x28
ARM GAS  /tmp/ccxS4laR.s 			page 49


 2490 0f0c 0C       		.byte	0xc
 2491 0f0d 95       		.byte	0x95
 2492 0f0e BF120000 		.4byte	0x12bf
 2493 0f12 28       		.uleb128 0x28
 2494 0f13 0C       		.byte	0xc
 2495 0f14 96       		.byte	0x96
 2496 0f15 F0120000 		.4byte	0x12f0
 2497 0f19 28       		.uleb128 0x28
 2498 0f1a 0C       		.byte	0xc
 2499 0f1b 98       		.byte	0x98
 2500 0f1c 0F130000 		.4byte	0x130f
 2501 0f20 28       		.uleb128 0x28
 2502 0f21 0C       		.byte	0xc
 2503 0f22 9E       		.byte	0x9e
 2504 0f23 2F130000 		.4byte	0x132f
 2505 0f27 28       		.uleb128 0x28
 2506 0f28 0C       		.byte	0xc
 2507 0f29 A0       		.byte	0xa0
 2508 0f2a 3A130000 		.4byte	0x133a
 2509 0f2e 28       		.uleb128 0x28
 2510 0f2f 0C       		.byte	0xc
 2511 0f30 A1       		.byte	0xa1
 2512 0f31 4B130000 		.4byte	0x134b
 2513 0f35 28       		.uleb128 0x28
 2514 0f36 0C       		.byte	0xc
 2515 0f37 A2       		.byte	0xa2
 2516 0f38 6B130000 		.4byte	0x136b
 2517 0f3c 28       		.uleb128 0x28
 2518 0f3d 0C       		.byte	0xc
 2519 0f3e A3       		.byte	0xa3
 2520 0f3f 8A130000 		.4byte	0x138a
 2521 0f43 28       		.uleb128 0x28
 2522 0f44 0C       		.byte	0xc
 2523 0f45 A4       		.byte	0xa4
 2524 0f46 A9130000 		.4byte	0x13a9
 2525 0f4a 28       		.uleb128 0x28
 2526 0f4b 0C       		.byte	0xc
 2527 0f4c A6       		.byte	0xa6
 2528 0f4d BE130000 		.4byte	0x13be
 2529 0f51 28       		.uleb128 0x28
 2530 0f52 0C       		.byte	0xc
 2531 0f53 A7       		.byte	0xa7
 2532 0f54 E3130000 		.4byte	0x13e3
 2533 0f58 29       		.uleb128 0x29
 2534 0f59 0C       		.byte	0xc
 2535 0f5a 0401     		.2byte	0x104
 2536 0f5c 96110000 		.4byte	0x1196
 2537 0f60 29       		.uleb128 0x29
 2538 0f61 0C       		.byte	0xc
 2539 0f62 0901     		.2byte	0x109
 2540 0f64 F6100000 		.4byte	0x10f6
 2541 0f68 29       		.uleb128 0x29
 2542 0f69 0C       		.byte	0xc
 2543 0f6a 0A01     		.2byte	0x10a
 2544 0f6c FD130000 		.4byte	0x13fd
 2545 0f70 29       		.uleb128 0x29
 2546 0f71 0C       		.byte	0xc
ARM GAS  /tmp/ccxS4laR.s 			page 50


 2547 0f72 0C01     		.2byte	0x10c
 2548 0f74 17140000 		.4byte	0x1417
 2549 0f78 29       		.uleb128 0x29
 2550 0f79 0C       		.byte	0xc
 2551 0f7a 0D01     		.2byte	0x10d
 2552 0f7c 6A140000 		.4byte	0x146a
 2553 0f80 29       		.uleb128 0x29
 2554 0f81 0C       		.byte	0xc
 2555 0f82 0E01     		.2byte	0x10e
 2556 0f84 2C140000 		.4byte	0x142c
 2557 0f88 29       		.uleb128 0x29
 2558 0f89 0C       		.byte	0xc
 2559 0f8a 0F01     		.2byte	0x10f
 2560 0f8c 4B140000 		.4byte	0x144b
 2561 0f90 29       		.uleb128 0x29
 2562 0f91 0C       		.byte	0xc
 2563 0f92 1001     		.2byte	0x110
 2564 0f94 84140000 		.4byte	0x1484
 2565 0f98 2A       		.uleb128 0x2a
 2566 0f99 61627300 		.ascii	"abs\000"
 2567 0f9d 0C       		.byte	0xc
 2568 0f9e B4       		.byte	0xb4
 2569 0f9f 03040000 		.4byte	.LASF443
 2570 0fa3 72000000 		.4byte	0x72
 2571 0fa7 B10F0000 		.4byte	0xfb1
 2572 0fab 1D       		.uleb128 0x1d
 2573 0fac 72000000 		.4byte	0x72
 2574 0fb0 00       		.byte	0
 2575 0fb1 29       		.uleb128 0x29
 2576 0fb2 0D       		.byte	0xd
 2577 0fb3 4D04     		.2byte	0x44d
 2578 0fb5 84150000 		.4byte	0x1584
 2579 0fb9 29       		.uleb128 0x29
 2580 0fba 0D       		.byte	0xd
 2581 0fbb 4E04     		.2byte	0x44e
 2582 0fbd 79150000 		.4byte	0x1579
 2583 0fc1 2B       		.uleb128 0x2b
 2584 0fc2 D7020000 		.4byte	.LASF241
 2585 0fc6 0D       		.byte	0xd
 2586 0fc7 9301     		.2byte	0x193
 2587 0fc9 2E050000 		.4byte	.LASF444
 2588 0fcd 79000000 		.4byte	0x79
 2589 0fd1 E00F0000 		.4byte	0xfe0
 2590 0fd5 1D       		.uleb128 0x1d
 2591 0fd6 79000000 		.4byte	0x79
 2592 0fda 1D       		.uleb128 0x1d
 2593 0fdb C5150000 		.4byte	0x15c5
 2594 0fdf 00       		.byte	0
 2595 0fe0 28       		.uleb128 0x28
 2596 0fe1 0E       		.byte	0xe
 2597 0fe2 30       		.byte	0x30
 2598 0fe3 88010000 		.4byte	0x188
 2599 0fe7 28       		.uleb128 0x28
 2600 0fe8 0E       		.byte	0xe
 2601 0fe9 31       		.byte	0x31
 2602 0fea A3010000 		.4byte	0x1a3
 2603 0fee 28       		.uleb128 0x28
ARM GAS  /tmp/ccxS4laR.s 			page 51


 2604 0fef 0E       		.byte	0xe
 2605 0ff0 32       		.byte	0x32
 2606 0ff1 B9010000 		.4byte	0x1b9
 2607 0ff5 28       		.uleb128 0x28
 2608 0ff6 0E       		.byte	0xe
 2609 0ff7 33       		.byte	0x33
 2610 0ff8 DE010000 		.4byte	0x1de
 2611 0ffc 28       		.uleb128 0x28
 2612 0ffd 0E       		.byte	0xe
 2613 0ffe 35       		.byte	0x35
 2614 0fff 62020000 		.4byte	0x262
 2615 1003 28       		.uleb128 0x28
 2616 1004 0E       		.byte	0xe
 2617 1005 36       		.byte	0x36
 2618 1006 78020000 		.4byte	0x278
 2619 100a 28       		.uleb128 0x28
 2620 100b 0E       		.byte	0xe
 2621 100c 37       		.byte	0x37
 2622 100d 8E020000 		.4byte	0x28e
 2623 1011 28       		.uleb128 0x28
 2624 1012 0E       		.byte	0xe
 2625 1013 38       		.byte	0x38
 2626 1014 A4020000 		.4byte	0x2a4
 2627 1018 28       		.uleb128 0x28
 2628 1019 0E       		.byte	0xe
 2629 101a 3A       		.byte	0x3a
 2630 101b 0A020000 		.4byte	0x20a
 2631 101f 28       		.uleb128 0x28
 2632 1020 0E       		.byte	0xe
 2633 1021 3B       		.byte	0x3b
 2634 1022 20020000 		.4byte	0x220
 2635 1026 28       		.uleb128 0x28
 2636 1027 0E       		.byte	0xe
 2637 1028 3C       		.byte	0x3c
 2638 1029 36020000 		.4byte	0x236
 2639 102d 28       		.uleb128 0x28
 2640 102e 0E       		.byte	0xe
 2641 102f 3D       		.byte	0x3d
 2642 1030 4C020000 		.4byte	0x24c
 2643 1034 28       		.uleb128 0x28
 2644 1035 0E       		.byte	0xe
 2645 1036 3F       		.byte	0x3f
 2646 1037 BA020000 		.4byte	0x2ba
 2647 103b 28       		.uleb128 0x28
 2648 103c 0E       		.byte	0xe
 2649 103d 40       		.byte	0x40
 2650 103e F4010000 		.4byte	0x1f4
 2651 1042 28       		.uleb128 0x28
 2652 1043 0E       		.byte	0xe
 2653 1044 42       		.byte	0x42
 2654 1045 93010000 		.4byte	0x193
 2655 1049 28       		.uleb128 0x28
 2656 104a 0E       		.byte	0xe
 2657 104b 43       		.byte	0x43
 2658 104c AE010000 		.4byte	0x1ae
 2659 1050 28       		.uleb128 0x28
 2660 1051 0E       		.byte	0xe
ARM GAS  /tmp/ccxS4laR.s 			page 52


 2661 1052 44       		.byte	0x44
 2662 1053 C9010000 		.4byte	0x1c9
 2663 1057 28       		.uleb128 0x28
 2664 1058 0E       		.byte	0xe
 2665 1059 45       		.byte	0x45
 2666 105a E9010000 		.4byte	0x1e9
 2667 105e 28       		.uleb128 0x28
 2668 105f 0E       		.byte	0xe
 2669 1060 47       		.byte	0x47
 2670 1061 6D020000 		.4byte	0x26d
 2671 1065 28       		.uleb128 0x28
 2672 1066 0E       		.byte	0xe
 2673 1067 48       		.byte	0x48
 2674 1068 83020000 		.4byte	0x283
 2675 106c 28       		.uleb128 0x28
 2676 106d 0E       		.byte	0xe
 2677 106e 49       		.byte	0x49
 2678 106f 99020000 		.4byte	0x299
 2679 1073 28       		.uleb128 0x28
 2680 1074 0E       		.byte	0xe
 2681 1075 4A       		.byte	0x4a
 2682 1076 AF020000 		.4byte	0x2af
 2683 107a 28       		.uleb128 0x28
 2684 107b 0E       		.byte	0xe
 2685 107c 4C       		.byte	0x4c
 2686 107d 15020000 		.4byte	0x215
 2687 1081 28       		.uleb128 0x28
 2688 1082 0E       		.byte	0xe
 2689 1083 4D       		.byte	0x4d
 2690 1084 2B020000 		.4byte	0x22b
 2691 1088 28       		.uleb128 0x28
 2692 1089 0E       		.byte	0xe
 2693 108a 4E       		.byte	0x4e
 2694 108b 41020000 		.4byte	0x241
 2695 108f 28       		.uleb128 0x28
 2696 1090 0E       		.byte	0xe
 2697 1091 4F       		.byte	0x4f
 2698 1092 57020000 		.4byte	0x257
 2699 1096 28       		.uleb128 0x28
 2700 1097 0E       		.byte	0xe
 2701 1098 51       		.byte	0x51
 2702 1099 C5020000 		.4byte	0x2c5
 2703 109d 28       		.uleb128 0x28
 2704 109e 0E       		.byte	0xe
 2705 109f 52       		.byte	0x52
 2706 10a0 FF010000 		.4byte	0x1ff
 2707 10a4 28       		.uleb128 0x28
 2708 10a5 0F       		.byte	0xf
 2709 10a6 38       		.byte	0x38
 2710 10a7 80000000 		.4byte	0x80
 2711 10ab 00       		.byte	0
 2712 10ac 2C       		.uleb128 0x2c
 2713 10ad 9F010000 		.4byte	.LASF242
 2714 10b1 10       		.byte	0x10
 2715 10b2 E1       		.byte	0xe1
 2716 10b3 11110000 		.4byte	0x1111
 2717 10b7 26       		.uleb128 0x26
ARM GAS  /tmp/ccxS4laR.s 			page 53


 2718 10b8 E0090000 		.4byte	.LASF243
 2719 10bc 10       		.byte	0x10
 2720 10bd E3       		.byte	0xe3
 2721 10be 27       		.uleb128 0x27
 2722 10bf 10       		.byte	0x10
 2723 10c0 E3       		.byte	0xe3
 2724 10c1 B7100000 		.4byte	0x10b7
 2725 10c5 28       		.uleb128 0x28
 2726 10c6 0C       		.byte	0xc
 2727 10c7 DC       		.byte	0xdc
 2728 10c8 96110000 		.4byte	0x1196
 2729 10cc 28       		.uleb128 0x28
 2730 10cd 0C       		.byte	0xc
 2731 10ce EC       		.byte	0xec
 2732 10cf FD130000 		.4byte	0x13fd
 2733 10d3 28       		.uleb128 0x28
 2734 10d4 0C       		.byte	0xc
 2735 10d5 F7       		.byte	0xf7
 2736 10d6 17140000 		.4byte	0x1417
 2737 10da 28       		.uleb128 0x28
 2738 10db 0C       		.byte	0xc
 2739 10dc F8       		.byte	0xf8
 2740 10dd 2C140000 		.4byte	0x142c
 2741 10e1 28       		.uleb128 0x28
 2742 10e2 0C       		.byte	0xc
 2743 10e3 F9       		.byte	0xf9
 2744 10e4 4B140000 		.4byte	0x144b
 2745 10e8 28       		.uleb128 0x28
 2746 10e9 0C       		.byte	0xc
 2747 10ea FB       		.byte	0xfb
 2748 10eb 6A140000 		.4byte	0x146a
 2749 10ef 28       		.uleb128 0x28
 2750 10f0 0C       		.byte	0xc
 2751 10f1 FC       		.byte	0xfc
 2752 10f2 84140000 		.4byte	0x1484
 2753 10f6 2D       		.uleb128 0x2d
 2754 10f7 64697600 		.ascii	"div\000"
 2755 10fb 0C       		.byte	0xc
 2756 10fc E9       		.byte	0xe9
 2757 10fd 6A020000 		.4byte	.LASF445
 2758 1101 96110000 		.4byte	0x1196
 2759 1105 1D       		.uleb128 0x1d
 2760 1106 72000000 		.4byte	0x72
 2761 110a 1D       		.uleb128 0x1d
 2762 110b 72000000 		.4byte	0x72
 2763 110f 00       		.byte	0
 2764 1110 00       		.byte	0
 2765 1111 14       		.uleb128 0x14
 2766 1112 08       		.byte	0x8
 2767 1113 11       		.byte	0x11
 2768 1114 20       		.byte	0x20
 2769 1115 02010000 		.4byte	.LASF245
 2770 1119 36110000 		.4byte	0x1136
 2771 111d 11       		.uleb128 0x11
 2772 111e A4080000 		.4byte	.LASF246
 2773 1122 11       		.byte	0x11
 2774 1123 21       		.byte	0x21
ARM GAS  /tmp/ccxS4laR.s 			page 54


 2775 1124 2C000000 		.4byte	0x2c
 2776 1128 00       		.byte	0
 2777 1129 18       		.uleb128 0x18
 2778 112a 72656D00 		.ascii	"rem\000"
 2779 112e 11       		.byte	0x11
 2780 112f 22       		.byte	0x22
 2781 1130 2C000000 		.4byte	0x2c
 2782 1134 04       		.byte	0x4
 2783 1135 00       		.byte	0
 2784 1136 04       		.uleb128 0x4
 2785 1137 F0100000 		.4byte	.LASF247
 2786 113b 11       		.byte	0x11
 2787 113c 23       		.byte	0x23
 2788 113d 11110000 		.4byte	0x1111
 2789 1141 14       		.uleb128 0x14
 2790 1142 08       		.byte	0x8
 2791 1143 11       		.byte	0x11
 2792 1144 26       		.byte	0x26
 2793 1145 370D0000 		.4byte	.LASF248
 2794 1149 66110000 		.4byte	0x1166
 2795 114d 11       		.uleb128 0x11
 2796 114e A4080000 		.4byte	.LASF246
 2797 1152 11       		.byte	0x11
 2798 1153 27       		.byte	0x27
 2799 1154 E4000000 		.4byte	0xe4
 2800 1158 00       		.byte	0
 2801 1159 18       		.uleb128 0x18
 2802 115a 72656D00 		.ascii	"rem\000"
 2803 115e 11       		.byte	0x11
 2804 115f 28       		.byte	0x28
 2805 1160 E4000000 		.4byte	0xe4
 2806 1164 04       		.byte	0x4
 2807 1165 00       		.byte	0
 2808 1166 04       		.uleb128 0x4
 2809 1167 490F0000 		.4byte	.LASF249
 2810 116b 11       		.byte	0x11
 2811 116c 29       		.byte	0x29
 2812 116d 41110000 		.4byte	0x1141
 2813 1171 14       		.uleb128 0x14
 2814 1172 10       		.byte	0x10
 2815 1173 11       		.byte	0x11
 2816 1174 2D       		.byte	0x2d
 2817 1175 A2110000 		.4byte	.LASF250
 2818 1179 96110000 		.4byte	0x1196
 2819 117d 11       		.uleb128 0x11
 2820 117e A4080000 		.4byte	.LASF246
 2821 1182 11       		.byte	0x11
 2822 1183 2E       		.byte	0x2e
 2823 1184 72000000 		.4byte	0x72
 2824 1188 00       		.byte	0
 2825 1189 18       		.uleb128 0x18
 2826 118a 72656D00 		.ascii	"rem\000"
 2827 118e 11       		.byte	0x11
 2828 118f 2F       		.byte	0x2f
 2829 1190 72000000 		.4byte	0x72
 2830 1194 08       		.byte	0x8
 2831 1195 00       		.byte	0
ARM GAS  /tmp/ccxS4laR.s 			page 55


 2832 1196 04       		.uleb128 0x4
 2833 1197 25120000 		.4byte	.LASF251
 2834 119b 11       		.byte	0x11
 2835 119c 30       		.byte	0x30
 2836 119d 71110000 		.4byte	0x1171
 2837 11a1 04       		.uleb128 0x4
 2838 11a2 DB100000 		.4byte	.LASF252
 2839 11a6 11       		.byte	0x11
 2840 11a7 35       		.byte	0x35
 2841 11a8 AC110000 		.4byte	0x11ac
 2842 11ac 19       		.uleb128 0x19
 2843 11ad 04       		.byte	0x4
 2844 11ae B2110000 		.4byte	0x11b2
 2845 11b2 1C       		.uleb128 0x1c
 2846 11b3 2C000000 		.4byte	0x2c
 2847 11b7 C6110000 		.4byte	0x11c6
 2848 11bb 1D       		.uleb128 0x1d
 2849 11bc C6110000 		.4byte	0x11c6
 2850 11c0 1D       		.uleb128 0x1d
 2851 11c1 C6110000 		.4byte	0x11c6
 2852 11c5 00       		.byte	0
 2853 11c6 19       		.uleb128 0x19
 2854 11c7 04       		.byte	0x4
 2855 11c8 CC110000 		.4byte	0x11cc
 2856 11cc 2E       		.uleb128 0x2e
 2857 11cd 0F       		.uleb128 0xf
 2858 11ce 4F060000 		.4byte	.LASF253
 2859 11d2 11       		.byte	0x11
 2860 11d3 5F       		.byte	0x5f
 2861 11d4 BD0C0000 		.4byte	0xcbd
 2862 11d8 2F       		.uleb128 0x2f
 2863 11d9 740C0000 		.4byte	.LASF254
 2864 11dd 11       		.byte	0x11
 2865 11de 48       		.byte	0x48
 2866 11df 2C000000 		.4byte	0x2c
 2867 11e3 ED110000 		.4byte	0x11ed
 2868 11e7 1D       		.uleb128 0x1d
 2869 11e8 BF080000 		.4byte	0x8bf
 2870 11ec 00       		.byte	0
 2871 11ed 2F       		.uleb128 0x2f
 2872 11ee 36120000 		.4byte	.LASF255
 2873 11f2 11       		.byte	0x11
 2874 11f3 49       		.byte	0x49
 2875 11f4 02120000 		.4byte	0x1202
 2876 11f8 02120000 		.4byte	0x1202
 2877 11fc 1D       		.uleb128 0x1d
 2878 11fd F30C0000 		.4byte	0xcf3
 2879 1201 00       		.byte	0
 2880 1202 02       		.uleb128 0x2
 2881 1203 08       		.byte	0x8
 2882 1204 04       		.byte	0x4
 2883 1205 6E120000 		.4byte	.LASF256
 2884 1209 2F       		.uleb128 0x2f
 2885 120a 45120000 		.4byte	.LASF257
 2886 120e 11       		.byte	0x11
 2887 120f 4D       		.byte	0x4d
 2888 1210 2C000000 		.4byte	0x2c
ARM GAS  /tmp/ccxS4laR.s 			page 56


 2889 1214 1E120000 		.4byte	0x121e
 2890 1218 1D       		.uleb128 0x1d
 2891 1219 F30C0000 		.4byte	0xcf3
 2892 121d 00       		.byte	0
 2893 121e 2F       		.uleb128 0x2f
 2894 121f 4A120000 		.4byte	.LASF258
 2895 1223 11       		.byte	0x11
 2896 1224 4F       		.byte	0x4f
 2897 1225 E4000000 		.4byte	0xe4
 2898 1229 33120000 		.4byte	0x1233
 2899 122d 1D       		.uleb128 0x1d
 2900 122e F30C0000 		.4byte	0xcf3
 2901 1232 00       		.byte	0
 2902 1233 2F       		.uleb128 0x2f
 2903 1234 8F060000 		.4byte	.LASF259
 2904 1238 11       		.byte	0x11
 2905 1239 51       		.byte	0x51
 2906 123a D0020000 		.4byte	0x2d0
 2907 123e 5C120000 		.4byte	0x125c
 2908 1242 1D       		.uleb128 0x1d
 2909 1243 C6110000 		.4byte	0x11c6
 2910 1247 1D       		.uleb128 0x1d
 2911 1248 C6110000 		.4byte	0x11c6
 2912 124c 1D       		.uleb128 0x1d
 2913 124d 33000000 		.4byte	0x33
 2914 1251 1D       		.uleb128 0x1d
 2915 1252 33000000 		.4byte	0x33
 2916 1256 1D       		.uleb128 0x1d
 2917 1257 A1110000 		.4byte	0x11a1
 2918 125b 00       		.byte	0
 2919 125c 30       		.uleb128 0x30
 2920 125d 64697600 		.ascii	"div\000"
 2921 1261 11       		.byte	0x11
 2922 1262 57       		.byte	0x57
 2923 1263 36110000 		.4byte	0x1136
 2924 1267 76120000 		.4byte	0x1276
 2925 126b 1D       		.uleb128 0x1d
 2926 126c 2C000000 		.4byte	0x2c
 2927 1270 1D       		.uleb128 0x1d
 2928 1271 2C000000 		.4byte	0x2c
 2929 1275 00       		.byte	0
 2930 1276 2F       		.uleb128 0x2f
 2931 1277 00000000 		.4byte	.LASF260
 2932 127b 11       		.byte	0x11
 2933 127c 5A       		.byte	0x5a
 2934 127d BD0C0000 		.4byte	0xcbd
 2935 1281 8B120000 		.4byte	0x128b
 2936 1285 1D       		.uleb128 0x1d
 2937 1286 F30C0000 		.4byte	0xcf3
 2938 128a 00       		.byte	0
 2939 128b 2F       		.uleb128 0x2f
 2940 128c 220A0000 		.4byte	.LASF261
 2941 1290 11       		.byte	0x11
 2942 1291 63       		.byte	0x63
 2943 1292 66110000 		.4byte	0x1166
 2944 1296 A5120000 		.4byte	0x12a5
 2945 129a 1D       		.uleb128 0x1d
ARM GAS  /tmp/ccxS4laR.s 			page 57


 2946 129b E4000000 		.4byte	0xe4
 2947 129f 1D       		.uleb128 0x1d
 2948 12a0 E4000000 		.4byte	0xe4
 2949 12a4 00       		.byte	0
 2950 12a5 2F       		.uleb128 0x2f
 2951 12a6 B7100000 		.4byte	.LASF262
 2952 12aa 11       		.byte	0x11
 2953 12ab 65       		.byte	0x65
 2954 12ac 2C000000 		.4byte	0x2c
 2955 12b0 BF120000 		.4byte	0x12bf
 2956 12b4 1D       		.uleb128 0x1d
 2957 12b5 F30C0000 		.4byte	0xcf3
 2958 12b9 1D       		.uleb128 0x1d
 2959 12ba 33000000 		.4byte	0x33
 2960 12be 00       		.byte	0
 2961 12bf 2F       		.uleb128 0x2f
 2962 12c0 AC0C0000 		.4byte	.LASF263
 2963 12c4 11       		.byte	0x11
 2964 12c5 6B       		.byte	0x6b
 2965 12c6 33000000 		.4byte	0x33
 2966 12ca DE120000 		.4byte	0x12de
 2967 12ce 1D       		.uleb128 0x1d
 2968 12cf DE120000 		.4byte	0x12de
 2969 12d3 1D       		.uleb128 0x1d
 2970 12d4 F30C0000 		.4byte	0xcf3
 2971 12d8 1D       		.uleb128 0x1d
 2972 12d9 33000000 		.4byte	0x33
 2973 12dd 00       		.byte	0
 2974 12de 19       		.uleb128 0x19
 2975 12df 04       		.byte	0x4
 2976 12e0 E4120000 		.4byte	0x12e4
 2977 12e4 02       		.uleb128 0x2
 2978 12e5 04       		.byte	0x4
 2979 12e6 07       		.byte	0x7
 2980 12e7 05020000 		.4byte	.LASF264
 2981 12eb 05       		.uleb128 0x5
 2982 12ec E4120000 		.4byte	0x12e4
 2983 12f0 2F       		.uleb128 0x2f
 2984 12f1 17040000 		.4byte	.LASF265
 2985 12f5 11       		.byte	0x11
 2986 12f6 67       		.byte	0x67
 2987 12f7 2C000000 		.4byte	0x2c
 2988 12fb 0F130000 		.4byte	0x130f
 2989 12ff 1D       		.uleb128 0x1d
 2990 1300 DE120000 		.4byte	0x12de
 2991 1304 1D       		.uleb128 0x1d
 2992 1305 F30C0000 		.4byte	0xcf3
 2993 1309 1D       		.uleb128 0x1d
 2994 130a 33000000 		.4byte	0x33
 2995 130e 00       		.byte	0
 2996 130f 31       		.uleb128 0x31
 2997 1310 2F130000 		.4byte	.LASF266
 2998 1314 11       		.byte	0x11
 2999 1315 87       		.byte	0x87
 3000 1316 2F130000 		.4byte	0x132f
 3001 131a 1D       		.uleb128 0x1d
 3002 131b D0020000 		.4byte	0x2d0
ARM GAS  /tmp/ccxS4laR.s 			page 58


 3003 131f 1D       		.uleb128 0x1d
 3004 1320 33000000 		.4byte	0x33
 3005 1324 1D       		.uleb128 0x1d
 3006 1325 33000000 		.4byte	0x33
 3007 1329 1D       		.uleb128 0x1d
 3008 132a A1110000 		.4byte	0x11a1
 3009 132e 00       		.byte	0
 3010 132f 32       		.uleb128 0x32
 3011 1330 68000000 		.4byte	.LASF446
 3012 1334 11       		.byte	0x11
 3013 1335 88       		.byte	0x88
 3014 1336 2C000000 		.4byte	0x2c
 3015 133a 31       		.uleb128 0x31
 3016 133b 7E0A0000 		.4byte	.LASF267
 3017 133f 11       		.byte	0x11
 3018 1340 93       		.byte	0x93
 3019 1341 4B130000 		.4byte	0x134b
 3020 1345 1D       		.uleb128 0x1d
 3021 1346 43000000 		.4byte	0x43
 3022 134a 00       		.byte	0
 3023 134b 2F       		.uleb128 0x2f
 3024 134c 01060000 		.4byte	.LASF268
 3025 1350 11       		.byte	0x11
 3026 1351 94       		.byte	0x94
 3027 1352 02120000 		.4byte	0x1202
 3028 1356 65130000 		.4byte	0x1365
 3029 135a 1D       		.uleb128 0x1d
 3030 135b F30C0000 		.4byte	0xcf3
 3031 135f 1D       		.uleb128 0x1d
 3032 1360 65130000 		.4byte	0x1365
 3033 1364 00       		.byte	0
 3034 1365 19       		.uleb128 0x19
 3035 1366 04       		.byte	0x4
 3036 1367 BD0C0000 		.4byte	0xcbd
 3037 136b 2F       		.uleb128 0x2f
 3038 136c 63060000 		.4byte	.LASF269
 3039 1370 11       		.byte	0x11
 3040 1371 9F       		.byte	0x9f
 3041 1372 E4000000 		.4byte	0xe4
 3042 1376 8A130000 		.4byte	0x138a
 3043 137a 1D       		.uleb128 0x1d
 3044 137b F30C0000 		.4byte	0xcf3
 3045 137f 1D       		.uleb128 0x1d
 3046 1380 65130000 		.4byte	0x1365
 3047 1384 1D       		.uleb128 0x1d
 3048 1385 2C000000 		.4byte	0x2c
 3049 1389 00       		.byte	0
 3050 138a 2F       		.uleb128 0x2f
 3051 138b 2A0F0000 		.4byte	.LASF270
 3052 138f 11       		.byte	0x11
 3053 1390 A1       		.byte	0xa1
 3054 1391 F6000000 		.4byte	0xf6
 3055 1395 A9130000 		.4byte	0x13a9
 3056 1399 1D       		.uleb128 0x1d
 3057 139a F30C0000 		.4byte	0xcf3
 3058 139e 1D       		.uleb128 0x1d
 3059 139f 65130000 		.4byte	0x1365
ARM GAS  /tmp/ccxS4laR.s 			page 59


 3060 13a3 1D       		.uleb128 0x1d
 3061 13a4 2C000000 		.4byte	0x2c
 3062 13a8 00       		.byte	0
 3063 13a9 2F       		.uleb128 0x2f
 3064 13aa C7000000 		.4byte	.LASF271
 3065 13ae 11       		.byte	0x11
 3066 13af A4       		.byte	0xa4
 3067 13b0 2C000000 		.4byte	0x2c
 3068 13b4 BE130000 		.4byte	0x13be
 3069 13b8 1D       		.uleb128 0x1d
 3070 13b9 F30C0000 		.4byte	0xcf3
 3071 13bd 00       		.byte	0
 3072 13be 2F       		.uleb128 0x2f
 3073 13bf 94100000 		.4byte	.LASF272
 3074 13c3 11       		.byte	0x11
 3075 13c4 6D       		.byte	0x6d
 3076 13c5 33000000 		.4byte	0x33
 3077 13c9 DD130000 		.4byte	0x13dd
 3078 13cd 1D       		.uleb128 0x1d
 3079 13ce BD0C0000 		.4byte	0xcbd
 3080 13d2 1D       		.uleb128 0x1d
 3081 13d3 DD130000 		.4byte	0x13dd
 3082 13d7 1D       		.uleb128 0x1d
 3083 13d8 33000000 		.4byte	0x33
 3084 13dc 00       		.byte	0
 3085 13dd 19       		.uleb128 0x19
 3086 13de 04       		.byte	0x4
 3087 13df EB120000 		.4byte	0x12eb
 3088 13e3 2F       		.uleb128 0x2f
 3089 13e4 4E050000 		.4byte	.LASF273
 3090 13e8 11       		.byte	0x11
 3091 13e9 69       		.byte	0x69
 3092 13ea 2C000000 		.4byte	0x2c
 3093 13ee FD130000 		.4byte	0x13fd
 3094 13f2 1D       		.uleb128 0x1d
 3095 13f3 BD0C0000 		.4byte	0xcbd
 3096 13f7 1D       		.uleb128 0x1d
 3097 13f8 E4120000 		.4byte	0x12e4
 3098 13fc 00       		.byte	0
 3099 13fd 2F       		.uleb128 0x2f
 3100 13fe B0050000 		.4byte	.LASF274
 3101 1402 11       		.byte	0x11
 3102 1403 F1       		.byte	0xf1
 3103 1404 96110000 		.4byte	0x1196
 3104 1408 17140000 		.4byte	0x1417
 3105 140c 1D       		.uleb128 0x1d
 3106 140d 72000000 		.4byte	0x72
 3107 1411 1D       		.uleb128 0x1d
 3108 1412 72000000 		.4byte	0x72
 3109 1416 00       		.byte	0
 3110 1417 2F       		.uleb128 0x2f
 3111 1418 E9080000 		.4byte	.LASF275
 3112 141c 11       		.byte	0x11
 3113 141d EC       		.byte	0xec
 3114 141e 72000000 		.4byte	0x72
 3115 1422 2C140000 		.4byte	0x142c
 3116 1426 1D       		.uleb128 0x1d
ARM GAS  /tmp/ccxS4laR.s 			page 60


 3117 1427 F30C0000 		.4byte	0xcf3
 3118 142b 00       		.byte	0
 3119 142c 2F       		.uleb128 0x2f
 3120 142d DE030000 		.4byte	.LASF276
 3121 1431 11       		.byte	0x11
 3122 1432 F2       		.byte	0xf2
 3123 1433 72000000 		.4byte	0x72
 3124 1437 4B140000 		.4byte	0x144b
 3125 143b 1D       		.uleb128 0x1d
 3126 143c F30C0000 		.4byte	0xcf3
 3127 1440 1D       		.uleb128 0x1d
 3128 1441 65130000 		.4byte	0x1365
 3129 1445 1D       		.uleb128 0x1d
 3130 1446 2C000000 		.4byte	0x2c
 3131 144a 00       		.byte	0
 3132 144b 2F       		.uleb128 0x2f
 3133 144c AA020000 		.4byte	.LASF277
 3134 1450 11       		.byte	0x11
 3135 1451 F6       		.byte	0xf6
 3136 1452 13010000 		.4byte	0x113
 3137 1456 6A140000 		.4byte	0x146a
 3138 145a 1D       		.uleb128 0x1d
 3139 145b F30C0000 		.4byte	0xcf3
 3140 145f 1D       		.uleb128 0x1d
 3141 1460 65130000 		.4byte	0x1365
 3142 1464 1D       		.uleb128 0x1d
 3143 1465 2C000000 		.4byte	0x2c
 3144 1469 00       		.byte	0
 3145 146a 2F       		.uleb128 0x2f
 3146 146b 68100000 		.4byte	.LASF278
 3147 146f 11       		.byte	0x11
 3148 1470 97       		.byte	0x97
 3149 1471 25000000 		.4byte	0x25
 3150 1475 84140000 		.4byte	0x1484
 3151 1479 1D       		.uleb128 0x1d
 3152 147a F30C0000 		.4byte	0xcf3
 3153 147e 1D       		.uleb128 0x1d
 3154 147f 65130000 		.4byte	0x1365
 3155 1483 00       		.byte	0
 3156 1484 33       		.uleb128 0x33
 3157 1485 CE030000 		.4byte	.LASF279
 3158 1489 11       		.byte	0x11
 3159 148a 2801     		.2byte	0x128
 3160 148c 79000000 		.4byte	0x79
 3161 1490 9F140000 		.4byte	0x149f
 3162 1494 1D       		.uleb128 0x1d
 3163 1495 F30C0000 		.4byte	0xcf3
 3164 1499 1D       		.uleb128 0x1d
 3165 149a 65130000 		.4byte	0x1365
 3166 149e 00       		.byte	0
 3167 149f 28       		.uleb128 0x28
 3168 14a0 12       		.byte	0x12
 3169 14a1 27       		.byte	0x27
 3170 14a2 D8110000 		.4byte	0x11d8
 3171 14a6 28       		.uleb128 0x28
 3172 14a7 12       		.byte	0x12
 3173 14a8 33       		.byte	0x33
ARM GAS  /tmp/ccxS4laR.s 			page 61


 3174 14a9 36110000 		.4byte	0x1136
 3175 14ad 28       		.uleb128 0x28
 3176 14ae 12       		.byte	0x12
 3177 14af 34       		.byte	0x34
 3178 14b0 66110000 		.4byte	0x1166
 3179 14b4 28       		.uleb128 0x28
 3180 14b5 12       		.byte	0x12
 3181 14b6 36       		.byte	0x36
 3182 14b7 980F0000 		.4byte	0xf98
 3183 14bb 28       		.uleb128 0x28
 3184 14bc 12       		.byte	0x12
 3185 14bd 37       		.byte	0x37
 3186 14be ED110000 		.4byte	0x11ed
 3187 14c2 28       		.uleb128 0x28
 3188 14c3 12       		.byte	0x12
 3189 14c4 38       		.byte	0x38
 3190 14c5 09120000 		.4byte	0x1209
 3191 14c9 28       		.uleb128 0x28
 3192 14ca 12       		.byte	0x12
 3193 14cb 39       		.byte	0x39
 3194 14cc 1E120000 		.4byte	0x121e
 3195 14d0 28       		.uleb128 0x28
 3196 14d1 12       		.byte	0x12
 3197 14d2 3A       		.byte	0x3a
 3198 14d3 33120000 		.4byte	0x1233
 3199 14d7 28       		.uleb128 0x28
 3200 14d8 12       		.byte	0x12
 3201 14d9 3C       		.byte	0x3c
 3202 14da F6100000 		.4byte	0x10f6
 3203 14de 28       		.uleb128 0x28
 3204 14df 12       		.byte	0x12
 3205 14e0 3E       		.byte	0x3e
 3206 14e1 76120000 		.4byte	0x1276
 3207 14e5 28       		.uleb128 0x28
 3208 14e6 12       		.byte	0x12
 3209 14e7 40       		.byte	0x40
 3210 14e8 8B120000 		.4byte	0x128b
 3211 14ec 28       		.uleb128 0x28
 3212 14ed 12       		.byte	0x12
 3213 14ee 43       		.byte	0x43
 3214 14ef A5120000 		.4byte	0x12a5
 3215 14f3 28       		.uleb128 0x28
 3216 14f4 12       		.byte	0x12
 3217 14f5 44       		.byte	0x44
 3218 14f6 BF120000 		.4byte	0x12bf
 3219 14fa 28       		.uleb128 0x28
 3220 14fb 12       		.byte	0x12
 3221 14fc 45       		.byte	0x45
 3222 14fd F0120000 		.4byte	0x12f0
 3223 1501 28       		.uleb128 0x28
 3224 1502 12       		.byte	0x12
 3225 1503 47       		.byte	0x47
 3226 1504 0F130000 		.4byte	0x130f
 3227 1508 28       		.uleb128 0x28
 3228 1509 12       		.byte	0x12
 3229 150a 48       		.byte	0x48
 3230 150b 2F130000 		.4byte	0x132f
ARM GAS  /tmp/ccxS4laR.s 			page 62


 3231 150f 28       		.uleb128 0x28
 3232 1510 12       		.byte	0x12
 3233 1511 4A       		.byte	0x4a
 3234 1512 3A130000 		.4byte	0x133a
 3235 1516 28       		.uleb128 0x28
 3236 1517 12       		.byte	0x12
 3237 1518 4B       		.byte	0x4b
 3238 1519 4B130000 		.4byte	0x134b
 3239 151d 28       		.uleb128 0x28
 3240 151e 12       		.byte	0x12
 3241 151f 4C       		.byte	0x4c
 3242 1520 6B130000 		.4byte	0x136b
 3243 1524 28       		.uleb128 0x28
 3244 1525 12       		.byte	0x12
 3245 1526 4D       		.byte	0x4d
 3246 1527 8A130000 		.4byte	0x138a
 3247 152b 28       		.uleb128 0x28
 3248 152c 12       		.byte	0x12
 3249 152d 4E       		.byte	0x4e
 3250 152e A9130000 		.4byte	0x13a9
 3251 1532 28       		.uleb128 0x28
 3252 1533 12       		.byte	0x12
 3253 1534 50       		.byte	0x50
 3254 1535 BE130000 		.4byte	0x13be
 3255 1539 28       		.uleb128 0x28
 3256 153a 12       		.byte	0x12
 3257 153b 51       		.byte	0x51
 3258 153c E3130000 		.4byte	0x13e3
 3259 1540 0F       		.uleb128 0xf
 3260 1541 6C030000 		.4byte	.LASF280
 3261 1545 13       		.byte	0x13
 3262 1546 8F       		.byte	0x8f
 3263 1547 52150000 		.4byte	0x1552
 3264 154b 02       		.uleb128 0x2
 3265 154c 01       		.byte	0x1
 3266 154d 02       		.byte	0x2
 3267 154e DB090000 		.4byte	.LASF281
 3268 1552 0A       		.uleb128 0xa
 3269 1553 4B150000 		.4byte	0x154b
 3270 1557 34       		.uleb128 0x34
 3271 1558 630F0000 		.4byte	.LASF282
 3272 155c 13       		.byte	0x13
 3273 155d 94       		.byte	0x94
 3274 155e D4010000 		.4byte	0x1d4
 3275 1562 05       		.uleb128 0x5
 3276 1563 03       		.byte	0x3
 3277 1564 00000000 		.4byte	_ZL32cpu_irq_critical_section_counter
 3278 1568 34       		.uleb128 0x34
 3279 1569 D2050000 		.4byte	.LASF283
 3280 156d 13       		.byte	0x13
 3281 156e 95       		.byte	0x95
 3282 156f 52150000 		.4byte	0x1552
 3283 1573 05       		.uleb128 0x5
 3284 1574 03       		.byte	0x3
 3285 1575 00000000 		.4byte	_ZL28cpu_irq_prev_interrupt_state
 3286 1579 04       		.uleb128 0x4
 3287 157a 47070000 		.4byte	.LASF284
ARM GAS  /tmp/ccxS4laR.s 			page 63


 3288 157e 14       		.byte	0x14
 3289 157f AD       		.byte	0xad
 3290 1580 25000000 		.4byte	0x25
 3291 1584 04       		.uleb128 0x4
 3292 1585 1A010000 		.4byte	.LASF285
 3293 1589 14       		.byte	0x14
 3294 158a AE       		.byte	0xae
 3295 158b 02120000 		.4byte	0x1202
 3296 158f 35       		.uleb128 0x35
 3297 1590 9D100000 		.4byte	.LASF291
 3298 1594 01       		.byte	0x1
 3299 1595 9C000000 		.4byte	0x9c
 3300 1599 14       		.byte	0x14
 3301 159a 9902     		.2byte	0x299
 3302 159c B9150000 		.4byte	0x15b9
 3303 15a0 36       		.uleb128 0x36
 3304 15a1 7D0D0000 		.4byte	.LASF286
 3305 15a5 7F       		.sleb128 -1
 3306 15a6 37       		.uleb128 0x37
 3307 15a7 9C090000 		.4byte	.LASF287
 3308 15ab 00       		.byte	0
 3309 15ac 37       		.uleb128 0x37
 3310 15ad 87000000 		.4byte	.LASF288
 3311 15b1 01       		.byte	0x1
 3312 15b2 37       		.uleb128 0x37
 3313 15b3 70050000 		.4byte	.LASF289
 3314 15b7 02       		.byte	0x2
 3315 15b8 00       		.byte	0
 3316 15b9 0E       		.uleb128 0xe
 3317 15ba 400A0000 		.4byte	.LASF290
 3318 15be 14       		.byte	0x14
 3319 15bf A402     		.2byte	0x2a4
 3320 15c1 8F150000 		.4byte	0x158f
 3321 15c5 19       		.uleb128 0x19
 3322 15c6 04       		.byte	0x4
 3323 15c7 79000000 		.4byte	0x79
 3324 15cb 28       		.uleb128 0x28
 3325 15cc 15       		.byte	0x15
 3326 15cd 36       		.byte	0x36
 3327 15ce C10F0000 		.4byte	0xfc1
 3328 15d2 38       		.uleb128 0x38
 3329 15d3 FC120000 		.4byte	.LASF292
 3330 15d7 04       		.byte	0x4
 3331 15d8 43000000 		.4byte	0x43
 3332 15dc 16       		.byte	0x16
 3333 15dd 50       		.byte	0x50
 3334 15de 28160000 		.4byte	0x1628
 3335 15e2 37       		.uleb128 0x37
 3336 15e3 140C0000 		.4byte	.LASF293
 3337 15e7 00       		.byte	0
 3338 15e8 39       		.uleb128 0x39
 3339 15e9 F2070000 		.4byte	.LASF294
 3340 15ed 00000008 		.4byte	0x8000000
 3341 15f1 39       		.uleb128 0x39
 3342 15f2 FF070000 		.4byte	.LASF295
 3343 15f6 00000010 		.4byte	0x10000000
 3344 15fa 39       		.uleb128 0x39
ARM GAS  /tmp/ccxS4laR.s 			page 64


 3345 15fb 0C080000 		.4byte	.LASF296
 3346 15ff 00000018 		.4byte	0x18000000
 3347 1603 39       		.uleb128 0x39
 3348 1604 D3080000 		.4byte	.LASF297
 3349 1608 00000020 		.4byte	0x20000000
 3350 160c 39       		.uleb128 0x39
 3351 160d 96000000 		.4byte	.LASF298
 3352 1611 00000028 		.4byte	0x28000000
 3353 1615 39       		.uleb128 0x39
 3354 1616 35060000 		.4byte	.LASF299
 3355 161a 00000030 		.4byte	0x30000000
 3356 161e 39       		.uleb128 0x39
 3357 161f 42060000 		.4byte	.LASF300
 3358 1623 00000038 		.4byte	0x38000000
 3359 1627 00       		.byte	0
 3360 1628 04       		.uleb128 0x4
 3361 1629 B6050000 		.4byte	.LASF301
 3362 162d 16       		.byte	0x16
 3363 162e 5B       		.byte	0x5b
 3364 162f D2150000 		.4byte	0x15d2
 3365 1633 13       		.uleb128 0x13
 3366 1634 50696E00 		.ascii	"Pin\000"
 3367 1638 17       		.byte	0x17
 3368 1639 38       		.byte	0x38
 3369 163a 93010000 		.4byte	0x193
 3370 163e 05       		.uleb128 0x5
 3371 163f 33160000 		.4byte	0x1633
 3372 1643 3A       		.uleb128 0x3a
 3373 1644 070A0000 		.4byte	.LASF302
 3374 1648 17       		.byte	0x17
 3375 1649 39       		.byte	0x39
 3376 164a 3E160000 		.4byte	0x163e
 3377 164e 7F       		.sleb128 -1
 3378 164f 38       		.uleb128 0x38
 3379 1650 56110000 		.4byte	.LASF303
 3380 1654 01       		.byte	0x1
 3381 1655 9C000000 		.4byte	0x9c
 3382 1659 17       		.byte	0x17
 3383 165a 4E       		.byte	0x4e
 3384 165b 96160000 		.4byte	0x1696
 3385 165f 36       		.uleb128 0x36
 3386 1660 B8120000 		.4byte	.LASF304
 3387 1664 7F       		.sleb128 -1
 3388 1665 37       		.uleb128 0x37
 3389 1666 2A020000 		.4byte	.LASF305
 3390 166a 00       		.byte	0
 3391 166b 37       		.uleb128 0x37
 3392 166c 32020000 		.4byte	.LASF306
 3393 1670 01       		.byte	0x1
 3394 1671 37       		.uleb128 0x37
 3395 1672 75120000 		.4byte	.LASF307
 3396 1676 02       		.byte	0x2
 3397 1677 37       		.uleb128 0x37
 3398 1678 42020000 		.4byte	.LASF308
 3399 167c 03       		.byte	0x3
 3400 167d 37       		.uleb128 0x37
 3401 167e 4A020000 		.4byte	.LASF309
ARM GAS  /tmp/ccxS4laR.s 			page 65


 3402 1682 04       		.byte	0x4
 3403 1683 37       		.uleb128 0x37
 3404 1684 52020000 		.4byte	.LASF310
 3405 1688 05       		.byte	0x5
 3406 1689 37       		.uleb128 0x37
 3407 168a 5A020000 		.4byte	.LASF311
 3408 168e 06       		.byte	0x6
 3409 168f 37       		.uleb128 0x37
 3410 1690 62020000 		.4byte	.LASF312
 3411 1694 07       		.byte	0x7
 3412 1695 00       		.byte	0
 3413 1696 04       		.uleb128 0x4
 3414 1697 07000000 		.4byte	.LASF313
 3415 169b 17       		.byte	0x17
 3416 169c 59       		.byte	0x59
 3417 169d 4F160000 		.4byte	0x164f
 3418 16a1 38       		.uleb128 0x38
 3419 16a2 720B0000 		.4byte	.LASF314
 3420 16a6 01       		.byte	0x1
 3421 16a7 9C000000 		.4byte	0x9c
 3422 16ab 17       		.byte	0x17
 3423 16ac 5C       		.byte	0x5c
 3424 16ad 24170000 		.4byte	0x1724
 3425 16b1 36       		.uleb128 0x36
 3426 16b2 8B0D0000 		.4byte	.LASF315
 3427 16b6 7F       		.sleb128 -1
 3428 16b7 37       		.uleb128 0x37
 3429 16b8 020F0000 		.4byte	.LASF316
 3430 16bc 00       		.byte	0
 3431 16bd 37       		.uleb128 0x37
 3432 16be 3B100000 		.4byte	.LASF317
 3433 16c2 01       		.byte	0x1
 3434 16c3 37       		.uleb128 0x37
 3435 16c4 0B0F0000 		.4byte	.LASF318
 3436 16c8 02       		.byte	0x2
 3437 16c9 37       		.uleb128 0x37
 3438 16ca 44100000 		.4byte	.LASF319
 3439 16ce 03       		.byte	0x3
 3440 16cf 37       		.uleb128 0x37
 3441 16d0 140F0000 		.4byte	.LASF320
 3442 16d4 04       		.byte	0x4
 3443 16d5 37       		.uleb128 0x37
 3444 16d6 4D100000 		.4byte	.LASF321
 3445 16da 05       		.byte	0x5
 3446 16db 37       		.uleb128 0x37
 3447 16dc D8070000 		.4byte	.LASF322
 3448 16e0 06       		.byte	0x6
 3449 16e1 37       		.uleb128 0x37
 3450 16e2 32090000 		.4byte	.LASF323
 3451 16e6 07       		.byte	0x7
 3452 16e7 37       		.uleb128 0x37
 3453 16e8 CE0E0000 		.4byte	.LASF324
 3454 16ec 08       		.byte	0x8
 3455 16ed 37       		.uleb128 0x37
 3456 16ee 3B090000 		.4byte	.LASF325
 3457 16f2 09       		.byte	0x9
 3458 16f3 37       		.uleb128 0x37
ARM GAS  /tmp/ccxS4laR.s 			page 66


 3459 16f4 E9070000 		.4byte	.LASF326
 3460 16f8 0A       		.byte	0xa
 3461 16f9 37       		.uleb128 0x37
 3462 16fa 44090000 		.4byte	.LASF327
 3463 16fe 0B       		.byte	0xb
 3464 16ff 37       		.uleb128 0x37
 3465 1700 23010000 		.4byte	.LASF328
 3466 1704 0C       		.byte	0xc
 3467 1705 37       		.uleb128 0x37
 3468 1706 8F020000 		.4byte	.LASF329
 3469 170a 0D       		.byte	0xd
 3470 170b 37       		.uleb128 0x37
 3471 170c 2C010000 		.4byte	.LASF330
 3472 1710 0E       		.byte	0xe
 3473 1711 37       		.uleb128 0x37
 3474 1712 EA0A0000 		.4byte	.LASF331
 3475 1716 0F       		.byte	0xf
 3476 1717 37       		.uleb128 0x37
 3477 1718 35010000 		.4byte	.LASF332
 3478 171c 10       		.byte	0x10
 3479 171d 37       		.uleb128 0x37
 3480 171e A1020000 		.4byte	.LASF333
 3481 1722 11       		.byte	0x11
 3482 1723 00       		.byte	0
 3483 1724 04       		.uleb128 0x4
 3484 1725 870B0000 		.4byte	.LASF334
 3485 1729 17       		.byte	0x17
 3486 172a 71       		.byte	0x71
 3487 172b A1160000 		.4byte	0x16a1
 3488 172f 38       		.uleb128 0x38
 3489 1730 E6030000 		.4byte	.LASF335
 3490 1734 01       		.byte	0x1
 3491 1735 9C000000 		.4byte	0x9c
 3492 1739 17       		.byte	0x17
 3493 173a 7E       		.byte	0x7e
 3494 173b 12180000 		.4byte	0x1812
 3495 173f 36       		.uleb128 0x36
 3496 1740 9F060000 		.4byte	.LASF336
 3497 1744 7F       		.sleb128 -1
 3498 1745 37       		.uleb128 0x37
 3499 1746 06090000 		.4byte	.LASF337
 3500 174a 00       		.byte	0
 3501 174b 37       		.uleb128 0x37
 3502 174c 0B090000 		.4byte	.LASF338
 3503 1750 01       		.byte	0x1
 3504 1751 37       		.uleb128 0x37
 3505 1752 10090000 		.4byte	.LASF339
 3506 1756 02       		.byte	0x2
 3507 1757 37       		.uleb128 0x37
 3508 1758 2D040000 		.4byte	.LASF340
 3509 175c 03       		.byte	0x3
 3510 175d 37       		.uleb128 0x37
 3511 175e 2D090000 		.4byte	.LASF341
 3512 1762 04       		.byte	0x4
 3513 1763 37       		.uleb128 0x37
 3514 1764 5A040000 		.4byte	.LASF342
 3515 1768 05       		.byte	0x5
ARM GAS  /tmp/ccxS4laR.s 			page 67


 3516 1769 37       		.uleb128 0x37
 3517 176a 5F040000 		.4byte	.LASF343
 3518 176e 06       		.byte	0x6
 3519 176f 37       		.uleb128 0x37
 3520 1770 73040000 		.4byte	.LASF344
 3521 1774 07       		.byte	0x7
 3522 1775 37       		.uleb128 0x37
 3523 1776 4D090000 		.4byte	.LASF345
 3524 177a 08       		.byte	0x8
 3525 177b 37       		.uleb128 0x37
 3526 177c 52090000 		.4byte	.LASF346
 3527 1780 09       		.byte	0x9
 3528 1781 37       		.uleb128 0x37
 3529 1782 D4060000 		.4byte	.LASF347
 3530 1786 0A       		.byte	0xa
 3531 1787 37       		.uleb128 0x37
 3532 1788 DA060000 		.4byte	.LASF348
 3533 178c 0B       		.byte	0xb
 3534 178d 37       		.uleb128 0x37
 3535 178e E0060000 		.4byte	.LASF349
 3536 1792 0C       		.byte	0xc
 3537 1793 37       		.uleb128 0x37
 3538 1794 E6060000 		.4byte	.LASF350
 3539 1798 0D       		.byte	0xd
 3540 1799 37       		.uleb128 0x37
 3541 179a EC060000 		.4byte	.LASF351
 3542 179e 0E       		.byte	0xe
 3543 179f 37       		.uleb128 0x37
 3544 17a0 F2060000 		.4byte	.LASF352
 3545 17a4 0F       		.byte	0xf
 3546 17a5 37       		.uleb128 0x37
 3547 17a6 F8060000 		.4byte	.LASF353
 3548 17aa 10       		.byte	0x10
 3549 17ab 37       		.uleb128 0x37
 3550 17ac FE060000 		.4byte	.LASF354
 3551 17b0 11       		.byte	0x11
 3552 17b1 37       		.uleb128 0x37
 3553 17b2 04070000 		.4byte	.LASF355
 3554 17b6 12       		.byte	0x12
 3555 17b7 37       		.uleb128 0x37
 3556 17b8 0A070000 		.4byte	.LASF356
 3557 17bc 13       		.byte	0x13
 3558 17bd 37       		.uleb128 0x37
 3559 17be 32080000 		.4byte	.LASF357
 3560 17c2 14       		.byte	0x14
 3561 17c3 37       		.uleb128 0x37
 3562 17c4 38080000 		.4byte	.LASF358
 3563 17c8 15       		.byte	0x15
 3564 17c9 37       		.uleb128 0x37
 3565 17ca 3E080000 		.4byte	.LASF359
 3566 17ce 16       		.byte	0x16
 3567 17cf 37       		.uleb128 0x37
 3568 17d0 C2080000 		.4byte	.LASF360
 3569 17d4 17       		.byte	0x17
 3570 17d5 37       		.uleb128 0x37
 3571 17d6 4E080000 		.4byte	.LASF361
 3572 17da 18       		.byte	0x18
ARM GAS  /tmp/ccxS4laR.s 			page 68


 3573 17db 37       		.uleb128 0x37
 3574 17dc 54080000 		.4byte	.LASF362
 3575 17e0 19       		.byte	0x19
 3576 17e1 37       		.uleb128 0x37
 3577 17e2 5A080000 		.4byte	.LASF363
 3578 17e6 1A       		.byte	0x1a
 3579 17e7 37       		.uleb128 0x37
 3580 17e8 60080000 		.4byte	.LASF364
 3581 17ec 1B       		.byte	0x1b
 3582 17ed 37       		.uleb128 0x37
 3583 17ee 66080000 		.4byte	.LASF365
 3584 17f2 1C       		.byte	0x1c
 3585 17f3 37       		.uleb128 0x37
 3586 17f4 6C080000 		.4byte	.LASF366
 3587 17f8 1D       		.byte	0x1d
 3588 17f9 37       		.uleb128 0x37
 3589 17fa 79090000 		.4byte	.LASF367
 3590 17fe 1E       		.byte	0x1e
 3591 17ff 37       		.uleb128 0x37
 3592 1800 7F090000 		.4byte	.LASF368
 3593 1804 1F       		.byte	0x1f
 3594 1805 3B       		.uleb128 0x3b
 3595 1806 44413000 		.ascii	"DA0\000"
 3596 180a 20       		.byte	0x20
 3597 180b 3B       		.uleb128 0x3b
 3598 180c 44413100 		.ascii	"DA1\000"
 3599 1810 21       		.byte	0x21
 3600 1811 00       		.byte	0
 3601 1812 17       		.uleb128 0x17
 3602 1813 310A0000 		.4byte	.LASF369
 3603 1817 1C       		.byte	0x1c
 3604 1818 17       		.byte	0x17
 3605 1819 AF       		.byte	0xaf
 3606 181a 8B180000 		.4byte	0x188b
 3607 181e 11       		.uleb128 0x11
 3608 181f D60C0000 		.4byte	.LASF370
 3609 1823 17       		.byte	0x17
 3610 1824 B1       		.byte	0xb1
 3611 1825 90180000 		.4byte	0x1890
 3612 1829 00       		.byte	0
 3613 182a 11       		.uleb128 0x11
 3614 182b 0D020000 		.4byte	.LASF371
 3615 182f 17       		.byte	0x17
 3616 1830 B2       		.byte	0xb2
 3617 1831 C9010000 		.4byte	0x1c9
 3618 1835 04       		.byte	0x4
 3619 1836 11       		.uleb128 0x11
 3620 1837 A8030000 		.4byte	.LASF372
 3621 183b 17       		.byte	0x17
 3622 183c B3       		.byte	0xb3
 3623 183d C9010000 		.4byte	0x1c9
 3624 1841 08       		.byte	0x8
 3625 1842 11       		.uleb128 0x11
 3626 1843 3A0B0000 		.4byte	.LASF373
 3627 1847 17       		.byte	0x17
 3628 1848 B4       		.byte	0xb4
 3629 1849 28160000 		.4byte	0x1628
ARM GAS  /tmp/ccxS4laR.s 			page 69


 3630 184d 0C       		.byte	0xc
 3631 184e 11       		.uleb128 0x11
 3632 184f 45000000 		.4byte	.LASF374
 3633 1853 17       		.byte	0x17
 3634 1854 B5       		.byte	0xb5
 3635 1855 C9010000 		.4byte	0x1c9
 3636 1859 10       		.byte	0x10
 3637 185a 11       		.uleb128 0x11
 3638 185b BD100000 		.4byte	.LASF375
 3639 185f 17       		.byte	0x17
 3640 1860 B6       		.byte	0xb6
 3641 1861 C9010000 		.4byte	0x1c9
 3642 1865 14       		.byte	0x14
 3643 1866 11       		.uleb128 0x11
 3644 1867 47040000 		.4byte	.LASF376
 3645 186b 17       		.byte	0x17
 3646 186c B7       		.byte	0xb7
 3647 186d 2F170000 		.4byte	0x172f
 3648 1871 18       		.byte	0x18
 3649 1872 11       		.uleb128 0x11
 3650 1873 5D0C0000 		.4byte	.LASF377
 3651 1877 17       		.byte	0x17
 3652 1878 B8       		.byte	0xb8
 3653 1879 96160000 		.4byte	0x1696
 3654 187d 19       		.byte	0x19
 3655 187e 11       		.uleb128 0x11
 3656 187f 7D120000 		.4byte	.LASF378
 3657 1883 17       		.byte	0x17
 3658 1884 B9       		.byte	0xb9
 3659 1885 24170000 		.4byte	0x1724
 3660 1889 1A       		.byte	0x1a
 3661 188a 00       		.byte	0
 3662 188b 05       		.uleb128 0x5
 3663 188c 12180000 		.4byte	0x1812
 3664 1890 19       		.uleb128 0x19
 3665 1891 04       		.byte	0x4
 3666 1892 8C060000 		.4byte	0x68c
 3667 1896 0C       		.uleb128 0xc
 3668 1897 8B180000 		.4byte	0x188b
 3669 189b A1180000 		.4byte	0x18a1
 3670 189f 3C       		.uleb128 0x3c
 3671 18a0 00       		.byte	0
 3672 18a1 0F       		.uleb128 0xf
 3673 18a2 AC060000 		.4byte	.LASF379
 3674 18a6 17       		.byte	0x17
 3675 18a7 BD       		.byte	0xbd
 3676 18a8 96180000 		.4byte	0x1896
 3677 18ac 0F       		.uleb128 0xf
 3678 18ad 640B0000 		.4byte	.LASF380
 3679 18b1 18       		.byte	0x18
 3680 18b2 2E       		.byte	0x2e
 3681 18b3 F30C0000 		.4byte	0xcf3
 3682 18b7 0C       		.uleb128 0xc
 3683 18b8 CA0C0000 		.4byte	0xcca
 3684 18bc C2180000 		.4byte	0x18c2
 3685 18c0 3C       		.uleb128 0x3c
 3686 18c1 00       		.byte	0
ARM GAS  /tmp/ccxS4laR.s 			page 70


 3687 18c2 0F       		.uleb128 0xf
 3688 18c3 A0000000 		.4byte	.LASF381
 3689 18c7 18       		.byte	0x18
 3690 18c8 6E       		.byte	0x6e
 3691 18c9 B7180000 		.4byte	0x18b7
 3692 18cd 3D       		.uleb128 0x3d
 3693 18ce CA0F0000 		.4byte	.LASF383
 3694 18d2 FB180000 		.4byte	0x18fb
 3695 18d6 3E       		.uleb128 0x3e
 3696 18d7 6D090000 		.4byte	.LASF418
 3697 18db 1F       		.byte	0x1f
 3698 18dc 3B       		.byte	0x3b
 3699 18dd F2090000 		.4byte	.LASF447
 3700 18e1 33000000 		.4byte	0x33
 3701 18e5 01       		.byte	0x1
 3702 18e6 EA180000 		.4byte	0x18ea
 3703 18ea 3F       		.uleb128 0x3f
 3704 18eb FB180000 		.4byte	0x18fb
 3705 18ef 1D       		.uleb128 0x1d
 3706 18f0 F30C0000 		.4byte	0xcf3
 3707 18f4 1D       		.uleb128 0x1d
 3708 18f5 33000000 		.4byte	0x33
 3709 18f9 00       		.byte	0
 3710 18fa 00       		.byte	0
 3711 18fb 19       		.uleb128 0x19
 3712 18fc 04       		.byte	0x4
 3713 18fd CD180000 		.4byte	0x18cd
 3714 1901 40       		.uleb128 0x40
 3715 1902 500F0000 		.4byte	.LASF382
 3716 1906 19       		.byte	0x19
 3717 1907 1D       		.byte	0x1d
 3718 1908 3E000000 		.4byte	0x3e
 3719 190c 0002     		.2byte	0x200
 3720 190e 3D       		.uleb128 0x3d
 3721 190f CC0C0000 		.4byte	.LASF384
 3722 1913 1F190000 		.4byte	0x191f
 3723 1917 28       		.uleb128 0x28
 3724 1918 1A       		.byte	0x1a
 3725 1919 26       		.byte	0x26
 3726 191a D6180000 		.4byte	0x18d6
 3727 191e 00       		.byte	0
 3728 191f 0F       		.uleb128 0xf
 3729 1920 EF080000 		.4byte	.LASF385
 3730 1924 1B       		.byte	0x1b
 3731 1925 8B       		.byte	0x8b
 3732 1926 E4000000 		.4byte	0xe4
 3733 192a 0F       		.uleb128 0xf
 3734 192b 280D0000 		.4byte	.LASF386
 3735 192f 1B       		.byte	0x1b
 3736 1930 8C       		.byte	0x8c
 3737 1931 2C000000 		.4byte	0x2c
 3738 1935 0C       		.uleb128 0xc
 3739 1936 BD0C0000 		.4byte	0xcbd
 3740 193a 45190000 		.4byte	0x1945
 3741 193e 0D       		.uleb128 0xd
 3742 193f D2020000 		.4byte	0x2d2
 3743 1943 01       		.byte	0x1
ARM GAS  /tmp/ccxS4laR.s 			page 71


 3744 1944 00       		.byte	0
 3745 1945 0F       		.uleb128 0xf
 3746 1946 CE0D0000 		.4byte	.LASF387
 3747 194a 1B       		.byte	0x1b
 3748 194b 8F       		.byte	0x8f
 3749 194c 35190000 		.4byte	0x1935
 3750 1950 41       		.uleb128 0x41
 3751 1951 220B0000 		.4byte	.LASF388
 3752 1955 1C       		.byte	0x1c
 3753 1956 5C       		.byte	0x5c
 3754 1957 9E010000 		.4byte	0x19e
 3755 195b 38       		.byte	0x38
 3756 195c 41       		.uleb128 0x41
 3757 195d 95080000 		.4byte	.LASF389
 3758 1961 1C       		.byte	0x1c
 3759 1962 5D       		.byte	0x5d
 3760 1963 9E010000 		.4byte	0x19e
 3761 1967 05       		.byte	0x5
 3762 1968 41       		.uleb128 0x41
 3763 1969 12050000 		.4byte	.LASF390
 3764 196d 1C       		.byte	0x1c
 3765 196e 5E       		.byte	0x5e
 3766 196f 9E010000 		.4byte	0x19e
 3767 1973 06       		.byte	0x6
 3768 1974 41       		.uleb128 0x41
 3769 1975 2E0B0000 		.4byte	.LASF391
 3770 1979 1C       		.byte	0x1c
 3771 197a 60       		.byte	0x60
 3772 197b 9E010000 		.4byte	0x19e
 3773 197f 39       		.byte	0x39
 3774 1980 41       		.uleb128 0x41
 3775 1981 13020000 		.4byte	.LASF392
 3776 1985 1C       		.byte	0x1c
 3777 1986 61       		.byte	0x61
 3778 1987 9E010000 		.4byte	0x19e
 3779 198b 03       		.byte	0x3
 3780 198c 41       		.uleb128 0x41
 3781 198d 93110000 		.4byte	.LASF393
 3782 1991 1C       		.byte	0x1c
 3783 1992 62       		.byte	0x62
 3784 1993 9E010000 		.4byte	0x19e
 3785 1997 04       		.byte	0x4
 3786 1998 41       		.uleb128 0x41
 3787 1999 4F070000 		.4byte	.LASF394
 3788 199d 1C       		.byte	0x1c
 3789 199e 69       		.byte	0x69
 3790 199f 9E010000 		.4byte	0x19e
 3791 19a3 33       		.byte	0x33
 3792 19a4 41       		.uleb128 0x41
 3793 19a5 BB110000 		.4byte	.LASF395
 3794 19a9 1C       		.byte	0x1c
 3795 19aa 6A       		.byte	0x6a
 3796 19ab 9E010000 		.4byte	0x19e
 3797 19af 34       		.byte	0x34
 3798 19b0 41       		.uleb128 0x41
 3799 19b1 00110000 		.4byte	.LASF396
 3800 19b5 1C       		.byte	0x1c
ARM GAS  /tmp/ccxS4laR.s 			page 72


 3801 19b6 6D       		.byte	0x6d
 3802 19b7 9E010000 		.4byte	0x19e
 3803 19bb 35       		.byte	0x35
 3804 19bc 41       		.uleb128 0x41
 3805 19bd D00F0000 		.4byte	.LASF397
 3806 19c1 1C       		.byte	0x1c
 3807 19c2 6E       		.byte	0x6e
 3808 19c3 9E010000 		.4byte	0x19e
 3809 19c7 36       		.byte	0x36
 3810 19c8 41       		.uleb128 0x41
 3811 19c9 CC100000 		.4byte	.LASF398
 3812 19cd 1C       		.byte	0x1c
 3813 19ce 6F       		.byte	0x6f
 3814 19cf 9E010000 		.4byte	0x19e
 3815 19d3 37       		.byte	0x37
 3816 19d4 41       		.uleb128 0x41
 3817 19d5 32040000 		.4byte	.LASF399
 3818 19d9 1C       		.byte	0x1c
 3819 19da 71       		.byte	0x71
 3820 19db D9010000 		.4byte	0x1d9
 3821 19df 32       		.byte	0x32
 3822 19e0 42       		.uleb128 0x42
 3823 19e1 1D0F0000 		.4byte	.LASF400
 3824 19e5 1C       		.byte	0x1c
 3825 19e6 73       		.byte	0x73
 3826 19e7 D9010000 		.4byte	0x1d9
 3827 19eb 58466100 		.4byte	0x614658
 3828 19ef 40       		.uleb128 0x40
 3829 19f0 A9010000 		.4byte	.LASF401
 3830 19f4 1C       		.byte	0x1c
 3831 19f5 74       		.byte	0x74
 3832 19f6 D9010000 		.4byte	0x1d9
 3833 19fa 4661     		.2byte	0x6146
 3834 19fc 0F       		.uleb128 0xf
 3835 19fd 19080000 		.4byte	.LASF402
 3836 1a01 1C       		.byte	0x1c
 3837 1a02 80       		.byte	0x80
 3838 1a03 0E190000 		.4byte	0x190e
 3839 1a07 0F       		.uleb128 0xf
 3840 1a08 97060000 		.4byte	.LASF403
 3841 1a0c 1C       		.byte	0x1c
 3842 1a0d 81       		.byte	0x81
 3843 1a0e 0E190000 		.4byte	0x190e
 3844 1a12 38       		.uleb128 0x38
 3845 1a13 E1070000 		.4byte	.LASF404
 3846 1a17 01       		.byte	0x1
 3847 1a18 9C000000 		.4byte	0x9c
 3848 1a1c 1D       		.byte	0x1d
 3849 1a1d 1B       		.byte	0x1b
 3850 1a1e 711A0000 		.4byte	0x1a71
 3851 1a22 36       		.uleb128 0x36
 3852 1a23 15090000 		.4byte	.LASF405
 3853 1a27 7F       		.sleb128 -1
 3854 1a28 37       		.uleb128 0x37
 3855 1a29 B5110000 		.4byte	.LASF406
 3856 1a2d 00       		.byte	0
 3857 1a2e 37       		.uleb128 0x37
ARM GAS  /tmp/ccxS4laR.s 			page 73


 3858 1a2f 150B0000 		.4byte	.LASF407
 3859 1a33 01       		.byte	0x1
 3860 1a34 37       		.uleb128 0x37
 3861 1a35 AA090000 		.4byte	.LASF408
 3862 1a39 02       		.byte	0x2
 3863 1a3a 37       		.uleb128 0x37
 3864 1a3b 7C000000 		.4byte	.LASF409
 3865 1a3f 03       		.byte	0x3
 3866 1a40 37       		.uleb128 0x37
 3867 1a41 06120000 		.4byte	.LASF410
 3868 1a45 04       		.byte	0x4
 3869 1a46 3B       		.uleb128 0x3b
 3870 1a47 41494E00 		.ascii	"AIN\000"
 3871 1a4b 05       		.byte	0x5
 3872 1a4c 37       		.uleb128 0x37
 3873 1a4d C20F0000 		.4byte	.LASF411
 3874 1a51 06       		.byte	0x6
 3875 1a52 37       		.uleb128 0x37
 3876 1a53 6D000000 		.4byte	.LASF412
 3877 1a57 07       		.byte	0x7
 3878 1a58 37       		.uleb128 0x37
 3879 1a59 3E010000 		.4byte	.LASF413
 3880 1a5d 08       		.byte	0x8
 3881 1a5e 37       		.uleb128 0x37
 3882 1a5f 92030000 		.4byte	.LASF414
 3883 1a63 09       		.byte	0x9
 3884 1a64 37       		.uleb128 0x37
 3885 1a65 320F0000 		.4byte	.LASF415
 3886 1a69 0A       		.byte	0xa
 3887 1a6a 37       		.uleb128 0x37
 3888 1a6b 3B030000 		.4byte	.LASF416
 3889 1a6f 0B       		.byte	0xb
 3890 1a70 00       		.byte	0
 3891 1a71 43       		.uleb128 0x43
 3892 1a72 CF010000 		.4byte	.LASF448
 3893 1a76 0F       		.uleb128 0xf
 3894 1a77 74060000 		.4byte	.LASF417
 3895 1a7b 1E       		.byte	0x1e
 3896 1a7c 30       		.byte	0x30
 3897 1a7d 711A0000 		.4byte	0x1a71
 3898 1a81 44       		.uleb128 0x44
 3899 1a82 C3120000 		.4byte	.LASF419
 3900 1a86 01       		.byte	0x1
 3901 1a87 B9       		.byte	0xb9
 3902 1a88 00000000 		.4byte	.LFB528
 3903 1a8c 2C000000 		.4byte	.LFE528-.LFB528
 3904 1a90 01       		.uleb128 0x1
 3905 1a91 9C       		.byte	0x9c
 3906 1a92 CE1A0000 		.4byte	0x1ace
 3907 1a96 45       		.uleb128 0x45
 3908 1a97 70696E00 		.ascii	"pin\000"
 3909 1a9b 01       		.byte	0x1
 3910 1a9c B9       		.byte	0xb9
 3911 1a9d 33160000 		.4byte	0x1633
 3912 1aa1 00000000 		.4byte	.LLST5
 3913 1aa5 45       		.uleb128 0x45
 3914 1aa6 656E00   		.ascii	"en\000"
ARM GAS  /tmp/ccxS4laR.s 			page 74


 3915 1aa9 01       		.byte	0x1
 3916 1aaa B9       		.byte	0xb9
 3917 1aab 4B150000 		.4byte	0x154b
 3918 1aaf 21000000 		.4byte	.LLST6
 3919 1ab3 46       		.uleb128 0x46
 3920 1ab4 20000000 		.4byte	.Ldebug_ranges0+0x20
 3921 1ab8 47       		.uleb128 0x47
 3922 1ab9 55050000 		.4byte	.LASF420
 3923 1abd 01       		.byte	0x1
 3924 1abe BD       		.byte	0xbd
 3925 1abf D41A0000 		.4byte	0x1ad4
 3926 1ac3 48       		.uleb128 0x48
 3927 1ac4 28000000 		.4byte	.LVL56
 3928 1ac8 041D0000 		.4byte	0x1d04
 3929 1acc 00       		.byte	0
 3930 1acd 00       		.byte	0
 3931 1ace 49       		.uleb128 0x49
 3932 1acf 04       		.byte	0x4
 3933 1ad0 8B180000 		.4byte	0x188b
 3934 1ad4 05       		.uleb128 0x5
 3935 1ad5 CE1A0000 		.4byte	0x1ace
 3936 1ad9 4A       		.uleb128 0x4a
 3937 1ada 0F0D0000 		.4byte	.LASF449
 3938 1ade 01       		.byte	0x1
 3939 1adf A9       		.byte	0xa9
 3940 1ae0 4B150000 		.4byte	0x154b
 3941 1ae4 00000000 		.4byte	.LFB527
 3942 1ae8 34000000 		.4byte	.LFE527-.LFB527
 3943 1aec 01       		.uleb128 0x1
 3944 1aed 9C       		.byte	0x9c
 3945 1aee 1E1B0000 		.4byte	0x1b1e
 3946 1af2 45       		.uleb128 0x45
 3947 1af3 70696E00 		.ascii	"pin\000"
 3948 1af7 01       		.byte	0x1
 3949 1af8 A9       		.byte	0xa9
 3950 1af9 33160000 		.4byte	0x1633
 3951 1afd 42000000 		.4byte	.LLST4
 3952 1b01 47       		.uleb128 0x47
 3953 1b02 55050000 		.4byte	.LASF420
 3954 1b06 01       		.byte	0x1
 3955 1b07 B0       		.byte	0xb0
 3956 1b08 D41A0000 		.4byte	0x1ad4
 3957 1b0c 4B       		.uleb128 0x4b
 3958 1b0d 22000000 		.4byte	.LVL49
 3959 1b11 0F1D0000 		.4byte	0x1d0f
 3960 1b15 4C       		.uleb128 0x4c
 3961 1b16 01       		.uleb128 0x1
 3962 1b17 51       		.byte	0x51
 3963 1b18 03       		.uleb128 0x3
 3964 1b19 44       		.byte	0x44
 3965 1b1a 49       		.byte	0x49
 3966 1b1b 24       		.byte	0x24
 3967 1b1c 00       		.byte	0
 3968 1b1d 00       		.byte	0
 3969 1b1e 44       		.uleb128 0x44
 3970 1b1f F5000000 		.4byte	.LASF421
 3971 1b23 01       		.byte	0x1
ARM GAS  /tmp/ccxS4laR.s 			page 75


 3972 1b24 96       		.byte	0x96
 3973 1b25 00000000 		.4byte	.LFB526
 3974 1b29 2C000000 		.4byte	.LFE526-.LFB526
 3975 1b2d 01       		.uleb128 0x1
 3976 1b2e 9C       		.byte	0x9c
 3977 1b2f 611B0000 		.4byte	0x1b61
 3978 1b33 45       		.uleb128 0x45
 3979 1b34 70696E00 		.ascii	"pin\000"
 3980 1b38 01       		.byte	0x1
 3981 1b39 96       		.byte	0x96
 3982 1b3a 33160000 		.4byte	0x1633
 3983 1b3e 7C000000 		.4byte	.LLST3
 3984 1b42 4D       		.uleb128 0x4d
 3985 1b43 B2120000 		.4byte	.LASF422
 3986 1b47 01       		.byte	0x1
 3987 1b48 96       		.byte	0x96
 3988 1b49 4B150000 		.4byte	0x154b
 3989 1b4d 01       		.uleb128 0x1
 3990 1b4e 51       		.byte	0x51
 3991 1b4f 46       		.uleb128 0x46
 3992 1b50 00000000 		.4byte	.Ldebug_ranges0+0
 3993 1b54 47       		.uleb128 0x47
 3994 1b55 55050000 		.4byte	.LASF420
 3995 1b59 01       		.byte	0x1
 3996 1b5a 9A       		.byte	0x9a
 3997 1b5b D41A0000 		.4byte	0x1ad4
 3998 1b5f 00       		.byte	0
 3999 1b60 00       		.byte	0
 4000 1b61 44       		.uleb128 0x44
 4001 1b62 85090000 		.4byte	.LASF423
 4002 1b66 01       		.byte	0x1
 4003 1b67 15       		.byte	0x15
 4004 1b68 00000000 		.4byte	.LFB525
 4005 1b6c 74010000 		.4byte	.LFE525-.LFB525
 4006 1b70 01       		.uleb128 0x1
 4007 1b71 9C       		.byte	0x9c
 4008 1b72 041D0000 		.4byte	0x1d04
 4009 1b76 45       		.uleb128 0x45
 4010 1b77 70696E00 		.ascii	"pin\000"
 4011 1b7b 01       		.byte	0x1
 4012 1b7c 15       		.byte	0x15
 4013 1b7d 33160000 		.4byte	0x1633
 4014 1b81 9D000000 		.4byte	.LLST0
 4015 1b85 4E       		.uleb128 0x4e
 4016 1b86 D70E0000 		.4byte	.LASF424
 4017 1b8a 01       		.byte	0x1
 4018 1b8b 15       		.byte	0x15
 4019 1b8c 121A0000 		.4byte	0x1a12
 4020 1b90 9F010000 		.4byte	.LLST1
 4021 1b94 4E       		.uleb128 0x4e
 4022 1b95 6E0D0000 		.4byte	.LASF425
 4023 1b99 01       		.byte	0x1
 4024 1b9a 15       		.byte	0x15
 4025 1b9b C9010000 		.4byte	0x1c9
 4026 1b9f A1020000 		.4byte	.LLST2
 4027 1ba3 47       		.uleb128 0x47
 4028 1ba4 55050000 		.4byte	.LASF420
ARM GAS  /tmp/ccxS4laR.s 			page 76


 4029 1ba8 01       		.byte	0x1
 4030 1ba9 1C       		.byte	0x1c
 4031 1baa D41A0000 		.4byte	0x1ad4
 4032 1bae 4F       		.uleb128 0x4f
 4033 1baf 4C000000 		.4byte	.LVL6
 4034 1bb3 1A1D0000 		.4byte	0x1d1a
 4035 1bb7 CD1B0000 		.4byte	0x1bcd
 4036 1bbb 4C       		.uleb128 0x4c
 4037 1bbc 02       		.uleb128 0x2
 4038 1bbd 90       		.byte	0x90
 4039 1bbe 40       		.uleb128 0x40
 4040 1bbf 07       		.uleb128 0x7
 4041 1bc0 F4       		.byte	0xf4
 4042 1bc1 25       		.uleb128 0x25
 4043 1bc2 04       		.byte	0x4
 4044 1bc3 0000803F 		.4byte	0x3f800000
 4045 1bc7 4C       		.uleb128 0x4c
 4046 1bc8 01       		.uleb128 0x1
 4047 1bc9 51       		.byte	0x51
 4048 1bca 01       		.uleb128 0x1
 4049 1bcb 30       		.byte	0x30
 4050 1bcc 00       		.byte	0
 4051 1bcd 50       		.uleb128 0x50
 4052 1bce 58000000 		.4byte	.LVL8
 4053 1bd2 291D0000 		.4byte	0x1d29
 4054 1bd6 51       		.uleb128 0x51
 4055 1bd7 62000000 		.4byte	.LVL9
 4056 1bdb 041D0000 		.4byte	0x1d04
 4057 1bdf E91B0000 		.4byte	0x1be9
 4058 1be3 4C       		.uleb128 0x4c
 4059 1be4 01       		.uleb128 0x1
 4060 1be5 52       		.byte	0x52
 4061 1be6 01       		.uleb128 0x1
 4062 1be7 30       		.byte	0x30
 4063 1be8 00       		.byte	0
 4064 1be9 51       		.uleb128 0x51
 4065 1bea 6C000000 		.4byte	.LVL10
 4066 1bee 341D0000 		.4byte	0x1d34
 4067 1bf2 FC1B0000 		.4byte	0x1bfc
 4068 1bf6 4C       		.uleb128 0x4c
 4069 1bf7 01       		.uleb128 0x1
 4070 1bf8 52       		.byte	0x52
 4071 1bf9 01       		.uleb128 0x1
 4072 1bfa 30       		.byte	0x30
 4073 1bfb 00       		.byte	0
 4074 1bfc 4F       		.uleb128 0x4f
 4075 1bfd 82000000 		.4byte	.LVL12
 4076 1c01 3F1D0000 		.4byte	0x1d3f
 4077 1c05 181C0000 		.4byte	0x1c18
 4078 1c09 4C       		.uleb128 0x4c
 4079 1c0a 01       		.uleb128 0x1
 4080 1c0b 51       		.byte	0x51
 4081 1c0c 03       		.uleb128 0x3
 4082 1c0d 44       		.byte	0x44
 4083 1c0e 49       		.byte	0x49
 4084 1c0f 24       		.byte	0x24
 4085 1c10 4C       		.uleb128 0x4c
ARM GAS  /tmp/ccxS4laR.s 			page 77


 4086 1c11 01       		.uleb128 0x1
 4087 1c12 53       		.byte	0x53
 4088 1c13 03       		.uleb128 0x3
 4089 1c14 F3       		.byte	0xf3
 4090 1c15 01       		.uleb128 0x1
 4091 1c16 52       		.byte	0x52
 4092 1c17 00       		.byte	0
 4093 1c18 50       		.uleb128 0x50
 4094 1c19 8E000000 		.4byte	.LVL14
 4095 1c1d 291D0000 		.4byte	0x1d29
 4096 1c21 51       		.uleb128 0x51
 4097 1c22 98000000 		.4byte	.LVL15
 4098 1c26 341D0000 		.4byte	0x1d34
 4099 1c2a 341C0000 		.4byte	0x1c34
 4100 1c2e 4C       		.uleb128 0x4c
 4101 1c2f 01       		.uleb128 0x1
 4102 1c30 52       		.byte	0x52
 4103 1c31 01       		.uleb128 0x1
 4104 1c32 30       		.byte	0x30
 4105 1c33 00       		.byte	0
 4106 1c34 4F       		.uleb128 0x4f
 4107 1c35 AE000000 		.4byte	.LVL17
 4108 1c39 3F1D0000 		.4byte	0x1d3f
 4109 1c3d 4E1C0000 		.4byte	0x1c4e
 4110 1c41 4C       		.uleb128 0x4c
 4111 1c42 01       		.uleb128 0x1
 4112 1c43 51       		.byte	0x51
 4113 1c44 03       		.uleb128 0x3
 4114 1c45 44       		.byte	0x44
 4115 1c46 49       		.byte	0x49
 4116 1c47 24       		.byte	0x24
 4117 1c48 4C       		.uleb128 0x4c
 4118 1c49 01       		.uleb128 0x1
 4119 1c4a 53       		.byte	0x53
 4120 1c4b 01       		.uleb128 0x1
 4121 1c4c 31       		.byte	0x31
 4122 1c4d 00       		.byte	0
 4123 1c4e 50       		.uleb128 0x50
 4124 1c4f BA000000 		.4byte	.LVL19
 4125 1c53 291D0000 		.4byte	0x1d29
 4126 1c57 51       		.uleb128 0x51
 4127 1c58 C4000000 		.4byte	.LVL20
 4128 1c5c 041D0000 		.4byte	0x1d04
 4129 1c60 6A1C0000 		.4byte	0x1c6a
 4130 1c64 4C       		.uleb128 0x4c
 4131 1c65 01       		.uleb128 0x1
 4132 1c66 52       		.byte	0x52
 4133 1c67 01       		.uleb128 0x1
 4134 1c68 30       		.byte	0x30
 4135 1c69 00       		.byte	0
 4136 1c6a 51       		.uleb128 0x51
 4137 1c6b CE000000 		.4byte	.LVL21
 4138 1c6f 341D0000 		.4byte	0x1d34
 4139 1c73 7D1C0000 		.4byte	0x1c7d
 4140 1c77 4C       		.uleb128 0x4c
 4141 1c78 01       		.uleb128 0x1
 4142 1c79 52       		.byte	0x52
ARM GAS  /tmp/ccxS4laR.s 			page 78


 4143 1c7a 01       		.uleb128 0x1
 4144 1c7b 31       		.byte	0x31
 4145 1c7c 00       		.byte	0
 4146 1c7d 51       		.uleb128 0x51
 4147 1c7e E0000000 		.4byte	.LVL22
 4148 1c82 3F1D0000 		.4byte	0x1d3f
 4149 1c86 921C0000 		.4byte	0x1c92
 4150 1c8a 4C       		.uleb128 0x4c
 4151 1c8b 01       		.uleb128 0x1
 4152 1c8c 51       		.byte	0x51
 4153 1c8d 03       		.uleb128 0x3
 4154 1c8e 44       		.byte	0x44
 4155 1c8f 49       		.byte	0x49
 4156 1c90 24       		.byte	0x24
 4157 1c91 00       		.byte	0
 4158 1c92 4F       		.uleb128 0x4f
 4159 1c93 EE000000 		.4byte	.LVL24
 4160 1c97 4A1D0000 		.4byte	0x1d4a
 4161 1c9b A71C0000 		.4byte	0x1ca7
 4162 1c9f 4C       		.uleb128 0x4c
 4163 1ca0 01       		.uleb128 0x1
 4164 1ca1 52       		.byte	0x52
 4165 1ca2 03       		.uleb128 0x3
 4166 1ca3 F3       		.byte	0xf3
 4167 1ca4 01       		.uleb128 0x1
 4168 1ca5 52       		.byte	0x52
 4169 1ca6 00       		.byte	0
 4170 1ca7 50       		.uleb128 0x50
 4171 1ca8 02010000 		.4byte	.LVL28
 4172 1cac 3F1D0000 		.4byte	0x1d3f
 4173 1cb0 48       		.uleb128 0x48
 4174 1cb1 14010000 		.4byte	.LVL29
 4175 1cb5 551D0000 		.4byte	0x1d55
 4176 1cb9 51       		.uleb128 0x51
 4177 1cba 2C010000 		.4byte	.LVL37
 4178 1cbe 041D0000 		.4byte	0x1d04
 4179 1cc2 CC1C0000 		.4byte	0x1ccc
 4180 1cc6 4C       		.uleb128 0x4c
 4181 1cc7 01       		.uleb128 0x1
 4182 1cc8 52       		.byte	0x52
 4183 1cc9 01       		.uleb128 0x1
 4184 1cca 30       		.byte	0x30
 4185 1ccb 00       		.byte	0
 4186 1ccc 4F       		.uleb128 0x4f
 4187 1ccd 3A010000 		.4byte	.LVL38
 4188 1cd1 341D0000 		.4byte	0x1d34
 4189 1cd5 DF1C0000 		.4byte	0x1cdf
 4190 1cd9 4C       		.uleb128 0x4c
 4191 1cda 01       		.uleb128 0x1
 4192 1cdb 52       		.byte	0x52
 4193 1cdc 01       		.uleb128 0x1
 4194 1cdd 30       		.byte	0x30
 4195 1cde 00       		.byte	0
 4196 1cdf 48       		.uleb128 0x48
 4197 1ce0 4A010000 		.4byte	.LVL40
 4198 1ce4 601D0000 		.4byte	0x1d60
 4199 1ce8 52       		.uleb128 0x52
ARM GAS  /tmp/ccxS4laR.s 			page 79


 4200 1ce9 68010000 		.4byte	.LVL42
 4201 1ced 1A1D0000 		.4byte	0x1d1a
 4202 1cf1 4C       		.uleb128 0x4c
 4203 1cf2 02       		.uleb128 0x2
 4204 1cf3 90       		.byte	0x90
 4205 1cf4 40       		.uleb128 0x40
 4206 1cf5 07       		.uleb128 0x7
 4207 1cf6 F4       		.byte	0xf4
 4208 1cf7 25       		.uleb128 0x25
 4209 1cf8 04       		.byte	0x4
 4210 1cf9 00000000 		.4byte	0
 4211 1cfd 4C       		.uleb128 0x4c
 4212 1cfe 01       		.uleb128 0x1
 4213 1cff 51       		.byte	0x51
 4214 1d00 01       		.uleb128 0x1
 4215 1d01 30       		.byte	0x30
 4216 1d02 00       		.byte	0
 4217 1d03 00       		.byte	0
 4218 1d04 53       		.uleb128 0x53
 4219 1d05 63010000 		.4byte	.LASF426
 4220 1d09 63010000 		.4byte	.LASF426
 4221 1d0d 16       		.byte	0x16
 4222 1d0e 86       		.byte	0x86
 4223 1d0f 53       		.uleb128 0x53
 4224 1d10 25040000 		.4byte	.LASF427
 4225 1d14 25040000 		.4byte	.LASF427
 4226 1d18 16       		.byte	0x16
 4227 1d19 8C       		.byte	0x8c
 4228 1d1a 54       		.uleb128 0x54
 4229 1d1b 7D080000 		.4byte	.LASF433
 4230 1d1f AB110000 		.4byte	.LASF435
 4231 1d23 21       		.byte	0x21
 4232 1d24 20       		.byte	0x20
 4233 1d25 7D080000 		.4byte	.LASF433
 4234 1d29 53       		.uleb128 0x53
 4235 1d2a CB110000 		.4byte	.LASF428
 4236 1d2e CB110000 		.4byte	.LASF428
 4237 1d32 20       		.byte	0x20
 4238 1d33 DB       		.byte	0xdb
 4239 1d34 53       		.uleb128 0x53
 4240 1d35 4D0B0000 		.4byte	.LASF429
 4241 1d39 4D0B0000 		.4byte	.LASF429
 4242 1d3d 16       		.byte	0x16
 4243 1d3e 9F       		.byte	0x9f
 4244 1d3f 53       		.uleb128 0x53
 4245 1d40 CA070000 		.4byte	.LASF430
 4246 1d44 CA070000 		.4byte	.LASF430
 4247 1d48 16       		.byte	0x16
 4248 1d49 96       		.byte	0x96
 4249 1d4a 53       		.uleb128 0x53
 4250 1d4b 3F0D0000 		.4byte	.LASF431
 4251 1d4f 3F0D0000 		.4byte	.LASF431
 4252 1d53 16       		.byte	0x16
 4253 1d54 88       		.byte	0x88
 4254 1d55 53       		.uleb128 0x53
 4255 1d56 570D0000 		.4byte	.LASF432
 4256 1d5a 570D0000 		.4byte	.LASF432
ARM GAS  /tmp/ccxS4laR.s 			page 80


 4257 1d5e 20       		.byte	0x20
 4258 1d5f DC       		.byte	0xdc
 4259 1d60 54       		.uleb128 0x54
 4260 1d61 7C010000 		.4byte	.LASF434
 4261 1d65 F9080000 		.4byte	.LASF436
 4262 1d69 1C       		.byte	0x1c
 4263 1d6a 83       		.byte	0x83
 4264 1d6b 7C010000 		.4byte	.LASF434
 4265 1d6f 00       		.byte	0
 4266              		.section	.debug_abbrev,"",%progbits
 4267              	.Ldebug_abbrev0:
 4268 0000 01       		.uleb128 0x1
 4269 0001 11       		.uleb128 0x11
 4270 0002 01       		.byte	0x1
 4271 0003 25       		.uleb128 0x25
 4272 0004 0E       		.uleb128 0xe
 4273 0005 13       		.uleb128 0x13
 4274 0006 0B       		.uleb128 0xb
 4275 0007 03       		.uleb128 0x3
 4276 0008 0E       		.uleb128 0xe
 4277 0009 1B       		.uleb128 0x1b
 4278 000a 0E       		.uleb128 0xe
 4279 000b 55       		.uleb128 0x55
 4280 000c 17       		.uleb128 0x17
 4281 000d 11       		.uleb128 0x11
 4282 000e 01       		.uleb128 0x1
 4283 000f 10       		.uleb128 0x10
 4284 0010 17       		.uleb128 0x17
 4285 0011 00       		.byte	0
 4286 0012 00       		.byte	0
 4287 0013 02       		.uleb128 0x2
 4288 0014 24       		.uleb128 0x24
 4289 0015 00       		.byte	0
 4290 0016 0B       		.uleb128 0xb
 4291 0017 0B       		.uleb128 0xb
 4292 0018 3E       		.uleb128 0x3e
 4293 0019 0B       		.uleb128 0xb
 4294 001a 03       		.uleb128 0x3
 4295 001b 0E       		.uleb128 0xe
 4296 001c 00       		.byte	0
 4297 001d 00       		.byte	0
 4298 001e 03       		.uleb128 0x3
 4299 001f 24       		.uleb128 0x24
 4300 0020 00       		.byte	0
 4301 0021 0B       		.uleb128 0xb
 4302 0022 0B       		.uleb128 0xb
 4303 0023 3E       		.uleb128 0x3e
 4304 0024 0B       		.uleb128 0xb
 4305 0025 03       		.uleb128 0x3
 4306 0026 08       		.uleb128 0x8
 4307 0027 00       		.byte	0
 4308 0028 00       		.byte	0
 4309 0029 04       		.uleb128 0x4
 4310 002a 16       		.uleb128 0x16
 4311 002b 00       		.byte	0
 4312 002c 03       		.uleb128 0x3
 4313 002d 0E       		.uleb128 0xe
ARM GAS  /tmp/ccxS4laR.s 			page 81


 4314 002e 3A       		.uleb128 0x3a
 4315 002f 0B       		.uleb128 0xb
 4316 0030 3B       		.uleb128 0x3b
 4317 0031 0B       		.uleb128 0xb
 4318 0032 49       		.uleb128 0x49
 4319 0033 13       		.uleb128 0x13
 4320 0034 00       		.byte	0
 4321 0035 00       		.byte	0
 4322 0036 05       		.uleb128 0x5
 4323 0037 26       		.uleb128 0x26
 4324 0038 00       		.byte	0
 4325 0039 49       		.uleb128 0x49
 4326 003a 13       		.uleb128 0x13
 4327 003b 00       		.byte	0
 4328 003c 00       		.byte	0
 4329 003d 06       		.uleb128 0x6
 4330 003e 13       		.uleb128 0x13
 4331 003f 01       		.byte	0x1
 4332 0040 0B       		.uleb128 0xb
 4333 0041 0B       		.uleb128 0xb
 4334 0042 3A       		.uleb128 0x3a
 4335 0043 0B       		.uleb128 0xb
 4336 0044 3B       		.uleb128 0x3b
 4337 0045 05       		.uleb128 0x5
 4338 0046 6E       		.uleb128 0x6e
 4339 0047 0E       		.uleb128 0xe
 4340 0048 01       		.uleb128 0x1
 4341 0049 13       		.uleb128 0x13
 4342 004a 00       		.byte	0
 4343 004b 00       		.byte	0
 4344 004c 07       		.uleb128 0x7
 4345 004d 0D       		.uleb128 0xd
 4346 004e 00       		.byte	0
 4347 004f 03       		.uleb128 0x3
 4348 0050 0E       		.uleb128 0xe
 4349 0051 3A       		.uleb128 0x3a
 4350 0052 0B       		.uleb128 0xb
 4351 0053 3B       		.uleb128 0x3b
 4352 0054 05       		.uleb128 0x5
 4353 0055 49       		.uleb128 0x49
 4354 0056 13       		.uleb128 0x13
 4355 0057 38       		.uleb128 0x38
 4356 0058 0B       		.uleb128 0xb
 4357 0059 00       		.byte	0
 4358 005a 00       		.byte	0
 4359 005b 08       		.uleb128 0x8
 4360 005c 16       		.uleb128 0x16
 4361 005d 00       		.byte	0
 4362 005e 03       		.uleb128 0x3
 4363 005f 0E       		.uleb128 0xe
 4364 0060 3A       		.uleb128 0x3a
 4365 0061 0B       		.uleb128 0xb
 4366 0062 3B       		.uleb128 0x3b
 4367 0063 05       		.uleb128 0x5
 4368 0064 49       		.uleb128 0x49
 4369 0065 13       		.uleb128 0x13
 4370 0066 00       		.byte	0
ARM GAS  /tmp/ccxS4laR.s 			page 82


 4371 0067 00       		.byte	0
 4372 0068 09       		.uleb128 0x9
 4373 0069 3B       		.uleb128 0x3b
 4374 006a 00       		.byte	0
 4375 006b 03       		.uleb128 0x3
 4376 006c 0E       		.uleb128 0xe
 4377 006d 00       		.byte	0
 4378 006e 00       		.byte	0
 4379 006f 0A       		.uleb128 0xa
 4380 0070 35       		.uleb128 0x35
 4381 0071 00       		.byte	0
 4382 0072 49       		.uleb128 0x49
 4383 0073 13       		.uleb128 0x13
 4384 0074 00       		.byte	0
 4385 0075 00       		.byte	0
 4386 0076 0B       		.uleb128 0xb
 4387 0077 0F       		.uleb128 0xf
 4388 0078 00       		.byte	0
 4389 0079 0B       		.uleb128 0xb
 4390 007a 0B       		.uleb128 0xb
 4391 007b 00       		.byte	0
 4392 007c 00       		.byte	0
 4393 007d 0C       		.uleb128 0xc
 4394 007e 01       		.uleb128 0x1
 4395 007f 01       		.byte	0x1
 4396 0080 49       		.uleb128 0x49
 4397 0081 13       		.uleb128 0x13
 4398 0082 01       		.uleb128 0x1
 4399 0083 13       		.uleb128 0x13
 4400 0084 00       		.byte	0
 4401 0085 00       		.byte	0
 4402 0086 0D       		.uleb128 0xd
 4403 0087 21       		.uleb128 0x21
 4404 0088 00       		.byte	0
 4405 0089 49       		.uleb128 0x49
 4406 008a 13       		.uleb128 0x13
 4407 008b 2F       		.uleb128 0x2f
 4408 008c 0B       		.uleb128 0xb
 4409 008d 00       		.byte	0
 4410 008e 00       		.byte	0
 4411 008f 0E       		.uleb128 0xe
 4412 0090 34       		.uleb128 0x34
 4413 0091 00       		.byte	0
 4414 0092 03       		.uleb128 0x3
 4415 0093 0E       		.uleb128 0xe
 4416 0094 3A       		.uleb128 0x3a
 4417 0095 0B       		.uleb128 0xb
 4418 0096 3B       		.uleb128 0x3b
 4419 0097 05       		.uleb128 0x5
 4420 0098 49       		.uleb128 0x49
 4421 0099 13       		.uleb128 0x13
 4422 009a 3F       		.uleb128 0x3f
 4423 009b 19       		.uleb128 0x19
 4424 009c 3C       		.uleb128 0x3c
 4425 009d 19       		.uleb128 0x19
 4426 009e 00       		.byte	0
 4427 009f 00       		.byte	0
ARM GAS  /tmp/ccxS4laR.s 			page 83


 4428 00a0 0F       		.uleb128 0xf
 4429 00a1 34       		.uleb128 0x34
 4430 00a2 00       		.byte	0
 4431 00a3 03       		.uleb128 0x3
 4432 00a4 0E       		.uleb128 0xe
 4433 00a5 3A       		.uleb128 0x3a
 4434 00a6 0B       		.uleb128 0xb
 4435 00a7 3B       		.uleb128 0x3b
 4436 00a8 0B       		.uleb128 0xb
 4437 00a9 49       		.uleb128 0x49
 4438 00aa 13       		.uleb128 0x13
 4439 00ab 3F       		.uleb128 0x3f
 4440 00ac 19       		.uleb128 0x19
 4441 00ad 3C       		.uleb128 0x3c
 4442 00ae 19       		.uleb128 0x19
 4443 00af 00       		.byte	0
 4444 00b0 00       		.byte	0
 4445 00b1 10       		.uleb128 0x10
 4446 00b2 13       		.uleb128 0x13
 4447 00b3 01       		.byte	0x1
 4448 00b4 0B       		.uleb128 0xb
 4449 00b5 05       		.uleb128 0x5
 4450 00b6 3A       		.uleb128 0x3a
 4451 00b7 0B       		.uleb128 0xb
 4452 00b8 3B       		.uleb128 0x3b
 4453 00b9 0B       		.uleb128 0xb
 4454 00ba 6E       		.uleb128 0x6e
 4455 00bb 0E       		.uleb128 0xe
 4456 00bc 01       		.uleb128 0x1
 4457 00bd 13       		.uleb128 0x13
 4458 00be 00       		.byte	0
 4459 00bf 00       		.byte	0
 4460 00c0 11       		.uleb128 0x11
 4461 00c1 0D       		.uleb128 0xd
 4462 00c2 00       		.byte	0
 4463 00c3 03       		.uleb128 0x3
 4464 00c4 0E       		.uleb128 0xe
 4465 00c5 3A       		.uleb128 0x3a
 4466 00c6 0B       		.uleb128 0xb
 4467 00c7 3B       		.uleb128 0x3b
 4468 00c8 0B       		.uleb128 0xb
 4469 00c9 49       		.uleb128 0x49
 4470 00ca 13       		.uleb128 0x13
 4471 00cb 38       		.uleb128 0x38
 4472 00cc 0B       		.uleb128 0xb
 4473 00cd 00       		.byte	0
 4474 00ce 00       		.byte	0
 4475 00cf 12       		.uleb128 0x12
 4476 00d0 0D       		.uleb128 0xd
 4477 00d1 00       		.byte	0
 4478 00d2 03       		.uleb128 0x3
 4479 00d3 0E       		.uleb128 0xe
 4480 00d4 3A       		.uleb128 0x3a
 4481 00d5 0B       		.uleb128 0xb
 4482 00d6 3B       		.uleb128 0x3b
 4483 00d7 0B       		.uleb128 0xb
 4484 00d8 49       		.uleb128 0x49
ARM GAS  /tmp/ccxS4laR.s 			page 84


 4485 00d9 13       		.uleb128 0x13
 4486 00da 38       		.uleb128 0x38
 4487 00db 05       		.uleb128 0x5
 4488 00dc 00       		.byte	0
 4489 00dd 00       		.byte	0
 4490 00de 13       		.uleb128 0x13
 4491 00df 16       		.uleb128 0x16
 4492 00e0 00       		.byte	0
 4493 00e1 03       		.uleb128 0x3
 4494 00e2 08       		.uleb128 0x8
 4495 00e3 3A       		.uleb128 0x3a
 4496 00e4 0B       		.uleb128 0xb
 4497 00e5 3B       		.uleb128 0x3b
 4498 00e6 0B       		.uleb128 0xb
 4499 00e7 49       		.uleb128 0x49
 4500 00e8 13       		.uleb128 0x13
 4501 00e9 00       		.byte	0
 4502 00ea 00       		.byte	0
 4503 00eb 14       		.uleb128 0x14
 4504 00ec 13       		.uleb128 0x13
 4505 00ed 01       		.byte	0x1
 4506 00ee 0B       		.uleb128 0xb
 4507 00ef 0B       		.uleb128 0xb
 4508 00f0 3A       		.uleb128 0x3a
 4509 00f1 0B       		.uleb128 0xb
 4510 00f2 3B       		.uleb128 0x3b
 4511 00f3 0B       		.uleb128 0xb
 4512 00f4 6E       		.uleb128 0x6e
 4513 00f5 0E       		.uleb128 0xe
 4514 00f6 01       		.uleb128 0x1
 4515 00f7 13       		.uleb128 0x13
 4516 00f8 00       		.byte	0
 4517 00f9 00       		.byte	0
 4518 00fa 15       		.uleb128 0x15
 4519 00fb 17       		.uleb128 0x17
 4520 00fc 01       		.byte	0x1
 4521 00fd 0B       		.uleb128 0xb
 4522 00fe 0B       		.uleb128 0xb
 4523 00ff 3A       		.uleb128 0x3a
 4524 0100 0B       		.uleb128 0xb
 4525 0101 3B       		.uleb128 0x3b
 4526 0102 0B       		.uleb128 0xb
 4527 0103 01       		.uleb128 0x1
 4528 0104 13       		.uleb128 0x13
 4529 0105 00       		.byte	0
 4530 0106 00       		.byte	0
 4531 0107 16       		.uleb128 0x16
 4532 0108 0D       		.uleb128 0xd
 4533 0109 00       		.byte	0
 4534 010a 03       		.uleb128 0x3
 4535 010b 0E       		.uleb128 0xe
 4536 010c 3A       		.uleb128 0x3a
 4537 010d 0B       		.uleb128 0xb
 4538 010e 3B       		.uleb128 0x3b
 4539 010f 0B       		.uleb128 0xb
 4540 0110 49       		.uleb128 0x49
 4541 0111 13       		.uleb128 0x13
ARM GAS  /tmp/ccxS4laR.s 			page 85


 4542 0112 00       		.byte	0
 4543 0113 00       		.byte	0
 4544 0114 17       		.uleb128 0x17
 4545 0115 13       		.uleb128 0x13
 4546 0116 01       		.byte	0x1
 4547 0117 03       		.uleb128 0x3
 4548 0118 0E       		.uleb128 0xe
 4549 0119 0B       		.uleb128 0xb
 4550 011a 0B       		.uleb128 0xb
 4551 011b 3A       		.uleb128 0x3a
 4552 011c 0B       		.uleb128 0xb
 4553 011d 3B       		.uleb128 0x3b
 4554 011e 0B       		.uleb128 0xb
 4555 011f 01       		.uleb128 0x1
 4556 0120 13       		.uleb128 0x13
 4557 0121 00       		.byte	0
 4558 0122 00       		.byte	0
 4559 0123 18       		.uleb128 0x18
 4560 0124 0D       		.uleb128 0xd
 4561 0125 00       		.byte	0
 4562 0126 03       		.uleb128 0x3
 4563 0127 08       		.uleb128 0x8
 4564 0128 3A       		.uleb128 0x3a
 4565 0129 0B       		.uleb128 0xb
 4566 012a 3B       		.uleb128 0x3b
 4567 012b 0B       		.uleb128 0xb
 4568 012c 49       		.uleb128 0x49
 4569 012d 13       		.uleb128 0x13
 4570 012e 38       		.uleb128 0x38
 4571 012f 0B       		.uleb128 0xb
 4572 0130 00       		.byte	0
 4573 0131 00       		.byte	0
 4574 0132 19       		.uleb128 0x19
 4575 0133 0F       		.uleb128 0xf
 4576 0134 00       		.byte	0
 4577 0135 0B       		.uleb128 0xb
 4578 0136 0B       		.uleb128 0xb
 4579 0137 49       		.uleb128 0x49
 4580 0138 13       		.uleb128 0x13
 4581 0139 00       		.byte	0
 4582 013a 00       		.byte	0
 4583 013b 1A       		.uleb128 0x1a
 4584 013c 13       		.uleb128 0x13
 4585 013d 01       		.byte	0x1
 4586 013e 03       		.uleb128 0x3
 4587 013f 0E       		.uleb128 0xe
 4588 0140 0B       		.uleb128 0xb
 4589 0141 05       		.uleb128 0x5
 4590 0142 3A       		.uleb128 0x3a
 4591 0143 0B       		.uleb128 0xb
 4592 0144 3B       		.uleb128 0x3b
 4593 0145 0B       		.uleb128 0xb
 4594 0146 01       		.uleb128 0x1
 4595 0147 13       		.uleb128 0x13
 4596 0148 00       		.byte	0
 4597 0149 00       		.byte	0
 4598 014a 1B       		.uleb128 0x1b
ARM GAS  /tmp/ccxS4laR.s 			page 86


 4599 014b 15       		.uleb128 0x15
 4600 014c 00       		.byte	0
 4601 014d 00       		.byte	0
 4602 014e 00       		.byte	0
 4603 014f 1C       		.uleb128 0x1c
 4604 0150 15       		.uleb128 0x15
 4605 0151 01       		.byte	0x1
 4606 0152 49       		.uleb128 0x49
 4607 0153 13       		.uleb128 0x13
 4608 0154 01       		.uleb128 0x1
 4609 0155 13       		.uleb128 0x13
 4610 0156 00       		.byte	0
 4611 0157 00       		.byte	0
 4612 0158 1D       		.uleb128 0x1d
 4613 0159 05       		.uleb128 0x5
 4614 015a 00       		.byte	0
 4615 015b 49       		.uleb128 0x49
 4616 015c 13       		.uleb128 0x13
 4617 015d 00       		.byte	0
 4618 015e 00       		.byte	0
 4619 015f 1E       		.uleb128 0x1e
 4620 0160 13       		.uleb128 0x13
 4621 0161 01       		.byte	0x1
 4622 0162 03       		.uleb128 0x3
 4623 0163 0E       		.uleb128 0xe
 4624 0164 0B       		.uleb128 0xb
 4625 0165 05       		.uleb128 0x5
 4626 0166 3A       		.uleb128 0x3a
 4627 0167 0B       		.uleb128 0xb
 4628 0168 3B       		.uleb128 0x3b
 4629 0169 05       		.uleb128 0x5
 4630 016a 01       		.uleb128 0x1
 4631 016b 13       		.uleb128 0x13
 4632 016c 00       		.byte	0
 4633 016d 00       		.byte	0
 4634 016e 1F       		.uleb128 0x1f
 4635 016f 17       		.uleb128 0x17
 4636 0170 01       		.byte	0x1
 4637 0171 0B       		.uleb128 0xb
 4638 0172 0B       		.uleb128 0xb
 4639 0173 3A       		.uleb128 0x3a
 4640 0174 0B       		.uleb128 0xb
 4641 0175 3B       		.uleb128 0x3b
 4642 0176 05       		.uleb128 0x5
 4643 0177 01       		.uleb128 0x1
 4644 0178 13       		.uleb128 0x13
 4645 0179 00       		.byte	0
 4646 017a 00       		.byte	0
 4647 017b 20       		.uleb128 0x20
 4648 017c 13       		.uleb128 0x13
 4649 017d 01       		.byte	0x1
 4650 017e 0B       		.uleb128 0xb
 4651 017f 0B       		.uleb128 0xb
 4652 0180 3A       		.uleb128 0x3a
 4653 0181 0B       		.uleb128 0xb
 4654 0182 3B       		.uleb128 0x3b
 4655 0183 05       		.uleb128 0x5
ARM GAS  /tmp/ccxS4laR.s 			page 87


 4656 0184 01       		.uleb128 0x1
 4657 0185 13       		.uleb128 0x13
 4658 0186 00       		.byte	0
 4659 0187 00       		.byte	0
 4660 0188 21       		.uleb128 0x21
 4661 0189 0D       		.uleb128 0xd
 4662 018a 00       		.byte	0
 4663 018b 03       		.uleb128 0x3
 4664 018c 0E       		.uleb128 0xe
 4665 018d 3A       		.uleb128 0x3a
 4666 018e 0B       		.uleb128 0xb
 4667 018f 3B       		.uleb128 0x3b
 4668 0190 05       		.uleb128 0x5
 4669 0191 49       		.uleb128 0x49
 4670 0192 13       		.uleb128 0x13
 4671 0193 00       		.byte	0
 4672 0194 00       		.byte	0
 4673 0195 22       		.uleb128 0x22
 4674 0196 0D       		.uleb128 0xd
 4675 0197 00       		.byte	0
 4676 0198 03       		.uleb128 0x3
 4677 0199 0E       		.uleb128 0xe
 4678 019a 3A       		.uleb128 0x3a
 4679 019b 0B       		.uleb128 0xb
 4680 019c 3B       		.uleb128 0x3b
 4681 019d 05       		.uleb128 0x5
 4682 019e 49       		.uleb128 0x49
 4683 019f 13       		.uleb128 0x13
 4684 01a0 38       		.uleb128 0x38
 4685 01a1 05       		.uleb128 0x5
 4686 01a2 00       		.byte	0
 4687 01a3 00       		.byte	0
 4688 01a4 23       		.uleb128 0x23
 4689 01a5 13       		.uleb128 0x13
 4690 01a6 01       		.byte	0x1
 4691 01a7 03       		.uleb128 0x3
 4692 01a8 0E       		.uleb128 0xe
 4693 01a9 0B       		.uleb128 0xb
 4694 01aa 0B       		.uleb128 0xb
 4695 01ab 3A       		.uleb128 0x3a
 4696 01ac 0B       		.uleb128 0xb
 4697 01ad 3B       		.uleb128 0x3b
 4698 01ae 05       		.uleb128 0x5
 4699 01af 01       		.uleb128 0x1
 4700 01b0 13       		.uleb128 0x13
 4701 01b1 00       		.byte	0
 4702 01b2 00       		.byte	0
 4703 01b3 24       		.uleb128 0x24
 4704 01b4 15       		.uleb128 0x15
 4705 01b5 01       		.byte	0x1
 4706 01b6 01       		.uleb128 0x1
 4707 01b7 13       		.uleb128 0x13
 4708 01b8 00       		.byte	0
 4709 01b9 00       		.byte	0
 4710 01ba 25       		.uleb128 0x25
 4711 01bb 39       		.uleb128 0x39
 4712 01bc 01       		.byte	0x1
ARM GAS  /tmp/ccxS4laR.s 			page 88


 4713 01bd 03       		.uleb128 0x3
 4714 01be 08       		.uleb128 0x8
 4715 01bf 3A       		.uleb128 0x3a
 4716 01c0 0B       		.uleb128 0xb
 4717 01c1 3B       		.uleb128 0x3b
 4718 01c2 0B       		.uleb128 0xb
 4719 01c3 01       		.uleb128 0x1
 4720 01c4 13       		.uleb128 0x13
 4721 01c5 00       		.byte	0
 4722 01c6 00       		.byte	0
 4723 01c7 26       		.uleb128 0x26
 4724 01c8 39       		.uleb128 0x39
 4725 01c9 00       		.byte	0
 4726 01ca 03       		.uleb128 0x3
 4727 01cb 0E       		.uleb128 0xe
 4728 01cc 3A       		.uleb128 0x3a
 4729 01cd 0B       		.uleb128 0xb
 4730 01ce 3B       		.uleb128 0x3b
 4731 01cf 0B       		.uleb128 0xb
 4732 01d0 00       		.byte	0
 4733 01d1 00       		.byte	0
 4734 01d2 27       		.uleb128 0x27
 4735 01d3 3A       		.uleb128 0x3a
 4736 01d4 00       		.byte	0
 4737 01d5 3A       		.uleb128 0x3a
 4738 01d6 0B       		.uleb128 0xb
 4739 01d7 3B       		.uleb128 0x3b
 4740 01d8 0B       		.uleb128 0xb
 4741 01d9 18       		.uleb128 0x18
 4742 01da 13       		.uleb128 0x13
 4743 01db 00       		.byte	0
 4744 01dc 00       		.byte	0
 4745 01dd 28       		.uleb128 0x28
 4746 01de 08       		.uleb128 0x8
 4747 01df 00       		.byte	0
 4748 01e0 3A       		.uleb128 0x3a
 4749 01e1 0B       		.uleb128 0xb
 4750 01e2 3B       		.uleb128 0x3b
 4751 01e3 0B       		.uleb128 0xb
 4752 01e4 18       		.uleb128 0x18
 4753 01e5 13       		.uleb128 0x13
 4754 01e6 00       		.byte	0
 4755 01e7 00       		.byte	0
 4756 01e8 29       		.uleb128 0x29
 4757 01e9 08       		.uleb128 0x8
 4758 01ea 00       		.byte	0
 4759 01eb 3A       		.uleb128 0x3a
 4760 01ec 0B       		.uleb128 0xb
 4761 01ed 3B       		.uleb128 0x3b
 4762 01ee 05       		.uleb128 0x5
 4763 01ef 18       		.uleb128 0x18
 4764 01f0 13       		.uleb128 0x13
 4765 01f1 00       		.byte	0
 4766 01f2 00       		.byte	0
 4767 01f3 2A       		.uleb128 0x2a
 4768 01f4 2E       		.uleb128 0x2e
 4769 01f5 01       		.byte	0x1
ARM GAS  /tmp/ccxS4laR.s 			page 89


 4770 01f6 3F       		.uleb128 0x3f
 4771 01f7 19       		.uleb128 0x19
 4772 01f8 03       		.uleb128 0x3
 4773 01f9 08       		.uleb128 0x8
 4774 01fa 3A       		.uleb128 0x3a
 4775 01fb 0B       		.uleb128 0xb
 4776 01fc 3B       		.uleb128 0x3b
 4777 01fd 0B       		.uleb128 0xb
 4778 01fe 6E       		.uleb128 0x6e
 4779 01ff 0E       		.uleb128 0xe
 4780 0200 49       		.uleb128 0x49
 4781 0201 13       		.uleb128 0x13
 4782 0202 3C       		.uleb128 0x3c
 4783 0203 19       		.uleb128 0x19
 4784 0204 01       		.uleb128 0x1
 4785 0205 13       		.uleb128 0x13
 4786 0206 00       		.byte	0
 4787 0207 00       		.byte	0
 4788 0208 2B       		.uleb128 0x2b
 4789 0209 2E       		.uleb128 0x2e
 4790 020a 01       		.byte	0x1
 4791 020b 3F       		.uleb128 0x3f
 4792 020c 19       		.uleb128 0x19
 4793 020d 03       		.uleb128 0x3
 4794 020e 0E       		.uleb128 0xe
 4795 020f 3A       		.uleb128 0x3a
 4796 0210 0B       		.uleb128 0xb
 4797 0211 3B       		.uleb128 0x3b
 4798 0212 05       		.uleb128 0x5
 4799 0213 6E       		.uleb128 0x6e
 4800 0214 0E       		.uleb128 0xe
 4801 0215 49       		.uleb128 0x49
 4802 0216 13       		.uleb128 0x13
 4803 0217 3C       		.uleb128 0x3c
 4804 0218 19       		.uleb128 0x19
 4805 0219 01       		.uleb128 0x1
 4806 021a 13       		.uleb128 0x13
 4807 021b 00       		.byte	0
 4808 021c 00       		.byte	0
 4809 021d 2C       		.uleb128 0x2c
 4810 021e 39       		.uleb128 0x39
 4811 021f 01       		.byte	0x1
 4812 0220 03       		.uleb128 0x3
 4813 0221 0E       		.uleb128 0xe
 4814 0222 3A       		.uleb128 0x3a
 4815 0223 0B       		.uleb128 0xb
 4816 0224 3B       		.uleb128 0x3b
 4817 0225 0B       		.uleb128 0xb
 4818 0226 01       		.uleb128 0x1
 4819 0227 13       		.uleb128 0x13
 4820 0228 00       		.byte	0
 4821 0229 00       		.byte	0
 4822 022a 2D       		.uleb128 0x2d
 4823 022b 2E       		.uleb128 0x2e
 4824 022c 01       		.byte	0x1
 4825 022d 3F       		.uleb128 0x3f
 4826 022e 19       		.uleb128 0x19
ARM GAS  /tmp/ccxS4laR.s 			page 90


 4827 022f 03       		.uleb128 0x3
 4828 0230 08       		.uleb128 0x8
 4829 0231 3A       		.uleb128 0x3a
 4830 0232 0B       		.uleb128 0xb
 4831 0233 3B       		.uleb128 0x3b
 4832 0234 0B       		.uleb128 0xb
 4833 0235 6E       		.uleb128 0x6e
 4834 0236 0E       		.uleb128 0xe
 4835 0237 49       		.uleb128 0x49
 4836 0238 13       		.uleb128 0x13
 4837 0239 3C       		.uleb128 0x3c
 4838 023a 19       		.uleb128 0x19
 4839 023b 00       		.byte	0
 4840 023c 00       		.byte	0
 4841 023d 2E       		.uleb128 0x2e
 4842 023e 26       		.uleb128 0x26
 4843 023f 00       		.byte	0
 4844 0240 00       		.byte	0
 4845 0241 00       		.byte	0
 4846 0242 2F       		.uleb128 0x2f
 4847 0243 2E       		.uleb128 0x2e
 4848 0244 01       		.byte	0x1
 4849 0245 3F       		.uleb128 0x3f
 4850 0246 19       		.uleb128 0x19
 4851 0247 03       		.uleb128 0x3
 4852 0248 0E       		.uleb128 0xe
 4853 0249 3A       		.uleb128 0x3a
 4854 024a 0B       		.uleb128 0xb
 4855 024b 3B       		.uleb128 0x3b
 4856 024c 0B       		.uleb128 0xb
 4857 024d 49       		.uleb128 0x49
 4858 024e 13       		.uleb128 0x13
 4859 024f 3C       		.uleb128 0x3c
 4860 0250 19       		.uleb128 0x19
 4861 0251 01       		.uleb128 0x1
 4862 0252 13       		.uleb128 0x13
 4863 0253 00       		.byte	0
 4864 0254 00       		.byte	0
 4865 0255 30       		.uleb128 0x30
 4866 0256 2E       		.uleb128 0x2e
 4867 0257 01       		.byte	0x1
 4868 0258 3F       		.uleb128 0x3f
 4869 0259 19       		.uleb128 0x19
 4870 025a 03       		.uleb128 0x3
 4871 025b 08       		.uleb128 0x8
 4872 025c 3A       		.uleb128 0x3a
 4873 025d 0B       		.uleb128 0xb
 4874 025e 3B       		.uleb128 0x3b
 4875 025f 0B       		.uleb128 0xb
 4876 0260 49       		.uleb128 0x49
 4877 0261 13       		.uleb128 0x13
 4878 0262 3C       		.uleb128 0x3c
 4879 0263 19       		.uleb128 0x19
 4880 0264 01       		.uleb128 0x1
 4881 0265 13       		.uleb128 0x13
 4882 0266 00       		.byte	0
 4883 0267 00       		.byte	0
ARM GAS  /tmp/ccxS4laR.s 			page 91


 4884 0268 31       		.uleb128 0x31
 4885 0269 2E       		.uleb128 0x2e
 4886 026a 01       		.byte	0x1
 4887 026b 3F       		.uleb128 0x3f
 4888 026c 19       		.uleb128 0x19
 4889 026d 03       		.uleb128 0x3
 4890 026e 0E       		.uleb128 0xe
 4891 026f 3A       		.uleb128 0x3a
 4892 0270 0B       		.uleb128 0xb
 4893 0271 3B       		.uleb128 0x3b
 4894 0272 0B       		.uleb128 0xb
 4895 0273 3C       		.uleb128 0x3c
 4896 0274 19       		.uleb128 0x19
 4897 0275 01       		.uleb128 0x1
 4898 0276 13       		.uleb128 0x13
 4899 0277 00       		.byte	0
 4900 0278 00       		.byte	0
 4901 0279 32       		.uleb128 0x32
 4902 027a 2E       		.uleb128 0x2e
 4903 027b 00       		.byte	0
 4904 027c 3F       		.uleb128 0x3f
 4905 027d 19       		.uleb128 0x19
 4906 027e 03       		.uleb128 0x3
 4907 027f 0E       		.uleb128 0xe
 4908 0280 3A       		.uleb128 0x3a
 4909 0281 0B       		.uleb128 0xb
 4910 0282 3B       		.uleb128 0x3b
 4911 0283 0B       		.uleb128 0xb
 4912 0284 49       		.uleb128 0x49
 4913 0285 13       		.uleb128 0x13
 4914 0286 3C       		.uleb128 0x3c
 4915 0287 19       		.uleb128 0x19
 4916 0288 00       		.byte	0
 4917 0289 00       		.byte	0
 4918 028a 33       		.uleb128 0x33
 4919 028b 2E       		.uleb128 0x2e
 4920 028c 01       		.byte	0x1
 4921 028d 3F       		.uleb128 0x3f
 4922 028e 19       		.uleb128 0x19
 4923 028f 03       		.uleb128 0x3
 4924 0290 0E       		.uleb128 0xe
 4925 0291 3A       		.uleb128 0x3a
 4926 0292 0B       		.uleb128 0xb
 4927 0293 3B       		.uleb128 0x3b
 4928 0294 05       		.uleb128 0x5
 4929 0295 49       		.uleb128 0x49
 4930 0296 13       		.uleb128 0x13
 4931 0297 3C       		.uleb128 0x3c
 4932 0298 19       		.uleb128 0x19
 4933 0299 01       		.uleb128 0x1
 4934 029a 13       		.uleb128 0x13
 4935 029b 00       		.byte	0
 4936 029c 00       		.byte	0
 4937 029d 34       		.uleb128 0x34
 4938 029e 34       		.uleb128 0x34
 4939 029f 00       		.byte	0
 4940 02a0 03       		.uleb128 0x3
ARM GAS  /tmp/ccxS4laR.s 			page 92


 4941 02a1 0E       		.uleb128 0xe
 4942 02a2 3A       		.uleb128 0x3a
 4943 02a3 0B       		.uleb128 0xb
 4944 02a4 3B       		.uleb128 0x3b
 4945 02a5 0B       		.uleb128 0xb
 4946 02a6 49       		.uleb128 0x49
 4947 02a7 13       		.uleb128 0x13
 4948 02a8 02       		.uleb128 0x2
 4949 02a9 18       		.uleb128 0x18
 4950 02aa 00       		.byte	0
 4951 02ab 00       		.byte	0
 4952 02ac 35       		.uleb128 0x35
 4953 02ad 04       		.uleb128 0x4
 4954 02ae 01       		.byte	0x1
 4955 02af 03       		.uleb128 0x3
 4956 02b0 0E       		.uleb128 0xe
 4957 02b1 0B       		.uleb128 0xb
 4958 02b2 0B       		.uleb128 0xb
 4959 02b3 49       		.uleb128 0x49
 4960 02b4 13       		.uleb128 0x13
 4961 02b5 3A       		.uleb128 0x3a
 4962 02b6 0B       		.uleb128 0xb
 4963 02b7 3B       		.uleb128 0x3b
 4964 02b8 05       		.uleb128 0x5
 4965 02b9 01       		.uleb128 0x1
 4966 02ba 13       		.uleb128 0x13
 4967 02bb 00       		.byte	0
 4968 02bc 00       		.byte	0
 4969 02bd 36       		.uleb128 0x36
 4970 02be 28       		.uleb128 0x28
 4971 02bf 00       		.byte	0
 4972 02c0 03       		.uleb128 0x3
 4973 02c1 0E       		.uleb128 0xe
 4974 02c2 1C       		.uleb128 0x1c
 4975 02c3 0D       		.uleb128 0xd
 4976 02c4 00       		.byte	0
 4977 02c5 00       		.byte	0
 4978 02c6 37       		.uleb128 0x37
 4979 02c7 28       		.uleb128 0x28
 4980 02c8 00       		.byte	0
 4981 02c9 03       		.uleb128 0x3
 4982 02ca 0E       		.uleb128 0xe
 4983 02cb 1C       		.uleb128 0x1c
 4984 02cc 0B       		.uleb128 0xb
 4985 02cd 00       		.byte	0
 4986 02ce 00       		.byte	0
 4987 02cf 38       		.uleb128 0x38
 4988 02d0 04       		.uleb128 0x4
 4989 02d1 01       		.byte	0x1
 4990 02d2 03       		.uleb128 0x3
 4991 02d3 0E       		.uleb128 0xe
 4992 02d4 0B       		.uleb128 0xb
 4993 02d5 0B       		.uleb128 0xb
 4994 02d6 49       		.uleb128 0x49
 4995 02d7 13       		.uleb128 0x13
 4996 02d8 3A       		.uleb128 0x3a
 4997 02d9 0B       		.uleb128 0xb
ARM GAS  /tmp/ccxS4laR.s 			page 93


 4998 02da 3B       		.uleb128 0x3b
 4999 02db 0B       		.uleb128 0xb
 5000 02dc 01       		.uleb128 0x1
 5001 02dd 13       		.uleb128 0x13
 5002 02de 00       		.byte	0
 5003 02df 00       		.byte	0
 5004 02e0 39       		.uleb128 0x39
 5005 02e1 28       		.uleb128 0x28
 5006 02e2 00       		.byte	0
 5007 02e3 03       		.uleb128 0x3
 5008 02e4 0E       		.uleb128 0xe
 5009 02e5 1C       		.uleb128 0x1c
 5010 02e6 06       		.uleb128 0x6
 5011 02e7 00       		.byte	0
 5012 02e8 00       		.byte	0
 5013 02e9 3A       		.uleb128 0x3a
 5014 02ea 34       		.uleb128 0x34
 5015 02eb 00       		.byte	0
 5016 02ec 03       		.uleb128 0x3
 5017 02ed 0E       		.uleb128 0xe
 5018 02ee 3A       		.uleb128 0x3a
 5019 02ef 0B       		.uleb128 0xb
 5020 02f0 3B       		.uleb128 0x3b
 5021 02f1 0B       		.uleb128 0xb
 5022 02f2 49       		.uleb128 0x49
 5023 02f3 13       		.uleb128 0x13
 5024 02f4 1C       		.uleb128 0x1c
 5025 02f5 0D       		.uleb128 0xd
 5026 02f6 00       		.byte	0
 5027 02f7 00       		.byte	0
 5028 02f8 3B       		.uleb128 0x3b
 5029 02f9 28       		.uleb128 0x28
 5030 02fa 00       		.byte	0
 5031 02fb 03       		.uleb128 0x3
 5032 02fc 08       		.uleb128 0x8
 5033 02fd 1C       		.uleb128 0x1c
 5034 02fe 0B       		.uleb128 0xb
 5035 02ff 00       		.byte	0
 5036 0300 00       		.byte	0
 5037 0301 3C       		.uleb128 0x3c
 5038 0302 21       		.uleb128 0x21
 5039 0303 00       		.byte	0
 5040 0304 00       		.byte	0
 5041 0305 00       		.byte	0
 5042 0306 3D       		.uleb128 0x3d
 5043 0307 02       		.uleb128 0x2
 5044 0308 01       		.byte	0x1
 5045 0309 03       		.uleb128 0x3
 5046 030a 0E       		.uleb128 0xe
 5047 030b 3C       		.uleb128 0x3c
 5048 030c 19       		.uleb128 0x19
 5049 030d 01       		.uleb128 0x1
 5050 030e 13       		.uleb128 0x13
 5051 030f 00       		.byte	0
 5052 0310 00       		.byte	0
 5053 0311 3E       		.uleb128 0x3e
 5054 0312 2E       		.uleb128 0x2e
ARM GAS  /tmp/ccxS4laR.s 			page 94


 5055 0313 01       		.byte	0x1
 5056 0314 3F       		.uleb128 0x3f
 5057 0315 19       		.uleb128 0x19
 5058 0316 03       		.uleb128 0x3
 5059 0317 0E       		.uleb128 0xe
 5060 0318 3A       		.uleb128 0x3a
 5061 0319 0B       		.uleb128 0xb
 5062 031a 3B       		.uleb128 0x3b
 5063 031b 0B       		.uleb128 0xb
 5064 031c 6E       		.uleb128 0x6e
 5065 031d 0E       		.uleb128 0xe
 5066 031e 49       		.uleb128 0x49
 5067 031f 13       		.uleb128 0x13
 5068 0320 32       		.uleb128 0x32
 5069 0321 0B       		.uleb128 0xb
 5070 0322 3C       		.uleb128 0x3c
 5071 0323 19       		.uleb128 0x19
 5072 0324 64       		.uleb128 0x64
 5073 0325 13       		.uleb128 0x13
 5074 0326 00       		.byte	0
 5075 0327 00       		.byte	0
 5076 0328 3F       		.uleb128 0x3f
 5077 0329 05       		.uleb128 0x5
 5078 032a 00       		.byte	0
 5079 032b 49       		.uleb128 0x49
 5080 032c 13       		.uleb128 0x13
 5081 032d 34       		.uleb128 0x34
 5082 032e 19       		.uleb128 0x19
 5083 032f 00       		.byte	0
 5084 0330 00       		.byte	0
 5085 0331 40       		.uleb128 0x40
 5086 0332 34       		.uleb128 0x34
 5087 0333 00       		.byte	0
 5088 0334 03       		.uleb128 0x3
 5089 0335 0E       		.uleb128 0xe
 5090 0336 3A       		.uleb128 0x3a
 5091 0337 0B       		.uleb128 0xb
 5092 0338 3B       		.uleb128 0x3b
 5093 0339 0B       		.uleb128 0xb
 5094 033a 49       		.uleb128 0x49
 5095 033b 13       		.uleb128 0x13
 5096 033c 1C       		.uleb128 0x1c
 5097 033d 05       		.uleb128 0x5
 5098 033e 00       		.byte	0
 5099 033f 00       		.byte	0
 5100 0340 41       		.uleb128 0x41
 5101 0341 34       		.uleb128 0x34
 5102 0342 00       		.byte	0
 5103 0343 03       		.uleb128 0x3
 5104 0344 0E       		.uleb128 0xe
 5105 0345 3A       		.uleb128 0x3a
 5106 0346 0B       		.uleb128 0xb
 5107 0347 3B       		.uleb128 0x3b
 5108 0348 0B       		.uleb128 0xb
 5109 0349 49       		.uleb128 0x49
 5110 034a 13       		.uleb128 0x13
 5111 034b 1C       		.uleb128 0x1c
ARM GAS  /tmp/ccxS4laR.s 			page 95


 5112 034c 0B       		.uleb128 0xb
 5113 034d 00       		.byte	0
 5114 034e 00       		.byte	0
 5115 034f 42       		.uleb128 0x42
 5116 0350 34       		.uleb128 0x34
 5117 0351 00       		.byte	0
 5118 0352 03       		.uleb128 0x3
 5119 0353 0E       		.uleb128 0xe
 5120 0354 3A       		.uleb128 0x3a
 5121 0355 0B       		.uleb128 0xb
 5122 0356 3B       		.uleb128 0x3b
 5123 0357 0B       		.uleb128 0xb
 5124 0358 49       		.uleb128 0x49
 5125 0359 13       		.uleb128 0x13
 5126 035a 1C       		.uleb128 0x1c
 5127 035b 06       		.uleb128 0x6
 5128 035c 00       		.byte	0
 5129 035d 00       		.byte	0
 5130 035e 43       		.uleb128 0x43
 5131 035f 02       		.uleb128 0x2
 5132 0360 00       		.byte	0
 5133 0361 03       		.uleb128 0x3
 5134 0362 0E       		.uleb128 0xe
 5135 0363 3C       		.uleb128 0x3c
 5136 0364 19       		.uleb128 0x19
 5137 0365 00       		.byte	0
 5138 0366 00       		.byte	0
 5139 0367 44       		.uleb128 0x44
 5140 0368 2E       		.uleb128 0x2e
 5141 0369 01       		.byte	0x1
 5142 036a 3F       		.uleb128 0x3f
 5143 036b 19       		.uleb128 0x19
 5144 036c 03       		.uleb128 0x3
 5145 036d 0E       		.uleb128 0xe
 5146 036e 3A       		.uleb128 0x3a
 5147 036f 0B       		.uleb128 0xb
 5148 0370 3B       		.uleb128 0x3b
 5149 0371 0B       		.uleb128 0xb
 5150 0372 11       		.uleb128 0x11
 5151 0373 01       		.uleb128 0x1
 5152 0374 12       		.uleb128 0x12
 5153 0375 06       		.uleb128 0x6
 5154 0376 40       		.uleb128 0x40
 5155 0377 18       		.uleb128 0x18
 5156 0378 9742     		.uleb128 0x2117
 5157 037a 19       		.uleb128 0x19
 5158 037b 01       		.uleb128 0x1
 5159 037c 13       		.uleb128 0x13
 5160 037d 00       		.byte	0
 5161 037e 00       		.byte	0
 5162 037f 45       		.uleb128 0x45
 5163 0380 05       		.uleb128 0x5
 5164 0381 00       		.byte	0
 5165 0382 03       		.uleb128 0x3
 5166 0383 08       		.uleb128 0x8
 5167 0384 3A       		.uleb128 0x3a
 5168 0385 0B       		.uleb128 0xb
ARM GAS  /tmp/ccxS4laR.s 			page 96


 5169 0386 3B       		.uleb128 0x3b
 5170 0387 0B       		.uleb128 0xb
 5171 0388 49       		.uleb128 0x49
 5172 0389 13       		.uleb128 0x13
 5173 038a 02       		.uleb128 0x2
 5174 038b 17       		.uleb128 0x17
 5175 038c 00       		.byte	0
 5176 038d 00       		.byte	0
 5177 038e 46       		.uleb128 0x46
 5178 038f 0B       		.uleb128 0xb
 5179 0390 01       		.byte	0x1
 5180 0391 55       		.uleb128 0x55
 5181 0392 17       		.uleb128 0x17
 5182 0393 00       		.byte	0
 5183 0394 00       		.byte	0
 5184 0395 47       		.uleb128 0x47
 5185 0396 34       		.uleb128 0x34
 5186 0397 00       		.byte	0
 5187 0398 03       		.uleb128 0x3
 5188 0399 0E       		.uleb128 0xe
 5189 039a 3A       		.uleb128 0x3a
 5190 039b 0B       		.uleb128 0xb
 5191 039c 3B       		.uleb128 0x3b
 5192 039d 0B       		.uleb128 0xb
 5193 039e 49       		.uleb128 0x49
 5194 039f 13       		.uleb128 0x13
 5195 03a0 00       		.byte	0
 5196 03a1 00       		.byte	0
 5197 03a2 48       		.uleb128 0x48
 5198 03a3 898201   		.uleb128 0x4109
 5199 03a6 00       		.byte	0
 5200 03a7 11       		.uleb128 0x11
 5201 03a8 01       		.uleb128 0x1
 5202 03a9 9542     		.uleb128 0x2115
 5203 03ab 19       		.uleb128 0x19
 5204 03ac 31       		.uleb128 0x31
 5205 03ad 13       		.uleb128 0x13
 5206 03ae 00       		.byte	0
 5207 03af 00       		.byte	0
 5208 03b0 49       		.uleb128 0x49
 5209 03b1 10       		.uleb128 0x10
 5210 03b2 00       		.byte	0
 5211 03b3 0B       		.uleb128 0xb
 5212 03b4 0B       		.uleb128 0xb
 5213 03b5 49       		.uleb128 0x49
 5214 03b6 13       		.uleb128 0x13
 5215 03b7 00       		.byte	0
 5216 03b8 00       		.byte	0
 5217 03b9 4A       		.uleb128 0x4a
 5218 03ba 2E       		.uleb128 0x2e
 5219 03bb 01       		.byte	0x1
 5220 03bc 3F       		.uleb128 0x3f
 5221 03bd 19       		.uleb128 0x19
 5222 03be 03       		.uleb128 0x3
 5223 03bf 0E       		.uleb128 0xe
 5224 03c0 3A       		.uleb128 0x3a
 5225 03c1 0B       		.uleb128 0xb
ARM GAS  /tmp/ccxS4laR.s 			page 97


 5226 03c2 3B       		.uleb128 0x3b
 5227 03c3 0B       		.uleb128 0xb
 5228 03c4 49       		.uleb128 0x49
 5229 03c5 13       		.uleb128 0x13
 5230 03c6 11       		.uleb128 0x11
 5231 03c7 01       		.uleb128 0x1
 5232 03c8 12       		.uleb128 0x12
 5233 03c9 06       		.uleb128 0x6
 5234 03ca 40       		.uleb128 0x40
 5235 03cb 18       		.uleb128 0x18
 5236 03cc 9742     		.uleb128 0x2117
 5237 03ce 19       		.uleb128 0x19
 5238 03cf 01       		.uleb128 0x1
 5239 03d0 13       		.uleb128 0x13
 5240 03d1 00       		.byte	0
 5241 03d2 00       		.byte	0
 5242 03d3 4B       		.uleb128 0x4b
 5243 03d4 898201   		.uleb128 0x4109
 5244 03d7 01       		.byte	0x1
 5245 03d8 11       		.uleb128 0x11
 5246 03d9 01       		.uleb128 0x1
 5247 03da 31       		.uleb128 0x31
 5248 03db 13       		.uleb128 0x13
 5249 03dc 00       		.byte	0
 5250 03dd 00       		.byte	0
 5251 03de 4C       		.uleb128 0x4c
 5252 03df 8A8201   		.uleb128 0x410a
 5253 03e2 00       		.byte	0
 5254 03e3 02       		.uleb128 0x2
 5255 03e4 18       		.uleb128 0x18
 5256 03e5 9142     		.uleb128 0x2111
 5257 03e7 18       		.uleb128 0x18
 5258 03e8 00       		.byte	0
 5259 03e9 00       		.byte	0
 5260 03ea 4D       		.uleb128 0x4d
 5261 03eb 05       		.uleb128 0x5
 5262 03ec 00       		.byte	0
 5263 03ed 03       		.uleb128 0x3
 5264 03ee 0E       		.uleb128 0xe
 5265 03ef 3A       		.uleb128 0x3a
 5266 03f0 0B       		.uleb128 0xb
 5267 03f1 3B       		.uleb128 0x3b
 5268 03f2 0B       		.uleb128 0xb
 5269 03f3 49       		.uleb128 0x49
 5270 03f4 13       		.uleb128 0x13
 5271 03f5 02       		.uleb128 0x2
 5272 03f6 18       		.uleb128 0x18
 5273 03f7 00       		.byte	0
 5274 03f8 00       		.byte	0
 5275 03f9 4E       		.uleb128 0x4e
 5276 03fa 05       		.uleb128 0x5
 5277 03fb 00       		.byte	0
 5278 03fc 03       		.uleb128 0x3
 5279 03fd 0E       		.uleb128 0xe
 5280 03fe 3A       		.uleb128 0x3a
 5281 03ff 0B       		.uleb128 0xb
 5282 0400 3B       		.uleb128 0x3b
ARM GAS  /tmp/ccxS4laR.s 			page 98


 5283 0401 0B       		.uleb128 0xb
 5284 0402 49       		.uleb128 0x49
 5285 0403 13       		.uleb128 0x13
 5286 0404 02       		.uleb128 0x2
 5287 0405 17       		.uleb128 0x17
 5288 0406 00       		.byte	0
 5289 0407 00       		.byte	0
 5290 0408 4F       		.uleb128 0x4f
 5291 0409 898201   		.uleb128 0x4109
 5292 040c 01       		.byte	0x1
 5293 040d 11       		.uleb128 0x11
 5294 040e 01       		.uleb128 0x1
 5295 040f 9542     		.uleb128 0x2115
 5296 0411 19       		.uleb128 0x19
 5297 0412 31       		.uleb128 0x31
 5298 0413 13       		.uleb128 0x13
 5299 0414 01       		.uleb128 0x1
 5300 0415 13       		.uleb128 0x13
 5301 0416 00       		.byte	0
 5302 0417 00       		.byte	0
 5303 0418 50       		.uleb128 0x50
 5304 0419 898201   		.uleb128 0x4109
 5305 041c 00       		.byte	0
 5306 041d 11       		.uleb128 0x11
 5307 041e 01       		.uleb128 0x1
 5308 041f 31       		.uleb128 0x31
 5309 0420 13       		.uleb128 0x13
 5310 0421 00       		.byte	0
 5311 0422 00       		.byte	0
 5312 0423 51       		.uleb128 0x51
 5313 0424 898201   		.uleb128 0x4109
 5314 0427 01       		.byte	0x1
 5315 0428 11       		.uleb128 0x11
 5316 0429 01       		.uleb128 0x1
 5317 042a 31       		.uleb128 0x31
 5318 042b 13       		.uleb128 0x13
 5319 042c 01       		.uleb128 0x1
 5320 042d 13       		.uleb128 0x13
 5321 042e 00       		.byte	0
 5322 042f 00       		.byte	0
 5323 0430 52       		.uleb128 0x52
 5324 0431 898201   		.uleb128 0x4109
 5325 0434 01       		.byte	0x1
 5326 0435 11       		.uleb128 0x11
 5327 0436 01       		.uleb128 0x1
 5328 0437 9542     		.uleb128 0x2115
 5329 0439 19       		.uleb128 0x19
 5330 043a 31       		.uleb128 0x31
 5331 043b 13       		.uleb128 0x13
 5332 043c 00       		.byte	0
 5333 043d 00       		.byte	0
 5334 043e 53       		.uleb128 0x53
 5335 043f 2E       		.uleb128 0x2e
 5336 0440 00       		.byte	0
 5337 0441 3F       		.uleb128 0x3f
 5338 0442 19       		.uleb128 0x19
 5339 0443 3C       		.uleb128 0x3c
ARM GAS  /tmp/ccxS4laR.s 			page 99


 5340 0444 19       		.uleb128 0x19
 5341 0445 6E       		.uleb128 0x6e
 5342 0446 0E       		.uleb128 0xe
 5343 0447 03       		.uleb128 0x3
 5344 0448 0E       		.uleb128 0xe
 5345 0449 3A       		.uleb128 0x3a
 5346 044a 0B       		.uleb128 0xb
 5347 044b 3B       		.uleb128 0x3b
 5348 044c 0B       		.uleb128 0xb
 5349 044d 00       		.byte	0
 5350 044e 00       		.byte	0
 5351 044f 54       		.uleb128 0x54
 5352 0450 2E       		.uleb128 0x2e
 5353 0451 00       		.byte	0
 5354 0452 3F       		.uleb128 0x3f
 5355 0453 19       		.uleb128 0x19
 5356 0454 3C       		.uleb128 0x3c
 5357 0455 19       		.uleb128 0x19
 5358 0456 6E       		.uleb128 0x6e
 5359 0457 0E       		.uleb128 0xe
 5360 0458 03       		.uleb128 0x3
 5361 0459 0E       		.uleb128 0xe
 5362 045a 3A       		.uleb128 0x3a
 5363 045b 0B       		.uleb128 0xb
 5364 045c 3B       		.uleb128 0x3b
 5365 045d 0B       		.uleb128 0xb
 5366 045e 6E       		.uleb128 0x6e
 5367 045f 0E       		.uleb128 0xe
 5368 0460 00       		.byte	0
 5369 0461 00       		.byte	0
 5370 0462 00       		.byte	0
 5371              		.section	.debug_loc,"",%progbits
 5372              	.Ldebug_loc0:
 5373              	.LLST5:
 5374 0000 00000000 		.4byte	.LVL52
 5375 0004 08000000 		.4byte	.LVL54
 5376 0008 0100     		.2byte	0x1
 5377 000a 50       		.byte	0x50
 5378 000b 08000000 		.4byte	.LVL54
 5379 000f 2C000000 		.4byte	.LFE528
 5380 0013 0400     		.2byte	0x4
 5381 0015 F3       		.byte	0xf3
 5382 0016 01       		.uleb128 0x1
 5383 0017 50       		.byte	0x50
 5384 0018 9F       		.byte	0x9f
 5385 0019 00000000 		.4byte	0
 5386 001d 00000000 		.4byte	0
 5387              	.LLST6:
 5388 0021 00000000 		.4byte	.LVL52
 5389 0025 20000000 		.4byte	.LVL55
 5390 0029 0100     		.2byte	0x1
 5391 002b 51       		.byte	0x51
 5392 002c 20000000 		.4byte	.LVL55
 5393 0030 2C000000 		.4byte	.LFE528
 5394 0034 0400     		.2byte	0x4
 5395 0036 F3       		.byte	0xf3
 5396 0037 01       		.uleb128 0x1
ARM GAS  /tmp/ccxS4laR.s 			page 100


 5397 0038 51       		.byte	0x51
 5398 0039 9F       		.byte	0x9f
 5399 003a 00000000 		.4byte	0
 5400 003e 00000000 		.4byte	0
 5401              	.LLST4:
 5402 0042 00000000 		.4byte	.LVL46
 5403 0046 08000000 		.4byte	.LVL48
 5404 004a 0100     		.2byte	0x1
 5405 004c 50       		.byte	0x50
 5406 004d 08000000 		.4byte	.LVL48
 5407 0051 2A000000 		.4byte	.LVL50
 5408 0055 0400     		.2byte	0x4
 5409 0057 F3       		.byte	0xf3
 5410 0058 01       		.uleb128 0x1
 5411 0059 50       		.byte	0x50
 5412 005a 9F       		.byte	0x9f
 5413 005b 2A000000 		.4byte	.LVL50
 5414 005f 2C000000 		.4byte	.LVL51
 5415 0063 0100     		.2byte	0x1
 5416 0065 50       		.byte	0x50
 5417 0066 2C000000 		.4byte	.LVL51
 5418 006a 34000000 		.4byte	.LFE527
 5419 006e 0400     		.2byte	0x4
 5420 0070 F3       		.byte	0xf3
 5421 0071 01       		.uleb128 0x1
 5422 0072 50       		.byte	0x50
 5423 0073 9F       		.byte	0x9f
 5424 0074 00000000 		.4byte	0
 5425 0078 00000000 		.4byte	0
 5426              	.LLST3:
 5427 007c 00000000 		.4byte	.LVL43
 5428 0080 08000000 		.4byte	.LVL45
 5429 0084 0100     		.2byte	0x1
 5430 0086 50       		.byte	0x50
 5431 0087 08000000 		.4byte	.LVL45
 5432 008b 2C000000 		.4byte	.LFE526
 5433 008f 0400     		.2byte	0x4
 5434 0091 F3       		.byte	0xf3
 5435 0092 01       		.uleb128 0x1
 5436 0093 50       		.byte	0x50
 5437 0094 9F       		.byte	0x9f
 5438 0095 00000000 		.4byte	0
 5439 0099 00000000 		.4byte	0
 5440              	.LLST0:
 5441 009d 00000000 		.4byte	.LVL0
 5442 00a1 29000000 		.4byte	.LVL2
 5443 00a5 0100     		.2byte	0x1
 5444 00a7 50       		.byte	0x50
 5445 00a8 29000000 		.4byte	.LVL2
 5446 00ac 2E000000 		.4byte	.LVL3
 5447 00b0 0400     		.2byte	0x4
 5448 00b2 F3       		.byte	0xf3
 5449 00b3 01       		.uleb128 0x1
 5450 00b4 50       		.byte	0x50
 5451 00b5 9F       		.byte	0x9f
 5452 00b6 2E000000 		.4byte	.LVL3
 5453 00ba 4B000000 		.4byte	.LVL6-1
ARM GAS  /tmp/ccxS4laR.s 			page 101


 5454 00be 0100     		.2byte	0x1
 5455 00c0 50       		.byte	0x50
 5456 00c1 4B000000 		.4byte	.LVL6-1
 5457 00c5 4C000000 		.4byte	.LVL6
 5458 00c9 0400     		.2byte	0x4
 5459 00cb F3       		.byte	0xf3
 5460 00cc 01       		.uleb128 0x1
 5461 00cd 50       		.byte	0x50
 5462 00ce 9F       		.byte	0x9f
 5463 00cf 4C000000 		.4byte	.LVL6
 5464 00d3 4E000000 		.4byte	.LVL7
 5465 00d7 0100     		.2byte	0x1
 5466 00d9 50       		.byte	0x50
 5467 00da 4E000000 		.4byte	.LVL7
 5468 00de 82000000 		.4byte	.LVL12
 5469 00e2 0400     		.2byte	0x4
 5470 00e4 F3       		.byte	0xf3
 5471 00e5 01       		.uleb128 0x1
 5472 00e6 50       		.byte	0x50
 5473 00e7 9F       		.byte	0x9f
 5474 00e8 82000000 		.4byte	.LVL12
 5475 00ec 84000000 		.4byte	.LVL13
 5476 00f0 0100     		.2byte	0x1
 5477 00f2 50       		.byte	0x50
 5478 00f3 84000000 		.4byte	.LVL13
 5479 00f7 AE000000 		.4byte	.LVL17
 5480 00fb 0400     		.2byte	0x4
 5481 00fd F3       		.byte	0xf3
 5482 00fe 01       		.uleb128 0x1
 5483 00ff 50       		.byte	0x50
 5484 0100 9F       		.byte	0x9f
 5485 0101 AE000000 		.4byte	.LVL17
 5486 0105 B0000000 		.4byte	.LVL18
 5487 0109 0100     		.2byte	0x1
 5488 010b 50       		.byte	0x50
 5489 010c B0000000 		.4byte	.LVL18
 5490 0110 EE000000 		.4byte	.LVL24
 5491 0114 0400     		.2byte	0x4
 5492 0116 F3       		.byte	0xf3
 5493 0117 01       		.uleb128 0x1
 5494 0118 50       		.byte	0x50
 5495 0119 9F       		.byte	0x9f
 5496 011a EE000000 		.4byte	.LVL24
 5497 011e F0000000 		.4byte	.LVL25
 5498 0122 0100     		.2byte	0x1
 5499 0124 50       		.byte	0x50
 5500 0125 F0000000 		.4byte	.LVL25
 5501 0129 14010000 		.4byte	.LVL29
 5502 012d 0400     		.2byte	0x4
 5503 012f F3       		.byte	0xf3
 5504 0130 01       		.uleb128 0x1
 5505 0131 50       		.byte	0x50
 5506 0132 9F       		.byte	0x9f
 5507 0133 14010000 		.4byte	.LVL29
 5508 0137 16010000 		.4byte	.LVL30
 5509 013b 0100     		.2byte	0x1
 5510 013d 50       		.byte	0x50
ARM GAS  /tmp/ccxS4laR.s 			page 102


 5511 013e 16010000 		.4byte	.LVL30
 5512 0142 1C010000 		.4byte	.LVL32
 5513 0146 0400     		.2byte	0x4
 5514 0148 F3       		.byte	0xf3
 5515 0149 01       		.uleb128 0x1
 5516 014a 50       		.byte	0x50
 5517 014b 9F       		.byte	0x9f
 5518 014c 1C010000 		.4byte	.LVL32
 5519 0150 1E010000 		.4byte	.LVL33
 5520 0154 0100     		.2byte	0x1
 5521 0156 50       		.byte	0x50
 5522 0157 1E010000 		.4byte	.LVL33
 5523 015b 3A010000 		.4byte	.LVL38
 5524 015f 0400     		.2byte	0x4
 5525 0161 F3       		.byte	0xf3
 5526 0162 01       		.uleb128 0x1
 5527 0163 50       		.byte	0x50
 5528 0164 9F       		.byte	0x9f
 5529 0165 3A010000 		.4byte	.LVL38
 5530 0169 3E010000 		.4byte	.LVL39
 5531 016d 0100     		.2byte	0x1
 5532 016f 50       		.byte	0x50
 5533 0170 3E010000 		.4byte	.LVL39
 5534 0174 4A010000 		.4byte	.LVL40
 5535 0178 0400     		.2byte	0x4
 5536 017a F3       		.byte	0xf3
 5537 017b 01       		.uleb128 0x1
 5538 017c 50       		.byte	0x50
 5539 017d 9F       		.byte	0x9f
 5540 017e 4A010000 		.4byte	.LVL40
 5541 0182 67010000 		.4byte	.LVL42-1
 5542 0186 0100     		.2byte	0x1
 5543 0188 50       		.byte	0x50
 5544 0189 67010000 		.4byte	.LVL42-1
 5545 018d 74010000 		.4byte	.LFE525
 5546 0191 0400     		.2byte	0x4
 5547 0193 F3       		.byte	0xf3
 5548 0194 01       		.uleb128 0x1
 5549 0195 50       		.byte	0x50
 5550 0196 9F       		.byte	0x9f
 5551 0197 00000000 		.4byte	0
 5552 019b 00000000 		.4byte	0
 5553              	.LLST1:
 5554 019f 00000000 		.4byte	.LVL0
 5555 01a3 29000000 		.4byte	.LVL2
 5556 01a7 0100     		.2byte	0x1
 5557 01a9 51       		.byte	0x51
 5558 01aa 29000000 		.4byte	.LVL2
 5559 01ae 2E000000 		.4byte	.LVL3
 5560 01b2 0400     		.2byte	0x4
 5561 01b4 F3       		.byte	0xf3
 5562 01b5 01       		.uleb128 0x1
 5563 01b6 51       		.byte	0x51
 5564 01b7 9F       		.byte	0x9f
 5565 01b8 2E000000 		.4byte	.LVL3
 5566 01bc 40000000 		.4byte	.LVL5
 5567 01c0 0100     		.2byte	0x1
ARM GAS  /tmp/ccxS4laR.s 			page 103


 5568 01c2 51       		.byte	0x51
 5569 01c3 40000000 		.4byte	.LVL5
 5570 01c7 4C000000 		.4byte	.LVL6
 5571 01cb 0400     		.2byte	0x4
 5572 01cd F3       		.byte	0xf3
 5573 01ce 01       		.uleb128 0x1
 5574 01cf 51       		.byte	0x51
 5575 01d0 9F       		.byte	0x9f
 5576 01d1 4C000000 		.4byte	.LVL6
 5577 01d5 57000000 		.4byte	.LVL8-1
 5578 01d9 0100     		.2byte	0x1
 5579 01db 51       		.byte	0x51
 5580 01dc 57000000 		.4byte	.LVL8-1
 5581 01e0 82000000 		.4byte	.LVL12
 5582 01e4 0400     		.2byte	0x4
 5583 01e6 F3       		.byte	0xf3
 5584 01e7 01       		.uleb128 0x1
 5585 01e8 51       		.byte	0x51
 5586 01e9 9F       		.byte	0x9f
 5587 01ea 82000000 		.4byte	.LVL12
 5588 01ee 8D000000 		.4byte	.LVL14-1
 5589 01f2 0100     		.2byte	0x1
 5590 01f4 51       		.byte	0x51
 5591 01f5 8D000000 		.4byte	.LVL14-1
 5592 01f9 AE000000 		.4byte	.LVL17
 5593 01fd 0400     		.2byte	0x4
 5594 01ff F3       		.byte	0xf3
 5595 0200 01       		.uleb128 0x1
 5596 0201 51       		.byte	0x51
 5597 0202 9F       		.byte	0x9f
 5598 0203 AE000000 		.4byte	.LVL17
 5599 0207 B9000000 		.4byte	.LVL19-1
 5600 020b 0100     		.2byte	0x1
 5601 020d 51       		.byte	0x51
 5602 020e B9000000 		.4byte	.LVL19-1
 5603 0212 EE000000 		.4byte	.LVL24
 5604 0216 0400     		.2byte	0x4
 5605 0218 F3       		.byte	0xf3
 5606 0219 01       		.uleb128 0x1
 5607 021a 51       		.byte	0x51
 5608 021b 9F       		.byte	0x9f
 5609 021c EE000000 		.4byte	.LVL24
 5610 0220 F4000000 		.4byte	.LVL26
 5611 0224 0100     		.2byte	0x1
 5612 0226 51       		.byte	0x51
 5613 0227 F4000000 		.4byte	.LVL26
 5614 022b 14010000 		.4byte	.LVL29
 5615 022f 0400     		.2byte	0x4
 5616 0231 F3       		.byte	0xf3
 5617 0232 01       		.uleb128 0x1
 5618 0233 51       		.byte	0x51
 5619 0234 9F       		.byte	0x9f
 5620 0235 14010000 		.4byte	.LVL29
 5621 0239 1A010000 		.4byte	.LVL31
 5622 023d 0100     		.2byte	0x1
 5623 023f 51       		.byte	0x51
 5624 0240 1A010000 		.4byte	.LVL31
ARM GAS  /tmp/ccxS4laR.s 			page 104


 5625 0244 1C010000 		.4byte	.LVL32
 5626 0248 0400     		.2byte	0x4
 5627 024a F3       		.byte	0xf3
 5628 024b 01       		.uleb128 0x1
 5629 024c 51       		.byte	0x51
 5630 024d 9F       		.byte	0x9f
 5631 024e 1C010000 		.4byte	.LVL32
 5632 0252 28010000 		.4byte	.LVL36
 5633 0256 0100     		.2byte	0x1
 5634 0258 51       		.byte	0x51
 5635 0259 28010000 		.4byte	.LVL36
 5636 025d 3A010000 		.4byte	.LVL38
 5637 0261 0400     		.2byte	0x4
 5638 0263 F3       		.byte	0xf3
 5639 0264 01       		.uleb128 0x1
 5640 0265 51       		.byte	0x51
 5641 0266 9F       		.byte	0x9f
 5642 0267 3A010000 		.4byte	.LVL38
 5643 026b 49010000 		.4byte	.LVL40-1
 5644 026f 0100     		.2byte	0x1
 5645 0271 51       		.byte	0x51
 5646 0272 49010000 		.4byte	.LVL40-1
 5647 0276 4A010000 		.4byte	.LVL40
 5648 027a 0400     		.2byte	0x4
 5649 027c F3       		.byte	0xf3
 5650 027d 01       		.uleb128 0x1
 5651 027e 51       		.byte	0x51
 5652 027f 9F       		.byte	0x9f
 5653 0280 4A010000 		.4byte	.LVL40
 5654 0284 5C010000 		.4byte	.LVL41
 5655 0288 0100     		.2byte	0x1
 5656 028a 51       		.byte	0x51
 5657 028b 5C010000 		.4byte	.LVL41
 5658 028f 74010000 		.4byte	.LFE525
 5659 0293 0400     		.2byte	0x4
 5660 0295 F3       		.byte	0xf3
 5661 0296 01       		.uleb128 0x1
 5662 0297 51       		.byte	0x51
 5663 0298 9F       		.byte	0x9f
 5664 0299 00000000 		.4byte	0
 5665 029d 00000000 		.4byte	0
 5666              	.LLST2:
 5667 02a1 00000000 		.4byte	.LVL0
 5668 02a5 29000000 		.4byte	.LVL2
 5669 02a9 0100     		.2byte	0x1
 5670 02ab 52       		.byte	0x52
 5671 02ac 29000000 		.4byte	.LVL2
 5672 02b0 2E000000 		.4byte	.LVL3
 5673 02b4 0400     		.2byte	0x4
 5674 02b6 F3       		.byte	0xf3
 5675 02b7 01       		.uleb128 0x1
 5676 02b8 52       		.byte	0x52
 5677 02b9 9F       		.byte	0x9f
 5678 02ba 2E000000 		.4byte	.LVL3
 5679 02be 4B000000 		.4byte	.LVL6-1
 5680 02c2 0100     		.2byte	0x1
 5681 02c4 52       		.byte	0x52
ARM GAS  /tmp/ccxS4laR.s 			page 105


 5682 02c5 4B000000 		.4byte	.LVL6-1
 5683 02c9 4C000000 		.4byte	.LVL6
 5684 02cd 0400     		.2byte	0x4
 5685 02cf F3       		.byte	0xf3
 5686 02d0 01       		.uleb128 0x1
 5687 02d1 52       		.byte	0x52
 5688 02d2 9F       		.byte	0x9f
 5689 02d3 4C000000 		.4byte	.LVL6
 5690 02d7 57000000 		.4byte	.LVL8-1
 5691 02db 0100     		.2byte	0x1
 5692 02dd 52       		.byte	0x52
 5693 02de 57000000 		.4byte	.LVL8-1
 5694 02e2 7E000000 		.4byte	.LVL11
 5695 02e6 0100     		.2byte	0x1
 5696 02e8 56       		.byte	0x56
 5697 02e9 7E000000 		.4byte	.LVL11
 5698 02ed 81000000 		.4byte	.LVL12-1
 5699 02f1 0100     		.2byte	0x1
 5700 02f3 53       		.byte	0x53
 5701 02f4 81000000 		.4byte	.LVL12-1
 5702 02f8 82000000 		.4byte	.LVL12
 5703 02fc 0400     		.2byte	0x4
 5704 02fe F3       		.byte	0xf3
 5705 02ff 01       		.uleb128 0x1
 5706 0300 52       		.byte	0x52
 5707 0301 9F       		.byte	0x9f
 5708 0302 82000000 		.4byte	.LVL12
 5709 0306 8D000000 		.4byte	.LVL14-1
 5710 030a 0100     		.2byte	0x1
 5711 030c 52       		.byte	0x52
 5712 030d 8D000000 		.4byte	.LVL14-1
 5713 0311 AA000000 		.4byte	.LVL16
 5714 0315 0100     		.2byte	0x1
 5715 0317 56       		.byte	0x56
 5716 0318 AA000000 		.4byte	.LVL16
 5717 031c AE000000 		.4byte	.LVL17
 5718 0320 0400     		.2byte	0x4
 5719 0322 F3       		.byte	0xf3
 5720 0323 01       		.uleb128 0x1
 5721 0324 52       		.byte	0x52
 5722 0325 9F       		.byte	0x9f
 5723 0326 AE000000 		.4byte	.LVL17
 5724 032a B9000000 		.4byte	.LVL19-1
 5725 032e 0100     		.2byte	0x1
 5726 0330 52       		.byte	0x52
 5727 0331 B9000000 		.4byte	.LVL19-1
 5728 0335 EA000000 		.4byte	.LVL23
 5729 0339 0100     		.2byte	0x1
 5730 033b 56       		.byte	0x56
 5731 033c EA000000 		.4byte	.LVL23
 5732 0340 ED000000 		.4byte	.LVL24-1
 5733 0344 0100     		.2byte	0x1
 5734 0346 52       		.byte	0x52
 5735 0347 ED000000 		.4byte	.LVL24-1
 5736 034b EE000000 		.4byte	.LVL24
 5737 034f 0400     		.2byte	0x4
 5738 0351 F3       		.byte	0xf3
ARM GAS  /tmp/ccxS4laR.s 			page 106


 5739 0352 01       		.uleb128 0x1
 5740 0353 52       		.byte	0x52
 5741 0354 9F       		.byte	0x9f
 5742 0355 EE000000 		.4byte	.LVL24
 5743 0359 FE000000 		.4byte	.LVL27
 5744 035d 0100     		.2byte	0x1
 5745 035f 52       		.byte	0x52
 5746 0360 FE000000 		.4byte	.LVL27
 5747 0364 14010000 		.4byte	.LVL29
 5748 0368 0400     		.2byte	0x4
 5749 036a F3       		.byte	0xf3
 5750 036b 01       		.uleb128 0x1
 5751 036c 52       		.byte	0x52
 5752 036d 9F       		.byte	0x9f
 5753 036e 14010000 		.4byte	.LVL29
 5754 0372 20010000 		.4byte	.LVL34
 5755 0376 0100     		.2byte	0x1
 5756 0378 52       		.byte	0x52
 5757 0379 20010000 		.4byte	.LVL34
 5758 037d 24010000 		.4byte	.LVL35
 5759 0381 0100     		.2byte	0x1
 5760 0383 56       		.byte	0x56
 5761 0384 24010000 		.4byte	.LVL35
 5762 0388 3A010000 		.4byte	.LVL38
 5763 038c 0400     		.2byte	0x4
 5764 038e F3       		.byte	0xf3
 5765 038f 01       		.uleb128 0x1
 5766 0390 52       		.byte	0x52
 5767 0391 9F       		.byte	0x9f
 5768 0392 3A010000 		.4byte	.LVL38
 5769 0396 49010000 		.4byte	.LVL40-1
 5770 039a 0100     		.2byte	0x1
 5771 039c 52       		.byte	0x52
 5772 039d 49010000 		.4byte	.LVL40-1
 5773 03a1 4A010000 		.4byte	.LVL40
 5774 03a5 0400     		.2byte	0x4
 5775 03a7 F3       		.byte	0xf3
 5776 03a8 01       		.uleb128 0x1
 5777 03a9 52       		.byte	0x52
 5778 03aa 9F       		.byte	0x9f
 5779 03ab 4A010000 		.4byte	.LVL40
 5780 03af 67010000 		.4byte	.LVL42-1
 5781 03b3 0100     		.2byte	0x1
 5782 03b5 52       		.byte	0x52
 5783 03b6 67010000 		.4byte	.LVL42-1
 5784 03ba 68010000 		.4byte	.LVL42
 5785 03be 0400     		.2byte	0x4
 5786 03c0 F3       		.byte	0xf3
 5787 03c1 01       		.uleb128 0x1
 5788 03c2 52       		.byte	0x52
 5789 03c3 9F       		.byte	0x9f
 5790 03c4 68010000 		.4byte	.LVL42
 5791 03c8 74010000 		.4byte	.LFE525
 5792 03cc 0100     		.2byte	0x1
 5793 03ce 56       		.byte	0x56
 5794 03cf 00000000 		.4byte	0
 5795 03d3 00000000 		.4byte	0
ARM GAS  /tmp/ccxS4laR.s 			page 107


 5796              		.section	.debug_aranges,"",%progbits
 5797 0000 34000000 		.4byte	0x34
 5798 0004 0200     		.2byte	0x2
 5799 0006 00000000 		.4byte	.Ldebug_info0
 5800 000a 04       		.byte	0x4
 5801 000b 00       		.byte	0
 5802 000c 0000     		.2byte	0
 5803 000e 0000     		.2byte	0
 5804 0010 00000000 		.4byte	.LFB525
 5805 0014 74010000 		.4byte	.LFE525-.LFB525
 5806 0018 00000000 		.4byte	.LFB526
 5807 001c 2C000000 		.4byte	.LFE526-.LFB526
 5808 0020 00000000 		.4byte	.LFB527
 5809 0024 34000000 		.4byte	.LFE527-.LFB527
 5810 0028 00000000 		.4byte	.LFB528
 5811 002c 2C000000 		.4byte	.LFE528-.LFB528
 5812 0030 00000000 		.4byte	0
 5813 0034 00000000 		.4byte	0
 5814              		.section	.debug_ranges,"",%progbits
 5815              	.Ldebug_ranges0:
 5816 0000 04000000 		.4byte	.LBB3
 5817 0004 0E000000 		.4byte	.LBE3
 5818 0008 10000000 		.4byte	.LBB4
 5819 000c 1C000000 		.4byte	.LBE4
 5820 0010 22000000 		.4byte	.LBB5
 5821 0014 2C000000 		.4byte	.LBE5
 5822 0018 00000000 		.4byte	0
 5823 001c 00000000 		.4byte	0
 5824 0020 04000000 		.4byte	.LBB9
 5825 0024 0C000000 		.4byte	.LBE9
 5826 0028 0E000000 		.4byte	.LBB10
 5827 002c 14000000 		.4byte	.LBE10
 5828 0030 1A000000 		.4byte	.LBB11
 5829 0034 20000000 		.4byte	.LBE11
 5830 0038 24000000 		.4byte	.LBB12
 5831 003c 2C000000 		.4byte	.LBE12
 5832 0040 00000000 		.4byte	0
 5833 0044 00000000 		.4byte	0
 5834 0048 00000000 		.4byte	.LFB525
 5835 004c 74010000 		.4byte	.LFE525
 5836 0050 00000000 		.4byte	.LFB526
 5837 0054 2C000000 		.4byte	.LFE526
 5838 0058 00000000 		.4byte	.LFB527
 5839 005c 34000000 		.4byte	.LFE527
 5840 0060 00000000 		.4byte	.LFB528
 5841 0064 2C000000 		.4byte	.LFE528
 5842 0068 00000000 		.4byte	0
 5843 006c 00000000 		.4byte	0
 5844              		.section	.debug_line,"",%progbits
 5845              	.Ldebug_line0:
 5846 0000 6E050000 		.section	.debug_str,"MS",%progbits,1
 5846      02009104 
 5846      00000201 
 5846      FB0E0D00 
 5846      01010101 
 5847              	.LASF260:
 5848 0000 67657465 		.ascii	"getenv\000"
ARM GAS  /tmp/ccxS4laR.s 			page 108


 5848      6E7600
 5849              	.LASF313:
 5850 0007 4550574D 		.ascii	"EPWMChannel\000"
 5850      4368616E 
 5850      6E656C00 
 5851              	.LASF54:
 5852 0013 75696E74 		.ascii	"uint_fast16_t\000"
 5852      5F666173 
 5852      7431365F 
 5852      7400
 5853              	.LASF17:
 5854 0021 6C6F6E67 		.ascii	"long int\000"
 5854      20696E74 
 5854      00
 5855              	.LASF101:
 5856 002a 52657365 		.ascii	"Reserved7\000"
 5856      72766564 
 5856      3700
 5857              	.LASF30:
 5858 0034 5F5F7569 		.ascii	"__uint_least64_t\000"
 5858      6E745F6C 
 5858      65617374 
 5858      36345F74 
 5858      00
 5859              	.LASF374:
 5860 0045 756C5069 		.ascii	"ulPinConfiguration\000"
 5860      6E436F6E 
 5860      66696775 
 5860      72617469 
 5860      6F6E00
 5861              	.LASF63:
 5862 0058 53797374 		.ascii	"SystemCoreClock\000"
 5862      656D436F 
 5862      7265436C 
 5862      6F636B00 
 5863              	.LASF446:
 5864 0068 72616E64 		.ascii	"rand\000"
 5864      00
 5865              	.LASF412:
 5866 006d 4F555450 		.ascii	"OUTPUT_PWM_LOW\000"
 5866      55545F50 
 5866      574D5F4C 
 5866      4F5700
 5867              	.LASF409:
 5868 007c 4F555450 		.ascii	"OUTPUT_LOW\000"
 5868      55545F4C 
 5868      4F5700
 5869              	.LASF288:
 5870 0087 5F5F6664 		.ascii	"__fdlibm_xopen\000"
 5870      6C69626D 
 5870      5F786F70 
 5870      656E00
 5871              	.LASF298:
 5872 0096 50494F5F 		.ascii	"PIO_INPUT\000"
 5872      494E5055 
 5872      5400
 5873              	.LASF381:
ARM GAS  /tmp/ccxS4laR.s 			page 109


 5874 00a0 5F637479 		.ascii	"_ctype_\000"
 5874      70655F00 
 5875              	.LASF83:
 5876 00a8 50494F5F 		.ascii	"PIO_ISR\000"
 5876      49535200 
 5877              	.LASF86:
 5878 00b0 50494F5F 		.ascii	"PIO_MDSR\000"
 5878      4D445352 
 5878      00
 5879              	.LASF158:
 5880 00b9 5F6F6E5F 		.ascii	"_on_exit_args\000"
 5880      65786974 
 5880      5F617267 
 5880      7300
 5881              	.LASF271:
 5882 00c7 73797374 		.ascii	"system\000"
 5882      656D00
 5883              	.LASF119:
 5884 00ce 50494F5F 		.ascii	"PIO_WPMR\000"
 5884      57504D52 
 5884      00
 5885              	.LASF64:
 5886 00d7 50494F5F 		.ascii	"PIO_PER\000"
 5886      50455200 
 5887              	.LASF81:
 5888 00df 50494F5F 		.ascii	"PIO_IDR\000"
 5888      49445200 
 5889              	.LASF196:
 5890 00e7 5F776374 		.ascii	"_wctomb_state\000"
 5890      6F6D625F 
 5890      73746174 
 5890      6500
 5891              	.LASF421:
 5892 00f5 64696769 		.ascii	"digitalWrite\000"
 5892      74616C57 
 5892      72697465 
 5892      00
 5893              	.LASF245:
 5894 0102 35646976 		.ascii	"5div_t\000"
 5894      5F7400
 5895              	.LASF78:
 5896 0109 50494F5F 		.ascii	"PIO_ODSR\000"
 5896      4F445352 
 5896      00
 5897              	.LASF110:
 5898 0112 50494F5F 		.ascii	"PIO_ESR\000"
 5898      45535200 
 5899              	.LASF285:
 5900 011a 646F7562 		.ascii	"double_t\000"
 5900      6C655F74 
 5900      00
 5901              	.LASF328:
 5902 0123 5443325F 		.ascii	"TC2_CHA6\000"
 5902      43484136 
 5902      00
 5903              	.LASF330:
 5904 012c 5443325F 		.ascii	"TC2_CHA7\000"
ARM GAS  /tmp/ccxS4laR.s 			page 110


 5904      43484137 
 5904      00
 5905              	.LASF332:
 5906 0135 5443325F 		.ascii	"TC2_CHA8\000"
 5906      43484138 
 5906      00
 5907              	.LASF413:
 5908 013e 4F555450 		.ascii	"OUTPUT_PWM_HIGH\000"
 5908      55545F50 
 5908      574D5F48 
 5908      49474800 
 5909              	.LASF149:
 5910 014e 5F5F746D 		.ascii	"__tm_sec\000"
 5910      5F736563 
 5910      00
 5911              	.LASF198:
 5912 0157 5F736967 		.ascii	"_signal_buf\000"
 5912      6E616C5F 
 5912      62756600 
 5913              	.LASF426:
 5914 0163 70696F5F 		.ascii	"pio_pull_up\000"
 5914      70756C6C 
 5914      5F757000 
 5915              	.LASF1:
 5916 016f 756E7369 		.ascii	"unsigned int\000"
 5916      676E6564 
 5916      20696E74 
 5916      00
 5917              	.LASF434:
 5918 017c 5F5A3132 		.ascii	"_Z12ConfigurePinRK14PinDescription\000"
 5918      436F6E66 
 5918      69677572 
 5918      6550696E 
 5918      524B3134 
 5919              	.LASF242:
 5920 019f 5F5F676E 		.ascii	"__gnu_cxx\000"
 5920      755F6378 
 5920      7800
 5921              	.LASF401:
 5922 01a9 50776D53 		.ascii	"PwmSlowClock\000"
 5922      6C6F7743 
 5922      6C6F636B 
 5922      00
 5923              	.LASF172:
 5924 01b6 5F6C6266 		.ascii	"_lbfsize\000"
 5924      73697A65 
 5924      00
 5925              	.LASF170:
 5926 01bf 5F666C61 		.ascii	"_flags\000"
 5926      677300
 5927              	.LASF59:
 5928 01c6 696E746D 		.ascii	"intmax_t\000"
 5928      61785F74 
 5928      00
 5929              	.LASF448:
 5930 01cf 53657269 		.ascii	"SerialCDC\000"
 5930      616C4344 
ARM GAS  /tmp/ccxS4laR.s 			page 111


 5930      4300
 5931              	.LASF58:
 5932 01d9 75696E74 		.ascii	"uint_fast64_t\000"
 5932      5F666173 
 5932      7436345F 
 5932      7400
 5933              	.LASF53:
 5934 01e7 696E745F 		.ascii	"int_fast16_t\000"
 5934      66617374 
 5934      31365F74 
 5934      00
 5935              	.LASF16:
 5936 01f4 5F5F696E 		.ascii	"__int32_t\000"
 5936      7433325F 
 5936      7400
 5937              	.LASF209:
 5938 01fe 5F657272 		.ascii	"_errno\000"
 5938      6E6F00
 5939              	.LASF264:
 5940 0205 77636861 		.ascii	"wchar_t\000"
 5940      725F7400 
 5941              	.LASF371:
 5942 020d 756C5069 		.ascii	"ulPin\000"
 5942      6E00
 5943              	.LASF392:
 5944 0213 4150494E 		.ascii	"APIN_UART1_RXD\000"
 5944      5F554152 
 5944      54315F52 
 5944      584400
 5945              	.LASF69:
 5946 0222 50494F5F 		.ascii	"PIO_ODR\000"
 5946      4F445200 
 5947              	.LASF305:
 5948 022a 50574D5F 		.ascii	"PWM_CH0\000"
 5948      43483000 
 5949              	.LASF306:
 5950 0232 50574D5F 		.ascii	"PWM_CH1\000"
 5950      43483100 
 5951              	.LASF80:
 5952 023a 50494F5F 		.ascii	"PIO_IER\000"
 5952      49455200 
 5953              	.LASF308:
 5954 0242 50574D5F 		.ascii	"PWM_CH3\000"
 5954      43483300 
 5955              	.LASF309:
 5956 024a 50574D5F 		.ascii	"PWM_CH4\000"
 5956      43483400 
 5957              	.LASF310:
 5958 0252 50574D5F 		.ascii	"PWM_CH5\000"
 5958      43483500 
 5959              	.LASF311:
 5960 025a 50574D5F 		.ascii	"PWM_CH6\000"
 5960      43483600 
 5961              	.LASF312:
 5962 0262 50574D5F 		.ascii	"PWM_CH7\000"
 5962      43483700 
 5963              	.LASF445:
ARM GAS  /tmp/ccxS4laR.s 			page 112


 5964 026a 5F5A4E39 		.ascii	"_ZN9__gnu_cxx3divExx\000"
 5964      5F5F676E 
 5964      755F6378 
 5964      78336469 
 5964      76457878 
 5965              	.LASF27:
 5966 027f 5F5F696E 		.ascii	"__int_least32_t\000"
 5966      745F6C65 
 5966      61737433 
 5966      325F7400 
 5967              	.LASF329:
 5968 028f 5443325F 		.ascii	"TC2_CHB6\000"
 5968      43484236 
 5968      00
 5969              	.LASF184:
 5970 0298 5F6D6273 		.ascii	"_mbstate\000"
 5970      74617465 
 5970      00
 5971              	.LASF333:
 5972 02a1 5443325F 		.ascii	"TC2_CHB8\000"
 5972      43484238 
 5972      00
 5973              	.LASF277:
 5974 02aa 73747274 		.ascii	"strtoull\000"
 5974      6F756C6C 
 5974      00
 5975              	.LASF174:
 5976 02b3 5F726561 		.ascii	"_read\000"
 5976      6400
 5977              	.LASF26:
 5978 02b9 5F5F7569 		.ascii	"__uint_least16_t\000"
 5978      6E745F6C 
 5978      65617374 
 5978      31365F74 
 5978      00
 5979              	.LASF193:
 5980 02ca 5F723438 		.ascii	"_r48\000"
 5980      00
 5981              	.LASF142:
 5982 02cf 5F5F554C 		.ascii	"__ULong\000"
 5982      6F6E6700 
 5983              	.LASF241:
 5984 02d7 6D6F6466 		.ascii	"modf\000"
 5984      00
 5985              	.LASF7:
 5986 02dc 6D61785F 		.ascii	"max_align_t\000"
 5986      616C6967 
 5986      6E5F7400 
 5987              	.LASF438:
 5988 02e8 2E2E2F63 		.ascii	"../cores/arduino/wiring_digital.cpp\000"
 5988      6F726573 
 5988      2F617264 
 5988      75696E6F 
 5988      2F776972 
 5989              	.LASF203:
 5990 030c 5F776372 		.ascii	"_wcrtomb_state\000"
 5990      746F6D62 
ARM GAS  /tmp/ccxS4laR.s 			page 113


 5990      5F737461 
 5990      746500
 5991              	.LASF211:
 5992 031b 5F737464 		.ascii	"_stdout\000"
 5992      6F757400 
 5993              	.LASF31:
 5994 0323 5F5F696E 		.ascii	"__intptr_t\000"
 5994      74707472 
 5994      5F7400
 5995              	.LASF134:
 5996 032e 5F66706F 		.ascii	"_fpos_t\000"
 5996      735F7400 
 5997              	.LASF165:
 5998 0336 5F666E73 		.ascii	"_fns\000"
 5998      00
 5999              	.LASF416:
 6000 033b 4F555450 		.ascii	"OUTPUT_PWM_OPEN_DRAIN\000"
 6000      55545F50 
 6000      574D5F4F 
 6000      50454E5F 
 6000      44524149 
 6001              	.LASF173:
 6002 0351 5F636F6F 		.ascii	"_cookie\000"
 6002      6B696500 
 6003              	.LASF240:
 6004 0359 5F676C6F 		.ascii	"_global_impure_ptr\000"
 6004      62616C5F 
 6004      696D7075 
 6004      72655F70 
 6004      747200
 6005              	.LASF280:
 6006 036c 675F696E 		.ascii	"g_interrupt_enabled\000"
 6006      74657272 
 6006      7570745F 
 6006      656E6162 
 6006      6C656400 
 6007              	.LASF131:
 6008 0380 50494F5F 		.ascii	"PIO_PCRHR\000"
 6008      50435248 
 6008      5200
 6009              	.LASF147:
 6010 038a 5F426967 		.ascii	"_Bigint\000"
 6010      696E7400 
 6011              	.LASF414:
 6012 0392 4F555450 		.ascii	"OUTPUT_LOW_OPEN_DRAIN\000"
 6012      55545F4C 
 6012      4F575F4F 
 6012      50454E5F 
 6012      44524149 
 6013              	.LASF372:
 6014 03a8 756C5065 		.ascii	"ulPeripheralId\000"
 6014      72697068 
 6014      6572616C 
 6014      496400
 6015              	.LASF155:
 6016 03b7 5F5F746D 		.ascii	"__tm_wday\000"
 6016      5F776461 
ARM GAS  /tmp/ccxS4laR.s 			page 114


 6016      7900
 6017              	.LASF57:
 6018 03c1 696E745F 		.ascii	"int_fast64_t\000"
 6018      66617374 
 6018      36345F74 
 6018      00
 6019              	.LASF279:
 6020 03ce 73747274 		.ascii	"strtold\000"
 6020      6F6C6400 
 6021              	.LASF219:
 6022 03d6 5F726573 		.ascii	"_result\000"
 6022      756C7400 
 6023              	.LASF276:
 6024 03de 73747274 		.ascii	"strtoll\000"
 6024      6F6C6C00 
 6025              	.LASF335:
 6026 03e6 416E616C 		.ascii	"AnalogChannelNumber\000"
 6026      6F674368 
 6026      616E6E65 
 6026      6C4E756D 
 6026      62657200 
 6027              	.LASF38:
 6028 03fa 75696E74 		.ascii	"uint32_t\000"
 6028      33325F74 
 6028      00
 6029              	.LASF443:
 6030 0403 5F5A5374 		.ascii	"_ZSt3absx\000"
 6030      33616273 
 6030      7800
 6031              	.LASF151:
 6032 040d 5F5F746D 		.ascii	"__tm_hour\000"
 6032      5F686F75 
 6032      7200
 6033              	.LASF265:
 6034 0417 6D62746F 		.ascii	"mbtowc\000"
 6034      776300
 6035              	.LASF210:
 6036 041e 5F737464 		.ascii	"_stdin\000"
 6036      696E00
 6037              	.LASF427:
 6038 0425 70696F5F 		.ascii	"pio_get\000"
 6038      67657400 
 6039              	.LASF340:
 6040 042d 41444333 		.ascii	"ADC3\000"
 6040      00
 6041              	.LASF399:
 6042 0432 4D617850 		.ascii	"MaxPinNumber\000"
 6042      696E4E75 
 6042      6D626572 
 6042      00
 6043              	.LASF138:
 6044 043f 5F5F636F 		.ascii	"__count\000"
 6044      756E7400 
 6045              	.LASF376:
 6046 0447 756C4144 		.ascii	"ulADCChannelNumber\000"
 6046      43436861 
 6046      6E6E656C 
ARM GAS  /tmp/ccxS4laR.s 			page 115


 6046      4E756D62 
 6046      657200
 6047              	.LASF342:
 6048 045a 41444335 		.ascii	"ADC5\000"
 6048      00
 6049              	.LASF343:
 6050 045f 41444336 		.ascii	"ADC6\000"
 6050      00
 6051              	.LASF3:
 6052 0464 5F5F6D61 		.ascii	"__max_align_ld\000"
 6052      785F616C 
 6052      69676E5F 
 6052      6C6400
 6053              	.LASF344:
 6054 0473 41444337 		.ascii	"ADC7\000"
 6054      00
 6055              	.LASF111:
 6056 0478 50494F5F 		.ascii	"PIO_LSR\000"
 6056      4C535200 
 6057              	.LASF150:
 6058 0480 5F5F746D 		.ascii	"__tm_min\000"
 6058      5F6D696E 
 6058      00
 6059              	.LASF239:
 6060 0489 5F696D70 		.ascii	"_impure_ptr\000"
 6060      7572655F 
 6060      70747200 
 6061              	.LASF2:
 6062 0495 5F5F6D61 		.ascii	"__max_align_ll\000"
 6062      785F616C 
 6062      69676E5F 
 6062      6C6C00
 6063              	.LASF206:
 6064 04a4 5F6E6578 		.ascii	"_nextf\000"
 6064      746600
 6065              	.LASF440:
 6066 04ab 31316D61 		.ascii	"11max_align_t\000"
 6066      785F616C 
 6066      69676E5F 
 6066      7400
 6067              	.LASF202:
 6068 04b9 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 6068      72746F77 
 6068      63735F73 
 6068      74617465 
 6068      00
 6069              	.LASF122:
 6070 04ca 50494F5F 		.ascii	"PIO_SCHMITT\000"
 6070      5343484D 
 6070      49545400 
 6071              	.LASF45:
 6072 04d6 696E745F 		.ascii	"int_least16_t\000"
 6072      6C656173 
 6072      7431365F 
 6072      7400
 6073              	.LASF60:
 6074 04e4 75696E74 		.ascii	"uintmax_t\000"
ARM GAS  /tmp/ccxS4laR.s 			page 116


 6074      6D61785F 
 6074      7400
 6075              	.LASF22:
 6076 04ee 6C6F6E67 		.ascii	"long long unsigned int\000"
 6076      206C6F6E 
 6076      6720756E 
 6076      7369676E 
 6076      65642069 
 6077              	.LASF189:
 6078 0505 5F617363 		.ascii	"_asctime_buf\000"
 6078      74696D65 
 6078      5F627566 
 6078      00
 6079              	.LASF390:
 6080 0512 4150494E 		.ascii	"APIN_UART0_TXD\000"
 6080      5F554152 
 6080      54305F54 
 6080      584400
 6081              	.LASF169:
 6082 0521 5F5F7346 		.ascii	"__sFILE\000"
 6082      494C4500 
 6083              	.LASF146:
 6084 0529 5F776473 		.ascii	"_wds\000"
 6084      00
 6085              	.LASF444:
 6086 052e 5F5A5374 		.ascii	"_ZSt4modfePe\000"
 6086      346D6F64 
 6086      66655065 
 6086      00
 6087              	.LASF18:
 6088 053b 5F5F7569 		.ascii	"__uint32_t\000"
 6088      6E743332 
 6088      5F7400
 6089              	.LASF235:
 6090 0546 5F72616E 		.ascii	"_rand48\000"
 6090      64343800 
 6091              	.LASF273:
 6092 054e 7763746F 		.ascii	"wctomb\000"
 6092      6D6200
 6093              	.LASF420:
 6094 0555 70696E44 		.ascii	"pinDesc\000"
 6094      65736300 
 6095              	.LASF32:
 6096 055d 5F5F7569 		.ascii	"__uintptr_t\000"
 6096      6E747074 
 6096      725F7400 
 6097              	.LASF231:
 6098 0569 5F5F4649 		.ascii	"__FILE\000"
 6098      4C4500
 6099              	.LASF289:
 6100 0570 5F5F6664 		.ascii	"__fdlibm_posix\000"
 6100      6C69626D 
 6100      5F706F73 
 6100      697800
 6101              	.LASF76:
 6102 057f 50494F5F 		.ascii	"PIO_SODR\000"
 6102      534F4452 
ARM GAS  /tmp/ccxS4laR.s 			page 117


 6102      00
 6103              	.LASF181:
 6104 0588 5F6F6666 		.ascii	"_offset\000"
 6104      73657400 
 6105              	.LASF178:
 6106 0590 5F756275 		.ascii	"_ubuf\000"
 6106      6600
 6107              	.LASF124:
 6108 0596 50494F5F 		.ascii	"PIO_DRIVER\000"
 6108      44524956 
 6108      455200
 6109              	.LASF50:
 6110 05a1 75696E74 		.ascii	"uint_least64_t\000"
 6110      5F6C6561 
 6110      73743634 
 6110      5F7400
 6111              	.LASF274:
 6112 05b0 6C6C6469 		.ascii	"lldiv\000"
 6112      7600
 6113              	.LASF301:
 6114 05b6 70696F5F 		.ascii	"pio_type_t\000"
 6114      74797065 
 6114      5F7400
 6115              	.LASF214:
 6116 05c1 5F656D65 		.ascii	"_emergency\000"
 6116      7267656E 
 6116      637900
 6117              	.LASF145:
 6118 05cc 5F736967 		.ascii	"_sign\000"
 6118      6E00
 6119              	.LASF283:
 6120 05d2 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 6120      6972715F 
 6120      70726576 
 6120      5F696E74 
 6120      65727275 
 6121              	.LASF118:
 6122 05ef 50494F5F 		.ascii	"PIO_LOCKSR\000"
 6122      4C4F434B 
 6122      535200
 6123              	.LASF6:
 6124 05fa 73697A65 		.ascii	"size_t\000"
 6124      5F7400
 6125              	.LASF268:
 6126 0601 73747274 		.ascii	"strtod\000"
 6126      6F6400
 6127              	.LASF43:
 6128 0608 696E745F 		.ascii	"int_least8_t\000"
 6128      6C656173 
 6128      74385F74 
 6128      00
 6129              	.LASF39:
 6130 0615 696E7436 		.ascii	"int64_t\000"
 6130      345F7400 
 6131              	.LASF130:
 6132 061d 50494F5F 		.ascii	"PIO_PCISR\000"
 6132      50434953 
ARM GAS  /tmp/ccxS4laR.s 			page 118


 6132      5200
 6133              	.LASF49:
 6134 0627 696E745F 		.ascii	"int_least64_t\000"
 6134      6C656173 
 6134      7436345F 
 6134      7400
 6135              	.LASF299:
 6136 0635 50494F5F 		.ascii	"PIO_OUTPUT_0\000"
 6136      4F555450 
 6136      55545F30 
 6136      00
 6137              	.LASF300:
 6138 0642 50494F5F 		.ascii	"PIO_OUTPUT_1\000"
 6138      4F555450 
 6138      55545F31 
 6138      00
 6139              	.LASF253:
 6140 064f 7375626F 		.ascii	"suboptarg\000"
 6140      70746172 
 6140      6700
 6141              	.LASF156:
 6142 0659 5F5F746D 		.ascii	"__tm_yday\000"
 6142      5F796461 
 6142      7900
 6143              	.LASF269:
 6144 0663 73747274 		.ascii	"strtol\000"
 6144      6F6C00
 6145              	.LASF213:
 6146 066a 5F696E63 		.ascii	"_inc\000"
 6146      00
 6147              	.LASF164:
 6148 066f 5F696E64 		.ascii	"_ind\000"
 6148      00
 6149              	.LASF417:
 6150 0674 53657269 		.ascii	"SerialUSB\000"
 6150      616C5553 
 6150      4200
 6151              	.LASF28:
 6152 067e 5F5F7569 		.ascii	"__uint_least32_t\000"
 6152      6E745F6C 
 6152      65617374 
 6152      33325F74 
 6152      00
 6153              	.LASF259:
 6154 068f 62736561 		.ascii	"bsearch\000"
 6154      72636800 
 6155              	.LASF403:
 6156 0697 53657269 		.ascii	"Serial1\000"
 6156      616C3100 
 6157              	.LASF336:
 6158 069f 4E4F5F41 		.ascii	"NO_ADC\000"
 6158      444300
 6159              	.LASF143:
 6160 06a6 5F6E6578 		.ascii	"_next\000"
 6160      7400
 6161              	.LASF379:
 6162 06ac 675F4150 		.ascii	"g_APinDescription\000"
ARM GAS  /tmp/ccxS4laR.s 			page 119


 6162      696E4465 
 6162      73637269 
 6162      7074696F 
 6162      6E00
 6163              	.LASF21:
 6164 06be 5F5F7569 		.ascii	"__uint64_t\000"
 6164      6E743634 
 6164      5F7400
 6165              	.LASF92:
 6166 06c9 50494F5F 		.ascii	"PIO_ABCDSR\000"
 6166      41424344 
 6166      535200
 6167              	.LASF347:
 6168 06d4 41444331 		.ascii	"ADC10\000"
 6168      3000
 6169              	.LASF348:
 6170 06da 41444331 		.ascii	"ADC11\000"
 6170      3100
 6171              	.LASF349:
 6172 06e0 41444331 		.ascii	"ADC12\000"
 6172      3200
 6173              	.LASF350:
 6174 06e6 41444331 		.ascii	"ADC13\000"
 6174      3300
 6175              	.LASF351:
 6176 06ec 41444331 		.ascii	"ADC14\000"
 6176      3400
 6177              	.LASF352:
 6178 06f2 41444331 		.ascii	"ADC15\000"
 6178      3500
 6179              	.LASF353:
 6180 06f8 41444331 		.ascii	"ADC16\000"
 6180      3600
 6181              	.LASF354:
 6182 06fe 41444331 		.ascii	"ADC17\000"
 6182      3700
 6183              	.LASF355:
 6184 0704 41444331 		.ascii	"ADC18\000"
 6184      3800
 6185              	.LASF356:
 6186 070a 41444331 		.ascii	"ADC19\000"
 6186      3900
 6187              	.LASF139:
 6188 0710 5F5F7661 		.ascii	"__value\000"
 6188      6C756500 
 6189              	.LASF14:
 6190 0718 5F5F7569 		.ascii	"__uint16_t\000"
 6190      6E743136 
 6190      5F7400
 6191              	.LASF221:
 6192 0723 5F703573 		.ascii	"_p5s\000"
 6192      00
 6193              	.LASF74:
 6194 0728 50494F5F 		.ascii	"PIO_IFSR\000"
 6194      49465352 
 6194      00
 6195              	.LASF88:
ARM GAS  /tmp/ccxS4laR.s 			page 120


 6196 0731 50494F5F 		.ascii	"PIO_PUDR\000"
 6196      50554452 
 6196      00
 6197              	.LASF244:
 6198 073a 31305F6D 		.ascii	"10_mbstate_t\000"
 6198      62737461 
 6198      74655F74 
 6198      00
 6199              	.LASF284:
 6200 0747 666C6F61 		.ascii	"float_t\000"
 6200      745F7400 
 6201              	.LASF394:
 6202 074f 4150494E 		.ascii	"APIN_HSMCI_CLOCK\000"
 6202      5F48534D 
 6202      43495F43 
 6202      4C4F434B 
 6202      00
 6203              	.LASF204:
 6204 0760 5F776373 		.ascii	"_wcsrtombs_state\000"
 6204      72746F6D 
 6204      62735F73 
 6204      74617465 
 6204      00
 6205              	.LASF194:
 6206 0771 5F6D626C 		.ascii	"_mblen_state\000"
 6206      656E5F73 
 6206      74617465 
 6206      00
 6207              	.LASF73:
 6208 077e 50494F5F 		.ascii	"PIO_IFDR\000"
 6208      49464452 
 6208      00
 6209              	.LASF127:
 6210 0787 50494F5F 		.ascii	"PIO_PCIER\000"
 6210      50434945 
 6210      5200
 6211              	.LASF230:
 6212 0791 63686172 		.ascii	"char\000"
 6212      00
 6213              	.LASF70:
 6214 0796 50494F5F 		.ascii	"PIO_OSR\000"
 6214      4F535200 
 6215              	.LASF152:
 6216 079e 5F5F746D 		.ascii	"__tm_mday\000"
 6216      5F6D6461 
 6216      7900
 6217              	.LASF79:
 6218 07a8 50494F5F 		.ascii	"PIO_PDSR\000"
 6218      50445352 
 6218      00
 6219              	.LASF227:
 6220 07b1 5F736967 		.ascii	"_sig_func\000"
 6220      5F66756E 
 6220      6300
 6221              	.LASF201:
 6222 07bb 5F6D6272 		.ascii	"_mbrtowc_state\000"
 6222      746F7763 
ARM GAS  /tmp/ccxS4laR.s 			page 121


 6222      5F737461 
 6222      746500
 6223              	.LASF430:
 6224 07ca 70696F5F 		.ascii	"pio_configure\000"
 6224      636F6E66 
 6224      69677572 
 6224      6500
 6225              	.LASF322:
 6226 07d8 5443315F 		.ascii	"TC1_CHA3\000"
 6226      43484133 
 6226      00
 6227              	.LASF404:
 6228 07e1 50696E4D 		.ascii	"PinMode\000"
 6228      6F646500 
 6229              	.LASF326:
 6230 07e9 5443315F 		.ascii	"TC1_CHA5\000"
 6230      43484135 
 6230      00
 6231              	.LASF294:
 6232 07f2 50494F5F 		.ascii	"PIO_PERIPH_A\000"
 6232      50455249 
 6232      50485F41 
 6232      00
 6233              	.LASF295:
 6234 07ff 50494F5F 		.ascii	"PIO_PERIPH_B\000"
 6234      50455249 
 6234      50485F42 
 6234      00
 6235              	.LASF296:
 6236 080c 50494F5F 		.ascii	"PIO_PERIPH_C\000"
 6236      50455249 
 6236      50485F43 
 6236      00
 6237              	.LASF402:
 6238 0819 53657269 		.ascii	"Serial\000"
 6238      616C00
 6239              	.LASF180:
 6240 0820 5F626C6B 		.ascii	"_blksize\000"
 6240      73697A65 
 6240      00
 6241              	.LASF120:
 6242 0829 50494F5F 		.ascii	"PIO_WPSR\000"
 6242      57505352 
 6242      00
 6243              	.LASF357:
 6244 0832 41444332 		.ascii	"ADC20\000"
 6244      3000
 6245              	.LASF358:
 6246 0838 41444332 		.ascii	"ADC21\000"
 6246      3100
 6247              	.LASF359:
 6248 083e 41444332 		.ascii	"ADC22\000"
 6248      3200
 6249              	.LASF220:
 6250 0844 5F726573 		.ascii	"_result_k\000"
 6250      756C745F 
 6250      6B00
ARM GAS  /tmp/ccxS4laR.s 			page 122


 6251              	.LASF361:
 6252 084e 41444332 		.ascii	"ADC24\000"
 6252      3400
 6253              	.LASF362:
 6254 0854 41444332 		.ascii	"ADC25\000"
 6254      3500
 6255              	.LASF363:
 6256 085a 41444332 		.ascii	"ADC26\000"
 6256      3600
 6257              	.LASF364:
 6258 0860 41444332 		.ascii	"ADC27\000"
 6258      3700
 6259              	.LASF365:
 6260 0866 41444332 		.ascii	"ADC28\000"
 6260      3800
 6261              	.LASF366:
 6262 086c 41444332 		.ascii	"ADC29\000"
 6262      3900
 6263              	.LASF114:
 6264 0872 50494F5F 		.ascii	"PIO_FELLSR\000"
 6264      46454C4C 
 6264      535200
 6265              	.LASF433:
 6266 087d 5F5A3941 		.ascii	"_Z9AnalogOuthft\000"
 6266      6E616C6F 
 6266      674F7574 
 6266      68667400 
 6267              	.LASF34:
 6268 088d 75696E74 		.ascii	"uint8_t\000"
 6268      385F7400 
 6269              	.LASF389:
 6270 0895 4150494E 		.ascii	"APIN_UART0_RXD\000"
 6270      5F554152 
 6270      54305F52 
 6270      584400
 6271              	.LASF246:
 6272 08a4 71756F74 		.ascii	"quot\000"
 6272      00
 6273              	.LASF89:
 6274 08a9 50494F5F 		.ascii	"PIO_PUER\000"
 6274      50554552 
 6274      00
 6275              	.LASF177:
 6276 08b2 5F636C6F 		.ascii	"_close\000"
 6276      736500
 6277              	.LASF112:
 6278 08b9 50494F5F 		.ascii	"PIO_ELSR\000"
 6278      454C5352 
 6278      00
 6279              	.LASF360:
 6280 08c2 41444332 		.ascii	"ADC23\000"
 6280      3300
 6281              	.LASF217:
 6282 08c8 5F5F7364 		.ascii	"__sdidinit\000"
 6282      6964696E 
 6282      697400
 6283              	.LASF297:
ARM GAS  /tmp/ccxS4laR.s 			page 123


 6284 08d3 50494F5F 		.ascii	"PIO_PERIPH_D\000"
 6284      50455249 
 6284      50485F44 
 6284      00
 6285              	.LASF72:
 6286 08e0 50494F5F 		.ascii	"PIO_IFER\000"
 6286      49464552 
 6286      00
 6287              	.LASF275:
 6288 08e9 61746F6C 		.ascii	"atoll\000"
 6288      6C00
 6289              	.LASF385:
 6290 08ef 5F74696D 		.ascii	"_timezone\000"
 6290      657A6F6E 
 6290      6500
 6291              	.LASF436:
 6292 08f9 436F6E66 		.ascii	"ConfigurePin\000"
 6292      69677572 
 6292      6550696E 
 6292      00
 6293              	.LASF337:
 6294 0906 41444330 		.ascii	"ADC0\000"
 6294      00
 6295              	.LASF338:
 6296 090b 41444331 		.ascii	"ADC1\000"
 6296      00
 6297              	.LASF339:
 6298 0910 41444332 		.ascii	"ADC2\000"
 6298      00
 6299              	.LASF405:
 6300 0915 50494E5F 		.ascii	"PIN_MODE_NOT_CONFIGURED\000"
 6300      4D4F4445 
 6300      5F4E4F54 
 6300      5F434F4E 
 6300      46494755 
 6301              	.LASF341:
 6302 092d 41444334 		.ascii	"ADC4\000"
 6302      00
 6303              	.LASF323:
 6304 0932 5443315F 		.ascii	"TC1_CHB3\000"
 6304      43484233 
 6304      00
 6305              	.LASF325:
 6306 093b 5443315F 		.ascii	"TC1_CHB4\000"
 6306      43484234 
 6306      00
 6307              	.LASF327:
 6308 0944 5443315F 		.ascii	"TC1_CHB5\000"
 6308      43484235 
 6308      00
 6309              	.LASF345:
 6310 094d 41444338 		.ascii	"ADC8\000"
 6310      00
 6311              	.LASF346:
 6312 0952 41444339 		.ascii	"ADC9\000"
 6312      00
 6313              	.LASF68:
ARM GAS  /tmp/ccxS4laR.s 			page 124


 6314 0957 50494F5F 		.ascii	"PIO_OER\000"
 6314      4F455200 
 6315              	.LASF4:
 6316 095f 6C6F6E67 		.ascii	"long long int\000"
 6316      206C6F6E 
 6316      6720696E 
 6316      7400
 6317              	.LASF418:
 6318 096d 77726974 		.ascii	"write\000"
 6318      6500
 6319              	.LASF167:
 6320 0973 5F626173 		.ascii	"_base\000"
 6320      6500
 6321              	.LASF367:
 6322 0979 41444333 		.ascii	"ADC30\000"
 6322      3000
 6323              	.LASF368:
 6324 097f 41444333 		.ascii	"ADC31\000"
 6324      3100
 6325              	.LASF423:
 6326 0985 70696E4D 		.ascii	"pinModeDuet\000"
 6326      6F646544 
 6326      75657400 
 6327              	.LASF237:
 6328 0991 5F6D756C 		.ascii	"_mult\000"
 6328      7400
 6329              	.LASF238:
 6330 0997 5F616464 		.ascii	"_add\000"
 6330      00
 6331              	.LASF287:
 6332 099c 5F5F6664 		.ascii	"__fdlibm_svid\000"
 6332      6C69626D 
 6332      5F737669 
 6332      6400
 6333              	.LASF408:
 6334 09aa 494E5055 		.ascii	"INPUT_PULLDOWN\000"
 6334      545F5055 
 6334      4C4C444F 
 6334      574E00
 6335              	.LASF77:
 6336 09b9 50494F5F 		.ascii	"PIO_CODR\000"
 6336      434F4452 
 6336      00
 6337              	.LASF94:
 6338 09c2 50494F5F 		.ascii	"PIO_IFSCDR\000"
 6338      49465343 
 6338      445200
 6339              	.LASF44:
 6340 09cd 75696E74 		.ascii	"uint_least8_t\000"
 6340      5F6C6561 
 6340      7374385F 
 6340      7400
 6341              	.LASF281:
 6342 09db 626F6F6C 		.ascii	"bool\000"
 6342      00
 6343              	.LASF243:
 6344 09e0 5F5F6378 		.ascii	"__cxx11\000"
ARM GAS  /tmp/ccxS4laR.s 			page 125


 6344      78313100 
 6345              	.LASF12:
 6346 09e8 5F5F696E 		.ascii	"__int16_t\000"
 6346      7431365F 
 6346      7400
 6347              	.LASF447:
 6348 09f2 5F5A4E35 		.ascii	"_ZN5Print5writeEPKcj\000"
 6348      5072696E 
 6348      74357772 
 6348      69746545 
 6348      504B636A 
 6349              	.LASF302:
 6350 0a07 4E6F5069 		.ascii	"NoPin\000"
 6350      6E00
 6351              	.LASF61:
 6352 0a0d 73697A65 		.ascii	"sizetype\000"
 6352      74797065 
 6352      00
 6353              	.LASF51:
 6354 0a16 696E745F 		.ascii	"int_fast8_t\000"
 6354      66617374 
 6354      385F7400 
 6355              	.LASF261:
 6356 0a22 6C646976 		.ascii	"ldiv\000"
 6356      00
 6357              	.LASF218:
 6358 0a27 5F5F636C 		.ascii	"__cleanup\000"
 6358      65616E75 
 6358      7000
 6359              	.LASF369:
 6360 0a31 50696E44 		.ascii	"PinDescription\000"
 6360      65736372 
 6360      69707469 
 6360      6F6E00
 6361              	.LASF290:
 6362 0a40 5F5F6664 		.ascii	"__fdlib_version\000"
 6362      6C69625F 
 6362      76657273 
 6362      696F6E00 
 6363              	.LASF116:
 6364 0a50 50494F5F 		.ascii	"PIO_FRLHSR\000"
 6364      46524C48 
 6364      535200
 6365              	.LASF140:
 6366 0a5b 5F6D6273 		.ascii	"_mbstate_t\000"
 6366      74617465 
 6366      5F7400
 6367              	.LASF159:
 6368 0a66 5F666E61 		.ascii	"_fnargs\000"
 6368      72677300 
 6369              	.LASF25:
 6370 0a6e 5F5F696E 		.ascii	"__int_least16_t\000"
 6370      745F6C65 
 6370      61737431 
 6370      365F7400 
 6371              	.LASF267:
 6372 0a7e 7372616E 		.ascii	"srand\000"
ARM GAS  /tmp/ccxS4laR.s 			page 126


 6372      6400
 6373              	.LASF132:
 6374 0a84 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 6374      4B5F5245 
 6374      43555253 
 6374      4956455F 
 6374      5400
 6375              	.LASF71:
 6376 0a96 52657365 		.ascii	"Reserved2\000"
 6376      72766564 
 6376      3200
 6377              	.LASF75:
 6378 0aa0 52657365 		.ascii	"Reserved3\000"
 6378      72766564 
 6378      3300
 6379              	.LASF141:
 6380 0aaa 5F666C6F 		.ascii	"_flock_t\000"
 6380      636B5F74 
 6380      00
 6381              	.LASF91:
 6382 0ab3 52657365 		.ascii	"Reserved5\000"
 6382      72766564 
 6382      3500
 6383              	.LASF93:
 6384 0abd 52657365 		.ascii	"Reserved6\000"
 6384      72766564 
 6384      3600
 6385              	.LASF157:
 6386 0ac7 5F5F746D 		.ascii	"__tm_isdst\000"
 6386      5F697364 
 6386      737400
 6387              	.LASF56:
 6388 0ad2 75696E74 		.ascii	"uint_fast32_t\000"
 6388      5F666173 
 6388      7433325F 
 6388      7400
 6389              	.LASF109:
 6390 0ae0 52657365 		.ascii	"Reserved9\000"
 6390      72766564 
 6390      3900
 6391              	.LASF331:
 6392 0aea 5443325F 		.ascii	"TC2_CHB7\000"
 6392      43484237 
 6392      00
 6393              	.LASF33:
 6394 0af3 696E7438 		.ascii	"int8_t\000"
 6394      5F7400
 6395              	.LASF19:
 6396 0afa 6C6F6E67 		.ascii	"long unsigned int\000"
 6396      20756E73 
 6396      69676E65 
 6396      6420696E 
 6396      7400
 6397              	.LASF205:
 6398 0b0c 5F685F65 		.ascii	"_h_errno\000"
 6398      72726E6F 
 6398      00
ARM GAS  /tmp/ccxS4laR.s 			page 127


 6399              	.LASF407:
 6400 0b15 494E5055 		.ascii	"INPUT_PULLUP\000"
 6400      545F5055 
 6400      4C4C5550 
 6400      00
 6401              	.LASF388:
 6402 0b22 4150494E 		.ascii	"APINS_UART0\000"
 6402      535F5541 
 6402      52543000 
 6403              	.LASF391:
 6404 0b2e 4150494E 		.ascii	"APINS_UART1\000"
 6404      535F5541 
 6404      52543100 
 6405              	.LASF373:
 6406 0b3a 756C5069 		.ascii	"ulPinType\000"
 6406      6E547970 
 6406      6500
 6407              	.LASF104:
 6408 0b44 50494F5F 		.ascii	"PIO_OWSR\000"
 6408      4F575352 
 6408      00
 6409              	.LASF429:
 6410 0b4d 70696F5F 		.ascii	"pio_pull_down\000"
 6410      70756C6C 
 6410      5F646F77 
 6410      6E00
 6411              	.LASF8:
 6412 0b5b 5F5F696E 		.ascii	"__int8_t\000"
 6412      74385F74 
 6412      00
 6413              	.LASF380:
 6414 0b64 5F5F6374 		.ascii	"__ctype_ptr__\000"
 6414      7970655F 
 6414      7074725F 
 6414      5F00
 6415              	.LASF314:
 6416 0b72 5F455443 		.ascii	"_ETCChannel\000"
 6416      4368616E 
 6416      6E656C00 
 6417              	.LASF103:
 6418 0b7e 50494F5F 		.ascii	"PIO_OWDR\000"
 6418      4F574452 
 6418      00
 6419              	.LASF334:
 6420 0b87 45544343 		.ascii	"ETCChannel\000"
 6420      68616E6E 
 6420      656C00
 6421              	.LASF153:
 6422 0b92 5F5F746D 		.ascii	"__tm_mon\000"
 6422      5F6D6F6E 
 6422      00
 6423              	.LASF20:
 6424 0b9b 5F5F696E 		.ascii	"__int64_t\000"
 6424      7436345F 
 6424      7400
 6425              	.LASF107:
 6426 0ba5 50494F5F 		.ascii	"PIO_AIMDR\000"
ARM GAS  /tmp/ccxS4laR.s 			page 128


 6426      41494D44 
 6426      5200
 6427              	.LASF5:
 6428 0baf 6C6F6E67 		.ascii	"long double\000"
 6428      20646F75 
 6428      626C6500 
 6429              	.LASF41:
 6430 0bbb 696E7470 		.ascii	"intptr_t\000"
 6430      74725F74 
 6430      00
 6431              	.LASF36:
 6432 0bc4 75696E74 		.ascii	"uint16_t\000"
 6432      31365F74 
 6432      00
 6433              	.LASF175:
 6434 0bcd 5F777269 		.ascii	"_write\000"
 6434      746500
 6435              	.LASF82:
 6436 0bd4 50494F5F 		.ascii	"PIO_IMR\000"
 6436      494D5200 
 6437              	.LASF126:
 6438 0bdc 50494F5F 		.ascii	"PIO_PCMR\000"
 6438      50434D52 
 6438      00
 6439              	.LASF191:
 6440 0be5 5F67616D 		.ascii	"_gamma_signgam\000"
 6440      6D615F73 
 6440      69676E67 
 6440      616D00
 6441              	.LASF154:
 6442 0bf4 5F5F746D 		.ascii	"__tm_year\000"
 6442      5F796561 
 6442      7200
 6443              	.LASF192:
 6444 0bfe 5F72616E 		.ascii	"_rand_next\000"
 6444      645F6E65 
 6444      787400
 6445              	.LASF95:
 6446 0c09 50494F5F 		.ascii	"PIO_IFSCER\000"
 6446      49465343 
 6446      455200
 6447              	.LASF293:
 6448 0c14 50494F5F 		.ascii	"PIO_NOT_A_PIN\000"
 6448      4E4F545F 
 6448      415F5049 
 6448      4E00
 6449              	.LASF29:
 6450 0c22 5F5F696E 		.ascii	"__int_least64_t\000"
 6450      745F6C65 
 6450      61737436 
 6450      345F7400 
 6451              	.LASF163:
 6452 0c32 5F617465 		.ascii	"_atexit\000"
 6452      78697400 
 6453              	.LASF136:
 6454 0c3a 5F5F7763 		.ascii	"__wch\000"
 6454      6800
ARM GAS  /tmp/ccxS4laR.s 			page 129


 6455              	.LASF24:
 6456 0c40 5F5F7569 		.ascii	"__uint_least8_t\000"
 6456      6E745F6C 
 6456      65617374 
 6456      385F7400 
 6457              	.LASF55:
 6458 0c50 696E745F 		.ascii	"int_fast32_t\000"
 6458      66617374 
 6458      33325F74 
 6458      00
 6459              	.LASF377:
 6460 0c5d 756C5057 		.ascii	"ulPWMChannel\000"
 6460      4D436861 
 6460      6E6E656C 
 6460      00
 6461              	.LASF67:
 6462 0c6a 52657365 		.ascii	"Reserved1\000"
 6462      72766564 
 6462      3100
 6463              	.LASF254:
 6464 0c74 61746578 		.ascii	"atexit\000"
 6464      697400
 6465              	.LASF87:
 6466 0c7b 52657365 		.ascii	"Reserved4\000"
 6466      72766564 
 6466      3400
 6467              	.LASF13:
 6468 0c85 73686F72 		.ascii	"short int\000"
 6468      7420696E 
 6468      7400
 6469              	.LASF102:
 6470 0c8f 50494F5F 		.ascii	"PIO_OWER\000"
 6470      4F574552 
 6470      00
 6471              	.LASF105:
 6472 0c98 52657365 		.ascii	"Reserved8\000"
 6472      72766564 
 6472      3800
 6473              	.LASF222:
 6474 0ca2 5F667265 		.ascii	"_freelist\000"
 6474      656C6973 
 6474      7400
 6475              	.LASF263:
 6476 0cac 6D627374 		.ascii	"mbstowcs\000"
 6476      6F776373 
 6476      00
 6477              	.LASF106:
 6478 0cb5 50494F5F 		.ascii	"PIO_AIMER\000"
 6478      41494D45 
 6478      5200
 6479              	.LASF62:
 6480 0cbf 49544D5F 		.ascii	"ITM_RxBuffer\000"
 6480      52784275 
 6480      66666572 
 6480      00
 6481              	.LASF384:
 6482 0ccc 55415254 		.ascii	"UARTClass\000"
ARM GAS  /tmp/ccxS4laR.s 			page 130


 6482      436C6173 
 6482      7300
 6483              	.LASF370:
 6484 0cd6 70506F72 		.ascii	"pPort\000"
 6484      7400
 6485              	.LASF35:
 6486 0cdc 696E7431 		.ascii	"int16_t\000"
 6486      365F7400 
 6487              	.LASF229:
 6488 0ce4 5F5F7366 		.ascii	"__sf\000"
 6488      00
 6489              	.LASF96:
 6490 0ce9 50494F5F 		.ascii	"PIO_IFSCSR\000"
 6490      49465343 
 6490      535200
 6491              	.LASF115:
 6492 0cf4 50494F5F 		.ascii	"PIO_REHLSR\000"
 6492      5245484C 
 6492      535200
 6493              	.LASF216:
 6494 0cff 5F637572 		.ascii	"_current_locale\000"
 6494      72656E74 
 6494      5F6C6F63 
 6494      616C6500 
 6495              	.LASF449:
 6496 0d0f 64696769 		.ascii	"digitalRead\000"
 6496      74616C52 
 6496      65616400 
 6497              	.LASF182:
 6498 0d1b 5F646174 		.ascii	"_data\000"
 6498      6100
 6499              	.LASF137:
 6500 0d21 5F5F7763 		.ascii	"__wchb\000"
 6500      686200
 6501              	.LASF386:
 6502 0d28 5F646179 		.ascii	"_daylight\000"
 6502      6C696768 
 6502      7400
 6503              	.LASF442:
 6504 0d32 3350696F 		.ascii	"3Pio\000"
 6504      00
 6505              	.LASF248:
 6506 0d37 366C6469 		.ascii	"6ldiv_t\000"
 6506      765F7400 
 6507              	.LASF431:
 6508 0d3f 70696F5F 		.ascii	"pio_set_debounce_filter\000"
 6508      7365745F 
 6508      6465626F 
 6508      756E6365 
 6508      5F66696C 
 6509              	.LASF432:
 6510 0d57 706D635F 		.ascii	"pmc_disable_periph_clk\000"
 6510      64697361 
 6510      626C655F 
 6510      70657269 
 6510      70685F63 
 6511              	.LASF425:
ARM GAS  /tmp/ccxS4laR.s 			page 131


 6512 0d6e 6465626F 		.ascii	"debounceCutoff\000"
 6512      756E6365 
 6512      4375746F 
 6512      666600
 6513              	.LASF286:
 6514 0d7d 5F5F6664 		.ascii	"__fdlibm_ieee\000"
 6514      6C69626D 
 6514      5F696565 
 6514      6500
 6515              	.LASF315:
 6516 0d8b 4E4F545F 		.ascii	"NOT_ON_TIMER\000"
 6516      4F4E5F54 
 6516      494D4552 
 6516      00
 6517              	.LASF190:
 6518 0d98 5F6C6F63 		.ascii	"_localtime_buf\000"
 6518      616C7469 
 6518      6D655F62 
 6518      756600
 6519              	.LASF208:
 6520 0da7 5F756E75 		.ascii	"_unused\000"
 6520      73656400 
 6521              	.LASF10:
 6522 0daf 5F5F7569 		.ascii	"__uint8_t\000"
 6522      6E74385F 
 6522      7400
 6523              	.LASF225:
 6524 0db9 5F6E6577 		.ascii	"_new\000"
 6524      00
 6525              	.LASF223:
 6526 0dbe 5F637674 		.ascii	"_cvtlen\000"
 6526      6C656E00 
 6527              	.LASF144:
 6528 0dc6 5F6D6178 		.ascii	"_maxwds\000"
 6528      77647300 
 6529              	.LASF387:
 6530 0dce 5F747A6E 		.ascii	"_tzname\000"
 6530      616D6500 
 6531              	.LASF215:
 6532 0dd6 5F637572 		.ascii	"_current_category\000"
 6532      72656E74 
 6532      5F636174 
 6532      65676F72 
 6532      7900
 6533              	.LASF437:
 6534 0de8 474E5520 		.ascii	"GNU C++14 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -m"
 6534      432B2B31 
 6534      3420362E 
 6534      332E3120 
 6534      32303137 
 6535 0e1b 6670753D 		.ascii	"fpu=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu++14 -"
 6535      66707635 
 6535      2D643136 
 6535      202D6D66 
 6535      6C6F6174 
 6536 0e4e 6666756E 		.ascii	"ffunction-sections -fdata-sections -fno-threadsafe-"
 6536      6374696F 
ARM GAS  /tmp/ccxS4laR.s 			page 132


 6536      6E2D7365 
 6536      6374696F 
 6536      6E73202D 
 6537 0e81 73746174 		.ascii	"statics -fno-rtti -fno-exceptions -fsingle-precisio"
 6537      69637320 
 6537      2D666E6F 
 6537      2D727474 
 6537      69202D66 
 6538 0eb4 6E2D636F 		.ascii	"n-constant\000"
 6538      6E737461 
 6538      6E7400
 6539              	.LASF48:
 6540 0ebf 75696E74 		.ascii	"uint_least32_t\000"
 6540      5F6C6561 
 6540      73743332 
 6540      5F7400
 6541              	.LASF324:
 6542 0ece 5443315F 		.ascii	"TC1_CHA4\000"
 6542      43484134 
 6542      00
 6543              	.LASF424:
 6544 0ed7 756C4D6F 		.ascii	"ulMode\000"
 6544      646500
 6545              	.LASF23:
 6546 0ede 5F5F696E 		.ascii	"__int_least8_t\000"
 6546      745F6C65 
 6546      61737438 
 6546      5F7400
 6547              	.LASF42:
 6548 0eed 75696E74 		.ascii	"uintptr_t\000"
 6548      7074725F 
 6548      7400
 6549              	.LASF148:
 6550 0ef7 5F5F746D 		.ascii	"__tm\000"
 6550      00
 6551              	.LASF183:
 6552 0efc 5F6C6F63 		.ascii	"_lock\000"
 6552      6B00
 6553              	.LASF316:
 6554 0f02 5443305F 		.ascii	"TC0_CHA0\000"
 6554      43484130 
 6554      00
 6555              	.LASF318:
 6556 0f0b 5443305F 		.ascii	"TC0_CHA1\000"
 6556      43484131 
 6556      00
 6557              	.LASF320:
 6558 0f14 5443305F 		.ascii	"TC0_CHA2\000"
 6558      43484132 
 6558      00
 6559              	.LASF400:
 6560 0f1d 50776D46 		.ascii	"PwmFastClock\000"
 6560      61737443 
 6560      6C6F636B 
 6560      00
 6561              	.LASF270:
 6562 0f2a 73747274 		.ascii	"strtoul\000"
ARM GAS  /tmp/ccxS4laR.s 			page 133


 6562      6F756C00 
 6563              	.LASF415:
 6564 0f32 4F555450 		.ascii	"OUTPUT_HIGH_OPEN_DRAIN\000"
 6564      55545F48 
 6564      4947485F 
 6564      4F50454E 
 6564      5F445241 
 6565              	.LASF249:
 6566 0f49 6C646976 		.ascii	"ldiv_t\000"
 6566      5F7400
 6567              	.LASF382:
 6568 0f50 53455249 		.ascii	"SERIAL_BUFFER_SIZE\000"
 6568      414C5F42 
 6568      55464645 
 6568      525F5349 
 6568      5A4500
 6569              	.LASF282:
 6570 0f63 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 6570      6972715F 
 6570      63726974 
 6570      6963616C 
 6570      5F736563 
 6571              	.LASF233:
 6572 0f84 5F6E696F 		.ascii	"_niobs\000"
 6572      627300
 6573              	.LASF135:
 6574 0f8b 77696E74 		.ascii	"wint_t\000"
 6574      5F7400
 6575              	.LASF0:
 6576 0f92 666C6F61 		.ascii	"float\000"
 6576      7400
 6577              	.LASF37:
 6578 0f98 696E7433 		.ascii	"int32_t\000"
 6578      325F7400 
 6579              	.LASF47:
 6580 0fa0 696E745F 		.ascii	"int_least32_t\000"
 6580      6C656173 
 6580      7433325F 
 6580      7400
 6581              	.LASF66:
 6582 0fae 50494F5F 		.ascii	"PIO_PSR\000"
 6582      50535200 
 6583              	.LASF160:
 6584 0fb6 5F64736F 		.ascii	"_dso_handle\000"
 6584      5F68616E 
 6584      646C6500 
 6585              	.LASF411:
 6586 0fc2 53504543 		.ascii	"SPECIAL\000"
 6586      49414C00 
 6587              	.LASF383:
 6588 0fca 5072696E 		.ascii	"Print\000"
 6588      7400
 6589              	.LASF397:
 6590 0fd0 4150494E 		.ascii	"APIN_GMAC_PHY_RESET\000"
 6590      5F474D41 
 6590      435F5048 
 6590      595F5245 
ARM GAS  /tmp/ccxS4laR.s 			page 134


 6590      53455400 
 6591              	.LASF224:
 6592 0fe4 5F637674 		.ascii	"_cvtbuf\000"
 6592      62756600 
 6593              	.LASF11:
 6594 0fec 756E7369 		.ascii	"unsigned char\000"
 6594      676E6564 
 6594      20636861 
 6594      7200
 6595              	.LASF113:
 6596 0ffa 52657365 		.ascii	"Reserved10\000"
 6596      72766564 
 6596      313000
 6597              	.LASF117:
 6598 1005 52657365 		.ascii	"Reserved11\000"
 6598      72766564 
 6598      313100
 6599              	.LASF121:
 6600 1010 52657365 		.ascii	"Reserved12\000"
 6600      72766564 
 6600      313200
 6601              	.LASF123:
 6602 101b 52657365 		.ascii	"Reserved13\000"
 6602      72766564 
 6602      313300
 6603              	.LASF125:
 6604 1026 52657365 		.ascii	"Reserved14\000"
 6604      72766564 
 6604      313400
 6605              	.LASF100:
 6606 1031 50494F5F 		.ascii	"PIO_PPDSR\000"
 6606      50504453 
 6606      5200
 6607              	.LASF317:
 6608 103b 5443305F 		.ascii	"TC0_CHB0\000"
 6608      43484230 
 6608      00
 6609              	.LASF319:
 6610 1044 5443305F 		.ascii	"TC0_CHB1\000"
 6610      43484231 
 6610      00
 6611              	.LASF321:
 6612 104d 5443305F 		.ascii	"TC0_CHB2\000"
 6612      43484232 
 6612      00
 6613              	.LASF441:
 6614 1056 6465636C 		.ascii	"decltype(nullptr)\000"
 6614      74797065 
 6614      286E756C 
 6614      6C707472 
 6614      2900
 6615              	.LASF278:
 6616 1068 73747274 		.ascii	"strtof\000"
 6616      6F6600
 6617              	.LASF52:
 6618 106f 75696E74 		.ascii	"uint_fast8_t\000"
 6618      5F666173 
ARM GAS  /tmp/ccxS4laR.s 			page 135


 6618      74385F74 
 6618      00
 6619              	.LASF200:
 6620 107c 5F6D6272 		.ascii	"_mbrlen_state\000"
 6620      6C656E5F 
 6620      73746174 
 6620      6500
 6621              	.LASF98:
 6622 108a 50494F5F 		.ascii	"PIO_PPDDR\000"
 6622      50504444 
 6622      5200
 6623              	.LASF272:
 6624 1094 77637374 		.ascii	"wcstombs\000"
 6624      6F6D6273 
 6624      00
 6625              	.LASF291:
 6626 109d 5F5F6664 		.ascii	"__fdlibm_version\000"
 6626      6C69626D 
 6626      5F766572 
 6626      73696F6E 
 6626      00
 6627              	.LASF90:
 6628 10ae 50494F5F 		.ascii	"PIO_PUSR\000"
 6628      50555352 
 6628      00
 6629              	.LASF262:
 6630 10b7 6D626C65 		.ascii	"mblen\000"
 6630      6E00
 6631              	.LASF375:
 6632 10bd 756C5069 		.ascii	"ulPinAttribute\000"
 6632      6E417474 
 6632      72696275 
 6632      746500
 6633              	.LASF398:
 6634 10cc 4150494E 		.ascii	"APINS_GMAC_PHY\000"
 6634      535F474D 
 6634      41435F50 
 6634      485900
 6635              	.LASF252:
 6636 10db 5F5F636F 		.ascii	"__compar_fn_t\000"
 6636      6D706172 
 6636      5F666E5F 
 6636      7400
 6637              	.LASF166:
 6638 10e9 5F5F7362 		.ascii	"__sbuf\000"
 6638      756600
 6639              	.LASF247:
 6640 10f0 6469765F 		.ascii	"div_t\000"
 6640      7400
 6641              	.LASF197:
 6642 10f6 5F6C3634 		.ascii	"_l64a_buf\000"
 6642      615F6275 
 6642      6600
 6643              	.LASF396:
 6644 1100 4150494E 		.ascii	"APIN_GMAC_PHY_INTERRUPT\000"
 6644      5F474D41 
 6644      435F5048 
ARM GAS  /tmp/ccxS4laR.s 			page 136


 6644      595F494E 
 6644      54455252 
 6645              	.LASF232:
 6646 1118 5F676C75 		.ascii	"_glue\000"
 6646      6500
 6647              	.LASF40:
 6648 111e 75696E74 		.ascii	"uint64_t\000"
 6648      36345F74 
 6648      00
 6649              	.LASF439:
 6650 1127 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70\000"
 6650      652F746F 
 6650      72626A6F 
 6650      726E2F65 
 6650      636C6970 
 6651              	.LASF303:
 6652 1156 5F455057 		.ascii	"_EPWMChannel\000"
 6652      4D436861 
 6652      6E6E656C 
 6652      00
 6653              	.LASF228:
 6654 1163 5F5F7367 		.ascii	"__sglue\000"
 6654      6C756500 
 6655              	.LASF199:
 6656 116b 5F676574 		.ascii	"_getdate_err\000"
 6656      64617465 
 6656      5F657272 
 6656      00
 6657              	.LASF188:
 6658 1178 5F737472 		.ascii	"_strtok_last\000"
 6658      746F6B5F 
 6658      6C617374 
 6658      00
 6659              	.LASF195:
 6660 1185 5F6D6274 		.ascii	"_mbtowc_state\000"
 6660      6F77635F 
 6660      73746174 
 6660      6500
 6661              	.LASF393:
 6662 1193 4150494E 		.ascii	"APIN_UART1_TXD\000"
 6662      5F554152 
 6662      54315F54 
 6662      584400
 6663              	.LASF250:
 6664 11a2 376C6C64 		.ascii	"7lldiv_t\000"
 6664      69765F74 
 6664      00
 6665              	.LASF435:
 6666 11ab 416E616C 		.ascii	"AnalogOut\000"
 6666      6F674F75 
 6666      7400
 6667              	.LASF406:
 6668 11b5 494E5055 		.ascii	"INPUT\000"
 6668      5400
 6669              	.LASF395:
 6670 11bb 4150494E 		.ascii	"APIN_HSMCI_DATA\000"
 6670      5F48534D 
ARM GAS  /tmp/ccxS4laR.s 			page 137


 6670      43495F44 
 6670      41544100 
 6671              	.LASF428:
 6672 11cb 706D635F 		.ascii	"pmc_enable_periph_clk\000"
 6672      656E6162 
 6672      6C655F70 
 6672      65726970 
 6672      685F636C 
 6673              	.LASF9:
 6674 11e1 7369676E 		.ascii	"signed char\000"
 6674      65642063 
 6674      68617200 
 6675              	.LASF128:
 6676 11ed 50494F5F 		.ascii	"PIO_PCIDR\000"
 6676      50434944 
 6676      5200
 6677              	.LASF65:
 6678 11f7 50494F5F 		.ascii	"PIO_PDR\000"
 6678      50445200 
 6679              	.LASF186:
 6680 11ff 5F726565 		.ascii	"_reent\000"
 6680      6E7400
 6681              	.LASF410:
 6682 1206 4F555450 		.ascii	"OUTPUT_HIGH\000"
 6682      55545F48 
 6682      49474800 
 6683              	.LASF15:
 6684 1212 73686F72 		.ascii	"short unsigned int\000"
 6684      7420756E 
 6684      7369676E 
 6684      65642069 
 6684      6E7400
 6685              	.LASF251:
 6686 1225 6C6C6469 		.ascii	"lldiv_t\000"
 6686      765F7400 
 6687              	.LASF85:
 6688 122d 50494F5F 		.ascii	"PIO_MDDR\000"
 6688      4D444452 
 6688      00
 6689              	.LASF255:
 6690 1236 61746F66 		.ascii	"atof\000"
 6690      00
 6691              	.LASF99:
 6692 123b 50494F5F 		.ascii	"PIO_PPDER\000"
 6692      50504445 
 6692      5200
 6693              	.LASF257:
 6694 1245 61746F69 		.ascii	"atoi\000"
 6694      00
 6695              	.LASF258:
 6696 124a 61746F6C 		.ascii	"atol\000"
 6696      00
 6697              	.LASF129:
 6698 124f 50494F5F 		.ascii	"PIO_PCIMR\000"
 6698      5043494D 
 6698      5200
 6699              	.LASF161:
ARM GAS  /tmp/ccxS4laR.s 			page 138


 6700 1259 5F666E74 		.ascii	"_fntypes\000"
 6700      79706573 
 6700      00
 6701              	.LASF171:
 6702 1262 5F66696C 		.ascii	"_file\000"
 6702      6500
 6703              	.LASF168:
 6704 1268 5F73697A 		.ascii	"_size\000"
 6704      6500
 6705              	.LASF256:
 6706 126e 646F7562 		.ascii	"double\000"
 6706      6C6500
 6707              	.LASF307:
 6708 1275 50574D5F 		.ascii	"PWM_CH2\000"
 6708      43483200 
 6709              	.LASF378:
 6710 127d 756C5443 		.ascii	"ulTCChannel\000"
 6710      4368616E 
 6710      6E656C00 
 6711              	.LASF133:
 6712 1289 5F6F6666 		.ascii	"_off_t\000"
 6712      5F7400
 6713              	.LASF46:
 6714 1290 75696E74 		.ascii	"uint_least16_t\000"
 6714      5F6C6561 
 6714      73743136 
 6714      5F7400
 6715              	.LASF179:
 6716 129f 5F6E6275 		.ascii	"_nbuf\000"
 6716      6600
 6717              	.LASF187:
 6718 12a5 5F756E75 		.ascii	"_unused_rand\000"
 6718      7365645F 
 6718      72616E64 
 6718      00
 6719              	.LASF422:
 6720 12b2 756C5661 		.ascii	"ulVal\000"
 6720      6C00
 6721              	.LASF304:
 6722 12b8 4E4F545F 		.ascii	"NOT_ON_PWM\000"
 6722      4F4E5F50 
 6722      574D00
 6723              	.LASF419:
 6724 12c3 73657450 		.ascii	"setPullup\000"
 6724      756C6C75 
 6724      7000
 6725              	.LASF185:
 6726 12cd 5F666C61 		.ascii	"_flags2\000"
 6726      67733200 
 6727              	.LASF162:
 6728 12d5 5F69735F 		.ascii	"_is_cxa\000"
 6728      63786100 
 6729              	.LASF108:
 6730 12dd 50494F5F 		.ascii	"PIO_AIMMR\000"
 6730      41494D4D 
 6730      5200
 6731              	.LASF236:
ARM GAS  /tmp/ccxS4laR.s 			page 139


 6732 12e7 5F736565 		.ascii	"_seed\000"
 6732      6400
 6733              	.LASF226:
 6734 12ed 5F617465 		.ascii	"_atexit0\000"
 6734      78697430 
 6734      00
 6735              	.LASF176:
 6736 12f6 5F736565 		.ascii	"_seek\000"
 6736      6B00
 6737              	.LASF292:
 6738 12fc 5F70696F 		.ascii	"_pio_type\000"
 6738      5F747970 
 6738      6500
 6739              	.LASF97:
 6740 1306 50494F5F 		.ascii	"PIO_SCDR\000"
 6740      53434452 
 6740      00
 6741              	.LASF84:
 6742 130f 50494F5F 		.ascii	"PIO_MDER\000"
 6742      4D444552 
 6742      00
 6743              	.LASF212:
 6744 1318 5F737464 		.ascii	"_stderr\000"
 6744      65727200 
 6745              	.LASF207:
 6746 1320 5F6E6D61 		.ascii	"_nmalloc\000"
 6746      6C6C6F63 
 6746      00
 6747              	.LASF234:
 6748 1329 5F696F62 		.ascii	"_iobs\000"
 6748      7300
 6749              	.LASF266:
 6750 132f 71736F72 		.ascii	"qsort\000"
 6750      7400
 6751              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
