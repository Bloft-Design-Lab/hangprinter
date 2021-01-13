ARM GAS  /tmp/ccbYIR7z.s 			page 1


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
  12              		.file	"WInterrupts.cpp"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text._ZL13GetHighestBitm,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv5-d16
  23              		.type	_ZL13GetHighestBitm, %function
  24              	_ZL13GetHighestBitm:
  25              	.LFB529:
  26              		.file 1 "../cores/arduino/WInterrupts.cpp"
   1:../cores/arduino/WInterrupts.cpp **** /*
   2:../cores/arduino/WInterrupts.cpp ****   Copyright (c) 2011-2012 Arduino.  All right reserved.
   3:../cores/arduino/WInterrupts.cpp **** 
   4:../cores/arduino/WInterrupts.cpp ****   This library is free software; you can redistribute it and/or
   5:../cores/arduino/WInterrupts.cpp ****   modify it under the terms of the GNU Lesser General Public
   6:../cores/arduino/WInterrupts.cpp ****   License as published by the Free Software Foundation; either
   7:../cores/arduino/WInterrupts.cpp ****   version 2.1 of the License, or (at your option) any later version.
   8:../cores/arduino/WInterrupts.cpp **** 
   9:../cores/arduino/WInterrupts.cpp ****   This library is distributed in the hope that it will be useful,
  10:../cores/arduino/WInterrupts.cpp ****   but WITHOUT ANY WARRANTY; without even the implied warranty of
  11:../cores/arduino/WInterrupts.cpp ****   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
  12:../cores/arduino/WInterrupts.cpp ****   See the GNU Lesser General Public License for more details.
  13:../cores/arduino/WInterrupts.cpp **** 
  14:../cores/arduino/WInterrupts.cpp ****   You should have received a copy of the GNU Lesser General Public
  15:../cores/arduino/WInterrupts.cpp ****   License along with this library; if not, write to the Free Software
  16:../cores/arduino/WInterrupts.cpp ****   Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
  17:../cores/arduino/WInterrupts.cpp **** */
  18:../cores/arduino/WInterrupts.cpp **** 
  19:../cores/arduino/WInterrupts.cpp **** #include "WInterrupts.h"
  20:../cores/arduino/WInterrupts.cpp **** 
  21:../cores/arduino/WInterrupts.cpp **** const uint32_t pioInterruptPriority = 5;
  22:../cores/arduino/WInterrupts.cpp **** 
  23:../cores/arduino/WInterrupts.cpp **** typedef void (*interruptCB)(CallbackParameter);
  24:../cores/arduino/WInterrupts.cpp **** 
  25:../cores/arduino/WInterrupts.cpp **** struct InterruptCallback
  26:../cores/arduino/WInterrupts.cpp **** {
  27:../cores/arduino/WInterrupts.cpp **** 	interruptCB func;
  28:../cores/arduino/WInterrupts.cpp **** 	CallbackParameter param;
  29:../cores/arduino/WInterrupts.cpp **** 
  30:../cores/arduino/WInterrupts.cpp **** 	InterruptCallback() : func(nullptr) { }
  31:../cores/arduino/WInterrupts.cpp **** };
ARM GAS  /tmp/ccbYIR7z.s 			page 2


  32:../cores/arduino/WInterrupts.cpp **** 
  33:../cores/arduino/WInterrupts.cpp **** static InterruptCallback callbacksPioA[32];
  34:../cores/arduino/WInterrupts.cpp **** static InterruptCallback callbacksPioB[32];
  35:../cores/arduino/WInterrupts.cpp **** static InterruptCallback callbacksPioC[32];
  36:../cores/arduino/WInterrupts.cpp **** #ifdef ID_PIOD
  37:../cores/arduino/WInterrupts.cpp **** static InterruptCallback callbacksPioD[32];
  38:../cores/arduino/WInterrupts.cpp **** #endif
  39:../cores/arduino/WInterrupts.cpp **** #ifdef ID_PIOE
  40:../cores/arduino/WInterrupts.cpp **** static InterruptCallback callbacksPioE[32];
  41:../cores/arduino/WInterrupts.cpp **** #endif
  42:../cores/arduino/WInterrupts.cpp **** 
  43:../cores/arduino/WInterrupts.cpp **** /* Configure PIO interrupt sources */
  44:../cores/arduino/WInterrupts.cpp **** static void __initialize()
  45:../cores/arduino/WInterrupts.cpp **** {
  46:../cores/arduino/WInterrupts.cpp **** 	pmc_enable_periph_clk(ID_PIOA);
  47:../cores/arduino/WInterrupts.cpp **** 	NVIC_DisableIRQ(PIOA_IRQn);
  48:../cores/arduino/WInterrupts.cpp **** 	NVIC_ClearPendingIRQ(PIOA_IRQn);
  49:../cores/arduino/WInterrupts.cpp **** 	NVIC_EnableIRQ(PIOA_IRQn);
  50:../cores/arduino/WInterrupts.cpp **** 
  51:../cores/arduino/WInterrupts.cpp **** 	pmc_enable_periph_clk(ID_PIOB);
  52:../cores/arduino/WInterrupts.cpp **** 	NVIC_DisableIRQ(PIOB_IRQn);
  53:../cores/arduino/WInterrupts.cpp **** 	NVIC_ClearPendingIRQ(PIOB_IRQn);
  54:../cores/arduino/WInterrupts.cpp **** 	NVIC_EnableIRQ(PIOB_IRQn);
  55:../cores/arduino/WInterrupts.cpp **** 
  56:../cores/arduino/WInterrupts.cpp **** 	pmc_enable_periph_clk(ID_PIOC);
  57:../cores/arduino/WInterrupts.cpp **** 	NVIC_DisableIRQ(PIOC_IRQn);
  58:../cores/arduino/WInterrupts.cpp **** 	NVIC_ClearPendingIRQ(PIOC_IRQn);
  59:../cores/arduino/WInterrupts.cpp **** 	NVIC_EnableIRQ(PIOC_IRQn);
  60:../cores/arduino/WInterrupts.cpp **** 
  61:../cores/arduino/WInterrupts.cpp **** #ifdef ID_PIOD
  62:../cores/arduino/WInterrupts.cpp **** 	pmc_enable_periph_clk(ID_PIOD);
  63:../cores/arduino/WInterrupts.cpp **** 	NVIC_DisableIRQ(PIOD_IRQn);
  64:../cores/arduino/WInterrupts.cpp **** 	NVIC_ClearPendingIRQ(PIOD_IRQn);
  65:../cores/arduino/WInterrupts.cpp **** 	NVIC_EnableIRQ(PIOD_IRQn);
  66:../cores/arduino/WInterrupts.cpp **** #endif
  67:../cores/arduino/WInterrupts.cpp **** 
  68:../cores/arduino/WInterrupts.cpp **** #ifdef ID_PIOE
  69:../cores/arduino/WInterrupts.cpp **** 	pmc_enable_periph_clk(ID_PIOE);
  70:../cores/arduino/WInterrupts.cpp **** 	NVIC_DisableIRQ(PIOE_IRQn);
  71:../cores/arduino/WInterrupts.cpp **** 	NVIC_ClearPendingIRQ(PIOE_IRQn);
  72:../cores/arduino/WInterrupts.cpp **** 	NVIC_EnableIRQ(PIOE_IRQn);
  73:../cores/arduino/WInterrupts.cpp **** #endif
  74:../cores/arduino/WInterrupts.cpp **** }
  75:../cores/arduino/WInterrupts.cpp **** 
  76:../cores/arduino/WInterrupts.cpp **** // Get the number of the highest bit that is set in a 32-bit word. Returns 0 if no bit set (same as
  77:../cores/arduino/WInterrupts.cpp **** // This needs to be fast. Hopefully the ARM conditional instructions will be used to advantage here
  78:../cores/arduino/WInterrupts.cpp **** static unsigned int GetHighestBit(uint32_t bits)
  79:../cores/arduino/WInterrupts.cpp **** {
  27              		.loc 1 79 0
  28              		.cfi_startproc
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 0, uses_anonymous_args = 0
  31              		@ link register save eliminated.
  32              	.LVL0:
  80:../cores/arduino/WInterrupts.cpp **** 	unsigned int bitNum = (bits >= 0x00010000) ? 16 : 0;
  33              		.loc 1 80 0
  34 0000 B0F5803F 		cmp	r0, #65536
ARM GAS  /tmp/ccbYIR7z.s 			page 3


  35 0004 34BF     		ite	cc
  36 0006 0023     		movcc	r3, #0
  37 0008 1023     		movcs	r3, #16
  38              	.LVL1:
  81:../cores/arduino/WInterrupts.cpp **** 	if ((bits >> bitNum) >= 0x0100u)
  39              		.loc 1 81 0
  40 000a 20FA03F2 		lsr	r2, r0, r3
  41 000e FF2A     		cmp	r2, #255
  42 0010 02D9     		bls	.L3
  82:../cores/arduino/WInterrupts.cpp **** 	{
  83:../cores/arduino/WInterrupts.cpp **** 		bitNum += 8;
  43              		.loc 1 83 0
  44 0012 0833     		adds	r3, r3, #8
  45              	.LVL2:
  46 0014 20FA03F2 		lsr	r2, r0, r3
  47              	.L3:
  84:../cores/arduino/WInterrupts.cpp **** 	}
  85:../cores/arduino/WInterrupts.cpp **** 	if ((bits >> bitNum) >= 0x0010u)
  48              		.loc 1 85 0
  49 0018 0F2A     		cmp	r2, #15
  50 001a 02D9     		bls	.L4
  86:../cores/arduino/WInterrupts.cpp **** 	{
  87:../cores/arduino/WInterrupts.cpp **** 		bitNum += 4;
  51              		.loc 1 87 0
  52 001c 0433     		adds	r3, r3, #4
  53              	.LVL3:
  54 001e 20FA03F2 		lsr	r2, r0, r3
  55              	.L4:
  88:../cores/arduino/WInterrupts.cpp **** 	}
  89:../cores/arduino/WInterrupts.cpp **** 	if ((bits >> bitNum) >= 0x0004u)
  56              		.loc 1 89 0
  57 0022 032A     		cmp	r2, #3
  58 0024 02D9     		bls	.L5
  90:../cores/arduino/WInterrupts.cpp **** 	{
  91:../cores/arduino/WInterrupts.cpp **** 		bitNum += 2;
  59              		.loc 1 91 0
  60 0026 0233     		adds	r3, r3, #2
  61              	.LVL4:
  62 0028 20FA03F2 		lsr	r2, r0, r3
  63              	.L5:
  92:../cores/arduino/WInterrupts.cpp **** 	}
  93:../cores/arduino/WInterrupts.cpp **** 	if ((bits >> bitNum) >= 0x0002u)
  64              		.loc 1 93 0
  65 002c 012A     		cmp	r2, #1
  94:../cores/arduino/WInterrupts.cpp **** 	{
  95:../cores/arduino/WInterrupts.cpp **** 		bitNum += 1;
  66              		.loc 1 95 0
  67 002e 88BF     		it	hi
  68 0030 0133     		addhi	r3, r3, #1
  69              	.LVL5:
  96:../cores/arduino/WInterrupts.cpp **** 	}
  97:../cores/arduino/WInterrupts.cpp **** 	return bitNum;
  98:../cores/arduino/WInterrupts.cpp **** }
  70              		.loc 1 98 0
  71 0032 1846     		mov	r0, r3
  72              	.LVL6:
  73 0034 7047     		bx	lr
ARM GAS  /tmp/ccbYIR7z.s 			page 4


  74              		.cfi_endproc
  75              	.LFE529:
  76              		.size	_ZL13GetHighestBitm, .-_ZL13GetHighestBitm
  77 0036 00BF     		.section	.text._Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_,"ax",%progbits
  78              		.align	1
  79              		.p2align 2,,3
  80              		.global	_Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_
  81              		.syntax unified
  82              		.thumb
  83              		.thumb_func
  84              		.fpu fpv5-d16
  85              		.type	_Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_, %function
  86              	_Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_:
  87              	.LFB530:
  99:../cores/arduino/WInterrupts.cpp **** 
 100:../cores/arduino/WInterrupts.cpp **** // Attach an interrupt to the specified pin returning true if successful
 101:../cores/arduino/WInterrupts.cpp **** bool attachInterrupt(uint32_t pin, void (*callback)(CallbackParameter), enum InterruptMode mode, Ca
 102:../cores/arduino/WInterrupts.cpp **** {
  88              		.loc 1 102 0
  89              		.cfi_startproc
  90              		@ args = 0, pretend = 0, frame = 0
  91              		@ frame_needed = 0, uses_anonymous_args = 0
  92              	.LVL7:
 103:../cores/arduino/WInterrupts.cpp **** 	if (pin > MaxPinNumber)
  93              		.loc 1 103 0
  94 0000 3228     		cmp	r0, #50
  95 0002 36D8     		bhi	.L26
 102:../cores/arduino/WInterrupts.cpp **** 	if (pin > MaxPinNumber)
  96              		.loc 1 102 0
  97 0004 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
  98              		.cfi_def_cfa_offset 32
  99              		.cfi_offset 3, -32
 100              		.cfi_offset 4, -28
 101              		.cfi_offset 5, -24
 102              		.cfi_offset 6, -20
 103              		.cfi_offset 7, -16
 104              		.cfi_offset 8, -12
 105              		.cfi_offset 9, -8
 106              		.cfi_offset 14, -4
 104:../cores/arduino/WInterrupts.cpp **** 	{
 105:../cores/arduino/WInterrupts.cpp **** 		return false;
 106:../cores/arduino/WInterrupts.cpp **** 	}
 107:../cores/arduino/WInterrupts.cpp **** 
 108:../cores/arduino/WInterrupts.cpp **** 	static bool enabled = false;
 109:../cores/arduino/WInterrupts.cpp **** 	if (!enabled)
 107              		.loc 1 109 0
 108 0008 DFF89891 		ldr	r9, .L38+48
 109 000c 1E46     		mov	r6, r3
 110 000e 9046     		mov	r8, r2
 111 0010 0F46     		mov	r7, r1
 112 0012 99F80030 		ldrb	r3, [r9]	@ zero_extendqisi2
 113              	.LVL8:
 114 0016 0546     		mov	r5, r0
 115 0018 6BB3     		cbz	r3, .L31
 116              	.LVL9:
 117              	.L11:
 110:../cores/arduino/WInterrupts.cpp **** 	{
ARM GAS  /tmp/ccbYIR7z.s 			page 5


 111:../cores/arduino/WInterrupts.cpp **** 		__initialize();
 112:../cores/arduino/WInterrupts.cpp **** 		enabled = true;
 113:../cores/arduino/WInterrupts.cpp **** 	}
 114:../cores/arduino/WInterrupts.cpp **** 
 115:../cores/arduino/WInterrupts.cpp **** 	// Retrieve pin information
 116:../cores/arduino/WInterrupts.cpp **** 	Pio * const pio = g_APinDescription[pin].pPort;
 118              		.loc 1 116 0
 119 001a C5EBC500 		rsb	r0, r5, r5, lsl #3
 120 001e 554B     		ldr	r3, .L38
 121 0020 8000     		lsls	r0, r0, #2
 117:../cores/arduino/WInterrupts.cpp **** 	const uint32_t mask = g_APinDescription[pin].ulPin;
 122              		.loc 1 117 0
 123 0022 1A18     		adds	r2, r3, r0
 116:../cores/arduino/WInterrupts.cpp **** 	const uint32_t mask = g_APinDescription[pin].ulPin;
 124              		.loc 1 116 0
 125 0024 1C58     		ldr	r4, [r3, r0]
 126              	.LVL10:
 127              		.loc 1 117 0
 128 0026 5168     		ldr	r1, [r2, #4]
 129              	.LVL11:
 118:../cores/arduino/WInterrupts.cpp **** 	pio->PIO_IDR = mask;			// ensure the interrupt is disabled before we start changing the tables
 130              		.loc 1 118 0
 131 0028 6164     		str	r1, [r4, #68]
 119:../cores/arduino/WInterrupts.cpp **** 	const uint32_t pos = GetHighestBit(mask);
 132              		.loc 1 119 0
 133 002a 0846     		mov	r0, r1
 134 002c FFF7FEFF 		bl	_ZL13GetHighestBitm
 135              	.LVL12:
 120:../cores/arduino/WInterrupts.cpp **** 
 121:../cores/arduino/WInterrupts.cpp **** 	// Set callback function and parameter
 122:../cores/arduino/WInterrupts.cpp **** 	if (pio == PIOA)
 136              		.loc 1 122 0
 137 0030 514B     		ldr	r3, .L38+4
 138 0032 9C42     		cmp	r4, r3
 139 0034 00F08280 		beq	.L32
 123:../cores/arduino/WInterrupts.cpp **** 	{
 124:../cores/arduino/WInterrupts.cpp **** 		callbacksPioA[pos].func = callback;
 125:../cores/arduino/WInterrupts.cpp **** 		callbacksPioA[pos].param = param;
 126:../cores/arduino/WInterrupts.cpp **** 	}
 127:../cores/arduino/WInterrupts.cpp **** 	else if (pio == PIOB)
 140              		.loc 1 127 0
 141 0038 504B     		ldr	r3, .L38+8
 142 003a 9C42     		cmp	r4, r3
 143 003c 6AD0     		beq	.L33
 128:../cores/arduino/WInterrupts.cpp **** 	{
 129:../cores/arduino/WInterrupts.cpp **** 		callbacksPioB[pos].func = callback;
 130:../cores/arduino/WInterrupts.cpp **** 		callbacksPioB[pos].param = param;
 131:../cores/arduino/WInterrupts.cpp **** 	}
 132:../cores/arduino/WInterrupts.cpp **** 	else if (pio == PIOC)
 144              		.loc 1 132 0
 145 003e 504B     		ldr	r3, .L38+12
 146 0040 9C42     		cmp	r4, r3
 147 0042 00F08280 		beq	.L34
 133:../cores/arduino/WInterrupts.cpp **** 	{
 134:../cores/arduino/WInterrupts.cpp **** 		callbacksPioC[pos].func = callback;
 135:../cores/arduino/WInterrupts.cpp **** 		callbacksPioC[pos].param = param;
 136:../cores/arduino/WInterrupts.cpp **** 	}
ARM GAS  /tmp/ccbYIR7z.s 			page 6


 137:../cores/arduino/WInterrupts.cpp **** #ifdef ID_PIOD
 138:../cores/arduino/WInterrupts.cpp **** 	else if (pio == PIOD)
 148              		.loc 1 138 0
 149 0046 4F4B     		ldr	r3, .L38+16
 150 0048 9C42     		cmp	r4, r3
 151 004a 00F08580 		beq	.L35
 139:../cores/arduino/WInterrupts.cpp **** 	{
 140:../cores/arduino/WInterrupts.cpp **** 		callbacksPioD[pos].func = callback;
 141:../cores/arduino/WInterrupts.cpp **** 		callbacksPioD[pos].param = param;
 142:../cores/arduino/WInterrupts.cpp **** 	}
 143:../cores/arduino/WInterrupts.cpp **** #endif
 144:../cores/arduino/WInterrupts.cpp **** #ifdef ID_PIOE
 145:../cores/arduino/WInterrupts.cpp **** 	else if (pio == PIOE)
 152              		.loc 1 145 0
 153 004e 4E4B     		ldr	r3, .L38+20
 154 0050 9C42     		cmp	r4, r3
 155 0052 00F08880 		beq	.L36
 156              	.LVL13:
 157              	.L13:
 146:../cores/arduino/WInterrupts.cpp **** 	{
 147:../cores/arduino/WInterrupts.cpp **** 		callbacksPioE[pos].func = callback;
 148:../cores/arduino/WInterrupts.cpp **** 		callbacksPioE[pos].param = param;
 149:../cores/arduino/WInterrupts.cpp **** 	}
 150:../cores/arduino/WInterrupts.cpp **** #endif
 151:../cores/arduino/WInterrupts.cpp **** 
 152:../cores/arduino/WInterrupts.cpp **** 	// Configure the interrupt mode
 153:../cores/arduino/WInterrupts.cpp **** 	if (mode == INTERRUPT_MODE_CHANGE)
 158              		.loc 1 153 0
 159 0056 B8F1030F 		cmp	r8, #3
 160 005a 68D0     		beq	.L37
 154:../cores/arduino/WInterrupts.cpp **** 	{
 155:../cores/arduino/WInterrupts.cpp **** 		// Disable additional interrupt mode (detects both rising and falling edges)
 156:../cores/arduino/WInterrupts.cpp **** 		pio->PIO_AIMDR = mask;
 157:../cores/arduino/WInterrupts.cpp **** 	}
 158:../cores/arduino/WInterrupts.cpp **** 	else
 159:../cores/arduino/WInterrupts.cpp **** 	{
 160:../cores/arduino/WInterrupts.cpp **** 		// Enable additional interrupt mode
 161:../cores/arduino/WInterrupts.cpp **** 		pio->PIO_AIMER = mask;
 162:../cores/arduino/WInterrupts.cpp **** 
 163:../cores/arduino/WInterrupts.cpp **** 		// Select mode of operation
 164:../cores/arduino/WInterrupts.cpp **** 		switch(mode)
 161              		.loc 1 164 0
 162 005c 08F1FF33 		add	r3, r8, #-1
 161:../cores/arduino/WInterrupts.cpp **** 
 163              		.loc 1 161 0
 164 0060 C4F8B010 		str	r1, [r4, #176]
 165              		.loc 1 164 0
 166 0064 042B     		cmp	r3, #4
 167 0066 5CD8     		bhi	.L19
 168 0068 DFE803F0 		tbb	[pc, r3]
 169              	.L21:
 170 006c 4F       		.byte	(.L20-.L21)/2
 171 006d 4A       		.byte	(.L22-.L21)/2
 172 006e 5B       		.byte	(.L19-.L21)/2
 173 006f 45       		.byte	(.L23-.L21)/2
 174 0070 3C       		.byte	(.L24-.L21)/2
 175              	.LVL14:
ARM GAS  /tmp/ccbYIR7z.s 			page 7


 176 0071 00       		.p2align 1
 177              	.L26:
 178              		.cfi_def_cfa_offset 0
 179              		.cfi_restore 3
 180              		.cfi_restore 4
 181              		.cfi_restore 5
 182              		.cfi_restore 6
 183              		.cfi_restore 7
 184              		.cfi_restore 8
 185              		.cfi_restore 9
 186              		.cfi_restore 14
 105:../cores/arduino/WInterrupts.cpp **** 	}
 187              		.loc 1 105 0
 188 0072 0020     		movs	r0, #0
 189              	.LVL15:
 190 0074 7047     		bx	lr
 191              	.LVL16:
 192              	.L31:
 193              		.cfi_def_cfa_offset 32
 194              		.cfi_offset 3, -32
 195              		.cfi_offset 4, -28
 196              		.cfi_offset 5, -24
 197              		.cfi_offset 6, -20
 198              		.cfi_offset 7, -16
 199              		.cfi_offset 8, -12
 200              		.cfi_offset 9, -8
 201              		.cfi_offset 14, -4
 202              	.LBB130:
 203              	.LBB131:
  46:../cores/arduino/WInterrupts.cpp **** 	NVIC_DisableIRQ(PIOA_IRQn);
 204              		.loc 1 46 0
 205 0076 0A20     		movs	r0, #10
 206              	.LVL17:
 207              	.LBB132:
 208              	.LBB133:
 209              		.file 2 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
   1:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /**************************************************************************//**
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
ARM GAS  /tmp/ccbYIR7z.s 			page 8


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
ARM GAS  /tmp/ccbYIR7z.s 			page 9


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
ARM GAS  /tmp/ccbYIR7z.s 			page 10


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
ARM GAS  /tmp/ccbYIR7z.s 			page 11


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
ARM GAS  /tmp/ccbYIR7z.s 			page 12


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
ARM GAS  /tmp/ccbYIR7z.s 			page 13


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
ARM GAS  /tmp/ccbYIR7z.s 			page 14


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
ARM GAS  /tmp/ccbYIR7z.s 			page 15


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
ARM GAS  /tmp/ccbYIR7z.s 			page 16


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
ARM GAS  /tmp/ccbYIR7z.s 			page 17


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
ARM GAS  /tmp/ccbYIR7z.s 			page 18


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
ARM GAS  /tmp/ccbYIR7z.s 			page 19


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
ARM GAS  /tmp/ccbYIR7z.s 			page 20


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
ARM GAS  /tmp/ccbYIR7z.s 			page 21


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
ARM GAS  /tmp/ccbYIR7z.s 			page 22


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
ARM GAS  /tmp/ccbYIR7z.s 			page 23


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
ARM GAS  /tmp/ccbYIR7z.s 			page 24


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
ARM GAS  /tmp/ccbYIR7z.s 			page 25


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
ARM GAS  /tmp/ccbYIR7z.s 			page 26


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
ARM GAS  /tmp/ccbYIR7z.s 			page 27


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
ARM GAS  /tmp/ccbYIR7z.s 			page 28


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
ARM GAS  /tmp/ccbYIR7z.s 			page 29


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
ARM GAS  /tmp/ccbYIR7z.s 			page 30


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
ARM GAS  /tmp/ccbYIR7z.s 			page 31


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
ARM GAS  /tmp/ccbYIR7z.s 			page 32


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
ARM GAS  /tmp/ccbYIR7z.s 			page 33


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
ARM GAS  /tmp/ccbYIR7z.s 			page 34


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
ARM GAS  /tmp/ccbYIR7z.s 			page 35


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
ARM GAS  /tmp/ccbYIR7z.s 			page 36


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
ARM GAS  /tmp/ccbYIR7z.s 			page 37


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
 210              		.loc 2 1696 0
 211 0078 444C     		ldr	r4, .L38+24
 212              	.LBE133:
 213              	.LBE132:
  46:../cores/arduino/WInterrupts.cpp **** 	NVIC_DisableIRQ(PIOA_IRQn);
 214              		.loc 1 46 0
 215 007a FFF7FEFF 		bl	pmc_enable_periph_clk
 216              	.LVL18:
 217              	.LBB136:
 218              	.LBB134:
 219              		.loc 2 1696 0
 220 007e 4FF48063 		mov	r3, #1024
 221              	.LBE134:
 222              	.LBE136:
  51:../cores/arduino/WInterrupts.cpp **** 	NVIC_DisableIRQ(PIOB_IRQn);
 223              		.loc 1 51 0
 224 0082 0B20     		movs	r0, #11
 225              	.LBB137:
 226              	.LBB135:
 227              		.loc 2 1696 0
 228 0084 C4F88030 		str	r3, [r4, #128]
 229              	.LVL19:
 230              	.LBE135:
 231              	.LBE137:
 232              	.LBB138:
 233              	.LBB139:
1697:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1698:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1699:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1700:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Get Pending Interrupt
1701:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1702:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function reads the pending register in the NVIC and returns the pending bit
1703:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     for the specified interrupt.
1704:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1705:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]      IRQn  Interrupt number.
ARM GAS  /tmp/ccbYIR7z.s 			page 38


1706:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1707:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \return             0  Interrupt status is not pending.
1708:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \return             1  Interrupt status is pending.
1709:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1710:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
1711:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
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
 234              		.loc 2 1736 0
 235 0088 C4F88031 		str	r3, [r4, #384]
 236              	.LVL20:
 237              	.LBE139:
 238              	.LBE138:
 239              	.LBB140:
 240              	.LBB141:
1684:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
 241              		.loc 2 1684 0
 242 008c 2360     		str	r3, [r4]
 243              	.LVL21:
 244              	.LBE141:
 245              	.LBE140:
  51:../cores/arduino/WInterrupts.cpp **** 	NVIC_DisableIRQ(PIOB_IRQn);
 246              		.loc 1 51 0
 247 008e FFF7FEFF 		bl	pmc_enable_periph_clk
 248              	.LVL22:
 249              	.LBB142:
 250              	.LBB143:
1696:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
 251              		.loc 2 1696 0
 252 0092 4FF40063 		mov	r3, #2048
 253              	.LBE143:
 254              	.LBE142:
  56:../cores/arduino/WInterrupts.cpp **** 	NVIC_DisableIRQ(PIOC_IRQn);
 255              		.loc 1 56 0
ARM GAS  /tmp/ccbYIR7z.s 			page 39


 256 0096 0C20     		movs	r0, #12
 257              	.LBB145:
 258              	.LBB144:
1696:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
 259              		.loc 2 1696 0
 260 0098 C4F88030 		str	r3, [r4, #128]
 261              	.LVL23:
 262              	.LBE144:
 263              	.LBE145:
 264              	.LBB146:
 265              	.LBB147:
 266              		.loc 2 1736 0
 267 009c C4F88031 		str	r3, [r4, #384]
 268              	.LVL24:
 269              	.LBE147:
 270              	.LBE146:
 271              	.LBB148:
 272              	.LBB149:
1684:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
 273              		.loc 2 1684 0
 274 00a0 2360     		str	r3, [r4]
 275              	.LVL25:
 276              	.LBE149:
 277              	.LBE148:
  56:../cores/arduino/WInterrupts.cpp **** 	NVIC_DisableIRQ(PIOC_IRQn);
 278              		.loc 1 56 0
 279 00a2 FFF7FEFF 		bl	pmc_enable_periph_clk
 280              	.LVL26:
 281              	.LBB150:
 282              	.LBB151:
1696:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
 283              		.loc 2 1696 0
 284 00a6 4FF48053 		mov	r3, #4096
 285              	.LBE151:
 286              	.LBE150:
  62:../cores/arduino/WInterrupts.cpp **** 	NVIC_DisableIRQ(PIOD_IRQn);
 287              		.loc 1 62 0
 288 00aa 1020     		movs	r0, #16
 289              	.LBB153:
 290              	.LBB152:
1696:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
 291              		.loc 2 1696 0
 292 00ac C4F88030 		str	r3, [r4, #128]
 293              	.LVL27:
 294              	.LBE152:
 295              	.LBE153:
 296              	.LBB154:
 297              	.LBB155:
 298              		.loc 2 1736 0
 299 00b0 C4F88031 		str	r3, [r4, #384]
 300              	.LVL28:
 301              	.LBE155:
 302              	.LBE154:
 303              	.LBB156:
 304              	.LBB157:
1684:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
 305              		.loc 2 1684 0
ARM GAS  /tmp/ccbYIR7z.s 			page 40


 306 00b4 2360     		str	r3, [r4]
 307              	.LVL29:
 308              	.LBE157:
 309              	.LBE156:
  62:../cores/arduino/WInterrupts.cpp **** 	NVIC_DisableIRQ(PIOD_IRQn);
 310              		.loc 1 62 0
 311 00b6 FFF7FEFF 		bl	pmc_enable_periph_clk
 312              	.LVL30:
 313              	.LBB158:
 314              	.LBB159:
1696:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
 315              		.loc 2 1696 0
 316 00ba 4FF48033 		mov	r3, #65536
 317              	.LBE159:
 318              	.LBE158:
  69:../cores/arduino/WInterrupts.cpp **** 	NVIC_DisableIRQ(PIOE_IRQn);
 319              		.loc 1 69 0
 320 00be 1120     		movs	r0, #17
 321              	.LBB161:
 322              	.LBB160:
1696:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
 323              		.loc 2 1696 0
 324 00c0 C4F88030 		str	r3, [r4, #128]
 325              	.LVL31:
 326              	.LBE160:
 327              	.LBE161:
 328              	.LBB162:
 329              	.LBB163:
 330              		.loc 2 1736 0
 331 00c4 C4F88031 		str	r3, [r4, #384]
 332              	.LVL32:
 333              	.LBE163:
 334              	.LBE162:
 335              	.LBB164:
 336              	.LBB165:
1684:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
 337              		.loc 2 1684 0
 338 00c8 2360     		str	r3, [r4]
 339              	.LVL33:
 340              	.LBE165:
 341              	.LBE164:
  69:../cores/arduino/WInterrupts.cpp **** 	NVIC_DisableIRQ(PIOE_IRQn);
 342              		.loc 1 69 0
 343 00ca FFF7FEFF 		bl	pmc_enable_periph_clk
 344              	.LVL34:
 345              	.LBB166:
 346              	.LBB167:
1696:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
 347              		.loc 2 1696 0
 348 00ce 4FF40033 		mov	r3, #131072
 349              	.LBE167:
 350              	.LBE166:
 351              	.LBE131:
 352              	.LBE130:
 112:../cores/arduino/WInterrupts.cpp **** 	}
 353              		.loc 1 112 0
 354 00d2 0122     		movs	r2, #1
ARM GAS  /tmp/ccbYIR7z.s 			page 41


 355              	.LBB175:
 356              	.LBB174:
 357              	.LBB169:
 358              	.LBB168:
1696:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
 359              		.loc 2 1696 0
 360 00d4 C4F88030 		str	r3, [r4, #128]
 361              	.LVL35:
 362              	.LBE168:
 363              	.LBE169:
 364              	.LBB170:
 365              	.LBB171:
 366              		.loc 2 1736 0
 367 00d8 C4F88031 		str	r3, [r4, #384]
 368              	.LVL36:
 369              	.LBE171:
 370              	.LBE170:
 371              	.LBB172:
 372              	.LBB173:
1684:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
 373              		.loc 2 1684 0
 374 00dc 2360     		str	r3, [r4]
 375              	.LVL37:
 376              	.LBE173:
 377              	.LBE172:
 378              	.LBE174:
 379              	.LBE175:
 112:../cores/arduino/WInterrupts.cpp **** 	}
 380              		.loc 1 112 0
 381 00de 89F80020 		strb	r2, [r9]
 382 00e2 9AE7     		b	.L11
 383              	.LVL38:
 384              	.L24:
 165:../cores/arduino/WInterrupts.cpp **** 		{
 166:../cores/arduino/WInterrupts.cpp **** 		case INTERRUPT_MODE_LOW:
 167:../cores/arduino/WInterrupts.cpp **** 			pio->PIO_LSR = mask;    // "Level" Select Register
 168:../cores/arduino/WInterrupts.cpp **** 			pio->PIO_FELLSR = mask; // "Falling Edge / Low Level" Select Register
 169:../cores/arduino/WInterrupts.cpp **** 			break;
 170:../cores/arduino/WInterrupts.cpp **** 
 171:../cores/arduino/WInterrupts.cpp **** 		case INTERRUPT_MODE_HIGH:
 172:../cores/arduino/WInterrupts.cpp **** 			pio->PIO_LSR = mask;    // "Level" Select Register
 173:../cores/arduino/WInterrupts.cpp **** 			pio->PIO_REHLSR = mask; // "Rising Edge / High Level" Select Register
 174:../cores/arduino/WInterrupts.cpp **** 			break;
 175:../cores/arduino/WInterrupts.cpp **** 
 176:../cores/arduino/WInterrupts.cpp **** 		case INTERRUPT_MODE_FALLING:
 177:../cores/arduino/WInterrupts.cpp **** 			pio->PIO_ESR = mask;    // "Edge" Select Register
 178:../cores/arduino/WInterrupts.cpp **** 			pio->PIO_FELLSR = mask; // "Falling Edge / Low Level" Select Register
 179:../cores/arduino/WInterrupts.cpp **** 			break;
 180:../cores/arduino/WInterrupts.cpp **** 
 181:../cores/arduino/WInterrupts.cpp **** 		case INTERRUPT_MODE_RISING:
 182:../cores/arduino/WInterrupts.cpp **** 			pio->PIO_ESR = mask;    // "Edge" Select Register
 385              		.loc 1 182 0
 386 00e4 C4F8C010 		str	r1, [r4, #192]
 183:../cores/arduino/WInterrupts.cpp **** 			pio->PIO_REHLSR = mask; // "Rising Edge / High Level" Select Register
 387              		.loc 1 183 0
 388 00e8 C4F8D410 		str	r1, [r4, #212]
 389              	.L18:
ARM GAS  /tmp/ccbYIR7z.s 			page 42


 184:../cores/arduino/WInterrupts.cpp **** 			break;
 185:../cores/arduino/WInterrupts.cpp **** 
 186:../cores/arduino/WInterrupts.cpp **** 		default:
 187:../cores/arduino/WInterrupts.cpp **** 			break;
 188:../cores/arduino/WInterrupts.cpp **** 		}
 189:../cores/arduino/WInterrupts.cpp **** 	}
 190:../cores/arduino/WInterrupts.cpp **** 
 191:../cores/arduino/WInterrupts.cpp **** 	// Enable interrupt
 192:../cores/arduino/WInterrupts.cpp **** 	if (mode != INTERRUPT_MODE_NONE)
 193:../cores/arduino/WInterrupts.cpp **** 	{
 194:../cores/arduino/WInterrupts.cpp **** 		pio->PIO_IFER = mask;		// enable glitch filter on this pin
 390              		.loc 1 194 0
 391 00ec 2162     		str	r1, [r4, #32]
 195:../cores/arduino/WInterrupts.cpp **** 		pio->PIO_IER = mask;		// enable interrupt on this pin
 196:../cores/arduino/WInterrupts.cpp **** 	}
 197:../cores/arduino/WInterrupts.cpp **** 
 198:../cores/arduino/WInterrupts.cpp **** 	return true;
 392              		.loc 1 198 0
 393 00ee 0120     		movs	r0, #1
 394              	.LVL39:
 195:../cores/arduino/WInterrupts.cpp **** 		pio->PIO_IER = mask;		// enable interrupt on this pin
 395              		.loc 1 195 0
 396 00f0 2164     		str	r1, [r4, #64]
 397 00f2 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 398              	.LVL40:
 399              	.L23:
 177:../cores/arduino/WInterrupts.cpp **** 			pio->PIO_FELLSR = mask; // "Falling Edge / Low Level" Select Register
 400              		.loc 1 177 0
 401 00f6 C4F8C010 		str	r1, [r4, #192]
 178:../cores/arduino/WInterrupts.cpp **** 			break;
 402              		.loc 1 178 0
 403 00fa C4F8D010 		str	r1, [r4, #208]
 179:../cores/arduino/WInterrupts.cpp **** 
 404              		.loc 1 179 0
 405 00fe F5E7     		b	.L18
 406              	.L22:
 172:../cores/arduino/WInterrupts.cpp **** 			pio->PIO_REHLSR = mask; // "Rising Edge / High Level" Select Register
 407              		.loc 1 172 0
 408 0100 C4F8C410 		str	r1, [r4, #196]
 173:../cores/arduino/WInterrupts.cpp **** 			break;
 409              		.loc 1 173 0
 410 0104 C4F8D410 		str	r1, [r4, #212]
 174:../cores/arduino/WInterrupts.cpp **** 
 411              		.loc 1 174 0
 412 0108 F0E7     		b	.L18
 413              	.L20:
 167:../cores/arduino/WInterrupts.cpp **** 			pio->PIO_FELLSR = mask; // "Falling Edge / Low Level" Select Register
 414              		.loc 1 167 0
 415 010a C4F8C410 		str	r1, [r4, #196]
 168:../cores/arduino/WInterrupts.cpp **** 			break;
 416              		.loc 1 168 0
 417 010e C4F8D010 		str	r1, [r4, #208]
 169:../cores/arduino/WInterrupts.cpp **** 
 418              		.loc 1 169 0
 419 0112 EBE7     		b	.L18
 420              	.LVL41:
 421              	.L33:
ARM GAS  /tmp/ccbYIR7z.s 			page 43


 129:../cores/arduino/WInterrupts.cpp **** 		callbacksPioB[pos].param = param;
 422              		.loc 1 129 0
 423 0114 1E4B     		ldr	r3, .L38+28
 130:../cores/arduino/WInterrupts.cpp **** 	}
 424              		.loc 1 130 0
 425 0116 03EBC002 		add	r2, r3, r0, lsl #3
 129:../cores/arduino/WInterrupts.cpp **** 		callbacksPioB[pos].param = param;
 426              		.loc 1 129 0
 427 011a 43F83070 		str	r7, [r3, r0, lsl #3]
 428              	.LVL42:
 130:../cores/arduino/WInterrupts.cpp **** 	}
 429              		.loc 1 130 0
 430 011e 5660     		str	r6, [r2, #4]
 431 0120 99E7     		b	.L13
 432              	.L19:
 192:../cores/arduino/WInterrupts.cpp **** 	{
 433              		.loc 1 192 0
 434 0122 B8F1000F 		cmp	r8, #0
 435 0126 E1D1     		bne	.L18
 436              		.loc 1 198 0
 437 0128 0120     		movs	r0, #1
 438              	.LVL43:
 439 012a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 440              	.LVL44:
 441              	.L37:
 156:../cores/arduino/WInterrupts.cpp **** 	}
 442              		.loc 1 156 0
 443 012e C4F8B410 		str	r1, [r4, #180]
 444              		.loc 1 198 0
 445 0132 0120     		movs	r0, #1
 446              	.LVL45:
 194:../cores/arduino/WInterrupts.cpp **** 		pio->PIO_IER = mask;		// enable interrupt on this pin
 447              		.loc 1 194 0
 448 0134 2162     		str	r1, [r4, #32]
 195:../cores/arduino/WInterrupts.cpp **** 	}
 449              		.loc 1 195 0
 450 0136 2164     		str	r1, [r4, #64]
 451 0138 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 452              	.LVL46:
 453              	.L32:
 124:../cores/arduino/WInterrupts.cpp **** 		callbacksPioA[pos].param = param;
 454              		.loc 1 124 0
 455 013c 154B     		ldr	r3, .L38+32
 125:../cores/arduino/WInterrupts.cpp **** 	}
 456              		.loc 1 125 0
 457 013e 03EBC002 		add	r2, r3, r0, lsl #3
 124:../cores/arduino/WInterrupts.cpp **** 		callbacksPioA[pos].param = param;
 458              		.loc 1 124 0
 459 0142 43F83070 		str	r7, [r3, r0, lsl #3]
 460              	.LVL47:
 125:../cores/arduino/WInterrupts.cpp **** 	}
 461              		.loc 1 125 0
 462 0146 5660     		str	r6, [r2, #4]
 463 0148 85E7     		b	.L13
 464              	.LVL48:
 465              	.L34:
 134:../cores/arduino/WInterrupts.cpp **** 		callbacksPioC[pos].param = param;
ARM GAS  /tmp/ccbYIR7z.s 			page 44


 466              		.loc 1 134 0
 467 014a 134B     		ldr	r3, .L38+36
 135:../cores/arduino/WInterrupts.cpp **** 	}
 468              		.loc 1 135 0
 469 014c 03EBC002 		add	r2, r3, r0, lsl #3
 134:../cores/arduino/WInterrupts.cpp **** 		callbacksPioC[pos].param = param;
 470              		.loc 1 134 0
 471 0150 43F83070 		str	r7, [r3, r0, lsl #3]
 472              	.LVL49:
 135:../cores/arduino/WInterrupts.cpp **** 	}
 473              		.loc 1 135 0
 474 0154 5660     		str	r6, [r2, #4]
 475 0156 7EE7     		b	.L13
 476              	.LVL50:
 477              	.L35:
 140:../cores/arduino/WInterrupts.cpp **** 		callbacksPioD[pos].param = param;
 478              		.loc 1 140 0
 479 0158 104B     		ldr	r3, .L38+40
 141:../cores/arduino/WInterrupts.cpp **** 	}
 480              		.loc 1 141 0
 481 015a 03EBC002 		add	r2, r3, r0, lsl #3
 140:../cores/arduino/WInterrupts.cpp **** 		callbacksPioD[pos].param = param;
 482              		.loc 1 140 0
 483 015e 43F83070 		str	r7, [r3, r0, lsl #3]
 484              	.LVL51:
 141:../cores/arduino/WInterrupts.cpp **** 	}
 485              		.loc 1 141 0
 486 0162 5660     		str	r6, [r2, #4]
 487 0164 77E7     		b	.L13
 488              	.LVL52:
 489              	.L36:
 147:../cores/arduino/WInterrupts.cpp **** 		callbacksPioE[pos].param = param;
 490              		.loc 1 147 0
 491 0166 0E4B     		ldr	r3, .L38+44
 148:../cores/arduino/WInterrupts.cpp **** 	}
 492              		.loc 1 148 0
 493 0168 03EBC002 		add	r2, r3, r0, lsl #3
 147:../cores/arduino/WInterrupts.cpp **** 		callbacksPioE[pos].param = param;
 494              		.loc 1 147 0
 495 016c 43F83070 		str	r7, [r3, r0, lsl #3]
 496              	.LVL53:
 148:../cores/arduino/WInterrupts.cpp **** 	}
 497              		.loc 1 148 0
 498 0170 5660     		str	r6, [r2, #4]
 499 0172 70E7     		b	.L13
 500              	.L39:
 501              		.align	2
 502              	.L38:
 503 0174 00000000 		.word	g_APinDescription
 504 0178 000E0E40 		.word	1074662912
 505 017c 00100E40 		.word	1074663424
 506 0180 00120E40 		.word	1074663936
 507 0184 00140E40 		.word	1074664448
 508 0188 00160E40 		.word	1074664960
 509 018c 00E100E0 		.word	-536813312
 510 0190 00000000 		.word	.LANCHOR2
 511 0194 00000000 		.word	.LANCHOR1
ARM GAS  /tmp/ccbYIR7z.s 			page 45


 512 0198 00000000 		.word	.LANCHOR3
 513 019c 00000000 		.word	.LANCHOR4
 514 01a0 00000000 		.word	.LANCHOR5
 515 01a4 00000000 		.word	.LANCHOR0
 516              		.cfi_endproc
 517              	.LFE530:
 518              		.size	_Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_, .-_Z15attachInterruptmPFv17Cal
 519              		.section	.text._Z15detachInterruptm,"ax",%progbits
 520              		.align	1
 521              		.p2align 2,,3
 522              		.global	_Z15detachInterruptm
 523              		.syntax unified
 524              		.thumb
 525              		.thumb_func
 526              		.fpu fpv5-d16
 527              		.type	_Z15detachInterruptm, %function
 528              	_Z15detachInterruptm:
 529              	.LFB531:
 199:../cores/arduino/WInterrupts.cpp **** }
 200:../cores/arduino/WInterrupts.cpp **** 
 201:../cores/arduino/WInterrupts.cpp **** void detachInterrupt(uint32_t pin)
 202:../cores/arduino/WInterrupts.cpp **** {
 530              		.loc 1 202 0
 531              		.cfi_startproc
 532              		@ args = 0, pretend = 0, frame = 0
 533              		@ frame_needed = 0, uses_anonymous_args = 0
 534              		@ link register save eliminated.
 535              	.LVL54:
 536              	.LBB176:
 203:../cores/arduino/WInterrupts.cpp **** 	if (pin <= MaxPinNumber)
 537              		.loc 1 203 0
 538 0000 3228     		cmp	r0, #50
 539 0002 07D8     		bhi	.L40
 540              	.LBB177:
 204:../cores/arduino/WInterrupts.cpp **** 	{
 205:../cores/arduino/WInterrupts.cpp **** 		// Retrieve pin information
 206:../cores/arduino/WInterrupts.cpp **** 		Pio * const pio = g_APinDescription[pin].pPort;
 541              		.loc 1 206 0
 542 0004 C0EBC000 		rsb	r0, r0, r0, lsl #3
 543              	.LVL55:
 544 0008 034B     		ldr	r3, .L42
 545 000a 8000     		lsls	r0, r0, #2
 207:../cores/arduino/WInterrupts.cpp **** 		const uint32_t mask = g_APinDescription[pin].ulPin;
 546              		.loc 1 207 0
 547 000c 1A18     		adds	r2, r3, r0
 206:../cores/arduino/WInterrupts.cpp **** 		const uint32_t mask = g_APinDescription[pin].ulPin;
 548              		.loc 1 206 0
 549 000e 1B58     		ldr	r3, [r3, r0]
 550              	.LVL56:
 551              		.loc 1 207 0
 552 0010 5268     		ldr	r2, [r2, #4]
 553              	.LVL57:
 208:../cores/arduino/WInterrupts.cpp **** 
 209:../cores/arduino/WInterrupts.cpp **** 		// Disable interrupt
 210:../cores/arduino/WInterrupts.cpp **** 		pio->PIO_IDR = mask;
 554              		.loc 1 210 0
 555 0012 5A64     		str	r2, [r3, #68]
ARM GAS  /tmp/ccbYIR7z.s 			page 46


 556              	.LVL58:
 557              	.L40:
 558 0014 7047     		bx	lr
 559              	.L43:
 560 0016 00BF     		.align	2
 561              	.L42:
 562 0018 00000000 		.word	g_APinDescription
 563              	.LBE177:
 564              	.LBE176:
 565              		.cfi_endproc
 566              	.LFE531:
 567              		.size	_Z15detachInterruptm, .-_Z15detachInterruptm
 568              		.section	.text._Z11inInterruptv,"ax",%progbits
 569              		.align	1
 570              		.p2align 2,,3
 571              		.global	_Z11inInterruptv
 572              		.syntax unified
 573              		.thumb
 574              		.thumb_func
 575              		.fpu fpv5-d16
 576              		.type	_Z11inInterruptv, %function
 577              	_Z11inInterruptv:
 578              	.LFB532:
 211:../cores/arduino/WInterrupts.cpp **** 	}
 212:../cores/arduino/WInterrupts.cpp **** }
 213:../cores/arduino/WInterrupts.cpp **** 
 214:../cores/arduino/WInterrupts.cpp **** // Return true if we are in any interrupt service routine
 215:../cores/arduino/WInterrupts.cpp **** bool inInterrupt()
 216:../cores/arduino/WInterrupts.cpp **** {
 579              		.loc 1 216 0
 580              		.cfi_startproc
 581              		@ args = 0, pretend = 0, frame = 0
 582              		@ frame_needed = 0, uses_anonymous_args = 0
 583              		@ link register save eliminated.
 584              	.LBB178:
 585              	.LBB179:
 586              		.file 3 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h"
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
ARM GAS  /tmp/ccbYIR7z.s 			page 47


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
ARM GAS  /tmp/ccbYIR7z.s 			page 48


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
ARM GAS  /tmp/ccbYIR7z.s 			page 49


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
ARM GAS  /tmp/ccbYIR7z.s 			page 50


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
ARM GAS  /tmp/ccbYIR7z.s 			page 51


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
ARM GAS  /tmp/ccbYIR7z.s 			page 52


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
ARM GAS  /tmp/ccbYIR7z.s 			page 53


 363:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the content of the IPSR Register.
 364:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 365:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               IPSR Register value
 366:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 367:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_IPSR(void)
 368:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 369:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   uint32_t result;
 370:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 371:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __ASM volatile ("MRS %0, ipsr" : "=r" (result) );
 587              		.loc 3 371 0
 588              		.syntax unified
 589              	@ 371 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 590 0000 EFF30580 		MRS r0, ipsr
 591              	@ 0 "" 2
 592              		.thumb
 593              		.syntax unified
 594              	.LBE179:
 595              	.LBE178:
 217:../cores/arduino/WInterrupts.cpp **** 	return (__get_IPSR() & 0x01FF) != 0;
 596              		.loc 1 217 0
 597 0004 C0F30800 		ubfx	r0, r0, #0, #9
 218:../cores/arduino/WInterrupts.cpp **** }
 598              		.loc 1 218 0
 599 0008 0030     		adds	r0, r0, #0
 600 000a 18BF     		it	ne
 601 000c 0120     		movne	r0, #1
 602 000e 7047     		bx	lr
 603              		.cfi_endproc
 604              	.LFE532:
 605              		.size	_Z11inInterruptv, .-_Z11inInterruptv
 606              		.section	.text._Z16CommonPioHandlerP3PioPK17InterruptCallback,"ax",%progbits
 607              		.align	1
 608              		.p2align 2,,3
 609              		.global	_Z16CommonPioHandlerP3PioPK17InterruptCallback
 610              		.syntax unified
 611              		.thumb
 612              		.thumb_func
 613              		.fpu fpv5-d16
 614              		.type	_Z16CommonPioHandlerP3PioPK17InterruptCallback, %function
 615              	_Z16CommonPioHandlerP3PioPK17InterruptCallback:
 616              	.LFB533:
 219:../cores/arduino/WInterrupts.cpp **** 
 220:../cores/arduino/WInterrupts.cpp **** // Common PIO interrupt handler
 221:../cores/arduino/WInterrupts.cpp **** void CommonPioHandler(Pio *pio, const InterruptCallback callbacks[])
 222:../cores/arduino/WInterrupts.cpp **** {
 617              		.loc 1 222 0
 618              		.cfi_startproc
 619              		@ args = 0, pretend = 0, frame = 0
 620              		@ frame_needed = 0, uses_anonymous_args = 0
 621              	.LVL59:
 622 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 623              		.cfi_def_cfa_offset 24
 624              		.cfi_offset 3, -24
 625              		.cfi_offset 4, -20
 626              		.cfi_offset 5, -16
 627              		.cfi_offset 6, -12
 628              		.cfi_offset 7, -8
ARM GAS  /tmp/ccbYIR7z.s 			page 54


 629              		.cfi_offset 14, -4
 223:../cores/arduino/WInterrupts.cpp **** 	uint32_t isr = pio->PIO_ISR & pio->PIO_IMR;
 630              		.loc 1 223 0
 631 0002 C56C     		ldr	r5, [r0, #76]
 632 0004 836C     		ldr	r3, [r0, #72]
 633              	.LVL60:
 224:../cores/arduino/WInterrupts.cpp **** 	while (isr != 0)
 634              		.loc 1 224 0
 635 0006 1D40     		ands	r5, r5, r3
 636              	.LVL61:
 637 0008 10D0     		beq	.L45
 638 000a 0E46     		mov	r6, r1
 639              	.LBB180:
 225:../cores/arduino/WInterrupts.cpp **** 	{
 226:../cores/arduino/WInterrupts.cpp **** 		const unsigned int pos = GetHighestBit(isr);
 227:../cores/arduino/WInterrupts.cpp **** 		if (callbacks[pos].func != nullptr)
 228:../cores/arduino/WInterrupts.cpp **** 		{
 229:../cores/arduino/WInterrupts.cpp **** 			callbacks[pos].func(callbacks[pos].param);
 230:../cores/arduino/WInterrupts.cpp **** 		}
 231:../cores/arduino/WInterrupts.cpp **** 		isr &= ~(1u << pos);
 640              		.loc 1 231 0
 641 000c 0127     		movs	r7, #1
 642              	.LVL62:
 643              	.L49:
 226:../cores/arduino/WInterrupts.cpp **** 		if (callbacks[pos].func != nullptr)
 644              		.loc 1 226 0
 645 000e 2846     		mov	r0, r5
 646 0010 FFF7FEFF 		bl	_ZL13GetHighestBitm
 647              	.LVL63:
 227:../cores/arduino/WInterrupts.cpp **** 		{
 648              		.loc 1 227 0
 649 0014 56F83030 		ldr	r3, [r6, r0, lsl #3]
 226:../cores/arduino/WInterrupts.cpp **** 		if (callbacks[pos].func != nullptr)
 650              		.loc 1 226 0
 651 0018 0446     		mov	r4, r0
 652              	.LVL64:
 227:../cores/arduino/WInterrupts.cpp **** 		{
 653              		.loc 1 227 0
 654 001a 06EBC002 		add	r2, r6, r0, lsl #3
 655 001e 0BB1     		cbz	r3, .L47
 229:../cores/arduino/WInterrupts.cpp **** 		}
 656              		.loc 1 229 0
 657 0020 5068     		ldr	r0, [r2, #4]
 658              	.LVL65:
 659 0022 9847     		blx	r3
 660              	.LVL66:
 661              	.L47:
 662              		.loc 1 231 0
 663 0024 07FA04F4 		lsl	r4, r7, r4
 664              	.LVL67:
 665              	.LBE180:
 224:../cores/arduino/WInterrupts.cpp **** 	{
 666              		.loc 1 224 0
 667 0028 A543     		bics	r5, r5, r4
 668              	.LVL68:
 669 002a F0D1     		bne	.L49
 670              	.LVL69:
ARM GAS  /tmp/ccbYIR7z.s 			page 55


 671              	.L45:
 672 002c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 673              		.cfi_endproc
 674              	.LFE533:
 675              		.size	_Z16CommonPioHandlerP3PioPK17InterruptCallback, .-_Z16CommonPioHandlerP3PioPK17InterruptCall
 676 002e 00BF     		.section	.text.PIOA_Handler,"ax",%progbits
 677              		.align	1
 678              		.p2align 2,,3
 679              		.global	PIOA_Handler
 680              		.syntax unified
 681              		.thumb
 682              		.thumb_func
 683              		.fpu fpv5-d16
 684              		.type	PIOA_Handler, %function
 685              	PIOA_Handler:
 686              	.LFB534:
 232:../cores/arduino/WInterrupts.cpp **** 	}
 233:../cores/arduino/WInterrupts.cpp **** }
 234:../cores/arduino/WInterrupts.cpp **** 
 235:../cores/arduino/WInterrupts.cpp **** extern "C" void PIOA_Handler(void)
 236:../cores/arduino/WInterrupts.cpp **** {
 687              		.loc 1 236 0
 688              		.cfi_startproc
 689              		@ args = 0, pretend = 0, frame = 0
 690              		@ frame_needed = 0, uses_anonymous_args = 0
 691              		@ link register save eliminated.
 237:../cores/arduino/WInterrupts.cpp **** 	CommonPioHandler(PIOA, callbacksPioA);
 692              		.loc 1 237 0
 693 0000 0149     		ldr	r1, .L58
 694 0002 0248     		ldr	r0, .L58+4
 695 0004 FFF7FEBF 		b	_Z16CommonPioHandlerP3PioPK17InterruptCallback
 696              	.LVL70:
 697              	.L59:
 698              		.align	2
 699              	.L58:
 700 0008 00000000 		.word	.LANCHOR1
 701 000c 000E0E40 		.word	1074662912
 702              		.cfi_endproc
 703              	.LFE534:
 704              		.size	PIOA_Handler, .-PIOA_Handler
 705              		.section	.text.PIOB_Handler,"ax",%progbits
 706              		.align	1
 707              		.p2align 2,,3
 708              		.global	PIOB_Handler
 709              		.syntax unified
 710              		.thumb
 711              		.thumb_func
 712              		.fpu fpv5-d16
 713              		.type	PIOB_Handler, %function
 714              	PIOB_Handler:
 715              	.LFB535:
 238:../cores/arduino/WInterrupts.cpp **** }
 239:../cores/arduino/WInterrupts.cpp **** 
 240:../cores/arduino/WInterrupts.cpp **** extern "C" void PIOB_Handler(void)
 241:../cores/arduino/WInterrupts.cpp **** {
 716              		.loc 1 241 0
 717              		.cfi_startproc
ARM GAS  /tmp/ccbYIR7z.s 			page 56


 718              		@ args = 0, pretend = 0, frame = 0
 719              		@ frame_needed = 0, uses_anonymous_args = 0
 720              		@ link register save eliminated.
 242:../cores/arduino/WInterrupts.cpp **** 	CommonPioHandler(PIOB, callbacksPioB);
 721              		.loc 1 242 0
 722 0000 0149     		ldr	r1, .L61
 723 0002 0248     		ldr	r0, .L61+4
 724 0004 FFF7FEBF 		b	_Z16CommonPioHandlerP3PioPK17InterruptCallback
 725              	.LVL71:
 726              	.L62:
 727              		.align	2
 728              	.L61:
 729 0008 00000000 		.word	.LANCHOR2
 730 000c 00100E40 		.word	1074663424
 731              		.cfi_endproc
 732              	.LFE535:
 733              		.size	PIOB_Handler, .-PIOB_Handler
 734              		.section	.text.PIOC_Handler,"ax",%progbits
 735              		.align	1
 736              		.p2align 2,,3
 737              		.global	PIOC_Handler
 738              		.syntax unified
 739              		.thumb
 740              		.thumb_func
 741              		.fpu fpv5-d16
 742              		.type	PIOC_Handler, %function
 743              	PIOC_Handler:
 744              	.LFB536:
 243:../cores/arduino/WInterrupts.cpp **** }
 244:../cores/arduino/WInterrupts.cpp **** 
 245:../cores/arduino/WInterrupts.cpp **** extern "C" void PIOC_Handler(void)
 246:../cores/arduino/WInterrupts.cpp **** {
 745              		.loc 1 246 0
 746              		.cfi_startproc
 747              		@ args = 0, pretend = 0, frame = 0
 748              		@ frame_needed = 0, uses_anonymous_args = 0
 749              		@ link register save eliminated.
 247:../cores/arduino/WInterrupts.cpp **** 	CommonPioHandler(PIOC, callbacksPioC);
 750              		.loc 1 247 0
 751 0000 0149     		ldr	r1, .L64
 752 0002 0248     		ldr	r0, .L64+4
 753 0004 FFF7FEBF 		b	_Z16CommonPioHandlerP3PioPK17InterruptCallback
 754              	.LVL72:
 755              	.L65:
 756              		.align	2
 757              	.L64:
 758 0008 00000000 		.word	.LANCHOR3
 759 000c 00120E40 		.word	1074663936
 760              		.cfi_endproc
 761              	.LFE536:
 762              		.size	PIOC_Handler, .-PIOC_Handler
 763              		.section	.text.PIOD_Handler,"ax",%progbits
 764              		.align	1
 765              		.p2align 2,,3
 766              		.global	PIOD_Handler
 767              		.syntax unified
 768              		.thumb
ARM GAS  /tmp/ccbYIR7z.s 			page 57


 769              		.thumb_func
 770              		.fpu fpv5-d16
 771              		.type	PIOD_Handler, %function
 772              	PIOD_Handler:
 773              	.LFB537:
 248:../cores/arduino/WInterrupts.cpp **** }
 249:../cores/arduino/WInterrupts.cpp **** 
 250:../cores/arduino/WInterrupts.cpp **** #ifdef ID_PIOD
 251:../cores/arduino/WInterrupts.cpp **** extern "C" void PIOD_Handler(void)
 252:../cores/arduino/WInterrupts.cpp **** {
 774              		.loc 1 252 0
 775              		.cfi_startproc
 776              		@ args = 0, pretend = 0, frame = 0
 777              		@ frame_needed = 0, uses_anonymous_args = 0
 778              		@ link register save eliminated.
 253:../cores/arduino/WInterrupts.cpp **** 	CommonPioHandler(PIOD, callbacksPioD);
 779              		.loc 1 253 0
 780 0000 0149     		ldr	r1, .L67
 781 0002 0248     		ldr	r0, .L67+4
 782 0004 FFF7FEBF 		b	_Z16CommonPioHandlerP3PioPK17InterruptCallback
 783              	.LVL73:
 784              	.L68:
 785              		.align	2
 786              	.L67:
 787 0008 00000000 		.word	.LANCHOR4
 788 000c 00140E40 		.word	1074664448
 789              		.cfi_endproc
 790              	.LFE537:
 791              		.size	PIOD_Handler, .-PIOD_Handler
 792              		.section	.text.PIOE_Handler,"ax",%progbits
 793              		.align	1
 794              		.p2align 2,,3
 795              		.global	PIOE_Handler
 796              		.syntax unified
 797              		.thumb
 798              		.thumb_func
 799              		.fpu fpv5-d16
 800              		.type	PIOE_Handler, %function
 801              	PIOE_Handler:
 802              	.LFB538:
 254:../cores/arduino/WInterrupts.cpp **** }
 255:../cores/arduino/WInterrupts.cpp **** #endif
 256:../cores/arduino/WInterrupts.cpp **** 
 257:../cores/arduino/WInterrupts.cpp **** #ifdef ID_PIOE
 258:../cores/arduino/WInterrupts.cpp **** extern "C" void PIOE_Handler(void)
 259:../cores/arduino/WInterrupts.cpp **** {
 803              		.loc 1 259 0
 804              		.cfi_startproc
 805              		@ args = 0, pretend = 0, frame = 0
 806              		@ frame_needed = 0, uses_anonymous_args = 0
 807              		@ link register save eliminated.
 260:../cores/arduino/WInterrupts.cpp **** 	CommonPioHandler(PIOE, callbacksPioE);
 808              		.loc 1 260 0
 809 0000 0149     		ldr	r1, .L70
 810 0002 0248     		ldr	r0, .L70+4
 811 0004 FFF7FEBF 		b	_Z16CommonPioHandlerP3PioPK17InterruptCallback
 812              	.LVL74:
ARM GAS  /tmp/ccbYIR7z.s 			page 58


 813              	.L71:
 814              		.align	2
 815              	.L70:
 816 0008 00000000 		.word	.LANCHOR5
 817 000c 00160E40 		.word	1074664960
 818              		.cfi_endproc
 819              	.LFE538:
 820              		.size	PIOE_Handler, .-PIOE_Handler
 821              		.section	.text.startup._GLOBAL__sub_I__Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_
 822              		.align	1
 823              		.p2align 2,,3
 824              		.syntax unified
 825              		.thumb
 826              		.thumb_func
 827              		.fpu fpv5-d16
 828              		.type	_GLOBAL__sub_I__Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_, %function
 829              	_GLOBAL__sub_I__Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_:
 830              	.LFB540:
 261:../cores/arduino/WInterrupts.cpp **** }
 831              		.loc 1 261 0
 832              		.cfi_startproc
 833              		@ args = 0, pretend = 0, frame = 0
 834              		@ frame_needed = 0, uses_anonymous_args = 0
 835              		@ link register save eliminated.
 836              	.LVL75:
 837 0000 194B     		ldr	r3, .L83
 838              	.LBB213:
 839              	.LBB214:
 840              	.LBB215:
 841              	.LBB216:
  30:../cores/arduino/WInterrupts.cpp **** };
 842              		.loc 1 30 0
 843 0002 0022     		movs	r2, #0
 844 0004 03F58071 		add	r1, r3, #256
 845              	.L73:
 846              	.LVL76:
 847 0008 1A60     		str	r2, [r3]
 848              	.LVL77:
 849 000a 0833     		adds	r3, r3, #8
 850              	.LVL78:
 851              	.LBB217:
 852              	.LBB218:
 853              		.file 4 "../cores/arduino/WInterrupts.h"
   1:../cores/arduino/WInterrupts.h **** /*
   2:../cores/arduino/WInterrupts.h ****   Copyright (c) 2011-2012 Arduino.  All right reserved.
   3:../cores/arduino/WInterrupts.h **** 
   4:../cores/arduino/WInterrupts.h ****   This library is free software; you can redistribute it and/or
   5:../cores/arduino/WInterrupts.h ****   modify it under the terms of the GNU Lesser General Public
   6:../cores/arduino/WInterrupts.h ****   License as published by the Free Software Foundation; either
   7:../cores/arduino/WInterrupts.h ****   version 2.1 of the License, or (at your option) any later version.
   8:../cores/arduino/WInterrupts.h **** 
   9:../cores/arduino/WInterrupts.h ****   This library is distributed in the hope that it will be useful,
  10:../cores/arduino/WInterrupts.h ****   but WITHOUT ANY WARRANTY; without even the implied warranty of
  11:../cores/arduino/WInterrupts.h ****   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
  12:../cores/arduino/WInterrupts.h ****   See the GNU Lesser General Public License for more details.
  13:../cores/arduino/WInterrupts.h **** 
  14:../cores/arduino/WInterrupts.h ****   You should have received a copy of the GNU Lesser General Public
ARM GAS  /tmp/ccbYIR7z.s 			page 59


  15:../cores/arduino/WInterrupts.h ****   License along with this library; if not, write to the Free Software
  16:../cores/arduino/WInterrupts.h ****   Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
  17:../cores/arduino/WInterrupts.h **** */
  18:../cores/arduino/WInterrupts.h **** 
  19:../cores/arduino/WInterrupts.h **** #ifndef _WIRING_INTERRUPTS_
  20:../cores/arduino/WInterrupts.h **** #define _WIRING_INTERRUPTS_
  21:../cores/arduino/WInterrupts.h **** 
  22:../cores/arduino/WInterrupts.h **** #include "Core.h"
  23:../cores/arduino/WInterrupts.h **** 
  24:../cores/arduino/WInterrupts.h **** union CallbackParameter
  25:../cores/arduino/WInterrupts.h **** {
  26:../cores/arduino/WInterrupts.h **** 	void *vp;
  27:../cores/arduino/WInterrupts.h **** 	uint32_t ip;
  28:../cores/arduino/WInterrupts.h **** 
  29:../cores/arduino/WInterrupts.h **** 	CallbackParameter(void *pp) : vp(pp) { }
  30:../cores/arduino/WInterrupts.h **** 	CallbackParameter(uint32_t pp) : ip(pp) { }
  31:../cores/arduino/WInterrupts.h **** 	CallbackParameter() : ip(0) { }
 854              		.loc 4 31 0
 855 000c 43F8042C 		str	r2, [r3, #-4]
 856              	.LVL79:
 857              	.LBE218:
 858              	.LBE217:
 859              	.LBE216:
 860              	.LBE215:
  33:../cores/arduino/WInterrupts.cpp **** static InterruptCallback callbacksPioB[32];
 861              		.loc 1 33 0
 862 0010 8B42     		cmp	r3, r1
 863 0012 F9D1     		bne	.L73
 864 0014 154B     		ldr	r3, .L83+4
 865              	.LBB219:
 866              	.LBB220:
  30:../cores/arduino/WInterrupts.cpp **** };
 867              		.loc 1 30 0
 868 0016 0022     		movs	r2, #0
 869 0018 03F58071 		add	r1, r3, #256
 870              	.L74:
 871              	.LVL80:
 872 001c 1A60     		str	r2, [r3]
 873              	.LVL81:
 874 001e 0833     		adds	r3, r3, #8
 875              	.LVL82:
 876              	.LBB221:
 877              	.LBB222:
 878              		.loc 4 31 0
 879 0020 43F8042C 		str	r2, [r3, #-4]
 880              	.LVL83:
 881              	.LBE222:
 882              	.LBE221:
 883              	.LBE220:
 884              	.LBE219:
  34:../cores/arduino/WInterrupts.cpp **** static InterruptCallback callbacksPioC[32];
 885              		.loc 1 34 0
 886 0024 8B42     		cmp	r3, r1
 887 0026 F9D1     		bne	.L74
 888 0028 114B     		ldr	r3, .L83+8
 889              	.LBB223:
 890              	.LBB224:
ARM GAS  /tmp/ccbYIR7z.s 			page 60


  30:../cores/arduino/WInterrupts.cpp **** };
 891              		.loc 1 30 0
 892 002a 0022     		movs	r2, #0
 893 002c 03F58071 		add	r1, r3, #256
 894              	.L75:
 895              	.LVL84:
 896 0030 1A60     		str	r2, [r3]
 897              	.LVL85:
 898 0032 0833     		adds	r3, r3, #8
 899              	.LVL86:
 900              	.LBB225:
 901              	.LBB226:
 902              		.loc 4 31 0
 903 0034 43F8042C 		str	r2, [r3, #-4]
 904              	.LVL87:
 905              	.LBE226:
 906              	.LBE225:
 907              	.LBE224:
 908              	.LBE223:
  35:../cores/arduino/WInterrupts.cpp **** #ifdef ID_PIOD
 909              		.loc 1 35 0
 910 0038 9942     		cmp	r1, r3
 911 003a F9D1     		bne	.L75
 912 003c 0D4B     		ldr	r3, .L83+12
 913              	.LBB227:
 914              	.LBB228:
  30:../cores/arduino/WInterrupts.cpp **** };
 915              		.loc 1 30 0
 916 003e 0022     		movs	r2, #0
 917 0040 03F58071 		add	r1, r3, #256
 918              	.L76:
 919              	.LVL88:
 920 0044 1A60     		str	r2, [r3]
 921              	.LVL89:
 922 0046 0833     		adds	r3, r3, #8
 923              	.LVL90:
 924              	.LBB229:
 925              	.LBB230:
 926              		.loc 4 31 0
 927 0048 43F8042C 		str	r2, [r3, #-4]
 928              	.LVL91:
 929              	.LBE230:
 930              	.LBE229:
 931              	.LBE228:
 932              	.LBE227:
  37:../cores/arduino/WInterrupts.cpp **** #endif
 933              		.loc 1 37 0
 934 004c 9942     		cmp	r1, r3
 935 004e F9D1     		bne	.L76
 936 0050 094B     		ldr	r3, .L83+16
 937              	.LBB231:
 938              	.LBB232:
  30:../cores/arduino/WInterrupts.cpp **** };
 939              		.loc 1 30 0
 940 0052 0022     		movs	r2, #0
 941 0054 03F58071 		add	r1, r3, #256
 942              	.L77:
ARM GAS  /tmp/ccbYIR7z.s 			page 61


 943              	.LVL92:
 944 0058 1A60     		str	r2, [r3]
 945              	.LVL93:
 946 005a 0833     		adds	r3, r3, #8
 947              	.LVL94:
 948              	.LBB233:
 949              	.LBB234:
 950              		.loc 4 31 0
 951 005c 43F8042C 		str	r2, [r3, #-4]
 952              	.LVL95:
 953              	.LBE234:
 954              	.LBE233:
 955              	.LBE232:
 956              	.LBE231:
  40:../cores/arduino/WInterrupts.cpp **** #endif
 957              		.loc 1 40 0
 958 0060 9942     		cmp	r1, r3
 959 0062 F9D1     		bne	.L77
 960              	.LBE214:
 961              	.LBE213:
 962              		.loc 1 261 0
 963 0064 7047     		bx	lr
 964              	.L84:
 965 0066 00BF     		.align	2
 966              	.L83:
 967 0068 00000000 		.word	.LANCHOR1
 968 006c 00000000 		.word	.LANCHOR2
 969 0070 00000000 		.word	.LANCHOR3
 970 0074 00000000 		.word	.LANCHOR4
 971 0078 00000000 		.word	.LANCHOR5
 972              		.cfi_endproc
 973              	.LFE540:
 974              		.size	_GLOBAL__sub_I__Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_, .-_GLOBAL__sub_
 975              		.section	.init_array,"aw",%init_array
 976              		.align	2
 977 0000 00000000 		.word	_GLOBAL__sub_I__Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_(target1)
 978              		.section	.bss._ZL13callbacksPioA,"aw",%nobits
 979              		.align	2
 980              		.set	.LANCHOR1,. + 0
 981              		.type	_ZL13callbacksPioA, %object
 982              		.size	_ZL13callbacksPioA, 256
 983              	_ZL13callbacksPioA:
 984 0000 00000000 		.space	256
 984      00000000 
 984      00000000 
 984      00000000 
 984      00000000 
 985              		.section	.bss._ZL13callbacksPioB,"aw",%nobits
 986              		.align	2
 987              		.set	.LANCHOR2,. + 0
 988              		.type	_ZL13callbacksPioB, %object
 989              		.size	_ZL13callbacksPioB, 256
 990              	_ZL13callbacksPioB:
 991 0000 00000000 		.space	256
 991      00000000 
 991      00000000 
 991      00000000 
ARM GAS  /tmp/ccbYIR7z.s 			page 62


 991      00000000 
 992              		.section	.bss._ZL13callbacksPioC,"aw",%nobits
 993              		.align	2
 994              		.set	.LANCHOR3,. + 0
 995              		.type	_ZL13callbacksPioC, %object
 996              		.size	_ZL13callbacksPioC, 256
 997              	_ZL13callbacksPioC:
 998 0000 00000000 		.space	256
 998      00000000 
 998      00000000 
 998      00000000 
 998      00000000 
 999              		.section	.bss._ZL13callbacksPioD,"aw",%nobits
 1000              		.align	2
 1001              		.set	.LANCHOR4,. + 0
 1002              		.type	_ZL13callbacksPioD, %object
 1003              		.size	_ZL13callbacksPioD, 256
 1004              	_ZL13callbacksPioD:
 1005 0000 00000000 		.space	256
 1005      00000000 
 1005      00000000 
 1005      00000000 
 1005      00000000 
 1006              		.section	.bss._ZL13callbacksPioE,"aw",%nobits
 1007              		.align	2
 1008              		.set	.LANCHOR5,. + 0
 1009              		.type	_ZL13callbacksPioE, %object
 1010              		.size	_ZL13callbacksPioE, 256
 1011              	_ZL13callbacksPioE:
 1012 0000 00000000 		.space	256
 1012      00000000 
 1012      00000000 
 1012      00000000 
 1012      00000000 
 1013              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1014              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1015              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1016              	_ZL28cpu_irq_prev_interrupt_state:
 1017 0000 00       		.space	1
 1018              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1019              		.align	2
 1020              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1021              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1022              	_ZL32cpu_irq_critical_section_counter:
 1023 0000 00000000 		.space	4
 1024              		.section	.bss._ZZ15attachInterruptmPFv17CallbackParameterE13InterruptModeS_E7enabled,"aw",%nobits
 1025              		.set	.LANCHOR0,. + 0
 1026              		.type	_ZZ15attachInterruptmPFv17CallbackParameterE13InterruptModeS_E7enabled, %object
 1027              		.size	_ZZ15attachInterruptmPFv17CallbackParameterE13InterruptModeS_E7enabled, 1
 1028              	_ZZ15attachInterruptmPFv17CallbackParameterE13InterruptModeS_E7enabled:
 1029 0000 00       		.space	1
 1030              		.text
 1031              	.Letext0:
 1032              		.file 5 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 1033              		.file 6 "/usr/include/newlib/machine/_default_types.h"
 1034              		.file 7 "/usr/include/newlib/sys/_stdint.h"
 1035              		.file 8 "/usr/include/newlib/stdint.h"
ARM GAS  /tmp/ccbYIR7z.s 			page 63


 1036              		.file 9 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/same70q21.h"
 1037              		.file 10 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 1038              		.file 11 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/pio
 1039              		.file 12 "/usr/include/newlib/sys/lock.h"
 1040              		.file 13 "/usr/include/newlib/sys/_types.h"
 1041              		.file 14 "/usr/include/newlib/sys/reent.h"
 1042              		.file 15 "/usr/include/newlib/c++/6.3.1/cstdlib"
 1043              		.file 16 "/usr/include/newlib/c++/6.3.1/cmath"
 1044              		.file 17 "/usr/include/newlib/c++/6.3.1/cstdint"
 1045              		.file 18 "/usr/include/newlib/c++/6.3.1/cstddef"
 1046              		.file 19 "/usr/include/newlib/c++/6.3.1/arm-none-eabi/thumb/v7e-m/fpv5/hard/bits/c++config.h"
 1047              		.file 20 "/usr/include/newlib/stdlib.h"
 1048              		.file 21 "/usr/include/newlib/c++/6.3.1/stdlib.h"
 1049              		.file 22 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 1050              		.file 23 "/usr/include/newlib/math.h"
 1051              		.file 24 "/usr/include/newlib/c++/6.3.1/math.h"
 1052              		.file 25 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/pio/pio.h"
 1053              		.file 26 "../cores/arduino/wiring_constants.h"
 1054              		.file 27 "../cores/arduino/Core.h"
 1055              		.file 28 "/usr/include/newlib/ctype.h"
 1056              		.file 29 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/RingBuffer.h"
 1057              		.file 30 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h"
 1058              		.file 31 "/usr/include/newlib/time.h"
 1059              		.file 32 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/variant.h"
 1060              		.file 33 "../cores/arduino/USB/USBSerial.h"
 1061              		.file 34 "../cores/arduino/Print.h"
 1062              		.file 35 "<built-in>"
 1063              		.file 36 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/pmc/pmc.h"
 1064              		.section	.debug_info,"",%progbits
 1065              	.Ldebug_info0:
 1066 0000 D7250000 		.4byte	0x25d7
 1067 0004 0400     		.2byte	0x4
 1068 0006 00000000 		.4byte	.Ldebug_abbrev0
 1069 000a 04       		.byte	0x4
 1070 000b 01       		.uleb128 0x1
 1071 000c 6C0D0000 		.4byte	.LASF539
 1072 0010 04       		.byte	0x4
 1073 0011 050C0000 		.4byte	.LASF540
 1074 0015 51170000 		.4byte	.LASF541
 1075 0019 98000000 		.4byte	.Ldebug_ranges0+0x98
 1076 001d 00000000 		.4byte	0
 1077 0021 00000000 		.4byte	.Ldebug_line0
 1078 0025 02       		.uleb128 0x2
 1079 0026 04       		.byte	0x4
 1080 0027 05       		.byte	0x5
 1081 0028 696E7400 		.ascii	"int\000"
 1082 002c 03       		.uleb128 0x3
 1083 002d B5080000 		.4byte	.LASF5
 1084 0031 05       		.byte	0x5
 1085 0032 D8       		.byte	0xd8
 1086 0033 3C000000 		.4byte	0x3c
 1087 0037 04       		.uleb128 0x4
 1088 0038 2C000000 		.4byte	0x2c
 1089 003c 05       		.uleb128 0x5
 1090 003d 04       		.byte	0x4
 1091 003e 07       		.byte	0x7
 1092 003f E5170000 		.4byte	.LASF0
ARM GAS  /tmp/ccbYIR7z.s 			page 64


 1093 0043 04       		.uleb128 0x4
 1094 0044 3C000000 		.4byte	0x3c
 1095 0048 06       		.uleb128 0x6
 1096 0049 10       		.byte	0x10
 1097 004a 05       		.byte	0x5
 1098 004b AA01     		.2byte	0x1aa
 1099 004d 8D030000 		.4byte	.LASF542
 1100 0051 70000000 		.4byte	0x70
 1101 0055 07       		.uleb128 0x7
 1102 0056 F5020000 		.4byte	.LASF1
 1103 005a 05       		.byte	0x5
 1104 005b AB01     		.2byte	0x1ab
 1105 005d 70000000 		.4byte	0x70
 1106 0061 00       		.byte	0
 1107 0062 07       		.uleb128 0x7
 1108 0063 DC020000 		.4byte	.LASF2
 1109 0067 05       		.byte	0x5
 1110 0068 AC01     		.2byte	0x1ac
 1111 006a 77000000 		.4byte	0x77
 1112 006e 08       		.byte	0x8
 1113 006f 00       		.byte	0
 1114 0070 05       		.uleb128 0x5
 1115 0071 08       		.byte	0x8
 1116 0072 05       		.byte	0x5
 1117 0073 0C160000 		.4byte	.LASF3
 1118 0077 05       		.uleb128 0x5
 1119 0078 08       		.byte	0x8
 1120 0079 04       		.byte	0x4
 1121 007a 98100000 		.4byte	.LASF4
 1122 007e 08       		.uleb128 0x8
 1123 007f FC0C0000 		.4byte	.LASF6
 1124 0083 05       		.byte	0x5
 1125 0084 AD01     		.2byte	0x1ad
 1126 0086 48000000 		.4byte	0x48
 1127 008a 09       		.uleb128 0x9
 1128 008b 040B0000 		.4byte	.LASF543
 1129 008f 03       		.uleb128 0x3
 1130 0090 2C170000 		.4byte	.LASF7
 1131 0094 06       		.byte	0x6
 1132 0095 1B       		.byte	0x1b
 1133 0096 9A000000 		.4byte	0x9a
 1134 009a 05       		.uleb128 0x5
 1135 009b 01       		.byte	0x1
 1136 009c 06       		.byte	0x6
 1137 009d 440D0000 		.4byte	.LASF8
 1138 00a1 03       		.uleb128 0x3
 1139 00a2 66000000 		.4byte	.LASF9
 1140 00a6 06       		.byte	0x6
 1141 00a7 1D       		.byte	0x1d
 1142 00a8 AC000000 		.4byte	0xac
 1143 00ac 05       		.uleb128 0x5
 1144 00ad 01       		.byte	0x1
 1145 00ae 08       		.byte	0x8
 1146 00af FB050000 		.4byte	.LASF10
 1147 00b3 03       		.uleb128 0x3
 1148 00b4 08050000 		.4byte	.LASF11
 1149 00b8 06       		.byte	0x6
ARM GAS  /tmp/ccbYIR7z.s 			page 65


 1150 00b9 29       		.byte	0x29
 1151 00ba BE000000 		.4byte	0xbe
 1152 00be 05       		.uleb128 0x5
 1153 00bf 02       		.byte	0x2
 1154 00c0 05       		.byte	0x5
 1155 00c1 47180000 		.4byte	.LASF12
 1156 00c5 03       		.uleb128 0x3
 1157 00c6 12050000 		.4byte	.LASF13
 1158 00ca 06       		.byte	0x6
 1159 00cb 2B       		.byte	0x2b
 1160 00cc D0000000 		.4byte	0xd0
 1161 00d0 05       		.uleb128 0x5
 1162 00d1 02       		.byte	0x2
 1163 00d2 07       		.byte	0x7
 1164 00d3 310D0000 		.4byte	.LASF14
 1165 00d7 03       		.uleb128 0x3
 1166 00d8 77130000 		.4byte	.LASF15
 1167 00dc 06       		.byte	0x6
 1168 00dd 3F       		.byte	0x3f
 1169 00de E2000000 		.4byte	0xe2
 1170 00e2 05       		.uleb128 0x5
 1171 00e3 04       		.byte	0x4
 1172 00e4 05       		.byte	0x5
 1173 00e5 8F0F0000 		.4byte	.LASF16
 1174 00e9 03       		.uleb128 0x3
 1175 00ea 81130000 		.4byte	.LASF17
 1176 00ee 06       		.byte	0x6
 1177 00ef 41       		.byte	0x41
 1178 00f0 F4000000 		.4byte	0xf4
 1179 00f4 05       		.uleb128 0x5
 1180 00f5 04       		.byte	0x4
 1181 00f6 07       		.byte	0x7
 1182 00f7 C2100000 		.4byte	.LASF18
 1183 00fb 03       		.uleb128 0x3
 1184 00fc 720A0000 		.4byte	.LASF19
 1185 0100 06       		.byte	0x6
 1186 0101 59       		.byte	0x59
 1187 0102 70000000 		.4byte	0x70
 1188 0106 03       		.uleb128 0x3
 1189 0107 7C0A0000 		.4byte	.LASF20
 1190 010b 06       		.byte	0x6
 1191 010c 5B       		.byte	0x5b
 1192 010d 11010000 		.4byte	0x111
 1193 0111 05       		.uleb128 0x5
 1194 0112 08       		.byte	0x8
 1195 0113 07       		.byte	0x7
 1196 0114 11150000 		.4byte	.LASF21
 1197 0118 03       		.uleb128 0x3
 1198 0119 8A070000 		.4byte	.LASF22
 1199 011d 06       		.byte	0x6
 1200 011e 78       		.byte	0x78
 1201 011f 9A000000 		.4byte	0x9a
 1202 0123 03       		.uleb128 0x3
 1203 0124 BA0F0000 		.4byte	.LASF23
 1204 0128 06       		.byte	0x6
 1205 0129 7A       		.byte	0x7a
 1206 012a AC000000 		.4byte	0xac
ARM GAS  /tmp/ccbYIR7z.s 			page 66


 1207 012e 03       		.uleb128 0x3
 1208 012f A0130000 		.4byte	.LASF24
 1209 0133 06       		.byte	0x6
 1210 0134 92       		.byte	0x92
 1211 0135 BE000000 		.4byte	0xbe
 1212 0139 03       		.uleb128 0x3
 1213 013a 790E0000 		.4byte	.LASF25
 1214 013e 06       		.byte	0x6
 1215 013f 94       		.byte	0x94
 1216 0140 D0000000 		.4byte	0xd0
 1217 0144 03       		.uleb128 0x3
 1218 0145 43090000 		.4byte	.LASF26
 1219 0149 06       		.byte	0x6
 1220 014a A8       		.byte	0xa8
 1221 014b E2000000 		.4byte	0xe2
 1222 014f 03       		.uleb128 0x3
 1223 0150 9B030000 		.4byte	.LASF27
 1224 0154 06       		.byte	0x6
 1225 0155 AA       		.byte	0xaa
 1226 0156 F4000000 		.4byte	0xf4
 1227 015a 03       		.uleb128 0x3
 1228 015b 12000000 		.4byte	.LASF28
 1229 015f 06       		.byte	0x6
 1230 0160 BA       		.byte	0xba
 1231 0161 70000000 		.4byte	0x70
 1232 0165 03       		.uleb128 0x3
 1233 0166 5A130000 		.4byte	.LASF29
 1234 016a 06       		.byte	0x6
 1235 016b BC       		.byte	0xbc
 1236 016c 11010000 		.4byte	0x111
 1237 0170 03       		.uleb128 0x3
 1238 0171 5C050000 		.4byte	.LASF30
 1239 0175 06       		.byte	0x6
 1240 0176 C8       		.byte	0xc8
 1241 0177 25000000 		.4byte	0x25
 1242 017b 03       		.uleb128 0x3
 1243 017c BF110000 		.4byte	.LASF31
 1244 0180 06       		.byte	0x6
 1245 0181 CA       		.byte	0xca
 1246 0182 3C000000 		.4byte	0x3c
 1247 0186 03       		.uleb128 0x3
 1248 0187 580C0000 		.4byte	.LASF32
 1249 018b 07       		.byte	0x7
 1250 018c 14       		.byte	0x14
 1251 018d 8F000000 		.4byte	0x8f
 1252 0191 03       		.uleb128 0x3
 1253 0192 DC080000 		.4byte	.LASF33
 1254 0196 07       		.byte	0x7
 1255 0197 18       		.byte	0x18
 1256 0198 A1000000 		.4byte	0xa1
 1257 019c 0A       		.uleb128 0xa
 1258 019d 91010000 		.4byte	0x191
 1259 01a1 04       		.uleb128 0x4
 1260 01a2 91010000 		.4byte	0x191
 1261 01a6 03       		.uleb128 0x3
 1262 01a7 220D0000 		.4byte	.LASF34
 1263 01ab 07       		.byte	0x7
ARM GAS  /tmp/ccbYIR7z.s 			page 67


 1264 01ac 20       		.byte	0x20
 1265 01ad B3000000 		.4byte	0xb3
 1266 01b1 03       		.uleb128 0x3
 1267 01b2 96010000 		.4byte	.LASF35
 1268 01b6 07       		.byte	0x7
 1269 01b7 24       		.byte	0x24
 1270 01b8 C5000000 		.4byte	0xc5
 1271 01bc 03       		.uleb128 0x3
 1272 01bd 34030000 		.4byte	.LASF36
 1273 01c1 07       		.byte	0x7
 1274 01c2 2C       		.byte	0x2c
 1275 01c3 D7000000 		.4byte	0xd7
 1276 01c7 0A       		.uleb128 0xa
 1277 01c8 BC010000 		.4byte	0x1bc
 1278 01cc 03       		.uleb128 0x3
 1279 01cd 46100000 		.4byte	.LASF37
 1280 01d1 07       		.byte	0x7
 1281 01d2 30       		.byte	0x30
 1282 01d3 E9000000 		.4byte	0xe9
 1283 01d7 0A       		.uleb128 0xa
 1284 01d8 CC010000 		.4byte	0x1cc
 1285 01dc 04       		.uleb128 0x4
 1286 01dd CC010000 		.4byte	0x1cc
 1287 01e1 03       		.uleb128 0x3
 1288 01e2 A0120000 		.4byte	.LASF38
 1289 01e6 07       		.byte	0x7
 1290 01e7 38       		.byte	0x38
 1291 01e8 FB000000 		.4byte	0xfb
 1292 01ec 03       		.uleb128 0x3
 1293 01ed C5060000 		.4byte	.LASF39
 1294 01f1 07       		.byte	0x7
 1295 01f2 3C       		.byte	0x3c
 1296 01f3 06010000 		.4byte	0x106
 1297 01f7 03       		.uleb128 0x3
 1298 01f8 3D100000 		.4byte	.LASF40
 1299 01fc 07       		.byte	0x7
 1300 01fd 43       		.byte	0x43
 1301 01fe 70010000 		.4byte	0x170
 1302 0202 03       		.uleb128 0x3
 1303 0203 80100000 		.4byte	.LASF41
 1304 0207 07       		.byte	0x7
 1305 0208 48       		.byte	0x48
 1306 0209 7B010000 		.4byte	0x17b
 1307 020d 03       		.uleb128 0x3
 1308 020e 6E040000 		.4byte	.LASF42
 1309 0212 08       		.byte	0x8
 1310 0213 15       		.byte	0x15
 1311 0214 18010000 		.4byte	0x118
 1312 0218 03       		.uleb128 0x3
 1313 0219 E9120000 		.4byte	.LASF43
 1314 021d 08       		.byte	0x8
 1315 021e 16       		.byte	0x16
 1316 021f 23010000 		.4byte	0x123
 1317 0223 03       		.uleb128 0x3
 1318 0224 55160000 		.4byte	.LASF44
 1319 0228 08       		.byte	0x8
 1320 0229 1B       		.byte	0x1b
ARM GAS  /tmp/ccbYIR7z.s 			page 68


 1321 022a 2E010000 		.4byte	0x12e
 1322 022e 03       		.uleb128 0x3
 1323 022f 3F110000 		.4byte	.LASF45
 1324 0233 08       		.byte	0x8
 1325 0234 1C       		.byte	0x1c
 1326 0235 39010000 		.4byte	0x139
 1327 0239 03       		.uleb128 0x3
 1328 023a 7E0C0000 		.4byte	.LASF46
 1329 023e 08       		.byte	0x8
 1330 023f 21       		.byte	0x21
 1331 0240 44010000 		.4byte	0x144
 1332 0244 03       		.uleb128 0x3
 1333 0245 46060000 		.4byte	.LASF47
 1334 0249 08       		.byte	0x8
 1335 024a 22       		.byte	0x22
 1336 024b 4F010000 		.4byte	0x14f
 1337 024f 03       		.uleb128 0x3
 1338 0250 C7030000 		.4byte	.LASF48
 1339 0254 08       		.byte	0x8
 1340 0255 27       		.byte	0x27
 1341 0256 5A010000 		.4byte	0x15a
 1342 025a 03       		.uleb128 0x3
 1343 025b B50A0000 		.4byte	.LASF49
 1344 025f 08       		.byte	0x8
 1345 0260 28       		.byte	0x28
 1346 0261 65010000 		.4byte	0x165
 1347 0265 03       		.uleb128 0x3
 1348 0266 AA150000 		.4byte	.LASF50
 1349 026a 08       		.byte	0x8
 1350 026b 33       		.byte	0x33
 1351 026c 25000000 		.4byte	0x25
 1352 0270 03       		.uleb128 0x3
 1353 0271 1C180000 		.4byte	.LASF51
 1354 0275 08       		.byte	0x8
 1355 0276 34       		.byte	0x34
 1356 0277 3C000000 		.4byte	0x3c
 1357 027b 03       		.uleb128 0x3
 1358 027c F80B0000 		.4byte	.LASF52
 1359 0280 08       		.byte	0x8
 1360 0281 3D       		.byte	0x3d
 1361 0282 25000000 		.4byte	0x25
 1362 0286 03       		.uleb128 0x3
 1363 0287 700C0000 		.4byte	.LASF53
 1364 028b 08       		.byte	0x8
 1365 028c 3E       		.byte	0x3e
 1366 028d 3C000000 		.4byte	0x3c
 1367 0291 03       		.uleb128 0x3
 1368 0292 81010000 		.4byte	.LASF54
 1369 0296 08       		.byte	0x8
 1370 0297 47       		.byte	0x47
 1371 0298 25000000 		.4byte	0x25
 1372 029c 03       		.uleb128 0x3
 1373 029d 3D020000 		.4byte	.LASF55
 1374 02a1 08       		.byte	0x8
 1375 02a2 48       		.byte	0x48
 1376 02a3 3C000000 		.4byte	0x3c
 1377 02a7 03       		.uleb128 0x3
ARM GAS  /tmp/ccbYIR7z.s 			page 69


 1378 02a8 B2110000 		.4byte	.LASF56
 1379 02ac 08       		.byte	0x8
 1380 02ad 51       		.byte	0x51
 1381 02ae 70000000 		.4byte	0x70
 1382 02b2 03       		.uleb128 0x3
 1383 02b3 17120000 		.4byte	.LASF57
 1384 02b7 08       		.byte	0x8
 1385 02b8 52       		.byte	0x52
 1386 02b9 11010000 		.4byte	0x111
 1387 02bd 03       		.uleb128 0x3
 1388 02be 3C030000 		.4byte	.LASF58
 1389 02c2 08       		.byte	0x8
 1390 02c3 82       		.byte	0x82
 1391 02c4 70000000 		.4byte	0x70
 1392 02c8 03       		.uleb128 0x3
 1393 02c9 75030000 		.4byte	.LASF59
 1394 02cd 08       		.byte	0x8
 1395 02ce 8B       		.byte	0x8b
 1396 02cf 11010000 		.4byte	0x111
 1397 02d3 0B       		.uleb128 0xb
 1398 02d4 8A120000 		.4byte	.LASF367
 1399 02d8 01       		.byte	0x1
 1400 02d9 9A000000 		.4byte	0x9a
 1401 02dd 09       		.byte	0x9
 1402 02de 48       		.byte	0x48
 1403 02df 76040000 		.4byte	0x476
 1404 02e3 0C       		.uleb128 0xc
 1405 02e4 58140000 		.4byte	.LASF60
 1406 02e8 72       		.sleb128 -14
 1407 02e9 0C       		.uleb128 0xc
 1408 02ea 55060000 		.4byte	.LASF61
 1409 02ee 73       		.sleb128 -13
 1410 02ef 0C       		.uleb128 0xc
 1411 02f0 D10C0000 		.4byte	.LASF62
 1412 02f4 74       		.sleb128 -12
 1413 02f5 0C       		.uleb128 0xc
 1414 02f6 C4180000 		.4byte	.LASF63
 1415 02fa 75       		.sleb128 -11
 1416 02fb 0C       		.uleb128 0xc
 1417 02fc C90B0000 		.4byte	.LASF64
 1418 0300 76       		.sleb128 -10
 1419 0301 0C       		.uleb128 0xc
 1420 0302 D5030000 		.4byte	.LASF65
 1421 0306 7B       		.sleb128 -5
 1422 0307 0C       		.uleb128 0xc
 1423 0308 94000000 		.4byte	.LASF66
 1424 030c 7C       		.sleb128 -4
 1425 030d 0C       		.uleb128 0xc
 1426 030e F6150000 		.4byte	.LASF67
 1427 0312 7E       		.sleb128 -2
 1428 0313 0C       		.uleb128 0xc
 1429 0314 BA130000 		.4byte	.LASF68
 1430 0318 7F       		.sleb128 -1
 1431 0319 0D       		.uleb128 0xd
 1432 031a 25120000 		.4byte	.LASF69
 1433 031e 00       		.byte	0
 1434 031f 0D       		.uleb128 0xd
ARM GAS  /tmp/ccbYIR7z.s 			page 70


 1435 0320 080D0000 		.4byte	.LASF70
 1436 0324 01       		.byte	0x1
 1437 0325 0D       		.uleb128 0xd
 1438 0326 EE030000 		.4byte	.LASF71
 1439 032a 02       		.byte	0x2
 1440 032b 0D       		.uleb128 0xd
 1441 032c 120D0000 		.4byte	.LASF72
 1442 0330 03       		.byte	0x3
 1443 0331 0D       		.uleb128 0xd
 1444 0332 23140000 		.4byte	.LASF73
 1445 0336 04       		.byte	0x4
 1446 0337 0D       		.uleb128 0xd
 1447 0338 A60F0000 		.4byte	.LASF74
 1448 033c 05       		.byte	0x5
 1449 033d 0D       		.uleb128 0xd
 1450 033e 09000000 		.4byte	.LASF75
 1451 0342 06       		.byte	0x6
 1452 0343 0D       		.uleb128 0xd
 1453 0344 C7160000 		.4byte	.LASF76
 1454 0348 07       		.byte	0x7
 1455 0349 0D       		.uleb128 0xd
 1456 034a 95160000 		.4byte	.LASF77
 1457 034e 08       		.byte	0x8
 1458 034f 0D       		.uleb128 0xd
 1459 0350 47170000 		.4byte	.LASF78
 1460 0354 0A       		.byte	0xa
 1461 0355 0D       		.uleb128 0xd
 1462 0356 64090000 		.4byte	.LASF79
 1463 035a 0B       		.byte	0xb
 1464 035b 0D       		.uleb128 0xd
 1465 035c 0B090000 		.4byte	.LASF80
 1466 0360 0C       		.byte	0xc
 1467 0361 0D       		.uleb128 0xd
 1468 0362 CE060000 		.4byte	.LASF81
 1469 0366 0D       		.byte	0xd
 1470 0367 0D       		.uleb128 0xd
 1471 0368 CB110000 		.4byte	.LASF82
 1472 036c 0E       		.byte	0xe
 1473 036d 0D       		.uleb128 0xd
 1474 036e 88110000 		.4byte	.LASF83
 1475 0372 0F       		.byte	0xf
 1476 0373 0D       		.uleb128 0xd
 1477 0374 9E080000 		.4byte	.LASF84
 1478 0378 10       		.byte	0x10
 1479 0379 0D       		.uleb128 0xd
 1480 037a 32130000 		.4byte	.LASF85
 1481 037e 11       		.byte	0x11
 1482 037f 0D       		.uleb128 0xd
 1483 0380 AF0F0000 		.4byte	.LASF86
 1484 0384 12       		.byte	0x12
 1485 0385 0D       		.uleb128 0xd
 1486 0386 8F060000 		.4byte	.LASF87
 1487 038a 13       		.byte	0x13
 1488 038b 0D       		.uleb128 0xd
 1489 038c 94110000 		.4byte	.LASF88
 1490 0390 14       		.byte	0x14
 1491 0391 0D       		.uleb128 0xd
ARM GAS  /tmp/ccbYIR7z.s 			page 71


 1492 0392 39080000 		.4byte	.LASF89
 1493 0396 15       		.byte	0x15
 1494 0397 0D       		.uleb128 0xd
 1495 0398 0A0A0000 		.4byte	.LASF90
 1496 039c 16       		.byte	0x16
 1497 039d 0D       		.uleb128 0xd
 1498 039e C3050000 		.4byte	.LASF91
 1499 03a2 17       		.byte	0x17
 1500 03a3 0D       		.uleb128 0xd
 1501 03a4 2A050000 		.4byte	.LASF92
 1502 03a8 18       		.byte	0x18
 1503 03a9 0D       		.uleb128 0xd
 1504 03aa FF040000 		.4byte	.LASF93
 1505 03ae 19       		.byte	0x19
 1506 03af 0D       		.uleb128 0xd
 1507 03b0 CA0F0000 		.4byte	.LASF94
 1508 03b4 1A       		.byte	0x1a
 1509 03b5 0D       		.uleb128 0xd
 1510 03b6 860F0000 		.4byte	.LASF95
 1511 03ba 1B       		.byte	0x1b
 1512 03bb 0D       		.uleb128 0xd
 1513 03bc 360F0000 		.4byte	.LASF96
 1514 03c0 1C       		.byte	0x1c
 1515 03c1 0D       		.uleb128 0xd
 1516 03c2 22000000 		.4byte	.LASF97
 1517 03c6 1D       		.byte	0x1d
 1518 03c7 0D       		.uleb128 0xd
 1519 03c8 FF110000 		.4byte	.LASF98
 1520 03cc 1E       		.byte	0x1e
 1521 03cd 0D       		.uleb128 0xd
 1522 03ce 50130000 		.4byte	.LASF99
 1523 03d2 1F       		.byte	0x1f
 1524 03d3 0D       		.uleb128 0xd
 1525 03d4 D30F0000 		.4byte	.LASF100
 1526 03d8 20       		.byte	0x20
 1527 03d9 0D       		.uleb128 0xd
 1528 03da 28150000 		.4byte	.LASF101
 1529 03de 21       		.byte	0x21
 1530 03df 0D       		.uleb128 0xd
 1531 03e0 D2010000 		.4byte	.LASF102
 1532 03e4 22       		.byte	0x22
 1533 03e5 0D       		.uleb128 0xd
 1534 03e6 51180000 		.4byte	.LASF103
 1535 03ea 23       		.byte	0x23
 1536 03eb 0D       		.uleb128 0xd
 1537 03ec FF090000 		.4byte	.LASF104
 1538 03f0 25       		.byte	0x25
 1539 03f1 0D       		.uleb128 0xd
 1540 03f2 160B0000 		.4byte	.LASF105
 1541 03f6 27       		.byte	0x27
 1542 03f7 0D       		.uleb128 0xd
 1543 03f8 AF180000 		.4byte	.LASF106
 1544 03fc 28       		.byte	0x28
 1545 03fd 0D       		.uleb128 0xd
 1546 03fe 2B110000 		.4byte	.LASF107
 1547 0402 29       		.byte	0x29
 1548 0403 0D       		.uleb128 0xd
ARM GAS  /tmp/ccbYIR7z.s 			page 72


 1549 0404 C0070000 		.4byte	.LASF108
 1550 0408 2A       		.byte	0x2a
 1551 0409 0D       		.uleb128 0xd
 1552 040a 70000000 		.4byte	.LASF109
 1553 040e 2B       		.byte	0x2b
 1554 040f 0D       		.uleb128 0xd
 1555 0410 E9080000 		.4byte	.LASF110
 1556 0414 2C       		.byte	0x2c
 1557 0415 0D       		.uleb128 0xd
 1558 0416 43080000 		.4byte	.LASF111
 1559 041a 2D       		.byte	0x2d
 1560 041b 0D       		.uleb128 0xd
 1561 041c DE070000 		.4byte	.LASF112
 1562 0420 2E       		.byte	0x2e
 1563 0421 0D       		.uleb128 0xd
 1564 0422 37000000 		.4byte	.LASF113
 1565 0426 2F       		.byte	0x2f
 1566 0427 0D       		.uleb128 0xd
 1567 0428 00000000 		.4byte	.LASF114
 1568 042c 30       		.byte	0x30
 1569 042d 0D       		.uleb128 0xd
 1570 042e 8F180000 		.4byte	.LASF115
 1571 0432 31       		.byte	0x31
 1572 0433 0D       		.uleb128 0xd
 1573 0434 300A0000 		.4byte	.LASF116
 1574 0438 32       		.byte	0x32
 1575 0439 0D       		.uleb128 0xd
 1576 043a 640B0000 		.4byte	.LASF117
 1577 043e 33       		.byte	0x33
 1578 043f 0D       		.uleb128 0xd
 1579 0440 A0110000 		.4byte	.LASF118
 1580 0444 34       		.byte	0x34
 1581 0445 0D       		.uleb128 0xd
 1582 0446 B9100000 		.4byte	.LASF119
 1583 044a 38       		.byte	0x38
 1584 044b 0D       		.uleb128 0xd
 1585 044c 98040000 		.4byte	.LASF120
 1586 0450 39       		.byte	0x39
 1587 0451 0D       		.uleb128 0xd
 1588 0452 6C140000 		.4byte	.LASF121
 1589 0456 3A       		.byte	0x3a
 1590 0457 0D       		.uleb128 0xd
 1591 0458 98020000 		.4byte	.LASF122
 1592 045c 3B       		.byte	0x3b
 1593 045d 0D       		.uleb128 0xd
 1594 045e 0D100000 		.4byte	.LASF123
 1595 0462 3C       		.byte	0x3c
 1596 0463 0D       		.uleb128 0xd
 1597 0464 6B130000 		.4byte	.LASF124
 1598 0468 3E       		.byte	0x3e
 1599 0469 0D       		.uleb128 0xd
 1600 046a 200B0000 		.4byte	.LASF125
 1601 046e 3F       		.byte	0x3f
 1602 046f 0D       		.uleb128 0xd
 1603 0470 66010000 		.4byte	.LASF126
 1604 0474 40       		.byte	0x40
 1605 0475 00       		.byte	0
ARM GAS  /tmp/ccbYIR7z.s 			page 73


 1606 0476 03       		.uleb128 0x3
 1607 0477 3A0C0000 		.4byte	.LASF127
 1608 047b 09       		.byte	0x9
 1609 047c 91       		.byte	0x91
 1610 047d D3020000 		.4byte	0x2d3
 1611 0481 0E       		.uleb128 0xe
 1612 0482 04       		.byte	0x4
 1613 0483 0F       		.uleb128 0xf
 1614 0484 040E     		.2byte	0xe04
 1615 0486 02       		.byte	0x2
 1616 0487 7B01     		.2byte	0x17b
 1617 0489 440C0000 		.4byte	.LASF544
 1618 048d 43050000 		.4byte	0x543
 1619 0491 07       		.uleb128 0x7
 1620 0492 4F100000 		.4byte	.LASF128
 1621 0496 02       		.byte	0x2
 1622 0497 7C01     		.2byte	0x17c
 1623 0499 53050000 		.4byte	0x553
 1624 049d 00       		.byte	0
 1625 049e 07       		.uleb128 0x7
 1626 049f 77140000 		.4byte	.LASF129
 1627 04a3 02       		.byte	0x2
 1628 04a4 7D01     		.2byte	0x17d
 1629 04a6 5F050000 		.4byte	0x55f
 1630 04aa 20       		.byte	0x20
 1631 04ab 07       		.uleb128 0x7
 1632 04ac BC020000 		.4byte	.LASF130
 1633 04b0 02       		.byte	0x2
 1634 04b1 7E01     		.2byte	0x17e
 1635 04b3 53050000 		.4byte	0x553
 1636 04b7 80       		.byte	0x80
 1637 04b8 07       		.uleb128 0x7
 1638 04b9 9F010000 		.4byte	.LASF131
 1639 04bd 02       		.byte	0x2
 1640 04be 7F01     		.2byte	0x17f
 1641 04c0 5F050000 		.4byte	0x55f
 1642 04c4 A0       		.byte	0xa0
 1643 04c5 10       		.uleb128 0x10
 1644 04c6 CA140000 		.4byte	.LASF132
 1645 04ca 02       		.byte	0x2
 1646 04cb 8001     		.2byte	0x180
 1647 04cd 53050000 		.4byte	0x553
 1648 04d1 0001     		.2byte	0x100
 1649 04d3 10       		.uleb128 0x10
 1650 04d4 81140000 		.4byte	.LASF133
 1651 04d8 02       		.byte	0x2
 1652 04d9 8101     		.2byte	0x181
 1653 04db 5F050000 		.4byte	0x55f
 1654 04df 2001     		.2byte	0x120
 1655 04e1 10       		.uleb128 0x10
 1656 04e2 8A060000 		.4byte	.LASF134
 1657 04e6 02       		.byte	0x2
 1658 04e7 8201     		.2byte	0x182
 1659 04e9 53050000 		.4byte	0x553
 1660 04ed 8001     		.2byte	0x180
 1661 04ef 10       		.uleb128 0x10
 1662 04f0 8B140000 		.4byte	.LASF135
ARM GAS  /tmp/ccbYIR7z.s 			page 74


 1663 04f4 02       		.byte	0x2
 1664 04f5 8301     		.2byte	0x183
 1665 04f7 5F050000 		.4byte	0x55f
 1666 04fb A001     		.2byte	0x1a0
 1667 04fd 10       		.uleb128 0x10
 1668 04fe 4E150000 		.4byte	.LASF136
 1669 0502 02       		.byte	0x2
 1670 0503 8401     		.2byte	0x184
 1671 0505 53050000 		.4byte	0x553
 1672 0509 0002     		.2byte	0x200
 1673 050b 10       		.uleb128 0x10
 1674 050c 95140000 		.4byte	.LASF137
 1675 0510 02       		.byte	0x2
 1676 0511 8501     		.2byte	0x185
 1677 0513 6F050000 		.4byte	0x56f
 1678 0517 2002     		.2byte	0x220
 1679 0519 11       		.uleb128 0x11
 1680 051a 495000   		.ascii	"IP\000"
 1681 051d 02       		.byte	0x2
 1682 051e 8601     		.2byte	0x186
 1683 0520 8F050000 		.4byte	0x58f
 1684 0524 0003     		.2byte	0x300
 1685 0526 10       		.uleb128 0x10
 1686 0527 9F140000 		.4byte	.LASF138
 1687 052b 02       		.byte	0x2
 1688 052c 8701     		.2byte	0x187
 1689 052e 94050000 		.4byte	0x594
 1690 0532 F003     		.2byte	0x3f0
 1691 0534 10       		.uleb128 0x10
 1692 0535 E40F0000 		.4byte	.LASF139
 1693 0539 02       		.byte	0x2
 1694 053a 8801     		.2byte	0x188
 1695 053c D7010000 		.4byte	0x1d7
 1696 0540 000E     		.2byte	0xe00
 1697 0542 00       		.byte	0
 1698 0543 12       		.uleb128 0x12
 1699 0544 D7010000 		.4byte	0x1d7
 1700 0548 53050000 		.4byte	0x553
 1701 054c 13       		.uleb128 0x13
 1702 054d 58050000 		.4byte	0x558
 1703 0551 07       		.byte	0x7
 1704 0552 00       		.byte	0
 1705 0553 0A       		.uleb128 0xa
 1706 0554 43050000 		.4byte	0x543
 1707 0558 05       		.uleb128 0x5
 1708 0559 04       		.byte	0x4
 1709 055a 07       		.byte	0x7
 1710 055b C20C0000 		.4byte	.LASF140
 1711 055f 12       		.uleb128 0x12
 1712 0560 CC010000 		.4byte	0x1cc
 1713 0564 6F050000 		.4byte	0x56f
 1714 0568 13       		.uleb128 0x13
 1715 0569 58050000 		.4byte	0x558
 1716 056d 17       		.byte	0x17
 1717 056e 00       		.byte	0
 1718 056f 12       		.uleb128 0x12
 1719 0570 CC010000 		.4byte	0x1cc
ARM GAS  /tmp/ccbYIR7z.s 			page 75


 1720 0574 7F050000 		.4byte	0x57f
 1721 0578 13       		.uleb128 0x13
 1722 0579 58050000 		.4byte	0x558
 1723 057d 37       		.byte	0x37
 1724 057e 00       		.byte	0
 1725 057f 12       		.uleb128 0x12
 1726 0580 9C010000 		.4byte	0x19c
 1727 0584 8F050000 		.4byte	0x58f
 1728 0588 13       		.uleb128 0x13
 1729 0589 58050000 		.4byte	0x558
 1730 058d EF       		.byte	0xef
 1731 058e 00       		.byte	0
 1732 058f 0A       		.uleb128 0xa
 1733 0590 7F050000 		.4byte	0x57f
 1734 0594 12       		.uleb128 0x12
 1735 0595 CC010000 		.4byte	0x1cc
 1736 0599 A5050000 		.4byte	0x5a5
 1737 059d 14       		.uleb128 0x14
 1738 059e 58050000 		.4byte	0x558
 1739 05a2 8302     		.2byte	0x283
 1740 05a4 00       		.byte	0
 1741 05a5 08       		.uleb128 0x8
 1742 05a6 C1090000 		.4byte	.LASF141
 1743 05aa 02       		.byte	0x2
 1744 05ab 8901     		.2byte	0x189
 1745 05ad 83040000 		.4byte	0x483
 1746 05b1 12       		.uleb128 0x12
 1747 05b2 D7010000 		.4byte	0x1d7
 1748 05b6 C1050000 		.4byte	0x5c1
 1749 05ba 13       		.uleb128 0x13
 1750 05bb 58050000 		.4byte	0x558
 1751 05bf 01       		.byte	0x1
 1752 05c0 00       		.byte	0
 1753 05c1 0A       		.uleb128 0xa
 1754 05c2 B1050000 		.4byte	0x5b1
 1755 05c6 12       		.uleb128 0x12
 1756 05c7 D7010000 		.4byte	0x1d7
 1757 05cb D6050000 		.4byte	0x5d6
 1758 05cf 13       		.uleb128 0x13
 1759 05d0 58050000 		.4byte	0x558
 1760 05d4 04       		.byte	0x4
 1761 05d5 00       		.byte	0
 1762 05d6 0A       		.uleb128 0xa
 1763 05d7 C6050000 		.4byte	0x5c6
 1764 05db 15       		.uleb128 0x15
 1765 05dc F9140000 		.4byte	.LASF142
 1766 05e0 02       		.byte	0x2
 1767 05e1 6508     		.2byte	0x865
 1768 05e3 C7010000 		.4byte	0x1c7
 1769 05e7 16       		.uleb128 0x16
 1770 05e8 C40E0000 		.4byte	.LASF143
 1771 05ec 0A       		.byte	0xa
 1772 05ed 3A       		.byte	0x3a
 1773 05ee CC010000 		.4byte	0x1cc
 1774 05f2 12       		.uleb128 0x12
 1775 05f3 D7010000 		.4byte	0x1d7
 1776 05f7 02060000 		.4byte	0x602
ARM GAS  /tmp/ccbYIR7z.s 			page 76


 1777 05fb 13       		.uleb128 0x13
 1778 05fc 58050000 		.4byte	0x558
 1779 0600 00       		.byte	0
 1780 0601 00       		.byte	0
 1781 0602 0A       		.uleb128 0xa
 1782 0603 F2050000 		.4byte	0x5f2
 1783 0607 12       		.uleb128 0x12
 1784 0608 D7010000 		.4byte	0x1d7
 1785 060c 17060000 		.4byte	0x617
 1786 0610 13       		.uleb128 0x13
 1787 0611 58050000 		.4byte	0x558
 1788 0615 0C       		.byte	0xc
 1789 0616 00       		.byte	0
 1790 0617 0A       		.uleb128 0xa
 1791 0618 07060000 		.4byte	0x607
 1792 061c 17       		.uleb128 0x17
 1793 061d 6801     		.2byte	0x168
 1794 061f 0B       		.byte	0xb
 1795 0620 38       		.byte	0x38
 1796 0621 25080000 		.4byte	.LASF545
 1797 0625 64090000 		.4byte	0x964
 1798 0629 18       		.uleb128 0x18
 1799 062a 45120000 		.4byte	.LASF144
 1800 062e 0B       		.byte	0xb
 1801 062f 39       		.byte	0x39
 1802 0630 D7010000 		.4byte	0x1d7
 1803 0634 00       		.byte	0
 1804 0635 18       		.uleb128 0x18
 1805 0636 0F120000 		.4byte	.LASF145
 1806 063a 0B       		.byte	0xb
 1807 063b 3A       		.byte	0x3a
 1808 063c D7010000 		.4byte	0x1d7
 1809 0640 04       		.byte	0x4
 1810 0641 18       		.uleb128 0x18
 1811 0642 F7170000 		.4byte	.LASF146
 1812 0646 0B       		.byte	0xb
 1813 0647 3B       		.byte	0x3b
 1814 0648 D7010000 		.4byte	0x1d7
 1815 064c 08       		.byte	0x8
 1816 064d 18       		.uleb128 0x18
 1817 064e 8B170000 		.4byte	.LASF147
 1818 0652 0B       		.byte	0xb
 1819 0653 3C       		.byte	0x3c
 1820 0654 02060000 		.4byte	0x602
 1821 0658 0C       		.byte	0xc
 1822 0659 18       		.uleb128 0x18
 1823 065a 54100000 		.4byte	.LASF148
 1824 065e 0B       		.byte	0xb
 1825 065f 3D       		.byte	0x3d
 1826 0660 D7010000 		.4byte	0x1d7
 1827 0664 10       		.byte	0x10
 1828 0665 18       		.uleb128 0x18
 1829 0666 DC0F0000 		.4byte	.LASF149
 1830 066a 0B       		.byte	0xb
 1831 066b 3E       		.byte	0x3e
 1832 066c D7010000 		.4byte	0x1d7
 1833 0670 14       		.byte	0x14
ARM GAS  /tmp/ccbYIR7z.s 			page 77


 1834 0671 18       		.uleb128 0x18
 1835 0672 A2150000 		.4byte	.LASF150
 1836 0676 0B       		.byte	0xb
 1837 0677 3F       		.byte	0x3f
 1838 0678 D7010000 		.4byte	0x1d7
 1839 067c 18       		.byte	0x18
 1840 067d 18       		.uleb128 0x18
 1841 067e 95170000 		.4byte	.LASF151
 1842 0682 0B       		.byte	0xb
 1843 0683 40       		.byte	0x40
 1844 0684 02060000 		.4byte	0x602
 1845 0688 1C       		.byte	0x1c
 1846 0689 18       		.uleb128 0x18
 1847 068a 500D0000 		.4byte	.LASF152
 1848 068e 0B       		.byte	0xb
 1849 068f 41       		.byte	0x41
 1850 0690 D7010000 		.4byte	0x1d7
 1851 0694 20       		.byte	0x20
 1852 0695 18       		.uleb128 0x18
 1853 0696 B90C0000 		.4byte	.LASF153
 1854 069a 0B       		.byte	0xb
 1855 069b 42       		.byte	0x42
 1856 069c D7010000 		.4byte	0x1d7
 1857 06a0 24       		.byte	0x24
 1858 06a1 18       		.uleb128 0x18
 1859 06a2 29130000 		.4byte	.LASF154
 1860 06a6 0B       		.byte	0xb
 1861 06a7 43       		.byte	0x43
 1862 06a8 D7010000 		.4byte	0x1d7
 1863 06ac 28       		.byte	0x28
 1864 06ad 18       		.uleb128 0x18
 1865 06ae 9F170000 		.4byte	.LASF155
 1866 06b2 0B       		.byte	0xb
 1867 06b3 44       		.byte	0x44
 1868 06b4 02060000 		.4byte	0x602
 1869 06b8 2C       		.byte	0x2c
 1870 06b9 18       		.uleb128 0x18
 1871 06ba 42050000 		.4byte	.LASF156
 1872 06be 0B       		.byte	0xb
 1873 06bf 45       		.byte	0x45
 1874 06c0 D7010000 		.4byte	0x1d7
 1875 06c4 30       		.byte	0x30
 1876 06c5 18       		.uleb128 0x18
 1877 06c6 4F0C0000 		.4byte	.LASF157
 1878 06ca 0B       		.byte	0xb
 1879 06cb 46       		.byte	0x46
 1880 06cc D7010000 		.4byte	0x1d7
 1881 06d0 34       		.byte	0x34
 1882 06d1 18       		.uleb128 0x18
 1883 06d2 D90B0000 		.4byte	.LASF158
 1884 06d6 0B       		.byte	0xb
 1885 06d7 47       		.byte	0x47
 1886 06d8 D7010000 		.4byte	0x1d7
 1887 06dc 38       		.byte	0x38
 1888 06dd 18       		.uleb128 0x18
 1889 06de 35170000 		.4byte	.LASF159
 1890 06e2 0B       		.byte	0xb
ARM GAS  /tmp/ccbYIR7z.s 			page 78


 1891 06e3 48       		.byte	0x48
 1892 06e4 D7010000 		.4byte	0x1d7
 1893 06e8 3C       		.byte	0x3c
 1894 06e9 18       		.uleb128 0x18
 1895 06ea 8E010000 		.4byte	.LASF160
 1896 06ee 0B       		.byte	0xb
 1897 06ef 49       		.byte	0x49
 1898 06f0 D7010000 		.4byte	0x1d7
 1899 06f4 40       		.byte	0x40
 1900 06f5 18       		.uleb128 0x18
 1901 06f6 1B010000 		.4byte	.LASF161
 1902 06fa 0B       		.byte	0xb
 1903 06fb 4A       		.byte	0x4a
 1904 06fc D7010000 		.4byte	0x1d7
 1905 0700 44       		.byte	0x44
 1906 0701 18       		.uleb128 0x18
 1907 0702 E7040000 		.4byte	.LASF162
 1908 0706 0B       		.byte	0xb
 1909 0707 4B       		.byte	0x4b
 1910 0708 D7010000 		.4byte	0x1d7
 1911 070c 48       		.byte	0x48
 1912 070d 18       		.uleb128 0x18
 1913 070e DA060000 		.4byte	.LASF163
 1914 0712 0B       		.byte	0xb
 1915 0713 4C       		.byte	0x4c
 1916 0714 D7010000 		.4byte	0x1d7
 1917 0718 4C       		.byte	0x4c
 1918 0719 18       		.uleb128 0x18
 1919 071a A6060000 		.4byte	.LASF164
 1920 071e 0B       		.byte	0xb
 1921 071f 4D       		.byte	0x4d
 1922 0720 D7010000 		.4byte	0x1d7
 1923 0724 50       		.byte	0x50
 1924 0725 18       		.uleb128 0x18
 1925 0726 3D060000 		.4byte	.LASF165
 1926 072a 0B       		.byte	0xb
 1927 072b 4E       		.byte	0x4e
 1928 072c D7010000 		.4byte	0x1d7
 1929 0730 54       		.byte	0x54
 1930 0731 18       		.uleb128 0x18
 1931 0732 670C0000 		.4byte	.LASF166
 1932 0736 0B       		.byte	0xb
 1933 0737 4F       		.byte	0x4f
 1934 0738 D7010000 		.4byte	0x1d7
 1935 073c 58       		.byte	0x58
 1936 073d 18       		.uleb128 0x18
 1937 073e A9170000 		.4byte	.LASF167
 1938 0742 0B       		.byte	0xb
 1939 0743 50       		.byte	0x50
 1940 0744 02060000 		.4byte	0x602
 1941 0748 5C       		.byte	0x5c
 1942 0749 18       		.uleb128 0x18
 1943 074a CB080000 		.4byte	.LASF168
 1944 074e 0B       		.byte	0xb
 1945 074f 51       		.byte	0x51
 1946 0750 D7010000 		.4byte	0x1d7
 1947 0754 60       		.byte	0x60
ARM GAS  /tmp/ccbYIR7z.s 			page 79


 1948 0755 18       		.uleb128 0x18
 1949 0756 53090000 		.4byte	.LASF169
 1950 075a 0B       		.byte	0xb
 1951 075b 52       		.byte	0x52
 1952 075c D7010000 		.4byte	0x1d7
 1953 0760 64       		.byte	0x64
 1954 0761 18       		.uleb128 0x18
 1955 0762 500F0000 		.4byte	.LASF170
 1956 0766 0B       		.byte	0xb
 1957 0767 53       		.byte	0x53
 1958 0768 D7010000 		.4byte	0x1d7
 1959 076c 68       		.byte	0x68
 1960 076d 18       		.uleb128 0x18
 1961 076e B3170000 		.4byte	.LASF171
 1962 0772 0B       		.byte	0xb
 1963 0773 54       		.byte	0x54
 1964 0774 02060000 		.4byte	0x602
 1965 0778 6C       		.byte	0x6c
 1966 0779 18       		.uleb128 0x18
 1967 077a 410A0000 		.4byte	.LASF172
 1968 077e 0B       		.byte	0xb
 1969 077f 55       		.byte	0x55
 1970 0780 C1050000 		.4byte	0x5c1
 1971 0784 70       		.byte	0x70
 1972 0785 18       		.uleb128 0x18
 1973 0786 BD170000 		.4byte	.LASF173
 1974 078a 0B       		.byte	0xb
 1975 078b 56       		.byte	0x56
 1976 078c C1050000 		.4byte	0x5c1
 1977 0790 78       		.byte	0x78
 1978 0791 18       		.uleb128 0x18
 1979 0792 2C140000 		.4byte	.LASF174
 1980 0796 0B       		.byte	0xb
 1981 0797 57       		.byte	0x57
 1982 0798 D7010000 		.4byte	0x1d7
 1983 079c 80       		.byte	0x80
 1984 079d 18       		.uleb128 0x18
 1985 079e B8140000 		.4byte	.LASF175
 1986 07a2 0B       		.byte	0xb
 1987 07a3 58       		.byte	0x58
 1988 07a4 D7010000 		.4byte	0x1d7
 1989 07a8 84       		.byte	0x84
 1990 07a9 18       		.uleb128 0x18
 1991 07aa 23010000 		.4byte	.LASF176
 1992 07ae 0B       		.byte	0xb
 1993 07af 59       		.byte	0x59
 1994 07b0 D7010000 		.4byte	0x1d7
 1995 07b4 88       		.byte	0x88
 1996 07b5 18       		.uleb128 0x18
 1997 07b6 78010000 		.4byte	.LASF177
 1998 07ba 0B       		.byte	0xb
 1999 07bb 5A       		.byte	0x5a
 2000 07bc D7010000 		.4byte	0x1d7
 2001 07c0 8C       		.byte	0x8c
 2002 07c1 18       		.uleb128 0x18
 2003 07c2 BA180000 		.4byte	.LASF178
 2004 07c6 0B       		.byte	0xb
ARM GAS  /tmp/ccbYIR7z.s 			page 80


 2005 07c7 5B       		.byte	0x5b
 2006 07c8 D7010000 		.4byte	0x1d7
 2007 07cc 90       		.byte	0x90
 2008 07cd 18       		.uleb128 0x18
 2009 07ce 2D000000 		.4byte	.LASF179
 2010 07d2 0B       		.byte	0xb
 2011 07d3 5C       		.byte	0x5c
 2012 07d4 D7010000 		.4byte	0x1d7
 2013 07d8 94       		.byte	0x94
 2014 07d9 18       		.uleb128 0x18
 2015 07da 09060000 		.4byte	.LASF180
 2016 07de 0B       		.byte	0xb
 2017 07df 5D       		.byte	0x5d
 2018 07e0 D7010000 		.4byte	0x1d7
 2019 07e4 98       		.byte	0x98
 2020 07e5 18       		.uleb128 0x18
 2021 07e6 C7170000 		.4byte	.LASF181
 2022 07ea 0B       		.byte	0xb
 2023 07eb 5E       		.byte	0x5e
 2024 07ec 02060000 		.4byte	0x602
 2025 07f0 9C       		.byte	0x9c
 2026 07f1 18       		.uleb128 0x18
 2027 07f2 19020000 		.4byte	.LASF182
 2028 07f6 0B       		.byte	0xb
 2029 07f7 5F       		.byte	0x5f
 2030 07f8 D7010000 		.4byte	0x1d7
 2031 07fc A0       		.byte	0xa0
 2032 07fd 18       		.uleb128 0x18
 2033 07fe 29180000 		.4byte	.LASF183
 2034 0802 0B       		.byte	0xb
 2035 0803 60       		.byte	0x60
 2036 0804 D7010000 		.4byte	0x1d7
 2037 0808 A4       		.byte	0xa4
 2038 0809 18       		.uleb128 0x18
 2039 080a 51070000 		.4byte	.LASF184
 2040 080e 0B       		.byte	0xb
 2041 080f 61       		.byte	0x61
 2042 0810 D7010000 		.4byte	0x1d7
 2043 0814 A8       		.byte	0xa8
 2044 0815 18       		.uleb128 0x18
 2045 0816 D1170000 		.4byte	.LASF185
 2046 081a 0B       		.byte	0xb
 2047 081b 62       		.byte	0x62
 2048 081c 02060000 		.4byte	0x602
 2049 0820 AC       		.byte	0xac
 2050 0821 18       		.uleb128 0x18
 2051 0822 4E140000 		.4byte	.LASF186
 2052 0826 0B       		.byte	0xb
 2053 0827 63       		.byte	0x63
 2054 0828 D7010000 		.4byte	0x1d7
 2055 082c B0       		.byte	0xb0
 2056 082d 18       		.uleb128 0x18
 2057 082e B0130000 		.4byte	.LASF187
 2058 0832 0B       		.byte	0xb
 2059 0833 64       		.byte	0x64
 2060 0834 D7010000 		.4byte	0x1d7
 2061 0838 B4       		.byte	0xb4
ARM GAS  /tmp/ccbYIR7z.s 			page 81


 2062 0839 18       		.uleb128 0x18
 2063 083a A0160000 		.4byte	.LASF188
 2064 083e 0B       		.byte	0xb
 2065 083f 65       		.byte	0x65
 2066 0840 D7010000 		.4byte	0x1d7
 2067 0844 B8       		.byte	0xb8
 2068 0845 18       		.uleb128 0x18
 2069 0846 DB170000 		.4byte	.LASF189
 2070 084a 0B       		.byte	0xb
 2071 084b 66       		.byte	0x66
 2072 084c 02060000 		.4byte	0x602
 2073 0850 BC       		.byte	0xbc
 2074 0851 18       		.uleb128 0x18
 2075 0852 1A160000 		.4byte	.LASF190
 2076 0856 0B       		.byte	0xb
 2077 0857 67       		.byte	0x67
 2078 0858 D7010000 		.4byte	0x1d7
 2079 085c C0       		.byte	0xc0
 2080 085d 18       		.uleb128 0x18
 2081 085e 030F0000 		.4byte	.LASF191
 2082 0862 0B       		.byte	0xb
 2083 0863 68       		.byte	0x68
 2084 0864 D7010000 		.4byte	0x1d7
 2085 0868 C4       		.byte	0xc4
 2086 0869 18       		.uleb128 0x18
 2087 086a 590A0000 		.4byte	.LASF192
 2088 086e 0B       		.byte	0xb
 2089 086f 69       		.byte	0x69
 2090 0870 D7010000 		.4byte	0x1d7
 2091 0874 C8       		.byte	0xc8
 2092 0875 18       		.uleb128 0x18
 2093 0876 BB040000 		.4byte	.LASF193
 2094 087a 0B       		.byte	0xb
 2095 087b 6A       		.byte	0x6a
 2096 087c 02060000 		.4byte	0x602
 2097 0880 CC       		.byte	0xcc
 2098 0881 18       		.uleb128 0x18
 2099 0882 06150000 		.4byte	.LASF194
 2100 0886 0B       		.byte	0xb
 2101 0887 6B       		.byte	0x6b
 2102 0888 D7010000 		.4byte	0x1d7
 2103 088c D0       		.byte	0xd0
 2104 088d 18       		.uleb128 0x18
 2105 088e 260C0000 		.4byte	.LASF195
 2106 0892 0B       		.byte	0xb
 2107 0893 6C       		.byte	0x6c
 2108 0894 D7010000 		.4byte	0x1d7
 2109 0898 D4       		.byte	0xd4
 2110 0899 18       		.uleb128 0x18
 2111 089a 80170000 		.4byte	.LASF196
 2112 089e 0B       		.byte	0xb
 2113 089f 6D       		.byte	0x6d
 2114 08a0 D7010000 		.4byte	0x1d7
 2115 08a4 D8       		.byte	0xd8
 2116 08a5 18       		.uleb128 0x18
 2117 08a6 C6040000 		.4byte	.LASF197
 2118 08aa 0B       		.byte	0xb
ARM GAS  /tmp/ccbYIR7z.s 			page 82


 2119 08ab 6E       		.byte	0x6e
 2120 08ac 02060000 		.4byte	0x602
 2121 08b0 DC       		.byte	0xdc
 2122 08b1 18       		.uleb128 0x18
 2123 08b2 A5070000 		.4byte	.LASF198
 2124 08b6 0B       		.byte	0xb
 2125 08b7 6F       		.byte	0x6f
 2126 08b8 D7010000 		.4byte	0x1d7
 2127 08bc E0       		.byte	0xe0
 2128 08bd 18       		.uleb128 0x18
 2129 08be 34160000 		.4byte	.LASF199
 2130 08c2 0B       		.byte	0xb
 2131 08c3 70       		.byte	0x70
 2132 08c4 D7010000 		.4byte	0x1d7
 2133 08c8 E4       		.byte	0xe4
 2134 08c9 18       		.uleb128 0x18
 2135 08ca 310C0000 		.4byte	.LASF200
 2136 08ce 0B       		.byte	0xb
 2137 08cf 71       		.byte	0x71
 2138 08d0 D7010000 		.4byte	0x1d7
 2139 08d4 E8       		.byte	0xe8
 2140 08d5 18       		.uleb128 0x18
 2141 08d6 D1040000 		.4byte	.LASF201
 2142 08da 0B       		.byte	0xb
 2143 08db 72       		.byte	0x72
 2144 08dc D6050000 		.4byte	0x5d6
 2145 08e0 EC       		.byte	0xec
 2146 08e1 19       		.uleb128 0x19
 2147 08e2 DD010000 		.4byte	.LASF202
 2148 08e6 0B       		.byte	0xb
 2149 08e7 73       		.byte	0x73
 2150 08e8 D7010000 		.4byte	0x1d7
 2151 08ec 0001     		.2byte	0x100
 2152 08ee 19       		.uleb128 0x19
 2153 08ef DC040000 		.4byte	.LASF203
 2154 08f3 0B       		.byte	0xb
 2155 08f4 74       		.byte	0x74
 2156 08f5 D6050000 		.4byte	0x5d6
 2157 08f9 0401     		.2byte	0x104
 2158 08fb 19       		.uleb128 0x19
 2159 08fc AC050000 		.4byte	.LASF204
 2160 0900 0B       		.byte	0xb
 2161 0901 75       		.byte	0x75
 2162 0902 D7010000 		.4byte	0x1d7
 2163 0906 1801     		.2byte	0x118
 2164 0908 19       		.uleb128 0x19
 2165 0909 A10C0000 		.4byte	.LASF205
 2166 090d 0B       		.byte	0xb
 2167 090e 76       		.byte	0x76
 2168 090f 17060000 		.4byte	0x617
 2169 0913 1C01     		.2byte	0x11c
 2170 0915 19       		.uleb128 0x19
 2171 0916 D2120000 		.4byte	.LASF206
 2172 091a 0B       		.byte	0xb
 2173 091b 77       		.byte	0x77
 2174 091c D7010000 		.4byte	0x1d7
 2175 0920 5001     		.2byte	0x150
ARM GAS  /tmp/ccbYIR7z.s 			page 83


 2176 0922 19       		.uleb128 0x19
 2177 0923 A2050000 		.4byte	.LASF207
 2178 0927 0B       		.byte	0xb
 2179 0928 78       		.byte	0x78
 2180 0929 D7010000 		.4byte	0x1d7
 2181 092d 5401     		.2byte	0x154
 2182 092f 19       		.uleb128 0x19
 2183 0930 2A160000 		.4byte	.LASF208
 2184 0934 0B       		.byte	0xb
 2185 0935 79       		.byte	0x79
 2186 0936 D7010000 		.4byte	0x1d7
 2187 093a 5801     		.2byte	0x158
 2188 093c 19       		.uleb128 0x19
 2189 093d F4080000 		.4byte	.LASF209
 2190 0941 0B       		.byte	0xb
 2191 0942 7A       		.byte	0x7a
 2192 0943 D7010000 		.4byte	0x1d7
 2193 0947 5C01     		.2byte	0x15c
 2194 0949 19       		.uleb128 0x19
 2195 094a 390B0000 		.4byte	.LASF210
 2196 094e 0B       		.byte	0xb
 2197 094f 7B       		.byte	0x7b
 2198 0950 D7010000 		.4byte	0x1d7
 2199 0954 6001     		.2byte	0x160
 2200 0956 19       		.uleb128 0x19
 2201 0957 BD030000 		.4byte	.LASF211
 2202 095b 0B       		.byte	0xb
 2203 095c 7C       		.byte	0x7c
 2204 095d D7010000 		.4byte	0x1d7
 2205 0961 6401     		.2byte	0x164
 2206 0963 00       		.byte	0
 2207 0964 1A       		.uleb128 0x1a
 2208 0965 50696F00 		.ascii	"Pio\000"
 2209 0969 0B       		.byte	0xb
 2210 096a 7D       		.byte	0x7d
 2211 096b 1C060000 		.4byte	0x61c
 2212 096f 03       		.uleb128 0x3
 2213 0970 590F0000 		.4byte	.LASF212
 2214 0974 0C       		.byte	0xc
 2215 0975 07       		.byte	0x7
 2216 0976 25000000 		.4byte	0x25
 2217 097a 03       		.uleb128 0x3
 2218 097b 97080000 		.4byte	.LASF213
 2219 097f 0D       		.byte	0xd
 2220 0980 2C       		.byte	0x2c
 2221 0981 E2000000 		.4byte	0xe2
 2222 0985 03       		.uleb128 0x3
 2223 0986 DB120000 		.4byte	.LASF214
 2224 098a 0D       		.byte	0xd
 2225 098b 72       		.byte	0x72
 2226 098c E2000000 		.4byte	0xe2
 2227 0990 08       		.uleb128 0x8
 2228 0991 D3090000 		.4byte	.LASF215
 2229 0995 05       		.byte	0x5
 2230 0996 6501     		.2byte	0x165
 2231 0998 3C000000 		.4byte	0x3c
 2232 099c 1B       		.uleb128 0x1b
ARM GAS  /tmp/ccbYIR7z.s 			page 84


 2233 099d 08       		.byte	0x8
 2234 099e 0D       		.byte	0xd
 2235 099f A4       		.byte	0xa4
 2236 09a0 4C0A0000 		.4byte	.LASF324
 2237 09a4 E0090000 		.4byte	0x9e0
 2238 09a8 1C       		.uleb128 0x1c
 2239 09a9 04       		.byte	0x4
 2240 09aa 0D       		.byte	0xd
 2241 09ab A7       		.byte	0xa7
 2242 09ac C7090000 		.4byte	0x9c7
 2243 09b0 1D       		.uleb128 0x1d
 2244 09b1 260F0000 		.4byte	.LASF216
 2245 09b5 0D       		.byte	0xd
 2246 09b6 A8       		.byte	0xa8
 2247 09b7 90090000 		.4byte	0x990
 2248 09bb 1D       		.uleb128 0x1d
 2249 09bc A1090000 		.4byte	.LASF217
 2250 09c0 0D       		.byte	0xd
 2251 09c1 A9       		.byte	0xa9
 2252 09c2 E0090000 		.4byte	0x9e0
 2253 09c6 00       		.byte	0
 2254 09c7 18       		.uleb128 0x18
 2255 09c8 D4080000 		.4byte	.LASF218
 2256 09cc 0D       		.byte	0xd
 2257 09cd A5       		.byte	0xa5
 2258 09ce 25000000 		.4byte	0x25
 2259 09d2 00       		.byte	0
 2260 09d3 18       		.uleb128 0x18
 2261 09d4 C7130000 		.4byte	.LASF219
 2262 09d8 0D       		.byte	0xd
 2263 09d9 AA       		.byte	0xaa
 2264 09da A8090000 		.4byte	0x9a8
 2265 09de 04       		.byte	0x4
 2266 09df 00       		.byte	0
 2267 09e0 12       		.uleb128 0x12
 2268 09e1 AC000000 		.4byte	0xac
 2269 09e5 F0090000 		.4byte	0x9f0
 2270 09e9 13       		.uleb128 0x13
 2271 09ea 58050000 		.4byte	0x558
 2272 09ee 03       		.byte	0x3
 2273 09ef 00       		.byte	0
 2274 09f0 03       		.uleb128 0x3
 2275 09f1 3C130000 		.4byte	.LASF220
 2276 09f5 0D       		.byte	0xd
 2277 09f6 AB       		.byte	0xab
 2278 09f7 9C090000 		.4byte	0x99c
 2279 09fb 03       		.uleb128 0x3
 2280 09fc ED150000 		.4byte	.LASF221
 2281 0a00 0D       		.byte	0xd
 2282 0a01 AF       		.byte	0xaf
 2283 0a02 6F090000 		.4byte	0x96f
 2284 0a06 03       		.uleb128 0x3
 2285 0a07 5F0C0000 		.4byte	.LASF222
 2286 0a0b 0E       		.byte	0xe
 2287 0a0c 16       		.byte	0x16
 2288 0a0d F4000000 		.4byte	0xf4
 2289 0a11 1E       		.uleb128 0x1e
ARM GAS  /tmp/ccbYIR7z.s 			page 85


 2290 0a12 AA110000 		.4byte	.LASF227
 2291 0a16 18       		.byte	0x18
 2292 0a17 0E       		.byte	0xe
 2293 0a18 2D       		.byte	0x2d
 2294 0a19 640A0000 		.4byte	0xa64
 2295 0a1d 18       		.uleb128 0x18
 2296 0a1e 870A0000 		.4byte	.LASF223
 2297 0a22 0E       		.byte	0xe
 2298 0a23 2F       		.byte	0x2f
 2299 0a24 640A0000 		.4byte	0xa64
 2300 0a28 00       		.byte	0
 2301 0a29 1F       		.uleb128 0x1f
 2302 0a2a 5F6B00   		.ascii	"_k\000"
 2303 0a2d 0E       		.byte	0xe
 2304 0a2e 30       		.byte	0x30
 2305 0a2f 25000000 		.4byte	0x25
 2306 0a33 04       		.byte	0x4
 2307 0a34 18       		.uleb128 0x18
 2308 0a35 5C100000 		.4byte	.LASF224
 2309 0a39 0E       		.byte	0xe
 2310 0a3a 30       		.byte	0x30
 2311 0a3b 25000000 		.4byte	0x25
 2312 0a3f 08       		.byte	0x8
 2313 0a40 18       		.uleb128 0x18
 2314 0a41 26170000 		.4byte	.LASF225
 2315 0a45 0E       		.byte	0xe
 2316 0a46 30       		.byte	0x30
 2317 0a47 25000000 		.4byte	0x25
 2318 0a4b 0C       		.byte	0xc
 2319 0a4c 18       		.uleb128 0x18
 2320 0a4d 2C060000 		.4byte	.LASF226
 2321 0a51 0E       		.byte	0xe
 2322 0a52 30       		.byte	0x30
 2323 0a53 25000000 		.4byte	0x25
 2324 0a57 10       		.byte	0x10
 2325 0a58 1F       		.uleb128 0x1f
 2326 0a59 5F7800   		.ascii	"_x\000"
 2327 0a5c 0E       		.byte	0xe
 2328 0a5d 31       		.byte	0x31
 2329 0a5e 6A0A0000 		.4byte	0xa6a
 2330 0a62 14       		.byte	0x14
 2331 0a63 00       		.byte	0
 2332 0a64 20       		.uleb128 0x20
 2333 0a65 04       		.byte	0x4
 2334 0a66 110A0000 		.4byte	0xa11
 2335 0a6a 12       		.uleb128 0x12
 2336 0a6b 060A0000 		.4byte	0xa06
 2337 0a6f 7A0A0000 		.4byte	0xa7a
 2338 0a73 13       		.uleb128 0x13
 2339 0a74 58050000 		.4byte	0x558
 2340 0a78 00       		.byte	0
 2341 0a79 00       		.byte	0
 2342 0a7a 1E       		.uleb128 0x1e
 2343 0a7b AC040000 		.4byte	.LASF228
 2344 0a7f 24       		.byte	0x24
 2345 0a80 0E       		.byte	0xe
 2346 0a81 35       		.byte	0x35
ARM GAS  /tmp/ccbYIR7z.s 			page 86


 2347 0a82 F30A0000 		.4byte	0xaf3
 2348 0a86 18       		.uleb128 0x18
 2349 0a87 820B0000 		.4byte	.LASF229
 2350 0a8b 0E       		.byte	0xe
 2351 0a8c 37       		.byte	0x37
 2352 0a8d 25000000 		.4byte	0x25
 2353 0a91 00       		.byte	0
 2354 0a92 18       		.uleb128 0x18
 2355 0a93 3E170000 		.4byte	.LASF230
 2356 0a97 0E       		.byte	0xe
 2357 0a98 38       		.byte	0x38
 2358 0a99 25000000 		.4byte	0x25
 2359 0a9d 04       		.byte	0x4
 2360 0a9e 18       		.uleb128 0x18
 2361 0a9f B7090000 		.4byte	.LASF231
 2362 0aa3 0E       		.byte	0xe
 2363 0aa4 39       		.byte	0x39
 2364 0aa5 25000000 		.4byte	0x25
 2365 0aa9 08       		.byte	0x8
 2366 0aaa 18       		.uleb128 0x18
 2367 0aab 1A0A0000 		.4byte	.LASF232
 2368 0aaf 0E       		.byte	0xe
 2369 0ab0 3A       		.byte	0x3a
 2370 0ab1 25000000 		.4byte	0x25
 2371 0ab5 0C       		.byte	0xc
 2372 0ab6 18       		.uleb128 0x18
 2373 0ab7 2E010000 		.4byte	.LASF233
 2374 0abb 0E       		.byte	0xe
 2375 0abc 3B       		.byte	0x3b
 2376 0abd 25000000 		.4byte	0x25
 2377 0ac1 10       		.byte	0x10
 2378 0ac2 18       		.uleb128 0x18
 2379 0ac3 0F070000 		.4byte	.LASF234
 2380 0ac7 0E       		.byte	0xe
 2381 0ac8 3C       		.byte	0x3c
 2382 0ac9 25000000 		.4byte	0x25
 2383 0acd 14       		.byte	0x14
 2384 0ace 18       		.uleb128 0x18
 2385 0acf CC050000 		.4byte	.LASF235
 2386 0ad3 0E       		.byte	0xe
 2387 0ad4 3D       		.byte	0x3d
 2388 0ad5 25000000 		.4byte	0x25
 2389 0ad9 18       		.byte	0x18
 2390 0ada 18       		.uleb128 0x18
 2391 0adb F5040000 		.4byte	.LASF236
 2392 0adf 0E       		.byte	0xe
 2393 0ae0 3E       		.byte	0x3e
 2394 0ae1 25000000 		.4byte	0x25
 2395 0ae5 1C       		.byte	0x1c
 2396 0ae6 18       		.uleb128 0x18
 2397 0ae7 D6050000 		.4byte	.LASF237
 2398 0aeb 0E       		.byte	0xe
 2399 0aec 3F       		.byte	0x3f
 2400 0aed 25000000 		.4byte	0x25
 2401 0af1 20       		.byte	0x20
 2402 0af2 00       		.byte	0
 2403 0af3 21       		.uleb128 0x21
ARM GAS  /tmp/ccbYIR7z.s 			page 87


 2404 0af4 BB0B0000 		.4byte	.LASF238
 2405 0af8 0801     		.2byte	0x108
 2406 0afa 0E       		.byte	0xe
 2407 0afb 48       		.byte	0x48
 2408 0afc 330B0000 		.4byte	0xb33
 2409 0b00 18       		.uleb128 0x18
 2410 0b01 390A0000 		.4byte	.LASF239
 2411 0b05 0E       		.byte	0xe
 2412 0b06 49       		.byte	0x49
 2413 0b07 330B0000 		.4byte	0xb33
 2414 0b0b 00       		.byte	0
 2415 0b0c 18       		.uleb128 0x18
 2416 0b0d B7050000 		.4byte	.LASF240
 2417 0b11 0E       		.byte	0xe
 2418 0b12 4A       		.byte	0x4a
 2419 0b13 330B0000 		.4byte	0xb33
 2420 0b17 80       		.byte	0x80
 2421 0b18 19       		.uleb128 0x19
 2422 0b19 37010000 		.4byte	.LASF241
 2423 0b1d 0E       		.byte	0xe
 2424 0b1e 4C       		.byte	0x4c
 2425 0b1f 060A0000 		.4byte	0xa06
 2426 0b23 0001     		.2byte	0x100
 2427 0b25 19       		.uleb128 0x19
 2428 0b26 CF130000 		.4byte	.LASF242
 2429 0b2a 0E       		.byte	0xe
 2430 0b2b 4F       		.byte	0x4f
 2431 0b2c 060A0000 		.4byte	0xa06
 2432 0b30 0401     		.2byte	0x104
 2433 0b32 00       		.byte	0
 2434 0b33 12       		.uleb128 0x12
 2435 0b34 81040000 		.4byte	0x481
 2436 0b38 430B0000 		.4byte	0xb43
 2437 0b3c 13       		.uleb128 0x13
 2438 0b3d 58050000 		.4byte	0x558
 2439 0b41 1F       		.byte	0x1f
 2440 0b42 00       		.byte	0
 2441 0b43 21       		.uleb128 0x21
 2442 0b44 D0000000 		.4byte	.LASF243
 2443 0b48 9001     		.2byte	0x190
 2444 0b4a 0E       		.byte	0xe
 2445 0b4b 5B       		.byte	0x5b
 2446 0b4c 810B0000 		.4byte	0xb81
 2447 0b50 18       		.uleb128 0x18
 2448 0b51 870A0000 		.4byte	.LASF223
 2449 0b55 0E       		.byte	0xe
 2450 0b56 5C       		.byte	0x5c
 2451 0b57 810B0000 		.4byte	0xb81
 2452 0b5b 00       		.byte	0
 2453 0b5c 18       		.uleb128 0x18
 2454 0b5d 61010000 		.4byte	.LASF244
 2455 0b61 0E       		.byte	0xe
 2456 0b62 5D       		.byte	0x5d
 2457 0b63 25000000 		.4byte	0x25
 2458 0b67 04       		.byte	0x4
 2459 0b68 18       		.uleb128 0x18
 2460 0b69 24130000 		.4byte	.LASF245
ARM GAS  /tmp/ccbYIR7z.s 			page 88


 2461 0b6d 0E       		.byte	0xe
 2462 0b6e 5F       		.byte	0x5f
 2463 0b6f 870B0000 		.4byte	0xb87
 2464 0b73 08       		.byte	0x8
 2465 0b74 18       		.uleb128 0x18
 2466 0b75 BB0B0000 		.4byte	.LASF238
 2467 0b79 0E       		.byte	0xe
 2468 0b7a 60       		.byte	0x60
 2469 0b7b F30A0000 		.4byte	0xaf3
 2470 0b7f 88       		.byte	0x88
 2471 0b80 00       		.byte	0
 2472 0b81 20       		.uleb128 0x20
 2473 0b82 04       		.byte	0x4
 2474 0b83 430B0000 		.4byte	0xb43
 2475 0b87 12       		.uleb128 0x12
 2476 0b88 970B0000 		.4byte	0xb97
 2477 0b8c 970B0000 		.4byte	0xb97
 2478 0b90 13       		.uleb128 0x13
 2479 0b91 58050000 		.4byte	0x558
 2480 0b95 1F       		.byte	0x1f
 2481 0b96 00       		.byte	0
 2482 0b97 20       		.uleb128 0x20
 2483 0b98 04       		.byte	0x4
 2484 0b99 9D0B0000 		.4byte	0xb9d
 2485 0b9d 22       		.uleb128 0x22
 2486 0b9e 1E       		.uleb128 0x1e
 2487 0b9f E90E0000 		.4byte	.LASF246
 2488 0ba3 08       		.byte	0x8
 2489 0ba4 0E       		.byte	0xe
 2490 0ba5 73       		.byte	0x73
 2491 0ba6 C30B0000 		.4byte	0xbc3
 2492 0baa 18       		.uleb128 0x18
 2493 0bab E20B0000 		.4byte	.LASF247
 2494 0baf 0E       		.byte	0xe
 2495 0bb0 74       		.byte	0x74
 2496 0bb1 C30B0000 		.4byte	0xbc3
 2497 0bb5 00       		.byte	0
 2498 0bb6 18       		.uleb128 0x18
 2499 0bb7 37060000 		.4byte	.LASF248
 2500 0bbb 0E       		.byte	0xe
 2501 0bbc 75       		.byte	0x75
 2502 0bbd 25000000 		.4byte	0x25
 2503 0bc1 04       		.byte	0x4
 2504 0bc2 00       		.byte	0
 2505 0bc3 20       		.uleb128 0x20
 2506 0bc4 04       		.byte	0x4
 2507 0bc5 AC000000 		.4byte	0xac
 2508 0bc9 1E       		.uleb128 0x1e
 2509 0bca FC120000 		.4byte	.LASF249
 2510 0bce 68       		.byte	0x68
 2511 0bcf 0E       		.byte	0xe
 2512 0bd0 B3       		.byte	0xb3
 2513 0bd1 F30C0000 		.4byte	0xcf3
 2514 0bd5 1F       		.uleb128 0x1f
 2515 0bd6 5F7000   		.ascii	"_p\000"
 2516 0bd9 0E       		.byte	0xe
 2517 0bda B4       		.byte	0xb4
ARM GAS  /tmp/ccbYIR7z.s 			page 89


 2518 0bdb C30B0000 		.4byte	0xbc3
 2519 0bdf 00       		.byte	0
 2520 0be0 1F       		.uleb128 0x1f
 2521 0be1 5F7200   		.ascii	"_r\000"
 2522 0be4 0E       		.byte	0xe
 2523 0be5 B5       		.byte	0xb5
 2524 0be6 25000000 		.4byte	0x25
 2525 0bea 04       		.byte	0x4
 2526 0beb 1F       		.uleb128 0x1f
 2527 0bec 5F7700   		.ascii	"_w\000"
 2528 0bef 0E       		.byte	0xe
 2529 0bf0 B6       		.byte	0xb6
 2530 0bf1 25000000 		.4byte	0x25
 2531 0bf5 08       		.byte	0x8
 2532 0bf6 18       		.uleb128 0x18
 2533 0bf7 C3010000 		.4byte	.LASF250
 2534 0bfb 0E       		.byte	0xe
 2535 0bfc B7       		.byte	0xb7
 2536 0bfd BE000000 		.4byte	0xbe
 2537 0c01 0C       		.byte	0xc
 2538 0c02 18       		.uleb128 0x18
 2539 0c03 E3120000 		.4byte	.LASF251
 2540 0c07 0E       		.byte	0xe
 2541 0c08 B8       		.byte	0xb8
 2542 0c09 BE000000 		.4byte	0xbe
 2543 0c0d 0E       		.byte	0xe
 2544 0c0e 1F       		.uleb128 0x1f
 2545 0c0f 5F626600 		.ascii	"_bf\000"
 2546 0c13 0E       		.byte	0xe
 2547 0c14 B9       		.byte	0xb9
 2548 0c15 9E0B0000 		.4byte	0xb9e
 2549 0c19 10       		.byte	0x10
 2550 0c1a 18       		.uleb128 0x18
 2551 0c1b AC030000 		.4byte	.LASF252
 2552 0c1f 0E       		.byte	0xe
 2553 0c20 BA       		.byte	0xba
 2554 0c21 25000000 		.4byte	0x25
 2555 0c25 18       		.byte	0x18
 2556 0c26 18       		.uleb128 0x18
 2557 0c27 990A0000 		.4byte	.LASF253
 2558 0c2b 0E       		.byte	0xe
 2559 0c2c C1       		.byte	0xc1
 2560 0c2d 81040000 		.4byte	0x481
 2561 0c31 1C       		.byte	0x1c
 2562 0c32 18       		.uleb128 0x18
 2563 0c33 5C180000 		.4byte	.LASF254
 2564 0c37 0E       		.byte	0xe
 2565 0c38 C3       		.byte	0xc3
 2566 0c39 A70F0000 		.4byte	0xfa7
 2567 0c3d 20       		.byte	0x20
 2568 0c3e 18       		.uleb128 0x18
 2569 0c3f 83060000 		.4byte	.LASF255
 2570 0c43 0E       		.byte	0xe
 2571 0c44 C5       		.byte	0xc5
 2572 0c45 D10F0000 		.4byte	0xfd1
 2573 0c49 24       		.byte	0x24
 2574 0c4a 18       		.uleb128 0x18
ARM GAS  /tmp/ccbYIR7z.s 			page 90


 2575 0c4b E70C0000 		.4byte	.LASF256
 2576 0c4f 0E       		.byte	0xe
 2577 0c50 C8       		.byte	0xc8
 2578 0c51 F50F0000 		.4byte	0xff5
 2579 0c55 28       		.byte	0x28
 2580 0c56 18       		.uleb128 0x18
 2581 0c57 19110000 		.4byte	.LASF257
 2582 0c5b 0E       		.byte	0xe
 2583 0c5c C9       		.byte	0xc9
 2584 0c5d 0F100000 		.4byte	0x100f
 2585 0c61 2C       		.byte	0x2c
 2586 0c62 1F       		.uleb128 0x1f
 2587 0c63 5F756200 		.ascii	"_ub\000"
 2588 0c67 0E       		.byte	0xe
 2589 0c68 CC       		.byte	0xcc
 2590 0c69 9E0B0000 		.4byte	0xb9e
 2591 0c6d 30       		.byte	0x30
 2592 0c6e 1F       		.uleb128 0x1f
 2593 0c6f 5F757000 		.ascii	"_up\000"
 2594 0c73 0E       		.byte	0xe
 2595 0c74 CD       		.byte	0xcd
 2596 0c75 C30B0000 		.4byte	0xbc3
 2597 0c79 38       		.byte	0x38
 2598 0c7a 1F       		.uleb128 0x1f
 2599 0c7b 5F757200 		.ascii	"_ur\000"
 2600 0c7f 0E       		.byte	0xe
 2601 0c80 CE       		.byte	0xce
 2602 0c81 25000000 		.4byte	0x25
 2603 0c85 3C       		.byte	0x3c
 2604 0c86 18       		.uleb128 0x18
 2605 0c87 6F120000 		.4byte	.LASF258
 2606 0c8b 0E       		.byte	0xe
 2607 0c8c D1       		.byte	0xd1
 2608 0c8d 15100000 		.4byte	0x1015
 2609 0c91 40       		.byte	0x40
 2610 0c92 18       		.uleb128 0x18
 2611 0c93 8A020000 		.4byte	.LASF259
 2612 0c97 0E       		.byte	0xe
 2613 0c98 D2       		.byte	0xd2
 2614 0c99 25100000 		.4byte	0x1025
 2615 0c9d 43       		.byte	0x43
 2616 0c9e 1F       		.uleb128 0x1f
 2617 0c9f 5F6C6200 		.ascii	"_lb\000"
 2618 0ca3 0E       		.byte	0xe
 2619 0ca4 D5       		.byte	0xd5
 2620 0ca5 9E0B0000 		.4byte	0xb9e
 2621 0ca9 44       		.byte	0x44
 2622 0caa 18       		.uleb128 0x18
 2623 0cab 66120000 		.4byte	.LASF260
 2624 0caf 0E       		.byte	0xe
 2625 0cb0 D8       		.byte	0xd8
 2626 0cb1 25000000 		.4byte	0x25
 2627 0cb5 4C       		.byte	0x4c
 2628 0cb6 18       		.uleb128 0x18
 2629 0cb7 BC0E0000 		.4byte	.LASF261
 2630 0cbb 0E       		.byte	0xe
 2631 0cbc D9       		.byte	0xd9
ARM GAS  /tmp/ccbYIR7z.s 			page 91


 2632 0cbd 7A090000 		.4byte	0x97a
 2633 0cc1 50       		.byte	0x50
 2634 0cc2 18       		.uleb128 0x18
 2635 0cc3 E8030000 		.4byte	.LASF262
 2636 0cc7 0E       		.byte	0xe
 2637 0cc8 DC       		.byte	0xdc
 2638 0cc9 110D0000 		.4byte	0xd11
 2639 0ccd 54       		.byte	0x54
 2640 0cce 18       		.uleb128 0x18
 2641 0ccf 84020000 		.4byte	.LASF263
 2642 0cd3 0E       		.byte	0xe
 2643 0cd4 E0       		.byte	0xe0
 2644 0cd5 FB090000 		.4byte	0x9fb
 2645 0cd9 58       		.byte	0x58
 2646 0cda 18       		.uleb128 0x18
 2647 0cdb C7000000 		.4byte	.LASF264
 2648 0cdf 0E       		.byte	0xe
 2649 0ce0 E2       		.byte	0xe2
 2650 0ce1 F0090000 		.4byte	0x9f0
 2651 0ce5 5C       		.byte	0x5c
 2652 0ce6 18       		.uleb128 0x18
 2653 0ce7 22160000 		.4byte	.LASF265
 2654 0ceb 0E       		.byte	0xe
 2655 0cec E3       		.byte	0xe3
 2656 0ced 25000000 		.4byte	0x25
 2657 0cf1 64       		.byte	0x64
 2658 0cf2 00       		.byte	0
 2659 0cf3 23       		.uleb128 0x23
 2660 0cf4 25000000 		.4byte	0x25
 2661 0cf8 110D0000 		.4byte	0xd11
 2662 0cfc 24       		.uleb128 0x24
 2663 0cfd 110D0000 		.4byte	0xd11
 2664 0d01 24       		.uleb128 0x24
 2665 0d02 81040000 		.4byte	0x481
 2666 0d06 24       		.uleb128 0x24
 2667 0d07 950F0000 		.4byte	0xf95
 2668 0d0b 24       		.uleb128 0x24
 2669 0d0c 25000000 		.4byte	0x25
 2670 0d10 00       		.byte	0
 2671 0d11 20       		.uleb128 0x20
 2672 0d12 04       		.byte	0x4
 2673 0d13 1C0D0000 		.4byte	0xd1c
 2674 0d17 04       		.uleb128 0x4
 2675 0d18 110D0000 		.4byte	0xd11
 2676 0d1c 25       		.uleb128 0x25
 2677 0d1d 28040000 		.4byte	.LASF266
 2678 0d21 2804     		.2byte	0x428
 2679 0d23 0E       		.byte	0xe
 2680 0d24 3802     		.2byte	0x238
 2681 0d26 950F0000 		.4byte	0xf95
 2682 0d2a 26       		.uleb128 0x26
 2683 0d2b F0       		.byte	0xf0
 2684 0d2c 0E       		.byte	0xe
 2685 0d2d 5602     		.2byte	0x256
 2686 0d2f 710E0000 		.4byte	0xe71
 2687 0d33 27       		.uleb128 0x27
 2688 0d34 D0       		.byte	0xd0
ARM GAS  /tmp/ccbYIR7z.s 			page 92


 2689 0d35 0E       		.byte	0xe
 2690 0d36 5802     		.2byte	0x258
 2691 0d38 340E0000 		.4byte	0xe34
 2692 0d3c 07       		.uleb128 0x7
 2693 0d3d 1D050000 		.4byte	.LASF267
 2694 0d41 0E       		.byte	0xe
 2695 0d42 5902     		.2byte	0x259
 2696 0d44 3C000000 		.4byte	0x3c
 2697 0d48 00       		.byte	0
 2698 0d49 07       		.uleb128 0x7
 2699 0d4a AC0C0000 		.4byte	.LASF268
 2700 0d4e 0E       		.byte	0xe
 2701 0d4f 5A02     		.2byte	0x25a
 2702 0d51 950F0000 		.4byte	0xf95
 2703 0d55 04       		.byte	0x4
 2704 0d56 07       		.uleb128 0x7
 2705 0d57 140F0000 		.4byte	.LASF269
 2706 0d5b 0E       		.byte	0xe
 2707 0d5c 5B02     		.2byte	0x25b
 2708 0d5e C7100000 		.4byte	0x10c7
 2709 0d62 08       		.byte	0x8
 2710 0d63 07       		.uleb128 0x7
 2711 0d64 BC080000 		.4byte	.LASF270
 2712 0d68 0E       		.byte	0xe
 2713 0d69 5C02     		.2byte	0x25c
 2714 0d6b 7A0A0000 		.4byte	0xa7a
 2715 0d6f 24       		.byte	0x24
 2716 0d70 07       		.uleb128 0x7
 2717 0d71 3F150000 		.4byte	.LASF271
 2718 0d75 0E       		.byte	0xe
 2719 0d76 5D02     		.2byte	0x25d
 2720 0d78 25000000 		.4byte	0x25
 2721 0d7c 48       		.byte	0x48
 2722 0d7d 07       		.uleb128 0x7
 2723 0d7e 32100000 		.4byte	.LASF272
 2724 0d82 0E       		.byte	0xe
 2725 0d83 5E02     		.2byte	0x25e
 2726 0d85 11010000 		.4byte	0x111
 2727 0d89 50       		.byte	0x50
 2728 0d8a 07       		.uleb128 0x7
 2729 0d8b F2170000 		.4byte	.LASF273
 2730 0d8f 0E       		.byte	0xe
 2731 0d90 5F02     		.2byte	0x25f
 2732 0d92 82100000 		.4byte	0x1082
 2733 0d96 58       		.byte	0x58
 2734 0d97 07       		.uleb128 0x7
 2735 0d98 75120000 		.4byte	.LASF274
 2736 0d9c 0E       		.byte	0xe
 2737 0d9d 6002     		.2byte	0x260
 2738 0d9f F0090000 		.4byte	0x9f0
 2739 0da3 68       		.byte	0x68
 2740 0da4 07       		.uleb128 0x7
 2741 0da5 8A040000 		.4byte	.LASF275
 2742 0da9 0E       		.byte	0xe
 2743 0daa 6102     		.2byte	0x261
 2744 0dac F0090000 		.4byte	0x9f0
 2745 0db0 70       		.byte	0x70
ARM GAS  /tmp/ccbYIR7z.s 			page 93


 2746 0db1 07       		.uleb128 0x7
 2747 0db2 980F0000 		.4byte	.LASF276
 2748 0db6 0E       		.byte	0xe
 2749 0db7 6202     		.2byte	0x262
 2750 0db9 F0090000 		.4byte	0x9f0
 2751 0dbd 78       		.byte	0x78
 2752 0dbe 07       		.uleb128 0x7
 2753 0dbf F90E0000 		.4byte	.LASF277
 2754 0dc3 0E       		.byte	0xe
 2755 0dc4 6302     		.2byte	0x263
 2756 0dc6 D7100000 		.4byte	0x10d7
 2757 0dca 80       		.byte	0x80
 2758 0dcb 07       		.uleb128 0x7
 2759 0dcc 8D0A0000 		.4byte	.LASF278
 2760 0dd0 0E       		.byte	0xe
 2761 0dd1 6402     		.2byte	0x264
 2762 0dd3 E7100000 		.4byte	0x10e7
 2763 0dd7 88       		.byte	0x88
 2764 0dd8 07       		.uleb128 0x7
 2765 0dd9 F2110000 		.4byte	.LASF279
 2766 0ddd 0E       		.byte	0xe
 2767 0dde 6502     		.2byte	0x265
 2768 0de0 25000000 		.4byte	0x25
 2769 0de4 A0       		.byte	0xa0
 2770 0de5 07       		.uleb128 0x7
 2771 0de6 17100000 		.4byte	.LASF280
 2772 0dea 0E       		.byte	0xe
 2773 0deb 6602     		.2byte	0x266
 2774 0ded F0090000 		.4byte	0x9f0
 2775 0df1 A4       		.byte	0xa4
 2776 0df2 07       		.uleb128 0x7
 2777 0df3 A8090000 		.4byte	.LASF281
 2778 0df7 0E       		.byte	0xe
 2779 0df8 6702     		.2byte	0x267
 2780 0dfa F0090000 		.4byte	0x9f0
 2781 0dfe AC       		.byte	0xac
 2782 0dff 07       		.uleb128 0x7
 2783 0e00 1B060000 		.4byte	.LASF282
 2784 0e04 0E       		.byte	0xe
 2785 0e05 6802     		.2byte	0x268
 2786 0e07 F0090000 		.4byte	0x9f0
 2787 0e0b B4       		.byte	0xb4
 2788 0e0c 07       		.uleb128 0x7
 2789 0e0d A9140000 		.4byte	.LASF283
 2790 0e11 0E       		.byte	0xe
 2791 0e12 6902     		.2byte	0x269
 2792 0e14 F0090000 		.4byte	0x9f0
 2793 0e18 BC       		.byte	0xbc
 2794 0e19 07       		.uleb128 0x7
 2795 0e1a 3F0F0000 		.4byte	.LASF284
 2796 0e1e 0E       		.byte	0xe
 2797 0e1f 6A02     		.2byte	0x26a
 2798 0e21 F0090000 		.4byte	0x9f0
 2799 0e25 C4       		.byte	0xc4
 2800 0e26 07       		.uleb128 0x7
 2801 0e27 47130000 		.4byte	.LASF285
 2802 0e2b 0E       		.byte	0xe
ARM GAS  /tmp/ccbYIR7z.s 			page 94


 2803 0e2c 6B02     		.2byte	0x26b
 2804 0e2e 25000000 		.4byte	0x25
 2805 0e32 CC       		.byte	0xcc
 2806 0e33 00       		.byte	0
 2807 0e34 27       		.uleb128 0x27
 2808 0e35 F0       		.byte	0xf0
 2809 0e36 0E       		.byte	0xe
 2810 0e37 7102     		.2byte	0x271
 2811 0e39 580E0000 		.4byte	0xe58
 2812 0e3d 07       		.uleb128 0x7
 2813 0e3e 25100000 		.4byte	.LASF286
 2814 0e42 0E       		.byte	0xe
 2815 0e43 7302     		.2byte	0x273
 2816 0e45 F7100000 		.4byte	0x10f7
 2817 0e49 00       		.byte	0
 2818 0e4a 07       		.uleb128 0x7
 2819 0e4b B7070000 		.4byte	.LASF287
 2820 0e4f 0E       		.byte	0xe
 2821 0e50 7402     		.2byte	0x274
 2822 0e52 07110000 		.4byte	0x1107
 2823 0e56 78       		.byte	0x78
 2824 0e57 00       		.byte	0
 2825 0e58 28       		.uleb128 0x28
 2826 0e59 28040000 		.4byte	.LASF266
 2827 0e5d 0E       		.byte	0xe
 2828 0e5e 6C02     		.2byte	0x26c
 2829 0e60 330D0000 		.4byte	0xd33
 2830 0e64 28       		.uleb128 0x28
 2831 0e65 90020000 		.4byte	.LASF288
 2832 0e69 0E       		.byte	0xe
 2833 0e6a 7502     		.2byte	0x275
 2834 0e6c 340E0000 		.4byte	0xe34
 2835 0e70 00       		.byte	0
 2836 0e71 07       		.uleb128 0x7
 2837 0e72 130A0000 		.4byte	.LASF289
 2838 0e76 0E       		.byte	0xe
 2839 0e77 3A02     		.2byte	0x23a
 2840 0e79 25000000 		.4byte	0x25
 2841 0e7d 00       		.byte	0
 2842 0e7e 07       		.uleb128 0x7
 2843 0e7f B0070000 		.4byte	.LASF290
 2844 0e83 0E       		.byte	0xe
 2845 0e84 3F02     		.2byte	0x23f
 2846 0e86 7C100000 		.4byte	0x107c
 2847 0e8a 04       		.byte	0x4
 2848 0e8b 07       		.uleb128 0x7
 2849 0e8c 40000000 		.4byte	.LASF291
 2850 0e90 0E       		.byte	0xe
 2851 0e91 3F02     		.2byte	0x23f
 2852 0e93 7C100000 		.4byte	0x107c
 2853 0e97 08       		.byte	0x8
 2854 0e98 07       		.uleb128 0x7
 2855 0e99 92050000 		.4byte	.LASF292
 2856 0e9d 0E       		.byte	0xe
 2857 0e9e 3F02     		.2byte	0x23f
 2858 0ea0 7C100000 		.4byte	0x107c
 2859 0ea4 0C       		.byte	0xc
ARM GAS  /tmp/ccbYIR7z.s 			page 95


 2860 0ea5 07       		.uleb128 0x7
 2861 0ea6 5C010000 		.4byte	.LASF293
 2862 0eaa 0E       		.byte	0xe
 2863 0eab 4102     		.2byte	0x241
 2864 0ead 25000000 		.4byte	0x25
 2865 0eb1 10       		.byte	0x10
 2866 0eb2 07       		.uleb128 0x7
 2867 0eb3 02100000 		.4byte	.LASF294
 2868 0eb7 0E       		.byte	0xe
 2869 0eb8 4202     		.2byte	0x242
 2870 0eba 17110000 		.4byte	0x1117
 2871 0ebe 14       		.byte	0x14
 2872 0ebf 07       		.uleb128 0x7
 2873 0ec0 6B150000 		.4byte	.LASF295
 2874 0ec4 0E       		.byte	0xe
 2875 0ec5 4402     		.2byte	0x244
 2876 0ec7 25000000 		.4byte	0x25
 2877 0ecb 30       		.byte	0x30
 2878 0ecc 07       		.uleb128 0x7
 2879 0ecd 09030000 		.4byte	.LASF296
 2880 0ed1 0E       		.byte	0xe
 2881 0ed2 4502     		.2byte	0x245
 2882 0ed4 CB0F0000 		.4byte	0xfcb
 2883 0ed8 34       		.byte	0x34
 2884 0ed9 07       		.uleb128 0x7
 2885 0eda BD150000 		.4byte	.LASF297
 2886 0ede 0E       		.byte	0xe
 2887 0edf 4702     		.2byte	0x247
 2888 0ee1 25000000 		.4byte	0x25
 2889 0ee5 38       		.byte	0x38
 2890 0ee6 07       		.uleb128 0x7
 2891 0ee7 96120000 		.4byte	.LASF298
 2892 0eeb 0E       		.byte	0xe
 2893 0eec 4902     		.2byte	0x249
 2894 0eee 32110000 		.4byte	0x1132
 2895 0ef2 3C       		.byte	0x3c
 2896 0ef3 07       		.uleb128 0x7
 2897 0ef4 9A050000 		.4byte	.LASF299
 2898 0ef8 0E       		.byte	0xe
 2899 0ef9 4C02     		.2byte	0x24c
 2900 0efb 640A0000 		.4byte	0xa64
 2901 0eff 40       		.byte	0x40
 2902 0f00 07       		.uleb128 0x7
 2903 0f01 83050000 		.4byte	.LASF300
 2904 0f05 0E       		.byte	0xe
 2905 0f06 4D02     		.2byte	0x24d
 2906 0f08 25000000 		.4byte	0x25
 2907 0f0c 44       		.byte	0x44
 2908 0f0d 07       		.uleb128 0x7
 2909 0f0e 37140000 		.4byte	.LASF301
 2910 0f12 0E       		.byte	0xe
 2911 0f13 4E02     		.2byte	0x24e
 2912 0f15 640A0000 		.4byte	0xa64
 2913 0f19 48       		.byte	0x48
 2914 0f1a 07       		.uleb128 0x7
 2915 0f1b 610E0000 		.4byte	.LASF302
 2916 0f1f 0E       		.byte	0xe
ARM GAS  /tmp/ccbYIR7z.s 			page 96


 2917 0f20 4F02     		.2byte	0x24f
 2918 0f22 38110000 		.4byte	0x1138
 2919 0f26 4C       		.byte	0x4c
 2920 0f27 07       		.uleb128 0x7
 2921 0f28 E9010000 		.4byte	.LASF303
 2922 0f2c 0E       		.byte	0xe
 2923 0f2d 5202     		.2byte	0x252
 2924 0f2f 25000000 		.4byte	0x25
 2925 0f33 50       		.byte	0x50
 2926 0f34 07       		.uleb128 0x7
 2927 0f35 5C090000 		.4byte	.LASF304
 2928 0f39 0E       		.byte	0xe
 2929 0f3a 5302     		.2byte	0x253
 2930 0f3c 950F0000 		.4byte	0xf95
 2931 0f40 54       		.byte	0x54
 2932 0f41 07       		.uleb128 0x7
 2933 0f42 E0090000 		.4byte	.LASF305
 2934 0f46 0E       		.byte	0xe
 2935 0f47 7602     		.2byte	0x276
 2936 0f49 2A0D0000 		.4byte	0xd2a
 2937 0f4d 58       		.byte	0x58
 2938 0f4e 10       		.uleb128 0x10
 2939 0f4f D0000000 		.4byte	.LASF243
 2940 0f53 0E       		.byte	0xe
 2941 0f54 7A02     		.2byte	0x27a
 2942 0f56 810B0000 		.4byte	0xb81
 2943 0f5a 4801     		.2byte	0x148
 2944 0f5c 10       		.uleb128 0x10
 2945 0f5d E9110000 		.4byte	.LASF306
 2946 0f61 0E       		.byte	0xe
 2947 0f62 7B02     		.2byte	0x27b
 2948 0f64 430B0000 		.4byte	0xb43
 2949 0f68 4C01     		.2byte	0x14c
 2950 0f6a 10       		.uleb128 0x10
 2951 0f6b 0F020000 		.4byte	.LASF307
 2952 0f6f 0E       		.byte	0xe
 2953 0f70 7F02     		.2byte	0x27f
 2954 0f72 49110000 		.4byte	0x1149
 2955 0f76 DC02     		.2byte	0x2dc
 2956 0f78 10       		.uleb128 0x10
 2957 0f79 82120000 		.4byte	.LASF308
 2958 0f7d 0E       		.byte	0xe
 2959 0f7e 8402     		.2byte	0x284
 2960 0f80 41100000 		.4byte	0x1041
 2961 0f84 E002     		.2byte	0x2e0
 2962 0f86 10       		.uleb128 0x10
 2963 0f87 4E040000 		.4byte	.LASF309
 2964 0f8b 0E       		.byte	0xe
 2965 0f8c 8502     		.2byte	0x285
 2966 0f8e 55110000 		.4byte	0x1155
 2967 0f92 EC02     		.2byte	0x2ec
 2968 0f94 00       		.byte	0
 2969 0f95 20       		.uleb128 0x20
 2970 0f96 04       		.byte	0x4
 2971 0f97 9B0F0000 		.4byte	0xf9b
 2972 0f9b 05       		.uleb128 0x5
 2973 0f9c 01       		.byte	0x1
ARM GAS  /tmp/ccbYIR7z.s 			page 97


 2974 0f9d 08       		.byte	0x8
 2975 0f9e 20110000 		.4byte	.LASF310
 2976 0fa2 04       		.uleb128 0x4
 2977 0fa3 9B0F0000 		.4byte	0xf9b
 2978 0fa7 20       		.uleb128 0x20
 2979 0fa8 04       		.byte	0x4
 2980 0fa9 F30C0000 		.4byte	0xcf3
 2981 0fad 23       		.uleb128 0x23
 2982 0fae 25000000 		.4byte	0x25
 2983 0fb2 CB0F0000 		.4byte	0xfcb
 2984 0fb6 24       		.uleb128 0x24
 2985 0fb7 110D0000 		.4byte	0xd11
 2986 0fbb 24       		.uleb128 0x24
 2987 0fbc 81040000 		.4byte	0x481
 2988 0fc0 24       		.uleb128 0x24
 2989 0fc1 CB0F0000 		.4byte	0xfcb
 2990 0fc5 24       		.uleb128 0x24
 2991 0fc6 25000000 		.4byte	0x25
 2992 0fca 00       		.byte	0
 2993 0fcb 20       		.uleb128 0x20
 2994 0fcc 04       		.byte	0x4
 2995 0fcd A20F0000 		.4byte	0xfa2
 2996 0fd1 20       		.uleb128 0x20
 2997 0fd2 04       		.byte	0x4
 2998 0fd3 AD0F0000 		.4byte	0xfad
 2999 0fd7 23       		.uleb128 0x23
 3000 0fd8 85090000 		.4byte	0x985
 3001 0fdc F50F0000 		.4byte	0xff5
 3002 0fe0 24       		.uleb128 0x24
 3003 0fe1 110D0000 		.4byte	0xd11
 3004 0fe5 24       		.uleb128 0x24
 3005 0fe6 81040000 		.4byte	0x481
 3006 0fea 24       		.uleb128 0x24
 3007 0feb 85090000 		.4byte	0x985
 3008 0fef 24       		.uleb128 0x24
 3009 0ff0 25000000 		.4byte	0x25
 3010 0ff4 00       		.byte	0
 3011 0ff5 20       		.uleb128 0x20
 3012 0ff6 04       		.byte	0x4
 3013 0ff7 D70F0000 		.4byte	0xfd7
 3014 0ffb 23       		.uleb128 0x23
 3015 0ffc 25000000 		.4byte	0x25
 3016 1000 0F100000 		.4byte	0x100f
 3017 1004 24       		.uleb128 0x24
 3018 1005 110D0000 		.4byte	0xd11
 3019 1009 24       		.uleb128 0x24
 3020 100a 81040000 		.4byte	0x481
 3021 100e 00       		.byte	0
 3022 100f 20       		.uleb128 0x20
 3023 1010 04       		.byte	0x4
 3024 1011 FB0F0000 		.4byte	0xffb
 3025 1015 12       		.uleb128 0x12
 3026 1016 AC000000 		.4byte	0xac
 3027 101a 25100000 		.4byte	0x1025
 3028 101e 13       		.uleb128 0x13
 3029 101f 58050000 		.4byte	0x558
 3030 1023 02       		.byte	0x2
ARM GAS  /tmp/ccbYIR7z.s 			page 98


 3031 1024 00       		.byte	0
 3032 1025 12       		.uleb128 0x12
 3033 1026 AC000000 		.4byte	0xac
 3034 102a 35100000 		.4byte	0x1035
 3035 102e 13       		.uleb128 0x13
 3036 102f 58050000 		.4byte	0x558
 3037 1033 00       		.byte	0
 3038 1034 00       		.byte	0
 3039 1035 08       		.uleb128 0x8
 3040 1036 B4160000 		.4byte	.LASF311
 3041 103a 0E       		.byte	0xe
 3042 103b 1D01     		.2byte	0x11d
 3043 103d C90B0000 		.4byte	0xbc9
 3044 1041 29       		.uleb128 0x29
 3045 1042 25110000 		.4byte	.LASF312
 3046 1046 0C       		.byte	0xc
 3047 1047 0E       		.byte	0xe
 3048 1048 2101     		.2byte	0x121
 3049 104a 76100000 		.4byte	0x1076
 3050 104e 07       		.uleb128 0x7
 3051 104f 870A0000 		.4byte	.LASF223
 3052 1053 0E       		.byte	0xe
 3053 1054 2301     		.2byte	0x123
 3054 1056 76100000 		.4byte	0x1076
 3055 105a 00       		.byte	0
 3056 105b 07       		.uleb128 0x7
 3057 105c F8090000 		.4byte	.LASF313
 3058 1060 0E       		.byte	0xe
 3059 1061 2401     		.2byte	0x124
 3060 1063 25000000 		.4byte	0x25
 3061 1067 04       		.byte	0x4
 3062 1068 07       		.uleb128 0x7
 3063 1069 FC0F0000 		.4byte	.LASF314
 3064 106d 0E       		.byte	0xe
 3065 106e 2501     		.2byte	0x125
 3066 1070 7C100000 		.4byte	0x107c
 3067 1074 08       		.byte	0x8
 3068 1075 00       		.byte	0
 3069 1076 20       		.uleb128 0x20
 3070 1077 04       		.byte	0x4
 3071 1078 41100000 		.4byte	0x1041
 3072 107c 20       		.uleb128 0x20
 3073 107d 04       		.byte	0x4
 3074 107e 35100000 		.4byte	0x1035
 3075 1082 29       		.uleb128 0x29
 3076 1083 78180000 		.4byte	.LASF315
 3077 1087 0E       		.byte	0xe
 3078 1088 0E       		.byte	0xe
 3079 1089 3D01     		.2byte	0x13d
 3080 108b B7100000 		.4byte	0x10b7
 3081 108f 07       		.uleb128 0x7
 3082 1090 CB0C0000 		.4byte	.LASF316
 3083 1094 0E       		.byte	0xe
 3084 1095 3E01     		.2byte	0x13e
 3085 1097 B7100000 		.4byte	0x10b7
 3086 109b 00       		.byte	0
 3087 109c 07       		.uleb128 0x7
ARM GAS  /tmp/ccbYIR7z.s 			page 99


 3088 109d 37070000 		.4byte	.LASF317
 3089 10a1 0E       		.byte	0xe
 3090 10a2 3F01     		.2byte	0x13f
 3091 10a4 B7100000 		.4byte	0x10b7
 3092 10a8 06       		.byte	0x6
 3093 10a9 07       		.uleb128 0x7
 3094 10aa 4A030000 		.4byte	.LASF318
 3095 10ae 0E       		.byte	0xe
 3096 10af 4001     		.2byte	0x140
 3097 10b1 D0000000 		.4byte	0xd0
 3098 10b5 0C       		.byte	0xc
 3099 10b6 00       		.byte	0
 3100 10b7 12       		.uleb128 0x12
 3101 10b8 D0000000 		.4byte	0xd0
 3102 10bc C7100000 		.4byte	0x10c7
 3103 10c0 13       		.uleb128 0x13
 3104 10c1 58050000 		.4byte	0x558
 3105 10c5 02       		.byte	0x2
 3106 10c6 00       		.byte	0
 3107 10c7 12       		.uleb128 0x12
 3108 10c8 9B0F0000 		.4byte	0xf9b
 3109 10cc D7100000 		.4byte	0x10d7
 3110 10d0 13       		.uleb128 0x13
 3111 10d1 58050000 		.4byte	0x558
 3112 10d5 19       		.byte	0x19
 3113 10d6 00       		.byte	0
 3114 10d7 12       		.uleb128 0x12
 3115 10d8 9B0F0000 		.4byte	0xf9b
 3116 10dc E7100000 		.4byte	0x10e7
 3117 10e0 13       		.uleb128 0x13
 3118 10e1 58050000 		.4byte	0x558
 3119 10e5 07       		.byte	0x7
 3120 10e6 00       		.byte	0
 3121 10e7 12       		.uleb128 0x12
 3122 10e8 9B0F0000 		.4byte	0xf9b
 3123 10ec F7100000 		.4byte	0x10f7
 3124 10f0 13       		.uleb128 0x13
 3125 10f1 58050000 		.4byte	0x558
 3126 10f5 17       		.byte	0x17
 3127 10f6 00       		.byte	0
 3128 10f7 12       		.uleb128 0x12
 3129 10f8 C30B0000 		.4byte	0xbc3
 3130 10fc 07110000 		.4byte	0x1107
 3131 1100 13       		.uleb128 0x13
 3132 1101 58050000 		.4byte	0x558
 3133 1105 1D       		.byte	0x1d
 3134 1106 00       		.byte	0
 3135 1107 12       		.uleb128 0x12
 3136 1108 3C000000 		.4byte	0x3c
 3137 110c 17110000 		.4byte	0x1117
 3138 1110 13       		.uleb128 0x13
 3139 1111 58050000 		.4byte	0x558
 3140 1115 1D       		.byte	0x1d
 3141 1116 00       		.byte	0
 3142 1117 12       		.uleb128 0x12
 3143 1118 9B0F0000 		.4byte	0xf9b
 3144 111c 27110000 		.4byte	0x1127
ARM GAS  /tmp/ccbYIR7z.s 			page 100


 3145 1120 13       		.uleb128 0x13
 3146 1121 58050000 		.4byte	0x558
 3147 1125 18       		.byte	0x18
 3148 1126 00       		.byte	0
 3149 1127 2A       		.uleb128 0x2a
 3150 1128 32110000 		.4byte	0x1132
 3151 112c 24       		.uleb128 0x24
 3152 112d 110D0000 		.4byte	0xd11
 3153 1131 00       		.byte	0
 3154 1132 20       		.uleb128 0x20
 3155 1133 04       		.byte	0x4
 3156 1134 27110000 		.4byte	0x1127
 3157 1138 20       		.uleb128 0x20
 3158 1139 04       		.byte	0x4
 3159 113a 640A0000 		.4byte	0xa64
 3160 113e 2A       		.uleb128 0x2a
 3161 113f 49110000 		.4byte	0x1149
 3162 1143 24       		.uleb128 0x24
 3163 1144 25000000 		.4byte	0x25
 3164 1148 00       		.byte	0
 3165 1149 20       		.uleb128 0x20
 3166 114a 04       		.byte	0x4
 3167 114b 4F110000 		.4byte	0x114f
 3168 114f 20       		.uleb128 0x20
 3169 1150 04       		.byte	0x4
 3170 1151 3E110000 		.4byte	0x113e
 3171 1155 12       		.uleb128 0x12
 3172 1156 35100000 		.4byte	0x1035
 3173 115a 65110000 		.4byte	0x1165
 3174 115e 13       		.uleb128 0x13
 3175 115f 58050000 		.4byte	0x558
 3176 1163 02       		.byte	0x2
 3177 1164 00       		.byte	0
 3178 1165 15       		.uleb128 0x15
 3179 1166 5A120000 		.4byte	.LASF319
 3180 116a 0E       		.byte	0xe
 3181 116b FD02     		.2byte	0x2fd
 3182 116d 110D0000 		.4byte	0xd11
 3183 1171 15       		.uleb128 0x15
 3184 1172 8F150000 		.4byte	.LASF320
 3185 1176 0E       		.byte	0xe
 3186 1177 FE02     		.2byte	0x2fe
 3187 1179 170D0000 		.4byte	0xd17
 3188 117d 2B       		.uleb128 0x2b
 3189 117e 73746400 		.ascii	"std\000"
 3190 1182 23       		.byte	0x23
 3191 1183 00       		.byte	0
 3192 1184 84130000 		.4byte	0x1384
 3193 1188 2C       		.uleb128 0x2c
 3194 1189 14180000 		.4byte	.LASF323
 3195 118d 13       		.byte	0x13
 3196 118e DF       		.byte	0xdf
 3197 118f 2D       		.uleb128 0x2d
 3198 1190 13       		.byte	0x13
 3199 1191 DF       		.byte	0xdf
 3200 1192 88110000 		.4byte	0x1188
 3201 1196 2E       		.uleb128 0x2e
ARM GAS  /tmp/ccbYIR7z.s 			page 101


 3202 1197 0F       		.byte	0xf
 3203 1198 7C       		.byte	0x7c
 3204 1199 0E140000 		.4byte	0x140e
 3205 119d 2E       		.uleb128 0x2e
 3206 119e 0F       		.byte	0xf
 3207 119f 7D       		.byte	0x7d
 3208 11a0 3E140000 		.4byte	0x143e
 3209 11a4 2E       		.uleb128 0x2e
 3210 11a5 0F       		.byte	0xf
 3211 11a6 81       		.byte	0x81
 3212 11a7 B0140000 		.4byte	0x14b0
 3213 11ab 2E       		.uleb128 0x2e
 3214 11ac 0F       		.byte	0xf
 3215 11ad 87       		.byte	0x87
 3216 11ae C5140000 		.4byte	0x14c5
 3217 11b2 2E       		.uleb128 0x2e
 3218 11b3 0F       		.byte	0xf
 3219 11b4 88       		.byte	0x88
 3220 11b5 E1140000 		.4byte	0x14e1
 3221 11b9 2E       		.uleb128 0x2e
 3222 11ba 0F       		.byte	0xf
 3223 11bb 89       		.byte	0x89
 3224 11bc F6140000 		.4byte	0x14f6
 3225 11c0 2E       		.uleb128 0x2e
 3226 11c1 0F       		.byte	0xf
 3227 11c2 8A       		.byte	0x8a
 3228 11c3 0B150000 		.4byte	0x150b
 3229 11c7 2E       		.uleb128 0x2e
 3230 11c8 0F       		.byte	0xf
 3231 11c9 8C       		.byte	0x8c
 3232 11ca 34150000 		.4byte	0x1534
 3233 11ce 2E       		.uleb128 0x2e
 3234 11cf 0F       		.byte	0xf
 3235 11d0 8F       		.byte	0x8f
 3236 11d1 4E150000 		.4byte	0x154e
 3237 11d5 2E       		.uleb128 0x2e
 3238 11d6 0F       		.byte	0xf
 3239 11d7 91       		.byte	0x91
 3240 11d8 63150000 		.4byte	0x1563
 3241 11dc 2E       		.uleb128 0x2e
 3242 11dd 0F       		.byte	0xf
 3243 11de 94       		.byte	0x94
 3244 11df 7D150000 		.4byte	0x157d
 3245 11e3 2E       		.uleb128 0x2e
 3246 11e4 0F       		.byte	0xf
 3247 11e5 95       		.byte	0x95
 3248 11e6 97150000 		.4byte	0x1597
 3249 11ea 2E       		.uleb128 0x2e
 3250 11eb 0F       		.byte	0xf
 3251 11ec 96       		.byte	0x96
 3252 11ed C8150000 		.4byte	0x15c8
 3253 11f1 2E       		.uleb128 0x2e
 3254 11f2 0F       		.byte	0xf
 3255 11f3 98       		.byte	0x98
 3256 11f4 E7150000 		.4byte	0x15e7
 3257 11f8 2E       		.uleb128 0x2e
 3258 11f9 0F       		.byte	0xf
ARM GAS  /tmp/ccbYIR7z.s 			page 102


 3259 11fa 9E       		.byte	0x9e
 3260 11fb 07160000 		.4byte	0x1607
 3261 11ff 2E       		.uleb128 0x2e
 3262 1200 0F       		.byte	0xf
 3263 1201 A0       		.byte	0xa0
 3264 1202 12160000 		.4byte	0x1612
 3265 1206 2E       		.uleb128 0x2e
 3266 1207 0F       		.byte	0xf
 3267 1208 A1       		.byte	0xa1
 3268 1209 23160000 		.4byte	0x1623
 3269 120d 2E       		.uleb128 0x2e
 3270 120e 0F       		.byte	0xf
 3271 120f A2       		.byte	0xa2
 3272 1210 43160000 		.4byte	0x1643
 3273 1214 2E       		.uleb128 0x2e
 3274 1215 0F       		.byte	0xf
 3275 1216 A3       		.byte	0xa3
 3276 1217 62160000 		.4byte	0x1662
 3277 121b 2E       		.uleb128 0x2e
 3278 121c 0F       		.byte	0xf
 3279 121d A4       		.byte	0xa4
 3280 121e 81160000 		.4byte	0x1681
 3281 1222 2E       		.uleb128 0x2e
 3282 1223 0F       		.byte	0xf
 3283 1224 A6       		.byte	0xa6
 3284 1225 96160000 		.4byte	0x1696
 3285 1229 2E       		.uleb128 0x2e
 3286 122a 0F       		.byte	0xf
 3287 122b A7       		.byte	0xa7
 3288 122c BB160000 		.4byte	0x16bb
 3289 1230 2F       		.uleb128 0x2f
 3290 1231 0F       		.byte	0xf
 3291 1232 0401     		.2byte	0x104
 3292 1234 6E140000 		.4byte	0x146e
 3293 1238 2F       		.uleb128 0x2f
 3294 1239 0F       		.byte	0xf
 3295 123a 0901     		.2byte	0x109
 3296 123c CE130000 		.4byte	0x13ce
 3297 1240 2F       		.uleb128 0x2f
 3298 1241 0F       		.byte	0xf
 3299 1242 0A01     		.2byte	0x10a
 3300 1244 D5160000 		.4byte	0x16d5
 3301 1248 2F       		.uleb128 0x2f
 3302 1249 0F       		.byte	0xf
 3303 124a 0C01     		.2byte	0x10c
 3304 124c EF160000 		.4byte	0x16ef
 3305 1250 2F       		.uleb128 0x2f
 3306 1251 0F       		.byte	0xf
 3307 1252 0D01     		.2byte	0x10d
 3308 1254 42170000 		.4byte	0x1742
 3309 1258 2F       		.uleb128 0x2f
 3310 1259 0F       		.byte	0xf
 3311 125a 0E01     		.2byte	0x10e
 3312 125c 04170000 		.4byte	0x1704
 3313 1260 2F       		.uleb128 0x2f
 3314 1261 0F       		.byte	0xf
 3315 1262 0F01     		.2byte	0x10f
ARM GAS  /tmp/ccbYIR7z.s 			page 103


 3316 1264 23170000 		.4byte	0x1723
 3317 1268 2F       		.uleb128 0x2f
 3318 1269 0F       		.byte	0xf
 3319 126a 1001     		.2byte	0x110
 3320 126c 63170000 		.4byte	0x1763
 3321 1270 30       		.uleb128 0x30
 3322 1271 61627300 		.ascii	"abs\000"
 3323 1275 0F       		.byte	0xf
 3324 1276 B4       		.byte	0xb4
 3325 1277 E1050000 		.4byte	.LASF546
 3326 127b 70000000 		.4byte	0x70
 3327 127f 89120000 		.4byte	0x1289
 3328 1283 24       		.uleb128 0x24
 3329 1284 70000000 		.4byte	0x70
 3330 1288 00       		.byte	0
 3331 1289 2F       		.uleb128 0x2f
 3332 128a 10       		.byte	0x10
 3333 128b 4D04     		.2byte	0x44d
 3334 128d 63180000 		.4byte	0x1863
 3335 1291 2F       		.uleb128 0x2f
 3336 1292 10       		.byte	0x10
 3337 1293 4E04     		.2byte	0x44e
 3338 1295 58180000 		.4byte	0x1858
 3339 1299 31       		.uleb128 0x31
 3340 129a 45070000 		.4byte	.LASF321
 3341 129e 10       		.byte	0x10
 3342 129f 9301     		.2byte	0x193
 3343 12a1 5E150000 		.4byte	.LASF547
 3344 12a5 77000000 		.4byte	0x77
 3345 12a9 B8120000 		.4byte	0x12b8
 3346 12ad 24       		.uleb128 0x24
 3347 12ae 77000000 		.4byte	0x77
 3348 12b2 24       		.uleb128 0x24
 3349 12b3 A4180000 		.4byte	0x18a4
 3350 12b7 00       		.byte	0
 3351 12b8 2E       		.uleb128 0x2e
 3352 12b9 11       		.byte	0x11
 3353 12ba 30       		.byte	0x30
 3354 12bb 86010000 		.4byte	0x186
 3355 12bf 2E       		.uleb128 0x2e
 3356 12c0 11       		.byte	0x11
 3357 12c1 31       		.byte	0x31
 3358 12c2 A6010000 		.4byte	0x1a6
 3359 12c6 2E       		.uleb128 0x2e
 3360 12c7 11       		.byte	0x11
 3361 12c8 32       		.byte	0x32
 3362 12c9 BC010000 		.4byte	0x1bc
 3363 12cd 2E       		.uleb128 0x2e
 3364 12ce 11       		.byte	0x11
 3365 12cf 33       		.byte	0x33
 3366 12d0 E1010000 		.4byte	0x1e1
 3367 12d4 2E       		.uleb128 0x2e
 3368 12d5 11       		.byte	0x11
 3369 12d6 35       		.byte	0x35
 3370 12d7 65020000 		.4byte	0x265
 3371 12db 2E       		.uleb128 0x2e
 3372 12dc 11       		.byte	0x11
ARM GAS  /tmp/ccbYIR7z.s 			page 104


 3373 12dd 36       		.byte	0x36
 3374 12de 7B020000 		.4byte	0x27b
 3375 12e2 2E       		.uleb128 0x2e
 3376 12e3 11       		.byte	0x11
 3377 12e4 37       		.byte	0x37
 3378 12e5 91020000 		.4byte	0x291
 3379 12e9 2E       		.uleb128 0x2e
 3380 12ea 11       		.byte	0x11
 3381 12eb 38       		.byte	0x38
 3382 12ec A7020000 		.4byte	0x2a7
 3383 12f0 2E       		.uleb128 0x2e
 3384 12f1 11       		.byte	0x11
 3385 12f2 3A       		.byte	0x3a
 3386 12f3 0D020000 		.4byte	0x20d
 3387 12f7 2E       		.uleb128 0x2e
 3388 12f8 11       		.byte	0x11
 3389 12f9 3B       		.byte	0x3b
 3390 12fa 23020000 		.4byte	0x223
 3391 12fe 2E       		.uleb128 0x2e
 3392 12ff 11       		.byte	0x11
 3393 1300 3C       		.byte	0x3c
 3394 1301 39020000 		.4byte	0x239
 3395 1305 2E       		.uleb128 0x2e
 3396 1306 11       		.byte	0x11
 3397 1307 3D       		.byte	0x3d
 3398 1308 4F020000 		.4byte	0x24f
 3399 130c 2E       		.uleb128 0x2e
 3400 130d 11       		.byte	0x11
 3401 130e 3F       		.byte	0x3f
 3402 130f BD020000 		.4byte	0x2bd
 3403 1313 2E       		.uleb128 0x2e
 3404 1314 11       		.byte	0x11
 3405 1315 40       		.byte	0x40
 3406 1316 F7010000 		.4byte	0x1f7
 3407 131a 2E       		.uleb128 0x2e
 3408 131b 11       		.byte	0x11
 3409 131c 42       		.byte	0x42
 3410 131d 91010000 		.4byte	0x191
 3411 1321 2E       		.uleb128 0x2e
 3412 1322 11       		.byte	0x11
 3413 1323 43       		.byte	0x43
 3414 1324 B1010000 		.4byte	0x1b1
 3415 1328 2E       		.uleb128 0x2e
 3416 1329 11       		.byte	0x11
 3417 132a 44       		.byte	0x44
 3418 132b CC010000 		.4byte	0x1cc
 3419 132f 2E       		.uleb128 0x2e
 3420 1330 11       		.byte	0x11
 3421 1331 45       		.byte	0x45
 3422 1332 EC010000 		.4byte	0x1ec
 3423 1336 2E       		.uleb128 0x2e
 3424 1337 11       		.byte	0x11
 3425 1338 47       		.byte	0x47
 3426 1339 70020000 		.4byte	0x270
 3427 133d 2E       		.uleb128 0x2e
 3428 133e 11       		.byte	0x11
 3429 133f 48       		.byte	0x48
ARM GAS  /tmp/ccbYIR7z.s 			page 105


 3430 1340 86020000 		.4byte	0x286
 3431 1344 2E       		.uleb128 0x2e
 3432 1345 11       		.byte	0x11
 3433 1346 49       		.byte	0x49
 3434 1347 9C020000 		.4byte	0x29c
 3435 134b 2E       		.uleb128 0x2e
 3436 134c 11       		.byte	0x11
 3437 134d 4A       		.byte	0x4a
 3438 134e B2020000 		.4byte	0x2b2
 3439 1352 2E       		.uleb128 0x2e
 3440 1353 11       		.byte	0x11
 3441 1354 4C       		.byte	0x4c
 3442 1355 18020000 		.4byte	0x218
 3443 1359 2E       		.uleb128 0x2e
 3444 135a 11       		.byte	0x11
 3445 135b 4D       		.byte	0x4d
 3446 135c 2E020000 		.4byte	0x22e
 3447 1360 2E       		.uleb128 0x2e
 3448 1361 11       		.byte	0x11
 3449 1362 4E       		.byte	0x4e
 3450 1363 44020000 		.4byte	0x244
 3451 1367 2E       		.uleb128 0x2e
 3452 1368 11       		.byte	0x11
 3453 1369 4F       		.byte	0x4f
 3454 136a 5A020000 		.4byte	0x25a
 3455 136e 2E       		.uleb128 0x2e
 3456 136f 11       		.byte	0x11
 3457 1370 51       		.byte	0x51
 3458 1371 C8020000 		.4byte	0x2c8
 3459 1375 2E       		.uleb128 0x2e
 3460 1376 11       		.byte	0x11
 3461 1377 52       		.byte	0x52
 3462 1378 02020000 		.4byte	0x202
 3463 137c 2E       		.uleb128 0x2e
 3464 137d 12       		.byte	0x12
 3465 137e 38       		.byte	0x38
 3466 137f 7E000000 		.4byte	0x7e
 3467 1383 00       		.byte	0
 3468 1384 32       		.uleb128 0x32
 3469 1385 A2040000 		.4byte	.LASF322
 3470 1389 13       		.byte	0x13
 3471 138a E1       		.byte	0xe1
 3472 138b E9130000 		.4byte	0x13e9
 3473 138f 2C       		.uleb128 0x2c
 3474 1390 14180000 		.4byte	.LASF323
 3475 1394 13       		.byte	0x13
 3476 1395 E3       		.byte	0xe3
 3477 1396 2D       		.uleb128 0x2d
 3478 1397 13       		.byte	0x13
 3479 1398 E3       		.byte	0xe3
 3480 1399 8F130000 		.4byte	0x138f
 3481 139d 2E       		.uleb128 0x2e
 3482 139e 0F       		.byte	0xf
 3483 139f DC       		.byte	0xdc
 3484 13a0 6E140000 		.4byte	0x146e
 3485 13a4 2E       		.uleb128 0x2e
 3486 13a5 0F       		.byte	0xf
ARM GAS  /tmp/ccbYIR7z.s 			page 106


 3487 13a6 EC       		.byte	0xec
 3488 13a7 D5160000 		.4byte	0x16d5
 3489 13ab 2E       		.uleb128 0x2e
 3490 13ac 0F       		.byte	0xf
 3491 13ad F7       		.byte	0xf7
 3492 13ae EF160000 		.4byte	0x16ef
 3493 13b2 2E       		.uleb128 0x2e
 3494 13b3 0F       		.byte	0xf
 3495 13b4 F8       		.byte	0xf8
 3496 13b5 04170000 		.4byte	0x1704
 3497 13b9 2E       		.uleb128 0x2e
 3498 13ba 0F       		.byte	0xf
 3499 13bb F9       		.byte	0xf9
 3500 13bc 23170000 		.4byte	0x1723
 3501 13c0 2E       		.uleb128 0x2e
 3502 13c1 0F       		.byte	0xf
 3503 13c2 FB       		.byte	0xfb
 3504 13c3 42170000 		.4byte	0x1742
 3505 13c7 2E       		.uleb128 0x2e
 3506 13c8 0F       		.byte	0xf
 3507 13c9 FC       		.byte	0xfc
 3508 13ca 63170000 		.4byte	0x1763
 3509 13ce 33       		.uleb128 0x33
 3510 13cf 64697600 		.ascii	"div\000"
 3511 13d3 0F       		.byte	0xf
 3512 13d4 E9       		.byte	0xe9
 3513 13d5 63160000 		.4byte	.LASF548
 3514 13d9 6E140000 		.4byte	0x146e
 3515 13dd 24       		.uleb128 0x24
 3516 13de 70000000 		.4byte	0x70
 3517 13e2 24       		.uleb128 0x24
 3518 13e3 70000000 		.4byte	0x70
 3519 13e7 00       		.byte	0
 3520 13e8 00       		.byte	0
 3521 13e9 1B       		.uleb128 0x1b
 3522 13ea 08       		.byte	0x8
 3523 13eb 14       		.byte	0x14
 3524 13ec 20       		.byte	0x20
 3525 13ed C3140000 		.4byte	.LASF325
 3526 13f1 0E140000 		.4byte	0x140e
 3527 13f5 18       		.uleb128 0x18
 3528 13f6 E4080000 		.4byte	.LASF326
 3529 13fa 14       		.byte	0x14
 3530 13fb 21       		.byte	0x21
 3531 13fc 25000000 		.4byte	0x25
 3532 1400 00       		.byte	0
 3533 1401 1F       		.uleb128 0x1f
 3534 1402 72656D00 		.ascii	"rem\000"
 3535 1406 14       		.byte	0x14
 3536 1407 22       		.byte	0x22
 3537 1408 25000000 		.4byte	0x25
 3538 140c 04       		.byte	0x4
 3539 140d 00       		.byte	0
 3540 140e 03       		.uleb128 0x3
 3541 140f CF140000 		.4byte	.LASF327
 3542 1413 14       		.byte	0x14
 3543 1414 23       		.byte	0x23
ARM GAS  /tmp/ccbYIR7z.s 			page 107


 3544 1415 E9130000 		.4byte	0x13e9
 3545 1419 1B       		.uleb128 0x1b
 3546 141a 08       		.byte	0x8
 3547 141b 14       		.byte	0x14
 3548 141c 26       		.byte	0x26
 3549 141d B5030000 		.4byte	.LASF328
 3550 1421 3E140000 		.4byte	0x143e
 3551 1425 18       		.uleb128 0x18
 3552 1426 E4080000 		.4byte	.LASF326
 3553 142a 14       		.byte	0x14
 3554 142b 27       		.byte	0x27
 3555 142c E2000000 		.4byte	0xe2
 3556 1430 00       		.byte	0
 3557 1431 1F       		.uleb128 0x1f
 3558 1432 72656D00 		.ascii	"rem\000"
 3559 1436 14       		.byte	0x14
 3560 1437 28       		.byte	0x28
 3561 1438 E2000000 		.4byte	0xe2
 3562 143c 04       		.byte	0x4
 3563 143d 00       		.byte	0
 3564 143e 03       		.uleb128 0x3
 3565 143f 430B0000 		.4byte	.LASF329
 3566 1443 14       		.byte	0x14
 3567 1444 29       		.byte	0x29
 3568 1445 19140000 		.4byte	0x1419
 3569 1449 1B       		.uleb128 0x1b
 3570 144a 10       		.byte	0x10
 3571 144b 14       		.byte	0x14
 3572 144c 2D       		.byte	0x2d
 3573 144d 8B000000 		.4byte	.LASF330
 3574 1451 6E140000 		.4byte	0x146e
 3575 1455 18       		.uleb128 0x18
 3576 1456 E4080000 		.4byte	.LASF326
 3577 145a 14       		.byte	0x14
 3578 145b 2E       		.byte	0x2e
 3579 145c 70000000 		.4byte	0x70
 3580 1460 00       		.byte	0
 3581 1461 1F       		.uleb128 0x1f
 3582 1462 72656D00 		.ascii	"rem\000"
 3583 1466 14       		.byte	0x14
 3584 1467 2F       		.byte	0x2f
 3585 1468 70000000 		.4byte	0x70
 3586 146c 08       		.byte	0x8
 3587 146d 00       		.byte	0
 3588 146e 03       		.uleb128 0x3
 3589 146f CB090000 		.4byte	.LASF331
 3590 1473 14       		.byte	0x14
 3591 1474 30       		.byte	0x30
 3592 1475 49140000 		.4byte	0x1449
 3593 1479 03       		.uleb128 0x3
 3594 147a 31150000 		.4byte	.LASF332
 3595 147e 14       		.byte	0x14
 3596 147f 35       		.byte	0x35
 3597 1480 84140000 		.4byte	0x1484
 3598 1484 20       		.uleb128 0x20
 3599 1485 04       		.byte	0x4
 3600 1486 8A140000 		.4byte	0x148a
ARM GAS  /tmp/ccbYIR7z.s 			page 108


 3601 148a 23       		.uleb128 0x23
 3602 148b 25000000 		.4byte	0x25
 3603 148f 9E140000 		.4byte	0x149e
 3604 1493 24       		.uleb128 0x24
 3605 1494 9E140000 		.4byte	0x149e
 3606 1498 24       		.uleb128 0x24
 3607 1499 9E140000 		.4byte	0x149e
 3608 149d 00       		.byte	0
 3609 149e 20       		.uleb128 0x20
 3610 149f 04       		.byte	0x4
 3611 14a0 A4140000 		.4byte	0x14a4
 3612 14a4 34       		.uleb128 0x34
 3613 14a5 16       		.uleb128 0x16
 3614 14a6 A4100000 		.4byte	.LASF333
 3615 14aa 14       		.byte	0x14
 3616 14ab 5F       		.byte	0x5f
 3617 14ac 950F0000 		.4byte	0xf95
 3618 14b0 35       		.uleb128 0x35
 3619 14b1 4A070000 		.4byte	.LASF334
 3620 14b5 14       		.byte	0x14
 3621 14b6 48       		.byte	0x48
 3622 14b7 25000000 		.4byte	0x25
 3623 14bb C5140000 		.4byte	0x14c5
 3624 14bf 24       		.uleb128 0x24
 3625 14c0 970B0000 		.4byte	0xb97
 3626 14c4 00       		.byte	0
 3627 14c5 35       		.uleb128 0x35
 3628 14c6 EB020000 		.4byte	.LASF335
 3629 14ca 14       		.byte	0x14
 3630 14cb 49       		.byte	0x49
 3631 14cc DA140000 		.4byte	0x14da
 3632 14d0 DA140000 		.4byte	0x14da
 3633 14d4 24       		.uleb128 0x24
 3634 14d5 CB0F0000 		.4byte	0xfcb
 3635 14d9 00       		.byte	0
 3636 14da 05       		.uleb128 0x5
 3637 14db 08       		.byte	0x8
 3638 14dc 04       		.byte	0x4
 3639 14dd 1D130000 		.4byte	.LASF336
 3640 14e1 35       		.uleb128 0x35
 3641 14e2 F0020000 		.4byte	.LASF337
 3642 14e6 14       		.byte	0x14
 3643 14e7 4D       		.byte	0x4d
 3644 14e8 25000000 		.4byte	0x25
 3645 14ec F6140000 		.4byte	0x14f6
 3646 14f0 24       		.uleb128 0x24
 3647 14f1 CB0F0000 		.4byte	0xfcb
 3648 14f5 00       		.byte	0
 3649 14f6 35       		.uleb128 0x35
 3650 14f7 04030000 		.4byte	.LASF338
 3651 14fb 14       		.byte	0x14
 3652 14fc 4F       		.byte	0x4f
 3653 14fd E2000000 		.4byte	0xe2
 3654 1501 0B150000 		.4byte	0x150b
 3655 1505 24       		.uleb128 0x24
 3656 1506 CB0F0000 		.4byte	0xfcb
 3657 150a 00       		.byte	0
ARM GAS  /tmp/ccbYIR7z.s 			page 109


 3658 150b 35       		.uleb128 0x35
 3659 150c 2F120000 		.4byte	.LASF339
 3660 1510 14       		.byte	0x14
 3661 1511 51       		.byte	0x51
 3662 1512 81040000 		.4byte	0x481
 3663 1516 34150000 		.4byte	0x1534
 3664 151a 24       		.uleb128 0x24
 3665 151b 9E140000 		.4byte	0x149e
 3666 151f 24       		.uleb128 0x24
 3667 1520 9E140000 		.4byte	0x149e
 3668 1524 24       		.uleb128 0x24
 3669 1525 2C000000 		.4byte	0x2c
 3670 1529 24       		.uleb128 0x24
 3671 152a 2C000000 		.4byte	0x2c
 3672 152e 24       		.uleb128 0x24
 3673 152f 79140000 		.4byte	0x1479
 3674 1533 00       		.byte	0
 3675 1534 36       		.uleb128 0x36
 3676 1535 64697600 		.ascii	"div\000"
 3677 1539 14       		.byte	0x14
 3678 153a 57       		.byte	0x57
 3679 153b 0E140000 		.4byte	0x140e
 3680 153f 4E150000 		.4byte	0x154e
 3681 1543 24       		.uleb128 0x24
 3682 1544 25000000 		.4byte	0x25
 3683 1548 24       		.uleb128 0x24
 3684 1549 25000000 		.4byte	0x25
 3685 154d 00       		.byte	0
 3686 154e 35       		.uleb128 0x35
 3687 154f B6150000 		.4byte	.LASF340
 3688 1553 14       		.byte	0x14
 3689 1554 5A       		.byte	0x5a
 3690 1555 950F0000 		.4byte	0xf95
 3691 1559 63150000 		.4byte	0x1563
 3692 155d 24       		.uleb128 0x24
 3693 155e CB0F0000 		.4byte	0xfcb
 3694 1562 00       		.byte	0
 3695 1563 35       		.uleb128 0x35
 3696 1564 F7120000 		.4byte	.LASF341
 3697 1568 14       		.byte	0x14
 3698 1569 63       		.byte	0x63
 3699 156a 3E140000 		.4byte	0x143e
 3700 156e 7D150000 		.4byte	0x157d
 3701 1572 24       		.uleb128 0x24
 3702 1573 E2000000 		.4byte	0xe2
 3703 1577 24       		.uleb128 0x24
 3704 1578 E2000000 		.4byte	0xe2
 3705 157c 00       		.byte	0
 3706 157d 35       		.uleb128 0x35
 3707 157e DA090000 		.4byte	.LASF342
 3708 1582 14       		.byte	0x14
 3709 1583 65       		.byte	0x65
 3710 1584 25000000 		.4byte	0x25
 3711 1588 97150000 		.4byte	0x1597
 3712 158c 24       		.uleb128 0x24
 3713 158d CB0F0000 		.4byte	0xfcb
 3714 1591 24       		.uleb128 0x24
ARM GAS  /tmp/ccbYIR7z.s 			page 110


 3715 1592 2C000000 		.4byte	0x2c
 3716 1596 00       		.byte	0
 3717 1597 35       		.uleb128 0x35
 3718 1598 F00E0000 		.4byte	.LASF343
 3719 159c 14       		.byte	0x14
 3720 159d 6B       		.byte	0x6b
 3721 159e 2C000000 		.4byte	0x2c
 3722 15a2 B6150000 		.4byte	0x15b6
 3723 15a6 24       		.uleb128 0x24
 3724 15a7 B6150000 		.4byte	0x15b6
 3725 15ab 24       		.uleb128 0x24
 3726 15ac CB0F0000 		.4byte	0xfcb
 3727 15b0 24       		.uleb128 0x24
 3728 15b1 2C000000 		.4byte	0x2c
 3729 15b5 00       		.byte	0
 3730 15b6 20       		.uleb128 0x20
 3731 15b7 04       		.byte	0x4
 3732 15b8 BC150000 		.4byte	0x15bc
 3733 15bc 05       		.uleb128 0x5
 3734 15bd 04       		.byte	0x4
 3735 15be 07       		.byte	0x7
 3736 15bf B40E0000 		.4byte	.LASF344
 3737 15c3 04       		.uleb128 0x4
 3738 15c4 BC150000 		.4byte	0x15bc
 3739 15c8 35       		.uleb128 0x35
 3740 15c9 E3140000 		.4byte	.LASF345
 3741 15cd 14       		.byte	0x14
 3742 15ce 67       		.byte	0x67
 3743 15cf 25000000 		.4byte	0x25
 3744 15d3 E7150000 		.4byte	0x15e7
 3745 15d7 24       		.uleb128 0x24
 3746 15d8 B6150000 		.4byte	0x15b6
 3747 15dc 24       		.uleb128 0x24
 3748 15dd CB0F0000 		.4byte	0xfcb
 3749 15e1 24       		.uleb128 0x24
 3750 15e2 2C000000 		.4byte	0x2c
 3751 15e6 00       		.byte	0
 3752 15e7 37       		.uleb128 0x37
 3753 15e8 8C130000 		.4byte	.LASF346
 3754 15ec 14       		.byte	0x14
 3755 15ed 87       		.byte	0x87
 3756 15ee 07160000 		.4byte	0x1607
 3757 15f2 24       		.uleb128 0x24
 3758 15f3 81040000 		.4byte	0x481
 3759 15f7 24       		.uleb128 0x24
 3760 15f8 2C000000 		.4byte	0x2c
 3761 15fc 24       		.uleb128 0x24
 3762 15fd 2C000000 		.4byte	0x2c
 3763 1601 24       		.uleb128 0x24
 3764 1602 79140000 		.4byte	0x1479
 3765 1606 00       		.byte	0
 3766 1607 38       		.uleb128 0x38
 3767 1608 E8150000 		.4byte	.LASF549
 3768 160c 14       		.byte	0x14
 3769 160d 88       		.byte	0x88
 3770 160e 25000000 		.4byte	0x25
 3771 1612 37       		.uleb128 0x37
ARM GAS  /tmp/ccbYIR7z.s 			page 111


 3772 1613 8C0C0000 		.4byte	.LASF347
 3773 1617 14       		.byte	0x14
 3774 1618 93       		.byte	0x93
 3775 1619 23160000 		.4byte	0x1623
 3776 161d 24       		.uleb128 0x24
 3777 161e 3C000000 		.4byte	0x3c
 3778 1622 00       		.byte	0
 3779 1623 35       		.uleb128 0x35
 3780 1624 79100000 		.4byte	.LASF348
 3781 1628 14       		.byte	0x14
 3782 1629 94       		.byte	0x94
 3783 162a DA140000 		.4byte	0x14da
 3784 162e 3D160000 		.4byte	0x163d
 3785 1632 24       		.uleb128 0x24
 3786 1633 CB0F0000 		.4byte	0xfcb
 3787 1637 24       		.uleb128 0x24
 3788 1638 3D160000 		.4byte	0x163d
 3789 163c 00       		.byte	0
 3790 163d 20       		.uleb128 0x20
 3791 163e 04       		.byte	0x4
 3792 163f 950F0000 		.4byte	0xf95
 3793 1643 35       		.uleb128 0x35
 3794 1644 8A100000 		.4byte	.LASF349
 3795 1648 14       		.byte	0x14
 3796 1649 9F       		.byte	0x9f
 3797 164a E2000000 		.4byte	0xe2
 3798 164e 62160000 		.4byte	0x1662
 3799 1652 24       		.uleb128 0x24
 3800 1653 CB0F0000 		.4byte	0xfcb
 3801 1657 24       		.uleb128 0x24
 3802 1658 3D160000 		.4byte	0x163d
 3803 165c 24       		.uleb128 0x24
 3804 165d 25000000 		.4byte	0x25
 3805 1661 00       		.byte	0
 3806 1662 35       		.uleb128 0x35
 3807 1663 2B0B0000 		.4byte	.LASF350
 3808 1667 14       		.byte	0x14
 3809 1668 A1       		.byte	0xa1
 3810 1669 F4000000 		.4byte	0xf4
 3811 166d 81160000 		.4byte	0x1681
 3812 1671 24       		.uleb128 0x24
 3813 1672 CB0F0000 		.4byte	0xfcb
 3814 1676 24       		.uleb128 0x24
 3815 1677 3D160000 		.4byte	0x163d
 3816 167b 24       		.uleb128 0x24
 3817 167c 25000000 		.4byte	0x25
 3818 1680 00       		.byte	0
 3819 1681 35       		.uleb128 0x35
 3820 1682 1B0D0000 		.4byte	.LASF351
 3821 1686 14       		.byte	0x14
 3822 1687 A4       		.byte	0xa4
 3823 1688 25000000 		.4byte	0x25
 3824 168c 96160000 		.4byte	0x1696
 3825 1690 24       		.uleb128 0x24
 3826 1691 CB0F0000 		.4byte	0xfcb
 3827 1695 00       		.byte	0
 3828 1696 35       		.uleb128 0x35
ARM GAS  /tmp/ccbYIR7z.s 			page 112


 3829 1697 A50B0000 		.4byte	.LASF352
 3830 169b 14       		.byte	0x14
 3831 169c 6D       		.byte	0x6d
 3832 169d 2C000000 		.4byte	0x2c
 3833 16a1 B5160000 		.4byte	0x16b5
 3834 16a5 24       		.uleb128 0x24
 3835 16a6 950F0000 		.4byte	0xf95
 3836 16aa 24       		.uleb128 0x24
 3837 16ab B5160000 		.4byte	0x16b5
 3838 16af 24       		.uleb128 0x24
 3839 16b0 2C000000 		.4byte	0x2c
 3840 16b4 00       		.byte	0
 3841 16b5 20       		.uleb128 0x20
 3842 16b6 04       		.byte	0x4
 3843 16b7 C3150000 		.4byte	0x15c3
 3844 16bb 35       		.uleb128 0x35
 3845 16bc E1030000 		.4byte	.LASF353
 3846 16c0 14       		.byte	0x14
 3847 16c1 69       		.byte	0x69
 3848 16c2 25000000 		.4byte	0x25
 3849 16c6 D5160000 		.4byte	0x16d5
 3850 16ca 24       		.uleb128 0x24
 3851 16cb 950F0000 		.4byte	0xf95
 3852 16cf 24       		.uleb128 0x24
 3853 16d0 BC150000 		.4byte	0x15bc
 3854 16d4 00       		.byte	0
 3855 16d5 35       		.uleb128 0x35
 3856 16d6 EF040000 		.4byte	.LASF354
 3857 16da 14       		.byte	0x14
 3858 16db F1       		.byte	0xf1
 3859 16dc 6E140000 		.4byte	0x146e
 3860 16e0 EF160000 		.4byte	0x16ef
 3861 16e4 24       		.uleb128 0x24
 3862 16e5 70000000 		.4byte	0x70
 3863 16e9 24       		.uleb128 0x24
 3864 16ea 70000000 		.4byte	0x70
 3865 16ee 00       		.byte	0
 3866 16ef 35       		.uleb128 0x35
 3867 16f0 09120000 		.4byte	.LASF355
 3868 16f4 14       		.byte	0x14
 3869 16f5 EC       		.byte	0xec
 3870 16f6 70000000 		.4byte	0x70
 3871 16fa 04170000 		.4byte	0x1704
 3872 16fe 24       		.uleb128 0x24
 3873 16ff CB0F0000 		.4byte	0xfcb
 3874 1703 00       		.byte	0
 3875 1704 35       		.uleb128 0x35
 3876 1705 3D070000 		.4byte	.LASF356
 3877 1709 14       		.byte	0x14
 3878 170a F2       		.byte	0xf2
 3879 170b 70000000 		.4byte	0x70
 3880 170f 23170000 		.4byte	0x1723
 3881 1713 24       		.uleb128 0x24
 3882 1714 CB0F0000 		.4byte	0xfcb
 3883 1718 24       		.uleb128 0x24
 3884 1719 3D160000 		.4byte	0x163d
 3885 171d 24       		.uleb128 0x24
ARM GAS  /tmp/ccbYIR7z.s 			page 113


 3886 171e 25000000 		.4byte	0x25
 3887 1722 00       		.byte	0
 3888 1723 35       		.uleb128 0x35
 3889 1724 ED160000 		.4byte	.LASF357
 3890 1728 14       		.byte	0x14
 3891 1729 F6       		.byte	0xf6
 3892 172a 11010000 		.4byte	0x111
 3893 172e 42170000 		.4byte	0x1742
 3894 1732 24       		.uleb128 0x24
 3895 1733 CB0F0000 		.4byte	0xfcb
 3896 1737 24       		.uleb128 0x24
 3897 1738 3D160000 		.4byte	0x163d
 3898 173c 24       		.uleb128 0x24
 3899 173d 25000000 		.4byte	0x25
 3900 1741 00       		.byte	0
 3901 1742 35       		.uleb128 0x35
 3902 1743 FA010000 		.4byte	.LASF358
 3903 1747 14       		.byte	0x14
 3904 1748 97       		.byte	0x97
 3905 1749 5C170000 		.4byte	0x175c
 3906 174d 5C170000 		.4byte	0x175c
 3907 1751 24       		.uleb128 0x24
 3908 1752 CB0F0000 		.4byte	0xfcb
 3909 1756 24       		.uleb128 0x24
 3910 1757 3D160000 		.4byte	0x163d
 3911 175b 00       		.byte	0
 3912 175c 05       		.uleb128 0x5
 3913 175d 04       		.byte	0x4
 3914 175e 04       		.byte	0x4
 3915 175f 31060000 		.4byte	.LASF359
 3916 1763 39       		.uleb128 0x39
 3917 1764 2F070000 		.4byte	.LASF360
 3918 1768 14       		.byte	0x14
 3919 1769 2801     		.2byte	0x128
 3920 176b 77000000 		.4byte	0x77
 3921 176f 7E170000 		.4byte	0x177e
 3922 1773 24       		.uleb128 0x24
 3923 1774 CB0F0000 		.4byte	0xfcb
 3924 1778 24       		.uleb128 0x24
 3925 1779 3D160000 		.4byte	0x163d
 3926 177d 00       		.byte	0
 3927 177e 2E       		.uleb128 0x2e
 3928 177f 15       		.byte	0x15
 3929 1780 27       		.byte	0x27
 3930 1781 B0140000 		.4byte	0x14b0
 3931 1785 2E       		.uleb128 0x2e
 3932 1786 15       		.byte	0x15
 3933 1787 33       		.byte	0x33
 3934 1788 0E140000 		.4byte	0x140e
 3935 178c 2E       		.uleb128 0x2e
 3936 178d 15       		.byte	0x15
 3937 178e 34       		.byte	0x34
 3938 178f 3E140000 		.4byte	0x143e
 3939 1793 2E       		.uleb128 0x2e
 3940 1794 15       		.byte	0x15
 3941 1795 36       		.byte	0x36
 3942 1796 70120000 		.4byte	0x1270
ARM GAS  /tmp/ccbYIR7z.s 			page 114


 3943 179a 2E       		.uleb128 0x2e
 3944 179b 15       		.byte	0x15
 3945 179c 37       		.byte	0x37
 3946 179d C5140000 		.4byte	0x14c5
 3947 17a1 2E       		.uleb128 0x2e
 3948 17a2 15       		.byte	0x15
 3949 17a3 38       		.byte	0x38
 3950 17a4 E1140000 		.4byte	0x14e1
 3951 17a8 2E       		.uleb128 0x2e
 3952 17a9 15       		.byte	0x15
 3953 17aa 39       		.byte	0x39
 3954 17ab F6140000 		.4byte	0x14f6
 3955 17af 2E       		.uleb128 0x2e
 3956 17b0 15       		.byte	0x15
 3957 17b1 3A       		.byte	0x3a
 3958 17b2 0B150000 		.4byte	0x150b
 3959 17b6 2E       		.uleb128 0x2e
 3960 17b7 15       		.byte	0x15
 3961 17b8 3C       		.byte	0x3c
 3962 17b9 CE130000 		.4byte	0x13ce
 3963 17bd 2E       		.uleb128 0x2e
 3964 17be 15       		.byte	0x15
 3965 17bf 3E       		.byte	0x3e
 3966 17c0 4E150000 		.4byte	0x154e
 3967 17c4 2E       		.uleb128 0x2e
 3968 17c5 15       		.byte	0x15
 3969 17c6 40       		.byte	0x40
 3970 17c7 63150000 		.4byte	0x1563
 3971 17cb 2E       		.uleb128 0x2e
 3972 17cc 15       		.byte	0x15
 3973 17cd 43       		.byte	0x43
 3974 17ce 7D150000 		.4byte	0x157d
 3975 17d2 2E       		.uleb128 0x2e
 3976 17d3 15       		.byte	0x15
 3977 17d4 44       		.byte	0x44
 3978 17d5 97150000 		.4byte	0x1597
 3979 17d9 2E       		.uleb128 0x2e
 3980 17da 15       		.byte	0x15
 3981 17db 45       		.byte	0x45
 3982 17dc C8150000 		.4byte	0x15c8
 3983 17e0 2E       		.uleb128 0x2e
 3984 17e1 15       		.byte	0x15
 3985 17e2 47       		.byte	0x47
 3986 17e3 E7150000 		.4byte	0x15e7
 3987 17e7 2E       		.uleb128 0x2e
 3988 17e8 15       		.byte	0x15
 3989 17e9 48       		.byte	0x48
 3990 17ea 07160000 		.4byte	0x1607
 3991 17ee 2E       		.uleb128 0x2e
 3992 17ef 15       		.byte	0x15
 3993 17f0 4A       		.byte	0x4a
 3994 17f1 12160000 		.4byte	0x1612
 3995 17f5 2E       		.uleb128 0x2e
 3996 17f6 15       		.byte	0x15
 3997 17f7 4B       		.byte	0x4b
 3998 17f8 23160000 		.4byte	0x1623
 3999 17fc 2E       		.uleb128 0x2e
ARM GAS  /tmp/ccbYIR7z.s 			page 115


 4000 17fd 15       		.byte	0x15
 4001 17fe 4C       		.byte	0x4c
 4002 17ff 43160000 		.4byte	0x1643
 4003 1803 2E       		.uleb128 0x2e
 4004 1804 15       		.byte	0x15
 4005 1805 4D       		.byte	0x4d
 4006 1806 62160000 		.4byte	0x1662
 4007 180a 2E       		.uleb128 0x2e
 4008 180b 15       		.byte	0x15
 4009 180c 4E       		.byte	0x4e
 4010 180d 81160000 		.4byte	0x1681
 4011 1811 2E       		.uleb128 0x2e
 4012 1812 15       		.byte	0x15
 4013 1813 50       		.byte	0x50
 4014 1814 96160000 		.4byte	0x1696
 4015 1818 2E       		.uleb128 0x2e
 4016 1819 15       		.byte	0x15
 4017 181a 51       		.byte	0x51
 4018 181b BB160000 		.4byte	0x16bb
 4019 181f 16       		.uleb128 0x16
 4020 1820 CA070000 		.4byte	.LASF361
 4021 1824 16       		.byte	0x16
 4022 1825 8F       		.byte	0x8f
 4023 1826 31180000 		.4byte	0x1831
 4024 182a 05       		.uleb128 0x5
 4025 182b 01       		.byte	0x1
 4026 182c 02       		.byte	0x2
 4027 182d D4100000 		.4byte	.LASF362
 4028 1831 0A       		.uleb128 0xa
 4029 1832 2A180000 		.4byte	0x182a
 4030 1836 3A       		.uleb128 0x3a
 4031 1837 F7030000 		.4byte	.LASF363
 4032 183b 16       		.byte	0x16
 4033 183c 94       		.byte	0x94
 4034 183d D7010000 		.4byte	0x1d7
 4035 1841 05       		.uleb128 0x5
 4036 1842 03       		.byte	0x3
 4037 1843 00000000 		.4byte	_ZL32cpu_irq_critical_section_counter
 4038 1847 3A       		.uleb128 0x3a
 4039 1848 78160000 		.4byte	.LASF364
 4040 184c 16       		.byte	0x16
 4041 184d 95       		.byte	0x95
 4042 184e 31180000 		.4byte	0x1831
 4043 1852 05       		.uleb128 0x5
 4044 1853 03       		.byte	0x3
 4045 1854 00000000 		.4byte	_ZL28cpu_irq_prev_interrupt_state
 4046 1858 03       		.uleb128 0x3
 4047 1859 CA010000 		.4byte	.LASF365
 4048 185d 17       		.byte	0x17
 4049 185e AD       		.byte	0xad
 4050 185f 5C170000 		.4byte	0x175c
 4051 1863 03       		.uleb128 0x3
 4052 1864 67050000 		.4byte	.LASF366
 4053 1868 17       		.byte	0x17
 4054 1869 AE       		.byte	0xae
 4055 186a DA140000 		.4byte	0x14da
 4056 186e 3B       		.uleb128 0x3b
ARM GAS  /tmp/ccbYIR7z.s 			page 116


 4057 186f 6B0F0000 		.4byte	.LASF368
 4058 1873 01       		.byte	0x1
 4059 1874 9A000000 		.4byte	0x9a
 4060 1878 17       		.byte	0x17
 4061 1879 9902     		.2byte	0x299
 4062 187b 98180000 		.4byte	0x1898
 4063 187f 0C       		.uleb128 0xc
 4064 1880 5E0D0000 		.4byte	.LASF369
 4065 1884 7F       		.sleb128 -1
 4066 1885 0D       		.uleb128 0xd
 4067 1886 01020000 		.4byte	.LASF370
 4068 188a 00       		.byte	0
 4069 188b 0D       		.uleb128 0xd
 4070 188c 57000000 		.4byte	.LASF371
 4071 1890 01       		.byte	0x1
 4072 1891 0D       		.uleb128 0xd
 4073 1892 C8150000 		.4byte	.LASF372
 4074 1896 02       		.byte	0x2
 4075 1897 00       		.byte	0
 4076 1898 15       		.uleb128 0x15
 4077 1899 EB050000 		.4byte	.LASF373
 4078 189d 17       		.byte	0x17
 4079 189e A402     		.2byte	0x2a4
 4080 18a0 6E180000 		.4byte	0x186e
 4081 18a4 20       		.uleb128 0x20
 4082 18a5 04       		.byte	0x4
 4083 18a6 77000000 		.4byte	0x77
 4084 18aa 2E       		.uleb128 0x2e
 4085 18ab 18       		.byte	0x18
 4086 18ac 36       		.byte	0x36
 4087 18ad 99120000 		.4byte	0x1299
 4088 18b1 0B       		.uleb128 0xb
 4089 18b2 AA160000 		.4byte	.LASF374
 4090 18b6 04       		.byte	0x4
 4091 18b7 3C000000 		.4byte	0x3c
 4092 18bb 19       		.byte	0x19
 4093 18bc 50       		.byte	0x50
 4094 18bd 07190000 		.4byte	0x1907
 4095 18c1 0D       		.uleb128 0xd
 4096 18c2 740B0000 		.4byte	.LASF375
 4097 18c6 00       		.byte	0
 4098 18c7 3C       		.uleb128 0x3c
 4099 18c8 8B0B0000 		.4byte	.LASF376
 4100 18cc 00000008 		.4byte	0x8000000
 4101 18d0 3C       		.uleb128 0x3c
 4102 18d1 980B0000 		.4byte	.LASF377
 4103 18d5 00000010 		.4byte	0x10000000
 4104 18d9 3C       		.uleb128 0x3c
 4105 18da 4D120000 		.4byte	.LASF378
 4106 18de 00000018 		.4byte	0x18000000
 4107 18e2 3C       		.uleb128 0x3c
 4108 18e3 AE0B0000 		.4byte	.LASF379
 4109 18e7 00000020 		.4byte	0x20000000
 4110 18eb 3C       		.uleb128 0x3c
 4111 18ec BB060000 		.4byte	.LASF380
 4112 18f0 00000028 		.4byte	0x28000000
 4113 18f4 3C       		.uleb128 0x3c
ARM GAS  /tmp/ccbYIR7z.s 			page 117


 4114 18f5 4A0B0000 		.4byte	.LASF381
 4115 18f9 00000030 		.4byte	0x30000000
 4116 18fd 3C       		.uleb128 0x3c
 4117 18fe 570B0000 		.4byte	.LASF382
 4118 1902 00000038 		.4byte	0x38000000
 4119 1906 00       		.byte	0
 4120 1907 03       		.uleb128 0x3
 4121 1908 430E0000 		.4byte	.LASF383
 4122 190c 19       		.byte	0x19
 4123 190d 5B       		.byte	0x5b
 4124 190e B1180000 		.4byte	0x18b1
 4125 1912 0B       		.uleb128 0xb
 4126 1913 7F030000 		.4byte	.LASF384
 4127 1917 01       		.byte	0x1
 4128 1918 AC000000 		.4byte	0xac
 4129 191c 1A       		.byte	0x1a
 4130 191d 1F       		.byte	0x1f
 4131 191e 47190000 		.4byte	0x1947
 4132 1922 0D       		.uleb128 0xd
 4133 1923 4F030000 		.4byte	.LASF385
 4134 1927 00       		.byte	0
 4135 1928 0D       		.uleb128 0xd
 4136 1929 E90F0000 		.4byte	.LASF386
 4137 192d 01       		.byte	0x1
 4138 192e 0D       		.uleb128 0xd
 4139 192f B3000000 		.4byte	.LASF387
 4140 1933 02       		.byte	0x2
 4141 1934 0D       		.uleb128 0xd
 4142 1935 62180000 		.4byte	.LASF388
 4143 1939 03       		.byte	0x3
 4144 193a 0D       		.uleb128 0xd
 4145 193b 8A090000 		.4byte	.LASF389
 4146 193f 04       		.byte	0x4
 4147 1940 0D       		.uleb128 0xd
 4148 1941 74090000 		.4byte	.LASF390
 4149 1945 05       		.byte	0x5
 4150 1946 00       		.byte	0
 4151 1947 1A       		.uleb128 0x1a
 4152 1948 50696E00 		.ascii	"Pin\000"
 4153 194c 1B       		.byte	0x1b
 4154 194d 38       		.byte	0x38
 4155 194e 91010000 		.4byte	0x191
 4156 1952 04       		.uleb128 0x4
 4157 1953 47190000 		.4byte	0x1947
 4158 1957 3D       		.uleb128 0x3d
 4159 1958 5A070000 		.4byte	.LASF391
 4160 195c 1B       		.byte	0x1b
 4161 195d 39       		.byte	0x39
 4162 195e 52190000 		.4byte	0x1952
 4163 1962 7F       		.sleb128 -1
 4164 1963 0B       		.uleb128 0xb
 4165 1964 FE080000 		.4byte	.LASF392
 4166 1968 01       		.byte	0x1
 4167 1969 9A000000 		.4byte	0x9a
 4168 196d 1B       		.byte	0x1b
 4169 196e 4E       		.byte	0x4e
 4170 196f AA190000 		.4byte	0x19aa
ARM GAS  /tmp/ccbYIR7z.s 			page 118


 4171 1973 0C       		.uleb128 0xc
 4172 1974 AE100000 		.4byte	.LASF393
 4173 1978 7F       		.sleb128 -1
 4174 1979 0D       		.uleb128 0xd
 4175 197a C40A0000 		.4byte	.LASF394
 4176 197e 00       		.byte	0
 4177 197f 0D       		.uleb128 0xd
 4178 1980 CC0A0000 		.4byte	.LASF395
 4179 1984 01       		.byte	0x1
 4180 1985 0D       		.uleb128 0xd
 4181 1986 D40A0000 		.4byte	.LASF396
 4182 198a 02       		.byte	0x2
 4183 198b 0D       		.uleb128 0xd
 4184 198c DC0A0000 		.4byte	.LASF397
 4185 1990 03       		.byte	0x3
 4186 1991 0D       		.uleb128 0xd
 4187 1992 E40A0000 		.4byte	.LASF398
 4188 1996 04       		.byte	0x4
 4189 1997 0D       		.uleb128 0xd
 4190 1998 EC0A0000 		.4byte	.LASF399
 4191 199c 05       		.byte	0x5
 4192 199d 0D       		.uleb128 0xd
 4193 199e F40A0000 		.4byte	.LASF400
 4194 19a2 06       		.byte	0x6
 4195 19a3 0D       		.uleb128 0xd
 4196 19a4 FC0A0000 		.4byte	.LASF401
 4197 19a8 07       		.byte	0x7
 4198 19a9 00       		.byte	0
 4199 19aa 03       		.uleb128 0x3
 4200 19ab BB160000 		.4byte	.LASF402
 4201 19af 1B       		.byte	0x1b
 4202 19b0 59       		.byte	0x59
 4203 19b1 63190000 		.4byte	0x1963
 4204 19b5 0B       		.uleb128 0xb
 4205 19b6 AF060000 		.4byte	.LASF403
 4206 19ba 01       		.byte	0x1
 4207 19bb 9A000000 		.4byte	0x9a
 4208 19bf 1B       		.byte	0x1b
 4209 19c0 5C       		.byte	0x5c
 4210 19c1 381A0000 		.4byte	0x1a38
 4211 19c5 0C       		.uleb128 0xc
 4212 19c6 30090000 		.4byte	.LASF404
 4213 19ca 7F       		.sleb128 -1
 4214 19cb 0D       		.uleb128 0xd
 4215 19cc A1020000 		.4byte	.LASF405
 4216 19d0 00       		.byte	0
 4217 19d1 0D       		.uleb128 0xd
 4218 19d2 19030000 		.4byte	.LASF406
 4219 19d6 01       		.byte	0x1
 4220 19d7 0D       		.uleb128 0xd
 4221 19d8 AA020000 		.4byte	.LASF407
 4222 19dc 02       		.byte	0x2
 4223 19dd 0D       		.uleb128 0xd
 4224 19de 22030000 		.4byte	.LASF408
 4225 19e2 03       		.byte	0x3
 4226 19e3 0D       		.uleb128 0xd
 4227 19e4 B3020000 		.4byte	.LASF409
ARM GAS  /tmp/ccbYIR7z.s 			page 119


 4228 19e8 04       		.byte	0x4
 4229 19e9 0D       		.uleb128 0xd
 4230 19ea 2B030000 		.4byte	.LASF410
 4231 19ee 05       		.byte	0x5
 4232 19ef 0D       		.uleb128 0xd
 4233 19f0 F1010000 		.4byte	.LASF411
 4234 19f4 06       		.byte	0x6
 4235 19f5 0D       		.uleb128 0xd
 4236 19f6 C1020000 		.4byte	.LASF412
 4237 19fa 07       		.byte	0x7
 4238 19fb 0D       		.uleb128 0xd
 4239 19fc 3C140000 		.4byte	.LASF413
 4240 1a00 08       		.byte	0x8
 4241 1a01 0D       		.uleb128 0xd
 4242 1a02 CA020000 		.4byte	.LASF414
 4243 1a06 09       		.byte	0x9
 4244 1a07 0D       		.uleb128 0xd
 4245 1a08 45140000 		.4byte	.LASF415
 4246 1a0c 0A       		.byte	0xa
 4247 1a0d 0D       		.uleb128 0xd
 4248 1a0e D3020000 		.4byte	.LASF416
 4249 1a12 0B       		.byte	0xb
 4250 1a13 0D       		.uleb128 0xd
 4251 1a14 A8010000 		.4byte	.LASF417
 4252 1a18 0C       		.byte	0xc
 4253 1a19 0D       		.uleb128 0xd
 4254 1a1a 22020000 		.4byte	.LASF418
 4255 1a1e 0D       		.byte	0xd
 4256 1a1f 0D       		.uleb128 0xd
 4257 1a20 B1010000 		.4byte	.LASF419
 4258 1a24 0E       		.byte	0xe
 4259 1a25 0D       		.uleb128 0xd
 4260 1a26 2B020000 		.4byte	.LASF420
 4261 1a2a 0F       		.byte	0xf
 4262 1a2b 0D       		.uleb128 0xd
 4263 1a2c BA010000 		.4byte	.LASF421
 4264 1a30 10       		.byte	0x10
 4265 1a31 0D       		.uleb128 0xd
 4266 1a32 34020000 		.4byte	.LASF422
 4267 1a36 11       		.byte	0x11
 4268 1a37 00       		.byte	0
 4269 1a38 03       		.uleb128 0x3
 4270 1a39 53150000 		.4byte	.LASF423
 4271 1a3d 1B       		.byte	0x1b
 4272 1a3e 71       		.byte	0x71
 4273 1a3f B5190000 		.4byte	0x19b5
 4274 1a43 0B       		.uleb128 0xb
 4275 1a44 70020000 		.4byte	.LASF424
 4276 1a48 01       		.byte	0x1
 4277 1a49 9A000000 		.4byte	0x9a
 4278 1a4d 1B       		.byte	0x1b
 4279 1a4e 7E       		.byte	0x7e
 4280 1a4f 261B0000 		.4byte	0x1b26
 4281 1a53 0C       		.uleb128 0xc
 4282 1a54 2A0D0000 		.4byte	.LASF425
 4283 1a58 7F       		.sleb128 -1
 4284 1a59 0D       		.uleb128 0xd
ARM GAS  /tmp/ccbYIR7z.s 			page 120


 4285 1a5a EA140000 		.4byte	.LASF426
 4286 1a5e 00       		.byte	0
 4287 1a5f 0D       		.uleb128 0xd
 4288 1a60 E2060000 		.4byte	.LASF427
 4289 1a64 01       		.byte	0x1
 4290 1a65 0D       		.uleb128 0xd
 4291 1a66 E7060000 		.4byte	.LASF428
 4292 1a6a 02       		.byte	0x2
 4293 1a6b 0D       		.uleb128 0xd
 4294 1a6c EC060000 		.4byte	.LASF429
 4295 1a70 03       		.byte	0x3
 4296 1a71 0D       		.uleb128 0xd
 4297 1a72 F1060000 		.4byte	.LASF430
 4298 1a76 04       		.byte	0x4
 4299 1a77 0D       		.uleb128 0xd
 4300 1a78 F6060000 		.4byte	.LASF431
 4301 1a7c 05       		.byte	0x5
 4302 1a7d 0D       		.uleb128 0xd
 4303 1a7e FB060000 		.4byte	.LASF432
 4304 1a82 06       		.byte	0x6
 4305 1a83 0D       		.uleb128 0xd
 4306 1a84 00070000 		.4byte	.LASF433
 4307 1a88 07       		.byte	0x7
 4308 1a89 0D       		.uleb128 0xd
 4309 1a8a 05070000 		.4byte	.LASF434
 4310 1a8e 08       		.byte	0x8
 4311 1a8f 0D       		.uleb128 0xd
 4312 1a90 0A070000 		.4byte	.LASF435
 4313 1a94 09       		.byte	0x9
 4314 1a95 0D       		.uleb128 0xd
 4315 1a96 60070000 		.4byte	.LASF436
 4316 1a9a 0A       		.byte	0xa
 4317 1a9b 0D       		.uleb128 0xd
 4318 1a9c 66070000 		.4byte	.LASF437
 4319 1aa0 0B       		.byte	0xb
 4320 1aa1 0D       		.uleb128 0xd
 4321 1aa2 6C070000 		.4byte	.LASF438
 4322 1aa6 0C       		.byte	0xc
 4323 1aa7 0D       		.uleb128 0xd
 4324 1aa8 72070000 		.4byte	.LASF439
 4325 1aac 0D       		.byte	0xd
 4326 1aad 0D       		.uleb128 0xd
 4327 1aae 78070000 		.4byte	.LASF440
 4328 1ab2 0E       		.byte	0xe
 4329 1ab3 0D       		.uleb128 0xd
 4330 1ab4 7E070000 		.4byte	.LASF441
 4331 1ab8 0F       		.byte	0xf
 4332 1ab9 0D       		.uleb128 0xd
 4333 1aba 84070000 		.4byte	.LASF442
 4334 1abe 10       		.byte	0x10
 4335 1abf 0D       		.uleb128 0xd
 4336 1ac0 330B0000 		.4byte	.LASF443
 4337 1ac4 11       		.byte	0x11
 4338 1ac5 0D       		.uleb128 0xd
 4339 1ac6 99070000 		.4byte	.LASF444
 4340 1aca 12       		.byte	0x12
 4341 1acb 0D       		.uleb128 0xd
ARM GAS  /tmp/ccbYIR7z.s 			page 121


 4342 1acc 9F070000 		.4byte	.LASF445
 4343 1ad0 13       		.byte	0x13
 4344 1ad1 0D       		.uleb128 0xd
 4345 1ad2 E9070000 		.4byte	.LASF446
 4346 1ad6 14       		.byte	0x14
 4347 1ad7 0D       		.uleb128 0xd
 4348 1ad8 EF070000 		.4byte	.LASF447
 4349 1adc 15       		.byte	0x15
 4350 1add 0D       		.uleb128 0xd
 4351 1ade F5070000 		.4byte	.LASF448
 4352 1ae2 16       		.byte	0x16
 4353 1ae3 0D       		.uleb128 0xd
 4354 1ae4 FB070000 		.4byte	.LASF449
 4355 1ae8 17       		.byte	0x17
 4356 1ae9 0D       		.uleb128 0xd
 4357 1aea 01080000 		.4byte	.LASF450
 4358 1aee 18       		.byte	0x18
 4359 1aef 0D       		.uleb128 0xd
 4360 1af0 07080000 		.4byte	.LASF451
 4361 1af4 19       		.byte	0x19
 4362 1af5 0D       		.uleb128 0xd
 4363 1af6 0D080000 		.4byte	.LASF452
 4364 1afa 1A       		.byte	0x1a
 4365 1afb 0D       		.uleb128 0xd
 4366 1afc 13080000 		.4byte	.LASF453
 4367 1b00 1B       		.byte	0x1b
 4368 1b01 0D       		.uleb128 0xd
 4369 1b02 19080000 		.4byte	.LASF454
 4370 1b06 1C       		.byte	0x1c
 4371 1b07 0D       		.uleb128 0xd
 4372 1b08 1F080000 		.4byte	.LASF455
 4373 1b0c 1D       		.byte	0x1d
 4374 1b0d 0D       		.uleb128 0xd
 4375 1b0e 8B080000 		.4byte	.LASF456
 4376 1b12 1E       		.byte	0x1e
 4377 1b13 0D       		.uleb128 0xd
 4378 1b14 91080000 		.4byte	.LASF457
 4379 1b18 1F       		.byte	0x1f
 4380 1b19 3E       		.uleb128 0x3e
 4381 1b1a 44413000 		.ascii	"DA0\000"
 4382 1b1e 20       		.byte	0x20
 4383 1b1f 3E       		.uleb128 0x3e
 4384 1b20 44413100 		.ascii	"DA1\000"
 4385 1b24 21       		.byte	0x21
 4386 1b25 00       		.byte	0
 4387 1b26 1E       		.uleb128 0x1e
 4388 1b27 2F040000 		.4byte	.LASF458
 4389 1b2b 1C       		.byte	0x1c
 4390 1b2c 1B       		.byte	0x1b
 4391 1b2d AF       		.byte	0xaf
 4392 1b2e 9F1B0000 		.4byte	0x1b9f
 4393 1b32 18       		.uleb128 0x18
 4394 1b33 18040000 		.4byte	.LASF459
 4395 1b37 1B       		.byte	0x1b
 4396 1b38 B1       		.byte	0xb1
 4397 1b39 A41B0000 		.4byte	0x1ba4
 4398 1b3d 00       		.byte	0
ARM GAS  /tmp/ccbYIR7z.s 			page 122


 4399 1b3e 18       		.uleb128 0x18
 4400 1b3f 6E0B0000 		.4byte	.LASF460
 4401 1b43 1B       		.byte	0x1b
 4402 1b44 B2       		.byte	0xb2
 4403 1b45 CC010000 		.4byte	0x1cc
 4404 1b49 04       		.byte	0x4
 4405 1b4a 18       		.uleb128 0x18
 4406 1b4b 0C010000 		.4byte	.LASF461
 4407 1b4f 1B       		.byte	0x1b
 4408 1b50 B3       		.byte	0xb3
 4409 1b51 CC010000 		.4byte	0x1cc
 4410 1b55 08       		.byte	0x8
 4411 1b56 18       		.uleb128 0x18
 4412 1b57 B1040000 		.4byte	.LASF462
 4413 1b5b 1B       		.byte	0x1b
 4414 1b5c B4       		.byte	0xb4
 4415 1b5d 07190000 		.4byte	0x1907
 4416 1b61 0C       		.byte	0xc
 4417 1b62 18       		.uleb128 0x18
 4418 1b63 4E0E0000 		.4byte	.LASF463
 4419 1b67 1B       		.byte	0x1b
 4420 1b68 B5       		.byte	0xb5
 4421 1b69 CC010000 		.4byte	0x1cc
 4422 1b6d 10       		.byte	0x10
 4423 1b6e 18       		.uleb128 0x18
 4424 1b6f A8120000 		.4byte	.LASF464
 4425 1b73 1B       		.byte	0x1b
 4426 1b74 B6       		.byte	0xb6
 4427 1b75 CC010000 		.4byte	0x1cc
 4428 1b79 14       		.byte	0x14
 4429 1b7a 18       		.uleb128 0x18
 4430 1b7b 70050000 		.4byte	.LASF465
 4431 1b7f 1B       		.byte	0x1b
 4432 1b80 B7       		.byte	0xb7
 4433 1b81 431A0000 		.4byte	0x1a43
 4434 1b85 18       		.byte	0x18
 4435 1b86 18       		.uleb128 0x18
 4436 1b87 07180000 		.4byte	.LASF466
 4437 1b8b 1B       		.byte	0x1b
 4438 1b8c B8       		.byte	0xb8
 4439 1b8d AA190000 		.4byte	0x19aa
 4440 1b91 19       		.byte	0x19
 4441 1b92 18       		.uleb128 0x18
 4442 1b93 04130000 		.4byte	.LASF467
 4443 1b97 1B       		.byte	0x1b
 4444 1b98 B9       		.byte	0xb9
 4445 1b99 381A0000 		.4byte	0x1a38
 4446 1b9d 1A       		.byte	0x1a
 4447 1b9e 00       		.byte	0
 4448 1b9f 04       		.uleb128 0x4
 4449 1ba0 261B0000 		.4byte	0x1b26
 4450 1ba4 20       		.uleb128 0x20
 4451 1ba5 04       		.byte	0x4
 4452 1ba6 64090000 		.4byte	0x964
 4453 1baa 04       		.uleb128 0x4
 4454 1bab A41B0000 		.4byte	0x1ba4
 4455 1baf 12       		.uleb128 0x12
ARM GAS  /tmp/ccbYIR7z.s 			page 123


 4456 1bb0 9F1B0000 		.4byte	0x1b9f
 4457 1bb4 BA1B0000 		.4byte	0x1bba
 4458 1bb8 3F       		.uleb128 0x3f
 4459 1bb9 00       		.byte	0
 4460 1bba 16       		.uleb128 0x16
 4461 1bbb D7110000 		.4byte	.LASF468
 4462 1bbf 1B       		.byte	0x1b
 4463 1bc0 BD       		.byte	0xbd
 4464 1bc1 AF1B0000 		.4byte	0x1baf
 4465 1bc5 16       		.uleb128 0x16
 4466 1bc6 37120000 		.4byte	.LASF469
 4467 1bca 1C       		.byte	0x1c
 4468 1bcb 2E       		.byte	0x2e
 4469 1bcc CB0F0000 		.4byte	0xfcb
 4470 1bd0 12       		.uleb128 0x12
 4471 1bd1 A20F0000 		.4byte	0xfa2
 4472 1bd5 DB1B0000 		.4byte	0x1bdb
 4473 1bd9 3F       		.uleb128 0x3f
 4474 1bda 00       		.byte	0
 4475 1bdb 16       		.uleb128 0x16
 4476 1bdc 13060000 		.4byte	.LASF470
 4477 1be0 1C       		.byte	0x1c
 4478 1be1 6E       		.byte	0x6e
 4479 1be2 D01B0000 		.4byte	0x1bd0
 4480 1be6 40       		.uleb128 0x40
 4481 1be7 6E090000 		.4byte	.LASF472
 4482 1beb 141C0000 		.4byte	0x1c14
 4483 1bef 41       		.uleb128 0x41
 4484 1bf0 2C100000 		.4byte	.LASF494
 4485 1bf4 22       		.byte	0x22
 4486 1bf5 3B       		.byte	0x3b
 4487 1bf6 11170000 		.4byte	.LASF496
 4488 1bfa 2C000000 		.4byte	0x2c
 4489 1bfe 01       		.byte	0x1
 4490 1bff 031C0000 		.4byte	0x1c03
 4491 1c03 42       		.uleb128 0x42
 4492 1c04 141C0000 		.4byte	0x1c14
 4493 1c08 24       		.uleb128 0x24
 4494 1c09 CB0F0000 		.4byte	0xfcb
 4495 1c0d 24       		.uleb128 0x24
 4496 1c0e 2C000000 		.4byte	0x2c
 4497 1c12 00       		.byte	0
 4498 1c13 00       		.byte	0
 4499 1c14 20       		.uleb128 0x20
 4500 1c15 04       		.byte	0x4
 4501 1c16 E61B0000 		.4byte	0x1be6
 4502 1c1a 43       		.uleb128 0x43
 4503 1c1b E5090000 		.4byte	.LASF471
 4504 1c1f 1D       		.byte	0x1d
 4505 1c20 1D       		.byte	0x1d
 4506 1c21 37000000 		.4byte	0x37
 4507 1c25 0002     		.2byte	0x200
 4508 1c27 40       		.uleb128 0x40
 4509 1c28 02160000 		.4byte	.LASF473
 4510 1c2c 381C0000 		.4byte	0x1c38
 4511 1c30 2E       		.uleb128 0x2e
 4512 1c31 1E       		.byte	0x1e
ARM GAS  /tmp/ccbYIR7z.s 			page 124


 4513 1c32 26       		.byte	0x26
 4514 1c33 EF1B0000 		.4byte	0x1bef
 4515 1c37 00       		.byte	0
 4516 1c38 16       		.uleb128 0x16
 4517 1c39 EF140000 		.4byte	.LASF474
 4518 1c3d 1F       		.byte	0x1f
 4519 1c3e 8B       		.byte	0x8b
 4520 1c3f E2000000 		.4byte	0xe2
 4521 1c43 16       		.uleb128 0x16
 4522 1c44 1E040000 		.4byte	.LASF475
 4523 1c48 1F       		.byte	0x1f
 4524 1c49 8C       		.byte	0x8c
 4525 1c4a 25000000 		.4byte	0x25
 4526 1c4e 12       		.uleb128 0x12
 4527 1c4f 950F0000 		.4byte	0xf95
 4528 1c53 5E1C0000 		.4byte	0x1c5e
 4529 1c57 13       		.uleb128 0x13
 4530 1c58 58050000 		.4byte	0x558
 4531 1c5c 01       		.byte	0x1
 4532 1c5d 00       		.byte	0
 4533 1c5e 16       		.uleb128 0x16
 4534 1c5f AD0A0000 		.4byte	.LASF476
 4535 1c63 1F       		.byte	0x1f
 4536 1c64 8F       		.byte	0x8f
 4537 1c65 4E1C0000 		.4byte	0x1c4e
 4538 1c69 44       		.uleb128 0x44
 4539 1c6a 3D160000 		.4byte	.LASF477
 4540 1c6e 20       		.byte	0x20
 4541 1c6f 5C       		.byte	0x5c
 4542 1c70 A1010000 		.4byte	0x1a1
 4543 1c74 38       		.byte	0x38
 4544 1c75 44       		.uleb128 0x44
 4545 1c76 48000000 		.4byte	.LASF478
 4546 1c7a 20       		.byte	0x20
 4547 1c7b 5D       		.byte	0x5d
 4548 1c7c A1010000 		.4byte	0x1a1
 4549 1c80 05       		.byte	0x5
 4550 1c81 44       		.uleb128 0x44
 4551 1c82 33050000 		.4byte	.LASF479
 4552 1c86 20       		.byte	0x20
 4553 1c87 5E       		.byte	0x5e
 4554 1c88 A1010000 		.4byte	0x1a1
 4555 1c8c 06       		.byte	0x6
 4556 1c8d 44       		.uleb128 0x44
 4557 1c8e 49160000 		.4byte	.LASF480
 4558 1c92 20       		.byte	0x20
 4559 1c93 60       		.byte	0x60
 4560 1c94 A1010000 		.4byte	0x1a1
 4561 1c98 39       		.byte	0x39
 4562 1c99 44       		.uleb128 0x44
 4563 1c9a 2A080000 		.4byte	.LASF481
 4564 1c9e 20       		.byte	0x20
 4565 1c9f 61       		.byte	0x61
 4566 1ca0 A1010000 		.4byte	0x1a1
 4567 1ca4 03       		.byte	0x3
 4568 1ca5 44       		.uleb128 0x44
 4569 1ca6 ED0C0000 		.4byte	.LASF482
ARM GAS  /tmp/ccbYIR7z.s 			page 125


 4570 1caa 20       		.byte	0x20
 4571 1cab 62       		.byte	0x62
 4572 1cac A1010000 		.4byte	0x1a1
 4573 1cb0 04       		.byte	0x4
 4574 1cb1 44       		.uleb128 0x44
 4575 1cb2 7A000000 		.4byte	.LASF483
 4576 1cb6 20       		.byte	0x20
 4577 1cb7 69       		.byte	0x69
 4578 1cb8 A1010000 		.4byte	0x1a1
 4579 1cbc 33       		.byte	0x33
 4580 1cbd 44       		.uleb128 0x44
 4581 1cbe 3E040000 		.4byte	.LASF484
 4582 1cc2 20       		.byte	0x20
 4583 1cc3 6A       		.byte	0x6a
 4584 1cc4 A1010000 		.4byte	0x1a1
 4585 1cc8 34       		.byte	0x34
 4586 1cc9 44       		.uleb128 0x44
 4587 1cca 4B020000 		.4byte	.LASF485
 4588 1cce 20       		.byte	0x20
 4589 1ccf 6D       		.byte	0x6d
 4590 1cd0 A1010000 		.4byte	0x1a1
 4591 1cd4 35       		.byte	0x35
 4592 1cd5 44       		.uleb128 0x44
 4593 1cd6 6F060000 		.4byte	.LASF486
 4594 1cda 20       		.byte	0x20
 4595 1cdb 6E       		.byte	0x6e
 4596 1cdc A1010000 		.4byte	0x1a1
 4597 1ce0 36       		.byte	0x36
 4598 1ce1 44       		.uleb128 0x44
 4599 1ce2 80180000 		.4byte	.LASF487
 4600 1ce6 20       		.byte	0x20
 4601 1ce7 6F       		.byte	0x6f
 4602 1ce8 A1010000 		.4byte	0x1a1
 4603 1cec 37       		.byte	0x37
 4604 1ced 44       		.uleb128 0x44
 4605 1cee 10130000 		.4byte	.LASF488
 4606 1cf2 20       		.byte	0x20
 4607 1cf3 71       		.byte	0x71
 4608 1cf4 DC010000 		.4byte	0x1dc
 4609 1cf8 32       		.byte	0x32
 4610 1cf9 45       		.uleb128 0x45
 4611 1cfa 63020000 		.4byte	.LASF489
 4612 1cfe 20       		.byte	0x20
 4613 1cff 73       		.byte	0x73
 4614 1d00 DC010000 		.4byte	0x1dc
 4615 1d04 58466100 		.4byte	0x614658
 4616 1d08 43       		.uleb128 0x43
 4617 1d09 A8080000 		.4byte	.LASF490
 4618 1d0d 20       		.byte	0x20
 4619 1d0e 74       		.byte	0x74
 4620 1d0f DC010000 		.4byte	0x1dc
 4621 1d13 4661     		.2byte	0x6146
 4622 1d15 16       		.uleb128 0x16
 4623 1d16 8F120000 		.4byte	.LASF491
 4624 1d1a 20       		.byte	0x20
 4625 1d1b 80       		.byte	0x80
 4626 1d1c 271C0000 		.4byte	0x1c27
ARM GAS  /tmp/ccbYIR7z.s 			page 126


 4627 1d20 16       		.uleb128 0x16
 4628 1d21 FF170000 		.4byte	.LASF492
 4629 1d25 20       		.byte	0x20
 4630 1d26 81       		.byte	0x81
 4631 1d27 271C0000 		.4byte	0x1c27
 4632 1d2b 46       		.uleb128 0x46
 4633 1d2c 7C0F0000 		.4byte	.LASF550
 4634 1d30 16       		.uleb128 0x16
 4635 1d31 2C0F0000 		.4byte	.LASF493
 4636 1d35 21       		.byte	0x21
 4637 1d36 30       		.byte	0x30
 4638 1d37 2B1D0000 		.4byte	0x1d2b
 4639 1d3b 47       		.uleb128 0x47
 4640 1d3c 63030000 		.4byte	.LASF495
 4641 1d40 04       		.byte	0x4
 4642 1d41 04       		.byte	0x4
 4643 1d42 18       		.byte	0x18
 4644 1d43 B91D0000 		.4byte	0x1db9
 4645 1d47 48       		.uleb128 0x48
 4646 1d48 767000   		.ascii	"vp\000"
 4647 1d4b 04       		.byte	0x4
 4648 1d4c 1A       		.byte	0x1a
 4649 1d4d 81040000 		.4byte	0x481
 4650 1d51 48       		.uleb128 0x48
 4651 1d52 697000   		.ascii	"ip\000"
 4652 1d55 04       		.byte	0x4
 4653 1d56 1B       		.byte	0x1b
 4654 1d57 CC010000 		.4byte	0x1cc
 4655 1d5b 49       		.uleb128 0x49
 4656 1d5c 63030000 		.4byte	.LASF495
 4657 1d60 04       		.byte	0x4
 4658 1d61 1D       		.byte	0x1d
 4659 1d62 40010000 		.4byte	.LASF497
 4660 1d66 B91D0000 		.4byte	0x1db9
 4661 1d6a 721D0000 		.4byte	0x1d72
 4662 1d6e 7D1D0000 		.4byte	0x1d7d
 4663 1d72 42       		.uleb128 0x42
 4664 1d73 B91D0000 		.4byte	0x1db9
 4665 1d77 24       		.uleb128 0x24
 4666 1d78 81040000 		.4byte	0x481
 4667 1d7c 00       		.byte	0
 4668 1d7d 49       		.uleb128 0x49
 4669 1d7e 63030000 		.4byte	.LASF495
 4670 1d82 04       		.byte	0x4
 4671 1d83 1E       		.byte	0x1e
 4672 1d84 D2160000 		.4byte	.LASF498
 4673 1d88 B91D0000 		.4byte	0x1db9
 4674 1d8c 941D0000 		.4byte	0x1d94
 4675 1d90 9F1D0000 		.4byte	0x1d9f
 4676 1d94 42       		.uleb128 0x42
 4677 1d95 B91D0000 		.4byte	0x1db9
 4678 1d99 24       		.uleb128 0x24
 4679 1d9a CC010000 		.4byte	0x1cc
 4680 1d9e 00       		.byte	0
 4681 1d9f 4A       		.uleb128 0x4a
 4682 1da0 63030000 		.4byte	.LASF495
 4683 1da4 04       		.byte	0x4
ARM GAS  /tmp/ccbYIR7z.s 			page 127


 4684 1da5 1F       		.byte	0x1f
 4685 1da6 F6160000 		.4byte	.LASF504
 4686 1daa B91D0000 		.4byte	0x1db9
 4687 1dae B21D0000 		.4byte	0x1db2
 4688 1db2 42       		.uleb128 0x42
 4689 1db3 B91D0000 		.4byte	0x1db9
 4690 1db7 00       		.byte	0
 4691 1db8 00       		.byte	0
 4692 1db9 20       		.uleb128 0x20
 4693 1dba 04       		.byte	0x4
 4694 1dbb 3B1D0000 		.4byte	0x1d3b
 4695 1dbf 04       		.uleb128 0x4
 4696 1dc0 B91D0000 		.4byte	0x1db9
 4697 1dc4 44       		.uleb128 0x44
 4698 1dc5 64100000 		.4byte	.LASF499
 4699 1dc9 01       		.byte	0x1
 4700 1dca 15       		.byte	0x15
 4701 1dcb DC010000 		.4byte	0x1dc
 4702 1dcf 05       		.byte	0x5
 4703 1dd0 03       		.uleb128 0x3
 4704 1dd1 240A0000 		.4byte	.LASF500
 4705 1dd5 01       		.byte	0x1
 4706 1dd6 17       		.byte	0x17
 4707 1dd7 DB1D0000 		.4byte	0x1ddb
 4708 1ddb 20       		.uleb128 0x20
 4709 1ddc 04       		.byte	0x4
 4710 1ddd E11D0000 		.4byte	0x1de1
 4711 1de1 2A       		.uleb128 0x2a
 4712 1de2 EC1D0000 		.4byte	0x1dec
 4713 1de6 24       		.uleb128 0x24
 4714 1de7 3B1D0000 		.4byte	0x1d3b
 4715 1deb 00       		.byte	0
 4716 1dec 1E       		.uleb128 0x1e
 4717 1ded 7D150000 		.4byte	.LASF501
 4718 1df1 08       		.byte	0x8
 4719 1df2 01       		.byte	0x1
 4720 1df3 19       		.byte	0x19
 4721 1df4 2A1E0000 		.4byte	0x1e2a
 4722 1df8 18       		.uleb128 0x18
 4723 1df9 210F0000 		.4byte	.LASF502
 4724 1dfd 01       		.byte	0x1
 4725 1dfe 1B       		.byte	0x1b
 4726 1dff D01D0000 		.4byte	0x1dd0
 4727 1e03 00       		.byte	0
 4728 1e04 18       		.uleb128 0x18
 4729 1e05 3D090000 		.4byte	.LASF503
 4730 1e09 01       		.byte	0x1
 4731 1e0a 1C       		.byte	0x1c
 4732 1e0b 3B1D0000 		.4byte	0x1d3b
 4733 1e0f 04       		.byte	0x4
 4734 1e10 4A       		.uleb128 0x4a
 4735 1e11 7D150000 		.4byte	.LASF501
 4736 1e15 01       		.byte	0x1
 4737 1e16 1E       		.byte	0x1e
 4738 1e17 15090000 		.4byte	.LASF505
 4739 1e1b 2F1E0000 		.4byte	0x1e2f
 4740 1e1f 231E0000 		.4byte	0x1e23
ARM GAS  /tmp/ccbYIR7z.s 			page 128


 4741 1e23 42       		.uleb128 0x42
 4742 1e24 2F1E0000 		.4byte	0x1e2f
 4743 1e28 00       		.byte	0
 4744 1e29 00       		.byte	0
 4745 1e2a 04       		.uleb128 0x4
 4746 1e2b EC1D0000 		.4byte	0x1dec
 4747 1e2f 20       		.uleb128 0x20
 4748 1e30 04       		.byte	0x4
 4749 1e31 EC1D0000 		.4byte	0x1dec
 4750 1e35 04       		.uleb128 0x4
 4751 1e36 2F1E0000 		.4byte	0x1e2f
 4752 1e3a 12       		.uleb128 0x12
 4753 1e3b EC1D0000 		.4byte	0x1dec
 4754 1e3f 4A1E0000 		.4byte	0x1e4a
 4755 1e43 13       		.uleb128 0x13
 4756 1e44 58050000 		.4byte	0x558
 4757 1e48 1F       		.byte	0x1f
 4758 1e49 00       		.byte	0
 4759 1e4a 3A       		.uleb128 0x3a
 4760 1e4b 6B0E0000 		.4byte	.LASF506
 4761 1e4f 01       		.byte	0x1
 4762 1e50 21       		.byte	0x21
 4763 1e51 3A1E0000 		.4byte	0x1e3a
 4764 1e55 05       		.uleb128 0x5
 4765 1e56 03       		.byte	0x3
 4766 1e57 00000000 		.4byte	_ZL13callbacksPioA
 4767 1e5b 3A       		.uleb128 0x3a
 4768 1e5c 92130000 		.4byte	.LASF507
 4769 1e60 01       		.byte	0x1
 4770 1e61 22       		.byte	0x22
 4771 1e62 3A1E0000 		.4byte	0x1e3a
 4772 1e66 05       		.uleb128 0x5
 4773 1e67 03       		.byte	0x3
 4774 1e68 00000000 		.4byte	_ZL13callbacksPioB
 4775 1e6c 3A       		.uleb128 0x3a
 4776 1e6d 8A0E0000 		.4byte	.LASF508
 4777 1e71 01       		.byte	0x1
 4778 1e72 23       		.byte	0x23
 4779 1e73 3A1E0000 		.4byte	0x1e3a
 4780 1e77 05       		.uleb128 0x5
 4781 1e78 03       		.byte	0x3
 4782 1e79 00000000 		.4byte	_ZL13callbacksPioC
 4783 1e7d 3A       		.uleb128 0x3a
 4784 1e7e 980E0000 		.4byte	.LASF509
 4785 1e82 01       		.byte	0x1
 4786 1e83 25       		.byte	0x25
 4787 1e84 3A1E0000 		.4byte	0x1e3a
 4788 1e88 05       		.uleb128 0x5
 4789 1e89 03       		.byte	0x3
 4790 1e8a 00000000 		.4byte	_ZL13callbacksPioD
 4791 1e8e 3A       		.uleb128 0x3a
 4792 1e8f A60E0000 		.4byte	.LASF510
 4793 1e93 01       		.byte	0x1
 4794 1e94 28       		.byte	0x28
 4795 1e95 3A1E0000 		.4byte	0x1e3a
 4796 1e99 05       		.uleb128 0x5
 4797 1e9a 03       		.byte	0x3
ARM GAS  /tmp/ccbYIR7z.s 			page 129


 4798 1e9b 00000000 		.4byte	_ZL13callbacksPioE
 4799 1e9f 4B       		.uleb128 0x4b
 4800 1ea0 D7130000 		.4byte	.LASF551
 4801 1ea4 00000000 		.4byte	.LFB540
 4802 1ea8 7C000000 		.4byte	.LFE540-.LFB540
 4803 1eac 01       		.uleb128 0x1
 4804 1ead 9C       		.byte	0x9c
 4805 1eae DB1F0000 		.4byte	0x1fdb
 4806 1eb2 4C       		.uleb128 0x4c
 4807 1eb3 DB1F0000 		.4byte	0x1fdb
 4808 1eb7 02000000 		.4byte	.LBB213
 4809 1ebb 62000000 		.4byte	.LBE213-.LBB213
 4810 1ebf 01       		.byte	0x1
 4811 1ec0 0501     		.2byte	0x105
 4812 1ec2 4D       		.uleb128 0x4d
 4813 1ec3 E51F0000 		.4byte	0x1fe5
 4814 1ec7 01       		.byte	0x1
 4815 1ec8 4E       		.uleb128 0x4e
 4816 1ec9 F11F0000 		.4byte	0x1ff1
 4817 1ecd FFFF     		.2byte	0xffff
 4818 1ecf 4F       		.uleb128 0x4f
 4819 1ed0 05250000 		.4byte	0x2505
 4820 1ed4 02000000 		.4byte	.LBB215
 4821 1ed8 0E000000 		.4byte	.LBE215-.LBB215
 4822 1edc 01       		.byte	0x1
 4823 1edd 21       		.byte	0x21
 4824 1ede 051F0000 		.4byte	0x1f05
 4825 1ee2 50       		.uleb128 0x50
 4826 1ee3 13250000 		.4byte	0x2513
 4827 1ee7 00000000 		.4byte	.LLST30
 4828 1eeb 51       		.uleb128 0x51
 4829 1eec 34250000 		.4byte	0x2534
 4830 1ef0 0C000000 		.4byte	.LBB217
 4831 1ef4 04000000 		.4byte	.LBE217-.LBB217
 4832 1ef8 01       		.byte	0x1
 4833 1ef9 1E       		.byte	0x1e
 4834 1efa 50       		.uleb128 0x50
 4835 1efb 42250000 		.4byte	0x2542
 4836 1eff 20000000 		.4byte	.LLST31
 4837 1f03 00       		.byte	0
 4838 1f04 00       		.byte	0
 4839 1f05 4F       		.uleb128 0x4f
 4840 1f06 05250000 		.4byte	0x2505
 4841 1f0a 16000000 		.4byte	.LBB219
 4842 1f0e 0E000000 		.4byte	.LBE219-.LBB219
 4843 1f12 01       		.byte	0x1
 4844 1f13 22       		.byte	0x22
 4845 1f14 3B1F0000 		.4byte	0x1f3b
 4846 1f18 50       		.uleb128 0x50
 4847 1f19 13250000 		.4byte	0x2513
 4848 1f1d 42000000 		.4byte	.LLST32
 4849 1f21 51       		.uleb128 0x51
 4850 1f22 34250000 		.4byte	0x2534
 4851 1f26 20000000 		.4byte	.LBB221
 4852 1f2a 04000000 		.4byte	.LBE221-.LBB221
 4853 1f2e 01       		.byte	0x1
 4854 1f2f 1E       		.byte	0x1e
ARM GAS  /tmp/ccbYIR7z.s 			page 130


 4855 1f30 50       		.uleb128 0x50
 4856 1f31 42250000 		.4byte	0x2542
 4857 1f35 62000000 		.4byte	.LLST33
 4858 1f39 00       		.byte	0
 4859 1f3a 00       		.byte	0
 4860 1f3b 4F       		.uleb128 0x4f
 4861 1f3c 05250000 		.4byte	0x2505
 4862 1f40 2A000000 		.4byte	.LBB223
 4863 1f44 0E000000 		.4byte	.LBE223-.LBB223
 4864 1f48 01       		.byte	0x1
 4865 1f49 23       		.byte	0x23
 4866 1f4a 711F0000 		.4byte	0x1f71
 4867 1f4e 50       		.uleb128 0x50
 4868 1f4f 13250000 		.4byte	0x2513
 4869 1f53 84000000 		.4byte	.LLST34
 4870 1f57 51       		.uleb128 0x51
 4871 1f58 34250000 		.4byte	0x2534
 4872 1f5c 34000000 		.4byte	.LBB225
 4873 1f60 04000000 		.4byte	.LBE225-.LBB225
 4874 1f64 01       		.byte	0x1
 4875 1f65 1E       		.byte	0x1e
 4876 1f66 50       		.uleb128 0x50
 4877 1f67 42250000 		.4byte	0x2542
 4878 1f6b A4000000 		.4byte	.LLST35
 4879 1f6f 00       		.byte	0
 4880 1f70 00       		.byte	0
 4881 1f71 4F       		.uleb128 0x4f
 4882 1f72 05250000 		.4byte	0x2505
 4883 1f76 3E000000 		.4byte	.LBB227
 4884 1f7a 0E000000 		.4byte	.LBE227-.LBB227
 4885 1f7e 01       		.byte	0x1
 4886 1f7f 25       		.byte	0x25
 4887 1f80 A71F0000 		.4byte	0x1fa7
 4888 1f84 50       		.uleb128 0x50
 4889 1f85 13250000 		.4byte	0x2513
 4890 1f89 C6000000 		.4byte	.LLST36
 4891 1f8d 51       		.uleb128 0x51
 4892 1f8e 34250000 		.4byte	0x2534
 4893 1f92 48000000 		.4byte	.LBB229
 4894 1f96 04000000 		.4byte	.LBE229-.LBB229
 4895 1f9a 01       		.byte	0x1
 4896 1f9b 1E       		.byte	0x1e
 4897 1f9c 50       		.uleb128 0x50
 4898 1f9d 42250000 		.4byte	0x2542
 4899 1fa1 E6000000 		.4byte	.LLST37
 4900 1fa5 00       		.byte	0
 4901 1fa6 00       		.byte	0
 4902 1fa7 51       		.uleb128 0x51
 4903 1fa8 05250000 		.4byte	0x2505
 4904 1fac 52000000 		.4byte	.LBB231
 4905 1fb0 0E000000 		.4byte	.LBE231-.LBB231
 4906 1fb4 01       		.byte	0x1
 4907 1fb5 28       		.byte	0x28
 4908 1fb6 50       		.uleb128 0x50
 4909 1fb7 13250000 		.4byte	0x2513
 4910 1fbb 08010000 		.4byte	.LLST38
 4911 1fbf 51       		.uleb128 0x51
ARM GAS  /tmp/ccbYIR7z.s 			page 131


 4912 1fc0 34250000 		.4byte	0x2534
 4913 1fc4 5C000000 		.4byte	.LBB233
 4914 1fc8 04000000 		.4byte	.LBE233-.LBB233
 4915 1fcc 01       		.byte	0x1
 4916 1fcd 1E       		.byte	0x1e
 4917 1fce 50       		.uleb128 0x50
 4918 1fcf 42250000 		.4byte	0x2542
 4919 1fd3 28010000 		.4byte	.LLST39
 4920 1fd7 00       		.byte	0
 4921 1fd8 00       		.byte	0
 4922 1fd9 00       		.byte	0
 4923 1fda 00       		.byte	0
 4924 1fdb 52       		.uleb128 0x52
 4925 1fdc 4E110000 		.4byte	.LASF552
 4926 1fe0 01       		.byte	0x1
 4927 1fe1 FE1F0000 		.4byte	0x1ffe
 4928 1fe5 53       		.uleb128 0x53
 4929 1fe6 7B040000 		.4byte	.LASF511
 4930 1fea 01       		.byte	0x1
 4931 1feb 0501     		.2byte	0x105
 4932 1fed 25000000 		.4byte	0x25
 4933 1ff1 53       		.uleb128 0x53
 4934 1ff2 9B060000 		.4byte	.LASF512
 4935 1ff6 01       		.byte	0x1
 4936 1ff7 0501     		.2byte	0x105
 4937 1ff9 25000000 		.4byte	0x25
 4938 1ffd 00       		.byte	0
 4939 1ffe 54       		.uleb128 0x54
 4940 1fff FF000000 		.4byte	.LASF513
 4941 2003 01       		.byte	0x1
 4942 2004 0201     		.2byte	0x102
 4943 2006 00000000 		.4byte	.LFB538
 4944 200a 10000000 		.4byte	.LFE538-.LFB538
 4945 200e 01       		.uleb128 0x1
 4946 200f 9C       		.byte	0x9c
 4947 2010 31200000 		.4byte	0x2031
 4948 2014 55       		.uleb128 0x55
 4949 2015 08000000 		.4byte	.LVL74
 4950 2019 F9200000 		.4byte	0x20f9
 4951 201d 56       		.uleb128 0x56
 4952 201e 01       		.uleb128 0x1
 4953 201f 50       		.byte	0x50
 4954 2020 05       		.uleb128 0x5
 4955 2021 0C       		.byte	0xc
 4956 2022 00160E40 		.4byte	0x400e1600
 4957 2026 56       		.uleb128 0x56
 4958 2027 01       		.uleb128 0x1
 4959 2028 51       		.byte	0x51
 4960 2029 05       		.uleb128 0x5
 4961 202a 03       		.byte	0x3
 4962 202b 00000000 		.4byte	.LANCHOR5
 4963 202f 00       		.byte	0
 4964 2030 00       		.byte	0
 4965 2031 57       		.uleb128 0x57
 4966 2032 F2000000 		.4byte	.LASF514
 4967 2036 01       		.byte	0x1
 4968 2037 FB       		.byte	0xfb
ARM GAS  /tmp/ccbYIR7z.s 			page 132


 4969 2038 00000000 		.4byte	.LFB537
 4970 203c 10000000 		.4byte	.LFE537-.LFB537
 4971 2040 01       		.uleb128 0x1
 4972 2041 9C       		.byte	0x9c
 4973 2042 63200000 		.4byte	0x2063
 4974 2046 55       		.uleb128 0x55
 4975 2047 08000000 		.4byte	.LVL73
 4976 204b F9200000 		.4byte	0x20f9
 4977 204f 56       		.uleb128 0x56
 4978 2050 01       		.uleb128 0x1
 4979 2051 50       		.byte	0x50
 4980 2052 05       		.uleb128 0x5
 4981 2053 0C       		.byte	0xc
 4982 2054 00140E40 		.4byte	0x400e1400
 4983 2058 56       		.uleb128 0x56
 4984 2059 01       		.uleb128 0x1
 4985 205a 51       		.byte	0x51
 4986 205b 05       		.uleb128 0x5
 4987 205c 03       		.byte	0x3
 4988 205d 00000000 		.4byte	.LANCHOR4
 4989 2061 00       		.byte	0
 4990 2062 00       		.byte	0
 4991 2063 57       		.uleb128 0x57
 4992 2064 E5000000 		.4byte	.LASF515
 4993 2068 01       		.byte	0x1
 4994 2069 F5       		.byte	0xf5
 4995 206a 00000000 		.4byte	.LFB536
 4996 206e 10000000 		.4byte	.LFE536-.LFB536
 4997 2072 01       		.uleb128 0x1
 4998 2073 9C       		.byte	0x9c
 4999 2074 95200000 		.4byte	0x2095
 5000 2078 55       		.uleb128 0x55
 5001 2079 08000000 		.4byte	.LVL72
 5002 207d F9200000 		.4byte	0x20f9
 5003 2081 56       		.uleb128 0x56
 5004 2082 01       		.uleb128 0x1
 5005 2083 50       		.byte	0x50
 5006 2084 05       		.uleb128 0x5
 5007 2085 0C       		.byte	0xc
 5008 2086 00120E40 		.4byte	0x400e1200
 5009 208a 56       		.uleb128 0x56
 5010 208b 01       		.uleb128 0x1
 5011 208c 51       		.byte	0x51
 5012 208d 05       		.uleb128 0x5
 5013 208e 03       		.byte	0x3
 5014 208f 00000000 		.4byte	.LANCHOR3
 5015 2093 00       		.byte	0
 5016 2094 00       		.byte	0
 5017 2095 57       		.uleb128 0x57
 5018 2096 D8000000 		.4byte	.LASF516
 5019 209a 01       		.byte	0x1
 5020 209b F0       		.byte	0xf0
 5021 209c 00000000 		.4byte	.LFB535
 5022 20a0 10000000 		.4byte	.LFE535-.LFB535
 5023 20a4 01       		.uleb128 0x1
 5024 20a5 9C       		.byte	0x9c
 5025 20a6 C7200000 		.4byte	0x20c7
ARM GAS  /tmp/ccbYIR7z.s 			page 133


 5026 20aa 55       		.uleb128 0x55
 5027 20ab 08000000 		.4byte	.LVL71
 5028 20af F9200000 		.4byte	0x20f9
 5029 20b3 56       		.uleb128 0x56
 5030 20b4 01       		.uleb128 0x1
 5031 20b5 50       		.byte	0x50
 5032 20b6 05       		.uleb128 0x5
 5033 20b7 0C       		.byte	0xc
 5034 20b8 00100E40 		.4byte	0x400e1000
 5035 20bc 56       		.uleb128 0x56
 5036 20bd 01       		.uleb128 0x1
 5037 20be 51       		.byte	0x51
 5038 20bf 05       		.uleb128 0x5
 5039 20c0 03       		.byte	0x3
 5040 20c1 00000000 		.4byte	.LANCHOR2
 5041 20c5 00       		.byte	0
 5042 20c6 00       		.byte	0
 5043 20c7 57       		.uleb128 0x57
 5044 20c8 A6000000 		.4byte	.LASF517
 5045 20cc 01       		.byte	0x1
 5046 20cd EB       		.byte	0xeb
 5047 20ce 00000000 		.4byte	.LFB534
 5048 20d2 10000000 		.4byte	.LFE534-.LFB534
 5049 20d6 01       		.uleb128 0x1
 5050 20d7 9C       		.byte	0x9c
 5051 20d8 F9200000 		.4byte	0x20f9
 5052 20dc 55       		.uleb128 0x55
 5053 20dd 08000000 		.4byte	.LVL70
 5054 20e1 F9200000 		.4byte	0x20f9
 5055 20e5 56       		.uleb128 0x56
 5056 20e6 01       		.uleb128 0x1
 5057 20e7 50       		.byte	0x50
 5058 20e8 05       		.uleb128 0x5
 5059 20e9 0C       		.byte	0xc
 5060 20ea 000E0E40 		.4byte	0x400e0e00
 5061 20ee 56       		.uleb128 0x56
 5062 20ef 01       		.uleb128 0x1
 5063 20f0 51       		.byte	0x51
 5064 20f1 05       		.uleb128 0x5
 5065 20f2 03       		.byte	0x3
 5066 20f3 00000000 		.4byte	.LANCHOR1
 5067 20f7 00       		.byte	0
 5068 20f8 00       		.byte	0
 5069 20f9 58       		.uleb128 0x58
 5070 20fa D7150000 		.4byte	.LASF519
 5071 20fe 01       		.byte	0x1
 5072 20ff DD       		.byte	0xdd
 5073 2100 D9100000 		.4byte	.LASF521
 5074 2104 00000000 		.4byte	.LFB533
 5075 2108 2E000000 		.4byte	.LFE533-.LFB533
 5076 210c 01       		.uleb128 0x1
 5077 210d 9C       		.byte	0x9c
 5078 210e 69210000 		.4byte	0x2169
 5079 2112 59       		.uleb128 0x59
 5080 2113 70696F00 		.ascii	"pio\000"
 5081 2117 01       		.byte	0x1
 5082 2118 DD       		.byte	0xdd
ARM GAS  /tmp/ccbYIR7z.s 			page 134


 5083 2119 A41B0000 		.4byte	0x1ba4
 5084 211d 4A010000 		.4byte	.LLST26
 5085 2121 5A       		.uleb128 0x5a
 5086 2122 A5180000 		.4byte	.LASF518
 5087 2126 01       		.byte	0x1
 5088 2127 DD       		.byte	0xdd
 5089 2128 69210000 		.4byte	0x2169
 5090 212c 6B010000 		.4byte	.LLST27
 5091 2130 5B       		.uleb128 0x5b
 5092 2131 69737200 		.ascii	"isr\000"
 5093 2135 01       		.byte	0x1
 5094 2136 DF       		.byte	0xdf
 5095 2137 CC010000 		.4byte	0x1cc
 5096 213b 97010000 		.4byte	.LLST28
 5097 213f 5C       		.uleb128 0x5c
 5098 2140 0C000000 		.4byte	.LBB180
 5099 2144 1C000000 		.4byte	.LBE180-.LBB180
 5100 2148 5B       		.uleb128 0x5b
 5101 2149 706F7300 		.ascii	"pos\000"
 5102 214d 01       		.byte	0x1
 5103 214e E2       		.byte	0xe2
 5104 214f 43000000 		.4byte	0x43
 5105 2153 D6010000 		.4byte	.LLST29
 5106 2157 5D       		.uleb128 0x5d
 5107 2158 14000000 		.4byte	.LVL63
 5108 215c C7240000 		.4byte	0x24c7
 5109 2160 56       		.uleb128 0x56
 5110 2161 01       		.uleb128 0x1
 5111 2162 50       		.byte	0x50
 5112 2163 02       		.uleb128 0x2
 5113 2164 75       		.byte	0x75
 5114 2165 00       		.sleb128 0
 5115 2166 00       		.byte	0
 5116 2167 00       		.byte	0
 5117 2168 00       		.byte	0
 5118 2169 20       		.uleb128 0x20
 5119 216a 04       		.byte	0x4
 5120 216b 2A1E0000 		.4byte	0x1e2a
 5121 216f 5E       		.uleb128 0x5e
 5122 2170 0D110000 		.4byte	.LASF524
 5123 2174 01       		.byte	0x1
 5124 2175 D7       		.byte	0xd7
 5125 2176 4B050000 		.4byte	.LASF526
 5126 217a 2A180000 		.4byte	0x182a
 5127 217e 00000000 		.4byte	.LFB532
 5128 2182 10000000 		.4byte	.LFE532-.LFB532
 5129 2186 01       		.uleb128 0x1
 5130 2187 9C       		.byte	0x9c
 5131 2188 AC210000 		.4byte	0x21ac
 5132 218c 51       		.uleb128 0x51
 5133 218d B1250000 		.4byte	0x25b1
 5134 2191 00000000 		.4byte	.LBB178
 5135 2195 04000000 		.4byte	.LBE178-.LBB178
 5136 2199 01       		.byte	0x1
 5137 219a D9       		.byte	0xd9
 5138 219b 5C       		.uleb128 0x5c
 5139 219c 00000000 		.4byte	.LBB179
ARM GAS  /tmp/ccbYIR7z.s 			page 135


 5140 21a0 04000000 		.4byte	.LBE179-.LBB179
 5141 21a4 5F       		.uleb128 0x5f
 5142 21a5 C2250000 		.4byte	0x25c2
 5143 21a9 00       		.byte	0
 5144 21aa 00       		.byte	0
 5145 21ab 00       		.byte	0
 5146 21ac 60       		.uleb128 0x60
 5147 21ad E80B0000 		.4byte	.LASF520
 5148 21b1 01       		.byte	0x1
 5149 21b2 C9       		.byte	0xc9
 5150 21b3 D40E0000 		.4byte	.LASF522
 5151 21b7 00000000 		.4byte	.LFB531
 5152 21bb 1C000000 		.4byte	.LFE531-.LFB531
 5153 21bf 01       		.uleb128 0x1
 5154 21c0 9C       		.byte	0x9c
 5155 21c1 FD210000 		.4byte	0x21fd
 5156 21c5 59       		.uleb128 0x59
 5157 21c6 70696E00 		.ascii	"pin\000"
 5158 21ca 01       		.byte	0x1
 5159 21cb C9       		.byte	0xc9
 5160 21cc CC010000 		.4byte	0x1cc
 5161 21d0 F4010000 		.4byte	.LLST23
 5162 21d4 5C       		.uleb128 0x5c
 5163 21d5 04000000 		.4byte	.LBB177
 5164 21d9 18000000 		.4byte	.LBE177-.LBB177
 5165 21dd 5B       		.uleb128 0x5b
 5166 21de 70696F00 		.ascii	"pio\000"
 5167 21e2 01       		.byte	0x1
 5168 21e3 CE       		.byte	0xce
 5169 21e4 AA1B0000 		.4byte	0x1baa
 5170 21e8 15020000 		.4byte	.LLST24
 5171 21ec 61       		.uleb128 0x61
 5172 21ed 45030000 		.4byte	.LASF523
 5173 21f1 01       		.byte	0x1
 5174 21f2 CF       		.byte	0xcf
 5175 21f3 DC010000 		.4byte	0x1dc
 5176 21f7 28020000 		.4byte	.LLST25
 5177 21fb 00       		.byte	0
 5178 21fc 00       		.byte	0
 5179 21fd 5E       		.uleb128 0x5e
 5180 21fe 78110000 		.4byte	.LASF525
 5181 2202 01       		.byte	0x1
 5182 2203 65       		.byte	0x65
 5183 2204 4E080000 		.4byte	.LASF527
 5184 2208 2A180000 		.4byte	0x182a
 5185 220c 00000000 		.4byte	.LFB530
 5186 2210 A8010000 		.4byte	.LFE530-.LFB530
 5187 2214 01       		.uleb128 0x1
 5188 2215 9C       		.byte	0x9c
 5189 2216 C7240000 		.4byte	0x24c7
 5190 221a 59       		.uleb128 0x59
 5191 221b 70696E00 		.ascii	"pin\000"
 5192 221f 01       		.byte	0x1
 5193 2220 65       		.byte	0x65
 5194 2221 CC010000 		.4byte	0x1cc
 5195 2225 3B020000 		.4byte	.LLST1
 5196 2229 5A       		.uleb128 0x5a
ARM GAS  /tmp/ccbYIR7z.s 			page 136


 5197 222a 0B0F0000 		.4byte	.LASF528
 5198 222e 01       		.byte	0x1
 5199 222f 65       		.byte	0x65
 5200 2230 DB1D0000 		.4byte	0x1ddb
 5201 2234 88020000 		.4byte	.LLST2
 5202 2238 5A       		.uleb128 0x5a
 5203 2239 8D050000 		.4byte	.LASF529
 5204 223d 01       		.byte	0x1
 5205 223e 65       		.byte	0x65
 5206 223f 12190000 		.4byte	0x1912
 5207 2243 BC020000 		.4byte	.LLST3
 5208 2247 5A       		.uleb128 0x5a
 5209 2248 3D090000 		.4byte	.LASF503
 5210 224c 01       		.byte	0x1
 5211 224d 65       		.byte	0x65
 5212 224e 3B1D0000 		.4byte	0x1d3b
 5213 2252 F6020000 		.4byte	.LLST4
 5214 2256 3A       		.uleb128 0x3a
 5215 2257 37110000 		.4byte	.LASF530
 5216 225b 01       		.byte	0x1
 5217 225c 6C       		.byte	0x6c
 5218 225d 2A180000 		.4byte	0x182a
 5219 2261 05       		.uleb128 0x5
 5220 2262 03       		.byte	0x3
 5221 2263 00000000 		.4byte	_ZZ15attachInterruptmPFv17CallbackParameterE13InterruptModeS_E7enabled
 5222 2267 5B       		.uleb128 0x5b
 5223 2268 70696F00 		.ascii	"pio\000"
 5224 226c 01       		.byte	0x1
 5225 226d 74       		.byte	0x74
 5226 226e AA1B0000 		.4byte	0x1baa
 5227 2272 61030000 		.4byte	.LLST5
 5228 2276 61       		.uleb128 0x61
 5229 2277 45030000 		.4byte	.LASF523
 5230 227b 01       		.byte	0x1
 5231 227c 75       		.byte	0x75
 5232 227d DC010000 		.4byte	0x1dc
 5233 2281 7F030000 		.4byte	.LLST6
 5234 2285 5B       		.uleb128 0x5b
 5235 2286 706F7300 		.ascii	"pos\000"
 5236 228a 01       		.byte	0x1
 5237 228b 77       		.byte	0x77
 5238 228c DC010000 		.4byte	0x1dc
 5239 2290 9D030000 		.4byte	.LLST7
 5240 2294 62       		.uleb128 0x62
 5241 2295 FD240000 		.4byte	0x24fd
 5242 2299 76000000 		.4byte	.LBB130
 5243 229d 00000000 		.4byte	.Ldebug_ranges0+0
 5244 22a1 01       		.byte	0x1
 5245 22a2 6F       		.byte	0x6f
 5246 22a3 B6240000 		.4byte	0x24b6
 5247 22a7 62       		.uleb128 0x62
 5248 22a8 7D250000 		.4byte	0x257d
 5249 22ac 78000000 		.4byte	.LBB132
 5250 22b0 18000000 		.4byte	.Ldebug_ranges0+0x18
 5251 22b4 01       		.byte	0x1
 5252 22b5 2F       		.byte	0x2f
 5253 22b6 C4220000 		.4byte	0x22c4
ARM GAS  /tmp/ccbYIR7z.s 			page 137


 5254 22ba 50       		.uleb128 0x50
 5255 22bb 8A250000 		.4byte	0x258a
 5256 22bf DC030000 		.4byte	.LLST8
 5257 22c3 00       		.byte	0
 5258 22c4 4F       		.uleb128 0x4f
 5259 22c5 63250000 		.4byte	0x2563
 5260 22c9 88000000 		.4byte	.LBB138
 5261 22cd 04000000 		.4byte	.LBE138-.LBB138
 5262 22d1 01       		.byte	0x1
 5263 22d2 30       		.byte	0x30
 5264 22d3 E1220000 		.4byte	0x22e1
 5265 22d7 50       		.uleb128 0x50
 5266 22d8 70250000 		.4byte	0x2570
 5267 22dc F0030000 		.4byte	.LLST9
 5268 22e0 00       		.byte	0
 5269 22e1 4F       		.uleb128 0x4f
 5270 22e2 97250000 		.4byte	0x2597
 5271 22e6 8C000000 		.4byte	.LBB140
 5272 22ea 02000000 		.4byte	.LBE140-.LBB140
 5273 22ee 01       		.byte	0x1
 5274 22ef 31       		.byte	0x31
 5275 22f0 FE220000 		.4byte	0x22fe
 5276 22f4 50       		.uleb128 0x50
 5277 22f5 A4250000 		.4byte	0x25a4
 5278 22f9 04040000 		.4byte	.LLST10
 5279 22fd 00       		.byte	0
 5280 22fe 62       		.uleb128 0x62
 5281 22ff 7D250000 		.4byte	0x257d
 5282 2303 92000000 		.4byte	.LBB142
 5283 2307 38000000 		.4byte	.Ldebug_ranges0+0x38
 5284 230b 01       		.byte	0x1
 5285 230c 34       		.byte	0x34
 5286 230d 1B230000 		.4byte	0x231b
 5287 2311 50       		.uleb128 0x50
 5288 2312 8A250000 		.4byte	0x258a
 5289 2316 18040000 		.4byte	.LLST11
 5290 231a 00       		.byte	0
 5291 231b 4F       		.uleb128 0x4f
 5292 231c 63250000 		.4byte	0x2563
 5293 2320 9C000000 		.4byte	.LBB146
 5294 2324 04000000 		.4byte	.LBE146-.LBB146
 5295 2328 01       		.byte	0x1
 5296 2329 35       		.byte	0x35
 5297 232a 38230000 		.4byte	0x2338
 5298 232e 50       		.uleb128 0x50
 5299 232f 70250000 		.4byte	0x2570
 5300 2333 2C040000 		.4byte	.LLST12
 5301 2337 00       		.byte	0
 5302 2338 4F       		.uleb128 0x4f
 5303 2339 97250000 		.4byte	0x2597
 5304 233d A0000000 		.4byte	.LBB148
 5305 2341 02000000 		.4byte	.LBE148-.LBB148
 5306 2345 01       		.byte	0x1
 5307 2346 36       		.byte	0x36
 5308 2347 55230000 		.4byte	0x2355
 5309 234b 50       		.uleb128 0x50
 5310 234c A4250000 		.4byte	0x25a4
ARM GAS  /tmp/ccbYIR7z.s 			page 138


 5311 2350 40040000 		.4byte	.LLST13
 5312 2354 00       		.byte	0
 5313 2355 62       		.uleb128 0x62
 5314 2356 7D250000 		.4byte	0x257d
 5315 235a A6000000 		.4byte	.LBB150
 5316 235e 50000000 		.4byte	.Ldebug_ranges0+0x50
 5317 2362 01       		.byte	0x1
 5318 2363 39       		.byte	0x39
 5319 2364 72230000 		.4byte	0x2372
 5320 2368 50       		.uleb128 0x50
 5321 2369 8A250000 		.4byte	0x258a
 5322 236d 54040000 		.4byte	.LLST14
 5323 2371 00       		.byte	0
 5324 2372 4F       		.uleb128 0x4f
 5325 2373 63250000 		.4byte	0x2563
 5326 2377 B0000000 		.4byte	.LBB154
 5327 237b 04000000 		.4byte	.LBE154-.LBB154
 5328 237f 01       		.byte	0x1
 5329 2380 3A       		.byte	0x3a
 5330 2381 8F230000 		.4byte	0x238f
 5331 2385 50       		.uleb128 0x50
 5332 2386 70250000 		.4byte	0x2570
 5333 238a 68040000 		.4byte	.LLST15
 5334 238e 00       		.byte	0
 5335 238f 4F       		.uleb128 0x4f
 5336 2390 97250000 		.4byte	0x2597
 5337 2394 B4000000 		.4byte	.LBB156
 5338 2398 02000000 		.4byte	.LBE156-.LBB156
 5339 239c 01       		.byte	0x1
 5340 239d 3B       		.byte	0x3b
 5341 239e AC230000 		.4byte	0x23ac
 5342 23a2 50       		.uleb128 0x50
 5343 23a3 A4250000 		.4byte	0x25a4
 5344 23a7 7C040000 		.4byte	.LLST16
 5345 23ab 00       		.byte	0
 5346 23ac 62       		.uleb128 0x62
 5347 23ad 7D250000 		.4byte	0x257d
 5348 23b1 BA000000 		.4byte	.LBB158
 5349 23b5 68000000 		.4byte	.Ldebug_ranges0+0x68
 5350 23b9 01       		.byte	0x1
 5351 23ba 3F       		.byte	0x3f
 5352 23bb C9230000 		.4byte	0x23c9
 5353 23bf 50       		.uleb128 0x50
 5354 23c0 8A250000 		.4byte	0x258a
 5355 23c4 90040000 		.4byte	.LLST17
 5356 23c8 00       		.byte	0
 5357 23c9 4F       		.uleb128 0x4f
 5358 23ca 63250000 		.4byte	0x2563
 5359 23ce C4000000 		.4byte	.LBB162
 5360 23d2 04000000 		.4byte	.LBE162-.LBB162
 5361 23d6 01       		.byte	0x1
 5362 23d7 40       		.byte	0x40
 5363 23d8 E6230000 		.4byte	0x23e6
 5364 23dc 50       		.uleb128 0x50
 5365 23dd 70250000 		.4byte	0x2570
 5366 23e1 A4040000 		.4byte	.LLST18
 5367 23e5 00       		.byte	0
ARM GAS  /tmp/ccbYIR7z.s 			page 139


 5368 23e6 4F       		.uleb128 0x4f
 5369 23e7 97250000 		.4byte	0x2597
 5370 23eb C8000000 		.4byte	.LBB164
 5371 23ef 02000000 		.4byte	.LBE164-.LBB164
 5372 23f3 01       		.byte	0x1
 5373 23f4 41       		.byte	0x41
 5374 23f5 03240000 		.4byte	0x2403
 5375 23f9 50       		.uleb128 0x50
 5376 23fa A4250000 		.4byte	0x25a4
 5377 23fe B8040000 		.4byte	.LLST19
 5378 2402 00       		.byte	0
 5379 2403 62       		.uleb128 0x62
 5380 2404 7D250000 		.4byte	0x257d
 5381 2408 CE000000 		.4byte	.LBB166
 5382 240c 80000000 		.4byte	.Ldebug_ranges0+0x80
 5383 2410 01       		.byte	0x1
 5384 2411 46       		.byte	0x46
 5385 2412 20240000 		.4byte	0x2420
 5386 2416 50       		.uleb128 0x50
 5387 2417 8A250000 		.4byte	0x258a
 5388 241b CC040000 		.4byte	.LLST20
 5389 241f 00       		.byte	0
 5390 2420 4F       		.uleb128 0x4f
 5391 2421 63250000 		.4byte	0x2563
 5392 2425 D8000000 		.4byte	.LBB170
 5393 2429 04000000 		.4byte	.LBE170-.LBB170
 5394 242d 01       		.byte	0x1
 5395 242e 47       		.byte	0x47
 5396 242f 3D240000 		.4byte	0x243d
 5397 2433 50       		.uleb128 0x50
 5398 2434 70250000 		.4byte	0x2570
 5399 2438 E0040000 		.4byte	.LLST21
 5400 243c 00       		.byte	0
 5401 243d 4F       		.uleb128 0x4f
 5402 243e 97250000 		.4byte	0x2597
 5403 2442 DC000000 		.4byte	.LBB172
 5404 2446 02000000 		.4byte	.LBE172-.LBB172
 5405 244a 01       		.byte	0x1
 5406 244b 48       		.byte	0x48
 5407 244c 5A240000 		.4byte	0x245a
 5408 2450 50       		.uleb128 0x50
 5409 2451 A4250000 		.4byte	0x25a4
 5410 2455 F4040000 		.4byte	.LLST22
 5411 2459 00       		.byte	0
 5412 245a 63       		.uleb128 0x63
 5413 245b 7E000000 		.4byte	.LVL18
 5414 245f CF250000 		.4byte	0x25cf
 5415 2463 6D240000 		.4byte	0x246d
 5416 2467 56       		.uleb128 0x56
 5417 2468 01       		.uleb128 0x1
 5418 2469 50       		.byte	0x50
 5419 246a 01       		.uleb128 0x1
 5420 246b 3A       		.byte	0x3a
 5421 246c 00       		.byte	0
 5422 246d 63       		.uleb128 0x63
 5423 246e 92000000 		.4byte	.LVL22
 5424 2472 CF250000 		.4byte	0x25cf
ARM GAS  /tmp/ccbYIR7z.s 			page 140


 5425 2476 80240000 		.4byte	0x2480
 5426 247a 56       		.uleb128 0x56
 5427 247b 01       		.uleb128 0x1
 5428 247c 50       		.byte	0x50
 5429 247d 01       		.uleb128 0x1
 5430 247e 3B       		.byte	0x3b
 5431 247f 00       		.byte	0
 5432 2480 63       		.uleb128 0x63
 5433 2481 A6000000 		.4byte	.LVL26
 5434 2485 CF250000 		.4byte	0x25cf
 5435 2489 93240000 		.4byte	0x2493
 5436 248d 56       		.uleb128 0x56
 5437 248e 01       		.uleb128 0x1
 5438 248f 50       		.byte	0x50
 5439 2490 01       		.uleb128 0x1
 5440 2491 3C       		.byte	0x3c
 5441 2492 00       		.byte	0
 5442 2493 63       		.uleb128 0x63
 5443 2494 BA000000 		.4byte	.LVL30
 5444 2498 CF250000 		.4byte	0x25cf
 5445 249c A6240000 		.4byte	0x24a6
 5446 24a0 56       		.uleb128 0x56
 5447 24a1 01       		.uleb128 0x1
 5448 24a2 50       		.byte	0x50
 5449 24a3 01       		.uleb128 0x1
 5450 24a4 40       		.byte	0x40
 5451 24a5 00       		.byte	0
 5452 24a6 5D       		.uleb128 0x5d
 5453 24a7 CE000000 		.4byte	.LVL34
 5454 24ab CF250000 		.4byte	0x25cf
 5455 24af 56       		.uleb128 0x56
 5456 24b0 01       		.uleb128 0x1
 5457 24b1 50       		.byte	0x50
 5458 24b2 01       		.uleb128 0x1
 5459 24b3 41       		.byte	0x41
 5460 24b4 00       		.byte	0
 5461 24b5 00       		.byte	0
 5462 24b6 5D       		.uleb128 0x5d
 5463 24b7 30000000 		.4byte	.LVL12
 5464 24bb C7240000 		.4byte	0x24c7
 5465 24bf 56       		.uleb128 0x56
 5466 24c0 01       		.uleb128 0x1
 5467 24c1 50       		.byte	0x50
 5468 24c2 02       		.uleb128 0x2
 5469 24c3 71       		.byte	0x71
 5470 24c4 00       		.sleb128 0
 5471 24c5 00       		.byte	0
 5472 24c6 00       		.byte	0
 5473 24c7 64       		.uleb128 0x64
 5474 24c8 D5140000 		.4byte	.LASF553
 5475 24cc 01       		.byte	0x1
 5476 24cd 4E       		.byte	0x4e
 5477 24ce 3C000000 		.4byte	0x3c
 5478 24d2 00000000 		.4byte	.LFB529
 5479 24d6 36000000 		.4byte	.LFE529-.LFB529
 5480 24da 01       		.uleb128 0x1
 5481 24db 9C       		.byte	0x9c
ARM GAS  /tmp/ccbYIR7z.s 			page 141


 5482 24dc FD240000 		.4byte	0x24fd
 5483 24e0 5A       		.uleb128 0x5a
 5484 24e1 08110000 		.4byte	.LASF531
 5485 24e5 01       		.byte	0x1
 5486 24e6 4E       		.byte	0x4e
 5487 24e7 CC010000 		.4byte	0x1cc
 5488 24eb 08050000 		.4byte	.LLST0
 5489 24ef 3A       		.uleb128 0x3a
 5490 24f0 91100000 		.4byte	.LASF532
 5491 24f4 01       		.byte	0x1
 5492 24f5 50       		.byte	0x50
 5493 24f6 3C000000 		.4byte	0x3c
 5494 24fa 01       		.uleb128 0x1
 5495 24fb 53       		.byte	0x53
 5496 24fc 00       		.byte	0
 5497 24fd 65       		.uleb128 0x65
 5498 24fe 98180000 		.4byte	.LASF554
 5499 2502 01       		.byte	0x1
 5500 2503 2C       		.byte	0x2c
 5501 2504 01       		.byte	0x1
 5502 2505 66       		.uleb128 0x66
 5503 2506 101E0000 		.4byte	0x1e10
 5504 250a 02       		.byte	0x2
 5505 250b 13250000 		.4byte	0x2513
 5506 250f 1D250000 		.4byte	0x251d
 5507 2513 67       		.uleb128 0x67
 5508 2514 590D0000 		.4byte	.LASF533
 5509 2518 351E0000 		.4byte	0x1e35
 5510 251c 00       		.byte	0
 5511 251d 68       		.uleb128 0x68
 5512 251e 05250000 		.4byte	0x2505
 5513 2522 53040000 		.4byte	.LASF534
 5514 2526 2E250000 		.4byte	0x252e
 5515 252a 34250000 		.4byte	0x2534
 5516 252e 69       		.uleb128 0x69
 5517 252f 13250000 		.4byte	0x2513
 5518 2533 00       		.byte	0
 5519 2534 66       		.uleb128 0x66
 5520 2535 9F1D0000 		.4byte	0x1d9f
 5521 2539 02       		.byte	0x2
 5522 253a 42250000 		.4byte	0x2542
 5523 253e 4C250000 		.4byte	0x254c
 5524 2542 67       		.uleb128 0x67
 5525 2543 590D0000 		.4byte	.LASF533
 5526 2547 BF1D0000 		.4byte	0x1dbf
 5527 254b 00       		.byte	0
 5528 254c 68       		.uleb128 0x68
 5529 254d 34250000 		.4byte	0x2534
 5530 2551 B7120000 		.4byte	.LASF535
 5531 2555 5D250000 		.4byte	0x255d
 5532 2559 63250000 		.4byte	0x2563
 5533 255d 69       		.uleb128 0x69
 5534 255e 42250000 		.4byte	0x2542
 5535 2562 00       		.byte	0
 5536 2563 6A       		.uleb128 0x6a
 5537 2564 32180000 		.4byte	.LASF536
 5538 2568 02       		.byte	0x2
ARM GAS  /tmp/ccbYIR7z.s 			page 142


 5539 2569 C606     		.2byte	0x6c6
 5540 256b 03       		.byte	0x3
 5541 256c 7D250000 		.4byte	0x257d
 5542 2570 53       		.uleb128 0x53
 5543 2571 8A120000 		.4byte	.LASF367
 5544 2575 02       		.byte	0x2
 5545 2576 C606     		.2byte	0x6c6
 5546 2578 76040000 		.4byte	0x476
 5547 257c 00       		.byte	0
 5548 257d 6A       		.uleb128 0x6a
 5549 257e 620A0000 		.4byte	.LASF537
 5550 2582 02       		.byte	0x2
 5551 2583 9E06     		.2byte	0x69e
 5552 2585 03       		.byte	0x3
 5553 2586 97250000 		.4byte	0x2597
 5554 258a 53       		.uleb128 0x53
 5555 258b 8A120000 		.4byte	.LASF367
 5556 258f 02       		.byte	0x2
 5557 2590 9E06     		.2byte	0x69e
 5558 2592 76040000 		.4byte	0x476
 5559 2596 00       		.byte	0
 5560 2597 6A       		.uleb128 0x6a
 5561 2598 920C0000 		.4byte	.LASF538
 5562 259c 02       		.byte	0x2
 5563 259d 9106     		.2byte	0x691
 5564 259f 03       		.byte	0x3
 5565 25a0 B1250000 		.4byte	0x25b1
 5566 25a4 53       		.uleb128 0x53
 5567 25a5 8A120000 		.4byte	.LASF367
 5568 25a9 02       		.byte	0x2
 5569 25aa 9106     		.2byte	0x691
 5570 25ac 76040000 		.4byte	0x476
 5571 25b0 00       		.byte	0
 5572 25b1 6B       		.uleb128 0x6b
 5573 25b2 64060000 		.4byte	.LASF555
 5574 25b6 03       		.byte	0x3
 5575 25b7 6F01     		.2byte	0x16f
 5576 25b9 CC010000 		.4byte	0x1cc
 5577 25bd 03       		.byte	0x3
 5578 25be CF250000 		.4byte	0x25cf
 5579 25c2 6C       		.uleb128 0x6c
 5580 25c3 A10A0000 		.4byte	.LASF556
 5581 25c7 03       		.byte	0x3
 5582 25c8 7101     		.2byte	0x171
 5583 25ca CC010000 		.4byte	0x1cc
 5584 25ce 00       		.byte	0
 5585 25cf 6D       		.uleb128 0x6d
 5586 25d0 19070000 		.4byte	.LASF557
 5587 25d4 19070000 		.4byte	.LASF557
 5588 25d8 24       		.byte	0x24
 5589 25d9 DB       		.byte	0xdb
 5590 25da 00       		.byte	0
 5591              		.section	.debug_abbrev,"",%progbits
 5592              	.Ldebug_abbrev0:
 5593 0000 01       		.uleb128 0x1
 5594 0001 11       		.uleb128 0x11
 5595 0002 01       		.byte	0x1
ARM GAS  /tmp/ccbYIR7z.s 			page 143


 5596 0003 25       		.uleb128 0x25
 5597 0004 0E       		.uleb128 0xe
 5598 0005 13       		.uleb128 0x13
 5599 0006 0B       		.uleb128 0xb
 5600 0007 03       		.uleb128 0x3
 5601 0008 0E       		.uleb128 0xe
 5602 0009 1B       		.uleb128 0x1b
 5603 000a 0E       		.uleb128 0xe
 5604 000b 55       		.uleb128 0x55
 5605 000c 17       		.uleb128 0x17
 5606 000d 11       		.uleb128 0x11
 5607 000e 01       		.uleb128 0x1
 5608 000f 10       		.uleb128 0x10
 5609 0010 17       		.uleb128 0x17
 5610 0011 00       		.byte	0
 5611 0012 00       		.byte	0
 5612 0013 02       		.uleb128 0x2
 5613 0014 24       		.uleb128 0x24
 5614 0015 00       		.byte	0
 5615 0016 0B       		.uleb128 0xb
 5616 0017 0B       		.uleb128 0xb
 5617 0018 3E       		.uleb128 0x3e
 5618 0019 0B       		.uleb128 0xb
 5619 001a 03       		.uleb128 0x3
 5620 001b 08       		.uleb128 0x8
 5621 001c 00       		.byte	0
 5622 001d 00       		.byte	0
 5623 001e 03       		.uleb128 0x3
 5624 001f 16       		.uleb128 0x16
 5625 0020 00       		.byte	0
 5626 0021 03       		.uleb128 0x3
 5627 0022 0E       		.uleb128 0xe
 5628 0023 3A       		.uleb128 0x3a
 5629 0024 0B       		.uleb128 0xb
 5630 0025 3B       		.uleb128 0x3b
 5631 0026 0B       		.uleb128 0xb
 5632 0027 49       		.uleb128 0x49
 5633 0028 13       		.uleb128 0x13
 5634 0029 00       		.byte	0
 5635 002a 00       		.byte	0
 5636 002b 04       		.uleb128 0x4
 5637 002c 26       		.uleb128 0x26
 5638 002d 00       		.byte	0
 5639 002e 49       		.uleb128 0x49
 5640 002f 13       		.uleb128 0x13
 5641 0030 00       		.byte	0
 5642 0031 00       		.byte	0
 5643 0032 05       		.uleb128 0x5
 5644 0033 24       		.uleb128 0x24
 5645 0034 00       		.byte	0
 5646 0035 0B       		.uleb128 0xb
 5647 0036 0B       		.uleb128 0xb
 5648 0037 3E       		.uleb128 0x3e
 5649 0038 0B       		.uleb128 0xb
 5650 0039 03       		.uleb128 0x3
 5651 003a 0E       		.uleb128 0xe
 5652 003b 00       		.byte	0
ARM GAS  /tmp/ccbYIR7z.s 			page 144


 5653 003c 00       		.byte	0
 5654 003d 06       		.uleb128 0x6
 5655 003e 13       		.uleb128 0x13
 5656 003f 01       		.byte	0x1
 5657 0040 0B       		.uleb128 0xb
 5658 0041 0B       		.uleb128 0xb
 5659 0042 3A       		.uleb128 0x3a
 5660 0043 0B       		.uleb128 0xb
 5661 0044 3B       		.uleb128 0x3b
 5662 0045 05       		.uleb128 0x5
 5663 0046 6E       		.uleb128 0x6e
 5664 0047 0E       		.uleb128 0xe
 5665 0048 01       		.uleb128 0x1
 5666 0049 13       		.uleb128 0x13
 5667 004a 00       		.byte	0
 5668 004b 00       		.byte	0
 5669 004c 07       		.uleb128 0x7
 5670 004d 0D       		.uleb128 0xd
 5671 004e 00       		.byte	0
 5672 004f 03       		.uleb128 0x3
 5673 0050 0E       		.uleb128 0xe
 5674 0051 3A       		.uleb128 0x3a
 5675 0052 0B       		.uleb128 0xb
 5676 0053 3B       		.uleb128 0x3b
 5677 0054 05       		.uleb128 0x5
 5678 0055 49       		.uleb128 0x49
 5679 0056 13       		.uleb128 0x13
 5680 0057 38       		.uleb128 0x38
 5681 0058 0B       		.uleb128 0xb
 5682 0059 00       		.byte	0
 5683 005a 00       		.byte	0
 5684 005b 08       		.uleb128 0x8
 5685 005c 16       		.uleb128 0x16
 5686 005d 00       		.byte	0
 5687 005e 03       		.uleb128 0x3
 5688 005f 0E       		.uleb128 0xe
 5689 0060 3A       		.uleb128 0x3a
 5690 0061 0B       		.uleb128 0xb
 5691 0062 3B       		.uleb128 0x3b
 5692 0063 05       		.uleb128 0x5
 5693 0064 49       		.uleb128 0x49
 5694 0065 13       		.uleb128 0x13
 5695 0066 00       		.byte	0
 5696 0067 00       		.byte	0
 5697 0068 09       		.uleb128 0x9
 5698 0069 3B       		.uleb128 0x3b
 5699 006a 00       		.byte	0
 5700 006b 03       		.uleb128 0x3
 5701 006c 0E       		.uleb128 0xe
 5702 006d 00       		.byte	0
 5703 006e 00       		.byte	0
 5704 006f 0A       		.uleb128 0xa
 5705 0070 35       		.uleb128 0x35
 5706 0071 00       		.byte	0
 5707 0072 49       		.uleb128 0x49
 5708 0073 13       		.uleb128 0x13
 5709 0074 00       		.byte	0
ARM GAS  /tmp/ccbYIR7z.s 			page 145


 5710 0075 00       		.byte	0
 5711 0076 0B       		.uleb128 0xb
 5712 0077 04       		.uleb128 0x4
 5713 0078 01       		.byte	0x1
 5714 0079 03       		.uleb128 0x3
 5715 007a 0E       		.uleb128 0xe
 5716 007b 0B       		.uleb128 0xb
 5717 007c 0B       		.uleb128 0xb
 5718 007d 49       		.uleb128 0x49
 5719 007e 13       		.uleb128 0x13
 5720 007f 3A       		.uleb128 0x3a
 5721 0080 0B       		.uleb128 0xb
 5722 0081 3B       		.uleb128 0x3b
 5723 0082 0B       		.uleb128 0xb
 5724 0083 01       		.uleb128 0x1
 5725 0084 13       		.uleb128 0x13
 5726 0085 00       		.byte	0
 5727 0086 00       		.byte	0
 5728 0087 0C       		.uleb128 0xc
 5729 0088 28       		.uleb128 0x28
 5730 0089 00       		.byte	0
 5731 008a 03       		.uleb128 0x3
 5732 008b 0E       		.uleb128 0xe
 5733 008c 1C       		.uleb128 0x1c
 5734 008d 0D       		.uleb128 0xd
 5735 008e 00       		.byte	0
 5736 008f 00       		.byte	0
 5737 0090 0D       		.uleb128 0xd
 5738 0091 28       		.uleb128 0x28
 5739 0092 00       		.byte	0
 5740 0093 03       		.uleb128 0x3
 5741 0094 0E       		.uleb128 0xe
 5742 0095 1C       		.uleb128 0x1c
 5743 0096 0B       		.uleb128 0xb
 5744 0097 00       		.byte	0
 5745 0098 00       		.byte	0
 5746 0099 0E       		.uleb128 0xe
 5747 009a 0F       		.uleb128 0xf
 5748 009b 00       		.byte	0
 5749 009c 0B       		.uleb128 0xb
 5750 009d 0B       		.uleb128 0xb
 5751 009e 00       		.byte	0
 5752 009f 00       		.byte	0
 5753 00a0 0F       		.uleb128 0xf
 5754 00a1 13       		.uleb128 0x13
 5755 00a2 01       		.byte	0x1
 5756 00a3 0B       		.uleb128 0xb
 5757 00a4 05       		.uleb128 0x5
 5758 00a5 3A       		.uleb128 0x3a
 5759 00a6 0B       		.uleb128 0xb
 5760 00a7 3B       		.uleb128 0x3b
 5761 00a8 05       		.uleb128 0x5
 5762 00a9 6E       		.uleb128 0x6e
 5763 00aa 0E       		.uleb128 0xe
 5764 00ab 01       		.uleb128 0x1
 5765 00ac 13       		.uleb128 0x13
 5766 00ad 00       		.byte	0
ARM GAS  /tmp/ccbYIR7z.s 			page 146


 5767 00ae 00       		.byte	0
 5768 00af 10       		.uleb128 0x10
 5769 00b0 0D       		.uleb128 0xd
 5770 00b1 00       		.byte	0
 5771 00b2 03       		.uleb128 0x3
 5772 00b3 0E       		.uleb128 0xe
 5773 00b4 3A       		.uleb128 0x3a
 5774 00b5 0B       		.uleb128 0xb
 5775 00b6 3B       		.uleb128 0x3b
 5776 00b7 05       		.uleb128 0x5
 5777 00b8 49       		.uleb128 0x49
 5778 00b9 13       		.uleb128 0x13
 5779 00ba 38       		.uleb128 0x38
 5780 00bb 05       		.uleb128 0x5
 5781 00bc 00       		.byte	0
 5782 00bd 00       		.byte	0
 5783 00be 11       		.uleb128 0x11
 5784 00bf 0D       		.uleb128 0xd
 5785 00c0 00       		.byte	0
 5786 00c1 03       		.uleb128 0x3
 5787 00c2 08       		.uleb128 0x8
 5788 00c3 3A       		.uleb128 0x3a
 5789 00c4 0B       		.uleb128 0xb
 5790 00c5 3B       		.uleb128 0x3b
 5791 00c6 05       		.uleb128 0x5
 5792 00c7 49       		.uleb128 0x49
 5793 00c8 13       		.uleb128 0x13
 5794 00c9 38       		.uleb128 0x38
 5795 00ca 05       		.uleb128 0x5
 5796 00cb 00       		.byte	0
 5797 00cc 00       		.byte	0
 5798 00cd 12       		.uleb128 0x12
 5799 00ce 01       		.uleb128 0x1
 5800 00cf 01       		.byte	0x1
 5801 00d0 49       		.uleb128 0x49
 5802 00d1 13       		.uleb128 0x13
 5803 00d2 01       		.uleb128 0x1
 5804 00d3 13       		.uleb128 0x13
 5805 00d4 00       		.byte	0
 5806 00d5 00       		.byte	0
 5807 00d6 13       		.uleb128 0x13
 5808 00d7 21       		.uleb128 0x21
 5809 00d8 00       		.byte	0
 5810 00d9 49       		.uleb128 0x49
 5811 00da 13       		.uleb128 0x13
 5812 00db 2F       		.uleb128 0x2f
 5813 00dc 0B       		.uleb128 0xb
 5814 00dd 00       		.byte	0
 5815 00de 00       		.byte	0
 5816 00df 14       		.uleb128 0x14
 5817 00e0 21       		.uleb128 0x21
 5818 00e1 00       		.byte	0
 5819 00e2 49       		.uleb128 0x49
 5820 00e3 13       		.uleb128 0x13
 5821 00e4 2F       		.uleb128 0x2f
 5822 00e5 05       		.uleb128 0x5
 5823 00e6 00       		.byte	0
ARM GAS  /tmp/ccbYIR7z.s 			page 147


 5824 00e7 00       		.byte	0
 5825 00e8 15       		.uleb128 0x15
 5826 00e9 34       		.uleb128 0x34
 5827 00ea 00       		.byte	0
 5828 00eb 03       		.uleb128 0x3
 5829 00ec 0E       		.uleb128 0xe
 5830 00ed 3A       		.uleb128 0x3a
 5831 00ee 0B       		.uleb128 0xb
 5832 00ef 3B       		.uleb128 0x3b
 5833 00f0 05       		.uleb128 0x5
 5834 00f1 49       		.uleb128 0x49
 5835 00f2 13       		.uleb128 0x13
 5836 00f3 3F       		.uleb128 0x3f
 5837 00f4 19       		.uleb128 0x19
 5838 00f5 3C       		.uleb128 0x3c
 5839 00f6 19       		.uleb128 0x19
 5840 00f7 00       		.byte	0
 5841 00f8 00       		.byte	0
 5842 00f9 16       		.uleb128 0x16
 5843 00fa 34       		.uleb128 0x34
 5844 00fb 00       		.byte	0
 5845 00fc 03       		.uleb128 0x3
 5846 00fd 0E       		.uleb128 0xe
 5847 00fe 3A       		.uleb128 0x3a
 5848 00ff 0B       		.uleb128 0xb
 5849 0100 3B       		.uleb128 0x3b
 5850 0101 0B       		.uleb128 0xb
 5851 0102 49       		.uleb128 0x49
 5852 0103 13       		.uleb128 0x13
 5853 0104 3F       		.uleb128 0x3f
 5854 0105 19       		.uleb128 0x19
 5855 0106 3C       		.uleb128 0x3c
 5856 0107 19       		.uleb128 0x19
 5857 0108 00       		.byte	0
 5858 0109 00       		.byte	0
 5859 010a 17       		.uleb128 0x17
 5860 010b 13       		.uleb128 0x13
 5861 010c 01       		.byte	0x1
 5862 010d 0B       		.uleb128 0xb
 5863 010e 05       		.uleb128 0x5
 5864 010f 3A       		.uleb128 0x3a
 5865 0110 0B       		.uleb128 0xb
 5866 0111 3B       		.uleb128 0x3b
 5867 0112 0B       		.uleb128 0xb
 5868 0113 6E       		.uleb128 0x6e
 5869 0114 0E       		.uleb128 0xe
 5870 0115 01       		.uleb128 0x1
 5871 0116 13       		.uleb128 0x13
 5872 0117 00       		.byte	0
 5873 0118 00       		.byte	0
 5874 0119 18       		.uleb128 0x18
 5875 011a 0D       		.uleb128 0xd
 5876 011b 00       		.byte	0
 5877 011c 03       		.uleb128 0x3
 5878 011d 0E       		.uleb128 0xe
 5879 011e 3A       		.uleb128 0x3a
 5880 011f 0B       		.uleb128 0xb
ARM GAS  /tmp/ccbYIR7z.s 			page 148


 5881 0120 3B       		.uleb128 0x3b
 5882 0121 0B       		.uleb128 0xb
 5883 0122 49       		.uleb128 0x49
 5884 0123 13       		.uleb128 0x13
 5885 0124 38       		.uleb128 0x38
 5886 0125 0B       		.uleb128 0xb
 5887 0126 00       		.byte	0
 5888 0127 00       		.byte	0
 5889 0128 19       		.uleb128 0x19
 5890 0129 0D       		.uleb128 0xd
 5891 012a 00       		.byte	0
 5892 012b 03       		.uleb128 0x3
 5893 012c 0E       		.uleb128 0xe
 5894 012d 3A       		.uleb128 0x3a
 5895 012e 0B       		.uleb128 0xb
 5896 012f 3B       		.uleb128 0x3b
 5897 0130 0B       		.uleb128 0xb
 5898 0131 49       		.uleb128 0x49
 5899 0132 13       		.uleb128 0x13
 5900 0133 38       		.uleb128 0x38
 5901 0134 05       		.uleb128 0x5
 5902 0135 00       		.byte	0
 5903 0136 00       		.byte	0
 5904 0137 1A       		.uleb128 0x1a
 5905 0138 16       		.uleb128 0x16
 5906 0139 00       		.byte	0
 5907 013a 03       		.uleb128 0x3
 5908 013b 08       		.uleb128 0x8
 5909 013c 3A       		.uleb128 0x3a
 5910 013d 0B       		.uleb128 0xb
 5911 013e 3B       		.uleb128 0x3b
 5912 013f 0B       		.uleb128 0xb
 5913 0140 49       		.uleb128 0x49
 5914 0141 13       		.uleb128 0x13
 5915 0142 00       		.byte	0
 5916 0143 00       		.byte	0
 5917 0144 1B       		.uleb128 0x1b
 5918 0145 13       		.uleb128 0x13
 5919 0146 01       		.byte	0x1
 5920 0147 0B       		.uleb128 0xb
 5921 0148 0B       		.uleb128 0xb
 5922 0149 3A       		.uleb128 0x3a
 5923 014a 0B       		.uleb128 0xb
 5924 014b 3B       		.uleb128 0x3b
 5925 014c 0B       		.uleb128 0xb
 5926 014d 6E       		.uleb128 0x6e
 5927 014e 0E       		.uleb128 0xe
 5928 014f 01       		.uleb128 0x1
 5929 0150 13       		.uleb128 0x13
 5930 0151 00       		.byte	0
 5931 0152 00       		.byte	0
 5932 0153 1C       		.uleb128 0x1c
 5933 0154 17       		.uleb128 0x17
 5934 0155 01       		.byte	0x1
 5935 0156 0B       		.uleb128 0xb
 5936 0157 0B       		.uleb128 0xb
 5937 0158 3A       		.uleb128 0x3a
ARM GAS  /tmp/ccbYIR7z.s 			page 149


 5938 0159 0B       		.uleb128 0xb
 5939 015a 3B       		.uleb128 0x3b
 5940 015b 0B       		.uleb128 0xb
 5941 015c 01       		.uleb128 0x1
 5942 015d 13       		.uleb128 0x13
 5943 015e 00       		.byte	0
 5944 015f 00       		.byte	0
 5945 0160 1D       		.uleb128 0x1d
 5946 0161 0D       		.uleb128 0xd
 5947 0162 00       		.byte	0
 5948 0163 03       		.uleb128 0x3
 5949 0164 0E       		.uleb128 0xe
 5950 0165 3A       		.uleb128 0x3a
 5951 0166 0B       		.uleb128 0xb
 5952 0167 3B       		.uleb128 0x3b
 5953 0168 0B       		.uleb128 0xb
 5954 0169 49       		.uleb128 0x49
 5955 016a 13       		.uleb128 0x13
 5956 016b 00       		.byte	0
 5957 016c 00       		.byte	0
 5958 016d 1E       		.uleb128 0x1e
 5959 016e 13       		.uleb128 0x13
 5960 016f 01       		.byte	0x1
 5961 0170 03       		.uleb128 0x3
 5962 0171 0E       		.uleb128 0xe
 5963 0172 0B       		.uleb128 0xb
 5964 0173 0B       		.uleb128 0xb
 5965 0174 3A       		.uleb128 0x3a
 5966 0175 0B       		.uleb128 0xb
 5967 0176 3B       		.uleb128 0x3b
 5968 0177 0B       		.uleb128 0xb
 5969 0178 01       		.uleb128 0x1
 5970 0179 13       		.uleb128 0x13
 5971 017a 00       		.byte	0
 5972 017b 00       		.byte	0
 5973 017c 1F       		.uleb128 0x1f
 5974 017d 0D       		.uleb128 0xd
 5975 017e 00       		.byte	0
 5976 017f 03       		.uleb128 0x3
 5977 0180 08       		.uleb128 0x8
 5978 0181 3A       		.uleb128 0x3a
 5979 0182 0B       		.uleb128 0xb
 5980 0183 3B       		.uleb128 0x3b
 5981 0184 0B       		.uleb128 0xb
 5982 0185 49       		.uleb128 0x49
 5983 0186 13       		.uleb128 0x13
 5984 0187 38       		.uleb128 0x38
 5985 0188 0B       		.uleb128 0xb
 5986 0189 00       		.byte	0
 5987 018a 00       		.byte	0
 5988 018b 20       		.uleb128 0x20
 5989 018c 0F       		.uleb128 0xf
 5990 018d 00       		.byte	0
 5991 018e 0B       		.uleb128 0xb
 5992 018f 0B       		.uleb128 0xb
 5993 0190 49       		.uleb128 0x49
 5994 0191 13       		.uleb128 0x13
ARM GAS  /tmp/ccbYIR7z.s 			page 150


 5995 0192 00       		.byte	0
 5996 0193 00       		.byte	0
 5997 0194 21       		.uleb128 0x21
 5998 0195 13       		.uleb128 0x13
 5999 0196 01       		.byte	0x1
 6000 0197 03       		.uleb128 0x3
 6001 0198 0E       		.uleb128 0xe
 6002 0199 0B       		.uleb128 0xb
 6003 019a 05       		.uleb128 0x5
 6004 019b 3A       		.uleb128 0x3a
 6005 019c 0B       		.uleb128 0xb
 6006 019d 3B       		.uleb128 0x3b
 6007 019e 0B       		.uleb128 0xb
 6008 019f 01       		.uleb128 0x1
 6009 01a0 13       		.uleb128 0x13
 6010 01a1 00       		.byte	0
 6011 01a2 00       		.byte	0
 6012 01a3 22       		.uleb128 0x22
 6013 01a4 15       		.uleb128 0x15
 6014 01a5 00       		.byte	0
 6015 01a6 00       		.byte	0
 6016 01a7 00       		.byte	0
 6017 01a8 23       		.uleb128 0x23
 6018 01a9 15       		.uleb128 0x15
 6019 01aa 01       		.byte	0x1
 6020 01ab 49       		.uleb128 0x49
 6021 01ac 13       		.uleb128 0x13
 6022 01ad 01       		.uleb128 0x1
 6023 01ae 13       		.uleb128 0x13
 6024 01af 00       		.byte	0
 6025 01b0 00       		.byte	0
 6026 01b1 24       		.uleb128 0x24
 6027 01b2 05       		.uleb128 0x5
 6028 01b3 00       		.byte	0
 6029 01b4 49       		.uleb128 0x49
 6030 01b5 13       		.uleb128 0x13
 6031 01b6 00       		.byte	0
 6032 01b7 00       		.byte	0
 6033 01b8 25       		.uleb128 0x25
 6034 01b9 13       		.uleb128 0x13
 6035 01ba 01       		.byte	0x1
 6036 01bb 03       		.uleb128 0x3
 6037 01bc 0E       		.uleb128 0xe
 6038 01bd 0B       		.uleb128 0xb
 6039 01be 05       		.uleb128 0x5
 6040 01bf 3A       		.uleb128 0x3a
 6041 01c0 0B       		.uleb128 0xb
 6042 01c1 3B       		.uleb128 0x3b
 6043 01c2 05       		.uleb128 0x5
 6044 01c3 01       		.uleb128 0x1
 6045 01c4 13       		.uleb128 0x13
 6046 01c5 00       		.byte	0
 6047 01c6 00       		.byte	0
 6048 01c7 26       		.uleb128 0x26
 6049 01c8 17       		.uleb128 0x17
 6050 01c9 01       		.byte	0x1
 6051 01ca 0B       		.uleb128 0xb
ARM GAS  /tmp/ccbYIR7z.s 			page 151


 6052 01cb 0B       		.uleb128 0xb
 6053 01cc 3A       		.uleb128 0x3a
 6054 01cd 0B       		.uleb128 0xb
 6055 01ce 3B       		.uleb128 0x3b
 6056 01cf 05       		.uleb128 0x5
 6057 01d0 01       		.uleb128 0x1
 6058 01d1 13       		.uleb128 0x13
 6059 01d2 00       		.byte	0
 6060 01d3 00       		.byte	0
 6061 01d4 27       		.uleb128 0x27
 6062 01d5 13       		.uleb128 0x13
 6063 01d6 01       		.byte	0x1
 6064 01d7 0B       		.uleb128 0xb
 6065 01d8 0B       		.uleb128 0xb
 6066 01d9 3A       		.uleb128 0x3a
 6067 01da 0B       		.uleb128 0xb
 6068 01db 3B       		.uleb128 0x3b
 6069 01dc 05       		.uleb128 0x5
 6070 01dd 01       		.uleb128 0x1
 6071 01de 13       		.uleb128 0x13
 6072 01df 00       		.byte	0
 6073 01e0 00       		.byte	0
 6074 01e1 28       		.uleb128 0x28
 6075 01e2 0D       		.uleb128 0xd
 6076 01e3 00       		.byte	0
 6077 01e4 03       		.uleb128 0x3
 6078 01e5 0E       		.uleb128 0xe
 6079 01e6 3A       		.uleb128 0x3a
 6080 01e7 0B       		.uleb128 0xb
 6081 01e8 3B       		.uleb128 0x3b
 6082 01e9 05       		.uleb128 0x5
 6083 01ea 49       		.uleb128 0x49
 6084 01eb 13       		.uleb128 0x13
 6085 01ec 00       		.byte	0
 6086 01ed 00       		.byte	0
 6087 01ee 29       		.uleb128 0x29
 6088 01ef 13       		.uleb128 0x13
 6089 01f0 01       		.byte	0x1
 6090 01f1 03       		.uleb128 0x3
 6091 01f2 0E       		.uleb128 0xe
 6092 01f3 0B       		.uleb128 0xb
 6093 01f4 0B       		.uleb128 0xb
 6094 01f5 3A       		.uleb128 0x3a
 6095 01f6 0B       		.uleb128 0xb
 6096 01f7 3B       		.uleb128 0x3b
 6097 01f8 05       		.uleb128 0x5
 6098 01f9 01       		.uleb128 0x1
 6099 01fa 13       		.uleb128 0x13
 6100 01fb 00       		.byte	0
 6101 01fc 00       		.byte	0
 6102 01fd 2A       		.uleb128 0x2a
 6103 01fe 15       		.uleb128 0x15
 6104 01ff 01       		.byte	0x1
 6105 0200 01       		.uleb128 0x1
 6106 0201 13       		.uleb128 0x13
 6107 0202 00       		.byte	0
 6108 0203 00       		.byte	0
ARM GAS  /tmp/ccbYIR7z.s 			page 152


 6109 0204 2B       		.uleb128 0x2b
 6110 0205 39       		.uleb128 0x39
 6111 0206 01       		.byte	0x1
 6112 0207 03       		.uleb128 0x3
 6113 0208 08       		.uleb128 0x8
 6114 0209 3A       		.uleb128 0x3a
 6115 020a 0B       		.uleb128 0xb
 6116 020b 3B       		.uleb128 0x3b
 6117 020c 0B       		.uleb128 0xb
 6118 020d 01       		.uleb128 0x1
 6119 020e 13       		.uleb128 0x13
 6120 020f 00       		.byte	0
 6121 0210 00       		.byte	0
 6122 0211 2C       		.uleb128 0x2c
 6123 0212 39       		.uleb128 0x39
 6124 0213 00       		.byte	0
 6125 0214 03       		.uleb128 0x3
 6126 0215 0E       		.uleb128 0xe
 6127 0216 3A       		.uleb128 0x3a
 6128 0217 0B       		.uleb128 0xb
 6129 0218 3B       		.uleb128 0x3b
 6130 0219 0B       		.uleb128 0xb
 6131 021a 00       		.byte	0
 6132 021b 00       		.byte	0
 6133 021c 2D       		.uleb128 0x2d
 6134 021d 3A       		.uleb128 0x3a
 6135 021e 00       		.byte	0
 6136 021f 3A       		.uleb128 0x3a
 6137 0220 0B       		.uleb128 0xb
 6138 0221 3B       		.uleb128 0x3b
 6139 0222 0B       		.uleb128 0xb
 6140 0223 18       		.uleb128 0x18
 6141 0224 13       		.uleb128 0x13
 6142 0225 00       		.byte	0
 6143 0226 00       		.byte	0
 6144 0227 2E       		.uleb128 0x2e
 6145 0228 08       		.uleb128 0x8
 6146 0229 00       		.byte	0
 6147 022a 3A       		.uleb128 0x3a
 6148 022b 0B       		.uleb128 0xb
 6149 022c 3B       		.uleb128 0x3b
 6150 022d 0B       		.uleb128 0xb
 6151 022e 18       		.uleb128 0x18
 6152 022f 13       		.uleb128 0x13
 6153 0230 00       		.byte	0
 6154 0231 00       		.byte	0
 6155 0232 2F       		.uleb128 0x2f
 6156 0233 08       		.uleb128 0x8
 6157 0234 00       		.byte	0
 6158 0235 3A       		.uleb128 0x3a
 6159 0236 0B       		.uleb128 0xb
 6160 0237 3B       		.uleb128 0x3b
 6161 0238 05       		.uleb128 0x5
 6162 0239 18       		.uleb128 0x18
 6163 023a 13       		.uleb128 0x13
 6164 023b 00       		.byte	0
 6165 023c 00       		.byte	0
ARM GAS  /tmp/ccbYIR7z.s 			page 153


 6166 023d 30       		.uleb128 0x30
 6167 023e 2E       		.uleb128 0x2e
 6168 023f 01       		.byte	0x1
 6169 0240 3F       		.uleb128 0x3f
 6170 0241 19       		.uleb128 0x19
 6171 0242 03       		.uleb128 0x3
 6172 0243 08       		.uleb128 0x8
 6173 0244 3A       		.uleb128 0x3a
 6174 0245 0B       		.uleb128 0xb
 6175 0246 3B       		.uleb128 0x3b
 6176 0247 0B       		.uleb128 0xb
 6177 0248 6E       		.uleb128 0x6e
 6178 0249 0E       		.uleb128 0xe
 6179 024a 49       		.uleb128 0x49
 6180 024b 13       		.uleb128 0x13
 6181 024c 3C       		.uleb128 0x3c
 6182 024d 19       		.uleb128 0x19
 6183 024e 01       		.uleb128 0x1
 6184 024f 13       		.uleb128 0x13
 6185 0250 00       		.byte	0
 6186 0251 00       		.byte	0
 6187 0252 31       		.uleb128 0x31
 6188 0253 2E       		.uleb128 0x2e
 6189 0254 01       		.byte	0x1
 6190 0255 3F       		.uleb128 0x3f
 6191 0256 19       		.uleb128 0x19
 6192 0257 03       		.uleb128 0x3
 6193 0258 0E       		.uleb128 0xe
 6194 0259 3A       		.uleb128 0x3a
 6195 025a 0B       		.uleb128 0xb
 6196 025b 3B       		.uleb128 0x3b
 6197 025c 05       		.uleb128 0x5
 6198 025d 6E       		.uleb128 0x6e
 6199 025e 0E       		.uleb128 0xe
 6200 025f 49       		.uleb128 0x49
 6201 0260 13       		.uleb128 0x13
 6202 0261 3C       		.uleb128 0x3c
 6203 0262 19       		.uleb128 0x19
 6204 0263 01       		.uleb128 0x1
 6205 0264 13       		.uleb128 0x13
 6206 0265 00       		.byte	0
 6207 0266 00       		.byte	0
 6208 0267 32       		.uleb128 0x32
 6209 0268 39       		.uleb128 0x39
 6210 0269 01       		.byte	0x1
 6211 026a 03       		.uleb128 0x3
 6212 026b 0E       		.uleb128 0xe
 6213 026c 3A       		.uleb128 0x3a
 6214 026d 0B       		.uleb128 0xb
 6215 026e 3B       		.uleb128 0x3b
 6216 026f 0B       		.uleb128 0xb
 6217 0270 01       		.uleb128 0x1
 6218 0271 13       		.uleb128 0x13
 6219 0272 00       		.byte	0
 6220 0273 00       		.byte	0
 6221 0274 33       		.uleb128 0x33
 6222 0275 2E       		.uleb128 0x2e
ARM GAS  /tmp/ccbYIR7z.s 			page 154


 6223 0276 01       		.byte	0x1
 6224 0277 3F       		.uleb128 0x3f
 6225 0278 19       		.uleb128 0x19
 6226 0279 03       		.uleb128 0x3
 6227 027a 08       		.uleb128 0x8
 6228 027b 3A       		.uleb128 0x3a
 6229 027c 0B       		.uleb128 0xb
 6230 027d 3B       		.uleb128 0x3b
 6231 027e 0B       		.uleb128 0xb
 6232 027f 6E       		.uleb128 0x6e
 6233 0280 0E       		.uleb128 0xe
 6234 0281 49       		.uleb128 0x49
 6235 0282 13       		.uleb128 0x13
 6236 0283 3C       		.uleb128 0x3c
 6237 0284 19       		.uleb128 0x19
 6238 0285 00       		.byte	0
 6239 0286 00       		.byte	0
 6240 0287 34       		.uleb128 0x34
 6241 0288 26       		.uleb128 0x26
 6242 0289 00       		.byte	0
 6243 028a 00       		.byte	0
 6244 028b 00       		.byte	0
 6245 028c 35       		.uleb128 0x35
 6246 028d 2E       		.uleb128 0x2e
 6247 028e 01       		.byte	0x1
 6248 028f 3F       		.uleb128 0x3f
 6249 0290 19       		.uleb128 0x19
 6250 0291 03       		.uleb128 0x3
 6251 0292 0E       		.uleb128 0xe
 6252 0293 3A       		.uleb128 0x3a
 6253 0294 0B       		.uleb128 0xb
 6254 0295 3B       		.uleb128 0x3b
 6255 0296 0B       		.uleb128 0xb
 6256 0297 49       		.uleb128 0x49
 6257 0298 13       		.uleb128 0x13
 6258 0299 3C       		.uleb128 0x3c
 6259 029a 19       		.uleb128 0x19
 6260 029b 01       		.uleb128 0x1
 6261 029c 13       		.uleb128 0x13
 6262 029d 00       		.byte	0
 6263 029e 00       		.byte	0
 6264 029f 36       		.uleb128 0x36
 6265 02a0 2E       		.uleb128 0x2e
 6266 02a1 01       		.byte	0x1
 6267 02a2 3F       		.uleb128 0x3f
 6268 02a3 19       		.uleb128 0x19
 6269 02a4 03       		.uleb128 0x3
 6270 02a5 08       		.uleb128 0x8
 6271 02a6 3A       		.uleb128 0x3a
 6272 02a7 0B       		.uleb128 0xb
 6273 02a8 3B       		.uleb128 0x3b
 6274 02a9 0B       		.uleb128 0xb
 6275 02aa 49       		.uleb128 0x49
 6276 02ab 13       		.uleb128 0x13
 6277 02ac 3C       		.uleb128 0x3c
 6278 02ad 19       		.uleb128 0x19
 6279 02ae 01       		.uleb128 0x1
ARM GAS  /tmp/ccbYIR7z.s 			page 155


 6280 02af 13       		.uleb128 0x13
 6281 02b0 00       		.byte	0
 6282 02b1 00       		.byte	0
 6283 02b2 37       		.uleb128 0x37
 6284 02b3 2E       		.uleb128 0x2e
 6285 02b4 01       		.byte	0x1
 6286 02b5 3F       		.uleb128 0x3f
 6287 02b6 19       		.uleb128 0x19
 6288 02b7 03       		.uleb128 0x3
 6289 02b8 0E       		.uleb128 0xe
 6290 02b9 3A       		.uleb128 0x3a
 6291 02ba 0B       		.uleb128 0xb
 6292 02bb 3B       		.uleb128 0x3b
 6293 02bc 0B       		.uleb128 0xb
 6294 02bd 3C       		.uleb128 0x3c
 6295 02be 19       		.uleb128 0x19
 6296 02bf 01       		.uleb128 0x1
 6297 02c0 13       		.uleb128 0x13
 6298 02c1 00       		.byte	0
 6299 02c2 00       		.byte	0
 6300 02c3 38       		.uleb128 0x38
 6301 02c4 2E       		.uleb128 0x2e
 6302 02c5 00       		.byte	0
 6303 02c6 3F       		.uleb128 0x3f
 6304 02c7 19       		.uleb128 0x19
 6305 02c8 03       		.uleb128 0x3
 6306 02c9 0E       		.uleb128 0xe
 6307 02ca 3A       		.uleb128 0x3a
 6308 02cb 0B       		.uleb128 0xb
 6309 02cc 3B       		.uleb128 0x3b
 6310 02cd 0B       		.uleb128 0xb
 6311 02ce 49       		.uleb128 0x49
 6312 02cf 13       		.uleb128 0x13
 6313 02d0 3C       		.uleb128 0x3c
 6314 02d1 19       		.uleb128 0x19
 6315 02d2 00       		.byte	0
 6316 02d3 00       		.byte	0
 6317 02d4 39       		.uleb128 0x39
 6318 02d5 2E       		.uleb128 0x2e
 6319 02d6 01       		.byte	0x1
 6320 02d7 3F       		.uleb128 0x3f
 6321 02d8 19       		.uleb128 0x19
 6322 02d9 03       		.uleb128 0x3
 6323 02da 0E       		.uleb128 0xe
 6324 02db 3A       		.uleb128 0x3a
 6325 02dc 0B       		.uleb128 0xb
 6326 02dd 3B       		.uleb128 0x3b
 6327 02de 05       		.uleb128 0x5
 6328 02df 49       		.uleb128 0x49
 6329 02e0 13       		.uleb128 0x13
 6330 02e1 3C       		.uleb128 0x3c
 6331 02e2 19       		.uleb128 0x19
 6332 02e3 01       		.uleb128 0x1
 6333 02e4 13       		.uleb128 0x13
 6334 02e5 00       		.byte	0
 6335 02e6 00       		.byte	0
 6336 02e7 3A       		.uleb128 0x3a
ARM GAS  /tmp/ccbYIR7z.s 			page 156


 6337 02e8 34       		.uleb128 0x34
 6338 02e9 00       		.byte	0
 6339 02ea 03       		.uleb128 0x3
 6340 02eb 0E       		.uleb128 0xe
 6341 02ec 3A       		.uleb128 0x3a
 6342 02ed 0B       		.uleb128 0xb
 6343 02ee 3B       		.uleb128 0x3b
 6344 02ef 0B       		.uleb128 0xb
 6345 02f0 49       		.uleb128 0x49
 6346 02f1 13       		.uleb128 0x13
 6347 02f2 02       		.uleb128 0x2
 6348 02f3 18       		.uleb128 0x18
 6349 02f4 00       		.byte	0
 6350 02f5 00       		.byte	0
 6351 02f6 3B       		.uleb128 0x3b
 6352 02f7 04       		.uleb128 0x4
 6353 02f8 01       		.byte	0x1
 6354 02f9 03       		.uleb128 0x3
 6355 02fa 0E       		.uleb128 0xe
 6356 02fb 0B       		.uleb128 0xb
 6357 02fc 0B       		.uleb128 0xb
 6358 02fd 49       		.uleb128 0x49
 6359 02fe 13       		.uleb128 0x13
 6360 02ff 3A       		.uleb128 0x3a
 6361 0300 0B       		.uleb128 0xb
 6362 0301 3B       		.uleb128 0x3b
 6363 0302 05       		.uleb128 0x5
 6364 0303 01       		.uleb128 0x1
 6365 0304 13       		.uleb128 0x13
 6366 0305 00       		.byte	0
 6367 0306 00       		.byte	0
 6368 0307 3C       		.uleb128 0x3c
 6369 0308 28       		.uleb128 0x28
 6370 0309 00       		.byte	0
 6371 030a 03       		.uleb128 0x3
 6372 030b 0E       		.uleb128 0xe
 6373 030c 1C       		.uleb128 0x1c
 6374 030d 06       		.uleb128 0x6
 6375 030e 00       		.byte	0
 6376 030f 00       		.byte	0
 6377 0310 3D       		.uleb128 0x3d
 6378 0311 34       		.uleb128 0x34
 6379 0312 00       		.byte	0
 6380 0313 03       		.uleb128 0x3
 6381 0314 0E       		.uleb128 0xe
 6382 0315 3A       		.uleb128 0x3a
 6383 0316 0B       		.uleb128 0xb
 6384 0317 3B       		.uleb128 0x3b
 6385 0318 0B       		.uleb128 0xb
 6386 0319 49       		.uleb128 0x49
 6387 031a 13       		.uleb128 0x13
 6388 031b 1C       		.uleb128 0x1c
 6389 031c 0D       		.uleb128 0xd
 6390 031d 00       		.byte	0
 6391 031e 00       		.byte	0
 6392 031f 3E       		.uleb128 0x3e
 6393 0320 28       		.uleb128 0x28
ARM GAS  /tmp/ccbYIR7z.s 			page 157


 6394 0321 00       		.byte	0
 6395 0322 03       		.uleb128 0x3
 6396 0323 08       		.uleb128 0x8
 6397 0324 1C       		.uleb128 0x1c
 6398 0325 0B       		.uleb128 0xb
 6399 0326 00       		.byte	0
 6400 0327 00       		.byte	0
 6401 0328 3F       		.uleb128 0x3f
 6402 0329 21       		.uleb128 0x21
 6403 032a 00       		.byte	0
 6404 032b 00       		.byte	0
 6405 032c 00       		.byte	0
 6406 032d 40       		.uleb128 0x40
 6407 032e 02       		.uleb128 0x2
 6408 032f 01       		.byte	0x1
 6409 0330 03       		.uleb128 0x3
 6410 0331 0E       		.uleb128 0xe
 6411 0332 3C       		.uleb128 0x3c
 6412 0333 19       		.uleb128 0x19
 6413 0334 01       		.uleb128 0x1
 6414 0335 13       		.uleb128 0x13
 6415 0336 00       		.byte	0
 6416 0337 00       		.byte	0
 6417 0338 41       		.uleb128 0x41
 6418 0339 2E       		.uleb128 0x2e
 6419 033a 01       		.byte	0x1
 6420 033b 3F       		.uleb128 0x3f
 6421 033c 19       		.uleb128 0x19
 6422 033d 03       		.uleb128 0x3
 6423 033e 0E       		.uleb128 0xe
 6424 033f 3A       		.uleb128 0x3a
 6425 0340 0B       		.uleb128 0xb
 6426 0341 3B       		.uleb128 0x3b
 6427 0342 0B       		.uleb128 0xb
 6428 0343 6E       		.uleb128 0x6e
 6429 0344 0E       		.uleb128 0xe
 6430 0345 49       		.uleb128 0x49
 6431 0346 13       		.uleb128 0x13
 6432 0347 32       		.uleb128 0x32
 6433 0348 0B       		.uleb128 0xb
 6434 0349 3C       		.uleb128 0x3c
 6435 034a 19       		.uleb128 0x19
 6436 034b 64       		.uleb128 0x64
 6437 034c 13       		.uleb128 0x13
 6438 034d 00       		.byte	0
 6439 034e 00       		.byte	0
 6440 034f 42       		.uleb128 0x42
 6441 0350 05       		.uleb128 0x5
 6442 0351 00       		.byte	0
 6443 0352 49       		.uleb128 0x49
 6444 0353 13       		.uleb128 0x13
 6445 0354 34       		.uleb128 0x34
 6446 0355 19       		.uleb128 0x19
 6447 0356 00       		.byte	0
 6448 0357 00       		.byte	0
 6449 0358 43       		.uleb128 0x43
 6450 0359 34       		.uleb128 0x34
ARM GAS  /tmp/ccbYIR7z.s 			page 158


 6451 035a 00       		.byte	0
 6452 035b 03       		.uleb128 0x3
 6453 035c 0E       		.uleb128 0xe
 6454 035d 3A       		.uleb128 0x3a
 6455 035e 0B       		.uleb128 0xb
 6456 035f 3B       		.uleb128 0x3b
 6457 0360 0B       		.uleb128 0xb
 6458 0361 49       		.uleb128 0x49
 6459 0362 13       		.uleb128 0x13
 6460 0363 1C       		.uleb128 0x1c
 6461 0364 05       		.uleb128 0x5
 6462 0365 00       		.byte	0
 6463 0366 00       		.byte	0
 6464 0367 44       		.uleb128 0x44
 6465 0368 34       		.uleb128 0x34
 6466 0369 00       		.byte	0
 6467 036a 03       		.uleb128 0x3
 6468 036b 0E       		.uleb128 0xe
 6469 036c 3A       		.uleb128 0x3a
 6470 036d 0B       		.uleb128 0xb
 6471 036e 3B       		.uleb128 0x3b
 6472 036f 0B       		.uleb128 0xb
 6473 0370 49       		.uleb128 0x49
 6474 0371 13       		.uleb128 0x13
 6475 0372 1C       		.uleb128 0x1c
 6476 0373 0B       		.uleb128 0xb
 6477 0374 00       		.byte	0
 6478 0375 00       		.byte	0
 6479 0376 45       		.uleb128 0x45
 6480 0377 34       		.uleb128 0x34
 6481 0378 00       		.byte	0
 6482 0379 03       		.uleb128 0x3
 6483 037a 0E       		.uleb128 0xe
 6484 037b 3A       		.uleb128 0x3a
 6485 037c 0B       		.uleb128 0xb
 6486 037d 3B       		.uleb128 0x3b
 6487 037e 0B       		.uleb128 0xb
 6488 037f 49       		.uleb128 0x49
 6489 0380 13       		.uleb128 0x13
 6490 0381 1C       		.uleb128 0x1c
 6491 0382 06       		.uleb128 0x6
 6492 0383 00       		.byte	0
 6493 0384 00       		.byte	0
 6494 0385 46       		.uleb128 0x46
 6495 0386 02       		.uleb128 0x2
 6496 0387 00       		.byte	0
 6497 0388 03       		.uleb128 0x3
 6498 0389 0E       		.uleb128 0xe
 6499 038a 3C       		.uleb128 0x3c
 6500 038b 19       		.uleb128 0x19
 6501 038c 00       		.byte	0
 6502 038d 00       		.byte	0
 6503 038e 47       		.uleb128 0x47
 6504 038f 17       		.uleb128 0x17
 6505 0390 01       		.byte	0x1
 6506 0391 03       		.uleb128 0x3
 6507 0392 0E       		.uleb128 0xe
ARM GAS  /tmp/ccbYIR7z.s 			page 159


 6508 0393 0B       		.uleb128 0xb
 6509 0394 0B       		.uleb128 0xb
 6510 0395 3A       		.uleb128 0x3a
 6511 0396 0B       		.uleb128 0xb
 6512 0397 3B       		.uleb128 0x3b
 6513 0398 0B       		.uleb128 0xb
 6514 0399 01       		.uleb128 0x1
 6515 039a 13       		.uleb128 0x13
 6516 039b 00       		.byte	0
 6517 039c 00       		.byte	0
 6518 039d 48       		.uleb128 0x48
 6519 039e 0D       		.uleb128 0xd
 6520 039f 00       		.byte	0
 6521 03a0 03       		.uleb128 0x3
 6522 03a1 08       		.uleb128 0x8
 6523 03a2 3A       		.uleb128 0x3a
 6524 03a3 0B       		.uleb128 0xb
 6525 03a4 3B       		.uleb128 0x3b
 6526 03a5 0B       		.uleb128 0xb
 6527 03a6 49       		.uleb128 0x49
 6528 03a7 13       		.uleb128 0x13
 6529 03a8 00       		.byte	0
 6530 03a9 00       		.byte	0
 6531 03aa 49       		.uleb128 0x49
 6532 03ab 2E       		.uleb128 0x2e
 6533 03ac 01       		.byte	0x1
 6534 03ad 3F       		.uleb128 0x3f
 6535 03ae 19       		.uleb128 0x19
 6536 03af 03       		.uleb128 0x3
 6537 03b0 0E       		.uleb128 0xe
 6538 03b1 3A       		.uleb128 0x3a
 6539 03b2 0B       		.uleb128 0xb
 6540 03b3 3B       		.uleb128 0x3b
 6541 03b4 0B       		.uleb128 0xb
 6542 03b5 6E       		.uleb128 0x6e
 6543 03b6 0E       		.uleb128 0xe
 6544 03b7 49       		.uleb128 0x49
 6545 03b8 13       		.uleb128 0x13
 6546 03b9 3C       		.uleb128 0x3c
 6547 03ba 19       		.uleb128 0x19
 6548 03bb 64       		.uleb128 0x64
 6549 03bc 13       		.uleb128 0x13
 6550 03bd 01       		.uleb128 0x1
 6551 03be 13       		.uleb128 0x13
 6552 03bf 00       		.byte	0
 6553 03c0 00       		.byte	0
 6554 03c1 4A       		.uleb128 0x4a
 6555 03c2 2E       		.uleb128 0x2e
 6556 03c3 01       		.byte	0x1
 6557 03c4 3F       		.uleb128 0x3f
 6558 03c5 19       		.uleb128 0x19
 6559 03c6 03       		.uleb128 0x3
 6560 03c7 0E       		.uleb128 0xe
 6561 03c8 3A       		.uleb128 0x3a
 6562 03c9 0B       		.uleb128 0xb
 6563 03ca 3B       		.uleb128 0x3b
 6564 03cb 0B       		.uleb128 0xb
ARM GAS  /tmp/ccbYIR7z.s 			page 160


 6565 03cc 6E       		.uleb128 0x6e
 6566 03cd 0E       		.uleb128 0xe
 6567 03ce 49       		.uleb128 0x49
 6568 03cf 13       		.uleb128 0x13
 6569 03d0 3C       		.uleb128 0x3c
 6570 03d1 19       		.uleb128 0x19
 6571 03d2 64       		.uleb128 0x64
 6572 03d3 13       		.uleb128 0x13
 6573 03d4 00       		.byte	0
 6574 03d5 00       		.byte	0
 6575 03d6 4B       		.uleb128 0x4b
 6576 03d7 2E       		.uleb128 0x2e
 6577 03d8 01       		.byte	0x1
 6578 03d9 03       		.uleb128 0x3
 6579 03da 0E       		.uleb128 0xe
 6580 03db 34       		.uleb128 0x34
 6581 03dc 19       		.uleb128 0x19
 6582 03dd 11       		.uleb128 0x11
 6583 03de 01       		.uleb128 0x1
 6584 03df 12       		.uleb128 0x12
 6585 03e0 06       		.uleb128 0x6
 6586 03e1 40       		.uleb128 0x40
 6587 03e2 18       		.uleb128 0x18
 6588 03e3 9742     		.uleb128 0x2117
 6589 03e5 19       		.uleb128 0x19
 6590 03e6 01       		.uleb128 0x1
 6591 03e7 13       		.uleb128 0x13
 6592 03e8 00       		.byte	0
 6593 03e9 00       		.byte	0
 6594 03ea 4C       		.uleb128 0x4c
 6595 03eb 1D       		.uleb128 0x1d
 6596 03ec 01       		.byte	0x1
 6597 03ed 31       		.uleb128 0x31
 6598 03ee 13       		.uleb128 0x13
 6599 03ef 11       		.uleb128 0x11
 6600 03f0 01       		.uleb128 0x1
 6601 03f1 12       		.uleb128 0x12
 6602 03f2 06       		.uleb128 0x6
 6603 03f3 58       		.uleb128 0x58
 6604 03f4 0B       		.uleb128 0xb
 6605 03f5 59       		.uleb128 0x59
 6606 03f6 05       		.uleb128 0x5
 6607 03f7 00       		.byte	0
 6608 03f8 00       		.byte	0
 6609 03f9 4D       		.uleb128 0x4d
 6610 03fa 05       		.uleb128 0x5
 6611 03fb 00       		.byte	0
 6612 03fc 31       		.uleb128 0x31
 6613 03fd 13       		.uleb128 0x13
 6614 03fe 1C       		.uleb128 0x1c
 6615 03ff 0B       		.uleb128 0xb
 6616 0400 00       		.byte	0
 6617 0401 00       		.byte	0
 6618 0402 4E       		.uleb128 0x4e
 6619 0403 05       		.uleb128 0x5
 6620 0404 00       		.byte	0
 6621 0405 31       		.uleb128 0x31
ARM GAS  /tmp/ccbYIR7z.s 			page 161


 6622 0406 13       		.uleb128 0x13
 6623 0407 1C       		.uleb128 0x1c
 6624 0408 05       		.uleb128 0x5
 6625 0409 00       		.byte	0
 6626 040a 00       		.byte	0
 6627 040b 4F       		.uleb128 0x4f
 6628 040c 1D       		.uleb128 0x1d
 6629 040d 01       		.byte	0x1
 6630 040e 31       		.uleb128 0x31
 6631 040f 13       		.uleb128 0x13
 6632 0410 11       		.uleb128 0x11
 6633 0411 01       		.uleb128 0x1
 6634 0412 12       		.uleb128 0x12
 6635 0413 06       		.uleb128 0x6
 6636 0414 58       		.uleb128 0x58
 6637 0415 0B       		.uleb128 0xb
 6638 0416 59       		.uleb128 0x59
 6639 0417 0B       		.uleb128 0xb
 6640 0418 01       		.uleb128 0x1
 6641 0419 13       		.uleb128 0x13
 6642 041a 00       		.byte	0
 6643 041b 00       		.byte	0
 6644 041c 50       		.uleb128 0x50
 6645 041d 05       		.uleb128 0x5
 6646 041e 00       		.byte	0
 6647 041f 31       		.uleb128 0x31
 6648 0420 13       		.uleb128 0x13
 6649 0421 02       		.uleb128 0x2
 6650 0422 17       		.uleb128 0x17
 6651 0423 00       		.byte	0
 6652 0424 00       		.byte	0
 6653 0425 51       		.uleb128 0x51
 6654 0426 1D       		.uleb128 0x1d
 6655 0427 01       		.byte	0x1
 6656 0428 31       		.uleb128 0x31
 6657 0429 13       		.uleb128 0x13
 6658 042a 11       		.uleb128 0x11
 6659 042b 01       		.uleb128 0x1
 6660 042c 12       		.uleb128 0x12
 6661 042d 06       		.uleb128 0x6
 6662 042e 58       		.uleb128 0x58
 6663 042f 0B       		.uleb128 0xb
 6664 0430 59       		.uleb128 0x59
 6665 0431 0B       		.uleb128 0xb
 6666 0432 00       		.byte	0
 6667 0433 00       		.byte	0
 6668 0434 52       		.uleb128 0x52
 6669 0435 2E       		.uleb128 0x2e
 6670 0436 01       		.byte	0x1
 6671 0437 03       		.uleb128 0x3
 6672 0438 0E       		.uleb128 0xe
 6673 0439 34       		.uleb128 0x34
 6674 043a 19       		.uleb128 0x19
 6675 043b 20       		.uleb128 0x20
 6676 043c 0B       		.uleb128 0xb
 6677 043d 01       		.uleb128 0x1
 6678 043e 13       		.uleb128 0x13
ARM GAS  /tmp/ccbYIR7z.s 			page 162


 6679 043f 00       		.byte	0
 6680 0440 00       		.byte	0
 6681 0441 53       		.uleb128 0x53
 6682 0442 05       		.uleb128 0x5
 6683 0443 00       		.byte	0
 6684 0444 03       		.uleb128 0x3
 6685 0445 0E       		.uleb128 0xe
 6686 0446 3A       		.uleb128 0x3a
 6687 0447 0B       		.uleb128 0xb
 6688 0448 3B       		.uleb128 0x3b
 6689 0449 05       		.uleb128 0x5
 6690 044a 49       		.uleb128 0x49
 6691 044b 13       		.uleb128 0x13
 6692 044c 00       		.byte	0
 6693 044d 00       		.byte	0
 6694 044e 54       		.uleb128 0x54
 6695 044f 2E       		.uleb128 0x2e
 6696 0450 01       		.byte	0x1
 6697 0451 3F       		.uleb128 0x3f
 6698 0452 19       		.uleb128 0x19
 6699 0453 03       		.uleb128 0x3
 6700 0454 0E       		.uleb128 0xe
 6701 0455 3A       		.uleb128 0x3a
 6702 0456 0B       		.uleb128 0xb
 6703 0457 3B       		.uleb128 0x3b
 6704 0458 05       		.uleb128 0x5
 6705 0459 11       		.uleb128 0x11
 6706 045a 01       		.uleb128 0x1
 6707 045b 12       		.uleb128 0x12
 6708 045c 06       		.uleb128 0x6
 6709 045d 40       		.uleb128 0x40
 6710 045e 18       		.uleb128 0x18
 6711 045f 9742     		.uleb128 0x2117
 6712 0461 19       		.uleb128 0x19
 6713 0462 01       		.uleb128 0x1
 6714 0463 13       		.uleb128 0x13
 6715 0464 00       		.byte	0
 6716 0465 00       		.byte	0
 6717 0466 55       		.uleb128 0x55
 6718 0467 898201   		.uleb128 0x4109
 6719 046a 01       		.byte	0x1
 6720 046b 11       		.uleb128 0x11
 6721 046c 01       		.uleb128 0x1
 6722 046d 9542     		.uleb128 0x2115
 6723 046f 19       		.uleb128 0x19
 6724 0470 31       		.uleb128 0x31
 6725 0471 13       		.uleb128 0x13
 6726 0472 00       		.byte	0
 6727 0473 00       		.byte	0
 6728 0474 56       		.uleb128 0x56
 6729 0475 8A8201   		.uleb128 0x410a
 6730 0478 00       		.byte	0
 6731 0479 02       		.uleb128 0x2
 6732 047a 18       		.uleb128 0x18
 6733 047b 9142     		.uleb128 0x2111
 6734 047d 18       		.uleb128 0x18
 6735 047e 00       		.byte	0
ARM GAS  /tmp/ccbYIR7z.s 			page 163


 6736 047f 00       		.byte	0
 6737 0480 57       		.uleb128 0x57
 6738 0481 2E       		.uleb128 0x2e
 6739 0482 01       		.byte	0x1
 6740 0483 3F       		.uleb128 0x3f
 6741 0484 19       		.uleb128 0x19
 6742 0485 03       		.uleb128 0x3
 6743 0486 0E       		.uleb128 0xe
 6744 0487 3A       		.uleb128 0x3a
 6745 0488 0B       		.uleb128 0xb
 6746 0489 3B       		.uleb128 0x3b
 6747 048a 0B       		.uleb128 0xb
 6748 048b 11       		.uleb128 0x11
 6749 048c 01       		.uleb128 0x1
 6750 048d 12       		.uleb128 0x12
 6751 048e 06       		.uleb128 0x6
 6752 048f 40       		.uleb128 0x40
 6753 0490 18       		.uleb128 0x18
 6754 0491 9742     		.uleb128 0x2117
 6755 0493 19       		.uleb128 0x19
 6756 0494 01       		.uleb128 0x1
 6757 0495 13       		.uleb128 0x13
 6758 0496 00       		.byte	0
 6759 0497 00       		.byte	0
 6760 0498 58       		.uleb128 0x58
 6761 0499 2E       		.uleb128 0x2e
 6762 049a 01       		.byte	0x1
 6763 049b 3F       		.uleb128 0x3f
 6764 049c 19       		.uleb128 0x19
 6765 049d 03       		.uleb128 0x3
 6766 049e 0E       		.uleb128 0xe
 6767 049f 3A       		.uleb128 0x3a
 6768 04a0 0B       		.uleb128 0xb
 6769 04a1 3B       		.uleb128 0x3b
 6770 04a2 0B       		.uleb128 0xb
 6771 04a3 6E       		.uleb128 0x6e
 6772 04a4 0E       		.uleb128 0xe
 6773 04a5 11       		.uleb128 0x11
 6774 04a6 01       		.uleb128 0x1
 6775 04a7 12       		.uleb128 0x12
 6776 04a8 06       		.uleb128 0x6
 6777 04a9 40       		.uleb128 0x40
 6778 04aa 18       		.uleb128 0x18
 6779 04ab 9642     		.uleb128 0x2116
 6780 04ad 19       		.uleb128 0x19
 6781 04ae 01       		.uleb128 0x1
 6782 04af 13       		.uleb128 0x13
 6783 04b0 00       		.byte	0
 6784 04b1 00       		.byte	0
 6785 04b2 59       		.uleb128 0x59
 6786 04b3 05       		.uleb128 0x5
 6787 04b4 00       		.byte	0
 6788 04b5 03       		.uleb128 0x3
 6789 04b6 08       		.uleb128 0x8
 6790 04b7 3A       		.uleb128 0x3a
 6791 04b8 0B       		.uleb128 0xb
 6792 04b9 3B       		.uleb128 0x3b
ARM GAS  /tmp/ccbYIR7z.s 			page 164


 6793 04ba 0B       		.uleb128 0xb
 6794 04bb 49       		.uleb128 0x49
 6795 04bc 13       		.uleb128 0x13
 6796 04bd 02       		.uleb128 0x2
 6797 04be 17       		.uleb128 0x17
 6798 04bf 00       		.byte	0
 6799 04c0 00       		.byte	0
 6800 04c1 5A       		.uleb128 0x5a
 6801 04c2 05       		.uleb128 0x5
 6802 04c3 00       		.byte	0
 6803 04c4 03       		.uleb128 0x3
 6804 04c5 0E       		.uleb128 0xe
 6805 04c6 3A       		.uleb128 0x3a
 6806 04c7 0B       		.uleb128 0xb
 6807 04c8 3B       		.uleb128 0x3b
 6808 04c9 0B       		.uleb128 0xb
 6809 04ca 49       		.uleb128 0x49
 6810 04cb 13       		.uleb128 0x13
 6811 04cc 02       		.uleb128 0x2
 6812 04cd 17       		.uleb128 0x17
 6813 04ce 00       		.byte	0
 6814 04cf 00       		.byte	0
 6815 04d0 5B       		.uleb128 0x5b
 6816 04d1 34       		.uleb128 0x34
 6817 04d2 00       		.byte	0
 6818 04d3 03       		.uleb128 0x3
 6819 04d4 08       		.uleb128 0x8
 6820 04d5 3A       		.uleb128 0x3a
 6821 04d6 0B       		.uleb128 0xb
 6822 04d7 3B       		.uleb128 0x3b
 6823 04d8 0B       		.uleb128 0xb
 6824 04d9 49       		.uleb128 0x49
 6825 04da 13       		.uleb128 0x13
 6826 04db 02       		.uleb128 0x2
 6827 04dc 17       		.uleb128 0x17
 6828 04dd 00       		.byte	0
 6829 04de 00       		.byte	0
 6830 04df 5C       		.uleb128 0x5c
 6831 04e0 0B       		.uleb128 0xb
 6832 04e1 01       		.byte	0x1
 6833 04e2 11       		.uleb128 0x11
 6834 04e3 01       		.uleb128 0x1
 6835 04e4 12       		.uleb128 0x12
 6836 04e5 06       		.uleb128 0x6
 6837 04e6 00       		.byte	0
 6838 04e7 00       		.byte	0
 6839 04e8 5D       		.uleb128 0x5d
 6840 04e9 898201   		.uleb128 0x4109
 6841 04ec 01       		.byte	0x1
 6842 04ed 11       		.uleb128 0x11
 6843 04ee 01       		.uleb128 0x1
 6844 04ef 31       		.uleb128 0x31
 6845 04f0 13       		.uleb128 0x13
 6846 04f1 00       		.byte	0
 6847 04f2 00       		.byte	0
 6848 04f3 5E       		.uleb128 0x5e
 6849 04f4 2E       		.uleb128 0x2e
ARM GAS  /tmp/ccbYIR7z.s 			page 165


 6850 04f5 01       		.byte	0x1
 6851 04f6 3F       		.uleb128 0x3f
 6852 04f7 19       		.uleb128 0x19
 6853 04f8 03       		.uleb128 0x3
 6854 04f9 0E       		.uleb128 0xe
 6855 04fa 3A       		.uleb128 0x3a
 6856 04fb 0B       		.uleb128 0xb
 6857 04fc 3B       		.uleb128 0x3b
 6858 04fd 0B       		.uleb128 0xb
 6859 04fe 6E       		.uleb128 0x6e
 6860 04ff 0E       		.uleb128 0xe
 6861 0500 49       		.uleb128 0x49
 6862 0501 13       		.uleb128 0x13
 6863 0502 11       		.uleb128 0x11
 6864 0503 01       		.uleb128 0x1
 6865 0504 12       		.uleb128 0x12
 6866 0505 06       		.uleb128 0x6
 6867 0506 40       		.uleb128 0x40
 6868 0507 18       		.uleb128 0x18
 6869 0508 9742     		.uleb128 0x2117
 6870 050a 19       		.uleb128 0x19
 6871 050b 01       		.uleb128 0x1
 6872 050c 13       		.uleb128 0x13
 6873 050d 00       		.byte	0
 6874 050e 00       		.byte	0
 6875 050f 5F       		.uleb128 0x5f
 6876 0510 34       		.uleb128 0x34
 6877 0511 00       		.byte	0
 6878 0512 31       		.uleb128 0x31
 6879 0513 13       		.uleb128 0x13
 6880 0514 00       		.byte	0
 6881 0515 00       		.byte	0
 6882 0516 60       		.uleb128 0x60
 6883 0517 2E       		.uleb128 0x2e
 6884 0518 01       		.byte	0x1
 6885 0519 3F       		.uleb128 0x3f
 6886 051a 19       		.uleb128 0x19
 6887 051b 03       		.uleb128 0x3
 6888 051c 0E       		.uleb128 0xe
 6889 051d 3A       		.uleb128 0x3a
 6890 051e 0B       		.uleb128 0xb
 6891 051f 3B       		.uleb128 0x3b
 6892 0520 0B       		.uleb128 0xb
 6893 0521 6E       		.uleb128 0x6e
 6894 0522 0E       		.uleb128 0xe
 6895 0523 11       		.uleb128 0x11
 6896 0524 01       		.uleb128 0x1
 6897 0525 12       		.uleb128 0x12
 6898 0526 06       		.uleb128 0x6
 6899 0527 40       		.uleb128 0x40
 6900 0528 18       		.uleb128 0x18
 6901 0529 9742     		.uleb128 0x2117
 6902 052b 19       		.uleb128 0x19
 6903 052c 01       		.uleb128 0x1
 6904 052d 13       		.uleb128 0x13
 6905 052e 00       		.byte	0
 6906 052f 00       		.byte	0
ARM GAS  /tmp/ccbYIR7z.s 			page 166


 6907 0530 61       		.uleb128 0x61
 6908 0531 34       		.uleb128 0x34
 6909 0532 00       		.byte	0
 6910 0533 03       		.uleb128 0x3
 6911 0534 0E       		.uleb128 0xe
 6912 0535 3A       		.uleb128 0x3a
 6913 0536 0B       		.uleb128 0xb
 6914 0537 3B       		.uleb128 0x3b
 6915 0538 0B       		.uleb128 0xb
 6916 0539 49       		.uleb128 0x49
 6917 053a 13       		.uleb128 0x13
 6918 053b 02       		.uleb128 0x2
 6919 053c 17       		.uleb128 0x17
 6920 053d 00       		.byte	0
 6921 053e 00       		.byte	0
 6922 053f 62       		.uleb128 0x62
 6923 0540 1D       		.uleb128 0x1d
 6924 0541 01       		.byte	0x1
 6925 0542 31       		.uleb128 0x31
 6926 0543 13       		.uleb128 0x13
 6927 0544 52       		.uleb128 0x52
 6928 0545 01       		.uleb128 0x1
 6929 0546 55       		.uleb128 0x55
 6930 0547 17       		.uleb128 0x17
 6931 0548 58       		.uleb128 0x58
 6932 0549 0B       		.uleb128 0xb
 6933 054a 59       		.uleb128 0x59
 6934 054b 0B       		.uleb128 0xb
 6935 054c 01       		.uleb128 0x1
 6936 054d 13       		.uleb128 0x13
 6937 054e 00       		.byte	0
 6938 054f 00       		.byte	0
 6939 0550 63       		.uleb128 0x63
 6940 0551 898201   		.uleb128 0x4109
 6941 0554 01       		.byte	0x1
 6942 0555 11       		.uleb128 0x11
 6943 0556 01       		.uleb128 0x1
 6944 0557 31       		.uleb128 0x31
 6945 0558 13       		.uleb128 0x13
 6946 0559 01       		.uleb128 0x1
 6947 055a 13       		.uleb128 0x13
 6948 055b 00       		.byte	0
 6949 055c 00       		.byte	0
 6950 055d 64       		.uleb128 0x64
 6951 055e 2E       		.uleb128 0x2e
 6952 055f 01       		.byte	0x1
 6953 0560 03       		.uleb128 0x3
 6954 0561 0E       		.uleb128 0xe
 6955 0562 3A       		.uleb128 0x3a
 6956 0563 0B       		.uleb128 0xb
 6957 0564 3B       		.uleb128 0x3b
 6958 0565 0B       		.uleb128 0xb
 6959 0566 49       		.uleb128 0x49
 6960 0567 13       		.uleb128 0x13
 6961 0568 11       		.uleb128 0x11
 6962 0569 01       		.uleb128 0x1
 6963 056a 12       		.uleb128 0x12
ARM GAS  /tmp/ccbYIR7z.s 			page 167


 6964 056b 06       		.uleb128 0x6
 6965 056c 40       		.uleb128 0x40
 6966 056d 18       		.uleb128 0x18
 6967 056e 9742     		.uleb128 0x2117
 6968 0570 19       		.uleb128 0x19
 6969 0571 01       		.uleb128 0x1
 6970 0572 13       		.uleb128 0x13
 6971 0573 00       		.byte	0
 6972 0574 00       		.byte	0
 6973 0575 65       		.uleb128 0x65
 6974 0576 2E       		.uleb128 0x2e
 6975 0577 00       		.byte	0
 6976 0578 03       		.uleb128 0x3
 6977 0579 0E       		.uleb128 0xe
 6978 057a 3A       		.uleb128 0x3a
 6979 057b 0B       		.uleb128 0xb
 6980 057c 3B       		.uleb128 0x3b
 6981 057d 0B       		.uleb128 0xb
 6982 057e 20       		.uleb128 0x20
 6983 057f 0B       		.uleb128 0xb
 6984 0580 00       		.byte	0
 6985 0581 00       		.byte	0
 6986 0582 66       		.uleb128 0x66
 6987 0583 2E       		.uleb128 0x2e
 6988 0584 01       		.byte	0x1
 6989 0585 47       		.uleb128 0x47
 6990 0586 13       		.uleb128 0x13
 6991 0587 20       		.uleb128 0x20
 6992 0588 0B       		.uleb128 0xb
 6993 0589 64       		.uleb128 0x64
 6994 058a 13       		.uleb128 0x13
 6995 058b 01       		.uleb128 0x1
 6996 058c 13       		.uleb128 0x13
 6997 058d 00       		.byte	0
 6998 058e 00       		.byte	0
 6999 058f 67       		.uleb128 0x67
 7000 0590 05       		.uleb128 0x5
 7001 0591 00       		.byte	0
 7002 0592 03       		.uleb128 0x3
 7003 0593 0E       		.uleb128 0xe
 7004 0594 49       		.uleb128 0x49
 7005 0595 13       		.uleb128 0x13
 7006 0596 34       		.uleb128 0x34
 7007 0597 19       		.uleb128 0x19
 7008 0598 00       		.byte	0
 7009 0599 00       		.byte	0
 7010 059a 68       		.uleb128 0x68
 7011 059b 2E       		.uleb128 0x2e
 7012 059c 01       		.byte	0x1
 7013 059d 31       		.uleb128 0x31
 7014 059e 13       		.uleb128 0x13
 7015 059f 6E       		.uleb128 0x6e
 7016 05a0 0E       		.uleb128 0xe
 7017 05a1 64       		.uleb128 0x64
 7018 05a2 13       		.uleb128 0x13
 7019 05a3 01       		.uleb128 0x1
 7020 05a4 13       		.uleb128 0x13
ARM GAS  /tmp/ccbYIR7z.s 			page 168


 7021 05a5 00       		.byte	0
 7022 05a6 00       		.byte	0
 7023 05a7 69       		.uleb128 0x69
 7024 05a8 05       		.uleb128 0x5
 7025 05a9 00       		.byte	0
 7026 05aa 31       		.uleb128 0x31
 7027 05ab 13       		.uleb128 0x13
 7028 05ac 00       		.byte	0
 7029 05ad 00       		.byte	0
 7030 05ae 6A       		.uleb128 0x6a
 7031 05af 2E       		.uleb128 0x2e
 7032 05b0 01       		.byte	0x1
 7033 05b1 03       		.uleb128 0x3
 7034 05b2 0E       		.uleb128 0xe
 7035 05b3 3A       		.uleb128 0x3a
 7036 05b4 0B       		.uleb128 0xb
 7037 05b5 3B       		.uleb128 0x3b
 7038 05b6 05       		.uleb128 0x5
 7039 05b7 20       		.uleb128 0x20
 7040 05b8 0B       		.uleb128 0xb
 7041 05b9 01       		.uleb128 0x1
 7042 05ba 13       		.uleb128 0x13
 7043 05bb 00       		.byte	0
 7044 05bc 00       		.byte	0
 7045 05bd 6B       		.uleb128 0x6b
 7046 05be 2E       		.uleb128 0x2e
 7047 05bf 01       		.byte	0x1
 7048 05c0 03       		.uleb128 0x3
 7049 05c1 0E       		.uleb128 0xe
 7050 05c2 3A       		.uleb128 0x3a
 7051 05c3 0B       		.uleb128 0xb
 7052 05c4 3B       		.uleb128 0x3b
 7053 05c5 05       		.uleb128 0x5
 7054 05c6 49       		.uleb128 0x49
 7055 05c7 13       		.uleb128 0x13
 7056 05c8 20       		.uleb128 0x20
 7057 05c9 0B       		.uleb128 0xb
 7058 05ca 01       		.uleb128 0x1
 7059 05cb 13       		.uleb128 0x13
 7060 05cc 00       		.byte	0
 7061 05cd 00       		.byte	0
 7062 05ce 6C       		.uleb128 0x6c
 7063 05cf 34       		.uleb128 0x34
 7064 05d0 00       		.byte	0
 7065 05d1 03       		.uleb128 0x3
 7066 05d2 0E       		.uleb128 0xe
 7067 05d3 3A       		.uleb128 0x3a
 7068 05d4 0B       		.uleb128 0xb
 7069 05d5 3B       		.uleb128 0x3b
 7070 05d6 05       		.uleb128 0x5
 7071 05d7 49       		.uleb128 0x49
 7072 05d8 13       		.uleb128 0x13
 7073 05d9 00       		.byte	0
 7074 05da 00       		.byte	0
 7075 05db 6D       		.uleb128 0x6d
 7076 05dc 2E       		.uleb128 0x2e
 7077 05dd 00       		.byte	0
ARM GAS  /tmp/ccbYIR7z.s 			page 169


 7078 05de 3F       		.uleb128 0x3f
 7079 05df 19       		.uleb128 0x19
 7080 05e0 3C       		.uleb128 0x3c
 7081 05e1 19       		.uleb128 0x19
 7082 05e2 6E       		.uleb128 0x6e
 7083 05e3 0E       		.uleb128 0xe
 7084 05e4 03       		.uleb128 0x3
 7085 05e5 0E       		.uleb128 0xe
 7086 05e6 3A       		.uleb128 0x3a
 7087 05e7 0B       		.uleb128 0xb
 7088 05e8 3B       		.uleb128 0x3b
 7089 05e9 0B       		.uleb128 0xb
 7090 05ea 00       		.byte	0
 7091 05eb 00       		.byte	0
 7092 05ec 00       		.byte	0
 7093              		.section	.debug_loc,"",%progbits
 7094              	.Ldebug_loc0:
 7095              	.LLST30:
 7096 0000 08000000 		.4byte	.LVL76
 7097 0004 0C000000 		.4byte	.LVL78
 7098 0008 0100     		.2byte	0x1
 7099 000a 53       		.byte	0x53
 7100 000b 0C000000 		.4byte	.LVL78
 7101 000f 10000000 		.4byte	.LVL79
 7102 0013 0300     		.2byte	0x3
 7103 0015 73       		.byte	0x73
 7104 0016 78       		.sleb128 -8
 7105 0017 9F       		.byte	0x9f
 7106 0018 00000000 		.4byte	0
 7107 001c 00000000 		.4byte	0
 7108              	.LLST31:
 7109 0020 0A000000 		.4byte	.LVL77
 7110 0024 0C000000 		.4byte	.LVL78
 7111 0028 0300     		.2byte	0x3
 7112 002a 73       		.byte	0x73
 7113 002b 04       		.sleb128 4
 7114 002c 9F       		.byte	0x9f
 7115 002d 0C000000 		.4byte	.LVL78
 7116 0031 10000000 		.4byte	.LVL79
 7117 0035 0300     		.2byte	0x3
 7118 0037 73       		.byte	0x73
 7119 0038 7C       		.sleb128 -4
 7120 0039 9F       		.byte	0x9f
 7121 003a 00000000 		.4byte	0
 7122 003e 00000000 		.4byte	0
 7123              	.LLST32:
 7124 0042 1C000000 		.4byte	.LVL80
 7125 0046 20000000 		.4byte	.LVL82
 7126 004a 0100     		.2byte	0x1
 7127 004c 53       		.byte	0x53
 7128 004d 20000000 		.4byte	.LVL82
 7129 0051 24000000 		.4byte	.LVL83
 7130 0055 0300     		.2byte	0x3
 7131 0057 73       		.byte	0x73
 7132 0058 78       		.sleb128 -8
 7133 0059 9F       		.byte	0x9f
 7134 005a 00000000 		.4byte	0
ARM GAS  /tmp/ccbYIR7z.s 			page 170


 7135 005e 00000000 		.4byte	0
 7136              	.LLST33:
 7137 0062 1E000000 		.4byte	.LVL81
 7138 0066 20000000 		.4byte	.LVL82
 7139 006a 0300     		.2byte	0x3
 7140 006c 73       		.byte	0x73
 7141 006d 04       		.sleb128 4
 7142 006e 9F       		.byte	0x9f
 7143 006f 20000000 		.4byte	.LVL82
 7144 0073 24000000 		.4byte	.LVL83
 7145 0077 0300     		.2byte	0x3
 7146 0079 73       		.byte	0x73
 7147 007a 7C       		.sleb128 -4
 7148 007b 9F       		.byte	0x9f
 7149 007c 00000000 		.4byte	0
 7150 0080 00000000 		.4byte	0
 7151              	.LLST34:
 7152 0084 30000000 		.4byte	.LVL84
 7153 0088 34000000 		.4byte	.LVL86
 7154 008c 0100     		.2byte	0x1
 7155 008e 53       		.byte	0x53
 7156 008f 34000000 		.4byte	.LVL86
 7157 0093 38000000 		.4byte	.LVL87
 7158 0097 0300     		.2byte	0x3
 7159 0099 73       		.byte	0x73
 7160 009a 78       		.sleb128 -8
 7161 009b 9F       		.byte	0x9f
 7162 009c 00000000 		.4byte	0
 7163 00a0 00000000 		.4byte	0
 7164              	.LLST35:
 7165 00a4 32000000 		.4byte	.LVL85
 7166 00a8 34000000 		.4byte	.LVL86
 7167 00ac 0300     		.2byte	0x3
 7168 00ae 73       		.byte	0x73
 7169 00af 04       		.sleb128 4
 7170 00b0 9F       		.byte	0x9f
 7171 00b1 34000000 		.4byte	.LVL86
 7172 00b5 38000000 		.4byte	.LVL87
 7173 00b9 0300     		.2byte	0x3
 7174 00bb 73       		.byte	0x73
 7175 00bc 7C       		.sleb128 -4
 7176 00bd 9F       		.byte	0x9f
 7177 00be 00000000 		.4byte	0
 7178 00c2 00000000 		.4byte	0
 7179              	.LLST36:
 7180 00c6 44000000 		.4byte	.LVL88
 7181 00ca 48000000 		.4byte	.LVL90
 7182 00ce 0100     		.2byte	0x1
 7183 00d0 53       		.byte	0x53
 7184 00d1 48000000 		.4byte	.LVL90
 7185 00d5 4C000000 		.4byte	.LVL91
 7186 00d9 0300     		.2byte	0x3
 7187 00db 73       		.byte	0x73
 7188 00dc 78       		.sleb128 -8
 7189 00dd 9F       		.byte	0x9f
 7190 00de 00000000 		.4byte	0
 7191 00e2 00000000 		.4byte	0
ARM GAS  /tmp/ccbYIR7z.s 			page 171


 7192              	.LLST37:
 7193 00e6 46000000 		.4byte	.LVL89
 7194 00ea 48000000 		.4byte	.LVL90
 7195 00ee 0300     		.2byte	0x3
 7196 00f0 73       		.byte	0x73
 7197 00f1 04       		.sleb128 4
 7198 00f2 9F       		.byte	0x9f
 7199 00f3 48000000 		.4byte	.LVL90
 7200 00f7 4C000000 		.4byte	.LVL91
 7201 00fb 0300     		.2byte	0x3
 7202 00fd 73       		.byte	0x73
 7203 00fe 7C       		.sleb128 -4
 7204 00ff 9F       		.byte	0x9f
 7205 0100 00000000 		.4byte	0
 7206 0104 00000000 		.4byte	0
 7207              	.LLST38:
 7208 0108 58000000 		.4byte	.LVL92
 7209 010c 5C000000 		.4byte	.LVL94
 7210 0110 0100     		.2byte	0x1
 7211 0112 53       		.byte	0x53
 7212 0113 5C000000 		.4byte	.LVL94
 7213 0117 60000000 		.4byte	.LVL95
 7214 011b 0300     		.2byte	0x3
 7215 011d 73       		.byte	0x73
 7216 011e 78       		.sleb128 -8
 7217 011f 9F       		.byte	0x9f
 7218 0120 00000000 		.4byte	0
 7219 0124 00000000 		.4byte	0
 7220              	.LLST39:
 7221 0128 5A000000 		.4byte	.LVL93
 7222 012c 5C000000 		.4byte	.LVL94
 7223 0130 0300     		.2byte	0x3
 7224 0132 73       		.byte	0x73
 7225 0133 04       		.sleb128 4
 7226 0134 9F       		.byte	0x9f
 7227 0135 5C000000 		.4byte	.LVL94
 7228 0139 60000000 		.4byte	.LVL95
 7229 013d 0300     		.2byte	0x3
 7230 013f 73       		.byte	0x73
 7231 0140 7C       		.sleb128 -4
 7232 0141 9F       		.byte	0x9f
 7233 0142 00000000 		.4byte	0
 7234 0146 00000000 		.4byte	0
 7235              	.LLST26:
 7236 014a 00000000 		.4byte	.LVL59
 7237 014e 0E000000 		.4byte	.LVL62
 7238 0152 0100     		.2byte	0x1
 7239 0154 50       		.byte	0x50
 7240 0155 0E000000 		.4byte	.LVL62
 7241 0159 2E000000 		.4byte	.LFE533
 7242 015d 0400     		.2byte	0x4
 7243 015f F3       		.byte	0xf3
 7244 0160 01       		.uleb128 0x1
 7245 0161 50       		.byte	0x50
 7246 0162 9F       		.byte	0x9f
 7247 0163 00000000 		.4byte	0
 7248 0167 00000000 		.4byte	0
ARM GAS  /tmp/ccbYIR7z.s 			page 172


 7249              	.LLST27:
 7250 016b 00000000 		.4byte	.LVL59
 7251 016f 0E000000 		.4byte	.LVL62
 7252 0173 0100     		.2byte	0x1
 7253 0175 51       		.byte	0x51
 7254 0176 0E000000 		.4byte	.LVL62
 7255 017a 2C000000 		.4byte	.LVL69
 7256 017e 0100     		.2byte	0x1
 7257 0180 56       		.byte	0x56
 7258 0181 2C000000 		.4byte	.LVL69
 7259 0185 2E000000 		.4byte	.LFE533
 7260 0189 0400     		.2byte	0x4
 7261 018b F3       		.byte	0xf3
 7262 018c 01       		.uleb128 0x1
 7263 018d 51       		.byte	0x51
 7264 018e 9F       		.byte	0x9f
 7265 018f 00000000 		.4byte	0
 7266 0193 00000000 		.4byte	0
 7267              	.LLST28:
 7268 0197 06000000 		.4byte	.LVL60
 7269 019b 08000000 		.4byte	.LVL61
 7270 019f 0600     		.2byte	0x6
 7271 01a1 75       		.byte	0x75
 7272 01a2 00       		.sleb128 0
 7273 01a3 73       		.byte	0x73
 7274 01a4 00       		.sleb128 0
 7275 01a5 1A       		.byte	0x1a
 7276 01a6 9F       		.byte	0x9f
 7277 01a7 08000000 		.4byte	.LVL61
 7278 01ab 28000000 		.4byte	.LVL67
 7279 01af 0100     		.2byte	0x1
 7280 01b1 55       		.byte	0x55
 7281 01b2 28000000 		.4byte	.LVL67
 7282 01b6 2A000000 		.4byte	.LVL68
 7283 01ba 0700     		.2byte	0x7
 7284 01bc 74       		.byte	0x74
 7285 01bd 00       		.sleb128 0
 7286 01be 20       		.byte	0x20
 7287 01bf 75       		.byte	0x75
 7288 01c0 00       		.sleb128 0
 7289 01c1 1A       		.byte	0x1a
 7290 01c2 9F       		.byte	0x9f
 7291 01c3 2A000000 		.4byte	.LVL68
 7292 01c7 2E000000 		.4byte	.LFE533
 7293 01cb 0100     		.2byte	0x1
 7294 01cd 55       		.byte	0x55
 7295 01ce 00000000 		.4byte	0
 7296 01d2 00000000 		.4byte	0
 7297              	.LLST29:
 7298 01d6 1A000000 		.4byte	.LVL64
 7299 01da 22000000 		.4byte	.LVL65
 7300 01de 0100     		.2byte	0x1
 7301 01e0 50       		.byte	0x50
 7302 01e1 22000000 		.4byte	.LVL65
 7303 01e5 28000000 		.4byte	.LVL67
 7304 01e9 0100     		.2byte	0x1
 7305 01eb 54       		.byte	0x54
ARM GAS  /tmp/ccbYIR7z.s 			page 173


 7306 01ec 00000000 		.4byte	0
 7307 01f0 00000000 		.4byte	0
 7308              	.LLST23:
 7309 01f4 00000000 		.4byte	.LVL54
 7310 01f8 08000000 		.4byte	.LVL55
 7311 01fc 0100     		.2byte	0x1
 7312 01fe 50       		.byte	0x50
 7313 01ff 08000000 		.4byte	.LVL55
 7314 0203 1C000000 		.4byte	.LFE531
 7315 0207 0400     		.2byte	0x4
 7316 0209 F3       		.byte	0xf3
 7317 020a 01       		.uleb128 0x1
 7318 020b 50       		.byte	0x50
 7319 020c 9F       		.byte	0x9f
 7320 020d 00000000 		.4byte	0
 7321 0211 00000000 		.4byte	0
 7322              	.LLST24:
 7323 0215 10000000 		.4byte	.LVL56
 7324 0219 14000000 		.4byte	.LVL58
 7325 021d 0100     		.2byte	0x1
 7326 021f 53       		.byte	0x53
 7327 0220 00000000 		.4byte	0
 7328 0224 00000000 		.4byte	0
 7329              	.LLST25:
 7330 0228 12000000 		.4byte	.LVL57
 7331 022c 14000000 		.4byte	.LVL58
 7332 0230 0100     		.2byte	0x1
 7333 0232 52       		.byte	0x52
 7334 0233 00000000 		.4byte	0
 7335 0237 00000000 		.4byte	0
 7336              	.LLST1:
 7337 023b 00000000 		.4byte	.LVL7
 7338 023f 1A000000 		.4byte	.LVL9
 7339 0243 0100     		.2byte	0x1
 7340 0245 50       		.byte	0x50
 7341 0246 1A000000 		.4byte	.LVL9
 7342 024a 71000000 		.4byte	.LVL14
 7343 024e 0100     		.2byte	0x1
 7344 0250 55       		.byte	0x55
 7345 0251 71000000 		.4byte	.LVL14
 7346 0255 74000000 		.4byte	.LVL15
 7347 0259 0100     		.2byte	0x1
 7348 025b 50       		.byte	0x50
 7349 025c 74000000 		.4byte	.LVL15
 7350 0260 76000000 		.4byte	.LVL16
 7351 0264 0400     		.2byte	0x4
 7352 0266 F3       		.byte	0xf3
 7353 0267 01       		.uleb128 0x1
 7354 0268 50       		.byte	0x50
 7355 0269 9F       		.byte	0x9f
 7356 026a 76000000 		.4byte	.LVL16
 7357 026e 78000000 		.4byte	.LVL17
 7358 0272 0100     		.2byte	0x1
 7359 0274 50       		.byte	0x50
 7360 0275 78000000 		.4byte	.LVL17
 7361 0279 A8010000 		.4byte	.LFE530
 7362 027d 0100     		.2byte	0x1
ARM GAS  /tmp/ccbYIR7z.s 			page 174


 7363 027f 55       		.byte	0x55
 7364 0280 00000000 		.4byte	0
 7365 0284 00000000 		.4byte	0
 7366              	.LLST2:
 7367 0288 00000000 		.4byte	.LVL7
 7368 028c 1A000000 		.4byte	.LVL9
 7369 0290 0100     		.2byte	0x1
 7370 0292 51       		.byte	0x51
 7371 0293 1A000000 		.4byte	.LVL9
 7372 0297 71000000 		.4byte	.LVL14
 7373 029b 0100     		.2byte	0x1
 7374 029d 57       		.byte	0x57
 7375 029e 71000000 		.4byte	.LVL14
 7376 02a2 7D000000 		.4byte	.LVL18-1
 7377 02a6 0100     		.2byte	0x1
 7378 02a8 51       		.byte	0x51
 7379 02a9 7D000000 		.4byte	.LVL18-1
 7380 02ad A8010000 		.4byte	.LFE530
 7381 02b1 0100     		.2byte	0x1
 7382 02b3 57       		.byte	0x57
 7383 02b4 00000000 		.4byte	0
 7384 02b8 00000000 		.4byte	0
 7385              	.LLST3:
 7386 02bc 00000000 		.4byte	.LVL7
 7387 02c0 1A000000 		.4byte	.LVL9
 7388 02c4 0100     		.2byte	0x1
 7389 02c6 52       		.byte	0x52
 7390 02c7 1A000000 		.4byte	.LVL9
 7391 02cb 71000000 		.4byte	.LVL14
 7392 02cf 0400     		.2byte	0x4
 7393 02d1 F3       		.byte	0xf3
 7394 02d2 01       		.uleb128 0x1
 7395 02d3 52       		.byte	0x52
 7396 02d4 9F       		.byte	0x9f
 7397 02d5 71000000 		.4byte	.LVL14
 7398 02d9 7D000000 		.4byte	.LVL18-1
 7399 02dd 0100     		.2byte	0x1
 7400 02df 52       		.byte	0x52
 7401 02e0 7D000000 		.4byte	.LVL18-1
 7402 02e4 A8010000 		.4byte	.LFE530
 7403 02e8 0400     		.2byte	0x4
 7404 02ea F3       		.byte	0xf3
 7405 02eb 01       		.uleb128 0x1
 7406 02ec 52       		.byte	0x52
 7407 02ed 9F       		.byte	0x9f
 7408 02ee 00000000 		.4byte	0
 7409 02f2 00000000 		.4byte	0
 7410              	.LLST4:
 7411 02f6 00000000 		.4byte	.LVL7
 7412 02fa 16000000 		.4byte	.LVL8
 7413 02fe 0100     		.2byte	0x1
 7414 0300 53       		.byte	0x53
 7415 0301 56000000 		.4byte	.LVL13
 7416 0305 71000000 		.4byte	.LVL14
 7417 0309 0100     		.2byte	0x1
 7418 030b 56       		.byte	0x56
 7419 030c 71000000 		.4byte	.LVL14
ARM GAS  /tmp/ccbYIR7z.s 			page 175


 7420 0310 76000000 		.4byte	.LVL16
 7421 0314 0100     		.2byte	0x1
 7422 0316 53       		.byte	0x53
 7423 0317 E4000000 		.4byte	.LVL38
 7424 031b 14010000 		.4byte	.LVL41
 7425 031f 0100     		.2byte	0x1
 7426 0321 56       		.byte	0x56
 7427 0322 1E010000 		.4byte	.LVL42
 7428 0326 3C010000 		.4byte	.LVL46
 7429 032a 0100     		.2byte	0x1
 7430 032c 56       		.byte	0x56
 7431 032d 46010000 		.4byte	.LVL47
 7432 0331 4A010000 		.4byte	.LVL48
 7433 0335 0100     		.2byte	0x1
 7434 0337 56       		.byte	0x56
 7435 0338 54010000 		.4byte	.LVL49
 7436 033c 58010000 		.4byte	.LVL50
 7437 0340 0100     		.2byte	0x1
 7438 0342 56       		.byte	0x56
 7439 0343 62010000 		.4byte	.LVL51
 7440 0347 66010000 		.4byte	.LVL52
 7441 034b 0100     		.2byte	0x1
 7442 034d 56       		.byte	0x56
 7443 034e 70010000 		.4byte	.LVL53
 7444 0352 A8010000 		.4byte	.LFE530
 7445 0356 0100     		.2byte	0x1
 7446 0358 56       		.byte	0x56
 7447 0359 00000000 		.4byte	0
 7448 035d 00000000 		.4byte	0
 7449              	.LLST5:
 7450 0361 26000000 		.4byte	.LVL10
 7451 0365 71000000 		.4byte	.LVL14
 7452 0369 0100     		.2byte	0x1
 7453 036b 54       		.byte	0x54
 7454 036c E4000000 		.4byte	.LVL38
 7455 0370 A8010000 		.4byte	.LFE530
 7456 0374 0100     		.2byte	0x1
 7457 0376 54       		.byte	0x54
 7458 0377 00000000 		.4byte	0
 7459 037b 00000000 		.4byte	0
 7460              	.LLST6:
 7461 037f 28000000 		.4byte	.LVL11
 7462 0383 71000000 		.4byte	.LVL14
 7463 0387 0100     		.2byte	0x1
 7464 0389 51       		.byte	0x51
 7465 038a E4000000 		.4byte	.LVL38
 7466 038e A8010000 		.4byte	.LFE530
 7467 0392 0100     		.2byte	0x1
 7468 0394 51       		.byte	0x51
 7469 0395 00000000 		.4byte	0
 7470 0399 00000000 		.4byte	0
 7471              	.LLST7:
 7472 039d 30000000 		.4byte	.LVL12
 7473 03a1 71000000 		.4byte	.LVL14
 7474 03a5 0100     		.2byte	0x1
 7475 03a7 50       		.byte	0x50
 7476 03a8 E4000000 		.4byte	.LVL38
ARM GAS  /tmp/ccbYIR7z.s 			page 176


 7477 03ac F0000000 		.4byte	.LVL39
 7478 03b0 0100     		.2byte	0x1
 7479 03b2 50       		.byte	0x50
 7480 03b3 F6000000 		.4byte	.LVL40
 7481 03b7 2A010000 		.4byte	.LVL43
 7482 03bb 0100     		.2byte	0x1
 7483 03bd 50       		.byte	0x50
 7484 03be 2E010000 		.4byte	.LVL44
 7485 03c2 34010000 		.4byte	.LVL45
 7486 03c6 0100     		.2byte	0x1
 7487 03c8 50       		.byte	0x50
 7488 03c9 3C010000 		.4byte	.LVL46
 7489 03cd A8010000 		.4byte	.LFE530
 7490 03d1 0100     		.2byte	0x1
 7491 03d3 50       		.byte	0x50
 7492 03d4 00000000 		.4byte	0
 7493 03d8 00000000 		.4byte	0
 7494              	.LLST8:
 7495 03dc 7E000000 		.4byte	.LVL18
 7496 03e0 88000000 		.4byte	.LVL19
 7497 03e4 0200     		.2byte	0x2
 7498 03e6 3A       		.byte	0x3a
 7499 03e7 9F       		.byte	0x9f
 7500 03e8 00000000 		.4byte	0
 7501 03ec 00000000 		.4byte	0
 7502              	.LLST9:
 7503 03f0 88000000 		.4byte	.LVL19
 7504 03f4 8C000000 		.4byte	.LVL20
 7505 03f8 0200     		.2byte	0x2
 7506 03fa 3A       		.byte	0x3a
 7507 03fb 9F       		.byte	0x9f
 7508 03fc 00000000 		.4byte	0
 7509 0400 00000000 		.4byte	0
 7510              	.LLST10:
 7511 0404 8C000000 		.4byte	.LVL20
 7512 0408 8E000000 		.4byte	.LVL21
 7513 040c 0200     		.2byte	0x2
 7514 040e 3A       		.byte	0x3a
 7515 040f 9F       		.byte	0x9f
 7516 0410 00000000 		.4byte	0
 7517 0414 00000000 		.4byte	0
 7518              	.LLST11:
 7519 0418 92000000 		.4byte	.LVL22
 7520 041c 9C000000 		.4byte	.LVL23
 7521 0420 0200     		.2byte	0x2
 7522 0422 3B       		.byte	0x3b
 7523 0423 9F       		.byte	0x9f
 7524 0424 00000000 		.4byte	0
 7525 0428 00000000 		.4byte	0
 7526              	.LLST12:
 7527 042c 9C000000 		.4byte	.LVL23
 7528 0430 A0000000 		.4byte	.LVL24
 7529 0434 0200     		.2byte	0x2
 7530 0436 3B       		.byte	0x3b
 7531 0437 9F       		.byte	0x9f
 7532 0438 00000000 		.4byte	0
 7533 043c 00000000 		.4byte	0
ARM GAS  /tmp/ccbYIR7z.s 			page 177


 7534              	.LLST13:
 7535 0440 A0000000 		.4byte	.LVL24
 7536 0444 A2000000 		.4byte	.LVL25
 7537 0448 0200     		.2byte	0x2
 7538 044a 3B       		.byte	0x3b
 7539 044b 9F       		.byte	0x9f
 7540 044c 00000000 		.4byte	0
 7541 0450 00000000 		.4byte	0
 7542              	.LLST14:
 7543 0454 A6000000 		.4byte	.LVL26
 7544 0458 B0000000 		.4byte	.LVL27
 7545 045c 0200     		.2byte	0x2
 7546 045e 3C       		.byte	0x3c
 7547 045f 9F       		.byte	0x9f
 7548 0460 00000000 		.4byte	0
 7549 0464 00000000 		.4byte	0
 7550              	.LLST15:
 7551 0468 B0000000 		.4byte	.LVL27
 7552 046c B4000000 		.4byte	.LVL28
 7553 0470 0200     		.2byte	0x2
 7554 0472 3C       		.byte	0x3c
 7555 0473 9F       		.byte	0x9f
 7556 0474 00000000 		.4byte	0
 7557 0478 00000000 		.4byte	0
 7558              	.LLST16:
 7559 047c B4000000 		.4byte	.LVL28
 7560 0480 B6000000 		.4byte	.LVL29
 7561 0484 0200     		.2byte	0x2
 7562 0486 3C       		.byte	0x3c
 7563 0487 9F       		.byte	0x9f
 7564 0488 00000000 		.4byte	0
 7565 048c 00000000 		.4byte	0
 7566              	.LLST17:
 7567 0490 BA000000 		.4byte	.LVL30
 7568 0494 C4000000 		.4byte	.LVL31
 7569 0498 0200     		.2byte	0x2
 7570 049a 40       		.byte	0x40
 7571 049b 9F       		.byte	0x9f
 7572 049c 00000000 		.4byte	0
 7573 04a0 00000000 		.4byte	0
 7574              	.LLST18:
 7575 04a4 C4000000 		.4byte	.LVL31
 7576 04a8 C8000000 		.4byte	.LVL32
 7577 04ac 0200     		.2byte	0x2
 7578 04ae 40       		.byte	0x40
 7579 04af 9F       		.byte	0x9f
 7580 04b0 00000000 		.4byte	0
 7581 04b4 00000000 		.4byte	0
 7582              	.LLST19:
 7583 04b8 C8000000 		.4byte	.LVL32
 7584 04bc CA000000 		.4byte	.LVL33
 7585 04c0 0200     		.2byte	0x2
 7586 04c2 40       		.byte	0x40
 7587 04c3 9F       		.byte	0x9f
 7588 04c4 00000000 		.4byte	0
 7589 04c8 00000000 		.4byte	0
 7590              	.LLST20:
ARM GAS  /tmp/ccbYIR7z.s 			page 178


 7591 04cc CE000000 		.4byte	.LVL34
 7592 04d0 D8000000 		.4byte	.LVL35
 7593 04d4 0200     		.2byte	0x2
 7594 04d6 41       		.byte	0x41
 7595 04d7 9F       		.byte	0x9f
 7596 04d8 00000000 		.4byte	0
 7597 04dc 00000000 		.4byte	0
 7598              	.LLST21:
 7599 04e0 D8000000 		.4byte	.LVL35
 7600 04e4 DC000000 		.4byte	.LVL36
 7601 04e8 0200     		.2byte	0x2
 7602 04ea 41       		.byte	0x41
 7603 04eb 9F       		.byte	0x9f
 7604 04ec 00000000 		.4byte	0
 7605 04f0 00000000 		.4byte	0
 7606              	.LLST22:
 7607 04f4 DC000000 		.4byte	.LVL36
 7608 04f8 DE000000 		.4byte	.LVL37
 7609 04fc 0200     		.2byte	0x2
 7610 04fe 41       		.byte	0x41
 7611 04ff 9F       		.byte	0x9f
 7612 0500 00000000 		.4byte	0
 7613 0504 00000000 		.4byte	0
 7614              	.LLST0:
 7615 0508 00000000 		.4byte	.LVL0
 7616 050c 34000000 		.4byte	.LVL6
 7617 0510 0100     		.2byte	0x1
 7618 0512 50       		.byte	0x50
 7619 0513 34000000 		.4byte	.LVL6
 7620 0517 36000000 		.4byte	.LFE529
 7621 051b 0400     		.2byte	0x4
 7622 051d F3       		.byte	0xf3
 7623 051e 01       		.uleb128 0x1
 7624 051f 50       		.byte	0x50
 7625 0520 9F       		.byte	0x9f
 7626 0521 00000000 		.4byte	0
 7627 0525 00000000 		.4byte	0
 7628              		.section	.debug_aranges,"",%progbits
 7629 0000 6C000000 		.4byte	0x6c
 7630 0004 0200     		.2byte	0x2
 7631 0006 00000000 		.4byte	.Ldebug_info0
 7632 000a 04       		.byte	0x4
 7633 000b 00       		.byte	0
 7634 000c 0000     		.2byte	0
 7635 000e 0000     		.2byte	0
 7636 0010 00000000 		.4byte	.LFB529
 7637 0014 36000000 		.4byte	.LFE529-.LFB529
 7638 0018 00000000 		.4byte	.LFB530
 7639 001c A8010000 		.4byte	.LFE530-.LFB530
 7640 0020 00000000 		.4byte	.LFB531
 7641 0024 1C000000 		.4byte	.LFE531-.LFB531
 7642 0028 00000000 		.4byte	.LFB532
 7643 002c 10000000 		.4byte	.LFE532-.LFB532
 7644 0030 00000000 		.4byte	.LFB533
 7645 0034 2E000000 		.4byte	.LFE533-.LFB533
 7646 0038 00000000 		.4byte	.LFB534
 7647 003c 10000000 		.4byte	.LFE534-.LFB534
ARM GAS  /tmp/ccbYIR7z.s 			page 179


 7648 0040 00000000 		.4byte	.LFB535
 7649 0044 10000000 		.4byte	.LFE535-.LFB535
 7650 0048 00000000 		.4byte	.LFB536
 7651 004c 10000000 		.4byte	.LFE536-.LFB536
 7652 0050 00000000 		.4byte	.LFB537
 7653 0054 10000000 		.4byte	.LFE537-.LFB537
 7654 0058 00000000 		.4byte	.LFB538
 7655 005c 10000000 		.4byte	.LFE538-.LFB538
 7656 0060 00000000 		.4byte	.LFB540
 7657 0064 7C000000 		.4byte	.LFE540-.LFB540
 7658 0068 00000000 		.4byte	0
 7659 006c 00000000 		.4byte	0
 7660              		.section	.debug_ranges,"",%progbits
 7661              	.Ldebug_ranges0:
 7662 0000 76000000 		.4byte	.LBB130
 7663 0004 D2000000 		.4byte	.LBE130
 7664 0008 D4000000 		.4byte	.LBB175
 7665 000c DE000000 		.4byte	.LBE175
 7666 0010 00000000 		.4byte	0
 7667 0014 00000000 		.4byte	0
 7668 0018 78000000 		.4byte	.LBB132
 7669 001c 7A000000 		.4byte	.LBE132
 7670 0020 7E000000 		.4byte	.LBB136
 7671 0024 82000000 		.4byte	.LBE136
 7672 0028 84000000 		.4byte	.LBB137
 7673 002c 88000000 		.4byte	.LBE137
 7674 0030 00000000 		.4byte	0
 7675 0034 00000000 		.4byte	0
 7676 0038 92000000 		.4byte	.LBB142
 7677 003c 96000000 		.4byte	.LBE142
 7678 0040 98000000 		.4byte	.LBB145
 7679 0044 9C000000 		.4byte	.LBE145
 7680 0048 00000000 		.4byte	0
 7681 004c 00000000 		.4byte	0
 7682 0050 A6000000 		.4byte	.LBB150
 7683 0054 AA000000 		.4byte	.LBE150
 7684 0058 AC000000 		.4byte	.LBB153
 7685 005c B0000000 		.4byte	.LBE153
 7686 0060 00000000 		.4byte	0
 7687 0064 00000000 		.4byte	0
 7688 0068 BA000000 		.4byte	.LBB158
 7689 006c BE000000 		.4byte	.LBE158
 7690 0070 C0000000 		.4byte	.LBB161
 7691 0074 C4000000 		.4byte	.LBE161
 7692 0078 00000000 		.4byte	0
 7693 007c 00000000 		.4byte	0
 7694 0080 CE000000 		.4byte	.LBB166
 7695 0084 D2000000 		.4byte	.LBE166
 7696 0088 D4000000 		.4byte	.LBB169
 7697 008c D8000000 		.4byte	.LBE169
 7698 0090 00000000 		.4byte	0
 7699 0094 00000000 		.4byte	0
 7700 0098 00000000 		.4byte	.LFB529
 7701 009c 36000000 		.4byte	.LFE529
 7702 00a0 00000000 		.4byte	.LFB530
 7703 00a4 A8010000 		.4byte	.LFE530
 7704 00a8 00000000 		.4byte	.LFB531
ARM GAS  /tmp/ccbYIR7z.s 			page 180


 7705 00ac 1C000000 		.4byte	.LFE531
 7706 00b0 00000000 		.4byte	.LFB532
 7707 00b4 10000000 		.4byte	.LFE532
 7708 00b8 00000000 		.4byte	.LFB533
 7709 00bc 2E000000 		.4byte	.LFE533
 7710 00c0 00000000 		.4byte	.LFB534
 7711 00c4 10000000 		.4byte	.LFE534
 7712 00c8 00000000 		.4byte	.LFB535
 7713 00cc 10000000 		.4byte	.LFE535
 7714 00d0 00000000 		.4byte	.LFB536
 7715 00d4 10000000 		.4byte	.LFE536
 7716 00d8 00000000 		.4byte	.LFB537
 7717 00dc 10000000 		.4byte	.LFE537
 7718 00e0 00000000 		.4byte	.LFB538
 7719 00e4 10000000 		.4byte	.LFE538
 7720 00e8 00000000 		.4byte	.LFB540
 7721 00ec 7C000000 		.4byte	.LFE540
 7722 00f0 00000000 		.4byte	0
 7723 00f4 00000000 		.4byte	0
 7724              		.section	.debug_line,"",%progbits
 7725              	.Ldebug_line0:
 7726 0000 0B070000 		.section	.debug_str,"MS",%progbits,1
 7726      0200FD04 
 7726      00000201 
 7726      FB0E0D00 
 7726      01010101 
 7727              	.LASF114:
 7728 0000 5443375F 		.ascii	"TC7_IRQn\000"
 7728      4952516E 
 7728      00
 7729              	.LASF75:
 7730 0009 4546435F 		.ascii	"EFC_IRQn\000"
 7730      4952516E 
 7730      00
 7731              	.LASF28:
 7732 0012 5F5F696E 		.ascii	"__int_least64_t\000"
 7732      745F6C65 
 7732      61737436 
 7732      345F7400 
 7733              	.LASF97:
 7734 0022 41464543 		.ascii	"AFEC0_IRQn\000"
 7734      305F4952 
 7734      516E00
 7735              	.LASF179:
 7736 002d 50494F5F 		.ascii	"PIO_PPDER\000"
 7736      50504445 
 7736      5200
 7737              	.LASF113:
 7738 0037 5443365F 		.ascii	"TC6_IRQn\000"
 7738      4952516E 
 7738      00
 7739              	.LASF291:
 7740 0040 5F737464 		.ascii	"_stdout\000"
 7740      6F757400 
 7741              	.LASF478:
 7742 0048 4150494E 		.ascii	"APIN_UART0_RXD\000"
 7742      5F554152 
ARM GAS  /tmp/ccbYIR7z.s 			page 181


 7742      54305F52 
 7742      584400
 7743              	.LASF371:
 7744 0057 5F5F6664 		.ascii	"__fdlibm_xopen\000"
 7744      6C69626D 
 7744      5F786F70 
 7744      656E00
 7745              	.LASF9:
 7746 0066 5F5F7569 		.ascii	"__uint8_t\000"
 7746      6E74385F 
 7746      7400
 7747              	.LASF109:
 7748 0070 51535049 		.ascii	"QSPI_IRQn\000"
 7748      5F495251 
 7748      6E00
 7749              	.LASF483:
 7750 007a 4150494E 		.ascii	"APIN_HSMCI_CLOCK\000"
 7750      5F48534D 
 7750      43495F43 
 7750      4C4F434B 
 7750      00
 7751              	.LASF330:
 7752 008b 376C6C64 		.ascii	"7lldiv_t\000"
 7752      69765F74 
 7752      00
 7753              	.LASF66:
 7754 0094 44656275 		.ascii	"DebugMonitor_IRQn\000"
 7754      674D6F6E 
 7754      69746F72 
 7754      5F495251 
 7754      6E00
 7755              	.LASF517:
 7756 00a6 50494F41 		.ascii	"PIOA_Handler\000"
 7756      5F48616E 
 7756      646C6572 
 7756      00
 7757              	.LASF387:
 7758 00b3 494E5445 		.ascii	"INTERRUPT_MODE_HIGH\000"
 7758      52525550 
 7758      545F4D4F 
 7758      44455F48 
 7758      49474800 
 7759              	.LASF264:
 7760 00c7 5F6D6273 		.ascii	"_mbstate\000"
 7760      74617465 
 7760      00
 7761              	.LASF243:
 7762 00d0 5F617465 		.ascii	"_atexit\000"
 7762      78697400 
 7763              	.LASF516:
 7764 00d8 50494F42 		.ascii	"PIOB_Handler\000"
 7764      5F48616E 
 7764      646C6572 
 7764      00
 7765              	.LASF515:
 7766 00e5 50494F43 		.ascii	"PIOC_Handler\000"
 7766      5F48616E 
ARM GAS  /tmp/ccbYIR7z.s 			page 182


 7766      646C6572 
 7766      00
 7767              	.LASF514:
 7768 00f2 50494F44 		.ascii	"PIOD_Handler\000"
 7768      5F48616E 
 7768      646C6572 
 7768      00
 7769              	.LASF513:
 7770 00ff 50494F45 		.ascii	"PIOE_Handler\000"
 7770      5F48616E 
 7770      646C6572 
 7770      00
 7771              	.LASF461:
 7772 010c 756C5065 		.ascii	"ulPeripheralId\000"
 7772      72697068 
 7772      6572616C 
 7772      496400
 7773              	.LASF161:
 7774 011b 50494F5F 		.ascii	"PIO_IDR\000"
 7774      49445200 
 7775              	.LASF176:
 7776 0123 50494F5F 		.ascii	"PIO_IFSCSR\000"
 7776      49465343 
 7776      535200
 7777              	.LASF233:
 7778 012e 5F5F746D 		.ascii	"__tm_mon\000"
 7778      5F6D6F6E 
 7778      00
 7779              	.LASF241:
 7780 0137 5F666E74 		.ascii	"_fntypes\000"
 7780      79706573 
 7780      00
 7781              	.LASF497:
 7782 0140 5F5A4E31 		.ascii	"_ZN17CallbackParameterC4EPv\000"
 7782      3743616C 
 7782      6C626163 
 7782      6B506172 
 7782      616D6574 
 7783              	.LASF293:
 7784 015c 5F696E63 		.ascii	"_inc\000"
 7784      00
 7785              	.LASF244:
 7786 0161 5F696E64 		.ascii	"_ind\000"
 7786      00
 7787              	.LASF126:
 7788 0166 50455249 		.ascii	"PERIPH_COUNT_IRQn\000"
 7788      50485F43 
 7788      4F554E54 
 7788      5F495251 
 7788      6E00
 7789              	.LASF177:
 7790 0178 50494F5F 		.ascii	"PIO_SCDR\000"
 7790      53434452 
 7790      00
 7791              	.LASF54:
 7792 0181 696E745F 		.ascii	"int_fast32_t\000"
 7792      66617374 
ARM GAS  /tmp/ccbYIR7z.s 			page 183


 7792      33325F74 
 7792      00
 7793              	.LASF160:
 7794 018e 50494F5F 		.ascii	"PIO_IER\000"
 7794      49455200 
 7795              	.LASF35:
 7796 0196 75696E74 		.ascii	"uint16_t\000"
 7796      31365F74 
 7796      00
 7797              	.LASF131:
 7798 019f 52534552 		.ascii	"RSERVED1\000"
 7798      56454431 
 7798      00
 7799              	.LASF417:
 7800 01a8 5443325F 		.ascii	"TC2_CHA6\000"
 7800      43484136 
 7800      00
 7801              	.LASF419:
 7802 01b1 5443325F 		.ascii	"TC2_CHA7\000"
 7802      43484137 
 7802      00
 7803              	.LASF421:
 7804 01ba 5443325F 		.ascii	"TC2_CHA8\000"
 7804      43484138 
 7804      00
 7805              	.LASF250:
 7806 01c3 5F666C61 		.ascii	"_flags\000"
 7806      677300
 7807              	.LASF365:
 7808 01ca 666C6F61 		.ascii	"float_t\000"
 7808      745F7400 
 7809              	.LASF102:
 7810 01d2 55534248 		.ascii	"USBHS_IRQn\000"
 7810      535F4952 
 7810      516E00
 7811              	.LASF202:
 7812 01dd 50494F5F 		.ascii	"PIO_SCHMITT\000"
 7812      5343484D 
 7812      49545400 
 7813              	.LASF303:
 7814 01e9 5F637674 		.ascii	"_cvtlen\000"
 7814      6C656E00 
 7815              	.LASF411:
 7816 01f1 5443315F 		.ascii	"TC1_CHA3\000"
 7816      43484133 
 7816      00
 7817              	.LASF358:
 7818 01fa 73747274 		.ascii	"strtof\000"
 7818      6F6600
 7819              	.LASF370:
 7820 0201 5F5F6664 		.ascii	"__fdlibm_svid\000"
 7820      6C69626D 
 7820      5F737669 
 7820      6400
 7821              	.LASF307:
 7822 020f 5F736967 		.ascii	"_sig_func\000"
 7822      5F66756E 
ARM GAS  /tmp/ccbYIR7z.s 			page 184


 7822      6300
 7823              	.LASF182:
 7824 0219 50494F5F 		.ascii	"PIO_OWER\000"
 7824      4F574552 
 7824      00
 7825              	.LASF418:
 7826 0222 5443325F 		.ascii	"TC2_CHB6\000"
 7826      43484236 
 7826      00
 7827              	.LASF420:
 7828 022b 5443325F 		.ascii	"TC2_CHB7\000"
 7828      43484237 
 7828      00
 7829              	.LASF422:
 7830 0234 5443325F 		.ascii	"TC2_CHB8\000"
 7830      43484238 
 7830      00
 7831              	.LASF55:
 7832 023d 75696E74 		.ascii	"uint_fast32_t\000"
 7832      5F666173 
 7832      7433325F 
 7832      7400
 7833              	.LASF485:
 7834 024b 4150494E 		.ascii	"APIN_GMAC_PHY_INTERRUPT\000"
 7834      5F474D41 
 7834      435F5048 
 7834      595F494E 
 7834      54455252 
 7835              	.LASF489:
 7836 0263 50776D46 		.ascii	"PwmFastClock\000"
 7836      61737443 
 7836      6C6F636B 
 7836      00
 7837              	.LASF424:
 7838 0270 416E616C 		.ascii	"AnalogChannelNumber\000"
 7838      6F674368 
 7838      616E6E65 
 7838      6C4E756D 
 7838      62657200 
 7839              	.LASF263:
 7840 0284 5F6C6F63 		.ascii	"_lock\000"
 7840      6B00
 7841              	.LASF259:
 7842 028a 5F6E6275 		.ascii	"_nbuf\000"
 7842      6600
 7843              	.LASF288:
 7844 0290 5F756E75 		.ascii	"_unused\000"
 7844      73656400 
 7845              	.LASF122:
 7846 0298 4953495F 		.ascii	"ISI_IRQn\000"
 7846      4952516E 
 7846      00
 7847              	.LASF405:
 7848 02a1 5443305F 		.ascii	"TC0_CHA0\000"
 7848      43484130 
 7848      00
 7849              	.LASF407:
ARM GAS  /tmp/ccbYIR7z.s 			page 185


 7850 02aa 5443305F 		.ascii	"TC0_CHA1\000"
 7850      43484131 
 7850      00
 7851              	.LASF409:
 7852 02b3 5443305F 		.ascii	"TC0_CHA2\000"
 7852      43484132 
 7852      00
 7853              	.LASF130:
 7854 02bc 49434552 		.ascii	"ICER\000"
 7854      00
 7855              	.LASF412:
 7856 02c1 5443315F 		.ascii	"TC1_CHB3\000"
 7856      43484233 
 7856      00
 7857              	.LASF414:
 7858 02ca 5443315F 		.ascii	"TC1_CHB4\000"
 7858      43484234 
 7858      00
 7859              	.LASF416:
 7860 02d3 5443315F 		.ascii	"TC1_CHB5\000"
 7860      43484235 
 7860      00
 7861              	.LASF2:
 7862 02dc 5F5F6D61 		.ascii	"__max_align_ld\000"
 7862      785F616C 
 7862      69676E5F 
 7862      6C6400
 7863              	.LASF335:
 7864 02eb 61746F66 		.ascii	"atof\000"
 7864      00
 7865              	.LASF337:
 7866 02f0 61746F69 		.ascii	"atoi\000"
 7866      00
 7867              	.LASF1:
 7868 02f5 5F5F6D61 		.ascii	"__max_align_ll\000"
 7868      785F616C 
 7868      69676E5F 
 7868      6C6C00
 7869              	.LASF338:
 7870 0304 61746F6C 		.ascii	"atol\000"
 7870      00
 7871              	.LASF296:
 7872 0309 5F637572 		.ascii	"_current_locale\000"
 7872      72656E74 
 7872      5F6C6F63 
 7872      616C6500 
 7873              	.LASF406:
 7874 0319 5443305F 		.ascii	"TC0_CHB0\000"
 7874      43484230 
 7874      00
 7875              	.LASF408:
 7876 0322 5443305F 		.ascii	"TC0_CHB1\000"
 7876      43484231 
 7876      00
 7877              	.LASF410:
 7878 032b 5443305F 		.ascii	"TC0_CHB2\000"
 7878      43484232 
ARM GAS  /tmp/ccbYIR7z.s 			page 186


 7878      00
 7879              	.LASF36:
 7880 0334 696E7433 		.ascii	"int32_t\000"
 7880      325F7400 
 7881              	.LASF58:
 7882 033c 696E746D 		.ascii	"intmax_t\000"
 7882      61785F74 
 7882      00
 7883              	.LASF523:
 7884 0345 6D61736B 		.ascii	"mask\000"
 7884      00
 7885              	.LASF318:
 7886 034a 5F616464 		.ascii	"_add\000"
 7886      00
 7887              	.LASF385:
 7888 034f 494E5445 		.ascii	"INTERRUPT_MODE_NONE\000"
 7888      52525550 
 7888      545F4D4F 
 7888      44455F4E 
 7888      4F4E4500 
 7889              	.LASF495:
 7890 0363 43616C6C 		.ascii	"CallbackParameter\000"
 7890      6261636B 
 7890      50617261 
 7890      6D657465 
 7890      7200
 7891              	.LASF59:
 7892 0375 75696E74 		.ascii	"uintmax_t\000"
 7892      6D61785F 
 7892      7400
 7893              	.LASF384:
 7894 037f 496E7465 		.ascii	"InterruptMode\000"
 7894      72727570 
 7894      744D6F64 
 7894      6500
 7895              	.LASF542:
 7896 038d 31316D61 		.ascii	"11max_align_t\000"
 7896      785F616C 
 7896      69676E5F 
 7896      7400
 7897              	.LASF27:
 7898 039b 5F5F7569 		.ascii	"__uint_least32_t\000"
 7898      6E745F6C 
 7898      65617374 
 7898      33325F74 
 7898      00
 7899              	.LASF252:
 7900 03ac 5F6C6266 		.ascii	"_lbfsize\000"
 7900      73697A65 
 7900      00
 7901              	.LASF328:
 7902 03b5 366C6469 		.ascii	"6ldiv_t\000"
 7902      765F7400 
 7903              	.LASF211:
 7904 03bd 50494F5F 		.ascii	"PIO_PCRHR\000"
 7904      50435248 
 7904      5200
ARM GAS  /tmp/ccbYIR7z.s 			page 187


 7905              	.LASF48:
 7906 03c7 696E745F 		.ascii	"int_least64_t\000"
 7906      6C656173 
 7906      7436345F 
 7906      7400
 7907              	.LASF65:
 7908 03d5 53564361 		.ascii	"SVCall_IRQn\000"
 7908      6C6C5F49 
 7908      52516E00 
 7909              	.LASF353:
 7910 03e1 7763746F 		.ascii	"wctomb\000"
 7910      6D6200
 7911              	.LASF262:
 7912 03e8 5F646174 		.ascii	"_data\000"
 7912      6100
 7913              	.LASF71:
 7914 03ee 5254435F 		.ascii	"RTC_IRQn\000"
 7914      4952516E 
 7914      00
 7915              	.LASF363:
 7916 03f7 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 7916      6972715F 
 7916      63726974 
 7916      6963616C 
 7916      5F736563 
 7917              	.LASF459:
 7918 0418 70506F72 		.ascii	"pPort\000"
 7918      7400
 7919              	.LASF475:
 7920 041e 5F646179 		.ascii	"_daylight\000"
 7920      6C696768 
 7920      7400
 7921              	.LASF266:
 7922 0428 5F726565 		.ascii	"_reent\000"
 7922      6E7400
 7923              	.LASF458:
 7924 042f 50696E44 		.ascii	"PinDescription\000"
 7924      65736372 
 7924      69707469 
 7924      6F6E00
 7925              	.LASF484:
 7926 043e 4150494E 		.ascii	"APIN_HSMCI_DATA\000"
 7926      5F48534D 
 7926      43495F44 
 7926      41544100 
 7927              	.LASF309:
 7928 044e 5F5F7366 		.ascii	"__sf\000"
 7928      00
 7929              	.LASF534:
 7930 0453 5F5A4E31 		.ascii	"_ZN17InterruptCallbackC2Ev\000"
 7930      37496E74 
 7930      65727275 
 7930      70744361 
 7930      6C6C6261 
 7931              	.LASF42:
 7932 046e 696E745F 		.ascii	"int_least8_t\000"
 7932      6C656173 
ARM GAS  /tmp/ccbYIR7z.s 			page 188


 7932      74385F74 
 7932      00
 7933              	.LASF511:
 7934 047b 5F5F696E 		.ascii	"__initialize_p\000"
 7934      69746961 
 7934      6C697A65 
 7934      5F7000
 7935              	.LASF275:
 7936 048a 5F6D6274 		.ascii	"_mbtowc_state\000"
 7936      6F77635F 
 7936      73746174 
 7936      6500
 7937              	.LASF120:
 7938 0498 54524E47 		.ascii	"TRNG_IRQn\000"
 7938      5F495251 
 7938      6E00
 7939              	.LASF322:
 7940 04a2 5F5F676E 		.ascii	"__gnu_cxx\000"
 7940      755F6378 
 7940      7800
 7941              	.LASF228:
 7942 04ac 5F5F746D 		.ascii	"__tm\000"
 7942      00
 7943              	.LASF462:
 7944 04b1 756C5069 		.ascii	"ulPinType\000"
 7944      6E547970 
 7944      6500
 7945              	.LASF193:
 7946 04bb 52657365 		.ascii	"Reserved10\000"
 7946      72766564 
 7946      313000
 7947              	.LASF197:
 7948 04c6 52657365 		.ascii	"Reserved11\000"
 7948      72766564 
 7948      313100
 7949              	.LASF201:
 7950 04d1 52657365 		.ascii	"Reserved12\000"
 7950      72766564 
 7950      313200
 7951              	.LASF203:
 7952 04dc 52657365 		.ascii	"Reserved13\000"
 7952      72766564 
 7952      313300
 7953              	.LASF162:
 7954 04e7 50494F5F 		.ascii	"PIO_IMR\000"
 7954      494D5200 
 7955              	.LASF354:
 7956 04ef 6C6C6469 		.ascii	"lldiv\000"
 7956      7600
 7957              	.LASF236:
 7958 04f5 5F5F746D 		.ascii	"__tm_yday\000"
 7958      5F796461 
 7958      7900
 7959              	.LASF93:
 7960 04ff 5443325F 		.ascii	"TC2_IRQn\000"
 7960      4952516E 
 7960      00
ARM GAS  /tmp/ccbYIR7z.s 			page 189


 7961              	.LASF11:
 7962 0508 5F5F696E 		.ascii	"__int16_t\000"
 7962      7431365F 
 7962      7400
 7963              	.LASF13:
 7964 0512 5F5F7569 		.ascii	"__uint16_t\000"
 7964      6E743136 
 7964      5F7400
 7965              	.LASF267:
 7966 051d 5F756E75 		.ascii	"_unused_rand\000"
 7966      7365645F 
 7966      72616E64 
 7966      00
 7967              	.LASF92:
 7968 052a 5443315F 		.ascii	"TC1_IRQn\000"
 7968      4952516E 
 7968      00
 7969              	.LASF479:
 7970 0533 4150494E 		.ascii	"APIN_UART0_TXD\000"
 7970      5F554152 
 7970      54305F54 
 7970      584400
 7971              	.LASF156:
 7972 0542 50494F5F 		.ascii	"PIO_SODR\000"
 7972      534F4452 
 7972      00
 7973              	.LASF526:
 7974 054b 5F5A3131 		.ascii	"_Z11inInterruptv\000"
 7974      696E496E 
 7974      74657272 
 7974      75707476 
 7974      00
 7975              	.LASF30:
 7976 055c 5F5F696E 		.ascii	"__intptr_t\000"
 7976      74707472 
 7976      5F7400
 7977              	.LASF366:
 7978 0567 646F7562 		.ascii	"double_t\000"
 7978      6C655F74 
 7978      00
 7979              	.LASF465:
 7980 0570 756C4144 		.ascii	"ulADCChannelNumber\000"
 7980      43436861 
 7980      6E6E656C 
 7980      4E756D62 
 7980      657200
 7981              	.LASF300:
 7982 0583 5F726573 		.ascii	"_result_k\000"
 7982      756C745F 
 7982      6B00
 7983              	.LASF529:
 7984 058d 6D6F6465 		.ascii	"mode\000"
 7984      00
 7985              	.LASF292:
 7986 0592 5F737464 		.ascii	"_stderr\000"
 7986      65727200 
 7987              	.LASF299:
ARM GAS  /tmp/ccbYIR7z.s 			page 190


 7988 059a 5F726573 		.ascii	"_result\000"
 7988      756C7400 
 7989              	.LASF207:
 7990 05a2 50494F5F 		.ascii	"PIO_PCIER\000"
 7990      50434945 
 7990      5200
 7991              	.LASF204:
 7992 05ac 50494F5F 		.ascii	"PIO_DRIVER\000"
 7992      44524956 
 7992      455200
 7993              	.LASF240:
 7994 05b7 5F64736F 		.ascii	"_dso_handle\000"
 7994      5F68616E 
 7994      646C6500 
 7995              	.LASF91:
 7996 05c3 5443305F 		.ascii	"TC0_IRQn\000"
 7996      4952516E 
 7996      00
 7997              	.LASF235:
 7998 05cc 5F5F746D 		.ascii	"__tm_wday\000"
 7998      5F776461 
 7998      7900
 7999              	.LASF237:
 8000 05d6 5F5F746D 		.ascii	"__tm_isdst\000"
 8000      5F697364 
 8000      737400
 8001              	.LASF546:
 8002 05e1 5F5A5374 		.ascii	"_ZSt3absx\000"
 8002      33616273 
 8002      7800
 8003              	.LASF373:
 8004 05eb 5F5F6664 		.ascii	"__fdlib_version\000"
 8004      6C69625F 
 8004      76657273 
 8004      696F6E00 
 8005              	.LASF10:
 8006 05fb 756E7369 		.ascii	"unsigned char\000"
 8006      676E6564 
 8006      20636861 
 8006      7200
 8007              	.LASF180:
 8008 0609 50494F5F 		.ascii	"PIO_PPDSR\000"
 8008      50504453 
 8008      5200
 8009              	.LASF470:
 8010 0613 5F637479 		.ascii	"_ctype_\000"
 8010      70655F00 
 8011              	.LASF282:
 8012 061b 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 8012      72746F77 
 8012      63735F73 
 8012      74617465 
 8012      00
 8013              	.LASF226:
 8014 062c 5F776473 		.ascii	"_wds\000"
 8014      00
 8015              	.LASF359:
ARM GAS  /tmp/ccbYIR7z.s 			page 191


 8016 0631 666C6F61 		.ascii	"float\000"
 8016      7400
 8017              	.LASF248:
 8018 0637 5F73697A 		.ascii	"_size\000"
 8018      6500
 8019              	.LASF165:
 8020 063d 50494F5F 		.ascii	"PIO_MDDR\000"
 8020      4D444452 
 8020      00
 8021              	.LASF47:
 8022 0646 75696E74 		.ascii	"uint_least32_t\000"
 8022      5F6C6561 
 8022      73743332 
 8022      5F7400
 8023              	.LASF61:
 8024 0655 48617264 		.ascii	"HardFault_IRQn\000"
 8024      4661756C 
 8024      745F4952 
 8024      516E00
 8025              	.LASF555:
 8026 0664 5F5F6765 		.ascii	"__get_IPSR\000"
 8026      745F4950 
 8026      535200
 8027              	.LASF486:
 8028 066f 4150494E 		.ascii	"APIN_GMAC_PHY_RESET\000"
 8028      5F474D41 
 8028      435F5048 
 8028      595F5245 
 8028      53455400 
 8029              	.LASF255:
 8030 0683 5F777269 		.ascii	"_write\000"
 8030      746500
 8031              	.LASF134:
 8032 068a 49435052 		.ascii	"ICPR\000"
 8032      00
 8033              	.LASF87:
 8034 068f 54574948 		.ascii	"TWIHS0_IRQn\000"
 8034      53305F49 
 8034      52516E00 
 8035              	.LASF512:
 8036 069b 5F5F7072 		.ascii	"__priority\000"
 8036      696F7269 
 8036      747900
 8037              	.LASF164:
 8038 06a6 50494F5F 		.ascii	"PIO_MDER\000"
 8038      4D444552 
 8038      00
 8039              	.LASF403:
 8040 06af 5F455443 		.ascii	"_ETCChannel\000"
 8040      4368616E 
 8040      6E656C00 
 8041              	.LASF380:
 8042 06bb 50494F5F 		.ascii	"PIO_INPUT\000"
 8042      494E5055 
 8042      5400
 8043              	.LASF39:
 8044 06c5 75696E74 		.ascii	"uint64_t\000"
ARM GAS  /tmp/ccbYIR7z.s 			page 192


 8044      36345F74 
 8044      00
 8045              	.LASF81:
 8046 06ce 55534152 		.ascii	"USART0_IRQn\000"
 8046      54305F49 
 8046      52516E00 
 8047              	.LASF163:
 8048 06da 50494F5F 		.ascii	"PIO_ISR\000"
 8048      49535200 
 8049              	.LASF427:
 8050 06e2 41444331 		.ascii	"ADC1\000"
 8050      00
 8051              	.LASF428:
 8052 06e7 41444332 		.ascii	"ADC2\000"
 8052      00
 8053              	.LASF429:
 8054 06ec 41444333 		.ascii	"ADC3\000"
 8054      00
 8055              	.LASF430:
 8056 06f1 41444334 		.ascii	"ADC4\000"
 8056      00
 8057              	.LASF431:
 8058 06f6 41444335 		.ascii	"ADC5\000"
 8058      00
 8059              	.LASF432:
 8060 06fb 41444336 		.ascii	"ADC6\000"
 8060      00
 8061              	.LASF433:
 8062 0700 41444337 		.ascii	"ADC7\000"
 8062      00
 8063              	.LASF434:
 8064 0705 41444338 		.ascii	"ADC8\000"
 8064      00
 8065              	.LASF435:
 8066 070a 41444339 		.ascii	"ADC9\000"
 8066      00
 8067              	.LASF234:
 8068 070f 5F5F746D 		.ascii	"__tm_year\000"
 8068      5F796561 
 8068      7200
 8069              	.LASF557:
 8070 0719 706D635F 		.ascii	"pmc_enable_periph_clk\000"
 8070      656E6162 
 8070      6C655F70 
 8070      65726970 
 8070      685F636C 
 8071              	.LASF360:
 8072 072f 73747274 		.ascii	"strtold\000"
 8072      6F6C6400 
 8073              	.LASF317:
 8074 0737 5F6D756C 		.ascii	"_mult\000"
 8074      7400
 8075              	.LASF356:
 8076 073d 73747274 		.ascii	"strtoll\000"
 8076      6F6C6C00 
 8077              	.LASF321:
 8078 0745 6D6F6466 		.ascii	"modf\000"
ARM GAS  /tmp/ccbYIR7z.s 			page 193


 8078      00
 8079              	.LASF334:
 8080 074a 61746578 		.ascii	"atexit\000"
 8080      697400
 8081              	.LASF184:
 8082 0751 50494F5F 		.ascii	"PIO_OWSR\000"
 8082      4F575352 
 8082      00
 8083              	.LASF391:
 8084 075a 4E6F5069 		.ascii	"NoPin\000"
 8084      6E00
 8085              	.LASF436:
 8086 0760 41444331 		.ascii	"ADC10\000"
 8086      3000
 8087              	.LASF437:
 8088 0766 41444331 		.ascii	"ADC11\000"
 8088      3100
 8089              	.LASF438:
 8090 076c 41444331 		.ascii	"ADC12\000"
 8090      3200
 8091              	.LASF439:
 8092 0772 41444331 		.ascii	"ADC13\000"
 8092      3300
 8093              	.LASF440:
 8094 0778 41444331 		.ascii	"ADC14\000"
 8094      3400
 8095              	.LASF441:
 8096 077e 41444331 		.ascii	"ADC15\000"
 8096      3500
 8097              	.LASF442:
 8098 0784 41444331 		.ascii	"ADC16\000"
 8098      3600
 8099              	.LASF22:
 8100 078a 5F5F696E 		.ascii	"__int_least8_t\000"
 8100      745F6C65 
 8100      61737438 
 8100      5F7400
 8101              	.LASF444:
 8102 0799 41444331 		.ascii	"ADC18\000"
 8102      3800
 8103              	.LASF445:
 8104 079f 41444331 		.ascii	"ADC19\000"
 8104      3900
 8105              	.LASF198:
 8106 07a5 50494F5F 		.ascii	"PIO_LOCKSR\000"
 8106      4C4F434B 
 8106      535200
 8107              	.LASF290:
 8108 07b0 5F737464 		.ascii	"_stdin\000"
 8108      696E00
 8109              	.LASF287:
 8110 07b7 5F6E6D61 		.ascii	"_nmalloc\000"
 8110      6C6C6F63 
 8110      00
 8111              	.LASF108:
 8112 07c0 53504931 		.ascii	"SPI1_IRQn\000"
 8112      5F495251 
ARM GAS  /tmp/ccbYIR7z.s 			page 194


 8112      6E00
 8113              	.LASF361:
 8114 07ca 675F696E 		.ascii	"g_interrupt_enabled\000"
 8114      74657272 
 8114      7570745F 
 8114      656E6162 
 8114      6C656400 
 8115              	.LASF112:
 8116 07de 55415254 		.ascii	"UART4_IRQn\000"
 8116      345F4952 
 8116      516E00
 8117              	.LASF446:
 8118 07e9 41444332 		.ascii	"ADC20\000"
 8118      3000
 8119              	.LASF447:
 8120 07ef 41444332 		.ascii	"ADC21\000"
 8120      3100
 8121              	.LASF448:
 8122 07f5 41444332 		.ascii	"ADC22\000"
 8122      3200
 8123              	.LASF449:
 8124 07fb 41444332 		.ascii	"ADC23\000"
 8124      3300
 8125              	.LASF450:
 8126 0801 41444332 		.ascii	"ADC24\000"
 8126      3400
 8127              	.LASF451:
 8128 0807 41444332 		.ascii	"ADC25\000"
 8128      3500
 8129              	.LASF452:
 8130 080d 41444332 		.ascii	"ADC26\000"
 8130      3600
 8131              	.LASF453:
 8132 0813 41444332 		.ascii	"ADC27\000"
 8132      3700
 8133              	.LASF454:
 8134 0819 41444332 		.ascii	"ADC28\000"
 8134      3800
 8135              	.LASF455:
 8136 081f 41444332 		.ascii	"ADC29\000"
 8136      3900
 8137              	.LASF545:
 8138 0825 3350696F 		.ascii	"3Pio\000"
 8138      00
 8139              	.LASF481:
 8140 082a 4150494E 		.ascii	"APIN_UART1_RXD\000"
 8140      5F554152 
 8140      54315F52 
 8140      584400
 8141              	.LASF89:
 8142 0839 53504930 		.ascii	"SPI0_IRQn\000"
 8142      5F495251 
 8142      6E00
 8143              	.LASF111:
 8144 0843 55415254 		.ascii	"UART3_IRQn\000"
 8144      335F4952 
 8144      516E00
ARM GAS  /tmp/ccbYIR7z.s 			page 195


 8145              	.LASF527:
 8146 084e 5F5A3135 		.ascii	"_Z15attachInterruptmPFv17CallbackParameterE13Interr"
 8146      61747461 
 8146      6368496E 
 8146      74657272 
 8146      7570746D 
 8147 0881 7570744D 		.ascii	"uptModeS_\000"
 8147      6F646553 
 8147      5F00
 8148              	.LASF456:
 8149 088b 41444333 		.ascii	"ADC30\000"
 8149      3000
 8150              	.LASF457:
 8151 0891 41444333 		.ascii	"ADC31\000"
 8151      3100
 8152              	.LASF213:
 8153 0897 5F6F6666 		.ascii	"_off_t\000"
 8153      5F7400
 8154              	.LASF84:
 8155 089e 50494F44 		.ascii	"PIOD_IRQn\000"
 8155      5F495251 
 8155      6E00
 8156              	.LASF490:
 8157 08a8 50776D53 		.ascii	"PwmSlowClock\000"
 8157      6C6F7743 
 8157      6C6F636B 
 8157      00
 8158              	.LASF5:
 8159 08b5 73697A65 		.ascii	"size_t\000"
 8159      5F7400
 8160              	.LASF270:
 8161 08bc 5F6C6F63 		.ascii	"_localtime_buf\000"
 8161      616C7469 
 8161      6D655F62 
 8161      756600
 8162              	.LASF168:
 8163 08cb 50494F5F 		.ascii	"PIO_PUDR\000"
 8163      50554452 
 8163      00
 8164              	.LASF218:
 8165 08d4 5F5F636F 		.ascii	"__count\000"
 8165      756E7400 
 8166              	.LASF33:
 8167 08dc 75696E74 		.ascii	"uint8_t\000"
 8167      385F7400 
 8168              	.LASF326:
 8169 08e4 71756F74 		.ascii	"quot\000"
 8169      00
 8170              	.LASF110:
 8171 08e9 55415254 		.ascii	"UART2_IRQn\000"
 8171      325F4952 
 8171      516E00
 8172              	.LASF209:
 8173 08f4 50494F5F 		.ascii	"PIO_PCIMR\000"
 8173      5043494D 
 8173      5200
 8174              	.LASF392:
ARM GAS  /tmp/ccbYIR7z.s 			page 196


 8175 08fe 5F455057 		.ascii	"_EPWMChannel\000"
 8175      4D436861 
 8175      6E6E656C 
 8175      00
 8176              	.LASF80:
 8177 090b 50494F43 		.ascii	"PIOC_IRQn\000"
 8177      5F495251 
 8177      6E00
 8178              	.LASF505:
 8179 0915 5F5A4E31 		.ascii	"_ZN17InterruptCallbackC4Ev\000"
 8179      37496E74 
 8179      65727275 
 8179      70744361 
 8179      6C6C6261 
 8180              	.LASF404:
 8181 0930 4E4F545F 		.ascii	"NOT_ON_TIMER\000"
 8181      4F4E5F54 
 8181      494D4552 
 8181      00
 8182              	.LASF503:
 8183 093d 70617261 		.ascii	"param\000"
 8183      6D00
 8184              	.LASF26:
 8185 0943 5F5F696E 		.ascii	"__int_least32_t\000"
 8185      745F6C65 
 8185      61737433 
 8185      325F7400 
 8186              	.LASF169:
 8187 0953 50494F5F 		.ascii	"PIO_PUER\000"
 8187      50554552 
 8187      00
 8188              	.LASF304:
 8189 095c 5F637674 		.ascii	"_cvtbuf\000"
 8189      62756600 
 8190              	.LASF79:
 8191 0964 50494F42 		.ascii	"PIOB_IRQn\000"
 8191      5F495251 
 8191      6E00
 8192              	.LASF472:
 8193 096e 5072696E 		.ascii	"Print\000"
 8193      7400
 8194              	.LASF390:
 8195 0974 494E5445 		.ascii	"INTERRUPT_MODE_RISING\000"
 8195      52525550 
 8195      545F4D4F 
 8195      44455F52 
 8195      4953494E 
 8196              	.LASF389:
 8197 098a 494E5445 		.ascii	"INTERRUPT_MODE_FALLING\000"
 8197      52525550 
 8197      545F4D4F 
 8197      44455F46 
 8197      414C4C49 
 8198              	.LASF217:
 8199 09a1 5F5F7763 		.ascii	"__wchb\000"
 8199      686200
 8200              	.LASF281:
ARM GAS  /tmp/ccbYIR7z.s 			page 197


 8201 09a8 5F6D6272 		.ascii	"_mbrtowc_state\000"
 8201      746F7763 
 8201      5F737461 
 8201      746500
 8202              	.LASF231:
 8203 09b7 5F5F746D 		.ascii	"__tm_hour\000"
 8203      5F686F75 
 8203      7200
 8204              	.LASF141:
 8205 09c1 4E564943 		.ascii	"NVIC_Type\000"
 8205      5F547970 
 8205      6500
 8206              	.LASF331:
 8207 09cb 6C6C6469 		.ascii	"lldiv_t\000"
 8207      765F7400 
 8208              	.LASF215:
 8209 09d3 77696E74 		.ascii	"wint_t\000"
 8209      5F7400
 8210              	.LASF342:
 8211 09da 6D626C65 		.ascii	"mblen\000"
 8211      6E00
 8212              	.LASF305:
 8213 09e0 5F6E6577 		.ascii	"_new\000"
 8213      00
 8214              	.LASF471:
 8215 09e5 53455249 		.ascii	"SERIAL_BUFFER_SIZE\000"
 8215      414C5F42 
 8215      55464645 
 8215      525F5349 
 8215      5A4500
 8216              	.LASF313:
 8217 09f8 5F6E696F 		.ascii	"_niobs\000"
 8217      627300
 8218              	.LASF104:
 8219 09ff 4D43414E 		.ascii	"MCAN1_IRQn\000"
 8219      315F4952 
 8219      516E00
 8220              	.LASF90:
 8221 0a0a 5353435F 		.ascii	"SSC_IRQn\000"
 8221      4952516E 
 8221      00
 8222              	.LASF289:
 8223 0a13 5F657272 		.ascii	"_errno\000"
 8223      6E6F00
 8224              	.LASF232:
 8225 0a1a 5F5F746D 		.ascii	"__tm_mday\000"
 8225      5F6D6461 
 8225      7900
 8226              	.LASF500:
 8227 0a24 696E7465 		.ascii	"interruptCB\000"
 8227      72727570 
 8227      74434200 
 8228              	.LASF116:
 8229 0a30 5443395F 		.ascii	"TC9_IRQn\000"
 8229      4952516E 
 8229      00
 8230              	.LASF239:
ARM GAS  /tmp/ccbYIR7z.s 			page 198


 8231 0a39 5F666E61 		.ascii	"_fnargs\000"
 8231      72677300 
 8232              	.LASF172:
 8233 0a41 50494F5F 		.ascii	"PIO_ABCDSR\000"
 8233      41424344 
 8233      535200
 8234              	.LASF324:
 8235 0a4c 31305F6D 		.ascii	"10_mbstate_t\000"
 8235      62737461 
 8235      74655F74 
 8235      00
 8236              	.LASF192:
 8237 0a59 50494F5F 		.ascii	"PIO_ELSR\000"
 8237      454C5352 
 8237      00
 8238              	.LASF537:
 8239 0a62 4E564943 		.ascii	"NVIC_DisableIRQ\000"
 8239      5F446973 
 8239      61626C65 
 8239      49525100 
 8240              	.LASF19:
 8241 0a72 5F5F696E 		.ascii	"__int64_t\000"
 8241      7436345F 
 8241      7400
 8242              	.LASF20:
 8243 0a7c 5F5F7569 		.ascii	"__uint64_t\000"
 8243      6E743634 
 8243      5F7400
 8244              	.LASF223:
 8245 0a87 5F6E6578 		.ascii	"_next\000"
 8245      7400
 8246              	.LASF278:
 8247 0a8d 5F736967 		.ascii	"_signal_buf\000"
 8247      6E616C5F 
 8247      62756600 
 8248              	.LASF253:
 8249 0a99 5F636F6F 		.ascii	"_cookie\000"
 8249      6B696500 
 8250              	.LASF556:
 8251 0aa1 5F656376 		.ascii	"_ecv_result\000"
 8251      5F726573 
 8251      756C7400 
 8252              	.LASF476:
 8253 0aad 5F747A6E 		.ascii	"_tzname\000"
 8253      616D6500 
 8254              	.LASF49:
 8255 0ab5 75696E74 		.ascii	"uint_least64_t\000"
 8255      5F6C6561 
 8255      73743634 
 8255      5F7400
 8256              	.LASF394:
 8257 0ac4 50574D5F 		.ascii	"PWM_CH0\000"
 8257      43483000 
 8258              	.LASF395:
 8259 0acc 50574D5F 		.ascii	"PWM_CH1\000"
 8259      43483100 
 8260              	.LASF396:
ARM GAS  /tmp/ccbYIR7z.s 			page 199


 8261 0ad4 50574D5F 		.ascii	"PWM_CH2\000"
 8261      43483200 
 8262              	.LASF397:
 8263 0adc 50574D5F 		.ascii	"PWM_CH3\000"
 8263      43483300 
 8264              	.LASF398:
 8265 0ae4 50574D5F 		.ascii	"PWM_CH4\000"
 8265      43483400 
 8266              	.LASF399:
 8267 0aec 50574D5F 		.ascii	"PWM_CH5\000"
 8267      43483500 
 8268              	.LASF400:
 8269 0af4 50574D5F 		.ascii	"PWM_CH6\000"
 8269      43483600 
 8270              	.LASF401:
 8271 0afc 50574D5F 		.ascii	"PWM_CH7\000"
 8271      43483700 
 8272              	.LASF543:
 8273 0b04 6465636C 		.ascii	"decltype(nullptr)\000"
 8273      74797065 
 8273      286E756C 
 8273      6C707472 
 8273      2900
 8274              	.LASF105:
 8275 0b16 474D4143 		.ascii	"GMAC_IRQn\000"
 8275      5F495251 
 8275      6E00
 8276              	.LASF125:
 8277 0b20 52535744 		.ascii	"RSWDT_IRQn\000"
 8277      545F4952 
 8277      516E00
 8278              	.LASF350:
 8279 0b2b 73747274 		.ascii	"strtoul\000"
 8279      6F756C00 
 8280              	.LASF443:
 8281 0b33 41444331 		.ascii	"ADC17\000"
 8281      3700
 8282              	.LASF210:
 8283 0b39 50494F5F 		.ascii	"PIO_PCISR\000"
 8283      50434953 
 8283      5200
 8284              	.LASF329:
 8285 0b43 6C646976 		.ascii	"ldiv_t\000"
 8285      5F7400
 8286              	.LASF381:
 8287 0b4a 50494F5F 		.ascii	"PIO_OUTPUT_0\000"
 8287      4F555450 
 8287      55545F30 
 8287      00
 8288              	.LASF382:
 8289 0b57 50494F5F 		.ascii	"PIO_OUTPUT_1\000"
 8289      4F555450 
 8289      55545F31 
 8289      00
 8290              	.LASF117:
 8291 0b64 54433130 		.ascii	"TC10_IRQn\000"
 8291      5F495251 
ARM GAS  /tmp/ccbYIR7z.s 			page 200


 8291      6E00
 8292              	.LASF460:
 8293 0b6e 756C5069 		.ascii	"ulPin\000"
 8293      6E00
 8294              	.LASF375:
 8295 0b74 50494F5F 		.ascii	"PIO_NOT_A_PIN\000"
 8295      4E4F545F 
 8295      415F5049 
 8295      4E00
 8296              	.LASF229:
 8297 0b82 5F5F746D 		.ascii	"__tm_sec\000"
 8297      5F736563 
 8297      00
 8298              	.LASF376:
 8299 0b8b 50494F5F 		.ascii	"PIO_PERIPH_A\000"
 8299      50455249 
 8299      50485F41 
 8299      00
 8300              	.LASF377:
 8301 0b98 50494F5F 		.ascii	"PIO_PERIPH_B\000"
 8301      50455249 
 8301      50485F42 
 8301      00
 8302              	.LASF352:
 8303 0ba5 77637374 		.ascii	"wcstombs\000"
 8303      6F6D6273 
 8303      00
 8304              	.LASF379:
 8305 0bae 50494F5F 		.ascii	"PIO_PERIPH_D\000"
 8305      50455249 
 8305      50485F44 
 8305      00
 8306              	.LASF238:
 8307 0bbb 5F6F6E5F 		.ascii	"_on_exit_args\000"
 8307      65786974 
 8307      5F617267 
 8307      7300
 8308              	.LASF64:
 8309 0bc9 55736167 		.ascii	"UsageFault_IRQn\000"
 8309      65466175 
 8309      6C745F49 
 8309      52516E00 
 8310              	.LASF158:
 8311 0bd9 50494F5F 		.ascii	"PIO_ODSR\000"
 8311      4F445352 
 8311      00
 8312              	.LASF247:
 8313 0be2 5F626173 		.ascii	"_base\000"
 8313      6500
 8314              	.LASF520:
 8315 0be8 64657461 		.ascii	"detachInterrupt\000"
 8315      6368496E 
 8315      74657272 
 8315      75707400 
 8316              	.LASF52:
 8317 0bf8 696E745F 		.ascii	"int_fast16_t\000"
 8317      66617374 
ARM GAS  /tmp/ccbYIR7z.s 			page 201


 8317      31365F74 
 8317      00
 8318              	.LASF540:
 8319 0c05 2E2E2F63 		.ascii	"../cores/arduino/WInterrupts.cpp\000"
 8319      6F726573 
 8319      2F617264 
 8319      75696E6F 
 8319      2F57496E 
 8320              	.LASF195:
 8321 0c26 50494F5F 		.ascii	"PIO_REHLSR\000"
 8321      5245484C 
 8321      535200
 8322              	.LASF200:
 8323 0c31 50494F5F 		.ascii	"PIO_WPSR\000"
 8323      57505352 
 8323      00
 8324              	.LASF127:
 8325 0c3a 4952516E 		.ascii	"IRQn_Type\000"
 8325      5F547970 
 8325      6500
 8326              	.LASF544:
 8327 0c44 394E5649 		.ascii	"9NVIC_Type\000"
 8327      435F5479 
 8327      706500
 8328              	.LASF157:
 8329 0c4f 50494F5F 		.ascii	"PIO_CODR\000"
 8329      434F4452 
 8329      00
 8330              	.LASF32:
 8331 0c58 696E7438 		.ascii	"int8_t\000"
 8331      5F7400
 8332              	.LASF222:
 8333 0c5f 5F5F554C 		.ascii	"__ULong\000"
 8333      6F6E6700 
 8334              	.LASF166:
 8335 0c67 50494F5F 		.ascii	"PIO_MDSR\000"
 8335      4D445352 
 8335      00
 8336              	.LASF53:
 8337 0c70 75696E74 		.ascii	"uint_fast16_t\000"
 8337      5F666173 
 8337      7431365F 
 8337      7400
 8338              	.LASF46:
 8339 0c7e 696E745F 		.ascii	"int_least32_t\000"
 8339      6C656173 
 8339      7433325F 
 8339      7400
 8340              	.LASF347:
 8341 0c8c 7372616E 		.ascii	"srand\000"
 8341      6400
 8342              	.LASF538:
 8343 0c92 4E564943 		.ascii	"NVIC_EnableIRQ\000"
 8343      5F456E61 
 8343      626C6549 
 8343      525100
 8344              	.LASF205:
ARM GAS  /tmp/ccbYIR7z.s 			page 202


 8345 0ca1 52657365 		.ascii	"Reserved14\000"
 8345      72766564 
 8345      313400
 8346              	.LASF268:
 8347 0cac 5F737472 		.ascii	"_strtok_last\000"
 8347      746F6B5F 
 8347      6C617374 
 8347      00
 8348              	.LASF153:
 8349 0cb9 50494F5F 		.ascii	"PIO_IFDR\000"
 8349      49464452 
 8349      00
 8350              	.LASF140:
 8351 0cc2 73697A65 		.ascii	"sizetype\000"
 8351      74797065 
 8351      00
 8352              	.LASF316:
 8353 0ccb 5F736565 		.ascii	"_seed\000"
 8353      6400
 8354              	.LASF62:
 8355 0cd1 4D656D6F 		.ascii	"MemoryManagement_IRQn\000"
 8355      72794D61 
 8355      6E616765 
 8355      6D656E74 
 8355      5F495251 
 8356              	.LASF256:
 8357 0ce7 5F736565 		.ascii	"_seek\000"
 8357      6B00
 8358              	.LASF482:
 8359 0ced 4150494E 		.ascii	"APIN_UART1_TXD\000"
 8359      5F554152 
 8359      54315F54 
 8359      584400
 8360              	.LASF6:
 8361 0cfc 6D61785F 		.ascii	"max_align_t\000"
 8361      616C6967 
 8361      6E5F7400 
 8362              	.LASF70:
 8363 0d08 52535443 		.ascii	"RSTC_IRQn\000"
 8363      5F495251 
 8363      6E00
 8364              	.LASF72:
 8365 0d12 5254545F 		.ascii	"RTT_IRQn\000"
 8365      4952516E 
 8365      00
 8366              	.LASF351:
 8367 0d1b 73797374 		.ascii	"system\000"
 8367      656D00
 8368              	.LASF34:
 8369 0d22 696E7431 		.ascii	"int16_t\000"
 8369      365F7400 
 8370              	.LASF425:
 8371 0d2a 4E4F5F41 		.ascii	"NO_ADC\000"
 8371      444300
 8372              	.LASF14:
 8373 0d31 73686F72 		.ascii	"short unsigned int\000"
 8373      7420756E 
ARM GAS  /tmp/ccbYIR7z.s 			page 203


 8373      7369676E 
 8373      65642069 
 8373      6E7400
 8374              	.LASF8:
 8375 0d44 7369676E 		.ascii	"signed char\000"
 8375      65642063 
 8375      68617200 
 8376              	.LASF152:
 8377 0d50 50494F5F 		.ascii	"PIO_IFER\000"
 8377      49464552 
 8377      00
 8378              	.LASF533:
 8379 0d59 74686973 		.ascii	"this\000"
 8379      00
 8380              	.LASF369:
 8381 0d5e 5F5F6664 		.ascii	"__fdlibm_ieee\000"
 8381      6C69626D 
 8381      5F696565 
 8381      6500
 8382              	.LASF539:
 8383 0d6c 474E5520 		.ascii	"GNU C++14 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -m"
 8383      432B2B31 
 8383      3420362E 
 8383      332E3120 
 8383      32303137 
 8384 0d9f 6670753D 		.ascii	"fpu=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu++14 -"
 8384      66707635 
 8384      2D643136 
 8384      202D6D66 
 8384      6C6F6174 
 8385 0dd2 6666756E 		.ascii	"ffunction-sections -fdata-sections -fno-threadsafe-"
 8385      6374696F 
 8385      6E2D7365 
 8385      6374696F 
 8385      6E73202D 
 8386 0e05 73746174 		.ascii	"statics -fno-rtti -fno-exceptions -fsingle-precisio"
 8386      69637320 
 8386      2D666E6F 
 8386      2D727474 
 8386      69202D66 
 8387 0e38 6E2D636F 		.ascii	"n-constant\000"
 8387      6E737461 
 8387      6E7400
 8388              	.LASF383:
 8389 0e43 70696F5F 		.ascii	"pio_type_t\000"
 8389      74797065 
 8389      5F7400
 8390              	.LASF463:
 8391 0e4e 756C5069 		.ascii	"ulPinConfiguration\000"
 8391      6E436F6E 
 8391      66696775 
 8391      72617469 
 8391      6F6E00
 8392              	.LASF302:
 8393 0e61 5F667265 		.ascii	"_freelist\000"
 8393      656C6973 
 8393      7400
ARM GAS  /tmp/ccbYIR7z.s 			page 204


 8394              	.LASF506:
 8395 0e6b 63616C6C 		.ascii	"callbacksPioA\000"
 8395      6261636B 
 8395      7350696F 
 8395      4100
 8396              	.LASF25:
 8397 0e79 5F5F7569 		.ascii	"__uint_least16_t\000"
 8397      6E745F6C 
 8397      65617374 
 8397      31365F74 
 8397      00
 8398              	.LASF508:
 8399 0e8a 63616C6C 		.ascii	"callbacksPioC\000"
 8399      6261636B 
 8399      7350696F 
 8399      4300
 8400              	.LASF509:
 8401 0e98 63616C6C 		.ascii	"callbacksPioD\000"
 8401      6261636B 
 8401      7350696F 
 8401      4400
 8402              	.LASF510:
 8403 0ea6 63616C6C 		.ascii	"callbacksPioE\000"
 8403      6261636B 
 8403      7350696F 
 8403      4500
 8404              	.LASF344:
 8405 0eb4 77636861 		.ascii	"wchar_t\000"
 8405      725F7400 
 8406              	.LASF261:
 8407 0ebc 5F6F6666 		.ascii	"_offset\000"
 8407      73657400 
 8408              	.LASF143:
 8409 0ec4 53797374 		.ascii	"SystemCoreClock\000"
 8409      656D436F 
 8409      7265436C 
 8409      6F636B00 
 8410              	.LASF522:
 8411 0ed4 5F5A3135 		.ascii	"_Z15detachInterruptm\000"
 8411      64657461 
 8411      6368496E 
 8411      74657272 
 8411      7570746D 
 8412              	.LASF246:
 8413 0ee9 5F5F7362 		.ascii	"__sbuf\000"
 8413      756600
 8414              	.LASF343:
 8415 0ef0 6D627374 		.ascii	"mbstowcs\000"
 8415      6F776373 
 8415      00
 8416              	.LASF277:
 8417 0ef9 5F6C3634 		.ascii	"_l64a_buf\000"
 8417      615F6275 
 8417      6600
 8418              	.LASF191:
 8419 0f03 50494F5F 		.ascii	"PIO_LSR\000"
 8419      4C535200 
ARM GAS  /tmp/ccbYIR7z.s 			page 205


 8420              	.LASF528:
 8421 0f0b 63616C6C 		.ascii	"callback\000"
 8421      6261636B 
 8421      00
 8422              	.LASF269:
 8423 0f14 5F617363 		.ascii	"_asctime_buf\000"
 8423      74696D65 
 8423      5F627566 
 8423      00
 8424              	.LASF502:
 8425 0f21 66756E63 		.ascii	"func\000"
 8425      00
 8426              	.LASF216:
 8427 0f26 5F5F7763 		.ascii	"__wch\000"
 8427      6800
 8428              	.LASF493:
 8429 0f2c 53657269 		.ascii	"SerialUSB\000"
 8429      616C5553 
 8429      4200
 8430              	.LASF96:
 8431 0f36 5443355F 		.ascii	"TC5_IRQn\000"
 8431      4952516E 
 8431      00
 8432              	.LASF284:
 8433 0f3f 5F776373 		.ascii	"_wcsrtombs_state\000"
 8433      72746F6D 
 8433      62735F73 
 8433      74617465 
 8433      00
 8434              	.LASF170:
 8435 0f50 50494F5F 		.ascii	"PIO_PUSR\000"
 8435      50555352 
 8435      00
 8436              	.LASF212:
 8437 0f59 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 8437      4B5F5245 
 8437      43555253 
 8437      4956455F 
 8437      5400
 8438              	.LASF368:
 8439 0f6b 5F5F6664 		.ascii	"__fdlibm_version\000"
 8439      6C69626D 
 8439      5F766572 
 8439      73696F6E 
 8439      00
 8440              	.LASF550:
 8441 0f7c 53657269 		.ascii	"SerialCDC\000"
 8441      616C4344 
 8441      4300
 8442              	.LASF95:
 8443 0f86 5443345F 		.ascii	"TC4_IRQn\000"
 8443      4952516E 
 8443      00
 8444              	.LASF16:
 8445 0f8f 6C6F6E67 		.ascii	"long int\000"
 8445      20696E74 
 8445      00
ARM GAS  /tmp/ccbYIR7z.s 			page 206


 8446              	.LASF276:
 8447 0f98 5F776374 		.ascii	"_wctomb_state\000"
 8447      6F6D625F 
 8447      73746174 
 8447      6500
 8448              	.LASF74:
 8449 0fa6 504D435F 		.ascii	"PMC_IRQn\000"
 8449      4952516E 
 8449      00
 8450              	.LASF86:
 8451 0faf 48534D43 		.ascii	"HSMCI_IRQn\000"
 8451      495F4952 
 8451      516E00
 8452              	.LASF23:
 8453 0fba 5F5F7569 		.ascii	"__uint_least8_t\000"
 8453      6E745F6C 
 8453      65617374 
 8453      385F7400 
 8454              	.LASF94:
 8455 0fca 5443335F 		.ascii	"TC3_IRQn\000"
 8455      4952516E 
 8455      00
 8456              	.LASF100:
 8457 0fd3 49434D5F 		.ascii	"ICM_IRQn\000"
 8457      4952516E 
 8457      00
 8458              	.LASF149:
 8459 0fdc 50494F5F 		.ascii	"PIO_ODR\000"
 8459      4F445200 
 8460              	.LASF139:
 8461 0fe4 53544952 		.ascii	"STIR\000"
 8461      00
 8462              	.LASF386:
 8463 0fe9 494E5445 		.ascii	"INTERRUPT_MODE_LOW\000"
 8463      52525550 
 8463      545F4D4F 
 8463      44455F4C 
 8463      4F5700
 8464              	.LASF314:
 8465 0ffc 5F696F62 		.ascii	"_iobs\000"
 8465      7300
 8466              	.LASF294:
 8467 1002 5F656D65 		.ascii	"_emergency\000"
 8467      7267656E 
 8467      637900
 8468              	.LASF123:
 8469 100d 50574D31 		.ascii	"PWM1_IRQn\000"
 8469      5F495251 
 8469      6E00
 8470              	.LASF280:
 8471 1017 5F6D6272 		.ascii	"_mbrlen_state\000"
 8471      6C656E5F 
 8471      73746174 
 8471      6500
 8472              	.LASF286:
 8473 1025 5F6E6578 		.ascii	"_nextf\000"
 8473      746600
ARM GAS  /tmp/ccbYIR7z.s 			page 207


 8474              	.LASF494:
 8475 102c 77726974 		.ascii	"write\000"
 8475      6500
 8476              	.LASF272:
 8477 1032 5F72616E 		.ascii	"_rand_next\000"
 8477      645F6E65 
 8477      787400
 8478              	.LASF40:
 8479 103d 696E7470 		.ascii	"intptr_t\000"
 8479      74725F74 
 8479      00
 8480              	.LASF37:
 8481 1046 75696E74 		.ascii	"uint32_t\000"
 8481      33325F74 
 8481      00
 8482              	.LASF128:
 8483 104f 49534552 		.ascii	"ISER\000"
 8483      00
 8484              	.LASF148:
 8485 1054 50494F5F 		.ascii	"PIO_OER\000"
 8485      4F455200 
 8486              	.LASF224:
 8487 105c 5F6D6178 		.ascii	"_maxwds\000"
 8487      77647300 
 8488              	.LASF499:
 8489 1064 70696F49 		.ascii	"pioInterruptPriority\000"
 8489      6E746572 
 8489      72757074 
 8489      5072696F 
 8489      72697479 
 8490              	.LASF348:
 8491 1079 73747274 		.ascii	"strtod\000"
 8491      6F6400
 8492              	.LASF41:
 8493 1080 75696E74 		.ascii	"uintptr_t\000"
 8493      7074725F 
 8493      7400
 8494              	.LASF349:
 8495 108a 73747274 		.ascii	"strtol\000"
 8495      6F6C00
 8496              	.LASF532:
 8497 1091 6269744E 		.ascii	"bitNum\000"
 8497      756D00
 8498              	.LASF4:
 8499 1098 6C6F6E67 		.ascii	"long double\000"
 8499      20646F75 
 8499      626C6500 
 8500              	.LASF333:
 8501 10a4 7375626F 		.ascii	"suboptarg\000"
 8501      70746172 
 8501      6700
 8502              	.LASF393:
 8503 10ae 4E4F545F 		.ascii	"NOT_ON_PWM\000"
 8503      4F4E5F50 
 8503      574D00
 8504              	.LASF119:
 8505 10b9 4145535F 		.ascii	"AES_IRQn\000"
ARM GAS  /tmp/ccbYIR7z.s 			page 208


 8505      4952516E 
 8505      00
 8506              	.LASF18:
 8507 10c2 6C6F6E67 		.ascii	"long unsigned int\000"
 8507      20756E73 
 8507      69676E65 
 8507      6420696E 
 8507      7400
 8508              	.LASF362:
 8509 10d4 626F6F6C 		.ascii	"bool\000"
 8509      00
 8510              	.LASF521:
 8511 10d9 5F5A3136 		.ascii	"_Z16CommonPioHandlerP3PioPK17InterruptCallback\000"
 8511      436F6D6D 
 8511      6F6E5069 
 8511      6F48616E 
 8511      646C6572 
 8512              	.LASF531:
 8513 1108 62697473 		.ascii	"bits\000"
 8513      00
 8514              	.LASF524:
 8515 110d 696E496E 		.ascii	"inInterrupt\000"
 8515      74657272 
 8515      75707400 
 8516              	.LASF257:
 8517 1119 5F636C6F 		.ascii	"_close\000"
 8517      736500
 8518              	.LASF310:
 8519 1120 63686172 		.ascii	"char\000"
 8519      00
 8520              	.LASF312:
 8521 1125 5F676C75 		.ascii	"_glue\000"
 8521      6500
 8522              	.LASF107:
 8523 112b 54574948 		.ascii	"TWIHS2_IRQn\000"
 8523      53325F49 
 8523      52516E00 
 8524              	.LASF530:
 8525 1137 656E6162 		.ascii	"enabled\000"
 8525      6C656400 
 8526              	.LASF45:
 8527 113f 75696E74 		.ascii	"uint_least16_t\000"
 8527      5F6C6561 
 8527      73743136 
 8527      5F7400
 8528              	.LASF552:
 8529 114e 5F5F7374 		.ascii	"__static_initialization_and_destruction_0\000"
 8529      61746963 
 8529      5F696E69 
 8529      7469616C 
 8529      697A6174 
 8530              	.LASF525:
 8531 1178 61747461 		.ascii	"attachInterrupt\000"
 8531      6368496E 
 8531      74657272 
 8531      75707400 
 8532              	.LASF83:
ARM GAS  /tmp/ccbYIR7z.s 			page 209


 8533 1188 55534152 		.ascii	"USART2_IRQn\000"
 8533      54325F49 
 8533      52516E00 
 8534              	.LASF88:
 8535 1194 54574948 		.ascii	"TWIHS1_IRQn\000"
 8535      53315F49 
 8535      52516E00 
 8536              	.LASF118:
 8537 11a0 54433131 		.ascii	"TC11_IRQn\000"
 8537      5F495251 
 8537      6E00
 8538              	.LASF227:
 8539 11aa 5F426967 		.ascii	"_Bigint\000"
 8539      696E7400 
 8540              	.LASF56:
 8541 11b2 696E745F 		.ascii	"int_fast64_t\000"
 8541      66617374 
 8541      36345F74 
 8541      00
 8542              	.LASF31:
 8543 11bf 5F5F7569 		.ascii	"__uintptr_t\000"
 8543      6E747074 
 8543      725F7400 
 8544              	.LASF82:
 8545 11cb 55534152 		.ascii	"USART1_IRQn\000"
 8545      54315F49 
 8545      52516E00 
 8546              	.LASF468:
 8547 11d7 675F4150 		.ascii	"g_APinDescription\000"
 8547      696E4465 
 8547      73637269 
 8547      7074696F 
 8547      6E00
 8548              	.LASF306:
 8549 11e9 5F617465 		.ascii	"_atexit0\000"
 8549      78697430 
 8549      00
 8550              	.LASF279:
 8551 11f2 5F676574 		.ascii	"_getdate_err\000"
 8551      64617465 
 8551      5F657272 
 8551      00
 8552              	.LASF98:
 8553 11ff 44414343 		.ascii	"DACC_IRQn\000"
 8553      5F495251 
 8553      6E00
 8554              	.LASF355:
 8555 1209 61746F6C 		.ascii	"atoll\000"
 8555      6C00
 8556              	.LASF145:
 8557 120f 50494F5F 		.ascii	"PIO_PDR\000"
 8557      50445200 
 8558              	.LASF57:
 8559 1217 75696E74 		.ascii	"uint_fast64_t\000"
 8559      5F666173 
 8559      7436345F 
 8559      7400
ARM GAS  /tmp/ccbYIR7z.s 			page 210


 8560              	.LASF69:
 8561 1225 53555043 		.ascii	"SUPC_IRQn\000"
 8561      5F495251 
 8561      6E00
 8562              	.LASF339:
 8563 122f 62736561 		.ascii	"bsearch\000"
 8563      72636800 
 8564              	.LASF469:
 8565 1237 5F5F6374 		.ascii	"__ctype_ptr__\000"
 8565      7970655F 
 8565      7074725F 
 8565      5F00
 8566              	.LASF144:
 8567 1245 50494F5F 		.ascii	"PIO_PER\000"
 8567      50455200 
 8568              	.LASF378:
 8569 124d 50494F5F 		.ascii	"PIO_PERIPH_C\000"
 8569      50455249 
 8569      50485F43 
 8569      00
 8570              	.LASF319:
 8571 125a 5F696D70 		.ascii	"_impure_ptr\000"
 8571      7572655F 
 8571      70747200 
 8572              	.LASF260:
 8573 1266 5F626C6B 		.ascii	"_blksize\000"
 8573      73697A65 
 8573      00
 8574              	.LASF258:
 8575 126f 5F756275 		.ascii	"_ubuf\000"
 8575      6600
 8576              	.LASF274:
 8577 1275 5F6D626C 		.ascii	"_mblen_state\000"
 8577      656E5F73 
 8577      74617465 
 8577      00
 8578              	.LASF308:
 8579 1282 5F5F7367 		.ascii	"__sglue\000"
 8579      6C756500 
 8580              	.LASF367:
 8581 128a 4952516E 		.ascii	"IRQn\000"
 8581      00
 8582              	.LASF491:
 8583 128f 53657269 		.ascii	"Serial\000"
 8583      616C00
 8584              	.LASF298:
 8585 1296 5F5F636C 		.ascii	"__cleanup\000"
 8585      65616E75 
 8585      7000
 8586              	.LASF38:
 8587 12a0 696E7436 		.ascii	"int64_t\000"
 8587      345F7400 
 8588              	.LASF464:
 8589 12a8 756C5069 		.ascii	"ulPinAttribute\000"
 8589      6E417474 
 8589      72696275 
 8589      746500
ARM GAS  /tmp/ccbYIR7z.s 			page 211


 8590              	.LASF535:
 8591 12b7 5F5A4E31 		.ascii	"_ZN17CallbackParameterC2Ev\000"
 8591      3743616C 
 8591      6C626163 
 8591      6B506172 
 8591      616D6574 
 8592              	.LASF206:
 8593 12d2 50494F5F 		.ascii	"PIO_PCMR\000"
 8593      50434D52 
 8593      00
 8594              	.LASF214:
 8595 12db 5F66706F 		.ascii	"_fpos_t\000"
 8595      735F7400 
 8596              	.LASF251:
 8597 12e3 5F66696C 		.ascii	"_file\000"
 8597      6500
 8598              	.LASF43:
 8599 12e9 75696E74 		.ascii	"uint_least8_t\000"
 8599      5F6C6561 
 8599      7374385F 
 8599      7400
 8600              	.LASF341:
 8601 12f7 6C646976 		.ascii	"ldiv\000"
 8601      00
 8602              	.LASF249:
 8603 12fc 5F5F7346 		.ascii	"__sFILE\000"
 8603      494C4500 
 8604              	.LASF467:
 8605 1304 756C5443 		.ascii	"ulTCChannel\000"
 8605      4368616E 
 8605      6E656C00 
 8606              	.LASF488:
 8607 1310 4D617850 		.ascii	"MaxPinNumber\000"
 8607      696E4E75 
 8607      6D626572 
 8607      00
 8608              	.LASF336:
 8609 131d 646F7562 		.ascii	"double\000"
 8609      6C6500
 8610              	.LASF245:
 8611 1324 5F666E73 		.ascii	"_fns\000"
 8611      00
 8612              	.LASF154:
 8613 1329 50494F5F 		.ascii	"PIO_IFSR\000"
 8613      49465352 
 8613      00
 8614              	.LASF85:
 8615 1332 50494F45 		.ascii	"PIOE_IRQn\000"
 8615      5F495251 
 8615      6E00
 8616              	.LASF220:
 8617 133c 5F6D6273 		.ascii	"_mbstate_t\000"
 8617      74617465 
 8617      5F7400
 8618              	.LASF285:
 8619 1347 5F685F65 		.ascii	"_h_errno\000"
 8619      72726E6F 
ARM GAS  /tmp/ccbYIR7z.s 			page 212


 8619      00
 8620              	.LASF99:
 8621 1350 50574D30 		.ascii	"PWM0_IRQn\000"
 8621      5F495251 
 8621      6E00
 8622              	.LASF29:
 8623 135a 5F5F7569 		.ascii	"__uint_least64_t\000"
 8623      6E745F6C 
 8623      65617374 
 8623      36345F74 
 8623      00
 8624              	.LASF124:
 8625 136b 53445241 		.ascii	"SDRAMC_IRQn\000"
 8625      4D435F49 
 8625      52516E00 
 8626              	.LASF15:
 8627 1377 5F5F696E 		.ascii	"__int32_t\000"
 8627      7433325F 
 8627      7400
 8628              	.LASF17:
 8629 1381 5F5F7569 		.ascii	"__uint32_t\000"
 8629      6E743332 
 8629      5F7400
 8630              	.LASF346:
 8631 138c 71736F72 		.ascii	"qsort\000"
 8631      7400
 8632              	.LASF507:
 8633 1392 63616C6C 		.ascii	"callbacksPioB\000"
 8633      6261636B 
 8633      7350696F 
 8633      4200
 8634              	.LASF24:
 8635 13a0 5F5F696E 		.ascii	"__int_least16_t\000"
 8635      745F6C65 
 8635      61737431 
 8635      365F7400 
 8636              	.LASF187:
 8637 13b0 50494F5F 		.ascii	"PIO_AIMDR\000"
 8637      41494D44 
 8637      5200
 8638              	.LASF68:
 8639 13ba 53797354 		.ascii	"SysTick_IRQn\000"
 8639      69636B5F 
 8639      4952516E 
 8639      00
 8640              	.LASF219:
 8641 13c7 5F5F7661 		.ascii	"__value\000"
 8641      6C756500 
 8642              	.LASF242:
 8643 13cf 5F69735F 		.ascii	"_is_cxa\000"
 8643      63786100 
 8644              	.LASF551:
 8645 13d7 5F474C4F 		.ascii	"_GLOBAL__sub_I__Z15attachInterruptmPFv17CallbackPar"
 8645      42414C5F 
 8645      5F737562 
 8645      5F495F5F 
 8645      5A313561 
ARM GAS  /tmp/ccbYIR7z.s 			page 213


 8646 140a 616D6574 		.ascii	"ameterE13InterruptModeS_\000"
 8646      65724531 
 8646      33496E74 
 8646      65727275 
 8646      70744D6F 
 8647              	.LASF73:
 8648 1423 5744545F 		.ascii	"WDT_IRQn\000"
 8648      4952516E 
 8648      00
 8649              	.LASF174:
 8650 142c 50494F5F 		.ascii	"PIO_IFSCDR\000"
 8650      49465343 
 8650      445200
 8651              	.LASF301:
 8652 1437 5F703573 		.ascii	"_p5s\000"
 8652      00
 8653              	.LASF413:
 8654 143c 5443315F 		.ascii	"TC1_CHA4\000"
 8654      43484134 
 8654      00
 8655              	.LASF415:
 8656 1445 5443315F 		.ascii	"TC1_CHA5\000"
 8656      43484135 
 8656      00
 8657              	.LASF186:
 8658 144e 50494F5F 		.ascii	"PIO_AIMER\000"
 8658      41494D45 
 8658      5200
 8659              	.LASF60:
 8660 1458 4E6F6E4D 		.ascii	"NonMaskableInt_IRQn\000"
 8660      61736B61 
 8660      626C6549 
 8660      6E745F49 
 8660      52516E00 
 8661              	.LASF121:
 8662 146c 58444D41 		.ascii	"XDMAC_IRQn\000"
 8662      435F4952 
 8662      516E00
 8663              	.LASF129:
 8664 1477 52455345 		.ascii	"RESERVED0\000"
 8664      52564544 
 8664      3000
 8665              	.LASF133:
 8666 1481 52455345 		.ascii	"RESERVED2\000"
 8666      52564544 
 8666      3200
 8667              	.LASF135:
 8668 148b 52455345 		.ascii	"RESERVED3\000"
 8668      52564544 
 8668      3300
 8669              	.LASF137:
 8670 1495 52455345 		.ascii	"RESERVED4\000"
 8670      52564544 
 8670      3400
 8671              	.LASF138:
 8672 149f 52455345 		.ascii	"RESERVED5\000"
 8672      52564544 
ARM GAS  /tmp/ccbYIR7z.s 			page 214


 8672      3500
 8673              	.LASF283:
 8674 14a9 5F776372 		.ascii	"_wcrtomb_state\000"
 8674      746F6D62 
 8674      5F737461 
 8674      746500
 8675              	.LASF175:
 8676 14b8 50494F5F 		.ascii	"PIO_IFSCER\000"
 8676      49465343 
 8676      455200
 8677              	.LASF325:
 8678 14c3 35646976 		.ascii	"5div_t\000"
 8678      5F7400
 8679              	.LASF132:
 8680 14ca 49535052 		.ascii	"ISPR\000"
 8680      00
 8681              	.LASF327:
 8682 14cf 6469765F 		.ascii	"div_t\000"
 8682      7400
 8683              	.LASF553:
 8684 14d5 47657448 		.ascii	"GetHighestBit\000"
 8684      69676865 
 8684      73744269 
 8684      7400
 8685              	.LASF345:
 8686 14e3 6D62746F 		.ascii	"mbtowc\000"
 8686      776300
 8687              	.LASF426:
 8688 14ea 41444330 		.ascii	"ADC0\000"
 8688      00
 8689              	.LASF474:
 8690 14ef 5F74696D 		.ascii	"_timezone\000"
 8690      657A6F6E 
 8690      6500
 8691              	.LASF142:
 8692 14f9 49544D5F 		.ascii	"ITM_RxBuffer\000"
 8692      52784275 
 8692      66666572 
 8692      00
 8693              	.LASF194:
 8694 1506 50494F5F 		.ascii	"PIO_FELLSR\000"
 8694      46454C4C 
 8694      535200
 8695              	.LASF21:
 8696 1511 6C6F6E67 		.ascii	"long long unsigned int\000"
 8696      206C6F6E 
 8696      6720756E 
 8696      7369676E 
 8696      65642069 
 8697              	.LASF101:
 8698 1528 4143435F 		.ascii	"ACC_IRQn\000"
 8698      4952516E 
 8698      00
 8699              	.LASF332:
 8700 1531 5F5F636F 		.ascii	"__compar_fn_t\000"
 8700      6D706172 
 8700      5F666E5F 
ARM GAS  /tmp/ccbYIR7z.s 			page 215


 8700      7400
 8701              	.LASF271:
 8702 153f 5F67616D 		.ascii	"_gamma_signgam\000"
 8702      6D615F73 
 8702      69676E67 
 8702      616D00
 8703              	.LASF136:
 8704 154e 49414252 		.ascii	"IABR\000"
 8704      00
 8705              	.LASF423:
 8706 1553 45544343 		.ascii	"ETCChannel\000"
 8706      68616E6E 
 8706      656C00
 8707              	.LASF547:
 8708 155e 5F5A5374 		.ascii	"_ZSt4modfePe\000"
 8708      346D6F64 
 8708      66655065 
 8708      00
 8709              	.LASF295:
 8710 156b 5F637572 		.ascii	"_current_category\000"
 8710      72656E74 
 8710      5F636174 
 8710      65676F72 
 8710      7900
 8711              	.LASF501:
 8712 157d 496E7465 		.ascii	"InterruptCallback\000"
 8712      72727570 
 8712      7443616C 
 8712      6C626163 
 8712      6B00
 8713              	.LASF320:
 8714 158f 5F676C6F 		.ascii	"_global_impure_ptr\000"
 8714      62616C5F 
 8714      696D7075 
 8714      72655F70 
 8714      747200
 8715              	.LASF150:
 8716 15a2 50494F5F 		.ascii	"PIO_OSR\000"
 8716      4F535200 
 8717              	.LASF50:
 8718 15aa 696E745F 		.ascii	"int_fast8_t\000"
 8718      66617374 
 8718      385F7400 
 8719              	.LASF340:
 8720 15b6 67657465 		.ascii	"getenv\000"
 8720      6E7600
 8721              	.LASF297:
 8722 15bd 5F5F7364 		.ascii	"__sdidinit\000"
 8722      6964696E 
 8722      697400
 8723              	.LASF372:
 8724 15c8 5F5F6664 		.ascii	"__fdlibm_posix\000"
 8724      6C69626D 
 8724      5F706F73 
 8724      697800
 8725              	.LASF519:
 8726 15d7 436F6D6D 		.ascii	"CommonPioHandler\000"
ARM GAS  /tmp/ccbYIR7z.s 			page 216


 8726      6F6E5069 
 8726      6F48616E 
 8726      646C6572 
 8726      00
 8727              	.LASF549:
 8728 15e8 72616E64 		.ascii	"rand\000"
 8728      00
 8729              	.LASF221:
 8730 15ed 5F666C6F 		.ascii	"_flock_t\000"
 8730      636B5F74 
 8730      00
 8731              	.LASF67:
 8732 15f6 50656E64 		.ascii	"PendSV_IRQn\000"
 8732      53565F49 
 8732      52516E00 
 8733              	.LASF473:
 8734 1602 55415254 		.ascii	"UARTClass\000"
 8734      436C6173 
 8734      7300
 8735              	.LASF3:
 8736 160c 6C6F6E67 		.ascii	"long long int\000"
 8736      206C6F6E 
 8736      6720696E 
 8736      7400
 8737              	.LASF190:
 8738 161a 50494F5F 		.ascii	"PIO_ESR\000"
 8738      45535200 
 8739              	.LASF265:
 8740 1622 5F666C61 		.ascii	"_flags2\000"
 8740      67733200 
 8741              	.LASF208:
 8742 162a 50494F5F 		.ascii	"PIO_PCIDR\000"
 8742      50434944 
 8742      5200
 8743              	.LASF199:
 8744 1634 50494F5F 		.ascii	"PIO_WPMR\000"
 8744      57504D52 
 8744      00
 8745              	.LASF477:
 8746 163d 4150494E 		.ascii	"APINS_UART0\000"
 8746      535F5541 
 8746      52543000 
 8747              	.LASF480:
 8748 1649 4150494E 		.ascii	"APINS_UART1\000"
 8748      535F5541 
 8748      52543100 
 8749              	.LASF44:
 8750 1655 696E745F 		.ascii	"int_least16_t\000"
 8750      6C656173 
 8750      7431365F 
 8750      7400
 8751              	.LASF548:
 8752 1663 5F5A4E39 		.ascii	"_ZN9__gnu_cxx3divExx\000"
 8752      5F5F676E 
 8752      755F6378 
 8752      78336469 
 8752      76457878 
ARM GAS  /tmp/ccbYIR7z.s 			page 217


 8753              	.LASF364:
 8754 1678 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 8754      6972715F 
 8754      70726576 
 8754      5F696E74 
 8754      65727275 
 8755              	.LASF77:
 8756 1695 55415254 		.ascii	"UART1_IRQn\000"
 8756      315F4952 
 8756      516E00
 8757              	.LASF188:
 8758 16a0 50494F5F 		.ascii	"PIO_AIMMR\000"
 8758      41494D4D 
 8758      5200
 8759              	.LASF374:
 8760 16aa 5F70696F 		.ascii	"_pio_type\000"
 8760      5F747970 
 8760      6500
 8761              	.LASF311:
 8762 16b4 5F5F4649 		.ascii	"__FILE\000"
 8762      4C4500
 8763              	.LASF402:
 8764 16bb 4550574D 		.ascii	"EPWMChannel\000"
 8764      4368616E 
 8764      6E656C00 
 8765              	.LASF76:
 8766 16c7 55415254 		.ascii	"UART0_IRQn\000"
 8766      305F4952 
 8766      516E00
 8767              	.LASF498:
 8768 16d2 5F5A4E31 		.ascii	"_ZN17CallbackParameterC4Em\000"
 8768      3743616C 
 8768      6C626163 
 8768      6B506172 
 8768      616D6574 
 8769              	.LASF357:
 8770 16ed 73747274 		.ascii	"strtoull\000"
 8770      6F756C6C 
 8770      00
 8771              	.LASF504:
 8772 16f6 5F5A4E31 		.ascii	"_ZN17CallbackParameterC4Ev\000"
 8772      3743616C 
 8772      6C626163 
 8772      6B506172 
 8772      616D6574 
 8773              	.LASF496:
 8774 1711 5F5A4E35 		.ascii	"_ZN5Print5writeEPKcj\000"
 8774      5072696E 
 8774      74357772 
 8774      69746545 
 8774      504B636A 
 8775              	.LASF225:
 8776 1726 5F736967 		.ascii	"_sign\000"
 8776      6E00
 8777              	.LASF7:
 8778 172c 5F5F696E 		.ascii	"__int8_t\000"
 8778      74385F74 
ARM GAS  /tmp/ccbYIR7z.s 			page 218


 8778      00
 8779              	.LASF159:
 8780 1735 50494F5F 		.ascii	"PIO_PDSR\000"
 8780      50445352 
 8780      00
 8781              	.LASF230:
 8782 173e 5F5F746D 		.ascii	"__tm_min\000"
 8782      5F6D696E 
 8782      00
 8783              	.LASF78:
 8784 1747 50494F41 		.ascii	"PIOA_IRQn\000"
 8784      5F495251 
 8784      6E00
 8785              	.LASF541:
 8786 1751 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70\000"
 8786      652F746F 
 8786      72626A6F 
 8786      726E2F65 
 8786      636C6970 
 8787              	.LASF196:
 8788 1780 50494F5F 		.ascii	"PIO_FRLHSR\000"
 8788      46524C48 
 8788      535200
 8789              	.LASF147:
 8790 178b 52657365 		.ascii	"Reserved1\000"
 8790      72766564 
 8790      3100
 8791              	.LASF151:
 8792 1795 52657365 		.ascii	"Reserved2\000"
 8792      72766564 
 8792      3200
 8793              	.LASF155:
 8794 179f 52657365 		.ascii	"Reserved3\000"
 8794      72766564 
 8794      3300
 8795              	.LASF167:
 8796 17a9 52657365 		.ascii	"Reserved4\000"
 8796      72766564 
 8796      3400
 8797              	.LASF171:
 8798 17b3 52657365 		.ascii	"Reserved5\000"
 8798      72766564 
 8798      3500
 8799              	.LASF173:
 8800 17bd 52657365 		.ascii	"Reserved6\000"
 8800      72766564 
 8800      3600
 8801              	.LASF181:
 8802 17c7 52657365 		.ascii	"Reserved7\000"
 8802      72766564 
 8802      3700
 8803              	.LASF185:
 8804 17d1 52657365 		.ascii	"Reserved8\000"
 8804      72766564 
 8804      3800
 8805              	.LASF189:
 8806 17db 52657365 		.ascii	"Reserved9\000"
ARM GAS  /tmp/ccbYIR7z.s 			page 219


 8806      72766564 
 8806      3900
 8807              	.LASF0:
 8808 17e5 756E7369 		.ascii	"unsigned int\000"
 8808      676E6564 
 8808      20696E74 
 8808      00
 8809              	.LASF273:
 8810 17f2 5F723438 		.ascii	"_r48\000"
 8810      00
 8811              	.LASF146:
 8812 17f7 50494F5F 		.ascii	"PIO_PSR\000"
 8812      50535200 
 8813              	.LASF492:
 8814 17ff 53657269 		.ascii	"Serial1\000"
 8814      616C3100 
 8815              	.LASF466:
 8816 1807 756C5057 		.ascii	"ulPWMChannel\000"
 8816      4D436861 
 8816      6E6E656C 
 8816      00
 8817              	.LASF323:
 8818 1814 5F5F6378 		.ascii	"__cxx11\000"
 8818      78313100 
 8819              	.LASF51:
 8820 181c 75696E74 		.ascii	"uint_fast8_t\000"
 8820      5F666173 
 8820      74385F74 
 8820      00
 8821              	.LASF183:
 8822 1829 50494F5F 		.ascii	"PIO_OWDR\000"
 8822      4F574452 
 8822      00
 8823              	.LASF536:
 8824 1832 4E564943 		.ascii	"NVIC_ClearPendingIRQ\000"
 8824      5F436C65 
 8824      61725065 
 8824      6E64696E 
 8824      67495251 
 8825              	.LASF12:
 8826 1847 73686F72 		.ascii	"short int\000"
 8826      7420696E 
 8826      7400
 8827              	.LASF103:
 8828 1851 4D43414E 		.ascii	"MCAN0_IRQn\000"
 8828      305F4952 
 8828      516E00
 8829              	.LASF254:
 8830 185c 5F726561 		.ascii	"_read\000"
 8830      6400
 8831              	.LASF388:
 8832 1862 494E5445 		.ascii	"INTERRUPT_MODE_CHANGE\000"
 8832      52525550 
 8832      545F4D4F 
 8832      44455F43 
 8832      48414E47 
 8833              	.LASF315:
ARM GAS  /tmp/ccbYIR7z.s 			page 220


 8834 1878 5F72616E 		.ascii	"_rand48\000"
 8834      64343800 
 8835              	.LASF487:
 8836 1880 4150494E 		.ascii	"APINS_GMAC_PHY\000"
 8836      535F474D 
 8836      41435F50 
 8836      485900
 8837              	.LASF115:
 8838 188f 5443385F 		.ascii	"TC8_IRQn\000"
 8838      4952516E 
 8838      00
 8839              	.LASF554:
 8840 1898 5F5F696E 		.ascii	"__initialize\000"
 8840      69746961 
 8840      6C697A65 
 8840      00
 8841              	.LASF518:
 8842 18a5 63616C6C 		.ascii	"callbacks\000"
 8842      6261636B 
 8842      7300
 8843              	.LASF106:
 8844 18af 41464543 		.ascii	"AFEC1_IRQn\000"
 8844      315F4952 
 8844      516E00
 8845              	.LASF178:
 8846 18ba 50494F5F 		.ascii	"PIO_PPDDR\000"
 8846      50504444 
 8846      5200
 8847              	.LASF63:
 8848 18c4 42757346 		.ascii	"BusFault_IRQn\000"
 8848      61756C74 
 8848      5F495251 
 8848      6E00
 8849              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
