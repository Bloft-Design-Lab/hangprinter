ARM GAS  /tmp/ccEU9qwR.s 			page 1


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
  11              		.file	"GCodeInput.cpp"
  12              		.section	.text._ZN16StreamGCodeInput5ResetEv,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN16StreamGCodeInput5ResetEv
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN16StreamGCodeInput5ResetEv, %function
  21              	_ZN16StreamGCodeInput5ResetEv:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 10B5     		push	{r4, lr}
  25 0002 0446     		mov	r4, r0
  26 0004 03E0     		b	.L3
  27              	.L6:
  28 0006 6068     		ldr	r0, [r4, #4]
  29 0008 0368     		ldr	r3, [r0]
  30 000a 5B69     		ldr	r3, [r3, #20]
  31 000c 9847     		blx	r3
  32              	.L3:
  33 000e 6068     		ldr	r0, [r4, #4]
  34 0010 0368     		ldr	r3, [r0]
  35 0012 1B69     		ldr	r3, [r3, #16]
  36 0014 9847     		blx	r3
  37 0016 0028     		cmp	r0, #0
  38 0018 F5DC     		bgt	.L6
  39 001a 10BD     		pop	{r4, pc}
  40              		.size	_ZN16StreamGCodeInput5ResetEv, .-_ZN16StreamGCodeInput5ResetEv
  41              		.section	.text._ZN16StreamGCodeInput8ReadByteEv,"ax",%progbits
  42              		.align	1
  43              		.p2align 2,,3
  44              		.global	_ZN16StreamGCodeInput8ReadByteEv
  45              		.syntax unified
  46              		.thumb
  47              		.thumb_func
  48              		.fpu softvfp
  49              		.type	_ZN16StreamGCodeInput8ReadByteEv, %function
  50              	_ZN16StreamGCodeInput8ReadByteEv:
  51              		@ args = 0, pretend = 0, frame = 0
  52              		@ frame_needed = 0, uses_anonymous_args = 0
  53 0000 4068     		ldr	r0, [r0, #4]
  54 0002 08B5     		push	{r3, lr}
  55 0004 0368     		ldr	r3, [r0]
  56 0006 5B69     		ldr	r3, [r3, #20]
  57 0008 9847     		blx	r3
ARM GAS  /tmp/ccEU9qwR.s 			page 2


  58 000a C0B2     		uxtb	r0, r0
  59 000c 08BD     		pop	{r3, pc}
  60              		.size	_ZN16StreamGCodeInput8ReadByteEv, .-_ZN16StreamGCodeInput8ReadByteEv
  61 000e 00BF     		.section	.text._ZNK16StreamGCodeInput11BytesCachedEv,"ax",%progbits
  62              		.align	1
  63              		.p2align 2,,3
  64              		.global	_ZNK16StreamGCodeInput11BytesCachedEv
  65              		.syntax unified
  66              		.thumb
  67              		.thumb_func
  68              		.fpu softvfp
  69              		.type	_ZNK16StreamGCodeInput11BytesCachedEv, %function
  70              	_ZNK16StreamGCodeInput11BytesCachedEv:
  71              		@ args = 0, pretend = 0, frame = 0
  72              		@ frame_needed = 0, uses_anonymous_args = 0
  73              		@ link register save eliminated.
  74 0000 4068     		ldr	r0, [r0, #4]
  75 0002 0368     		ldr	r3, [r0]
  76 0004 1B69     		ldr	r3, [r3, #16]
  77 0006 1847     		bx	r3
  78              		.size	_ZNK16StreamGCodeInput11BytesCachedEv, .-_ZNK16StreamGCodeInput11BytesCachedEv
  79              		.section	.text._ZN17RegularGCodeInput5ResetEv,"ax",%progbits
  80              		.align	1
  81              		.p2align 2,,3
  82              		.global	_ZN17RegularGCodeInput5ResetEv
  83              		.syntax unified
  84              		.thumb
  85              		.thumb_func
  86              		.fpu softvfp
  87              		.type	_ZN17RegularGCodeInput5ResetEv, %function
  88              	_ZN17RegularGCodeInput5ResetEv:
  89              		@ args = 0, pretend = 0, frame = 0
  90              		@ frame_needed = 0, uses_anonymous_args = 0
  91              		@ link register save eliminated.
  92 0000 0023     		movs	r3, #0
  93 0002 4360     		str	r3, [r0, #4]
  94 0004 C360     		str	r3, [r0, #12]
  95 0006 8360     		str	r3, [r0, #8]
  96 0008 7047     		bx	lr
  97              		.size	_ZN17RegularGCodeInput5ResetEv, .-_ZN17RegularGCodeInput5ResetEv
  98 000a 00BF     		.section	.text._ZN17RegularGCodeInput8ReadByteEv,"ax",%progbits
  99              		.align	1
 100              		.p2align 2,,3
 101              		.global	_ZN17RegularGCodeInput8ReadByteEv
 102              		.syntax unified
 103              		.thumb
 104              		.thumb_func
 105              		.fpu softvfp
 106              		.type	_ZN17RegularGCodeInput8ReadByteEv, %function
 107              	_ZN17RegularGCodeInput8ReadByteEv:
 108              		@ args = 0, pretend = 0, frame = 0
 109              		@ frame_needed = 0, uses_anonymous_args = 0
 110              		@ link register save eliminated.
 111 0000 C368     		ldr	r3, [r0, #12]
 112 0002 0246     		mov	r2, r0
 113 0004 591C     		adds	r1, r3, #1
 114 0006 C160     		str	r1, [r0, #12]
ARM GAS  /tmp/ccEU9qwR.s 			page 3


 115 0008 0344     		add	r3, r3, r0
 116 000a B1F5807F 		cmp	r1, #256
 117 000e 187C     		ldrb	r0, [r3, #16]	@ zero_extendqisi2
 118 0010 04BF     		itt	eq
 119 0012 0023     		moveq	r3, #0
 120 0014 D360     		streq	r3, [r2, #12]
 121 0016 7047     		bx	lr
 122              		.size	_ZN17RegularGCodeInput8ReadByteEv, .-_ZN17RegularGCodeInput8ReadByteEv
 123              		.section	.text._ZNK17RegularGCodeInput11BytesCachedEv,"ax",%progbits
 124              		.align	1
 125              		.p2align 2,,3
 126              		.global	_ZNK17RegularGCodeInput11BytesCachedEv
 127              		.syntax unified
 128              		.thumb
 129              		.thumb_func
 130              		.fpu softvfp
 131              		.type	_ZNK17RegularGCodeInput11BytesCachedEv, %function
 132              	_ZNK17RegularGCodeInput11BytesCachedEv:
 133              		@ args = 0, pretend = 0, frame = 0
 134              		@ frame_needed = 0, uses_anonymous_args = 0
 135              		@ link register save eliminated.
 136 0000 8368     		ldr	r3, [r0, #8]
 137 0002 C068     		ldr	r0, [r0, #12]
 138 0004 8342     		cmp	r3, r0
 139 0006 38BF     		it	cc
 140 0008 03F58073 		addcc	r3, r3, #256
 141 000c 181A     		subs	r0, r3, r0
 142 000e 7047     		bx	lr
 143              		.size	_ZNK17RegularGCodeInput11BytesCachedEv, .-_ZNK17RegularGCodeInput11BytesCachedEv
 144              		.section	.text._ZN14FileGCodeInput5ResetEv,"ax",%progbits
 145              		.align	1
 146              		.p2align 2,,3
 147              		.global	_ZN14FileGCodeInput5ResetEv
 148              		.syntax unified
 149              		.thumb
 150              		.thumb_func
 151              		.fpu softvfp
 152              		.type	_ZN14FileGCodeInput5ResetEv, %function
 153              	_ZN14FileGCodeInput5ResetEv:
 154              		@ args = 0, pretend = 0, frame = 0
 155              		@ frame_needed = 0, uses_anonymous_args = 0
 156              		@ link register save eliminated.
 157 0000 0023     		movs	r3, #0
 158 0002 C0F81031 		str	r3, [r0, #272]
 159 0006 4360     		str	r3, [r0, #4]
 160 0008 C360     		str	r3, [r0, #12]
 161 000a 8360     		str	r3, [r0, #8]
 162 000c 7047     		bx	lr
 163              		.size	_ZN14FileGCodeInput5ResetEv, .-_ZN14FileGCodeInput5ResetEv
 164 000e 00BF     		.section	.text._ZN10GCodeInput10FillBufferEP11GCodeBuffer,"ax",%progbits
 165              		.align	1
 166              		.p2align 2,,3
 167              		.global	_ZN10GCodeInput10FillBufferEP11GCodeBuffer
 168              		.syntax unified
 169              		.thumb
 170              		.thumb_func
 171              		.fpu softvfp
ARM GAS  /tmp/ccEU9qwR.s 			page 4


 172              		.type	_ZN10GCodeInput10FillBufferEP11GCodeBuffer, %function
 173              	_ZN10GCodeInput10FillBufferEP11GCodeBuffer:
 174              		@ args = 0, pretend = 0, frame = 0
 175              		@ frame_needed = 0, uses_anonymous_args = 0
 176 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 177 0004 0368     		ldr	r3, [r0]
 178 0006 0546     		mov	r5, r0
 179 0008 9B68     		ldr	r3, [r3, #8]
 180 000a 0E46     		mov	r6, r1
 181 000c 9847     		blx	r3
 182 000e 6428     		cmp	r0, #100
 183 0010 30D8     		bhi	.L25
 184 0012 0746     		mov	r7, r0
 185 0014 48B3     		cbz	r0, .L23
 186              	.L19:
 187 0016 0024     		movs	r4, #0
 188 0018 DFF85C80 		ldr	r8, .L34
 189 001c 08E0     		b	.L24
 190              	.L33:
 191 001e 0246     		mov	r2, r0
 192 0020 3146     		mov	r1, r6
 193 0022 D8F81000 		ldr	r0, [r8, #16]	@ unaligned
 194 0026 FFF7FEFF 		bl	_ZN6GCodes15WriteHTMLToFileER11GCodeBufferc
 195              	.L22:
 196 002a 0134     		adds	r4, r4, #1
 197 002c A742     		cmp	r7, r4
 198 002e 1CD9     		bls	.L23
 199              	.L24:
 200 0030 2B68     		ldr	r3, [r5]
 201 0032 2846     		mov	r0, r5
 202 0034 DB68     		ldr	r3, [r3, #12]
 203 0036 9847     		blx	r3
 204 0038 96F8B530 		ldrb	r3, [r6, #181]	@ zero_extendqisi2
 205 003c 002B     		cmp	r3, #0
 206 003e EED1     		bne	.L33
 207 0040 0146     		mov	r1, r0
 208 0042 3046     		mov	r0, r6
 209 0044 FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEc
 210 0048 8146     		mov	r9, r0
 211 004a 0028     		cmp	r0, #0
 212 004c EDD0     		beq	.L22
 213 004e F36A     		ldr	r3, [r6, #44]
 214 0050 6BB1     		cbz	r3, .L20
 215 0052 094B     		ldr	r3, .L34
 216 0054 3146     		mov	r1, r6
 217 0056 1869     		ldr	r0, [r3, #16]
 218 0058 FFF7FEFF 		bl	_ZN6GCodes16WriteGCodeToFileER11GCodeBuffer
 219 005c 3046     		mov	r0, r6
 220 005e 0121     		movs	r1, #1
 221 0060 FFF7FEFF 		bl	_ZN11GCodeBuffer11SetFinishedEb
 222 0064 4846     		mov	r0, r9
 223 0066 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 224              	.L23:
 225 006a 4FF00009 		mov	r9, #0
 226              	.L20:
 227 006e 4846     		mov	r0, r9
 228 0070 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
ARM GAS  /tmp/ccEU9qwR.s 			page 5


 229              	.L25:
 230 0074 6527     		movs	r7, #101
 231 0076 CEE7     		b	.L19
 232              	.L35:
 233              		.align	2
 234              	.L34:
 235 0078 00000000 		.word	reprap
 236              		.size	_ZN10GCodeInput10FillBufferEP11GCodeBuffer, .-_ZN10GCodeInput10FillBufferEP11GCodeBuffer
 237              		.section	.text._ZN17NetworkGCodeInput10FillBufferEP11GCodeBuffer,"ax",%progbits
 238              		.align	1
 239              		.p2align 2,,3
 240              		.global	_ZN17NetworkGCodeInput10FillBufferEP11GCodeBuffer
 241              		.syntax unified
 242              		.thumb
 243              		.thumb_func
 244              		.fpu softvfp
 245              		.type	_ZN17NetworkGCodeInput10FillBufferEP11GCodeBuffer, %function
 246              	_ZN17NetworkGCodeInput10FillBufferEP11GCodeBuffer:
 247              		@ args = 0, pretend = 0, frame = 8
 248              		@ frame_needed = 0, uses_anonymous_args = 0
 249 0000 70B5     		push	{r4, r5, r6, lr}
 250 0002 0546     		mov	r5, r0
 251 0004 82B0     		sub	sp, sp, #8
 252 0006 0E46     		mov	r6, r1
 253 0008 6846     		mov	r0, sp
 254 000a 05F58871 		add	r1, r5, #272
 255 000e 0A22     		movs	r2, #10
 256 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 257 0014 9DF80440 		ldrb	r4, [sp, #4]	@ zero_extendqisi2
 258 0018 24B1     		cbz	r4, .L37
 259 001a 3146     		mov	r1, r6
 260 001c 2846     		mov	r0, r5
 261 001e FFF7FEFF 		bl	_ZN10GCodeInput10FillBufferEP11GCodeBuffer
 262 0022 0446     		mov	r4, r0
 263              	.L37:
 264 0024 6846     		mov	r0, sp
 265 0026 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 266 002a 2046     		mov	r0, r4
 267 002c 02B0     		add	sp, sp, #8
 268              		@ sp needed
 269 002e 70BD     		pop	{r4, r5, r6, pc}
 270              		.size	_ZN17NetworkGCodeInput10FillBufferEP11GCodeBuffer, .-_ZN17NetworkGCodeInput10FillBufferEP11G
 271              		.section	.text._ZN17RegularGCodeInputC2Ev,"ax",%progbits
 272              		.align	1
 273              		.p2align 2,,3
 274              		.global	_ZN17RegularGCodeInputC2Ev
 275              		.syntax unified
 276              		.thumb
 277              		.thumb_func
 278              		.fpu softvfp
 279              		.type	_ZN17RegularGCodeInputC2Ev, %function
 280              	_ZN17RegularGCodeInputC2Ev:
 281              		@ args = 0, pretend = 0, frame = 0
 282              		@ frame_needed = 0, uses_anonymous_args = 0
 283              		@ link register save eliminated.
 284 0000 0022     		movs	r2, #0
 285 0002 0349     		ldr	r1, .L43
ARM GAS  /tmp/ccEU9qwR.s 			page 6


 286 0004 8260     		str	r2, [r0, #8]
 287 0006 80E80600 		stm	r0, {r1, r2}
 288 000a C260     		str	r2, [r0, #12]
 289 000c 7047     		bx	lr
 290              	.L44:
 291 000e 00BF     		.align	2
 292              	.L43:
 293 0010 08000000 		.word	.LANCHOR0+8
 294              		.size	_ZN17RegularGCodeInputC2Ev, .-_ZN17RegularGCodeInputC2Ev
 295              		.global	_ZN17RegularGCodeInputC1Ev
 296              		.thumb_set _ZN17RegularGCodeInputC1Ev,_ZN17RegularGCodeInputC2Ev
 297              		.section	.text._ZNK17RegularGCodeInput15BufferSpaceLeftEv,"ax",%progbits
 298              		.align	1
 299              		.p2align 2,,3
 300              		.global	_ZNK17RegularGCodeInput15BufferSpaceLeftEv
 301              		.syntax unified
 302              		.thumb
 303              		.thumb_func
 304              		.fpu softvfp
 305              		.type	_ZNK17RegularGCodeInput15BufferSpaceLeftEv, %function
 306              	_ZNK17RegularGCodeInput15BufferSpaceLeftEv:
 307              		@ args = 0, pretend = 0, frame = 0
 308              		@ frame_needed = 0, uses_anonymous_args = 0
 309              		@ link register save eliminated.
 310 0000 C368     		ldr	r3, [r0, #12]
 311 0002 8268     		ldr	r2, [r0, #8]
 312 0004 581E     		subs	r0, r3, #1
 313 0006 801A     		subs	r0, r0, r2
 314 0008 C0B2     		uxtb	r0, r0
 315 000a 7047     		bx	lr
 316              		.size	_ZNK17RegularGCodeInput15BufferSpaceLeftEv, .-_ZNK17RegularGCodeInput15BufferSpaceLeftEv
 317              		.section	.text._ZN17NetworkGCodeInput3PutE11MessageTypec,"ax",%progbits
 318              		.align	1
 319              		.p2align 2,,3
 320              		.global	_ZN17NetworkGCodeInput3PutE11MessageTypec
 321              		.syntax unified
 322              		.thumb
 323              		.thumb_func
 324              		.fpu softvfp
 325              		.type	_ZN17NetworkGCodeInput3PutE11MessageTypec, %function
 326              	_ZN17NetworkGCodeInput3PutE11MessageTypec:
 327              		@ args = 0, pretend = 0, frame = 0
 328              		@ frame_needed = 0, uses_anonymous_args = 0
 329 0000 C368     		ldr	r3, [r0, #12]
 330 0002 70B5     		push	{r4, r5, r6, lr}
 331 0004 8568     		ldr	r5, [r0, #8]
 332 0006 013B     		subs	r3, r3, #1
 333 0008 5B1B     		subs	r3, r3, r5
 334 000a 13F0FF0F 		tst	r3, #255
 335 000e 17D0     		beq	.L46
 336 0010 4368     		ldr	r3, [r0, #4]
 337 0012 0446     		mov	r4, r0
 338 0014 072B     		cmp	r3, #7
 339 0016 0AD8     		bhi	.L49
 340 0018 DFE803F0 		tbb	[pc, r3]
 341              	.L51:
 342 001c 19       		.byte	(.L50-.L51)/2
ARM GAS  /tmp/ccEU9qwR.s 			page 7


 343 001d 21       		.byte	(.L52-.L51)/2
 344 001e 04       		.byte	(.L53-.L51)/2
 345 001f 2B       		.byte	(.L54-.L51)/2
 346 0020 32       		.byte	(.L55-.L51)/2
 347 0021 38       		.byte	(.L56-.L51)/2
 348 0022 3E       		.byte	(.L57-.L51)/2
 349 0023 13       		.byte	(.L58-.L51)/2
 350              		.p2align 1
 351              	.L53:
 352 0024 312A     		cmp	r2, #49
 353 0026 14BF     		ite	ne
 354 0028 0123     		movne	r3, #1
 355 002a 0323     		moveq	r3, #3
 356              	.L78:
 357 002c 6360     		str	r3, [r4, #4]
 358              	.L49:
 359 002e 691C     		adds	r1, r5, #1
 360 0030 6319     		adds	r3, r4, r5
 361 0032 B1F5807F 		cmp	r1, #256
 362 0036 A160     		str	r1, [r4, #8]
 363 0038 1A74     		strb	r2, [r3, #16]
 364 003a 04BF     		itt	eq
 365 003c 0023     		moveq	r3, #0
 366 003e A360     		streq	r3, [r4, #8]
 367              	.L46:
 368 0040 70BD     		pop	{r4, r5, r6, pc}
 369              	.L58:
 370 0042 1F2A     		cmp	r2, #31
 371 0044 3EDD     		ble	.L68
 372 0046 3B2A     		cmp	r2, #59
 373 0048 3CD0     		beq	.L68
 374              	.L66:
 375 004a 0123     		movs	r3, #1
 376 004c EEE7     		b	.L78
 377              	.L50:
 378 004e 202A     		cmp	r2, #32
 379 0050 F6DD     		ble	.L46
 380 0052 4D2A     		cmp	r2, #77
 381 0054 14BF     		ite	ne
 382 0056 0123     		movne	r3, #1
 383 0058 0223     		moveq	r3, #2
 384 005a 6360     		str	r3, [r4, #4]
 385 005c E7E7     		b	.L49
 386              	.L52:
 387 005e 0D2A     		cmp	r2, #13
 388 0060 E5D8     		bhi	.L49
 389 0062 42F20143 		movw	r3, #9217
 390 0066 D340     		lsrs	r3, r3, r2
 391 0068 DB43     		mvns	r3, r3
 392 006a 13F00103 		ands	r3, r3, #1
 393 006e DDD0     		beq	.L78
 394 0070 DDE7     		b	.L49
 395              	.L54:
 396 0072 312A     		cmp	r2, #49
 397 0074 24D0     		beq	.L72
 398 0076 322A     		cmp	r2, #50
 399 0078 14BF     		ite	ne
ARM GAS  /tmp/ccEU9qwR.s 			page 8


 400 007a 0123     		movne	r3, #1
 401 007c 0523     		moveq	r3, #5
 402 007e D5E7     		b	.L78
 403              	.L55:
 404 0080 322A     		cmp	r2, #50
 405 0082 14BF     		ite	ne
 406 0084 0123     		movne	r3, #1
 407 0086 0623     		moveq	r3, #6
 408 0088 6360     		str	r3, [r4, #4]
 409 008a D0E7     		b	.L49
 410              	.L56:
 411 008c 322A     		cmp	r2, #50
 412 008e 14BF     		ite	ne
 413 0090 0123     		movne	r3, #1
 414 0092 0723     		moveq	r3, #7
 415 0094 6360     		str	r3, [r4, #4]
 416 0096 CAE7     		b	.L49
 417              	.L57:
 418 0098 202A     		cmp	r2, #32
 419 009a 01DD     		ble	.L65
 420 009c 3B2A     		cmp	r2, #59
 421 009e D4D1     		bne	.L66
 422              	.L65:
 423 00a0 0F4D     		ldr	r5, .L80
 424 00a2 2846     		mov	r0, r5
 425 00a4 FFF7FEFF 		bl	_ZN6RepRap13EmergencyStopEv
 426 00a8 2869     		ldr	r0, [r5, #16]
 427 00aa FFF7FEFF 		bl	_ZN6GCodes5ResetEv
 428 00ae 2368     		ldr	r3, [r4]
 429 00b0 0C4A     		ldr	r2, .L80+4
 430 00b2 1B68     		ldr	r3, [r3]
 431 00b4 9342     		cmp	r3, r2
 432 00b6 0DD0     		beq	.L69
 433              	.L79:
 434 00b8 2046     		mov	r0, r4
 435 00ba BDE87040 		pop	{r4, r5, r6, lr}
 436 00be 1847     		bx	r3	@ indirect register sibling call
 437              	.L72:
 438 00c0 0423     		movs	r3, #4
 439 00c2 B3E7     		b	.L78
 440              	.L68:
 441 00c4 2368     		ldr	r3, [r4]
 442 00c6 074A     		ldr	r2, .L80+4
 443 00c8 1B68     		ldr	r3, [r3]
 444 00ca 0548     		ldr	r0, .L80
 445 00cc 9342     		cmp	r3, r2
 446 00ce A0F8AC13 		strh	r1, [r0, #940]	@ movhi
 447 00d2 F1D1     		bne	.L79
 448              	.L69:
 449 00d4 0023     		movs	r3, #0
 450 00d6 6360     		str	r3, [r4, #4]
 451 00d8 E360     		str	r3, [r4, #12]
 452 00da A360     		str	r3, [r4, #8]
 453 00dc 70BD     		pop	{r4, r5, r6, pc}
 454              	.L81:
 455 00de 00BF     		.align	2
 456              	.L80:
ARM GAS  /tmp/ccEU9qwR.s 			page 9


 457 00e0 00000000 		.word	reprap
 458 00e4 00000000 		.word	_ZN17RegularGCodeInput5ResetEv
 459              		.size	_ZN17NetworkGCodeInput3PutE11MessageTypec, .-_ZN17NetworkGCodeInput3PutE11MessageTypec
 460              		.section	.text._ZN17NetworkGCodeInput3PutE11MessageTypePKc,"ax",%progbits
 461              		.align	1
 462              		.p2align 2,,3
 463              		.global	_ZN17NetworkGCodeInput3PutE11MessageTypePKc
 464              		.syntax unified
 465              		.thumb
 466              		.thumb_func
 467              		.fpu softvfp
 468              		.type	_ZN17NetworkGCodeInput3PutE11MessageTypePKc, %function
 469              	_ZN17NetworkGCodeInput3PutE11MessageTypePKc:
 470              		@ args = 0, pretend = 0, frame = 8
 471              		@ frame_needed = 0, uses_anonymous_args = 0
 472 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 473 0002 0546     		mov	r5, r0
 474 0004 83B0     		sub	sp, sp, #12
 475 0006 1046     		mov	r0, r2
 476 0008 1446     		mov	r4, r2
 477 000a 0F46     		mov	r7, r1
 478 000c FFF7FEFF 		bl	strlen
 479 0010 05F58871 		add	r1, r5, #272
 480 0014 0646     		mov	r6, r0
 481 0016 C822     		movs	r2, #200
 482 0018 6846     		mov	r0, sp
 483 001a FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 484 001e 9DF80430 		ldrb	r3, [sp, #4]	@ zero_extendqisi2
 485 0022 93B1     		cbz	r3, .L84
 486 0024 EB68     		ldr	r3, [r5, #12]
 487 0026 AA68     		ldr	r2, [r5, #8]
 488 0028 013B     		subs	r3, r3, #1
 489 002a 9B1A     		subs	r3, r3, r2
 490 002c DBB2     		uxtb	r3, r3
 491 002e 721C     		adds	r2, r6, #1
 492 0030 9A42     		cmp	r2, r3
 493 0032 0AD8     		bhi	.L84
 494 0034 4AB1     		cbz	r2, .L84
 495 0036 2644     		add	r6, r6, r4
 496 0038 013C     		subs	r4, r4, #1
 497              	.L85:
 498 003a 14F8012F 		ldrb	r2, [r4, #1]!	@ zero_extendqisi2
 499 003e 3946     		mov	r1, r7
 500 0040 2846     		mov	r0, r5
 501 0042 FFF7FEFF 		bl	_ZN17NetworkGCodeInput3PutE11MessageTypec
 502 0046 B442     		cmp	r4, r6
 503 0048 F7D1     		bne	.L85
 504              	.L84:
 505 004a 6846     		mov	r0, sp
 506 004c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 507 0050 03B0     		add	sp, sp, #12
 508              		@ sp needed
 509 0052 F0BD     		pop	{r4, r5, r6, r7, pc}
 510              		.size	_ZN17NetworkGCodeInput3PutE11MessageTypePKc, .-_ZN17NetworkGCodeInput3PutE11MessageTypePKc
 511              		.section	.text._ZN17NetworkGCodeInputC2Ev,"ax",%progbits
 512              		.align	1
 513              		.p2align 2,,3
ARM GAS  /tmp/ccEU9qwR.s 			page 10


 514              		.global	_ZN17NetworkGCodeInputC2Ev
 515              		.syntax unified
 516              		.thumb
 517              		.thumb_func
 518              		.fpu softvfp
 519              		.type	_ZN17NetworkGCodeInputC2Ev, %function
 520              	_ZN17NetworkGCodeInputC2Ev:
 521              		@ args = 0, pretend = 0, frame = 0
 522              		@ frame_needed = 0, uses_anonymous_args = 0
 523 0000 0023     		movs	r3, #0
 524 0002 10B5     		push	{r4, lr}
 525 0004 0446     		mov	r4, r0
 526 0006 074A     		ldr	r2, .L93
 527 0008 C0F81031 		str	r3, [r0, #272]
 528 000c 80E80C00 		stm	r0, {r2, r3}
 529 0010 8360     		str	r3, [r0, #8]
 530 0012 C360     		str	r3, [r0, #12]
 531 0014 0449     		ldr	r1, .L93+4
 532 0016 00F58870 		add	r0, r0, #272
 533 001a FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
 534 001e 2046     		mov	r0, r4
 535 0020 10BD     		pop	{r4, pc}
 536              	.L94:
 537 0022 00BF     		.align	2
 538              	.L93:
 539 0024 08000000 		.word	.LANCHOR1+8
 540 0028 00000000 		.word	.LC0
 541              		.size	_ZN17NetworkGCodeInputC2Ev, .-_ZN17NetworkGCodeInputC2Ev
 542              		.global	_ZN17NetworkGCodeInputC1Ev
 543              		.thumb_set _ZN17NetworkGCodeInputC1Ev,_ZN17NetworkGCodeInputC2Ev
 544              		.section	.text._ZN14FileGCodeInput5ResetERK8FileData,"ax",%progbits
 545              		.align	1
 546              		.p2align 2,,3
 547              		.global	_ZN14FileGCodeInput5ResetERK8FileData
 548              		.syntax unified
 549              		.thumb
 550              		.thumb_func
 551              		.fpu softvfp
 552              		.type	_ZN14FileGCodeInput5ResetERK8FileData, %function
 553              	_ZN14FileGCodeInput5ResetERK8FileData:
 554              		@ args = 0, pretend = 0, frame = 0
 555              		@ frame_needed = 0, uses_anonymous_args = 0
 556              		@ link register save eliminated.
 557 0000 0968     		ldr	r1, [r1]
 558 0002 D0F81021 		ldr	r2, [r0, #272]
 559 0006 9142     		cmp	r1, r2
 560 0008 00D0     		beq	.L98
 561 000a 7047     		bx	lr
 562              	.L98:
 563 000c 0268     		ldr	r2, [r0]
 564 000e 0649     		ldr	r1, .L99
 565 0010 1268     		ldr	r2, [r2]
 566 0012 8A42     		cmp	r2, r1
 567 0014 06D1     		bne	.L97
 568 0016 0022     		movs	r2, #0
 569 0018 C0F81021 		str	r2, [r0, #272]
 570 001c 4260     		str	r2, [r0, #4]
ARM GAS  /tmp/ccEU9qwR.s 			page 11


 571 001e C260     		str	r2, [r0, #12]
 572 0020 8260     		str	r2, [r0, #8]
 573 0022 7047     		bx	lr
 574              	.L97:
 575 0024 1047     		bx	r2	@ indirect register sibling call
 576              	.L100:
 577 0026 00BF     		.align	2
 578              	.L99:
 579 0028 00000000 		.word	_ZN14FileGCodeInput5ResetEv
 580              		.size	_ZN14FileGCodeInput5ResetERK8FileData, .-_ZN14FileGCodeInput5ResetERK8FileData
 581              		.section	.text._ZN14FileGCodeInput12ReadFromFileER8FileData,"ax",%progbits
 582              		.align	1
 583              		.p2align 2,,3
 584              		.global	_ZN14FileGCodeInput12ReadFromFileER8FileData
 585              		.syntax unified
 586              		.thumb
 587              		.thumb_func
 588              		.fpu softvfp
 589              		.type	_ZN14FileGCodeInput12ReadFromFileER8FileData, %function
 590              	_ZN14FileGCodeInput12ReadFromFileER8FileData:
 591              		@ args = 0, pretend = 0, frame = 0
 592              		@ frame_needed = 0, uses_anonymous_args = 0
 593 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 594 0002 0368     		ldr	r3, [r0]
 595 0004 254A     		ldr	r2, .L118
 596 0006 9B68     		ldr	r3, [r3, #8]
 597 0008 0446     		mov	r4, r0
 598 000a 9342     		cmp	r3, r2
 599 000c 0F46     		mov	r7, r1
 600 000e 2BD1     		bne	.L102
 601 0010 FFF7FEFF 		bl	_ZNK17RegularGCodeInput11BytesCachedEv
 602 0014 0546     		mov	r5, r0
 603              	.L103:
 604 0016 D4F81061 		ldr	r6, [r4, #272]
 605 001a 3868     		ldr	r0, [r7]
 606 001c 36B1     		cbz	r6, .L105
 607 001e 8642     		cmp	r6, r0
 608 0020 04D0     		beq	.L105
 609 0022 45BB     		cbnz	r5, .L117
 610              	.L106:
 611 0024 0023     		movs	r3, #0
 612 0026 6360     		str	r3, [r4, #4]
 613 0028 E360     		str	r3, [r4, #12]
 614 002a A360     		str	r3, [r4, #8]
 615              	.L105:
 616 002c 7F2D     		cmp	r5, #127
 617 002e C4F81001 		str	r0, [r4, #272]
 618 0032 1CD8     		bhi	.L111
 619 0034 E268     		ldr	r2, [r4, #12]
 620 0036 A668     		ldr	r6, [r4, #8]
 621 0038 B242     		cmp	r2, r6
 622 003a 25D0     		beq	.L108
 623 003c 013A     		subs	r2, r2, #1
 624 003e 921B     		subs	r2, r2, r6
 625 0040 D2B2     		uxtb	r2, r2
 626 0042 C6F58073 		rsb	r3, r6, #256
 627 0046 9A42     		cmp	r2, r3
ARM GAS  /tmp/ccEU9qwR.s 			page 12


 628 0048 28BF     		it	cs
 629 004a 1A46     		movcs	r2, r3
 630              	.L109:
 631 004c 04F11001 		add	r1, r4, #16
 632 0050 3144     		add	r1, r1, r6
 633 0052 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 634 0056 031E     		subs	r3, r0, #0
 635 0058 0BDB     		blt	.L112
 636 005a 1BD0     		beq	.L110
 637 005c A268     		ldr	r2, [r4, #8]
 638 005e 0020     		movs	r0, #0
 639 0060 1344     		add	r3, r3, r2
 640 0062 DBB2     		uxtb	r3, r3
 641 0064 A360     		str	r3, [r4, #8]
 642 0066 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 643              	.L102:
 644 0068 9847     		blx	r3
 645 006a 0546     		mov	r5, r0
 646 006c D3E7     		b	.L103
 647              	.L111:
 648 006e 0020     		movs	r0, #0
 649 0070 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 650              	.L112:
 651 0072 0220     		movs	r0, #2
 652 0074 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 653              	.L117:
 654 0076 3046     		mov	r0, r6
 655 0078 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 656 007c 411B     		subs	r1, r0, r5
 657 007e 3046     		mov	r0, r6
 658 0080 FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 659 0084 3868     		ldr	r0, [r7]
 660 0086 CDE7     		b	.L106
 661              	.L108:
 662 0088 0023     		movs	r3, #0
 663 008a FF22     		movs	r2, #255
 664 008c 1E46     		mov	r6, r3
 665 008e A360     		str	r3, [r4, #8]
 666 0090 E360     		str	r3, [r4, #12]
 667 0092 DBE7     		b	.L109
 668              	.L110:
 669 0094 B5FA85F0 		clz	r0, r5
 670 0098 4009     		lsrs	r0, r0, #5
 671 009a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 672              	.L119:
 673              		.align	2
 674              	.L118:
 675 009c 00000000 		.word	_ZNK17RegularGCodeInput11BytesCachedEv
 676              		.size	_ZN14FileGCodeInput12ReadFromFileER8FileData, .-_ZN14FileGCodeInput12ReadFromFileER8FileData
 677              		.global	_ZTV10GCodeInput
 678              		.global	_ZTV16StreamGCodeInput
 679              		.global	_ZTV17RegularGCodeInput
 680              		.global	_ZTV14FileGCodeInput
 681              		.global	_ZTV17NetworkGCodeInput
 682              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 683              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 684              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
ARM GAS  /tmp/ccEU9qwR.s 			page 13


 685              	_ZL28cpu_irq_prev_interrupt_state:
 686 0000 00       		.space	1
 687              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 688              		.align	2
 689              		.type	_ZL32cpu_irq_critical_section_counter, %object
 690              		.size	_ZL32cpu_irq_critical_section_counter, 4
 691              	_ZL32cpu_irq_critical_section_counter:
 692 0000 00000000 		.space	4
 693              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 694              		.align	2
 695              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 696              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 697              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 698 0000 00000000 		.space	4
 699              		.section	.rodata._ZN17NetworkGCodeInputC2Ev.str1.4,"aMS",%progbits,1
 700              		.align	2
 701              	.LC0:
 702 0000 4E657477 		.ascii	"NetworkGCodeInput\000"
 702      6F726B47 
 702      436F6465 
 702      496E7075 
 702      7400
 703              		.section	.rodata._ZTV10GCodeInput,"a",%progbits
 704              		.align	2
 705              		.type	_ZTV10GCodeInput, %object
 706              		.size	_ZTV10GCodeInput, 24
 707              	_ZTV10GCodeInput:
 708 0000 00000000 		.word	0
 709 0004 00000000 		.word	0
 710 0008 00000000 		.word	__cxa_pure_virtual
 711 000c 00000000 		.word	_ZN10GCodeInput10FillBufferEP11GCodeBuffer
 712 0010 00000000 		.word	__cxa_pure_virtual
 713 0014 00000000 		.word	__cxa_pure_virtual
 714              		.section	.rodata._ZTV14FileGCodeInput,"a",%progbits
 715              		.align	2
 716              		.type	_ZTV14FileGCodeInput, %object
 717              		.size	_ZTV14FileGCodeInput, 24
 718              	_ZTV14FileGCodeInput:
 719 0000 00000000 		.word	0
 720 0004 00000000 		.word	0
 721 0008 00000000 		.word	_ZN14FileGCodeInput5ResetEv
 722 000c 00000000 		.word	_ZN10GCodeInput10FillBufferEP11GCodeBuffer
 723 0010 00000000 		.word	_ZNK17RegularGCodeInput11BytesCachedEv
 724 0014 00000000 		.word	_ZN17RegularGCodeInput8ReadByteEv
 725              		.section	.rodata._ZTV16StreamGCodeInput,"a",%progbits
 726              		.align	2
 727              		.type	_ZTV16StreamGCodeInput, %object
 728              		.size	_ZTV16StreamGCodeInput, 24
 729              	_ZTV16StreamGCodeInput:
 730 0000 00000000 		.word	0
 731 0004 00000000 		.word	0
 732 0008 00000000 		.word	_ZN16StreamGCodeInput5ResetEv
 733 000c 00000000 		.word	_ZN10GCodeInput10FillBufferEP11GCodeBuffer
 734 0010 00000000 		.word	_ZNK16StreamGCodeInput11BytesCachedEv
 735 0014 00000000 		.word	_ZN16StreamGCodeInput8ReadByteEv
 736              		.section	.rodata._ZTV17NetworkGCodeInput,"a",%progbits
 737              		.align	2
ARM GAS  /tmp/ccEU9qwR.s 			page 14


 738              		.set	.LANCHOR1,. + 0
 739              		.type	_ZTV17NetworkGCodeInput, %object
 740              		.size	_ZTV17NetworkGCodeInput, 24
 741              	_ZTV17NetworkGCodeInput:
 742 0000 00000000 		.word	0
 743 0004 00000000 		.word	0
 744 0008 00000000 		.word	_ZN17RegularGCodeInput5ResetEv
 745 000c 00000000 		.word	_ZN17NetworkGCodeInput10FillBufferEP11GCodeBuffer
 746 0010 00000000 		.word	_ZNK17RegularGCodeInput11BytesCachedEv
 747 0014 00000000 		.word	_ZN17RegularGCodeInput8ReadByteEv
 748              		.section	.rodata._ZTV17RegularGCodeInput,"a",%progbits
 749              		.align	2
 750              		.set	.LANCHOR0,. + 0
 751              		.type	_ZTV17RegularGCodeInput, %object
 752              		.size	_ZTV17RegularGCodeInput, 24
 753              	_ZTV17RegularGCodeInput:
 754 0000 00000000 		.word	0
 755 0004 00000000 		.word	0
 756 0008 00000000 		.word	_ZN17RegularGCodeInput5ResetEv
 757 000c 00000000 		.word	_ZN10GCodeInput10FillBufferEP11GCodeBuffer
 758 0010 00000000 		.word	_ZNK17RegularGCodeInput11BytesCachedEv
 759 0014 00000000 		.word	_ZN17RegularGCodeInput8ReadByteEv
 760              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
