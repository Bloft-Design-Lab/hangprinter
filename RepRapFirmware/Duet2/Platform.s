ARM GAS  /tmp/ccghtDyP.s 			page 1


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
  13              		.file	"Platform.cpp"
  14              		.section	.text._ZL12FanInterrupt17CallbackParameter,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.syntax unified
  18              		.thumb
  19              		.thumb_func
  20              		.fpu fpv4-sp-d16
  21              		.type	_ZL12FanInterrupt17CallbackParameter, %function
  22              	_ZL12FanInterrupt17CallbackParameter:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26 0000 0A4A     		ldr	r2, .L9
  27 0002 1368     		ldr	r3, [r2]
  28 0004 0133     		adds	r3, r3, #1
  29 0006 202B     		cmp	r3, #32
  30 0008 1360     		str	r3, [r2]
  31 000a 00D0     		beq	.L8
  32 000c 7047     		bx	lr
  33              	.L8:
  34 000e 30B4     		push	{r4, r5}
  35 0010 074B     		ldr	r3, .L9+4
  36 0012 0849     		ldr	r1, .L9+8
  37 0014 D3F89000 		ldr	r0, [r3, #144]
  38 0018 0B68     		ldr	r3, [r1]
  39 001a 074D     		ldr	r5, .L9+12
  40 001c 0024     		movs	r4, #0
  41 001e C31A     		subs	r3, r0, r3
  42 0020 2B60     		str	r3, [r5]
  43 0022 1460     		str	r4, [r2]
  44 0024 0860     		str	r0, [r1]
  45 0026 30BC     		pop	{r4, r5}
  46 0028 7047     		bx	lr
  47              	.L10:
  48 002a 00BF     		.align	2
  49              	.L9:
  50 002c 00000000 		.word	.LANCHOR0
  51 0030 00000940 		.word	1074331648
  52 0034 00000000 		.word	.LANCHOR1
  53 0038 00000000 		.word	.LANCHOR2
  54              		.size	_ZL12FanInterrupt17CallbackParameter, .-_ZL12FanInterrupt17CallbackParameter
  55              		.section	.text._ZNK8Platform19AnyAxisMotorStalledEj.part.18,"ax",%progbits
  56              		.align	1
  57              		.p2align 2,,3
ARM GAS  /tmp/ccghtDyP.s 			page 2


  58              		.syntax unified
  59              		.thumb
  60              		.thumb_func
  61              		.fpu fpv4-sp-d16
  62              		.type	_ZNK8Platform19AnyAxisMotorStalledEj.part.18, %function
  63              	_ZNK8Platform19AnyAxisMotorStalledEj.part.18:
  64              		@ args = 0, pretend = 0, frame = 0
  65              		@ frame_needed = 0, uses_anonymous_args = 0
  66 0000 70B5     		push	{r4, r5, r6, lr}
  67 0002 C900     		lsls	r1, r1, #3
  68 0004 4618     		adds	r6, r0, r1
  69 0006 D6F8F832 		ldr	r3, [r6, #760]
  70 000a A3B1     		cbz	r3, .L12
  71 000c 01F53F71 		add	r1, r1, #764
  72 0010 4518     		adds	r5, r0, r1
  73 0012 0024     		movs	r4, #0
  74 0014 02E0     		b	.L14
  75              	.L22:
  76 0016 0134     		adds	r4, r4, #1
  77 0018 A342     		cmp	r3, r4
  78 001a 0CD9     		bls	.L12
  79              	.L14:
  80 001c 15F8010B 		ldrb	r0, [r5], #1	@ zero_extendqisi2
  81 0020 0B28     		cmp	r0, #11
  82 0022 F8D8     		bhi	.L22
  83 0024 FFF7FEFF 		bl	_ZN12SmartDrivers13GetLiveStatusEj
  84 0028 C307     		lsls	r3, r0, #31
  85 002a 06D4     		bmi	.L17
  86 002c D6F8F832 		ldr	r3, [r6, #760]
  87 0030 0134     		adds	r4, r4, #1
  88 0032 A342     		cmp	r3, r4
  89 0034 F2D8     		bhi	.L14
  90              	.L12:
  91 0036 0020     		movs	r0, #0
  92 0038 70BD     		pop	{r4, r5, r6, pc}
  93              	.L17:
  94 003a 0120     		movs	r0, #1
  95 003c 70BD     		pop	{r4, r5, r6, pc}
  96              		.size	_ZNK8Platform19AnyAxisMotorStalledEj.part.18, .-_ZNK8Platform19AnyAxisMotorStalledEj.part.18
  97 003e 00BF     		.section	.text._ZN8Platform13DisableDriverEj.part.20,"ax",%progbits
  98              		.align	1
  99              		.p2align 2,,3
 100              		.syntax unified
 101              		.thumb
 102              		.thumb_func
 103              		.fpu fpv4-sp-d16
 104              		.type	_ZN8Platform13DisableDriverEj.part.20, %function
 105              	_ZN8Platform13DisableDriverEj.part.20:
 106              		@ args = 0, pretend = 0, frame = 0
 107              		@ frame_needed = 0, uses_anonymous_args = 0
 108 0000 10B5     		push	{r4, lr}
 109 0002 D0F8C423 		ldr	r2, [r0, #964]
 110 0006 8A42     		cmp	r2, r1
 111 0008 0446     		mov	r4, r0
 112 000a 08D9     		bls	.L24
 113 000c 0846     		mov	r0, r1
 114 000e 0444     		add	r4, r4, r0
ARM GAS  /tmp/ccghtDyP.s 			page 3


 115 0010 0021     		movs	r1, #0
 116 0012 FFF7FEFF 		bl	_ZN12SmartDrivers11EnableDriveEjb
 117 0016 0023     		movs	r3, #0
 118 0018 84F8C430 		strb	r3, [r4, #196]
 119 001c 10BD     		pop	{r4, pc}
 120              	.L24:
 121 001e 0C44     		add	r4, r4, r1
 122 0020 064A     		ldr	r2, .L27
 123 0022 94F9E830 		ldrsb	r3, [r4, #232]
 124 0026 505C     		ldrb	r0, [r2, r1]	@ zero_extendqisi2
 125 0028 002B     		cmp	r3, #0
 126 002a CCBF     		ite	gt
 127 002c 0021     		movgt	r1, #0
 128 002e 0121     		movle	r1, #1
 129 0030 FFF7FEFF 		bl	digitalWrite
 130 0034 0023     		movs	r3, #0
 131 0036 84F8C430 		strb	r3, [r4, #196]
 132 003a 10BD     		pop	{r4, pc}
 133              	.L28:
 134              		.align	2
 135              	.L27:
 136 003c 00000000 		.word	.LANCHOR3
 137              		.size	_ZN8Platform13DisableDriverEj.part.20, .-_ZN8Platform13DisableDriverEj.part.20
 138              		.section	.text._ZN8Platform18UpdateMotorCurrentEj.part.21,"ax",%progbits
 139              		.align	1
 140              		.p2align 2,,3
 141              		.syntax unified
 142              		.thumb
 143              		.thumb_func
 144              		.fpu fpv4-sp-d16
 145              		.type	_ZN8Platform18UpdateMotorCurrentEj.part.21, %function
 146              	_ZN8Platform18UpdateMotorCurrentEj.part.21:
 147              		@ args = 0, pretend = 0, frame = 0
 148              		@ frame_needed = 0, uses_anonymous_args = 0
 149              		@ link register save eliminated.
 150 0000 4218     		adds	r2, r0, r1
 151 0002 00EB8103 		add	r3, r0, r1, lsl #2
 152 0006 92F8C420 		ldrb	r2, [r2, #196]	@ zero_extendqisi2
 153 000a 93EDA60A 		vldr.32	s0, [r3, #664]
 154 000e 012A     		cmp	r2, #1
 155 0010 18BF     		it	ne
 156 0012 D3EDB27A 		vldrne.32	s15, [r3, #712]
 157 0016 D0F8C433 		ldr	r3, [r0, #964]
 158 001a 08BF     		it	eq
 159 001c D0EDF07A 		vldreq.32	s15, [r0, #960]
 160 0020 9942     		cmp	r1, r3
 161 0022 20EE270A 		vmul.f32	s0, s0, s15
 162 0026 00D3     		bcc	.L33
 163 0028 7047     		bx	lr
 164              	.L33:
 165 002a 0846     		mov	r0, r1
 166 002c FFF7FEBF 		b	_ZN12SmartDrivers10SetCurrentEjf
 167              		.size	_ZN8Platform18UpdateMotorCurrentEj.part.21, .-_ZN8Platform18UpdateMotorCurrentEj.part.21
 168              		.section	.text._ZN8Platform16SetDriverCurrentEjfi.part.23,"ax",%progbits
 169              		.align	1
 170              		.p2align 2,,3
 171              		.syntax unified
ARM GAS  /tmp/ccghtDyP.s 			page 4


 172              		.thumb
 173              		.thumb_func
 174              		.fpu fpv4-sp-d16
 175              		.type	_ZN8Platform16SetDriverCurrentEjfi.part.23, %function
 176              	_ZN8Platform16SetDriverCurrentEjfi.part.23:
 177              		@ args = 0, pretend = 0, frame = 8
 178              		@ frame_needed = 0, uses_anonymous_args = 0
 179 0000 10B5     		push	{r4, lr}
 180 0002 40F29133 		movw	r3, #913
 181 0006 9A42     		cmp	r2, r3
 182 0008 82B0     		sub	sp, sp, #8
 183 000a 0446     		mov	r4, r0
 184 000c 22D0     		beq	.L36
 185 000e 40F29533 		movw	r3, #917
 186 0012 9A42     		cmp	r2, r3
 187 0014 13D0     		beq	.L37
 188 0016 40F28A33 		movw	r3, #906
 189 001a 9A42     		cmp	r2, r3
 190 001c 05D0     		beq	.L40
 191 001e 2046     		mov	r0, r4
 192 0020 02B0     		add	sp, sp, #8
 193              		@ sp needed
 194 0022 BDE81040 		pop	{r4, lr}
 195 0026 FFF7FEBF 		b	_ZN8Platform18UpdateMotorCurrentEj.part.21
 196              	.L40:
 197 002a 00EB8103 		add	r3, r0, r1, lsl #2
 198 002e 2046     		mov	r0, r4
 199 0030 83EDA60A 		vstr.32	s0, [r3, #664]
 200 0034 02B0     		add	sp, sp, #8
 201              		@ sp needed
 202 0036 BDE81040 		pop	{r4, lr}
 203 003a FFF7FEBF 		b	_ZN8Platform18UpdateMotorCurrentEj.part.21
 204              	.L37:
 205 003e 0846     		mov	r0, r1
 206 0040 0191     		str	r1, [sp, #4]
 207 0042 FFF7FEFF 		bl	_ZN12SmartDrivers27SetStandstillCurrentPercentEjf
 208 0046 0199     		ldr	r1, [sp, #4]
 209 0048 2046     		mov	r0, r4
 210 004a 02B0     		add	sp, sp, #8
 211              		@ sp needed
 212 004c BDE81040 		pop	{r4, lr}
 213 0050 FFF7FEBF 		b	_ZN8Platform18UpdateMotorCurrentEj.part.21
 214              	.L36:
 215 0054 9FED067A 		vldr.32	s14, .L41
 216 0058 60EE077A 		vmul.f32	s15, s0, s14
 217 005c 00EB8103 		add	r3, r0, r1, lsl #2
 218 0060 2046     		mov	r0, r4
 219 0062 C3EDB27A 		vstr.32	s15, [r3, #712]
 220 0066 02B0     		add	sp, sp, #8
 221              		@ sp needed
 222 0068 BDE81040 		pop	{r4, lr}
 223 006c FFF7FEBF 		b	_ZN8Platform18UpdateMotorCurrentEj.part.21
 224              	.L42:
 225              		.align	2
 226              	.L41:
 227 0070 0AD7233C 		.word	1008981770
 228              		.size	_ZN8Platform16SetDriverCurrentEjfi.part.23, .-_ZN8Platform16SetDriverCurrentEjfi.part.23
ARM GAS  /tmp/ccghtDyP.s 			page 5


 229              		.section	.text._ZN8Platform14AppendAuxReplyEPKcb.part.25,"ax",%progbits
 230              		.align	1
 231              		.p2align 2,,3
 232              		.syntax unified
 233              		.thumb
 234              		.thumb_func
 235              		.fpu fpv4-sp-d16
 236              		.type	_ZN8Platform14AppendAuxReplyEPKcb.part.25, %function
 237              	_ZN8Platform14AppendAuxReplyEPKcb.part.25:
 238              		@ args = 0, pretend = 0, frame = 16
 239              		@ frame_needed = 0, uses_anonymous_args = 0
 240 0000 70B5     		push	{r4, r5, r6, lr}
 241 0002 84B0     		sub	sp, sp, #16
 242 0004 1546     		mov	r5, r2
 243 0006 0446     		mov	r4, r0
 244 0008 0E46     		mov	r6, r1
 245 000a 4FF0FF32 		mov	r2, #-1
 246 000e 00F68C11 		addw	r1, r0, #2444
 247 0012 02A8     		add	r0, sp, #8
 248 0014 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 249 0018 C5B9     		cbnz	r5, .L55
 250 001a D4F89009 		ldr	r0, [r4, #2448]
 251 001e 60B1     		cbz	r0, .L56
 252              	.L47:
 253 0020 D4F89439 		ldr	r3, [r4, #2452]
 254 0024 0133     		adds	r3, r3, #1
 255 0026 3146     		mov	r1, r6
 256 0028 C4F89439 		str	r3, [r4, #2452]
 257 002c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 258              	.L46:
 259 0030 02A8     		add	r0, sp, #8
 260 0032 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 261 0036 04B0     		add	sp, sp, #16
 262              		@ sp needed
 263 0038 70BD     		pop	{r4, r5, r6, pc}
 264              	.L56:
 265 003a 04F51960 		add	r0, r4, #2448
 266 003e FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 267 0042 0028     		cmp	r0, #0
 268 0044 F4D0     		beq	.L46
 269 0046 D4F89009 		ldr	r0, [r4, #2448]
 270 004a E9E7     		b	.L47
 271              	.L55:
 272 004c 01A8     		add	r0, sp, #4
 273 004e FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 274 0052 0028     		cmp	r0, #0
 275 0054 ECD0     		beq	.L46
 276 0056 3146     		mov	r1, r6
 277 0058 0198     		ldr	r0, [sp, #4]
 278 005a FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 279 005e 04F67810 		addw	r0, r4, #2424
 280 0062 0199     		ldr	r1, [sp, #4]
 281 0064 FFF7FEFF 		bl	_ZNV11OutputStack4PushEP12OutputBuffer
 282 0068 02A8     		add	r0, sp, #8
 283 006a FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 284 006e 04B0     		add	sp, sp, #16
 285              		@ sp needed
ARM GAS  /tmp/ccghtDyP.s 			page 6


 286 0070 70BD     		pop	{r4, r5, r6, pc}
 287              		.size	_ZN8Platform14AppendAuxReplyEPKcb.part.25, .-_ZN8Platform14AppendAuxReplyEPKcb.part.25
 288 0072 00BF     		.section	.text._ZN8Platform11AtxPowerOffEb.part.26,"ax",%progbits
 289              		.align	1
 290              		.p2align 2,,3
 291              		.syntax unified
 292              		.thumb
 293              		.thumb_func
 294              		.fpu fpv4-sp-d16
 295              		.type	_ZN8Platform11AtxPowerOffEb.part.26, %function
 296              	_ZN8Platform11AtxPowerOffEb.part.26:
 297              		@ args = 0, pretend = 0, frame = 0
 298              		@ frame_needed = 0, uses_anonymous_args = 0
 299 0000 0368     		ldr	r3, [r0]
 300 0002 0022     		movs	r2, #0
 301 0004 80F8942A 		strb	r2, [r0, #2708]
 302 0008 C3B1     		cbz	r3, .L63
 303 000a D0B5     		push	{r4, r6, r7, lr}
 304 000c 00F6F812 		addw	r2, r0, #2552
 305 0010 D2E90067 		ldrd	r6, [r2]
 306 0014 82B0     		sub	sp, sp, #8
 307 0016 0446     		mov	r4, r0
 308 0018 0A4A     		ldr	r2, .L66
 309 001a 0092     		str	r2, [sp]
 310 001c 1846     		mov	r0, r3
 311 001e 3246     		mov	r2, r6
 312 0020 3B46     		mov	r3, r7
 313 0022 FFF7FEFF 		bl	_ZN6Logger10LogMessageExPKc
 314 0026 2068     		ldr	r0, [r4]
 315 0028 0121     		movs	r1, #1
 316 002a FFF7FEFF 		bl	_ZN6Logger5FlushEb
 317 002e 0021     		movs	r1, #0
 318 0030 4F20     		movs	r0, #79
 319 0032 02B0     		add	sp, sp, #8
 320              		@ sp needed
 321 0034 BDE8D040 		pop	{r4, r6, r7, lr}
 322 0038 FFF7FEBF 		b	_ZN6IoPort12WriteDigitalEhb
 323              	.L63:
 324 003c 0021     		movs	r1, #0
 325 003e 4F20     		movs	r0, #79
 326 0040 FFF7FEBF 		b	_ZN6IoPort12WriteDigitalEhb
 327              	.L67:
 328              		.align	2
 329              	.L66:
 330 0044 00000000 		.word	.LC7
 331              		.size	_ZN8Platform11AtxPowerOffEb.part.26, .-_ZN8Platform11AtxPowerOffEb.part.26
 332              		.section	.text.UrgentInit,"ax",%progbits
 333              		.align	1
 334              		.p2align 2,,3
 335              		.global	UrgentInit
 336              		.syntax unified
 337              		.thumb
 338              		.thumb_func
 339              		.fpu fpv4-sp-d16
 340              		.type	UrgentInit, %function
 341              	UrgentInit:
 342              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccghtDyP.s 			page 7


 343              		@ frame_needed = 0, uses_anonymous_args = 0
 344 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 345 0004 104C     		ldr	r4, .L73
 346 0006 DFF84880 		ldr	r8, .L73+8
 347 000a 104F     		ldr	r7, .L73+4
 348 000c 04F10B09 		add	r9, r4, #11
 349 0010 4E26     		movs	r6, #78
 350 0012 4B25     		movs	r5, #75
 351 0014 4620     		movs	r0, #70
 352 0016 05E0     		b	.L70
 353              	.L72:
 354 0018 14F8010F 		ldrb	r0, [r4, #1]!	@ zero_extendqisi2
 355 001c 18F8015F 		ldrb	r5, [r8, #1]!	@ zero_extendqisi2
 356 0020 17F8016F 		ldrb	r6, [r7, #1]!	@ zero_extendqisi2
 357              	.L70:
 358 0024 0022     		movs	r2, #0
 359 0026 0321     		movs	r1, #3
 360 0028 FFF7FEFF 		bl	pinModeDuet
 361 002c 2846     		mov	r0, r5
 362 002e 0022     		movs	r2, #0
 363 0030 0321     		movs	r1, #3
 364 0032 FFF7FEFF 		bl	pinModeDuet
 365 0036 3046     		mov	r0, r6
 366 0038 0022     		movs	r2, #0
 367 003a 0421     		movs	r1, #4
 368 003c FFF7FEFF 		bl	pinModeDuet
 369 0040 4C45     		cmp	r4, r9
 370 0042 E9D1     		bne	.L72
 371 0044 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 372              	.L74:
 373              		.align	2
 374              	.L73:
 375 0048 00000000 		.word	.LANCHOR4
 376 004c 00000000 		.word	.LANCHOR3
 377 0050 00000000 		.word	.LANCHOR5
 378              		.size	UrgentInit, .-UrgentInit
 379              		.section	.text._ZN8PlatformC2Ev,"ax",%progbits
 380              		.align	1
 381              		.p2align 2,,3
 382              		.global	_ZN8PlatformC2Ev
 383              		.syntax unified
 384              		.thumb
 385              		.thumb_func
 386              		.fpu fpv4-sp-d16
 387              		.type	_ZN8PlatformC2Ev, %function
 388              	_ZN8PlatformC2Ev:
 389              		@ args = 0, pretend = 0, frame = 0
 390              		@ frame_needed = 0, uses_anonymous_args = 0
 391 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 392 0004 0025     		movs	r5, #0
 393 0006 0446     		mov	r4, r0
 394 0008 0127     		movs	r7, #1
 395 000a 0560     		str	r5, [r0]
 396 000c 80F8BE50 		strb	r5, [r0, #190]
 397 0010 C0F8C050 		str	r5, [r0, #192]
 398 0014 80F8BC70 		strb	r7, [r0, #188]
 399 0018 2946     		mov	r1, r5
ARM GAS  /tmp/ccghtDyP.s 			page 8


 400 001a 3222     		movs	r2, #50
 401 001c 00F58070 		add	r0, r0, #256
 402 0020 FFF7FEFF 		bl	memset
 403 0024 84F8D853 		strb	r5, [r4, #984]
 404 0028 84F8DA53 		strb	r5, [r4, #986]
 405 002c 84F8DB53 		strb	r5, [r4, #987]
 406 0030 C4F8DC53 		str	r5, [r4, #988]
 407 0034 C4F8E053 		str	r5, [r4, #992]
 408 0038 04F20440 		addw	r0, r4, #1028
 409 003c FFF7FEFF 		bl	_ZN16ZProbeProgrammerC1Ev
 410              		.syntax unified
 411              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 412 0040 EFF31083 		MRS r3, primask
 413              	@ 0 "" 2
 414              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 415 0044 72B6     		cpsid i
 416              	@ 0 "" 2
 417              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 418 0046 BFF35F8F 		dmb
 419              	@ 0 "" 2
 420              		.thumb
 421              		.syntax unified
 422 004a 514E     		ldr	r6, .L86
 423 004c 3570     		strb	r5, [r6]
 424 004e C4F84454 		str	r5, [r4, #1092]
 425 0052 C4F84054 		str	r5, [r4, #1088]
 426 0056 84F84854 		strb	r5, [r4, #1096]
 427 005a A4F83054 		strh	r5, [r4, #1072]	@ movhi
 428 005e A4F83254 		strh	r5, [r4, #1074]	@ movhi
 429 0062 A4F83454 		strh	r5, [r4, #1076]	@ movhi
 430 0066 A4F83654 		strh	r5, [r4, #1078]	@ movhi
 431 006a A4F83854 		strh	r5, [r4, #1080]	@ movhi
 432 006e A4F83A54 		strh	r5, [r4, #1082]	@ movhi
 433 0072 A4F83C54 		strh	r5, [r4, #1084]	@ movhi
 434 0076 A4F83E54 		strh	r5, [r4, #1086]	@ movhi
 435 007a 1BB9     		cbnz	r3, .L76
 436 007c 3770     		strb	r7, [r6]
 437              		.syntax unified
 438              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 439 007e BFF35F8F 		dmb
 440              	@ 0 "" 2
 441              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 442 0082 62B6     		cpsie i
 443              	@ 0 "" 2
 444              		.thumb
 445              		.syntax unified
 446              	.L76:
 447              		.syntax unified
 448              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 449 0084 EFF31082 		MRS r2, primask
 450              	@ 0 "" 2
 451              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 452 0088 72B6     		cpsid i
 453              	@ 0 "" 2
 454              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 455 008a BFF35F8F 		dmb
 456              	@ 0 "" 2
ARM GAS  /tmp/ccghtDyP.s 			page 9


 457              		.thumb
 458              		.syntax unified
 459 008e 0023     		movs	r3, #0
 460 0090 3370     		strb	r3, [r6]
 461 0092 C4F86034 		str	r3, [r4, #1120]
 462 0096 C4F85C34 		str	r3, [r4, #1116]
 463 009a 84F86434 		strb	r3, [r4, #1124]
 464 009e A4F84C34 		strh	r3, [r4, #1100]	@ movhi
 465 00a2 A4F84E34 		strh	r3, [r4, #1102]	@ movhi
 466 00a6 A4F85034 		strh	r3, [r4, #1104]	@ movhi
 467 00aa A4F85234 		strh	r3, [r4, #1106]	@ movhi
 468 00ae A4F85434 		strh	r3, [r4, #1108]	@ movhi
 469 00b2 A4F85634 		strh	r3, [r4, #1110]	@ movhi
 470 00b6 A4F85834 		strh	r3, [r4, #1112]	@ movhi
 471 00ba A4F85A34 		strh	r3, [r4, #1114]	@ movhi
 472 00be 22B9     		cbnz	r2, .L77
 473 00c0 0123     		movs	r3, #1
 474 00c2 3370     		strb	r3, [r6]
 475              		.syntax unified
 476              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 477 00c4 BFF35F8F 		dmb
 478              	@ 0 "" 2
 479              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 480 00c8 62B6     		cpsie i
 481              	@ 0 "" 2
 482              		.thumb
 483              		.syntax unified
 484              	.L77:
 485 00ca 04F58D62 		add	r2, r4, #1128
 486 00ce 04F21475 		addw	r5, r4, #1812
 487 00d2 0021     		movs	r1, #0
 488 00d4 0127     		movs	r7, #1
 489              	.L80:
 490              		.syntax unified
 491              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 492 00d6 EFF31080 		MRS r0, primask
 493              	@ 0 "" 2
 494              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 495 00da 72B6     		cpsid i
 496              	@ 0 "" 2
 497              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 498 00dc BFF35F8F 		dmb
 499              	@ 0 "" 2
 500              		.thumb
 501              		.syntax unified
 502 00e0 0023     		movs	r3, #0
 503 00e2 3170     		strb	r1, [r6]
 504 00e4 5164     		str	r1, [r2, #68]
 505 00e6 1164     		str	r1, [r2, #64]
 506 00e8 82F84810 		strb	r1, [r2, #72]
 507              	.L78:
 508 00ec 22F81310 		strh	r1, [r2, r3, lsl #1]	@ movhi
 509 00f0 0133     		adds	r3, r3, #1
 510 00f2 202B     		cmp	r3, #32
 511 00f4 FAD1     		bne	.L78
 512 00f6 18B9     		cbnz	r0, .L79
 513 00f8 3770     		strb	r7, [r6]
ARM GAS  /tmp/ccghtDyP.s 			page 10


 514              		.syntax unified
 515              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 516 00fa BFF35F8F 		dmb
 517              	@ 0 "" 2
 518              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 519 00fe 62B6     		cpsie i
 520              	@ 0 "" 2
 521              		.thumb
 522              		.syntax unified
 523              	.L79:
 524 0100 4C32     		adds	r2, r2, #76
 525 0102 9542     		cmp	r5, r2
 526 0104 E7D1     		bne	.L80
 527 0106 0026     		movs	r6, #0
 528 0108 DFF88890 		ldr	r9, .L86+4
 529 010c C4F86869 		str	r6, [r4, #2408]
 530 0110 0027     		movs	r7, #0
 531 0112 C4F87869 		str	r6, [r4, #2424]
 532 0116 C4F88C69 		str	r6, [r4, #2444]
 533 011a C4F89069 		str	r6, [r4, #2448]
 534 011e C4F89C69 		str	r6, [r4, #2460]
 535 0122 C4F8B069 		str	r6, [r4, #2480]
 536 0126 84F8C269 		strb	r6, [r4, #2498]
 537 012a C4F8C869 		str	r6, [r4, #2504]
 538 012e C4F8F469 		str	r6, [r4, #2548]
 539 0132 04F60425 		addw	r5, r4, #2564
 540 0136 04F68428 		addw	r8, r4, #2692
 541              	.L81:
 542 013a 2846     		mov	r0, r5
 543 013c FFF7FEFF 		bl	_ZN7PwmPortC1Ev
 544 0140 A81D     		adds	r0, r5, #6
 545 0142 FFF7FEFF 		bl	_ZN7PwmPortC1Ev
 546 0146 4FF0FF33 		mov	r3, #-1
 547 014a 2E73     		strb	r6, [r5, #12]
 548 014c 2F61     		str	r7, [r5, #16]	@ float
 549 014e 6F61     		str	r7, [r5, #20]	@ float
 550 0150 C5F81890 		str	r9, [r5, #24]	@ float
 551 0154 EB61     		str	r3, [r5, #28]
 552 0156 2035     		adds	r5, r5, #32
 553 0158 4545     		cmp	r5, r8
 554 015a EED1     		bne	.L81
 555 015c 04F68820 		addw	r0, r4, #2696
 556 0160 FFF7FEFF 		bl	_ZN7PwmPortC1Ev
 557 0164 04F68E20 		addw	r0, r4, #2702
 558 0168 FFF7FEFF 		bl	_ZN7PwmPortC1Ev
 559 016c 84F81D6B 		strb	r6, [r4, #2845]
 560 0170 84F81E6B 		strb	r6, [r4, #2846]
 561 0174 41F27000 		movw	r0, #4208
 562 0178 FFF7FEFF 		bl	_Znwj
 563 017c 2146     		mov	r1, r4
 564 017e 0546     		mov	r5, r0
 565 0180 FFF7FEFF 		bl	_ZN11MassStorageC1EP8Platform
 566 0184 C4F8B459 		str	r5, [r4, #2484]
 567 0188 2046     		mov	r0, r4
 568 018a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 569              	.L87:
 570 018e 00BF     		.align	2
ARM GAS  /tmp/ccghtDyP.s 			page 11


 571              	.L86:
 572 0190 00000000 		.word	g_interrupt_enabled
 573 0194 00401C46 		.word	1176256512
 574              		.size	_ZN8PlatformC2Ev, .-_ZN8PlatformC2Ev
 575              		.global	_ZN8PlatformC1Ev
 576              		.thumb_set _ZN8PlatformC1Ev,_ZN8PlatformC2Ev
 577              		.section	.text._ZN8Platform17SetZProbeDefaultsEv,"ax",%progbits
 578              		.align	1
 579              		.p2align 2,,3
 580              		.global	_ZN8Platform17SetZProbeDefaultsEv
 581              		.syntax unified
 582              		.thumb
 583              		.thumb_func
 584              		.fpu fpv4-sp-d16
 585              		.type	_ZN8Platform17SetZProbeDefaultsEv, %function
 586              	_ZN8Platform17SetZProbeDefaultsEv:
 587              		@ args = 0, pretend = 0, frame = 0
 588              		@ frame_needed = 0, uses_anonymous_args = 0
 589 0000 10B5     		push	{r4, lr}
 590 0002 2DED028B 		vpush.64	{d8}
 591 0006 9FED0C8A 		vldr.32	s16, .L90
 592 000a 9FED0C0A 		vldr.32	s0, .L90+4
 593 000e 0446     		mov	r4, r0
 594 0010 0430     		adds	r0, r0, #4
 595 0012 FFF7FEFF 		bl	_ZN6ZProbe4InitEf
 596 0016 04F13400 		add	r0, r4, #52
 597 001a B0EE480A 		vmov.f32	s0, s16
 598 001e FFF7FEFF 		bl	_ZN6ZProbe4InitEf
 599 0022 B0EE480A 		vmov.f32	s0, s16
 600 0026 BDEC028B 		vldm	sp!, {d8}
 601 002a 04F16400 		add	r0, r4, #100
 602 002e BDE81040 		pop	{r4, lr}
 603 0032 FFF7FEBF 		b	_ZN6ZProbe4InitEf
 604              	.L91:
 605 0036 00BF     		.align	2
 606              	.L90:
 607 0038 3333333F 		.word	1060320051
 608 003c 00000000 		.word	0
 609              		.size	_ZN8Platform17SetZProbeDefaultsEv, .-_ZN8Platform17SetZProbeDefaultsEv
 610              		.section	.text._ZN8Platform10InitZProbeEv,"ax",%progbits
 611              		.align	1
 612              		.p2align 2,,3
 613              		.global	_ZN8Platform10InitZProbeEv
 614              		.syntax unified
 615              		.thumb
 616              		.thumb_func
 617              		.fpu fpv4-sp-d16
 618              		.type	_ZN8Platform10InitZProbeEv, %function
 619              	_ZN8Platform10InitZProbeEv:
 620              		@ args = 0, pretend = 0, frame = 0
 621              		@ frame_needed = 0, uses_anonymous_args = 0
 622 0000 10B5     		push	{r4, lr}
 623 0002 0446     		mov	r4, r0
 624              		.syntax unified
 625              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 626 0004 EFF31082 		MRS r2, primask
 627              	@ 0 "" 2
ARM GAS  /tmp/ccghtDyP.s 			page 12


 628              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 629 0008 72B6     		cpsid i
 630              	@ 0 "" 2
 631              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 632 000a BFF35F8F 		dmb
 633              	@ 0 "" 2
 634              		.thumb
 635              		.syntax unified
 636 000e 5349     		ldr	r1, .L104
 637 0010 0023     		movs	r3, #0
 638 0012 0B70     		strb	r3, [r1]
 639 0014 C0F84434 		str	r3, [r0, #1092]
 640 0018 C0F84034 		str	r3, [r0, #1088]
 641 001c 80F84834 		strb	r3, [r0, #1096]
 642 0020 A0F83034 		strh	r3, [r0, #1072]	@ movhi
 643 0024 A0F83234 		strh	r3, [r0, #1074]	@ movhi
 644 0028 A0F83434 		strh	r3, [r0, #1076]	@ movhi
 645 002c A0F83634 		strh	r3, [r0, #1078]	@ movhi
 646 0030 A0F83834 		strh	r3, [r0, #1080]	@ movhi
 647 0034 A0F83A34 		strh	r3, [r0, #1082]	@ movhi
 648 0038 A0F83C34 		strh	r3, [r0, #1084]	@ movhi
 649 003c A0F83E34 		strh	r3, [r0, #1086]	@ movhi
 650 0040 22B9     		cbnz	r2, .L93
 651 0042 0123     		movs	r3, #1
 652 0044 0B70     		strb	r3, [r1]
 653              		.syntax unified
 654              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 655 0046 BFF35F8F 		dmb
 656              	@ 0 "" 2
 657              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 658 004a 62B6     		cpsie i
 659              	@ 0 "" 2
 660              		.thumb
 661              		.syntax unified
 662              	.L93:
 663              		.syntax unified
 664              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 665 004c EFF31082 		MRS r2, primask
 666              	@ 0 "" 2
 667              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 668 0050 72B6     		cpsid i
 669              	@ 0 "" 2
 670              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 671 0052 BFF35F8F 		dmb
 672              	@ 0 "" 2
 673              		.thumb
 674              		.syntax unified
 675 0056 0023     		movs	r3, #0
 676 0058 0B70     		strb	r3, [r1]
 677 005a C4F86034 		str	r3, [r4, #1120]
 678 005e C4F85C34 		str	r3, [r4, #1116]
 679 0062 84F86434 		strb	r3, [r4, #1124]
 680 0066 A4F84C34 		strh	r3, [r4, #1100]	@ movhi
 681 006a A4F84E34 		strh	r3, [r4, #1102]	@ movhi
 682 006e A4F85034 		strh	r3, [r4, #1104]	@ movhi
 683 0072 A4F85234 		strh	r3, [r4, #1106]	@ movhi
 684 0076 A4F85434 		strh	r3, [r4, #1108]	@ movhi
ARM GAS  /tmp/ccghtDyP.s 			page 13


 685 007a A4F85634 		strh	r3, [r4, #1110]	@ movhi
 686 007e A4F85834 		strh	r3, [r4, #1112]	@ movhi
 687 0082 A4F85A34 		strh	r3, [r4, #1114]	@ movhi
 688 0086 22B9     		cbnz	r2, .L94
 689 0088 0123     		movs	r3, #1
 690 008a 0B70     		strb	r3, [r1]
 691              		.syntax unified
 692              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 693 008c BFF35F8F 		dmb
 694              	@ 0 "" 2
 695              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 696 0090 62B6     		cpsie i
 697              	@ 0 "" 2
 698              		.thumb
 699              		.syntax unified
 700              	.L94:
 701 0092 94F89430 		ldrb	r3, [r4, #148]	@ zero_extendqisi2
 702 0096 94F9C109 		ldrsb	r0, [r4, #2497]
 703 009a 2222     		movs	r2, #34
 704 009c 013B     		subs	r3, r3, #1
 705 009e 84F80124 		strb	r2, [r4, #1025]
 706 00a2 062B     		cmp	r3, #6
 707 00a4 51D8     		bhi	.L95
 708 00a6 DFE803F0 		tbb	[pc, r3]
 709              	.L97:
 710 00aa 1B       		.byte	(.L96-.L97)/2
 711 00ab 1B       		.byte	(.L96-.L97)/2
 712 00ac 2C       		.byte	(.L98-.L97)/2
 713 00ad 34       		.byte	(.L99-.L97)/2
 714 00ae 50       		.byte	(.L95-.L97)/2
 715 00af 42       		.byte	(.L100-.L97)/2
 716 00b0 04       		.byte	(.L101-.L97)/2
 717 00b1 00       		.p2align 1
 718              	.L101:
 719 00b2 0021     		movs	r1, #0
 720 00b4 FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 721 00b8 0022     		movs	r2, #0
 722 00ba 0121     		movs	r1, #1
 723 00bc 94F80004 		ldrb	r0, [r4, #1024]	@ zero_extendqisi2
 724 00c0 FFF7FEFF 		bl	pinModeDuet
 725 00c4 0022     		movs	r2, #0
 726 00c6 94F83401 		ldrb	r0, [r4, #308]	@ zero_extendqisi2
 727 00ca 1146     		mov	r1, r2
 728              	.L103:
 729 00cc FFF7FEFF 		bl	pinModeDuet
 730 00d0 94F80104 		ldrb	r0, [r4, #1025]	@ zero_extendqisi2
 731 00d4 0022     		movs	r2, #0
 732 00d6 0321     		movs	r1, #3
 733 00d8 BDE81040 		pop	{r4, lr}
 734 00dc FFF7FEBF 		b	pinModeDuet
 735              	.L96:
 736 00e0 0121     		movs	r1, #1
 737 00e2 FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 738 00e6 94F80004 		ldrb	r0, [r4, #1024]	@ zero_extendqisi2
 739 00ea 0022     		movs	r2, #0
 740 00ec 0521     		movs	r1, #5
 741 00ee FFF7FEFF 		bl	pinModeDuet
ARM GAS  /tmp/ccghtDyP.s 			page 14


 742 00f2 94F80104 		ldrb	r0, [r4, #1025]	@ zero_extendqisi2
 743 00f6 0022     		movs	r2, #0
 744 00f8 0421     		movs	r1, #4
 745 00fa BDE81040 		pop	{r4, lr}
 746 00fe FFF7FEBF 		b	pinModeDuet
 747              	.L98:
 748 0102 0121     		movs	r1, #1
 749 0104 FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 750 0108 0022     		movs	r2, #0
 751 010a 0521     		movs	r1, #5
 752 010c 94F80004 		ldrb	r0, [r4, #1024]	@ zero_extendqisi2
 753 0110 DCE7     		b	.L103
 754              	.L99:
 755 0112 0021     		movs	r1, #0
 756 0114 FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 757 0118 0022     		movs	r2, #0
 758 011a 0121     		movs	r1, #1
 759 011c 94F80004 		ldrb	r0, [r4, #1024]	@ zero_extendqisi2
 760 0120 FFF7FEFF 		bl	pinModeDuet
 761 0124 0022     		movs	r2, #0
 762 0126 1146     		mov	r1, r2
 763 0128 94F83501 		ldrb	r0, [r4, #309]	@ zero_extendqisi2
 764 012c CEE7     		b	.L103
 765              	.L100:
 766 012e 0021     		movs	r1, #0
 767 0130 FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 768 0134 0022     		movs	r2, #0
 769 0136 0121     		movs	r1, #1
 770 0138 94F80004 		ldrb	r0, [r4, #1024]	@ zero_extendqisi2
 771 013c FFF7FEFF 		bl	pinModeDuet
 772 0140 0022     		movs	r2, #0
 773 0142 1146     		mov	r1, r2
 774 0144 94F83601 		ldrb	r0, [r4, #310]	@ zero_extendqisi2
 775 0148 C0E7     		b	.L103
 776              	.L95:
 777 014a 0021     		movs	r1, #0
 778 014c FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 779 0150 0022     		movs	r2, #0
 780 0152 0121     		movs	r1, #1
 781 0154 94F80004 		ldrb	r0, [r4, #1024]	@ zero_extendqisi2
 782 0158 B8E7     		b	.L103
 783              	.L105:
 784 015a 00BF     		.align	2
 785              	.L104:
 786 015c 00000000 		.word	g_interrupt_enabled
 787              		.size	_ZN8Platform10InitZProbeEv, .-_ZN8Platform10InitZProbeEv
 788              		.section	.text._ZNK8Platform16GetZProbeReadingEv,"ax",%progbits
 789              		.align	1
 790              		.p2align 2,,3
 791              		.global	_ZNK8Platform16GetZProbeReadingEv
 792              		.syntax unified
 793              		.thumb
 794              		.thumb_func
 795              		.fpu fpv4-sp-d16
 796              		.type	_ZNK8Platform16GetZProbeReadingEv, %function
 797              	_ZNK8Platform16GetZProbeReadingEv:
 798              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccghtDyP.s 			page 15


 799              		@ frame_needed = 0, uses_anonymous_args = 0
 800 0000 70B5     		push	{r4, r5, r6, lr}
 801 0002 90F89430 		ldrb	r3, [r0, #148]	@ zero_extendqisi2
 802 0006 082B     		cmp	r3, #8
 803 0008 0446     		mov	r4, r0
 804 000a 5DD0     		beq	.L107
 805 000c 90F84824 		ldrb	r2, [r0, #1096]	@ zero_extendqisi2
 806 0010 02F0FF00 		and	r0, r2, #255
 807 0014 CAB1     		cbz	r2, .L108
 808 0016 94F86424 		ldrb	r2, [r4, #1124]	@ zero_extendqisi2
 809 001a 02F0FF00 		and	r0, r2, #255
 810 001e A2B1     		cbz	r2, .L108
 811 0020 5A1E     		subs	r2, r3, #1
 812 0022 092A     		cmp	r2, #9
 813 0024 43D8     		bhi	.L129
 814 0026 DFE802F0 		tbb	[pc, r2]
 815              	.L111:
 816 002a 19       		.byte	(.L110-.L111)/2
 817 002b 2A       		.byte	(.L112-.L111)/2
 818 002c 19       		.byte	(.L110-.L111)/2
 819 002d 19       		.byte	(.L110-.L111)/2
 820 002e 19       		.byte	(.L110-.L111)/2
 821 002f 19       		.byte	(.L110-.L111)/2
 822 0030 19       		.byte	(.L110-.L111)/2
 823 0031 42       		.byte	(.L129-.L111)/2
 824 0032 19       		.byte	(.L110-.L111)/2
 825 0033 34       		.byte	(.L113-.L111)/2
 826              		.p2align 1
 827              	.L140:
 828 0034 58B3     		cbz	r0, .L119
 829 0036 0021     		movs	r1, #0
 830 0038 2046     		mov	r0, r4
 831 003a FFF7FEFF 		bl	_ZNK8Platform19AnyAxisMotorStalledEj.part.18
 832 003e 0028     		cmp	r0, #0
 833 0040 4ED0     		beq	.L120
 834 0042 94F89430 		ldrb	r3, [r4, #148]	@ zero_extendqisi2
 835 0046 4FF47A70 		mov	r0, #1000
 836              	.L108:
 837 004a 0A2B     		cmp	r3, #10
 838 004c 0CD9     		bls	.L114
 839              	.L124:
 840 004e 0434     		adds	r4, r4, #4
 841              	.L126:
 842 0050 94F82D30 		ldrb	r3, [r4, #45]	@ zero_extendqisi2
 843 0054 0BB1     		cbz	r3, .L106
 844 0056 C0F57A70 		rsb	r0, r0, #1000
 845              	.L106:
 846 005a 70BD     		pop	{r4, r5, r6, pc}
 847              	.L110:
 848 005c D4F84404 		ldr	r0, [r4, #1092]
 849 0060 D4F86024 		ldr	r2, [r4, #1120]
 850 0064 1044     		add	r0, r0, r2
 851 0066 8009     		lsrs	r0, r0, #6
 852              	.L114:
 853 0068 0122     		movs	r2, #1
 854 006a 02FA03F3 		lsl	r3, r2, r3
 855 006e 40F22672 		movw	r2, #1830
ARM GAS  /tmp/ccghtDyP.s 			page 16


 856 0072 1342     		tst	r3, r2
 857 0074 0BD1     		bne	.L119
 858 0076 1B07     		lsls	r3, r3, #28
 859 0078 E9D5     		bpl	.L124
 860 007a 6434     		adds	r4, r4, #100
 861 007c E8E7     		b	.L126
 862              	.L112:
 863 007e D4F84404 		ldr	r0, [r4, #1092]
 864 0082 D4F86034 		ldr	r3, [r4, #1120]
 865 0086 C01A     		subs	r0, r0, r3
 866 0088 48BF     		it	mi
 867 008a 1F30     		addmi	r0, r0, #31
 868 008c 4011     		asrs	r0, r0, #5
 869              	.L119:
 870 008e 3434     		adds	r4, r4, #52
 871 0090 DEE7     		b	.L126
 872              	.L113:
 873 0092 174D     		ldr	r5, .L141
 874 0094 AB68     		ldr	r3, [r5, #8]
 875 0096 2A69     		ldr	r2, [r5, #16]	@ unaligned
 876 0098 D3F8583A 		ldr	r3, [r3, #2648]
 877 009c D2F89802 		ldr	r0, [r2, #664]
 878 00a0 9E7B     		ldrb	r6, [r3, #14]	@ zero_extendqisi2
 879 00a2 022E     		cmp	r6, #2
 880 00a4 C6D0     		beq	.L140
 881 00a6 0228     		cmp	r0, #2
 882 00a8 03D8     		bhi	.L139
 883 00aa 0020     		movs	r0, #0
 884 00ac EFE7     		b	.L119
 885              	.L129:
 886 00ae 0020     		movs	r0, #0
 887 00b0 70BD     		pop	{r4, r5, r6, pc}
 888              	.L139:
 889 00b2 0221     		movs	r1, #2
 890 00b4 2046     		mov	r0, r4
 891 00b6 FFF7FEFF 		bl	_ZNK8Platform19AnyAxisMotorStalledEj.part.18
 892 00ba 94F89430 		ldrb	r3, [r4, #148]	@ zero_extendqisi2
 893 00be 0028     		cmp	r0, #0
 894 00c0 C3D0     		beq	.L108
 895 00c2 4FF47A70 		mov	r0, #1000
 896 00c6 C0E7     		b	.L108
 897              	.L107:
 898 00c8 90F80004 		ldrb	r0, [r0, #1024]	@ zero_extendqisi2
 899 00cc FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 900 00d0 0028     		cmp	r0, #0
 901 00d2 0CBF     		ite	eq
 902 00d4 0020     		moveq	r0, #0
 903 00d6 4FF47A70 		movne	r0, #1000
 904 00da 94F89430 		ldrb	r3, [r4, #148]	@ zero_extendqisi2
 905 00de B4E7     		b	.L108
 906              	.L120:
 907 00e0 2B69     		ldr	r3, [r5, #16]
 908 00e2 D3F89832 		ldr	r3, [r3, #664]
 909 00e6 022B     		cmp	r3, #2
 910 00e8 E3D8     		bhi	.L139
 911 00ea 94F89430 		ldrb	r3, [r4, #148]	@ zero_extendqisi2
 912 00ee ACE7     		b	.L108
ARM GAS  /tmp/ccghtDyP.s 			page 17


 913              	.L142:
 914              		.align	2
 915              	.L141:
 916 00f0 00000000 		.word	reprap
 917              		.size	_ZNK8Platform16GetZProbeReadingEv, .-_ZNK8Platform16GetZProbeReadingEv
 918              		.section	.text._ZN8Platform24GetZProbeSecondaryValuesERiS0_,"ax",%progbits
 919              		.align	1
 920              		.p2align 2,,3
 921              		.global	_ZN8Platform24GetZProbeSecondaryValuesERiS0_
 922              		.syntax unified
 923              		.thumb
 924              		.thumb_func
 925              		.fpu fpv4-sp-d16
 926              		.type	_ZN8Platform24GetZProbeSecondaryValuesERiS0_, %function
 927              	_ZN8Platform24GetZProbeSecondaryValuesERiS0_:
 928              		@ args = 0, pretend = 0, frame = 0
 929              		@ frame_needed = 0, uses_anonymous_args = 0
 930              		@ link register save eliminated.
 931 0000 90F84824 		ldrb	r2, [r0, #1096]	@ zero_extendqisi2
 932 0004 62B1     		cbz	r2, .L149
 933 0006 90F86424 		ldrb	r2, [r0, #1124]	@ zero_extendqisi2
 934 000a 4AB1     		cbz	r2, .L149
 935 000c 90F89430 		ldrb	r3, [r0, #148]	@ zero_extendqisi2
 936 0010 022B     		cmp	r3, #2
 937 0012 05D1     		bne	.L149
 938 0014 D0F84434 		ldr	r3, [r0, #1092]
 939 0018 5B09     		lsrs	r3, r3, #5
 940 001a 0B60     		str	r3, [r1]
 941 001c 0120     		movs	r0, #1
 942 001e 7047     		bx	lr
 943              	.L149:
 944 0020 0020     		movs	r0, #0
 945 0022 7047     		bx	lr
 946              		.size	_ZN8Platform24GetZProbeSecondaryValuesERiS0_, .-_ZN8Platform24GetZProbeSecondaryValuesERiS0_
 947              		.section	.text._ZN8Platform20GetZProbeTemperatureEv,"ax",%progbits
 948              		.align	1
 949              		.p2align 2,,3
 950              		.global	_ZN8Platform20GetZProbeTemperatureEv
 951              		.syntax unified
 952              		.thumb
 953              		.thumb_func
 954              		.fpu fpv4-sp-d16
 955              		.type	_ZN8Platform20GetZProbeTemperatureEv, %function
 956              	_ZN8Platform20GetZProbeTemperatureEv:
 957              		@ args = 0, pretend = 0, frame = 8
 958              		@ frame_needed = 0, uses_anonymous_args = 0
 959 0000 30B5     		push	{r4, r5, lr}
 960 0002 0E4D     		ldr	r5, .L159
 961 0004 83B0     		sub	sp, sp, #12
 962 0006 0024     		movs	r4, #0
 963              	.L154:
 964 0008 E868     		ldr	r0, [r5, #12]
 965 000a 0319     		adds	r3, r0, r4
 966 000c 0DF10702 		add	r2, sp, #7
 967 0010 93F9D230 		ldrsb	r3, [r3, #210]
 968 0014 002B     		cmp	r3, #0
 969 0016 1946     		mov	r1, r3
ARM GAS  /tmp/ccghtDyP.s 			page 18


 970 0018 04F10104 		add	r4, r4, #1
 971 001c 05DA     		bge	.L158
 972              	.L151:
 973 001e 042C     		cmp	r4, #4
 974 0020 F2D1     		bne	.L154
 975 0022 B3EE090A 		vmov.f32	s0, #2.5e+1
 976 0026 03B0     		add	sp, sp, #12
 977              		@ sp needed
 978 0028 30BD     		pop	{r4, r5, pc}
 979              	.L158:
 980 002a FFF7FEFF 		bl	_ZN4Heat14GetTemperatureEjR16TemperatureError
 981 002e 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
 982 0032 002B     		cmp	r3, #0
 983 0034 F3D1     		bne	.L151
 984 0036 03B0     		add	sp, sp, #12
 985              		@ sp needed
 986 0038 30BD     		pop	{r4, r5, pc}
 987              	.L160:
 988 003a 00BF     		.align	2
 989              	.L159:
 990 003c 00000000 		.word	reprap
 991              		.size	_ZN8Platform20GetZProbeTemperatureEv, .-_ZN8Platform20GetZProbeTemperatureEv
 992              		.section	.text._ZN8Platform16ZProbeStopHeightEv,"ax",%progbits
 993              		.align	1
 994              		.p2align 2,,3
 995              		.global	_ZN8Platform16ZProbeStopHeightEv
 996              		.syntax unified
 997              		.thumb
 998              		.thumb_func
 999              		.fpu fpv4-sp-d16
 1000              		.type	_ZN8Platform16ZProbeStopHeightEv, %function
 1001              	_ZN8Platform16ZProbeStopHeightEv:
 1002              		@ args = 0, pretend = 0, frame = 0
 1003              		@ frame_needed = 0, uses_anonymous_args = 0
 1004 0000 10B5     		push	{r4, lr}
 1005 0002 90F89430 		ldrb	r3, [r0, #148]	@ zero_extendqisi2
 1006 0006 0A2B     		cmp	r3, #10
 1007 0008 08D8     		bhi	.L162
 1008 000a 0122     		movs	r2, #1
 1009 000c 02FA03F3 		lsl	r3, r2, r3
 1010 0010 40F22672 		movw	r2, #1830
 1011 0014 1342     		tst	r3, r2
 1012 0016 09D1     		bne	.L163
 1013 0018 1B07     		lsls	r3, r3, #28
 1014 001a 10D4     		bmi	.L167
 1015              	.L162:
 1016 001c 041D     		adds	r4, r0, #4
 1017 001e FFF7FEFF 		bl	_ZN8Platform20GetZProbeTemperatureEv
 1018 0022 2046     		mov	r0, r4
 1019 0024 BDE81040 		pop	{r4, lr}
 1020 0028 FFF7FEBF 		b	_ZNK6ZProbe13GetStopHeightEf
 1021              	.L163:
 1022 002c 00F13404 		add	r4, r0, #52
 1023 0030 FFF7FEFF 		bl	_ZN8Platform20GetZProbeTemperatureEv
 1024 0034 2046     		mov	r0, r4
 1025 0036 BDE81040 		pop	{r4, lr}
 1026 003a FFF7FEBF 		b	_ZNK6ZProbe13GetStopHeightEf
ARM GAS  /tmp/ccghtDyP.s 			page 19


 1027              	.L167:
 1028 003e 00F16404 		add	r4, r0, #100
 1029 0042 FFF7FEFF 		bl	_ZN8Platform20GetZProbeTemperatureEv
 1030 0046 2046     		mov	r0, r4
 1031 0048 BDE81040 		pop	{r4, lr}
 1032 004c FFF7FEBF 		b	_ZNK6ZProbe13GetStopHeightEf
 1033              		.size	_ZN8Platform16ZProbeStopHeightEv, .-_ZN8Platform16ZProbeStopHeightEv
 1034              		.section	.text._ZNK8Platform19GetZProbeDiveHeightEv,"ax",%progbits
 1035              		.align	1
 1036              		.p2align 2,,3
 1037              		.global	_ZNK8Platform19GetZProbeDiveHeightEv
 1038              		.syntax unified
 1039              		.thumb
 1040              		.thumb_func
 1041              		.fpu fpv4-sp-d16
 1042              		.type	_ZNK8Platform19GetZProbeDiveHeightEv, %function
 1043              	_ZNK8Platform19GetZProbeDiveHeightEv:
 1044              		@ args = 0, pretend = 0, frame = 0
 1045              		@ frame_needed = 0, uses_anonymous_args = 0
 1046              		@ link register save eliminated.
 1047 0000 90F89430 		ldrb	r3, [r0, #148]	@ zero_extendqisi2
 1048 0004 0A2B     		cmp	r3, #10
 1049 0006 08D8     		bhi	.L169
 1050 0008 0122     		movs	r2, #1
 1051 000a 02FA03F3 		lsl	r3, r2, r3
 1052 000e 40F22672 		movw	r2, #1830
 1053 0012 1342     		tst	r3, r2
 1054 0014 05D1     		bne	.L170
 1055 0016 1B07     		lsls	r3, r3, #28
 1056 0018 07D4     		bmi	.L173
 1057              	.L169:
 1058 001a 0430     		adds	r0, r0, #4
 1059 001c 90ED060A 		vldr.32	s0, [r0, #24]
 1060 0020 7047     		bx	lr
 1061              	.L170:
 1062 0022 3430     		adds	r0, r0, #52
 1063 0024 90ED060A 		vldr.32	s0, [r0, #24]
 1064 0028 7047     		bx	lr
 1065              	.L173:
 1066 002a 6430     		adds	r0, r0, #100
 1067 002c 90ED060A 		vldr.32	s0, [r0, #24]
 1068 0030 7047     		bx	lr
 1069              		.size	_ZNK8Platform19GetZProbeDiveHeightEv, .-_ZNK8Platform19GetZProbeDiveHeightEv
 1070 0032 00BF     		.section	.text._ZN8Platform23GetZProbeStartingHeightEv,"ax",%progbits
 1071              		.align	1
 1072              		.p2align 2,,3
 1073              		.global	_ZN8Platform23GetZProbeStartingHeightEv
 1074              		.syntax unified
 1075              		.thumb
 1076              		.thumb_func
 1077              		.fpu fpv4-sp-d16
 1078              		.type	_ZN8Platform23GetZProbeStartingHeightEv, %function
 1079              	_ZN8Platform23GetZProbeStartingHeightEv:
 1080              		@ args = 0, pretend = 0, frame = 0
 1081              		@ frame_needed = 0, uses_anonymous_args = 0
 1082 0000 10B5     		push	{r4, lr}
 1083 0002 2DED028B 		vpush.64	{d8}
ARM GAS  /tmp/ccghtDyP.s 			page 20


 1084 0006 90F89430 		ldrb	r3, [r0, #148]	@ zero_extendqisi2
 1085 000a 0A2B     		cmp	r3, #10
 1086 000c 08D8     		bhi	.L175
 1087 000e 0122     		movs	r2, #1
 1088 0010 02FA03F3 		lsl	r3, r2, r3
 1089 0014 40F22672 		movw	r2, #1830
 1090 0018 1342     		tst	r3, r2
 1091 001a 1AD1     		bne	.L176
 1092 001c 1B07     		lsls	r3, r3, #28
 1093 001e 1BD4     		bmi	.L177
 1094              	.L175:
 1095 0020 041D     		adds	r4, r0, #4
 1096              	.L178:
 1097 0022 94ED068A 		vldr.32	s16, [r4, #24]
 1098 0026 FFF7FEFF 		bl	_ZN8Platform20GetZProbeTemperatureEv
 1099 002a 2046     		mov	r0, r4
 1100 002c FFF7FEFF 		bl	_ZNK6ZProbe13GetStopHeightEf
 1101 0030 B4EE400A 		vcmp.f32	s0, s0
 1102 0034 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1103 0038 06D6     		bvs	.L179
 1104 003a B5EEC00A 		vcmpe.f32	s0, #0
 1105 003e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1106 0042 D8BF     		it	le
 1107 0044 9FED060A 		vldrle.32	s0, .L181
 1108              	.L179:
 1109 0048 38EE000A 		vadd.f32	s0, s16, s0
 1110 004c BDEC028B 		vldm	sp!, {d8}
 1111 0050 10BD     		pop	{r4, pc}
 1112              	.L176:
 1113 0052 00F13404 		add	r4, r0, #52
 1114 0056 E4E7     		b	.L178
 1115              	.L177:
 1116 0058 00F16404 		add	r4, r0, #100
 1117 005c E1E7     		b	.L178
 1118              	.L182:
 1119 005e 00BF     		.align	2
 1120              	.L181:
 1121 0060 00000000 		.word	0
 1122              		.size	_ZN8Platform23GetZProbeStartingHeightEv, .-_ZN8Platform23GetZProbeStartingHeightEv
 1123              		.section	.text._ZNK8Platform20GetZProbeTravelSpeedEv,"ax",%progbits
 1124              		.align	1
 1125              		.p2align 2,,3
 1126              		.global	_ZNK8Platform20GetZProbeTravelSpeedEv
 1127              		.syntax unified
 1128              		.thumb
 1129              		.thumb_func
 1130              		.fpu fpv4-sp-d16
 1131              		.type	_ZNK8Platform20GetZProbeTravelSpeedEv, %function
 1132              	_ZNK8Platform20GetZProbeTravelSpeedEv:
 1133              		@ args = 0, pretend = 0, frame = 0
 1134              		@ frame_needed = 0, uses_anonymous_args = 0
 1135              		@ link register save eliminated.
 1136 0000 90F89430 		ldrb	r3, [r0, #148]	@ zero_extendqisi2
 1137 0004 0A2B     		cmp	r3, #10
 1138 0006 08D8     		bhi	.L184
 1139 0008 0122     		movs	r2, #1
 1140 000a 02FA03F3 		lsl	r3, r2, r3
ARM GAS  /tmp/ccghtDyP.s 			page 21


 1141 000e 40F22672 		movw	r2, #1830
 1142 0012 1342     		tst	r3, r2
 1143 0014 05D1     		bne	.L185
 1144 0016 1B07     		lsls	r3, r3, #28
 1145 0018 07D4     		bmi	.L188
 1146              	.L184:
 1147 001a 0430     		adds	r0, r0, #4
 1148 001c 90ED080A 		vldr.32	s0, [r0, #32]
 1149 0020 7047     		bx	lr
 1150              	.L185:
 1151 0022 3430     		adds	r0, r0, #52
 1152 0024 90ED080A 		vldr.32	s0, [r0, #32]
 1153 0028 7047     		bx	lr
 1154              	.L188:
 1155 002a 6430     		adds	r0, r0, #100
 1156 002c 90ED080A 		vldr.32	s0, [r0, #32]
 1157 0030 7047     		bx	lr
 1158              		.size	_ZNK8Platform20GetZProbeTravelSpeedEv, .-_ZNK8Platform20GetZProbeTravelSpeedEv
 1159 0032 00BF     		.section	.text._ZN8Platform13SetZProbeTypeEj,"ax",%progbits
 1160              		.align	1
 1161              		.p2align 2,,3
 1162              		.global	_ZN8Platform13SetZProbeTypeEj
 1163              		.syntax unified
 1164              		.thumb
 1165              		.thumb_func
 1166              		.fpu fpv4-sp-d16
 1167              		.type	_ZN8Platform13SetZProbeTypeEj, %function
 1168              	_ZN8Platform13SetZProbeTypeEj:
 1169              		@ args = 0, pretend = 0, frame = 0
 1170              		@ frame_needed = 0, uses_anonymous_args = 0
 1171              		@ link register save eliminated.
 1172 0000 0A29     		cmp	r1, #10
 1173 0002 88BF     		it	hi
 1174 0004 0021     		movhi	r1, #0
 1175 0006 80F89410 		strb	r1, [r0, #148]
 1176 000a FFF7FEBF 		b	_ZN8Platform10InitZProbeEv
 1177              		.size	_ZN8Platform13SetZProbeTypeEj, .-_ZN8Platform13SetZProbeTypeEj
 1178 000e 00BF     		.section	.text._ZN8Platform10SetProbingEb,"ax",%progbits
 1179              		.align	1
 1180              		.p2align 2,,3
 1181              		.global	_ZN8Platform10SetProbingEb
 1182              		.syntax unified
 1183              		.thumb
 1184              		.thumb_func
 1185              		.fpu fpv4-sp-d16
 1186              		.type	_ZN8Platform10SetProbingEb, %function
 1187              	_ZN8Platform10SetProbingEb:
 1188              		@ args = 0, pretend = 0, frame = 0
 1189              		@ frame_needed = 0, uses_anonymous_args = 0
 1190              		@ link register save eliminated.
 1191 0000 90F89430 		ldrb	r3, [r0, #148]	@ zero_extendqisi2
 1192 0004 032B     		cmp	r3, #3
 1193 0006 00D8     		bhi	.L193
 1194 0008 7047     		bx	lr
 1195              	.L193:
 1196 000a 90F80104 		ldrb	r0, [r0, #1025]	@ zero_extendqisi2
 1197 000e FFF7FEBF 		b	digitalWrite
ARM GAS  /tmp/ccghtDyP.s 			page 22


 1198              		.size	_ZN8Platform10SetProbingEb, .-_ZN8Platform10SetProbingEb
 1199 0012 00BF     		.section	.text._ZNK8Platform19GetZProbeParametersE10ZProbeType,"ax",%progbits
 1200              		.align	1
 1201              		.p2align 2,,3
 1202              		.global	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 1203              		.syntax unified
 1204              		.thumb
 1205              		.thumb_func
 1206              		.fpu fpv4-sp-d16
 1207              		.type	_ZNK8Platform19GetZProbeParametersE10ZProbeType, %function
 1208              	_ZNK8Platform19GetZProbeParametersE10ZProbeType:
 1209              		@ args = 0, pretend = 0, frame = 0
 1210              		@ frame_needed = 0, uses_anonymous_args = 0
 1211              		@ link register save eliminated.
 1212 0000 0A29     		cmp	r1, #10
 1213 0002 08D8     		bhi	.L195
 1214 0004 0123     		movs	r3, #1
 1215 0006 03FA01F1 		lsl	r1, r3, r1
 1216 000a 40F22673 		movw	r3, #1830
 1217 000e 1942     		tst	r1, r3
 1218 0010 03D1     		bne	.L196
 1219 0012 0B07     		lsls	r3, r1, #28
 1220 0014 03D4     		bmi	.L199
 1221              	.L195:
 1222 0016 0430     		adds	r0, r0, #4
 1223 0018 7047     		bx	lr
 1224              	.L196:
 1225 001a 3430     		adds	r0, r0, #52
 1226 001c 7047     		bx	lr
 1227              	.L199:
 1228 001e 6430     		adds	r0, r0, #100
 1229 0020 7047     		bx	lr
 1230              		.size	_ZNK8Platform19GetZProbeParametersE10ZProbeType, .-_ZNK8Platform19GetZProbeParametersE10ZPro
 1231 0022 00BF     		.section	.text._ZN8Platform19SetZProbeParametersE10ZProbeTypeRK6ZProbe,"ax",%progbits
 1232              		.align	1
 1233              		.p2align 2,,3
 1234              		.global	_ZN8Platform19SetZProbeParametersE10ZProbeTypeRK6ZProbe
 1235              		.syntax unified
 1236              		.thumb
 1237              		.thumb_func
 1238              		.fpu fpv4-sp-d16
 1239              		.type	_ZN8Platform19SetZProbeParametersE10ZProbeTypeRK6ZProbe, %function
 1240              	_ZN8Platform19SetZProbeParametersE10ZProbeTypeRK6ZProbe:
 1241              		@ args = 0, pretend = 0, frame = 0
 1242              		@ frame_needed = 0, uses_anonymous_args = 0
 1243              		@ link register save eliminated.
 1244 0000 0A29     		cmp	r1, #10
 1245 0002 30B4     		push	{r4, r5}
 1246 0004 0446     		mov	r4, r0
 1247 0006 08D8     		bhi	.L201
 1248 0008 0123     		movs	r3, #1
 1249 000a 03FA01F1 		lsl	r1, r3, r1
 1250 000e 40F22673 		movw	r3, #1830
 1251 0012 1942     		tst	r1, r3
 1252 0014 0DD1     		bne	.L202
 1253 0016 0B07     		lsls	r3, r1, #28
 1254 0018 0FD4     		bmi	.L207
ARM GAS  /tmp/ccghtDyP.s 			page 23


 1255              	.L201:
 1256 001a 1546     		mov	r5, r2
 1257 001c 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1258 001e 0434     		adds	r4, r4, #4
 1259              	.L206:
 1260 0020 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 1261 0022 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1262 0024 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 1263 0026 95E80F00 		ldm	r5, {r0, r1, r2, r3}
 1264 002a 84E80F00 		stm	r4, {r0, r1, r2, r3}
 1265 002e 30BC     		pop	{r4, r5}
 1266 0030 7047     		bx	lr
 1267              	.L202:
 1268 0032 1546     		mov	r5, r2
 1269 0034 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1270 0036 3434     		adds	r4, r4, #52
 1271 0038 F2E7     		b	.L206
 1272              	.L207:
 1273 003a 1546     		mov	r5, r2
 1274 003c 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1275 003e 6434     		adds	r4, r4, #100
 1276 0040 EEE7     		b	.L206
 1277              		.size	_ZN8Platform19SetZProbeParametersE10ZProbeTypeRK6ZProbe, .-_ZN8Platform19SetZProbeParameters
 1278 0042 00BF     		.section	.text._ZN8Platform13ProgramZProbeER11GCodeBufferRK9StringRef,"ax",%progbits
 1279              		.align	1
 1280              		.p2align 2,,3
 1281              		.global	_ZN8Platform13ProgramZProbeER11GCodeBufferRK9StringRef
 1282              		.syntax unified
 1283              		.thumb
 1284              		.thumb_func
 1285              		.fpu fpv4-sp-d16
 1286              		.type	_ZN8Platform13ProgramZProbeER11GCodeBufferRK9StringRef, %function
 1287              	_ZN8Platform13ProgramZProbeER11GCodeBufferRK9StringRef:
 1288              		@ args = 0, pretend = 0, frame = 40
 1289              		@ frame_needed = 0, uses_anonymous_args = 0
 1290 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1291 0004 0E46     		mov	r6, r1
 1292 0006 8AB0     		sub	sp, sp, #40
 1293 0008 8046     		mov	r8, r0
 1294 000a 5321     		movs	r1, #83
 1295 000c 3046     		mov	r0, r6
 1296 000e 1746     		mov	r7, r2
 1297 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1298 0014 18B3     		cbz	r0, .L209
 1299 0016 0AAA     		add	r2, sp, #40
 1300 0018 0823     		movs	r3, #8
 1301 001a 0DEB0305 		add	r5, sp, r3
 1302 001e 42F8243D 		str	r3, [r2, #-36]!
 1303 0022 0446     		mov	r4, r0
 1304 0024 2946     		mov	r1, r5
 1305 0026 3046     		mov	r0, r6
 1306 0028 0023     		movs	r3, #0
 1307 002a FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 1308 002e 019A     		ldr	r2, [sp, #4]
 1309 0030 AAB1     		cbz	r2, .L209
 1310 0032 029B     		ldr	r3, [sp, #8]
 1311 0034 FF2B     		cmp	r3, #255
ARM GAS  /tmp/ccghtDyP.s 			page 24


 1312 0036 1BD8     		bhi	.L211
 1313 0038 0023     		movs	r3, #0
 1314 003a 03E0     		b	.L212
 1315              	.L214:
 1316 003c 55F82310 		ldr	r1, [r5, r3, lsl #2]
 1317 0040 FF29     		cmp	r1, #255
 1318 0042 15D8     		bhi	.L211
 1319              	.L212:
 1320 0044 0133     		adds	r3, r3, #1
 1321 0046 9A42     		cmp	r2, r3
 1322 0048 F8D1     		bne	.L214
 1323 004a 08F20440 		addw	r0, r8, #1028
 1324 004e 2946     		mov	r1, r5
 1325 0050 FFF7FEFF 		bl	_ZN16ZProbeProgrammer11SendProgramEPKmj
 1326 0054 0024     		movs	r4, #0
 1327 0056 2046     		mov	r0, r4
 1328 0058 0AB0     		add	sp, sp, #40
 1329              		@ sp needed
 1330 005a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1331              	.L209:
 1332 005e 3846     		mov	r0, r7
 1333 0060 0749     		ldr	r1, .L224
 1334 0062 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1335 0066 0124     		movs	r4, #1
 1336 0068 2046     		mov	r0, r4
 1337 006a 0AB0     		add	sp, sp, #40
 1338              		@ sp needed
 1339 006c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1340              	.L211:
 1341 0070 3846     		mov	r0, r7
 1342 0072 0449     		ldr	r1, .L224+4
 1343 0074 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1344 0078 2046     		mov	r0, r4
 1345 007a 0AB0     		add	sp, sp, #40
 1346              		@ sp needed
 1347 007c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1348              	.L225:
 1349              		.align	2
 1350              	.L224:
 1351 0080 24000000 		.word	.LC9
 1352 0084 00000000 		.word	.LC8
 1353              		.size	_ZN8Platform13ProgramZProbeER11GCodeBufferRK9StringRef, .-_ZN8Platform13ProgramZProbeER11GCo
 1354              		.section	.text._ZNK8Platform17SetZProbeModStateEb,"ax",%progbits
 1355              		.align	1
 1356              		.p2align 2,,3
 1357              		.global	_ZNK8Platform17SetZProbeModStateEb
 1358              		.syntax unified
 1359              		.thumb
 1360              		.thumb_func
 1361              		.fpu fpv4-sp-d16
 1362              		.type	_ZNK8Platform17SetZProbeModStateEb, %function
 1363              	_ZNK8Platform17SetZProbeModStateEb:
 1364              		@ args = 0, pretend = 0, frame = 0
 1365              		@ frame_needed = 0, uses_anonymous_args = 0
 1366              		@ link register save eliminated.
 1367 0000 90F80104 		ldrb	r0, [r0, #1025]	@ zero_extendqisi2
 1368 0004 FFF7FEBF 		b	_ZN6IoPort12WriteDigitalEhb
ARM GAS  /tmp/ccghtDyP.s 			page 25


 1369              		.size	_ZNK8Platform17SetZProbeModStateEb, .-_ZNK8Platform17SetZProbeModStateEb
 1370              		.section	.text._ZNK8Platform16HomingZWithProbeEv,"ax",%progbits
 1371              		.align	1
 1372              		.p2align 2,,3
 1373              		.global	_ZNK8Platform16HomingZWithProbeEv
 1374              		.syntax unified
 1375              		.thumb
 1376              		.thumb_func
 1377              		.fpu fpv4-sp-d16
 1378              		.type	_ZNK8Platform16HomingZWithProbeEv, %function
 1379              	_ZNK8Platform16HomingZWithProbeEv:
 1380              		@ args = 0, pretend = 0, frame = 0
 1381              		@ frame_needed = 0, uses_anonymous_args = 0
 1382              		@ link register save eliminated.
 1383 0000 90F89430 		ldrb	r3, [r0, #148]	@ zero_extendqisi2
 1384 0004 4BB1     		cbz	r3, .L229
 1385 0006 D0F89C37 		ldr	r3, [r0, #1948]
 1386 000a 022B     		cmp	r3, #2
 1387 000c 07D0     		beq	.L230
 1388 000e D0F87807 		ldr	r0, [r0, #1912]
 1389 0012 B0FA80F0 		clz	r0, r0
 1390 0016 4009     		lsrs	r0, r0, #5
 1391 0018 7047     		bx	lr
 1392              	.L229:
 1393 001a 1846     		mov	r0, r3
 1394 001c 7047     		bx	lr
 1395              	.L230:
 1396 001e 0120     		movs	r0, #1
 1397 0020 7047     		bx	lr
 1398              		.size	_ZNK8Platform16HomingZWithProbeEv, .-_ZNK8Platform16HomingZWithProbeEv
 1399 0022 00BF     		.section	.text._ZN8Platform20RegisterI2cAddrUsageEh,"ax",%progbits
 1400              		.align	1
 1401              		.p2align 2,,3
 1402              		.global	_ZN8Platform20RegisterI2cAddrUsageEh
 1403              		.syntax unified
 1404              		.thumb
 1405              		.thumb_func
 1406              		.fpu fpv4-sp-d16
 1407              		.type	_ZN8Platform20RegisterI2cAddrUsageEh, %function
 1408              	_ZN8Platform20RegisterI2cAddrUsageEh:
 1409              		@ args = 0, pretend = 0, frame = 0
 1410              		@ frame_needed = 0, uses_anonymous_args = 0
 1411              		@ link register save eliminated.
 1412 0000 30B4     		push	{r4, r5}
 1413 0002 00F58073 		add	r3, r0, #256
 1414 0006 00F1FF05 		add	r5, r0, #255
 1415 000a 0024     		movs	r4, #0
 1416 000c 02E0     		b	.L235
 1417              	.L232:
 1418 000e 0134     		adds	r4, r4, #1
 1419 0010 322C     		cmp	r4, #50
 1420 0012 12D0     		beq	.L231
 1421              	.L235:
 1422 0014 15F8012F 		ldrb	r2, [r5, #1]!	@ zero_extendqisi2
 1423 0018 002A     		cmp	r2, #0
 1424 001a F8D1     		bne	.L232
 1425 001c 0444     		add	r4, r4, r0
ARM GAS  /tmp/ccghtDyP.s 			page 26


 1426 001e 00F59970 		add	r0, r0, #306
 1427 0022 84F80011 		strb	r1, [r4, #256]
 1428              	.L233:
 1429 0026 21B1     		cbz	r1, .L236
 1430 0028 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 1431 002a 8C42     		cmp	r4, r1
 1432 002c 04BF     		itt	eq
 1433 002e 0132     		addeq	r2, r2, #1
 1434 0030 D2B2     		uxtbeq	r2, r2
 1435              	.L236:
 1436 0032 0133     		adds	r3, r3, #1
 1437 0034 8342     		cmp	r3, r0
 1438 0036 F6D1     		bne	.L233
 1439 0038 1446     		mov	r4, r2
 1440              	.L231:
 1441 003a 2046     		mov	r0, r4
 1442 003c 30BC     		pop	{r4, r5}
 1443 003e 7047     		bx	lr
 1444              		.size	_ZN8Platform20RegisterI2cAddrUsageEh, .-_ZN8Platform20RegisterI2cAddrUsageEh
 1445              		.section	.text._ZN8Platform22UnregisterI2cAddrUsageEh,"ax",%progbits
 1446              		.align	1
 1447              		.p2align 2,,3
 1448              		.global	_ZN8Platform22UnregisterI2cAddrUsageEh
 1449              		.syntax unified
 1450              		.thumb
 1451              		.thumb_func
 1452              		.fpu fpv4-sp-d16
 1453              		.type	_ZN8Platform22UnregisterI2cAddrUsageEh, %function
 1454              	_ZN8Platform22UnregisterI2cAddrUsageEh:
 1455              		@ args = 0, pretend = 0, frame = 0
 1456              		@ frame_needed = 0, uses_anonymous_args = 0
 1457              		@ link register save eliminated.
 1458 0000 10B4     		push	{r4}
 1459 0002 0023     		movs	r3, #0
 1460 0004 01E0     		b	.L249
 1461              	.L247:
 1462 0006 322B     		cmp	r3, #50
 1463 0008 0AD0     		beq	.L248
 1464              	.L249:
 1465 000a C218     		adds	r2, r0, r3
 1466 000c 0133     		adds	r3, r3, #1
 1467 000e 0029     		cmp	r1, #0
 1468 0010 F9D0     		beq	.L247
 1469 0012 92F80041 		ldrb	r4, [r2, #256]	@ zero_extendqisi2
 1470 0016 8C42     		cmp	r4, r1
 1471 0018 F5D1     		bne	.L247
 1472 001a 0023     		movs	r3, #0
 1473 001c 82F80031 		strb	r3, [r2, #256]
 1474              	.L248:
 1475 0020 00F58073 		add	r3, r0, #256
 1476 0024 00F59972 		add	r2, r0, #306
 1477 0028 0020     		movs	r0, #0
 1478              	.L251:
 1479 002a 21B1     		cbz	r1, .L250
 1480 002c 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 1481 002e 8C42     		cmp	r4, r1
 1482 0030 04BF     		itt	eq
ARM GAS  /tmp/ccghtDyP.s 			page 27


 1483 0032 0130     		addeq	r0, r0, #1
 1484 0034 C0B2     		uxtbeq	r0, r0
 1485              	.L250:
 1486 0036 0133     		adds	r3, r3, #1
 1487 0038 9342     		cmp	r3, r2
 1488 003a F6D1     		bne	.L251
 1489 003c 5DF8044B 		ldr	r4, [sp], #4
 1490 0040 7047     		bx	lr
 1491              		.size	_ZN8Platform22UnregisterI2cAddrUsageEh, .-_ZN8Platform22UnregisterI2cAddrUsageEh
 1492 0042 00BF     		.section	.text._ZN8Platform32CheckFirmwareUpdatePrerequisitesERK9StringRef,"ax",%progbits
 1493              		.align	1
 1494              		.p2align 2,,3
 1495              		.global	_ZN8Platform32CheckFirmwareUpdatePrerequisitesERK9StringRef
 1496              		.syntax unified
 1497              		.thumb
 1498              		.thumb_func
 1499              		.fpu fpv4-sp-d16
 1500              		.type	_ZN8Platform32CheckFirmwareUpdatePrerequisitesERK9StringRef, %function
 1501              	_ZN8Platform32CheckFirmwareUpdatePrerequisitesERK9StringRef:
 1502              		@ args = 0, pretend = 0, frame = 8
 1503              		@ frame_needed = 0, uses_anonymous_args = 0
 1504 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1505 0002 1D4A     		ldr	r2, .L268
 1506 0004 83B0     		sub	sp, sp, #12
 1507 0006 0546     		mov	r5, r0
 1508 0008 0E46     		mov	r6, r1
 1509 000a D0F8B409 		ldr	r0, [r0, #2484]
 1510 000e 1B49     		ldr	r1, .L268+4
 1511 0010 0023     		movs	r3, #0
 1512 0012 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 1513 0016 0446     		mov	r4, r0
 1514 0018 B8B1     		cbz	r0, .L267
 1515 001a 0422     		movs	r2, #4
 1516 001c 0DEB0201 		add	r1, sp, r2
 1517 0020 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 1518 0024 0746     		mov	r7, r0
 1519 0026 2046     		mov	r0, r4
 1520 0028 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1521 002c 042F     		cmp	r7, #4
 1522 002e 03D1     		bne	.L264
 1523 0030 134B     		ldr	r3, .L268+8
 1524 0032 019A     		ldr	r2, [sp, #4]
 1525 0034 9A42     		cmp	r2, r3
 1526 0036 10D0     		beq	.L265
 1527              	.L264:
 1528 0038 3046     		mov	r0, r6
 1529 003a 0F4A     		ldr	r2, .L268
 1530 003c 1149     		ldr	r1, .L268+12
 1531 003e FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1532 0042 0024     		movs	r4, #0
 1533              	.L263:
 1534 0044 2046     		mov	r0, r4
 1535 0046 03B0     		add	sp, sp, #12
 1536              		@ sp needed
 1537 0048 F0BD     		pop	{r4, r5, r6, r7, pc}
 1538              	.L267:
 1539 004a 3046     		mov	r0, r6
ARM GAS  /tmp/ccghtDyP.s 			page 28


 1540 004c 0A4A     		ldr	r2, .L268
 1541 004e 0E49     		ldr	r1, .L268+16
 1542 0050 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1543 0054 2046     		mov	r0, r4
 1544 0056 03B0     		add	sp, sp, #12
 1545              		@ sp needed
 1546 0058 F0BD     		pop	{r4, r5, r6, r7, pc}
 1547              	.L265:
 1548 005a D5F8B409 		ldr	r0, [r5, #2484]
 1549 005e 0B4A     		ldr	r2, .L268+20
 1550 0060 0649     		ldr	r1, .L268+4
 1551 0062 FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKcS1_
 1552 0066 0446     		mov	r4, r0
 1553 0068 0028     		cmp	r0, #0
 1554 006a EBD1     		bne	.L263
 1555 006c 3046     		mov	r0, r6
 1556 006e 074A     		ldr	r2, .L268+20
 1557 0070 0749     		ldr	r1, .L268+24
 1558 0072 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1559 0076 E5E7     		b	.L263
 1560              	.L269:
 1561              		.align	2
 1562              	.L268:
 1563 0078 00000000 		.word	.LC10
 1564 007c 1C000000 		.word	.LC11
 1565 0080 00000220 		.word	537001984
 1566 0084 44000000 		.word	.LC13
 1567 0088 24000000 		.word	.LC12
 1568 008c 7C000000 		.word	.LC14
 1569 0090 88000000 		.word	.LC15
 1570              		.size	_ZN8Platform32CheckFirmwareUpdatePrerequisitesERK9StringRef, .-_ZN8Platform32CheckFirmwareUp
 1571              		.section	.text._ZNK8Platform9EmulatingEv,"ax",%progbits
 1572              		.align	1
 1573              		.p2align 2,,3
 1574              		.global	_ZNK8Platform9EmulatingEv
 1575              		.syntax unified
 1576              		.thumb
 1577              		.thumb_func
 1578              		.fpu fpv4-sp-d16
 1579              		.type	_ZNK8Platform9EmulatingEv, %function
 1580              	_ZNK8Platform9EmulatingEv:
 1581              		@ args = 0, pretend = 0, frame = 0
 1582              		@ frame_needed = 0, uses_anonymous_args = 0
 1583              		@ link register save eliminated.
 1584 0000 90F8BF00 		ldrb	r0, [r0, #191]	@ zero_extendqisi2
 1585 0004 0128     		cmp	r0, #1
 1586 0006 08BF     		it	eq
 1587 0008 0020     		moveq	r0, #0
 1588 000a 7047     		bx	lr
 1589              		.size	_ZNK8Platform9EmulatingEv, .-_ZNK8Platform9EmulatingEv
 1590              		.section	.text._ZN8Platform20UpdateNetworkAddressEPhPKh,"ax",%progbits
 1591              		.align	1
 1592              		.p2align 2,,3
 1593              		.global	_ZN8Platform20UpdateNetworkAddressEPhPKh
 1594              		.syntax unified
 1595              		.thumb
 1596              		.thumb_func
ARM GAS  /tmp/ccghtDyP.s 			page 29


 1597              		.fpu fpv4-sp-d16
 1598              		.type	_ZN8Platform20UpdateNetworkAddressEPhPKh, %function
 1599              	_ZN8Platform20UpdateNetworkAddressEPhPKh:
 1600              		@ args = 0, pretend = 0, frame = 0
 1601              		@ frame_needed = 0, uses_anonymous_args = 0
 1602              		@ link register save eliminated.
 1603 0000 10B4     		push	{r4}
 1604 0002 531E     		subs	r3, r2, #1
 1605 0004 0446     		mov	r4, r0
 1606 0006 0139     		subs	r1, r1, #1
 1607 0008 0332     		adds	r2, r2, #3
 1608              	.L274:
 1609 000a 13F8010F 		ldrb	r0, [r3, #1]!	@ zero_extendqisi2
 1610 000e 01F8010F 		strb	r0, [r1, #1]!
 1611 0012 9342     		cmp	r3, r2
 1612 0014 F9D1     		bne	.L274
 1613 0016 064A     		ldr	r2, .L277
 1614 0018 04F19903 		add	r3, r4, #153
 1615 001c 5068     		ldr	r0, [r2, #4]
 1616 001e 04F19501 		add	r1, r4, #149
 1617 0022 04F19D02 		add	r2, r4, #157
 1618 0026 5DF8044B 		ldr	r4, [sp], #4
 1619 002a FFF7FEBF 		b	_ZN7Network20SetEthernetIPAddressEPKhS1_S1_
 1620              	.L278:
 1621 002e 00BF     		.align	2
 1622              	.L277:
 1623 0030 00000000 		.word	reprap
 1624              		.size	_ZN8Platform20UpdateNetworkAddressEPhPKh, .-_ZN8Platform20UpdateNetworkAddressEPhPKh
 1625              		.section	.text._ZN8Platform12SetIPAddressEPh,"ax",%progbits
 1626              		.align	1
 1627              		.p2align 2,,3
 1628              		.global	_ZN8Platform12SetIPAddressEPh
 1629              		.syntax unified
 1630              		.thumb
 1631              		.thumb_func
 1632              		.fpu fpv4-sp-d16
 1633              		.type	_ZN8Platform12SetIPAddressEPh, %function
 1634              	_ZN8Platform12SetIPAddressEPh:
 1635              		@ args = 0, pretend = 0, frame = 0
 1636              		@ frame_needed = 0, uses_anonymous_args = 0
 1637              		@ link register save eliminated.
 1638 0000 0A46     		mov	r2, r1
 1639 0002 00F19501 		add	r1, r0, #149
 1640 0006 FFF7FEBF 		b	_ZN8Platform20UpdateNetworkAddressEPhPKh
 1641              		.size	_ZN8Platform12SetIPAddressEPh, .-_ZN8Platform12SetIPAddressEPh
 1642 000a 00BF     		.section	.text._ZN8Platform10SetGateWayEPh,"ax",%progbits
 1643              		.align	1
 1644              		.p2align 2,,3
 1645              		.global	_ZN8Platform10SetGateWayEPh
 1646              		.syntax unified
 1647              		.thumb
 1648              		.thumb_func
 1649              		.fpu fpv4-sp-d16
 1650              		.type	_ZN8Platform10SetGateWayEPh, %function
 1651              	_ZN8Platform10SetGateWayEPh:
 1652              		@ args = 0, pretend = 0, frame = 0
 1653              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccghtDyP.s 			page 30


 1654              		@ link register save eliminated.
 1655 0000 0A46     		mov	r2, r1
 1656 0002 00F19D01 		add	r1, r0, #157
 1657 0006 FFF7FEBF 		b	_ZN8Platform20UpdateNetworkAddressEPhPKh
 1658              		.size	_ZN8Platform10SetGateWayEPh, .-_ZN8Platform10SetGateWayEPh
 1659 000a 00BF     		.section	.text._ZN8Platform10SetNetMaskEPh,"ax",%progbits
 1660              		.align	1
 1661              		.p2align 2,,3
 1662              		.global	_ZN8Platform10SetNetMaskEPh
 1663              		.syntax unified
 1664              		.thumb
 1665              		.thumb_func
 1666              		.fpu fpv4-sp-d16
 1667              		.type	_ZN8Platform10SetNetMaskEPh, %function
 1668              	_ZN8Platform10SetNetMaskEPh:
 1669              		@ args = 0, pretend = 0, frame = 0
 1670              		@ frame_needed = 0, uses_anonymous_args = 0
 1671              		@ link register save eliminated.
 1672 0000 0A46     		mov	r2, r1
 1673 0002 00F19901 		add	r1, r0, #153
 1674 0006 FFF7FEBF 		b	_ZN8Platform20UpdateNetworkAddressEPhPKh
 1675              		.size	_ZN8Platform10SetNetMaskEPh, .-_ZN8Platform10SetNetMaskEPh
 1676 000a 00BF     		.section	.text._ZNK8Platform19AnyAxisMotorStalledEj,"ax",%progbits
 1677              		.align	1
 1678              		.p2align 2,,3
 1679              		.global	_ZNK8Platform19AnyAxisMotorStalledEj
 1680              		.syntax unified
 1681              		.thumb
 1682              		.thumb_func
 1683              		.fpu fpv4-sp-d16
 1684              		.type	_ZNK8Platform19AnyAxisMotorStalledEj, %function
 1685              	_ZNK8Platform19AnyAxisMotorStalledEj:
 1686              		@ args = 0, pretend = 0, frame = 0
 1687              		@ frame_needed = 0, uses_anonymous_args = 0
 1688              		@ link register save eliminated.
 1689 0000 044B     		ldr	r3, .L284
 1690 0002 1B69     		ldr	r3, [r3, #16]
 1691 0004 D3F89832 		ldr	r3, [r3, #664]
 1692 0008 8B42     		cmp	r3, r1
 1693 000a 01D9     		bls	.L283
 1694 000c FFF7FEBF 		b	_ZNK8Platform19AnyAxisMotorStalledEj.part.18
 1695              	.L283:
 1696 0010 0020     		movs	r0, #0
 1697 0012 7047     		bx	lr
 1698              	.L285:
 1699              		.align	2
 1700              	.L284:
 1701 0014 00000000 		.word	reprap
 1702              		.size	_ZNK8Platform19AnyAxisMotorStalledEj, .-_ZNK8Platform19AnyAxisMotorStalledEj
 1703              		.section	.text._ZNK8Platform20ExtruderMotorStalledEj,"ax",%progbits
 1704              		.align	1
 1705              		.p2align 2,,3
 1706              		.global	_ZNK8Platform20ExtruderMotorStalledEj
 1707              		.syntax unified
 1708              		.thumb
 1709              		.thumb_func
 1710              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccghtDyP.s 			page 31


 1711              		.type	_ZNK8Platform20ExtruderMotorStalledEj, %function
 1712              	_ZNK8Platform20ExtruderMotorStalledEj:
 1713              		@ args = 0, pretend = 0, frame = 0
 1714              		@ frame_needed = 0, uses_anonymous_args = 0
 1715 0000 0144     		add	r1, r1, r0
 1716 0002 91F84003 		ldrb	r0, [r1, #832]	@ zero_extendqisi2
 1717 0006 0B28     		cmp	r0, #11
 1718 0008 01D9     		bls	.L293
 1719 000a 0020     		movs	r0, #0
 1720 000c 7047     		bx	lr
 1721              	.L293:
 1722 000e 08B5     		push	{r3, lr}
 1723 0010 FFF7FEFF 		bl	_ZN12SmartDrivers13GetLiveStatusEj
 1724 0014 00F00100 		and	r0, r0, #1
 1725 0018 08BD     		pop	{r3, pc}
 1726              		.size	_ZNK8Platform20ExtruderMotorStalledEj, .-_ZNK8Platform20ExtruderMotorStalledEj
 1727 001a 00BF     		.section	.text._ZN8Platform15DisableAutoSaveEv,"ax",%progbits
 1728              		.align	1
 1729              		.p2align 2,,3
 1730              		.global	_ZN8Platform15DisableAutoSaveEv
 1731              		.syntax unified
 1732              		.thumb
 1733              		.thumb_func
 1734              		.fpu fpv4-sp-d16
 1735              		.type	_ZN8Platform15DisableAutoSaveEv, %function
 1736              	_ZN8Platform15DisableAutoSaveEv:
 1737              		@ args = 0, pretend = 0, frame = 0
 1738              		@ frame_needed = 0, uses_anonymous_args = 0
 1739              		@ link register save eliminated.
 1740 0000 0023     		movs	r3, #0
 1741 0002 80F8F039 		strb	r3, [r0, #2544]
 1742 0006 7047     		bx	lr
 1743              		.size	_ZN8Platform15DisableAutoSaveEv, .-_ZN8Platform15DisableAutoSaveEv
 1744              		.section	.text._ZNK8Platform9IsPowerOkEv,"ax",%progbits
 1745              		.align	1
 1746              		.p2align 2,,3
 1747              		.global	_ZNK8Platform9IsPowerOkEv
 1748              		.syntax unified
 1749              		.thumb
 1750              		.thumb_func
 1751              		.fpu fpv4-sp-d16
 1752              		.type	_ZNK8Platform9IsPowerOkEv, %function
 1753              	_ZNK8Platform9IsPowerOkEv:
 1754              		@ args = 0, pretend = 0, frame = 0
 1755              		@ frame_needed = 0, uses_anonymous_args = 0
 1756              		@ link register save eliminated.
 1757 0000 90F8F039 		ldrb	r3, [r0, #2544]	@ zero_extendqisi2
 1758 0004 43B1     		cbz	r3, .L297
 1759 0006 B0F8D639 		ldrh	r3, [r0, #2518]
 1760 000a B0F8DC09 		ldrh	r0, [r0, #2524]
 1761 000e 9842     		cmp	r0, r3
 1762 0010 2CBF     		ite	cs
 1763 0012 0020     		movcs	r0, #0
 1764 0014 0120     		movcc	r0, #1
 1765 0016 7047     		bx	lr
 1766              	.L297:
 1767 0018 0120     		movs	r0, #1
ARM GAS  /tmp/ccghtDyP.s 			page 32


 1768 001a 7047     		bx	lr
 1769              		.size	_ZNK8Platform9IsPowerOkEv, .-_ZNK8Platform9IsPowerOkEv
 1770              		.section	.text._ZNK8Platform11HasVinPowerEv,"ax",%progbits
 1771              		.align	1
 1772              		.p2align 2,,3
 1773              		.global	_ZNK8Platform11HasVinPowerEv
 1774              		.syntax unified
 1775              		.thumb
 1776              		.thumb_func
 1777              		.fpu fpv4-sp-d16
 1778              		.type	_ZNK8Platform11HasVinPowerEv, %function
 1779              	_ZNK8Platform11HasVinPowerEv:
 1780              		@ args = 0, pretend = 0, frame = 0
 1781              		@ frame_needed = 0, uses_anonymous_args = 0
 1782              		@ link register save eliminated.
 1783 0000 90F8D903 		ldrb	r0, [r0, #985]	@ zero_extendqisi2
 1784 0004 7047     		bx	lr
 1785              		.size	_ZNK8Platform11HasVinPowerEv, .-_ZNK8Platform11HasVinPowerEv
 1786 0006 00BF     		.section	.text._ZN8Platform14EnableAutoSaveEff,"ax",%progbits
 1787              		.align	1
 1788              		.p2align 2,,3
 1789              		.global	_ZN8Platform14EnableAutoSaveEff
 1790              		.syntax unified
 1791              		.thumb
 1792              		.thumb_func
 1793              		.fpu fpv4-sp-d16
 1794              		.type	_ZN8Platform14EnableAutoSaveEff, %function
 1795              	_ZN8Platform14EnableAutoSaveEff:
 1796              		@ args = 0, pretend = 0, frame = 0
 1797              		@ frame_needed = 0, uses_anonymous_args = 0
 1798              		@ link register save eliminated.
 1799 0000 DFED0A7A 		vldr.32	s15, .L300
 1800 0004 20EE270A 		vmul.f32	s0, s0, s15
 1801 0008 60EEA70A 		vmul.f32	s1, s1, s15
 1802 000c BCEEC00A 		vcvt.u32.f32	s0, s0
 1803 0010 FCEEE00A 		vcvt.u32.f32	s1, s1
 1804 0014 10EE102A 		vmov	r2, s0	@ int
 1805 0018 A0F8DC29 		strh	r2, [r0, #2524]	@ movhi
 1806 001c 10EE902A 		vmov	r2, s1	@ int
 1807 0020 0123     		movs	r3, #1
 1808 0022 A0F8DE29 		strh	r2, [r0, #2526]	@ movhi
 1809 0026 80F8F039 		strb	r3, [r0, #2544]
 1810 002a 7047     		bx	lr
 1811              	.L301:
 1812              		.align	2
 1813              	.L300:
 1814 002c C9ACE142 		.word	1122086089
 1815              		.size	_ZN8Platform14EnableAutoSaveEff, .-_ZN8Platform14EnableAutoSaveEff
 1816              		.section	.text._ZN8Platform19GetAutoSaveSettingsERfS0_,"ax",%progbits
 1817              		.align	1
 1818              		.p2align 2,,3
 1819              		.global	_ZN8Platform19GetAutoSaveSettingsERfS0_
 1820              		.syntax unified
 1821              		.thumb
 1822              		.thumb_func
 1823              		.fpu fpv4-sp-d16
 1824              		.type	_ZN8Platform19GetAutoSaveSettingsERfS0_, %function
ARM GAS  /tmp/ccghtDyP.s 			page 33


 1825              	_ZN8Platform19GetAutoSaveSettingsERfS0_:
 1826              		@ args = 0, pretend = 0, frame = 0
 1827              		@ frame_needed = 0, uses_anonymous_args = 0
 1828              		@ link register save eliminated.
 1829 0000 0346     		mov	r3, r0
 1830 0002 90F8F009 		ldrb	r0, [r0, #2544]	@ zero_extendqisi2
 1831 0006 B8B1     		cbz	r0, .L303
 1832 0008 B3F8DC09 		ldrh	r0, [r3, #2524]
 1833 000c DFED0B6A 		vldr.32	s13, .L307
 1834 0010 07EE100A 		vmov	s14, r0	@ int
 1835 0014 B8EEC77A 		vcvt.f32.s32	s14, s14
 1836 0018 27EE267A 		vmul.f32	s14, s14, s13
 1837 001c 81ED007A 		vstr.32	s14, [r1]
 1838 0020 B3F8DE19 		ldrh	r1, [r3, #2526]
 1839 0024 07EE901A 		vmov	s15, r1	@ int
 1840 0028 F8EEE77A 		vcvt.f32.s32	s15, s15
 1841 002c 67EEA67A 		vmul.f32	s15, s15, s13
 1842 0030 C2ED007A 		vstr.32	s15, [r2]
 1843 0034 93F8F009 		ldrb	r0, [r3, #2544]	@ zero_extendqisi2
 1844              	.L303:
 1845 0038 7047     		bx	lr
 1846              	.L308:
 1847 003a 00BF     		.align	2
 1848              	.L307:
 1849 003c 3333113C 		.word	1007760179
 1850              		.size	_ZN8Platform19GetAutoSaveSettingsERfS0_, .-_ZN8Platform19GetAutoSaveSettingsERfS0_
 1851              		.section	.text._ZNK8Platform16WriteFanSettingsEP9FileStore,"ax",%progbits
 1852              		.align	1
 1853              		.p2align 2,,3
 1854              		.global	_ZNK8Platform16WriteFanSettingsEP9FileStore
 1855              		.syntax unified
 1856              		.thumb
 1857              		.thumb_func
 1858              		.fpu fpv4-sp-d16
 1859              		.type	_ZNK8Platform16WriteFanSettingsEP9FileStore, %function
 1860              	_ZNK8Platform16WriteFanSettingsEP9FileStore:
 1861              		@ args = 0, pretend = 0, frame = 0
 1862              		@ frame_needed = 0, uses_anonymous_args = 0
 1863 0000 70B5     		push	{r4, r5, r6, lr}
 1864 0002 0E46     		mov	r6, r1
 1865 0004 00F5FB65 		add	r5, r0, #2008
 1866 0008 0024     		movs	r4, #0
 1867              	.L310:
 1868 000a 2246     		mov	r2, r4
 1869 000c 2846     		mov	r0, r5
 1870 000e 3146     		mov	r1, r6
 1871 0010 FFF7FEFF 		bl	_ZNK3Fan13WriteSettingsEP9FileStorej
 1872 0014 2C35     		adds	r5, r5, #44
 1873 0016 0134     		adds	r4, r4, #1
 1874 0018 08B1     		cbz	r0, .L311
 1875 001a 092C     		cmp	r4, #9
 1876 001c F5D1     		bne	.L310
 1877              	.L311:
 1878 001e 70BD     		pop	{r4, r5, r6, pc}
 1879              		.size	_ZNK8Platform16WriteFanSettingsEP9FileStore, .-_ZNK8Platform16WriteFanSettingsEP9FileStore
 1880              		.section	.text._ZNK8Platform26AdcReadingToCpuTemperatureEm,"ax",%progbits
 1881              		.align	1
ARM GAS  /tmp/ccghtDyP.s 			page 34


 1882              		.p2align 2,,3
 1883              		.global	_ZNK8Platform26AdcReadingToCpuTemperatureEm
 1884              		.syntax unified
 1885              		.thumb
 1886              		.thumb_func
 1887              		.fpu fpv4-sp-d16
 1888              		.type	_ZNK8Platform26AdcReadingToCpuTemperatureEm, %function
 1889              	_ZNK8Platform26AdcReadingToCpuTemperatureEm:
 1890              		@ args = 0, pretend = 0, frame = 0
 1891              		@ frame_needed = 0, uses_anonymous_args = 0
 1892              		@ link register save eliminated.
 1893 0000 07EE901A 		vmov	s15, r1	@ int
 1894 0004 DFED0A6A 		vldr.32	s13, .L318
 1895 0008 9FED0A7A 		vldr.32	s14, .L318+4
 1896 000c B8EE676A 		vcvt.f32.u32	s12, s15
 1897 0010 DFED097A 		vldr.32	s15, .L318+8
 1898 0014 E6EE267A 		vfma.f32	s15, s12, s13
 1899 0018 00F21C70 		addw	r0, r0, #1820
 1900 001c B3EE0B0A 		vmov.f32	s0, #2.7e+1
 1901 0020 A7EE870A 		vfma.f32	s0, s15, s14
 1902 0024 D0ED007A 		vldr.32	s15, [r0]
 1903 0028 30EE270A 		vadd.f32	s0, s0, s15
 1904 002c 7047     		bx	lr
 1905              	.L319:
 1906 002e 00BF     		.align	2
 1907              	.L318:
 1908 0030 3333D337 		.word	936588083
 1909 0034 16C45443 		.word	1129628694
 1910 0038 EC51B8BF 		.word	3216527852
 1911              		.size	_ZNK8Platform26AdcReadingToCpuTemperatureEm, .-_ZNK8Platform26AdcReadingToCpuTemperatureEm
 1912              		.section	.text._ZN8Platform20InitialiseInterruptsEv,"ax",%progbits
 1913              		.align	1
 1914              		.p2align 2,,3
 1915              		.global	_ZN8Platform20InitialiseInterruptsEv
 1916              		.syntax unified
 1917              		.thumb
 1918              		.thumb_func
 1919              		.fpu fpv4-sp-d16
 1920              		.type	_ZN8Platform20InitialiseInterruptsEv, %function
 1921              	_ZN8Platform20InitialiseInterruptsEv:
 1922              		@ args = 0, pretend = 0, frame = 0
 1923              		@ frame_needed = 0, uses_anonymous_args = 0
 1924 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1925 0004 3349     		ldr	r1, .L326
 1926 0006 344C     		ldr	r4, .L326+4
 1927 0008 344E     		ldr	r6, .L326+8
 1928 000a 4FF0300C 		mov	ip, #48
 1929 000e 2023     		movs	r3, #32
 1930 0010 1022     		movs	r2, #16
 1931 0012 0027     		movs	r7, #0
 1932 0014 4FF07008 		mov	r8, #112
 1933 0018 84F80473 		strb	r7, [r4, #772]
 1934 001c 0546     		mov	r5, r0
 1935 001e 81F823C0 		strb	ip, [r1, #35]
 1936 0022 3846     		mov	r0, r7
 1937 0024 84F80723 		strb	r2, [r4, #775]
 1938 0028 84F82D83 		strb	r8, [r4, #813]
ARM GAS  /tmp/ccghtDyP.s 			page 35


 1939 002c 84F80F33 		strb	r3, [r4, #783]
 1940 0030 FFF7FEFF 		bl	pmc_set_writeprotect
 1941 0034 1720     		movs	r0, #23
 1942 0036 FFF7FEFF 		bl	pmc_enable_periph_clk
 1943 003a 48F20342 		movw	r2, #33795
 1944 003e 3046     		mov	r0, r6
 1945 0040 0221     		movs	r1, #2
 1946 0042 FFF7FEFF 		bl	tc_init
 1947 0046 4FF0FF33 		mov	r3, #-1
 1948 004a C6F8A830 		str	r3, [r6, #168]
 1949 004e 3046     		mov	r0, r6
 1950 0050 0221     		movs	r1, #2
 1951 0052 FFF7FEFF 		bl	tc_start
 1952 0056 0221     		movs	r1, #2
 1953 0058 3046     		mov	r0, r6
 1954 005a FFF7FEFF 		bl	tc_get_status
 1955 005e 4022     		movs	r2, #64
 1956 0060 6020     		movs	r0, #96
 1957 0062 4FF40001 		mov	r1, #8388608
 1958 0066 9023     		movs	r3, #144
 1959 0068 84F81703 		strb	r0, [r4, #791]
 1960 006c 2160     		str	r1, [r4]
 1961 006e 84F80923 		strb	r2, [r4, #777]
 1962 0072 84F80A23 		strb	r2, [r4, #778]
 1963 0076 84F80B23 		strb	r2, [r4, #779]
 1964 007a 84F80C23 		strb	r2, [r4, #780]
 1965 007e 84F80D23 		strb	r2, [r4, #781]
 1966 0082 84F82383 		strb	r8, [r4, #803]
 1967 0086 84F81133 		strb	r3, [r4, #785]
 1968 008a 95F86409 		ldrb	r0, [r5, #2404]	@ zero_extendqisi2
 1969 008e FF28     		cmp	r0, #255
 1970 0090 04D0     		beq	.L321
 1971 0092 3B46     		mov	r3, r7
 1972 0094 0422     		movs	r2, #4
 1973 0096 1249     		ldr	r1, .L326+12
 1974 0098 FFF7FEFF 		bl	_Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_
 1975              	.L321:
 1976 009c 0022     		movs	r2, #0
 1977 009e 4FF48073 		mov	r3, #256
 1978 00a2 85F8C229 		strb	r2, [r5, #2498]
 1979 00a6 C5F8C429 		str	r2, [r5, #2500]
 1980 00aa 4FF40051 		mov	r1, #8192
 1981 00ae 1A46     		mov	r2, r3
 1982 00b0 0C48     		ldr	r0, .L326+16
 1983 00b2 FFF7FEFF 		bl	wdt_init
 1984 00b6 8023     		movs	r3, #128
 1985 00b8 1A46     		mov	r2, r3
 1986 00ba 4FF48051 		mov	r1, #4096
 1987 00be 0A48     		ldr	r0, .L326+20
 1988 00c0 FFF7FEFF 		bl	rswdt_init
 1989 00c4 044A     		ldr	r2, .L326+4
 1990 00c6 1021     		movs	r1, #16
 1991 00c8 0123     		movs	r3, #1
 1992 00ca 1160     		str	r1, [r2]
 1993 00cc 85F8BE30 		strb	r3, [r5, #190]
 1994 00d0 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1995              	.L327:
ARM GAS  /tmp/ccghtDyP.s 			page 36


 1996              		.align	2
 1997              	.L326:
 1998 00d4 00ED00E0 		.word	-536810240
 1999 00d8 00E100E0 		.word	-536813312
 2000 00dc 00000940 		.word	1074331648
 2001 00e0 00000000 		.word	_ZL12FanInterrupt17CallbackParameter
 2002 00e4 50180E40 		.word	1074665552
 2003 00e8 00190E40 		.word	1074665728
 2004              		.size	_ZN8Platform20InitialiseInterruptsEv, .-_ZN8Platform20InitialiseInterruptsEv
 2005              		.section	.text._ZN8Platform19DriverCoolingFansOnEm,"ax",%progbits
 2006              		.align	1
 2007              		.p2align 2,,3
 2008              		.global	_ZN8Platform19DriverCoolingFansOnEm
 2009              		.syntax unified
 2010              		.thumb
 2011              		.thumb_func
 2012              		.fpu fpv4-sp-d16
 2013              		.type	_ZN8Platform19DriverCoolingFansOnEm, %function
 2014              	_ZN8Platform19DriverCoolingFansOnEm:
 2015              		@ args = 0, pretend = 0, frame = 0
 2016              		@ frame_needed = 0, uses_anonymous_args = 0
 2017 0000 CA07     		lsls	r2, r1, #31
 2018 0002 38B5     		push	{r3, r4, r5, lr}
 2019 0004 0C46     		mov	r4, r1
 2020 0006 0546     		mov	r5, r0
 2021 0008 0AD4     		bmi	.L338
 2022              	.L329:
 2023 000a A307     		lsls	r3, r4, #30
 2024 000c 00D4     		bmi	.L339
 2025 000e 38BD     		pop	{r3, r4, r5, pc}
 2026              	.L339:
 2027 0010 FFF7FEFF 		bl	millis
 2028 0014 0123     		movs	r3, #1
 2029 0016 C5F8E003 		str	r0, [r5, #992]
 2030 001a 85F8DB33 		strb	r3, [r5, #987]
 2031 001e 38BD     		pop	{r3, r4, r5, pc}
 2032              	.L338:
 2033 0020 FFF7FEFF 		bl	millis
 2034 0024 0123     		movs	r3, #1
 2035 0026 C5F8DC03 		str	r0, [r5, #988]
 2036 002a 85F8DA33 		strb	r3, [r5, #986]
 2037 002e ECE7     		b	.L329
 2038              		.size	_ZN8Platform19DriverCoolingFansOnEm, .-_ZN8Platform19DriverCoolingFansOnEm
 2039              		.section	.text._ZN8Platform9SetHeaterEjft,"ax",%progbits
 2040              		.align	1
 2041              		.p2align 2,,3
 2042              		.global	_ZN8Platform9SetHeaterEjft
 2043              		.syntax unified
 2044              		.thumb
 2045              		.thumb_func
 2046              		.fpu fpv4-sp-d16
 2047              		.type	_ZN8Platform9SetHeaterEjft, %function
 2048              	_ZN8Platform9SetHeaterEjft:
 2049              		@ args = 0, pretend = 0, frame = 0
 2050              		@ frame_needed = 0, uses_anonymous_args = 0
 2051 0000 10B5     		push	{r4, lr}
 2052 0002 2DED028B 		vpush.64	{d8}
ARM GAS  /tmp/ccghtDyP.s 			page 37


 2053 0006 4418     		adds	r4, r0, r1
 2054 0008 94F8C007 		ldrb	r0, [r4, #1984]	@ zero_extendqisi2
 2055 000c FF28     		cmp	r0, #255
 2056 000e 17D0     		beq	.L340
 2057 0010 B0EE408A 		vmov.f32	s16, s0
 2058 0014 52B1     		cbz	r2, .L345
 2059              	.L342:
 2060 0016 B7EE000A 		vmov.f32	s0, #1.0e+0
 2061 001a 30EE480A 		vsub.f32	s0, s0, s16
 2062 001e BDEC028B 		vldm	sp!, {d8}
 2063 0022 1146     		mov	r1, r2
 2064 0024 BDE81040 		pop	{r4, lr}
 2065 0028 FFF7FEBF 		b	_ZN6IoPort11WriteAnalogEhft
 2066              	.L345:
 2067 002c 084B     		ldr	r3, .L346
 2068 002e 49B2     		sxtb	r1, r1
 2069 0030 D868     		ldr	r0, [r3, #12]
 2070 0032 FFF7FEFF 		bl	_ZNK4Heat20IsBedOrChamberHeaterEa
 2071 0036 30B1     		cbz	r0, .L343
 2072 0038 94F8C007 		ldrb	r0, [r4, #1984]	@ zero_extendqisi2
 2073 003c 0A22     		movs	r2, #10
 2074 003e EAE7     		b	.L342
 2075              	.L340:
 2076 0040 BDEC028B 		vldm	sp!, {d8}
 2077 0044 10BD     		pop	{r4, pc}
 2078              	.L343:
 2079 0046 94F8C007 		ldrb	r0, [r4, #1984]	@ zero_extendqisi2
 2080 004a FA22     		movs	r2, #250
 2081 004c E3E7     		b	.L342
 2082              	.L347:
 2083 004e 00BF     		.align	2
 2084              	.L346:
 2085 0050 00000000 		.word	reprap
 2086              		.size	_ZN8Platform9SetHeaterEjft, .-_ZN8Platform9SetHeaterEjft
 2087              		.section	.text._ZN8Platform23UpdateConfiguredHeatersEv,"ax",%progbits
 2088              		.align	1
 2089              		.p2align 2,,3
 2090              		.global	_ZN8Platform23UpdateConfiguredHeatersEv
 2091              		.syntax unified
 2092              		.thumb
 2093              		.thumb_func
 2094              		.fpu fpv4-sp-d16
 2095              		.type	_ZN8Platform23UpdateConfiguredHeatersEv, %function
 2096              	_ZN8Platform23UpdateConfiguredHeatersEv:
 2097              		@ args = 0, pretend = 0, frame = 0
 2098              		@ frame_needed = 0, uses_anonymous_args = 0
 2099 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2100 0002 214B     		ldr	r3, .L362
 2101 0004 DC68     		ldr	r4, [r3, #12]
 2102 0006 0023     		movs	r3, #0
 2103 0008 0546     		mov	r5, r0
 2104 000a C0F8D037 		str	r3, [r0, #2000]
 2105 000e 04F1D202 		add	r2, r4, #210
 2106 0012 04F1D600 		add	r0, r4, #214
 2107 0016 0126     		movs	r6, #1
 2108              	.L349:
 2109 0018 12F9013B 		ldrsb	r3, [r2], #1
ARM GAS  /tmp/ccghtDyP.s 			page 38


 2110 001c 002B     		cmp	r3, #0
 2111 001e 06DB     		blt	.L353
 2112 0020 D5F8D017 		ldr	r1, [r5, #2000]
 2113 0024 06FA03F3 		lsl	r3, r6, r3
 2114 0028 0B43     		orrs	r3, r3, r1
 2115 002a C5F8D037 		str	r3, [r5, #2000]
 2116              	.L353:
 2117 002e 8242     		cmp	r2, r0
 2118 0030 F2D1     		bne	.L349
 2119 0032 94F9D630 		ldrsb	r3, [r4, #214]
 2120 0036 002B     		cmp	r3, #0
 2121 0038 07DB     		blt	.L350
 2122 003a D5F8D027 		ldr	r2, [r5, #2000]
 2123 003e 0121     		movs	r1, #1
 2124 0040 01FA03F3 		lsl	r3, r1, r3
 2125 0044 1A43     		orrs	r2, r2, r3
 2126 0046 C5F8D027 		str	r2, [r5, #2000]
 2127              	.L350:
 2128 004a 94F9D730 		ldrsb	r3, [r4, #215]
 2129 004e 002B     		cmp	r3, #0
 2130 0050 07DB     		blt	.L351
 2131 0052 D5F8D027 		ldr	r2, [r5, #2000]
 2132 0056 0121     		movs	r1, #1
 2133 0058 01FA03F3 		lsl	r3, r1, r3
 2134 005c 1A43     		orrs	r2, r2, r3
 2135 005e C5F8D027 		str	r2, [r5, #2000]
 2136              	.L351:
 2137 0062 094E     		ldr	r6, .L362
 2138 0064 0024     		movs	r4, #0
 2139 0066 0127     		movs	r7, #1
 2140              	.L352:
 2141 0068 61B2     		sxtb	r1, r4
 2142 006a 3046     		mov	r0, r6
 2143 006c FFF7FEFF 		bl	_ZNK6RepRap22IsHeaterAssignedToToolEa
 2144 0070 30B1     		cbz	r0, .L355
 2145 0072 D5F8D037 		ldr	r3, [r5, #2000]
 2146 0076 07FA04F2 		lsl	r2, r7, r4
 2147 007a 1343     		orrs	r3, r3, r2
 2148 007c C5F8D037 		str	r3, [r5, #2000]
 2149              	.L355:
 2150 0080 0134     		adds	r4, r4, #1
 2151 0082 082C     		cmp	r4, #8
 2152 0084 F0D1     		bne	.L352
 2153 0086 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2154              	.L363:
 2155              		.align	2
 2156              	.L362:
 2157 0088 00000000 		.word	reprap
 2158              		.size	_ZN8Platform23UpdateConfiguredHeatersEv, .-_ZN8Platform23UpdateConfiguredHeatersEv
 2159              		.section	.text._ZNK8Platform17EndStopInputStateEj,"ax",%progbits
 2160              		.align	1
 2161              		.p2align 2,,3
 2162              		.global	_ZNK8Platform17EndStopInputStateEj
 2163              		.syntax unified
 2164              		.thumb
 2165              		.thumb_func
 2166              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccghtDyP.s 			page 39


 2167              		.type	_ZNK8Platform17EndStopInputStateEj, %function
 2168              	_ZNK8Platform17EndStopInputStateEj:
 2169              		@ args = 0, pretend = 0, frame = 0
 2170              		@ frame_needed = 0, uses_anonymous_args = 0
 2171              		@ link register save eliminated.
 2172 0000 0144     		add	r1, r1, r0
 2173 0002 91F83201 		ldrb	r0, [r1, #306]	@ zero_extendqisi2
 2174 0006 FF28     		cmp	r0, #255
 2175 0008 01D0     		beq	.L365
 2176 000a FFF7FEBF 		b	_ZN6IoPort7ReadPinEh
 2177              	.L365:
 2178 000e 0020     		movs	r0, #0
 2179 0010 7047     		bx	lr
 2180              		.size	_ZNK8Platform17EndStopInputStateEj, .-_ZNK8Platform17EndStopInputStateEj
 2181 0012 00BF     		.section	.text._ZNK8Platform19GetAllEndstopStatesEv,"ax",%progbits
 2182              		.align	1
 2183              		.p2align 2,,3
 2184              		.global	_ZNK8Platform19GetAllEndstopStatesEv
 2185              		.syntax unified
 2186              		.thumb
 2187              		.thumb_func
 2188              		.fpu fpv4-sp-d16
 2189              		.type	_ZNK8Platform19GetAllEndstopStatesEv, %function
 2190              	_ZNK8Platform19GetAllEndstopStatesEv:
 2191              		@ args = 0, pretend = 0, frame = 0
 2192              		@ frame_needed = 0, uses_anonymous_args = 0
 2193 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2194 0002 0024     		movs	r4, #0
 2195 0004 00F23115 		addw	r5, r0, #305
 2196 0008 2646     		mov	r6, r4
 2197 000a 0127     		movs	r7, #1
 2198              	.L368:
 2199 000c 15F8013F 		ldrb	r3, [r5, #1]!	@ zero_extendqisi2
 2200 0010 FF2B     		cmp	r3, #255
 2201 0012 1846     		mov	r0, r3
 2202 0014 05D0     		beq	.L367
 2203 0016 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 2204 001a 10B1     		cbz	r0, .L367
 2205 001c 07FA04F3 		lsl	r3, r7, r4
 2206 0020 1E43     		orrs	r6, r6, r3
 2207              	.L367:
 2208 0022 0134     		adds	r4, r4, #1
 2209 0024 0C2C     		cmp	r4, #12
 2210 0026 F1D1     		bne	.L368
 2211 0028 3046     		mov	r0, r6
 2212 002a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2213              		.size	_ZNK8Platform19GetAllEndstopStatesEv, .-_ZNK8Platform19GetAllEndstopStatesEv
 2214              		.section	.text._ZNK8Platform15GetZProbeResultEv,"ax",%progbits
 2215              		.align	1
 2216              		.p2align 2,,3
 2217              		.global	_ZNK8Platform15GetZProbeResultEv
 2218              		.syntax unified
 2219              		.thumb
 2220              		.thumb_func
 2221              		.fpu fpv4-sp-d16
 2222              		.type	_ZNK8Platform15GetZProbeResultEv, %function
 2223              	_ZNK8Platform15GetZProbeResultEv:
ARM GAS  /tmp/ccghtDyP.s 			page 40


 2224              		@ args = 0, pretend = 0, frame = 0
 2225              		@ frame_needed = 0, uses_anonymous_args = 0
 2226 0000 10B5     		push	{r4, lr}
 2227 0002 0446     		mov	r4, r0
 2228 0004 FFF7FEFF 		bl	_ZNK8Platform16GetZProbeReadingEv
 2229 0008 94F89430 		ldrb	r3, [r4, #148]	@ zero_extendqisi2
 2230 000c 0A2B     		cmp	r3, #10
 2231 000e 08D8     		bhi	.L378
 2232 0010 0122     		movs	r2, #1
 2233 0012 02FA03F3 		lsl	r3, r2, r3
 2234 0016 40F22672 		movw	r2, #1830
 2235 001a 1342     		tst	r3, r2
 2236 001c 0FD1     		bne	.L379
 2237 001e 1B07     		lsls	r3, r3, #28
 2238 0020 13D4     		bmi	.L380
 2239              	.L378:
 2240 0022 0434     		adds	r4, r4, #4
 2241              	.L381:
 2242 0024 2368     		ldr	r3, [r4]
 2243 0026 9842     		cmp	r0, r3
 2244 0028 0DDA     		bge	.L383
 2245              	.L386:
 2246 002a 00EB8000 		add	r0, r0, r0, lsl #2
 2247 002e 03EBC303 		add	r3, r3, r3, lsl #3
 2248 0032 B3EB400F 		cmp	r3, r0, lsl #1
 2249 0036 D4BF     		ite	le
 2250 0038 0320     		movle	r0, #3
 2251 003a 0020     		movgt	r0, #0
 2252 003c 10BD     		pop	{r4, pc}
 2253              	.L379:
 2254 003e 3434     		adds	r4, r4, #52
 2255 0040 2368     		ldr	r3, [r4]
 2256 0042 9842     		cmp	r0, r3
 2257 0044 F1DB     		blt	.L386
 2258              	.L383:
 2259 0046 0120     		movs	r0, #1
 2260 0048 10BD     		pop	{r4, pc}
 2261              	.L380:
 2262 004a 6434     		adds	r4, r4, #100
 2263 004c EAE7     		b	.L381
 2264              		.size	_ZNK8Platform15GetZProbeResultEv, .-_ZNK8Platform15GetZProbeResultEv
 2265 004e 00BF     		.section	.text._ZNK8Platform7StoppedEj,"ax",%progbits
 2266              		.align	1
 2267              		.p2align 2,,3
 2268              		.global	_ZNK8Platform7StoppedEj
 2269              		.syntax unified
 2270              		.thumb
 2271              		.thumb_func
 2272              		.fpu fpv4-sp-d16
 2273              		.type	_ZNK8Platform7StoppedEj, %function
 2274              	_ZNK8Platform7StoppedEj:
 2275              		@ args = 0, pretend = 0, frame = 0
 2276              		@ frame_needed = 0, uses_anonymous_args = 0
 2277 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2278 0002 534D     		ldr	r5, .L444
 2279 0004 2B69     		ldr	r3, [r5, #16]
 2280 0006 D3F89832 		ldr	r3, [r3, #664]
ARM GAS  /tmp/ccghtDyP.s 			page 41


 2281 000a 9942     		cmp	r1, r3
 2282 000c 0446     		mov	r4, r0
 2283 000e 09D2     		bcs	.L388
 2284 0010 00EB8106 		add	r6, r0, r1, lsl #2
 2285 0014 D6F89427 		ldr	r2, [r6, #1940]
 2286 0018 032A     		cmp	r2, #3
 2287 001a 0FD8     		bhi	.L407
 2288 001c DFE802F0 		tbb	[pc, r2]
 2289              	.L391:
 2290 0020 25       		.byte	(.L390-.L391)/2
 2291 0021 2F       		.byte	(.L392-.L391)/2
 2292 0022 39       		.byte	(.L393-.L391)/2
 2293 0023 10       		.byte	(.L394-.L391)/2
 2294              		.p2align 1
 2295              	.L388:
 2296 0024 0B29     		cmp	r1, #11
 2297 0026 09D8     		bhi	.L407
 2298 0028 C91A     		subs	r1, r1, r3
 2299 002a 0144     		add	r1, r1, r0
 2300 002c 91F84003 		ldrb	r0, [r1, #832]	@ zero_extendqisi2
 2301 0030 0B28     		cmp	r0, #11
 2302 0032 03D8     		bhi	.L407
 2303 0034 FFF7FEFF 		bl	_ZN12SmartDrivers13GetLiveStatusEj
 2304 0038 C307     		lsls	r3, r0, #31
 2305 003a 34D4     		bmi	.L403
 2306              	.L407:
 2307 003c 0020     		movs	r0, #0
 2308              	.L387:
 2309 003e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2310              	.L394:
 2311 0040 AA68     		ldr	r2, [r5, #8]
 2312 0042 D2F8582A 		ldr	r2, [r2, #2648]
 2313 0046 977B     		ldrb	r7, [r2, #14]	@ zero_extendqisi2
 2314 0048 022F     		cmp	r7, #2
 2315 004a 5BD0     		beq	.L397
 2316 004c 052F     		cmp	r7, #5
 2317 004e 42D0     		beq	.L398
 2318 0050 012F     		cmp	r7, #1
 2319 0052 2AD0     		beq	.L442
 2320              	.L435:
 2321 0054 2046     		mov	r0, r4
 2322 0056 FFF7FEFF 		bl	_ZNK8Platform19AnyAxisMotorStalledEj.part.18
 2323 005a 0028     		cmp	r0, #0
 2324 005c EED0     		beq	.L407
 2325              	.L441:
 2326 005e D6F87037 		ldr	r3, [r6, #1904]
 2327 0062 022B     		cmp	r3, #2
 2328 0064 1FD0     		beq	.L403
 2329              	.L395:
 2330 0066 0120     		movs	r0, #1
 2331 0068 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2332              	.L390:
 2333 006a 2144     		add	r1, r1, r4
 2334 006c 91F83201 		ldrb	r0, [r1, #306]	@ zero_extendqisi2
 2335 0070 FF28     		cmp	r0, #255
 2336 0072 E3D0     		beq	.L407
 2337 0074 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
ARM GAS  /tmp/ccghtDyP.s 			page 42


 2338 0078 0028     		cmp	r0, #0
 2339 007a F0D0     		beq	.L441
 2340 007c DEE7     		b	.L407
 2341              	.L392:
 2342 007e 2144     		add	r1, r1, r4
 2343 0080 91F83201 		ldrb	r0, [r1, #306]	@ zero_extendqisi2
 2344 0084 FF28     		cmp	r0, #255
 2345 0086 D9D0     		beq	.L407
 2346 0088 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 2347 008c 0028     		cmp	r0, #0
 2348 008e E6D1     		bne	.L441
 2349 0090 D4E7     		b	.L407
 2350              	.L393:
 2351 0092 2046     		mov	r0, r4
 2352 0094 FFF7FEFF 		bl	_ZNK8Platform15GetZProbeResultEv
 2353 0098 0128     		cmp	r0, #1
 2354 009a D0D1     		bne	.L387
 2355 009c D6F87007 		ldr	r0, [r6, #1904]
 2356 00a0 0228     		cmp	r0, #2
 2357 00a2 E0D1     		bne	.L395
 2358 00a4 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2359              	.L403:
 2360 00a6 0220     		movs	r0, #2
 2361 00a8 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2362              	.L442:
 2363 00aa 0129     		cmp	r1, #1
 2364 00ac D2D8     		bhi	.L435
 2365 00ae 002B     		cmp	r3, #0
 2366 00b0 C4D0     		beq	.L407
 2367 00b2 0021     		movs	r1, #0
 2368 00b4 2046     		mov	r0, r4
 2369 00b6 FFF7FEFF 		bl	_ZNK8Platform19AnyAxisMotorStalledEj.part.18
 2370 00ba 0028     		cmp	r0, #0
 2371 00bc CFD1     		bne	.L441
 2372 00be 2B69     		ldr	r3, [r5, #16]
 2373 00c0 D3F89832 		ldr	r3, [r3, #664]
 2374 00c4 012B     		cmp	r3, #1
 2375 00c6 B9D9     		bls	.L407
 2376              	.L437:
 2377 00c8 3946     		mov	r1, r7
 2378 00ca 2046     		mov	r0, r4
 2379 00cc FFF7FEFF 		bl	_ZNK8Platform19AnyAxisMotorStalledEj.part.18
 2380 00d0 0028     		cmp	r0, #0
 2381 00d2 C4D1     		bne	.L441
 2382 00d4 B2E7     		b	.L407
 2383              	.L398:
 2384 00d6 0129     		cmp	r1, #1
 2385 00d8 25D9     		bls	.L443
 2386 00da 0329     		cmp	r1, #3
 2387 00dc BAD1     		bne	.L435
 2388 00de 032B     		cmp	r3, #3
 2389 00e0 ACD9     		bls	.L407
 2390 00e2 2046     		mov	r0, r4
 2391 00e4 FFF7FEFF 		bl	_ZNK8Platform19AnyAxisMotorStalledEj.part.18
 2392 00e8 0028     		cmp	r0, #0
 2393 00ea B8D1     		bne	.L441
 2394 00ec 2B69     		ldr	r3, [r5, #16]
ARM GAS  /tmp/ccghtDyP.s 			page 43


 2395 00ee D3F89832 		ldr	r3, [r3, #664]
 2396 00f2 042B     		cmp	r3, #4
 2397 00f4 A2D9     		bls	.L407
 2398 00f6 2046     		mov	r0, r4
 2399 00f8 0421     		movs	r1, #4
 2400 00fa FFF7FEFF 		bl	_ZNK8Platform19AnyAxisMotorStalledEj.part.18
 2401 00fe 0028     		cmp	r0, #0
 2402 0100 ADD1     		bne	.L441
 2403 0102 9BE7     		b	.L407
 2404              	.L397:
 2405 0104 31F00202 		bics	r2, r1, #2
 2406 0108 A4D1     		bne	.L435
 2407 010a 002B     		cmp	r3, #0
 2408 010c 96D0     		beq	.L407
 2409 010e 1146     		mov	r1, r2
 2410 0110 2046     		mov	r0, r4
 2411 0112 FFF7FEFF 		bl	_ZNK8Platform19AnyAxisMotorStalledEj.part.18
 2412 0116 0028     		cmp	r0, #0
 2413 0118 A1D1     		bne	.L441
 2414 011a 2B69     		ldr	r3, [r5, #16]
 2415 011c D3F89832 		ldr	r3, [r3, #664]
 2416 0120 022B     		cmp	r3, #2
 2417 0122 D1D8     		bhi	.L437
 2418 0124 8AE7     		b	.L407
 2419              	.L443:
 2420 0126 002B     		cmp	r3, #0
 2421 0128 88D0     		beq	.L407
 2422 012a 0021     		movs	r1, #0
 2423 012c 2046     		mov	r0, r4
 2424 012e FFF7FEFF 		bl	_ZNK8Platform19AnyAxisMotorStalledEj.part.18
 2425 0132 0028     		cmp	r0, #0
 2426 0134 93D1     		bne	.L441
 2427 0136 2B69     		ldr	r3, [r5, #16]
 2428 0138 D3F89832 		ldr	r3, [r3, #664]
 2429 013c 012B     		cmp	r3, #1
 2430 013e 7FF67DAF 		bls	.L407
 2431 0142 2046     		mov	r0, r4
 2432 0144 0121     		movs	r1, #1
 2433 0146 FFF7FEFF 		bl	_ZNK8Platform19AnyAxisMotorStalledEj.part.18
 2434 014a 0028     		cmp	r0, #0
 2435 014c 87D1     		bne	.L441
 2436 014e 75E7     		b	.L407
 2437              	.L445:
 2438              		.align	2
 2439              	.L444:
 2440 0150 00000000 		.word	reprap
 2441              		.size	_ZNK8Platform7StoppedEj, .-_ZNK8Platform7StoppedEj
 2442              		.section	.text._ZN8Platform12SetDirectionEjb,"ax",%progbits
 2443              		.align	1
 2444              		.p2align 2,,3
 2445              		.global	_ZN8Platform12SetDirectionEjb
 2446              		.syntax unified
 2447              		.thumb
 2448              		.thumb_func
 2449              		.fpu fpv4-sp-d16
 2450              		.type	_ZN8Platform12SetDirectionEjb, %function
 2451              	_ZN8Platform12SetDirectionEjb:
ARM GAS  /tmp/ccghtDyP.s 			page 44


 2452              		@ args = 0, pretend = 0, frame = 0
 2453              		@ frame_needed = 0, uses_anonymous_args = 0
 2454 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 2455 0004 0646     		mov	r6, r0
 2456 0006 00EB8100 		add	r0, r0, r1, lsl #2
 2457 000a D6F8BC33 		ldr	r3, [r6, #956]
 2458 000e D0F84C73 		ldr	r7, [r0, #844]
 2459 0012 1F40     		ands	r7, r7, r3
 2460 0014 9046     		mov	r8, r2
 2461 0016 09D0     		beq	.L447
 2462 0018 2A4B     		ldr	r3, .L471
 2463 001a D6F8B843 		ldr	r4, [r6, #952]
 2464 001e 1868     		ldr	r0, [r3]
 2465 0020 294A     		ldr	r2, .L471+4
 2466              	.L448:
 2467 0022 D2F89030 		ldr	r3, [r2, #144]
 2468 0026 1B1A     		subs	r3, r3, r0
 2469 0028 A342     		cmp	r3, r4
 2470 002a FAD3     		bcc	.L448
 2471              	.L447:
 2472 002c 274B     		ldr	r3, .L471+8
 2473 002e 1B69     		ldr	r3, [r3, #16]
 2474 0030 D3F89832 		ldr	r3, [r3, #664]
 2475 0034 9942     		cmp	r1, r3
 2476 0036 1BD2     		bcs	.L449
 2477 0038 C900     		lsls	r1, r1, #3
 2478 003a 06EB010A 		add	r10, r6, r1
 2479 003e DAF8F822 		ldr	r2, [r10, #760]
 2480 0042 6AB1     		cbz	r2, .L451
 2481 0044 01F53F71 		add	r1, r1, #764
 2482 0048 DFF88890 		ldr	r9, .L471+16
 2483 004c 7418     		adds	r4, r6, r1
 2484 004e 0025     		movs	r5, #0
 2485              	.L455:
 2486 0050 14F8013B 		ldrb	r3, [r4], #1	@ zero_extendqisi2
 2487 0054 0B2B     		cmp	r3, #11
 2488 0056 05F10105 		add	r5, r5, #1
 2489 005a 23D9     		bls	.L470
 2490              	.L452:
 2491 005c AA42     		cmp	r2, r5
 2492 005e F7D8     		bhi	.L455
 2493              	.L451:
 2494 0060 27B1     		cbz	r7, .L446
 2495 0062 194A     		ldr	r2, .L471+4
 2496 0064 1A4B     		ldr	r3, .L471+12
 2497 0066 D2F89020 		ldr	r2, [r2, #144]
 2498 006a 1A60     		str	r2, [r3]
 2499              	.L446:
 2500 006c BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2501              	.L449:
 2502 0070 0B29     		cmp	r1, #11
 2503 0072 12D8     		bhi	.L456
 2504 0074 C91A     		subs	r1, r1, r3
 2505 0076 3144     		add	r1, r1, r6
 2506 0078 91F84033 		ldrb	r3, [r1, #832]	@ zero_extendqisi2
 2507 007c 0B2B     		cmp	r3, #11
 2508 007e EFD8     		bhi	.L451
ARM GAS  /tmp/ccghtDyP.s 			page 45


 2509              	.L469:
 2510 0080 1E44     		add	r6, r6, r3
 2511 0082 96F8D010 		ldrb	r1, [r6, #208]	@ zero_extendqisi2
 2512 0086 B8F1000F 		cmp	r8, #0
 2513 008a 01D1     		bne	.L458
 2514 008c 81F00101 		eor	r1, r1, #1
 2515              	.L458:
 2516 0090 104A     		ldr	r2, .L471+16
 2517 0092 D05C     		ldrb	r0, [r2, r3]	@ zero_extendqisi2
 2518 0094 FFF7FEFF 		bl	digitalWrite
 2519 0098 E2E7     		b	.L451
 2520              	.L456:
 2521 009a 1729     		cmp	r1, #23
 2522 009c E0D8     		bhi	.L451
 2523 009e 0C39     		subs	r1, r1, #12
 2524 00a0 CBB2     		uxtb	r3, r1
 2525 00a2 EDE7     		b	.L469
 2526              	.L470:
 2527 00a4 F218     		adds	r2, r6, r3
 2528 00a6 92F8D010 		ldrb	r1, [r2, #208]	@ zero_extendqisi2
 2529 00aa B8F1000F 		cmp	r8, #0
 2530 00ae 01D1     		bne	.L453
 2531 00b0 81F00101 		eor	r1, r1, #1
 2532              	.L453:
 2533 00b4 19F80300 		ldrb	r0, [r9, r3]	@ zero_extendqisi2
 2534 00b8 FFF7FEFF 		bl	digitalWrite
 2535 00bc DAF8F822 		ldr	r2, [r10, #760]
 2536 00c0 CCE7     		b	.L452
 2537              	.L472:
 2538 00c2 00BF     		.align	2
 2539              	.L471:
 2540 00c4 00000000 		.word	_ZN3DDA15lastStepLowTimeE
 2541 00c8 00000940 		.word	1074331648
 2542 00cc 00000000 		.word	reprap
 2543 00d0 00000000 		.word	_ZN3DDA17lastDirChangeTimeE
 2544 00d4 00000000 		.word	.LANCHOR5
 2545              		.size	_ZN8Platform12SetDirectionEjb, .-_ZN8Platform12SetDirectionEjb
 2546              		.section	.text._ZN8Platform12EnableDriverEj,"ax",%progbits
 2547              		.align	1
 2548              		.p2align 2,,3
 2549              		.global	_ZN8Platform12EnableDriverEj
 2550              		.syntax unified
 2551              		.thumb
 2552              		.thumb_func
 2553              		.fpu fpv4-sp-d16
 2554              		.type	_ZN8Platform12EnableDriverEj, %function
 2555              	_ZN8Platform12EnableDriverEj:
 2556              		@ args = 0, pretend = 0, frame = 0
 2557              		@ frame_needed = 0, uses_anonymous_args = 0
 2558 0000 0B29     		cmp	r1, #11
 2559 0002 1DD8     		bhi	.L480
 2560 0004 70B5     		push	{r4, r5, r6, lr}
 2561 0006 4618     		adds	r6, r0, r1
 2562 0008 0546     		mov	r5, r0
 2563 000a 96F8C440 		ldrb	r4, [r6, #196]	@ zero_extendqisi2
 2564 000e 022C     		cmp	r4, #2
 2565 0010 15D0     		beq	.L473
ARM GAS  /tmp/ccghtDyP.s 			page 46


 2566 0012 0223     		movs	r3, #2
 2567 0014 86F8C430 		strb	r3, [r6, #196]
 2568 0018 0C46     		mov	r4, r1
 2569 001a FFF7FEFF 		bl	_ZN8Platform18UpdateMotorCurrentEj.part.21
 2570 001e D5F8C433 		ldr	r3, [r5, #964]
 2571 0022 A342     		cmp	r3, r4
 2572 0024 0DD8     		bhi	.L483
 2573 0026 96F9E810 		ldrsb	r1, [r6, #232]
 2574 002a 094B     		ldr	r3, .L484
 2575 002c 0029     		cmp	r1, #0
 2576 002e 185D     		ldrb	r0, [r3, r4]	@ zero_extendqisi2
 2577 0030 D4BF     		ite	le
 2578 0032 0021     		movle	r1, #0
 2579 0034 0121     		movgt	r1, #1
 2580 0036 BDE87040 		pop	{r4, r5, r6, lr}
 2581 003a FFF7FEBF 		b	digitalWrite
 2582              	.L473:
 2583 003e 70BD     		pop	{r4, r5, r6, pc}
 2584              	.L480:
 2585 0040 7047     		bx	lr
 2586              	.L483:
 2587 0042 2046     		mov	r0, r4
 2588 0044 0121     		movs	r1, #1
 2589 0046 BDE87040 		pop	{r4, r5, r6, lr}
 2590 004a FFF7FEBF 		b	_ZN12SmartDrivers11EnableDriveEjb
 2591              	.L485:
 2592 004e 00BF     		.align	2
 2593              	.L484:
 2594 0050 00000000 		.word	.LANCHOR3
 2595              		.size	_ZN8Platform12EnableDriverEj, .-_ZN8Platform12EnableDriverEj
 2596              		.section	.text._ZN8Platform13DisableDriverEj,"ax",%progbits
 2597              		.align	1
 2598              		.p2align 2,,3
 2599              		.global	_ZN8Platform13DisableDriverEj
 2600              		.syntax unified
 2601              		.thumb
 2602              		.thumb_func
 2603              		.fpu fpv4-sp-d16
 2604              		.type	_ZN8Platform13DisableDriverEj, %function
 2605              	_ZN8Platform13DisableDriverEj:
 2606              		@ args = 0, pretend = 0, frame = 0
 2607              		@ frame_needed = 0, uses_anonymous_args = 0
 2608              		@ link register save eliminated.
 2609 0000 0B29     		cmp	r1, #11
 2610 0002 01D8     		bhi	.L486
 2611 0004 FFF7FEBF 		b	_ZN8Platform13DisableDriverEj.part.20
 2612              	.L486:
 2613 0008 7047     		bx	lr
 2614              		.size	_ZN8Platform13DisableDriverEj, .-_ZN8Platform13DisableDriverEj
 2615 000a 00BF     		.section	.text._ZN8Platform11EnableDriveEj,"ax",%progbits
 2616              		.align	1
 2617              		.p2align 2,,3
 2618              		.global	_ZN8Platform11EnableDriveEj
 2619              		.syntax unified
 2620              		.thumb
 2621              		.thumb_func
 2622              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccghtDyP.s 			page 47


 2623              		.type	_ZN8Platform11EnableDriveEj, %function
 2624              	_ZN8Platform11EnableDriveEj:
 2625              		@ args = 0, pretend = 0, frame = 0
 2626              		@ frame_needed = 0, uses_anonymous_args = 0
 2627 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2628 0002 124B     		ldr	r3, .L495
 2629 0004 1B69     		ldr	r3, [r3, #16]
 2630 0006 D3F89832 		ldr	r3, [r3, #664]
 2631 000a 8B42     		cmp	r3, r1
 2632 000c 0646     		mov	r6, r0
 2633 000e 13D9     		bls	.L489
 2634 0010 C900     		lsls	r1, r1, #3
 2635 0012 4718     		adds	r7, r0, r1
 2636 0014 D7F8F832 		ldr	r3, [r7, #760]
 2637 0018 6BB1     		cbz	r3, .L488
 2638 001a 01F53F71 		add	r1, r1, #764
 2639 001e 4418     		adds	r4, r0, r1
 2640 0020 0025     		movs	r5, #0
 2641              	.L493:
 2642 0022 14F8011B 		ldrb	r1, [r4], #1	@ zero_extendqisi2
 2643 0026 3046     		mov	r0, r6
 2644 0028 FFF7FEFF 		bl	_ZN8Platform12EnableDriverEj
 2645 002c D7F8F832 		ldr	r3, [r7, #760]
 2646 0030 0135     		adds	r5, r5, #1
 2647 0032 AB42     		cmp	r3, r5
 2648 0034 F5D8     		bhi	.L493
 2649              	.L488:
 2650 0036 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2651              	.L489:
 2652 0038 0B29     		cmp	r1, #11
 2653 003a FCD8     		bhi	.L488
 2654 003c C91A     		subs	r1, r1, r3
 2655 003e 0144     		add	r1, r1, r0
 2656 0040 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 2657 0044 91F84013 		ldrb	r1, [r1, #832]	@ zero_extendqisi2
 2658 0048 FFF7FEBF 		b	_ZN8Platform12EnableDriverEj
 2659              	.L496:
 2660              		.align	2
 2661              	.L495:
 2662 004c 00000000 		.word	reprap
 2663              		.size	_ZN8Platform11EnableDriveEj, .-_ZN8Platform11EnableDriveEj
 2664              		.section	.text._ZN8Platform12DisableDriveEj,"ax",%progbits
 2665              		.align	1
 2666              		.p2align 2,,3
 2667              		.global	_ZN8Platform12DisableDriveEj
 2668              		.syntax unified
 2669              		.thumb
 2670              		.thumb_func
 2671              		.fpu fpv4-sp-d16
 2672              		.type	_ZN8Platform12DisableDriveEj, %function
 2673              	_ZN8Platform12DisableDriveEj:
 2674              		@ args = 0, pretend = 0, frame = 0
 2675              		@ frame_needed = 0, uses_anonymous_args = 0
 2676 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2677 0002 154B     		ldr	r3, .L506
 2678 0004 1B69     		ldr	r3, [r3, #16]
 2679 0006 D3F89822 		ldr	r2, [r3, #664]
ARM GAS  /tmp/ccghtDyP.s 			page 48


 2680 000a 8A42     		cmp	r2, r1
 2681 000c 0646     		mov	r6, r0
 2682 000e 11D9     		bls	.L498
 2683 0010 C900     		lsls	r1, r1, #3
 2684 0012 4718     		adds	r7, r0, r1
 2685 0014 D7F8F822 		ldr	r2, [r7, #760]
 2686 0018 5AB1     		cbz	r2, .L497
 2687 001a 01F53F71 		add	r1, r1, #764
 2688 001e 4418     		adds	r4, r0, r1
 2689 0020 0025     		movs	r5, #0
 2690              	.L503:
 2691 0022 14F8011B 		ldrb	r1, [r4], #1	@ zero_extendqisi2
 2692 0026 0B29     		cmp	r1, #11
 2693 0028 05F10105 		add	r5, r5, #1
 2694 002c 0ED9     		bls	.L505
 2695              	.L501:
 2696 002e AA42     		cmp	r2, r5
 2697 0030 F7D8     		bhi	.L503
 2698              	.L497:
 2699 0032 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2700              	.L498:
 2701 0034 0B29     		cmp	r1, #11
 2702 0036 FCD8     		bhi	.L497
 2703 0038 891A     		subs	r1, r1, r2
 2704 003a 0144     		add	r1, r1, r0
 2705 003c 91F84013 		ldrb	r1, [r1, #832]	@ zero_extendqisi2
 2706 0040 0B29     		cmp	r1, #11
 2707 0042 F6D8     		bhi	.L497
 2708 0044 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 2709 0048 FFF7FEBF 		b	_ZN8Platform13DisableDriverEj.part.20
 2710              	.L505:
 2711 004c 3046     		mov	r0, r6
 2712 004e FFF7FEFF 		bl	_ZN8Platform13DisableDriverEj.part.20
 2713 0052 D7F8F822 		ldr	r2, [r7, #760]
 2714 0056 EAE7     		b	.L501
 2715              	.L507:
 2716              		.align	2
 2717              	.L506:
 2718 0058 00000000 		.word	reprap
 2719              		.size	_ZN8Platform12DisableDriveEj, .-_ZN8Platform12DisableDriveEj
 2720              		.section	.text._ZN8Platform16DisableAllDrivesEv,"ax",%progbits
 2721              		.align	1
 2722              		.p2align 2,,3
 2723              		.global	_ZN8Platform16DisableAllDrivesEv
 2724              		.syntax unified
 2725              		.thumb
 2726              		.thumb_func
 2727              		.fpu fpv4-sp-d16
 2728              		.type	_ZN8Platform16DisableAllDrivesEv, %function
 2729              	_ZN8Platform16DisableAllDrivesEv:
 2730              		@ args = 0, pretend = 0, frame = 0
 2731              		@ frame_needed = 0, uses_anonymous_args = 0
 2732 0000 38B5     		push	{r3, r4, r5, lr}
 2733 0002 0546     		mov	r5, r0
 2734 0004 0024     		movs	r4, #0
 2735              	.L509:
 2736 0006 2146     		mov	r1, r4
ARM GAS  /tmp/ccghtDyP.s 			page 49


 2737 0008 2846     		mov	r0, r5
 2738 000a FFF7FEFF 		bl	_ZN8Platform18UpdateMotorCurrentEj.part.21
 2739 000e 2146     		mov	r1, r4
 2740 0010 2846     		mov	r0, r5
 2741 0012 0134     		adds	r4, r4, #1
 2742 0014 FFF7FEFF 		bl	_ZN8Platform13DisableDriverEj.part.20
 2743 0018 0C2C     		cmp	r4, #12
 2744 001a F4D1     		bne	.L509
 2745 001c 38BD     		pop	{r3, r4, r5, pc}
 2746              		.size	_ZN8Platform16DisableAllDrivesEv, .-_ZN8Platform16DisableAllDrivesEv
 2747 001e 00BF     		.section	.text._ZN8Platform14SetDriversIdleEv,"ax",%progbits
 2748              		.align	1
 2749              		.p2align 2,,3
 2750              		.global	_ZN8Platform14SetDriversIdleEv
 2751              		.syntax unified
 2752              		.thumb
 2753              		.thumb_func
 2754              		.fpu fpv4-sp-d16
 2755              		.type	_ZN8Platform14SetDriversIdleEv, %function
 2756              	_ZN8Platform14SetDriversIdleEv:
 2757              		@ args = 0, pretend = 0, frame = 0
 2758              		@ frame_needed = 0, uses_anonymous_args = 0
 2759 0000 70B5     		push	{r4, r5, r6, lr}
 2760 0002 0546     		mov	r5, r0
 2761 0004 0024     		movs	r4, #0
 2762 0006 0126     		movs	r6, #1
 2763 0008 02E0     		b	.L514
 2764              	.L513:
 2765 000a 0134     		adds	r4, r4, #1
 2766 000c 0C2C     		cmp	r4, #12
 2767 000e 0DD0     		beq	.L517
 2768              	.L514:
 2769 0010 2B19     		adds	r3, r5, r4
 2770 0012 93F8C420 		ldrb	r2, [r3, #196]	@ zero_extendqisi2
 2771 0016 022A     		cmp	r2, #2
 2772 0018 F7D1     		bne	.L513
 2773 001a 2146     		mov	r1, r4
 2774 001c 83F8C460 		strb	r6, [r3, #196]
 2775 0020 2846     		mov	r0, r5
 2776 0022 0134     		adds	r4, r4, #1
 2777 0024 FFF7FEFF 		bl	_ZN8Platform18UpdateMotorCurrentEj.part.21
 2778 0028 0C2C     		cmp	r4, #12
 2779 002a F1D1     		bne	.L514
 2780              	.L517:
 2781 002c 70BD     		pop	{r4, r5, r6, pc}
 2782              		.size	_ZN8Platform14SetDriversIdleEv, .-_ZN8Platform14SetDriversIdleEv
 2783 002e 00BF     		.section	.text._ZN8Platform16SetDriverCurrentEjfi,"ax",%progbits
 2784              		.align	1
 2785              		.p2align 2,,3
 2786              		.global	_ZN8Platform16SetDriverCurrentEjfi
 2787              		.syntax unified
 2788              		.thumb
 2789              		.thumb_func
 2790              		.fpu fpv4-sp-d16
 2791              		.type	_ZN8Platform16SetDriverCurrentEjfi, %function
 2792              	_ZN8Platform16SetDriverCurrentEjfi:
 2793              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccghtDyP.s 			page 50


 2794              		@ frame_needed = 0, uses_anonymous_args = 0
 2795              		@ link register save eliminated.
 2796 0000 0B29     		cmp	r1, #11
 2797 0002 01D8     		bhi	.L518
 2798 0004 FFF7FEBF 		b	_ZN8Platform16SetDriverCurrentEjfi.part.23
 2799              	.L518:
 2800 0008 7047     		bx	lr
 2801              		.size	_ZN8Platform16SetDriverCurrentEjfi, .-_ZN8Platform16SetDriverCurrentEjfi
 2802 000a 00BF     		.section	.text._ZN8Platform15SetMotorCurrentEjfi,"ax",%progbits
 2803              		.align	1
 2804              		.p2align 2,,3
 2805              		.global	_ZN8Platform15SetMotorCurrentEjfi
 2806              		.syntax unified
 2807              		.thumb
 2808              		.thumb_func
 2809              		.fpu fpv4-sp-d16
 2810              		.type	_ZN8Platform15SetMotorCurrentEjfi, %function
 2811              	_ZN8Platform15SetMotorCurrentEjfi:
 2812              		@ args = 0, pretend = 0, frame = 0
 2813              		@ frame_needed = 0, uses_anonymous_args = 0
 2814 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 2815 0004 194B     		ldr	r3, .L529
 2816 0006 1B69     		ldr	r3, [r3, #16]
 2817 0008 D3F89842 		ldr	r4, [r3, #664]
 2818 000c 8C42     		cmp	r4, r1
 2819 000e 8146     		mov	r9, r0
 2820 0010 16D9     		bls	.L521
 2821 0012 C900     		lsls	r1, r1, #3
 2822 0014 00EB0108 		add	r8, r0, r1
 2823 0018 1746     		mov	r7, r2
 2824 001a D8F8F822 		ldr	r2, [r8, #760]
 2825 001e 6AB1     		cbz	r2, .L520
 2826 0020 01F53F71 		add	r1, r1, #764
 2827 0024 10EE106A 		vmov	r6, s0
 2828 0028 4418     		adds	r4, r0, r1
 2829 002a 0025     		movs	r5, #0
 2830              	.L526:
 2831 002c 14F8011B 		ldrb	r1, [r4], #1	@ zero_extendqisi2
 2832 0030 0B29     		cmp	r1, #11
 2833 0032 05F10105 		add	r5, r5, #1
 2834 0036 0FD9     		bls	.L528
 2835              	.L524:
 2836 0038 AA42     		cmp	r2, r5
 2837 003a F7D8     		bhi	.L526
 2838              	.L520:
 2839 003c BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 2840              	.L521:
 2841 0040 0B29     		cmp	r1, #11
 2842 0042 FBD8     		bhi	.L520
 2843 0044 091B     		subs	r1, r1, r4
 2844 0046 0144     		add	r1, r1, r0
 2845 0048 91F84013 		ldrb	r1, [r1, #832]	@ zero_extendqisi2
 2846 004c 0B29     		cmp	r1, #11
 2847 004e F5D8     		bhi	.L520
 2848 0050 BDE8F843 		pop	{r3, r4, r5, r6, r7, r8, r9, lr}
 2849 0054 FFF7FEBF 		b	_ZN8Platform16SetDriverCurrentEjfi.part.23
 2850              	.L528:
ARM GAS  /tmp/ccghtDyP.s 			page 51


 2851 0058 3A46     		mov	r2, r7
 2852 005a 00EE106A 		vmov	s0, r6
 2853 005e 4846     		mov	r0, r9
 2854 0060 FFF7FEFF 		bl	_ZN8Platform16SetDriverCurrentEjfi.part.23
 2855 0064 D8F8F822 		ldr	r2, [r8, #760]
 2856 0068 E6E7     		b	.L524
 2857              	.L530:
 2858 006a 00BF     		.align	2
 2859              	.L529:
 2860 006c 00000000 		.word	reprap
 2861              		.size	_ZN8Platform15SetMotorCurrentEjfi, .-_ZN8Platform15SetMotorCurrentEjfi
 2862              		.section	.text._ZN8Platform18UpdateMotorCurrentEj,"ax",%progbits
 2863              		.align	1
 2864              		.p2align 2,,3
 2865              		.global	_ZN8Platform18UpdateMotorCurrentEj
 2866              		.syntax unified
 2867              		.thumb
 2868              		.thumb_func
 2869              		.fpu fpv4-sp-d16
 2870              		.type	_ZN8Platform18UpdateMotorCurrentEj, %function
 2871              	_ZN8Platform18UpdateMotorCurrentEj:
 2872              		@ args = 0, pretend = 0, frame = 0
 2873              		@ frame_needed = 0, uses_anonymous_args = 0
 2874              		@ link register save eliminated.
 2875 0000 0B29     		cmp	r1, #11
 2876 0002 01D8     		bhi	.L531
 2877 0004 FFF7FEBF 		b	_ZN8Platform18UpdateMotorCurrentEj.part.21
 2878              	.L531:
 2879 0008 7047     		bx	lr
 2880              		.size	_ZN8Platform18UpdateMotorCurrentEj, .-_ZN8Platform18UpdateMotorCurrentEj
 2881 000a 00BF     		.section	.text._ZNK8Platform15GetMotorCurrentEji,"ax",%progbits
 2882              		.align	1
 2883              		.p2align 2,,3
 2884              		.global	_ZNK8Platform15GetMotorCurrentEji
 2885              		.syntax unified
 2886              		.thumb
 2887              		.thumb_func
 2888              		.fpu fpv4-sp-d16
 2889              		.type	_ZNK8Platform15GetMotorCurrentEji, %function
 2890              	_ZNK8Platform15GetMotorCurrentEji:
 2891              		@ args = 0, pretend = 0, frame = 0
 2892              		@ frame_needed = 0, uses_anonymous_args = 0
 2893              		@ link register save eliminated.
 2894 0000 0B29     		cmp	r1, #11
 2895 0002 17D8     		bhi	.L544
 2896 0004 1B4B     		ldr	r3, .L548
 2897 0006 1B69     		ldr	r3, [r3, #16]
 2898 0008 D3F89832 		ldr	r3, [r3, #664]
 2899 000c 9942     		cmp	r1, r3
 2900 000e 14D3     		bcc	.L545
 2901 0010 C91A     		subs	r1, r1, r3
 2902 0012 0144     		add	r1, r1, r0
 2903 0014 91F84033 		ldrb	r3, [r1, #832]	@ zero_extendqisi2
 2904              	.L536:
 2905 0018 0B2B     		cmp	r3, #11
 2906 001a 0BD8     		bhi	.L544
 2907 001c 40F29131 		movw	r1, #913
ARM GAS  /tmp/ccghtDyP.s 			page 52


 2908 0020 8A42     		cmp	r2, r1
 2909 0022 1BD0     		beq	.L537
 2910 0024 40F29531 		movw	r1, #917
 2911 0028 8A42     		cmp	r2, r1
 2912 002a 0BD0     		beq	.L538
 2913 002c 40F28A31 		movw	r1, #906
 2914 0030 8A42     		cmp	r2, r1
 2915 0032 0ED0     		beq	.L546
 2916              	.L544:
 2917 0034 9FED100A 		vldr.32	s0, .L548+4
 2918 0038 7047     		bx	lr
 2919              	.L545:
 2920 003a 00EBC101 		add	r1, r0, r1, lsl #3
 2921 003e 91F8FC32 		ldrb	r3, [r1, #764]	@ zero_extendqisi2
 2922 0042 E9E7     		b	.L536
 2923              	.L538:
 2924 0044 D0F8C423 		ldr	r2, [r0, #964]
 2925 0048 9342     		cmp	r3, r2
 2926 004a 10D3     		bcc	.L547
 2927 004c 9FED0B0A 		vldr.32	s0, .L548+8
 2928 0050 7047     		bx	lr
 2929              	.L546:
 2930 0052 00EB8300 		add	r0, r0, r3, lsl #2
 2931 0056 90EDA60A 		vldr.32	s0, [r0, #664]
 2932 005a 7047     		bx	lr
 2933              	.L537:
 2934 005c 00EB8300 		add	r0, r0, r3, lsl #2
 2935 0060 90EDB20A 		vldr.32	s0, [r0, #712]
 2936 0064 DFED057A 		vldr.32	s15, .L548+8
 2937 0068 20EE270A 		vmul.f32	s0, s0, s15
 2938 006c 7047     		bx	lr
 2939              	.L547:
 2940 006e 1846     		mov	r0, r3
 2941 0070 FFF7FEBF 		b	_ZN12SmartDrivers27GetStandstillCurrentPercentEj
 2942              	.L549:
 2943              		.align	2
 2944              	.L548:
 2945 0074 00000000 		.word	reprap
 2946 0078 00000000 		.word	0
 2947 007c 0000C842 		.word	1120403456
 2948              		.size	_ZNK8Platform15GetMotorCurrentEji, .-_ZNK8Platform15GetMotorCurrentEji
 2949              		.section	.text._ZN8Platform20SetIdleCurrentFactorEf,"ax",%progbits
 2950              		.align	1
 2951              		.p2align 2,,3
 2952              		.global	_ZN8Platform20SetIdleCurrentFactorEf
 2953              		.syntax unified
 2954              		.thumb
 2955              		.thumb_func
 2956              		.fpu fpv4-sp-d16
 2957              		.type	_ZN8Platform20SetIdleCurrentFactorEf, %function
 2958              	_ZN8Platform20SetIdleCurrentFactorEf:
 2959              		@ args = 0, pretend = 0, frame = 0
 2960              		@ frame_needed = 0, uses_anonymous_args = 0
 2961 0000 38B5     		push	{r3, r4, r5, lr}
 2962 0002 0546     		mov	r5, r0
 2963 0004 80EDF00A 		vstr.32	s0, [r0, #960]
 2964 0008 0024     		movs	r4, #0
ARM GAS  /tmp/ccghtDyP.s 			page 53


 2965 000a 02E0     		b	.L552
 2966              	.L551:
 2967 000c 0134     		adds	r4, r4, #1
 2968 000e 0C2C     		cmp	r4, #12
 2969 0010 0BD0     		beq	.L555
 2970              	.L552:
 2971 0012 2B19     		adds	r3, r5, r4
 2972 0014 93F8C430 		ldrb	r3, [r3, #196]	@ zero_extendqisi2
 2973 0018 012B     		cmp	r3, #1
 2974 001a F7D1     		bne	.L551
 2975 001c 2146     		mov	r1, r4
 2976 001e 2846     		mov	r0, r5
 2977 0020 0134     		adds	r4, r4, #1
 2978 0022 FFF7FEFF 		bl	_ZN8Platform18UpdateMotorCurrentEj.part.21
 2979 0026 0C2C     		cmp	r4, #12
 2980 0028 F3D1     		bne	.L552
 2981              	.L555:
 2982 002a 38BD     		pop	{r3, r4, r5, pc}
 2983              		.size	_ZN8Platform20SetIdleCurrentFactorEf, .-_ZN8Platform20SetIdleCurrentFactorEf
 2984              		.section	.text._ZN8Platform22SetDriverMicrosteppingEjji,"ax",%progbits
 2985              		.align	1
 2986              		.p2align 2,,3
 2987              		.global	_ZN8Platform22SetDriverMicrosteppingEjji
 2988              		.syntax unified
 2989              		.thumb
 2990              		.thumb_func
 2991              		.fpu fpv4-sp-d16
 2992              		.type	_ZN8Platform22SetDriverMicrosteppingEjji, %function
 2993              	_ZN8Platform22SetDriverMicrosteppingEjji:
 2994              		@ args = 0, pretend = 0, frame = 0
 2995              		@ frame_needed = 0, uses_anonymous_args = 0
 2996              		@ link register save eliminated.
 2997 0000 0B29     		cmp	r1, #11
 2998 0002 10B4     		push	{r4}
 2999 0004 0C46     		mov	r4, r1
 3000 0006 0CD8     		bhi	.L559
 3001 0008 1146     		mov	r1, r2
 3002 000a D0F8C423 		ldr	r2, [r0, #964]
 3003 000e A242     		cmp	r2, r4
 3004 0010 0BD8     		bhi	.L561
 3005 0012 A1F11000 		sub	r0, r1, #16
 3006 0016 B0FA80F0 		clz	r0, r0
 3007 001a 4009     		lsrs	r0, r0, #5
 3008 001c 5DF8044B 		ldr	r4, [sp], #4
 3009 0020 7047     		bx	lr
 3010              	.L559:
 3011 0022 0020     		movs	r0, #0
 3012 0024 5DF8044B 		ldr	r4, [sp], #4
 3013 0028 7047     		bx	lr
 3014              	.L561:
 3015 002a 1A1C     		adds	r2, r3, #0
 3016 002c 2046     		mov	r0, r4
 3017 002e 18BF     		it	ne
 3018 0030 0122     		movne	r2, #1
 3019 0032 5DF8044B 		ldr	r4, [sp], #4
 3020 0036 FFF7FEBF 		b	_ZN12SmartDrivers16SetMicrosteppingEjjb
 3021              		.size	_ZN8Platform22SetDriverMicrosteppingEjji, .-_ZN8Platform22SetDriverMicrosteppingEjji
ARM GAS  /tmp/ccghtDyP.s 			page 54


 3022 003a 00BF     		.section	.text._ZN8Platform16SetMicrosteppingEjib,"ax",%progbits
 3023              		.align	1
 3024              		.p2align 2,,3
 3025              		.global	_ZN8Platform16SetMicrosteppingEjib
 3026              		.syntax unified
 3027              		.thumb
 3028              		.thumb_func
 3029              		.fpu fpv4-sp-d16
 3030              		.type	_ZN8Platform16SetMicrosteppingEjib, %function
 3031              	_ZN8Platform16SetMicrosteppingEjib:
 3032              		@ args = 0, pretend = 0, frame = 0
 3033              		@ frame_needed = 0, uses_anonymous_args = 0
 3034 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 3035 0004 2D4C     		ldr	r4, .L581
 3036 0006 2469     		ldr	r4, [r4, #16]
 3037 0008 D4F89842 		ldr	r4, [r4, #664]
 3038 000c 8C42     		cmp	r4, r1
 3039 000e 9146     		mov	r9, r2
 3040 0010 26D9     		bls	.L563
 3041 0012 CC00     		lsls	r4, r1, #3
 3042 0014 00EB0408 		add	r8, r0, r4
 3043 0018 D8F8F812 		ldr	r1, [r8, #760]
 3044 001c 0029     		cmp	r1, #0
 3045 001e 40D0     		beq	.L572
 3046 0020 274E     		ldr	r6, .L581+4
 3047 0022 04F53F74 		add	r4, r4, #764
 3048 0026 1F46     		mov	r7, r3
 3049 0028 0546     		mov	r5, r0
 3050 002a 0444     		add	r4, r4, r0
 3051 002c A6EB0806 		sub	r6, r6, r8
 3052 0030 4FF0010A 		mov	r10, #1
 3053              	.L570:
 3054 0034 14F8010B 		ldrb	r0, [r4], #1	@ zero_extendqisi2
 3055 0038 0B28     		cmp	r0, #11
 3056 003a 09D8     		bhi	.L569
 3057 003c D5F8C433 		ldr	r3, [r5, #964]
 3058 0040 9842     		cmp	r0, r3
 3059 0042 27D3     		bcc	.L579
 3060 0044 A9F11000 		sub	r0, r9, #16
 3061 0048 B0FA80F0 		clz	r0, r0
 3062 004c 4009     		lsrs	r0, r0, #5
 3063              	.L568:
 3064 004e 08B9     		cbnz	r0, .L566
 3065              	.L569:
 3066 0050 4FF0000A 		mov	r10, #0
 3067              	.L566:
 3068 0054 3319     		adds	r3, r6, r4
 3069 0056 9942     		cmp	r1, r3
 3070 0058 ECD8     		bhi	.L570
 3071 005a 5046     		mov	r0, r10
 3072 005c BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 3073              	.L563:
 3074 0060 0B29     		cmp	r1, #11
 3075 0062 12D8     		bhi	.L574
 3076 0064 0C1B     		subs	r4, r1, r4
 3077 0066 0444     		add	r4, r4, r0
 3078 0068 94F84043 		ldrb	r4, [r4, #832]	@ zero_extendqisi2
ARM GAS  /tmp/ccghtDyP.s 			page 55


 3079 006c 0B2C     		cmp	r4, #11
 3080 006e 0CD8     		bhi	.L574
 3081 0070 D0F8C423 		ldr	r2, [r0, #964]
 3082 0074 9442     		cmp	r4, r2
 3083 0076 19D3     		bcc	.L580
 3084 0078 A9F1100A 		sub	r10, r9, #16
 3085 007c BAFA8AFA 		clz	r10, r10
 3086 0080 4FEA5A1A 		lsr	r10, r10, #5
 3087 0084 5046     		mov	r0, r10
 3088 0086 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 3089              	.L574:
 3090 008a 4FF0000A 		mov	r10, #0
 3091 008e 5046     		mov	r0, r10
 3092 0090 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 3093              	.L579:
 3094 0094 4946     		mov	r1, r9
 3095 0096 3A46     		mov	r2, r7
 3096 0098 FFF7FEFF 		bl	_ZN12SmartDrivers16SetMicrosteppingEjjb
 3097 009c D8F8F812 		ldr	r1, [r8, #760]
 3098 00a0 D5E7     		b	.L568
 3099              	.L572:
 3100 00a2 4FF0010A 		mov	r10, #1
 3101 00a6 5046     		mov	r0, r10
 3102 00a8 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 3103              	.L580:
 3104 00ac 4946     		mov	r1, r9
 3105 00ae 2046     		mov	r0, r4
 3106 00b0 1A46     		mov	r2, r3
 3107 00b2 BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 3108 00b6 FFF7FEBF 		b	_ZN12SmartDrivers16SetMicrosteppingEjjb
 3109              	.L582:
 3110 00ba 00BF     		.align	2
 3111              	.L581:
 3112 00bc 00000000 		.word	reprap
 3113 00c0 04FDFFFF 		.word	-764
 3114              		.size	_ZN8Platform16SetMicrosteppingEjib, .-_ZN8Platform16SetMicrosteppingEjib
 3115              		.section	.text._ZNK8Platform22GetDriverMicrosteppingEjRb,"ax",%progbits
 3116              		.align	1
 3117              		.p2align 2,,3
 3118              		.global	_ZNK8Platform22GetDriverMicrosteppingEjRb
 3119              		.syntax unified
 3120              		.thumb
 3121              		.thumb_func
 3122              		.fpu fpv4-sp-d16
 3123              		.type	_ZNK8Platform22GetDriverMicrosteppingEjRb, %function
 3124              	_ZNK8Platform22GetDriverMicrosteppingEjRb:
 3125              		@ args = 0, pretend = 0, frame = 0
 3126              		@ frame_needed = 0, uses_anonymous_args = 0
 3127              		@ link register save eliminated.
 3128 0000 D0F8C433 		ldr	r3, [r0, #964]
 3129 0004 8B42     		cmp	r3, r1
 3130 0006 0846     		mov	r0, r1
 3131 0008 02D9     		bls	.L584
 3132 000a 1146     		mov	r1, r2
 3133 000c FFF7FEBF 		b	_ZN12SmartDrivers16GetMicrosteppingEjRb
 3134              	.L584:
 3135 0010 0023     		movs	r3, #0
ARM GAS  /tmp/ccghtDyP.s 			page 56


 3136 0012 1370     		strb	r3, [r2]
 3137 0014 1020     		movs	r0, #16
 3138 0016 7047     		bx	lr
 3139              		.size	_ZNK8Platform22GetDriverMicrosteppingEjRb, .-_ZNK8Platform22GetDriverMicrosteppingEjRb
 3140              		.section	.text._ZNK8Platform16GetMicrosteppingEjRb,"ax",%progbits
 3141              		.align	1
 3142              		.p2align 2,,3
 3143              		.global	_ZNK8Platform16GetMicrosteppingEjRb
 3144              		.syntax unified
 3145              		.thumb
 3146              		.thumb_func
 3147              		.fpu fpv4-sp-d16
 3148              		.type	_ZNK8Platform16GetMicrosteppingEjRb, %function
 3149              	_ZNK8Platform16GetMicrosteppingEjRb:
 3150              		@ args = 0, pretend = 0, frame = 0
 3151              		@ frame_needed = 0, uses_anonymous_args = 0
 3152              		@ link register save eliminated.
 3153 0000 0F4B     		ldr	r3, .L591
 3154 0002 1B69     		ldr	r3, [r3, #16]
 3155 0004 D3F89832 		ldr	r3, [r3, #664]
 3156 0008 8B42     		cmp	r3, r1
 3157 000a 0AD9     		bls	.L586
 3158 000c 00EBC103 		add	r3, r0, r1, lsl #3
 3159 0010 D0F8C413 		ldr	r1, [r0, #964]
 3160 0014 93F8FC02 		ldrb	r0, [r3, #764]	@ zero_extendqisi2
 3161 0018 8842     		cmp	r0, r1
 3162 001a 0CD2     		bcs	.L587
 3163              	.L590:
 3164 001c 1146     		mov	r1, r2
 3165 001e FFF7FEBF 		b	_ZN12SmartDrivers16GetMicrosteppingEjRb
 3166              	.L586:
 3167 0022 0B29     		cmp	r1, #11
 3168 0024 07D8     		bhi	.L587
 3169 0026 CB1A     		subs	r3, r1, r3
 3170 0028 0344     		add	r3, r3, r0
 3171 002a D0F8C413 		ldr	r1, [r0, #964]
 3172 002e 93F84003 		ldrb	r0, [r3, #832]	@ zero_extendqisi2
 3173 0032 8842     		cmp	r0, r1
 3174 0034 F2D3     		bcc	.L590
 3175              	.L587:
 3176 0036 0023     		movs	r3, #0
 3177 0038 1370     		strb	r3, [r2]
 3178 003a 1020     		movs	r0, #16
 3179 003c 7047     		bx	lr
 3180              	.L592:
 3181 003e 00BF     		.align	2
 3182              	.L591:
 3183 0040 00000000 		.word	reprap
 3184              		.size	_ZNK8Platform16GetMicrosteppingEjRb, .-_ZNK8Platform16GetMicrosteppingEjRb
 3185              		.section	.text._ZN8Platform14SetEnableValueEja,"ax",%progbits
 3186              		.align	1
 3187              		.p2align 2,,3
 3188              		.global	_ZN8Platform14SetEnableValueEja
 3189              		.syntax unified
 3190              		.thumb
 3191              		.thumb_func
 3192              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccghtDyP.s 			page 57


 3193              		.type	_ZN8Platform14SetEnableValueEja, %function
 3194              	_ZN8Platform14SetEnableValueEja:
 3195              		@ args = 0, pretend = 0, frame = 0
 3196              		@ frame_needed = 0, uses_anonymous_args = 0
 3197 0000 4318     		adds	r3, r0, r1
 3198 0002 0B29     		cmp	r1, #11
 3199 0004 70B5     		push	{r4, r5, r6, lr}
 3200 0006 0446     		mov	r4, r0
 3201 0008 0D46     		mov	r5, r1
 3202 000a 1646     		mov	r6, r2
 3203 000c 83F8E820 		strb	r2, [r3, #232]
 3204 0010 17D9     		bls	.L597
 3205              	.L594:
 3206 0012 0136     		adds	r6, r6, #1
 3207 0014 00D0     		beq	.L598
 3208 0016 70BD     		pop	{r4, r5, r6, pc}
 3209              	.L598:
 3210 0018 04F57370 		add	r0, r4, #972
 3211 001c 0DC8     		ldm	r0, {r0, r2, r3}
 3212 001e 0121     		movs	r1, #1
 3213 0020 A940     		lsls	r1, r1, r5
 3214 0022 D4F8C853 		ldr	r5, [r4, #968]
 3215 0026 C943     		mvns	r1, r1
 3216 0028 0D40     		ands	r5, r5, r1
 3217 002a 0840     		ands	r0, r0, r1
 3218 002c 0A40     		ands	r2, r2, r1
 3219 002e 1940     		ands	r1, r1, r3
 3220 0030 C4F8C853 		str	r5, [r4, #968]
 3221 0034 C4F8CC03 		str	r0, [r4, #972]
 3222 0038 C4F8D023 		str	r2, [r4, #976]
 3223 003c C4F8D413 		str	r1, [r4, #980]
 3224 0040 70BD     		pop	{r4, r5, r6, pc}
 3225              	.L597:
 3226 0042 FFF7FEFF 		bl	_ZN8Platform13DisableDriverEj.part.20
 3227 0046 E4E7     		b	.L594
 3228              		.size	_ZN8Platform14SetEnableValueEja, .-_ZN8Platform14SetEnableValueEja
 3229              		.section	.text._ZN8Platform14SetExternalI2CEjh,"ax",%progbits
 3230              		.align	1
 3231              		.p2align 2,,3
 3232              		.global	_ZN8Platform14SetExternalI2CEjh
 3233              		.syntax unified
 3234              		.thumb
 3235              		.thumb_func
 3236              		.fpu fpv4-sp-d16
 3237              		.type	_ZN8Platform14SetExternalI2CEjh, %function
 3238              	_ZN8Platform14SetExternalI2CEjh:
 3239              		@ args = 0, pretend = 0, frame = 0
 3240              		@ frame_needed = 0, uses_anonymous_args = 0
 3241              		@ link register save eliminated.
 3242 0000 0144     		add	r1, r1, r0
 3243 0002 81F8F420 		strb	r2, [r1, #244]
 3244 0006 7047     		bx	lr
 3245              		.size	_ZN8Platform14SetExternalI2CEjh, .-_ZN8Platform14SetExternalI2CEjh
 3246              		.section	.text._ZN8Platform20SetAxisDriversConfigEjRK17AxisDriversConfig,"ax",%progbits
 3247              		.align	1
 3248              		.p2align 2,,3
 3249              		.global	_ZN8Platform20SetAxisDriversConfigEjRK17AxisDriversConfig
ARM GAS  /tmp/ccghtDyP.s 			page 58


 3250              		.syntax unified
 3251              		.thumb
 3252              		.thumb_func
 3253              		.fpu fpv4-sp-d16
 3254              		.type	_ZN8Platform20SetAxisDriversConfigEjRK17AxisDriversConfig, %function
 3255              	_ZN8Platform20SetAxisDriversConfigEjRK17AxisDriversConfig:
 3256              		@ args = 0, pretend = 0, frame = 0
 3257              		@ frame_needed = 0, uses_anonymous_args = 0
 3258 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3259 0004 0D46     		mov	r5, r1
 3260 0006 0746     		mov	r7, r0
 3261 0008 D2E90001 		ldrd	r0, r1, [r2]
 3262 000c 05F15F03 		add	r3, r5, #95
 3263 0010 07EBC303 		add	r3, r7, r3, lsl #3
 3264 0014 83E80300 		stm	r3, {r0, r1}
 3265 0018 1468     		ldr	r4, [r2]
 3266 001a 04B3     		cbz	r4, .L601
 3267 001c 6FF00306 		mvn	r6, #3
 3268 0020 DFF84890 		ldr	r9, .L607
 3269 0024 DFF84880 		ldr	r8, .L607+4
 3270 0028 9346     		mov	fp, r2
 3271 002a B61A     		subs	r6, r6, r2
 3272 002c 02F1040A 		add	r10, r2, #4
 3273 0030 0024     		movs	r4, #0
 3274              	.L603:
 3275 0032 1AF8013B 		ldrb	r3, [r10], #1	@ zero_extendqisi2
 3276 0036 0B2B     		cmp	r3, #11
 3277 0038 2946     		mov	r1, r5
 3278 003a 1846     		mov	r0, r3
 3279 003c 07D8     		bhi	.L602
 3280 003e 18F80330 		ldrb	r3, [r8, r3]	@ zero_extendqisi2
 3281 0042 C3EBC303 		rsb	r3, r3, r3, lsl #3
 3282 0046 09EB8303 		add	r3, r9, r3, lsl #2
 3283 004a 5B68     		ldr	r3, [r3, #4]
 3284 004c 1C43     		orrs	r4, r4, r3
 3285              	.L602:
 3286 004e FFF7FEFF 		bl	_ZN12SmartDrivers13SetAxisNumberEjm
 3287 0052 DBF80020 		ldr	r2, [fp]
 3288 0056 06EB0A03 		add	r3, r6, r10
 3289 005a 9A42     		cmp	r2, r3
 3290 005c E9D8     		bhi	.L603
 3291              	.L601:
 3292 005e 07EB8505 		add	r5, r7, r5, lsl #2
 3293 0062 C5F84C43 		str	r4, [r5, #844]
 3294 0066 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3295              	.L608:
 3296 006a 00BF     		.align	2
 3297              	.L607:
 3298 006c 00000000 		.word	g_APinDescription
 3299 0070 00000000 		.word	.LANCHOR4
 3300              		.size	_ZN8Platform20SetAxisDriversConfigEjRK17AxisDriversConfig, .-_ZN8Platform20SetAxisDriversCon
 3301              		.section	.text._ZN8Platform17SetExtruderDriverEjh,"ax",%progbits
 3302              		.align	1
 3303              		.p2align 2,,3
 3304              		.global	_ZN8Platform17SetExtruderDriverEjh
 3305              		.syntax unified
 3306              		.thumb
ARM GAS  /tmp/ccghtDyP.s 			page 59


 3307              		.thumb_func
 3308              		.fpu fpv4-sp-d16
 3309              		.type	_ZN8Platform17SetExtruderDriverEjh, %function
 3310              	_ZN8Platform17SetExtruderDriverEjh:
 3311              		@ args = 0, pretend = 0, frame = 0
 3312              		@ frame_needed = 0, uses_anonymous_args = 0
 3313 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 3314 0002 134F     		ldr	r7, .L613
 3315 0004 0C46     		mov	r4, r1
 3316 0006 4118     		adds	r1, r0, r1
 3317 0008 3B69     		ldr	r3, [r7, #16]
 3318 000a 81F84023 		strb	r2, [r1, #832]
 3319 000e D3F89812 		ldr	r1, [r3, #664]
 3320 0012 0546     		mov	r5, r0
 3321 0014 2144     		add	r1, r1, r4
 3322 0016 1046     		mov	r0, r2
 3323 0018 1646     		mov	r6, r2
 3324 001a FFF7FEFF 		bl	_ZN12SmartDrivers13SetAxisNumberEjm
 3325 001e 3B69     		ldr	r3, [r7, #16]
 3326 0020 D3F89832 		ldr	r3, [r3, #664]
 3327 0024 0B2E     		cmp	r6, #11
 3328 0026 1C44     		add	r4, r4, r3
 3329 0028 0CD8     		bhi	.L611
 3330 002a 0A4B     		ldr	r3, .L613+4
 3331 002c 0A4A     		ldr	r2, .L613+8
 3332 002e 9B5D     		ldrb	r3, [r3, r6]	@ zero_extendqisi2
 3333 0030 C3EBC303 		rsb	r3, r3, r3, lsl #3
 3334 0034 02EB8303 		add	r3, r2, r3, lsl #2
 3335 0038 05EB8404 		add	r4, r5, r4, lsl #2
 3336 003c 5B68     		ldr	r3, [r3, #4]
 3337 003e C4F84C33 		str	r3, [r4, #844]
 3338 0042 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 3339              	.L611:
 3340 0044 05EB8404 		add	r4, r5, r4, lsl #2
 3341 0048 0023     		movs	r3, #0
 3342 004a C4F84C33 		str	r3, [r4, #844]
 3343 004e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 3344              	.L614:
 3345              		.align	2
 3346              	.L613:
 3347 0050 00000000 		.word	reprap
 3348 0054 00000000 		.word	.LANCHOR4
 3349 0058 00000000 		.word	g_APinDescription
 3350              		.size	_ZN8Platform17SetExtruderDriverEjh, .-_ZN8Platform17SetExtruderDriverEjh
 3351              		.section	.text._ZN8Platform19SetDriverStepTimingEjPKf,"ax",%progbits
 3352              		.align	1
 3353              		.p2align 2,,3
 3354              		.global	_ZN8Platform19SetDriverStepTimingEjPKf
 3355              		.syntax unified
 3356              		.thumb
 3357              		.thumb_func
 3358              		.fpu fpv4-sp-d16
 3359              		.type	_ZN8Platform19SetDriverStepTimingEjPKf, %function
 3360              	_ZN8Platform19SetDriverStepTimingEjPKf:
 3361              		@ args = 0, pretend = 0, frame = 0
 3362              		@ frame_needed = 0, uses_anonymous_args = 0
 3363              		@ link register save eliminated.
ARM GAS  /tmp/ccghtDyP.s 			page 60


 3364 0000 0B29     		cmp	r1, #11
 3365 0002 F0B4     		push	{r4, r5, r6, r7}
 3366 0004 50D8     		bhi	.L625
 3367 0006 2A4B     		ldr	r3, .L630
 3368 0008 2A4C     		ldr	r4, .L630+4
 3369 000a 5B5C     		ldrb	r3, [r3, r1]	@ zero_extendqisi2
 3370 000c C3EBC303 		rsb	r3, r3, r3, lsl #3
 3371 0010 04EB8303 		add	r3, r4, r3, lsl #2
 3372 0014 5C68     		ldr	r4, [r3, #4]
 3373 0016 E443     		mvns	r4, r4
 3374              	.L616:
 3375 0018 D0F8BC33 		ldr	r3, [r0, #956]
 3376 001c 1C40     		ands	r4, r4, r3
 3377 001e C0F8BC43 		str	r4, [r0, #956]
 3378 0022 00F56B73 		add	r3, r0, #940
 3379 0026 BCB3     		cbz	r4, .L617
 3380 0028 00F56F76 		add	r6, r0, #956
 3381              	.L619:
 3382 002c 9FED227A 		vldr.32	s14, .L630+8
 3383 0030 DFED225A 		vldr.32	s11, .L630+12
 3384 0034 9FED226A 		vldr.32	s12, .L630+16
 3385 0038 DFED226A 		vldr.32	s13, .L630+20
 3386 003c DFF874C0 		ldr	ip, .L630+4
 3387 0040 1B4F     		ldr	r7, .L630
 3388              	.L618:
 3389 0042 F2EC017A 		vldmia.32	r2!, {s15}
 3390 0046 F4EEC77A 		vcmpe.f32	s15, s14
 3391 004a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3392 004e 1CDD     		ble	.L622
 3393 0050 0B29     		cmp	r1, #11
 3394 0052 1FD8     		bhi	.L626
 3395 0054 7C5C     		ldrb	r4, [r7, r1]	@ zero_extendqisi2
 3396 0056 C4EBC404 		rsb	r4, r4, r4, lsl #3
 3397 005a 0CEB8404 		add	r4, ip, r4, lsl #2
 3398 005e 6568     		ldr	r5, [r4, #4]
 3399              	.L623:
 3400 0060 D0F8BC43 		ldr	r4, [r0, #956]
 3401 0064 2C43     		orrs	r4, r4, r5
 3402 0066 C0F8BC43 		str	r4, [r0, #956]
 3403 006a 52ED017A 		vldr.32	s15, [r2, #-4]
 3404 006e 1D68     		ldr	r5, [r3]
 3405 0070 67EEA57A 		vmul.f32	s15, s15, s11
 3406 0074 B0EE665A 		vmov.f32	s10, s13
 3407 0078 A7EE865A 		vfma.f32	s10, s15, s12
 3408 007c FCEEC57A 		vcvt.u32.f32	s15, s10
 3409 0080 17EE904A 		vmov	r4, s15	@ int
 3410 0084 A542     		cmp	r5, r4
 3411 0086 38BF     		it	cc
 3412 0088 1C60     		strcc	r4, [r3]
 3413              	.L622:
 3414 008a 0433     		adds	r3, r3, #4
 3415 008c 9E42     		cmp	r6, r3
 3416 008e D8D1     		bne	.L618
 3417 0090 F0BC     		pop	{r4, r5, r6, r7}
 3418 0092 7047     		bx	lr
 3419              	.L626:
 3420 0094 0025     		movs	r5, #0
ARM GAS  /tmp/ccghtDyP.s 			page 61


 3421 0096 E3E7     		b	.L623
 3422              	.L617:
 3423 0098 1D46     		mov	r5, r3
 3424 009a 00F56F76 		add	r6, r0, #956
 3425              	.L620:
 3426 009e 45F8044B 		str	r4, [r5], #4
 3427 00a2 AE42     		cmp	r6, r5
 3428 00a4 FBD1     		bne	.L620
 3429 00a6 C1E7     		b	.L619
 3430              	.L625:
 3431 00a8 4FF0FF34 		mov	r4, #-1
 3432 00ac B4E7     		b	.L616
 3433              	.L631:
 3434 00ae 00BF     		.align	2
 3435              	.L630:
 3436 00b0 00000000 		.word	.LANCHOR4
 3437 00b4 00000000 		.word	g_APinDescription
 3438 00b8 CDCC4C3E 		.word	1045220557
 3439 00bc C0E16449 		.word	1231348160
 3440 00c0 BD378635 		.word	897988541
 3441 00c4 A4707D3F 		.word	1065185444
 3442              		.size	_ZN8Platform19SetDriverStepTimingEjPKf, .-_ZN8Platform19SetDriverStepTimingEjPKf
 3443              		.section	.text._ZNK8Platform19GetDriverStepTimingEjPf,"ax",%progbits
 3444              		.align	1
 3445              		.p2align 2,,3
 3446              		.global	_ZNK8Platform19GetDriverStepTimingEjPf
 3447              		.syntax unified
 3448              		.thumb
 3449              		.thumb_func
 3450              		.fpu fpv4-sp-d16
 3451              		.type	_ZNK8Platform19GetDriverStepTimingEjPf, %function
 3452              	_ZNK8Platform19GetDriverStepTimingEjPf:
 3453              		@ args = 0, pretend = 0, frame = 0
 3454              		@ frame_needed = 0, uses_anonymous_args = 0
 3455              		@ link register save eliminated.
 3456 0000 0B29     		cmp	r1, #11
 3457 0002 30B4     		push	{r4, r5}
 3458 0004 27D8     		bhi	.L636
 3459 0006 154B     		ldr	r3, .L640
 3460 0008 154C     		ldr	r4, .L640+4
 3461 000a 595C     		ldrb	r1, [r3, r1]	@ zero_extendqisi2
 3462 000c D0F8BC53 		ldr	r5, [r0, #956]
 3463 0010 C1EBC101 		rsb	r1, r1, r1, lsl #3
 3464 0014 04EB8101 		add	r1, r4, r1, lsl #2
 3465 0018 4B68     		ldr	r3, [r1, #4]
 3466 001a 2B40     		ands	r3, r3, r5
 3467              	.L633:
 3468 001c DFED115A 		vldr.32	s11, .L640+8
 3469 0020 9FED116A 		vldr.32	s12, .L640+12
 3470 0024 DFED116A 		vldr.32	s13, .L640+16
 3471 0028 00F56B70 		add	r0, r0, #940
 3472 002c 02F11001 		add	r1, r2, #16
 3473              	.L635:
 3474 0030 73B1     		cbz	r3, .L637
 3475 0032 D0ED007A 		vldr.32	s15, [r0]	@ int
 3476 0036 F8EE677A 		vcvt.f32.u32	s15, s15
 3477 003a 67EE867A 		vmul.f32	s15, s15, s12
ARM GAS  /tmp/ccghtDyP.s 			page 62


 3478 003e 87EEA67A 		vdiv.f32	s14, s15, s13
 3479              	.L634:
 3480 0042 0430     		adds	r0, r0, #4
 3481 0044 A2EC017A 		vstmia.32	r2!, {s14}
 3482 0048 8A42     		cmp	r2, r1
 3483 004a F1D1     		bne	.L635
 3484 004c 30BC     		pop	{r4, r5}
 3485 004e 7047     		bx	lr
 3486              	.L637:
 3487 0050 B0EE657A 		vmov.f32	s14, s11
 3488 0054 F5E7     		b	.L634
 3489              	.L636:
 3490 0056 0023     		movs	r3, #0
 3491 0058 E0E7     		b	.L633
 3492              	.L641:
 3493 005a 00BF     		.align	2
 3494              	.L640:
 3495 005c 00000000 		.word	.LANCHOR4
 3496 0060 00000000 		.word	g_APinDescription
 3497 0064 00000000 		.word	0
 3498 0068 00247449 		.word	1232348160
 3499 006c C0E16449 		.word	1231348160
 3500              		.size	_ZNK8Platform19GetDriverStepTimingEjPf, .-_ZNK8Platform19GetDriverStepTimingEjPf
 3501              		.section	.text._ZN8Platform12ConfigureFanEjiR11GCodeBufferRK9StringRefRb,"ax",%progbits
 3502              		.align	1
 3503              		.p2align 2,,3
 3504              		.global	_ZN8Platform12ConfigureFanEjiR11GCodeBufferRK9StringRefRb
 3505              		.syntax unified
 3506              		.thumb
 3507              		.thumb_func
 3508              		.fpu fpv4-sp-d16
 3509              		.type	_ZN8Platform12ConfigureFanEjiR11GCodeBufferRK9StringRefRb, %function
 3510              	_ZN8Platform12ConfigureFanEjiR11GCodeBufferRK9StringRefRb:
 3511              		@ args = 8, pretend = 0, frame = 0
 3512              		@ frame_needed = 0, uses_anonymous_args = 0
 3513 0000 70B5     		push	{r4, r5, r6, lr}
 3514 0002 082A     		cmp	r2, #8
 3515 0004 DDE90465 		ldrd	r6, r5, [sp, #16]
 3516 0008 08D8     		bhi	.L646
 3517 000a 2C25     		movs	r5, #44
 3518 000c 05FB0200 		mla	r0, r5, r2, r0
 3519 0010 00F5FB60 		add	r0, r0, #2008
 3520 0014 BDE87040 		pop	{r4, r5, r6, lr}
 3521 0018 FFF7FEBF 		b	_ZN3Fan9ConfigureEjiR11GCodeBufferRK9StringRefRb
 3522              	.L646:
 3523 001c 3046     		mov	r0, r6
 3524 001e 0823     		movs	r3, #8
 3525 0020 0349     		ldr	r1, .L648
 3526 0022 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3527 0026 0123     		movs	r3, #1
 3528 0028 2B70     		strb	r3, [r5]
 3529 002a 0020     		movs	r0, #0
 3530 002c 70BD     		pop	{r4, r5, r6, pc}
 3531              	.L649:
 3532 002e 00BF     		.align	2
 3533              	.L648:
 3534 0030 00000000 		.word	.LC16
ARM GAS  /tmp/ccghtDyP.s 			page 63


 3535              		.size	_ZN8Platform12ConfigureFanEjiR11GCodeBufferRK9StringRefRb, .-_ZN8Platform12ConfigureFanEjiR1
 3536              		.section	.text._ZNK8Platform11GetFanValueEj,"ax",%progbits
 3537              		.align	1
 3538              		.p2align 2,,3
 3539              		.global	_ZNK8Platform11GetFanValueEj
 3540              		.syntax unified
 3541              		.thumb
 3542              		.thumb_func
 3543              		.fpu fpv4-sp-d16
 3544              		.type	_ZNK8Platform11GetFanValueEj, %function
 3545              	_ZNK8Platform11GetFanValueEj:
 3546              		@ args = 0, pretend = 0, frame = 0
 3547              		@ frame_needed = 0, uses_anonymous_args = 0
 3548              		@ link register save eliminated.
 3549 0000 0829     		cmp	r1, #8
 3550 0002 07D8     		bhi	.L652
 3551 0004 2C23     		movs	r3, #44
 3552 0006 03FB0101 		mla	r1, r3, r1, r0
 3553 000a 01F5FB61 		add	r1, r1, #2008
 3554 000e 91ED000A 		vldr.32	s0, [r1]
 3555 0012 7047     		bx	lr
 3556              	.L652:
 3557 0014 BFEE000A 		vmov.f32	s0, #-1.0e+0
 3558 0018 7047     		bx	lr
 3559              		.size	_ZNK8Platform11GetFanValueEj, .-_ZNK8Platform11GetFanValueEj
 3560 001a 00BF     		.section	.text._ZN8Platform11SetFanValueEjf,"ax",%progbits
 3561              		.align	1
 3562              		.p2align 2,,3
 3563              		.global	_ZN8Platform11SetFanValueEjf
 3564              		.syntax unified
 3565              		.thumb
 3566              		.thumb_func
 3567              		.fpu fpv4-sp-d16
 3568              		.type	_ZN8Platform11SetFanValueEjf, %function
 3569              	_ZN8Platform11SetFanValueEjf:
 3570              		@ args = 0, pretend = 0, frame = 0
 3571              		@ frame_needed = 0, uses_anonymous_args = 0
 3572              		@ link register save eliminated.
 3573 0000 0829     		cmp	r1, #8
 3574 0002 00D9     		bls	.L655
 3575 0004 7047     		bx	lr
 3576              	.L655:
 3577 0006 2C23     		movs	r3, #44
 3578 0008 03FB0100 		mla	r0, r3, r1, r0
 3579 000c 00F5FB60 		add	r0, r0, #2008
 3580 0010 FFF7FEBF 		b	_ZN3Fan6SetPwmEf
 3581              		.size	_ZN8Platform11SetFanValueEjf, .-_ZN8Platform11SetFanValueEjf
 3582              		.section	.text._ZNK8Platform17IsFanControllableEj,"ax",%progbits
 3583              		.align	1
 3584              		.p2align 2,,3
 3585              		.global	_ZNK8Platform17IsFanControllableEj
 3586              		.syntax unified
 3587              		.thumb
 3588              		.thumb_func
 3589              		.fpu fpv4-sp-d16
 3590              		.type	_ZNK8Platform17IsFanControllableEj, %function
 3591              	_ZNK8Platform17IsFanControllableEj:
ARM GAS  /tmp/ccghtDyP.s 			page 64


 3592              		@ args = 0, pretend = 0, frame = 0
 3593              		@ frame_needed = 0, uses_anonymous_args = 0
 3594              		@ link register save eliminated.
 3595 0000 0829     		cmp	r1, #8
 3596 0002 11D8     		bhi	.L659
 3597 0004 2C23     		movs	r3, #44
 3598 0006 03FB01F1 		mul	r1, r3, r1
 3599 000a 01F5FB63 		add	r3, r1, #2008
 3600 000e 0344     		add	r3, r3, r0
 3601 0010 1A6A     		ldr	r2, [r3, #32]
 3602 0012 4AB9     		cbnz	r2, .L659
 3603 0014 0144     		add	r1, r1, r0
 3604 0016 91F8FF07 		ldrb	r0, [r1, #2047]	@ zero_extendqisi2
 3605 001a 30B1     		cbz	r0, .L657
 3606 001c 93F82600 		ldrb	r0, [r3, #38]	@ zero_extendqisi2
 3607 0020 FF38     		subs	r0, r0, #255
 3608 0022 18BF     		it	ne
 3609 0024 0120     		movne	r0, #1
 3610 0026 7047     		bx	lr
 3611              	.L659:
 3612 0028 0020     		movs	r0, #0
 3613              	.L657:
 3614 002a 7047     		bx	lr
 3615              		.size	_ZNK8Platform17IsFanControllableEj, .-_ZNK8Platform17IsFanControllableEj
 3616              		.section	.text._ZNK8Platform9GetFanRPMEv,"ax",%progbits
 3617              		.align	1
 3618              		.p2align 2,,3
 3619              		.global	_ZNK8Platform9GetFanRPMEv
 3620              		.syntax unified
 3621              		.thumb
 3622              		.thumb_func
 3623              		.fpu fpv4-sp-d16
 3624              		.type	_ZNK8Platform9GetFanRPMEv, %function
 3625              	_ZNK8Platform9GetFanRPMEv:
 3626              		@ args = 0, pretend = 0, frame = 0
 3627              		@ frame_needed = 0, uses_anonymous_args = 0
 3628              		@ link register save eliminated.
 3629 0000 0B4B     		ldr	r3, .L667
 3630 0002 1A68     		ldr	r2, [r3]
 3631 0004 8AB1     		cbz	r2, .L666
 3632 0006 0B49     		ldr	r1, .L667+4
 3633 0008 0B4A     		ldr	r2, .L667+8
 3634 000a D2F89020 		ldr	r2, [r2, #144]
 3635 000e 0868     		ldr	r0, [r1]
 3636 0010 0A49     		ldr	r1, .L667+12
 3637 0012 121A     		subs	r2, r2, r0
 3638 0014 8A42     		cmp	r2, r1
 3639 0016 08D8     		bhi	.L666
 3640 0018 D3ED007A 		vldr.32	s15, [r3]	@ int
 3641 001c 9FED087A 		vldr.32	s14, .L667+16
 3642 0020 F8EE677A 		vcvt.f32.u32	s15, s15
 3643 0024 87EE270A 		vdiv.f32	s0, s14, s15
 3644 0028 7047     		bx	lr
 3645              	.L666:
 3646 002a 9FED060A 		vldr.32	s0, .L667+20
 3647 002e 7047     		bx	lr
 3648              	.L668:
ARM GAS  /tmp/ccghtDyP.s 			page 65


 3649              		.align	2
 3650              	.L667:
 3651 0030 00000000 		.word	.LANCHOR2
 3652 0034 00000000 		.word	.LANCHOR1
 3653 0038 00000940 		.word	1074331648
 3654 003c 53EA2A00 		.word	2812499
 3655 0040 50A9AB4C 		.word	1286318416
 3656 0044 00000000 		.word	0
 3657              		.size	_ZNK8Platform9GetFanRPMEv, .-_ZNK8Platform9GetFanRPMEv
 3658              		.section	.text._ZNK8Platform20FansHardwareInvertedEj,"ax",%progbits
 3659              		.align	1
 3660              		.p2align 2,,3
 3661              		.global	_ZNK8Platform20FansHardwareInvertedEj
 3662              		.syntax unified
 3663              		.thumb
 3664              		.thumb_func
 3665              		.fpu fpv4-sp-d16
 3666              		.type	_ZNK8Platform20FansHardwareInvertedEj, %function
 3667              	_ZNK8Platform20FansHardwareInvertedEj:
 3668              		@ args = 0, pretend = 0, frame = 0
 3669              		@ frame_needed = 0, uses_anonymous_args = 0
 3670              		@ link register save eliminated.
 3671 0000 0020     		movs	r0, #0
 3672 0002 7047     		bx	lr
 3673              		.size	_ZNK8Platform20FansHardwareInvertedEj, .-_ZNK8Platform20FansHardwareInvertedEj
 3674              		.section	.text._ZN8Platform8InitFansEv,"ax",%progbits
 3675              		.align	1
 3676              		.p2align 2,,3
 3677              		.global	_ZN8Platform8InitFansEv
 3678              		.syntax unified
 3679              		.thumb
 3680              		.thumb_func
 3681              		.fpu fpv4-sp-d16
 3682              		.type	_ZN8Platform8InitFansEv, %function
 3683              	_ZN8Platform8InitFansEv:
 3684              		@ args = 0, pretend = 0, frame = 0
 3685              		@ frame_needed = 0, uses_anonymous_args = 0
 3686 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 3687 0002 3721     		movs	r1, #55
 3688 0004 0746     		mov	r7, r0
 3689 0006 124D     		ldr	r5, .L674
 3690 0008 00F5FB64 		add	r4, r0, #2008
 3691 000c 00F66416 		addw	r6, r0, #2404
 3692 0010 01E0     		b	.L672
 3693              	.L671:
 3694 0012 15F8011F 		ldrb	r1, [r5, #1]!	@ zero_extendqisi2
 3695              	.L672:
 3696 0016 2046     		mov	r0, r4
 3697 0018 0022     		movs	r2, #0
 3698 001a 2C34     		adds	r4, r4, #44
 3699 001c FFF7FEFF 		bl	_ZN3Fan4InitEhb
 3700 0020 A642     		cmp	r6, r4
 3701 0022 F6D1     		bne	.L671
 3702 0024 07F60404 		addw	r4, r7, #2052
 3703 0028 2046     		mov	r0, r4
 3704 002a FE21     		movs	r1, #254
 3705 002c FFF7FEFF 		bl	_ZN3Fan19SetHeatersMonitoredEm
ARM GAS  /tmp/ccghtDyP.s 			page 66


 3706 0030 2046     		mov	r0, r4
 3707 0032 B7EE000A 		vmov.f32	s0, #1.0e+0
 3708 0036 FFF7FEFF 		bl	_ZN3Fan6SetPwmEf
 3709 003a 6620     		movs	r0, #102
 3710 003c 87F86409 		strb	r0, [r7, #2404]
 3711 0040 40F2DC52 		movw	r2, #1500
 3712 0044 0121     		movs	r1, #1
 3713 0046 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 3714 004a FFF7FEBF 		b	pinModeDuet
 3715              	.L675:
 3716 004e 00BF     		.align	2
 3717              	.L674:
 3718 0050 00000000 		.word	.LANCHOR6
 3719              		.size	_ZN8Platform8InitFansEv, .-_ZN8Platform8InitFansEv
 3720              		.section	.text._ZN8Platform23SetEndStopConfigurationEj15EndStopPosition16EndStopInputType,"ax",%pr
 3721              		.align	1
 3722              		.p2align 2,,3
 3723              		.global	_ZN8Platform23SetEndStopConfigurationEj15EndStopPosition16EndStopInputType
 3724              		.syntax unified
 3725              		.thumb
 3726              		.thumb_func
 3727              		.fpu fpv4-sp-d16
 3728              		.type	_ZN8Platform23SetEndStopConfigurationEj15EndStopPosition16EndStopInputType, %function
 3729              	_ZN8Platform23SetEndStopConfigurationEj15EndStopPosition16EndStopInputType:
 3730              		@ args = 0, pretend = 0, frame = 0
 3731              		@ frame_needed = 0, uses_anonymous_args = 0
 3732              		@ link register save eliminated.
 3733 0000 00EB8101 		add	r1, r0, r1, lsl #2
 3734 0004 C1F87027 		str	r2, [r1, #1904]
 3735 0008 C1F89437 		str	r3, [r1, #1940]
 3736 000c 7047     		bx	lr
 3737              		.size	_ZN8Platform23SetEndStopConfigurationEj15EndStopPosition16EndStopInputType, .-_ZN8Platform23
 3738 000e 00BF     		.section	.text._ZNK8Platform23GetEndStopConfigurationEjR15EndStopPositionR16EndStopInputType,"ax",
 3739              		.align	1
 3740              		.p2align 2,,3
 3741              		.global	_ZNK8Platform23GetEndStopConfigurationEjR15EndStopPositionR16EndStopInputType
 3742              		.syntax unified
 3743              		.thumb
 3744              		.thumb_func
 3745              		.fpu fpv4-sp-d16
 3746              		.type	_ZNK8Platform23GetEndStopConfigurationEjR15EndStopPositionR16EndStopInputType, %function
 3747              	_ZNK8Platform23GetEndStopConfigurationEjR15EndStopPositionR16EndStopInputType:
 3748              		@ args = 0, pretend = 0, frame = 0
 3749              		@ frame_needed = 0, uses_anonymous_args = 0
 3750              		@ link register save eliminated.
 3751 0000 00EB8101 		add	r1, r0, r1, lsl #2
 3752 0004 D1F87007 		ldr	r0, [r1, #1904]
 3753 0008 1060     		str	r0, [r2]
 3754 000a D1F89427 		ldr	r2, [r1, #1940]
 3755 000e 1A60     		str	r2, [r3]
 3756 0010 7047     		bx	lr
 3757              		.size	_ZNK8Platform23GetEndStopConfigurationEjR15EndStopPositionR16EndStopInputType, .-_ZNK8Platfo
 3758 0012 00BF     		.section	.text._ZN8Platform14AppendAuxReplyEPKcb,"ax",%progbits
 3759              		.align	1
 3760              		.p2align 2,,3
 3761              		.global	_ZN8Platform14AppendAuxReplyEPKcb
 3762              		.syntax unified
ARM GAS  /tmp/ccghtDyP.s 			page 67


 3763              		.thumb
 3764              		.thumb_func
 3765              		.fpu fpv4-sp-d16
 3766              		.type	_ZN8Platform14AppendAuxReplyEPKcb, %function
 3767              	_ZN8Platform14AppendAuxReplyEPKcb:
 3768              		@ args = 0, pretend = 0, frame = 0
 3769              		@ frame_needed = 0, uses_anonymous_args = 0
 3770              		@ link register save eliminated.
 3771 0000 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 3772 0002 33B1     		cbz	r3, .L687
 3773 0004 90F89839 		ldrb	r3, [r0, #2456]	@ zero_extendqisi2
 3774 0008 10B4     		push	{r4}
 3775 000a 1BB9     		cbnz	r3, .L690
 3776 000c 5DF8044B 		ldr	r4, [sp], #4
 3777 0010 7047     		bx	lr
 3778              	.L687:
 3779 0012 7047     		bx	lr
 3780              	.L690:
 3781 0014 5DF8044B 		ldr	r4, [sp], #4
 3782 0018 FFF7FEBF 		b	_ZN8Platform14AppendAuxReplyEPKcb.part.25
 3783              		.size	_ZN8Platform14AppendAuxReplyEPKcb, .-_ZN8Platform14AppendAuxReplyEPKcb
 3784              		.section	.text._ZN8Platform14AppendAuxReplyEP12OutputBufferb,"ax",%progbits
 3785              		.align	1
 3786              		.p2align 2,,3
 3787              		.global	_ZN8Platform14AppendAuxReplyEP12OutputBufferb
 3788              		.syntax unified
 3789              		.thumb
 3790              		.thumb_func
 3791              		.fpu fpv4-sp-d16
 3792              		.type	_ZN8Platform14AppendAuxReplyEP12OutputBufferb, %function
 3793              	_ZN8Platform14AppendAuxReplyEP12OutputBufferb:
 3794              		@ args = 0, pretend = 0, frame = 16
 3795              		@ frame_needed = 0, uses_anonymous_args = 0
 3796 0000 30B5     		push	{r4, r5, lr}
 3797 0002 85B0     		sub	sp, sp, #20
 3798 0004 0191     		str	r1, [sp, #4]
 3799 0006 41B1     		cbz	r1, .L694
 3800 0008 0446     		mov	r4, r0
 3801 000a 0846     		mov	r0, r1
 3802 000c 1546     		mov	r5, r2
 3803 000e FFF7FEFF 		bl	_ZNK12OutputBuffer6LengthEv
 3804 0012 10B1     		cbz	r0, .L694
 3805 0014 94F89839 		ldrb	r3, [r4, #2456]	@ zero_extendqisi2
 3806 0018 23B9     		cbnz	r3, .L705
 3807              	.L694:
 3808 001a 01A8     		add	r0, sp, #4
 3809 001c FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 3810 0020 05B0     		add	sp, sp, #20
 3811              		@ sp needed
 3812 0022 30BD     		pop	{r4, r5, pc}
 3813              	.L705:
 3814 0024 02A8     		add	r0, sp, #8
 3815 0026 4FF0FF32 		mov	r2, #-1
 3816 002a 04F68C11 		addw	r1, r4, #2444
 3817 002e FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 3818 0032 7DB9     		cbnz	r5, .L706
 3819 0034 D4F89439 		ldr	r3, [r4, #2452]
ARM GAS  /tmp/ccghtDyP.s 			page 68


 3820 0038 D4F89009 		ldr	r0, [r4, #2448]
 3821 003c 0199     		ldr	r1, [sp, #4]
 3822 003e 0133     		adds	r3, r3, #1
 3823 0040 C4F89439 		str	r3, [r4, #2452]
 3824 0044 60B1     		cbz	r0, .L707
 3825 0046 FFF7FEFF 		bl	_ZN12OutputBuffer6AppendEPS_
 3826              	.L696:
 3827 004a 02A8     		add	r0, sp, #8
 3828 004c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 3829 0050 05B0     		add	sp, sp, #20
 3830              		@ sp needed
 3831 0052 30BD     		pop	{r4, r5, pc}
 3832              	.L706:
 3833 0054 04F67810 		addw	r0, r4, #2424
 3834 0058 0199     		ldr	r1, [sp, #4]
 3835 005a FFF7FEFF 		bl	_ZNV11OutputStack4PushEP12OutputBuffer
 3836 005e F4E7     		b	.L696
 3837              	.L707:
 3838 0060 C4F89019 		str	r1, [r4, #2448]
 3839 0064 F1E7     		b	.L696
 3840              		.size	_ZN8Platform14AppendAuxReplyEP12OutputBufferb, .-_ZN8Platform14AppendAuxReplyEP12OutputBuffe
 3841 0066 00BF     		.section	.text._ZN8Platform7MessageE11MessageTypeP12OutputBuffer,"ax",%progbits
 3842              		.align	1
 3843              		.p2align 2,,3
 3844              		.global	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 3845              		.syntax unified
 3846              		.thumb
 3847              		.thumb_func
 3848              		.fpu fpv4-sp-d16
 3849              		.type	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer, %function
 3850              	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer:
 3851              		@ args = 0, pretend = 0, frame = 16
 3852              		@ frame_needed = 0, uses_anonymous_args = 0
 3853 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 3854 0004 87B0     		sub	sp, sp, #28
 3855 0006 0B06     		lsls	r3, r1, #24
 3856 0008 0C46     		mov	r4, r1
 3857 000a 0546     		mov	r5, r0
 3858 000c 0392     		str	r2, [sp, #12]
 3859 000e 0AD5     		bpl	.L709
 3860 0010 0068     		ldr	r0, [r0]
 3861 0012 40B1     		cbz	r0, .L709
 3862 0014 05F6F813 		addw	r3, r5, #2552
 3863 0018 D3E90067 		ldrd	r6, [r3]
 3864 001c 0092     		str	r2, [sp]
 3865 001e 3B46     		mov	r3, r7
 3866 0020 3246     		mov	r2, r6
 3867 0022 FFF7FEFF 		bl	_ZN6Logger10LogMessageExP12OutputBuffer
 3868              	.L709:
 3869 0026 14F00C09 		ands	r9, r4, #12
 3870 002a 14BF     		ite	ne
 3871 002c 0121     		movne	r1, #1
 3872 002e 0021     		moveq	r1, #0
 3873 0030 14F00306 		ands	r6, r4, #3
 3874 0034 18BF     		it	ne
 3875 0036 0131     		addne	r1, r1, #1
 3876 0038 14F01008 		ands	r8, r4, #16
ARM GAS  /tmp/ccghtDyP.s 			page 69


 3877 003c 15D0     		beq	.L711
 3878 003e 14F02007 		ands	r7, r4, #32
 3879 0042 01F10101 		add	r1, r1, #1
 3880 0046 00D0     		beq	.L713
 3881              	.L712:
 3882 0048 0131     		adds	r1, r1, #1
 3883              	.L713:
 3884 004a 0139     		subs	r1, r1, #1
 3885 004c 0398     		ldr	r0, [sp, #12]
 3886 004e FFF7FEFF 		bl	_ZN12OutputBuffer18IncreaseReferencesEj
 3887 0052 B9F1000F 		cmp	r9, #0
 3888 0056 3CD1     		bne	.L752
 3889 0058 B8F1000F 		cmp	r8, #0
 3890 005c 2AD1     		bne	.L753
 3891              	.L718:
 3892 005e 002F     		cmp	r7, #0
 3893 0060 2FD1     		bne	.L754
 3894              	.L719:
 3895 0062 6EB9     		cbnz	r6, .L755
 3896              	.L708:
 3897 0064 07B0     		add	sp, sp, #28
 3898              		@ sp needed
 3899 0066 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 3900              	.L711:
 3901 006a 14F02007 		ands	r7, r4, #32
 3902 006e EBD1     		bne	.L712
 3903 0070 0029     		cmp	r1, #0
 3904 0072 EAD1     		bne	.L713
 3905 0074 03A8     		add	r0, sp, #12
 3906 0076 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 3907 007a 07B0     		add	sp, sp, #28
 3908              		@ sp needed
 3909 007c BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 3910              	.L755:
 3911 0080 04A8     		add	r0, sp, #16
 3912 0082 4FF0FF32 		mov	r2, #-1
 3913 0086 05F51B61 		add	r1, r5, #2480
 3914 008a FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 3915 008e 1E48     		ldr	r0, .L756
 3916 0090 FFF7FEFF 		bl	_ZNK9SerialCDCcvbEv
 3917 0094 28B1     		cbz	r0, .L720
 3918 0096 1D4B     		ldr	r3, .L756+4
 3919 0098 9B69     		ldr	r3, [r3, #24]
 3920 009a 1A69     		ldr	r2, [r3, #16]
 3921 009c 6AB3     		cbz	r2, .L721
 3922 009e 5B7A     		ldrb	r3, [r3, #9]	@ zero_extendqisi2
 3923 00a0 5BBB     		cbnz	r3, .L721
 3924              	.L720:
 3925 00a2 03A8     		add	r0, sp, #12
 3926 00a4 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 3927              	.L722:
 3928 00a8 04A8     		add	r0, sp, #16
 3929 00aa FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 3930 00ae 07B0     		add	sp, sp, #28
 3931              		@ sp needed
 3932 00b0 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 3933              	.L753:
ARM GAS  /tmp/ccghtDyP.s 			page 70


 3934 00b4 154B     		ldr	r3, .L756+4
 3935 00b6 0399     		ldr	r1, [sp, #12]
 3936 00b8 5868     		ldr	r0, [r3, #4]
 3937 00ba FFF7FEFF 		bl	_ZN7Network20HandleHttpGCodeReplyEP12OutputBuffer
 3938 00be 002F     		cmp	r7, #0
 3939 00c0 CFD0     		beq	.L719
 3940              	.L754:
 3941 00c2 124B     		ldr	r3, .L756+4
 3942 00c4 0399     		ldr	r1, [sp, #12]
 3943 00c6 5868     		ldr	r0, [r3, #4]
 3944 00c8 FFF7FEFF 		bl	_ZN7Network22HandleTelnetGCodeReplyEP12OutputBuffer
 3945 00cc 002E     		cmp	r6, #0
 3946 00ce C9D0     		beq	.L708
 3947 00d0 D6E7     		b	.L755
 3948              	.L752:
 3949 00d2 DDF80C90 		ldr	r9, [sp, #12]
 3950 00d6 0021     		movs	r1, #0
 3951 00d8 4846     		mov	r0, r9
 3952 00da FFF7FEFF 		bl	_ZN12OutputBufferixEj
 3953 00de 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 3954 00e0 7B2B     		cmp	r3, #123
 3955 00e2 14BF     		ite	ne
 3956 00e4 C4F38022 		ubfxne	r2, r4, #10, #1
 3957 00e8 0122     		moveq	r2, #1
 3958 00ea 4946     		mov	r1, r9
 3959 00ec 2846     		mov	r0, r5
 3960 00ee FFF7FEFF 		bl	_ZN8Platform14AppendAuxReplyEP12OutputBufferb
 3961 00f2 B8F1000F 		cmp	r8, #0
 3962 00f6 B2D0     		beq	.L718
 3963 00f8 DCE7     		b	.L753
 3964              	.L721:
 3965 00fa 05F69C10 		addw	r0, r5, #2460
 3966 00fe 0399     		ldr	r1, [sp, #12]
 3967 0100 FFF7FEFF 		bl	_ZNV11OutputStack4PushEP12OutputBuffer
 3968 0104 D0E7     		b	.L722
 3969              	.L757:
 3970 0106 00BF     		.align	2
 3971              	.L756:
 3972 0108 00000000 		.word	SerialUSB
 3973 010c 00000000 		.word	reprap
 3974              		.size	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer, .-_ZN8Platform7MessageE11MessageTypeP12Ou
 3975              		.section	.text._ZN8Platform16ConfigureLoggingER11GCodeBufferRK9StringRef,"ax",%progbits
 3976              		.align	1
 3977              		.p2align 2,,3
 3978              		.global	_ZN8Platform16ConfigureLoggingER11GCodeBufferRK9StringRef
 3979              		.syntax unified
 3980              		.thumb
 3981              		.thumb_func
 3982              		.fpu fpv4-sp-d16
 3983              		.type	_ZN8Platform16ConfigureLoggingER11GCodeBufferRK9StringRef, %function
 3984              	_ZN8Platform16ConfigureLoggingER11GCodeBufferRK9StringRef:
 3985              		@ args = 0, pretend = 0, frame = 136
 3986              		@ frame_needed = 0, uses_anonymous_args = 0
 3987 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 3988 0004 0E46     		mov	r6, r1
 3989 0006 A4B0     		sub	sp, sp, #144
 3990 0008 0546     		mov	r5, r0
ARM GAS  /tmp/ccghtDyP.s 			page 71


 3991 000a 5321     		movs	r1, #83
 3992 000c 3046     		mov	r0, r6
 3993 000e 1746     		mov	r7, r2
 3994 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3995 0014 58B3     		cbz	r0, .L759
 3996 0016 2868     		ldr	r0, [r5]
 3997 0018 28B1     		cbz	r0, .L760
 3998 001a 05F6F813 		addw	r3, r5, #2552
 3999 001e D3E90023 		ldrd	r2, [r3]
 4000 0022 FFF7FEFF 		bl	_ZN6Logger4StopEx
 4001              	.L760:
 4002 0026 3046     		mov	r0, r6
 4003 0028 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4004 002c 0028     		cmp	r0, #0
 4005 002e 41DD     		ble	.L767
 4006 0030 2868     		ldr	r0, [r5]
 4007 0032 0028     		cmp	r0, #0
 4008 0034 45D0     		beq	.L774
 4009 0036 05F6F813 		addw	r3, r5, #2552
 4010 003a D3E90023 		ldrd	r2, [r3]
 4011 003e FFF7FEFF 		bl	_ZN6Logger4StopEx
 4012              	.L763:
 4013 0042 05AA     		add	r2, sp, #20
 4014 0044 7923     		movs	r3, #121
 4015 0046 5021     		movs	r1, #80
 4016 0048 3046     		mov	r0, r6
 4017 004a 0392     		str	r2, [sp, #12]
 4018 004c 0493     		str	r3, [sp, #16]
 4019 004e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4020 0052 0DF10C08 		add	r8, sp, #12
 4021 0056 0446     		mov	r4, r0
 4022 0058 D0B1     		cbz	r0, .L764
 4023 005a 3046     		mov	r0, r6
 4024 005c 4146     		mov	r1, r8
 4025 005e FFF7FEFF 		bl	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef
 4026 0062 C8B9     		cbnz	r0, .L765
 4027 0064 3846     		mov	r0, r7
 4028 0066 1B49     		ldr	r1, .L775
 4029 0068 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 4030 006c 0CE0     		b	.L761
 4031              	.L759:
 4032 006e 2B68     		ldr	r3, [r5]
 4033 0070 0446     		mov	r4, r0
 4034 0072 23B3     		cbz	r3, .L768
 4035 0074 1968     		ldr	r1, [r3]
 4036 0076 184A     		ldr	r2, .L775+4
 4037 0078 184B     		ldr	r3, .L775+8
 4038 007a 0029     		cmp	r1, #0
 4039 007c 18BF     		it	ne
 4040 007e 1A46     		movne	r2, r3
 4041              	.L766:
 4042 0080 1749     		ldr	r1, .L775+12
 4043 0082 3846     		mov	r0, r7
 4044 0084 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4045              	.L761:
 4046 0088 2046     		mov	r0, r4
 4047 008a 24B0     		add	sp, sp, #144
ARM GAS  /tmp/ccghtDyP.s 			page 72


 4048              		@ sp needed
 4049 008c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 4050              	.L764:
 4051 0090 4046     		mov	r0, r8
 4052 0092 1449     		ldr	r1, .L775+16
 4053 0094 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 4054              	.L765:
 4055 0098 05F6F813 		addw	r3, r5, #2552
 4056 009c 2868     		ldr	r0, [r5]
 4057 009e D3E90023 		ldrd	r2, [r3]
 4058 00a2 CDF80080 		str	r8, [sp]
 4059 00a6 FFF7FEFF 		bl	_ZN6Logger5StartExRK9StringRef
 4060 00aa 0024     		movs	r4, #0
 4061 00ac 2046     		mov	r0, r4
 4062 00ae 24B0     		add	sp, sp, #144
 4063              		@ sp needed
 4064 00b0 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 4065              	.L767:
 4066 00b4 0024     		movs	r4, #0
 4067 00b6 2046     		mov	r0, r4
 4068 00b8 24B0     		add	sp, sp, #144
 4069              		@ sp needed
 4070 00ba BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 4071              	.L768:
 4072 00be 064A     		ldr	r2, .L775+4
 4073 00c0 DEE7     		b	.L766
 4074              	.L774:
 4075 00c2 1020     		movs	r0, #16
 4076 00c4 FFF7FEFF 		bl	_Znwj
 4077 00c8 0446     		mov	r4, r0
 4078 00ca FFF7FEFF 		bl	_ZN6LoggerC1Ev
 4079 00ce 2C60     		str	r4, [r5]
 4080 00d0 B7E7     		b	.L763
 4081              	.L776:
 4082 00d2 00BF     		.align	2
 4083              	.L775:
 4084 00d4 14000000 		.word	.LC19
 4085 00d8 08000000 		.word	.LC18
 4086 00dc 00000000 		.word	.LC17
 4087 00e0 48000000 		.word	.LC21
 4088 00e4 38000000 		.word	.LC20
 4089              		.size	_ZN8Platform16ConfigureLoggingER11GCodeBufferRK9StringRef, .-_ZN8Platform16ConfigureLoggingE
 4090              		.section	.text._ZN8Platform11StopLoggingEv,"ax",%progbits
 4091              		.align	1
 4092              		.p2align 2,,3
 4093              		.global	_ZN8Platform11StopLoggingEv
 4094              		.syntax unified
 4095              		.thumb
 4096              		.thumb_func
 4097              		.fpu fpv4-sp-d16
 4098              		.type	_ZN8Platform11StopLoggingEv, %function
 4099              	_ZN8Platform11StopLoggingEv:
 4100              		@ args = 0, pretend = 0, frame = 0
 4101              		@ frame_needed = 0, uses_anonymous_args = 0
 4102              		@ link register save eliminated.
 4103 0000 0268     		ldr	r2, [r0]
 4104 0002 32B1     		cbz	r2, .L777
ARM GAS  /tmp/ccghtDyP.s 			page 73


 4105 0004 00F6F813 		addw	r3, r0, #2552
 4106 0008 1046     		mov	r0, r2
 4107 000a D3E90023 		ldrd	r2, [r3]
 4108 000e FFF7FEBF 		b	_ZN6Logger4StopEx
 4109              	.L777:
 4110 0012 7047     		bx	lr
 4111              		.size	_ZN8Platform11StopLoggingEv, .-_ZN8Platform11StopLoggingEv
 4112              		.section	.text._ZNK8Platform8AtxPowerEv,"ax",%progbits
 4113              		.align	1
 4114              		.p2align 2,,3
 4115              		.global	_ZNK8Platform8AtxPowerEv
 4116              		.syntax unified
 4117              		.thumb
 4118              		.thumb_func
 4119              		.fpu fpv4-sp-d16
 4120              		.type	_ZNK8Platform8AtxPowerEv, %function
 4121              	_ZNK8Platform8AtxPowerEv:
 4122              		@ args = 0, pretend = 0, frame = 0
 4123              		@ frame_needed = 0, uses_anonymous_args = 0
 4124              		@ link register save eliminated.
 4125 0000 4F20     		movs	r0, #79
 4126 0002 FFF7FEBF 		b	_ZN6IoPort7ReadPinEh
 4127              		.size	_ZNK8Platform8AtxPowerEv, .-_ZNK8Platform8AtxPowerEv
 4128 0006 00BF     		.section	.text._ZN8Platform10AtxPowerOnEv,"ax",%progbits
 4129              		.align	1
 4130              		.p2align 2,,3
 4131              		.global	_ZN8Platform10AtxPowerOnEv
 4132              		.syntax unified
 4133              		.thumb
 4134              		.thumb_func
 4135              		.fpu fpv4-sp-d16
 4136              		.type	_ZN8Platform10AtxPowerOnEv, %function
 4137              	_ZN8Platform10AtxPowerOnEv:
 4138              		@ args = 0, pretend = 0, frame = 0
 4139              		@ frame_needed = 0, uses_anonymous_args = 0
 4140              		@ link register save eliminated.
 4141 0000 0023     		movs	r3, #0
 4142 0002 80F8943A 		strb	r3, [r0, #2708]
 4143 0006 0121     		movs	r1, #1
 4144 0008 4F20     		movs	r0, #79
 4145 000a FFF7FEBF 		b	_ZN6IoPort12WriteDigitalEhb
 4146              		.size	_ZN8Platform10AtxPowerOnEv, .-_ZN8Platform10AtxPowerOnEv
 4147 000e 00BF     		.section	.text._ZN8Platform11AtxPowerOffEb,"ax",%progbits
 4148              		.align	1
 4149              		.p2align 2,,3
 4150              		.global	_ZN8Platform11AtxPowerOffEb
 4151              		.syntax unified
 4152              		.thumb
 4153              		.thumb_func
 4154              		.fpu fpv4-sp-d16
 4155              		.type	_ZN8Platform11AtxPowerOffEb, %function
 4156              	_ZN8Platform11AtxPowerOffEb:
 4157              		@ args = 0, pretend = 0, frame = 0
 4158              		@ frame_needed = 0, uses_anonymous_args = 0
 4159              		@ link register save eliminated.
 4160 0000 80F8941A 		strb	r1, [r0, #2708]
 4161 0004 09B9     		cbnz	r1, .L781
ARM GAS  /tmp/ccghtDyP.s 			page 74


 4162 0006 FFF7FEBF 		b	_ZN8Platform11AtxPowerOffEb.part.26
 4163              	.L781:
 4164 000a 7047     		bx	lr
 4165              		.size	_ZN8Platform11AtxPowerOffEb, .-_ZN8Platform11AtxPowerOffEb
 4166              		.section	.text._ZN8Platform18SetPressureAdvanceEjf,"ax",%progbits
 4167              		.align	1
 4168              		.p2align 2,,3
 4169              		.global	_ZN8Platform18SetPressureAdvanceEjf
 4170              		.syntax unified
 4171              		.thumb
 4172              		.thumb_func
 4173              		.fpu fpv4-sp-d16
 4174              		.type	_ZN8Platform18SetPressureAdvanceEjf, %function
 4175              	_ZN8Platform18SetPressureAdvanceEjf:
 4176              		@ args = 0, pretend = 0, frame = 0
 4177              		@ frame_needed = 0, uses_anonymous_args = 0
 4178              		@ link register save eliminated.
 4179 0000 0829     		cmp	r1, #8
 4180 0002 9CBF     		itt	ls
 4181 0004 00EB8100 		addls	r0, r0, r1, lsl #2
 4182 0008 80ED820A 		vstrls.32	s0, [r0, #520]
 4183 000c 7047     		bx	lr
 4184              		.size	_ZN8Platform18SetPressureAdvanceEjf, .-_ZN8Platform18SetPressureAdvanceEjf
 4185 000e 00BF     		.section	.text._ZNK8Platform24GetExtrusionCoefficientsEjRfS0_S0_,"ax",%progbits
 4186              		.align	1
 4187              		.p2align 2,,3
 4188              		.global	_ZNK8Platform24GetExtrusionCoefficientsEjRfS0_S0_
 4189              		.syntax unified
 4190              		.thumb
 4191              		.thumb_func
 4192              		.fpu fpv4-sp-d16
 4193              		.type	_ZNK8Platform24GetExtrusionCoefficientsEjRfS0_S0_, %function
 4194              	_ZNK8Platform24GetExtrusionCoefficientsEjRfS0_S0_:
 4195              		@ args = 4, pretend = 0, frame = 0
 4196              		@ frame_needed = 0, uses_anonymous_args = 0
 4197              		@ link register save eliminated.
 4198 0000 0829     		cmp	r1, #8
 4199 0002 0DD8     		bhi	.L787
 4200 0004 00EB8100 		add	r0, r0, r1, lsl #2
 4201 0008 D0F82C12 		ldr	r1, [r0, #556]	@ float
 4202 000c 1160     		str	r1, [r2]	@ float
 4203 000e D0F85022 		ldr	r2, [r0, #592]	@ float
 4204 0012 1A60     		str	r2, [r3]	@ float
 4205 0014 009A     		ldr	r2, [sp]
 4206 0016 D0F87432 		ldr	r3, [r0, #628]	@ float
 4207 001a 1360     		str	r3, [r2]	@ float
 4208 001c 0120     		movs	r0, #1
 4209 001e 7047     		bx	lr
 4210              	.L787:
 4211 0020 0020     		movs	r0, #0
 4212 0022 7047     		bx	lr
 4213              		.size	_ZNK8Platform24GetExtrusionCoefficientsEjRfS0_S0_, .-_ZNK8Platform24GetExtrusionCoefficients
 4214              		.section	.text._ZN8Platform21SetNonlinearExtrusionEjfff,"ax",%progbits
 4215              		.align	1
 4216              		.p2align 2,,3
 4217              		.global	_ZN8Platform21SetNonlinearExtrusionEjfff
 4218              		.syntax unified
ARM GAS  /tmp/ccghtDyP.s 			page 75


 4219              		.thumb
 4220              		.thumb_func
 4221              		.fpu fpv4-sp-d16
 4222              		.type	_ZN8Platform21SetNonlinearExtrusionEjfff, %function
 4223              	_ZN8Platform21SetNonlinearExtrusionEjfff:
 4224              		@ args = 0, pretend = 0, frame = 0
 4225              		@ frame_needed = 0, uses_anonymous_args = 0
 4226              		@ link register save eliminated.
 4227 0000 0829     		cmp	r1, #8
 4228 0002 0ED8     		bhi	.L788
 4229 0004 00EB8100 		add	r0, r0, r1, lsl #2
 4230 0008 D0ED9D7A 		vldr.32	s15, [r0, #628]
 4231 000c F5EEC07A 		vcmpe.f32	s15, #0
 4232 0010 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4233 0014 05DD     		ble	.L788
 4234 0016 80ED9D1A 		vstr.32	s2, [r0, #628]
 4235 001a 80ED8B0A 		vstr.32	s0, [r0, #556]
 4236 001e C0ED940A 		vstr.32	s1, [r0, #592]
 4237              	.L788:
 4238 0022 7047     		bx	lr
 4239              		.size	_ZN8Platform21SetNonlinearExtrusionEjfff, .-_ZN8Platform21SetNonlinearExtrusionEjfff
 4240              		.section	.text._ZNK8Platform11GetBaudRateEj,"ax",%progbits
 4241              		.align	1
 4242              		.p2align 2,,3
 4243              		.global	_ZNK8Platform11GetBaudRateEj
 4244              		.syntax unified
 4245              		.thumb
 4246              		.thumb_func
 4247              		.fpu fpv4-sp-d16
 4248              		.type	_ZNK8Platform11GetBaudRateEj, %function
 4249              	_ZNK8Platform11GetBaudRateEj:
 4250              		@ args = 0, pretend = 0, frame = 0
 4251              		@ frame_needed = 0, uses_anonymous_args = 0
 4252              		@ link register save eliminated.
 4253 0000 0129     		cmp	r1, #1
 4254 0002 9ABF     		itte	ls
 4255 0004 00EB8101 		addls	r1, r0, r1, lsl #2
 4256 0008 D1F86C09 		ldrls	r0, [r1, #2412]
 4257 000c 0020     		movhi	r0, #0
 4258 000e 7047     		bx	lr
 4259              		.size	_ZNK8Platform11GetBaudRateEj, .-_ZNK8Platform11GetBaudRateEj
 4260              		.section	.text._ZNK8Platform18GetCommsPropertiesEj,"ax",%progbits
 4261              		.align	1
 4262              		.p2align 2,,3
 4263              		.global	_ZNK8Platform18GetCommsPropertiesEj
 4264              		.syntax unified
 4265              		.thumb
 4266              		.thumb_func
 4267              		.fpu fpv4-sp-d16
 4268              		.type	_ZNK8Platform18GetCommsPropertiesEj, %function
 4269              	_ZNK8Platform18GetCommsPropertiesEj:
 4270              		@ args = 0, pretend = 0, frame = 0
 4271              		@ frame_needed = 0, uses_anonymous_args = 0
 4272              		@ link register save eliminated.
 4273 0000 0129     		cmp	r1, #1
 4274 0002 9ABF     		itte	ls
 4275 0004 0918     		addls	r1, r1, r0
ARM GAS  /tmp/ccghtDyP.s 			page 76


 4276 0006 91F87409 		ldrbls	r0, [r1, #2420]	@ zero_extendqisi2
 4277 000a 0020     		movhi	r0, #0
 4278 000c 7047     		bx	lr
 4279              		.size	_ZNK8Platform18GetCommsPropertiesEj, .-_ZNK8Platform18GetCommsPropertiesEj
 4280 000e 00BF     		.section	.text._ZN8Platform12SetBoardTypeE9BoardType,"ax",%progbits
 4281              		.align	1
 4282              		.p2align 2,,3
 4283              		.global	_ZN8Platform12SetBoardTypeE9BoardType
 4284              		.syntax unified
 4285              		.thumb
 4286              		.thumb_func
 4287              		.fpu fpv4-sp-d16
 4288              		.type	_ZN8Platform12SetBoardTypeE9BoardType, %function
 4289              	_ZN8Platform12SetBoardTypeE9BoardType:
 4290              		@ args = 0, pretend = 0, frame = 0
 4291              		@ frame_needed = 0, uses_anonymous_args = 0
 4292 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 4293 0002 0546     		mov	r5, r0
 4294 0004 0C46     		mov	r4, r1
 4295 0006 69B1     		cbz	r1, .L811
 4296 0008 85F8BC10 		strb	r1, [r5, #188]
 4297              	.L803:
 4298 000c 95F8BE30 		ldrb	r3, [r5, #190]	@ zero_extendqisi2
 4299 0010 03B9     		cbnz	r3, .L812
 4300 0012 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 4301              	.L812:
 4302 0014 2846     		mov	r0, r5
 4303 0016 FFF7FEFF 		bl	_ZN8Platform10InitZProbeEv
 4304 001a 2846     		mov	r0, r5
 4305 001c BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 4306 0020 FFF7FEBF 		b	_ZN8Platform8InitFansEv
 4307              	.L811:
 4308 0024 0A46     		mov	r2, r1
 4309 0026 6420     		movs	r0, #100
 4310 0028 0321     		movs	r1, #3
 4311 002a FFF7FEFF 		bl	pinModeDuet
 4312 002e 2246     		mov	r2, r4
 4313 0030 0121     		movs	r1, #1
 4314 0032 0520     		movs	r0, #5
 4315 0034 FFF7FEFF 		bl	pinModeDuet
 4316 0038 4FF4C876 		mov	r6, #400
 4317 003c 2246     		mov	r2, r4
 4318 003e 0121     		movs	r1, #1
 4319 0040 6720     		movs	r0, #103
 4320 0042 FFF7FEFF 		bl	pinModeDuet
 4321 0046 3346     		mov	r3, r6
 4322              		.syntax unified
 4323              	@ 88 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h" 1
 4324              		L_4802_delayMicroseconds:
 4325 0048 013B     		subs   r3, #1
 4326 004a FDD1     		bne    L_4802_delayMicroseconds
 4327              	
 4328              	@ 0 "" 2
 4329              		.thumb
 4330              		.syntax unified
 4331 004c 6720     		movs	r0, #103
 4332 004e FFF7FEFF 		bl	digitalRead
ARM GAS  /tmp/ccghtDyP.s 			page 77


 4333 0052 2246     		mov	r2, r4
 4334 0054 0746     		mov	r7, r0
 4335 0056 0221     		movs	r1, #2
 4336 0058 6720     		movs	r0, #103
 4337 005a FFF7FEFF 		bl	pinModeDuet
 4338              		.syntax unified
 4339              	@ 88 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h" 1
 4340              		L_4810_delayMicroseconds:
 4341 005e 013E     		subs   r6, #1
 4342 0060 FDD1     		bne    L_4810_delayMicroseconds
 4343              	
 4344              	@ 0 "" 2
 4345              		.thumb
 4346              		.syntax unified
 4347 0062 6720     		movs	r0, #103
 4348 0064 FFF7FEFF 		bl	digitalRead
 4349 0068 40B9     		cbnz	r0, .L800
 4350 006a 3FB1     		cbz	r7, .L800
 4351 006c 0520     		movs	r0, #5
 4352 006e FFF7FEFF 		bl	digitalRead
 4353 0072 80B9     		cbnz	r0, .L805
 4354 0074 0323     		movs	r3, #3
 4355              	.L802:
 4356 0076 85F8BC30 		strb	r3, [r5, #188]
 4357 007a C7E7     		b	.L803
 4358              	.L800:
 4359 007c 0022     		movs	r2, #0
 4360 007e 6720     		movs	r0, #103
 4361 0080 1146     		mov	r1, r2
 4362 0082 FFF7FEFF 		bl	pinModeDuet
 4363 0086 0520     		movs	r0, #5
 4364 0088 FFF7FEFF 		bl	digitalRead
 4365 008c 08B1     		cbz	r0, .L806
 4366 008e 0223     		movs	r3, #2
 4367 0090 F1E7     		b	.L802
 4368              	.L806:
 4369 0092 0423     		movs	r3, #4
 4370 0094 EFE7     		b	.L802
 4371              	.L805:
 4372 0096 0123     		movs	r3, #1
 4373 0098 EDE7     		b	.L802
 4374              		.size	_ZN8Platform12SetBoardTypeE9BoardType, .-_ZN8Platform12SetBoardTypeE9BoardType
 4375 009a 00BF     		.section	.text._ZNK8Platform20GetElectronicsStringEv,"ax",%progbits
 4376              		.align	1
 4377              		.p2align 2,,3
 4378              		.global	_ZNK8Platform20GetElectronicsStringEv
 4379              		.syntax unified
 4380              		.thumb
 4381              		.thumb_func
 4382              		.fpu fpv4-sp-d16
 4383              		.type	_ZNK8Platform20GetElectronicsStringEv, %function
 4384              	_ZNK8Platform20GetElectronicsStringEv:
 4385              		@ args = 0, pretend = 0, frame = 0
 4386              		@ frame_needed = 0, uses_anonymous_args = 0
 4387              		@ link register save eliminated.
 4388 0000 90F8BC30 		ldrb	r3, [r0, #188]	@ zero_extendqisi2
 4389 0004 013B     		subs	r3, r3, #1
ARM GAS  /tmp/ccghtDyP.s 			page 78


 4390 0006 DBB2     		uxtb	r3, r3
 4391 0008 032B     		cmp	r3, #3
 4392 000a 9ABF     		itte	ls
 4393 000c 024A     		ldrls	r2, .L816
 4394 000e 52F82300 		ldrls	r0, [r2, r3, lsl #2]
 4395 0012 0248     		ldrhi	r0, .L816+4
 4396 0014 7047     		bx	lr
 4397              	.L817:
 4398 0016 00BF     		.align	2
 4399              	.L816:
 4400 0018 00000000 		.word	.LANCHOR7
 4401 001c 00000000 		.word	.LC22
 4402              		.size	_ZNK8Platform20GetElectronicsStringEv, .-_ZNK8Platform20GetElectronicsStringEv
 4403              		.section	.text._ZNK8Platform14GetBoardStringEv,"ax",%progbits
 4404              		.align	1
 4405              		.p2align 2,,3
 4406              		.global	_ZNK8Platform14GetBoardStringEv
 4407              		.syntax unified
 4408              		.thumb
 4409              		.thumb_func
 4410              		.fpu fpv4-sp-d16
 4411              		.type	_ZNK8Platform14GetBoardStringEv, %function
 4412              	_ZNK8Platform14GetBoardStringEv:
 4413              		@ args = 0, pretend = 0, frame = 0
 4414              		@ frame_needed = 0, uses_anonymous_args = 0
 4415              		@ link register save eliminated.
 4416 0000 90F8BC30 		ldrb	r3, [r0, #188]	@ zero_extendqisi2
 4417 0004 013B     		subs	r3, r3, #1
 4418 0006 DBB2     		uxtb	r3, r3
 4419 0008 032B     		cmp	r3, #3
 4420 000a 9ABF     		itte	ls
 4421 000c 024A     		ldrls	r2, .L821
 4422 000e 52F82300 		ldrls	r0, [r2, r3, lsl #2]
 4423 0012 0248     		ldrhi	r0, .L821+4
 4424 0014 7047     		bx	lr
 4425              	.L822:
 4426 0016 00BF     		.align	2
 4427              	.L821:
 4428 0018 00000000 		.word	.LANCHOR8
 4429 001c 00000000 		.word	.LC23
 4430              		.size	_ZNK8Platform14GetBoardStringEv, .-_ZNK8Platform14GetBoardStringEv
 4431              		.section	.text._ZNK8Platform10IsDuetWiFiEv,"ax",%progbits
 4432              		.align	1
 4433              		.p2align 2,,3
 4434              		.global	_ZNK8Platform10IsDuetWiFiEv
 4435              		.syntax unified
 4436              		.thumb
 4437              		.thumb_func
 4438              		.fpu fpv4-sp-d16
 4439              		.type	_ZNK8Platform10IsDuetWiFiEv, %function
 4440              	_ZNK8Platform10IsDuetWiFiEv:
 4441              		@ args = 0, pretend = 0, frame = 0
 4442              		@ frame_needed = 0, uses_anonymous_args = 0
 4443              		@ link register save eliminated.
 4444 0000 90F8BC00 		ldrb	r0, [r0, #188]	@ zero_extendqisi2
 4445 0004 0138     		subs	r0, r0, #1
 4446 0006 0128     		cmp	r0, #1
ARM GAS  /tmp/ccghtDyP.s 			page 79


 4447 0008 8CBF     		ite	hi
 4448 000a 0020     		movhi	r0, #0
 4449 000c 0120     		movls	r0, #1
 4450 000e 7047     		bx	lr
 4451              		.size	_ZNK8Platform10IsDuetWiFiEv, .-_ZNK8Platform10IsDuetWiFiEv
 4452              		.section	.text._ZN8Platform14GetFirmwarePinEt9PinAccessRhRb,"ax",%progbits
 4453              		.align	1
 4454              		.p2align 2,,3
 4455              		.global	_ZN8Platform14GetFirmwarePinEt9PinAccessRhRb
 4456              		.syntax unified
 4457              		.thumb
 4458              		.thumb_func
 4459              		.fpu fpv4-sp-d16
 4460              		.type	_ZN8Platform14GetFirmwarePinEt9PinAccessRhRb, %function
 4461              	_ZN8Platform14GetFirmwarePinEt9PinAccessRhRb:
 4462              		@ args = 4, pretend = 0, frame = 0
 4463              		@ frame_needed = 0, uses_anonymous_args = 0
 4464 0000 70B5     		push	{r4, r5, r6, lr}
 4465 0002 049E     		ldr	r6, [sp, #16]
 4466 0004 FF25     		movs	r5, #255
 4467 0006 0024     		movs	r4, #0
 4468 0008 0729     		cmp	r1, #7
 4469 000a 1D70     		strb	r5, [r3]
 4470 000c 3470     		strb	r4, [r6]
 4471 000e 1DD8     		bhi	.L825
 4472 0010 414C     		ldr	r4, .L868
 4473 0012 E468     		ldr	r4, [r4, #12]
 4474 0014 04EB8104 		add	r4, r4, r1, lsl #2
 4475 0018 646C     		ldr	r4, [r4, #68]
 4476 001a 94F84640 		ldrb	r4, [r4, #70]	@ zero_extendqisi2
 4477 001e 3CB3     		cbz	r4, .L826
 4478              	.L861:
 4479 0020 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 4480              	.L827:
 4481 0022 FF2C     		cmp	r4, #255
 4482 0024 35D0     		beq	.L842
 4483              	.L837:
 4484 0026 012A     		cmp	r2, #1
 4485 0028 35D0     		beq	.L862
 4486              	.L839:
 4487 002a 023A     		subs	r2, r2, #2
 4488 002c 012A     		cmp	r2, #1
 4489 002e 4DD9     		bls	.L863
 4490 0030 0125     		movs	r5, #1
 4491              	.L840:
 4492 0032 4618     		adds	r6, r0, r1
 4493 0034 96F9953A 		ldrsb	r3, [r6, #2709]
 4494 0038 AB42     		cmp	r3, r5
 4495 003a 34D0     		beq	.L846
 4496              	.L866:
 4497 003c 2046     		mov	r0, r4
 4498 003e 2946     		mov	r1, r5
 4499 0040 FFF7FEFF 		bl	_ZN6IoPort10SetPinModeEh7PinMode
 4500 0044 86F8955A 		strb	r5, [r6, #2709]
 4501 0048 0120     		movs	r0, #1
 4502 004a 70BD     		pop	{r4, r5, r6, pc}
 4503              	.L825:
ARM GAS  /tmp/ccghtDyP.s 			page 80


 4504 004c A1F11404 		sub	r4, r1, #20
 4505 0050 A5B2     		uxth	r5, r4
 4506 0052 082D     		cmp	r5, #8
 4507 0054 13D8     		bhi	.L828
 4508 0056 2C25     		movs	r5, #44
 4509 0058 05FB0405 		mla	r5, r5, r4, r0
 4510 005c 95F8FE57 		ldrb	r5, [r5, #2046]	@ zero_extendqisi2
 4511 0060 FF2D     		cmp	r5, #255
 4512 0062 DDD1     		bne	.L861
 4513 0064 1629     		cmp	r1, #22
 4514 0066 4BD8     		bhi	.L864
 4515              	.L830:
 4516 0068 2C4D     		ldr	r5, .L868+4
 4517 006a 2C5D     		ldrb	r4, [r5, r4]	@ zero_extendqisi2
 4518 006c 1C70     		strb	r4, [r3]
 4519 006e D8E7     		b	.L827
 4520              	.L826:
 4521 0070 4418     		adds	r4, r0, r1
 4522 0072 0125     		movs	r5, #1
 4523 0074 94F8C047 		ldrb	r4, [r4, #1984]	@ zero_extendqisi2
 4524 0078 1C70     		strb	r4, [r3]
 4525 007a 3570     		strb	r5, [r6]
 4526 007c D0E7     		b	.L861
 4527              	.L828:
 4528 007e A1F12804 		sub	r4, r1, #40
 4529 0082 0B2C     		cmp	r4, #11
 4530 0084 11D8     		bhi	.L832
 4531 0086 3AB3     		cbz	r2, .L833
 4532 0088 012A     		cmp	r2, #1
 4533 008a 18D0     		beq	.L865
 4534              	.L831:
 4535 008c 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 4536 008e FF2C     		cmp	r4, #255
 4537 0090 CBD1     		bne	.L839
 4538              	.L842:
 4539 0092 0020     		movs	r0, #0
 4540 0094 70BD     		pop	{r4, r5, r6, pc}
 4541              	.L862:
 4542 0096 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 4543 0098 B3B1     		cbz	r3, .L841
 4544 009a 4618     		adds	r6, r0, r1
 4545 009c 0425     		movs	r5, #4
 4546 009e 96F9953A 		ldrsb	r3, [r6, #2709]
 4547 00a2 AB42     		cmp	r3, r5
 4548 00a4 CAD1     		bne	.L866
 4549              	.L846:
 4550 00a6 0120     		movs	r0, #1
 4551 00a8 70BD     		pop	{r4, r5, r6, pc}
 4552              	.L832:
 4553 00aa A1F13C04 		sub	r4, r1, #60
 4554 00ae 042C     		cmp	r4, #4
 4555 00b0 17D8     		bhi	.L835
 4556 00b2 1B4C     		ldr	r4, .L868+8
 4557 00b4 0C44     		add	r4, r4, r1
 4558 00b6 14F83C4C 		ldrb	r4, [r4, #-60]	@ zero_extendqisi2
 4559 00ba 1C70     		strb	r4, [r3]
 4560 00bc B1E7     		b	.L827
ARM GAS  /tmp/ccghtDyP.s 			page 81


 4561              	.L865:
 4562 00be 2C29     		cmp	r1, #44
 4563 00c0 0AD8     		bhi	.L833
 4564 00c2 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 4565 00c4 FF2C     		cmp	r4, #255
 4566 00c6 E4D0     		beq	.L842
 4567              	.L841:
 4568 00c8 0325     		movs	r5, #3
 4569 00ca B2E7     		b	.L840
 4570              	.L863:
 4571 00cc 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 4572 00ce 002B     		cmp	r3, #0
 4573 00d0 0CBF     		ite	eq
 4574 00d2 0725     		moveq	r5, #7
 4575 00d4 0825     		movne	r5, #8
 4576 00d6 ACE7     		b	.L840
 4577              	.L833:
 4578 00d8 4418     		adds	r4, r0, r1
 4579 00da 94F80A41 		ldrb	r4, [r4, #266]	@ zero_extendqisi2
 4580 00de 1C70     		strb	r4, [r3]
 4581 00e0 9FE7     		b	.L827
 4582              	.L835:
 4583 00e2 A1F16404 		sub	r4, r1, #100
 4584 00e6 032C     		cmp	r4, #3
 4585 00e8 0DD9     		bls	.L867
 4586 00ea A1F17804 		sub	r4, r1, #120
 4587 00ee 0F2C     		cmp	r4, #15
 4588 00f0 96D8     		bhi	.L861
 4589 00f2 032A     		cmp	r2, #3
 4590 00f4 CAD0     		beq	.L831
 4591 00f6 01F16404 		add	r4, r1, #100
 4592 00fa E4B2     		uxtb	r4, r4
 4593 00fc 1C70     		strb	r4, [r3]
 4594 00fe 92E7     		b	.L837
 4595              	.L864:
 4596 0100 032A     		cmp	r2, #3
 4597 0102 B1D1     		bne	.L830
 4598 0104 C2E7     		b	.L831
 4599              	.L867:
 4600 0106 032A     		cmp	r2, #3
 4601 0108 C0D0     		beq	.L831
 4602 010a 064C     		ldr	r4, .L868+12
 4603 010c 0C44     		add	r4, r4, r1
 4604 010e 14F8644C 		ldrb	r4, [r4, #-100]	@ zero_extendqisi2
 4605 0112 1C70     		strb	r4, [r3]
 4606 0114 85E7     		b	.L827
 4607              	.L869:
 4608 0116 00BF     		.align	2
 4609              	.L868:
 4610 0118 00000000 		.word	reprap
 4611 011c 00000000 		.word	.LANCHOR6
 4612 0120 00000000 		.word	.LANCHOR9
 4613 0124 00000000 		.word	.LANCHOR10
 4614              		.size	_ZN8Platform14GetFirmwarePinEt9PinAccessRhRb, .-_ZN8Platform14GetFirmwarePinEt9PinAccessRhRb
 4615              		.section	.text._ZN8Platform28SetExtrusionAncilliaryPwmPinEtb,"ax",%progbits
 4616              		.align	1
 4617              		.p2align 2,,3
ARM GAS  /tmp/ccghtDyP.s 			page 82


 4618              		.global	_ZN8Platform28SetExtrusionAncilliaryPwmPinEtb
 4619              		.syntax unified
 4620              		.thumb
 4621              		.thumb_func
 4622              		.fpu fpv4-sp-d16
 4623              		.type	_ZN8Platform28SetExtrusionAncilliaryPwmPinEtb, %function
 4624              	_ZN8Platform28SetExtrusionAncilliaryPwmPinEtb:
 4625              		@ args = 0, pretend = 0, frame = 0
 4626              		@ frame_needed = 0, uses_anonymous_args = 0
 4627              		@ link register save eliminated.
 4628 0000 1346     		mov	r3, r2
 4629 0002 00F68820 		addw	r0, r0, #2696
 4630 0006 0222     		movs	r2, #2
 4631 0008 FFF7FEBF 		b	_ZN6IoPort3SetEt9PinAccessb
 4632              		.size	_ZN8Platform28SetExtrusionAncilliaryPwmPinEtb, .-_ZN8Platform28SetExtrusionAncilliaryPwmPinE
 4633              		.section	.text._ZN8Platform11SetLaserPwmEf,"ax",%progbits
 4634              		.align	1
 4635              		.p2align 2,,3
 4636              		.global	_ZN8Platform11SetLaserPwmEf
 4637              		.syntax unified
 4638              		.thumb
 4639              		.thumb_func
 4640              		.fpu fpv4-sp-d16
 4641              		.type	_ZN8Platform11SetLaserPwmEf, %function
 4642              	_ZN8Platform11SetLaserPwmEf:
 4643              		@ args = 0, pretend = 0, frame = 0
 4644              		@ frame_needed = 0, uses_anonymous_args = 0
 4645              		@ link register save eliminated.
 4646 0000 00F68E20 		addw	r0, r0, #2702
 4647 0004 FFF7FEBF 		b	_ZNK7PwmPort11WriteAnalogEf
 4648              		.size	_ZN8Platform11SetLaserPwmEf, .-_ZN8Platform11SetLaserPwmEf
 4649              		.section	.text._ZN8Platform11SetLaserPinEtb,"ax",%progbits
 4650              		.align	1
 4651              		.p2align 2,,3
 4652              		.global	_ZN8Platform11SetLaserPinEtb
 4653              		.syntax unified
 4654              		.thumb
 4655              		.thumb_func
 4656              		.fpu fpv4-sp-d16
 4657              		.type	_ZN8Platform11SetLaserPinEtb, %function
 4658              	_ZN8Platform11SetLaserPinEtb:
 4659              		@ args = 0, pretend = 0, frame = 0
 4660              		@ frame_needed = 0, uses_anonymous_args = 0
 4661              		@ link register save eliminated.
 4662 0000 1346     		mov	r3, r2
 4663 0002 00F68E20 		addw	r0, r0, #2702
 4664 0006 0222     		movs	r2, #2
 4665 0008 FFF7FEBF 		b	_ZN6IoPort3SetEt9PinAccessb
 4666              		.size	_ZN8Platform11SetLaserPinEtb, .-_ZN8Platform11SetLaserPinEtb
 4667              		.section	.text._ZN8Platform20SetLaserPwmFrequencyEf,"ax",%progbits
 4668              		.align	1
 4669              		.p2align 2,,3
 4670              		.global	_ZN8Platform20SetLaserPwmFrequencyEf
 4671              		.syntax unified
 4672              		.thumb
 4673              		.thumb_func
 4674              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccghtDyP.s 			page 83


 4675              		.type	_ZN8Platform20SetLaserPwmFrequencyEf, %function
 4676              	_ZN8Platform20SetLaserPwmFrequencyEf:
 4677              		@ args = 0, pretend = 0, frame = 0
 4678              		@ frame_needed = 0, uses_anonymous_args = 0
 4679              		@ link register save eliminated.
 4680 0000 00F68E20 		addw	r0, r0, #2702
 4681 0004 FFF7FEBF 		b	_ZN7PwmPort12SetFrequencyEf
 4682              		.size	_ZN8Platform20SetLaserPwmFrequencyEf, .-_ZN8Platform20SetLaserPwmFrequencyEf
 4683              		.section	.text._ZNK8Platform13GetEndstopPinEi,"ax",%progbits
 4684              		.align	1
 4685              		.p2align 2,,3
 4686              		.global	_ZNK8Platform13GetEndstopPinEi
 4687              		.syntax unified
 4688              		.thumb
 4689              		.thumb_func
 4690              		.fpu fpv4-sp-d16
 4691              		.type	_ZNK8Platform13GetEndstopPinEi, %function
 4692              	_ZNK8Platform13GetEndstopPinEi:
 4693              		@ args = 0, pretend = 0, frame = 0
 4694              		@ frame_needed = 0, uses_anonymous_args = 0
 4695              		@ link register save eliminated.
 4696 0000 0B29     		cmp	r1, #11
 4697 0002 9ABF     		itte	ls
 4698 0004 4018     		addls	r0, r0, r1
 4699 0006 90F83201 		ldrbls	r0, [r0, #306]	@ zero_extendqisi2
 4700 000a FF20     		movhi	r0, #255
 4701 000c 7047     		bx	lr
 4702              		.size	_ZNK8Platform13GetEndstopPinEi, .-_ZNK8Platform13GetEndstopPinEi
 4703 000e 00BF     		.section	.text._ZN8Platform14SetAxisMaximumEjfb,"ax",%progbits
 4704              		.align	1
 4705              		.p2align 2,,3
 4706              		.global	_ZN8Platform14SetAxisMaximumEjfb
 4707              		.syntax unified
 4708              		.thumb
 4709              		.thumb_func
 4710              		.fpu fpv4-sp-d16
 4711              		.type	_ZN8Platform14SetAxisMaximumEjfb, %function
 4712              	_ZN8Platform14SetAxisMaximumEjfb:
 4713              		@ args = 0, pretend = 0, frame = 0
 4714              		@ frame_needed = 0, uses_anonymous_args = 0
 4715              		@ link register save eliminated.
 4716 0000 01F5E473 		add	r3, r1, #456
 4717 0004 00EB8303 		add	r3, r0, r3, lsl #2
 4718 0008 83ED000A 		vstr.32	s0, [r3]
 4719 000c 3AB1     		cbz	r2, .L877
 4720 000e D0F86C37 		ldr	r3, [r0, #1900]
 4721 0012 0122     		movs	r2, #1
 4722 0014 02FA01F1 		lsl	r1, r2, r1
 4723 0018 0B43     		orrs	r3, r3, r1
 4724 001a C0F86C37 		str	r3, [r0, #1900]
 4725              	.L877:
 4726 001e 7047     		bx	lr
 4727              		.size	_ZN8Platform14SetAxisMaximumEjfb, .-_ZN8Platform14SetAxisMaximumEjfb
 4728              		.section	.text._ZN8Platform14SetAxisMinimumEjfb,"ax",%progbits
 4729              		.align	1
 4730              		.p2align 2,,3
 4731              		.global	_ZN8Platform14SetAxisMinimumEjfb
ARM GAS  /tmp/ccghtDyP.s 			page 84


 4732              		.syntax unified
 4733              		.thumb
 4734              		.thumb_func
 4735              		.fpu fpv4-sp-d16
 4736              		.type	_ZN8Platform14SetAxisMinimumEjfb, %function
 4737              	_ZN8Platform14SetAxisMinimumEjfb:
 4738              		@ args = 0, pretend = 0, frame = 0
 4739              		@ frame_needed = 0, uses_anonymous_args = 0
 4740              		@ link register save eliminated.
 4741 0000 01F5E873 		add	r3, r1, #464
 4742 0004 00EB8303 		add	r3, r0, r3, lsl #2
 4743 0008 83ED010A 		vstr.32	s0, [r3, #4]
 4744 000c 3AB1     		cbz	r2, .L882
 4745 000e D0F86837 		ldr	r3, [r0, #1896]
 4746 0012 0122     		movs	r2, #1
 4747 0014 02FA01F1 		lsl	r1, r2, r1
 4748 0018 0B43     		orrs	r3, r3, r1
 4749 001a C0F86837 		str	r3, [r0, #1896]
 4750              	.L882:
 4751 001e 7047     		bx	lr
 4752              		.size	_ZN8Platform14SetAxisMinimumEjfb, .-_ZN8Platform14SetAxisMinimumEjfb
 4753              		.section	.text._ZNK8Platform18GetMcuTemperaturesERfS0_S0_,"ax",%progbits
 4754              		.align	1
 4755              		.p2align 2,,3
 4756              		.global	_ZNK8Platform18GetMcuTemperaturesERfS0_S0_
 4757              		.syntax unified
 4758              		.thumb
 4759              		.thumb_func
 4760              		.fpu fpv4-sp-d16
 4761              		.type	_ZNK8Platform18GetMcuTemperaturesERfS0_S0_, %function
 4762              	_ZNK8Platform18GetMcuTemperaturesERfS0_S0_:
 4763              		@ args = 0, pretend = 0, frame = 0
 4764              		@ frame_needed = 0, uses_anonymous_args = 0
 4765              		@ link register save eliminated.
 4766 0000 10B4     		push	{r4}
 4767 0002 D0F80C47 		ldr	r4, [r0, #1804]
 4768 0006 9FED247A 		vldr.32	s14, .L889
 4769 000a 9FED246A 		vldr.32	s12, .L889+4
 4770 000e DFED246A 		vldr.32	s13, .L889+8
 4771 0012 05EE904A 		vmov	s11, r4	@ int
 4772 0016 D0F81847 		ldr	r4, [r0, #1816]
 4773 001a 07EE904A 		vmov	s15, r4	@ int
 4774 001e B8EE675A 		vcvt.f32.u32	s10, s15
 4775 0022 F0EE474A 		vmov.f32	s9, s14
 4776 0026 E5EE064A 		vfma.f32	s9, s10, s12
 4777 002a 00F21C74 		addw	r4, r0, #1820
 4778 002e F3EE0B7A 		vmov.f32	s15, #2.7e+1
 4779 0032 B0EE645A 		vmov.f32	s10, s9
 4780 0036 F0EE674A 		vmov.f32	s9, s15
 4781 003a E5EE264A 		vfma.f32	s9, s10, s13
 4782 003e F8EE655A 		vcvt.f32.u32	s11, s11
 4783 0042 B0EE645A 		vmov.f32	s10, s9
 4784 0046 F0EE474A 		vmov.f32	s9, s14
 4785 004a E5EE864A 		vfma.f32	s9, s11, s12
 4786 004e F0EE645A 		vmov.f32	s11, s9
 4787 0052 D4ED004A 		vldr.32	s9, [r4]
 4788 0056 35EE245A 		vadd.f32	s10, s10, s9
ARM GAS  /tmp/ccghtDyP.s 			page 85


 4789 005a F0EE674A 		vmov.f32	s9, s15
 4790 005e E5EEA64A 		vfma.f32	s9, s11, s13
 4791 0062 81ED005A 		vstr.32	s10, [r1]
 4792 0066 94ED005A 		vldr.32	s10, [r4]
 4793 006a 74EE855A 		vadd.f32	s11, s9, s10
 4794 006e C2ED005A 		vstr.32	s11, [r2]
 4795 0072 D0F81427 		ldr	r2, [r0, #1812]
 4796 0076 94ED005A 		vldr.32	s10, [r4]
 4797 007a 5DF8044B 		ldr	r4, [sp], #4
 4798 007e 05EE902A 		vmov	s11, r2	@ int
 4799 0082 F8EE655A 		vcvt.f32.u32	s11, s11
 4800 0086 A5EE867A 		vfma.f32	s14, s11, s12
 4801 008a E7EE267A 		vfma.f32	s15, s14, s13
 4802 008e 77EE857A 		vadd.f32	s15, s15, s10
 4803 0092 C3ED007A 		vstr.32	s15, [r3]
 4804 0096 7047     		bx	lr
 4805              	.L890:
 4806              		.align	2
 4807              	.L889:
 4808 0098 EC51B8BF 		.word	3216527852
 4809 009c 3333D337 		.word	936588083
 4810 00a0 16C45443 		.word	1129628694
 4811              		.size	_ZNK8Platform18GetMcuTemperaturesERfS0_S0_, .-_ZNK8Platform18GetMcuTemperaturesERfS0_S0_
 4812              		.section	.text._ZNK8Platform16GetPowerVoltagesERfS0_S0_,"ax",%progbits
 4813              		.align	1
 4814              		.p2align 2,,3
 4815              		.global	_ZNK8Platform16GetPowerVoltagesERfS0_S0_
 4816              		.syntax unified
 4817              		.thumb
 4818              		.thumb_func
 4819              		.fpu fpv4-sp-d16
 4820              		.type	_ZNK8Platform16GetPowerVoltagesERfS0_S0_, %function
 4821              	_ZNK8Platform16GetPowerVoltagesERfS0_S0_:
 4822              		@ args = 0, pretend = 0, frame = 0
 4823              		@ frame_needed = 0, uses_anonymous_args = 0
 4824              		@ link register save eliminated.
 4825 0000 B0F8DAC9 		ldrh	ip, [r0, #2522]
 4826 0004 DFED0F6A 		vldr.32	s13, .L892
 4827 0008 07EE10CA 		vmov	s14, ip	@ int
 4828 000c B8EEC77A 		vcvt.f32.s32	s14, s14
 4829 0010 27EE267A 		vmul.f32	s14, s14, s13
 4830 0014 81ED007A 		vstr.32	s14, [r1]
 4831 0018 B0F8D619 		ldrh	r1, [r0, #2518]
 4832 001c 07EE101A 		vmov	s14, r1	@ int
 4833 0020 B8EEC77A 		vcvt.f32.s32	s14, s14
 4834 0024 27EE267A 		vmul.f32	s14, s14, s13
 4835 0028 82ED007A 		vstr.32	s14, [r2]
 4836 002c B0F8D829 		ldrh	r2, [r0, #2520]
 4837 0030 07EE902A 		vmov	s15, r2	@ int
 4838 0034 F8EEE77A 		vcvt.f32.s32	s15, s15
 4839 0038 67EEA67A 		vmul.f32	s15, s15, s13
 4840 003c C3ED007A 		vstr.32	s15, [r3]
 4841 0040 7047     		bx	lr
 4842              	.L893:
 4843 0042 00BF     		.align	2
 4844              	.L892:
 4845 0044 3333113C 		.word	1007760179
ARM GAS  /tmp/ccghtDyP.s 			page 86


 4846              		.size	_ZNK8Platform16GetPowerVoltagesERfS0_S0_, .-_ZNK8Platform16GetPowerVoltagesERfS0_S0_
 4847              		.section	.text._ZNK8Platform22GetCurrentPowerVoltageEv,"ax",%progbits
 4848              		.align	1
 4849              		.p2align 2,,3
 4850              		.global	_ZNK8Platform22GetCurrentPowerVoltageEv
 4851              		.syntax unified
 4852              		.thumb
 4853              		.thumb_func
 4854              		.fpu fpv4-sp-d16
 4855              		.type	_ZNK8Platform22GetCurrentPowerVoltageEv, %function
 4856              	_ZNK8Platform22GetCurrentPowerVoltageEv:
 4857              		@ args = 0, pretend = 0, frame = 0
 4858              		@ frame_needed = 0, uses_anonymous_args = 0
 4859              		@ link register save eliminated.
 4860 0000 B0F8D639 		ldrh	r3, [r0, #2518]
 4861 0004 DFED047A 		vldr.32	s15, .L895
 4862 0008 00EE103A 		vmov	s0, r3	@ int
 4863 000c B8EEC00A 		vcvt.f32.s32	s0, s0
 4864 0010 20EE270A 		vmul.f32	s0, s0, s15
 4865 0014 7047     		bx	lr
 4866              	.L896:
 4867 0016 00BF     		.align	2
 4868              	.L895:
 4869 0018 3333113C 		.word	1007760179
 4870              		.size	_ZNK8Platform22GetCurrentPowerVoltageEv, .-_ZNK8Platform22GetCurrentPowerVoltageEv
 4871              		.section	.text._ZNK8Platform24GetTmcDriversTemperatureEj,"ax",%progbits
 4872              		.align	1
 4873              		.p2align 2,,3
 4874              		.global	_ZNK8Platform24GetTmcDriversTemperatureEj
 4875              		.syntax unified
 4876              		.thumb
 4877              		.thumb_func
 4878              		.fpu fpv4-sp-d16
 4879              		.type	_ZNK8Platform24GetTmcDriversTemperatureEj, %function
 4880              	_ZNK8Platform24GetTmcDriversTemperatureEj:
 4881              		@ args = 0, pretend = 0, frame = 0
 4882              		@ frame_needed = 0, uses_anonymous_args = 0
 4883              		@ link register save eliminated.
 4884 0000 1F23     		movs	r3, #31
 4885 0002 01EB8101 		add	r1, r1, r1, lsl #2
 4886 0006 03FA01F1 		lsl	r1, r3, r1
 4887 000a D0F8C833 		ldr	r3, [r0, #968]
 4888 000e 89B2     		uxth	r1, r1
 4889 0010 1942     		tst	r1, r3
 4890 0012 0AD1     		bne	.L899
 4891 0014 D0F8CC33 		ldr	r3, [r0, #972]
 4892 0018 DFED057A 		vldr.32	s15, .L901
 4893 001c 9FED050A 		vldr.32	s0, .L901+4
 4894 0020 1942     		tst	r1, r3
 4895 0022 08BF     		it	eq
 4896 0024 B0EE670A 		vmoveq.f32	s0, s15
 4897 0028 7047     		bx	lr
 4898              	.L899:
 4899 002a 9FED030A 		vldr.32	s0, .L901+8
 4900 002e 7047     		bx	lr
 4901              	.L902:
 4902              		.align	2
ARM GAS  /tmp/ccghtDyP.s 			page 87


 4903              	.L901:
 4904 0030 00000000 		.word	0
 4905 0034 0000C842 		.word	1120403456
 4906 0038 00001643 		.word	1125515264
 4907              		.size	_ZNK8Platform24GetTmcDriversTemperatureEj, .-_ZNK8Platform24GetTmcDriversTemperatureEj
 4908              		.section	.text._ZN8Platform23ConfigureStallDetectionER11GCodeBufferRK9StringRef,"ax",%progbits
 4909              		.align	1
 4910              		.p2align 2,,3
 4911              		.global	_ZN8Platform23ConfigureStallDetectionER11GCodeBufferRK9StringRef
 4912              		.syntax unified
 4913              		.thumb
 4914              		.thumb_func
 4915              		.fpu fpv4-sp-d16
 4916              		.type	_ZN8Platform23ConfigureStallDetectionER11GCodeBufferRK9StringRef, %function
 4917              	_ZN8Platform23ConfigureStallDetectionER11GCodeBufferRK9StringRef:
 4918              		@ args = 0, pretend = 0, frame = 56
 4919              		@ frame_needed = 0, uses_anonymous_args = 0
 4920 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 4921 0004 0D46     		mov	r5, r1
 4922 0006 8FB0     		sub	sp, sp, #60
 4923 0008 0646     		mov	r6, r0
 4924 000a 5021     		movs	r1, #80
 4925 000c 2846     		mov	r0, r5
 4926 000e 9146     		mov	r9, r2
 4927 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4928 0014 0746     		mov	r7, r0
 4929 0016 0028     		cmp	r0, #0
 4930 0018 40F0C980 		bne	.L998
 4931 001c 0446     		mov	r4, r0
 4932              	.L904:
 4933 001e DFF85483 		ldr	r8, .L1006+20
 4934 0022 D8F81030 		ldr	r3, [r8, #16]
 4935 0026 D3F89822 		ldr	r2, [r3, #664]
 4936 002a 82B3     		cbz	r2, .L910
 4937 002c 4FF0000B 		mov	fp, #0
 4938 0030 06F53F7A 		add	r10, r6, #764
 4939 0034 0127     		movs	r7, #1
 4940 0036 07E0     		b	.L913
 4941              	.L911:
 4942 0038 D8F81030 		ldr	r3, [r8, #16]
 4943 003c D3F89822 		ldr	r2, [r3, #664]
 4944 0040 0BF1010B 		add	fp, fp, #1
 4945 0044 5A45     		cmp	r2, fp
 4946 0046 22D9     		bls	.L910
 4947              	.L913:
 4948 0048 5B44     		add	r3, r3, fp
 4949 004a 2846     		mov	r0, r5
 4950 004c 93F85A14 		ldrb	r1, [r3, #1114]	@ zero_extendqisi2
 4951 0050 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4952 0054 0028     		cmp	r0, #0
 4953 0056 EFD0     		beq	.L911
 4954 0058 4FEACB02 		lsl	r2, fp, #3
 4955 005c B118     		adds	r1, r6, r2
 4956 005e D1F8F832 		ldr	r3, [r1, #760]
 4957 0062 002B     		cmp	r3, #0
 4958 0064 E8D0     		beq	.L911
 4959 0066 1944     		add	r1, r1, r3
ARM GAS  /tmp/ccghtDyP.s 			page 88


 4960 0068 01F53F71 		add	r1, r1, #764
 4961 006c 5244     		add	r2, r2, r10
 4962              	.L912:
 4963 006e 12F8013B 		ldrb	r3, [r2], #1	@ zero_extendqisi2
 4964 0072 07FA03F3 		lsl	r3, r7, r3
 4965 0076 9142     		cmp	r1, r2
 4966 0078 44EA0304 		orr	r4, r4, r3
 4967 007c F7D1     		bne	.L912
 4968 007e D8F81030 		ldr	r3, [r8, #16]
 4969 0082 D3F89822 		ldr	r2, [r3, #664]
 4970 0086 0BF1010B 		add	fp, fp, #1
 4971 008a 5A45     		cmp	r2, fp
 4972 008c DCD8     		bhi	.L913
 4973              	.L910:
 4974 008e 5321     		movs	r1, #83
 4975 0090 2846     		mov	r0, r5
 4976 0092 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4977 0096 0746     		mov	r7, r0
 4978 0098 0028     		cmp	r0, #0
 4979 009a 40F0B980 		bne	.L999
 4980              	.L914:
 4981 009e 4621     		movs	r1, #70
 4982 00a0 2846     		mov	r0, r5
 4983 00a2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4984 00a6 8246     		mov	r10, r0
 4985 00a8 0028     		cmp	r0, #0
 4986 00aa 40F00281 		bne	.L1000
 4987              	.L918:
 4988 00ae 4821     		movs	r1, #72
 4989 00b0 2846     		mov	r0, r5
 4990 00b2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4991 00b6 8246     		mov	r10, r0
 4992 00b8 0028     		cmp	r0, #0
 4993 00ba 40F0DF80 		bne	.L1001
 4994              	.L922:
 4995 00be 5421     		movs	r1, #84
 4996 00c0 2846     		mov	r0, r5
 4997 00c2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4998 00c6 0028     		cmp	r0, #0
 4999 00c8 40F0BE80 		bne	.L1002
 5000 00cc 5221     		movs	r1, #82
 5001 00ce 2846     		mov	r0, r5
 5002 00d0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5003 00d4 0028     		cmp	r0, #0
 5004 00d6 49D1     		bne	.L941
 5005 00d8 002F     		cmp	r7, #0
 5006 00da 63D1     		bne	.L935
 5007 00dc D6F8C433 		ldr	r3, [r6, #964]
 5008 00e0 002C     		cmp	r4, #0
 5009 00e2 00F00681 		beq	.L1003
 5010              	.L936:
 5011 00e6 002B     		cmp	r3, #0
 5012 00e8 5CD0     		beq	.L935
 5013 00ea DFF88C82 		ldr	r8, .L1006+24
 5014 00ee 9C4D     		ldr	r5, .L1006
 5015 00f0 DFF888A2 		ldr	r10, .L1006+28
 5016 00f4 4FF0000B 		mov	fp, #0
ARM GAS  /tmp/ccghtDyP.s 			page 89


 5017 00f8 1CE0     		b	.L940
 5018              	.L1005:
 5019 00fa D6F8E833 		ldr	r3, [r6, #1000]
 5020 00fe 9948     		ldr	r0, .L1006+4
 5021 0100 9949     		ldr	r1, .L1006+8
 5022 0102 9A4A     		ldr	r2, .L1006+12
 5023 0104 23FA0BF3 		lsr	r3, r3, fp
 5024 0108 DB07     		lsls	r3, r3, #31
 5025 010a 08D4     		bmi	.L939
 5026 010c D6F8E433 		ldr	r3, [r6, #996]
 5027 0110 23FA0BF3 		lsr	r3, r3, fp
 5028 0114 13F0010F 		tst	r3, #1
 5029 0118 0CBF     		ite	eq
 5030 011a 0246     		moveq	r2, r0
 5031 011c 0A46     		movne	r2, r1
 5032              	.L939:
 5033 011e 2946     		mov	r1, r5
 5034 0120 4846     		mov	r0, r9
 5035 0122 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 5036 0126 D6F8C433 		ldr	r3, [r6, #964]
 5037 012a 0127     		movs	r7, #1
 5038              	.L937:
 5039 012c 0BF1010B 		add	fp, fp, #1
 5040 0130 5B45     		cmp	r3, fp
 5041 0132 37D9     		bls	.L935
 5042              	.L940:
 5043 0134 24FA0BF2 		lsr	r2, r4, fp
 5044 0138 D107     		lsls	r1, r2, #31
 5045 013a F7D5     		bpl	.L937
 5046 013c 002F     		cmp	r7, #0
 5047 013e 62D1     		bne	.L1004
 5048              	.L938:
 5049 0140 5A46     		mov	r2, fp
 5050 0142 4146     		mov	r1, r8
 5051 0144 4846     		mov	r0, r9
 5052 0146 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 5053 014a 4946     		mov	r1, r9
 5054 014c 5846     		mov	r0, fp
 5055 014e FFF7FEFF 		bl	_ZN12SmartDrivers17AppendStallConfigEjRK9StringRef
 5056 0152 D6F8EC33 		ldr	r3, [r6, #1004]
 5057 0156 23FA0BF3 		lsr	r3, r3, fp
 5058 015a DA07     		lsls	r2, r3, #31
 5059 015c CDD5     		bpl	.L1005
 5060 015e 5246     		mov	r2, r10
 5061 0160 DDE7     		b	.L939
 5062              	.L927:
 5063 0162 5221     		movs	r1, #82
 5064 0164 2846     		mov	r0, r5
 5065 0166 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5066 016a D8B1     		cbz	r0, .L935
 5067              	.L941:
 5068 016c 2846     		mov	r0, r5
 5069 016e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5070 0172 0228     		cmp	r0, #2
 5071 0174 6FEA0403 		mvn	r3, r4
 5072 0178 00F0CD80 		beq	.L932
 5073 017c 0328     		cmp	r0, #3
ARM GAS  /tmp/ccghtDyP.s 			page 90


 5074 017e 00F0BC80 		beq	.L933
 5075 0182 0128     		cmp	r0, #1
 5076 0184 00F0D880 		beq	.L934
 5077 0188 06F57970 		add	r0, r6, #996
 5078 018c 07C8     		ldm	r0, {r0, r1, r2}
 5079 018e 1840     		ands	r0, r0, r3
 5080 0190 1940     		ands	r1, r1, r3
 5081 0192 1340     		ands	r3, r3, r2
 5082 0194 C6F8E403 		str	r0, [r6, #996]
 5083 0198 C6F8E813 		str	r1, [r6, #1000]
 5084 019c C6F8EC33 		str	r3, [r6, #1004]
 5085 01a0 0027     		movs	r7, #0
 5086 01a2 00E0     		b	.L996
 5087              	.L935:
 5088 01a4 0027     		movs	r7, #0
 5089              	.L996:
 5090 01a6 3846     		mov	r0, r7
 5091 01a8 0FB0     		add	sp, sp, #60
 5092              		@ sp needed
 5093 01aa BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 5094              	.L998:
 5095 01ae 0EAA     		add	r2, sp, #56
 5096 01b0 0C23     		movs	r3, #12
 5097 01b2 0DF10808 		add	r8, sp, #8
 5098 01b6 42F8343D 		str	r3, [r2, #-52]!
 5099 01ba 4146     		mov	r1, r8
 5100 01bc 0023     		movs	r3, #0
 5101 01be 2846     		mov	r0, r5
 5102 01c0 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 5103 01c4 0199     		ldr	r1, [sp, #4]
 5104 01c6 0029     		cmp	r1, #0
 5105 01c8 00F0C780 		beq	.L943
 5106 01cc 029A     		ldr	r2, [sp, #8]
 5107 01ce D6F8C403 		ldr	r0, [r6, #964]
 5108 01d2 9042     		cmp	r0, r2
 5109 01d4 0FD9     		bls	.L906
 5110 01d6 0024     		movs	r4, #0
 5111 01d8 2346     		mov	r3, r4
 5112 01da 4FF0010C 		mov	ip, #1
 5113              	.L907:
 5114 01de 0133     		adds	r3, r3, #1
 5115 01e0 0CFA02F2 		lsl	r2, ip, r2
 5116 01e4 8B42     		cmp	r3, r1
 5117 01e6 44EA0204 		orr	r4, r4, r2
 5118 01ea 3FF418AF 		beq	.L904
 5119 01ee 58F82320 		ldr	r2, [r8, r3, lsl #2]
 5120 01f2 8242     		cmp	r2, r0
 5121 01f4 F3D3     		bcc	.L907
 5122              	.L906:
 5123 01f6 4846     		mov	r0, r9
 5124 01f8 5D49     		ldr	r1, .L1006+16
 5125 01fa FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 5126 01fe 3846     		mov	r0, r7
 5127 0200 0FB0     		add	sp, sp, #60
 5128              		@ sp needed
 5129 0202 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 5130              	.L1004:
ARM GAS  /tmp/ccghtDyP.s 			page 91


 5131 0206 0A21     		movs	r1, #10
 5132 0208 4846     		mov	r0, r9
 5133 020a FFF7FEFF 		bl	_ZNK9StringRef3catEc
 5134 020e 97E7     		b	.L938
 5135              	.L999:
 5136 0210 2846     		mov	r0, r5
 5137 0212 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5138 0216 D6F8C433 		ldr	r3, [r6, #964]
 5139 021a 8246     		mov	r10, r0
 5140 021c 002B     		cmp	r3, #0
 5141 021e 3FF43EAF 		beq	.L914
 5142 0222 4FF00008 		mov	r8, #0
 5143 0226 04E0     		b	.L915
 5144              	.L916:
 5145 0228 08F10108 		add	r8, r8, #1
 5146 022c 4345     		cmp	r3, r8
 5147 022e 7FF636AF 		bls	.L914
 5148              	.L915:
 5149 0232 24FA08F2 		lsr	r2, r4, r8
 5150 0236 D007     		lsls	r0, r2, #31
 5151 0238 F6D5     		bpl	.L916
 5152 023a 5146     		mov	r1, r10
 5153 023c 4046     		mov	r0, r8
 5154 023e FFF7FEFF 		bl	_ZN12SmartDrivers17SetStallThresholdEji
 5155 0242 D6F8C433 		ldr	r3, [r6, #964]
 5156 0246 EFE7     		b	.L916
 5157              	.L1002:
 5158 0248 2846     		mov	r0, r5
 5159 024a FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 5160 024e D6F8C433 		ldr	r3, [r6, #964]
 5161 0252 1FFA80F8 		uxth	r8, r0
 5162 0256 002B     		cmp	r3, #0
 5163 0258 83D0     		beq	.L927
 5164 025a 0027     		movs	r7, #0
 5165 025c 03E0     		b	.L929
 5166              	.L928:
 5167 025e 0137     		adds	r7, r7, #1
 5168 0260 BB42     		cmp	r3, r7
 5169 0262 7FF67EAF 		bls	.L927
 5170              	.L929:
 5171 0266 24FA07F2 		lsr	r2, r4, r7
 5172 026a D007     		lsls	r0, r2, #31
 5173 026c F7D5     		bpl	.L928
 5174 026e 4146     		mov	r1, r8
 5175 0270 3846     		mov	r0, r7
 5176 0272 FFF7FEFF 		bl	_ZN12SmartDrivers11SetCoolStepEjt
 5177 0276 D6F8C433 		ldr	r3, [r6, #964]
 5178 027a F0E7     		b	.L928
 5179              	.L1001:
 5180 027c 2846     		mov	r0, r5
 5181 027e FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 5182 0282 D6F8C433 		ldr	r3, [r6, #964]
 5183 0286 8046     		mov	r8, r0
 5184 0288 8BB1     		cbz	r3, .L925
 5185 028a 0027     		movs	r7, #0
 5186 028c 02E0     		b	.L923
 5187              	.L924:
ARM GAS  /tmp/ccghtDyP.s 			page 92


 5188 028e 0137     		adds	r7, r7, #1
 5189 0290 BB42     		cmp	r3, r7
 5190 0292 0CD9     		bls	.L925
 5191              	.L923:
 5192 0294 24FA07F2 		lsr	r2, r4, r7
 5193 0298 D207     		lsls	r2, r2, #31
 5194 029a F8D5     		bpl	.L924
 5195 029c 3846     		mov	r0, r7
 5196 029e 4146     		mov	r1, r8
 5197 02a0 FFF7FEFF 		bl	_ZN12SmartDrivers29SetStallMinimumStepsPerSecondEjj
 5198 02a4 D6F8C433 		ldr	r3, [r6, #964]
 5199 02a8 0137     		adds	r7, r7, #1
 5200 02aa BB42     		cmp	r3, r7
 5201 02ac F2D8     		bhi	.L923
 5202              	.L925:
 5203 02ae 5746     		mov	r7, r10
 5204 02b0 05E7     		b	.L922
 5205              	.L1000:
 5206 02b2 2846     		mov	r0, r5
 5207 02b4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5208 02b8 D6F8C433 		ldr	r3, [r6, #964]
 5209 02bc A0F10108 		sub	r8, r0, #1
 5210 02c0 B8FA88F8 		clz	r8, r8
 5211 02c4 4FEA5818 		lsr	r8, r8, #5
 5212 02c8 8BB1     		cbz	r3, .L921
 5213 02ca 0027     		movs	r7, #0
 5214 02cc 02E0     		b	.L919
 5215              	.L920:
 5216 02ce 0137     		adds	r7, r7, #1
 5217 02d0 BB42     		cmp	r3, r7
 5218 02d2 0CD9     		bls	.L921
 5219              	.L919:
 5220 02d4 24FA07F2 		lsr	r2, r4, r7
 5221 02d8 D107     		lsls	r1, r2, #31
 5222 02da F8D5     		bpl	.L920
 5223 02dc 3846     		mov	r0, r7
 5224 02de 4146     		mov	r1, r8
 5225 02e0 FFF7FEFF 		bl	_ZN12SmartDrivers14SetStallFilterEjb
 5226 02e4 D6F8C433 		ldr	r3, [r6, #964]
 5227 02e8 0137     		adds	r7, r7, #1
 5228 02ea BB42     		cmp	r3, r7
 5229 02ec F2D8     		bhi	.L919
 5230              	.L921:
 5231 02ee 5746     		mov	r7, r10
 5232 02f0 DDE6     		b	.L918
 5233              	.L1003:
 5234 02f2 0124     		movs	r4, #1
 5235 02f4 9C40     		lsls	r4, r4, r3
 5236 02f6 013C     		subs	r4, r4, #1
 5237 02f8 F5E6     		b	.L936
 5238              	.L933:
 5239 02fa 06F57970 		add	r0, r6, #996
 5240 02fe 07C8     		ldm	r0, {r0, r1, r2}
 5241 0300 1840     		ands	r0, r0, r3
 5242 0302 2243     		orrs	r2, r2, r4
 5243 0304 0B40     		ands	r3, r3, r1
 5244 0306 C6F8E403 		str	r0, [r6, #996]
ARM GAS  /tmp/ccghtDyP.s 			page 93


 5245 030a C6F8E833 		str	r3, [r6, #1000]
 5246 030e C6F8EC23 		str	r2, [r6, #1004]
 5247 0312 0027     		movs	r7, #0
 5248 0314 47E7     		b	.L996
 5249              	.L932:
 5250 0316 D6F8E403 		ldr	r0, [r6, #996]
 5251 031a D6F8EC13 		ldr	r1, [r6, #1004]
 5252 031e D6F8E823 		ldr	r2, [r6, #1000]
 5253 0322 1840     		ands	r0, r0, r3
 5254 0324 2243     		orrs	r2, r2, r4
 5255 0326 0B40     		ands	r3, r3, r1
 5256 0328 C6F8E403 		str	r0, [r6, #996]
 5257 032c C6F8EC33 		str	r3, [r6, #1004]
 5258 0330 C6F8E823 		str	r2, [r6, #1000]
 5259 0334 0027     		movs	r7, #0
 5260 0336 36E7     		b	.L996
 5261              	.L934:
 5262 0338 D6F8EC03 		ldr	r0, [r6, #1004]
 5263 033c D6F8E813 		ldr	r1, [r6, #1000]
 5264 0340 D6F8E423 		ldr	r2, [r6, #996]
 5265 0344 1840     		ands	r0, r0, r3
 5266 0346 2243     		orrs	r2, r2, r4
 5267 0348 0B40     		ands	r3, r3, r1
 5268 034a C6F8EC03 		str	r0, [r6, #1004]
 5269 034e C6F8E833 		str	r3, [r6, #1000]
 5270 0352 C6F8E423 		str	r2, [r6, #996]
 5271 0356 0027     		movs	r7, #0
 5272 0358 25E7     		b	.L996
 5273              	.L943:
 5274 035a 0C46     		mov	r4, r1
 5275 035c 5FE6     		b	.L904
 5276              	.L1007:
 5277 035e 00BF     		.align	2
 5278              	.L1006:
 5279 0360 44000000 		.word	.LC30
 5280 0364 08000000 		.word	.LC25
 5281 0368 18000000 		.word	.LC27
 5282 036c 10000000 		.word	.LC26
 5283 0370 1C000000 		.word	.LC28
 5284 0374 00000000 		.word	reprap
 5285 0378 38000000 		.word	.LC29
 5286 037c 00000000 		.word	.LC24
 5287              		.size	_ZN8Platform23ConfigureStallDetectionER11GCodeBufferRK9StringRef, .-_ZN8Platform23ConfigureS
 5288              		.section	.text._ZNK8Platform13IsDateTimeSetEv,"ax",%progbits
 5289              		.align	1
 5290              		.p2align 2,,3
 5291              		.global	_ZNK8Platform13IsDateTimeSetEv
 5292              		.syntax unified
 5293              		.thumb
 5294              		.thumb_func
 5295              		.fpu fpv4-sp-d16
 5296              		.type	_ZNK8Platform13IsDateTimeSetEv, %function
 5297              	_ZNK8Platform13IsDateTimeSetEv:
 5298              		@ args = 0, pretend = 0, frame = 0
 5299              		@ frame_needed = 0, uses_anonymous_args = 0
 5300              		@ link register save eliminated.
 5301 0000 D0F8F829 		ldr	r2, [r0, #2552]
ARM GAS  /tmp/ccghtDyP.s 			page 94


 5302 0004 D0F8FC39 		ldr	r3, [r0, #2556]
 5303 0008 1343     		orrs	r3, r2, r3
 5304 000a 14BF     		ite	ne
 5305 000c 0120     		movne	r0, #1
 5306 000e 0020     		moveq	r0, #0
 5307 0010 7047     		bx	lr
 5308              		.size	_ZNK8Platform13IsDateTimeSetEv, .-_ZNK8Platform13IsDateTimeSetEv
 5309 0012 00BF     		.section	.text._ZNK8Platform11GetDateTimeEv,"ax",%progbits
 5310              		.align	1
 5311              		.p2align 2,,3
 5312              		.global	_ZNK8Platform11GetDateTimeEv
 5313              		.syntax unified
 5314              		.thumb
 5315              		.thumb_func
 5316              		.fpu fpv4-sp-d16
 5317              		.type	_ZNK8Platform11GetDateTimeEv, %function
 5318              	_ZNK8Platform11GetDateTimeEv:
 5319              		@ args = 0, pretend = 0, frame = 0
 5320              		@ frame_needed = 0, uses_anonymous_args = 0
 5321              		@ link register save eliminated.
 5322 0000 00F6F810 		addw	r0, r0, #2552
 5323 0004 D0E90001 		ldrd	r0, [r0]
 5324 0008 7047     		bx	lr
 5325              		.size	_ZNK8Platform11GetDateTimeEv, .-_ZNK8Platform11GetDateTimeEv
 5326 000a 00BF     		.section	.text._ZN8Platform7InitI2cEv,"ax",%progbits
 5327              		.align	1
 5328              		.p2align 2,,3
 5329              		.global	_ZN8Platform7InitI2cEv
 5330              		.syntax unified
 5331              		.thumb
 5332              		.thumb_func
 5333              		.fpu fpv4-sp-d16
 5334              		.type	_ZN8Platform7InitI2cEv, %function
 5335              	_ZN8Platform7InitI2cEv:
 5336              		@ args = 0, pretend = 0, frame = 0
 5337              		@ frame_needed = 0, uses_anonymous_args = 0
 5338 0000 90F81E3B 		ldrb	r3, [r0, #2846]	@ zero_extendqisi2
 5339 0004 03B1     		cbz	r3, .L1016
 5340 0006 7047     		bx	lr
 5341              	.L1016:
 5342 0008 10B5     		push	{r4, lr}
 5343 000a 0446     		mov	r4, r0
 5344 000c 0348     		ldr	r0, .L1017
 5345 000e FFF7FEFF 		bl	_ZN7TwoWire5beginEv
 5346 0012 0123     		movs	r3, #1
 5347 0014 84F81E3B 		strb	r3, [r4, #2846]
 5348 0018 10BD     		pop	{r4, pc}
 5349              	.L1018:
 5350 001a 00BF     		.align	2
 5351              	.L1017:
 5352 001c 00000000 		.word	Wire
 5353              		.size	_ZN8Platform7InitI2cEv, .-_ZN8Platform7InitI2cEv
 5354              		.section	.text._ZN8Platform6RandomEv,"ax",%progbits
 5355              		.align	1
 5356              		.p2align 2,,3
 5357              		.global	_ZN8Platform6RandomEv
 5358              		.syntax unified
ARM GAS  /tmp/ccghtDyP.s 			page 95


 5359              		.thumb
 5360              		.thumb_func
 5361              		.fpu fpv4-sp-d16
 5362              		.type	_ZN8Platform6RandomEv, %function
 5363              	_ZN8Platform6RandomEv:
 5364              		@ args = 0, pretend = 0, frame = 0
 5365              		@ frame_needed = 0, uses_anonymous_args = 0
 5366              		@ link register save eliminated.
 5367 0000 10B4     		push	{r4}
 5368 0002 074A     		ldr	r2, .L1021
 5369 0004 D0E92A34 		ldrd	r3, r4, [r0, #168]
 5370 0008 D2F89010 		ldr	r1, [r2, #144]
 5371 000c D0E92C20 		ldrd	r2, r0, [r0, #176]
 5372 0010 6340     		eors	r3, r3, r4
 5373 0012 4B40     		eors	r3, r3, r1
 5374 0014 5340     		eors	r3, r3, r2
 5375 0016 5840     		eors	r0, r0, r3
 5376 0018 5DF8044B 		ldr	r4, [sp], #4
 5377 001c 7047     		bx	lr
 5378              	.L1022:
 5379 001e 00BF     		.align	2
 5380              	.L1021:
 5381 0020 00000940 		.word	1074331648
 5382              		.size	_ZN8Platform6RandomEv, .-_ZN8Platform6RandomEv
 5383              		.section	.text.hot.TC2_Handler,"ax",%progbits
 5384              		.align	1
 5385              		.p2align 2,,3
 5386              		.global	TC2_Handler
 5387              		.syntax unified
 5388              		.thumb
 5389              		.thumb_func
 5390              		.fpu fpv4-sp-d16
 5391              		.type	TC2_Handler, %function
 5392              	TC2_Handler:
 5393              		@ args = 0, pretend = 0, frame = 0
 5394              		@ frame_needed = 0, uses_anonymous_args = 0
 5395 0000 38B5     		push	{r3, r4, r5, lr}
 5396 0002 0F4B     		ldr	r3, .L1036
 5397 0004 D3F8A040 		ldr	r4, [r3, #160]
 5398 0008 D3F8AC20 		ldr	r2, [r3, #172]
 5399 000c 1440     		ands	r4, r4, r2
 5400 000e 6207     		lsls	r2, r4, #29
 5401 0010 0BD5     		bpl	.L1024
 5402 0012 0C49     		ldr	r1, .L1036+4
 5403 0014 0422     		movs	r2, #4
 5404 0016 8D68     		ldr	r5, [r1, #8]
 5405 0018 C3F8A820 		str	r2, [r3, #168]
 5406 001c 2B68     		ldr	r3, [r5]
 5407 001e 23B1     		cbz	r3, .L1024
 5408              	.L1025:
 5409 0020 2868     		ldr	r0, [r5]
 5410 0022 FFF7FEFF 		bl	_ZN3DDA4StepEv
 5411 0026 0028     		cmp	r0, #0
 5412 0028 FAD1     		bne	.L1025
 5413              	.L1024:
 5414 002a 2307     		lsls	r3, r4, #28
 5415 002c 00D4     		bmi	.L1035
ARM GAS  /tmp/ccghtDyP.s 			page 96


 5416 002e 38BD     		pop	{r3, r4, r5, pc}
 5417              	.L1035:
 5418 0030 034B     		ldr	r3, .L1036
 5419 0032 0822     		movs	r2, #8
 5420 0034 C3F8A820 		str	r2, [r3, #168]
 5421 0038 BDE83840 		pop	{r3, r4, r5, lr}
 5422 003c FFF7FEBF 		b	_ZN9SoftTimer9InterruptEv
 5423              	.L1037:
 5424              		.align	2
 5425              	.L1036:
 5426 0040 00000940 		.word	1074331648
 5427 0044 00000000 		.word	reprap
 5428              		.size	TC2_Handler, .-TC2_Handler
 5429              		.section	.text.hot._ZN8Platform21ScheduleStepInterruptEm,"ax",%progbits
 5430              		.align	1
 5431              		.p2align 2,,3
 5432              		.global	_ZN8Platform21ScheduleStepInterruptEm
 5433              		.syntax unified
 5434              		.thumb
 5435              		.thumb_func
 5436              		.fpu fpv4-sp-d16
 5437              		.type	_ZN8Platform21ScheduleStepInterruptEm, %function
 5438              	_ZN8Platform21ScheduleStepInterruptEm:
 5439              		@ args = 0, pretend = 0, frame = 0
 5440              		@ frame_needed = 0, uses_anonymous_args = 0
 5441              		@ link register save eliminated.
 5442 0000 30B4     		push	{r4, r5}
 5443              		.syntax unified
 5444              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 5445 0002 EFF31085 		MRS r5, primask
 5446              	@ 0 "" 2
 5447              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 5448 0006 72B6     		cpsid i
 5449              	@ 0 "" 2
 5450              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 5451 0008 BFF35F8F 		dmb
 5452              	@ 0 "" 2
 5453              		.thumb
 5454              		.syntax unified
 5455 000c 114C     		ldr	r4, .L1046
 5456 000e 1249     		ldr	r1, .L1046+4
 5457 0010 0023     		movs	r3, #0
 5458 0012 2370     		strb	r3, [r4]
 5459 0014 D1F89020 		ldr	r2, [r1, #144]
 5460 0018 821A     		subs	r2, r0, r2
 5461 001a 052A     		cmp	r2, #5
 5462 001c 03DC     		bgt	.L1039
 5463 001e 0120     		movs	r0, #1
 5464 0020 95B1     		cbz	r5, .L1044
 5465 0022 30BC     		pop	{r4, r5}
 5466 0024 7047     		bx	lr
 5467              	.L1039:
 5468 0026 0422     		movs	r2, #4
 5469 0028 C1F89400 		str	r0, [r1, #148]
 5470 002c C1F8A420 		str	r2, [r1, #164]
 5471 0030 15B1     		cbz	r5, .L1045
 5472 0032 1846     		mov	r0, r3
ARM GAS  /tmp/ccghtDyP.s 			page 97


 5473 0034 30BC     		pop	{r4, r5}
 5474 0036 7047     		bx	lr
 5475              	.L1045:
 5476 0038 0123     		movs	r3, #1
 5477 003a 2370     		strb	r3, [r4]
 5478              		.syntax unified
 5479              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 5480 003c BFF35F8F 		dmb
 5481              	@ 0 "" 2
 5482              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 5483 0040 62B6     		cpsie i
 5484              	@ 0 "" 2
 5485              		.thumb
 5486              		.syntax unified
 5487 0042 2846     		mov	r0, r5
 5488 0044 30BC     		pop	{r4, r5}
 5489 0046 7047     		bx	lr
 5490              	.L1044:
 5491 0048 2070     		strb	r0, [r4]
 5492              		.syntax unified
 5493              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 5494 004a BFF35F8F 		dmb
 5495              	@ 0 "" 2
 5496              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 5497 004e 62B6     		cpsie i
 5498              	@ 0 "" 2
 5499              		.thumb
 5500              		.syntax unified
 5501 0050 30BC     		pop	{r4, r5}
 5502 0052 7047     		bx	lr
 5503              	.L1047:
 5504              		.align	2
 5505              	.L1046:
 5506 0054 00000000 		.word	g_interrupt_enabled
 5507 0058 00000940 		.word	1074331648
 5508              		.size	_ZN8Platform21ScheduleStepInterruptEm, .-_ZN8Platform21ScheduleStepInterruptEm
 5509              		.section	.text._ZN8Platform20DisableStepInterruptEv,"ax",%progbits
 5510              		.align	1
 5511              		.p2align 2,,3
 5512              		.global	_ZN8Platform20DisableStepInterruptEv
 5513              		.syntax unified
 5514              		.thumb
 5515              		.thumb_func
 5516              		.fpu fpv4-sp-d16
 5517              		.type	_ZN8Platform20DisableStepInterruptEv, %function
 5518              	_ZN8Platform20DisableStepInterruptEv:
 5519              		@ args = 0, pretend = 0, frame = 0
 5520              		@ frame_needed = 0, uses_anonymous_args = 0
 5521              		@ link register save eliminated.
 5522 0000 024B     		ldr	r3, .L1049
 5523 0002 0422     		movs	r2, #4
 5524 0004 C3F8A820 		str	r2, [r3, #168]
 5525 0008 7047     		bx	lr
 5526              	.L1050:
 5527 000a 00BF     		.align	2
 5528              	.L1049:
 5529 000c 00000940 		.word	1074331648
ARM GAS  /tmp/ccghtDyP.s 			page 98


 5530              		.size	_ZN8Platform20DisableStepInterruptEv, .-_ZN8Platform20DisableStepInterruptEv
 5531              		.section	.text._ZN8Platform26ScheduleSoftTimerInterruptEm,"ax",%progbits
 5532              		.align	1
 5533              		.p2align 2,,3
 5534              		.global	_ZN8Platform26ScheduleSoftTimerInterruptEm
 5535              		.syntax unified
 5536              		.thumb
 5537              		.thumb_func
 5538              		.fpu fpv4-sp-d16
 5539              		.type	_ZN8Platform26ScheduleSoftTimerInterruptEm, %function
 5540              	_ZN8Platform26ScheduleSoftTimerInterruptEm:
 5541              		@ args = 0, pretend = 0, frame = 0
 5542              		@ frame_needed = 0, uses_anonymous_args = 0
 5543              		@ link register save eliminated.
 5544 0000 30B4     		push	{r4, r5}
 5545              		.syntax unified
 5546              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 5547 0002 EFF31085 		MRS r5, primask
 5548              	@ 0 "" 2
 5549              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 5550 0006 72B6     		cpsid i
 5551              	@ 0 "" 2
 5552              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 5553 0008 BFF35F8F 		dmb
 5554              	@ 0 "" 2
 5555              		.thumb
 5556              		.syntax unified
 5557 000c 114C     		ldr	r4, .L1059
 5558 000e 1249     		ldr	r1, .L1059+4
 5559 0010 0023     		movs	r3, #0
 5560 0012 2370     		strb	r3, [r4]
 5561 0014 D1F89020 		ldr	r2, [r1, #144]
 5562 0018 821A     		subs	r2, r0, r2
 5563 001a 052A     		cmp	r2, #5
 5564 001c 03DC     		bgt	.L1052
 5565 001e 0120     		movs	r0, #1
 5566 0020 95B1     		cbz	r5, .L1057
 5567 0022 30BC     		pop	{r4, r5}
 5568 0024 7047     		bx	lr
 5569              	.L1052:
 5570 0026 0822     		movs	r2, #8
 5571 0028 C1F89800 		str	r0, [r1, #152]
 5572 002c C1F8A420 		str	r2, [r1, #164]
 5573 0030 15B1     		cbz	r5, .L1058
 5574 0032 1846     		mov	r0, r3
 5575 0034 30BC     		pop	{r4, r5}
 5576 0036 7047     		bx	lr
 5577              	.L1058:
 5578 0038 0123     		movs	r3, #1
 5579 003a 2370     		strb	r3, [r4]
 5580              		.syntax unified
 5581              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 5582 003c BFF35F8F 		dmb
 5583              	@ 0 "" 2
 5584              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 5585 0040 62B6     		cpsie i
 5586              	@ 0 "" 2
ARM GAS  /tmp/ccghtDyP.s 			page 99


 5587              		.thumb
 5588              		.syntax unified
 5589 0042 2846     		mov	r0, r5
 5590 0044 30BC     		pop	{r4, r5}
 5591 0046 7047     		bx	lr
 5592              	.L1057:
 5593 0048 2070     		strb	r0, [r4]
 5594              		.syntax unified
 5595              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 5596 004a BFF35F8F 		dmb
 5597              	@ 0 "" 2
 5598              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 5599 004e 62B6     		cpsie i
 5600              	@ 0 "" 2
 5601              		.thumb
 5602              		.syntax unified
 5603 0050 30BC     		pop	{r4, r5}
 5604 0052 7047     		bx	lr
 5605              	.L1060:
 5606              		.align	2
 5607              	.L1059:
 5608 0054 00000000 		.word	g_interrupt_enabled
 5609 0058 00000940 		.word	1074331648
 5610              		.size	_ZN8Platform26ScheduleSoftTimerInterruptEm, .-_ZN8Platform26ScheduleSoftTimerInterruptEm
 5611              		.section	.text._ZN8Platform25DisableSoftTimerInterruptEv,"ax",%progbits
 5612              		.align	1
 5613              		.p2align 2,,3
 5614              		.global	_ZN8Platform25DisableSoftTimerInterruptEv
 5615              		.syntax unified
 5616              		.thumb
 5617              		.thumb_func
 5618              		.fpu fpv4-sp-d16
 5619              		.type	_ZN8Platform25DisableSoftTimerInterruptEv, %function
 5620              	_ZN8Platform25DisableSoftTimerInterruptEv:
 5621              		@ args = 0, pretend = 0, frame = 0
 5622              		@ frame_needed = 0, uses_anonymous_args = 0
 5623              		@ link register save eliminated.
 5624 0000 024B     		ldr	r3, .L1062
 5625 0002 0822     		movs	r2, #8
 5626 0004 C3F8A820 		str	r2, [r3, #168]
 5627 0008 7047     		bx	lr
 5628              	.L1063:
 5629 000a 00BF     		.align	2
 5630              	.L1062:
 5631 000c 00000940 		.word	1074331648
 5632              		.size	_ZN8Platform25DisableSoftTimerInterruptEv, .-_ZN8Platform25DisableSoftTimerInterruptEv
 5633              		.section	.text.hot._ZN8Platform4TickEv,"ax",%progbits
 5634              		.align	1
 5635              		.p2align 2,,3
 5636              		.global	_ZN8Platform4TickEv
 5637              		.syntax unified
 5638              		.thumb
 5639              		.thumb_func
 5640              		.fpu fpv4-sp-d16
 5641              		.type	_ZN8Platform4TickEv, %function
 5642              	_ZN8Platform4TickEv:
 5643              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccghtDyP.s 			page 100


 5644              		@ frame_needed = 0, uses_anonymous_args = 0
 5645 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 5646 0002 0446     		mov	r4, r0
 5647 0004 BE48     		ldr	r0, .L1150
 5648 0006 FFF7FEFF 		bl	rswdt_restart
 5649 000a 94F8C239 		ldrb	r3, [r4, #2498]	@ zero_extendqisi2
 5650 000e 6BB9     		cbnz	r3, .L1065
 5651              	.L1070:
 5652 0010 94F89430 		ldrb	r3, [r4, #148]	@ zero_extendqisi2
 5653              	.L1066:
 5654 0014 022B     		cmp	r3, #2
 5655 0016 00F0D480 		beq	.L1146
 5656              	.L1125:
 5657 001a 0123     		movs	r3, #1
 5658 001c 84F8C239 		strb	r3, [r4, #2498]
 5659 0020 4FF0FF30 		mov	r0, #-1
 5660 0024 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 5661 0028 FFF7FEBF 		b	_Z23AnalogInStartConversionm
 5662              	.L1065:
 5663 002c 94F9D409 		ldrsb	r0, [r4, #2516]
 5664 0030 FFF7FEFF 		bl	_Z19AnalogInReadChannel19AnalogChannelNumber
 5665 0034 A4F8D609 		strh	r0, [r4, #2518]	@ movhi
 5666 0038 B4F8D639 		ldrh	r3, [r4, #2518]
 5667 003c B4F8D829 		ldrh	r2, [r4, #2520]
 5668 0040 9A42     		cmp	r2, r3
 5669 0042 04D2     		bcs	.L1067
 5670 0044 B4F8D639 		ldrh	r3, [r4, #2518]
 5671 0048 9BB2     		uxth	r3, r3
 5672 004a A4F8D839 		strh	r3, [r4, #2520]	@ movhi
 5673              	.L1067:
 5674 004e B4F8D639 		ldrh	r3, [r4, #2518]
 5675 0052 B4F8DA29 		ldrh	r2, [r4, #2522]
 5676 0056 9A42     		cmp	r2, r3
 5677 0058 04D9     		bls	.L1068
 5678 005a B4F8D639 		ldrh	r3, [r4, #2518]
 5679 005e 9BB2     		uxth	r3, r3
 5680 0060 A4F8DA39 		strh	r3, [r4, #2522]	@ movhi
 5681              	.L1068:
 5682 0064 94F8D933 		ldrb	r3, [r4, #985]	@ zero_extendqisi2
 5683 0068 3BB1     		cbz	r3, .L1069
 5684 006a B4F8D639 		ldrh	r3, [r4, #2518]
 5685 006e 40F6C842 		movw	r2, #3272
 5686 0072 9A42     		cmp	r2, r3
 5687 0074 01D2     		bcs	.L1069
 5688 0076 FFF7FEFF 		bl	_ZN12SmartDrivers14TurnDriversOffEv
 5689              	.L1069:
 5690 007a 94F8C239 		ldrb	r3, [r4, #2498]	@ zero_extendqisi2
 5691 007e 013B     		subs	r3, r3, #1
 5692 0080 032B     		cmp	r3, #3
 5693 0082 C5D8     		bhi	.L1070
 5694 0084 DFE803F0 		tbb	[pc, r3]
 5695              	.L1072:
 5696 0088 24       		.byte	(.L1071-.L1072)/2
 5697 0089 13       		.byte	(.L1073-.L1072)/2
 5698 008a 24       		.byte	(.L1071-.L1072)/2
 5699 008b 02       		.byte	(.L1074-.L1072)/2
 5700              		.p2align 1
ARM GAS  /tmp/ccghtDyP.s 			page 101


 5701              	.L1074:
 5702 008c 94F89430 		ldrb	r3, [r4, #148]	@ zero_extendqisi2
 5703 0090 5A1E     		subs	r2, r3, #1
 5704 0092 082A     		cmp	r2, #8
 5705 0094 00F28B81 		bhi	.L1129
 5706 0098 DFE812F0 		tbh	[pc, r2, lsl #1]
 5707              	.L1114:
 5708 009c 1801     		.2byte	(.L1113-.L1114)/2
 5709 009e 1801     		.2byte	(.L1113-.L1114)/2
 5710 00a0 1801     		.2byte	(.L1113-.L1114)/2
 5711 00a2 2301     		.2byte	(.L1115-.L1114)/2
 5712 00a4 CC00     		.2byte	(.L1116-.L1114)/2
 5713 00a6 E900     		.2byte	(.L1117-.L1114)/2
 5714 00a8 F500     		.2byte	(.L1118-.L1114)/2
 5715 00aa CC00     		.2byte	(.L1116-.L1114)/2
 5716 00ac CC00     		.2byte	(.L1116-.L1114)/2
 5717              		.p2align 1
 5718              	.L1073:
 5719 00ae 94F89450 		ldrb	r5, [r4, #148]	@ zero_extendqisi2
 5720 00b2 6B1E     		subs	r3, r5, #1
 5721 00b4 082B     		cmp	r3, #8
 5722 00b6 00F27681 		bhi	.L1128
 5723 00ba DFE813F0 		tbh	[pc, r3, lsl #1]
 5724              	.L1099:
 5725 00be 5500     		.2byte	(.L1098-.L1099)/2
 5726 00c0 5500     		.2byte	(.L1098-.L1099)/2
 5727 00c2 5500     		.2byte	(.L1098-.L1099)/2
 5728 00c4 EB00     		.2byte	(.L1100-.L1099)/2
 5729 00c6 1901     		.2byte	(.L1101-.L1099)/2
 5730 00c8 F400     		.2byte	(.L1102-.L1099)/2
 5731 00ca 0001     		.2byte	(.L1103-.L1099)/2
 5732 00cc 1901     		.2byte	(.L1101-.L1099)/2
 5733 00ce 1901     		.2byte	(.L1101-.L1099)/2
 5734              		.p2align 1
 5735              	.L1071:
 5736 00d0 D4F8C459 		ldr	r5, [r4, #2500]
 5737 00d4 6319     		adds	r3, r4, r5
 5738 00d6 2626     		movs	r6, #38
 5739 00d8 93F9B809 		ldrsb	r0, [r3, #2488]
 5740 00dc FFF7FEFF 		bl	_Z19AnalogInReadChannel19AnalogChannelNumber
 5741 00e0 4C23     		movs	r3, #76
 5742 00e2 03FB0543 		mla	r3, r3, r5, r4
 5743 00e6 D3F8AC14 		ldr	r1, [r3, #1196]
 5744 00ea D3F8A824 		ldr	r2, [r3, #1192]
 5745 00ee 06FB0525 		mla	r5, r6, r5, r2
 5746 00f2 04EB4505 		add	r5, r4, r5, lsl #1
 5747 00f6 0132     		adds	r2, r2, #1
 5748 00f8 B5F86864 		ldrh	r6, [r5, #1128]
 5749 00fc 891B     		subs	r1, r1, r6
 5750 00fe 0144     		add	r1, r1, r0
 5751 0100 202A     		cmp	r2, #32
 5752 0102 C3F8AC14 		str	r1, [r3, #1196]
 5753 0106 A5F86804 		strh	r0, [r5, #1128]	@ movhi
 5754 010a C3F8A824 		str	r2, [r3, #1192]
 5755 010e 5ED0     		beq	.L1147
 5756              	.L1075:
 5757 0110 D4F8C419 		ldr	r1, [r4, #2500]
ARM GAS  /tmp/ccghtDyP.s 			page 102


 5758 0114 D4F8D027 		ldr	r2, [r4, #2000]
 5759 0118 0123     		movs	r3, #1
 5760 011a 8B40     		lsls	r3, r3, r1
 5761 011c 1342     		tst	r3, r2
 5762 011e 5DD1     		bne	.L1148
 5763              	.L1076:
 5764 0120 0131     		adds	r1, r1, #1
 5765 0122 0929     		cmp	r1, #9
 5766 0124 94F89420 		ldrb	r2, [r4, #148]	@ zero_extendqisi2
 5767 0128 12BF     		itee	ne
 5768 012a C4F8C419 		strne	r1, [r4, #2500]
 5769 012e 0023     		moveq	r3, #0
 5770 0130 C4F8C439 		streq	r3, [r4, #2500]
 5771 0134 022A     		cmp	r2, #2
 5772 0136 94F8C239 		ldrb	r3, [r4, #2498]	@ zero_extendqisi2
 5773 013a 39D0     		beq	.L1082
 5774 013c 012B     		cmp	r3, #1
 5775 013e 02F1FF32 		add	r2, r2, #-1
 5776 0142 0CBF     		ite	eq
 5777 0144 04F58665 		addeq	r5, r4, #1072
 5778 0148 04F24C45 		addwne	r5, r4, #1100
 5779 014c 082A     		cmp	r2, #8
 5780 014e 00F2FB80 		bhi	.L1127
 5781 0152 DFE812F0 		tbh	[pc, r2, lsl #1]
 5782              	.L1087:
 5783 0156 0B01     		.2byte	(.L1086-.L1087)/2
 5784 0158 0B01     		.2byte	(.L1086-.L1087)/2
 5785 015a 0B01     		.2byte	(.L1086-.L1087)/2
 5786 015c 0401     		.2byte	(.L1088-.L1087)/2
 5787 015e FD00     		.2byte	(.L1089-.L1087)/2
 5788 0160 F300     		.2byte	(.L1090-.L1087)/2
 5789 0162 D900     		.2byte	(.L1091-.L1087)/2
 5790 0164 FD00     		.2byte	(.L1089-.L1087)/2
 5791 0166 FD00     		.2byte	(.L1089-.L1087)/2
 5792              		.p2align 1
 5793              	.L1098:
 5794 0168 94F9C109 		ldrsb	r0, [r4, #2497]
 5795 016c FFF7FEFF 		bl	_Z19AnalogInReadChannel19AnalogChannelNumber
 5796 0170 B0F57A6F 		cmp	r0, #4000
 5797 0174 80F09D80 		bcs	.L1144
 5798 0178 94F89450 		ldrb	r5, [r4, #148]	@ zero_extendqisi2
 5799 017c 0146     		mov	r1, r0
 5800              	.L1097:
 5801 017e D4F84024 		ldr	r2, [r4, #1088]
 5802 0182 D4F84434 		ldr	r3, [r4, #1092]
 5803 0186 04EB4206 		add	r6, r4, r2, lsl #1
 5804 018a 0132     		adds	r2, r2, #1
 5805 018c B6F83074 		ldrh	r7, [r6, #1072]
 5806 0190 DB1B     		subs	r3, r3, r7
 5807 0192 0B44     		add	r3, r3, r1
 5808 0194 082A     		cmp	r2, #8
 5809 0196 C4F84434 		str	r3, [r4, #1092]
 5810 019a A6F83004 		strh	r0, [r6, #1072]	@ movhi
 5811 019e 00F0F580 		beq	.L1109
 5812 01a2 C4F84024 		str	r2, [r4, #1088]
 5813              	.L1110:
 5814 01a6 022D     		cmp	r5, #2
ARM GAS  /tmp/ccghtDyP.s 			page 103


 5815 01a8 00F0F780 		beq	.L1149
 5816              	.L1143:
 5817 01ac 94F8C239 		ldrb	r3, [r4, #2498]	@ zero_extendqisi2
 5818              	.L1082:
 5819 01b0 0133     		adds	r3, r3, #1
 5820 01b2 84F8C239 		strb	r3, [r4, #2498]
 5821 01b6 4FF0FF30 		mov	r0, #-1
 5822 01ba BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 5823 01be FFF7FEBF 		b	_Z23AnalogInStartConversionm
 5824              	.L1146:
 5825 01c2 0121     		movs	r1, #1
 5826 01c4 94F80104 		ldrb	r0, [r4, #1025]	@ zero_extendqisi2
 5827 01c8 FFF7FEFF 		bl	digitalWrite
 5828 01cc 25E7     		b	.L1125
 5829              	.L1147:
 5830 01ce 0021     		movs	r1, #0
 5831 01d0 0122     		movs	r2, #1
 5832 01d2 C3F8A814 		str	r1, [r3, #1192]
 5833 01d6 83F8B024 		strb	r2, [r3, #1200]
 5834 01da 99E7     		b	.L1075
 5835              	.L1148:
 5836 01dc FFF7FEFF 		bl	millis
 5837 01e0 484E     		ldr	r6, .L1150+4
 5838 01e2 D4F8C419 		ldr	r1, [r4, #2500]
 5839 01e6 0546     		mov	r5, r0
 5840 01e8 F068     		ldr	r0, [r6, #12]
 5841 01ea FFF7FEFF 		bl	_ZNK4Heat17GetLastSampleTimeEj
 5842 01ee 41F28833 		movw	r3, #5000
 5843 01f2 281A     		subs	r0, r5, r0
 5844 01f4 9842     		cmp	r0, r3
 5845 01f6 D4F8C419 		ldr	r1, [r4, #2500]
 5846 01fa 91D9     		bls	.L1076
 5847 01fc 6518     		adds	r5, r4, r1
 5848 01fe 95F8C037 		ldrb	r3, [r5, #1984]	@ zero_extendqisi2
 5849 0202 FF2B     		cmp	r3, #255
 5850 0204 0FD0     		beq	.L1078
 5851 0206 49B2     		sxtb	r1, r1
 5852 0208 F068     		ldr	r0, [r6, #12]
 5853 020a FFF7FEFF 		bl	_ZNK4Heat20IsBedOrChamberHeaterEa
 5854 020e 0028     		cmp	r0, #0
 5855 0210 0CBF     		ite	eq
 5856 0212 FA21     		moveq	r1, #250
 5857 0214 0A21     		movne	r1, #10
 5858 0216 95F8C007 		ldrb	r0, [r5, #1984]	@ zero_extendqisi2
 5859 021a B7EE000A 		vmov.f32	s0, #1.0e+0
 5860 021e FFF7FEFF 		bl	_ZN6IoPort11WriteAnalogEhft
 5861 0222 D4F8C419 		ldr	r1, [r4, #2500]
 5862              	.L1078:
 5863 0226 D4F8C030 		ldr	r3, [r4, #192]
 5864 022a 43F00103 		orr	r3, r3, #1
 5865 022e C4F8C030 		str	r3, [r4, #192]
 5866 0232 75E7     		b	.L1076
 5867              	.L1116:
 5868 0234 94F80004 		ldrb	r0, [r4, #1024]	@ zero_extendqisi2
 5869 0238 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 5870 023c E8B9     		cbnz	r0, .L1145
 5871              	.L1123:
ARM GAS  /tmp/ccghtDyP.s 			page 104


 5872 023e 94F89430 		ldrb	r3, [r4, #148]	@ zero_extendqisi2
 5873 0242 0546     		mov	r5, r0
 5874              	.L1112:
 5875 0244 D4F85C14 		ldr	r1, [r4, #1116]
 5876 0248 D4F86024 		ldr	r2, [r4, #1120]
 5877 024c 04EB4106 		add	r6, r4, r1, lsl #1
 5878 0250 0131     		adds	r1, r1, #1
 5879 0252 B6F84C74 		ldrh	r7, [r6, #1100]
 5880 0256 D21B     		subs	r2, r2, r7
 5881 0258 2A44     		add	r2, r2, r5
 5882 025a 0829     		cmp	r1, #8
 5883 025c C4F86024 		str	r2, [r4, #1120]
 5884 0260 A6F84C04 		strh	r0, [r6, #1100]	@ movhi
 5885 0264 00F08B80 		beq	.L1124
 5886 0268 C4F85C14 		str	r1, [r4, #1116]
 5887 026c D2E6     		b	.L1066
 5888              	.L1117:
 5889 026e 94F83601 		ldrb	r0, [r4, #310]	@ zero_extendqisi2
 5890 0272 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 5891 0276 0028     		cmp	r0, #0
 5892 0278 E1D0     		beq	.L1123
 5893              	.L1145:
 5894 027a 4FF47A65 		mov	r5, #4000
 5895 027e 2846     		mov	r0, r5
 5896 0280 94F89430 		ldrb	r3, [r4, #148]	@ zero_extendqisi2
 5897 0284 DEE7     		b	.L1112
 5898              	.L1118:
 5899 0286 94F83401 		ldrb	r0, [r4, #308]	@ zero_extendqisi2
 5900 028a FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 5901 028e 0028     		cmp	r0, #0
 5902 0290 D5D0     		beq	.L1123
 5903 0292 F2E7     		b	.L1145
 5904              	.L1100:
 5905 0294 94F83501 		ldrb	r0, [r4, #309]	@ zero_extendqisi2
 5906 0298 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 5907 029c 48B9     		cbnz	r0, .L1144
 5908              	.L1108:
 5909 029e 0146     		mov	r1, r0
 5910 02a0 94F89450 		ldrb	r5, [r4, #148]	@ zero_extendqisi2
 5911 02a4 6BE7     		b	.L1097
 5912              	.L1102:
 5913 02a6 94F83601 		ldrb	r0, [r4, #310]	@ zero_extendqisi2
 5914 02aa FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 5915 02ae 0028     		cmp	r0, #0
 5916 02b0 F5D0     		beq	.L1108
 5917              	.L1144:
 5918 02b2 4FF47A61 		mov	r1, #4000
 5919 02b6 0846     		mov	r0, r1
 5920 02b8 94F89450 		ldrb	r5, [r4, #148]	@ zero_extendqisi2
 5921 02bc 5FE7     		b	.L1097
 5922              	.L1103:
 5923 02be 94F83401 		ldrb	r0, [r4, #308]	@ zero_extendqisi2
 5924 02c2 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 5925 02c6 0028     		cmp	r0, #0
 5926 02c8 E9D0     		beq	.L1108
 5927 02ca F2E7     		b	.L1144
 5928              	.L1113:
ARM GAS  /tmp/ccghtDyP.s 			page 105


 5929 02cc 94F9C109 		ldrsb	r0, [r4, #2497]
 5930 02d0 FFF7FEFF 		bl	_Z19AnalogInReadChannel19AnalogChannelNumber
 5931 02d4 B0F57A6F 		cmp	r0, #4000
 5932 02d8 CFD2     		bcs	.L1145
 5933 02da 0546     		mov	r5, r0
 5934 02dc 94F89430 		ldrb	r3, [r4, #148]	@ zero_extendqisi2
 5935 02e0 B0E7     		b	.L1112
 5936              	.L1115:
 5937 02e2 94F83501 		ldrb	r0, [r4, #309]	@ zero_extendqisi2
 5938 02e6 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 5939 02ea 0028     		cmp	r0, #0
 5940 02ec A7D0     		beq	.L1123
 5941 02ee C4E7     		b	.L1145
 5942              	.L1101:
 5943 02f0 94F80004 		ldrb	r0, [r4, #1024]	@ zero_extendqisi2
 5944 02f4 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 5945 02f8 0028     		cmp	r0, #0
 5946 02fa D0D0     		beq	.L1108
 5947 02fc D9E7     		b	.L1144
 5948              	.L1151:
 5949 02fe 00BF     		.align	2
 5950              	.L1150:
 5951 0300 00190E40 		.word	1074665728
 5952 0304 00000000 		.word	reprap
 5953              	.L1091:
 5954 0308 94F83401 		ldrb	r0, [r4, #308]	@ zero_extendqisi2
 5955 030c FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 5956 0310 D0B9     		cbnz	r0, .L1127
 5957              	.L1094:
 5958 0312 0021     		movs	r1, #0
 5959 0314 0846     		mov	r0, r1
 5960              	.L1085:
 5961 0316 D5E90423 		ldrd	r2, r3, [r5, #16]
 5962 031a 35F81260 		ldrh	r6, [r5, r2, lsl #1]
 5963 031e 9B1B     		subs	r3, r3, r6
 5964 0320 0B44     		add	r3, r3, r1
 5965 0322 511C     		adds	r1, r2, #1
 5966 0324 0829     		cmp	r1, #8
 5967 0326 6B61     		str	r3, [r5, #20]
 5968 0328 25F81200 		strh	r0, [r5, r2, lsl #1]	@ movhi
 5969 032c 04BF     		itt	eq
 5970 032e 0123     		moveq	r3, #1
 5971 0330 0022     		moveq	r2, #0
 5972 0332 2961     		str	r1, [r5, #16]
 5973 0334 04BF     		itt	eq
 5974 0336 2B76     		strbeq	r3, [r5, #24]
 5975 0338 2A61     		streq	r2, [r5, #16]
 5976 033a 37E7     		b	.L1143
 5977              	.L1090:
 5978 033c 94F83601 		ldrb	r0, [r4, #310]	@ zero_extendqisi2
 5979 0340 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 5980 0344 0028     		cmp	r0, #0
 5981 0346 E4D0     		beq	.L1094
 5982              	.L1127:
 5983 0348 4FF47A61 		mov	r1, #4000
 5984 034c 0846     		mov	r0, r1
 5985 034e E2E7     		b	.L1085
ARM GAS  /tmp/ccghtDyP.s 			page 106


 5986              	.L1089:
 5987 0350 94F80004 		ldrb	r0, [r4, #1024]	@ zero_extendqisi2
 5988 0354 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 5989 0358 0028     		cmp	r0, #0
 5990 035a DAD0     		beq	.L1094
 5991 035c F4E7     		b	.L1127
 5992              	.L1088:
 5993 035e 94F83501 		ldrb	r0, [r4, #309]	@ zero_extendqisi2
 5994 0362 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 5995 0366 0028     		cmp	r0, #0
 5996 0368 D3D0     		beq	.L1094
 5997 036a EDE7     		b	.L1127
 5998              	.L1086:
 5999 036c 94F9C109 		ldrsb	r0, [r4, #2497]
 6000 0370 FFF7FEFF 		bl	_Z19AnalogInReadChannel19AnalogChannelNumber
 6001 0374 B0F57A6F 		cmp	r0, #4000
 6002 0378 E6D2     		bcs	.L1127
 6003 037a 0146     		mov	r1, r0
 6004 037c CBE7     		b	.L1085
 6005              	.L1124:
 6006 037e 0021     		movs	r1, #0
 6007 0380 0122     		movs	r2, #1
 6008 0382 C4F85C14 		str	r1, [r4, #1116]
 6009 0386 84F86424 		strb	r2, [r4, #1124]
 6010 038a 43E6     		b	.L1066
 6011              	.L1109:
 6012 038c 0022     		movs	r2, #0
 6013 038e 0123     		movs	r3, #1
 6014 0390 C4F84024 		str	r2, [r4, #1088]
 6015 0394 84F84834 		strb	r3, [r4, #1096]
 6016 0398 05E7     		b	.L1110
 6017              	.L1149:
 6018 039a 0021     		movs	r1, #0
 6019 039c 94F80104 		ldrb	r0, [r4, #1025]	@ zero_extendqisi2
 6020 03a0 FFF7FEFF 		bl	digitalWrite
 6021 03a4 02E7     		b	.L1143
 6022              	.L1128:
 6023 03a6 4FF47A61 		mov	r1, #4000
 6024 03aa 0846     		mov	r0, r1
 6025 03ac E7E6     		b	.L1097
 6026              	.L1129:
 6027 03ae 4FF47A65 		mov	r5, #4000
 6028 03b2 2846     		mov	r0, r5
 6029 03b4 46E7     		b	.L1112
 6030              		.size	_ZN8Platform4TickEv, .-_ZN8Platform4TickEv
 6031 03b6 00BF     		.section	.text._ZN6StringILj220EE6printfEPKcz,"axG",%progbits,_ZN6StringILj220EE6printfEPKcz,comda
 6032              		.align	1
 6033              		.p2align 2,,3
 6034              		.weak	_ZN6StringILj220EE6printfEPKcz
 6035              		.syntax unified
 6036              		.thumb
 6037              		.thumb_func
 6038              		.fpu fpv4-sp-d16
 6039              		.type	_ZN6StringILj220EE6printfEPKcz, %function
 6040              	_ZN6StringILj220EE6printfEPKcz:
 6041              		@ args = 4, pretend = 12, frame = 16
 6042              		@ frame_needed = 0, uses_anonymous_args = 1
ARM GAS  /tmp/ccghtDyP.s 			page 107


 6043 0000 0EB4     		push	{r1, r2, r3}
 6044 0002 00B5     		push	{lr}
 6045 0004 84B0     		sub	sp, sp, #16
 6046 0006 05AA     		add	r2, sp, #20
 6047 0008 0290     		str	r0, [sp, #8]
 6048 000a 52F8041B 		ldr	r1, [r2], #4
 6049 000e 0192     		str	r2, [sp, #4]
 6050 0010 DD23     		movs	r3, #221
 6051 0012 02A8     		add	r0, sp, #8
 6052 0014 0393     		str	r3, [sp, #12]
 6053 0016 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 6054 001a 04B0     		add	sp, sp, #16
 6055              		@ sp needed
 6056 001c 5DF804EB 		ldr	lr, [sp], #4
 6057 0020 03B0     		add	sp, sp, #12
 6058 0022 7047     		bx	lr
 6059              		.size	_ZN6StringILj220EE6printfEPKcz, .-_ZN6StringILj220EE6printfEPKcz
 6060              		.section	.text._ZN6StringILj220EE4catfEPKcz,"axG",%progbits,_ZN6StringILj220EE4catfEPKcz,comdat
 6061              		.align	1
 6062              		.p2align 2,,3
 6063              		.weak	_ZN6StringILj220EE4catfEPKcz
 6064              		.syntax unified
 6065              		.thumb
 6066              		.thumb_func
 6067              		.fpu fpv4-sp-d16
 6068              		.type	_ZN6StringILj220EE4catfEPKcz, %function
 6069              	_ZN6StringILj220EE4catfEPKcz:
 6070              		@ args = 4, pretend = 12, frame = 16
 6071              		@ frame_needed = 0, uses_anonymous_args = 1
 6072 0000 0EB4     		push	{r1, r2, r3}
 6073 0002 00B5     		push	{lr}
 6074 0004 84B0     		sub	sp, sp, #16
 6075 0006 05AA     		add	r2, sp, #20
 6076 0008 0290     		str	r0, [sp, #8]
 6077 000a 52F8041B 		ldr	r1, [r2], #4
 6078 000e 0192     		str	r2, [sp, #4]
 6079 0010 DD23     		movs	r3, #221
 6080 0012 02A8     		add	r0, sp, #8
 6081 0014 0393     		str	r3, [sp, #12]
 6082 0016 FFF7FEFF 		bl	_ZNK9StringRef5vcatfEPKcSt9__va_list
 6083 001a 04B0     		add	sp, sp, #16
 6084              		@ sp needed
 6085 001c 5DF804EB 		ldr	lr, [sp], #4
 6086 0020 03B0     		add	sp, sp, #12
 6087 0022 7047     		bx	lr
 6088              		.size	_ZN6StringILj220EE4catfEPKcz, .-_ZN6StringILj220EE4catfEPKcz
 6089              		.global	__aeabi_f2d
 6090              		.section	.text._ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi.part.28,"ax",%progbits
 6091              		.align	1
 6092              		.p2align 2,,3
 6093              		.syntax unified
 6094              		.thumb
 6095              		.thumb_func
 6096              		.fpu fpv4-sp-d16
 6097              		.type	_ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi.part.28, %function
 6098              	_ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi.part.28:
 6099              		@ args = 0, pretend = 0, frame = 232
ARM GAS  /tmp/ccghtDyP.s 			page 108


 6100              		@ frame_needed = 0, uses_anonymous_args = 0
 6101 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 6102 0004 BDB0     		sub	sp, sp, #244
 6103 0006 3CAE     		add	r6, sp, #240
 6104 0008 0024     		movs	r4, #0
 6105 000a 06F8E04D 		strb	r4, [r6, #-224]!
 6106 000e 8246     		mov	r10, r0
 6107 0010 0D46     		mov	r5, r1
 6108 0012 9146     		mov	r9, r2
 6109 0014 3046     		mov	r0, r6
 6110 0016 1A46     		mov	r2, r3
 6111 0018 1749     		ldr	r1, .L1165
 6112 001a DFF86480 		ldr	r8, .L1165+8
 6113 001e 174F     		ldr	r7, .L1165+4
 6114 0020 FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 6115 0024 02E0     		b	.L1158
 6116              	.L1157:
 6117 0026 0134     		adds	r4, r4, #1
 6118 0028 092C     		cmp	r4, #9
 6119 002a 17D0     		beq	.L1164
 6120              	.L1158:
 6121 002c 25FA04F3 		lsr	r3, r5, r4
 6122 0030 DB07     		lsls	r3, r3, #31
 6123 0032 F8D5     		bpl	.L1157
 6124 0034 D8F81030 		ldr	r3, [r8, #16]
 6125 0038 09EB8402 		add	r2, r9, r4, lsl #2
 6126 003c 2344     		add	r3, r3, r4
 6127 003e 1068     		ldr	r0, [r2]	@ float
 6128 0040 93F85AB4 		ldrb	fp, [r3, #1114]	@ zero_extendqisi2
 6129 0044 FFF7FEFF 		bl	__aeabi_f2d
 6130 0048 0134     		adds	r4, r4, #1
 6131 004a CDE90001 		strd	r0, [sp]
 6132 004e 5A46     		mov	r2, fp
 6133 0050 3946     		mov	r1, r7
 6134 0052 3046     		mov	r0, r6
 6135 0054 FFF7FEFF 		bl	_ZN6StringILj220EE4catfEPKcz
 6136 0058 092C     		cmp	r4, #9
 6137 005a E7D1     		bne	.L1158
 6138              	.L1164:
 6139 005c DD23     		movs	r3, #221
 6140 005e 0A21     		movs	r1, #10
 6141 0060 02A8     		add	r0, sp, #8
 6142 0062 CDE90263 		strd	r6, r3, [sp, #8]
 6143 0066 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 6144 006a 3146     		mov	r1, r6
 6145 006c 5046     		mov	r0, r10
 6146 006e FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 6147 0072 3DB0     		add	sp, sp, #244
 6148              		@ sp needed
 6149 0074 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6150              	.L1166:
 6151              		.align	2
 6152              	.L1165:
 6153 0078 00000000 		.word	.LC31
 6154 007c 0C000000 		.word	.LC32
 6155 0080 00000000 		.word	reprap
 6156              		.size	_ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi.part.28, .-_ZN8Platform15WriteAxisLimitsEP9Fi
ARM GAS  /tmp/ccghtDyP.s 			page 109


 6157              		.section	.text._ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi,"ax",%progbits
 6158              		.align	1
 6159              		.p2align 2,,3
 6160              		.global	_ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi
 6161              		.syntax unified
 6162              		.thumb
 6163              		.thumb_func
 6164              		.fpu fpv4-sp-d16
 6165              		.type	_ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi, %function
 6166              	_ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi:
 6167              		@ args = 0, pretend = 0, frame = 0
 6168              		@ frame_needed = 0, uses_anonymous_args = 0
 6169              		@ link register save eliminated.
 6170 0000 09B9     		cbnz	r1, .L1169
 6171 0002 0120     		movs	r0, #1
 6172 0004 7047     		bx	lr
 6173              	.L1169:
 6174 0006 FFF7FEBF 		b	_ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi.part.28
 6175              		.size	_ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi, .-_ZN8Platform15WriteAxisLimitsEP9FileStorem
 6176 000a 00BF     		.section	.text._ZNK8Platform23WritePlatformParametersEP9FileStoreb,"ax",%progbits
 6177              		.align	1
 6178              		.p2align 2,,3
 6179              		.global	_ZNK8Platform23WritePlatformParametersEP9FileStoreb
 6180              		.syntax unified
 6181              		.thumb
 6182              		.thumb_func
 6183              		.fpu fpv4-sp-d16
 6184              		.type	_ZNK8Platform23WritePlatformParametersEP9FileStoreb, %function
 6185              	_ZNK8Platform23WritePlatformParametersEP9FileStoreb:
 6186              		@ args = 0, pretend = 0, frame = 0
 6187              		@ frame_needed = 0, uses_anonymous_args = 0
 6188 0000 70B5     		push	{r4, r5, r6, lr}
 6189 0002 D0F86837 		ldr	r3, [r0, #1896]
 6190 0006 0446     		mov	r4, r0
 6191 0008 0D46     		mov	r5, r1
 6192 000a 1646     		mov	r6, r2
 6193 000c 2BB9     		cbnz	r3, .L1171
 6194 000e D0F86C37 		ldr	r3, [r0, #1900]
 6195 0012 13B9     		cbnz	r3, .L1171
 6196              	.L1176:
 6197 0014 BEB9     		cbnz	r6, .L1172
 6198 0016 0120     		movs	r0, #1
 6199 0018 70BD     		pop	{r4, r5, r6, pc}
 6200              	.L1171:
 6201 001a 1E49     		ldr	r1, .L1194
 6202 001c 2846     		mov	r0, r5
 6203 001e FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 6204 0022 70B1     		cbz	r0, .L1179
 6205 0024 D4F86817 		ldr	r1, [r4, #1896]
 6206 0028 51BB     		cbnz	r1, .L1175
 6207              	.L1178:
 6208 002a D4F86C17 		ldr	r1, [r4, #1900]
 6209 002e 0029     		cmp	r1, #0
 6210 0030 F0D0     		beq	.L1176
 6211 0032 0023     		movs	r3, #0
 6212 0034 04F5E462 		add	r2, r4, #1824
 6213 0038 2846     		mov	r0, r5
ARM GAS  /tmp/ccghtDyP.s 			page 110


 6214 003a FFF7FEFF 		bl	_ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi.part.28
 6215 003e 0028     		cmp	r0, #0
 6216 0040 E8D1     		bne	.L1176
 6217              	.L1179:
 6218 0042 0020     		movs	r0, #0
 6219 0044 70BD     		pop	{r4, r5, r6, pc}
 6220              	.L1172:
 6221 0046 1449     		ldr	r1, .L1194+4
 6222 0048 2846     		mov	r0, r5
 6223 004a FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 6224 004e 0028     		cmp	r0, #0
 6225 0050 F7D0     		beq	.L1179
 6226 0052 0122     		movs	r2, #1
 6227 0054 2946     		mov	r1, r5
 6228 0056 04F13400 		add	r0, r4, #52
 6229 005a FFF7FEFF 		bl	_ZNK6ZProbe15WriteParametersEP9FileStorej
 6230 005e 0028     		cmp	r0, #0
 6231 0060 EFD0     		beq	.L1179
 6232 0062 0322     		movs	r2, #3
 6233 0064 2946     		mov	r1, r5
 6234 0066 04F16400 		add	r0, r4, #100
 6235 006a FFF7FEFF 		bl	_ZNK6ZProbe15WriteParametersEP9FileStorej
 6236 006e 0028     		cmp	r0, #0
 6237 0070 E7D0     		beq	.L1179
 6238 0072 2946     		mov	r1, r5
 6239 0074 201D     		adds	r0, r4, #4
 6240 0076 0422     		movs	r2, #4
 6241 0078 BDE87040 		pop	{r4, r5, r6, lr}
 6242 007c FFF7FEBF 		b	_ZNK6ZProbe15WriteParametersEP9FileStorej
 6243              	.L1175:
 6244 0080 0123     		movs	r3, #1
 6245 0082 04F24472 		addw	r2, r4, #1860
 6246 0086 2846     		mov	r0, r5
 6247 0088 FFF7FEFF 		bl	_ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi.part.28
 6248 008c 0028     		cmp	r0, #0
 6249 008e CCD1     		bne	.L1178
 6250 0090 D7E7     		b	.L1179
 6251              	.L1195:
 6252 0092 00BF     		.align	2
 6253              	.L1194:
 6254 0094 00000000 		.word	.LC33
 6255 0098 18000000 		.word	.LC34
 6256              		.size	_ZNK8Platform23WritePlatformParametersEP9FileStoreb, .-_ZNK8Platform23WritePlatformParameter
 6257              		.section	.text._ZN8Platform4InitEv,"ax",%progbits
 6258              		.align	1
 6259              		.p2align 2,,3
 6260              		.global	_ZN8Platform4InitEv
 6261              		.syntax unified
 6262              		.thumb
 6263              		.thumb_func
 6264              		.fpu fpv4-sp-d16
 6265              		.type	_ZN8Platform4InitEv, %function
 6266              	_ZN8Platform4InitEv:
 6267              		@ args = 0, pretend = 0, frame = 16
 6268              		@ frame_needed = 0, uses_anonymous_args = 0
 6269 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 6270 0004 2DED028B 		vpush.64	{d8}
ARM GAS  /tmp/ccghtDyP.s 			page 111


 6271 0008 0446     		mov	r4, r0
 6272 000a 0025     		movs	r5, #0
 6273 000c 85B0     		sub	sp, sp, #20
 6274 000e 0022     		movs	r2, #0
 6275 0010 0321     		movs	r1, #3
 6276 0012 2220     		movs	r0, #34
 6277 0014 FFF7FEFF 		bl	pinModeDuet
 6278 0018 2A46     		mov	r2, r5
 6279 001a 0321     		movs	r1, #3
 6280 001c 4F20     		movs	r0, #79
 6281 001e FFF7FEFF 		bl	pinModeDuet
 6282 0022 2946     		mov	r1, r5
 6283 0024 2046     		mov	r0, r4
 6284 0026 84F8945A 		strb	r5, [r4, #2708]
 6285 002a FFF7FEFF 		bl	_ZN8Platform12SetBoardTypeE9BoardType
 6286 002e 0026     		movs	r6, #0
 6287 0030 04F6F813 		addw	r3, r4, #2552
 6288 0034 0027     		movs	r7, #0
 6289 0036 4FF46142 		mov	r2, #57600
 6290 003a C3E90067 		strd	r6, [r3]
 6291 003e 4FF4E131 		mov	r1, #115200
 6292 0042 4FF48073 		mov	r3, #256
 6293 0046 C4F87029 		str	r2, [r4, #2416]
 6294 004a A4F87439 		strh	r3, [r4, #2420]	@ movhi
 6295 004e C4F86C19 		str	r1, [r4, #2412]
 6296 0052 04F51B60 		add	r0, r4, #2480
 6297 0056 8D49     		ldr	r1, .L1257
 6298 0058 FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
 6299 005c 04F68C10 		addw	r0, r4, #2444
 6300 0060 8B49     		ldr	r1, .L1257+4
 6301 0062 FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
 6302 0066 D4F86C19 		ldr	r1, [r4, #2412]
 6303 006a 84F89859 		strb	r5, [r4, #2456]
 6304 006e C4F89459 		str	r5, [r4, #2452]
 6305 0072 8848     		ldr	r0, .L1257+8
 6306 0074 FFF7FEFF 		bl	_ZN9SerialCDC5beginEm
 6307 0078 D4F87019 		ldr	r1, [r4, #2416]
 6308 007c 8648     		ldr	r0, .L1257+12
 6309 007e FFF7FEFF 		bl	_ZN9UARTClass5beginEm
 6310 0082 0223     		movs	r3, #2
 6311 0084 D4F8B409 		ldr	r0, [r4, #2484]
 6312 0088 84F8BF30 		strb	r3, [r4, #191]
 6313 008c FFF7FEFF 		bl	_ZN11MassStorage4InitEv
 6314 0090 8249     		ldr	r1, .L1257+16
 6315 0092 834A     		ldr	r2, .L1257+20
 6316 0094 834B     		ldr	r3, .L1257+24
 6317 0096 0968     		ldr	r1, [r1]
 6318 0098 1268     		ldr	r2, [r2]
 6319 009a 1B68     		ldr	r3, [r3]
 6320 009c C4F8A850 		str	r5, [r4, #168]	@ unaligned
 6321 00a0 04F1A800 		add	r0, r4, #168
 6322 00a4 C4F89510 		str	r1, [r4, #149]	@ unaligned
 6323 00a8 C4F89920 		str	r2, [r4, #153]	@ unaligned
 6324 00ac C4F89D30 		str	r3, [r4, #157]	@ unaligned
 6325 00b0 4560     		str	r5, [r0, #4]	@ unaligned
 6326 00b2 8560     		str	r5, [r0, #8]	@ unaligned
 6327 00b4 C560     		str	r5, [r0, #12]	@ unaligned
ARM GAS  /tmp/ccghtDyP.s 			page 112


 6328 00b6 0561     		str	r5, [r0, #16]	@ unaligned
 6329              		.syntax unified
 6330              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 6331 00b8 72B6     		cpsid i
 6332              	@ 0 "" 2
 6333              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 6334 00ba BFF35F8F 		dmb
 6335              	@ 0 "" 2
 6336              		.thumb
 6337              		.syntax unified
 6338 00be 7A4E     		ldr	r6, .L1257+28
 6339 00c0 0421     		movs	r1, #4
 6340 00c2 3570     		strb	r5, [r6]
 6341 00c4 FFF7FEFF 		bl	flash_read_unique_id
 6342 00c8 0123     		movs	r3, #1
 6343 00ca 3370     		strb	r3, [r6]
 6344              		.syntax unified
 6345              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 6346 00cc BFF35F8F 		dmb
 6347              	@ 0 "" 2
 6348              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 6349 00d0 62B6     		cpsie i
 6350              	@ 0 "" 2
 6351              		.thumb
 6352              		.syntax unified
 6353 00d2 0028     		cmp	r0, #0
 6354 00d4 40F09382 		bne	.L1197
 6355 00d8 D4E92A32 		ldrd	r3, r2, [r4, #168]
 6356 00dc D4F8B010 		ldr	r1, [r4, #176]
 6357 00e0 724E     		ldr	r6, .L1257+32
 6358 00e2 C4F8A100 		str	r0, [r4, #161]	@ unaligned
 6359 00e6 5340     		eors	r3, r3, r2
 6360 00e8 D4F8B420 		ldr	r2, [r4, #180]
 6361 00ec A4F8A500 		strh	r0, [r4, #165]	@ unaligned
 6362 00f0 4B40     		eors	r3, r3, r1
 6363 00f2 5340     		eors	r3, r3, r2
 6364 00f4 83EA9323 		eor	r3, r3, r3, lsr #10
 6365 00f8 BE22     		movs	r2, #190
 6366 00fa C4F8B830 		str	r3, [r4, #184]
 6367 00fe 84F8A120 		strb	r2, [r4, #161]
 6368 0102 04F1A705 		add	r5, r4, #167
 6369              	.L1199:
 6370 0106 A6FB0023 		umull	r2, r3, r6, r0
 6371 010a 9B08     		lsrs	r3, r3, #2
 6372 010c 03EB8303 		add	r3, r3, r3, lsl #2
 6373 0110 C31A     		subs	r3, r0, r3
 6374 0112 0133     		adds	r3, r3, #1
 6375 0114 2344     		add	r3, r3, r4
 6376 0116 15F8011F 		ldrb	r1, [r5, #1]!	@ zero_extendqisi2
 6377 011a 93F8A120 		ldrb	r2, [r3, #161]	@ zero_extendqisi2
 6378 011e 0130     		adds	r0, r0, #1
 6379 0120 4A40     		eors	r2, r2, r1
 6380 0122 0F28     		cmp	r0, #15
 6381 0124 83F8A120 		strb	r2, [r3, #161]
 6382 0128 EDD1     		bne	.L1199
 6383              	.L1198:
 6384 012a 614B     		ldr	r3, .L1257+36
ARM GAS  /tmp/ccghtDyP.s 			page 113


 6385 012c 614F     		ldr	r7, .L1257+40
 6386 012e 07CB     		ldmia	r3!, {r0, r1, r2}
 6387 0130 07F1300C 		add	ip, r7, #48
 6388 0134 C4F83201 		str	r0, [r4, #306]	@ unaligned
 6389 0138 C4F83611 		str	r1, [r4, #310]	@ unaligned
 6390 013c C4F83A21 		str	r2, [r4, #314]	@ unaligned
 6391 0140 04F5A076 		add	r6, r4, #320
 6392              	.L1200:
 6393 0144 3D46     		mov	r5, r7
 6394 0146 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 6395 0148 6545     		cmp	r5, ip
 6396 014a 3060     		str	r0, [r6]	@ unaligned
 6397 014c 7160     		str	r1, [r6, #4]	@ unaligned
 6398 014e B260     		str	r2, [r6, #8]	@ unaligned
 6399 0150 F360     		str	r3, [r6, #12]	@ unaligned
 6400 0152 2F46     		mov	r7, r5
 6401 0154 06F11006 		add	r6, r6, #16
 6402 0158 F4D1     		bne	.L1200
 6403 015a 574F     		ldr	r7, .L1257+44
 6404 015c 04F5B876 		add	r6, r4, #368
 6405 0160 07F1300C 		add	ip, r7, #48
 6406              	.L1201:
 6407 0164 3D46     		mov	r5, r7
 6408 0166 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 6409 0168 6545     		cmp	r5, ip
 6410 016a 3060     		str	r0, [r6]	@ unaligned
 6411 016c 7160     		str	r1, [r6, #4]	@ unaligned
 6412 016e B260     		str	r2, [r6, #8]	@ unaligned
 6413 0170 F360     		str	r3, [r6, #12]	@ unaligned
 6414 0172 2F46     		mov	r7, r5
 6415 0174 06F11006 		add	r6, r6, #16
 6416 0178 F4D1     		bne	.L1201
 6417 017a 504F     		ldr	r7, .L1257+48
 6418 017c 04F5D476 		add	r6, r4, #424
 6419 0180 07F1300C 		add	ip, r7, #48
 6420              	.L1202:
 6421 0184 3D46     		mov	r5, r7
 6422 0186 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 6423 0188 6545     		cmp	r5, ip
 6424 018a 3060     		str	r0, [r6]	@ unaligned
 6425 018c 7160     		str	r1, [r6, #4]	@ unaligned
 6426 018e B260     		str	r2, [r6, #8]	@ unaligned
 6427 0190 F360     		str	r3, [r6, #12]	@ unaligned
 6428 0192 2F46     		mov	r7, r5
 6429 0194 06F11006 		add	r6, r6, #16
 6430 0198 F4D1     		bne	.L1202
 6431 019a 494F     		ldr	r7, .L1257+52
 6432 019c 04F5EC76 		add	r6, r4, #472
 6433 01a0 07F1300C 		add	ip, r7, #48
 6434              	.L1203:
 6435 01a4 3D46     		mov	r5, r7
 6436 01a6 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 6437 01a8 6545     		cmp	r5, ip
 6438 01aa 3060     		str	r0, [r6]	@ unaligned
 6439 01ac 7160     		str	r1, [r6, #4]	@ unaligned
 6440 01ae B260     		str	r2, [r6, #8]	@ unaligned
 6441 01b0 F360     		str	r3, [r6, #12]	@ unaligned
ARM GAS  /tmp/ccghtDyP.s 			page 114


 6442 01b2 2F46     		mov	r7, r5
 6443 01b4 06F11006 		add	r6, r6, #16
 6444 01b8 F4D1     		bne	.L1203
 6445 01ba 424B     		ldr	r3, .L1257+56
 6446 01bc C4F8A431 		str	r3, [r4, #420]	@ float
 6447 01c0 0022     		movs	r2, #0
 6448 01c2 2120     		movs	r0, #33
 6449 01c4 C4F8A031 		str	r3, [r4, #416]	@ float
 6450 01c8 84F89420 		strb	r2, [r4, #148]
 6451 01cc 84F80004 		strb	r0, [r4, #1024]
 6452 01d0 FFF7FEFF 		bl	_Z15PinToAdcChannelm
 6453 01d4 84F8C109 		strb	r0, [r4, #2497]
 6454 01d8 2046     		mov	r0, r4
 6455 01da FFF7FEFF 		bl	_ZN8Platform17SetZProbeDefaultsEv
 6456 01de 2046     		mov	r0, r4
 6457 01e0 FFF7FEFF 		bl	_ZN8Platform10InitZProbeEv
 6458 01e4 DFF800C1 		ldr	ip, .L1257+92
 6459 01e8 04F5E465 		add	r5, r4, #1824
 6460 01ec 0CF12007 		add	r7, ip, #32
 6461              	.L1204:
 6462 01f0 6646     		mov	r6, ip
 6463 01f2 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 6464 01f4 BE42     		cmp	r6, r7
 6465 01f6 2860     		str	r0, [r5]	@ unaligned
 6466 01f8 6960     		str	r1, [r5, #4]	@ unaligned
 6467 01fa AA60     		str	r2, [r5, #8]	@ unaligned
 6468 01fc EB60     		str	r3, [r5, #12]	@ unaligned
 6469 01fe B446     		mov	ip, r6
 6470 0200 05F11005 		add	r5, r5, #16
 6471 0204 F4D1     		bne	.L1204
 6472 0206 304F     		ldr	r7, .L1257+60
 6473 0208 3068     		ldr	r0, [r6]
 6474 020a 2860     		str	r0, [r5]	@ unaligned
 6475 020c 07F1200C 		add	ip, r7, #32
 6476 0210 04F24475 		addw	r5, r4, #1860
 6477              	.L1205:
 6478 0214 3E46     		mov	r6, r7
 6479 0216 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 6480 0218 6645     		cmp	r6, ip
 6481 021a 2860     		str	r0, [r5]	@ unaligned
 6482 021c 6960     		str	r1, [r5, #4]	@ unaligned
 6483 021e AA60     		str	r2, [r5, #8]	@ unaligned
 6484 0220 EB60     		str	r3, [r5, #12]	@ unaligned
 6485 0222 3746     		mov	r7, r6
 6486 0224 05F11005 		add	r5, r5, #16
 6487 0228 F4D1     		bne	.L1205
 6488 022a 3068     		ldr	r0, [r6]
 6489 022c 2860     		str	r0, [r5]	@ unaligned
 6490 022e 274B     		ldr	r3, .L1257+64
 6491 0230 C4F8C033 		str	r3, [r4, #960]	@ float
 6492 0234 0025     		movs	r5, #0
 6493 0236 0121     		movs	r1, #1
 6494 0238 3520     		movs	r0, #53
 6495 023a C4F86857 		str	r5, [r4, #1896]
 6496 023e C4F86C57 		str	r5, [r4, #1900]
 6497 0242 FFF7FEFF 		bl	setPullup
 6498 0246 224F     		ldr	r7, .L1257+68
ARM GAS  /tmp/ccghtDyP.s 			page 115


 6499 0248 224E     		ldr	r6, .L1257+72
 6500 024a 2348     		ldr	r0, .L1257+76
 6501 024c 234A     		ldr	r2, .L1257+80
 6502 024e 2449     		ldr	r1, .L1257+84
 6503 0250 9FED248A 		vldr.32	s16, .L1257+88
 6504 0254 4FF0FF33 		mov	r3, #-1
 6505 0258 C7F8A430 		str	r3, [r7, #164]
 6506 025c C6F8A430 		str	r3, [r6, #164]
 6507 0260 C0F8A430 		str	r3, [r0, #164]
 6508 0264 C1F8A430 		str	r3, [r1, #164]
 6509 0268 C2F8A430 		str	r3, [r2, #164]
 6510 026c 4E22     		movs	r2, #78
 6511 026e 4B23     		movs	r3, #75
 6512 0270 A846     		mov	r8, r5
 6513 0272 04F1CF07 		add	r7, r4, #207
 6514 0276 04F52676 		add	r6, r4, #664
 6515 027a A146     		mov	r9, r4
 6516 027c 4620     		movs	r0, #70
 6517 027e CDE90123 		strd	r2, r3, [sp, #4]
 6518 0282 4FF0010A 		mov	r10, #1
 6519 0286 0394     		str	r4, [sp, #12]
 6520 0288 35E0     		b	.L1208
 6521              	.L1258:
 6522 028a 00BF     		.align	2
 6523              	.L1257:
 6524 028c 00000000 		.word	.LC35
 6525 0290 04000000 		.word	.LC36
 6526 0294 00000000 		.word	SerialUSB
 6527 0298 00000000 		.word	Serial
 6528 029c 00000000 		.word	.LANCHOR11
 6529 02a0 00000000 		.word	.LANCHOR12
 6530 02a4 00000000 		.word	_ZL14DefaultGateway
 6531 02a8 00000000 		.word	g_interrupt_enabled
 6532 02ac CDCCCCCC 		.word	-858993459
 6533 02b0 00000000 		.word	.LANCHOR14
 6534 02b4 00000000 		.word	.LANCHOR15
 6535 02b8 00000000 		.word	.LANCHOR16
 6536 02bc 00000000 		.word	.LANCHOR17
 6537 02c0 00000000 		.word	.LANCHOR18
 6538 02c4 00401C46 		.word	1176256512
 6539 02c8 00000000 		.word	.LANCHOR20
 6540 02cc 9A99993E 		.word	1050253722
 6541 02d0 000E0E40 		.word	1074662912
 6542 02d4 00100E40 		.word	1074663424
 6543 02d8 00120E40 		.word	1074663936
 6544 02dc 00160E40 		.word	1074664960
 6545 02e0 00140E40 		.word	1074664448
 6546 02e4 00000000 		.word	0
 6547 02e8 00000000 		.word	.LANCHOR19
 6548              	.L1253:
 6549 02ec 695C     		ldrb	r1, [r5, r1]	@ zero_extendqisi2
 6550 02ee AA5C     		ldrb	r2, [r5, r2]	@ zero_extendqisi2
 6551 02f0 E85C     		ldrb	r0, [r5, r3]	@ zero_extendqisi2
 6552 02f2 0291     		str	r1, [sp, #8]
 6553 02f4 0192     		str	r2, [sp, #4]
 6554              	.L1208:
 6555 02f6 CB4B     		ldr	r3, .L1259
ARM GAS  /tmp/ccghtDyP.s 			page 116


 6556 02f8 87F81980 		strb	r8, [r7, #25]
 6557 02fc 07F801AF 		strb	r10, [r7, #1]!
 6558 0300 C0EBC00B 		rsb	fp, r0, r0, lsl #3
 6559 0304 082D     		cmp	r5, #8
 6560 0306 03EB8B04 		add	r4, r3, fp, lsl #2
 6561 030a 4FF00002 		mov	r2, #0
 6562 030e 4FF00301 		mov	r1, #3
 6563 0312 87F82480 		strb	r8, [r7, #36]
 6564 0316 87F80C80 		strb	r8, [r7, #12]
 6565 031a 07D8     		bhi	.L1206
 6566 031c C9F8F8A2 		str	r10, [r9, #760]
 6567 0320 89F8FC52 		strb	r5, [r9, #764]
 6568 0324 C6F8D8A4 		str	r10, [r6, #1240]
 6569 0328 C6F8FCA4 		str	r10, [r6, #1276]
 6570              	.L1206:
 6571 032c 6368     		ldr	r3, [r4, #4]
 6572 032e C6F8E430 		str	r3, [r6, #228]
 6573 0332 C6F8B430 		str	r3, [r6, #180]
 6574 0336 FFF7FEFF 		bl	pinModeDuet
 6575 033a 0298     		ldr	r0, [sp, #8]
 6576 033c 0022     		movs	r2, #0
 6577 033e 0321     		movs	r1, #3
 6578 0340 FFF7FEFF 		bl	pinModeDuet
 6579 0344 0198     		ldr	r0, [sp, #4]
 6580 0346 0022     		movs	r2, #0
 6581 0348 0421     		movs	r1, #4
 6582 034a FFF7FEFF 		bl	pinModeDuet
 6583 034e B54B     		ldr	r3, .L1259
 6584 0350 6268     		ldr	r2, [r4, #4]
 6585 0352 53F82B30 		ldr	r3, [r3, fp, lsl #2]
 6586 0356 C3F8A020 		str	r2, [r3, #160]
 6587 035a 039B     		ldr	r3, [sp, #12]
 6588 035c A6EC018A 		vstmia.32	r6!, {s16}
 6589 0360 2B44     		add	r3, r3, r5
 6590 0362 4FF07E52 		mov	r2, #1065353216
 6591 0366 F262     		str	r2, [r6, #44]	@ float
 6592 0368 83F8C480 		strb	r8, [r3, #196]
 6593 036c 0121     		movs	r1, #1
 6594 036e 0135     		adds	r5, r5, #1
 6595 0370 97F86200 		ldrb	r0, [r7, #98]	@ zero_extendqisi2
 6596 0374 FFF7FEFF 		bl	setPullup
 6597 0378 0C2D     		cmp	r5, #12
 6598 037a 09F10809 		add	r9, r9, #8
 6599 037e AA49     		ldr	r1, .L1259+4
 6600 0380 AA4A     		ldr	r2, .L1259+8
 6601 0382 AB4B     		ldr	r3, .L1259+12
 6602 0384 B2D1     		bne	.L1253
 6603 0386 039C     		ldr	r4, [sp, #12]
 6604 0388 0022     		movs	r2, #0
 6605 038a 04F56B73 		add	r3, r4, #940
 6606 038e 04F56F71 		add	r1, r4, #956
 6607              	.L1209:
 6608 0392 43F8042B 		str	r2, [r3], #4
 6609 0396 9942     		cmp	r1, r3
 6610 0398 FBD1     		bne	.L1209
 6611 039a A64E     		ldr	r6, .L1259+16
 6612 039c C4F8BC23 		str	r2, [r4, #956]
ARM GAS  /tmp/ccghtDyP.s 			page 117


 6613 03a0 0021     		movs	r1, #0
 6614 03a2 04F23F30 		addw	r0, r4, #831
 6615 03a6 04F50273 		add	r3, r4, #520
 6616 03aa 0322     		movs	r2, #3
 6617              	.L1210:
 6618 03ac 551C     		adds	r5, r2, #1
 6619 03ae 00F8012F 		strb	r2, [r0, #1]!
 6620 03b2 43F8041B 		str	r1, [r3], #4	@ float
 6621 03b6 EAB2     		uxtb	r2, r5
 6622 03b8 0C2A     		cmp	r2, #12
 6623 03ba 5964     		str	r1, [r3, #68]	@ float
 6624 03bc 1962     		str	r1, [r3, #32]	@ float
 6625 03be 9E66     		str	r6, [r3, #104]	@ float
 6626 03c0 F4D1     		bne	.L1210
 6627 03c2 C820     		movs	r0, #200
 6628 03c4 FFF7FEFF 		bl	coreDelay
 6629 03c8 FFF7FEFF 		bl	_ZN13DuetExpansion9DueXnInitEv
 6630 03cc 0228     		cmp	r0, #2
 6631 03ce 84F8BD00 		strb	r0, [r4, #189]
 6632 03d2 00F02381 		beq	.L1212
 6633 03d6 0328     		cmp	r0, #3
 6634 03d8 40F01981 		bne	.L1254
 6635 03dc 0A23     		movs	r3, #10
 6636 03de C4F8C433 		str	r3, [r4, #964]
 6637              	.L1214:
 6638 03e2 C823     		movs	r3, #200
 6639 03e4 CB20     		movs	r0, #203
 6640 03e6 CA21     		movs	r1, #202
 6641 03e8 C922     		movs	r2, #201
 6642 03ea 84F83731 		strb	r3, [r4, #311]
 6643 03ee D523     		movs	r3, #213
 6644 03f0 84F83801 		strb	r0, [r4, #312]
 6645 03f4 84F83911 		strb	r1, [r4, #313]
 6646 03f8 84F83A21 		strb	r2, [r4, #314]
 6647 03fc 84F83B31 		strb	r3, [r4, #315]
 6648              	.L1215:
 6649 0400 0026     		movs	r6, #0
 6650 0402 FFF7FEFF 		bl	_ZN13DuetExpansion20AdditionalOutputInitEv
 6651 0406 D4F8C413 		ldr	r1, [r4, #964]
 6652 040a 8848     		ldr	r0, .L1259+8
 6653 040c 84F8D963 		strb	r6, [r4, #985]
 6654 0410 FFF7FEFF 		bl	_ZN12SmartDrivers4InitEPKhj
 6655 0414 884A     		ldr	r2, .L1259+20
 6656 0416 894B     		ldr	r3, .L1259+24
 6657 0418 C4F8D463 		str	r6, [r4, #980]
 6658 041c 03CA     		ldmia	r2!, {r0, r1}
 6659 041e 04F5F765 		add	r5, r4, #1976
 6660 0422 04F68422 		addw	r2, r4, #2692
 6661 0426 0027     		movs	r7, #0
 6662 0428 C4F8D063 		str	r6, [r4, #976]
 6663 042c C4F8CC63 		str	r6, [r4, #972]
 6664 0430 C4F8C863 		str	r6, [r4, #968]
 6665 0434 84F8DB63 		strb	r6, [r4, #987]
 6666 0438 84F8DA63 		strb	r6, [r4, #986]
 6667 043c C4F8F063 		str	r6, [r4, #1008]
 6668 0440 C4F8EC63 		str	r6, [r4, #1004]
 6669 0444 C4F8E863 		str	r6, [r4, #1000]
ARM GAS  /tmp/ccghtDyP.s 			page 118


 6670 0448 C4F8E463 		str	r6, [r4, #996]
 6671 044c C4F8FC63 		str	r6, [r4, #1020]
 6672 0450 C4F8F863 		str	r6, [r4, #1016]
 6673 0454 C4F8F463 		str	r6, [r4, #1012]
 6674 0458 84F8F069 		strb	r6, [r4, #2544]
 6675 045c 84F8F169 		strb	r6, [r4, #2545]
 6676 0460 1760     		str	r7, [r2]	@ float
 6677 0462 C4F8B807 		str	r0, [r4, #1976]	@ unaligned
 6678 0466 6960     		str	r1, [r5, #4]	@ unaligned
 6679 0468 03CB     		ldmia	r3!, {r0, r1}
 6680 046a 04F5F867 		add	r7, r4, #1984
 6681 046e 744B     		ldr	r3, .L1259+28
 6682 0470 C4F8C007 		str	r0, [r4, #1984]	@ unaligned
 6683 0474 7960     		str	r1, [r7, #4]	@ unaligned
 6684 0476 03CB     		ldmia	r3!, {r0, r1}
 6685 0478 724A     		ldr	r2, .L1259+32
 6686 047a C4F8C807 		str	r0, [r4, #1992]	@ unaligned
 6687 047e 002E     		cmp	r6, #0
 6688 0480 C4F8CC17 		str	r1, [r4, #1996]	@ unaligned
 6689 0484 C4F8D067 		str	r6, [r4, #2000]
 6690 0488 02F10301 		add	r1, r2, #3
 6691 048c 4FF00100 		mov	r0, #1
 6692 0490 06DB     		blt	.L1218
 6693              	.L1256:
 6694 0492 D4F8D037 		ldr	r3, [r4, #2000]
 6695 0496 00FA06F6 		lsl	r6, r0, r6
 6696 049a 1E43     		orrs	r6, r6, r3
 6697 049c C4F8D067 		str	r6, [r4, #2000]
 6698              	.L1218:
 6699 04a0 9142     		cmp	r1, r2
 6700 04a2 05D0     		beq	.L1255
 6701              	.L1250:
 6702 04a4 12F9016B 		ldrsb	r6, [r2], #1
 6703 04a8 002E     		cmp	r6, #0
 6704 04aa F2DA     		bge	.L1256
 6705 04ac 9142     		cmp	r1, r2
 6706 04ae F9D1     		bne	.L1250
 6707              	.L1255:
 6708 04b0 654E     		ldr	r6, .L1259+36
 6709 04b2 4FF4FA73 		mov	r3, #500
 6710 04b6 06F10708 		add	r8, r6, #7
 6711 04ba C4F8D437 		str	r3, [r4, #2004]
 6712 04be 1C20     		movs	r0, #28
 6713 04c0 01E0     		b	.L1217
 6714              	.L1221:
 6715 04c2 16F8010B 		ldrb	r0, [r6], #1	@ zero_extendqisi2
 6716              	.L1217:
 6717 04c6 0121     		movs	r1, #1
 6718 04c8 FFF7FEFF 		bl	setPullup
 6719 04cc 4645     		cmp	r6, r8
 6720 04ce F8D1     		bne	.L1221
 6721              	.L1223:
 6722 04d0 287A     		ldrb	r0, [r5, #8]	@ zero_extendqisi2
 6723 04d2 FF28     		cmp	r0, #255
 6724 04d4 2E46     		mov	r6, r5
 6725 04d6 4FF00002 		mov	r2, #0
 6726 04da 4FF00301 		mov	r1, #3
ARM GAS  /tmp/ccghtDyP.s 			page 119


 6727 04de 01D0     		beq	.L1222
 6728 04e0 FFF7FEFF 		bl	pinModeDuet
 6729              	.L1222:
 6730 04e4 3078     		ldrb	r0, [r6]	@ zero_extendqisi2
 6731 04e6 0022     		movs	r2, #0
 6732 04e8 0521     		movs	r1, #5
 6733 04ea FFF7FEFF 		bl	pinModeDuet
 6734 04ee 15F8010B 		ldrb	r0, [r5], #1	@ zero_extendqisi2
 6735 04f2 FFF7FEFF 		bl	_Z15PinToAdcChannelm
 6736 04f6 BD42     		cmp	r5, r7
 6737 04f8 85F8FF01 		strb	r0, [r5, #511]
 6738 04fc E8D1     		bne	.L1223
 6739 04fe FFF7FEFF 		bl	_Z24GetTemperatureAdcChannelv
 6740 0502 524D     		ldr	r5, .L1259+40
 6741 0504 84F8C009 		strb	r0, [r4, #2496]
 6742 0508 2D1B     		subs	r5, r5, r4
 6743 050a 04F6B71A 		addw	r10, r4, #2487
 6744 050e 04F51C67 		add	r7, r4, #2496
 6745 0512 4FF00009 		mov	r9, #0
 6746 0516 4C26     		movs	r6, #76
 6747 0518 4FF00108 		mov	r8, #1
 6748              	.L1226:
 6749 051c 05EB0A03 		add	r3, r5, r10
 6750              		.syntax unified
 6751              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 6752 0520 EFF31080 		MRS r0, primask
 6753              	@ 0 "" 2
 6754              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 6755 0524 72B6     		cpsid i
 6756              	@ 0 "" 2
 6757              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 6758 0526 BFF35F8F 		dmb
 6759              	@ 0 "" 2
 6760              		.thumb
 6761              		.syntax unified
 6762 052a 4949     		ldr	r1, .L1259+44
 6763 052c 06FB0342 		mla	r2, r6, r3, r4
 6764 0530 4FF0260C 		mov	ip, #38
 6765 0534 81F80090 		strb	r9, [r1]
 6766 0538 C2F8AC94 		str	r9, [r2, #1196]
 6767 053c 0CFB03F1 		mul	r1, ip, r3
 6768 0540 C2F8A894 		str	r9, [r2, #1192]
 6769 0544 0023     		movs	r3, #0
 6770 0546 82F8B094 		strb	r9, [r2, #1200]
 6771              	.L1224:
 6772 054a CA18     		adds	r2, r1, r3
 6773 054c 02F50D72 		add	r2, r2, #564
 6774 0550 0133     		adds	r3, r3, #1
 6775 0552 202B     		cmp	r3, #32
 6776 0554 24F81290 		strh	r9, [r4, r2, lsl #1]	@ movhi
 6777 0558 F7D1     		bne	.L1224
 6778 055a 28B9     		cbnz	r0, .L1225
 6779 055c 3C4B     		ldr	r3, .L1259+44
 6780 055e 83F80080 		strb	r8, [r3]
 6781              		.syntax unified
 6782              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 6783 0562 BFF35F8F 		dmb
ARM GAS  /tmp/ccghtDyP.s 			page 120


 6784              	@ 0 "" 2
 6785              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 6786 0566 62B6     		cpsie i
 6787              	@ 0 "" 2
 6788              		.thumb
 6789              		.syntax unified
 6790              	.L1225:
 6791 0568 1AF9010F 		ldrsb	r0, [r10, #1]!
 6792 056c 0121     		movs	r1, #1
 6793 056e FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 6794 0572 5745     		cmp	r7, r10
 6795 0574 D2D1     		bne	.L1226
 6796 0576 2046     		mov	r0, r4
 6797 0578 FFF7FEFF 		bl	_ZN8Platform8InitFansEv
 6798 057c 04F51D60 		add	r0, r4, #2512
 6799 0580 04F6CC13 		addw	r3, r4, #2508
 6800 0584 4FF07C55 		mov	r5, #1056964608
 6801 0588 0560     		str	r5, [r0]	@ float
 6802 058a 3248     		ldr	r0, .L1259+48
 6803 058c 1860     		str	r0, [r3]	@ float
 6804 058e 04F21C73 		addw	r3, r4, #1820
 6805 0592 0025     		movs	r5, #0
 6806 0594 0022     		movs	r2, #0
 6807 0596 3049     		ldr	r1, .L1259+52
 6808 0598 C4F81817 		str	r1, [r4, #1816]
 6809 059c C4F81457 		str	r5, [r4, #1812]
 6810 05a0 2420     		movs	r0, #36
 6811 05a2 1A60     		str	r2, [r3]	@ float
 6812 05a4 FFF7FEFF 		bl	_Z15PinToAdcChannelm
 6813 05a8 2A46     		mov	r2, r5
 6814 05aa 84F8D409 		strb	r0, [r4, #2516]
 6815 05ae 0521     		movs	r1, #5
 6816 05b0 2420     		movs	r0, #36
 6817 05b2 FFF7FEFF 		bl	pinModeDuet
 6818 05b6 94F9D409 		ldrsb	r0, [r4, #2516]
 6819 05ba 0121     		movs	r1, #1
 6820 05bc FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 6821 05c0 42F20F73 		movw	r3, #9999
 6822 05c4 A4F8D859 		strh	r5, [r4, #2520]	@ movhi
 6823 05c8 C4F8E459 		str	r5, [r4, #2532]
 6824 05cc A4F8D659 		strh	r5, [r4, #2518]	@ movhi
 6825 05d0 C4F8E059 		str	r5, [r4, #2528]
 6826 05d4 A4F8DA39 		strh	r3, [r4, #2522]	@ movhi
 6827 05d8 8822     		movs	r2, #136
 6828 05da C4F8EC59 		str	r5, [r4, #2540]
 6829 05de 4FF0FF31 		mov	r1, #-1
 6830 05e2 C4F8E859 		str	r5, [r4, #2536]
 6831 05e6 04F69520 		addw	r0, r4, #2709
 6832 05ea FFF7FEFF 		bl	memset
 6833 05ee 2046     		mov	r0, r4
 6834 05f0 05B0     		add	sp, sp, #20
 6835              		@ sp needed
 6836 05f2 BDEC028B 		vldm	sp!, {d8}
 6837 05f6 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 6838 05fa FFF7FEBF 		b	_ZN8Platform20InitialiseInterruptsEv
 6839              	.L1197:
 6840 05fe 174B     		ldr	r3, .L1259+56
ARM GAS  /tmp/ccghtDyP.s 			page 121


 6841 0600 1868     		ldr	r0, [r3]
 6842 0602 9B88     		ldrh	r3, [r3, #4]	@ unaligned
 6843 0604 C4F8A100 		str	r0, [r4, #161]	@ unaligned
 6844 0608 A4F8A530 		strh	r3, [r4, #165]	@ unaligned
 6845 060c 8DE5     		b	.L1198
 6846              	.L1254:
 6847 060e 0523     		movs	r3, #5
 6848 0610 C4F8C433 		str	r3, [r4, #964]
 6849 0614 0028     		cmp	r0, #0
 6850 0616 3FF4F3AE 		beq	.L1215
 6851 061a E2E6     		b	.L1214
 6852              	.L1212:
 6853 061c 0723     		movs	r3, #7
 6854 061e C4F8C433 		str	r3, [r4, #964]
 6855 0622 DEE6     		b	.L1214
 6856              	.L1260:
 6857              		.align	2
 6858              	.L1259:
 6859 0624 00000000 		.word	g_APinDescription
 6860 0628 00000000 		.word	.LANCHOR5
 6861 062c 00000000 		.word	.LANCHOR3
 6862 0630 00000000 		.word	.LANCHOR4
 6863 0634 CDCC4C3E 		.word	1045220557
 6864 0638 00000000 		.word	.LANCHOR21
 6865 063c 00000000 		.word	.LANCHOR22
 6866 0640 00000000 		.word	.LANCHOR23
 6867 0644 01000000 		.word	.LANCHOR24+1
 6868 0648 01000000 		.word	.LANCHOR23+1
 6869 064c 49F6FFFF 		.word	-2487
 6870 0650 00000000 		.word	g_interrupt_enabled
 6871 0654 0000E03F 		.word	1071644672
 6872 0658 E0FF0100 		.word	131040
 6873 065c 00000000 		.word	.LANCHOR13
 6874              		.size	_ZN8Platform4InitEv, .-_ZN8Platform4InitEv
 6875              		.section	.text._ZN8Platform4ExitEv,"ax",%progbits
 6876              		.align	1
 6877              		.p2align 2,,3
 6878              		.global	_ZN8Platform4ExitEv
 6879              		.syntax unified
 6880              		.thumb
 6881              		.thumb_func
 6882              		.fpu fpv4-sp-d16
 6883              		.type	_ZN8Platform4ExitEv, %function
 6884              	_ZN8Platform4ExitEv:
 6885              		@ args = 0, pretend = 0, frame = 0
 6886              		@ frame_needed = 0, uses_anonymous_args = 0
 6887 0000 10B5     		push	{r4, lr}
 6888 0002 0446     		mov	r4, r0
 6889 0004 0068     		ldr	r0, [r0]
 6890 0006 28B1     		cbz	r0, .L1262
 6891 0008 04F6F813 		addw	r3, r4, #2552
 6892 000c D3E90023 		ldrd	r2, [r3]
 6893 0010 FFF7FEFF 		bl	_ZN6Logger4StopEx
 6894              	.L1262:
 6895 0014 D4F8B409 		ldr	r0, [r4, #2484]
 6896 0018 FFF7FEFF 		bl	_ZN11MassStorage13CloseAllFilesEv
 6897 001c D4F89009 		ldr	r0, [r4, #2448]
ARM GAS  /tmp/ccghtDyP.s 			page 122


 6898 0020 28B1     		cbz	r0, .L1263
 6899              	.L1264:
 6900 0022 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 6901 0026 C4F89009 		str	r0, [r4, #2448]
 6902 002a 0028     		cmp	r0, #0
 6903 002c F9D1     		bne	.L1264
 6904              	.L1263:
 6905 002e 0023     		movs	r3, #0
 6906 0030 84F8BE30 		strb	r3, [r4, #190]
 6907 0034 0348     		ldr	r0, .L1273
 6908 0036 FFF7FEFF 		bl	_ZN9SerialCDC3endEv
 6909 003a 0348     		ldr	r0, .L1273+4
 6910 003c BDE81040 		pop	{r4, lr}
 6911 0040 FFF7FEBF 		b	_ZN9UARTClass3endEv
 6912              	.L1274:
 6913              		.align	2
 6914              	.L1273:
 6915 0044 00000000 		.word	SerialUSB
 6916 0048 00000000 		.word	Serial
 6917              		.size	_ZN8Platform4ExitEv, .-_ZN8Platform4ExitEv
 6918              		.section	.text._ZN8Platform12ResetChannelEj,"ax",%progbits
 6919              		.align	1
 6920              		.p2align 2,,3
 6921              		.global	_ZN8Platform12ResetChannelEj
 6922              		.syntax unified
 6923              		.thumb
 6924              		.thumb_func
 6925              		.fpu fpv4-sp-d16
 6926              		.type	_ZN8Platform12ResetChannelEj, %function
 6927              	_ZN8Platform12ResetChannelEj:
 6928              		@ args = 0, pretend = 0, frame = 0
 6929              		@ frame_needed = 0, uses_anonymous_args = 0
 6930 0000 10B5     		push	{r4, lr}
 6931 0002 0446     		mov	r4, r0
 6932 0004 61B1     		cbz	r1, .L1277
 6933 0006 0129     		cmp	r1, #1
 6934 0008 09D1     		bne	.L1281
 6935 000a 0A48     		ldr	r0, .L1282
 6936 000c FFF7FEFF 		bl	_ZN9UARTClass3endEv
 6937 0010 D4F87019 		ldr	r1, [r4, #2416]
 6938 0014 0748     		ldr	r0, .L1282
 6939 0016 BDE81040 		pop	{r4, lr}
 6940 001a FFF7FEBF 		b	_ZN9UARTClass5beginEm
 6941              	.L1281:
 6942 001e 10BD     		pop	{r4, pc}
 6943              	.L1277:
 6944 0020 0548     		ldr	r0, .L1282+4
 6945 0022 FFF7FEFF 		bl	_ZN9SerialCDC3endEv
 6946 0026 D4F86C19 		ldr	r1, [r4, #2412]
 6947 002a 0348     		ldr	r0, .L1282+4
 6948 002c BDE81040 		pop	{r4, lr}
 6949 0030 FFF7FEBF 		b	_ZN9SerialCDC5beginEm
 6950              	.L1283:
 6951              		.align	2
 6952              	.L1282:
 6953 0034 00000000 		.word	Serial
 6954 0038 00000000 		.word	SerialUSB
ARM GAS  /tmp/ccghtDyP.s 			page 123


 6955              		.size	_ZN8Platform12ResetChannelEj, .-_ZN8Platform12ResetChannelEj
 6956              		.section	.text._ZN8Platform11SetBaudRateEjm,"ax",%progbits
 6957              		.align	1
 6958              		.p2align 2,,3
 6959              		.global	_ZN8Platform11SetBaudRateEjm
 6960              		.syntax unified
 6961              		.thumb
 6962              		.thumb_func
 6963              		.fpu fpv4-sp-d16
 6964              		.type	_ZN8Platform11SetBaudRateEjm, %function
 6965              	_ZN8Platform11SetBaudRateEjm:
 6966              		@ args = 0, pretend = 0, frame = 0
 6967              		@ frame_needed = 0, uses_anonymous_args = 0
 6968              		@ link register save eliminated.
 6969 0000 0129     		cmp	r1, #1
 6970 0002 00D9     		bls	.L1289
 6971 0004 7047     		bx	lr
 6972              	.L1289:
 6973 0006 00EB8103 		add	r3, r0, r1, lsl #2
 6974 000a 10B4     		push	{r4}
 6975 000c C3F86C29 		str	r2, [r3, #2412]
 6976 0010 5DF8044B 		ldr	r4, [sp], #4
 6977 0014 FFF7FEBF 		b	_ZN8Platform12ResetChannelEj
 6978              		.size	_ZN8Platform11SetBaudRateEjm, .-_ZN8Platform11SetBaudRateEjm
 6979              		.section	.text._ZN8Platform18SetCommsPropertiesEjm,"ax",%progbits
 6980              		.align	1
 6981              		.p2align 2,,3
 6982              		.global	_ZN8Platform18SetCommsPropertiesEjm
 6983              		.syntax unified
 6984              		.thumb
 6985              		.thumb_func
 6986              		.fpu fpv4-sp-d16
 6987              		.type	_ZN8Platform18SetCommsPropertiesEjm, %function
 6988              	_ZN8Platform18SetCommsPropertiesEjm:
 6989              		@ args = 0, pretend = 0, frame = 0
 6990              		@ frame_needed = 0, uses_anonymous_args = 0
 6991              		@ link register save eliminated.
 6992 0000 0129     		cmp	r1, #1
 6993 0002 00D9     		bls	.L1295
 6994 0004 7047     		bx	lr
 6995              	.L1295:
 6996 0006 0B46     		mov	r3, r1
 6997 0008 0344     		add	r3, r3, r0
 6998 000a 10B4     		push	{r4}
 6999 000c 83F87429 		strb	r2, [r3, #2420]
 7000 0010 5DF8044B 		ldr	r4, [sp], #4
 7001 0014 FFF7FEBF 		b	_ZN8Platform12ResetChannelEj
 7002              		.size	_ZN8Platform18SetCommsPropertiesEjm, .-_ZN8Platform18SetCommsPropertiesEjm
 7003              		.section	.text._ZN8Platform13SoftwareResetEtPKm,"ax",%progbits
 7004              		.align	1
 7005              		.p2align 2,,3
 7006              		.global	_ZN8Platform13SoftwareResetEtPKm
 7007              		.syntax unified
 7008              		.thumb
 7009              		.thumb_func
 7010              		.fpu fpv4-sp-d16
 7011              		.type	_ZN8Platform13SoftwareResetEtPKm, %function
ARM GAS  /tmp/ccghtDyP.s 			page 124


 7012              	_ZN8Platform13SoftwareResetEtPKm:
 7013              		@ args = 0, pretend = 0, frame = 512
 7014              		@ frame_needed = 0, uses_anonymous_args = 0
 7015 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 7016 0004 0746     		mov	r7, r0
 7017 0006 ADF5007D 		sub	sp, sp, #512
 7018 000a 0C46     		mov	r4, r1
 7019 000c 1646     		mov	r6, r2
 7020              		.syntax unified
 7021              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 7022 000e 72B6     		cpsid i
 7023              	@ 0 "" 2
 7024              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 7025 0010 BFF35F8F 		dmb
 7026              	@ 0 "" 2
 7027              		.thumb
 7028              		.syntax unified
 7029 0014 484B     		ldr	r3, .L1332
 7030 0016 4948     		ldr	r0, .L1332+4
 7031 0018 0022     		movs	r2, #0
 7032 001a 1A70     		strb	r2, [r3]
 7033 001c FFF7FEFF 		bl	wdt_restart
 7034 0020 4748     		ldr	r0, .L1332+8
 7035 0022 FFF7FEFF 		bl	rswdt_restart
 7036 0026 102C     		cmp	r4, #16
 7037 0028 00F08280 		beq	.L1328
 7038 002c 002C     		cmp	r4, #0
 7039 002e 71D1     		bne	.L1329
 7040              	.L1299:
 7041 0030 444B     		ldr	r3, .L1332+12
 7042 0032 454A     		ldr	r2, .L1332+16
 7043 0034 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 7044 0036 92F83E10 		ldrb	r1, [r2, #62]	@ zero_extendqisi2
 7045 003a 97F81D2B 		ldrb	r2, [r7, #2845]	@ zero_extendqisi2
 7046 003e 5B01     		lsls	r3, r3, #5
 7047 0040 DBB2     		uxtb	r3, r3
 7048 0042 0C43     		orrs	r4, r4, r1
 7049 0044 1C43     		orrs	r4, r4, r3
 7050 0046 22B1     		cbz	r2, .L1301
 7051 0048 6FEA4444 		mvn	r4, r4, lsl #17
 7052 004c 6FEA5444 		mvn	r4, r4, lsr #17
 7053 0050 A4B2     		uxth	r4, r4
 7054              	.L1301:
 7055 0052 6846     		mov	r0, sp
 7056 0054 8021     		movs	r1, #128
 7057 0056 FFF7FEFF 		bl	flash_read_user_signature
 7058 005a 0028     		cmp	r0, #0
 7059 005c 50D1     		bne	.L1302
 7060 005e 5FAA     		add	r2, sp, #380
 7061 0060 0423     		movs	r3, #4
 7062              	.L1303:
 7063 0062 02F18000 		add	r0, r2, #128
 7064 0066 1146     		mov	r1, r2
 7065 0068 01E0     		b	.L1307
 7066              	.L1331:
 7067 006a 8842     		cmp	r0, r1
 7068 006c 43D0     		beq	.L1330
ARM GAS  /tmp/ccghtDyP.s 			page 125


 7069              	.L1307:
 7070 006e 51F8045F 		ldr	r5, [r1, #4]!
 7071 0072 0135     		adds	r5, r5, #1
 7072 0074 F9D0     		beq	.L1331
 7073 0076 042B     		cmp	r3, #4
 7074 0078 42D0     		beq	.L1302
 7075              	.L1304:
 7076 007a DD01     		lsls	r5, r3, #7
 7077 007c 0DEB0508 		add	r8, sp, r5
 7078 0080 D7F8F839 		ldr	r3, [r7, #2552]
 7079 0084 C8F81C30 		str	r3, [r8, #28]
 7080 0088 47F60853 		movw	r3, #32008
 7081 008c 2DF80530 		strh	r3, [sp, r5]	@ movhi
 7082 0090 A8F80240 		strh	r4, [r8, #2]	@ movhi
 7083 0094 FFF7FEFF 		bl	_ZN5Tasks15GetNeverUsedRamEv
 7084 0098 2C4B     		ldr	r3, .L1332+20
 7085 009a C8F80400 		str	r0, [r8, #4]
 7086 009e DA6A     		ldr	r2, [r3, #44]
 7087 00a0 C8F80820 		str	r2, [r8, #8]
 7088 00a4 9A6A     		ldr	r2, [r3, #40]
 7089 00a6 C8F80C20 		str	r2, [r8, #12]
 7090 00aa 5A68     		ldr	r2, [r3, #4]
 7091 00ac C8F81020 		str	r2, [r8, #16]
 7092 00b0 9B6B     		ldr	r3, [r3, #56]
 7093 00b2 C8F81430 		str	r3, [r8, #20]
 7094 00b6 9EB1     		cbz	r6, .L1308
 7095 00b8 05F11C03 		add	r3, r5, #28
 7096 00bc 2448     		ldr	r0, .L1332+24
 7097 00be C8F81860 		str	r6, [r8, #24]
 7098 00c2 6B44     		add	r3, r3, sp
 7099 00c4 06F16001 		add	r1, r6, #96
 7100              	.L1310:
 7101 00c8 8642     		cmp	r6, r0
 7102 00ca 38BF     		it	cc
 7103 00cc 3268     		ldrcc	r2, [r6]
 7104 00ce 06F10406 		add	r6, r6, #4
 7105 00d2 28BF     		it	cs
 7106 00d4 4FF0FF32 		movcs	r2, #-1
 7107 00d8 8E42     		cmp	r6, r1
 7108 00da 43F8042F 		str	r2, [r3, #4]!
 7109 00de F3D1     		bne	.L1310
 7110              	.L1308:
 7111 00e0 6846     		mov	r0, sp
 7112 00e2 8021     		movs	r1, #128
 7113 00e4 FFF7FEFF 		bl	flash_write_user_signature
 7114              	.L1298:
 7115 00e8 1A4B     		ldr	r3, .L1332+28
 7116 00ea 4FF02542 		mov	r2, #-1526726656
 7117 00ee 9A60     		str	r2, [r3, #8]
 7118 00f0 FFF7FEFF 		bl	Reset
 7119              	.L1311:
 7120 00f4 FEE7     		b	.L1311
 7121              	.L1330:
 7122 00f6 013B     		subs	r3, r3, #1
 7123 00f8 A2F18002 		sub	r2, r2, #128
 7124 00fc B1D1     		bne	.L1303
 7125 00fe BCE7     		b	.L1304
ARM GAS  /tmp/ccghtDyP.s 			page 126


 7126              	.L1302:
 7127 0100 FFF7FEFF 		bl	flash_erase_user_signature
 7128 0104 4FF40072 		mov	r2, #512
 7129 0108 FF21     		movs	r1, #255
 7130 010a 6846     		mov	r0, sp
 7131 010c FFF7FEFF 		bl	memset
 7132 0110 0023     		movs	r3, #0
 7133 0112 B2E7     		b	.L1304
 7134              	.L1329:
 7135 0114 1048     		ldr	r0, .L1332+32
 7136 0116 FFF7FEFF 		bl	_ZNK9SerialCDC8canWriteEv
 7137 011a 08B9     		cbnz	r0, .L1300
 7138 011c 44F48044 		orr	r4, r4, #16384
 7139              	.L1300:
 7140 0120 0E48     		ldr	r0, .L1332+36
 7141 0122 FFF7FEFF 		bl	_ZNK9UARTClass8canWriteEv
 7142 0126 0028     		cmp	r0, #0
 7143 0128 82D1     		bne	.L1299
 7144 012a 44F40064 		orr	r4, r4, #2048
 7145 012e 7FE7     		b	.L1299
 7146              	.L1328:
 7147 0130 FFF7FEFF 		bl	EraseAndReset
 7148 0134 D8E7     		b	.L1298
 7149              	.L1333:
 7150 0136 00BF     		.align	2
 7151              	.L1332:
 7152 0138 00000000 		.word	g_interrupt_enabled
 7153 013c 50180E40 		.word	1074665552
 7154 0140 00190E40 		.word	1074665728
 7155 0144 00000000 		.word	.LANCHOR25
 7156 0148 00000000 		.word	reprap
 7157 014c 00ED00E0 		.word	-536810240
 7158 0150 00000000 		.word	_estack
 7159 0154 00180E40 		.word	1074665472
 7160 0158 00000000 		.word	SerialUSB
 7161 015c 00000000 		.word	Serial
 7162              		.size	_ZN8Platform13SoftwareResetEtPKm, .-_ZN8Platform13SoftwareResetEtPKm
 7163              		.section	.text._ZN8Platform16FlushAuxMessagesEv,"ax",%progbits
 7164              		.align	1
 7165              		.p2align 2,,3
 7166              		.global	_ZN8Platform16FlushAuxMessagesEv
 7167              		.syntax unified
 7168              		.thumb
 7169              		.thumb_func
 7170              		.fpu fpv4-sp-d16
 7171              		.type	_ZN8Platform16FlushAuxMessagesEv, %function
 7172              	_ZN8Platform16FlushAuxMessagesEv:
 7173              		@ args = 0, pretend = 0, frame = 8
 7174              		@ frame_needed = 0, uses_anonymous_args = 0
 7175 0000 70B5     		push	{r4, r5, r6, lr}
 7176 0002 82B0     		sub	sp, sp, #8
 7177 0004 00F68C11 		addw	r1, r0, #2444
 7178 0008 00F67814 		addw	r4, r0, #2424
 7179 000c 4FF0FF32 		mov	r2, #-1
 7180 0010 6846     		mov	r0, sp
 7181 0012 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 7182 0016 2046     		mov	r0, r4
ARM GAS  /tmp/ccghtDyP.s 			page 127


 7183 0018 FFF7FEFF 		bl	_ZNVK11OutputStack12GetFirstItemEv
 7184 001c 70B1     		cbz	r0, .L1336
 7185 001e 0546     		mov	r5, r0
 7186 0020 1848     		ldr	r0, .L1345
 7187 0022 FFF7FEFF 		bl	_ZNK9UARTClass8canWriteEv
 7188 0026 D5F80C21 		ldr	r2, [r5, #268]
 7189 002a D5F81031 		ldr	r3, [r5, #272]
 7190 002e D61A     		subs	r6, r2, r3
 7191 0030 8642     		cmp	r6, r0
 7192 0032 28BF     		it	cs
 7193 0034 0646     		movcs	r6, r0
 7194 0036 6EB9     		cbnz	r6, .L1343
 7195 0038 9A42     		cmp	r2, r3
 7196 003a 1AD0     		beq	.L1344
 7197              	.L1336:
 7198 003c 2046     		mov	r0, r4
 7199 003e FFF7FEFF 		bl	_ZNVK11OutputStack12GetFirstItemEv
 7200 0042 0446     		mov	r4, r0
 7201 0044 6846     		mov	r0, sp
 7202 0046 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 7203 004a 201C     		adds	r0, r4, #0
 7204 004c 18BF     		it	ne
 7205 004e 0120     		movne	r0, #1
 7206 0050 02B0     		add	sp, sp, #8
 7207              		@ sp needed
 7208 0052 70BD     		pop	{r4, r5, r6, pc}
 7209              	.L1343:
 7210 0054 3146     		mov	r1, r6
 7211 0056 2846     		mov	r0, r5
 7212 0058 FFF7FEFF 		bl	_ZN12OutputBuffer4ReadEj
 7213 005c 3246     		mov	r2, r6
 7214 005e 0146     		mov	r1, r0
 7215 0060 0848     		ldr	r0, .L1345
 7216 0062 FFF7FEFF 		bl	_ZN9UARTClass5writeEPKhj
 7217 0066 D5F80C21 		ldr	r2, [r5, #268]
 7218 006a D5F81031 		ldr	r3, [r5, #272]
 7219 006e 9A42     		cmp	r2, r3
 7220 0070 E4D1     		bne	.L1336
 7221              	.L1344:
 7222 0072 2846     		mov	r0, r5
 7223 0074 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 7224 0078 0146     		mov	r1, r0
 7225 007a 2046     		mov	r0, r4
 7226 007c FFF7FEFF 		bl	_ZNV11OutputStack12SetFirstItemEP12OutputBuffer
 7227 0080 DCE7     		b	.L1336
 7228              	.L1346:
 7229 0082 00BF     		.align	2
 7230              	.L1345:
 7231 0084 00000000 		.word	Serial
 7232              		.size	_ZN8Platform16FlushAuxMessagesEv, .-_ZN8Platform16FlushAuxMessagesEv
 7233              		.section	.text._ZN8Platform14SendAuxMessageEPKc,"ax",%progbits
 7234              		.align	1
 7235              		.p2align 2,,3
 7236              		.global	_ZN8Platform14SendAuxMessageEPKc
 7237              		.syntax unified
 7238              		.thumb
 7239              		.thumb_func
ARM GAS  /tmp/ccghtDyP.s 			page 128


 7240              		.fpu fpv4-sp-d16
 7241              		.type	_ZN8Platform14SendAuxMessageEPKc, %function
 7242              	_ZN8Platform14SendAuxMessageEPKc:
 7243              		@ args = 0, pretend = 0, frame = 8
 7244              		@ frame_needed = 0, uses_anonymous_args = 0
 7245 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 7246 0002 85B0     		sub	sp, sp, #20
 7247 0004 0446     		mov	r4, r0
 7248 0006 03A8     		add	r0, sp, #12
 7249 0008 0D46     		mov	r5, r1
 7250 000a FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 7251 000e E0B1     		cbz	r0, .L1347
 7252 0010 0F49     		ldr	r1, .L1353
 7253 0012 0398     		ldr	r0, [sp, #12]
 7254 0014 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 7255 0018 2846     		mov	r0, r5
 7256 001a FFF7FEFF 		bl	strlen
 7257 001e 039F     		ldr	r7, [sp, #12]
 7258 0020 0023     		movs	r3, #0
 7259 0022 0126     		movs	r6, #1
 7260 0024 0246     		mov	r2, r0
 7261 0026 CDE90063 		strd	r6, r3, [sp]
 7262 002a 2946     		mov	r1, r5
 7263 002c 3846     		mov	r0, r7
 7264 002e FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 7265 0032 0849     		ldr	r1, .L1353+4
 7266 0034 0398     		ldr	r0, [sp, #12]
 7267 0036 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 7268 003a 04F67810 		addw	r0, r4, #2424
 7269 003e 0399     		ldr	r1, [sp, #12]
 7270 0040 FFF7FEFF 		bl	_ZNV11OutputStack4PushEP12OutputBuffer
 7271 0044 2046     		mov	r0, r4
 7272 0046 FFF7FEFF 		bl	_ZN8Platform16FlushAuxMessagesEv
 7273              	.L1347:
 7274 004a 05B0     		add	sp, sp, #20
 7275              		@ sp needed
 7276 004c F0BD     		pop	{r4, r5, r6, r7, pc}
 7277              	.L1354:
 7278 004e 00BF     		.align	2
 7279              	.L1353:
 7280 0050 00000000 		.word	.LC37
 7281 0054 0C000000 		.word	.LC38
 7282              		.size	_ZN8Platform14SendAuxMessageEPKc, .-_ZN8Platform14SendAuxMessageEPKc
 7283              		.section	.text._ZN8Platform10RawMessageE11MessageTypePKc,"ax",%progbits
 7284              		.align	1
 7285              		.p2align 2,,3
 7286              		.global	_ZN8Platform10RawMessageE11MessageTypePKc
 7287              		.syntax unified
 7288              		.thumb
 7289              		.thumb_func
 7290              		.fpu fpv4-sp-d16
 7291              		.type	_ZN8Platform10RawMessageE11MessageTypePKc, %function
 7292              	_ZN8Platform10RawMessageE11MessageTypePKc:
 7293              		@ args = 0, pretend = 0, frame = 16
 7294              		@ frame_needed = 0, uses_anonymous_args = 0
 7295 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 7296 0004 1446     		mov	r4, r2
ARM GAS  /tmp/ccghtDyP.s 			page 129


 7297 0006 0A06     		lsls	r2, r1, #24
 7298 0008 86B0     		sub	sp, sp, #24
 7299 000a 0D46     		mov	r5, r1
 7300 000c 0646     		mov	r6, r0
 7301 000e 08D5     		bpl	.L1356
 7302 0010 0068     		ldr	r0, [r0]
 7303 0012 30B1     		cbz	r0, .L1356
 7304 0014 06F6F813 		addw	r3, r6, #2552
 7305 0018 D3E90023 		ldrd	r2, [r3]
 7306 001c 0094     		str	r4, [sp]
 7307 001e FFF7FEFF 		bl	_ZN6Logger10LogMessageExPKc
 7308              	.L1356:
 7309 0022 2B07     		lsls	r3, r5, #28
 7310 0024 47D4     		bmi	.L1416
 7311 0026 6F07     		lsls	r7, r5, #29
 7312 0028 0AD4     		bmi	.L1417
 7313              	.L1358:
 7314 002a E806     		lsls	r0, r5, #27
 7315 002c 49D4     		bmi	.L1418
 7316              	.L1360:
 7317 002e A906     		lsls	r1, r5, #26
 7318 0030 4ED4     		bmi	.L1419
 7319              	.L1361:
 7320 0032 AA07     		lsls	r2, r5, #30
 7321 0034 53D4     		bmi	.L1420
 7322              	.L1362:
 7323 0036 EB07     		lsls	r3, r5, #31
 7324 0038 12D4     		bmi	.L1421
 7325 003a 06B0     		add	sp, sp, #24
 7326              		@ sp needed
 7327 003c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 7328              	.L1417:
 7329 0040 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 7330 0042 7B2B     		cmp	r3, #123
 7331 0044 72D0     		beq	.L1371
 7332 0046 002B     		cmp	r3, #0
 7333 0048 EFD0     		beq	.L1358
 7334 004a C5F38022 		ubfx	r2, r5, #10, #1
 7335              	.L1359:
 7336 004e 96F89839 		ldrb	r3, [r6, #2456]	@ zero_extendqisi2
 7337 0052 002B     		cmp	r3, #0
 7338 0054 E9D0     		beq	.L1358
 7339 0056 2146     		mov	r1, r4
 7340 0058 3046     		mov	r0, r6
 7341 005a FFF7FEFF 		bl	_ZN8Platform14AppendAuxReplyEPKcb.part.25
 7342 005e E4E7     		b	.L1358
 7343              	.L1421:
 7344 0060 0DF11008 		add	r8, sp, #16
 7345 0064 4FF0FF32 		mov	r2, #-1
 7346 0068 4046     		mov	r0, r8
 7347 006a 06F51B61 		add	r1, r6, #2480
 7348 006e FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 7349 0072 2F4B     		ldr	r3, .L1424
 7350 0074 9B69     		ldr	r3, [r3, #24]
 7351 0076 1A69     		ldr	r2, [r3, #16]
 7352 0078 0AB1     		cbz	r2, .L1366
 7353 007a 5B7A     		ldrb	r3, [r3, #9]	@ zero_extendqisi2
ARM GAS  /tmp/ccghtDyP.s 			page 130


 7354 007c ABB1     		cbz	r3, .L1367
 7355              	.L1366:
 7356 007e 06F69C16 		addw	r6, r6, #2460
 7357 0082 3046     		mov	r0, r6
 7358 0084 FFF7FEFF 		bl	_ZNVK11OutputStack11GetLastItemEv
 7359 0088 0390     		str	r0, [sp, #12]
 7360 008a 10B1     		cbz	r0, .L1368
 7361 008c 90F81431 		ldrb	r3, [r0, #276]	@ zero_extendqisi2
 7362 0090 43B1     		cbz	r3, .L1369
 7363              	.L1368:
 7364 0092 03A8     		add	r0, sp, #12
 7365 0094 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 7366 0098 38B1     		cbz	r0, .L1367
 7367 009a 3046     		mov	r0, r6
 7368 009c 0399     		ldr	r1, [sp, #12]
 7369 009e FFF7FEFF 		bl	_ZNV11OutputStack4PushEP12OutputBuffer
 7370 00a2 0398     		ldr	r0, [sp, #12]
 7371              	.L1369:
 7372 00a4 2146     		mov	r1, r4
 7373 00a6 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 7374              	.L1367:
 7375 00aa 4046     		mov	r0, r8
 7376 00ac FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 7377              	.L1423:
 7378 00b0 06B0     		add	sp, sp, #24
 7379              		@ sp needed
 7380 00b2 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 7381              	.L1416:
 7382 00b6 3046     		mov	r0, r6
 7383 00b8 2146     		mov	r1, r4
 7384 00ba FFF7FEFF 		bl	_ZN8Platform14SendAuxMessageEPKc
 7385 00be E806     		lsls	r0, r5, #27
 7386 00c0 B5D5     		bpl	.L1360
 7387              	.L1418:
 7388 00c2 1B4B     		ldr	r3, .L1424
 7389 00c4 2146     		mov	r1, r4
 7390 00c6 5868     		ldr	r0, [r3, #4]
 7391 00c8 FFF7FEFF 		bl	_ZN7Network20HandleHttpGCodeReplyEPKc
 7392 00cc A906     		lsls	r1, r5, #26
 7393 00ce B0D5     		bpl	.L1361
 7394              	.L1419:
 7395 00d0 174B     		ldr	r3, .L1424
 7396 00d2 2146     		mov	r1, r4
 7397 00d4 5868     		ldr	r0, [r3, #4]
 7398 00d6 FFF7FEFF 		bl	_ZN7Network22HandleTelnetGCodeReplyEPKc
 7399 00da AA07     		lsls	r2, r5, #30
 7400 00dc ABD5     		bpl	.L1362
 7401              	.L1420:
 7402 00de 0DF11008 		add	r8, sp, #16
 7403 00e2 06F51B61 		add	r1, r6, #2480
 7404 00e6 4FF0FF32 		mov	r2, #-1
 7405 00ea 4046     		mov	r0, r8
 7406 00ec FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 7407 00f0 2046     		mov	r0, r4
 7408 00f2 FFF7FEFF 		bl	strlen
 7409 00f6 0F4E     		ldr	r6, .L1424+4
 7410 00f8 0D4F     		ldr	r7, .L1424
ARM GAS  /tmp/ccghtDyP.s 			page 131


 7411 00fa 0546     		mov	r5, r0
 7412 00fc 0DE0     		b	.L1364
 7413              	.L1422:
 7414 00fe 3846     		mov	r0, r7
 7415 0100 002D     		cmp	r5, #0
 7416 0102 D2D0     		beq	.L1367
 7417 0104 FFF7FEFF 		bl	_ZNK6RepRap19SpinTimeoutImminentEv
 7418 0108 2A46     		mov	r2, r5
 7419 010a 2146     		mov	r1, r4
 7420 010c 0028     		cmp	r0, #0
 7421 010e CCD1     		bne	.L1367
 7422 0110 3046     		mov	r0, r6
 7423 0112 FFF7FEFF 		bl	_ZN9SerialCDC5writeEPKhj
 7424 0116 2D1A     		subs	r5, r5, r0
 7425 0118 0444     		add	r4, r4, r0
 7426              	.L1364:
 7427 011a 3046     		mov	r0, r6
 7428 011c FFF7FEFF 		bl	_ZNK9SerialCDCcvbEv
 7429 0120 0028     		cmp	r0, #0
 7430 0122 ECD1     		bne	.L1422
 7431 0124 4046     		mov	r0, r8
 7432 0126 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 7433 012a C1E7     		b	.L1423
 7434              	.L1371:
 7435 012c 0122     		movs	r2, #1
 7436 012e 8EE7     		b	.L1359
 7437              	.L1425:
 7438              		.align	2
 7439              	.L1424:
 7440 0130 00000000 		.word	reprap
 7441 0134 00000000 		.word	SerialUSB
 7442              		.size	_ZN8Platform10RawMessageE11MessageTypePKc, .-_ZN8Platform10RawMessageE11MessageTypePKc
 7443              		.section	.text._ZN8Platform8MessageFE11MessageTypePKcSt9__va_list,"ax",%progbits
 7444              		.align	1
 7445              		.p2align 2,,3
 7446              		.global	_ZN8Platform8MessageFE11MessageTypePKcSt9__va_list
 7447              		.syntax unified
 7448              		.thumb
 7449              		.thumb_func
 7450              		.fpu fpv4-sp-d16
 7451              		.type	_ZN8Platform8MessageFE11MessageTypePKcSt9__va_list, %function
 7452              	_ZN8Platform8MessageFE11MessageTypePKcSt9__va_list:
 7453              		@ args = 0, pretend = 0, frame = 1040
 7454              		@ frame_needed = 0, uses_anonymous_args = 0
 7455 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 7456 0004 ADF2144D 		subw	sp, sp, #1044
 7457 0008 0C46     		mov	r4, r1
 7458 000a 03AD     		add	r5, sp, #12
 7459 000c 0021     		movs	r1, #0
 7460 000e 1746     		mov	r7, r2
 7461 0010 E205     		lsls	r2, r4, #23
 7462 0012 0646     		mov	r6, r0
 7463 0014 9846     		mov	r8, r3
 7464 0016 2970     		strb	r1, [r5]
 7465 0018 24D4     		bmi	.L1432
 7466 001a A305     		lsls	r3, r4, #22
 7467 001c 12D4     		bmi	.L1433
ARM GAS  /tmp/ccghtDyP.s 			page 132


 7468 001e 40F20143 		movw	r3, #1025
 7469 0022 4246     		mov	r2, r8
 7470 0024 3946     		mov	r1, r7
 7471 0026 01A8     		add	r0, sp, #4
 7472 0028 CDE90153 		strd	r5, r3, [sp, #4]
 7473 002c FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 7474              	.L1428:
 7475 0030 24F44071 		bic	r1, r4, #768
 7476 0034 2A46     		mov	r2, r5
 7477 0036 3046     		mov	r0, r6
 7478 0038 FFF7FEFF 		bl	_ZN8Platform10RawMessageE11MessageTypePKc
 7479 003c 0DF2144D 		addw	sp, sp, #1044
 7480              		@ sp needed
 7481 0040 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 7482              	.L1433:
 7483 0044 0A49     		ldr	r1, .L1434
 7484 0046 01A8     		add	r0, sp, #4
 7485 0048 40F20149 		movw	r9, #1025
 7486              	.L1431:
 7487 004c CDE90159 		strd	r5, r9, [sp, #4]
 7488 0050 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 7489 0054 01A8     		add	r0, sp, #4
 7490 0056 4246     		mov	r2, r8
 7491 0058 3946     		mov	r1, r7
 7492 005a CDE90159 		strd	r5, r9, [sp, #4]
 7493 005e FFF7FEFF 		bl	_ZNK9StringRef5vcatfEPKcSt9__va_list
 7494 0062 E5E7     		b	.L1428
 7495              	.L1432:
 7496 0064 01A8     		add	r0, sp, #4
 7497 0066 40F20149 		movw	r9, #1025
 7498 006a 0249     		ldr	r1, .L1434+4
 7499 006c EEE7     		b	.L1431
 7500              	.L1435:
 7501 006e 00BF     		.align	2
 7502              	.L1434:
 7503 0070 08000000 		.word	.LC40
 7504 0074 00000000 		.word	.LC39
 7505              		.size	_ZN8Platform8MessageFE11MessageTypePKcSt9__va_list, .-_ZN8Platform8MessageFE11MessageTypePKc
 7506              		.section	.text._ZN8Platform8MessageFE11MessageTypePKcz,"ax",%progbits
 7507              		.align	1
 7508              		.p2align 2,,3
 7509              		.global	_ZN8Platform8MessageFE11MessageTypePKcz
 7510              		.syntax unified
 7511              		.thumb
 7512              		.thumb_func
 7513              		.fpu fpv4-sp-d16
 7514              		.type	_ZN8Platform8MessageFE11MessageTypePKcz, %function
 7515              	_ZN8Platform8MessageFE11MessageTypePKcz:
 7516              		@ args = 4, pretend = 8, frame = 8
 7517              		@ frame_needed = 0, uses_anonymous_args = 1
 7518 0000 0CB4     		push	{r2, r3}
 7519 0002 00B5     		push	{lr}
 7520 0004 83B0     		sub	sp, sp, #12
 7521 0006 04AB     		add	r3, sp, #16
 7522 0008 53F8042B 		ldr	r2, [r3], #4
 7523 000c 0193     		str	r3, [sp, #4]
 7524 000e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcSt9__va_list
ARM GAS  /tmp/ccghtDyP.s 			page 133


 7525 0012 03B0     		add	sp, sp, #12
 7526              		@ sp needed
 7527 0014 5DF804EB 		ldr	lr, [sp], #4
 7528 0018 02B0     		add	sp, sp, #8
 7529 001a 7047     		bx	lr
 7530              		.size	_ZN8Platform8MessageFE11MessageTypePKcz, .-_ZN8Platform8MessageFE11MessageTypePKcz
 7531              		.section	.text._ZN8Platform4BeepEii,"ax",%progbits
 7532              		.align	1
 7533              		.p2align 2,,3
 7534              		.global	_ZN8Platform4BeepEii
 7535              		.syntax unified
 7536              		.thumb
 7537              		.thumb_func
 7538              		.fpu fpv4-sp-d16
 7539              		.type	_ZN8Platform4BeepEii, %function
 7540              	_ZN8Platform4BeepEii:
 7541              		@ args = 0, pretend = 0, frame = 0
 7542              		@ frame_needed = 0, uses_anonymous_args = 0
 7543 0000 00B5     		push	{lr}
 7544 0002 83B0     		sub	sp, sp, #12
 7545 0004 0B46     		mov	r3, r1
 7546 0006 0092     		str	r2, [sp]
 7547 0008 0421     		movs	r1, #4
 7548 000a 034A     		ldr	r2, .L1440
 7549 000c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 7550 0010 03B0     		add	sp, sp, #12
 7551              		@ sp needed
 7552 0012 5DF804FB 		ldr	pc, [sp], #4
 7553              	.L1441:
 7554 0016 00BF     		.align	2
 7555              	.L1440:
 7556 0018 00000000 		.word	.LC41
 7557              		.size	_ZN8Platform4BeepEii, .-_ZN8Platform4BeepEii
 7558              		.section	.text._ZN8Platform13ReportDriversE11MessageTypemPKcRb.part.30,"ax",%progbits
 7559              		.align	1
 7560              		.p2align 2,,3
 7561              		.syntax unified
 7562              		.thumb
 7563              		.thumb_func
 7564              		.fpu fpv4-sp-d16
 7565              		.type	_ZN8Platform13ReportDriversE11MessageTypemPKcRb.part.30, %function
 7566              	_ZN8Platform13ReportDriversE11MessageTypemPKcRb.part.30:
 7567              		@ args = 4, pretend = 0, frame = 224
 7568              		@ frame_needed = 0, uses_anonymous_args = 0
 7569 0000 2DE9F046 		push	{r4, r5, r6, r7, r9, r10, lr}
 7570 0004 B9B0     		sub	sp, sp, #228
 7571 0006 38AF     		add	r7, sp, #224
 7572 0008 0025     		movs	r5, #0
 7573 000a 07F8E05D 		strb	r5, [r7, #-224]!
 7574 000e 1446     		mov	r4, r2
 7575 0010 8146     		mov	r9, r0
 7576 0012 8A46     		mov	r10, r1
 7577 0014 3846     		mov	r0, r7
 7578 0016 1A46     		mov	r2, r3
 7579 0018 1049     		ldr	r1, .L1454
 7580 001a FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 7581 001e 84B1     		cbz	r4, .L1443
ARM GAS  /tmp/ccghtDyP.s 			page 134


 7582 0020 0F4E     		ldr	r6, .L1454+4
 7583 0022 03E0     		b	.L1445
 7584              	.L1444:
 7585 0024 6408     		lsrs	r4, r4, #1
 7586 0026 05F10105 		add	r5, r5, #1
 7587 002a 0AD0     		beq	.L1443
 7588              	.L1445:
 7589 002c E307     		lsls	r3, r4, #31
 7590 002e F9D5     		bpl	.L1444
 7591 0030 2A46     		mov	r2, r5
 7592 0032 3146     		mov	r1, r6
 7593 0034 3846     		mov	r0, r7
 7594 0036 FFF7FEFF 		bl	_ZN6StringILj220EE4catfEPKcz
 7595 003a 6408     		lsrs	r4, r4, #1
 7596 003c 05F10105 		add	r5, r5, #1
 7597 0040 F4D1     		bne	.L1445
 7598              	.L1443:
 7599 0042 3B46     		mov	r3, r7
 7600 0044 5146     		mov	r1, r10
 7601 0046 4846     		mov	r0, r9
 7602 0048 064A     		ldr	r2, .L1454+8
 7603 004a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 7604 004e 409A     		ldr	r2, [sp, #256]
 7605 0050 0123     		movs	r3, #1
 7606 0052 1370     		strb	r3, [r2]
 7607 0054 39B0     		add	sp, sp, #228
 7608              		@ sp needed
 7609 0056 BDE8F086 		pop	{r4, r5, r6, r7, r9, r10, pc}
 7610              	.L1455:
 7611 005a 00BF     		.align	2
 7612              	.L1454:
 7613 005c 00000000 		.word	.LC42
 7614 0060 10000000 		.word	.LC43
 7615 0064 14000000 		.word	.LC44
 7616              		.size	_ZN8Platform13ReportDriversE11MessageTypemPKcRb.part.30, .-_ZN8Platform13ReportDriversE11Mes
 7617              		.section	.text._ZN8Platform13ReportDriversE11MessageTypemPKcRb,"ax",%progbits
 7618              		.align	1
 7619              		.p2align 2,,3
 7620              		.global	_ZN8Platform13ReportDriversE11MessageTypemPKcRb
 7621              		.syntax unified
 7622              		.thumb
 7623              		.thumb_func
 7624              		.fpu fpv4-sp-d16
 7625              		.type	_ZN8Platform13ReportDriversE11MessageTypemPKcRb, %function
 7626              	_ZN8Platform13ReportDriversE11MessageTypemPKcRb:
 7627              		@ args = 4, pretend = 0, frame = 0
 7628              		@ frame_needed = 0, uses_anonymous_args = 0
 7629              		@ link register save eliminated.
 7630 0000 02B9     		cbnz	r2, .L1458
 7631 0002 7047     		bx	lr
 7632              	.L1458:
 7633 0004 FFF7FEBF 		b	_ZN8Platform13ReportDriversE11MessageTypemPKcRb.part.30
 7634              		.size	_ZN8Platform13ReportDriversE11MessageTypemPKcRb, .-_ZN8Platform13ReportDriversE11MessageType
 7635              		.section	.text._ZN8Platform13PrintUniqueIdE11MessageType,"ax",%progbits
 7636              		.align	1
 7637              		.p2align 2,,3
 7638              		.global	_ZN8Platform13PrintUniqueIdE11MessageType
ARM GAS  /tmp/ccghtDyP.s 			page 135


 7639              		.syntax unified
 7640              		.thumb
 7641              		.thumb_func
 7642              		.fpu fpv4-sp-d16
 7643              		.type	_ZN8Platform13PrintUniqueIdE11MessageType, %function
 7644              	_ZN8Platform13PrintUniqueIdE11MessageType:
 7645              		@ args = 0, pretend = 0, frame = 40
 7646              		@ frame_needed = 0, uses_anonymous_args = 0
 7647 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 7648 0004 8BB0     		sub	sp, sp, #44
 7649 0006 2E4F     		ldr	r7, .L1472
 7650 0008 01AE     		add	r6, sp, #4
 7651 000a 0022     		movs	r2, #0
 7652 000c 4FF02D0C 		mov	ip, #45
 7653 0010 1BE0     		b	.L1464
 7654              	.L1471:
 7655 0012 002A     		cmp	r2, #0
 7656 0014 50D0     		beq	.L1466
 7657 0016 06F802CB 		strb	ip, [r6], #2
 7658 001a C846     		mov	r8, r9
 7659 001c B146     		mov	r9, r6
 7660              	.L1460:
 7661 001e 1B2C     		cmp	r4, #27
 7662 0020 06D9     		bls	.L1461
 7663 0022 DEF8AC30 		ldr	r3, [lr, #172]
 7664 0026 C4F12004 		rsb	r4, r4, #32
 7665 002a 03FA04F4 		lsl	r4, r3, r4
 7666 002e 2543     		orrs	r5, r5, r4
 7667              	.L1461:
 7668 0030 05F01F03 		and	r3, r5, #31
 7669 0034 092B     		cmp	r3, #9
 7670 0036 DCB2     		uxtb	r4, r3
 7671 0038 1ED8     		bhi	.L1462
 7672 003a 04F13003 		add	r3, r4, #48
 7673              	.L1463:
 7674 003e 0132     		adds	r2, r2, #1
 7675 0040 1E2A     		cmp	r2, #30
 7676 0042 88F80030 		strb	r3, [r8]
 7677 0046 4E46     		mov	r6, r9
 7678 0048 2CD0     		beq	.L1470
 7679              	.L1464:
 7680 004a 02EB8204 		add	r4, r2, r2, lsl #2
 7681 004e 4FEA541E 		lsr	lr, r4, #5
 7682 0052 A7FB0253 		umull	r5, r3, r7, r2
 7683 0056 00EB8E0E 		add	lr, r0, lr, lsl #2
 7684 005a 9B08     		lsrs	r3, r3, #2
 7685 005c DEF8A850 		ldr	r5, [lr, #168]
 7686 0060 03EB8303 		add	r3, r3, r3, lsl #2
 7687 0064 04F01F04 		and	r4, r4, #31
 7688 0068 9A42     		cmp	r2, r3
 7689 006a 25FA04F5 		lsr	r5, r5, r4
 7690 006e 06F10109 		add	r9, r6, #1
 7691 0072 CED0     		beq	.L1471
 7692 0074 B046     		mov	r8, r6
 7693 0076 D2E7     		b	.L1460
 7694              	.L1462:
 7695 0078 04F13703 		add	r3, r4, #55
ARM GAS  /tmp/ccghtDyP.s 			page 136


 7696 007c 422B     		cmp	r3, #66
 7697 007e DED9     		bls	.L1463
 7698 0080 0C2C     		cmp	r4, #12
 7699 0082 1BD0     		beq	.L1467
 7700 0084 04F13903 		add	r3, r4, #57
 7701 0088 482B     		cmp	r3, #72
 7702 008a D8D9     		bls	.L1463
 7703 008c 04F13A03 		add	r3, r4, #58
 7704 0090 4E2B     		cmp	r3, #78
 7705 0092 D4D9     		bls	.L1463
 7706 0094 0132     		adds	r2, r2, #1
 7707 0096 04F13B03 		add	r3, r4, #59
 7708 009a 1E2A     		cmp	r2, #30
 7709 009c 88F80030 		strb	r3, [r8]
 7710 00a0 4E46     		mov	r6, r9
 7711 00a2 D2D1     		bne	.L1464
 7712              	.L1470:
 7713 00a4 0022     		movs	r2, #0
 7714 00a6 88F80120 		strb	r2, [r8, #1]
 7715 00aa 01AB     		add	r3, sp, #4
 7716 00ac 054A     		ldr	r2, .L1472+4
 7717 00ae FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 7718 00b2 0BB0     		add	sp, sp, #44
 7719              		@ sp needed
 7720 00b4 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 7721              	.L1466:
 7722 00b8 B046     		mov	r8, r6
 7723 00ba B9E7     		b	.L1461
 7724              	.L1467:
 7725 00bc 4423     		movs	r3, #68
 7726 00be BEE7     		b	.L1463
 7727              	.L1473:
 7728              		.align	2
 7729              	.L1472:
 7730 00c0 CDCCCCCC 		.word	-858993459
 7731 00c4 00000000 		.word	.LC45
 7732              		.size	_ZN8Platform13PrintUniqueIdE11MessageType, .-_ZN8Platform13PrintUniqueIdE11MessageType
 7733              		.global	__aeabi_uldivmod
 7734              		.section	.text._ZN8Platform11SetDateTimeEx,"ax",%progbits
 7735              		.align	1
 7736              		.p2align 2,,3
 7737              		.global	_ZN8Platform11SetDateTimeEx
 7738              		.syntax unified
 7739              		.thumb
 7740              		.thumb_func
 7741              		.fpu fpv4-sp-d16
 7742              		.type	_ZN8Platform11SetDateTimeEx, %function
 7743              	_ZN8Platform11SetDateTimeEx:
 7744              		@ args = 0, pretend = 0, frame = 48
 7745              		@ frame_needed = 0, uses_anonymous_args = 0
 7746 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 7747 0002 8FB0     		sub	sp, sp, #60
 7748 0004 0446     		mov	r4, r0
 7749 0006 05A9     		add	r1, sp, #20
 7750 0008 02A8     		add	r0, sp, #8
 7751 000a CDE90223 		strd	r2, [sp, #8]
 7752 000e FFF7FEFF 		bl	gmtime_r
ARM GAS  /tmp/ccghtDyP.s 			page 137


 7753 0012 0028     		cmp	r0, #0
 7754 0014 14BF     		ite	ne
 7755 0016 0125     		movne	r5, #1
 7756 0018 0025     		moveq	r5, #0
 7757 001a 2AD0     		beq	.L1475
 7758 001c DDE90223 		ldrd	r2, [sp, #8]
 7759 0020 04F6F811 		addw	r1, r4, #2552
 7760 0024 C1E90023 		strd	r2, [r1]
 7761 0028 FFF7FEFF 		bl	millis64
 7762 002c 4FF47A72 		mov	r2, #1000
 7763 0030 0023     		movs	r3, #0
 7764 0032 FFF7FEFF 		bl	__aeabi_uldivmod
 7765 0036 104B     		ldr	r3, .L1480
 7766 0038 104F     		ldr	r7, .L1480+4
 7767 003a 114A     		ldr	r2, .L1480+8
 7768 003c A3FB0013 		umull	r1, r3, r3, r0
 7769 0040 DB0A     		lsrs	r3, r3, #11
 7770 0042 A7FB00C6 		umull	ip, r6, r7, r0
 7771 0046 4FF46161 		mov	r1, #3600
 7772 004a 01FB1301 		mls	r1, r1, r3, r0
 7773 004e 7609     		lsrs	r6, r6, #5
 7774 0050 A7FB0171 		umull	r7, r1, r7, r1
 7775 0054 C6EB0616 		rsb	r6, r6, r6, lsl #4
 7776 0058 4909     		lsrs	r1, r1, #5
 7777 005a A0EB8600 		sub	r0, r0, r6, lsl #2
 7778 005e CDE90010 		strd	r1, r0, [sp]
 7779 0062 8021     		movs	r1, #128
 7780 0064 2046     		mov	r0, r4
 7781 0066 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 7782 006a FFF7FEFF 		bl	millis
 7783 006e C4F8000A 		str	r0, [r4, #2560]
 7784              	.L1475:
 7785 0072 2846     		mov	r0, r5
 7786 0074 0FB0     		add	sp, sp, #60
 7787              		@ sp needed
 7788 0076 F0BD     		pop	{r4, r5, r6, r7, pc}
 7789              	.L1481:
 7790              		.align	2
 7791              	.L1480:
 7792 0078 C5B3A291 		.word	-1851608123
 7793 007c 89888888 		.word	-2004318071
 7794 0080 00000000 		.word	.LC46
 7795              		.size	_ZN8Platform11SetDateTimeEx, .-_ZN8Platform11SetDateTimeEx
 7796              		.section	.text._ZN8Platform7MessageE11MessageTypePKc,"ax",%progbits
 7797              		.align	1
 7798              		.p2align 2,,3
 7799              		.global	_ZN8Platform7MessageE11MessageTypePKc
 7800              		.syntax unified
 7801              		.thumb
 7802              		.thumb_func
 7803              		.fpu fpv4-sp-d16
 7804              		.type	_ZN8Platform7MessageE11MessageTypePKc, %function
 7805              	_ZN8Platform7MessageE11MessageTypePKc:
 7806              		@ args = 0, pretend = 0, frame = 1040
 7807              		@ frame_needed = 0, uses_anonymous_args = 0
 7808 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 7809 0004 11F4407F 		tst	r1, #768
ARM GAS  /tmp/ccghtDyP.s 			page 138


 7810 0008 ADF5826D 		sub	sp, sp, #1040
 7811 000c 1DD0     		beq	.L1488
 7812 000e 0C46     		mov	r4, r1
 7813 0010 114B     		ldr	r3, .L1489
 7814 0012 1249     		ldr	r1, .L1489+4
 7815 0014 14F4807F 		tst	r4, #256
 7816 0018 9046     		mov	r8, r2
 7817 001a 18BF     		it	ne
 7818 001c 1946     		movne	r1, r3
 7819 001e 03AD     		add	r5, sp, #12
 7820 0020 0023     		movs	r3, #0
 7821 0022 0746     		mov	r7, r0
 7822 0024 40F20146 		movw	r6, #1025
 7823 0028 01A8     		add	r0, sp, #4
 7824 002a 8DF80C30 		strb	r3, [sp, #12]
 7825 002e CDE90156 		strd	r5, r6, [sp, #4]
 7826 0032 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 7827 0036 4146     		mov	r1, r8
 7828 0038 01A8     		add	r0, sp, #4
 7829 003a CDE90156 		strd	r5, r6, [sp, #4]
 7830 003e FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 7831 0042 24F44071 		bic	r1, r4, #768
 7832 0046 2A46     		mov	r2, r5
 7833 0048 3846     		mov	r0, r7
 7834              	.L1488:
 7835 004a FFF7FEFF 		bl	_ZN8Platform10RawMessageE11MessageTypePKc
 7836 004e 0DF5826D 		add	sp, sp, #1040
 7837              		@ sp needed
 7838 0052 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 7839              	.L1490:
 7840 0056 00BF     		.align	2
 7841              	.L1489:
 7842 0058 00000000 		.word	.LC39
 7843 005c 08000000 		.word	.LC40
 7844              		.size	_ZN8Platform7MessageE11MessageTypePKc, .-_ZN8Platform7MessageE11MessageTypePKc
 7845              		.section	.text._ZN8Platform12SetEmulatingE13Compatibility,"ax",%progbits
 7846              		.align	1
 7847              		.p2align 2,,3
 7848              		.global	_ZN8Platform12SetEmulatingE13Compatibility
 7849              		.syntax unified
 7850              		.thumb
 7851              		.thumb_func
 7852              		.fpu fpv4-sp-d16
 7853              		.type	_ZN8Platform12SetEmulatingE13Compatibility, %function
 7854              	_ZN8Platform12SetEmulatingE13Compatibility:
 7855              		@ args = 0, pretend = 0, frame = 0
 7856              		@ frame_needed = 0, uses_anonymous_args = 0
 7857              		@ link register save eliminated.
 7858 0000 0229     		cmp	r1, #2
 7859 0002 05D8     		bhi	.L1494
 7860 0004 0129     		cmp	r1, #1
 7861 0006 08BF     		it	eq
 7862 0008 0021     		moveq	r1, #0
 7863 000a 80F8BF10 		strb	r1, [r0, #191]
 7864 000e 7047     		bx	lr
 7865              	.L1494:
 7866 0010 024A     		ldr	r2, .L1495
ARM GAS  /tmp/ccghtDyP.s 			page 139


 7867 0012 40F2B511 		movw	r1, #437
 7868 0016 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 7869              	.L1496:
 7870 001a 00BF     		.align	2
 7871              	.L1495:
 7872 001c 00000000 		.word	.LC47
 7873              		.size	_ZN8Platform12SetEmulatingE13Compatibility, .-_ZN8Platform12SetEmulatingE13Compatibility
 7874              		.section	.text._ZN8Platform11DiagnosticsE11MessageType,"ax",%progbits
 7875              		.align	1
 7876              		.p2align 2,,3
 7877              		.global	_ZN8Platform11DiagnosticsE11MessageType
 7878              		.syntax unified
 7879              		.thumb
 7880              		.thumb_func
 7881              		.fpu fpv4-sp-d16
 7882              		.type	_ZN8Platform11DiagnosticsE11MessageType, %function
 7883              	_ZN8Platform11DiagnosticsE11MessageType:
 7884              		@ args = 0, pretend = 0, frame = 776
 7885              		@ frame_needed = 0, uses_anonymous_args = 0
 7886 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 7887 0004 2DED068B 		vpush.64	{d8, d9, d10}
 7888 0008 D84A     		ldr	r2, .L1548
 7889 000a D94E     		ldr	r6, .L1548+4
 7890 000c DFF8BCA3 		ldr	r10, .L1548+96
 7891 0010 DFF8BC93 		ldr	r9, .L1548+100
 7892 0014 ADF54B7D 		sub	sp, sp, #812
 7893 0018 0446     		mov	r4, r0
 7894 001a 8846     		mov	r8, r1
 7895 001c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 7896 0020 FFF7FEFF 		bl	millis64
 7897 0024 4FF47A72 		mov	r2, #1000
 7898 0028 0023     		movs	r3, #0
 7899 002a FFF7FEFF 		bl	__aeabi_uldivmod
 7900 002e D14B     		ldr	r3, .L1548+8
 7901 0030 0746     		mov	r7, r0
 7902 0032 D3F800E0 		ldr	lr, [r3]
 7903 0036 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 7904 0038 0DF1280C 		add	ip, sp, #40
 7905 003c 6546     		mov	r5, ip
 7906 003e 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 7907 0040 96E80F00 		ldm	r6, {r0, r1, r2, r3}
 7908 0044 85E80F00 		stm	r5, {r0, r1, r2, r3}
 7909 0048 AAFB0723 		umull	r2, r3, r10, r7
 7910 004c DB0A     		lsrs	r3, r3, #11
 7911 004e A9FB0701 		umull	r0, r1, r9, r7
 7912 0052 4FF46162 		mov	r2, #3600
 7913 0056 02FB1372 		mls	r2, r2, r3, r7
 7914 005a CEF3022E 		ubfx	lr, lr, #8, #3
 7915 005e 4909     		lsrs	r1, r1, #5
 7916 0060 A9FB0202 		umull	r0, r2, r9, r2
 7917 0064 C1EB0111 		rsb	r1, r1, r1, lsl #4
 7918 0068 A7EB8107 		sub	r7, r7, r1, lsl #2
 7919 006c 5209     		lsrs	r2, r2, #5
 7920 006e 5CF82E10 		ldr	r1, [ip, lr, lsl #2]
 7921 0072 0291     		str	r1, [sp, #8]
 7922 0074 CDE90027 		strd	r2, r7, [sp]
 7923 0078 4146     		mov	r1, r8
ARM GAS  /tmp/ccghtDyP.s 			page 140


 7924 007a 2046     		mov	r0, r4
 7925 007c BE4A     		ldr	r2, .L1548+12
 7926 007e 4AAE     		add	r6, sp, #296
 7927 0080 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 7928 0084 3046     		mov	r0, r6
 7929 0086 4FF40072 		mov	r2, #512
 7930 008a 0021     		movs	r1, #0
 7931 008c FFF7FEFF 		bl	memset
 7932              		.syntax unified
 7933              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 7934 0090 EFF31085 		MRS r5, primask
 7935              	@ 0 "" 2
 7936              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 7937 0094 72B6     		cpsid i
 7938              	@ 0 "" 2
 7939              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 7940 0096 BFF35F8F 		dmb
 7941              	@ 0 "" 2
 7942              		.thumb
 7943              		.syntax unified
 7944 009a B84F     		ldr	r7, .L1548+16
 7945 009c 0023     		movs	r3, #0
 7946 009e 3046     		mov	r0, r6
 7947 00a0 8021     		movs	r1, #128
 7948 00a2 3B70     		strb	r3, [r7]
 7949 00a4 FFF7FEFF 		bl	flash_read_user_signature
 7950 00a8 002D     		cmp	r5, #0
 7951 00aa 00F03581 		beq	.L1545
 7952              	.L1498:
 7953 00ae 60B9     		cbnz	r0, .L1500
 7954 00b0 0325     		movs	r5, #3
 7955 00b2 4FF6FF72 		movw	r2, #65535
 7956              	.L1499:
 7957 00b6 4FEAC519 		lsl	r9, r5, #7
 7958 00ba 36F80930 		ldrh	r3, [r6, r9]
 7959 00be 9342     		cmp	r3, r2
 7960 00c0 40F03081 		bne	.L1546
 7961 00c4 15F1FF35 		adds	r5, r5, #-1
 7962 00c8 F5D2     		bcs	.L1499
 7963              	.L1500:
 7964 00ca AD4A     		ldr	r2, .L1548+20
 7965 00cc 4146     		mov	r1, r8
 7966 00ce 2046     		mov	r0, r4
 7967 00d0 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 7968              	.L1509:
 7969 00d4 D4F8C030 		ldr	r3, [r4, #192]
 7970 00d8 AA4A     		ldr	r2, .L1548+24
 7971 00da AB4D     		ldr	r5, .L1548+28
 7972 00dc DFEDAB8A 		vldr.32	s17, .L1548+32
 7973 00e0 DFEDABAA 		vldr.32	s21, .L1548+36
 7974 00e4 9FEDABAA 		vldr.32	s20, .L1548+40
 7975 00e8 9FEDAB9A 		vldr.32	s18, .L1548+44
 7976 00ec 4146     		mov	r1, r8
 7977 00ee 2046     		mov	r0, r4
 7978 00f0 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 7979 00f4 D4F8B409 		ldr	r0, [r4, #2484]
 7980 00f8 FFF7FEFF 		bl	_ZNK11MassStorage15GetNumFreeFilesEv
ARM GAS  /tmp/ccghtDyP.s 			page 141


 7981 00fc A74A     		ldr	r2, .L1548+48
 7982 00fe 0346     		mov	r3, r0
 7983 0100 4146     		mov	r1, r8
 7984 0102 2046     		mov	r0, r4
 7985 0104 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 7986 0108 0021     		movs	r1, #0
 7987 010a D4F8B409 		ldr	r0, [r4, #2484]
 7988 010e FFF7FEFF 		bl	_ZNK11MassStorage14IsCardDetectedEj
 7989 0112 A34B     		ldr	r3, .L1548+52
 7990 0114 0028     		cmp	r0, #0
 7991 0116 08BF     		it	eq
 7992 0118 1D46     		moveq	r5, r3
 7993 011a FFF7FEFF 		bl	hsmci_get_speed
 7994 011e 07EE100A 		vmov	s14, r0	@ int
 7995 0122 DFEDA07A 		vldr.32	s15, .L1548+56
 7996 0126 B8EE477A 		vcvt.f32.u32	s14, s14
 7997 012a B3EE0B8A 		vmov.f32	s16, #2.7e+1
 7998 012e 67EE277A 		vmul.f32	s15, s14, s15
 7999 0132 17EE900A 		vmov	r0, s15
 8000 0136 FFF7FEFF 		bl	__aeabi_f2d
 8001 013a 2B46     		mov	r3, r5
 8002 013c 9A4A     		ldr	r2, .L1548+60
 8003 013e CDE90001 		strd	r0, [sp]
 8004 0142 4146     		mov	r1, r8
 8005 0144 2046     		mov	r0, r4
 8006 0146 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8007 014a FFF7FEFF 		bl	_ZN9FileStore27GetAndClearLongestWriteTimeEv
 8008 014e 10EE100A 		vmov	r0, s0
 8009 0152 FFF7FEFF 		bl	__aeabi_f2d
 8010 0156 954A     		ldr	r2, .L1548+64
 8011 0158 CDE90001 		strd	r0, [sp]
 8012 015c 4146     		mov	r1, r8
 8013 015e 2046     		mov	r0, r4
 8014 0160 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8015 0164 D4F81437 		ldr	r3, [r4, #1812]
 8016 0168 D4F80C57 		ldr	r5, [r4, #1804]
 8017 016c 07EE903A 		vmov	s15, r3	@ int
 8018 0170 F8EE677A 		vcvt.f32.u32	s15, s15
 8019 0174 B0EE687A 		vmov.f32	s14, s17
 8020 0178 A7EEAA7A 		vfma.f32	s14, s15, s21
 8021 017c 04F21C73 		addw	r3, r4, #1820
 8022 0180 D3ED009A 		vldr.32	s19, [r3]
 8023 0184 F0EE477A 		vmov.f32	s15, s14
 8024 0188 B0EE487A 		vmov.f32	s14, s16
 8025 018c A7EE8A7A 		vfma.f32	s14, s15, s20
 8026 0190 77EE297A 		vadd.f32	s15, s14, s19
 8027 0194 17EE900A 		vmov	r0, s15
 8028 0198 FFF7FEFF 		bl	__aeabi_f2d
 8029 019c 07EE905A 		vmov	s15, r5	@ int
 8030 01a0 F8EE677A 		vcvt.f32.u32	s15, s15
 8031 01a4 B0EE687A 		vmov.f32	s14, s17
 8032 01a8 A7EEAA7A 		vfma.f32	s14, s15, s21
 8033 01ac CDE90401 		strd	r0, [sp, #16]
 8034 01b0 F0EE477A 		vmov.f32	s15, s14
 8035 01b4 B0EE487A 		vmov.f32	s14, s16
 8036 01b8 A7EE8A7A 		vfma.f32	s14, s15, s20
 8037 01bc 77EE297A 		vadd.f32	s15, s14, s19
ARM GAS  /tmp/ccghtDyP.s 			page 142


 8038 01c0 17EE900A 		vmov	r0, s15
 8039 01c4 FFF7FEFF 		bl	__aeabi_f2d
 8040 01c8 D4F81837 		ldr	r3, [r4, #1816]
 8041 01cc 07EE903A 		vmov	s15, r3	@ int
 8042 01d0 F8EE677A 		vcvt.f32.u32	s15, s15
 8043 01d4 CDE90201 		strd	r0, [sp, #8]
 8044 01d8 E7EEAA8A 		vfma.f32	s17, s15, s21
 8045 01dc A8EE8A8A 		vfma.f32	s16, s17, s20
 8046 01e0 78EE297A 		vadd.f32	s15, s16, s19
 8047 01e4 17EE900A 		vmov	r0, s15
 8048 01e8 FFF7FEFF 		bl	__aeabi_f2d
 8049 01ec 704A     		ldr	r2, .L1548+68
 8050 01ee CDE90001 		strd	r0, [sp]
 8051 01f2 4146     		mov	r1, r8
 8052 01f4 2046     		mov	r0, r4
 8053 01f6 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8054 01fa B4F8DA39 		ldrh	r3, [r4, #2522]
 8055 01fe B4F8D629 		ldrh	r2, [r4, #2518]
 8056 0202 B4F8D819 		ldrh	r1, [r4, #2520]
 8057 0206 C4F81457 		str	r5, [r4, #1812]
 8058 020a 07EE901A 		vmov	s15, r1	@ int
 8059 020e F8EEE77A 		vcvt.f32.s32	s15, s15
 8060 0212 D4F8E019 		ldr	r1, [r4, #2528]
 8061 0216 C4F81857 		str	r5, [r4, #1816]
 8062 021a 67EE897A 		vmul.f32	s15, s15, s18
 8063 021e D4F8E859 		ldr	r5, [r4, #2536]
 8064 0222 0795     		str	r5, [sp, #28]
 8065 0224 97B2     		uxth	r7, r2
 8066 0226 17EE900A 		vmov	r0, s15
 8067 022a 9DB2     		uxth	r5, r3
 8068 022c 0691     		str	r1, [sp, #24]
 8069 022e FFF7FEFF 		bl	__aeabi_f2d
 8070 0232 07EE907A 		vmov	s15, r7	@ int
 8071 0236 F8EEE77A 		vcvt.f32.s32	s15, s15
 8072 023a CDE90401 		strd	r0, [sp, #16]
 8073 023e 67EE897A 		vmul.f32	s15, s15, s18
 8074 0242 17EE900A 		vmov	r0, s15
 8075 0246 FFF7FEFF 		bl	__aeabi_f2d
 8076 024a 07EE905A 		vmov	s15, r5	@ int
 8077 024e F8EEE77A 		vcvt.f32.s32	s15, s15
 8078 0252 CDE90201 		strd	r0, [sp, #8]
 8079 0256 67EE897A 		vmul.f32	s15, s15, s18
 8080 025a 17EE900A 		vmov	r0, s15
 8081 025e FFF7FEFF 		bl	__aeabi_f2d
 8082 0262 544A     		ldr	r2, .L1548+72
 8083 0264 CDE90001 		strd	r0, [sp]
 8084 0268 4146     		mov	r1, r8
 8085 026a 2046     		mov	r0, r4
 8086 026c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8087 0270 B4F8D639 		ldrh	r3, [r4, #2518]
 8088 0274 D4F8C423 		ldr	r2, [r4, #964]
 8089 0278 9BB2     		uxth	r3, r3
 8090 027a A4F8D839 		strh	r3, [r4, #2520]	@ movhi
 8091 027e A4F8DA39 		strh	r3, [r4, #2522]	@ movhi
 8092 0282 D2B1     		cbz	r2, .L1511
 8093 0284 0025     		movs	r5, #0
 8094 0286 DFF84CB1 		ldr	fp, .L1548+104
ARM GAS  /tmp/ccghtDyP.s 			page 143


 8095 028a AA46     		mov	r10, r5
 8096 028c 12AF     		add	r7, sp, #72
 8097 028e 4FF06509 		mov	r9, #101
 8098              	.L1512:
 8099 0292 2846     		mov	r0, r5
 8100 0294 3946     		mov	r1, r7
 8101 0296 86F800A0 		strb	r10, [r6]
 8102 029a C7E90069 		strd	r6, r9, [r7]
 8103 029e FFF7FEFF 		bl	_ZN12SmartDrivers18AppendDriverStatusEjRK9StringRef
 8104 02a2 2B46     		mov	r3, r5
 8105 02a4 0096     		str	r6, [sp]
 8106 02a6 5A46     		mov	r2, fp
 8107 02a8 4146     		mov	r1, r8
 8108 02aa 2046     		mov	r0, r4
 8109 02ac FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8110 02b0 D4F8C433 		ldr	r3, [r4, #964]
 8111 02b4 0135     		adds	r5, r5, #1
 8112 02b6 AB42     		cmp	r3, r5
 8113 02b8 EBD8     		bhi	.L1512
 8114              	.L1511:
 8115 02ba 94F8BD30 		ldrb	r3, [r4, #189]	@ zero_extendqisi2
 8116 02be 023B     		subs	r3, r3, #2
 8117 02c0 012B     		cmp	r3, #1
 8118 02c2 40F28F80 		bls	.L1547
 8119              	.L1513:
 8120 02c6 4146     		mov	r1, r8
 8121 02c8 2046     		mov	r0, r4
 8122 02ca 3B4A     		ldr	r2, .L1548+76
 8123 02cc FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8124 02d0 3146     		mov	r1, r6
 8125 02d2 04F6F810 		addw	r0, r4, #2552
 8126 02d6 FFF7FEFF 		bl	gmtime_r
 8127 02da 0028     		cmp	r0, #0
 8128 02dc 7CD0     		beq	.L1515
 8129 02de D6E90423 		ldrd	r2, r3, [r6, #16]
 8130 02e2 3168     		ldr	r1, [r6]
 8131 02e4 0491     		str	r1, [sp, #16]
 8132 02e6 0132     		adds	r2, r2, #1
 8133 02e8 7068     		ldr	r0, [r6, #4]
 8134 02ea 0092     		str	r2, [sp]
 8135 02ec D6E90212 		ldrd	r1, r2, [r6, #8]
 8136 02f0 03F26C73 		addw	r3, r3, #1900
 8137 02f4 CDE90121 		strd	r2, r1, [sp, #4]
 8138 02f8 0390     		str	r0, [sp, #12]
 8139 02fa 304A     		ldr	r2, .L1548+80
 8140 02fc 2046     		mov	r0, r4
 8141 02fe 4146     		mov	r1, r8
 8142 0300 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8143              	.L1516:
 8144 0304 4146     		mov	r1, r8
 8145 0306 2E48     		ldr	r0, .L1548+84
 8146 0308 FFF7FEFF 		bl	_ZN6RepRap6TimingE11MessageType
 8147 030c 0DF54B7D 		add	sp, sp, #812
 8148              		@ sp needed
 8149 0310 BDEC068B 		vldm	sp!, {d8-d10}
 8150 0314 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 8151              	.L1545:
ARM GAS  /tmp/ccghtDyP.s 			page 144


 8152 0318 0123     		movs	r3, #1
 8153 031a 3B70     		strb	r3, [r7]
 8154              		.syntax unified
 8155              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 8156 031c BFF35F8F 		dmb
 8157              	@ 0 "" 2
 8158              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 8159 0320 62B6     		cpsie i
 8160              	@ 0 "" 2
 8161              		.thumb
 8162              		.syntax unified
 8163 0322 C4E6     		b	.L1498
 8164              	.L1546:
 8165 0324 47F60852 		movw	r2, #32008
 8166 0328 9342     		cmp	r3, r2
 8167 032a 7FF4CEAE 		bne	.L1500
 8168 032e 06EB0903 		add	r3, r6, r9
 8169 0332 5B88     		ldrh	r3, [r3, #2]
 8170 0334 13F0F003 		ands	r3, r3, #240
 8171 0338 62D0     		beq	.L1519
 8172 033a 202B     		cmp	r3, #32
 8173 033c 00F0D280 		beq	.L1520
 8174 0340 302B     		cmp	r3, #48
 8175 0342 00F0D280 		beq	.L1521
 8176 0346 402B     		cmp	r3, #64
 8177 0348 00F0D280 		beq	.L1522
 8178 034c 502B     		cmp	r3, #80
 8179 034e 00F0D280 		beq	.L1523
 8180 0352 702B     		cmp	r3, #112
 8181 0354 00F0D280 		beq	.L1524
 8182 0358 802B     		cmp	r3, #128
 8183 035a 00F0D280 		beq	.L1525
 8184 035e 1949     		ldr	r1, .L1548+88
 8185 0360 194A     		ldr	r2, .L1548+92
 8186 0362 902B     		cmp	r3, #144
 8187 0364 0CBF     		ite	eq
 8188 0366 8B46     		moveq	fp, r1
 8189 0368 9346     		movne	fp, r2
 8190 036a 4BE0     		b	.L1503
 8191              	.L1549:
 8192              		.align	2
 8193              	.L1548:
 8194 036c AC000000 		.word	.LC63
 8195 0370 00000000 		.word	.LANCHOR26
 8196 0374 04180E40 		.word	1074665476
 8197 0378 C0000000 		.word	.LC65
 8198 037c 00000000 		.word	g_interrupt_enabled
 8199 0380 EC010000 		.word	.LC72
 8200 0384 18020000 		.word	.LC73
 8201 0388 88000000 		.word	.LC59
 8202 038c EC51B8BF 		.word	3216527852
 8203 0390 3333D337 		.word	936588083
 8204 0394 16C45443 		.word	1129628694
 8205 0398 3333113C 		.word	1007760179
 8206 039c 2C020000 		.word	.LC74
 8207 03a0 94000000 		.word	.LC60
 8208 03a4 BD378635 		.word	897988541
ARM GAS  /tmp/ccghtDyP.s 			page 145


 8209 03a8 44020000 		.word	.LC75
 8210 03ac 74020000 		.word	.LC76
 8211 03b0 A0020000 		.word	.LC77
 8212 03b4 D4020000 		.word	.LC78
 8213 03b8 78030000 		.word	.LC81
 8214 03bc 84030000 		.word	.LC82
 8215 03c0 00000000 		.word	reprap
 8216 03c4 64000000 		.word	.LC56
 8217 03c8 5C000000 		.word	.LC55
 8218 03cc C5B3A291 		.word	-1851608123
 8219 03d0 89888888 		.word	-2004318071
 8220 03d4 3C030000 		.word	.LC79
 8221              	.L1515:
 8222 03d8 2046     		mov	r0, r4
 8223 03da 4B4A     		ldr	r2, .L1550
 8224 03dc 4146     		mov	r1, r8
 8225 03de FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8226 03e2 8FE7     		b	.L1516
 8227              	.L1547:
 8228 03e4 6020     		movs	r0, #96
 8229 03e6 FFF7FEFF 		bl	digitalRead
 8230 03ea 4849     		ldr	r1, .L1550+4
 8231 03ec 484B     		ldr	r3, .L1550+8
 8232 03ee 494A     		ldr	r2, .L1550+12
 8233 03f0 0028     		cmp	r0, #0
 8234 03f2 18BF     		it	ne
 8235 03f4 0B46     		movne	r3, r1
 8236 03f6 4146     		mov	r1, r8
 8237 03f8 2046     		mov	r0, r4
 8238 03fa FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8239 03fe 62E7     		b	.L1513
 8240              	.L1519:
 8241 0400 DFF834B1 		ldr	fp, .L1550+48
 8242              	.L1503:
 8243 0404 06EB0903 		add	r3, r6, r9
 8244 0408 12AF     		add	r7, sp, #72
 8245 040a DA69     		ldr	r2, [r3, #28]
 8246 040c 0023     		movs	r3, #0
 8247 040e 3B70     		strb	r3, [r7]
 8248 0410 002A     		cmp	r2, #0
 8249 0412 5FD0     		beq	.L1504
 8250 0414 08A8     		add	r0, sp, #32
 8251 0416 CDE90823 		strd	r2, r3, [sp, #32]
 8252 041a FFF7FEFF 		bl	gmtime
 8253 041e 4368     		ldr	r3, [r0, #4]
 8254 0420 3D49     		ldr	r1, .L1550+16
 8255 0422 D0E904C2 		ldrd	ip, r2, [r0, #16]
 8256 0426 0293     		str	r3, [sp, #8]
 8257 0428 8368     		ldr	r3, [r0, #8]
 8258 042a 0193     		str	r3, [sp, #4]
 8259 042c C068     		ldr	r0, [r0, #12]
 8260 042e 0090     		str	r0, [sp]
 8261 0430 0CF10103 		add	r3, ip, #1
 8262 0434 02F26C72 		addw	r2, r2, #1900
 8263 0438 3846     		mov	r0, r7
 8264 043a FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 8265              	.L1505:
ARM GAS  /tmp/ccghtDyP.s 			page 146


 8266 043e 06EB090A 		add	r10, r6, r9
 8267 0442 3649     		ldr	r1, .L1550+20
 8268 0444 BAF80230 		ldrh	r3, [r10, #2]
 8269 0448 3548     		ldr	r0, .L1550+24
 8270 044a 0495     		str	r5, [sp, #16]
 8271 044c 13F4004F 		tst	r3, #32768
 8272 0450 03F00F03 		and	r3, r3, #15
 8273 0454 334A     		ldr	r2, .L1550+28
 8274 0456 51F82310 		ldr	r1, [r1, r3, lsl #2]
 8275 045a DAF80430 		ldr	r3, [r10, #4]
 8276 045e 08BF     		it	eq
 8277 0460 0246     		moveq	r2, r0
 8278 0462 CDE90213 		strd	r1, r3, [sp, #8]
 8279 0466 CDE9002B 		strd	r2, fp, [sp]
 8280 046a 3B46     		mov	r3, r7
 8281 046c 2E4A     		ldr	r2, .L1550+32
 8282 046e 4146     		mov	r1, r8
 8283 0470 2046     		mov	r0, r4
 8284 0472 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8285 0476 DAE90552 		ldrd	r5, r2, [r10, #20]
 8286 047a DAE90310 		ldrd	r1, r0, [r10, #12]
 8287 047e BAF80230 		ldrh	r3, [r10, #2]
 8288 0482 0492     		str	r2, [sp, #16]
 8289 0484 DAF80820 		ldr	r2, [r10, #8]
 8290 0488 CDE90205 		strd	r0, r5, [sp, #8]
 8291 048c CDE90021 		strd	r2, r1, [sp]
 8292 0490 2046     		mov	r0, r4
 8293 0492 264A     		ldr	r2, .L1550+36
 8294 0494 4146     		mov	r1, r8
 8295 0496 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8296 049a DAF81830 		ldr	r3, [r10, #24]
 8297 049e 0133     		adds	r3, r3, #1
 8298 04a0 3FF418AE 		beq	.L1509
 8299 04a4 0023     		movs	r3, #0
 8300 04a6 09F11C05 		add	r5, r9, #28
 8301 04aa 3B70     		strb	r3, [r7]
 8302 04ac DFF88CA0 		ldr	r10, .L1550+52
 8303 04b0 69AB     		add	r3, sp, #420
 8304 04b2 3544     		add	r5, r5, r6
 8305 04b4 9944     		add	r9, r9, r3
 8306              	.L1508:
 8307 04b6 55F8042F 		ldr	r2, [r5, #4]!
 8308 04ba 5146     		mov	r1, r10
 8309 04bc 3846     		mov	r0, r7
 8310 04be FFF7FEFF 		bl	_ZN6StringILj220EE4catfEPKcz
 8311 04c2 4D45     		cmp	r5, r9
 8312 04c4 F7D1     		bne	.L1508
 8313 04c6 3B46     		mov	r3, r7
 8314 04c8 194A     		ldr	r2, .L1550+40
 8315 04ca 4146     		mov	r1, r8
 8316 04cc 2046     		mov	r0, r4
 8317 04ce FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8318 04d2 FFE5     		b	.L1509
 8319              	.L1504:
 8320 04d4 DD23     		movs	r3, #221
 8321 04d6 08A8     		add	r0, sp, #32
 8322 04d8 1649     		ldr	r1, .L1550+44
ARM GAS  /tmp/ccghtDyP.s 			page 147


 8323 04da CDE90873 		strd	r7, r3, [sp, #32]
 8324 04de FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8325 04e2 ACE7     		b	.L1505
 8326              	.L1520:
 8327 04e4 DFF858B0 		ldr	fp, .L1550+56
 8328 04e8 8CE7     		b	.L1503
 8329              	.L1521:
 8330 04ea DFF858B0 		ldr	fp, .L1550+60
 8331 04ee 89E7     		b	.L1503
 8332              	.L1522:
 8333 04f0 DFF854B0 		ldr	fp, .L1550+64
 8334 04f4 86E7     		b	.L1503
 8335              	.L1523:
 8336 04f6 DFF854B0 		ldr	fp, .L1550+68
 8337 04fa 83E7     		b	.L1503
 8338              	.L1524:
 8339 04fc DFF850B0 		ldr	fp, .L1550+72
 8340 0500 80E7     		b	.L1503
 8341              	.L1525:
 8342 0502 DFF850B0 		ldr	fp, .L1550+76
 8343 0506 7DE7     		b	.L1503
 8344              	.L1551:
 8345              		.align	2
 8346              	.L1550:
 8347 0508 A4030000 		.word	.LC83
 8348 050c A4000000 		.word	.LC61
 8349 0510 A8000000 		.word	.LC62
 8350 0514 4C030000 		.word	.LC80
 8351 0518 EC000000 		.word	.LC66
 8352 051c 00000000 		.word	moduleName
 8353 0520 84000000 		.word	.LC58
 8354 0524 78000000 		.word	.LC57
 8355 0528 18010000 		.word	.LC68
 8356 052c 78010000 		.word	.LC69
 8357 0530 E0010000 		.word	.LC71
 8358 0534 08010000 		.word	.LC67
 8359 0538 04000000 		.word	.LC49
 8360 053c D8010000 		.word	.LC70
 8361 0540 00000000 		.word	.LC48
 8362 0544 0C000000 		.word	.LC50
 8363 0548 18000000 		.word	.LC51
 8364 054c 2C000000 		.word	.LC52
 8365 0550 40000000 		.word	.LC53
 8366 0554 4C000000 		.word	.LC54
 8367              		.size	_ZN8Platform11DiagnosticsE11MessageType, .-_ZN8Platform11DiagnosticsE11MessageType
 8368              		.global	__aeabi_ui2d
 8369              		.global	__aeabi_ddiv
 8370              		.section	.text._ZN8Platform14DiagnosticTestER11GCodeBufferRK9StringRefi,"ax",%progbits
 8371              		.align	1
 8372              		.p2align 2,,3
 8373              		.global	_ZN8Platform14DiagnosticTestER11GCodeBufferRK9StringRefi
 8374              		.syntax unified
 8375              		.thumb
 8376              		.thumb_func
 8377              		.fpu fpv4-sp-d16
 8378              		.type	_ZN8Platform14DiagnosticTestER11GCodeBufferRK9StringRefi, %function
 8379              	_ZN8Platform14DiagnosticTestER11GCodeBufferRK9StringRefi:
ARM GAS  /tmp/ccghtDyP.s 			page 148


 8380              		@ args = 0, pretend = 0, frame = 24
 8381              		@ frame_needed = 0, uses_anonymous_args = 0
 8382 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 8383 0004 40F2E934 		movw	r4, #1001
 8384 0008 A342     		cmp	r3, r4
 8385 000a 8DB0     		sub	sp, sp, #52
 8386 000c 00F0F081 		beq	.L1554
 8387 0010 0792     		str	r2, [sp, #28]
 8388 0012 0E46     		mov	r6, r1
 8389 0014 0546     		mov	r5, r0
 8390 0016 1C46     		mov	r4, r3
 8391 0018 17DD     		ble	.L1628
 8392 001a B3F57B7F 		cmp	r3, #1004
 8393 001e 00F0C880 		beq	.L1561
 8394 0022 00F39480 		bgt	.L1562
 8395 0026 40F2EA33 		movw	r3, #1002
 8396 002a 9C42     		cmp	r4, r3
 8397 002c 00F0BA80 		beq	.L1563
 8398 0030 40F2EB33 		movw	r3, #1003
 8399 0034 9C42     		cmp	r4, r3
 8400 0036 40F0A681 		bne	.L1597
 8401 003a 0123     		movs	r3, #1
 8402 003c 80F81D3B 		strb	r3, [r0, #2845]
 8403 0040 D948     		ldr	r0, .L1638+24
 8404 0042 FFF7FEFF 		bl	debugPrintf
 8405 0046 0024     		movs	r4, #0
 8406 0048 91E0     		b	.L1553
 8407              	.L1628:
 8408 004a 642B     		cmp	r3, #100
 8409 004c 00F09781 		beq	.L1556
 8410 0050 40F3B780 		ble	.L1629
 8411 0054 652B     		cmp	r3, #101
 8412 0056 00F09C80 		beq	.L1559
 8413 005a 662B     		cmp	r3, #102
 8414 005c 40F09381 		bne	.L1597
 8415 0060 0FF22C39 		adr	r9, .L1638
 8416 0064 D9E90089 		ldrd	r8, [r9]
 8417 0068 CBA5     		adr	r5, .L1638+8
 8418 006a D5E90045 		ldrd	r4, [r5]
 8419 006e DFF878A3 		ldr	r10, .L1638+88
 8420 0072 0126     		movs	r6, #1
 8421 0074 4FF0000B 		mov	fp, #0
 8422              	.L1560:
 8423 0078 08FB09F3 		mul	r3, r8, r9
 8424 007c A8FB0801 		umull	r0, r1, r8, r8
 8425 0080 01EB4301 		add	r1, r1, r3, lsl #1
 8426 0084 DAF89070 		ldr	r7, [r10, #144]
 8427 0088 FFF7FEFF 		bl	_Z7isqrt64y
 8428 008c 4045     		cmp	r0, r8
 8429 008e 18BF     		it	ne
 8430 0090 0026     		movne	r6, #0
 8431 0092 18F10108 		adds	r8, r8, #1
 8432 0096 DAF89030 		ldr	r3, [r10, #144]
 8433 009a 49F10009 		adc	r9, r9, #0
 8434 009e A945     		cmp	r9, r5
 8435 00a0 A3EB0703 		sub	r3, r3, r7
 8436 00a4 08BF     		it	eq
ARM GAS  /tmp/ccghtDyP.s 			page 149


 8437 00a6 A045     		cmpeq	r8, r4
 8438 00a8 9B44     		add	fp, fp, r3
 8439 00aa E5D1     		bne	.L1560
 8440 00ac DFF83883 		ldr	r8, .L1638+88
 8441 00b0 4AF2C544 		movw	r4, #42181
 8442 00b4 0025     		movs	r5, #0
 8443 00b6 0127     		movs	r7, #1
 8444 00b8 4FF0000A 		mov	r10, #0
 8445 00bc B146     		mov	r9, r6
 8446              	.L1594:
 8447 00be 04FB05F3 		mul	r3, r4, r5
 8448 00c2 A4FB0401 		umull	r0, r1, r4, r4
 8449 00c6 01EB4301 		add	r1, r1, r3, lsl #1
 8450 00ca D8F89060 		ldr	r6, [r8, #144]
 8451 00ce FFF7FEFF 		bl	_Z7isqrt64y
 8452 00d2 D8F89030 		ldr	r3, [r8, #144]
 8453 00d6 A042     		cmp	r0, r4
 8454 00d8 18BF     		it	ne
 8455 00da 0027     		movne	r7, #0
 8456 00dc 9B1B     		subs	r3, r3, r6
 8457 00de 0134     		adds	r4, r4, #1
 8458 00e0 45F10005 		adc	r5, r5, #0
 8459 00e4 9A44     		add	r10, r10, r3
 8460 00e6 0023     		movs	r3, #0
 8461 00e8 4AF22952 		movw	r2, #42281
 8462 00ec 9D42     		cmp	r5, r3
 8463 00ee 08BF     		it	eq
 8464 00f0 9442     		cmpeq	r4, r2
 8465 00f2 E4D1     		bne	.L1594
 8466 00f4 42F21078 		movw	r8, #10000
 8467 00f8 08FB0BF0 		mul	r0, r8, fp
 8468 00fc FFF7FEFF 		bl	__aeabi_ui2d
 8469 0100 A7A3     		adr	r3, .L1638+16
 8470 0102 D3E90023 		ldrd	r2, [r3]
 8471 0106 FFF7FEFF 		bl	__aeabi_ddiv
 8472 010a 0446     		mov	r4, r0
 8473 010c 08FB0AF0 		mul	r0, r8, r10
 8474 0110 0D46     		mov	r5, r1
 8475 0112 FFF7FEFF 		bl	__aeabi_ui2d
 8476 0116 A2A3     		adr	r3, .L1638+16
 8477 0118 D3E90023 		ldrd	r2, [r3]
 8478 011c FFF7FEFF 		bl	__aeabi_ddiv
 8479 0120 A24B     		ldr	r3, .L1638+28
 8480 0122 A34A     		ldr	r2, .L1638+32
 8481 0124 B9F1000F 		cmp	r9, #0
 8482 0128 14BF     		ite	ne
 8483 012a 1E46     		movne	r6, r3
 8484 012c 1646     		moveq	r6, r2
 8485 012e 002F     		cmp	r7, #0
 8486 0130 14BF     		ite	ne
 8487 0132 1F46     		movne	r7, r3
 8488 0134 1746     		moveq	r7, r2
 8489 0136 CDE90201 		strd	r0, [sp, #8]
 8490 013a 2246     		mov	r2, r4
 8491 013c 2B46     		mov	r3, r5
 8492 013e 0798     		ldr	r0, [sp, #28]
 8493 0140 0096     		str	r6, [sp]
ARM GAS  /tmp/ccghtDyP.s 			page 150


 8494 0142 0497     		str	r7, [sp, #16]
 8495 0144 9B49     		ldr	r1, .L1638+36
 8496 0146 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8497 014a 0024     		movs	r4, #0
 8498 014c 0FE0     		b	.L1553
 8499              	.L1562:
 8500 014e 40F2ED33 		movw	r3, #1005
 8501 0152 9C42     		cmp	r4, r3
 8502 0154 0FD0     		beq	.L1565
 8503 0156 40F2EE33 		movw	r3, #1006
 8504 015a 9C42     		cmp	r4, r3
 8505 015c 40F01381 		bne	.L1597
 8506 0160 0122     		movs	r2, #1
 8507 0162 4FF00253 		mov	r3, #545259520
 8508 0166 80F81D2B 		strb	r2, [r0, #2845]
 8509 016a 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 8510 016c 0024     		movs	r4, #0
 8511              	.L1553:
 8512 016e 2046     		mov	r0, r4
 8513 0170 0DB0     		add	sp, sp, #52
 8514              		@ sp needed
 8515 0172 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 8516              	.L1565:
 8517 0176 904A     		ldr	r2, .L1638+40
 8518 0178 0123     		movs	r3, #1
 8519 017a 80F81D3B 		strb	r3, [r0, #2845]
 8520 017e 5369     		ldr	r3, [r2, #20]
 8521 0180 43F00803 		orr	r3, r3, #8
 8522 0184 5361     		str	r3, [r2, #20]
 8523              		.syntax unified
 8524              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 8525 0186 BFF35F8F 		dmb
 8526              	@ 0 "" 2
 8527              		.thumb
 8528              		.syntax unified
 8529 018a 8C4B     		ldr	r3, .L1638+44
 8530 018c 0024     		movs	r4, #0
 8531 018e 5B78     		ldrb	r3, [r3, #1]	@ zero_extendqisi2
 8532 0190 EDE7     		b	.L1553
 8533              	.L1559:
 8534 0192 FFF7FEFF 		bl	_ZN13DuetExpansion14DiagnosticReadEv
 8535 0196 8A49     		ldr	r1, .L1638+48
 8536 0198 0246     		mov	r2, r0
 8537 019a 0798     		ldr	r0, [sp, #28]
 8538 019c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8539 01a0 0024     		movs	r4, #0
 8540 01a2 E4E7     		b	.L1553
 8541              	.L1563:
 8542 01a4 0123     		movs	r3, #1
 8543 01a6 C0F8C849 		str	r4, [r0, #2504]
 8544 01aa 80F81D3B 		strb	r3, [r0, #2845]
 8545 01ae 0024     		movs	r4, #0
 8546 01b0 DDE7     		b	.L1553
 8547              	.L1561:
 8548 01b2 0120     		movs	r0, #1
 8549 01b4 85F81D0B 		strb	r0, [r5, #2845]
 8550 01b8 0021     		movs	r1, #0
ARM GAS  /tmp/ccghtDyP.s 			page 151


 8551 01ba FFF7FEFF 		bl	_ZN6RepRap8DoDivideEmm
 8552 01be 0024     		movs	r4, #0
 8553 01c0 D5E7     		b	.L1553
 8554              	.L1629:
 8555 01c2 012B     		cmp	r3, #1
 8556 01c4 40F0DF80 		bne	.L1597
 8557 01c8 0021     		movs	r1, #0
 8558 01ca D0F8B409 		ldr	r0, [r0, #2484]
 8559 01ce B78E     		ldrh	r7, [r6, #52]
 8560 01d0 FFF7FEFF 		bl	_ZNK11MassStorage14IsCardDetectedEj
 8561 01d4 8046     		mov	r8, r0
 8562 01d6 0028     		cmp	r0, #0
 8563 01d8 00F01481 		beq	.L1630
 8564 01dc FFF7FEFF 		bl	hsmci_get_speed
 8565 01e0 784B     		ldr	r3, .L1638+52
 8566 01e2 9842     		cmp	r0, r3
 8567 01e4 00F02581 		beq	.L1569
 8568 01e8 FFF7FEFF 		bl	hsmci_get_speed
 8569 01ec 07EE100A 		vmov	s14, r0	@ int
 8570 01f0 DFED757A 		vldr.32	s15, .L1638+56
 8571 01f4 B8EE477A 		vcvt.f32.u32	s14, s14
 8572 01f8 47F48074 		orr	r4, r7, #256
 8573 01fc 67EE277A 		vmul.f32	s15, s14, s15
 8574 0200 17EE900A 		vmov	r0, s15
 8575 0204 FFF7FEFF 		bl	__aeabi_f2d
 8576 0208 704A     		ldr	r2, .L1638+60
 8577 020a CDE90001 		strd	r0, [sp]
 8578 020e 2146     		mov	r1, r4
 8579 0210 2846     		mov	r0, r5
 8580 0212 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8581              	.L1568:
 8582 0216 0024     		movs	r4, #0
 8583 0218 079B     		ldr	r3, [sp, #28]
 8584 021a 0093     		str	r3, [sp]
 8585 021c 0DF12702 		add	r2, sp, #39
 8586 0220 0192     		str	r2, [sp, #4]
 8587 0222 0294     		str	r4, [sp, #8]
 8588 0224 0AAB     		add	r3, sp, #40
 8589 0226 0222     		movs	r2, #2
 8590 0228 5421     		movs	r1, #84
 8591 022a 3046     		mov	r0, r6
 8592 022c 8DF82740 		strb	r4, [sp, #39]
 8593 0230 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 8594 0234 0028     		cmp	r0, #0
 8595 0236 40F0F180 		bne	.L1570
 8596 023a 9DF82740 		ldrb	r4, [sp, #39]	@ zero_extendqisi2
 8597 023e 002C     		cmp	r4, #0
 8598 0240 00F0E880 		beq	.L1631
 8599 0244 D5F80C37 		ldr	r3, [r5, #1804]
 8600 0248 9FED615A 		vldr.32	s10, .L1638+64
 8601 024c 9FED617A 		vldr.32	s14, .L1638+68
 8602 0250 DFED615A 		vldr.32	s11, .L1638+72
 8603 0254 9DED0A6A 		vldr.32	s12, [sp, #40]
 8604 0258 06EE903A 		vmov	s13, r3	@ int
 8605 025c F8EE666A 		vcvt.f32.u32	s13, s13
 8606 0260 F3EE0B7A 		vmov.f32	s15, #2.7e+1
 8607 0264 A6EE857A 		vfma.f32	s14, s13, s10
ARM GAS  /tmp/ccghtDyP.s 			page 152


 8608 0268 05F21C73 		addw	r3, r5, #1820
 8609 026c D3ED006A 		vldr.32	s13, [r3]
 8610 0270 E7EE257A 		vfma.f32	s15, s14, s11
 8611 0274 77EEA67A 		vadd.f32	s15, s15, s13
 8612 0278 B4EEE76A 		vcmpe.f32	s12, s15
 8613 027c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 8614 0280 00F3DF80 		bgt	.L1632
 8615 0284 9DED0B7A 		vldr.32	s14, [sp, #44]
 8616 0288 B4EEE77A 		vcmpe.f32	s14, s15
 8617 028c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 8618 0290 40F1E680 		bpl	.L1618
 8619 0294 17EE900A 		vmov	r0, s15
 8620 0298 FFF7FEFF 		bl	__aeabi_f2d
 8621 029c 47F48073 		orr	r3, r7, #256
 8622 02a0 CDE90001 		strd	r0, [sp]
 8623 02a4 4D4A     		ldr	r2, .L1638+76
 8624 02a6 1946     		mov	r1, r3
 8625 02a8 2846     		mov	r0, r5
 8626 02aa FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8627 02ae A046     		mov	r8, r4
 8628              	.L1574:
 8629 02b0 0DF12703 		add	r3, sp, #39
 8630 02b4 4FF0000C 		mov	ip, #0
 8631 02b8 0193     		str	r3, [sp, #4]
 8632 02ba 079B     		ldr	r3, [sp, #28]
 8633 02bc 0093     		str	r3, [sp]
 8634 02be 3046     		mov	r0, r6
 8635 02c0 0AAB     		add	r3, sp, #40
 8636 02c2 CDF808C0 		str	ip, [sp, #8]
 8637 02c6 0222     		movs	r2, #2
 8638 02c8 5621     		movs	r1, #86
 8639 02ca 8DF827C0 		strb	ip, [sp, #39]
 8640 02ce FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 8641 02d2 0028     		cmp	r0, #0
 8642 02d4 7FF44BAF 		bne	.L1553
 8643 02d8 9DF82790 		ldrb	r9, [sp, #39]	@ zero_extendqisi2
 8644 02dc B9F1000F 		cmp	r9, #0
 8645 02e0 00F0CE80 		beq	.L1633
 8646 02e4 B5F8D639 		ldrh	r3, [r5, #2518]
 8647 02e8 DFED3D6A 		vldr.32	s13, .L1638+80
 8648 02ec 9DED0A7A 		vldr.32	s14, [sp, #40]
 8649 02f0 07EE903A 		vmov	s15, r3	@ int
 8650 02f4 F8EEE77A 		vcvt.f32.s32	s15, s15
 8651 02f8 67EEA67A 		vmul.f32	s15, s15, s13
 8652 02fc B4EEE77A 		vcmpe.f32	s14, s15
 8653 0300 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 8654 0304 00F3DE80 		bgt	.L1634
 8655 0308 9DED0B7A 		vldr.32	s14, [sp, #44]
 8656 030c B4EEE77A 		vcmpe.f32	s14, s15
 8657 0310 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 8658 0314 40F1B980 		bpl	.L1621
 8659 0318 17EE900A 		vmov	r0, s15
 8660 031c FFF7FEFF 		bl	__aeabi_f2d
 8661 0320 CDE90001 		strd	r0, [sp]
 8662 0324 2F4A     		ldr	r2, .L1638+84
 8663 0326 47F48073 		orr	r3, r7, #256
 8664              	.L1627:
ARM GAS  /tmp/ccghtDyP.s 			page 153


 8665 032a 1946     		mov	r1, r3
 8666 032c 2846     		mov	r0, r5
 8667 032e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8668 0332 D5F8C433 		ldr	r3, [r5, #964]
 8669 0336 002B     		cmp	r3, #0
 8670 0338 00F0CE80 		beq	.L1635
 8671 033c C846     		mov	r8, r9
 8672              	.L1582:
 8673 033e DFF8ACB0 		ldr	fp, .L1638+92
 8674 0342 0024     		movs	r4, #0
 8675 0344 47F4807A 		orr	r10, r7, #256
 8676 0348 08E0     		b	.L1589
 8677              	.L1587:
 8678 034a 16F0180F 		tst	r6, #24
 8679 034e 67D1     		bne	.L1636
 8680              	.L1588:
 8681 0350 D5F8C433 		ldr	r3, [r5, #964]
 8682 0354 0134     		adds	r4, r4, #1
 8683 0356 A342     		cmp	r3, r4
 8684 0358 40F28880 		bls	.L1637
 8685              	.L1589:
 8686 035c 4FF0FF31 		mov	r1, #-1
 8687 0360 2046     		mov	r0, r4
 8688 0362 FFF7FEFF 		bl	_ZN12SmartDrivers20GetAccumulatedStatusEjm
 8689 0366 C307     		lsls	r3, r0, #31
 8690 0368 0646     		mov	r6, r0
 8691 036a EED5     		bpl	.L1587
 8692 036c 2346     		mov	r3, r4
 8693 036e 5A46     		mov	r2, fp
 8694 0370 5146     		mov	r1, r10
 8695 0372 2846     		mov	r0, r5
 8696 0374 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8697 0378 4FF00009 		mov	r9, #0
 8698 037c E5E7     		b	.L1587
 8699              	.L1556:
 8700 037e FFF7FEFF 		bl	_ZN3DDA10PrintMovesEv
 8701 0382 0024     		movs	r4, #0
 8702 0384 F3E6     		b	.L1553
 8703              	.L1597:
 8704 0386 0024     		movs	r4, #0
 8705 0388 F1E6     		b	.L1553
 8706              	.L1639:
 8707 038a 00BFAFF3 		.align	3
 8707      0080
 8708              	.L1638:
 8709 0390 3DAC6572 		.word	1919265853
 8710 0394 00000000 		.word	0
 8711 0398 A1AC6572 		.word	1919265953
 8712 039c 00000000 		.word	0
 8713 03a0 00000000 		.word	0
 8714 03a4 389C2C41 		.word	1093442616
 8715 03a8 18020000 		.word	.LC102
 8716 03ac 00000000 		.word	.LC84
 8717 03b0 04000000 		.word	.LC85
 8718 03b4 2C020000 		.word	.LC103
 8719 03b8 00ED00E0 		.word	-536810240
 8720 03bc 00000000 		.word	.LANCHOR27
ARM GAS  /tmp/ccghtDyP.s 			page 154


 8721 03c0 60020000 		.word	.LC104
 8722 03c4 002D3101 		.word	20000000
 8723 03c8 BD378635 		.word	897988541
 8724 03cc 24000000 		.word	.LC87
 8725 03d0 3333D337 		.word	936588083
 8726 03d4 EC51B8BF 		.word	3216527852
 8727 03d8 16C45443 		.word	1129628694
 8728 03dc AC000000 		.word	.LC91
 8729 03e0 3333113C 		.word	1007760179
 8730 03e4 50010000 		.word	.LC96
 8731 03e8 00000940 		.word	1074331648
 8732 03ec 94010000 		.word	.LC98
 8733              	.L1554:
 8734 03f0 0123     		movs	r3, #1
 8735 03f2 3F4A     		ldr	r2, .L1640
 8736 03f4 80F81D3B 		strb	r3, [r0, #2845]
 8737 03f8 1368     		ldr	r3, [r2]
 8738 03fa 23F00203 		bic	r3, r3, #2
 8739 03fe 1360     		str	r3, [r2]
 8740 0400 0024     		movs	r4, #0
 8741 0402 B4E6     		b	.L1553
 8742              	.L1630:
 8743 0404 3B4A     		ldr	r2, .L1640+4
 8744 0406 47F48071 		orr	r1, r7, #256
 8745 040a 2846     		mov	r0, r5
 8746 040c A046     		mov	r8, r4
 8747 040e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8748 0412 00E7     		b	.L1568
 8749              	.L1631:
 8750 0414 0798     		ldr	r0, [sp, #28]
 8751 0416 3849     		ldr	r1, .L1640+8
 8752 0418 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8753              	.L1570:
 8754 041c 0124     		movs	r4, #1
 8755 041e A6E6     		b	.L1553
 8756              	.L1636:
 8757 0420 2346     		mov	r3, r4
 8758 0422 364A     		ldr	r2, .L1640+12
 8759 0424 5146     		mov	r1, r10
 8760 0426 2846     		mov	r0, r5
 8761 0428 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8762 042c 4FF00009 		mov	r9, #0
 8763 0430 8EE7     		b	.L1588
 8764              	.L1569:
 8765 0432 334A     		ldr	r2, .L1640+16
 8766 0434 3946     		mov	r1, r7
 8767 0436 2846     		mov	r0, r5
 8768 0438 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8769 043c 4FF00008 		mov	r8, #0
 8770 0440 E9E6     		b	.L1568
 8771              	.L1632:
 8772 0442 17EE900A 		vmov	r0, s15
 8773 0446 FFF7FEFF 		bl	__aeabi_f2d
 8774 044a 47F48073 		orr	r3, r7, #256
 8775 044e CDE90001 		strd	r0, [sp]
 8776 0452 2C4A     		ldr	r2, .L1640+20
 8777 0454 1946     		mov	r1, r3
ARM GAS  /tmp/ccghtDyP.s 			page 155


 8778 0456 2846     		mov	r0, r5
 8779 0458 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8780 045c A046     		mov	r8, r4
 8781 045e 27E7     		b	.L1574
 8782              	.L1618:
 8783 0460 294A     		ldr	r2, .L1640+24
 8784 0462 3946     		mov	r1, r7
 8785 0464 2846     		mov	r0, r5
 8786 0466 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8787 046a 21E7     		b	.L1574
 8788              	.L1637:
 8789 046c B9F1000F 		cmp	r9, #0
 8790 0470 15D1     		bne	.L1601
 8791 0472 3946     		mov	r1, r7
 8792 0474 2846     		mov	r0, r5
 8793 0476 254A     		ldr	r2, .L1640+28
 8794 0478 4C46     		mov	r4, r9
 8795 047a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8796 047e 76E6     		b	.L1553
 8797              	.L1633:
 8798 0480 0798     		ldr	r0, [sp, #28]
 8799 0482 2349     		ldr	r1, .L1640+32
 8800 0484 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8801 0488 71E6     		b	.L1553
 8802              	.L1621:
 8803 048a 224A     		ldr	r2, .L1640+36
 8804 048c 3946     		mov	r1, r7
 8805 048e 2846     		mov	r0, r5
 8806 0490 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8807 0494 D5F8C433 		ldr	r3, [r5, #964]
 8808 0498 002B     		cmp	r3, #0
 8809 049a 7FF450AF 		bne	.L1582
 8810              	.L1601:
 8811 049e 1E4A     		ldr	r2, .L1640+40
 8812 04a0 3946     		mov	r1, r7
 8813 04a2 2846     		mov	r0, r5
 8814 04a4 4446     		mov	r4, r8
 8815 04a6 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8816 04aa B8F1000F 		cmp	r8, #0
 8817 04ae 18D1     		bne	.L1583
 8818 04b0 3946     		mov	r1, r7
 8819 04b2 2846     		mov	r0, r5
 8820 04b4 194A     		ldr	r2, .L1640+44
 8821 04b6 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8822 04ba 3946     		mov	r1, r7
 8823 04bc 2846     		mov	r0, r5
 8824 04be FFF7FEFF 		bl	_ZN8Platform13PrintUniqueIdE11MessageType
 8825 04c2 54E6     		b	.L1553
 8826              	.L1634:
 8827 04c4 17EE900A 		vmov	r0, s15
 8828 04c8 FFF7FEFF 		bl	__aeabi_f2d
 8829 04cc 47F48073 		orr	r3, r7, #256
 8830 04d0 CDE90001 		strd	r0, [sp]
 8831 04d4 124A     		ldr	r2, .L1640+48
 8832 04d6 28E7     		b	.L1627
 8833              	.L1635:
 8834 04d8 0F4A     		ldr	r2, .L1640+40
ARM GAS  /tmp/ccghtDyP.s 			page 156


 8835 04da 3946     		mov	r1, r7
 8836 04dc 2846     		mov	r0, r5
 8837 04de FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8838              	.L1583:
 8839 04e2 3946     		mov	r1, r7
 8840 04e4 2846     		mov	r0, r5
 8841 04e6 094A     		ldr	r2, .L1640+28
 8842 04e8 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8843 04ec 0024     		movs	r4, #0
 8844 04ee 3EE6     		b	.L1553
 8845              	.L1641:
 8846              		.align	2
 8847              	.L1640:
 8848 04f0 10E000E0 		.word	-536813552
 8849 04f4 0C000000 		.word	.LC86
 8850 04f8 68000000 		.word	.LC89
 8851 04fc B8010000 		.word	.LC99
 8852 0500 50000000 		.word	.LC88
 8853 0504 7C000000 		.word	.LC90
 8854 0508 DC000000 		.word	.LC92
 8855 050c F0010000 		.word	.LC101
 8856 0510 F8000000 		.word	.LC93
 8857 0514 80010000 		.word	.LC97
 8858 0518 3C010000 		.word	.LC95
 8859 051c DC010000 		.word	.LC100
 8860 0520 0C010000 		.word	.LC94
 8861              		.size	_ZN8Platform14DiagnosticTestER11GCodeBufferRK9StringRefi, .-_ZN8Platform14DiagnosticTestER11
 8862              		.section	.text._ZN8Platform9SendAlertE11MessageTypePKcS2_ifm,"ax",%progbits
 8863              		.align	1
 8864              		.p2align 2,,3
 8865              		.global	_ZN8Platform9SendAlertE11MessageTypePKcS2_ifm
 8866              		.syntax unified
 8867              		.thumb
 8868              		.thumb_func
 8869              		.fpu fpv4-sp-d16
 8870              		.type	_ZN8Platform9SendAlertE11MessageTypePKcS2_ifm, %function
 8871              	_ZN8Platform9SendAlertE11MessageTypePKcS2_ifm:
 8872              		@ args = 8, pretend = 0, frame = 0
 8873              		@ frame_needed = 0, uses_anonymous_args = 0
 8874 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 8875 0004 11F0140F 		tst	r1, #20
 8876 0008 82B0     		sub	sp, sp, #8
 8877 000a 1E46     		mov	r6, r3
 8878 000c 0C46     		mov	r4, r1
 8879 000e 0746     		mov	r7, r0
 8880 0010 9046     		mov	r8, r2
 8881 0012 DDE90853 		ldrd	r5, r3, [sp, #32]
 8882 0016 11D1     		bne	.L1657
 8883              	.L1643:
 8884 0018 14F02104 		ands	r4, r4, #33
 8885 001c 0BD0     		beq	.L1642
 8886 001e 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 8887 0020 A3B9     		cbnz	r3, .L1658
 8888              	.L1646:
 8889 0022 4346     		mov	r3, r8
 8890 0024 134A     		ldr	r2, .L1661
 8891 0026 2146     		mov	r1, r4
ARM GAS  /tmp/ccghtDyP.s 			page 157


 8892 0028 3846     		mov	r0, r7
 8893 002a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8894 002e 022D     		cmp	r5, #2
 8895 0030 1BD0     		beq	.L1659
 8896 0032 032D     		cmp	r5, #3
 8897 0034 11D0     		beq	.L1660
 8898              	.L1642:
 8899 0036 02B0     		add	sp, sp, #8
 8900              		@ sp needed
 8901 0038 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 8902              	.L1657:
 8903 003c 0093     		str	r3, [sp]
 8904 003e 3246     		mov	r2, r6
 8905 0040 2B46     		mov	r3, r5
 8906 0042 4146     		mov	r1, r8
 8907 0044 0C48     		ldr	r0, .L1661+4
 8908 0046 FFF7FEFF 		bl	_ZN6RepRap8SetAlertEPKcS1_ifm
 8909 004a E5E7     		b	.L1643
 8910              	.L1658:
 8911 004c 3346     		mov	r3, r6
 8912 004e 0B4A     		ldr	r2, .L1661+8
 8913 0050 2146     		mov	r1, r4
 8914 0052 3846     		mov	r0, r7
 8915 0054 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8916 0058 E3E7     		b	.L1646
 8917              	.L1660:
 8918 005a 094A     		ldr	r2, .L1661+12
 8919 005c 2146     		mov	r1, r4
 8920 005e 3846     		mov	r0, r7
 8921              	.L1656:
 8922 0060 02B0     		add	sp, sp, #8
 8923              		@ sp needed
 8924 0062 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 8925 0066 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 8926              	.L1659:
 8927 006a 2146     		mov	r1, r4
 8928 006c 3846     		mov	r0, r7
 8929 006e 054A     		ldr	r2, .L1661+16
 8930 0070 F6E7     		b	.L1656
 8931              	.L1662:
 8932 0072 00BF     		.align	2
 8933              	.L1661:
 8934 0074 14000000 		.word	.LC44
 8935 0078 00000000 		.word	reprap
 8936 007c 00000000 		.word	.LC105
 8937 0080 20000000 		.word	.LC107
 8938 0084 08000000 		.word	.LC106
 8939              		.size	_ZN8Platform9SendAlertE11MessageTypePKcS2_ifm, .-_ZN8Platform9SendAlertE11MessageTypePKcS2_i
 8940              		.section	.text._ZN8Platform13FlushMessagesEv,"ax",%progbits
 8941              		.align	1
 8942              		.p2align 2,,3
 8943              		.global	_ZN8Platform13FlushMessagesEv
 8944              		.syntax unified
 8945              		.thumb
 8946              		.thumb_func
 8947              		.fpu fpv4-sp-d16
 8948              		.type	_ZN8Platform13FlushMessagesEv, %function
ARM GAS  /tmp/ccghtDyP.s 			page 158


 8949              	_ZN8Platform13FlushMessagesEv:
 8950              		@ args = 0, pretend = 0, frame = 16
 8951              		@ frame_needed = 0, uses_anonymous_args = 0
 8952 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 8953 0002 85B0     		sub	sp, sp, #20
 8954 0004 0446     		mov	r4, r0
 8955 0006 FFF7FEFF 		bl	_ZN8Platform16FlushAuxMessagesEv
 8956 000a 04F51B61 		add	r1, r4, #2480
 8957 000e 4FF0FF32 		mov	r2, #-1
 8958 0012 0546     		mov	r5, r0
 8959 0014 04F69C14 		addw	r4, r4, #2460
 8960 0018 02A8     		add	r0, sp, #8
 8961 001a FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 8962 001e 2046     		mov	r0, r4
 8963 0020 FFF7FEFF 		bl	_ZNVK11OutputStack12GetFirstItemEv
 8964 0024 0190     		str	r0, [sp, #4]
 8965 0026 48B1     		cbz	r0, .L1665
 8966 0028 2448     		ldr	r0, .L1677
 8967 002a FFF7FEFF 		bl	_ZNK9SerialCDCcvbEv
 8968 002e 90B9     		cbnz	r0, .L1666
 8969 0030 01A8     		add	r0, sp, #4
 8970 0032 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 8971 0036 2046     		mov	r0, r4
 8972 0038 FFF7FEFF 		bl	_ZNV11OutputStack3PopEv
 8973              	.L1665:
 8974 003c 2046     		mov	r0, r4
 8975 003e FFF7FEFF 		bl	_ZNVK11OutputStack12GetFirstItemEv
 8976 0042 0446     		mov	r4, r0
 8977 0044 02A8     		add	r0, sp, #8
 8978 0046 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 8979 004a 2DBB     		cbnz	r5, .L1671
 8980 004c 201C     		adds	r0, r4, #0
 8981 004e 18BF     		it	ne
 8982 0050 0120     		movne	r0, #1
 8983 0052 05B0     		add	sp, sp, #20
 8984              		@ sp needed
 8985 0054 F0BD     		pop	{r4, r5, r6, r7, pc}
 8986              	.L1666:
 8987 0056 1948     		ldr	r0, .L1677
 8988 0058 FFF7FEFF 		bl	_ZNK9SerialCDC8canWriteEv
 8989 005c 019E     		ldr	r6, [sp, #4]
 8990 005e D6F80C21 		ldr	r2, [r6, #268]
 8991 0062 D6F81031 		ldr	r3, [r6, #272]
 8992 0066 D71A     		subs	r7, r2, r3
 8993 0068 8742     		cmp	r7, r0
 8994 006a 28BF     		it	cs
 8995 006c 0746     		movcs	r7, r0
 8996 006e B7B9     		cbnz	r7, .L1676
 8997              	.L1667:
 8998 0070 9A42     		cmp	r2, r3
 8999 0072 07D0     		beq	.L1668
 9000 0074 FFF7FEFF 		bl	millis
 9001 0078 B368     		ldr	r3, [r6, #8]
 9002 007a C01A     		subs	r0, r0, r3
 9003 007c B0F57A7F 		cmp	r0, #1000
 9004 0080 DCD9     		bls	.L1665
 9005 0082 019E     		ldr	r6, [sp, #4]
ARM GAS  /tmp/ccghtDyP.s 			page 159


 9006              	.L1668:
 9007 0084 3046     		mov	r0, r6
 9008 0086 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 9009 008a 0346     		mov	r3, r0
 9010 008c 0146     		mov	r1, r0
 9011 008e 2046     		mov	r0, r4
 9012 0090 0193     		str	r3, [sp, #4]
 9013 0092 FFF7FEFF 		bl	_ZNV11OutputStack12SetFirstItemEP12OutputBuffer
 9014 0096 D1E7     		b	.L1665
 9015              	.L1671:
 9016 0098 0120     		movs	r0, #1
 9017 009a 05B0     		add	sp, sp, #20
 9018              		@ sp needed
 9019 009c F0BD     		pop	{r4, r5, r6, r7, pc}
 9020              	.L1676:
 9021 009e 3046     		mov	r0, r6
 9022 00a0 3946     		mov	r1, r7
 9023 00a2 FFF7FEFF 		bl	_ZN12OutputBuffer4ReadEj
 9024 00a6 3A46     		mov	r2, r7
 9025 00a8 0146     		mov	r1, r0
 9026 00aa 0448     		ldr	r0, .L1677
 9027 00ac FFF7FEFF 		bl	_ZN9SerialCDC5writeEPKhj
 9028 00b0 019E     		ldr	r6, [sp, #4]
 9029 00b2 D6F80C21 		ldr	r2, [r6, #268]
 9030 00b6 D6F81031 		ldr	r3, [r6, #272]
 9031 00ba D9E7     		b	.L1667
 9032              	.L1678:
 9033              		.align	2
 9034              	.L1677:
 9035 00bc 00000000 		.word	SerialUSB
 9036              		.size	_ZN8Platform13FlushMessagesEv, .-_ZN8Platform13FlushMessagesEv
 9037              		.section	.text._ZN8Platform14UpdateFirmwareEv,"ax",%progbits
 9038              		.align	1
 9039              		.p2align 2,,3
 9040              		.global	_ZN8Platform14UpdateFirmwareEv
 9041              		.syntax unified
 9042              		.thumb
 9043              		.thumb_func
 9044              		.fpu fpv4-sp-d16
 9045              		.type	_ZN8Platform14UpdateFirmwareEv, %function
 9046              	_ZN8Platform14UpdateFirmwareEv:
 9047              		@ args = 0, pretend = 0, frame = 512
 9048              		@ frame_needed = 0, uses_anonymous_args = 0
 9049 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 9050 0004 0023     		movs	r3, #0
 9051 0006 ADF5027D 		sub	sp, sp, #520
 9052 000a 8246     		mov	r10, r0
 9053 000c 814A     		ldr	r2, .L1713
 9054 000e D0F8B409 		ldr	r0, [r0, #2484]
 9055 0012 8149     		ldr	r1, .L1713+4
 9056 0014 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 9057 0018 0028     		cmp	r0, #0
 9058 001a 6ED0     		beq	.L1707
 9059 001c 8046     		mov	r8, r0
 9060 001e 7F48     		ldr	r0, .L1713+8
 9061 0020 7F4E     		ldr	r6, .L1713+12
 9062 0022 FFF7FEFF 		bl	_ZN6RepRap13EmergencyStopEv
ARM GAS  /tmp/ccghtDyP.s 			page 160


 9063 0026 0023     		movs	r3, #0
 9064 0028 1A46     		mov	r2, r3
 9065 002a 7E49     		ldr	r1, .L1713+16
 9066 002c 4FF48E00 		mov	r0, #4653056
 9067 0030 FFF7FEFF 		bl	flash_unlock
 9068 0034 4FF48E00 		mov	r0, #4653056
 9069 0038 FFF7FEFF 		bl	flash_erase_sector
 9070 003c 4FF48E04 		mov	r4, #4653056
 9071 0040 0027     		movs	r7, #0
 9072 0042 4FF00109 		mov	r9, #1
 9073 0046 28E0     		b	.L1686
 9074              	.L1711:
 9075 0048 02AB     		add	r3, sp, #8
 9076 004a B5F5007F 		cmp	r5, #512
 9077 004e C5F50072 		rsb	r2, r5, #512
 9078 0052 4FF00001 		mov	r1, #0
 9079 0056 03EB0500 		add	r0, r3, r5
 9080 005a 01D0     		beq	.L1683
 9081 005c FFF7FEFF 		bl	memset
 9082              	.L1683:
 9083              		.syntax unified
 9084              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 9085 0060 72B6     		cpsid i
 9086              	@ 0 "" 2
 9087              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 9088 0062 BFF35F8F 		dmb
 9089              	@ 0 "" 2
 9090              		.thumb
 9091              		.syntax unified
 9092 0066 0023     		movs	r3, #0
 9093 0068 02A9     		add	r1, sp, #8
 9094 006a 2046     		mov	r0, r4
 9095 006c 4FF40072 		mov	r2, #512
 9096 0070 3770     		strb	r7, [r6]
 9097 0072 FFF7FEFF 		bl	flash_write
 9098 0076 86F80090 		strb	r9, [r6]
 9099 007a 0346     		mov	r3, r0
 9100              		.syntax unified
 9101              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 9102 007c BFF35F8F 		dmb
 9103              	@ 0 "" 2
 9104              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 9105 0080 62B6     		cpsie i
 9106              	@ 0 "" 2
 9107              		.thumb
 9108              		.syntax unified
 9109 0082 2046     		mov	r0, r4
 9110 0084 2A46     		mov	r2, r5
 9111 0086 02A9     		add	r1, sp, #8
 9112 0088 0BBB     		cbnz	r3, .L1708
 9113 008a FFF7FEFF 		bl	memcmp
 9114 008e 48BB     		cbnz	r0, .L1709
 9115              	.L1685:
 9116 0090 04F50074 		add	r4, r4, #512
 9117 0094 B4F5900F 		cmp	r4, #4718592
 9118 0098 38D0     		beq	.L1710
 9119              	.L1686:
ARM GAS  /tmp/ccghtDyP.s 			page 161


 9120 009a 4FF40072 		mov	r2, #512
 9121 009e 02A9     		add	r1, sp, #8
 9122 00a0 4046     		mov	r0, r8
 9123 00a2 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 9124 00a6 051E     		subs	r5, r0, #0
 9125 00a8 CEDC     		bgt	.L1711
 9126 00aa 0297     		str	r7, [sp, #8]
 9127              		.syntax unified
 9128              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 9129 00ac 72B6     		cpsid i
 9130              	@ 0 "" 2
 9131              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 9132 00ae BFF35F8F 		dmb
 9133              	@ 0 "" 2
 9134              		.thumb
 9135              		.syntax unified
 9136 00b2 0023     		movs	r3, #0
 9137 00b4 02A9     		add	r1, sp, #8
 9138 00b6 2046     		mov	r0, r4
 9139 00b8 4FF40072 		mov	r2, #512
 9140 00bc 3770     		strb	r7, [r6]
 9141 00be FFF7FEFF 		bl	flash_write
 9142 00c2 86F80090 		strb	r9, [r6]
 9143              		.syntax unified
 9144              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 9145 00c6 BFF35F8F 		dmb
 9146              	@ 0 "" 2
 9147              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 9148 00ca 62B6     		cpsie i
 9149              	@ 0 "" 2
 9150              		.thumb
 9151              		.syntax unified
 9152 00cc E0E7     		b	.L1685
 9153              	.L1708:
 9154 00ce 0094     		str	r4, [sp]
 9155 00d0 5046     		mov	r0, r10
 9156 00d2 554A     		ldr	r2, .L1713+20
 9157 00d4 40F20911 		movw	r1, #265
 9158 00d8 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 9159              	.L1679:
 9160 00dc 0DF5027D 		add	sp, sp, #520
 9161              		@ sp needed
 9162 00e0 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 9163              	.L1709:
 9164 00e4 2346     		mov	r3, r4
 9165 00e6 5046     		mov	r0, r10
 9166 00e8 504A     		ldr	r2, .L1713+24
 9167 00ea 40F20911 		movw	r1, #265
 9168 00ee FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 9169 00f2 0DF5027D 		add	sp, sp, #520
 9170              		@ sp needed
 9171 00f6 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 9172              	.L1707:
 9173 00fa 5046     		mov	r0, r10
 9174 00fc 4C4A     		ldr	r2, .L1713+28
 9175 00fe 0921     		movs	r1, #9
 9176 0100 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
ARM GAS  /tmp/ccghtDyP.s 			page 162


 9177 0104 0DF5027D 		add	sp, sp, #520
 9178              		@ sp needed
 9179 0108 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 9180              	.L1710:
 9181 010c 0023     		movs	r3, #0
 9182 010e 1A46     		mov	r2, r3
 9183 0110 4449     		ldr	r1, .L1713+16
 9184 0112 4FF48E00 		mov	r0, #4653056
 9185 0116 FFF7FEFF 		bl	flash_lock
 9186 011a 4046     		mov	r0, r8
 9187 011c FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 9188 0120 444A     		ldr	r2, .L1713+32
 9189 0122 0421     		movs	r1, #4
 9190 0124 5046     		mov	r0, r10
 9191 0126 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 9192 012a 434A     		ldr	r2, .L1713+36
 9193 012c 0121     		movs	r1, #1
 9194 012e 5046     		mov	r0, r10
 9195 0130 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 9196 0134 FFF7FEFF 		bl	millis
 9197 0138 0446     		mov	r4, r0
 9198 013a 05E0     		b	.L1688
 9199              	.L1712:
 9200 013c FFF7FEFF 		bl	millis
 9201 0140 001B     		subs	r0, r0, r4
 9202 0142 B0F5FA6F 		cmp	r0, #2000
 9203 0146 04D2     		bcs	.L1687
 9204              	.L1688:
 9205 0148 5046     		mov	r0, r10
 9206 014a FFF7FEFF 		bl	_ZN8Platform13FlushMessagesEv
 9207 014e 0028     		cmp	r0, #0
 9208 0150 F4D1     		bne	.L1712
 9209              	.L1687:
 9210 0152 3248     		ldr	r0, .L1713+8
 9211 0154 FFF7FEFF 		bl	_ZN6RepRap4ExitEv
 9212 0158 384B     		ldr	r3, .L1713+40
 9213 015a 0422     		movs	r2, #4
 9214 015c 1A60     		str	r2, [r3]
 9215              		.syntax unified
 9216              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 9217 015e 72B6     		cpsid i
 9218              	@ 0 "" 2
 9219              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 9220 0160 BFF35F8F 		dmb
 9221              	@ 0 "" 2
 9222              		.thumb
 9223              		.syntax unified
 9224 0164 0022     		movs	r2, #0
 9225 0166 3270     		strb	r2, [r6]
 9226 0168 4FF0FF31 		mov	r1, #-1
 9227              	.L1689:
 9228 016c 9300     		lsls	r3, r2, #2
 9229 016e 03F16043 		add	r3, r3, #-536870912
 9230 0172 03F56143 		add	r3, r3, #57600
 9231 0176 0132     		adds	r2, r2, #1
 9232 0178 082A     		cmp	r2, #8
 9233 017a C3F88010 		str	r1, [r3, #128]
ARM GAS  /tmp/ccghtDyP.s 			page 163


 9234 017e C3F88011 		str	r1, [r3, #384]
 9235 0182 F3D1     		bne	.L1689
 9236 0184 4FF48E02 		mov	r2, #4653056
 9237 0188 2D4B     		ldr	r3, .L1713+44
 9238 018a 1468     		ldr	r4, [r2]
 9239 018c 2D48     		ldr	r0, .L1713+48
 9240 018e 2E4A     		ldr	r2, .L1713+52
 9241 0190 5964     		str	r1, [r3, #68]
 9242 0192 4164     		str	r1, [r0, #68]
 9243 0194 5164     		str	r1, [r2, #68]
 9244 0196 C3F84416 		str	r1, [r3, #1604]
 9245 019a 2C4B     		ldr	r3, .L1713+56
 9246 019c C0F84416 		str	r1, [r0, #1604]
 9247 01a0 04F12102 		add	r2, r4, #33
 9248 01a4 9A42     		cmp	r2, r3
 9249 01a6 0FD8     		bhi	.L1690
 9250 01a8 294F     		ldr	r7, .L1713+60
 9251 01aa 07F1200C 		add	ip, r7, #32
 9252              	.L1691:
 9253 01ae 3D46     		mov	r5, r7
 9254 01b0 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 9255 01b2 6545     		cmp	r5, ip
 9256 01b4 2060     		str	r0, [r4]	@ unaligned
 9257 01b6 6160     		str	r1, [r4, #4]	@ unaligned
 9258 01b8 A260     		str	r2, [r4, #8]	@ unaligned
 9259 01ba E360     		str	r3, [r4, #12]	@ unaligned
 9260 01bc 2F46     		mov	r7, r5
 9261 01be 04F11004 		add	r4, r4, #16
 9262 01c2 F4D1     		bne	.L1691
 9263 01c4 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 9264 01c6 2370     		strb	r3, [r4]
 9265              	.L1690:
 9266 01c8 0021     		movs	r1, #0
 9267 01ca 2220     		movs	r0, #34
 9268 01cc FFF7FEFF 		bl	_ZN6IoPort12WriteDigitalEhb
 9269 01d0 2048     		ldr	r0, .L1713+64
 9270 01d2 FFF7FEFF 		bl	wdt_restart
 9271 01d6 2048     		ldr	r0, .L1713+68
 9272 01d8 FFF7FEFF 		bl	rswdt_restart
 9273              		.syntax unified
 9274              	@ 445 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 9275 01dc BFF34F8F 		dsb
 9276              	@ 0 "" 2
 9277              	@ 434 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 9278 01e0 BFF36F8F 		isb
 9279              	@ 0 "" 2
 9280              		.thumb
 9281              		.syntax unified
 9282 01e4 1D4B     		ldr	r3, .L1713+72
 9283 01e6 4FF48E02 		mov	r2, #4653056
 9284 01ea 9A60     		str	r2, [r3, #8]
 9285              		.syntax unified
 9286              	@ 445 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 9287 01ec BFF34F8F 		dsb
 9288              	@ 0 "" 2
 9289              	@ 434 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 9290 01f0 BFF36F8F 		isb
ARM GAS  /tmp/ccghtDyP.s 			page 164


 9291              	@ 0 "" 2
 9292              		.thumb
 9293              		.syntax unified
 9294 01f4 0123     		movs	r3, #1
 9295 01f6 3370     		strb	r3, [r6]
 9296              		.syntax unified
 9297              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 9298 01f8 BFF35F8F 		dmb
 9299              	@ 0 "" 2
 9300              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 9301 01fc 62B6     		cpsie i
 9302              	@ 0 "" 2
 9303              	@ 1150 "../src/Platform.cpp" 1
 9304 01fe 1346     		mov r3, r2
 9305              	@ 0 "" 2
 9306              	@ 1158 "../src/Platform.cpp" 1
 9307 0200 D3F800D0 		ldr sp, [r3]
 9308              	@ 0 "" 2
 9309              	@ 1160 "../src/Platform.cpp" 1
 9310 0204 BFF36F8F 		isb
 9311              	@ 0 "" 2
 9312              	@ 1161 "../src/Platform.cpp" 1
 9313 0208 5968     		ldr r1, [r3, #4]
 9314              	@ 0 "" 2
 9315              	@ 1162 "../src/Platform.cpp" 1
 9316 020a 41F00101 		orr r1, r1, #1
 9317              	@ 0 "" 2
 9318              	@ 1163 "../src/Platform.cpp" 1
 9319 020e 0847     		bx r1
 9320              	@ 0 "" 2
 9321              		.thumb
 9322              		.syntax unified
 9323 0210 64E7     		b	.L1679
 9324              	.L1714:
 9325 0212 00BF     		.align	2
 9326              	.L1713:
 9327 0214 7C000000 		.word	.LC14
 9328 0218 1C000000 		.word	.LC11
 9329 021c 00000000 		.word	reprap
 9330 0220 00000000 		.word	g_interrupt_enabled
 9331 0224 FFFF4700 		.word	4718591
 9332 0228 10000000 		.word	.LC109
 9333 022c 40000000 		.word	.LC110
 9334 0230 00000000 		.word	.LC108
 9335 0234 74000000 		.word	.LC111
 9336 0238 8C000000 		.word	.LC112
 9337 023c 10E000E0 		.word	-536813552
 9338 0240 000E0E40 		.word	1074662912
 9339 0244 00100E40 		.word	1074663424
 9340 0248 00120E40 		.word	1074663936
 9341 024c 00000220 		.word	537001984
 9342 0250 E8000000 		.word	.LC113
 9343 0254 50180E40 		.word	1074665552
 9344 0258 00190E40 		.word	1074665728
 9345 025c 00ED00E0 		.word	-536810240
 9346              		.size	_ZN8Platform14UpdateFirmwareEv, .-_ZN8Platform14UpdateFirmwareEv
 9347              		.section	.text._ZN8Platform4SpinEv,"ax",%progbits
ARM GAS  /tmp/ccghtDyP.s 			page 165


 9348              		.align	1
 9349              		.p2align 2,,3
 9350              		.global	_ZN8Platform4SpinEv
 9351              		.syntax unified
 9352              		.thumb
 9353              		.thumb_func
 9354              		.fpu fpv4-sp-d16
 9355              		.type	_ZN8Platform4SpinEv, %function
 9356              	_ZN8Platform4SpinEv:
 9357              		@ args = 0, pretend = 0, frame = 280
 9358              		@ frame_needed = 0, uses_anonymous_args = 0
 9359 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 9360 0004 90F8BE50 		ldrb	r5, [r0, #190]	@ zero_extendqisi2
 9361 0008 C8B0     		sub	sp, sp, #288
 9362 000a 15B9     		cbnz	r5, .L1836
 9363              	.L1715:
 9364 000c 48B0     		add	sp, sp, #288
 9365              		@ sp needed
 9366 000e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 9367              	.L1836:
 9368 0012 0446     		mov	r4, r0
 9369 0014 D0F8B409 		ldr	r0, [r0, #2484]
 9370 0018 FFF7FEFF 		bl	_ZN11MassStorage4SpinEv
 9371 001c 2046     		mov	r0, r4
 9372 001e FFF7FEFF 		bl	_ZN8Platform13FlushMessagesEv
 9373 0022 94F81037 		ldrb	r3, [r4, #1808]	@ zero_extendqisi2
 9374 0026 6BB1     		cbz	r3, .L1719
 9375 0028 D4F80C37 		ldr	r3, [r4, #1804]
 9376 002c D4F81427 		ldr	r2, [r4, #1812]
 9377 0030 9A42     		cmp	r2, r3
 9378 0032 D4F81827 		ldr	r2, [r4, #1816]
 9379 0036 38BF     		it	cc
 9380 0038 C4F81437 		strcc	r3, [r4, #1812]
 9381 003c 9A42     		cmp	r2, r3
 9382 003e 88BF     		it	hi
 9383 0040 C4F81837 		strhi	r3, [r4, #1816]
 9384              	.L1719:
 9385 0044 D4F8C829 		ldr	r2, [r4, #2504]
 9386 0048 40F2EA33 		movw	r3, #1002
 9387 004c 9A42     		cmp	r2, r3
 9388 004e 00F0F980 		beq	.L1723
 9389 0052 94F8D903 		ldrb	r0, [r4, #985]	@ zero_extendqisi2
 9390 0056 B4F8D639 		ldrh	r3, [r4, #2518]
 9391 005a 0028     		cmp	r0, #0
 9392 005c 00F0F380 		beq	.L1724
 9393 0060 40F22E42 		movw	r2, #1070
 9394 0064 9A42     		cmp	r2, r3
 9395 0066 C0F00381 		bcc	.L1725
 9396 006a D4F8E039 		ldr	r3, [r4, #2528]
 9397 006e 0020     		movs	r0, #0
 9398 0070 0133     		adds	r3, r3, #1
 9399 0072 C4F8E039 		str	r3, [r4, #2528]
 9400 0076 84F8D903 		strb	r0, [r4, #985]
 9401              	.L1726:
 9402 007a FFF7FEFF 		bl	_ZN12SmartDrivers4SpinEb
 9403 007e FFF7FEFF 		bl	millis
 9404 0082 04F6F812 		addw	r2, r4, #2552
ARM GAS  /tmp/ccghtDyP.s 			page 166


 9405 0086 D2E90078 		ldrd	r7, [r2]
 9406 008a 57EA0803 		orrs	r3, r7, r8
 9407 008e 0646     		mov	r6, r0
 9408 0090 0ED0     		beq	.L1744
 9409 0092 D4F8003A 		ldr	r3, [r4, #2560]
 9410 0096 C51A     		subs	r5, r0, r3
 9411 0098 B5F57A7F 		cmp	r5, #1000
 9412 009c 08D3     		bcc	.L1744
 9413 009e 781C     		adds	r0, r7, #1
 9414 00a0 48F10001 		adc	r1, r8, #0
 9415 00a4 03F57A73 		add	r3, r3, #1000
 9416 00a8 C2E90001 		strd	r0, [r2]
 9417 00ac C4F8003A 		str	r3, [r4, #2560]
 9418              	.L1744:
 9419 00b0 D4F86839 		ldr	r3, [r4, #2408]
 9420 00b4 F31A     		subs	r3, r6, r3
 9421 00b6 B3F5FA7F 		cmp	r3, #500
 9422 00ba C0F0A680 		bcc	.L1746
 9423 00be C4F86869 		str	r6, [r4, #2408]
 9424 00c2 04F5FB67 		add	r7, r4, #2008
 9425 00c6 04F66418 		addw	r8, r4, #2404
 9426 00ca 0025     		movs	r5, #0
 9427              	.L1748:
 9428 00cc 3846     		mov	r0, r7
 9429 00ce FFF7FEFF 		bl	_ZN3Fan5CheckEv
 9430 00d2 2C37     		adds	r7, r7, #44
 9431 00d4 0028     		cmp	r0, #0
 9432 00d6 18BF     		it	ne
 9433 00d8 0546     		movne	r5, r0
 9434 00da B845     		cmp	r8, r7
 9435 00dc F6D1     		bne	.L1748
 9436 00de 94F8943A 		ldrb	r3, [r4, #2708]	@ zero_extendqisi2
 9437 00e2 13B1     		cbz	r3, .L1749
 9438 00e4 002D     		cmp	r5, #0
 9439 00e6 00F0BD80 		beq	.L1837
 9440              	.L1749:
 9441 00ea D4F8F439 		ldr	r3, [r4, #2548]
 9442 00ee F31A     		subs	r3, r6, r3
 9443 00f0 B3F57A6F 		cmp	r3, #4000
 9444 00f4 40F28980 		bls	.L1746
 9445 00f8 0DF10F05 		add	r5, sp, #15
 9446 00fc D4F8D023 		ldr	r2, [r4, #976]
 9447 0100 0023     		movs	r3, #0
 9448 0102 2B70     		strb	r3, [r5]
 9449 0104 002A     		cmp	r2, #0
 9450 0106 40F0A181 		bne	.L1838
 9451              	.L1751:
 9452 010a D4F8C823 		ldr	r2, [r4, #968]
 9453 010e 32B1     		cbz	r2, .L1752
 9454 0110 0095     		str	r5, [sp]
 9455 0112 C64B     		ldr	r3, .L1843
 9456 0114 40F2B511 		movw	r1, #437
 9457 0118 2046     		mov	r0, r4
 9458 011a FFF7FEFF 		bl	_ZN8Platform13ReportDriversE11MessageTypemPKcRb.part.30
 9459              	.L1752:
 9460 011e D4F8CC23 		ldr	r2, [r4, #972]
 9461 0122 EAB1     		cbz	r2, .L1753
ARM GAS  /tmp/ccghtDyP.s 			page 167


 9462 0124 D306     		lsls	r3, r2, #27
 9463 0126 22F01F01 		bic	r1, r2, #31
 9464 012a 08D0     		beq	.L1754
 9465 012c 94F8DA33 		ldrb	r3, [r4, #986]	@ zero_extendqisi2
 9466 0130 7BB1     		cbz	r3, .L1755
 9467 0132 D4F8DC33 		ldr	r3, [r4, #988]
 9468 0136 F31A     		subs	r3, r6, r3
 9469 0138 B3F57A6F 		cmp	r3, #4000
 9470 013c 09D2     		bcs	.L1755
 9471              	.L1754:
 9472 013e 79B1     		cbz	r1, .L1753
 9473 0140 94F8DB33 		ldrb	r3, [r4, #987]	@ zero_extendqisi2
 9474 0144 2BB1     		cbz	r3, .L1755
 9475 0146 D4F8E033 		ldr	r3, [r4, #992]
 9476 014a F31A     		subs	r3, r6, r3
 9477 014c B3F57A6F 		cmp	r3, #4000
 9478 0150 06D3     		bcc	.L1753
 9479              	.L1755:
 9480 0152 0095     		str	r5, [sp]
 9481 0154 B64B     		ldr	r3, .L1843+4
 9482 0156 40F2B521 		movw	r1, #693
 9483 015a 2046     		mov	r0, r4
 9484 015c FFF7FEFF 		bl	_ZN8Platform13ReportDriversE11MessageTypemPKcRb.part.30
 9485              	.L1753:
 9486 0160 D4F8F433 		ldr	r3, [r4, #1012]
 9487 0164 002B     		cmp	r3, #0
 9488 0166 40F09280 		bne	.L1839
 9489              	.L1757:
 9490 016a D4F8E829 		ldr	r2, [r4, #2536]
 9491 016e D4F8EC39 		ldr	r3, [r4, #2540]
 9492 0172 9A42     		cmp	r2, r3
 9493 0174 1BD0     		beq	.L1759
 9494 0176 B4F8D639 		ldrh	r3, [r4, #2518]
 9495 017a 9FEDAE7A 		vldr.32	s14, .L1843+8
 9496 017e 07EE903A 		vmov	s15, r3	@ int
 9497 0182 F8EEE77A 		vcvt.f32.s32	s15, s15
 9498 0186 67EE877A 		vmul.f32	s15, s15, s14
 9499 018a 17EE900A 		vmov	r0, s15
 9500 018e FFF7FEFF 		bl	__aeabi_f2d
 9501 0192 A94A     		ldr	r2, .L1843+12
 9502 0194 CDE90001 		strd	r0, [sp]
 9503 0198 40F2B521 		movw	r1, #693
 9504 019c 2046     		mov	r0, r4
 9505 019e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 9506 01a2 D4F8E839 		ldr	r3, [r4, #2536]
 9507 01a6 C4F8EC39 		str	r3, [r4, #2540]
 9508 01aa 0123     		movs	r3, #1
 9509 01ac 2B70     		strb	r3, [r5]
 9510              	.L1759:
 9511 01ae D4F8E029 		ldr	r2, [r4, #2528]
 9512 01b2 D4F8E439 		ldr	r3, [r4, #2532]
 9513 01b6 9A42     		cmp	r2, r3
 9514 01b8 1BD0     		beq	.L1760
 9515 01ba B4F8D639 		ldrh	r3, [r4, #2518]
 9516 01be 9FED9D7A 		vldr.32	s14, .L1843+8
 9517 01c2 07EE903A 		vmov	s15, r3	@ int
 9518 01c6 F8EEE77A 		vcvt.f32.s32	s15, s15
ARM GAS  /tmp/ccghtDyP.s 			page 168


 9519 01ca 67EE877A 		vmul.f32	s15, s15, s14
 9520 01ce 17EE900A 		vmov	r0, s15
 9521 01d2 FFF7FEFF 		bl	__aeabi_f2d
 9522 01d6 994A     		ldr	r2, .L1843+16
 9523 01d8 CDE90001 		strd	r0, [sp]
 9524 01dc 40F2B521 		movw	r1, #693
 9525 01e0 2046     		mov	r0, r4
 9526 01e2 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 9527 01e6 D4F8E039 		ldr	r3, [r4, #2528]
 9528 01ea C4F8E439 		str	r3, [r4, #2532]
 9529 01ee 0123     		movs	r3, #1
 9530 01f0 2B70     		strb	r3, [r5]
 9531              	.L1760:
 9532 01f2 94F8BC30 		ldrb	r3, [r4, #188]	@ zero_extendqisi2
 9533 01f6 022B     		cmp	r3, #2
 9534 01f8 00F09A80 		beq	.L1761
 9535 01fc 042B     		cmp	r3, #4
 9536 01fe 00F09780 		beq	.L1761
 9537              	.L1762:
 9538 0202 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 9539 0204 0BB1     		cbz	r3, .L1746
 9540              	.L1763:
 9541 0206 C4F8F469 		str	r6, [r4, #2548]
 9542              	.L1746:
 9543 020a 94F8F039 		ldrb	r3, [r4, #2544]	@ zero_extendqisi2
 9544 020e 7BB1     		cbz	r3, .L1766
 9545 0210 94F8F139 		ldrb	r3, [r4, #2545]	@ zero_extendqisi2
 9546 0214 012B     		cmp	r3, #1
 9547 0216 00F03381 		beq	.L1767
 9548 021a C0F01F81 		bcc	.L1768
 9549 021e 022B     		cmp	r3, #2
 9550 0220 06D1     		bne	.L1766
 9551 0222 B4F8D639 		ldrh	r3, [r4, #2518]
 9552 0226 B4F8DE29 		ldrh	r2, [r4, #2526]
 9553 022a 9A42     		cmp	r2, r3
 9554 022c 40F23A81 		bls	.L1840
 9555              	.L1766:
 9556 0230 2068     		ldr	r0, [r4]
 9557 0232 0028     		cmp	r0, #0
 9558 0234 3FF4EAAE 		beq	.L1715
 9559 0238 0021     		movs	r1, #0
 9560 023a FFF7FEFF 		bl	_ZN6Logger5FlushEb
 9561 023e 48B0     		add	sp, sp, #288
 9562              		@ sp needed
 9563 0240 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 9564              	.L1723:
 9565 0244 FEE7     		b	.L1723
 9566              	.L1724:
 9567 0246 B3F58D6F 		cmp	r3, #1128
 9568 024a FFF416AF 		bcc	.L1726
 9569 024e B4F8D639 		ldrh	r3, [r4, #2518]
 9570 0252 B3F5426F 		cmp	r3, #3104
 9571 0256 BFF410AF 		bcs	.L1726
 9572 025a 0123     		movs	r3, #1
 9573 025c 2846     		mov	r0, r5
 9574 025e 84F8D933 		strb	r3, [r4, #985]
 9575 0262 0AE7     		b	.L1726
ARM GAS  /tmp/ccghtDyP.s 			page 169


 9576              	.L1837:
 9577 0264 84F8945A 		strb	r5, [r4, #2708]
 9578 0268 2046     		mov	r0, r4
 9579 026a FFF7FEFF 		bl	_ZN8Platform11AtxPowerOffEb.part.26
 9580 026e 3CE7     		b	.L1749
 9581              	.L1725:
 9582 0270 B4F8D639 		ldrh	r3, [r4, #2518]
 9583 0274 40F6C842 		movw	r2, #3272
 9584 0278 9A42     		cmp	r2, r3
 9585 027a 3DD2     		bcs	.L1727
 9586 027c D4F8E839 		ldr	r3, [r4, #2536]
 9587 0280 0020     		movs	r0, #0
 9588 0282 0133     		adds	r3, r3, #1
 9589 0284 C4F8E839 		str	r3, [r4, #2536]
 9590 0288 84F8D903 		strb	r0, [r4, #985]
 9591 028c F5E6     		b	.L1726
 9592              	.L1839:
 9593 028e 6C4F     		ldr	r7, .L1843+20
 9594 0290 3869     		ldr	r0, [r7, #16]
 9595 0292 FFF7FEFF 		bl	_ZNK6GCodes16IsReallyPrintingEv
 9596 0296 0028     		cmp	r0, #0
 9597 0298 3FF467AF 		beq	.L1757
 9598 029c DD23     		movs	r3, #221
 9599 029e D4F8F413 		ldr	r1, [r4, #1012]
 9600 02a2 4FF00009 		mov	r9, #0
 9601 02a6 04A8     		add	r0, sp, #16
 9602 02a8 0DF14008 		add	r8, sp, #64
 9603 02ac CDE90483 		strd	r8, r3, [sp, #16]
 9604 02b0 8DF84090 		strb	r9, [sp, #64]
 9605 02b4 FFF7FEFF 		bl	_Z11ListDriversRK9StringRefm
 9606 02b8 C4F8F493 		str	r9, [r4, #1012]
 9607 02bc 3846     		mov	r0, r7
 9608 02be D7F80890 		ldr	r9, [r7, #8]
 9609 02c2 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 9610 02c6 8246     		mov	r10, r0
 9611 02c8 3846     		mov	r0, r7
 9612 02ca FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 9613 02ce 5246     		mov	r2, r10
 9614 02d0 0346     		mov	r3, r0
 9615 02d2 04A9     		add	r1, sp, #16
 9616 02d4 4846     		mov	r0, r9
 9617 02d6 FFF7FEFF 		bl	_ZN4Move15LiveCoordinatesEPfmm
 9618 02da 0698     		ldr	r0, [sp, #24]	@ float
 9619 02dc FFF7FEFF 		bl	__aeabi_f2d
 9620 02e0 4346     		mov	r3, r8
 9621 02e2 CDE90001 		strd	r0, [sp]
 9622 02e6 574A     		ldr	r2, .L1843+24
 9623 02e8 40F2B521 		movw	r1, #693
 9624 02ec 2046     		mov	r0, r4
 9625 02ee FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 9626 02f2 0123     		movs	r3, #1
 9627 02f4 2B70     		strb	r3, [r5]
 9628 02f6 38E7     		b	.L1757
 9629              	.L1727:
 9630 02f8 94F8D823 		ldrb	r2, [r4, #984]	@ zero_extendqisi2
 9631 02fc A318     		adds	r3, r4, r2
 9632 02fe 93F9E830 		ldrsb	r3, [r3, #232]
ARM GAS  /tmp/ccghtDyP.s 			page 170


 9633 0302 002B     		cmp	r3, #0
 9634 0304 38DA     		bge	.L1832
 9635 0306 D4F8FC53 		ldr	r5, [r4, #1020]
 9636              	.L1728:
 9637 030a 4DBB     		cbnz	r5, .L1841
 9638 030c D4F8F813 		ldr	r1, [r4, #1016]
 9639 0310 D9B9     		cbnz	r1, .L1842
 9640              	.L1742:
 9641 0312 531C     		adds	r3, r2, #1
 9642 0314 D4F8C423 		ldr	r2, [r4, #964]
 9643 0318 94F8D903 		ldrb	r0, [r4, #985]	@ zero_extendqisi2
 9644 031c DBB2     		uxtb	r3, r3
 9645 031e 9342     		cmp	r3, r2
 9646 0320 84F8D833 		strb	r3, [r4, #984]
 9647 0324 7FF4A9AE 		bne	.L1726
 9648 0328 0023     		movs	r3, #0
 9649 032a 84F8D833 		strb	r3, [r4, #984]
 9650 032e A4E6     		b	.L1726
 9651              	.L1761:
 9652 0330 6720     		movs	r0, #103
 9653 0332 FFF7FEFF 		bl	digitalRead
 9654 0336 0028     		cmp	r0, #0
 9655 0338 3FF463AF 		beq	.L1762
 9656 033c 424A     		ldr	r2, .L1843+28
 9657 033e 40F2B511 		movw	r1, #437
 9658 0342 2046     		mov	r0, r4
 9659 0344 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 9660 0348 5DE7     		b	.L1763
 9661              	.L1842:
 9662 034a 3D4B     		ldr	r3, .L1843+20
 9663 034c 1869     		ldr	r0, [r3, #16]
 9664 034e FFF7FEFF 		bl	_ZN6GCodes12PauseOnStallEm
 9665 0352 94F8D823 		ldrb	r2, [r4, #984]	@ zero_extendqisi2
 9666 0356 0028     		cmp	r0, #0
 9667 0358 DBD0     		beq	.L1742
 9668 035a C4F8F853 		str	r5, [r4, #1016]
 9669 035e D8E7     		b	.L1742
 9670              	.L1841:
 9671 0360 374B     		ldr	r3, .L1843+20
 9672 0362 2946     		mov	r1, r5
 9673 0364 1869     		ldr	r0, [r3, #16]
 9674 0366 FFF7FEFF 		bl	_ZN6GCodes13ReHomeOnStallEm
 9675 036a 10B1     		cbz	r0, .L1835
 9676 036c 0023     		movs	r3, #0
 9677 036e C4F8FC33 		str	r3, [r4, #1020]
 9678              	.L1835:
 9679 0372 94F8D823 		ldrb	r2, [r4, #984]	@ zero_extendqisi2
 9680 0376 CCE7     		b	.L1742
 9681              	.L1832:
 9682 0378 1046     		mov	r0, r2
 9683 037a 0021     		movs	r1, #0
 9684 037c FFF7FEFF 		bl	_ZN12SmartDrivers20GetAccumulatedStatusEjm
 9685 0380 94F8D823 		ldrb	r2, [r4, #984]	@ zero_extendqisi2
 9686 0384 D4F8C863 		ldr	r6, [r4, #968]
 9687 0388 D4F8CC53 		ldr	r5, [r4, #972]
 9688 038c 0123     		movs	r3, #1
 9689 038e 9340     		lsls	r3, r3, r2
ARM GAS  /tmp/ccghtDyP.s 			page 171


 9690 0390 8707     		lsls	r7, r0, #30
 9691 0392 6FEA0301 		mvn	r1, r3
 9692 0396 33D5     		bpl	.L1729
 9693 0398 1E43     		orrs	r6, r6, r3
 9694 039a 0D40     		ands	r5, r5, r1
 9695 039c C4F8C863 		str	r6, [r4, #968]
 9696 03a0 C4F8CC53 		str	r5, [r4, #972]
 9697              	.L1730:
 9698 03a4 D4F8D053 		ldr	r5, [r4, #976]
 9699 03a8 10F0180F 		tst	r0, #24
 9700 03ac 14BF     		ite	ne
 9701 03ae 1D43     		orrne	r5, r5, r3
 9702 03b0 0D40     		andeq	r5, r5, r1
 9703 03b2 10F0600F 		tst	r0, #96
 9704 03b6 C4F8D053 		str	r5, [r4, #976]
 9705 03ba D4F8D453 		ldr	r5, [r4, #980]
 9706 03be 1BD0     		beq	.L1734
 9707 03c0 0606     		lsls	r6, r0, #24
 9708 03c2 19D4     		bmi	.L1734
 9709 03c4 1D43     		orrs	r5, r5, r3
 9710 03c6 C4F8D453 		str	r5, [r4, #980]
 9711              	.L1735:
 9712 03ca C007     		lsls	r0, r0, #31
 9713 03cc D4F8F063 		ldr	r6, [r4, #1008]
 9714 03d0 D4F8FC53 		ldr	r5, [r4, #1020]
 9715 03d4 0CD5     		bpl	.L1736
 9716 03d6 3342     		tst	r3, r6
 9717 03d8 06D1     		bne	.L1737
 9718 03da D4F8EC13 		ldr	r1, [r4, #1004]
 9719 03de 0B42     		tst	r3, r1
 9720 03e0 19D0     		beq	.L1738
 9721 03e2 1D43     		orrs	r5, r5, r3
 9722 03e4 C4F8FC53 		str	r5, [r4, #1020]
 9723              	.L1737:
 9724 03e8 3343     		orrs	r3, r3, r6
 9725 03ea C4F8F033 		str	r3, [r4, #1008]
 9726 03ee 8CE7     		b	.L1728
 9727              	.L1736:
 9728 03f0 3140     		ands	r1, r1, r6
 9729 03f2 C4F8F013 		str	r1, [r4, #1008]
 9730 03f6 88E7     		b	.L1728
 9731              	.L1734:
 9732 03f8 0D40     		ands	r5, r5, r1
 9733 03fa C4F8D453 		str	r5, [r4, #980]
 9734 03fe E4E7     		b	.L1735
 9735              	.L1729:
 9736 0400 4707     		lsls	r7, r0, #29
 9737 0402 06EA0106 		and	r6, r6, r1
 9738 0406 4CBF     		ite	mi
 9739 0408 1D43     		orrmi	r5, r5, r3
 9740 040a 0D40     		andpl	r5, r5, r1
 9741 040c C4F8C863 		str	r6, [r4, #968]
 9742 0410 C4F8CC53 		str	r5, [r4, #972]
 9743 0414 C6E7     		b	.L1730
 9744              	.L1738:
 9745 0416 D4F8E813 		ldr	r1, [r4, #1000]
 9746 041a 0B42     		tst	r3, r1
ARM GAS  /tmp/ccghtDyP.s 			page 172


 9747 041c 49D0     		beq	.L1739
 9748 041e D4F8F813 		ldr	r1, [r4, #1016]
 9749 0422 1943     		orrs	r1, r1, r3
 9750 0424 C4F8F813 		str	r1, [r4, #1016]
 9751 0428 DEE7     		b	.L1737
 9752              	.L1844:
 9753 042a 00BF     		.align	2
 9754              	.L1843:
 9755 042c 10000000 		.word	.LC115
 9756 0430 2C000000 		.word	.LC116
 9757 0434 3333113C 		.word	1007760179
 9758 0438 68000000 		.word	.LC118
 9759 043c 88000000 		.word	.LC119
 9760 0440 00000000 		.word	reprap
 9761 0444 40000000 		.word	.LC117
 9762 0448 A8000000 		.word	.LC120
 9763              	.L1838:
 9764 044c 0095     		str	r5, [sp]
 9765 044e 1E4B     		ldr	r3, .L1845
 9766 0450 40F2B511 		movw	r1, #437
 9767 0454 2046     		mov	r0, r4
 9768 0456 FFF7FEFF 		bl	_ZN8Platform13ReportDriversE11MessageTypemPKcRb.part.30
 9769 045a 56E6     		b	.L1751
 9770              	.L1768:
 9771 045c B4F8D639 		ldrh	r3, [r4, #2518]
 9772 0460 B4F8DE29 		ldrh	r2, [r4, #2526]
 9773 0464 9A42     		cmp	r2, r3
 9774 0466 07D9     		bls	.L1770
 9775 0468 B4F8DC39 		ldrh	r3, [r4, #2524]
 9776 046c B4F8D629 		ldrh	r2, [r4, #2518]
 9777 0470 3833     		adds	r3, r3, #56
 9778 0472 9342     		cmp	r3, r2
 9779 0474 BFF6DCAE 		bge	.L1766
 9780              	.L1770:
 9781 0478 0123     		movs	r3, #1
 9782 047a 84F8F139 		strb	r3, [r4, #2545]
 9783 047e D7E6     		b	.L1766
 9784              	.L1767:
 9785 0480 B4F8D639 		ldrh	r3, [r4, #2518]
 9786 0484 B4F8DC29 		ldrh	r2, [r4, #2524]
 9787 0488 9A42     		cmp	r2, r3
 9788 048a 7FF6D1AE 		bls	.L1766
 9789 048e 0F4B     		ldr	r3, .L1845+4
 9790 0490 1869     		ldr	r0, [r3, #16]
 9791 0492 FFF7FEFF 		bl	_ZN6GCodes15LowVoltagePauseEv
 9792 0496 0028     		cmp	r0, #0
 9793 0498 3FF4CAAE 		beq	.L1766
 9794 049c 0223     		movs	r3, #2
 9795 049e 84F8F139 		strb	r3, [r4, #2545]
 9796 04a2 C5E6     		b	.L1766
 9797              	.L1840:
 9798 04a4 094B     		ldr	r3, .L1845+4
 9799 04a6 1869     		ldr	r0, [r3, #16]
 9800 04a8 FFF7FEFF 		bl	_ZN6GCodes16LowVoltageResumeEv
 9801 04ac 0028     		cmp	r0, #0
 9802 04ae E3D1     		bne	.L1770
 9803 04b0 BEE6     		b	.L1766
ARM GAS  /tmp/ccghtDyP.s 			page 173


 9804              	.L1739:
 9805 04b2 D4F8E413 		ldr	r1, [r4, #996]
 9806 04b6 0B42     		tst	r3, r1
 9807 04b8 96D0     		beq	.L1737
 9808 04ba D4F8F413 		ldr	r1, [r4, #1012]
 9809 04be 1943     		orrs	r1, r1, r3
 9810 04c0 C4F8F413 		str	r1, [r4, #1012]
 9811 04c4 90E7     		b	.L1737
 9812              	.L1846:
 9813 04c6 00BF     		.align	2
 9814              	.L1845:
 9815 04c8 00000000 		.word	.LC114
 9816 04cc 00000000 		.word	reprap
 9817              		.size	_ZN8Platform4SpinEv, .-_ZN8Platform4SpinEv
 9818              		.global	_ZN8Platform22softwareResetDebugInfoE
 9819              		.set	_ZL14DefaultGateway,_ZL16DefaultIpAddress
 9820              		.section	.rodata
 9821              		.align	2
 9822              		.set	.LANCHOR26,. + 0
 9823              	.LC64:
 9824 0000 A0000000 		.word	.LC0
 9825 0004 AC000000 		.word	.LC1
 9826 0008 B4000000 		.word	.LC2
 9827 000c C0000000 		.word	.LC3
 9828 0010 CC000000 		.word	.LC4
 9829 0014 E8000000 		.word	.LC5
 9830 0018 E8000000 		.word	.LC5
 9831 001c E8000000 		.word	.LC5
 9832              		.section	.bss._ZL11fanInterval,"aw",%nobits
 9833              		.align	2
 9834              		.set	.LANCHOR2,. + 0
 9835              		.type	_ZL11fanInterval, %object
 9836              		.size	_ZL11fanInterval, 4
 9837              	_ZL11fanInterval:
 9838 0000 00000000 		.space	4
 9839              		.section	.bss._ZL16fanLastResetTime,"aw",%nobits
 9840              		.align	2
 9841              		.set	.LANCHOR1,. + 0
 9842              		.type	_ZL16fanLastResetTime, %object
 9843              		.size	_ZL16fanLastResetTime, 4
 9844              	_ZL16fanLastResetTime:
 9845 0000 00000000 		.space	4
 9846              		.section	.bss._ZL17fanInterruptCount,"aw",%nobits
 9847              		.align	2
 9848              		.set	.LANCHOR0,. + 0
 9849              		.type	_ZL17fanInterruptCount, %object
 9850              		.size	_ZL17fanInterruptCount, 4
 9851              	_ZL17fanInterruptCount:
 9852 0000 00000000 		.space	4
 9853              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 9854              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 9855              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 9856              	_ZL28cpu_irq_prev_interrupt_state:
 9857 0000 00       		.space	1
 9858              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 9859              		.align	2
 9860              		.type	_ZL32cpu_irq_critical_section_counter, %object
ARM GAS  /tmp/ccghtDyP.s 			page 174


 9861              		.size	_ZL32cpu_irq_critical_section_counter, 4
 9862              	_ZL32cpu_irq_critical_section_counter:
 9863 0000 00000000 		.space	4
 9864              		.section	.bss._ZN8Platform22softwareResetDebugInfoE,"aw",%nobits
 9865              		.set	.LANCHOR25,. + 0
 9866              		.type	_ZN8Platform22softwareResetDebugInfoE, %object
 9867              		.size	_ZN8Platform22softwareResetDebugInfoE, 1
 9868              	_ZN8Platform22softwareResetDebugInfoE:
 9869 0000 00       		.space	1
 9870              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 9871              		.align	2
 9872              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 9873              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 9874              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 9875 0000 00000000 		.space	4
 9876              		.section	.rodata.CSWTCH.455,"a",%progbits
 9877              		.align	2
 9878              		.set	.LANCHOR7,. + 0
 9879              		.type	CSWTCH.455, %object
 9880              		.size	CSWTCH.455, 16
 9881              	CSWTCH.455:
 9882 0000 38000000 		.word	.LC125
 9883 0004 50000000 		.word	.LC126
 9884 0008 68000000 		.word	.LC127
 9885 000c 84000000 		.word	.LC128
 9886              		.section	.rodata.CSWTCH.457,"a",%progbits
 9887              		.align	2
 9888              		.set	.LANCHOR8,. + 0
 9889              		.type	CSWTCH.457, %object
 9890              		.size	CSWTCH.457, 16
 9891              	CSWTCH.457:
 9892 0000 00000000 		.word	.LC121
 9893 0004 0C000000 		.word	.LC122
 9894 0008 18000000 		.word	.LC123
 9895 000c 28000000 		.word	.LC124
 9896              		.section	.rodata._ZL11AXIS_MAXIMA,"a",%progbits
 9897              		.align	2
 9898              		.set	.LANCHOR19,. + 0
 9899              		.type	_ZL11AXIS_MAXIMA, %object
 9900              		.size	_ZL11AXIS_MAXIMA, 36
 9901              	_ZL11AXIS_MAXIMA:
 9902 0000 00006643 		.word	1130758144
 9903 0004 00005243 		.word	1129447424
 9904 0008 00004843 		.word	1128792064
 9905 000c 00000000 		.word	0
 9906 0010 00000000 		.word	0
 9907 0014 00000000 		.word	0
 9908 0018 00000000 		.word	0
 9909 001c 00000000 		.word	0
 9910 0020 00000000 		.word	0
 9911              		.section	.rodata._ZL11AXIS_MINIMA,"a",%progbits
 9912              		.align	2
 9913              		.set	.LANCHOR20,. + 0
 9914              		.type	_ZL11AXIS_MINIMA, %object
 9915              		.size	_ZL11AXIS_MINIMA, 36
 9916              	_ZL11AXIS_MINIMA:
 9917 0000 00000000 		.space	36
ARM GAS  /tmp/ccghtDyP.s 			page 175


 9917      00000000 
 9917      00000000 
 9917      00000000 
 9917      00000000 
 9918              		.section	.rodata._ZL11ENABLE_PINS,"a",%progbits
 9919              		.align	2
 9920              		.set	.LANCHOR3,. + 0
 9921              		.type	_ZL11ENABLE_PINS, %object
 9922              		.size	_ZL11ENABLE_PINS, 12
 9923              	_ZL11ENABLE_PINS:
 9924 0000 4E       		.byte	78
 9925 0001 29       		.byte	41
 9926 0002 2A       		.byte	42
 9927 0003 31       		.byte	49
 9928 0004 39       		.byte	57
 9929 0005 57       		.byte	87
 9930 0006 58       		.byte	88
 9931 0007 59       		.byte	89
 9932 0008 5A       		.byte	90
 9933 0009 1F       		.byte	31
 9934 000a 52       		.byte	82
 9935 000b 3C       		.byte	60
 9936              		.section	.rodata._ZL11INSTANT_DVS,"a",%progbits
 9937              		.align	2
 9938              		.set	.LANCHOR18,. + 0
 9939              		.type	_ZL11INSTANT_DVS, %object
 9940              		.size	_ZL11INSTANT_DVS, 48
 9941              	_ZL11INSTANT_DVS:
 9942 0000 00007041 		.word	1097859072
 9943 0004 00007041 		.word	1097859072
 9944 0008 CDCC4C3E 		.word	1045220557
 9945 000c 00000040 		.word	1073741824
 9946 0010 00000040 		.word	1073741824
 9947 0014 00000040 		.word	1073741824
 9948 0018 00000040 		.word	1073741824
 9949 001c 00000040 		.word	1073741824
 9950 0020 00000040 		.word	1073741824
 9951 0024 00000040 		.word	1073741824
 9952 0028 00000040 		.word	1073741824
 9953 002c 00000040 		.word	1073741824
 9954              		.section	.rodata._ZL12HEAT_ON_PINS,"a",%progbits
 9955              		.align	2
 9956              		.set	.LANCHOR22,. + 0
 9957              		.type	_ZL12HEAT_ON_PINS, %object
 9958              		.size	_ZL12HEAT_ON_PINS, 8
 9959              	_ZL12HEAT_ON_PINS:
 9960 0000 13       		.byte	19
 9961 0001 14       		.byte	20
 9962 0002 10       		.byte	16
 9963 0003 23       		.byte	35
 9964 0004 25       		.byte	37
 9965 0005 28       		.byte	40
 9966 0006 2B       		.byte	43
 9967 0007 0F       		.byte	15
 9968              		.section	.rodata._ZL13ACCELERATIONS,"a",%progbits
 9969              		.align	2
 9970              		.set	.LANCHOR16,. + 0
ARM GAS  /tmp/ccghtDyP.s 			page 176


 9971              		.type	_ZL13ACCELERATIONS, %object
 9972              		.size	_ZL13ACCELERATIONS, 48
 9973              	_ZL13ACCELERATIONS:
 9974 0000 0000FA43 		.word	1140457472
 9975 0004 0000FA43 		.word	1140457472
 9976 0008 0000A041 		.word	1101004800
 9977 000c 00007A43 		.word	1132068864
 9978 0010 00007A43 		.word	1132068864
 9979 0014 00007A43 		.word	1132068864
 9980 0018 00007A43 		.word	1132068864
 9981 001c 00007A43 		.word	1132068864
 9982 0020 00007A43 		.word	1132068864
 9983 0024 00007A43 		.word	1132068864
 9984 0028 00007A43 		.word	1132068864
 9985 002c 00007A43 		.word	1132068864
 9986              		.section	.rodata._ZL13END_STOP_PINS,"a",%progbits
 9987              		.align	2
 9988              		.set	.LANCHOR14,. + 0
 9989              		.type	_ZL13END_STOP_PINS, %object
 9990              		.size	_ZL13END_STOP_PINS, 12
 9991              	_ZL13END_STOP_PINS:
 9992 0000 2E       		.byte	46
 9993 0001 02       		.byte	2
 9994 0002 5D       		.byte	93
 9995 0003 4A       		.byte	74
 9996 0004 30       		.byte	48
 9997 0005 60       		.byte	96
 9998 0006 61       		.byte	97
 9999 0007 62       		.byte	98
 10000 0008 63       		.byte	99
 10001 0009 11       		.byte	17
 10002 000a 27       		.byte	39
 10003 000b 08       		.byte	8
 10004              		.section	.rodata._ZL13MAX_FEEDRATES,"a",%progbits
 10005              		.align	2
 10006              		.set	.LANCHOR15,. + 0
 10007              		.type	_ZL13MAX_FEEDRATES, %object
 10008              		.size	_ZL13MAX_FEEDRATES, 48
 10009              	_ZL13MAX_FEEDRATES:
 10010 0000 0000C842 		.word	1120403456
 10011 0004 0000C842 		.word	1120403456
 10012 0008 00004040 		.word	1077936128
 10013 000c 0000A041 		.word	1101004800
 10014 0010 0000A041 		.word	1101004800
 10015 0014 0000A041 		.word	1101004800
 10016 0018 0000A041 		.word	1101004800
 10017 001c 0000A041 		.word	1101004800
 10018 0020 0000A041 		.word	1101004800
 10019 0024 0000A041 		.word	1101004800
 10020 0028 0000A041 		.word	1101004800
 10021 002c 0000A041 		.word	1101004800
 10022              		.section	.rodata._ZL13SpecialPinMap,"a",%progbits
 10023              		.align	2
 10024              		.set	.LANCHOR9,. + 0
 10025              		.type	_ZL13SpecialPinMap, %object
 10026              		.size	_ZL13SpecialPinMap, 5
 10027              	_ZL13SpecialPinMap:
ARM GAS  /tmp/ccghtDyP.s 			page 177


 10028 0000 18       		.byte	24
 10029 0001 61       		.byte	97
 10030 0002 62       		.byte	98
 10031 0003 63       		.byte	99
 10032 0004 07       		.byte	7
 10033              		.section	.rodata._ZL14DIRECTION_PINS,"a",%progbits
 10034              		.align	2
 10035              		.set	.LANCHOR5,. + 0
 10036              		.type	_ZL14DIRECTION_PINS, %object
 10037              		.size	_ZL14DIRECTION_PINS, 12
 10038              	_ZL14DIRECTION_PINS:
 10039 0000 4B       		.byte	75
 10040 0001 4C       		.byte	76
 10041 0002 4D       		.byte	77
 10042 0003 01       		.byte	1
 10043 0004 49       		.byte	73
 10044 0005 5C       		.byte	92
 10045 0006 56       		.byte	86
 10046 0007 50       		.byte	80
 10047 0008 51       		.byte	81
 10048 0009 20       		.byte	32
 10049 000a 53       		.byte	83
 10050 000b 19       		.byte	25
 10051              		.section	.rodata._ZL14DefaultNetMask,"a",%progbits
 10052              		.align	2
 10053              		.set	.LANCHOR12,. + 0
 10054              		.type	_ZL14DefaultNetMask, %object
 10055              		.size	_ZL14DefaultNetMask, 4
 10056              	_ZL14DefaultNetMask:
 10057 0000 FF       		.byte	-1
 10058 0001 FF       		.byte	-1
 10059 0002 FF       		.byte	-1
 10060 0003 00       		.byte	0
 10061              		.section	.rodata._ZL15DueX5GpioPinMap,"a",%progbits
 10062              		.align	2
 10063              		.set	.LANCHOR10,. + 0
 10064              		.type	_ZL15DueX5GpioPinMap, %object
 10065              		.size	_ZL15DueX5GpioPinMap, 4
 10066              	_ZL15DueX5GpioPinMap:
 10067 0000 D3       		.byte	-45
 10068 0001 D2       		.byte	-46
 10069 0002 D1       		.byte	-47
 10070 0003 D0       		.byte	-48
 10071              		.section	.rodata._ZL15TEMP_SENSE_PINS,"a",%progbits
 10072              		.align	2
 10073              		.set	.LANCHOR21,. + 0
 10074              		.type	_ZL15TEMP_SENSE_PINS, %object
 10075              		.size	_ZL15TEMP_SENSE_PINS, 8
 10076              	_ZL15TEMP_SENSE_PINS:
 10077 0000 2D       		.byte	45
 10078 0001 2F       		.byte	47
 10079 0002 2C       		.byte	44
 10080 0003 3D       		.byte	61
 10081 0004 3E       		.byte	62
 10082 0005 3F       		.byte	63
 10083 0006 3B       		.byte	59
 10084 0007 12       		.byte	18
ARM GAS  /tmp/ccghtDyP.s 			page 178


 10085              		.section	.rodata._ZL16COOLING_FAN_PINS,"a",%progbits
 10086              		.align	2
 10087              		.set	.LANCHOR6,. + 0
 10088              		.type	_ZL16COOLING_FAN_PINS, %object
 10089              		.size	_ZL16COOLING_FAN_PINS, 9
 10090              	_ZL16COOLING_FAN_PINS:
 10091 0000 37       		.byte	55
 10092 0001 3A       		.byte	58
 10093 0002 00       		.byte	0
 10094 0003 D4       		.byte	-44
 10095 0004 CF       		.byte	-49
 10096 0005 CE       		.byte	-50
 10097 0006 CD       		.byte	-51
 10098 0007 CC       		.byte	-52
 10099 0008 D7       		.byte	-41
 10100              		.section	.rodata._ZL16DefaultIpAddress,"a",%progbits
 10101              		.align	2
 10102              		.set	.LANCHOR11,. + 0
 10103              		.type	_ZL16DefaultIpAddress, %object
 10104              		.size	_ZL16DefaultIpAddress, 4
 10105              	_ZL16DefaultIpAddress:
 10106 0000 00000000 		.space	4
 10107              		.section	.rodata._ZL17DefaultBedHeaters,"a",%progbits
 10108              		.align	2
 10109              		.set	.LANCHOR24,. + 0
 10110              		.type	_ZL17DefaultBedHeaters, %object
 10111              		.size	_ZL17DefaultBedHeaters, 4
 10112              	_ZL17DefaultBedHeaters:
 10113 0000 00       		.byte	0
 10114 0001 FF       		.byte	-1
 10115 0002 FF       		.byte	-1
 10116 0003 FF       		.byte	-1
 10117              		.section	.rodata._ZL17DefaultMacAddress,"a",%progbits
 10118              		.align	2
 10119              		.set	.LANCHOR13,. + 0
 10120              		.type	_ZL17DefaultMacAddress, %object
 10121              		.size	_ZL17DefaultMacAddress, 6
 10122              	_ZL17DefaultMacAddress:
 10123 0000 BE       		.byte	-66
 10124 0001 EF       		.byte	-17
 10125 0002 DE       		.byte	-34
 10126 0003 AD       		.byte	-83
 10127 0004 FE       		.byte	-2
 10128 0005 ED       		.byte	-19
 10129              		.section	.rodata._ZL19SpiTempSensorCsPins,"a",%progbits
 10130              		.align	2
 10131              		.set	.LANCHOR23,. + 0
 10132              		.type	_ZL19SpiTempSensorCsPins, %object
 10133              		.size	_ZL19SpiTempSensorCsPins, 8
 10134              	_ZL19SpiTempSensorCsPins:
 10135 0000 1C       		.byte	28
 10136 0001 32       		.byte	50
 10137 0002 33       		.byte	51
 10138 0003 34       		.byte	52
 10139 0004 18       		.byte	24
 10140 0005 61       		.byte	97
 10141 0006 62       		.byte	98
ARM GAS  /tmp/ccghtDyP.s 			page 179


 10142 0007 63       		.byte	99
 10143              		.section	.rodata._ZL20DRIVE_STEPS_PER_UNIT,"a",%progbits
 10144              		.align	2
 10145              		.set	.LANCHOR17,. + 0
 10146              		.type	_ZL20DRIVE_STEPS_PER_UNIT, %object
 10147              		.size	_ZL20DRIVE_STEPS_PER_UNIT, 48
 10148              	_ZL20DRIVE_STEPS_PER_UNIT:
 10149 0000 5EFAAE42 		.word	1118763614
 10150 0004 5EFAAE42 		.word	1118763614
 10151 0008 00007A45 		.word	1165623296
 10152 000c 0000D243 		.word	1137836032
 10153 0010 0000D243 		.word	1137836032
 10154 0014 0000D243 		.word	1137836032
 10155 0018 0000D243 		.word	1137836032
 10156 001c 0000D243 		.word	1137836032
 10157 0020 0000D243 		.word	1137836032
 10158 0024 0000D243 		.word	1137836032
 10159 0028 0000D243 		.word	1137836032
 10160 002c 0000D243 		.word	1137836032
 10161              		.section	.rodata._ZL9STEP_PINS,"a",%progbits
 10162              		.align	2
 10163              		.set	.LANCHOR4,. + 0
 10164              		.type	_ZL9STEP_PINS, %object
 10165              		.size	_ZL9STEP_PINS, 12
 10166              	_ZL9STEP_PINS:
 10167 0000 46       		.byte	70
 10168 0001 47       		.byte	71
 10169 0002 48       		.byte	72
 10170 0003 45       		.byte	69
 10171 0004 44       		.byte	68
 10172 0005 42       		.byte	66
 10173 0006 41       		.byte	65
 10174 0007 40       		.byte	64
 10175 0008 43       		.byte	67
 10176 0009 5B       		.byte	91
 10177 000a 54       		.byte	84
 10178 000b 55       		.byte	85
 10179              		.section	.rodata._ZN8Platform11AtxPowerOffEb.part.26.str1.4,"aMS",%progbits,1
 10180              		.align	2
 10181              	.LC7:
 10182 0000 506F7765 		.ascii	"Power off commanded\000"
 10182      72206F66 
 10182      6620636F 
 10182      6D6D616E 
 10182      64656400 
 10183              		.section	.rodata._ZN8Platform11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 10184              		.align	2
 10185              	.LC48:
 10186 0000 4E4D4900 		.ascii	"NMI\000"
 10187              	.LC49:
 10188 0004 55736572 		.ascii	"User\000"
 10188      00
 10189 0009 000000   		.space	3
 10190              	.LC50:
 10191 000c 48617264 		.ascii	"Hard fault\000"
 10191      20666175 
 10191      6C7400
ARM GAS  /tmp/ccghtDyP.s 			page 180


 10192 0017 00       		.space	1
 10193              	.LC51:
 10194 0018 53747563 		.ascii	"Stuck in spin loop\000"
 10194      6B20696E 
 10194      20737069 
 10194      6E206C6F 
 10194      6F7000
 10195 002b 00       		.space	1
 10196              	.LC52:
 10197 002c 57617463 		.ascii	"Watchdog timeout\000"
 10197      68646F67 
 10197      2074696D 
 10197      656F7574 
 10197      00
 10198 003d 000000   		.space	3
 10199              	.LC53:
 10200 0040 4F746865 		.ascii	"Other fault\000"
 10200      72206661 
 10200      756C7400 
 10201              	.LC54:
 10202 004c 53746163 		.ascii	"Stack overflow\000"
 10202      6B206F76 
 10202      6572666C 
 10202      6F7700
 10203 005b 00       		.space	1
 10204              	.LC55:
 10205 005c 556E6B6E 		.ascii	"Unknown\000"
 10205      6F776E00 
 10206              	.LC56:
 10207 0064 41737365 		.ascii	"Assertion failed\000"
 10207      7274696F 
 10207      6E206661 
 10207      696C6564 
 10207      00
 10208 0075 000000   		.space	3
 10209              	.LC57:
 10210 0078 64656C69 		.ascii	"deliberate \000"
 10210      62657261 
 10210      74652000 
 10211              	.LC58:
 10212 0084 00       		.ascii	"\000"
 10213 0085 000000   		.space	3
 10214              	.LC59:
 10215 0088 64657465 		.ascii	"detected\000"
 10215      63746564 
 10215      00
 10216 0091 000000   		.space	3
 10217              	.LC60:
 10218 0094 6E6F7420 		.ascii	"not detected\000"
 10218      64657465 
 10218      63746564 
 10218      00
 10219 00a1 000000   		.space	3
 10220              	.LC61:
 10221 00a4 79657300 		.ascii	"yes\000"
 10222              	.LC62:
 10223 00a8 6E6F00   		.ascii	"no\000"
ARM GAS  /tmp/ccghtDyP.s 			page 181


 10224 00ab 00       		.space	1
 10225              	.LC63:
 10226 00ac 3D3D3D20 		.ascii	"=== Platform ===\012\000"
 10226      506C6174 
 10226      666F726D 
 10226      203D3D3D 
 10226      0A00
 10227 00be 0000     		.space	2
 10228              	.LC65:
 10229 00c0 4C617374 		.ascii	"Last reset %02d:%02d:%02d ago, cause: %s\012\000"
 10229      20726573 
 10229      65742025 
 10229      3032643A 
 10229      25303264 
 10230 00ea 0000     		.space	2
 10231              	.LC66:
 10232 00ec 61742025 		.ascii	"at %04u-%02u-%02u %02u:%02u\000"
 10232      3034752D 
 10232      25303275 
 10232      2D253032 
 10232      75202530 
 10233              	.LC67:
 10234 0108 74696D65 		.ascii	"time unknown\000"
 10234      20756E6B 
 10234      6E6F776E 
 10234      00
 10235 0115 000000   		.space	3
 10236              	.LC68:
 10237 0118 4C617374 		.ascii	"Last software reset %s, reason: %s%s, spinning modu"
 10237      20736F66 
 10237      74776172 
 10237      65207265 
 10237      73657420 
 10238 014b 6C652025 		.ascii	"le %s, available RAM %lu bytes (slot %d)\012\000"
 10238      732C2061 
 10238      7661696C 
 10238      61626C65 
 10238      2052414D 
 10239 0175 000000   		.space	3
 10240              	.LC69:
 10241 0178 536F6674 		.ascii	"Software reset code 0x%04x HFSR 0x%08lx, CFSR 0x%08"
 10241      77617265 
 10241      20726573 
 10241      65742063 
 10241      6F646520 
 10242 01ab 6C782C20 		.ascii	"lx, ICSR 0x%08lx, BFAR 0x%08lx, SP 0x%08lx\012\000"
 10242      49435352 
 10242      20307825 
 10242      30386C78 
 10242      2C204246 
 10243 01d7 00       		.space	1
 10244              	.LC70:
 10245 01d8 20253038 		.ascii	" %08lx\000"
 10245      6C7800
 10246 01df 00       		.space	1
 10247              	.LC71:
 10248 01e0 53746163 		.ascii	"Stack:%s\012\000"
ARM GAS  /tmp/ccghtDyP.s 			page 182


 10248      6B3A2573 
 10248      0A00
 10249 01ea 0000     		.space	2
 10250              	.LC72:
 10251 01ec 4C617374 		.ascii	"Last software reset details not available\012\000"
 10251      20736F66 
 10251      74776172 
 10251      65207265 
 10251      73657420 
 10252 0217 00       		.space	1
 10253              	.LC73:
 10254 0218 4572726F 		.ascii	"Error status: %lu\012\000"
 10254      72207374 
 10254      61747573 
 10254      3A20256C 
 10254      750A00
 10255 022b 00       		.space	1
 10256              	.LC74:
 10257 022c 46726565 		.ascii	"Free file entries: %u\012\000"
 10257      2066696C 
 10257      6520656E 
 10257      74726965 
 10257      733A2025 
 10258 0243 00       		.space	1
 10259              	.LC75:
 10260 0244 53442063 		.ascii	"SD card 0 %s, interface speed: %.1fMBytes/sec\012\000"
 10260      61726420 
 10260      30202573 
 10260      2C20696E 
 10260      74657266 
 10261 0273 00       		.space	1
 10262              	.LC76:
 10263 0274 53442063 		.ascii	"SD card longest block write time: %.1fms\012\000"
 10263      61726420 
 10263      6C6F6E67 
 10263      65737420 
 10263      626C6F63 
 10264 029e 0000     		.space	2
 10265              	.LC77:
 10266 02a0 4D435520 		.ascii	"MCU temperature: min %.1f, current %.1f, max %.1f\012"
 10266      74656D70 
 10266      65726174 
 10266      7572653A 
 10266      206D696E 
 10267 02d2 00       		.ascii	"\000"
 10268 02d3 00       		.space	1
 10269              	.LC78:
 10270 02d4 53757070 		.ascii	"Supply voltage: min %.1f, current %.1f, max %.1f, u"
 10270      6C792076 
 10270      6F6C7461 
 10270      67653A20 
 10270      6D696E20 
 10271 0307 6E646572 		.ascii	"nder voltage events: %lu, over voltage events: %lu\012"
 10271      20766F6C 
 10271      74616765 
 10271      20657665 
 10271      6E74733A 
ARM GAS  /tmp/ccghtDyP.s 			page 183


 10272 033a 00       		.ascii	"\000"
 10273 033b 00       		.space	1
 10274              	.LC79:
 10275 033c 44726976 		.ascii	"Driver %u:%s\012\000"
 10275      65722025 
 10275      753A2573 
 10275      0A00
 10276 034a 0000     		.space	2
 10277              	.LC80:
 10278 034c 45787061 		.ascii	"Expansion motor(s) stall indication: %s\012\000"
 10278      6E73696F 
 10278      6E206D6F 
 10278      746F7228 
 10278      73292073 
 10279 0375 000000   		.space	3
 10280              	.LC81:
 10281 0378 44617465 		.ascii	"Date/time: \000"
 10281      2F74696D 
 10281      653A2000 
 10282              	.LC82:
 10283 0384 25303475 		.ascii	"%04u-%02u-%02u %02u:%02u:%02u\012\000"
 10283      2D253032 
 10283      752D2530 
 10283      32752025 
 10283      3032753A 
 10284 03a3 00       		.space	1
 10285              	.LC83:
 10286 03a4 6E6F7420 		.ascii	"not set\012\000"
 10286      7365740A 
 10286      00
 10287              		.section	.rodata._ZN8Platform11SetDateTimeEx.str1.4,"aMS",%progbits,1
 10288              		.align	2
 10289              	.LC46:
 10290 0000 44617465 		.ascii	"Date and time set at power up + %02lu:%02lu:%02lu\012"
 10290      20616E64 
 10290      2074696D 
 10290      65207365 
 10290      74206174 
 10291 0032 00       		.ascii	"\000"
 10292              		.section	.rodata._ZN8Platform12ConfigureFanEjiR11GCodeBufferRK9StringRefRb.str1.4,"aMS",%progbits,
 10293              		.align	2
 10294              	.LC16:
 10295 0000 46616E20 		.ascii	"Fan number %d is invalid, must be between 0 and %u\000"
 10295      6E756D62 
 10295      65722025 
 10295      64206973 
 10295      20696E76 
 10296              		.section	.rodata._ZN8Platform12SetEmulatingE13Compatibility.str1.4,"aMS",%progbits,1
 10297              		.align	2
 10298              	.LC47:
 10299 0000 41747465 		.ascii	"Attempt to emulate unsupported firmware.\012\000"
 10299      6D707420 
 10299      746F2065 
 10299      6D756C61 
 10299      74652075 
 10300              		.section	.rodata._ZN8Platform13PrintUniqueIdE11MessageType.str1.4,"aMS",%progbits,1
 10301              		.align	2
ARM GAS  /tmp/ccghtDyP.s 			page 184


 10302              	.LC45:
 10303 0000 426F6172 		.ascii	"Board ID: %s\012\000"
 10303      64204944 
 10303      3A202573 
 10303      0A00
 10304              		.section	.rodata._ZN8Platform13ProgramZProbeER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 10305              		.align	2
 10306              	.LC8:
 10307 0000 4F757420 		.ascii	"Out of range value in program bytes\000"
 10307      6F662072 
 10307      616E6765 
 10307      2076616C 
 10307      75652069 
 10308              	.LC9:
 10309 0024 4E6F2070 		.ascii	"No program bytes provided\000"
 10309      726F6772 
 10309      616D2062 
 10309      79746573 
 10309      2070726F 
 10310              		.section	.rodata._ZN8Platform13ReportDriversE11MessageTypemPKcRb.part.30.str1.4,"aMS",%progbits,1
 10311              		.align	2
 10312              	.LC42:
 10313 0000 2573206F 		.ascii	"%s on drivers\000"
 10313      6E206472 
 10313      69766572 
 10313      7300
 10314 000e 0000     		.space	2
 10315              	.LC43:
 10316 0010 20257500 		.ascii	" %u\000"
 10317              	.LC44:
 10318 0014 25730A00 		.ascii	"%s\012\000"
 10319              		.section	.rodata._ZN8Platform14DiagnosticTestER11GCodeBufferRK9StringRefi.str1.4,"aMS",%progbits,1
 10320              		.align	2
 10321              	.LC84:
 10322 0000 6F6B00   		.ascii	"ok\000"
 10323 0003 00       		.space	1
 10324              	.LC85:
 10325 0004 4552524F 		.ascii	"ERROR\000"
 10325      5200
 10326 000a 0000     		.space	2
 10327              	.LC86:
 10328 000c 53442063 		.ascii	"SD card 0 not detected\012\000"
 10328      61726420 
 10328      30206E6F 
 10328      74206465 
 10328      74656374 
 10329              	.LC87:
 10330 0024 53442063 		.ascii	"SD card speed %.2fMbytes/sec is unexpected\012\000"
 10330      61726420 
 10330      73706565 
 10330      6420252E 
 10330      32664D62 
 10331              	.LC88:
 10332 0050 53442063 		.ascii	"SD card interface OK\012\000"
 10332      61726420 
 10332      696E7465 
 10332      72666163 
ARM GAS  /tmp/ccghtDyP.s 			page 185


 10332      65204F4B 
 10333 0066 0000     		.space	2
 10334              	.LC89:
 10335 0068 4D697373 		.ascii	"Missing T parameter\000"
 10335      696E6720 
 10335      54207061 
 10335      72616D65 
 10335      74657200 
 10336              	.LC90:
 10337 007c 4D435520 		.ascii	"MCU temperature %.1f is lower than expected\012\000"
 10337      74656D70 
 10337      65726174 
 10337      75726520 
 10337      252E3166 
 10338 00a9 000000   		.space	3
 10339              	.LC91:
 10340 00ac 4D435520 		.ascii	"MCU temperature %.1f is higher than expected\012\000"
 10340      74656D70 
 10340      65726174 
 10340      75726520 
 10340      252E3166 
 10341 00da 0000     		.space	2
 10342              	.LC92:
 10343 00dc 4D435520 		.ascii	"MCU temperature reading OK\012\000"
 10343      74656D70 
 10343      65726174 
 10343      75726520 
 10343      72656164 
 10344              	.LC93:
 10345 00f8 4D697373 		.ascii	"Missing V parameter\000"
 10345      696E6720 
 10345      56207061 
 10345      72616D65 
 10345      74657200 
 10346              	.LC94:
 10347 010c 566F6C74 		.ascii	"Voltage reading %.1f is lower than expected\012\000"
 10347      61676520 
 10347      72656164 
 10347      696E6720 
 10347      252E3166 
 10348 0139 000000   		.space	3
 10349              	.LC95:
 10350 013c 44726976 		.ascii	"Driver status OK\012\000"
 10350      65722073 
 10350      74617475 
 10350      73204F4B 
 10350      0A00
 10351 014e 0000     		.space	2
 10352              	.LC96:
 10353 0150 566F6C74 		.ascii	"Voltage reading %.1f is higher than expected\012\000"
 10353      61676520 
 10353      72656164 
 10353      696E6720 
 10353      252E3166 
 10354 017e 0000     		.space	2
 10355              	.LC97:
 10356 0180 566F6C74 		.ascii	"Voltage reading OK\012\000"
ARM GAS  /tmp/ccghtDyP.s 			page 186


 10356      61676520 
 10356      72656164 
 10356      696E6720 
 10356      4F4B0A00 
 10357              	.LC98:
 10358 0194 44726976 		.ascii	"Driver %u reports over temperature\012\000"
 10358      65722025 
 10358      75207265 
 10358      706F7274 
 10358      73206F76 
 10359              	.LC99:
 10360 01b8 44726976 		.ascii	"Driver %u reports short-to-ground\012\000"
 10360      65722025 
 10360      75207265 
 10360      706F7274 
 10360      73207368 
 10361 01db 00       		.space	1
 10362              	.LC100:
 10363 01dc 416C6C20 		.ascii	"All checks passed\012\000"
 10363      63686563 
 10363      6B732070 
 10363      61737365 
 10363      640A00
 10364 01ef 00       		.space	1
 10365              	.LC101:
 10366 01f0 2A2A2A2A 		.ascii	"***** ONE OR MORE CHECKS FAILED *****\012\000"
 10366      2A204F4E 
 10366      45204F52 
 10366      204D4F52 
 10366      45204348 
 10367 0217 00       		.space	1
 10368              	.LC102:
 10369 0218 44696167 		.ascii	"Diagnostic Test\012\000"
 10369      6E6F7374 
 10369      69632054 
 10369      6573740A 
 10369      00
 10370 0229 000000   		.space	3
 10371              	.LC103:
 10372 022c 53717561 		.ascii	"Square roots: 62-bit %.2fus %s, 32-bit %.2fus %s\012"
 10372      72652072 
 10372      6F6F7473 
 10372      3A203632 
 10372      2D626974 
 10373 025d 00       		.ascii	"\000"
 10374 025e 0000     		.space	2
 10375              	.LC104:
 10376 0260 45787061 		.ascii	"Expander status %04X\012\000"
 10376      6E646572 
 10376      20737461 
 10376      74757320 
 10376      25303458 
 10377              		.section	.rodata._ZN8Platform14SendAuxMessageEPKc.str1.4,"aMS",%progbits,1
 10378              		.align	2
 10379              	.LC37:
 10380 0000 7B226D65 		.ascii	"{\"message\":\000"
 10380      73736167 
ARM GAS  /tmp/ccghtDyP.s 			page 187


 10380      65223A00 
 10381              	.LC38:
 10382 000c 7D0A00   		.ascii	"}\012\000"
 10383              		.section	.rodata._ZN8Platform14UpdateFirmwareEv.str1.4,"aMS",%progbits,1
 10384              		.align	2
 10385              	.LC108:
 10386 0000 49415020 		.ascii	"IAP not found\012\000"
 10386      6E6F7420 
 10386      666F756E 
 10386      640A00
 10387 000f 00       		.space	1
 10388              	.LC109:
 10389 0010 666C6173 		.ascii	"flash write failed, code=%lu, address=0x%08lx\012\000"
 10389      68207772 
 10389      69746520 
 10389      6661696C 
 10389      65642C20 
 10390 003f 00       		.space	1
 10391              	.LC110:
 10392 0040 76657269 		.ascii	"verify during flash write failed, address=0x%08lx\012"
 10392      66792064 
 10392      7572696E 
 10392      6720666C 
 10392      61736820 
 10393 0072 00       		.ascii	"\000"
 10394 0073 00       		.space	1
 10395              	.LC111:
 10396 0074 55706461 		.ascii	"Updating main firmware\012\000"
 10396      74696E67 
 10396      206D6169 
 10396      6E206669 
 10396      726D7761 
 10397              	.LC112:
 10398 008c 53687574 		.ascii	"Shutting down USB interface to update main firmware"
 10398      74696E67 
 10398      20646F77 
 10398      6E205553 
 10398      4220696E 
 10399 00bf 2E205472 		.ascii	". Try reconnecting after 30 seconds.\012\000"
 10399      79207265 
 10399      636F6E6E 
 10399      65637469 
 10399      6E672061 
 10400 00e5 000000   		.space	3
 10401              	.LC113:
 10402 00e8 303A2F73 		.ascii	"0:/sys/Duet2CombinedFirmware.bin\000"
 10402      79732F44 
 10402      75657432 
 10402      436F6D62 
 10402      696E6564 
 10403              		.section	.rodata._ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi.part.28.str1.4,"aMS",%progbits,1
 10404              		.align	2
 10405              	.LC31:
 10406 0000 4D323038 		.ascii	"M208 S%d\000"
 10406      20532564 
 10406      00
 10407 0009 000000   		.space	3
ARM GAS  /tmp/ccghtDyP.s 			page 188


 10408              	.LC32:
 10409 000c 20256325 		.ascii	" %c%.2f\000"
 10409      2E326600 
 10410              		.section	.rodata._ZN8Platform16ConfigureLoggingER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,
 10411              		.align	2
 10412              	.LC17:
 10413 0000 656E6162 		.ascii	"enabled\000"
 10413      6C656400 
 10414              	.LC18:
 10415 0008 64697361 		.ascii	"disabled\000"
 10415      626C6564 
 10415      00
 10416 0011 000000   		.space	3
 10417              	.LC19:
 10418 0014 4D697373 		.ascii	"Missing filename in M929 command\000"
 10418      696E6720 
 10418      66696C65 
 10418      6E616D65 
 10418      20696E20 
 10419 0035 000000   		.space	3
 10420              	.LC20:
 10421 0038 6576656E 		.ascii	"eventlog.txt\000"
 10421      746C6F67 
 10421      2E747874 
 10421      00
 10422 0045 000000   		.space	3
 10423              	.LC21:
 10424 0048 4576656E 		.ascii	"Event logging is %s\000"
 10424      74206C6F 
 10424      6767696E 
 10424      67206973 
 10424      20257300 
 10425              		.section	.rodata._ZN8Platform23ConfigureStallDetectionER11GCodeBufferRK9StringRef.str1.4,"aMS",%pr
 10426              		.align	2
 10427              	.LC24:
 10428 0000 7265686F 		.ascii	"rehome\000"
 10428      6D6500
 10429 0007 00       		.space	1
 10430              	.LC25:
 10431 0008 6E6F6E65 		.ascii	"none\000"
 10431      00
 10432 000d 000000   		.space	3
 10433              	.LC26:
 10434 0010 70617573 		.ascii	"pause\000"
 10434      6500
 10435 0016 0000     		.space	2
 10436              	.LC27:
 10437 0018 6C6F6700 		.ascii	"log\000"
 10438              	.LC28:
 10439 001c 496E7661 		.ascii	"Invalid drive number '%lu'\000"
 10439      6C696420 
 10439      64726976 
 10439      65206E75 
 10439      6D626572 
 10440 0037 00       		.space	1
 10441              	.LC29:
 10442 0038 44726976 		.ascii	"Driver %u: \000"
ARM GAS  /tmp/ccghtDyP.s 			page 189


 10442      65722025 
 10442      753A2000 
 10443              	.LC30:
 10444 0044 2C206163 		.ascii	", action: %s\000"
 10444      74696F6E 
 10444      3A202573 
 10444      00
 10445              		.section	.rodata._ZN8Platform32CheckFirmwareUpdatePrerequisitesERK9StringRef.str1.4,"aMS",%progbit
 10446              		.align	2
 10447              	.LC10:
 10448 0000 44756574 		.ascii	"Duet2CombinedFirmware.bin\000"
 10448      32436F6D 
 10448      62696E65 
 10448      64466972 
 10448      6D776172 
 10449 001a 0000     		.space	2
 10450              	.LC11:
 10451 001c 303A2F73 		.ascii	"0:/sys/\000"
 10451      79732F00 
 10452              	.LC12:
 10453 0024 4669726D 		.ascii	"Firmware binary \"%s\" not found\000"
 10453      77617265 
 10453      2062696E 
 10453      61727920 
 10453      22257322 
 10454 0043 00       		.space	1
 10455              	.LC13:
 10456 0044 4669726D 		.ascii	"Firmware binary \"%s\" is not valid for this electr"
 10456      77617265 
 10456      2062696E 
 10456      61727920 
 10456      22257322 
 10457 0075 6F6E6963 		.ascii	"onics\000"
 10457      7300
 10458 007b 00       		.space	1
 10459              	.LC14:
 10460 007c 69617034 		.ascii	"iap4e.bin\000"
 10460      652E6269 
 10460      6E00
 10461 0086 0000     		.space	2
 10462              	.LC15:
 10463 0088 496E2D61 		.ascii	"In-application programming binary \"%s\" not found\000"
 10463      70706C69 
 10463      63617469 
 10463      6F6E2070 
 10463      726F6772 
 10464              		.section	.rodata._ZN8Platform4BeepEii.str1.4,"aMS",%progbits,1
 10465              		.align	2
 10466              	.LC41:
 10467 0000 7B226265 		.ascii	"{\"beep_freq\":%d,\"beep_length\":%d}\012\000"
 10467      65705F66 
 10467      72657122 
 10467      3A25642C 
 10467      22626565 
 10468              		.section	.rodata._ZN8Platform4InitEv.str1.4,"aMS",%progbits,1
 10469              		.align	2
 10470              	.LC35:
ARM GAS  /tmp/ccghtDyP.s 			page 190


 10471 0000 55534200 		.ascii	"USB\000"
 10472              	.LC36:
 10473 0004 41757800 		.ascii	"Aux\000"
 10474              		.section	.rodata._ZN8Platform4SpinEv.str1.4,"aMS",%progbits,1
 10475              		.align	2
 10476              	.LC114:
 10477 0000 73686F72 		.ascii	"short-to-ground\000"
 10477      742D746F 
 10477      2D67726F 
 10477      756E6400 
 10478              	.LC115:
 10479 0010 6F766572 		.ascii	"over temperature shutdown\000"
 10479      2074656D 
 10479      70657261 
 10479      74757265 
 10479      20736875 
 10480 002a 0000     		.space	2
 10481              	.LC116:
 10482 002c 68696768 		.ascii	"high temperature\000"
 10482      2074656D 
 10482      70657261 
 10482      74757265 
 10482      00
 10483 003d 000000   		.space	3
 10484              	.LC117:
 10485 0040 44726976 		.ascii	"Driver(s)%s stalled at Z height %.2f\000"
 10485      65722873 
 10485      29257320 
 10485      7374616C 
 10485      6C656420 
 10486 0065 000000   		.space	3
 10487              	.LC118:
 10488 0068 56494E20 		.ascii	"VIN over-voltage event (%.1fV)\000"
 10488      6F766572 
 10488      2D766F6C 
 10488      74616765 
 10488      20657665 
 10489 0087 00       		.space	1
 10490              	.LC119:
 10491 0088 56494E20 		.ascii	"VIN under-voltage event (%.1fV)\000"
 10491      756E6465 
 10491      722D766F 
 10491      6C746167 
 10491      65206576 
 10492              	.LC120:
 10493 00a8 56535341 		.ascii	"VSSA fault, check thermistor wiring\012\000"
 10493      20666175 
 10493      6C742C20 
 10493      63686563 
 10493      6B207468 
 10494              		.section	.rodata._ZN8Platform8MessageFE11MessageTypePKcSt9__va_list.str1.4,"aMS",%progbits,1
 10495              		.align	2
 10496              	.LC39:
 10497 0000 4572726F 		.ascii	"Error: \000"
 10497      723A2000 
 10498              	.LC40:
 10499 0008 5761726E 		.ascii	"Warning: \000"
ARM GAS  /tmp/ccghtDyP.s 			page 191


 10499      696E673A 
 10499      2000
 10500              		.section	.rodata._ZN8Platform9SendAlertE11MessageTypePKcS2_ifm.str1.4,"aMS",%progbits,1
 10501              		.align	2
 10502              	.LC105:
 10503 0000 2D202573 		.ascii	"- %s -\012\000"
 10503      202D0A00 
 10504              	.LC106:
 10505 0008 53656E64 		.ascii	"Send M292 to continue\012\000"
 10505      204D3239 
 10505      3220746F 
 10505      20636F6E 
 10505      74696E75 
 10506 001f 00       		.space	1
 10507              	.LC107:
 10508 0020 53656E64 		.ascii	"Send M292 to continue or M292 P1 to cancel\012\000"
 10508      204D3239 
 10508      3220746F 
 10508      20636F6E 
 10508      74696E75 
 10509              		.section	.rodata._ZNK8Platform14GetBoardStringEv.str1.4,"aMS",%progbits,1
 10510              		.align	2
 10511              	.LC23:
 10512 0000 756E6B6E 		.ascii	"unknown\000"
 10512      6F776E00 
 10513              		.section	.rodata._ZNK8Platform20GetElectronicsStringEv.str1.4,"aMS",%progbits,1
 10514              		.align	2
 10515              	.LC22:
 10516 0000 556E6964 		.ascii	"Unidentified\000"
 10516      656E7469 
 10516      66696564 
 10516      00
 10517              		.section	.rodata._ZNK8Platform23WritePlatformParametersEP9FileStoreb.str1.4,"aMS",%progbits,1
 10518              		.align	2
 10519              	.LC33:
 10520 0000 3B205072 		.ascii	"; Probed axis limits\012\000"
 10520      6F626564 
 10520      20617869 
 10520      73206C69 
 10520      6D697473 
 10521 0016 0000     		.space	2
 10522              	.LC34:
 10523 0018 3B205A20 		.ascii	"; Z probe parameters\012\000"
 10523      70726F62 
 10523      65207061 
 10523      72616D65 
 10523      74657273 
 10524              		.section	.rodata._ZZN8Platform14DiagnosticTestER11GCodeBufferRK9StringRefiE5dummy,"a",%progbits
 10525              		.align	2
 10526              		.set	.LANCHOR27,. + 0
 10527              		.type	_ZZN8Platform14DiagnosticTestER11GCodeBufferRK9StringRefiE5dummy, %object
 10528              		.size	_ZZN8Platform14DiagnosticTestER11GCodeBufferRK9StringRefiE5dummy, 8
 10529              	_ZZN8Platform14DiagnosticTestER11GCodeBufferRK9StringRefiE5dummy:
 10530 0000 00000000 		.space	8
 10530      00000000 
 10531              		.section	.rodata.str1.4,"aMS",%progbits,1
 10532              		.align	2
ARM GAS  /tmp/ccghtDyP.s 			page 192


 10533              	.LC121:
 10534 0000 64756574 		.ascii	"duetwifi10\000"
 10534      77696669 
 10534      313000
 10535 000b 00       		.space	1
 10536              	.LC122:
 10537 000c 64756574 		.ascii	"duetwifi102\000"
 10537      77696669 
 10537      31303200 
 10538              	.LC123:
 10539 0018 64756574 		.ascii	"duetethernet10\000"
 10539      65746865 
 10539      726E6574 
 10539      313000
 10540 0027 00       		.space	1
 10541              	.LC124:
 10542 0028 64756574 		.ascii	"duetethernet102\000"
 10542      65746865 
 10542      726E6574 
 10542      31303200 
 10543              	.LC125:
 10544 0038 44756574 		.ascii	"Duet WiFi 1.0 or 1.01\000"
 10544      20576946 
 10544      6920312E 
 10544      30206F72 
 10544      20312E30 
 10545 004e 0000     		.space	2
 10546              	.LC126:
 10547 0050 44756574 		.ascii	"Duet WiFi 1.02 or later\000"
 10547      20576946 
 10547      6920312E 
 10547      3032206F 
 10547      72206C61 
 10548              	.LC127:
 10549 0068 44756574 		.ascii	"Duet Ethernet 1.0 or 1.01\000"
 10549      20457468 
 10549      65726E65 
 10549      7420312E 
 10549      30206F72 
 10550 0082 0000     		.space	2
 10551              	.LC128:
 10552 0084 44756574 		.ascii	"Duet Ethernet 1.02 or later\000"
 10552      20457468 
 10552      65726E65 
 10552      7420312E 
 10552      3032206F 
 10553              	.LC0:
 10554 00a0 706F7765 		.ascii	"power up\000"
 10554      72207570 
 10554      00
 10555 00a9 000000   		.space	3
 10556              	.LC1:
 10557 00ac 6261636B 		.ascii	"backup\000"
 10557      757000
 10558 00b3 00       		.space	1
 10559              	.LC2:
 10560 00b4 77617463 		.ascii	"watchdog\000"
ARM GAS  /tmp/ccghtDyP.s 			page 193


 10560      68646F67 
 10560      00
 10561 00bd 000000   		.space	3
 10562              	.LC3:
 10563 00c0 736F6674 		.ascii	"software\000"
 10563      77617265 
 10563      00
 10564 00c9 000000   		.space	3
 10565              	.LC4:
 10566 00cc 72657365 		.ascii	"reset button or watchdog\000"
 10566      74206275 
 10566      74746F6E 
 10566      206F7220 
 10566      77617463 
 10567 00e5 000000   		.space	3
 10568              	.LC5:
 10569 00e8 3F00     		.ascii	"?\000"
 10570              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
