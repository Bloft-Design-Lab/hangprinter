ARM GAS  /tmp/ccg315rZ.s 			page 1


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
  13              		.file	"CurrentLoopTemperatureSensor.cpp"
  14              		.section	.text._ZN28CurrentLoopTemperatureSensorD2Ev,"axG",%progbits,_ZN28CurrentLoopTemperatureSe
  15              		.align	1
  16              		.p2align 2,,3
  17              		.weak	_ZN28CurrentLoopTemperatureSensorD2Ev
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN28CurrentLoopTemperatureSensorD2Ev, %function
  23              	_ZN28CurrentLoopTemperatureSensorD2Ev:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 10B5     		push	{r4, lr}
  27 0002 034B     		ldr	r3, .L4
  28 0004 0360     		str	r3, [r0]
  29 0006 0446     		mov	r4, r0
  30 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
  31 000c 2046     		mov	r0, r4
  32 000e 10BD     		pop	{r4, pc}
  33              	.L5:
  34              		.align	2
  35              	.L4:
  36 0010 08000000 		.word	_ZTV20SpiTemperatureSensor+8
  37              		.size	_ZN28CurrentLoopTemperatureSensorD2Ev, .-_ZN28CurrentLoopTemperatureSensorD2Ev
  38              		.weak	_ZN28CurrentLoopTemperatureSensorD1Ev
  39              		.thumb_set _ZN28CurrentLoopTemperatureSensorD1Ev,_ZN28CurrentLoopTemperatureSensorD2Ev
  40              		.section	.text._ZN28CurrentLoopTemperatureSensorD0Ev,"axG",%progbits,_ZN28CurrentLoopTemperatureSe
  41              		.align	1
  42              		.p2align 2,,3
  43              		.weak	_ZN28CurrentLoopTemperatureSensorD0Ev
  44              		.syntax unified
  45              		.thumb
  46              		.thumb_func
  47              		.fpu fpv4-sp-d16
  48              		.type	_ZN28CurrentLoopTemperatureSensorD0Ev, %function
  49              	_ZN28CurrentLoopTemperatureSensorD0Ev:
  50              		@ args = 0, pretend = 0, frame = 0
  51              		@ frame_needed = 0, uses_anonymous_args = 0
  52 0000 10B5     		push	{r4, lr}
  53 0002 054B     		ldr	r3, .L8
  54 0004 0360     		str	r3, [r0]
  55 0006 0446     		mov	r4, r0
  56 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
  57 000c 2046     		mov	r0, r4
