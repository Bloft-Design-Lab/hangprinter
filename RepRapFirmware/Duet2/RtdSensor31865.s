ARM GAS  /tmp/ccrqGw15.s 			page 1


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
  13              		.file	"RtdSensor31865.cpp"
  14              		.section	.text._ZN14RtdSensor31865D2Ev,"axG",%progbits,_ZN14RtdSensor31865D5Ev,comdat
  15              		.align	1
  16              		.p2align 2,,3
  17              		.weak	_ZN14RtdSensor31865D2Ev
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN14RtdSensor31865D2Ev, %function
  23              	_ZN14RtdSensor31865D2Ev:
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
  37              		.size	_ZN14RtdSensor31865D2Ev, .-_ZN14RtdSensor31865D2Ev
  38              		.weak	_ZN14RtdSensor31865D1Ev
  39              		.thumb_set _ZN14RtdSensor31865D1Ev,_ZN14RtdSensor31865D2Ev
  40              		.section	.text._ZN14RtdSensor31865D0Ev,"axG",%progbits,_ZN14RtdSensor31865D5Ev,comdat
  41              		.align	1
  42              		.p2align 2,,3
  43              		.weak	_ZN14RtdSensor31865D0Ev
  44              		.syntax unified
  45              		.thumb
  46              		.thumb_func
  47              		.fpu fpv4-sp-d16
  48              		.type	_ZN14RtdSensor31865D0Ev, %function
  49              	_ZN14RtdSensor31865D0Ev:
  50              		@ args = 0, pretend = 0, frame = 0
  51              		@ frame_needed = 0, uses_anonymous_args = 0
  52 0000 10B5     		push	{r4, lr}
  53 0002 054B     		ldr	r3, .L8
  54 0004 0360     		str	r3, [r0]
  55 0006 0446     		mov	r4, r0
  56 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
  57 000c 2046     		mov	r0, r4
