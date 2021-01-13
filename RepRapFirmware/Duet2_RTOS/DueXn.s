ARM GAS  C:\Users\paja\AppData\Local\Temp\ccTC3iOn.s 			page 1


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
  14              		.text
  15              		.section	.text._ZN13DuetExpansionL7DueXIrqE17CallbackParameter,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN13DuetExpansionL7DueXIrqE17CallbackParameter, %function
  23              	_ZN13DuetExpansionL7DueXIrqE17CallbackParameter:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 014B     		ldr	r3, .L3
  28 0002 0122     		movs	r2, #1
  29 0004 1A70     		strb	r2, [r3]
  30 0006 7047     		bx	lr
  31              	.L4:
  32              		.align	2
  33              	.L3:
  34 0008 00000000 		.word	.LANCHOR0
  35              		.size	_ZN13DuetExpansionL7DueXIrqE17CallbackParameter, .-_ZN13DuetExpansionL7DueXIrqE17CallbackPar
  36              		.section	.text._ZN13DuetExpansion9DueXnInitEv,"ax",%progbits
  37              		.align	1
  38              		.p2align 2,,3
  39              		.global	_ZN13DuetExpansion9DueXnInitEv
  40              		.syntax unified
  41              		.thumb
  42              		.thumb_func
  43              		.fpu fpv4-sp-d16
  44              		.type	_ZN13DuetExpansion9DueXnInitEv, %function
  45              	_ZN13DuetExpansion9DueXnInitEv:
  46              		@ args = 0, pretend = 0, frame = 16
  47              		@ frame_needed = 0, uses_anonymous_args = 0
  48 0000 70B5     		push	{r4, r5, r6, lr}
  49 0002 354E     		ldr	r6, .L15
  50 0004 354D     		ldr	r5, .L15+4
  51 0006 7068     		ldr	r0, [r6, #4]	@ unaligned
  52 0008 84B0     		sub	sp, sp, #16
  53 000a FFF7FEFF 		bl	_ZN8Platform7InitI2cEv
  54 000e 0524     		movs	r4, #5
  55              	.L8:
  56 0010 3220     		movs	r0, #50
  57 0012 FFF7FEFF 		bl	_Z5delaym
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccTC3iOn.s 			page 2


  58 0016 3E21     		movs	r1, #62
  59 0018 2846     		mov	r0, r5
  60 001a FFF7FEFF 		bl	_ZN6SX15095beginEh
  61 001e 60B9     		cbnz	r0, .L6
  62 0020 013C     		subs	r4, r4, #1
  63 0022 F5D1     		bne	.L8
  64 0024 0122     		movs	r2, #1
  65 0026 2E49     		ldr	r1, .L15+8
  66 0028 6846     		mov	r0, sp
  67 002a FFF7FEFF 		bl	_ZN7TwoWire14GetErrorCountsEb
  68 002e 2D4A     		ldr	r2, .L15+12
  69 0030 2346     		mov	r3, r4
  70 0032 1470     		strb	r4, [r2]
  71              	.L13:
  72 0034 1846     		mov	r0, r3
  73 0036 04B0     		add	sp, sp, #16
  74              		@ sp needed
  75 0038 70BD     		pop	{r4, r5, r6, pc}
  76              	.L6:
  77 003a 0122     		movs	r2, #1
  78 003c 2849     		ldr	r1, .L15+8
  79 003e 294D     		ldr	r5, .L15+12
  80 0040 6846     		mov	r0, sp
  81 0042 FFF7FEFF 		bl	_ZN7TwoWire14GetErrorCountsEb
  82 0046 3E21     		movs	r1, #62
  83 0048 7068     		ldr	r0, [r6, #4]
  84 004a FFF7FEFF 		bl	_ZN8Platform20RegisterI2cAddrUsageEh
  85 004e 0122     		movs	r2, #1
  86 0050 4FF48041 		mov	r1, #16384
  87 0054 2148     		ldr	r0, .L15+4
  88 0056 FFF7FEFF 		bl	_ZN6SX150915pinModeMultipleEt7PinMode
  89 005a 2048     		ldr	r0, .L15+4
  90 005c FFF7FEFF 		bl	_ZN6SX150914digitalReadAllEv
  91 0060 214B     		ldr	r3, .L15+16
  92 0062 C0F38030 		ubfx	r0, r0, #14, #1
  93 0066 1B5C     		ldrb	r3, [r3, r0]	@ zero_extendqisi2
  94 0068 2B70     		strb	r3, [r5]
  95 006a 002B     		cmp	r3, #0
  96 006c E2D0     		beq	.L13
  97 006e 0022     		movs	r2, #0
  98 0070 0121     		movs	r1, #1
  99 0072 1120     		movs	r0, #17
 100 0074 FFF7FEFF 		bl	pinModeDuet
 101 0078 0022     		movs	r2, #0
 102 007a 0121     		movs	r1, #1
 103 007c 6020     		movs	r0, #96
 104 007e FFF7FEFF 		bl	pinModeDuet
 105 0082 0722     		movs	r2, #7
 106 0084 49F2F001 		movw	r1, #37104
 107 0088 1448     		ldr	r0, .L15+4
 108 008a FFF7FEFF 		bl	_ZN6SX150915pinModeMultipleEt7PinMode
 109 008e 2A78     		ldrb	r2, [r5]	@ zero_extendqisi2
 110 0090 1248     		ldr	r0, .L15+4
 111 0092 42F60F73 		movw	r3, #12047
 112 0096 40F60974 		movw	r4, #3849
 113 009a 032A     		cmp	r2, #3
 114 009c 08BF     		it	eq
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccTC3iOn.s 			page 3


 115 009e 1C46     		moveq	r4, r3
 116 00a0 2146     		mov	r1, r4
 117 00a2 0022     		movs	r2, #0
 118 00a4 FFF7FEFF 		bl	_ZN6SX150915pinModeMultipleEt7PinMode
 119 00a8 2146     		mov	r1, r4
 120 00aa 0322     		movs	r2, #3
 121 00ac 0B48     		ldr	r0, .L15+4
 122 00ae FFF7FEFF 		bl	_ZN6SX150923enableInterruptMultipleEth
 123 00b2 0023     		movs	r3, #0
 124 00b4 0422     		movs	r2, #4
 125 00b6 0D49     		ldr	r1, .L15+20
 126 00b8 1120     		movs	r0, #17
 127 00ba FFF7FEFF 		bl	_Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_
 128 00be 0121     		movs	r1, #1
 129 00c0 0648     		ldr	r0, .L15+4
 130 00c2 FFF7FEFF 		bl	_ZN6SX150915interruptSourceEb
 131 00c6 0548     		ldr	r0, .L15+4
 132 00c8 FFF7FEFF 		bl	_ZN6SX150914digitalReadAllEv
 133 00cc 084A     		ldr	r2, .L15+24
 134 00ce 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 135 00d0 1080     		strh	r0, [r2]	@ movhi
 136 00d2 1846     		mov	r0, r3
 137 00d4 04B0     		add	sp, sp, #16
 138              		@ sp needed
 139 00d6 70BD     		pop	{r4, r5, r6, pc}
 140              	.L16:
 141              		.align	2
 142              	.L15:
 143 00d8 00000000 		.word	reprap
 144 00dc 00000000 		.word	.LANCHOR1
 145 00e0 00000000 		.word	Wire
 146 00e4 00000000 		.word	.LANCHOR2
 147 00e8 00000000 		.word	.LANCHOR4
 148 00ec 00000000 		.word	_ZN13DuetExpansionL7DueXIrqE17CallbackParameter
 149 00f0 00000000 		.word	.LANCHOR3
 150              		.size	_ZN13DuetExpansion9DueXnInitEv, .-_ZN13DuetExpansion9DueXnInitEv
 151              		.section	.text._ZN13DuetExpansion20AdditionalOutputInitEv,"ax",%progbits
 152              		.align	1
 153              		.p2align 2,,3
 154              		.global	_ZN13DuetExpansion20AdditionalOutputInitEv
 155              		.syntax unified
 156              		.thumb
 157              		.thumb_func
 158              		.fpu fpv4-sp-d16
 159              		.type	_ZN13DuetExpansion20AdditionalOutputInitEv, %function
 160              	_ZN13DuetExpansion20AdditionalOutputInitEv:
 161              		@ args = 0, pretend = 0, frame = 16
 162              		@ frame_needed = 0, uses_anonymous_args = 0
 163 0000 70B5     		push	{r4, r5, r6, lr}
 164 0002 184E     		ldr	r6, .L23
 165 0004 184D     		ldr	r5, .L23+4
 166 0006 7068     		ldr	r0, [r6, #4]
 167 0008 84B0     		sub	sp, sp, #16
 168 000a FFF7FEFF 		bl	_ZN8Platform7InitI2cEv
 169 000e 0524     		movs	r4, #5
 170              	.L20:
 171 0010 3220     		movs	r0, #50
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccTC3iOn.s 			page 4


 172 0012 FFF7FEFF 		bl	_Z5delaym
 173 0016 7121     		movs	r1, #113
 174 0018 2846     		mov	r0, r5
 175 001a FFF7FEFF 		bl	_ZN6SX15095beginEh
 176 001e 40B9     		cbnz	r0, .L18
 177 0020 013C     		subs	r4, r4, #1
 178 0022 F5D1     		bne	.L20
 179 0024 0122     		movs	r2, #1
 180 0026 1149     		ldr	r1, .L23+8
 181 0028 6846     		mov	r0, sp
 182 002a FFF7FEFF 		bl	_ZN7TwoWire14GetErrorCountsEb
 183 002e 04B0     		add	sp, sp, #16
 184              		@ sp needed
 185 0030 70BD     		pop	{r4, r5, r6, pc}
 186              	.L18:
 187 0032 0122     		movs	r2, #1
 188 0034 6846     		mov	r0, sp
 189 0036 0D49     		ldr	r1, .L23+8
 190 0038 FFF7FEFF 		bl	_ZN7TwoWire14GetErrorCountsEb
 191 003c 7068     		ldr	r0, [r6, #4]
 192 003e 7121     		movs	r1, #113
 193 0040 FFF7FEFF 		bl	_ZN8Platform20RegisterI2cAddrUsageEh
 194 0044 0222     		movs	r2, #2
 195 0046 4FF6FF71 		movw	r1, #65535
 196 004a 0748     		ldr	r0, .L23+4
 197 004c FFF7FEFF 		bl	_ZN6SX150915pinModeMultipleEt7PinMode
 198 0050 0548     		ldr	r0, .L23+4
 199 0052 FFF7FEFF 		bl	_ZN6SX150914digitalReadAllEv
 200 0056 064A     		ldr	r2, .L23+12
 201 0058 064B     		ldr	r3, .L23+16
 202 005a 1080     		strh	r0, [r2]	@ movhi
 203 005c 0122     		movs	r2, #1
 204 005e 1A70     		strb	r2, [r3]
 205 0060 04B0     		add	sp, sp, #16
 206              		@ sp needed
 207 0062 70BD     		pop	{r4, r5, r6, pc}
 208              	.L24:
 209              		.align	2
 210              	.L23:
 211 0064 00000000 		.word	reprap
 212 0068 00000000 		.word	.LANCHOR5
 213 006c 00000000 		.word	Wire
 214 0070 00000000 		.word	.LANCHOR6
 215 0074 00000000 		.word	.LANCHOR7
 216              		.size	_ZN13DuetExpansion20AdditionalOutputInitEv, .-_ZN13DuetExpansion20AdditionalOutputInitEv
 217              		.section	.text._ZN13DuetExpansion21GetExpansionBoardNameEv,"ax",%progbits
 218              		.align	1
 219              		.p2align 2,,3
 220              		.global	_ZN13DuetExpansion21GetExpansionBoardNameEv
 221              		.syntax unified
 222              		.thumb
 223              		.thumb_func
 224              		.fpu fpv4-sp-d16
 225              		.type	_ZN13DuetExpansion21GetExpansionBoardNameEv, %function
 226              	_ZN13DuetExpansion21GetExpansionBoardNameEv:
 227              		@ args = 0, pretend = 0, frame = 0
 228              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccTC3iOn.s 			page 5


 229              		@ link register save eliminated.
 230 0000 054B     		ldr	r3, .L28
 231 0002 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 232 0004 013B     		subs	r3, r3, #1
 233 0006 DBB2     		uxtb	r3, r3
 234 0008 022B     		cmp	r3, #2
 235 000a 9ABF     		itte	ls
 236 000c 034A     		ldrls	r2, .L28+4
 237 000e 52F82300 		ldrls	r0, [r2, r3, lsl #2]
 238 0012 0020     		movhi	r0, #0
 239 0014 7047     		bx	lr
 240              	.L29:
 241 0016 00BF     		.align	2
 242              	.L28:
 243 0018 00000000 		.word	.LANCHOR2
 244 001c 00000000 		.word	.LANCHOR8
 245              		.size	_ZN13DuetExpansion21GetExpansionBoardNameEv, .-_ZN13DuetExpansion21GetExpansionBoardNameEv
 246              		.section	.text._ZN13DuetExpansion31GetAdditionalExpansionBoardNameEv,"ax",%progbits
 247              		.align	1
 248              		.p2align 2,,3
 249              		.global	_ZN13DuetExpansion31GetAdditionalExpansionBoardNameEv
 250              		.syntax unified
 251              		.thumb
 252              		.thumb_func
 253              		.fpu fpv4-sp-d16
 254              		.type	_ZN13DuetExpansion31GetAdditionalExpansionBoardNameEv, %function
 255              	_ZN13DuetExpansion31GetAdditionalExpansionBoardNameEv:
 256              		@ args = 0, pretend = 0, frame = 0
 257              		@ frame_needed = 0, uses_anonymous_args = 0
 258              		@ link register save eliminated.
 259 0000 034B     		ldr	r3, .L33
 260 0002 0448     		ldr	r0, .L33+4
 261 0004 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 262 0006 002B     		cmp	r3, #0
 263 0008 08BF     		it	eq
 264 000a 0020     		moveq	r0, #0
 265 000c 7047     		bx	lr
 266              	.L34:
 267 000e 00BF     		.align	2
 268              	.L33:
 269 0010 00000000 		.word	.LANCHOR7
 270 0014 00000000 		.word	.LC0
 271              		.size	_ZN13DuetExpansion31GetAdditionalExpansionBoardNameEv, .-_ZN13DuetExpansion31GetAdditionalEx
 272              		.section	.text._ZN13DuetExpansion4SpinEv,"ax",%progbits
 273              		.align	1
 274              		.p2align 2,,3
 275              		.global	_ZN13DuetExpansion4SpinEv
 276              		.syntax unified
 277              		.thumb
 278              		.thumb_func
 279              		.fpu fpv4-sp-d16
 280              		.type	_ZN13DuetExpansion4SpinEv, %function
 281              	_ZN13DuetExpansion4SpinEv:
 282              		@ args = 0, pretend = 0, frame = 0
 283              		@ frame_needed = 0, uses_anonymous_args = 0
 284 0000 0B4B     		ldr	r3, .L47
 285 0002 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccTC3iOn.s 			page 6


 286 0004 23B1     		cbz	r3, .L43
 287 0006 10B5     		push	{r4, lr}
 288 0008 0A4C     		ldr	r4, .L47+4
 289 000a 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 290 000c 0BB9     		cbnz	r3, .L46
 291              	.L35:
 292 000e 10BD     		pop	{r4, pc}
 293              	.L43:
 294 0010 7047     		bx	lr
 295              	.L46:
 296 0012 FFF7FEFF 		bl	_Z11inInterruptv
 297 0016 0028     		cmp	r0, #0
 298 0018 F9D1     		bne	.L35
 299              		.syntax unified
 300              	@ 521 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 301 001a EFF31283 		MRS r3, basepri_max
 302              	@ 0 "" 2
 303              		.thumb
 304              		.syntax unified
 305 001e 002B     		cmp	r3, #0
 306 0020 F5D1     		bne	.L35
 307 0022 0548     		ldr	r0, .L47+8
 308 0024 2370     		strb	r3, [r4]
 309 0026 FFF7FEFF 		bl	_ZN6SX150914digitalReadAllEv
 310 002a 044B     		ldr	r3, .L47+12
 311 002c 1880     		strh	r0, [r3]	@ movhi
 312 002e 10BD     		pop	{r4, pc}
 313              	.L48:
 314              		.align	2
 315              	.L47:
 316 0030 00000000 		.word	.LANCHOR2
 317 0034 00000000 		.word	.LANCHOR0
 318 0038 00000000 		.word	.LANCHOR1
 319 003c 00000000 		.word	.LANCHOR3
 320              		.size	_ZN13DuetExpansion4SpinEv, .-_ZN13DuetExpansion4SpinEv
 321              		.section	.text._ZN13DuetExpansion10SetPinModeEh7PinMode,"ax",%progbits
 322              		.align	1
 323              		.p2align 2,,3
 324              		.global	_ZN13DuetExpansion10SetPinModeEh7PinMode
 325              		.syntax unified
 326              		.thumb
 327              		.thumb_func
 328              		.fpu fpv4-sp-d16
 329              		.type	_ZN13DuetExpansion10SetPinModeEh7PinMode, %function
 330              	_ZN13DuetExpansion10SetPinModeEh7PinMode:
 331              		@ args = 0, pretend = 0, frame = 0
 332              		@ frame_needed = 0, uses_anonymous_args = 0
 333              		@ link register save eliminated.
 334 0000 00F13803 		add	r3, r0, #56
 335 0004 DBB2     		uxtb	r3, r3
 336 0006 0F2B     		cmp	r3, #15
 337 0008 10D8     		bhi	.L50
 338 000a 154A     		ldr	r2, .L68
 339 000c 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 340 000e A2B1     		cbz	r2, .L49
 341 0010 4FF47062 		mov	r2, #3840
 342 0014 DA40     		lsrs	r2, r2, r3
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccTC3iOn.s 			page 7


 343 0016 D207     		lsls	r2, r2, #31
 344 0018 11D5     		bpl	.L52
 345 001a 4A1E     		subs	r2, r1, #1
 346 001c 072A     		cmp	r2, #7
 347 001e 0ED8     		bhi	.L52
 348 0020 DFE802F0 		tbb	[pc, r2]
 349              	.L54:
 350 0024 1B       		.byte	(.L53-.L54)/2
 351 0025 1B       		.byte	(.L53-.L54)/2
 352 0026 0C       		.byte	(.L55-.L54)/2
 353 0027 19       		.byte	(.L56-.L54)/2
 354 0028 0D       		.byte	(.L52-.L54)/2
 355 0029 0D       		.byte	(.L52-.L54)/2
 356 002a 17       		.byte	(.L57-.L54)/2
 357 002b 17       		.byte	(.L57-.L54)/2
 358              		.p2align 1
 359              	.L50:
 360 002c 2430     		adds	r0, r0, #36
 361 002e C0B2     		uxtb	r0, r0
 362 0030 0F28     		cmp	r0, #15
 363 0032 02D8     		bhi	.L49
 364 0034 0B4B     		ldr	r3, .L68+4
 365 0036 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 366 0038 33B9     		cbnz	r3, .L67
 367              	.L49:
 368 003a 7047     		bx	lr
 369              	.L55:
 370 003c 0921     		movs	r1, #9
 371              	.L52:
 372 003e 0A46     		mov	r2, r1
 373 0040 0948     		ldr	r0, .L68+8
 374 0042 1946     		mov	r1, r3
 375 0044 FFF7FEBF 		b	_ZN6SX15097pinModeEh7PinMode
 376              	.L67:
 377 0048 0A46     		mov	r2, r1
 378 004a 0146     		mov	r1, r0
 379 004c 0748     		ldr	r0, .L68+12
 380 004e FFF7FEBF 		b	_ZN6SX15097pinModeEh7PinMode
 381              	.L57:
 382 0052 0B21     		movs	r1, #11
 383 0054 F3E7     		b	.L52
 384              	.L56:
 385 0056 0A21     		movs	r1, #10
 386 0058 F1E7     		b	.L52
 387              	.L53:
 388 005a 0021     		movs	r1, #0
 389 005c EFE7     		b	.L52
 390              	.L69:
 391 005e 00BF     		.align	2
 392              	.L68:
 393 0060 00000000 		.word	.LANCHOR2
 394 0064 00000000 		.word	.LANCHOR7
 395 0068 00000000 		.word	.LANCHOR1
 396 006c 00000000 		.word	.LANCHOR5
 397              		.size	_ZN13DuetExpansion10SetPinModeEh7PinMode, .-_ZN13DuetExpansion10SetPinModeEh7PinMode
 398              		.section	.text._ZN13DuetExpansion11DigitalReadEh,"ax",%progbits
 399              		.align	1
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccTC3iOn.s 			page 8


 400              		.p2align 2,,3
 401              		.global	_ZN13DuetExpansion11DigitalReadEh
 402              		.syntax unified
 403              		.thumb
 404              		.thumb_func
 405              		.fpu fpv4-sp-d16
 406              		.type	_ZN13DuetExpansion11DigitalReadEh, %function
 407              	_ZN13DuetExpansion11DigitalReadEh:
 408              		@ args = 0, pretend = 0, frame = 0
 409              		@ frame_needed = 0, uses_anonymous_args = 0
 410 0000 00F13803 		add	r3, r0, #56
 411 0004 DBB2     		uxtb	r3, r3
 412 0006 0F2B     		cmp	r3, #15
 413 0008 10B5     		push	{r4, lr}
 414 000a 0446     		mov	r4, r0
 415 000c 03D8     		bhi	.L71
 416 000e 1D4B     		ldr	r3, .L87
 417 0010 1878     		ldrb	r0, [r3]	@ zero_extendqisi2
 418 0012 B8B9     		cbnz	r0, .L86
 419              	.L72:
 420 0014 10BD     		pop	{r4, pc}
 421              	.L71:
 422 0016 00F12403 		add	r3, r0, #36
 423 001a DBB2     		uxtb	r3, r3
 424 001c 0F2B     		cmp	r3, #15
 425 001e 0FD8     		bhi	.L81
 426 0020 194B     		ldr	r3, .L87+4
 427 0022 1878     		ldrb	r0, [r3]	@ zero_extendqisi2
 428 0024 0028     		cmp	r0, #0
 429 0026 F5D0     		beq	.L72
 430 0028 FFF7FEFF 		bl	_Z11inInterruptv
 431 002c A8B9     		cbnz	r0, .L79
 432              		.syntax unified
 433              	@ 521 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 434 002e EFF31283 		MRS r3, basepri_max
 435              	@ 0 "" 2
 436              		.thumb
 437              		.syntax unified
 438 0032 93B9     		cbnz	r3, .L79
 439 0034 1548     		ldr	r0, .L87+8
 440 0036 FFF7FEFF 		bl	_ZN6SX150914digitalReadAllEv
 441 003a 154B     		ldr	r3, .L87+12
 442 003c 1880     		strh	r0, [r3]	@ movhi
 443 003e 0EE0     		b	.L78
 444              	.L81:
 445 0040 0020     		movs	r0, #0
 446 0042 10BD     		pop	{r4, pc}
 447              	.L86:
 448 0044 1120     		movs	r0, #17
 449 0046 FFF7FEFF 		bl	digitalRead
 450 004a 68B1     		cbz	r0, .L73
 451              	.L76:
 452 004c 114B     		ldr	r3, .L87+16
 453 004e 1888     		ldrh	r0, [r3]
 454              	.L74:
 455 0050 C83C     		subs	r4, r4, #200
 456 0052 E040     		lsrs	r0, r0, r4
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccTC3iOn.s 			page 9


 457 0054 00F00100 		and	r0, r0, #1
 458 0058 10BD     		pop	{r4, pc}
 459              	.L79:
 460 005a 0D4B     		ldr	r3, .L87+12
 461 005c 1888     		ldrh	r0, [r3]
 462              	.L78:
 463 005e DC3C     		subs	r4, r4, #220
 464 0060 E040     		lsrs	r0, r0, r4
 465 0062 00F00100 		and	r0, r0, #1
 466 0066 10BD     		pop	{r4, pc}
 467              	.L73:
 468 0068 FFF7FEFF 		bl	_Z11inInterruptv
 469 006c 0028     		cmp	r0, #0
 470 006e EDD1     		bne	.L76
 471              		.syntax unified
 472              	@ 521 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 473 0070 EFF31283 		MRS r3, basepri_max
 474              	@ 0 "" 2
 475              		.thumb
 476              		.syntax unified
 477 0074 002B     		cmp	r3, #0
 478 0076 E9D1     		bne	.L76
 479 0078 0748     		ldr	r0, .L87+20
 480 007a FFF7FEFF 		bl	_ZN6SX150914digitalReadAllEv
 481 007e 054B     		ldr	r3, .L87+16
 482 0080 1880     		strh	r0, [r3]	@ movhi
 483 0082 E5E7     		b	.L74
 484              	.L88:
 485              		.align	2
 486              	.L87:
 487 0084 00000000 		.word	.LANCHOR2
 488 0088 00000000 		.word	.LANCHOR7
 489 008c 00000000 		.word	.LANCHOR5
 490 0090 00000000 		.word	.LANCHOR6
 491 0094 00000000 		.word	.LANCHOR3
 492 0098 00000000 		.word	.LANCHOR1
 493              		.size	_ZN13DuetExpansion11DigitalReadEh, .-_ZN13DuetExpansion11DigitalReadEh
 494              		.section	.text._ZN13DuetExpansion12DigitalWriteEhb,"ax",%progbits
 495              		.align	1
 496              		.p2align 2,,3
 497              		.global	_ZN13DuetExpansion12DigitalWriteEhb
 498              		.syntax unified
 499              		.thumb
 500              		.thumb_func
 501              		.fpu fpv4-sp-d16
 502              		.type	_ZN13DuetExpansion12DigitalWriteEhb, %function
 503              	_ZN13DuetExpansion12DigitalWriteEhb:
 504              		@ args = 0, pretend = 0, frame = 0
 505              		@ frame_needed = 0, uses_anonymous_args = 0
 506              		@ link register save eliminated.
 507 0000 00F13803 		add	r3, r0, #56
 508 0004 DBB2     		uxtb	r3, r3
 509 0006 0F2B     		cmp	r3, #15
 510 0008 03D8     		bhi	.L90
 511 000a 0B4A     		ldr	r2, .L99
 512 000c 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 513 000e 6AB9     		cbnz	r2, .L98
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccTC3iOn.s 			page 10


 514              	.L89:
 515 0010 7047     		bx	lr
 516              	.L90:
 517 0012 2430     		adds	r0, r0, #36
 518 0014 C0B2     		uxtb	r0, r0
 519 0016 0F28     		cmp	r0, #15
 520 0018 FAD8     		bhi	.L89
 521 001a 084B     		ldr	r3, .L99+4
 522 001c 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 523 001e 002B     		cmp	r3, #0
 524 0020 F6D0     		beq	.L89
 525 0022 0A46     		mov	r2, r1
 526 0024 0146     		mov	r1, r0
 527 0026 0648     		ldr	r0, .L99+8
 528 0028 FFF7FEBF 		b	_ZN6SX150912digitalWriteEhb
 529              	.L98:
 530 002c 0A46     		mov	r2, r1
 531 002e 0548     		ldr	r0, .L99+12
 532 0030 1946     		mov	r1, r3
 533 0032 FFF7FEBF 		b	_ZN6SX150912digitalWriteEhb
 534              	.L100:
 535 0036 00BF     		.align	2
 536              	.L99:
 537 0038 00000000 		.word	.LANCHOR2
 538 003c 00000000 		.word	.LANCHOR7
 539 0040 00000000 		.word	.LANCHOR5
 540 0044 00000000 		.word	.LANCHOR1
 541              		.size	_ZN13DuetExpansion12DigitalWriteEhb, .-_ZN13DuetExpansion12DigitalWriteEhb
 542              		.section	.text._ZN13DuetExpansion9AnalogOutEhf,"ax",%progbits
 543              		.align	1
 544              		.p2align 2,,3
 545              		.global	_ZN13DuetExpansion9AnalogOutEhf
 546              		.syntax unified
 547              		.thumb
 548              		.thumb_func
 549              		.fpu fpv4-sp-d16
 550              		.type	_ZN13DuetExpansion9AnalogOutEhf, %function
 551              	_ZN13DuetExpansion9AnalogOutEhf:
 552              		@ args = 0, pretend = 0, frame = 8
 553              		@ frame_needed = 0, uses_anonymous_args = 0
 554              		@ link register save eliminated.
 555 0000 00F13801 		add	r1, r0, #56
 556 0004 C9B2     		uxtb	r1, r1
 557 0006 0F29     		cmp	r1, #15
 558 0008 82B0     		sub	sp, sp, #8
 559 000a 13D8     		bhi	.L102
 560 000c 284B     		ldr	r3, .L128
 561 000e 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 562 0010 BBB1     		cbz	r3, .L101
 563 0012 B4EE400A 		vcmp.f32	s0, s0
 564 0016 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 565 001a 33D6     		bvs	.L107
 566 001c F7EE007A 		vmov.f32	s15, #1.0e+0
 567 0020 B4EEE70A 		vcmpe.f32	s0, s15
 568 0024 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 569 0028 1ED4     		bmi	.L125
 570 002a FF22     		movs	r2, #255
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccTC3iOn.s 			page 11


 571              	.L105:
 572 002c 2148     		ldr	r0, .L128+4
 573 002e 02B0     		add	sp, sp, #8
 574              		@ sp needed
 575 0030 FFF7FEBF 		b	_ZN6SX150911analogWriteEhh
 576              	.L102:
 577 0034 2430     		adds	r0, r0, #36
 578 0036 C1B2     		uxtb	r1, r0
 579 0038 0F29     		cmp	r1, #15
 580 003a 02D8     		bhi	.L101
 581 003c 1E4B     		ldr	r3, .L128+8
 582 003e 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 583 0040 0BB9     		cbnz	r3, .L126
 584              	.L101:
 585 0042 02B0     		add	sp, sp, #8
 586              		@ sp needed
 587 0044 7047     		bx	lr
 588              	.L126:
 589 0046 B4EE400A 		vcmp.f32	s0, s0
 590 004a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 591 004e 24D6     		bvs	.L111
 592 0050 F7EE007A 		vmov.f32	s15, #1.0e+0
 593 0054 B4EEE70A 		vcmpe.f32	s0, s15
 594 0058 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 595 005c 0BD4     		bmi	.L127
 596 005e FF22     		movs	r2, #255
 597              	.L109:
 598 0060 1648     		ldr	r0, .L128+12
 599 0062 02B0     		add	sp, sp, #8
 600              		@ sp needed
 601 0064 FFF7FEBF 		b	_ZN6SX150911analogWriteEhh
 602              	.L125:
 603 0068 B5EEC00A 		vcmpe.f32	s0, #0
 604 006c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 605 0070 08DC     		bgt	.L107
 606 0072 0022     		movs	r2, #0
 607 0074 DAE7     		b	.L105
 608              	.L127:
 609 0076 B5EEC00A 		vcmpe.f32	s0, #0
 610 007a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 611 007e 0CDC     		bgt	.L111
 612 0080 0022     		movs	r2, #0
 613 0082 EDE7     		b	.L109
 614              	.L107:
 615 0084 DFED0E7A 		vldr.32	s15, .L128+16
 616 0088 20EE270A 		vmul.f32	s0, s0, s15
 617 008c FCEEC07A 		vcvt.u32.f32	s15, s0
 618 0090 CDED017A 		vstr.32	s15, [sp, #4]	@ int
 619 0094 9DF80420 		ldrb	r2, [sp, #4]	@ zero_extendqisi2
 620 0098 C8E7     		b	.L105
 621              	.L111:
 622 009a DFED097A 		vldr.32	s15, .L128+16
 623 009e 20EE270A 		vmul.f32	s0, s0, s15
 624 00a2 FCEEC07A 		vcvt.u32.f32	s15, s0
 625 00a6 CDED017A 		vstr.32	s15, [sp, #4]	@ int
 626 00aa 9DF80420 		ldrb	r2, [sp, #4]	@ zero_extendqisi2
 627 00ae D7E7     		b	.L109
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccTC3iOn.s 			page 12


 628              	.L129:
 629              		.align	2
 630              	.L128:
 631 00b0 00000000 		.word	.LANCHOR2
 632 00b4 00000000 		.word	.LANCHOR1
 633 00b8 00000000 		.word	.LANCHOR7
 634 00bc 00000000 		.word	.LANCHOR5
 635 00c0 00007F43 		.word	1132396544
 636              		.size	_ZN13DuetExpansion9AnalogOutEhf, .-_ZN13DuetExpansion9AnalogOutEhf
 637              		.section	.text._ZN13DuetExpansion11DiagnosticsE11MessageType,"ax",%progbits
 638              		.align	1
 639              		.p2align 2,,3
 640              		.global	_ZN13DuetExpansion11DiagnosticsE11MessageType
 641              		.syntax unified
 642              		.thumb
 643              		.thumb_func
 644              		.fpu fpv4-sp-d16
 645              		.type	_ZN13DuetExpansion11DiagnosticsE11MessageType, %function
 646              	_ZN13DuetExpansion11DiagnosticsE11MessageType:
 647              		@ args = 0, pretend = 0, frame = 0
 648              		@ frame_needed = 0, uses_anonymous_args = 0
 649              		@ link register save eliminated.
 650 0000 7047     		bx	lr
 651              		.size	_ZN13DuetExpansion11DiagnosticsE11MessageType, .-_ZN13DuetExpansion11DiagnosticsE11MessageTy
 652 0002 00BF     		.section	.text._ZN13DuetExpansion14DiagnosticReadEv,"ax",%progbits
 653              		.align	1
 654              		.p2align 2,,3
 655              		.global	_ZN13DuetExpansion14DiagnosticReadEv
 656              		.syntax unified
 657              		.thumb
 658              		.thumb_func
 659              		.fpu fpv4-sp-d16
 660              		.type	_ZN13DuetExpansion14DiagnosticReadEv, %function
 661              	_ZN13DuetExpansion14DiagnosticReadEv:
 662              		@ args = 0, pretend = 0, frame = 0
 663              		@ frame_needed = 0, uses_anonymous_args = 0
 664 0000 10B5     		push	{r4, lr}
 665 0002 094C     		ldr	r4, .L133
 666 0004 0022     		movs	r2, #0
 667 0006 4BF6FF71 		movw	r1, #49151
 668 000a 2046     		mov	r0, r4
 669 000c FFF7FEFF 		bl	_ZN6SX150915pinModeMultipleEt7PinMode
 670 0010 0120     		movs	r0, #1
 671 0012 FFF7FEFF 		bl	_Z5delaym
 672 0016 2046     		mov	r0, r4
 673 0018 FFF7FEFF 		bl	_ZN6SX150914digitalReadAllEv
 674 001c 0446     		mov	r4, r0
 675 001e FFF7FEFF 		bl	_ZN13DuetExpansion9DueXnInitEv
 676 0022 2046     		mov	r0, r4
 677 0024 10BD     		pop	{r4, pc}
 678              	.L134:
 679 0026 00BF     		.align	2
 680              	.L133:
 681 0028 00000000 		.word	.LANCHOR1
 682              		.size	_ZN13DuetExpansion14DiagnosticReadEv, .-_ZN13DuetExpansion14DiagnosticReadEv
 683              		.section	.text.startup._GLOBAL__sub_I__ZN13DuetExpansion9DueXnInitEv,"ax",%progbits
 684              		.align	1
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccTC3iOn.s 			page 13


 685              		.p2align 2,,3
 686              		.syntax unified
 687              		.thumb
 688              		.thumb_func
 689              		.fpu fpv4-sp-d16
 690              		.type	_GLOBAL__sub_I__ZN13DuetExpansion9DueXnInitEv, %function
 691              	_GLOBAL__sub_I__ZN13DuetExpansion9DueXnInitEv:
 692              		@ args = 0, pretend = 0, frame = 0
 693              		@ frame_needed = 0, uses_anonymous_args = 0
 694 0000 08B5     		push	{r3, lr}
 695 0002 0448     		ldr	r0, .L137
 696 0004 FFF7FEFF 		bl	_ZN6SX1509C1Ev
 697 0008 0348     		ldr	r0, .L137+4
 698 000a BDE80840 		pop	{r3, lr}
 699 000e FFF7FEBF 		b	_ZN6SX1509C1Ev
 700              	.L138:
 701 0012 00BF     		.align	2
 702              	.L137:
 703 0014 00000000 		.word	.LANCHOR1
 704 0018 00000000 		.word	.LANCHOR5
 705              		.size	_GLOBAL__sub_I__ZN13DuetExpansion9DueXnInitEv, .-_GLOBAL__sub_I__ZN13DuetExpansion9DueXnInit
 706              		.section	.init_array,"aw",%init_array
 707              		.align	2
 708 0000 00000000 		.word	_GLOBAL__sub_I__ZN13DuetExpansion9DueXnInitEv(target1)
 709              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 710              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 711              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 712              	_ZL28cpu_irq_prev_interrupt_state:
 713 0000 00       		.space	1
 714              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 715              		.align	2
 716              		.type	_ZL32cpu_irq_critical_section_counter, %object
 717              		.size	_ZL32cpu_irq_critical_section_counter, 4
 718              	_ZL32cpu_irq_critical_section_counter:
 719 0000 00000000 		.space	4
 720              		.section	.bss._ZN13DuetExpansionL13dueXnExpanderE,"aw",%nobits
 721              		.align	2
 722              		.set	.LANCHOR1,. + 0
 723              		.type	_ZN13DuetExpansionL13dueXnExpanderE, %object
 724              		.size	_ZN13DuetExpansionL13dueXnExpanderE, 12
 725              	_ZN13DuetExpansionL13dueXnExpanderE:
 726 0000 00000000 		.space	12
 726      00000000 
 726      00000000 
 727              		.section	.bss._ZN13DuetExpansionL14dueXnBoardTypeE,"aw",%nobits
 728              		.set	.LANCHOR2,. + 0
 729              		.type	_ZN13DuetExpansionL14dueXnBoardTypeE, %object
 730              		.size	_ZN13DuetExpansionL14dueXnBoardTypeE, 1
 731              	_ZN13DuetExpansionL14dueXnBoardTypeE:
 732 0000 00       		.space	1
 733              		.section	.bss._ZN13DuetExpansionL14dueXnInputBitsE,"aw",%nobits
 734              		.align	1
 735              		.set	.LANCHOR3,. + 0
 736              		.type	_ZN13DuetExpansionL14dueXnInputBitsE, %object
 737              		.size	_ZN13DuetExpansionL14dueXnInputBitsE, 2
 738              	_ZN13DuetExpansionL14dueXnInputBitsE:
 739 0000 0000     		.space	2
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccTC3iOn.s 			page 14


 740              		.section	.bss._ZN13DuetExpansionL16dueXstateChangedE,"aw",%nobits
 741              		.set	.LANCHOR0,. + 0
 742              		.type	_ZN13DuetExpansionL16dueXstateChangedE, %object
 743              		.size	_ZN13DuetExpansionL16dueXstateChangedE, 1
 744              	_ZN13DuetExpansionL16dueXstateChangedE:
 745 0000 00       		.space	1
 746              		.section	.bss._ZN13DuetExpansionL20additionalIoExpanderE,"aw",%nobits
 747              		.align	2
 748              		.set	.LANCHOR5,. + 0
 749              		.type	_ZN13DuetExpansionL20additionalIoExpanderE, %object
 750              		.size	_ZN13DuetExpansionL20additionalIoExpanderE, 12
 751              	_ZN13DuetExpansionL20additionalIoExpanderE:
 752 0000 00000000 		.space	12
 752      00000000 
 752      00000000 
 753              		.section	.bss._ZN13DuetExpansionL21additionalIoInputBitsE,"aw",%nobits
 754              		.align	1
 755              		.set	.LANCHOR6,. + 0
 756              		.type	_ZN13DuetExpansionL21additionalIoInputBitsE, %object
 757              		.size	_ZN13DuetExpansionL21additionalIoInputBitsE, 2
 758              	_ZN13DuetExpansionL21additionalIoInputBitsE:
 759 0000 0000     		.space	2
 760              		.section	.bss._ZN13DuetExpansionL27additionalIoExpanderPresentE,"aw",%nobits
 761              		.set	.LANCHOR7,. + 0
 762              		.type	_ZN13DuetExpansionL27additionalIoExpanderPresentE, %object
 763              		.size	_ZN13DuetExpansionL27additionalIoExpanderPresentE, 1
 764              	_ZN13DuetExpansionL27additionalIoExpanderPresentE:
 765 0000 00       		.space	1
 766              		.section	.rodata.CSWTCH.41,"a",%progbits
 767              		.align	2
 768              		.set	.LANCHOR8,. + 0
 769              		.type	CSWTCH.41, %object
 770              		.size	CSWTCH.41, 12
 771              	CSWTCH.41:
 772 0000 00000000 		.word	.LC1
 773 0004 08000000 		.word	.LC2
 774 0008 10000000 		.word	.LC3
 775              		.section	.rodata._ZN13DuetExpansion31GetAdditionalExpansionBoardNameEv.str1.4,"aMS",%progbits,1
 776              		.align	2
 777              	.LC0:
 778 0000 53583135 		.ascii	"SX1509B expander\000"
 778      30394220 
 778      65787061 
 778      6E646572 
 778      00
 779              		.section	.rodata._ZN13DuetExpansionL10boardTypesE,"a",%progbits
 780              		.align	2
 781              		.set	.LANCHOR4,. + 0
 782              		.type	_ZN13DuetExpansionL10boardTypesE, %object
 783              		.size	_ZN13DuetExpansionL10boardTypesE, 2
 784              	_ZN13DuetExpansionL10boardTypesE:
 785 0000 03       		.byte	3
 786 0001 02       		.byte	2
 787              		.section	.rodata.str1.4,"aMS",%progbits,1
 788              		.align	2
 789              	.LC1:
 790 0000 44756558 		.ascii	"DueX0\000"
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccTC3iOn.s 			page 15


 790      3000
 791 0006 0000     		.space	2
 792              	.LC2:
 793 0008 44756558 		.ascii	"DueX2\000"
 793      3200
 794 000e 0000     		.space	2
 795              	.LC3:
 796 0010 44756558 		.ascii	"DueX5\000"
 796      3500
 797              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
