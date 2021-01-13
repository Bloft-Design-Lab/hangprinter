ARM GAS  /tmp/ccy8GKFI.s 			page 1


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
  11              		.file	"TemperatureSensor.cpp"
  12              		.section	.text._ZN17TemperatureSensorC2EjPKc,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN17TemperatureSensorC2EjPKc
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN17TemperatureSensorC2EjPKc, %function
  21              	_ZN17TemperatureSensorC2EjPKc:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 30B4     		push	{r4, r5}
  26 0002 0024     		movs	r4, #0
  27 0004 034D     		ldr	r5, .L3
  28 0006 C460     		str	r4, [r0, #12]
  29 0008 0560     		str	r5, [r0]
  30 000a 4160     		str	r1, [r0, #4]
  31 000c 8260     		str	r2, [r0, #8]
  32 000e 30BC     		pop	{r4, r5}
  33 0010 7047     		bx	lr
  34              	.L4:
  35 0012 00BF     		.align	2
  36              	.L3:
  37 0014 08000000 		.word	.LANCHOR0+8
  38              		.size	_ZN17TemperatureSensorC2EjPKc, .-_ZN17TemperatureSensorC2EjPKc
  39              		.global	_ZN17TemperatureSensorC1EjPKc
  40              		.thumb_set _ZN17TemperatureSensorC1EjPKc,_ZN17TemperatureSensorC2EjPKc
  41              		.section	.text._ZN17TemperatureSensorD2Ev,"ax",%progbits
  42              		.align	1
  43              		.p2align 2,,3
  44              		.global	_ZN17TemperatureSensorD2Ev
  45              		.syntax unified
  46              		.thumb
  47              		.thumb_func
  48              		.fpu softvfp
  49              		.type	_ZN17TemperatureSensorD2Ev, %function
  50              	_ZN17TemperatureSensorD2Ev:
  51              		@ args = 0, pretend = 0, frame = 0
  52              		@ frame_needed = 0, uses_anonymous_args = 0
  53 0000 10B5     		push	{r4, lr}
  54 0002 0446     		mov	r4, r0
  55 0004 034B     		ldr	r3, .L7
  56 0006 C068     		ldr	r0, [r0, #12]
  57 0008 0121     		movs	r1, #1
ARM GAS  /tmp/ccy8GKFI.s 			page 2


  58 000a 2360     		str	r3, [r4]
  59 000c FFF7FEFF 		bl	_ZdlPvj
  60 0010 2046     		mov	r0, r4
  61 0012 10BD     		pop	{r4, pc}
  62              	.L8:
  63              		.align	2
  64              	.L7:
  65 0014 08000000 		.word	.LANCHOR0+8
  66              		.size	_ZN17TemperatureSensorD2Ev, .-_ZN17TemperatureSensorD2Ev
  67              		.global	_ZN17TemperatureSensorD1Ev
  68              		.thumb_set _ZN17TemperatureSensorD1Ev,_ZN17TemperatureSensorD2Ev
  69              		.section	.text._ZN17TemperatureSensorD0Ev,"ax",%progbits
  70              		.align	1
  71              		.p2align 2,,3
  72              		.global	_ZN17TemperatureSensorD0Ev
  73              		.syntax unified
  74              		.thumb
  75              		.thumb_func
  76              		.fpu softvfp
  77              		.type	_ZN17TemperatureSensorD0Ev, %function
  78              	_ZN17TemperatureSensorD0Ev:
  79              		@ args = 0, pretend = 0, frame = 0
  80              		@ frame_needed = 0, uses_anonymous_args = 0
  81 0000 10B5     		push	{r4, lr}
  82 0002 0446     		mov	r4, r0
  83 0004 054B     		ldr	r3, .L11
  84 0006 C068     		ldr	r0, [r0, #12]
  85 0008 0121     		movs	r1, #1
  86 000a 2360     		str	r3, [r4]
  87 000c FFF7FEFF 		bl	_ZdlPvj
  88 0010 2046     		mov	r0, r4
  89 0012 1021     		movs	r1, #16
  90 0014 FFF7FEFF 		bl	_ZdlPvj
  91 0018 2046     		mov	r0, r4
  92 001a 10BD     		pop	{r4, pc}
  93              	.L12:
  94              		.align	2
  95              	.L11:
  96 001c 08000000 		.word	.LANCHOR0+8
  97              		.size	_ZN17TemperatureSensorD0Ev, .-_ZN17TemperatureSensorD0Ev
  98              		.section	.text._ZN17TemperatureSensor13SetHeaterNameEPKc,"ax",%progbits
  99              		.align	1
 100              		.p2align 2,,3
 101              		.global	_ZN17TemperatureSensor13SetHeaterNameEPKc
 102              		.syntax unified
 103              		.thumb
 104              		.thumb_func
 105              		.fpu softvfp
 106              		.type	_ZN17TemperatureSensor13SetHeaterNameEPKc, %function
 107              	_ZN17TemperatureSensor13SetHeaterNameEPKc:
 108              		@ args = 0, pretend = 0, frame = 0
 109              		@ frame_needed = 0, uses_anonymous_args = 0
 110 0000 38B5     		push	{r3, r4, r5, lr}
 111 0002 0546     		mov	r5, r0
 112 0004 0023     		movs	r3, #0
 113 0006 0C46     		mov	r4, r1
 114 0008 C068     		ldr	r0, [r0, #12]
ARM GAS  /tmp/ccy8GKFI.s 			page 3


 115 000a 0121     		movs	r1, #1
 116 000c EB60     		str	r3, [r5, #12]
 117 000e FFF7FEFF 		bl	_ZdlPvj
 118 0012 5CB1     		cbz	r4, .L13
 119 0014 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 120 0016 4BB1     		cbz	r3, .L13
 121 0018 2046     		mov	r0, r4
 122 001a FFF7FEFF 		bl	strlen
 123 001e 0130     		adds	r0, r0, #1
 124 0020 FFF7FEFF 		bl	_Znaj
 125 0024 2146     		mov	r1, r4
 126 0026 FFF7FEFF 		bl	strcpy
 127 002a E860     		str	r0, [r5, #12]
 128              	.L13:
 129 002c 38BD     		pop	{r3, r4, r5, pc}
 130              		.size	_ZN17TemperatureSensor13SetHeaterNameEPKc, .-_ZN17TemperatureSensor13SetHeaterNameEPKc
 131 002e 00BF     		.section	.text._ZNK17TemperatureSensor22CopyBasicHeaterDetailsEjRK9StringRef,"ax",%progbits
 132              		.align	1
 133              		.p2align 2,,3
 134              		.global	_ZNK17TemperatureSensor22CopyBasicHeaterDetailsEjRK9StringRef
 135              		.syntax unified
 136              		.thumb
 137              		.thumb_func
 138              		.fpu softvfp
 139              		.type	_ZNK17TemperatureSensor22CopyBasicHeaterDetailsEjRK9StringRef, %function
 140              	_ZNK17TemperatureSensor22CopyBasicHeaterDetailsEjRK9StringRef:
 141              		@ args = 0, pretend = 0, frame = 0
 142              		@ frame_needed = 0, uses_anonymous_args = 0
 143 0000 70B5     		push	{r4, r5, r6, lr}
 144 0002 1546     		mov	r5, r2
 145 0004 0446     		mov	r4, r0
 146 0006 0A46     		mov	r2, r1
 147 0008 2846     		mov	r0, r5
 148 000a 0849     		ldr	r1, .L29
 149 000c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 150 0010 E268     		ldr	r2, [r4, #12]
 151 0012 1AB1     		cbz	r2, .L24
 152 0014 0649     		ldr	r1, .L29+4
 153 0016 2846     		mov	r0, r5
 154 0018 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 155              	.L24:
 156 001c 2846     		mov	r0, r5
 157 001e 6368     		ldr	r3, [r4, #4]
 158 0020 A268     		ldr	r2, [r4, #8]
 159 0022 0449     		ldr	r1, .L29+8
 160 0024 BDE87040 		pop	{r4, r5, r6, lr}
 161 0028 FFF7FEBF 		b	_ZNK9StringRef4catfEPKcz
 162              	.L30:
 163              		.align	2
 164              	.L29:
 165 002c 00000000 		.word	.LC0
 166 0030 0C000000 		.word	.LC1
 167 0034 14000000 		.word	.LC2
 168              		.size	_ZNK17TemperatureSensor22CopyBasicHeaterDetailsEjRK9StringRef, .-_ZNK17TemperatureSensor22Co
 169              		.section	.text._ZN17TemperatureSensor22TryConfigureHeaterNameER11GCodeBufferRb,"ax",%progbits
 170              		.align	1
 171              		.p2align 2,,3
ARM GAS  /tmp/ccy8GKFI.s 			page 4


 172              		.global	_ZN17TemperatureSensor22TryConfigureHeaterNameER11GCodeBufferRb
 173              		.syntax unified
 174              		.thumb
 175              		.thumb_func
 176              		.fpu softvfp
 177              		.type	_ZN17TemperatureSensor22TryConfigureHeaterNameER11GCodeBufferRb, %function
 178              	_ZN17TemperatureSensor22TryConfigureHeaterNameER11GCodeBufferRb:
 179              		@ args = 0, pretend = 0, frame = 40
 180              		@ frame_needed = 0, uses_anonymous_args = 0
 181 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 182 0004 0024     		movs	r4, #0
 183 0006 1526     		movs	r6, #21
 184 0008 8AB0     		sub	sp, sp, #40
 185 000a 0DF10703 		add	r3, sp, #7
 186 000e 8046     		mov	r8, r0
 187 0010 1746     		mov	r7, r2
 188 0012 0846     		mov	r0, r1
 189 0014 04AD     		add	r5, sp, #16
 190 0016 02AA     		add	r2, sp, #8
 191 0018 5321     		movs	r1, #83
 192 001a 8DF81040 		strb	r4, [sp, #16]
 193 001e 8DF80740 		strb	r4, [sp, #7]
 194 0022 0396     		str	r6, [sp, #12]
 195 0024 0295     		str	r5, [sp, #8]
 196 0026 FFF7FEFF 		bl	_ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb
 197 002a 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
 198 002e 2BB1     		cbz	r3, .L31
 199 0030 2946     		mov	r1, r5
 200 0032 4046     		mov	r0, r8
 201 0034 FFF7FEFF 		bl	_ZN17TemperatureSensor13SetHeaterNameEPKc
 202 0038 0123     		movs	r3, #1
 203 003a 3B70     		strb	r3, [r7]
 204              	.L31:
 205 003c 0AB0     		add	sp, sp, #40
 206              		@ sp needed
 207 003e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 208              		.size	_ZN17TemperatureSensor22TryConfigureHeaterNameER11GCodeBufferRb, .-_ZN17TemperatureSensor22T
 209 0042 00BF     		.section	.text._ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef,"ax",%progbits
 210              		.align	1
 211              		.p2align 2,,3
 212              		.global	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef
 213              		.syntax unified
 214              		.thumb
 215              		.thumb_func
 216              		.fpu softvfp
 217              		.type	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef, %function
 218              	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef:
 219              		@ args = 4, pretend = 0, frame = 8
 220              		@ frame_needed = 0, uses_anonymous_args = 0
 221 0000 70B5     		push	{r4, r5, r6, lr}
 222 0002 40F23114 		movw	r4, #305
 223 0006 0025     		movs	r5, #0
 224 0008 82B0     		sub	sp, sp, #8
 225 000a A142     		cmp	r1, r4
 226 000c 8DF80750 		strb	r5, [sp, #7]
 227 0010 02D0     		beq	.L44
 228              	.L42:
ARM GAS  /tmp/ccy8GKFI.s 			page 5


 229 0012 0120     		movs	r0, #1
 230 0014 02B0     		add	sp, sp, #8
 231              		@ sp needed
 232 0016 70BD     		pop	{r4, r5, r6, pc}
 233              	.L44:
 234 0018 1946     		mov	r1, r3
 235 001a 1646     		mov	r6, r2
 236 001c 0DF10702 		add	r2, sp, #7
 237 0020 1C46     		mov	r4, r3
 238 0022 0546     		mov	r5, r0
 239 0024 FFF7FEFF 		bl	_ZN17TemperatureSensor22TryConfigureHeaterNameER11GCodeBufferRb
 240 0028 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
 241 002c 002B     		cmp	r3, #0
 242 002e F0D1     		bne	.L42
 243 0030 2046     		mov	r0, r4
 244 0032 5821     		movs	r1, #88
 245 0034 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 246 0038 0028     		cmp	r0, #0
 247 003a EAD1     		bne	.L42
 248 003c 3146     		mov	r1, r6
 249 003e 2846     		mov	r0, r5
 250 0040 069A     		ldr	r2, [sp, #24]
 251 0042 FFF7FEFF 		bl	_ZNK17TemperatureSensor22CopyBasicHeaterDetailsEjRK9StringRef
 252 0046 E4E7     		b	.L42
 253              		.size	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef, .-_ZN17TemperatureSensor9Conf
 254              		.section	.text._ZN17TemperatureSensor6CreateEj,"ax",%progbits
 255              		.align	1
 256              		.p2align 2,,3
 257              		.global	_ZN17TemperatureSensor6CreateEj
 258              		.syntax unified
 259              		.thumb
 260              		.thumb_func
 261              		.fpu softvfp
 262              		.type	_ZN17TemperatureSensor6CreateEj, %function
 263              	_ZN17TemperatureSensor6CreateEj:
 264              		@ args = 0, pretend = 0, frame = 0
 265              		@ frame_needed = 0, uses_anonymous_args = 0
 266 0000 0328     		cmp	r0, #3
 267 0002 38B5     		push	{r3, r4, r5, lr}
 268 0004 0546     		mov	r5, r0
 269 0006 1BD9     		bls	.L55
 270 0008 A0F5FA73 		sub	r3, r0, #500
 271 000c 032B     		cmp	r3, #3
 272 000e 25D9     		bls	.L56
 273 0010 A0F16403 		sub	r3, r0, #100
 274 0014 012B     		cmp	r3, #1
 275 0016 2DD9     		bls	.L57
 276 0018 A0F19603 		sub	r3, r0, #150
 277 001c 012B     		cmp	r3, #1
 278 001e 31D9     		bls	.L58
 279 0020 A0F1C803 		sub	r3, r0, #200
 280 0024 012B     		cmp	r3, #1
 281 0026 35D9     		bls	.L59
 282 0028 A0F59673 		sub	r3, r0, #300
 283 002c 012B     		cmp	r3, #1
 284 002e 1ED8     		bhi	.L53
 285 0030 3420     		movs	r0, #52
ARM GAS  /tmp/ccy8GKFI.s 			page 6


 286 0032 FFF7FEFF 		bl	_Znwj
 287 0036 2946     		mov	r1, r5
 288 0038 0446     		mov	r4, r0
 289 003a FFF7FEFF 		bl	_ZN28CurrentLoopTemperatureSensorC1Ej
 290 003e 07E0     		b	.L47
 291              	.L55:
 292 0040 3020     		movs	r0, #48
 293 0042 FFF7FEFF 		bl	_Znwj
 294 0046 2946     		mov	r1, r5
 295 0048 0022     		movs	r2, #0
 296 004a 0446     		mov	r4, r0
 297 004c FFF7FEFF 		bl	_ZN10ThermistorC1Ejb
 298              	.L47:
 299 0050 2368     		ldr	r3, [r4]
 300 0052 2046     		mov	r0, r4
 301 0054 5B68     		ldr	r3, [r3, #4]
 302 0056 9847     		blx	r3
 303 0058 2046     		mov	r0, r4
 304 005a 38BD     		pop	{r3, r4, r5, pc}
 305              	.L56:
 306 005c 3020     		movs	r0, #48
 307 005e FFF7FEFF 		bl	_Znwj
 308 0062 2946     		mov	r1, r5
 309 0064 0122     		movs	r2, #1
 310 0066 0446     		mov	r4, r0
 311 0068 FFF7FEFF 		bl	_ZN10ThermistorC1Ejb
 312 006c F0E7     		b	.L47
 313              	.L53:
 314 006e 0024     		movs	r4, #0
 315 0070 2046     		mov	r0, r4
 316 0072 38BD     		pop	{r3, r4, r5, pc}
 317              	.L57:
 318 0074 2420     		movs	r0, #36
 319 0076 FFF7FEFF 		bl	_Znwj
 320 007a 2946     		mov	r1, r5
 321 007c 0446     		mov	r4, r0
 322 007e FFF7FEFF 		bl	_ZN23ThermocoupleSensor31855C1Ej
 323 0082 E5E7     		b	.L47
 324              	.L58:
 325 0084 2420     		movs	r0, #36
 326 0086 FFF7FEFF 		bl	_Znwj
 327 008a 2946     		mov	r1, r5
 328 008c 0446     		mov	r4, r0
 329 008e FFF7FEFF 		bl	_ZN23ThermocoupleSensor31856C1Ej
 330 0092 DDE7     		b	.L47
 331              	.L59:
 332 0094 2820     		movs	r0, #40
 333 0096 FFF7FEFF 		bl	_Znwj
 334 009a 2946     		mov	r1, r5
 335 009c 0446     		mov	r4, r0
 336 009e FFF7FEFF 		bl	_ZN14RtdSensor31865C1Ej
 337 00a2 D5E7     		b	.L47
 338              		.size	_ZN17TemperatureSensor6CreateEj, .-_ZN17TemperatureSensor6CreateEj
 339              		.global	__aeabi_i2f
 340              		.global	__aeabi_fdiv
 341              		.global	__aeabi_ui2f
 342              		.global	__aeabi_fadd
ARM GAS  /tmp/ccy8GKFI.s 			page 7


 343              		.global	__aeabi_fmul
 344              		.global	__aeabi_fsub
 345              		.section	.text._ZN17TemperatureSensor19GetPT100TemperatureERft,"ax",%progbits
 346              		.align	1
 347              		.p2align 2,,3
 348              		.global	_ZN17TemperatureSensor19GetPT100TemperatureERft
 349              		.syntax unified
 350              		.thumb
 351              		.thumb_func
 352              		.fpu softvfp
 353              		.type	_ZN17TemperatureSensor19GetPT100TemperatureERft, %function
 354              	_ZN17TemperatureSensor19GetPT100TemperatureERft:
 355              		@ args = 0, pretend = 0, frame = 0
 356              		@ frame_needed = 0, uses_anonymous_args = 0
 357 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 358 0004 45F6D253 		movw	r3, #24018
 359 0008 6025     		movs	r5, #96
 360 000a 0024     		movs	r4, #0
 361 000c 274E     		ldr	r6, .L77
 362              	.L67:
 363 000e 2A1B     		subs	r2, r5, r4
 364 0010 9942     		cmp	r1, r3
 365 0012 04EB5202 		add	r2, r4, r2, lsr #1
 366 0016 05DD     		ble	.L63
 367 0018 11E0     		b	.L75
 368              	.L72:
 369 001a 36F81350 		ldrh	r5, [r6, r3, lsl #1]
 370 001e 8D42     		cmp	r5, r1
 371 0020 0FDB     		blt	.L62
 372 0022 1A46     		mov	r2, r3
 373              	.L63:
 374 0024 131B     		subs	r3, r2, r4
 375 0026 A242     		cmp	r2, r4
 376 0028 04EB5303 		add	r3, r4, r3, lsr #1
 377 002c F5D8     		bhi	.L72
 378 002e 002C     		cmp	r4, #0
 379 0030 37D0     		beq	.L70
 380              	.L66:
 381 0032 5F2C     		cmp	r4, #95
 382 0034 0FD9     		bls	.L76
 383 0036 0423     		movs	r3, #4
 384 0038 1846     		mov	r0, r3
 385 003a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 386              	.L75:
 387 003e 1346     		mov	r3, r2
 388 0040 2A46     		mov	r2, r5
 389              	.L62:
 390 0042 5C1C     		adds	r4, r3, #1
 391 0044 9442     		cmp	r4, r2
 392 0046 F4D2     		bcs	.L66
 393 0048 131B     		subs	r3, r2, r4
 394 004a 04EB5303 		add	r3, r4, r3, lsr #1
 395 004e 36F81330 		ldrh	r3, [r6, r3, lsl #1]
 396 0052 1546     		mov	r5, r2
 397 0054 DBE7     		b	.L67
 398              	.L76:
 399 0056 DFF85480 		ldr	r8, .L77
ARM GAS  /tmp/ccy8GKFI.s 			page 8


 400 005a 661E     		subs	r6, r4, #1
 401 005c 38F81670 		ldrh	r7, [r8, r6, lsl #1]
 402 0060 0546     		mov	r5, r0
 403 0062 C81B     		subs	r0, r1, r7
 404 0064 FFF7FEFF 		bl	__aeabi_i2f
 405 0068 8146     		mov	r9, r0
 406 006a 38F81400 		ldrh	r0, [r8, r4, lsl #1]
 407 006e C01B     		subs	r0, r0, r7
 408 0070 FFF7FEFF 		bl	__aeabi_i2f
 409 0074 0146     		mov	r1, r0
 410 0076 4846     		mov	r0, r9
 411 0078 FFF7FEFF 		bl	__aeabi_fdiv
 412 007c 0446     		mov	r4, r0
 413 007e 3046     		mov	r0, r6
 414 0080 FFF7FEFF 		bl	__aeabi_ui2f
 415 0084 0146     		mov	r1, r0
 416 0086 2046     		mov	r0, r4
 417 0088 FFF7FEFF 		bl	__aeabi_fadd
 418 008c 0849     		ldr	r1, .L77+4
 419 008e FFF7FEFF 		bl	__aeabi_fmul
 420 0092 0849     		ldr	r1, .L77+8
 421 0094 FFF7FEFF 		bl	__aeabi_fsub
 422 0098 0023     		movs	r3, #0
 423 009a 2860     		str	r0, [r5]	@ float
 424 009c 1846     		mov	r0, r3
 425 009e BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 426              	.L70:
 427 00a2 0123     		movs	r3, #1
 428 00a4 1846     		mov	r0, r3
 429 00a6 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 430              	.L78:
 431 00aa 00BF     		.align	2
 432              	.L77:
 433 00ac 00000000 		.word	.LANCHOR1
 434 00b0 00002041 		.word	1092616192
 435 00b4 0000C842 		.word	1120403456
 436              		.size	_ZN17TemperatureSensor19GetPT100TemperatureERft, .-_ZN17TemperatureSensor19GetPT100Temperatu
 437              		.global	_ZTV17TemperatureSensor
 438              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 439              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 440              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 441              	_ZL28cpu_irq_prev_interrupt_state:
 442 0000 00       		.space	1
 443              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 444              		.align	2
 445              		.type	_ZL32cpu_irq_critical_section_counter, %object
 446              		.size	_ZL32cpu_irq_critical_section_counter, 4
 447              	_ZL32cpu_irq_critical_section_counter:
 448 0000 00000000 		.space	4
 449              		.section	.rodata._ZL9tempTable,"a",%progbits
 450              		.align	2
 451              		.set	.LANCHOR1,. + 0
 452              		.type	_ZL9tempTable, %object
 453              		.size	_ZL9tempTable, 192
 454              	_ZL9tempTable:
 455 0000 8A17     		.short	6026
 456 0002 1E19     		.short	6430
ARM GAS  /tmp/ccy8GKFI.s 			page 9


 457 0004 B11A     		.short	6833
 458 0006 411C     		.short	7233
 459 0008 D11D     		.short	7633
 460 000a 5F1F     		.short	8031
 461 000c EB20     		.short	8427
 462 000e 7622     		.short	8822
 463 0010 0024     		.short	9216
 464 0012 8925     		.short	9609
 465 0014 1027     		.short	10000
 466 0016 9628     		.short	10390
 467 0018 1B2A     		.short	10779
 468 001a 9F2B     		.short	11167
 469 001c 222D     		.short	11554
 470 001e A42E     		.short	11940
 471 0020 2430     		.short	12324
 472 0022 A431     		.short	12708
 473 0024 2233     		.short	13090
 474 0026 9F34     		.short	13471
 475 0028 1B36     		.short	13851
 476 002a 9537     		.short	14229
 477 002c 0F39     		.short	14607
 478 002e 873A     		.short	14983
 479 0030 FE3B     		.short	15358
 480 0032 753D     		.short	15733
 481 0034 E93E     		.short	16105
 482 0036 5D40     		.short	16477
 483 0038 D041     		.short	16848
 484 003a 4143     		.short	17217
 485 003c B244     		.short	17586
 486 003e 2146     		.short	17953
 487 0040 8F47     		.short	18319
 488 0042 FC48     		.short	18684
 489 0044 674A     		.short	19047
 490 0046 D24B     		.short	19410
 491 0048 3B4D     		.short	19771
 492 004a A34E     		.short	20131
 493 004c 0A50     		.short	20490
 494 004e 7051     		.short	20848
 495 0050 D552     		.short	21205
 496 0052 3954     		.short	21561
 497 0054 9B55     		.short	21915
 498 0056 FC56     		.short	22268
 499 0058 5D58     		.short	22621
 500 005a BC59     		.short	22972
 501 005c 195B     		.short	23321
 502 005e 765C     		.short	23670
 503 0060 D25D     		.short	24018
 504 0062 2C5F     		.short	24364
 505 0064 8560     		.short	24709
 506 0066 DD61     		.short	25053
 507 0068 3463     		.short	25396
 508 006a 8A64     		.short	25738
 509 006c DE65     		.short	26078
 510 006e 3267     		.short	26418
 511 0070 8468     		.short	26756
 512 0072 D569     		.short	27093
 513 0074 256B     		.short	27429
ARM GAS  /tmp/ccy8GKFI.s 			page 10


 514 0076 746C     		.short	27764
 515 0078 C26D     		.short	28098
 516 007a 0E6F     		.short	28430
 517 007c 5A70     		.short	28762
 518 007e A471     		.short	29092
 519 0080 ED72     		.short	29421
 520 0082 3574     		.short	29749
 521 0084 7B75     		.short	30075
 522 0086 C176     		.short	30401
 523 0088 0578     		.short	30725
 524 008a 4879     		.short	31048
 525 008c 8B7A     		.short	31371
 526 008e CC7B     		.short	31692
 527 0090 0C7D     		.short	32012
 528 0092 4A7E     		.short	32330
 529 0094 887F     		.short	32648
 530 0096 C480     		.short	-32572
 531 0098 FF81     		.short	-32257
 532 009a 3983     		.short	-31943
 533 009c 7284     		.short	-31630
 534 009e AA85     		.short	-31318
 535 00a0 E086     		.short	-31008
 536 00a2 1688     		.short	-30698
 537 00a4 4A89     		.short	-30390
 538 00a6 7D8A     		.short	-30083
 539 00a8 AF8B     		.short	-29777
 540 00aa E08C     		.short	-29472
 541 00ac 0F8E     		.short	-29169
 542 00ae 3E8F     		.short	-28866
 543 00b0 6B90     		.short	-28565
 544 00b2 9791     		.short	-28265
 545 00b4 C292     		.short	-27966
 546 00b6 EC93     		.short	-27668
 547 00b8 1595     		.short	-27371
 548 00ba 3C96     		.short	-27076
 549 00bc 6397     		.short	-26781
 550 00be 8898     		.short	-26488
 551              		.section	.rodata._ZNK17TemperatureSensor22CopyBasicHeaterDetailsEjRK9StringRef.str1.4,"aMS",%progb
 552              		.align	2
 553              	.LC0:
 554 0000 48656174 		.ascii	"Heater %u\000"
 554      65722025 
 554      7500
 555 000a 0000     		.space	2
 556              	.LC1:
 557 000c 20282573 		.ascii	" (%s)\000"
 557      2900
 558 0012 0000     		.space	2
 559              	.LC2:
 560 0014 20757365 		.ascii	" uses %s sensor channel %u\000"
 560      73202573 
 560      2073656E 
 560      736F7220 
 560      6368616E 
 561              		.section	.rodata._ZTV17TemperatureSensor,"a",%progbits
 562              		.align	2
 563              		.set	.LANCHOR0,. + 0
ARM GAS  /tmp/ccy8GKFI.s 			page 11


 564              		.type	_ZTV17TemperatureSensor, %object
 565              		.size	_ZTV17TemperatureSensor, 28
 566              	_ZTV17TemperatureSensor:
 567 0000 00000000 		.word	0
 568 0004 00000000 		.word	0
 569 0008 00000000 		.word	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef
 570 000c 00000000 		.word	__cxa_pure_virtual
 571 0010 00000000 		.word	__cxa_pure_virtual
 572 0014 00000000 		.word	0
 573 0018 00000000 		.word	0
 574              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
