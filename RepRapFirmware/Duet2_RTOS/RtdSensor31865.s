ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccApWi0e.s 			page 1


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
  14              		.text
  15              		.section	.text._ZN14RtdSensor31865D2Ev,"axG",%progbits,_ZN14RtdSensor31865D5Ev,comdat
  16              		.align	1
  17              		.p2align 2,,3
  18              		.weak	_ZN14RtdSensor31865D2Ev
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN14RtdSensor31865D2Ev, %function
  24              	_ZN14RtdSensor31865D2Ev:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 10B5     		push	{r4, lr}
  28 0002 034B     		ldr	r3, .L4
  29 0004 0360     		str	r3, [r0]
  30 0006 0446     		mov	r4, r0
  31 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
  32 000c 2046     		mov	r0, r4
  33 000e 10BD     		pop	{r4, pc}
  34              	.L5:
  35              		.align	2
  36              	.L4:
  37 0010 08000000 		.word	_ZTV20SpiTemperatureSensor+8
  38              		.size	_ZN14RtdSensor31865D2Ev, .-_ZN14RtdSensor31865D2Ev
  39              		.weak	_ZN14RtdSensor31865D1Ev
  40              		.thumb_set _ZN14RtdSensor31865D1Ev,_ZN14RtdSensor31865D2Ev
  41              		.section	.text._ZN14RtdSensor31865D0Ev,"axG",%progbits,_ZN14RtdSensor31865D5Ev,comdat
  42              		.align	1
  43              		.p2align 2,,3
  44              		.weak	_ZN14RtdSensor31865D0Ev
  45              		.syntax unified
  46              		.thumb
  47              		.thumb_func
  48              		.fpu fpv4-sp-d16
  49              		.type	_ZN14RtdSensor31865D0Ev, %function
  50              	_ZN14RtdSensor31865D0Ev:
  51              		@ args = 0, pretend = 0, frame = 0
  52              		@ frame_needed = 0, uses_anonymous_args = 0
  53 0000 10B5     		push	{r4, lr}
  54 0002 054B     		ldr	r3, .L8
  55 0004 0360     		str	r3, [r0]
  56 0006 0446     		mov	r4, r0
  57 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccApWi0e.s 			page 2


  58 000c 2046     		mov	r0, r4
  59 000e 2821     		movs	r1, #40
  60 0010 FFF7FEFF 		bl	_ZdlPvj
  61 0014 2046     		mov	r0, r4
  62 0016 10BD     		pop	{r4, pc}
  63              	.L9:
  64              		.align	2
  65              	.L8:
  66 0018 08000000 		.word	_ZTV20SpiTemperatureSensor+8
  67              		.size	_ZN14RtdSensor31865D0Ev, .-_ZN14RtdSensor31865D0Ev
  68              		.section	.text._ZN14RtdSensor318659ConfigureEjjR11GCodeBufferRK9StringRef,"ax",%progbits
  69              		.align	1
  70              		.p2align 2,,3
  71              		.global	_ZN14RtdSensor318659ConfigureEjjR11GCodeBufferRK9StringRef
  72              		.syntax unified
  73              		.thumb
  74              		.thumb_func
  75              		.fpu fpv4-sp-d16
  76              		.type	_ZN14RtdSensor318659ConfigureEjjR11GCodeBufferRK9StringRef, %function
  77              	_ZN14RtdSensor318659ConfigureEjjR11GCodeBufferRK9StringRef:
  78              		@ args = 4, pretend = 0, frame = 8
  79              		@ frame_needed = 0, uses_anonymous_args = 0
  80 0000 70B5     		push	{r4, r5, r6, lr}
  81 0002 40F23115 		movw	r5, #305
  82 0006 A942     		cmp	r1, r5
  83 0008 84B0     		sub	sp, sp, #16
  84 000a 02D0     		beq	.L34
  85              	.L11:
  86 000c 0120     		movs	r0, #1
  87 000e 04B0     		add	sp, sp, #16
  88              		@ sp needed
  89 0010 70BD     		pop	{r4, r5, r6, pc}
  90              	.L34:
  91 0012 1546     		mov	r5, r2
  92 0014 04AA     		add	r2, sp, #16
  93 0016 1C46     		mov	r4, r3
  94 0018 0023     		movs	r3, #0
  95 001a 2146     		mov	r1, r4
  96 001c 02F8013D 		strb	r3, [r2, #-1]!
  97 0020 0646     		mov	r6, r0
  98 0022 FFF7FEFF 		bl	_ZN17TemperatureSensor22TryConfigureHeaterNameER11GCodeBufferRb
  99 0026 4621     		movs	r1, #70
 100 0028 2046     		mov	r0, r4
 101 002a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 102 002e 0028     		cmp	r0, #0
 103 0030 45D1     		bne	.L35
 104              	.L12:
 105 0032 5721     		movs	r1, #87
 106 0034 2046     		mov	r0, r4
 107 0036 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 108 003a 78BB     		cbnz	r0, .L36
 109              	.L14:
 110 003c 5221     		movs	r1, #82
 111 003e 2046     		mov	r0, r4
 112 0040 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 113 0044 10BB     		cbnz	r0, .L37
 114              	.L16:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccApWi0e.s 			page 3


 115 0046 9DF80F30 		ldrb	r3, [sp, #15]	@ zero_extendqisi2
 116 004a 002B     		cmp	r3, #0
 117 004c DED1     		bne	.L11
 118 004e 2046     		mov	r0, r4
 119 0050 5821     		movs	r1, #88
 120 0052 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 121 0056 0028     		cmp	r0, #0
 122 0058 D8D1     		bne	.L11
 123 005a 2946     		mov	r1, r5
 124 005c 089A     		ldr	r2, [sp, #32]
 125 005e 3046     		mov	r0, r6
 126 0060 FFF7FEFF 		bl	_ZNK17TemperatureSensor22CopyBasicHeaterDetailsEjRK9StringRef
 127 0064 96F82430 		ldrb	r3, [r6, #36]	@ zero_extendqisi2
 128 0068 1D49     		ldr	r1, .L38
 129 006a 708C     		ldrh	r0, [r6, #34]
 130 006c 1D4A     		ldr	r2, .L38+4
 131 006e 0090     		str	r0, [sp]
 132 0070 13F0100F 		tst	r3, #16
 133 0074 08BF     		it	eq
 134 0076 0A46     		moveq	r2, r1
 135 0078 13F0010F 		tst	r3, #1
 136 007c 14BF     		ite	ne
 137 007e 3223     		movne	r3, #50
 138 0080 3C23     		moveq	r3, #60
 139 0082 1949     		ldr	r1, .L38+8
 140 0084 0898     		ldr	r0, [sp, #32]
 141 0086 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 142 008a BFE7     		b	.L11
 143              	.L37:
 144 008c 0123     		movs	r3, #1
 145 008e 2046     		mov	r0, r4
 146 0090 8DF80F30 		strb	r3, [sp, #15]
 147 0094 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 148 0098 7084     		strh	r0, [r6, #34]	@ movhi
 149 009a D4E7     		b	.L16
 150              	.L36:
 151 009c 0123     		movs	r3, #1
 152 009e 2046     		mov	r0, r4
 153 00a0 8DF80F30 		strb	r3, [sp, #15]
 154 00a4 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 155 00a8 96F82430 		ldrb	r3, [r6, #36]	@ zero_extendqisi2
 156 00ac 0328     		cmp	r0, #3
 157 00ae 0CBF     		ite	eq
 158 00b0 43F01003 		orreq	r3, r3, #16
 159 00b4 23F01003 		bicne	r3, r3, #16
 160 00b8 86F82430 		strb	r3, [r6, #36]
 161 00bc BEE7     		b	.L14
 162              	.L35:
 163 00be 0123     		movs	r3, #1
 164 00c0 2046     		mov	r0, r4
 165 00c2 8DF80F30 		strb	r3, [sp, #15]
 166 00c6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 167 00ca 96F82430 		ldrb	r3, [r6, #36]	@ zero_extendqisi2
 168 00ce 3C28     		cmp	r0, #60
 169 00d0 0CBF     		ite	eq
 170 00d2 23F00103 		biceq	r3, r3, #1
 171 00d6 43F00103 		orrne	r3, r3, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccApWi0e.s 			page 4


 172 00da 86F82430 		strb	r3, [r6, #36]
 173 00de A8E7     		b	.L12
 174              	.L39:
 175              		.align	2
 176              	.L38:
 177 00e0 04000000 		.word	.LC1
 178 00e4 00000000 		.word	.LC0
 179 00e8 08000000 		.word	.LC2
 180              		.size	_ZN14RtdSensor318659ConfigureEjjR11GCodeBufferRK9StringRef, .-_ZN14RtdSensor318659ConfigureE
 181              		.section	.text._ZN14RtdSensor31865C2Ej,"ax",%progbits
 182              		.align	1
 183              		.p2align 2,,3
 184              		.global	_ZN14RtdSensor31865C2Ej
 185              		.syntax unified
 186              		.thumb
 187              		.thumb_func
 188              		.fpu fpv4-sp-d16
 189              		.type	_ZN14RtdSensor31865C2Ej, %function
 190              	_ZN14RtdSensor31865C2Ej:
 191              		@ args = 0, pretend = 0, frame = 0
 192              		@ frame_needed = 0, uses_anonymous_args = 0
 193 0000 10B5     		push	{r4, lr}
 194 0002 0B4A     		ldr	r2, .L42
 195 0004 82B0     		sub	sp, sp, #8
 196 0006 0123     		movs	r3, #1
 197 0008 CDE90032 		strd	r3, r2, [sp]
 198 000c A1F1C803 		sub	r3, r1, #200
 199 0010 084A     		ldr	r2, .L42+4
 200 0012 0446     		mov	r4, r0
 201 0014 FFF7FEFF 		bl	_ZN20SpiTemperatureSensorC2EjPKcjhm
 202 0018 074B     		ldr	r3, .L42+8
 203 001a 2360     		str	r3, [r4]
 204 001c 4FF4C872 		mov	r2, #400
 205 0020 C323     		movs	r3, #195
 206 0022 2046     		mov	r0, r4
 207 0024 6284     		strh	r2, [r4, #34]	@ movhi
 208 0026 84F82430 		strb	r3, [r4, #36]
 209 002a 02B0     		add	sp, sp, #8
 210              		@ sp needed
 211 002c 10BD     		pop	{r4, pc}
 212              	.L43:
 213 002e 00BF     		.align	2
 214              	.L42:
 215 0030 00093D00 		.word	4000000
 216 0034 00000000 		.word	.LC3
 217 0038 08000000 		.word	.LANCHOR0+8
 218              		.size	_ZN14RtdSensor31865C2Ej, .-_ZN14RtdSensor31865C2Ej
 219              		.global	_ZN14RtdSensor31865C1Ej
 220              		.thumb_set _ZN14RtdSensor31865C1Ej,_ZN14RtdSensor31865C2Ej
 221              		.section	.text._ZNK14RtdSensor3186510TryInitRtdEv,"ax",%progbits
 222              		.align	1
 223              		.p2align 2,,3
 224              		.global	_ZNK14RtdSensor3186510TryInitRtdEv
 225              		.syntax unified
 226              		.thumb
 227              		.thumb_func
 228              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccApWi0e.s 			page 5


 229              		.type	_ZNK14RtdSensor3186510TryInitRtdEv, %function
 230              	_ZNK14RtdSensor3186510TryInitRtdEv:
 231              		@ args = 0, pretend = 0, frame = 8
 232              		@ frame_needed = 0, uses_anonymous_args = 0
 233 0000 30B5     		push	{r4, r5, lr}
 234 0002 83B0     		sub	sp, sp, #12
 235 0004 90F82430 		ldrb	r3, [r0, #36]	@ zero_extendqisi2
 236 0008 8DF80130 		strb	r3, [sp, #1]
 237 000c 8025     		movs	r5, #128
 238 000e 01AB     		add	r3, sp, #4
 239 0010 0222     		movs	r2, #2
 240 0012 6946     		mov	r1, sp
 241 0014 0446     		mov	r4, r0
 242 0016 8DF80050 		strb	r5, [sp]
 243 001a FFF7FEFF 		bl	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm
 244 001e 08B1     		cbz	r0, .L49
 245              	.L45:
 246 0020 03B0     		add	sp, sp, #12
 247              		@ sp needed
 248 0022 30BD     		pop	{r4, r5, pc}
 249              	.L49:
 250 0024 01AB     		add	r3, sp, #4
 251 0026 0222     		movs	r2, #2
 252 0028 0749     		ldr	r1, .L50
 253 002a 2046     		mov	r0, r4
 254 002c FFF7FEFF 		bl	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm
 255 0030 0028     		cmp	r0, #0
 256 0032 F5D1     		bne	.L45
 257 0034 94F82430 		ldrb	r3, [r4, #36]	@ zero_extendqisi2
 258 0038 019A     		ldr	r2, [sp, #4]
 259 003a 5340     		eors	r3, r3, r2
 260 003c 13F0DD0F 		tst	r3, #221
 261 0040 18BF     		it	ne
 262 0042 0920     		movne	r0, #9
 263 0044 03B0     		add	sp, sp, #12
 264              		@ sp needed
 265 0046 30BD     		pop	{r4, r5, pc}
 266              	.L51:
 267              		.align	2
 268              	.L50:
 269 0048 00000000 		.word	.LANCHOR1
 270              		.size	_ZNK14RtdSensor3186510TryInitRtdEv, .-_ZNK14RtdSensor3186510TryInitRtdEv
 271              		.section	.text._ZN14RtdSensor318654InitEv,"ax",%progbits
 272              		.align	1
 273              		.p2align 2,,3
 274              		.global	_ZN14RtdSensor318654InitEv
 275              		.syntax unified
 276              		.thumb
 277              		.thumb_func
 278              		.fpu fpv4-sp-d16
 279              		.type	_ZN14RtdSensor318654InitEv, %function
 280              	_ZN14RtdSensor318654InitEv:
 281              		@ args = 0, pretend = 0, frame = 0
 282              		@ frame_needed = 0, uses_anonymous_args = 0
 283 0000 70B5     		push	{r4, r5, r6, lr}
 284 0002 0646     		mov	r6, r0
 285 0004 FFF7FEFF 		bl	_ZN20SpiTemperatureSensor7InitSpiEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccApWi0e.s 			page 6


 286 0008 0324     		movs	r4, #3
 287              	.L55:
 288 000a 3046     		mov	r0, r6
 289 000c FFF7FEFF 		bl	_ZNK14RtdSensor3186510TryInitRtdEv
 290 0010 0546     		mov	r5, r0
 291 0012 C8B1     		cbz	r0, .L53
 292 0014 6420     		movs	r0, #100
 293 0016 FFF7FEFF 		bl	_Z5delaym
 294 001a 013C     		subs	r4, r4, #1
 295 001c F5D1     		bne	.L55
 296 001e FFF7FEFF 		bl	millis
 297 0022 0D4A     		ldr	r2, .L58
 298 0024 B061     		str	r0, [r6, #24]
 299 0026 0023     		movs	r3, #0
 300 0028 F361     		str	r3, [r6, #28]	@ float
 301 002a 86F82050 		strb	r5, [r6, #32]
 302 002e 2846     		mov	r0, r5
 303 0030 5468     		ldr	r4, [r2, #4]	@ unaligned
 304 0032 FFF7FEFF 		bl	_Z22TemperatureErrorString16TemperatureError
 305 0036 094A     		ldr	r2, .L58+4
 306 0038 0346     		mov	r3, r0
 307 003a 40F2B511 		movw	r1, #437
 308 003e 2046     		mov	r0, r4
 309 0040 BDE87040 		pop	{r4, r5, r6, lr}
 310 0044 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 311              	.L53:
 312 0048 FFF7FEFF 		bl	millis
 313 004c 0023     		movs	r3, #0
 314 004e B061     		str	r0, [r6, #24]
 315 0050 86F82050 		strb	r5, [r6, #32]
 316 0054 F361     		str	r3, [r6, #28]	@ float
 317 0056 70BD     		pop	{r4, r5, r6, pc}
 318              	.L59:
 319              		.align	2
 320              	.L58:
 321 0058 00000000 		.word	reprap
 322 005c 00000000 		.word	.LC4
 323              		.size	_ZN14RtdSensor318654InitEv, .-_ZN14RtdSensor318654InitEv
 324              		.section	.text._ZN14RtdSensor3186514GetTemperatureERf,"ax",%progbits
 325              		.align	1
 326              		.p2align 2,,3
 327              		.global	_ZN14RtdSensor3186514GetTemperatureERf
 328              		.syntax unified
 329              		.thumb
 330              		.thumb_func
 331              		.fpu fpv4-sp-d16
 332              		.type	_ZN14RtdSensor3186514GetTemperatureERf, %function
 333              	_ZN14RtdSensor3186514GetTemperatureERf:
 334              		@ args = 0, pretend = 0, frame = 8
 335              		@ frame_needed = 0, uses_anonymous_args = 0
 336 0000 30B5     		push	{r4, r5, lr}
 337 0002 83B0     		sub	sp, sp, #12
 338 0004 0446     		mov	r4, r0
 339 0006 0D46     		mov	r5, r1
 340 0008 FFF7FEFF 		bl	_Z11inInterruptv
 341 000c 28B1     		cbz	r0, .L61
 342              	.L63:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccApWi0e.s 			page 7


 343 000e E369     		ldr	r3, [r4, #28]	@ float
 344 0010 94F82000 		ldrb	r0, [r4, #32]	@ zero_extendqisi2
 345 0014 2B60     		str	r3, [r5]	@ float
 346              	.L62:
 347 0016 03B0     		add	sp, sp, #12
 348              		@ sp needed
 349 0018 30BD     		pop	{r4, r5, pc}
 350              	.L61:
 351 001a FFF7FEFF 		bl	millis
 352 001e A369     		ldr	r3, [r4, #24]
 353 0020 C01A     		subs	r0, r0, r3
 354 0022 6328     		cmp	r0, #99
 355 0024 F3D9     		bls	.L63
 356 0026 01AB     		add	r3, sp, #4
 357 0028 0422     		movs	r2, #4
 358 002a 2549     		ldr	r1, .L75
 359 002c 2046     		mov	r0, r4
 360 002e FFF7FEFF 		bl	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm
 361 0032 10B1     		cbz	r0, .L64
 362 0034 84F82000 		strb	r0, [r4, #32]
 363 0038 EDE7     		b	.L62
 364              	.L64:
 365 003a FFF7FEFF 		bl	millis
 366 003e 019A     		ldr	r2, [sp, #4]
 367 0040 94F82430 		ldrb	r3, [r4, #36]	@ zero_extendqisi2
 368 0044 A061     		str	r0, [r4, #24]
 369 0046 83EA1243 		eor	r3, r3, r2, lsr #16
 370 004a 13F0DD0F 		tst	r3, #221
 371 004e 01D1     		bne	.L66
 372 0050 D107     		lsls	r1, r2, #31
 373 0052 20D5     		bpl	.L67
 374              	.L66:
 375 0054 01AB     		add	r3, sp, #4
 376 0056 0222     		movs	r2, #2
 377 0058 1A49     		ldr	r1, .L75+4
 378 005a 2046     		mov	r0, r4
 379 005c FFF7FEFF 		bl	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm
 380 0060 B8B9     		cbnz	r0, .L68
 381 0062 019B     		ldr	r3, [sp, #4]
 382 0064 5A07     		lsls	r2, r3, #29
 383 0066 29D4     		bmi	.L71
 384 0068 13F0180F 		tst	r3, #24
 385 006c 0CBF     		ite	eq
 386 006e 0723     		moveq	r3, #7
 387 0070 0423     		movne	r3, #4
 388              	.L74:
 389 0072 84F82030 		strb	r3, [r4, #32]
 390 0076 144B     		ldr	r3, .L75+8
 391 0078 144A     		ldr	r2, .L75+12
 392 007a 1B68     		ldr	r3, [r3]
 393 007c A2FB0323 		umull	r2, r3, r2, r3
 394 0080 9B0C     		lsrs	r3, r3, #18
 395              		.syntax unified
 396              	@ 88 "C:\Eclipse\Firmware\CoreNG\cores\arduino/wiring.h" 1
 397              		L_438_delayMicroseconds:
 398 0082 013B     		subs   r3, #1
 399 0084 FDD1     		bne    L_438_delayMicroseconds
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccApWi0e.s 			page 8


 400              	
 401              	@ 0 "" 2
 402              		.thumb
 403              		.syntax unified
 404 0086 2046     		mov	r0, r4
 405 0088 FFF7FEFF 		bl	_ZNK14RtdSensor3186510TryInitRtdEv
 406 008c 94F82000 		ldrb	r0, [r4, #32]	@ zero_extendqisi2
 407 0090 C1E7     		b	.L62
 408              	.L68:
 409 0092 0723     		movs	r3, #7
 410 0094 EDE7     		b	.L74
 411              	.L67:
 412 0096 6423     		movs	r3, #100
 413 0098 618C     		ldrh	r1, [r4, #34]
 414 009a C2F34E02 		ubfx	r2, r2, #1, #15
 415 009e 03FB02F2 		mul	r2, r3, r2
 416 00a2 01FB02F1 		mul	r1, r1, r2
 417 00a6 C1F3CF31 		ubfx	r1, r1, #15, #16
 418 00aa 04F11C00 		add	r0, r4, #28
 419 00ae FFF7FEFF 		bl	_ZN17TemperatureSensor19GetPT100TemperatureERft
 420 00b2 E369     		ldr	r3, [r4, #28]	@ float
 421 00b4 84F82000 		strb	r0, [r4, #32]
 422 00b8 2B60     		str	r3, [r5]	@ float
 423 00ba ACE7     		b	.L62
 424              	.L71:
 425 00bc 0D23     		movs	r3, #13
 426 00be D8E7     		b	.L74
 427              	.L76:
 428              		.align	2
 429              	.L75:
 430 00c0 00000000 		.word	.LANCHOR2
 431 00c4 00000000 		.word	.LANCHOR3
 432 00c8 00000000 		.word	SystemCoreClock
 433 00cc 819F5E16 		.word	375299969
 434              		.size	_ZN14RtdSensor3186514GetTemperatureERf, .-_ZN14RtdSensor3186514GetTemperatureERf
 435              		.weak	_ZTV20SpiTemperatureSensor
 436              		.section	.rodata._ZTV20SpiTemperatureSensor,"aG",%progbits,_ZTV20SpiTemperatureSensor,comdat
 437              		.align	2
 438              		.type	_ZTV20SpiTemperatureSensor, %object
 439              		.size	_ZTV20SpiTemperatureSensor, 28
 440              	_ZTV20SpiTemperatureSensor:
 441 0000 00000000 		.word	0
 442 0004 00000000 		.word	0
 443 0008 00000000 		.word	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef
 444 000c 00000000 		.word	__cxa_pure_virtual
 445 0010 00000000 		.word	__cxa_pure_virtual
 446 0014 00000000 		.word	0
 447 0018 00000000 		.word	0
 448              		.global	_ZTV14RtdSensor31865
 449              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 450              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 451              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 452              	_ZL28cpu_irq_prev_interrupt_state:
 453 0000 00       		.space	1
 454              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 455              		.align	2
 456              		.type	_ZL32cpu_irq_critical_section_counter, %object
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccApWi0e.s 			page 9


 457              		.size	_ZL32cpu_irq_critical_section_counter, 4
 458              	_ZL32cpu_irq_critical_section_counter:
 459 0000 00000000 		.space	4
 460              		.section	.rodata._ZN14RtdSensor318654InitEv.str1.4,"aMS",%progbits,1
 461              		.align	2
 462              	.LC4:
 463 0000 4661696C 		.ascii	"Failed to initialise RTD: %s\012\000"
 463      65642074 
 463      6F20696E 
 463      69746961 
 463      6C697365 
 464              		.section	.rodata._ZN14RtdSensor318659ConfigureEjjR11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits
 465              		.align	2
 466              	.LC0:
 467 0000 3300     		.ascii	"3\000"
 468 0002 0000     		.space	2
 469              	.LC1:
 470 0004 322F3400 		.ascii	"2/4\000"
 471              	.LC2:
 472 0008 2C202573 		.ascii	", %s wires, reject %dHz, reference resistor %u ohms"
 472      20776972 
 472      65732C20 
 472      72656A65 
 472      63742025 
 473 003b 00       		.ascii	"\000"
 474              		.section	.rodata._ZN14RtdSensor31865C2Ej.str1.4,"aMS",%progbits,1
 475              		.align	2
 476              	.LC3:
 477 0000 50543130 		.ascii	"PT100 (MAX31865)\000"
 477      3020284D 
 477      41583331 
 477      38363529 
 477      00
 478              		.section	.rodata._ZTV14RtdSensor31865,"a",%progbits
 479              		.align	2
 480              		.set	.LANCHOR0,. + 0
 481              		.type	_ZTV14RtdSensor31865, %object
 482              		.size	_ZTV14RtdSensor31865, 28
 483              	_ZTV14RtdSensor31865:
 484 0000 00000000 		.word	0
 485 0004 00000000 		.word	0
 486 0008 00000000 		.word	_ZN14RtdSensor318659ConfigureEjjR11GCodeBufferRK9StringRef
 487 000c 00000000 		.word	_ZN14RtdSensor318654InitEv
 488 0010 00000000 		.word	_ZN14RtdSensor3186514GetTemperatureERf
 489 0014 00000000 		.word	_ZN14RtdSensor31865D1Ev
 490 0018 00000000 		.word	_ZN14RtdSensor31865D0Ev
 491              		.section	.rodata._ZZN14RtdSensor3186514GetTemperatureERfE12faultDataOut,"a",%progbits
 492              		.align	2
 493              		.set	.LANCHOR3,. + 0
 494              		.type	_ZZN14RtdSensor3186514GetTemperatureERfE12faultDataOut, %object
 495              		.size	_ZZN14RtdSensor3186514GetTemperatureERfE12faultDataOut, 2
 496              	_ZZN14RtdSensor3186514GetTemperatureERfE12faultDataOut:
 497 0000 07       		.byte	7
 498 0001 55       		.byte	85
 499              		.section	.rodata._ZZN14RtdSensor3186514GetTemperatureERfE7dataOut,"a",%progbits
 500              		.align	2
 501              		.set	.LANCHOR2,. + 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccApWi0e.s 			page 10


 502              		.type	_ZZN14RtdSensor3186514GetTemperatureERfE7dataOut, %object
 503              		.size	_ZZN14RtdSensor3186514GetTemperatureERfE7dataOut, 4
 504              	_ZZN14RtdSensor3186514GetTemperatureERfE7dataOut:
 505 0000 00       		.byte	0
 506 0001 55       		.byte	85
 507 0002 55       		.byte	85
 508 0003 55       		.byte	85
 509              		.section	.rodata._ZZNK14RtdSensor3186510TryInitRtdEvE8readData,"a",%progbits
 510              		.align	2
 511              		.set	.LANCHOR1,. + 0
 512              		.type	_ZZNK14RtdSensor3186510TryInitRtdEvE8readData, %object
 513              		.size	_ZZNK14RtdSensor3186510TryInitRtdEvE8readData, 2
 514              	_ZZNK14RtdSensor3186510TryInitRtdEvE8readData:
 515 0000 0000     		.space	2
 516              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
