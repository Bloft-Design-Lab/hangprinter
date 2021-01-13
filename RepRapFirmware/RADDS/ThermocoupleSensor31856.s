ARM GAS  /tmp/ccwpTYVa.s 			page 1


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
  11              		.file	"ThermocoupleSensor31856.cpp"
  12              		.section	.text._ZN23ThermocoupleSensor318569ConfigureEjjR11GCodeBufferRK9StringRef,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN23ThermocoupleSensor318569ConfigureEjjR11GCodeBufferRK9StringRef
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN23ThermocoupleSensor318569ConfigureEjjR11GCodeBufferRK9StringRef, %function
  21              	_ZN23ThermocoupleSensor318569ConfigureEjjR11GCodeBufferRK9StringRef:
  22              		@ args = 4, pretend = 0, frame = 16
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  25 0004 40F23114 		movw	r4, #305
  26 0008 A142     		cmp	r1, r4
  27 000a 84B0     		sub	sp, sp, #16
  28 000c 03D0     		beq	.L26
  29              	.L14:
  30 000e 0120     		movs	r0, #1
  31              	.L23:
  32 0010 04B0     		add	sp, sp, #16
  33              		@ sp needed
  34 0012 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  35              	.L26:
  36 0016 1D46     		mov	r5, r3
  37 0018 0023     		movs	r3, #0
  38 001a 04AF     		add	r7, sp, #16
  39 001c 07F80D3D 		strb	r3, [r7, #-13]!
  40 0020 2946     		mov	r1, r5
  41 0022 1446     		mov	r4, r2
  42 0024 3A46     		mov	r2, r7
  43 0026 0646     		mov	r6, r0
  44 0028 FFF7FEFF 		bl	_ZN17TemperatureSensor22TryConfigureHeaterNameER11GCodeBufferRb
  45 002c 4621     		movs	r1, #70
  46 002e 2846     		mov	r0, r5
  47 0030 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
  48 0034 0028     		cmp	r0, #0
  49 0036 3CD1     		bne	.L27
  50              	.L3:
  51 0038 0022     		movs	r2, #0
  52 003a 4FF0030E 		mov	lr, #3
  53 003e 0DF11008 		add	r8, sp, #16
  54 0042 08F80C2D 		strb	r2, [r8, #-12]!
  55 0046 3B46     		mov	r3, r7
  56 0048 02AA     		add	r2, sp, #8
  57 004a 5421     		movs	r1, #84
ARM GAS  /tmp/ccwpTYVa.s 			page 2


  58 004c 2846     		mov	r0, r5
  59 004e CDF80880 		str	r8, [sp, #8]
  60 0052 CDF80CE0 		str	lr, [sp, #12]
  61 0056 FFF7FEFF 		bl	_ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb
  62 005a F0B9     		cbnz	r0, .L28
  63              	.L5:
  64 005c 9DF80330 		ldrb	r3, [sp, #3]	@ zero_extendqisi2
  65 0060 002B     		cmp	r3, #0
  66 0062 D4D1     		bne	.L14
  67 0064 2846     		mov	r0, r5
  68 0066 5821     		movs	r1, #88
  69 0068 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
  70 006c 0028     		cmp	r0, #0
  71 006e CED1     		bne	.L14
  72 0070 2146     		mov	r1, r4
  73 0072 0A9A     		ldr	r2, [sp, #40]
  74 0074 3046     		mov	r0, r6
  75 0076 FFF7FEFF 		bl	_ZNK17TemperatureSensor22CopyBasicHeaterDetailsEjRK9StringRef
  76 007a 96F82110 		ldrb	r1, [r6, #33]	@ zero_extendqisi2
  77 007e 96F82230 		ldrb	r3, [r6, #34]	@ zero_extendqisi2
  78 0082 1C4A     		ldr	r2, .L30
  79 0084 11F0010F 		tst	r1, #1
  80 0088 D25C     		ldrb	r2, [r2, r3]	@ zero_extendqisi2
  81 008a 1B49     		ldr	r1, .L30+4
  82 008c 14BF     		ite	ne
  83 008e 3223     		movne	r3, #50
  84 0090 3C23     		moveq	r3, #60
  85 0092 0A98     		ldr	r0, [sp, #40]
  86 0094 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
  87 0098 B9E7     		b	.L14
  88              	.L28:
  89 009a 4046     		mov	r0, r8
  90 009c 0221     		movs	r1, #2
  91 009e FFF7FEFF 		bl	_Z7StrnlenPKcj
  92 00a2 0128     		cmp	r0, #1
  93 00a4 16D0     		beq	.L29
  94              	.L6:
  95 00a6 1549     		ldr	r1, .L30+8
  96 00a8 0A98     		ldr	r0, [sp, #40]
  97 00aa FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
  98 00ae 0220     		movs	r0, #2
  99 00b0 AEE7     		b	.L23
 100              	.L27:
 101 00b2 0123     		movs	r3, #1
 102 00b4 2846     		mov	r0, r5
 103 00b6 8DF80330 		strb	r3, [sp, #3]
 104 00ba FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 105 00be 96F82130 		ldrb	r3, [r6, #33]	@ zero_extendqisi2
 106 00c2 3C28     		cmp	r0, #60
 107 00c4 0CBF     		ite	eq
 108 00c6 23F00103 		biceq	r3, r3, #1
 109 00ca 43F00103 		orrne	r3, r3, #1
 110 00ce 86F82130 		strb	r3, [r6, #33]
 111 00d2 B1E7     		b	.L3
 112              	.L29:
 113 00d4 9DF80400 		ldrb	r0, [sp, #4]	@ zero_extendqisi2
 114 00d8 FFF7FEFF 		bl	toupper
ARM GAS  /tmp/ccwpTYVa.s 			page 3


 115 00dc 054F     		ldr	r7, .L30
 116 00de 0146     		mov	r1, r0
 117 00e0 3846     		mov	r0, r7
 118 00e2 FFF7FEFF 		bl	strchr
 119 00e6 0028     		cmp	r0, #0
 120 00e8 DDD0     		beq	.L6
 121 00ea C01B     		subs	r0, r0, r7
 122 00ec 86F82200 		strb	r0, [r6, #34]
 123 00f0 B4E7     		b	.L5
 124              	.L31:
 125 00f2 00BF     		.align	2
 126              	.L30:
 127 00f4 00000000 		.word	.LC0
 128 00f8 0C000000 		.word	.LC1
 129 00fc 30000000 		.word	.LC2
 130              		.size	_ZN23ThermocoupleSensor318569ConfigureEjjR11GCodeBufferRK9StringRef, .-_ZN23ThermocoupleSens
 131              		.section	.text._ZN23ThermocoupleSensor31856D2Ev,"axG",%progbits,_ZN23ThermocoupleSensor31856D5Ev,c
 132              		.align	1
 133              		.p2align 2,,3
 134              		.weak	_ZN23ThermocoupleSensor31856D2Ev
 135              		.syntax unified
 136              		.thumb
 137              		.thumb_func
 138              		.fpu softvfp
 139              		.type	_ZN23ThermocoupleSensor31856D2Ev, %function
 140              	_ZN23ThermocoupleSensor31856D2Ev:
 141              		@ args = 0, pretend = 0, frame = 0
 142              		@ frame_needed = 0, uses_anonymous_args = 0
 143 0000 10B5     		push	{r4, lr}
 144 0002 0446     		mov	r4, r0
 145 0004 024B     		ldr	r3, .L34
 146 0006 0360     		str	r3, [r0]
 147 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
 148 000c 2046     		mov	r0, r4
 149 000e 10BD     		pop	{r4, pc}
 150              	.L35:
 151              		.align	2
 152              	.L34:
 153 0010 08000000 		.word	_ZTV20SpiTemperatureSensor+8
 154              		.size	_ZN23ThermocoupleSensor31856D2Ev, .-_ZN23ThermocoupleSensor31856D2Ev
 155              		.weak	_ZN23ThermocoupleSensor31856D1Ev
 156              		.thumb_set _ZN23ThermocoupleSensor31856D1Ev,_ZN23ThermocoupleSensor31856D2Ev
 157              		.section	.text._ZN23ThermocoupleSensor31856D0Ev,"axG",%progbits,_ZN23ThermocoupleSensor31856D5Ev,c
 158              		.align	1
 159              		.p2align 2,,3
 160              		.weak	_ZN23ThermocoupleSensor31856D0Ev
 161              		.syntax unified
 162              		.thumb
 163              		.thumb_func
 164              		.fpu softvfp
 165              		.type	_ZN23ThermocoupleSensor31856D0Ev, %function
 166              	_ZN23ThermocoupleSensor31856D0Ev:
 167              		@ args = 0, pretend = 0, frame = 0
 168              		@ frame_needed = 0, uses_anonymous_args = 0
 169 0000 10B5     		push	{r4, lr}
 170 0002 0446     		mov	r4, r0
 171 0004 044B     		ldr	r3, .L38
ARM GAS  /tmp/ccwpTYVa.s 			page 4


 172 0006 0360     		str	r3, [r0]
 173 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
 174 000c 2046     		mov	r0, r4
 175 000e 2421     		movs	r1, #36
 176 0010 FFF7FEFF 		bl	_ZdlPvj
 177 0014 2046     		mov	r0, r4
 178 0016 10BD     		pop	{r4, pc}
 179              	.L39:
 180              		.align	2
 181              	.L38:
 182 0018 08000000 		.word	_ZTV20SpiTemperatureSensor+8
 183              		.size	_ZN23ThermocoupleSensor31856D0Ev, .-_ZN23ThermocoupleSensor31856D0Ev
 184              		.section	.text._ZN23ThermocoupleSensor31856C2Ej,"ax",%progbits
 185              		.align	1
 186              		.p2align 2,,3
 187              		.global	_ZN23ThermocoupleSensor31856C2Ej
 188              		.syntax unified
 189              		.thumb
 190              		.thumb_func
 191              		.fpu softvfp
 192              		.type	_ZN23ThermocoupleSensor31856C2Ej, %function
 193              	_ZN23ThermocoupleSensor31856C2Ej:
 194              		@ args = 0, pretend = 0, frame = 0
 195              		@ frame_needed = 0, uses_anonymous_args = 0
 196 0000 0122     		movs	r2, #1
 197 0002 10B5     		push	{r4, lr}
 198 0004 0446     		mov	r4, r0
 199 0006 0A4B     		ldr	r3, .L42
 200 0008 82B0     		sub	sp, sp, #8
 201 000a 8DE80C00 		stm	sp, {r2, r3}
 202 000e A1F19603 		sub	r3, r1, #150
 203 0012 084A     		ldr	r2, .L42+4
 204 0014 FFF7FEFF 		bl	_ZN20SpiTemperatureSensorC2EjPKcjhm
 205 0018 9721     		movs	r1, #151
 206 001a 0323     		movs	r3, #3
 207 001c 2046     		mov	r0, r4
 208 001e 064A     		ldr	r2, .L42+8
 209 0020 84F82110 		strb	r1, [r4, #33]
 210 0024 2260     		str	r2, [r4]
 211 0026 84F82230 		strb	r3, [r4, #34]
 212 002a 02B0     		add	sp, sp, #8
 213              		@ sp needed
 214 002c 10BD     		pop	{r4, pc}
 215              	.L43:
 216 002e 00BF     		.align	2
 217              	.L42:
 218 0030 00093D00 		.word	4000000
 219 0034 00000000 		.word	.LC3
 220 0038 08000000 		.word	.LANCHOR0+8
 221              		.size	_ZN23ThermocoupleSensor31856C2Ej, .-_ZN23ThermocoupleSensor31856C2Ej
 222              		.global	_ZN23ThermocoupleSensor31856C1Ej
 223              		.thumb_set _ZN23ThermocoupleSensor31856C1Ej,_ZN23ThermocoupleSensor31856C2Ej
 224              		.section	.text._ZNK23ThermocoupleSensor3185619TryInitThermocoupleEv,"ax",%progbits
 225              		.align	1
 226              		.p2align 2,,3
 227              		.global	_ZNK23ThermocoupleSensor3185619TryInitThermocoupleEv
 228              		.syntax unified
ARM GAS  /tmp/ccwpTYVa.s 			page 5


 229              		.thumb
 230              		.thumb_func
 231              		.fpu softvfp
 232              		.type	_ZNK23ThermocoupleSensor3185619TryInitThermocoupleEv, %function
 233              	_ZNK23ThermocoupleSensor3185619TryInitThermocoupleEv:
 234              		@ args = 0, pretend = 0, frame = 8
 235              		@ frame_needed = 0, uses_anonymous_args = 0
 236 0000 70B5     		push	{r4, r5, r6, lr}
 237 0002 8026     		movs	r6, #128
 238 0004 3C25     		movs	r5, #60
 239 0006 90F82220 		ldrb	r2, [r0, #34]	@ zero_extendqisi2
 240 000a 90F82110 		ldrb	r1, [r0, #33]	@ zero_extendqisi2
 241 000e 82B0     		sub	sp, sp, #8
 242 0010 42F02002 		orr	r2, r2, #32
 243 0014 8DF80220 		strb	r2, [sp, #2]
 244 0018 8DF80110 		strb	r1, [sp, #1]
 245 001c 01AB     		add	r3, sp, #4
 246 001e 0422     		movs	r2, #4
 247 0020 6946     		mov	r1, sp
 248 0022 0446     		mov	r4, r0
 249 0024 8DF80060 		strb	r6, [sp]
 250 0028 8DF80350 		strb	r5, [sp, #3]
 251 002c FFF7FEFF 		bl	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm
 252 0030 08B1     		cbz	r0, .L49
 253              	.L45:
 254 0032 02B0     		add	sp, sp, #8
 255              		@ sp needed
 256 0034 70BD     		pop	{r4, r5, r6, pc}
 257              	.L49:
 258 0036 01AB     		add	r3, sp, #4
 259 0038 2046     		mov	r0, r4
 260 003a 0422     		movs	r2, #4
 261 003c 0B49     		ldr	r1, .L50
 262 003e FFF7FEFF 		bl	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm
 263 0042 0028     		cmp	r0, #0
 264 0044 F5D1     		bne	.L45
 265 0046 9DF80230 		ldrb	r3, [sp, #2]	@ zero_extendqisi2
 266 004a 9DF80110 		ldrb	r1, [sp, #1]	@ zero_extendqisi2
 267 004e 9DF80320 		ldrb	r2, [sp, #3]	@ zero_extendqisi2
 268 0052 1B02     		lsls	r3, r3, #8
 269 0054 43EA0143 		orr	r3, r3, r1, lsl #16
 270 0058 0199     		ldr	r1, [sp, #4]
 271 005a 1343     		orrs	r3, r3, r2
 272 005c 044A     		ldr	r2, .L50+4
 273 005e 4B40     		eors	r3, r3, r1
 274 0060 1A40     		ands	r2, r2, r3
 275 0062 002A     		cmp	r2, #0
 276 0064 18BF     		it	ne
 277 0066 0920     		movne	r0, #9
 278 0068 02B0     		add	sp, sp, #8
 279              		@ sp needed
 280 006a 70BD     		pop	{r4, r5, r6, pc}
 281              	.L51:
 282              		.align	2
 283              	.L50:
 284 006c 00000000 		.word	.LANCHOR1
 285 0070 3F7FBD00 		.word	12418879
ARM GAS  /tmp/ccwpTYVa.s 			page 6


 286              		.size	_ZNK23ThermocoupleSensor3185619TryInitThermocoupleEv, .-_ZNK23ThermocoupleSensor3185619TryIn
 287              		.section	.text._ZN23ThermocoupleSensor318564InitEv,"ax",%progbits
 288              		.align	1
 289              		.p2align 2,,3
 290              		.global	_ZN23ThermocoupleSensor318564InitEv
 291              		.syntax unified
 292              		.thumb
 293              		.thumb_func
 294              		.fpu softvfp
 295              		.type	_ZN23ThermocoupleSensor318564InitEv, %function
 296              	_ZN23ThermocoupleSensor318564InitEv:
 297              		@ args = 0, pretend = 0, frame = 0
 298              		@ frame_needed = 0, uses_anonymous_args = 0
 299 0000 70B5     		push	{r4, r5, r6, lr}
 300 0002 0646     		mov	r6, r0
 301 0004 0324     		movs	r4, #3
 302 0006 FFF7FEFF 		bl	_ZN20SpiTemperatureSensor7InitSpiEv
 303              	.L55:
 304 000a 3046     		mov	r0, r6
 305 000c FFF7FEFF 		bl	_ZNK23ThermocoupleSensor3185619TryInitThermocoupleEv
 306 0010 0546     		mov	r5, r0
 307 0012 C8B1     		cbz	r0, .L53
 308 0014 6420     		movs	r0, #100
 309 0016 FFF7FEFF 		bl	coreDelay
 310 001a 013C     		subs	r4, r4, #1
 311 001c F5D1     		bne	.L55
 312 001e FFF7FEFF 		bl	millis
 313 0022 0023     		movs	r3, #0
 314 0024 0C4A     		ldr	r2, .L58
 315 0026 B061     		str	r0, [r6, #24]
 316 0028 F361     		str	r3, [r6, #28]	@ float
 317 002a 86F82050 		strb	r5, [r6, #32]
 318 002e 2846     		mov	r0, r5
 319 0030 1468     		ldr	r4, [r2]	@ unaligned
 320 0032 FFF7FEFF 		bl	_Z22TemperatureErrorString16TemperatureError
 321 0036 094A     		ldr	r2, .L58+4
 322 0038 0346     		mov	r3, r0
 323 003a 40F2B511 		movw	r1, #437
 324 003e 2046     		mov	r0, r4
 325 0040 BDE87040 		pop	{r4, r5, r6, lr}
 326 0044 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 327              	.L53:
 328 0048 FFF7FEFF 		bl	millis
 329 004c 0023     		movs	r3, #0
 330 004e B061     		str	r0, [r6, #24]
 331 0050 86F82050 		strb	r5, [r6, #32]
 332 0054 F361     		str	r3, [r6, #28]	@ float
 333 0056 70BD     		pop	{r4, r5, r6, pc}
 334              	.L59:
 335              		.align	2
 336              	.L58:
 337 0058 00000000 		.word	reprap
 338 005c 00000000 		.word	.LC4
 339              		.size	_ZN23ThermocoupleSensor318564InitEv, .-_ZN23ThermocoupleSensor318564InitEv
 340              		.global	__aeabi_i2f
 341              		.global	__aeabi_fmul
 342              		.section	.text._ZN23ThermocoupleSensor3185614GetTemperatureERf,"ax",%progbits
ARM GAS  /tmp/ccwpTYVa.s 			page 7


 343              		.align	1
 344              		.p2align 2,,3
 345              		.global	_ZN23ThermocoupleSensor3185614GetTemperatureERf
 346              		.syntax unified
 347              		.thumb
 348              		.thumb_func
 349              		.fpu softvfp
 350              		.type	_ZN23ThermocoupleSensor3185614GetTemperatureERf, %function
 351              	_ZN23ThermocoupleSensor3185614GetTemperatureERf:
 352              		@ args = 0, pretend = 0, frame = 8
 353              		@ frame_needed = 0, uses_anonymous_args = 0
 354 0000 70B5     		push	{r4, r5, r6, lr}
 355 0002 82B0     		sub	sp, sp, #8
 356 0004 0446     		mov	r4, r0
 357 0006 0E46     		mov	r6, r1
 358 0008 FFF7FEFF 		bl	_Z11inInterruptv
 359 000c 30B1     		cbz	r0, .L78
 360              	.L61:
 361 000e E369     		ldr	r3, [r4, #28]	@ float
 362 0010 94F82050 		ldrb	r5, [r4, #32]	@ zero_extendqisi2
 363 0014 3360     		str	r3, [r6]	@ float
 364              	.L72:
 365 0016 2846     		mov	r0, r5
 366 0018 02B0     		add	sp, sp, #8
 367              		@ sp needed
 368 001a 70BD     		pop	{r4, r5, r6, pc}
 369              	.L78:
 370 001c FFF7FEFF 		bl	millis
 371 0020 A369     		ldr	r3, [r4, #24]
 372 0022 C01A     		subs	r0, r0, r3
 373 0024 6328     		cmp	r0, #99
 374 0026 F2D9     		bls	.L61
 375 0028 01AB     		add	r3, sp, #4
 376 002a 0522     		movs	r2, #5
 377 002c 1749     		ldr	r1, .L81
 378 002e 2046     		mov	r0, r4
 379 0030 FFF7FEFF 		bl	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm
 380 0034 0546     		mov	r5, r0
 381 0036 20B1     		cbz	r0, .L79
 382              	.L75:
 383 0038 2846     		mov	r0, r5
 384 003a 84F82050 		strb	r5, [r4, #32]
 385 003e 02B0     		add	sp, sp, #8
 386              		@ sp needed
 387 0040 70BD     		pop	{r4, r5, r6, pc}
 388              	.L79:
 389 0042 FFF7FEFF 		bl	millis
 390 0046 019B     		ldr	r3, [sp, #4]
 391 0048 A061     		str	r0, [r4, #24]
 392 004a 13F0FF0F 		tst	r3, #255
 393 004e 0DD0     		beq	.L64
 394 0050 9907     		lsls	r1, r3, #30
 395 0052 15D5     		bpl	.L80
 396 0054 0D22     		movs	r2, #13
 397              	.L65:
 398 0056 1C23     		movs	r3, #28
 399 0058 84F82020 		strb	r2, [r4, #32]
ARM GAS  /tmp/ccwpTYVa.s 			page 8


 400              		.syntax unified
 401              	@ 88 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h" 1
 402              		L_442_delayMicroseconds:
 403 005c 013B     		subs   r3, #1
 404 005e FDD1     		bne    L_442_delayMicroseconds
 405              	
 406              	@ 0 "" 2
 407              		.thumb
 408              		.syntax unified
 409 0060 2046     		mov	r0, r4
 410 0062 FFF7FEFF 		bl	_ZNK23ThermocoupleSensor3185619TryInitThermocoupleEv
 411 0066 94F82050 		ldrb	r5, [r4, #32]	@ zero_extendqisi2
 412 006a D4E7     		b	.L72
 413              	.L64:
 414 006c 1814     		asrs	r0, r3, #16
 415 006e FFF7FEFF 		bl	__aeabi_i2f
 416 0072 4FF07651 		mov	r1, #1031798784
 417 0076 FFF7FEFF 		bl	__aeabi_fmul
 418 007a E061     		str	r0, [r4, #28]	@ float
 419 007c 3060     		str	r0, [r6]	@ float
 420 007e DBE7     		b	.L75
 421              	.L80:
 422 0080 13F0010F 		tst	r3, #1
 423 0084 0CBF     		ite	eq
 424 0086 0722     		moveq	r2, #7
 425 0088 0422     		movne	r2, #4
 426 008a E4E7     		b	.L65
 427              	.L82:
 428              		.align	2
 429              	.L81:
 430 008c 00000000 		.word	.LANCHOR2
 431              		.size	_ZN23ThermocoupleSensor3185614GetTemperatureERf, .-_ZN23ThermocoupleSensor3185614GetTemperat
 432              		.weak	_ZTV20SpiTemperatureSensor
 433              		.section	.rodata._ZTV20SpiTemperatureSensor,"aG",%progbits,_ZTV20SpiTemperatureSensor,comdat
 434              		.align	2
 435              		.type	_ZTV20SpiTemperatureSensor, %object
 436              		.size	_ZTV20SpiTemperatureSensor, 28
 437              	_ZTV20SpiTemperatureSensor:
 438 0000 00000000 		.word	0
 439 0004 00000000 		.word	0
 440 0008 00000000 		.word	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef
 441 000c 00000000 		.word	__cxa_pure_virtual
 442 0010 00000000 		.word	__cxa_pure_virtual
 443 0014 00000000 		.word	0
 444 0018 00000000 		.word	0
 445              		.global	_ZTV23ThermocoupleSensor31856
 446              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 447              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 448              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 449              	_ZL28cpu_irq_prev_interrupt_state:
 450 0000 00       		.space	1
 451              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 452              		.align	2
 453              		.type	_ZL32cpu_irq_critical_section_counter, %object
 454              		.size	_ZL32cpu_irq_critical_section_counter, 4
 455              	_ZL32cpu_irq_critical_section_counter:
 456 0000 00000000 		.space	4
ARM GAS  /tmp/ccwpTYVa.s 			page 9


 457              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 458              		.align	2
 459              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 460              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 461              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 462 0000 00000000 		.space	4
 463              		.section	.rodata._ZN23ThermocoupleSensor318564InitEv.str1.4,"aMS",%progbits,1
 464              		.align	2
 465              	.LC4:
 466 0000 4661696C 		.ascii	"Failed to initialise thermocouple: %s\012\000"
 466      65642074 
 466      6F20696E 
 466      69746961 
 466      6C697365 
 467              		.section	.rodata._ZN23ThermocoupleSensor318569ConfigureEjjR11GCodeBufferRK9StringRef.str1.4,"aMS",
 468              		.align	2
 469              	.LC0:
 470 0000 42454A4B 		.ascii	"BEJKNRST\000"
 470      4E525354 
 470      00
 471 0009 000000   		.space	3
 472              	.LC1:
 473 000c 2C207468 		.ascii	", thermocouple type %c, reject %dHz\000"
 473      65726D6F 
 473      636F7570 
 473      6C652074 
 473      79706520 
 474              	.LC2:
 475 0030 42616420 		.ascii	"Bad thermocouple type letter in M305 command\000"
 475      74686572 
 475      6D6F636F 
 475      75706C65 
 475      20747970 
 476              		.section	.rodata._ZN23ThermocoupleSensor31856C2Ej.str1.4,"aMS",%progbits,1
 477              		.align	2
 478              	.LC3:
 479 0000 54686572 		.ascii	"Thermocouple (MAX31856)\000"
 479      6D6F636F 
 479      75706C65 
 479      20284D41 
 479      58333138 
 480              		.section	.rodata._ZTV23ThermocoupleSensor31856,"a",%progbits
 481              		.align	2
 482              		.set	.LANCHOR0,. + 0
 483              		.type	_ZTV23ThermocoupleSensor31856, %object
 484              		.size	_ZTV23ThermocoupleSensor31856, 28
 485              	_ZTV23ThermocoupleSensor31856:
 486 0000 00000000 		.word	0
 487 0004 00000000 		.word	0
 488 0008 00000000 		.word	_ZN23ThermocoupleSensor318569ConfigureEjjR11GCodeBufferRK9StringRef
 489 000c 00000000 		.word	_ZN23ThermocoupleSensor318564InitEv
 490 0010 00000000 		.word	_ZN23ThermocoupleSensor3185614GetTemperatureERf
 491 0014 00000000 		.word	_ZN23ThermocoupleSensor31856D1Ev
 492 0018 00000000 		.word	_ZN23ThermocoupleSensor31856D0Ev
 493              		.section	.rodata._ZZN23ThermocoupleSensor3185614GetTemperatureERfE7dataOut,"a",%progbits
 494              		.align	2
 495              		.set	.LANCHOR2,. + 0
ARM GAS  /tmp/ccwpTYVa.s 			page 10


 496              		.type	_ZZN23ThermocoupleSensor3185614GetTemperatureERfE7dataOut, %object
 497              		.size	_ZZN23ThermocoupleSensor3185614GetTemperatureERfE7dataOut, 5
 498              	_ZZN23ThermocoupleSensor3185614GetTemperatureERfE7dataOut:
 499 0000 0C       		.byte	12
 500 0001 55       		.byte	85
 501 0002 55       		.byte	85
 502 0003 55       		.byte	85
 503 0004 55       		.byte	85
 504              		.section	.rodata._ZZNK23ThermocoupleSensor3185619TryInitThermocoupleEvE8readData,"a",%progbits
 505              		.align	2
 506              		.set	.LANCHOR1,. + 0
 507              		.type	_ZZNK23ThermocoupleSensor3185619TryInitThermocoupleEvE8readData, %object
 508              		.size	_ZZNK23ThermocoupleSensor3185619TryInitThermocoupleEvE8readData, 4
 509              	_ZZNK23ThermocoupleSensor3185619TryInitThermocoupleEvE8readData:
 510 0000 00000000 		.space	4
 511              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
