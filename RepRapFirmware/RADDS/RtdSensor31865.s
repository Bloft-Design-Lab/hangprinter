ARM GAS  /tmp/ccaRE6Kw.s 			page 1


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
  11              		.file	"RtdSensor31865.cpp"
  12              		.section	.text._ZN14RtdSensor31865D2Ev,"axG",%progbits,_ZN14RtdSensor31865D5Ev,comdat
  13              		.align	1
  14              		.p2align 2,,3
  15              		.weak	_ZN14RtdSensor31865D2Ev
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN14RtdSensor31865D2Ev, %function
  21              	_ZN14RtdSensor31865D2Ev:
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
  35              		.size	_ZN14RtdSensor31865D2Ev, .-_ZN14RtdSensor31865D2Ev
  36              		.weak	_ZN14RtdSensor31865D1Ev
  37              		.thumb_set _ZN14RtdSensor31865D1Ev,_ZN14RtdSensor31865D2Ev
  38              		.section	.text._ZN14RtdSensor31865D0Ev,"axG",%progbits,_ZN14RtdSensor31865D5Ev,comdat
  39              		.align	1
  40              		.p2align 2,,3
  41              		.weak	_ZN14RtdSensor31865D0Ev
  42              		.syntax unified
  43              		.thumb
  44              		.thumb_func
  45              		.fpu softvfp
  46              		.type	_ZN14RtdSensor31865D0Ev, %function
  47              	_ZN14RtdSensor31865D0Ev:
  48              		@ args = 0, pretend = 0, frame = 0
  49              		@ frame_needed = 0, uses_anonymous_args = 0
  50 0000 10B5     		push	{r4, lr}
  51 0002 0446     		mov	r4, r0
  52 0004 044B     		ldr	r3, .L7
  53 0006 0360     		str	r3, [r0]
  54 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
  55 000c 2046     		mov	r0, r4
  56 000e 2821     		movs	r1, #40
  57 0010 FFF7FEFF 		bl	_ZdlPvj
