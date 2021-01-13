ARM GAS  /tmp/cc82ZubX.s 			page 1


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
  12              		.file	"wiring_shift.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.shiftIn,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	shiftIn
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	shiftIn, %function
  25              	shiftIn:
  26              	.LFB227:
  27              		.file 1 "../cores/arduino/wiring_shift.c"
   1:../cores/arduino/wiring_shift.c **** /*
   2:../cores/arduino/wiring_shift.c ****   Copyright (c) 2011 Arduino.  All right reserved.
   3:../cores/arduino/wiring_shift.c **** 
   4:../cores/arduino/wiring_shift.c ****   This library is free software; you can redistribute it and/or
   5:../cores/arduino/wiring_shift.c ****   modify it under the terms of the GNU Lesser General Public
   6:../cores/arduino/wiring_shift.c ****   License as published by the Free Software Foundation; either
   7:../cores/arduino/wiring_shift.c ****   version 2.1 of the License, or (at your option) any later version.
   8:../cores/arduino/wiring_shift.c **** 
   9:../cores/arduino/wiring_shift.c ****   This library is distributed in the hope that it will be useful,
  10:../cores/arduino/wiring_shift.c ****   but WITHOUT ANY WARRANTY; without even the implied warranty of
  11:../cores/arduino/wiring_shift.c ****   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
  12:../cores/arduino/wiring_shift.c ****   See the GNU Lesser General Public License for more details.
  13:../cores/arduino/wiring_shift.c **** 
  14:../cores/arduino/wiring_shift.c ****   You should have received a copy of the GNU Lesser General Public
  15:../cores/arduino/wiring_shift.c ****   License along with this library; if not, write to the Free Software
  16:../cores/arduino/wiring_shift.c ****   Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
  17:../cores/arduino/wiring_shift.c **** */
  18:../cores/arduino/wiring_shift.c **** 
  19:../cores/arduino/wiring_shift.c **** #include "Core.h"
  20:../cores/arduino/wiring_shift.c **** 
  21:../cores/arduino/wiring_shift.c **** #ifdef __cplusplus
  22:../cores/arduino/wiring_shift.c **** extern "C"{
  23:../cores/arduino/wiring_shift.c **** #endif
  24:../cores/arduino/wiring_shift.c **** 
  25:../cores/arduino/wiring_shift.c **** uint32_t shiftIn( uint32_t ulDataPin, uint32_t ulClockPin, uint32_t ulBitOrder )
  26:../cores/arduino/wiring_shift.c **** {
  28              		.loc 1 26 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/cc82ZubX.s 			page 2


  32              	.LVL0:
  33 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  34              		.cfi_def_cfa_offset 24
  35              		.cfi_offset 4, -24
  36              		.cfi_offset 5, -20
  37              		.cfi_offset 6, -16
  38              		.cfi_offset 7, -12
  39              		.cfi_offset 8, -8
  40              		.cfi_offset 14, -4
  41              		.loc 1 26 0
  42 0004 9046     		mov	r8, r2
  43 0006 CEB2     		uxtb	r6, r1
  44 0008 C7B2     		uxtb	r7, r0
  45 000a 0725     		movs	r5, #7
  27:../cores/arduino/wiring_shift.c **** 	uint8_t value = 0 ;
  46              		.loc 1 27 0
  47 000c 0024     		movs	r4, #0
  48 000e 0DE0     		b	.L4
  49              	.LVL1:
  50              	.L9:
  28:../cores/arduino/wiring_shift.c **** 	uint8_t i ;
  29:../cores/arduino/wiring_shift.c **** 
  30:../cores/arduino/wiring_shift.c **** 	for ( i=0 ; i < 8 ; ++i )
  31:../cores/arduino/wiring_shift.c ****     {
  32:../cores/arduino/wiring_shift.c **** 		digitalWrite( ulClockPin, HIGH ) ;
  33:../cores/arduino/wiring_shift.c **** 
  34:../cores/arduino/wiring_shift.c **** 		if ( ulBitOrder == LSBFIRST )
  35:../cores/arduino/wiring_shift.c ****         {
  36:../cores/arduino/wiring_shift.c **** 			value |= (digitalRead( ulDataPin ) ? 1 : 0) << i ;
  51              		.loc 1 36 0
  52 0010 FFF7FEFF 		bl	digitalRead
  53              	.LVL2:
  54 0014 C5F10703 		rsb	r3, r5, #7
  55 0018 9840     		lsls	r0, r0, r3
  56 001a 0443     		orrs	r4, r4, r0
  57              	.LVL3:
  58 001c E4B2     		uxtb	r4, r4
  59              	.LVL4:
  60              	.L3:
  61 001e 013D     		subs	r5, r5, #1
  62              	.LVL5:
  37:../cores/arduino/wiring_shift.c ****         }
  38:../cores/arduino/wiring_shift.c **** 		else
  39:../cores/arduino/wiring_shift.c ****         {
  40:../cores/arduino/wiring_shift.c **** 			value |= (digitalRead( ulDataPin ) ? 1 : 0) << (7 - i) ;
  41:../cores/arduino/wiring_shift.c ****         }
  42:../cores/arduino/wiring_shift.c **** 
  43:../cores/arduino/wiring_shift.c **** 		digitalWrite( ulClockPin, LOW ) ;
  63              		.loc 1 43 0 discriminator 2
  64 0020 0021     		movs	r1, #0
  65 0022 3046     		mov	r0, r6
  66 0024 FFF7FEFF 		bl	digitalWrite
  67              	.LVL6:
  30:../cores/arduino/wiring_shift.c ****     {
  68              		.loc 1 30 0 discriminator 2
  69 0028 6B1C     		adds	r3, r5, #1
  70 002a 0ED0     		beq	.L8
ARM GAS  /tmp/cc82ZubX.s 			page 3


  71              	.LVL7:
  72              	.L4:
  32:../cores/arduino/wiring_shift.c **** 
  73              		.loc 1 32 0
  74 002c 3046     		mov	r0, r6
  75 002e 0121     		movs	r1, #1
  76 0030 FFF7FEFF 		bl	digitalWrite
  77              	.LVL8:
  36:../cores/arduino/wiring_shift.c ****         }
  78              		.loc 1 36 0
  79 0034 3846     		mov	r0, r7
  34:../cores/arduino/wiring_shift.c ****         {
  80              		.loc 1 34 0
  81 0036 B8F1000F 		cmp	r8, #0
  82 003a E9D0     		beq	.L9
  40:../cores/arduino/wiring_shift.c ****         }
  83              		.loc 1 40 0
  84 003c 3846     		mov	r0, r7
  85 003e FFF7FEFF 		bl	digitalRead
  86              	.LVL9:
  87 0042 A840     		lsls	r0, r0, r5
  88 0044 0443     		orrs	r4, r4, r0
  89              	.LVL10:
  90 0046 E4B2     		uxtb	r4, r4
  91              	.LVL11:
  92 0048 E9E7     		b	.L3
  93              	.LVL12:
  94              	.L8:
  44:../cores/arduino/wiring_shift.c **** 	}
  45:../cores/arduino/wiring_shift.c **** 
  46:../cores/arduino/wiring_shift.c **** 	return value ;
  47:../cores/arduino/wiring_shift.c **** }
  95              		.loc 1 47 0
  96 004a 2046     		mov	r0, r4
  97 004c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  98              		.cfi_endproc
  99              	.LFE227:
 100              		.size	shiftIn, .-shiftIn
 101              		.section	.text.shiftOut,"ax",%progbits
 102              		.align	1
 103              		.p2align 2,,3
 104              		.global	shiftOut
 105              		.syntax unified
 106              		.thumb
 107              		.thumb_func
 108              		.fpu fpv5-d16
 109              		.type	shiftOut, %function
 110              	shiftOut:
 111              	.LFB228:
  48:../cores/arduino/wiring_shift.c **** 
  49:../cores/arduino/wiring_shift.c **** void shiftOut( uint32_t ulDataPin, uint32_t ulClockPin, uint32_t ulBitOrder, uint32_t ulVal )
  50:../cores/arduino/wiring_shift.c **** {
 112              		.loc 1 50 0
 113              		.cfi_startproc
 114              		@ args = 0, pretend = 0, frame = 0
 115              		@ frame_needed = 0, uses_anonymous_args = 0
 116              	.LVL13:
ARM GAS  /tmp/cc82ZubX.s 			page 4


 117 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 118              		.cfi_def_cfa_offset 32
 119              		.cfi_offset 3, -32
 120              		.cfi_offset 4, -28
 121              		.cfi_offset 5, -24
 122              		.cfi_offset 6, -20
 123              		.cfi_offset 7, -16
 124              		.cfi_offset 8, -12
 125              		.cfi_offset 9, -8
 126              		.cfi_offset 14, -4
 127              		.loc 1 50 0
 128 0004 9146     		mov	r9, r2
 129 0006 9846     		mov	r8, r3
 130 0008 CDB2     		uxtb	r5, r1
 131 000a 0724     		movs	r4, #7
 132 000c C7B2     		uxtb	r7, r0
  51:../cores/arduino/wiring_shift.c **** 	uint8_t i ;
  52:../cores/arduino/wiring_shift.c **** 
  53:../cores/arduino/wiring_shift.c **** 	for ( i=0 ; i < 8 ; i++ )
  54:../cores/arduino/wiring_shift.c ****     {
  55:../cores/arduino/wiring_shift.c **** 		if ( ulBitOrder == LSBFIRST )
  56:../cores/arduino/wiring_shift.c ****         {
  57:../cores/arduino/wiring_shift.c **** 			digitalWrite( ulDataPin, !!(ulVal & (1 << i)) ) ;
  58:../cores/arduino/wiring_shift.c ****         }
  59:../cores/arduino/wiring_shift.c **** 		else	
  60:../cores/arduino/wiring_shift.c ****         {
  61:../cores/arduino/wiring_shift.c **** 			digitalWrite( ulDataPin, !!(ulVal & (1 << (7 - i))) ) ;
 133              		.loc 1 61 0
 134 000e 0126     		movs	r6, #1
 135 0010 13E0     		b	.L13
 136              	.LVL14:
 137              	.L17:
  57:../cores/arduino/wiring_shift.c ****         }
 138              		.loc 1 57 0
 139 0012 06FA03F3 		lsl	r3, r6, r3
 140 0016 13EA080F 		tst	r3, r8
 141 001a 14BF     		ite	ne
 142 001c 0121     		movne	r1, #1
 143 001e 0021     		moveq	r1, #0
 144 0020 FFF7FEFF 		bl	digitalWrite
 145              	.LVL15:
 146              	.L12:
  62:../cores/arduino/wiring_shift.c ****         }
  63:../cores/arduino/wiring_shift.c **** 
  64:../cores/arduino/wiring_shift.c **** 		digitalWrite( ulClockPin, HIGH ) ;
 147              		.loc 1 64 0 discriminator 2
 148 0024 0121     		movs	r1, #1
 149 0026 2846     		mov	r0, r5
 150 0028 013C     		subs	r4, r4, #1
 151              	.LVL16:
 152 002a FFF7FEFF 		bl	digitalWrite
 153              	.LVL17:
  65:../cores/arduino/wiring_shift.c **** 		digitalWrite( ulClockPin, LOW ) ;		
 154              		.loc 1 65 0 discriminator 2
 155 002e 0021     		movs	r1, #0
 156 0030 2846     		mov	r0, r5
 157 0032 FFF7FEFF 		bl	digitalWrite
ARM GAS  /tmp/cc82ZubX.s 			page 5


 158              	.LVL18:
  53:../cores/arduino/wiring_shift.c ****     {
 159              		.loc 1 53 0 discriminator 2
 160 0036 631C     		adds	r3, r4, #1
 161 0038 10D0     		beq	.L16
 162              	.L13:
 163              	.LVL19:
  57:../cores/arduino/wiring_shift.c ****         }
 164              		.loc 1 57 0
 165 003a C4F10703 		rsb	r3, r4, #7
  61:../cores/arduino/wiring_shift.c ****         }
 166              		.loc 1 61 0
 167 003e 06FA04F2 		lsl	r2, r6, r4
  57:../cores/arduino/wiring_shift.c ****         }
 168              		.loc 1 57 0
 169 0042 3846     		mov	r0, r7
  55:../cores/arduino/wiring_shift.c ****         {
 170              		.loc 1 55 0
 171 0044 B9F1000F 		cmp	r9, #0
 172 0048 E3D0     		beq	.L17
  61:../cores/arduino/wiring_shift.c ****         }
 173              		.loc 1 61 0
 174 004a 12EA080F 		tst	r2, r8
 175 004e 3846     		mov	r0, r7
 176 0050 14BF     		ite	ne
 177 0052 0121     		movne	r1, #1
 178 0054 0021     		moveq	r1, #0
 179 0056 FFF7FEFF 		bl	digitalWrite
 180              	.LVL20:
 181 005a E3E7     		b	.L12
 182              	.LVL21:
 183              	.L16:
  66:../cores/arduino/wiring_shift.c **** 	}
  67:../cores/arduino/wiring_shift.c **** }
 184              		.loc 1 67 0
 185 005c BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 186              		.cfi_endproc
 187              	.LFE228:
 188              		.size	shiftOut, .-shiftOut
 189              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 190              		.align	2
 191              		.type	cpu_irq_critical_section_counter, %object
 192              		.size	cpu_irq_critical_section_counter, 4
 193              	cpu_irq_critical_section_counter:
 194 0000 00000000 		.space	4
 195              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 196              		.type	cpu_irq_prev_interrupt_state, %object
 197              		.size	cpu_irq_prev_interrupt_state, 1
 198              	cpu_irq_prev_interrupt_state:
 199 0000 00       		.space	1
 200              		.text
 201              	.Letext0:
 202              		.file 2 "/usr/include/newlib/machine/_default_types.h"
 203              		.file 3 "/usr/include/newlib/sys/_stdint.h"
 204              		.file 4 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 205              		.file 5 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 206              		.file 6 "/usr/include/newlib/sys/lock.h"
ARM GAS  /tmp/cc82ZubX.s 			page 6


 207              		.file 7 "/usr/include/newlib/sys/_types.h"
 208              		.file 8 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 209              		.file 9 "/usr/include/newlib/sys/reent.h"
 210              		.file 10 "/usr/include/newlib/stdlib.h"
 211              		.file 11 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 212              		.file 12 "/usr/include/newlib/math.h"
 213              		.file 13 "../cores/arduino/wiring_constants.h"
 214              		.file 14 "../cores/arduino/Core.h"
 215              		.file 15 "/usr/include/newlib/time.h"
 216              		.file 16 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/variant.h"
 217              		.file 17 "../cores/arduino/wiring_digital.h"
 218              		.section	.debug_info,"",%progbits
 219              	.Ldebug_info0:
 220 0000 FC0B0000 		.4byte	0xbfc
 221 0004 0400     		.2byte	0x4
 222 0006 00000000 		.4byte	.Ldebug_abbrev0
 223 000a 04       		.byte	0x4
 224 000b 01       		.uleb128 0x1
 225 000c 0F040000 		.4byte	.LASF169
 226 0010 0C       		.byte	0xc
 227 0011 E5010000 		.4byte	.LASF170
 228 0015 8E030000 		.4byte	.LASF171
 229 0019 00000000 		.4byte	.Ldebug_ranges0+0
 230 001d 00000000 		.4byte	0
 231 0021 00000000 		.4byte	.Ldebug_line0
 232 0025 02       		.uleb128 0x2
 233 0026 04       		.byte	0x4
 234 0027 05       		.byte	0x5
 235 0028 696E7400 		.ascii	"int\000"
 236 002c 03       		.uleb128 0x3
 237 002d 04       		.byte	0x4
 238 002e 07       		.byte	0x7
 239 002f 51060000 		.4byte	.LASF0
 240 0033 03       		.uleb128 0x3
 241 0034 01       		.byte	0x1
 242 0035 06       		.byte	0x6
 243 0036 12010000 		.4byte	.LASF1
 244 003a 04       		.uleb128 0x4
 245 003b 4A000000 		.4byte	.LASF5
 246 003f 02       		.byte	0x2
 247 0040 1D       		.byte	0x1d
 248 0041 45000000 		.4byte	0x45
 249 0045 03       		.uleb128 0x3
 250 0046 01       		.byte	0x1
 251 0047 08       		.byte	0x8
 252 0048 8C060000 		.4byte	.LASF2
 253 004c 03       		.uleb128 0x3
 254 004d 02       		.byte	0x2
 255 004e 05       		.byte	0x5
 256 004f 08000000 		.4byte	.LASF3
 257 0053 03       		.uleb128 0x3
 258 0054 02       		.byte	0x2
 259 0055 07       		.byte	0x7
 260 0056 FD020000 		.4byte	.LASF4
 261 005a 04       		.uleb128 0x4
 262 005b 5E060000 		.4byte	.LASF6
 263 005f 02       		.byte	0x2
ARM GAS  /tmp/cc82ZubX.s 			page 7


 264 0060 3F       		.byte	0x3f
 265 0061 65000000 		.4byte	0x65
 266 0065 03       		.uleb128 0x3
 267 0066 04       		.byte	0x4
 268 0067 05       		.byte	0x5
 269 0068 72010000 		.4byte	.LASF7
 270 006c 04       		.uleb128 0x4
 271 006d 20020000 		.4byte	.LASF8
 272 0071 02       		.byte	0x2
 273 0072 41       		.byte	0x41
 274 0073 77000000 		.4byte	0x77
 275 0077 03       		.uleb128 0x3
 276 0078 04       		.byte	0x4
 277 0079 07       		.byte	0x7
 278 007a D2020000 		.4byte	.LASF9
 279 007e 03       		.uleb128 0x3
 280 007f 08       		.byte	0x8
 281 0080 05       		.byte	0x5
 282 0081 AC010000 		.4byte	.LASF10
 283 0085 03       		.uleb128 0x3
 284 0086 08       		.byte	0x8
 285 0087 07       		.byte	0x7
 286 0088 92000000 		.4byte	.LASF11
 287 008c 04       		.uleb128 0x4
 288 008d 4F070000 		.4byte	.LASF12
 289 0091 03       		.byte	0x3
 290 0092 18       		.byte	0x18
 291 0093 3A000000 		.4byte	0x3a
 292 0097 05       		.uleb128 0x5
 293 0098 8C000000 		.4byte	0x8c
 294 009c 04       		.uleb128 0x4
 295 009d 29050000 		.4byte	.LASF13
 296 00a1 03       		.byte	0x3
 297 00a2 2C       		.byte	0x2c
 298 00a3 5A000000 		.4byte	0x5a
 299 00a7 06       		.uleb128 0x6
 300 00a8 9C000000 		.4byte	0x9c
 301 00ac 04       		.uleb128 0x4
 302 00ad 00060000 		.4byte	.LASF14
 303 00b1 03       		.byte	0x3
 304 00b2 30       		.byte	0x30
 305 00b3 6C000000 		.4byte	0x6c
 306 00b7 06       		.uleb128 0x6
 307 00b8 AC000000 		.4byte	0xac
 308 00bc 05       		.uleb128 0x5
 309 00bd AC000000 		.4byte	0xac
 310 00c1 07       		.uleb128 0x7
 311 00c2 04       		.byte	0x4
 312 00c3 03       		.uleb128 0x3
 313 00c4 04       		.byte	0x4
 314 00c5 07       		.byte	0x7
 315 00c6 FE030000 		.4byte	.LASF15
 316 00ca 08       		.uleb128 0x8
 317 00cb C1000000 		.4byte	.LASF16
 318 00cf 04       		.byte	0x4
 319 00d0 6508     		.2byte	0x865
 320 00d2 A7000000 		.4byte	0xa7
