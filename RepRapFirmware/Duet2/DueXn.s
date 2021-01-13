ARM GAS  /tmp/cc2Ykbff.s 			page 1


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
  13              		.file	"DueXn.cpp"
  14              		.section	.text._ZN13DuetExpansion9DueXnInitEv,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN13DuetExpansion9DueXnInitEv
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN13DuetExpansion9DueXnInitEv, %function
  23              	_ZN13DuetExpansion9DueXnInitEv:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 38B5     		push	{r3, r4, r5, lr}
  27 0002 2D4C     		ldr	r4, .L10
  28 0004 2068     		ldr	r0, [r4]	@ unaligned
  29 0006 FFF7FEFF 		bl	_ZN8Platform7InitI2cEv
  30 000a 3E21     		movs	r1, #62
  31 000c 2068     		ldr	r0, [r4]
  32 000e FFF7FEFF 		bl	_ZN8Platform20RegisterI2cAddrUsageEh
  33 0012 3E21     		movs	r1, #62
  34 0014 2948     		ldr	r0, .L10+4
  35 0016 FFF7FEFF 		bl	_ZN6SX15095beginEh
  36 001a 0028     		cmp	r0, #0
  37 001c 3DD0     		beq	.L2
  38              	.L5:
  39 001e 0122     		movs	r2, #1
  40 0020 4FF48041 		mov	r1, #16384
  41 0024 2548     		ldr	r0, .L10+4
  42 0026 264C     		ldr	r4, .L10+8
  43 0028 FFF7FEFF 		bl	_ZN6SX150915pinModeMultipleEt7PinMode
  44 002c 2348     		ldr	r0, .L10+4
  45 002e FFF7FEFF 		bl	_ZN6SX150914digitalReadAllEv
  46 0032 244B     		ldr	r3, .L10+12
  47 0034 C0F38030 		ubfx	r0, r0, #14, #1
  48 0038 1B5C     		ldrb	r3, [r3, r0]	@ zero_extendqisi2
  49 003a 2370     		strb	r3, [r4]
  50 003c 5BB3     		cbz	r3, .L4
  51 003e 0022     		movs	r2, #0
  52 0040 0121     		movs	r1, #1
  53 0042 1120     		movs	r0, #17
  54 0044 FFF7FEFF 		bl	pinModeDuet
  55 0048 0022     		movs	r2, #0
  56 004a 0121     		movs	r1, #1
  57 004c 6020     		movs	r0, #96
ARM GAS  /tmp/cc2Ykbff.s 			page 2


  58 004e FFF7FEFF 		bl	pinModeDuet
  59 0052 0722     		movs	r2, #7
  60 0054 49F2F001 		movw	r1, #37104
  61 0058 1848     		ldr	r0, .L10+4
  62 005a FFF7FEFF 		bl	_ZN6SX150915pinModeMultipleEt7PinMode
  63 005e 2278     		ldrb	r2, [r4]	@ zero_extendqisi2
  64 0060 1648     		ldr	r0, .L10+4
  65 0062 42F60F73 		movw	r3, #12047
  66 0066 40F60975 		movw	r5, #3849
  67 006a 032A     		cmp	r2, #3
  68 006c 08BF     		it	eq
  69 006e 1D46     		moveq	r5, r3
  70 0070 2946     		mov	r1, r5
  71 0072 0022     		movs	r2, #0
  72 0074 FFF7FEFF 		bl	_ZN6SX150915pinModeMultipleEt7PinMode
  73 0078 0322     		movs	r2, #3
  74 007a 2946     		mov	r1, r5
  75 007c 0F48     		ldr	r0, .L10+4
  76 007e FFF7FEFF 		bl	_ZN6SX150923enableInterruptMultipleEth
  77 0082 0121     		movs	r1, #1
  78 0084 0D48     		ldr	r0, .L10+4
  79 0086 FFF7FEFF 		bl	_ZN6SX150915interruptSourceEb
  80 008a 0C48     		ldr	r0, .L10+4
  81 008c FFF7FEFF 		bl	_ZN6SX150914digitalReadAllEv
  82 0090 0D4A     		ldr	r2, .L10+16
  83 0092 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
  84 0094 1080     		strh	r0, [r2]	@ movhi
  85              	.L4:
  86 0096 1846     		mov	r0, r3
  87 0098 38BD     		pop	{r3, r4, r5, pc}
  88              	.L2:
  89 009a 6420     		movs	r0, #100
  90 009c FFF7FEFF 		bl	coreDelay
  91 00a0 3E21     		movs	r1, #62
  92 00a2 0648     		ldr	r0, .L10+4
  93 00a4 FFF7FEFF 		bl	_ZN6SX15095beginEh
  94 00a8 0028     		cmp	r0, #0
  95 00aa B8D1     		bne	.L5
  96 00ac 044A     		ldr	r2, .L10+8
  97 00ae 0346     		mov	r3, r0
  98 00b0 1070     		strb	r0, [r2]
  99 00b2 1846     		mov	r0, r3
 100 00b4 38BD     		pop	{r3, r4, r5, pc}
 101              	.L11:
 102 00b6 00BF     		.align	2
 103              	.L10:
 104 00b8 00000000 		.word	reprap
 105 00bc 00000000 		.word	.LANCHOR0
 106 00c0 00000000 		.word	.LANCHOR2
 107 00c4 00000000 		.word	.LANCHOR1
 108 00c8 00000000 		.word	.LANCHOR3
 109              		.size	_ZN13DuetExpansion9DueXnInitEv, .-_ZN13DuetExpansion9DueXnInitEv
 110              		.section	.text._ZN13DuetExpansion20AdditionalOutputInitEv,"ax",%progbits
 111              		.align	1
 112              		.p2align 2,,3
 113              		.global	_ZN13DuetExpansion20AdditionalOutputInitEv
 114              		.syntax unified