ARM GAS  /tmp/ccg315rZ.s 			page 2


  58 000e 3421     		movs	r1, #52
  59 0010 FFF7FEFF 		bl	_ZdlPvj
  60 0014 2046     		mov	r0, r4
  61 0016 10BD     		pop	{r4, pc}
  62              	.L9:
  63              		.align	2
  64              	.L8:
  65 0018 08000000 		.word	_ZTV20SpiTemperatureSensor+8
  66              		.size	_ZN28CurrentLoopTemperatureSensorD0Ev, .-_ZN28CurrentLoopTemperatureSensorD0Ev
  67              		.global	__aeabi_f2d
  68              		.section	.text._ZN28CurrentLoopTemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef,"ax",%prog
  69              		.align	1
  70              		.p2align 2,,3
  71              		.global	_ZN28CurrentLoopTemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef
  72              		.syntax unified
  73              		.thumb
  74              		.thumb_func
  75              		.fpu fpv4-sp-d16
  76              		.type	_ZN28CurrentLoopTemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef, %function
  77              	_ZN28CurrentLoopTemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef:
  78              		@ args = 4, pretend = 0, frame = 8
  79              		@ frame_needed = 0, uses_anonymous_args = 0
  80 0000 F0B5     		push	{r4, r5, r6, r7, lr}
  81 0002 40F23114 		movw	r4, #305
  82 0006 A142     		cmp	r1, r4
  83 0008 85B0     		sub	sp, sp, #20
  84 000a 02D0     		beq	.L15
  85              	.L11:
  86 000c 0120     		movs	r0, #1
  87 000e 05B0     		add	sp, sp, #20
  88              		@ sp needed
  89 0010 F0BD     		pop	{r4, r5, r6, r7, pc}
  90              	.L15:
  91 0012 04AF     		add	r7, sp, #16
  92 0014 1D46     		mov	r5, r3
  93 0016 0023     		movs	r3, #0
  94 0018 07F8013D 		strb	r3, [r7, #-1]!
  95 001c 0446     		mov	r4, r0
  96 001e 3B46     		mov	r3, r7
  97 0020 4C21     		movs	r1, #76
  98 0022 1646     		mov	r6, r2
  99 0024 00F12402 		add	r2, r0, #36
 100 0028 2846     		mov	r0, r5
 101 002a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 102 002e 3B46     		mov	r3, r7
 103 0030 04F12802 		add	r2, r4, #40
 104 0034 4821     		movs	r1, #72
 105 0036 2846     		mov	r0, r5
 106 0038 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 107 003c 3A46     		mov	r2, r7
 108 003e 2946     		mov	r1, r5
 109 0040 2046     		mov	r0, r4
 110 0042 FFF7FEFF 		bl	_ZN17TemperatureSensor22TryConfigureHeaterNameER11GCodeBufferRb
 111 0046 9DF80F30 		ldrb	r3, [sp, #15]	@ zero_extendqisi2
 112 004a B3B1     		cbz	r3, .L12
 113 004c 94ED097A 		vldr.32	s14, [r4, #36]
 114 0050 D4ED0A7A 		vldr.32	s15, [r4, #40]
ARM GAS  /tmp/ccg315rZ.s 			page 3


 115 0054 DFED176A 		vldr.32	s13, .L16
 116 0058 77EEC75A 		vsub.f32	s11, s15, s14
 117 005c B5EE006A 		vmov.f32	s12, #2.5e-1
 118 0060 A5EEC67A 		vfms.f32	s14, s11, s12
 119 0064 0120     		movs	r0, #1
 120 0066 77EEC77A 		vsub.f32	s15, s15, s14
 121 006a 84ED0B7A 		vstr.32	s14, [r4, #44]
 122 006e 67EEA67A 		vmul.f32	s15, s15, s13
 123 0072 C4ED0C7A 		vstr.32	s15, [r4, #48]
 124 0076 05B0     		add	sp, sp, #20
 125              		@ sp needed
 126 0078 F0BD     		pop	{r4, r5, r6, r7, pc}
 127              	.L12:
 128 007a 2846     		mov	r0, r5
 129 007c 5821     		movs	r1, #88
 130 007e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 131 0082 0028     		cmp	r0, #0
 132 0084 C2D1     		bne	.L11
 133 0086 0A9A     		ldr	r2, [sp, #40]
 134 0088 3146     		mov	r1, r6
 135 008a 2046     		mov	r0, r4
 136 008c FFF7FEFF 		bl	_ZNK17TemperatureSensor22CopyBasicHeaterDetailsEjRK9StringRef
 137 0090 606A     		ldr	r0, [r4, #36]	@ float
 138 0092 FFF7FEFF 		bl	__aeabi_f2d
 139 0096 0646     		mov	r6, r0
 140 0098 A06A     		ldr	r0, [r4, #40]	@ float
 141 009a 0F46     		mov	r7, r1
 142 009c FFF7FEFF 		bl	__aeabi_f2d
 143 00a0 3246     		mov	r2, r6
 144 00a2 CDE90001 		strd	r0, [sp]
 145 00a6 3B46     		mov	r3, r7
 146 00a8 0349     		ldr	r1, .L16+4
 147 00aa 0A98     		ldr	r0, [sp, #40]
 148 00ac FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 149 00b0 ACE7     		b	.L11
 150              	.L17:
 151 00b2 00BF     		.align	2
 152              	.L16:
 153 00b4 00008039 		.word	964689920
 154 00b8 00000000 		.word	.LC0
 155              		.size	_ZN28CurrentLoopTemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef, .-_ZN28CurrentLoop
 156              		.section	.text._ZN28CurrentLoopTemperatureSensorC2Ej,"ax",%progbits
 157              		.align	1
 158              		.p2align 2,,3
 159              		.global	_ZN28CurrentLoopTemperatureSensorC2Ej
 160              		.syntax unified
 161              		.thumb
 162              		.thumb_func
 163              		.fpu fpv4-sp-d16
 164              		.type	_ZN28CurrentLoopTemperatureSensorC2Ej, %function
 165              	_ZN28CurrentLoopTemperatureSensorC2Ej:
 166              		@ args = 0, pretend = 0, frame = 0
 167              		@ frame_needed = 0, uses_anonymous_args = 0
 168 0000 30B5     		push	{r4, r5, lr}
 169 0002 0C4A     		ldr	r2, .L20
 170 0004 0C4D     		ldr	r5, .L20+4
 171 0006 83B0     		sub	sp, sp, #12
ARM GAS  /tmp/ccg315rZ.s 			page 4


 172 0008 0023     		movs	r3, #0
 173 000a CDE90032 		strd	r3, r2, [sp]
 174 000e A1F59673 		sub	r3, r1, #300
 175 0012 0A4A     		ldr	r2, .L20+8
 176 0014 0446     		mov	r4, r0
 177 0016 FFF7FEFF 		bl	_ZN20SpiTemperatureSensorC2EjPKcjhm
 178 001a 0948     		ldr	r0, .L20+12
 179 001c 0949     		ldr	r1, .L20+16
 180 001e 0A4A     		ldr	r2, .L20+20
 181 0020 0A4B     		ldr	r3, .L20+24
 182 0022 6062     		str	r0, [r4, #36]	@ float
 183 0024 2046     		mov	r0, r4
 184 0026 2560     		str	r5, [r4]
 185 0028 A162     		str	r1, [r4, #40]	@ float
 186 002a E262     		str	r2, [r4, #44]	@ float
 187 002c 2363     		str	r3, [r4, #48]	@ float
 188 002e 03B0     		add	sp, sp, #12
 189              		@ sp needed
 190 0030 30BD     		pop	{r4, r5, pc}
 191              	.L21:
 192 0032 00BF     		.align	2
 193              	.L20:
 194 0034 40420F00 		.word	1000000
 195 0038 08000000 		.word	.LANCHOR0+8
 196 003c 00000000 		.word	.LC1
 197 0040 0080C043 		.word	1136689152
 198 0044 0000C844 		.word	1153957888
 199 0048 0080A242 		.word	1117945856
 200 004c 00D8BD3E 		.word	1052628992
 201              		.size	_ZN28CurrentLoopTemperatureSensorC2Ej, .-_ZN28CurrentLoopTemperatureSensorC2Ej
 202              		.global	_ZN28CurrentLoopTemperatureSensorC1Ej
 203              		.thumb_set _ZN28CurrentLoopTemperatureSensorC1Ej,_ZN28CurrentLoopTemperatureSensorC2Ej
 204              		.section	.text._ZN28CurrentLoopTemperatureSensor21CalcDerivedParametersEv,"ax",%progbits
 205              		.align	1
 206              		.p2align 2,,3
 207              		.global	_ZN28CurrentLoopTemperatureSensor21CalcDerivedParametersEv
 208              		.syntax unified
 209              		.thumb
 210              		.thumb_func
 211              		.fpu fpv4-sp-d16
 212              		.type	_ZN28CurrentLoopTemperatureSensor21CalcDerivedParametersEv, %function
 213              	_ZN28CurrentLoopTemperatureSensor21CalcDerivedParametersEv:
 214              		@ args = 0, pretend = 0, frame = 0
 215              		@ frame_needed = 0, uses_anonymous_args = 0
 216              		@ link register save eliminated.
 217 0000 90ED097A 		vldr.32	s14, [r0, #36]
 218 0004 D0ED0A7A 		vldr.32	s15, [r0, #40]
 219 0008 DFED086A 		vldr.32	s13, .L23
 220 000c 77EEC75A 		vsub.f32	s11, s15, s14
 221 0010 B5EE006A 		vmov.f32	s12, #2.5e-1
 222 0014 A5EEC67A 		vfms.f32	s14, s11, s12
 223 0018 77EEC77A 		vsub.f32	s15, s15, s14
 224 001c 80ED0B7A 		vstr.32	s14, [r0, #44]
 225 0020 67EEA67A 		vmul.f32	s15, s15, s13
 226 0024 C0ED0C7A 		vstr.32	s15, [r0, #48]
 227 0028 7047     		bx	lr
 228              	.L24:
ARM GAS  /tmp/ccg315rZ.s 			page 5


 229 002a 00BF     		.align	2
 230              	.L23:
 231 002c 00008039 		.word	964689920
 232              		.size	_ZN28CurrentLoopTemperatureSensor21CalcDerivedParametersEv, .-_ZN28CurrentLoopTemperatureSen
 233              		.section	.text._ZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEv,"ax",%progbits
 234              		.align	1
 235              		.p2align 2,,3
 236              		.global	_ZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEv
 237              		.syntax unified
 238              		.thumb
 239              		.thumb_func
 240              		.fpu fpv4-sp-d16
 241              		.type	_ZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEv, %function
 242              	_ZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEv:
 243              		@ args = 0, pretend = 0, frame = 8
 244              		@ frame_needed = 0, uses_anonymous_args = 0
 245 0000 70B5     		push	{r4, r5, r6, lr}
 246 0002 82B0     		sub	sp, sp, #8
 247 0004 01AB     		add	r3, sp, #4
 248 0006 0322     		movs	r2, #3
 249 0008 1D49     		ldr	r1, .L30
 250 000a 0446     		mov	r4, r0
 251 000c FFF7FEFF 		bl	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm
 252 0010 84F82000 		strb	r0, [r4, #32]
 253 0014 18BB     		cbnz	r0, .L25
 254 0016 019A     		ldr	r2, [sp, #4]
 255 0018 5109     		lsrs	r1, r2, #5
 256 001a C1F30C00 		ubfx	r0, r1, #0, #13
 257 001e B0F5805F 		cmp	r0, #4096
 258 0022 19D2     		bcs	.L27
 259 0024 D308     		lsrs	r3, r2, #3
 260 0026 01F00106 		and	r6, r1, #1
 261 002a 5508     		lsrs	r5, r2, #1
 262 002c 03F00203 		and	r3, r3, #2
 263 0030 3343     		orrs	r3, r3, r6
 264 0032 05F00405 		and	r5, r5, #4
 265 0036 5600     		lsls	r6, r2, #1
 266 0038 2B43     		orrs	r3, r3, r5
 267 003a 06F00806 		and	r6, r6, #8
 268 003e D500     		lsls	r5, r2, #3
 269 0040 3343     		orrs	r3, r3, r6
 270 0042 05F01005 		and	r5, r5, #16
 271 0046 5201     		lsls	r2, r2, #5
 272 0048 2B43     		orrs	r3, r3, r5
 273 004a 02F02002 		and	r2, r2, #32
 274 004e 01F03F01 		and	r1, r1, #63
 275 0052 1343     		orrs	r3, r3, r2
 276 0054 9942     		cmp	r1, r3
 277 0056 04D0     		beq	.L28
 278              	.L27:
 279 0058 0923     		movs	r3, #9
 280 005a 84F82030 		strb	r3, [r4, #32]
 281              	.L25:
 282 005e 02B0     		add	sp, sp, #8
 283              		@ sp needed
 284 0060 70BD     		pop	{r4, r5, r6, pc}
 285              	.L28:
ARM GAS  /tmp/ccg315rZ.s 			page 6


 286 0062 07EE900A 		vmov	s15, r0	@ int
 287 0066 D4ED0C6A 		vldr.32	s13, [r4, #48]
 288 006a 94ED0B7A 		vldr.32	s14, [r4, #44]
 289 006e F8EEE77A 		vcvt.f32.s32	s15, s15
 290 0072 A6EEA77A 		vfma.f32	s14, s13, s15
 291 0076 84ED077A 		vstr.32	s14, [r4, #28]
 292 007a 02B0     		add	sp, sp, #8
 293              		@ sp needed
 294 007c 70BD     		pop	{r4, r5, r6, pc}
 295              	.L31:
 296 007e 00BF     		.align	2
 297              	.L30:
 298 0080 00000000 		.word	.LANCHOR1
 299              		.size	_ZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEv, .-_ZN28CurrentLoopTemperatu
 300              		.section	.text._ZN28CurrentLoopTemperatureSensor4InitEv,"ax",%progbits
 301              		.align	1
 302              		.p2align 2,,3
 303              		.global	_ZN28CurrentLoopTemperatureSensor4InitEv
 304              		.syntax unified
 305              		.thumb
 306              		.thumb_func
 307              		.fpu fpv4-sp-d16
 308              		.type	_ZN28CurrentLoopTemperatureSensor4InitEv, %function
 309              	_ZN28CurrentLoopTemperatureSensor4InitEv:
 310              		@ args = 0, pretend = 0, frame = 0
 311              		@ frame_needed = 0, uses_anonymous_args = 0
 312 0000 70B5     		push	{r4, r5, r6, lr}
 313 0002 0446     		mov	r4, r0
 314 0004 FFF7FEFF 		bl	_ZN20SpiTemperatureSensor7InitSpiEv
 315 0008 0325     		movs	r5, #3
 316              	.L34:
 317 000a 2046     		mov	r0, r4
 318 000c FFF7FEFF 		bl	_ZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEv
 319 0010 94F82030 		ldrb	r3, [r4, #32]	@ zero_extendqisi2
 320 0014 6420     		movs	r0, #100
 321 0016 1BB1     		cbz	r3, .L33
 322 0018 FFF7FEFF 		bl	coreDelay
 323 001c 013D     		subs	r5, r5, #1
 324 001e F4D1     		bne	.L34
 325              	.L33:
 326 0020 FFF7FEFF 		bl	millis
 327 0024 94F82030 		ldrb	r3, [r4, #32]	@ zero_extendqisi2
 328 0028 A061     		str	r0, [r4, #24]
 329 002a 03B9     		cbnz	r3, .L41
 330 002c 70BD     		pop	{r4, r5, r6, pc}
 331              	.L41:
 332 002e 074A     		ldr	r2, .L42
 333 0030 1846     		mov	r0, r3
 334 0032 1468     		ldr	r4, [r2]	@ unaligned
 335 0034 FFF7FEFF 		bl	_Z22TemperatureErrorString16TemperatureError
 336 0038 054A     		ldr	r2, .L42+4
 337 003a 0346     		mov	r3, r0
 338 003c 40F2B511 		movw	r1, #437
 339 0040 2046     		mov	r0, r4
 340 0042 BDE87040 		pop	{r4, r5, r6, lr}
 341 0046 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 342              	.L43:
ARM GAS  /tmp/ccg315rZ.s 			page 7


 343 004a 00BF     		.align	2
 344              	.L42:
 345 004c 00000000 		.word	reprap
 346 0050 00000000 		.word	.LC2
 347              		.size	_ZN28CurrentLoopTemperatureSensor4InitEv, .-_ZN28CurrentLoopTemperatureSensor4InitEv
 348              		.section	.text._ZN28CurrentLoopTemperatureSensor14GetTemperatureERf,"ax",%progbits
 349              		.align	1
 350              		.p2align 2,,3
 351              		.global	_ZN28CurrentLoopTemperatureSensor14GetTemperatureERf
 352              		.syntax unified
 353              		.thumb
 354              		.thumb_func
 355              		.fpu fpv4-sp-d16
 356              		.type	_ZN28CurrentLoopTemperatureSensor14GetTemperatureERf, %function
 357              	_ZN28CurrentLoopTemperatureSensor14GetTemperatureERf:
 358              		@ args = 0, pretend = 0, frame = 0
 359              		@ frame_needed = 0, uses_anonymous_args = 0
 360 0000 38B5     		push	{r3, r4, r5, lr}
 361 0002 0446     		mov	r4, r0
 362 0004 0D46     		mov	r5, r1
 363 0006 FFF7FEFF 		bl	_Z11inInterruptv
 364 000a 20B1     		cbz	r0, .L49
 365              	.L46:
 366 000c E369     		ldr	r3, [r4, #28]	@ float
 367 000e 94F82000 		ldrb	r0, [r4, #32]	@ zero_extendqisi2
 368 0012 2B60     		str	r3, [r5]	@ float
 369 0014 38BD     		pop	{r3, r4, r5, pc}
 370              	.L49:
 371 0016 FFF7FEFF 		bl	millis
 372 001a A369     		ldr	r3, [r4, #24]
 373 001c C01A     		subs	r0, r0, r3
 374 001e 6328     		cmp	r0, #99
 375 0020 F4D9     		bls	.L46
 376 0022 2046     		mov	r0, r4
 377 0024 FFF7FEFF 		bl	_ZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEv
 378 0028 E369     		ldr	r3, [r4, #28]	@ float
 379 002a 94F82000 		ldrb	r0, [r4, #32]	@ zero_extendqisi2
 380 002e 2B60     		str	r3, [r5]	@ float
 381 0030 38BD     		pop	{r3, r4, r5, pc}
 382              		.size	_ZN28CurrentLoopTemperatureSensor14GetTemperatureERf, .-_ZN28CurrentLoopTemperatureSensor14G
 383              		.weak	_ZTV20SpiTemperatureSensor
 384 0032 00BF     		.section	.rodata._ZTV20SpiTemperatureSensor,"aG",%progbits,_ZTV20SpiTemperatureSensor,comdat
 385              		.align	2
 386              		.type	_ZTV20SpiTemperatureSensor, %object
 387              		.size	_ZTV20SpiTemperatureSensor, 28
 388              	_ZTV20SpiTemperatureSensor:
 389 0000 00000000 		.word	0
 390 0004 00000000 		.word	0
 391 0008 00000000 		.word	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef
 392 000c 00000000 		.word	__cxa_pure_virtual
 393 0010 00000000 		.word	__cxa_pure_virtual
 394 0014 00000000 		.word	0
 395 0018 00000000 		.word	0
 396              		.global	_ZTV28CurrentLoopTemperatureSensor
 397              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 398              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 399              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
ARM GAS  /tmp/ccg315rZ.s 			page 8


 400              	_ZL28cpu_irq_prev_interrupt_state:
 401 0000 00       		.space	1
 402              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 403              		.align	2
 404              		.type	_ZL32cpu_irq_critical_section_counter, %object
 405              		.size	_ZL32cpu_irq_critical_section_counter, 4
 406              	_ZL32cpu_irq_critical_section_counter:
 407 0000 00000000 		.space	4
 408              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 409              		.align	2
 410              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 411              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 412              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 413 0000 00000000 		.space	4
 414              		.section	.rodata._ZN28CurrentLoopTemperatureSensor4InitEv.str1.4,"aMS",%progbits,1
 415              		.align	2
 416              	.LC2:
 417 0000 4661696C 		.ascii	"Failed to initialise daughter board ADC: %s\012\000"
 417      65642074 
 417      6F20696E 
 417      69746961 
 417      6C697365 
 418              		.section	.rodata._ZN28CurrentLoopTemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef.str1.4,"
 419              		.align	2
 420              	.LC0:
 421 0000 2C207465 		.ascii	", temperature range %.1f to %.1fC\000"
 421      6D706572 
 421      61747572 
 421      65207261 
 421      6E676520 
 422              		.section	.rodata._ZN28CurrentLoopTemperatureSensorC2Ej.str1.4,"aMS",%progbits,1
 423              		.align	2
 424              	.LC1:
 425 0000 43757272 		.ascii	"Current Loop\000"
 425      656E7420 
 425      4C6F6F70 
 425      00
 426              		.section	.rodata._ZTV28CurrentLoopTemperatureSensor,"a",%progbits
 427              		.align	2
 428              		.set	.LANCHOR0,. + 0
 429              		.type	_ZTV28CurrentLoopTemperatureSensor, %object
 430              		.size	_ZTV28CurrentLoopTemperatureSensor, 28
 431              	_ZTV28CurrentLoopTemperatureSensor:
 432 0000 00000000 		.word	0
 433 0004 00000000 		.word	0
 434 0008 00000000 		.word	_ZN28CurrentLoopTemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef
 435 000c 00000000 		.word	_ZN28CurrentLoopTemperatureSensor4InitEv
 436 0010 00000000 		.word	_ZN28CurrentLoopTemperatureSensor14GetTemperatureERf
 437 0014 00000000 		.word	_ZN28CurrentLoopTemperatureSensorD1Ev
 438 0018 00000000 		.word	_ZN28CurrentLoopTemperatureSensorD0Ev
 439              		.section	.rodata._ZZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEvE7adcData,"a",%pr
 440              		.align	2
 441              		.set	.LANCHOR1,. + 0
 442              		.type	_ZZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEvE7adcData, %object
 443              		.size	_ZZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEvE7adcData, 3
 444              	_ZZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEvE7adcData:
 445 0000 C0       		.byte	-64
ARM GAS  /tmp/ccg315rZ.s 			page 9


 446 0001 00       		.byte	0
 447 0002 00       		.byte	0
 448              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