ARM GAS  /tmp/cc82ZubX.s 			page 8


 321 00d6 09       		.uleb128 0x9
 322 00d7 A1020000 		.4byte	.LASF17
 323 00db 05       		.byte	0x5
 324 00dc 3A       		.byte	0x3a
 325 00dd AC000000 		.4byte	0xac
 326 00e1 04       		.uleb128 0x4
 327 00e2 0B050000 		.4byte	.LASF18
 328 00e6 06       		.byte	0x6
 329 00e7 07       		.byte	0x7
 330 00e8 25000000 		.4byte	0x25
 331 00ec 04       		.uleb128 0x4
 332 00ed DF040000 		.4byte	.LASF19
 333 00f1 07       		.byte	0x7
 334 00f2 2C       		.byte	0x2c
 335 00f3 65000000 		.4byte	0x65
 336 00f7 04       		.uleb128 0x4
 337 00f8 22060000 		.4byte	.LASF20
 338 00fc 07       		.byte	0x7
 339 00fd 72       		.byte	0x72
 340 00fe 65000000 		.4byte	0x65
 341 0102 0A       		.uleb128 0xa
 342 0103 65030000 		.4byte	.LASF21
 343 0107 08       		.byte	0x8
 344 0108 6501     		.2byte	0x165
 345 010a 2C000000 		.4byte	0x2c
 346 010e 0B       		.uleb128 0xb
 347 010f 04       		.byte	0x4
 348 0110 07       		.byte	0x7
 349 0111 A6       		.byte	0xa6
 350 0112 2D010000 		.4byte	0x12d
 351 0116 0C       		.uleb128 0xc
 352 0117 4C030000 		.4byte	.LASF22
 353 011b 07       		.byte	0x7
 354 011c A8       		.byte	0xa8
 355 011d 02010000 		.4byte	0x102
 356 0121 0C       		.uleb128 0xc
 357 0122 9A020000 		.4byte	.LASF23
 358 0126 07       		.byte	0x7
 359 0127 A9       		.byte	0xa9
 360 0128 2D010000 		.4byte	0x12d
 361 012c 00       		.byte	0
 362 012d 0D       		.uleb128 0xd
 363 012e 45000000 		.4byte	0x45
 364 0132 3D010000 		.4byte	0x13d
 365 0136 0E       		.uleb128 0xe
 366 0137 C3000000 		.4byte	0xc3
 367 013b 03       		.byte	0x3
 368 013c 00       		.byte	0
 369 013d 0F       		.uleb128 0xf
 370 013e 08       		.byte	0x8
 371 013f 07       		.byte	0x7
 372 0140 A3       		.byte	0xa3
 373 0141 5E010000 		.4byte	0x15e
 374 0145 10       		.uleb128 0x10
 375 0146 F8050000 		.4byte	.LASF24
 376 014a 07       		.byte	0x7
 377 014b A5       		.byte	0xa5
ARM GAS  /tmp/cc82ZubX.s 			page 9


 378 014c 25000000 		.4byte	0x25
 379 0150 00       		.byte	0
 380 0151 10       		.uleb128 0x10
 381 0152 7B060000 		.4byte	.LASF25
 382 0156 07       		.byte	0x7
 383 0157 AA       		.byte	0xaa
 384 0158 0E010000 		.4byte	0x10e
 385 015c 04       		.byte	0x4
 386 015d 00       		.byte	0
 387 015e 04       		.uleb128 0x4
 388 015f 00050000 		.4byte	.LASF26
 389 0163 07       		.byte	0x7
 390 0164 AB       		.byte	0xab
 391 0165 3D010000 		.4byte	0x13d
 392 0169 04       		.uleb128 0x4
 393 016a B0040000 		.4byte	.LASF27
 394 016e 07       		.byte	0x7
 395 016f AF       		.byte	0xaf
 396 0170 E1000000 		.4byte	0xe1
 397 0174 04       		.uleb128 0x4
 398 0175 B5060000 		.4byte	.LASF28
 399 0179 09       		.byte	0x9
 400 017a 16       		.byte	0x16
 401 017b 77000000 		.4byte	0x77
 402 017f 11       		.uleb128 0x11
 403 0180 54020000 		.4byte	.LASF33
 404 0184 18       		.byte	0x18
 405 0185 09       		.byte	0x9
 406 0186 2D       		.byte	0x2d
 407 0187 D2010000 		.4byte	0x1d2
 408 018b 10       		.uleb128 0x10
 409 018c 68060000 		.4byte	.LASF29
 410 0190 09       		.byte	0x9
 411 0191 2F       		.byte	0x2f
 412 0192 D2010000 		.4byte	0x1d2
 413 0196 00       		.byte	0
 414 0197 12       		.uleb128 0x12
 415 0198 5F6B00   		.ascii	"_k\000"
 416 019b 09       		.byte	0x9
 417 019c 30       		.byte	0x30
 418 019d 25000000 		.4byte	0x25
 419 01a1 04       		.byte	0x4
 420 01a2 10       		.uleb128 0x10
 421 01a3 DB050000 		.4byte	.LASF30
 422 01a7 09       		.byte	0x9
 423 01a8 30       		.byte	0x30
 424 01a9 25000000 		.4byte	0x25
 425 01ad 08       		.byte	0x8
 426 01ae 10       		.uleb128 0x10
 427 01af 2B020000 		.4byte	.LASF31
 428 01b3 09       		.byte	0x9
 429 01b4 30       		.byte	0x30
 430 01b5 25000000 		.4byte	0x25
 431 01b9 0C       		.byte	0xc
 432 01ba 10       		.uleb128 0x10
 433 01bb 8F010000 		.4byte	.LASF32
 434 01bf 09       		.byte	0x9
ARM GAS  /tmp/cc82ZubX.s 			page 10


 435 01c0 30       		.byte	0x30
 436 01c1 25000000 		.4byte	0x25
 437 01c5 10       		.byte	0x10
 438 01c6 12       		.uleb128 0x12
 439 01c7 5F7800   		.ascii	"_x\000"
 440 01ca 09       		.byte	0x9
 441 01cb 31       		.byte	0x31
 442 01cc D8010000 		.4byte	0x1d8
 443 01d0 14       		.byte	0x14
 444 01d1 00       		.byte	0
 445 01d2 13       		.uleb128 0x13
 446 01d3 04       		.byte	0x4
 447 01d4 7F010000 		.4byte	0x17f
 448 01d8 0D       		.uleb128 0xd
 449 01d9 74010000 		.4byte	0x174
 450 01dd E8010000 		.4byte	0x1e8
 451 01e1 0E       		.uleb128 0xe
 452 01e2 C3000000 		.4byte	0xc3
 453 01e6 00       		.byte	0
 454 01e7 00       		.byte	0
 455 01e8 11       		.uleb128 0x11
 456 01e9 7D020000 		.4byte	.LASF34
 457 01ed 24       		.byte	0x24
 458 01ee 09       		.byte	0x9
 459 01ef 35       		.byte	0x35
 460 01f0 61020000 		.4byte	0x261
 461 01f4 10       		.uleb128 0x10
 462 01f5 02010000 		.4byte	.LASF35
 463 01f9 09       		.byte	0x9
 464 01fa 37       		.byte	0x37
 465 01fb 25000000 		.4byte	0x25
 466 01ff 00       		.byte	0
 467 0200 10       		.uleb128 0x10
 468 0201 B4070000 		.4byte	.LASF36
 469 0205 09       		.byte	0x9
 470 0206 38       		.byte	0x38
 471 0207 25000000 		.4byte	0x25
 472 020b 04       		.byte	0x4
 473 020c 10       		.uleb128 0x10
 474 020d 09060000 		.4byte	.LASF37
 475 0211 09       		.byte	0x9
 476 0212 39       		.byte	0x39
 477 0213 25000000 		.4byte	0x25
 478 0217 08       		.byte	0x8
 479 0218 10       		.uleb128 0x10
 480 0219 E1070000 		.4byte	.LASF38
 481 021d 09       		.byte	0x9
 482 021e 3A       		.byte	0x3a
 483 021f 25000000 		.4byte	0x25
 484 0223 0C       		.byte	0xc
 485 0224 10       		.uleb128 0x10
 486 0225 B9040000 		.4byte	.LASF39
 487 0229 09       		.byte	0x9
 488 022a 3B       		.byte	0x3b
 489 022b 25000000 		.4byte	0x25
 490 022f 10       		.byte	0x10
 491 0230 10       		.uleb128 0x10
ARM GAS  /tmp/cc82ZubX.s 			page 11


 492 0231 CA030000 		.4byte	.LASF40
 493 0235 09       		.byte	0x9
 494 0236 3C       		.byte	0x3c
 495 0237 25000000 		.4byte	0x25
 496 023b 14       		.byte	0x14
 497 023c 10       		.uleb128 0x10
 498 023d 26070000 		.4byte	.LASF41
 499 0241 09       		.byte	0x9
 500 0242 3D       		.byte	0x3d
 501 0243 25000000 		.4byte	0x25
 502 0247 18       		.byte	0x18
 503 0248 10       		.uleb128 0x10
 504 0249 67050000 		.4byte	.LASF42
 505 024d 09       		.byte	0x9
 506 024e 3E       		.byte	0x3e
 507 024f 25000000 		.4byte	0x25
 508 0253 1C       		.byte	0x1c
 509 0254 10       		.uleb128 0x10
 510 0255 9A070000 		.4byte	.LASF43
 511 0259 09       		.byte	0x9
 512 025a 3F       		.byte	0x3f
 513 025b 25000000 		.4byte	0x25
 514 025f 20       		.byte	0x20
 515 0260 00       		.byte	0
 516 0261 14       		.uleb128 0x14
 517 0262 54010000 		.4byte	.LASF44
 518 0266 0801     		.2byte	0x108
 519 0268 09       		.byte	0x9
 520 0269 48       		.byte	0x48
 521 026a A1020000 		.4byte	0x2a1
 522 026e 10       		.uleb128 0x10
 523 026f 13020000 		.4byte	.LASF45
 524 0273 09       		.byte	0x9
 525 0274 49       		.byte	0x49
 526 0275 A1020000 		.4byte	0x2a1
 527 0279 00       		.byte	0
 528 027a 10       		.uleb128 0x10
 529 027b 31050000 		.4byte	.LASF46
 530 027f 09       		.byte	0x9
 531 0280 4A       		.byte	0x4a
 532 0281 A1020000 		.4byte	0x2a1
 533 0285 80       		.byte	0x80
 534 0286 15       		.uleb128 0x15
 535 0287 83060000 		.4byte	.LASF47
 536 028b 09       		.byte	0x9
 537 028c 4C       		.byte	0x4c
 538 028d 74010000 		.4byte	0x174
 539 0291 0001     		.2byte	0x100
 540 0293 15       		.uleb128 0x15
 541 0294 00000000 		.4byte	.LASF48
 542 0298 09       		.byte	0x9
 543 0299 4F       		.byte	0x4f
 544 029a 74010000 		.4byte	0x174
 545 029e 0401     		.2byte	0x104
 546 02a0 00       		.byte	0
 547 02a1 0D       		.uleb128 0xd
 548 02a2 C1000000 		.4byte	0xc1
ARM GAS  /tmp/cc82ZubX.s 			page 12


 549 02a6 B1020000 		.4byte	0x2b1
 550 02aa 0E       		.uleb128 0xe
 551 02ab C3000000 		.4byte	0xc3
 552 02af 1F       		.byte	0x1f
 553 02b0 00       		.byte	0
 554 02b1 14       		.uleb128 0x14
 555 02b2 C2040000 		.4byte	.LASF49
 556 02b6 9001     		.2byte	0x190
 557 02b8 09       		.byte	0x9
 558 02b9 5B       		.byte	0x5b
 559 02ba EF020000 		.4byte	0x2ef
 560 02be 10       		.uleb128 0x10
 561 02bf 68060000 		.4byte	.LASF29
 562 02c3 09       		.byte	0x9
 563 02c4 5C       		.byte	0x5c
 564 02c5 EF020000 		.4byte	0x2ef
 565 02c9 00       		.byte	0
 566 02ca 10       		.uleb128 0x10
 567 02cb BC050000 		.4byte	.LASF50
 568 02cf 09       		.byte	0x9
 569 02d0 5D       		.byte	0x5d
 570 02d1 25000000 		.4byte	0x25
 571 02d5 04       		.byte	0x4
 572 02d6 10       		.uleb128 0x10
 573 02d7 1B020000 		.4byte	.LASF51
 574 02db 09       		.byte	0x9
 575 02dc 5F       		.byte	0x5f
 576 02dd F5020000 		.4byte	0x2f5
 577 02e1 08       		.byte	0x8
 578 02e2 10       		.uleb128 0x10
 579 02e3 54010000 		.4byte	.LASF44
 580 02e7 09       		.byte	0x9
 581 02e8 60       		.byte	0x60
 582 02e9 61020000 		.4byte	0x261
 583 02ed 88       		.byte	0x88
 584 02ee 00       		.byte	0
 585 02ef 13       		.uleb128 0x13
 586 02f0 04       		.byte	0x4
 587 02f1 B1020000 		.4byte	0x2b1
 588 02f5 0D       		.uleb128 0xd
 589 02f6 05030000 		.4byte	0x305
 590 02fa 05030000 		.4byte	0x305
 591 02fe 0E       		.uleb128 0xe
 592 02ff C3000000 		.4byte	0xc3
 593 0303 1F       		.byte	0x1f
 594 0304 00       		.byte	0
 595 0305 13       		.uleb128 0x13
 596 0306 04       		.byte	0x4
 597 0307 0B030000 		.4byte	0x30b
 598 030b 16       		.uleb128 0x16
 599 030c 11       		.uleb128 0x11
 600 030d 71050000 		.4byte	.LASF52
 601 0311 08       		.byte	0x8
 602 0312 09       		.byte	0x9
 603 0313 73       		.byte	0x73
 604 0314 31030000 		.4byte	0x331
 605 0318 10       		.uleb128 0x10
ARM GAS  /tmp/cc82ZubX.s 			page 13


 606 0319 31010000 		.4byte	.LASF53
 607 031d 09       		.byte	0x9
 608 031e 74       		.byte	0x74
 609 031f 31030000 		.4byte	0x331
 610 0323 00       		.byte	0
 611 0324 10       		.uleb128 0x10
 612 0325 4B060000 		.4byte	.LASF54
 613 0329 09       		.byte	0x9
 614 032a 75       		.byte	0x75
 615 032b 25000000 		.4byte	0x25
 616 032f 04       		.byte	0x4
 617 0330 00       		.byte	0
 618 0331 13       		.uleb128 0x13
 619 0332 04       		.byte	0x4
 620 0333 45000000 		.4byte	0x45
 621 0337 11       		.uleb128 0x11
 622 0338 9E050000 		.4byte	.LASF55
 623 033c 68       		.byte	0x68
 624 033d 09       		.byte	0x9
 625 033e B3       		.byte	0xb3
 626 033f 61040000 		.4byte	0x461
 627 0343 12       		.uleb128 0x12
 628 0344 5F7000   		.ascii	"_p\000"
 629 0347 09       		.byte	0x9
 630 0348 B4       		.byte	0xb4
 631 0349 31030000 		.4byte	0x331
 632 034d 00       		.byte	0
 633 034e 12       		.uleb128 0x12
 634 034f 5F7200   		.ascii	"_r\000"
 635 0352 09       		.byte	0x9
 636 0353 B5       		.byte	0xb5
 637 0354 25000000 		.4byte	0x25
 638 0358 04       		.byte	0x4
 639 0359 12       		.uleb128 0x12
 640 035a 5F7700   		.ascii	"_w\000"
 641 035d 09       		.byte	0x9
 642 035e B6       		.byte	0xb6
 643 035f 25000000 		.4byte	0x25
 644 0363 08       		.byte	0x8
 645 0364 10       		.uleb128 0x10
 646 0365 7B010000 		.4byte	.LASF56
 647 0369 09       		.byte	0x9
 648 036a B7       		.byte	0xb7
 649 036b 4C000000 		.4byte	0x4c
 650 036f 0C       		.byte	0xc
 651 0370 10       		.uleb128 0x10
 652 0371 E4020000 		.4byte	.LASF57
 653 0375 09       		.byte	0x9
 654 0376 B8       		.byte	0xb8
 655 0377 4C000000 		.4byte	0x4c
 656 037b 0E       		.byte	0xe
 657 037c 12       		.uleb128 0x12
 658 037d 5F626600 		.ascii	"_bf\000"
 659 0381 09       		.byte	0x9
 660 0382 B9       		.byte	0xb9
 661 0383 0C030000 		.4byte	0x30c
 662 0387 10       		.byte	0x10
ARM GAS  /tmp/cc82ZubX.s 			page 14


 663 0388 10       		.uleb128 0x10
 664 0389 B8000000 		.4byte	.LASF58
 665 038d 09       		.byte	0x9
 666 038e BA       		.byte	0xba
 667 038f 25000000 		.4byte	0x25
 668 0393 18       		.byte	0x18
 669 0394 10       		.uleb128 0x10
 670 0395 62010000 		.4byte	.LASF59
 671 0399 09       		.byte	0x9
 672 039a C1       		.byte	0xc1
 673 039b C1000000 		.4byte	0xc1
 674 039f 1C       		.byte	0x1c
 675 03a0 10       		.uleb128 0x10
 676 03a1 1D050000 		.4byte	.LASF60
 677 03a5 09       		.byte	0x9
 678 03a6 C3       		.byte	0xc3
 679 03a7 CE050000 		.4byte	0x5ce
 680 03ab 20       		.byte	0x20
 681 03ac 10       		.uleb128 0x10
 682 03ad C3030000 		.4byte	.LASF61
 683 03b1 09       		.byte	0x9
 684 03b2 C5       		.byte	0xc5
 685 03b3 F8050000 		.4byte	0x5f8
 686 03b7 24       		.byte	0x24
 687 03b8 10       		.uleb128 0x10
 688 03b9 13060000 		.4byte	.LASF62
 689 03bd 09       		.byte	0x9
 690 03be C8       		.byte	0xc8
 691 03bf 1C060000 		.4byte	0x61c
 692 03c3 28       		.byte	0x28
 693 03c4 10       		.uleb128 0x10
 694 03c5 0B010000 		.4byte	.LASF63
 695 03c9 09       		.byte	0x9
 696 03ca C9       		.byte	0xc9
 697 03cb 36060000 		.4byte	0x636
 698 03cf 2C       		.byte	0x2c
 699 03d0 12       		.uleb128 0x12
 700 03d1 5F756200 		.ascii	"_ub\000"
 701 03d5 09       		.byte	0x9
 702 03d6 CC       		.byte	0xcc
 703 03d7 0C030000 		.4byte	0x30c
 704 03db 30       		.byte	0x30
 705 03dc 12       		.uleb128 0x12
 706 03dd 5F757000 		.ascii	"_up\000"
 707 03e1 09       		.byte	0x9
 708 03e2 CD       		.byte	0xcd
 709 03e3 31030000 		.4byte	0x331
 710 03e7 38       		.byte	0x38
 711 03e8 12       		.uleb128 0x12
 712 03e9 5F757200 		.ascii	"_ur\000"
 713 03ed 09       		.byte	0x9
 714 03ee CE       		.byte	0xce
 715 03ef 25000000 		.4byte	0x25
 716 03f3 3C       		.byte	0x3c
 717 03f4 10       		.uleb128 0x10
 718 03f5 2B010000 		.4byte	.LASF64
 719 03f9 09       		.byte	0x9
