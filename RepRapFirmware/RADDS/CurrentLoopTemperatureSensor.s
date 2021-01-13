ARM GAS  /tmp/ccCnMBqs.s 			page 1


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
  11              		.file	"CurrentLoopTemperatureSensor.cpp"
  12              		.section	.text._ZN28CurrentLoopTemperatureSensorD2Ev,"axG",%progbits,_ZN28CurrentLoopTemperatureSe
  13              		.align	1
  14              		.p2align 2,,3
  15              		.weak	_ZN28CurrentLoopTemperatureSensorD2Ev
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN28CurrentLoopTemperatureSensorD2Ev, %function
  21              	_ZN28CurrentLoopTemperatureSensorD2Ev:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 10B5     		push	{r4, lr}
  25 0002 0446     		mov	r4, r0
  26 0004 024B     		ldr	r3, .L3
  27 0006 0360     		str	r3, [r0]
  28 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
  29 000c 2046     		mov	r0, r4
  30 000e 10BD     		pop	{r4, pc}
  31              	.L4:
  32              		.align	2
  33              	.L3:
  34 0010 08000000 		.word	_ZTV20SpiTemperatureSensor+8
  35              		.size	_ZN28CurrentLoopTemperatureSensorD2Ev, .-_ZN28CurrentLoopTemperatureSensorD2Ev
  36              		.weak	_ZN28CurrentLoopTemperatureSensorD1Ev
  37              		.thumb_set _ZN28CurrentLoopTemperatureSensorD1Ev,_ZN28CurrentLoopTemperatureSensorD2Ev
  38              		.section	.text._ZN28CurrentLoopTemperatureSensorD0Ev,"axG",%progbits,_ZN28CurrentLoopTemperatureSe
  39              		.align	1
  40              		.p2align 2,,3
  41              		.weak	_ZN28CurrentLoopTemperatureSensorD0Ev
  42              		.syntax unified
  43              		.thumb
  44              		.thumb_func
  45              		.fpu softvfp
  46              		.type	_ZN28CurrentLoopTemperatureSensorD0Ev, %function
  47              	_ZN28CurrentLoopTemperatureSensorD0Ev:
  48              		@ args = 0, pretend = 0, frame = 0
  49              		@ frame_needed = 0, uses_anonymous_args = 0
  50 0000 10B5     		push	{r4, lr}
  51 0002 0446     		mov	r4, r0
  52 0004 044B     		ldr	r3, .L7
  53 0006 0360     		str	r3, [r0]
  54 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
  55 000c 2046     		mov	r0, r4
  56 000e 3421     		movs	r1, #52
  57 0010 FFF7FEFF 		bl	_ZdlPvj