ARM GAS  /tmp/cc2Ykbff.s 			page 3


 115              		.thumb
 116              		.thumb_func
 117              		.fpu fpv4-sp-d16
 118              		.type	_ZN13DuetExpansion20AdditionalOutputInitEv, %function
 119              	_ZN13DuetExpansion20AdditionalOutputInitEv:
 120              		@ args = 0, pretend = 0, frame = 0
 121              		@ frame_needed = 0, uses_anonymous_args = 0
 122 0000 10B5     		push	{r4, lr}
 123 0002 134C     		ldr	r4, .L17
 124 0004 2068     		ldr	r0, [r4]
 125 0006 FFF7FEFF 		bl	_ZN8Platform7InitI2cEv
 126 000a 7121     		movs	r1, #113
 127 000c 2068     		ldr	r0, [r4]
 128 000e FFF7FEFF 		bl	_ZN8Platform20RegisterI2cAddrUsageEh
 129 0012 7121     		movs	r1, #113
 130 0014 0F48     		ldr	r0, .L17+4
 131 0016 FFF7FEFF 		bl	_ZN6SX15095beginEh
 132 001a 70B1     		cbz	r0, .L13
 133              	.L15:
 134 001c 0222     		movs	r2, #2
 135 001e 4FF6FF71 		movw	r1, #65535
 136 0022 0C48     		ldr	r0, .L17+4
 137 0024 FFF7FEFF 		bl	_ZN6SX150915pinModeMultipleEt7PinMode
 138 0028 0A48     		ldr	r0, .L17+4
 139 002a FFF7FEFF 		bl	_ZN6SX150914digitalReadAllEv
 140 002e 0A4A     		ldr	r2, .L17+8
 141 0030 0A4B     		ldr	r3, .L17+12
 142 0032 1080     		strh	r0, [r2]	@ movhi
 143 0034 0122     		movs	r2, #1
 144 0036 1A70     		strb	r2, [r3]
 145 0038 10BD     		pop	{r4, pc}
 146              	.L13:
 147 003a 6420     		movs	r0, #100
 148 003c FFF7FEFF 		bl	coreDelay
 149 0040 7121     		movs	r1, #113
 150 0042 0448     		ldr	r0, .L17+4
 151 0044 FFF7FEFF 		bl	_ZN6SX15095beginEh
 152 0048 0028     		cmp	r0, #0
 153 004a E7D1     		bne	.L15
 154 004c 10BD     		pop	{r4, pc}
 155              	.L18:
 156 004e 00BF     		.align	2
 157              	.L17:
 158 0050 00000000 		.word	reprap
 159 0054 00000000 		.word	.LANCHOR4
 160 0058 00000000 		.word	.LANCHOR5
 161 005c 00000000 		.word	.LANCHOR6
 162              		.size	_ZN13DuetExpansion20AdditionalOutputInitEv, .-_ZN13DuetExpansion20AdditionalOutputInitEv
 163              		.section	.text._ZN13DuetExpansion21GetExpansionBoardNameEv,"ax",%progbits
 164              		.align	1
 165              		.p2align 2,,3
 166              		.global	_ZN13DuetExpansion21GetExpansionBoardNameEv
 167              		.syntax unified
 168              		.thumb
 169              		.thumb_func
 170              		.fpu fpv4-sp-d16
 171              		.type	_ZN13DuetExpansion21GetExpansionBoardNameEv, %function