ARM GAS  /tmp/cc82ZubX.s 			page 15


 720 03fa D1       		.byte	0xd1
 721 03fb 3C060000 		.4byte	0x63c
 722 03ff 40       		.byte	0x40
 723 0400 10       		.uleb128 0x10
 724 0401 8C070000 		.4byte	.LASF65
 725 0405 09       		.byte	0x9
 726 0406 D2       		.byte	0xd2
 727 0407 4C060000 		.4byte	0x64c
 728 040b 43       		.byte	0x43
 729 040c 12       		.uleb128 0x12
 730 040d 5F6C6200 		.ascii	"_lb\000"
 731 0411 09       		.byte	0x9
 732 0412 D5       		.byte	0xd5
 733 0413 0C030000 		.4byte	0x30c
 734 0417 44       		.byte	0x44
 735 0418 10       		.uleb128 0x10
 736 0419 42060000 		.4byte	.LASF66
 737 041d 09       		.byte	0x9
 738 041e D8       		.byte	0xd8
 739 041f 25000000 		.4byte	0x25
 740 0423 4C       		.byte	0x4c
 741 0424 10       		.uleb128 0x10
 742 0425 07040000 		.4byte	.LASF67
 743 0429 09       		.byte	0x9
 744 042a D9       		.byte	0xd9
 745 042b EC000000 		.4byte	0xec
 746 042f 50       		.byte	0x50
 747 0430 10       		.uleb128 0x10
 748 0431 61000000 		.4byte	.LASF68
 749 0435 09       		.byte	0x9
 750 0436 DC       		.byte	0xdc
 751 0437 7F040000 		.4byte	0x47f
 752 043b 54       		.byte	0x54
 753 043c 10       		.uleb128 0x10
 754 043d 88030000 		.4byte	.LASF69
 755 0441 09       		.byte	0x9
 756 0442 E0       		.byte	0xe0
 757 0443 69010000 		.4byte	0x169
 758 0447 58       		.byte	0x58
 759 0448 10       		.uleb128 0x10
 760 0449 91020000 		.4byte	.LASF70
 761 044d 09       		.byte	0x9
 762 044e E2       		.byte	0xe2
 763 044f 5E010000 		.4byte	0x15e
 764 0453 5C       		.byte	0x5c
 765 0454 10       		.uleb128 0x10
 766 0455 78050000 		.4byte	.LASF71
 767 0459 09       		.byte	0x9
 768 045a E3       		.byte	0xe3
 769 045b 25000000 		.4byte	0x25
 770 045f 64       		.byte	0x64
 771 0460 00       		.byte	0
 772 0461 17       		.uleb128 0x17
 773 0462 25000000 		.4byte	0x25
 774 0466 7F040000 		.4byte	0x47f
 775 046a 18       		.uleb128 0x18
 776 046b 7F040000 		.4byte	0x47f
ARM GAS  /tmp/cc82ZubX.s 			page 16


 777 046f 18       		.uleb128 0x18
 778 0470 C1000000 		.4byte	0xc1
 779 0474 18       		.uleb128 0x18
 780 0475 BC050000 		.4byte	0x5bc
 781 0479 18       		.uleb128 0x18
 782 047a 25000000 		.4byte	0x25
 783 047e 00       		.byte	0
 784 047f 13       		.uleb128 0x13
 785 0480 04       		.byte	0x4
 786 0481 8A040000 		.4byte	0x48a
 787 0485 05       		.uleb128 0x5
 788 0486 7F040000 		.4byte	0x47f
 789 048a 19       		.uleb128 0x19
 790 048b E3050000 		.4byte	.LASF72
 791 048f 2804     		.2byte	0x428
 792 0491 09       		.byte	0x9
 793 0492 3802     		.2byte	0x238
 794 0494 BC050000 		.4byte	0x5bc
 795 0498 1A       		.uleb128 0x1a
 796 0499 36060000 		.4byte	.LASF73
 797 049d 09       		.byte	0x9
 798 049e 3A02     		.2byte	0x23a
 799 04a0 25000000 		.4byte	0x25
 800 04a4 00       		.byte	0
 801 04a5 1A       		.uleb128 0x1a
 802 04a6 36070000 		.4byte	.LASF74
 803 04aa 09       		.byte	0x9
 804 04ab 3F02     		.2byte	0x23f
 805 04ad A3060000 		.4byte	0x6a3
 806 04b1 04       		.byte	0x4
 807 04b2 1A       		.uleb128 0x1a
 808 04b3 1E070000 		.4byte	.LASF75
 809 04b7 09       		.byte	0x9
 810 04b8 3F02     		.2byte	0x23f
 811 04ba A3060000 		.4byte	0x6a3
 812 04be 08       		.byte	0x8
 813 04bf 1A       		.uleb128 0x1a
 814 04c0 4C020000 		.4byte	.LASF76
 815 04c4 09       		.byte	0x9
 816 04c5 3F02     		.2byte	0x23f
 817 04c7 A3060000 		.4byte	0x6a3
 818 04cb 0C       		.byte	0xc
 819 04cc 1A       		.uleb128 0x1a
 820 04cd B7050000 		.4byte	.LASF77
 821 04d1 09       		.byte	0x9
 822 04d2 4102     		.2byte	0x241
 823 04d4 25000000 		.4byte	0x25
 824 04d8 10       		.byte	0x10
 825 04d9 1A       		.uleb128 0x1a
 826 04da 35000000 		.4byte	.LASF78
 827 04de 09       		.byte	0x9
 828 04df 4202     		.2byte	0x242
 829 04e1 85080000 		.4byte	0x885
 830 04e5 14       		.byte	0x14
 831 04e6 1A       		.uleb128 0x1a
 832 04e7 3D070000 		.4byte	.LASF79
 833 04eb 09       		.byte	0x9
ARM GAS  /tmp/cc82ZubX.s 			page 17


 834 04ec 4402     		.2byte	0x244
 835 04ee 25000000 		.4byte	0x25
 836 04f2 30       		.byte	0x30
 837 04f3 1A       		.uleb128 0x1a
 838 04f4 C1050000 		.4byte	.LASF80
 839 04f8 09       		.byte	0x9
 840 04f9 4502     		.2byte	0x245
 841 04fb F2050000 		.4byte	0x5f2
 842 04ff 34       		.byte	0x34
 843 0500 1A       		.uleb128 0x1a
 844 0501 D4040000 		.4byte	.LASF81
 845 0505 09       		.byte	0x9
 846 0506 4702     		.2byte	0x247
 847 0508 25000000 		.4byte	0x25
 848 050c 38       		.byte	0x38
 849 050d 1A       		.uleb128 0x1a
 850 050e D1050000 		.4byte	.LASF82
 851 0512 09       		.byte	0x9
 852 0513 4902     		.2byte	0x249
 853 0515 A0080000 		.4byte	0x8a0
 854 0519 3C       		.byte	0x3c
 855 051a 1A       		.uleb128 0x1a
 856 051b 44030000 		.4byte	.LASF83
 857 051f 09       		.byte	0x9
 858 0520 4C02     		.2byte	0x24c
 859 0522 D2010000 		.4byte	0x1d2
 860 0526 40       		.byte	0x40
 861 0527 1A       		.uleb128 0x1a
 862 0528 A2010000 		.4byte	.LASF84
 863 052c 09       		.byte	0x9
 864 052d 4D02     		.2byte	0x24d
 865 052f 25000000 		.4byte	0x25
 866 0533 44       		.byte	0x44
 867 0534 1A       		.uleb128 0x1a
 868 0535 DC070000 		.4byte	.LASF85
 869 0539 09       		.byte	0x9
 870 053a 4E02     		.2byte	0x24e
 871 053c D2010000 		.4byte	0x1d2
 872 0540 48       		.byte	0x48
 873 0541 1A       		.uleb128 0x1a
 874 0542 80050000 		.4byte	.LASF86
 875 0546 09       		.byte	0x9
 876 0547 4F02     		.2byte	0x24f
 877 0549 A6080000 		.4byte	0x8a6
 878 054d 4C       		.byte	0x4c
 879 054e 1A       		.uleb128 0x1a
 880 054f CA020000 		.4byte	.LASF87
 881 0553 09       		.byte	0x9
 882 0554 5202     		.2byte	0x252
 883 0556 25000000 		.4byte	0x25
 884 055a 50       		.byte	0x50
 885 055b 1A       		.uleb128 0x1a
 886 055c C1010000 		.4byte	.LASF88
 887 0560 09       		.byte	0x9
 888 0561 5302     		.2byte	0x253
 889 0563 BC050000 		.4byte	0x5bc
 890 0567 54       		.byte	0x54
ARM GAS  /tmp/cc82ZubX.s 			page 18


 891 0568 1A       		.uleb128 0x1a
 892 0569 3D050000 		.4byte	.LASF89
 893 056d 09       		.byte	0x9
 894 056e 7602     		.2byte	0x276
 895 0570 63080000 		.4byte	0x863
 896 0574 58       		.byte	0x58
 897 0575 1B       		.uleb128 0x1b
 898 0576 C2040000 		.4byte	.LASF49
 899 057a 09       		.byte	0x9
 900 057b 7A02     		.2byte	0x27a
 901 057d EF020000 		.4byte	0x2ef
 902 0581 4801     		.2byte	0x148
 903 0583 1B       		.uleb128 0x1b
 904 0584 18030000 		.4byte	.LASF90
 905 0588 09       		.byte	0x9
 906 0589 7B02     		.2byte	0x27b
 907 058b B1020000 		.4byte	0x2b1
 908 058f 4C01     		.2byte	0x14c
 909 0591 1B       		.uleb128 0x1b
 910 0592 61070000 		.4byte	.LASF91
 911 0596 09       		.byte	0x9
 912 0597 7F02     		.2byte	0x27f
 913 0599 B7080000 		.4byte	0x8b7
 914 059d DC02     		.2byte	0x2dc
 915 059f 1B       		.uleb128 0x1b
 916 05a0 6A010000 		.4byte	.LASF92
 917 05a4 09       		.byte	0x9
 918 05a5 8402     		.2byte	0x284
 919 05a7 68060000 		.4byte	0x668
 920 05ab E002     		.2byte	0x2e0
 921 05ad 1B       		.uleb128 0x1b
 922 05ae 4F010000 		.4byte	.LASF93
 923 05b2 09       		.byte	0x9
 924 05b3 8502     		.2byte	0x285
 925 05b5 C3080000 		.4byte	0x8c3
 926 05b9 EC02     		.2byte	0x2ec
 927 05bb 00       		.byte	0
 928 05bc 13       		.uleb128 0x13
 929 05bd 04       		.byte	0x4
 930 05be C2050000 		.4byte	0x5c2
 931 05c2 03       		.uleb128 0x3
 932 05c3 01       		.byte	0x1
 933 05c4 08       		.byte	0x8
 934 05c5 3D060000 		.4byte	.LASF94
 935 05c9 05       		.uleb128 0x5
 936 05ca C2050000 		.4byte	0x5c2
 937 05ce 13       		.uleb128 0x13
 938 05cf 04       		.byte	0x4
 939 05d0 61040000 		.4byte	0x461
 940 05d4 17       		.uleb128 0x17
 941 05d5 25000000 		.4byte	0x25
 942 05d9 F2050000 		.4byte	0x5f2
 943 05dd 18       		.uleb128 0x18
 944 05de 7F040000 		.4byte	0x47f
 945 05e2 18       		.uleb128 0x18
 946 05e3 C1000000 		.4byte	0xc1
 947 05e7 18       		.uleb128 0x18
ARM GAS  /tmp/cc82ZubX.s 			page 19


 948 05e8 F2050000 		.4byte	0x5f2
 949 05ec 18       		.uleb128 0x18
 950 05ed 25000000 		.4byte	0x25
 951 05f1 00       		.byte	0
 952 05f2 13       		.uleb128 0x13
 953 05f3 04       		.byte	0x4
 954 05f4 C9050000 		.4byte	0x5c9
 955 05f8 13       		.uleb128 0x13
 956 05f9 04       		.byte	0x4
 957 05fa D4050000 		.4byte	0x5d4
 958 05fe 17       		.uleb128 0x17
 959 05ff F7000000 		.4byte	0xf7
 960 0603 1C060000 		.4byte	0x61c
 961 0607 18       		.uleb128 0x18
 962 0608 7F040000 		.4byte	0x47f
 963 060c 18       		.uleb128 0x18
 964 060d C1000000 		.4byte	0xc1
 965 0611 18       		.uleb128 0x18
 966 0612 F7000000 		.4byte	0xf7
 967 0616 18       		.uleb128 0x18
 968 0617 25000000 		.4byte	0x25
 969 061b 00       		.byte	0
 970 061c 13       		.uleb128 0x13
 971 061d 04       		.byte	0x4
 972 061e FE050000 		.4byte	0x5fe
 973 0622 17       		.uleb128 0x17
 974 0623 25000000 		.4byte	0x25
 975 0627 36060000 		.4byte	0x636
 976 062b 18       		.uleb128 0x18
 977 062c 7F040000 		.4byte	0x47f
 978 0630 18       		.uleb128 0x18
 979 0631 C1000000 		.4byte	0xc1
 980 0635 00       		.byte	0
 981 0636 13       		.uleb128 0x13
 982 0637 04       		.byte	0x4
 983 0638 22060000 		.4byte	0x622
 984 063c 0D       		.uleb128 0xd
 985 063d 45000000 		.4byte	0x45
 986 0641 4C060000 		.4byte	0x64c
 987 0645 0E       		.uleb128 0xe
 988 0646 C3000000 		.4byte	0xc3
 989 064a 02       		.byte	0x2
 990 064b 00       		.byte	0
 991 064c 0D       		.uleb128 0xd
 992 064d 45000000 		.4byte	0x45
 993 0651 5C060000 		.4byte	0x65c
 994 0655 0E       		.uleb128 0xe
 995 0656 C3000000 		.4byte	0xc3
 996 065a 00       		.byte	0
 997 065b 00       		.byte	0
 998 065c 0A       		.uleb128 0xa
 999 065d 8A050000 		.4byte	.LASF95
 1000 0661 09       		.byte	0x9
 1001 0662 1D01     		.2byte	0x11d
 1002 0664 37030000 		.4byte	0x337
 1003 0668 1C       		.uleb128 0x1c
 1004 0669 30070000 		.4byte	.LASF96
ARM GAS  /tmp/cc82ZubX.s 			page 20


 1005 066d 0C       		.byte	0xc
 1006 066e 09       		.byte	0x9
 1007 066f 2101     		.2byte	0x121
 1008 0671 9D060000 		.4byte	0x69d
 1009 0675 1A       		.uleb128 0x1a
 1010 0676 68060000 		.4byte	.LASF29
 1011 067a 09       		.byte	0x9
 1012 067b 2301     		.2byte	0x123
 1013 067d 9D060000 		.4byte	0x69d
 1014 0681 00       		.byte	0
 1015 0682 1A       		.uleb128 0x1a
 1016 0683 F6020000 		.4byte	.LASF97
 1017 0687 09       		.byte	0x9
 1018 0688 2401     		.2byte	0x124
 1019 068a 25000000 		.4byte	0x25
 1020 068e 04       		.byte	0x4
 1021 068f 1A       		.uleb128 0x1a
 1022 0690 B1050000 		.4byte	.LASF98
 1023 0694 09       		.byte	0x9
 1024 0695 2501     		.2byte	0x125
 1025 0697 A3060000 		.4byte	0x6a3
 1026 069b 08       		.byte	0x8
 1027 069c 00       		.byte	0
 1028 069d 13       		.uleb128 0x13
 1029 069e 04       		.byte	0x4
 1030 069f 68060000 		.4byte	0x668
 1031 06a3 13       		.uleb128 0x13
 1032 06a4 04       		.byte	0x4
 1033 06a5 5C060000 		.4byte	0x65c
 1034 06a9 1C       		.uleb128 0x1c
 1035 06aa EA050000 		.4byte	.LASF99
 1036 06ae 0E       		.byte	0xe
 1037 06af 09       		.byte	0x9
 1038 06b0 3D01     		.2byte	0x13d
 1039 06b2 DE060000 		.4byte	0x6de
 1040 06b6 1A       		.uleb128 0x1a
 1041 06b7 F2050000 		.4byte	.LASF100
 1042 06bb 09       		.byte	0x9
 1043 06bc 3E01     		.2byte	0x13e
 1044 06be DE060000 		.4byte	0x6de
 1045 06c2 00       		.byte	0
 1046 06c3 1A       		.uleb128 0x1a
 1047 06c4 BD030000 		.4byte	.LASF101
 1048 06c8 09       		.byte	0x9
 1049 06c9 3F01     		.2byte	0x13f
 1050 06cb DE060000 		.4byte	0x6de
 1051 06cf 06       		.byte	0x6
 1052 06d0 1A       		.uleb128 0x1a
 1053 06d1 A0060000 		.4byte	.LASF102
 1054 06d5 09       		.byte	0x9
 1055 06d6 4001     		.2byte	0x140
 1056 06d8 53000000 		.4byte	0x53
 1057 06dc 0C       		.byte	0xc
 1058 06dd 00       		.byte	0
 1059 06de 0D       		.uleb128 0xd
 1060 06df 53000000 		.4byte	0x53
 1061 06e3 EE060000 		.4byte	0x6ee
ARM GAS  /tmp/cc82ZubX.s 			page 21


 1062 06e7 0E       		.uleb128 0xe
 1063 06e8 C3000000 		.4byte	0xc3
 1064 06ec 02       		.byte	0x2
 1065 06ed 00       		.byte	0
 1066 06ee 1D       		.uleb128 0x1d
 1067 06ef D0       		.byte	0xd0
 1068 06f0 09       		.byte	0x9
 1069 06f1 5702     		.2byte	0x257
 1070 06f3 EF070000 		.4byte	0x7ef
 1071 06f7 1A       		.uleb128 0x1a
 1072 06f8 D4030000 		.4byte	.LASF103
 1073 06fc 09       		.byte	0x9
 1074 06fd 5902     		.2byte	0x259
 1075 06ff 2C000000 		.4byte	0x2c
 1076 0703 00       		.byte	0
 1077 0704 1A       		.uleb128 0x1a
 1078 0705 6E060000 		.4byte	.LASF104
 1079 0709 09       		.byte	0x9
 1080 070a 5A02     		.2byte	0x25a
 1081 070c BC050000 		.4byte	0x5bc
 1082 0710 04       		.byte	0x4
 1083 0711 1A       		.uleb128 0x1a
 1084 0712 2D030000 		.4byte	.LASF105
 1085 0716 09       		.byte	0x9
 1086 0717 5B02     		.2byte	0x25b
 1087 0719 EF070000 		.4byte	0x7ef
 1088 071d 08       		.byte	0x8
 1089 071e 1A       		.uleb128 0x1a
 1090 071f A5070000 		.4byte	.LASF106
 1091 0723 09       		.byte	0x9
 1092 0724 5C02     		.2byte	0x25c
 1093 0726 E8010000 		.4byte	0x1e8
 1094 072a 24       		.byte	0x24
 1095 072b 1A       		.uleb128 0x1a
 1096 072c 1D000000 		.4byte	.LASF107
 1097 0730 09       		.byte	0x9
 1098 0731 5D02     		.2byte	0x25d
 1099 0733 25000000 		.4byte	0x25
 1100 0737 48       		.byte	0x48
 1101 0738 1A       		.uleb128 0x1a
 1102 0739 A6050000 		.4byte	.LASF108
 1103 073d 09       		.byte	0x9
 1104 073e 5E02     		.2byte	0x25e
 1105 0740 85000000 		.4byte	0x85
 1106 0744 50       		.byte	0x50
 1107 0745 1A       		.uleb128 0x1a
 1108 0746 C9070000 		.4byte	.LASF109
 1109 074a 09       		.byte	0x9
 1110 074b 5F02     		.2byte	0x25f
 1111 074d A9060000 		.4byte	0x6a9
 1112 0751 58       		.byte	0x58
 1113 0752 1A       		.uleb128 0x1a
 1114 0753 5A050000 		.4byte	.LASF110
 1115 0757 09       		.byte	0x9
 1116 0758 6002     		.2byte	0x260
 1117 075a 5E010000 		.4byte	0x15e
 1118 075e 68       		.byte	0x68