ARM GAS  /tmp/ccCnMBqs.s 			page 2


  58 0014 2046     		mov	r0, r4
  59 0016 10BD     		pop	{r4, pc}
  60              	.L8:
  61              		.align	2
  62              	.L7:
  63 0018 08000000 		.word	_ZTV20SpiTemperatureSensor+8
  64              		.size	_ZN28CurrentLoopTemperatureSensorD0Ev, .-_ZN28CurrentLoopTemperatureSensorD0Ev
  65              		.global	__aeabi_fsub
  66              		.global	__aeabi_fmul
  67              		.global	__aeabi_f2d
  68              		.section	.text._ZN28CurrentLoopTemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef,"ax",%prog
  69              		.align	1
  70              		.p2align 2,,3
  71              		.global	_ZN28CurrentLoopTemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef
  72              		.syntax unified
  73              		.thumb
  74              		.thumb_func
  75              		.fpu softvfp
  76              		.type	_ZN28CurrentLoopTemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef, %function
  77              	_ZN28CurrentLoopTemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef:
  78              		@ args = 4, pretend = 0, frame = 8
  79              		@ frame_needed = 0, uses_anonymous_args = 0
  80 0000 F0B5     		push	{r4, r5, r6, r7, lr}
  81 0002 40F23115 		movw	r5, #305
  82 0006 A942     		cmp	r1, r5
  83 0008 85B0     		sub	sp, sp, #20
  84 000a 02D0     		beq	.L15
  85              	.L10:
  86 000c 0120     		movs	r0, #1
  87 000e 05B0     		add	sp, sp, #20
  88              		@ sp needed
  89 0010 F0BD     		pop	{r4, r5, r6, r7, pc}
  90              	.L15:
  91 0012 1D46     		mov	r5, r3
  92 0014 0023     		movs	r3, #0
  93 0016 0446     		mov	r4, r0
  94 0018 04AF     		add	r7, sp, #16
  95 001a 07F8013D 		strb	r3, [r7, #-1]!
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
 112 004a D3B1     		cbz	r3, .L11
 113 004c 666A     		ldr	r6, [r4, #36]	@ float
 114 004e A56A     		ldr	r5, [r4, #40]	@ float
ARM GAS  /tmp/ccCnMBqs.s 			page 3


 115 0050 3146     		mov	r1, r6
 116 0052 2846     		mov	r0, r5
 117 0054 FFF7FEFF 		bl	__aeabi_fsub
 118 0058 4FF07A51 		mov	r1, #1048576000
 119 005c FFF7FEFF 		bl	__aeabi_fmul
 120 0060 0146     		mov	r1, r0
 121 0062 3046     		mov	r0, r6
 122 0064 FFF7FEFF 		bl	__aeabi_fsub
 123 0068 0146     		mov	r1, r0
 124 006a 2846     		mov	r0, r5
 125 006c E162     		str	r1, [r4, #44]	@ float
 126 006e FFF7FEFF 		bl	__aeabi_fsub
 127 0072 4FF06651 		mov	r1, #964689920
 128 0076 FFF7FEFF 		bl	__aeabi_fmul
 129 007a 2063     		str	r0, [r4, #48]	@ float
 130 007c 0120     		movs	r0, #1
 131 007e 05B0     		add	sp, sp, #20
 132              		@ sp needed
 133 0080 F0BD     		pop	{r4, r5, r6, r7, pc}
 134              	.L11:
 135 0082 2846     		mov	r0, r5
 136 0084 5821     		movs	r1, #88
 137 0086 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 138 008a 0028     		cmp	r0, #0
 139 008c BED1     		bne	.L10
 140 008e 0A9A     		ldr	r2, [sp, #40]
 141 0090 3146     		mov	r1, r6
 142 0092 2046     		mov	r0, r4
 143 0094 FFF7FEFF 		bl	_ZNK17TemperatureSensor22CopyBasicHeaterDetailsEjRK9StringRef
 144 0098 606A     		ldr	r0, [r4, #36]	@ float
 145 009a FFF7FEFF 		bl	__aeabi_f2d
 146 009e 0646     		mov	r6, r0
 147 00a0 A06A     		ldr	r0, [r4, #40]	@ float
 148 00a2 0F46     		mov	r7, r1
 149 00a4 FFF7FEFF 		bl	__aeabi_f2d
 150 00a8 3246     		mov	r2, r6
 151 00aa CDE90001 		strd	r0, [sp]
 152 00ae 3B46     		mov	r3, r7
 153 00b0 0249     		ldr	r1, .L16
 154 00b2 0A98     		ldr	r0, [sp, #40]
 155 00b4 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 156 00b8 A8E7     		b	.L10
 157              	.L17:
 158 00ba 00BF     		.align	2
 159              	.L16:
 160 00bc 00000000 		.word	.LC0
 161              		.size	_ZN28CurrentLoopTemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef, .-_ZN28CurrentLoop
 162              		.section	.text._ZN28CurrentLoopTemperatureSensorC2Ej,"ax",%progbits
 163              		.align	1
 164              		.p2align 2,,3
 165              		.global	_ZN28CurrentLoopTemperatureSensorC2Ej
 166              		.syntax unified
 167              		.thumb
 168              		.thumb_func
 169              		.fpu softvfp
 170              		.type	_ZN28CurrentLoopTemperatureSensorC2Ej, %function
 171              	_ZN28CurrentLoopTemperatureSensorC2Ej:
ARM GAS  /tmp/ccCnMBqs.s 			page 4


 172              		@ args = 0, pretend = 0, frame = 0
 173              		@ frame_needed = 0, uses_anonymous_args = 0
 174 0000 0022     		movs	r2, #0
 175 0002 30B5     		push	{r4, r5, lr}
 176 0004 0446     		mov	r4, r0
 177 0006 0B4B     		ldr	r3, .L20
 178 0008 83B0     		sub	sp, sp, #12
 179 000a 8DE80C00 		stm	sp, {r2, r3}
 180 000e A1F59673 		sub	r3, r1, #300
 181 0012 094A     		ldr	r2, .L20+4
 182 0014 FFF7FEFF 		bl	_ZN20SpiTemperatureSensorC2EjPKcjhm
 183 0018 0848     		ldr	r0, .L20+8
 184 001a 094D     		ldr	r5, .L20+12
 185 001c 6062     		str	r0, [r4, #36]	@ float
 186 001e 2046     		mov	r0, r4
 187 0020 0849     		ldr	r1, .L20+16
 188 0022 094A     		ldr	r2, .L20+20
 189 0024 094B     		ldr	r3, .L20+24
 190 0026 2560     		str	r5, [r4]
 191 0028 A162     		str	r1, [r4, #40]	@ float
 192 002a E262     		str	r2, [r4, #44]	@ float
 193 002c 2363     		str	r3, [r4, #48]	@ float
 194 002e 03B0     		add	sp, sp, #12
 195              		@ sp needed
 196 0030 30BD     		pop	{r4, r5, pc}
 197              	.L21:
 198 0032 00BF     		.align	2
 199              	.L20:
 200 0034 40420F00 		.word	1000000
 201 0038 00000000 		.word	.LC1
 202 003c 0080C043 		.word	1136689152
 203 0040 08000000 		.word	.LANCHOR0+8
 204 0044 0000C844 		.word	1153957888
 205 0048 0080A242 		.word	1117945856
 206 004c 00D8BD3E 		.word	1052628992
 207              		.size	_ZN28CurrentLoopTemperatureSensorC2Ej, .-_ZN28CurrentLoopTemperatureSensorC2Ej
 208              		.global	_ZN28CurrentLoopTemperatureSensorC1Ej
 209              		.thumb_set _ZN28CurrentLoopTemperatureSensorC1Ej,_ZN28CurrentLoopTemperatureSensorC2Ej
 210              		.section	.text._ZN28CurrentLoopTemperatureSensor21CalcDerivedParametersEv,"ax",%progbits
 211              		.align	1
 212              		.p2align 2,,3
 213              		.global	_ZN28CurrentLoopTemperatureSensor21CalcDerivedParametersEv
 214              		.syntax unified
 215              		.thumb
 216              		.thumb_func
 217              		.fpu softvfp
 218              		.type	_ZN28CurrentLoopTemperatureSensor21CalcDerivedParametersEv, %function
 219              	_ZN28CurrentLoopTemperatureSensor21CalcDerivedParametersEv:
 220              		@ args = 0, pretend = 0, frame = 0
 221              		@ frame_needed = 0, uses_anonymous_args = 0
 222 0000 70B5     		push	{r4, r5, r6, lr}
 223 0002 466A     		ldr	r6, [r0, #36]	@ float
 224 0004 856A     		ldr	r5, [r0, #40]	@ float
 225 0006 0446     		mov	r4, r0
 226 0008 3146     		mov	r1, r6
 227 000a 2846     		mov	r0, r5
 228 000c FFF7FEFF 		bl	__aeabi_fsub
ARM GAS  /tmp/ccCnMBqs.s 			page 5


 229 0010 4FF07A51 		mov	r1, #1048576000
 230 0014 FFF7FEFF 		bl	__aeabi_fmul
 231 0018 0146     		mov	r1, r0
 232 001a 3046     		mov	r0, r6
 233 001c FFF7FEFF 		bl	__aeabi_fsub
 234 0020 0146     		mov	r1, r0
 235 0022 2846     		mov	r0, r5
 236 0024 E162     		str	r1, [r4, #44]	@ float
 237 0026 FFF7FEFF 		bl	__aeabi_fsub
 238 002a 4FF06651 		mov	r1, #964689920
 239 002e FFF7FEFF 		bl	__aeabi_fmul
 240 0032 2063     		str	r0, [r4, #48]	@ float
 241 0034 70BD     		pop	{r4, r5, r6, pc}
 242              		.size	_ZN28CurrentLoopTemperatureSensor21CalcDerivedParametersEv, .-_ZN28CurrentLoopTemperatureSen
 243              		.global	__aeabi_ui2f
 244              		.global	__aeabi_fadd
 245 0036 00BF     		.section	.text._ZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEv,"ax",%progbits
 246              		.align	1
 247              		.p2align 2,,3
 248              		.global	_ZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEv
 249              		.syntax unified
 250              		.thumb
 251              		.thumb_func
 252              		.fpu softvfp
 253              		.type	_ZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEv, %function
 254              	_ZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEv:
 255              		@ args = 0, pretend = 0, frame = 8
 256              		@ frame_needed = 0, uses_anonymous_args = 0
 257 0000 70B5     		push	{r4, r5, r6, lr}
 258 0002 82B0     		sub	sp, sp, #8
 259 0004 01AB     		add	r3, sp, #4
 260 0006 0322     		movs	r2, #3
 261 0008 1B49     		ldr	r1, .L29
 262 000a 0446     		mov	r4, r0
 263 000c FFF7FEFF 		bl	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm
 264 0010 84F82000 		strb	r0, [r4, #32]
 265 0014 18BB     		cbnz	r0, .L24
 266 0016 019A     		ldr	r2, [sp, #4]
 267 0018 5109     		lsrs	r1, r2, #5
 268 001a C1F30C00 		ubfx	r0, r1, #0, #13
 269 001e B0F5805F 		cmp	r0, #4096
 270 0022 19D2     		bcs	.L26
 271 0024 D308     		lsrs	r3, r2, #3
 272 0026 01F00106 		and	r6, r1, #1
 273 002a 5508     		lsrs	r5, r2, #1
 274 002c 03F00203 		and	r3, r3, #2
 275 0030 3343     		orrs	r3, r3, r6
 276 0032 05F00405 		and	r5, r5, #4
 277 0036 5600     		lsls	r6, r2, #1
 278 0038 2B43     		orrs	r3, r3, r5
 279 003a 06F00806 		and	r6, r6, #8
 280 003e D500     		lsls	r5, r2, #3
 281 0040 3343     		orrs	r3, r3, r6
 282 0042 05F01005 		and	r5, r5, #16
 283 0046 5201     		lsls	r2, r2, #5
 284 0048 2B43     		orrs	r3, r3, r5
 285 004a 02F02002 		and	r2, r2, #32
ARM GAS  /tmp/ccCnMBqs.s 			page 6


 286 004e 01F03F01 		and	r1, r1, #63
 287 0052 1343     		orrs	r3, r3, r2
 288 0054 8B42     		cmp	r3, r1
 289 0056 04D0     		beq	.L27
 290              	.L26:
 291 0058 0923     		movs	r3, #9
 292 005a 84F82030 		strb	r3, [r4, #32]
 293              	.L24:
 294 005e 02B0     		add	sp, sp, #8
 295              		@ sp needed
 296 0060 70BD     		pop	{r4, r5, r6, pc}
 297              	.L27:
 298 0062 FFF7FEFF 		bl	__aeabi_ui2f
 299 0066 216B     		ldr	r1, [r4, #48]	@ float
 300 0068 FFF7FEFF 		bl	__aeabi_fmul
 301 006c E16A     		ldr	r1, [r4, #44]	@ float
 302 006e FFF7FEFF 		bl	__aeabi_fadd
 303 0072 E061     		str	r0, [r4, #28]	@ float
 304 0074 02B0     		add	sp, sp, #8
 305              		@ sp needed
 306 0076 70BD     		pop	{r4, r5, r6, pc}
 307              	.L30:
 308              		.align	2
 309              	.L29:
 310 0078 00000000 		.word	.LANCHOR1
 311              		.size	_ZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEv, .-_ZN28CurrentLoopTemperatu
 312              		.section	.text._ZN28CurrentLoopTemperatureSensor4InitEv,"ax",%progbits
 313              		.align	1
 314              		.p2align 2,,3
 315              		.global	_ZN28CurrentLoopTemperatureSensor4InitEv
 316              		.syntax unified
 317              		.thumb
 318              		.thumb_func
 319              		.fpu softvfp
 320              		.type	_ZN28CurrentLoopTemperatureSensor4InitEv, %function
 321              	_ZN28CurrentLoopTemperatureSensor4InitEv:
 322              		@ args = 0, pretend = 0, frame = 0
 323              		@ frame_needed = 0, uses_anonymous_args = 0
 324 0000 70B5     		push	{r4, r5, r6, lr}
 325 0002 0546     		mov	r5, r0
 326 0004 0324     		movs	r4, #3
 327 0006 FFF7FEFF 		bl	_ZN20SpiTemperatureSensor7InitSpiEv
 328              	.L36:
 329 000a 2846     		mov	r0, r5
 330 000c FFF7FEFF 		bl	_ZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEv
 331 0010 95F82030 		ldrb	r3, [r5, #32]	@ zero_extendqisi2
 332 0014 23B1     		cbz	r3, .L35
 333 0016 6420     		movs	r0, #100
 334 0018 FFF7FEFF 		bl	coreDelay
 335 001c 013C     		subs	r4, r4, #1
 336 001e F4D1     		bne	.L36
 337              	.L35:
 338 0020 FFF7FEFF 		bl	millis
 339 0024 95F82030 		ldrb	r3, [r5, #32]	@ zero_extendqisi2
 340 0028 A861     		str	r0, [r5, #24]
 341 002a 03B9     		cbnz	r3, .L43
 342 002c 70BD     		pop	{r4, r5, r6, pc}
ARM GAS  /tmp/ccCnMBqs.s 			page 7


 343              	.L43:
 344 002e 074A     		ldr	r2, .L44
 345 0030 1846     		mov	r0, r3
 346 0032 1468     		ldr	r4, [r2]	@ unaligned
 347 0034 FFF7FEFF 		bl	_Z22TemperatureErrorString16TemperatureError
 348 0038 054A     		ldr	r2, .L44+4
 349 003a 0346     		mov	r3, r0
 350 003c 40F2B511 		movw	r1, #437
 351 0040 2046     		mov	r0, r4
 352 0042 BDE87040 		pop	{r4, r5, r6, lr}
 353 0046 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 354              	.L45:
 355 004a 00BF     		.align	2
 356              	.L44:
 357 004c 00000000 		.word	reprap
 358 0050 00000000 		.word	.LC2
 359              		.size	_ZN28CurrentLoopTemperatureSensor4InitEv, .-_ZN28CurrentLoopTemperatureSensor4InitEv
 360              		.section	.text._ZN28CurrentLoopTemperatureSensor14GetTemperatureERf,"ax",%progbits
 361              		.align	1
 362              		.p2align 2,,3
 363              		.global	_ZN28CurrentLoopTemperatureSensor14GetTemperatureERf
 364              		.syntax unified
 365              		.thumb
 366              		.thumb_func
 367              		.fpu softvfp
 368              		.type	_ZN28CurrentLoopTemperatureSensor14GetTemperatureERf, %function
 369              	_ZN28CurrentLoopTemperatureSensor14GetTemperatureERf:
 370              		@ args = 0, pretend = 0, frame = 0
 371              		@ frame_needed = 0, uses_anonymous_args = 0
 372 0000 38B5     		push	{r3, r4, r5, lr}
 373 0002 0446     		mov	r4, r0
 374 0004 0D46     		mov	r5, r1
 375 0006 FFF7FEFF 		bl	_Z11inInterruptv
 376 000a 20B1     		cbz	r0, .L53
 377              	.L48:
 378 000c E369     		ldr	r3, [r4, #28]	@ float
 379 000e 94F82000 		ldrb	r0, [r4, #32]	@ zero_extendqisi2
 380 0012 2B60     		str	r3, [r5]	@ float
 381 0014 38BD     		pop	{r3, r4, r5, pc}
 382              	.L53:
 383 0016 FFF7FEFF 		bl	millis
 384 001a A369     		ldr	r3, [r4, #24]
 385 001c C01A     		subs	r0, r0, r3
 386 001e 6328     		cmp	r0, #99
 387 0020 F4D9     		bls	.L48
 388 0022 2046     		mov	r0, r4
 389 0024 FFF7FEFF 		bl	_ZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEv
 390 0028 E369     		ldr	r3, [r4, #28]	@ float
 391 002a 94F82000 		ldrb	r0, [r4, #32]	@ zero_extendqisi2
 392 002e 2B60     		str	r3, [r5]	@ float
 393 0030 38BD     		pop	{r3, r4, r5, pc}
 394              		.size	_ZN28CurrentLoopTemperatureSensor14GetTemperatureERf, .-_ZN28CurrentLoopTemperatureSensor14G
 395              		.weak	_ZTV20SpiTemperatureSensor
 396 0032 00BF     		.section	.rodata._ZTV20SpiTemperatureSensor,"aG",%progbits,_ZTV20SpiTemperatureSensor,comdat
 397              		.align	2
 398              		.type	_ZTV20SpiTemperatureSensor, %object
 399              		.size	_ZTV20SpiTemperatureSensor, 28
ARM GAS  /tmp/ccCnMBqs.s 			page 8


 400              	_ZTV20SpiTemperatureSensor:
 401 0000 00000000 		.word	0
 402 0004 00000000 		.word	0
 403 0008 00000000 		.word	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef
 404 000c 00000000 		.word	__cxa_pure_virtual
 405 0010 00000000 		.word	__cxa_pure_virtual
 406 0014 00000000 		.word	0
 407 0018 00000000 		.word	0
 408              		.global	_ZTV28CurrentLoopTemperatureSensor
 409              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 410              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 411              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 412              	_ZL28cpu_irq_prev_interrupt_state:
 413 0000 00       		.space	1
 414              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 415              		.align	2
 416              		.type	_ZL32cpu_irq_critical_section_counter, %object
 417              		.size	_ZL32cpu_irq_critical_section_counter, 4
 418              	_ZL32cpu_irq_critical_section_counter:
 419 0000 00000000 		.space	4
 420              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 421              		.align	2
 422              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 423              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 424              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 425 0000 00000000 		.space	4
 426              		.section	.rodata._ZN28CurrentLoopTemperatureSensor4InitEv.str1.4,"aMS",%progbits,1
 427              		.align	2
 428              	.LC2:
 429 0000 4661696C 		.ascii	"Failed to initialise daughter board ADC: %s\012\000"
 429      65642074 
 429      6F20696E 
 429      69746961 
 429      6C697365 
 430              		.section	.rodata._ZN28CurrentLoopTemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef.str1.4,"
 431              		.align	2
 432              	.LC0:
 433 0000 2C207465 		.ascii	", temperature range %.1f to %.1fC\000"
 433      6D706572 
 433      61747572 
 433      65207261 
 433      6E676520 
 434              		.section	.rodata._ZN28CurrentLoopTemperatureSensorC2Ej.str1.4,"aMS",%progbits,1
 435              		.align	2
 436              	.LC1:
 437 0000 43757272 		.ascii	"Current Loop\000"
 437      656E7420 
 437      4C6F6F70 
 437      00
 438              		.section	.rodata._ZTV28CurrentLoopTemperatureSensor,"a",%progbits
 439              		.align	2
 440              		.set	.LANCHOR0,. + 0
 441              		.type	_ZTV28CurrentLoopTemperatureSensor, %object
 442              		.size	_ZTV28CurrentLoopTemperatureSensor, 28
 443              	_ZTV28CurrentLoopTemperatureSensor:
 444 0000 00000000 		.word	0
 445 0004 00000000 		.word	0
ARM GAS  /tmp/ccCnMBqs.s 			page 9


 446 0008 00000000 		.word	_ZN28CurrentLoopTemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef
 447 000c 00000000 		.word	_ZN28CurrentLoopTemperatureSensor4InitEv
 448 0010 00000000 		.word	_ZN28CurrentLoopTemperatureSensor14GetTemperatureERf
 449 0014 00000000 		.word	_ZN28CurrentLoopTemperatureSensorD1Ev
 450 0018 00000000 		.word	_ZN28CurrentLoopTemperatureSensorD0Ev
 451              		.section	.rodata._ZZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEvE7adcData,"a",%pr
 452              		.align	2
 453              		.set	.LANCHOR1,. + 0
 454              		.type	_ZZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEvE7adcData, %object
 455              		.size	_ZZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEvE7adcData, 3
 456              	_ZZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEvE7adcData:
 457 0000 C0       		.byte	-64
 458 0001 00       		.byte	0
 459 0002 00       		.byte	0
 460              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