ARM GAS  /tmp/cc2Ykbff.s 			page 4


 172              	_ZN13DuetExpansion21GetExpansionBoardNameEv:
 173              		@ args = 0, pretend = 0, frame = 0
 174              		@ frame_needed = 0, uses_anonymous_args = 0
 175              		@ link register save eliminated.
 176 0000 054B     		ldr	r3, .L22
 177 0002 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 178 0004 013B     		subs	r3, r3, #1
 179 0006 DBB2     		uxtb	r3, r3
 180 0008 022B     		cmp	r3, #2
 181 000a 9ABF     		itte	ls
 182 000c 034A     		ldrls	r2, .L22+4
 183 000e 52F82300 		ldrls	r0, [r2, r3, lsl #2]
 184 0012 0020     		movhi	r0, #0
 185 0014 7047     		bx	lr
 186              	.L23:
 187 0016 00BF     		.align	2
 188              	.L22:
 189 0018 00000000 		.word	.LANCHOR2
 190 001c 00000000 		.word	.LANCHOR7
 191              		.size	_ZN13DuetExpansion21GetExpansionBoardNameEv, .-_ZN13DuetExpansion21GetExpansionBoardNameEv
 192              		.section	.text._ZN13DuetExpansion31GetAdditionalExpansionBoardNameEv,"ax",%progbits
 193              		.align	1
 194              		.p2align 2,,3
 195              		.global	_ZN13DuetExpansion31GetAdditionalExpansionBoardNameEv
 196              		.syntax unified
 197              		.thumb
 198              		.thumb_func
 199              		.fpu fpv4-sp-d16
 200              		.type	_ZN13DuetExpansion31GetAdditionalExpansionBoardNameEv, %function
 201              	_ZN13DuetExpansion31GetAdditionalExpansionBoardNameEv:
 202              		@ args = 0, pretend = 0, frame = 0
 203              		@ frame_needed = 0, uses_anonymous_args = 0
 204              		@ link register save eliminated.
 205 0000 034B     		ldr	r3, .L27
 206 0002 0448     		ldr	r0, .L27+4
 207 0004 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 208 0006 002B     		cmp	r3, #0
 209 0008 08BF     		it	eq
 210 000a 0020     		moveq	r0, #0
 211 000c 7047     		bx	lr
 212              	.L28:
 213 000e 00BF     		.align	2
 214              	.L27:
 215 0010 00000000 		.word	.LANCHOR6
 216 0014 00000000 		.word	.LC0
 217              		.size	_ZN13DuetExpansion31GetAdditionalExpansionBoardNameEv, .-_ZN13DuetExpansion31GetAdditionalEx
 218              		.section	.text._ZN13DuetExpansion4SpinEb,"ax",%progbits
 219              		.align	1
 220              		.p2align 2,,3
 221              		.global	_ZN13DuetExpansion4SpinEb
 222              		.syntax unified
 223              		.thumb
 224              		.thumb_func
 225              		.fpu fpv4-sp-d16
 226              		.type	_ZN13DuetExpansion4SpinEb, %function
 227              	_ZN13DuetExpansion4SpinEb:
 228              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/cc2Ykbff.s 			page 5


 229              		@ frame_needed = 0, uses_anonymous_args = 0
 230 0000 08B5     		push	{r3, lr}
 231 0002 074B     		ldr	r3, .L35
 232 0004 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 233 0006 03B9     		cbnz	r3, .L34
 234              	.L29:
 235 0008 08BD     		pop	{r3, pc}
 236              	.L34:
 237 000a 1120     		movs	r0, #17
 238 000c FFF7FEFF 		bl	digitalRead
 239 0010 0028     		cmp	r0, #0
 240 0012 F9D1     		bne	.L29
 241 0014 0348     		ldr	r0, .L35+4
 242 0016 FFF7FEFF 		bl	_ZN6SX150914digitalReadAllEv
 243 001a 034B     		ldr	r3, .L35+8
 244 001c 1880     		strh	r0, [r3]	@ movhi
 245 001e 08BD     		pop	{r3, pc}
 246              	.L36:
 247              		.align	2
 248              	.L35:
 249 0020 00000000 		.word	.LANCHOR2
 250 0024 00000000 		.word	.LANCHOR0
 251 0028 00000000 		.word	.LANCHOR3
 252              		.size	_ZN13DuetExpansion4SpinEb, .-_ZN13DuetExpansion4SpinEb
 253              		.section	.text._ZN13DuetExpansion10SetPinModeEh7PinMode,"ax",%progbits
 254              		.align	1
 255              		.p2align 2,,3
 256              		.global	_ZN13DuetExpansion10SetPinModeEh7PinMode
 257              		.syntax unified
 258              		.thumb
 259              		.thumb_func
 260              		.fpu fpv4-sp-d16
 261              		.type	_ZN13DuetExpansion10SetPinModeEh7PinMode, %function
 262              	_ZN13DuetExpansion10SetPinModeEh7PinMode:
 263              		@ args = 0, pretend = 0, frame = 0
 264              		@ frame_needed = 0, uses_anonymous_args = 0
 265              		@ link register save eliminated.
 266 0000 00F13803 		add	r3, r0, #56
 267 0004 DBB2     		uxtb	r3, r3
 268 0006 0F2B     		cmp	r3, #15
 269 0008 10D8     		bhi	.L38
 270 000a 154A     		ldr	r2, .L56
 271 000c 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 272 000e A2B1     		cbz	r2, .L37
 273 0010 4FF47062 		mov	r2, #3840
 274 0014 DA40     		lsrs	r2, r2, r3
 275 0016 D207     		lsls	r2, r2, #31
 276 0018 11D5     		bpl	.L40
 277 001a 4A1E     		subs	r2, r1, #1
 278 001c 072A     		cmp	r2, #7
 279 001e 0ED8     		bhi	.L40
 280 0020 DFE802F0 		tbb	[pc, r2]
 281              	.L42:
 282 0024 1B       		.byte	(.L41-.L42)/2
 283 0025 1B       		.byte	(.L41-.L42)/2
 284 0026 0C       		.byte	(.L43-.L42)/2
 285 0027 19       		.byte	(.L44-.L42)/2
ARM GAS  /tmp/cc2Ykbff.s 			page 6


 286 0028 0D       		.byte	(.L40-.L42)/2
 287 0029 0D       		.byte	(.L40-.L42)/2
 288 002a 17       		.byte	(.L45-.L42)/2
 289 002b 17       		.byte	(.L45-.L42)/2
 290              		.p2align 1
 291              	.L38:
 292 002c 2430     		adds	r0, r0, #36
 293 002e C0B2     		uxtb	r0, r0
 294 0030 0F28     		cmp	r0, #15
 295 0032 02D8     		bhi	.L37
 296 0034 0B4B     		ldr	r3, .L56+4
 297 0036 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 298 0038 33B9     		cbnz	r3, .L55
 299              	.L37:
 300 003a 7047     		bx	lr
 301              	.L43:
 302 003c 0921     		movs	r1, #9
 303              	.L40:
 304 003e 0A46     		mov	r2, r1
 305 0040 0948     		ldr	r0, .L56+8
 306 0042 1946     		mov	r1, r3
 307 0044 FFF7FEBF 		b	_ZN6SX15097pinModeEh7PinMode
 308              	.L55:
 309 0048 0A46     		mov	r2, r1
 310 004a 0146     		mov	r1, r0
 311 004c 0748     		ldr	r0, .L56+12
 312 004e FFF7FEBF 		b	_ZN6SX15097pinModeEh7PinMode
 313              	.L45:
 314 0052 0B21     		movs	r1, #11
 315 0054 F3E7     		b	.L40
 316              	.L44:
 317 0056 0A21     		movs	r1, #10
 318 0058 F1E7     		b	.L40
 319              	.L41:
 320 005a 0021     		movs	r1, #0
 321 005c EFE7     		b	.L40
 322              	.L57:
 323 005e 00BF     		.align	2
 324              	.L56:
 325 0060 00000000 		.word	.LANCHOR2
 326 0064 00000000 		.word	.LANCHOR6
 327 0068 00000000 		.word	.LANCHOR0
 328 006c 00000000 		.word	.LANCHOR4
 329              		.size	_ZN13DuetExpansion10SetPinModeEh7PinMode, .-_ZN13DuetExpansion10SetPinModeEh7PinMode
 330              		.section	.text._ZN13DuetExpansion11DigitalReadEh,"ax",%progbits
 331              		.align	1
 332              		.p2align 2,,3
 333              		.global	_ZN13DuetExpansion11DigitalReadEh
 334              		.syntax unified
 335              		.thumb
 336              		.thumb_func
 337              		.fpu fpv4-sp-d16
 338              		.type	_ZN13DuetExpansion11DigitalReadEh, %function
 339              	_ZN13DuetExpansion11DigitalReadEh:
 340              		@ args = 0, pretend = 0, frame = 0
 341              		@ frame_needed = 0, uses_anonymous_args = 0
 342 0000 00F13803 		add	r3, r0, #56
ARM GAS  /tmp/cc2Ykbff.s 			page 7


 343 0004 DBB2     		uxtb	r3, r3
 344 0006 0F2B     		cmp	r3, #15
 345 0008 10B5     		push	{r4, lr}
 346 000a 0446     		mov	r4, r0
 347 000c 03D8     		bhi	.L59
 348 000e 1A4B     		ldr	r3, .L74
 349 0010 1878     		ldrb	r0, [r3]	@ zero_extendqisi2
 350 0012 A8B9     		cbnz	r0, .L73
 351              	.L60:
 352 0014 10BD     		pop	{r4, pc}
 353              	.L59:
 354 0016 00F12403 		add	r3, r0, #36
 355 001a DBB2     		uxtb	r3, r3
 356 001c 0F2B     		cmp	r3, #15
 357 001e 0DD8     		bhi	.L67
 358 0020 164B     		ldr	r3, .L74+4
 359 0022 1878     		ldrb	r0, [r3]	@ zero_extendqisi2
 360 0024 0028     		cmp	r0, #0
 361 0026 F5D0     		beq	.L60
 362 0028 FFF7FEFF 		bl	_Z11inInterruptv
 363 002c E8B1     		cbz	r0, .L64
 364 002e 144B     		ldr	r3, .L74+8
 365 0030 1888     		ldrh	r0, [r3]
 366              	.L65:
 367 0032 DC3C     		subs	r4, r4, #220
 368 0034 E040     		lsrs	r0, r0, r4
 369 0036 00F00100 		and	r0, r0, #1
 370 003a 10BD     		pop	{r4, pc}
 371              	.L67:
 372 003c 0020     		movs	r0, #0
 373 003e 10BD     		pop	{r4, pc}
 374              	.L73:
 375 0040 1120     		movs	r0, #17
 376 0042 FFF7FEFF 		bl	digitalRead
 377 0046 30B1     		cbz	r0, .L61
 378              	.L72:
 379 0048 0E4B     		ldr	r3, .L74+12
 380 004a 1888     		ldrh	r0, [r3]
 381              	.L62:
 382 004c C83C     		subs	r4, r4, #200
 383 004e E040     		lsrs	r0, r0, r4
 384 0050 00F00100 		and	r0, r0, #1
 385 0054 10BD     		pop	{r4, pc}
 386              	.L61:
 387 0056 FFF7FEFF 		bl	_Z11inInterruptv
 388 005a 0028     		cmp	r0, #0
 389 005c F4D1     		bne	.L72
 390 005e 0A48     		ldr	r0, .L74+16
 391 0060 FFF7FEFF 		bl	_ZN6SX150914digitalReadAllEv
 392 0064 074B     		ldr	r3, .L74+12
 393 0066 1880     		strh	r0, [r3]	@ movhi
 394 0068 F0E7     		b	.L62
 395              	.L64:
 396 006a 0848     		ldr	r0, .L74+20
 397 006c FFF7FEFF 		bl	_ZN6SX150914digitalReadAllEv
 398 0070 034B     		ldr	r3, .L74+8
 399 0072 1880     		strh	r0, [r3]	@ movhi
ARM GAS  /tmp/cc2Ykbff.s 			page 8


 400 0074 DDE7     		b	.L65
 401              	.L75:
 402 0076 00BF     		.align	2
 403              	.L74:
 404 0078 00000000 		.word	.LANCHOR2
 405 007c 00000000 		.word	.LANCHOR6
 406 0080 00000000 		.word	.LANCHOR5
 407 0084 00000000 		.word	.LANCHOR3
 408 0088 00000000 		.word	.LANCHOR0
 409 008c 00000000 		.word	.LANCHOR4
 410              		.size	_ZN13DuetExpansion11DigitalReadEh, .-_ZN13DuetExpansion11DigitalReadEh
 411              		.section	.text._ZN13DuetExpansion12DigitalWriteEhb,"ax",%progbits
 412              		.align	1
 413              		.p2align 2,,3
 414              		.global	_ZN13DuetExpansion12DigitalWriteEhb
 415              		.syntax unified
 416              		.thumb
 417              		.thumb_func
 418              		.fpu fpv4-sp-d16
 419              		.type	_ZN13DuetExpansion12DigitalWriteEhb, %function
 420              	_ZN13DuetExpansion12DigitalWriteEhb:
 421              		@ args = 0, pretend = 0, frame = 0
 422              		@ frame_needed = 0, uses_anonymous_args = 0
 423              		@ link register save eliminated.
 424 0000 00F13803 		add	r3, r0, #56
 425 0004 DBB2     		uxtb	r3, r3
 426 0006 0F2B     		cmp	r3, #15
 427 0008 03D8     		bhi	.L77
 428 000a 0B4A     		ldr	r2, .L86
 429 000c 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 430 000e 6AB9     		cbnz	r2, .L85
 431              	.L76:
 432 0010 7047     		bx	lr
 433              	.L77:
 434 0012 2430     		adds	r0, r0, #36
 435 0014 C0B2     		uxtb	r0, r0
 436 0016 0F28     		cmp	r0, #15
 437 0018 FAD8     		bhi	.L76
 438 001a 084B     		ldr	r3, .L86+4
 439 001c 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 440 001e 002B     		cmp	r3, #0
 441 0020 F6D0     		beq	.L76
 442 0022 0A46     		mov	r2, r1
 443 0024 0146     		mov	r1, r0
 444 0026 0648     		ldr	r0, .L86+8
 445 0028 FFF7FEBF 		b	_ZN6SX150912digitalWriteEhb
 446              	.L85:
 447 002c 0A46     		mov	r2, r1
 448 002e 0548     		ldr	r0, .L86+12
 449 0030 1946     		mov	r1, r3
 450 0032 FFF7FEBF 		b	_ZN6SX150912digitalWriteEhb
 451              	.L87:
 452 0036 00BF     		.align	2
 453              	.L86:
 454 0038 00000000 		.word	.LANCHOR2
 455 003c 00000000 		.word	.LANCHOR6
 456 0040 00000000 		.word	.LANCHOR4
ARM GAS  /tmp/cc2Ykbff.s 			page 9


 457 0044 00000000 		.word	.LANCHOR0
 458              		.size	_ZN13DuetExpansion12DigitalWriteEhb, .-_ZN13DuetExpansion12DigitalWriteEhb
 459              		.section	.text._ZN13DuetExpansion9AnalogOutEhf,"ax",%progbits
 460              		.align	1
 461              		.p2align 2,,3
 462              		.global	_ZN13DuetExpansion9AnalogOutEhf
 463              		.syntax unified
 464              		.thumb
 465              		.thumb_func
 466              		.fpu fpv4-sp-d16
 467              		.type	_ZN13DuetExpansion9AnalogOutEhf, %function
 468              	_ZN13DuetExpansion9AnalogOutEhf:
 469              		@ args = 0, pretend = 0, frame = 8
 470              		@ frame_needed = 0, uses_anonymous_args = 0
 471              		@ link register save eliminated.
 472 0000 00F13801 		add	r1, r0, #56
 473 0004 C9B2     		uxtb	r1, r1
 474 0006 0F29     		cmp	r1, #15
 475 0008 82B0     		sub	sp, sp, #8
 476 000a 13D8     		bhi	.L89
 477 000c 284B     		ldr	r3, .L115
 478 000e 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 479 0010 BBB1     		cbz	r3, .L88
 480 0012 B4EE400A 		vcmp.f32	s0, s0
 481 0016 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 482 001a 33D6     		bvs	.L94
 483 001c F7EE007A 		vmov.f32	s15, #1.0e+0
 484 0020 B4EEE70A 		vcmpe.f32	s0, s15
 485 0024 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 486 0028 1ED4     		bmi	.L112
 487 002a FF22     		movs	r2, #255
 488              	.L92:
 489 002c 2148     		ldr	r0, .L115+4
 490 002e 02B0     		add	sp, sp, #8
 491              		@ sp needed
 492 0030 FFF7FEBF 		b	_ZN6SX150911analogWriteEhh
 493              	.L89:
 494 0034 2430     		adds	r0, r0, #36
 495 0036 C1B2     		uxtb	r1, r0
 496 0038 0F29     		cmp	r1, #15
 497 003a 02D8     		bhi	.L88
 498 003c 1E4B     		ldr	r3, .L115+8
 499 003e 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 500 0040 0BB9     		cbnz	r3, .L113
 501              	.L88:
 502 0042 02B0     		add	sp, sp, #8
 503              		@ sp needed
 504 0044 7047     		bx	lr
 505              	.L113:
 506 0046 B4EE400A 		vcmp.f32	s0, s0
 507 004a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 508 004e 24D6     		bvs	.L98
 509 0050 F7EE007A 		vmov.f32	s15, #1.0e+0
 510 0054 B4EEE70A 		vcmpe.f32	s0, s15
 511 0058 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 512 005c 0BD4     		bmi	.L114
 513 005e FF22     		movs	r2, #255
ARM GAS  /tmp/cc2Ykbff.s 			page 10


 514              	.L96:
 515 0060 1648     		ldr	r0, .L115+12
 516 0062 02B0     		add	sp, sp, #8
 517              		@ sp needed
 518 0064 FFF7FEBF 		b	_ZN6SX150911analogWriteEhh
 519              	.L112:
 520 0068 B5EEC00A 		vcmpe.f32	s0, #0
 521 006c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 522 0070 08DC     		bgt	.L94
 523 0072 0022     		movs	r2, #0
 524 0074 DAE7     		b	.L92
 525              	.L114:
 526 0076 B5EEC00A 		vcmpe.f32	s0, #0
 527 007a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 528 007e 0CDC     		bgt	.L98
 529 0080 0022     		movs	r2, #0
 530 0082 EDE7     		b	.L96
 531              	.L94:
 532 0084 DFED0E7A 		vldr.32	s15, .L115+16
 533 0088 20EE270A 		vmul.f32	s0, s0, s15
 534 008c FCEEC07A 		vcvt.u32.f32	s15, s0
 535 0090 CDED017A 		vstr.32	s15, [sp, #4]	@ int
 536 0094 9DF80420 		ldrb	r2, [sp, #4]	@ zero_extendqisi2
 537 0098 C8E7     		b	.L92
 538              	.L98:
 539 009a DFED097A 		vldr.32	s15, .L115+16
 540 009e 20EE270A 		vmul.f32	s0, s0, s15
 541 00a2 FCEEC07A 		vcvt.u32.f32	s15, s0
 542 00a6 CDED017A 		vstr.32	s15, [sp, #4]	@ int
 543 00aa 9DF80420 		ldrb	r2, [sp, #4]	@ zero_extendqisi2
 544 00ae D7E7     		b	.L96
 545              	.L116:
 546              		.align	2
 547              	.L115:
 548 00b0 00000000 		.word	.LANCHOR2
 549 00b4 00000000 		.word	.LANCHOR0
 550 00b8 00000000 		.word	.LANCHOR6
 551 00bc 00000000 		.word	.LANCHOR4
 552 00c0 00007F43 		.word	1132396544
 553              		.size	_ZN13DuetExpansion9AnalogOutEhf, .-_ZN13DuetExpansion9AnalogOutEhf
 554              		.section	.text._ZN13DuetExpansion11DiagnosticsE11MessageType,"ax",%progbits
 555              		.align	1
 556              		.p2align 2,,3
 557              		.global	_ZN13DuetExpansion11DiagnosticsE11MessageType
 558              		.syntax unified
 559              		.thumb
 560              		.thumb_func
 561              		.fpu fpv4-sp-d16
 562              		.type	_ZN13DuetExpansion11DiagnosticsE11MessageType, %function
 563              	_ZN13DuetExpansion11DiagnosticsE11MessageType:
 564              		@ args = 0, pretend = 0, frame = 0
 565              		@ frame_needed = 0, uses_anonymous_args = 0
 566 0000 70B5     		push	{r4, r5, r6, lr}
 567 0002 104B     		ldr	r3, .L126
 568 0004 104A     		ldr	r2, .L126+4
 569 0006 1C68     		ldr	r4, [r3]
 570 0008 0146     		mov	r1, r0
ARM GAS  /tmp/cc2Ykbff.s 			page 11


 571 000a 0546     		mov	r5, r0
 572 000c 2046     		mov	r0, r4
 573 000e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 574 0012 0E4B     		ldr	r3, .L126+8
 575 0014 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 576 0016 63B9     		cbnz	r3, .L124
 577              	.L118:
 578 0018 0D4B     		ldr	r3, .L126+12
 579 001a 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 580 001c 03B9     		cbnz	r3, .L125
 581 001e 70BD     		pop	{r4, r5, r6, pc}
 582              	.L125:
 583 0020 0C4B     		ldr	r3, .L126+16
 584 0022 0D4A     		ldr	r2, .L126+20
 585 0024 DB68     		ldr	r3, [r3, #12]
 586 0026 2946     		mov	r1, r5
 587 0028 2046     		mov	r0, r4
 588 002a BDE87040 		pop	{r4, r5, r6, lr}
 589 002e FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 590              	.L124:
 591 0032 0A4B     		ldr	r3, .L126+24
 592 0034 0A4A     		ldr	r2, .L126+28
 593 0036 DB68     		ldr	r3, [r3, #12]
 594 0038 2946     		mov	r1, r5
 595 003a 2046     		mov	r0, r4
 596 003c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 597 0040 EAE7     		b	.L118
 598              	.L127:
 599 0042 00BF     		.align	2
 600              	.L126:
 601 0044 00000000 		.word	reprap
 602 0048 00000000 		.word	.LC1
 603 004c 00000000 		.word	.LANCHOR2
 604 0050 00000000 		.word	.LANCHOR6
 605 0054 00000000 		.word	.LANCHOR4
 606 0058 2C000000 		.word	.LC3
 607 005c 00000000 		.word	.LANCHOR0
 608 0060 14000000 		.word	.LC2
 609              		.size	_ZN13DuetExpansion11DiagnosticsE11MessageType, .-_ZN13DuetExpansion11DiagnosticsE11MessageTy
 610              		.section	.text._ZN13DuetExpansion14DiagnosticReadEv,"ax",%progbits
 611              		.align	1
 612              		.p2align 2,,3
 613              		.global	_ZN13DuetExpansion14DiagnosticReadEv
 614              		.syntax unified
 615              		.thumb
 616              		.thumb_func
 617              		.fpu fpv4-sp-d16
 618              		.type	_ZN13DuetExpansion14DiagnosticReadEv, %function
 619              	_ZN13DuetExpansion14DiagnosticReadEv:
 620              		@ args = 0, pretend = 0, frame = 0
 621              		@ frame_needed = 0, uses_anonymous_args = 0
 622 0000 10B5     		push	{r4, lr}
 623 0002 094C     		ldr	r4, .L130
 624 0004 0022     		movs	r2, #0
 625 0006 4BF6FF71 		movw	r1, #49151
 626 000a 2046     		mov	r0, r4
 627 000c FFF7FEFF 		bl	_ZN6SX150915pinModeMultipleEt7PinMode
ARM GAS  /tmp/cc2Ykbff.s 			page 12


 628 0010 0120     		movs	r0, #1
 629 0012 FFF7FEFF 		bl	coreDelay
 630 0016 2046     		mov	r0, r4
 631 0018 FFF7FEFF 		bl	_ZN6SX150914digitalReadAllEv
 632 001c 0446     		mov	r4, r0
 633 001e FFF7FEFF 		bl	_ZN13DuetExpansion9DueXnInitEv
 634 0022 2046     		mov	r0, r4
 635 0024 10BD     		pop	{r4, pc}
 636              	.L131:
 637 0026 00BF     		.align	2
 638              	.L130:
 639 0028 00000000 		.word	.LANCHOR0
 640              		.size	_ZN13DuetExpansion14DiagnosticReadEv, .-_ZN13DuetExpansion14DiagnosticReadEv
 641              		.section	.text.startup._GLOBAL__sub_I__ZN13DuetExpansion9DueXnInitEv,"ax",%progbits
 642              		.align	1
 643              		.p2align 2,,3
 644              		.syntax unified
 645              		.thumb
 646              		.thumb_func
 647              		.fpu fpv4-sp-d16
 648              		.type	_GLOBAL__sub_I__ZN13DuetExpansion9DueXnInitEv, %function
 649              	_GLOBAL__sub_I__ZN13DuetExpansion9DueXnInitEv:
 650              		@ args = 0, pretend = 0, frame = 0
 651              		@ frame_needed = 0, uses_anonymous_args = 0
 652 0000 08B5     		push	{r3, lr}
 653 0002 0448     		ldr	r0, .L134
 654 0004 FFF7FEFF 		bl	_ZN6SX1509C1Ev
 655 0008 0348     		ldr	r0, .L134+4
 656 000a BDE80840 		pop	{r3, lr}
 657 000e FFF7FEBF 		b	_ZN6SX1509C1Ev
 658              	.L135:
 659 0012 00BF     		.align	2
 660              	.L134:
 661 0014 00000000 		.word	.LANCHOR0
 662 0018 00000000 		.word	.LANCHOR4
 663              		.size	_GLOBAL__sub_I__ZN13DuetExpansion9DueXnInitEv, .-_GLOBAL__sub_I__ZN13DuetExpansion9DueXnInit
 664              		.section	.init_array,"aw",%init_array
 665              		.align	2
 666 0000 00000000 		.word	_GLOBAL__sub_I__ZN13DuetExpansion9DueXnInitEv(target1)
 667              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 668              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 669              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 670              	_ZL28cpu_irq_prev_interrupt_state:
 671 0000 00       		.space	1
 672              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 673              		.align	2
 674              		.type	_ZL32cpu_irq_critical_section_counter, %object
 675              		.size	_ZL32cpu_irq_critical_section_counter, 4
 676              	_ZL32cpu_irq_critical_section_counter:
 677 0000 00000000 		.space	4
 678              		.section	.bss._ZN13DuetExpansionL13dueXnExpanderE,"aw",%nobits
 679              		.align	2
 680              		.set	.LANCHOR0,. + 0
 681              		.type	_ZN13DuetExpansionL13dueXnExpanderE, %object
 682              		.size	_ZN13DuetExpansionL13dueXnExpanderE, 16
 683              	_ZN13DuetExpansionL13dueXnExpanderE:
 684 0000 00000000 		.space	16
ARM GAS  /tmp/cc2Ykbff.s 			page 13


 684      00000000 
 684      00000000 
 684      00000000 
 685              		.section	.bss._ZN13DuetExpansionL14dueXnBoardTypeE,"aw",%nobits
 686              		.set	.LANCHOR2,. + 0
 687              		.type	_ZN13DuetExpansionL14dueXnBoardTypeE, %object
 688              		.size	_ZN13DuetExpansionL14dueXnBoardTypeE, 1
 689              	_ZN13DuetExpansionL14dueXnBoardTypeE:
 690 0000 00       		.space	1
 691              		.section	.bss._ZN13DuetExpansionL14dueXnInputBitsE,"aw",%nobits
 692              		.align	1
 693              		.set	.LANCHOR3,. + 0
 694              		.type	_ZN13DuetExpansionL14dueXnInputBitsE, %object
 695              		.size	_ZN13DuetExpansionL14dueXnInputBitsE, 2
 696              	_ZN13DuetExpansionL14dueXnInputBitsE:
 697 0000 0000     		.space	2
 698              		.section	.bss._ZN13DuetExpansionL20additionalIoExpanderE,"aw",%nobits
 699              		.align	2
 700              		.set	.LANCHOR4,. + 0
 701              		.type	_ZN13DuetExpansionL20additionalIoExpanderE, %object
 702              		.size	_ZN13DuetExpansionL20additionalIoExpanderE, 16
 703              	_ZN13DuetExpansionL20additionalIoExpanderE:
 704 0000 00000000 		.space	16
 704      00000000 
 704      00000000 
 704      00000000 
 705              		.section	.bss._ZN13DuetExpansionL21additionalIoInputBitsE,"aw",%nobits
 706              		.align	1
 707              		.set	.LANCHOR5,. + 0
 708              		.type	_ZN13DuetExpansionL21additionalIoInputBitsE, %object
 709              		.size	_ZN13DuetExpansionL21additionalIoInputBitsE, 2
 710              	_ZN13DuetExpansionL21additionalIoInputBitsE:
 711 0000 0000     		.space	2
 712              		.section	.bss._ZN13DuetExpansionL27additionalIoExpanderPresentE,"aw",%nobits
 713              		.set	.LANCHOR6,. + 0
 714              		.type	_ZN13DuetExpansionL27additionalIoExpanderPresentE, %object
 715              		.size	_ZN13DuetExpansionL27additionalIoExpanderPresentE, 1
 716              	_ZN13DuetExpansionL27additionalIoExpanderPresentE:
 717 0000 00       		.space	1
 718              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 719              		.align	2
 720              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 721              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 722              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 723 0000 00000000 		.space	4
 724              		.section	.rodata.CSWTCH.41,"a",%progbits
 725              		.align	2
 726              		.set	.LANCHOR7,. + 0
 727              		.type	CSWTCH.41, %object
 728              		.size	CSWTCH.41, 12
 729              	CSWTCH.41:
 730 0000 00000000 		.word	.LC4
 731 0004 08000000 		.word	.LC5
 732 0008 10000000 		.word	.LC6
 733              		.section	.rodata._ZN13DuetExpansion11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 734              		.align	2
 735              	.LC1:
ARM GAS  /tmp/cc2Ykbff.s 			page 14


 736 0000 3D3D3D20 		.ascii	"=== Expansion ===\012\000"
 736      45787061 
 736      6E73696F 
 736      6E203D3D 
 736      3D0A00
 737 0013 00       		.space	1
 738              	.LC2:
 739 0014 44756558 		.ascii	"DueX I2C errors %lu\012\000"
 739      20493243 
 739      20657272 
 739      6F727320 
 739      256C750A 
 740 0029 000000   		.space	3
 741              	.LC3:
 742 002c 41646469 		.ascii	"Additional expander I2C errors %lu\012\000"
 742      74696F6E 
 742      616C2065 
 742      7870616E 
 742      64657220 
 743              		.section	.rodata._ZN13DuetExpansion31GetAdditionalExpansionBoardNameEv.str1.4,"aMS",%progbits,1
 744              		.align	2
 745              	.LC0:
 746 0000 53583135 		.ascii	"SX1509B expander\000"
 746      30394220 
 746      65787061 
 746      6E646572 
 746      00
 747              		.section	.rodata._ZN13DuetExpansionL10boardTypesE,"a",%progbits
 748              		.align	2
 749              		.set	.LANCHOR1,. + 0
 750              		.type	_ZN13DuetExpansionL10boardTypesE, %object
 751              		.size	_ZN13DuetExpansionL10boardTypesE, 2
 752              	_ZN13DuetExpansionL10boardTypesE:
 753 0000 03       		.byte	3
 754 0001 02       		.byte	2
 755              		.section	.rodata.str1.4,"aMS",%progbits,1
 756              		.align	2
 757              	.LC4:
 758 0000 44756558 		.ascii	"DueX0\000"
 758      3000
 759 0006 0000     		.space	2
 760              	.LC5:
 761 0008 44756558 		.ascii	"DueX2\000"
 761      3200
 762 000e 0000     		.space	2
 763              	.LC6:
 764 0010 44756558 		.ascii	"DueX5\000"
 764      3500
 765              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