ARM GAS  /tmp/cc82ZubX.s 			page 22


 1119 075f 1A       		.uleb128 0x1a
 1120 0760 CE070000 		.4byte	.LASF111
 1121 0764 09       		.byte	0x9
 1122 0765 6102     		.2byte	0x261
 1123 0767 5E010000 		.4byte	0x15e
 1124 076b 70       		.byte	0x70
 1125 076c 1A       		.uleb128 0x1a
 1126 076d F4000000 		.4byte	.LASF112
 1127 0771 09       		.byte	0x9
 1128 0772 6202     		.2byte	0x262
 1129 0774 5E010000 		.4byte	0x15e
 1130 0778 78       		.byte	0x78
 1131 0779 1A       		.uleb128 0x1a
 1132 077a 57070000 		.4byte	.LASF113
 1133 077e 09       		.byte	0x9
 1134 077f 6302     		.2byte	0x263
 1135 0781 FF070000 		.4byte	0x7ff
 1136 0785 80       		.byte	0x80
 1137 0786 1A       		.uleb128 0x1a
 1138 0787 21030000 		.4byte	.LASF114
 1139 078b 09       		.byte	0x9
 1140 078c 6402     		.2byte	0x264
 1141 078e 0F080000 		.4byte	0x80f
 1142 0792 88       		.byte	0x88
 1143 0793 1A       		.uleb128 0x1a
 1144 0794 54000000 		.4byte	.LASF115
 1145 0798 09       		.byte	0x9
 1146 0799 6502     		.2byte	0x265
 1147 079b 25000000 		.4byte	0x25
 1148 079f A0       		.byte	0xa0
 1149 07a0 1A       		.uleb128 0x1a
 1150 07a1 05020000 		.4byte	.LASF116
 1151 07a5 09       		.byte	0x9
 1152 07a6 6602     		.2byte	0x266
 1153 07a8 5E010000 		.4byte	0x15e
 1154 07ac A4       		.byte	0xa4
 1155 07ad 1A       		.uleb128 0x1a
 1156 07ae DD000000 		.4byte	.LASF117
 1157 07b2 09       		.byte	0x9
 1158 07b3 6702     		.2byte	0x267
 1159 07b5 5E010000 		.4byte	0x15e
 1160 07b9 AC       		.byte	0xac
 1161 07ba 1A       		.uleb128 0x1a
 1162 07bb C9010000 		.4byte	.LASF118
 1163 07bf 09       		.byte	0x9
 1164 07c0 6802     		.2byte	0x268
 1165 07c2 5E010000 		.4byte	0x15e
 1166 07c6 B4       		.byte	0xb4
 1167 07c7 1A       		.uleb128 0x1a
 1168 07c8 72000000 		.4byte	.LASF119
 1169 07cc 09       		.byte	0x9
 1170 07cd 6902     		.2byte	0x269
 1171 07cf 5E010000 		.4byte	0x15e
 1172 07d3 BC       		.byte	0xbc
 1173 07d4 1A       		.uleb128 0x1a
 1174 07d5 81000000 		.4byte	.LASF120
 1175 07d9 09       		.byte	0x9
ARM GAS  /tmp/cc82ZubX.s 			page 23


 1176 07da 6A02     		.2byte	0x26a
 1177 07dc 5E010000 		.4byte	0x15e
 1178 07e0 C4       		.byte	0xc4
 1179 07e1 1A       		.uleb128 0x1a
 1180 07e2 51050000 		.4byte	.LASF121
 1181 07e6 09       		.byte	0x9
 1182 07e7 6B02     		.2byte	0x26b
 1183 07e9 25000000 		.4byte	0x25
 1184 07ed CC       		.byte	0xcc
 1185 07ee 00       		.byte	0
 1186 07ef 0D       		.uleb128 0xd
 1187 07f0 C2050000 		.4byte	0x5c2
 1188 07f4 FF070000 		.4byte	0x7ff
 1189 07f8 0E       		.uleb128 0xe
 1190 07f9 C3000000 		.4byte	0xc3
 1191 07fd 19       		.byte	0x19
 1192 07fe 00       		.byte	0
 1193 07ff 0D       		.uleb128 0xd
 1194 0800 C2050000 		.4byte	0x5c2
 1195 0804 0F080000 		.4byte	0x80f
 1196 0808 0E       		.uleb128 0xe
 1197 0809 C3000000 		.4byte	0xc3
 1198 080d 07       		.byte	0x7
 1199 080e 00       		.byte	0
 1200 080f 0D       		.uleb128 0xd
 1201 0810 C2050000 		.4byte	0x5c2
 1202 0814 1F080000 		.4byte	0x81f
 1203 0818 0E       		.uleb128 0xe
 1204 0819 C3000000 		.4byte	0xc3
 1205 081d 17       		.byte	0x17
 1206 081e 00       		.byte	0
 1207 081f 1D       		.uleb128 0x1d
 1208 0820 F0       		.byte	0xf0
 1209 0821 09       		.byte	0x9
 1210 0822 7002     		.2byte	0x270
 1211 0824 43080000 		.4byte	0x843
 1212 0828 1A       		.uleb128 0x1a
 1213 0829 52030000 		.4byte	.LASF122
 1214 082d 09       		.byte	0x9
 1215 082e 7302     		.2byte	0x273
 1216 0830 43080000 		.4byte	0x843
 1217 0834 00       		.byte	0
 1218 0835 1A       		.uleb128 0x1a
 1219 0836 6B020000 		.4byte	.LASF123
 1220 083a 09       		.byte	0x9
 1221 083b 7402     		.2byte	0x274
 1222 083d 53080000 		.4byte	0x853
 1223 0841 78       		.byte	0x78
 1224 0842 00       		.byte	0
 1225 0843 0D       		.uleb128 0xd
 1226 0844 31030000 		.4byte	0x331
 1227 0848 53080000 		.4byte	0x853
 1228 084c 0E       		.uleb128 0xe
 1229 084d C3000000 		.4byte	0xc3
 1230 0851 1D       		.byte	0x1d
 1231 0852 00       		.byte	0
 1232 0853 0D       		.uleb128 0xd
ARM GAS  /tmp/cc82ZubX.s 			page 24


 1233 0854 2C000000 		.4byte	0x2c
 1234 0858 63080000 		.4byte	0x863
 1235 085c 0E       		.uleb128 0xe
 1236 085d C3000000 		.4byte	0xc3
 1237 0861 1D       		.byte	0x1d
 1238 0862 00       		.byte	0
 1239 0863 1E       		.uleb128 0x1e
 1240 0864 F0       		.byte	0xf0
 1241 0865 09       		.byte	0x9
 1242 0866 5502     		.2byte	0x255
 1243 0868 85080000 		.4byte	0x885
 1244 086c 1F       		.uleb128 0x1f
 1245 086d E3050000 		.4byte	.LASF72
 1246 0871 09       		.byte	0x9
 1247 0872 6C02     		.2byte	0x26c
 1248 0874 EE060000 		.4byte	0x6ee
 1249 0878 1F       		.uleb128 0x1f
 1250 0879 92070000 		.4byte	.LASF124
 1251 087d 09       		.byte	0x9
 1252 087e 7502     		.2byte	0x275
 1253 0880 1F080000 		.4byte	0x81f
 1254 0884 00       		.byte	0
 1255 0885 0D       		.uleb128 0xd
 1256 0886 C2050000 		.4byte	0x5c2
 1257 088a 95080000 		.4byte	0x895
 1258 088e 0E       		.uleb128 0xe
 1259 088f C3000000 		.4byte	0xc3
 1260 0893 18       		.byte	0x18
 1261 0894 00       		.byte	0
 1262 0895 20       		.uleb128 0x20
 1263 0896 A0080000 		.4byte	0x8a0
 1264 089a 18       		.uleb128 0x18
 1265 089b 7F040000 		.4byte	0x47f
 1266 089f 00       		.byte	0
 1267 08a0 13       		.uleb128 0x13
 1268 08a1 04       		.byte	0x4
 1269 08a2 95080000 		.4byte	0x895
 1270 08a6 13       		.uleb128 0x13
 1271 08a7 04       		.byte	0x4
 1272 08a8 D2010000 		.4byte	0x1d2
 1273 08ac 20       		.uleb128 0x20
 1274 08ad B7080000 		.4byte	0x8b7
 1275 08b1 18       		.uleb128 0x18
 1276 08b2 25000000 		.4byte	0x25
 1277 08b6 00       		.byte	0
 1278 08b7 13       		.uleb128 0x13
 1279 08b8 04       		.byte	0x4
 1280 08b9 BD080000 		.4byte	0x8bd
 1281 08bd 13       		.uleb128 0x13
 1282 08be 04       		.byte	0x4
 1283 08bf AC080000 		.4byte	0x8ac
 1284 08c3 0D       		.uleb128 0xd
 1285 08c4 5C060000 		.4byte	0x65c
 1286 08c8 D3080000 		.4byte	0x8d3
 1287 08cc 0E       		.uleb128 0xe
 1288 08cd C3000000 		.4byte	0xc3
 1289 08d1 02       		.byte	0x2
ARM GAS  /tmp/cc82ZubX.s 			page 25


 1290 08d2 00       		.byte	0
 1291 08d3 08       		.uleb128 0x8
 1292 08d4 40020000 		.4byte	.LASF125
 1293 08d8 09       		.byte	0x9
 1294 08d9 FD02     		.2byte	0x2fd
 1295 08db 7F040000 		.4byte	0x47f
 1296 08df 08       		.uleb128 0x8
 1297 08e0 DF060000 		.4byte	.LASF126
 1298 08e4 09       		.byte	0x9
 1299 08e5 FE02     		.2byte	0x2fe
 1300 08e7 85040000 		.4byte	0x485
 1301 08eb 09       		.uleb128 0x9
 1302 08ec CA040000 		.4byte	.LASF127
 1303 08f0 0A       		.byte	0xa
 1304 08f1 5F       		.byte	0x5f
 1305 08f2 BC050000 		.4byte	0x5bc
 1306 08f6 09       		.uleb128 0x9
 1307 08f7 EC040000 		.4byte	.LASF128
 1308 08fb 0B       		.byte	0xb
 1309 08fc 8F       		.byte	0x8f
 1310 08fd 08090000 		.4byte	0x908
 1311 0901 03       		.uleb128 0x3
 1312 0902 01       		.byte	0x1
 1313 0903 02       		.byte	0x2
 1314 0904 23050000 		.4byte	.LASF129
 1315 0908 06       		.uleb128 0x6
 1316 0909 01090000 		.4byte	0x901
 1317 090d 21       		.uleb128 0x21
 1318 090e 6B070000 		.4byte	.LASF130
 1319 0912 0B       		.byte	0xb
 1320 0913 94       		.byte	0x94
 1321 0914 B7000000 		.4byte	0xb7
 1322 0918 05       		.uleb128 0x5
 1323 0919 03       		.byte	0x3
 1324 091a 00000000 		.4byte	cpu_irq_critical_section_counter
 1325 091e 21       		.uleb128 0x21
 1326 091f E1030000 		.4byte	.LASF131
 1327 0923 0B       		.byte	0xb
 1328 0924 95       		.byte	0x95
 1329 0925 08090000 		.4byte	0x908
 1330 0929 05       		.uleb128 0x5
 1331 092a 03       		.byte	0x3
 1332 092b 00000000 		.4byte	cpu_irq_prev_interrupt_state
 1333 092f 03       		.uleb128 0x3
 1334 0930 04       		.byte	0x4
 1335 0931 04       		.byte	0x4
 1336 0932 E6040000 		.4byte	.LASF132
 1337 0936 03       		.uleb128 0x3
 1338 0937 08       		.byte	0x8
 1339 0938 04       		.byte	0x4
 1340 0939 BA010000 		.4byte	.LASF133
 1341 093d 03       		.uleb128 0x3
 1342 093e 08       		.byte	0x8
 1343 093f 04       		.byte	0x4
 1344 0940 2A060000 		.4byte	.LASF134
 1345 0944 22       		.uleb128 0x22
 1346 0945 CE060000 		.4byte	.LASF140
ARM GAS  /tmp/cc82ZubX.s 			page 26


 1347 0949 01       		.byte	0x1
 1348 094a 33000000 		.4byte	0x33
 1349 094e 0C       		.byte	0xc
 1350 094f 9902     		.2byte	0x299
 1351 0951 6E090000 		.4byte	0x96e
 1352 0955 23       		.uleb128 0x23
 1353 0956 FC060000 		.4byte	.LASF135
 1354 095a 7F       		.sleb128 -1
 1355 095b 24       		.uleb128 0x24
 1356 095c 94010000 		.4byte	.LASF136
 1357 0960 00       		.byte	0
 1358 0961 24       		.uleb128 0x24
 1359 0962 CE000000 		.4byte	.LASF137
 1360 0966 01       		.byte	0x1
 1361 0967 24       		.uleb128 0x24
 1362 0968 A9000000 		.4byte	.LASF138
 1363 096c 02       		.byte	0x2
 1364 096d 00       		.byte	0
 1365 096e 08       		.uleb128 0x8
 1366 096f BA020000 		.4byte	.LASF139
 1367 0973 0C       		.byte	0xc
 1368 0974 A402     		.2byte	0x2a4
 1369 0976 44090000 		.4byte	0x944
 1370 097a 25       		.uleb128 0x25
 1371 097b 19060000 		.4byte	.LASF141
 1372 097f 01       		.byte	0x1
 1373 0980 45000000 		.4byte	0x45
 1374 0984 0D       		.byte	0xd
 1375 0985 1A       		.byte	0x1a
 1376 0986 97090000 		.4byte	0x997
 1377 098a 24       		.uleb128 0x24
 1378 098b B1020000 		.4byte	.LASF142
 1379 098f 00       		.byte	0
 1380 0990 24       		.uleb128 0x24
 1381 0991 2C000000 		.4byte	.LASF143
 1382 0995 01       		.byte	0x1
 1383 0996 00       		.byte	0
 1384 0997 26       		.uleb128 0x26
 1385 0998 50696E00 		.ascii	"Pin\000"
 1386 099c 0E       		.byte	0xe
 1387 099d 38       		.byte	0x38
 1388 099e 8C000000 		.4byte	0x8c
 1389 09a2 05       		.uleb128 0x5
 1390 09a3 97090000 		.4byte	0x997
 1391 09a7 27       		.uleb128 0x27
 1392 09a8 EB070000 		.4byte	.LASF144
 1393 09ac 0E       		.byte	0xe
 1394 09ad 39       		.byte	0x39
 1395 09ae A2090000 		.4byte	0x9a2
 1396 09b2 7F       		.sleb128 -1
 1397 09b3 09       		.uleb128 0x9
 1398 09b4 F2060000 		.4byte	.LASF145
 1399 09b8 0F       		.byte	0xf
 1400 09b9 8B       		.byte	0x8b
 1401 09ba 65000000 		.4byte	0x65
 1402 09be 09       		.uleb128 0x9
 1403 09bf 40000000 		.4byte	.LASF146
ARM GAS  /tmp/cc82ZubX.s 			page 27


 1404 09c3 0F       		.byte	0xf
 1405 09c4 8C       		.byte	0x8c
 1406 09c5 25000000 		.4byte	0x25
 1407 09c9 0D       		.uleb128 0xd
 1408 09ca BC050000 		.4byte	0x5bc
 1409 09ce D9090000 		.4byte	0x9d9
 1410 09d2 0E       		.uleb128 0xe
 1411 09d3 C3000000 		.4byte	0xc3
 1412 09d7 01       		.byte	0x1
 1413 09d8 00       		.byte	0
 1414 09d9 09       		.uleb128 0x9
 1415 09da EC000000 		.4byte	.LASF147
 1416 09de 0F       		.byte	0xf
 1417 09df 8F       		.byte	0x8f
 1418 09e0 C9090000 		.4byte	0x9c9
 1419 09e4 28       		.uleb128 0x28
 1420 09e5 59030000 		.4byte	.LASF148
 1421 09e9 10       		.byte	0x10
 1422 09ea 5C       		.byte	0x5c
 1423 09eb 97000000 		.4byte	0x97
 1424 09ef 38       		.byte	0x38
 1425 09f0 28       		.uleb128 0x28
 1426 09f1 42050000 		.4byte	.LASF149
 1427 09f5 10       		.byte	0x10
 1428 09f6 5D       		.byte	0x5d
 1429 09f7 97000000 		.4byte	0x97
 1430 09fb 05       		.byte	0x5
 1431 09fc 28       		.uleb128 0x28
 1432 09fd 5C020000 		.4byte	.LASF150
 1433 0a01 10       		.byte	0x10
 1434 0a02 5E       		.byte	0x5e
 1435 0a03 97000000 		.4byte	0x97
 1436 0a07 06       		.byte	0x6
 1437 0a08 28       		.uleb128 0x28
 1438 0a09 EA020000 		.4byte	.LASF151
 1439 0a0d 10       		.byte	0x10
 1440 0a0e 60       		.byte	0x60
 1441 0a0f 97000000 		.4byte	0x97
 1442 0a13 39       		.byte	0x39
 1443 0a14 28       		.uleb128 0x28
 1444 0a15 31020000 		.4byte	.LASF152
 1445 0a19 10       		.byte	0x10
 1446 0a1a 61       		.byte	0x61
 1447 0a1b 97000000 		.4byte	0x97
 1448 0a1f 03       		.byte	0x3
 1449 0a20 28       		.uleb128 0x28
 1450 0a21 82020000 		.4byte	.LASF153
 1451 0a25 10       		.byte	0x10
 1452 0a26 62       		.byte	0x62
 1453 0a27 97000000 		.4byte	0x97
 1454 0a2b 04       		.byte	0x4
 1455 0a2c 28       		.uleb128 0x28
 1456 0a2d BD060000 		.4byte	.LASF154
 1457 0a31 10       		.byte	0x10
 1458 0a32 69       		.byte	0x69
 1459 0a33 97000000 		.4byte	0x97
 1460 0a37 33       		.byte	0x33
ARM GAS  /tmp/cc82ZubX.s 			page 28


 1461 0a38 28       		.uleb128 0x28
 1462 0a39 A5060000 		.4byte	.LASF155
 1463 0a3d 10       		.byte	0x10
 1464 0a3e 6A       		.byte	0x6a
 1465 0a3f 97000000 		.4byte	0x97
 1466 0a43 34       		.byte	0x34
 1467 0a44 28       		.uleb128 0x28
 1468 0a45 37010000 		.4byte	.LASF156
 1469 0a49 10       		.byte	0x10
 1470 0a4a 6D       		.byte	0x6d
 1471 0a4b 97000000 		.4byte	0x97
 1472 0a4f 35       		.byte	0x35
 1473 0a50 28       		.uleb128 0x28
 1474 0a51 0A070000 		.4byte	.LASF157
 1475 0a55 10       		.byte	0x10
 1476 0a56 6E       		.byte	0x6e
 1477 0a57 97000000 		.4byte	0x97
 1478 0a5b 36       		.byte	0x36
 1479 0a5c 28       		.uleb128 0x28
 1480 0a5d 6C030000 		.4byte	.LASF158
 1481 0a61 10       		.byte	0x10
 1482 0a62 6F       		.byte	0x6f
 1483 0a63 97000000 		.4byte	0x97
 1484 0a67 37       		.byte	0x37
 1485 0a68 28       		.uleb128 0x28
 1486 0a69 1E010000 		.4byte	.LASF159
 1487 0a6d 10       		.byte	0x10
 1488 0a6e 71       		.byte	0x71
 1489 0a6f BC000000 		.4byte	0xbc
 1490 0a73 32       		.byte	0x32
 1491 0a74 29       		.uleb128 0x29
 1492 0a75 91050000 		.4byte	.LASF160
 1493 0a79 10       		.byte	0x10
 1494 0a7a 73       		.byte	0x73
 1495 0a7b BC000000 		.4byte	0xbc
 1496 0a7f 58466100 		.4byte	0x614658
 1497 0a83 2A       		.uleb128 0x2a
 1498 0a84 82010000 		.4byte	.LASF161
 1499 0a88 10       		.byte	0x10
 1500 0a89 74       		.byte	0x74
 1501 0a8a BC000000 		.4byte	0xbc
 1502 0a8e 4661     		.2byte	0x6146
 1503 0a90 2B       		.uleb128 0x2b
 1504 0a91 74020000 		.4byte	.LASF172
 1505 0a95 01       		.byte	0x1
 1506 0a96 31       		.byte	0x31
 1507 0a97 00000000 		.4byte	.LFB228
 1508 0a9b 60000000 		.4byte	.LFE228-.LFB228
 1509 0a9f 01       		.uleb128 0x1
 1510 0aa0 9C       		.byte	0x9c
 1511 0aa1 3B0B0000 		.4byte	0xb3b
 1512 0aa5 2C       		.uleb128 0x2c
 1513 0aa6 3A030000 		.4byte	.LASF162
 1514 0aaa 01       		.byte	0x1
 1515 0aab 31       		.byte	0x31
 1516 0aac AC000000 		.4byte	0xac
 1517 0ab0 00000000 		.4byte	.LLST5
