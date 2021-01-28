ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgKdsJf.s 			page 1


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
  14              		.text
  15              		.section	.text._ZN23ThermocoupleSensor31856D2Ev,"axG",%progbits,_ZN23ThermocoupleSensor31856D5Ev,c
  16              		.align	1
  17              		.p2align 2,,3
  18              		.weak	_ZN23ThermocoupleSensor31856D2Ev
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN23ThermocoupleSensor31856D2Ev, %function
  24              	_ZN23ThermocoupleSensor31856D2Ev:
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
  38              		.size	_ZN23ThermocoupleSensor31856D2Ev, .-_ZN23ThermocoupleSensor31856D2Ev
  39              		.weak	_ZN23ThermocoupleSensor31856D1Ev
  40              		.thumb_set _ZN23ThermocoupleSensor31856D1Ev,_ZN23ThermocoupleSensor31856D2Ev
  41              		.section	.text._ZN23ThermocoupleSensor31856D0Ev,"axG",%progbits,_ZN23ThermocoupleSensor31856D5Ev,c
  42              		.align	1
  43              		.p2align 2,,3
  44              		.weak	_ZN23ThermocoupleSensor31856D0Ev
  45              		.syntax unified
  46              		.thumb
  47              		.thumb_func
  48              		.fpu fpv4-sp-d16
  49              		.type	_ZN23ThermocoupleSensor31856D0Ev, %function
  50              	_ZN23ThermocoupleSensor31856D0Ev:
  51              		@ args = 0, pretend = 0, frame = 0
  52              		@ frame_needed = 0, uses_anonymous_args = 0
  53 0000 10B5     		push	{r4, lr}
  54 0002 054B     		ldr	r3, .L8
  55 0004 0360     		str	r3, [r0]
  56 0006 0446     		mov	r4, r0
  57 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgKdsJf.s 			page 2


  58 000c 2046     		mov	r0, r4
  59 000e 2421     		movs	r1, #36
  60 0010 FFF7FEFF 		bl	_ZdlPvj
  61 0014 2046     		mov	r0, r4
  62 0016 10BD     		pop	{r4, pc}
  63              	.L9:
  64              		.align	2
  65              	.L8:
  66 0018 08000000 		.word	_ZTV20SpiTemperatureSensor+8
  67              		.size	_ZN23ThermocoupleSensor31856D0Ev, .-_ZN23ThermocoupleSensor31856D0Ev
  68              		.section	.text._ZN23ThermocoupleSensor318569ConfigureEjjR11GCodeBufferRK9StringRef,"ax",%progbits
  69              		.align	1
  70              		.p2align 2,,3
  71              		.global	_ZN23ThermocoupleSensor318569ConfigureEjjR11GCodeBufferRK9StringRef
  72              		.syntax unified
  73              		.thumb
  74              		.thumb_func
  75              		.fpu fpv4-sp-d16
  76              		.type	_ZN23ThermocoupleSensor318569ConfigureEjjR11GCodeBufferRK9StringRef, %function
  77              	_ZN23ThermocoupleSensor318569ConfigureEjjR11GCodeBufferRK9StringRef:
  78              		@ args = 4, pretend = 0, frame = 16
  79              		@ frame_needed = 0, uses_anonymous_args = 0
  80 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  81 0004 40F23114 		movw	r4, #305
  82 0008 A142     		cmp	r1, r4
  83 000a 84B0     		sub	sp, sp, #16
  84 000c 03D0     		beq	.L32
  85              	.L20:
  86 000e 0120     		movs	r0, #1
  87              	.L11:
  88 0010 04B0     		add	sp, sp, #16
  89              		@ sp needed
  90 0012 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  91              	.L32:
  92 0016 04AF     		add	r7, sp, #16
  93 0018 1D46     		mov	r5, r3
  94 001a 0023     		movs	r3, #0
  95 001c 07F80D3D 		strb	r3, [r7, #-13]!
  96 0020 2946     		mov	r1, r5
  97 0022 1446     		mov	r4, r2
  98 0024 3A46     		mov	r2, r7
  99 0026 0646     		mov	r6, r0
 100 0028 FFF7FEFF 		bl	_ZN17TemperatureSensor22TryConfigureHeaterNameER11GCodeBufferRb
 101 002c 4621     		movs	r1, #70
 102 002e 2846     		mov	r0, r5
 103 0030 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 104 0034 0028     		cmp	r0, #0
 105 0036 41D1     		bne	.L33
 106              	.L12:
 107 0038 0DF11008 		add	r8, sp, #16
 108 003c 0023     		movs	r3, #0
 109 003e 08F80C3D 		strb	r3, [r8, #-12]!
 110 0042 02AA     		add	r2, sp, #8
 111 0044 3B46     		mov	r3, r7
 112 0046 5421     		movs	r1, #84
 113 0048 0327     		movs	r7, #3
 114 004a 2846     		mov	r0, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgKdsJf.s 			page 3


 115 004c CDE90287 		strd	r8, r7, [sp, #8]
 116 0050 FFF7FEFF 		bl	_ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb
 117 0054 F0B9     		cbnz	r0, .L34
 118              	.L14:
 119 0056 9DF80330 		ldrb	r3, [sp, #3]	@ zero_extendqisi2
 120 005a 002B     		cmp	r3, #0
 121 005c D7D1     		bne	.L20
 122 005e 2846     		mov	r0, r5
 123 0060 5821     		movs	r1, #88
 124 0062 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 125 0066 0028     		cmp	r0, #0
 126 0068 D1D1     		bne	.L20
 127 006a 2146     		mov	r1, r4
 128 006c 0A9A     		ldr	r2, [sp, #40]
 129 006e 3046     		mov	r0, r6
 130 0070 FFF7FEFF 		bl	_ZNK17TemperatureSensor22CopyBasicHeaterDetailsEjRK9StringRef
 131 0074 96F82130 		ldrb	r3, [r6, #33]	@ zero_extendqisi2
 132 0078 96F82220 		ldrb	r2, [r6, #34]	@ zero_extendqisi2
 133 007c 1B48     		ldr	r0, .L35
 134 007e 1C49     		ldr	r1, .L35+4
 135 0080 825C     		ldrb	r2, [r0, r2]	@ zero_extendqisi2
 136 0082 0A98     		ldr	r0, [sp, #40]
 137 0084 13F0010F 		tst	r3, #1
 138 0088 14BF     		ite	ne
 139 008a 3223     		movne	r3, #50
 140 008c 3C23     		moveq	r3, #60
 141 008e FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 142 0092 BCE7     		b	.L20
 143              	.L34:
 144 0094 4046     		mov	r0, r8
 145 0096 0221     		movs	r1, #2
 146 0098 FFF7FEFF 		bl	_Z7StrnlenPKcj
 147 009c 0128     		cmp	r0, #1
 148 009e 1ED1     		bne	.L15
 149 00a0 9DF80400 		ldrb	r0, [sp, #4]	@ zero_extendqisi2
 150 00a4 114F     		ldr	r7, .L35
 151 00a6 FFF7FEFF 		bl	toupper
 152 00aa 0146     		mov	r1, r0
 153 00ac 3846     		mov	r0, r7
 154 00ae FFF7FEFF 		bl	strchr
 155 00b2 A0B1     		cbz	r0, .L15
 156 00b4 C01B     		subs	r0, r0, r7
 157 00b6 86F82200 		strb	r0, [r6, #34]
 158 00ba CCE7     		b	.L14
 159              	.L33:
 160 00bc 0123     		movs	r3, #1
 161 00be 2846     		mov	r0, r5
 162 00c0 8DF80330 		strb	r3, [sp, #3]
 163 00c4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 164 00c8 96F82130 		ldrb	r3, [r6, #33]	@ zero_extendqisi2
 165 00cc 3C28     		cmp	r0, #60
 166 00ce 0CBF     		ite	eq
 167 00d0 23F00103 		biceq	r3, r3, #1
 168 00d4 43F00103 		orrne	r3, r3, #1
 169 00d8 86F82130 		strb	r3, [r6, #33]
 170 00dc ACE7     		b	.L12
 171              	.L15:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgKdsJf.s 			page 4


 172 00de 0549     		ldr	r1, .L35+8
 173 00e0 0A98     		ldr	r0, [sp, #40]
 174 00e2 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 175 00e6 0220     		movs	r0, #2
 176 00e8 92E7     		b	.L11
 177              	.L36:
 178 00ea 00BF     		.align	2
 179              	.L35:
 180 00ec 00000000 		.word	.LC0
 181 00f0 3C000000 		.word	.LC2
 182 00f4 0C000000 		.word	.LC1
 183              		.size	_ZN23ThermocoupleSensor318569ConfigureEjjR11GCodeBufferRK9StringRef, .-_ZN23ThermocoupleSens
 184              		.section	.text._ZN23ThermocoupleSensor31856C2Ej,"ax",%progbits
 185              		.align	1
 186              		.p2align 2,,3
 187              		.global	_ZN23ThermocoupleSensor31856C2Ej
 188              		.syntax unified
 189              		.thumb
 190              		.thumb_func
 191              		.fpu fpv4-sp-d16
 192              		.type	_ZN23ThermocoupleSensor31856C2Ej, %function
 193              	_ZN23ThermocoupleSensor31856C2Ej:
 194              		@ args = 0, pretend = 0, frame = 0
 195              		@ frame_needed = 0, uses_anonymous_args = 0
 196 0000 10B5     		push	{r4, lr}
 197 0002 0B4A     		ldr	r2, .L39
 198 0004 82B0     		sub	sp, sp, #8
 199 0006 0123     		movs	r3, #1
 200 0008 CDE90032 		strd	r3, r2, [sp]
 201 000c A1F19603 		sub	r3, r1, #150
 202 0010 084A     		ldr	r2, .L39+4
 203 0012 0446     		mov	r4, r0
 204 0014 FFF7FEFF 		bl	_ZN20SpiTemperatureSensorC2EjPKcjhm
 205 0018 074B     		ldr	r3, .L39+8
 206 001a 2360     		str	r3, [r4]
 207 001c 9722     		movs	r2, #151
 208 001e 0323     		movs	r3, #3
 209 0020 2046     		mov	r0, r4
 210 0022 84F82120 		strb	r2, [r4, #33]
 211 0026 84F82230 		strb	r3, [r4, #34]
 212 002a 02B0     		add	sp, sp, #8
 213              		@ sp needed
 214 002c 10BD     		pop	{r4, pc}
 215              	.L40:
 216 002e 00BF     		.align	2
 217              	.L39:
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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgKdsJf.s 			page 5


 229              		.thumb
 230              		.thumb_func
 231              		.fpu fpv4-sp-d16
 232              		.type	_ZNK23ThermocoupleSensor3185619TryInitThermocoupleEv, %function
 233              	_ZNK23ThermocoupleSensor3185619TryInitThermocoupleEv:
 234              		@ args = 0, pretend = 0, frame = 8
 235              		@ frame_needed = 0, uses_anonymous_args = 0
 236 0000 30B5     		push	{r4, r5, lr}
 237 0002 90F82220 		ldrb	r2, [r0, #34]	@ zero_extendqisi2
 238 0006 90F82130 		ldrb	r3, [r0, #33]	@ zero_extendqisi2
 239 000a 83B0     		sub	sp, sp, #12
 240 000c 42F02002 		orr	r2, r2, #32
 241 0010 8021     		movs	r1, #128
 242 0012 8DF80130 		strb	r3, [sp, #1]
 243 0016 3C25     		movs	r5, #60
 244 0018 8DF80220 		strb	r2, [sp, #2]
 245 001c 8DF80010 		strb	r1, [sp]
 246 0020 01AB     		add	r3, sp, #4
 247 0022 0422     		movs	r2, #4
 248 0024 6946     		mov	r1, sp
 249 0026 0446     		mov	r4, r0
 250 0028 8DF80350 		strb	r5, [sp, #3]
 251 002c FFF7FEFF 		bl	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm
 252 0030 08B1     		cbz	r0, .L46
 253              	.L42:
 254 0032 03B0     		add	sp, sp, #12
 255              		@ sp needed
 256 0034 30BD     		pop	{r4, r5, pc}
 257              	.L46:
 258 0036 01AB     		add	r3, sp, #4
 259 0038 2046     		mov	r0, r4
 260 003a 0422     		movs	r2, #4
 261 003c 0B49     		ldr	r1, .L47
 262 003e FFF7FEFF 		bl	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm
 263 0042 0028     		cmp	r0, #0
 264 0044 F5D1     		bne	.L42
 265 0046 9DF80230 		ldrb	r3, [sp, #2]	@ zero_extendqisi2
 266 004a 9DF80150 		ldrb	r5, [sp, #1]	@ zero_extendqisi2
 267 004e 9DF80340 		ldrb	r4, [sp, #3]	@ zero_extendqisi2
 268 0052 0199     		ldr	r1, [sp, #4]
 269 0054 064A     		ldr	r2, .L47+4
 270 0056 1B02     		lsls	r3, r3, #8
 271 0058 43EA0543 		orr	r3, r3, r5, lsl #16
 272 005c 2343     		orrs	r3, r3, r4
 273 005e 4B40     		eors	r3, r3, r1
 274 0060 1A40     		ands	r2, r2, r3
 275 0062 002A     		cmp	r2, #0
 276 0064 18BF     		it	ne
 277 0066 0920     		movne	r0, #9
 278 0068 03B0     		add	sp, sp, #12
 279              		@ sp needed
 280 006a 30BD     		pop	{r4, r5, pc}
 281              	.L48:
 282              		.align	2
 283              	.L47:
 284 006c 00000000 		.word	.LANCHOR1
 285 0070 3F7FBD00 		.word	12418879
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgKdsJf.s 			page 6


 286              		.size	_ZNK23ThermocoupleSensor3185619TryInitThermocoupleEv, .-_ZNK23ThermocoupleSensor3185619TryIn
 287              		.section	.text._ZN23ThermocoupleSensor318564InitEv,"ax",%progbits
 288              		.align	1
 289              		.p2align 2,,3
 290              		.global	_ZN23ThermocoupleSensor318564InitEv
 291              		.syntax unified
 292              		.thumb
 293              		.thumb_func
 294              		.fpu fpv4-sp-d16
 295              		.type	_ZN23ThermocoupleSensor318564InitEv, %function
 296              	_ZN23ThermocoupleSensor318564InitEv:
 297              		@ args = 0, pretend = 0, frame = 0
 298              		@ frame_needed = 0, uses_anonymous_args = 0
 299 0000 70B5     		push	{r4, r5, r6, lr}
 300 0002 0646     		mov	r6, r0
 301 0004 FFF7FEFF 		bl	_ZN20SpiTemperatureSensor7InitSpiEv
 302 0008 0324     		movs	r4, #3
 303              	.L52:
 304 000a 3046     		mov	r0, r6
 305 000c FFF7FEFF 		bl	_ZNK23ThermocoupleSensor3185619TryInitThermocoupleEv
 306 0010 0546     		mov	r5, r0
 307 0012 C8B1     		cbz	r0, .L50
 308 0014 6420     		movs	r0, #100
 309 0016 FFF7FEFF 		bl	_Z5delaym
 310 001a 013C     		subs	r4, r4, #1
 311 001c F5D1     		bne	.L52
 312 001e FFF7FEFF 		bl	millis
 313 0022 0D4A     		ldr	r2, .L55
 314 0024 B061     		str	r0, [r6, #24]
 315 0026 0023     		movs	r3, #0
 316 0028 F361     		str	r3, [r6, #28]	@ float
 317 002a 86F82050 		strb	r5, [r6, #32]
 318 002e 2846     		mov	r0, r5
 319 0030 5468     		ldr	r4, [r2, #4]	@ unaligned
 320 0032 FFF7FEFF 		bl	_Z22TemperatureErrorString16TemperatureError
 321 0036 094A     		ldr	r2, .L55+4
 322 0038 0346     		mov	r3, r0
 323 003a 40F2B511 		movw	r1, #437
 324 003e 2046     		mov	r0, r4
 325 0040 BDE87040 		pop	{r4, r5, r6, lr}
 326 0044 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 327              	.L50:
 328 0048 FFF7FEFF 		bl	millis
 329 004c 0023     		movs	r3, #0
 330 004e B061     		str	r0, [r6, #24]
 331 0050 86F82050 		strb	r5, [r6, #32]
 332 0054 F361     		str	r3, [r6, #28]	@ float
 333 0056 70BD     		pop	{r4, r5, r6, pc}
 334              	.L56:
 335              		.align	2
 336              	.L55:
 337 0058 00000000 		.word	reprap
 338 005c 00000000 		.word	.LC4
 339              		.size	_ZN23ThermocoupleSensor318564InitEv, .-_ZN23ThermocoupleSensor318564InitEv
 340              		.section	.text._ZN23ThermocoupleSensor3185614GetTemperatureERf,"ax",%progbits
 341              		.align	1
 342              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgKdsJf.s 			page 7


 343              		.global	_ZN23ThermocoupleSensor3185614GetTemperatureERf
 344              		.syntax unified
 345              		.thumb
 346              		.thumb_func
 347              		.fpu fpv4-sp-d16
 348              		.type	_ZN23ThermocoupleSensor3185614GetTemperatureERf, %function
 349              	_ZN23ThermocoupleSensor3185614GetTemperatureERf:
 350              		@ args = 0, pretend = 0, frame = 8
 351              		@ frame_needed = 0, uses_anonymous_args = 0
 352 0000 70B5     		push	{r4, r5, r6, lr}
 353 0002 82B0     		sub	sp, sp, #8
 354 0004 0446     		mov	r4, r0
 355 0006 0E46     		mov	r6, r1
 356 0008 FFF7FEFF 		bl	_Z11inInterruptv
 357 000c 30B1     		cbz	r0, .L58
 358              	.L60:
 359 000e E369     		ldr	r3, [r4, #28]	@ float
 360 0010 94F82050 		ldrb	r5, [r4, #32]	@ zero_extendqisi2
 361 0014 3360     		str	r3, [r6]	@ float
 362              	.L59:
 363 0016 2846     		mov	r0, r5
 364 0018 02B0     		add	sp, sp, #8
 365              		@ sp needed
 366 001a 70BD     		pop	{r4, r5, r6, pc}
 367              	.L58:
 368 001c FFF7FEFF 		bl	millis
 369 0020 A369     		ldr	r3, [r4, #24]
 370 0022 C01A     		subs	r0, r0, r3
 371 0024 6328     		cmp	r0, #99
 372 0026 F2D9     		bls	.L60
 373 0028 01AB     		add	r3, sp, #4
 374 002a 0522     		movs	r2, #5
 375 002c 1A49     		ldr	r1, .L69
 376 002e 2046     		mov	r0, r4
 377 0030 FFF7FEFF 		bl	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm
 378 0034 0546     		mov	r5, r0
 379 0036 20B1     		cbz	r0, .L61
 380              	.L68:
 381 0038 2846     		mov	r0, r5
 382 003a 84F82050 		strb	r5, [r4, #32]
 383 003e 02B0     		add	sp, sp, #8
 384              		@ sp needed
 385 0040 70BD     		pop	{r4, r5, r6, pc}
 386              	.L61:
 387 0042 FFF7FEFF 		bl	millis
 388 0046 019B     		ldr	r3, [sp, #4]
 389 0048 A061     		str	r0, [r4, #24]
 390 004a 13F0FF0F 		tst	r3, #255
 391 004e 16D0     		beq	.L63
 392 0050 9A07     		lsls	r2, r3, #30
 393 0052 1ED4     		bmi	.L65
 394 0054 13F0010F 		tst	r3, #1
 395 0058 0CBF     		ite	eq
 396 005a 0721     		moveq	r1, #7
 397 005c 0421     		movne	r1, #4
 398              	.L64:
 399 005e 0F4B     		ldr	r3, .L69+4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgKdsJf.s 			page 8


 400 0060 0F4A     		ldr	r2, .L69+8
 401 0062 1B68     		ldr	r3, [r3]
 402 0064 84F82010 		strb	r1, [r4, #32]
 403 0068 A2FB0323 		umull	r2, r3, r2, r3
 404 006c 9B0C     		lsrs	r3, r3, #18
 405              		.syntax unified
 406              	@ 88 "C:\Eclipse\Firmware\CoreNG\cores\arduino/wiring.h" 1
 407              		L_450_delayMicroseconds:
 408 006e 013B     		subs   r3, #1
 409 0070 FDD1     		bne    L_450_delayMicroseconds
 410              	
 411              	@ 0 "" 2
 412              		.thumb
 413              		.syntax unified
 414 0072 2046     		mov	r0, r4
 415 0074 FFF7FEFF 		bl	_ZNK23ThermocoupleSensor3185619TryInitThermocoupleEv
 416 0078 94F82050 		ldrb	r5, [r4, #32]	@ zero_extendqisi2
 417 007c CBE7     		b	.L59
 418              	.L63:
 419 007e 1B14     		asrs	r3, r3, #16
 420 0080 07EE903A 		vmov	s15, r3	@ int
 421 0084 FAEECE7A 		vcvt.f32.s32	s15, s15, #4
 422 0088 C4ED077A 		vstr.32	s15, [r4, #28]
 423 008c C6ED007A 		vstr.32	s15, [r6]
 424 0090 D2E7     		b	.L68
 425              	.L65:
 426 0092 0D21     		movs	r1, #13
 427 0094 E3E7     		b	.L64
 428              	.L70:
 429 0096 00BF     		.align	2
 430              	.L69:
 431 0098 00000000 		.word	.LANCHOR2
 432 009c 00000000 		.word	SystemCoreClock
 433 00a0 819F5E16 		.word	375299969
 434              		.size	_ZN23ThermocoupleSensor3185614GetTemperatureERf, .-_ZN23ThermocoupleSensor3185614GetTemperat
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
 448              		.global	_ZTV23ThermocoupleSensor31856
 449              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 450              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 451              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 452              	_ZL28cpu_irq_prev_interrupt_state:
 453 0000 00       		.space	1
 454              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 455              		.align	2
 456              		.type	_ZL32cpu_irq_critical_section_counter, %object
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgKdsJf.s 			page 9


 457              		.size	_ZL32cpu_irq_critical_section_counter, 4
 458              	_ZL32cpu_irq_critical_section_counter:
 459 0000 00000000 		.space	4
 460              		.section	.rodata._ZN23ThermocoupleSensor318564InitEv.str1.4,"aMS",%progbits,1
 461              		.align	2
 462              	.LC4:
 463 0000 4661696C 		.ascii	"Failed to initialise thermocouple: %s\012\000"
 463      65642074 
 463      6F20696E 
 463      69746961 
 463      6C697365 
 464              		.section	.rodata._ZN23ThermocoupleSensor318569ConfigureEjjR11GCodeBufferRK9StringRef.str1.4,"aMS",
 465              		.align	2
 466              	.LC0:
 467 0000 42454A4B 		.ascii	"BEJKNRST\000"
 467      4E525354 
 467      00
 468 0009 000000   		.space	3
 469              	.LC1:
 470 000c 42616420 		.ascii	"Bad thermocouple type letter in M305 command\000"
 470      74686572 
 470      6D6F636F 
 470      75706C65 
 470      20747970 
 471 0039 000000   		.space	3
 472              	.LC2:
 473 003c 2C207468 		.ascii	", thermocouple type %c, reject %dHz\000"
 473      65726D6F 
 473      636F7570 
 473      6C652074 
 473      79706520 
 474              		.section	.rodata._ZN23ThermocoupleSensor31856C2Ej.str1.4,"aMS",%progbits,1
 475              		.align	2
 476              	.LC3:
 477 0000 54686572 		.ascii	"Thermocouple (MAX31856)\000"
 477      6D6F636F 
 477      75706C65 
 477      20284D41 
 477      58333138 
 478              		.section	.rodata._ZTV23ThermocoupleSensor31856,"a",%progbits
 479              		.align	2
 480              		.set	.LANCHOR0,. + 0
 481              		.type	_ZTV23ThermocoupleSensor31856, %object
 482              		.size	_ZTV23ThermocoupleSensor31856, 28
 483              	_ZTV23ThermocoupleSensor31856:
 484 0000 00000000 		.word	0
 485 0004 00000000 		.word	0
 486 0008 00000000 		.word	_ZN23ThermocoupleSensor318569ConfigureEjjR11GCodeBufferRK9StringRef
 487 000c 00000000 		.word	_ZN23ThermocoupleSensor318564InitEv
 488 0010 00000000 		.word	_ZN23ThermocoupleSensor3185614GetTemperatureERf
 489 0014 00000000 		.word	_ZN23ThermocoupleSensor31856D1Ev
 490 0018 00000000 		.word	_ZN23ThermocoupleSensor31856D0Ev
 491              		.section	.rodata._ZZN23ThermocoupleSensor3185614GetTemperatureERfE7dataOut,"a",%progbits
 492              		.align	2
 493              		.set	.LANCHOR2,. + 0
 494              		.type	_ZZN23ThermocoupleSensor3185614GetTemperatureERfE7dataOut, %object
 495              		.size	_ZZN23ThermocoupleSensor3185614GetTemperatureERfE7dataOut, 5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgKdsJf.s 			page 10


 496              	_ZZN23ThermocoupleSensor3185614GetTemperatureERfE7dataOut:
 497 0000 0C       		.byte	12
 498 0001 55       		.byte	85
 499 0002 55       		.byte	85
 500 0003 55       		.byte	85
 501 0004 55       		.byte	85
 502              		.section	.rodata._ZZNK23ThermocoupleSensor3185619TryInitThermocoupleEvE8readData,"a",%progbits
 503              		.align	2
 504              		.set	.LANCHOR1,. + 0
 505              		.type	_ZZNK23ThermocoupleSensor3185619TryInitThermocoupleEvE8readData, %object
 506              		.size	_ZZNK23ThermocoupleSensor3185619TryInitThermocoupleEvE8readData, 4
 507              	_ZZNK23ThermocoupleSensor3185619TryInitThermocoupleEvE8readData:
 508 0000 00000000 		.space	4
 509              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
