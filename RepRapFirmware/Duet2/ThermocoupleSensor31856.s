ARM GAS  /tmp/ccfgt452.s 			page 1


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
  13              		.file	"ThermocoupleSensor31856.cpp"
  14              		.section	.text._ZN23ThermocoupleSensor31856D2Ev,"axG",%progbits,_ZN23ThermocoupleSensor31856D5Ev,c
  15              		.align	1
  16              		.p2align 2,,3
  17              		.weak	_ZN23ThermocoupleSensor31856D2Ev
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN23ThermocoupleSensor31856D2Ev, %function
  23              	_ZN23ThermocoupleSensor31856D2Ev:
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
  37              		.size	_ZN23ThermocoupleSensor31856D2Ev, .-_ZN23ThermocoupleSensor31856D2Ev
  38              		.weak	_ZN23ThermocoupleSensor31856D1Ev
  39              		.thumb_set _ZN23ThermocoupleSensor31856D1Ev,_ZN23ThermocoupleSensor31856D2Ev
  40              		.section	.text._ZN23ThermocoupleSensor31856D0Ev,"axG",%progbits,_ZN23ThermocoupleSensor31856D5Ev,c
  41              		.align	1
  42              		.p2align 2,,3
  43              		.weak	_ZN23ThermocoupleSensor31856D0Ev
  44              		.syntax unified
  45              		.thumb
  46              		.thumb_func
  47              		.fpu fpv4-sp-d16
  48              		.type	_ZN23ThermocoupleSensor31856D0Ev, %function
  49              	_ZN23ThermocoupleSensor31856D0Ev:
  50              		@ args = 0, pretend = 0, frame = 0
  51              		@ frame_needed = 0, uses_anonymous_args = 0
  52 0000 10B5     		push	{r4, lr}
  53 0002 054B     		ldr	r3, .L8
  54 0004 0360     		str	r3, [r0]
  55 0006 0446     		mov	r4, r0
  56 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
  57 000c 2046     		mov	r0, r4