ARM GAS  /tmp/cc82ZubX.s 			page 29


 1518 0ab4 2C       		.uleb128 0x2c
 1519 0ab5 12000000 		.4byte	.LASF163
 1520 0ab9 01       		.byte	0x1
 1521 0aba 31       		.byte	0x31
 1522 0abb AC000000 		.4byte	0xac
 1523 0abf 21000000 		.4byte	.LLST6
 1524 0ac3 2C       		.uleb128 0x2c
 1525 0ac4 67000000 		.4byte	.LASF164
 1526 0ac8 01       		.byte	0x1
 1527 0ac9 31       		.byte	0x31
 1528 0aca AC000000 		.4byte	0xac
 1529 0ace 42000000 		.4byte	.LLST7
 1530 0ad2 2C       		.uleb128 0x2c
 1531 0ad3 9A060000 		.4byte	.LASF165
 1532 0ad7 01       		.byte	0x1
 1533 0ad8 31       		.byte	0x31
 1534 0ad9 AC000000 		.4byte	0xac
 1535 0add 60000000 		.4byte	.LLST8
 1536 0ae1 2D       		.uleb128 0x2d
 1537 0ae2 6900     		.ascii	"i\000"
 1538 0ae4 01       		.byte	0x1
 1539 0ae5 33       		.byte	0x33
 1540 0ae6 8C000000 		.4byte	0x8c
 1541 0aea 7E000000 		.4byte	.LLST9
 1542 0aee 2E       		.uleb128 0x2e
 1543 0aef 24000000 		.4byte	.LVL15
 1544 0af3 E90B0000 		.4byte	0xbe9
 1545 0af7 2F       		.uleb128 0x2f
 1546 0af8 2E000000 		.4byte	.LVL17
 1547 0afc E90B0000 		.4byte	0xbe9
 1548 0b00 110B0000 		.4byte	0xb11
 1549 0b04 30       		.uleb128 0x30
 1550 0b05 01       		.uleb128 0x1
 1551 0b06 50       		.byte	0x50
 1552 0b07 02       		.uleb128 0x2
 1553 0b08 75       		.byte	0x75
 1554 0b09 00       		.sleb128 0
 1555 0b0a 30       		.uleb128 0x30
 1556 0b0b 01       		.uleb128 0x1
 1557 0b0c 51       		.byte	0x51
 1558 0b0d 02       		.uleb128 0x2
 1559 0b0e 76       		.byte	0x76
 1560 0b0f 00       		.sleb128 0
 1561 0b10 00       		.byte	0
 1562 0b11 2F       		.uleb128 0x2f
 1563 0b12 36000000 		.4byte	.LVL18
 1564 0b16 E90B0000 		.4byte	0xbe9
 1565 0b1a 2A0B0000 		.4byte	0xb2a
 1566 0b1e 30       		.uleb128 0x30
 1567 0b1f 01       		.uleb128 0x1
 1568 0b20 50       		.byte	0x50
 1569 0b21 02       		.uleb128 0x2
 1570 0b22 75       		.byte	0x75
 1571 0b23 00       		.sleb128 0
 1572 0b24 30       		.uleb128 0x30
 1573 0b25 01       		.uleb128 0x1
 1574 0b26 51       		.byte	0x51
ARM GAS  /tmp/cc82ZubX.s 			page 30


 1575 0b27 01       		.uleb128 0x1
 1576 0b28 30       		.byte	0x30
 1577 0b29 00       		.byte	0
 1578 0b2a 31       		.uleb128 0x31
 1579 0b2b 5A000000 		.4byte	.LVL20
 1580 0b2f E90B0000 		.4byte	0xbe9
 1581 0b33 30       		.uleb128 0x30
 1582 0b34 01       		.uleb128 0x1
 1583 0b35 50       		.byte	0x50
 1584 0b36 02       		.uleb128 0x2
 1585 0b37 77       		.byte	0x77
 1586 0b38 00       		.sleb128 0
 1587 0b39 00       		.byte	0
 1588 0b3a 00       		.byte	0
 1589 0b3b 32       		.uleb128 0x32
 1590 0b3c 10030000 		.4byte	.LASF173
 1591 0b40 01       		.byte	0x1
 1592 0b41 19       		.byte	0x19
 1593 0b42 AC000000 		.4byte	0xac
 1594 0b46 00000000 		.4byte	.LFB227
 1595 0b4a 50000000 		.4byte	.LFE227-.LFB227
 1596 0b4e 01       		.uleb128 0x1
 1597 0b4f 9C       		.byte	0x9c
 1598 0b50 E90B0000 		.4byte	0xbe9
 1599 0b54 2C       		.uleb128 0x2c
 1600 0b55 3A030000 		.4byte	.LASF162
 1601 0b59 01       		.byte	0x1
 1602 0b5a 19       		.byte	0x19
 1603 0b5b AC000000 		.4byte	0xac
 1604 0b5f B0000000 		.4byte	.LLST0
 1605 0b63 2C       		.uleb128 0x2c
 1606 0b64 12000000 		.4byte	.LASF163
 1607 0b68 01       		.byte	0x1
 1608 0b69 19       		.byte	0x19
 1609 0b6a AC000000 		.4byte	0xac
 1610 0b6e D1000000 		.4byte	.LLST1
 1611 0b72 2C       		.uleb128 0x2c
 1612 0b73 67000000 		.4byte	.LASF164
 1613 0b77 01       		.byte	0x1
 1614 0b78 19       		.byte	0x19
 1615 0b79 AC000000 		.4byte	0xac
 1616 0b7d F2000000 		.4byte	.LLST2
 1617 0b81 33       		.uleb128 0x33
 1618 0b82 DA010000 		.4byte	.LASF166
 1619 0b86 01       		.byte	0x1
 1620 0b87 1B       		.byte	0x1b
 1621 0b88 8C000000 		.4byte	0x8c
 1622 0b8c 10010000 		.4byte	.LLST3
 1623 0b90 2D       		.uleb128 0x2d
 1624 0b91 6900     		.ascii	"i\000"
 1625 0b93 01       		.byte	0x1
 1626 0b94 1C       		.byte	0x1c
 1627 0b95 8C000000 		.4byte	0x8c
 1628 0b99 45010000 		.4byte	.LLST4
 1629 0b9d 2E       		.uleb128 0x2e
 1630 0b9e 14000000 		.4byte	.LVL2
 1631 0ba2 F40B0000 		.4byte	0xbf4
ARM GAS  /tmp/cc82ZubX.s 			page 31


 1632 0ba6 2F       		.uleb128 0x2f
 1633 0ba7 28000000 		.4byte	.LVL6
 1634 0bab E90B0000 		.4byte	0xbe9
 1635 0baf BF0B0000 		.4byte	0xbbf
 1636 0bb3 30       		.uleb128 0x30
 1637 0bb4 01       		.uleb128 0x1
 1638 0bb5 50       		.byte	0x50
 1639 0bb6 02       		.uleb128 0x2
 1640 0bb7 76       		.byte	0x76
 1641 0bb8 00       		.sleb128 0
 1642 0bb9 30       		.uleb128 0x30
 1643 0bba 01       		.uleb128 0x1
 1644 0bbb 51       		.byte	0x51
 1645 0bbc 01       		.uleb128 0x1
 1646 0bbd 30       		.byte	0x30
 1647 0bbe 00       		.byte	0
 1648 0bbf 2F       		.uleb128 0x2f
 1649 0bc0 34000000 		.4byte	.LVL8
 1650 0bc4 E90B0000 		.4byte	0xbe9
 1651 0bc8 D80B0000 		.4byte	0xbd8
 1652 0bcc 30       		.uleb128 0x30
 1653 0bcd 01       		.uleb128 0x1
 1654 0bce 50       		.byte	0x50
 1655 0bcf 02       		.uleb128 0x2
 1656 0bd0 76       		.byte	0x76
 1657 0bd1 00       		.sleb128 0
 1658 0bd2 30       		.uleb128 0x30
 1659 0bd3 01       		.uleb128 0x1
 1660 0bd4 51       		.byte	0x51
 1661 0bd5 01       		.uleb128 0x1
 1662 0bd6 31       		.byte	0x31
 1663 0bd7 00       		.byte	0
 1664 0bd8 31       		.uleb128 0x31
 1665 0bd9 42000000 		.4byte	.LVL9
 1666 0bdd F40B0000 		.4byte	0xbf4
 1667 0be1 30       		.uleb128 0x30
 1668 0be2 01       		.uleb128 0x1
 1669 0be3 50       		.byte	0x50
 1670 0be4 02       		.uleb128 0x2
 1671 0be5 77       		.byte	0x77
 1672 0be6 00       		.sleb128 0
 1673 0be7 00       		.byte	0
 1674 0be8 00       		.byte	0
 1675 0be9 34       		.uleb128 0x34
 1676 0bea 7B030000 		.4byte	.LASF167
 1677 0bee 7B030000 		.4byte	.LASF167
 1678 0bf2 11       		.byte	0x11
 1679 0bf3 47       		.byte	0x47
 1680 0bf4 34       		.uleb128 0x34
 1681 0bf5 BD070000 		.4byte	.LASF168
 1682 0bf9 BD070000 		.4byte	.LASF168
 1683 0bfd 11       		.byte	0x11
 1684 0bfe 50       		.byte	0x50
 1685 0bff 00       		.byte	0
 1686              		.section	.debug_abbrev,"",%progbits
 1687              	.Ldebug_abbrev0:
 1688 0000 01       		.uleb128 0x1
ARM GAS  /tmp/cc82ZubX.s 			page 32


 1689 0001 11       		.uleb128 0x11
 1690 0002 01       		.byte	0x1
 1691 0003 25       		.uleb128 0x25
 1692 0004 0E       		.uleb128 0xe
 1693 0005 13       		.uleb128 0x13
 1694 0006 0B       		.uleb128 0xb
 1695 0007 03       		.uleb128 0x3
 1696 0008 0E       		.uleb128 0xe
 1697 0009 1B       		.uleb128 0x1b
 1698 000a 0E       		.uleb128 0xe
 1699 000b 55       		.uleb128 0x55
 1700 000c 17       		.uleb128 0x17
 1701 000d 11       		.uleb128 0x11
 1702 000e 01       		.uleb128 0x1
 1703 000f 10       		.uleb128 0x10
 1704 0010 17       		.uleb128 0x17
 1705 0011 00       		.byte	0
 1706 0012 00       		.byte	0
 1707 0013 02       		.uleb128 0x2
 1708 0014 24       		.uleb128 0x24
 1709 0015 00       		.byte	0
 1710 0016 0B       		.uleb128 0xb
 1711 0017 0B       		.uleb128 0xb
 1712 0018 3E       		.uleb128 0x3e
 1713 0019 0B       		.uleb128 0xb
 1714 001a 03       		.uleb128 0x3
 1715 001b 08       		.uleb128 0x8
 1716 001c 00       		.byte	0
 1717 001d 00       		.byte	0
 1718 001e 03       		.uleb128 0x3
 1719 001f 24       		.uleb128 0x24
 1720 0020 00       		.byte	0
 1721 0021 0B       		.uleb128 0xb
 1722 0022 0B       		.uleb128 0xb
 1723 0023 3E       		.uleb128 0x3e
 1724 0024 0B       		.uleb128 0xb
 1725 0025 03       		.uleb128 0x3
 1726 0026 0E       		.uleb128 0xe
 1727 0027 00       		.byte	0
 1728 0028 00       		.byte	0
 1729 0029 04       		.uleb128 0x4
 1730 002a 16       		.uleb128 0x16
 1731 002b 00       		.byte	0
 1732 002c 03       		.uleb128 0x3
 1733 002d 0E       		.uleb128 0xe
 1734 002e 3A       		.uleb128 0x3a
 1735 002f 0B       		.uleb128 0xb
 1736 0030 3B       		.uleb128 0x3b
 1737 0031 0B       		.uleb128 0xb
 1738 0032 49       		.uleb128 0x49
 1739 0033 13       		.uleb128 0x13
 1740 0034 00       		.byte	0
 1741 0035 00       		.byte	0
 1742 0036 05       		.uleb128 0x5
 1743 0037 26       		.uleb128 0x26
 1744 0038 00       		.byte	0
 1745 0039 49       		.uleb128 0x49
ARM GAS  /tmp/cc82ZubX.s 			page 33


 1746 003a 13       		.uleb128 0x13
 1747 003b 00       		.byte	0
 1748 003c 00       		.byte	0
 1749 003d 06       		.uleb128 0x6
 1750 003e 35       		.uleb128 0x35
 1751 003f 00       		.byte	0
 1752 0040 49       		.uleb128 0x49
 1753 0041 13       		.uleb128 0x13
 1754 0042 00       		.byte	0
 1755 0043 00       		.byte	0
 1756 0044 07       		.uleb128 0x7
 1757 0045 0F       		.uleb128 0xf
 1758 0046 00       		.byte	0
 1759 0047 0B       		.uleb128 0xb
 1760 0048 0B       		.uleb128 0xb
 1761 0049 00       		.byte	0
 1762 004a 00       		.byte	0
 1763 004b 08       		.uleb128 0x8
 1764 004c 34       		.uleb128 0x34
 1765 004d 00       		.byte	0
 1766 004e 03       		.uleb128 0x3
 1767 004f 0E       		.uleb128 0xe
 1768 0050 3A       		.uleb128 0x3a
 1769 0051 0B       		.uleb128 0xb
 1770 0052 3B       		.uleb128 0x3b
 1771 0053 05       		.uleb128 0x5
 1772 0054 49       		.uleb128 0x49
 1773 0055 13       		.uleb128 0x13
 1774 0056 3F       		.uleb128 0x3f
 1775 0057 19       		.uleb128 0x19
 1776 0058 3C       		.uleb128 0x3c
 1777 0059 19       		.uleb128 0x19
 1778 005a 00       		.byte	0
 1779 005b 00       		.byte	0
 1780 005c 09       		.uleb128 0x9
 1781 005d 34       		.uleb128 0x34
 1782 005e 00       		.byte	0
 1783 005f 03       		.uleb128 0x3
 1784 0060 0E       		.uleb128 0xe
 1785 0061 3A       		.uleb128 0x3a
 1786 0062 0B       		.uleb128 0xb
 1787 0063 3B       		.uleb128 0x3b
 1788 0064 0B       		.uleb128 0xb
 1789 0065 49       		.uleb128 0x49
 1790 0066 13       		.uleb128 0x13
 1791 0067 3F       		.uleb128 0x3f
 1792 0068 19       		.uleb128 0x19
 1793 0069 3C       		.uleb128 0x3c
 1794 006a 19       		.uleb128 0x19
 1795 006b 00       		.byte	0
 1796 006c 00       		.byte	0
 1797 006d 0A       		.uleb128 0xa
 1798 006e 16       		.uleb128 0x16
 1799 006f 00       		.byte	0
 1800 0070 03       		.uleb128 0x3
 1801 0071 0E       		.uleb128 0xe
 1802 0072 3A       		.uleb128 0x3a
ARM GAS  /tmp/cc82ZubX.s 			page 34


 1803 0073 0B       		.uleb128 0xb
 1804 0074 3B       		.uleb128 0x3b
 1805 0075 05       		.uleb128 0x5
 1806 0076 49       		.uleb128 0x49
 1807 0077 13       		.uleb128 0x13
 1808 0078 00       		.byte	0
 1809 0079 00       		.byte	0
 1810 007a 0B       		.uleb128 0xb
 1811 007b 17       		.uleb128 0x17
 1812 007c 01       		.byte	0x1
 1813 007d 0B       		.uleb128 0xb
 1814 007e 0B       		.uleb128 0xb
 1815 007f 3A       		.uleb128 0x3a
 1816 0080 0B       		.uleb128 0xb
 1817 0081 3B       		.uleb128 0x3b
 1818 0082 0B       		.uleb128 0xb
 1819 0083 01       		.uleb128 0x1
 1820 0084 13       		.uleb128 0x13
 1821 0085 00       		.byte	0
 1822 0086 00       		.byte	0
 1823 0087 0C       		.uleb128 0xc
 1824 0088 0D       		.uleb128 0xd
 1825 0089 00       		.byte	0
 1826 008a 03       		.uleb128 0x3
 1827 008b 0E       		.uleb128 0xe
 1828 008c 3A       		.uleb128 0x3a
 1829 008d 0B       		.uleb128 0xb
 1830 008e 3B       		.uleb128 0x3b
 1831 008f 0B       		.uleb128 0xb
 1832 0090 49       		.uleb128 0x49
 1833 0091 13       		.uleb128 0x13
 1834 0092 00       		.byte	0
 1835 0093 00       		.byte	0
 1836 0094 0D       		.uleb128 0xd
 1837 0095 01       		.uleb128 0x1
 1838 0096 01       		.byte	0x1
 1839 0097 49       		.uleb128 0x49
 1840 0098 13       		.uleb128 0x13
 1841 0099 01       		.uleb128 0x1
 1842 009a 13       		.uleb128 0x13
 1843 009b 00       		.byte	0
 1844 009c 00       		.byte	0
 1845 009d 0E       		.uleb128 0xe
 1846 009e 21       		.uleb128 0x21
 1847 009f 00       		.byte	0
 1848 00a0 49       		.uleb128 0x49
 1849 00a1 13       		.uleb128 0x13
 1850 00a2 2F       		.uleb128 0x2f
 1851 00a3 0B       		.uleb128 0xb
 1852 00a4 00       		.byte	0
 1853 00a5 00       		.byte	0
 1854 00a6 0F       		.uleb128 0xf
 1855 00a7 13       		.uleb128 0x13
 1856 00a8 01       		.byte	0x1
 1857 00a9 0B       		.uleb128 0xb
 1858 00aa 0B       		.uleb128 0xb
 1859 00ab 3A       		.uleb128 0x3a
ARM GAS  /tmp/cc82ZubX.s 			page 35


 1860 00ac 0B       		.uleb128 0xb
 1861 00ad 3B       		.uleb128 0x3b
 1862 00ae 0B       		.uleb128 0xb
 1863 00af 01       		.uleb128 0x1
 1864 00b0 13       		.uleb128 0x13
 1865 00b1 00       		.byte	0
 1866 00b2 00       		.byte	0
 1867 00b3 10       		.uleb128 0x10
 1868 00b4 0D       		.uleb128 0xd
 1869 00b5 00       		.byte	0
 1870 00b6 03       		.uleb128 0x3
 1871 00b7 0E       		.uleb128 0xe
 1872 00b8 3A       		.uleb128 0x3a
 1873 00b9 0B       		.uleb128 0xb
 1874 00ba 3B       		.uleb128 0x3b
 1875 00bb 0B       		.uleb128 0xb
 1876 00bc 49       		.uleb128 0x49
 1877 00bd 13       		.uleb128 0x13
 1878 00be 38       		.uleb128 0x38
 1879 00bf 0B       		.uleb128 0xb
 1880 00c0 00       		.byte	0
 1881 00c1 00       		.byte	0
 1882 00c2 11       		.uleb128 0x11
 1883 00c3 13       		.uleb128 0x13
 1884 00c4 01       		.byte	0x1
 1885 00c5 03       		.uleb128 0x3
 1886 00c6 0E       		.uleb128 0xe
 1887 00c7 0B       		.uleb128 0xb
 1888 00c8 0B       		.uleb128 0xb
 1889 00c9 3A       		.uleb128 0x3a
 1890 00ca 0B       		.uleb128 0xb
 1891 00cb 3B       		.uleb128 0x3b
 1892 00cc 0B       		.uleb128 0xb
 1893 00cd 01       		.uleb128 0x1
 1894 00ce 13       		.uleb128 0x13
 1895 00cf 00       		.byte	0
 1896 00d0 00       		.byte	0
 1897 00d1 12       		.uleb128 0x12
 1898 00d2 0D       		.uleb128 0xd
 1899 00d3 00       		.byte	0
 1900 00d4 03       		.uleb128 0x3
 1901 00d5 08       		.uleb128 0x8
 1902 00d6 3A       		.uleb128 0x3a
 1903 00d7 0B       		.uleb128 0xb
 1904 00d8 3B       		.uleb128 0x3b
 1905 00d9 0B       		.uleb128 0xb
 1906 00da 49       		.uleb128 0x49
 1907 00db 13       		.uleb128 0x13
 1908 00dc 38       		.uleb128 0x38
 1909 00dd 0B       		.uleb128 0xb
 1910 00de 00       		.byte	0
 1911 00df 00       		.byte	0
 1912 00e0 13       		.uleb128 0x13
 1913 00e1 0F       		.uleb128 0xf
 1914 00e2 00       		.byte	0
 1915 00e3 0B       		.uleb128 0xb
 1916 00e4 0B       		.uleb128 0xb