ARM GAS  /tmp/ccaRE6Kw.s 			page 2


  58 0014 2046     		mov	r0, r4
  59 0016 10BD     		pop	{r4, pc}
  60              	.L8:
  61              		.align	2
  62              	.L7:
  63 0018 08000000 		.word	_ZTV20SpiTemperatureSensor+8
  64              		.size	_ZN14RtdSensor31865D0Ev, .-_ZN14RtdSensor31865D0Ev
  65              		.section	.text._ZN14RtdSensor318659ConfigureEjjR11GCodeBufferRK9StringRef,"ax",%progbits
  66              		.align	1
  67              		.p2align 2,,3
  68              		.global	_ZN14RtdSensor318659ConfigureEjjR11GCodeBufferRK9StringRef
  69              		.syntax unified
  70              		.thumb
  71              		.thumb_func
  72              		.fpu softvfp
  73              		.type	_ZN14RtdSensor318659ConfigureEjjR11GCodeBufferRK9StringRef, %function
  74              	_ZN14RtdSensor318659ConfigureEjjR11GCodeBufferRK9StringRef:
  75              		@ args = 4, pretend = 0, frame = 8
  76              		@ frame_needed = 0, uses_anonymous_args = 0
  77 0000 70B5     		push	{r4, r5, r6, lr}
  78 0002 40F23115 		movw	r5, #305
  79 0006 A942     		cmp	r1, r5
  80 0008 84B0     		sub	sp, sp, #16
  81 000a 02D0     		beq	.L36
  82              	.L30:
  83 000c 0120     		movs	r0, #1
  84 000e 04B0     		add	sp, sp, #16
  85              		@ sp needed
  86 0010 70BD     		pop	{r4, r5, r6, pc}
  87              	.L36:
  88 0012 1C46     		mov	r4, r3
  89 0014 0023     		movs	r3, #0
  90 0016 1546     		mov	r5, r2
  91 0018 04AA     		add	r2, sp, #16
  92 001a 2146     		mov	r1, r4
  93 001c 02F8013D 		strb	r3, [r2, #-1]!
  94 0020 0646     		mov	r6, r0
  95 0022 FFF7FEFF 		bl	_ZN17TemperatureSensor22TryConfigureHeaterNameER11GCodeBufferRb
  96 0026 4621     		movs	r1, #70
  97 0028 2046     		mov	r0, r4
  98 002a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
  99 002e 0028     		cmp	r0, #0
 100 0030 45D1     		bne	.L37
 101              	.L11:
 102 0032 5721     		movs	r1, #87
 103 0034 2046     		mov	r0, r4
 104 0036 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 105 003a 78BB     		cbnz	r0, .L38
 106              	.L13:
 107 003c 5221     		movs	r1, #82
 108 003e 2046     		mov	r0, r4
 109 0040 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 110 0044 10BB     		cbnz	r0, .L39
 111              	.L15:
 112 0046 9DF80F30 		ldrb	r3, [sp, #15]	@ zero_extendqisi2
 113 004a 002B     		cmp	r3, #0
 114 004c DED1     		bne	.L30
ARM GAS  /tmp/ccaRE6Kw.s 			page 3


 115 004e 2046     		mov	r0, r4
 116 0050 5821     		movs	r1, #88
 117 0052 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 118 0056 0028     		cmp	r0, #0
 119 0058 D8D1     		bne	.L30
 120 005a 2946     		mov	r1, r5
 121 005c 089A     		ldr	r2, [sp, #32]
 122 005e 3046     		mov	r0, r6
 123 0060 FFF7FEFF 		bl	_ZNK17TemperatureSensor22CopyBasicHeaterDetailsEjRK9StringRef
 124 0064 96F82430 		ldrb	r3, [r6, #36]	@ zero_extendqisi2
 125 0068 1D49     		ldr	r1, .L40
 126 006a 13F0100F 		tst	r3, #16
 127 006e 1D4A     		ldr	r2, .L40+4
 128 0070 08BF     		it	eq
 129 0072 0A46     		moveq	r2, r1
 130 0074 718C     		ldrh	r1, [r6, #34]
 131 0076 13F0010F 		tst	r3, #1
 132 007a 0091     		str	r1, [sp]
 133 007c 14BF     		ite	ne
 134 007e 3223     		movne	r3, #50
 135 0080 3C23     		moveq	r3, #60
 136 0082 1949     		ldr	r1, .L40+8
 137 0084 0898     		ldr	r0, [sp, #32]
 138 0086 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 139 008a BFE7     		b	.L30
 140              	.L39:
 141 008c 0123     		movs	r3, #1
 142 008e 2046     		mov	r0, r4
 143 0090 8DF80F30 		strb	r3, [sp, #15]
 144 0094 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 145 0098 7084     		strh	r0, [r6, #34]	@ movhi
 146 009a D4E7     		b	.L15
 147              	.L38:
 148 009c 0123     		movs	r3, #1
 149 009e 2046     		mov	r0, r4
 150 00a0 8DF80F30 		strb	r3, [sp, #15]
 151 00a4 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 152 00a8 96F82430 		ldrb	r3, [r6, #36]	@ zero_extendqisi2
 153 00ac 0328     		cmp	r0, #3
 154 00ae 0CBF     		ite	eq
 155 00b0 43F01003 		orreq	r3, r3, #16
 156 00b4 23F01003 		bicne	r3, r3, #16
 157 00b8 86F82430 		strb	r3, [r6, #36]
 158 00bc BEE7     		b	.L13
 159              	.L37:
 160 00be 0123     		movs	r3, #1
 161 00c0 2046     		mov	r0, r4
 162 00c2 8DF80F30 		strb	r3, [sp, #15]
 163 00c6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 164 00ca 96F82430 		ldrb	r3, [r6, #36]	@ zero_extendqisi2
 165 00ce 3C28     		cmp	r0, #60
 166 00d0 0CBF     		ite	eq
 167 00d2 23F00103 		biceq	r3, r3, #1
 168 00d6 43F00103 		orrne	r3, r3, #1
 169 00da 86F82430 		strb	r3, [r6, #36]
 170 00de A8E7     		b	.L11
 171              	.L41:
ARM GAS  /tmp/ccaRE6Kw.s 			page 4


 172              		.align	2
 173              	.L40:
 174 00e0 04000000 		.word	.LC1
 175 00e4 00000000 		.word	.LC0
 176 00e8 08000000 		.word	.LC2
 177              		.size	_ZN14RtdSensor318659ConfigureEjjR11GCodeBufferRK9StringRef, .-_ZN14RtdSensor318659ConfigureE
 178              		.section	.text._ZN14RtdSensor31865C2Ej,"ax",%progbits
 179              		.align	1
 180              		.p2align 2,,3
 181              		.global	_ZN14RtdSensor31865C2Ej
 182              		.syntax unified
 183              		.thumb
 184              		.thumb_func
 185              		.fpu softvfp
 186              		.type	_ZN14RtdSensor31865C2Ej, %function
 187              	_ZN14RtdSensor31865C2Ej:
 188              		@ args = 0, pretend = 0, frame = 0
 189              		@ frame_needed = 0, uses_anonymous_args = 0
 190 0000 0122     		movs	r2, #1
 191 0002 10B5     		push	{r4, lr}
 192 0004 0446     		mov	r4, r0
 193 0006 0A4B     		ldr	r3, .L44
 194 0008 82B0     		sub	sp, sp, #8
 195 000a 8DE80C00 		stm	sp, {r2, r3}
 196 000e A1F1C803 		sub	r3, r1, #200
 197 0012 084A     		ldr	r2, .L44+4
 198 0014 FFF7FEFF 		bl	_ZN20SpiTemperatureSensorC2EjPKcjhm
 199 0018 4FF4C871 		mov	r1, #400
 200 001c C323     		movs	r3, #195
 201 001e 2046     		mov	r0, r4
 202 0020 054A     		ldr	r2, .L44+8
 203 0022 6184     		strh	r1, [r4, #34]	@ movhi
 204 0024 2260     		str	r2, [r4]
 205 0026 84F82430 		strb	r3, [r4, #36]
 206 002a 02B0     		add	sp, sp, #8
 207              		@ sp needed
 208 002c 10BD     		pop	{r4, pc}
 209              	.L45:
 210 002e 00BF     		.align	2
 211              	.L44:
 212 0030 00093D00 		.word	4000000
 213 0034 00000000 		.word	.LC3
 214 0038 08000000 		.word	.LANCHOR0+8
 215              		.size	_ZN14RtdSensor31865C2Ej, .-_ZN14RtdSensor31865C2Ej
 216              		.global	_ZN14RtdSensor31865C1Ej
 217              		.thumb_set _ZN14RtdSensor31865C1Ej,_ZN14RtdSensor31865C2Ej
 218              		.section	.text._ZNK14RtdSensor3186510TryInitRtdEv,"ax",%progbits
 219              		.align	1
 220              		.p2align 2,,3
 221              		.global	_ZNK14RtdSensor3186510TryInitRtdEv
 222              		.syntax unified
 223              		.thumb
 224              		.thumb_func
 225              		.fpu softvfp
 226              		.type	_ZNK14RtdSensor3186510TryInitRtdEv, %function
 227              	_ZNK14RtdSensor3186510TryInitRtdEv:
 228              		@ args = 0, pretend = 0, frame = 8
ARM GAS  /tmp/ccaRE6Kw.s 			page 5


 229              		@ frame_needed = 0, uses_anonymous_args = 0
 230 0000 70B5     		push	{r4, r5, r6, lr}
 231 0002 8025     		movs	r5, #128
 232 0004 82B0     		sub	sp, sp, #8
 233 0006 90F82460 		ldrb	r6, [r0, #36]	@ zero_extendqisi2
 234 000a 01AB     		add	r3, sp, #4
 235 000c 0222     		movs	r2, #2
 236 000e 6946     		mov	r1, sp
 237 0010 0446     		mov	r4, r0
 238 0012 8DF80160 		strb	r6, [sp, #1]
 239 0016 8DF80050 		strb	r5, [sp]
 240 001a FFF7FEFF 		bl	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm
 241 001e 08B1     		cbz	r0, .L51
 242              	.L47:
 243 0020 02B0     		add	sp, sp, #8
 244              		@ sp needed
 245 0022 70BD     		pop	{r4, r5, r6, pc}
 246              	.L51:
 247 0024 01AB     		add	r3, sp, #4
 248 0026 0222     		movs	r2, #2
 249 0028 0749     		ldr	r1, .L52
 250 002a 2046     		mov	r0, r4
 251 002c FFF7FEFF 		bl	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm
 252 0030 0028     		cmp	r0, #0
 253 0032 F5D1     		bne	.L47
 254 0034 94F82430 		ldrb	r3, [r4, #36]	@ zero_extendqisi2
 255 0038 019A     		ldr	r2, [sp, #4]
 256 003a 5340     		eors	r3, r3, r2
 257 003c 13F0DD0F 		tst	r3, #221
 258 0040 18BF     		it	ne
 259 0042 0920     		movne	r0, #9
 260 0044 02B0     		add	sp, sp, #8
 261              		@ sp needed
 262 0046 70BD     		pop	{r4, r5, r6, pc}
 263              	.L53:
 264              		.align	2
 265              	.L52:
 266 0048 00000000 		.word	.LANCHOR1
 267              		.size	_ZNK14RtdSensor3186510TryInitRtdEv, .-_ZNK14RtdSensor3186510TryInitRtdEv
 268              		.section	.text._ZN14RtdSensor318654InitEv,"ax",%progbits
 269              		.align	1
 270              		.p2align 2,,3
 271              		.global	_ZN14RtdSensor318654InitEv
 272              		.syntax unified
 273              		.thumb
 274              		.thumb_func
 275              		.fpu softvfp
 276              		.type	_ZN14RtdSensor318654InitEv, %function
 277              	_ZN14RtdSensor318654InitEv:
 278              		@ args = 0, pretend = 0, frame = 0
 279              		@ frame_needed = 0, uses_anonymous_args = 0
 280 0000 70B5     		push	{r4, r5, r6, lr}
 281 0002 0646     		mov	r6, r0
 282 0004 0324     		movs	r4, #3
 283 0006 FFF7FEFF 		bl	_ZN20SpiTemperatureSensor7InitSpiEv
 284              	.L57:
 285 000a 3046     		mov	r0, r6
ARM GAS  /tmp/ccaRE6Kw.s 			page 6


 286 000c FFF7FEFF 		bl	_ZNK14RtdSensor3186510TryInitRtdEv
 287 0010 0546     		mov	r5, r0
 288 0012 C8B1     		cbz	r0, .L55
 289 0014 6420     		movs	r0, #100
 290 0016 FFF7FEFF 		bl	coreDelay
 291 001a 013C     		subs	r4, r4, #1
 292 001c F5D1     		bne	.L57
 293 001e FFF7FEFF 		bl	millis
 294 0022 0023     		movs	r3, #0
 295 0024 0C4A     		ldr	r2, .L60
 296 0026 B061     		str	r0, [r6, #24]
 297 0028 F361     		str	r3, [r6, #28]	@ float
 298 002a 86F82050 		strb	r5, [r6, #32]
 299 002e 2846     		mov	r0, r5
 300 0030 1468     		ldr	r4, [r2]	@ unaligned
 301 0032 FFF7FEFF 		bl	_Z22TemperatureErrorString16TemperatureError
 302 0036 094A     		ldr	r2, .L60+4
 303 0038 0346     		mov	r3, r0
 304 003a 40F2B511 		movw	r1, #437
 305 003e 2046     		mov	r0, r4
 306 0040 BDE87040 		pop	{r4, r5, r6, lr}
 307 0044 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 308              	.L55:
 309 0048 FFF7FEFF 		bl	millis
 310 004c 0023     		movs	r3, #0
 311 004e B061     		str	r0, [r6, #24]
 312 0050 86F82050 		strb	r5, [r6, #32]
 313 0054 F361     		str	r3, [r6, #28]	@ float
 314 0056 70BD     		pop	{r4, r5, r6, pc}
 315              	.L61:
 316              		.align	2
 317              	.L60:
 318 0058 00000000 		.word	reprap
 319 005c 00000000 		.word	.LC4
 320              		.size	_ZN14RtdSensor318654InitEv, .-_ZN14RtdSensor318654InitEv
 321              		.section	.text._ZN14RtdSensor3186514GetTemperatureERf,"ax",%progbits
 322              		.align	1
 323              		.p2align 2,,3
 324              		.global	_ZN14RtdSensor3186514GetTemperatureERf
 325              		.syntax unified
 326              		.thumb
 327              		.thumb_func
 328              		.fpu softvfp
 329              		.type	_ZN14RtdSensor3186514GetTemperatureERf, %function
 330              	_ZN14RtdSensor3186514GetTemperatureERf:
 331              		@ args = 0, pretend = 0, frame = 8
 332              		@ frame_needed = 0, uses_anonymous_args = 0
 333 0000 30B5     		push	{r4, r5, lr}
 334 0002 83B0     		sub	sp, sp, #12
 335 0004 0446     		mov	r4, r0
 336 0006 0D46     		mov	r5, r1
 337 0008 FFF7FEFF 		bl	_Z11inInterruptv
 338 000c 28B1     		cbz	r0, .L83
 339              	.L63:
 340 000e E369     		ldr	r3, [r4, #28]	@ float
 341 0010 94F82000 		ldrb	r0, [r4, #32]	@ zero_extendqisi2
 342 0014 2B60     		str	r3, [r5]	@ float
ARM GAS  /tmp/ccaRE6Kw.s 			page 7


 343              	.L77:
 344 0016 03B0     		add	sp, sp, #12
 345              		@ sp needed
 346 0018 30BD     		pop	{r4, r5, pc}
 347              	.L83:
 348 001a FFF7FEFF 		bl	millis
 349 001e A369     		ldr	r3, [r4, #24]
 350 0020 C01A     		subs	r0, r0, r3
 351 0022 6328     		cmp	r0, #99
 352 0024 F3D9     		bls	.L63
 353 0026 01AB     		add	r3, sp, #4
 354 0028 0422     		movs	r2, #4
 355 002a 2349     		ldr	r1, .L85
 356 002c 2046     		mov	r0, r4
 357 002e FFF7FEFF 		bl	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm
 358 0032 18B1     		cbz	r0, .L84
 359 0034 84F82000 		strb	r0, [r4, #32]
 360 0038 03B0     		add	sp, sp, #12
 361              		@ sp needed
 362 003a 30BD     		pop	{r4, r5, pc}
 363              	.L84:
 364 003c FFF7FEFF 		bl	millis
 365 0040 019A     		ldr	r2, [sp, #4]
 366 0042 94F82430 		ldrb	r3, [r4, #36]	@ zero_extendqisi2
 367 0046 A061     		str	r0, [r4, #24]
 368 0048 83EA1243 		eor	r3, r3, r2, lsr #16
 369 004c 13F0DD0F 		tst	r3, #221
 370 0050 01D1     		bne	.L66
 371 0052 D107     		lsls	r1, r2, #31
 372 0054 1BD5     		bpl	.L67
 373              	.L66:
 374 0056 01AB     		add	r3, sp, #4
 375 0058 0222     		movs	r2, #2
 376 005a 1849     		ldr	r1, .L85+4
 377 005c 2046     		mov	r0, r4
 378 005e FFF7FEFF 		bl	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm
 379 0062 40B9     		cbnz	r0, .L68
 380 0064 019B     		ldr	r3, [sp, #4]
 381 0066 5A07     		lsls	r2, r3, #29
 382 0068 24D4     		bmi	.L74
 383 006a 13F0180F 		tst	r3, #24
 384 006e 0CBF     		ite	eq
 385 0070 0723     		moveq	r3, #7
 386 0072 0423     		movne	r3, #4
 387 0074 00E0     		b	.L80
 388              	.L68:
 389 0076 0723     		movs	r3, #7
 390              	.L80:
 391 0078 84F82030 		strb	r3, [r4, #32]
 392 007c 1C23     		movs	r3, #28
 393              		.syntax unified
 394              	@ 88 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h" 1
 395              		L_441_delayMicroseconds:
 396 007e 013B     		subs   r3, #1
 397 0080 FDD1     		bne    L_441_delayMicroseconds
 398              	
 399              	@ 0 "" 2
ARM GAS  /tmp/ccaRE6Kw.s 			page 8


 400              		.thumb
 401              		.syntax unified
 402 0082 2046     		mov	r0, r4
 403 0084 FFF7FEFF 		bl	_ZNK14RtdSensor3186510TryInitRtdEv
 404 0088 94F82000 		ldrb	r0, [r4, #32]	@ zero_extendqisi2
 405 008c C3E7     		b	.L77
 406              	.L67:
 407 008e 6421     		movs	r1, #100
 408 0090 C2F34E02 		ubfx	r2, r2, #1, #15
 409 0094 01FB02F2 		mul	r2, r1, r2
 410 0098 618C     		ldrh	r1, [r4, #34]
 411 009a 04F11C00 		add	r0, r4, #28
 412 009e 01FB02F1 		mul	r1, r1, r2
 413 00a2 C1F3CF31 		ubfx	r1, r1, #15, #16
 414 00a6 FFF7FEFF 		bl	_ZN17TemperatureSensor19GetPT100TemperatureERft
 415 00aa E369     		ldr	r3, [r4, #28]	@ float
 416 00ac 84F82000 		strb	r0, [r4, #32]
 417 00b0 2B60     		str	r3, [r5]	@ float
 418 00b2 B0E7     		b	.L77
 419              	.L74:
 420 00b4 0D23     		movs	r3, #13
 421 00b6 DFE7     		b	.L80
 422              	.L86:
 423              		.align	2
 424              	.L85:
 425 00b8 00000000 		.word	.LANCHOR3
 426 00bc 00000000 		.word	.LANCHOR2
 427              		.size	_ZN14RtdSensor3186514GetTemperatureERf, .-_ZN14RtdSensor3186514GetTemperatureERf
 428              		.weak	_ZTV20SpiTemperatureSensor
 429              		.section	.rodata._ZTV20SpiTemperatureSensor,"aG",%progbits,_ZTV20SpiTemperatureSensor,comdat
 430              		.align	2
 431              		.type	_ZTV20SpiTemperatureSensor, %object
 432              		.size	_ZTV20SpiTemperatureSensor, 28
 433              	_ZTV20SpiTemperatureSensor:
 434 0000 00000000 		.word	0
 435 0004 00000000 		.word	0
 436 0008 00000000 		.word	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef
 437 000c 00000000 		.word	__cxa_pure_virtual
 438 0010 00000000 		.word	__cxa_pure_virtual
 439 0014 00000000 		.word	0
 440 0018 00000000 		.word	0
 441              		.global	_ZTV14RtdSensor31865
 442              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 443              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 444              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 445              	_ZL28cpu_irq_prev_interrupt_state:
 446 0000 00       		.space	1
 447              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 448              		.align	2
 449              		.type	_ZL32cpu_irq_critical_section_counter, %object
 450              		.size	_ZL32cpu_irq_critical_section_counter, 4
 451              	_ZL32cpu_irq_critical_section_counter:
 452 0000 00000000 		.space	4
 453              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 454              		.align	2
 455              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 456              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
ARM GAS  /tmp/ccaRE6Kw.s 			page 9


 457              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 458 0000 00000000 		.space	4
 459              		.section	.rodata._ZN14RtdSensor318654InitEv.str1.4,"aMS",%progbits,1
 460              		.align	2
 461              	.LC4:
 462 0000 4661696C 		.ascii	"Failed to initialise RTD: %s\012\000"
 462      65642074 
 462      6F20696E 
 462      69746961 
 462      6C697365 
 463              		.section	.rodata._ZN14RtdSensor318659ConfigureEjjR11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits
 464              		.align	2
 465              	.LC0:
 466 0000 3300     		.ascii	"3\000"
 467 0002 0000     		.space	2
 468              	.LC1:
 469 0004 322F3400 		.ascii	"2/4\000"
 470              	.LC2:
 471 0008 2C202573 		.ascii	", %s wires, reject %dHz, reference resistor %u ohms"
 471      20776972 
 471      65732C20 
 471      72656A65 
 471      63742025 
 472 003b 00       		.ascii	"\000"
 473              		.section	.rodata._ZN14RtdSensor31865C2Ej.str1.4,"aMS",%progbits,1
 474              		.align	2
 475              	.LC3:
 476 0000 50543130 		.ascii	"PT100 (MAX31865)\000"
 476      3020284D 
 476      41583331 
 476      38363529 
 476      00
 477              		.section	.rodata._ZTV14RtdSensor31865,"a",%progbits
 478              		.align	2
 479              		.set	.LANCHOR0,. + 0
 480              		.type	_ZTV14RtdSensor31865, %object
 481              		.size	_ZTV14RtdSensor31865, 28
 482              	_ZTV14RtdSensor31865:
 483 0000 00000000 		.word	0
 484 0004 00000000 		.word	0
 485 0008 00000000 		.word	_ZN14RtdSensor318659ConfigureEjjR11GCodeBufferRK9StringRef
 486 000c 00000000 		.word	_ZN14RtdSensor318654InitEv
 487 0010 00000000 		.word	_ZN14RtdSensor3186514GetTemperatureERf
 488 0014 00000000 		.word	_ZN14RtdSensor31865D1Ev
 489 0018 00000000 		.word	_ZN14RtdSensor31865D0Ev
 490              		.section	.rodata._ZZN14RtdSensor3186514GetTemperatureERfE12faultDataOut,"a",%progbits
 491              		.align	2
 492              		.set	.LANCHOR2,. + 0
 493              		.type	_ZZN14RtdSensor3186514GetTemperatureERfE12faultDataOut, %object
 494              		.size	_ZZN14RtdSensor3186514GetTemperatureERfE12faultDataOut, 2
 495              	_ZZN14RtdSensor3186514GetTemperatureERfE12faultDataOut:
 496 0000 07       		.byte	7
 497 0001 55       		.byte	85
 498              		.section	.rodata._ZZN14RtdSensor3186514GetTemperatureERfE7dataOut,"a",%progbits
 499              		.align	2
 500              		.set	.LANCHOR3,. + 0
 501              		.type	_ZZN14RtdSensor3186514GetTemperatureERfE7dataOut, %object
ARM GAS  /tmp/ccaRE6Kw.s 			page 10


 502              		.size	_ZZN14RtdSensor3186514GetTemperatureERfE7dataOut, 4
 503              	_ZZN14RtdSensor3186514GetTemperatureERfE7dataOut:
 504 0000 00       		.byte	0
 505 0001 55       		.byte	85
 506 0002 55       		.byte	85
 507 0003 55       		.byte	85
 508              		.section	.rodata._ZZNK14RtdSensor3186510TryInitRtdEvE8readData,"a",%progbits
 509              		.align	2
 510              		.set	.LANCHOR1,. + 0
 511              		.type	_ZZNK14RtdSensor3186510TryInitRtdEvE8readData, %object
 512              		.size	_ZZNK14RtdSensor3186510TryInitRtdEvE8readData, 2
 513              	_ZZNK14RtdSensor3186510TryInitRtdEvE8readData:
 514 0000 0000     		.space	2
 515              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
