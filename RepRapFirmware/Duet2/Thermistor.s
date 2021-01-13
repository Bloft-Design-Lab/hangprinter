ARM GAS  /tmp/ccjmi97x.s 			page 1


   1              		.cpu cortex-m4
   2              		.eabi_attribute 27, 1
   3              		.eabi_attribute 28, 1
   4              		.eabi_attribute 20, 1
   5              		.eabi_attribute 21, 1
   6              		.eabi_attribute 23, 3
   7              		.eabi_attribute 24, 1
   8              		.eabi_attribute 25, 1
   9              		.eabi_attribute 26, 1
  10              		.eabi_attribute 30, 2
  11              		.eabi_attribute 34, 1
  12              		.eabi_attribute 18, 4
  13              		.file	"Thermistor.cpp"
  14              		.section	.text._ZN10Thermistor14GetTemperatureERf,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN10Thermistor14GetTemperatureERf
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN10Thermistor14GetTemperatureERf, %function
  23              	_ZN10Thermistor14GetTemperatureERf:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 38B5     		push	{r3, r4, r5, lr}
  27 0002 484A     		ldr	r2, .L21
  28 0004 0369     		ldr	r3, [r0, #16]
  29 0006 1268     		ldr	r2, [r2]	@ unaligned
  30 0008 4C24     		movs	r4, #76
  31 000a 04FB0323 		mla	r3, r4, r3, r2
  32 000e 93F8B024 		ldrb	r2, [r3, #1200]	@ zero_extendqisi2
  33 0012 002A     		cmp	r2, #0
  34 0014 50D0     		beq	.L2
  35 0016 D3F8AC34 		ldr	r3, [r3, #1196]
  36 001a 90F92620 		ldrsb	r2, [r0, #38]
  37 001e DB08     		lsrs	r3, r3, #3
  38 0020 02F50052 		add	r2, r2, #8192
  39 0024 C3EB4202 		rsb	r2, r3, r2, lsl #1
  40 0028 07EE102A 		vmov	s14, r2	@ int
  41 002c B8EEC77A 		vcvt.f32.s32	s14, s14
  42 0030 F6EE006A 		vmov.f32	s13, #5.0e-1
  43 0034 37EE667A 		vsub.f32	s14, s14, s13
  44 0038 0D46     		mov	r5, r1
  45 003a B5EEC07A 		vcmpe.f32	s14, #0
  46 003e 90F92510 		ldrsb	r1, [r0, #37]
  47 0042 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  48 0046 0446     		mov	r4, r0
  49 0048 4FEA4101 		lsl	r1, r1, #1
  50 004c 63D9     		bls	.L11
  51 004e 5B1A     		subs	r3, r3, r1
  52 0050 07EE903A 		vmov	s15, r3	@ int
  53 0054 F8EEE77A 		vcvt.f32.s32	s15, s15
  54 0058 90ED086A 		vldr.32	s12, [r0, #32]
  55 005c 90F82430 		ldrb	r3, [r0, #36]	@ zero_extendqisi2
  56 0060 77EEA67A 		vadd.f32	s15, s15, s13
  57 0064 67EE867A 		vmul.f32	s15, s15, s12
ARM GAS  /tmp/ccjmi97x.s 			page 2


  58 0068 87EE870A 		vdiv.f32	s0, s15, s14
  59 006c 43B3     		cbz	r3, .L6
  60 006e F2EE047A 		vmov.f32	s15, #1.0e+1
  61 0072 20EE270A 		vmul.f32	s0, s0, s15
  62 0076 B4EE400A 		vcmp.f32	s0, s0
  63 007a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  64 007e 0DD6     		bvs	.L7
  65 0080 DFED297A 		vldr.32	s15, .L21+4
  66 0084 B4EEE70A 		vcmpe.f32	s0, s15
  67 0088 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  68 008c 40D5     		bpl	.L17
  69 008e B5EEC00A 		vcmpe.f32	s0, #0
  70 0092 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  71 0096 01DC     		bgt	.L7
  72 0098 9FED240A 		vldr.32	s0, .L21+8
  73              	.L7:
  74 009c FFF7FEFF 		bl	rintf
  75 00a0 BCEEC00A 		vcvt.u32.f32	s0, s0
  76 00a4 2846     		mov	r0, r5
  77 00a6 10EE103A 		vmov	r3, s0	@ int
  78 00aa A3F11401 		sub	r1, r3, #20
  79 00ae 89B2     		uxth	r1, r1
  80 00b0 BDE83840 		pop	{r3, r4, r5, lr}
  81 00b4 FFF7FEBF 		b	_ZN17TemperatureSensor19GetPT100TemperatureERft
  82              	.L2:
  83 00b8 1D4B     		ldr	r3, .L21+12
  84 00ba 0B60     		str	r3, [r1]	@ float
  85 00bc 0820     		movs	r0, #8
  86 00be 38BD     		pop	{r3, r4, r5, pc}
  87              	.L6:
  88 00c0 FFF7FEFF 		bl	logf
  89 00c4 D4ED0B6A 		vldr.32	s13, [r4, #44]
  90 00c8 D4ED0A7A 		vldr.32	s15, [r4, #40]
  91 00cc 94ED077A 		vldr.32	s14, [r4, #28]
  92 00d0 E6EE807A 		vfma.f32	s15, s13, s0
  93 00d4 20EE077A 		vmul.f32	s14, s0, s14
  94 00d8 27EE007A 		vmul.f32	s14, s14, s0
  95 00dc E7EE007A 		vfma.f32	s15, s14, s0
  96 00e0 F5EEC07A 		vcmpe.f32	s15, #0
  97 00e4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  98 00e8 19DD     		ble	.L18
  99 00ea F7EE006A 		vmov.f32	s13, #1.0e+0
 100 00ee 86EEA77A 		vdiv.f32	s14, s13, s15
 101 00f2 DFED107A 		vldr.32	s15, .L21+16
 102 00f6 77EE677A 		vsub.f32	s15, s14, s15
 103 00fa B9EE047A 		vmov.f32	s14, #-5.0e+0
 104 00fe F4EEC77A 		vcmpe.f32	s15, s14
 105 0102 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 106 0106 06D4     		bmi	.L11
 107              	.L9:
 108 0108 C5ED007A 		vstr.32	s15, [r5]
 109 010c 0020     		movs	r0, #0
 110 010e 38BD     		pop	{r3, r4, r5, pc}
 111              	.L17:
 112 0110 B0EE670A 		vmov.f32	s0, s15
 113 0114 C2E7     		b	.L7
 114              	.L11:
ARM GAS  /tmp/ccjmi97x.s 			page 3


 115 0116 084B     		ldr	r3, .L21+20
 116 0118 2B60     		str	r3, [r5]	@ float
 117 011a 0420     		movs	r0, #4
 118 011c 38BD     		pop	{r3, r4, r5, pc}
 119              	.L18:
 120 011e DFED077A 		vldr.32	s15, .L21+24
 121 0122 F1E7     		b	.L9
 122              	.L22:
 123              		.align	2
 124              	.L21:
 125 0124 00000000 		.word	reprap
 126 0128 00FF7F47 		.word	1199570688
 127 012c 00000000 		.word	0
 128 0130 0000FA44 		.word	1157234688
 129 0134 33938843 		.word	1133024051
 130 0138 339388C3 		.word	-1014459597
 131 013c 0000FA44 		.word	1157234688
 132              		.size	_ZN10Thermistor14GetTemperatureERf, .-_ZN10Thermistor14GetTemperatureERf
 133              		.section	.text._ZN10ThermistorD2Ev,"axG",%progbits,_ZN10ThermistorD5Ev,comdat
 134              		.align	1
 135              		.p2align 2,,3
 136              		.weak	_ZN10ThermistorD2Ev
 137              		.syntax unified
 138              		.thumb
 139              		.thumb_func
 140              		.fpu fpv4-sp-d16
 141              		.type	_ZN10ThermistorD2Ev, %function
 142              	_ZN10ThermistorD2Ev:
 143              		@ args = 0, pretend = 0, frame = 0
 144              		@ frame_needed = 0, uses_anonymous_args = 0
 145 0000 10B5     		push	{r4, lr}
 146 0002 034B     		ldr	r3, .L25
 147 0004 0360     		str	r3, [r0]
 148 0006 0446     		mov	r4, r0
 149 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
 150 000c 2046     		mov	r0, r4
 151 000e 10BD     		pop	{r4, pc}
 152              	.L26:
 153              		.align	2
 154              	.L25:
 155 0010 08000000 		.word	.LANCHOR0+8
 156              		.size	_ZN10ThermistorD2Ev, .-_ZN10ThermistorD2Ev
 157              		.weak	_ZN10ThermistorD1Ev
 158              		.thumb_set _ZN10ThermistorD1Ev,_ZN10ThermistorD2Ev
 159              		.section	.text._ZN10ThermistorD0Ev,"axG",%progbits,_ZN10ThermistorD5Ev,comdat
 160              		.align	1
 161              		.p2align 2,,3
 162              		.weak	_ZN10ThermistorD0Ev
 163              		.syntax unified
 164              		.thumb
 165              		.thumb_func
 166              		.fpu fpv4-sp-d16
 167              		.type	_ZN10ThermistorD0Ev, %function
 168              	_ZN10ThermistorD0Ev:
 169              		@ args = 0, pretend = 0, frame = 0
 170              		@ frame_needed = 0, uses_anonymous_args = 0
 171 0000 10B5     		push	{r4, lr}
ARM GAS  /tmp/ccjmi97x.s 			page 4


 172 0002 054B     		ldr	r3, .L29
 173 0004 0360     		str	r3, [r0]
 174 0006 0446     		mov	r4, r0
 175 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
 176 000c 2046     		mov	r0, r4
 177 000e 3021     		movs	r1, #48
 178 0010 FFF7FEFF 		bl	_ZdlPvj
 179 0014 2046     		mov	r0, r4
 180 0016 10BD     		pop	{r4, pc}
 181              	.L30:
 182              		.align	2
 183              	.L29:
 184 0018 08000000 		.word	.LANCHOR0+8
 185              		.size	_ZN10ThermistorD0Ev, .-_ZN10ThermistorD0Ev
 186              		.section	.text._ZN10Thermistor4InitEv,"ax",%progbits
 187              		.align	1
 188              		.p2align 2,,3
 189              		.global	_ZN10Thermistor4InitEv
 190              		.syntax unified
 191              		.thumb
 192              		.thumb_func
 193              		.fpu fpv4-sp-d16
 194              		.type	_ZN10Thermistor4InitEv, %function
 195              	_ZN10Thermistor4InitEv:
 196              		@ args = 0, pretend = 0, frame = 0
 197              		@ frame_needed = 0, uses_anonymous_args = 0
 198              		@ link register save eliminated.
 199 0000 F0B4     		push	{r4, r5, r6, r7}
 200 0002 154A     		ldr	r2, .L36
 201 0004 0369     		ldr	r3, [r0, #16]
 202 0006 1068     		ldr	r0, [r2]
 203              		.syntax unified
 204              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 205 0008 EFF31086 		MRS r6, primask
 206              	@ 0 "" 2
 207              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 208 000c 72B6     		cpsid i
 209              	@ 0 "" 2
 210              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 211 000e BFF35F8F 		dmb
 212              	@ 0 "" 2
 213              		.thumb
 214              		.syntax unified
 215 0012 4C22     		movs	r2, #76
 216 0014 02FB0302 		mla	r2, r2, r3, r0
 217 0018 104D     		ldr	r5, .L36+4
 218 001a 114F     		ldr	r7, .L36+8
 219 001c 0024     		movs	r4, #0
 220 001e 2621     		movs	r1, #38
 221 0020 2C70     		strb	r4, [r5]
 222 0022 01FB03F1 		mul	r1, r1, r3
 223 0026 C2F8AC74 		str	r7, [r2, #1196]
 224 002a 2346     		mov	r3, r4
 225 002c C2F8A844 		str	r4, [r2, #1192]
 226 0030 82F8B044 		strb	r4, [r2, #1200]
 227 0034 40F6FF74 		movw	r4, #4095
 228              	.L32:
ARM GAS  /tmp/ccjmi97x.s 			page 5


 229 0038 CA18     		adds	r2, r1, r3
 230 003a 02F50D72 		add	r2, r2, #564
 231 003e 0133     		adds	r3, r3, #1
 232 0040 202B     		cmp	r3, #32
 233 0042 20F81240 		strh	r4, [r0, r2, lsl #1]	@ movhi
 234 0046 F7D1     		bne	.L32
 235 0048 26B9     		cbnz	r6, .L31
 236 004a 0123     		movs	r3, #1
 237 004c 2B70     		strb	r3, [r5]
 238              		.syntax unified
 239              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 240 004e BFF35F8F 		dmb
 241              	@ 0 "" 2
 242              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 243 0052 62B6     		cpsie i
 244              	@ 0 "" 2
 245              		.thumb
 246              		.syntax unified
 247              	.L31:
 248 0054 F0BC     		pop	{r4, r5, r6, r7}
 249 0056 7047     		bx	lr
 250              	.L37:
 251              		.align	2
 252              	.L36:
 253 0058 00000000 		.word	reprap
 254 005c 00000000 		.word	g_interrupt_enabled
 255 0060 E0FF0100 		.word	131040
 256              		.size	_ZN10Thermistor4InitEv, .-_ZN10Thermistor4InitEv
 257              		.section	.text._ZN10Thermistor21CalcDerivedParametersEv,"ax",%progbits
 258              		.align	1
 259              		.p2align 2,,3
 260              		.global	_ZN10Thermistor21CalcDerivedParametersEv
 261              		.syntax unified
 262              		.thumb
 263              		.thumb_func
 264              		.fpu fpv4-sp-d16
 265              		.type	_ZN10Thermistor21CalcDerivedParametersEv, %function
 266              	_ZN10Thermistor21CalcDerivedParametersEv:
 267              		@ args = 0, pretend = 0, frame = 0
 268              		@ frame_needed = 0, uses_anonymous_args = 0
 269 0000 90ED067A 		vldr.32	s14, [r0, #24]
 270 0004 90ED050A 		vldr.32	s0, [r0, #20]
 271 0008 F7EE006A 		vmov.f32	s13, #1.0e+0
 272 000c C6EE877A 		vdiv.f32	s15, s13, s14
 273 0010 10B5     		push	{r4, lr}
 274 0012 0446     		mov	r4, r0
 275 0014 C0ED0B7A 		vstr.32	s15, [r0, #44]
 276 0018 FFF7FEFF 		bl	logf
 277 001c D4ED0B6A 		vldr.32	s13, [r4, #44]
 278 0020 DFED077A 		vldr.32	s15, .L40
 279 0024 94ED077A 		vldr.32	s14, [r4, #28]
 280 0028 E6EEC07A 		vfms.f32	s15, s13, s0
 281 002c 20EE077A 		vmul.f32	s14, s0, s14
 282 0030 20EE477A 		vnmul.f32	s14, s0, s14
 283 0034 E7EE007A 		vfma.f32	s15, s14, s0
 284 0038 C4ED0A7A 		vstr.32	s15, [r4, #40]
 285 003c 10BD     		pop	{r4, pc}
ARM GAS  /tmp/ccjmi97x.s 			page 6


 286              	.L41:
 287 003e 00BF     		.align	2
 288              	.L40:
 289 0040 0FCF5B3B 		.word	995872527
 290              		.size	_ZN10Thermistor21CalcDerivedParametersEv, .-_ZN10Thermistor21CalcDerivedParametersEv
 291              		.section	.text._ZN10ThermistorC2Ejb,"ax",%progbits
 292              		.align	1
 293              		.p2align 2,,3
 294              		.global	_ZN10ThermistorC2Ejb
 295              		.syntax unified
 296              		.thumb
 297              		.thumb_func
 298              		.fpu fpv4-sp-d16
 299              		.type	_ZN10ThermistorC2Ejb, %function
 300              	_ZN10ThermistorC2Ejb:
 301              		@ args = 0, pretend = 0, frame = 0
 302              		@ frame_needed = 0, uses_anonymous_args = 0
 303 0000 70B5     		push	{r4, r5, r6, lr}
 304 0002 0446     		mov	r4, r0
 305 0004 0E46     		mov	r6, r1
 306 0006 2AB3     		cbz	r2, .L48
 307 0008 194A     		ldr	r2, .L51
 308 000a FFF7FEFF 		bl	_ZN17TemperatureSensorC2EjPKc
 309 000e 194B     		ldr	r3, .L51+4
 310 0010 2360     		str	r3, [r4]
 311 0012 0122     		movs	r2, #1
 312 0014 0023     		movs	r3, #0
 313 0016 84F82530 		strb	r3, [r4, #37]
 314 001a 84F82630 		strb	r3, [r4, #38]
 315 001e 84F82420 		strb	r2, [r4, #36]
 316 0022 A6F5FA73 		sub	r3, r6, #500
 317              	.L46:
 318 0026 9FED147A 		vldr.32	s14, .L51+8
 319 002a DFED147A 		vldr.32	s15, .L51+12
 320 002e 1449     		ldr	r1, .L51+16
 321 0030 1448     		ldr	r0, .L51+20
 322 0032 2062     		str	r0, [r4, #32]	@ float
 323 0034 002E     		cmp	r6, #0
 324 0036 4FF00002 		mov	r2, #0
 325 003a 18BF     		it	ne
 326 003c F0EE477A 		vmovne.f32	s15, s14
 327 0040 2046     		mov	r0, r4
 328 0042 2361     		str	r3, [r4, #16]
 329 0044 C4ED067A 		vstr.32	s15, [r4, #24]
 330 0048 6161     		str	r1, [r4, #20]	@ float
 331 004a E261     		str	r2, [r4, #28]	@ float
 332 004c FFF7FEFF 		bl	_ZN10Thermistor21CalcDerivedParametersEv
 333 0050 2046     		mov	r0, r4
 334 0052 70BD     		pop	{r4, r5, r6, pc}
 335              	.L48:
 336 0054 1546     		mov	r5, r2
 337 0056 0C4A     		ldr	r2, .L51+24
 338 0058 FFF7FEFF 		bl	_ZN17TemperatureSensorC2EjPKc
 339 005c 054B     		ldr	r3, .L51+4
 340 005e 2360     		str	r3, [r4]
 341 0060 84F82450 		strb	r5, [r4, #36]
 342 0064 84F82550 		strb	r5, [r4, #37]
ARM GAS  /tmp/ccjmi97x.s 			page 7


 343 0068 84F82650 		strb	r5, [r4, #38]
 344 006c 3346     		mov	r3, r6
 345 006e DAE7     		b	.L46
 346              	.L52:
 347              		.align	2
 348              	.L51:
 349 0070 00000000 		.word	.LC0
 350 0074 08000000 		.word	.LANCHOR0+8
 351 0078 00208945 		.word	1166614528
 352 007c 00407945 		.word	1165574144
 353 0080 0050C347 		.word	1203982336
 354 0084 00E09245 		.word	1167253504
 355 0088 08000000 		.word	.LC1
 356              		.size	_ZN10ThermistorC2Ejb, .-_ZN10ThermistorC2Ejb
 357              		.global	_ZN10ThermistorC1Ejb
 358              		.thumb_set _ZN10ThermistorC1Ejb,_ZN10ThermistorC2Ejb
 359              		.global	__aeabi_f2d
 360              		.section	.text._ZN10Thermistor9ConfigureEjjR11GCodeBufferRK9StringRef,"ax",%progbits
 361              		.align	1
 362              		.p2align 2,,3
 363              		.global	_ZN10Thermistor9ConfigureEjjR11GCodeBufferRK9StringRef
 364              		.syntax unified
 365              		.thumb
 366              		.thumb_func
 367              		.fpu fpv4-sp-d16
 368              		.type	_ZN10Thermistor9ConfigureEjjR11GCodeBufferRK9StringRef, %function
 369              	_ZN10Thermistor9ConfigureEjjR11GCodeBufferRK9StringRef:
 370              		@ args = 4, pretend = 0, frame = 8
 371              		@ frame_needed = 0, uses_anonymous_args = 0
 372 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 373 0002 40F23116 		movw	r6, #305
 374 0006 89B0     		sub	sp, sp, #36
 375 0008 0027     		movs	r7, #0
 376 000a B142     		cmp	r1, r6
 377 000c 8DF81F70 		strb	r7, [sp, #31]
 378 0010 02D0     		beq	.L78
 379              	.L55:
 380 0012 0120     		movs	r0, #1
 381 0014 09B0     		add	sp, sp, #36
 382              		@ sp needed
 383 0016 F0BD     		pop	{r4, r5, r6, r7, pc}
 384              	.L78:
 385 0018 1C46     		mov	r4, r3
 386 001a 0546     		mov	r5, r0
 387 001c 0DF11F03 		add	r3, sp, #31
 388 0020 1646     		mov	r6, r2
 389 0022 5221     		movs	r1, #82
 390 0024 00F12002 		add	r2, r0, #32
 391 0028 2046     		mov	r0, r4
 392 002a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 393 002e 95F82430 		ldrb	r3, [r5, #36]	@ zero_extendqisi2
 394 0032 002B     		cmp	r3, #0
 395 0034 57D0     		beq	.L79
 396              	.L57:
 397 0036 4C21     		movs	r1, #76
 398 0038 2046     		mov	r0, r4
 399 003a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
ARM GAS  /tmp/ccjmi97x.s 			page 8


 400 003e 0028     		cmp	r0, #0
 401 0040 40D1     		bne	.L80
 402              	.L60:
 403 0042 4821     		movs	r1, #72
 404 0044 2046     		mov	r0, r4
 405 0046 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 406 004a 50BB     		cbnz	r0, .L81
 407              	.L61:
 408 004c 0DF11F02 		add	r2, sp, #31
 409 0050 2146     		mov	r1, r4
 410 0052 2846     		mov	r0, r5
 411 0054 FFF7FEFF 		bl	_ZN17TemperatureSensor22TryConfigureHeaterNameER11GCodeBufferRb
 412 0058 9DF81F30 		ldrb	r3, [sp, #31]	@ zero_extendqisi2
 413 005c 002B     		cmp	r3, #0
 414 005e D8D1     		bne	.L55
 415 0060 2046     		mov	r0, r4
 416 0062 5821     		movs	r1, #88
 417 0064 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 418 0068 0028     		cmp	r0, #0
 419 006a D2D1     		bne	.L55
 420 006c 3146     		mov	r1, r6
 421 006e 0E9A     		ldr	r2, [sp, #56]
 422 0070 2846     		mov	r0, r5
 423 0072 FFF7FEFF 		bl	_ZNK17TemperatureSensor22CopyBasicHeaterDetailsEjRK9StringRef
 424 0076 95F82430 		ldrb	r3, [r5, #36]	@ zero_extendqisi2
 425 007a 002B     		cmp	r3, #0
 426 007c 58D0     		beq	.L63
 427 007e 286A     		ldr	r0, [r5, #32]	@ float
 428 0080 FFF7FEFF 		bl	__aeabi_f2d
 429 0084 0246     		mov	r2, r0
 430 0086 0B46     		mov	r3, r1
 431 0088 0E98     		ldr	r0, [sp, #56]
 432 008a 3749     		ldr	r1, .L82
 433 008c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 434              	.L64:
 435 0090 95F92630 		ldrsb	r3, [r5, #38]
 436 0094 95F92520 		ldrsb	r2, [r5, #37]
 437 0098 3449     		ldr	r1, .L82+4
 438 009a 0E98     		ldr	r0, [sp, #56]
 439 009c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 440 00a0 B7E7     		b	.L55
 441              	.L81:
 442 00a2 2046     		mov	r0, r4
 443 00a4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 444 00a8 6FF07703 		mvn	r3, #119
 445 00ac 9842     		cmp	r0, r3
 446 00ae B8BF     		it	lt
 447 00b0 1846     		movlt	r0, r3
 448 00b2 7828     		cmp	r0, #120
 449 00b4 A8BF     		it	ge
 450 00b6 7820     		movge	r0, #120
 451 00b8 0123     		movs	r3, #1
 452 00ba 85F82600 		strb	r0, [r5, #38]
 453 00be 8DF81F30 		strb	r3, [sp, #31]
 454 00c2 C3E7     		b	.L61
 455              	.L80:
 456 00c4 2046     		mov	r0, r4
ARM GAS  /tmp/ccjmi97x.s 			page 9


 457 00c6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 458 00ca 6FF07703 		mvn	r3, #119
 459 00ce 9842     		cmp	r0, r3
 460 00d0 B8BF     		it	lt
 461 00d2 1846     		movlt	r0, r3
 462 00d4 7828     		cmp	r0, #120
 463 00d6 A8BF     		it	ge
 464 00d8 7820     		movge	r0, #120
 465 00da 0123     		movs	r3, #1
 466 00dc 85F82500 		strb	r0, [r5, #37]
 467 00e0 8DF81F30 		strb	r3, [sp, #31]
 468 00e4 ADE7     		b	.L60
 469              	.L79:
 470 00e6 0DF11F03 		add	r3, sp, #31
 471 00ea 05F11802 		add	r2, r5, #24
 472 00ee 4221     		movs	r1, #66
 473 00f0 2046     		mov	r0, r4
 474 00f2 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 475 00f6 9DF81F30 		ldrb	r3, [sp, #31]	@ zero_extendqisi2
 476 00fa 0BB1     		cbz	r3, .L58
 477 00fc 0023     		movs	r3, #0
 478 00fe EB61     		str	r3, [r5, #28]	@ float
 479              	.L58:
 480 0100 0DF11F03 		add	r3, sp, #31
 481 0104 05F11C02 		add	r2, r5, #28
 482 0108 4321     		movs	r1, #67
 483 010a 2046     		mov	r0, r4
 484 010c FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 485 0110 0DF11F03 		add	r3, sp, #31
 486 0114 05F11402 		add	r2, r5, #20
 487 0118 5421     		movs	r1, #84
 488 011a 2046     		mov	r0, r4
 489 011c FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 490 0120 9DF81F30 		ldrb	r3, [sp, #31]	@ zero_extendqisi2
 491 0124 002B     		cmp	r3, #0
 492 0126 86D0     		beq	.L57
 493 0128 2846     		mov	r0, r5
 494 012a FFF7FEFF 		bl	_ZN10Thermistor21CalcDerivedParametersEv
 495 012e 82E7     		b	.L57
 496              	.L63:
 497 0130 6869     		ldr	r0, [r5, #20]	@ float
 498 0132 FFF7FEFF 		bl	__aeabi_f2d
 499 0136 0646     		mov	r6, r0
 500 0138 286A     		ldr	r0, [r5, #32]	@ float
 501 013a 0F46     		mov	r7, r1
 502 013c FFF7FEFF 		bl	__aeabi_f2d
 503 0140 CDE90401 		strd	r0, [sp, #16]
 504 0144 E869     		ldr	r0, [r5, #28]	@ float
 505 0146 FFF7FEFF 		bl	__aeabi_f2d
 506 014a CDE90201 		strd	r0, [sp, #8]
 507 014e A869     		ldr	r0, [r5, #24]	@ float
 508 0150 FFF7FEFF 		bl	__aeabi_f2d
 509 0154 3246     		mov	r2, r6
 510 0156 CDE90001 		strd	r0, [sp]
 511 015a 3B46     		mov	r3, r7
 512 015c 0449     		ldr	r1, .L82+8
 513 015e 0E98     		ldr	r0, [sp, #56]
ARM GAS  /tmp/ccjmi97x.s 			page 10


 514 0160 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 515 0164 94E7     		b	.L64
 516              	.L83:
 517 0166 00BF     		.align	2
 518              	.L82:
 519 0168 00000000 		.word	.LC2
 520 016c 2C000000 		.word	.LC4
 521 0170 0C000000 		.word	.LC3
 522              		.size	_ZN10Thermistor9ConfigureEjjR11GCodeBufferRK9StringRef, .-_ZN10Thermistor9ConfigureEjjR11GCo
 523              		.global	_ZTV10Thermistor
 524              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 525              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 526              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 527              	_ZL28cpu_irq_prev_interrupt_state:
 528 0000 00       		.space	1
 529              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 530              		.align	2
 531              		.type	_ZL32cpu_irq_critical_section_counter, %object
 532              		.size	_ZL32cpu_irq_critical_section_counter, 4
 533              	_ZL32cpu_irq_critical_section_counter:
 534 0000 00000000 		.space	4
 535              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 536              		.align	2
 537              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 538              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 539              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 540 0000 00000000 		.space	4
 541              		.section	.rodata._ZN10Thermistor9ConfigureEjjR11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 542              		.align	2
 543              	.LC2:
 544 0000 2C20523A 		.ascii	", R:%.1f\000"
 544      252E3166 
 544      00
 545 0009 000000   		.space	3
 546              	.LC3:
 547 000c 2C20543A 		.ascii	", T:%.1f B:%.1f C:%.2e R:%.1f\000"
 547      252E3166 
 547      20423A25 
 547      2E316620 
 547      433A252E 
 548 002a 0000     		.space	2
 549              	.LC4:
 550 002c 204C3A25 		.ascii	" L:%d H:%d\000"
 550      6420483A 
 550      256400
 551              		.section	.rodata._ZN10ThermistorC2Ejb.str1.4,"aMS",%progbits,1
 552              		.align	2
 553              	.LC0:
 554 0000 50543130 		.ascii	"PT1000\000"
 554      303000
 555 0007 00       		.space	1
 556              	.LC1:
 557 0008 54686572 		.ascii	"Thermistor\000"
 557      6D697374 
 557      6F7200
 558              		.section	.rodata._ZTV10Thermistor,"a",%progbits
 559              		.align	2
ARM GAS  /tmp/ccjmi97x.s 			page 11


 560              		.set	.LANCHOR0,. + 0
 561              		.type	_ZTV10Thermistor, %object
 562              		.size	_ZTV10Thermistor, 28
 563              	_ZTV10Thermistor:
 564 0000 00000000 		.word	0
 565 0004 00000000 		.word	0
 566 0008 00000000 		.word	_ZN10Thermistor9ConfigureEjjR11GCodeBufferRK9StringRef
 567 000c 00000000 		.word	_ZN10Thermistor4InitEv
 568 0010 00000000 		.word	_ZN10Thermistor14GetTemperatureERf
 569 0014 00000000 		.word	_ZN10ThermistorD1Ev
 570 0018 00000000 		.word	_ZN10ThermistorD0Ev
 571              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