ARM GAS  /tmp/cc82ZubX.s 			page 36


 1917 00e5 49       		.uleb128 0x49
 1918 00e6 13       		.uleb128 0x13
 1919 00e7 00       		.byte	0
 1920 00e8 00       		.byte	0
 1921 00e9 14       		.uleb128 0x14
 1922 00ea 13       		.uleb128 0x13
 1923 00eb 01       		.byte	0x1
 1924 00ec 03       		.uleb128 0x3
 1925 00ed 0E       		.uleb128 0xe
 1926 00ee 0B       		.uleb128 0xb
 1927 00ef 05       		.uleb128 0x5
 1928 00f0 3A       		.uleb128 0x3a
 1929 00f1 0B       		.uleb128 0xb
 1930 00f2 3B       		.uleb128 0x3b
 1931 00f3 0B       		.uleb128 0xb
 1932 00f4 01       		.uleb128 0x1
 1933 00f5 13       		.uleb128 0x13
 1934 00f6 00       		.byte	0
 1935 00f7 00       		.byte	0
 1936 00f8 15       		.uleb128 0x15
 1937 00f9 0D       		.uleb128 0xd
 1938 00fa 00       		.byte	0
 1939 00fb 03       		.uleb128 0x3
 1940 00fc 0E       		.uleb128 0xe
 1941 00fd 3A       		.uleb128 0x3a
 1942 00fe 0B       		.uleb128 0xb
 1943 00ff 3B       		.uleb128 0x3b
 1944 0100 0B       		.uleb128 0xb
 1945 0101 49       		.uleb128 0x49
 1946 0102 13       		.uleb128 0x13
 1947 0103 38       		.uleb128 0x38
 1948 0104 05       		.uleb128 0x5
 1949 0105 00       		.byte	0
 1950 0106 00       		.byte	0
 1951 0107 16       		.uleb128 0x16
 1952 0108 15       		.uleb128 0x15
 1953 0109 00       		.byte	0
 1954 010a 27       		.uleb128 0x27
 1955 010b 19       		.uleb128 0x19
 1956 010c 00       		.byte	0
 1957 010d 00       		.byte	0
 1958 010e 17       		.uleb128 0x17
 1959 010f 15       		.uleb128 0x15
 1960 0110 01       		.byte	0x1
 1961 0111 27       		.uleb128 0x27
 1962 0112 19       		.uleb128 0x19
 1963 0113 49       		.uleb128 0x49
 1964 0114 13       		.uleb128 0x13
 1965 0115 01       		.uleb128 0x1
 1966 0116 13       		.uleb128 0x13
 1967 0117 00       		.byte	0
 1968 0118 00       		.byte	0
 1969 0119 18       		.uleb128 0x18
 1970 011a 05       		.uleb128 0x5
 1971 011b 00       		.byte	0
 1972 011c 49       		.uleb128 0x49
 1973 011d 13       		.uleb128 0x13
ARM GAS  /tmp/cc82ZubX.s 			page 37


 1974 011e 00       		.byte	0
 1975 011f 00       		.byte	0
 1976 0120 19       		.uleb128 0x19
 1977 0121 13       		.uleb128 0x13
 1978 0122 01       		.byte	0x1
 1979 0123 03       		.uleb128 0x3
 1980 0124 0E       		.uleb128 0xe
 1981 0125 0B       		.uleb128 0xb
 1982 0126 05       		.uleb128 0x5
 1983 0127 3A       		.uleb128 0x3a
 1984 0128 0B       		.uleb128 0xb
 1985 0129 3B       		.uleb128 0x3b
 1986 012a 05       		.uleb128 0x5
 1987 012b 01       		.uleb128 0x1
 1988 012c 13       		.uleb128 0x13
 1989 012d 00       		.byte	0
 1990 012e 00       		.byte	0
 1991 012f 1A       		.uleb128 0x1a
 1992 0130 0D       		.uleb128 0xd
 1993 0131 00       		.byte	0
 1994 0132 03       		.uleb128 0x3
 1995 0133 0E       		.uleb128 0xe
 1996 0134 3A       		.uleb128 0x3a
 1997 0135 0B       		.uleb128 0xb
 1998 0136 3B       		.uleb128 0x3b
 1999 0137 05       		.uleb128 0x5
 2000 0138 49       		.uleb128 0x49
 2001 0139 13       		.uleb128 0x13
 2002 013a 38       		.uleb128 0x38
 2003 013b 0B       		.uleb128 0xb
 2004 013c 00       		.byte	0
 2005 013d 00       		.byte	0
 2006 013e 1B       		.uleb128 0x1b
 2007 013f 0D       		.uleb128 0xd
 2008 0140 00       		.byte	0
 2009 0141 03       		.uleb128 0x3
 2010 0142 0E       		.uleb128 0xe
 2011 0143 3A       		.uleb128 0x3a
 2012 0144 0B       		.uleb128 0xb
 2013 0145 3B       		.uleb128 0x3b
 2014 0146 05       		.uleb128 0x5
 2015 0147 49       		.uleb128 0x49
 2016 0148 13       		.uleb128 0x13
 2017 0149 38       		.uleb128 0x38
 2018 014a 05       		.uleb128 0x5
 2019 014b 00       		.byte	0
 2020 014c 00       		.byte	0
 2021 014d 1C       		.uleb128 0x1c
 2022 014e 13       		.uleb128 0x13
 2023 014f 01       		.byte	0x1
 2024 0150 03       		.uleb128 0x3
 2025 0151 0E       		.uleb128 0xe
 2026 0152 0B       		.uleb128 0xb
 2027 0153 0B       		.uleb128 0xb
 2028 0154 3A       		.uleb128 0x3a
 2029 0155 0B       		.uleb128 0xb
 2030 0156 3B       		.uleb128 0x3b
ARM GAS  /tmp/cc82ZubX.s 			page 38


 2031 0157 05       		.uleb128 0x5
 2032 0158 01       		.uleb128 0x1
 2033 0159 13       		.uleb128 0x13
 2034 015a 00       		.byte	0
 2035 015b 00       		.byte	0
 2036 015c 1D       		.uleb128 0x1d
 2037 015d 13       		.uleb128 0x13
 2038 015e 01       		.byte	0x1
 2039 015f 0B       		.uleb128 0xb
 2040 0160 0B       		.uleb128 0xb
 2041 0161 3A       		.uleb128 0x3a
 2042 0162 0B       		.uleb128 0xb
 2043 0163 3B       		.uleb128 0x3b
 2044 0164 05       		.uleb128 0x5
 2045 0165 01       		.uleb128 0x1
 2046 0166 13       		.uleb128 0x13
 2047 0167 00       		.byte	0
 2048 0168 00       		.byte	0
 2049 0169 1E       		.uleb128 0x1e
 2050 016a 17       		.uleb128 0x17
 2051 016b 01       		.byte	0x1
 2052 016c 0B       		.uleb128 0xb
 2053 016d 0B       		.uleb128 0xb
 2054 016e 3A       		.uleb128 0x3a
 2055 016f 0B       		.uleb128 0xb
 2056 0170 3B       		.uleb128 0x3b
 2057 0171 05       		.uleb128 0x5
 2058 0172 01       		.uleb128 0x1
 2059 0173 13       		.uleb128 0x13
 2060 0174 00       		.byte	0
 2061 0175 00       		.byte	0
 2062 0176 1F       		.uleb128 0x1f
 2063 0177 0D       		.uleb128 0xd
 2064 0178 00       		.byte	0
 2065 0179 03       		.uleb128 0x3
 2066 017a 0E       		.uleb128 0xe
 2067 017b 3A       		.uleb128 0x3a
 2068 017c 0B       		.uleb128 0xb
 2069 017d 3B       		.uleb128 0x3b
 2070 017e 05       		.uleb128 0x5
 2071 017f 49       		.uleb128 0x49
 2072 0180 13       		.uleb128 0x13
 2073 0181 00       		.byte	0
 2074 0182 00       		.byte	0
 2075 0183 20       		.uleb128 0x20
 2076 0184 15       		.uleb128 0x15
 2077 0185 01       		.byte	0x1
 2078 0186 27       		.uleb128 0x27
 2079 0187 19       		.uleb128 0x19
 2080 0188 01       		.uleb128 0x1
 2081 0189 13       		.uleb128 0x13
 2082 018a 00       		.byte	0
 2083 018b 00       		.byte	0
 2084 018c 21       		.uleb128 0x21
 2085 018d 34       		.uleb128 0x34
 2086 018e 00       		.byte	0
 2087 018f 03       		.uleb128 0x3
ARM GAS  /tmp/cc82ZubX.s 			page 39


 2088 0190 0E       		.uleb128 0xe
 2089 0191 3A       		.uleb128 0x3a
 2090 0192 0B       		.uleb128 0xb
 2091 0193 3B       		.uleb128 0x3b
 2092 0194 0B       		.uleb128 0xb
 2093 0195 49       		.uleb128 0x49
 2094 0196 13       		.uleb128 0x13
 2095 0197 02       		.uleb128 0x2
 2096 0198 18       		.uleb128 0x18
 2097 0199 00       		.byte	0
 2098 019a 00       		.byte	0
 2099 019b 22       		.uleb128 0x22
 2100 019c 04       		.uleb128 0x4
 2101 019d 01       		.byte	0x1
 2102 019e 03       		.uleb128 0x3
 2103 019f 0E       		.uleb128 0xe
 2104 01a0 0B       		.uleb128 0xb
 2105 01a1 0B       		.uleb128 0xb
 2106 01a2 49       		.uleb128 0x49
 2107 01a3 13       		.uleb128 0x13
 2108 01a4 3A       		.uleb128 0x3a
 2109 01a5 0B       		.uleb128 0xb
 2110 01a6 3B       		.uleb128 0x3b
 2111 01a7 05       		.uleb128 0x5
 2112 01a8 01       		.uleb128 0x1
 2113 01a9 13       		.uleb128 0x13
 2114 01aa 00       		.byte	0
 2115 01ab 00       		.byte	0
 2116 01ac 23       		.uleb128 0x23
 2117 01ad 28       		.uleb128 0x28
 2118 01ae 00       		.byte	0
 2119 01af 03       		.uleb128 0x3
 2120 01b0 0E       		.uleb128 0xe
 2121 01b1 1C       		.uleb128 0x1c
 2122 01b2 0D       		.uleb128 0xd
 2123 01b3 00       		.byte	0
 2124 01b4 00       		.byte	0
 2125 01b5 24       		.uleb128 0x24
 2126 01b6 28       		.uleb128 0x28
 2127 01b7 00       		.byte	0
 2128 01b8 03       		.uleb128 0x3
 2129 01b9 0E       		.uleb128 0xe
 2130 01ba 1C       		.uleb128 0x1c
 2131 01bb 0B       		.uleb128 0xb
 2132 01bc 00       		.byte	0
 2133 01bd 00       		.byte	0
 2134 01be 25       		.uleb128 0x25
 2135 01bf 04       		.uleb128 0x4
 2136 01c0 01       		.byte	0x1
 2137 01c1 03       		.uleb128 0x3
 2138 01c2 0E       		.uleb128 0xe
 2139 01c3 0B       		.uleb128 0xb
 2140 01c4 0B       		.uleb128 0xb
 2141 01c5 49       		.uleb128 0x49
 2142 01c6 13       		.uleb128 0x13
 2143 01c7 3A       		.uleb128 0x3a
 2144 01c8 0B       		.uleb128 0xb
ARM GAS  /tmp/cc82ZubX.s 			page 40


 2145 01c9 3B       		.uleb128 0x3b
 2146 01ca 0B       		.uleb128 0xb
 2147 01cb 01       		.uleb128 0x1
 2148 01cc 13       		.uleb128 0x13
 2149 01cd 00       		.byte	0
 2150 01ce 00       		.byte	0
 2151 01cf 26       		.uleb128 0x26
 2152 01d0 16       		.uleb128 0x16
 2153 01d1 00       		.byte	0
 2154 01d2 03       		.uleb128 0x3
 2155 01d3 08       		.uleb128 0x8
 2156 01d4 3A       		.uleb128 0x3a
 2157 01d5 0B       		.uleb128 0xb
 2158 01d6 3B       		.uleb128 0x3b
 2159 01d7 0B       		.uleb128 0xb
 2160 01d8 49       		.uleb128 0x49
 2161 01d9 13       		.uleb128 0x13
 2162 01da 00       		.byte	0
 2163 01db 00       		.byte	0
 2164 01dc 27       		.uleb128 0x27
 2165 01dd 34       		.uleb128 0x34
 2166 01de 00       		.byte	0
 2167 01df 03       		.uleb128 0x3
 2168 01e0 0E       		.uleb128 0xe
 2169 01e1 3A       		.uleb128 0x3a
 2170 01e2 0B       		.uleb128 0xb
 2171 01e3 3B       		.uleb128 0x3b
 2172 01e4 0B       		.uleb128 0xb
 2173 01e5 49       		.uleb128 0x49
 2174 01e6 13       		.uleb128 0x13
 2175 01e7 1C       		.uleb128 0x1c
 2176 01e8 0D       		.uleb128 0xd
 2177 01e9 00       		.byte	0
 2178 01ea 00       		.byte	0
 2179 01eb 28       		.uleb128 0x28
 2180 01ec 34       		.uleb128 0x34
 2181 01ed 00       		.byte	0
 2182 01ee 03       		.uleb128 0x3
 2183 01ef 0E       		.uleb128 0xe
 2184 01f0 3A       		.uleb128 0x3a
 2185 01f1 0B       		.uleb128 0xb
 2186 01f2 3B       		.uleb128 0x3b
 2187 01f3 0B       		.uleb128 0xb
 2188 01f4 49       		.uleb128 0x49
 2189 01f5 13       		.uleb128 0x13
 2190 01f6 1C       		.uleb128 0x1c
 2191 01f7 0B       		.uleb128 0xb
 2192 01f8 00       		.byte	0
 2193 01f9 00       		.byte	0
 2194 01fa 29       		.uleb128 0x29
 2195 01fb 34       		.uleb128 0x34
 2196 01fc 00       		.byte	0
 2197 01fd 03       		.uleb128 0x3
 2198 01fe 0E       		.uleb128 0xe
 2199 01ff 3A       		.uleb128 0x3a
 2200 0200 0B       		.uleb128 0xb
 2201 0201 3B       		.uleb128 0x3b
ARM GAS  /tmp/cc82ZubX.s 			page 41


 2202 0202 0B       		.uleb128 0xb
 2203 0203 49       		.uleb128 0x49
 2204 0204 13       		.uleb128 0x13
 2205 0205 1C       		.uleb128 0x1c
 2206 0206 06       		.uleb128 0x6
 2207 0207 00       		.byte	0
 2208 0208 00       		.byte	0
 2209 0209 2A       		.uleb128 0x2a
 2210 020a 34       		.uleb128 0x34
 2211 020b 00       		.byte	0
 2212 020c 03       		.uleb128 0x3
 2213 020d 0E       		.uleb128 0xe
 2214 020e 3A       		.uleb128 0x3a
 2215 020f 0B       		.uleb128 0xb
 2216 0210 3B       		.uleb128 0x3b
 2217 0211 0B       		.uleb128 0xb
 2218 0212 49       		.uleb128 0x49
 2219 0213 13       		.uleb128 0x13
 2220 0214 1C       		.uleb128 0x1c
 2221 0215 05       		.uleb128 0x5
 2222 0216 00       		.byte	0
 2223 0217 00       		.byte	0
 2224 0218 2B       		.uleb128 0x2b
 2225 0219 2E       		.uleb128 0x2e
 2226 021a 01       		.byte	0x1
 2227 021b 3F       		.uleb128 0x3f
 2228 021c 19       		.uleb128 0x19
 2229 021d 03       		.uleb128 0x3
 2230 021e 0E       		.uleb128 0xe
 2231 021f 3A       		.uleb128 0x3a
 2232 0220 0B       		.uleb128 0xb
 2233 0221 3B       		.uleb128 0x3b
 2234 0222 0B       		.uleb128 0xb
 2235 0223 27       		.uleb128 0x27
 2236 0224 19       		.uleb128 0x19
 2237 0225 11       		.uleb128 0x11
 2238 0226 01       		.uleb128 0x1
 2239 0227 12       		.uleb128 0x12
 2240 0228 06       		.uleb128 0x6
 2241 0229 40       		.uleb128 0x40
 2242 022a 18       		.uleb128 0x18
 2243 022b 9742     		.uleb128 0x2117
 2244 022d 19       		.uleb128 0x19
 2245 022e 01       		.uleb128 0x1
 2246 022f 13       		.uleb128 0x13
 2247 0230 00       		.byte	0
 2248 0231 00       		.byte	0
 2249 0232 2C       		.uleb128 0x2c
 2250 0233 05       		.uleb128 0x5
 2251 0234 00       		.byte	0
 2252 0235 03       		.uleb128 0x3
 2253 0236 0E       		.uleb128 0xe
 2254 0237 3A       		.uleb128 0x3a
 2255 0238 0B       		.uleb128 0xb
 2256 0239 3B       		.uleb128 0x3b
 2257 023a 0B       		.uleb128 0xb
 2258 023b 49       		.uleb128 0x49
ARM GAS  /tmp/cc82ZubX.s 			page 42


 2259 023c 13       		.uleb128 0x13
 2260 023d 02       		.uleb128 0x2
 2261 023e 17       		.uleb128 0x17
 2262 023f 00       		.byte	0
 2263 0240 00       		.byte	0
 2264 0241 2D       		.uleb128 0x2d
 2265 0242 34       		.uleb128 0x34
 2266 0243 00       		.byte	0
 2267 0244 03       		.uleb128 0x3
 2268 0245 08       		.uleb128 0x8
 2269 0246 3A       		.uleb128 0x3a
 2270 0247 0B       		.uleb128 0xb
 2271 0248 3B       		.uleb128 0x3b
 2272 0249 0B       		.uleb128 0xb
 2273 024a 49       		.uleb128 0x49
 2274 024b 13       		.uleb128 0x13
 2275 024c 02       		.uleb128 0x2
 2276 024d 17       		.uleb128 0x17
 2277 024e 00       		.byte	0
 2278 024f 00       		.byte	0
 2279 0250 2E       		.uleb128 0x2e
 2280 0251 898201   		.uleb128 0x4109
 2281 0254 00       		.byte	0
 2282 0255 11       		.uleb128 0x11
 2283 0256 01       		.uleb128 0x1
 2284 0257 31       		.uleb128 0x31
 2285 0258 13       		.uleb128 0x13
 2286 0259 00       		.byte	0
 2287 025a 00       		.byte	0
 2288 025b 2F       		.uleb128 0x2f
 2289 025c 898201   		.uleb128 0x4109
 2290 025f 01       		.byte	0x1
 2291 0260 11       		.uleb128 0x11
 2292 0261 01       		.uleb128 0x1
 2293 0262 31       		.uleb128 0x31
 2294 0263 13       		.uleb128 0x13
 2295 0264 01       		.uleb128 0x1
 2296 0265 13       		.uleb128 0x13
 2297 0266 00       		.byte	0
 2298 0267 00       		.byte	0
 2299 0268 30       		.uleb128 0x30
 2300 0269 8A8201   		.uleb128 0x410a
 2301 026c 00       		.byte	0
 2302 026d 02       		.uleb128 0x2
 2303 026e 18       		.uleb128 0x18
 2304 026f 9142     		.uleb128 0x2111
 2305 0271 18       		.uleb128 0x18
 2306 0272 00       		.byte	0
 2307 0273 00       		.byte	0
 2308 0274 31       		.uleb128 0x31
 2309 0275 898201   		.uleb128 0x4109
 2310 0278 01       		.byte	0x1
 2311 0279 11       		.uleb128 0x11
 2312 027a 01       		.uleb128 0x1
 2313 027b 31       		.uleb128 0x31
 2314 027c 13       		.uleb128 0x13
 2315 027d 00       		.byte	0