ARM GAS  /tmp/ccrqGw15.s 			page 2


  58 000e 2821     		movs	r1, #40
  59 0010 FFF7FEFF 		bl	_ZdlPvj
  60 0014 2046     		mov	r0, r4
  61 0016 10BD     		pop	{r4, pc}
  62              	.L9:
  63              		.align	2
  64              	.L8:
  65 0018 08000000 		.word	_ZTV20SpiTemperatureSensor+8
  66              		.size	_ZN14RtdSensor31865D0Ev, .-_ZN14RtdSensor31865D0Ev
  67              		.section	.text._ZN14RtdSensor318659ConfigureEjjR11GCodeBufferRK9StringRef,"ax",%progbits
  68              		.align	1
  69              		.p2align 2,,3
  70              		.global	_ZN14RtdSensor318659ConfigureEjjR11GCodeBufferRK9StringRef
  71              		.syntax unified
  72              		.thumb
  73              		.thumb_func
  74              		.fpu fpv4-sp-d16
  75              		.type	_ZN14RtdSensor318659ConfigureEjjR11GCodeBufferRK9StringRef, %function
  76              	_ZN14RtdSensor318659ConfigureEjjR11GCodeBufferRK9StringRef:
  77              		@ args = 4, pretend = 0, frame = 8
  78              		@ frame_needed = 0, uses_anonymous_args = 0
  79 0000 70B5     		push	{r4, r5, r6, lr}
  80 0002 40F23115 		movw	r5, #305
  81 0006 A942     		cmp	r1, r5
  82 0008 84B0     		sub	sp, sp, #16
  83 000a 02D0     		beq	.L34
  84              	.L11:
  85 000c 0120     		movs	r0, #1
  86 000e 04B0     		add	sp, sp, #16
  87              		@ sp needed
  88 0010 70BD     		pop	{r4, r5, r6, pc}
  89              	.L34:
  90 0012 1546     		mov	r5, r2
  91 0014 04AA     		add	r2, sp, #16
  92 0016 1C46     		mov	r4, r3
  93 0018 0023     		movs	r3, #0
  94 001a 2146     		mov	r1, r4
  95 001c 02F8013D 		strb	r3, [r2, #-1]!
  96 0020 0646     		mov	r6, r0
  97 0022 FFF7FEFF 		bl	_ZN17TemperatureSensor22TryConfigureHeaterNameER11GCodeBufferRb
  98 0026 4621     		movs	r1, #70
  99 0028 2046     		mov	r0, r4
 100 002a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 101 002e 0028     		cmp	r0, #0
 102 0030 45D1     		bne	.L35
 103              	.L12:
 104 0032 5721     		movs	r1, #87
 105 0034 2046     		mov	r0, r4
 106 0036 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 107 003a 78BB     		cbnz	r0, .L36
 108              	.L14:
 109 003c 5221     		movs	r1, #82
 110 003e 2046     		mov	r0, r4
 111 0040 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 112 0044 10BB     		cbnz	r0, .L37
 113              	.L16:
 114 0046 9DF80F30 		ldrb	r3, [sp, #15]	@ zero_extendqisi2
ARM GAS  /tmp/ccrqGw15.s 			page 3


 115 004a 002B     		cmp	r3, #0
 116 004c DED1     		bne	.L11
 117 004e 2046     		mov	r0, r4
 118 0050 5821     		movs	r1, #88
 119 0052 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 120 0056 0028     		cmp	r0, #0
 121 0058 D8D1     		bne	.L11
 122 005a 2946     		mov	r1, r5
 123 005c 089A     		ldr	r2, [sp, #32]
 124 005e 3046     		mov	r0, r6
 125 0060 FFF7FEFF 		bl	_ZNK17TemperatureSensor22CopyBasicHeaterDetailsEjRK9StringRef
 126 0064 96F82430 		ldrb	r3, [r6, #36]	@ zero_extendqisi2
 127 0068 1D49     		ldr	r1, .L38
 128 006a 708C     		ldrh	r0, [r6, #34]
 129 006c 1D4A     		ldr	r2, .L38+4
 130 006e 0090     		str	r0, [sp]
 131 0070 13F0100F 		tst	r3, #16
 132 0074 08BF     		it	eq
 133 0076 0A46     		moveq	r2, r1
 134 0078 13F0010F 		tst	r3, #1
 135 007c 14BF     		ite	ne
 136 007e 3223     		movne	r3, #50
 137 0080 3C23     		moveq	r3, #60
 138 0082 1949     		ldr	r1, .L38+8
 139 0084 0898     		ldr	r0, [sp, #32]
 140 0086 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 141 008a BFE7     		b	.L11
 142              	.L37:
 143 008c 0123     		movs	r3, #1
 144 008e 2046     		mov	r0, r4
 145 0090 8DF80F30 		strb	r3, [sp, #15]
 146 0094 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 147 0098 7084     		strh	r0, [r6, #34]	@ movhi
 148 009a D4E7     		b	.L16
 149              	.L36:
 150 009c 0123     		movs	r3, #1
 151 009e 2046     		mov	r0, r4
 152 00a0 8DF80F30 		strb	r3, [sp, #15]
 153 00a4 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 154 00a8 96F82430 		ldrb	r3, [r6, #36]	@ zero_extendqisi2
 155 00ac 0328     		cmp	r0, #3
 156 00ae 0CBF     		ite	eq
 157 00b0 43F01003 		orreq	r3, r3, #16
 158 00b4 23F01003 		bicne	r3, r3, #16
 159 00b8 86F82430 		strb	r3, [r6, #36]
 160 00bc BEE7     		b	.L14
 161              	.L35:
 162 00be 0123     		movs	r3, #1
 163 00c0 2046     		mov	r0, r4
 164 00c2 8DF80F30 		strb	r3, [sp, #15]
 165 00c6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 166 00ca 96F82430 		ldrb	r3, [r6, #36]	@ zero_extendqisi2
 167 00ce 3C28     		cmp	r0, #60
 168 00d0 0CBF     		ite	eq
 169 00d2 23F00103 		biceq	r3, r3, #1
 170 00d6 43F00103 		orrne	r3, r3, #1
 171 00da 86F82430 		strb	r3, [r6, #36]
ARM GAS  /tmp/ccrqGw15.s 			page 4


 172 00de A8E7     		b	.L12
 173              	.L39:
 174              		.align	2
 175              	.L38:
 176 00e0 04000000 		.word	.LC1
 177 00e4 00000000 		.word	.LC0
 178 00e8 08000000 		.word	.LC2
 179              		.size	_ZN14RtdSensor318659ConfigureEjjR11GCodeBufferRK9StringRef, .-_ZN14RtdSensor318659ConfigureE
 180              		.section	.text._ZN14RtdSensor31865C2Ej,"ax",%progbits
 181              		.align	1
 182              		.p2align 2,,3
 183              		.global	_ZN14RtdSensor31865C2Ej
 184              		.syntax unified
 185              		.thumb
 186              		.thumb_func
 187              		.fpu fpv4-sp-d16
 188              		.type	_ZN14RtdSensor31865C2Ej, %function
 189              	_ZN14RtdSensor31865C2Ej:
 190              		@ args = 0, pretend = 0, frame = 0
 191              		@ frame_needed = 0, uses_anonymous_args = 0
 192 0000 10B5     		push	{r4, lr}
 193 0002 0B4A     		ldr	r2, .L42
 194 0004 82B0     		sub	sp, sp, #8
 195 0006 0123     		movs	r3, #1
 196 0008 CDE90032 		strd	r3, r2, [sp]
 197 000c A1F1C803 		sub	r3, r1, #200
 198 0010 084A     		ldr	r2, .L42+4
 199 0012 0446     		mov	r4, r0
 200 0014 FFF7FEFF 		bl	_ZN20SpiTemperatureSensorC2EjPKcjhm
 201 0018 074B     		ldr	r3, .L42+8
 202 001a 2360     		str	r3, [r4]
 203 001c 4FF4C872 		mov	r2, #400
 204 0020 C323     		movs	r3, #195
 205 0022 2046     		mov	r0, r4
 206 0024 6284     		strh	r2, [r4, #34]	@ movhi
 207 0026 84F82430 		strb	r3, [r4, #36]
 208 002a 02B0     		add	sp, sp, #8
 209              		@ sp needed
 210 002c 10BD     		pop	{r4, pc}
 211              	.L43:
 212 002e 00BF     		.align	2
 213              	.L42:
 214 0030 00093D00 		.word	4000000
 215 0034 00000000 		.word	.LC3
 216 0038 08000000 		.word	.LANCHOR0+8
 217              		.size	_ZN14RtdSensor31865C2Ej, .-_ZN14RtdSensor31865C2Ej
 218              		.global	_ZN14RtdSensor31865C1Ej
 219              		.thumb_set _ZN14RtdSensor31865C1Ej,_ZN14RtdSensor31865C2Ej
 220              		.section	.text._ZNK14RtdSensor3186510TryInitRtdEv,"ax",%progbits
 221              		.align	1
 222              		.p2align 2,,3
 223              		.global	_ZNK14RtdSensor3186510TryInitRtdEv
 224              		.syntax unified
 225              		.thumb
 226              		.thumb_func
 227              		.fpu fpv4-sp-d16
 228              		.type	_ZNK14RtdSensor3186510TryInitRtdEv, %function
ARM GAS  /tmp/ccrqGw15.s 			page 5


 229              	_ZNK14RtdSensor3186510TryInitRtdEv:
 230              		@ args = 0, pretend = 0, frame = 8
 231              		@ frame_needed = 0, uses_anonymous_args = 0
 232 0000 30B5     		push	{r4, r5, lr}
 233 0002 83B0     		sub	sp, sp, #12
 234 0004 90F82430 		ldrb	r3, [r0, #36]	@ zero_extendqisi2
 235 0008 8DF80130 		strb	r3, [sp, #1]
 236 000c 8025     		movs	r5, #128
 237 000e 01AB     		add	r3, sp, #4
 238 0010 0222     		movs	r2, #2
 239 0012 6946     		mov	r1, sp
 240 0014 0446     		mov	r4, r0
 241 0016 8DF80050 		strb	r5, [sp]
 242 001a FFF7FEFF 		bl	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm
 243 001e 08B1     		cbz	r0, .L49
 244              	.L45:
 245 0020 03B0     		add	sp, sp, #12
 246              		@ sp needed
 247 0022 30BD     		pop	{r4, r5, pc}
 248              	.L49:
 249 0024 01AB     		add	r3, sp, #4
 250 0026 0222     		movs	r2, #2
 251 0028 0749     		ldr	r1, .L50
 252 002a 2046     		mov	r0, r4
 253 002c FFF7FEFF 		bl	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm
 254 0030 0028     		cmp	r0, #0
 255 0032 F5D1     		bne	.L45
 256 0034 94F82430 		ldrb	r3, [r4, #36]	@ zero_extendqisi2
 257 0038 019A     		ldr	r2, [sp, #4]
 258 003a 5340     		eors	r3, r3, r2
 259 003c 13F0DD0F 		tst	r3, #221
 260 0040 18BF     		it	ne
 261 0042 0920     		movne	r0, #9
 262 0044 03B0     		add	sp, sp, #12
 263              		@ sp needed
 264 0046 30BD     		pop	{r4, r5, pc}
 265              	.L51:
 266              		.align	2
 267              	.L50:
 268 0048 00000000 		.word	.LANCHOR1
 269              		.size	_ZNK14RtdSensor3186510TryInitRtdEv, .-_ZNK14RtdSensor3186510TryInitRtdEv
 270              		.section	.text._ZN14RtdSensor318654InitEv,"ax",%progbits
 271              		.align	1
 272              		.p2align 2,,3
 273              		.global	_ZN14RtdSensor318654InitEv
 274              		.syntax unified
 275              		.thumb
 276              		.thumb_func
 277              		.fpu fpv4-sp-d16
 278              		.type	_ZN14RtdSensor318654InitEv, %function
 279              	_ZN14RtdSensor318654InitEv:
 280              		@ args = 0, pretend = 0, frame = 0
 281              		@ frame_needed = 0, uses_anonymous_args = 0
 282 0000 70B5     		push	{r4, r5, r6, lr}
 283 0002 0646     		mov	r6, r0
 284 0004 FFF7FEFF 		bl	_ZN20SpiTemperatureSensor7InitSpiEv
 285 0008 0324     		movs	r4, #3
ARM GAS  /tmp/ccrqGw15.s 			page 6


 286              	.L55:
 287 000a 3046     		mov	r0, r6
 288 000c FFF7FEFF 		bl	_ZNK14RtdSensor3186510TryInitRtdEv
 289 0010 0546     		mov	r5, r0
 290 0012 C8B1     		cbz	r0, .L53
 291 0014 6420     		movs	r0, #100
 292 0016 FFF7FEFF 		bl	coreDelay
 293 001a 013C     		subs	r4, r4, #1
 294 001c F5D1     		bne	.L55
 295 001e FFF7FEFF 		bl	millis
 296 0022 0D4A     		ldr	r2, .L58
 297 0024 B061     		str	r0, [r6, #24]
 298 0026 0023     		movs	r3, #0
 299 0028 F361     		str	r3, [r6, #28]	@ float
 300 002a 86F82050 		strb	r5, [r6, #32]
 301 002e 2846     		mov	r0, r5
 302 0030 1468     		ldr	r4, [r2]	@ unaligned
 303 0032 FFF7FEFF 		bl	_Z22TemperatureErrorString16TemperatureError
 304 0036 094A     		ldr	r2, .L58+4
 305 0038 0346     		mov	r3, r0
 306 003a 40F2B511 		movw	r1, #437
 307 003e 2046     		mov	r0, r4
 308 0040 BDE87040 		pop	{r4, r5, r6, lr}
 309 0044 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 310              	.L53:
 311 0048 FFF7FEFF 		bl	millis
 312 004c 0023     		movs	r3, #0
 313 004e B061     		str	r0, [r6, #24]
 314 0050 86F82050 		strb	r5, [r6, #32]
 315 0054 F361     		str	r3, [r6, #28]	@ float
 316 0056 70BD     		pop	{r4, r5, r6, pc}
 317              	.L59:
 318              		.align	2
 319              	.L58:
 320 0058 00000000 		.word	reprap
 321 005c 00000000 		.word	.LC4
 322              		.size	_ZN14RtdSensor318654InitEv, .-_ZN14RtdSensor318654InitEv
 323              		.section	.text._ZN14RtdSensor3186514GetTemperatureERf,"ax",%progbits
 324              		.align	1
 325              		.p2align 2,,3
 326              		.global	_ZN14RtdSensor3186514GetTemperatureERf
 327              		.syntax unified
 328              		.thumb
 329              		.thumb_func
 330              		.fpu fpv4-sp-d16
 331              		.type	_ZN14RtdSensor3186514GetTemperatureERf, %function
 332              	_ZN14RtdSensor3186514GetTemperatureERf:
 333              		@ args = 0, pretend = 0, frame = 8
 334              		@ frame_needed = 0, uses_anonymous_args = 0
 335 0000 30B5     		push	{r4, r5, lr}
 336 0002 83B0     		sub	sp, sp, #12
 337 0004 0446     		mov	r4, r0
 338 0006 0D46     		mov	r5, r1
 339 0008 FFF7FEFF 		bl	_Z11inInterruptv
 340 000c 28B1     		cbz	r0, .L61
 341              	.L63:
 342 000e E369     		ldr	r3, [r4, #28]	@ float
ARM GAS  /tmp/ccrqGw15.s 			page 7


 343 0010 94F82000 		ldrb	r0, [r4, #32]	@ zero_extendqisi2
 344 0014 2B60     		str	r3, [r5]	@ float
 345              	.L62:
 346 0016 03B0     		add	sp, sp, #12
 347              		@ sp needed
 348 0018 30BD     		pop	{r4, r5, pc}
 349              	.L61:
 350 001a FFF7FEFF 		bl	millis
 351 001e A369     		ldr	r3, [r4, #24]
 352 0020 C01A     		subs	r0, r0, r3
 353 0022 6328     		cmp	r0, #99
 354 0024 F3D9     		bls	.L63
 355 0026 01AB     		add	r3, sp, #4
 356 0028 0422     		movs	r2, #4
 357 002a 2349     		ldr	r1, .L75
 358 002c 2046     		mov	r0, r4
 359 002e FFF7FEFF 		bl	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm
 360 0032 10B1     		cbz	r0, .L64
 361 0034 84F82000 		strb	r0, [r4, #32]
 362 0038 EDE7     		b	.L62
 363              	.L64:
 364 003a FFF7FEFF 		bl	millis
 365 003e 019A     		ldr	r2, [sp, #4]
 366 0040 94F82430 		ldrb	r3, [r4, #36]	@ zero_extendqisi2
 367 0044 A061     		str	r0, [r4, #24]
 368 0046 83EA1243 		eor	r3, r3, r2, lsr #16
 369 004a 13F0DD0F 		tst	r3, #221
 370 004e 01D1     		bne	.L66
 371 0050 D107     		lsls	r1, r2, #31
 372 0052 1BD5     		bpl	.L67
 373              	.L66:
 374 0054 01AB     		add	r3, sp, #4
 375 0056 0222     		movs	r2, #2
 376 0058 1849     		ldr	r1, .L75+4
 377 005a 2046     		mov	r0, r4
 378 005c FFF7FEFF 		bl	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm
 379 0060 90B9     		cbnz	r0, .L68
 380 0062 019B     		ldr	r3, [sp, #4]
 381 0064 5A07     		lsls	r2, r3, #29
 382 0066 24D4     		bmi	.L71
 383 0068 13F0180F 		tst	r3, #24
 384 006c 0CBF     		ite	eq
 385 006e 0723     		moveq	r3, #7
 386 0070 0423     		movne	r3, #4
 387              	.L74:
 388 0072 84F82030 		strb	r3, [r4, #32]
 389 0076 2823     		movs	r3, #40
 390              		.syntax unified
 391              	@ 88 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h" 1
 392              		L_434_delayMicroseconds:
 393 0078 013B     		subs   r3, #1
 394 007a FDD1     		bne    L_434_delayMicroseconds
 395              	
 396              	@ 0 "" 2
 397              		.thumb
 398              		.syntax unified
 399 007c 2046     		mov	r0, r4
ARM GAS  /tmp/ccrqGw15.s 			page 8


 400 007e FFF7FEFF 		bl	_ZNK14RtdSensor3186510TryInitRtdEv
 401 0082 94F82000 		ldrb	r0, [r4, #32]	@ zero_extendqisi2
 402 0086 C6E7     		b	.L62
 403              	.L68:
 404 0088 0723     		movs	r3, #7
 405 008a F2E7     		b	.L74
 406              	.L67:
 407 008c 6423     		movs	r3, #100
 408 008e 618C     		ldrh	r1, [r4, #34]
 409 0090 C2F34E02 		ubfx	r2, r2, #1, #15
 410 0094 03FB02F2 		mul	r2, r3, r2
 411 0098 01FB02F1 		mul	r1, r1, r2
 412 009c C1F3CF31 		ubfx	r1, r1, #15, #16
 413 00a0 04F11C00 		add	r0, r4, #28
 414 00a4 FFF7FEFF 		bl	_ZN17TemperatureSensor19GetPT100TemperatureERft
 415 00a8 E369     		ldr	r3, [r4, #28]	@ float
 416 00aa 84F82000 		strb	r0, [r4, #32]
 417 00ae 2B60     		str	r3, [r5]	@ float
 418 00b0 B1E7     		b	.L62
 419              	.L71:
 420 00b2 0D23     		movs	r3, #13
 421 00b4 DDE7     		b	.L74
 422              	.L76:
 423 00b6 00BF     		.align	2
 424              	.L75:
 425 00b8 00000000 		.word	.LANCHOR2
 426 00bc 00000000 		.word	.LANCHOR3
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
ARM GAS  /tmp/ccrqGw15.s 			page 9


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
 492              		.set	.LANCHOR3,. + 0
 493              		.type	_ZZN14RtdSensor3186514GetTemperatureERfE12faultDataOut, %object
 494              		.size	_ZZN14RtdSensor3186514GetTemperatureERfE12faultDataOut, 2
 495              	_ZZN14RtdSensor3186514GetTemperatureERfE12faultDataOut:
 496 0000 07       		.byte	7
 497 0001 55       		.byte	85
 498              		.section	.rodata._ZZN14RtdSensor3186514GetTemperatureERfE7dataOut,"a",%progbits
 499              		.align	2
 500              		.set	.LANCHOR2,. + 0
 501              		.type	_ZZN14RtdSensor3186514GetTemperatureERfE7dataOut, %object
ARM GAS  /tmp/ccrqGw15.s 			page 10


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
 515              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
