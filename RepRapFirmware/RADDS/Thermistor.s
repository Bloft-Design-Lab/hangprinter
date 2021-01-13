ARM GAS  /tmp/ccjywbgS.s 			page 1


   1              		.cpu cortex-m3
   2              		.eabi_attribute 20, 1
   3              		.eabi_attribute 21, 1
   4              		.eabi_attribute 23, 3
   5              		.eabi_attribute 24, 1
   6              		.eabi_attribute 25, 1
   7              		.eabi_attribute 26, 1
   8              		.eabi_attribute 30, 2
   9              		.eabi_attribute 34, 1
  10              		.eabi_attribute 18, 4
  11              		.file	"Thermistor.cpp"
  12              		.global	__aeabi_i2f
  13              		.global	__aeabi_fsub
  14              		.global	__aeabi_fcmple
  15              		.global	__aeabi_fadd
  16              		.global	__aeabi_fmul
  17              		.global	__aeabi_fdiv
  18              		.global	__aeabi_fcmpun
  19              		.global	__aeabi_f2uiz
  20              		.global	__aeabi_fcmpgt
  21              		.global	__aeabi_fcmplt
  22              		.section	.text._ZN10Thermistor14GetTemperatureERf,"ax",%progbits
  23              		.align	1
  24              		.p2align 2,,3
  25              		.global	_ZN10Thermistor14GetTemperatureERf
  26              		.syntax unified
  27              		.thumb
  28              		.thumb_func
  29              		.fpu softvfp
  30              		.type	_ZN10Thermistor14GetTemperatureERf, %function
  31              	_ZN10Thermistor14GetTemperatureERf:
  32              		@ args = 0, pretend = 0, frame = 0
  33              		@ frame_needed = 0, uses_anonymous_args = 0
  34 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  35 0002 4C24     		movs	r4, #76
  36 0004 444A     		ldr	r2, .L27
  37 0006 0369     		ldr	r3, [r0, #16]
  38 0008 1268     		ldr	r2, [r2]	@ unaligned
  39 000a 04FB0323 		mla	r3, r4, r3, r2
  40 000e 93F85C23 		ldrb	r2, [r3, #860]	@ zero_extendqisi2
  41 0012 1AB9     		cbnz	r2, .L25
  42 0014 414B     		ldr	r3, .L27+4
  43 0016 0820     		movs	r0, #8
  44 0018 0B60     		str	r3, [r1]	@ float
  45 001a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  46              	.L25:
  47 001c D3F85863 		ldr	r6, [r3, #856]
  48 0020 0446     		mov	r4, r0
  49 0022 90F92600 		ldrsb	r0, [r0, #38]
  50 0026 F608     		lsrs	r6, r6, #3
  51 0028 00F50050 		add	r0, r0, #8192
  52 002c C6EB4000 		rsb	r0, r6, r0, lsl #1
  53 0030 0D46     		mov	r5, r1
  54 0032 FFF7FEFF 		bl	__aeabi_i2f
  55 0036 4FF07C51 		mov	r1, #1056964608
  56 003a FFF7FEFF 		bl	__aeabi_fsub
  57 003e 0021     		movs	r1, #0
ARM GAS  /tmp/ccjywbgS.s 			page 2


  58 0040 0746     		mov	r7, r0
  59 0042 FFF7FEFF 		bl	__aeabi_fcmple
  60 0046 58BB     		cbnz	r0, .L11
  61 0048 94F92500 		ldrsb	r0, [r4, #37]
  62 004c A6EB4000 		sub	r0, r6, r0, lsl #1
  63 0050 FFF7FEFF 		bl	__aeabi_i2f
  64 0054 4FF07C51 		mov	r1, #1056964608
  65 0058 FFF7FEFF 		bl	__aeabi_fadd
  66 005c 216A     		ldr	r1, [r4, #32]	@ float
  67 005e FFF7FEFF 		bl	__aeabi_fmul
  68 0062 3946     		mov	r1, r7
  69 0064 FFF7FEFF 		bl	__aeabi_fdiv
  70 0068 94F82430 		ldrb	r3, [r4, #36]	@ zero_extendqisi2
  71 006c 23B3     		cbz	r3, .L6
  72 006e 2C49     		ldr	r1, .L27+8
  73 0070 FFF7FEFF 		bl	__aeabi_fmul
  74 0074 0146     		mov	r1, r0
  75 0076 0446     		mov	r4, r0
  76 0078 FFF7FEFF 		bl	__aeabi_fcmpun
  77 007c 28B9     		cbnz	r0, .L12
  78 007e 2949     		ldr	r1, .L27+12
  79 0080 2046     		mov	r0, r4
  80 0082 FFF7FEFF 		bl	__aeabi_fcmplt
  81 0086 78B9     		cbnz	r0, .L26
  82 0088 264C     		ldr	r4, .L27+12
  83              	.L12:
  84 008a 2046     		mov	r0, r4
  85 008c FFF7FEFF 		bl	rintf
  86 0090 FFF7FEFF 		bl	__aeabi_f2uiz
  87 0094 81B2     		uxth	r1, r0
  88 0096 2846     		mov	r0, r5
  89 0098 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
  90 009c FFF7FEBF 		b	_ZN17TemperatureSensor19GetPT100TemperatureERft
  91              	.L11:
  92 00a0 214B     		ldr	r3, .L27+16
  93 00a2 0420     		movs	r0, #4
  94 00a4 2B60     		str	r3, [r5]	@ float
  95 00a6 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  96              	.L26:
  97 00a8 0021     		movs	r1, #0
  98 00aa 2046     		mov	r0, r4
  99 00ac FFF7FEFF 		bl	__aeabi_fcmpgt
 100 00b0 0028     		cmp	r0, #0
 101 00b2 EAD1     		bne	.L12
 102 00b4 0024     		movs	r4, #0
 103 00b6 E8E7     		b	.L12
 104              	.L6:
 105 00b8 FFF7FEFF 		bl	logf
 106 00bc E16A     		ldr	r1, [r4, #44]	@ float
 107 00be 0646     		mov	r6, r0
 108 00c0 FFF7FEFF 		bl	__aeabi_fmul
 109 00c4 A16A     		ldr	r1, [r4, #40]	@ float
 110 00c6 FFF7FEFF 		bl	__aeabi_fadd
 111 00ca E169     		ldr	r1, [r4, #28]	@ float
 112 00cc 0746     		mov	r7, r0
 113 00ce 3046     		mov	r0, r6
 114 00d0 FFF7FEFF 		bl	__aeabi_fmul
ARM GAS  /tmp/ccjywbgS.s 			page 3


 115 00d4 3146     		mov	r1, r6
 116 00d6 FFF7FEFF 		bl	__aeabi_fmul
 117 00da 3146     		mov	r1, r6
 118 00dc FFF7FEFF 		bl	__aeabi_fmul
 119 00e0 0146     		mov	r1, r0
 120 00e2 3846     		mov	r0, r7
 121 00e4 FFF7FEFF 		bl	__aeabi_fadd
 122 00e8 0021     		movs	r1, #0
 123 00ea 0446     		mov	r4, r0
 124 00ec FFF7FEFF 		bl	__aeabi_fcmpgt
 125 00f0 80B1     		cbz	r0, .L21
 126 00f2 2146     		mov	r1, r4
 127 00f4 4FF07E50 		mov	r0, #1065353216
 128 00f8 FFF7FEFF 		bl	__aeabi_fdiv
 129 00fc 0B49     		ldr	r1, .L27+20
 130 00fe FFF7FEFF 		bl	__aeabi_fsub
 131 0102 0B49     		ldr	r1, .L27+24
 132 0104 0446     		mov	r4, r0
 133 0106 FFF7FEFF 		bl	__aeabi_fcmplt
 134 010a 0028     		cmp	r0, #0
 135 010c C8D1     		bne	.L11
 136              	.L9:
 137 010e 2C60     		str	r4, [r5]	@ float
 138 0110 0020     		movs	r0, #0
 139 0112 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 140              	.L21:
 141 0114 014C     		ldr	r4, .L27+4
 142 0116 FAE7     		b	.L9
 143              	.L28:
 144              		.align	2
 145              	.L27:
 146 0118 00000000 		.word	reprap
 147 011c 0000FA44 		.word	1157234688
 148 0120 00002041 		.word	1092616192
 149 0124 00FF7F47 		.word	1199570688
 150 0128 339388C3 		.word	-1014459597
 151 012c 33938843 		.word	1133024051
 152 0130 0000A0C0 		.word	-1063256064
 153              		.size	_ZN10Thermistor14GetTemperatureERf, .-_ZN10Thermistor14GetTemperatureERf
 154              		.section	.text._ZN10ThermistorD2Ev,"axG",%progbits,_ZN10ThermistorD5Ev,comdat
 155              		.align	1
 156              		.p2align 2,,3
 157              		.weak	_ZN10ThermistorD2Ev
 158              		.syntax unified
 159              		.thumb
 160              		.thumb_func
 161              		.fpu softvfp
 162              		.type	_ZN10ThermistorD2Ev, %function
 163              	_ZN10ThermistorD2Ev:
 164              		@ args = 0, pretend = 0, frame = 0
 165              		@ frame_needed = 0, uses_anonymous_args = 0
 166 0000 10B5     		push	{r4, lr}
 167 0002 0446     		mov	r4, r0
 168 0004 024B     		ldr	r3, .L31
 169 0006 0360     		str	r3, [r0]
 170 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
 171 000c 2046     		mov	r0, r4
ARM GAS  /tmp/ccjywbgS.s 			page 4


 172 000e 10BD     		pop	{r4, pc}
 173              	.L32:
 174              		.align	2
 175              	.L31:
 176 0010 08000000 		.word	.LANCHOR0+8
 177              		.size	_ZN10ThermistorD2Ev, .-_ZN10ThermistorD2Ev
 178              		.weak	_ZN10ThermistorD1Ev
 179              		.thumb_set _ZN10ThermistorD1Ev,_ZN10ThermistorD2Ev
 180              		.section	.text._ZN10ThermistorD0Ev,"axG",%progbits,_ZN10ThermistorD5Ev,comdat
 181              		.align	1
 182              		.p2align 2,,3
 183              		.weak	_ZN10ThermistorD0Ev
 184              		.syntax unified
 185              		.thumb
 186              		.thumb_func
 187              		.fpu softvfp
 188              		.type	_ZN10ThermistorD0Ev, %function
 189              	_ZN10ThermistorD0Ev:
 190              		@ args = 0, pretend = 0, frame = 0
 191              		@ frame_needed = 0, uses_anonymous_args = 0
 192 0000 10B5     		push	{r4, lr}
 193 0002 0446     		mov	r4, r0
 194 0004 044B     		ldr	r3, .L35
 195 0006 0360     		str	r3, [r0]
 196 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
 197 000c 2046     		mov	r0, r4
 198 000e 3021     		movs	r1, #48
 199 0010 FFF7FEFF 		bl	_ZdlPvj
 200 0014 2046     		mov	r0, r4
 201 0016 10BD     		pop	{r4, pc}
 202              	.L36:
 203              		.align	2
 204              	.L35:
 205 0018 08000000 		.word	.LANCHOR0+8
 206              		.size	_ZN10ThermistorD0Ev, .-_ZN10ThermistorD0Ev
 207              		.section	.text._ZN10Thermistor4InitEv,"ax",%progbits
 208              		.align	1
 209              		.p2align 2,,3
 210              		.global	_ZN10Thermistor4InitEv
 211              		.syntax unified
 212              		.thumb
 213              		.thumb_func
 214              		.fpu softvfp
 215              		.type	_ZN10Thermistor4InitEv, %function
 216              	_ZN10Thermistor4InitEv:
 217              		@ args = 0, pretend = 0, frame = 0
 218              		@ frame_needed = 0, uses_anonymous_args = 0
 219 0000 164B     		ldr	r3, .L42
 220 0002 F0B5     		push	{r4, r5, r6, r7, lr}
 221 0004 0669     		ldr	r6, [r0, #16]
 222 0006 1868     		ldr	r0, [r3]
 223              		.syntax unified
 224              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 225 0008 EFF31087 		MRS r7, primask
 226              	@ 0 "" 2
 227              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 228 000c 72B6     		cpsid i
ARM GAS  /tmp/ccjywbgS.s 			page 5


 229              	@ 0 "" 2
 230              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 231 000e BFF35F8F 		dmb
 232              	@ 0 "" 2
 233              		.thumb
 234              		.syntax unified
 235 0012 0025     		movs	r5, #0
 236 0014 4C23     		movs	r3, #76
 237 0016 2621     		movs	r1, #38
 238 0018 2A46     		mov	r2, r5
 239 001a 40F6FF74 		movw	r4, #4095
 240 001e 03FB0603 		mla	r3, r3, r6, r0
 241 0022 01FB06F1 		mul	r1, r1, r6
 242 0026 DFF83CE0 		ldr	lr, .L42+8
 243 002a 0D4E     		ldr	r6, .L42+4
 244 002c 3570     		strb	r5, [r6]
 245 002e C3F858E3 		str	lr, [r3, #856]
 246 0032 C3F85453 		str	r5, [r3, #852]
 247 0036 83F85C53 		strb	r5, [r3, #860]
 248              	.L38:
 249 003a 8B18     		adds	r3, r1, r2
 250 003c 03F5C473 		add	r3, r3, #392
 251 0040 0132     		adds	r2, r2, #1
 252 0042 00EB4303 		add	r3, r0, r3, lsl #1
 253 0046 202A     		cmp	r2, #32
 254 0048 9C80     		strh	r4, [r3, #4]	@ movhi
 255 004a F6D1     		bne	.L38
 256 004c 27B9     		cbnz	r7, .L37
 257 004e 0123     		movs	r3, #1
 258 0050 3370     		strb	r3, [r6]
 259              		.syntax unified
 260              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 261 0052 BFF35F8F 		dmb
 262              	@ 0 "" 2
 263              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 264 0056 62B6     		cpsie i
 265              	@ 0 "" 2
 266              		.thumb
 267              		.syntax unified
 268              	.L37:
 269 0058 F0BD     		pop	{r4, r5, r6, r7, pc}
 270              	.L43:
 271 005a 00BF     		.align	2
 272              	.L42:
 273 005c 00000000 		.word	reprap
 274 0060 00000000 		.word	g_interrupt_enabled
 275 0064 E0FF0100 		.word	131040
 276              		.size	_ZN10Thermistor4InitEv, .-_ZN10Thermistor4InitEv
 277              		.section	.text._ZN10Thermistor21CalcDerivedParametersEv,"ax",%progbits
 278              		.align	1
 279              		.p2align 2,,3
 280              		.global	_ZN10Thermistor21CalcDerivedParametersEv
 281              		.syntax unified
 282              		.thumb
 283              		.thumb_func
 284              		.fpu softvfp
 285              		.type	_ZN10Thermistor21CalcDerivedParametersEv, %function
ARM GAS  /tmp/ccjywbgS.s 			page 6


 286              	_ZN10Thermistor21CalcDerivedParametersEv:
 287              		@ args = 0, pretend = 0, frame = 0
 288              		@ frame_needed = 0, uses_anonymous_args = 0
 289 0000 70B5     		push	{r4, r5, r6, lr}
 290 0002 0446     		mov	r4, r0
 291 0004 4FF07E50 		mov	r0, #1065353216
 292 0008 A169     		ldr	r1, [r4, #24]	@ float
 293 000a FFF7FEFF 		bl	__aeabi_fdiv
 294 000e E062     		str	r0, [r4, #44]	@ float
 295 0010 6069     		ldr	r0, [r4, #20]	@ float
 296 0012 FFF7FEFF 		bl	logf
 297 0016 E16A     		ldr	r1, [r4, #44]	@ float
 298 0018 0546     		mov	r5, r0
 299 001a FFF7FEFF 		bl	__aeabi_fmul
 300 001e 0146     		mov	r1, r0
 301 0020 0948     		ldr	r0, .L46
 302 0022 FFF7FEFF 		bl	__aeabi_fsub
 303 0026 E169     		ldr	r1, [r4, #28]	@ float
 304 0028 0646     		mov	r6, r0
 305 002a 2846     		mov	r0, r5
 306 002c FFF7FEFF 		bl	__aeabi_fmul
 307 0030 2946     		mov	r1, r5
 308 0032 FFF7FEFF 		bl	__aeabi_fmul
 309 0036 2946     		mov	r1, r5
 310 0038 FFF7FEFF 		bl	__aeabi_fmul
 311 003c 0146     		mov	r1, r0
 312 003e 3046     		mov	r0, r6
 313 0040 FFF7FEFF 		bl	__aeabi_fsub
 314 0044 A062     		str	r0, [r4, #40]	@ float
 315 0046 70BD     		pop	{r4, r5, r6, pc}
 316              	.L47:
 317              		.align	2
 318              	.L46:
 319 0048 0FCF5B3B 		.word	995872527
 320              		.size	_ZN10Thermistor21CalcDerivedParametersEv, .-_ZN10Thermistor21CalcDerivedParametersEv
 321              		.section	.text._ZN10ThermistorC2Ejb,"ax",%progbits
 322              		.align	1
 323              		.p2align 2,,3
 324              		.global	_ZN10ThermistorC2Ejb
 325              		.syntax unified
 326              		.thumb
 327              		.thumb_func
 328              		.fpu softvfp
 329              		.type	_ZN10ThermistorC2Ejb, %function
 330              	_ZN10ThermistorC2Ejb:
 331              		@ args = 0, pretend = 0, frame = 0
 332              		@ frame_needed = 0, uses_anonymous_args = 0
 333 0000 70B5     		push	{r4, r5, r6, lr}
 334 0002 0446     		mov	r4, r0
 335 0004 0E46     		mov	r6, r1
 336 0006 EAB1     		cbz	r2, .L58
 337 0008 184A     		ldr	r2, .L60
 338 000a FFF7FEFF 		bl	_ZN17TemperatureSensorC2EjPKc
 339 000e 0023     		movs	r3, #0
 340 0010 0121     		movs	r1, #1
 341 0012 174A     		ldr	r2, .L60+4
 342 0014 84F82530 		strb	r3, [r4, #37]
ARM GAS  /tmp/ccjywbgS.s 			page 7


 343 0018 2260     		str	r2, [r4]
 344 001a 164A     		ldr	r2, .L60+8
 345 001c 84F82630 		strb	r3, [r4, #38]
 346 0020 A6F5FA73 		sub	r3, r6, #500
 347 0024 84F82410 		strb	r1, [r4, #36]
 348 0028 2361     		str	r3, [r4, #16]
 349 002a 2262     		str	r2, [r4, #32]	@ float
 350 002c E6B1     		cbz	r6, .L53
 351              	.L59:
 352 002e 1249     		ldr	r1, .L60+12
 353              	.L51:
 354 0030 0023     		movs	r3, #0
 355 0032 124A     		ldr	r2, .L60+16
 356 0034 2046     		mov	r0, r4
 357 0036 6161     		str	r1, [r4, #20]	@ float
 358 0038 A261     		str	r2, [r4, #24]	@ float
 359 003a E361     		str	r3, [r4, #28]	@ float
 360 003c FFF7FEFF 		bl	_ZN10Thermistor21CalcDerivedParametersEv
 361 0040 2046     		mov	r0, r4
 362 0042 70BD     		pop	{r4, r5, r6, pc}
 363              	.L58:
 364 0044 1546     		mov	r5, r2
 365 0046 0E4A     		ldr	r2, .L60+20
 366 0048 FFF7FEFF 		bl	_ZN17TemperatureSensorC2EjPKc
 367 004c 084B     		ldr	r3, .L60+4
 368 004e 094A     		ldr	r2, .L60+8
 369 0050 2360     		str	r3, [r4]
 370 0052 3346     		mov	r3, r6
 371 0054 84F82450 		strb	r5, [r4, #36]
 372 0058 84F82550 		strb	r5, [r4, #37]
 373 005c 84F82650 		strb	r5, [r4, #38]
 374 0060 2361     		str	r3, [r4, #16]
 375 0062 2262     		str	r2, [r4, #32]	@ float
 376 0064 002E     		cmp	r6, #0
 377 0066 E2D1     		bne	.L59
 378              	.L53:
 379 0068 0649     		ldr	r1, .L60+24
 380 006a E1E7     		b	.L51
 381              	.L61:
 382              		.align	2
 383              	.L60:
 384 006c 00000000 		.word	.LC0
 385 0070 08000000 		.word	.LANCHOR0+8
 386 0074 00E09245 		.word	1167253504
 387 0078 0050C347 		.word	1203982336
 388 007c 00207E45 		.word	1165893632
 389 0080 08000000 		.word	.LC1
 390 0084 00401C46 		.word	1176256512
 391              		.size	_ZN10ThermistorC2Ejb, .-_ZN10ThermistorC2Ejb
 392              		.global	_ZN10ThermistorC1Ejb
 393              		.thumb_set _ZN10ThermistorC1Ejb,_ZN10ThermistorC2Ejb
 394              		.global	__aeabi_f2d
 395              		.section	.text._ZN10Thermistor9ConfigureEjjR11GCodeBufferRK9StringRef,"ax",%progbits
 396              		.align	1
 397              		.p2align 2,,3
 398              		.global	_ZN10Thermistor9ConfigureEjjR11GCodeBufferRK9StringRef
 399              		.syntax unified
ARM GAS  /tmp/ccjywbgS.s 			page 8


 400              		.thumb
 401              		.thumb_func
 402              		.fpu softvfp
 403              		.type	_ZN10Thermistor9ConfigureEjjR11GCodeBufferRK9StringRef, %function
 404              	_ZN10Thermistor9ConfigureEjjR11GCodeBufferRK9StringRef:
 405              		@ args = 4, pretend = 0, frame = 8
 406              		@ frame_needed = 0, uses_anonymous_args = 0
 407 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 408 0002 40F23115 		movw	r5, #305
 409 0006 0026     		movs	r6, #0
 410 0008 89B0     		sub	sp, sp, #36
 411 000a A942     		cmp	r1, r5
 412 000c 8DF81F60 		strb	r6, [sp, #31]
 413 0010 02D0     		beq	.L94
 414              	.L84:
 415 0012 0120     		movs	r0, #1
 416 0014 09B0     		add	sp, sp, #36
 417              		@ sp needed
 418 0016 F0BD     		pop	{r4, r5, r6, r7, pc}
 419              	.L94:
 420 0018 1D46     		mov	r5, r3
 421 001a 0446     		mov	r4, r0
 422 001c 0DF11F03 		add	r3, sp, #31
 423 0020 1646     		mov	r6, r2
 424 0022 5221     		movs	r1, #82
 425 0024 00F12002 		add	r2, r0, #32
 426 0028 2846     		mov	r0, r5
 427 002a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 428 002e 94F82430 		ldrb	r3, [r4, #36]	@ zero_extendqisi2
 429 0032 002B     		cmp	r3, #0
 430 0034 6BD0     		beq	.L95
 431              	.L66:
 432 0036 4C21     		movs	r1, #76
 433 0038 2846     		mov	r0, r5
 434 003a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 435 003e 0028     		cmp	r0, #0
 436 0040 53D1     		bne	.L96
 437              	.L69:
 438 0042 4821     		movs	r1, #72
 439 0044 2846     		mov	r0, r5
 440 0046 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 441 004a 0028     		cmp	r0, #0
 442 004c 3BD1     		bne	.L97
 443              	.L70:
 444 004e 0DF11F02 		add	r2, sp, #31
 445 0052 2946     		mov	r1, r5
 446 0054 2046     		mov	r0, r4
 447 0056 FFF7FEFF 		bl	_ZN17TemperatureSensor22TryConfigureHeaterNameER11GCodeBufferRb
 448 005a 9DF81F30 		ldrb	r3, [sp, #31]	@ zero_extendqisi2
 449 005e 002B     		cmp	r3, #0
 450 0060 D7D1     		bne	.L84
 451 0062 2846     		mov	r0, r5
 452 0064 5821     		movs	r1, #88
 453 0066 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 454 006a 0028     		cmp	r0, #0
 455 006c D1D1     		bne	.L84
 456 006e 3146     		mov	r1, r6
ARM GAS  /tmp/ccjywbgS.s 			page 9


 457 0070 0E9A     		ldr	r2, [sp, #56]
 458 0072 2046     		mov	r0, r4
 459 0074 FFF7FEFF 		bl	_ZNK17TemperatureSensor22CopyBasicHeaterDetailsEjRK9StringRef
 460 0078 94F82430 		ldrb	r3, [r4, #36]	@ zero_extendqisi2
 461 007c 002B     		cmp	r3, #0
 462 007e 6CD1     		bne	.L74
 463 0080 6069     		ldr	r0, [r4, #20]	@ float
 464 0082 FFF7FEFF 		bl	__aeabi_f2d
 465 0086 0646     		mov	r6, r0
 466 0088 206A     		ldr	r0, [r4, #32]	@ float
 467 008a 0F46     		mov	r7, r1
 468 008c FFF7FEFF 		bl	__aeabi_f2d
 469 0090 CDE90401 		strd	r0, [sp, #16]
 470 0094 E069     		ldr	r0, [r4, #28]	@ float
 471 0096 FFF7FEFF 		bl	__aeabi_f2d
 472 009a CDE90201 		strd	r0, [sp, #8]
 473 009e A069     		ldr	r0, [r4, #24]	@ float
 474 00a0 FFF7FEFF 		bl	__aeabi_f2d
 475 00a4 3246     		mov	r2, r6
 476 00a6 CDE90001 		strd	r0, [sp]
 477 00aa 3B46     		mov	r3, r7
 478 00ac 3049     		ldr	r1, .L98
 479 00ae 0E98     		ldr	r0, [sp, #56]
 480 00b0 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 481              	.L73:
 482 00b4 94F92630 		ldrsb	r3, [r4, #38]
 483 00b8 94F92520 		ldrsb	r2, [r4, #37]
 484 00bc 2D49     		ldr	r1, .L98+4
 485 00be 0E98     		ldr	r0, [sp, #56]
 486 00c0 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 487 00c4 A5E7     		b	.L84
 488              	.L97:
 489 00c6 2846     		mov	r0, r5
 490 00c8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 491 00cc 6FF07703 		mvn	r3, #119
 492 00d0 9842     		cmp	r0, r3
 493 00d2 B8BF     		it	lt
 494 00d4 1846     		movlt	r0, r3
 495 00d6 7828     		cmp	r0, #120
 496 00d8 4FF00103 		mov	r3, #1
 497 00dc A8BF     		it	ge
 498 00de 7820     		movge	r0, #120
 499 00e0 8DF81F30 		strb	r3, [sp, #31]
 500 00e4 84F82600 		strb	r0, [r4, #38]
 501 00e8 B1E7     		b	.L70
 502              	.L96:
 503 00ea 2846     		mov	r0, r5
 504 00ec FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 505 00f0 6FF07703 		mvn	r3, #119
 506 00f4 9842     		cmp	r0, r3
 507 00f6 B8BF     		it	lt
 508 00f8 1846     		movlt	r0, r3
 509 00fa 7828     		cmp	r0, #120
 510 00fc 4FF00103 		mov	r3, #1
 511 0100 A8BF     		it	ge
 512 0102 7820     		movge	r0, #120
 513 0104 8DF81F30 		strb	r3, [sp, #31]
ARM GAS  /tmp/ccjywbgS.s 			page 10


 514 0108 84F82500 		strb	r0, [r4, #37]
 515 010c 99E7     		b	.L69
 516              	.L95:
 517 010e 0DF11F03 		add	r3, sp, #31
 518 0112 04F11802 		add	r2, r4, #24
 519 0116 4221     		movs	r1, #66
 520 0118 2846     		mov	r0, r5
 521 011a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 522 011e 9DF81F30 		ldrb	r3, [sp, #31]	@ zero_extendqisi2
 523 0122 0BB1     		cbz	r3, .L67
 524 0124 0023     		movs	r3, #0
 525 0126 E361     		str	r3, [r4, #28]	@ float
 526              	.L67:
 527 0128 0DF11F03 		add	r3, sp, #31
 528 012c 04F11C02 		add	r2, r4, #28
 529 0130 4321     		movs	r1, #67
 530 0132 2846     		mov	r0, r5
 531 0134 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 532 0138 0DF11F03 		add	r3, sp, #31
 533 013c 04F11402 		add	r2, r4, #20
 534 0140 5421     		movs	r1, #84
 535 0142 2846     		mov	r0, r5
 536 0144 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 537 0148 9DF81F30 		ldrb	r3, [sp, #31]	@ zero_extendqisi2
 538 014c 002B     		cmp	r3, #0
 539 014e 3FF472AF 		beq	.L66
 540 0152 2046     		mov	r0, r4
 541 0154 FFF7FEFF 		bl	_ZN10Thermistor21CalcDerivedParametersEv
 542 0158 6DE7     		b	.L66
 543              	.L74:
 544 015a 206A     		ldr	r0, [r4, #32]	@ float
 545 015c FFF7FEFF 		bl	__aeabi_f2d
 546 0160 0246     		mov	r2, r0
 547 0162 0B46     		mov	r3, r1
 548 0164 0E98     		ldr	r0, [sp, #56]
 549 0166 0449     		ldr	r1, .L98+8
 550 0168 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 551 016c A2E7     		b	.L73
 552              	.L99:
 553 016e 00BF     		.align	2
 554              	.L98:
 555 0170 0C000000 		.word	.LC3
 556 0174 2C000000 		.word	.LC4
 557 0178 00000000 		.word	.LC2
 558              		.size	_ZN10Thermistor9ConfigureEjjR11GCodeBufferRK9StringRef, .-_ZN10Thermistor9ConfigureEjjR11GCo
 559              		.global	_ZTV10Thermistor
 560              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 561              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 562              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 563              	_ZL28cpu_irq_prev_interrupt_state:
 564 0000 00       		.space	1
 565              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 566              		.align	2
 567              		.type	_ZL32cpu_irq_critical_section_counter, %object
 568              		.size	_ZL32cpu_irq_critical_section_counter, 4
 569              	_ZL32cpu_irq_critical_section_counter:
 570 0000 00000000 		.space	4
ARM GAS  /tmp/ccjywbgS.s 			page 11


 571              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 572              		.align	2
 573              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 574              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 575              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 576 0000 00000000 		.space	4
 577              		.section	.rodata._ZN10Thermistor9ConfigureEjjR11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 578              		.align	2
 579              	.LC2:
 580 0000 2C20523A 		.ascii	", R:%.1f\000"
 580      252E3166 
 580      00
 581 0009 000000   		.space	3
 582              	.LC3:
 583 000c 2C20543A 		.ascii	", T:%.1f B:%.1f C:%.2e R:%.1f\000"
 583      252E3166 
 583      20423A25 
 583      2E316620 
 583      433A252E 
 584 002a 0000     		.space	2
 585              	.LC4:
 586 002c 204C3A25 		.ascii	" L:%d H:%d\000"
 586      6420483A 
 586      256400
 587              		.section	.rodata._ZN10ThermistorC2Ejb.str1.4,"aMS",%progbits,1
 588              		.align	2
 589              	.LC0:
 590 0000 50543130 		.ascii	"PT1000\000"
 590      303000
 591 0007 00       		.space	1
 592              	.LC1:
 593 0008 54686572 		.ascii	"Thermistor\000"
 593      6D697374 
 593      6F7200
 594              		.section	.rodata._ZTV10Thermistor,"a",%progbits
 595              		.align	2
 596              		.set	.LANCHOR0,. + 0
 597              		.type	_ZTV10Thermistor, %object
 598              		.size	_ZTV10Thermistor, 28
 599              	_ZTV10Thermistor:
 600 0000 00000000 		.word	0
 601 0004 00000000 		.word	0
 602 0008 00000000 		.word	_ZN10Thermistor9ConfigureEjjR11GCodeBufferRK9StringRef
 603 000c 00000000 		.word	_ZN10Thermistor4InitEv
 604 0010 00000000 		.word	_ZN10Thermistor14GetTemperatureERf
 605 0014 00000000 		.word	_ZN10ThermistorD1Ev
 606 0018 00000000 		.word	_ZN10ThermistorD0Ev
 607              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