ARM GAS  /tmp/cc82ZubX.s 			page 43


 2316 027e 00       		.byte	0
 2317 027f 32       		.uleb128 0x32
 2318 0280 2E       		.uleb128 0x2e
 2319 0281 01       		.byte	0x1
 2320 0282 3F       		.uleb128 0x3f
 2321 0283 19       		.uleb128 0x19
 2322 0284 03       		.uleb128 0x3
 2323 0285 0E       		.uleb128 0xe
 2324 0286 3A       		.uleb128 0x3a
 2325 0287 0B       		.uleb128 0xb
 2326 0288 3B       		.uleb128 0x3b
 2327 0289 0B       		.uleb128 0xb
 2328 028a 27       		.uleb128 0x27
 2329 028b 19       		.uleb128 0x19
 2330 028c 49       		.uleb128 0x49
 2331 028d 13       		.uleb128 0x13
 2332 028e 11       		.uleb128 0x11
 2333 028f 01       		.uleb128 0x1
 2334 0290 12       		.uleb128 0x12
 2335 0291 06       		.uleb128 0x6
 2336 0292 40       		.uleb128 0x40
 2337 0293 18       		.uleb128 0x18
 2338 0294 9742     		.uleb128 0x2117
 2339 0296 19       		.uleb128 0x19
 2340 0297 01       		.uleb128 0x1
 2341 0298 13       		.uleb128 0x13
 2342 0299 00       		.byte	0
 2343 029a 00       		.byte	0
 2344 029b 33       		.uleb128 0x33
 2345 029c 34       		.uleb128 0x34
 2346 029d 00       		.byte	0
 2347 029e 03       		.uleb128 0x3
 2348 029f 0E       		.uleb128 0xe
 2349 02a0 3A       		.uleb128 0x3a
 2350 02a1 0B       		.uleb128 0xb
 2351 02a2 3B       		.uleb128 0x3b
 2352 02a3 0B       		.uleb128 0xb
 2353 02a4 49       		.uleb128 0x49
 2354 02a5 13       		.uleb128 0x13
 2355 02a6 02       		.uleb128 0x2
 2356 02a7 17       		.uleb128 0x17
 2357 02a8 00       		.byte	0
 2358 02a9 00       		.byte	0
 2359 02aa 34       		.uleb128 0x34
 2360 02ab 2E       		.uleb128 0x2e
 2361 02ac 00       		.byte	0
 2362 02ad 3F       		.uleb128 0x3f
 2363 02ae 19       		.uleb128 0x19
 2364 02af 3C       		.uleb128 0x3c
 2365 02b0 19       		.uleb128 0x19
 2366 02b1 6E       		.uleb128 0x6e
 2367 02b2 0E       		.uleb128 0xe
 2368 02b3 03       		.uleb128 0x3
 2369 02b4 0E       		.uleb128 0xe
 2370 02b5 3A       		.uleb128 0x3a
 2371 02b6 0B       		.uleb128 0xb
 2372 02b7 3B       		.uleb128 0x3b
ARM GAS  /tmp/cc82ZubX.s 			page 44


 2373 02b8 0B       		.uleb128 0xb
 2374 02b9 00       		.byte	0
 2375 02ba 00       		.byte	0
 2376 02bb 00       		.byte	0
 2377              		.section	.debug_loc,"",%progbits
 2378              	.Ldebug_loc0:
 2379              	.LLST5:
 2380 0000 00000000 		.4byte	.LVL13
 2381 0004 12000000 		.4byte	.LVL14
 2382 0008 0100     		.2byte	0x1
 2383 000a 50       		.byte	0x50
 2384 000b 12000000 		.4byte	.LVL14
 2385 000f 60000000 		.4byte	.LFE228
 2386 0013 0400     		.2byte	0x4
 2387 0015 F3       		.byte	0xf3
 2388 0016 01       		.uleb128 0x1
 2389 0017 50       		.byte	0x50
 2390 0018 9F       		.byte	0x9f
 2391 0019 00000000 		.4byte	0
 2392 001d 00000000 		.4byte	0
 2393              	.LLST6:
 2394 0021 00000000 		.4byte	.LVL13
 2395 0025 12000000 		.4byte	.LVL14
 2396 0029 0100     		.2byte	0x1
 2397 002b 51       		.byte	0x51
 2398 002c 12000000 		.4byte	.LVL14
 2399 0030 60000000 		.4byte	.LFE228
 2400 0034 0400     		.2byte	0x4
 2401 0036 F3       		.byte	0xf3
 2402 0037 01       		.uleb128 0x1
 2403 0038 51       		.byte	0x51
 2404 0039 9F       		.byte	0x9f
 2405 003a 00000000 		.4byte	0
 2406 003e 00000000 		.4byte	0
 2407              	.LLST7:
 2408 0042 00000000 		.4byte	.LVL13
 2409 0046 12000000 		.4byte	.LVL14
 2410 004a 0100     		.2byte	0x1
 2411 004c 52       		.byte	0x52
 2412 004d 12000000 		.4byte	.LVL14
 2413 0051 60000000 		.4byte	.LFE228
 2414 0055 0100     		.2byte	0x1
 2415 0057 59       		.byte	0x59
 2416 0058 00000000 		.4byte	0
 2417 005c 00000000 		.4byte	0
 2418              	.LLST8:
 2419 0060 00000000 		.4byte	.LVL13
 2420 0064 12000000 		.4byte	.LVL14
 2421 0068 0100     		.2byte	0x1
 2422 006a 53       		.byte	0x53
 2423 006b 12000000 		.4byte	.LVL14
 2424 006f 60000000 		.4byte	.LFE228
 2425 0073 0100     		.2byte	0x1
 2426 0075 58       		.byte	0x58
 2427 0076 00000000 		.4byte	0
 2428 007a 00000000 		.4byte	0
 2429              	.LLST9:
ARM GAS  /tmp/cc82ZubX.s 			page 45


 2430 007e 00000000 		.4byte	.LVL13
 2431 0082 12000000 		.4byte	.LVL14
 2432 0086 0200     		.2byte	0x2
 2433 0088 30       		.byte	0x30
 2434 0089 9F       		.byte	0x9f
 2435 008a 12000000 		.4byte	.LVL14
 2436 008e 2A000000 		.4byte	.LVL16
 2437 0092 0500     		.2byte	0x5
 2438 0094 37       		.byte	0x37
 2439 0095 74       		.byte	0x74
 2440 0096 00       		.sleb128 0
 2441 0097 1C       		.byte	0x1c
 2442 0098 9F       		.byte	0x9f
 2443 0099 3A000000 		.4byte	.LVL19
 2444 009d 5C000000 		.4byte	.LVL21
 2445 00a1 0500     		.2byte	0x5
 2446 00a3 37       		.byte	0x37
 2447 00a4 74       		.byte	0x74
 2448 00a5 00       		.sleb128 0
 2449 00a6 1C       		.byte	0x1c
 2450 00a7 9F       		.byte	0x9f
 2451 00a8 00000000 		.4byte	0
 2452 00ac 00000000 		.4byte	0
 2453              	.LLST0:
 2454 00b0 00000000 		.4byte	.LVL0
 2455 00b4 10000000 		.4byte	.LVL1
 2456 00b8 0100     		.2byte	0x1
 2457 00ba 50       		.byte	0x50
 2458 00bb 10000000 		.4byte	.LVL1
 2459 00bf 50000000 		.4byte	.LFE227
 2460 00c3 0400     		.2byte	0x4
 2461 00c5 F3       		.byte	0xf3
 2462 00c6 01       		.uleb128 0x1
 2463 00c7 50       		.byte	0x50
 2464 00c8 9F       		.byte	0x9f
 2465 00c9 00000000 		.4byte	0
 2466 00cd 00000000 		.4byte	0
 2467              	.LLST1:
 2468 00d1 00000000 		.4byte	.LVL0
 2469 00d5 10000000 		.4byte	.LVL1
 2470 00d9 0100     		.2byte	0x1
 2471 00db 51       		.byte	0x51
 2472 00dc 10000000 		.4byte	.LVL1
 2473 00e0 50000000 		.4byte	.LFE227
 2474 00e4 0400     		.2byte	0x4
 2475 00e6 F3       		.byte	0xf3
 2476 00e7 01       		.uleb128 0x1
 2477 00e8 51       		.byte	0x51
 2478 00e9 9F       		.byte	0x9f
 2479 00ea 00000000 		.4byte	0
 2480 00ee 00000000 		.4byte	0
 2481              	.LLST2:
 2482 00f2 00000000 		.4byte	.LVL0
 2483 00f6 10000000 		.4byte	.LVL1
 2484 00fa 0100     		.2byte	0x1
 2485 00fc 52       		.byte	0x52
 2486 00fd 10000000 		.4byte	.LVL1
ARM GAS  /tmp/cc82ZubX.s 			page 46


 2487 0101 50000000 		.4byte	.LFE227
 2488 0105 0100     		.2byte	0x1
 2489 0107 58       		.byte	0x58
 2490 0108 00000000 		.4byte	0
 2491 010c 00000000 		.4byte	0
 2492              	.LLST3:
 2493 0110 00000000 		.4byte	.LVL0
 2494 0114 10000000 		.4byte	.LVL1
 2495 0118 0200     		.2byte	0x2
 2496 011a 30       		.byte	0x30
 2497 011b 9F       		.byte	0x9f
 2498 011c 10000000 		.4byte	.LVL1
 2499 0120 1C000000 		.4byte	.LVL3
 2500 0124 0100     		.2byte	0x1
 2501 0126 54       		.byte	0x54
 2502 0127 1E000000 		.4byte	.LVL4
 2503 012b 46000000 		.4byte	.LVL10
 2504 012f 0100     		.2byte	0x1
 2505 0131 54       		.byte	0x54
 2506 0132 48000000 		.4byte	.LVL11
 2507 0136 50000000 		.4byte	.LFE227
 2508 013a 0100     		.2byte	0x1
 2509 013c 54       		.byte	0x54
 2510 013d 00000000 		.4byte	0
 2511 0141 00000000 		.4byte	0
 2512              	.LLST4:
 2513 0145 00000000 		.4byte	.LVL0
 2514 0149 10000000 		.4byte	.LVL1
 2515 014d 0200     		.2byte	0x2
 2516 014f 30       		.byte	0x30
 2517 0150 9F       		.byte	0x9f
 2518 0151 10000000 		.4byte	.LVL1
 2519 0155 20000000 		.4byte	.LVL5
 2520 0159 0500     		.2byte	0x5
 2521 015b 37       		.byte	0x37
 2522 015c 75       		.byte	0x75
 2523 015d 00       		.sleb128 0
 2524 015e 1C       		.byte	0x1c
 2525 015f 9F       		.byte	0x9f
 2526 0160 2C000000 		.4byte	.LVL7
 2527 0164 4A000000 		.4byte	.LVL12
 2528 0168 0500     		.2byte	0x5
 2529 016a 37       		.byte	0x37
 2530 016b 75       		.byte	0x75
 2531 016c 00       		.sleb128 0
 2532 016d 1C       		.byte	0x1c
 2533 016e 9F       		.byte	0x9f
 2534 016f 00000000 		.4byte	0
 2535 0173 00000000 		.4byte	0
 2536              		.section	.debug_aranges,"",%progbits
 2537 0000 24000000 		.4byte	0x24
 2538 0004 0200     		.2byte	0x2
 2539 0006 00000000 		.4byte	.Ldebug_info0
 2540 000a 04       		.byte	0x4
 2541 000b 00       		.byte	0
 2542 000c 0000     		.2byte	0
 2543 000e 0000     		.2byte	0
ARM GAS  /tmp/cc82ZubX.s 			page 47


 2544 0010 00000000 		.4byte	.LFB227
 2545 0014 50000000 		.4byte	.LFE227-.LFB227
 2546 0018 00000000 		.4byte	.LFB228
 2547 001c 60000000 		.4byte	.LFE228-.LFB228
 2548 0020 00000000 		.4byte	0
 2549 0024 00000000 		.4byte	0
 2550              		.section	.debug_ranges,"",%progbits
 2551              	.Ldebug_ranges0:
 2552 0000 00000000 		.4byte	.LFB227
 2553 0004 50000000 		.4byte	.LFE227
 2554 0008 00000000 		.4byte	.LFB228
 2555 000c 60000000 		.4byte	.LFE228
 2556 0010 00000000 		.4byte	0
 2557 0014 00000000 		.4byte	0
 2558              		.section	.debug_line,"",%progbits
 2559              	.Ldebug_line0:
 2560 0000 A5020000 		.section	.debug_str,"MS",%progbits,1
 2560      02004F02 
 2560      00000201 
 2560      FB0E0D00 
 2560      01010101 
 2561              	.LASF48:
 2562 0000 5F69735F 		.ascii	"_is_cxa\000"
 2562      63786100 
 2563              	.LASF3:
 2564 0008 73686F72 		.ascii	"short int\000"
 2564      7420696E 
 2564      7400
 2565              	.LASF163:
 2566 0012 756C436C 		.ascii	"ulClockPin\000"
 2566      6F636B50 
 2566      696E00
 2567              	.LASF107:
 2568 001d 5F67616D 		.ascii	"_gamma_signgam\000"
 2568      6D615F73 
 2568      69676E67 
 2568      616D00
 2569              	.LASF143:
 2570 002c 4D534246 		.ascii	"MSBFIRST\000"
 2570      49525354 
 2570      00
 2571              	.LASF78:
 2572 0035 5F656D65 		.ascii	"_emergency\000"
 2572      7267656E 
 2572      637900
 2573              	.LASF146:
 2574 0040 5F646179 		.ascii	"_daylight\000"
 2574      6C696768 
 2574      7400
 2575              	.LASF5:
 2576 004a 5F5F7569 		.ascii	"__uint8_t\000"
 2576      6E74385F 
 2576      7400
 2577              	.LASF115:
 2578 0054 5F676574 		.ascii	"_getdate_err\000"
 2578      64617465 
 2578      5F657272 
ARM GAS  /tmp/cc82ZubX.s 			page 48


 2578      00
 2579              	.LASF68:
 2580 0061 5F646174 		.ascii	"_data\000"
 2580      6100
 2581              	.LASF164:
 2582 0067 756C4269 		.ascii	"ulBitOrder\000"
 2582      744F7264 
 2582      657200
 2583              	.LASF119:
 2584 0072 5F776372 		.ascii	"_wcrtomb_state\000"
 2584      746F6D62 
 2584      5F737461 
 2584      746500
 2585              	.LASF120:
 2586 0081 5F776373 		.ascii	"_wcsrtombs_state\000"
 2586      72746F6D 
 2586      62735F73 
 2586      74617465 
 2586      00
 2587              	.LASF11:
 2588 0092 6C6F6E67 		.ascii	"long long unsigned int\000"
 2588      206C6F6E 
 2588      6720756E 
 2588      7369676E 
 2588      65642069 
 2589              	.LASF138:
 2590 00a9 5F5F6664 		.ascii	"__fdlibm_posix\000"
 2590      6C69626D 
 2590      5F706F73 
 2590      697800
 2591              	.LASF58:
 2592 00b8 5F6C6266 		.ascii	"_lbfsize\000"
 2592      73697A65 
 2592      00
 2593              	.LASF16:
 2594 00c1 49544D5F 		.ascii	"ITM_RxBuffer\000"
 2594      52784275 
 2594      66666572 
 2594      00
 2595              	.LASF137:
 2596 00ce 5F5F6664 		.ascii	"__fdlibm_xopen\000"
 2596      6C69626D 
 2596      5F786F70 
 2596      656E00
 2597              	.LASF117:
 2598 00dd 5F6D6272 		.ascii	"_mbrtowc_state\000"
 2598      746F7763 
 2598      5F737461 
 2598      746500
 2599              	.LASF147:
 2600 00ec 5F747A6E 		.ascii	"_tzname\000"
 2600      616D6500 
 2601              	.LASF112:
 2602 00f4 5F776374 		.ascii	"_wctomb_state\000"
 2602      6F6D625F 
 2602      73746174 
 2602      6500
ARM GAS  /tmp/cc82ZubX.s 			page 49


 2603              	.LASF35:
 2604 0102 5F5F746D 		.ascii	"__tm_sec\000"
 2604      5F736563 
 2604      00
 2605              	.LASF63:
 2606 010b 5F636C6F 		.ascii	"_close\000"
 2606      736500
 2607              	.LASF1:
 2608 0112 7369676E 		.ascii	"signed char\000"
 2608      65642063 
 2608      68617200 
 2609              	.LASF159:
 2610 011e 4D617850 		.ascii	"MaxPinNumber\000"
 2610      696E4E75 
 2610      6D626572 
 2610      00
 2611              	.LASF64:
 2612 012b 5F756275 		.ascii	"_ubuf\000"
 2612      6600
 2613              	.LASF53:
 2614 0131 5F626173 		.ascii	"_base\000"
 2614      6500
 2615              	.LASF156:
 2616 0137 4150494E 		.ascii	"APIN_GMAC_PHY_INTERRUPT\000"
 2616      5F474D41 
 2616      435F5048 
 2616      595F494E 
 2616      54455252 
 2617              	.LASF93:
 2618 014f 5F5F7366 		.ascii	"__sf\000"
 2618      00
 2619              	.LASF44:
 2620 0154 5F6F6E5F 		.ascii	"_on_exit_args\000"
 2620      65786974 
 2620      5F617267 
 2620      7300
 2621              	.LASF59:
 2622 0162 5F636F6F 		.ascii	"_cookie\000"
 2622      6B696500 
 2623              	.LASF92:
 2624 016a 5F5F7367 		.ascii	"__sglue\000"
 2624      6C756500 
 2625              	.LASF7:
 2626 0172 6C6F6E67 		.ascii	"long int\000"
 2626      20696E74 
 2626      00
 2627              	.LASF56:
 2628 017b 5F666C61 		.ascii	"_flags\000"
 2628      677300
 2629              	.LASF161:
 2630 0182 50776D53 		.ascii	"PwmSlowClock\000"
 2630      6C6F7743 
 2630      6C6F636B 
 2630      00
 2631              	.LASF32:
 2632 018f 5F776473 		.ascii	"_wds\000"
 2632      00