ARM GAS  /tmp/ccfgt452.s 			page 2


  58 000e 2421     		movs	r1, #36
  59 0010 FFF7FEFF 		bl	_ZdlPvj
  60 0014 2046     		mov	r0, r4
  61 0016 10BD     		pop	{r4, pc}
  62              	.L9:
  63              		.align	2
  64              	.L8:
  65 0018 08000000 		.word	_ZTV20SpiTemperatureSensor+8
  66              		.size	_ZN23ThermocoupleSensor31856D0Ev, .-_ZN23ThermocoupleSensor31856D0Ev
  67              		.section	.text._ZN23ThermocoupleSensor318569ConfigureEjjR11GCodeBufferRK9StringRef,"ax",%progbits
  68              		.align	1
  69              		.p2align 2,,3
  70              		.global	_ZN23ThermocoupleSensor318569ConfigureEjjR11GCodeBufferRK9StringRef
  71              		.syntax unified
  72              		.thumb
  73              		.thumb_func
  74              		.fpu fpv4-sp-d16
  75              		.type	_ZN23ThermocoupleSensor318569ConfigureEjjR11GCodeBufferRK9StringRef, %function
  76              	_ZN23ThermocoupleSensor318569ConfigureEjjR11GCodeBufferRK9StringRef:
  77              		@ args = 4, pretend = 0, frame = 16
  78              		@ frame_needed = 0, uses_anonymous_args = 0
  79 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  80 0004 40F23114 		movw	r4, #305
  81 0008 A142     		cmp	r1, r4
  82 000a 84B0     		sub	sp, sp, #16
  83 000c 03D0     		beq	.L32
  84              	.L20:
  85 000e 0120     		movs	r0, #1
  86              	.L11:
  87 0010 04B0     		add	sp, sp, #16
  88              		@ sp needed
  89 0012 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  90              	.L32:
  91 0016 04AF     		add	r7, sp, #16
  92 0018 1D46     		mov	r5, r3
  93 001a 0023     		movs	r3, #0
  94 001c 07F80D3D 		strb	r3, [r7, #-13]!
  95 0020 2946     		mov	r1, r5
  96 0022 1446     		mov	r4, r2
  97 0024 3A46     		mov	r2, r7
  98 0026 0646     		mov	r6, r0
  99 0028 FFF7FEFF 		bl	_ZN17TemperatureSensor22TryConfigureHeaterNameER11GCodeBufferRb
 100 002c 4621     		movs	r1, #70
 101 002e 2846     		mov	r0, r5
 102 0030 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 103 0034 0028     		cmp	r0, #0
 104 0036 41D1     		bne	.L33
 105              	.L12:
 106 0038 0DF11008 		add	r8, sp, #16
 107 003c 0023     		movs	r3, #0
 108 003e 08F80C3D 		strb	r3, [r8, #-12]!
 109 0042 02AA     		add	r2, sp, #8
 110 0044 3B46     		mov	r3, r7
 111 0046 5421     		movs	r1, #84
 112 0048 0327     		movs	r7, #3
 113 004a 2846     		mov	r0, r5
 114 004c CDE90287 		strd	r8, r7, [sp, #8]
ARM GAS  /tmp/ccfgt452.s 			page 3


 115 0050 FFF7FEFF 		bl	_ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb
 116 0054 F0B9     		cbnz	r0, .L34
 117              	.L14:
 118 0056 9DF80330 		ldrb	r3, [sp, #3]	@ zero_extendqisi2
 119 005a 002B     		cmp	r3, #0
 120 005c D7D1     		bne	.L20
 121 005e 2846     		mov	r0, r5
 122 0060 5821     		movs	r1, #88
 123 0062 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 124 0066 0028     		cmp	r0, #0
 125 0068 D1D1     		bne	.L20
 126 006a 2146     		mov	r1, r4
 127 006c 0A9A     		ldr	r2, [sp, #40]
 128 006e 3046     		mov	r0, r6
 129 0070 FFF7FEFF 		bl	_ZNK17TemperatureSensor22CopyBasicHeaterDetailsEjRK9StringRef
 130 0074 96F82130 		ldrb	r3, [r6, #33]	@ zero_extendqisi2
 131 0078 96F82220 		ldrb	r2, [r6, #34]	@ zero_extendqisi2
 132 007c 1B48     		ldr	r0, .L35
 133 007e 1C49     		ldr	r1, .L35+4
 134 0080 825C     		ldrb	r2, [r0, r2]	@ zero_extendqisi2
 135 0082 0A98     		ldr	r0, [sp, #40]
 136 0084 13F0010F 		tst	r3, #1
 137 0088 14BF     		ite	ne
 138 008a 3223     		movne	r3, #50
 139 008c 3C23     		moveq	r3, #60
 140 008e FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 141 0092 BCE7     		b	.L20
 142              	.L34:
 143 0094 4046     		mov	r0, r8
 144 0096 0221     		movs	r1, #2
 145 0098 FFF7FEFF 		bl	_Z7StrnlenPKcj
 146 009c 0128     		cmp	r0, #1
 147 009e 1ED1     		bne	.L15
 148 00a0 9DF80400 		ldrb	r0, [sp, #4]	@ zero_extendqisi2
 149 00a4 114F     		ldr	r7, .L35
 150 00a6 FFF7FEFF 		bl	toupper
 151 00aa 0146     		mov	r1, r0
 152 00ac 3846     		mov	r0, r7
 153 00ae FFF7FEFF 		bl	strchr
 154 00b2 A0B1     		cbz	r0, .L15
 155 00b4 C01B     		subs	r0, r0, r7
 156 00b6 86F82200 		strb	r0, [r6, #34]
 157 00ba CCE7     		b	.L14
 158              	.L33:
 159 00bc 0123     		movs	r3, #1
 160 00be 2846     		mov	r0, r5
 161 00c0 8DF80330 		strb	r3, [sp, #3]
 162 00c4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 163 00c8 96F82130 		ldrb	r3, [r6, #33]	@ zero_extendqisi2
 164 00cc 3C28     		cmp	r0, #60
 165 00ce 0CBF     		ite	eq
 166 00d0 23F00103 		biceq	r3, r3, #1
 167 00d4 43F00103 		orrne	r3, r3, #1
 168 00d8 86F82130 		strb	r3, [r6, #33]
 169 00dc ACE7     		b	.L12
 170              	.L15:
 171 00de 0549     		ldr	r1, .L35+8
ARM GAS  /tmp/ccfgt452.s 			page 4


 172 00e0 0A98     		ldr	r0, [sp, #40]
 173 00e2 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 174 00e6 0220     		movs	r0, #2
 175 00e8 92E7     		b	.L11
 176              	.L36:
 177 00ea 00BF     		.align	2
 178              	.L35:
 179 00ec 00000000 		.word	.LC0
 180 00f0 3C000000 		.word	.LC2
 181 00f4 0C000000 		.word	.LC1
 182              		.size	_ZN23ThermocoupleSensor318569ConfigureEjjR11GCodeBufferRK9StringRef, .-_ZN23ThermocoupleSens
 183              		.section	.text._ZN23ThermocoupleSensor31856C2Ej,"ax",%progbits
 184              		.align	1
 185              		.p2align 2,,3
 186              		.global	_ZN23ThermocoupleSensor31856C2Ej
 187              		.syntax unified
 188              		.thumb
 189              		.thumb_func
 190              		.fpu fpv4-sp-d16
 191              		.type	_ZN23ThermocoupleSensor31856C2Ej, %function
 192              	_ZN23ThermocoupleSensor31856C2Ej:
 193              		@ args = 0, pretend = 0, frame = 0
 194              		@ frame_needed = 0, uses_anonymous_args = 0
 195 0000 10B5     		push	{r4, lr}
 196 0002 0B4A     		ldr	r2, .L39
 197 0004 82B0     		sub	sp, sp, #8
 198 0006 0123     		movs	r3, #1
 199 0008 CDE90032 		strd	r3, r2, [sp]
 200 000c A1F19603 		sub	r3, r1, #150
 201 0010 084A     		ldr	r2, .L39+4
 202 0012 0446     		mov	r4, r0
 203 0014 FFF7FEFF 		bl	_ZN20SpiTemperatureSensorC2EjPKcjhm
 204 0018 074B     		ldr	r3, .L39+8
 205 001a 2360     		str	r3, [r4]
 206 001c 9722     		movs	r2, #151
 207 001e 0323     		movs	r3, #3
 208 0020 2046     		mov	r0, r4
 209 0022 84F82120 		strb	r2, [r4, #33]
 210 0026 84F82230 		strb	r3, [r4, #34]
 211 002a 02B0     		add	sp, sp, #8
 212              		@ sp needed
 213 002c 10BD     		pop	{r4, pc}
 214              	.L40:
 215 002e 00BF     		.align	2
 216              	.L39:
 217 0030 00093D00 		.word	4000000
 218 0034 00000000 		.word	.LC3
 219 0038 08000000 		.word	.LANCHOR0+8
 220              		.size	_ZN23ThermocoupleSensor31856C2Ej, .-_ZN23ThermocoupleSensor31856C2Ej
 221              		.global	_ZN23ThermocoupleSensor31856C1Ej
 222              		.thumb_set _ZN23ThermocoupleSensor31856C1Ej,_ZN23ThermocoupleSensor31856C2Ej
 223              		.section	.text._ZNK23ThermocoupleSensor3185619TryInitThermocoupleEv,"ax",%progbits
 224              		.align	1
 225              		.p2align 2,,3
 226              		.global	_ZNK23ThermocoupleSensor3185619TryInitThermocoupleEv
 227              		.syntax unified
 228              		.thumb
ARM GAS  /tmp/ccfgt452.s 			page 5


 229              		.thumb_func
 230              		.fpu fpv4-sp-d16
 231              		.type	_ZNK23ThermocoupleSensor3185619TryInitThermocoupleEv, %function
 232              	_ZNK23ThermocoupleSensor3185619TryInitThermocoupleEv:
 233              		@ args = 0, pretend = 0, frame = 8
 234              		@ frame_needed = 0, uses_anonymous_args = 0
 235 0000 30B5     		push	{r4, r5, lr}
 236 0002 90F82220 		ldrb	r2, [r0, #34]	@ zero_extendqisi2
 237 0006 90F82130 		ldrb	r3, [r0, #33]	@ zero_extendqisi2
 238 000a 83B0     		sub	sp, sp, #12
 239 000c 42F02002 		orr	r2, r2, #32
 240 0010 8021     		movs	r1, #128
 241 0012 8DF80130 		strb	r3, [sp, #1]
 242 0016 3C25     		movs	r5, #60
 243 0018 8DF80220 		strb	r2, [sp, #2]
 244 001c 8DF80010 		strb	r1, [sp]
 245 0020 01AB     		add	r3, sp, #4
 246 0022 0422     		movs	r2, #4
 247 0024 6946     		mov	r1, sp
 248 0026 0446     		mov	r4, r0
 249 0028 8DF80350 		strb	r5, [sp, #3]
 250 002c FFF7FEFF 		bl	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm
 251 0030 08B1     		cbz	r0, .L46
 252              	.L42:
 253 0032 03B0     		add	sp, sp, #12
 254              		@ sp needed
 255 0034 30BD     		pop	{r4, r5, pc}
 256              	.L46:
 257 0036 01AB     		add	r3, sp, #4
 258 0038 2046     		mov	r0, r4
 259 003a 0422     		movs	r2, #4
 260 003c 0B49     		ldr	r1, .L47
 261 003e FFF7FEFF 		bl	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm
 262 0042 0028     		cmp	r0, #0
 263 0044 F5D1     		bne	.L42
 264 0046 9DF80230 		ldrb	r3, [sp, #2]	@ zero_extendqisi2
 265 004a 9DF80150 		ldrb	r5, [sp, #1]	@ zero_extendqisi2
 266 004e 9DF80340 		ldrb	r4, [sp, #3]	@ zero_extendqisi2
 267 0052 0199     		ldr	r1, [sp, #4]
 268 0054 064A     		ldr	r2, .L47+4
 269 0056 1B02     		lsls	r3, r3, #8
 270 0058 43EA0543 		orr	r3, r3, r5, lsl #16
 271 005c 2343     		orrs	r3, r3, r4
 272 005e 4B40     		eors	r3, r3, r1
 273 0060 1A40     		ands	r2, r2, r3
 274 0062 002A     		cmp	r2, #0
 275 0064 18BF     		it	ne
 276 0066 0920     		movne	r0, #9
 277 0068 03B0     		add	sp, sp, #12
 278              		@ sp needed
 279 006a 30BD     		pop	{r4, r5, pc}
 280              	.L48:
 281              		.align	2
 282              	.L47:
 283 006c 00000000 		.word	.LANCHOR1
 284 0070 3F7FBD00 		.word	12418879
 285              		.size	_ZNK23ThermocoupleSensor3185619TryInitThermocoupleEv, .-_ZNK23ThermocoupleSensor3185619TryIn
ARM GAS  /tmp/ccfgt452.s 			page 6


 286              		.section	.text._ZN23ThermocoupleSensor318564InitEv,"ax",%progbits
 287              		.align	1
 288              		.p2align 2,,3
 289              		.global	_ZN23ThermocoupleSensor318564InitEv
 290              		.syntax unified
 291              		.thumb
 292              		.thumb_func
 293              		.fpu fpv4-sp-d16
 294              		.type	_ZN23ThermocoupleSensor318564InitEv, %function
 295              	_ZN23ThermocoupleSensor318564InitEv:
 296              		@ args = 0, pretend = 0, frame = 0
 297              		@ frame_needed = 0, uses_anonymous_args = 0
 298 0000 70B5     		push	{r4, r5, r6, lr}
 299 0002 0646     		mov	r6, r0
 300 0004 FFF7FEFF 		bl	_ZN20SpiTemperatureSensor7InitSpiEv
 301 0008 0324     		movs	r4, #3
 302              	.L52:
 303 000a 3046     		mov	r0, r6
 304 000c FFF7FEFF 		bl	_ZNK23ThermocoupleSensor3185619TryInitThermocoupleEv
 305 0010 0546     		mov	r5, r0
 306 0012 C8B1     		cbz	r0, .L50
 307 0014 6420     		movs	r0, #100
 308 0016 FFF7FEFF 		bl	coreDelay
 309 001a 013C     		subs	r4, r4, #1
 310 001c F5D1     		bne	.L52
 311 001e FFF7FEFF 		bl	millis
 312 0022 0D4A     		ldr	r2, .L55
 313 0024 B061     		str	r0, [r6, #24]
 314 0026 0023     		movs	r3, #0
 315 0028 F361     		str	r3, [r6, #28]	@ float
 316 002a 86F82050 		strb	r5, [r6, #32]
 317 002e 2846     		mov	r0, r5
 318 0030 1468     		ldr	r4, [r2]	@ unaligned
 319 0032 FFF7FEFF 		bl	_Z22TemperatureErrorString16TemperatureError
 320 0036 094A     		ldr	r2, .L55+4
 321 0038 0346     		mov	r3, r0
 322 003a 40F2B511 		movw	r1, #437
 323 003e 2046     		mov	r0, r4
 324 0040 BDE87040 		pop	{r4, r5, r6, lr}
 325 0044 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 326              	.L50:
 327 0048 FFF7FEFF 		bl	millis
 328 004c 0023     		movs	r3, #0
 329 004e B061     		str	r0, [r6, #24]
 330 0050 86F82050 		strb	r5, [r6, #32]
 331 0054 F361     		str	r3, [r6, #28]	@ float
 332 0056 70BD     		pop	{r4, r5, r6, pc}
 333              	.L56:
 334              		.align	2
 335              	.L55:
 336 0058 00000000 		.word	reprap
 337 005c 00000000 		.word	.LC4
 338              		.size	_ZN23ThermocoupleSensor318564InitEv, .-_ZN23ThermocoupleSensor318564InitEv
 339              		.section	.text._ZN23ThermocoupleSensor3185614GetTemperatureERf,"ax",%progbits
 340              		.align	1
 341              		.p2align 2,,3
 342              		.global	_ZN23ThermocoupleSensor3185614GetTemperatureERf
ARM GAS  /tmp/ccfgt452.s 			page 7


 343              		.syntax unified
 344              		.thumb
 345              		.thumb_func
 346              		.fpu fpv4-sp-d16
 347              		.type	_ZN23ThermocoupleSensor3185614GetTemperatureERf, %function
 348              	_ZN23ThermocoupleSensor3185614GetTemperatureERf:
 349              		@ args = 0, pretend = 0, frame = 8
 350              		@ frame_needed = 0, uses_anonymous_args = 0
 351 0000 70B5     		push	{r4, r5, r6, lr}
 352 0002 82B0     		sub	sp, sp, #8
 353 0004 0446     		mov	r4, r0
 354 0006 0E46     		mov	r6, r1
 355 0008 FFF7FEFF 		bl	_Z11inInterruptv
 356 000c 30B1     		cbz	r0, .L58
 357              	.L60:
 358 000e E369     		ldr	r3, [r4, #28]	@ float
 359 0010 94F82050 		ldrb	r5, [r4, #32]	@ zero_extendqisi2
 360 0014 3360     		str	r3, [r6]	@ float
 361              	.L59:
 362 0016 2846     		mov	r0, r5
 363 0018 02B0     		add	sp, sp, #8
 364              		@ sp needed
 365 001a 70BD     		pop	{r4, r5, r6, pc}
 366              	.L58:
 367 001c FFF7FEFF 		bl	millis
 368 0020 A369     		ldr	r3, [r4, #24]
 369 0022 C01A     		subs	r0, r0, r3
 370 0024 6328     		cmp	r0, #99
 371 0026 F2D9     		bls	.L60
 372 0028 01AB     		add	r3, sp, #4
 373 002a 0522     		movs	r2, #5
 374 002c 1749     		ldr	r1, .L69
 375 002e 2046     		mov	r0, r4
 376 0030 FFF7FEFF 		bl	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm
 377 0034 0546     		mov	r5, r0
 378 0036 20B1     		cbz	r0, .L61
 379              	.L68:
 380 0038 2846     		mov	r0, r5
 381 003a 84F82050 		strb	r5, [r4, #32]
 382 003e 02B0     		add	sp, sp, #8
 383              		@ sp needed
 384 0040 70BD     		pop	{r4, r5, r6, pc}
 385              	.L61:
 386 0042 FFF7FEFF 		bl	millis
 387 0046 019B     		ldr	r3, [sp, #4]
 388 0048 A061     		str	r0, [r4, #24]
 389 004a 13F0FF0F 		tst	r3, #255
 390 004e 11D0     		beq	.L63
 391 0050 9907     		lsls	r1, r3, #30
 392 0052 19D4     		bmi	.L65
 393 0054 13F0010F 		tst	r3, #1
 394 0058 0CBF     		ite	eq
 395 005a 0722     		moveq	r2, #7
 396 005c 0422     		movne	r2, #4
 397              	.L64:
 398 005e 2823     		movs	r3, #40
 399 0060 84F82020 		strb	r2, [r4, #32]
ARM GAS  /tmp/ccfgt452.s 			page 8


 400              		.syntax unified
 401              	@ 88 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h" 1
 402              		L_446_delayMicroseconds:
 403 0064 013B     		subs   r3, #1
 404 0066 FDD1     		bne    L_446_delayMicroseconds
 405              	
 406              	@ 0 "" 2
 407              		.thumb
 408              		.syntax unified
 409 0068 2046     		mov	r0, r4
 410 006a FFF7FEFF 		bl	_ZNK23ThermocoupleSensor3185619TryInitThermocoupleEv
 411 006e 94F82050 		ldrb	r5, [r4, #32]	@ zero_extendqisi2
 412 0072 D0E7     		b	.L59
 413              	.L63:
 414 0074 1B14     		asrs	r3, r3, #16
 415 0076 07EE903A 		vmov	s15, r3	@ int
 416 007a FAEECE7A 		vcvt.f32.s32	s15, s15, #4
 417 007e C4ED077A 		vstr.32	s15, [r4, #28]
 418 0082 C6ED007A 		vstr.32	s15, [r6]
 419 0086 D7E7     		b	.L68
 420              	.L65:
 421 0088 0D22     		movs	r2, #13
 422 008a E8E7     		b	.L64
 423              	.L70:
 424              		.align	2
 425              	.L69:
 426 008c 00000000 		.word	.LANCHOR2
 427              		.size	_ZN23ThermocoupleSensor3185614GetTemperatureERf, .-_ZN23ThermocoupleSensor3185614GetTemperat
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
 441              		.global	_ZTV23ThermocoupleSensor31856
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
ARM GAS  /tmp/ccfgt452.s 			page 9


 457              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 458 0000 00000000 		.space	4
 459              		.section	.rodata._ZN23ThermocoupleSensor318564InitEv.str1.4,"aMS",%progbits,1
 460              		.align	2
 461              	.LC4:
 462 0000 4661696C 		.ascii	"Failed to initialise thermocouple: %s\012\000"
 462      65642074 
 462      6F20696E 
 462      69746961 
 462      6C697365 
 463              		.section	.rodata._ZN23ThermocoupleSensor318569ConfigureEjjR11GCodeBufferRK9StringRef.str1.4,"aMS",
 464              		.align	2
 465              	.LC0:
 466 0000 42454A4B 		.ascii	"BEJKNRST\000"
 466      4E525354 
 466      00
 467 0009 000000   		.space	3
 468              	.LC1:
 469 000c 42616420 		.ascii	"Bad thermocouple type letter in M305 command\000"
 469      74686572 
 469      6D6F636F 
 469      75706C65 
 469      20747970 
 470 0039 000000   		.space	3
 471              	.LC2:
 472 003c 2C207468 		.ascii	", thermocouple type %c, reject %dHz\000"
 472      65726D6F 
 472      636F7570 
 472      6C652074 
 472      79706520 
 473              		.section	.rodata._ZN23ThermocoupleSensor31856C2Ej.str1.4,"aMS",%progbits,1
 474              		.align	2
 475              	.LC3:
 476 0000 54686572 		.ascii	"Thermocouple (MAX31856)\000"
 476      6D6F636F 
 476      75706C65 
 476      20284D41 
 476      58333138 
 477              		.section	.rodata._ZTV23ThermocoupleSensor31856,"a",%progbits
 478              		.align	2
 479              		.set	.LANCHOR0,. + 0
 480              		.type	_ZTV23ThermocoupleSensor31856, %object
 481              		.size	_ZTV23ThermocoupleSensor31856, 28
 482              	_ZTV23ThermocoupleSensor31856:
 483 0000 00000000 		.word	0
 484 0004 00000000 		.word	0
 485 0008 00000000 		.word	_ZN23ThermocoupleSensor318569ConfigureEjjR11GCodeBufferRK9StringRef
 486 000c 00000000 		.word	_ZN23ThermocoupleSensor318564InitEv
 487 0010 00000000 		.word	_ZN23ThermocoupleSensor3185614GetTemperatureERf
 488 0014 00000000 		.word	_ZN23ThermocoupleSensor31856D1Ev
 489 0018 00000000 		.word	_ZN23ThermocoupleSensor31856D0Ev
 490              		.section	.rodata._ZZN23ThermocoupleSensor3185614GetTemperatureERfE7dataOut,"a",%progbits
 491              		.align	2
 492              		.set	.LANCHOR2,. + 0
 493              		.type	_ZZN23ThermocoupleSensor3185614GetTemperatureERfE7dataOut, %object
 494              		.size	_ZZN23ThermocoupleSensor3185614GetTemperatureERfE7dataOut, 5
 495              	_ZZN23ThermocoupleSensor3185614GetTemperatureERfE7dataOut:
ARM GAS  /tmp/ccfgt452.s 			page 10


 496 0000 0C       		.byte	12
 497 0001 55       		.byte	85
 498 0002 55       		.byte	85
 499 0003 55       		.byte	85
 500 0004 55       		.byte	85
 501              		.section	.rodata._ZZNK23ThermocoupleSensor3185619TryInitThermocoupleEvE8readData,"a",%progbits
 502              		.align	2
 503              		.set	.LANCHOR1,. + 0
 504              		.type	_ZZNK23ThermocoupleSensor3185619TryInitThermocoupleEvE8readData, %object
 505              		.size	_ZZNK23ThermocoupleSensor3185619TryInitThermocoupleEvE8readData, 4
 506              	_ZZNK23ThermocoupleSensor3185619TryInitThermocoupleEvE8readData:
 507 0000 00000000 		.space	4
 508              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