ARM GAS  /tmp/cc82ZubX.s 			page 50


 2633              	.LASF136:
 2634 0194 5F5F6664 		.ascii	"__fdlibm_svid\000"
 2634      6C69626D 
 2634      5F737669 
 2634      6400
 2635              	.LASF84:
 2636 01a2 5F726573 		.ascii	"_result_k\000"
 2636      756C745F 
 2636      6B00
 2637              	.LASF10:
 2638 01ac 6C6F6E67 		.ascii	"long long int\000"
 2638      206C6F6E 
 2638      6720696E 
 2638      7400
 2639              	.LASF133:
 2640 01ba 646F7562 		.ascii	"double\000"
 2640      6C6500
 2641              	.LASF88:
 2642 01c1 5F637674 		.ascii	"_cvtbuf\000"
 2642      62756600 
 2643              	.LASF118:
 2644 01c9 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 2644      72746F77 
 2644      63735F73 
 2644      74617465 
 2644      00
 2645              	.LASF166:
 2646 01da 5F656376 		.ascii	"_ecv_value\000"
 2646      5F76616C 
 2646      756500
 2647              	.LASF170:
 2648 01e5 2E2E2F63 		.ascii	"../cores/arduino/wiring_shift.c\000"
 2648      6F726573 
 2648      2F617264 
 2648      75696E6F 
 2648      2F776972 
 2649              	.LASF116:
 2650 0205 5F6D6272 		.ascii	"_mbrlen_state\000"
 2650      6C656E5F 
 2650      73746174 
 2650      6500
 2651              	.LASF45:
 2652 0213 5F666E61 		.ascii	"_fnargs\000"
 2652      72677300 
 2653              	.LASF51:
 2654 021b 5F666E73 		.ascii	"_fns\000"
 2654      00
 2655              	.LASF8:
 2656 0220 5F5F7569 		.ascii	"__uint32_t\000"
 2656      6E743332 
 2656      5F7400
 2657              	.LASF31:
 2658 022b 5F736967 		.ascii	"_sign\000"
 2658      6E00
 2659              	.LASF152:
 2660 0231 4150494E 		.ascii	"APIN_UART1_RXD\000"
 2660      5F554152 
ARM GAS  /tmp/cc82ZubX.s 			page 51


 2660      54315F52 
 2660      584400
 2661              	.LASF125:
 2662 0240 5F696D70 		.ascii	"_impure_ptr\000"
 2662      7572655F 
 2662      70747200 
 2663              	.LASF76:
 2664 024c 5F737464 		.ascii	"_stderr\000"
 2664      65727200 
 2665              	.LASF33:
 2666 0254 5F426967 		.ascii	"_Bigint\000"
 2666      696E7400 
 2667              	.LASF150:
 2668 025c 4150494E 		.ascii	"APIN_UART0_TXD\000"
 2668      5F554152 
 2668      54305F54 
 2668      584400
 2669              	.LASF123:
 2670 026b 5F6E6D61 		.ascii	"_nmalloc\000"
 2670      6C6C6F63 
 2670      00
 2671              	.LASF172:
 2672 0274 73686966 		.ascii	"shiftOut\000"
 2672      744F7574 
 2672      00
 2673              	.LASF34:
 2674 027d 5F5F746D 		.ascii	"__tm\000"
 2674      00
 2675              	.LASF153:
 2676 0282 4150494E 		.ascii	"APIN_UART1_TXD\000"
 2676      5F554152 
 2676      54315F54 
 2676      584400
 2677              	.LASF70:
 2678 0291 5F6D6273 		.ascii	"_mbstate\000"
 2678      74617465 
 2678      00
 2679              	.LASF23:
 2680 029a 5F5F7763 		.ascii	"__wchb\000"
 2680      686200
 2681              	.LASF17:
 2682 02a1 53797374 		.ascii	"SystemCoreClock\000"
 2682      656D436F 
 2682      7265436C 
 2682      6F636B00 
 2683              	.LASF142:
 2684 02b1 4C534246 		.ascii	"LSBFIRST\000"
 2684      49525354 
 2684      00
 2685              	.LASF139:
 2686 02ba 5F5F6664 		.ascii	"__fdlib_version\000"
 2686      6C69625F 
 2686      76657273 
 2686      696F6E00 
 2687              	.LASF87:
 2688 02ca 5F637674 		.ascii	"_cvtlen\000"
 2688      6C656E00 
ARM GAS  /tmp/cc82ZubX.s 			page 52


 2689              	.LASF9:
 2690 02d2 6C6F6E67 		.ascii	"long unsigned int\000"
 2690      20756E73 
 2690      69676E65 
 2690      6420696E 
 2690      7400
 2691              	.LASF57:
 2692 02e4 5F66696C 		.ascii	"_file\000"
 2692      6500
 2693              	.LASF151:
 2694 02ea 4150494E 		.ascii	"APINS_UART1\000"
 2694      535F5541 
 2694      52543100 
 2695              	.LASF97:
 2696 02f6 5F6E696F 		.ascii	"_niobs\000"
 2696      627300
 2697              	.LASF4:
 2698 02fd 73686F72 		.ascii	"short unsigned int\000"
 2698      7420756E 
 2698      7369676E 
 2698      65642069 
 2698      6E7400
 2699              	.LASF173:
 2700 0310 73686966 		.ascii	"shiftIn\000"
 2700      74496E00 
 2701              	.LASF90:
 2702 0318 5F617465 		.ascii	"_atexit0\000"
 2702      78697430 
 2702      00
 2703              	.LASF114:
 2704 0321 5F736967 		.ascii	"_signal_buf\000"
 2704      6E616C5F 
 2704      62756600 
 2705              	.LASF105:
 2706 032d 5F617363 		.ascii	"_asctime_buf\000"
 2706      74696D65 
 2706      5F627566 
 2706      00
 2707              	.LASF162:
 2708 033a 756C4461 		.ascii	"ulDataPin\000"
 2708      74615069 
 2708      6E00
 2709              	.LASF83:
 2710 0344 5F726573 		.ascii	"_result\000"
 2710      756C7400 
 2711              	.LASF22:
 2712 034c 5F5F7763 		.ascii	"__wch\000"
 2712      6800
 2713              	.LASF122:
 2714 0352 5F6E6578 		.ascii	"_nextf\000"
 2714      746600
 2715              	.LASF148:
 2716 0359 4150494E 		.ascii	"APINS_UART0\000"
 2716      535F5541 
 2716      52543000 
 2717              	.LASF21:
 2718 0365 77696E74 		.ascii	"wint_t\000"
ARM GAS  /tmp/cc82ZubX.s 			page 53


 2718      5F7400
 2719              	.LASF158:
 2720 036c 4150494E 		.ascii	"APINS_GMAC_PHY\000"
 2720      535F474D 
 2720      41435F50 
 2720      485900
 2721              	.LASF167:
 2722 037b 64696769 		.ascii	"digitalWrite\000"
 2722      74616C57 
 2722      72697465 
 2722      00
 2723              	.LASF69:
 2724 0388 5F6C6F63 		.ascii	"_lock\000"
 2724      6B00
 2725              	.LASF171:
 2726 038e 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70\000"
 2726      652F746F 
 2726      72626A6F 
 2726      726E2F65 
 2726      636C6970 
 2727              	.LASF101:
 2728 03bd 5F6D756C 		.ascii	"_mult\000"
 2728      7400
 2729              	.LASF61:
 2730 03c3 5F777269 		.ascii	"_write\000"
 2730      746500
 2731              	.LASF40:
 2732 03ca 5F5F746D 		.ascii	"__tm_year\000"
 2732      5F796561 
 2732      7200
 2733              	.LASF103:
 2734 03d4 5F756E75 		.ascii	"_unused_rand\000"
 2734      7365645F 
 2734      72616E64 
 2734      00
 2735              	.LASF131:
 2736 03e1 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 2736      6972715F 
 2736      70726576 
 2736      5F696E74 
 2736      65727275 
 2737              	.LASF15:
 2738 03fe 73697A65 		.ascii	"sizetype\000"
 2738      74797065 
 2738      00
 2739              	.LASF67:
 2740 0407 5F6F6666 		.ascii	"_offset\000"
 2740      73657400 
 2741              	.LASF169:
 2742 040f 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 2742      43393920 
 2742      362E332E 
 2742      31203230 
 2742      31373036 
 2743 0442 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 2743      76352D64 
 2743      3136202D 
ARM GAS  /tmp/cc82ZubX.s 			page 54


 2743      6D666C6F 
 2743      61742D61 
 2744 0475 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 2744      6E2D7365 
 2744      6374696F 
 2744      6E73202D 
 2744      66646174 
 2745 04a8 6F6E7374 		.ascii	"onstant\000"
 2745      616E7400 
 2746              	.LASF27:
 2747 04b0 5F666C6F 		.ascii	"_flock_t\000"
 2747      636B5F74 
 2747      00
 2748              	.LASF39:
 2749 04b9 5F5F746D 		.ascii	"__tm_mon\000"
 2749      5F6D6F6E 
 2749      00
 2750              	.LASF49:
 2751 04c2 5F617465 		.ascii	"_atexit\000"
 2751      78697400 
 2752              	.LASF127:
 2753 04ca 7375626F 		.ascii	"suboptarg\000"
 2753      70746172 
 2753      6700
 2754              	.LASF81:
 2755 04d4 5F5F7364 		.ascii	"__sdidinit\000"
 2755      6964696E 
 2755      697400
 2756              	.LASF19:
 2757 04df 5F6F6666 		.ascii	"_off_t\000"
 2757      5F7400
 2758              	.LASF132:
 2759 04e6 666C6F61 		.ascii	"float\000"
 2759      7400
 2760              	.LASF128:
 2761 04ec 675F696E 		.ascii	"g_interrupt_enabled\000"
 2761      74657272 
 2761      7570745F 
 2761      656E6162 
 2761      6C656400 
 2762              	.LASF26:
 2763 0500 5F6D6273 		.ascii	"_mbstate_t\000"
 2763      74617465 
 2763      5F7400
 2764              	.LASF18:
 2765 050b 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 2765      4B5F5245 
 2765      43555253 
 2765      4956455F 
 2765      5400
 2766              	.LASF60:
 2767 051d 5F726561 		.ascii	"_read\000"
 2767      6400
 2768              	.LASF129:
 2769 0523 5F426F6F 		.ascii	"_Bool\000"
 2769      6C00
 2770              	.LASF13:
ARM GAS  /tmp/cc82ZubX.s 			page 55


 2771 0529 696E7433 		.ascii	"int32_t\000"
 2771      325F7400 
 2772              	.LASF46:
 2773 0531 5F64736F 		.ascii	"_dso_handle\000"
 2773      5F68616E 
 2773      646C6500 
 2774              	.LASF89:
 2775 053d 5F6E6577 		.ascii	"_new\000"
 2775      00
 2776              	.LASF149:
 2777 0542 4150494E 		.ascii	"APIN_UART0_RXD\000"
 2777      5F554152 
 2777      54305F52 
 2777      584400
 2778              	.LASF121:
 2779 0551 5F685F65 		.ascii	"_h_errno\000"
 2779      72726E6F 
 2779      00
 2780              	.LASF110:
 2781 055a 5F6D626C 		.ascii	"_mblen_state\000"
 2781      656E5F73 
 2781      74617465 
 2781      00
 2782              	.LASF42:
 2783 0567 5F5F746D 		.ascii	"__tm_yday\000"
 2783      5F796461 
 2783      7900
 2784              	.LASF52:
 2785 0571 5F5F7362 		.ascii	"__sbuf\000"
 2785      756600
 2786              	.LASF71:
 2787 0578 5F666C61 		.ascii	"_flags2\000"
 2787      67733200 
 2788              	.LASF86:
 2789 0580 5F667265 		.ascii	"_freelist\000"
 2789      656C6973 
 2789      7400
 2790              	.LASF95:
 2791 058a 5F5F4649 		.ascii	"__FILE\000"
 2791      4C4500
 2792              	.LASF160:
 2793 0591 50776D46 		.ascii	"PwmFastClock\000"
 2793      61737443 
 2793      6C6F636B 
 2793      00
 2794              	.LASF55:
 2795 059e 5F5F7346 		.ascii	"__sFILE\000"
 2795      494C4500 
 2796              	.LASF108:
 2797 05a6 5F72616E 		.ascii	"_rand_next\000"
 2797      645F6E65 
 2797      787400
 2798              	.LASF98:
 2799 05b1 5F696F62 		.ascii	"_iobs\000"
 2799      7300
 2800              	.LASF77:
 2801 05b7 5F696E63 		.ascii	"_inc\000"
ARM GAS  /tmp/cc82ZubX.s 			page 56


 2801      00
 2802              	.LASF50:
 2803 05bc 5F696E64 		.ascii	"_ind\000"
 2803      00
 2804              	.LASF80:
 2805 05c1 5F637572 		.ascii	"_current_locale\000"
 2805      72656E74 
 2805      5F6C6F63 
 2805      616C6500 
 2806              	.LASF82:
 2807 05d1 5F5F636C 		.ascii	"__cleanup\000"
 2807      65616E75 
 2807      7000
 2808              	.LASF30:
 2809 05db 5F6D6178 		.ascii	"_maxwds\000"
 2809      77647300 
 2810              	.LASF72:
 2811 05e3 5F726565 		.ascii	"_reent\000"
 2811      6E7400
 2812              	.LASF99:
 2813 05ea 5F72616E 		.ascii	"_rand48\000"
 2813      64343800 
 2814              	.LASF100:
 2815 05f2 5F736565 		.ascii	"_seed\000"
 2815      6400
 2816              	.LASF24:
 2817 05f8 5F5F636F 		.ascii	"__count\000"
 2817      756E7400 
 2818              	.LASF14:
 2819 0600 75696E74 		.ascii	"uint32_t\000"
 2819      33325F74 
 2819      00
 2820              	.LASF37:
 2821 0609 5F5F746D 		.ascii	"__tm_hour\000"
 2821      5F686F75 
 2821      7200
 2822              	.LASF62:
 2823 0613 5F736565 		.ascii	"_seek\000"
 2823      6B00
 2824              	.LASF141:
 2825 0619 4269744F 		.ascii	"BitOrder\000"
 2825      72646572 
 2825      00
 2826              	.LASF20:
 2827 0622 5F66706F 		.ascii	"_fpos_t\000"
 2827      735F7400 
 2828              	.LASF134:
 2829 062a 6C6F6E67 		.ascii	"long double\000"
 2829      20646F75 
 2829      626C6500 
 2830              	.LASF73:
 2831 0636 5F657272 		.ascii	"_errno\000"
 2831      6E6F00
 2832              	.LASF94:
 2833 063d 63686172 		.ascii	"char\000"
 2833      00
 2834              	.LASF66:
ARM GAS  /tmp/cc82ZubX.s 			page 57


 2835 0642 5F626C6B 		.ascii	"_blksize\000"
 2835      73697A65 
 2835      00
 2836              	.LASF54:
 2837 064b 5F73697A 		.ascii	"_size\000"
 2837      6500
 2838              	.LASF0:
 2839 0651 756E7369 		.ascii	"unsigned int\000"
 2839      676E6564 
 2839      20696E74 
 2839      00
 2840              	.LASF6:
 2841 065e 5F5F696E 		.ascii	"__int32_t\000"
 2841      7433325F 
 2841      7400
 2842              	.LASF29:
 2843 0668 5F6E6578 		.ascii	"_next\000"
 2843      7400
 2844              	.LASF104:
 2845 066e 5F737472 		.ascii	"_strtok_last\000"
 2845      746F6B5F 
 2845      6C617374 
 2845      00
 2846              	.LASF25:
 2847 067b 5F5F7661 		.ascii	"__value\000"
 2847      6C756500 
 2848              	.LASF47:
 2849 0683 5F666E74 		.ascii	"_fntypes\000"
 2849      79706573 
 2849      00
 2850              	.LASF2:
 2851 068c 756E7369 		.ascii	"unsigned char\000"
 2851      676E6564 
 2851      20636861 
 2851      7200
 2852              	.LASF165:
 2853 069a 756C5661 		.ascii	"ulVal\000"
 2853      6C00
 2854              	.LASF102:
 2855 06a0 5F616464 		.ascii	"_add\000"
 2855      00
 2856              	.LASF155:
 2857 06a5 4150494E 		.ascii	"APIN_HSMCI_DATA\000"
 2857      5F48534D 
 2857      43495F44 
 2857      41544100 
 2858              	.LASF28:
 2859 06b5 5F5F554C 		.ascii	"__ULong\000"
 2859      6F6E6700 
 2860              	.LASF154:
 2861 06bd 4150494E 		.ascii	"APIN_HSMCI_CLOCK\000"
 2861      5F48534D 
 2861      43495F43 
 2861      4C4F434B 
 2861      00
 2862              	.LASF140:
 2863 06ce 5F5F6664 		.ascii	"__fdlibm_version\000"
ARM GAS  /tmp/cc82ZubX.s 			page 58


 2863      6C69626D 
 2863      5F766572 
 2863      73696F6E 
 2863      00
 2864              	.LASF126:
 2865 06df 5F676C6F 		.ascii	"_global_impure_ptr\000"
 2865      62616C5F 
 2865      696D7075 
 2865      72655F70 
 2865      747200
 2866              	.LASF145:
 2867 06f2 5F74696D 		.ascii	"_timezone\000"
 2867      657A6F6E 
 2867      6500
 2868              	.LASF135:
 2869 06fc 5F5F6664 		.ascii	"__fdlibm_ieee\000"
 2869      6C69626D 
 2869      5F696565 
 2869      6500
 2870              	.LASF157:
 2871 070a 4150494E 		.ascii	"APIN_GMAC_PHY_RESET\000"
 2871      5F474D41 
 2871      435F5048 
 2871      595F5245 
 2871      53455400 
 2872              	.LASF75:
 2873 071e 5F737464 		.ascii	"_stdout\000"
 2873      6F757400 
 2874              	.LASF41:
 2875 0726 5F5F746D 		.ascii	"__tm_wday\000"
 2875      5F776461 
 2875      7900
 2876              	.LASF96:
 2877 0730 5F676C75 		.ascii	"_glue\000"
 2877      6500
 2878              	.LASF74:
 2879 0736 5F737464 		.ascii	"_stdin\000"
 2879      696E00
 2880              	.LASF79:
 2881 073d 5F637572 		.ascii	"_current_category\000"
 2881      72656E74 
 2881      5F636174 
 2881      65676F72 
 2881      7900
 2882              	.LASF12:
 2883 074f 75696E74 		.ascii	"uint8_t\000"
 2883      385F7400 
 2884              	.LASF113:
 2885 0757 5F6C3634 		.ascii	"_l64a_buf\000"
 2885      615F6275 
 2885      6600
 2886              	.LASF91:
 2887 0761 5F736967 		.ascii	"_sig_func\000"
 2887      5F66756E 
 2887      6300
 2888              	.LASF130:
 2889 076b 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
ARM GAS  /tmp/cc82ZubX.s 			page 59


 2889      6972715F 
 2889      63726974 
 2889      6963616C 
 2889      5F736563 
 2890              	.LASF65:
 2891 078c 5F6E6275 		.ascii	"_nbuf\000"
 2891      6600
 2892              	.LASF124:
 2893 0792 5F756E75 		.ascii	"_unused\000"
 2893      73656400 
 2894              	.LASF43:
 2895 079a 5F5F746D 		.ascii	"__tm_isdst\000"
 2895      5F697364 
 2895      737400
 2896              	.LASF106:
 2897 07a5 5F6C6F63 		.ascii	"_localtime_buf\000"
 2897      616C7469 
 2897      6D655F62 
 2897      756600
 2898              	.LASF36:
 2899 07b4 5F5F746D 		.ascii	"__tm_min\000"
 2899      5F6D696E 
 2899      00
 2900              	.LASF168:
 2901 07bd 64696769 		.ascii	"digitalRead\000"
 2901      74616C52 
 2901      65616400 
 2902              	.LASF109:
 2903 07c9 5F723438 		.ascii	"_r48\000"
 2903      00
 2904              	.LASF111:
 2905 07ce 5F6D6274 		.ascii	"_mbtowc_state\000"
 2905      6F77635F 
 2905      73746174 
 2905      6500
 2906              	.LASF85:
 2907 07dc 5F703573 		.ascii	"_p5s\000"
 2907      00
 2908              	.LASF38:
 2909 07e1 5F5F746D 		.ascii	"__tm_mday\000"
 2909      5F6D6461 
 2909      7900
 2910              	.LASF144:
 2911 07eb 4E6F5069 		.ascii	"NoPin\000"
 2911      6E00
 2912              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
